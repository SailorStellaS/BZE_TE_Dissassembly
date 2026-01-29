.BANK 12 SLOT 0
.ORG $0000

.SECTION "Bank12" FORCE

	brk $77.b		; 00 77
	bpl  -1.b		; 10 FF
	pld		; 2B
	sbc $53D753.l		; EF 53 D7 53
	cmp [$03.b]		; C7 03
	sbc $0AFE07.l		; EF 07 FE 0A
	sbc $00.b,X		; F5 00
	brk $77.b		; 00 77
	mvp $90,$FB		; 44 FB 90
	xce		; FB
	dec A		; 3A
	sbc $10773A.l,X		; FF 3A 77 10
	ror $7C40.w,X		; 7E 40 7C
	and ($00.b),Y		; 31 00
	cpy #$F000.w		; C0 00 F0
	rti		; 40

	jsr ($FEF0.w,X)		; FC F0 FE
	pla		; 68
	inc $FE28.w,X		; FE 28 FE
	cpy #$942E.w		; C0 2E 94
	php		; 08
	brk $00.b		; 00 00
	cpy #$F440.w		; C0 40 F4
	bpl  -2.b		; 10 FE
	pla		; 68
	inc $BC54.w,X		; FE 54 BC
	bpl  56.b		; 10 38
	jsr $4020.w		; 20 20 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	cop $0F.b		; 02 0F
	tsb $1F.b		; 04 1F
	php		; 08
	rol $7C10.w,X		; 3E 10 7C
	jsr $41F8.w		; 20 F8 41
	beq -126.b		; F0 82
	cpx #$C184.w		; E0 84 C1
	ora [$00.b]		; 07 00
	asl $1C00.w		; 0E 00 1C
	brk $38.b		; 00 38
	jsr $4070.w		; 20 70 40
	cpx #$C080.w		; E0 80 C0
	ora ($80.b,X)		; 01 80
	ora $1C.b,S		; 03 1C
	rol $7C18.w,X		; 3E 18 7C
	clc		; 18
	jmp ($7C18.w,X)		; 7C 18 7C
	clc		; 18
	jmp ($7C18.w,X)		; 7C 18 7C
	clc		; 18
	bit $3C08.w,X		; 3C 08 3C
	bit $3C20.w,X		; 3C 20 3C
	brk $3C.b		; 00 3C
	tsb $38.b		; 04 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	bit $1C.b		; 24 1C
	brk $00.b		; 00 00
	ora #$0A01.w		; 09 01 0A
	ora ($0D.b,X)		; 01 0D
	ora ($09.b,X)		; 01 09
	brk $1A.b		; 00 1A
	brk $28.b		; 00 28
	brk $45.b		; 00 45
	brk $8F.b		; 00 8F
	asl $00.b		; 06 00
	tsb $01.b		; 04 01
	ora ($03.b,X)		; 01 03
	ora $07.b		; 05 07
	tsb $05.b		; 04 05
	ora [$17.b],Y		; 17 17
	dec A		; 3A
	dec A		; 3A
	bvs 112.b		; 70 70
	tsb $0402.w		; 0C 02 04
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ora $08.b,S		; 03 08
	tsb $00.b		; 04 00
	ora $000F00.l,X		; 1F 00 0F 00
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $E0.b,S		; 03 E0
	bpl -26.b		; 10 E6
	ora [$E9.b],Y		; 17 E9
	ora #$3016.w		; 09 16 30
	eor $102730.l,X		; 5F 30 27 10
	lda $E81318.l		; AF 18 13 E8
	brk $FF.b		; 00 FF
	ora ($F9.b,X)		; 01 F9
	asl $F0.b		; 06 F0
	ora $000FC0.l		; 0F C0 0F 00
	ora $000710.l,X		; 1F 10 07 00
	ora $240008.l		; 0F 08 00 24
	brk $C4.b		; 00 C4
	brk $C4.b		; 00 C4
	sta ($C8.b,X)		; 81 C8
	ora ($48.b,X)		; 01 48
	sta ($48.b,X)		; 81 48
	cpy #$C069.w		; C0 69 C0
	adc #$C303.w		; 69 03 C3
	ora $03.b,S		; 03 03
	sta $83.b,S		; 83 83
	ora [$07.b]		; 07 07
	cmp [$47.b]		; C7 47
	cmp [$47.b]		; C7 47
	stx $06.b		; 86 06
	stx $06.b		; 86 06
	cpy #$8020.w		; C0 20 80
	rti		; 40

	bra  64.b		; 80 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80C0.w		; C0 C0 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	eor ($A0.b)		; 52 A0
	lda #$5080.w		; A9 80 50
	sta [$63.b]		; 87 63
	ora $CF8767.l		; 0F 67 87 CF
	trb $9F.b		; 14 9F
	adc ($BE.b),Y		; 71 BE
	rti		; 40

	sbc $C07F00.l,X		; FF 00 7F C0
	adc $C65FC3.l,X		; 7F C3 5F C6
	eor $843F06.l,X		; 5F 06 3F 84
	sbc $DF7E20.l,X		; FF 20 7E DF
	sbc $5D1FBF.l,X		; FF BF 1F 5D
	phb		; 8B
	ora [$05.b]		; 07 05
	wai		; CB
	bra -56.b		; 80 C8
	bra -88.b		; 80 A8
	rti		; 40

	beq  64.b		; F0 40
	cmp $FF1FFF.l,X		; DF FF 1F FF
	php		; 08
	sbc $B0FF00.l,X		; FF 00 FF B0
	lda [$30.b],Y		; B7 30
	bcs  80.b		; B0 50
	bpl  64.b		; 10 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora ($80.b,X)		; 01 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	bvc -40.b		; 50 D8
	sed		; F8
	tsb $24BC.w		; 0C BC 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$F080.w		; A0 80 F0
	brk $D8.b		; 00 D8
	brk $01.b		; 00 01
	lda ($26.b,X)		; A1 26
	sta ($13.b),Y		; 91 13
	pha		; 48
	ora $1C44.w,Y		; 19 44 1C
	.db $42, $CC		; 42 CC
	and $CE.b,S		; 23 CE
	and ($CF.b,X)		; 21 CF
	jsr $FF01.w		; 20 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora #$05F7.w		; 09 F7 05
	pea $3405.w		; F4 05 34
	tsb $3C.b		; 04 3C
	sbc ($1F.b,X)		; E1 1F
	bpl   1.b		; 10 01
	eor #$A0C0.w		; 49 C0 A0
	lda $6D.b		; A5 6D
	ora ($2B.b,X)		; 01 2B
	brk $1B.b		; 00 1B
	bpl  11.b		; 10 0B
	php		; 08
	asl $66.b		; 06 66
	asl $F8.b		; 06 F8
	.db $42, $FD		; 42 FD
	ldy #$C8FF.w		; A0 FF C8
	bpl  96.b		; 10 60
	dey		; 88
	cpx #$C008.w		; E0 08 C0
	php		; 08
	rti		; 40

	bpl   0.b		; 10 00
	cpy #$00C0.w		; C0 C0 00
	and $4020C0.l,X		; 3F C0 20 40
	bmi -128.b		; 30 80
	beq   0.b		; F0 00
	beq  48.b		; F0 30
	cpx #$0020.w		; E0 20 00
	brk $00.b		; 00 00
	cpy #$FF00.w		; C0 00 FF
	ora ($07.b,X)		; 01 07
	ora $0F.b,S		; 03 0F
	cop $0F.b		; 02 0F
	asl $1F.b		; 06 1F
	asl $1F.b		; 06 1F
	tsb $0C1F.w		; 0C 1F 0C
	rol $3E0C.w,X		; 3E 0C 3E
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	ora $000E09.l		; 0F 09 0E 00
	asl $1E10.w,X		; 1E 10 1E
	cop $1C.b		; 02 1C
	brk $0C.b		; 00 0C
	rep #$0C		; C2 0C
	bra  29.b		; 80 1D
	.db $82, $1F, $82		; 82 1F 82
	and $7B04.w,Y		; 39 04 7B
	tsb $1A.b		; 04 1A
	tsb $06.b		; 04 06
	ora $0380.w		; 0D 80 03
	sta ($82.b,X)		; 81 82
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora $01.b,S		; 03 01
	tsb $043E.w		; 0C 3E 04
	asl $1F00.w,X		; 1E 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $0E10.w		; 1C 10 0E
	cop $0E.b		; 02 0E
	php		; 08
	ora [$04.b]		; 07 04
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $50.b		; 02 50
	tsb $20.b		; 04 20
	php		; 08
	ora $12.b		; 05 12
	bit #$0932.w		; 89 32 09
	tsb $92.b		; 04 92
	tsb $52.b		; 04 52
	tsb $2002.w		; 0C 02 20
	and $001F00.l		; 2F 00 1F 00
	and $003F00.l,X		; 3F 00 3F 00
	sbc $00FF80.l,X		; FF 80 FF 00
	and $001F00.l,X		; 3F 00 1F 00
	php		; 08
	brk $0A.b		; 00 0A
	brk $09.b		; 00 09
	ora ($08.b,X)		; 01 08
	brk $0B.b		; 00 0B
	brk $09.b		; 00 09
	brk $08.b		; 00 08
	ora ($06.b,X)		; 01 06
	ora [$07.b]		; 07 07
	ora $05.b		; 05 05
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	tsb $04.b		; 04 04
	asl $06.b		; 06 06
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	sta [$2C.b],Y		; 97 2C
	phk		; 4B
	trb $29.b		; 14 29
	sty $97.b		; 84 97
	lsr A		; 4A
	mvp $A1,$22		; 44 22 A1
	ora [$90.b],Y		; 17 90
	phd		; 0B
	tsb $C303.w		; 0C 03 C3
	cpy #$E4E7.w		; C0 E7 E4
	adc ($70.b,S),Y		; 73 70
	and ($30.b),Y		; 31 30
	tas		; 1B
	inc A		; 1A
	php		; 08
	php		; 08
	ora $05.b		; 05 05
	brk $00.b		; 00 00
	bra  41.b		; 80 29
	cpy #$E631.w		; C0 31 E6
	bmi -31.b		; 30 E1
	bmi -32.b		; 30 E0
	bmi   0.b		; 30 00
	rol $C100.w		; 2E 00 C1
	brk $80.b		; 00 80
	inc $26.b		; E6 26
	inc $CF2E.w		; EE 2E CF
	ora $CF0FCF.l		; 0F CF 0F CF
	ora $C001C1.l		; 0F C1 01 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	cpy #$6030.w		; C0 30 60
	php		; 08
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$F0C0.w		; C0 C0 F0
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $F6.b		; 00 F6
	sei		; 78
	cpx #$C8F0.w		; E0 F0 C8
	inx		; E8
	sta $0EEC.w		; 8D EC 0E
	dec $070B.w,X		; DE 0B 07
	clv		; B8
	adc $1E0E.w,Y		; 79 0E 1E
	adc ($F9.b,X)		; 61 F9
	cmp [$FF.b]		; C7 FF
	phb		; 8B
	sbc $06FE0C.l,X		; FF 0C FE 06
	sbc $18FF01.l,X		; FF 01 FF 18
	sbc $E0FF06.l,X		; FF 06 FF E0
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	asl $03.b,X		; 16 03
	rts		; 60

	ldy #$A0A0.w		; A0 A0 A0
	ldy #$4040.w		; A0 40 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($9D.b,X)		; 01 9D
	ora ($F8.b,X)		; 01 F8
	ora [$F8.b]		; 07 F8
	and $811D48.l,X		; 3F 48 1D 81
	phy		; 5A
	sta $D4.b,S		; 83 D4
	ora [$C8.b]		; 07 C8
	ora $201F10.l		; 0F 10 1F 20
	lda $07B600.l,X		; BF 00 B6 07
	beq  30.b		; F0 1E
	cpx #$E11D.w		; E0 1D E1
	inc A		; 1A
.INDEX 8
	sep #$14		; E2 14
	cpx $28.b		; E4 28
	cmp #$D010.w		; C9 10 D0
	and ($E1.b,X)		; 21 E1
	jmp ($2064.w,X)		; 7C 64 20
	cpx $10.b		; E4 10
	jsr ($FC70.w,X)		; FC 70 FC
	cpx #$E8.b		; E0 E8
	rts		; 60

	bcc  64.b		; 90 40
	bpl  64.b		; 10 40
	jsr $0098.w		; 20 98 00
	tya		; 98
	bra  64.b		; 80 40
	cli		; 58
	rts		; 60

	sei		; 78
	bvs -16.b		; 70 F0
	rts		; 60

	rts		; 60

	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	ora $FF7EFF.l		; 0F FF 7E FF
	cpy #$FE.b		; C0 FE
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	and $00FF20.l,X		; 3F 20 FF 00
	sed		; F8
	php		; 08
	bra -128.b		; 80 80
	ora ($0F.b,X)		; 01 0F
	asl $3E.b		; 06 3E
	and $F9FD.w,X		; 3D FD F9
	sbc $FDE1.w,X		; FD E1 FD
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	asl $FD11.w,X		; 1E 11 FD
	sta $FD.b,S		; 83 FD
	ora [$F9.b]		; 07 F9
	phd		; 0B
	cpy #$41.b		; C0 41
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($F8.b,X)		; C1 F8
	eor ($53.b,X)		; 41 53
	ldy #$A1.b		; A0 A1
	cpy $CE.b		; C4 CE
	dec $BCFE.w,X		; DE FE BC
	jsr ($1A10.w,X)		; FC 10 1A
	ora ($05.b,X)		; 01 05
	sbc ($10.b),Y		; F1 10
	rti		; 40

	cpx #$A0.b		; E0 A0
	inc $FFC0.w,X		; FE C0 FF
	dec $9CFF.w		; CE FF 9C
	sbc $00FF00.l,X		; FF 00 FF 00
	ora $632301.l,X		; 1F 01 23 63
	and $3C3F7E.l,X		; 3F 7E 3F 3C
	adc $BD7C3E.l,X		; 7F 3E 7C BD
	sbc $E4DD.w,Y		; F9 DD E4
	ply		; 7A
	sei		; 78
	stz $A05D.w		; 9C 5D A0
	adc $3E.b,S		; 63 3E
	sbc $38FF3C.l,X		; FF 3C FF 38
	sbc $C0FFB0.l,X		; FF B0 FF C0
	sbc $00FF78.l,X		; FF 78 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $03.b		; 02 03
	brk $03.b		; 00 03
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	inc $9F86.w,X		; FE 86 9F
	adc $0F2F2F.l		; 6F 2F 2F 0F
	bra  -1.b		; 80 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$20.b		; E0 20
	sbc $F7FF70.l,X		; FF 70 FF F7
	sbc $1096F6.l,X		; FF F6 96 10
	jsl $E38C7D.l		; 22 7D 8C E3
	trb $40DD.w		; 1C DD 40
	lda $48.b,S		; A3 48
	bra -104.b		; 80 98
	.db $42, $B8		; 42 B8
	cop $F0.b		; 02 F0
	tsb $C2.b		; 04 C2
	rti		; 40

	jmp $BEAE5C.l		; 5C 5C AE BE
	trb $3E3E.w		; 1C 3E 3E
	rol $3C3C.w,X		; 3E 3C 3C
	jmp ($787C.w,X)		; 7C 7C 78
	sei		; 78
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($0F.b,X)		; 01 0F
	asl $1F.b		; 06 1F
	php		; 08
	rol $7800.w,X		; 3E 00 78
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$04.b]		; 07 04
	ora $041C00.l		; 0F 00 1C 04
	jsr $4000.w		; 20 00 40
	rti		; 40

	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	bpl  60.b		; 10 3C
	bmi  -8.b		; 30 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	tsb $0804.w		; 0C 04 08
	brk $18.b		; 00 18
	brk $30.b		; 00 30
	brk $03.b		; 00 03
	php		; 08
	ora $300618.l		; 0F 18 06 30
	ora $0A71.w,X		; 1D 71 0A
	lda $44.b,S		; A3 44
	rol $88.b		; 26 88
	trb $8800.w		; 1C 00 88
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000E10.l,X		; 1F 10 0E 00
	jmp $C0D840.l		; 5C 40 D8 C0
	cpx #$E0.b		; E0 E0
	bvs 112.b		; 70 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora $0F.b,S		; 03 0F
	asl $1F.b		; 06 1F
	tsb $007F.w		; 0C 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	and ($00.b,X)		; 21 00
	brk $00.b		; 00 00
	bra -126.b		; 80 82
	sbc $08F5.w,X		; FD F5 08
	sbc [$09.b],Y		; F7 09
	ora $11.b,S		; 03 11
.ACCU 8
.INDEX 8
	sep #$F1		; E2 F1
	ora ($0E.b,X)		; 01 0E
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	ply		; 7A
	ply		; 7A
	inc $07.b,X		; F6 07
	pea $EC07.w		; F4 07 EC
	ora $000F0C.l		; 0F 0C 0F 00
	ora ($00.b,X)		; 01 00
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
	trb $8800.w		; 1C 00 88
	rti		; 40

	dey		; 88
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	ldy #$C0.b		; A0 C0
	bpl -78.b		; 10 B2
	asl $3E21.w		; 0E 21 3E
	adc ($70.b,X)		; 61 70
	stz $30.b,X		; 74 30
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	sed		; F8
	tsb $7EC0.w		; 0C C0 7E
	ldy #$DE.b		; A0 DE
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	jsr $F0F8.w		; 20 F8 F0
	jsr ($FEB8.w,X)		; FC B8 FE
	ldy #$FE.b		; A0 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	sed		; F8
	sec		; 38
	jsr ($0C0C.w,X)		; FC 0C 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora [$06.b]		; 07 06
	ora $001E00.l		; 0F 00 1E 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	sbc $00FF00.l,X		; FF 00 FF 00
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	asl A		; 0A
	ora $16.b		; 05 16
	asl A		; 0A
	bit $5915.w		; 2C 15 59
	asl A		; 0A
	lda ($1D.b,S),Y		; B3 1D
	ror $32.b		; 66 32
	tsb $0A.b		; 04 0A
	jmp $3F00.w		; 4C 00 3F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	jsl $540020.l		; 22 20 00 54
	ora ($A7.b),Y		; 11 A7
	brk $AB.b		; 00 AB
	jsr $084B.w		; 20 4B 08
	eor ($48.b,S),Y		; 53 48
	sta ($50.b,S),Y		; 93 50
	stx $21.b		; 86 21
	inc $FE01.w,X		; FE 01 FE
	brk $FC.b		; 00 FC
	ora ($FD.b,X)		; 01 FD
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	cop $07.b		; 02 07
	cop $0F.b		; 02 0F
	ora $0E.b		; 05 0E
	brk $1B.b		; 00 1B
	asl $35.b		; 06 35
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	ora [$05.b]		; 07 05
	ora [$00.b]		; 07 00
	asl $0809.w		; 0E 09 08
	ora [$10.b]		; 07 10
	ora $29F81F.l		; 0F 1F F8 29
	pea $EC17.w		; F4 17 EC
	ora ($E2.b),Y		; 11 E2
	phd		; 0B
	sed		; F8
	wai		; CB
	sec		; 38
	adc $8C.b		; 65 8C
	adc ($86.b)		; 72 86
	sei		; 78
	rts		; 60

	beq -122.b		; F0 86
	pei ($85.b)		; D4 85
	jmp $A0A742.l		; 5C 42 A7 A0
	ora [$C0.b]		; 07 C0
	tsa		; 3B
	cld		; D8
	and $10CC.w,X		; 3D CC 10
	ldy $0468.w		; AC 68 04
	sei		; 78
	brk $A0.b		; 00 A0
	bpl -32.b		; 10 E0
	bmi  64.b		; 30 40
	bmi -128.b		; 30 80
	jsr $4000.w		; 20 00 40
	rti		; 40

	jsr $10C0.w		; 20 C0 10
	cpy #$20.b		; C0 20
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$E0.b		; E0 E0
	cpy #$00.b		; C0 00
	bra  32.b		; 80 20
	ora $64.b		; 05 64
	trb $F4.b		; 14 F4
	trb $D7.b		; 14 D7
	sta $C4.b,S		; 83 C4
	bcc -48.b		; 90 D0
	brk $E0.b		; 00 E0
	bpl -28.b		; 10 E4
	bmi -125.b		; 30 83
	bit $1F.b		; 24 1F
	bvs  31.b		; 70 1F
	cpy #$3C.b		; C0 3C
	cmp $3B.b,S		; C3 3B
	cmp [$2F.b]		; C7 2F
	cmp [$4F.b],Y		; D7 4F
	sta ($8B.b,S),Y		; 93 8B
	bmi  12.b		; 30 0C
	adc $84.b,X		; 75 84
	lsr A		; 4A
	bit #$74.b		; 89 74
	and ($23.b,S),Y		; 33 23
	ldy $50DF.w		; AC DF 50
	bvs 112.b		; 70 70
	jsr $0021.w		; 20 21 00
	sbc $30C338.l,X		; FF 38 C3 30
	cmp [$00.b]		; C7 00
	cpy $5B03.w		; CC 03 5B
	cmp $AFFFAF.l,X		; DF AF FF AF
	inc $00DE.w,X		; FE DE 00
	brk $10.b		; 00 10
	inx		; E8
	pla		; 68
	sta $17D1.w		; 8D D1 17
	.db $82, $6E, $87		; 82 6E 87
	jmp ($5808.w)		; 6C 08 58
	brk $9F.b		; 00 9F
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	php		; 08
	inc $FA02.w,X		; FE 02 FA
	sta $B4.b		; 85 B4
	phb		; 8B
	clv		; B8
	sta [$B0.b],Y		; 97 B0
	ora $C0006F.l		; 0F 6F 00 C0
	ora ($32.b),Y		; 11 32
	bit $1D60.w		; 2C 60 1D
	eor ($7E.b,X)		; 41 7E
	cmp $3A.b,S		; C3 3A
	sta $F4.b,S		; 83 F4
	stx $68.b		; 86 68
	tsb $18D0.w		; 0C D0 18
	tsb $1E03.w		; 0C 03 1E
	ora ($3E.b,X)		; 01 3E
	brk $3D.b		; 00 3D
	ora ($7C.b,X)		; 01 7C
	brk $78.b		; 00 78
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	jsr $2000.w		; 20 00 20
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $C0.b		; 00 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $1803.w,X		; 3C 03 18
	jsl $502418.l		; 22 18 24 50
	bit $50.b		; 24 50
	brk $00.b		; 00 00
	pha		; 48
	brk $58.b		; 00 58
	bra  24.b		; 80 18
	trb $1C1C.w		; 1C 1C 1C
	trb $1818.w		; 1C 18 18
	clc		; 18
	clc		; 18
	sec		; 38
	sec		; 38
	bmi  48.b		; 30 30
	jsr $6020.w		; 20 20 60
	rts		; 60

	brk $0A.b		; 00 0A
	tsb $12.b		; 04 12
	php		; 08
	and ($00.b,X)		; 21 00
	pha		; 48
	bmi -121.b		; 30 87
	bvs -124.b		; 70 84
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	ora $04.b		; 05 04
	ora $1E0C.w		; 0D 0C 1E
	asl $3737.w,X		; 1E 37 37
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   8.b		; 80 08
	bcs   8.b		; B0 08
	bcs   4.b		; B0 04
	clv		; B8
	tsb $00.b		; 04 00
	bra   0.b		; 80 00
	jmp ($0000.w,X)		; 7C 00 00
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	jmp ($007C.w,X)		; 7C 7C 00
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
	ora $00.b,S		; 03 00
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
	cpx #$00.b		; E0 00
	sbc $00CF43.l,X		; FF 43 CF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	bcc  -1.b		; 90 FF
	sec		; 38
	sed		; F8
	sbc $0401.w,Y		; F9 01 04
	pha		; 48
	rol $4C.b		; 26 4C
	and $46.b,S		; 23 46
	lda ($22.b),Y		; B1 22
	tya		; 98
	clc		; 18
	cpy #$88.b		; C0 88
	adc $78.b,S		; 63 78
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF03.l,X		; FF 03 FF 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	iny		; C8
	ldy #$2E.b		; A0 2E
	mvp $BC,$47		; 44 47 BC
	sta ($BE.b,X)		; 81 BE
	bra  95.b		; 80 5F
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	beq   0.b		; F0 00
	beq  28.b		; F0 1C
	cpy $823A.w		; CC 3A 82
	adc $007F01.l,X		; 7F 01 7F 00
	lda $E0C080.l,X		; BF 80 C0 E0
	bra -32.b		; 80 E0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $81.b		; 00 81
	brk $83.b		; 00 83
	ora ($0F.b,X)		; 01 0F
	tsb $E07C.w		; 0C 7C E0
	jsr $00C0.w		; 20 C0 00
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	ora ($01.b,X)		; 01 01
	ora [$04.b]		; 07 04
	bit $0820.w,X		; 3C 20 08
	jsl $202604.l		; 22 04 26 20
	lsr $C01C.w,X		; 5E 1C C0
	brk $E2.b		; 00 E2
	rti		; 40

	clv		; B8
	sec		; 38
	jmp ($787C.w,X)		; 7C 7C 78
	asl $3802.w,X		; 1E 02 38
	jsr $3C3C.w		; 20 3C 3C
	ror $DC7E.w,X		; 7E 7E DC
	stz $4480.w		; 9C 80 44
	sec		; 38
	jmp ($7C38.w,X)		; 7C 38 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($0F.b,X)		; 01 0F
	ora $0F.b,S		; 03 0F
	asl $1F.b		; 06 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora $000F08.l		; 0F 08 0F 00
	ora ($0F.b,X)		; 01 0F
	asl $3F.b		; 06 3F
	clc		; 18
	sbc $C0FE71.l,X		; FF 71 FE C0
	sbc $F080.w,Y		; F9 80 F0
	ora ($E3.b,X)		; 01 E3
	brk $C0.b		; 00 C0
	ora [$04.b]		; 07 04
	ora $427E10.l,X		; 1F 10 7E 42
	jsr ($F005.w,X)		; FC 05 F0
	ora ($E0.b),Y		; 11 E0
	and ($C0.b,X)		; 21 C0
	eor $80.b,S		; 43 80
	sta $82.b,S		; 83 82
	inc $D628.w		; EE 28 D6
	sty $7B.b		; 84 7B
	lda $1D.b,S		; A3 1D
	iny		; C8
	sbc [$72.b]		; E7 72
	adc ($B0.b),Y		; 71 B0
	lda [$C0.b],Y		; B7 C0
	cpy $C5.b		; C4 C5
	tsb $83.b		; 04 83
	tsx		; BA
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	rti		; 40

	sbc $C3F8A0.l,X		; FF A0 F8 C3
	xce		; FB
	bne  12.b		; D0 0C
	ror $09.b		; 66 09
	sta $0A92.w		; 8D 92 0A
	cpx $84.b		; E4 84
	php		; 08
	adc ($B9.b)		; 72 B9
	rol $2CD1.w,X		; 3E D1 2C
	adc $38F8.w,Y		; 79 F8 38
	beq   3.b		; F0 03
	rts		; 60

	ora [$10.b]		; 07 10
	ora $068F70.l		; 0F 70 8F 06
	dec $6E06.w		; CE 06 6E
	ldx $0086.w		; AE 86 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	bvs -112.b		; 70 90
	pla		; 68
	cld		; D8
	stz $88.b		; 64 88
	sty $00.b		; 84 00
	cpy $00.b		; C4 00
	clc		; 18
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$40.b		; C0 40
	bne  80.b		; D0 50
	tya		; 98
	clc		; 18
	sei		; 78
	sei		; 78
	sec		; 38
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $FC.b		; 00 FC
	bpl  -4.b		; 10 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	clv		; B8
	brk $F8.b		; 00 F8
	inc $FFDC.w,X		; FE DC FF
	bvc  -1.b		; 50 FF
	dey		; 88
	eor [$B4.b],Y		; 57 B4
	cop $BC.b		; 02 BC
	brk $D0.b		; 00 D0
	php		; 08
	beq  24.b		; F0 18
	jsr ($FE9C.w,X)		; FC 9C FE
	asl $06.b		; 06 06
	brk $20.b		; 00 20
	bpl  96.b		; 10 60
	php		; 08
	rts		; 60

	bcc  96.b		; 90 60
	brk $E0.b		; 00 E0
	brk $01.b		; 00 01
	ora [$10.b]		; 07 10
	php		; 08
	ora ($09.b)		; 12 09
	jsl $052A09.l		; 22 09 2A 05
	lsr A		; 4A
	and $49.b		; 25 49
	bit $49.b		; 24 49
	bit $00.b		; 24 00
	ora $003F00.l,X		; 1F 00 3F 00
	and $007F00.l,X		; 3F 00 7F 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $48FF00.l,X		; FF 00 FF 48
	rol $0C.b		; 26 0C
	ora $02.b,S		; 03 02
	and ($18.b,X)		; 21 18
	bmi  31.b		; 30 1F
	bmi -113.b		; 30 8F
	bpl  71.b		; 10 47
	bcc  39.b		; 90 27
	bvc   0.b		; 50 00
	sbc $107F00.l,X		; FF 00 7F 10
	ora $0F0708.l		; 0F 08 07 0F
	brk $1F.b		; 00 1F
	bpl  15.b		; 10 0F
	brk $8F.b		; 00 8F
	bra   5.b		; 80 05
	ora ($07.b,X)		; 01 07
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$14.b]		; 07 14
	ora $003E14.l		; 0F 14 3E 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora $043F04.l		; 0F 04 3F 04
	ror $0000.w,X		; 7E 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	lda [$97.b],Y		; B7 97
	sta [$87.b],Y		; 97 87
	rti		; 40

	sbc $14FC0F.l,X		; FF 0F FC 14
	plx		; FA
	phd		; 0B
	inc $08.b,X		; F6 08
	sbc ($85.b),Y		; F1 85
	jsr ($7BFF.w,X)		; FC FF 7B
	sbc $88CBFB.l,X		; FF FB CB 88
	bit $7830.w,X		; 3C 30 78
	eor $6A.b,S		; 43 6A
	.db $42, $AE		; 42 AE
	lda ($D3.b,X)		; A1 D3
	bpl -64.b		; 10 C0
	and [$40.b]		; 27 40
	brk $00.b		; 00 00
	ldy #$00.b		; A0 00
	rts		; 60

	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$40.b		; C0 40
	rti		; 40

	rti		; 40

	rti		; 40

	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	ora [$F0.b],Y		; 17 F0
	ora $3C.b		; 05 3C
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $080B60.l		; 6F 60 0B 08
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	rti		; 40

	cpy #$80.b		; C0 80
	bra   1.b		; 80 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	ora ($E0.b,X)		; 01 E0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($78.b,X)		; 01 78
	sei		; 78
	beq 120.b		; F0 78
	sei		; 78
	beq -32.b		; F0 E0
	beq  -6.b		; F0 FA
	cpx $EC.b		; E4 EC
	sbc ($C6.b,X)		; E1 C6
	cpx #$E3.b		; E0 E3
	bne  48.b		; D0 30
	jsr ($F870.w,X)		; FC 70 F8
	rts		; 60

	sed		; F8
	rts		; 60

	sed		; F8
	pla		; 68
	sed		; F8
	dec $DFFE.w		; CE FE DF
	sbc $0EEFCF.l,X		; FF CF EF 0E
	ora $1C3F0C.l,X		; 1F 0C 3F 1C
	rol $7E18.w,X		; 3E 18 7E
	sec		; 38
	jmp ($FC30.w,X)		; 7C 30 FC
	bvs  -8.b		; 70 F8
	rts		; 60

	sed		; F8
	ora $001E11.l,X		; 1F 11 1E 00
	rol $3C22.w,X		; 3E 22 3C
	brk $7C.b		; 00 7C
	mvp $00,$78		; 44 78 00
	sed		; F8
	dey		; 88
	beq   0.b		; F0 00
	brk $83.b		; 00 83
	brk $02.b		; 00 02
	ora $06.b,S		; 03 06
	ora ($04.b,X)		; 01 04
	ora [$04.b]		; 07 04
	ora $08.b,S		; 03 08
	asl $08.b		; 06 08
	ora $010109.l		; 0F 09 01 01
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $000608.l		; 0F 08 06 00
	adc $F4.b,S		; 63 F4
	txa		; 8A
	cpy $3C9A.w		; CC 9A 3C
	iny		; C8
	jmp ($4F14.w,X)		; 7C 14 4F
	phb		; 8B
	cmp [$04.b]		; C7 04
	sta $C3870B.l		; 8F 0B 87 C3
	xce		; FB
	eor $7B.b,S		; 43 7B
	cmp $1B.b,S		; C3 1B
	sta $1B.b,S		; 83 1B
	cpy $5C.b		; C4 5C
	cop $1F.b		; 02 1F
	bra -97.b		; 80 9F
	cop $0F.b		; 02 0F
	ldy $6839.w,X		; BC 39 68
	and $1E10.w,Y		; 39 10 1E
	tsb $3A.b		; 04 3A
	and ($C9.b)		; 32 C9
	rti		; 40

	bit #$80.b		; 89 80
	ora ($04.b)		; 12 04
	and $C6FE.w		; 2D FE C6
	inc $F0C6.w		; EE C6 F0
	cpx #$C4.b		; E0 C4
	cpy $36.b		; C4 36
	rol $76.b,X		; 36 76
	ror $E4.b,X		; 76 E4
	sbc $DFC4.w		; ED C4 DF
	cmp ($C8.b,X)		; C1 C8
	iny		; C8
	pei ($D4.b)		; D4 D4
.ACCU 8
	sep #$E2		; E2 E2
	cmp ($E1.b,X)		; C1 E1
	rti		; 40

	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda [$F7.b],Y		; B7 F7
	lda $E3.b,S		; A3 E3
	cmp ($C1.b,X)		; C1 C1
	cpy #$C0.b		; C0 C0
	rti		; 40

	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $8F.b		; 00 8F
	sec		; 38
	stp		; DB
	php		; 08
	adc ($08.b,S),Y		; 73 08
	ora [$0C.b],Y		; 17 0C
	ora #$94.b		; 09 94
	txa		; 8A
	lsr $2F5D.w,X		; 5E 5D 2F
	and $C0C707.l,X		; 3F 07 C7 C0
	sbc [$E0.b]		; E7 E0
	sbc $F0E3F8.l		; EF F8 E3 F0
	adc [$74.b]		; 67 74
	and $3C.b		; 25 3C
	asl $0E.b		; 06 0E
	asl $07.b		; 06 07
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	bra  64.b		; 80 40
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	bvs 127.b		; 70 7F
	bit $003F.w,X		; 3C 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $7F.b		; 00 7F
	ora $3F.b,S		; 03 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora [$03.b]		; 07 03
	ora $001F06.l		; 0F 06 1F 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	brk $07.b		; 00 07
	tsb $07.b		; 04 07
	brk $0F.b		; 00 0F
	php		; 08
	tsb $3F.b		; 04 3F
	php		; 08
	sbc $00FC00.l,X		; FF 00 FC 00
	cmp ($00.b,X)		; C1 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	php		; 08
	brk $00.b		; 00 00
	ora $223E11.l,X		; 1F 11 3E 22
	sed		; F8
	sed		; F8
	cpy #$C0.b		; C0 C0
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clv		; B8
	sec		; 38
	jmp ($2C7C.w,X)		; 7C 7C 2C
	jmp ($BCDC.w,X)		; 7C DC BC
	cpx $DC5C.w		; EC 5C DC
	bit $3C4C.w		; 2C 4C 3C
	brk $38.b		; 00 38
	sec		; 38
	jsr ($FE7C.w,X)		; FC 7C FE
	bit $18FE.w		; 2C FE 18
	ror $3E84.w,X		; 7E 84 3E
	cpy $1E.b		; C4 1E
	cpy $9C1E.w		; CC 1E 9C
	stz $DC7C.w		; 9C 7C DC
	jmp $7C1C7C.l		; 5C 7C 1C 7C
	clc		; 18
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp $1C3E.w		; 4C 3E 1C
	rol $3E1C.w,X		; 3E 1C 3E
	clc		; 18
	rol $7C00.w,X		; 3E 00 7C
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $1F.b		; 00 1F
	brk $FF.b		; 00 FF
	and ($FF.b),Y		; 31 FF
	adc $7F7D7F.l,X		; 7F 7F 7D 7F
	ora $FF.b		; 05 FF
	sed		; F8
	cmp $4B.b		; C5 4B
	ldy #$00.b		; A0 00
	brk $08.b		; 00 08
	brk $FB.b		; 00 FB
	bra  -1.b		; 80 FF
	lda $B0FF.w,Y		; B9 FF B0
	bcs -128.b		; B0 80
	rep #$01		; C2 01
	stx $30.b		; 86 30
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	cpy #$F0.b		; C0 F0
	brk $F0.b		; 00 F0
	bra  96.b		; 80 60
	rti		; 40

	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C0.b		; C0 C0
	cpx #$60.b		; E0 60
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  50.b		; 80 32
	jmp ($3984.w,X)		; 7C 84 39
	pha		; 48
	lda $71.b,X		; B5 71
	dey		; 88
	lda $39FE78.l		; AF 78 FE 39
	bvc  57.b		; 50 39
	lda $870058.l,X		; BF 58 00 87
	jsr $02EE.w		; 20 EE 02
	phx		; DA
	ora [$57.b]		; 07 57
	ldx $3886.w		; AE 86 38
	brk $D6.b		; 00 D6
	dec $98.b		; C6 98
	tya		; 98
	bvs  32.b		; 70 20
	cpx #$50.b		; E0 50
	rts		; 60

	bcc -16.b		; 90 F0
	bpl  96.b		; 10 60
	brk $F0.b		; 00 F0
	dey		; 88
	beq -120.b		; F0 88
	sec		; 38
	dey		; 88
	jsr $00E0.w		; 20 E0 00
	cpy #$30.b		; C0 30
	bpl  96.b		; 10 60
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	php		; 08
	beq -128.b		; F0 80
	bra  -1.b		; 80 FF
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	ora $FE.b,S		; 03 FE
	ora ($7C.b,X)		; 01 7C
	ora $FC.b,S		; 03 FC
	sta $F4.b,S		; 83 F4
	ora $E4.b,S		; 03 E4
	sed		; F8
	clc		; 18
	sbc ($30.b),Y		; F1 30
	xba		; EB
	ror A		; 6A
	cmp $3BD8.w,Y		; D9 D8 3B
	clc		; 18
	adc ($10.b,S),Y		; 73 10
	sbc $20.b,S		; E3 20
	cmp [$44.b]		; C7 44
	sbc $32.b		; E5 32
	ldx #$DD.b		; A2 DD
	cli		; 58
	adc $9C.b,S		; 63 9C
	jsr $2897.w		; 20 97 28
	iny		; C8
	stz $87.b		; 64 87
	rti		; 40

	tsb $42.b		; 04 42
	brk $FF.b		; 00 FF
	rti		; 40

	adc ($AC.b,S),Y		; 73 AC
	bit $2FEF.w,X		; 3C EF 2F
	cmp [$07.b]		; C7 07
	sta $03.b,S		; 83 03
	cpy #$48.b		; C0 48
	sta ($09.b,X)		; 81 09
	inx		; E8
	sbc $EEE3E2.l		; EF E2 E3 EE
	cpx #$FF.b		; E0 FF
	cpx #$7F.b		; E0 7F
	cpx #$6B.b		; E0 6B
	sed		; F8
.ACCU 8
.INDEX 8
	sep #$7E		; E2 7E
	beq 113.b		; F0 71
	inc $F6.b		; E6 F6
	adc $6FF1.w		; 6D F1 6F
	beq 111.b		; F0 6F
	beq 111.b		; F0 6F
	beq 103.b		; F0 67
	beq 101.b		; F0 65
	pea $F020.w		; F4 20 F0
	brk $00.b		; 00 00
	ora ($FE.b,X)		; 01 FE
	.db $82, $FD, $84		; 82 FD 84
	ora $FE.b,S		; 03 FE
	ora [$F6.b]		; 07 F6
	ora $033FE6.l		; 0F E6 3F 03
	sbc $800000.l,X		; FF 00 00 80
	sta ($7C.b,X)		; 81 7C
	adc $F807F8.l,X		; 7F F8 07 F8
	asl $F6.b		; 06 F6
	asl $D6.b		; 06 D6
	asl $00.b,X		; 16 00
	ora $00.b,S		; 03 00
	brk $78.b		; 00 78
	ror $1F1C.w,X		; 7E 1C 1F
	asl $07.b		; 06 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0F.b		; 06 0F
	brk $00.b		; 00 00
	ror $1F02.w,X		; 7E 02 1F
	ora ($07.b,X)		; 01 07
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	ora $001F01.l,X		; 1F 01 1F 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	ora $001F00.l		; 0F 00 1F 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $1F.b		; 00 1F
	ora $0F.b,S		; 03 0F
	ora ($0F.b,X)		; 01 0F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	clc		; 18
	bpl  14.b		; 10 0E
	cop $0F.b		; 02 0F
	php		; 08
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($0F.b,X)		; 01 0F
	asl $FF.b		; 06 FF
	bit $F8FF.w,X		; 3C FF F8
	sbc $80FEE0.l,X		; FF E0 FE 80
	sed		; F8
	brk $C0.b		; 00 C0
	ora ($01.b,X)		; 01 01
	ora [$04.b]		; 07 04
	adc $01FF40.l,X		; 7F 40 FF 01
	inc $FC02.w,X		; FE 02 FC
	tsb $30F0.w		; 0C F0 30
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $FF.b		; 00 FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	ora $1F00FF.l,X		; 1F FF 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $42.b,S		; C3 42
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $090F80.l,X		; FF 80 0F 09
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1E0E.w		; 0E 0E 1E
	asl $1E0E.w		; 0E 0E 1E
	asl $3E1E.w,X		; 1E 1E 3E
	rol $5252.w,X		; 3E 52 52
	lda $A2.b,S		; A3 A2
	brk $00.b		; 00 00
	asl $0F.b		; 06 0F
	asl $0E1F.w		; 0E 1F 0E
	ora $1B3F0F.l,X		; 1F 0F 3F 1B
	adc $20FF03.l,X		; 7F 03 FF 20
	inc $00.b,X		; F6 00
	brk $09.b		; 00 09
	lda $24.b,S		; A3 24
	ora ($32.b),Y		; 11 32
	ora #$09.b		; 09 09
	mvp $42,$04		; 44 04 42
	jsl $00E141.l		; 22 41 E1 00
	brk $00.b		; 00 00
	jmp $CFCF5C.l		; 5C 5C CF CF
	dec $C6.b		; C6 C6
	sta $83.b,S		; 83 83
	sta ($81.b,X)		; 81 81
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inx		; E8
	tsb $04F0.w		; 0C F0 04
	pea $7C84.w		; F4 84 7C
	stx $7C.b		; 86 7C
	dec $1C.b		; C6 1C
	dec $A4.b		; C6 A4
	ror $D8.b		; 66 D8
	bit $00F0.w,X		; 3C F0 00
	jsr ($7804.w,X)		; FC 04 78
	brk $F8.b		; 00 F8
	bra  56.b		; 80 38
	brk $78.b		; 00 78
	rti		; 40

	clc		; 18
	brk $20.b		; 00 20
	jsr $60BB.w		; 20 BB 60
	sta $5F10.w		; 8D 10 5F
	cmp ($5A.b,X)		; C1 5A
	cmp ($0C.b,X)		; C1 0C
	cmp ($10.b,X)		; C1 10
	sbc ($02.b,S),Y		; F3 02
	sbc $CA7D.w,X		; FD 7D CA
	ldx $29.b		; A6 29
	inc $10.b		; E6 10
	rol $BF00.w,X		; 3E 00 BF
	sta [$7E.b]		; 87 7E
	rti		; 40

	tsb $0001.w		; 0C 01 00
	ora $30.b,S		; 03 30
	ora [$C0.b]		; 07 C0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra  80.b		; 80 50
	bra  16.b		; 80 10
	cpy #$30.b		; C0 30
	bcc -80.b		; 90 B0
	jsr $5070.w		; 20 70 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	jsr $00F0.w		; 20 F0 00
	beq  -3.b		; F0 FD
	bit $DA5A.w,X		; 3C 5A DA
	bit $64.b		; 24 64
	inc A		; 1A
	clc		; 18
	mvn $54,$22		; 54 22 54
	and $24.b,S		; 23 24
	sta ($22.b,S),Y		; 93 22
	sta $3E18.w,Y		; 99 18 3E
	php		; 08
	sbc $00FF04.l,X		; FF 04 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $70C070.l,X		; FF 70 C0 70
	cpy $00.b		; C4 00
	cpy $7408.w		; CC 08 74
	bvs   4.b		; 70 04
	brk $88.b		; 00 88
	sei		; 78
	ply		; 7A
	sei		; 78
	tda		; 7B
	sec		; 38
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	rti		; 40

	dey		; 88
	dey		; 88
	sed		; F8
	sed		; F8
	bvs 116.b		; 70 74
	bmi  -4.b		; 30 FC
	dec A		; 3A
	inc $C407.w,X		; FE 07 C4
	cop $80.b		; 02 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0706.w		; 0C 06 07
	ora $830F0F.l		; 0F 0F 0F 83
	bra   7.b		; 80 07
	brk $0F.b		; 00 0F
	asl $0F0F.w		; 0E 0F 0F
	ora ($0F.b,X)		; 01 0F
	brk $0F.b		; 00 0F
	asl $0F.b		; 06 0F
	ora [$0F.b]		; 07 0F
	sta $C0.b,S		; 83 C0
	tsb $80.b		; 04 80
	ora #$84.b		; 09 84
	php		; 08
	sta $08.b		; 85 08
	sta $12.b		; 85 12
	sta $0912.w		; 8D 12 09
	ora ($89.b)		; 12 89
	brk $0C.b		; 00 0C
	bra -113.b		; 80 8F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	beq 112.b		; F0 70
	bvs 112.b		; 70 70
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	cli		; 58
	jmp $404746.l		; 5C 46 47 40
	rti		; 40

	brk $00.b		; 00 00
	bmi -16.b		; 30 F0
	bmi -16.b		; 30 F0
	bvs  -8.b		; 70 F8
	sei		; 78
	jsr ($FE58.w,X)		; FC 58 FE
	asl $FF.b		; 06 FF
	brk $43.b		; 00 43
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
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $1F.b		; 00 1F
	tsb $3C.b		; 04 3C
	phd		; 0B
	and $3809.w,Y		; 39 09 38
	tsb $3F.b		; 04 3F
	brk $3F.b		; 00 3F
	ora ($3F.b,X)		; 01 3F
	brk $00.b		; 00 00
	ora $131F09.l		; 0F 09 1F 13
	ora $0F1F07.l,X		; 1F 07 1F 0F
	bit $2328.w		; 2C 28 23
	ora $37.b,S		; 03 37
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $01.b,S		; 03 01
	ora $00FE01.l		; 0F 01 FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($3C.b,X)		; 01 3C
	and $3F00.w,X		; 3D 00 3F
	brk $77.b		; 00 77
	rti		; 40

	adc ($78.b,S),Y		; 73 78
	cmp $E4.b,S		; C3 E4
	eor $59C4.w,Y		; 59 C4 59
	sbc ($AD.b)		; F2 AD
	inx		; E8
	dec $36.b		; C6 36
	tsb $72.b		; 04 72
	ora ($71.b)		; 12 71
	ora $7C80.w,X		; 1D 80 7C
	rti		; 40

	inc $FE40.w,X		; FE 40 FE
	bra  -2.b		; 80 FE
	bra  -1.b		; 80 FF
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	php		; 08
	bit $1F04.w,X		; 3C 04 1F
	ora $8F.b,S		; 03 8F
	sta ($87.b,X)		; 81 87
	brk $03.b		; 00 03
	cpy #$C0.b		; C0 C0
	cpx #$A0.b		; E0 A0
	bvs  80.b		; 70 50
	bit $1E24.w,X		; 3C 24 1E
	ora ($0F.b)		; 12 0F
	php		; 08
	sta [$04.b]		; 87 04
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	cpy #$FF.b		; C0 FF
	adc $FF1FFF.l,X		; 7F FF 1F FF
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	jsr ($FF0C.w,X)		; FC 0C FF
	brk $FF.b		; 00 FF
	cpy #$3F.b		; C0 3F
	sec		; 38
	ora $03.b,S		; 03 03
	bit $3C3E.w,X		; 3C 3E 3C
	rol $3C38.w,X		; 3E 38 3C
	sec		; 38
	and $7A3838.l,X		; 3F 38 38 7A
	sec		; 38
	and ($78.b),Y		; 31 78
	bvs 122.b		; 70 7A
	trb $383E.w		; 1C 3E 38
	rol $3E38.w,X		; 3E 38 3E
	sec		; 38
	bit $7F33.w,X		; 3C 33 7F
	and [$7F.b],Y		; 37 7F
	and [$7F.b],Y		; 37 7F
	and $7D.b,X		; 35 7D
	pha		; 48
	rol $68.b		; 26 68
	asl $0E.b		; 06 0E
	brk $20.b		; 00 20
	rts		; 60

	ldy #$60.b		; A0 60
	eor $1EA1.w		; 4D A1 1E
	bvs -113.b		; 70 8F
	bmi   0.b		; 30 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $1C9F00.l,X		; FF 00 9F 1C
	ora $3E.b,S		; 03 3E
	jsr $808F.w		; 20 8F 80
	cmp $618CD0.l,X		; DF D0 8C 61
	bra  97.b		; 80 61
	sta ($6C.b,X)		; 81 6C
	cmp ($06.b,X)		; C1 06
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $60.b		; 00 60
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F3.b		; 00 F3
	brk $E1.b		; 00 E1
	brk $C1.b		; 00 C1
	bra -127.b		; 80 81
	rti		; 40

	rti		; 40

	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $C3.b		; 00 C3
	jmp ($FF80.w,X)		; 7C 80 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $F00F.w,X		; FE 0F F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $7FBC.w,X		; 3C BC 7F
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $000101.l,X		; FF 01 01 00
	brk $1C.b		; 00 1C
	dec $A4.b		; C6 A4
	ror $D8.b		; 66 D8
	bit $3C00.w,X		; 3C 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	rti		; 40

	clc		; 18
	brk $20.b		; 00 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $30.b		; 00 30
	cpy #$06.b		; C0 06
	ora $000000.l,X		; 1F 00 00 00
	cpx #$1C.b		; E0 1C
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	sed		; F8
	sed		; F8
	sbc $FFFFFF.l,X		; FF FF FF FF
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  56.b		; 80 38
	sei		; 78
	cop $1C.b		; 02 1C
	ora ($C0.b,X)		; 01 C0
	ora ($21.b,X)		; 01 21
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$FC.b		; C0 FC
	jsr ($FEFE.w,X)		; FC FE FE
	rol $0E3E.w,X		; 3E 3E 0E
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora $07.b,S		; 03 07
	ora $0F.b,S		; 03 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	clc		; 18
	sbc $60FE30.l,X		; FF 30 FE 60
	jsr ($F9C0.w,X)		; FC C0 F9
	cpy #$F2.b		; C0 F2
	sta ($E4.b,X)		; 81 E4
	sta $CC.b,S		; 83 CC
	asl $7ED0.w		; 0E D0 7E
	.db $42, $FC		; 42 FC
	sty $F8.b		; 84 F8
	php		; 08
	beq  16.b		; F0 10
	sbc ($20.b,X)		; E1 20
	cmp $00.b,S		; C3 00
	cmp [$44.b]		; C7 44
	sta $90680F.l		; 8F 0F 68 90
	bmi -40.b		; 30 D8
	clc		; 18
	bit $06FC.w		; 2C FC 06
	rol $0F03.w,X		; 3E 03 0F
	ora ($F6.b,X)		; 01 F6
	bpl -88.b		; 10 A8
	ora $E000.w,Y		; 19 00 E0
	brk $20.b		; 00 20
	bne -64.b		; D0 C0
	sed		; F8
	cpx #$FC.b		; E0 FC
	cpx #$FE.b		; E0 FE
	cpx #$0F.b		; E0 0F
	ora ($C6.b,X)		; 01 C6
	cmp $00.b,S		; C3 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb $1E1E.w		; 0C 1E 1E
	asl $7C1E.w,X		; 1E 1E 7C
	asl $FC78.w		; 0E 78 FC
	beq  -8.b		; F0 F8
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb $1E.b		; 04 1E
	asl $1C3F.w		; 0E 3F 1C
	and $30FF08.l,X		; 3F 08 FF 30
	inc $FC60.w,X		; FE 60 FC
	tsb $05.b		; 04 05
	bpl  90.b		; 10 5A
	sec		; 38
	sta $1F70.w		; 8D 70 1F
	cpx $3B.b		; E4 3B
	dec $71.b		; C6 71
	sta $C8.b,S		; 83 C8
	brk $B8.b		; 00 B8
	brk $7F.b		; 00 7F
	pla		; 68
	eor $E887F4.l		; 4F F4 87 E8
	phd		; 0B
	bne  23.b		; D0 17
	ldy #$2F.b		; A0 2F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	adc #$10.b		; 69 10
	mvp $80,$39		; 44 39 80
	brk $FD.b		; 00 FD
	ora $8F.b		; 05 8F
	ora [$85.b]		; 07 85
	ora $7F.b		; 05 7F
	cop $6E.b		; 02 6E
	brk $00.b		; 00 00
	sbc $7D8600.l,X		; FF 00 86 7D
	adc $7F7A7F.l,X		; 7F 7F 7A 7F
	sei		; 78
	adc $80027A.l,X		; 7F 7A 02 80
	sbc ($F1.b),Y		; F1 F1
	brk $77.b		; 00 77
	bpl  -1.b		; 10 FF
	pld		; 2B
	sbc $53D753.l		; EF 53 D7 53
	cmp [$03.b]		; C7 03
	sbc $0AFE07.l		; EF 07 FE 0A
	sbc $00.b,X		; F5 00
	brk $77.b		; 00 77
	mvp $90,$FB		; 44 FB 90
	xce		; FB
	dec A		; 3A
	sbc $10773A.l,X		; FF 3A 77 10
	ror $7C40.w,X		; 7E 40 7C
	and ($00.b),Y		; 31 00
	cpy #$00.b		; C0 00
	beq  64.b		; F0 40
	sed		; F8
	beq  -4.b		; F0 FC
	pla		; 68
	inc $FE28.w,X		; FE 28 FE
	cpy #$2C.b		; C0 2C
	bcc   8.b		; 90 08
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	beq  16.b		; F0 10
	sed		; F8
	pla		; 68
	jsr ($BC54.w,X)		; FC 54 BC
	bpl  56.b		; 10 38
	jsr $4020.w		; 20 20 40
	asl $1F.b		; 06 1F
	tsb $3F.b		; 04 3F
	php		; 08
	sbc $00FC00.l,X		; FF 00 FC 00
	cmp ($00.b,X)		; C1 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	php		; 08
	ora $111F08.l		; 0F 08 1F 11
	rol $F822.w,X		; 3E 22 F8
	sed		; F8
	cpy #$C0.b		; C0 C0
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	brk $83.b		; 00 83
	ora ($0F.b,X)		; 01 0F
	tsb $007C.w		; 0C 7C 00
	cpx #$40.b		; E0 40
	cpy #$80.b		; C0 80
	bra  30.b		; 80 1E
	ora ($80.b,X)		; 01 80
	bra   1.b		; 80 01
	ora ($07.b,X)		; 01 07
	tsb $3C.b		; 04 3C
	jsr $80E0.w		; 20 E0 80
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	and ($E0.b,X)		; 21 E0
	eor $C0.b,S		; 43 C0
	asl $01.b		; 06 01
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	asl $5F71.w,X		; 1E 71 5F
	cpy #$BE.b		; C0 BE
	bra -32.b		; 80 E0
	sta $C0.b,S		; 83 C0
	ora [$00.b]		; 07 00
	ora $1F1F00.l		; 0F 00 1F 1F
	ora $3F212F.l,X		; 1F 2F 21 3F
	brk $7F.b		; 00 7F
	brk $88.b		; 00 88
	eor $38.b		; 45 38
	sty $70.b		; 84 70
	php		; 08
	adc ($09.b)		; 72 09
	jsl $D10691.l		; 22 91 06 D1
	asl $D1.b		; 06 D1
	bra -64.b		; 80 C0
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra  -1.b		; 80 FF
	cpy #$FF.b		; C0 FF
	cpy #$FF.b		; C0 FF
	rti		; 40

	adc $0C012C.l,X		; 7F 2C 01 0C
	jsl $582218.l		; 22 18 22 58
	tsb $58.b		; 04 58
	tsb $10.b		; 04 10
	mvp $04,$90		; 44 90 04
	bra   0.b		; 80 00
	asl $1C1E.w,X		; 1E 1E 1C
	trb $1C1C.w		; 1C 1C 1C
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sei		; 78
	sei		; 78
	jmp ($007C.w,X)		; 7C 7C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
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
	ora ($00.b,X)		; 01 00
	ora [$03.b]		; 07 03
	ora $007F0E.l,X		; 1F 0E 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $0F.b		; 02 0F
	php		; 08
	and $070020.l,X		; 3F 20 00 07
	brk $0F.b		; 00 0F
	tsb $1F.b		; 04 1F
	php		; 08
	ror $FC30.w,X		; 7E 30 FC
	cmp ($F0.b,X)		; C1 F0
	tsb $1AEC.w		; 0C EC 1A
	phx		; DA
	ora $03.b,S		; 03 03
	ora [$05.b]		; 07 05
	asl $3C0A.w		; 0E 0A 3C
	jsr $83F8.w		; 20 F8 83
	beq  31.b		; F0 1F
	cpy $5F.b		; C4 5F
	dey		; 88
	lda $060F07.l,X		; BF 07 0F 06
	ora $0C1F0E.l,X		; 1F 0E 1F 0C
	and $183E1C.l,X		; 3F 1C 3E 18
	ror $7C38.w,X		; 7E 38 7C
	bmi  -4.b		; 30 FC
	ora $000F08.l		; 0F 08 0F 00
	ora $001E11.l,X		; 1F 11 1E 00
	rol $3C22.w,X		; 3E 22 3C
	brk $7C.b		; 00 7C
	mvp $00,$78		; 44 78 00
	ora ($87.b)		; 12 87
	ora [$8F.b]		; 07 8F
	ora $1F070F.l		; 0F 0F 07 1F
	brk $17.b		; 00 17
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora ($0F.b,X)		; 01 0F
	tya		; 98
	sta $171F17.l,X		; 9F 17 1F 17
	ora $000F03.l,X		; 1F 03 0F 00
	ora $030700.l		; 0F 00 07 03
	cop $07.b		; 02 07
	tsb $25.b		; 04 25
	ora $01C1.w		; 0D C1 01
	ora ($81.b,X)		; 01 81
	sec		; 38
	bra 119.b		; 80 77
	brk $EF.b		; 00 EF
	brk $DF.b		; 00 DF
	brk $9D.b		; 00 9D
	ora ($C2.b,X)		; 01 C2
	cmp $01.b,S		; C3 01
	and $01.b,S		; 23 01
	sbc ($00.b,S),Y		; F3 00
	sbc $F807.w,X		; FD 07 F8
	ora $E01FF0.l		; 0F F0 1F E0
	rol $E0C0.w,X		; 3E C0 E0
	beq -64.b		; F0 C0
	cpx #$80.b		; E0 80
	cpy #$00.b		; C0 00
	brk $C0.b		; 00 C0
	rts		; 60

	cpx #$30.b		; E0 30
	bne  16.b		; D0 10
	bcs -16.b		; B0 F0
	cpy #$F8.b		; C0 F8
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	ldy #$20.b		; A0 20
	bne  16.b		; D0 10
	cpx #$10.b		; E0 10
	brk $70.b		; 00 70
	sta [$7F.b]		; 87 7F
	sta $FFFFFF.l		; 8F FF FF FF
	inc $0CFF.w,X		; FE FF 0C
	inc $0100.w,X		; FE 00 01
	ror $E0.b		; 66 E0
	sty $0383.w		; 8C 83 03
	sta $EFFF07.l		; 8F 07 FF EF
	sbc $00FFFE.l,X		; FF FE FF 00
	sbc $E0FF00.l,X		; FF 00 FF E0
	ora $111F80.l		; 0F 80 1F 11
	asl $1F7E.w		; 0E 7E 1F
	lsr $1C3F.w,X		; 5E 3F 1C
	and $DBDF1D.l,X		; 3F 1D DF DB
	sbc $722E.w		; ED 2E 72
	trb $3E.b		; 14 3E
	rts		; 60

	inc $9F0E.w		; EE 0E 9F
	asl $1CFF.w		; 0E FF 1C
	sbc $C9FF1D.l,X		; FF 1D FF C9
	sbc $14FF22.l,X		; FF 22 FF 14
	sbc $05F709.l,X		; FF 09 F7 05
	pea $3405.w		; F4 05 34
	tsb $1C.b		; 04 1C
	cmp ($0F.b),Y		; D1 0F
	bit $AFC3.w		; 2C C3 AF
	rti		; 40

	lsr $20.b,X		; 56 20
	sbc $AB81.w		; ED 81 AB
	bra  27.b		; 80 1B
	bpl  11.b		; 10 0B
	inx		; E8
	ora ($E2.b)		; 12 E2
	tsb $0FF0.w		; 0C F0 0F
	beq   6.b		; F0 06
	sbc $10C0.w,Y		; F9 C0 10
	rts		; 60

	dey		; 88
	cpx #$08.b		; E0 08
	cpy #$08.b		; C0 08
	rti		; 40

	bpl   0.b		; 10 00
	cpx #$40.b		; E0 40
	brk $A0.b		; 00 A0
	rti		; 40

	jsr $3040.w		; 20 40 30
	bra -16.b		; 80 F0
	brk $F0.b		; 00 F0
	bmi -32.b		; 30 E0
	jsr $0000.w		; 20 00 00
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	tsb $01.b		; 04 01
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc ($1F.b,X)		; 61 1F
	txa		; 8A
	asl $13.b,X		; 16 13
	rol $5C27.w		; 2E 27 5C
	pld		; 2B
	cld		; D8
	adc ($99.b,X)		; 61 99
	bra  15.b		; 80 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc ($60.b,X)		; 61 60
	cmp $C4.b		; C5 C4
	phb		; 8B
	dey		; 88
	ora [$00.b]		; 07 00
	asl $0608.w		; 0E 08 06
	asl $00.b		; 06 00
	brk $7D.b		; 00 7D
	ora ($FA.b,X)		; 01 FA
	ora $F4.b,S		; 03 F4
	ora [$D0.b]		; 07 D0
	trb $7840.w		; 1C 40 78
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	inc $FD00.w,X		; FE 00 FD
	ora ($FA.b,X)		; 01 FA
	cop $E8.b		; 02 E8
	php		; 08
	ldy #$20.b		; A0 20
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F8.b		; C0 F8
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	bvs 127.b		; 70 7F
	bit $003F.w,X		; 3C 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $7F.b		; 00 7F
	ora $3F.b,S		; 03 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8A.b		; 00 8A
	rep #$43		; C2 43
	sta $4C.b,S		; 83 4C
	bra  88.b		; 80 58
	brk $71.b		; 00 71
	brk $20.b		; 00 20
	ora ($00.b,X)		; 01 00
	ora ($02.b,X)		; 01 02
	ora ($81.b,X)		; 01 81
	jsr ($FC00.w,X)		; FC 00 FC
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	eor [$7F.b]		; 47 7F
	asl $0CFF.w		; 0E FF 0C
	.db $42, $18		; 42 18
	bra  48.b		; 80 30
	sty $30.b		; 84 30
	brk $60.b		; 00 60
	php		; 08
	rts		; 60

	bpl -94.b		; 10 A2
	and $3C9E84.l		; 2F 84 9E 3C
	bit $7C7C.w,X		; 3C 7C 7C
	sei		; 78
	sei		; 78
	sed		; F8
	sed		; F8
	beq -16.b		; F0 F0
	cpx #$E0.b		; E0 E0
	stz $0E02.w		; 9C 02 0E
	eor ($07.b,X)		; 41 07
	bpl   0.b		; 10 00
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	jmp ($3E3E.w,X)		; 7C 3E 3E
	ora $00000F.l		; 0F 0F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	brk $C0.b		; 00 C0
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
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	sta ($F8.b,X)		; 81 F8
	sbc #$F0.b		; E9 F0
	inx		; E8
	beq -16.b		; F0 F0
	cpx #$E0.b		; E0 E0
	cpx $D1.b		; E4 D1
	cpx $F1.b		; E4 F1
	cpy $C0.b		; C4 C0
	cpy $04.b		; C4 04
	sta [$84.b]		; 87 84
	sbc [$C4.b],Y		; F7 C4
	sbc [$C4.b],Y		; F7 C4
	sbc [$C0.b],Y		; F7 C0
	sbc ($C0.b,S),Y		; F3 C0
	sbc $C0.b,S		; E3 C0
	sbc $82.b,S		; E3 82
	sbc $40.b,S		; E3 40
	sty $40.b		; 84 40
	txa		; 8A
	brk $92.b		; 00 92
	tsb $F1.b		; 04 F1
	cmp #$24.b		; C9 24
	sta ($4C.b),Y		; 91 4C
	and $98.b,S		; 23 98
	asl $31.b		; 06 31
	tda		; 7B
	tda		; 7B
	adc ($75.b),Y		; 71 75
	adc ($6D.b,X)		; 61 6D
	brk $0E.b		; 00 0E
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	dex		; CA
	and ($4A.b,X)		; 21 4A
	and ($0B.b,X)		; 21 0B
	jsr $C419.w		; 20 19 C4
	sta $B904.w,Y		; 99 04 B9
	tsb $30.b		; 04 30
	sty $0D70.w		; 8C 70 0D
	cpy #$DF.b		; C0 DF
	cpy #$DF.b		; C0 DF
	cpy #$DF.b		; C0 DF
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	and $000030.l,X		; 3F 30 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	asl $0F.b		; 06 0F
	tsb $EF.b		; 04 EF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$01.b]		; 07 01
	sta [$80.b]		; 87 80
	jsr ($001C.w,X)		; FC 1C 00
	brk $00.b		; 00 00
	ora [$03.b]		; 07 03
	ora $030F03.l		; 0F 03 0F 03
	ora $00FF00.l		; 0F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $03.b		; 00 03
	cop $07.b		; 02 07
	tsb $07.b		; 04 07
	tsb $07.b		; 04 07
	tsb $0B.b		; 04 0B
	asl A		; 0A
	sta $010F9B.l,X		; 9F 9B 0F 01
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	jsr $00F8.w		; 20 F8 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	ldy #$20.b		; A0 20
	bvs  16.b		; 70 10
	beq -128.b		; F0 80
	brk $E0.b		; 00 E0
	ora $03.b,S		; 03 03
	cop $07.b		; 02 07
	ora ($05.b,X)		; 01 05
	asl $04.b		; 06 04
	ora $08.b,S		; 03 08
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	bra -127.b		; 80 81
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	asl $04.b		; 06 04
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $90AF08.l		; 0F 08 AF 90
	eor [$48.b],Y		; 57 48
	bcs -81.b		; B0 AF
	pha		; 48
	dec $AA.b		; C6 AA
	lda ($C5.b,X)		; A1 C5
	sta $FB.b,S		; 83 FB
	sta [$05.b]		; 87 05
	sta $80.b,S		; 83 80
	sbc $A0FF40.l,X		; FF 40 FF A0
	sbc $207F40.l,X		; FF 40 7F 20
	adc $013F00.l,X		; 7F 00 3F 01
	ora $FCBF80.l		; 0F 80 BF FC
	ora $80.b,S		; 03 80
	adc $7CC023.l,X		; 7F 23 C0 7C
	rol $FE7E.w,X		; 3E 7E FE
	inc $FCFE.w,X		; FE FE FC
	sbc $00FDFC.l,X		; FF FC FD 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $78FF00.l,X		; FF 00 FF 78
	sbc $FCFFFC.l,X		; FF FC FF FC
	inc $FEFC.w,X		; FE FC FE
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $F0.b		; 00 F0
	brk $D0.b		; 00 D0
	brk $88.b		; 00 88
	bmi -120.b		; 30 88
	rti		; 40

	cpy #$40.b		; C0 40
	cpy #$00.b		; C0 00
	cpx #$60.b		; E0 60
	cpx #$E0.b		; E0 E0
	cpx #$F0.b		; E0 F0
	bne -16.b		; D0 F0
	bra  -8.b		; 80 F8
	dey		; 88
	brk $C0.b		; 00 C0
	ldy #$3F.b		; A0 3F
	sbc $FD01.w,Y		; F9 01 FD
	ora ($FA.b,X)		; 01 FA
	ora $C6.b,S		; 03 C6
	cmp [$00.b]		; C7 00
	and $800000.l,X		; 3F 00 00 80
	bra -40.b		; 80 D8
	clc		; 18
	inc $FE00.w,X		; FE 00 FE
	brk $FD.b		; 00 FD
	ora ($39.b,X)		; 01 39
	ora ($0F.b,X)		; 01 0F
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	inc $F0B0.w,X		; FE B0 F0
	bmi -16.b		; 30 F0
	bmi -16.b		; 30 F0
	bvs -32.b		; 70 E0
	jsr $7FDF.w		; 20 DF 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4F.b		; 00 4F
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $00FF8F.l,X		; FF 8F FF 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	sbc $0000FF.l,X		; FF FF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	sed		; F8
	sbc $FDFDFF.l,X		; FF FF FD FD
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   3.b		; 30 03
	bit $1F80.w,X		; 3C 80 1F
	bra  47.b		; 80 2F
	ldy #$93.b		; A0 93
	bmi  12.b		; 30 0C
	jmp ($FF00.w,X)		; 7C 00 FF
	brk $C0.b		; 00 C0
	ror $3F82.w,X		; 7E 82 3F
	cpy #$3F.b		; C0 3F
	cpy #$1F.b		; C0 1F
	cpy #$2F.b		; C0 2F
	cpx #$73.b		; E0 73
	beq   1.b		; F0 01
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	ora $07.b,S		; 03 07
	ora $0B.b,S		; 03 0B
	ora [$07.b]		; 07 07
	ora $0A0F0C.l		; 0F 0C 0F 0A
	asl A		; 0A
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora $0F.b,S		; 03 0F
	cop $0F.b		; 02 0F
	tsb $0F.b		; 04 0F
	brk $0A.b		; 00 0A
	ldy #$C0.b		; A0 C0
	cpx #$80.b		; E0 80
	bra -126.b		; 80 82
	cpy #$82.b		; C0 82
	cpy #$84.b		; C0 84
	cpy #$80.b		; C0 80
	sta $80.b,S		; 83 80
	sta $C38380.l		; 8F 80 83 C3
	sta $C3.b,S		; 83 C3
	sta ($C1.b,X)		; 81 C1
	sta ($81.b,X)		; 81 81
	sta $83.b,S		; 83 83
	sta [$87.b]		; 87 87
	sty $008C.w		; 8C 8C 00
	bra   0.b		; 80 00
	ora [$20.b]		; 07 20
	cpy #$20.b		; C0 20
	cpy #$60.b		; C0 60
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	sbc $000F00.l,X		; FF 00 0F 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	clc		; 18
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $F800.w,X		; FE 00 F8
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $FFFCFF.l,X		; 3F FF FC FF
	brk $FC.b		; 00 FC
	brk $C0.b		; 00 C0
	brk $03.b		; 00 03
	ora ($1F.b,X)		; 01 1F
	ora $FF7EFF.l,X		; 1F FF 7E FF
	sbc $00FF00.l,X		; FF 00 FF 00
	beq  48.b		; F0 30
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $407F08.l		; 0F 08 7F 40
	sbc $FF0000.l,X		; FF 00 00 FF
	brk $FF.b		; 00 FF
	brk $0F.b		; 00 0F
	ora [$7F.b]		; 07 7F
	rol $F0FF.w,X		; 3E FF F0
	sbc $01FEC0.l,X		; FF C0 FE 01
	beq  -1.b		; F0 FF
	ora $FC.b,S		; 03 FC
	bit $0407.w,X		; 3C 07 04
	and $00FF20.l,X		; 3F 20 FF 00
	sbc $09F801.l,X		; FF 01 F8 09
	cpy #$43.b		; C0 43
	php		; 08
	sbc $E0FF30.l,X		; FF 30 FF E0
	sbc $00FF81.l,X		; FF 81 FF 00
	sbc $FFC03F.l,X		; FF 3F C0 FF
	brk $FF.b		; 00 FF
	brk $3E.b		; 00 3E
	jsl $FB85FD.l		; 22 FD 85 FB
	asl A		; 0A
	sbc [$14.b],Y		; F7 14
	cmp $43.b,S		; C3 43
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bmi  -8.b		; 30 F8
	bcs  -8.b		; B0 F8
	bcc  -8.b		; 90 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	dey		; 88
	pla		; 68
	cpy $34.b		; C4 34
.INDEX 8
	sep #$1A		; E2 1A
	sed		; F8
	php		; 08
	sed		; F8
	pha		; 48
	sed		; F8
	pha		; 48
	bcs -96.b		; B0 A0
	brk $00.b		; 00 00
	php		; 08
	sed		; F8
	tsb $FC.b		; 04 FC
	cop $FE.b		; 02 FE
	asl $0708.w		; 0E 08 07
	ora ($0C.b),Y		; 11 0C
	ora ($1E.b),Y		; 11 1E
	ora ($10.b,S),Y		; 13 10
	ora $00010E.l		; 0F 0E 01 00
	and ($60.b,X)		; 21 60
	rol $0007.w,X		; 3E 07 00
	asl $1F00.w		; 0E 00 1F
	ora ($0D.b),Y		; 11 0D
	ora ($10.b,X)		; 01 10
	bpl  62.b		; 10 3E
	rol $1E1E.w,X		; 3E 1E 1E
	ora ($61.b,X)		; 01 61
	inc A		; 1A
	lda ($0C.b,X)		; A1 0C
	cpx #$47.b		; E0 47
	ldy #$C2.b		; A0 C2
	rts		; 60

	bra -79.b		; 80 B1
	brk $BF.b		; 00 BF
	trb $5021.w		; 1C 21 50
	and ($18.b,X)		; 21 18
	ora $5F1F1C.l,X		; 1F 1C 1F 5F
	ora $0E1F9F.l,X		; 1F 9F 1F 0E
	lsr $C080.w		; 4E 80 C0
	asl $1EDE.w,X		; 1E DE 1E
	dec $F0F0.w,X		; DE F0 F0
	clc		; 18
	cpy #$28.b		; C0 28
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	jsr ($1860.w,X)		; FC 60 18
	and ($08.b)		; 32 08
	bvs  -2.b		; 70 FE
	trb $3CFE.w		; 1C FE 3C
	inc $7F7C.w,X		; FE 7C 7F
	sed		; F8
	xce		; FB
	brk $03.b		; 00 03
	cpx #$E7.b		; E0 E7
	beq  -9.b		; F0 F7
	bvs -64.b		; 70 C0
	clc		; 18
	cpy $20.b		; C4 20
	ror A		; 6A
	tsb $72.b		; 04 72
	tsb $0042.w		; 0C 42 00
	ror $A724.w,X		; 7E 24 A7
	sty $3840.w		; 8C 40 38
	brk $78.b		; 00 78
	rti		; 40

	mvn $0C,$44		; 54 44 0C
	tsb $3C3C.w		; 0C 3C 3C
	brk $80.b		; 00 80
	inc A		; 1A
.INDEX 16
	rep #$1F		; C2 1F
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora $02.b,S		; 03 02
	ora $000009.l		; 0F 09 00 00
	brk $00.b		; 00 00
	brk $BE.b		; 00 BE
	brk $81.b		; 00 81
	brk $81.b		; 00 81
	brk $E1.b		; 00 E1
	cpy #$7C3E.w		; C0 3E 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	ror $7E7E.w,X		; 7E 7E 7E
	ror $1E1E.w,X		; 7E 1E 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $300F.w		; 0C 0F 30
	and $00FCE0.l,X		; 3F E0 FC 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($0F.b,X)		; 01 0F
	ora $3E010F.l		; 0F 0F 01 3E
	asl $F8.b		; 06 F8
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $800000.l		; 0F 00 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	sei		; 78
	adc $80FEE0.l,X		; 7F E0 FE 80
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ror $FC00.w,X		; 7E 00 FC
	tsb $F0.b		; 04 F0
	bpl   0.b		; 10 00
	ora $01.b,S		; 03 01
	ora $183F07.l		; 0F 07 3F 18
	inc $F000.w,X		; FE 00 F0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$04.b]		; 07 04
	ora $447C10.l,X		; 1F 10 7C 44
	cpx #$0020.w		; E0 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	sbc $00FEE0.l,X		; FF E0 FE 00
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $08F800.l,X		; FF 00 F8 08
	cpy #$0040.w		; C0 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $1C3F07.l		; 0F 07 3F 1C
	sbc $00FE60.l,X		; FF 60 FE 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	ora $417F10.l,X		; 1F 10 7F 41
	sed		; F8
	php		; 08
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora [$7F.b]		; 07 7F
	and $FFF0FF.l,X		; 3F FF F0 FF
	bra  -8.b		; 80 F8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora [$06.b]		; 07 06
	and $80FF30.l,X		; 3F 30 FF 80
	sbc $20E003.l,X		; FF 03 E0 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $07.b		; 00 07
	ora $0F.b,S		; 03 0F
	asl $1F.b		; 06 1F
	php		; 08
	lda $20FE10.l,X		; BF 10 FE 20
	jsr ($F800.w,X)		; FC 00 F8
	brk $F0.b		; 00 F0
	ora $02.b,S		; 03 02
	ora [$00.b]		; 07 00
	ora $031F00.l		; 0F 00 1F 03
	ldy $B8A4.w,X		; BC A4 B8
	dey		; 88
	bvs  16.b		; 70 10
	cpx #$F020.w		; E0 20 F0
	jsr ($FEF8.w,X)		; FC F8 FE
	trb $0EFE.w		; 1C FE 0E
	sbc $061F06.l,X		; FF 06 1F 06
	ora $183F0C.l,X		; 1F 0C 3F 18
	ror $00F8.w,X		; 7E F8 00
	jsr ($FE00.w,X)		; FC 00 FE
	cpy #$001F.w		; C0 1F 00
	ora $000F00.l		; 0F 00 0F 00
	asl $3C10.w,X		; 1E 10 3C
	jsr $0000.w		; 20 00 00
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
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	tsb $1E3F.w		; 0C 3F 1E
	adc $06FF26.l,X		; 7F 26 FF 06
	sbc $18FF0C.l,X		; FF 0C FF 18
	sbc $040000.l,X		; FF 00 00 04
	tsb $1E.b		; 04 1E
	bpl  63.b		; 10 3F
	jsr $407F.w		; 20 7F 40
	sbc $41DFA0.l		; EF A0 DF 41
	ldx $0682.w,Y		; BE 82 06
	asl $09.b		; 06 09
	ora #$06.b		; 09 06
	asl $09.b		; 06 09
	ora #$04.b		; 09 04
	asl $1908.w		; 0E 08 19
	ora [$11.b]		; 07 11
	asl $10.b		; 06 10
	asl $1F.b		; 06 1F
	brk $1F.b		; 00 1F
	asl $1F.b		; 06 1F
	brk $1F.b		; 00 1F
	cop $13.b		; 02 13
	ora [$01.b]		; 07 01
	asl $0F00.w		; 0E 00 0F
	brk $9F.b		; 00 9F
	rts		; 60

	eor $982730.l		; 4F 30 27 98
	bpl  15.b		; 10 0F
	php		; 08
	sta [$07.b]		; 87 07
	bpl  65.b		; 10 41
	lda $AF17.w,Y		; B9 17 AF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	ora $7F.b,S		; 03 7F
	rti		; 40

	sta ($3E.b),Y		; 91 3E
	eor $3C1E2F.l		; 4F 2F 1E 3C
	asl $1E1C.w,X		; 1E 1C 1E
	and $3C1D1C.l,X		; 3F 1C 1D 3C
	and $6E3C.w,Y		; 39 3C 6E
	ror $1F0C.w		; 6E 0C 1F
	tsb $0C1F.w		; 0C 1F 0C
	ora $0C3F0C.l,X		; 1F 0C 3F 0C
	rol $3E18.w,X		; 3E 18 3E
	clc		; 18
	rol $906C.w,X		; 3E 6C 90
	rts		; 60

	ora ($41.b),Y		; 11 41
	rol $4499.w,X		; 3E 99 44
	and $7304.w,Y		; 39 04 73
	php		; 08
	adc $18.b,S		; 63 18
	asl $31.b		; 06 31
	ora $EE0E6F.l		; 0F 6F 0E EE
	brk $E1.b		; 00 E1
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra  -1.b		; 80 FF
	sbc ($F7.b,X)		; E1 F7
	sbc $FF.b,S		; E3 FF
	sbc $F3.b		; E5 F3
	eor $18E2.w		; 4D E2 18
	.db $42, $B0		; 42 B0
	eor $01.b,S		; 43 01
	inc $4638.w,X		; FE 38 46
	cmp $FB.b,S		; C3 FB
	cmp ($F3.b,X)		; C1 F3
	cpy $5CED.w		; CC ED 5C
	eor $BDBC.w,X		; 5D BC BD
	ldy $00BD.w,X		; BC BD 00
	ora ($B8.b,X)		; 01 B8
	tyx		; BB
	dey		; 88
	bne -78.b		; D0 B2
	sty $3C.b		; 84 3C
	ora ($1F.b,X)		; 01 1F
	brk $C3.b		; 00 C3
	sec		; 38
	bvs  14.b		; 70 0E
	cop $81.b		; 02 81
	bra  64.b		; 80 40
	jsr $F8E0.w		; 20 E0 F8
	sed		; F8
	inc $FFFE.w,X		; FE FE FF
	sbc $010707.l,X		; FF 07 07 01
	sta ($00.b,X)		; 81 00
	cpy #$C000.w		; C0 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $07.b		; 02 07
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	jsr $C840.w		; 20 40 C8
	bpl -126.b		; 10 82
	tsb $8318.w		; 0C 18 83
	jmp $0020.w		; 4C 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	cpx #$F0F0.w		; E0 F0 F0
	jmp ($1F7C.w,X)		; 7C 7C 1F
	ora $C02000.l,X		; 1F 00 20 C0
	bpl -32.b		; 10 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$2020.w		; C0 20 20
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F800.w		; E0 00 F8
	brk $C8.b		; 00 C8
	bmi  48.b		; 30 30
	cpy #$00C0.w		; C0 C0 00
	jsr $D600.w		; 20 00 D6
	sbc [$D4.b]		; E7 D4
	sbc $00.b,S		; E3 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	ora ($F9.b,X)		; 01 F9
	.db $82, $FB, $60		; 82 FB 60
	trb $40.b		; 14 40
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	brk $F4.b		; 00 F4
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	asl $387E.w		; 0E 7E 38
	sed		; F8
	rts		; 60

	cpx #$8080.w		; E0 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $203E0C.l		; 0F 0C 3E 20
	sed		; F8
	bra -32.b		; 80 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpx #$C300.w		; E0 00 C3
	ora ($9F.b,X)		; 01 9F
	trb $00FF.w		; 1C FF 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	cpy #$0101.w		; C0 01 01
	ora $C0FC0C.l		; 0F 0C FC C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bmi  -4.b		; 30 FC
	rts		; 60

	beq -128.b		; F0 80
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	rti		; 40

	cpx #$8000.w		; E0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$03.b]		; 07 03
	and $F8FF0F.l,X		; 3F 0F FF F8
	sbc $03FF80.l,X		; FF 80 FF 03
	sbc $010100.l,X		; FF 00 01 01
	ora ($07.b,X)		; 01 07
	asl $1F.b		; 06 1F
	clc		; 18
	sbc $00FEC0.l,X		; FF C0 FE 00
	sbc $0F19.w,Y		; F9 19 0F
	tsb $0F00.w		; 0C 00 0F
	bmi  -1.b		; 30 FF
	cpx #$C0FF.w		; E0 FF C0
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $8FFC60.l,X		; FF 60 FC 8F
	beq  63.b		; F0 3F
	cpy #$057D.w		; C0 7D 05
	xce		; FB
	phd		; 0B
	beq  16.b		; F0 10
	cpy #$3F40.w		; C0 40 3F
	bmi  -4.b		; 30 FC
	sta [$F0.b]		; 87 F0
	ora $0FFF00.l,X		; 1F 00 FF 0F
	php		; 08
	phd		; 0B
	php		; 08
	ora $08.b,S		; 03 08
	lsr $7C.b		; 46 7C
	and ($3D.b,X)		; 21 3D
	sta ($1F.b)		; 92 1F
	cmp $904C30.l		; CF 30 4C 90
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $303308.l		; 0F 08 33 30
	dec $14.b,X		; D6 14
	sbc $05.b		; E5 05
	cmp $6F6F0F.l		; CF 0F 6F 6F
	and $9F219F.l		; 2F 9F 21 9F
	jmp $4691.w		; 4C 91 46
	bcc  67.b		; 90 43
	bcc   1.b		; 90 01
	bcc   0.b		; 90 00
	sta ($23.b,S),Y		; 93 23
	stz $7F07.w		; 9C 07 7F
	ora ($71.b,X)		; 01 71
	asl $0F2E.w		; 0E 2E 0F
	and $0F2F0F.l		; 2F 0F 2F 0F
	adc $036C0C.l		; 6F 0C 6C 03
	adc $3D.b,S		; 63 3D
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sei		; 78
	bvs 120.b		; 70 78
	adc $D1F0.w,Y		; 79 F0 D1
	bne -112.b		; D0 90
	bcc -112.b		; 90 90
	bcc  24.b		; 90 18
	bit $7C10.w,X		; 3C 10 7C
	bmi 120.b		; 30 78
	bmi  -8.b		; 30 F8
	bvs  -8.b		; 70 F8
	bne  -8.b		; D0 F8
	bra  -8.b		; 80 F8
	brk $F8.b		; 00 F8
	stx $01.b		; 86 01
	iny		; C8
	bpl -52.b		; 10 CC
	bpl -100.b		; 10 9C
	jsr $2018.w		; 20 18 20
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$60FF.w		; C0 FF 60
	adc [$60.b]		; 67 60
	adc $40.b,S		; 63 40
	rti		; 40

	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1A.b		; 00 1A
	sta $08.b		; 85 08
	sbc $21.b		; E5 21
	stx $24.b,Y		; 96 24
	txs		; 9A
	bit $92.b		; 24 92
	bit $92.b		; 24 92
	bit $92.b		; 24 92
	bit $92.b		; 24 92
	sei		; 78
	tda		; 7B
	clc		; 18
	tas		; 1B
	php		; 08
	xba		; EB
	brk $F7.b		; 00 F7
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $3F.b		; 00 3F
	ora $0F00FF.l,X		; 1F FF 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00FF0C.l		; 0F 0C FF 00
	tsb $000C.w		; 0C 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora $000C04.l		; 0F 04 0C 00
	clc		; 18
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$04.b]		; 07 04
	ora $000C08.l		; 0F 08 0C 00
	clc		; 18
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bra  16.b		; 80 10
	rts		; 60

	cpy $18.b		; C4 18
	rts		; 60

	asl $B8.b		; 06 B8
	ora ($36.b,X)		; 01 36
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	cpx #$F8F8.w		; E0 F8 F8
	lsr $46.b		; 46 46
	ora #$09.b		; 09 09
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $00FF41.l,X		; 7F 41 FF 00
	sbc $38F800.l,X		; FF 00 F8 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	cpy #$30FE.w		; C0 FE 30
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	jsr $08F8.w		; 20 F8 08
	inc $0002.w,X		; FE 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	ora $70FF1E.l,X		; 1F 1E FF 70
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	php		; 08
	adc $00FE40.l,X		; 7F 40 FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	bra  -1.b		; 80 FF
	ora [$FF.b]		; 07 FF
	ora $0000FF.l,X		; 1F FF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $F7FE.w,X		; FE FE F7
	tsb $9F.b		; 04 9F
	bpl 127.b		; 10 7F
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($0F.b,X)		; 01 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $0F.b,S		; 03 0F
	ora [$1F.b]		; 07 1F
	asl $1C3F.w		; 0E 3F 1C
	adc $31FF00.l,X		; 7F 00 FF 31
	sbc $74C740.l,X		; FF 40 C7 74
	sbc [$07.b]		; E7 07
	tsb $0F.b		; 04 0F
	php		; 08
	ora $203E10.l,X		; 1F 10 3E 20
	rti		; 40

	rti		; 40

	lda $7E84.w,X		; BD 84 7E
	dec A		; 3A
	ror $0138.w,X		; 7E 38 01
	ora [$01.b]		; 07 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	dec $16E5.w		; CE E5 16
	dex		; CA
	ora $9FF0.w		; 0D F0 9F
	ora $FA.b		; 05 FA
	adc ($BC.b,S),Y		; 73 BC
	lda [$D8.b],Y		; B7 D8
	rol $48.b,X		; 36 48
	php		; 08
	and #$C8.b		; 29 C8
	ora ($F0.b),Y		; 11 F0
	ora $60.b,S		; 03 60
	ora $00.b,S		; 03 00
	ora [$80.b]		; 07 80
	stx $01.b		; 86 01
	ora $E3.b		; 05 E3
	adc $1C.b,S		; 63 1C
	asl $3C38.w,X		; 1E 38 3C
	bmi 120.b		; 30 78
	jsr $81F1.w		; 20 F1 81
	sep #$83		; E2 83
	cpy $87.b		; C4 87
	cmp #$8E.b		; C9 8E
	cmp ($18.b,S),Y		; D3 18
	and $207E30.l,X		; 3F 30 7E 20
	jsr ($F800.w,X)		; FC 00 F8
	sta ($F0.b,X)		; 81 F0
	ora $E0.b,S		; 03 E0
	asl $C0.b		; 06 C0
	ora $00C1.w		; 0D C1 00
	brk $0F.b		; 00 0F
	brk $3E.b		; 00 3E
	brk $5C.b		; 00 5C
	sta ($C9.b,X)		; 81 C9
	adc $9B.b,S		; 63 9B
	sbc [$26.b]		; E7 26
	cmp $009F1C.l		; CF 1C 9F 00
	ora $003E00.l		; 0F 00 3E 00
	sbc $3B40.w,X		; FD 40 3B
	lda ($37.b,X)		; A1 37
	eor $47.b,S		; 43 47
	bra -97.b		; 80 9F
	bpl 127.b		; 10 7F
	clc		; 18
	ldy $7E3C.w,X		; BC 3C 7E
	sei		; 78
	inc $FCF1.w,X		; FE F1 FC
	sbc $F8.b,S		; E3 F8
	sta [$E0.b]		; 87 E0
	rol $91.b		; 26 91
	jmp $1923.w		; 4C 23 19
	sbc $70FF38.l,X		; FF 38 FF 70
	sbc $C0FFE0.l,X		; FF E0 FF C0
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $CCFF00.l,X		; FF 00 FF CC
	jsl $6612A4.l		; 22 A4 12 66
	bpl 114.b		; 10 72
	php		; 08
	and ($88.b)		; 32 88
	bmi -120.b		; 30 88
	bmi -120.b		; 30 88
	bmi   0.b		; 30 00
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	bra  96.b		; 80 60
	bit $70DC.w,X		; 3C DC 70
	bcs -17.b		; B0 EF
	ror $589F.w		; 6E 9F 58
	dey		; 88
	eor ($9C.b,S),Y		; 53 9C
	and ($7E.b,X)		; 21 7E
	bpl   0.b		; 10 00
	sed		; F8
	trb $30FE.w		; 1C FE 30
	sbc $00FF0E.l,X		; FF 0E FF 00
	sei		; 78
	asl $72.b		; 06 72
	sta $808FE1.l		; 8F E1 8F 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	ldy #$0000.w		; A0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $FF.b		; 00 FF
	ora $3F.b,S		; 03 3F
	brk $1F.b		; 00 1F
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	trb $0E3C.w		; 1C 3C 0E
	asl $E0E0.w,X		; 1E E0 E0
	and $181F30.l,X		; 3F 30 1F 18
	ora [$04.b]		; 07 04
	bra   0.b		; 80 00
	beq   0.b		; F0 00
	bit $1E00.w,X		; 3C 00 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($0C.b,X)		; 01 0C
	sbc $000F01.l,X		; FF 01 0F 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora ($0F.b,X)		; 01 0F
	asl $0101.w		; 0E 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	bra  -7.b		; 80 F9
	bmi  -4.b		; 30 FC
	tsb $1E.b		; 04 1E
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $30F08C.l		; 8F 8C F0 30
	sed		; F8
	cpy #$181E.w		; C0 1E 18
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$01FF.w		; C0 FF 01
	sbc $0FFF03.l,X		; FF 03 FF 0F
	sbc $F0FF3C.l,X		; FF 3C FF F0
	inc $F800.w,X		; FE 00 F8
	brk $E0.b		; 00 E0
	sbc $C709.w,Y		; F9 09 C7
	tsb $0F.b		; 04 0F
	php		; 08
	and $81FF20.l,X		; 3F 20 FF 81
	jsr ($F004.w,X)		; FC 04 F0
	bpl   0.b		; 10 00
	brk $7C.b		; 00 7C
	sbc $C0FEF0.l,X		; FF F0 FE C0
	sed		; F8
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $04FC01.l,X		; FF 01 FC 04
	beq  16.b		; F0 10
	cpy #$0040.w		; C0 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	and $2F7F07.l,X		; 3F 07 7F 2F
	adc $067F06.l,X		; 7F 06 7F 06
	adc $123F14.l,X		; 7F 14 3F 12
	and $171F08.l,X		; 3F 08 1F 17
	brk $2F.b		; 00 2F
	cop $2F.b		; 02 2F
	asl $1F.b		; 06 1F
	cop $1F.b		; 02 1F
	ora ($1E.b,X)		; 01 1E
	brk $1B.b		; 00 1B
	bpl   8.b		; 10 08
	brk $34.b		; 00 34
	cmp [$18.b]		; C7 18
	sbc $C3FF80.l,X		; FF 80 FF C3
	sbc $0EFF7F.l,X		; FF 7F FF 0E
	sbc $C88F70.l,X		; FF 70 8F C8
	sta [$7E.b],Y		; 97 7E
	sec		; 38
	ldy $C300.w,X		; BC 00 C3
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	tsb $C0FF.w		; 0C FF C0
	ora $320209.l		; 0F 09 02 32
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	ora $02.b,S		; 03 02
	ora $04.b,S		; 03 04
	tsb $00.b		; 04 00
	cop $06.b		; 02 06
	ora [$0F.b]		; 07 0F
	asl $001F.w		; 0E 1F 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $0C1F06.l		; 0F 06 1F 0C
	and $9C40DC.l,X		; 3F DC 40 9C
	trb $BC.b		; 14 BC
	trb $5CFF.w		; 1C FF 5C
	sta $400448.l,X		; 9F 48 04 40
	.db $42, $82		; 42 82
	ora ($01.b,X)		; 01 01
	lda [$37.b],Y		; B7 37
	sbc [$23.b],Y		; F7 23
	cmp $009C03.l,X		; DF 03 9C 00
	tyx		; BB
	lda ($BB.b,S),Y		; B3 BB
	tyx		; BB
	ora $001B.w,Y		; 19 1B 00
	sta $8C.b,S		; 83 8C
	sta [$09.b],Y		; 97 09
	asl $1C03.w,X		; 1E 03 1C
	ora $1C.b,S		; 03 1C
	ora $0C.b,S		; 03 0C
	ora $05.b,S		; 03 05
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	asl A		; 0A
	rep #$05		; C2 05
	sty $0B.b		; 84 0B
	php		; 08
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clv		; B8
	rol $79.b,X		; 36 79
	stz $60.b,X		; 74 60
	jmp ($7840.w,X)		; 7C 40 78
	brk $71.b		; 00 71
	sta $8C.b,S		; 83 8C
	lsr $78B0.w		; 4E B0 78
	bra -80.b		; 80 B0
	adc $60FF70.l,X		; 7F 70 FF 60
	sbc $06FF43.l,X		; FF 43 FF 06
	inc $7000.w,X		; FE 00 70
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	tya		; 98
	lsr $00.b		; 46 00
	bra   3.b		; 80 03
	tsb $39.b		; 04 39
	brk $E0.b		; 00 E0
	ora ($80.b,X)		; 01 80
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $78FF00.l,X		; FF 00 FF 78
	sed		; F8
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	bne   0.b		; D0 00
	bcc   0.b		; 90 00
	bmi   0.b		; 30 00
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	jsr $6020.w		; 20 20 60
	rts		; 60

	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2E.b		; 00 2E
	bpl  47.b		; 10 2F
	clc		; 18
	and [$18.b]		; 27 18
	and [$08.b],Y		; 37 08
	sbc $0C.b,X		; F5 0C
	and $3601.w,X		; 3D 01 36
	brk $02.b		; 00 02
	cld		; D8
	cmp $C0C7D0.l,X		; DF D0 C7 C0
	cmp $C8CFC8.l		; CF C8 CF C8
	ora $00.b,S		; 03 00
	dec $CFCE.w		; CE CE CF
	cmp $60FF03.l		; CF 03 FF 60
	bcc 112.b		; 90 70
	php		; 08
	bvc   8.b		; 50 08
	bra  76.b		; 80 4C
	ldy #$104C.w		; A0 4C 10
	jmp $4288.w		; 4C 88 42
	cpy $A022.w		; CC 22 A0
	ldy #$30B0.w		; A0 B0 30
	bcs  48.b		; B0 30
	bcs  48.b		; B0 30
	bcc  16.b		; 90 10
	bra  32.b		; 80 20
	tsb $34.b		; 04 34
	brk $30.b		; 00 30
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	cpy #$C040.w		; C0 40 C0
	rti		; 40

	cpy #$8040.w		; C0 40 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora $07.b,S		; 03 07
	cop $07.b		; 02 07
	cop $07.b		; 02 07
	brk $03.b		; 00 03
	brk $C0.b		; 00 C0
	beq -16.b		; F0 F0
	bit $00FC.w,X		; 3C FC 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	rti		; 40

	cpy #$F000.w		; C0 00 F0
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$01.b]		; 07 01
	ora $001E02.l		; 0F 02 1E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	tsb $0F.b		; 04 0F
	ora #$00.b		; 09 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $FF80.w		; 9C 80 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $D704.w,X		; BC 04 D7
	tas		; 1B
	lda [$3E.b]		; A7 3E
	eor $7C.b		; 45 7C
	sta ($EC.b),Y		; 91 EC
	ora $19E4.w,Y		; 19 E4 19
	cpy $19.b		; C4 19
	sty $08.b		; 84 08
	tsb $E7.b		; 04 E7
	ora $C3.b,S		; 03 C3
	ora [$83.b]		; 07 83
	ora $835B43.l		; 0F 43 5B 83
	sta ($03.b,S),Y		; 93 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $00.b,S		; 03 00
	bra -128.b		; 80 80
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	rti		; 40

	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpx #$C000.w		; E0 00 C0
	jsr $8000.w		; 20 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$8EC0.w		; C0 C0 8E
	eor $C32080.l,X		; 5F 80 20 C3
	ora [$EE.b],Y		; 17 EE
	brk $73.b		; 00 73
	brk $38.b		; 00 38
	tsb $18.b		; 04 18
	sta $89.b		; 85 89
	mvp $3F,$00		; 44 00 3F
	rti		; 40

	eor $706F61.l,X		; 5F 61 6F 70
	adc ($F0.b),Y		; 71 F0
	sbc $70FFF0.l,X		; FF F0 FF 70
	adc $633F30.l,X		; 7F 30 3F 63
	pla		; 68
	wai		; CB
	bne  29.b		; D0 1D
	jsr $C030.w		; 20 30 C0
	cmp ($0D.b,X)		; C1 0D
	sty $79.b		; 84 79
	jmp ($1C01.w,X)		; 7C 01 1C
	sta ($63.b,X)		; 81 63
	jsr ($FCC3.w,X)		; FC C3 FC
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	brk $FE.b		; 00 FE
	ora ($FF.b,X)		; 01 FF
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	asl $0C1F.w		; 0E 1F 0C
	ora $183E0C.l,X		; 1F 0C 3E 18
	rol $7E18.w,X		; 3E 18 7E
	clc		; 18
	jmp ($7C38.w,X)		; 7C 38 7C
	bmi  -4.b		; 30 FC
	asl $1E00.w		; 0E 00 1E
	bpl  30.b		; 10 1E
	cop $3C.b		; 02 3C
	jsr $043C.w		; 20 3C 04
	bit $7804.w,X		; 3C 04 78
	rti		; 40

	sei		; 78
	brk $06.b		; 00 06
	ora $040F04.l		; 0F 04 0F 04
	ora $0D1F0C.l		; 0F 0C 1F 0D
	asl $1E0D.w,X		; 1E 0D 1E
	ora $0F1E.w		; 0D 1E 0F
	trb $080E.w		; 1C 0E 08
	asl $0E00.w		; 0E 00 0E
	brk $0E.b		; 00 0E
	cop $0E.b		; 02 0E
	cop $1C.b		; 02 1C
	bpl  28.b		; 10 1C
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$06.b]		; 07 06
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $07.b		; 02 07
	tsb $0F.b		; 04 0F
	php		; 08
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	jsr $607C.w		; 20 7C 60
	sed		; F8
	cpy #$80F9.w		; C0 F9 80
	inc $00.b,X		; F6 00
	bne   6.b		; D0 06
	sta ($0C.b),Y		; 91 0C
	tsb $0D1C.w		; 0C 1C 0D
	sei		; 78
	phk		; 4B
	beq  23.b		; F0 17
	cpx #$C027.w		; E0 27 C0
	ora $000F80.l		; 0F 80 0F 00
	ora $002001.l		; 0F 01 20 00
	bit $5B1A.w		; 2C 1A 5B
	inc A		; 1A
	tad		; 5B
	inc A		; 1A
	txy		; 9B
	rti		; 40

	tad		; 5B
	eor $E060.w		; 4D 60 E0
	beq   3.b		; F0 03
	jsr ($FF00.w,X)		; FC 00 FF
	inc A		; 1A
	sbc $01FF1B.l,X		; FF 1B FF 01
	sbc $00FE00.l,X		; FF 00 FE 00
	sbc $C0FF00.l,X		; FF 00 FF C0
	bmi   0.b		; 30 00
	cpx #$F000.w		; E0 00 F0
	bne -97.b		; D0 9F
	sbc $86.b,X		; F5 86
	lda $E02F80.l,X		; BF 80 2F E0
	php		; 08
	and $20E0.w,Y		; 39 E0 20
	brk $00.b		; 00 00
	cpy #$68C0.w		; C0 C0 68
	php		; 08
	tda		; 7B
	ora $7F.b,S		; 03 7F
	ora ($5F.b,X)		; 01 5F
	eor ($16.b,X)		; 41 16
	bne   0.b		; D0 00
	bra   0.b		; 80 00
	cpy #$E080.w		; C0 80 E0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C040.w		; C0 40 C0
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	sei		; 78
	bpl  60.b		; 10 3C
	clc		; 18
	bit $3C18.w,X		; 3C 18 3C
	php		; 08
	trb $1C00.w		; 1C 00 1C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	sec		; 38
	php		; 08
	sec		; 38
	brk $38.b		; 00 38
	jsr $041C.w		; 20 1C 04
	trb $0C00.w		; 1C 00 0C
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	cop $0C.b		; 02 0C
	asl $1E0C.w,X		; 1E 0C 1E
	tsb $0E.b		; 04 0E
	tsb $0F.b		; 04 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	asl $0E02.w		; 0E 02 0E
	cop $0E.b		; 02 0E
	brk $0E.b		; 00 0E
	php		; 08
	ora [$01.b]		; 07 01
	ora [$05.b]		; 07 05
	ora $00.b,S		; 03 00
	ora $02.b,S		; 03 02
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1D.b		; 05 1D
	ora $1C.b		; 05 1C
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	ora $1F.b,S		; 03 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $F9.b		; 00 F9
	ora $030F03.l		; 0F 03 0F 03
	ora $000609.l		; 0F 09 06 00
	ora $010F0C.l		; 0F 0C 0F 01
	ora $0F0807.l		; 0F 07 08 0F
	bit $7F.b,X		; 34 7F
	and $FF3E7F.l,X		; 3F 7F 3E FF
	adc ($FF.b)		; 72 FF
	tya		; 98
	inc $CC.b		; E6 CC
	and ($DC.b),Y		; 31 DC
	ora ($96.b),Y		; 11 96
	eor $81BF.w,Y		; 59 BF 81
	sbc $257FA6.l,X		; FF A6 7F 25
	xce		; FB
	ora ($E3.b,X)		; 01 E3
	cop $C3.b		; 02 C3
	ora ($F3.b),Y		; 11 F3
	ora $76.b,X		; 15 76
	cli		; 58
	tsb $0402.w		; 0C 02 04
	cop $02.b		; 02 02
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
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
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $20.b		; 00 20
	brk $39.b		; 00 39
	bra  20.b		; 80 14
	.db $82, $1B, $80		; 82 1B 80
	sta $E0E040.l,X		; 9F 40 E0 E0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$F0F0.w		; E0 F0 F0
	bvs 112.b		; 70 70
	adc $7F79.w,Y		; 79 79 7F
	adc $DC3F3F.l,X		; 7F 3F 3F DC
	jsl $140254.l		; 22 54 02 14
	ora $96.b,S		; 03 96
	ora ($53.b,X)		; 01 53
	php		; 08
	and #$04.b		; 29 04
	bit $3402.w		; 2C 02 34
	cop $80.b		; 02 80
	sta $C0FFC0.l		; 8F C0 FF C0
	sbc $007F40.l,X		; FF 40 7F 00
	and $007F00.l,X		; 3F 00 7F 00
	adc $807F00.l,X		; 7F 00 7F 80
	.db $62, $E0, $18		; 62 E0 18
	sei		; 78
	brk $30.b		; 00 30
	bra   0.b		; 80 00
	cpy #$4080.w		; C0 80 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bmi  -8.b		; 30 F8
	bvs  -8.b		; 70 F8
	bvs  -8.b		; 70 F8
	bvs  -8.b		; 70 F8
	bvs  -8.b		; 70 F8
	bmi 120.b		; 30 78
	bmi 120.b		; 30 78
	bmi 120.b		; 30 78
	sei		; 78
	brk $78.b		; 00 78
	php		; 08
	sei		; 78
	php		; 08
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	sei		; 78
	php		; 08
	sei		; 78
	pha		; 48
	ora $3C1D3C.l,X		; 1F 3C 1D 3C
	trb $1C3C.w		; 1C 3C 1C
	bit $1C1C.w,X		; 3C 1C 1C
	trb $0C1C.w		; 1C 1C 0C
	trb $1E0C.w		; 1C 0C 1E
	trb $1C00.w		; 1C 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	bpl  12.b		; 10 0C
	ora $181E0C.l		; 0F 0C 1E 18
	rol $3C18.w,X		; 3E 18 3C
	bmi 124.b		; 30 7C
	bmi 120.b		; 30 78
	rts		; 60

	sed		; F8
	rts		; 60

	beq  14.b		; F0 0E
	brk $1E.b		; 00 1E
	ora ($1C.b)		; 12 1C
	brk $3C.b		; 00 3C
	bit $38.b		; 24 38
	brk $78.b		; 00 78
	pha		; 48
	bvs   0.b		; 70 00
	beq -112.b		; F0 90
	ora [$10.b]		; 07 10
	tsb $13.b		; 04 13
	ora $37.b,S		; 03 37
	phd		; 0B
	and [$0F.b],Y		; 37 0F
	adc [$2F.b],Y		; 77 2F
	adc [$2B.b],Y		; 77 2B
	adc [$29.b],Y		; 77 29
	sbc ($00.b,S),Y		; F3 00
	ora $101F10.l		; 0F 10 1F 10
	ora $312731.l		; 0F 31 27 31
	ora [$71.b]		; 07 71
	eor [$71.b]		; 47 71
	ora [$70.b],Y		; 17 70
	ora [$7D.b],Y		; 17 7D
	inc $7FBE.w,X		; FE BE 7F
	sbc $FAFEFF.l		; EF FF FE FA
	sed		; F8
	sbc $FEF9.w,X		; FD F9 FE
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	beq  -8.b		; F0 F8
	sec		; 38
	sbc $0EFF3C.l,X		; FF 3C FF 0E
	sbc $F8FFF0.l,X		; FF F0 FF F8
	inc $FDF1.w,X		; FE F1 FD
	sta $FF.b,S		; 83 FF
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	sta $018000.l,X		; 9F 00 80 01
	brk $02.b		; 00 02
	ora ($44.b,X)		; 01 44
	sta $48.b,S		; 83 48
	ora [$50.b]		; 07 50
	cmp $401E20.l		; CF 20 1E 40
	jsr $20E0.w		; 20 E0 20
	cpx #$01.b		; E0 01
	cpy #$03.b		; C0 03
	bra -121.b		; 80 87
	bra -113.b		; 80 8F
	bra  31.b		; 80 1F
	brk $3F.b		; 00 3F
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	tsb $0C.b		; 04 0C
	cop $0E.b		; 02 0E
	cop $07.b		; 02 07
	cop $07.b		; 02 07
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	bpl  16.b		; 10 10
	php		; 08
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	clc		; 18
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	php		; 08
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$F8.b		; E0 F8
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8B.b		; 00 8B
	rti		; 40

	cpy $20.b		; C4 20
	cli		; 58
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $183C.w,X		; 3C 3C 18
	clc		; 18
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
	brk $80.b		; 00 80
	ora $3F3F3F.l,X		; 1F 3F 3F 3F
	and $1D3F3F.l,X		; 3F 3F 3F 1D
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$FF.b		; E0 FF
	cmp $FFDFFF.l,X		; DF FF DF FF
	dec $00FF.w,X		; DE FF 00
	and $0000E0.l,X		; 3F E0 00 00
	beq  32.b		; F0 20
	bmi -16.b		; 30 F0
	clc		; 18
	cpx #$08.b		; E0 08
	inx		; E8
	php		; 08
	pla		; 68
	php		; 08
	sei		; 78
	tya		; 98
	brk $00.b		; 00 00
	cpx #$E0.b		; E0 E0
	bne  16.b		; D0 10
	cpx #$00.b		; E0 00
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	beq   8.b		; F0 08
	beq -104.b		; F0 98
	brk $00.b		; 00 00
	ora ($EC.b)		; 12 EC
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $CF.b,S		; A3 CF
	ora [$00.b]		; 07 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l		; EF FF FF FF
	ora $FF.b,S		; 03 FF
	brk $07.b		; 00 07
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bpl  48.b		; 10 30
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	tsb $1C.b		; 04 1C
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	asl $0E.b		; 06 0E
	bmi  16.b		; 30 10
	bmi  32.b		; 30 20
	bpl   0.b		; 10 00
	clc		; 18
	php		; 08
	tsb $0C00.w		; 0C 00 0C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $10.b		; 00 10
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	clc		; 18
	tsb $1C.b		; 04 1C
	asl $0E.b		; 06 0E
	asl $0E.b		; 06 0E
	asl $0E.b		; 06 0E
	asl $0E.b		; 06 0E
	bmi  32.b		; 30 20
	bpl   0.b		; 10 00
	clc		; 18
	bpl  12.b		; 10 0C
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $03.b		; 00 03
	ora [$03.b]		; 07 03
	ora [$03.b]		; 07 03
	ora [$03.b]		; 07 03
	ora [$03.b]		; 07 03
	ora [$03.b]		; 07 03
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $07.b,S		; 03 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	tsb $07.b		; 04 07
	tsb $03.b		; 04 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	cop $0C.b		; 02 0C
	stz $9C0C.w		; 9C 0C 9C
	tsb $8E.b		; 04 8E
	tsb $8E.b		; 04 8E
	tsb $8E.b		; 04 8E
	.db $82, $8E, $82		; 82 8E 82
	sta [$80.b]		; 87 80
	cmp [$0C.b]		; C7 0C
	brk $0C.b		; 00 0C
	brk $8C.b		; 00 8C
	bra -114.b		; 80 8E
	cop $8E.b		; 02 8E
	php		; 08
	stx $00.b		; 86 00
	stx $04.b		; 86 04
	sta $01.b,S		; 83 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	rti		; 40

	sed		; F8
	rti		; 40

	sed		; F8
	cpy #$F8.b		; C0 F8
	bra  -8.b		; 80 F8
	bra  -8.b		; 80 F8
	dey		; 88
	sed		; F8
	dey		; 88
	sed		; F8
	tya		; 98
	sed		; F8
	inx		; E8
	plp		; 28
	inx		; E8
	plp		; 28
	cld		; D8
	clc		; 18
	cld		; D8
	bpl  -8.b		; 10 F8
	rts		; 60

	sed		; F8
	rts		; 60

	sed		; F8
	rti		; 40

	sed		; F8
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora ($1F.b,X)		; 01 1F
	ora $0C0F.w,Y		; 19 0F 0C
	eor $00.b,S		; 43 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $3B.b		; 00 3B
	sec		; 38
	and $003C.w,X		; 3D 3C 00
	brk $00.b		; 00 00
	bit $FE38.w,X		; 3C 38 FE
	jmp ($E2FF.w)		; 6C FF E2
	sbc $90FFB0.l,X		; FF B0 FF 90
	sbc $00FB82.l,X		; FF 82 FB 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	php		; 08
	inc $F624.w		; EE 24 F6
	ldy #$FA.b		; A0 FA
	bcc -72.b		; 90 B8
	bra -48.b		; 80 D0
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $07.b,S		; 03 07
	ora $38.b		; 05 38
	sei		; 78
	bvs 120.b		; 70 78
	sei		; 78
	beq -16.b		; F0 F0
	beq -32.b		; F0 E0
	beq 112.b		; F0 70
	rts		; 60

	bra  32.b		; 80 20
	dey		; 88
	ora [$30.b]		; 07 30
	jmp ($FC30.w,X)		; 7C 30 FC
	bvs  -8.b		; 70 F8
	rts		; 60

	sed		; F8
	cpx #$F8.b		; E0 F8
	cpy #$F0.b		; C0 F0
	cpy #$F0.b		; C0 F0
	cpy #$F0.b		; C0 F0
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($05.b,X)		; 01 05
	ora ($05.b,X)		; 01 05
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	ora ($04.b,X)		; 01 04
	brk $08.b		; 00 08
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	eor $0F00A0.l,X		; 5F A0 00 0F
	jsr ($FBFF.w,X)		; FC FF FB
	sbc $5FFFE7.l,X		; FF E7 FF 5F
	lda $BF7FFF.l,X		; BF FF 7F BF
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $7AFF00.l,X		; FF 00 FF 7A
	sbc $1FFF67.l,X		; FF 67 FF 1F
	sbc $0FFF1F.l,X		; FF 1F FF 0F
	sbc $5D633A.l,X		; FF 3A 63 5D
	and ($CE.b),Y		; 31 CE
	clc		; 18
	lda $0C.b,S		; A3 0C
	and ($83.b,X)		; 21 83
	dey		; 88
	bne -48.b		; D0 D0
	lda $E1.b,S		; A3 E1
	lsr $9D.b		; 46 9D
	sta ($8E.b,X)		; 81 8E
	bra   7.b		; 80 07
	brk $47.b		; 00 47
	cpy $42.b		; C4 42
	dec $FF00.w,X		; DE 00 FF
	brk $FF.b		; 00 FF
	rti		; 40

	sbc $008000.l,X		; FF 00 80 00
	cpy #$80.b		; C0 80
	cpy #$40.b		; C0 40
	rts		; 60

	brk $20.b		; 00 20
	cpx #$F0.b		; E0 F0
	brk $70.b		; 00 70
	bra  48.b		; 80 30
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	cpx #$20.b		; E0 20
	brk $00.b		; 00 00
	rts		; 60

	cpx #$30.b		; E0 30
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	bit $18.b		; 24 18
	jsl $04310C.l		; 22 0C 31 04
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	trb $0E1C.w		; 1C 1C 0E
	asl $0F0F.w		; 0E 0F 0F
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
	asl $0E.b		; 06 0E
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0600.w		; 0E 00 06
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $0800.w		; 0C 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0800.w		; 0C 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	cmp $80.b,S		; C3 80
	cmp $80.b,S		; C3 80
	cmp ($80.b,X)		; C1 80
	cmp ($00.b,X)		; C1 00
	cpx #$40.b		; E0 40
	cpx #$00.b		; E0 00
	cpx #$20.b		; E0 20
	bvs -125.b		; 70 83
	cop $C1.b		; 02 C1
	rti		; 40

	cmp ($01.b,X)		; C1 01
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$A0.b		; E0 A0
	rts		; 60

	brk $60.b		; 00 60
	rti		; 40

	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	tya		; 98
	sed		; F8
	tya		; 98
	sed		; F8
	tya		; 98
	sed		; F8
	tya		; 98
	sed		; F8
	clc		; 18
	ldy $BC18.w,X		; BC 18 BC
	clc		; 18
	ldy $9C0C.w,X		; BC 0C 9C
	clv		; B8
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	jsr $049C.w		; 20 9C 04
	stz $1C80.w		; 9C 80 1C
	bpl  32.b		; 10 20
	adc $1C.b,S		; 63 1C
	adc $037F01.l,X		; 7F 01 7F 03
	and $043F03.l,X		; 3F 03 3F 04
	tsa		; 3B
	ora ($3E.b,X)		; 01 3E
	bpl  56.b		; 10 38
	and $3D1C.w,X		; 3D 1C 3D
	brk $1B.b		; 00 1B
	ora ($03.b,X)		; 01 03
	cop $17.b		; 02 17
	bpl  19.b		; 10 13
	bpl  48.b		; 10 30
	jsr $2030.w		; 20 30 20
	cmp $F4.b,S		; C3 F4
	cmp #$FC.b		; C9 FC
	stz $3DE6.w,X		; 9E E6 3D
	sbc ($0D.b),Y		; F1 0D
	sbc $FBEB.w,X		; FD EB FB
	tas		; 1B
	sep #$C2		; E2 C2
	ora $E3.b,S		; 03 E3
	sty $8EE9.w		; 8C E9 8E
	dec $8D07.w,X		; DE 07 8D
	ora $C1.b,S		; 03 C1
	ora $E3.b,S		; 03 E3
	ora [$E2.b]		; 07 E2
	ora [$00.b]		; 07 00
	ora $8F8887.l,X		; 1F 87 88 8F
	bne  29.b		; D0 1D
	and ($3A.b,X)		; 21 3A
	eor $74.b,S		; 43 74
	eor [$68.b]		; 47 68
	lsr $9C90.w		; 4E 90 9C
	stx $40.b		; 86 40
	ora $101F08.l		; 0F 08 1F 10
	rol $7DE0.w,X		; 3E E0 7D
	cmp ($3A.b,X)		; C1 3A
	.db $82, $35, $85		; 82 35 85
	plp		; 28
	wai		; CB
	brk $FF.b		; 00 FF
	ora $C6174C.l,X		; 1F 4C 17 C6
	tda		; 7B
	sta $61.b,S		; 83 61
	sta $50.b,S		; 83 50
	ora $1E51.w,X		; 1D 51 1E
	pla		; 68
	ora $834734.l		; 0F 34 47 83
	lda $BFA79F.l		; AF 9F A7 BF
	sta $7F.b,S		; 83 7F
	ora $EB.b,S		; 03 EB
	bit #$E8.b		; 89 E8
	dey		; 88
	pea $BA84.w		; F4 84 BA
	.db $82, $00, $10		; 82 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $19.b		; 00 19
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $1E2F3F.l,X		; 5F 3F 2F 1E
	ora ($0D.b,S),Y		; 13 0D
	asl $0F01.w		; 0E 01 0F
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $1C.b		; 00 1C
	brk $06.b		; 00 06
	sbc $01FF00.l,X		; FF 00 FF 01
	adc $0C3100.l,X		; 7F 00 31 0C
	trb $1F0F.w		; 1C 0F 1F
	ora $03031F.l		; 0F 1F 03 03
	cmp $4C.b,S		; C3 4C
	dec $80C0.w,X		; DE C0 80
	sta ($70.b,X)		; 81 70
	ora $F0000F.l		; 0F 0F 00 F0
	brk $66.b		; 00 66
	ora ($65.b,X)		; 01 65
	brk $40.b		; 00 40
	sbc $00FF80.l,X		; FF 80 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $B80F00.l,X		; FF 00 0F B8
	tyx		; BB
	clv		; B8
	tyx		; BB
	bra  24.b		; 80 18
	brk $68.b		; 00 68
	bmi -64.b		; 30 C0
	sed		; F8
	brk $C0.b		; 00 C0
	brk $04.b		; 00 04
	sec		; 38
	trb $C0E0.w		; 1C E0 C0
	brk $10.b		; 00 10
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	asl $38.b		; 06 38
	sep #$08		; E2 08
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	cpy #$39.b		; C0 39
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	cmp [$C7.b]		; C7 C7
	sbc [$F7.b],Y		; F7 F7
	sbc $0F0FFF.l,X		; FF FF 0F 0F
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bra  64.b		; 80 40
	brk $00.b		; 00 00
	rti		; 40

	brk $40.b		; 00 40
	rti		; 40

	bra -128.b		; 80 80
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
	brk $00.b		; 00 00
	rts		; 60

	cpx #$08.b		; E0 08
	sei		; 78
	ora $8F.b,S		; 03 8F
	bra -63.b		; 80 C1
	cpy #$80.b		; C0 80
	ror $BF40.w,X		; 7E 40 BF
	adc $808080.l,X		; 7F 80 80 80
	beq -16.b		; F0 F0
	jsr ($FFFC.w,X)		; FC FC FF
	sbc $01FF3F.l,X		; FF 3F FF 01
	adc ($00.b,X)		; 61 00
	bmi   0.b		; 30 00
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
	brk $10.b		; 00 10
	sec		; 38
	bpl 120.b		; 10 78
	bpl 120.b		; 10 78
	bpl 120.b		; 10 78
	jsr $20F8.w		; 20 F8 20
	sed		; F8
	jsr $40F8.w		; 20 F8 40
	sed		; F8
	bmi  32.b		; 30 20
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bvs  64.b		; 70 40
	bvs   0.b		; 70 00
	bvs  16.b		; 70 10
	beq -112.b		; F0 90
	inx		; E8
	php		; 08
	tas		; 1B
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb $0F0F.w		; 0C 0F 0F
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx $00.b		; E4 00
	adc $00C900.l,X		; 7F 00 C9 00
	dec $7100.w		; CE 00 71
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	tsa		; 3B
	bra -125.b		; 80 83
	bvs 119.b		; 70 77
	bvs 119.b		; 70 77
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $F800.w,X		; 3C 00 F8
	tsb $00.b		; 04 00
	sed		; F8
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	rti		; 40

	cpy #$00.b		; C0 00
	cpy #$20.b		; C0 20
	rts		; 60

	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	rti		; 40

	brk $60.b		; 00 60
	rti		; 40

	jsr $0000.w		; 20 00 00
	brk $14.b		; 00 14
	trb $2C.b		; 14 2C
	bit $3C3C.w		; 2C 3C 3C
	trb $381C.w		; 1C 1C 38
	trb $3418.w		; 1C 18 34
	bit $0038.w,X		; 3C 38 00
	brk $14.b		; 00 14
	asl $3C28.w,X		; 1E 28 3C
	sec		; 38
	rol $3E18.w,X		; 3E 18 3E
	clc		; 18
	rol $3E00.w,X		; 3E 00 3E
	bpl 124.b		; 10 7C
	asl $0D21.w		; 0E 21 0D
	.db $62, $07, $71		; 62 07 71
	ora ($61.b)		; 12 61
	ora [$E8.b]		; 07 E8
	and #$FF.b		; 29 FF
	and $1FFF.w		; 2D FF 1F
	adc $19011F.l,X		; 7F 1F 01 19
	cop $09.b		; 02 09
	ora $08.b		; 05 08
	ora $38.b		; 05 38
	php		; 08
	tda		; 7B
	bpl 127.b		; 10 7F
	mvn $2C,$3F		; 54 3F 2C
	bpl -40.b		; 10 D8
	rti		; 40

	adc ($00.b,X)		; 61 00
	sed		; F8
	ldy #$5F.b		; A0 5F
	cpy #$FF.b		; C0 FF
	bra -17.b		; 80 EF
	sty $C7.b,X		; 94 C7
	sty $D7.b,X		; 94 D7
	bra -65.b		; 80 BF
	bra  31.b		; 80 1F
	rts		; 60

	and [$7C.b]		; 27 7C
	clc		; 18
	jsr ($DE04.w,X)		; FC 04 DE
	ora ($FE.b)		; 12 FE
	clv		; B8
	ldx $00B8.w,Y		; BE B8 00
	rts		; 60

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $3F03FF.l,X		; FF FF 03 3F
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	inc $FF02.w,X		; FE 02 FF
	brk $1F.b		; 00 1F
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	beq  -8.b		; F0 F8
	sbc $00FF0E.l,X		; FF 0E FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	jsr $02FE.w		; 20 FE 02
	adc $FF1840.l,X		; 7F 40 18 FF
	tsb $067F.w		; 0C 7F 06
	and $031F07.l,X		; 3F 07 1F 03
	ora $010F03.l		; 0F 03 0F 01
	ora [$01.b]		; 07 01
	ora [$7E.b]		; 07 7E
	.db $42, $3F		; 42 3F
	and ($1F.b,X)		; 21 1F
	bpl  15.b		; 10 0F
	php		; 08
	ora $040708.l		; 0F 08 07 04
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	php		; 08
	asl $9E04.w,X		; 1E 04 9E
	tsb $8F.b		; 04 8F
	tsb $CF.b		; 04 CF
	stx $CF.b		; 86 CF
	stx $E7.b		; 86 E7
	dec $E7.b		; C6 E7
	cmp [$E7.b]		; C7 E7
	trb $0E10.w		; 1C 10 0E
	cop $8E.b		; 02 8E
	bra -113.b		; 80 8F
	ora #$C7.b		; 09 C7
	eor ($C7.b,X)		; 41 C7
	brk $E7.b		; 00 E7
	jsr $00E7.w		; 20 E7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $04.b,S		; 03 04
	ora ($06.b,X)		; 01 06
	clc		; 18
	ora $3C.b,S		; 03 3C
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $001F00.l		; 0F 00 1F 00
	and $007F00.l,X		; 3F 00 7F 00
	brk $50.b		; 00 50
	brk $58.b		; 00 58
	bra  40.b		; 80 28
	cpy #$08.b		; C0 08
	rts		; 60

	sty $30.b		; 84 30
.INDEX 16
	rep #$10		; C2 10
	eor ($90.b,X)		; 41 90
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	tsb $FC.b		; 04 FC
	asl $FE.b		; 06 FE
	lda [$17.b]		; A7 17
	asl $002E.w		; 0E 2E 00
	cmp ($69.b,X)		; C1 69
	sta $13.b,S		; 83 13
	cmp $0FD723.l		; CF 23 D7 0F
	wai		; CB
	trb $869F.w		; 1C 9F 86
	adc $8C7F8C.l,X		; 7F 8C 7F 8C
	lda $B01F18.l,X		; BF 18 1F B0
	lda [$A3.b],Y		; B7 A3
	lda $4C3F01.l		; AF 01 3F 4C
	adc $6A0816.l,X		; 7F 16 08 6A
	cpx $F4.b		; E4 F4
	beq  -8.b		; F0 F8
	sed		; F8
	jsr ($F8FC.w,X)		; FC FC F8
	jsr ($F8F8.w,X)		; FC F8 F8
	sed		; F8
	sed		; F8
	tsb $E4.b		; 04 E4
	brk $F0.b		; 00 F0
	bvs  -8.b		; 70 F8
	beq  -4.b		; F0 FC
	beq  -4.b		; F0 FC
	bmi  -4.b		; 30 FC
	beq  -4.b		; F0 FC
	brk $FC.b		; 00 FC
	tsb $0C01.w		; 0C 01 0C
	ora ($04.b),Y		; 11 04
	bpl   6.b		; 10 06
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	php		; 08
	ora $08.b,S		; 03 08
	ora $00.b,S		; 03 00
	asl $0E1E.w,X		; 1E 1E 0E
	asl $0F0F.w		; 0E 0F 0F
	ora $0F0F0F.l		; 0F 0F 0F 0F
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	bvs -128.b		; 70 80
	bvs -128.b		; 70 80
	sec		; 38
	cmp ($38.b,X)		; C1 38
	cmp $19.b,S		; C3 19
	adc [$12.b]		; 67 12
	ror $6C51.w		; 6E 51 6C
	sbc [$DC.b]		; E7 DC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	.db $82, $82, $85		; 82 82 85
	ldy $87.b		; A4 87
	cpx $8B.b		; E4 8B
	iny		; C8
	brk $C0.b		; 00 C0
	bra -16.b		; 80 F0
	rti		; 40

	sed		; F8
	jsr $107C.w		; 20 7C 10
	rol $1E08.w,X		; 3E 08 1E
	tsb $0F.b		; 04 0F
	cop $87.b		; 02 87
	bra -128.b		; 80 80
	cpx #$F020.w		; E0 20 F0
	bpl 120.b		; 10 78
	pha		; 48
	bit $1E24.w,X		; 3C 24 1E
	ora ($0E.b)		; 12 0E
	php		; 08
	ora [$01.b]		; 07 01
	tsb $0F.b		; 04 0F
	brk $1E.b		; 00 1E
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	brk $E1.b		; 00 E1
	brk $0F.b		; 00 0F
	clc		; 18
	asl $FCF0.w,X		; 1E F0 FC
	asl $1C0A.w		; 0E 0A 1C
	trb $38.b		; 14 38
	plp		; 28
	bvs  80.b		; 70 50
	cpy #$0FC0.w		; C0 C0 0F
	brk $1E.b		; 00 1E
	brk $FC.b		; 00 FC
	brk $10.b		; 00 10
	sec		; 38
	jsr $0078.w		; 20 78 00
	bvs   0.b		; 70 00
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	plp		; 28
	bmi  16.b		; 30 10
	rts		; 60

	jsr $4040.w		; 20 40 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	rol $3822.w,X		; 3E 22 38
	rol $3F3F.w,X		; 3E 3F 3F
	ora $06091F.l,X		; 1F 1F 09 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  56.b		; 10 38
	jsr $387E.w		; 20 7E 38
	adc $1C7F3F.l,X		; 7F 3F 7F 1C
	and $001F00.l,X		; 3F 00 1F 00
	brk $05.b		; 00 05
	and $001F00.l,X		; 3F 00 1F 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	bpl   7.b		; 10 07
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A8.b		; 00 A8
	sbc $00FF11.l		; EF 11 FF 00
	cmp $0100.w,X		; DD 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldx $DD12.w,Y		; BE 12 DD
	mvp $00,$00		; 44 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	beq  -2.b		; F0 FE
	asl $017F.w		; 0E 7F 01
	ora $000300.l		; 0F 00 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $FC.b		; 00 FC
	tsb $3F.b		; 04 3F
	jsr $0407.w		; 20 07 04
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($1F.b,X)		; 01 1F
	brk $03.b		; 00 03
	brk $C0.b		; 00 C0
	bra -16.b		; 80 F0
	rts		; 60

	jsr ($FF18.w,X)		; FC 18 FF
	tsb $067F.w		; 0C 7F 06
	and $01080F.l,X		; 3F 0F 08 01
	ora ($80.b,X)		; 01 80
	bra -32.b		; 80 E0
	jsr $08F8.w		; 20 F8 08
	ror $3F42.w,X		; 7E 42 3F
	and ($1F.b,X)		; 21 1F
	bpl   0.b		; 10 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $02.b,S		; 03 02
	ora [$02.b]		; 07 02
	ora [$03.b]		; 07 03
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	tsb $07.b		; 04 07
	ora ($C7.b,X)		; 01 C7
	sbc [$C6.b]		; E7 C6
	sbc $84EFC6.l		; EF C6 EF 84
	cmp $08DE8C.l		; CF 8C DE 08
	dec $9C08.w,X		; DE 08 9C
	bpl -68.b		; 10 BC
	sbc [$00.b]		; E7 00
	sbc [$00.b]		; E7 00
	sbc $00CE29.l		; EF 29 CE 00
	dec $9C42.w		; CE 42 9C
	bpl -100.b		; 10 9C
	sty $18.b		; 84 18
	brk $06.b		; 00 06
	sec		; 38
	ora $8C.b,S		; 03 8C
	adc ($00.b,S),Y		; 73 00
	adc $4200.w,X		; 7D 00 42
	bit $6007.w,X		; 3C 07 60
	clc		; 18
	asl $71.b		; 06 71
	ora #$00.b		; 09 00
	adc $007F00.l,X		; 7F 00 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $65FF01.l,X		; FF 01 FF 65
	bra  39.b		; 80 27
	cpy #$500B.w		; C0 0B 50
	ora $48.b		; 05 48
	cop $04.b		; 02 04
	asl A		; 0A
	brk $EE.b		; 00 EE
	brk $AE.b		; 00 AE
	bne  14.b		; D0 0E
	inc $FE0E.w,X		; FE 0E FE
	asl $E6.b		; 06 E6
	ora ($F2.b)		; 12 F2
	clc		; 18
	sed		; F8
	trb $1CFC.w		; 1C FC 1C
	trb $CC0C.w		; 1C 0C CC
	and $0F371F.l		; 2F 1F 37 0F
	cop $81.b		; 02 81
	brk $F6.b		; 00 F6
	phk		; 4B
	tda		; 7B
	plb		; AB
	tsa		; 3B
	wai		; CB
	tas		; 1B
	ora $9B.b,S		; 03 9B
	sta [$FF.b]		; 87 FF
	sta ($FF.b,X)		; 81 FF
	brk $7F.b		; 00 7F
	cpy #$A0DF.w		; C0 DF A0
	and $FB1FDB.l		; 2F DB 1F FB
	ora $309FF0.l,X		; 1F F0 9F 30
	cpy #$FCF8.w		; C0 F8 FC
	sed		; F8
	jsr ($F978.w,X)		; FC 78 F9
	bmi 120.b		; 30 78
	jsr $0070.w		; 20 70 00
	adc ($00.b,X)		; 61 00
	lsr $00.b		; 46 00
	jsr ($FEF8.w,X)		; FC F8 FE
	sei		; 78
	inc $FF30.w,X		; FE 30 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora $05.b,S		; 03 05
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora ($02.b,X)		; 01 02
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	ora $03.b,S		; 03 03
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	cmp $B0DFF8.l		; CF F8 DF B0
	inc $DC20.w,X		; FE 20 DC
	ora ($F8.b,X)		; 01 F8
	ora $F0.b,S		; 03 F0
	ora [$E0.b]		; 07 E0
	ora $B79F80.l		; 0F 80 9F B7
	bcs 111.b		; B0 6F
	jsr $00DF.w		; 20 DF 00
	sbc $02FE01.l,X		; FF 01 FE 02
	sbc $FB05.w,X		; FD 05 FB
	phd		; 0B
	ror $16.b,X		; 76 16
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	ora $00.b,S		; 03 00
	tsb $00.b		; 04 00
	inc A		; 1A
	brk $02.b		; 00 02
	jsr $4019.w		; 20 19 40
	and ($82.b),Y		; 31 82
	ora ($8E.b,X)		; 01 8E
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	adc $717D.w,X		; 7D 7D 71
	adc ($01.b),Y		; 71 01
	ora ($C0.b,X)		; 01 C0
	brk $78.b		; 00 78
	bra  56.b		; 80 38
	cpy #$C038.w		; C0 38 C0
	trb $1C60.w		; 1C 60 1C
	rts		; 60

	stx $8E30.w		; 8E 30 8E
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	cpy #$C0C0.w		; C0 C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	sei		; 78
	ror $0000.w,X		; 7E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $007E00.l		; 0F 00 7E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$0F.b],Y		; 17 0F
	lda $FFFF7F.l,X		; BF 7F FF FF
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	ora $FFFFFF.l		; 0F FF FF FF
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	tsb $9DFF.w		; 0C FF 9D
	sta ($9F.b,X)		; 81 9F
	bra -107.b		; 80 95
	sty $1E22.w		; 8C 22 1E
	brk $0F.b		; 00 0F
	cpy #$00C0.w		; C0 C0 00
	brk $03.b		; 00 03
	sta $7E.b,S		; 83 7E
	beq 127.b		; F0 7F
	beq 123.b		; F0 7B
	sed		; F8
	sbc $E4.b		; E5 E4
	ora ($01.b,X)		; 01 01
	ora ($A4.b,X)		; 01 A4
	and [$00.b]		; 27 00
	and $3C07.w,Y		; 39 07 3C
	ora $19.b,S		; 03 19
	ora [$1C.b]		; 07 1C
	ora $0E.b,S		; 03 0E
	ora ($03.b,X)		; 01 03
	ora [$00.b]		; 07 00
	cop $00.b		; 02 00
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	jsr $2003.w		; 20 03 20
	brk $10.b		; 00 10
	ora ($0F.b,X)		; 01 0F
	eor $BE.b,X		; 55 BE
	lda $FC7E.w,X		; BD 7E FC
	sbc $E4FEF8.l,X		; FF F8 FE E4
	sed		; F8
	bpl -32.b		; 10 E0
	brk $80.b		; 00 80
	cpy #$3DC0.w		; C0 C0 3D
	sta ($7D.b,X)		; 81 7D
	ora ($FE.b),Y		; 11 FE
	sec		; 38
	inc $F070.w,X		; FE 70 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	rti		; 40

	bra -64.b		; 80 C0
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	cpy #$2001.w		; C0 01 20
	cmp ($D0.b,X)		; C1 D0
	sbc ($03.b,X)		; E1 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	.db $82, $01, $C0		; 82 01 C0
	ora ($E0.b,X)		; 01 E0
	ora ($F1.b,X)		; 01 F1
	ora ($FD.b,X)		; 01 FD
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	cpy #$C0E0.w		; C0 E0 C0
	cpx #$E040.w		; E0 40 E0
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C040.w		; C0 40 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $00E0.w		; 20 E0 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cpy #$E73C.w		; C0 3C E7
	brk $80.b		; 00 80
	brk $03.b		; 00 03
	jmp ($8060.w,X)		; 7C 60 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	sbc $FFFFFF.l,X		; FF FF FF FF
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $001F00.l		; 0F 00 1F 00
	sbc $00C000.l,X		; FF 00 C0 00
	brk $07.b		; 00 07
	beq  15.b		; F0 0F
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F8F8FF.l,X		; FF FF F8 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra  -4.b		; 80 FC
	stz $D0FF.w		; 9C FF D0
	beq 111.b		; F0 6F
	sed		; F8
	adc [$8C.b],Y		; 77 8C
	sbc ($0E.b)		; F2 0E
	and #$17.b		; 29 17
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	.db $82, $82, $0F		; 82 82 0F
	cpy #$7017.w		; C0 17 70
	phd		; 0B
	pla		; 68
	ora $060C.w		; 0D 0C 06
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $86.b,S		; 83 86
	inc $00FF.w,X		; FE FF 00
	sbc $00FC00.l,X		; FF 00 FC 00
	cpx #$00FF.w		; E0 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $49.b		; 00 49
	pha		; 48
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $1C1C00.l,X		; FF 00 1C 1C
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	dec $F1.b		; C6 F1
	cpy #$2F00.w		; C0 00 2F
	jsr $EF80.w		; 20 80 EF
	brk $E0.b		; 00 E0
	dec $00E1.w		; CE E1 00
	brk $00.b		; 00 00
	ora $20.b,S		; 03 20
	and $C01FE0.l		; 2F E0 1F C0
	ora $007F60.l,X		; 1F 60 7F 00
	ora $763F20.l,X		; 1F 20 3F 76
	brk $13.b		; 00 13
	brk $3B.b		; 00 3B
	cpy #$002F.w		; C0 2F 00
	inc $00.b		; E6 00
	and [$C0.b]		; 27 C0
	rol $00.b		; 26 00
	asl $C0.b,X		; 16 C0
	tsb $0EEC.w		; 0C EC 0E
	inc $D616.w		; EE 16 D6
	inc A		; 1A
	phx		; DA
	ora $1CDD.w,X		; 1D DD 1C
	jmp.w [$DD1D]		; DC 1D DD
	ora $30ED.w		; 0D ED 30
	bit $7830.w,X		; 3C 30 78
	bmi 120.b		; 30 78
	bmi 120.b		; 30 78
	bmi 120.b		; 30 78
	bmi 120.b		; 30 78
	jsr $20F0.w		; 20 F0 20
	beq  56.b		; F0 38
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	rti		; 40

	sei		; 78
	php		; 08
	sei		; 78
	php		; 08
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	beq -112.b		; F0 90
	rts		; 60

	beq  96.b		; F0 60
	beq  96.b		; F0 60
	cpx #$E040.w		; E0 40 E0
	rti		; 40

	cpx #$E040.w		; E0 40 E0
	rti		; 40

	cpx #$E040.w		; E0 40 E0
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	cpy #$4D00.w		; C0 00 4D
	sta $66A6.w		; 8D A6 66
	cli		; 58
.ACCU 16
.INDEX 16
	rep #$BA		; C2 BA
	bra 121.b		; 80 79
	ora #$10FF.w		; 09 FF 10
	inc $29.b,X		; F6 29
	wai		; CB
	cpx $0D.b		; E4 0D
	sbc $388F14.l,X		; FF 14 8F 38
	ora [$78.b]		; 07 78
	ora [$F0.b]		; 07 F0
	asl $E7.b		; 06 E7
	brk $C4.b		; 00 C4
	ora ($00.b,X)		; 01 00
	cop $84.b		; 02 84
	sed		; F8
	brk $FE.b		; 00 FE
	bcc 127.b		; 90 7F
	tsb $86FF.w		; 0C FF 86
	sbc $645F66.l,X		; FF 66 5F 64
	eor $00FF95.l,X		; 5F 95 FF 00
	bra  48.b		; 80 30
	bra  60.b		; 80 3C
	bra -34.b		; 80 DE
	cpy #$606F.w		; C0 6F 60
	lda $14BE10.l,X		; BF 10 BE 14
	lda $0085.w,X		; BD 85 00
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	rti		; 40

	beq  32.b		; F0 20
	sei		; 78
	cpy #$C000.w		; C0 00 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	cpy #$8080.w		; C0 80 80
	cpx #$F000.w		; E0 00 F0
	bra  32.b		; 80 20
	sei		; 78
	jsr $0078.w		; 20 78 00
	bvs   0.b		; 70 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -96.b		; F0 A0
	beq -128.b		; F0 80
	cpx #$0080.w		; E0 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $C0.b		; 00 C0
	cpy #$E0E0.w		; C0 E0 E0
	pla		; 68
	cpx $5E16.w		; EC 16 5E
	asl $1C1E.w		; 0E 1E 1C
	asl $0C0C.w,X		; 1E 0C 0C
	brk $00.b		; 00 00
	cpy #$40E0.w		; C0 E0 40
	sed		; F8
	plp		; 28
	inc $FF16.w,X		; FE 16 FF
	tsb $187F.w		; 0C 7F 18
	and $001E08.l,X		; 3F 08 1E 00
	tsb $F1E4.w		; 0C E4 F1
	cpx $F1.b		; E4 F1
	jmp.w [$A8E0]		; DC E0 A8
	sbc ($68.b)		; F2 68
	sbc ($E0.b),Y		; F1 E0
	beq -58.b		; F0 C6
	inc $9B.b		; E6 9B
	stp		; DB
	rti		; 40

	inc $FEC0.w,X		; FE C0 FE
	bra  -1.b		; 80 FF
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	cpy #$80FF.w		; C0 FF 80
	sbc $40FF03.l,X		; FF 03 FF 40
	beq  64.b		; F0 40
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	clv		; B8
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	cpx #$F080.w		; E0 80 F0
	bcc 112.b		; 90 70
	brk $70.b		; 00 70
	cpy #$A030.w		; C0 30 A0
	bmi -32.b		; 30 E0
	bpl -48.b		; 10 D0
	bpl -48.b		; 10 D0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $01.b		; 06 01
	and ($08.b,S),Y		; 33 08
	bra  64.b		; 80 40
	cpy #$0001.w		; C0 01 00
	and $00E018.l,X		; 3F 18 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$3F.b]		; 07 3F
	and $C0FEFE.l,X		; 3F FE FE C0
	cpy #$0000.w		; C0 00 00
	ora $21CF01.l,X		; 1F 01 CF 21
	adc $00FF01.l,X		; 7F 01 FF 00
	brk $0F.b		; 00 0F
	ora $FC.b,S		; 03 FC
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	ora ($1F.b,X)		; 01 1F
	ora $FFFFFE.l,X		; 1F FE FF FF
	sbc $00F0F0.l,X		; FF F0 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cmp $2E.b,S		; C3 2E
	cpx #$F01F.w		; E0 1F F0
	sta [$F0.b]		; 87 F0
	ora $6C.b,X		; 15 6C
	cld		; D8
	and [$00.b]		; 27 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	brk $1F.b		; 00 1F
	brk $2F.b		; 00 2F
	ldy #$D01F.w		; A0 1F D0
	phb		; 8B
	inx		; E8
	ora ($31.b,X)		; 01 31
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	jmp $FF7C.w		; 4C 7C FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7C.b		; 00 7C
	jsr ($0700.w,X)		; FC 00 07
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	lda ($30.b,S),Y		; B3 30
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $808300.l,X		; FF 00 83 80
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	jsr $C12E.w		; 20 2E C1
	bpl  -9.b		; 10 F7
	bpl -24.b		; 10 E8
	phd		; 0B
	bpl  24.b		; 10 18
	sbc ($FC.b,X)		; E1 FC
	brk $7E.b		; 00 7E
	brk $00.b		; 00 00
	cpy #$F01F.w		; C0 1F F0
	ora $F00FE0.l,X		; 1F E0 0F F0
	ora [$E8.b]		; 07 E8
	ora $001F1C.l		; 0F 1C 1F 00
	ora ($00.b,X)		; 01 00
	brk $0F.b		; 00 0F
	brk $CC.b		; 00 CC
	bmi   7.b		; 30 07
	cpy #$0639.w		; C0 39 06
	cpy #$003C.w		; C0 3C 00
	beq   0.b		; F0 00
	cpy #$0000.w		; C0 00 00
	tsb $F4.b		; 04 F4
	brk $F3.b		; 00 F3
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	ora [$00.b]		; 07 00
	phd		; 0B
	tsb $13.b		; 04 13
	tsb $2814.w		; 0C 14 28
	ora ($62.b),Y		; 11 62
	cop $E4.b		; 02 E4
	php		; 08
	cpy #$8070.w		; C0 70 80
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	tsb $180C.w		; 0C 0C 18
	clc		; 18
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	bra -32.b		; 80 E0
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	bpl  56.b		; 10 38
	bpl  60.b		; 10 3C
	clc		; 18
	bit $00C0.w,X		; 3C C0 00
	rts		; 60

	jsr $2060.w		; 20 60 20
	bmi  16.b		; 30 10
	bmi   0.b		; 30 00
	sec		; 38
	php		; 08
	sec		; 38
	brk $3C.b		; 00 3C
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	jsr $3078.w		; 20 78 30
	sei		; 78
	bmi  56.b		; 30 38
	bmi  56.b		; 30 38
	bmi  60.b		; 30 3C
	bmi  60.b		; 30 3C
	bmi  60.b		; 30 3C
	bmi  60.b		; 30 3C
	sei		; 78
	rti		; 40

	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($06.b,X)		; 01 06
	ora ($06.b,X)		; 01 06
	php		; 08
	brk $1D.b		; 00 1D
	ora ($32.b,X)		; 01 32
	tsb $28.b		; 04 28
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	tsb $100C.w		; 0C 0C 10
	bpl   0.b		; 10 00
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $33.b		; 00 33
	php		; 08
	and ($1B.b)		; 32 1B
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	brk $0E.b		; 00 0E
	cpx #$E0E7.w		; E0 E7 E0
	sbc $B3FFF0.l		; EF F0 FF B3
	tas		; 1B
	lda [$37.b],Y		; B7 37
	adc [$6F.b]		; 67 6F
	ora $1F0F1F.l		; 0F 1F 0F 1F
	ora $0F070F.l		; 0F 0F 07 0F
	ora [$0F.b]		; 07 0F
	eor ($5F.b)		; 52 5F
	rol $FF.b,X		; 36 FF
	rol $FF.b		; 26 FF
	asl $FF.b		; 06 FF
	ora [$3F.b]		; 07 3F
	ora [$3F.b]		; 07 3F
	ora $1F.b,S		; 03 1F
	brk $1F.b		; 00 1F
	ora ($27.b,X)		; 01 27
	ora $2B.b,X		; 15 2B
	ora ($03.b),Y		; 11 03
	asl $11.b		; 06 11
	ora $0202.w		; 0D 02 02
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	asl $01.b		; 06 01
	ora $0C0101.l,X		; 1F 01 01 0C
	ora $0908.w		; 0D 08 09
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $1C.b		; 05 1C
	ora $3023.w,Y		; 19 23 30
	ora $20.b,S		; 03 20
	ora ($0E.b,X)		; 01 0E
	brk $17.b		; 00 17
	asl $1F0F.w		; 0E 0F 1F
	ora $00031F.l		; 0F 1F 03 00
	trb $3C1C.w		; 1C 1C 3C
	bit $3E30.w,X		; 3C 30 3E
	jsr $063F.w		; 20 3F 06
	and $063F06.l,X		; 3F 06 3F 06
	and $1F1F0F.l,X		; 3F 0F 1F 1F
	ora $070F0F.l		; 0F 0F 0F 07
	ora $07070F.l		; 0F 0F 07 07
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	asl $1F06.w		; 0E 06 1F
	asl $1F.b		; 06 1F
	asl $1F.b		; 06 1F
	asl $0F.b		; 06 0F
	asl $0F.b		; 06 0F
	cop $0F.b		; 02 0F
	cop $0F.b		; 02 0F
	cop $1F.b		; 02 1F
	ora $1E0F0E.l		; 0F 0E 0F 1E
	ora $0A001E.l		; 0F 1E 00 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1F.b		; 06 1F
	asl $3F.b		; 06 3F
	asl $3F.b		; 06 3F
	brk $1F.b		; 00 1F
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi 120.b		; 30 78
	bmi 124.b		; 30 7C
	bmi 124.b		; 30 7C
	clc		; 18
	bit $3C18.w,X		; 3C 18 3C
	clc		; 18
	bit $3C18.w,X		; 3C 18 3C
	trb $783E.w		; 1C 3E 78
	rti		; 40

	sei		; 78
	rti		; 40

	bit $3C04.w,X		; 3C 04 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	jsr $203C.w		; 20 3C 20
	trb $1000.w		; 1C 00 10
	bmi   0.b		; 30 00
	sec		; 38
	php		; 08
	clc		; 18
	brk $1C.b		; 00 1C
	tsb $0E.b		; 04 0E
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	cop $07.b		; 02 07
	bmi   0.b		; 30 00
	clc		; 18
	php		; 08
	clc		; 18
	bpl  12.b		; 10 0C
	tsb $0C.b		; 04 0C
	php		; 08
	asl $02.b		; 06 02
	asl $04.b		; 06 04
	ora [$05.b]		; 07 05
	clc		; 18
	bit $3C18.w,X		; 3C 18 3C
	clc		; 18
	bit $3C18.w,X		; 3C 18 3C
	tsb $0C1E.w		; 0C 1E 0C
	asl $1E0C.w,X		; 1E 0C 1E
	tsb $3C1E.w		; 0C 1E 3C
	tsb $3C.b		; 04 3C
	brk $3C.b		; 00 3C
	jsr $001C.w		; 20 1C 00
	trb $1E00.w		; 1C 00 1E
	cop $1E.b		; 02 1E
	bpl  14.b		; 10 0E
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$01.b]		; 07 01
	ora ($80.b,X)		; 01 80
	bra  64.b		; 80 40
	rti		; 40

	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	jsr $0030.w		; 20 30 00
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	jsr $0060.w		; 20 60 00
	bmi  16.b		; 30 10
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$60C0.w		; C0 C0 60
	rts		; 60

	bpl  48.b		; 10 30
	php		; 08
	clc		; 18
	tsb $0C.b		; 04 0C
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$6000.w		; C0 00 60
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	brk $06.b		; 00 06
	brk $20.b		; 00 20
	sei		; 78
	brk $38.b		; 00 38
	bpl  56.b		; 10 38
	bpl  60.b		; 10 3C
	brk $3C.b		; 00 3C
	php		; 08
	trb $1E08.w		; 1C 08 1E
	php		; 08
	asl $0030.w,X		; 1E 30 00
	sec		; 38
	php		; 08
	sec		; 38
	plp		; 28
	sec		; 38
	jsr $041C.w		; 20 1C 04
	trb $1C00.w		; 1C 00 1C
	brk $1E.b		; 00 1E
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $03.b,S		; 03 03
	ora [$C6.b]		; 07 C6
	ora $181F6C.l		; 0F 6C 1F 18
	ror $0000.w,X		; 7E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora $C0DE00.l		; 0F 00 DE C0
	ldy $0081.w,X		; BC 81 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $0CFF07.l,X		; FF 07 FF 0C
	sbc $16BF12.l,X		; FF 12 BF 16
	and $033C44.l,X		; 3F 44 3C 03
	brk $79.b		; 00 79
	adc $93F3.w,Y		; 79 F3 93
	sbc $019F28.l		; EF 28 9F 01
	trb $1804.w		; 1C 04 18
	php		; 08
	ora ($C0.b,S),Y		; 13 C0
	cmp ($E8.b,S),Y		; D3 E8
	ror $8658.w		; 6E 58 86
	bcc -57.b		; 90 C7
	cmp ($54.b),Y		; D1 54
	eor ($0E.b),Y		; 51 0E
	lda [$C4.b]		; A7 C4
	and $B2.b,S		; 23 B2
	ora #$F80F.w		; 09 0F F8
	ora [$E0.b]		; 07 E0
	sta $F0DEE0.l		; 8F E0 DE F0
	eor $D818E1.l		; 4F E1 18 D8
	asl $07DE.w,X		; 1E DE 07
	sbc [$B0.b],Y		; F7 B0
	iny		; C8
	bpl -56.b		; 10 C8
	php		; 08
	bra   8.b		; 80 08
	bcc  16.b		; 90 10
	jsr $4020.w		; 20 20 40
	rts		; 60

	ldy #$2080.w		; A0 80 20
	jsr $B038.w		; 20 38 B0
	clv		; B8
	bvs 120.b		; 70 78
	rts		; 60

	pla		; 68
	cpy #$80C0.w		; C0 C0 80
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	brk $07.b		; 00 07
	php		; 08
	tsb $0D10.w		; 0C 10 0D
	bpl  15.b		; 10 0F
	bpl  19.b		; 10 13
	php		; 08
	rol $3400.w,X		; 3E 00 34
	ora ($34.b,X)		; 01 34
	cop $00.b		; 02 00
	brk $03.b		; 00 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $07.b,S		; 03 07
	ora [$07.b]		; 07 07
	ora [$0E.b]		; 07 0E
	asl $0C0C.w		; 0E 0C 0C
	beq   0.b		; F0 00
	ora $1F0070.l		; 0F 70 00 1F
	bvs   0.b		; 70 00
	stz $80.b		; 64 80
	cpx $EC00.w		; EC 00 EC
	brk $38.b		; 00 38
	rep #$00		; C2 00
	ora ($80.b,X)		; 01 80
	bra -32.b		; 80 E0
	cpx #$8F8F.w		; E0 8F 8F
	ora $1F1F1F.l,X		; 1F 1F 1F 1F
	ora $1C1C1F.l,X		; 1F 1F 1C 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $02.b		; 00 02
	brk $05.b		; 00 05
	cop $01.b		; 02 01
	asl $01.b		; 06 01
	tsb $0003.w		; 0C 03 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $0F01.w		; 0E 01 0F
	ora ($0F.b,X)		; 01 0F
	ora ($1E.b,X)		; 01 1E
	jmp $183F.w		; 4C 3F 18
	adc $70FD30.l,X		; 7F 30 FD 70
	inc $F961.w,X		; FE 61 F9
	cpx #$E0F6.w		; E0 F6 E0
	xce		; FB
	nop		; EA
	sbc ($1E.b),Y		; F1 1E
	.db $82, $3C, $81		; 82 3C 81
	jmp ($F847.w,X)		; 7C 47 F8
	phb		; 8B
	beq   7.b		; F0 07
	beq  15.b		; F0 0F
	beq  31.b		; F0 1F
	beq  31.b		; F0 1F
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
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
	jmp ($64F5.w,X)		; 7C F5 64
	sbc $73.b,X		; F5 73
	sbc $72.b		; E5 72
	pea $71F9.w		; F4 F9 71
	inc $D47B.w,X		; FE 7B D4
	ror $7CD4.w,X		; 7E D4 7C
	.db $62, $F8, $63		; 62 F8 63
	sbc $FC06.w,Y		; F9 06 FC
	ora $F8.b,S		; 03 F8
	.db $62, $FC, $71		; 62 FC 71
	sbc $FE52.w,X		; FD 52 FE
	bvc  -4.b		; 50 FC
	brk $B0.b		; 00 B0
	rti		; 40

	bvc  64.b		; 50 40
	bpl   0.b		; 10 00
	clv		; B8
	clc		; 18
	jsr ($FEEC.w,X)		; FC EC FE
	stx $FE.b		; 86 FE
	adc ($FF.b)		; 72 FF
	cpx #$F040.w		; E0 40 F0
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	rts		; 60

	sed		; F8
	cpy #$04FC.w		; C0 FC 04
	inc $FE1A.w,X		; FE 1A FE
	bit $01.b		; 24 01
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	ora $1C.b,S		; 03 1C
	ora $2C.b,S		; 03 2C
	ora $49.b,S		; 03 49
	ora [$43.b]		; 07 43
	ora $001F46.l		; 0F 46 1F 00
	brk $01.b		; 00 01
	ora ($04.b,X)		; 01 04
	tsb $0C.b		; 04 0C
	tsb $1C1D.w		; 0C 1D 1C
	tsa		; 3B
	sec		; 38
	and [$30.b],Y		; 37 30
	and $FF3821.l		; 2F 21 38 FF
	cmp $6EBF.w,X		; DD BF 6E
	cmp $309FA0.l,X		; DF A0 9F 30
	rol $30E0.w,X		; 3E E0 30
	cpy #$0020.w		; C0 20 00
	cpy #$127F.w		; C0 7F 12
	and $415F0A.l,X		; 3F 0A 5F 41
	stx $00C2.w		; 8E C2 00
	cpy #$00C0.w		; C0 C0 00
	cpy #$0000.w		; C0 00 00
	brk $F6.b		; 00 F6
	ora $05E71B.l		; 0F 1B E7 05
	tas		; 1B
	sep #$05		; E2 05
	clc		; 18
	ora ($06.b,X)		; 01 06
	rts		; 60

	brk $0C.b		; 00 0C
	brk $03.b		; 00 03
	ora $040708.l		; 0F 08 07 04
	sbc $E2.b,S		; E3 E2
	sbc $FEF9.w,Y		; F9 F9 FE
	inc $1F1F.w,X		; FE 1F 1F
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	asl $071F.w		; 0E 1F 07
	ora $010303.l		; 0F 03 03 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	and $010F03.l,X		; 3F 03 0F 01
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$F0F0.w		; C0 F0 F0
	php		; 08
	cpx $8E80.w		; EC 80 8E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -16.b		; 80 F0
	beq  -4.b		; F0 FC
	php		; 08
	inc $FE80.w,X		; FE 80 FE
	brk $00.b		; 00 00
	and ($FF.b,S),Y		; 33 FF
	rts		; 60

	jsr ($F3C3.w,X)		; FC C3 F3
	bcc -28.b		; 90 E4
	and ($F7.b),Y		; 31 F7
	adc ($F4.b),Y		; 71 F4
	sbc $FC.b,X		; F5 FC
	sbc $F8.b,S		; E3 F8
	adc $F00B.w,Y		; 79 0B F0
	ora [$E1.b],Y		; 17 E1
	and $925FC0.l		; 2F C0 5F 92
	tsx		; BA
	and [$7C.b],Y		; 37 7C
	adc $F0.b,S		; 63 F0
	cmp $98A9F8.l		; CF F8 A9 98
	phk		; 4B
	cli		; 58
	sta $585FB8.l		; 8F B8 5F 58
	rol $3C.b,X		; 36 3C
	jsr $6017.w		; 20 17 60
	bvc  48.b		; 50 30
	pha		; 48
	sta [$E0.b]		; 87 E0
	ora [$E0.b]		; 07 E0
	sta [$E0.b]		; 87 E0
	ora [$E0.b]		; 07 E0
	sta $61.b,S		; 83 61
	cpy #$8030.w		; C0 30 80
	bmi -64.b		; 30 C0
	sei		; 78
	cli		; 58
	and $793C.w,X		; 3D 3C 79
	jmp ($7879.w,X)		; 7C 79 78
	ply		; 7A
	sei		; 78
	tda		; 7B
	sei		; 78
	ply		; 7A
	beq 122.b		; F0 7A
	plx		; FA
	ror $01.b,X		; 76 01
	xce		; FB
	ora $38FF.w,Y		; 19 FF 38
	inc $FD39.w,X		; FE 39 FD
	bvs  -3.b		; 70 FD
	bvs  -3.b		; 70 FD
	.db $62, $FE, $64		; 62 FE 64
	jsr ($C0A0.w,X)		; FC A0 C0
	rti		; 40

	bra -128.b		; 80 80
	jsr $7060.w		; 20 60 70
	beq  -8.b		; F0 F8
	sei		; 78
	sed		; F8
	sec		; 38
	jmp ($3E1C.w,X)		; 7C 1C 3E
	jsr $6020.w		; 20 20 60
	rts		; 60

	cpy #$E0F0.w		; C0 F0 E0
	sed		; F8
	beq  -4.b		; F0 FC
	sei		; 78
	jsr ($FE38.w,X)		; FC 38 FE
	tsb $347F.w		; 0C 7F 34
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb $0C0C.w		; 0C 0C 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne   4.b		; D0 04
	bne   8.b		; D0 08
	bne   0.b		; D0 00
	cpy #$6000.w		; C0 00 60
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	sec		; 38
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	ora [$00.b]		; 07 00
	ora $0803.w		; 0D 03 08
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	ora $1E0170.l		; 0F 70 01 1E
	ora ($1E.b,X)		; 01 1E
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	bra -128.b		; 80 80
	sbc #$E4F4.w		; E9 F4 E4
	sbc ($66.b)		; F2 66
	sbc $F873.w,Y		; F9 73 F8
	and ($7C.b),Y		; 31 7C
	sec		; 38
	ror $3F18.w,X		; 7E 18 3F
	tsb $F01F.w		; 0C 1F F0
	ora $F00FF0.l,X		; 1F F0 0F F0
	ora [$F8.b]		; 07 F8
	ora $7C8378.l		; 0F 78 83 7C
	sta $3E.b		; 85 3E
.INDEX 16
	rep #$1F		; C2 1F
	sbc ($00.b,X)		; E1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1F0C.w		; 0E 0C 1F
	clc		; 18
	and $FA12.w,X		; 3D 12 FA
	cop $F8.b		; 02 F8
	brk $FD.b		; 00 FD
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1F00.w		; 0E 00 1F
	cop $1F.b		; 02 1F
	ora [$1F.b]		; 07 1F
	ora [$CF.b]		; 07 CF
	wai		; CB
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	sei		; 78
	cpy $C470.w		; CC 70 C4
	bvc -60.b		; 50 C4
	bvc -60.b		; 50 C4
	bmi -124.b		; 30 84
	jsr ($FC7C.w,X)		; FC 7C FC
	sed		; F8
	stz $B080.w		; 9C 80 B0
	bra -72.b		; 80 B8
	bra -72.b		; 80 B8
	bra  60.b		; 80 3C
	tsb $7C.b		; 04 7C
	tsb $30.b		; 04 30
	jmp ($F830.w,X)		; 7C 30 F8
	sei		; 78
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $39.b		; 00 39
	bpl 119.b		; 10 77
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $0008.w,Y		; 39 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  16.b		; F0 10
	sed		; F8
	sei		; 78
	bit $587C.w,X		; 3C 7C 58
	and $141C2A.l,X		; 3F 2A 1C 14
	ora #$0A00.w		; 09 00 0A
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	sec		; 38
	jsr ($FE1C.w,X)		; FC 1C FE
	php		; 08
	jmp ($7B03.w,X)		; 7C 03 7B
	asl $36.b		; 06 36
	ora $14.b		; 05 14
	cop $0E.b		; 02 0E
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	brk $43.b		; 00 43
	bra  55.b		; 80 37
	rts		; 60

	ora $00BF89.l		; 0F 89 BF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	ora ($C3.b,X)		; 01 C3
	ora ($F6.b,X)		; 01 F6
	cop $4D.b		; 02 4D
	tsb $60.b		; 04 60
	stz $0E82.w,X		; 9E 82 0E
	adc ($03.b),Y		; 71 03
	jsr ($FE01.w,X)		; FC 01 FE
	brk $3F.b		; 00 3F
	cpy #$E01F.w		; C0 1F E0
	lsr $8F31.w		; 4E 31 8F
	dey		; 88
	ora ($70.b,X)		; 01 70
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cld		; D8
	jsl $B004FC.l		; 22 FC 04 B0
	sty $60.b		; 84 60
	inx		; E8
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	bra -52.b		; 80 CC
	jsr $00F8.w		; 20 F8 00
	sei		; 78
	php		; 08
	bpl   0.b		; 10 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	ora [$3F.b]		; 07 3F
	trb $70FF.w		; 1C FF 70
	jsr ($F0C0.w,X)		; FC C0 F0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $81.b		; 00 81
	brk $01.b		; 00 01
	ora $427E10.l,X		; 1F 10 7E 42
	sed		; F8
	php		; 08
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cmp ($05.b,X)		; C1 05
	ora $03.b,S		; 03 03
	ora [$03.b]		; 07 03
	adc [$60.b],Y		; 77 60
	sta $E18C60.l		; 8F 60 8C E1
	php		; 08
	ora $10.b,S		; 03 10
	bra -121.b		; 80 87
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	ora ($0F.b,X)		; 01 0F
	bvs 116.b		; 70 74
	adc ($73.b,S),Y		; 73 73
	sbc [$F7.b],Y		; F7 F7
	sbc $1264EF.l		; EF EF 64 12
	cpy $CC22.w		; CC 22 CC
	jsl $C826C8.l		; 22 C8 26 C8
	rol $80.b		; 26 80
	brk $64.b		; 00 64
	trb $1C67.w		; 1C 67 1C
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	bra  80.b		; 80 50
	bcc  72.b		; 90 48
	bcc  72.b		; 90 48
	bcc  64.b		; 90 40
	bra   0.b		; 80 00
	brk $20.b		; 00 20
	rti		; 40

	rts		; 60

	bra  48.b		; 80 30
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	ldy #$E020.w		; A0 20 E0
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($0F.b,X)		; 01 0F
	ora [$3F.b]		; 07 3F
	ora $FF78FF.l,X		; 1F FF 78 FF
	cpx #$C0FC.w		; E0 FC C0
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	tsb $1F.b		; 04 1F
	bpl  -1.b		; 10 FF
	cpy #$02FE.w		; C0 FE 02
	sed		; F8
	php		; 08
	beq  16.b		; F0 10
	bmi  56.b		; 30 38
	jsr $2031.w		; 20 31 20
	and ($20.b),Y		; 31 20
	and ($21.b),Y		; 31 21
	and ($21.b,S),Y		; 33 21
	and ($21.b,S),Y		; 33 21
	and ($21.b,S),Y		; 33 21
	and ($30.b,S),Y		; 33 30
	brk $30.b		; 00 30
	brk $31.b		; 00 31
	ora ($31.b,X)		; 01 31
	bpl  49.b		; 10 31
	bpl  51.b		; 10 33
	ora ($33.b)		; 12 33
	ora ($33.b)		; 12 33
	bpl  96.b		; 10 60
	sed		; F8
	rts		; 60

	beq -64.b		; F0 C0
	cpx #$E0C0.w		; E0 C0 E0
	bra -32.b		; 80 E0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	beq -128.b		; F0 80
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	cpy #$8040.w		; C0 40 80
	brk $80.b		; 00 80
	brk $04.b		; 00 04
	ora $08.b,S		; 03 08
	asl $08.b		; 06 08
	asl $00.b		; 06 00
	tsb $0C11.w		; 0C 11 0C
	ora ($08.b),Y		; 11 08
	ora $18.b,S		; 03 18
	and $10.b,S		; 23 10
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	asl $3C0E.w		; 0E 0E 3C
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	tsb $D8.b		; 04 D8
	tsb $98.b		; 04 98
	rti		; 40

	dey		; 88
	rti		; 40

	beq -16.b		; F0 F0
	cpx #$E8E0.w		; E0 E0 E8
	inx		; E8
	cld		; D8
	cld		; D8
	tya		; 98
	tya		; 98
	sec		; 38
	sec		; 38
	bit $3C3C.w,X		; 3C 3C 3C
	bit $F339.w,X		; 3C 39 F3
	adc $3DF7.w,X		; 7D F7 3D
	sbc [$01.b],Y		; F7 01
	sbc [$06.b],Y		; F7 06
	sbc $0CFF18.l,X		; FF 18 FF 0C
	inc $FE0C.w,X		; FE 0C FE
	adc $7D2C.w,X		; 7D 2C 7D
	and $0C7D.w		; 2D 7D 0C
	tsa		; 3B
	ora #$0207.w		; 09 07 02
	lsr $DD40.w,X		; 5E 40 DD
	mvp $D4,$DD		; 44 DD D4
	cpy #$FCFE.w		; C0 FE FC
	sbc $13FF9E.l,X		; FF 9E FF 13
	sbc $F21FE2.l,X		; FF E2 1F F2
	sta $A4.b,S		; 83 A4
	.db $42, $70		; 42 70
	dec $FC.b		; C6 FC
	tsb $FE.b		; 04 FE
	txs		; 9A
	cmp $02B795.l,X		; DF 95 B7 02
	ora $00.b,S		; 03 00
	asl $0800.w		; 0E 00 08
	bvc  72.b		; 50 48
	bvc   0.b		; 50 00
	ora ($00.b,X)		; 01 00
	ora [$07.b]		; 07 07
	and $F0FF3E.l,X		; 3F 3E FF F0
	sbc $00FFC0.l,X		; FF C0 FF 00
	sbc [$03.b]		; E7 03
	ora $030000.l		; 0F 00 00 03
	cop $1F.b		; 02 1F
	bpl  -1.b		; 10 FF
	bra  -2.b		; 80 FE
	cop $F0.b		; 02 F0
	bpl -61.b		; 10 C3
	.db $42, $07		; 42 07
	brk $12.b		; 00 12
	sbc $8DFFE4.l,X		; FF E4 FF 8D
	inc $FC1A.w,X		; FE 1A FC
	bmi  -3.b		; 30 FD
	stz $FB.b		; 64 FB
	cmp $F0.b		; C5 F0
	sta $E0.b,S		; 83 E0
	tsa		; 3B
	brk $F7.b		; 00 F7
	ora ($EE.b,X)		; 01 EE
	brk $9C.b		; 00 9C
	sta ($78.b,X)		; 81 78
	eor $F0.b,S		; 43 F0
	ora $E0.b,S		; 03 E0
	ora $C0.b,S		; 03 C0
	mvp $1B,$A4		; 44 A4 1B
	cmp ($8E.b),Y		; D1 8E
	nop		; EA
	cpy $D5.b		; C4 D5
	cpx #$F12B.w		; E0 2B F1
	tya		; 98
	bit $3090.w,X		; 3C 90 30
	ldy #$0060.w		; A0 60 00
	adc $00BF00.l,X		; 7F 00 BF 00
	cmp $00EE80.l,X		; DF 80 EE 00
	and $D0.b,X		; 35 D0
	cmp $80DFC0.l,X		; DF C0 DF 80
	bcs -64.b		; B0 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	rti		; 40

	rti		; 40

	bra -64.b		; 80 C0
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $A0.b		; 00 A0
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	asl $01.b		; 06 01
	tsb $1902.w		; 0C 02 19
	tsb $13.b		; 04 13
	php		; 08
	asl $01.b		; 06 01
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($05.b,X)		; 01 05
	brk $0E.b		; 00 0E
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	ora [$F0.b]		; 07 F0
	cpy #$0E1F.w		; C0 1F 0E
	and ($00.b,X)		; 21 00
	cmp ($00.b),Y		; D1 00
	ora $249224.l		; 0F 24 92 24
	sta ($64.b)		; 92 64
	ora ($0F.b)		; 12 0F
	ora $DEE0E0.l		; 0F E0 E0 DE
	dec $2E0E.w,X		; DE 0E 2E
	brk $F0.b		; 00 F0
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	and [$1C.b]		; 27 1C
	and $0C.b,X		; 35 0C
	ora ($0E.b,S),Y		; 13 0E
	asl A		; 0A
	asl $09.b		; 06 09
	ora [$05.b]		; 07 05
	ora $04.b,S		; 03 04
	ora $02.b,S		; 03 02
	ora ($0B.b,X)		; 01 0B
	php		; 08
	ora $00.b,S		; 03 00
	ora $04.b		; 05 04
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cpx #$C030.w		; E0 30 C0
	bpl -32.b		; 10 E0
	bpl -16.b		; 10 F0
	clc		; 18
	cpx #$7008.w		; E0 08 70
	php		; 08
	beq -120.b		; F0 88
	clv		; B8
	dey		; 88
	cpy #$F000.w		; C0 00 F0
	bpl -16.b		; 10 F0
	bpl -32.b		; 10 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	sei		; 78
	php		; 08
	bvs   0.b		; 70 00
	ora $0F.b,S		; 03 0F
	ora [$0F.b]		; 07 0F
	asl $0C1F.w		; 0E 1F 0C
	ora $183E18.l,X		; 1F 18 3E 18
	bit $3C10.w,X		; 3C 10 3C
	bmi  56.b		; 30 38
	ora $000F08.l		; 0F 08 0F 00
	ora $021E11.l,X		; 1F 11 1E 02
	bit $3C20.w,X		; 3C 20 3C
	tsb $38.b		; 04 38
	brk $38.b		; 00 38
	php		; 08
	bra -29.b		; 80 E3
	ora ($C7.b,X)		; 01 C7
	ora $8F.b,S		; 03 8F
	ora [$1F.b]		; 07 1F
	asl $1C3F.w		; 0E 3F 1C
	adc $307E38.l,X		; 7F 38 7E 30
	jsr ($41C1.w,X)		; FC C1 41
	sta [$84.b]		; 87 84
	ora $101F08.l		; 0F 08 1F 10
	and $023E21.l,X		; 3F 21 3E 02
	jmp ($7844.w,X)		; 7C 44 78
	brk $21.b		; 00 21
	and ($21.b,S),Y		; 33 21
	and ($30.b,S),Y		; 33 30
	and ($30.b,S),Y		; 33 30
	tsa		; 3B
	clc		; 18
	tsa		; 3B
	clc		; 18
	tsa		; 3B
	php		; 08
	tas		; 1B
	php		; 08
	tas		; 1B
	and ($00.b,S),Y		; 33 00
	and ($00.b,S),Y		; 33 00
	and ($00.b,S),Y		; 33 00
	tsa		; 3B
	brk $3B.b		; 00 3B
	brk $3B.b		; 00 3B
	cop $1B.b		; 02 1B
	cop $1B.b		; 02 1B
	cop $00.b		; 02 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
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
	brk $80.b		; 00 80
	bra   4.b		; 80 04
	cop $00.b		; 02 00
	tsb $09.b		; 04 09
	tsb $09.b		; 04 09
	tsb $03.b		; 04 03
	php		; 08
	ora ($08.b,S),Y		; 13 08
	ora ($08.b,S),Y		; 13 08
	jsl $010110.l		; 22 10 01 01
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	tsb $E90C.w		; 0C 0C E9
	tsb $C9.b		; 04 C9
	tsb $C0.b		; 04 C0
	tsb $84.b		; 04 84
	cop $84.b		; 02 84
	cop $00.b		; 02 00
	cop $02.b		; 02 02
	ora ($02.b,X)		; 01 02
	ora ($C3.b,X)		; 01 C3
	cmp $83.b,S		; C3 83
	sta $83.b,S		; 83 83
	sta $01.b,S		; 83 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	rti		; 40

	rti		; 40

	cpy #$0000.w		; C0 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  80.b		; 80 50
	bra -96.b		; 80 A0
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $0B.b		; 00 0B
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$0100.w		; 09 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	rti		; 40

	cpy #$4000.w		; C0 00 40
	brk $20.b		; 00 20
	bra -128.b		; 80 80
	cpy #$C040.w		; C0 40 C0
	rti		; 40

	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	asl $1E1E.w		; 0E 1E 1E
	ora $0E071E.l,X		; 1F 1E 07 0E
	ora [$07.b]		; 07 07
	ora $07.b,S		; 03 07
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	asl $0E1F.w		; 0E 1F 0E
	and $063F06.l,X		; 3F 06 3F 06
	ora $030F02.l,X		; 1F 02 0F 03
	ora $F07070.l		; 0F 70 70 F0
	beq  -8.b		; F0 F8
	beq  56.b		; F0 38
	bvs  60.b		; 70 3C
	sec		; 38
	trb $3E38.w		; 1C 38 3E
	trb $1E0F.w		; 1C 0F 1E
	bvs  -8.b		; 70 F8
	bvs  -8.b		; 70 F8
	bmi  -8.b		; 30 F8
	bmi  -8.b		; 30 F8
	bpl 124.b		; 10 7C
	clc		; 18
	jmp ($3E0C.w,X)		; 7C 0C 3E
	asl $063F.w		; 0E 3F 06
	ora ($04.b,X)		; 01 04
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000F00.l		; 0F 00 0F 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	rti		; 40

	bra  64.b		; 80 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	rts		; 60

	brk $40.b		; 00 40
	jsr $8080.w		; 20 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$40C0.w		; C0 C0 40
	brk $60.b		; 00 60
	bpl  32.b		; 10 20
	bra  48.b		; 80 30
	dey		; 88
	trb $0E80.w		; 1C 80 0E
	bra -15.b		; 80 F1
	php		; 08
	ora $E0E000.l		; 0F 00 E0 E0
	cpx #$70E0.w		; E0 E0 70
	bvs 112.b		; 70 70
	bvs 120.b		; 70 78
	sei		; 78
	jmp ($067C.w,X)		; 7C 7C 06
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
	brk $46.b		; 00 46
	jsr $204E.w		; 20 4E 20
	ror $2E10.w		; 6E 10 2E
	bpl  38.b		; 10 26
	bpl  51.b		; 10 33
	brk $38.b		; 00 38
	brk $1F.b		; 00 1F
	brk $1C.b		; 00 1C
	trb $1C1C.w		; 1C 1C 1C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0C0C.w		; 0C 0C 0C
	asl $070E.w		; 0E 0E 07
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $81.b		; 00 81
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
	clc		; 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	jsr $2038.w		; 20 38 20
	sec		; 38
	jsr $2038.w		; 20 38 20
	sec		; 38
	bmi  56.b		; 30 38
	clc		; 18
	php		; 08
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	sec		; 38
	php		; 08
	sec		; 38
	php		; 08
	sec		; 38
	php		; 08
	sec		; 38
	php		; 08
	sec		; 38
	php		; 08
	bmi 120.b		; 30 78
	jsr $2078.w		; 20 78 20
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	php		; 08
	sei		; 78
	ora #$0070.w		; 09 70 00
	bvs  64.b		; 70 40
	bmi   0.b		; 30 00
	bmi  32.b		; 30 20
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	ora $0F.b,S		; 03 0F
	asl $0F.b		; 06 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	ora $0F0308.l		; 0F 08 03 0F
	tsb $103F.w		; 0C 3F 10
	sbc $C0FF60.l,X		; FF 60 FF C0
	sbc [$81.b],Y		; F7 81
	sbc $06CF03.l		; EF 03 CF 06
	sta $1F0407.l,X		; 9F 07 04 1F
	ora ($7C.b),Y		; 11 7C
	mvp $09,$F9		; 44 F9 09
	sbc $02.b,S		; E3 02
	cmp [$04.b]		; C7 04
	sta $000F08.l		; 8F 08 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	bit $7F37.w,X		; 3C 37 7F
	and [$77.b]		; 27 77
	ora $07.b,S		; 03 07
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	clc		; 18
	adc $23FF37.l,X		; 7F 37 FF 23
	sbc $007F01.l,X		; FF 01 7F 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	sed		; F8
	ldy #$40CE.w		; A0 CE 40
	sta ($1C.b,S),Y		; 93 1C
	lda $000000.l,X		; BF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C080.w		; E0 80 C0
	bmi -80.b		; 30 B0
	ror $4162.w		; 6E 62 41
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	rti		; 40

	stz $9840.w		; 9C 40 98
	brk $38.b		; 00 38
	bra  48.b		; 80 30
	brk $10.b		; 00 10
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	brk $38.b		; 00 38
	sec		; 38
	sec		; 38
	sec		; 38
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$C0C0.w		; E0 C0 C0
	cpy #$01C0.w		; C0 C0 01
	tsb $0401.w		; 0C 01 04
	brk $06.b		; 00 06
	ora ($07.b,X)		; 01 07
	ora $07.b,S		; 03 07
	ora ($07.b,X)		; 01 07
	phd		; 0B
	ora [$1A.b]		; 07 1A
	ora [$07.b]		; 07 07
	tsb $07.b		; 04 07
	tsb $03.b		; 04 03
	cop $02.b		; 02 02
	cop $04.b		; 02 04
	tsb $00.b		; 04 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	asl $C8.b		; 06 C8
	bmi -24.b		; 30 E8
	bmi -24.b		; 30 E8
	bmi -56.b		; 30 C8
	clc		; 18
	tsb $18.b		; 04 18
	cpx $ECF8.w		; EC F8 EC
	sed		; F8
	bit $18.b		; 24 18
	sed		; F8
	bmi -56.b		; 30 C8
	brk $C8.b		; 00 C8
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	inx		; E8
	cpy #$C0F8.w		; C0 F8 C0
	bne  73.b		; D0 49
	bit $8E.b		; 24 8E
	rts		; 60

	sty $72.b		; 84 72
	sty $72.b		; 84 72
	sty $70.b		; 84 70
	brk $03.b		; 00 03
	pha		; 48
	cmp $00C35A.l		; CF 5A C3 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $B6FC00.l,X		; FF 00 FC B6
	stx $BC.b		; 86 BC
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	rti		; 40

	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$A020.w		; C0 20 A0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	cpy #$0080.w		; C0 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$02.b]		; 07 02
	asl $1C05.w		; 0E 05 1C
	ora $1C.b		; 05 1C
	tsb $1E.b		; 04 1E
	cop $0F.b		; 02 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$01.b]		; 07 01
	ora $070F03.l		; 0F 03 0F 07
	ora $0601.w		; 0D 01 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	adc $9F3F4F.l,X		; 7F 4F 3F 9F
	lda $183FBE.l,X		; BF BE 3F 18
	adc $00FF02.l,X		; 7F 02 FF 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	php		; 08
	lda $CEFFA1.l,X		; BF A1 FF CE
	sbc $80BDD8.l,X		; FF D8 BD 80
	cli		; 58
	brk $82.b		; 00 82
	jmp ($C031.w)		; 6C 31 C0
	eor $159E8B.l		; 4F 8B 9E 15
	trb $56.b		; 14 56
	eor $D7.b,X		; 55 D7
	cpy #$E0D7.w		; C0 D7 E0
	sbc $00.b,S		; E3 00
	beq   0.b		; F0 00
	sbc $05FF02.l,X		; FF 02 FF 05
	sbc $02FE17.l,X		; FF 17 FE 02
	inc $FF43.w,X		; FE 43 FF
	rti		; 40

	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $67.b		; 00 67
	rts		; 60

	inc A		; 1A
	sbc ($14.b,X)		; E1 14
	ora ($14.b,X)		; 01 14
	sbc ($F4.b,X)		; E1 F4
	brk $FA.b		; 00 FA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	sbc $15.b,X		; F5 15
	xba		; EB
	phd		; 0B
	xba		; EB
	phd		; 0B
	phd		; 0B
	phd		; 0B
	ora $05.b		; 05 05
	bpl  28.b		; 10 1C
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $0204.w		; 1C 04 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0C00.w		; 0C 00 0C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	bpl  56.b		; 10 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	asl $1F.b		; 06 1F
	tsb $0C1E.w		; 0C 1E 0C
	asl $1E1C.w,X		; 1E 1C 1E
	clc		; 18
	trb $1C18.w		; 1C 18 1C
	bpl  28.b		; 10 1C
	brk $18.b		; 00 18
	asl $1E00.w		; 0E 00 1E
	bpl  30.b		; 10 1E
	cop $1C.b		; 02 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	tsb $18.b		; 04 18
	brk $18.b		; 00 18
	php		; 08
	asl $0C1F.w		; 0E 1F 0C
	and $1C3E1C.l,X		; 3F 1C 3E 1C
	rol $7C38.w,X		; 3E 38 7C
	sec		; 38
	jmp ($7C30.w,X)		; 7C 30 7C
	bmi 120.b		; 30 78
	ora $001E11.l,X		; 1F 11 1E 00
	rol $3C22.w,X		; 3E 22 3C
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	mvp $01,$78		; 44 78 01
	sei		; 78
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($09.b,X)		; 01 09
	lda $067F03.l,X		; BF 03 7F 06
	and $181F0C.l,X		; 3F 0C 1F 18
	and $607F30.l,X		; 3F 30 7F 60
	inc $FEC0.w,X		; FE C0 FE
	eor ($52.b,S),Y		; 53 52
	ora ($10.b,S),Y		; 13 10
	ora [$00.b]		; 07 00
	ora $021E01.l		; 0F 01 1E 02
	sec		; 38
	brk $74.b		; 00 74
	tsb $E8.b		; 04 E8
	php		; 08
	cop $00.b		; 02 00
	tsb $02.b		; 04 02
	tsb $02.b		; 04 02
	tsb $02.b		; 04 02
	cop $00.b		; 02 00
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $38.b		; 00 38
	brk $04.b		; 00 04
	bra  -4.b		; 80 FC
	brk $C0.b		; 00 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$E0E0.w		; C0 E0 E0
	beq -16.b		; F0 F0
	sei		; 78
	sei		; 78
	brk $00.b		; 00 00
	bpl  12.b		; 10 0C
	and ($08.b),Y		; 31 08
	and $18.b,S		; 23 18
	and $10.b,S		; 23 10
	eor [$30.b]		; 47 30
	eor [$20.b]		; 47 20
	lsr $0E20.w		; 4E 20 0E
	rts		; 60

	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora $0E0E0F.l		; 0F 0F 0E 0E
	asl $1C1E.w,X		; 1E 1E 1C
	trb $1C1C.w		; 1C 1C 1C
	cpy $30.b		; C4 30
	cpy $8C20.w		; CC 20 8C
	rti		; 40

	tya		; 98
	mvp $44,$98		; 44 98 44
	tya		; 98
	rti		; 40

	tya		; 98
	rti		; 40

	stz $8840.w		; 9C 40 88
	dey		; 88
	tya		; 98
	tya		; 98
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	bit $3C3C.w,X		; 3C 3C 3C
	bit $3C3C.w,X		; 3C 3C 3C
	trb $1FC1.w		; 1C C1 1F
	cmp ($3E.b,X)		; C1 3E
	rts		; 60

	ora $301F60.l		; 0F 60 1F 30
	ora [$10.b]		; 07 10
	phd		; 0B
	clc		; 18
	ora [$0C.b]		; 07 0C
	adc $407E41.l,X		; 7F 41 7E 40
	ora $203F00.l,X		; 1F 00 3F 20
	ora $101F00.l		; 0F 00 1F 10
	ora [$00.b]		; 07 00
	phd		; 0B
	php		; 08
	rti		; 40

	cpy #$D070.w		; C0 70 D0
	bmi -48.b		; 30 D0
	jsr $B8E0.w		; 20 E0 B8
	inx		; E8
	clc		; 18
	pla		; 68
	bne 112.b		; D0 70
	tya		; 98
	bmi  32.b		; 30 20
	brk $20.b		; 00 20
	brk $E0.b		; 00 E0
	cpy #$8090.w		; C0 90 80
	bpl   0.b		; 10 00
	beq  96.b		; F0 60
	dey		; 88
	brk $C8.b		; 00 C8
	brk $01.b		; 00 01
	ora $021F03.l,X		; 1F 03 1F 02
	and $043F00.l,X		; 3F 00 3F 04
	tda		; 7B
	rol $F9.b		; 26 F9
	pla		; 68
	beq -61.b		; F0 C3
	beq   9.b		; F0 09
	php		; 08
	tas		; 1B
	clc		; 18
	tas		; 1B
	clc		; 18
	and $3838.w,Y		; 39 38 38
	php		; 08
	adc $F008.w,Y		; 79 08 F0
	sta [$F0.b],Y		; 97 F0
	ora $24E09C.l,X		; 1F 9C E0 24
	cmp ($3D.b)		; D2 3D
	bne  21.b		; D0 15
	tya		; 98
	ora [$80.b],Y		; 17 80
	sec		; 38
	cpx $99.b		; E4 99
	sbc $0A.b,X		; F5 0A
	tsa		; 3B
	cmp $00.b,S		; C3 00
	cmp ($58.b,X)		; C1 58
	sta ($94.b,S),Y		; 93 94
	adc ($18.b,S),Y		; 73 18
	adc $031B00.l,X		; 7F 00 1B 03
	rol A		; 2A
	jsl $F2D014.l		; 22 14 D0 F2
	beq -16.b		; F0 F0
	adc ($E4.b)		; 72 E4
	ldx #$C4C8.w		; A2 C8 C4
	plp		; 28
	tsb $00.b		; 04 00
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $FC.b		; 64 FC
	tsb $FC.b		; 04 FC
	sty $10FC.w		; 8C FC 10
	beq  24.b		; F0 18
	cld		; D8
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	jsr $40FC.w		; 20 FC 40
	sbc ($89.b)		; F2 89
	bne  12.b		; D0 0C
	sta ($09.b)		; 92 09
	sta ($00.b)		; 92 00
	ora ($B8.b)		; 12 B8
	sec		; 38
	bvs  80.b		; 70 50
	cpx #$EC81.w		; E0 81 EC
	and $4ECE.w		; 2D CE 4E
	sta $8D0D.w		; 8D 0D 8D
	sta $0D0D.w		; 8D 0D 0D
	brk $70.b		; 00 70
	and $7F7F.w,Y		; 39 7F 7F
	sbc $07FF07.l,X		; FF 07 FF 07
	sta $EC0EF4.l		; 8F F4 0E EC
	tsb $66.b		; 04 66
	ora ($00.b)		; 12 00
	sbc $39FF00.l,X		; FF 00 FF 39
	sbc $768707.l,X		; FF 07 87 76
	adc [$F0.b],Y		; 77 F0
	sbc [$F4.b],Y		; F7 F4
	inc $E0.b,X		; F6 E0
	xba		; EB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -32.b		; 80 E0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	cpx #$E0F0.w		; E0 F0 E0
	beq   0.b		; F0 00
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bra -16.b		; 80 F0
	cpx #$C0F8.w		; E0 F8 C0
	beq -32.b		; F0 E0
	sed		; F8
	bmi  -8.b		; 30 F8
	ldy #$00F8.w		; A0 F8 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	jsr $80F0.w		; 20 F0 80
	cpx #$F060.w		; E0 60 F0
	jsr $2070.w		; 20 70 20
	bmi   0.b		; 30 00
	dey		; 88
	beq  80.b		; F0 50
	ldy #$40A0.w		; A0 A0 40
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	bra   0.b		; 80 00
	rti		; 40

	rti		; 40

	cpy #$0080.w		; C0 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta [$E0.b]		; 87 E0
	ora $815EC0.l		; 0F C0 5E 81
	ldy $9943.w,X		; BC 43 99
	ror $42.b		; 66 42
	bit $1C22.w,X		; 3C 22 1C
	asl $48.b		; 06 48
	cpx #$C03F.w		; E0 3F C0
	adc $00BF80.l,X		; 7F 80 BF 00
	adc $007F00.l,X		; 7F 00 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $000000.l,X		; FF 00 00 00
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
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	rol $91.b		; 26 91
	jmp $4C22.w		; 4C 22 4C
	jsl $00020C.l		; 22 0C 02 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $003F00.l,X		; FF 00 3F 00
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $4C.b		; 00 4C
	jsr $204E.w		; 20 4E 20
	asl $2420.w		; 0E 20 24
	ora ($24.b)		; 12 24
	ora ($04.b)		; 12 04
	bpl  20.b		; 10 14
	brk $13.b		; 00 13
	php		; 08
	trb $1C1C.w		; 1C 1C 1C
	trb $1C1C.w		; 1C 1C 1C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0E0E.w		; 0C 0E 0E
	asl $060E.w		; 0E 0E 06
	asl $12.b		; 06 12
	ora #$0812.w		; 09 12 08
	phd		; 0B
	brk $09.b		; 00 09
	brk $09.b		; 00 09
	tsb $08.b		; 04 08
	tsb $0C.b		; 04 0C
	ora $01.b,S		; 03 01
	brk $06.b		; 00 06
	asl $07.b		; 06 07
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora [$03.b]		; 07 03
	ora $03.b,S		; 03 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$E0E0.w		; C0 E0 E0
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $22.b		; 00 22
	ora ($26.b),Y		; 11 26
	brk $31.b		; 00 31
	pha		; 48
	bit $52.b		; 24 52
	ora #$4992.w		; 09 92 49
	ldx $11.b		; A6 11
	brk $00.b		; 00 00
	ora $191D.w,X		; 1D 1D 19
	eor $4E00.w,Y		; 59 00 4E
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	asl $12.b		; 06 12
	asl $E0.b		; 06 E0
	php		; 08
	jsr $20C8.w		; 20 C8 20
	brk $EA.b		; 00 EA
	brk $0B.b		; 00 0B
	jmp $4921.w		; 4C 21 49
	bit $E2.b		; 24 E2
	xba		; EB
	brk $18.b		; 00 18
	cpy #$C0DC.w		; C0 DC C0
	dec $1F00.w,X		; DE 00 1F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora $7FBF9F.l		; 0F 9F BF 7F
	ror $7CFF.w,X		; 7E FF 7C
	inc $F810.w,X		; FE 10 F8
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora [$7F.b]		; 07 7F
	ldx $3CFF.w,Y		; BE FF 3C
	adc $007F00.l,X		; 7F 00 7F 00
	jmp ($F080.w,X)		; 7C 80 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C0E0.w		; E0 E0 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	beq  64.b		; F0 40
	cpx #$8000.w		; E0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora [$0F.b]		; 07 0F
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	bpl  -8.b		; 10 F8
	jsr $40F0.w		; 20 F0 40
	beq -64.b		; F0 C0
	cpx #$E080.w		; E0 80 E0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	beq -64.b		; F0 C0
	beq -112.b		; F0 90
	cpx #$E000.w		; E0 00 E0
	jsr $00C0.w		; 20 C0 00
	cpy #$8040.w		; C0 40 80
	brk $80.b		; 00 80
	brk $3C.b		; 00 3C
	sei		; 78
	trb $3E38.w		; 1C 38 3E
	trb $1C0E.w		; 1C 0E 1C
	ora $0F070E.l,X		; 1F 0E 07 0F
	ora $070707.l		; 0F 07 07 07
	brk $FC.b		; 00 FC
	clc		; 18
	jmp ($3E08.w,X)		; 7C 08 3E
	tsb $043F.w		; 0C 3F 04
	ora $071F06.l,X		; 1F 06 1F 07
	ora $000F03.l		; 0F 03 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	ora $003809.l,X		; 1F 09 38 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C61E.w		; C0 1E C6
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	asl $FF.b		; 06 FF
	and $0000FF.l,X		; 3F FF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $86FF20.l,X		; 3F 20 FF 86
	asl $06.b		; 06 06
	asl $0E.b		; 06 0E
	asl $0C0E.w		; 0E 0E 0C
	asl $1E1C.w,X		; 1E 1C 1E
	trb $3CBC.w		; 1C BC 3C
	jsr ($FC98.w,X)		; FC 98 FC
	tsb $0F.b		; 04 0F
	tsb $0F.b		; 04 0F
	tsb $1F.b		; 04 1F
	tsb $1E.b		; 04 1E
	tsb $0C3E.w		; 0C 3E 0C
	rol $BE98.w,X		; 3E 98 BE
	cld		; D8
	trb $015E.w		; 1C 5E 01
.INDEX 8
	sep #$93		; E2 93
	stz $D6.b		; 64 D6
	pld		; 2B
	inc $F18B.w		; EE 8B F1
	lda ($82.b),Y		; B1 82
	pld		; 2B
	ldx #$10.b		; A2 10
	cmp ($FE.b,S),Y		; D3 FE
	brk $6C.b		; 00 6C
	tsb $88A9.w		; 0C A9 88
	bvc  66.b		; 50 42
	rti		; 40

	eor [$40.b]		; 47 40
	ora $00DF00.l		; 0F 00 DF 00
	bit $6040.w		; 2C 40 60
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$FC.b		; C0 FC
	bra -16.b		; 80 F0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	sei		; 78
	dec $C730.w		; CE 30 C7
	clc		; 18
	eor [$3D.b]		; 47 3D
	ror $0F.b		; 66 0F
	stz $01.b		; 64 01
	cld		; D8
	tsa		; 3B
	tsx		; BA
	and $84.b		; 25 84
	lda ($80.b),Y		; B1 80
	sei		; 78
	rti		; 40

	jmp ($1844.w,X)		; 7C 44 18
	brk $38.b		; 00 38
	jsr $3E18.w		; 20 18 3E
	bcc  -2.b		; 90 FE
	bra  -2.b		; 80 FE
	ora ($8E.b),Y		; 11 8E
	adc ($9E.b,X)		; 61 9E
	stz $FEFF.w		; 9C FF FE
	inc $1EFE.w,X		; FE FE 1E
	adc $353FED.l,X		; 7F ED 3F 35
	sta $757119.l,X		; 9F 19 71 75
	adc ($6D.b,X)		; 61 6D
	brk $9E.b		; 00 9E
	trb $1CFF.w		; 1C FF 1C
	sbc $10FF24.l,X		; FF 24 FF 10
	sbc $00FF08.l,X		; FF 08 FF 00
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
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -60.b		; 80 C4
	and ($84.b,S),Y		; 33 84
	adc ($84.b,S),Y		; 73 84
	adc ($10.b,S),Y		; 73 10
	brk $00.b		; 00 00
	trb $1C87.w		; 1C 87 1C
	sta [$1C.b]		; 87 1C
	sta [$1C.b]		; 87 1C
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cpx #$1F.b		; E0 1F
	sbc [$14.b],Y		; F7 14
	sbc ($10.b,S),Y		; F3 10
	xce		; FB
	clc		; 18
	xba		; EB
	php		; 08
	rti		; 40

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	cpy #$40.b		; C0 40
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	rti		; 40

	rti		; 40

	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	.db $82, $82, $00		; 82 82 00
	.db $82, $01, $83		; 82 01 83
	brk $83.b		; 00 83
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	sta $82.b,S		; 83 82
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	jsr $7030.w		; 20 30 70
	rti		; 40

	beq -80.b		; F0 B0
	beq 120.b		; F0 78
	cpy #$C8.b		; C0 C8
	bcs -120.b		; B0 88
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	bne  16.b		; D0 10
	bra   0.b		; 80 00
	jsr $6030.w		; 20 30 60
	bvs 112.b		; 70 70
	beq 112.b		; F0 70
	beq   7.b		; F0 07
	ora $0E0F06.l		; 0F 06 0F 0E
	ora $0E1F0E.l		; 0F 0E 1F 0E
	ora $1C1E0C.l,X		; 1F 0C 1E 1C
	rol $3E1C.w,X		; 3E 1C 3E
	ora $000F08.l		; 0F 08 0F 00
	ora $010F00.l		; 0F 00 0F 01
	asl $1E10.w,X		; 1E 10 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
	sta ($00.b,X)		; 81 00
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $80.b,S		; 03 80
	bra   1.b		; 80 01
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	asl $00.b		; 06 00
	ora ($00.b,X)		; 01 00
	tsb $00.b		; 04 00
	ora [$0C.b]		; 07 0C
	ora $007F30.l,X		; 1F 30 7F 00
	ora [$00.b]		; 07 00
	asl $01.b		; 06 01
	ora ($06.b,X)		; 01 06
	asl $03.b		; 06 03
	ora $00.b,S		; 03 00
	brk $0E.b		; 00 0E
	brk $3C.b		; 00 3C
	tsb $16.b		; 04 16
	sbc ($96.b)		; F2 96
	bvs  80.b		; 70 50
	lda $5FA8.w,Y		; B9 A8 5F
	rol $AF.b,X		; 36 AF
	jmp $F01F.w		; 4C 1F F0
	sta $3F8E20.l,X		; 9F 20 8E 3F
	ora $569FBF.l		; 0F BF 9F 56
	lsr $99.b		; 46 99
	bra  71.b		; 80 47
	brk $EF.b		; 00 EF
	ora ($66.b,X)		; 01 66
	cop $F5.b		; 02 F5
	bra 127.b		; 80 7F
	sbc $60FFFB.l,X		; FF FB FF 60
	sbc $72FF0A.l,X		; FF 0A FF 72
	sta $91.b,S		; 83 91
	lsr A		; 4A
	inc $41.b,X		; F6 41
	mvn $FF,$61		; 54 61 FF
	and $60FF.w,Y		; 39 FF 60
	sbc $00.b,X		; F5 00
	rts		; 60

	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	.db $62, $4C, $51		; 62 4C 51
	cmp $3863.w		; CD 63 38
	sed		; F8
	bcc  -8.b		; 90 F8
	bne -32.b		; D0 E0
	bra  -8.b		; 80 F8
	bpl -24.b		; 10 E8
	brk $D0.b		; 00 D0
	cpy #$70.b		; C0 70
	brk $20.b		; 00 20
	bcs -68.b		; B0 BC
	bne -100.b		; D0 9C
	cpy #$88.b		; C0 88
	cpy #$00.b		; C0 00
	bcc  16.b		; 90 10
	jsr $2020.w		; 20 20 20
	jsr $00C0.w		; 20 C0 00
	brk $14.b		; 00 14
	rtl		; 6B

	asl $0E7F.w		; 0E 7F 0E
	tda		; 7B
	asl A		; 0A
	stz $04.b		; 64 04
	tsb $81.b		; 04 81
	inc A		; 1A
	sta $EE.b		; 85 EE
	brk $E3.b		; 00 E3
	xba		; EB
	xce		; FB
	sbc ($FF.b),Y		; F1 FF
	sbc $FF.b,X		; F5 FF
	sbc [$FF.b],Y		; F7 FF
	xce		; FB
	ply		; 7A
	ply		; 7A
	rts		; 60

	rts		; 60

	tas		; 1B
	tas		; 1B
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	brk $07.b		; 00 07
	tsb $0F.b		; 04 0F
	tsb $181F.w		; 0C 1F 18
	rol $7C18.w,X		; 3E 18 7C
	bmi 124.b		; 30 7C
	bmi  -8.b		; 30 F8
	rts		; 60

	sed		; F8
	ora $00.b,S		; 03 00
	ora $101E08.l		; 0F 08 1E 10
	bit $3C20.w,X		; 3C 20 3C
	tsb $78.b		; 04 78
	rti		; 40

	sei		; 78
	php		; 08
	beq -128.b		; F0 80
	tas		; 1B
	tyx		; BB
	rol $87.b,X		; 36 87
	asl $0E3F.w,X		; 1E 3F 0E
	ora $0B0F16.l,X		; 1F 16 0F 0B
	ora [$04.b]		; 07 04
	ora $03.b,S		; 03 03
	brk $88.b		; 00 88
	sbc $0E7E02.l,X		; FF 02 7E 0E
	ror $7E06.w,X		; 7E 06 7E
	cop $7E.b		; 02 7E
	ora ($7F.b,X)		; 01 7F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	ldx $320E.w		; AE 0E 32
	.db $82, $28, $92		; 82 28 92
	pla		; 68
	ora ($68.b)		; 12 68
	ora ($64.b)		; 12 64
	ora ($44.b,S),Y		; 13 44
	and ($C4.b,S),Y		; 33 C4
	and ($00.b,S),Y		; 33 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq -89.b		; F0 A7
	bit $3C87.w,X		; 3C 87 3C
	sta [$2C.b]		; 87 2C
	cmp $6C.b		; C5 6C
	cmp ($4C.b,X)		; C1 4C
	sta ($44.b,X)		; 81 44
	ora $46.b,S		; 03 46
	ora $46.b,S		; 03 46
	wai		; CB
	php		; 08
	xba		; EB
	plp		; 28
	wai		; CB
	php		; 08
	sta $00.b,S		; 83 00
	sta [$04.b]		; 87 04
	cmp [$44.b]		; C7 44
	sta ($00.b,X)		; 81 00
	sta ($00.b,X)		; 81 00
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$20.b		; C0 20
	cpy #$20.b		; C0 20
	cpy #$20.b		; C0 20
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	cpx #$00.b		; E0 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
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
	bmi -120.b		; 30 88
	bmi -128.b		; 30 80
	bmi -128.b		; 30 80
	bmi -128.b		; 30 80
	bpl -128.b		; 10 80
	tya		; 98
	rti		; 40

	tya		; 98
	mvp $44,$18		; 44 18 44
	bvs 112.b		; 70 70
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	bvs  -8.b		; 70 F8
	bvs  -8.b		; 70 F8
	jsr $20F0.w		; 20 F0 20
	beq  32.b		; F0 20
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	sec		; 38
	sed		; F8
	dey		; 88
	beq -128.b		; F0 80
	beq -128.b		; F0 80
	bvs   0.b		; 70 00
	bvs  64.b		; 70 40
	bvs  64.b		; 70 40
	bmi  32.b		; 30 20
	bmi  48.b		; 30 30
	asl $0F.b		; 06 0F
	cop $0F.b		; 02 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	ora $080E09.l		; 0F 09 0E 08
	asl $00.b		; 06 00
	asl $04.b		; 06 04
	asl $06.b		; 06 06
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pha		; 48
	bit $48.b		; 24 48
	jsr $2008.w		; 20 08 20
	jsr $2010.w		; 20 10 20
	ora ($20.b)		; 12 20
	ora ($00.b)		; 12 00
	ora ($00.b)		; 12 00
	bpl  24.b		; 10 18
	clc		; 18
	trb $1C1C.w		; 1C 1C 1C
	trb $0C0C.w		; 1C 0C 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0C0C.w		; 0C 0C 0C
	asl $100E.w		; 0E 0E 10
	php		; 08
	ora ($09.b)		; 12 09
	ora ($08.b,S),Y		; 13 08
	ora $08.b,S		; 03 08
	ora ($08.b,X)		; 01 08
	php		; 08
	asl $07.b		; 06 07
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $06.b		; 06 06
	asl $07.b		; 06 07
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora [$01.b]		; 07 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$06.b]		; 07 06
	ora $101F0C.l		; 0F 0C 1F 10
	rol $7C20.w,X		; 3E 20 7C
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $1C02.w		; 0E 02 1C
	tsb $38.b		; 04 38
	clc		; 18
	sei		; 78
	plp		; 28
	rts		; 60

	beq -32.b		; F0 E0
	beq -64.b		; F0 C0
	cpx #$C0.b		; E0 C0
	cpx #$C0.b		; E0 C0
	cpx #$C0.b		; E0 C0
	cpy #$C0.b		; C0 C0
	cpy #$80.b		; C0 80
	cpy #$F0.b		; C0 F0
	bpl -32.b		; 10 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	ora $00.b,S		; 03 00
	ora ($3C.b,X)		; 01 3C
	tsb $0C20.w		; 0C 20 0C
	jsr $200A.w		; 20 0A 20
	ora $20.b,S		; 03 20
	tsb $20.b		; 04 20
	asl $18.b		; 06 18
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	trb $1E1F.w		; 1C 1F 1E
	ora $1C1D1C.l,X		; 1F 1C 1D 1C
	ora $1B18.w,X		; 1D 18 1B
	brk $03.b		; 00 03
	ora $0D30.w		; 0D 30 0D
	rti		; 40

	tas		; 1B
	bra  26.b		; 80 1A
	adc ($36.b,X)		; 61 36
	ora ($74.b,X)		; 01 74
	ora $6C.b,S		; 03 6C
	ora $28.b,S		; 03 28
	asl $00.b		; 06 00
	ora [$30.b]		; 07 30
	and [$60.b],Y		; 37 60
	adc $000F00.l		; 6F 00 0F 00
	ora $003F00.l,X		; 1F 00 3F 00
	and $081F00.l,X		; 3F 00 1F 08
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	asl $0F01.w		; 0E 01 0F
	cop $0E.b		; 02 0E
	ora $0C.b		; 05 0C
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	cop $02.b		; 02 02
	ora $04.b		; 05 04
	phd		; 0B
	php		; 08
	ora $080F08.l		; 0F 08 0F 08
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora $080F08.l		; 0F 08 0F 08
	ora $080F08.l		; 0F 08 0F 08
	asl $0F08.w		; 0E 08 0F
	php		; 08
	ora $080F08.l		; 0F 08 0F 08
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $0718.w		; 0E 18 07
	ora ($06.b),Y		; 11 06
	ora ($06.b),Y		; 11 06
	and ($1E.b),Y		; 31 1E
	and $3F1E.w,X		; 3D 1E 3F
	ora ($33.b)		; 12 33
	rti		; 40

	and ($07.b,S),Y		; 33 07
	brk $0E.b		; 00 0E
	brk $1F.b		; 00 1F
	ora ($1F.b),Y		; 11 1F
	ora ($0F.b),Y		; 11 0F
	ora $3E2C.w		; 0D 2C 3E
	tsb $0C3F.w		; 0C 3F 0C
	and $3348.w		; 2D 48 33
	pha		; 48
	and $48.b,S		; 23 48
	jsl $984218.l		; 22 18 42 98
	rti		; 40

	clv		; B8
	tsb $B0.b		; 04 B0
	tsb $B0.b		; 04 B0
	brk $0C.b		; 00 0C
	ora $1D1C.w		; 0D 1C 1D
	trb $3C1C.w		; 1C 1C 3C
	bit $3C3C.w,X		; 3C 3C 3C
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	tsb $0E0C.w		; 0C 0C 0E
	rol $3F.b		; 26 3F
	ora ($1E.b)		; 12 1E
	bpl  28.b		; 10 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	php		; 08
	asl $3F04.w,X		; 1E 04 3F
	jsl $3F107F.l		; 22 7F 10 3F
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	cpy #$20.b		; C0 20
	cpx #$10.b		; E0 10
	bcs   8.b		; B0 08
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$E0.b		; C0 E0
	cpx #$70.b		; E0 70
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	ora ($20.b)		; 12 20
	ora ($0E.b)		; 12 0E
	jsr $004E.w		; 20 4E 00
	clc		; 18
	rti		; 40

	tya		; 98
	brk $BC.b		; 00 BC
	brk $F8.b		; 00 F8
	brk $0C.b		; 00 0C
	tsb $0C0C.w		; 0C 0C 0C
	trb $3C1C.w		; 1C 1C 3C
	bit $3C3C.w,X		; 3C 3C 3C
	jmp ($787C.w,X)		; 7C 7C 78
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $40.b,X		; 76 40
	and $3C3F22.l,X		; 3F 22 3F 3C
	ora [$0F.b]		; 07 0F
	ora $07.b,S		; 03 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $F6.b		; 00 F6
	jsr $1CFF.w		; 20 FF 1C
	adc $033F00.l,X		; 7F 00 3F 03
	ora $001800.l		; 0F 00 18 00
	clc		; 18
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	rti		; 40

	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	rts		; 60

	brk $30.b		; 00 30
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	jsr $6020.w		; 20 20 60
	rti		; 40

	rts		; 60

	jsr $2060.w		; 20 60 20
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $1C00.w		; 0E 00 1C
	php		; 08
	trb $0C00.w		; 1C 00 0C
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	php		; 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	cop $08.b		; 02 08
	jsl $082408.l		; 22 08 24 08
	bit $08.b		; 24 08
	bit $08.b		; 24 08
	jsr $2040.w		; 20 40 20
	rti		; 40

	bmi  28.b		; 30 1C
	trb $1C1C.w		; 1C 1C 1C
	clc		; 18
	clc		; 18
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $07.b		; 06 07
	tsb $183C.w		; 0C 3C 18
	sei		; 78
	rts		; 60

	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $007F01.l,X		; FF 01 7F 00
	ora $000100.l		; 0F 00 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	php		; 08
	ora $030318.l,X		; 1F 18 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	ora [$1C.b]		; 07 1C
	ora $06.b,S		; 03 06
	ora ($01.b,X)		; 01 01
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	ora ($10.b,X)		; 01 10
	ora $031020.l		; 0F 20 10 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora ($0F.b,X)		; 01 0F
	ora $5E86BC.l		; 0F BC 86 5E
	cmp $2E.b,S		; C3 2E
	sbc ($00.b,X)		; E1 00
	sbc ($80.b),Y		; F1 80
	adc ($F0.b),Y		; 71 F0
	phb		; 8B
	inx		; E8
	inc $7C.b,X		; F6 7C
	bvs 120.b		; 70 78
	brk $BC.b		; 00 BC
	bra  94.b		; 80 5E
	rti		; 40

	ora $010F11.l,X		; 1F 11 0F 01
	asl $82.b		; 06 82
	bit $E4.b		; 24 E4
	beq -16.b		; F0 F0
	eor #$1E20.w		; 49 20 1E
	adc ($94.b,X)		; 61 94
	eor $9C.b,S		; 43 9C
	eor $88.b,S		; 43 88
	lsr $90.b		; 46 90
	jmp $4E90.w		; 4C 90 4E
	bvc   8.b		; 50 08
	asl $181E.w,X		; 1E 1E 18
	clc		; 18
	sec		; 38
	sec		; 38
	bmi  48.b		; 30 30
	and ($31.b),Y		; 31 31
	and $23.b,S		; 23 23
	and ($21.b,X)		; 21 21
	and [$27.b]		; 27 27
	php		; 08
	cpy #$10.b		; C0 10
	bra  32.b		; 80 20
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $30.b		; 00 30
	bmi  96.b		; 30 60
	rts		; 60

	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFCFF.l,X		; FF FF FC FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $00FF38.l,X		; 3F 38 FF 00
	sbc $60E000.l,X		; FF 00 E0 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $7F.b		; 00 7F
	adc $FFC0FF.l,X		; 7F FF C0 FF
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00FF0C.l		; 0F 0C FF 00
	sed		; F8
	php		; 08
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $3F.b		; 00 3F
	ora $E1FF.w,X		; 1D FF E1
	sbc $00E300.l,X		; FF 00 E3 00
	ora $01.b,S		; 03 01
	ora $007F04.l		; 0F 04 7F 00
	brk $0D.b		; 00 0D
	php		; 08
	adc $0AFB40.l,X		; 7F 40 FB 0A
	rep #$42		; C2 42
	ora ($01.b,X)		; 01 01
	ora [$04.b]		; 07 04
	asl $7012.w,X		; 1E 12 70
	sbc $C5FCF0.l,X		; FF F0 FC C5
	jsr ($F803.w,X)		; FC 03 F8
	ora $F8.b,S		; 03 F8
	phk		; 4B
	sed		; F8
	asl $07F8.w		; 0E F8 07
	sbc ($F0.b),Y		; F1 F0
	brk $F7.b		; 00 F7
	tsb $F3.b		; 04 F3
	brk $8F.b		; 00 8F
	php		; 08
	adc $20E748.l		; 6F 48 E7 20
	sta [$90.b],Y		; 97 90
	asl $0010.w,X		; 1E 10 00
	jsr $8000.w		; 20 00 80
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
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
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$FF.b		; E0 FF
	and $FF07FF.l,X		; 3F FF 07 FF
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF01.l,X		; FF 01 FF 00
	adc $060760.l,X		; 7F 60 07 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ror $00FF.w,X		; 7E FF 00
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$FF.b		; C0 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $37.b		; 00 37
	brk $13.b		; 00 13
	brk $11.b		; 00 11
	brk $70.b		; 00 70
	brk $1F.b		; 00 1F
	brk $36.b		; 00 36
	php		; 08
	bit $08.b		; 24 08
	brk $09.b		; 00 09
	adc $6F6F6F.l		; 6F 6F 6F 6F
	adc $0F0F6F.l		; 6F 6F 0F 0F
	ora [$07.b]		; 07 07
	and [$37.b],Y		; 37 37
	and [$37.b],Y		; 37 37
	rol $36.b,X		; 36 36
	asl $7E.b		; 06 7E
	sec		; 38
	jmp ($7E3E.w,X)		; 7C 3E 7E
	ora $4408C7.l		; 0F C7 08 44
	clc		; 18
	eor $50.b		; 45 50
	sta $4D90.w		; 8D 90 4D
	sty $FE.b		; 84 FE
	tya		; 98
	inc $BE86.w,X		; FE 86 BE
	brk $3F.b		; 00 3F
	bra -65.b		; 80 BF
	bra -65.b		; 80 BF
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $071F.w,X		; 1E 1F 07
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -128.b		; F0 80
	sbc $001F00.l,X		; FF 00 1F 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F8.b		; 00 F8
	php		; 08
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor [$20.b]		; 47 20
	stx $1B41.w		; 8E 41 1B
	sty $2C.b		; 84 2C
	cop $50.b		; 02 50
	tsb $18A1.w		; 0C A1 18
	.db $42, $30		; 42 30
	sty $60.b		; 84 60
	ora $3E3E1F.l,X		; 1F 1F 3E 3E
	sei		; 78
	sei		; 78
	sbc ($F1.b),Y		; F1 F1
	sbc $E3.b,S		; E3 E3
	dec $C6.b		; C6 C6
	sty $188C.w		; 8C 8C 18
	clc		; 18
	clv		; B8
	rti		; 40

	beq   8.b		; F0 08
	beq -32.b		; F0 E0
	rts		; 60

	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	rts		; 60

	cpx #$80.b		; E0 80
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $58.b		; 00 58
	bit $34.b		; 24 34
	cop $02.b		; 02 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
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
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora $FFFF07.l,X		; 1F 07 FF FF
	sbc $C0FFFC.l,X		; FF FC FF C0
	sbc $00F000.l,X		; FF 00 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	rts		; 60

	sbc $00FF00.l,X		; FF 00 FF 00
	sed		; F8
	php		; 08
	bra -128.b		; 80 80
	brk $03.b		; 00 03
	ora ($3F.b,X)		; 01 3F
	asl $F0FF.w,X		; 1E FF F0
	sbc $00FCC0.l,X		; FF C0 FC 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	tsb $7F.b		; 04 7F
	rti		; 40

	jsr ($F004.w,X)		; FC 04 F0
	bpl -128.b		; 10 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora ($20.b,X)		; 01 20
	sbc $00FC80.l,X		; FF 80 FC 00
	beq   6.b		; F0 06
	ora ($0C.b,X)		; 01 0C
	ora $19.b,S		; 03 19
	asl $33.b		; 06 33
	tsb $7807.w		; 0C 07 78
	sed		; F8
	dey		; 88
	cpx #$20.b		; E0 20
	bra -125.b		; 80 83
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7E.b		; 00 7E
	brk $FD.b		; 00 FD
	asl $F1.b		; 06 F1
	pei ($31.b)		; D4 31
	asl $13.b,X		; 16 13
	jmp ($D08F.w)		; 6C 8F D0
	ora ($EC.b)		; 12 EC
	bit $12D0.w		; 2C D0 12
	jmp ($1FCC.w)		; 6C CC 1F
	ora ($0E.b),Y		; 11 0E
	brk $0C.b		; 00 0C
	cpx #$00.b		; E0 00
	bne   0.b		; D0 00
	lda $103F08.l,X		; BF 08 3F 10
	and $00FF48.l,X		; 3F 48 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	pla		; 68
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$00.b		; E0 00
	inc $0707.w,X		; FE 07 07
	brk $0F.b		; 00 0F
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	asl $07.b		; 06 07
	php		; 08
	trb $0706.w		; 1C 06 07
	brk $0F.b		; 00 0F
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	asl $1F.b		; 06 1F
	php		; 08
	and $000000.l,X		; 3F 00 00 00
	ora $FF.b,S		; 03 FF
	sbc $01FF0F.l,X		; FF 0F FF 01
	and $000300.l,X		; 3F 00 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	jsr $0407.w		; 20 07 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $203F00.l,X		; FF 00 3F 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$1B12.w		; 09 12 1B
	bit $3F.b		; 24 3F
	brk $27.b		; 00 27
	bpl  39.b		; 10 27
	bpl   7.b		; 10 07
	bpl   3.b		; 10 03
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	bit $00.b		; 24 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	adc $007F00.l,X		; 7F 00 7F 00
	and $001F00.l,X		; 3F 00 1F 00
	ora [$11.b]		; 07 11
	jmp $8C31.w		; 4C 31 8C
	and ($88.b,S),Y		; 33 88
	and ($88.b,S),Y		; 33 88
	and ($89.b)		; 32 89
	and ($89.b)		; 32 89
	bmi -127.b		; 30 81
	ora ($00.b,X)		; 01 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	jsr $0080.w		; 20 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   2.b		; F0 02
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $38.b,S		; 03 38
	and $646664.l,X		; 3F 64 66 64
	ror $62.b		; 66 62
	.db $62, $62, $62		; 62 62 62
	bit $00FC.w,X		; 3C FC 00
	brk $03.b		; 00 03
	brk $3F.b		; 00 3F
	jsr $587E.w		; 20 7E 58
	ror $7E58.w,X		; 7E 58 7E
	jmp $3C1C7E.l		; 5C 7E 1C 3C
	cpy #$80.b		; C0 80
	beq -48.b		; F0 D0
	bmi  -8.b		; 30 F8
	sec		; 38
	sec		; 38
	sec		; 38
	clc		; 18
	clc		; 18
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$10.b		; E0 10
	jsr $9810.w		; 20 10 98
	clv		; B8
	sed		; F8
	sed		; F8
	tya		; 98
	tya		; 98
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0F00.w		; 0D 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $3E0D0D.l		; 0F 0D 0D 3E
	ora ($7D.b,X)		; 01 7D
	ora $0E.b,S		; 03 0E
	ora $1F1F0F.l,X		; 1F 0F 1F 1F
	and $9F3F1F.l,X		; 3F 1F 3F 9F
	and $001FCF.l,X		; 3F CF 1F 00
	xce		; FB
	brk $07.b		; 00 07
	brk $3F.b		; 00 3F
	ora [$3F.b]		; 07 3F
	ora [$7F.b]		; 07 7F
	ora [$7F.b]		; 07 7F
	cmp [$FF.b]		; C7 FF
	sbc [$FF.b]		; E7 FF
	beq -31.b		; F0 E1
	inc $FAF1.w,X		; FE F1 FA
	sbc $FD32.w,X		; FD 32 FD
	dec $F0E1.w,X		; DE E1 F0
	sbc ($C0.b,X)		; E1 C0
	sbc $E7C0.w,Y		; F9 C0 E7
	cpx #$FE.b		; E0 FE
	beq  -2.b		; F0 FE
	bvs  -2.b		; 70 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	stx $86FE.w		; 8E FE 86
	inc $C0.b		; E6 C0
	cpy #$7D.b		; C0 7D
	ror $7F7F.w,X		; 7E 7F 7F
	adc $000E7F.l,X		; 7F 7F 0E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	sbc $00FF7E.l,X		; FF 7E FF 00
	sbc $008F00.l,X		; FF 00 8F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	tsa		; 3B
	ora ($E6.b)		; 12 E6
	cpy $38.b		; C4 38
	php		; 08
	bpl  16.b		; 10 10
	tsb $00.b		; 04 00
	bmi  32.b		; 30 20
	sec		; 38
	rts		; 60

	sei		; 78
	ora ($FF.b),Y		; 11 FF
	cop $FF.b		; 02 FF
	brk $E6.b		; 00 E6
	php		; 08
	cpx $1818.w		; EC 18 18
	php		; 08
	php		; 08
	bmi   0.b		; 30 00
	bvs   0.b		; 70 00
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
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	tsb $02.b		; 04 02
	jsr $411C.w		; 20 1C 41
	sec		; 38
	.db $42, $20		; 42 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora $00001F.l,X		; 1F 1F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	clc		; 18
	bit $3F3C.w,X		; 3C 3C 3F
	rol $003F.w,X		; 3E 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $1C.b		; 00 1C
	php		; 08
	rol $3F1C.w,X		; 3E 1C 3F
	asl $3E3F.w,X		; 1E 3F 3E
	rol $3E1E.w,X		; 3E 1E 3E
	bit $3C1C.w,X		; 3C 1C 3C
	trb $3C1C.w		; 1C 1C 3C
	sei		; 78
	bit $7C38.w,X		; 3C 38 7C
	jmp ($1E78.w,X)		; 7C 78 1E
	and $0C3E1E.l,X		; 3F 1E 3E 0C
	rol $3C08.w,X		; 3E 08 3C
	clc		; 18
	bit $7C18.w,X		; 3C 18 7C
	clc		; 18
	jmp ($7C30.w,X)		; 7C 30 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $0F.b,S		; 03 0F
	asl $1E.b		; 06 1E
	clc		; 18
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $001E00.l		; 0F 00 1E 00
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $3E30.w		; 1C 30 3E
	adc ($7E.b,X)		; 61 7E
	rti		; 40

	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	php		; 08
	lsr $7E02.w		; 4E 02 7E
	bit $7C3C.w,X		; 3C 3C 7C
	sec		; 38
	jmp ($7C78.w,X)		; 7C 78 7C
	jsr ($8C78.w,X)		; FC 78 8C
	bvs   0.b		; 70 00
	php		; 08
	cpx #$04.b		; E0 04
	clc		; 18
	ror $7E38.w,X		; 7E 38 7E
	bmi 126.b		; 30 7E
	bmi 126.b		; 30 7E
	jsr $00FC.w		; 20 FC 00
	sty $F4F0.w		; 8C F0 F4
	sed		; F8
	sed		; F8
	brk $D0.b		; 00 D0
	bcs 120.b		; B0 78
	sed		; F8
	jmp $C67C.w		; 4C 7C C6
	lsr $2FC3.w,X		; 5E C3 2F
	sbc ($17.b,X)		; E1 17
	beq  11.b		; F0 0B
	sed		; F8
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	bmi -128.b		; 30 80
	sec		; 38
	brk $BC.b		; 00 BC
	bra -34.b		; 80 DE
	cpy #$6F.b		; C0 6F
	rts		; 60

	and [$30.b],Y		; 37 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$60.b		; C0 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	jmp $4833.w		; 4C 33 48
	and $663F30.l,X		; 3F 30 3F 66
	sei		; 78
	cmp $F878F7.l		; CF F7 78 F8
	eor [$E7.b],Y		; 57 E7
	lda $FC025F.l,X		; BF 5F 02 FC
	tsb $38F1.w		; 0C F1 38
	cmp $70.b,S		; C3 70
	sta [$F0.b]		; 87 F0
	ora $07FF18.l		; 0F 18 FF 07
	sbc $D0FF1F.l,X		; FF 1F FF D0
	rol $C020.w		; 2E 20 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	ldy #$C0.b		; A0 C0
	rti		; 40

	bra -96.b		; 80 A0
	cpy #$A0.b		; C0 A0
	cpy #$00.b		; C0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	ora $0B.b,S		; 03 0B
	asl $0E.b		; 06 0E
	tsb $0C.b		; 04 0C
	ora $00.b,S		; 03 00
	ora $04.b,S		; 03 04
	ora ($04.b,X)		; 01 04
	ora ($00.b,X)		; 01 00
	ora ($02.b,X)		; 01 02
	asl $03.b		; 06 03
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	tsb $FB.b		; 04 FB
	trb $68.b		; 14 68
	ora ($68.b)		; 12 68
	cop $38.b		; 02 38
	ora $34.b,S		; 03 34
	sta ($34.b,X)		; 81 34
	sta ($32.b,X)		; 81 32
	bcc  34.b		; 90 22
	php		; 08
	sbc $87B783.l		; EF 83 B7 87
	sta [$C7.b],Y		; 97 C7
	cmp [$C3.b]		; C7 C3
	cmp $C3.b,S		; C3 C3
	cmp $C1.b,S		; C3 C1
	cmp ($C1.b,X)		; C1 C1
	cmp ($00.b,X)		; C1 00
	cop $02.b		; 02 02
	tsb $02.b		; 04 02
	ora $04.b		; 05 04
	ora #$0904.w		; 09 04 09
	php		; 08
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	phd		; 0B
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	php		; 08
	ora $CA0348.l		; 0F 48 03 CA
	tsb $83.b		; 04 83
	bit $81.b		; 24 81
	rol $2291.w,X		; 3E 91 22
	bit #$8932.w		; 89 32 89
	and ($88.b)		; 32 88
	and ($3C.b)		; 32 3C
	ldy $BB38.w,X		; BC 38 BB
	clc		; 18
	stp		; DB
	brk $E3.b		; 00 E3
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
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
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	brk $61.b		; 00 61
	adc ($FB.b),Y		; 71 FB
	eor ($5B.b),Y		; 51 5B
	ora ($1B.b),Y		; 11 1B
	jsr $80B9.w		; 20 B9 80
	bvs  96.b		; 70 60
	brk $60.b		; 00 60
	brk $61.b		; 00 61
	ora ($FB.b,X)		; 01 FB
	and ($FB.b)		; 32 FB
	lda ($FB.b)		; B2 FB
	cpx #$F9.b		; E0 F9
	rti		; 40

	bvs   0.b		; 70 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	sta $E7.b,S		; 83 E7
	dec $FF.b		; C6 FF
	cpy $98FF.w		; CC FF 98
	sbc $08FF30.l,X		; FF 30 FF 08
	sbc $030101.l,X		; FF 01 01 03
	cop $C3.b		; 02 C3
	brk $E7.b		; 00 E7
	brk $EE.b		; 00 EE
	brk $FD.b		; 00 FD
	and ($FD.b,X)		; 21 FD
	mvp $62,$7F		; 44 7F 62
	cpy #$F8.b		; C0 F8
	bcc -23.b		; 90 E9
	ora ($EB.b),Y		; 11 EB
	and ($EF.b,S),Y		; 33 EF
	asl $FF.b		; 06 FF
	tsb $18FF.w		; 0C FF 18
	inc $FCC0.w,X		; FE C0 FC
	cpx #$08.b		; E0 08
	cmp ($09.b,X)		; C1 09
	lda $0A.b,S		; A3 0A
	adc [$0C.b]		; 67 0C
	and $929E09.l		; 2F 09 9E 92
	jmp.w [$E844]		; DC 44 E8
	plp		; 28
	adc ($FF.b),Y		; 71 FF
	cmp $FF.b,S		; C3 FF
	stx $E7.b		; 86 E7
	tsb $18CF.w		; 0C CF 18
	stz $3C30.w,X		; 9E 30 3C
	rts		; 60

	sei		; 78
	cpy #$F0.b		; C0 F0
	adc $10F306.l,X		; 7F 06 F3 10
	cmp [$40.b]		; C7 40
	stx $1C80.w		; 8E 80 1C
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	inc $FE00.w,X		; FE 00 FE
	brk $BF.b		; 00 BF
	tsb $1F.b		; 04 1F
	tsb $1E.b		; 04 1E
	tsb $183E.w		; 0C 3E 18
	bit $7C30.w,X		; 3C 30 7C
	cpy $9E0C.w		; CC 0C 9E
	asl $181E.w,X		; 1E 1E 18
	asl $0E00.w		; 0E 00 0E
	brk $1E.b		; 00 1E
	ora ($1C.b)		; 12 1C
	brk $3C.b		; 00 3C
	tsb $00.b		; 04 00
	brk $20.b		; 00 20
	jsr $3030.w		; 20 30 30
	sec		; 38
	sec		; 38
	bit $3C3C.w,X		; 3C 3C 3C
	bit $3C3C.w,X		; 3C 3C 3C
	bit $003C.w,X		; 3C 3C 00
	jsr $3020.w		; 20 20 30
	jsr $103C.w		; 20 3C 10
	rol $3E38.w,X		; 3E 38 3E
	sec		; 38
	rol $3E38.w,X		; 3E 38 3E
	bmi  60.b		; 30 3C
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
	rti		; 40

	tya		; 98
	tya		; 98
	jsr $00B8.w		; 20 B8 00
	bmi  64.b		; 30 40
	bvs -128.b		; 70 80
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0F20.w,X		; 1E 20 0F
	bmi  15.b		; 30 0F
	bpl  15.b		; 10 0F
	bpl   0.b		; 10 00
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	and $3F3C5B.l,X		; 3F 5B 3C 3F
	bpl  62.b		; 10 3E
	bpl  12.b		; 10 0C
	bpl  40.b		; 10 28
	and ($30.b,X)		; 21 30
	and [$0B.b],Y		; 37 0B
	bvc  28.b		; 50 1C
	jsr ($7B0B.w,X)		; FC 0B 7B
	ora [$37.b]		; 07 37
	ora [$37.b]		; 07 37
	ora [$37.b]		; 07 37
	rol $36.b		; 26 36
	brk $78.b		; 00 78
	ora [$77.b]		; 07 77
	brk $F8.b		; 00 F8
	tya		; 98
	stz $18.b		; 64 18
	jsl $002210.l		; 22 10 22 00
	jsl $00C400.l		; 22 00 C4 00
	jmp.w [$401C]		; DC 1C 40
	brk $40.b		; 00 40
	tya		; 98
	tya		; 98
	jmp.w [$DCDC]		; DC DC DC
	jmp.w [$DCDC]		; DC DC DC
	sec		; 38
	sec		; 38
	jsr $B822.w		; 20 22 B8
	tsx		; BA
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc  33.b		; 90 21
	bcc  33.b		; 90 21
	bcc  32.b		; 90 20
	bcc  32.b		; 90 20
	bcc  32.b		; 90 20
	pha		; 48
	bpl  96.b		; 10 60
	php		; 08
	rts		; 60

	dey		; 88
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	beq -16.b		; F0 F0
	bvs 112.b		; 70 70
	tsb $0619.w		; 0C 19 06
	bpl  31.b		; 10 1F
	bpl  14.b		; 10 0E
	brk $0C.b		; 00 0C
	jsr $2119.w		; 20 19 21
	bit $27.b		; 24 27
	clc		; 18
	eor $1E0304.l		; 4F 04 03 1E
	ora ($0F.b),Y		; 11 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	jsr $031B.w		; 20 1B 03
	and ($0F.b),Y		; 31 0F
	dey		; 88
	ora ($00.b),Y		; 11 00
	ora $07.b,S		; 03 07
	and $714C.w,Y		; 39 4C 71
	txs		; 9A
	sbc $14.b,S		; E3 14
	inc $28.b		; E6 28
	dec $D826.w		; CE 26 D8
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	inc $20.b		; E6 20
	lda $405C21.l		; AF 21 5C 40
	tsx		; BA
	ldx #$74.b		; A2 74
	mvp $5C,$60		; 44 60 5C
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cld		; D8
	sed		; F8
	bne  -8.b		; D0 F8
	rti		; 40

	sed		; F8
	rti		; 40

	bcc  64.b		; 90 40
	brk $70.b		; 00 70
	bvs  96.b		; 70 60
	cpx #$19.b		; E0 19
	cpy #$F8.b		; C0 F8
	tya		; 98
	beq -104.b		; F0 98
	rts		; 60

	tya		; 98
	rts		; 60

	beq  96.b		; F0 60
	rts		; 60

	bvs 112.b		; 70 70
	rts		; 60

	jsr ($FE00.w,X)		; FC 00 FE
	bit $3EFF.w,X		; 3C FF 3E
	sbc $0EFF1E.l,X		; FF 1E FF 0E
	adc $073F00.l,X		; 7F 00 3F 07
	clc		; 18
	eor $304F30.l		; 4F 30 4F 30
	sbc $80FF81.l,X		; FF 81 FF 80
	adc $003F40.l,X		; 7F 40 3F 00
	asl $0810.w,X		; 1E 10 08
	ora $007F00.l		; 0F 00 7F 00
	sbc $63F961.l,X		; FF 61 F9 63
	sbc ($66.b,S),Y		; F3 66
	sbc [$08.b],Y		; F7 08
	sbc $E01EF0.l,X		; FF F0 1E E0
	bit $70C8.w,X		; 3C C8 70
	bmi -49.b		; 30 CF
	sbc ($00.b,X)		; E1 00
	sbc $80.b,S		; E3 80
	adc [$01.b]		; 67 01
	lsr $1C02.w		; 4E 02 1C
	cpx $38.b		; E4 38
	iny		; C8
	bvs -104.b		; 70 98
	cmp $7B.b,S		; C3 7B
	bra -32.b		; 80 E0
	brk $C1.b		; 00 C1
	ora ($83.b,X)		; 01 83
	ora $07.b,S		; 03 07
	asl $0F.b		; 06 0F
	trb $703E.w		; 1C 3E 70
	sed		; F8
	brk $E0.b		; 00 E0
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $7802.w,X		; 1E 02 78
	php		; 08
	cpx #$20.b		; E0 20
	rts		; 60

	sed		; F8
	cpy #$F0.b		; C0 F0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	php		; 08
	beq  16.b		; F0 10
	cpx #$20.b		; E0 20
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs  60.b		; 70 3C
	bvs  56.b		; 70 38
	sei		; 78
	tsa		; 3B
	and ($77.b),Y		; 31 77
	sbc [$7F.b]		; E7 7F
	cpy $307F.w		; CC 7F 30
	jsr ($F860.w,X)		; FC 60 F8
	brk $7C.b		; 00 7C
	bmi 124.b		; 30 7C
	and ($7D.b),Y		; 31 7D
	and [$7C.b],Y		; 37 7C
	and $C01EE0.l		; 2F E0 1E C0
	sec		; 38
	bra -16.b		; 80 F0
	bra   1.b		; 80 01
	ora $787F0F.l		; 0F 0F 7F 78
	sbc $00FFC0.l,X		; FF C0 FF 00
	cpx #$00.b		; E0 00
	ora [$00.b]		; 07 00
	ora $077F1C.l,X		; 1F 1C 7F 07
	tsb $3F.b		; 04 3F
	jsr $02FF.w		; 20 FF 02
	beq  16.b		; F0 10
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	ora $233F09.l		; 0F 09 3F 23
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora $70.b,S		; 03 70
	brk $28.b		; 00 28
	bcc   4.b		; 90 04
	pla		; 68
	jsl $209804.l		; 22 04 98 20
	sta $003E20.l		; 8F 20 3E 00
	jmp ($C080.w,X)		; 7C 80 C0
	cld		; D8
	rti		; 40

	jmp $009E00.l		; 5C 00 9E 00
	sbc $00F700.l,X		; FF 00 F7 00
	beq   0.b		; F0 00
	cpy #$00.b		; C0 00
	brk $70.b		; 00 70
	bra  64.b		; 80 40
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
	brk $20.b		; 00 20
	eor $75.b		; 45 75
	adc $15.b		; 65 15
	adc $05.b,X		; 75 05
	and $02.b,X		; 35 02
	inc A		; 1A
	brk $0A.b		; 00 0A
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bpl -49.b		; 10 CF
	eor $CF.b,X		; 55 CF
	and $EF.b		; 25 EF
	bcc -33.b		; 90 DF
	dey		; 88
	lda $008780.l		; AF 80 87 00
	ora $00.b,S		; 03 00
	ora ($40.b,X)		; 01 40
	bra  96.b		; 80 60
	bra  32.b		; 80 20
	rti		; 40

	jsr $0040.w		; 20 40 00
	rts		; 60

	brk $20.b		; 00 20
	bcc  32.b		; 90 20
	bcc  32.b		; 90 20
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	bcc  32.b		; 90 20
	bpl  32.b		; 10 20
	bvc   0.b		; 50 00
	bpl -96.b		; 10 A0
	php		; 08
	bne   4.b		; D0 04
	pha		; 48
	trb $1C40.w		; 1C 40 1C
	jsr $C0C0.w		; 20 C0 C0
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	rti		; 40

	rti		; 40

	jsr $3020.w		; 20 20 30
	bmi  32.b		; 30 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
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
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F8.b		; C0 F8
	cpx #$FC.b		; E0 FC
	beq  -4.b		; F0 FC
	bvs  -4.b		; 70 FC
	bvs  -8.b		; 70 F8
	rts		; 60

	sed		; F8
	cpx #$F8.b		; E0 F8
	cpy #$FC.b		; C0 FC
	beq  16.b		; F0 10
	sed		; F8
	php		; 08
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	dey		; 88
	beq   0.b		; F0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	php		; 08
	and ($04.b,X)		; 21 04
	ora ($02.b),Y		; 11 02
	php		; 08
	ora ($04.b,X)		; 01 04
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	asl $0E1E.w,X		; 1E 1E 0E
	asl $0707.w		; 0E 07 07
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ldx #$04.b		; A2 04
	ora ($80.b)		; 12 80
	.db $42, $80		; 42 80
	rol A		; 2A
	rti		; 40

	asl $20.b,X		; 16 20
	dey		; 88
	bpl -120.b		; 10 88
	bpl -120.b		; 10 88
	bpl  24.b		; 10 18
	clc		; 18
	tsb $0C0C.w		; 0C 0C 0C
	tsb $8484.w		; 0C 84 84
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	pld		; 2B
	adc $B6.b,S		; 63 B6
	sta [$D8.b]		; 87 D8
	ora $037F61.l,X		; 1F 61 7F 03
	sbc $23CF20.l,X		; FF 20 CF 23
	eor [$11.b]		; 47 11
	and $1C.b,S		; 23 1C
	brk $79.b		; 00 79
	ora ($E4.b,X)		; 01 E4
	tsb $90.b		; 04 90
	ora ($C1.b,S),Y		; 13 C1
	cmp $313F20.l		; CF 20 3F 31
	and $461F18.l,X		; 3F 18 1F 46
	dey		; 88
	ora [$D8.b]		; 07 D8
	and [$F8.b]		; 27 F8
	cmp [$F8.b]		; C7 F8
	sbc ($FC.b,S),Y		; F3 FC
	xce		; FB
	jsr ($FCFB.w,X)		; FC FB FC
	sbc $7D00FA.l,X		; FF FA 00 7D
	brk $3C.b		; 00 3C
	jsr $C0FE.w		; 20 FE C0
	inc $FE80.w,X		; FE 80 FE
	rts		; 60

	inc $FEF0.w,X		; FE F0 FE
	sbc ($FE.b)		; F2 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	cop $0C.b		; 02 0C
	ora [$19.b]		; 07 19
	asl $1433.w		; 0E 33 14
	and [$00.b]		; 27 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	tsb $0E.b		; 04 0E
	php		; 08
	ora $3B11.w,X		; 1D 11 3B
	and $E4.b,S		; 23 E4
	ora ($4C.b,S),Y		; 13 4C
	jsl $898608.l		; 22 08 86 89
	cpy $91.b		; C4 91
	pea $E021.w		; F4 21 E0
	trb $7880.w		; 1C 80 78
	ora ($00.b,X)		; 01 00
	sbc $80FF00.l,X		; FF 00 FF 80
	sbc $407F40.l,X		; FF 40 7F 40
	eor $7C8798.l		; 4F 98 87 7C
	ora $FF.b,S		; 03 FF
	ora ($2C.b,X)		; 01 2C
	tsb $0434.w		; 0C 34 04
	ora $0F0B07.l,X		; 1F 07 0B 0F
	tas		; 1B
	ora $181F14.l,X		; 1F 14 1F 18
	trb $0C02.w		; 1C 02 0C
	rol $3E32.w,X		; 3E 32 3E
	dec A		; 3A
	ora $030F1B.l,X		; 1F 1B 0F 03
	ora $101F13.l,X		; 1F 13 1F 10
	ora $0F031B.l,X		; 1F 1B 03 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra -125.b		; 80 83
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	bpl  48.b		; 10 30
	sec		; 38
	sei		; 78
	sei		; 78
	trb $3078.w		; 1C 78 30
	bit $1C06.w,X		; 3C 06 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	bmi  56.b		; 30 38
	bvs 124.b		; 70 7C
	bpl 124.b		; 10 7C
	bmi 126.b		; 30 7E
	brk $3E.b		; 00 3E
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
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora [$1F.b]		; 07 1F
	asl $707F.w,X		; 1E 7F 70
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $407F10.l,X		; 1F 10 7F 40
	jsr ($0004.w,X)		; FC 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	and $FFFF7F.l,X		; 3F 7F FF FF
	sbc $00C000.l,X		; FF 00 C0 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	bpl  -1.b		; 10 FF
	brk $FF.b		; 00 FF
	brk $80.b		; 00 80
	bra   3.b		; 80 03
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F8.b		; E0 F8
	sbc $0FFFFF.l,X		; FF FF FF 0F
	sbc $00FF03.l,X		; FF 03 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	inc $FF02.w,X		; FE 02 FF
	brk $7F.b		; 00 7F
	rti		; 40

	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $FF.b,S		; 03 FF
	cmp ($FF.b,X)		; C1 FF
	cpx #$FF.b		; E0 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp [$44.b]		; C7 44
	sbc ($12.b,S),Y		; F3 12
	sbc $0109.w,Y		; F9 09 01
	ora $0B3F07.l,X		; 1F 07 3F 0B
	and $013F0A.l,X		; 3F 0A 3F 01
	dec A		; 3A
	trb $08.b		; 14 08
	ora #$0304.w		; 09 04 03
	php		; 08
	ora [$04.b],Y		; 17 04
	and $153F0B.l,X		; 3F 0B 3F 15
	asl $0E04.w,X		; 1E 04 0E
	cop $02.b		; 02 02
	ora ($02.b,X)		; 01 02
	ora ($06.b,X)		; 01 06
	brk $6A.b		; 00 6A
	xce		; FB
	sbc $F5.b		; E5 F5
	adc $F1.b		; 65 F1
	rts		; 60

	xce		; FB
	beq  63.b		; F0 3F
	tay		; A8
	eor [$C8.b],Y		; 57 C8
	adc [$50.b],Y		; 77 50
	sta [$EF.b],Y		; 97 EF
	tsb $EF.b		; 04 EF
	rol $2EFF.w		; 2E FF 2E
	sbc [$04.b],Y		; F7 04
	and $461F01.l,X		; 3F 01 1F 46
	tad		; 5B
	rti		; 40

	ror A		; 6A
	bra   1.b		; 80 01
	brk $01.b		; 00 01
	cop $01.b		; 02 01
	brk $02.b		; 00 02
	tsb $01.b		; 04 01
	tsb $07.b		; 04 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora $02.b,S		; 03 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	jsr $4030.w		; 20 30 40
	rts		; 60

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$80.b		; C0 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,X		; 15 00
	tsb $0400.w		; 0C 00 04
	brk $05.b		; 00 05
	brk $01.b		; 00 01
	tsb $02.b		; 04 02
	ora $7204.w,Y		; 19 04 72
	ora #$0B08.w		; 09 08 0B
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	sbc $9E7FE6.l,X		; FF E6 7F 9E
	sbc $F47C.w,X		; FD 7C F4
	beq   1.b		; F0 01
	trb $21.b		; 14 21
	sty $21.b,X		; 94 21
	sty $49.b,X		; 94 49
	bit $06.b		; 24 06
	inc $FE1C.w,X		; FE 1C FE
	bvs  -2.b		; 70 FE
	cpy #$FF.b		; C0 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	plp		; 28
	lsr $9E1B.w		; 4E 1B 9E
	and [$BC.b],Y		; 37 BC
	ora [$F8.b]		; 07 F8
	ora $301E70.l		; 0F 70 1E 30
	and $3E21.w,X		; 3D 21 3E
	and $77.b,S		; 23 77
	lsr $61.b		; 46 61
	brk $43.b		; 00 43
	brk $6F.b		; 00 6F
	pla		; 68
	ora $000F10.l,X		; 1F 10 0F 00
	asl $1D00.w,X		; 1E 00 1D
	ora ($F0.b,X)		; 01 F0
	ora $E0.b,S		; 03 E0
	ora [$D0.b]		; 07 D0
	trb $38A0.w		; 1C A0 38
	rti		; 40

	bvs -128.b		; 70 80
	cpx #$00.b		; E0 00
	beq 120.b		; F0 78
	bra  -1.b		; 80 FF
	ora $FE.b,S		; 03 FE
	asl $EC.b		; 06 EC
	tsb $18D8.w		; 0C D8 18
	ldy #$20.b		; A0 20
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $30.b		; 00 30
	ora ($00.b,X)		; 01 00
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc ($FF.b),Y		; F1 FF
	cpx #$F0.b		; E0 F0
	cpy #$E0.b		; C0 E0
	jsr $40C0.w		; 20 C0 40
	brk $20.b		; 00 20
	brk $07.b		; 00 07
	sbc $F0FFEF.l,X		; FF EF FF F0
	sbc $40FFE0.l,X		; FF E0 FF 40
	beq   0.b		; F0 00
	cpx #$60.b		; E0 60
	rts		; 60

	bmi  48.b		; 30 30
	tsb $0E.b		; 04 0E
	asl $0F.b		; 06 0F
	asl $0707.w		; 0E 07 07
	ora [$07.b]		; 07 07
	ora [$00.b]		; 07 00
	ora [$06.b]		; 07 06
	ora $00.b,S		; 03 00
	ora $04.b,S		; 03 04
	ora $060F04.l,X		; 1F 04 0F 06
	ora $030F02.l		; 0F 02 0F 03
	ora [$03.b]		; 07 03
	tsb $02.b		; 04 02
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	ora $189F04.l		; 0F 04 9F 18
	inc $FF20.w,X		; FE 20 FF
	brk $FF.b		; 00 FF
	cop $FF.b		; 02 FF
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora $911F88.l		; 0F 88 1F 91
	ror $38C2.w,X		; 7E C2 38
	php		; 08
	tsb $00.b		; 04 00
	xce		; FB
	dey		; 88
	cpy #$F8.b		; C0 F8
	brk $E0.b		; 00 E0
	brk $C1.b		; 00 C1
	brk $87.b		; 00 87
	ora $1F.b,S		; 03 1F
	tsb $707F.w		; 0C 7F 70
	jsr ($F000.w,X)		; FC 00 F0
	beq  16.b		; F0 10
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	ora $02.b,S		; 03 02
	ora $223E08.l		; 0F 08 3E 22
	sei		; 78
	php		; 08
	ldy #$A0.b		; A0 A0
	ora $1F.b,S		; 03 1F
	asl $307F.w		; 0E 7F 30
	sbc $00F8C0.l,X		; FF C0 F8 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	php		; 08
	and $82FE20.l,X		; 3F 20 FE 82
	beq  16.b		; F0 10
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$FF.b		; C0 FF
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $C005.w,X		; FD 05 C0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs  -2.b		; 70 FE
	php		; 08
	and $000F00.l,X		; 3F 00 0F 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	tsb $3E.b		; 04 3E
	jsl $03090F.l		; 22 0F 09 03
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	php		; 08
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora [$00.b]		; 07 00
	ora [$06.b]		; 07 06
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	bne  22.b		; D0 16
	bcc  30.b		; 90 1E
	eor $78.b,S		; 43 78
	tsb $F5F0.w		; 0C F0 F5
	stz $1A.b,X		; 74 1A
	inc A		; 1A
	jmp $61CD.w		; 4C CD 61
	tsb $EC.b		; 04 EC
	tsb $EA.b		; 04 EA
	asl A		; 0A
	ldy $30.b,X		; B4 30
	brk $0F.b		; 00 0F
	bit $FE.b,X		; 34 FE
	clc		; 18
	sbc $F01F20.l,X		; FF 20 1F F0
	ora $008000.l		; 0F 00 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	and ($0E.b),Y		; 31 0E
	ora $070F0F.l,X		; 1F 0F 0F 07
	asl $01.b		; 06 01
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	ora [$0E.b]		; 07 0E
	ora $010707.l		; 0F 07 07 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E4.b		; 00 E4
	clc		; 18
	adc ($84.b,S),Y		; 73 84
	clc		; 18
	sbc $0C.b,S		; E3 0C
	bmi -122.b		; 30 86
	clc		; 18
	cmp [$08.b]		; C7 08
	adc $84.b,S		; 63 84
	ora ($42.b),Y		; 11 42
	brk $C0.b		; 00 C0
	php		; 08
	iny		; C8
	tsb $84.b		; 04 84
	cmp $C3.b,S		; C3 C3
	sbc ($E1.b,X)		; E1 E1
	beq -16.b		; F0 F0
	sei		; 78
	sei		; 78
	bit $003C.w,X		; 3C 3C 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	rts		; 60

	php		; 08
	bcc  76.b		; 90 4C
	brk $6C.b		; 00 6C
	brk $A4.b		; 00 A4
	php		; 08
	.db $42, $0C		; 42 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	bvs 112.b		; 70 70
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	bvs 112.b		; 70 70
	plp		; 28
	jsr $1054.w		; 20 54 10
	cli		; 58
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	jsr $1070.w		; 20 70 10
	sei		; 78
	cli		; 58
	jmp ($7C6C.w,X)		; 7C 6C 7C
	stz $20.b		; 64 20
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	tsb $08.b		; 04 08
	tsb $0C0C.w		; 0C 0C 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	clc		; 18
	clc		; 18
	trb $1C1C.w		; 1C 1C 1C
	clc		; 18
	tsb $0C00.w		; 0C 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($F5.b,X)		; 01 F5
	cpx #$FA.b		; E0 FA
	beq  -3.b		; F0 FD
	sed		; F8
	sbc $F8.b,X		; F5 F8
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	inc $FFE7.w,X		; FE E7 FF
	sbc ($FF.b,S),Y		; F3 FF
	ora $FF.b,S		; 03 FF
	ora $FF.b,S		; 03 FF
	brk $00.b		; 00 00
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	tsb $0C00.w		; 0C 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	rts		; 60

	brk $30.b		; 00 30
	php		; 08
	clc		; 18
	php		; 08
	tsb $0400.w		; 0C 00 04
	brk $06.b		; 00 06
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	rts		; 60

	rti		; 40

	bmi  32.b		; 30 20
	clc		; 18
	bpl  12.b		; 10 0C
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C0.b		; E0 C0
	jsr $2040.w		; 20 40 20
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $F0.b		; 00 F0
	cpx #$10.b		; E0 10
	ldy #$10.b		; A0 10
	rti		; 40

	bpl  64.b		; 10 40
	bpl  64.b		; 10 40
	bmi -32.b		; 30 E0
	cpx #$E0.b		; E0 E0
	cpx #$00.b		; E0 00
	brk $60.b		; 00 60
	rts		; 60

	rts		; 60

	rts		; 60

	jsr $20A0.w		; 20 A0 20
	ldy #$00.b		; A0 00
	bra  73.b		; 80 49
	bit $C9.b		; 24 C9
	bit $89.b		; 24 89
	stz $89.b		; 64 89
	mvp $44,$89		; 44 89 44
	tya		; 98
	mvp $44,$98		; 44 98 44
	brk $80.b		; 00 80
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	bra  -4.b		; 80 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -32.b		; 80 E0
	beq  -4.b		; F0 FC
	trb $00FF.w		; 1C FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	jsr $04FC.w		; 20 FC 04
	sbc $1F03C1.l,X		; FF C1 03 1F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	rti		; 40

	cpy #$40.b		; C0 40
	rts		; 60

	brk $60.b		; 00 60
	ora $030318.l,X		; 1F 18 03 03
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	rts		; 60

	brk $60.b		; 00 60
	rti		; 40

	jsr $2000.w		; 20 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
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
	rts		; 60

	brk $10.b		; 00 10
	bra   8.b		; 80 08
	rti		; 40

	tsb $60.b		; 04 60
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $DF.b		; 00 DF
	bpl  48.b		; 10 30
	bpl  48.b		; 10 30
	bpl  48.b		; 10 30
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta [$10.b]		; 87 10
	adc $88.b,S		; 63 88
	ora ($E4.b),Y		; 11 E4
	brk $B2.b		; 00 B2
	bra  17.b		; 80 11
	cpy #$11.b		; C0 11
	rts		; 60

	sta ($60.b),Y		; 91 60
	bcc  15.b		; 90 0F
	ora $030707.l		; 0F 07 07 03
	ora $41.b,S		; 03 41
	eor ($E0.b,X)		; 41 E0
	cpx #$E0.b		; E0 E0
	cpx #$60.b		; E0 60
	rts		; 60

	rts		; 60

	rts		; 60

	rti		; 40

	brk $00.b		; 00 00
	rti		; 40

	ldy #$40.b		; A0 40
	bra  32.b		; 80 20
	bpl -96.b		; 10 A0
	php		; 08
	bpl  72.b		; 10 48
	bpl 104.b		; 10 68
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	cpy #$40.b		; C0 40
	rti		; 40

	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	beq -16.b		; F0 F0
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	sec		; 38
	sed		; F8
	cpy $2CCC.w		; CC CC 2C
	tsb $2F7C.w		; 0C 7C 2F
	sbc $CE698D.l,X		; FF 8D 69 CE
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	sed		; F8
	clc		; 18
	jsr ($FC34.w,X)		; FC 34 FC
	pea $F6FF.w		; F4 FF F6
	sbc $7C74.w,X		; FD 74 7C
	bit $00.b,X		; 34 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $F8FF07.l		; 0F 07 FF F8
	sbc $00FE00.l,X		; FF 00 FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	rts		; 60

	sbc $30F000.l,X		; FF 00 F0 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	jsr ($00FF.w,X)		; FC FF 00
	sbc $071F00.l,X		; FF 00 1F 07
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $C0.b		; 00 C0
	cpy #$07.b		; C0 07
	asl $1F.b		; 06 1F
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	bpl  24.b		; 10 18
	sec		; 38
	sec		; 38
	bit $3C34.w,X		; 3C 34 3C
	plp		; 28
	rol $0E13.w,X		; 3E 13 0E
	phd		; 0B
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	bit $7C18.w,X		; 3C 18 7C
	sec		; 38
	jmp ($7E34.w,X)		; 7C 34 7E
	plp		; 28
	adc $033F02.l,X		; 7F 02 3F 03
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($80.b,X)		; 01 80
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   1.b		; 80 01
	cpy #$0F.b		; C0 0F
	tas		; 1B
	ora ($1B.b,X)		; 01 1B
	ora $09.b,S		; 03 09
	asl $09.b		; 06 09
	ora $38.b,S		; 03 38
	ror A		; 6A
	cmp ($EF.b),Y		; D1 EF
	pei ($B5.b)		; D4 B5
	cmp #$0701.w		; C9 01 07
	ora #$000F.w		; 09 0F 00
	ora [$00.b]		; 07 00
	brk $04.b		; 00 04
	brk $46.b		; 00 46
	sei		; 78
	cmp $F8.b,S		; C3 F8
	.db $82, $FC, $80		; 82 FC 80
	jsr ($DC80.w,X)		; FC 80 DC
	brk $98.b		; 00 98
	clc		; 18
	bpl 108.b		; 10 6C
	php		; 08
	ror $C4.b,X		; 76 C4
	dec A		; 3A
.INDEX 8
	sep #$9F		; E2 9F
	adc ($8C.b)		; 72 8C
	sty $28.b		; 84 28
	tay		; A8
	rts		; 60

	rts		; 60

	cpx #$C0.b		; E0 C0
	beq -128.b		; F0 80
	clv		; B8
	bra  92.b		; 80 5C
	rti		; 40

	bit $CEA0.w		; 2C A0 CE
	ora $0E1F4E.l,X		; 1F 4E 1F 0E
	and $2F0F1F.l,X		; 3F 1F 0F 2F
	ora [$3F.b],Y		; 17 3F
	asl $092F.w,X		; 1E 2F 09
	eor $6E602F.l		; 4F 2F 60 6E
	bit $0E2E.w		; 2C 2E 0E
	asl $1F06.w		; 0E 06 1F
	cop $3F.b		; 02 3F
	brk $3F.b		; 00 3F
	php		; 08
	adc $27FF07.l,X		; 7F 07 FF 27
	bpl 103.b		; 10 67
	bpl   1.b		; 10 01
	cpx #$71.b		; E0 71
	.db $82, $D1, $26		; 82 D1 26
	lda [$C0.b]		; A7 C0
	.db $82, $A8, $03		; 82 A8 03
	bit $D8C0.w		; 2C C0 D8
	stx $9E.b		; 86 9E
	asl $3E.b		; 06 3E
	tsb $FC.b		; 04 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	sty $FC.b		; 84 FC
	cop $FA.b		; 02 FA
	sta $C8.b,S		; 83 C8
	bra -16.b		; 80 F0
	ora ($CF.b,X)		; 01 CF
	cop $8E.b		; 02 8E
	ora $0C.b		; 05 0C
	ora [$0C.b]		; 07 0C
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	rti		; 40

	adc $864F40.l,X		; 7F 40 4F 86
	stx $0D.b		; 86 0D
	tsb $080B.w		; 0C 0B 08
	phd		; 0B
	php		; 08
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	jsr $1084.w		; 20 84 10
	trb $1810.w		; 1C 10 18
	cpy #$18.b		; C0 18
	cpy #$18.b		; C0 18
	cpx #$30.b		; E0 30
	cpy #$30.b		; C0 30
	cpy #$20.b		; C0 20
	brk $F8.b		; 00 F8
	php		; 08
	inx		; E8
	inx		; E8
	php		; 08
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $06.b,S		; 03 06
	ora ($04.b,X)		; 01 04
	ora $0C.b,S		; 03 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora $04.b		; 05 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	rol $5E60.w		; 2E 60 5E
	rti		; 40

	and $7A81.w,X		; 3D 81 7A
	ora $F4.b,S		; 03 F4
	ora [$E8.b]		; 07 E8
	asl $1CD0.w		; 0E D0 1C
	ldy #$38.b		; A0 38
	eor $003F40.l,X		; 5F 40 3F 00
	inc $FD80.w,X		; FE 80 FD
	ora ($FA.b,X)		; 01 FA
	cop $F4.b		; 02 F4
	tsb $E8.b		; 04 E8
	php		; 08
	cpy #$00.b		; C0 00
	jsr $0010.w		; 20 10 00
	bvc   0.b		; 50 00
	bvc   0.b		; 50 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	jsr $2020.w		; 20 20 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pla		; 68
	bra  96.b		; 80 60
	dey		; 88
	rti		; 40

	tya		; 98
	brk $B0.b		; 00 B0
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	asl $0F.b		; 06 0F
	tsb $181F.w		; 0C 1F 18
	rol $7C30.w,X		; 3E 30 7C
	jsr $1078.w		; 20 78 10
	jmp ($0101.w,X)		; 7C 01 01
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $1C00.w		; 0E 00 1C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	php		; 08
	bit $3604.w,X		; 3C 04 36
	inc $FF37.w,X		; FE 37 FF
	and ($FF.b,S),Y		; 33 FF
	sei		; 78
	adc $107043.l,X		; 7F 43 70 10
	rti		; 40

	ora [$0F.b]		; 07 0F
	ora $0F.b,S		; 03 0F
	rol $BF06.w,X		; 3E 06 BF
	and [$3B.b]		; 27 3B
	and [$7C.b]		; 27 7C
	adc $4E.b,S		; 63 4E
	ror $4F00.w,X		; 7E 00 4F
	ora [$1F.b]		; 07 1F
	ora $1F.b,S		; 03 1F
	brk $01.b		; 00 01
	sta ($83.b,X)		; 81 83
	sta $87.b,S		; 83 87
	tsb $8F.b		; 04 8F
	php		; 08
	ora $003E10.l,X		; 1F 10 3E 00
	ror $FF86.w,X		; 7E 86 FF
	brk $00.b		; 00 00
	sta ($80.b,X)		; 81 80
	sta $80.b,S		; 83 80
	ora [$81.b]		; 07 81
	asl $1C02.w		; 0E 02 1C
	tsb $30.b		; 04 30
	bcc -114.b		; 90 8E
	.db $82, $78, $FF		; 82 78 FF
	cpy #$FE.b		; C0 FE
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $00F801.l,X		; 7F 01 F8 00
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b		; 05 03
	ora $01.b,S		; 03 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($0F.b,X)		; 01 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($EC.b),Y		; 91 EC
	sbc $D8.b,S		; E3 D8
	sbc [$D1.b]		; E7 D1
	lsr $00DF.w		; 4E DF 00
	eor $002E00.l,X		; 5F 00 2E 00
	brk $00.b		; 00 00
	brk $93.b		; 00 93
	bne -17.b		; D0 EF
	inx		; E8
	ror $21E0.w		; 6E E0 21
	sbc ($2E.b,X)		; E1 2E
	inc $5010.w		; EE 10 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xce		; FB
	stx $F7.b		; 86 F7
	dey		; 88
	adc $874785.l		; 6F 85 47 87
	eor [$1D.b]		; 47 1D
	.db $42, $3F		; 42 3F
	and $3103.w,Y		; 39 03 31
	cop $80.b		; 02 80
	cmp $3030.w		; CD 30 30
	lda $3FB8.w,X		; BD B8 3F
	sec		; 38
	and $20.b		; 25 20
	cop $00.b		; 02 00
	trb $1C3D.w		; 1C 3D 1C
	ora $3ACF.w,X		; 1D CF 3A
	adc [$9F.b]		; 67 9F
	txs		; 9A
	cop $18.b		; 02 18
	tsb $0A.b		; 04 0A
	rep #$04		; C2 04
	jsr ($8030.w,X)		; FC 30 80
	clc		; 18
	sty $14.b		; 84 14
	bpl 105.b		; 10 69
	adc #$F7F0.w		; 69 F0 F7
	beq  -9.b		; F0 F7
	and ($37.b)		; 32 37
	brk $0E.b		; 00 0E
	bvs 126.b		; 70 7E
	bvs 118.b		; 70 76
	stx $56.b		; 86 56
	and #$4980.w		; 29 80 49
	bit $99.b		; 24 99
	mvp $4C,$91		; 44 91 4C
	and ($88.b,S),Y		; 33 88
	and $98.b,S		; 23 98
	and $18.b,S		; 23 18
	asl $FF.b		; 06 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($B4.b,X)		; 01 B4
	and ($96.b,X)		; 21 96
	and $92.b		; 25 92
	jsr $329A.w		; 20 9A 32
	dey		; 88
	and ($88.b)		; 32 88
	bmi -120.b		; 30 88
	bmi -120.b		; 30 88
	cop $FE.b		; 02 FE
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	phd		; 0B
	php		; 08
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	sta $08.b,S		; 83 08
	.db $42, $88		; 42 88
	and ($4D.b,X)		; 21 4D
	bpl  39.b		; 10 27
	bit #$0713.w		; 89 13 07
	brk $0F.b		; 00 0F
	php		; 08
	ora $080F08.l		; 0F 08 0F 08
	ora [$00.b]		; 07 00
	stx $84.b		; 86 84
	cpy #$C0.b		; C0 C0
	sbc ($E1.b,X)		; E1 E1
	bra  32.b		; 80 20
	cpy #$60.b		; C0 60
	bne  96.b		; D0 60
	php		; 08
	bvs -128.b		; 70 80
	sed		; F8
	bit $F0.b		; 24 F0
	rts		; 60

	cpx $F2.b		; E4 F2
	cpy $C0.b		; C4 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bvc   0.b		; 50 00
	bpl -120.b		; 10 88
	clv		; B8
	cli		; 58
	sei		; 78
	sed		; F8
	sed		; F8
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora $07.b,S		; 03 07
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp.w [$82E0]		; DC E0 82
	jmp ($3AB1.w,X)		; 7C B1 3A
	inx		; E8
	sbc ($9C.b),Y		; F1 9C
	cpy #$06.b		; C0 06
	bvs   1.b		; 70 01
	trb $0600.w		; 1C 00 06
	jsr $C020.w		; 20 20 C0
	cli		; 58
	cpy $74.b		; C4 74
	inc $3FEE.w		; EE EE 3F
	lda $030F0F.l,X		; BF 0F 0F 03
	ora $01.b,S		; 03 01
	ora ($0C.b,X)		; 01 0C
	and $000F03.l,X		; 3F 03 0F 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	ora ($07.b,X)		; 01 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	sbc $01F604.l		; EF 04 F6 01
	sbc ($13.b)		; F2 13
	tsa		; 3B
	ora [$3B.b],Y		; 17 3B
	and $0B1F13.l		; 2F 13 1F 0B
	ora $0B.b		; 05 0B
	bit #$E49F.w		; 89 9F E4
	adc $1B0E10.l		; 6F 10 0E 1B
	ora [$19.b]		; 07 19
	ora [$11.b]		; 07 11
	ora [$05.b]		; 07 05
	ora $0C.b,S		; 03 0C
	phd		; 0B
	and $73.b,S		; 23 73
	lda #$897B.w		; A9 7B 89
	adc ($40.b,S),Y		; 73 40
	and $A23FC4.l,X		; 3F C4 3F A2
	sta $D09FE2.l,X		; 9F E2 9F D0
	cmp $BF8D3F.l		; CF 3F 8D BF
	sty $9C9F.w		; 8C 9F 9C
	cmp $4ECD.w,X		; DD CD 4E
	rti		; 40

	inc $E0.b		; E6 E0
	tax		; AA
	ldy #$E2.b		; A0 E2
	cpx #$00.b		; E0 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$60.b		; E0 60
	bvs  60.b		; 70 3C
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	bvs   0.b		; 70 00
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($04.b,S),Y		; 33 04
	php		; 08
	cop $04.b		; 02 04
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $070C.w		; 0C 0C 07
	ora [$03.b]		; 07 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $00E000.l,X		; FF 00 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$3F.b		; C0 3F
	bmi  -1.b		; 30 FF
	brk $FF.b		; 00 FF
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F0.b		; E0 F0
	sbc $00FFFF.l,X		; FF FF FF 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$FE.b		; C0 FE
	cop $FF.b		; 02 FF
	brk $03.b		; 00 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sed		; F8
	sec		; 38
	inc $3F00.w,X		; FE 00 3F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  48.b		; F0 30
	jsr ($1E04.w,X)		; FC 04 1E
	asl $0101.w,X		; 1E 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	asl $01.b		; 06 01
	tsb $02.b		; 04 02
	ora ($00.b,X)		; 01 00
	ora ($0C.b,X)		; 01 0C
	tsb $1E.b		; 04 1E
	bpl  49.b		; 10 31
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	tsb $07.b		; 04 07
	asl A		; 0A
	phd		; 0B
	ora $000001.l		; 0F 01 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0C.b		; 00 0C
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $00000F.l		; 0F 0F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $1F.b		; 00 1F
	ora [$FF.b]		; 07 FF
	ora [$79.b]		; 07 79
	phx		; DA
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	clc		; 18
	sei		; 78
	stx $B0.b		; 86 B0
	cmp $D8.b,S		; C3 D8
	tsb $02.b		; 04 02
	tsb $02.b		; 04 02
	ora ($04.b,X)		; 01 04
	ora ($00.b,X)		; 01 00
	cop $0E.b		; 02 0E
	tsb $1C.b		; 04 1C
	phd		; 0B
	sec		; 38
	ora [$30.b],Y		; 17 30
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	tsb $05.b		; 04 05
	phd		; 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	and $499220.l		; 2F 20 92 49
	sta ($49.b)		; 92 49
	sta $9944.w,Y		; 99 44 99
	mvp $42,$9C		; 44 9C 42
	jmp $420C82.l		; 5C 82 0C 42
	bra  48.b		; 80 30
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra  -1.b		; 80 FF
	cpy #$7F.b		; C0 7F
	cpx #$2F.b		; E0 2F
	stz $12.b		; 64 12
	and ($08.b),Y		; 31 08
	ora $8885.w,Y		; 19 85 88
	rti		; 40

.ACCU 16
	rep #$20		; C2 20
	cmp [$20.b]		; C7 20
	eor ($10.b,S),Y		; 53 10
	ora #$0018.w		; 09 18 00
	sbc $00FE00.l,X		; FF 00 FE 00
	inc $FC03.w,X		; FE 03 FC
	ora [$F8.b]		; 07 F8
	ora $E00FF0.l		; 0F F0 0F E0
	ora [$F0.b],Y		; 17 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	rti		; 40

	rts		; 60

	ldy #$30.b		; A0 30
	bne  24.b		; D0 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	ldy #$20.b		; A0 20
	bne  16.b		; D0 10
	cpx #$00.b		; E0 00
	asl A		; 0A
	tsb $0C0E.w		; 0C 0E 0C
	asl $1C0C.w,X		; 1E 0C 1C
	asl $0E1C.w		; 0E 1C 0E
	trb $1D1E.w		; 1C 1E 1D
	asl $1E1F.w,X		; 1E 1F 1E
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	tsb $0C1E.w		; 0C 1E 0C
	asl $1F0C.w,X		; 1E 0C 1F
	tsb $0C1F.w		; 0C 1F 0C
	ora $201F0C.l,X		; 1F 0C 1F 20
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	brk $06.b		; 00 06
	asl $04.b		; 06 04
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$78.b		; E0 78
	sei		; 78
	bit $1E3C.w,X		; 3C 3C 1E
	clc		; 18
	asl $0008.w		; 0E 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4E.b		; 00 4E
	eor $D6D1D1.l		; 4F D1 D1 D6
	bne  47.b		; D0 2F
	bit $2F.b		; 24 2F
	rts		; 60

	rol $60.b		; 26 60
	ora $3F007F.l,X		; 1F 7F 00 3F
	eor $EEFF40.l		; 4F 40 FF EE
	sbc $5F7FEF.l,X		; FF EF 7F 5F
	adc $1F7F1F.l,X		; 7F 1F 7F 1F
	adc $003F00.l,X		; 7F 00 3F 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	tya		; 98
	cld		; D8
	tya		; 98
	jsr ($FC18.w,X)		; FC 18 FC
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cld		; D8
	clc		; 18
	cld		; D8
	tsb $04B8.w		; 0C B8 04
	clc		; 18
	trb $3838.w		; 1C 38 38
	beq -16.b		; F0 F0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $3800.w		; 1C 00 38
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	tsb $0C00.w		; 0C 00 0C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	asl $04.b		; 06 04
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bmi  16.b		; 30 10
	rti		; 40

	sbc $64FC33.l,X		; FF 33 FC 64
	plx		; FA
	eor [$FA.b]		; 47 FA
	cop $FB.b		; 02 FB
	jsl $3C0778.l		; 22 78 07 3C
	ora $1E.b,S		; 03 1E
	wai		; CB
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	phd		; 0B
	adc ($12.b)		; 72 12
	rol $3F0B.w		; 2E 0B 3F
	php		; 08
	tas		; 1B
	php		; 08
	ora $04.b		; 05 04
	mvn $91,$FF		; 54 FF 91
	asl $548A.w,X		; 1E 8A 54
	ldy $08.b,X		; B4 08
	ldy #$08.b		; A0 08
	beq   8.b		; F0 08
	bpl -104.b		; 10 98
	jsr $06B0.w		; 20 B0 06
	brk $64.b		; 00 64
	brk $20.b		; 00 20
	bpl  96.b		; 10 60
	dey		; 88
	pla		; 68
	clc		; 18
	beq   0.b		; F0 00
	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	bpl -96.b		; 10 A0
	bpl 112.b		; 10 70
	bcs 127.b		; B0 7F
	ldx $8071.w		; AE 71 80
	adc ($41.b),Y		; 71 41
	and ($3F.b),Y		; 31 3F
	sta $1FCF8F.l,X		; 9F 8F CF 1F
	adc $10FF0F.l,X		; 7F 0F FF 10
	beq  14.b		; F0 0E
	inc $EF0E.w		; EE 0E EF
	ora $FF0FEF.l		; 0F EF 0F FF
	ora $FF.b,S		; 03 FF
	ldy #$E4.b		; A0 E4
	rti		; 40

	sed		; F8
	bmi -56.b		; 30 C8
	brk $C8.b		; 00 C8
	rti		; 40

	iny		; C8
	bne -32.b		; D0 E0
	bne -32.b		; D0 E0
	cpx #$C0.b		; E0 C0
	clv		; B8
	clc		; 18
	rti		; 40

	brk $30.b		; 00 30
	bmi  48.b		; 30 30
	beq  48.b		; F0 30
	beq -128.b		; F0 80
	cpx #$80.b		; E0 80
	cpx #$80.b		; E0 80
	cpx #$07.b		; E0 07
	cpy #$1E.b		; C0 1E
	brk $70.b		; 00 70
	brk $C3.b		; 00 C3
	tsb $C03C.w		; 0C 3C C0
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $FFFF3F.l,X		; 3F 3F FF FF
	sbc $F0F0FF.l,X		; FF FF F0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy $061F.w		; CC 1F 06
	ora $C0C73E.l,X		; 1F 3E C7 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $ED.b		; 00 ED
	sbc $E7E7.w		; ED E7 E7
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $401E60.l		; 2F 60 1E 40
	adc $3AC1.w,X		; 7D C1 3A
	sta $F4.b,S		; 83 F4
	stx $60.b		; 86 60
	tsb $18C0.w		; 0C C0 18
	bra  49.b		; 80 31
	ora $407F00.l,X		; 1F 00 7F 40
	rol $FD00.w,X		; 3E 00 FD
	sta ($78.b,X)		; 81 78
	brk $F8.b		; 00 F8
	php		; 08
	beq  16.b		; F0 10
	cpx #$20.b		; E0 20
	rti		; 40

	bvs -128.b		; 70 80
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $01.b		; 06 01
	beq -96.b		; F0 A0
	jsr $4040.w		; 20 40 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $1C240F.l		; 0F 0F 24 1C
	ora #$0207.w		; 09 07 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	and $7E8101.l,X		; 3F 01 81 7E
	brk $FF.b		; 00 FF
	brk $0B.b		; 00 0B
	php		; 08
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	adc $FFFF7F.l,X		; 7F 7F FF FF
	sbc $0CE8FF.l,X		; FF FF E8 0C
	stz $06.b,X		; 74 06
	dec A		; 3A
	.db $82, $9C, $41		; 82 9C 41
	ora $E0AEF1.l		; 0F F1 AE E0
	cpy $60C1.w		; CC C1 60
	.db $62, $F0, $00		; 62 F0 00
	sed		; F8
	brk $FC.b		; 00 FC
	bra 126.b		; 80 7E
	rti		; 40

	ror $9F70.w,X		; 7E 70 9F
	bra  -2.b		; 80 FE
	cpx #$9C.b		; E0 9C
	beq  31.b		; F0 1F
	asl $1E1F.w,X		; 1E 1F 1E
	asl $011F.w,X		; 1E 1F 01
	and $5F7F0F.l,X		; 3F 0F 7F 5F
	and $18BFBE.l,X		; 3F BE BF 18
	adc $1C1F0C.l,X		; 7F 0C 1F 1C
	ora $0F1E1C.l,X		; 1F 1C 1E 0F
	php		; 08
	and $8EBF21.l,X		; 3F 21 BF 8E
	sbc $80BDD8.l,X		; FF D8 BD 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	cpx #$F8.b		; E0 F8
	cpy #$F0.b		; C0 F0
	cpx #$F8.b		; E0 F8
	bmi  -8.b		; 30 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$20.b		; E0 20
	beq -128.b		; F0 80
	cpx #$60.b		; E0 60
	beq  32.b		; F0 20
	bvs  32.b		; 70 20
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
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
	cpy #$FC.b		; C0 FC
	inc $F8.b		; E6 F8
	cmp $E0.b,S		; C3 E0
	ora ($C0.b,X)		; 01 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($EEC0.w,X)		; FC C0 EE
	inc $C7.b,X		; F6 C7
	sbc [$02.b]		; E7 02
	rep #$00		; C2 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	ora [$0E.b]		; 07 0E
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	rts		; 60

	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $4000.w		; 20 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	ora [$A4.b]		; 07 A4
	sta $4C52.w,Y		; 99 52 4C
	ora #$8026.w		; 09 26 80
	lda $13631C.l,X		; BF 1C 63 13
	bra 112.b		; 80 70
	bra   2.b		; 80 02
	cop $82.b		; 02 82
	plx		; FA
	ora ($FE.b,X)		; 01 FE
	brk $FF.b		; 00 FF
	brk $E3.b		; 00 E3
	trb $9FFC.w		; 1C FC 9F
	sbc $409F9F.l,X		; FF 9F 9F 40
	rts		; 60

	rti		; 40

	bra -64.b		; 80 C0
	jsr $2010.w		; 20 10 20
	cpy #$78.b		; C0 78
	iny		; C8
	bit $B8.b,X		; 34 B8
	cpx $E8.b		; E4 E8
	cpx $80.b		; E4 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rts		; 60

	cpy #$30.b		; C0 30
	brk $A0.b		; 00 A0
	php		; 08
	iny		; C8
	clv		; B8
	clc		; 18
	sed		; F8
	clc		; 18
	ora $E3.b,S		; 03 E3
	sbc $F5.b,X		; F5 F5
	inc $7BFE.w,X		; FE FE 7B
	tda		; 7B
	and ($35.b),Y		; 31 35
	brk $94.b		; 00 94
	jsr $2095.w		; 20 95 20
	sta $01.b,X		; 95 01
	sbc $78FFF0.l,X		; FF F0 FF 78
	sbc $30FF79.l,X		; FF 79 FF 30
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $C0FF00.l,X		; FF 00 FF C0
	cpy #$80.b		; C0 80
	cpx #$60.b		; E0 60
	ldy #$60.b		; A0 60
	rts		; 60

	cpy #$D0.b		; C0 D0
	bcc -120.b		; 90 88
	pha		; 48
	bit $24.b		; 24 24
	ora ($80.b)		; 12 80
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq  64.b		; F0 40
	beq -128.b		; F0 80
	sed		; F8
	bra  -4.b		; 80 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $87FF0F.l		; 0F 0F FF 87
	inc $000E.w,X		; FE 0E 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $087F00.l		; 0F 00 7F 08
	inc $FC10.w,X		; FE 10 FC
	bmi  -8.b		; 30 F8
	rts		; 60

	beq   0.b		; F0 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	ora $6E.b,S		; 03 6E
	.db $62, $DC, $C0		; 62 DC C0
	clv		; B8
	bra 112.b		; 80 70
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $07.b		; 02 07
	tsb $0F.b		; 04 0F
	php		; 08
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	asl $383F.w		; 0E 3F 38
	sbc $80FEE0.l,X		; FF E0 FE 80
	beq   0.b		; F0 00
	cpy #$00.b		; C0 00
	brk $03.b		; 00 03
	cop $0F.b		; 02 0F
	php		; 08
	and $82FE20.l,X		; 3F 20 FE 82
	sed		; F8
	php		; 08
	cpx #$20.b		; E0 20
	bra -128.b		; 80 80
	ora $00.b,S		; 03 00
	ora $08.b,S		; 03 08
	cop $09.b		; 02 09
	ora ($0E.b,X)		; 01 0E
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$07.b]		; 07 07
	ora [$06.b]		; 07 06
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	clc		; 18
	asl $20.b		; 06 20
	trb $3B43.w		; 1C 43 3B
	tsb $34.b		; 04 34
	dey		; 88
	plp		; 28
	bcc  16.b		; 90 10
	cpx #$01.b		; E0 01
	ora ($07.b,X)		; 01 07
	ora [$1F.b]		; 07 1F
	ora $783C3C.l,X		; 1F 3C 3C 78
	sei		; 78
	bvs 112.b		; 70 70
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	cpy #$60.b		; C0 60
	rts		; 60

	beq -16.b		; F0 F0
	bcs -80.b		; B0 B0
	mvp $00,$C0		; 44 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	cpx #$60.b		; E0 60
	beq -16.b		; F0 F0
	sed		; F8
	bcs  -8.b		; B0 F8
	jmp $00FC.w		; 4C FC 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	tsb $01.b		; 04 01
	clc		; 18
	asl $60.b		; 06 60
	brk $83.b		; 00 83
	adc $0C.b,S		; 63 0C
	cpy $0030.w		; CC 30 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	ora [$1F.b]		; 07 1F
	ora $F07C7C.l,X		; 1F 7C 7C F0
	beq -64.b		; F0 C0
	cpy #$00.b		; C0 00
	sbc ($00.b,X)		; E1 00
	cmp ($00.b,X)		; C1 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	asl $C0.b		; 06 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora $02.b,S		; 03 02
	cop $00.b		; 02 00
	brk $6F.b		; 00 6F
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	clc		; 18
	brk $60.b		; 00 60
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	jsr ($E0FC.w,X)		; FC FC E0
	cpx #$80.b		; E0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	ora $008000.l,X		; 1F 00 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $00E0E0.l,X		; FF E0 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	bvs  -8.b		; 70 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bcs   0.b		; B0 00
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
	brk $07.b		; 00 07
	cop $0E.b		; 02 0E
	ora $0C.b		; 05 0C
	tsb $1E.b		; 04 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$01.b]		; 07 01
	ora $010D03.l		; 0F 03 0D 01
	brk $00.b		; 00 00
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
	ora [$04.b]		; 07 04
	ora $FFFC3F.l		; 0F 3F FC FF
	cpy #$FF.b		; C0 FF
	brk $F0.b		; 00 F0
	brk $81.b		; 00 81
	brk $07.b		; 00 07
	ora [$1F.b]		; 07 1F
	asl $3F7F.w,X		; 1E 7F 3F
	jsr $00FF.w		; 20 FF 00
	sed		; F8
	php		; 08
	cpy #$40.b		; C0 40
	ora ($01.b,X)		; 01 01
	ora [$07.b]		; 07 07
	ora $407F10.l,X		; 1F 10 7F 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	php		; 08
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	tsb $0000.w		; 0C 00 00
	sbc $07F701.l,X		; FF 01 F7 07
	ora $607F1E.l		; 0F 1E 7F 60
	sbc $80FE00.l,X		; FF 00 FE 80
	sed		; F8
	brk $E0.b		; 00 E0
	xce		; FB
	dec A		; 3A
	sta [$84.b]		; 87 84
	ora $407F00.l		; 0F 00 7F 40
	inc $F81A.w,X		; FE 1A F8
	cpy #$E0.b		; C0 E0
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	beq -127.b		; F0 81
	sbc ($00.b,X)		; E1 00
	cpy #$0F.b		; C0 0F
	sta [$00.b]		; 87 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	ora $180A.w		; 0D 0A 18
	cpx #$00.b		; E0 00
	cpy #$03.b		; C0 03
	bra   7.b		; 80 07
	ora $0F.b,S		; 03 0F
	brk $0F.b		; 00 0F
	ora $0B.b,S		; 03 0B
	phd		; 0B
	ora #$0007.w		; 09 07 00
	brk $1F.b		; 00 1F
	brk $3C.b		; 00 3C
	brk $70.b		; 00 70
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	asl $3812.w,X		; 1E 12 38
	plp		; 28
	rts		; 60

	jsr $0080.w		; 20 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	ora [$1F.b]		; 07 1F
	asl $383F.w,X		; 1E 3F 38
	adc $C0FE60.l,X		; 7F 60 FE C0
	beq -128.b		; F0 80
	cpx #$01.b		; E0 01
	ora ($07.b,X)		; 01 07
	tsb $1F.b		; 04 1F
	bpl  63.b		; 10 3F
	jsr $427E.w		; 20 7E 42
	sed		; F8
	dey		; 88
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	sei		; 78
	sbc $80FEE0.l,X		; FF E0 FE 80
	sed		; F8
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $F802.w,X		; FE 02 F8
	php		; 08
	cpx #$20.b		; E0 20
	bra -128.b		; 80 80
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
	asl $10.b		; 06 10
	trb $0831.w		; 1C 31 08
	jsl $007C04.l		; 22 04 7C 00
	rti		; 40

	tsb $1F8E.w		; 0C 8E 1F
	sta $1F9F1F.l,X		; 9F 1F 9F 1F
	bpl  15.b		; 10 0F
	ora ($3E.b,X)		; 01 3E
	jsl $380000.l		; 22 00 00 38
	rol $7F60.w,X		; 3E 60 7F
	lsr $5F7F.w		; 4E 7F 5F
	adc $00C000.l,X		; 7F 00 C0 00
	bra   0.b		; 80 00
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
	brk $0F.b		; 00 0F
	eor $000301.l,X		; 5F 01 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	and $001F00.l,X		; 3F 00 1F 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	bpl   0.b		; 10 00
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	cop $05.b		; 02 05
	brk $02.b		; 00 02
	tsb $00.b		; 04 00
	brk $08.b		; 00 08
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora $07.b,S		; 03 07
	ora [$04.b]		; 07 04
	tsb $48.b		; 04 48
	brk $C0.b		; 00 C0
	bpl -112.b		; 10 90
	jsr $0020.w		; 20 20 00
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $F0.b		; 00 F0
	beq -32.b		; F0 E0
	cpx #$C0.b		; E0 C0
	cpy #$C0.b		; C0 C0
	cpy #$80.b		; C0 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora $060F07.l		; 0F 07 0F 06
	ora $031F07.l,X		; 1F 07 1F 03
	and [$00.b]		; 27 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	ora $0F.b,S		; 03 0F
	asl $0F.b		; 06 0F
	cop $1F.b		; 02 1F
	ora $FE7C.w,X		; 1D 7C FE
	jsr ($F4FE.w,X)		; FC FE F4
	inc $FE98.w,X		; FE 98 FE
	tsb $FA.b		; 04 FA
	tsb $0FD1.w		; 0C D1 0F
	beq -49.b		; F0 CF
	beq  -2.b		; F0 FE
	bvs  -4.b		; 70 FC
	sei		; 78
	pea $9880.w		; F4 80 98
	bra  96.b		; 80 60
	rts		; 60

	rol A		; 2A
	brk $8F.b		; 00 8F
	brk $E7.b		; 00 E7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora [$03.b]		; 07 03
	ora $000000.l		; 0F 00 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	brk $07.b		; 00 07
	tsb $07.b		; 04 07
	brk $40.b		; 00 40
	beq  70.b		; F0 46
	sbc $8EE080.l		; EF 80 E0 8E
	cmp $06CE81.l,X		; DF 81 CE 06
	sta $0D8105.l		; 8F 05 81 0D
	sta ($E0.b,X)		; 81 E0
	sta [$E2.b]		; 87 E2
	and $C60FC0.l		; 2F C0 0F C6
	eor $881180.l,X		; 5F 80 11 88
	php		; 08
	stx $0E80.w		; 8E 80 0E
	brk $18.b		; 00 18
	bit $7C38.w,X		; 3C 38 7C
	sec		; 38
	jmp ($7838.w,X)		; 7C 38 78
	sec		; 38
	sei		; 78
	sei		; 78
	sei		; 78
	bvs  -8.b		; 70 F8
	bvs  -8.b		; 70 F8
	bit $3C00.w,X		; 3C 00 3C
	tsb $78.b		; 04 78
	rti		; 40

	sei		; 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	bra  23.b		; 80 17
	ora $080612.l		; 0F 12 06 08
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $191F16.l		; 0F 16 1F 19
	ora $010E0E.l,X		; 1F 0E 0E 01
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	brk $07.b		; 00 07
	ora $07.b		; 05 07
	ora ($30.b,X)		; 01 30
	sei		; 78
	bmi 120.b		; 30 78
	bmi  56.b		; 30 38
	clc		; 18
	sec		; 38
	clc		; 18
	sec		; 38
	clc		; 18
	sec		; 38
	php		; 08
	clc		; 18
	php		; 08
	clc		; 18
	sei		; 78
	pha		; 48
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	jsr $0018.w		; 20 18 00
	clc		; 18
	brk $18.b		; 00 18
	bpl  24.b		; 10 18
	bit $3C38.w,X		; 3C 38 3C
	sec		; 38
	bit $3C30.w,X		; 3C 30 3C
	bmi  56.b		; 30 38
	bmi  56.b		; 30 38
	bmi  56.b		; 30 38
	bpl  56.b		; 10 38
	bit $3C04.w,X		; 3C 04 3C
	tsb $38.b		; 04 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	php		; 08
	sec		; 38
	php		; 08
	bmi   0.b		; 30 00
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora ($04.b,X)		; 01 04
	ora $06.b,S		; 03 06
	ora $02.b,S		; 03 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	ora [$02.b]		; 07 02
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cmp $38C338.l		; CF 38 C3 38
	sbc $3C.b		; E5 3C
.INDEX 16
	rep #$16		; C2 16
	cmp ($17.b,X)		; C1 17
	cpx #$E012.w		; E0 12 E0
	ora ($E0.b,S),Y		; 13 E0
	and ($E7.b),Y		; 31 E7
	jsr $28EF.w		; 20 EF 28
	cmp $00.b,S		; C3 00
	sbc ($00.b,X)		; E1 00
	sep #$02		; E2 02
	sbc ($00.b,X)		; E1 00
	sbc ($01.b,X)		; E1 01
	cpy #$5100.w		; C0 00 51
	sty $41.b		; 84 41
	sty $20.b,X		; 94 20
	asl $24.b,X		; 16 24
	ora ($44.b)		; 12 44
	and ($4A.b,S),Y		; 33 4A
	and ($4A.b),Y		; 31 4A
	and ($4B.b),Y		; 31 4B
	bmi   0.b		; 30 00
	adc $007F00.l,X		; 7F 00 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $54FF00.l,X		; FF 00 FF 54
	rti		; 40

	lda ($08.b,S),Y		; B3 08
	sta $CC44.w,Y		; 99 44 CC
	jsl $233146.l		; 22 46 31 23
	tya		; 98
	jsr $109C.w		; 20 9C 10
	cpy #$FF00.w		; C0 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	stx $66.b,Y		; 96 66
	lsr A		; 4A
	and ($C4.b)		; 32 C4
	and $5B10.w,Y		; 39 10 5B
	pld		; 2B
	rol $7FB3.w,X		; 3E B3 7F
	nop		; EA
	ror $7FF1.w,X		; 7E F1 7F
	brk $F9.b		; 00 F9
	brk $FD.b		; 00 FD
	brk $86.b		; 00 86
	bit $BC.b,X		; 34 BC
	ror A		; 6A
	jsr ($7C33.w,X)		; FC 33 7C
	pld		; 2B
	adc $7C21.w,X		; 7D 21 7C
	sty $0E.b		; 84 0E
	rol $87.b,X		; 36 87
	eor ($0F.b,S),Y		; 53 0F
	ora ($8B.b,S),Y		; 13 8B
	sta ($8B.b,X)		; 81 8B
	sta ($D1.b,X)		; 81 D1
	sty $42FD.w		; 8C FD 42
	stz $FF00.w,X		; 9E 00 FF
	bvs 127.b		; 70 7F
	sbc ($F7.b)		; F2 F7
	adc ($77.b),Y		; 71 77
	sbc $73.b,X		; F5 73
	ldy $8223.w		; AC 23 82
	ora ($64.b,X)		; 01 64
	adc $04.b		; 65 04
	ora #$0114.w		; 09 14 01
	asl $0E11.w		; 0E 11 0E
	ora ($1F.b,X)		; 01 1F
	jsr $201F.w		; 20 1F 20
	ora ($20.b,X)		; 01 20
	cop $1C.b		; 02 1C
	asl $06.b		; 06 06
	asl $0E0E.w		; 0E 0E 0E
	asl $1E1E.w		; 0E 1E 1E
	asl $1E1E.w,X		; 1E 1E 1E
	asl $1E1E.w,X		; 1E 1E 1E
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $5953.w,Y		; 19 53 59
	cmp $41.b,S		; C3 41
	sbc [$24.b]		; E7 24
	adc $007F18.l,X		; 7F 18 7F 00
	sei		; 78
	jsr $2178.w		; 20 78 21
	beq  63.b		; F0 3F
	rol $3E7F.w,X		; 3E 7F 3E
	tad		; 5B
	inc A		; 1A
	adc [$22.b]		; 67 22
	and $3815.w,X		; 3D 15 38
	php		; 08
	bvs  64.b		; 70 40
	bvs  19.b		; 70 13
	stz $18E0.w,X		; 9E E0 18
	cpy $18.b		; C4 18
	cpy $81.b		; C4 81
	cpx $06.b		; E4 06
	cpy $04.b		; C4 04
	cpx #$000D.w		; E0 0D 00
	bit $C0.b		; 24 C0
	cmp $03AB03.l		; CF 03 AB 03
	tyx		; BB
	ora $DA.b,S		; 03 DA
	cop $B8.b		; 02 B8
	brk $1C.b		; 00 1C
	tas		; 1B
	asl $0EE1.w,X		; 1E E1 0E
	sbc ($06.b),Y		; F1 06
	ora $060F06.l		; 0F 06 0F 06
	ora $0C1E0C.l,X		; 1F 0C 1E 0C
	asl $3E0C.w,X		; 1E 0C 3E
	trb $183E.w		; 1C 3E 18
	bit $080F.w,X		; 3C 0F 08
	ora $000E01.l		; 0F 01 0E 00
	asl $1E10.w,X		; 1E 10 1E
	brk $1E.b		; 00 1E
	cop $3C.b		; 02 3C
	jsr $003C.w		; 20 3C 00
	tsb $0C01.w		; 0C 01 0C
	ora ($0A.b),Y		; 11 0A
	ora ($05.b,S),Y		; 13 05
	ora [$0B.b],Y		; 17 0B
	ora $071F07.l,X		; 1F 07 1F 07
	ora $0F0F07.l		; 0F 07 0F 0F
	ora ($1F.b,X)		; 01 1F
	ora ($1D.b),Y		; 11 1D
	ora ($1A.b),Y		; 11 1A
	ora ($15.b,S),Y		; 13 15
	ora [$1B.b],Y		; 17 1B
	ora $171F17.l,X		; 1F 17 1F 17
	ora $70F870.l,X		; 1F 70 F8 70
	sed		; F8
	bvs -16.b		; 70 F0
	bvs -16.b		; 70 F0
	bvs -16.b		; 70 F0
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bmi 120.b		; 30 78
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq -128.b		; F0 80
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	tsb $0F.b		; 04 0F
	tsb $0F.b		; 04 0F
	tsb $0C1E.w		; 0C 1E 0C
	asl $1E0C.w,X		; 1E 0C 1E
	trb $183E.w		; 1C 3E 18
	bit $3C18.w,X		; 3C 18 3C
	asl $0E08.w		; 0E 08 0E
	brk $0E.b		; 00 0E
	cop $1E.b		; 02 1E
	ora ($1C.b)		; 12 1C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	jsr $003C.w		; 20 3C 00
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	tsb $06.b		; 04 06
	tsb $06.b		; 04 06
	tsb $06.b		; 04 06
	tsb $06.b		; 04 06
	php		; 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	php		; 08
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	bpl  56.b		; 10 38
	bpl  48.b		; 10 30
	bpl  48.b		; 10 30
	bpl  16.b		; 10 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	bmi  32.b		; 30 20
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	ora $0F.b,S		; 03 0F
	ora [$1F.b]		; 07 1F
	rol $00.b		; 26 00
	asl $5C20.w		; 0E 20 5C
	ora ($39.b,X)		; 01 39
	.db $42, $B2		; 42 B2
	tsb $64.b		; 04 64
	dey		; 88
	ora ($0F.b,X)		; 01 0F
	ora $1F.b,S		; 03 1F
	ora $1F1F1F.l,X		; 1F 1F 1F 1F
	rol $3C3E.w,X		; 3E 3E 3C
	bit $7878.w,X		; 3C 78 78
	bvs 112.b		; 70 70
	cpy #$8071.w		; C0 71 80
	sbc ($80.b,X)		; E1 80
	cmp ($00.b,X)		; C1 00
	sta ($81.b,X)		; 81 81
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	jsr $C040.w		; 20 40 C0
	brk $C1.b		; 00 C1
	brk $81.b		; 00 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $1D10.w		; 2D 10 1D
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	and $380A.w,X		; 3D 0A 38
	phd		; 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	ora $18.b,S		; 03 18
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	asl A		; 0A
	php		; 08
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $C61108.l		; 0F 08 11 C6
	sty $0F.b		; 84 0F
	asl A		; 0A
	tda		; 7B
	ora $F1.b,X		; 15 F1
	sta $604EE1.l		; 8F E1 4E 60
	sta $308730.l		; 8F 30 87 30
	brk $F8.b		; 00 F8
	asl A		; 0A
	plx		; FA
	ora $91.b,X		; 15 91
	dec $5EC0.w		; CE C0 5E
	rti		; 40

	sta $20EF00.l,X		; 9F 00 EF 20
	sbc $FB7020.l		; EF 20 70 FB
	adc ($F3.b,X)		; 61 F3
	sbc $E7.b,S		; E3 E7
	cmp $CFCFEF.l		; CF EF CF CF
	sta $9F8FC1.l,X		; 9F C1 8F 9F
	ora $80.b		; 05 80
	ldy #$85FC.w		; A0 FC 85
	sbc $FB4B.w,X		; FD 4B FB
	cmp $FF8FFF.l		; CF FF 8F FF
	bra  -1.b		; 80 FF
	ora [$FF.b]		; 07 FF
	brk $FF.b		; 00 FF
	brk $84.b		; 00 84
	bra -30.b		; 80 E2
	cpx #$E0C0.w		; E0 C0 E0
	cpy #$E0E0.w		; C0 E0 E0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$E0C8.w		; E0 C8 E0
	adc $63.b,S		; 63 63
	sta ($81.b,X)		; 81 81
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	ldy #$60F0.w		; A0 F0 60
	beq -64.b		; F0 C0
	sed		; F8
	rti		; 40

	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $74.b		; 00 74
	jsr $347E.w		; 20 7E 34
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $3400.w		; 20 00 34
	brk $7E.b		; 00 7E
	jsr $4098.w		; 20 98 40
	asl A		; 0A
	rts		; 60

	jmp $0422.w		; 4C 22 04
	and ($24.b)		; 32 24
	bpl   1.b		; 10 01
	bpl  16.b		; 10 10
	ora #$0800.w		; 09 00 08
	bit $1C3C.w,X		; 3C 3C 1C
	trb $1C1C.w		; 1C 1C 1C
	tsb $0E0C.w		; 0C 0C 0E
	asl $0E0E.w		; 0E 0E 0E
	asl $06.b		; 06 06
	ora [$07.b]		; 07 07
	php		; 08
	brk $01.b		; 00 01
	tsb $04.b		; 04 04
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $07.b		; 00 07
	ora [$03.b]		; 07 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	ldy #$C000.w		; A0 00 C0
	bpl 112.b		; 10 70
	php		; 08
	sec		; 38
	brk $00.b		; 00 00
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$E0C0.w		; C0 C0 E0
	cpx #$F0F0.w		; E0 F0 F0
	sed		; F8
	sed		; F8
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra   0.b		; 80 00
	bmi  56.b		; 30 38
	sei		; 78
	jmp ($7C7C.w,X)		; 7C 7C 7C
	bit $5CBC.w,X		; 3C BC 5C
	stz $0000.w		; 9C 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	bpl  60.b		; 10 3C
	sec		; 38
	ror $7E38.w,X		; 7E 38 7E
	clc		; 18
	inc $FE00.w,X		; FE 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$E0E0.w		; C0 E0 E0
	cpx #$F0E0.w		; E0 E0 F0
	rts		; 60

	cpx #$0000.w		; E0 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	cpy #$60F0.w		; C0 F0 60
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	beq -32.b		; F0 E0
	cpx #$0000.w		; E0 00 00
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
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
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
	bra -128.b		; 80 80
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra  64.b		; 80 40
	cpy #$8040.w		; C0 40 80
	jsr $20E0.w		; 20 E0 20
	cpy #$C010.w		; C0 10 C0
	bpl  64.b		; 10 40
	sec		; 38
	sec		; 38
	sed		; F8
	cpy #$8040.w		; C0 40 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $B0.b		; 00 B0
	clv		; B8
	sei		; 78
	sed		; F8
	sed		; F8
	cpy #$88B0.w		; C0 B0 88
	bmi -128.b		; 30 80
	bmi -128.b		; 30 80
	bit $80.b,X		; 34 80
	bmi -124.b		; 30 84
	tya		; 98
	mvp $78,$70		; 44 70 78
	bvs -16.b		; 70 F0
	bvs -16.b		; 70 F0
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sec		; 38
	sec		; 38
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
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
	ora [$00.b]		; 07 00
	ora $00FF03.l,X		; 1F 03 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	asl $3F.b		; 06 3F
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $3EFF07.l,X		; 1F 07 FF 3E
	sbc $C0FFF8.l,X		; FF F8 FF C0
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	and $80FF20.l,X		; 3F 20 FF 80
	sbc $08F801.l,X		; FF 01 F8 08
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	clc		; 18
	sbc $80FFE0.l,X		; FF E0 FF 80
	sbc $0CFE0C.l,X		; FF 0C FE 0C
	cmp $003736.l		; CF 36 37 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	eor ($FF.b,X)		; 41 FF
	brk $FE.b		; 00 FE
	asl $5FC8.w,X		; 1E C8 5F
	tsb $143F.w		; 0C 3F 14
	ora $133913.l,X		; 1F 13 39 13
	sed		; F8
	php		; 08
	jsr ($FF00.w,X)		; FC 00 FF
	ora [$FF.b]		; 07 FF
	ora #$007F.w		; 09 7F 00
	adc $376900.l,X		; 7F 00 69 37
	and [$37.b],Y		; 37 37
	and [$8B.b]		; 27 8B
	sta $CF.b,S		; 83 CF
	cmp $3F101F.l		; CF 1F 10 3F
	ldy #$A029.w		; A0 29 A0
	asl $80.b,X		; 16 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($7F.b,X)		; 01 7F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $070770.l,X		; 7F 70 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	inc $FF3F.w,X		; FE 3F FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FF72.w,X		; FE 72 FF
	asl $0100.w		; 0E 00 01
	ora ($1F.b,X)		; 01 1F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $3F.b,S		; 03 3F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $030318.l,X		; 1F 18 03 03
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	and $030330.l,X		; 3F 30 03 03
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FF3FFF.l,X		; FF FF 3F FF
	ora [$FF.b]		; 07 FF
	ora ($FF.b,X)		; 01 FF
	inc $3FFF.w,X		; FE FF 3F
	sbc $FFFF07.l,X		; FF 07 FF FF
	sbc $FF3CFF.l,X		; FF FF 3C FF
	ora [$FF.b]		; 07 FF
	sbc ($FF.b,X)		; E1 FF
	sed		; F8
	sbc $0CFF70.l,X		; FF 70 FF 0C
	sbc $6100E3.l,X		; FF E3 00 61
	brk $78.b		; 00 78
	bvs  -4.b		; 70 FC
	sed		; F8
	inc $FFDE.w,X		; FE DE FF
	sty $84FE.w		; 8C FE 84
	sbc $81DF07.l,X		; FF 07 DF 81
	sta ($E0.b,X)		; 81 E0
	bra  -8.b		; 80 F8
	ldy #$70FC.w		; A0 FC 70
	inc $CC98.w,X		; FE 98 CC
	tsb $1096.w		; 0C 96 10
	lda [$12.b],Y		; B7 12
	adc $3DFF.w,Y		; 79 FF 3D
	sbc $1E7F1C.l,X		; FF 1C 7F 1E
	and $063F0E.l,X		; 3F 0E 3F 06
	ora $079F07.l,X		; 1F 07 9F 07
	cmp $FF18FF.l		; CF FF 18 FF
	dey		; 88
	adc $253F4C.l,X		; 7F 4C 3F 25
	and $161F26.l,X		; 3F 26 1F 16
	ora $0A8F12.l,X		; 1F 12 8F 0A
	sbc ($FF.b,S),Y		; F3 FF
	sbc ($FF.b,S),Y		; F3 FF
	sbc $79FF.w,Y		; F9 FF 79
	sbc $38FF78.l,X		; FF 78 FF 38
	sbc $18FF38.l,X		; FF 38 FF 18
	sbc $FF81FF.l,X		; FF FF 81 FF
	rti		; 40

	sbc $20FF40.l,X		; FF 40 FF 20
	sbc $92FFA2.l,X		; FF A2 FF 92
	sbc $53FFD3.l,X		; FF D3 FF 53
	ldy $9EFE.w,X		; BC FE 9E
	sbc $CEFFDE.l,X		; FF DE FF CE
	sbc $C6FFCE.l,X		; FF CE FF C6
	sbc $46FF46.l,X		; FF 46 FF 46
	sbc $FF88FE.l		; EF FE 88 FF
	sta $FF.b		; 85 FF
	sta $FF.b		; 85 FF
	lda $FF.b		; A5 FF
	lda $FF.b,S		; A3 FF
	and ($FF.b,S),Y		; 33 FF
	and ($EF.b)		; 32 EF
	rol A		; 2A
	jsr ($7EFE.w,X)		; FC FE 7E
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FBFFFB.l,X		; FF FB FF FB
	sbc $FF3AFE.l,X		; FF FE 3A FF
	ora $0EFF.w,X		; 1D FF 0E
	sbc $C3FF87.l,X		; FF 87 FF C3
	sbc $31FF61.l,X		; FF 61 FF 31
	sbc $000018.l,X		; FF 18 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	cpy #$C0E0.w		; C0 E0 C0
	cpx #$F0E0.w		; E0 E0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C040.w		; C0 40 C0
	brk $E0.b		; 00 E0
	ldy #$80E0.w		; A0 E0 80
	beq -48.b		; F0 D0
	ora ($07.b,X)		; 01 07
	ora $07.b,S		; 03 07
	asl $0F.b		; 06 0F
	tsb $0E.b		; 04 0E
	php		; 08
	trb $1800.w		; 1C 00 18
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$01.b]		; 07 01
	asl $0C02.w		; 0E 02 0C
	tsb $18.b		; 04 18
	brk $18.b		; 00 18
	php		; 08
	bmi  32.b		; 30 20
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora [$0F.b]		; 07 0F
	tsb $181F.w		; 0C 1F 18
	and $617E30.l,X		; 3F 30 7E 61
	sed		; F8
	cmp ($F0.b,X)		; C1 F0
	ora ($01.b,X)		; 01 01
	ora [$04.b]		; 07 04
	ora $101F08.l		; 0F 08 1F 10
	rol $7C22.w,X		; 3E 22 7C
	mvp $88,$F8		; 44 F8 88
	beq  16.b		; F0 10
	asl $F8FF.w,X		; 1E FF F8
	sbc $00FCC0.l,X		; FF C0 FC 00
	cpx #$8000.w		; E0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	sbc $02FE80.l,X		; FF 80 FE 02
	beq  16.b		; F0 10
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	brk $03.b		; 00 03
	ora $0B.b		; 05 0B
	php		; 08
	and ($7E.b),Y		; 31 7E
	brk $7C.b		; 00 7C
	sta ($6D.b,X)		; 81 6D
	sta $C0.b,S		; 83 C0
	rti		; 40

	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	asl $16.b,X		; 16 16
	phd		; 0B
	phd		; 0B
	lsr $57.b,X		; 56 57
	eor $57.b,X		; 55 57
	pha		; 48
	eor #$8624.w		; 49 24 86
	cpx #$E48C.w		; E0 8C E4
	clc		; 18
	iny		; C8
	sty $52.b,X		; 94 52
	pla		; 68
	ora [$F0.b]		; 07 F0
	stx $20A0.w		; 8E A0 20
	ora $788FF0.l,X		; 1F F0 8F 78
	phd		; 0B
	beq  23.b		; F0 17
	.db $62, $0B, $A6		; 62 0B A6
	lda [$0F.b],Y		; B7 0F
	lda $07FF9F.l		; AF 9F FF 07
	rts		; 60

	ora [$60.b]		; 07 60
	eor ($6E.b,X)		; 41 6E
	and ($00.b,X)		; 21 00
	rti		; 40

	bvc  32.b		; 50 20
	php		; 08
	jsr $401F.w		; 20 1F 40
	bra  28.b		; 80 1C
	bra  95.b		; 80 5F
	cpy #$8011.w		; C0 11 80
	adc $A72F8F.l,X		; 7F 8F 2F A7
	and [$F0.b],Y		; 37 F0
	brk $C0.b		; 00 C0
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($3F.b,X)		; 01 3F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $060738.l,X		; 3F 38 07 06
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$7F.b]		; 07 7F
	ora ($1F.b,X)		; 01 1F
	cpx #$7CFF.w		; E0 FF 7C
	sbc $07FF1F.l,X		; FF 1F FF 07
	adc $001F01.l,X		; 7F 01 1F 00
	ora $1F737F.l		; 0F 7F 73 1F
	trb $06FF.w		; 1C FF 06
	sbc $8EFF79.l,X		; FF 79 FF 8E
	adc $181F63.l,X		; 7F 63 1F 18
	ora $00000E.l		; 0F 0E 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0F.b		; 06 0F
	php		; 08
	trb $0000.w		; 1C 00 00
	ora ($01.b,X)		; 01 01
	ora $00000C.l		; 0F 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1B00.w		; 0E 00 1B
	phd		; 0B
	ora ($7F.b,X)		; 01 7F
	brk $FF.b		; 00 FF
	sed		; F8
	sbc $07FF1F.l,X		; FF 1F FF 07
	and $010F03.l,X		; 3F 03 0F 01
	ora [$00.b]		; 07 00
	sta $7F.b,S		; 83 7F
	sei		; 78
	sbc $63FF8E.l,X		; FF 8E FF 63
	sbc $233F8C.l,X		; FF 8C 3F 23
	ora $040708.l		; 0F 08 07 04
	ora $02.b,S		; 03 02
	asl $E8FF.w		; 0E FF E8
	ora $C00FF6.l,X		; 1F F6 0F C0
	ora $183ECC.l,X		; 1F CC 3E 18
	ror $FC00.w,X		; 7E 00 FC
	brk $78.b		; 00 78
	ora $006A00.l		; 0F 00 6A 00
	cmp [$00.b]		; C7 00
	sep #$00		; E2 00
	cpy $DC08.w		; CC 08 DC
	rti		; 40

	sei		; 78
	bvc   0.b		; 50 00
	brk $03.b		; 00 03
	sta $030F03.l		; 8F 03 0F 03
	sta $028703.l		; 8F 03 87 02
	ora [$02.b]		; 07 02
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$0F.b]		; 07 0F
	asl A		; 0A
	ora $0A0F0A.l		; 0F 0A 0F 0A
	ora [$02.b]		; 07 02
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$05.b]		; 07 05
	ora [$05.b]		; 07 05
	clc		; 18
	ldy $BC10.w,X		; BC 10 BC
	bpl -100.b		; 10 9C
	bpl -104.b		; 10 98
	brk $98.b		; 00 98
	brk $90.b		; 00 90
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	ldy $BC10.w,X		; BC 10 BC
	trb $9C.b		; 14 9C
	tsb $98.b		; 04 98
	php		; 08
	tya		; 98
	dey		; 88
	bcc -128.b		; 90 80
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	cop $EF.b		; 02 EF
	cop $EF.b		; 02 EF
	cop $C7.b		; 02 C7
	brk $C7.b		; 00 C7
	brk $86.b		; 00 86
	brk $86.b		; 00 86
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	sbc $A8EFA8.l		; EF A8 EF A8
	cmp [$C5.b]		; C7 C5
	cmp [$C5.b]		; C7 C5
	stx $84.b		; 86 84
	stx $86.b		; 86 86
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	adc $BDFF.w,X		; 7D FF BD
	sbc $DEFFFE.l,X		; FF FE FF DE
	sbc $EFFFCF.l,X		; FF CF FF EF
	sbc $F7FFE7.l,X		; FF E7 FF F7
	sbc $FF18FF.l,X		; FF FF 18 FF
	tsb $8CFF.w		; 0C FF 8C
	sbc $46FFC6.l,X		; FF C6 FF 46
	sbc $23FF23.l,X		; FF 23 FF 23
	sbc $F0E081.l,X		; FF 81 E0 F0
	beq  -8.b		; F0 F8
	beq  -8.b		; F0 F8
	sed		; F8
	jsr ($FC78.w,X)		; FC 78 FC
	sei		; 78
	jsr ($FE3C.w,X)		; FC 3C FE
	ldy $F0FE.w,X		; BC FE F0
	cpy #$68F8.w		; C0 F8 68
	sed		; F8
	rts		; 60

	jsr ($FC34.w,X)		; FC 34 FC
	bit $FC.b,X		; 34 FC
	bpl  -2.b		; 10 FE
	inc A		; 1A
	inc $4E0A.w,X		; FE 0A 4E
	sbc ($FE.b,X)		; E1 FE
	sta ($29.b,X)		; 81 29
	bra 105.b		; 80 69
	sta [$50.b]		; 87 50
	bra  42.b		; 80 2A
	bra  26.b		; 80 1A
	rti		; 40

	phx		; DA
	brk $D0.b		; 00 D0
	ora ($80.b),Y		; 11 80
	ora ($70.b,X)		; 01 70
	ror $70.b,X		; 76 70
	adc [$60.b],Y		; 77 60
	adc $005F40.l		; 6F 40 5F 00
	lda $F8BF00.l,X		; BF 00 BF F8
	inc $FE.b,X		; F6 FE
	sbc $FC7F.w,Y		; F9 7F FC
	and $9F877E.l,X		; 3F 7E 87 9F
	adc $47.b,S		; 63 47
	tyx		; BB
	and $D1.b,S		; 23 D1
	ora ($61.b,S),Y		; 13 61
	sbc ($72.b),Y		; F1 72
	plx		; FA
	and $1CFD.w,Y		; 39 FD 1C
	inc $FF03.w,X		; FE 03 FF
	eor ($FF.b,X)		; 41 FF
	and ($FF.b,X)		; 21 FF
	bpl  -1.b		; 10 FF
	bmi  28.b		; 30 1C
	rol A		; 2A
	inx		; E8
	dec A		; 3A
	bvs -116.b		; 70 8C
	bvs -56.b		; 70 C8
	ldy #$C0E8.w		; A0 E8 C0
	jsr ($DCC4.w,X)		; FC C4 DC
	cpy $C2D0.w		; CC D0 C2
	bit $BC14.w,X		; 3C 14 BC
	sty $0808.w		; 8C 08 08
	bpl -108.b		; 10 94
	bne -44.b		; D0 D4
	pei ($D6.b)		; D4 D6
	bit $00EE.w		; 2C EE 00
	ora $00.b,S		; 03 00
	ora $0E1F03.l		; 0F 03 1F 0E
	and $307F18.l,X		; 3F 18 7F 30
	jsr ($F060.w,X)		; FC 60 F0
	cpy #$01E0.w		; C0 E0 01
	ora ($07.b,X)		; 01 07
	tsb $0F.b		; 04 0F
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	cop $78.b		; 02 78
	php		; 08
	beq  16.b		; F0 10
	cpx #$0020.w		; E0 20 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $06.b		; 06 06
	asl $04.b		; 06 04
	tsb $04.b		; 04 04
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
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E040.w		; C0 40 E0
	sed		; F8
	sed		; F8
	inc $FFFE.w,X		; FE FE FF
	and $FF0FFF.l,X		; 3F FF 0F FF
	cmp [$FF.b]		; C7 FF
	sbc ($FF.b,S),Y		; F3 FF
	sbc $F8FF.w,X		; FD FF F8
	iny		; C8
	inc $FFE2.w,X		; FE E2 FF
	sec		; 38
	sbc $63FF8E.l,X		; FF 8E FF 63
	sbc $E8FF91.l,X		; FF 91 FF E8
	sbc $000038.l,X		; FF 38 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$E0E0.w		; C0 E0 E0
	beq -16.b		; F0 F0
	sed		; F8
	sed		; F8
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$E040.w		; C0 40 E0
	ldy #$D0F0.w		; A0 F0 D0
	sed		; F8
	inx		; E8
	jsr ($7E74.w,X)		; FC 74 7E
	sbc $9FFF3F.l,X		; FF 3F FF 9F
	sbc $F7FFEF.l,X		; FF EF FF F7
	sbc $BDFF7B.l,X		; FF 7B FF BD
	sbc $FFFFDE.l,X		; FF DE FF FF
	tsb $06FF.w		; 0C FF 06
	sbc $C1FF03.l,X		; FF 03 FF C1
	sbc $30FF60.l,X		; FF 60 FF 30
	sbc $0CFF18.l,X		; FF 18 FF 0C
	sbc $FFF7FF.l		; EF FF F7 FF
	adc $FF3FFF.l,X		; 7F FF 3F FF
	cmp $FFEFFF.l,X		; DF FF EF FF
	sbc [$FF.b],Y		; F7 FF
	xce		; FB
	sbc $FFC6FF.l,X		; FF FF C6 FF
	adc $FF.b,S		; 63 FF
	and ($FF.b),Y		; 31 FF
	tya		; 98
	sbc $C6FF0C.l,X		; FF 0C FF C6
	sbc $31FF63.l,X		; FF 63 FF 31
	cop $07.b		; 02 07
	tsb $0E.b		; 04 0E
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	ora [$01.b]		; 07 01
	asl $02.b		; 06 02
	tsb $0C00.w		; 0C 00 0C
	tsb $18.b		; 04 18
	bpl  24.b		; 10 18
	clc		; 18
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	ora $7F.b,S		; 03 7F
	ora $FF3CFF.l		; 0F FF 3C FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $607F18.l,X		; 1F 18 7F 60
	sbc $000000.l,X		; FF 00 00 00
	brk $01.b		; 00 01
	ora ($1F.b,X)		; 01 1F
	asl $78FF.w		; 0E FF 78
	sbc $81FEE0.l,X		; FF E0 FE 81
	sbc $E202.w,X		; FD 02 E2
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	adc $01FF40.l,X		; 7F 40 FF 01
	jsr ($F105.w,X)		; FC 05 F1
	ora ($80.b,S),Y		; 13 80
	sta ($00.b,X)		; 81 00
	ora ($00.b,X)		; 01 00
	sbc $00FFC0.l,X		; FF C0 FF 00
	sbc $60FF00.l,X		; FF 00 FF 60
	sbc ($60.b,S),Y		; F3 60
	tda		; 7B
	bcs -69.b		; B0 BB
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	jsr ($FE0C.w,X)		; FC 0C FE
	asl $F0.b		; 06 F0
	beq  65.b		; F0 41
	sbc $FD61.w,X		; FD 61 FD
	ldy #$98FC.w		; A0 FC 98
	wai		; CB
	tya		; 98
	cmp $43.b,S		; C3 43
	sbc [$07.b]		; E7 07
	sbc $4CFF3E.l,X		; FF 3E FF 4C
	sbc $00FF04.l,X		; FF 04 FF 00
	lsr $BCBC.w		; 4E BC BC
	lda $1D5F3C.l,X		; BF 3C 5F 1D
	adc $84FF7B.l,X		; 7F 7B FF 84
	inc $4C00.w,X		; FE 00 4C
	brk $B5.b		; 00 B5
	brk $08.b		; 00 08
	trb $3810.w		; 1C 10 38
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	trb $1804.w		; 1C 04 18
	php		; 08
	bmi   0.b		; 30 00
	bmi  16.b		; 30 10
	rts		; 60

	rti		; 40

	rts		; 60

	rts		; 60

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
	clc		; 18
	bit $7220.w,X		; 3C 20 72
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $6C.b		; 00 6C
	bit $0000.w		; 2C 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora $0F.b,S		; 03 0F
	asl $0F.b		; 06 0F
	tsb $001E.w		; 0C 1E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	ora ($0E.b,X)		; 01 0E
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	cpy #$E080.w		; C0 80 E0
	cpy #$F0F0.w		; C0 F0 F0
	sed		; F8
	rts		; 60

	beq  32.b		; F0 20
	jsr ($FE38.w,X)		; FC 38 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	bra -16.b		; 80 F0
	cpy #$6060.w		; C0 60 60
	bcs -128.b		; B0 80
	ldy $7090.w,X		; BC 90 70
	jsr ($F840.w,X)		; FC 40 F8
	bcs 124.b		; B0 7C
	brk $FC.b		; 00 FC
	rts		; 60

	beq -64.b		; F0 C0
	beq   0.b		; F0 00
	cpx #$C000.w		; E0 00 C0
	sei		; 78
	brk $50.b		; 00 50
	brk $38.b		; 00 38
	brk $10.b		; 00 10
	brk $60.b		; 00 60
	rti		; 40

	cpx #$C000.w		; E0 00 C0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $0F3F01.l		; 0F 01 3F 0F
	sbc $E0FF3C.l,X		; FF 3C FF E0
	inc $F880.w,X		; FE 80 F8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $407F18.l,X		; 1F 18 7F 40
	sbc $08F801.l,X		; FF 01 F8 08
	cpx #$8020.w		; E0 20 80
	bra   0.b		; 80 00
	ora ($00.b,X)		; 01 00
	ora $03.b,S		; 03 03
	ora [$06.b]		; 07 06
	ora $181F0C.l		; 0F 0C 1F 18
	and $607C30.l,X		; 3F 30 7C 60
	sei		; 78
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora $111F08.l		; 0F 08 1F 11
	rol $7C22.w,X		; 3E 22 7C
	mvp $08,$78		; 44 78 08
	and [$F0.b]		; 27 F0
	sbc $C094C0.l,X		; FF C0 94 C0
	bit $C3.b,X		; 34 C3
	plp		; 28
	cpy #$4015.w		; C0 15 40
	sta $ED20.w		; 8D 20 ED
	brk $E8.b		; 00 E8
	dey		; 88
	cpy #$B800.w		; C0 00 B8
	tsa		; 3B
	clv		; B8
	tsa		; 3B
	bmi  55.b		; 30 37
	jsr $002F.w		; 20 2F 00
	eor $7C5F00.l,X		; 5F 00 5F 7C
	xce		; FB
	adc $7EBFFC.l,X		; 7F FC BF 7E
	sta $4F43BF.l,X		; 9F BF 43 4F
	and ($23.b),Y		; 31 23
	eor $6811.w,X		; 5D 11 68
	ora #$F830.w		; 09 30 F8
	and $1CFD.w,Y		; 39 FD 1C
	ror $FF0E.w,X		; 7E 0E FF
	ora ($FF.b,X)		; 01 FF
	jsr $10FF.w		; 20 FF 10
	sbc $18FF08.l,X		; FF 08 FF 18
	asl $F415.w		; 0E 15 F4
	sta $C638.w,X		; 9D 38 C6
	sec		; 38
	cpx $D0.b		; E4 D0
	pea $FEE0.w		; F4 E0 FE
.ACCU 8
	sep #$EE		; E2 EE
	inc $E8.b		; E6 E8
	sbc ($1E.b,X)		; E1 1E
	asl A		; 0A
	dec $04C6.w,X		; DE C6 04
	tsb $88.b		; 04 88
	dex		; CA
	inx		; E8
	nop		; EA
	nop		; EA
	xba		; EB
	asl $F7.b,X		; 16 F7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$80FF.w		; E0 FF 80
	sed		; F8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora [$00.b]		; 07 00
	ora [$08.b]		; 07 08
	asl $38.b		; 06 38
	jsr ($E004.w,X)		; FC 04 E0
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $05.b		; 05 05
	ora $15.b,X		; 15 15
	tsb $04.b		; 04 04
	ora $08.b,S		; 03 08
	ora $B05E38.l		; 0F 38 5E B0
	sty $E419.w		; 8C 19 E4
	ora [$C0.b]		; 07 C0
	ora $033BD8.l,X		; 1F D8 3B 03
	brk $0F.b		; 00 0F
	php		; 08
	ora [$10.b],Y		; 17 10
	ora $616700.l		; 0F 00 67 61
	tsx		; BA
	tsx		; BA
	rts		; 60

	tda		; 7B
	cli		; 58
	ror $4B40.w,X		; 7E 40 4B
	jsr $0233.w		; 20 33 02
	adc $21.b,S		; 63 21
	cpy #$A242.w		; C0 42 A2
	sta ($40.b),Y		; 91 40
	and $7280.w,Y		; 39 80 72
	tsb $00.b		; 04 00
	jsr ($7E82.w,X)		; FC 82 7E
	cpy #$835C.w		; C0 5C 83
	ldy $5D11.w,X		; BC 11 5D
	and ($BF.b),Y		; 31 BF
	sei		; 78
	ror $FBF8.w,X		; 7E F8 FB
	sec		; 38
	ora [$3F.b]		; 07 3F
	brk $0F.b		; 00 0F
	bvs  14.b		; 70 0E
	brk $06.b		; 00 06
	sta ($00.b,X)		; 81 00
	eor $00.b,S		; 43 00
	sbc $E00300.l,X		; FF 00 03 E0
	brk $FB.b		; 00 FB
	brk $8E.b		; 00 8E
	brk $FF.b		; 00 FF
	sei		; 78
	ror $BE38.w,X		; 7E 38 BE
	.db $82, $03, $02		; 82 03 02
	brk $80.b		; 00 80
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora ($0F.b,X)		; 01 0F
	ora $0F.b,S		; 03 0F
	asl $1F.b		; 06 1F
	asl $3F.b		; 06 3F
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$05.b]		; 07 05
	ora $020F09.l		; 0F 09 0F 02
	asl $00.b		; 06 00
	brk $F0.b		; 00 F0
	cpx #$78F8.w		; E0 F8 78
	jsr ($FCD8.w,X)		; FC D8 FC
	iny		; C8
	jsr ($DCA0.w,X)		; FC A0 DC
	bcc -10.b		; 90 F6
	bit $F1.b,X		; 34 F1
	brk $00.b		; 00 00
	beq  96.b		; F0 60
	sed		; F8
	bpl  -8.b		; 10 F8
	bcc -56.b		; 90 C8
	bra -40.b		; 80 D8
	tya		; 98
	bcc  24.b		; 90 18
	ldx $38.b,Y		; B6 38
	ora [$D8.b]		; 07 D8
	ora [$D8.b]		; 07 D8
	asl $D8.b		; 06 D8
	dec $5811.w		; CE 11 58
	sty $B5.b		; 84 B5
	cpy $7C45.w		; CC 45 7C
	sta $3C.b		; 85 3C
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	ora ($39.b,X)		; 01 39
	sta [$B4.b]		; 87 B4
	phk		; 4B
	pha		; 48
	txy		; 9B
	clc		; 18
	wai		; CB
	php		; 08
	rti		; 40

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$6000.w		; C0 00 60
	rti		; 40

	rts		; 60

	ldy #$C030.w		; A0 30 C0
	bpl   0.b		; 10 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	rti		; 40

	ldy #$C020.w		; A0 20 C0
	brk $F0.b		; 00 F0
	bpl   0.b		; 10 00
	bit $3C00.w,X		; 3C 00 3C
	bpl 124.b		; 10 7C
	bpl 124.b		; 10 7C
	bpl 120.b		; 10 78
	jsr $20F8.w		; 20 F8 20
	sed		; F8
	jsr $14F0.w		; 20 F0 14
	tsb $14.b		; 04 14
	tsb $34.b		; 04 34
	bit $30.b		; 24 30
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	rti		; 40

	bvs   0.b		; 70 00
	bvs  16.b		; 70 10
	eor ($08.b,S),Y		; 53 08
	eor ($09.b)		; 52 09
	ora ($09.b)		; 12 09
	and $380A00.l,X		; 3F 00 0A 38
	phd		; 0B
	sec		; 38
	phd		; 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	ora [$10.b],Y		; 17 10
	ora [$10.b],Y		; 17 10
	ora [$10.b],Y		; 17 10
	ora [$00.b]		; 07 00
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	ora ($0F.b,X)		; 01 0F
	brk $0F.b		; 00 0F
	tsb $1F.b		; 04 1F
	tsb $1F.b		; 04 1F
	tsb $033F.w		; 0C 3F 03
	cop $03.b		; 02 03
	brk $07.b		; 00 07
	tsb $07.b		; 04 07
	tsb $0F.b		; 04 0F
	php		; 08
	ora $101E09.l		; 0F 09 1E 10
	asl $8012.w,X		; 1E 12 80
	dec $CD00.w		; CE 00 CD
	ora ($DC.b,X)		; 01 DC
	ora ($9C.b,X)		; 01 9C
	ora ($9E.b,X)		; 01 9E
	brk $1C.b		; 00 1C
	ora ($3C.b,X)		; 01 3C
	ora #$3C.b		; 09 3C
	bra   3.b		; 80 03
	bra   3.b		; 80 03
	dey		; 88
	txa		; 8A
	php		; 08
	asl A		; 0A
	php		; 08
	php		; 08
	clc		; 18
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	brk $3B.b		; 00 3B
	tsb $07.b		; 04 07
	bit $1FFF.w,X		; 3C FF 1F
	ora $1F0F1F.l,X		; 1F 1F 0F 1F
	lda $27.b,S		; A3 27
	sbc $3E7D.w,Y		; F9 7D 3E
	and $00FD01.l,X		; 3F 01 FD 00
	jsr ($FFC3.w,X)		; FC C3 FF
	cmp [$FF.b]		; C7 FF
	cmp $FF.b,S		; C3 FF
	and ($7F.b,X)		; 21 7F
	clv		; B8
	sbc $D8FF86.l,X		; FF 86 FF D8
	jsr $60C0.w		; 20 C0 60
	beq -32.b		; F0 E0
	beq -32.b		; F0 E0
	beq -32.b		; F0 E0
	cpy #$D0E0.w		; C0 E0 D0
	bne  80.b		; D0 50
	bvc -128.b		; 50 80
	ldy #$7000.w		; A0 00 70
	cpy #$E0F0.w		; C0 F0 E0
	beq -64.b		; F0 C0
	beq -64.b		; F0 C0
	beq -48.b		; F0 D0
	sed		; F8
	brk $F8.b		; 00 F8
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	bra  32.b		; 80 20
	cpy #$6020.w		; C0 20 60
	bpl  48.b		; 10 30
	dey		; 88
	bra  68.b		; 80 44
	rts		; 60

	trb $8080.w		; 1C 80 80
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpx #$70E0.w		; E0 E0 70
	bvs  56.b		; 70 38
	sec		; 38
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	php		; 08
	asl $3E08.w,X		; 1E 08 3E
	clc		; 18
	rol $7E10.w,X		; 3E 10 7E
	bmi 122.b		; 30 7A
	jsr $0EFA.w		; 20 FA 0E
	asl A		; 0A
	asl $1C02.w		; 0E 02 1C
	ora ($1C.b),Y		; 11 1C
	ora $38.b		; 05 38
	and ($38.b,X)		; 21 38
	ora #$70.b		; 09 70
	eor ($70.b,X)		; 41 70
	ora ($3E.b),Y		; 11 3E
	eor #$35.b		; 49 35
	mvn $94,$34		; 54 34 94
	ora ($96.b)		; 12 96
	and #$AF.b		; 29 AF
	and ($B1.b)		; 32 B1
	and $9E1EBC.l,X		; 3F BC 1E 9E
	brk $C8.b		; 00 C8
	ora ($D8.b,S),Y		; 13 D8
	ora ($D8.b,S),Y		; 13 D8
	ora $FC.b		; 05 FC
	cop $FA.b		; 02 FA
	jsr $39FC.w		; 20 FC 39
	sbc $FF1C.w,X		; FD 1C FF
	ora [$F1.b]		; 07 F1
	iny		; C8
	ora $7D00FE.l		; 0F FE 00 7D
	ora ($1A.b,X)		; 01 1A
	ora $00.b,S		; 03 00
	sbc $9E004A.l,X		; FF 4A 00 9E
	brk $1E.b		; 00 1E
	bpl -16.b		; 10 F0
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	ora ($0F.b,X)		; 01 0F
	ora $74B4B4.l		; 0F B4 B4 74
	stz $81.b,X		; 74 81
	beq  15.b		; F0 0F
	beq  47.b		; F0 2F
	sta $5F3F5F.l,X		; 9F 5F 3F 5F
	and $003F48.l,X		; 3F 48 3F 00
	cpx #$0000.w		; E0 00 00
	rti		; 40

	eor $670F00.l		; 4F 00 0F 67
	adc $CFDFCF.l		; 6F CF DF CF
	cmp $00DFC0.l,X		; DF C0 DF 00
	asl $0000.w,X		; 1E 00 00
	tas		; 1B
	and ($0F.b,S),Y		; 33 0F
	and $683F0F.l,X		; 3F 0F 3F 68
	clc		; 18
	.db $42, $20		; 42 20
	lsr $20.b		; 46 20
	lsr $20.b		; 46 20
	jmp $0F21.w		; 4C 21 0F
	ora $07.b,S		; 03 07
	ora $071F00.l		; 0F 00 1F 07
	and $1F3F1F.l,X		; 3F 1F 3F 1F
	ora $1E1F1F.l,X		; 1F 1F 1F 1E
	asl $6F2A.w,X		; 1E 2A 6F
	stz $73.b,X		; 74 73
	ora ($7F.b),Y		; 11 7F
	ora ($7F.b,X)		; 01 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7C.b		; 00 7C
	ora ($FA.b,X)		; 01 FA
	dec A		; 3A
	sec		; 38
	adc $7C3C.w,X		; 7D 3C 7C
	rti		; 40

	dec A		; 3A
	jsl $011416.l		; 22 16 14 01
	brk $20.b		; 00 20
	and $60.b,S		; 23 60
	ror $76.b		; 66 76
	sta $C17C.w,Y		; 99 7C C1
	trb $9EC1.w		; 1C C1 9E
	sta ($62.b,X)		; 81 62
	sbc $18.b,S		; E3 18
	inc $3906.w,X		; FE 06 39
	tax		; AA
	ora ($B6.b),Y		; 11 B6
	clc		; 18
	rol $FE02.w,X		; 3E 02 FE
.ACCU 16
.INDEX 16
	rep #$7E		; C2 7E
	brk $9C.b		; 00 9C
	bra -92.b		; 80 A4
	bit $00.b		; 24 00
	cpy $00.b		; C4 00
	stz $87.b,X		; 74 87
	rol $2E82.w,X		; 3E 82 2E
	cmp ($27.b,X)		; C1 27
	cpy #$C023.w		; C0 23 C0
	and ($C0.b,X)		; 21 C0
	jsr $20C0.w		; 20 C0 20
	cpx #$C920.w		; E0 20 C9
	php		; 08
	cmp $04.b		; C5 04
	rep #$02		; C2 02
	cmp ($01.b,X)		; C1 01
	cpy #$E000.w		; C0 00 E0
	jsr $20E0.w		; 20 E0 20
	cpy #$F000.w		; C0 00 F0
	clc		; 18
	cpx #$7808.w		; E0 08 78
	tsb $84B0.w		; 0C B0 84
	cli		; 58
	cpy $2C.b		; C4 2C
.INDEX 8
	sep #$14		; E2 14
	adc ($18.b)		; 72 18
	and ($E0.b)		; 32 E0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	sei		; 78
	brk $BC.b		; 00 BC
	sty $5C.b		; 84 5C
	rti		; 40

	bit $2E20.w		; 2C 20 2E
	jsl $20F020.l		; 22 20 F0 20
	beq  32.b		; F0 20
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	bpl  96.b		; 10 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	rts		; 60

	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $0B.b		; 00 0B
	clc		; 18
	ora $1C.b		; 05 1C
	ora $0C.b		; 05 0C
	ora $0C.b		; 05 0C
	ora $0E.b,S		; 03 0E
	ora $06.b,S		; 03 06
	cop $06.b		; 02 06
	brk $06.b		; 00 06
	ora [$00.b]		; 07 00
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	ora $00.b,S		; 03 00
	ora $04.b		; 05 04
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	tsb $183E.w		; 0C 3E 18
	rol $7E18.w,X		; 3E 18 7E
	clc		; 18
	jmp ($7C30.w,X)		; 7C 30 7C
	bmi  -4.b		; 30 FC
	bmi  -8.b		; 30 F8
	rts		; 60

	sed		; F8
	asl $3C02.w,X		; 1E 02 3C
	jsr $243C.w		; 20 3C 24
	bit $7804.w,X		; 3C 04 78
	rti		; 40

	sei		; 78
	pha		; 48
	sei		; 78
	php		; 08
	beq -128.b		; F0 80
	ora #$093C.w		; 09 3C 09
	bit $3818.w,X		; 3C 18 38
	clc		; 18
	sei		; 78
	ora ($78.b),Y		; 11 78
	bpl 121.b		; 10 79
	cop $79.b		; 02 79
	ora ($FA.b,X)		; 01 FA
	clc		; 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	ora ($18.b,X)		; 01 18
	ora ($58.b,X)		; 01 58
	eor $58.b,S		; 43 58
	phk		; 4B
	cli		; 58
	phk		; 4B
	ora [$4F.b]		; 07 4F
	asl $41.b		; 06 41
	sta ($44.b),Y		; 91 44
	eor ($84.b),Y		; 51 84
	eor ($88.b,S),Y		; 53 88
	lda ($09.b)		; B2 09
	ldx $11.b		; A6 11
	stz $13.b		; 64 13
	bra  -1.b		; 80 FF
	brk $F9.b		; 00 F9
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bcs -96.b		; B0 A0
	beq -32.b		; F0 E0
	inx		; E8
	rti		; 40

	sed		; F8
	brk $B4.b		; 00 B4
	rti		; 40

	clv		; B8
	rti		; 40

	tsx		; BA
	rti		; 40

	stz $8060.w		; 9C 60 80
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	bvc   0.b		; 50 00
	bvc   0.b		; 50 00
	cli		; 58
	brk $5C.b		; 00 5C
	brk $6C.b		; 00 6C
	brk $6E.b		; 00 6E
	trb $0C.b		; 14 0C
	bpl   8.b		; 10 08
	ora ($18.b,X)		; 01 18
	and $10.b,S		; 23 10
	rol $10.b		; 26 10
	asl $30.b		; 06 30
	tsb $21.b		; 04 21
	jmp $0320.w		; 4C 20 03
	ora $070707.l,X		; 1F 07 07 07
	ora [$0F.b]		; 07 0F
	ora $0F0F0F.l		; 0F 0F 0F 0F
	ora $1E1E1E.l		; 0F 1E 1E 1E
	asl $6040.w,X		; 1E 40 60
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E0.b		; C0 E0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp $4C21.w		; 4C 21 4C
	and ($0C.b,X)		; 21 0C
	bmi  44.b		; 30 2C
	ora ($2C.b)		; 12 2C
	ora ($2C.b)		; 12 2C
	ora ($2C.b)		; 12 2C
	ora ($2C.b)		; 12 2C
	ora ($1E.b)		; 12 1E
	asl $1E1E.w,X		; 1E 1E 1E
	asl $0C0E.w		; 0E 0E 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0C0C.w		; 0C 0C 0C
	pha		; 48
	jsl $086008.l		; 22 08 60 08
	stz $10.b		; 64 10
	mvp $40,$10		; 44 10 40
	bpl  72.b		; 10 48
	bmi  72.b		; 30 48
	bcs   8.b		; B0 08
	trb $1C1C.w		; 1C 1C 1C
	trb $1818.w		; 1C 18 18
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bvs 112.b		; 70 70
	bit $12.b		; 24 12
	brk $32.b		; 00 32
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	jmp $4C21.w		; 4C 21 4C
	jsr $204E.w		; 20 4E 20
	eor $30.b,S		; 43 30
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0E0E.w		; 0C 0E 0E
	asl $1E1E.w,X		; 1E 1E 1E
	asl $1F1F.w,X		; 1E 1F 1F
	ora $0F0F1F.l,X		; 1F 1F 0F 0F
	asl $1C22.w		; 0E 22 1C
	bmi  28.b		; 30 1C
	bmi  28.b		; 30 1C
	bmi  44.b		; 30 2C
	rts		; 60

	bit $3C62.w		; 2C 62 3C
	ldx $FE7E.w,Y		; BE 7E FE
	bit $0E20.w,X		; 3C 20 0E
	brk $0E.b		; 00 0E
	brk $2E.b		; 00 2E
	jsr $001E.w		; 20 1E 00
	asl $5E02.w,X		; 1E 02 5E
	ror $FE1C.w,X		; 7E 1C FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	jmp ($0000.w,X)		; 7C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$20.b		; A0 20
	clc		; 18
	ror $7C18.w,X		; 7E 18 7C
	bmi 124.b		; 30 7C
	bmi 124.b		; 30 7C
	bmi 120.b		; 30 78
	rts		; 60

	sed		; F8
	rts		; 60

	sed		; F8
	rts		; 60

	beq  60.b		; F0 3C
	bit $3C.b		; 24 3C
	tsb $78.b		; 04 78
	rti		; 40

	sei		; 78
	pha		; 48
	sei		; 78
	php		; 08
	beq -128.b		; F0 80
	beq -112.b		; F0 90
	beq -112.b		; F0 90
	rti		; 40

	beq  64.b		; F0 40
	beq  64.b		; F0 40
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	beq -112.b		; F0 90
	cpx #$80.b		; E0 80
	cpx #$A0.b		; E0 A0
	cpx #$A0.b		; E0 A0
	rti		; 40

	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	rti		; 40

	rts		; 60

	rti		; 40

	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	bpl  64.b		; 10 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	clc		; 18
	brk $18.b		; 00 18
	bpl  24.b		; 10 18
	jsr $0038.w		; 20 38 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	php		; 08
	clc		; 18
	php		; 08
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	tyx		; BB
	tsa		; 3B
	sbc ($07.b,S),Y		; F3 07
	sbc $FFFCFF.l,X		; FF FF FC FF
	cpy #$F0.b		; C0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $3F.b		; 02 3F
	ora ($FF.b),Y		; 11 FF
	ora $FF.b,S		; 03 FF
	xce		; FB
	sbc $00FFE0.l,X		; FF E0 FF 00
	inc $E000.w,X		; FE 00 E0
	adc ($08.b,S),Y		; 73 08
	ora #$0404.w		; 09 04 04
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$03.b]		; 07 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	sec		; 38
	ldy $3CBC.w,X		; BC BC 3C
	jmp ($FCFC.w,X)		; 7C FC FC
	cpy #$F0.b		; C0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $18FC.w		; 20 FC 18
	inc $FE3C.w,X		; FE 3C FE
	clv		; B8
	inc $FC00.w,X		; FE 00 FC
	brk $E0.b		; 00 E0
	asl $01.b,X		; 16 01
	tsb $2C10.w		; 0C 10 2C
	brk $2C.b		; 00 2C
	brk $5C.b		; 00 5C
	cop $B8.b		; 02 B8
	cop $B0.b		; 02 B0
	cop $00.b		; 02 00
	jmp ($0E0E.w,X)		; 7C 0E 0E
	asl $1E0E.w		; 0E 0E 1E
	asl $1E1E.w,X		; 1E 1E 1E
	bit $7C3C.w,X		; 3C 3C 7C
	jmp ($7C7C.w,X)		; 7C 7C 7C
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($0F.b,X)		; 01 0F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	rti		; 40

	sbc $00FF80.l,X		; FF 80 FF 00
	sbc [$00.b]		; E7 00
	cmp $030001.l		; CF 01 00 03
	brk $1B.b		; 00 1B
	asl A		; 0A
	tsa		; 3B
	phd		; 0B
	sei		; 78
	clc		; 18
	sbc $20.b,S		; E3 20
	cmp $40.b,S		; C3 40
	.db $82, $80, $E0		; 82 80 E0
	beq -64.b		; F0 C0
	iny		; C8
	jsr $609C.w		; 20 9C 60
	rol $7F40.w,X		; 3E 40 7F
	ror $7BFF.w,X		; 7E FF 7B
	sta $E0B77B.l		; 8F 7B B7 E0
	rts		; 60

	beq -16.b		; F0 F0
	cpx #$60.b		; E0 60
	inx		; E8
	inx		; E8
	dec $FFC2.w,X		; DE C2 FF
	trb $364F.w		; 1C 4F 36
	sta [$FF.b]		; 87 FF
	rol A		; 2A
	jsr $105F.w		; 20 5F 10
	adc $08.b,S		; 63 08
	lda ($84.b),Y		; B1 84
	eor $29C0.w,Y		; 59 C0 29
	sbc $95.b,S		; E3 95
	adc [$89.b],Y		; 77 89
	and $14C1.w,X		; 3D C1 14
	cpx #$00.b		; E0 00
	pea $7A04.w		; F4 04 7A
	cop $BE.b		; 02 BE
	.db $82, $5C, $41		; 82 5C 41
	and #$5321.w		; 29 21 53
	eor ($CE.b,S),Y		; 53 CE
	ora $9C2FCE.l		; 0F CE 2F 9C
	asl $3DB9.w,X		; 1E B9 3D
	sbc ($FB.b)		; F2 FB
	cpx $F6.b		; E4 F6
	iny		; C8
	cpx $D890.w		; EC 90 D8
	cop $9F.b		; 02 9F
	asl $4C9F.w		; 0E 9F 4C
	and $707F18.l,X		; 3F 18 7F 70
	sbc $C0FFE0.l,X		; FF E0 FF C0
	inc $FC80.w,X		; FE 80 FC
	brk $E4.b		; 00 E4
	ora ($C0.b,X)		; 01 C0
	ora $80.b,S		; 03 80
	asl $01.b		; 06 01
	tsb $1902.w		; 0C 02 19
	tsb $03.b		; 04 03
	brk $06.b		; 00 06
	ora ($C2.b,X)		; 01 C2
	eor $80.b,S		; 43 80
	sta $00.b,S		; 83 00
	ora [$00.b]		; 07 00
	ora $001F00.l		; 0F 00 1F 00
	and $001F00.l,X		; 3F 00 1F 00
	ora $A70E4E.l		; 0F 4E 0E A7
	ora $2B.b,S		; 03 2B
	sta ($6B.b,X)		; 81 6B
	brk $D2.b		; 00 D2
	plp		; 28
	sta ($48.b)		; 92 48
	and ($8A.b),Y		; 31 8A
	and ($0A.b),Y		; 31 0A
	asl $FF.b		; 06 FF
	ora $FB.b,S		; 03 FB
	ora ($FD.b,X)		; 01 FD
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora $1F.b,S		; 03 1F
	asl $3C7F.w		; 0E 7F 3C
	sbc $E0FFF8.l,X		; FF F8 FF E0
	jsr ($F8C0.w,X)		; FC C0 F8
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $203F08.l		; 0F 08 3F 20
	sbc $02FE81.l,X		; FF 81 FE 02
	sed		; F8
	php		; 08
	beq  16.b		; F0 10
	eor [$F8.b],Y		; 57 F8
	sta $C03EE0.l,X		; 9F E0 3E C0
	adc $7881.w,X		; 7D 81 78
	sty $15.b		; 84 15
	ora $04.b		; 05 04
	rol $05.b,X		; 36 05
	adc [$F8.b],Y		; 77 F8
	sta $E0.b,S		; 83 E0
	rol $C0.b		; 26 C0
	eor $BB80.w		; 4D 80 BB
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0D.b		; 00 0D
	tsb $0C.b		; 04 0C
	bvc  32.b		; 50 20
	pha		; 48
	jsr $10A8.w		; 20 A8 10
	ldy $10.b		; A4 10
	sty $08.b,X		; 94 08
	clv		; B8
	brk $00.b		; 00 00
	bvs  32.b		; 70 20
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bpl  16.b		; 10 10
	bne -40.b		; D0 D8
	ldy #$88.b		; A0 88
	clv		; B8
	sty $84B0.w		; 8C B0 84
	ldy $B884.w,X		; BC 84 B8
	.db $82, $7C, $C2		; 82 7C C2
	lsr $20C3.w,X		; 5E C3 20
	brk $78.b		; 00 78
	php		; 08
	bvs   0.b		; 70 00
	jmp ($7804.w,X)		; 7C 04 78
	brk $7C.b		; 00 7C
	brk $BE.b		; 00 BE
	.db $82, $BC, $80		; 82 BC 80
	php		; 08
	asl $1C08.w,X		; 1E 08 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	tsb $0C00.w		; 0C 00 0C
	tsb $0C.b		; 04 0C
	tsb $08.b		; 04 08
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	php		; 08
	trb $0C08.w		; 1C 08 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$02.b]		; 07 02
	ora $281F04.l		; 0F 04 1F 28
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	ora ($3E.b,X)		; 01 3E
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora $0C1F06.l		; 0F 06 1F 0C
	ora $003E18.l,X		; 1F 18 3E 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	php		; 08
	asl $1C10.w,X		; 1E 10 1C
	brk $11.b		; 00 11
	tsb $0813.w		; 0C 13 08
	and [$10.b]		; 27 10
	and [$10.b]		; 27 10
	lsr $4C20.w		; 4E 20 4C
	and ($98.b,X)		; 21 98
	.db $42, $90		; 42 90
	mvp $03,$03		; 44 03 03
	ora [$07.b]		; 07 07
	ora $0F0F0F.l		; 0F 0F 0F 0F
	ora $1E1E1F.l,X		; 1F 1F 1E 1E
	bit $383C.w,X		; 3C 3C 38
	sec		; 38
	brk $08.b		; 00 08
	ora ($00.b)		; 12 00
	rol $11.b		; 26 11
	tsb $5C21.w		; 0C 21 5C
	cop $78.b		; 02 78
	cop $70.b		; 02 70
	tsb $40.b		; 04 40
	php		; 08
	ora [$07.b]		; 07 07
	ora $0E0E0F.l		; 0F 0F 0E 0E
	asl $3C1E.w,X		; 1E 1E 3C
	bit $3C3C.w,X		; 3C 3C 3C
	sec		; 38
	sec		; 38
	bmi  48.b		; 30 30
	ora ($9F.b,X)		; 01 9F
	brk $FE.b		; 00 FE
.INDEX 8
	sep #$1E		; E2 1E
	sbc $DD00.w,X		; FD 00 DD
	sep #$0D		; E2 0D
	asl $FE.b,X		; 16 FE
	sbc $0B.b,S		; E3 0B
	bpl   8.b		; 10 08
	brk $1B.b		; 00 1B
	cop $01.b		; 02 01
	cpx #$03.b		; E0 03
	bpl -125.b		; 10 83
	sep #$01		; E2 01
	beq -64.b		; F0 C0
	beq   1.b		; F0 01
	pea $FB3E.w		; F4 3E FB
	sta $63.b		; 85 63
	cpy $E423.w		; CC 23 E4
	ora ($24.b,S),Y		; 13 24
	wai		; CB
	brk $88.b		; 00 88
	brk $10.b		; 00 10
	asl A		; 0A
	nop		; EA
	lda ($BD.b,S),Y		; B3 BD
	cmp $5E.b,S		; C3 5E
	sbc $38.b		; E5 38
	sbc #$3001.w		; E9 01 30
	brk $70.b		; 00 70
	rts		; 60

	cpx #$E0.b		; E0 E0
	brk $1F.b		; 00 1F
	eor $9C.b,S		; 43 9C
	ldy #$CC.b		; A0 CC
	bcc -29.b		; 90 E3
	jsr $E001.w		; 20 01 E0
	cpy #$A0.b		; C0 A0
	bra -96.b		; 80 A0
	bra  80.b		; 80 50
	brk $2B.b		; 00 2B
	plb		; AB
	ora ($D3.b,S),Y		; 13 D3
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $00B0.w		; 20 B0 00
	rts		; 60

	cpy #$20.b		; C0 20
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	bra -80.b		; 80 B0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	adc ($1A.b,X)		; 61 1A
	adc ($12.b,X)		; 61 12
	cpy #$33.b		; C0 33
	sty $73.b		; 84 73
	tsb $03.b		; 04 03
	bvs -16.b		; 70 F0
	tya		; 98
	sta $000F28.l,X		; 9F 28 0F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $658F80.l,X		; FF 80 8F 65
	ora $F5.b		; 05 F5
	ora $00.b		; 05 00
	cpx #$00.b		; E0 00
	sta ($00.b,X)		; 81 00
	ora [$00.b]		; 07 00
	ora $207E10.l,X		; 1F 10 7E 20
	sbc $86FCC0.l,X		; FF C0 FC 86
	beq -64.b		; F0 C0
	rti		; 40

	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	asl $06.b		; 06 06
	and $F805.w,X		; 3D 05 F8
	dey		; 88
	sbc ($13.b,S),Y		; F3 13
	sbc [$27.b]		; E7 27
	tsb $F7.b		; 04 F7
	asl $F7.b		; 06 F7
	ror $83.b		; 66 83
	ora $07.b		; 05 07
	asl $1F0F.w		; 0E 0F 1F
	and $1DBF1B.l,X		; 3F 1B BF 1D
	ora $820D05.l,X		; 1F 05 0D 82
	stx $7E70.w		; 8E 70 7E
	beq  -1.b		; F0 FF
	cpy $96FF.w		; CC FF 96
	sbc $0D7F1B.l,X		; FF 1B 7F 0D
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$03.b]		; 07 03
	ora $003F07.l,X		; 1F 07 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $0F.b		; 02 0F
	php		; 08
	ora $FF1F10.l,X		; 1F 10 1F FF
	jmp ($F0FF.w,X)		; 7C FF F0
	inc $F8C0.w,X		; FE C0 F8
	brk $E0.b		; 00 E0
	brk $81.b		; 00 81
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	adc $81FF40.l,X		; 7F 40 FF 81
	jsr ($F004.w,X)		; FC 04 F0
	bpl -64.b		; 10 C0
	rti		; 40

	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora $0F.b,S		; 03 0F
	asl $1F.b		; 06 1F
	tsb $081F.w		; 0C 1F 08
	and $103E18.l,X		; 3F 18 3E 10
	bit $3830.w,X		; 3C 30 38
	jsr $0778.w		; 20 78 07
	tsb $0F.b		; 04 0F
	php		; 08
	ora $021E11.l,X		; 1F 11 1E 02
	bit $3824.w,X		; 3C 24 38
	brk $38.b		; 00 38
	php		; 08
	bmi   0.b		; 30 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	php		; 08
	asl $0E08.w		; 0E 08 0E
	php		; 08
	tsb $0C08.w		; 0C 08 0C
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	asl $0C02.w		; 0E 02 0C
	brk $0C.b		; 00 0C
	tsb $08.b		; 04 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	php		; 08
	brk $00.b		; 00 00
	bcs -124.b		; B0 84
	jmp $E228C4.l		; 5C C4 28 E2
	bit $1562.w		; 2C 62 15
	adc ($13.b,S),Y		; 73 13
	and ($0F.b,S),Y		; 33 0F
	and $7C3F1E.l,X		; 3F 1E 3F 7C
	tsb $B8.b		; 04 B8
	bra  92.b		; 80 5C
	rti		; 40

	asl $2E02.w,X		; 1E 02 2E
	and $0C.b,S		; 23 0C
	ora $16.b,S		; 03 16
	ora $5C1E0E.l,X		; 1F 0E 1E 5C
	and $187EBE.l,X		; 3F BE 7E 18
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	.db $82, $78, $04		; 82 78 04
	bvs   4.b		; 70 04
	cpx #$C008.w		; E0 08 C0
	bpl  14.b		; 10 0E
	ror $FE1C.w,X		; 7E 1C FE
	bit $7C3E.w,X		; 3C 3E 7C
	jmp ($F8F8.w,X)		; 7C F8 F8
	sed		; F8
	sed		; F8
	beq -16.b		; F0 F0
	cpx #$18E0.w		; E0 E0 18
	adc $7100.w,X		; 7D 00 71
	brk $41.b		; 00 41
	mvp $44,$01		; 44 01 44
	ora ($4C.b,X)		; 01 4C
	and ($4C.b,X)		; 21 4C
	and ($4C.b,X)		; 21 4C
	and ($0A.b,X)		; 21 0A
	ror $7E0E.w,X		; 7E 0E 7E
	rol $3E3E.w,X		; 3E 3E 3E
	rol $3E3E.w,X		; 3E 3E 3E
	asl $1E1E.w,X		; 1E 1E 1E
	asl $1E1E.w,X		; 1E 1E 1E
	tsb $2C20.w		; 0C 20 2C
	brk $2C.b		; 00 2C
	cop $24.b		; 02 24
	ora ($04.b)		; 12 04
	ora ($04.b)		; 12 04
	ora ($14.b)		; 12 14
	cop $14.b		; 02 14
	ora ($1E.b,X)		; 01 1E
	asl $1E1E.w,X		; 1E 1E 1E
	trb $0C1C.w		; 1C 1C 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0E0E.w		; 0C 0E 0E
	bpl   1.b		; 10 01
	bpl   8.b		; 10 08
	ora ($08.b)		; 12 08
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora #$0800.w		; 09 00 08
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	asl $0707.w		; 0E 07 07
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	cpx #$0418.w		; E0 18 04
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$E0E0.w		; C0 E0 E0
	sed		; F8
	sed		; F8
	brk $00.b		; 00 00
	ldx #$A23E.w		; A2 3E A2
	rol $3EA2.w,X		; 3E A2 3E
	.db $82, $3E, $81		; 82 3E 81
	and $006741.l		; 2F 41 67 00
	eor $80.b,S		; 43 80
	cmp ($D5.b,X)		; C1 D5
	trb $C5.b		; 14 C5
	tsb $C5.b		; 04 C5
	tsb $E5.b		; 04 E5
	bit $C2.b		; 24 C2
	cop $82.b		; 02 82
	cop $C1.b		; 02 C1
	eor ($00.b,X)		; 41 00
	brk $01.b		; 00 01
	php		; 08
	ora $18.b,S		; 03 18
	phd		; 0B
	clc		; 18
	ora $100718.l		; 0F 18 07 10
	ora [$10.b]		; 07 10
	asl $1E10.w		; 0E 10 1E
	bmi  15.b		; 30 0F
	php		; 08
	ora $000708.l		; 0F 08 07 00
	ora [$00.b]		; 07 00
	ora $101F10.l,X		; 1F 10 1F 10
	ora $000F10.l,X		; 1F 10 0F 00
	ora $210E31.l,X		; 1F 31 0E 21
	tsb $0C21.w		; 0C 21 0C
	and ($0A.b,X)		; 21 0A
	adc $14.b,S		; 63 14
	ror $0C.b,X		; 76 0C
	ror $7EB8.w,X		; 7E B8 7E
	asl $3F00.w		; 0E 00 3F
	and ($3F.b,X)		; 21 3F
	and ($3E.b,X)		; 21 3E
	jsr $203C.w		; 20 3C 20
	rol A		; 2A
	jsl $1C1010.l		; 22 10 10 1C
	jsr ($0812.w,X)		; FC 12 08
	bit $11.b		; 24 11
	bit $12.b		; 24 12
	php		; 08
	jsr $2448.w		; 20 48 24
	brk $60.b		; 00 60
	bra  64.b		; 80 40
	brk $88.b		; 00 88
	ora [$07.b]		; 07 07
	asl $0C0E.w		; 0E 0E 0C
	tsb $1C1C.w		; 0C 1C 1C
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	sec		; 38
	sec		; 38
	bvs 112.b		; 70 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	asl $003F.w		; 0E 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $1E.b		; 00 1E
	asl $02.b		; 06 02
	ora [$00.b]		; 07 00
	ora $000E00.l		; 0F 00 0E 00
	trb $3800.w		; 1C 00 38
	rti		; 40

	bvs  64.b		; 70 40
	bvs -128.b		; 70 80
	cpx #$0407.w		; E0 07 04
	asl $00.b		; 06 00
	tsb $0808.w		; 0C 08 08
	brk $30.b		; 00 30
	bpl 112.b		; 10 70
	bmi  96.b		; 30 60
	jsr $20E0.w		; 20 E0 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($06.b,X)		; 01 06
	cop $06.b		; 02 06
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DF.b		; 00 DF
	sta ($FF.b)		; 92 FF
	ora $FF3F7F.l,X		; 1F 7F 3F FF
	adc ($FF.b)		; 72 FF
	sty $FF.b		; 84 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stp		; DB
	brk $BF.b		; 00 BF
	sta ($7F.b)		; 92 7F
	tas		; 1B
	xce		; FB
	jsr $00B1.w		; 20 B1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	jsr $10F8.w		; 20 F8 10
	cpy $EC88.w		; CC 88 EC
	cpy #$00FC.w		; C0 FC 00
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	clv		; B8
	bmi -40.b		; 30 D8
	bpl -24.b		; 10 E8
	bra  96.b		; 80 60
	brk $80.b		; 00 80
	sed		; F8
	rti		; 40

	sed		; F8
	cpy #$4078.w		; C0 78 40
	sed		; F8
	rti		; 40

	jmp ($7C08.w,X)		; 7C 08 7C
	php		; 08
	stz $1E08.w		; 9C 08 1E
	jsr $1080.w		; 20 80 10
	bne  24.b		; D0 18
	cli		; 58
	cli		; 58
	bne -104.b		; D0 98
	brk $9C.b		; 00 9C
	tsb $1C.b		; 04 1C
	tsb $1C.b		; 04 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora $00.b,S		; 03 00
	ora $02.b,S		; 03 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora $040E06.l		; 0F 06 0E 04
	asl $0202.w,X		; 1E 02 02
	cop $02.b		; 02 02
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	asl $00.b		; 06 00
	asl $0E08.w		; 0E 08 0E
	brk $04.b		; 00 04
	sbc $33EE3B.l,X		; FF 3B EE 33
.ACCU 8
.INDEX 8
	sep #$3D		; E2 3D
	cpx #$3C.b		; E0 3C
	rts		; 60

	clc		; 18
	rti		; 40

	ora $0221.w		; 0D 21 02
	and ($C4.b,S),Y		; 33 C4
	brk $80.b		; 00 80
	jsr $310C.w		; 20 0C 31
	rol $1F20.w		; 2E 20 1F
	brk $3F.b		; 00 3F
	tsb $203E.w		; 0C 3E 20
	trb $0010.w		; 1C 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	tsb $0D04.w		; 0C 04 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$03.b]		; 07 03
	asl $02.b		; 06 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B7.b		; 00 B7
	bit $FF.b		; 24 FF
	rol $7FFF.w,X		; 3E FF 7F
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B6.b		; 00 B6
	brk $7F.b		; 00 7F
	bit $FF.b		; 24 FF
	rol $15.b,X		; 36 15
	ora $27.b,S		; 03 27
	ora ($2B.b,X)		; 01 2B
	asl $21.b		; 06 21
	ora $08.b,S		; 03 08
	brk $12.b		; 00 12
	php		; 08
	jsl $126418.l		; 22 18 64 12
	ora #$0B.b		; 09 0B
	ora $101B.w,Y		; 19 1B 10
	ora [$01.b],Y		; 17 01
	ora $003F00.l,X		; 1F 00 3F 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $FCF8F5.l,X		; FF F5 F8 FC
	beq  -6.b		; F0 FA
	cpx $F052.w		; EC 52 F0
	ldy $E0.b		; A4 E0
	mvn $A5,$41		; 54 41 A5
	bpl -92.b		; 10 A4
	ora ($E2.b)		; 12 E2
	inc $FBE3.w,X		; FE E3 FB
	cmp ($FD.b,X)		; C1 FD
	brk $FF.b		; 00 FF
	ldy #$FF.b		; A0 FF
	rti		; 40

	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $8C3002.l,X		; FF 02 30 8C
	tsb $1CBC.w		; 0C BC 1C
	cld		; D8
	sec		; 38
	bmi 112.b		; 30 70
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	bra  30.b		; 80 1E
	asl $3E16.w,X		; 1E 16 3E
	tsb $187E.w		; 0C 7E 18
	jmp ($F810.w,X)		; 7C 10 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	bmi 120.b		; 30 78
	bmi 120.b		; 30 78
	bmi  56.b		; 30 38
	bmi  60.b		; 30 3C
	clc		; 18
	bit $3C18.w,X		; 3C 18 3C
	clc		; 18
	bit $3C18.w,X		; 3C 18 3C
	bvs  64.b		; 70 40
	sec		; 38
	php		; 08
	sec		; 38
	php		; 08
	sec		; 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	bit $1C.b		; 24 1C
	tsb $1C.b		; 04 1C
	brk $15.b		; 00 15
	and ($17.b),Y		; 31 17
	and ($17.b),Y		; 31 17
	and ($0E.b),Y		; 31 0E
	clc		; 18
	asl $0F18.w		; 0E 18 0F
	clc		; 18
	ora $080318.l		; 0F 18 03 08
	rol $0E20.w		; 2E 20 0E
	brk $0E.b		; 00 0E
	brk $17.b		; 00 17
	bpl  23.b		; 10 17
	bpl   7.b		; 10 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	php		; 08
	rol $1CE3.w,X		; 3E E3 1C
.INDEX 16
	rep #$58		; C2 58
.ACCU 16
.INDEX 16
	rep #$78		; C2 78
.ACCU 16
.INDEX 16
	rep #$34		; C2 34
	stx $34.b		; 86 34
	sty $78.b		; 84 78
	sty $8C68.w		; 8C 68 8C
	jmp $427E40.l		; 5C 40 7E 42
	rol $3C02.w,X		; 3E 02 3C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $74.b		; 00 74
	tsb $F0.b		; 04 F0
	bra  32.b		; 80 20
	sei		; 78
	bpl 120.b		; 10 78
	bpl  60.b		; 10 3C
	clc		; 18
	bit $1E08.w,X		; 3C 08 1E
	tsb $8C9E.w		; 0C 9E 8C
	stz $4F04.w,X		; 9E 04 4F
	bvs  64.b		; 70 40
	sec		; 38
	php		; 08
	sec		; 38
	jsr $041C.w		; 20 1C 04
	trb $1C00.w		; 1C 00 1C
	bpl  14.b		; 10 0E
	cop $8E.b		; 02 8E
	brk $09.b		; 00 09
	ora [$11.b]		; 07 11
	ora $0813.w		; 0D 13 08
	ora ($08.b,S),Y		; 13 08
	asl $10.b		; 06 10
	rol $11.b		; 26 11
	bit $11.b		; 24 11
	bit $0002.w		; 2C 02 00
	ora $03.b,S		; 03 03
	ora $07.b,S		; 03 07
	ora [$07.b]		; 07 07
	ora [$0F.b]		; 07 0F
	ora $0E0E0E.l		; 0F 0E 0E 0E
	asl $1C1C.w		; 0E 1C 1C
	cmp $E3.b,X		; D5 E3
	cmp ($F7.b,X)		; C1 F7
	bra  34.b		; 80 22
	brk $41.b		; 00 41
	brk $81.b		; 00 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($F7.b,X)		; C1 F7
	bra -29.b		; 80 E3
	cmp ($C1.b,X)		; C1 C1
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C8F0.w		; E0 F0 C8
	bne -56.b		; D0 C8
	bpl -64.b		; 10 C0
	clc		; 18
	rts		; 60

	php		; 08
	stz $88.b		; 64 88
	bit $88.b		; 24 88
	bit $40.b,X		; 34 40
	bra -32.b		; 80 E0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$E0E0.w		; E0 E0 E0
	beq -16.b		; F0 F0
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	sec		; 38
	sec		; 38
	plp		; 28
	cop $08.b		; 02 08
	bit $18.b		; 24 18
	bit $50.b		; 24 50
	bit $50.b		; 24 50
	jsr $4810.w		; 20 10 48
	bcc  72.b		; 90 48
	bcc  72.b		; 90 48
	trb $181C.w		; 1C 1C 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  68.b		; 30 44
	bpl   4.b		; 10 04
	clc		; 18
	bit $08.b		; 24 08
	bit $0A.b		; 24 0A
	brk $0A.b		; 00 0A
	brk $08.b		; 00 08
	ora ($09.b)		; 12 09
	ora ($38.b)		; 12 38
	sec		; 38
	sec		; 38
	sec		; 38
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	trb $1C1C.w		; 1C 1C 1C
	trb $0C0C.w		; 1C 0C 0C
	tsb $800C.w		; 0C 0C 80
	php		; 08
	bra   8.b		; 80 08
	bcs   8.b		; B0 08
	bcs   8.b		; B0 08
	clc		; 18
	mvp $60,$04		; 44 04 60
	bit $0000.w,X		; 3C 00 00
	brk $70.b		; 00 70
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bvs  56.b		; 70 38
	sec		; 38
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$0810.w		; 09 10 08
	ora ($08.b),Y		; 11 08
	and ($18.b,X)		; 21 18
	jsl $384238.l		; 22 38 42 38
	rti		; 40

	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	asl $0E0E.w		; 0E 0E 0E
	asl $1E1E.w		; 0E 1E 1E
	trb $3C1C.w		; 1C 1C 3C
	bit $3C3C.w,X		; 3C 3C 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	php		; 08
	ora $203910.l,X		; 1F 10 39 20
	sei		; 78
	rti		; 40

	beq   5.b		; F0 05
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $05.b		; 00 05
	tsb $08.b		; 04 08
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	bpl  96.b		; 10 60
	brk $E5.b		; 00 E5
	sbc $09FF08.l,X		; FF 08 FF 09
	sbc $67DD76.l,X		; FF 76 DD 67
	cpy $7A.b		; C4 7A
	cmp ($78.b,X)		; C1 78
	cpy #$8030.w		; C0 30 80
	sbc [$41.b],Y		; F7 41
	.db $62, $00, $88		; 62 00 88
	ora ($00.b,X)		; 01 00
	eor ($18.b,X)		; 41 18
	.db $62, $5C, $41		; 62 5C 41
	and $187F00.l,X		; 3F 00 7F 18
	mvp $49,$32		; 44 32 49
	bit $09.b		; 24 09
	bit $13.b		; 24 13
	php		; 08
	ora ($09.b)		; 12 09
	cop $21.b		; 02 21
	php		; 08
	sec		; 38
	ora #$0019.w		; 09 19 00
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $007F00.l,X		; 7F 00 7F 00
	and $101F00.l,X		; 3F 00 1F 10
	ora [$16.b],Y		; 17 16
	bpl -92.b		; 10 A4
	ora ($22.b)		; 12 22
	sta $9922.w,Y		; 99 22 99
	jsl $982299.l		; 22 99 22 98
	jsl $102098.l		; 22 98 20 10
	ora [$81.b]		; 07 81
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($FE.b,X)		; 01 FE
	stx $C0F0.w		; 8E F0 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpx #$E000.w		; E0 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	trb $1C1E.w		; 1C 1E 1C
	asl $1E0C.w,X		; 1E 0C 1E
	tsb $0C1E.w		; 0C 1E 0C
	asl $1E0C.w,X		; 1E 0C 1E
	tsb $041E.w		; 0C 1E 04
	asl $001C.w,X		; 1E 1C 00
	trb $1C00.w		; 1C 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	bpl  28.b		; 10 1C
	bpl  12.b		; 10 0C
	brk $0C.b		; 00 0C
	brk $03.b		; 00 03
	php		; 08
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	trb $0C.b		; 14 0C
	and $1F.b,S		; 23 1F
	bvs  15.b		; 70 0F
	cld		; D8
	and [$0F.b],Y		; 37 0F
	php		; 08
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	tsb $04.b		; 04 04
	ora $23.b,S		; 03 23
	brk $70.b		; 00 70
	pla		; 68
	sty $8868.w		; 8C 68 88
	bvs -104.b		; 70 98
	bvs -104.b		; 70 98
	trb $98.b		; 14 98
	.db $62, $FC, $87		; 62 FC 87
	sei		; 78
	ora $80F066.l,X		; 1F 66 F0 80
	beq -128.b		; F0 80
	inx		; E8
	dey		; 88
	inx		; E8
	dey		; 88
	rts		; 60

	brk $10.b		; 00 10
	bpl  96.b		; 10 60
	.db $62, $00, $07		; 62 00 07
	tsb $1F.b		; 04 1F
	tsb $091E.w		; 0C 1E 09
	rol $3D08.w,X		; 3E 08 3D
	tas		; 1B
	and $7F11.w,X		; 3D 11 7F
	and ($7F.b,S),Y		; 33 7F
	and ($7F.b,S),Y		; 33 7F
	asl $0C02.w		; 0E 02 0C
	ora ($1C.b,X)		; 01 1C
	ora ($1C.b),Y		; 11 1C
	ora $3C.b,S		; 03 3C
	and [$3D.b]		; 27 3D
	ora [$39.b]		; 07 39
	ora $79.b,S		; 03 79
	phk		; 4B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	rti		; 40

	beq  32.b		; F0 20
	tya		; 98
	bpl -40.b		; 10 D8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$7000.w		; E0 00 70
	rts		; 60

	bcs  32.b		; B0 20
	bra  -8.b		; 80 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	bra  -8.b		; 80 F8
	bra -36.b		; 80 DC
	bra -50.b		; 80 CE
	sty $CF.b		; 84 CF
	cop $87.b		; 02 87
	bne   0.b		; D0 00
	cpy #$4000.w		; C0 00 40
	brk $10.b		; 00 10
	bra   8.b		; 80 08
	bra -116.b		; 80 8C
	dey		; 88
	asl $00.b		; 06 00
	ora [$05.b]		; 07 05
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	cop $0F.b		; 02 0F
	cop $0F.b		; 02 0F
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	sty $00DE.w		; 8C DE 00
	cmp $D20C.w		; CD 0C D2
	brk $8C.b		; 00 8C
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cmp $924D.w		; CD 4D 92
	ora ($8C.b)		; 12 8C
	tsb $8080.w		; 0C 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0F.b		; 06 0F
	asl $0F.b		; 06 0F
	asl $0F.b		; 06 0F
	tsb $0F.b		; 04 0F
	tsb $0F.b		; 04 0F
	tsb $0E.b		; 04 0E
	tsb $0E.b		; 04 0E
	tsb $0E.b		; 04 0E
	ora [$00.b]		; 07 00
	ora [$01.b]		; 07 01
	ora $080E09.l		; 0F 09 0E 08
	asl $0E08.w		; 0E 08 0E
	php		; 08
	asl $0C08.w		; 0E 08 0C
	php		; 08
	tsb $0E.b		; 04 0E
	tsb $0E.b		; 04 0E
	tsb $0E.b		; 04 0E
	tsb $0E.b		; 04 0E
	tsb $0E.b		; 04 0E
	tsb $06.b		; 04 06
	tsb $06.b		; 04 06
	tsb $06.b		; 04 06
	tsb $0C08.w		; 0C 08 0C
	php		; 08
	tsb $0C08.w		; 0C 08 0C
	php		; 08
	tsb $0408.w		; 0C 08 04
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	asl $0E04.w,X		; 1E 04 0E
	tsb $0E.b		; 04 0E
	tsb $0E.b		; 04 0E
	tsb $0E.b		; 04 0E
	tsb $0E.b		; 04 0E
	tsb $0E.b		; 04 0E
	tsb $0E.b		; 04 0E
	tsb $0C00.w		; 0C 00 0C
	php		; 08
	tsb $0C08.w		; 0C 08 0C
	php		; 08
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $0E.b		; 04 0E
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	trb $1C.b		; 14 1C
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	tsb $0C08.w		; 0C 08 0C
	php		; 08
	tsb $1C08.w		; 0C 08 1C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	jsr $0000.w		; 20 00 00
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
	brk $B2.b		; 00 B2
	ror $2A.b		; 66 2A
	dec $CDAB.w		; CE AB CD
	sta $D9.b,X		; 95 D9
	cmp ($D8.b),Y		; D1 D8
	cmp #$D1D0.w		; C9 D0 D1
	cpy #$C0D1.w		; C0 D1 C0
	ora ($FB.b,X)		; 01 FB
	ora $F3.b,S		; 03 F3
	ora ($F1.b,X)		; 01 F1
	bra -31.b		; 80 E1
	bra -32.b		; 80 E0
	cpy #$C0E0.w		; C0 E0 C0
	cpx #$E0A0.w		; E0 A0 E0
	eor $14.b,X		; 55 14
	trb $1C3E.w		; 1C 3E 1C
	rol $08.b,X		; 36 08
	sbc $0008E3.l,X		; FF E3 08 00
	stz $FF1C.w		; 9C 1C FF
	sbc $EBF77F.l,X		; FF 7F F7 EB
	cmp $D5C1.w,X		; DD C1 D5
	cmp ($08.b,X)		; C1 08
	brk $F7.b		; 00 F7
	sbc [$63.b],Y		; F7 63
	rtl		; 6B

	trb $3C9C.w		; 1C 9C 3C
	sbc $081F04.l,X		; FF 04 1F 08
	asl $3E08.w,X		; 1E 08 3E
	bpl  62.b		; 10 3E
	ora ($7D.b),Y		; 11 7D
	and $7B.b,S		; 23 7B
	and [$F7.b]		; 27 F7
	eor $0A0EF7.l		; 4F F7 0E 0A
	trb $1C10.w		; 1C 10 1C
	tsb $38.b		; 04 38
	and ($39.b,X)		; 21 39
	phd		; 0B
	adc ($47.b,S),Y		; 73 47
	adc ($1F.b,S),Y		; 73 1F
	sbc ($9F.b)		; F2 9F
	ora ($04.b,X)		; 01 04
	brk $02.b		; 00 02
	tsb $01.b		; 04 01
	php		; 08
	tsb $38.b		; 04 38
	tsb $B9.b		; 04 B9
	sty $9C.b		; 84 9C
	sta ($B8.b)		; 92 B8
	jsr $0407.w		; 20 07 04
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	ora ($07.b,X)		; 01 07
	ora ($8E.b,X)		; 01 8E
	sta ($FE.b,X)		; 81 FE
	brk $FF.b		; 00 FF
	clc		; 18
	sbc $4030A0.l,X		; FF A0 30 40
	rts		; 60

	bpl -64.b		; 10 C0
	php		; 08
	bpl -114.b		; 10 8E
	bcc  79.b		; 90 4F
	bpl -99.b		; 10 9D
	bit $CF.b		; 24 CF
	cop $C0.b		; 02 C0
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	jsr $F0C0.w		; 20 C0 F0
	rti		; 40

	sec		; 38
	cpy #$803E.w		; C0 3E 80
	ror $7E8C.w,X		; 7E 8C 7E
	jsr $1078.w		; 20 78 10
	sec		; 38
	bpl  60.b		; 10 3C
	php		; 08
	trb $1E08.w		; 1C 08 1E
	sty $1E.b		; 84 1E
	cpy $8F.b		; C4 8F
	sep #$4F		; E2 4F
	bmi   0.b		; 30 00
	sec		; 38
	php		; 08
	clc		; 18
	brk $1C.b		; 00 1C
	tsb $1C.b		; 04 1C
	bpl  14.b		; 10 0E
	cop $0E.b		; 02 0E
	dey		; 88
	ora [$41.b]		; 07 41
	bit $3838.w		; 2C 38 38
	jsl $7C4676.l		; 22 76 46 7C
	cmp #$19EF.w		; C9 EF 19
	.db $42, $88		; 42 88
	ora [$8C.b]		; 07 8C
	and ($84.b,X)		; 21 84
	iny		; C8
	inc $ECE0.w		; EE E0 EC
	cpy #$06C8.w		; C0 C8 06
	rti		; 40

	stx $C0.b		; 86 C0
	ora $C00348.l		; 0F 48 03 C0
	ora [$C4.b]		; 07 C4
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	php		; 08
	sec		; 38
	php		; 08
	sec		; 38
	php		; 08
	sec		; 38
	php		; 08
	clc		; 18
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	cpy $3C08.w		; CC 08 3C
	cld		; D8
	bit $8E7A.w		; 2C 7A 8E
	ldx $FE56.w,Y		; BE 56 FE
	rol $BEEE.w,X		; 3E EE BE
	sbc $A0A0F0.l		; EF F0 A0 A0
	iny		; C8
	cld		; D8
	iny		; C8
	clc		; 18
	dex		; CA
	txa		; 8A
	lsr $5E.b,X		; 56 5E
	bit $A43E.w		; 2C 3E A4
	ora $000FE0.l,X		; 1F E0 0F 00
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
	bra   0.b		; 80 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	asl $1C00.w,X		; 1E 00 1C
	bpl  60.b		; 10 3C
	bpl  56.b		; 10 38
	cop $02.b		; 02 02
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	tsb $0C04.w		; 0C 04 0C
	tsb $18.b		; 04 18
	brk $18.b		; 00 18
	brk $30.b		; 00 30
	brk $04.b		; 00 04
	and ($0E.b),Y		; 31 0E
	pha		; 48
	rol $31.b,X		; 36 31
	ora $44.b,S		; 03 44
	and ($B8.b),Y		; 31 B8
	bvc -40.b		; 50 D8
	rts		; 60

	pla		; 68
	sei		; 78
	bit $CB03.w,X		; 3C 03 CB
	ora #$11F9.w		; 09 F9 11
	sbc $FA02.w,Y		; F9 02 FA
	ora [$F7.b],Y		; 17 F7
	ora [$F7.b],Y		; 17 F7
	and [$77.b]		; 27 77
	ora ($7B.b,S),Y		; 13 7B
	ora $07.b,S		; 03 07
	ora $0F.b,S		; 03 0F
	cop $0F.b		; 02 0F
	asl $0F.b		; 06 0F
	asl $1F.b		; 06 1F
	tsb $1F.b		; 04 1F
	tsb $0C1E.w		; 0C 1E 0C
	asl $0407.w,X		; 1E 07 04
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000E09.l		; 0F 09 0E 00
	asl $1E00.w		; 0E 00 1E
	ora ($1C.b)		; 12 1C
	brk $00.b		; 00 00
	bra   1.b		; 80 01
	bra   6.b		; 80 06
	bra   0.b		; 80 00
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $80.b		; 00 80
	sta ($00.b,X)		; 81 00
	ora [$00.b]		; 07 00
	ora $000F00.l,X		; 1F 00 0F 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $87.b,S		; 03 87
	ora $23.b,X		; 15 23
	ora ($41.b)		; 12 41
	and #$4882.w		; 29 82 48
	bit $92.b		; 24 92
	stz $12.b		; 64 12
	cpy $CC22.w		; CC 22 CC
	jsl $02FF04.l		; 22 04 FF 02
	sbc $00FF01.l,X		; FF 01 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $9040C0.l,X		; FF C0 40 90
	bra  24.b		; 80 18
	rti		; 40

	clc		; 18
	rti		; 40

	bcc  74.b		; 90 4A
	sta ($48.b)		; 92 48
	sta ($49.b)		; 92 49
	cpy #$402D.w		; C0 2D 40
	sed		; F8
	bra  -4.b		; 80 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	and $0F61.w,X		; 3D 61 0F
	adc ($1F.b,X)		; 61 1F
	and ($06.b),Y		; 31 06
	bmi  14.b		; 30 0E
	clc		; 18
	ora $19.b,S		; 03 19
	tsb $0D.b		; 04 0D
	brk $0E.b		; 00 0E
	asl $3E00.w,X		; 1E 00 3E
	jsr $000E.w		; 20 0E 00
	ora $000710.l,X		; 1F 10 07 00
	asl $0308.w		; 0E 08 03
	ora ($07.b,X)		; 01 07
	ora [$70.b]		; 07 70
	stx $70.b		; 86 70
	stx $70.b		; 86 70
	stx $78.b		; 86 78
	sty $8C68.w		; 8C 68 8C
	pla		; 68
	sty $8C60.w		; 8C 60 8C
	bvc -104.b		; 50 98
	jsr ($FC84.w,X)		; FC 84 FC
	sty $FC.b		; 84 FC
	sty $74.b		; 84 74
	tsb $74.b		; 04 74
	tsb $70.b		; 04 70
	brk $78.b		; 00 78
	php		; 08
	inx		; E8
	dey		; 88
	bvs  56.b		; 70 38
	sei		; 78
	sec		; 38
	jmp ($3839.w,X)		; 7C 39 38
	and $083E11.l,X		; 3F 11 3E 08
	ora ($10.b)		; 12 10
	and [$04.b]		; 27 04
	and $30FC30.l		; 2F 30 FC 30
	jsr ($7C38.w,X)		; FC 38 7C
	ora ($7C.b),Y		; 11 7C
	ora ($71.b,X)		; 01 71
	ora $182D.w		; 0D 2D 18
	clc		; 18
	ora ($12.b)		; 12 12
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $DF.b		; 00 DF
	sta ($FF.b)		; 92 FF
	ora $FF3F7F.l,X		; 1F 7F 3F FF
	adc ($FF.b)		; 72 FF
	sty $FF.b		; 84 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	stp		; DB
	brk $BF.b		; 00 BF
	sta ($7F.b)		; 92 7F
	tas		; 1B
	xce		; FB
	jsr $00B1.w		; 20 B1 00
	bmi  56.b		; 30 38
	bmi  56.b		; 30 38
	bmi  56.b		; 30 38
	bmi  56.b		; 30 38
	bpl  56.b		; 10 38
	bpl  56.b		; 10 38
	bpl  56.b		; 10 38
	bpl  56.b		; 10 38
	sec		; 38
	php		; 08
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi  32.b		; 30 20
	bpl  56.b		; 10 38
	bpl  56.b		; 10 38
	php		; 08
	clc		; 18
	php		; 08
	clc		; 18
	php		; 08
	clc		; 18
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	sec		; 38
	plp		; 28
	clc		; 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	bpl   8.b		; 10 08
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $34.b		; 00 34
	clc		; 18
	jmp ($F42C.w,X)		; 7C 2C F4
	jmp $484478.l		; 5C 78 44 48
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	bpl  60.b		; 10 3C
	bit $547C.w		; 2C 7C 54
	jsr ($FC40.w,X)		; FC 40 FC
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	eor [$69.b],Y		; 57 69
	phd		; 0B
	adc $41.b,S		; 63 41
	sta ($E0.b),Y		; 91 E0
	cpy #$F0C0.w		; C0 C0 F0
	cpy #$80E0.w		; C0 E0 80
	cpy #$A0A0.w		; C0 A0 A0
	bne -105.b		; D0 97
	sta $0C9F.w,Y		; 99 9F 0C
	adc $80FD08.l		; 6F 08 FD 80
	sed		; F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	cpy #$C080.w		; C0 80 C0
	cpy #$E0E0.w		; C0 E0 E0
	cpx #$78F0.w		; E0 F0 78
	stz $38.b,X		; 74 38
	bvs  48.b		; 70 30
	dey		; 88
	brk $44.b		; 00 44
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	cpy #$60F0.w		; C0 F0 60
	sed		; F8
	bmi  -8.b		; 30 F8
	trb $FC.b		; 14 FC
	tsb $74.b		; 04 74
	sec		; 38
	sec		; 38
	jsr $2078.w		; 20 78 20
	beq  64.b		; F0 40
	beq -64.b		; F0 C0
	cpx #$E180.w		; E0 80 E1
	sta ($C2.b,X)		; 81 C2
	bra -63.b		; 80 C1
	brk $C0.b		; 00 C0
	bmi   0.b		; 30 00
	rts		; 60

	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C1.b		; 00 C1
	eor ($80.b,X)		; 41 80
	brk $80.b		; 00 80
	brk $54.b		; 00 54
	tsa		; 3B
	php		; 08
	bmi  48.b		; 30 30
	cli		; 58
	sei		; 78
	sta $0F9D.w,X		; 9D 9D 0F
	and $17170F.l		; 2F 0F 17 17
	phd		; 0B
	phb		; 8B
	tsb $74.b		; 04 74
	ora $37076F.l		; 0F 6F 07 37
	lsr A		; 4A
	ply		; 7A
	sbc $C7FD.w		; ED FD C7
	sbc $09FFD3.l,X		; FF D3 FF 09
	adc $083E0C.l,X		; 7F 0C 3E 08
	rol $3C18.w,X		; 3E 18 3C
	clc		; 18
	bit $3C18.w,X		; 3C 18 3C
	clc		; 18
	bit $3C38.w,X		; 3C 38 3C
	bmi  56.b		; 30 38
	trb $1C00.w		; 1C 00 1C
	brk $3C.b		; 00 3C
	jsr $043C.w		; 20 3C 04
	sec		; 38
	brk $38.b		; 00 38
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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $98.b		; 00 98
	mvp $44,$18		; 44 18 44
	clc		; 18
	sty $00.b		; 84 00
	cpx $30.b		; E4 30
	sed		; F8
	php		; 08
	cmp $1A4714.l		; CF 14 47 1A
	eor $00.b,S		; 43 00
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $485F40.l,X		; 7F 40 5F 48
	eor $7A4474.l		; 4F 74 44 7A
	.db $42, $3D		; 42 3D
	ora ($C9.b,X)		; 01 C9
	bit $C8.b		; 24 C8
	bit $C8.b		; 24 C8
	bit $C1.b		; 24 C1
	cop $1C.b		; 02 1C
	and $34C744.l,X		; 3F 44 C7 34
	stx $74.b		; 86 74
	stx $00.b		; 86 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $22FC00.l,X		; FF 00 FC 22
.ACCU 8
.INDEX 8
	sep #$3A		; E2 3A
	cop $7A.b		; 02 7A
	cop $7A.b		; 02 7A
	cop $00.b		; 02 00
	ora $0F06.w		; 0D 06 0F
	brk $0F.b		; 00 0F
	cop $09.b		; 02 09
	cop $09.b		; 02 09
	cop $05.b		; 02 05
	cop $05.b		; 02 05
	brk $03.b		; 00 03
	cop $0B.b		; 02 0B
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	bne -104.b		; D0 98
	brk $18.b		; 00 18
	bra  24.b		; 80 18
	cpy #$10.b		; C0 10
	cpy #$10.b		; C0 10
	cpy #$10.b		; C0 10
	cpx #$30.b		; E0 30
	rts		; 60

	sed		; F8
	pla		; 68
	php		; 08
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	bne  16.b		; D0 10
	bpl  16.b		; 10 10
	asl A		; 0A
	tas		; 1B
	tsb $11.b		; 04 11
	asl $11.b		; 06 11
	ora $080219.l		; 0F 19 02 08
	asl $0C.b		; 06 0C
	ora ($1D.b,X)		; 01 1D
	cop $1B.b		; 02 1B
	tsb $00.b		; 04 00
	asl $0F00.w		; 0E 00 0F
	ora ($06.b,X)		; 01 06
	brk $0F.b		; 00 0F
	php		; 08
	ora $00.b,S		; 03 00
	asl $04.b		; 06 04
	ora ($15.b),Y		; 11 15
	sty $FF.b		; 84 FF
	tsa		; 3B
	inc $E233.w		; EE 33 E2
	and $3CE0.w,X		; 3D E0 3C
	cpx #$18.b		; E0 18
	cpy #$09.b		; C0 09
	lda ($22.b,X)		; A1 22
	sta ($C4.b,S),Y		; 93 C4
	brk $80.b		; 00 80
	jsr $714C.w		; 20 4C 71
	ror $5F60.w		; 6E 60 5F
	rti		; 40

	and $643E0E.l,X		; 3F 0E 3E 64
	trb $0050.w		; 1C 50 00
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
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	rti		; 40

	beq  32.b		; F0 20
	beq   0.b		; F0 00
	sed		; F8
	bpl 120.b		; 10 78
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	cpy #$40.b		; C0 40
	cpx #$20.b		; E0 20
	cpx #$00.b		; E0 00
	beq -112.b		; F0 90
	bvs  64.b		; 70 40
	sec		; 38
	plp		; 28
	brk $38.b		; 00 38
	php		; 08
	bit $1C00.w,X		; 3C 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	tsb $0E.b		; 04 0E
	clc		; 18
	brk $18.b		; 00 18
	bpl   8.b		; 10 08
	brk $0C.b		; 00 0C
	tsb $0C.b		; 04 0C
	tsb $0004.w		; 0C 04 00
	tsb $00.b		; 04 00
	asl $02.b		; 06 02
	tsb $0E.b		; 04 0E
	tsb $0E.b		; 04 0E
	tsb $0E.b		; 04 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $02.b		; 06 02
	tsb $00.b		; 04 00
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	tsb $1C1C.w		; 0C 1C 1C
	tsb $0C1E.w		; 0C 1E 0C
	trb $0E0E.w		; 1C 0E 0E
	asl $0E06.w		; 0E 06 0E
	ora [$0E.b]		; 07 0E
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	tsb $3E.b		; 04 3E
	tsb $1E.b		; 04 1E
	tsb $1F.b		; 04 1F
	tsb $1F.b		; 04 1F
	asl $1F.b		; 06 1F
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	jsr $10F8.w		; 20 F8 10
	cpy $EC88.w		; CC 88 EC
	cpy #$FC.b		; C0 FC
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	bvs   0.b		; 70 00
	clv		; B8
	bmi -40.b		; 30 D8
	bpl -24.b		; 10 E8
	bra  96.b		; 80 60
	brk $80.b		; 00 80
	sed		; F8
	rti		; 40

	sed		; F8
	cpy #$70.b		; C0 70
	bvc -16.b		; 50 F0
	bvc 112.b		; 50 70
	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	jsr $1080.w		; 20 80 10
	bne  16.b		; D0 10
	rti		; 40

	bvc -64.b		; 50 C0
	bcc   0.b		; 90 00
	bcs   0.b		; B0 00
	jsr $2000.w		; 20 00 20
	brk $38.b		; 00 38
	ror $7E38.w,X		; 7E 38 7E
	sec		; 38
	lsr $38.b		; 46 38
	.db $42, $38		; 42 38
	.db $42, $38		; 42 38
	.db $42, $38		; 42 38
	.db $42, $32		; 42 32
	mvp $7C,$34		; 44 34 7C
	bmi 124.b		; 30 7C
	sec		; 38
	jmp ($3C3C.w,X)		; 7C 3C 3C
	bit $3C3C.w,X		; 3C 3C 3C
	bit $3C3C.w,X		; 3C 3C 3C
	sec		; 38
	sec		; 38
	and ($44.b)		; 32 44
	bmi  68.b		; 30 44
	bmi  68.b		; 30 44
	bit $40.b,X		; 34 40
	bit $40.b		; 24 40
	jsr $2040.w		; 20 40 20
	pha		; 48
	jsr $3848.w		; 20 48 38
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
	sec		; 38
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	php		; 08
	rti		; 40

	php		; 08
	rti		; 40

	jsr $2048.w		; 20 48 20
	pha		; 48
	jsr $3048.w		; 20 48 30
	pha		; 48
	bmi  72.b		; 30 48
	bmi   8.b		; 30 08
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bvs 112.b		; 70 70
	bmi   8.b		; 30 08
	bmi   8.b		; 30 08
	bmi   8.b		; 30 08
	bmi  72.b		; 30 48
	brk $48.b		; 00 48
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	cop $0F.b		; 02 0F
	tsb $19.b		; 04 19
	php		; 08
	tas		; 1B
	ora ($1F.b,X)		; 01 1F
	cop $0F.b		; 02 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	asl $0D06.w		; 0E 06 0D
	tsb $0B.b		; 04 0B
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $FF48.w,X		; 7D 48 FF
	jmp ($FEFF.w,X)		; 7C FF FE
	sbc $10FFCB.l,X		; FF CB FF 10
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $6D.b		; 00 6D
	brk $FE.b		; 00 FE
	pha		; 48
	sbc $82EF6C.l,X		; FF 6C EF 82
	cmp $00.b		; C5 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	bmi  32.b		; 30 20
	bcs   0.b		; B0 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	cpy #$60.b		; C0 60
	rti		; 40

	ldy #$00.b		; A0 00
	bra   0.b		; 80 00
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	rti		; 40

	cpx #$40.b		; E0 40
	cpx #$40.b		; E0 40
	beq  96.b		; F0 60
	beq  96.b		; F0 60
	bvs  32.b		; 70 20
	sec		; 38
	bra   0.b		; 80 00
	rti		; 40

	rti		; 40

	rts		; 60

	jsr $0060.w		; 20 60 00
	cpx #$80.b		; E0 80
	bvs  16.b		; 70 10
	bvs  16.b		; 70 10
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $0F.b		; 00 0F
	cop $0D.b		; 02 0D
	asl A		; 0A
	ora $1D08.w,X		; 1D 08 1D
	php		; 08
	and $3818.w,X		; 3D 18 38
	bpl 120.b		; 10 78
	phd		; 0B
	php		; 08
	asl A		; 0A
	php		; 08
	tsb $0C04.w		; 0C 04 0C
	brk $1C.b		; 00 1C
	bpl  24.b		; 10 18
	brk $38.b		; 00 38
	jsr $0038.w		; 20 38 00
	ora ($FF.b)		; 12 FF
	cmp $08CFCF.l		; CF CF CF 08
	sbc $83.b,X		; F5 83
	bvs   1.b		; 70 01
	tsb $86.b		; 04 86
	php		; 08
	cpy $3800.w		; CC 00 38
	bpl   0.b		; 10 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	lda $FE83.w,Y		; B9 83 FE
	brk $F8.b		; 00 F8
	bcc 112.b		; 90 70
	rti		; 40

	mvp $38,$44		; 44 44 38
	stz $DD3C.w		; 9C 3C DD
	cop $43.b		; 02 43
	rol $0C63.w		; 2E 63 0C
	adc ($0C.b,X)		; 61 0C
	and ($1E.b,X)		; 21 1E
	and ($1E.b),Y		; 31 1E
	and ($18.b),Y		; 31 18
	adc $407E58.l,X		; 7F 58 7E 40
	jmp ($001C.w,X)		; 7C 1C 00
	rol $3E20.w,X		; 3E 20 3E
	jsr $000E.w		; 20 0E 00
	asl $3000.w		; 0E 00 30
	ply		; 7A
	sei		; 78
	ror $00.b,X		; 76 00
	stx $A0.b		; 86 A0
	sty $E0.b		; 84 E0
	sty $68.b		; 84 68
	tsb $0868.w		; 0C 68 08
	cpy #$08.b		; C0 08
	bmi  -4.b		; 30 FC
	bit $FC.b,X		; 34 FC
	sty $FC.b		; 84 FC
	jmp ($7804.w,X)		; 7C 04 78
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	cop $1E.b		; 02 1E
	ora #$1D.b		; 09 1D
	php		; 08
	rol $3E18.w,X		; 3E 18 3E
	ora ($7E.b),Y		; 11 7E
	bmi 122.b		; 30 7A
	and ($FB.b,X)		; 21 FB
	adc ($F1.b,X)		; 61 F1
	tsb $1C03.w		; 0C 03 1C
	ora ($1C.b,S),Y		; 13 1C
	ora ($3D.b,X)		; 01 3D
	bit $39.b		; 24 39
	brk $79.b		; 00 79
	pha		; 48
	bvs   0.b		; 70 00
	beq -112.b		; F0 90
	stz $1B.b		; 64 1B
	adc $403F83.l,X		; 7F 83 3F 40
	.db $82, $E1, $03		; 82 E1 03
	rts		; 60

	cmp $7E.b,S		; C3 7E
	sta $354333.l		; 8F 33 43 35
	brk $F8.b		; 00 F8
	brk $BC.b		; 00 BC
	and ($BE.b),Y		; 31 BE
	lsr $DC5E.w,X		; 5E 5E DC
	jmp $E30082.l		; 5C 82 00 E3
	jsr $28E9.w		; 20 E9 28
	sta ($76.b,X)		; 81 76
	cmp $E3.b,X		; D5 E3
	cmp ($F7.b,X)		; C1 F7
	bra  34.b		; 80 22
	brk $41.b		; 00 41
	brk $81.b		; 00 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($F7.b,X)		; C1 F7
	bra -29.b		; 80 E3
	cmp ($C1.b,X)		; C1 C1
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  96.b		; F0 60
	cpx #$F0.b		; E0 F0
	iny		; C8
	bne -56.b		; D0 C8
	bpl -64.b		; 10 C0
	clc		; 18
	rts		; 60

	php		; 08
	stz $88.b		; 64 88
	bit $88.b		; 24 88
	brk $70.b		; 00 70
	bra -32.b		; 80 E0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	beq -16.b		; F0 F0
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bit $2802.w		; 2C 02 28
	cop $08.b		; 02 08
	bit $18.b		; 24 18
	bit $50.b		; 24 50
	bit $50.b		; 24 50
	jsr $4810.w		; 20 10 48
	bcc  72.b		; 90 48
	trb $1C1C.w		; 1C 1C 1C
	trb $1818.w		; 1C 18 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bit $40.b,X		; 34 40
	bmi  68.b		; 30 44
	bpl   4.b		; 10 04
	clc		; 18
	bit $08.b		; 24 08
	bit $0A.b		; 24 0A
	brk $0A.b		; 00 0A
	brk $08.b		; 00 08
	ora ($38.b)		; 12 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	trb $1C1C.w		; 1C 1C 1C
	trb $0C0C.w		; 1C 0C 0C
	bcc  72.b		; 90 48
	bra   8.b		; 80 08
	bra   8.b		; 80 08
	bcs   8.b		; B0 08
	bcs   8.b		; B0 08
	clc		; 18
	mvp $60,$04		; 44 04 60
	bit $3000.w,X		; 3C 00 30
	bmi 112.b		; 30 70
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bvs  56.b		; 70 38
	sec		; 38
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	ora #$12.b		; 09 12
	ora #$10.b		; 09 10
	php		; 08
	ora ($08.b),Y		; 11 08
	and ($18.b,X)		; 21 18
	jsl $384238.l		; 22 38 42 38
	rti		; 40

	brk $7C.b		; 00 7C
	tsb $0E0C.w		; 0C 0C 0E
	asl $0E0E.w		; 0E 0E 0E
	asl $1C1E.w,X		; 1E 1E 1C
	trb $3C3C.w		; 1C 3C 3C
	bit $003C.w,X		; 3C 3C 00
	brk $00.b		; 00 00
	ora $021F03.l		; 0F 03 1F 02
	and $013F02.l,X		; 3F 02 3F 01
	adc $387719.l,X		; 7F 19 77 38
	sbc [$1D.b],Y		; F7 1D
	cmp ($09.b)		; D2 09
	ora #$0F.b		; 09 0F
	php		; 08
	ora [$10.b],Y		; 17 10
	and ($20.b)		; 32 20
	rol A		; 2A
	php		; 08
	eor ($51.b),Y		; 51 51
	eor ($3D.b),Y		; 51 3D
	bne -66.b		; D0 BE
	dec $FF.b		; C6 FF
	sbc $FFEEFF.l,X		; FF FF EE FF
	mvp $00,$FF		; 44 FF 00
	sbc $BA83F7.l		; EF F7 83 BA
	sta $29.b,S		; 83 29
	inc $39FF.w		; EE FF 39
	sbc $00FFC6.l,X		; FF C6 FF 00
	inc $9310.w,X		; FE 10 93
	sta $BB.b,S		; 83 BB
	sta $7D.b,S		; 83 7D
	ora ($54.b,X)		; 01 54
	mvp $E0,$00		; 44 00 E0
	bra -32.b		; 80 E0
	bra -16.b		; 80 F0
	bra  -8.b		; 80 F8
	brk $FC.b		; 00 FC
	bmi -36.b		; 30 DC
	clv		; B8
	lsr $9670.w,X		; 5E 70 96
	rti		; 40

	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $A0.b		; 00 A0
	brk $B0.b		; 00 B0
	jsr $1414.w		; 20 14 14
	trb $78.b		; 14 78
	asl $FA.b,X		; 16 FA
	bmi 124.b		; 30 7C
	sec		; 38
	jmp ($3C18.w,X)		; 7C 18 3C
	clc		; 18
	bit $3E1C.w,X		; 3C 1C 3E
	trb $0C3E.w		; 1C 3E 0C
	asl $1E0C.w,X		; 1E 0C 1E
	sei		; 78
	rti		; 40

	bit $3C04.w,X		; 3C 04 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	jsr $021E.w		; 20 1E 02
	asl $1E02.w,X		; 1E 02 1E
	brk $0C.b		; 00 0C
	asl $1E0C.w,X		; 1E 0C 1E
	tsb $0C0E.w		; 0C 0E 0C
	asl $0E0C.w		; 0E 0C 0E
	tsb $080E.w		; 0C 0E 08
	asl $0E08.w		; 0E 08 0E
	asl $0E10.w,X		; 1E 10 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	cop $0E.b		; 02 0E
	cop $08.b		; 02 08
	asl $0C00.w		; 0E 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	asl $0C02.w		; 0E 02 0C
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	clc		; 18
	php		; 08
	bpl   0.b		; 10 00
	asl $31.b		; 06 31
	asl $11.b		; 06 11
	asl $0E19.w		; 0E 19 0E
	ora $190E.w,Y		; 19 0E 19
	plp		; 28
	ora $3F46.w,Y		; 19 46 3F
	sbc ($1E.b,X)		; E1 1E
	ora $111F11.l,X		; 1F 11 1F 11
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	asl $00.b		; 06 00
	php		; 08
	php		; 08
	asl $46.b		; 06 46
	cpy #$08.b		; C0 08
	bne  24.b		; D0 18
	bne  16.b		; D0 10
	cpx #$30.b		; E0 30
	cpx #$30.b		; E0 30
	plp		; 28
	bmi -60.b		; 30 C4
	sed		; F8
	asl $F0F0.w		; 0E F0 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $D0.b		; 00 D0
	bpl -48.b		; 10 D0
	bpl -64.b		; 10 C0
	brk $20.b		; 00 20
	jsr $C4C0.w		; 20 C0 C4
	rts		; 60

	sbc ($C0.b),Y		; F1 C0
	sbc ($C0.b,X)		; E1 C0
	sbc ($C0.b,X)		; E1 C0
	sbc ($80.b,X)		; E1 80
	cmp ($81.b,X)		; C1 81
	cpy #$81.b		; C0 81
	cpy #$01.b		; C0 01
	bra -31.b		; 80 E1
	ora ($E1.b,X)		; 01 E1
	ora ($E1.b,X)		; 01 E1
	and ($C0.b,X)		; 21 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	eor ($80.b,X)		; 41 80
	ora ($80.b,X)		; 01 80
	ora $C7.b,S		; 03 C7
	tsx		; BA
	lda $FF27B7.l		; AF B7 27 FF
	cmp [$3F.b]		; C7 3F
	ora $DD071B.l		; 0F 1B 07 DD
	sbc $E2.b,S		; E3 E2
	sbc $60F1.w,Y		; F9 F1 60
	jsl $070747.l		; 22 47 07 07
	ora $E9CFC3.l		; 0F C3 CF E9
	sbc $62EF04.l		; EF 04 EF 62
	sbc $00FF61.l,X		; FF 61 FF 00
	bpl  32.b		; 10 20
	bmi  32.b		; 30 20
	bmi  32.b		; 30 20
	bmi   0.b		; 30 00
	jsr $2000.w		; 20 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	jsr $2000.w		; 20 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $7F.b		; 00 7F
	and ($7F.b),Y		; 31 7F
	eor #$7F.b		; 49 7F
	ora ($5F.b),Y		; 11 5F
	bpl  79.b		; 10 4F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($00.b),Y		; 31 00
	tda		; 7B
	brk $4B.b		; 00 4B
	brk $33.b		; 00 33
	bmi  55.b		; 30 37
	rol $00.b,X		; 36 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $FF00.w		; 0E 00 FF
	dec $FF.b		; C6 FF
	cmp #$FF.b		; C9 FF
	cpy $FD.b		; C4 FD
	tsb $F9.b		; 04 F9
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dec $00.b		; C6 00
	sbc $80E980.l		; EF 80 E9 80
	inc $06.b		; E6 06
	inc $B6.b,X		; F6 B6
	bra -32.b		; 80 E0
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	php		; 08
	ldy $BE08.w,X		; BC 08 BE
	tsb $601E.w		; 0C 1E 60
	bra  96.b		; 80 60
	bra 112.b		; 80 70
	brk $78.b		; 00 78
	pha		; 48
	sec		; 38
	brk $3C.b		; 00 3C
	bit $1C.b		; 24 1C
	brk $1E.b		; 00 1E
	ora ($00.b)		; 12 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora [$03.b]		; 07 03
	ora [$00.b]		; 07 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	tsb $07.b		; 04 07
	brk $60.b		; 00 60
	sed		; F8
	bmi 120.b		; 30 78
	bmi 124.b		; 30 7C
	sec		; 38
	jmp ($3C18.w,X)		; 7C 18 3C
	clc		; 18
	rol $3E1C.w,X		; 3E 1C 3E
	tsb $701E.w		; 0C 1E 70
	brk $78.b		; 00 78
	php		; 08
	sei		; 78
	rti		; 40

	bit $3C04.w,X		; 3C 04 3C
	brk $3C.b		; 00 3C
	jsr $021E.w		; 20 1E 02
	asl $0D00.w,X		; 1E 00 0D
	ora $09.b,S		; 03 09
	ora [$11.b]		; 07 11
	ora $0813.w		; 0D 13 08
	ora ($08.b,S),Y		; 13 08
	asl $10.b		; 06 10
	rol $11.b		; 26 11
	bit $11.b		; 24 11
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora $0E0E0F.l		; 0F 0F 0E 0E
	asl $4C0E.w		; 0E 0E 4C
	bcs  -3.b		; B0 FD
	sta $F8.b,S		; 83 F8
	tsb $82.b		; 04 82
	asl $0C85.w		; 0E 85 0C
	.db $82, $F8, $E7		; 82 F8 E7
	sta $5985.w,Y		; 99 85 59
	brk $3F.b		; 00 3F
	brk $7B.b		; 00 7B
	clc		; 18
	xce		; FB
	sbc $F4.b,X		; F5 F4
	adc ($70.b,S),Y		; 73 70
	sta [$00.b]		; 87 00
	stx $2E08.w		; 8E 08 2E
	plp		; 28
	dec $BB.b		; C6 BB
	tax		; AA
	stp		; DB
	dey		; 88
	sbc $E0D9A6.l,X		; FF A6 D9 E0
	lda ($C1.b),Y		; B1 C1
	lsr $A7.b,X		; 56 A7
	stx $1E6F.w		; 8E 6F 1E
	ora $0589.w		; 0D 89 05
	cmp ($01.b,X)		; C1 01
	sbc ($06.b,X)		; E1 06
	inc $0E.b		; E6 0E
	inc $EF40.w		; EE 40 EF
	sty $FF.b		; 84 FF
	tsb $01FF.w		; 0C FF 01
	ora $09.b,S		; 03 09
	ora $0B.b,S		; 03 0B
	ora ($0B.b,X)		; 01 0B
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	ora $011F01.l		; 0F 01 1F 01
	ora $001F00.l,X		; 1F 00 1F 00
	ora $000700.l		; 0F 00 07 00
	ora $00.b,S		; 03 00
	ora ($E2.b,X)		; 01 E2
	cmp #$D2.b		; C9 D2
	cmp #$D2.b		; C9 D2
	cmp #$D2.b		; C9 D2
	cmp #$D2.b		; C9 D2
	cmp #$D2.b		; C9 D2
	cmp #$62.b		; C9 62
	inx		; E8
.ACCU 8
	sep #$60		; E2 60
	bra  -1.b		; 80 FF
	bra  -1.b		; 80 FF
	bra  -1.b		; 80 FF
	cpy #$FF.b		; C0 FF
	cpy #$FF.b		; C0 FF
	rti		; 40

	sbc $60FF00.l,X		; FF 00 FF 60
	sbc $727830.l,X		; FF 30 78 72
	sei		; 78
	ply		; 7A
	bvs 122.b		; 70 7A
	bvs 100.b		; 70 64
	bvs 112.b		; 70 70
	rts		; 60

	cpx #$E0.b		; E0 E0
	cpx #$E8.b		; E0 E8
	bmi  -2.b		; 30 FE
	bmi  -1.b		; 30 FF
	bmi  -1.b		; 30 FF
	bvs  -1.b		; 70 FF
	rts		; 60

	inc $FC40.w,X		; FE 40 FC
	brk $F8.b		; 00 F8
	cpx #$F0.b		; E0 F0
	bra -64.b		; 80 C0
	ora ($80.b,X)		; 01 80
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	ora #$04.b		; 09 04
	ora ($09.b)		; 12 09
	jsl $122419.l		; 22 19 24 12
	cpy #$41.b		; C0 41
	bra -125.b		; 80 83
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	rti		; 40

	ror $6058.w,X		; 7E 58 60
	and $1F5F0F.l		; 2F 0F 5F 1F
	eor $1E1C1F.l,X		; 5F 1F 1C 1E
	ora ($58.b,X)		; 01 58
	ldy #$20.b		; A0 20
	stz $E5.b		; 64 E5
	cli		; 58
	cmp $5FFF2F.l,X		; DF 2F FF 5F
	sbc $00FF5E.l,X		; FF 5E FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	ora $FFFF03.l		; 0F 03 FF FF
	sbc $00FFFC.l,X		; FF FC FF 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	cpx #$FF.b		; E0 FF
	brk $FF.b		; 00 FF
	brk $C0.b		; 00 C0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sed		; F8
	sbc $00FFFE.l,X		; FF FE FF 00
	sbc $321C04.l,X		; FF 04 1C 32
	ror $00.b,X		; 76 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	bvs   4.b		; 70 04
	ora $003F72.l		; 0F 72 3F 00
	trb $3E04.w		; 1C 04 3E
	asl $00FF.w		; 0E FF 00
	sbc $00F90C.l,X		; FF 0C F9 00
	sbc $00FF07.l,X		; FF 07 FF 00
	sbc $1C0000.l,X		; FF 00 00 1C
	brk $1E.b		; 00 1E
	brk $DC.b		; 00 DC
	cpy $5EDE.w		; CC DE 5E
	ora ($01.b,X)		; 01 01
	ora $862F03.l		; 0F 03 2F 86
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $CE.b		; 00 CE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra  -2.b		; 80 FE
	dey		; 88
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $D6A0.w		; AC A0 D6
	bne -38.b		; D0 DA
	cli		; 58
	sed		; F8
	jsr $20F8.w		; 20 F8 20
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	bpl  28.b		; 10 1C
	bpl  28.b		; 10 1C
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $0C04.w		; 0C 04 0C
	tsb $1C.b		; 04 1C
	tsb $1C.b		; 04 1C
	tsb $3C.b		; 04 3C
	bit $7C7C.w,X		; 3C 7C 7C
	beq  -8.b		; F0 F8
	cpy #$E0.b		; C0 E0
	brk $80.b		; 00 80
	rts		; 60

	pla		; 68
	stz $F4.b,X		; 74 F4
	clv		; B8
	sei		; 78
	clv		; B8
	inc $FE30.w,X		; FE 30 FE
	cpy #$FE.b		; C0 FE
	sty $FA.b		; 84 FA
	tsb $64F2.w		; 0C F2 64
	sbc ($30.b)		; F2 30
	plx		; FA
	clc		; 18
	jsr ($3848.w,X)		; FC 48 38
	brk $B0.b		; 00 B0
	bra  64.b		; 80 40
	cpy #$20.b		; C0 20
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bpl   1.b		; 10 01
	brk $12.b		; 00 12
	plp		; 28
	cop $08.b		; 02 08
	jsl $580218.l		; 22 18 02 58
	brk $58.b		; 00 58
	brk $00.b		; 00 00
	jmp ($0E0E.w,X)		; 7C 0E 0E
	tsb $1C0C.w		; 0C 0C 1C
	trb $1C1C.w		; 1C 1C 1C
	bit $3C3C.w,X		; 3C 3C 3C
	bit $3C3C.w,X		; 3C 3C 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	ora [$0F.b]		; 07 0F
	tsb $101F.w		; 0C 1F 10
	rol $7820.w,X		; 3E 20 78
	rti		; 40

	beq   0.b		; F0 00
	brk $03.b		; 00 03
	cop $07.b		; 02 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	ora ($3C.b,X)		; 01 3C
	tsb $70.b		; 04 70
	brk $E0.b		; 00 E0
	bra  16.b		; 80 10
	clc		; 18
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  48.b		; 10 30
	php		; 08
	tya		; 98
	tsb $0C.b		; 04 0C
	.db $42, $00		; 42 00
	and ($00.b,X)		; 21 00
	ora $000000.l,X		; 1F 00 00 00
	brk $E0.b		; 00 E0
	cpx #$F0.b		; E0 F0
	beq 120.b		; F0 78
	sei		; 78
	bit $1E3C.w,X		; 3C 3C 1E
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($0F.b,X)		; 01 0F
	ora $FF3F3F.l		; 0F 3F 3F FF
	sed		; F8
	sbc $00F8C0.l,X		; FF C0 F8 00
	cpx #$00.b		; E0 00
	bra   0.b		; 80 00
	brk $0F.b		; 00 0F
	tsb $203F.w		; 0C 3F 20
	sbc $02FE80.l,X		; FF 80 FE 02
	beq  16.b		; F0 10
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	asl $0F.b		; 06 0F
	tsb $181E.w		; 0C 1E 18
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $021E01.l		; 0F 01 1E 02
	trb $1304.w		; 1C 04 13
	brk $06.b		; 00 06
	bpl  36.b		; 10 24
	ora ($08.b,X)		; 01 08
	jsl $000450.l		; 22 50 04 00
	php		; 08
	cpy #$18.b		; C0 18
	brk $B0.b		; 00 B0
	ora $0F0F0F.l		; 0F 0F 0F 0F
	asl $1C1E.w,X		; 1E 1E 1C
	trb $3838.w		; 1C 38 38
	bvs 112.b		; 70 70
	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	tsb $32.b		; 04 32
	ora #$24.b		; 09 24
	ora #$24.b		; 09 24
	ora ($09.b)		; 12 09
	ora ($09.b)		; 12 09
	cop $01.b		; 02 01
	asl $01.b		; 06 01
	asl $01.b		; 06 01
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	stz $295D.w		; 9C 5D 29
	dey		; 88
	jsr $2094.w		; 20 94 20
	sty $64.b,X		; 94 64
	ora ($60.b)		; 12 60
	inc A		; 1A
	.db $62, $19, $62		; 62 19 62
	ora $FF0C.w,Y		; 19 0C FF
	php		; 08
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $060101.l,X		; FF 01 01 06
	ora [$1C.b]		; 07 1C
	ora $E07F78.l,X		; 1F 78 7F E0
	jsr ($F0C0.w,X)		; FC C0 F0
	bra -64.b		; 80 C0
	ora ($81.b,X)		; 01 81
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora $027E01.l,X		; 1F 01 7E 02
	sed		; F8
	ora #$F0.b		; 09 F0
	ora ($C0.b),Y		; 11 C0
	ora ($80.b,X)		; 01 80
	sta $0A.b,S		; 83 0A
	txa		; 8A
	bvs 114.b		; 70 72
	ora ($58.b),Y		; 11 58
	adc ($5C.b),Y		; 71 5C
	and $98.b,X		; 35 98
	adc [$98.b]		; 67 98
	lsr $98.b		; 46 98
	jsl $7F88B8.l		; 22 B8 88 7F
	brk $8F.b		; 00 8F
	rts		; 60

	cmp [$20.b]		; C7 20
	sta [$60.b]		; 87 60
	ora $F0.b,S		; 03 F0
	sta ($F0.b),Y		; 91 F0
	sta ($D6.b),Y		; 91 D6
	sta [$03.b],Y		; 97 03
	sbc $07FF07.l,X		; FF 07 FF 07
	sbc $00EF03.l,X		; FF 03 EF 00
	sbc [$04.b]		; E7 04
	sbc ($83.b,S),Y		; F3 83
	clc		; 18
	rts		; 60

	adc $3F8C3F.l		; 6F 3F 8C 3F
	sta $2F.b,S		; 83 2F
	lda ($37.b,X)		; A1 37
	lda ($19.b,X)		; A1 19
	bra  12.b		; 80 0C
	bra   7.b		; 80 07
	cpx #$60.b		; E0 60
	beq   0.b		; F0 00
	jsr ($FCCC.w,X)		; FC CC FC
	cpx $FC.b		; E4 FC
	inx		; E8
	sed		; F8
	cpy #$F8.b		; C0 F8
	brk $E0.b		; 00 E0
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	jsr ($FC64.w,X)		; FC 64 FC
	bit $FC.b		; 24 FC
	pei ($F8.b)		; D4 F8
	cpx #$F0.b		; E0 F0
	bmi   0.b		; 30 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	ora $00.b,S		; 03 00
	bra   1.b		; 80 01
	.db $82, $1C, $81		; 82 1C 81
	ror $7EC1.w,X		; 7E C1 7E
	eor ($1E.b,X)		; 41 1E
	eor ($1E.b,X)		; 41 1E
	eor ($00.b,X)		; 41 00
	sbc $FEBFC0.l,X		; FF C0 BF FE
	.db $82, $7E, $00		; 82 7E 00
	rol $3E00.w,X		; 3E 00 3E
	brk $7E.b		; 00 7E
	rti		; 40

	rol $0000.w,X		; 3E 00 00
	tsb $0C28.w		; 0C 28 0C
	bmi   4.b		; 30 04
	ldy $3886.w,X		; BC 86 38
	.db $82, $7C, $C2		; 82 7C C2
	asl $3C43.w,X		; 1E 43 3C
	adc ($08.b,X)		; 61 08
	sed		; F8
	bmi -64.b		; 30 C0
	jsr ($7804.w,X)		; FC 04 78
	brk $FC.b		; 00 FC
	bra  62.b		; 80 3E
	cop $7C.b		; 02 7C
	rti		; 40

	asl $3E00.w,X		; 1E 00 3E
	adc ($3E.b,X)		; 61 3E
	and ($0E.b,X)		; 21 0E
	and ($0E.b,X)		; 21 0E
	and ($0C.b,X)		; 21 0C
	and ($0E.b,X)		; 21 0E
	and $48.b,S		; 23 48
	and $A4.b,S		; 23 A4
	adc [$1E.b]		; 67 1E
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	jsr $001E.w		; 20 1E 00
	asl $3C00.w,X		; 1E 00 3C
	jsr $223E.w		; 20 3E 22
	phy		; 5A
	.db $42, $24		; 42 24
	ora ($20.b)		; 12 20
	ora ($20.b)		; 12 20
	bpl  96.b		; 10 60
	tsb $40.b		; 04 40
	bit $40.b		; 24 40
	jsr $2240.w		; 20 40 22
	rol $01.b		; 26 01
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0C0C.w		; 0C 0C 0C
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	trb $1C1C.w		; 1C 1C 1C
	trb $1E1E.w		; 1C 1E 1E
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	trb $1810.w		; 1C 10 18
	brk $30.b		; 00 30
	jsr $0020.w		; 20 20 00
	rts		; 60

	rti		; 40

	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	sec		; 38
	sty $7C.b		; 84 7C
	cpy $18.b		; C4 18
	.db $42, $38		; 42 38
	.db $62, $1C, $22		; 62 1C 22
	clc		; 18
	and $1A.b,S		; 23 1A
	and ($48.b,S),Y		; 33 48
	and $84FC.w,X		; 3D FC 84
	sec		; 38
	brk $7C.b		; 00 7C
	rti		; 40

	trb $3E00.w		; 1C 00 3E
	jsl $0C021E.l		; 22 1E 02 0C
	brk $12.b		; 00 12
	ora ($04.b,S),Y		; 13 04
	ora $0B.b,S		; 03 0B
	ora [$13.b]		; 07 13
	phd		; 0B
	ora $11.b,S		; 03 11
	and [$00.b]		; 27 00
	asl $4C20.w		; 0E 20 4C
	ora ($18.b,X)		; 01 18
	.db $42, $00		; 42 00
	cop $01.b		; 02 01
	ora [$07.b]		; 07 07
	ora [$0F.b]		; 07 0F
	ora $1F1F1F.l		; 0F 1F 1F 1F
	ora $3C3E3E.l,X		; 1F 3E 3E 3C
	bit $B8A0.w,X		; 3C A0 B8
	brk $B0.b		; 00 B0
	bra -96.b		; 80 A0
	cpy #$E0.b		; C0 E0
	cpy #$C0.b		; C0 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc  16.b		; 50 10
	rts		; 60

	jsr $C040.w		; 20 40 C0
	bra -32.b		; 80 E0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $42, $3B		; 42 3B
	lsr $3C3E.w,X		; 5E 3E 3C
	adc $411C.w,X		; 7D 1C 41
	clc		; 18
	.db $42, $18		; 42 18
	.db $42, $90		; 42 90
	mvp $44,$90		; 44 90 44
	tsb $07.b		; 04 07
	ora $1E3F.w		; 0D 3F 1E
	ror $3E3E.w,X		; 7E 3E 3E
	bit $3C3C.w,X		; 3C 3C 3C
	bit $3838.w,X		; 3C 38 38
	sec		; 38
	sec		; 38
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	ora [$01.b]		; 07 01
	asl $02.b		; 06 02
	tsb $0C04.w		; 0C 04 0C
	tsb $08.b		; 04 08
	php		; 08
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	sec		; 38
	plp		; 28
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	bpl 112.b		; 10 70
	bmi 112.b		; 30 70
	jsr $2060.w		; 20 60 20
	rts		; 60

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	bmi  32.b		; 30 20
	bvs  64.b		; 70 40
	bvs  64.b		; 70 40
	bvs  64.b		; 70 40
	rts		; 60

	rti		; 40

	rts		; 60

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	bpl  56.b		; 10 38
	bpl  48.b		; 10 30
	bpl  48.b		; 10 30
	jsr $0620.w		; 20 20 06
	asl $0C.b		; 06 0C
	tsb $1018.w		; 0C 18 10
	clc		; 18
	php		; 08
	sec		; 38
	plp		; 28
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	jsr $0D00.w		; 20 00 0D
	and ($0E.b,X)		; 21 0E
	jsr $201E.w		; 20 1E 20
	rol $3E60.w,X		; 3E 60 3E
	rts		; 60

	ora $1C41.w,X		; 1D 41 1C
	eor ($3A.b,X)		; 41 3A
	cmp $1E.b,S		; C3 1E
	brk $3F.b		; 00 3F
	jsr $203F.w		; 20 3F 20
	ora $001F00.l,X		; 1F 00 1F 00
	rol $7F00.w,X		; 3E 00 7F
	eor ($7C.b,X)		; 41 7C
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $39.b		; 00 39
	clc		; 18
	eor $41C759.l		; 4F 59 C7 41
	sbc [$22.b]		; E7 22
	sbc $00FF0C.l,X		; FF 0C FF 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $79.b		; 00 79
	sec		; 38
	xce		; FB
	sed		; F8
	stp		; DB
	tya		; 98
	adc [$00.b]		; 67 00
	adc $0050.w,X		; 7D 50 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -64.b		; F0 C0
	jsr ($FEE8.w,X)		; FC E8 FE
	sbc ($FF.b)		; F2 FF
	stx $FF.b,Y		; 96 FF
	cop $FF.b		; 02 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	jsr ($FED0.w,X)		; FC D0 FE
	tax		; AA
	dec $2602.w,X		; DE 02 26
	brk $20.b		; 00 20
	jsr ($F860.w,X)		; FC 60 F8
	rts		; 60

	sed		; F8
	cpy #$F9.b		; C0 F9
	dec $F6.b		; C6 F6
	cmp ($F7.b,X)		; C1 F7
	.db $82, $E9, $83		; 82 E9 83
	inx		; E8
	sei		; 78
	php		; 08
	sed		; F8
	dey		; 88
	beq  19.b		; F0 13
	beq  23.b		; F0 17
	cpx $2F.b		; E4 2F
	cpx #$29.b		; E0 29
	inc $20.b		; E6 20
	cmp [$40.b]		; C7 40
	brk $00.b		; 00 00
	pld		; 2B
	ora ($E5.b,S),Y		; 13 E5
	clc		; 18
	bmi  12.b		; 30 0C
	php		; 08
	lsr $00.b		; 46 00
	ldx $023C.w,Y		; BE 3C 02
	.db $82, $81, $07		; 82 81 07
	and $01FC00.l,X		; 3F 00 FC 01
	inc $FE01.w,X		; FE 01 FE
	brk $FF.b		; 00 FF
	brk $C3.b		; 00 C3
	bit $3EFD.w,X		; 3C FD 3E
	ror $0409.w,X		; 7E 09 04
	ora #$04.b		; 09 04
	ora ($08.b,S),Y		; 13 08
	ora ($08.b,S),Y		; 13 08
	ora [$10.b]		; 07 10
	rol $10.b		; 26 10
	rol $11.b		; 26 11
	tsb $0320.w		; 0C 20 03
	ora $03.b,S		; 03 03
	ora $07.b,S		; 03 07
	ora [$07.b]		; 07 07
	ora [$0F.b]		; 07 0F
	ora $0E0F0F.l		; 0F 0F 0F 0E
	asl $1E1E.w		; 0E 1E 1E
	sbc ($F0.b,X)		; E1 F0
	cmp ($00.b,X)		; C1 00
	sta ($20.b,X)		; 81 20
	brk $41.b		; 00 41
	cop $01.b		; 02 01
	cop $81.b		; 02 81
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	rts		; 60

	beq -32.b		; F0 E0
	cpx #$C0.b		; E0 C0
	cpy #$80.b		; C0 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($38.b,X)		; 01 38
	jsr ($C418.w,X)		; FC 18 C4
	bmi -124.b		; 30 84
	bmi   8.b		; 30 08
	rts		; 60

	php		; 08
	rts		; 60

	bpl  64.b		; 10 40
	bpl -64.b		; 10 C0
	jsr $7C18.w		; 20 18 7C
	sec		; 38
	sec		; 38
	sei		; 78
	sei		; 78
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	cop $06.b		; 02 06
	ora $07.b,S		; 03 07
	cop $07.b		; 02 07
	asl $07.b		; 06 07
	tsb $0E.b		; 04 0E
	brk $0E.b		; 00 0E
	cop $03.b		; 02 03
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	ora [$01.b]		; 07 01
	asl $00.b		; 06 00
	asl $990A.w		; 0E 0A 99
	mvp $44,$99		; 44 99 44
	lda ($09.b)		; B2 09
	and ($09.b)		; 32 09
	ora ($09.b)		; 12 09
	cop $61.b		; 02 61
	and #$68.b		; 29 68
	asl $46.b,X		; 16 46
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	jsr $103F.w		; 20 3F 10
	ora [$38.b]		; 07 38
	ora ($12.b,X)		; 01 12
	dey		; 88
	ora ($88.b)		; 12 88
	and ($88.b)		; 32 88
	and ($88.b)		; 32 88
	bmi -120.b		; 30 88
	bmi -118.b		; 30 8A
	bra   6.b		; 80 06
	bit $003E.w,X		; 3C 3E 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $FE02.w,X		; FE 02 FE
	asl $FE.b		; 06 FE
	cop $C2.b		; 02 C2
	tsb $1E.b		; 04 1E
	tsb $081E.w		; 0C 1E 08
	bit $3C18.w,X		; 3C 18 3C
	bpl 120.b		; 10 78
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	asl $1E00.w		; 0E 00 1E
	ora ($1C.b)		; 12 1C
	brk $3C.b		; 00 3C
	bit $38.b		; 24 38
	php		; 08
	bvs  80.b		; 70 50
	rts		; 60

	jsr $C0C0.w		; 20 C0 C0
	bit $11.b		; 24 11
	bit $02.b		; 24 02
	tsb $0C22.w		; 0C 22 0C
	jsr $2448.w		; 20 48 24
	pha		; 48
	tsb $08.b		; 04 08
	mvp $44,$08		; 44 08 44
	asl $1C0E.w		; 0E 0E 1C
	trb $1C1C.w		; 1C 1C 1C
	trb $181C.w		; 1C 1C 18
	clc		; 18
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	trb $09.b		; 14 09
	bit $13.b		; 24 13
	php		; 08
	jsl $300658.l		; 22 58 06 30
	mvp $04,$B0		; 44 B0 04
	brk $88.b		; 00 88
	brk $F0.b		; 00 F0
	asl $06.b		; 06 06
	tsb $1C0C.w		; 0C 0C 1C
	trb $3838.w		; 1C 38 38
	sec		; 38
	sec		; 38
	sei		; 78
	sei		; 78
	bvs 112.b		; 70 70
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	sec		; 38
	.db $42, $58		; 42 58
	cop $4C.b		; 02 4C
	ora ($26.b,X)		; 01 26
	bpl   3.b		; 10 03
	php		; 08
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	bit $3C3C.w,X		; 3C 3C 3C
	bit $3C3C.w,X		; 3C 3C 3C
	rol $0F3E.w,X		; 3E 3E 0F
	ora $000707.l		; 0F 07 07 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $2020.w		; 20 20 20
	jsr $0020.w		; 20 20 00
	ora ($02.b,X)		; 01 02
	ora ($03.b,X)		; 01 03
	brk $04.b		; 00 04
	ora $04.b,S		; 03 04
	ora $20.b,S		; 03 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($78.b,X)		; 01 78
.ACCU 16
.INDEX 16
	rep #$74		; C2 74
	dec $30.b		; C6 30
	sty $38.b		; 84 38
	sty $88A0.w		; 8C A0 88
	ldy #$C888.w		; A0 88 C8
	bne -24.b		; D0 E8
	beq  62.b		; F0 3E
	cop $38.b		; 02 38
	brk $FC.b		; 00 FC
	sty $F0.b		; 84 F0
	bra 120.b		; 80 78
	php		; 08
	bvs   0.b		; 70 00
	bmi -104.b		; 30 98
	rts		; 60

	sed		; F8
	trb $FF.b		; 14 FF
	php		; 08
	sbc $18FF1C.l,X		; FF 1C FF 18
	jsr ($FE0C.w,X)		; FC 0C FE
	tsb $9E.b		; 04 9E
	ora $0F.b,S		; 03 0F
	ora [$03.b]		; 07 03
	rol $7820.w,X		; 3E 20 78
	rti		; 40

	ldy $BB88.w,X		; BC 88 BB
	dey		; 88
	ora $0D00.w,X		; 1D 00 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F6.b		; 00 F6
	phd		; 0B
	bmi -118.b		; 30 8A
	sed		; F8
	sty $F8.b		; 84 F8
	tsb $F8.b		; 04 F8
	tsb $78.b		; 04 78
	tsb $00.b		; 04 00
	php		; 08
	ldy #$12B0.w		; A0 B0 12
	brk $10.b		; 00 10
	cpy $98.b		; C4 98
	ldy #$00F8.w		; A0 F8 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $40.b		; 00 40
	brk $8F.b		; 00 8F
	inx		; E8
	asl $D0.b		; 06 D0
	ora $8312D1.l,X		; 1F D1 12 83
	jsr $001D.w		; 20 1D 00
	cop $1C.b		; 02 1C
	trb $1E1E.w		; 1C 1E 1E
	cmp [$40.b]		; C7 40
	sta $808E00.l		; 8F 00 8E 80
	ora $221D.w,X		; 1D 1D 22
	jsl $1C3D20.l		; 22 20 3D 1C
	and $803F0E.l,X		; 3F 0E 3F 80
	cmp ($01.b,X)		; C1 01
	cmp ($01.b,X)		; C1 01
	sbc $21E11C.l,X		; FF 1C E1 21
	cmp $20.b,S		; C3 20
	cmp [$07.b]		; C7 07
	sbc $3E7F1F.l,X		; FF 1F 7F 3E
	rol $BEBF.w,X		; 3E BF BE
	ora ($00.b,X)		; 01 00
	asl $3C1E.w,X		; 1E 1E 3C
	lda $BB38.w,X		; BD 38 BB
	asl $87.b		; 06 87
	ora $0000FF.l		; 0F FF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $07.b,S		; 03 07
	cop $07.b		; 02 07
	asl $0F.b		; 06 0F
	asl $0F.b		; 06 0F
	tsb $1E.b		; 04 1E
	tsb $081E.w		; 0C 1E 08
	bit $3C18.w,X		; 3C 18 3C
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000E09.l		; 0F 09 0E 00
	asl $1C12.w,X		; 1E 12 1C
	brk $3C.b		; 00 3C
	bit $03.b		; 24 03
	sta [$01.b]		; 87 01
	ora $04.b,S		; 03 04
	ora ($0E.b,X)		; 01 0E
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	ora ($02.b,X)		; 01 02
	ora ($01.b),Y		; 11 01
	ora $000700.l		; 0F 00 07 00
	ora $06.b,S		; 03 06
	ora [$06.b]		; 07 06
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $E7DFCF.l		; 0F CF DF E7
	sbc [$DD.b]		; E7 DD
	cmp $7E38.w,X		; DD 38 7E
	ora ($3C.b)		; 12 3C
	sty $19.b		; 84 19
	.db $62, $02, $65		; 62 02 65
	ora ($C3.b,S),Y		; 13 C3
	sbc $5DFFE3.l,X		; FF E3 FF 5D
	sbc $00FF18.l,X		; FF 18 FF 00
	sbc $02FF00.l,X		; FF 00 FF 02
	sbc $C3FF01.l,X		; FF 01 FF C3
	sbc ($C3.b,X)		; E1 C3
	cmp $86.b,S		; C3 86
	cmp ($A0.b,X)		; C1 A0
	ldy #$A020.w		; A0 20 A0
	rti		; 40

	rts		; 60

	bcc -128.b		; 90 80
	bvc   0.b		; 50 00
	cmp $E7.b		; C5 E7
	sty $F7.b		; 84 F7
	brk $F3.b		; 00 F3
	brk $F3.b		; 00 F3
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	bra -16.b		; 80 F0
	brk $F0.b		; 00 F0
	cpx #$F0C0.w		; E0 C0 F0
	cpx #$D87C.w		; E0 7C D8
	ldx $2F7C.w,Y		; BE 7C 2F
	rol $3F2F.w		; 2E 2F 3F
	asl $000E.w,X		; 1E 0E 00
	brk $C0.b		; 00 C0
	cpx #$F0C0.w		; E0 C0 F0
	clc		; 18
	jsr ($FE3C.w,X)		; FC 3C FE
	rol $06FF.w		; 2E FF 06
	and $001F00.l,X		; 3F 00 1F 00
	asl $0C00.w		; 0E 00 0C
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	bpl 112.b		; 10 70
	bpl 112.b		; 10 70
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	php		; 08
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	brk $30.b		; 00 30
	jsr $4070.w		; 20 70 40
	bvs  64.b		; 70 40
	jsr $2060.w		; 20 60 20
	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $BE.b		; 00 BE
	sbc $BE.b,S		; E3 BE
	sbc $3E.b,S		; E3 3E
	sbc $3C.b,S		; E3 3C
	sbc ($1C.b,X)		; E1 1C
	cmp ($1E.b,X)		; C1 1E
	cmp $1E.b,S		; C3 1E
	.db $42, $1C		; 42 1C
	.db $42, $1D		; 42 1D
	ora ($1D.b,X)		; 01 1D
	ora ($9D.b,X)		; 01 9D
	sta ($1E.b,X)		; 81 1E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $7E.b		; 00 7E
	.db $42, $00		; 42 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $001F00.l		; 0F 00 1F 00
	and $103E00.l,X		; 3F 00 3E 10
	ror $0000.w,X		; 7E 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$05.b]		; 07 05
	asl $1E08.w		; 0E 08 1E
	ora ($3C.b)		; 12 3C
	bit $3C.b		; 24 3C
	tsb $1C.b		; 04 1C
	.db $42, $38		; 42 38
	.db $42, $38		; 42 38
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	cpy $78.b		; C4 78
	cpy $58.b		; C4 58
	cpy $98.b		; C4 98
	jmp ($7CB8.w,X)		; 7C B8 7C
	jmp ($7C40.w,X)		; 7C 40 7C
	rti		; 40

	jmp ($7840.w,X)		; 7C 40 78
	rti		; 40

	bit $3804.w,X		; 3C 04 38
	brk $00.b		; 00 00
	bra  24.b		; 80 18
	jsr ($4000.w,X)		; FC 00 40
	bra -64.b		; 80 C0
	cpy #$C000.w		; C0 00 C0
	jsr $20C0.w		; 20 C0 20
	rti		; 40

	clc		; 18
	bcc -84.b		; 90 AC
	ldy #$80CC.w		; A0 CC 80
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	rts		; 60

	bra 112.b		; 80 70
	bra 120.b		; 80 78
	bra  96.b		; 80 60
	bpl  80.b		; 10 50
	bit $34.b,X		; 34 34
	tsb $CC.b		; 04 CC
	cpy #$E448.w		; C0 48 E4
	dex		; CA
	ldy $8ED2.w		; AC D2 8E
	cmp ($0C.b)		; D2 0C
	bne -115.b		; D0 8D
	beq  23.b		; F0 17
	bra  48.b		; 80 30
	bmi 116.b		; 30 74
	bmi -44.b		; 30 D4
	bpl -82.b		; 10 AE
	jsl $2EA02C.l		; 22 2C A0 2E
	ldy #$9E1E.w		; A0 1E 9E
	clc		; 18
	cmp $000000.l,X		; DF 00 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $03.b,S		; 03 03
	ora [$03.b]		; 07 03
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	tsb $03.b		; 04 03
	ora [$07.b]		; 07 07
	ora $060F06.l		; 0F 06 0F 06
	ora $0C1F0E.l		; 0F 0E 1F 0C
	asl $1E0C.w,X		; 1E 0C 1E
	clc		; 18
	rol $0007.w,X		; 3E 07 00
	ora [$00.b]		; 07 00
	ora $010F08.l		; 0F 08 0F 01
	asl $1E00.w		; 0E 00 1E
	bpl  30.b		; 10 1E
	cop $1C.b		; 02 1C
	brk $04.b		; 00 04
	ora ($24.b),Y		; 11 24
	bpl  40.b		; 10 28
	cop $08.b		; 02 08
	jsr $2440.w		; 20 40 24
	brk $48.b		; 00 48
	bra  88.b		; 80 58
	brk $B0.b		; 00 B0
	asl $0E0E.w		; 0E 0E 0E
	asl $1C1C.w		; 0E 1C 1C
	trb $181C.w		; 1C 1C 18
	clc		; 18
	bmi  48.b		; 30 30
	jsr $4020.w		; 20 20 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	tsb $0F.b		; 04 0F
	rtl		; 6B

	eor $ABBF0C.l,X		; 5F 0C BF AB
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	adc $415D60.l		; 6F 60 5D 41
	lda $0008.w,Y		; B9 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpx #$F8E0.w		; E0 E0 F8
	bpl  -4.b		; 10 FC
	inx		; E8
	trb $DC30.w		; 1C 30 DC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F000.w		; C0 00 F0
	jsr $8098.w		; 20 98 80
	cpx #$2000.w		; E0 00 20
	brk $40.b		; 00 40
	inc $E440.w		; EE 40 E4
	eor ($E1.b,X)		; 41 E1
	eor [$E3.b]		; 47 E3
	rti		; 40

	sbc [$41.b]		; E7 41
	sbc [$43.b]		; E7 43
	inc $41.b,X		; F6 41
	pea $A1E6.w		; F4 E6 A1
	cpx $A3.b		; E4 A3
	sbc ($A7.b,X)		; E1 A7
	sbc $83.b,S		; E3 83
	cpx #$E280.w		; E0 80 E2
	.db $82, $F1, $10		; 82 F1 10
	sbc ($10.b,S),Y		; F3 10
	brk $00.b		; 00 00
	sec		; 38
	brk $DE.b		; 00 DE
	cpy #$AFA0.w		; C0 A0 AF
	bvc -56.b		; 50 C8
	bra -28.b		; 80 E4
	cpy #$C466.w		; C0 66 C4
	adc [$07.b]		; 67 07
	sed		; F8
	ora ($FE.b,X)		; 01 FE
	bra  -1.b		; 80 FF
	brk $F0.b		; 00 F0
	ora [$77.b]		; 07 77
	ora $3B.b,S		; 03 3B
	sta ($19.b,X)		; 81 19
	bra  28.b		; 80 1C
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
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $F0.b		; 00 F0
	plp		; 28
	sec		; 38
	clc		; 18
	ora $3F08.w,Y		; 19 08 3F
	brk $59.b		; 00 59
	brk $C0.b		; 00 C0
	bra  96.b		; 80 60
	rti		; 40

	ldy #$0C0C.w		; A0 0C 0C
	inc $FEC6.w		; EE C6 FE
	inc $C8.b		; E6 C8
	cpy #$A6A6.w		; C0 A6 A6
	php		; 08
	sta $BE1C.w,X		; 9D 1C BE
	ldy $FCFC.w,X		; BC FC FC
	jsr ($F8F8.w,X)		; FC F8 F8
	sed		; F8
	sei		; 78
	sed		; F8
	sec		; 38
	inx		; E8
	bcc 106.b		; 90 6A
	ror A		; 6A
	cli		; 58
	jmp $38BE38.l		; 5C 38 BE 38
	inc $FC18.w,X		; FE 18 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	bra  -4.b		; 80 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp $FE19FF.l		; 5C FF 19 FE
	eor ($7E.b)		; 52 7E
	eor ($7F.b),Y		; 51 7F
	bvc 127.b		; 50 7F
	cli		; 58
	adc $407F4C.l,X		; 7F 4C 7F 40
	adc $7D08FC.l,X		; 7F FC 08 7D
	jsr $0059.w		; 20 59 00
	phy		; 5A
	ora ($5B.b)		; 12 5B
	ora ($5B.b,S),Y		; 13 5B
	phd		; 0B
	eor $6E11.w,X		; 5D 11 6E
	plp		; 28
	sed		; F8
	cop $E0.b		; 02 E0
	cop $E0.b		; 02 E0
	cop $78.b		; 02 78
	cop $84.b		; 02 84
	stx $78.b		; 86 78
	jsr ($E000.w,X)		; FC 00 E0
	trb $FCDC.w		; 1C DC FC
	brk $FC.b		; 00 FC
	clc		; 18
	jsr ($FC18.w,X)		; FC 18 FC
	brk $78.b		; 00 78
	brk $80.b		; 00 80
	bra  -4.b		; 80 FC
	jsr ($E3E0.w,X)		; FC E0 E3
	adc ($F4.b,X)		; 61 F4
	adc $F4.b,S		; 63 F4
	rts		; 60

	jsr ($F26C.w,X)		; FC 6C F2
	lsr $E1.b		; 46 E1
	tad		; 5B
	sed		; F8
	bit $3CFD.w,X		; 3C FD 3C
	inc $10F3.w,X		; FE F3 10
	sbc ($10.b,S),Y		; F3 10
	sbc [$14.b],Y		; F7 14
	sbc $3FFF0E.l		; EF 0E FF 3F
	cmp [$3F.b]		; C7 3F
	txs		; 9A
	ror $7FB8.w,X		; 7E B8 7F
.ACCU 16
	rep #$67		; C2 67
	ora $67.b,S		; 03 67
	sta ($C7.b,X)		; 81 C7
	ora #$0EC3.w		; 09 C3 0E
	sta $8E07.w		; 8D 07 8E
	ora $07.b,S		; 03 07
	ora ($03.b),Y		; 11 03
	bra  30.b		; 80 1E
	cpy #$005F.w		; C0 5F 00
	and $0CBF80.l,X		; 3F 80 BF 0C
	adc $017F02.l,X		; 7F 02 7F 01
	adc $F87F00.l,X		; 7F 00 7F F8
	ora $F009E0.l		; 0F E0 09 F0
	ora $10C0.w,Y		; 19 C0 10
	cpx #$C030.w		; E0 30 C0
	jsr $2080.w		; 20 80 20
	brk $40.b		; 00 40
	sbc ($01.b),Y		; F1 01
	sed		; F8
	php		; 08
	cpx #$F000.w		; E0 00 F0
	bpl -64.b		; 10 C0
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	cpy #$7040.w		; C0 40 70
	php		; 08
	clv		; B8
	dey		; 88
	bmi -124.b		; 30 84
	cli		; 58
	cpy $18.b		; C4 18
	cpy $2C.b		; C4 2C
	stz $0C.b		; 64 0C
	ror $16.b		; 66 16
	bvs  -8.b		; 70 F8
	php		; 08
	bvs   0.b		; 70 00
	sed		; F8
	bra  56.b		; 80 38
	brk $7C.b		; 00 7C
	mvp $40,$58		; 44 58 40
	sec		; 38
	jsr $2028.w		; 20 28 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	tsb $00.b		; 04 00
	ora #$0300.w		; 09 00 03
	php		; 08
	ora [$00.b],Y		; 17 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora $70160F.l		; 0F 0F 16 70
	bit $F8E1.w		; 2C E1 F8
	ora $78.b,S		; 03 78
	inc $08.b,X		; F6 08
	trb $D8.b		; 14 D8
	jsr $6090.w		; 20 90 60
	jsr $2FC0.w		; 20 C0 2F
	jsr $415F.w		; 20 5F 41
	asl $02.b		; 06 02
	bit $F4.b		; 24 F4
	cpx #$C0F0.w		; E0 F0 C0
	bne -128.b		; D0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	inc $FF07.w		; EE 07 FF
	asl $FF.b		; 06 FF
	ora ($FF.b,X)		; 01 FF
	adc $FF.b,S		; 63 FF
	cmp $FF.b,S		; C3 FF
	txy		; 9B
	jsr ($0000.w,X)		; FC 00 00
	asl $7F0A.w		; 0E 0A 7F
	eor ($DF.b),Y		; 51 DF
	sta ($BF.b),Y		; 91 BF
	sta ($FF.b)		; 92 FF
	ora $20FF.w		; 0D FF 20
	ldy $0004.w,X		; BC 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E080.w		; C0 80 E0
	cpy #$A0E0.w		; C0 E0 A0
	beq   0.b		; F0 00
	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	bvc -16.b		; 50 F0
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	and $00FF00.l,X		; 3F 00 FF 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $1F.b		; 02 1F
	ora $FBCEFF.l,X		; 1F FF CE FB
	asl A		; 0A
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
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $0F0100.l		; 0F 00 01 0F
	ora [$3F.b]		; 07 3F
	asl $38FF.w,X		; 1E FF 38
	sbc $84FFE0.l,X		; FF E0 FF 84
	sbc $E30A.w,Y		; F9 0A E3
	tsb $87.b		; 04 87
	ora [$04.b]		; 07 04
	ora $407F10.l,X		; 1F 10 7F 40
	inc $F882.w,X		; FE 82 F8
	php		; 08
	inc $20.b		; E6 20
	stz $1A10.w		; 9C 10 1A
	ora ($E0.b)		; 12 E0
	jsr ($F780.w,X)		; FC 80 F7
	brk $F8.b		; 00 F8
	ora [$87.b]		; 07 87
	sty $4653.w		; 8C 53 46
	and ($23.b),Y		; 31 23
	bpl   0.b		; 10 00
	bpl  -8.b		; 10 F8
	phd		; 0B
	cpx #$802F.w		; E0 2F 80
	lda $8C7F00.l,X		; BF 00 7F 8C
	lda $DECE.w,X		; BD CE DE
	sbc $EFEFEF.l		; EF EF EF EF
	ora $4D.b,X		; 15 4D
	sec		; 38
	lda $787A.w,X		; BD 7A 78
	jsr ($7CFC.w,X)		; FC FC 7C
	stz $ECDC.w		; 9C DC EC
	pla		; 68
	pea $F870.w		; F4 70 F8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bpl  -1.b		; 10 FF
	sec		; 38
	sbc $C0FF08.l,X		; FF 08 FF C0
	inc $7C60.w,X		; FE 60 7C
	rts		; 60

	jmp ($0439.w,X)		; 7C 39 04
	adc ($09.b)		; 72 09
	inc $11.b		; E6 11
	cpy $9922.w		; CC 22 99
	mvp $88,$33		; 44 33 88
	rol $11.b		; 26 11
	tsb $0002.w		; 0C 02 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $203F00.l,X		; FF 00 3F 20
	bcc 104.b		; 90 68
	bpl  72.b		; 10 48
	jsr $20C8.w		; 20 C8 20
	tya		; 98
	rti		; 40

	bmi -120.b		; 30 88
	stz $10.b		; 64 10
	iny		; C8
	jsr $F800.w		; 20 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora ($3F.b,X)		; 01 3F
	ora $FF7CFF.l		; 0F FF 7C FF
	cpx #$00FC.w		; E0 FC 00
	cpx #$8000.w		; E0 00 80
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $407F08.l		; 0F 08 7F 40
	sbc $08F801.l,X		; FF 01 F8 08
	cpy #$0040.w		; C0 40 00
	brk $5F.b		; 00 5F
	eor ($18.b,X)		; 41 18
	eor $003F80.l,X		; 5F 80 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	cpx #$E707.w		; E0 07 E7
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ror $DE06.w,X		; 7E 06 DE
	sec		; 38
	brk $C2.b		; 00 C2
	bpl -124.b		; 10 84
	jsr $6004.w		; 20 04 60
	php		; 08
	cpy #$C008.w		; C0 08 C0
	bpl   4.b		; 10 04
	asl $00.b		; 06 00
	sei		; 78
	bit $783C.w,X		; 3C 3C 78
	sei		; 78
	sed		; F8
	sed		; F8
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	cpx #$2EE0.w		; E0 E0 2E
	ora ($5C.b,X)		; 01 5C
	ora $19.b,S		; 03 19
	lsr $92.b		; 46 92
	tsb $1844.w		; 0C 44 18
	iny		; C8
	bmi -48.b		; 30 D0
	jsr $2080.w		; 20 80 20
	asl $3C1E.w,X		; 1E 1E 3C
	bit $3838.w,X		; 3C 38 38
	bvs 112.b		; 70 70
	cpx #$C0E0.w		; E0 E0 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$40C0.w		; C0 C0 40
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
	brk $34.b		; 00 34
	plx		; FA
	adc $FE.b,S		; 63 FE
	cmp ($FE.b,X)		; C1 FE
	sta [$F8.b]		; 87 F8
	ora $F8.b,S		; 03 F8
	brk $8C.b		; 00 8C
	ora $15.b		; 05 15
	ora $7825.w		; 0D 25 78
	ora $FE.b,S		; 03 FE
	ora $EF16F4.l		; 0F F4 16 EF
	plp		; 28
	sta $7F0010.l,X		; 9F 10 00 7F
	ora $FF.b		; 05 FF
	ora $FF.b		; 05 FF
	rti		; 40

	jsr $4000.w		; 20 00 40
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	bvc  83.b		; 50 53
	eor $008040.l,X		; 5F 40 80 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	rti		; 40

	bra -128.b		; 80 80
	eor $E05FE3.l		; 4F E3 5F E0
	asl $FF.b		; 06 FF
	sec		; 38
	sbc $80FFE0.l,X		; FF E0 FF 80
	jsr ($8000.w,X)		; FC 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	and $00FF20.l,X		; 3F 20 FF 00
	sbc $18F803.l,X		; FF 03 F8 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $FF.b		; 00 FF
	brk $EF.b		; 00 EF
	brk $87.b		; 00 87
	ora ($07.b,X)		; 01 07
	cop $0F.b		; 02 0F
	tsb $3F.b		; 04 3F
	clc		; 18
	sbc $F3FE70.l,X		; FF 70 FE F3
	and ($C1.b,S),Y		; 33 C1
	eor ($03.b,X)		; 41 03
	cop $07.b		; 02 07
	tsb $0F.b		; 04 0F
	php		; 08
	ora $427E11.l,X		; 1F 11 7E 42
	jsr ($0C05.w,X)		; FC 05 0C
	and $307E18.l,X		; 3F 18 7E 30
	jsr ($F820.w,X)		; FC 20 F8
	rti		; 40

	beq -128.b		; F0 80
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	asl $3C00.w,X		; 1E 00 3C
	tsb $78.b		; 04 78
	php		; 08
	bvs  16.b		; 70 10
	rts		; 60

	jsr $40C0.w		; 20 C0 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	brk $0C.b		; 00 0C
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	asl $000E.w		; 0E 0E 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	stz $F208.w		; 9C 08 F2
	jmp.w [$1021]		; DC 21 10
	ora ($00.b,X)		; 01 00
	jsl $204401.l		; 22 01 44 20
	txs		; 9A
	stz $12.b		; 64 12
	adc $63.b,S		; 63 63
	ora $DE0D.w		; 0D 0D DE
	dec $FEFE.w,X		; DE FE FE
	jmp.w [$98DD]		; DC DD 98
	tyx		; BB
	brk $67.b		; 00 67
	brk $FF.b		; 00 FF
	rts		; 60

	beq  32.b		; F0 20
	cpx #$A000.w		; E0 00 A0
	bra -64.b		; 80 C0
	rti		; 40

	cpy #$6020.w		; C0 20 60
	bra  32.b		; 80 20
	bra  64.b		; 80 40
	jsr $0078.w		; 20 78 00
	bvs   0.b		; 70 00
	bvs -128.b		; 70 80
	cpx #$E040.w		; E0 40 E0
	jsr $00E0.w		; 20 E0 00
	cpx #$E000.w		; E0 00 E0
	ora ($24.b,X)		; 01 24
	phd		; 0B
	sec		; 38
	trb $30.b		; 14 30
	ora $602F60.l		; 0F 60 2F 60
	rol $1F60.w,X		; 3E 60 1F
	eor ($5C.b,X)		; 41 5C
	cmp ($00.b,X)		; C1 00
	ora $0C1710.l,X		; 1F 10 17 0C
	ora $3F.b,S		; 03 3F
	jsr $001F.w		; 20 1F 00
	ora $407E00.l,X		; 1F 00 7E 40
	and $409001.l,X		; 3F 01 90 40
	brk $80.b		; 00 80
	bmi  56.b		; 30 38
	brk $4C.b		; 00 4C
	dey		; 88
	cpy $C410.w		; CC 10 C4
	trb $18C6.w		; 1C C6 18
	rep #$00		; C2 00
	jsr ($F800.w,X)		; FC 00 F8
	brk $C0.b		; 00 C0
	clv		; B8
	php		; 08
	bmi   0.b		; 30 00
	jsr ($78C4.w,X)		; FC C4 78
	rti		; 40

	jmp ($0140.w,X)		; 7C 40 01
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	cop $03.b		; 02 03
	asl $03.b		; 06 03
	asl $01.b		; 06 01
	tsb $1C05.w		; 0C 05 1C
	phd		; 0B
	sec		; 38
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora $04.b		; 05 04
	ora [$04.b]		; 07 04
	phd		; 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora $0F.b,S		; 03 0F
	tsb $1F.b		; 04 1F
	php		; 08
	rol $7800.w,X		; 3E 00 78
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $041C01.l		; 0F 01 1C 04
	jsr $4020.w		; 20 20 40
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $D0.b,S		; 23 D0
	lda [$4F.b]		; A7 4F
	and [$CF.b]		; 27 CF
	rti		; 40

	sta $002080.l,X		; 9F 80 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	and $B737B7.l		; 2F B7 37 B7
	lda [$60.b],Y		; B7 60
	adc $00DFC0.l		; 6F C0 DF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $73.b		; 00 73
	jsr ($FFFD.w,X)		; FC FD FF
	sbc $00FF.w,X		; FD FF 00
	sta $00.b,S		; 83 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $F8FFF1.l,X		; FF F1 FF F8
	sbc $00FF00.l,X		; FF 00 FF 00
	sta $00.b,S		; 83 00
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
	cpy #$E080.w		; C0 80 E0
	cpy #$C0F0.w		; C0 F0 C0
	beq   0.b		; F0 00
	cpx #$0000.w		; E0 00 00
	ora ($03.b,X)		; 01 03
	cop $03.b		; 02 03
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	php		; 08
	tsb $1C08.w		; 0C 08 1C
	bpl  24.b		; 10 18
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	cop $02.b		; 02 02
	tsb $00.b		; 04 00
	tsb $04.b		; 04 04
	tsb $0804.w		; 0C 04 08
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	sec		; 38
	jsr $2038.w		; 20 38 20
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	jsr $2000.w		; 20 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	php		; 08
	bmi   0.b		; 30 00
	bmi  16.b		; 30 10
	jsr $2000.w		; 20 00 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	tsb $00.b		; 04 00
	tsb $0C08.w		; 0C 08 0C
	tsb $18.b		; 04 18
	bpl  24.b		; 10 18
	php		; 08
	bpl  56.b		; 10 38
	bpl  56.b		; 10 38
	bmi  48.b		; 30 30
	jsr $2030.w		; 20 30 20
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	jsr $2000.w		; 20 00 20
	bmi  32.b		; 30 20
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi  16.b		; 30 10
	jsr $2000.w		; 20 00 20
	jsr $0000.w		; 20 00 00
	clc		; 18
	and ($18.b,X)		; 21 18
	jsl $500210.l		; 22 10 02 50
	tsb $40.b		; 04 40
	tsb $10.b		; 04 10
	rti		; 40

	bpl   8.b		; 10 08
	bpl   8.b		; 10 08
	asl $1C1E.w,X		; 1E 1E 1C
	trb $3C3C.w		; 1C 3C 3C
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bpl  64.b		; 10 40
	clc		; 18
	mvp $40,$08		; 44 08 40
	mvp $62,$02		; 44 02 62
	ora ($19.b,X)		; 01 19
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $38.b		; 00 38
	sec		; 38
	sec		; 38
	sec		; 38
	bit $3C3C.w,X		; 3C 3C 3C
	bit $1E1E.w,X		; 3C 1E 1E
	ora [$07.b]		; 07 07
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $04.b		; 00 04
	ora ($1C.b,X)		; 01 1C
	ora $0D.b,S		; 03 0D
	cop $38.b		; 02 38
	cop $4A.b		; 02 4A
	tsb $14.b		; 04 14
	php		; 08
	tay		; A8
	brk $68.b		; 00 68
	bcc  14.b		; 90 0E
	asl $0C0C.w		; 0E 0C 0C
	trb $1C1C.w		; 1C 1C 1C
	trb $3838.w		; 1C 38 38
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora ($00.b,X)		; 01 00
	asl A		; 0A
	brk $16.b		; 00 16
	ora #$112E.w		; 09 2E 11
	and $2100.w		; 2D 00 21
	ora ($1E.b)		; 12 1E
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	ora [$07.b]		; 07 07
	ora [$06.b]		; 07 06
	asl $0E.b		; 06 0E
	asl $1E1E.w		; 0E 1E 1E
	tsb $000C.w		; 0C 0C 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	asl $02.b		; 06 02
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stp		; DB
	sta ($FF.b)		; 92 FF
	ora $FF3F7F.l,X		; 1F 7F 3F FF
	adc ($FF.b)		; 72 FF
	sty $FF.b		; 84 FF
	sty $FF.b		; 84 FF
	tsa		; 3B
	inc $0000.w		; EE 00 00
	stp		; DB
	brk $BF.b		; 00 BF
	sta ($7F.b)		; 92 7F
	tas		; 1B
	xce		; FB
	jsr $00B1.w		; 20 B1 00
	cpy $00.b		; C4 00
	bra  32.b		; 80 20
	ora $0D.b		; 05 0D
	ora $0D.b		; 05 0D
	tsb $1E.b		; 04 1E
	tsb $0C1E.w		; 0C 1E 0C
	asl $1E0C.w,X		; 1E 0C 1E
	tsb $0C1E.w		; 0C 1E 0C
	asl $0B0D.w,X		; 1E 0D 0B
	ora $0E03.w		; 0D 03 0E
	ora ($0E.b,X)		; 01 0E
	brk $1E.b		; 00 1E
	ora ($1E.b)		; 12 1E
	cop $1E.b		; 02 1E
	cop $1E.b		; 02 1E
	ora ($E0.b)		; 12 E0
	cpx #$E080.w		; E0 80 E0
	ora ($C0.b,X)		; 01 C0
	cop $00.b		; 02 00
	tsb $01.b		; 04 01
	ora ($02.b,X)		; 01 02
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	ldy #$00F0.w		; A0 F0 00
	sbc ($00.b),Y		; F1 00
	sbc $00.b,S		; E3 00
	cmp [$00.b]		; C7 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$3E.b]		; 07 3E
	bit $399C.w		; 2C 9C 39
	ora ($53.b),Y		; 11 53
	eor ($8B.b,X)		; 41 8B
	ldy #$200A.w		; A0 0A 20
	lsr A		; 4A
	pha		; 48
	sta ($4A.b)		; 92 4A
	sta ($04.b),Y		; 91 04
	sbc $00FE08.l,X		; FF 08 FE 00
	sbc $FF00.w,X		; FD 00 FF
	ora ($FF.b,X)		; 01 FF
	ora ($FD.b,X)		; 01 FD
	ora ($FD.b,X)		; 01 FD
	brk $FC.b		; 00 FC
	php		; 08
	cpy $C8.b		; C4 C8
	cpx $C8.b		; E4 C8
	cpx $CC.b		; E4 CC
	bpl -60.b		; 10 C4
	bpl -28.b		; 10 E4
	bpl -32.b		; 10 E0
	brk $60.b		; 00 60
	php		; 08
	brk $3C.b		; 00 3C
	cpy #$C0FC.w		; C0 FC C0
	jsr ($ECE0.w,X)		; FC E0 EC
	cpx #$E0EC.w		; E0 EC E0
	cpx $FCF0.w		; EC F0 FC
	beq -12.b		; F0 F4
	ora [$1F.b]		; 07 1F
	phd		; 0B
	ora $143F09.l,X		; 1F 09 3F 14
	tsa		; 3B
	ora ($7D.b)		; 12 7D
	jsr $2078.w		; 20 78 20
	beq  64.b		; F0 40
	sbc ($0F.b,S),Y		; F3 0F
	ora $1B.b,S		; 03 1B
	ora [$19.b],Y		; 17 19
	ora [$38.b]		; 07 38
	and $38.b,S		; 23 38
	ora #$4373.w		; 09 73 43
	adc ($13.b,S),Y		; 73 13
	cpx #$5E80.w		; E0 80 5E
	lda ($BC.b,X)		; A1 BC
	cmp $D5.b,S		; C3 D5
.ACCU 8
.INDEX 8
	sep #$F5		; E2 F5
	sbc ($BF.b)		; F2 BF
	adc $1B1F6F.l,X		; 7F 6F 1F 1B
	ora [$2E.b]		; 07 2E
	sbc $A31C.w,Y		; F9 1C A3
	sty $C8D3.w		; 8C D3 C8
	sbc [$F8.b]		; E7 F8
	inc $1F.b,X		; F6 1F
	sbc $C1BF07.l,X		; FF 07 BF C1
	sbc $DF0328.l		; EF 28 03 DF
	beq  79.b		; F0 4F
	cpx #$1E.b		; E0 1E
	rts		; 60

	bit $3861.w,X		; 3C 61 38
	eor $30.b,S		; 43 30
	eor [$30.b]		; 47 30
	jmp ($3800.w,X)		; 7C 00 38
	cmp $00DF00.l		; CF 00 DF 00
	and $011F20.l,X		; 3F 20 1F 01
	rol $3C02.w,X		; 3E 02 3C
	tsb $08.b		; 04 08
	php		; 08
	brk $00.b		; 00 00
	bvc 108.b		; 50 6C
	jsr $4054.w		; 20 54 40
	ldy $B0.b		; A4 B0
	mvp $88,$40		; 44 40 88
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	iny		; C8
	pha		; 48
	tya		; 98
	tya		; 98
	sec		; 38
	sec		; 38
	bvs 112.b		; 70 70
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	tsb $02.b		; 04 02
	tsb $02.b		; 04 02
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($81.b,X)		; 01 81
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $46.b		; 00 46
	bra  64.b		; 80 40
	cpy #$20.b		; C0 20
	cpy #$20.b		; C0 20
	cpx #$10.b		; E0 10
	ora ($00.b,X)		; 01 00
	sta $80.b,S		; 83 80
	sta $80.b,S		; 83 80
	stx $80.b		; 86 80
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	brk $70.b		; 00 70
	jsr $10F8.w		; 20 F8 10
	cpy $EC88.w		; CC 88 EC
	cpy #$FC.b		; C0 FC
	brk $F8.b		; 00 F8
	bra  -8.b		; 80 F8
	rti		; 40

	beq   0.b		; F0 00
	brk $70.b		; 00 70
	brk $B8.b		; 00 B8
	bmi -40.b		; 30 D8
	bpl -24.b		; 10 E8
	bra  96.b		; 80 60
	brk $20.b		; 00 20
	bra  16.b		; 80 10
	bne -64.b		; D0 C0
	bvs  80.b		; 70 50
	beq  80.b		; F0 50
	sei		; 78
	bpl  88.b		; 10 58
	bpl -100.b		; 10 9C
	brk $8E.b		; 00 8E
	dey		; 88
	asl A		; 0A
	lsr A		; 4A
	phb		; 8B
	bpl  64.b		; 10 40
	bvc -64.b		; 50 C0
	bcc   0.b		; 90 00
	tya		; 98
	php		; 08
	clc		; 18
	brk $00.b		; 00 00
	rti		; 40

	php		; 08
	jsr ($FE0A.w,X)		; FC 0A FE
	asl $97.b,X		; 16 97
	ldy $3C0F.w		; AC 0F 3C
	and [$D8.b]		; 27 D8
	and [$E8.b],Y		; 37 E8
	cmp [$F0.b],Y		; D7 F0
	sbc $EDE0.w		; ED E0 ED
	cpx #$E8.b		; E0 E8
	asl $FE.b		; 06 FE
	php		; 08
	sed		; F8
	clc		; 18
	cpy #$0C.b		; C0 0C
	tsb $AC.b		; 04 AC
	cpx $D4.b		; E4 D4
	pea $F0F0.w		; F4 F0 F0
	bvs -16.b		; 70 F0
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora $07.b,S		; 03 07
	cop $07.b		; 02 07
	cop $0E.b		; 02 0E
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	asl $01.b		; 06 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	cop $07.b		; 02 07
	cop $0F.b		; 02 0F
	tsb $0F.b		; 04 0F
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	asl $00.b		; 06 00
	tsb $3309.w		; 0C 09 33
.ACCU 8
.INDEX 8
	sep #$BD		; E2 BD
	cpx #$BC.b		; E0 BC
	cpx #$18.b		; E0 18
	cpy #$0D.b		; C0 0D
	sbc ($02.b,X)		; E1 02
	sta ($00.b,S),Y		; 93 00
	asl $00A1.w		; 0E A1 00
	tsb $AE31.w		; 0C 31 AE
	jsr $009F.w		; 20 9F 00
	lda $A0BE0C.l,X		; BF 0C BE A0
	trb $1D30.w		; 1C 30 1D
	adc $6F1E.w,X		; 7D 1E 6F
	tsb $041E.w		; 0C 1E 04
	asl $0E04.w,X		; 1E 04 0E
	tsb $0E.b		; 04 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	asl $0E12.w,X		; 1E 12 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	php		; 08
	asl $04.b		; 06 04
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $06.b		; 00 06
	brk $0F.b		; 00 0F
	asl $0C.b		; 06 0C
	ora $301F18.l		; 0F 18 1F 30
	ora $603F20.l		; 0F 20 3F 60
	asl $0240.w,X		; 1E 40 02
	ora $07.b,S		; 03 07
	ora [$0B.b]		; 07 0B
	php		; 08
	ora [$00.b]		; 07 00
	ora $203F00.l		; 0F 00 3F 20
	ora $407F00.l,X		; 1F 00 7F 40
	dex		; CA
	ora ($4D.b),Y		; 11 4D
	brk $05.b		; 00 05
	bra   8.b		; 80 08
	bvc  76.b		; 50 4C
	bvs  72.b		; 70 48
	bvs -128.b		; 70 80
	beq  32.b		; F0 20
	bne   0.b		; D0 00
	jsr ($FE00.w,X)		; FC 00 FE
	brk $7E.b		; 00 7E
	bra  39.b		; 80 27
	ldy #$20.b		; A0 20
	bra   0.b		; 80 00
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	bvs   8.b		; 70 08
	bmi -128.b		; 30 80
	bmi -124.b		; 30 84
	tya		; 98
	mvp $04,$D8		; 44 D8 04
	pha		; 48
	jsr $0228.w		; 20 28 02
	bit $F012.w		; 2C 12 F0
	beq 120.b		; F0 78
	sei		; 78
	sei		; 78
	sei		; 78
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	trb $1C1C.w		; 1C 1C 1C
	trb $0C0C.w		; 1C 0C 0C
	eor ($E2.b,X)		; 41 E2
	bra -26.b		; 80 E6
	stx $CF.b		; 86 CF
	asl $3DCF.w,X		; 1E CF 3D
	stz $BC7A.w,X		; 9E 7A BC
	sed		; F8
	bvs -32.b		; 70 E0
	cpx #$E1.b		; E0 E1
	and ($C1.b,X)		; 21 C1
	ora $C2.b		; 05 C2
	lsr $1F84.w		; 4E 84 1F
	dey		; 88
	lda $607F30.l,X		; BF 30 7F 60
	jsr ($F0E0.w,X)		; FC E0 F0
	ora $243E.w,Y		; 19 3E 24
	adc $FFFF18.l,X		; 7F 18 FF FF
	adc $3D7F3E.l,X		; 7F 3E 7F 3D
	ror $391F.w,X		; 7E 1F 39
	and $C8D056.l,X		; 3F 56 D0 C8
	bra -68.b		; 80 BC
	clc		; 18
	adc $1CFF1C.l,X		; 7F 1C FF 1C
	sbc $10FF18.l,X		; FF 18 FF 10
	adc $90FF02.l,X		; 7F 02 FF 90
	pla		; 68
	beq   0.b		; F0 00
	rts		; 60

	bra  64.b		; 80 40
	bra -128.b		; 80 80
	rts		; 60

	ldy #$C0.b		; A0 C0
	pha		; 48
	bra  72.b		; 80 48
	tsb $00.b		; 04 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $BC.b		; 00 BC
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	rti		; 40

	cpx #$40.b		; E0 40
	beq  32.b		; F0 20
	beq   0.b		; F0 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpx #$80.b		; E0 80
	bvs  16.b		; 70 10
	jsr $1078.w		; 20 78 10
	sei		; 78
	bpl  56.b		; 10 38
	clc		; 18
	bit $1C08.w,X		; 3C 08 1C
	php		; 08
	trb $1E0C.w		; 1C 0C 1E
	tsb $0E.b		; 04 0E
	bvs  64.b		; 70 40
	sec		; 38
	php		; 08
	sec		; 38
	jsr $0018.w		; 20 18 00
	trb $1C04.w		; 1C 04 1C
	bpl  12.b		; 10 0C
	brk $0E.b		; 00 0E
	cop $04.b		; 02 04
	asl $0E06.w		; 0E 06 0E
	asl $07.b		; 06 07
	cop $07.b		; 02 07
	cop $07.b		; 02 07
	cop $07.b		; 02 07
	cop $07.b		; 02 07
	cop $03.b		; 02 03
	asl $0608.w		; 0E 08 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	ora $03.b		; 05 03
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cop $04.b		; 02 04
	asl $04.b		; 06 04
	asl $03.b		; 06 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	cop $06.b		; 02 06
	cop $04.b		; 02 04
	brk $98.b		; 00 98
	mvp $44,$18		; 44 18 44
	jmp $025C02.l		; 5C 02 5C 02
	rts		; 60

	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	bit $3C3C.w,X		; 3C 3C 3C
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phd		; 0B
	ora ($03.b,X)		; 01 03
	ora ($06.b,X)		; 01 06
	and [$2E.b]		; 27 2E
	eor $0F4F2F.l		; 4F 2F 4F 0F
	eor $004F16.l		; 4F 16 4F 00
	mvp $07,$01		; 44 01 07
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	bit $3E.b		; 24 3E
	rol $3F.b		; 26 3F
	and [$3F.b]		; 27 3F
	and ($3E.b)		; 32 3E
	bmi  63.b		; 30 3F
	asl $6B80.w,X		; 1E 80 6B
	sei		; 78
	adc $F41C.w,X		; 7D 1C F4
	sty $8D3D.w		; 8C 3D 8D
	jmp $2408C5.l		; 5C C5 08 24
	clc		; 18
	sty $E100.w		; 8C 00 E1
	brk $8C.b		; 00 8C
	sbc #$0E.b		; E9 0E
	adc ($06.b),Y		; 71 06
	pea $3886.w		; F4 86 38
	asl $D8.b		; 06 D8
.ACCU 16
.INDEX 16
	rep #$70		; C2 70
	adc ($31.b)		; 72 31
	asl $003C.w		; 0E 3C 00
	and $00.b,S		; 23 00
	bit $1303.w,X		; 3C 03 13
	bit $E07E.w		; 2C 7E E0
	jmp $11F800.l		; 5C 00 F8 11
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1C.b		; 00 1C
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	cpx #$E00F.w		; E0 0F E0
	ora [$63.b]		; 07 63
	bit $A3.b		; 24 A3
	mvp $84,$43		; 44 43 84
	sta $04.b,S		; 83 04
	ora [$28.b]		; 07 28
	and [$48.b]		; 27 48
	adc $84.b,S		; 63 84
	sbc $0002.w,Y		; F9 02 00
	ldx $5E00.w,Y		; BE 00 5E
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $F7.b		; 00 F7
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	cop $1F.b		; 02 1F
	tsb $3E.b		; 04 3E
	php		; 08
	jmp ($7C18.w,X)		; 7C 18 7C
	sec		; 38
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	asl $1C08.w		; 0E 08 1C
	bpl  56.b		; 10 38
	jsr $4078.w		; 20 78 40
	jmp ($0004.w,X)		; 7C 04 00
	asl $00.b		; 06 00
	sed		; F8
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -112.b		; F0 90
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	.db $42, $18		; 42 18
	cop $18.b		; 02 18
	jsl $0A200A.l		; 22 0A 20 0A
	brk $02.b		; 00 02
	bpl   0.b		; 10 00
	ora ($04.b)		; 12 04
	ora ($3C.b,S),Y		; 13 3C
	bit $3C3C.w,X		; 3C 3C 3C
	trb $1C1C.w		; 1C 1C 1C
	trb $1C1C.w		; 1C 1C 1C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0C0C.w		; 0C 0C 0C
	rts		; 60

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	php		; 08
	pha		; 48
	trb $8A.b		; 14 8A
	sty $53.b,X		; 94 53
	inc $07.b		; E6 07
	eor $008000.l		; 4F 00 80 00
	brk $E0.b		; 00 E0
	jsr $10F0.w		; 20 F0 10
	inx		; E8
	php		; 08
	pla		; 68
	asl A		; 0A
	clc		; 18
	tas		; 1B
	rol $37.b,X		; 36 37
	ora [$FF.b]		; 07 FF
	cmp $2F.b,S		; C3 2F
	cmp $23.b		; C5 23
.INDEX 8
	sep #$11		; E2 11
	brk $10.b		; 00 10
	cpx #$10.b		; E0 10
	bcs   8.b		; B0 08
	ldy #$0C.b		; A0 0C
	ora $0F.b,S		; 03 0F
	cmp ($DF.b,X)		; C1 DF
	cpy #$CF.b		; C0 CF
	cpx #$E7.b		; E0 E7
	cpx #$E1.b		; E0 E1
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	brk $07.b		; 00 07
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	rts		; 60

	brk $60.b		; 00 60
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	rts		; 60

	rti		; 40

	rts		; 60

	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $101E00.l		; 0F 00 1E 10
	bit $3800.w,X		; 3C 00 38
	brk $70.b		; 00 70
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $1804.w		; 0C 04 18
	php		; 08
	bmi  16.b		; 30 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	ora [$7F.b]		; 07 7F
	rol $E0FF.w,X		; 3E FF E0
	sbc $00F000.l,X		; FF 00 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	asl $3F.b		; 06 3F
	jsr $80FF.w		; 20 FF 80
	inc $C006.w,X		; FE 06 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	ora $FFFF07.l		; 0F 07 FF FF
	sbc $00FFC0.l,X		; FF C0 FF 00
	sbc $008000.l,X		; FF 00 80 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $7F.b,S		; 03 7F
	rts		; 60

	sbc $03FF00.l,X		; FF 00 FF 03
	cpx #$60.b		; E0 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	ora $FFFCFF.l,X		; 1F FF FC FF
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $80FF0F.l		; 0F 0F FF 80
	sbc $0FFF00.l,X		; FF 00 FF 0F
	sbc $0000F0.l,X		; FF F0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	ora $FFFFFF.l,X		; 1F FF FF FF
	brk $FF.b		; 00 FF
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	jsr ($FF0C.w,X)		; FC 0C FF
	adc $FF80FF.l,X		; 7F FF 80 FF
	brk $1F.b		; 00 1F
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpy #$F8.b		; C0 F8
	beq  -4.b		; F0 FC
	sec		; 38
	inc $FE18.w,X		; FE 18 FE
	php		; 08
	ror $1C00.w,X		; 7E 00 1C
	brk $1C.b		; 00 1C
	bra -128.b		; 80 80
	beq  16.b		; F0 10
	sed		; F8
	php		; 08
	jsr ($FC04.w,X)		; FC 04 FC
	cpy #$3C.b		; C0 3C
	jsr $040C.w		; 20 0C 04
	php		; 08
	php		; 08
	ora ($23.b,X)		; 01 23
	ora $17.b,S		; 03 17
	and [$0F.b]		; 27 0F
	sta $FEFC7F.l,X		; 9F 7F FC FE
	cmp $F0.b,S		; C3 F0
	ora [$00.b]		; 07 00
	ora [$09.b]		; 07 09
	clc		; 18
	ora $030F01.l,X		; 1F 01 0F 03
	and $F8FF1E.l,X		; 3F 1E FF F8
	sbc $00FC00.l,X		; FF 00 FC 00
	sbc ($01.b),Y		; F1 01
	ora $E5C8.w		; 0D C8 E5
	cpy #$E4.b		; C0 E4
	cpy #$E2.b		; C0 E2
	asl $7E9E.w		; 0E 9E 7E
	asl $7FFF.w,X		; 1E FF 7F
	sbc $80BAC0.l,X		; FF C0 BA 80
	tya		; 98
	phx		; DA
	sta $80FB.w,Y		; 99 FB 80
	sbc $1EFF00.l,X		; FF 00 FF 1E
	sbc $80FF78.l,X		; FF 78 FF 80
	cpy #$00.b		; C0 00
	sbc $F3.b,X		; F5 F3
	clc		; 18
	cmp [$18.b],Y		; D7 18
	and [$38.b]		; 27 38
	bra -16.b		; 80 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inx		; E8
	tsb $08E8.w		; 0C E8 08
	bne  16.b		; D0 10
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $FF80.w,X		; 7D 80 FF
	brk $C0.b		; 00 C0
	and $010F6F.l		; 2F 6F 0F 01
	and ($15.b),Y		; 31 15
	and ($0D.b),Y		; 31 0D
	and ($2D.b,X)		; 21 2D
	and ($00.b,X)		; 21 00
	sbc ($00.b,S),Y		; F3 00
	bvs  15.b		; 70 0F
	and $1E1000.l,X		; 3F 00 10 1E
	bpl  14.b		; 10 0E
	brk $3E.b		; 00 3E
	jsr $001E.w		; 20 1E 00
	sec		; 38
	sbc $0EFF1C.l,X		; FF 1C FF 0E
	adc $003F00.l,X		; 7F 00 3F 00
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	ora $7F.b,S		; 03 7F
	rti		; 40

	and $0E0F21.l,X		; 3F 21 0F 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	ora $FF3CFF.l		; 0F FF 3C FF
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $81FFE0.l,X		; FF E0 FF 81
	jsr ($001C.w,X)		; FC 1C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	rti		; 40

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $7D.b		; 00 7D
	rti		; 40

	sbc $1BBF98.l,X		; FF 98 BF 1B
	sbc $20FF39.l,X		; FF 39 FF 20
	sbc $5FFF4A.l,X		; FF 4A FF 5F
	sbc [$00.b]		; E7 00
	brk $75.b		; 00 75
	ora $DF.b,X		; 15 DF
	.db $42, $BF		; 42 BF
	ora ($7F.b,X)		; 01 7F
	brk $7F.b		; 00 7F
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	sbc $C8FF03.l,X		; FF 03 FF C8
	sbc ($EC.b,S),Y		; F3 EC
	sbc $F3E8.w,Y		; F9 E8 F3
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	jsr $C0FE.w		; 20 FE C0
	rol $0000.w,X		; 3E 00 00
	cmp ($50.b,S),Y		; D3 50
	sbc $FF1C.w,X		; FD 1C FF
	stx $CCFD.w		; 8E FD CC
	sbc ($00.b,S),Y		; F3 00
	inx		; E8
	dey		; 88
	plp		; 28
	brk $28.b		; 00 28
	sty $8C00.w		; 8C 00 8C
	rti		; 40

	cpy $FC32.w		; CC 32 FC
	cop $FC.b		; 02 FC
	sbc $7DFE.w,Y		; F9 FE 7D
	ror $4310.w,X		; 7E 10 43
	bvs   0.b		; 70 00
	sei		; 78
	php		; 08
	sec		; 38
	php		; 08
	pha		; 48
	pha		; 48
	bmi  48.b		; 30 30
	jsr $30FF.w		; 20 FF 30
	adc $183C3C.l,X		; 7F 3C 3C 18
	eor ($0C.b,X)		; 41 0C
	jsr $200C.w		; 20 0C 20
	asl $10.b		; 06 10
	asl $10.b		; 06 10
	asl $00.b		; 06 00
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	rol $1F3E.w,X		; 3E 3E 1F
	ora $0F1F1F.l,X		; 1F 1F 1F 0F
	ora $0F0F0F.l		; 0F 0F 0F 0F
	ora $070707.l		; 0F 07 07 07
	ora [$00.b]		; 07 00
	brk $1E.b		; 00 1E
	brk $3F.b		; 00 3F
	asl $1737.w,X		; 1E 37 17
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	tsb $063F.w		; 0C 3F 06
	and $001F01.l,X		; 3F 01 1F 00
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	brk $50.b		; 00 50
	ora $28.b,S		; 03 28
	asl $68.b		; 06 68
	tsb $64.b		; 04 64
	brk $52.b		; 00 52
	brk $73.b		; 00 73
	brk $29.b		; 00 29
	brk $B5.b		; 00 B5
	brk $0C.b		; 00 0C
	ldy $D000.w		; AC 00 D0
	brk $D0.b		; 00 D0
	brk $D8.b		; 00 D8
	brk $EC.b		; 00 EC
	brk $EC.b		; 00 EC
	brk $F6.b		; 00 F6
	brk $7A.b		; 00 7A
	stz $9800.w,X		; 9E 00 98
	brk $90.b		; 00 90
	brk $00.b		; 00 00
	cpx #$E000.w		; E0 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$8080.w		; C0 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	bra  -4.b		; 80 FC
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora $427E0D.l		; 0F 0D 7E 42
	beq  48.b		; F0 30
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $1F.b,S		; 03 1F
	tsb $00FF.w		; 0C FF 00
	sed		; F8
	brk $E0.b		; 00 E0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	ora $02.b,S		; 03 02
	ora $233F08.l		; 0F 08 3F 23
	beq  16.b		; F0 10
	rts		; 60

	jsr $0080.w		; 20 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	ora $0C.b		; 05 0C
	ora [$10.b]		; 07 10
	ora $401F20.l		; 0F 20 1F 40
	jmp ($72C0.w,X)		; 7C C0 72
	cmp $00.b,S		; C3 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3D.b		; 00 3D
	ora ($39.b,X)		; 01 39
	ror $7E01.w,X		; 7E 01 7E
	jsl $884444.l		; 22 44 44 88
	php		; 08
	bcc  16.b		; 90 10
	ldy #$00E0.w		; A0 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	sec		; 38
	bvs 112.b		; 70 70
	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$FE80.w		; C0 80 FE
	dec $F8DC.w		; CE DC F8
	sec		; 38
	beq  48.b		; F0 30
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	dec $58FE.w		; CE FE 58
	jsr ($F830.w,X)		; FC 30 F8
	brk $F0.b		; 00 F0
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	brk $08.b		; 00 08
	ora [$00.b]		; 07 00
	asl $10.b		; 06 10
	tsb $1921.w		; 0C 21 19
	.db $42, $32		; 42 32
	sty $FC.b		; 84 FC
	brk $07.b		; 00 07
	ora [$07.b]		; 07 07
	ora [$0F.b]		; 07 0F
	ora $1E0F0F.l		; 0F 0F 0F 1E
	asl $3C3C.w,X		; 1E 3C 3C
	sei		; 78
	sei		; 78
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $68.b		; 00 68
	cmp ($19.b),Y		; D1 19
	eor ($1F.b),Y		; 51 1F
	ora ($0A.b),Y		; 11 0A
	bit $05.b		; 24 05
	ora ($02.b),Y		; 11 02
	ora [$01.b]		; 07 01
	brk $01.b		; 00 01
	brk $46.b		; 00 46
	ora $1126.w,Y		; 19 26 11
	and [$11.b],Y		; 37 11
	ora $020E04.l,X		; 1F 04 0E 02
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	bcc  88.b		; 90 58
	bcc  72.b		; 90 48
	bcc  32.b		; 90 20
	lsr $8160.w,X		; 5E 60 81
	cpy #$8063.w		; C0 63 80
	sed		; F8
	bne -26.b		; D0 E6
	clv		; B8
	bvs -128.b		; 70 80
	jsr $4000.w		; 20 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	asl $7F00.w,X		; 1E 00 7F
	bra  -9.b		; 80 F7
	jsr $00F9.w		; 20 F9 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $0A.b		; 00 0A
	beq  39.b		; F0 27
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($F800.w,X)		; FC 00 F8
	brk $F0.b		; 00 F0
	ply		; 7A
	eor $38.b,S		; 43 38
	sta $3C.b,S		; 83 3C
	stx $F4.b		; 86 F4
	stx $F0.b		; 86 F0
	stx $F8.b		; 86 F8
	sty $0C68.w		; 8C 68 0C
	bvs  28.b		; 70 1C
	bit $7E00.w,X		; 3C 00 7E
	cop $FA.b		; 02 FA
	.db $82, $78, $00		; 82 78 00
	jmp ($7404.w,X)		; 7C 04 74
	tsb $F0.b		; 04 F0
	brk $E8.b		; 00 E8
	php		; 08
	adc $453F45.l,X		; 7F 45 3F 45
	and $451F45.l,X		; 3F 45 1F 45
	rol $0A25.w,X		; 3E 25 0A
	and $3D02.w		; 2D 02 3D
	cop $39.b		; 02 39
	sec		; 38
	brk $78.b		; 00 78
	rti		; 40

	sec		; 38
	brk $38.b		; 00 38
	brk $19.b		; 00 19
	ora ($35.b,X)		; 01 35
	and $18.b		; 25 18
	clc		; 18
	tsb $04.b		; 04 04
	inx		; E8
	tsb $0CF8.w		; 0C F8 0C
	sed		; F8
	tsb $0CF8.w		; 0C F8 0C
	sed		; F8
	tsb $0878.w		; 0C 78 08
	pla		; 68
	php		; 08
	rts		; 60

	php		; 08
	pea $F404.w		; F4 04 F4
	tsb $F0.b		; 04 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	cop $0F.b		; 02 0F
	tsb $1F.b		; 04 1F
	tsb $183E.w		; 0C 3E 18
	ror $FC38.w,X		; 7E 38 FC
	bvs  -4.b		; 70 FC
	cpx #$C0F8.w		; E0 F8 C0
	beq  15.b		; F0 0F
	ora #$101E.w		; 09 1E 10
	rol $7C22.w,X		; 3E 22 7C
	rti		; 40

	jsr ($F884.w,X)		; FC 84 F8
	php		; 08
	beq  16.b		; F0 10
	cpx #$EE20.w		; E0 20 EE
	rti		; 40

	inc $20.b,X		; F6 20
	cmp $70.b,S		; C3 70
	cop $48.b		; 02 48
	and [$48.b],Y		; 37 48
	ora [$4D.b]		; 07 4D
	ora [$4F.b]		; 07 4F
	ora [$4D.b]		; 07 4D
	eor ($DC.b,X)		; 41 DC
	ora ($EC.b,X)		; 01 EC
	rti		; 40

	cpy $3530.w		; CC 30 35
	bmi  48.b		; 30 30
	and $30.b,X		; 35 30
	and [$30.b],Y		; 37 30
	and $30.b,X		; 35 30
	clc		; 18
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	bit $003E.w,X		; 3C 3E 00
	stz $6140.w		; 9C 40 61
	cpx #$E1C2.w		; E0 C2 E1
	brk $C3.b		; 00 C3
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	rti		; 40

	sbc $00FF00.l,X		; FF 00 FF 00
	sbc [$7C.b]		; E7 7C
	ora $8F3E.w,Y		; 19 3E 8F
	ora $5813.w		; 0D 13 58
	and $91.b,S		; 23 91
	ror $23.b		; 66 23
	cpy $8463.w		; CC 63 84
	cmp ($02.b,X)		; C1 02
	brk $9F.b		; 00 9F
	cop $CF.b		; 02 CF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	dey		; 88
	dec $9E04.w,X		; DE 04 9E
	tsb $1E.b		; 04 1E
	brk $1E.b		; 00 1E
	cpy #$983E.w		; C0 3E 98
	ror $3C.b		; 66 3C
.ACCU 16
.INDEX 16
	rep #$7E		; C2 7E
	sty $000C.w		; 8C 0C 00
	tsb $0E00.w		; 0C 00 0E
	cop $0E.b		; 02 0E
	php		; 08
	asl $F4.b		; 06 F4
	cop $FA.b		; 02 FA
	brk $F4.b		; 00 F4
	php		; 08
	dec $408E.w		; CE 8E 40
	sty $9C42.w		; 8C 42 9C
	.db $42, $9C		; 42 9C
	.db $42, $9C		; 42 9C
	.db $42, $5C		; 42 5C
	cop $4C.b		; 02 4C
	cop $4C.b		; 02 4C
	jsl $3C3E3C.l		; 22 3C 3E 3C
	bit $3C3C.w,X		; 3C 3C 3C
	bit $3C3C.w,X		; 3C 3C 3C
	bit $3C3C.w,X		; 3C 3C 3C
	bit $1C3C.w,X		; 3C 3C 1C
	trb $4498.w		; 1C 98 44
	clc		; 18
	mvp $04,$58		; 44 58 04
	pha		; 48
	tsb $48.b		; 04 48
	bit $48.b		; 24 48
	bit $08.b		; 24 08
	bit $28.b		; 24 28
	cop $38.b		; 02 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	trb $041C.w		; 1C 1C 04
	ora [$04.b]		; 07 04
	ora $080F04.l		; 0F 04 0F 08
	asl $1C08.w,X		; 1E 08 1C
	bpl  60.b		; 10 3C
	ora ($38.b,S),Y		; 13 38
	and $78.b		; 25 78
	asl $02.b		; 06 02
	asl $0E0A.w		; 0E 0A 0E
	cop $1C.b		; 02 1C
	bpl  28.b		; 10 1C
	tsb $38.b		; 04 38
	jsr $0838.w		; 20 38 08
	bvs  67.b		; 70 43
	brk $3B.b		; 00 3B
	ora ($7F.b)		; 12 7F
	and $CF.b,S		; 23 CF
	eor [$DF.b]		; 47 DF
	asl $10FF.w		; 0E FF 10
	sbc $077F00.l,X		; FF 00 7F 07
	adc $0000.w,X		; 7D 00 00
	tsa		; 3B
	brk $77.b		; 00 77
	and ($6F.b)		; 32 6F
	and $5F.b,S		; 23 5F
	tsb $16.b		; 04 16
	brk $58.b		; 00 58
	rti		; 40

	bvc   4.b		; 50 04
	brk $EE.b		; 00 EE
	mvp $E2,$FF		; 44 FF E2
	sbc $FDF1.w,Y		; F9 F1 FD
	cli		; 58
	sbc $90FF80.l,X		; FF 80 FF 90
	sbc $00DF68.l,X		; FF 68 DF 00
	brk $6E.b		; 00 6E
	brk $F7.b		; 00 F7
	lsr $FB.b		; 46 FB
	.db $62, $7D, $10		; 62 7D 10
	bit $8400.w		; 2C 00 84
	bpl   2.b		; 10 02
	inc A		; 1A
	adc [$C4.b]		; 67 C4
	ply		; 7A
	cmp ($78.b,X)		; C1 78
	cpy #$8030.w		; C0 30 80
	inc A		; 1A
	eor $04.b,S		; 43 04
	and [$41.b]		; 27 41
	trb $00E4.w		; 1C E4 00
	clc		; 18
	.db $62, $5C, $41		; 62 5C 41
	and $187F00.l,X		; 3F 00 7F 18
	jmp ($3840.w,X)		; 7C 40 38
	jsr $FB3A.w		; 20 3A FB
	clc		; 18
	stp		; DB
	jsr $1098.w		; 20 98 10
	cld		; D8
	bra  -8.b		; 80 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	bra  -4.b		; 80 FC
	dey		; 88
	jsr ($DC88.w,X)		; FC 88 DC
	bvs  96.b		; 70 60
	bcs  32.b		; B0 20
	bne   0.b		; D0 00
	iny		; C8
	php		; 08
	pha		; 48
	php		; 08
	bit $0CA4.w		; 2C A4 0C
	bra -116.b		; 80 8C
	bra -45.b		; 80 D3
	tsb $18A7.w		; 0C A7 18
	eor [$3B.b]		; 47 3B
	brk $CC.b		; 00 CC
	adc ($8D.b),Y		; 71 8D
	adc $8D.b,X		; 75 8D
	ror $8C.b,X		; 76 8C
	and ($8D.b)		; 32 8D
	bra  63.b		; 80 3F
	brk $7C.b		; 00 7C
	ora ($C3.b,X)		; 01 C3
	bmi  55.b		; 30 37
	bvs 119.b		; 70 77
	bvs 119.b		; 70 77
	bvs 119.b		; 70 77
	bvs 118.b		; 70 76
	tsb $89.b		; 04 89
	php		; 08
	adc ($C8.b),Y		; 71 C8
	bpl -64.b		; 10 C0
	bmi   0.b		; 30 00
	beq -56.b		; F0 C8
	sbc ($98.b)		; F2 98
	sbc #$9879.w		; E9 79 98
	bvs 118.b		; 70 76
	bra -116.b		; 80 8C
	cpx #$C0EC.w		; E0 EC C0
	cld		; D8
	brk $18.b		; 00 18
	brk $FC.b		; 00 FC
	asl A		; 0A
	inc $FF13.w,X		; FE 13 FF
	brk $23.b		; 00 23
	cop $25.b		; 02 25
	trb $0821.w		; 1C 21 08
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($1C.b,X)		; 01 1C
	trb $1818.w		; 1C 18 18
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	rts		; 60

	php		; 08
	ldy #$A088.w		; A0 88 A0
	dey		; 88
	bvs  -8.b		; 70 F8
	bvs  -8.b		; 70 F8
	beq  -8.b		; F0 F8
	pea $94F8.w		; F4 F8 94
	dey		; 88
	sed		; F8
	php		; 08
	sei		; 78
	php		; 08
	bvs   0.b		; 70 00
	bra -128.b		; 80 80
	cpx #$60F0.w		; E0 F0 60
	sed		; F8
	rts		; 60

	jsr ($FC70.w,X)		; FC 70 FC
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	jsr ($00FF.w,X)		; FC FF 00
	sbc $C0FE01.l,X		; FF 01 FE C0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $04FC01.l,X		; FF 01 FC 04
	sec		; 38
	sec		; 38
	ora $4E.b,S		; 03 4E
	brk $76.b		; 00 76
	inc A		; 1A
	lda [$46.b]		; A7 46
	lda $1FBF0F.l		; AF 0F BF 1F
	sta $BB4FB7.l		; 8F B7 4F BB
	ora [$32.b],Y		; 17 32
	bmi   9.b		; 30 09
	ora #$1A58.w		; 09 58 1A
	bvc  22.b		; 50 16
	lsr $0F.b		; 46 0F
	adc [$7F.b]		; 67 7F
	stx $9F.b		; 86 9F
	bvc  95.b		; 50 5F
	sta ($80.b,X)		; 81 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	bra -61.b		; 80 C3
	brk $81.b		; 00 81
	brk $80.b		; 00 80
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $0C0E.w		; 8D 0E 0C
	adc $FC05.w,X		; 7D 05 FC
	cpx #$90FE.w		; E0 FE 90
	stz $0C49.w,X		; 9E 49 0C
	adc #$790C.w		; 69 0C 79
	tsb $FF0C.w		; 0C 0C FF
	tsb $8F.b		; 04 8F
	rts		; 60

	adc [$10.b]		; 67 10
	ora ($6B.b),Y		; 11 6B
	asl A		; 0A
	sbc ($00.b,S),Y		; F3 00
	sbc ($00.b,S),Y		; F3 00
	sbc ($00.b,S),Y		; F3 00
	beq 114.b		; F0 72
	cld		; D8
	rep #$8C		; C2 8C
	ora ($24.b,X)		; 01 24
	rti		; 40

	ora ($60.b)		; 12 60
	phk		; 4B
	bmi 101.b		; 30 65
	clc		; 18
	adc ($0C.b)		; 72 0C
	adc ($FD.b,X)		; 61 FD
	sta ($FD.b,X)		; 81 FD
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bmi  14.b		; 30 0E
	sec		; 38
	tsb $18.b		; 04 18
	mvp $40,$18		; 44 18 40
	jsr $0020.w		; 20 20 00
	clc		; 18
	bcc  24.b		; 90 18
	bne  24.b		; D0 18
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	rti		; 40

	inc $FC40.w,X		; FE 40 FC
	cpy #$F818.w		; C0 18 F8
	clc		; 18
	inx		; E8
	php		; 08
	inx		; E8
	php		; 08
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	cpy #$EF80.w		; C0 80 EF
	cpy #$EBFF.w		; C0 FF EB
	adc $7935FD.l,X		; 7F FD 35 79
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$63EF.w		; C0 EF 63
	sbc $10FF0D.l,X		; FF 0D FF 10
	sbc $7900.w,X		; FD 00 79
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
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rts		; 60

	brk $F0.b		; 00 F0
	cpx #$8090.w		; E0 90 80
	jsr $4030.w		; 20 30 40
	bpl  80.b		; 10 50
	bpl -16.b		; 10 F0
	bcc -96.b		; 90 A0
	dey		; 88
	brk $E0.b		; 00 E0
	rti		; 40

	beq -128.b		; F0 80
	beq  64.b		; F0 40
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $A0.b		; 00 A0
	dey		; 88
	bvc -40.b		; 50 D8
	jmp $8EF0.w		; 4C F0 8E
	bpl  10.b		; 10 0A
	cpx $C5.b		; E4 C5
	rol $3ECF.w		; 2E CF 3E
	asl $701F.w		; 0E 1F 70
	brk $20.b		; 00 20
	brk $08.b		; 00 08
	tsb $6E68.w		; 0C 68 6E
	clc		; 18
	asl $D7D0.w,X		; 1E D0 D7
	cpy $CF.b		; C4 CF
	dec $FF.b		; C6 FF
	ora [$4F.b]		; 07 4F
	ora $87.b,S		; 03 87
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $9F.b,S		; 83 9F
	ora ($0F.b,X)		; 01 0F
	brk $87.b		; 00 87
	brk $C3.b		; 00 C3
	brk $C1.b		; 00 C1
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	tsb $081F.w		; 0C 1F 08
	sec		; 38
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $001801.l		; 0F 01 18 00
	bmi  32.b		; 30 20
	jsr $2020.w		; 20 20 20
	jsr $0000.w		; 20 00 00
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $78.b		; 00 78
	ora ($3F.b,X)		; 01 3F
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $1820.w		; 20 20 18
	bpl  15.b		; 10 0F
	php		; 08
	ora [$06.b]		; 07 06
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora [$3F.b]		; 07 3F
	sbc $FF3FFF.l,X		; FF FF 3F FF
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	and $00FF20.l,X		; 3F 20 FF 00
	sbc $81FF00.l,X		; FF 00 FF 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	and $FFFCFF.l,X		; 3F FF FC FF
	beq  -1.b		; F0 FF
	bra  -4.b		; 80 FC
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00FF10.l,X		; 1F 10 FF 00
	sbc $04FC01.l,X		; FF 01 FC 04
	beq  16.b		; F0 10
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	ora $FF3C3F.l		; 0F 3F 3C FF
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora $203F08.l		; 0F 08 3F 20
	sbc $000081.l,X		; FF 81 00 00
	beq  16.b		; F0 10
	bra -32.b		; 80 E0
	ora ($FF.b,X)		; 01 FF
	brk $9F.b		; 00 9F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$9F60.w		; E0 60 9F
	tya		; 98
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$03.b]		; 07 03
	ora $060E07.l		; 0F 07 0E 06
	ora $020707.l		; 0F 07 07 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora $0F.b,S		; 03 0F
	asl $0F.b		; 06 0F
	asl $0F.b		; 06 0F
	cop $07.b		; 02 07
	brk $03.b		; 00 03
	bra   8.b		; 80 08
	bcs  72.b		; B0 48
	bcs  68.b		; B0 44
	tya		; 98
	mvp $02,$4C		; 44 4C 02
	bit $2001.w		; 2C 01 20
	ora ($1E.b),Y		; 11 1E
	brk $70.b		; 00 70
	bvs  48.b		; 70 30
	bmi  56.b		; 30 38
	sec		; 38
	sec		; 38
	sec		; 38
	bit $1E3C.w,X		; 3C 3C 1E
	asl $0E0E.w,X		; 1E 0E 0E
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	ora ($0F.b,X)		; 01 0F
	cop $0E.b		; 02 0E
	cop $0E.b		; 02 0E
	ora ($0F.b,X)		; 01 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora [$01.b]		; 07 01
	ora $0A0B0B.l		; 0F 0B 0B 0A
	php		; 08
	brk $0D.b		; 00 0D
	ora ($00.b,X)		; 01 00
	bra   0.b		; 80 00
	sbc $DF3F0C.l,X		; FF 0C 3F DF
	eor $011F5F.l,X		; 5F 5F 1F 01
	sbc $52F13E.l,X		; FF 3E F1 52
	inx		; E8
	brk $00.b		; 00 00
	cpy #$FE40.w		; C0 40 FE
	cpx #$EEFF.w		; E0 FF EE
	sbc $202CEC.l,X		; FF EC 2C 20
	beq -64.b		; F0 C0
	sbc ($0C.b,X)		; E1 0C
	stz $EE2B.w,X		; 9E 2B EE
	bpl -13.b		; 10 F3
	php		; 08
	and $2C04.w,Y		; 39 04 2C
	eor ($46.b)		; 52 46
	lda ($CF.b),Y		; B1 CF
	rol $CF2F.w		; 2E 2F CF
	brk $FC.b		; 00 FC
	ora [$38.b]		; 07 38
	cmp $C4C7D8.l		; CF D8 C7 C4
	sta $92.b,S		; 83 92
	ora ($39.b,X)		; 01 39
	asl $3E.b		; 06 3E
	asl $1F.b		; 06 1F
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra  32.b		; 80 20
	cpx #$4030.w		; E0 30 40
	sec		; 38
	bmi -60.b		; 30 C4
	sed		; F8
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $B8.b		; 00 B8
	clv		; B8
	cpx $0EFC.w		; EC FC 0E
	nop		; EA
	asl $0FCC.w		; 0E CC 0F
	stx $04.b		; 86 04
	ora $03.b,S		; 03 03
	tsb $0D06.w		; 0C 06 0D
	cop $08.b		; 02 08
	cop $08.b		; 02 08
	.db $82, $0F, $8C		; 82 0F 8C
	sta $000F04.l		; 8F 04 0F 00
	ora [$04.b]		; 07 04
	ora [$03.b]		; 07 03
	ora ($0F.b,X)		; 01 0F
	php		; 08
	ora $45AE08.l		; 0F 08 AE 45
	cmp #$672E.w		; C9 2E 67
	clc		; 18
	ldx $00.b,Y		; B6 00
	jsr ($1C00.w,X)		; FC 00 1C
	asl $1F.b,X		; 16 1F
	ldy $886B.w,X		; BC 6B 88
	php		; 08
	sbc ($04.b,S),Y		; F3 04
	inc $09.b,X		; F6 09
	sbc $FB03.w,X		; FD 03 FB
	sbc [$E7.b]		; E7 E7
	sbc $E1.b,X		; F5 E1
	jmp $171F40.l		; 5C 40 1F 17
	ora ($87.b,X)		; 01 87
	.db $82, $FF, $02		; 82 FF 02
	sbc $08FF04.l,X		; FF 04 FF 08
	rol $7C18.w,X		; 3E 18 7C
	bmi  -8.b		; 30 F8
	cpx #$03F0.w		; E0 F0 03
	brk $FB.b		; 00 FB
	clc		; 18
	sbc [$31.b],Y		; F7 31
	inc $1CE2.w		; EE E2 1C
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $01.b		; 00 01
	and $006000.l,X		; 3F 00 60 00
	rts		; 60

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	and $002000.l,X		; 3F 00 20 00
	jsr $0000.w		; 20 00 00
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rts		; 60

	rts		; 60

	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	ora [$3F.b]		; 07 3F
	bit $F0FF.w,X		; 3C FF F0
	inc $F8E0.w,X		; FE E0 F8
	bra -32.b		; 80 E0
	brk $80.b		; 00 80
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $80FE10.l,X		; 1F 10 FE 80
	jsr ($F804.w,X)		; FC 04 F8
	php		; 08
	cpx #$8020.w		; E0 20 80
	bra   0.b		; 80 00
	cpx #$7000.w		; E0 00 70
	brk $7C.b		; 00 7C
	tsb $073F.w		; 0C 3F 07
	and $001F01.l,X		; 3F 01 1F 00
	ora [$00.b]		; 07 00
	brk $C0.b		; 00 C0
	cpy #$4060.w		; C0 60 40
	sec		; 38
	php		; 08
	and $101F21.l,X		; 3F 21 1F 10
	ora $020308.l		; 0F 08 03 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($8F.b,X)		; 01 8F
	sbc $FFFFFF.l,X		; FF FF FF FF
	jmp ($00FF.w,X)		; 7C FF 00
	ror $0000.w,X		; 7E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $243C00.l,X		; FF 00 3C 24
	ora [$30.b]		; 07 30
	ora $401E60.l		; 0F 60 1E 40
	adc $3CC1.w,X		; 7D C1 3C
	sta [$39.b]		; 87 39
	stx $DD52.w		; 8E 52 DD
	asl $7B.b		; 06 7B
	ora $203F10.l,X		; 1F 10 3F 20
	adc $003E40.l,X		; 7F 40 3E 00
	ply		; 7A
	cop $F4.b		; 02 F4
	sta $A8.b		; 85 A8
	phb		; 8B
	bvs 118.b		; 70 76
	lsr $3CC0.w,X		; 5E C0 3C
	sta ($78.b,X)		; 81 78
	ora $F4.b,S		; 03 F4
	asl $E8.b		; 06 E8
	ora $3EE1.w		; 0D E1 3E
	dex		; CA
	stz $90.b,X		; 74 90
	cpx $003F.w		; EC 3F 00
	sbc $02FE81.l,X		; FF 81 FE 02
	sbc $F201.w,Y		; F9 01 F2
	cop $D0.b		; 02 D0
	bpl -96.b		; 10 A0
	plp		; 28
	rti		; 40

	cli		; 58
	tsb $00E3.w		; 0C E3 00
	stx $01.b		; 86 01
	bmi  99.b		; 30 63
	bcc -111.b		; 90 91
	asl A		; 0A
	ora ($12.b,X)		; 01 12
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	cpy #$60DF.w		; C0 DF 60
	adc $0CCEC8.l,X		; 7F C8 CE 0C
	tsb $0404.w		; 0C 04 04
	tsb $000C.w		; 0C 0C 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	pha		; 48
	mvp $50,$08		; 44 08 50
	tsb $50.b		; 04 50
	tsb $5A.b		; 04 5A
	tsb $5A.b		; 04 5A
	brk $42.b		; 00 42
	brk $7E.b		; 00 7E
	brk $30.b		; 00 30
	lda ($30.b,S),Y		; B3 30
	bcs  56.b		; B0 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	bit $3C3C.w,X		; 3C 3C 3C
	bit $0000.w,X		; 3C 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $30.b		; 00 30
	brk $1F.b		; 00 1F
	ora $8F.b,S		; 03 8F
	sta ($87.b,X)		; 81 87
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	bmi  32.b		; 30 20
	asl $0F16.w,X		; 1E 16 0F
	php		; 08
	sta [$04.b]		; 87 04
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	bpl  31.b		; 10 1F
	bpl  63.b		; 10 3F
	jsr $203F.w		; 20 3F 20
	adc $46FC40.l,X		; 7F 40 FC 46
	plx		; FA
	ora $1C01.w		; 0D 01 1C
	tsb $1C.b		; 04 1C
	tsb $38.b		; 04 38
	brk $38.b		; 00 38
	php		; 08
	bvs  16.b		; 70 10
	rts		; 60

	ora $E0.b,S		; 03 E0
	and [$2E.b]		; 27 2E
	cld		; D8
	and $C4.b,S		; 23 C4
	ora [$F0.b],Y		; 17 F0
	stx $70.b,Y		; 96 70
	ora $B0.b,S		; 03 B0
	tsb $3C.b		; 04 3C
	lsr $AE80.w,X		; 5E 80 AE
	.db $42, $A9		; 42 A9
	asl A		; 0A
	lda $4F84.w,Y		; B9 84 4F
	rti		; 40

	and $101F21.l		; 2F 21 1F 10
	phd		; 0B
	iny		; C8
	brk $E1.b		; 00 E1
	tsb $27F1.w		; 0C F1 27
	eor $C811E1.l		; 4F E1 11 C8
	cpx #$F0C8.w		; E0 C8 F0
	iny		; C8
	bmi -56.b		; 30 C8
	trb $E8.b		; 14 E8
	tsb $E8.b		; 04 E8
	tsb $81.b		; 04 81
	sta $C01F00.l,X		; 9F 00 1F C0
	cmp $C0EEC0.l,X		; DF C0 EE C0
	inc $E0.b,X		; F6 E0
	inc $F0.b,X		; F6 F0
	inc $F0.b,X		; F6 F0
	inc $F8.b,X		; F6 F8
	sed		; F8
	sed		; F8
	jsr ($7C70.w,X)		; FC 70 7C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pea $70FC.w		; F4 FC 70
	sed		; F8
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $08.b		; 06 08
	asl $19.b		; 06 19
	php		; 08
	and $64.b		; 25 64
	and ($F0.b,S),Y		; 33 F0
	ply		; 7A
	beq  -2.b		; F0 FE
	inx		; E8
	beq -48.b		; F0 D0
	cpx #$0007.w		; E0 07 00
	ora [$01.b]		; 07 01
	inc A		; 1A
	clc		; 18
	tsb $346C.w		; 0C 6C 34
	pea $F860.w		; F4 60 F8
	cpy #$80FC.w		; C0 FC 80
	sbc $806C.w,Y		; F9 6C 80
	ora $2F1CD4.l		; 0F D4 1C 2F
	tsb $040F.w		; 0C 0F 04
	ora $0C0608.l		; 0F 08 06 0C
	asl A		; 0A
	tsb $4E.b		; 04 4E
	adc ($73.b,S),Y		; 73 73
	bit $24.b		; 24 24
	tsb $0D.b		; 04 0D
	tsb $1D.b		; 04 1D
	brk $1D.b		; 00 1D
	ora ($3D.b,X)		; 01 3D
	ora #$057D.w		; 09 7D 05
	sbc $E000.w,X		; FD 00 E0
	brk $F0.b		; 00 F0
	rti		; 40

	beq -32.b		; F0 E0
	sed		; F8
	bvs  -4.b		; 70 FC
	rti		; 40

	jsr ($5820.w,X)		; FC 20 58
	bne   8.b		; D0 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F000.w		; E0 00 F0
	bvs  -8.b		; 70 F8
	clc		; 18
	clc		; 18
	brk $80.b		; 00 80
	rti		; 40

	bra  32.b		; 80 20
	beq   0.b		; F0 00
	rti		; 40

	jsr $60C0.w		; 20 C0 60
	bra  96.b		; 80 60
	brk $40.b		; 00 40
	jmp $AEA8.w		; 4C A8 AE
	lsr A		; 4A
	ror $808B.w		; 6E 8B 80
	rti		; 40

	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$80C0.w		; C0 C0 80
	bmi   0.b		; 30 00
	jmp ($FE08.w,X)		; 7C 08 FE
	cop $FE.b		; 02 FE
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F8.b		; 00 F8
	cpx #$FFFF.w		; E0 FF FF
	sbc $00FF3F.l,X		; FF 3F FF 00
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	rts		; 60

	inc $FF06.w,X		; FE 06 FF
	brk $FF.b		; 00 FF
	bra  63.b		; 80 3F
	bmi   0.b		; 30 00
	brk $70.b		; 00 70
	jmp ($1E1C.w,X)		; 7C 1C 1E
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0F.b		; 06 0F
	ora $1F.b,S		; 03 1F
	jmp ($1E00.w,X)		; 7C 00 1E
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $0F.b		; 00 0F
	brk $41.b		; 00 41
	bra   2.b		; 80 02
	ora ($04.b,X)		; 01 04
	cop $09.b		; 02 09
	tsb $01.b		; 04 01
	asl $3F1E.w,X		; 1E 1E 3F
	pld		; 2B
	adc $5D.b,S		; 63 5D
	cmp ($00.b,X)		; C1 00
	sbc $00.b,S		; E3 00
	sta [$00.b]		; 87 00
	ora $001F00.l		; 0F 00 1F 00
	ora ($00.b,X)		; 01 00
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	brk $26.b		; 00 26
	sty $4A.b,X		; 94 4A
	bit $C8.b		; 24 C8
	and ($98.b,X)		; 21 98
	eor ($11.b,X)		; 41 11
	iny		; C8
	and $98.b,S		; 23 98
	lsr $B0.b		; 46 B0
	tsb $05E2.w		; 0C E2 05
	sbc $FD01.w,X		; FD 01 FD
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	inx		; E8
	tsb $EC.b		; 04 EC
	cop $6C.b		; 02 6C
	cop $6C.b		; 02 6C
	cop $6C.b		; 02 6C
	cop $6C.b		; 02 6C
	ora ($6C.b)		; 12 6C
	sta ($6C.b)		; 92 6C
	bcc -16.b		; 90 F0
	inc $F0.b,X		; F6 F0
	inc $F0.b,X		; F6 F0
	inc $F0.b,X		; F6 F0
	sbc [$F0.b],Y		; F7 F0
	sbc [$E0.b],Y		; F7 E0
	sbc [$60.b]		; E7 60
	adc [$60.b]		; 67 60
	ror $00.b		; 66 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($05.b,X)		; 01 05
	and $3D7F3F.l,X		; 3F 3F 7F 3D
	ror $387C.w,X		; 7E 7C 38
	sec		; 38
	php		; 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($3F.b,X)		; 01 3F
	bit $387F.w,X		; 3C 7F 38
	adc $007E28.l,X		; 7F 28 7E 00
	sec		; 38
	tsb $0F.b		; 04 0F
	cop $1F.b		; 02 1F
	asl $1F.b		; 06 1F
	tsb $0C3F.w		; 0C 3F 0C
	and $187F1D.l,X		; 3F 1D 7F 18
	ror $7D1A.w,X		; 7E 1A 7D
	ora $050F0A.l		; 0F 0A 0F 05
	ora $101E19.l,X		; 1F 19 1E 10
	and $203C23.l,X		; 3F 23 3C 20
	and $7E00.w,X		; 3D 00 7E
	lsr $53.b		; 46 53
	cmp $6B.b		; C5 6B
	cpy $9FB7.w		; CC B7 9F
	cmp [$9F.b]		; C7 9F
	adc [$37.b]		; 67 37
	sta ($33.b,X)		; 81 33
	pei ($6C.b)		; D4 6C
	ora ($E3.b,S),Y		; 13 E3
	sec		; 38
	ora $B0.b,S		; 03 B0
	sta $68.b,S		; 83 68
	ora $D11771.l		; 0F 71 17 D1
	ora $A02FE0.l,X		; 1F E0 2F A0
	and $7C4F41.l		; 2F 41 4F 7C
	cmp ($1D.b,X)		; C1 1D
	cmp ($3F.b,X)		; C1 3F
	adc ($0E.b,X)		; 61 0E
	rts		; 60

	ora $300730.l,X		; 1F 30 07 30
	ora $180318.l		; 0F 18 03 18
	and $407E01.l,X		; 3F 01 7E 40
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

	jsr ($0064.w,X)		; FC 64 00
	ora $00.b,S		; 03 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora [$03.b]		; 07 03
	asl $0F02.w		; 0E 02 0F
	tsb $1F.b		; 04 1F
	tsb $1E.b		; 04 1E
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	asl $04.b		; 06 04
	asl $04.b		; 06 04
	ora $080E09.l		; 0F 09 0E 08
	trb $8F10.w		; 1C 10 8F
	sta $2F2F6F.l,X		; 9F 6F 2F 2F
	sta $20FF60.l		; 8F 60 FF 20
	sbc $ABF20D.l,X		; FF 0D F2 AB
	mvp $30,$57		; 44 57 30
	sbc $F3FF67.l,X		; FF 67 FF F3
	adc $80FB72.l,X		; 7F 72 FB 80
	adc ($40.b,S),Y		; 73 40
	bit $1B20.w		; 2C 20 1B
	brk $2F.b		; 00 2F
	jsr $FEB0.w		; 20 B0 FE
	sed		; F8
	inc $FEF8.w,X		; FE F8 FE
	ora $FF.b,S		; 03 FF
	eor [$BB.b]		; 47 BB
	sbc $97.b,S		; E3 97
	sbc [$13.b]		; E7 13
	cmp $13.b,S		; C3 13
	jsr ($FC44.w,X)		; FC 44 FC
	ora ($FC.b,X)		; 01 FC
	ora ($BA.b,X)		; 01 BA
	ora $43.b,S		; 03 43
	ora $63.b,S		; 03 63
	ora [$53.b]		; 07 53
	ora [$F1.b],Y		; 17 F1
	ora [$02.b],Y		; 17 02
	asl $C0.b		; 06 C0
	ora ($40.b,X)		; 01 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E1.b		; 00 E1
	cpx #$8080.w		; E0 80 80
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lsr $46.b		; 46 46
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	tsb $FF.b		; 04 FF
	brk $C6.b		; 00 C6
	tsb $00.b		; 04 00
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	asl $04.b		; 06 04
	asl $04.b		; 06 04
	asl $00.b		; 06 00
	asl $0E.b		; 06 0E
	tsb $080E.w		; 0C 0E 08
	asl $0E00.w		; 0E 00 0E
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	asl $0E00.w		; 0E 00 0E
	brk $0E.b		; 00 0E
	cop $0C.b		; 02 0C
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
	brk $00.b		; 00 00
	brk $77.b		; 00 77
	and ($FF.b,S),Y		; 33 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc [$54.b],Y		; 77 54
	sbc $850588.l,X		; FF 88 05 85
	asl A		; 0A
	sbc ($30.b)		; F2 30
	sta [$07.b]		; 87 07
	dec $FCFC.w		; CE FC FC
	sed		; F8
	sed		; F8
	beq -16.b		; F0 F0
	plp		; 28
	plp		; 28
	adc $0D0F7B.l,X		; 7F 7B 0F 0D
	sei		; 78
	sei		; 78
	bmi  54.b		; 30 36
	jsr ($F8FE.w,X)		; FC FE F8
	jsr ($FC60.w,X)		; FC 60 FC
	jsr $DCFC.w		; 20 FC DC
	cld		; D8
	pea $76F0.w		; F4 F0 76
	jsr $0852.w		; 20 52 08
	.db $42, $28		; 42 28
	eor #$4B24.w		; 49 24 4B
	bit $43.b		; 24 43
	bit $40.b,X		; 34 40
	sed		; F8
	rts		; 60

	sed		; F8
	jsr $00F8.w		; 20 F8 00
	jsr ($FC00.w,X)		; FC 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	and ($FF.b,S),Y		; 33 FF
	ora ($7F.b,S),Y		; 13 7F
	ora [$7B.b],Y		; 17 7B
	ora [$7B.b],Y		; 17 7B
	ora $370E3B.l		; 0F 3B 0E 37
	and $3B7A0F.l,X		; 3F 0F 7A 3B
	tda		; 7B
	eor $3B0F3B.l		; 4F 3B 0F 3B
	ora [$3A.b]		; 07 3A
	and [$1A.b]		; 27 1A
	ora [$14.b]		; 07 14
	ora $183F06.l,X		; 1F 06 3F 18
	adc $2A910A.l,X		; 7F 0A 91 2A
	sta ($3A.b),Y		; 91 3A
	sta ($02.b,X)		; 81 02
	sta ($08.b,X)		; 81 08
	sec		; 38
	asl $053E.w		; 0E 3E 05
	trb $1C05.w		; 1C 05 1C
	brk $FF.b		; 00 FF
	brk $DF.b		; 00 DF
	brk $DF.b		; 00 DF
	brk $FF.b		; 00 FF
	bpl -41.b		; 10 D7
	ora ($90.b),Y		; 11 90
	phd		; 0B
	dey		; 88
	phd		; 0B
	dey		; 88
	lda [$10.b]		; A7 10
	ldy $10.b		; A4 10
	ldy #$A018.w		; A0 18 A0
	clc		; 18
	brk $02.b		; 00 02
	tsb $7E.b		; 04 7E
	rti		; 40

	tda		; 7B
	ldx $3F.b		; A6 3F
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	cld		; D8
	cli		; 58
	ldx $C82A.w		; AE 2A C8
	php		; 08
	and $3A7E.w,Y		; 39 7E 3A
	sbc $FE31.w,X		; FD 31 FE
	ror $FF.b,X		; 76 FF
	adc [$FF.b],Y		; 77 FF
	adc [$FF.b],Y		; 77 FF
	and [$FF.b],Y		; 37 FF
	and ($FF.b,S),Y		; 33 FF
	adc $7E45.w,X		; 7D 45 7E
	asl $79.b		; 06 79
	ora ($7A.b,X)		; 01 7A
	asl $7B.b		; 06 7B
	ora $730F7B.l		; 0F 7B 0F 73
	ora [$73.b]		; 07 73
	ora [$15.b]		; 07 15
	adc ($29.b,X)		; 61 29
	sty $24.b		; 84 24
	ora #$C934.w		; 09 34 C9
	sty $C9.b,X		; 94 C9
	.db $82, $D9, $82		; 82 D9 82
	cmp $D18A.w,Y		; D9 8A D1
	bra -113.b		; 80 8F
	rti		; 40

	eor $00DFC0.l,X		; 5F C0 DF 00
	ora $80FF00.l,X		; 1F 00 FF 80
	sbc $80FF80.l,X		; FF 80 FF 80
	sbc $010C07.l,X		; FF 07 0C 01
	tsb $0603.w		; 0C 03 06
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
	rol $F0C0.w,X		; 3E C0 F0
	clc		; 18
	sed		; F8
	sec		; 38
	cld		; D8
	clc		; 18
	clv		; B8
	bit $1898.w,X		; 3C 98 18
	stz $9C06.w		; 9C 06 9C
	trb $E00E.w		; 1C 0E E0
	php		; 08
	bne  28.b		; D0 1C
	clc		; 18
	trb $3C18.w		; 1C 18 3C
	tya		; 98
	ldy $BE88.w,X		; BC 88 BE
	brk $1E.b		; 00 1E
	tsb $9F.b		; 04 9F
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora $0E.b,S		; 03 0E
	ora [$1D.b]		; 07 1D
	ora $3B1F18.l		; 0F 18 1F 3B
	bpl 120.b		; 10 78
	jsr $03FC.w		; 20 FC 03
	cop $03.b		; 02 03
	brk $06.b		; 00 06
	ora ($0D.b,X)		; 01 0D
	ora $18.b,S		; 03 18
	ora [$1B.b]		; 07 1B
	ora [$38.b]		; 07 38
	ora [$77.b]		; 07 77
	trb $88.b		; 14 88
	cmp ($14.b,S),Y		; D3 14
	bit #$44CA.w		; 89 CA 44
	sbc $A2.b		; E5 A2
	cpx #$B667.w		; E0 67 B6
	bcs  54.b		; B0 36
	sed		; F8
	and [$38.b],Y		; 37 38
	sta ($1D.b,X)		; 81 1D
	brk $7E.b		; 00 7E
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	brk $F8.b		; 00 F8
	ora [$FF.b]		; 07 FF
	ora [$F7.b],Y		; 17 F7
	ora [$F7.b],Y		; 17 F7
	rep #$81		; C2 81
	bit $82.b		; 24 82
	and $02E4.w,Y		; 39 E4 02
	adc $8204.w,Y		; 79 04 82
	asl $71.b		; 06 71
	lsr $71.b,X		; 56 71
	inc $7E71.w,X		; FE 71 7E
	bit $99FC.w,X		; 3C FC 99
	cli		; 58
	eor $80.b,S		; 43 80
	ora [$70.b]		; 07 70
	ora $DE8E8E.l		; 0F 8E 8E DE
	stx $AEFE.w		; 8E FE AE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $F8.b,X		; 16 F8
	lda ($FE.b,X)		; A1 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs -128.b		; B0 80
	jsr ($3E44.w,X)		; FC 44 3E
	stz $5E8C.w		; 9C 8C 5E
	cmp $0F7E2E.l,X		; DF 2E 7E 0F
	ldx $8F.b,Y		; B6 8F
	rti		; 40

	cpy #$6026.w		; C0 26 60
	brk $18.b		; 00 18
	php		; 08
	asl $1F8C.w,X		; 1E 8C 1F
	cpy $E41F.w		; CC 1F E4
	ora $300F64.l		; 0F 64 0F 30
	ora $060919.l,X		; 1F 19 09 06
	asl $09.b		; 06 09
	rol $3D1A.w,X		; 3E 1A 3D
	ora $1E7E.w,Y		; 19 7E 1E
	adc $3F7F3F.l,X		; 7F 3F 7F 3F
	adc $1B7F3F.l,X		; 7F 3F 7F 1B
	adc $3E253D.l,X		; 7F 3D 25 3E
	rol $39.b		; 26 39
	ora ($3A.b,X)		; 01 3A
	asl $3B.b		; 06 3B
	ora [$3B.b]		; 07 3B
	ora [$3B.b]		; 07 3B
	ora [$3B.b]		; 07 3B
	ora [$15.b]		; 07 15
	adc ($29.b,X)		; 61 29
	sty $24.b		; 84 24
	ora #$C934.w		; 09 34 C9
	sty $C9.b,X		; 94 C9
	.db $82, $D9, $82		; 82 D9 82
	cmp $D18A.w,Y		; D9 8A D1
	bra -113.b		; 80 8F
	rti		; 40

	eor $00DFC0.l,X		; 5F C0 DF 00
	ora $80FF00.l,X		; 1F 00 FF 80
	sbc $80FF80.l,X		; FF 80 FF 80
	sbc $040F03.l,X		; FF 03 0F 04
	trb $1903.w		; 1C 03 19
	ora ($0C.b),Y		; 11 0C
	ora $3F.b,S		; 03 3F
	ora $1077.w,Y		; 19 77 10
	adc $0FFA25.l,X		; 7F 25 FA 0F
	php		; 08
	ora $070F03.l		; 0F 03 0F 07
	phd		; 0B
	phd		; 0B
	and [$24.b],Y		; 37 24
	and ($22.b,S),Y		; 33 22
	adc $7049.w,Y		; 79 49 70
	rti		; 40

	dec A		; 3A
	sbc $7FFF7D.l,X		; FF 7D FF 7F
	adc $007F7F.l,X		; 7F 7F 7F 00
	sbc $6FFD02.l,X		; FF 02 FD 6F
	sty $5F.b,X		; 94 5F
	jsr $84FF.w		; 20 FF 84
	sbc $98FF3A.l,X		; FF 3A FF 98
	sbc $00DD90.l,X		; FF 90 DD 00
	txs		; 9A
	brk $63.b		; 00 63
	brk $DA.b		; 00 DA
	brk $46.b		; 00 46
	lsr $00.b		; 46 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $01.b		; 02 01
	ora $04.b,S		; 03 04
	sbc $02C600.l,X		; FF 00 C6 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $03.b		; 02 03
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc [$00.b],Y		; 77 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $77.b		; 00 77
	mvn $D8,$DC		; 54 DC D8
	pea $76F0.w		; F4 F0 76
	jsr $0852.w		; 20 52 08
	.db $42, $28		; 42 28
	eor #$4B24.w		; 49 24 4B
	bit $43.b		; 24 43
	bit $40.b,X		; 34 40
	sed		; F8
	rts		; 60

	sed		; F8
	jsr $00F8.w		; 20 F8 00
	jsr ($FC00.w,X)		; FC 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	lda [$10.b]		; A7 10
	ldy $10.b		; A4 10
	ldy #$A018.w		; A0 18 A0
	clc		; 18
	brk $02.b		; 00 02
	tsb $7E.b		; 04 7E
	rti		; 40

	tda		; 7B
	ldx $3F.b		; A6 3F
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	cld		; D8
	cli		; 58
	ldx $C82A.w		; AE 2A C8
	php		; 08
	ora $1F.b		; 05 1F
	ora #$021F.w		; 09 1F 02
	rol $3E0B.w,X		; 3E 0B 3E
	ora ($7C.b),Y		; 11 7C
	asl $7C.b,X		; 16 7C
	and ($F9.b,S),Y		; 33 F9
	plp		; 28
	sbc [$0C.b],Y		; F7 0C
	brk $1E.b		; 00 1E
	asl $1D.b,X		; 16 1D
	tsb $3039.w		; 0C 39 30
	and $40732C.l,X		; 3F 2C 73 40
	ror $40.b,X		; 76 40
	adc $4C19.w,Y		; 79 19 4C
	asl $AC.b,X		; 16 AC
	and ($DC.b,S),Y		; 33 DC
	ror $7F1C.w,X		; 7E 1C 7F
	sta $CF07DF.l,X		; 9F DF 07 CF
	eor ($B3.b,S),Y		; 53 B3
	jmp $E18C.w		; 4C 8C E1
	ora $0CC0.w		; 0D C0 0C
	lda ($3D.b,X)		; A1 3D
	cpy $5C.b		; C4 5C
	eor [$7F.b]		; 47 7F
	sta $BF.b,S		; 83 BF
	sta ($BF.b,X)		; 81 BF
	tsb $3F.b		; 04 3F
	trb $14.b		; 14 14
	pld		; 2B
	iny		; C8
	cmp ($1C.b,X)		; C1 1C
	trb $F038.w		; 1C 38 F0
	beq -32.b		; F0 E0
	cpx #$C0C0.w		; E0 C0 C0
	ldy #$FFA0.w		; A0 A0 FF
	sbc $E3363E.l		; EF 3E 36 E3
	sbc $C3.b,S		; E3 C3
	stp		; DB
	beq  -8.b		; F0 F8
	cpx #$80F0.w		; E0 F0 80
	beq -128.b		; F0 80
	beq  31.b		; F0 1F
	bmi   7.b		; 30 07
	bmi  15.b		; 30 0F
	clc		; 18
	ora $18.b,S		; 03 18
	ora [$0C.b]		; 07 0C
	ora ($0C.b,X)		; 01 0C
	ora $06.b,S		; 03 06
	brk $06.b		; 00 06
	ora $101F00.l		; 0F 00 1F 10
	ora [$00.b]		; 07 00
	ora $000308.l		; 0F 08 03 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	trb $76.b		; 14 76
	cli		; 58
	adc ($CC.b)		; 72 CC
	adc ($8C.b)		; 72 8C
	and ($E4.b,S),Y		; 33 E4
	and ($EE.b,S),Y		; 33 EE
	tsa		; 3B
	cpy $19.b		; C4 19
.INDEX 8
	sep #$19		; E2 19
	inx		; E8
	rts		; 60

	sty $9E00.w		; 8C 00 9E
	ora ($FE.b)		; 12 FE
	and ($CE.b)		; 32 CE
	cop $C4.b		; 02 C4
	brk $FE.b		; 00 FE
	clc		; 18
	sbc $000019.l,X		; FF 19 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	ora $05.b,S		; 03 05
	ora [$08.b]		; 07 08
	ora [$0B.b]		; 07 0B
	php		; 08
	clc		; 18
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $07.b		; 00 07
	phd		; 0B
	ora [$08.b]		; 07 08
	ora [$17.b]		; 07 17
	tsb $26.b		; 04 26
	rts		; 60

	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0609.w,Y		; 19 09 06
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bmi  48.b		; 30 30
	bvs  96.b		; 70 60
	bvs  64.b		; 70 40
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	rts		; 60

	brk $40.b		; 00 40
	brk $80.b		; 00 80
	bmi   0.b		; 30 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bvs  16.b		; 70 10
	rts		; 60

	jsr $4040.w		; 20 40 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tas		; 1B
	adc $0F7F1B.l,X		; 7F 1B 7F 0F
	tsa		; 3B
	ora $3B0F3B.l		; 0F 3B 0F 3B
	asl $3F17.w		; 0E 17 3F
	ora $3B3B7A.l		; 0F 7A 3B 3B
	ora [$3B.b]		; 07 3B
	and [$1B.b]		; 27 1B
	ora [$1A.b]		; 07 1A
	ora [$1A.b]		; 07 1A
	ora [$04.b],Y		; 17 04
	ora $183F06.l		; 0F 06 3F 18
	adc $2A910A.l,X		; 7F 0A 91 2A
	sta ($3A.b),Y		; 91 3A
	sta ($02.b,X)		; 81 02
	sta ($08.b,X)		; 81 08
	sec		; 38
	asl $053E.w		; 0E 3E 05
	trb $1C05.w		; 1C 05 1C
	brk $FF.b		; 00 FF
	brk $DF.b		; 00 DF
	brk $DF.b		; 00 DF
	brk $FF.b		; 00 FF
	bpl -41.b		; 10 D7
	ora ($90.b),Y		; 11 90
	phd		; 0B
	dey		; 88
	phd		; 0B
	dey		; 88
	rol A		; 2A
	sbc ($14.b),Y		; F1 14
	bit #$44CA.w		; 89 CA 44
	sbc $A2.b		; E5 A2
	cpx #$67.b		; E0 67
	ldx $B0.b,Y		; B6 B0
	rol $F8.b,X		; 36 F8
	and [$38.b],Y		; 37 38
	sbc ($9D.b,X)		; E1 9D
	bra 126.b		; 80 7E
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	brk $F8.b		; 00 F8
	ora [$FF.b]		; 07 FF
	ora [$F7.b],Y		; 17 F7
	ora [$F7.b],Y		; 17 F7
	ldx $6180.w,Y		; BE 80 61
	cpy #$12.b		; C0 12
	cmp ($1C.b,X)		; C1 1C
	adc ($00.b,S),Y		; 73 00
	ldx $7106.w,Y		; BE 06 71
	lsr $71.b,X		; 56 71
	inc $7F71.w,X		; FE 71 7F
	brk $BF.b		; 00 BF
	stz $4C7E.w,X		; 9E 7E 4C
	ldy $4021.w		; AC 21 40
	ora $8E.b,S		; 03 8E
	stx $8EDE.w		; 8E DE 8E
	inc $07AE.w,X		; FE AE 07
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
	rol $0000.w,X		; 3E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $F8.b,X		; 16 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs -128.b		; B0 80
	bpl -32.b		; 10 E0
	bra -16.b		; 80 F0
	cpy #$F0.b		; C0 F0
	cpy #$F0.b		; C0 F0
	bpl -16.b		; 10 F0
	bmi -48.b		; 30 D0
	sei		; 78
	bcs  48.b		; B0 30
	clv		; B8
	cpy #$40.b		; C0 40
	cpx #$20.b		; E0 20
	cpx #$00.b		; E0 00
	cpx #$08.b		; E0 08
	bne  24.b		; D0 18
	bpl  24.b		; 10 18
	bmi 120.b		; 30 78
	bcc  -4.b		; 90 FC
	tsb $38B8.w		; 0C B8 38
	stz $9C3E.w		; 9C 3E 9C
	sty $DF5E.w		; 8C 5E DF
	rol $0F7E.w		; 2E 7E 0F
	ldx $8F.b,Y		; B6 8F
	rti		; 40

	cpy #$80.b		; C0 80
	ldy $3E08.w,X		; BC 08 3E
	php		; 08
	asl $1F8C.w,X		; 1E 8C 1F
	cpy $E41F.w		; CC 1F E4
	ora $300F64.l		; 0F 64 0F 30
	ora $000300.l,X		; 1F 00 03 00
	ora $01.b,S		; 03 01
	ora [$05.b]		; 07 05
	trb $3006.w		; 1C 06 30
	cop $7B.b		; 02 7B
	rti		; 40

	sta $010780.l		; 8F 80 07 01
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $0B.b		; 02 0B
	php		; 08
	ora $090D10.l,X		; 1F 10 0D 09
	ror $76.b,X		; 76 76
	cpy #$F8.b		; C0 F8
	and #$5428.w		; 29 28 54
	sta $70.b,X		; 95 70
	trb $B0.b		; 14 B0
	bpl -118.b		; 10 8A
	inc $06.b		; E6 06
	sbc $428F16.l		; EF 16 8F 42
	sta $90FF00.l		; 8F 00 FF 90
	sbc $C03FD0.l,X		; FF D0 3F C0
	and $827F60.l,X		; 3F 60 7F 82
	stz $7E02.w,X		; 9E 02 7E
	brk $7E.b		; 00 7E
	sta ($18.b,X)		; 81 18
	sta [$40.b]		; 87 40
	eor $1161A0.l		; 4F A0 61 11
	cop $F9.b		; 02 F9
	tsb $0A.b		; 04 0A
	wai		; CB
	asl $0EEF.w		; 0E EF 0E
	jsr $18E7.w		; 20 E7 18
	inc $F20C.w,X		; FE 0C F2
	tsb $FB.b		; 04 FB
	brk $0C.b		; 00 0C
	sbc ($F1.b),Y		; F1 F1
	xce		; FB
	sbc ($FF.b),Y		; F1 FF
	sbc $21.b,X		; F5 21
	clc		; 18
	bra   0.b		; 80 00
	stx $40.b		; 86 40
	dec $E12C.w		; CE 2C E1
	ora $00.b,X		; 15 00
	dey		; 88
	brk $40.b		; 00 40
	phd		; 0B
	lsr A		; 4A
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	bra -65.b		; 80 BF
	bra -65.b		; 80 BF
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $01.b,S		; 03 01
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	sta $E7.b,S		; 83 E7
	brk $EB.b		; 00 EB
	eor ($E8.b,X)		; 41 E8
	.db $82, $E8, $84		; 82 E8 84
	iny		; C8
	tsb $C8.b		; 04 C8
	brk $C8.b		; 00 C8
	php		; 08
	cmp ($E3.b,X)		; C1 E3
	and $C467E0.l		; 2F E0 67 C4
	stx $C4.b		; 86 C4
	ora $C0.b		; 05 C0
	eor $C0.b,S		; 43 C0
	eor $80.b,S		; 43 80
	ora [$80.b]		; 07 80
	ora [$18.b]		; 07 18
	rol $3E18.w,X		; 3E 18 3E
	php		; 08
	bit $3C00.w,X		; 3C 00 3C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	bit $3C20.w,X		; 3C 20 3C
	bit $1C.b		; 24 1C
	tsb $18.b		; 04 18
	bpl  24.b		; 10 18
	bpl   8.b		; 10 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $1C18.w		; 1C 18 1C
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	php		; 08
	php		; 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $3E00.w,X		; 3E 00 3E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	lda ($87.b,X)		; A1 87
	mvn $52,$01		; 54 01 52
	tsb $A2.b		; 04 A2
	trb $A5.b		; 14 A5
	ora ($A4.b)		; 12 A4
	ora ($A6.b,S),Y		; 13 A6
	ora ($4A.b),Y		; 11 4A
	and ($00.b),Y		; 31 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $F3FF00.l,X		; FF 00 FF F3
	lda $F3.b,S		; A3 F3
	cmp [$69.b],Y		; D7 69
	adc $AC.b,S		; 63 AC
	and ($58.b,X)		; 21 58
	brk $B9.b		; 00 B9
	cop $58.b		; 02 58
	sta $6A.b,S		; 83 6A
	sta ($83.b,X)		; 81 83
	sbc $20FF41.l,X		; FF 41 FF 20
	sbc [$00.b],Y		; F7 00
	xce		; FB
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc ($E1.b,X)		; E1 E1
	sbc ($E3.b,S),Y		; F3 E3
	sbc ($D7.b,S),Y		; F3 D7
	and ($A3.b,X)		; 21 A3
	plp		; 28
	and ($58.b,X)		; 21 58
	brk $B8.b		; 00 B8
	brk $58.b		; 00 58
	bra -95.b		; 80 A1
	sbc $C1FFC3.l,X		; FF C3 FF C1
	sbc $00FF20.l,X		; FF 20 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $C0FF00.l,X		; FF 00 FF C0
	bra -124.b		; 80 84
	sty $CE.b		; 84 CE
	dec $CFD7.w		; CE D7 CF
	phd		; 0B
	sta [$06.b]		; 87 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -128.b		; F0 80
	jsr ($FEC0.w,X)		; FC C0 FE
	cpy #$FF.b		; C0 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $F0.b		; 00 F0
	brk $6F.b		; 00 6F
	brk $6F.b		; 00 6F
	brk $67.b		; 00 67
	brk $67.b		; 00 67
	brk $27.b		; 00 27
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	ora $00.b,S		; 03 00
	ora $F5.b		; 05 F5
	cop $F2.b		; 02 F2
	ora $FB.b,S		; 03 FB
	ora ($F9.b,X)		; 01 F9
	ora ($F1.b,X)		; 01 F1
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	stz $07.b,X		; 74 07
	sec		; 38
	.db $82, $1E, $C3		; 82 1E C3
	bit $1FE1.w		; 2C E1 1F
	sbc ($06.b),Y		; F1 06
	beq  14.b		; F0 0E
	sed		; F8
	dec $F83F.w,X		; DE 3F F8
	ora ($FE.b,X)		; 01 FE
	sta $7C.b,S		; 83 7C
	rti		; 40

	ora $A0AE01.l,X		; 1F 01 AE A0
	sta $B0B790.l,X		; 9F 90 B7 B0
	asl $FE.b		; 06 FE
	beq  -5.b		; F0 FB
	stz $F9.b,X		; 74 F9
	sec		; 38
	adc $3C1E.w,X		; 7D 1E 3C
	bit $1F1E.w		; 2C 1E 1F
	stx $8F06.w		; 8E 06 8F
	asl $0007.w		; 0E 07 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $007F00.l,X		; FF 00 7F 00
	adc $40FF00.l,X		; 7F 00 FF 40
	bra  32.b		; 80 20
	cpy #$20.b		; C0 20
	cpy #$10.b		; C0 10
	cpx #$80.b		; E0 80
	bvs  72.b		; 70 48
	bmi   0.b		; 30 00
	sec		; 38
	bit $18.b		; 24 18
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	sec		; 38
	tsa		; 3B
	ror $3E3D.w,X		; 7E 3D 3E
	adc $3E1F.w,X		; 7D 1F 3E
	asl $0F0F.w,X		; 1E 0F 0F
	adc [$05.b]		; 67 05
	adc ($11.b,S),Y		; 73 11
	tda		; 7B
	bcc  -4.b		; 90 FC
	sec		; 38
	inc $FE1C.w,X		; FE 1C FE
	tsb $067F.w		; 0C 7F 06
	and $313F22.l,X		; 3F 22 3F 31
	and $884779.l		; 2F 79 47 88
	ora [$14.b],Y		; 17 14
	and $22.b,S		; 23 22
	eor $43.b		; 45 43
	ora [$83.b]		; 07 83
	ora [$21.b]		; 07 21
	cmp [$F3.b]		; C7 F3
	cpx #$F1.b		; E0 F1
	sbc ($00.b,S),Y		; F3 00
	inc $DE10.w		; EE 10 DE
	bmi -66.b		; 30 BE
	bvs  -1.b		; 70 FF
	bvs  -1.b		; 70 FF
	brk $FF.b		; 00 FF
	cpx #$FF.b		; E0 FF
	cpx #$FF.b		; E0 FF
	nop		; EA
	asl A		; 0A
	and $0E81C4.l,X		; 3F C4 81 0E
	jmp ($9D9F.w)		; 6C 9F 9D
	sbc $FDF9.w,X		; FD F9 FD
	sed		; F8
	jmp ($98F8.w,X)		; 7C F8 98
	sbc $0004F7.l,X		; FF F7 04 00
	sbc ($F5.b),Y		; F1 F5
	rts		; 60

	ror $9F08.w		; 6E 08 9F
	sed		; F8
	sbc $88FF38.l,X		; FF 38 FF 88
	sbc $2A4E2F.l,X		; FF 2F 4E 2A
	dex		; CA
	tsb $84.b		; 04 84
	sta ($04.b,X)		; 81 04
	jmp ($9C0E.w)		; 6C 0E 9C
	stz $FCF8.w		; 9C F8 FC
	sei		; 78
	jmp ($BF84.w,X)		; 7C 84 BF
	cop $3F.b		; 02 3F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	php		; 08
	sbc $78FFF8.l,X		; FF F8 FF 78
	sbc $060F06.l,X		; FF 06 0F 06
	ora $0C1F06.l,X		; 1F 06 1F 0C
	ora $0C1F0C.l,X		; 1F 0C 1F 0C
	and $183E18.l,X		; 3F 18 3E 18
	rol $080F.w,X		; 3E 0F 08
	ora $000F00.l		; 0F 00 0F 00
	ora $001E11.l,X		; 1F 11 1E 00
	asl $1E00.w,X		; 1E 00 1E
	cop $3E.b		; 02 3E
	jsl $048108.l		; 22 08 81 04
	sta ($0F.b,X)		; 81 0F
	sty $0E.b		; 84 0E
	asl $0E.b		; 06 0E
	tsb $0C1E.w		; 0C 1E 0C
	asl $1C0C.w,X		; 1E 0C 1C
	clc		; 18
	bra -121.b		; 80 87
	brk $0B.b		; 00 0B
	brk $1D.b		; 00 1D
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	php		; 08
	trb $3818.w		; 1C 18 38
	clc		; 18
	sec		; 38
	clc		; 18
	clc		; 18
	php		; 08
	tsb $0000.w		; 0C 00 00
	tsb $04.b		; 04 04
	tsb $1C04.w		; 0C 04 1C
	tsb $38.b		; 04 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	php		; 08
	sec		; 38
	clc		; 18
	sec		; 38
	clc		; 18
	clc		; 18
	clc		; 18
	tsb $0008.w		; 0C 08 00
	tsb $00.b		; 04 00
	tsb $1C00.w		; 0C 00 1C
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	eor $38.b,S		; 43 38
	eor $38.b,S		; 43 38
	lsr $38.b		; 46 38
	stz $19.b		; 64 19
	and ($0B.b),Y		; 31 0B
	jsl $3E0246.l		; 22 46 02 3E
	brk $3E.b		; 00 3E
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	cop $FE.b		; 02 FE
	ora $1C.b		; 05 1C
	ora $44.b		; 05 44
	ora $E2.b,S		; 03 E2
	sep #$01		; E2 01
	ora $00.b,S		; 03 00
	ora $E0.b,S		; 03 E0
	dec $F8.b		; C6 F8
	bit $38.b		; 24 38
	cmp ($18.b),Y		; D1 18
	nop		; EA
	ora $05F2.w		; 0D F2 05
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cpy #$DF.b		; C0 DF
	jsr $D02F.w		; 20 2F D0
	ora [$E8.b],Y		; 17 E8
	ora $FC03F0.l		; 0F F0 03 FC
	ora [$6A.b]		; 07 6A
	bra -30.b		; 80 E2
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	cpy #$D3.b		; C0 D3
	cpx #$E8.b		; E0 E8
	sbc ($00.b,S),Y		; F3 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$07.b		; E0 07
	brk $04.b		; 00 04
	cop $08.b		; 02 08
	tsb $01.b		; 04 01
	php		; 08
	ora ($28.b,S),Y		; 13 28
	ora [$70.b]		; 07 70
	rol $50.b		; 26 50
	tsb $0061.w		; 0C 61 00
	and ($01.b),Y		; 31 01
	ora ($03.b),Y		; 11 03
	and ($07.b,S),Y		; 33 07
	adc [$07.b],Y		; 77 07
	adc [$0F.b]		; 67 0F
	sbc $1ECF0F.l		; EF 0F CF 1E
	lsr $7FBE.w,X		; 5E BE 7F
	adc [$04.b],Y		; 77 04
	sep #$0C		; E2 0C
	cpy $18.b		; C4 18
	bit #$3330.w		; 89 30 33
	rti		; 40

	eor [$A0.b],Y		; 57 A0
	stx $60.b,Y		; 96 60
	tsb $F8FE.w		; 0C FE F8
	sbc $F1F0.w,X		; FD F0 F1
	cpx #$E3.b		; E0 E3
	cpy #$C7.b		; C0 C7
	bra -113.b		; 80 8F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	dec $BE3E.w,X		; DE 3E BE
	ror $0475.w,X		; 7E 75 04
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $FF.b		; 06 FF
	tsb $00FF.w		; 0C FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $04FF00.l,X		; FF 00 FF 04
	clc		; 18
	tya		; 98
	sei		; 78
	bmi  -8.b		; 30 F8
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	tsb $02.b		; 04 02
	php		; 08
	tsb $01.b		; 04 01
	php		; 08
	ora $08.b,S		; 03 08
	ora [$08.b]		; 07 08
	asl $10.b		; 06 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora $8A240F.l		; 0F 0F 24 8A
	pha		; 48
	trb $50.b		; 14 50
	and #$10A3.w		; 29 A3 10
	ldy #$50.b		; A0 50
	adc $02.b		; 65 02
	eor [$A0.b]		; 47 A0
	wai		; CB
	jsr $7171.w		; 20 71 71
	sbc $E3.b,S		; E3 E3
	dec $C6.b		; C6 C6
	dec $8ECE.w		; CE CE 8E
	sta $1C9D9C.l		; 8F 9C 9D 1C
	ora $1F1C.w,X		; 1D 1C 1F
	bmi -128.b		; 30 80
	ldy #$00.b		; A0 00
	rti		; 40

	brk $40.b		; 00 40
	brk $82.b		; 00 82
	brk $80.b		; 00 80
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	adc $007F00.l,X		; 7F 00 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $FE00.w,X		; FE 00 FE
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $28.b		; 00 28
	bpl  56.b		; 10 38
	php		; 08
	plp		; 28
	brk $10.b		; 00 10
	bpl   0.b		; 10 00
	php		; 08
	bmi  32.b		; 30 20
	bvs -16.b		; 70 F0
	cpx #$00.b		; E0 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $FC00.w,X		; FE 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	sty $C2BC.w		; 8C BC C2
	rol $0000.w		; 2E 00 00
	clc		; 18
	brk $20.b		; 00 20
	bpl   0.b		; 10 00
	stz $FE00.w		; 9C 00 FE
	brk $FE.b		; 00 FE
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $08.b,S		; 03 08
	ora $04.b,S		; 03 04
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0F0F0F.l		; 0F 0F 0F 0F
	ora $07070F.l		; 0F 0F 07 07
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	bra -113.b		; 80 8F
	bra -113.b		; 80 8F
	bra -113.b		; 80 8F
	brk $07.b		; 00 07
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
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $BC.b		; 00 BC
	brk $BE.b		; 00 BE
	brk $BE.b		; 00 BE
	brk $1E.b		; 00 1E
	brk $0C.b		; 00 0C
	sta $60.b,X		; 95 60
	rti		; 40

	and $C2.b,S		; 23 C2
	rol $2B.b		; 26 2B
	inc $04.b		; E6 04
	inc $1F.b,X		; F6 1F
	inc $385A.w,X		; FE 5A 38
	tsb $003E.w		; 0C 3E 00
	ora $009F00.l,X		; 1F 00 9F 00
	and $003F20.l,X		; 3F 20 3F 00
	adc $007F00.l,X		; 7F 00 7F 00
	sbc $61FF00.l,X		; FF 00 FF 61
	ora [$00.b],Y		; 17 00
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	php		; 08
	bpl   8.b		; 10 08
	pha		; 48
	bpl   0.b		; 10 00
	sei		; 78
	bra  96.b		; 80 60
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $3F.b		; 00 3F
	php		; 08
	adc $7216.w,Y		; 79 16 72
	ora ($70.b)		; 12 70
	php		; 08
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	ora ($3F.b)		; 12 3F
	and [$3F.b]		; 27 3F
	ora $191F3F.l		; 0F 3F 1F 19
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	sbc $FFFF62.l,X		; FF 62 FF FF
	sbc $0AFFFB.l,X		; FF FB FF 0A
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F7.b		; 00 F7
	brk $FF.b		; 00 FF
	adc ($FF.b,S),Y		; 73 FF
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra  55.b		; 80 37
.ACCU 8
.INDEX 8
	sep #$BF		; E2 BF
	sbc $00FB3F.l,X		; FF 3F FB 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	adc $F3BF80.l,X		; 7F 80 BF F3
	sbc $003FE0.l,X		; FF E0 3F 00
	ora $001F01.l,X		; 1F 01 1F 00
	and $103F00.l,X		; 3F 00 3F 10
	adc $207910.l,X		; 7F 10 79 20
	sbc $E021.w,Y		; F9 21 E0
	ora $03.b,S		; 03 03
	ora [$14.b],Y		; 17 14
	asl $14.b,X		; 16 14
	dec A		; 3A
	rol A		; 2A
	and $7009.w,Y		; 39 09 70
	rti		; 40

	bvs  16.b		; 70 10
	cpx #$9F.b		; E0 9F
	sed		; F8
	cmp $4B.b		; C5 4B
	ldy #$BB.b		; A0 BB
	rts		; 60

	sta $9F10.w		; 8D 10 9F
	sta ($5A.b,X)		; 81 5A
	cmp ($0C.b,X)		; C1 0C
	cmp ($90.b,X)		; C1 90
	adc ($C2.b)		; 72 C2
	ora ($86.b,X)		; 01 86
	bmi -90.b		; 30 A6
	and #$E6.b		; 29 E6
	bpl 126.b		; 10 7E
	brk $3F.b		; 00 3F
	ora [$7E.b]		; 07 7E
	rti		; 40

	bit $06A1.w		; 2C A1 06
	ora ($05.b),Y		; 11 05
	bpl   4.b		; 10 04
	bpl   4.b		; 10 04
	ora ($12.b)		; 12 12
	php		; 08
	php		; 08
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	asl $0E0E.w		; 0E 0E 0E
	asl $0C0E.w		; 0E 0E 0C
	tsb $0404.w		; 0C 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lsr A		; 4A
	bit $5E.b		; 24 5E
	jsr $401C.w		; 20 1C 40
	trb $40.b		; 14 40
	tsb $68.b		; 04 68
	brk $48.b		; 00 48
	bpl   8.b		; 10 08
	bmi   0.b		; 30 00
	clc		; 18
	tas		; 1B
	clc		; 18
	tas		; 1B
	sec		; 38
	and $103E38.l,X		; 3F 38 3E 10
	asl $30.b,X		; 16 30
	rol $70.b,X		; 36 70
	stz $78.b,X		; 74 78
	sei		; 78
	php		; 08
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	sbc $007F00.l,X		; FF 00 7F 00
	adc $7D00.w,X		; 7D 00 7D
	brk $79.b		; 00 79
	brk $79.b		; 00 79
	brk $79.b		; 00 79
	brk $79.b		; 00 79
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	bcc  96.b		; 90 60
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  80.b		; 30 50
	tsb $20.b		; 04 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	ora ($07.b,X)		; 01 07
	cop $07.b		; 02 07
	asl $0F.b		; 06 0F
	ora $1E.b		; 05 1E
	asl A		; 0A
	and $3A14.w,X		; 3D 14 3A
	bit $78.b		; 24 78
	pha		; 48
	beq   3.b		; F0 03
	brk $07.b		; 00 07
	tsb $07.b		; 04 07
	ora ($0E.b,X)		; 01 0E
	cop $1D.b		; 02 1D
	ora ($39.b),Y		; 11 39
	jsr $5777.w		; 20 77 57
	cpy $698F.w		; CC 8F 69
	jmp ($1472.w)		; 6C 72 14
	tax		; AA
	pla		; 68
	and $8E.b,S		; 23 8E
	lsr $1F.b,X		; 56 1F
	ldx $3F.b		; A6 3F
	lsr A		; 4A
	sbc [$14.b],Y		; F7 14
	pld		; 2B
	jsr $10FF.w		; 20 FF 10
	sbc $5D48.w,X		; FD 48 5D
	sbc ($86.b)		; F2 86
	sep #$06		; E2 06
	cmp ($16.b)		; D2 16
	jsr $002E.w		; 20 2E 00
	dec $BC41.w,X		; DE 41 BC
	.db $82, $4E, $56		; 82 4E 56
	ora ($24.b,X)		; 01 24
	cmp $14.b,S		; C3 14
	and $1DDE.w,X		; 3D DE 1D
	dec $15.b,X		; D6 15
	iny		; C8
	ora #$18.b		; 09 18
	stp		; DB
	bmi -13.b		; 30 F3
	bpl -19.b		; 10 ED
	brk $39.b		; 00 39
	dec $C2.b,X		; D6 C2
	inc $FEEA.w,X		; FE EA FE
	inc $F6FE.w		; EE FE F6
	cmp $0F.b,S		; C3 0F
	ldy $43.b		; A4 43
	bvc  32.b		; 50 20
	jsr $1510.w		; 20 10 15
	tsb $88.b		; 04 88
	bra -123.b		; 80 85
	sta $87.b		; 85 87
	lda [$00.b],Y		; B7 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $80FF80.l,X		; FF 80 FF 80
	sbc $50FF82.l,X		; FF 82 FF 50
	brk $52.b		; 00 52
	brk $49.b		; 00 49
	brk $48.b		; 00 48
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $A2.b		; 00 A2
	brk $C2.b		; 00 C2
	bra   0.b		; 80 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	lda $3FD8.w,X		; BD D8 3F
	lda $9ABE3F.l,X		; BF 3F BE 9A
	brk $E0.b		; 00 E0
	adc ($C1.b,X)		; 61 C1
	ora ($00.b,S),Y		; 13 00
	ora ($80.b,X)		; 01 80
	lda $9CFFC0.l,X		; BF C0 FF 9C
	adc $007F18.l,X		; 7F 18 7F 00
	adc $007F00.l,X		; 7F 00 7F 00
	adc $000000.l,X		; 7F 00 00 00
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	cpy #$E0.b		; C0 E0
	sbc ($B9.b,X)		; E1 B9
	phd		; 0B
	ora #$83.b		; 09 83
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	cpy #$FF.b		; C0 FF
	jsr $00FF.w		; 20 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	trb $3F00.w		; 1C 00 3F
	php		; 08
	adc $7216.w,Y		; 79 16 72
	ora ($70.b)		; 12 70
	php		; 08
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	ora ($3F.b)		; 12 3F
	and [$3F.b]		; 27 3F
	ora $191F3F.l		; 0F 3F 1F 19
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	sbc $FFFF62.l,X		; FF 62 FF FF
	sbc $0AFFFB.l,X		; FF FB FF 0A
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F7.b		; 00 F7
	brk $FF.b		; 00 FF
	adc ($FF.b,S),Y		; 73 FF
	rts		; 60

	rts		; 60

	brk $04.b		; 00 04
	rol A		; 2A
	php		; 08
	ora ($14.b)		; 12 14
	cop $29.b		; 02 29
	tsb $29.b		; 04 29
	bit $79.b		; 24 79
	bit $71.b,X		; 34 71
	stz $F0.b		; 64 F0
	stz $10.b		; 64 10
	ora ($00.b,S),Y		; 13 00
	and [$00.b]		; 27 00
	adc $007F00.l		; 6F 00 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $80F700.l,X		; FF 00 F7 80
	mvn $54,$80		; 54 80 54
	sty $52.b		; 84 52
	bit $92.b		; 24 92
	and ($89.b)		; 32 89
	and ($89.b)		; 32 89
	ora ($88.b,S),Y		; 13 88
	ora $F0.b,S		; 03 F0
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $0F.b		; 00 0F
	rts		; 60

	ora $20.b,S		; 03 20
	bcc -128.b		; 90 80
	eor $C0.b,X		; 55 C0
	and $61.b		; 25 61
	trb $61.b		; 14 61
	brk $06.b		; 00 06
	tya		; 98
	tsb $00BE.w		; 0C BE 00
	sta $00FF00.l,X		; 9F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc ($10.b,X)		; E1 10
	cmp ($07.b),Y		; D1 07
	ora $000F07.l,X		; 1F 07 0F 00
	brk $01.b		; 00 01
	jsr $9021.w		; 20 21 90
	and ($88.b),Y		; 31 88
	sta $9844.w,Y		; 99 44 98
	rti		; 40

	ora [$FF.b]		; 07 FF
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	mvp $14,$08		; 44 08 14
	bpl  72.b		; 10 48
	pha		; 48
	dec $E2.b		; C6 E2
	.db $42, $66		; 42 66
	.db $82, $86, $04		; 82 86 04
	cop $0A.b		; 02 0A
	bra   0.b		; 80 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $40FF80.l,X		; FF 80 FF 40
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $80FF00.l,X		; FF 00 FF 80
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	trb $CA.b		; 14 CA
	trb $14C6.w		; 1C C6 14
	cpy #$08.b		; C0 08
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sta $F3.b,S		; 83 F3
	eor $FF.b,S		; 43 FF
	sta ($FB.b,X)		; 81 FB
	php		; 08
	cpx $11.b		; E4 11
.INDEX 16
	rep #$10		; C2 10
	sta ($10.b,X)		; 81 10
	ora ($11.b,X)		; 01 11
	cop $AB.b		; 02 AB
	ora $E01771.l		; 0F 71 17 E0
	and [$C8.b]		; 27 C8
	phk		; 4B
	stz $1E9C.w		; 9C 9C 1E
	asl $1E1E.w,X		; 1E 1E 1E
	trb $CE1C.w		; 1C 1C CE
	cmp $FEEFF6.l,X		; DF F6 EF FE
	beq 127.b		; F0 7F
	sbc $9E7F3F.l,X		; FF 3F 7F 9E
	and $400E80.l,X		; 3F 80 0E 40
	jsr $FE86.w		; 20 86 FE
	cpy #$E0FE.w		; C0 FE E0
	sbc $1EFF37.l,X		; FF 37 FF 1E
	sbc $007F0C.l,X		; FF 0C 7F 00
	adc $38FF00.l,X		; 7F 00 FF 38
	ora $38.b,S		; 03 38
	ora ($6D.b,X)		; 01 6D
	ora ($01.b,S),Y		; 13 01
	adc $2E7825.l,X		; 7F 25 78 2E
	ror $3E0E.w,X		; 7E 0E 3E
	rol $C41E.w		; 2E 1E C4
	cmp $EE.b		; C5 EE
	inc $D5C5.w		; EE C5 D5
	brk $B3.b		; 00 B3
	brk $FB.b		; 00 FB
	tsb $0EFF.w		; 0C FF 0E
	sbc $85DF06.l,X		; FF 06 DF 85
	lda $02.b,X		; B5 02
	lda ($80.b)		; B2 80
	bra -128.b		; 80 80
	txa		; 8A
	bra  21.b		; 80 15
	cpy #$C8CC.w		; C0 CC C8
	dec $DF8B.w,X		; DE 8B DF
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cpy #$80FF.w		; C0 FF 80
	sbc $E0FF03.l,X		; FF 03 FF E0
	cpy #$E8F4.w		; C0 F4 E8
	adc ($F4.b)		; 72 F4
	lda $5076.w,Y		; B9 76 50
	tsa		; 3B
	jsr $781B.w		; 20 1B 78
	ora $00.b,S		; 03 00
	sta [$00.b]		; 87 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	sec		; 38
	jsr $101C.w		; 20 1C 10
	asl $0788.w		; 0E 88 07
	tsb $83.b		; 04 83
	.db $42, $81		; 42 81
	eor ($80.b,X)		; 41 80
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	eor $53.b,X		; 55 53
	.db $42, $7B		; 42 7B
	eor $1D2C3F.l		; 4F 3F 2C 1D
	stx $1F.b		; 86 1F
	pha		; 48
	stx $A0.b		; 86 A0
	rti		; 40

	rti		; 40

	jsr $FF10.w		; 20 10 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra   6.b		; 80 06
	ora ($08.b,X)		; 01 08
	sta ($05.b,X)		; 81 05
	ora $04.b,S		; 03 04
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	dey		; 88
	cpy #$FF00.w		; C0 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($3F.b,X)		; 01 3F
	cop $3F.b		; 02 3F
	ora ($7E.b,X)		; 01 7E
	ora ($7E.b,X)		; 01 7E
	ora ($FF.b,X)		; 01 FF
	brk $E3.b		; 00 E3
	asl $7581.w		; 0E 81 75
	and ($07.b)		; 32 07
	asl $0F.b		; 06 0F
	php		; 08
	and $7528.w		; 2D 28 75
	mvn $22,$62		; 54 62 22
	cpy #$805C.w		; C0 5C 80
	inc $FF20.w,X		; FE 20 FF
	sbc ($8A.b),Y		; F1 8A
	stx $40.b,Y		; 96 40
	adc [$C0.b],Y		; 77 C0
	inc A		; 1A
	and ($3E.b,X)		; 21 3E
	ora $B4.b,S		; 03 B4
	sta $18.b,S		; 83 18
	.db $82, $20, $E4		; 82 20 E4
	sty $02.b		; 84 02
	tsb $4C61.w		; 0C 61 4C
	eor ($CC.b)		; 52 CC
	jsr $00FC.w		; 20 FC 00
	ror $FC0E.w,X		; 7E 0E FC
	sta ($58.b,X)		; 81 58
	eor $E0.b,S		; 43 E0
	adc ($E0.b,X)		; 61 E0
	adc $60.b,S		; 63 60
	and ($60.b,X)		; 21 60
	jsr $0060.w		; 20 60 00
	jsr $2000.w		; 20 00 20
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	sbc [$01.b],Y		; F7 01
	sbc ($00.b),Y		; F1 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bmi -60.b		; 30 C4
	cpy $BE.b		; C4 BE
	bra  95.b		; 80 5F
	cpy #$E02F.w		; C0 2F E0
	ora $0E0338.l		; 0F 38 03 0E
	jsr $A91E.w		; 20 1E A9
	trb $0338.w		; 1C 38 03
	adc $80BF00.l,X		; 7F 00 BF 80
	eor $101740.l,X		; 5F 40 17 10
	ora $04.b		; 05 04
	ora $02.b,S		; 03 02
	eor [$7C.b]		; 47 7C
	asl $1F7F.w,X		; 1E 7F 1F
	sbc ($17.b),Y		; F1 17
	bvs -117.b		; 70 8B
	sec		; 38
	cmp $1C.b		; C5 1C
.INDEX 8
	sep #$1E		; E2 1E
	sbc ($0F.b,X)		; E1 0F
	cpx #$0F.b		; E0 0F
	jsr $AEA0.w		; 20 A0 AE
	ldy #$CF.b		; A0 CF
	rti		; 40

	sbc [$20.b]		; E7 20
	sbc ($10.b,S),Y		; F3 10
	sbc $14.b,X		; F5 14
	plx		; FA
	asl A		; 0A
	sbc $C009.w,Y		; F9 09 C0
	jsr $A043.w		; 20 43 A0
	sta [$C0.b]		; 87 C0
	cmp [$43.b]		; C7 43
	cmp $23.b		; C5 23
.ACCU 8
.INDEX 8
	sep #$31		; E2 31
	eor ($18.b,X)		; 41 18
	dey		; 88
	tya		; 98
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	bra  63.b		; 80 3F
	cpy #$1F.b		; C0 1F
	cpy #$1F.b		; C0 1F
	cpx #$0F.b		; E0 0F
	rts		; 60

	ora $084E16.l		; 0F 16 4E 08
	rol $00.b		; 26 00
	bcc -25.b		; 90 E7
	sbc $EDEFEE.l		; EF EE EF ED
	inc $000E.w		; EE 0E 00
	jsr $0000.w		; 20 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $E0FFC0.l,X		; FF C0 FF E0
	sbc $00FF60.l,X		; FF 60 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $28.b		; 00 28
	brk $54.b		; 00 54
	brk $30.b		; 00 30
	brk $58.b		; 00 58
	jsr $2E5C.w		; 20 5C 2E
	rol $160E.w,X		; 3E 0E 16
	asl $FE00.w		; 0E 00 FE
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $07.b		; 02 07
	ora $0F.b		; 05 0F
	cop $1F.b		; 02 1F
	tsb $3F.b		; 04 3F
	tsb $187F.w		; 0C 7F 18
	ror $0000.w,X		; 7E 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	phd		; 0B
	brk $1F.b		; 00 1F
	ora #$3E.b		; 09 3E
	ora ($7C.b)		; 12 7C
	stz $00.b		; 64 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
	cpy $82FC.w		; CC FC 82
	inc $0000.w		; EE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	clc		; 18
	brk $20.b		; 00 20
	bpl  32.b		; 10 20
	bpl -112.b		; 10 90
	jsr $F000.w		; 20 00 F0
	bpl -64.b		; 10 C0
	bcc  96.b		; 90 60
	rts		; 60

	brk $00.b		; 00 00
	inc $FE00.w,X		; FE 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	sei		; 78
	bra  48.b		; 80 30
	dey		; 88
	bcs   8.b		; B0 08
	rti		; 40

	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pha		; 48
	brk $30.b		; 00 30
	php		; 08
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  54.b		; 30 36
	brk $0E.b		; 00 0E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($1E.b,X)		; 21 1E
	adc ($6C.b)		; 72 6C
	jsr ($D830.w,X)		; FC 30 D8
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $0E.b		; 00 0E
	php		; 08
	asl $1C08.w		; 0E 08 1C
	php		; 08
	trb $1C00.w		; 1C 00 1C
	brk $0C.b		; 00 0C
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	tsb $0C00.w		; 0C 00 0C
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	cop $02.b		; 02 02
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	tsb $01.b		; 04 01
	ora $01.b		; 05 01
	ora $00.b		; 05 00
	cop $08.b		; 02 08
	tsb $11.b		; 04 11
	php		; 08
	eor [$20.b]		; 47 20
	ora $003C80.l,X		; 1F 80 3C 00
	ora $0C.b,S		; 03 0C
	bne  32.b		; D0 20
	bne   0.b		; D0 00
	ora $C3.b,S		; 03 C3
	ora [$C7.b]		; 07 C7
	ora $7F7F9F.l,X		; 1F 9F 7F 7F
	sbc $F0F0FF.l,X		; FF FF F0 F0
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	adc [$70.b],Y		; 77 70
	stp		; DB
	sec		; 38
	cpx $F91C.w		; EC 1C F9
	asl $C03F.w		; 0E 3F C0
	tya		; 98
	adc [$10.b]		; 67 10
	cmp $9F8010.l		; CF 10 80 9F
	beq -33.b		; F0 DF
	sed		; F8
	sbc $FEF0FC.l		; EF FC F0 FE
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	jsr $602F.w		; 20 2F 60
	adc $04378F.l		; 6F 8F 37 04
	tda		; 7B
	asl $FECD.w		; 0E CD FE
	ora ($03.b,X)		; 01 03
	sbc $00FF02.l,X		; FF 02 FF 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	bmi -61.b		; 30 C3
	tad		; 5B
	bcs -68.b		; B0 BC
	brk $01.b		; 00 01
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	lda ($F0.b,X)		; A1 F0
	rts		; 60

	beq -31.b		; F0 E1
	pea $E6C0.w		; F4 C0 E6
	ora $C3.b,S		; 03 C3
	brk $80.b		; 00 80
	ora $007F00.l,X		; 1F 00 7F 00
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	jsr $101C.w		; 20 1C 10
	tsb $040A.w		; 0C 0A 04
	asl $00.b		; 06 00
	rti		; 40

	brk $60.b		; 00 60
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	inc $FE00.w,X		; FE 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	cop $1F.b		; 02 1F
	asl $1F.b		; 06 1F
	tsb $0C3F.w		; 0C 3F 0C
	rol $3E18.w,X		; 3E 18 3E
	clc		; 18
	bit $3C18.w,X		; 3C 18 3C
	clc		; 18
	bit $080F.w,X		; 3C 0F 08
	ora $101E11.l,X		; 1F 11 1E 10
	rol $3C22.w,X		; 3E 22 3C
	jsr $003C.w		; 20 3C 00
	bit $3C04.w,X		; 3C 04 3C
	tsb $08.b		; 04 08
	bit $3C08.w,X		; 3C 08 3C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	bit $1824.w,X		; 3C 24 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	bpl   8.b		; 10 08
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	bpl   0.b		; 10 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	tsb $0C00.w		; 0C 00 0C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $007F00.l,X		; FF 00 7F 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $C00F00.l,X		; 1F 00 0F C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	ora $000F00.l		; 0F 00 0F 00
	ora $000600.l		; 0F 00 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($04.b,X)		; 01 04
	cop $04.b		; 02 04
	cop $04.b		; 02 04
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($1A.b,X)		; 01 1A
	sta $36.b		; 85 36
	sta ($31.b,X)		; 81 31
	php		; 08
	adc #$00.b		; 69 00
	adc ($10.b,X)		; 61 10
	cmp ($00.b),Y		; D1 00
	cpy #$00.b		; C0 00
	bra  32.b		; 80 20
	sei		; 78
	adc $7878.w,Y		; 79 78 78
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	cpx #$E4.b		; E0 E4
	bpl -124.b		; 10 84
	bpl -124.b		; 10 84
	bmi -124.b		; 30 84
	bmi -124.b		; 30 84
	bmi -124.b		; 30 84
	bcs   0.b		; B0 00
	bcs   0.b		; B0 00
	sei		; 78
	sed		; F8
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	bcs   8.b		; B0 08
	bcc  72.b		; 90 48
	bpl  72.b		; 10 48
	bpl  72.b		; 10 48
	bvc   8.b		; 50 08
	bvc   4.b		; 50 04
	rti		; 40

	tsb $40.b		; 04 40
	jsr $7070.w		; 20 70 70
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	trb $081C.w		; 1C 1C 08
	ora $04.b		; 05 04
	ora #$04.b		; 09 04
	ora #$1C.b		; 09 1C
	ora ($0D.b,X)		; 01 0D
	ora ($39.b)		; 12 39
	cop $3A.b		; 02 3A
	brk $3E.b		; 00 3E
	brk $02.b		; 00 02
	cop $06.b		; 02 06
	asl $06.b		; 06 06
	asl $0E.b		; 06 0E
	asl $0C0C.w		; 0E 0C 0C
	trb $1C1C.w		; 1C 1C 1C
	trb $0000.w		; 1C 00 00
	pha		; 48
	jsr $220C.w		; 20 0C 22
	tsb $2621.w		; 0C 21 26
	brk $23.b		; 00 23
	brk $1C.b		; 00 1C
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	trb $1C1C.w		; 1C 1C 1C
	asl $1F1E.w,X		; 1E 1E 1F
	ora $031F1F.l,X		; 1F 1F 1F 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rts		; 60

	bpl   0.b		; 10 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	and $00.b		; 25 00
	plp		; 28
	cop $2A.b		; 02 2A
	brk $08.b		; 00 08
	bit $0C.b		; 24 0C
	jsr $200C.w		; 20 0C 20
	rti		; 40

	jsr $3040.w		; 20 40 30
	asl $1C1E.w,X		; 1E 1E 1C
	trb $1C1C.w		; 1C 1C 1C
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
	tsb $1761.w		; 0C 61 17
	and ($06.b),Y		; 31 06
	bmi  10.b		; 30 0A
	clc		; 18
	ora $1D.b		; 05 1D
	ora $1F.b,S		; 03 1F
	ora $1E.b,S		; 03 1E
	ora ($08.b,S),Y		; 13 08
	and $000E21.l,X		; 3F 21 0E 00
	ora $000710.l,X		; 1F 10 07 00
	phd		; 0B
	ora #$01.b		; 09 01
	ora [$01.b]		; 07 01
	ora $201F07.l		; 0F 07 1F 20
	sty $CC68.w		; 8C 68 CC
	pha		; 48
	cpy $EC28.w		; CC 28 EC
	stz $8EFE.w,X		; 9E FE 8E
	inc $780C.w,X		; FE 0C 78
	jmp $7820.w		; 4C 20 78
	php		; 08
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	mvn $A6,$44		; 54 44 A6
	ldx $86.b		; A6 86
	stz $BE86.w,X		; 9E 86 BE
	stz $13FE.w,X		; 9E FE 13
	php		; 08
	ora $08.b,S		; 03 08
	ora ($0C.b,X)		; 01 0C
	ora #$04.b		; 09 04
	ora #$04.b		; 09 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	brk $04.b		; 00 04
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	iny		; C8
	jsr $20C8.w		; 20 C8 20
	iny		; C8
	jsr $20C8.w		; 20 C8 20
	bra  32.b		; 80 20
	ldy #$10.b		; A0 10
	ldy #$1C.b		; A0 1C
	tas		; 1B
	cpx #$1C.b		; E0 1C
	trb $1C1C.w		; 1C 1C 1C
	trb $1C1C.w		; 1C 1C 1C
	trb $1C1C.w		; 1C 1C 1C
	tsb $000C.w		; 0C 0C 00
	brk $1C.b		; 00 1C
	trb $0100.w		; 1C 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	php		; 08
	asl $1C10.w		; 0E 10 1C
	jsr $0038.w		; 20 38 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	tsb $38.b		; 04 38
	php		; 08
	brk $80.b		; 00 80
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cop $03.b		; 02 03
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	asl $04.b		; 06 04
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	cpy #$F0.b		; C0 F0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  16.b		; F0 10
	cpx #$20.b		; E0 20
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx $DA01.w		; EC 01 DA
	ora ($5A.b,X)		; 01 5A
	ora ($5A.b,X)		; 01 5A
	ora ($5A.b,X)		; 01 5A
	ora ($1A.b,X)		; 01 1A
	ora ($02.b,X)		; 01 02
	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	eor $003F00.l,X		; 5F 00 3F 00
	and $003F00.l,X		; 3F 00 3F 00
	and $003F00.l,X		; 3F 00 3F 00
	ora $450700.l,X		; 1F 00 07 45
	bit $41.b		; 24 41
	jsl $233146.l		; 22 46 31 23
	tya		; 98
	and ($8C.b),Y		; 31 8C
	cli		; 58
	stx $0C.b		; 86 0C
	.db $82, $40, $71		; 82 40 71
	tsb $FE.b		; 04 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	and ($AF.b,X)		; 21 AF
	rol $0EDE.w		; 2E DE 0E
	rol $0080.w		; 2E 80 00
	rti		; 40

	bra -128.b		; 80 80
	rti		; 40

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	rol $2F.b		; 26 2F
	cop $1F.b		; 02 1F
	brk $0E.b		; 00 0E
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $07.b		; 06 07
	tsb $07.b		; 04 07
	tsb $06.b		; 04 06
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$01.b]		; 07 01
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $98.b		; 00 98
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	adc ($1D.b),Y		; 71 1D
	adc ($1E.b),Y		; 71 1E
	bmi  22.b		; 30 16
	bmi   7.b		; 30 07
	bmi  11.b		; 30 0B
	clc		; 18
	ora $18.b,S		; 03 18
	ora $0C.b		; 05 0C
	and $202E21.l		; 2F 21 2E 20
	and $000F20.l		; 2F 20 0F 00
	ora $000710.l,X		; 1F 10 07 00
	ora $000308.l		; 0F 08 03 00
	clc		; 18
	jsr ($E610.w,X)		; FC 10 E6
	bit $E6.b,X		; 34 E6
	ldy $28E6.w,X		; BC E6 28
	adc $28.b,S		; 63 28
	adc $DE.b,S		; 63 DE
	adc ($D4.b,S),Y		; 73 D4
	adc ($24.b),Y		; 71 24
	bit $BC.b		; 24 BC
	ldy $98.b		; A4 98
	bra  26.b		; 80 1A
	cop $DE.b		; 02 DE
	.db $42, $DE		; 42 DE
	.db $42, $AC		; 42 AC
	jsr $21AF.w		; 20 AF 21
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($08.b,S),Y		; 13 08
	ora ($08.b,S),Y		; 13 08
	ora ($08.b,S),Y		; 13 08
	ora ($08.b,S),Y		; 13 08
	ora ($08.b,S),Y		; 13 08
	ora ($08.b,S),Y		; 13 08
	ora ($0C.b,X)		; 01 0C
	ora #$04.b		; 09 04
	ora [$17.b]		; 07 17
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	jmp $4C20.w		; 4C 20 4C
	jsr $204C.w		; 20 4C 20
	cpy $4C20.w		; CC 20 4C
	jsr $20CC.w		; 20 CC 20
	cpy $30.b		; C4 30
	cpx $10.b		; E4 10
	stz $9EDE.w,X		; 9E DE 9E
	stz $9E9E.w,X		; 9E 9E 9E
	stz $9E9E.w,X		; 9E 9E 9E
	stz $9E9E.w,X		; 9E 9E 9E
	stx $8E8E.w		; 8E 8E 8E
	stx $0401.w		; 8E 01 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora $02.b		; 05 02
	tsb $02.b		; 04 02
	tsb $02.b		; 04 02
	ora ($02.b,X)		; 01 02
	ora $00.b,S		; 03 00
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc [$00.b]		; E7 00
	cmp $009E00.l		; CF 00 9E 00
	sec		; 38
	brk $71.b		; 00 71
	php		; 08
	sbc $18.b,S		; E3 18
	cmp $008000.l		; CF 00 80 00
	sed		; F8
	sed		; F8
	sbc ($F1.b),Y		; F1 F1
	sbc $E3.b,S		; E3 E3
	cmp [$C7.b]		; C7 C7
	stx $86.b		; 86 86
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	bvs  64.b		; 70 40
	rts		; 60

	rti		; 40

	rts		; 60

	eor ($41.b,X)		; 41 41
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	cop $03.b		; 02 03
	asl $07.b		; 06 07
	bvs  16.b		; 70 10
	rts		; 60

	brk $60.b		; 00 60
	brk $41.b		; 00 41
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	rts		; 60

	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	jsr $4000.w		; 20 00 40
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ora $0C1F04.l,X		; 1F 04 1F 0C
	ora $0C1E0C.l,X		; 1F 0C 1E 0C
	asl $3E08.w,X		; 1E 08 3E
	clc		; 18
	bit $3C18.w,X		; 3C 18 3C
	ora $010F01.l		; 0F 01 0F 01
	asl $1E10.w,X		; 1E 10 1E
	ora ($1C.b)		; 12 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	bit $1E.b		; 24 1E
	and $071F0F.l,X		; 3F 0F 1F 07
	ora $000707.l		; 0F 07 07 00
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	cop $09.b		; 02 09
	tsb $12.b		; 04 12
	sbc $033F03.l,X		; FF 03 3F 03
	ora $000F03.l,X		; 1F 03 0F 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $1F1F00.l		; 0F 00 1F 1F
	adc $15BF2E.l,X		; 7F 2E BF 15
	sta $944E0A.l,X		; 9F 0A 4E 94
	eor $90.b		; 45 90
	eor #$92.b		; 49 92
	eor #$12.b		; 49 12
	cmp #$1C.b		; C9 1C
	sbc $11FF2C.l,X		; FF 2C FF 11
	sbc $04FF0A.l,X		; FF 0A FF 04
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $BCFF00.l,X		; FF 00 FF BC
	ror $F874.w,X		; 7E 74 F8
	bvs  -8.b		; 70 F8
	bmi 120.b		; 30 78
	brk $00.b		; 00 00
	brk $58.b		; 00 58
	bpl  72.b		; 10 48
	pha		; 48
	jsr $FF20.w		; 20 20 FF
	rts		; 60

	inc $FC60.w,X		; FE 60 FC
	jsr $00F8.w		; 20 F8 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora $07.b,S		; 03 07
	cop $0F.b		; 02 0F
	asl $0F.b		; 06 0F
	ora $1E.b		; 05 1E
	phd		; 0B
	trb $0101.w		; 1C 01 01
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	asl $00.b		; 06 00
	asl $0D08.w		; 0E 08 0D
	brk $1B.b		; 00 1B
	bpl -64.b		; 10 C0
	cpx #$90.b		; E0 90
	dec $3C.b		; C6 3C
	lda $6E.b,S		; A3 6E
	adc #$8F.b		; 69 8F
	jsr $2082.w		; 20 82 20
	bne 113.b		; D0 71
	tya		; 98
	sbc $03C0.w,Y		; F9 C0 03
	bra  47.b		; 80 2F
	brk $7F.b		; 00 7F
	rti		; 40

	sbc $CF7F8C.l,X		; FF 8C 7F CF
	ora $4E1E8E.l,X		; 1F 8E 1E 4E
	lsr $0000.w,X		; 5E 00 00
	eor ($4C.b,X)		; 41 4C
	lda [$18.b]		; A7 18
	lsr $5E12.w		; 4E 12 5E
	brk $A8.b		; 00 A8
	ldy #$E1.b		; A0 E1
	sbc ($E2.b),Y		; F1 E2
	lda ($E0.b)		; B2 E0
	sed		; F8
	ldy #$1E.b		; A0 1E
	cpx #$1F.b		; E0 1F
	rti		; 40

	lda $BEBF46.l,X		; BF 46 BF BE
	eor $AE0FEF.l,X		; 5F EF 0F AE
	ora $00E080.l		; 0F 80 E0 00
	rts		; 60

	bra -96.b		; 80 A0
	cpy #$E0.b		; C0 E0
	brk $A0.b		; 00 A0
	brk $10.b		; 00 10
	ldy #$90.b		; A0 90
	bvc -56.b		; 50 C8
	cpx #$20.b		; E0 20
	jsr $00A0.w		; 20 A0 00
	cpy #$40.b		; C0 40
	cpy #$00.b		; C0 00
	cpy #$60.b		; C0 60
	bra 112.b		; 80 70
	bpl -80.b		; 10 B0
	bra 124.b		; 80 7C
	dec $38.b		; C6 38
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	.db $42, $1C		; 42 1C
	.db $42, $3C		; 42 3C
	.db $62, $1C, $22		; 62 1C 22
	asl $1E22.w		; 0E 22 1E
	and ($38.b)		; 32 38
	brk $7C.b		; 00 7C
	rti		; 40

	jmp ($3E40.w,X)		; 7C 40 3E
	cop $1E.b		; 02 1E
	cop $3E.b		; 02 3E
	jsl $0C001C.l		; 22 1C 00 0C
	brk $01.b		; 00 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $03.b,S		; 03 03
	cop $03.b		; 02 03
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $20.b		; 00 20
	bmi  96.b		; 30 60
	beq 112.b		; F0 70
	sed		; F8
	bmi  -8.b		; 30 F8
	bmi  -8.b		; 30 F8
	bpl 120.b		; 10 78
	clc		; 18
	sei		; 78
	clc		; 18
	sec		; 38
	bvs -48.b		; 70 D0
	beq   0.b		; F0 00
	beq -128.b		; F0 80
	bvs   0.b		; 70 00
	sei		; 78
	pha		; 48
	sec		; 38
	brk $38.b		; 00 38
	jsr $2038.w		; 20 38 20
	php		; 08
	bit $3C08.w,X		; 3C 08 3C
	php		; 08
	trb $1C08.w		; 1C 08 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	clc		; 18
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	trb $1C.b		; 14 1C
	bpl  12.b		; 10 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	php		; 08
	inc A		; 1A
	rti		; 40

	clc		; 18
	.db $42, $18		; 42 18
	.db $42, $5C		; 42 5C
	brk $5C.b		; 00 5C
	brk $0D.b		; 00 0D
	jsr $200D.w		; 20 0D 20
	and $3C10.w		; 2D 10 3C
	bit $3C3C.w,X		; 3C 3C 3C
	bit $3E3C.w,X		; 3C 3C 3E
	rol $3E3E.w,X		; 3E 3E 3E
	asl $1E1E.w,X		; 1E 1E 1E
	asl $0E0E.w,X		; 1E 0E 0E
	ora $0510.w		; 0D 10 05
	bpl  21.b		; 10 15
	brk $15.b		; 00 15
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $01.b		; 00 01
	php		; 08
	asl $0E0E.w		; 0E 0E 0E
	asl $0E0E.w		; 0E 0E 0E
	asl $0E0E.w		; 0E 0E 0E
	asl $0E0E.w		; 0E 0E 0E
	asl $060E.w		; 0E 0E 06
	asl $00.b		; 06 00
	ora #$0000.w		; 09 00 00
	trb $0C00.w		; 1C 00 0C
	ora ($0D.b),Y		; 11 0D
	brk $19.b		; 00 19
	jsl $3C2402.l		; 22 02 24 3C
	brk $06.b		; 00 06
	asl $0F.b		; 06 0F
	ora $0E0F0F.l		; 0F 0F 0F 0E
	asl $1E1E.w		; 0E 1E 1E
	trb $181C.w		; 1C 1C 18
	clc		; 18
	brk $00.b		; 00 00
	rti		; 40

	cpy #$C040.w		; C0 40 C0
	rti		; 40

	cpy #$4000.w		; C0 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	jsr $C060.w		; 20 60 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $10.b		; 00 10
	bit $3C10.w,X		; 3C 10 3C
	bpl  56.b		; 10 38
	bpl  56.b		; 10 38
	bpl  56.b		; 10 38
	bpl  56.b		; 10 38
	bpl  48.b		; 10 30
	bpl  48.b		; 10 30
	sec		; 38
	jsr $0038.w		; 20 38 00
	sec		; 38
	php		; 08
	sec		; 38
	php		; 08
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	ora #$0304.w		; 09 04 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	tsb $01.b		; 04 01
	ora [$02.b]		; 07 02
	asl $03.b		; 06 03
	asl $01.b		; 06 01
	tsb $00.b		; 04 00
	ora $000F00.l,X		; 1F 00 0F 00
	ora [$00.b]		; 07 00
	ora $02.b,S		; 03 02
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $32.b		; 00 32
	bit #$9922.w		; 89 22 99
	rol $91.b		; 26 91
	ldy $13.b		; A4 13
	bit $12.b		; 24 12
	jsr $A121.w		; 20 21 A1
	tsa		; 3B
	lda ($3B.b,X)		; A1 3B
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cmp ($1F.b,X)		; C1 1F
	bne  16.b		; D0 10
	bne  16.b		; D0 10
	pha		; 48
	jsr $2040.w		; 20 40 20
	rti		; 40

	plp		; 28
	brk $18.b		; 00 18
	brk $B8.b		; 00 B8
	rts		; 60

	sec		; 38
	cpy #$D018.w		; C0 18 D0
	clc		; 18
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	bpl -16.b		; 10 F0
	beq -80.b		; F0 B0
	bne  16.b		; D0 10
	beq  16.b		; F0 10
	cpx #$0700.w		; E0 00 07
	and $3F02.w,X		; 3D 02 3F
	clc		; 18
	adc $20.b,S		; 63 20
	rti		; 40

	tsb $0ECC.w		; 0C CC 0E
	dec $DF06.w,X		; DE 06 DF
	eor $EF.b,S		; 43 EF
	ora ($00.b)		; 12 00
	and ($21.b,X)		; 21 21
	trb $321C.w		; 1C 1C 32
	rol $3E28.w,X		; 3E 28 3E
	tsb $C63F.w		; 0C 3F C6
	lda $08BFE3.l,X		; BF E3 BF 08
	sbc $08A81F.l,X		; FF 1F A8 08
	tsb $0F04.w		; 0C 04 0F
	ora $170307.l		; 0F 07 03 17
	ora [$2B.b]		; 07 2B
	ora ($E3.b,X)		; 01 E3
	dey		; 88
	tya		; 98
	ora [$1F.b]		; 07 1F
	ora $1B.b,S		; 03 1B
	brk $0C.b		; 00 0C
	brk $0F.b		; 00 0F
	ora ($0F.b,X)		; 01 0F
	ora ($97.b),Y		; 11 97
	ora $42FF.w,Y		; 19 FF 42
	inc $401E.w,X		; FE 1E 40
	cop $E4.b		; 02 E4
	cpx #$F8FC.w		; E0 FC F8
	jsr ($FAF0.w,X)		; FC F0 FA
	beq  -3.b		; F0 FD
	sed		; F8
	sbc ($40.b),Y		; F1 40
	ora $BC.b,S		; 03 BC
	lda $005B18.l,X		; BF 18 5B 00
	inc $E0.b		; E6 E0
	inc $FCE0.w,X		; FE E0 FC
.ACCU 8
.INDEX 8
	sep #$FA		; E2 FA
	inc $FF.b		; E6 FF
	bpl -56.b		; 10 C8
	php		; 08
	stz $00.b		; 64 00
	bit $04.b,X		; 34 04
	cop $00.b		; 02 00
	cop $38.b		; 02 38
	and $7970.w,Y		; 39 70 79
	cpx #$F1.b		; E0 F1
	sei		; 78
	pha		; 48
	sec		; 38
	jsr $141C.w		; 20 1C 14
	bit $4438.w,X		; 3C 38 44
	jmp ($7E32.w,X)		; 7C 32 7E
	.db $62, $FE, $43		; 62 FE 43
	sbc $06130E.l,X		; FF 0E 13 06
	ora ($06.b,S),Y		; 13 06
	ora ($0A.b,S),Y		; 13 0A
	tas		; 1B
	asl $1F.b		; 06 1F
	ora $1F.b,S		; 03 1F
	ora [$1F.b]		; 07 1F
	cop $08.b		; 02 08
	trb $1C10.w		; 1C 10 1C
	bpl  13.b		; 10 0D
	ora ($05.b,X)		; 01 05
	ora ($09.b,X)		; 01 09
	ora #$0F.b		; 09 0F
	ora $070F03.l		; 0F 03 0F 07
	ora $000300.l		; 0F 00 03 00
	ora $04.b,S		; 03 04
	asl $04.b		; 06 04
	sty $00.b		; 84 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	bra   3.b		; 80 03
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra  64.b		; 80 40
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	eor ($20.b,X)		; 41 20
	adc ($20.b,X)		; 61 20
	and ($01.b,X)		; 21 01
	ora ($01.b,X)		; 01 01
	ora ($C0.b,X)		; 01 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($70.b,X)		; 01 70
	cpy $C870.w		; CC 70 C8
	jsr $3088.w		; 20 88 30
	tya		; 98
	bmi -104.b		; 30 98
	cpx #$F8.b		; E0 F8
	cpx #$F8.b		; E0 F8
	pha		; 48
	bpl  56.b		; 10 38
	php		; 08
	sec		; 38
	php		; 08
	sei		; 78
	php		; 08
	inx		; E8
	dey		; 88
	inx		; E8
	dey		; 88
	beq -16.b		; F0 F0
	cpx #$F0.b		; E0 F0
	cpx #$F8.b		; E0 F8
	clc		; 18
	eor $38.b,S		; 43 38
	eor $7C.b,S		; 43 7C
	lsr $70.b		; 46 70
	dec $38.b		; C6 38
	sty $8C30.w		; 8C 30 8C
	rts		; 60

	dey		; 88
	bvs -104.b		; 70 98
	ror $7E42.w,X		; 7E 42 7E
	.db $42, $38		; 42 38
	brk $3C.b		; 00 3C
	tsb $70.b		; 04 70
	brk $78.b		; 00 78
	php		; 08
	sed		; F8
	dey		; 88
	cpx #$80.b		; E0 80
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	sec		; 38
	brk $30.b		; 00 30
	php		; 08
	bmi  64.b		; 30 40
	cli		; 58
	tsb $40.b		; 04 40
	bit $3C.b		; 24 3C
	brk $60.b		; 00 60
	rts		; 60

	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	ora #$22.b		; 09 22
	eor #$02.b		; 49 02
	eor ($02.b),Y		; 51 02
	eor ($04.b)		; 52 04
	eor ($04.b)		; 52 04
	eor ($04.b)		; 52 04
	bvc   4.b		; 50 04
	mvn $1C,$08		; 54 08 1C
	ora $3C3C.w,X		; 1D 3C 3C
	bit $383C.w,X		; 3C 3C 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	bmi  48.b		; 30 30
	mvn $50,$08		; 54 08 50
	php		; 08
	bvc   8.b		; 50 08
	bpl  72.b		; 10 48
	bpl  72.b		; 10 48
	bpl   8.b		; 10 08
	brk $08.b		; 00 08
	brk $38.b		; 00 38
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $07.b		; 02 07
	and $2F.b,X		; 35 2F
	asl $5F.b		; 06 5F
	eor $7F.b,X		; 55 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	and [$30.b],Y		; 37 30
	rol $5C20.w		; 2E 20 5C
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	beq 112.b		; F0 70
	jsr ($FE88.w,X)		; FC 88 FE
	stz $8E.b,X		; 74 8E
	tya		; 98
	ror $0000.w		; 6E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	sed		; F8
	bpl -52.b		; 10 CC
	rti		; 40

	beq -128.b		; F0 80
	bcc   0.b		; 90 00
	jsr $2077.w		; 20 77 20
	adc ($20.b)		; 72 20
	bvs  35.b		; 70 23
	adc ($20.b),Y		; 71 20
	adc ($20.b,S),Y		; 73 20
	adc ($21.b,S),Y		; 73 21
	tda		; 7B
	jsr $737A.w		; 20 7A 73
	bvc 114.b		; 50 72
	eor ($70.b),Y		; 51 70
	eor ($71.b,S),Y		; 53 71
	eor ($70.b,X)		; 41 70
	rti		; 40

	adc ($41.b),Y		; 71 41
	sei		; 78
	php		; 08
	adc $0008.w,Y		; 79 08 00
	brk $1C.b		; 00 1C
	brk $EF.b		; 00 EF
	cpx #$D0.b		; E0 D0
	cmp [$28.b],Y		; D7 28
	cpx $C2.b		; E4 C2
	sbc ($E0.b),Y		; F1 E0
	and ($E2.b,S),Y		; 33 E2
	and ($03.b,S),Y		; 33 03
	jsr ($FF00.w,X)		; FC 00 FF
	cpy #$FF.b		; C0 FF
	bra  -8.b		; 80 F8
	ora $3B.b,S		; 03 3B
	brk $1F.b		; 00 1F
	cpy #$0C.b		; C0 0C
	cpy #$0E.b		; C0 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $84.b		; 00 84
	sty $04.b		; 84 04
	tsb $64.b		; 04 64
	bit $1F7F.w		; 2C 7F 1F
	sbc $FF3F3F.l,X		; FF 3F 3F FF
	sbc $1F3F3F.l,X		; FF 3F 3F 1F
	lda $84E404.l,X		; BF 04 E4 84
	stz $04.b,X		; 74 04
	sbc $CE3F15.l,X		; FF 15 3F CE
	sbc $CEFF7F.l,X		; FF 7F FF CE
	sbc $2E7F55.l,X		; FF 55 7F 2E
	sbc $DEFF8E.l,X		; FF 8E FF DE
	ror $FEFE.w,X		; 7E FE FE
	jmp ($FCFC.w,X)		; 7C FC FC
	bit $9CF8.w,X		; 3C F8 9C
	pea $04C8.w		; F4 C8 04
	adc $1CEE0C.l,X		; 7F 0C EE 1C
	cmp $08FF1C.l,X		; DF 1C FF 08
	inc $FE00.w,X		; FE 00 FE
	bra  -2.b		; 80 FE
	rti		; 40

	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	jsr $0000.w		; 20 00 00
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	php		; 08
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	inx		; E8
	beq   0.b		; F0 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$40.b		; C0 40
	bra  32.b		; 80 20
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	jsr ($8000.w,X)		; FC 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	brk $10.b		; 00 10
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $0C7F.w		; 2E 7F 0C
	adc $283F29.l,X		; 7F 29 3F 28
	and $2C3F28.l,X		; 3F 28 3F 2C
	and $203F26.l,X		; 3F 26 3F 20
	and $3E047E.l,X		; 3F 7E 04 3E
	bpl  44.b		; 10 2C
	brk $2D.b		; 00 2D
	ora #$2D.b		; 09 2D
	ora #$2D.b		; 09 2D
	ora $2E.b		; 05 2E
	php		; 08
	and [$14.b],Y		; 37 14
	jmp ($F081.w,X)		; 7C 81 F0
	ora ($70.b,X)		; 01 70
	ora ($BC.b,X)		; 01 BC
	sta ($42.b,X)		; 81 42
	cmp $3C.b,S		; C3 3C
	inc $F000.w,X		; FE 00 F0
	ora $007EEE.l		; 0F EE 7E 00
	inc $FE0C.w,X		; FE 0C FE
	tsb $007E.w		; 0C 7E 00
	ldy $C080.w,X		; BC 80 C0
	cpy #$FC.b		; C0 FC
	inc $7170.w,X		; FE 70 71
	bmi 122.b		; 30 7A
	and ($7A.b),Y		; 31 7A
	bmi 126.b		; 30 7E
	rol $79.b,X		; 36 79
	and $70.b,S		; 23 70
	and $1E7C.w		; 2D 7C 1E
	ror $FF1E.w,X		; 7E 1E FF
	adc $7908.w,Y		; 79 08 79
	php		; 08
	tda		; 7B
	asl A		; 0A
	adc [$07.b],Y		; 77 07
	adc $1F631F.l,X		; 7F 1F 63 1F
	eor $DC3F.w		; 4D 3F DC
	lda $8133E1.l,X		; BF E1 33 81
	and ($40.b,S),Y		; 33 40
	adc $05.b,S		; 63 05
	rts		; 60

	ora $C4.b		; 05 C4
	sta $47.b,S		; 83 47
	ora ($83.b,X)		; 01 83
	php		; 08
	ora ($C0.b,X)		; 01 C0
	ora $802FE0.l		; 0F E0 2F 80
	ora $845FC0.l,X		; 1F C0 5F 84
	lda $00BF81.l,X		; BF 81 BF 00
	and $20BF00.l,X		; 3F 00 BF 20
	adc [$20.b],Y		; 77 20
	adc ($20.b)		; 72 20
	bvs  35.b		; 70 23
	adc ($20.b),Y		; 71 20
	adc ($20.b,S),Y		; 73 20
	adc ($21.b,S),Y		; 73 21
	tda		; 7B
	jsr $737A.w		; 20 7A 73
	bvc 114.b		; 50 72
	eor ($70.b),Y		; 51 70
	eor ($71.b,S),Y		; 53 71
	eor ($70.b,X)		; 41 70
	rti		; 40

	adc ($41.b),Y		; 71 41
	sei		; 78
	php		; 08
	adc $0008.w,Y		; 79 08 00
	brk $1C.b		; 00 1C
	brk $ED.b		; 00 ED
	sbc $D0.b,S		; E3 D0
	cmp [$28.b],Y		; D7 28
	cpx $C0.b		; E4 C0
	sbc ($E0.b)		; F2 E0
	and ($E2.b,S),Y		; 33 E2
	and ($03.b,S),Y		; 33 03
	jsr ($FF00.w,X)		; FC 00 FF
	cpy #$FF.b		; C0 FF
	bra  -8.b		; 80 F8
	ora $3B.b,S		; 03 3B
	ora ($1D.b,X)		; 01 1D
	cpy #$0C.b		; C0 0C
	cpy #$0E.b		; C0 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	tsb $0F.b		; 04 0F
	rtl		; 6B

	eor $ABBF0C.l,X		; 5F 0C BF AB
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	adc $415D60.l		; 6F 60 5D 41
	lda $0008.w,Y		; B9 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpx #$E0.b		; E0 E0
	sed		; F8
	bpl  -4.b		; 10 FC
	inx		; E8
	trb $DC30.w		; 1C 30 DC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	beq  32.b		; F0 20
	tya		; 98
	bra -32.b		; 80 E0
	brk $20.b		; 00 20
	brk $18.b		; 00 18
	dec $DF9E.w,X		; DE 9E DF
	dec $FEFE.w,X		; DE FE FE
	inc $FC7C.w,X		; FE 7C FC
	ldy $BC7C.w,X		; BC 7C BC
	jmp.w [$48F4]		; DC F4 48
	and #$3D.b		; 29 3D
	bit $1CBE.w,X		; 3C BE 1C
	cmp $0CFF3C.l,X		; DF 3C FF 0C
	inc $FE00.w,X		; FE 00 FE
	bra  -2.b		; 80 FE
	rti		; 40

	inc $8000.w,X		; FE 00 80
	bra -128.b		; 80 80
	cpx #$E0.b		; E0 E0
	bpl -104.b		; 10 98
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	rts		; 60

	cpx #$00.b		; E0 00
	clc		; 18
	brk $06.b		; 00 06
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora $0F.b,S		; 03 0F
	sbc $3F3FFF.l,X		; FF FF 3F 3F
	ora $1F1F3F.l,X		; 1F 3F 1F 1F
	ora $6181BF.l,X		; 1F BF 81 61
	cmp ($31.b,X)		; C1 31
	jsl $FFC2D7.l		; 22 D7 C2 FF
	inc $CEFF.w,X		; FE FF CE
	sbc $48FFEF.l,X		; FF EF FF 48
	eor $000000.l,X		; 5F 00 00 00
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	php		; 08
	brk $08.b		; 00 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi 122.b		; 30 7A
	and ($7A.b),Y		; 31 7A
	bmi 126.b		; 30 7E
	rol $79.b,X		; 36 79
	and $70.b,S		; 23 70
	and $1E7C.w		; 2D 7C 1E
	ror $FF1E.w,X		; 7E 1E FF
	adc $7908.w,Y		; 79 08 79
	php		; 08
	tda		; 7B
	asl A		; 0A
	adc [$07.b],Y		; 77 07
	adc $1F631F.l,X		; 7F 1F 63 1F
	eor $DC3F.w		; 4D 3F DC
	lda $8133E1.l,X		; BF E1 33 81
	and ($40.b,S),Y		; 33 40
	adc $04.b,S		; 63 04
	adc ($07.b,X)		; 61 07
	dec $83.b		; C6 83
	eor [$01.b]		; 47 01
	sta $08.b,S		; 83 08
	ora ($C0.b,X)		; 01 C0
	ora $802FE0.l		; 0F E0 2F 80
	ora $865FC0.l,X		; 1F C0 5F 86
	lda $00BF81.l,X		; BF 81 BF 00
	and $5CBF00.l,X		; 3F 00 BF 5C
	sbc $52FE19.l,X		; FF 19 FE 52
	ror $7F51.w,X		; 7E 51 7F
	bvc 127.b		; 50 7F
	cli		; 58
	adc $407F4C.l,X		; 7F 4C 7F 40
	adc $7D08FC.l,X		; 7F FC 08 7D
	jsr $0059.w		; 20 59 00
	phy		; 5A
	ora ($5B.b)		; 12 5B
	ora ($5B.b,S),Y		; 13 5B
	phd		; 0B
	eor $6E11.w,X		; 5D 11 6E
	plp		; 28
	sed		; F8
	cop $E0.b		; 02 E0
	cop $E0.b		; 02 E0
	cop $78.b		; 02 78
	cop $84.b		; 02 84
	stx $78.b		; 86 78
	jsr ($E000.w,X)		; FC 00 E0
	trb $FCDC.w		; 1C DC FC
	brk $FC.b		; 00 FC
	clc		; 18
	jsr ($FC18.w,X)		; FC 18 FC
	brk $78.b		; 00 78
	brk $80.b		; 00 80
	bra  -4.b		; 80 FC
	jsr ($E3E0.w,X)		; FC E0 E3
	jsr $2077.w		; 20 77 20
	adc ($20.b)		; 72 20
	bvs  35.b		; 70 23
	adc ($20.b),Y		; 71 20
	adc ($20.b,S),Y		; 73 20
	adc ($21.b,S),Y		; 73 21
	tda		; 7B
	jsr $737A.w		; 20 7A 73
	bvc 114.b		; 50 72
	eor ($70.b),Y		; 51 70
	eor ($71.b,S),Y		; 53 71
	eor ($70.b,X)		; 41 70
	rti		; 40

	adc ($41.b),Y		; 71 41
	sei		; 78
	php		; 08
	adc $0008.w,Y		; 79 08 00
	brk $1C.b		; 00 1C
	brk $EF.b		; 00 EF
	cpx #$D0.b		; E0 D0
	cmp [$28.b],Y		; D7 28
	cpx $C0.b		; E4 C0
	sbc ($E0.b)		; F2 E0
	and ($E2.b,S),Y		; 33 E2
	and ($03.b,S),Y		; 33 03
	jsr ($FF00.w,X)		; FC 00 FF
	cpy #$FF.b		; C0 FF
	bra  -8.b		; 80 F8
	ora $3B.b,S		; 03 3B
	ora ($1D.b,X)		; 01 1D
	cpy #$0C.b		; C0 0C
	cpy #$0E.b		; C0 0E
	jsr $1020.w		; 20 20 10
	bpl  16.b		; 10 10
	trb $FC0C.w		; 1C 0C FC
	ora $1F1F1F.l,X		; 1F 1F 1F 1F
	rol $C63F.w,X		; 3E 3F C6
	inc $6080.w		; EE 80 60
	cpy #$30.b		; C0 30
	bmi -48.b		; 30 D0
	asl $FF0E.w		; 0E 0E FF
	sbc $FEFFFF.l		; EF FF FF FE
	inc $D757.w,X		; FE 57 D7
	brk $00.b		; 00 00
	tsb $2000.w		; 0C 00 20
	bmi -64.b		; 30 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	ora $00.b,S		; 03 00
	tsb $3000.w		; 0C 00 30
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	tsb $0F.b		; 04 0F
	rtl		; 6B

	eor $ABBF0C.l,X		; 5F 0C BF AB
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	adc $415D60.l		; 6F 60 5D 41
	lda $0008.w,Y		; B9 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpx #$E0.b		; E0 E0
	sed		; F8
	bpl  -4.b		; 10 FC
	inx		; E8
	trb $DC30.w		; 1C 30 DC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	beq  32.b		; F0 20
	tya		; 98
	bra -32.b		; 80 E0
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi 122.b		; 30 7A
	and ($7A.b),Y		; 31 7A
	bmi 126.b		; 30 7E
	rol $79.b,X		; 36 79
	and $70.b,S		; 23 70
	and $1E7C.w		; 2D 7C 1E
	ror $FF1E.w,X		; 7E 1E FF
	adc $7908.w,Y		; 79 08 79
	php		; 08
	tda		; 7B
	asl A		; 0A
	adc [$07.b],Y		; 77 07
	adc $1F631F.l,X		; 7F 1F 63 1F
	eor $DC3F.w		; 4D 3F DC
	lda $8D33E1.l,X		; BF E1 33 8D
	and ($40.b,S),Y		; 33 40
	eor $04.b,S		; 43 04
	adc ($07.b,X)		; 61 07
	dec $83.b		; C6 83
	eor [$01.b]		; 47 01
	sta $08.b,S		; 83 08
	ora ($C0.b,X)		; 01 C0
	ora $802FE0.l		; 0F E0 2F 80
	and $865FC0.l,X		; 3F C0 5F 86
	lda $00BF81.l,X		; BF 81 BF 00
	and $06BF00.l,X		; 3F 00 BF 06
	dec $DF8F.w		; CE 8F DF
	cmp $FEFEFF.l,X		; DF FF FE FE
	jmp ($FCFC.w,X)		; 7C FC FC
	bit $9CFC.w,X		; 3C FC 9C
	pea $37C8.w		; F4 C8 37
	and [$2D.b],Y		; 37 2D
	lda $1CDF1C.l		; AF 1C DF 1C
	sbc $00FE0C.l,X		; FF 0C FE 00
	inc $FE80.w,X		; FE 80 FE
	rti		; 40

	inc $8000.w,X		; FE 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	rti		; 40

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	brk $40.b		; 00 40
	brk $20.b		; 00 20
	jmp $FE19FF.l		; 5C FF 19 FE
	eor ($7E.b)		; 52 7E
	eor ($7F.b),Y		; 51 7F
	bvc 127.b		; 50 7F
	cli		; 58
	adc $407F4C.l,X		; 7F 4C 7F 40
	adc $7D08FC.l,X		; 7F FC 08 7D
	jsr $0059.w		; 20 59 00
	phy		; 5A
	ora ($5B.b)		; 12 5B
	ora ($5B.b,S),Y		; 13 5B
	phd		; 0B
	eor $6E11.w,X		; 5D 11 6E
	plp		; 28
	sed		; F8
	cop $E0.b		; 02 E0
	cop $E0.b		; 02 E0
	cop $78.b		; 02 78
	cop $84.b		; 02 84
	stx $78.b		; 86 78
	jsr ($E000.w,X)		; FC 00 E0
	trb $FCDC.w		; 1C DC FC
	brk $FC.b		; 00 FC
	clc		; 18
	jsr ($FC18.w,X)		; FC 18 FC
	ora ($78.b,X)		; 01 78
	ora ($80.b,X)		; 01 80
	bra  -4.b		; 80 FC
	jsr ($E3E0.w,X)		; FC E0 E3
	jsr $2077.w		; 20 77 20
	adc ($20.b)		; 72 20
	bvs  35.b		; 70 23
	adc ($20.b),Y		; 71 20
	adc ($20.b,S),Y		; 73 20
	adc ($21.b)		; 72 21
	tda		; 7B
	jsr $737A.w		; 20 7A 73
	bvc 114.b		; 50 72
	eor ($70.b),Y		; 51 70
	eor ($71.b,S),Y		; 53 71
	eor ($70.b,X)		; 41 70
	rti		; 40

	bvs  65.b		; 70 41
	sei		; 78
	php		; 08
	adc $0008.w,Y		; 79 08 00
	brk $1C.b		; 00 1C
	brk $EF.b		; 00 EF
	cpx #$D0.b		; E0 D0
	cmp [$28.b],Y		; D7 28
	cpx $67.b		; E4 67
	ora $E233E0.l,X		; 1F E0 33 E2
	and ($03.b,S),Y		; 33 03
	jsr ($FF00.w,X)		; FC 00 FF
	cpy #$FF.b		; C0 FF
	bra  -8.b		; 80 F8
	ora $3B.b,S		; 03 3B
	brk $FF.b		; 00 FF
	cpy #$0C.b		; C0 0C
	cpy #$0E.b		; C0 0E
	tsb $00.b		; 04 00
	rti		; 40

	tsb $04.b		; 04 04
	bit $FD15.w		; 2C 15 FD
	asl $FF1E.w,X		; 1E 1E FF
	sbc $151F0E.l,X		; FF 0E 1F 15
	lda $6480.w,X		; BD 80 64
	bra 116.b		; 80 74
	brk $F4.b		; 00 F4
	asl $17.b		; 06 17
	sbc $FFFFEF.l,X		; FF EF FF FF
	inc $46EE.w		; EE EE 46
	eor [$00.b],Y		; 57 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	inc $8000.w,X		; FE 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  -1.b		; F0 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	tsb $0F.b		; 04 0F
	rtl		; 6B

	eor $ABBF0C.l,X		; 5F 0C BF AB
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	adc $415D60.l		; 6F 60 5D 41
	lda $0008.w,Y		; B9 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpx #$E0.b		; E0 E0
	sed		; F8
	bpl  -4.b		; 10 FC
	inx		; E8
	trb $DC30.w		; 1C 30 DC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	beq  32.b		; F0 20
	tya		; 98
	bra -32.b		; 80 E0
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
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi 122.b		; 30 7A
	and ($7A.b),Y		; 31 7A
	bmi 126.b		; 30 7E
	rol $79.b,X		; 36 79
	and $70.b,S		; 23 70
	and $1E7C.w		; 2D 7C 1E
	ror $FF1E.w,X		; 7E 1E FF
	adc $7908.w,Y		; 79 08 79
	php		; 08
	tda		; 7B
	asl A		; 0A
	adc [$07.b],Y		; 77 07
	adc $1F631F.l,X		; 7F 1F 63 1F
	eor $DC3F.w		; 4D 3F DC
	lda $8133E1.l,X		; BF E1 33 81
	and ($40.b,S),Y		; 33 40
	adc $04.b,S		; 63 04
	adc ($07.b,X)		; 61 07
	dec $83.b		; C6 83
	eor [$01.b]		; 47 01
	sta $08.b,S		; 83 08
	ora ($C0.b,X)		; 01 C0
	ora $802FE0.l		; 0F E0 2F 80
	ora $865FC0.l,X		; 1F C0 5F 86
	lda $00BF81.l,X		; BF 81 BF 00
	and $04BF00.l,X		; 3F 00 BF 04
	inc $9FCA.w		; EE CA 9F
	dec $FAFA.w,X		; DE FA FA
	plx		; FA
	jmp ($FCFC.w,X)		; 7C FC FC
	bit $9CFC.w,X		; 3C FC 9C
	pea $11C8.w		; F4 C8 11
	and $28.b,X		; 35 28
	inc $DF18.w		; EE 18 DF
	clc		; 18
	sbc $00FE0C.l,X		; FF 0C FE 00
	inc $FE80.w,X		; FE 80 FE
	rti		; 40

	inc $8000.w,X		; FE 00 80
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	jmp $FE19FF.l		; 5C FF 19 FE
	eor ($7E.b)		; 52 7E
	eor ($7F.b),Y		; 51 7F
	bvc 127.b		; 50 7F
	cli		; 58
	adc $407F4C.l,X		; 7F 4C 7F 40
	adc $7D08FC.l,X		; 7F FC 08 7D
	jsr $0059.w		; 20 59 00
	phy		; 5A
	ora ($5B.b)		; 12 5B
	ora ($5B.b,S),Y		; 13 5B
	phd		; 0B
	eor $6E11.w,X		; 5D 11 6E
	plp		; 28
	sed		; F8
	cop $E0.b		; 02 E0
	cop $E0.b		; 02 E0
	cop $78.b		; 02 78
	cop $84.b		; 02 84
	stx $78.b		; 86 78
	jsr ($E000.w,X)		; FC 00 E0
	trb $FCDC.w		; 1C DC FC
	brk $FC.b		; 00 FC
	clc		; 18
	jsr ($FC18.w,X)		; FC 18 FC
	brk $78.b		; 00 78
	brk $80.b		; 00 80
	bra  -4.b		; 80 FC
	jsr ($E3E0.w,X)		; FC E0 E3
	brk $07.b		; 00 07
	ora ($05.b,X)		; 01 05
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	asl $281F.w,X		; 1E 1F 28
	plp		; 28
	and $35.b,X		; 35 35
	tas		; 1B
	tas		; 1B
	asl $05.b		; 06 05
	tsb $07.b		; 04 07
	ora ($07.b,X)		; 01 07
	brk $1F.b		; 00 1F
	trb $283F.w		; 1C 3F 28
	adc $137E21.l,X		; 7F 21 7E 13
	bit $F8F0.w,X		; 3C F0 F8
	cpx #$F0.b		; E0 F0
	cmp ($E0.b,X)		; C1 E0
	bra -63.b		; 80 C1
	tsb $40.b		; 04 40
	asl $C0.b		; 06 C0
	ora [$C0.b]		; 07 C0
	asl $C1.b		; 06 C1
	cpx #$FD.b		; E0 FD
	cpy #$F9.b		; C0 F9
	bra -11.b		; 80 F5
	brk $E7.b		; 00 E7
	rti		; 40

	cmp $C0.b,S		; C3 C0
	eor ($C0.b,X)		; 41 C0
	rti		; 40

	cpy #$40.b		; C0 40
	eor ($23.b,X)		; 41 23
	bcc  72.b		; 90 48
	rol $91.b		; 26 91
	jmp $CC22.w		; 4C 22 CC
	jsl $194499.l		; 22 99 44 19
	mvp $88,$13		; 44 13 88
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra  -1.b		; 80 FF
	bne -80.b		; D0 B0
	bvs -16.b		; 70 F0
	jsr $D060.w		; 20 60 D0
	tsb $90.b		; 04 90
	mvp $44,$90		; 44 90 44
	bit $90.b		; 24 90
	jsr $9090.w		; 20 90 90
	sed		; F8
	rts		; 60

	sed		; F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	bmi  60.b		; 30 3C
	bmi  56.b		; 30 38
	jsr $2078.w		; 20 78 20
	sei		; 78
	jsr $2070.w		; 20 70 20
	bvs  32.b		; 70 20
	bvs  96.b		; 70 60
	bvs  56.b		; 70 38
	brk $38.b		; 00 38
	php		; 08
	sei		; 78
	pha		; 48
	bvs  64.b		; 70 40
	bvs  64.b		; 70 40
	bvs  16.b		; 70 10
	bvs  16.b		; 70 10
	rts		; 60

	brk $07.b		; 00 07
	brk $07.b		; 00 07
	bpl  15.b		; 10 0F
	bpl  15.b		; 10 0F
	bpl  30.b		; 10 1E
	bmi  14.b		; 30 0E
	jsr $210D.w		; 20 0D 21
	bit $0F61.w,X		; 3C 61 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	bpl  15.b		; 10 0F
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	jsr $011F.w		; 20 1F 01
	tay		; A8
	sta ($A8.b)		; 92 A8
	sta ($80.b)		; 92 80
	ldy $00.b		; A4 00
	bit $40.b		; 24 40
	jsr $2840.w		; 20 40 28
	brk $48.b		; 00 48
	ldy #$00.b		; A0 00
	sty $8C0C.w		; 8C 0C 8C
	tsb $1898.w		; 0C 98 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	bpl  16.b		; 10 10
	bmi  48.b		; 30 30
	bvs 112.b		; 70 70
	bit $10.b		; 24 10
	plp		; 28
	cop $28.b		; 02 28
	cop $08.b		; 02 08
	bit $08.b		; 24 08
	bit $48.b		; 24 48
	bit $48.b		; 24 48
	bit $40.b		; 24 40
	bit $0E.b		; 24 0E
	asl $1C1C.w		; 0E 1C 1C
	trb $181C.w		; 1C 1C 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	jsr $0458.w		; 20 58 04
	sec		; 38
	mvp $00,$B0		; 44 B0 00
	beq   8.b		; F0 08
	rts		; 60

	bra   0.b		; 80 00
	bcc   0.b		; 90 00
	rts		; 60

	trb $381C.w		; 1C 1C 38
	sec		; 38
	sec		; 38
	sec		; 38
	sei		; 78
	sei		; 78
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
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
	bvc  36.b		; 50 24
	cli		; 58
	bit $58.b		; 24 58
	jsr $200C.w		; 20 0C 20
	tsb $12.b		; 04 12
	tsb $12.b		; 04 12
	brk $0A.b		; 00 0A
	brk $0E.b		; 00 0E
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	trb $1C1C.w		; 1C 1C 1C
	trb $0C0C.w		; 1C 0C 0C
	tsb $040C.w		; 0C 0C 04
	tsb $00.b		; 04 00
	brk $89.b		; 00 89
	and $71D5.w,Y		; 39 D5 71
	ora $71.b,X		; 15 71
	tsb $8E61.w		; 0C 61 8E
	sbc $1E.b,S		; E3 1E
	sbc $3C.b,S		; E3 3C
	sbc $38.b,S		; E3 38
	.db $62, $D6, $10		; 62 D6 10
	stx $CE00.w		; 8E 00 CE
	rti		; 40

	lda $213D21.l,X		; BF 21 3D 21
	ldy $1EA0.w,X		; BC A0 1E
	cop $1E.b		; 02 1E
	cop $5C.b		; 02 5C
	lsr $58.b		; 46 58
	lsr $30.b		; 46 30
	mvp $44,$30		; 44 30 44
	clv		; B8
	jmp ($7CB8.w,X)		; 7C B8 7C
	pla		; 68
	tsb $0060.w		; 0C 60 00
	sec		; 38
	brk $3C.b		; 00 3C
	tsb $7C.b		; 04 7C
	mvp $40,$78		; 44 78 40
	bpl -16.b		; 10 F0
	clc		; 18
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	tsb $62.b		; 04 62
	ora ($64.b,X)		; 01 64
	sta ($C4.b,X)		; 81 C4
	bit #$C4.b		; 89 C4
	wai		; CB
	cpy $C3.b		; C4 C3
	iny		; C8
	rep #$C8		; C2 C8
	dec $C8.b		; C6 C8
	eor ($01.b,X)		; 41 01
	eor $03.b,S		; 43 03
	cmp $03.b,S		; C3 03
	cmp $03.b,S		; C3 03
	cmp $03.b,S		; C3 03
	cmp [$07.b]		; C7 07
	cmp [$07.b]		; C7 07
	cmp [$07.b]		; C7 07
.INDEX 16
	rep #$11		; C2 11
.INDEX 16
	rep #$11		; C2 11
	.db $82, $21, $82		; 82 21 82
	and ($00.b,X)		; 21 00
	.db $42, $00		; 42 00
	.db $42, $00		; 42 00
	.db $82, $04, $82		; 82 04 82
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$C0C0.w		; E0 C0 C0
	cpy #$81C0.w		; C0 C0 81
	sta ($81.b,X)		; 81 81
	sta ($01.b,X)		; 81 01
	ora ($01.b,X)		; 01 01
	ora ($60.b,X)		; 01 60
	brk $60.b		; 00 60
	php		; 08
	rts		; 60

	php		; 08
	rts		; 60

	brk $C0.b		; 00 C0
	bpl -64.b		; 10 C0
	bpl -128.b		; 10 80
	jsr $2080.w		; 20 80 20
	sed		; F8
	sed		; F8
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$C0C0.w		; E0 C0 C0
	cpy #$03C0.w		; C0 C0 03
	ora [$02.b]		; 07 02
	ora $020F02.l		; 0F 02 0F 02
	ora $060F02.l		; 0F 02 0F 06
	ora $040F04.l		; 0F 04 0F 04
	ora $0F1807.l		; 0F 07 18 0F
	php		; 08
	ora $080F08.l		; 0F 08 0F 08
	ora $010F08.l		; 0F 08 0F 01
	ora $010F01.l		; 0F 01 0F 01
	cop $C1.b		; 02 C1
	cop $C1.b		; 02 C1
	ora $C1.b,S		; 03 C1
	ora ($83.b,X)		; 01 83
	brk $82.b		; 00 82
	brk $82.b		; 00 82
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	cpy #$C1C0.w		; C0 C0 C1
	cmp ($80.b,X)		; C1 80
	bra -128.b		; 80 80
	bra -127.b		; 80 81
	bra   3.b		; 80 03
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	brk $13.b		; 00 13
	iny		; C8
	sbc $E0.b,S		; E3 E0
	xce		; FB
	dey		; 88
	pea $F404.w		; F4 04 F4
	ora [$F1.b]		; 07 F1
	ora [$F9.b]		; 07 F9
	ora $C00EE2.l		; 0F E2 0E C0
	sbc $701F00.l,X		; FF 00 1F 70
	ora [$F8.b]		; 07 F8
	ora $F9.b,S		; 03 F9
	ora ($FC.b,X)		; 01 FC
	tsb $F2.b		; 04 F2
	cop $F9.b		; 02 F9
	php		; 08
	bit $90.b		; 24 90
	rol $80.b		; 26 80
	tsb $98.b		; 04 98
	brk $38.b		; 00 38
	cpy #$40F0.w		; C0 F0 40
	bvs  64.b		; 70 40
	bvs  64.b		; 70 40
	bvs   0.b		; 70 00
	plx		; FA
	brk $F8.b		; 00 F8
	bpl -16.b		; 10 F0
	bmi -16.b		; 30 F0
	bmi  48.b		; 30 30
	bcs  48.b		; B0 30
	ldy #$A020.w		; A0 20 A0
	jsr $7040.w		; 20 40 70
	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	eor ($60.b,X)		; 41 60
	brk $61.b		; 00 61
	cop $61.b		; 02 61
	brk $62.b		; 00 62
	tsb $62.b		; 04 62
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	jsr $2060.w		; 20 60 20
	rti		; 40

	ora ($40.b,X)		; 01 40
	ora ($41.b,X)		; 01 41
	ora ($41.b,X)		; 01 41
	ora ($3A.b,X)		; 01 3A
	adc $18.b,S		; 63 18
	.db $42, $14		; 42 14
	stx $F8.b		; 86 F8
	jsr ($F8F4.w,X)		; FC F4 F8
	adc $18.b,X		; 75 18
	sbc ($08.b,X)		; E1 08
	inx		; E8
	ora ($1C.b,X)		; 01 1C
	brk $7E.b		; 00 7E
	.db $42, $78		; 42 78
	brk $74.b		; 00 74
	pea $FC70.w		; F4 70 FC
	beq  -4.b		; F0 FC
	beq  -8.b		; F0 F8
	beq  -8.b		; F0 F8
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	ora ($0F.b,X)		; 01 0F
	ora $1F.b,S		; 03 1F
	ora $1F.b,S		; 03 1F
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora $03.b,S		; 03 03
	ora [$06.b]		; 07 06
	ora [$04.b]		; 07 04
	ora $080F08.l		; 0F 08 0F 08
	rti		; 40

	jsr ($F800.w,X)		; FC 00 F8
	brk $F0.b		; 00 F0
	rti		; 40

	cpx #$E080.w		; E0 80 E0
	sta ($C0.b,X)		; 81 C0
	ora ($C0.b,X)		; 01 C0
	brk $81.b		; 00 81
	sed		; F8
	tay		; A8
	beq  80.b		; F0 50
	cpx #$E080.w		; E0 80 E0
	jsr $01C0.w		; 20 C0 01
	cpy #$8041.w		; C0 41 80
	ora ($80.b,X)		; 01 80
	sta $B9.b,S		; 83 B9
	sta ($70.b,X)		; 81 70
	ora $E0.b		; 05 E0
	asl $3880.w		; 0E 80 38
	tsb $E3.b		; 04 E3
	ora $1F87.w,Y		; 19 87 1F
	brk $2B.b		; 00 2B
	eor [$7C.b]		; 47 7C
	ora $FC.b,S		; 03 FC
	ora [$F8.b]		; 07 F8
	phd		; 0B
	beq  55.b		; F0 37
	cpy #$00DF.w		; C0 DF 00
	and $003F00.l,X		; 3F 00 3F 00
	ora $145048.l,X		; 1F 48 50 14
	pha		; 48
	clc		; 18
	sty $6C.b		; 84 6C
	adc ($F5.b,X)		; 61 F5
	sbc ($FB.b)		; F2 FB
	sed		; F8
	sbc $99F8.w,Y		; F9 F8 99
	rts		; 60

	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	adc ($FD.b,X)		; 61 FD
	sbc ($FF.b,S),Y		; F3 FF
	sbc $FF.b,S		; E3 FF
	ora $FF.b,S		; 03 FF
	brk $80.b		; 00 80
	jsr $3090.w		; 20 90 30
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
	ora $0000F8.l,X		; 1F F8 00 00
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

	ldy #$C020.w		; A0 20 C0
	sbc [$84.b],Y		; F7 84
	sbc $10DF08.l		; EF 08 DF 10
	ldx $7C20.w,Y		; BE 20 7C
	rts		; 60

	sei		; 78
	rti		; 40

	beq -64.b		; F0 C0
	beq -61.b		; F0 C3
	sbc ($87.b),Y		; F1 87
	sbc ($0E.b),Y		; F1 0E
.INDEX 8
	sep #$1C		; E2 1C
	cpy $38.b		; C4 38
	dey		; 88
	bvs  16.b		; 70 10
	bvs  16.b		; 70 10
	cpx #$20.b		; E0 20
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
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	ora $020E02.l		; 0F 02 0E 02
	asl $1F00.w		; 0E 00 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	phd		; 0B
	php		; 08
	tas		; 1B
	inc A		; 1A
	tsa		; 3B
	ora $BE00.w,Y		; 19 00 BE
	bra  -1.b		; 80 FF
	phy		; 5A
	adc $9BBF9F.l,X		; 7F 9F BF 9B
	and $3E7F19.l,X		; 3F 19 7F 3E
	sbc ($54.b),Y		; F1 54
	tay		; A8
	brk $00.b		; 00 00
	ldx $DF22.w,Y		; BE 22 DF
	bra -33.b		; 80 DF
	cmp ($FF.b,S),Y		; D3 FF
	cmp ($BD.b)		; D2 BD
	bra -15.b		; 80 F1
	ora ($E1.b,X)		; 01 E1
	txa		; 8A
	ora ($03.b,X)		; 01 03
	brk $07.b		; 00 07
	ora ($0F.b,X)		; 01 0F
	ora $1F.b,S		; 03 1F
	asl $1F.b		; 06 1F
	tsb $183F.w		; 0C 3F 18
	ror $FE20.w,X		; 7E 20 FE
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	ora $181F0C.l		; 0F 0C 1F 18
	asl $3C10.w,X		; 1E 10 3C
	jsr $547C.w		; 20 7C 54
	rts		; 60

	sbc $F3C1.w,Y		; F9 C1 F3
	sta $EC.b		; 85 EC
	ora $DC.b,S		; 03 DC
	clc		; 18
	lda $02.b,S		; A3 02
	ora ($1C.b,X)		; 01 1C
	bit $3D7C.w,X		; 3C 7C 3D
	beq -128.b		; F0 80
	cpx #$00.b		; E0 00
	cmp $00.b,S		; C3 00
	sta $00.b,S		; 83 00
	ora $061D.w,X		; 1D 1D 06
	rol $7F0B.w,X		; 3E 0B 7F
	trb $7C7E.w		; 1C 7E 7C
	jmp ($7D78.w,X)		; 7C 78 7D
	beq 121.b		; F0 79
	cpx #$F1.b		; E0 F1
	bne -31.b		; D0 E1
	cpy #$E1.b		; C0 E1
	rts		; 60

	sbc ($E0.b,X)		; E1 E0
	sbc ($38.b,S),Y		; F3 38
	ror $FE70.w,X		; 7E 70 FE
	rts		; 60

	jsr ($F840.w,X)		; FC 40 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	adc ($F1.b,X)		; 61 F1
	sbc ($F1.b,X)		; E1 F1
	brk $78.b		; 00 78
	jsr $1038.w		; 20 38 10
	clc		; 18
	bpl  24.b		; 10 18
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	rts		; 60

	rti		; 40

	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl  16.b		; 10 10
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
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
	brk $B2.b		; 00 B2
	sta $34.b		; 85 34
	sta $78.b,S		; 83 78
	dec $19.b		; C6 19
	pei ($33.b)		; D4 33
	inx		; E8
	asl $F0.b		; 06 F0
	bit $48C0.w		; 2C C0 48
	ldx #$78.b		; A2 78
	brk $F8.b		; 00 F8
	bra -79.b		; 80 B1
	sta ($63.b,X)		; 81 63
	eor $47.b,S		; 43 47
	eor [$2F.b]		; 47 2F
	and $1C1F1F.l		; 2F 1F 1F 1C
	trb $1F06.w		; 1C 06 1F
	asl $1F.b		; 06 1F
	tsb $0C1F.w		; 0C 1F 0C
	ora $181F1C.l,X		; 1F 1C 1F 18
	ora $081E18.l,X		; 1F 18 1E 08
	asl $101F.w,X		; 1E 1F 10
	ora $011F11.l,X		; 1F 11 1F 01
	asl $1E00.w,X		; 1E 00 1E
	cop $1E.b		; 02 1E
	cop $1E.b		; 02 1E
	cop $1E.b		; 02 1E
	cop $01.b		; 02 01
	sta ($01.b,X)		; 81 01
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $47.b		; 00 47
	lda $0B0F27.l		; AF 27 0F 0B
	ora [$1C.b]		; 07 1C
	ora $639F6F.l		; 0F 6F 9F 63
	sta $008100.l,X		; 9F 00 81 00
	tax		; AA
	eor $5F.b,S		; 43 5F
	sbc $FF.b,S		; E3 FF
	sbc $FF.b,S		; E3 FF
	cpx #$FF.b		; E0 FF
	ora $1F.b,S		; 03 1F
	adc $7F.b,S		; 63 7F
	rts		; 60

	adc $F25F40.l,X		; 7F 40 5F F2
	sta $C0.b		; 85 C0
	inc $C4.b		; E6 C4
.ACCU 8
	sep #$E8		; E2 E8
	cpx $40.b		; E4 40
	sed		; F8
	cpy #$D0.b		; C0 D0
	cpy #$C0.b		; C0 C0
	jsr $0260.w		; 20 60 02
	plx		; FA
	dey		; 88
	sed		; F8
	cpy $C8FC.w		; CC FC C8
	sed		; F8
	rti		; 40

	cpx #$80.b		; E0 80
	cpx #$40.b		; E0 40
	beq   0.b		; F0 00
	sed		; F8
	phd		; 0B
	clv		; B8
	ora #$38.b		; 09 38
	cpy $FC.b		; C4 FC
	adc ($3F.b,X)		; 61 3F
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
	ldy #$30.b		; A0 30
	bne  24.b		; D0 18
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
	adc $80E080.l,X		; 7F 80 E0 80
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	rts		; 60

	brk $70.b		; 00 70
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	rti		; 40

	rti		; 40

	rts		; 60

	rts		; 60

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
	brk $FF.b		; 00 FF
	rti		; 40

	xce		; FB
	bra -15.b		; 80 F1
	brk $E1.b		; 00 E1
	brk $C0.b		; 00 C0
	cop $82.b		; 02 82
	ora ($0D.b,X)		; 01 0D
	inc A		; 1A
	and ($7B.b,S),Y		; 33 7B
	clc		; 18
	sbc ($10.b),Y		; F1 10
	cpx #$20.b		; E0 20
	cpy #$40.b		; C0 40
	sta ($81.b,X)		; 81 81
	cop $1F.b		; 02 1F
	brk $33.b		; 00 33
	tsb $4E41.w		; 0C 41 4E
	clv		; B8
	pld		; 2B
	ldy $2F.b		; A4 2F
	ldy #$26.b		; A0 26
	cpx #$0A.b		; E0 0A
	sei		; 78
	bra -97.b		; 80 9F
	rti		; 40

	pha		; 48
	mvn $69,$48		; 54 48 69
	asl A		; 0A
	eor $DF04.w,Y		; 59 04 DF
	bra  95.b		; 80 5F
	eor ($97.b,X)		; 41 97
	sta ($A0.b),Y		; 91 A0
	cpx #$50.b		; E0 50
	beq   0.b		; F0 00
	cpx #$3A.b		; E0 3A
	sty $0470.w		; 8C 70 04
	cpx #$08.b		; E0 08
	cpy #$10.b		; C0 10
	bra  32.b		; 80 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	ror $F8F8.w,X		; 7E F8 F8
	beq -16.b		; F0 F0
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $3501.w		; 2C 01 35
	brk $3D.b		; 00 3D
	brk $5E.b		; 00 5E
	jsr $304E.w		; 20 4E 30
	eor [$18.b]		; 47 18
	ora ($4C.b,S),Y		; 13 4C
	sta ($4C.b,S),Y		; 93 4C
	asl $0E1E.w,X		; 1E 1E 0E
	asl $0606.w		; 0E 06 06
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	jsr $3020.w		; 20 20 30
	bmi  48.b		; 30 30
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $90.b		; 00 90
	jmp $4894.w		; 4C 94 48
	sty $48.b,X		; 94 48
	sty $48.b,X		; 94 48
	bcc  72.b		; 90 48
	bcc  72.b		; 90 48
	bpl  72.b		; 10 48
	tsb $40.b		; 04 40
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	sec		; 38
	sec		; 38
	rti		; 40

	tsb $70.b		; 04 70
	brk $72.b		; 00 72
	brk $70.b		; 00 70
	asl A		; 0A
	sei		; 78
	brk $78.b		; 00 78
	tsb $3C.b		; 04 3C
	brk $3E.b		; 00 3E
	brk $38.b		; 00 38
	sec		; 38
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0404.w		; 0C 04 04
	asl $06.b		; 06 06
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $3C.b		; 00 3C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	sec		; 38
	plp		; 28
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($3C.b,X)		; 01 3C
	phd		; 0B
	bmi  18.b		; 30 12
	plp		; 28
	bit $11.b		; 24 11
	jsr $4C00.w		; 20 00 4C
	cop $80.b		; 02 80
	brk $F0.b		; 00 F0
	tsb $0B.b		; 04 0B
	phd		; 0B
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	asl $1E0E.w		; 0E 0E 1E
	asl $3C3C.w,X		; 1E 3C 3C
	jmp ($787C.w,X)		; 7C 7C 78
	sei		; 78
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	asl $0F.b		; 06 0F
	asl $3C3F.w		; 0E 3F 3C
	adc $00FE58.l,X		; 7F 58 FE 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	brk $7C.b		; 00 7C
	brk $08.b		; 00 08
	asl $1E08.w,X		; 1E 08 1E
	php		; 08
	asl $1C00.w,X		; 1E 00 1C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	trb $1C00.w		; 1C 00 1C
	bpl  28.b		; 10 1C
	bpl  12.b		; 10 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	php		; 08
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	cpx #$40.b		; E0 40
	cpx #$00.b		; E0 00
	rts		; 60

	bra  96.b		; 80 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$40.b		; C0 40
	cpx #$A0.b		; E0 A0
	cpx #$80.b		; E0 80
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	asl A		; 0A
	asl $02.b		; 06 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora $000300.l		; 0F 00 03 00
	ora ($75.b,X)		; 01 75
	rol $44DB.w		; 2E DB 44
	adc $408F20.l		; 6F 20 8F 40
	stx $0781.w		; 8E 81 07
	ora ($0E.b,X)		; 01 0E
	brk $8D.b		; 00 8D
	sta $0E.b,S		; 83 0E
	ror $E424.w		; 6E 24 E4
	bpl 112.b		; 10 70
	bmi -16.b		; 30 F0
	bvs -15.b		; 70 F1
	sed		; F8
	sbc $F1F1.w,Y		; F9 F1 F1
	bvs -13.b		; 70 F3
	sbc $44FF44.l,X		; FF 44 FF 44
	sbc $44FF55.l,X		; FF 55 FF 44
	sbc ($3F.b),Y		; F1 3F
	inc $7F11.w		; EE 11 7F
	bra  -1.b		; 80 FF
	sta ($44.b),Y		; 91 44
	mvp $44,$44		; 44 44 44
	eor $55.b,X		; 55 55
	mvp $7F,$44		; 44 44 7F
	adc $001111.l,X		; 7F 11 11 00
	bra  17.b		; 80 11
	sta ($FC.b),Y		; 91 FC
	rti		; 40

	inc $FF40.w,X		; FE 40 FF
	rti		; 40

	sbc $84F740.l,X		; FF 40 F7 84
	xba		; EB
	asl $33ED.w		; 0E ED 33
	sta ($21.b)		; 92 21
	eor $43.b,S		; 43 43
	eor ($41.b,X)		; 41 41
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	iny		; C8
	cpy $1E10.w		; CC 10 1E
	brk $3F.b		; 00 3F
	rti		; 40

	adc ($F1.b,S),Y		; 73 F1
	.db $82, $E6, $07		; 82 E6 07
	wai		; CB
	tsb $18D4.w		; 0C D4 18
	inx		; E8
	bmi -88.b		; 30 A8
	bmi -112.b		; 30 90
	clc		; 18
	sty $0C08.w		; 8C 08 0C
	sta $301F18.l		; 8F 18 1F 30
	and $003C20.l,X		; 3F 20 3C 00
	sec		; 38
	rti		; 40

	sei		; 78
	rts		; 60

	sei		; 78
	bvs 124.b		; 70 7C
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra  64.b		; 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $AB08.w,Y		; 19 08 AB
	clc		; 18
	eor ($30.b,S),Y		; 53 30
	and $10.b,S		; 23 10
	ora $1808.w,Y		; 19 08 18
	php		; 08
	jsr $5310.w		; 20 10 53
	and ($06.b,S),Y		; 33 06
	asl $BC04.w,X		; 1E 04 BC
	tsb $0C7C.w		; 0C 7C 0C
	bit $1E06.w,X		; 3C 06 1E
	ora [$1F.b]		; 07 1F
	ora $7F0C3F.l		; 0F 3F 0C 7F
	lda [$21.b],Y		; B7 21
	lda [$01.b],Y		; B7 01
	sta [$21.b],Y		; 97 21
	lda [$31.b],Y		; B7 31
	cmp $03.b		; C5 03
	sbc $047B03.l		; EF 03 7B 04
	adc $794906.l,X		; 7F 06 49 79
	eor #$79.b		; 49 79
	eor #$79.b		; 49 79
	phk		; 4B
	tda		; 7B
	tsa		; 3B
	tsa		; 3B
	ora ($13.b,S),Y		; 13 13
	sty $84.b		; 84 84
	stx $86.b		; 86 86
	and $140F15.l		; 2F 15 0F 14
	and $DF12.w,X		; 3D 12 DF
	sec		; 38
	rol $0101.w,X		; 3E 01 01
	brk $01.b		; 00 01
	brk $0A.b		; 00 0A
	ora ($05.b,X)		; 01 05
	and $04.b,X		; 35 04
	trb $02.b		; 14 02
	and ($00.b)		; 32 00
	sed		; F8
	brk $3F.b		; 00 3F
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $0B.b		; 00 0B
	cmp $00.b,S		; C3 00
	lda ($30.b,S),Y		; B3 30
	eor ($70.b,S),Y		; 53 70
	ldx $E0.b		; A6 E0
	rol $5DE0.w		; 2E E0 5D
	cmp ($F9.b,X)		; C1 F9
	cmp ($F2.b,X)		; C1 F2
	sta $3C.b,S		; 83 3C
	bit $7C4C.w,X		; 3C 4C 7C
	sty $19FC.w		; 8C FC 19
	sbc $F111.w,Y		; F9 11 F1
	jsl $C706E3.l		; 22 E3 06 C7
	tsb $EE8F.w		; 0C 8F EE
	adc ($FD.b,S),Y		; 73 FD
	.db $42, $FF		; 42 FF
	eor $FF59F6.l		; 4F F6 59 FF
	and ($FF.b,X)		; 21 FF
	ora ($BF.b,S),Y		; 13 BF
	tsb $019F.w		; 0C 9F 01
	adc ($72.b)		; 72 72
	.db $42, $42		; 42 42
	eor $59594F.l		; 4F 4F 59 59
	and ($21.b,X)		; 21 21
	ora ($13.b,S),Y		; 13 13
	jmp $614C.w		; 4C 4C 61
	adc ($0F.b,X)		; 61 0F
	ora ($1F.b)		; 12 1F
	tax		; AA
	ldx $FFFB.w,Y		; BE FB FF
	ora ($FD.b,S),Y		; 13 FD
	ora ($FF.b,S),Y		; 13 FF
	sta ($FE.b),Y		; 91 FE
	adc ($FF.b,X)		; 61 FF
	bra -26.b		; 80 E6
	asl $4B.b		; 06 4B
	phd		; 0B
	tyx		; BB
	tyx		; BB
	ora ($13.b,S),Y		; 13 13
	ora ($13.b,S),Y		; 13 13
	sta ($91.b),Y		; 91 91
	adc ($61.b,X)		; 61 61
	bra -128.b		; 80 80
	sbc $385F30.l,X		; FF 30 5F 38
	adc $003F1F.l		; 6F 1F 3F 00
	tyx		; BB
	sty $8C9F.w		; 8C 9F 8C
	ora $8E.b,X		; 15 8E
	ora $303086.l,X		; 1F 86 30 30
	clv		; B8
	clv		; B8
	sta $C0C09F.l,X		; 9F 9F C0 C0
	jmp $EE6EDC.l		; 5C DC 6E EE
	ror $6EEE.w		; 6E EE 6E
	inc $62FF.w		; EE FF 62
	cmp $81FEFC.l,X		; DF FC FE 81
	sbc $FF03.w,X		; FD 03 FF
	ora $FF.b,S		; 03 FF
	ora $FF.b,S		; 03 FF
	ora $FE.b,S		; 03 FE
	ora $76.b,S		; 03 76
	ror $FC.b,X		; 76 FC
	jsr ($C3C3.w,X)		; FC C3 C3
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	adc [$F8.b],Y		; 77 F8
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $01FF01.l,X		; FF 01 FF 01
	sbc $00E300.l,X		; FF 00 E3 00
	cmp #$08.b		; C9 08
	jsr ($00FC.w,X)		; FC FC 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $1C.b		; 00 1C
	trb $3E36.w		; 1C 36 3E
	sbc $0CFB29.l,X		; FF 29 FB 0C
	jmp.w [$60E0]		; DC E0 60
	bra -128.b		; 80 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	beq  32.b		; F0 20
	jsr $0029.w		; 20 29 00
	ora $00FC00.l		; 0F 00 FC 00
	cpx #$00.b		; E0 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	rts		; 60

	brk $30.b		; 00 30
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $1C2401.l,X		; 1F 01 24 1C
	plp		; 28
	clc		; 18
	bvc   8.b		; 50 08
	tsb $0D04.w		; 0C 04 0D
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $073F03.l,X		; 1F 03 3F 07
	and $035F07.l,X		; 3F 07 5F 03
	ora $8D0E02.l		; 0F 02 0E 8D
	sta $4D.b,S		; 83 4D
	cmp [$DF.b]		; C7 DF
	cpy $3F.b		; C4 3F
	brk $76.b		; 00 76
	ora ($65.b,X)		; 01 65
	ora $C7.b,S		; 03 C7
	ora $C7.b,S		; 03 C7
	ora ($70.b),Y		; 11 70
	sbc ($30.b,S),Y		; F3 30
	sbc [$20.b],Y		; F7 20
	cpx $C0.b		; E4 C0
	cpy #$8B.b		; C0 8B
	phb		; 8B
	txy		; 9B
	txy		; 9B
	tsa		; 3B
	tsa		; 3B
	and #$39.b		; 29 39
	and $447B4E.l,X		; 3F 4E 7B 44
	sta $09FF66.l,X		; 9F 66 FF 09
	sta $45FA78.l,X		; 9F 78 FA 45
	jsr ($FC42.w,X)		; FC 42 FC
	lsr $CE8E.w,X		; 5E 8E CE
	sty $C4.b		; 84 C4
	asl $66.b		; 06 66
	ora #$09.b		; 09 09
	sei		; 78
	sei		; 78
	mvp $41,$44		; 44 44 41
	rti		; 40

	eor $E15C.w,X		; 5D 5C E1
	rti		; 40

	cmp ($61.b)		; D2 61
	sbc $E333.w		; ED 33 E3
	sta $EF6E9F.l,X		; 9F 9F 6E EF
	bpl  71.b		; 10 47
	tay		; A8
	ora $4C.b,S		; 03 4C
	brk $61.b		; 00 61
	brk $73.b		; 00 73
	brk $3F.b		; 00 3F
	bra -97.b		; 80 9F
	rts		; 60

	ror $0000.w		; 6E 00 00
	trb $04.b		; 14 04
	ldy $04.b,X		; B4 04
	dec $04.b		; C6 04
	sbc ($02.b,S),Y		; F3 02
	jsr ($DF00.w,X)		; FC 00 DF
	bmi -117.b		; 30 8B
	jmp $A6E5.w		; 4C E5 A6
	sbc $7FFE00.l,X		; FF 00 FE 7F
	sec		; 38
	rol $0F0C.w,X		; 3E 0C 0F
	ora $03.b,S		; 03 03
	brk $30.b		; 00 30
	bmi 124.b		; 30 7C
	tya		; 98
	ldx $0000.w,Y		; BE 00 00
	adc $00007F.l,X		; 7F 7F 00 00
	cpx #$00.b		; E0 00
	sei		; 78
	rts		; 60

	cpy $E208.w		; CC 08 E2
	tsb $FD.b		; 04 FD
	cop $FE.b		; 02 FE
	and $45FB.w,Y		; 39 FB 45
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	bra  -8.b		; 80 F8
	bmi  60.b		; 30 3C
	clc		; 18
	asl $0300.w,X		; 1E 00 03
	sec		; 38
	and $4544.w,Y		; 39 44 45
	and ($0F.b),Y		; 31 0F
	asl A		; 0A
	asl $0C.b		; 06 0C
	tsb $11.b		; 04 11
	php		; 08
	ora $040304.l		; 0F 04 03 04
	eor $265F02.l		; 4F 02 5F 26
	brk $3F.b		; 00 3F
	ora ($0F.b,X)		; 01 0F
	ora $0F.b,S		; 03 0F
	asl $1E.b		; 06 1E
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	cop $4A.b		; 02 4A
	asl $76.b		; 06 76
	lda [$8C.b],Y		; B7 8C
	adc $30DC18.l		; 6F 18 DC 30
	ldy $7E60.w,X		; BC 60 7E
	cpy #$FE.b		; C0 FE
	bra -17.b		; 80 EF
	brk $C7.b		; 00 C7
	brk $4E.b		; 00 4E
	dec $9C9C.w		; CE 9C 9C
	tsa		; 3B
	tsa		; 3B
	adc ($73.b,S),Y		; 73 73
	sbc ($E1.b,X)		; E1 E1
	cmp ($C1.b,X)		; C1 C1
	bcc -112.b		; 90 90
	sec		; 38
	sec		; 38
	ora $03.b		; 05 03
	phd		; 0B
	ora [$17.b]		; 07 17
	ora $010102.l		; 0F 02 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $001F00.l		; 0F 00 1F 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E7.b		; 00 E7
	tsb $EC.b		; 04 EC
	php		; 08
	pea $FA08.w		; F4 08 FA
	sty $BD.b		; 84 BD
	.db $62, $7E, $11		; 62 7E 11
	ora $070F08.l,X		; 1F 08 0F 07
	clc		; 18
	ora $001C10.l,X		; 1F 10 1C 00
	tsb $8600.w		; 0C 00 86
	brk $E3.b		; 00 E3
	brk $71.b		; 00 71
	brk $18.b		; 00 18
	brk $0F.b		; 00 0F
	stx $1F01.w		; 8E 01 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $37.b		; 00 37
	asl $1F6F.w		; 0E 6F 1F
	adc $30DF10.l,X		; 7F 10 DF 30
	adc ($71.b),Y		; 71 71
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	cmp $9F9FCF.l		; CF CF 9F 9F
	tya		; 98
	tya		; 98
	bmi  48.b		; 30 30
	adc $00FF80.l,X		; 7F 80 FF 00
	sbc $C837C0.l,X		; FF C0 37 C8
	sbc $F63D1C.l,X		; FF 1C 3D F6
	sbc $62FFE2.l,X		; FF E2 FF 62
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	cpy $1ECC.w		; CC CC 1E
	asl $FEFE.w,X		; 1E FE FE
.ACCU 8
	sep #$E2		; E2 E2
	.db $62, $62, $4B		; 62 62 4B
	dec $8E.b		; C6 8E
	eor $4F.b,S		; 43 4F
	ora $65.b,S		; 03 65
	and $07.b,S		; 23 07
	and ($B2.b,X)		; 21 B2
	ora ($A3.b),Y		; 11 A3
	bpl -39.b		; 10 D9
	dey		; 88
	and [$F7.b],Y		; 37 F7
	and [$F7.b],Y		; 37 F7
	and ($73.b,S),Y		; 33 73
	tas		; 1B
	tda		; 7B
	tas		; 1B
	tsa		; 3B
	ora $0DBD.w		; 0D BD 0D
	and $DE06.w,X		; 3D 06 DE
	inc $FB03.w,X		; FE 03 FB
	asl $FB.b		; 06 FB
	asl $FF.b		; 06 FF
	asl $7D.b		; 06 7D
	stx $FF.b		; 86 FF
	sty $3E.b		; 84 3E
	cpy $76.b		; C4 76
	cpy $0707.w		; CC 07 07
	ora [$07.b]		; 07 07
	asl $06.b		; 06 06
	stx $86.b		; 86 86
	stx $86.b		; 86 86
	dec $C6.b		; C6 C6
	cmp $CDCD.w		; CD CD CD
	cmp $0CCC.w		; CD CC 0C
	cmp [$19.b],Y		; D7 19
	cmp #$10.b		; C9 10
	bcc  32.b		; 90 20
	ldy #$00.b		; A0 00
	ldy #$00.b		; A0 00
	ldy #$00.b		; A0 00
	cpx #$40.b		; E0 40
	and ($3F.b,S),Y		; 33 3F
	jsr $203F.w		; 20 3F 20
	and $7040.w,Y		; 39 40 70
	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	brk $60.b		; 00 60
	sed		; F8
	bpl 120.b		; 10 78
	brk $FC.b		; 00 FC
	bra -68.b		; 80 BC
	brk $78.b		; 00 78
	mvp $24,$78		; 44 78 24
	ror $FC24.w,X		; 7E 24 FC
	rti		; 40

	brk $18.b		; 00 18
	bra -120.b		; 80 88
	brk $84.b		; 00 84
	rti		; 40

	cpy $00.b		; C4 00
	mvp $64,$00		; 44 00 64
	brk $66.b		; 00 66
	brk $CC.b		; 00 CC
	sbc [$CC.b],Y		; F7 CC
	tda		; 7B
	ldx $CD.b		; A6 CD
	and $27.b,S		; 23 27
	bpl  27.b		; 10 1B
	php		; 08
	ora $010706.l		; 0F 06 07 01
	ora [$03.b]		; 07 03
	asl $07CE.w		; 0E CE 07
	sbc [$13.b]		; E7 13
	sbc ($08.b,S),Y		; F3 08
	sec		; 38
	tsb $1C.b		; 04 1C
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	bne -32.b		; D0 E0
	clv		; B8
	bmi -20.b		; 30 EC
	php		; 08
	ldy $40.b,X		; B4 40
	ror $C4.b,X		; 76 C4
	xce		; FB
	.db $62, $DF, $34		; 62 DF 34
	inc $00C4.w,X		; FE C4 00
	beq  64.b		; F0 40
	sei		; 78
	bpl  28.b		; 10 1C
	pha		; 48
	jmp $EEE8.w		; 4C E8 EE
	stz $67.b		; 64 67
	bmi  55.b		; 30 37
	brk $C6.b		; 00 C6
	cop $01.b		; 02 01
	ora $02.b		; 05 02
	phd		; 0B
	asl $29.b		; 06 29
	clc		; 18
	ora ($04.b,X)		; 01 04
	ora [$02.b]		; 07 02
	ora $02.b		; 05 02
	phd		; 0B
	tsb $00.b		; 04 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $3E06.w		; 0E 06 3E
	cop $06.b		; 02 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	inc $DD18.w,X		; FE 18 DD
	and $3BF6.w,Y		; 39 F6 3B
	lda $70EA72.l,X		; BF 72 EA 70
	inc $5C64.w,X		; FE 64 5C
	inc $FB.b		; E6 FB
	dec $3939.w		; CE 39 39
	dec A		; 3A
	tsa		; 3B
	sei		; 78
	tda		; 7B
	sei		; 78
	tda		; 7B
	stz $76.b,X		; 74 76
	beq -10.b		; F0 F6
	cpx #$E6.b		; E0 E6
	cpx #$EF.b		; E0 EF
	asl $1703.w		; 0E 03 17
	asl A		; 0A
	and $001F1A.l		; 2F 1A 1F 00
	tas		; 1B
	tsb $BD.b		; 04 BD
	lsr $6F.b,X		; 56 6F
	rol $5F.b		; 26 5F
	rol $03.b,X		; 36 03
	phd		; 0B
	ora $1B.b,S		; 03 1B
	cop $3A.b		; 02 3A
	brk $10.b		; 00 10
	asl $16.b		; 06 16
	asl $F6.b		; 06 F6
	asl $76.b,X		; 16 76
	asl $76.b		; 06 76
	bcs  32.b		; B0 20
	ldy #$30.b		; A0 30
	sei		; 78
	rti		; 40

	brk $40.b		; 00 40
	cpy #$80.b		; C0 80
	rti		; 40

	bra  64.b		; 80 40
	bra -96.b		; 80 A0
	cpy #$40.b		; C0 40
	bvs  64.b		; 70 40
	bvs -128.b		; 70 80
	sed		; F8
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	sei		; 78
	jsr $00A0.w		; 20 A0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
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
	bra   0.b		; 80 00
	rti		; 40

	bra -64.b		; 80 C0
	bra -112.b		; 80 90
	rts		; 60

	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	beq   0.b		; F0 00
	sec		; 38
	ora $020502.l,X		; 1F 02 05 02
	cop $04.b		; 02 04
	tsb $1800.w		; 0C 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000700.l,X		; 1F 00 07 00
	asl $00.b		; 06 00
	tsb $1800.w		; 0C 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and [$11.b],Y		; 37 11
	ora [$00.b],Y		; 17 00
	ora [$00.b],Y		; 17 00
	rol $11.b,X		; 36 11
	ror $21.b		; 66 21
	and $103F00.l		; 2F 00 3F 10
	adc $0B23.w,X		; 7D 23 0B
	tsa		; 3B
	php		; 08
	clc		; 18
	php		; 08
	clc		; 18
	ora #$39.b		; 09 39
	ora $1079.w,Y		; 19 79 10
	bmi   0.b		; 30 00
	bmi   3.b		; 30 03
	adc $D8.b,S		; 63 D8
	and ($FD.b),Y		; 31 FD
	ora ($7E.b,X)		; 01 7E
	dey		; 88
	inc $F7DC.w		; EE DC F7
	iny		; C8
	adc $07DA82.l,X		; 7F 82 DA 07
	cmp $3603.w		; CD 03 36
	and [$22.b],Y		; 37 22
	and $89.b,S		; 23 89
	bit #$DD.b		; 89 DD
	cmp $D8D8.w,X		; DD D8 D8
	.db $82, $82, $27		; 82 82 27
	and [$33.b]		; 27 33
	and ($B4.b,S),Y		; 33 B4
	php		; 08
	jmp $243AB8.l		; 5C B8 3A 24
	sbc $C0.b,S		; E3 C0
	ldy #$C0.b		; A0 C0
	bne  96.b		; D0 60
	sbc ($20.b),Y		; F1 20
	inc $0010.w		; EE 10 00
	ldy $FC00.w,X		; BC 00 FC
	cpy #$FE.b		; C0 FE
	brk $E3.b		; 00 E3
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $31.b		; 00 31
	bra -98.b		; 80 9E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $1F.b		; 00 1F
	php		; 08
	asl A		; 0A
	ora $0C.b,S		; 03 0C
	tsb $09.b		; 04 09
	tsb $0B.b		; 04 0B
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $1F.b		; 00 1F
	tsb $0F.b		; 04 0F
	ora $0F.b,S		; 03 0F
	cop $0E.b		; 02 0E
	brk $0C.b		; 00 0C
	bmi   0.b		; 30 00
	cli		; 58
	bmi -89.b		; 30 A7
	pla		; 68
	adc $C7EF.w		; 6D EF C7
	cpy #$EF.b		; C0 EF
	brk $FB.b		; 00 FB
	ora [$77.b]		; 07 77
	sta $3000.w		; 8D 00 30
	brk $78.b		; 00 78
	bpl  -1.b		; 10 FF
	bpl  -1.b		; 10 FF
	sec		; 38
	sed		; F8
	bpl  16.b		; 10 10
	ora [$07.b]		; 07 07
	sta $058D.w		; 8D 8D 05
	cop $8A.b		; 02 8A
	tsb $75.b		; 04 75
	stx $7352.w		; 8E 52 73
	sbc $02FD20.l		; EF 20 FD 02
	nop		; EA
	sbc [$F5.b],Y		; F7 F5
	phx		; DA
	brk $07.b		; 00 07
	brk $8E.b		; 00 8E
	brk $FF.b		; 00 FF
	sty $10FF.w		; 8C FF 10
	bmi   2.b		; 30 02
	cop $F7.b		; 02 F7
	sbc [$DA.b],Y		; F7 DA
	phx		; DA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	sty $5400.w		; 8C 00 54
	dey		; 88
	ldy $F858.w		; AC 58 F8
	bvs -36.b		; 70 DC
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $8C.b		; 00 8C
	brk $DC.b		; 00 DC
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	jsr $0B7C.w		; 20 7C 0B
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000C00.l		; 0F 00 0C 00
	php		; 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $66.b		; A4 66
	bvc  50.b		; 50 32
	rol $0C.b,X		; 36 0C
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	inc $7E0C.w,X		; FE 0C 7E
	brk $3E.b		; 00 3E
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $082B34.l		; CF 34 2B 08
	and ($11.b)		; 32 11
	and $11.b,S		; 23 11
	ora $091F09.l,X		; 1F 09 1F 09
	ora [$09.b],Y		; 17 09
	ora $0003.w		; 0D 03 00
	jsr ($3D15.w,X)		; FC 15 3D
	ora $0D3D.w		; 0D 3D 0D
	and $1901.w,X		; 3D 01 19
	ora ($19.b,X)		; 01 19
	ora $1B.b,S		; 03 1B
	ora $0B.b,S		; 03 0B
	ldx $C8.b		; A6 C8
	jsr ($EA98.w,X)		; FC 98 EA
	stz $904E.w		; 9C 4E 90
	cmp ($00.b)		; D2 00
	sbc ($20.b),Y		; F1 20
	cpy #$60.b		; C0 60
	bcc  32.b		; 90 20
	bne -34.b		; D0 DE
	cpy #$DC.b		; C0 DC
	bra -98.b		; 80 9E
	ldy #$BE.b		; A0 BE
	ldy #$B2.b		; A0 B2
	brk $31.b		; 00 31
	brk $60.b		; 00 60
	rti		; 40

	bvs  62.b		; 70 3E
	tsb $5E.b		; 04 5E
	bit $297C.w		; 2C 7C 29
	cmp $E4DE42.l,X		; DF 42 DE E4
	pea $0818.w		; F4 18 08
	bpl  48.b		; 10 30
	brk $05.b		; 00 05
	and $0D.b		; 25 0D
	adc $6B0A.w		; 6D 0A 6B
	jsr $00E3.w		; 20 E3 00
	inc $00.b		; E6 00
	jsr ($1800.w,X)		; FC 00 18
	brk $30.b		; 00 30
	rts		; 60

	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpx #$00.b		; E0 00
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
	brk $80.b		; 00 80
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
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($06.b,X)		; 01 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	trb $60B8.w		; 1C B8 60
	rts		; 60

	cpy #$D0.b		; C0 D0
	cpx #$E8.b		; E0 E8
	bvs  -4.b		; 70 FC
	clc		; 18
	inc $FC0C.w,X		; FE 0C FC
	asl $F9.b		; 06 F9
	.db $82, $00, $F8		; 82 00 F8
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	tsb $87.b		; 04 87
	ldy #$40.b		; A0 40
	ldy #$40.b		; A0 40
	rti		; 40

	bra  64.b		; 80 40
	bra -56.b		; 80 C8
	bra -80.b		; 80 B0
	cpy #$50.b		; C0 50
	rts		; 60

	sbc [$C0.b]		; E7 C0
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C8.b		; 00 C8
	brk $F0.b		; 00 F0
	bra -16.b		; 80 F0
	brk $E7.b		; 00 E7
	ora $00.b,S		; 03 00
	tsb $1B00.w		; 0C 00 1B
	brk $3D.b		; 00 3D
	clc		; 18
	adc [$20.b]		; 67 20
	tas		; 1B
	trb $227C.w		; 1C 7C 22
	bvs  22.b		; 70 16
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	bpl  27.b		; 10 1B
	brk $38.b		; 00 38
	bpl 124.b		; 10 7C
	brk $23.b		; 00 23
	php		; 08
	ora $1F.b,S		; 03 1F
	brk $FC.b		; 00 FC
	bvs 109.b		; 70 6D
	ldy #$BE.b		; A0 BE
	bvc -10.b		; 50 F6
	ora ($7E.b,X)		; 01 7E
	sbc $FF.b		; E5 FF
	pea $E5CE.w		; F4 CE E5
	brk $E0.b		; 00 E0
	brk $07.b		; 00 07
	bpl -122.b		; 10 86
	brk $C5.b		; 00 C5
	brk $0B.b		; 00 0B
	brk $E5.b		; 00 E5
	tsb $F5.b		; 04 F5
	brk $F5.b		; 00 F5
	trb $1300.w		; 1C 00 13
	tsb $0815.w		; 0C 15 08
	asl A		; 0A
	brk $0D.b		; 00 0D
	brk $15.b		; 00 15
	brk $39.b		; 00 39
	brk $2A.b		; 00 2A
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	tsb $0A00.w		; 0C 00 0A
	brk $05.b		; 00 05
	brk $02.b		; 00 02
	brk $0A.b		; 00 0A
	brk $06.b		; 00 06
	brk $15.b		; 00 15
	adc $0E1ECF.l		; 6F CF 1E 0E
	sbc $15.b,X		; F5 15
	tyx		; BB
	asl A		; 0A
	adc $007D04.l		; 6F 04 7D 00
	ldy $4A.b,X		; B4 4A
	sta ($4A.b),Y		; 91 4A
	asl $04FF.w		; 0E FF 04
	sbc $0A1F10.l		; EF 10 1F 0A
	lsr $D504.w		; 4E 04 D5
	brk $DA.b		; 00 DA
	brk $DB.b		; 00 DB
	brk $FF.b		; 00 FF
	ora $0C.b		; 05 0C
	ora $0C.b		; 05 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sta ($33.b,X)		; 81 33
	bra  51.b		; 80 33
	bra  35.b		; 80 23
	cpy #$61.b		; C0 61
	brk $61.b		; 00 61
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	cpx #$00.b		; E0 00
	sbc ($00.b,X)		; E1 00
	cmp ($00.b,X)		; C1 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F1F3F.l		; 0F 3F 1F 3F
	ora $7F377F.l,X		; 1F 7F 37 7F
	rol $7F.b,X		; 36 7F
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $383F08.l		; 0F 08 3F 38
	and $607F2D.l,X		; 3F 2D 7F 60
	adc $497F48.l,X		; 7F 48 7F 49
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	bra  -8.b		; 80 F8
	sed		; F8
	inc $FEFC.w,X		; FE FC FE
	inc $C6FF.w		; EE FF C6
	sbc $00FF02.l,X		; FF 02 FF 00
	brk $F0.b		; 00 F0
	beq  -8.b		; F0 F8
	sei		; 78
	inc $FE26.w,X		; FE 26 FE
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	ora ($EF.b),Y		; 11 EF
	and #$EDFF.w		; 29 FF ED
	stx $3C.b		; 86 3C
	stx $38.b		; 86 38
	cpy $5430.w		; CC 30 54
	jsr $6098.w		; 20 98 60
	tay		; A8
	rti		; 40

	bmi -64.b		; 30 C0
	bvc -128.b		; 50 80
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E040.w		; C0 40 E0
	bvc -128.b		; 50 80
	php		; 08
	bvs -124.b		; 70 84
	ldy $90A0.w		; AC A0 90
	lda ($00.b)		; B2 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	rts		; 60

	brk $40.b		; 00 40
	bmi  64.b		; 30 40
	sec		; 38
	bra  28.b		; 80 1C
	cmp $2C.b,S		; C3 2C
	cmp $05.b,S		; C3 05
	asl $ECF3.w,X		; 1E F3 EC
	sbc $FBF4.w,Y		; F9 F4 FB
	bcc -112.b		; 90 90
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $18.b		; 00 18
.ACCU 8
	sep #$E4		; E2 E4
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	sbc ($10.b,S),Y		; F3 10
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -96.b		; 80 A0
	brk $A0.b		; 00 A0
	brk $50.b		; 00 50
	brk $30.b		; 00 30
	brk $68.b		; 00 68
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	brk $D0.b		; 00 D0
	cli		; 58
	brk $B8.b		; 00 B8
	brk $30.b		; 00 30
	bra  32.b		; 80 20
	bcc -64.b		; 90 C0
	bmi  96.b		; 30 60
	sed		; F8
	bcc -104.b		; 90 98
	bpl  24.b		; 10 18
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	jsr $9000.w		; 20 00 90
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	php		; 08
	bvs  12.b		; 70 0C
	sei		; 78
	tsb $84F0.w		; 0C F0 84
	clv		; B8
	sty $38.b		; 84 38
	.db $82, $58, $C2		; 82 58 C2
	trb $F042.w		; 1C 42 F0
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $2C.b		; 00 2C
	adc $0E.b,S		; 63 0E
	adc $12.b,S		; 63 12
	and ($0E.b,S),Y		; 33 0E
	and $031F0C.l,X		; 3F 0C 1F 03
	trb $0B07.w		; 1C 07 0B
	tsb $1E04.w		; 0C 04 1E
	brk $3C.b		; 00 3C
	brk $0C.b		; 00 0C
	brk $11.b		; 00 11
	brk $03.b		; 00 03
	brk $0C.b		; 00 0C
	brk $03.b		; 00 03
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	trb $0606.w		; 1C 06 06
	clc		; 18
	clc		; 18
	tsb $06.b		; 04 06
	inc A		; 1A
	clc		; 18
	bit $38.b,X		; 34 38
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	tsb $003E.w		; 0C 3E 00
	and $003F10.l,X		; 3F 10 3F 00
	and $103C00.l,X		; 3F 00 3C 10
	sei		; 78
	tsb $1867.w		; 0C 67 18
	and ($04.b,S),Y		; 33 04
	and ($0E.b,S),Y		; 33 0E
	tas		; 1B
	brk $19.b		; 00 19
	tsb $0E.b		; 04 0E
	ora ($0C.b,X)		; 01 0C
	ora $02.b		; 05 02
	sec		; 38
	ora ($0C.b,X)		; 01 0C
	ora ($1C.b,X)		; 01 1C
	ora ($04.b,X)		; 01 04
	brk $0E.b		; 00 0E
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	cop $00.b		; 02 00
	cop $6E.b		; 02 6E
	bvs -99.b		; 70 9D
	adc $7B.b		; 65 7B
	phb		; 8B
	sbc [$27.b]		; E7 27
	asl $FD9F.w,X		; 1E 9F FD
	ror $FDFF.w,X		; 7E FF FD
	sbc [$FB.b],Y		; F7 FB
	brk $F9.b		; 00 F9
	brk $77.b		; 00 77
	ora ($8F.b,X)		; 01 8F
	ora $BF.b,S		; 03 BF
	tsb $18FF.w		; 0C FF 18
	ror $FD78.w,X		; 7E 78 FD
	cpx #$FB.b		; E0 FB
	ora ($00.b)		; 12 00
	ora ($00.b)		; 12 00
	ora $0500.w		; 0D 00 05
	php		; 08
	ora $0C.b,S		; 03 0C
	cop $0F.b		; 02 0F
	cop $0E.b		; 02 0E
	ora ($0C.b,X)		; 01 0C
	brk $0D.b		; 00 0D
	brk $0D.b		; 00 0D
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	ora [$00.b]		; 07 00
	cmp ($09.b)		; D2 09
	cmp ($09.b)		; D2 09
	.db $42, $99		; 42 99
	eor $98.b		; 45 98
	cmp $18.b		; C5 18
	sbc $635C00.l,X		; FF 00 5C 63
	sta ($37.b,X)		; 81 37
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $1C.b		; 00 1C
	lda ($00.b,X)		; A1 00
	cpx #$00.b		; E0 00
	ora $18.b,S		; 03 18
	phd		; 0B
	clc		; 18
	asl A		; 0A
	clc		; 18
	ora #$19.b		; 09 19
	asl A		; 0A
	tsa		; 3B
	asl $3F.b		; 06 3F
	bvs  15.b		; 70 0F
	ply		; 7A
	bit $000F.w,X		; 3C 0F 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	trb $00.b		; 14 00
	clc		; 18
	brk $06.b		; 00 06
	brk $18.b		; 00 18
	sec		; 38
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	adc ($FD.b,S),Y		; 73 FD
	ror $FA.b		; 66 FA
	eor #$F4.b		; 49 F4
	ora #$F0.b		; 09 F0
	ora $EC.b,X		; 15 EC
	bmi  76.b		; 30 4C
	ora $1A27.w,Y		; 19 27 1A
	ora [$FC.b]		; 07 FC
	sty $90F1.w		; 8C F1 90
	xba		; EB
	ldy #$EF.b		; A0 EF
	cpx #$E3.b		; E0 E3
	cpx #$47.b		; E0 47
	rti		; 40

	jsl $000520.l		; 22 20 05 00
	cpy #$FF.b		; C0 FF
	cpx #$3E.b		; E0 3E
	sei		; 78
	mvn $18,$F0		; 54 F0 18
	cpx #$08.b		; E0 08
	bcc 120.b		; 90 78
	jsr $0030.w		; 20 30 00
	cpx #$3F.b		; E0 3F
	ora $84061E.l		; 0F 1E 06 84
	tsb $E0.b		; 04 E0
	brk $F0.b		; 00 F0
	brk $E8.b		; 00 E8
	php		; 08
	bne  16.b		; D0 10
	brk $00.b		; 00 00
	sei		; 78
	bvs -24.b		; 70 E8
	beq -16.b		; F0 F0
	cpx #$D0.b		; E0 D0
	cpx #$A0.b		; E0 A0
	rti		; 40

	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $40F0.w		; 20 F0 40
	beq -128.b		; F0 80
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $10.b		; A4 10
	stz $10.b		; 64 10
	jmp $083400.l		; 5C 00 34 08
	rol A		; 2A
	brk $1A.b		; 00 1A
	brk $11.b		; 00 11
	brk $11.b		; 00 11
	brk $00.b		; 00 00
	sei		; 78
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	tsb $1202.w		; 0C 02 12
	tsb $11.b		; 04 11
	tsb $1D.b		; 04 1D
	brk $12.b		; 00 12
	php		; 08
	rol A		; 2A
	brk $2A.b		; 00 2A
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $000E00.l		; 0F 00 0E 00
	asl $0C00.w		; 0E 00 0C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	ora [$00.b],Y		; 17 00
	ora $1904.w,Y		; 19 04 19
	tsb $2B.b		; 04 2B
	tsb $32.b		; 04 32
	php		; 08
	bit $00.b,X		; 34 00
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0E00.w		; 0E 00 0E
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F8.b		; E0 F8
	cpy #$F8.b		; C0 F8
	sec		; 38
	cpy $7C.b		; C4 7C
	clv		; B8
	dec $44.b		; C6 44
	eor #$10.b		; 49 10
	eor $08.b,X		; 55 08
	and $0C.b,S		; 23 0C
	bpl   0.b		; 10 00
	bmi   0.b		; 30 00
	cpy #$00.b		; C0 00
	bmi  56.b		; 30 38
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	bpl   0.b		; 10 00
	tay		; A8
	brk $B8.b		; 00 B8
	brk $C4.b		; 00 C4
	bpl -42.b		; 10 D6
	php		; 08
	and ($00.b),Y		; 31 00
	ora $000000.l		; 0F 00 00 00
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol A		; 2A
	tsb $33.b		; 04 33
	tsb $0835.w		; 0C 35 08
	lsr $18.b		; 46 18
	ror A		; 6A
	bpl 100.b		; 10 64
	bpl -108.b		; 10 94
	jsr $2088.w		; 20 88 20
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	sty $AA30.w		; 8C 30 AA
	bpl 102.b		; 10 66
	clc		; 18
	lsr $08.b,X		; 56 08
	and $08.b,X		; 35 08
	and $0C.b,S		; 23 0C
	tas		; 1B
	tsb $14.b		; 04 14
	cop $00.b		; 02 00
	sei		; 78
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	asl $02.b		; 06 02
	ora ($01.b,X)		; 01 01
	ora [$02.b]		; 07 02
	ora [$01.b]		; 07 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	lsr A		; 4A
	cop $B4.b		; 02 B4
	asl A		; 0A
	stp		; DB
	sta $3F.b		; 85 3F
	brk $B7.b		; 00 B7
	dec $2FCF.w		; CE CF 2F
	ora $6E.b		; 05 6E
	brk $0F.b		; 00 0F
	ora ($34.b,X)		; 01 34
	ora $78.b,S		; 03 78
	brk $BC.b		; 00 BC
	brk $C0.b		; 00 C0
	brk $CE.b		; 00 CE
	brk $3F.b		; 00 3F
	bra  63.b		; 80 3F
	ora [$10.b]		; 07 10
	ora [$10.b]		; 07 10
	ora [$10.b]		; 07 10
	ora [$10.b]		; 07 10
	ora [$10.b]		; 07 10
	ora [$10.b]		; 07 10
	ora $180F18.l		; 0F 18 0F 18
	ora $000F00.l		; 0F 00 0F 00
	ora $000F00.l		; 0F 00 0F 00
	ora $000F00.l		; 0F 00 0F 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora ($43.b,X)		; 01 43
	brk $43.b		; 00 43
	brk $41.b		; 00 41
	bra -63.b		; 80 C1
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	sta ($00.b,X)		; 81 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	tad		; 5B
	jsr $2052.w		; 20 52 20
	and ($00.b)		; 32 00
	and $00.b,S		; 23 00
	and $00.b		; 25 00
	eor [$00.b]		; 47 00
	phk		; 4B
	brk $35.b		; 00 35
	cop $00.b		; 02 00
	bit $00.b		; 24 00
	and $0D00.w		; 2D 00 0D
	brk $1D.b		; 00 1D
	brk $1B.b		; 00 1B
	brk $3B.b		; 00 3B
	brk $37.b		; 00 37
	brk $0F.b		; 00 0F
	inc $FED0.w,X		; FE D0 FE
	jsr $00FF.w		; 20 FF 00
	wai		; CB
	bpl -41.b		; 10 D7
	php		; 08
	eor $28.b		; 45 28
	eor $2C.b,S		; 43 2C
	asl A		; 0A
	stz $40.b		; 64 40
	bne  32.b		; D0 20
	bit $00.b		; 24 00
	bit $00.b,X		; 34 00
	ror $00.b,X		; 76 00
	ply		; 7A
	brk $FB.b		; 00 FB
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	asl $091F.w		; 0E 1F 09
	ora $133F00.l,X		; 1F 00 3F 13
	and $237F20.l,X		; 3F 20 7F 23
	jmp ($0303.w,X)		; 7C 03 03
	ora $111F0C.l		; 0F 0C 1F 11
	ora $3D3F16.l,X		; 1F 16 3F 3D
	bit $7928.w,X		; 3C 28 79
	bvc 124.b		; 50 7C
	bvc   0.b		; 50 00
	jsr ($F8F0.w,X)		; FC F0 F8
	sei		; 78
	jsr ($FE1C.w,X)		; FC 1C FE
	stx $FF.b		; 86 FF
	brk $FE.b		; 00 FE
	beq -50.b		; F0 CE
	rts		; 60

	stx $FCFC.w		; 8E FC FC
	sed		; F8
	pha		; 48
	jsr ($FEA4.w,X)		; FC A4 FE
.INDEX 8
	sep #$DF		; E2 DF
	eor $C6D6.w,Y		; 59 D6 C6
	asl $06.b		; 06 06
	inc $5806.w,X		; FE 06 58
	dey		; 88
	dec $DE08.w,X		; DE 08 DE
	ora $EE.b		; 05 EE
	ora $7A.b,S		; 03 7A
	sec		; 38
	lda $7C3C.w,X		; BD 3C 7C
	jmp ($657D.w,X)		; 7C 7D 65
	dey		; 88
	bit $6800.w		; 2C 00 68
	brk $64.b		; 00 64
	brk $50.b		; 00 50
	tas		; 1B
	ldy $7E3D.w,X		; BC 3D 7E
	and $60FE.w,X		; 3D FE 60
	inc $F8.b		; E6 F8
	sbc ($DC.b,X)		; E1 DC
	sbc $D4E8.w		; ED E8 D4
	inc $B8.b,X		; F6 B8
	sei		; 78
	clv		; B8
	sed		; F8
	sei		; 78
	beq -16.b		; F0 F0
	jsr ($4128.w,X)		; FC 28 41
	inc $C0.b		; E6 C0
	inc $D680.w		; EE 80 D6
	brk $B8.b		; 00 B8
	bmi -68.b		; 30 BC
	bmi 124.b		; 30 7C
	rts		; 60

	jsr ($2800.w,X)		; FC 00 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	ldy #$00.b		; A0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	cpy #$20.b		; C0 20
	bra  96.b		; 80 60
	rti		; 40

	cpx #$C0.b		; E0 C0
	beq  32.b		; F0 20
	bmi -64.b		; 30 C0
	bpl -32.b		; 10 E0
	clc		; 18
	beq  24.b		; F0 18
	brk $80.b		; 00 80
	rti		; 40

	brk $80.b		; 00 80
	brk $20.b		; 00 20
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	php		; 08
	bvs  12.b		; 70 0C
	clv		; B8
	sty $8430.w		; 8C 30 84
	cli		; 58
	dec $1C.b		; C6 1C
	dec $28.b		; C6 28
	.db $62, $0C, $63		; 62 0C 63
	beq   0.b		; F0 00
	sed		; F8
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	tsb $1212.w		; 0C 12 12
	bit $7E30.w		; 2C 30 7E
	jmp ($F0EC.w,X)		; 7C EC F0
	bcs -64.b		; B0 C0
	cpy #$00.b		; C0 00
	brk $0C.b		; 00 0C
	tsb $1C.b		; 04 1C
	brk $3F.b		; 00 3F
	brk $73.b		; 00 73
	sec		; 38
	sbc $F180.w,X		; FD 80 F1
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	lda $43.b,S		; A3 43
	eor $9FDF1F.l,X		; 5F 1F DF 9F
	adc $1E9E.w		; 6D 9E 1E
	cpy #$38.b		; C0 38
	rti		; 40

	brk $00.b		; 00 00
	bra   3.b		; 80 03
	sta ($1F.b,X)		; 81 1F
	sta $7F0C7F.l		; 8F 7F 0C 7F
	bra  94.b		; 80 5E
	rti		; 40

	jsr $0000.w		; 20 00 00
	cpy $30.b		; C4 30
	sty $6430.w		; 8C 30 64
	clc		; 18
	.db $42, $18		; 42 18
	rol $08.b,X		; 36 08
	ora $1304.w,Y		; 19 04 13
	tsb $0F.b		; 04 0F
	brk $00.b		; 00 00
	sei		; 78
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dec $76.b		; C6 76
	bit #$35.b		; 89 35
	adc $3B.b,S		; 63 3B
	sta $C76F97.l		; 8F 97 6F C7
	and $964BE7.l		; 2F E7 4B 96
	ror $01.b,X		; 76 01
	bra  31.b		; 80 1F
	cpy #$17.b		; C0 17
	cmp ($0F.b,X)		; C1 0F
	adc $07.b,S		; 63 07
	lda [$17.b]		; A7 17
	.db $42, $17		; 42 17
	brk $36.b		; 00 36
	brk $19.b		; 00 19
	asl A		; 0A
	clc		; 18
	ora #$19.b		; 09 19
	php		; 08
	and $3F06.w,Y		; 39 06 3F
	bvs  15.b		; 70 0F
	ply		; 7A
	bit $3C86.w,X		; 3C 86 3C
	.db $82, $38, $07		; 82 38 07
	brk $06.b		; 00 06
	brk $16.b		; 00 16
	brk $18.b		; 00 18
	brk $06.b		; 00 06
	brk $18.b		; 00 18
	sec		; 38
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
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
	ora $02.b,X		; 15 02
	ora $1C0B10.l		; 0F 10 0B 1C
	ora [$17.b]		; 07 17
	brk $10.b		; 00 10
	ora [$10.b]		; 07 10
	ora [$10.b]		; 07 10
	ora [$10.b]		; 07 10
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	tsb $00.b		; 04 00
	php		; 08
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $10.b		; 00 10
	ror $14.b		; 66 14
	.db $62, $F7, $00		; 62 F7 00
	sta $0AE3.w,X		; 9D E3 0A
	lsr $02.b,X		; 56 02
	lsr $4602.w		; 4E 02 46
	brk $46.b		; 00 46
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7C.b		; 00 7C
	cop $10.b		; 02 10
	sta $00.b		; 85 00
	sta $00.b		; 85 00
	sta ($00.b,X)		; 81 00
	sta $00.b,S		; 83 00
	bit $7B.b		; 24 7B
	and $7C.b		; 25 7C
	jsr $067C.w		; 20 7C 06
	rol $3719.w,X		; 3E 19 37
	asl $0631.w,X		; 1E 31 06
	ora $0700.w,Y		; 19 00 07
	adc $7350.w,Y		; 79 50 73
	bvc 119.b		; 50 77
	bvc  57.b		; 50 39
	bmi  52.b		; 30 34
	jsr $2030.w		; 20 30 20
	clc		; 18
	clc		; 18
	asl $06.b		; 06 06
	sec		; 38
	tsb $6490.w		; 0C 90 64
	tya		; 98
	ror $6E90.w		; 6E 90 6E
	ldy $8A.b		; A4 8A
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	adc [$E0.b]		; 67 E0
	beq   0.b		; F0 00
	sed		; F8
	brk $F2.b		; 00 F2
	cop $FA.b		; 02 FA
	cop $72.b		; 02 72
	cop $F4.b		; 02 F4
	tsb $00.b		; 04 00
	brk $80.b		; 00 80
	clc		; 18
	pha		; 48
	cpy $FE38.w		; CC 38 FE
	ora [$78.b]		; 07 78
	and $10301F.l		; 2F 1F 30 10
	ora ($02.b),Y		; 11 02
	php		; 08
	ora $0A.b,S		; 03 0A
	ora ($30.b,X)		; 01 30
	brk $44.b		; 00 44
	brk $38.b		; 00 38
	brk $0C.b		; 00 0C
	ora $001F00.l		; 0F 00 1F 00
	ora $000700.l		; 0F 00 07 00
	ora [$25.b]		; 07 25
	php		; 08
	jsl $003A08.l		; 22 08 3A 00
	bit $10.b		; 24 10
	mvn $54,$00		; 54 00 54
	brk $78.b		; 00 78
	brk $B8.b		; 00 B8
	brk $00.b		; 00 00
	asl $1C00.w,X		; 1E 00 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	ora [$00.b],Y		; 17 00
	ora $1904.w,Y		; 19 04 19
	tsb $2B.b		; 04 2B
	tsb $32.b		; 04 32
	php		; 08
	bit $00.b,X		; 34 00
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0E00.w		; 0E 00 0E
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tay		; A8
	brk $B4.b		; 00 B4
	brk $7C.b		; 00 7C
	brk $5A.b		; 00 5A
	brk $36.b		; 00 36
	php		; 08
	rol $08.b		; 26 08
	ora $08.b,X		; 15 08
	ora ($04.b,S),Y		; 13 04
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	and ($0C.b,S),Y		; 33 0C
	eor $08.b,X		; 55 08
	ror $18.b		; 66 18
	ror A		; 6A
	bpl -116.b		; 10 8C
	bmi -44.b		; 30 D4
	jsr $20C8.w		; 20 C8 20
	plp		; 28
	rti		; 40

	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	cld		; D8
	jsr $2098.w		; 20 98 20
	mvn $4C,$20		; 54 20 4C
	bpl  44.b		; 10 2C
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	sec		; 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -32.b		; F0 E0
	clc		; 18
	brk $28.b		; 00 28
	rti		; 40

	trb $60.b		; 14 60
	mvp $8A,$30		; 44 30 8A
	bmi -90.b		; 30 A6
	clc		; 18
	eor ($1C.b,X)		; 41 1C
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F1F1F.l		; 0F 1F 1F 3F
	ora $7F373F.l,X		; 1F 3F 37 7F
	rol $7F.b,X		; 36 7F
	ror $FD.b		; 66 FD
	ora [$07.b]		; 07 07
	ora $181F08.l		; 0F 08 1F 18
	and $203F3D.l,X		; 3F 3D 3F 20
	adc $497F48.l,X		; 7F 48 7F 49
	jsr ($0098.w,X)		; FC 98 00
	bra -128.b		; 80 80
	sed		; F8
	sed		; F8
	inc $FEFC.w,X		; FE FC FE
	dec $86FF.w		; CE FF 86
	sbc $50FF02.l,X		; FF 02 FF 50
	sbc $F88080.l,X		; FF 80 80 F8
	sei		; 78
	inc $FE26.w,X		; FE 26 FE
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	and ($EF.b),Y		; 31 EF
	adc #$ADFF.w		; 69 FF AD
	lda $3F5F07.l		; AF 07 5F 3F
	tsa		; 3B
	ora [$2F.b]		; 07 2F
	brk $4B.b		; 00 4B
	brk $53.b		; 00 53
	brk $37.b		; 00 37
	brk $16.b		; 00 16
	ora ($0E.b,X)		; 01 0E
	ora ($07.b,X)		; 01 07
	and $000700.l,X		; 3F 00 07 00
	bpl   0.b		; 10 00
	and $00.b,X		; 35 00
	and $0B00.w		; 2D 00 0B
	brk $0B.b		; 00 0B
	brk $03.b		; 00 03
	sbc $F8E5F8.l,X		; FF F8 E5 F8
	tyx		; BB
	bvs 119.b		; 70 77
	bra  33.b		; 80 21
	sty $A3.b,X		; 94 A3
	trb $84.b		; 14 84
	and ($89.b)		; 32 89
	and ($C0.b)		; 32 C0
	plx		; FA
	cpy #$00FA.w		; C0 FA 00
	adc $00.b,X		; 75 00
	sta $FE00.w		; 8D 00 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	asl $02.b		; 06 02
	ora $0605.w		; 0D 05 06
	asl A		; 0A
	asl $0519.w		; 0E 19 05
	bpl  26.b		; 10 1A
	and ($0D.b,S),Y		; 33 0D
	rol $14.b		; 26 14
	rol $00.b		; 26 00
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	ora $04.b,S		; 03 04
	ora ($0E.b,X)		; 01 0E
	brk $0C.b		; 00 0C
	brk $1A.b		; 00 1A
	brk $18.b		; 00 18
	ora ($D7.b,X)		; 01 D7
	phd		; 0B
	and ($45.b,S),Y		; 33 45
	lsr $5D41.w,X		; 5E 41 5D
	lsr $DC5A.w,X		; 5E 5A DC
	eor $D3DE.w,X		; 5D DE D3
	jmp.w [$80FE]		; DC FE 80
	brk $38.b		; 00 38
	brk $CC.b		; 00 CC
	ora ($E0.b,X)		; 01 E0
	rti		; 40

	inc $FF40.w,X		; FE 40 FF
	rti		; 40

	inc $FC40.w,X		; FE 40 FC
	brk $81.b		; 00 81
	inx		; E8
	brk $98.b		; 00 98
	jsr $2094.w		; 20 94 20
	jmp $2A10.w		; 4C 10 2A
	brk $12.b		; 00 12
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	sei		; 78
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	rti		; 40

	brk $A0.b		; 00 A0
	brk $E0.b		; 00 E0
	brk $50.b		; 00 50
	brk $D0.b		; 00 D0
	brk $A0.b		; 00 A0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	bmi   0.b		; 30 00
	bra   0.b		; 80 00
	cpy #$4000.w		; C0 00 40
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	bra 112.b		; 80 70
	brk $F0.b		; 00 F0
	bra -104.b		; 80 98
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	cpx #$E008.w		; E0 08 E0
	tsb $0C78.w		; 0C 78 0C
	jsr $E000.w		; 20 00 E0
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	cpx #$30C0.w		; E0 C0 30
	beq -56.b		; F0 C8
	plp		; 28
	bmi -60.b		; 30 C4
	brk $34.b		; 00 34
	rti		; 40

	lsr A		; 4A
	bmi -86.b		; 30 AA
	bpl -64.b		; 10 C0
	brk $20.b		; 00 20
	brk $80.b		; 00 80
	cpy #$F000.w		; C0 00 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	asl $0618.w		; 0E 18 06
	bpl   7.b		; 10 07
	and ($0E.b),Y		; 31 0E
	and ($1C.b),Y		; 31 1C
	and ($0C.b),Y		; 31 0C
	and ($0E.b,X)		; 21 0E
	and $10.b,S		; 23 10
	adc ($07.b,S),Y		; 73 07
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $2E.b		; 00 2E
	brk $01.b		; 00 01
	cmp $00.b,S		; C3 00
	cmp $00.b,S		; C3 00
	sta ($00.b,X)		; 81 00
	sta ($00.b,X)		; 81 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $81.b		; 00 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	php		; 08
	rts		; 60

	tsb $8CB8.w		; 0C B8 8C
	bmi -122.b		; 30 86
	jmp $C218C6.l		; 5C C6 18 C2
	rol $0E63.w,X		; 3E 63 0E
	adc $F0.b,S		; 63 F0
	brk $F8.b		; 00 F8
	brk $70.b		; 00 70
	brk $FC.b		; 00 FC
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	brk $CA.b		; 00 CA
	bmi -86.b		; 30 AA
	bpl  70.b		; 10 46
	clc		; 18
	and ($0C.b),Y		; 31 0C
	and #$1204.w		; 29 04 12
	tsb $0C.b		; 04 0C
	cop $0B.b		; 02 0B
	brk $00.b		; 00 00
	jmp ($7C00.w,X)		; 7C 00 7C
	brk $3C.b		; 00 3C
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	bit $3C00.w,X		; 3C 00 3C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $64.b		; 00 64
	bpl -56.b		; 10 C8
	bmi -120.b		; 30 88
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	clc		; 18
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	eor $F9.b		; 45 F9
	ora #$6DF4.w		; 09 F4 6D
	sty $35.b,X		; 94 35
	jmp $2E12.w		; 4C 12 2E
	adc ($0B.b),Y		; 71 0B
	bcc  33.b		; 90 21
	sbc #$F210.w		; E9 10 F2
	bcs -22.b		; B0 EA
	cpx #$808B.w		; E0 8B 80
	eor $40.b,S		; 43 40
	and $20.b		; 25 20
	asl $00.b		; 06 00
	cop $6C.b		; 02 6C
	brk $F6.b		; 00 F6
	jsr $80FE.w		; 20 FE 80
	jmp ($D8D0.w,X)		; 7C D0 D8
	cpx #$9008.w		; E0 08 90
	sei		; 78
	cpx #$00F0.w		; E0 F0 00
	cpx #$00E0.w		; E0 E0 00
	lsr $06.b,X		; 56 06
	bit $04.b		; 24 04
	jsr $F000.w		; 20 00 F0
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   3.b		; 80 03
	tsb $0E03.w		; 0C 03 0E
	cop $0E.b		; 02 0E
	ora ($0C.b,X)		; 01 0C
	ora $0C.b		; 05 0C
	ora $0C.b		; 05 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	tsb $01.b		; 04 01
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	phb		; 8B
	bmi -65.b		; 30 BF
	brk $F8.b		; 00 F8
	sta [$81.b]		; 87 81
	and [$81.b],Y		; 37 81
	and [$81.b],Y		; 37 81
	and ($C0.b,S),Y		; 33 C0
	adc $80.b,S		; 63 80
	adc $00.b,S		; 63 00
	sbc $017800.l,X		; FF 00 78 01
	brk $E2.b		; 00 E2
	brk $E2.b		; 00 E2
	brk $E0.b		; 00 E0
	brk $81.b		; 00 81
	brk $C1.b		; 00 C1
	brk $30.b		; 00 30
	ror $08.b		; 66 08
	jmp $7C32.w		; 4C 32 7C
	adc [$AA.b]		; 67 AA
	stx $50.b,Y		; 96 50
	cmp $2C.b		; C5 2C
	ldx $5F1E.w		; AE 1E 5F
	ora $30011C.l,X		; 1F 1C 01 30
	ora ($08.b,X)		; 01 08
	ora ($00.b,X)		; 01 00
	dec A		; 3A
	brk $79.b		; 00 79
	brk $3E.b		; 00 3E
	tsb $5F.b		; 04 5F
	ora $3C423F.l		; 0F 3F 42 3C
	ror $7FDB.w,X		; 7E DB 7F
	sbc [$7E.b]		; E7 7E
	adc $C19F1E.l,X		; 7F 1E 9F C1
	.db $62, $5F, $1D		; 62 5F 1D
	sta ($FC.b,S),Y		; 93 FC
	brk $BD.b		; 00 BD
	brk $DB.b		; 00 DB
	asl $E7.b		; 06 E7
	trb $0CFF.w		; 1C FF 0C
	sbc $107E00.l,X		; FF 00 7E 10
	lda $FC10.w,X		; BD 10 FC
	pha		; 48
	dec $FF30.w		; CE 30 FF
	asl $1F71.w		; 0E 71 1F
	rol $0919.w		; 2E 19 09
	asl $00.b,X		; 16 00
	ora #$0A02.w		; 09 02 0A
	ora ($34.b,X)		; 01 34
	brk $4E.b		; 00 4E
	brk $31.b		; 00 31
	brk $0C.b		; 00 0C
	asl $0F00.w		; 0E 00 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	jsl $104A18.l		; 22 18 4A 10
	mvp $64,$10		; 44 10 64
	bpl  88.b		; 10 58
	jsr $2048.w		; 20 48 20
	tay		; A8
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	trb $3C00.w		; 1C 00 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	bit $01.b		; 24 01
	and ($0C.b)		; 32 0C
	and $08.b,X		; 35 08
	eor $08.b,X		; 55 08
	eor $08.b,X		; 55 08
	.db $62, $18, $6A		; 62 18 6A
	bpl 108.b		; 10 6C
	bpl   0.b		; 10 00
	ora $001F00.l,X		; 1F 00 1F 00
	asl $3E00.w,X		; 1E 00 3E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	plp		; 28
	rti		; 40

	iny		; C8
	jsr $00B8.w		; 20 B8 00
	mvn $54,$00		; 54 00 54
	brk $2A.b		; 00 2A
	brk $2A.b		; 00 2A
	brk $1D.b		; 00 1D
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	sec		; 38
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	sta ($01.b,X)		; 81 01
	eor ($01.b,X)		; 41 01
	clv		; B8
	clv		; B8
	adc $FE7F.w,X		; 7D 7F FE
	adc $F8F877.l,X		; 7F 77 F8 F8
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	tyx		; BB
	brk $FF.b		; 00 FF
	bit $70FF.w,X		; 3C FF 70
	adc $00F800.l,X		; 7F 00 F8 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	cpy #$C040.w		; C0 40 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	cpx #$E040.w		; E0 40 E0
	rti		; 40

	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	asl $003F.w		; 0E 3F 00
	adc $FE4738.l,X		; 7F 38 47 FE
	sec		; 38
	stx $2448.w		; 8E 48 24
	php		; 08
	sty $60.b,X		; 94 60
	tay		; A8
	rti		; 40

	bpl   0.b		; 10 00
	rol $0400.w,X		; 3E 00 04
	brk $18.b		; 00 18
	sec		; 38
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	inx		; E8
	brk $DC.b		; 00 DC
	php		; 08
	jsr ($B800.w,X)		; FC 00 B8
	stz $F8.b,X		; 74 F8
	sty $78.b,X		; 94 78
	lda ($88.b)		; B2 88
	adc ($F4.b)		; 72 F4
	cop $00.b		; 02 00
	bvs   0.b		; 70 00
	pla		; 68
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $B0.b		; 00 B0
	tsb $B0.b		; 04 B0
	tsb $70.b		; 04 70
	tsb $9C00.w		; 0C 00 9C
	adc #$48F9.w		; 69 F9 48
	eor [$9D.b]		; 47 9D
	tsb $0A.b		; 04 0A
	txa		; 8A
	ora ($C6.b,X)		; 01 C6
	brk $47.b		; 00 47
	bra -95.b		; 80 A1
	brk $06.b		; 00 06
	rts		; 60

	asl $40.b		; 06 40
	php		; 08
	sta ($00.b,X)		; 81 00
	sta $00.b,S		; 83 00
	ora $00.b		; 05 00
	ora ($00.b,X)		; 01 00
	bra   0.b		; 80 00
	rti		; 40

	adc [$AC.b],Y		; 77 AC
	lda $1ADC.w		; AD DC 1A
	xce		; FB
	sbc [$37.b],Y		; F7 37
	and $27D06E.l,X		; 3F 6E D0 27
	adc $D8.b,S		; 63 D8
	sbc $80EE.w,Y		; F9 EE 80
	and $1E40.w		; 2D 40 1E
	dey		; 88
	and $007F10.l,X		; 3F 10 7F 00
	sbc $00EF00.l		; EF 00 EF 00
	jmp.w [$EE40]		; DC 40 EE
	ror $D1BF.w		; 6E BF D1
	asl $20FF.w		; 0E FF 20
	rol $7E80.w,X		; 3E 80 7E
	trb $58C4.w		; 1C C4 58
	sec		; 38
	bra -80.b		; 80 B0
	rti		; 40

	brk $80.b		; 00 80
	jsr $0080.w		; 20 80 00
	brk $00.b		; 00 00
	cpy $BC00.w		; CC 00 BC
	brk $78.b		; 00 78
	brk $F0.b		; 00 F0
	brk $40.b		; 00 40
	ldx #$B518.w		; A2 18 B5
	php		; 08
	eor ($0C.b),Y		; 51 0C
	pld		; 2B
	tsb $10.b		; 04 10
	asl $15.b		; 06 15
	cop $0A.b		; 02 0A
	ora ($05.b,X)		; 01 05
	brk $00.b		; 00 00
	jmp ($7E00.w,X)		; 7C 00 7E
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	ora [$C8.b],Y		; 17 C8
	ora [$C8.b],Y		; 17 C8
	tad		; 5B
	sty $5F.b		; 84 5F
	bra  -6.b		; 80 FA
	asl $15.b		; 06 15
	jmp ($6CD1.w)		; 6C D1 6C
	cmp ($6E.b,S),Y		; D3 6E
	brk $FB.b		; 00 FB
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	ora $00.b		; 05 00
	wai		; CB
	brk $87.b		; 00 87
	brk $85.b		; 00 85
	brk $48.b		; 00 48
	brk $BC.b		; 00 BC
	brk $BC.b		; 00 BC
	rti		; 40

	tya		; 98
	cpx #$6050.w		; E0 50 60
	bra  48.b		; 80 30
	cpx #$C030.w		; E0 30 C0
	clc		; 18
	brk $B0.b		; 00 B0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	rti		; 40

	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$1070.w		; E0 70 10
	beq  32.b		; F0 20
	sec		; 38
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F0C0.w		; E0 C0 F0
	bpl -104.b		; 10 98
	brk $28.b		; 00 28
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($03.b,X)		; 01 03
	brk $04.b		; 00 04
	cop $08.b		; 02 08
	ora $11.b		; 05 11
	asl A		; 0A
	and $79.b,S		; 23 79
	asl $96.b		; 06 96
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $1D00.w		; 0E 00 1D
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	adc $00FB.w,Y		; 79 FB 00
	cmp $FE3C.w,X		; DD 3C FE
	rol $3F5F.w,X		; 3E 5F 3F
	and [$0F.b],Y		; 37 0F
	adc $FE23.w,X		; 7D 23 FE
	adc ($7B.b,X)		; 61 7B
	jsr $4500.w		; 20 00 45
	brk $3E.b		; 00 3E
	trb $0E3F.w		; 1C 3F 0E
	and $001F03.l,X		; 3F 03 1F 00
	and [$00.b]		; 27 00
	adc ($00.b,X)		; 61 00
	bit $6B.b		; 24 6B
	brk $2F.b		; 00 2F
	brk $2F.b		; 00 2F
	brk $35.b		; 00 35
	brk $5E.b		; 00 5E
	ora ($5E.b,X)		; 01 5E
	ora ($77.b,X)		; 01 77
	tsb $1823.w		; 0C 23 18
	brk $15.b		; 00 15
	brk $15.b		; 00 15
	brk $15.b		; 00 15
	brk $0B.b		; 00 0B
	brk $2B.b		; 00 2B
	brk $23.b		; 00 23
	php		; 08
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	trb $0C05.w		; 1C 05 0C
	ora $0C.b		; 05 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora ($04.b,X)		; 01 04
	ora $06.b,S		; 03 06
	cop $06.b		; 02 06
	phd		; 0B
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $10.b		; 00 10
	rts		; 60

	dey		; 88
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clv		; B8
	sty $8430.w		; 8C 30 84
	bmi -124.b		; 30 84
	bmi -124.b		; 30 84
	sei		; 78
	dec $58.b		; C6 58
	dec $1C.b		; C6 1C
	dec $18.b		; C6 18
.ACCU 16
.INDEX 16
	rep #$70		; C2 70
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	brk $5E.b		; 00 5E
	cmp $2C.b,S		; C3 2C
	sbc ($0F.b,X)		; E1 0F
	adc ($16.b,X)		; 61 16
	bmi  11.b		; 30 0B
	sec		; 38
	ora $18.b,S		; 03 18
	ora $0C.b		; 05 0C
	cop $0E.b		; 02 0E
	bit $5F00.w,X		; 3C 00 5F
	brk $3E.b		; 00 3E
	brk $0F.b		; 00 0F
	brk $17.b		; 00 17
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C080.w		; C0 80 C0
	brk $60.b		; 00 60
	cpy #$A070.w		; C0 70 A0
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	brk $1C.b		; 00 1C
	.db $42, $20		; 42 20
	.db $62, $3C, $7E		; 62 3C 7E
	jsr $1A7E.w		; 20 7E 1A
	stz $3E.b		; 64 3E
	cld		; D8
	ror $A4.b		; 66 A4
	txs		; 9A
	rti		; 40

	bit $1C00.w,X		; 3C 00 1C
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $24.b		; 00 24
	brk $58.b		; 00 58
	clc		; 18
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	tax		; AA
	bpl -94.b		; 10 A2
	clc		; 18
	ldx #$A218.w		; A2 18 A2
	clc		; 18
	ldx #$5218.w		; A2 18 52
	php		; 08
	eor ($08.b)		; 52 08
	eor ($08.b)		; 52 08
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	inc $7470.w,X		; FE 70 74
	sec		; 38
	bra -128.b		; 80 80
	sbc $EFFF.w,X		; FD FF EF
	inc $7096.w,X		; FE 96 70
	adc $1E88.w,X		; 7D 88 1E
	cpy #$7160.w		; C0 60 71
	brk $B8.b		; 00 B8
	brk $FF.b		; 00 FF
	sbc $62FF.w,Y		; F9 FF 62
	inc $7900.w,X		; FE 00 79
	brk $8A.b		; 00 8A
	brk $F3.b		; 00 F3
	bne  96.b		; D0 60
	rts		; 60

	brk $78.b		; 00 78
	sei		; 78
	rol $8C7E.w,X		; 3E 7E 8C
	ora $630181.l		; 0F 81 01 63
	ora ($93.b,X)		; 01 93
	brk $00.b		; 00 00
	rts		; 60

	brk $98.b		; 00 98
	bmi  -2.b		; 30 FE
	tsb $00FF.w		; 0C FF 00
	adc $010F00.l,X		; 7F 00 0F 01
	sta ($00.b,X)		; 81 00
	rts		; 60

	ora ($08.b)		; 12 08
	jsl $082208.l		; 22 08 22 08
	jsl $082208.l		; 22 08 22 08
	rol A		; 2A
	brk $2A.b		; 00 2A
	brk $1A.b		; 00 1A
	brk $00.b		; 00 00
	bit $1C00.w,X		; 3C 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	rts		; 60

	bra  16.b		; 80 10
	cpy #$40B0.w		; C0 B0 40
	pha		; 48
	jsr $00B8.w		; 20 B8 00
	mvp $54,$10		; 44 10 54
	brk $22.b		; 00 22
	php		; 08
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	ora $3F1F1F.l		; 0F 1F 1F 3F
	and $7F3F7F.l,X		; 3F 7F 3F 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $161F0E.l		; 0F 0E 1F 16
	and $417F21.l,X		; 3F 21 7F 41
	adc $000040.l,X		; 7F 40 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -16.b		; 80 F0
	bne  -8.b		; D0 F8
	sed		; F8
	jsr ($FEFC.w,X)		; FC FC FE
	jsr ($00FE.w,X)		; FC FE 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$70F0.w		; C0 F0 70
	sed		; F8
	plp		; 28
	jsr ($FE04.w,X)		; FC 04 FE
	phx		; DA
	inc $3C02.w,X		; FE 02 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3A.b		; 00 3A
	brk $26.b		; 00 26
	php		; 08
	jsl $00190C.l		; 22 0C 19 00
	ora $180000.l,X		; 1F 00 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora $003000.l		; 0F 00 30 00
	rtl		; 6B

	jsr $50D5.w		; 20 D5 50
.ACCU 8
	sep #$A8		; E2 A8
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $37.b		; 00 37
	bvc 123.b		; 50 7B
	jsr $773D.w		; 20 3D 77
	sbc $00FF02.l,X		; FF 02 FF 00
	sbc $EB6F84.l		; EF 84 6F EB
	clc		; 18
	rtl		; 6B

	tya		; 98
	rtl		; 6B

	clv		; B8
	cpy $FF3F.w		; CC 3F FF
	dey		; 88
	sbc $8FBFFD.l,X		; FF FD BF 8F
	dec A		; 3A
	brk $04.b		; 00 04
	bra  23.b		; 80 17
	bra   7.b		; 80 07
	bra  35.b		; 80 23
	bra -68.b		; 80 BC
	inc $FF9E.w,X		; FE 9E FF
	asl A		; 0A
	sbc $20FF42.l,X		; FF 42 FF 20
	inc $9E20.w,X		; FE 20 9E
	bra  32.b		; 80 20
	brk $60.b		; 00 60
	inc $FF42.w,X		; FE 42 FF
	adc ($FF.b,X)		; 61 FF
	sta $BF.b,X		; 95 BF
	ora $0E5E.w,X		; 1D 5E 0E
	dec $C00E.w		; CE 0E C0
	brk $C0.b		; 00 C0
	brk $05.b		; 00 05
	ora $0F02.w,X		; 1D 02 0F
	ora ($06.b,X)		; 01 06
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	brk $05.b		; 00 05
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00F0.w		; E0 F0 00
	inx		; E8
	beq -116.b		; F0 8C
	bra -76.b		; 80 B4
	bra  42.b		; 80 2A
	bcc -94.b		; 90 A2
	clc		; 18
	lda $08.b,X		; B5 08
	cpy #$0000.w		; C0 00 00
	brk $C0.b		; 00 C0
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	dey		; 88
	jsr $00A8.w		; 20 A8 00
	stz $10.b		; 64 10
	jmp $002A00.l		; 5C 00 2A 00
	and $08.b		; 25 08
	bmi   3.b		; 30 03
	tsb $0000.w		; 0C 00 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	sec		; 38
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	ora [$1F.b]		; 07 1F
	ora $7F3F3F.l,X		; 1F 3F 3F 7F
	rol $7F.b,X		; 36 7F
	bit $7F.b,X		; 34 7F
	bmi  -1.b		; 30 FF
	ora ($01.b,X)		; 01 01
	ora [$06.b]		; 07 06
	ora $243F19.l,X		; 1F 19 3F 24
	adc $797F48.l,X		; 7F 48 7F 79
	adc $CEFF6B.l,X		; 7F 6B FF CE
	brk $E0.b		; 00 E0
	cpx #$F8F8.w		; E0 F8 F8
	inc $FE40.w,X		; FE 40 FE
	asl $FF.b		; 06 FF
	bpl -18.b		; 10 EE
	pha		; 48
	beq -96.b		; F0 A0
	sei		; 78
	cpx #$F8E0.w		; E0 E0 F8
	clc		; 18
	inc $FE86.w,X		; FE 86 FE
	ldx $F9FF.w,Y		; BE FF F9
	dec $A08E.w		; CE 8E A0
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$C0.b]		; 07 C0
	bit $2043.w,X		; 3C 43 20
	jsr ($E320.w,X)		; FC 20 E3
	and $EC.b,S		; 23 EC
	and $000000.l		; 2F 00 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $3F.b		; 00 3F
	bra  31.b		; 80 1F
	brk $1C.b		; 00 1C
	bra  18.b		; 80 12
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$6040.w		; C0 40 60
	jsr $2030.w		; 20 30 20
	bmi  64.b		; 30 40
	beq -80.b		; F0 B0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $A0.b		; 00 A0
	brk $40.b		; 00 40
	brk $F2.b		; 00 F2
	clc		; 18
	plx		; FA
	tsb $063C.w		; 0C 3C 06
	dec $32C3.w		; CE C3 32
	sbc ($09.b),Y		; F1 09
	sbc $3FC7.w,Y		; F9 C7 3F
	.db $62, $5F, $E0		; 62 5F E0
	ora ($F0.b,X)		; 01 F0
	ora ($F8.b,X)		; 01 F8
	ora ($3C.b,X)		; 01 3C
	brk $CE.b		; 00 CE
	brk $16.b		; 00 16
	brk $28.b		; 00 28
	brk $1D.b		; 00 1D
	cpy #$4090.w		; C0 90 40
	bcc  64.b		; 90 40
	bcc  64.b		; 90 40
	bvc   0.b		; 50 00
	bvc   0.b		; 50 00
	bvc -128.b		; 50 80
	bvc -128.b		; 50 80
	bvc -128.b		; 50 80
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	adc [$0F.b]		; 67 0F
	php		; 08
	ora [$08.b]		; 07 08
	brk $03.b		; 00 03
	ora [$F7.b]		; 07 F7
	ora [$07.b]		; 07 07
	adc [$60.b],Y		; 77 60
	bvs 115.b		; 70 73
	adc $001F00.l		; 6F 00 1F 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000F03.l		; 0F 03 0F 00
	sbc $01FF00.l,X		; FF 00 FF 01
	sbc $10F00E.l		; EF 0E F0 10
	tya		; 98
	sei		; 78
	sei		; 78
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	rts		; 60

	bvs -121.b		; 70 87
	bcc   0.b		; 90 00
	cpy #$FC00.w		; C0 00 FC
	jsr $E0FC.w		; 20 FC E0
	sed		; F8
	cpx #$60F8.w		; E0 F8 60
	sed		; F8
	brk $F8.b		; 00 F8
	bra  -8.b		; 80 F8
	lsr $00.b,X		; 56 00
	adc ($00.b)		; 72 00
	ora $0700.w,Y		; 19 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $000F00.l		; 2F 00 0F 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2E.b		; 00 2E
	cmp ($2E.b,X)		; C1 2E
.ACCU 16
.INDEX 16
	rep #$F9		; C2 F9
	tsb $EB.b		; 04 EB
	clc		; 18
	tsb $03FC.w		; 0C FC 03
	and $000F00.l,X		; 3F 00 0F 00
	ora $01.b,S		; 03 01
	jsr ($F801.w,X)		; FC 01 F8
	ora [$E0.b]		; 07 E0
	ora [$00.b],Y		; 17 00
	and ($00.b,S),Y		; 33 00
	tsb $0300.w		; 0C 00 03
	brk $00.b		; 00 00
	brk $DD.b		; 00 DD
	txa		; 8A
	txs		; 9A
	jmp ($DD47.w)		; 6C 47 DD
	sbc ($86.b,X)		; E1 86
	tya		; 98
	sta ($27.b,X)		; 81 27
	cpx #$7809.w		; E0 09 78
	sta $FE.b,S		; 83 FE
	brk $AA.b		; 00 AA
	brk $0D.b		; 00 0D
	ldy #$7805.w		; A0 05 78
	brk $7E.b		; 00 7E
	brk $5E.b		; 00 5E
	brk $16.b		; 00 16
	bra   4.b		; 80 04
	cpx #$0000.w		; E0 00 00
	ora $06071E.l,X		; 1F 1E 07 06
	and $043A18.l,X		; 3F 18 3A 04
	tsb $1C18.w		; 0C 18 1C
	clc		; 18
	sta $0039.w,X		; 9D 39 00
	asl $3E1C.w,X		; 1E 1C 3E
	brk $3E.b		; 00 3E
	bpl  24.b		; 10 18
	brk $04.b		; 00 04
	brk $38.b		; 00 38
	brk $39.b		; 00 39
	bpl 123.b		; 10 7B
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	sec		; 38
	sec		; 38
	jmp ($D87C.w,X)		; 7C 7C D8
	cpx $EC.b		; E4 EC
	bne 112.b		; D0 70
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	bpl 124.b		; 10 7C
	sec		; 38
	inc $E640.w,X		; FE 40 E6
	bra -48.b		; 80 D0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cmp $E7B9.w,Y		; D9 B9 E7
	lda [$CE.b]		; A7 CE
	ora $4A5E9D.l,X		; 1F 9D 5E 4A
	jmp $D8A814.l		; 5C 14 A8 D8
	brk $70.b		; 00 70
	brk $09.b		; 00 09
	lda $0CBF02.l,X		; BF 02 BF 0C
	and $007E08.l,X		; 3F 08 7E 00
	jsr ($E800.w,X)		; FC 00 E8
	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
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
	asl A		; 0A
	ora $0F.b		; 05 0F
	brk $1D.b		; 00 1D
	brk $1A.b		; 00 1A
	brk $1E.b		; 00 1E
	brk $14.b		; 00 14
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $0C00.w		; 0E 00 0C
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  -1.b		; 30 FF
	jsl $F860FE.l		; 22 FE 60 F8
	ror $FA.b		; 66 FA
	and ($FF.b,X)		; 21 FF
	ora $0267.w,Y		; 19 67 02
	and $0C03.w,X		; 3D 03 0C
	inc $F9CC.w,X		; FE CC F9
	cld		; D8
	sbc [$90.b],Y		; F7 90
	sbc $90.b,X		; F5 90
	sed		; F8
	cld		; D8
	stz $64.b		; 64 64
	bit $0C3C.w,X		; 3C 3C 0C
	tsb $9C70.w		; 0C 70 9C
	cpy #$C03C.w		; C0 3C C0
	bit $3CC0.w,X		; 3C C0 3C
	jsr $0038.w		; 20 38 00
	beq 108.b		; F0 6C
	beq -22.b		; F0 EA
	trb $E8.b		; 14 E8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $D0.b		; 00 D0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $10.b		; 00 10
	tsb $F0.b		; 04 F0
	and $823EC1.l,X		; 3F C1 3E 82
	adc $6284.w,Y		; 79 84 62
	ora $80.b		; 05 80
	ora $C0.b		; 05 C0
	cmp $60.b		; C5 60
	sbc $30.b		; E5 30
	ora $3880.w		; 0D 80 38
	bra  32.b		; 80 20
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $80.b,S		; 03 80
	ora $80.b,S		; 03 80
	ora $C0.b,S		; 03 C0
	ora $D0.b,S		; 03 D0
	jsr $C0D0.w		; 20 D0 C0
	bpl   0.b		; 10 00
	bne   0.b		; D0 00
	bvc -128.b		; 50 80
	bvc -128.b		; 50 80
	bvc -128.b		; 50 80
	bvc -128.b		; 50 80
	brk $20.b		; 00 20
	rti		; 40

	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	ldx $2F.b,Y		; B6 2F
	cld		; D8
	ora [$04.b],Y		; 17 04
	asl A		; 0A
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $29.b		; 00 29
	cpx #$F006.w		; E0 06 F0
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc -128.b		; 50 80
	bne   0.b		; D0 00
	tay		; A8
	brk $A8.b		; 00 A8
	brk $B4.b		; 00 B4
	brk $92.b		; 00 92
	tsb $00ED.w		; 0C ED 00
	ora $600000.l,X		; 1F 00 00 60
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	adc $00FB60.l,X		; 7F 60 FB 00
	tas		; 1B
	jsr $201B.w		; 20 1B 20
	and $6E40.w		; 2D 40 6E
	rti		; 40

	ror $00.b,X		; 76 00
	dec $00.b,X		; D6 00
	brk $E0.b		; 00 E0
	brk $05.b		; 00 05
	brk $65.b		; 00 65
	brk $65.b		; 00 65
	brk $D7.b		; 00 D7
	brk $D7.b		; 00 D7
	brk $8F.b		; 00 8F
	brk $2F.b		; 00 2F
	sbc $10EF60.l		; EF 60 EF 10
	lda $10AB00.l,X		; BF 00 AB 10
	and $5690.w		; 2D 90 56
	dey		; 88
	eor ($8C.b,S),Y		; 53 8C
	tas		; 1B
	cpy $40.b		; C4 40
	ror $00.b,X		; 76 00
	sta ($00.b),Y		; 91 00
	inc $00.b		; E6 00
	sbc [$00.b],Y		; F7 00
	sbc ($00.b,S),Y		; F3 00
	sbc $FC00.w,Y		; F9 00 FC
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ror $CC00.w,X		; 7E 00 CC
	ora $A3.b,S		; 03 A3
	jmp $D800F7.l		; 5C F7 00 D8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	adc $007F00.l,X		; 7F 00 7F 00
	sei		; 78
	brk $E0.b		; 00 E0
	ora ($00.b,X)		; 01 00
	ora $00EF00.l,X		; 1F 00 EF 00
	cpx #$1F1F.w		; E0 1F 1F
	cpx #$0000.w		; E0 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $02.b		; 06 02
	ora $0A05.w		; 0D 05 0A
	ora $0A.b,S		; 03 0A
	ora $0E.b		; 05 0E
	ora ($0A.b,X)		; 01 0A
	ora ($08.b,X)		; 01 08
	cop $0C.b		; 02 0C
	ora ($02.b,X)		; 01 02
	ora $01.b,S		; 03 01
	ora [$00.b]		; 07 00
	asl $01.b		; 06 01
	tsb $01.b		; 04 01
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora [$0B.b]		; 07 0B
	tsb $3B14.w		; 0C 14 3B
	sbc [$F0.b]		; E7 F0
	asl $BC3C.w,X		; 1E 3C BC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	ora $003C08.l		; 0F 08 3C 00
	xce		; FB
	bra  -8.b		; 80 F8
	tsb $FC.b		; 04 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $D6.b		; 00 D6
	rti		; 40

	cmp $BA42.w		; CD 42 BA
	sta ($85.b,X)		; 81 85
	bcs  42.b		; B0 2A
	bcc -91.b		; 90 A5
	clc		; 18
	adc $18.b		; 65 18
	eor ($0C.b)		; 52 0C
	rti		; 40

	adc $007740.l		; 6F 40 77 00
	sbc [$00.b],Y		; F7 00
	xce		; FB
	brk $FD.b		; 00 FD
	brk $7E.b		; 00 7E
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	bra   0.b		; 80 00
	rti		; 40

	brk $A0.b		; 00 A0
	brk $50.b		; 00 50
	bra -88.b		; 80 A8
	rti		; 40

	mvn $8A,$20		; 54 20 8A
	bpl -51.b		; 10 CD
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bmi   0.b		; 30 00
	inx		; E8
	bmi  56.b		; 30 38
	tsb $24.b		; 04 24
	txy		; 9B
	rol A		; 2A
	cmp $8080.w,X		; DD 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $C0.b		; 00 C0
	brk $D8.b		; 00 D8
	ora ($5C.b,X)		; 01 5C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $1E1C.w,X		; 3C 1C 1E
	ldy #$0000.w		; A0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	bpl  62.b		; 10 3E
	brk $62.b		; 00 62
	rol $57.b,X		; 36 57
	lda ($D6.b,X)		; A1 D6
	adc $867981.l,X		; 7F 81 79 86
	and $80FAC0.l,X		; 3F C0 FA 80
	inc $DE01.w,X		; FE 01 DE
	adc ($C0.b,X)		; 61 C0
	ora $001E40.l,X		; 1F 40 1E 00
	and #$8600.w		; 29 00 86
	brk $C8.b		; 00 C8
	brk $B5.b		; 00 B5
	brk $35.b		; 00 35
	brk $75.b		; 00 75
	sta $706B10.l,X		; 9F 10 6B 70
	sbc $18E780.l,X		; FF 80 E7 18
	sed		; F8
	ora [$A6.b]		; 07 A6
	eor ($D9.b,X)		; 41 D9
	jsr $304E.w		; 20 4E 30
	brk $70.b		; 00 70
	jsr $00F7.w		; 20 F7 00
	bra   0.b		; 80 00
	and $00DF00.l,X		; 3F 00 DF 00
	adc $007F00.l,X		; 7F 00 7F 00
	lda $010100.l,X		; BF 00 01 01
	ora [$03.b]		; 07 03
	ora $070F07.l		; 0F 07 0F 07
	ora $1F3F0F.l,X		; 1F 0F 3F 1F
	adc $01FF7F.l,X		; 7F 7F FF 01
	ora ($07.b,X)		; 01 07
	asl $0F.b		; 06 0F
	tsb $080F.w		; 0C 0F 08
	ora $343F19.l,X		; 1F 19 3F 34
	adc $80FF60.l,X		; 7F 60 FF 80
	brk $C0.b		; 00 C0
	cpy #$F0F0.w		; C0 F0 F0
	inc $FFFC.w,X		; FE FC FF
	jsr ($E0FF.w,X)		; FC FF E0
	sbc $D6FF00.l,X		; FF 00 FF D6
	sbc $C0C0.w		; ED C0 C0
	beq  48.b		; F0 30
	inc $FFEE.w,X		; FE EE FF
	sta $FF.b,S		; 83 FF
	sta $FF.b,S		; 83 FF
	ora $E9F3F3.l,X		; 1F F3 F3 E9
	and ($EF.b,X)		; 21 EF
	jsr $60A0.w		; 20 A0 60
	lda $FF007F.l,X		; BF 7F 00 FF
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $005F80.l,X		; 1F 80 5F 00
	rti		; 40

	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	ora ($02.b,X)		; 01 02
	ora $80.b,S		; 03 80
	sbc $01FF00.l,X		; FF 00 FF 01
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $7F.b		; 00 7F
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $B0.b		; 00 B0
	brk $4C.b		; 00 4C
	jsr $18A7.w		; 20 A7 18
	sbc ($00.b,X)		; E1 00
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$F000.w		; C0 00 F0
	brk $7C.b		; 00 7C
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	ora [$B8.b]		; 07 B8
	trb $3FE3.w		; 1C E3 3F
	brk $67.b		; 00 67
	brk $FA.b		; 00 FA
	ora $F8.b		; 05 F8
	and $F751F9.l		; 2F F9 51 F7
	bvc -16.b		; 50 F0
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	asl $3900.w,X		; 1E 00 39
	brk $41.b		; 00 41
	bit $20.b		; 24 20
	lsr $0F40.w		; 4E 40 0F
	rti		; 40

	adc $3008.w,Y		; 79 08 30
	ora $060304.l		; 0F 04 03 06
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	jsr $0003.w		; 20 03 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -16.b		; 80 F0
	iny		; C8
	beq  92.b		; F0 5C
	inx		; E8
	phy		; 5A
	tay		; A8
	sbc $0048.w,Y		; F9 48 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	php		; 08
	tay		; A8
	tsb $4E00.w		; 0C 00 4E
	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	ora $E71F20.l,X		; 1F 20 1F E7
	ora $501FE0.l,X		; 1F E0 1F 50
	bcs 111.b		; B0 6F
	ldy #$8000.w		; A0 00 80
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	ora $0018C0.l,X		; 1F C0 18 00
	brk $C0.b		; 00 C0
	and $801F80.l		; 2F 80 1F 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F8.b		; 00 F8
	iny		; C8
	cmp $40F010.l		; CF 10 F0 40
	adc $0001F1.l,X		; 7F F1 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $30.b		; 00 30
	brk $0F.b		; 00 0F
	brk $A0.b		; 00 A0
	brk $FE.b		; 00 FE
	brk $29.b		; 00 29
	asl $15.b		; 06 15
	cop $0A.b		; 02 0A
	ora ($05.b,X)		; 01 05
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000F00.l,X		; 1F 00 0F 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $76.b		; 00 76
	brk $C9.b		; 00 C9
	brk $A6.b		; 00 A6
	brk $63.b		; 00 63
	bra -111.b		; 80 91
	rti		; 40

	bvs   0.b		; 70 00
	tya		; 98
	jsr $1064.w		; 20 64 10
	brk $8F.b		; 00 8F
	brk $87.b		; 00 87
	brk $C1.b		; 00 C1
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $38.b		; 00 38
	lda $4E.b,X		; B5 4E
	tad		; 5B
	ldy $FE.b,X		; B4 FE
	eor ($EE.b,X)		; 41 EE
	beq  -5.b		; F0 FB
	sbc $33.b,X		; F5 33
	rtl		; 6B

	ora [$E7.b],Y		; 17 E7
	adc [$57.b]		; 67 57
	brk $0E.b		; 00 0E
	brk $B6.b		; 00 B6
	brk $45.b		; 00 45
	brk $F1.b		; 00 F1
	brk $F5.b		; 00 F5
	ora ($EF.b,X)		; 01 EF
	cop $0F.b		; 02 0F
	stx $1F.b		; 86 1F
	lda $A01EBA.l,X		; BF BA 1E A0
	bit $78.b,X		; 34 78
	sta $C6E8E7.l,X		; 9F E7 E8 C6
	lda $8047C0.l,X		; BF C0 47 80
	phy		; 5A
	bra  34.b		; 80 22
	ror $6080.w,X		; 7E 80 60
	jsr $03FB.w		; 20 FB 03
	sbc [$80.b]		; E7 80
	cmp [$00.b],Y		; D7 00
	cpy #$8000.w		; C0 00 80
	brk $A7.b		; 00 A7
	inc $7F71.w		; EE 71 7F
	brk $0D.b		; 00 0D
	brk $0D.b		; 00 0D
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $00.b,X		; 75 00
	ora $00.b		; 05 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A3.b		; 00 A3
	trb $8659.w		; 1C 59 86
	ror $3481.w		; 6E 81 34
	cpy #$6098.w		; C0 98 60
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $00EE00.l,X		; DF 00 EE 00
	pea $F800.w		; F4 00 F8
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc ($FF.b,S),Y		; 73 FF
	rts		; 60

	sbc $317E22.l,X		; FF 22 7E 31
	adc $013D12.l,X		; 7F 12 3D 01
	ora $000100.l,X		; 1F 00 01 00
	brk $FF.b		; 00 FF
	sty $9FFF.w		; 8C FF 9F
	adc $7A58.w,X		; 7D 58 7A
	pha		; 48
	bit $1C2C.w,X		; 3C 2C 1C
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	bit $FF.b		; 24 FF
	ldx #$38DD.w		; A2 DD 38
	sbc $CA0670.l		; EF 70 06 CA
	and $077F03.l,X		; 3F 03 7F 07
	clv		; B8
	trb $D1E3.w		; 1C E3 D1
	cmp ($09.b,X)		; C1 09
	ora ($93.b,X)		; 01 93
	ora $FA.b,S		; 03 FA
	ora $F4.b,S		; 03 F4
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	ora [$60.b]		; 07 60
	bra -112.b		; 80 90
	rti		; 40

	bvs   0.b		; 70 00
	cld		; D8
	jsr $10AC.w		; 20 AC 10
	cmp ($0C.b)		; D2 0C
	and [$00.b],Y		; 37 00
	ora $C00000.l		; 0F 00 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	brk $3C.b		; 00 3C
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
	brk $B2.b		; 00 B2
	brk $90.b		; 00 90
	brk $24.b		; 00 24
	tsb $94.b		; 04 94
	brk $90.b		; 00 90
	rts		; 60

	tsb $08.b		; 04 08
	ora #$0006.w		; 09 06 00
	brk $00.b		; 00 00
	php		; 08
	bpl   0.b		; 10 00
	brk $04.b		; 00 04
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
	brk $40.b		; 00 40
	bpl   0.b		; 10 00
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
	.db $00		; Opcode 00 overrunning bank boundry at 0CFFFF. Skipping.
.ENDS
