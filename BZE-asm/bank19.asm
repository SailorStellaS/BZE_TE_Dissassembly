.BANK 19 SLOT 0
.ORG $0000

.SECTION "Bank19" FORCE

	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($06.b,X)		; 01 06
	ora $0D.b,S		; 03 0D
	ora [$1B.b]		; 07 1B
	ora [$1F.b]		; 07 1F
	ora $2F1F37.l		; 0F 37 1F 2F
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	ora $101F0C.l		; 0F 0C 1F 10
	ora $101F08.l,X		; 1F 08 1F 10
	and $7EFFDF.l,X		; 3F DF FF 7E
	inc $FCFD.w,X		; FE FD FC
	xce		; FB
	sed		; F8
	sbc [$F0.b],Y		; F7 F0
	sbc $C8DFE0.l		; EF E0 DF C8
	lda $FFA0FF.l,X		; BF FF A0 FF
	sta ($FF.b,X)		; 81 FF
	ora $FF.b,S		; 03 FF
	ora [$FF.b]		; 07 FF
	tsb $18FF.w		; 0C FF 18
	sbc $61FF30.l,X		; FF 30 FF 61
	bmi  -2.b		; 30 FE
	adc $F0F3.w,Y		; 79 F3 F0
	cpx $F3.b		; E4 F3
	cmp $F0.b,S		; C3 F0
	sty $E3.b		; 84 E3
	ora $F0.b,S		; 03 F0
	tsb $71.b		; 04 71
	sta [$FB.b]		; 87 FB
	cop $F2.b		; 02 F2
	asl $E0.b		; 06 E0
	ora $800FC1.l		; 0F C1 0F 80
	ora $001F01.l		; 0F 01 1F 00
	ora $A08F80.l		; 0F 80 8F A0
	cmp $48A810.l,X		; DF 10 A8 48
	bvc -124.b		; 50 84
	tya		; 98
	mvn $A4,$48		; 54 48 A4
	tay		; A8
	ror $F670.w,X		; 7E 70 F6
	cpx #$5050.w		; E0 50 50
	tay		; A8
	iny		; C8
	bpl -32.b		; 10 E0
	tya		; 98
	cpx #$E008.w		; E0 08 E0
	dey		; 88
	beq  96.b		; F0 60
	pea $ECE0.w		; F4 E0 EC
	sta ($6D.b)		; 92 6D
	ora ($ED.b)		; 12 ED
	jsl $FD02DD.l		; 22 DD 02 FD
	cop $FD.b		; 02 FD
	sec		; 38
	sbc $7AC744.l,X		; FF 44 C7 7A
	cmp $DF.b,S		; C3 DF
	sta ($DB.b)		; 92 DB
	ora ($BB.b)		; 12 BB
	jsl $7B0203.l		; 22 03 02 7B
	ply		; 7A
	mvp $3A,$44		; 44 44 3A
	cop $3C.b		; 02 3C
	brk $20.b		; 00 20
	jmp.w [$DE20]		; DC 20 DE
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	bmi -124.b		; 30 84
	bit $A886.w,X		; 3C 86 A8
	jsr $20B4.w		; 20 B4 20
	bne   0.b		; D0 00
	cld		; D8
	brk $C0.b		; 00 C0
	brk $30.b		; 00 30
	bmi  -8.b		; 30 F8
	bra  -8.b		; 80 F8
	bra -48.b		; 80 D0
	cpx #$F8BC.w		; E0 BC F8
	ora $0F0FBE.l,X		; 1F BE 0F 0F
	ora [$07.b]		; 07 07
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  -8.b		; 80 F8
	bpl  -2.b		; 10 FE
	tsb $06FF.w		; 0C FF 06
	ora $000F03.l,X		; 1F 03 0F 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	clc		; 18
	brk $2C.b		; 00 2C
	brk $43.b		; 00 43
	brk $A2.b		; 00 A2
	sta $D7.b,S		; 83 D7
	adc [$7F.b],Y		; 77 7F
	sta [$FE.b]		; 87 FE
	asl $F9.b		; 06 F9
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	bit $1DBC.w,X		; 3C BC 1D
	cmp $E80B.w,X		; DD 0B E8
	adc [$80.b],Y		; 77 80
	sbc [$01.b],Y		; F7 01
	sta [$06.b]		; 87 06
	php		; 08
	inc A		; 1A
	php		; 08
	dec A		; 3A
	php		; 08
	rol $3E00.w,X		; 3E 00 3E
	jsr $105C.w		; 20 5C 10
	jmp ($7800.w,X)		; 7C 00 78
	brk $00.b		; 00 00
	asl $12.b,X		; 16 12
	trb $10.b		; 14 10
	trb $14.b		; 14 14
	bit $04.b		; 24 04
	sec		; 38
	jsr $0038.w		; 20 38 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $18.b,S		; 03 18
	asl $1638.w		; 0E 38 16
	bvs  44.b		; 70 2C
	adc ($5C.b,X)		; 61 5C
	cmp $38.b,S		; C3 38
	.db $82, $F0, $86		; 82 F0 86
	rts		; 60

	tsb $080F.w		; 0C 0F 08
	ora [$10.b],Y		; 17 10
	and $415F20.l		; 2F 20 5F 41
	rol $FC02.w,X		; 3E 02 FC
	bra 124.b		; 80 7C
	tsb $F8.b		; 04 F8
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $3D1F.w,X		; 1E 1F 3D
	and $003D78.l,X		; 3F 78 3D 00
	bra -96.b		; 80 A0
	beq -128.b		; F0 80
	cpy #$0000.w		; C0 00 00
	brk $1E.b		; 00 1E
	tsb $183F.w		; 0C 3F 18
	adc $00FF30.l,X		; 7F 30 FF 00
	sei		; 78
	bra  48.b		; 80 30
	bra   0.b		; 80 00
	ora $C3.b,S		; 03 C3
	bvc -84.b		; 50 AC
	cpy $FB.b		; C4 FB
	lda #$09D6.w		; A9 D6 09
	inc $52.b,X		; F6 52
	lda $AD52.w		; AD 52 AD
	ldy $5B.b		; A4 5B
	ora ($3F.b,X)		; 01 3F
	bvc  83.b		; 50 53
	pei ($04.b)		; D4 04
	lda $AD29.w		; AD 29 AD
	ora #$525B.w		; 09 5B 52
	tad		; 5B
	eor ($B7.b)		; 52 B7
	ldy $00.b		; A4 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora $1F3F07.l		; 0F 07 3F 1F
	cpx $BE7F.w		; EC 7F BE
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $507C10.l,X		; 1F 10 7C 50
	sbc $000041.l,X		; FF 41 00 00
	brk $00.b		; 00 00
	brk $36.b		; 00 36
	rol $7F.b,X		; 36 7F
	jsl $2A147F.l		; 22 7F 14 2A
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
	php		; 08
	brk $00.b		; 00 00
	brk $B4.b		; 00 B4
	ror $D6.b,X		; 76 D6
	lda [$67.b],Y		; B7 67
	adc [$33.b],Y		; 77 33
	lda [$00.b],Y		; B7 00
	sbc $AE50.w,Y		; F9 50 AE
	bvc -82.b		; 50 AE
	bcc 111.b		; 90 6F
	trb $FF.b		; 14 FF
	stx $FF.b		; 86 FF
	and [$FF.b]		; 27 FF
	ora ($7F.b,S),Y		; 13 7F
	brk $07.b		; 00 07
	mvn $54,$50		; 54 50 54
	bvc -38.b		; 50 DA
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -80.b		; F0 B0
	sed		; F8
	bmi  -8.b		; 30 F8
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	bcs  -4.b		; B0 FC
	bmi  -4.b		; 30 FC
	brk $F8.b		; 00 F8
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	ora $7E1F2F.l,X		; 1F 2F 1F 7E
	ora $5D3E7E.l,X		; 1F 7E 3E 5D
	rol $3C5D.w,X		; 3E 5D 3C
	eor $1C7F1C.l,X		; 5F 1C 7F 1C
	and $3F303F.l		; 2F 3F 30 3F
	ora ($3F.b,X)		; 01 3F
	ora ($3F.b,X)		; 01 3F
	jsl $3F223F.l		; 22 3F 22 3F
	and ($3E.b,X)		; 21 3E
	brk $3E.b		; 00 3E
	and ($98.b)		; 32 98
	adc $38FF38.l,X		; 7F 38 FF 38
	sbc $79BF78.l,X		; FF 78 BF 79
	sbc $7CFF79.l,X		; FF 79 FF 7C
	xce		; FB
	jmp ($FEFF.w,X)		; 7C FF FE
.ACCU 16
.INDEX 16
	rep #$FC		; C2 FC
	rti		; 40

	sbc $C6FE87.l,X		; FF 87 FE C6
	sbc $FD84.w,X		; FD 84 FD
	bra  -3.b		; 80 FD
	sty $FE.b		; 84 FE
	.db $82, $31, $C7		; 82 31 C7
	ora ($E3.b),Y		; 11 E3
	brk $F5.b		; 00 F5
	phd		; 0B
	sbc [$0F.b],Y		; F7 0F
	sbc [$6F.b],Y		; F7 6F
	cmp [$D5.b]		; C7 D5
	xba		; EB
	stz $C0CD.w,X		; 9E CD C0
	cmp $E0EFE0.l		; CF E0 EF E0
	and $80EFE0.l		; 2F E0 EF 80
	sta $E03F60.l		; 8F 60 3F E0
	ora $F33FC0.l,X		; 1F C0 3F F3
	cpx #$E0F3.w		; E0 F3 E0
	sbc ($C1.b),Y		; F1 C1
	rol $F3C1.w,X		; 3E C1 F3
	cpy #$C0F6.w		; C0 F6 C0
	sed		; F8
	cpy #$E8E0.w		; C0 E0 E8
	cpx #$C0EE.w		; E0 EE C0
	inc $CE01.w		; EE 01 CE
	ora ($C0.b,X)		; 01 C0
	bra -36.b		; 80 DC
	cpy #$40DB.w		; C0 DB 40
.ACCU 16
	rep #$60		; C2 60
	jsr ($C17C.w,X)		; FC 7C C1
	jmp ($7CC1.w,X)		; 7C C1 7C
	cmp ($3C.b,X)		; C1 3C
	cmp ($3C.b,X)		; C1 3C
	eor ($1C.b,X)		; 41 1C
	eor ($3E.b,X)		; 41 3E
	adc ($3E.b,X)		; 61 3E
	adc ($3E.b,X)		; 61 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $7E.b		; 00 7E
	rti		; 40

	ror $3E40.w,X		; 7E 40 3E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $3A.b		; 00 3A
	sta $7C.b,S		; 83 7C
	cmp ($1D.b,X)		; C1 1D
	eor ($2E.b,X)		; 41 2E
	rts		; 60

	asl $30.b,X		; 16 30
	ora $180338.l		; 0F 38 03 18
	ora $0C.b		; 05 0C
	jmp ($3F00.w,X)		; 7C 00 3F
	ora ($7E.b,X)		; 01 7E
	rti		; 40

	ora $202F00.l,X		; 1F 00 2F 20
	ora [$10.b],Y		; 17 10
	ora $000308.l		; 0F 08 03 00
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	ora ($0F.b,X)		; 01 0F
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora $CF0708.l		; 0F 08 07 CF
	adc [$CE.b],Y		; 77 CE
	bvs -49.b		; 70 CF
	and ($CD.b)		; 32 CD
	inc A		; 1A
	cmp $E537.w		; CD 37 E5
	bit $E7.b,X		; 34 E7
	bpl -25.b		; 10 E7
	adc [$40.b],Y		; 77 40
	and [$01.b],Y		; 37 01
	tsa		; 3B
	php		; 08
	ply		; 7A
	lsr A		; 4A
	lda ($82.b)		; B2 82
	txs		; 9A
	.db $82, $9B, $81		; 82 9B 81
	ldy $0024.w,X		; BC 24 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	rol $36.b,X		; 36 36
	adc $147F22.l,X		; 7F 22 7F 14
	rol A		; 2A
	brk $1C.b		; 00 1C
	brk $C8.b		; 00 C8
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
	php		; 08
	brk $00.b		; 00 00
	brk $31.b		; 00 31
	sbc $115F31.l,X		; FF 31 5F 11
	adc [$11.b],Y		; 77 11
	and [$01.b]		; 27 01
	and ($00.b)		; 32 00
	ora ($00.b,S),Y		; 13 00
	ora ($00.b),Y		; 11 00
	ora ($7B.b),Y		; 11 7B
	asl A		; 0A
	adc ($62.b,S),Y		; 73 62
	and ($00.b),Y		; 31 00
	and ($30.b),Y		; 31 30
	ora ($01.b),Y		; 11 01
	ora ($10.b),Y		; 11 10
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	sbc ($FD.b)		; F2 FD
	beq -33.b		; F0 DF
	cmp $D8F6.w,Y		; D9 F6 D8
	sbc $ECFFD8.l,X		; FF D8 FF EC
	stp		; DB
	cpx $5F.b		; E4 5F
	.db $62, $DD, $FA		; 62 DD FA
	asl A		; 0A
	plx		; FA
	jsr $09F9.w		; 20 F9 09
	jsr ($FC04.w,X)		; FC 04 FC
	brk $FE.b		; 00 FE
	rol $FE.b		; 26 FE
	bcs -18.b		; B0 EE
	rol A		; 2A
	.db $62, $BF, $22		; 62 BF 22
	sbc $20.b,X		; F5 20
	eor $00.b,S		; 43 00
	.db $62, $00, $22		; 62 00 22
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $C4.b		; E6 C4
	.db $62, $02, $62		; 62 02 62
	rts		; 60

	jsl $202002.l		; 22 02 20 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $1C42.w,X		; 3C 42 1C
	.db $42, $1C		; 42 1C
	.db $42, $38		; 42 38
	.db $62, $3C, $E6		; 62 3C E6
	clc		; 18
	cpy $70.b		; C4 70
	cpy $B0.b		; C4 B0
	sty $7C.b		; 84 7C
	rti		; 40

	bit $3C00.w,X		; 3C 00 3C
	brk $1C.b		; 00 1C
	brk $58.b		; 00 58
	rti		; 40

	jmp ($B844.w,X)		; 7C 44 B8
	bra 120.b		; 80 78
	brk $0E.b		; 00 0E
	and ($18.b,S),Y		; 33 18
	and ($1C.b)		; 32 1C
	rol $10.b,X		; 36 10
	bit $3C00.w		; 2C 00 3C
	jsr $007C.w		; 20 7C 00
	pha		; 48
	rti		; 40

	pha		; 48
	trb $0E10.w		; 1C 10 0E
	cop $08.b		; 02 08
	brk $10.b		; 00 10
	bpl  24.b		; 10 18
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	pha		; 48
	bmi   0.b		; 30 00
	trb $C4.b		; 14 C4
	sec		; 38
	.db $62, $08, $62		; 62 08 62
	asl $0432.w,X		; 1E 32 04
	ora ($0A.b),Y		; 11 0A
	ora $0F00.w,Y		; 19 00 0F
	ora ($0F.b,X)		; 01 0F
	sei		; 78
	rti		; 40

	trb $3E00.w		; 1C 00 3E
	jsl $1E000C.l		; 22 0C 00 1E
	bpl   7.b		; 10 07
	ora ($08.b,X)		; 01 08
	php		; 08
	ora [$04.b]		; 07 04
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	brk $68.b		; 00 68
	bra 124.b		; 80 7C
	sed		; F8
	pea $FAFC.w		; F4 FC FA
	cpx $9C9B.w		; EC 9B 9C
	adc ($00.b,S),Y		; 73 00
	brk $C0.b		; 00 C0
	cpy #$8080.w		; C0 80 80
	inx		; E8
	bra  -4.b		; 80 FC
	php		; 08
	jsr ($FE04.w,X)		; FC 04 FE
	stz $FE.b		; 64 FE
	sty $837C.w		; 8C 7C 83
	bpl -49.b		; 10 CF
	pea $DCC2.w		; F4 C2 DC
	ldy $78.b		; A4 78
	tsb $30.b		; 04 30
	tsb $C850.w		; 0C 50 C8
	brk $F0.b		; 00 F0
	sty $080C.w		; 8C 0C 08
	rts		; 60

	pha		; 48
	bvc  72.b		; 50 48
	jsr $00F8.w		; 20 F8 00
	sed		; F8
	php		; 08
	bcs -128.b		; B0 80
	brk $00.b		; 00 00
	phd		; 0B
	clc		; 18
	ora [$10.b]		; 07 10
	asl $0C30.w,X		; 1E 30 0C
	and ($1E.b,X)		; 21 1E
	and $38.b,S		; 23 38
	adc $1C.b,S		; 63 1C
	lsr $30.b		; 46 30
	mvp $00,$07		; 44 07 00
	ora $000F10.l,X		; 1F 10 0F 00
	ora $203C01.l,X		; 1F 01 3C 20
	asl $3802.w,X		; 1E 02 38
	brk $3C.b		; 00 3C
	tsb $00.b		; 04 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	rol $36.b,X		; 36 36
	adc $147F22.l,X		; 7F 22 7F 14
	rol A		; 2A
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  16.b		; F0 10
	sed		; F8
	php		; 08
	jsr ($6428.w,X)		; FC 28 64
	php		; 08
	stz $0C.b		; 64 0C
	rol $14.b		; 26 14
	and ($02.b)		; 32 02
	and $8080.w,Y		; 39 80 80
	bvs  64.b		; 70 40
	brk $00.b		; 00 00
	clc		; 18
	brk $3C.b		; 00 3C
	bit $38.b		; 24 38
	jsr $020E.w		; 20 0E 02
	asl $00.b		; 06 00
	brk $3D.b		; 00 3D
	ora ($3E.b,X)		; 01 3E
	trb $0203.w		; 1C 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1B.b		; 00 1B
	ora ($1D.b),Y		; 11 1D
	clc		; 18
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	bmi -64.b		; 30 C0
	bpl -48.b		; 10 D0
	clc		; 18
	cpx #$6808.w		; E0 08 68
	tsb $84B0.w		; 0C B0 84
	mvn $38,$C6		; 54 C6 38
	sep #$C0		; E2 C0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	jmp ($B804.w,X)		; 7C 04 B8
	bra  94.b		; 80 5E
	.db $42, $1A		; 42 1A
	adc ($15.b,S),Y		; 73 15
	and ($04.b),Y		; 31 04
	bmi   8.b		; 30 08
	trb $1E0C.w		; 1C 0C 1E
	phd		; 0B
	tas		; 1B
	ora ($19.b,X)		; 01 19
	asl $0C.b		; 06 0C
	bit $0E20.w		; 2C 20 0E
	brk $1F.b		; 00 1F
	bpl   7.b		; 10 07
	tsb $03.b		; 04 03
	cop $04.b		; 02 04
	brk $0E.b		; 00 0E
	php		; 08
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $F0.b		; 00 F0
	rti		; 40

	sed		; F8
	sed		; F8
	jsr ($FF6C.w,X)		; FC 6C FF
	asl $00FF.w,X		; 1E FF 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra   0.b		; 80 00
	brk $F0.b		; 00 F0
	bpl  -8.b		; 10 F8
	rti		; 40

	jsr ($BF00.w,X)		; FC 00 BF
	tsb $00.b		; 04 00
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
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $001E00.l		; 0F 00 1E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0B.b		; 00 0B
	ora ($00.b,X)		; 01 00
	and $00.b,S		; 23 00
	stz $00.b,X		; 74 00
	tya		; 98
	brk $11.b		; 00 11
	brk $FF.b		; 00 FF
	tsb $DB.b		; 04 DB
	ora $1C37.w		; 0D 37 1C
	adc $230001.l		; 6F 01 00 23
	ora $77.b,S		; 03 77
	adc [$EE.b]		; 67 EE
	inc $0203.w		; EE 03 02
	sbc $D8DF2C.l		; EF 2C DF D8
	lda $0000B0.l,X		; BF B0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($0E.b,X)		; 01 0E
	ora $1D.b,S		; 03 1D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$05.b]		; 07 05
	ora $03000A.l		; 0F 0A 00 03
	brk $1F.b		; 00 1F
	ora [$78.b]		; 07 78
	ora $BF7FEF.l,X		; 1F EF 7F BF
	sbc $F8FF7F.l,X		; FF 7F FF F8
	inc $00E1.w,X		; FE E1 00
	brk $03.b		; 00 03
	cop $1F.b		; 02 1F
	ora [$7F.b],Y		; 17 7F
	bvc  -1.b		; 50 FF
	rti		; 40

	sbc $07FF80.l,X		; FF 80 FF 07
	sbc $BDC51F.l,X		; FF 1F C5 BD
	txa		; 8A
	ror A		; 6A
	asl A		; 0A
	nop		; EA
	lsr A		; 4A
	tax		; AA
	jsr $78F5.w		; 20 F5 78
	sed		; F8
	adc $FAFE.w,X		; 7D FE FA
	bit $57F0.w,X		; 3C F0 57
	nop		; EA
	lda $005FCA.l,X		; BF CA 5F 00
	adc $38FF00.l,X		; 7F 00 FF 38
	sbc $30FF38.l,X		; FF 38 FF 30
	sbc $207800.l,X		; FF 00 78 20
	adc $1F803F.l,X		; 7F 3F 80 1F
	bra  54.b		; 80 36
	beq   0.b		; F0 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  89.b		; 80 59
	cmp $80FF.w,Y		; D9 FF 80
	sbc $404F80.l,X		; FF 80 4F 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $78FFEF.l,X		; 1F EF FF 78
	sed		; F8
	ora [$FF.b]		; 07 FF
	beq  -8.b		; F0 F8
	cmp [$80.b]		; C7 80
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $FF507F.l,X		; FF 7F 50 FF
	sta [$FF.b]		; 87 FF
	sed		; F8
	sbc $38FF0F.l,X		; FF 0F FF 38
	sbc $7FFF8F.l,X		; FF 8F FF 7F
	sbc $9FE1F8.l,X		; FF F8 E1 9F
	sta $7C.b,S		; 83 7C
	asl $F9.b		; 06 F9
	sed		; F8
	ora [$01.b]		; 07 01
	inc $F801.w,X		; FE 01 F8
	tsb $19F2.w		; 0C F2 19
	sbc [$FF.b]		; E7 FF
	ror $FF.b		; 66 FF
	txy		; 9B
	sbc $F9FFE6.l,X		; FF E6 FF F9
	jsr ($F005.w,X)		; FC 05 F0
	sbc [$E0.b],Y		; F7 E0
	sbc $945FC0.l		; EF C0 5F 94
	nop		; EA
	sta $FA.b		; 85 FA
	lda #$29D6.w		; A9 D6 29
	dec $48.b,X		; D6 48
	lda [$48.b],Y		; B7 48
	lda [$90.b],Y		; B7 90
	adc $D46F90.l		; 6F 90 6F D4
	ora $D5.b,X		; 15 D5
	ora $AD.b		; 05 AD
	and #$29AD.w		; 29 AD 29
	ror $6E48.w		; 6E 48 6E
	pha		; 48
	dec $DE90.w,X		; DE 90 DE
	bcc  80.b		; 90 50
	rts		; 60

	brk $90.b		; 00 90
	jsr $20D0.w		; 20 D0 20
	cld		; D8
	bcc 108.b		; 90 6C
	bcc 108.b		; 90 6C
	bcc 110.b		; 90 6E
	dey		; 88
	ror $40.b,X		; 76 40
	beq   0.b		; F0 00
	bvs -96.b		; 70 A0
	plp		; 28
	bcs  32.b		; B0 20
	bne -112.b		; D0 90
	cld		; D8
	bcc -40.b		; 90 D8
	bcc -20.b		; 90 EC
	dey		; 88
	rts		; 60

	sta $803FC0.l,X		; 9F C0 3F 80
	adc $007F80.l,X		; 7F 80 7F 00
	inc $FC00.w,X		; FE 00 FC
	brk $7C.b		; 00 7C
	brk $38.b		; 00 38
	sbc $CBEF6D.l,X		; FF 6D EF CB
	dec $BC96.w,X		; DE 96 BC
	ldy $BC.b		; A4 BC
	tsb $0838.w		; 0C 38 08
	sec		; 38
	plp		; 28
	bpl  16.b		; 10 10
	ora [$FF.b]		; 07 FF
	eor [$FF.b]		; 47 FF
	eor $FF.b,S		; 43 FF
	ora ($7F.b,X)		; 01 7F
	brk $37.b		; 00 37
	brk $23.b		; 00 23
	tsb $0B.b		; 04 0B
	php		; 08
	ora [$87.b],Y		; 17 87
	bra 111.b		; 80 6F
	brk $67.b		; 00 67
	brk $33.b		; 00 33
	brk $20.b		; 00 20
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	tsb $0E.b		; 04 0E
	php		; 08
	brk $24.b		; 00 24
	php		; 08
	bit $6C00.w		; 2C 00 6C
	jsr $2058.w		; 20 58 20
	cli		; 58
	brk $78.b		; 00 78
	jsr $40F8.w		; 20 F8 40
	cld		; D8
	bit $3024.w,X		; 3C 24 30
	jsr $2838.w		; 20 38 28
	jsr $3020.w		; 20 20 30
	jsr $4050.w		; 20 50 40
	rti		; 40

	rti		; 40

	bmi  16.b		; 30 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $36.b		; 00 36
	rol $7F.b,X		; 36 7F
	jsl $2A147F.l		; 22 7F 14 2A
	brk $1C.b		; 00 1C
	brk $88.b		; 00 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
	php		; 08
	brk $00.b		; 00 00
	brk $27.b		; 00 27
	sbc $51DF29.l,X		; FF 29 DF 51
	sbc $78C7B9.l		; EF B9 C7 78
	and [$70.b]		; 27 70
	and $480470.l		; 2F 70 04 48
	cpy $006F.w		; CC 6F 00
	sta $0B00.w		; 8D 00 0B
	php		; 08
	eor [$40.b]		; 47 40
	cmp $30.b		; C5 30
	inx		; E8
	plp		; 28
	sed		; F8
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	cpy #$C080.w		; C0 80 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
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
	brk $32.b		; 00 32
	brk $13.b		; 00 13
	brk $0F.b		; 00 0F
	ora ($0E.b,X)		; 01 0E
	ora [$3B.b]		; 07 3B
	ora $7DFEEF.l,X		; 1F EF FE 7D
	sed		; F8
	sbc [$1D.b],Y		; F7 1D
	ora $0C0C.w		; 0D 0C 0C
	ora ($01.b,X)		; 01 01
	ora [$05.b]		; 07 05
	ora $507F14.l,X		; 1F 14 7F 50
	sbc $08FE82.l,X		; FF 82 FE 08
	rol $7FD9.w,X		; 3E D9 7F
	bcs -12.b		; B0 F4
	adc $D8DDE8.l		; 6F E8 DD D8
	ldy $75B9.w,X		; BC B9 75
	adc ($EF.b),Y		; 71 EF
	cpx #$7FD9.w		; E0 D9 7F
	ror $FF.b		; 66 FF
	cmp $FA90FC.l		; CF FC 90 FA
	jsr $60FB.w		; 20 FB 60
	inc $7ECC.w,X		; FE CC 7E
	asl $F0.b,X		; 16 F0
	rol $07.b		; 26 07
	tsa		; 3B
	ora $6F1F37.l		; 0F 37 1F 6F
	ora $5F3F6F.l,X		; 1F 6F 3F 5F
	and $9E7FDE.l,X		; 3F DE 7F 9E
	rol $1FDF.w,X		; 3E DF 1F
	trb $3F.b		; 14 3F
	plp		; 28
	and $103F10.l,X		; 3F 10 3F 10
	adc $217F60.l,X		; 7F 60 7F 21
	adc $217F61.l,X		; 7F 61 7F 21
	sed		; F8
	cmp [$F0.b]		; C7 F0
	sta $C79DE3.l		; 8F E3 9D C7
	tsa		; 3B
	sta $6C9F77.l		; 8F 77 9F 6C
	bit $70D3.w,X		; 3C D3 70
	lda $FF3BFF.l		; AF FF 3B FF
	stz $FF.b,X		; 74 FF
	ror A		; 6A
	sbc $88FFD4.l,X		; FF D4 FF 88
	sbc $2CFF93.l,X		; FF 93 FF 2C
	sbc $C8FF53.l,X		; FF 53 FF C8
	jsr ($D0E0.w,X)		; FC E0 D0
	cpx #$C0ED.w		; E0 ED C0
	ldx $C0.b,Y		; B6 C0
	bvc -128.b		; 50 80
	cpy $A800.w		; CC 00 A8
	cpy #$FDC0.w		; C0 C0 FD
	cpy #$80FB.w		; C0 FB 80
	sbc $80F280.l,X		; FF 80 F2 80
	cpx $EC00.w		; EC 00 EC
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	bra   0.b		; 80 00
	cpy #$8000.w		; C0 00 80
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
	brk $06.b		; 00 06
	sbc $7BFC.w,Y		; F9 FC 7B
	sed		; F8
	sbc [$F0.b],Y		; F7 F0
	sbc $013FC0.l		; EF C0 3F 01
	sbc $03FF00.l,X		; FF 00 FF 03
	sbc $FF06FF.l,X		; FF FF 06 FF
	sta $FE.b		; 85 FE
	asl A		; 0A
	jsr ($F914.w,X)		; FC 14 F9
	iny		; C8
	sbc ($30.b,S),Y		; F3 30
	cpx #$C3E0.w		; E0 E0 C3
	cpy #$E70B.w		; C0 0B E7
	phd		; 0B
	sbc [$27.b],Y		; F7 27
	sbc $E1FF67.l,X		; FF 67 FF E1
	sbc [$CB.b],Y		; F7 CB
	sed		; F8
	asl $03FF.w		; 0E FF 03
	cmp [$81.b]		; C7 81
	sta $630F23.l,X		; 9F 23 0F 63
	ora $F00FF3.l		; 0F F3 0F F0
	ora $CE0FE0.l		; 0F E0 0F CE
	ora $003F01.l,X		; 1F 01 3F 00
	sbc $00DF20.l,X		; FF 20 DF 00
	sbc $70BF80.l,X		; FF 80 BF 70
	ora [$E8.b]		; 07 E8
	ora $D01FF0.l		; 0F F0 1F D0
	ora $BC00DE.l,X		; 1F DE 00 BC
	jsr $000C.w		; 20 0C 00
	rti		; 40

	brk $FC.b		; 00 FC
	tsb $F5.b		; 04 F5
	ora $E9.b		; 05 E9
	ora #$01E1.w		; 09 E1 01
	dey		; 88
	ror $88.b,X		; 76 88
	ror $80.b,X		; 76 80
	ror $FC00.w,X		; 7E 00 FC
	brk $04.b		; 00 04
	sei		; 78
	tsb $7C.b		; 04 7C
	tsb $78.b		; 04 78
	cop $EC.b		; 02 EC
	dey		; 88
	cpx $C088.w		; EC 88 C0
	bra   0.b		; 80 00
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	tsb $F8.b		; 04 F8
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	clc		; 18
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
	ora ($2E.b),Y		; 11 2E
	cop $1D.b		; 02 1D
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	ora $06.b,S		; 03 06
	ora ($04.b,X)		; 01 04
	ora $0311.w,X		; 1D 11 03
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	cop $01.b		; 02 01
	brk $03.b		; 00 03
	brk $0E.b		; 00 0E
	adc $3E.b,S		; 63 3E
	adc $18.b,S		; 63 18
	.db $42, $1C		; 42 1C
	lsr $30.b		; 46 30
	cpy $78.b		; C4 78
	cpy $8820.w		; CC 20 88
	bmi -104.b		; 30 98
	bit $1C20.w,X		; 3C 20 1C
	brk $3E.b		; 00 3E
	cop $78.b		; 02 78
	rti		; 40

	jmp ($3044.w,X)		; 7C 44 30
	brk $78.b		; 00 78
	php		; 08
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $36.b,X		; 36 36
	adc $147F22.l,X		; 7F 22 7F 14
	rol A		; 2A
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	rol $36.b,X		; 36 36
	adc $147F22.l,X		; 7F 22 7F 14
	rol A		; 2A
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
	php		; 08
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	cpx $30.b		; E4 30
	pea $7E1C.w		; F4 1C 7E
	php		; 08
	rol $3E00.w,X		; 3E 00 3E
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	clc		; 18
	brk $48.b		; 00 48
	rti		; 40

	jsr $1020.w		; 20 20 10
	bpl  22.b		; 10 16
	bpl  14.b		; 10 0E
	brk $05.b		; 00 05
	ora ($03.b,X)		; 01 03
	ora $00.b,S		; 03 00
	rti		; 40

	rti		; 40

	rts		; 60

	brk $A0.b		; 00 A0
	ldy #$1050.w		; A0 50 10
	inx		; E8
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	cpy #$8040.w		; C0 40 80
	brk $40.b		; 00 40
	brk $E0.b		; 00 E0
	ldy #$1070.w		; A0 70 10
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	and $18.b,S		; 23 18
	and $3C.b,S		; 23 3C
	adc [$1C.b]		; 67 1C
	lsr $00.b		; 46 00
	dec $50.b		; C6 50
	dec $8C38.w,X		; DE 38 8C
	sec		; 38
	sty $011D.w		; 8C 1D 01
	rol $1A22.w,X		; 3E 22 1A
	cop $38.b		; 02 38
	brk $7C.b		; 00 7C
	mvp $0C,$2C		; 44 2C 0C
	pea $F084.w		; F4 84 F0
	bra  60.b		; 80 3C
	cpy $1C.b		; C4 1C
	.db $42, $3C		; 42 3C
	.db $62, $3C, $62		; 62 3C 62
	asl $0E63.w,X		; 1E 63 0E
	adc ($1E.b,X)		; 61 1E
	and ($07.b),Y		; 31 07
	and ($78.b),Y		; 31 78
	rti		; 40

	bit $1C00.w,X		; 3C 00 1C
	brk $1E.b		; 00 1E
	cop $3C.b		; 02 3C
	jsr $203E.w		; 20 3E 20
	and $101E21.l		; 2F 21 1E 10
	bpl  54.b		; 10 36
	tsb $1C26.w		; 0C 26 1C
	ror $38.b		; 66 38
	ror $30.b		; 66 30
	mvp $CC,$08		; 44 08 CC
	rti		; 40

	ldy $F438.w,X		; BC 38 F4
	tsb $1804.w		; 0C 04 18
	brk $38.b		; 00 38
	jsr $041C.w		; 20 1C 04
	jmp ($3044.w,X)		; 7C 44 30
	brk $40.b		; 00 40
	rti		; 40

	sei		; 78
	php		; 08
	brk $F8.b		; 00 F8
	brk $D8.b		; 00 D8
	bpl -36.b		; 10 DC
	jsr $1464.w		; 20 64 14
	ror $20.b,X		; 76 20
	phy		; 5A
	dec A		; 3A
	eor $01.b		; 45 01
	rol $3030.w,X		; 3E 30 30
	bvs  80.b		; 70 50
	pla		; 68
	pha		; 48
	trb $0804.w		; 1C 04 08
	brk $24.b		; 00 24
	jsr $3A3E.w		; 20 3E 3A
	ora [$01.b]		; 07 01
	trb $1CC6.w		; 1C C6 1C
.ACCU 16
	rep #$2C		; C2 2C
	.db $62, $0E, $63		; 62 0E 63
	asl $31.b,X		; 16 31
	asl A		; 0A
	and $1C0C.w,Y		; 39 0C 1C
	asl $1E.b		; 06 1E
	sei		; 78
	rti		; 40

	jmp ($1E40.w,X)		; 7C 40 1E
	cop $3C.b		; 02 3C
	jsr $000E.w		; 20 0E 00
	ora [$11.b],Y		; 17 11
	ora $00.b,S		; 03 00
	ora #$0008.w		; 09 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$03.b]		; 07 03
	adc $0000.w,X		; 7D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $00000A.l		; 0F 0A 00 00
	and [$CF.b],Y		; 37 CF
	adc $FF0F9F.l		; 6F 9F 0F FF
	ora $FE00FF.l		; 0F FF 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs -73.b		; B0 B7
	adc $0F6F6F.l		; 6F 6F 6F 0F
	rts		; 60

	ora $001F00.l		; 0F 00 1F 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	eor $187F1C.l,X		; 5F 1C 7F 18
	adc $003708.l		; 6F 08 37 00
	and $001F00.l,X		; 3F 00 1F 00
	ora $7F0500.l		; 0F 00 05 7F
	.db $62, $3F, $02		; 62 3F 02
	and $2C3F14.l,X		; 3F 14 3F 2C
	tas		; 1B
	bpl  11.b		; 10 0B
	asl A		; 0A
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $36.b		; 00 36
	rol $7F.b,X		; 36 7F
	ldx #$14FF.w		; A2 FF 14
	tax		; AA
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $20.b,X		; 36 20
	jsl $941480.l		; 22 80 14 94
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	sbc [$FF.b],Y		; F7 FF
	sbc $8EEFDF.l,X		; FF DF EF 8E
	ora $000604.l		; 0F 04 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $8EFFFF.l,X		; FF FF FF 8E
	sbc $00FF0C.l,X		; FF 0C FF 00
	ora [$00.b]		; 07 00
	asl $07.b		; 06 07
	php		; 08
	ora $100718.l		; 0F 18 07 10
	asl $1F10.w		; 0E 10 1F
	and ($0C.b),Y		; 31 0C
	and ($1E.b,X)		; 21 1E
	and $38.b,S		; 23 38
	adc $0F.b,S		; 63 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora $101F00.l		; 0F 00 1F 10
	asl $1F00.w		; 0E 00 1F
	ora ($3D.b,X)		; 01 3D
	and ($1E.b,X)		; 21 1E
	cop $C0.b		; 02 C0
	adc ($01.b)		; 72 01
	adc $80.b,S		; 63 80
	sbc $00.b,S		; E3 00
	cmp ($00.b,X)		; C1 00
	cmp ($00.b,X)		; C1 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $A1.b		; 00 A1
	jsr $40C0.w		; 20 C0 40
	eor ($41.b,X)		; 41 41
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   4.b		; F0 04
	beq   4.b		; F0 04
	sei		; 78
	tsb $FC.b		; 04 FC
	sty $38.b		; 84 38
	.db $82, $78, $C2		; 82 78 C2
	trb $3CC2.w		; 1C C2 3C
	.db $62, $F8, $00		; 62 F8 00
	sed		; F8
	brk $FC.b		; 00 FC
	tsb $78.b		; 04 78
	brk $FC.b		; 00 FC
	bra  60.b		; 80 3C
	brk $7C.b		; 00 7C
	rti		; 40

	asl $0402.w,X		; 1E 02 04
	ror $20.b		; 66 20
	lsr $7A1C.w,X		; 5E 1C 7A
	php		; 08
	stz $00.b,X		; 74 00
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $20.b		; 00 20
	jsr $043C.w		; 20 3C 04
	sec		; 38
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	ora [$78.b]		; 07 78
	ora $BF7FEF.l,X		; 1F EF 7F BF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $507F17.l,X		; 1F 17 7F 50
	sbc $010040.l,X		; FF 40 00 01
	ora ($0E.b,X)		; 01 0E
	ora [$FB.b]		; 07 FB
	and $F0FFDF.l,X		; 3F DF FF F0
	beq  15.b		; F0 0F
	sbc $8FF0E0.l,X		; FF E0 F0 8F
	brk $00.b		; 00 00
	ora [$05.b]		; 07 05
	ora $A0FF14.l,X		; 1F 14 FF A0
	sbc $F1FF0F.l,X		; FF 0F FF F1
	sbc $70FF1F.l,X		; FF 1F FF 70
	sta $D33C6C.l,X		; 9F 6C 3C D3
	bvs -81.b		; 70 AF
	rts		; 60

	sta $803FC0.l,X		; 9F C0 3F 80
	adc $007F80.l,X		; 7F 80 7F 00
	inc $93FF.w,X		; FE FF 93
	sbc $53FF2C.l,X		; FF 2C FF 53
	sbc $CBEF6D.l,X		; FF 6D EF CB
	dec $BC96.w,X		; DE 96 BC
	ldy $BC.b		; A4 BC
	tsb $FF03.w		; 0C 03 FF
	brk $FF.b		; 00 FF
	asl $FF.b		; 06 FF
	ora $FF8FFF.l		; 0F FF 8F FF
	sta [$FF.b]		; 87 FF
	cop $FF.b		; 02 FF
	brk $6F.b		; 00 6F
	sbc [$60.b]		; E7 60
	cmp ($C0.b,X)		; C1 C0
	stx $80.b		; 86 80
	ora $00DF00.l		; 0F 00 DF 00
	cmp $006700.l		; CF 00 67 00
	rti		; 40

	brk $3C.b		; 00 3C
	sbc $53FF4E.l,X		; FF 4E FF 53
	lda $72DFA3.l,X		; BF A3 DF 72
	sta $E04FF0.l		; 8F F0 4F E0
	lsr $08E0.w,X		; 5E E0 08
	ror $DF08.w,X		; 7E 08 DF
	brk $1B.b		; 00 1B
	brk $17.b		; 00 17
	bpl -113.b		; 10 8F
	bra -118.b		; 80 8A
	rts		; 60

	bne  80.b		; D0 50
	beq   0.b		; F0 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($EF.b),Y		; F1 EF
	cmp $3F.b,S		; C3 3F
	ora [$F8.b]		; 07 F8
	tsb $F0F3.w		; 0C F3 F0
	ora $02FD02.l		; 0F 02 FD 02
	sbc ($08.b),Y		; F1 08
	sbc $FD.b		; E5 FD
	bpl  -1.b		; 10 FF
	cpy $37FF.w		; CC FF 37
	sbc $F2FECC.l,X		; FF CC FE F2
	sed		; F8
	phd		; 0B
	cpx #$C0EF.w		; E0 EF C0
	cmp $8AB3C0.l,X		; DF C0 B3 8A
	ply		; 7A
	trb $D4.b		; 14 D4
	trb $D5.b		; 14 D5
	sty $55.b,X		; 94 55
	rti		; 40

	xba		; EB
	beq -16.b		; F0 F0
	plx		; FA
	jsr ($4CE0.w,X)		; FC E0 4C
	cpx #$D4AF.w		; E0 AF D4
	adc $01BF95.l,X		; 7F 95 BF 01
	sbc $70FE00.l,X		; FF 00 FE 70
	sbc $00FE70.l,X		; FF 70 FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	brk $00.b		; 00 00
	brk $47.b		; 00 47
	brk $E9.b		; 00 E9
	brk $30.b		; 00 30
	brk $23.b		; 00 23
	brk $FF.b		; 00 FF
	ora #$1AB7.w		; 09 B7 1A
	adc $020000.l		; 6F 00 00 02
	brk $47.b		; 00 47
	asl $EF.b		; 06 EF
	cmp $07DCDC.l		; CF DC DC 07
	tsb $DF.b		; 04 DF
	cli		; 58
	lda $E381B0.l,X		; BF B0 81 E3
	dex		; CA
	sbc $C2.b,X		; F5 C2
	sbc $EBD4.w,X		; FD D4 EB
	sty $EB.b,X		; 94 EB
	bit $DB.b		; 24 DB
	bit $DB.b		; 24 DB
	pha		; 48
	lda [$80.b],Y		; B7 80
	ora $EA0AEA.l,X		; 1F EA 0A EA
	cop $D6.b		; 02 D6
	trb $D6.b		; 14 D6
	trb $37.b		; 14 37
	bit $B7.b		; 24 B7
	bit $6F.b		; 24 6F
	pha		; 48
	pei ($E0.b)		; D4 E0
	plp		; 28
	bmi -128.b		; 30 80
	pha		; 48
	bcc 104.b		; 90 68
	bcc 108.b		; 90 6C
	pha		; 48
	ldx $48.b,Y		; B6 48
	ldx $48.b,Y		; B6 48
	lda [$C0.b],Y		; B7 C0
	beq  32.b		; F0 20
	sed		; F8
	bra -72.b		; 80 B8
	bne -108.b		; D0 94
	cld		; D8
	bcc 104.b		; 90 68
	pha		; 48
	jmp ($6C48.w)		; 6C 48 6C
	pha		; 48
	brk $00.b		; 00 00
	brk $36.b		; 00 36
	rol $7F.b,X		; 36 7F
	jsl $2A147F.l		; 22 7F 14 2A
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	adc $086F18.l,X		; 7F 18 6F 08
	and [$00.b],Y		; 37 00
	and $001F00.l,X		; 3F 00 1F 00
	ora $000500.l		; 0F 00 05 00
	ora ($3F.b,X)		; 01 3F
	cop $3F.b		; 02 3F
	trb $3F.b		; 14 3F
	bit $101B.w		; 2C 1B 10
	phd		; 0B
	asl A		; 0A
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($0E.b,X)		; 01 0E
	ora $1D.b,S		; 03 1D
	ora [$3B.b]		; 07 3B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$05.b]		; 07 05
	ora $141F0A.l		; 0F 0A 1F 14
	ora $6F1F37.l		; 0F 37 1F 6F
	ora $5F3F6F.l,X		; 1F 6F 3F 5F
	and $9E7FDE.l,X		; 3F DE 7F 9E
	rol $3CDF.w,X		; 3E DF 3C
	eor $3F283F.l,X		; 5F 3F 28 3F
	bpl  63.b		; 10 3F
	bpl 127.b		; 10 7F
	rts		; 60

	adc $617F21.l,X		; 7F 21 7F 61
	adc $627F21.l,X		; 7F 21 7F 62
	sbc $F8FF7E.l,X		; FF 7E FF F8
	jsr ($F8E3.w,X)		; FC E3 F8
	cmp [$F0.b]		; C7 F0
	sta $C79DE3.l		; 8F E3 9D C7
	tsa		; 3B
	sta $81FF77.l		; 8F 77 FF 81
	sbc $1DFF07.l,X		; FF 07 FF 1D
	sbc $74FF3B.l,X		; FF 3B FF 74
	sbc $D4FF6A.l,X		; FF 6A FF D4
	sbc $7F8088.l,X		; FF 88 80 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	tsb $F8F3.w		; 0C F3 F8
	sbc [$F0.b],Y		; F7 F0
	sbc $81DFE0.l		; EF E0 DF 81
	adc $FF9FFF.l,X		; 7F FF 9F FF
	adc $FFF0FF.l,X		; 7F FF F0 FF
	ora $0AFE.w		; 0D FE 0A
	jsr ($F914.w,X)		; FC 14 F9
	plp		; 28
	sbc ($90.b,S),Y		; F3 90
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	php		; 08
	sec		; 38
	plp		; 28
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $47.b		; 00 47
	ora #$1116.w		; 09 16 11
	rol $5D22.w		; 2E 22 5D
	tsb $3B.b		; 04 3B
	brk $1F.b		; 00 1F
	ora ($0F.b,X)		; 01 0F
	cop $06.b		; 02 06
	cop $00.b		; 02 00
	ora $1D09.w		; 0D 09 1D
	ora ($3B.b),Y		; 11 3B
	jsl $000407.l		; 22 07 04 00
	brk $02.b		; 00 02
	cop $01.b		; 02 01
	brk $90.b		; 00 90
	tya		; 98
	brk $F0.b		; 00 F0
	rti		; 40

	sbc $3E017E.l,X		; FF 7E 01 3E
	ora ($6C.b,X)		; 01 6C
	sbc ($00.b,X)		; E1 00
	ora [$00.b]		; 07 00
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $B3.b		; 00 B3
	lda ($FE.b,S),Y		; B3 FE
	brk $FE.b		; 00 FE
	brk $9E.b		; 00 9E
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6F.b		; 00 6F
	sta $1F3FDF.l,X		; 9F DF 3F 1F
	sbc $00FE1F.l,X		; FF 1F FE 00
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	adc $DFDFDF.l		; 6F DF DF DF
	ora $001FC0.l,X		; 1F C0 1F 00
	rol $0000.w,X		; 3E 00 00
	phd		; 0B
	dec $17.b		; C6 17
	cmp $4FEF17.l		; CF 17 EF 4F
	sbc $C3FFCF.l,X		; FF CF FF C3
	sbc $1DF196.l		; EF 96 F1 1D
	inc $BF80.w,X		; FE 80 BF
	ora $3F.b,S		; 03 3F
	eor [$1F.b]		; 47 1F
	cmp [$1F.b]		; C7 1F
	sbc [$1F.b]		; E7 1F
	sbc ($1F.b,X)		; E1 1F
	cpy #$9C1F.w		; C0 1F 9C
	and $FF78F6.l,X		; 3F F6 78 FF
	bcc  -7.b		; 90 F9
	cpy #$C0A1.w		; C0 A1 C0
	phx		; DA
	bra 108.b		; 80 6C
	bra -96.b		; 80 A0
	brk $98.b		; 00 98
	brk $60.b		; 00 60
	jsr ($FA80.w,X)		; FC 80 FA
	bra  -9.b		; 80 F7
	brk $FE.b		; 00 FE
	brk $E4.b		; 00 E4
	brk $D8.b		; 00 D8
	brk $D8.b		; 00 D8
	brk $C0.b		; 00 C0
	brk $3C.b		; 00 3C
	brk $65.b		; 00 65
	brk $27.b		; 00 27
	ora ($1E.b,X)		; 01 1E
	ora $1D.b,S		; 03 1D
	ora $DE3F77.l		; 0F 77 3F DE
	jsr ($17FB.w,X)		; FC FB 17
	ora $3A.b,S		; 03 3A
	inc A		; 1A
	ora $0319.w,Y		; 19 19 03
	ora $0F.b,S		; 03 0F
	asl A		; 0A
	and $A1FF28.l,X		; 3F 28 FF A1
	inc $3804.w,X		; FE 04 38
	cmp $FEB37C.l,X		; DF 7C B3 FE
	adc ($E8.b,X)		; 61 E8
	cmp $B0BBD1.l,X		; DF D1 BB B0
	sei		; 78
	adc ($EA.b)		; 72 EA
.INDEX 8
	sep #$DE		; E2 DE
	adc $CCFE60.l,X		; 7F 60 FE CC
	sbc $20F89E.l,X		; FF 9E F8 20
	pea $F740.w		; F4 40 F7
	cpy #$FD.b		; C0 FD
	tya		; 98
	sbc $482C.w,X		; FD 2C 48
	lda [$80.b],Y		; B7 80
	adc $00EF10.l,X		; 7F 10 EF 00
	sbc $B8DF40.l,X		; FF 40 DF B8
	sta $74.b,S		; 83 74
	ora [$F8.b]		; 07 F8
	ora $EF486F.l		; 0F 6F 48 EF
	bra -34.b		; 80 DE
	bpl   6.b		; 10 06
	brk $A0.b		; 00 A0
	bra 126.b		; 80 7E
	cop $FA.b		; 02 FA
	cop $F4.b		; 02 F4
	tsb $44.b		; 04 44
	tyx		; BB
	mvp $44,$BB		; 44 BB 44
	tyx		; BB
	rti		; 40

	lda $00FE00.l,X		; BF 00 FE 00
	.db $82, $3C, $82		; 82 3C 82
	rol $7682.w,X		; 3E 82 76
	mvp $44,$76		; 44 76 44
	ror $44.b,X		; 76 44
	rts		; 60

	rti		; 40

	brk $00.b		; 00 00
	jmp ($FE00.w,X)		; 7C 00 FE
	.db $82, $FC, $80		; 82 FC 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	beq  -8.b		; F0 F8
	cld		; D8
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cpx #$20.b		; E0 20
	beq -128.b		; F0 80
	sed		; F8
	brk $08.b		; 00 08
	asl $00.b,X		; 16 00
	asl $3E08.w,X		; 1E 08 3E
	bpl  54.b		; 10 36
	tsb $1C26.w		; 0C 26 1C
	ror $38.b		; 66 38
	ror $30.b		; 66 30
	mvp $08,$0C		; 44 0C 08
	trb $10.b		; 14 10
	bpl  16.b		; 10 10
	tsb $1804.w		; 0C 04 18
	brk $38.b		; 00 38
	jsr $041C.w		; 20 1C 04
	jmp ($0044.w,X)		; 7C 44 00
	sed		; F8
	brk $7C.b		; 00 7C
	brk $6C.b		; 00 6C
	php		; 08
	ror $3210.w		; 6E 10 32
	asl A		; 0A
	tsa		; 3B
	bpl  45.b		; 10 2D
	ora $2822.w,X		; 1D 22 28
	php		; 08
	clc		; 18
	clc		; 18
	sec		; 38
	plp		; 28
	bit $24.b,X		; 34 24
	asl $0402.w		; 0E 02 04
	brk $12.b		; 00 12
	bpl  31.b		; 10 1F
	ora $C478.w,X		; 1D 78 C4
	bit $1CC4.w,X		; 3C C4 1C
	.db $42, $3C		; 42 3C
	.db $62, $3C, $62		; 62 3C 62
	asl $0E63.w,X		; 1E 63 0E
	adc ($1E.b,X)		; 61 1E
	and ($3C.b),Y		; 31 3C
	tsb $78.b		; 04 78
	rti		; 40

	bit $1C00.w,X		; 3C 00 1C
	brk $1E.b		; 00 1E
	cop $3C.b		; 02 3C
	jsr $203E.w		; 20 3E 20
	and $310C21.l		; 2F 21 0C 31
	asl $0833.w,X		; 1E 33 08
	jsl $00260C.l		; 22 0C 26 00
	bit $08.b		; 24 08
	bit $6C00.w		; 2C 00 6C
	jsr $1F58.w		; 20 58 1F
	ora ($0C.b),Y		; 11 0C
	brk $1E.b		; 00 1E
	cop $18.b		; 02 18
	brk $3C.b		; 00 3C
	bit $30.b		; 24 30
	jsr $2838.w		; 20 38 28
	jsr $3820.w		; 20 20 38
	sty $78.b		; 84 78
	cpy $1C.b		; C4 1C
	dec $1C.b		; C6 1C
.ACCU 16
	rep #$2C		; C2 2C
	.db $62, $0E, $63		; 62 0E 63
	asl $31.b,X		; 16 31
	asl A		; 0A
	and $80F8.w,Y		; 39 F8 80
	ldy $7884.w,X		; BC 84 78
	rti		; 40

	jmp ($1E40.w,X)		; 7C 40 1E
	cop $3C.b		; 02 3C
	jsr $000E.w		; 20 0E 00
	ora [$11.b],Y		; 17 11
	bra -112.b		; 80 90
	bvc -40.b		; 50 D8
	bra 104.b		; 80 68
	inx		; E8
	trb $04.b		; 14 04
	plx		; FA
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	bvs  16.b		; 70 10
	jsr $9000.w		; 20 00 90
	bra  -8.b		; 80 F8
	inx		; E8
	trb $0E04.w		; 1C 04 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	adc $1C461C.l		; 6F 1C 46 1C
	dec $7C.b		; C6 7C
	dec $30.b		; C6 30
	sty $38.b		; 84 38
	sty $8860.w		; 8C 60 88
	beq -104.b		; F0 98
	asl $06.b,X		; 16 06
	ply		; 7A
	.db $42, $78		; 42 78
	rti		; 40

	sec		; 38
	brk $7C.b		; 00 7C
	tsb $F0.b		; 04 F0
	bra  -8.b		; 80 F8
	dey		; 88
	rts		; 60

	brk $60.b		; 00 60
	cpx $30.b		; E4 30
	pea $7E1C.w		; F4 1C 7E
	php		; 08
	rol $3E00.w,X		; 3E 00 3E
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	clc		; 18
	brk $48.b		; 00 48
	rti		; 40

	jsr $1020.w		; 20 20 10
	bpl  22.b		; 10 16
	bpl  14.b		; 10 0E
	brk $05.b		; 00 05
	ora ($03.b,X)		; 01 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	inc $FFFF.w		; EE FF FF
	ldx $1CDF.w,Y		; BE DF 1C
	asl $0C08.w,X		; 1E 08 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	inc $1CFF.w,X		; FE FF 1C
	sbc $00FE18.l,X		; FF 18 FE 00
	asl $0C00.w		; 0E 00 0C
	ora [$19.b]		; 07 19
	asl $0C19.w		; 0E 19 0C
	ora ($02.b),Y		; 11 02
	and ($10.b,S),Y		; 33 10
	and $043D0E.l		; 2F 0E 3D 04
	dec A		; 3A
	brk $1E.b		; 00 1E
	asl $0708.w		; 0E 08 07
	ora ($1F.b,X)		; 01 1F
	ora ($0C.b),Y		; 11 0C
	brk $10.b		; 00 10
	bpl  30.b		; 10 1E
	cop $1C.b		; 02 1C
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	cop $03.b		; 02 03
	asl $01.b		; 06 01
	tsb $03.b		; 04 03
	tsb $07.b		; 04 07
	tsb $0803.w		; 0C 03 08
	ora [$08.b]		; 07 08
	ora $020318.l		; 0F 18 03 02
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $000708.l		; 0F 08 07 00
	asl $10.b		; 06 10
	ora $311C11.l		; 0F 11 1C 31
	asl $1823.w		; 0E 23 18
	and $3C.b,S		; 23 3C
	adc [$1C.b]		; 67 1C
	lsr $00.b		; 46 00
	dec $0F.b		; C6 0F
	brk $1E.b		; 00 1E
	bpl  15.b		; 10 0F
	ora ($1D.b,X)		; 01 1D
	ora ($3E.b,X)		; 01 3E
	jsl $38021A.l		; 22 1A 02 38
	brk $7C.b		; 00 7C
	mvp $1F,$D0		; 44 D0 1F
	cpx #$39.b		; E0 39
	bra  49.b		; 80 31
	cpy #$71.b		; C0 71
	brk $60.b		; 00 60
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	sbc ($01.b,X)		; E1 01
	bne  16.b		; D0 10
	cpx #$20.b		; E0 20
	ldy #$20.b		; A0 20
	cpy #$40.b		; C0 40
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	sei		; 78
	cop $78.b		; 02 78
	cop $F8.b		; 02 F8
	.db $82, $3C, $82		; 82 3C 82
	ror $1CC2.w,X		; 7E C2 1C
	cmp ($3C.b,X)		; C1 3C
	adc ($0E.b,X)		; 61 0E
	adc ($FC.b,X)		; 61 FC
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $FE.b		; 00 FE
	.db $82, $3C, $00		; 82 3C 00
	ror $1E40.w,X		; 7E 40 1E
	brk $3E.b		; 00 3E
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
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora $0F.b,S		; 03 0F
	ora [$3F.b]		; 07 3F
	ora $BE7FEC.l,X		; 1F EC 7F BE
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $507C10.l,X		; 1F 10 7C 50
	sbc $FE3041.l,X		; FF 41 30 FE
	adc $F0F3.w,Y		; 79 F3 F0
	cpx $F3.b		; E4 F3
	cmp $F0.b,S		; C3 F0
	sty $E3.b		; 84 E3
	ora $F0.b,S		; 03 F0
	tsb $71.b		; 04 71
	sta [$FB.b]		; 87 FB
	cop $F2.b		; 02 F2
	asl $E0.b		; 06 E0
	ora $800FC1.l		; 0F C1 0F 80
	ora $001F01.l		; 0F 01 1F 00
	ora $A08F80.l		; 0F 80 8F A0
	cmp $48A810.l,X		; DF 10 A8 48
	bvc -124.b		; 50 84
	tya		; 98
	mvn $A4,$48		; 54 48 A4
	tay		; A8
	ror $F670.w,X		; 7E 70 F6
	cpx #$50.b		; E0 50
	bvc -88.b		; 50 A8
	iny		; C8
	bpl -32.b		; 10 E0
	tya		; 98
	cpx #$08.b		; E0 08
	cpx #$88.b		; E0 88
	beq  96.b		; F0 60
	pea $ECE0.w		; F4 E0 EC
	rol $3EFD.w,X		; 3E FD 3E
	sbc $BB7C.w,X		; FD 7C BB
	jmp ($78BB.w,X)		; 7C BB 78
	lda $38FF38.l,X		; BF 38 FF 38
	eor $7F7F18.l,X		; 5F 18 7F 7F
	cop $7F.b		; 02 7F
	ora $7F.b,S		; 03 7F
	eor $7F.b		; 45 7F
	eor $7F.b		; 45 7F
	eor $7D.b,S		; 43 7D
	ora ($7D.b,X)		; 01 7D
	adc $3D.b		; 65 3D
	ora $70.b		; 05 70
	sbc $F1FF70.l,X		; FF 70 FF F1
	adc $F2FFF3.l,X		; 7F F3 FF F2
	sbc $F8F7F8.l,X		; FF F8 F7 F8
	sbc $F8FEF9.l,X		; FF F9 FE F8
	bra  -2.b		; 80 FE
	asl $8CFD.w		; 0E FD 8C
	xce		; FB
	php		; 08
	xce		; FB
	brk $FA.b		; 00 FA
	php		; 08
	jsr ($FD04.w,X)		; FC 04 FD
	ora $07.b		; 05 07
	stx $A1.b		; 86 A1
	eor $F688.w,Y		; 59 88 F6
	eor ($AD.b)		; 52 AD
	ora ($ED.b)		; 12 ED
	ldy $5B.b		; A4 5B
	ldy $5B.b		; A4 5B
	eor #$02B6.w		; 49 B6 02
	adc $A8A7A1.l,X		; 7F A1 A7 A8
	ora #$525A.w		; 09 5A 52
	phy		; 5A
	ora ($B6.b)		; 12 B6
	ldy $B6.b		; A4 B6
	ldy $6F.b		; A4 6F
	eor #$EC68.w		; 49 68 EC
	ldy $CE6E.w		; AC 6E CE
	sbc $006F67.l		; EF 67 6F 00
	sbc ($A0.b,S),Y		; F3 A0
	jmp $205CA0.l		; 5C A0 5C 20
	dec $FE28.w,X		; DE 28 FE
	tsb $4EFF.w		; 0C FF 4E
	sbc $00FF27.l,X		; FF 27 FF 00
	ora $A8A1A8.l		; 0F A8 A1 A8
	ldy #$B4.b		; A0 B4
	jsr $E0D0.w		; 20 D0 E0
	ldy $1FF8.w,X		; BC F8 1F
	ldx $0F0F.w,Y		; BE 0F 0F
	ora [$07.b]		; 07 07
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  -8.b		; 80 F8
	bpl  -2.b		; 10 FE
	tsb $06FF.w		; 0C FF 06
	ora $000F03.l,X		; 1F 03 0F 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	clc		; 18
	brk $2C.b		; 00 2C
	brk $43.b		; 00 43
	brk $A2.b		; 00 A2
	sta $D7.b,S		; 83 D7
	adc [$7F.b],Y		; 77 7F
	sta [$FE.b]		; 87 FE
	asl $F9.b		; 06 F9
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	bit $1DBC.w,X		; 3C BC 1D
	cmp $E80B.w,X		; DD 0B E8
	adc [$80.b],Y		; 77 80
	sbc [$01.b],Y		; F7 01
	sta [$06.b]		; 87 06
	ora ($7A.b),Y		; 11 7A
	bpl  33.b		; 10 21
	brk $31.b		; 00 31
	brk $11.b		; 00 11
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($01.b),Y		; 31 01
	and ($30.b),Y		; 31 30
	ora ($01.b),Y		; 11 01
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $3EE0.w,X		; 3E E0 3E
	cpx #$3E.b		; E0 3E
	rts		; 60

	asl $1E60.w,X		; 1E 60 1E
	jsr $200E.w		; 20 0E 20
	ora $301F30.l,X		; 1F 30 1F 30
	ora $001F00.l,X		; 1F 00 1F 00
	ora $203F00.l,X		; 1F 00 3F 20
	and $001F20.l,X		; 3F 20 1F 00
	ora $000F00.l		; 0F 00 0F 00
	ora $3EC1.w,X		; 1D C1 3E
	cpx #$0E.b		; E0 0E
	ldy #$17.b		; A0 17
	bcs  11.b		; B0 0B
	tya		; 98
	ora [$9C.b]		; 07 9C
	ora ($8C.b,X)		; 01 8C
	cop $86.b		; 02 86
	rol $1F00.w,X		; 3E 00 1F
	brk $3F.b		; 00 3F
	jsr $000F.w		; 20 0F 00
	ora [$10.b],Y		; 17 10
	phd		; 0B
	php		; 08
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $36.b		; 00 36
	rol $7F.b,X		; 36 7F
	jsl $2A147F.l		; 22 7F 14 2A
	brk $1C.b		; 00 1C
	brk $88.b		; 00 88
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	tya		; 98
	bvc -56.b		; 50 C8
	php		; 08
	cpx $00.b		; E4 00
	pea $FA04.w		; F4 04 FA
	bvs  15.b		; 70 0F
	php		; 08
	ora [$04.b]		; 07 04
	ora $E0.b,S		; 03 E0
	bra  56.b		; 80 38
	php		; 08
	clc		; 18
	brk $6C.b		; 00 6C
	mvp $60,$74		; 44 74 60
	asl $0702.w		; 0E 02 07
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $36.b,X		; 36 36
	adc $147F22.l,X		; 7F 22 7F 14
	rol A		; 2A
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	ora ($06.b,X)		; 01 06
	ora $0D.b,S		; 03 0D
	ora [$1B.b]		; 07 1B
	ora $3F0F37.l		; 0F 37 0F 3F
	ora $5F3F6F.l,X		; 1F 6F 3F 5F
	and $01035E.l,X		; 3F 5E 03 01
	ora [$02.b]		; 07 02
	ora $181F04.l		; 0F 04 1F 18
	and $103F20.l,X		; 3F 20 3F 10
	and $617F20.l,X		; 3F 20 7F 61
	inc $FCFD.w,X		; FE FD FC
	xce		; FB
	sed		; F8
	sbc [$F0.b],Y		; F7 F0
	sbc $C0DFE0.l		; EF E0 DF C0
	lda $317F90.l,X		; BF 90 7F 31
	sbc $FF03FF.l,X		; FF FF 03 FF
	ora [$FF.b]		; 07 FF
	asl $18FF.w		; 0E FF 18
	sbc $61FF30.l,X		; FF 30 FF 61
	inc $FDC2.w,X		; FE C2 FD
	sty $31.b		; 84 31
	cmp [$11.b]		; C7 11
	sbc $00.b,S		; E3 00
	sbc $0B.b,X		; F5 0B
	sbc [$0F.b],Y		; F7 0F
	sbc [$6F.b],Y		; F7 6F
	cmp [$D5.b]		; C7 D5
	xba		; EB
	stz $C0CD.w,X		; 9E CD C0
	cmp $E0EFE0.l		; CF E0 EF E0
	and $80EFE0.l		; 2F E0 EF 80
	sta $E03F60.l		; 8F 60 3F E0
	ora $F33FC0.l,X		; 1F C0 3F F3
	cpx #$F3.b		; E0 F3
	cpx #$F1.b		; E0 F1
	cmp ($3E.b,X)		; C1 3E
	cmp ($F3.b,X)		; C1 F3
	cpy #$F6.b		; C0 F6
	cpy #$F8.b		; C0 F8
	cpy #$E0.b		; C0 E0
	inx		; E8
	cpx #$EE.b		; E0 EE
	cpy #$EE.b		; C0 EE
	ora ($CE.b,X)		; 01 CE
	ora ($C0.b,X)		; 01 C0
	bra -36.b		; 80 DC
	cpy #$DB.b		; C0 DB
	rti		; 40

.ACCU 16
	rep #$60		; C2 60
	jsr ($2F18.w,X)		; FC 18 2F
	php		; 08
	tsa		; 3B
	php		; 08
	ora ($00.b,S),Y		; 13 00
	ora $0900.w,Y		; 19 00 09
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	and $1831.w,Y		; 39 31 18
	brk $18.b		; 00 18
	clc		; 18
	php		; 08
	brk $08.b		; 00 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	sbc $ECFBEC.l		; EF EC FB EC
	sbc $767FEC.l,X		; FF EC 7F 76
	sbc $AF72.w		; ED 72 AF
	and ($EE.b),Y		; 31 EE
	and ($5F.b),Y		; 31 5F
	sbc $FC10.w,X		; FD 10 FC
	tsb $FE.b		; 04 FE
	cop $FE.b		; 02 FE
	bra  -1.b		; 80 FF
	ora ($FF.b,S),Y		; 13 FF
	cld		; D8
	adc [$15.b],Y		; 77 15
	adc ($62.b,S),Y		; 73 62
	eor #$89B6.w		; 49 B6 89
	ror $11.b,X		; 76 11
	inc $FE01.w		; EE 01 FE
	ora ($FE.b,X)		; 01 FE
	trb $22FF.w		; 1C FF 22
	sbc $3D.b,S		; E3 3D
	sbc ($6F.b,X)		; E1 6F
	eor #$89ED.w		; 49 ED 89
	eor $0511.w,X		; 5D 11 05
	ora ($39.b,X)		; 01 39
	and $2222.w,Y		; 39 22 22
	ora $1E01.w,X		; 1D 01 1E
	brk $10.b		; 00 10
	inc $EF10.w		; EE 10 EF
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	clc		; 18
.INDEX 16
	rep #$1E		; C2 1E
	cmp $D4.b,S		; C3 D4
	bpl -38.b		; 10 DA
	bpl -24.b		; 10 E8
	brk $EC.b		; 00 EC
	brk $E0.b		; 00 E0
	brk $18.b		; 00 18
	clc		; 18
	jmp ($7C40.w,X)		; 7C 40 7C
	rti		; 40

	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	ora ($0F.b,X)		; 01 0F
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora $CF0708.l		; 0F 08 07 CF
	adc [$CE.b],Y		; 77 CE
	bvs -49.b		; 70 CF
	and ($CD.b)		; 32 CD
	inc A		; 1A
	cmp $E537.w		; CD 37 E5
	bit $E7.b,X		; 34 E7
	bpl -25.b		; 10 E7
	adc [$40.b],Y		; 77 40
	and [$01.b],Y		; 37 01
	tsa		; 3B
	php		; 08
	ply		; 7A
	lsr A		; 4A
	lda ($82.b)		; B2 82
	txs		; 9A
	.db $82, $9B, $81		; 82 9B 81
	ldy $1E24.w,X		; BC 24 1E
	and ($0E.b,X)		; 21 0E
	and ($0E.b,X)		; 21 0E
	and ($1C.b,X)		; 21 1C
	and ($1E.b),Y		; 31 1E
	adc ($0C.b,S),Y		; 73 0C
	.db $62, $38, $E2		; 62 38 E2
	cli		; 58
.ACCU 16
.INDEX 16
	rep #$3E		; C2 3E
	jsr $001E.w		; 20 1E 00
	asl $0E00.w,X		; 1E 00 0E
	brk $2C.b		; 00 2C
	jsr $223E.w		; 20 3E 22
	jmp $80BC40.l		; 5C 40 BC 80
	brk $00.b		; 00 00
	brk $36.b		; 00 36
	rol $7F.b,X		; 36 7F
	jsl $2A147F.l		; 22 7F 14 2A
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	cpx $64.b		; E4 64
	pea $DC5C.w		; F4 5C DC
	tsb $34CE.w		; 0C CE 34
	ror $0A.b		; 66 0A
	.db $62, $1C, $31		; 62 1C 31
	tsb $31.b		; 04 31
	sec		; 38
	jsr $1018.w		; 20 18 10
	jsr $7000.w		; 20 00 70
	rti		; 40

	inc A		; 1A
	cop $3C.b		; 02 3C
	jsr $000E.w		; 20 0E 00
	ora $361C11.l,X		; 1F 11 1C 36
	bpl  44.b		; 10 2C
	brk $3C.b		; 00 3C
	jsr $007C.w		; 20 7C 00
	pha		; 48
	rti		; 40

	pha		; 48
	rti		; 40

	bne  64.b		; D0 40
	bne   8.b		; D0 08
	brk $10.b		; 00 10
	bpl  24.b		; 10 18
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	pha		; 48
	bmi   0.b		; 30 00
	bcs -112.b		; B0 90
	ldy #$2080.w		; A0 80 20
	bne -128.b		; D0 80
	sei		; 78
	rti		; 40

	sec		; 38
	jsr $1C1C.w		; 20 1C 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $70.b		; 00 70
	bpl  56.b		; 10 38
	php		; 08
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	ora [$07.b]		; 07 07
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora [$03.b]		; 07 03
	ora [$06.b]		; 07 06
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$4000.w		; C0 00 40
	rti		; 40

	rts		; 60

	bra  32.b		; 80 20
	ldy #$C030.w		; A0 30 C0
	bpl   0.b		; 10 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	cpx #$C020.w		; E0 20 C0
	brk $F0.b		; 00 F0
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	cpy #$2000.w		; C0 00 20
	brk $68.b		; 00 68
	bra 124.b		; 80 7C
	sed		; F8
	pea $FAFC.w		; F4 FC FA
	cpx $009B.w		; EC 9B 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$8080.w		; C0 80 80
	inx		; E8
	bra  -4.b		; 80 FC
	php		; 08
	jsr ($FE04.w,X)		; FC 04 FE
	stz $9C.b		; 64 9C
	adc ($7C.b,S),Y		; 73 7C
	sta $10.b,S		; 83 10
	cmp $DCC2F4.l		; CF F4 C2 DC
	ldy $78.b		; A4 78
	tsb $30.b		; 04 30
	tsb $C850.w		; 0C 50 C8
	inc $8C8C.w,X		; FE 8C 8C
	tsb $6008.w		; 0C 08 60
	pha		; 48
	bvc  72.b		; 50 48
	jsr $00F8.w		; 20 F8 00
	sed		; F8
	php		; 08
	bcs -128.b		; B0 80
	asl $0C30.w,X		; 1E 30 0C
	and ($1E.b,X)		; 21 1E
	and $38.b,S		; 23 38
	adc $1C.b,S		; 63 1C
	lsr $30.b		; 46 30
	mvp $CC,$38		; 44 38 CC
	rts		; 60

	iny		; C8
	ora $011F00.l		; 0F 00 1F 01
	bit $1E20.w,X		; 3C 20 1E
	cop $38.b		; 02 38
	brk $3C.b		; 00 3C
	tsb $70.b		; 04 70
	rti		; 40

	sec		; 38
	php		; 08
	sei		; 78
	iny		; C8
	bpl  68.b		; 10 44
	plp		; 28
	stz $00.b		; 64 00
	bit $3E04.w,X		; 3C 04 3E
	cop $3F.b		; 02 3F
	asl A		; 0A
	ora $1902.w,Y		; 19 02 19
	bmi   0.b		; 30 00
	sei		; 78
	rti		; 40

	trb $2004.w		; 1C 04 20
	jsr $101C.w		; 20 1C 10
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora $C65409.l		; 0F 09 54 C6
	sec		; 38
.INDEX 8
	sep #$1A		; E2 1A
	adc ($15.b,S),Y		; 73 15
	and ($04.b),Y		; 31 04
	bmi   8.b		; 30 08
	trb $1E0C.w		; 1C 0C 1E
	phd		; 0B
	tas		; 1B
	clv		; B8
	bra  94.b		; 80 5E
	.db $42, $2C		; 42 2C
	jsr $000E.w		; 20 0E 00
	ora $040710.l,X		; 1F 10 07 04
	ora $02.b,S		; 03 02
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	bcs  -8.b		; B0 F8
	bmi  -8.b		; 30 F8
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	bcs  -4.b		; B0 FC
	bmi  -4.b		; 30 FC
	brk $F8.b		; 00 F8
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	php		; 08
	ora #$1A08.w		; 09 08 1A
	php		; 08
	dec A		; 3A
	php		; 08
	rol $3E00.w,X		; 3E 00 3E
	jsr $105C.w		; 20 5C 10
	jmp ($7800.w,X)		; 7C 00 78
	asl $00.b		; 06 00
	asl $12.b,X		; 16 12
	trb $10.b		; 14 10
	trb $14.b		; 14 14
	bit $04.b		; 24 04
	sec		; 38
	jsr $0038.w		; 20 38 00
	brk $00.b		; 00 00
	asl $70.b,X		; 16 70
	bit $5C61.w		; 2C 61 5C
	cmp $38.b,S		; C3 38
	.db $82, $F0, $86		; 82 F0 86
	rts		; 60

	tsb $18F0.w		; 0C F0 18
	cpy #$18.b		; C0 18
	and $415F20.l		; 2F 20 5F 41
	rol $FC02.w,X		; 3E 02 FC
	bra 124.b		; 80 7C
	tsb $F8.b		; 04 F8
	php		; 08
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	trb $7FEF.w		; 1C EF 7F
	lda $000000.l,X		; BF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $80.b		; 00 80
	brk $7F.b		; 00 7F
	eor ($FF.b),Y		; 51 FF
	cpy #$38.b		; C0 38
	adc [$70.b],Y		; 77 70
	sbc $80DFE0.l		; EF E0 DF 80
	sbc $13F106.l,X		; FF 06 F1 13
	bne  41.b		; D0 29
	tay		; A8
	eor ($D4.b),Y		; 51 D4
	rol $7E0A.w,X		; 3E 0A 7E
	asl $FD.b,X		; 16 FD
	bit $30F3.w		; 2C F3 30
	cmp [$CE.b]		; C7 CE
	sta ($3F.b,S),Y		; 93 3F
	and #$107F.w		; 29 7F 10
	rol $61AC.w,X		; 3E AC 61
	asl $B0.b,X		; 16 B0
	php		; 08
	cmp $CF40.w,Y		; D9 40 CF
	jsr $12EF.w		; 20 EF 12
	sbc $CA.b,X		; F5 CA
	and $3FC8.w,X		; 3D C8 3F
	sta $606F02.l,X		; 9F 02 6F 60
	rol $30.b,X		; 36 30
	bmi  16.b		; 30 10
	sta [$01.b],Y		; 97 01
	wai		; CB
	cop $E2.b		; 02 E2
	rep #$00		; C2 00
	brk $F9.b		; 00 F9
	xce		; FB
	nop		; EA
	sbc $3303.w,Y		; F9 03 33
	ora $C1.b,S		; 03 C1
	cpy $BA.b		; C4 BA
	sta $7A.b		; 85 7A
	ora $FA.b		; 05 FA
	ora $FA.b		; 05 FA
	bvs  -1.b		; 70 FF
	rts		; 60

	sbc $00FF01.l,X		; FF 01 FF 00
	and $B75DDC.l,X		; 3F DC 5D B7
	sta [$77.b]		; 87 77
	ora [$EF.b],Y		; 17 EF
	ora [$F8.b]		; 07 F8
	sed		; F8
	beq -16.b		; F0 F0
	jsr $F0F0.w		; 20 F0 F0
	bne -28.b		; D0 E4
	rol A		; 2A
	ora ($CD.b)		; 12 CD
	eor ($AE.b),Y		; 51 AE
	pha		; 48
	lda [$F0.b],Y		; B7 F0
	jsr ($F860.w,X)		; FC 60 F8
	jsr $D0F8.w		; 20 F8 D0
	jsr ($F424.w,X)		; FC 24 F4
	dec $F2.b,X		; D6 F2
	cmp [$D5.b],Y		; D7 D5
	stp		; DB
	phx		; DA
	ora $2D1F3C.l		; 0F 3C 1F 2D
	and $593F59.l,X		; 3F 59 3F 59
	and $7B3771.l,X		; 3F 71 37 7B
	adc [$3B.b],Y		; 77 3B
	adc [$3B.b],Y		; 77 3B
	and $123F23.l,X		; 3F 23 3F 12
	and $263F26.l,X		; 3F 26 3F 26
	adc $047F4E.l,X		; 7F 4E 7F 04
	adc $447F44.l,X		; 7F 44 7F 44
	xba		; EB
	sbc [$F9.b]		; E7 F9
	beq  -8.b		; F0 F8
	sbc [$F1.b],Y		; F7 F1
	sbc $F1FFF3.l,X		; FF F3 FF F1
	sbc $E0EFF0.l		; EF F0 EF E0
	cmp $F81FE0.l,X		; DF E0 1F F8
	ora $FD0AFE.l		; 0F FE 0A FD
	tsb $FB.b		; 04 FB
	brk $FB.b		; 00 FB
	inc A		; 1A
	sbc $FE1D.w,X		; FD 1D FE
	rol $F906.w		; 2E 06 F9
	ora ($FF.b,X)		; 01 FF
	tsb $0EF0.w		; 0C F0 0E
	bcs  15.b		; B0 0F
	bmi  15.b		; 30 0F
	bpl   7.b		; 10 07
	bpl   7.b		; 10 07
	bpl  30.b		; 10 1E
	asl $80.b		; 06 80
	bra  31.b		; 80 1F
	bpl  31.b		; 10 1F
	bpl  31.b		; 10 1F
	bpl  31.b		; 10 1F
	bpl  15.b		; 10 0F
	brk $0F.b		; 00 0F
	brk $02.b		; 00 02
	inc $CF81.w,X		; FE 81 CF
	bra -61.b		; 80 C3
	bra -63.b		; 80 C1
	bra -64.b		; 80 C0
	brk $47.b		; 00 47
	tsb $7C.b		; 04 7C
	ora ($70.b,S),Y		; 13 70
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($01.b,X)		; 81 01
	wai		; CB
	pha		; 48
	cmp $800040.l		; CF 40 00 80
	bra  64.b		; 80 40
	rti		; 40

	ldy #$00.b		; A0 00
	cpx #$40.b		; E0 40
	beq -64.b		; F0 C0
	clc		; 18
	cpx #$0C.b		; E0 0C
	bvs   6.b		; 70 06
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	jsr $F020.w		; 20 20 F0
	bpl  -8.b		; 10 F8
	php		; 08
	jsr ($0004.w,X)		; FC 04 00
	and ($04.b)		; 32 04
	rol $08.b,X		; 36 08
	bit $3C00.w,X		; 3C 00 3C
	brk $3C.b		; 00 3C
	bmi  56.b		; 30 38
	brk $78.b		; 00 78
	jsr $1C48.w		; 20 48 1C
	bpl  24.b		; 10 18
	bpl  20.b		; 10 14
	trb $18.b		; 14 18
	clc		; 18
	jsr $3800.w		; 20 00 38
	brk $40.b		; 00 40
	rti		; 40

	bvs  64.b		; 70 40
	brk $88.b		; 00 88
	brk $F8.b		; 00 F8
	cpx #$F8.b		; E0 F8
	bmi  -4.b		; 30 FC
	pla		; 68
	jsr ($BC48.w,X)		; FC 48 BC
	ldy #$18.b		; A0 18
	cpy #$38.b		; C0 38
	brk $00.b		; 00 00
	inx		; E8
	brk $F0.b		; 00 F0
	brk $B8.b		; 00 B8
	brk $78.b		; 00 78
	brk $28.b		; 00 28
	bra   8.b		; 80 08
	rti		; 40

	bpl -128.b		; 10 80
	bra 112.b		; 80 70
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	ora $C3.b,S		; 03 C3
	jsr $0000.w		; 20 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora [$43.b]		; 07 43
	sbc $01.b,S		; E3 01
	lda $60.b,S		; A3 60
	lda ($40.b),Y		; B1 40
	sta ($B3.b),Y		; 91 B3
	ora ($E7.b,S),Y		; 13 E7
	phk		; 4B
	sta [$57.b]		; 87 57
	and $070367.l		; 2F 67 03 07
	eor ($07.b,X)		; 41 07
	rti		; 40

	ora [$60.b]		; 07 60
	ora $61.b,S		; 03 61
	ora [$31.b]		; 07 31
	ora [$63.b]		; 07 63
	eor $001F03.l		; 4F 03 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$03.b]		; 07 03
	asl $1D06.w		; 0E 06 1D
	tsb $307B.w		; 0C 7B 30
	cmp $000000.l,X		; DF 00 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $07.b		; 02 07
	ora $0F.b		; 05 0F
	ora $3F.b,S		; 03 3F
	rol $7E.b		; 26 7E
	jsr $0D00.w		; 20 00 0D
	brk $13.b		; 00 13
	ora ($26.b,X)		; 01 26
	ora ($7F.b,X)		; 01 7F
	tsb $0B.b		; 04 0B
	tsb $0B.b		; 04 0B
	tsb $1C1B.w		; 0C 1B 1C
	tsa		; 3B
	cop $02.b		; 02 02
	ora $190C.w		; 0D 0C 19
	ora $0001.w,Y		; 19 01 00
	ora $04.b		; 05 04
	asl $04.b		; 06 04
	asl $1E04.w		; 0E 04 1E
	tsb $5D.b		; 04 5D
	sbc $B2FF99.l		; EF 99 FF B2
	sbc $25E39C.l,X		; FF 9C E3 25
	bvc -35.b		; 50 DD
	bvs -42.b		; 70 D6
	pha		; 48
	eor $10FFC0.l,X		; 5F C0 FF 10
	cmp $B300.w,X		; DD 00 B3
	brk $A0.b		; 00 A0
	brk $83.b		; 00 83
	clc		; 18
	sta ($14.b,S),Y		; 93 14
	lda ($08.b,S),Y		; B3 08
	lda $8CA380.l,X		; BF 80 A3 8C
	sep #$08		; E2 08
	cmp ($10.b)		; D2 10
	eor $70.b,S		; 43 70
	bpl -24.b		; 10 E8
	asl $EC.b,X		; 16 EC
	ora $F77306.l		; 0F 06 73 F7
	rts		; 60

	ora $0DF0.w,X		; 1D F0 0D
	cpx #$0D.b		; E0 0D
	ldy #$2C.b		; A0 2C
	rti		; 40

	eor $001D00.l,X		; 5F 00 1D 00
	inc $FF31.w,X		; FE 31 FF
	sbc [$18.b]		; E7 18
	jmp ($3800.w,X)		; 7C 00 38
	php		; 08
	dey		; 88
	php		; 08
	adc [$08.b],Y		; 77 08
	and $FA10.w,Y		; 39 10 FA
	bmi  -4.b		; 30 FC
	sed		; F8
	brk $83.b		; 00 83
	brk $C7.b		; 00 C7
	php		; 08
	sbc [$08.b],Y		; F7 08
	adc [$08.b],Y		; 77 08
	inc $10.b		; E6 10
	dec $30.b,X		; D6 30
	bit $F0.b,X		; 34 F0
	sed		; F8
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	brk $FF.b		; 00 FF
	sbc $05DF25.l		; EF 25 DF 05
	stp		; DB
	eor ($3B.b,X)		; 41 3B
	ora #$89BF.w		; 09 BF 89
	sta [$81.b],Y		; 97 81
	cmp [$C1.b]		; C7 C1
	cpx #$E0.b		; E0 E0
	bit $DB.b		; 24 DB
	rol $D9.b		; 26 D9
	ora ($EC.b,S),Y		; 13 EC
	bcc 111.b		; 90 6F
	dey		; 88
	ror $89.b,X		; 76 89
	adc [$80.b],Y		; 77 80
	adc $7DF360.l,X		; 7F 60 F3 7D
	and $6E.b,X		; 35 6E
	rol $5B7F.w		; 2E 7F 5B
	inc $D4.b,X		; F6 D4
	lda $BA88.w,Y		; B9 88 BA
	txa		; 8A
	sta ($81.b,X)		; 81 81
	brk $00.b		; 00 00
	adc [$2B.b],Y		; 77 2B
	and [$7B.b]		; 27 7B
	and [$5B.b]		; 27 5B
	ora $7F.b,S		; 03 7F
	ora $2F.b,S		; 03 2F
	ora $2F.b,S		; 03 2F
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	adc $0C7F54.l,X		; 7F 54 7F 0C
	adc $082F7C.l,X		; 7F 7C 2F 08
	and [$20.b]		; 27 20
	ora [$00.b]		; 07 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	cpx #$DF.b		; E0 DF
	cpx #$9F.b		; E0 9F
	cpy #$BF.b		; C0 BF
	cpy #$BF.b		; C0 BF
	cpy #$BF.b		; C0 BF
	cpy #$BF.b		; C0 BF
	.db $82, $FD, $86		; 82 FD 86
	sbc $FD.b,X		; F5 FD
	bit $7CFD.w		; 2C FD 7C
	inc $FF5E.w,X		; FE 5E FF
	eor $FB7DFF.l,X		; 5F FF 7D FB
	adc $32F7.w,Y		; 79 F7 32
	sbc [$22.b]		; E7 22
	ora $080318.l		; 0F 18 03 08
	ora $08.b,S		; 03 08
	ora [$0C.b]		; 07 0C
	ora $04.b,S		; 03 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora $06.b,S		; 03 06
	ora [$00.b]		; 07 00
	ora $000708.l		; 0F 08 07 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	sta $7FDE60.l,X		; 9F 60 DE 7F
	cpy #$7C.b		; C0 7C
	cpy #$60.b		; C0 60
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	cmp $018140.l,X		; DF 40 81 01
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($06.b,X)		; 01 06
	ora $05.b,S		; 03 05
	ora [$0B.b]		; 07 0B
	ora [$1F.b]		; 07 1F
	ora $3E0F16.l		; 0F 16 0F 3E
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $03.b,S		; 03 03
	ora [$06.b]		; 07 06
	ora [$04.b]		; 07 04
	ora $191F08.l		; 0F 08 1F 19
	ora $BF6001.l,X		; 1F 01 60 BF
.ACCU 16
.INDEX 16
	rep #$7E		; C2 7E
	cmp ($FE.b,X)		; C1 FE
	bra -29.b		; 80 E3
	stz $BED9.w		; 9C D9 BE
	ldy $BE9F.w,X		; BC 9F BE
	cmp $40FCDF.l		; CF DF FC 40
	sbc ($80.b,X)		; E1 80
	cmp $8200.w		; CD 00 82
	trb $3E99.w		; 1C 99 3E
	stz $8E7F.w		; 9C 7F 8E
	adc $013FC7.l,X		; 7F C7 3F 01
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora [$05.b]		; 07 05
	ora $0802.w		; 0D 02 08
	asl $18.b		; 06 18
	asl $10.b		; 06 10
	ora $020231.l,X		; 1F 31 02 02
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	cop $00.b		; 02 00
	ora $080F08.l		; 0F 08 0F 08
	ora $000E10.l,X		; 1F 10 0E 00
	cpy #$E010.w		; C0 10 E0
	bmi  96.b		; 30 60
	bmi   0.b		; 30 00
	bmi  64.b		; 30 40
	rts		; 60

	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	cpx #$C000.w		; E0 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $20A0.w		; 20 A0 20
	rti		; 40

	rti		; 40

	cpy #$80C0.w		; C0 C0 80
	bra  62.b		; 80 3E
	adc $18.b,S		; 63 18
	eor $1C.b,S		; 43 1C
	lsr $30.b		; 46 30
	dec $78.b		; C6 78
	cpy $CC60.w		; CC 60 CC
	bvs -40.b		; 70 D8
	jsr $1D98.w		; 20 98 1D
	ora ($3E.b,X)		; 01 3E
	cop $78.b		; 02 78
	rti		; 40

	jmp ($3044.w,X)		; 7C 44 30
	brk $38.b		; 00 38
	php		; 08
	ldy #$F080.w		; A0 80 F0
	bcc  14.b		; 90 0E
	and $0A2E0D.l		; 2F 0D 2E 0A
	tsb $0400.w		; 0C 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $3F.b		; 26 3F
	tsb $1F.b		; 04 1F
	brk $1F.b		; 00 1F
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$700C.w		; E0 0C 70
	tsb $B8.b		; 04 B8
	.db $82, $5C, $C2		; 82 5C C2
	asl $06E3.w		; 0E E3 06
	sbc ($E6.b),Y		; F1 E6
	ora ($FE.b,X)		; 01 FE
	ora $F8.b,S		; 03 F8
	php		; 08
	jsr ($7C04.w,X)		; FC 04 7C
	brk $3E.b		; 00 3E
	cop $3C.b		; 02 3C
	jsr $F0FE.w		; 20 FE F0
	inc $FC00.w,X		; FE 00 FC
	brk $F8.b		; 00 F8
	asl $FC00.w		; 0E 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pea $C004.w		; F4 04 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0617.w		; 0E 17 06
	ora $020B06.l,X		; 1F 06 0B 02
	ora $020702.l		; 0F 02 07 02
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	cop $0F.b		; 02 0F
	php		; 08
	ora $0C0F00.l		; 0F 00 0F 0C
	asl $00.b		; 06 00
	asl $04.b		; 06 04
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0C93.w		; 0C 93 0C
	phb		; 8B
	tsb $0B.b		; 04 0B
	asl $05.b		; 06 05
	cop $05.b		; 02 05
	cop $00.b		; 02 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	ora $050F0D.l		; 0F 0D 0F 05
	asl $04.b		; 06 04
	asl $02.b		; 06 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $1E18.w		; 1C 18 1E
	trb $1E0E.w		; 1C 0E 1E
	asl $8E.b		; 06 8E
	asl $8E.b		; 06 8E
	stz $3C9C.w,X		; 9E 9C 3C
	jmp $181C00.l		; 5C 00 1C 18
	rol $3F1C.w,X		; 3E 1C 3F
	asl $063F.w		; 0E 3F 06
	and $0C1F04.l,X		; 3F 04 1F 0C
	rol $3E88.w,X		; 3E 88 3E
	sec		; 38
	ldy $387C.w,X		; BC 7C 38
	bvs 120.b		; 70 78
	pla		; 68
	bvs  80.b		; 70 50
	rts		; 60

	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	ror $FC18.w,X		; 7E 18 FC
	bmi  -4.b		; 30 FC
	jsr $00F8.w		; 20 F8 00
	sed		; F8
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0E11.w		; 0C 11 0E
	ora ($0E.b,S),Y		; 13 0E
	ora ($00.b,S),Y		; 13 00
	and ($00.b)		; 32 00
	rol $3E04.w,X		; 3E 04 3E
	tsb $001E.w		; 0C 1E 00
	tsb $111F.w		; 0C 1F 11
	trb $0C10.w		; 1C 10 0C
	brk $0E.b		; 00 0E
	cop $10.b		; 02 10
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	tsb $00.b		; 04 00
	ora #$1F00.w		; 09 00 1F
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	asl $3F.b		; 06 3F
	ora $7F137F.l,X		; 1F 7F 13 7F
	bit $FF.b		; 24 FF
	plp		; 28
	sbc $09F867.l,X		; FF 67 F8 09
	pei ($37.b)		; D4 37
	jmp.w [$C0CF]		; DC CF C0
	sta $80BF80.l,X		; 9F 80 BF 80
	adc [$00.b],Y		; 77 00
	jmp ($6800.w)		; 6C 00 68
	brk $E0.b		; 00 E0
	dec $E4.b		; C6 E4
	eor $CC.b		; 45 CC
	lda ($F9.b,S),Y		; B3 F9
	ora [$F8.b]		; 07 F8
	ora [$F8.b]		; 07 F8
	dec $F0.b		; C6 F0
	stx $1CE1.w		; 8E E1 1C
	cmp $3C.b,S		; C3 3C
	sta [$7C.b]		; 87 7C
	inc $FF4E.w,X		; FE 4E FF
	sbc $FCFDFC.l,X		; FF FC FD FC
	and $74FD.w,X		; 3D FD 74
	xce		; FB
	cpx #$C8FB.w		; E0 FB C8
	sbc ($80.b,S),Y		; F3 80
	sta ($D3.b,S),Y		; 93 D3
	phd		; 0B
	xba		; EB
	bvs -116.b		; 70 8C
	ora $BF06.w,Y		; 19 06 BF
	php		; 08
	stz $FF08.w,X		; 9E 08 FF
	brk $9F.b		; 00 9F
	brk $D3.b		; 00 D3
	lda $145F40.l,X		; BF 40 5F 14
	ora $00.b,S		; 03 00
	cpx #$6108.w		; E0 08 61
	php		; 08
	adc $80.b,S		; 63 80
	and ($00.b),Y		; 31 00
	adc ($94.b),Y		; 71 94
	ldy $E6.b		; A4 E6
	cmp $E2.b,S		; C3 E2
	sbc ($73.b),Y		; F1 73
	adc $3DF9.w,Y		; 79 F9 3D
	trb $E81D.w		; 1C 1D E8
	ora $0112.w,X		; 1D 12 01
	brk $DF.b		; 00 DF
	ora $C7F1.w		; 0D F1 C7
	sbc $FC62.w,Y		; F9 62 FC
	bmi  -2.b		; 30 FE
	clc		; 18
	inc $9E09.w,X		; FE 09 9E
	ora $EE.b,S		; 03 EE
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
	ora ($F9.b,X)		; 01 F9
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	bpl -17.b		; 10 EF
	trb $EB.b		; 14 EB
	trb $EB.b		; 14 EB
	trb $EB.b		; 14 EB
	asl $E9.b,X		; 16 E9
	lda #$3CAF.w		; A9 AF 3C
	and $A0B5.w		; 2D B5 A0
	lda $B0.b,X		; B5 B0
	lda $14.b,X		; B5 14
	lda [$16.b],Y		; B7 16
	ldx $3E1E.w,Y		; BE 1E 3E
	asl $AF90.w,X		; 1E 90 AF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	bpl -17.b		; 10 EF
	stx $8071.w		; 8E 71 80
	adc $60BC40.l,X		; 7F 40 BC 60
	tya		; 98
	clv		; B8
	sed		; F8
	eor $2467C0.l,X		; 5F C0 67 24
	clv		; B8
	tya		; 98
	ldx $DC8E.w,Y		; BE 8E DC
	cpy #$60E8.w		; C0 E8 60
	beq 112.b		; F0 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($0F.b,X)		; 01 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	brk $03.b		; 00 03
	ora ($0E.b,X)		; 01 0E
	ora [$7B.b]		; 07 7B
	ora ($1E.b,X)		; 01 1E
	ora [$7B.b]		; 07 7B
	and $7CFFDF.l,X		; 3F DF FF 7C
	sbc $0101F0.l,X		; FF F0 01 01
	ora [$05.b]		; 07 05
	ora $050714.l,X		; 1F 14 07 05
	ora $A0FF14.l,X		; 1F 14 FF A0
	sbc $0FFF83.l,X		; FF 83 FF 0F
	sbc $FFCFFF.l		; EF FF CF FF
	sta $FF1FFF.l,X		; 9F FF 1F FF
	and $DF3FDF.l,X		; 3F DF 3F DF
	and $7F1F5F.l,X		; 3F 5F 1F 7F
	sbc $10FF00.l,X		; FF 00 FF 10
	sbc $40FF20.l,X		; FF 20 FF 40
	lda $203FA0.l,X		; BF A0 3F 20
	and $003F20.l,X		; 3F 20 3F 00
	sbc [$FB.b],Y		; F7 FB
	sbc $FEDFFF.l		; EF FF DF FE
	inc $FEBD.w,X		; FE BD FE
	tda		; 7B
	xce		; FB
	inc $F2.b,X		; F6 F2
	sbc $FFBFC6.l		; EF C6 BF FF
	tsb $FF.b		; 04 FF
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	.db $42, $FF		; 42 FF
	sty $FF.b		; 84 FF
	ora $1CFF.w		; 0D FF 1C
	sbc $9B4258.l,X		; FF 58 42 9B
	tsb $E7.b		; 04 E7
	brk $F7.b		; 00 F7
	brk $F3.b		; 00 F3
	brk $F1.b		; 00 F1
	brk $F1.b		; 00 F1
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	cmp $7C.b,S		; C3 7C
	sbc [$79.b]		; E7 79
.ACCU 8
	sep #$20		; E2 20
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $21.b		; 00 21
	sbc ($1F.b,X)		; E1 1F
	cpy #$C05F.w		; C0 5F C0
	sta $F07180.l		; 8F 80 71 F0
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $BF00.w,X		; 1E 00 BF
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $8F.b		; 00 8F
	bra   3.b		; 80 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($C0.b)		; F2 C0
	inc $FE78.w,X		; FE 78 FE
	jmp $9AFF.w		; 4C FF 9A
	sbc $68EF12.l,X		; FF 12 EF 68
	asl $70.b		; 06 70
	asl $0080.w		; 0E 80 00
	plx		; FA
	brk $FC.b		; 00 FC
	brk $6E.b		; 00 6E
	brk $DE.b		; 00 DE
	brk $0A.b		; 00 0A
	jsr $10C2.w		; 20 C2 10
	cpy $20.b		; C4 20
	ldy #$E01C.w		; A0 1C E0
	bit $7C00.w,X		; 3C 00 7C
	bra  56.b		; 80 38
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	tsb $F4.b		; 04 F4
	asl A		; 0A
	ror A		; 6A
	iny		; C8
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	ldy #$00C0.w		; A0 C0 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	bit $3E.b,X		; 34 3E
	.db $62, $BF, $03		; 62 BF 03
	asl $1E07.w		; 0E 07 1E
	asl $3C3D.w		; 0E 3D 3C
	xce		; FB
	sed		; F8
	adc [$F0.b],Y		; 77 F0
	cmp $E49F60.l		; CF 60 9F E4
	stp		; DB
	ora [$05.b]		; 07 05
	ora $121F09.l		; 0F 09 1F 12
	adc $8BFF45.l,X		; 7F 45 FF 8B
	sbc $64FF32.l,X		; FF 32 FF 64
	sbc $D2352D.l,X		; FF 2D 35 D2
	ora [$F0.b],Y		; 17 F0
	phd		; 0B
	sed		; F8
	ora $FC.b		; 05 FC
	cop $FE.b		; 02 FE
	brk $F0.b		; 00 F0
	asl $1FEE.w		; 0E EE 1F
	cmp $EF42EC.l,X		; DF EC 42 EF
	cpx #$E0E7.w		; E0 E7 E0
	xba		; EB
	tay		; A8
	sbc $64.b		; E5 64
	cmp ($4F.b,X)		; C1 4F
	sty $5E9F.w		; 8C 9F 5E
	and $01FE02.l,X		; 3F 02 FE 01
	sbc [$90.b]		; E7 90
	tad		; 5B
	bcs  61.b		; B0 3D
	bcs  52.b		; B0 34
	asl $1CBE.w		; 0E BE 1C
	stz $DD18.w,X		; 9E 18 DD
	sbc ($20.b,X)		; E1 20
	cpy $58.b		; C4 58
.ACCU 16
.INDEX 16
	rep #$BC		; C2 BC
	ldy #$A0FE.w		; A0 FE A0
	sbc $987F8C.l,X		; FF 8C 7F 98
	adc $BF3ED1.l,X		; 7F D1 3E BF
	asl $1FBF.w		; 0E BF 1F
	and $DF8F9F.l,X		; 3F 9F 8F DF
	sta [$CF.b]		; 87 CF
	ora $B7.b,S		; 03 B7
	ora #$069B.w		; 09 9B 06
	inc $0E.b,X		; F6 0E
	ror $5F0F.w		; 6E 0F 5F
	ora [$5F.b]		; 07 5F
	sta [$3F.b]		; 87 3F
	sta [$3F.b]		; 87 3F
	ora $7F.b,S		; 03 7F
	brk $7F.b		; 00 7F
	.db $82, $8F, $D2		; 82 8F D2
	ora $0EE0.w		; 0D E0 0E
	cpx #$C0C0.w		; E0 C0 C0
	cpy #$C380.w		; C0 80 C3
	bne -113.b		; D0 8F
	tsb $43A3.w		; 0C A3 43
	jmp.w [$E20E]		; DC 0E E2
	brk $00.b		; 00 00
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	brk $F0.b		; 00 F0
	ora $F3.b,S		; 03 F3
	asl $07FE.w		; 0E FE 07
	sbc [$00.b]		; E7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	cpy #$003F.w		; C0 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $D0.b		; 00 D0
	bne  18.b		; D0 12
	adc $3D02.w		; 6D 02 3D
	brk $1F.b		; 00 1F
	phd		; 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	ora $18.b,S		; 03 18
	ora $18.b,S		; 03 18
	and $03073B.l,X		; 3F 3B 07 03
	php		; 08
	php		; 08
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $080F08.l		; 0F 08 0F 08
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	rts		; 60

	bcs -32.b		; B0 E0
	bmi -64.b		; 30 C0
	bmi -64.b		; 30 C0
	bmi -64.b		; 30 C0
	jsr $20C0.w		; 20 C0 20
	rts		; 60

	jsr $4040.w		; 20 40 40
	rti		; 40

	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	cpx #$C020.w		; E0 20 C0
	brk $07.b		; 00 07
	tas		; 1B
	ora $6F1F37.l		; 0F 37 1F 6F
	ora $FF3FFF.l,X		; 1F FF 3F FF
	adc $FB7FFD.l,X		; 7F FD 7F FB
	sbc [$FF.b],Y		; F7 FF
	ora $081F04.l		; 0F 04 1F 08
	and $407F30.l,X		; 3F 30 7F 40
	adc $82FF00.l,X		; 7F 00 FF 82
	sbc $00FF04.l,X		; FF 04 FF 00
	sbc $CFFFE3.l,X		; FF E3 FF CF
	sbc $7CFFBE.l,X		; FF BE FF 7C
	sbc $F5FEFA.l,X		; FF FA FE F5
	sbc $FBFE.w,X		; FD FE FB
	jsr ($1CFF.w,X)		; FC FF 1C
	sbc $41FF30.l,X		; FF 30 FF 41
	sbc $05FF83.l,X		; FF 83 FF 05
	sbc $01FF0A.l,X		; FF 0A FF 01
	sbc $6F1F03.l,X		; FF 03 1F 6F
	ora $3D0636.l		; 0F 36 06 3D
	tsb $1F.b		; 04 1F
	tsb $0A.b		; 04 0A
	brk $0E.b		; 00 0E
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	and $091F30.l,X		; 3F 30 1F 09
	ora $080E13.l,X		; 1F 13 0E 08
	asl $06.b		; 06 06
	tsb $00.b		; 04 00
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	stx $7D.b		; 86 7D
	tsb $08FB.w		; 0C FB 08
	ldx $10.b,Y		; B6 10
	rol $7900.w		; 2E 00 79
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	sbc $949EAB.l		; EF AB 9E 94
	asl $381A.w,X		; 1E 1A 38
	sec		; 38
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	cop $01.b		; 02 01
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	adc ($3E.b,X)		; 61 3E
	.db $62, $38, $62		; 62 38 62
	clc		; 18
	.db $42, $1C		; 42 1C
	lsr $3C.b		; 46 3C
	mvp $44,$30		; 44 30 44
	bmi  68.b		; 30 44
	asl $1C00.w,X		; 1E 00 1C
	brk $1E.b		; 00 1E
	cop $3C.b		; 02 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $38.b		; 04 38
	brk $1F.b		; 00 1F
	and ($0F.b),Y		; 31 0F
	and ($0C.b,X)		; 21 0C
	and ($0C.b,X)		; 21 0C
	and ($20.b,X)		; 21 20
	adc ($2E.b,X)		; 61 2E
	.db $62, $1C, $42		; 62 1C 42
	clc		; 18
	.db $42, $0E		; 42 0E
	brk $1E.b		; 00 1E
	brk $3F.b		; 00 3F
	and ($3E.b,X)		; 21 3E
	jsr $001E.w		; 20 1E 00
	trb $7E00.w		; 1C 00 7E
	.db $42, $7C		; 42 7C
	rti		; 40

	asl $1E41.w,X		; 1E 41 1E
	eor ($3E.b,X)		; 41 3E
	adc ($3E.b,X)		; 61 3E
	adc ($3E.b,X)		; 61 3E
	and ($1C.b,X)		; 21 1C
	and ($1C.b,X)		; 21 1C
	and ($3C.b,X)		; 21 3C
	and ($7E.b,X)		; 21 7E
	rti		; 40

	rol $1E00.w,X		; 3E 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	jsr $203E.w		; 20 3E 20
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	sbc [$00.b],Y		; F7 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	asl $13.b		; 06 13
	asl $041A.w		; 0E 1A 04
	inc A		; 1A
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	clc		; 18
	asl $1E00.w,X		; 1E 00 1E
	php		; 08
	ora ($0C.b)		; 12 0C
	brk $04.b		; 00 04
	brk $0E.b		; 00 0E
	asl A		; 0A
	tsb $100C.w		; 0C 0C 10
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $18.b		; 00 18
	jsl $1C261C.l		; 22 1C 26 1C
	rol $00.b		; 26 00
	stz $00.b		; 64 00
	jmp ($7C08.w,X)		; 7C 08 7C
	clc		; 18
	bit $1800.w,X		; 3C 00 18
	rol $3822.w,X		; 3E 22 38
	jsr $0018.w		; 20 18 00
	trb $2004.w		; 1C 04 20
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $1F10.w,X		; FE 10 1F
	sep #$07		; E2 07
	eor $7F.b		; 45 7F
	brk $C3.b		; 00 C3
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	nop		; EA
	php		; 08
	plx		; FA
	brk $A4.b		; 00 A4
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	asl $7E.b		; 06 7E
	eor $007FC0.l,X		; 5F C0 7F 00
	plx		; FA
	ora $D0.b,S		; 03 D0
	asl $F0C0.w,X		; 1E C0 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	ora $BF18.w,Y		; 19 18 BF
	bra  -1.b		; 80 FF
	brk $FD.b		; 00 FD
	ora ($E8.b,X)		; 01 E8
	php		; 08
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F040.w		; C0 40 F0
	rts		; 60

	tsb $8E34.w		; 0C 34 8E
	ora $EE.b,S		; 03 EE
	ora $0132.w		; 0D 32 01
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	beq   0.b		; F0 00
	pea $3680.w		; F4 80 36
	jsr $0C0E.w		; 20 0E 0C
	brk $00.b		; 00 00
	brk $83.b		; 00 83
	sta ($FF.b,X)		; 81 FF
	cmp ($1E.b)		; D2 1E
	xba		; EB
	php		; 08
	inc $FA00.w,X		; FE 00 FA
	ora $60.b,S		; 03 60
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	.db $62, $62, $ED		; 62 62 ED
	tsb $00F7.w		; 0C F7 00
	sbc $01FD00.l,X		; FF 00 FD 01
	bcc -112.b		; 90 90
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($06.b,X)		; 01 06
	ora ($07.b,X)		; 01 07
	ora $0D.b,S		; 03 0D
	ora $0F.b,S		; 03 0F
	ora [$1B.b]		; 07 1B
	ora [$1F.b]		; 07 1F
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora $03.b,S		; 03 03
	ora $00.b,S		; 03 00
	ora [$06.b]		; 07 06
	ora [$00.b]		; 07 00
	ora $000F0C.l		; 0F 0C 0F 00
	cpx #$E05F.w		; E0 5F E0
	dec $BFC0.w,X		; DE C0 BF
	cpy #$80B7.w		; C0 B7 80
	sbc [$88.b]		; E7 88
	tad		; 5B
	sty $44.b		; 84 44
	cop $DA.b		; 02 DA
	sbc $F9AD.w,X		; FD AD F9
	sec		; 38
	beq  80.b		; F0 50
	sbc [$6C.b]		; E7 6C
	cmp $1A.b,S		; C3 1A
	cpy #$C4FC.w		; C0 FC C4
	sbc $647FC0.l,X		; FF C0 7F 64
	asl $28.b		; 06 28
	sta $044F10.l		; 8F 10 4F 04
	sbc $0CFB18.l,X		; FF 18 FB 0C
	sbc ($04.b,S),Y		; F3 04
	xce		; FB
	sbc $1E.b,S		; E3 1E
	sed		; F8
	clc		; 18
	beq -112.b		; F0 90
	sbc ($40.b)		; F2 40
	phd		; 0B
	php		; 08
	lda $20.b		; A5 20
	sbc $3580.w		; ED 80 35
	and ($0A.b,X)		; 21 0A
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	sbc $71077A.l,X		; FF 7A 07 71
	sta [$10.b]		; 87 10
	cmp $A09F60.l,X		; DF 60 9F A0
	brk $90.b		; 00 90
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($FB.b,X)		; 01 FB
	ora ($7B.b,X)		; 01 7B
	brk $AD.b		; 00 AD
	sty $0080.w		; 8C 80 00
	brk $40.b		; 00 40
	brk $E0.b		; 00 E0
	tsb $04D1.w		; 0C D1 04
	ora $1D00.w,Y		; 19 00 1D
	brk $1F.b		; 00 1F
	asl $1F.b		; 06 1F
	brk $1D.b		; 00 1D
	asl A		; 0A
	ora $190A.w,Y		; 19 0A 19
	asl $0E00.w		; 0E 00 0E
	php		; 08
	cop $00.b		; 02 00
	tsb $0600.w		; 0C 00 06
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $30.b		; 00 30
	tya		; 98
	rts		; 60

	iny		; C8
	bpl -56.b		; 10 C8
	plp		; 28
	cpx $7410.w		; EC 10 74
	brk $7C.b		; 00 7C
	tsb $0A36.w		; 0C 36 0A
	bit $E0.b,X		; 34 E0
	bra -80.b		; 80 B0
	bra 120.b		; 80 78
	pha		; 48
	bvc  64.b		; 50 40
	plp		; 28
	jsr $3030.w		; 20 30 30
	tsb $1A08.w		; 0C 08 1A
	php		; 08
	cpy #$185B.w		; C0 5B 18
	and $FD78.w,X		; 3D 78 FD
	pea $D1F9.w		; F4 F9 D1
	sep #$C9		; E2 C9
	asl $79.b		; 06 79
	ldx $BF78.w,Y		; BE 78 BF
	cmp $BC.b,S		; C3 BC
	ora $71FE.w,Y		; 19 FE 71
	inc $FEE0.w,X		; FE E0 FE
	sta $FF.b,S		; 83 FF
	ora $477FFF.l		; 0F FF 7F 47
	adc $A040.w,X		; 7D 40 A0
	cmp $7BEFB1.l,X		; DF B1 EF 7B
	sbc [$F9.b],Y		; F7 F9
	sbc [$FC.b],Y		; F7 FC
	xce		; FB
	inc $FFFD.w,X		; FE FD FF
	inc $7FFF.w,X		; FE FF 7F
	ldx $BD28.w,Y		; BE 28 BD
	trb $7B.b		; 14 7B
	php		; 08
	sbc $FE08.w,X		; FD 08 FE
	tsb $FF.b		; 04 FF
	cop $FF.b		; 02 FF
	ora ($FF.b,X)		; 01 FF
	bra -117.b		; 80 8B
	sbc [$C0.b]		; E7 C0
	beq   0.b		; F0 00
	sbc $02FD82.l,X		; FF 82 FD 02
	sbc $FE21.w,X		; FD 21 FE
	jsr $90FF.w		; 20 FF 90
	adc $E01FC1.l,X		; 7F C1 1F E0
	ora $CB00E1.l		; 0F E1 00 CB
	phd		; 0B
	rol $AD0E.w		; 2E 0E AD
	ora #$02B6.w		; 09 B6 02
	cmp [$85.b],Y		; D7 85
	bra -65.b		; 80 BF
	ora ($7E.b,X)		; 01 7E
	brk $FF.b		; 00 FF
	ora $FF00F0.l		; 0F F0 00 FF
	bra 127.b		; 80 7F
	rts		; 60

	sta $B8E718.l,X		; 9F 18 E7 B8
	sed		; F8
	adc $00C0E1.l,X		; 7F E1 C0 00
	sbc $607F8F.l,X		; FF 8F 7F 60
	sta $66E698.l,X		; 9F 98 E6 66
	adc $0019.w,Y		; 79 19 00
	sed		; F8
	cpy #$0038.w		; C0 38 00
	sed		; F8
	bpl  -4.b		; 10 FC
	jsl $C05FE3.l		; 22 E3 5F C0
	and $007F80.l,X		; 3F 80 7F 00
	brk $00.b		; 00 00
	cpy #$00C0.w		; C0 C0 00
	brk $28.b		; 00 28
	plp		; 28
	eor $3F41.w,X		; 5D 41 3F
	brk $FF.b		; 00 FF
	bra  -1.b		; 80 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	bvs -48.b		; 70 D0
	trb $07F4.w		; 1C F4 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$E820.w		; A0 20 E8
	php		; 08
	plx		; FA
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	asl A		; 0A
	brk $13.b		; 00 13
	brk $27.b		; 00 27
	ora ($16.b,X)		; 01 16
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora $05.b		; 05 05
	tsb $190C.w		; 0C 0C 19
	ora $0909.w,Y		; 19 09 09
	brk $80.b		; 00 80
	brk $C3.b		; 00 C3
	brk $25.b		; 00 25
	brk $1C.b		; 00 1C
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	asl $3FFF.w		; 0E FF 3F
	sbc $000000.l,X		; FF 00 00 00
	brk $C2.b		; 00 C2
.ACCU 16
	rep #$E3		; C2 E3
	sbc $C0.b,S		; E3 C0
	cpy #$313F.w		; C0 3F 31
	adc $80FF40.l,X		; 7F 40 FF 80
	ora [$3E.b]		; 07 3E
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000011.l,X		; 1F 11 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	brk $A0.b		; 00 A0
	ldy #$C8F8.w		; A0 F8 C8
	pea $EE30.w		; F4 30 EE
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C080.w		; C0 80 C0
	rti		; 40

	sed		; F8
	sec		; 38
	bit $0010.w,X		; 3C 10 00
	brk $0D.b		; 00 0D
	and [$0D.b],Y		; 37 0D
	and $186E1D.l,X		; 3F 1D 6E 18
	adc $305F38.l,X		; 7F 38 5F 30
	sbc $60FF30.l,X		; FF 30 FF 60
	lda $1F181F.l,X		; BF 1F 18 1F
	brk $3F.b		; 00 3F
	and ($3F.b,S),Y		; 33 3F
	cop $3D.b		; 02 3D
	and ($7C.b,X)		; 21 7C
	mvp $00,$78		; 44 78 00
	adc ($40.b,S),Y		; 73 40
	brk $ED.b		; 00 ED
	ora ($C4.b),Y		; 11 C4
	and ($C4.b),Y		; 31 C4
	bmi -123.b		; 30 85
	pla		; 68
	sty $8EA0.w		; 8C A0 8E
	rti		; 40

	cmp $B0FF80.l,X		; DF 80 FF B0
	lda [$B8.b]		; A7 B8
	.db $82, $F8, $C2		; 82 F8 C2
	sei		; 78
	ora $70.b,S		; 03 70
	ora $76.b,S		; 03 76
	ora [$37.b]		; 07 37
	ora ($EF.b,S),Y		; 13 EF
	adc #$06BB.w		; 69 BB 06
	ora $038E00.l		; 0F 00 8E 03
	cmp $C13B03.l,X		; DF 03 3B C1
	ora ($61.b,S),Y		; 13 61
	ora $C00BB1.l		; 0F B1 0B C0
	cop $70.b		; 02 70
	brk $FC.b		; 00 FC
	cop $7B.b		; 02 7B
	ora $33.b,S		; 03 33
	ora ($CD.b,X)		; 01 CD
	ora ($ED.b,X)		; 01 ED
	ora ($71.b,X)		; 01 71
	bra -65.b		; 80 BF
	rts		; 60

	brk $F0.b		; 00 F0
	brk $B0.b		; 00 B0
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	cpy #$C0B0.w		; C0 B0 C0
	bcs -47.b		; B0 D1
	cpx #$002F.w		; E0 2F 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	rts		; 60

	brk $B0.b		; 00 B0
	brk $F0.b		; 00 F0
	bra -16.b		; 80 F0
	bra  -8.b		; 80 F8
	and ($F1.b,X)		; 21 F1
	ora [$1C.b]		; 07 1C
	ora ($1C.b,X)		; 01 1C
	tsb $1A.b		; 04 1A
	cop $0F.b		; 02 0F
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	phd		; 0B
	brk $0D.b		; 00 0D
	tsb $02.b		; 04 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	lda $9C05.w,X		; BD 05 9C
	sta ($5F.b,X)		; 81 5F
	.db $42, $2F		; 42 2F
	and $FD.b,S		; 23 FD
	cpx #$00FF.w		; E0 FF 00
	sed		; F8
	brk $70.b		; 00 70
	cop $00.b		; 02 00
	phd		; 0B
	php		; 08
	.db $82, $02, $C6		; 82 02 C6
	brk $27.b		; 00 27
	cop $E0.b		; 02 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	sbc $1C5B3C.l,X		; FF 3C 5B 1C
	adc $0E2F1C.l,X		; 7F 1C 2F 0E
	and $031E07.l,X		; 3F 07 1E 03
	ora $7D0701.l		; 0F 01 07 7D
	ora ($7E.b,X)		; 01 7E
	ror $3E.b		; 66 3E
	cop $3F.b		; 02 3F
	and ($1F.b),Y		; 31 1F
	ora ($0F.b),Y		; 11 0F
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $FF.b		; 00 FF
	adc $7FBF7F.l,X		; 7F 7F BF 7F
	tyx		; BB
	and $1EDE.w,X		; 3D DE 1E
	sbc $87F70F.l		; EF 0F F7 87
	tda		; 7B
	cmp $BD.b,S		; C3 BD
	sbc $40FF80.l,X		; FF 80 FF 40
	sbc $217FC4.l,X		; FF C4 7F 21
	adc $A8BF51.l,X		; 7F 51 BF A8
	cmp $6AEFD4.l,X		; DF D4 EF 6A
	bne -65.b		; D0 BF
	cpx #$FCDF.w		; E0 DF FC
	sbc ($FC.b,S),Y		; F3 FC
	xce		; FB
	ror $3FBD.w,X		; 7E BD 3F
	dec $F78F.w,X		; DE 8F F7
	cmp $FD.b,S		; C3 FD
	cmp [$44.b],Y		; D7 44
	sbc $22.b,S		; E3 22
	sbc $FD0D.w,X		; FD 0D FD
	ora $FE.b		; 05 FE
	.db $42, $FF		; 42 FF
	lda ($FF.b,X)		; A1 FF
	pla		; 68
	sbc $FF003A.l,X		; FF 3A 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bpl -17.b		; 10 EF
	jsr ($FE83.w,X)		; FC 83 FE
	sbc $83BB.w,Y		; F9 BB 83
	cld		; D8
	rti		; 40

	xba		; EB
	and $E0.b,S		; 23 E0
	jsr $C0C0.w		; 20 C0 C0
	ora $7DFF13.l,X		; 1F 13 FF 7D
	sbc $E0E706.l,X		; FF 06 E7 E0
	trb $01FC.w		; 1C FC 01
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $009F00.l,X		; FF 00 9F 00
	cmp $00.b,S		; C3 00
	cpy #$001F.w		; C0 1F 00
	adc $60.b,S		; 63 60
	stx $F08E.w		; 8E 8E F0
	beq  31.b		; F0 1F
	ora $800303.l,X		; 1F 03 03 80
	bra -64.b		; 80 C0
	cpy #$03FA.w		; C0 FA 03
	jmp ($CE00.w,X)		; 7C 00 CE
	cpy #$F80A.w		; C0 0A F8
	asl $F0.b,X		; 16 F0
	rol $1FE0.w		; 2E E0 1F
	cmp ($1F.b,X)		; C1 1F
	cmp ($FD.b,X)		; C1 FD
	ora ($FF.b,X)		; 01 FF
	brk $3F.b		; 00 3F
	brk $17.b		; 00 17
	bpl -81.b		; 10 AF
	ldy #$809F.w		; A0 9F 80
	rol $3E00.w,X		; 3E 00 3E
	brk $00.b		; 00 00
	ora $000F00.l		; 0F 00 0F 00
	ora $081F00.l,X		; 1F 00 1F 08
	and [$0C.b],Y		; 37 0C
	tsa		; 3B
	trb $1C6B.w		; 1C 6B 1C
	tda		; 7B
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	phd		; 0B
	phd		; 0B
	ora $191D07.l		; 0F 07 1D 19
	ora $343E07.l,X		; 1F 07 3E 34
	and $FFC505.l,X		; 3F 05 C5 FF
	sta ($FF.b),Y		; 91 FF
	ldx #$1CFF.w		; A2 FF 1C
	sbc $A5.b,S		; E3 A5
	eor ($DF.b),Y		; 51 DF
	adc ($AD.b),Y		; 71 AD
	bcc  63.b		; 90 3F
	sta ($FD.b,X)		; 81 FD
	brk $DD.b		; 00 DD
	brk $B3.b		; 00 B3
	brk $20.b		; 00 20
	brk $82.b		; 00 82
	clc		; 18
	sta ($14.b)		; 92 14
	ror $10.b		; 66 10
	ror $5F00.w,X		; 7E 00 5F
	rol $7C7A.w,X		; 3E 7A 7C
	jmp ($3070.w)		; 6C 70 30
	bra   0.b		; 80 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $30FF.w		; 0C FF 30
	sbc $80FE40.l,X		; FF 40 FE 80
	sed		; F8
	cpy #$0070.w		; C0 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	sed		; F8
	bvs -116.b		; 70 8C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq 112.b		; F0 70
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	plp		; 28
	plp		; 28
	and $3F33.w,X		; 3D 33 3F
	tsa		; 3B
	asl $001B.w,X		; 1E 1B 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	plp		; 28
	adc $3B7F31.l,X		; 7F 31 7F 3B
	adc $003F18.l,X		; 7F 18 3F 00
	trb $0000.w		; 1C 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
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
	ora ($00.b,X)		; 01 00
	ora $03.b		; 05 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	trb $077B.w		; 1C 7B 07
	rol $0F00.w,X		; 3E 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $0F26.w,X		; 3E 26 0F
	ora #$0000.w		; 09 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $1FDD.w,X		; 3E DD 1F
	sbc $01FF07.l		; EF 07 FF 01
	ora $000700.l,X		; 1F 00 07 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	ldx #$B0BF.w		; A2 BF B0
	ora $040710.l,X		; 1F 10 07 04
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $7D83F7.l		; 0F F7 83 7D
	cpx #$F0DF.w		; E0 DF F0
	sbc $1CBB7C.l		; EF 7C BB 1C
	sbc $027B06.l		; EF 06 7B 02
	ora $EF283F.l		; 0F 3F 28 EF
	tax		; AA
	xce		; FB
	rol A		; 2A
	sbc $FE15.w,X		; FD 15 FE
	lsr $7E.b		; 46 7E
	bvc  31.b		; 50 1F
	trb $07.b		; 14 07
	tsb $E0.b		; 04 E0
	stz $CCF0.w		; 9C F0 CC
	sed		; F8
	cpx $78.b		; E4 78
	inc $3C.b,X		; F6 3C
	plx		; FA
	trb $0EFF.w		; 1C FF 0E
	sbc $F89F03.l,X		; FF 03 9F F8
	pla		; 68
	sed		; F8
	bmi  -8.b		; 30 F8
	clc		; 18
	jsr ($FC08.w,X)		; FC 08 FC
	sty $7E.b		; 84 7E
	rti		; 40

	ora $080F10.l,X		; 1F 10 0F 08
	ora [$0C.b]		; 07 0C
	ora $0C.b,S		; 03 0C
	ora ($0C.b,X)		; 01 0C
	ora ($04.b,X)		; 01 04
	ora $06.b,S		; 03 06
	ora $02.b,S		; 03 02
	ora ($82.b,X)		; 01 82
	ora ($E2.b,X)		; 01 E2
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	sta $02.b,S		; 83 02
	bne  56.b		; D0 38
	cpy #$9828.w		; C0 28 98
	plp		; 28
	bcc  36.b		; 90 24
	tya		; 98
	bit $9C.b		; 24 9C
	rol $88.b		; 26 88
	jsl $E0329C.l		; 22 9C 32 E0
	jsr $28F8.w		; 20 F8 28
	beq  32.b		; F0 20
	cld		; D8
	brk $DC.b		; 00 DC
	tsb $D8.b		; 04 D8
	brk $DC.b		; 00 DC
	brk $CE.b		; 00 CE
	cop $10.b		; 02 10
	bit $1800.w		; 2C 00 18
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
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
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	bra -12.b		; 80 F4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$E020.w		; E0 20 E0
	jsr ($F830.w,X)		; FC 30 F8
	rts		; 60

	jsr ($BC48.w,X)		; FC 48 BC
	tay		; A8
	trb $38C0.w		; 1C C0 38
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	sed		; F8
	brk $B0.b		; 00 B0
	brk $78.b		; 00 78
	brk $28.b		; 00 28
	bra   8.b		; 80 08
	rti		; 40

	bpl -128.b		; 10 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $1A0C.w		; 0C 0C 1A
	inc A		; 1A
	inc A		; 1A
	asl $18.b,X		; 16 18
	trb $3844.w		; 1C 44 38
	bvs -32.b		; 70 E0
	cpx #$C0C0.w		; E0 C0 C0
	bra   0.b		; 80 00
	asl $3F18.w,X		; 1E 18 3F
	bpl  63.b		; 10 3F
	clc		; 18
	rol $FC00.w,X		; 3E 00 FC
	rti		; 40

	sed		; F8
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	asl $0F.b		; 06 0F
	ora ($0F.b)		; 12 0F
	ora ($0E.b,S),Y		; 13 0E
	tas		; 1B
	rol $3F3B.w,X		; 3E 3B 3F
	adc $7076.w,Y		; 79 76 70
	sbc $C0.b,S		; E3 C0
	cpx #$1107.w		; E0 07 11
	ora [$30.b]		; 07 30
	ora [$31.b]		; 07 31
	tas		; 1B
	adc $7833.w,Y		; 79 33 78
	adc $F9.b,S		; 63 F9
	rti		; 40

	sed		; F8
	brk $F0.b		; 00 F0
	bit $DB.b		; 24 DB
	cpy #$D03F.w		; C0 3F D0
	lda $FBFED1.l		; AF D1 FE FB
	cmp $FB.b,X		; D5 FB
	sbc $49BB7E.l,X		; FF 7E BB 49
	ldx $C6.b,Y		; B6 C6
	.db $42, $D5		; 42 D5
	cmp $F9.b		; C5 F9
	sei		; 78
	xce		; FB
	ora $FF.b,S		; 03 FF
	rol $00FF.w		; 2E FF 00
	sbc $083E44.l,X		; FF 44 3E 08
	and $FF7FDC.l,X		; 3F DC 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ldy #$07FF.w		; A0 FF 07
	sbc $073F8F.l,X		; FF 8F 3F 07
	sec		; 38
	sbc $00FFA3.l,X		; FF A3 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	lda $00BF00.l,X		; BF 00 BF 00
	adc $C7CF40.l,X		; 7F 40 CF C7
	bra 127.b		; 80 7F
	sed		; F8
	sbc [$FF.b]		; E7 FF
	inc $FFFF.w,X		; FE FF FF
	sbc $EBFFCF.l,X		; FF CF FF EB
	sbc $FEFE.w,X		; FD FE FE
	sbc $FF8FFF.l,X		; FF FF 8F FF
	ora $01FF.w,Y		; 19 FF 01
	sbc $30FF00.l,X		; FF 00 FF 30
	sbc $03FF14.l,X		; FF 14 FF 03
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($0F.b,X)		; 01 0F
	phd		; 0B
	sei		; 78
	and $C05FE0.l		; 2F E0 5F C0
	adc $0001.w,Y		; 79 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $17.b		; 02 17
	bpl  95.b		; 10 5F
	rti		; 40

	lda $00FE80.l,X		; BF 80 FE 00
	brk $07.b		; 00 07
	ora [$3F.b]		; 07 3F
	rol $7DE0.w		; 2E E0 7D
	ora ($FA.b,X)		; 01 FA
	ora $E8.b,S		; 03 E8
	ora $803FA0.l		; 0F A0 3F 80
	inc $0000.w,X		; FE 00 00
	php		; 08
	php		; 08
	eor $00FE40.l,X		; 5F 40 FE 00
	sbc $F601.w,X		; FD 01 F6
	asl $D8.b		; 06 D8
	clc		; 18
	stz $64.b		; 64 64
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $0C.b,S		; 03 0C
	asl $C17B.w		; 0E 7B C1
	rol $00.b,X		; 36 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $D9.b		; 00 D9
	cmp ($6B.b),Y		; D1 6B
	php		; 08
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	clc		; 18
	adc [$50.b]		; 67 50
	adc $C0FE60.l,X		; 7F 60 FE C0
	jsr ($7080.w,X)		; FC 80 70
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	tsb $1800.w		; 0C 00 18
	clc		; 18
	bcc   0.b		; 90 00
	rts		; 60

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  32.b		; 30 20
	tad		; 5B
	ora ($7F.b,X)		; 01 7F
	eor $BB.b		; 45 BB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  32.b		; 30 20
	dec A		; 3A
	asl A		; 0A
	stz $54.b,X		; 74 54
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($0F.b,X)		; 01 0F
	ora $3C.b		; 05 3C
	ora [$F0.b],Y		; 17 F0
	eor $007EC0.l,X		; 5F C0 7E 00
	sbc $0001.w,X		; FD 01 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $0B.b		; 02 0B
	php		; 08
	and $80BF20.l		; 2F 20 BF 80
	sbc $00FE00.l,X		; FF 00 FE 00
	ora $00.b,S		; 03 00
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	tsb $0D.b		; 04 0D
	asl $1E1E.w		; 0E 1E 1E
	rol $7E3C.w,X		; 3E 3C 7E
	sei		; 78
	sbc $0000.w,X		; FD 00 00
	ora $02.b,S		; 03 02
	ora $0C.b,S		; 03 0C
	ora ($1E.b,X)		; 01 1E
	asl $3F.b		; 06 3F
	tsb $187F.w		; 0C 7F 18
	sbc $B6FE30.l,X		; FF 30 FE B6
	brk $39.b		; 00 39
	rep #$06		; C2 06
	sbc [$07.b]		; E7 07
	sbc [$13.b],Y		; F7 13
	cmp $3AC734.l,X		; DF 34 C7 3A
	sbc $1D.b,S		; E3 1D
	and ($00.b),Y		; 31 00
	adc $8780.w,Y		; 79 80 87
	cpy #$E65F.w		; C0 5F E6
	and $3A0BAB.l		; 2F AB 0B 3A
	cop $1D.b		; 02 1D
	ora ($0E.b,X)		; 01 0E
	brk $FF.b		; 00 FF
	sbc $FD7F.w,X		; FD 7F FD
	lda $BC5D7D.l,X		; BF 7D 5D BC
	sta $D8EC.w,X		; 9D EC D8
	cpx $8974.w		; EC 74 89
	and $79C3.w,Y		; 39 C3 79
	sbc $3CFF7D.l,X		; FF 7D FF 3C
	sbc $08FF1C.l,X		; FF 1C FF 08
	sbc $01FF00.l,X		; FF 00 FF 01
	ror $BC81.w,X		; 7E 81 BC
	ora $FF00F0.l		; 0F F0 00 FF
	brk $7F.b		; 00 7F
	asl $0161.w,X		; 1E 61 01
	ror $FF00.w,X		; 7E 00 FF
	brk $FF.b		; 00 FF
	cpy #$0FFB.w		; C0 FB 0F
	ora $07607F.l		; 0F 7F 60 07
	sta [$7E.b]		; 87 7E
	dec $B13F.w,X		; DE 3F B1
	cmp $03E30C.l		; CF 0C E3 03
	beq   0.b		; F0 00
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	bra 127.b		; 80 7F
	beq -49.b		; F0 CF
	jsr ($FFFB.w,X)		; FC FB FF
	inc $FFFF.w,X		; FE FF FF
	eor $20E0BF.l,X		; 5F BF E0 20
	beq -16.b		; F0 F0
	jsr ($FF8C.w,X)		; FC 8C FF
	and ($FF.b,S),Y		; 33 FF
	tsb $FF.b		; 04 FF
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	cpy #$778F.w		; C0 8F 77
	sbc $DF.b,S		; E3 DF
	sbc ($FF.b),Y		; F1 FF
	inc $FFF9.w,X		; FE F9 FF
	jsr ($7EFF.w,X)		; FC FF 7E
	sbc $3FFF3E.l,X		; FF 3E FF 3F
	sbc $38FF98.l,X		; FF 98 FF 38
	sbc $07FF0A.l,X		; FF 0A FF 07
	sbc $81FF03.l,X		; FF 03 FF 81
	sbc $C0FFC1.l,X		; FF C1 FF C0
	brk $81.b		; 00 81
	brk $03.b		; 00 03
	brk $01.b		; 00 01
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
	rol $21C0.w,X		; 3E C0 21
.ACCU 16
	rep #$20		; C2 20
	cmp ($40.b,X)		; C1 40
	cop $00.b		; 02 00
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	trb $1E1C.w		; 1C 1C 1E
	asl $3C3C.w,X		; 1E 3C 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	bra  35.b		; 80 23
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc [$F0.b],Y		; F7 F0
	sbc $E3.b,S		; E3 E3
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $8F7F3F.l,X		; FF 3F 7F 8F
	ora $F10FE3.l,X		; 1F E3 0F F1
	ora [$78.b]		; 07 78
	ora ($6C.b,S),Y		; 13 6C
	ora #$0C36.w		; 09 36 0C
	and ($FF.b,S),Y		; 33 FF
	cpy #$70FF.w		; C0 FF 70
	sbc $4E7F9C.l,X		; FF 9C 7F 4E
	adc $333F47.l,X		; 7F 47 3F 33
	and $0C1F29.l,X		; 3F 29 1F 0C
	inx		; E8
	ora $403FA0.l		; 0F A0 3F 40
	adc $00FF80.l,X		; 7F 80 FF 00
	beq   0.b		; F0 00
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	sbc [$07.b],Y		; F7 07
	cld		; D8
	clc		; 18
	lda $23.b,S		; A3 23
	rti		; 40

	rti		; 40

	ldy #$40A0.w		; A0 A0 40
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	rts		; 60

	rts		; 60

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($30.b,S),Y		; 33 30
	cpy #$10C0.w		; C0 C0 10
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	php		; 08
	sbc [$90.b],Y		; F7 90
	adc $41DF20.l		; 6F 20 DF 41
	ldx $7887.w,Y		; BE 87 78
	clc		; 18
	sbc [$60.b]		; E7 60
	sta $6E7F80.l,X		; 9F 80 7F 6E
	plp		; 28
	cmp $26BE93.l,X		; DF 93 BE 26
	adc $F749.w,Y		; 79 49 F7
	lda [$DF.b],Y		; B7 DF
	cli		; 58
	adc $9EFE61.l,X		; 7F 61 FE 9E
	plx		; FA
	ora $64.b,S		; 03 64
	sta [$08.b]		; 87 08
	sta $807FA0.l		; 8F A0 7F 80
	ror $FC00.w,X		; 7E 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	sbc $7A01.w,X		; FD 01 7A
	cop $75.b		; 02 75
	ora $9A.b		; 05 9A
	txs		; 9A
	ldy $B4.b,X		; B4 B4
	bne  16.b		; D0 10
	cpy #$00C0.w		; C0 C0 00
	brk $E0.b		; 00 E0
	beq   0.b		; F0 00
	cpy #$0300.w		; C0 00 03
	ora ($1E.b,X)		; 01 1E
	ora $3E.b,S		; 03 3E
	ora ($7E.b,X)		; 01 7E
	.db $62, $FC, $33		; 62 FC 33
	jmp ($FC60.w,X)		; 7C 60 FC
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	ora ($00.b,X)		; 01 00
	ora $3608.w,Y		; 19 08 36
	ora [$78.b]		; 07 78
	ora #$0C3C.w		; 09 3C 0C
	asl $0418.w		; 0E 18 04
	trb $60.b		; 14 60
	sed		; F8
	sbc $0F.b,S		; E3 0F
	cpx #$F00E.w		; E0 0E F0
	ora $907FE0.l,X		; 1F E0 7F 90
	sbc $030007.l		; EF 07 00 03
	php		; 08
	bra -121.b		; 80 87
	xce		; FB
	phd		; 0B
	jsr ($6C0D.w,X)		; FC 0D 6C
	tsb $D858.w		; 0C 58 D8
	lda ($E2.b,S),Y		; B3 E2
	bcs -121.b		; B0 87
	stz $4F.b,X		; 74 4F
	pei ($DF.b)		; D4 DF
	ldy $B6.b,X		; B4 B6
	rts		; 60

	adc $0E9F00.l		; 6F 00 9F 0E
	sbc ($7F.b),Y		; F1 7F
	stz $7802.w,X		; 9E 02 78
	lsr $F0.b		; 46 F0
	dec $F0.b,X		; D6 F0
	ldy $F8.b,X		; B4 F8
	rts		; 60

	beq  31.b		; F0 1F
	adc $FFCEFF.l,X		; 7F FF CE FF
	adc ($C0.b,X)		; 61 C0
	beq   0.b		; F0 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	bra 127.b		; 80 7F
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	bvs  -4.b		; 70 FC
	sty $06.b		; 84 06
	ora $1E03.w,X		; 1D 03 1E
	ora $15.b,S		; 03 15
	ora ($17.b,X)		; 01 17
	ora ($13.b,X)		; 01 13
	ora ($22.b,X)		; 01 22
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	ora [$02.b],Y		; 17 02
	ora [$11.b],Y		; 17 11
	ora [$16.b],Y		; 17 16
	ora $00.b,S		; 03 00
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	adc $DF3F9F.l,X		; 7F 9F 3F DF
	lda $EF9F4F.l,X		; BF 4F 9F EF
	cmp $E7DFAF.l,X		; DF AF DF E7
	sbc $D7EFD7.l		; EF D7 EF D7
	sbc $20FF60.l,X		; FF 60 FF 20
	sbc $10FFB0.l,X		; FF B0 FF 10
	sbc $18FF50.l,X		; FF 50 FF 18
	sbc $28FF28.l,X		; FF 28 FF 28
	ora $07.b,S		; 03 07
	ora $06.b,S		; 03 06
	ora [$0A.b]		; 07 0A
	asl $0D.b		; 06 0D
	tsb $001A.w		; 0C 1A 00
	bit $F800.w,X		; 3C 00 F8
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	ora $01.b,S		; 03 01
	ora [$05.b]		; 07 05
	asl $02.b		; 06 02
	tsb $1804.w		; 0C 04 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldx $BC5F.w,Y		; BE 5F BC
	eor $3CDD3E.l,X		; 5F 3E DD 3C
	cmp $38DA3C.l,X		; DF 3C DA 38
	inc $BC70.w,X		; FE 70 BC
	sei		; 78
	ldy $FF.b,X		; B4 FF
	lda ($FF.b,X)		; A1 FF
	ldy #$227E.w		; A0 7E 22
	ror $7C20.w,X		; 7E 20 7C
	bit $7C.b		; 24 7C
	tsb $78.b		; 04 78
	rti		; 40

	sei		; 78
	pha		; 48
	beq  -4.b		; F0 FC
	sed		; F8
	jsr ($FEF8.w,X)		; FC F8 FE
	jmp ($3CFE.w,X)		; 7C FE 3C
	sbc $0EFF1E.l,X		; FF 1E FF 0E
	sbc $F8FF86.l,X		; FF 86 FF F8
	brk $FC.b		; 00 FC
	tsb $FC.b		; 04 FC
	brk $FE.b		; 00 FE
	.db $82, $BE, $00		; 82 BE 00
	dec $EE40.w,X		; DE 40 EE
	rts		; 60

	inc $8620.w		; EE 20 86
	sbc $843FC6.l,X		; FF C6 3F 84
	sbc [$84.b],Y		; F7 84
	inc $C4.b,X		; F6 C4
	inc $80.b,X		; F6 80
	inc $80.b,X		; F6 80
	pea $E480.w		; F4 80 E4
	inc $E628.w		; EE 28 E6
	cpx #$20E6.w		; E0 E6 20
	inc $22.b		; E6 22
	cpx $20.b		; E4 20
	cpx $20.b		; E4 20
	cpy $04.b		; C4 04
	cpy #$0040.w		; C0 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($00.b,X)		; 01 00
	and ($0F.b,S),Y		; 33 0F
	ora $301E18.l		; 0F 18 1E 30
	sec		; 38
	cpx #$00E0.w		; E0 E0 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	adc $183F0C.l,X		; 7F 0C 3F 18
	and $E07E30.l,X		; 3F 30 7E E0
	sed		; F8
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $07061F.l		; 0F 1F 06 07
	tsb $140E.w		; 0C 0E 14
	trb $08.b		; 14 08
	php		; 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $1F.b		; 00 1F
	asl $063F.w		; 0E 3F 06
	ora $103F0C.l		; 0F 0C 3F 10
	and $003E00.l,X		; 3F 00 3E 00
	trb $170E.w		; 1C 0E 17
	tsb $0816.w		; 0C 16 08
	bit $00.b,X		; 34 00
	sec		; 38
	brk $30.b		; 00 30
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	asl $0C08.w		; 0E 08 0C
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
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra 112.b		; 80 70
	cpy #$E0F8.w		; C0 F8 E0
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$E040.w		; C0 40 E0
	ldy #$10F0.w		; A0 F0 10
	sed		; F8
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	ora #$3700.w		; 09 00 37
	brk $51.b		; 00 51
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	tas		; 1B
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	eor ($02.b,X)		; 41 02
	cpy #$4503.w		; C0 03 45
	cop $76.b		; 02 76
	phd		; 0B
	tax		; AA
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	tsb $01.b		; 04 01
	sta $8F03.w		; 8D 03 8F
	cop $7E.b		; 02 7E
	cpx #$0000.w		; E0 00 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq -64.b		; F0 C0
	jsr $C000.w		; 20 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpx #$E0E0.w		; E0 E0 E0
	brk $E0.b		; 00 E0
	cpx #$0000.w		; E0 00 00
	cpy #$80C0.w		; C0 C0 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	cmp $83.b,S		; C3 83
	jsr ($FF00.w,X)		; FC 00 FF
	jmp ($0783.w,X)		; 7C 83 07
	sed		; F8
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	rti		; 40

	jmp ($BCBC.w,X)		; 7C BC BC
	and $000303.l,X		; 3F 03 03 00
	jmp ($7F7C.w,X)		; 7C 7C 7F
	ora [$70.b]		; 07 70
	brk $8C.b		; 00 8C
	brk $90.b		; 00 90
	brk $62.b		; 00 62
	sta $8BDD25.l,X		; 9F 25 DD 8B
	tda		; 7B
	ora [$F7.b],Y		; 17 F7
	phb		; 8B
	adc [$46.b]		; 67 46
	sta ($0F.b,X)		; 81 0F
	brk $11.b		; 00 11
	brk $E8.b		; 00 E8
	adc $64.b,S		; 63 64
	and [$A1.b]		; 27 A1
	sta $811F03.l		; 8F 03 1F 81
	sta $000300.l,X		; 9F 00 03 00
	ora ($00.b,X)		; 01 00
	asl $BF18.w		; 0E 18 BF
	trb $8FEF.w		; 1C EF 8F
	cmp [$C7.b],Y		; D7 C7
	xce		; FB
	sbc ($ED.b,S),Y		; F3 ED
	cmp $BCFE.w,Y		; D9 FE BC
	cmp $3FFC3C.l,X		; DF 3C FC 3F
	cmp [$3F.b]		; C7 3F
	sbc ($1F.b,S),Y		; F3 1F
	sed		; F8
	sta $F687EC.l		; 8F EC 87 F6
	txy		; 9B
	xce		; FB
	ora $38FD.w,Y		; 19 FD 38
	sbc $7C7AFC.l,X		; FF FC 7A 7C
	lda $CDDF3C.l,X		; BF 3C DF CD
	sbc $FDF7FF.l,X		; FF FF F7 FD
	sbc $07BF7E.l,X		; FF 7E BF 07
	tda		; 7B
	sbc $FE85.w,X		; FD 85 FE
	cpy #$E2FF.w		; C0 FF E2
	sbc $08FF30.l,X		; FF 30 FF 08
	sbc $40FF00.l,X		; FF 00 FF 40
	and $8000A4.l,X		; 3F A4 00 80
	brk $E0.b		; 00 E0
	brk $78.b		; 00 78
	bra  60.b		; 80 3C
	bne  30.b		; D0 1E
	pea $3A87.w		; F4 87 3A
	sta $1D.b,S		; 83 1D
	eor ($00.b,X)		; 41 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	rts		; 60

	beq  48.b		; F0 30
	cpx $7A0C.w		; EC 0C 7A
	cop $7D.b		; 02 7D
	ora ($3E.b,X)		; 01 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	ora $0F04.w		; 0D 04 0F
	ora ($9F.b,X)		; 01 9F
	cop $FE.b		; 02 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	ora ($01.b,X)		; 01 01
	asl A		; 0A
	asl A		; 0A
	sta $84.b		; 85 84
	sec		; 38
	jmp ($3C1C.w,X)		; 7C 1C 3C
	tsb $041E.w		; 0C 1E 04
	asl $0701.w		; 0E 01 07
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	bpl  -2.b		; 10 FE
	php		; 08
	ror $3F04.w,X		; 7E 04 3F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	bpl 120.b		; 10 78
	sec		; 38
	jmp ($3E1C.w,X)		; 7C 1C 3E
	asl $069E.w		; 0E 9E 06
	sta $78C783.l		; 8F 83 C7 78
	brk $60.b		; 00 60
	tsb $00.b		; 04 00
	trb $3E30.w		; 1C 30 3E
	clc		; 18
	ldx $FF0C.w,Y		; BE 0C FF
	asl $DF.b		; 06 DF
	.db $82, $EF, $00		; 82 EF 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	tsa		; 3B
	and $7EFFDF.l,X		; 3F DF FF 7E
	jsr ($F0FB.w,X)		; FC FB F0
	inc $DFE0.w		; EE E0 DF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $A0FF14.l,X		; 1F 14 FF A0
	sbc $05FF81.l,X		; FF 81 FF 05
	jsr ($FE14.w,X)		; FC 14 FE
	rol $0000.w		; 2E 00 00
	brk $C0.b		; 00 C0
	cpy #$F0BC.w		; C0 BC F0
	sbc $00E000.l		; EF 00 E0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	cli		; 58
	inc $C016.w,X		; FE 16 C0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	tsb $1A.b		; 04 1A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	asl $02.b		; 06 02
	asl $0006.w		; 0E 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($00.b,X)		; E1 00
	sta [$03.b]		; 87 03
	ora $0F3F07.l,X		; 1F 07 3F 0F
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $0F.b		; 02 0F
	php		; 08
	ora $203F10.l,X		; 1F 10 3F 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	tsb $3C.b		; 04 3C
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb $BE7D.w		; 0C 7D BE
	jmp ($7CBF.w,X)		; 7C BF 7C
	lda $3EBD7E.l,X		; BF 7E BD 3E
	sbc $FF3E.w,X		; FD 3E FF
	and $7F1FDE.l,X		; 3F DE 1F 7F
	adc $407F43.l,X		; 7F 43 7F 40
	adc $437F41.l,X		; 7F 41 7F 43
	adc $007F03.l,X		; 7F 03 7F 00
	adc $407F61.l,X		; 7F 61 7F 40
	sbc $F9F2.w,X		; FD F2 F9
	sbc [$F9.b],Y		; F7 F9
	sbc [$F9.b],Y		; F7 F9
	sbc [$F9.b],Y		; F7 F9
	ror $78.b,X		; 76 78
	sbc [$78.b],Y		; F7 78
	lda [$3C.b],Y		; B7 3C
	sbc ($FF.b,S),Y		; F3 FF
	ora $FF0AFF.l		; 0F FF 0A FF
	asl A		; 0A
	sbc $89FF08.l,X		; FF 08 FF 89
	sbc $C9FF08.l,X		; FF 08 FF C9
	sbc $F0C08D.l,X		; FF 8D C0 F0
	cpx #$80DE.w		; E0 DE 80
	sed		; F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	cpx #$F820.w		; E0 20 F8
	plp		; 28
	beq  48.b		; F0 30
	cpx #$C060.w		; E0 60 C0
	cpy #$C0C0.w		; C0 C0 C0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -16.b		; 80 F0
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
	ora $000300.l		; 0F 00 03 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	php		; 08
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	rol $0E00.w,X		; 3E 00 0E
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	sbc $F33D.w,Y		; F9 3D F3
	tsa		; 3B
	ldy #$C077.w		; A0 77 C0
	and $38C3.w		; 2D C3 38
	cmp [$10.b]		; C7 10
	eor $211C31.l,X		; 5F 31 1C 21
	sec		; 38
	sbc $007F31.l,X		; FF 31 7F 00
	sei		; 78
	ora [$75.b]		; 07 75
	ora $B01FA8.l		; 0F A8 1F B0
	asl $3E80.w		; 0E 80 3E
	jsr $5C43.w		; 20 43 5C
	lda ($AE.b,X)		; A1 AE
	cmp $6E.b,S		; C3 6E
	asl $1FDC.w		; 0E DC 1F
	bcs  15.b		; B0 0F
	cpx #$E00F.w		; E0 0F E0
	sty $FF.b		; 84 FF
	eor $F080EB.l		; 4F EB 80 F0
	asl A		; 0A
	inc $7714.w,X		; FE 14 77
	sty $BFC1.w		; 8C C1 BF
	ldy #$001F.w		; A0 1F 00
	pha		; 48
	pha		; 48
	asl $0720.w		; 0E 20 07
	bpl   3.b		; 10 03
	php		; 08
	ora ($04.b,X)		; 01 04
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora $000F00.l,X		; 1F 00 0F 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	sta $FC.b		; 85 FC
	phk		; 4B
	sei		; 78
	sta [$30.b]		; 87 30
	cmp $60AE30.l,X		; DF 30 AE 60
	ora $7AC1.w,X		; 1D C1 7A
	cmp $B4.b,S		; C3 B4
	stx $4B.b		; 86 4B
	pha		; 48
	sta [$00.b]		; 87 00
	cmp $20EF10.l,X		; DF 10 EF 20
	sta $407E00.l,X		; 9F 00 7E 40
	ldy $7880.w,X		; BC 80 78
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C1.b		; 00 C1
	cmp $60.b,S		; C3 60
	adc ($20.b,X)		; 61 20
	and ($20.b,X)		; 21 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($E7.b,X)		; C1 E7
	rts		; 60

	sbc ($20.b,S),Y		; F3 20
	adc ($20.b),Y		; 71 20
	and ($00.b),Y		; 31 00
	and ($00.b,X)		; 21 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $CF.b		; 00 CF
	ldx $9F.b,Y		; B6 9F
	adc $78DF3F.l		; 6F 3F DF 78
	lda [$60.b],Y		; B7 60
	inc $77F8.w,X		; FE F8 77
	jsr ($E0FB.w,X)		; FC FB E0
	sed		; F8
	sbc $B0FF59.l,X		; FF 59 FF B0
	sbc $CAFE60.l,X		; FF 60 FE CA
	jsr ($FE0C.w,X)		; FC 0C FE
	txa		; 8A
	sbc $10F005.l,X		; FF 05 F0 10
	brk $E0.b		; 00 E0
	bra 112.b		; 80 70
	cpy #$00B8.w		; C0 B8 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	cpy #$E040.w		; C0 40 E0
	ldy #$50F0.w		; A0 F0 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0C36.w		; 0C 36 0C
	rol $6F1C.w,X		; 3E 1C 6F
	trb $3C7F.w		; 1C 7F 3C
	eor $3D5F3C.l,X		; 5F 3C 5F 3D
	inc $FE3D.w,X		; FE 3D FE
	trb $1C18.w		; 1C 18 1C
	brk $3C.b		; 00 3C
	bmi  61.b		; 30 3D
	ora ($3D.b,X)		; 01 3D
	jsr $627F.w		; 20 7F 62
	adc $037F03.l,X		; 7F 03 7F 03
	ora $DF3FFF.l,X		; 1F FF 3F DF
	adc $FD7EBE.l,X		; 7F BE 7E FD
	inc $FC7D.w,X		; FE 7D FC
	tda		; 7B
	jsr ($FDFB.w,X)		; FC FB FD
	sbc ($7F.b)		; F2 7F
	rti		; 40

	sbc $41FFA0.l,X		; FF A0 FF 41
	sbc $82FF02.l,X		; FF 02 FF 82
	sbc $04FF85.l,X		; FF 85 FF 04
	sbc $09760F.l,X		; FF 0F 76 09
	ora $FC.b,S		; 03 FC
	ora $0CE6.w,Y		; 19 E6 0C
	sbc ($46.b,S),Y		; F3 46
	lda $CC33.w,Y		; B9 33 CC
	ora $0CE6.w,Y		; 19 E6 0C
	sbc ($0E.b,S),Y		; F3 0E
	asl $07.b		; 06 07
	ora $1B.b,S		; 03 1B
	ora $8CBD.w,Y		; 19 BD 8C
	lsr $F746.w		; 4E 46 F7
	and ($FB.b,S),Y		; 33 FB
	ora $0C3D.w,Y		; 19 3D 0C
	ora $FF0F6F.l,X		; 1F 6F 0F FF
	phb		; 8B
	adc [$83.b],Y		; 77 83
	adc $05F907.l,X		; 7F 07 F9 05
	sbc ($82.b)		; F2 82
	adc [$83.b],Y		; 77 83
	adc $303F.w,X		; 7D 3F 30
	and $9C9F20.l,X		; 3F 20 9F 9C
	cmp $0EEF94.l,X		; DF 94 EF 0E
	adc [$0F.b]		; 67 0F
	lda [$89.b]		; A7 89
	sta [$9E.b]		; 87 9E
	ldy $BC73.w,X		; BC 73 BC
	sbc ($FC.b,S),Y		; F3 FC
	tyx		; BB
	inc $FEF9.w,X		; FE F9 FE
	cmp $DCFF.w,X		; DD FF DC
	cmp $AF5F7E.l,X		; DF 7E 5F AF
	sbc $4DFFCD.l,X		; FF CD FF 4D
	sbc $06FF45.l,X		; FF 45 FF 06
	sbc $23FF22.l,X		; FF 22 FF 23
	sbc $F0FFA1.l,X		; FF A1 FF F0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	bpl -56.b		; 10 C8
	bra 124.b		; 80 7C
	bra  65.b		; 80 41
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bcs  48.b		; B0 30
	bra -128.b		; 80 80
	inc $00BE.w,X		; FE BE 00
	tsb $00.b		; 04 00
	dey		; 88
	bra -48.b		; 80 D0
	cpy #$E0F0.w		; C0 F0 E0
	sed		; F8
	beq  -4.b		; F0 FC
	sed		; F8
	jsr ($FEF8.w,X)		; FC F8 FE
	sed		; F8
	sed		; F8
	bvs 112.b		; 70 70
	ldy #$C020.w		; A0 20 C0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	inc $FE7C.w,X		; FE 7C FE
	jsr ($BC7E.w,X)		; FC 7E BC
	eor $B8FA1C.l,X		; 5F 1C FA B8
	cpy $00.b		; C4 00
	beq   0.b		; F0 00
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	jsr $C4DC.w		; 20 DC C4
	sec		; 38
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$4030.w		; E0 30 40
	clc		; 18
	cpx #$3888.w		; E0 88 38
	dey		; 88
	rts		; 60

	iny		; C8
	bpl  92.b		; 10 5C
	jsr $007C.w		; 20 7C 00
	rol $00C0.w,X		; 3E C0 00
	beq  16.b		; F0 10
	bvs   0.b		; 70 00
	beq -128.b		; F0 80
	sec		; 38
	php		; 08
	pla		; 68
	pha		; 48
	bpl  16.b		; 10 10
	bit $0220.w		; 2C 20 02
	ora $0F780B.l,X		; 1F 0B 78 0F
	cpy #$80BF.w		; C0 BF 80
	sbc $F401.w,X		; FD 01 F4
	ora [$D0.b]		; 07 D0
	trb $7040.w		; 1C 40 70
	ora $05.b		; 05 05
	ora [$10.b],Y		; 17 10
	adc $007F40.l,X		; 7F 40 7F 00
	inc $FA00.w,X		; FE 00 FA
	cop $E8.b		; 02 E8
	php		; 08
	ldy #$E820.w		; A0 20 E8
	sty $1850.w		; 8C 50 18
	jsr $4030.w		; 20 30 40
	rts		; 60

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	adc $017F0E.l,X		; 7F 0E 7F 01
	and $000F00.l,X		; 3F 00 0F 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $3E.b		; 00 3E
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	bpl  -4.b		; 10 FC
	pla		; 68
	dec $7F10.w		; CE 10 7F
	tsb $1F.b		; 04 1F
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $80.b		; 00 80
	brk $30.b		; 00 30
	brk $02.b		; 00 02
	brk $0E.b		; 00 0E
	brk $01.b		; 00 01
	asl $0603.w		; 0E 03 06
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	inc A		; 1A
	adc [$3B.b]		; 67 3B
	eor $34.b,X		; 55 34
	eor $0000.w,Y		; 59 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	clc		; 18
	brk $38.b		; 00 38
	clc		; 18
	dec A		; 3A
	plp		; 28
	rol $20.b,X		; 36 20
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$E0E0.w		; C0 E0 E0
	cpx #$B8B0.w		; E0 B0 B8
	php		; 08
	sty $0000.w		; 8C 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	cpy #$E0E0.w		; C0 E0 E0
	sed		; F8
	bcs  -4.b		; B0 FC
	brk $BE.b		; 00 BE
	brk $86.b		; 00 86
	brk $07.b		; 00 07
	cop $0E.b		; 02 0E
	ora $18.b,S		; 03 18
	ora [$30.b]		; 07 30
	ora $E13D60.l		; 0F 60 3D E1
	stz $C7.b,X		; 74 C7
	bne -100.b		; D0 9C
	ora ($01.b,X)		; 01 01
	ora $04.b		; 05 04
	ora $101F08.l		; 0F 08 1F 10
	and $405E20.l,X		; 3F 20 5E 40
	tsx		; BA
	.db $82, $68, $08		; 82 68 08
	asl $1A38.w		; 0E 38 1A
	adc ($30.b,S),Y		; 73 30
	inc $00.b		; E6 00
	iny		; C8
	brk $D0.b		; 00 D0
	bra -32.b		; 80 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora [$10.b],Y		; 17 10
	and $5C21.w		; 2D 21 5C
	mvp $88,$B8		; 44 B8 88
	ldy #$8000.w		; A0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	cmp ($20.b)		; D2 20
	pei ($20.b)		; D4 20
	sed		; F8
	jsr $60F8.w		; 20 F8 60
	bne  64.b		; D0 40
	ldy #$E000.w		; A0 00 E0
	brk $C0.b		; 00 C0
	bit $2820.w		; 2C 20 28
	jsr $0828.w		; 20 28 08
	bmi   0.b		; 30 00
	rts		; 60

	jsr $4060.w		; 20 60 40
	rti		; 40

	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $323F00.l,X		; 1F 00 3F 32
	adc $9E41.w,X		; 7D 41 9E
	bra  63.b		; 80 3F
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $020C.w		; 0D 0C 02
	cop $67.b		; 02 67
	ora ($CF.b,X)		; 01 CF
	brk $81.b		; 00 81
	brk $1C.b		; 00 1C
	and ($1C.b),Y		; 31 1C
	and [$38.b]		; 27 38
	eor $DC20.w		; 4D 20 DC
	brk $FE.b		; 00 FE
	brk $F4.b		; 00 F4
	tsb $1EEE.w		; 0C EE 1E
	lsr $800E.w,X		; 5E 0E 80
	sec		; 38
	jsr $0434.w		; 20 34 04
	rts		; 60

	rti		; 40

	sec		; 38
	php		; 08
	jsr $080E.w		; 20 0E 08
	ora $013F0C.l,X		; 1F 0C 3F 01
	adc $057E02.l,X		; 7F 02 7E 05
	jmp ($780B.w,X)		; 7C 0B 78
	ora [$30.b]		; 07 30
	ora $200F30.l,X		; 1F 30 0F 20
	ora $1A3A21.l,X		; 1F 21 3A 1A
	and $14.b,X		; 35 14
	pld		; 2B
	php		; 08
	and [$20.b]		; 27 20
	ora $000F10.l,X		; 1F 10 0F 00
	ora $001E00.l,X		; 1F 00 1E 00
	rts		; 60

	ora $F00EE0.l		; 0F E0 0E F0
	asl $1CD0.w,X		; 1E D0 1C
	ldy #$C03C.w		; A0 3C C0
	ror $FE80.w,X		; 7E 80 FE
	brk $FE.b		; 00 FE
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	inx		; E8
	php		; 08
	cpx #$D000.w		; E0 00 D0
	bpl -88.b		; 10 A8
	plp		; 28
	bvc  80.b		; 50 50
	ldy $B0.b,X		; B4 B0
	brk $06.b		; 00 06
	brk $1B.b		; 00 1B
	brk $0D.b		; 00 0D
	asl $19.b		; 06 19
	ora $DF3F76.l		; 0F 76 3F DF
	adc $AF74B7.l,X		; 7F B7 74 AF
	brk $00.b		; 00 00
	asl $04.b		; 06 04
	ora $02.b,S		; 03 02
	asl $3F06.w		; 0E 06 3F
	ora #$207F.w		; 09 7F 20
	adc $507E48.l,X		; 7F 48 7E 50
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	brk $F2.b		; 00 F2
	rti		; 40

	lda ($F0.b),Y		; B1 F0
	sbc #$BFF0.w		; E9 F0 BF
	bcs  95.b		; B0 5F
	php		; 08
	sbc [$00.b],Y		; F7 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	tsb $4EEE.w		; 0C EE 4E
	inc $16.b,X		; F6 16
	sed		; F8
	rti		; 40

	jsr ($5DA4.w,X)		; FC A4 5D
	php		; 08
	brk $03.b		; 00 03
	ora ($06.b,X)		; 01 06
	ora ($06.b,X)		; 01 06
	cop $0D.b		; 02 0D
	ora [$0B.b]		; 07 0B
	ora $1F.b,S		; 03 1F
	ora ($1F.b,X)		; 01 1F
	tsb $0133.w		; 0C 33 01
	brk $03.b		; 00 03
	ora $03.b,S		; 03 03
	ora ($04.b,X)		; 01 04
	ora $03.b		; 05 03
	ora $09.b,S		; 03 09
	ora $180708.l		; 0F 08 07 18
	tas		; 1B
	sta $82E1.w		; 8D E1 82
	sbc ($00.b,S),Y		; F3 00
	inc $21C0.w		; EE C0 21
	jmp $D7A9A3.l		; 5C A3 A9 D7
	cmp ($EF.b,S),Y		; D3 EF
	beq  -1.b		; F0 FF
	ldx $9C20.w,Y		; BE 20 9C
	bpl  29.b		; 10 1D
	ora $4E5E.w,X		; 1D 5E 4E
	ora $8B80.w,X		; 1D 80 8B
	cpy #$E0C7.w		; C0 C7 E0
	bvs  -1.b		; 70 FF
	ora [$18.b]		; 07 18
	ora [$18.b]		; 07 18
	ora [$19.b]		; 07 19
	phd		; 0B
	and ($0F.b,S),Y		; 33 0F
	and [$0F.b],Y		; 37 0F
	and $1C3B0A.l,X		; 3F 0A 3B 1C
	bit $0F0F.w		; 2C 0F 0F
	asl $1D07.w		; 0E 07 1D
	ora [$1B.b],Y		; 17 1B
	ora $1E0F1E.l,X		; 1F 1E 0F 1E
	ora [$18.b]		; 07 18
	ora [$1C.b]		; 07 1C
	ora ($F1.b,S),Y		; 13 F1
	adc $E1F1.w,Y		; 79 F1 E1
	cpx #$C1CD.w		; E0 CD C1
	txy		; 9B
	sta ($B9.b,X)		; 81 B9
	tsb $BA.b		; 04 BA
	ora #$1276.w		; 09 76 12
	adc $FF60.w		; 6D 60 FF
	cpy #$00FF.w		; C0 FF 00
	sbc ($80.b,S),Y		; F3 80
	sbc [$80.b]		; E7 80
	cmp [$04.b]		; C7 04
	cmp $0D.b		; C5 0D
	bit #$921B.w		; 89 1B 92
	plx		; FA
	sbc $FBF6.w,X		; FD F6 FB
	sbc $FFF6.w,X		; FD F6 FF
	rts		; 60

	plx		; FA
	sta [$D5.b]		; 87 D5
	cmp $784E.w		; CD 4E 78
	and [$90.b]		; 27 90
	beq  -1.b		; F0 FF
	beq  -1.b		; F0 FF
	rts		; 60

	sbc $89F040.l,X		; FF 40 F0 89
	sbc #$F052.w		; E9 52 F0
	ora [$C0.b]		; 07 C0
	lda $800060.l		; AF 60 00 80
	bra  64.b		; 80 40
	brk $E0.b		; 00 E0
	bpl -32.b		; 10 E0
	bpl -32.b		; 10 E0
	bpl -32.b		; 10 E0
	bcc -32.b		; 90 E0
	brk $70.b		; 00 70
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	ldy #$3000.w		; A0 00 30
	bpl  48.b		; 10 30
	bpl -112.b		; 10 90
	bcc  16.b		; 90 10
	bpl -48.b		; 10 D0
	rti		; 40

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $10.b		; 00 10
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E080.w		; C0 80 E0
	cpx #$8080.w		; E0 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BC.b		; 00 BC
	brk $8E.b		; 00 8E
	php		; 08
	plx		; FA
	ror A		; 6A
	xba		; EB
	dec $D7.b,X		; D6 D7
	ldy $3C8E.w		; AC 8E 3C
	rol $261C.w,X		; 3E 1C 26
	sec		; 38
	php		; 08
	brk $40.b		; 00 40
	sei		; 78
	tsb $1EEA.w		; 0C EA 1E
	dec $3E.b		; C6 3E
	dey		; 88
	sei		; 78
	brk $C0.b		; 00 C0
	clc		; 18
	cpy #$96E8.w		; C0 E8 96
	sed		; F8
	cpy $DCE0.w		; CC E0 DC
	cpx #$A0DC.w		; E0 DC A0
	cli		; 58
	beq   0.b		; F0 00
	rts		; 60

	bra  64.b		; 80 40
	bra -84.b		; 80 AC
	cpx $D4.b		; E4 D4
	pea $E8D8.w		; F4 D8 E8
	clc		; 18
	inx		; E8
	bpl -32.b		; 10 E0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	bvs  36.b		; 70 24
	pla		; 68
	bit $40.b		; 24 40
	bit $360C.w,X		; 3C 0C 36
	asl $2633.w		; 0E 33 26
	tas		; 1B
	bmi  15.b		; 30 0F
	brk $00.b		; 00 00
	clc		; 18
	brk $18.b		; 00 18
	brk $20.b		; 00 20
	jsr $081C.w		; 20 1C 08
	rol $1E0C.w,X		; 3E 0C 1E
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $4C.b		; 00 4C
	ldx #$325C.w		; A2 5C 32
	bit $2812.w		; 2C 12 28
	inc A		; 1A
	bpl  14.b		; 10 0E
	asl $0B.b,X		; 16 0B
	bpl  15.b		; 10 0F
	ora ($0D.b)		; 12 0D
	bit $0C20.w,X		; 3C 20 0C
	brk $1C.b		; 00 1C
	bpl   4.b		; 10 04
	brk $08.b		; 00 08
	php		; 08
	asl $04.b		; 06 04
	php		; 08
	brk $06.b		; 00 06
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	cop $1E.b		; 02 1E
	and $1C.b,S		; 23 1C
	and [$18.b]		; 27 18
	rol $1C00.w,X		; 3E 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1A01.w,X		; 1D 01 1A
	cop $04.b		; 02 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	inc $30.b,X		; F6 30
	cpy $F800.w		; CC 00 F8
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $7808.w		; 0C 08 78
	bmi 112.b		; 30 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $21.b		; 00 21
	sbc $0C7B0F.l,X		; FF 0F 7B 0C
	sei		; 78
	ora $780F78.l		; 0F 78 0F 78
	bit $D0.b		; 24 D0
	and $F8.b,S		; 23 F8
	rts		; 60

	ldy $0074.w,X		; BC 74 00
	jsr $0308.w		; 20 08 03
	tsb $282B.w		; 0C 2B 28
	and [$00.b]		; 27 00
	adc $086F61.l		; 6F 61 6F 08
	sbc [$C4.b]		; E7 C4
	bit $FA.b		; 24 FA
	bne -66.b		; D0 BE
	beq -97.b		; F0 9F
	bvc  63.b		; 50 3F
	trb $1F.b		; 14 1F
	tsb $1E.b		; 04 1E
	rti		; 40

	adc $0DE380.l		; 6F 80 E3 0D
	and $07.b		; 25 07
	and ($06.b,S),Y		; 33 06
	mvn $34,$96		; 54 96 34
	cpx $00.b		; E4 00
	inc $8E02.w		; EE 02 8E
	cop $00.b		; 02 00
	bpl  14.b		; 10 0E
	and ($1C.b),Y		; 31 1C
	stz $1C.b		; 64 1C
	pea $D43F.w		; F4 3F D4
	adc $B47AB8.l,X		; 7F B8 7A B4
	sbc [$6E.b],Y		; F7 6E
	inc $1C4F.w,X		; FE 4F 1C
	ora $3B3C.w		; 0D 3C 3B
	jmp ($FC4B.w,X)		; 7C 4B FC
	tay		; A8
	jsr ($F845.w,X)		; FC 45 F8
	eor $9EF6.w		; 4D F6 9E
	cpx $BFBF.w		; EC BF BF
	adc $EB1F0F.l,X		; 7F 0F 1F EB
	ora [$FA.b]		; 07 FA
	and ($FC.b),Y		; 31 FC
	bpl  71.b		; 10 47
	bit $3FF8.w,X		; 3C F8 3F
	adc $FF1F7F.l,X		; 7F 7F 1F FF
	ora [$FF.b]		; 07 FF
	ora ($1F.b,X)		; 01 1F
	bmi -121.b		; 30 87
	bpl -125.b		; 10 83
	brk $BC.b		; 00 BC
	clc		; 18
	and $1FFF3C.l,X		; 3F 3C FF 1F
	rol $2E1F.w		; 2E 1F 2E
	ora $3E0D2C.l,X		; 1F 2C 0D 3E
	ora $0436.w		; 0D 36 04
	ora $001B04.l,X		; 1F 04 1B 00
	ora $1F111F.l		; 0F 1F 11 1F
	ora ($1F.b),Y		; 11 1F
	ora ($1F.b,S),Y		; 13 1F
	ora ($1F.b,X)		; 01 1F
	ora $020F.w,Y		; 19 0F 02
	ora $03070E.l		; 0F 0E 07 03
	jsl $BB44DD.l		; 22 DD 44 BB
	tsb $FB.b		; 04 FB
	php		; 08
	sbc [$09.b],Y		; F7 09
	inc $01.b,X		; F6 01
	inc $F110.w,X		; FE 10 F1
	bit $3BE1.w		; 2C E1 3B
	jsl $764477.l		; 22 77 44 76
	tsb $AE.b		; 04 AE
	dey		; 88
	sta $9189.w		; 8D 89 91
	sta ($2E.b),Y		; 91 2E
	jsr $415F.w		; 20 5F 41
	and $B843D8.l		; 2F D8 43 B8
	cmp [$3C.b]		; C7 3C
	sta ($7C.b,X)		; 81 7C
	ora $FE.b,S		; 03 FE
	brk $FE.b		; 00 FE
	ora ($FF.b,X)		; 01 FF
	cop $FD.b		; 02 FD
	and [$20.b]		; 27 20
	adc $C0E348.l		; 6F 48 E3 C0
	sbc [$84.b]		; E7 84
	cmp #$8B08.w		; C9 08 8B
	asl A		; 0A
	clc		; 18
	clc		; 18
	ora ($01.b,X)		; 01 01
	cpy #$8070.w		; C0 70 80
	bmi -128.b		; 30 80
	bmi -64.b		; 30 C0
	bmi -32.b		; 30 E0
	bmi -64.b		; 30 C0
	bpl -64.b		; 10 C0
	bpl  96.b		; 10 60
	bpl -112.b		; 10 90
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	cpy #$E000.w		; C0 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora [$06.b]		; 07 06
	phd		; 0B
	tsb $0F.b		; 04 0F
	tsb $1F.b		; 04 1F
	ora #$0016.w		; 09 16 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	tsb $0E.b		; 04 0E
	php		; 08
	ora $1F01.w		; 0D 01 1F
	ora $FDB77E.l,X		; 1F 7E B7 FD
	inc $FBFF.w		; EE FF FB
	lda $BF7FD7.l,X		; BF D7 7F BF
	adc $F7FFFF.l,X		; 7F FF FF F7
	sbc $48FFEF.l,X		; FF EF FF 48
	sbc $04FF11.l,X		; FF 11 FF 04
	sbc $407F68.l,X		; FF 68 7F 40
	sbc $08FF00.l,X		; FF 00 FF 08
	sbc $FF8910.l,X		; FF 10 89 FF
	adc ($8E.b),Y		; 71 8E
	stx $44.b,Y		; 96 44
	tda		; 7B
	cpy $B0.b		; C4 B0
	eor [$FC.b]		; 47 FC
	ora [$64.b]		; 07 64
	ora [$29.b]		; 07 29
	stx $00CD.w		; 8E CD 00
	bra   2.b		; 80 02
	php		; 08
	adc ($48.b,X)		; 61 48
	eor ($99.b)		; 52 99
	eor ($F9.b,X)		; 41 F9
	brk $FB.b		; 00 FB
	inc A		; 1A
	sbc ($91.b,S),Y		; F3 91
	dey		; 88
.ACCU 8
.INDEX 8
	sep #$3C		; E2 3C
	inc $D0.b		; E6 D0
	tsb $38.b		; 04 38
	cpy $C820.w		; CC 20 C8
	bcc 120.b		; 90 78
	ldy #$70.b		; A0 70
	rts		; 60

	beq  -2.b		; F0 FE
	jsl $3C0098.l		; 22 98 00 3C
	mvp $A0,$90		; 44 90 A0
	tya		; 98
	plp		; 28
	bra -96.b		; 80 A0
	bcs -80.b		; B0 B0
	ldy #$E0.b		; A0 E0
	bra 127.b		; 80 7F
	ora $FF.b,S		; 03 FF
	cmp ($1F.b),Y		; D1 1F
	pea $FD07.w		; F4 07 FD
	ora ($FE.b,X)		; 01 FE
	brk $BF.b		; 00 BF
	bra  47.b		; 80 2F
	cpx #$87.b		; E0 87
	sta [$00.b]		; 87 00
	brk $E8.b		; 00 E8
	php		; 08
	plx		; FA
	cop $FE.b		; 02 FE
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $DF.b		; 00 DF
	cpy #$00.b		; C0 00
	cpx #$80.b		; E0 80
	bcs  96.b		; B0 60
	php		; 08
	bvs -124.b		; 70 84
	sec		; 38
.INDEX 16
	rep #$9C		; C2 9C
	sbc $4E.b,S		; E3 4E
	adc ($A4.b,S),Y		; 73 A4
	and $C0C0.w,Y		; 39 C0 C0
	rts		; 60

	jsr $00F0.w		; 20 F0 00
	sei		; 78
	brk $BC.b		; 00 BC
	bra  94.b		; 80 5E
	.db $42, $AC		; 42 AC
	jsr $10D6.w		; 20 D6 10
	php		; 08
	jmp ($4C34.w,X)		; 7C 34 4C
	php		; 08
	pea $FC00.w		; F4 00 FC
	bmi  -8.b		; 30 F8
	bpl -104.b		; 10 98
	cpy #$6090.w		; C0 90 60
	bmi   0.b		; 30 00
	cpy $B430.w		; CC 30 B4
	sei		; 78
	php		; 08
	sec		; 38
	bmi  64.b		; 30 40
	rti		; 40

	cpx #$7080.w		; E0 80 70
	bpl -64.b		; 10 C0
	brk $20.b		; 00 20
	cli		; 58
	brk $78.b		; 00 78
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	bvs  96.b		; 70 60
	bmi   0.b		; 30 00
	bmi  32.b		; 30 20
	bpl   0.b		; 10 00
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $A1.b		; 00 A1
	brk $90.b		; 00 90
	brk $06.b		; 00 06
	brk $1F.b		; 00 1F
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	adc ($61.b,X)		; 61 61
	sbc $E0F9.w,Y		; F9 F9 E0
	cpx #$989F.w		; E0 9F 98
	trb $1C3F.w		; 1C 3F 1C
	tsa		; 3B
	ora $092E.w,Y		; 19 2E 09
	ora $011709.l,X		; 1F 09 17 01
	inc A		; 1A
	ora ($0A.b,X)		; 01 0A
	brk $0B.b		; 00 0B
	asl $1D02.w,X		; 1E 02 1D
	tsb $1D.b		; 04 1D
	ora ($1D.b),Y		; 11 1D
	tsb $19.b		; 04 19
	clc		; 18
	ora #$01.b		; 09 01
	ora #$01.b		; 09 01
	ora #$08.b		; 09 08
	jsr ($F87F.w,X)		; FC 7F F8
	sbc $E0FFF0.l,X		; FF F0 FF E0
	sbc $C0FFE0.l,X		; FF E0 FF C0
	sbc $C0FDC0.l,X		; FF C0 FD C0
	sbc $80FF.w,X		; FD FF 80
	sbc $02FE01.l,X		; FF 01 FE 02
	sbc $FE05.w,X		; FD 05 FE
	asl $0CFC.w		; 0E FC 0C
	sed		; F8
	clc		; 18
	sed		; F8
	clc		; 18
	ora $FF.b,S		; 03 FF
	ora [$FF.b]		; 07 FF
	ora $F7.b,S		; 03 F7
	ora ($F2.b,X)		; 01 F2
	brk $E1.b		; 00 E1
	ora ($E3.b,X)		; 01 E3
	brk $C3.b		; 00 C3
	brk $C1.b		; 00 C1
	sta $80.b,S		; 83 80
	eor [$40.b]		; 47 40
	sta $80.b,S		; 83 80
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $DF9FDF.l,X		; 1F DF 9F DF
	cpy #$8921.w		; C0 21 89
	ror $09.b,X		; 76 09
	inc $80.b,X		; F6 80
	sbc $843FC0.l,X		; FF C0 3F 84
	tad		; 5B
	eor $3F803F.l,X		; 5F 3F 80 3F
	cpy #$CBDE.w		; C0 DE CB
	bit #$1B.b		; 89 1B
	ora $10DB.w,Y		; 19 DB 10
	stp		; DB
	cmp ($8D.b)		; D2 8D
	sty $F6.b		; 84 F6
	sed		; F8
	bmi -64.b		; 30 C0
	bmi  61.b		; 30 3D
	jsr $12C3.w		; 20 C3 12
	sbc $6E91.w		; ED 91 6E
	dey		; 88
	adc [$48.b],Y		; 77 48
	lda [$00.b],Y		; B7 00
	sbc $00FE00.l,X		; FF 00 FE 00
	inc $3E61.w,X		; FE 61 3E
	ror $12.b,X		; 76 12
	sbc [$D5.b],Y		; F7 D5
	tyx		; BB
	dey		; 88
	xce		; FB
	ror A		; 6A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	bra 127.b		; 80 7F
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rts		; 60

	brk $C0.b		; 00 C0
	cpy #$38B8.w		; C0 B8 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $060C.w		; 0C 0C 06
	asl $0E.b		; 06 0E
	ror $3E3C.w		; 6E 3C 3E
	asl $0C1C.w,X		; 1E 1C 0C
	asl $0000.w		; 0E 00 00
	brk $1A.b		; 00 1A
	tsb $000F.w		; 0C 0F 00
	eor $147F00.l		; 4F 00 7F 14
	adc $083F1C.l,X		; 7F 1C 3F 08
	ora $071D03.l,X		; 1F 03 1D 07
	tsa		; 3B
	ora [$2F.b],Y		; 17 2F
	asl $1C37.w,X		; 1E 37 1C
	adc $395B3C.l,X		; 7F 3C 5B 39
	ror $71.b,X		; 76 71
	and $1F021B.l,X		; 3F 1B 02 1F
	tsb $303F.w		; 0C 3F 30
	and $013F08.l,X		; 3F 08 3F 01
	adc $0D7D66.l,X		; 7F 66 7D 0D
	tda		; 7B
	rti		; 40

	sbc $FF9ECE.l,X		; FF CE 9E FF
	bit $78DF.w,X		; 3C DF 78
	lda $E6FF70.l,X		; BF 70 FF E6
	adc $B8FFDC.l,X		; 7F DC FF B8
	sbc $FF31FF.l,X		; FF FF 31 FF
	jsr $61FF.w		; 20 FF 61
	sbc $00FFC2.l,X		; FF C2 FF 00
	sbc $00FF80.l,X		; FF 80 FF 00
	sbc $CE1101.l,X		; FF 01 11 CE
	ora #$FE.b		; 09 FE
	tsb $E7.b		; 04 E7
	cmp ($32.b,X)		; C1 32
	jsr $C2DA.w		; 20 DA C2
	rol $639F.w,X		; 3E 9F 63
	sta $01.b,S		; 83 01
	adc ($41.b,S),Y		; 73 41
	sta $81.b,S		; 83 81
	cmp $EC41.w,Y		; D9 41 EC
	cpy #$6174.w		; C0 74 61
	inc A		; 1A
	ora ($03.b,X)		; 01 03
	rts		; 60

	ora ($FC.b,X)		; 01 FC
	jsr $40F0.w		; 20 F0 40
	bcs -96.b		; B0 A0
	bpl  16.b		; 10 10
	brk $30.b		; 00 30
	brk $C8.b		; 00 C8
	brk $48.b		; 00 48
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	rts		; 60

	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	ora $7C.b		; 05 7C
	ora ($0F.b,X)		; 01 0F
	ora [$7F.b]		; 07 7F
	and $80BFE0.l		; 2F E0 BF 80
	inc $0000.w,X		; FE 00 00
	sbc $1BF430.l,X		; FF 30 F4 1B
	clc		; 18
	cop $02.b		; 02 02
	clc		; 18
	clc		; 18
	eor $007F40.l,X		; 5F 40 7F 00
	sbc $000000.l,X		; FF 00 00 00
	plp		; 28
	brk $D0.b		; 00 D0
	ora $0F68.w,X		; 1D 68 0F
	sty $86.b,X		; 94 86
	sed		; F8
	cop $F8.b		; 02 F8
	cop $30.b		; 02 30
	bit $F800.w,X		; 3C 00 F8
	brk $00.b		; 00 00
	nop		; EA
	php		; 08
	pea $7804.w		; F4 04 78
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $C8.b		; 00 C8
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	brk $19.b		; 00 19
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	asl $06.b		; 06 06
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $48.b		; 00 48
	brk $83.b		; 00 83
	brk $8F.b		; 00 8F
	brk $3F.b		; 00 3F
	ora $FF.b,S		; 03 FF
	eor $FF31BF.l		; 4F BF 31 FF
	bit $FF.b		; 24 FF
	bmi  48.b		; 30 30
	jmp ($707C.w,X)		; 7C 7C 70
	bvs -49.b		; 70 CF
	cpy $505F.w		; CC 5F 50
	adc $007F60.l,X		; 7F 60 7F 00
	sbc [$80.b],Y		; F7 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($1E.b,X)		; 01 1E
	ora $EB1F71.l		; 0F 71 1F EB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $2E3F09.l		; 0F 09 3F 2E
	adc $3F0254.l,X		; 7F 54 02 3F
	brk $7F.b		; 00 7F
	ora ($ED.b)		; 12 ED
	and ($DD.b,S),Y		; 33 DD
	.db $62, $BE, $C0		; 62 BE C0
	inc $FF80.w,X		; FE 80 FF
	brk $FF.b		; 00 FF
	asl $340C.w		; 0E 0C 34
	bit $72.b		; 24 72
	bvc  -6.b		; 50 FA
	ldy #$44FD.w		; A0 FD 44
	sbc $FD0C.w,X		; FD 0C FD
	ora ($FE.b),Y		; 11 FE
	cop $E0.b		; 02 E0
	ora $E3DFE0.l,X		; 1F E0 DF E3
	jmp.w [$D9E6]		; DC E6 D9
	cmp $B6.b		; C5 B6
	cmp #$A8.b		; C9 A8
	stx $67.b		; 86 67
	ora #$E8.b		; 09 E8
	sbc $FDE5.w,X		; FD E5 FD
	bit $2BFB.w		; 2C FB 2B
	sbc ($31.b),Y		; F1 31
	beq  94.b		; F0 5E
	inx		; E8
	lsr $BFE4.w,X		; 5E E4 BF
	inx		; E8
	rol $F302.w,X		; 3E 02 F3
	brk $F9.b		; 00 F9
	asl $FC.b		; 06 FC
	asl $FC.b		; 06 FC
	brk $FC.b		; 00 FC
	cop $FF.b		; 02 FF
	brk $FF.b		; 00 FF
	tsb $FF.b		; 04 FF
	sbc $69.b,X		; F5 69
	cmp [$D1.b],Y		; D7 D1
	cmp $C0.b,S		; C3 C0
	cmp $40.b,S		; C3 40
	cmp $40.b,S		; C3 40
	cmp ($41.b,X)		; C1 41
	.db $82, $82, $05		; 82 82 05
	brk $87.b		; 00 87
	brk $49.b		; 00 49
	bra 113.b		; 80 71
	bra  31.b		; 80 1F
	cmp ($3F.b,X)		; C1 3F
	cmp $05.b,S		; C3 05
	cmp $1E.b,S		; C3 1E
	lda $007F7F.l,X		; BF 7F 7F 00
	jmp ($3E00.w,X)		; 7C 00 3E
	bra -98.b		; 80 9E
	sta ($AD.b,X)		; 81 AD
	sta ($83.b,X)		; 81 83
	eor ($3B.b,X)		; 41 3B
	bra 127.b		; 80 7F
	adc $00A8FF.l,X		; 7F FF A8 00
	iny		; C8
	bra -16.b		; 80 F0
	cpy #$E0D0.w		; C0 D0 E0
	cld		; D8
	iny		; C8
	jsr ($FEDC.w,X)		; FC DC FE
	jsr ($F8FC.w,X)		; FC FC F8
	brk $50.b		; 00 50
	bra -80.b		; 80 B0
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	dey		; 88
	jsr ($FE9C.w,X)		; FC 9C FE
	sec		; 38
	inc $FE70.w,X		; FE 70 FE
	tsb $0C9F.w		; 0C 9F 0C
	sta [$04.b],Y		; 97 04
	ora $000B04.l,X		; 1F 04 0B 00
	ora $000600.l		; 0F 00 06 00
	asl $00.b		; 06 00
	cop $1F.b		; 02 1F
	ora ($0F.b),Y		; 11 0F
	ora #$0E.b		; 09 0E
	brk $0E.b		; 00 0E
	tsb $0006.w		; 0C 06 00
	asl $04.b		; 06 04
	cop $00.b		; 02 00
	cop $02.b		; 02 02
	brk $8C.b		; 00 8C
	brk $8C.b		; 00 8C
	brk $04.b		; 00 04
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
	bvs 120.b		; 70 78
	sec		; 38
	sei		; 78
	bit $3838.w,X		; 3C 38 38
	bit $3C3C.w,X		; 3C 3C 3C
	bit $3C3C.w,X		; 3C 3C 3C
	bit $3C1E.w,X		; 3C 1E 3C
	brk $FC.b		; 00 FC
	bpl 124.b		; 10 7C
	bpl 124.b		; 10 7C
	clc		; 18
	ror $7E18.w,X		; 7E 18 7E
	clc		; 18
	ror $7E18.w,X		; 7E 18 7E
	brk $7E.b		; 00 7E
	brk $13.b		; 00 13
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	brk $D0.b		; 00 D0
	brk $F0.b		; 00 F0
	bra  -8.b		; 80 F8
	cpx #$78FD.w		; E0 FD 78
	sbc $80FF4D.l,X		; FF 4D FF 80
	bra -64.b		; 80 C0
	cpy #$2020.w		; C0 20 20
	cpy #$F040.w		; C0 40 F0
	bmi  -8.b		; 30 F8
	php		; 08
	adc $6C01.w,X		; 7D 01 6C
	brk $88.b		; 00 88
	adc [$44.b],Y		; 77 44
	tyx		; BB
	mvp $05,$BB		; 44 BB 05
	plx		; FA
	ora $F8.b,S		; 03 F8
	cop $DE.b		; 02 DE
	brk $4F.b		; 00 4F
	brk $03.b		; 00 03
	tyx		; BB
	tay		; A8
	cmp $56DE46.l,X		; DF 46 DE 56
	cmp $8784.w		; CD 84 87
	bra  13.b		; 80 0D
	tsb $0303.w		; 0C 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $7F.b		; 00 7F
	ora ($7E.b,X)		; 01 7E
	asl $79.b,X		; 16 79
	asl A		; 0A
	adc [$00.b],Y		; 77 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	ora ($55.b,X)		; 01 55
	bvc  70.b		; 50 46
	asl $2A.b		; 06 2A
	brk $2C.b		; 00 2C
	lsr $20.b,X		; 56 20
	stz $28.b,X		; 74 28
	jmp ($7C30.w,X)		; 7C 30 7C
	sec		; 38
	lsr $360C.w,X		; 5E 0C 36
	tsb $1A.b		; 04 1A
	brk $0E.b		; 00 0E
	plp		; 28
	jsr $0028.w		; 20 28 00
	jsr $3000.w		; 20 00 30
	brk $38.b		; 00 38
	jsr $081C.w		; 20 1C 08
	tsb $0004.w		; 0C 04 00
	brk $28.b		; 00 28
	sei		; 78
	jsr $3878.w		; 20 78 38
	jmp $002C18.l		; 5C 18 2C 00
	trb $0800.w		; 1C 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $3000.w		; 20 00 30
	brk $38.b		; 00 38
	jsr $1018.w		; 20 18 10
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	tas		; 1B
	ora $2F1F37.l		; 0F 37 1F 2F
	ora $5F387C.l,X		; 1F 7C 38 5F
	bmi  -8.b		; 30 F8
	rts		; 60

	bcs  64.b		; B0 40
	lda ($0F.b,X)		; A1 0F
	tsb $181F.w		; 0C 1F 18
	and $033F30.l,X		; 3F 30 3F 03
	jmp ($7060.w,X)		; 7C 60 70
	brk $60.b		; 00 60
	rti		; 40

	rti		; 40

	rti		; 40

	sbc $CFF0FE.l,X		; FF FE F0 CF
	cpy #$063F.w		; C0 3F 06
	xce		; FB
	asl $3CEF.w,X		; 1E EF 3C
	cmp $60B778.l,X		; DF 78 B7 60
	cmp $FF01FF.l,X		; DF FF 01 FF
	bmi  -1.b		; 30 FF
	cpy $34FE.w		; CC FE 34
	ror $7D50.w,X		; 7E 50 7D
	jsr $487E.w		; 20 7E 48
	beq  32.b		; F0 20
	tas		; 1B
	sbc $FB24.w,X		; FD 24 FB
	brk $FE.b		; 00 FE
	sbc ($FD.b,X)		; E1 FD
	cmp ($FD.b,X)		; C1 FD
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	bpl -17.b		; 10 EF
	phx		; DA
	cop $B7.b		; 02 B7
	ora $06.b		; 05 06
	ora $E5.b,S		; 03 E5
	ora [$E1.b]		; 07 E1
	ora $C8.b,S		; 03 C8
	ora $3A.b,S		; 03 3A
	ora ($F7.b,X)		; 01 F7
	bpl -20.b		; 10 EC
	bmi  24.b		; 30 18
	jsr $C0DF.w		; 20 DF C0
	sbc $F0FCE0.l		; EF E0 FC F0
	sbc [$F3.b],Y		; F7 F3
	sei		; 78
	sed		; F8
	ora $03C07F.l,X		; 1F 7F C0 03
	brk $C7.b		; 00 C7
	bra -32.b		; 80 E0
	cpy #$E0F3.w		; C0 F3 E0
	sbc ($60.b,S),Y		; F3 60
	xce		; FB
	bmi  -1.b		; 30 FF
	ora $0032FF.l,X		; 1F FF 32 00
	bit $23.b,X		; 34 23
	sed		; F8
	ora ($78.b,X)		; 01 78
	brk $D0.b		; 00 D0
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	ora ($FC.b,X)		; 01 FC
	and ($D9.b),Y		; 31 D9
	rts		; 60

	rts		; 60

	brk $B0.b		; 00 B0
	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpx #$6030.w		; E0 30 60
	clc		; 18
	bmi -114.b		; 30 8E
	asl $C9.b		; 06 C9
	php		; 08
	adc [$00.b],Y		; 77 00
	and $1F01.w,X		; 3D 01 1F
	ora ($0F.b,X)		; 01 0F
	bne  16.b		; D0 10
	beq  16.b		; F0 10
	sed		; F8
	dey		; 88
	ror $46.b,X		; 76 46
	bit $0828.w		; 2C 28 08
	ora $08.b,S		; 03 08
	phd		; 0B
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($06.b,X)		; 01 06
	brk $0F.b		; 00 0F
	brk $08.b		; 00 08
	brk $13.b		; 00 13
	ora ($0E.b,X)		; 01 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$05.b]		; 07 05
	brk $3E.b		; 00 3E
	asl $7FED.w,X		; 1E ED 7F
	lda $1F7FFF.l,X		; BF FF 7F 1F
	sbc $007D03.l		; EF 03 7D 00
	sbc $00DFE0.l,X		; FF E0 DF 00
	brk $7F.b		; 00 7F
	eor ($FF.b)		; 52 FF
	rti		; 40

	sbc $507F80.l,X		; FF 80 7F 50
	ora $92F30A.l		; 0F 0A F3 92
	jsr ($0024.w,X)		; FC 24 00
	brk $00.b		; 00 00
	sbc ($C0.b,X)		; E1 C0
	lda $FFEEF1.l,X		; BF F1 EE FF
	sbc $FFFF.w,Y		; F9 FF FF
	sbc $D93E7F.l,X		; FF 7F 3E D9
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	sbc ($51.b),Y		; F1 51
	sbc $06FF11.l,X		; FF 11 FF 06
	sbc $80FF00.l,X		; FF 00 FF 80
	sbc $7C03A6.l,X		; FF A6 03 7C
	ora $DE3FF7.l		; 0F F7 3F DE
	inc $FC7D.w,X		; FE 7D FC
	xce		; FB
	sed		; F8
	sbc [$E0.b]		; E7 E0
	sta $1FFF00.l,X		; 9F 00 FF 1F
	tas		; 1B
	adc $21FF68.l,X		; 7F 68 FF 21
	sbc $05FF82.l,X		; FF 82 FF 05
	sbc $66FE1B.l,X		; FF 1B FE 66
	beq  16.b		; F0 10
	lda ($7F.b),Y		; B1 7F
	bit $FF.b		; 24 FF
	plp		; 28
	sbc $29F807.l,X		; FF 07 F8 29
	pei ($37.b)		; D4 37
	jmp.w [$E42B]		; DC 2B E4
	ora $C0FFE0.l		; 0F E0 FF C0
	adc [$40.b],Y		; 77 40
	jmp ($4840.w)		; 6C 40 48
	rti		; 40

	cpx #$A4C6.w		; E0 C6 A4
	sta $19.b		; 85 19
	tsb $9F.b		; 04 9F
	bra 120.b		; 80 78
	sbc $98FE4C.l,X		; FF 4C FE 98
	sbc $6AEF12.l,X		; FF 12 EF 6A
	eor [$F0.b]		; 47 F0
	lsr $3040.w		; 4E 40 30
	cpy #$7E60.w		; C0 60 7E
	brk $6C.b		; 00 6C
	brk $DE.b		; 00 DE
	brk $0A.b		; 00 0A
	jsr $1082.w		; 20 82 10
	stx $20.b		; 86 20
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	tsb $1C19.w		; 0C 19 1C
	and ($18.b),Y		; 31 18
	jsl $303624.l		; 22 24 36 30
	ror $7C20.w,X		; 7E 20 7C
	brk $78.b		; 00 78
	brk $30.b		; 00 30
	asl $00.b		; 06 00
	asl $1C00.w		; 0E 00 1C
	brk $28.b		; 00 28
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$FF00.w		; C0 00 FF
	tsb $3C.b		; 04 3C
	ora #$F9.b		; 09 F9
	bpl -13.b		; 10 F3
	brk $0F.b		; 00 0F
	ora ($07.b,X)		; 01 07
	cop $0E.b		; 02 0E
	brk $00.b		; 00 00
	cpy #$D3C0.w		; C0 C0 D3
	brk $A6.b		; 00 A6
	bra  15.b		; 80 0F
	ora $00.b,S		; 03 00
	brk $02.b		; 00 02
	cop $05.b		; 02 05
	tsb $07.b		; 04 07
	bmi  15.b		; 30 0F
	sed		; F8
	eor $78.b,S		; 43 78
	ora [$FC.b]		; 07 FC
	ora $CFF8.w,Y		; 19 F8 CF
	cpy #$007E.w		; C0 7E 00
	sbc $1F01.w,X		; FD 01 1F
	bpl   7.b		; 10 07
	brk $AF.b		; 00 AF
	plp		; 28
	wai		; CB
	iny		; C8
	and [$20.b]		; 27 20
	and $00FF00.l,X		; 3F 00 FF 00
	inc $1800.w,X		; FE 00 18
	.db $42, $3C		; 42 3C
	.db $62, $BE, $63		; 62 BE 63
	dec $DC63.w		; CE 63 DC
	adc ($CC.b),Y		; 71 CC
	adc ($08.b),Y		; 71 08
	.db $62, $00, $F8		; 62 00 F8
	ldy $9E00.w,X		; BC 00 9E
	cop $9C.b		; 02 9C
	brk $BC.b		; 00 BC
	jsr $20AE.w		; 20 AE 20
	stz $9C10.w,X		; 9E 10 9C
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	sta ($00.b,X)		; 81 00
	cmp ($00.b,X)		; C1 00
	sta ($00.b,X)		; 81 00
	sta ($00.b,X)		; 81 00
	ora ($00.b,X)		; 01 00
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
	cpy #$8033.w		; C0 33 80
	eor ($00.b,X)		; 41 00
	sta ($00.b,X)		; 81 00
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C1.b		; 00 C1
	cpy #$8080.w		; C0 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $42, $BD		; 42 BD
	sty $7B.b		; 84 7B
	ora ($EE.b),Y		; 11 EE
	and ($DE.b,X)		; 21 DE
	.db $42, $BD		; 42 BD
	asl $79.b		; 06 79
	tsb $0133.w		; 0C 33 01
	ora $BD42CE.l,X		; 1F CE 42 BD
	sty $7B.b		; 84 7B
	ora $21EF.w,Y		; 19 EF 21
	lsr $3E42.w,X		; 5E 42 3E
	asl $1C.b		; 06 1C
	tsb $0606.w		; 0C 06 06
	sta $63835F.l		; 8F 5F 83 63
	plp		; 28
	cmp $24.b,X		; D5 24
	phx		; DA
	bit $DB.b		; 24 DB
	ora ($ED.b)		; 12 ED
	ora ($EE.b),Y		; 11 EE
	ora ($EE.b),Y		; 11 EE
	sta [$BF.b]		; 87 BF
	.db $82, $9F, $68		; 82 9F 68
	pld		; 2B
	jmp ($EC25.w)		; 6C 25 EC
	bit $F6.b		; 24 F6
	ora ($F7.b)		; 12 F7
	ora ($37.b),Y		; 11 37
	ora ($80.b),Y		; 11 80
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$3B.b]		; 07 3B
	ora $6C1F77.l		; 0F 77 1F 6C
	jsr $00DF.w		; 20 DF 00
	cpy #$8300.w		; C0 00 83
	ora ($0E.b,X)		; 01 0E
	ora [$1B.b]		; 07 1B
	ora $283F14.l,X		; 1F 14 3F 28
	adc $BCFF53.l,X		; 7F 53 FF BC
	bra -128.b		; 80 80
	ora ($01.b,X)		; 01 01
	ora [$05.b]		; 07 05
	ora $FDFE0C.l		; 0F 0C FE FD
	sbc $1FFFFF.l,X		; FF FF FF 1F
	and $FD03C0.l,X		; 3F C0 03 FD
	adc ($8E.b),Y		; 71 8E
	sed		; F8
	sbc [$FC.b],Y		; F7 FC
	xce		; FB
	sbc $00FF02.l,X		; FF 02 FF 00
	sbc $3FFFE0.l,X		; FF E0 FF 3F
	and $7DFF3A.l,X		; 3F 3A FF 7D
	sbc $05FF0A.l,X		; FF 0A FF 05
	ora $DBE7EE.l,X		; 1F EE E7 DB
	sbc $3DFEFE.l,X		; FF FE FE 3D
	jsr ($F8FB.w,X)		; FC FB F8
	and [$E0.b],Y		; 37 E0
	ora $BFFE10.l,X		; 1F 10 FE BF
	lda ($FF.b),Y		; B1 FF
	bit $FF.b		; 24 FF
	ora ($FF.b,X)		; 01 FF
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	tsb $FF.b		; 04 FF
	cmp #$E2E6.w		; C9 E6 E2
	cmp $8000.w,Y		; D9 00 80
	adc $186F80.l,X		; 7F 80 6F 18
	cmp $10AE2D.l,X		; DF 2D AE 10
	sbc $20.b,X		; F5 20
	txy		; 9B
	adc ($1C.b,S),Y		; 73 1C
	sbc $B1F730.l		; EF 30 F7 B1
	sbc $B0.b,S		; E3 B0
	cmp $A178.w,Y		; D9 78 A1
	adc $9E80.w,X		; 7D 80 9E
	rts		; 60

	asl $04E0.w		; 0E E0 04
	cpy #$0607.w		; C0 07 06
	beq   2.b		; F0 02
	sed		; F8
	ora ($FC.b,X)		; 01 FC
	bpl  -1.b		; 10 FF
	stz $A15B.w		; 9C 5B A1
	lsr $AE.b		; 46 AE
	eor ($BD.b,X)		; 41 BD
	.db $42, $DF		; 42 DF
	cmp ($CF.b),Y		; D1 CF
	cmp #$54D7.w		; C9 D7 54
	iny		; C8
	php		; 08
	lda ($80.b,X)		; A1 80
	tsx		; BA
	bra  48.b		; 80 30
	brk $21.b		; 00 21
	sty $6040.w		; 8C 40 60
	bra -32.b		; 80 E0
	rti		; 40

	bra  64.b		; 80 40
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$E080.w		; C0 80 E0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	cpy #$8038.w		; C0 38 80
	rts		; 60

	bra  64.b		; 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bvc  80.b		; 50 50
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $090F00.l		; 0F 00 0F 09
	and [$30.b],Y		; 37 30
	jmp $1BE0.w		; 4C E0 1B
	cpy #$8038.w		; C0 38 80
	rts		; 60

	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	php		; 08
	php		; 08
	and [$34.b],Y		; 37 34
	jmp ($5068.w)		; 6C 68 50
	bvc  64.b		; 50 40
	brk $00.b		; 00 00
	cpx #$4020.w		; E0 20 40
	bvs -16.b		; 70 F0
	sei		; 78
	sed		; F8
	ldy $4E7C.w,X		; BC 7C 4E
	rol $0F16.w,X		; 3E 16 0F
	ora [$03.b]		; 07 03
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	jsr $38F8.w		; 20 F8 38
	jsr ($FE1C.w,X)		; FC 1C FE
	tsb $06FF.w		; 0C FF 06
	and $000F00.l,X		; 3F 00 0F 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora $00F000.l		; 0F 00 F0 00
	eor ($00.b,X)		; 41 00
	ora [$00.b],Y		; 17 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $0B3E3E.l		; 0F 3E 3E 0B
	asl A		; 0A
	brk $00.b		; 00 00
	brk $E3.b		; 00 E3
	brk $1A.b		; 00 1A
	brk $84.b		; 00 84
	brk $8F.b		; 00 8F
	brk $FF.b		; 00 FF
	ora $FF.b,S		; 03 FF
	ora $0000FF.l		; 0F FF 00 00
	brk $00.b		; 00 00
	sbc ($E1.b,X)		; E1 E1
	tda		; 7B
	tda		; 7B
	bvs 112.b		; 70 70
	ora $D0DF0C.l		; 0F 0C DF D0
	lda $000020.l,X		; BF 20 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	bra  -8.b		; 80 F8
	cpx #$00FD.w		; E0 FD 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$2020.w		; C0 20 20
	cpy #$E040.w		; C0 40 E0
	jsr $08F8.w		; 20 F8 08
	and ($F3.b)		; 32 F3
	and $1EE1.w		; 2D E1 1E
	rti		; 40

	rol $0F60.w,X		; 3E 60 0F
	rts		; 60

	ora $300730.l,X		; 1F 30 07 30
	ora $404C18.l		; 0F 18 4C 40
	lsr $7F40.w,X		; 5E 40 7F
	rti		; 40

	ora $203F00.l,X		; 1F 00 3F 20
	ora $101F00.l		; 0F 00 1F 10
	ora [$00.b]		; 07 00
	cpy #$0038.w		; C0 38 00
	jsr ($FC18.w,X)		; FC 18 FC
	bpl -10.b		; 10 F6
	ldy $28E6.w		; AC E6 28
	.db $62, $AA, $62		; 62 AA 62
	cpx $C061.w		; EC 61 C0
	cpy #$1818.w		; C0 18 18
	rts		; 60

	rts		; 60

	ldy $18A4.w		; AC A4 18
	brk $9E.b		; 00 9E
	cop $DC.b		; 02 DC
	rti		; 40

	stz $0200.w,X		; 9E 00 02
	asl $1C05.w		; 0E 05 1C
	phd		; 0B
	sec		; 38
	tsb $71.b		; 04 71
	bmi  -2.b		; 30 FE
	rti		; 40

	jsr ($98C0.w,X)		; FC C0 98
	cpy #$0510.w		; C0 10 05
	tsb $0B.b		; 04 0B
	php		; 08
	ora [$00.b]		; 07 00
	rol $3420.w		; 2E 20 34
	tsb $18.b		; 04 18
	php		; 08
	rts		; 60

	brk $E0.b		; 00 E0
	brk $E4.b		; 00 E4
	ora [$A0.b]		; 07 A0
	bit $E000.w,X		; 3C 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plx		; FA
	cop $D0.b		; 02 D0
	bpl -128.b		; 10 80
	bra   0.b		; 80 00
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
	brk $C0.b		; 00 C0
	cpy #$E0D0.w		; C0 D0 E0
	pea $2164.w		; F4 64 21
	ora $160F13.l		; 0F 13 0F 16
	asl $040C.w		; 0E 0C 04
	brk $00.b		; 00 00
	bra -32.b		; 80 E0
	cpy #$04FC.w		; C0 FC 04
	inc $7F01.w,X		; FE 01 7F
	ora $3F.b,S		; 03 3F
	asl $1F.b		; 06 1F
	tsb $0E.b		; 04 0E
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora ($02.b,X)		; 01 02
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	ora $1F.b,S		; 03 1F
	ora [$3F.b]		; 07 3F
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	cop $03.b		; 02 03
	asl $05.b		; 06 05
	ora $101F08.l		; 0F 08 1F 10
	bra -61.b		; 80 C3
	cpy #$C3DF.w		; C0 DF C3
	sbc $E3EFEF.l		; EF EF EF E3
	sbc [$70.b],Y		; F7 70
	sbc [$FC.b],Y		; F7 FC
	tda		; 7B
	bit $807B.w,X		; 3C 7B 80
	cpx #$E687.w		; E0 87 E6
	cmp $F0CFF8.l		; CF F8 CF F0
	adc [$F8.b]		; 67 F8
	adc ($F8.b,S),Y		; 73 F8
	and ($FD.b),Y		; 31 FD
	sec		; 38
	jsr ($FF00.w,X)		; FC 00 FF
	jmp ($F0FF.w,X)		; 7C FF F0
	sbc $80FFE0.l,X		; FF E0 FF 80
	sbc $76FB1C.l,X		; FF 1C FB 76
	cmp $8FE6.w		; CD E6 8F
	sbc $FDC1.w,X		; FD C1 FD
	ora ($FE.b,X)		; 01 FE
	cop $FE.b		; 02 FE
	asl $11F1.w		; 0E F1 11
	cpy #$38DC.w		; C0 DC 38
	asl $0E7D.w		; 0E 7D 0E
	pha		; 48
	sbc $0EFF51.l,X		; FF 51 FF 0E
	sbc ($52.b),Y		; F1 52
	tay		; A8
	adc $C856B8.l		; 6F B8 56 C8
	ora $E00CC0.l,X		; 1F C0 0C E0
	inc $D900.w		; EE 00 D9
	bra -112.b		; 80 90
	bra -63.b		; 80 C1
	sty $8AC9.w		; 8C C9 8A
	and ($08.b,S),Y		; 33 08
	and $233F00.l,X		; 3F 00 3F 23
	ora $7E1FEF.l,X		; 1F EF 1F 7E
	rol $3E5F.w,X		; 3E 5F 3E
	adc $3F7C.w,X		; 7D 7C 3F
	jmp ($10FB.w,X)		; 7C FB 10
	sbc $3FFF6C.l,X		; FF 6C FF 3F
	bmi  63.b		; 30 3F
	ora ($7F.b,X)		; 01 7F
	rts		; 60

	adc $417F02.l,X		; 7F 02 7F 41
	adc $031305.l,X		; 7F 05 13 03
	adc $8241.w		; 6D 41 82
	adc $06FF03.l,X		; 7F 03 FF 06
	sbc $00FF0C.l,X		; FF 0C FF 00
	sbc $0EFE04.l,X		; FF 04 FE 0E
	inc $FF1C.w,X		; FE 1C FF
	tsx		; BA
	dey		; 88
	xce		; FB
	cli		; 58
	sbc [$90.b],Y		; F7 90
	sbc $B0F2A0.l		; EF A0 F2 B0
	pea $EEB1.w		; F4 B1 EE
	and ($DE.b,X)		; 21 DE
	brk $3C.b		; 00 3C
	bcs 119.b		; B0 77
	bcs  99.b		; B0 63
	ldy #$6031.w		; A0 31 60
	ora $5F9F31.l,X		; 1F 31 9F 5F
	eor $BB5A2F.l		; 4F 2F 5A BB
	bmi 115.b		; 30 73
	bmi 120.b		; 30 78
	ldy #$007E.w		; A0 7E 00
	inc $F101.w		; EE 01 F1
	ora $FF06FF.l		; 0F FF 06 FF
	rti		; 40

	eor $AC02FC.l,X		; 5F FC 02 AC
	.db $42, $6C		; 42 6C
.ACCU 16
	rep #$E0		; C2 E0
	ora [$64.b]		; 07 64
	asl $1DA9.w		; 0E A9 1D
	eor $3B.b,S		; 43 3B
	ora [$77.b]		; 07 77
	brk $B0.b		; 00 B0
	rti		; 40

	clc		; 18
	cpy #$0A18.w		; C0 18 0A
	bpl  20.b		; 10 14
	cmp ($08.b,X)		; C1 08
	eor $09.b,S		; 43 09
	sta [$00.b]		; 87 00
	sta $3CFF3C.l		; 8F 3C FF 3C
	adc $1C5F3C.l,X		; 7F 3C 5F 1C
	ply		; 7A
	clc		; 18
	rol $3408.w		; 2E 08 34
	php		; 08
	trb $00.b		; 14 00
	trb $027E.w		; 1C 7E 02
	ror $3C42.w,X		; 7E 42 3C
	jsr $043C.w		; 20 3C 04
	bit $1C30.w,X		; 3C 30 1C
	tsb $1818.w		; 0C 18 18
	php		; 08
	brk $A0.b		; 00 A0
	eor $00F700.l,X		; 5F 00 F7 00
	adc $00.b,S		; 63 00
	adc ($00.b,X)		; 61 00
	rti		; 40

	ora $40.b,S		; 03 40
	bpl  79.b		; 10 4F
	ora $A113.w		; 0D 13 A1
	ldy #$0041.w		; A0 41 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $480C.w		; 0C 0C 48
	lda [$44.b],Y		; B7 44
	tyx		; BB
	mvp $21,$BB		; 44 BB 21
	sbc $7016.w		; ED 16 70
	sta [$70.b],Y		; 97 70
	ora $F80BF8.l		; 0F F8 0B F8
	sbc $DC48.w,Y		; F9 48 DC
	mvp $45,$CD		; 44 CD 45
	ora ($00.b)		; 12 00
	and $202F20.l		; 2F 20 2F 20
	ora [$10.b],Y		; 17 10
	ora [$10.b],Y		; 17 10
	ora $2EC1.w,X		; 1D C1 2E
	cpx #$F017.w		; E0 17 F0
	phd		; 0B
	sed		; F8
	sta $FC.b		; 85 FC
	.db $42, $7E		; 42 7E
	sta ($3F.b,X)		; 81 3F
	cpx #$7E3F.w		; E0 3F 7E
	rti		; 40

	eor $202F40.l,X		; 5F 40 2F 20
	sta [$90.b],Y		; 97 90
	phk		; 4B
	pha		; 48
	sta $04.b		; 85 04
.ACCU 8
	sep #$22		; E2 22
	cmp ($01.b,X)		; C1 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $1B.b		; 00 1B
	brk $41.b		; 00 41
	ora ($26.b,X)		; 01 26
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	tsb $04.b		; 04 04
	rol $193E.w,X		; 3E 3E 19
	ora $0607.w,Y		; 19 07 06
	brk $86.b		; 00 86
	brk $59.b		; 00 59
	brk $2C.b		; 00 2C
	brk $1F.b		; 00 1F
	brk $7F.b		; 00 7F
	asl $3FFF.w		; 0E FF 3F
	sbc $00FFC5.l,X		; FF C5 FF 00
	brk $86.b		; 00 86
	stx $C3.b		; 86 C3
	cmp $E0.b,S		; C3 E0
	cpx #$919F.w		; E0 9F 91
	adc $80FF40.l,X		; 7F 40 FF 80
	sbc $0000.w,X		; FD 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpx #$F880.w		; E0 80 F8
	cpx #$00F8.w		; E0 F8 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	jsr $00F8.w		; 20 F8 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $36.b		; 00 36
	rol $7F.b,X		; 36 7F
	jsl $2A147F.l		; 22 7F 14 2A
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
	php		; 08
	brk $0F.b		; 00 0F
	and $3D7F1E.l,X		; 3F 1E 7F 3D
	lsr $FE39.w,X		; 5E 39 FE
	adc ($BD.b,S),Y		; 73 BD
	adc $FF.b,S		; 63 FF
	eor [$FB.b]		; 47 FB
	sta [$FF.b]		; 87 FF
	and $003F20.l,X		; 3F 20 3F 00
	adc $057F63.l,X		; 7F 63 7F 05
	sbc $10F7CE.l,X		; FF CE F7 10
	adc $008F0C.l		; 6F 0C 8F 00
	jmp ($B8BB.w,X)		; 7C BB B8
	and [$B6.b],Y		; 37 B6
	phk		; 4B
	jmp.w [$E0EE]		; DC EE E0
	cmp $E0CFF0.l,X		; DF F0 CF E0
	cmp $BABFC0.l,X		; DF C0 BF BA
	jmp ($F892.w,X)		; 7C 92 F8
	stx $B4.b		; 86 B4
	cmp $E310.w,X		; DD 10 E3
	and $F8.b,S		; 23 F8
	bmi  -9.b		; 30 F7
	and [$EE.b]		; 27 EE
	lsr $D6.b		; 46 D6
	asl $3AAA.w,X		; 1E AA 3A
	mvn $82,$75		; 54 75 82
	cmp $3F.b,S		; C3 3F
	cpy $D83C.w		; CC 3C D8
	ora $28F0.w,Y		; 19 F0 28
	bne -26.b		; D0 E6
	ora [$D0.b]		; 07 D0
	ora $423EA1.l,X		; 1F A1 3E 42
	ror $BC8C.w,X		; 7E 8C BC
	php		; 08
	tsa		; 3B
	bra -73.b		; 80 B7
	bra -73.b		; 80 B7
	sta $71.b		; 85 71
	.db $82, $79, $A0		; 82 79 A0
	adc $D26DAA.l,X		; 7F AA 6D D2
	and $5C.b		; 25 5C
	jsl $B20CB2.l		; 22 B2 0C B2
	ora $929E.w		; 0D 9E 92
	ldx $90A8.w		; AE A8 90
	bcc -110.b		; 90 92
	.db $82, $7A, $62		; 82 7A 62
	asl $1484.w,X		; 1E 84 14
	cpy #$E008.w		; C0 08 E0
	mvp $28,$FF		; 44 FF 28
	cmp [$44.b],Y		; D7 44
	xce		; FB
	adc $3DBA.w		; 6D BA 3D
	ror $7C3F.w,X		; 7E 3F 7C
	rol $3E7F.w,X		; 3E 7F 3E
	eor $2B0045.l,X		; 5F 45 00 2B
	rol A		; 2A
	eor [$06.b],Y		; 57 06
	adc $017F45.l		; 6F 45 7F 01
	adc $003E43.l,X		; 7F 43 3E 00
	rol $8920.w,X		; 3E 20 89
	ror $7C83.w,X		; 7E 83 7C
	.db $82, $7D, $82		; 82 7D 82
	adc $FD02.w,X		; 7D 02 FD
	tsb $FB.b		; 04 FB
	cld		; D8
	sbc $EDFF88.l,X		; FF 88 FF ED
	lda ($EB.b,X)		; A1 EB
	lda $E2.b,S		; A3 E2
	ldx #$82C6.w		; A2 C6 82
	cmp [$42.b]		; C7 42
	ora $04.b		; 05 04
	cmp $8980.w,Y		; D9 80 89
	brk $44.b		; 00 44
	ldy $43.b,X		; B4 43
	tyx		; BB
	ldy #$925E.w		; A0 5E 92
	adc $6E91.w		; 6D 91 6E
	pha		; 48
	lda [$48.b],Y		; B7 48
	lda [$44.b],Y		; B7 44
	tyx		; BB
	mvp $42,$4F		; 44 4F 42
	eor [$A8.b]		; 47 A8
	lda ($B6.b,X)		; A1 B6
	sta ($B7.b)		; 92 B7
	sta ($FB.b),Y		; 91 FB
	pha		; 48
	stp		; DB
	pha		; 48
	cmp $0744.w,X		; DD 44 07
	sed		; F8
	rti		; 40

	bit $9E60.w,X		; 3C 60 9E
	asl $00E1.w,X		; 1E E1 00
	inc $7F80.w,X		; FE 80 7F
	.db $62, $9B, $05		; 62 9B 05
	sbc ($20.b),Y		; F1 20
	sta [$58.b]		; 87 58
	cmp $60.b,S		; C3 60
	rts		; 60

	inc $381E.w,X		; FE 1E 38
	brk $86.b		; 00 86
	stx $ED.b		; 86 ED
	adc #$DE.b		; 69 DE
	bpl   0.b		; 10 00
	php		; 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
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
	plp		; 28
	asl $20.b,X		; 16 20
	trb $1B22.w		; 1C 22 1B
	bit $1E.b		; 24 1E
	bmi  28.b		; 30 1C
	jsr $2018.w		; 20 18 20
	bpl   0.b		; 10 00
	brk $0D.b		; 00 0D
	php		; 08
	phd		; 0B
	brk $14.b		; 00 14
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	jmp ($8E02.w,X)		; 7C 02 8E
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phb		; 8B
	php		; 08
	ora ($00.b,X)		; 01 00
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F01F.w		; C0 1F F0
	ora $0C68.w,Y		; 19 68 0C
	bcs -124.b		; B0 84
	mvn $28,$C6		; 54 C6 28
.INDEX 8
	sep #$16		; E2 16
	adc ($0C.b,S),Y		; 73 0C
	adc $10F0.w,Y		; 79 F0 10
	inx		; E8
	php		; 08
	beq   0.b		; F0 00
	jmp ($B804.w,X)		; 7C 04 B8
	bra  94.b		; 80 5E
	.db $42, $2C		; 42 2C
	jsr $1016.w		; 20 16 10
	tya		; 98
	jsr ($FE30.w,X)		; FC 30 FE
	bit $DE.b		; 24 DE
	pei ($8C.b)		; D4 8C
	cpx #$94.b		; E0 94
	bra  96.b		; 80 60
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	cld		; D8
	brk $BC.b		; 00 BC
	brk $14.b		; 00 14
	rti		; 40

	tsb $20.b		; 04 20
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($C1.b,X)		; 21 C1
	plx		; FA
	plx		; FA
	sbc $FCF9.w,Y		; F9 F9 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($01.b,X)		; 81 01
	sbc $00FFFA.l,X		; FF FA FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$60.b		; C0 60
	rts		; 60

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$E0.b		; C0 E0
	rts		; 60

	beq  64.b		; F0 40
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpy #$40.b		; C0 40
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	bra  32.b		; 80 20
	cpx #$30.b		; E0 30
	cpy #$10.b		; C0 10
	bvs  24.b		; 70 18
	ldy #$88.b		; A0 88
	pha		; 48
	iny		; C8
	bpl  -8.b		; 10 F8
	brk $F0.b		; 00 F0
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	sei		; 78
	php		; 08
	bcs -128.b		; B0 80
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	ora ($37.b,X)		; 01 37
	rol $7F.b,X		; 36 7F
	jsl $2A147F.l		; 22 7F 14 2A
	brk $1E.b		; 00 1E
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0C08.w		; 20 08 0C
	clc		; 18
	clc		; 18
	asl $3E.b,X		; 16 3E
	asl $123E.w		; 0E 3E 12
	trb $0C0A.w		; 1C 0A 0C
	ora $06.b,S		; 03 06
	brk $0C.b		; 00 0C
	php		; 08
	asl $3E18.w,X		; 1E 18 3E
	asl $7E.b,X		; 16 7E
	asl $107E.w		; 0E 7E 10
	rol $1F08.w,X		; 3E 08 1F
	brk $0F.b		; 00 0F
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
	brk $36.b		; 00 36
	rol $7F.b,X		; 36 7F
	jsl $2A147F.l		; 22 7F 14 2A
	brk $1C.b		; 00 1C
	brk $88.b		; 00 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	asl $0C05.w		; 0E 05 0C
	phd		; 0B
	clc		; 18
	ora [$10.b]		; 07 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora $04.b		; 05 04
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $E12E10.l,X		; 1F 10 2E E1
	lsr $BCC1.w,X		; 5E C1 BC
	sta $78.b,S		; 83 78
	asl $F0.b		; 06 F0
	tsb $10E0.w		; 0C E0 10
	cpy #$60.b		; C0 60
	brk $40.b		; 00 40
	lsr $BE40.w,X		; 5E 40 BE
	bra 126.b		; 80 7E
	cop $FC.b		; 02 FC
	tsb $F8.b		; 04 F8
	php		; 08
	cpx #$00.b		; E0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $36.b		; 00 36
	rol $7F.b,X		; 36 7F
	jsl $2A147F.l		; 22 7F 14 2A
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
	php		; 08
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	adc $1C.b,S		; 63 1C
	lsr $78.b		; 46 78
	cpy $9830.w		; CC 30 98
	rts		; 60

	bcs -128.b		; B0 80
	cpx #$80.b		; E0 80
	cpy #$00.b		; C0 00
	bra  28.b		; 80 1C
	brk $78.b		; 00 78
	rti		; 40

	bmi   0.b		; 30 00
	cpx #$80.b		; E0 80
	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	cop $3D.b		; 02 3D
	cop $7D.b		; 02 7D
	bpl 121.b		; 10 79
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	asl A		; 0A
	brk $32.b		; 00 32
	brk $36.b		; 00 36
	brk $10.b		; 00 10
	adc ($00.b)		; 72 00
	dec A		; 3A
	brk $30.b		; 00 30
	brk $34.b		; 00 34
	jsr $3074.w		; 20 74 30
	jmp ($7810.w,X)		; 7C 10 78
	brk $38.b		; 00 38
	bit $1C00.w,X		; 3C 00 1C
	clc		; 18
	tsb $2800.w		; 0C 00 28
	brk $28.b		; 00 28
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $07.b		; 00 07
	inc A		; 1A
	asl $0C15.w		; 0E 15 0C
	and [$0C.b],Y		; 37 0C
	rol $3A0C.w,X		; 3E 0C 3A
	php		; 08
	trb $00.b		; 14 00
	tsb $0C00.w		; 0C 00 0C
	ora $1B1F0D.l		; 0F 0D 1F 1B
	asl $1C1A.w,X		; 1E 1A 1C
	bpl  12.b		; 10 0C
	tsb $0C.b		; 04 0C
	php		; 08
	tsb $0408.w		; 0C 08 04
	tsb $00.b		; 04 00
	beq   0.b		; F0 00
	cpy #$00.b		; C0 00
	brk $06.b		; 00 06
	ora ($1F.b,X)		; 01 1F
	ora $10273F.l,X		; 1F 3F 27 10
	bpl   1.b		; 10 01
	brk $C0.b		; 00 C0
	rti		; 40

	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $1F.b		; 00 1F
	ora $7F233F.l,X		; 1F 3F 23 7F
	brk $3F.b		; 00 3F
	brk $13.b		; 00 13
	brk $3F.b		; 00 3F
	bpl  15.b		; 10 0F
	jmp $FF7E3D.l		; 5C 3D 7E FF
	beq -32.b		; F0 E0
	cpy #$80.b		; C0 80
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $390118.l,X		; 1F 18 01 39
	clc		; 18
	inc $FF3C.w,X		; FE 3C FF
	cpy #$FE.b		; C0 FE
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	ora ($80.b,X)		; 01 80
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sta $0C1300.l,X		; 9F 00 13 0C
	bit $1F1F.w		; 2C 1F 1F
	lda $FFBFDF.l,X		; BF DF BF FF
	ora $7E83FF.l,X		; 1F FF 83 7E
	ror $F000.w,X		; 7E 00 F0
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	ora $7F9F3F.l		; 0F 3F 9F 7F
	ora $FB.b,S		; 03 FB
	ora $F5.b		; 05 F5
	cop $F2.b		; 02 F2
	sty $75.b		; 84 75
	cpy #$38.b		; C0 38
	sbc ($1C.b,X)		; E1 1C
	tyx		; BB
	dec $C0.b		; C6 C0
	inc $E3.b,X		; F6 E3
	sbc [$95.b]		; E7 95
	sta $656F72.l,X		; 9F 72 6F 65
	ora $033C03.l,X		; 1F 03 3C 03
	cld		; D8
	ora ($E0.b,X)		; 01 E0
	sta $FA.b,S		; 83 FA
	rol A		; 2A
	adc ($90.b,X)		; 61 90
	lda ($20.b)		; B2 20
	clc		; 18
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	cpy #$60.b		; C0 60
	cpy #$60.b		; C0 60
	cpx #$30.b		; E0 30
	asl $AC84.w,X		; 1E 84 AC
	cpx $C000.w		; EC 00 C0
	bra -96.b		; 80 A0
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	ldy #$20.b		; A0 20
	cpy #$00.b		; C0 00
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($19.b,X)		; 01 19
	trb $5871.w		; 1C 71 58
	cmp $75.b,S		; C3 75
	sta [$A0.b]		; 87 A0
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	asl $2E08.w		; 0E 08 2E
	jsr $81BD.w		; 20 BD 81
	sei		; 78
	brk $9B.b		; 00 9B
	inc A		; 1A
	bit $1887.w,X		; 3C 87 18
	cmp $0E.b,S		; C3 0E
	sbc $36.b,S		; E3 36
	sbc ($46.b,S),Y		; F3 46
	cmp $B8.b,S		; C3 B8
	sta $74.b,S		; 83 74
	asl $E8.b		; 06 E8
	tsb $80F8.w		; 0C F8 80
	ror $BD42.w,X		; 7E 42 BD
	lda ($4D.b,X)		; A1 4D
	eor ($BC.b,X)		; 41 BC
	bra 126.b		; 80 7E
	cop $F8.b		; 02 F8
	brk $F0.b		; 00 F0
	brk $07.b		; 00 07
	adc $08370A.l,X		; 7F 0A 37 08
	adc [$00.b],Y		; 77 00
	adc $12ED12.l,X		; 7F 12 ED 12
	sbc $FC03.w		; ED 03 FC
	ora ($FE.b,X)		; 01 FE
	and [$30.b],Y		; 37 30
	phd		; 0B
	php		; 08
	and $64742D.l,X		; 3F 2D 74 64
	ror $52.b,X		; 76 52
	ror $6F5A.w,X		; 7E 5A 6F
	phd		; 0B
	adc $EE1101.l		; 6F 01 11 EE
	php		; 08
	sbc [$44.b],Y		; F7 44
	tyx		; BB
	jsl $DE21DD.l		; 22 DD 21 DE
	ora ($EE.b),Y		; 11 EE
	bpl -17.b		; 10 EF
	clc		; 18
	inc $D7.b		; E6 D7
	eor ($9B.b),Y		; 51 9B
	dey		; 88
	eor $7E54.w,X		; 5D 54 7E
	and ($EF.b)		; 32 EF
	and #$FF.b		; 29 FF
	sta $94F6.w,Y		; 99 F6 94
	adc $001C.w,X		; 7D 1C 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$01.b]		; 07 01
	asl $1D03.w		; 0E 03 1D
	ora [$3B.b]		; 07 3B
	ora $EF1F77.l		; 0F 77 1F EF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora [$05.b]		; 07 05
	ora $141F0A.l		; 0F 0A 1F 14
	and $507F28.l,X		; 3F 28 7F 50
	brk $7C.b		; 00 7C
	bmi -49.b		; 30 CF
	adc $FFFFBE.l,X		; 7F BE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F8FFFF.l,X		; FF FF FF F8
	brk $00.b		; 00 00
	sbc $41FFB3.l,X		; FF B3 FF 41
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $000007.l,X		; FF 07 00 00
	brk $C0.b		; 00 C0
	bra 120.b		; 80 78
	cpx #$9E.b		; E0 9E
	sed		; F8
	sbc [$FE.b]		; E7 FE
	sbc $FFFF.w,Y		; F9 FF FF
	sbc $00001F.l,X		; FF 1F 00 00
	brk $00.b		; 00 00
	beq -80.b		; F0 B0
	jsr ($FF6C.w,X)		; FC 6C FF
	tas		; 1B
	sbc $00FF06.l,X		; FF 06 FF 00
	sbc $0000E0.l,X		; FF E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $F1.b		; 00 F1
	brk $FC.b		; 00 FC
	bra 126.b		; 80 7E
	beq -17.b		; F0 EF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $E3E30E.l		; 0F 0E E3 E3
	sbc ($91.b),Y		; F1 91
	jsr ($0014.w,X)		; FC 14 00
	brk $00.b		; 00 00
	and $C600.w,X		; 3D 00 C6
	brk $83.b		; 00 83
	brk $C7.b		; 00 C7
	ora $6C.b,S		; 03 6C
	ora $EF1F77.l		; 0F 77 1F EF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $7E39.w,X		; 3D 39 7E
	jmp ($3838.w,X)		; 7C 38 38
	cmp [$97.b],Y		; D7 97
	lda $D0FFA8.l,X		; BF A8 FF D0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $90.b		; 00 90
	brk $F0.b		; 00 F0
	bra 116.b		; 80 74
	cpy #$BE.b		; C0 BE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	rts		; 60

	rts		; 60

	cpy #$40.b		; C0 40
	cpx #$A0.b		; E0 A0
	jsr ($0058.w,X)		; FC 58 00
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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora [$01.b]		; 07 01
	ora $000700.l		; 0F 00 07 00
	ora [$04.b]		; 07 04
	ora $0C1F0E.l		; 0F 0E 1F 0C
	ora $031F08.l,X		; 1F 08 1F 03
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	cop $01.b		; 02 01
	ora ($06.b,X)		; 01 06
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	ora ($0E.b,X)		; 01 0E
	cop $FD.b		; 02 FD
	lda $8CFFB0.l,X		; BF B0 FF 8C
	sbc $71FE3C.l,X		; FF 3C FE 71
	sbc $FD61.w,X		; FD 61 FD
	brk $FF.b		; 00 FF
	beq  -1.b		; F0 FF
	sta $927D.w,X		; 9D 7D 92
	bmi -114.b		; 30 8E
	brk $BE.b		; 00 BE
	ora $7C.b,S		; 03 7C
	ora [$78.b]		; 07 78
	phd		; 0B
	lsr A		; 4A
	php		; 08
	sbc $E100.w,Y		; F9 00 E1
	xce		; FB
	pea $F8FB.w		; F4 FB F8
	sbc ($A0.b),Y		; F1 A0
	cpy #$40.b		; C0 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$C0.b		; E0 C0
	jsr ($FDE1.w,X)		; FC E1 FD
	cpy #$FE.b		; C0 FE
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	beq  16.b		; F0 10
	rts		; 60

	php		; 08
	bcs -120.b		; B0 88
	rti		; 40

	cpy $20.b		; C4 20
	jsr ($7E00.w,X)		; FC 00 7E
	brk $7F.b		; 00 7F
	brk $78.b		; 00 78
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	clv		; B8
	bra  64.b		; 80 40
	rti		; 40

	clc		; 18
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	ora [$03.b]		; 07 03
	inc $8C01.w,X		; FE 01 8C
	ora [$0C.b]		; 07 0C
	cop $18.b		; 02 18
	ora $0A19.w		; 0D 19 0A
	and ($14.b,S),Y		; 33 14
	rol $28.b		; 26 28
	jmp ($0001.w,X)		; 7C 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $000608.l		; 0F 08 06 00
	trb $3A10.w		; 1C 10 3A
	jsl $D00424.l		; 22 24 04 D0
	clc		; 18
	ldy #$30.b		; A0 30
	rti		; 40

	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($7E.b,X)		; 01 7E
	ora ($1E.b,X)		; 01 1E
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $010301.l		; 0F 01 03 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc A		; 1A
	cpx $07.b		; E4 07
	sed		; F8
	ora [$F0.b],Y		; 17 F0
	phd		; 0B
	sed		; F8
	ora $FC.b		; 05 FC
	ora $3E.b,S		; 03 3E
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	tda		; 7B
	clc		; 18
	adc [$00.b]		; 67 00
	ora $101700.l		; 0F 00 17 10
	phd		; 0B
	php		; 08
	ora $04.b		; 05 04
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	ora [$F8.b]		; 07 F8
	brk $7F.b		; 00 7F
	rol $7FD9.w,X		; 3E D9 7F
	ldx $FFFF.w,Y		; BE FF FF
	sta $DE3FE7.l,X		; 9F E7 3F DE
	sei		; 78
	sbc [$FF.b],Y		; F7 FF
	sta [$1F.b]		; 87 1F
	ora ($7F.b,S),Y		; 13 7F
	ror $FF.b		; 66 FF
	cmp ($FF.b,X)		; C1 FF
	brk $FF.b		; 00 FF
	cli		; 58
	adc $09FF21.l,X		; 7F 21 FF 09
	sbc $DF3F7F.l,X		; FF 7F 3F DF
	ora $7D83F7.l		; 0F F7 83 7D
	cpy #$BF.b		; C0 BF
	beq -17.b		; F0 EF
	trb $03E3.w		; 1C E3 03
	jsr ($80FF.w,X)		; FC FF 80
	sbc $C8FF20.l,X		; FF 20 FF C8
	sbc $4CFFB2.l,X		; FF B2 FF 4C
	sbc $1CFF13.l,X		; FF 13 FF 1C
	sta $BDC38B.l		; 8F 8B C3 BD
	beq -17.b		; F0 EF
	jsr ($FFFB.w,X)		; FC FB FF
	sbc $3F7FFF.l,X		; FF FF 7F 3F
	cmp $01F30F.l,X		; DF 0F F3 01
	inc $5AFF.w,X		; FE FF 5A
	sbc $05FF16.l,X		; FF 16 FF 05
	sbc $80FF00.l,X		; FF 00 FF 80
	sbc $CCFF20.l,X		; FF 20 FF CC
	sbc $FBFC39.l,X		; FF 39 FC FB
	sbc $EF1F7F.l,X		; FF 7F 1F EF
	sta [$78.b]		; 87 78
	cpx #$DF.b		; E0 DF
	inc $F8F9.w,X		; FE F9 F8
	sbc [$E0.b]		; E7 E0
	ora $FF04FF.l,X		; 1F FF 04 FF
	bra  -1.b		; 80 FF
	bne  -1.b		; D0 FF
	lda $FF27FF.l,X		; BF FF 27 FF
	asl $FF.b		; 06 FF
	ora $E7FF.w,Y		; 19 FF E7
	sbc $EDFF3B.l,X		; FF 3B FF ED
	inc $9D.b		; E6 9D
	bra 127.b		; 80 7F
	ora ($F3.b,X)		; 01 F3
	ora $F3.b,S		; 03 F3
	ora $F8.b,S		; 03 F8
	ora $88.b,S		; 03 88
	sbc $12FFC4.l,X		; FF C4 FF 12
	sbc $B0F263.l,X		; FF 63 F2 B0
	sbc $CDE1.w		; ED E1 CD
	eor ($8F.b,X)		; 41 8F
	dey		; 88
	ora $F2DC78.l		; 0F 78 DC F2
	iny		; C8
	lda $CC798E.l,X		; BF 8E 79 CC
	ora [$0E.b],Y		; 17 0E
	lda $CC.b,X		; B5 CC
	phd		; 0B
	bvs 110.b		; 70 6E
	cpx #$1C.b		; E0 1C
	jsr ($FE0C.w,X)		; FC 0C FE
	mvn $96,$DE		; 54 DE 96
	bit $1E08.w		; 2C 08 1E
	dex		; CA
	rol $0C14.w		; 2E 14 0C
	sty $00C0.w		; 8C C0 00
	bmi -80.b		; 30 B0
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	jmp ($3C3C.w,X)		; 7C 3C 3C
	trb $0E1E.w		; 1C 1E 0E
	asl $0E.b		; 06 0E
	ora [$03.b]		; 07 03
	jsr $7078.w		; 20 78 70
	jsr ($FC38.w,X)		; FC 38 FC
	clc		; 18
	jsr ($7E0C.w,X)		; FC 0C 7E
	tsb $3E.b		; 04 3E
	asl $1F.b		; 06 1F
	cop $0F.b		; 02 0F
	brk $00.b		; 00 00
	brk $36.b		; 00 36
	rol $7F.b,X		; 36 7F
	jsl $2A147F.l		; 22 7F 14 2A
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
	cmp ($00.b,X)		; C1 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	rts		; 60

	brk $20.b		; 00 20
	bra  48.b		; 80 30
	cpy #$18.b		; C0 18
	beq  28.b		; F0 1C
	cpx #$0E.b		; E0 0E
	sed		; F8
	ora $C00770.l		; 0F 70 07 C0
	rti		; 40

	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	sed		; F8
	php		; 08
	sbc ($02.b)		; F2 02
	sbc $0005.w,X		; FD 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $067100.l,X		; 1F 00 71 06
	xce		; FB
	bpl -21.b		; 10 EB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	asl $3400.w		; 0E 00 34
	brk $36.b		; 00 36
	ora ($14.b)		; 12 14
	inc $EE10.w		; EE 10 EE
	bpl 124.b		; 10 7C
	clc		; 18
	jmp ($7408.w,X)		; 7C 08 74
	php		; 08
	stz $00.b,X		; 74 00
	adc $3B00.w,Y		; 79 00 3B
	bpl  16.b		; 10 10
	trb $14.b		; 14 14
	bpl   0.b		; 10 00
	clc		; 18
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$00.b		; 09 00
	ora $000D03.l		; 0F 03 0D 00
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	brk $87.b		; 00 87
	lsr $9D02.w		; 4E 02 9D
	php		; 08
	tyx		; BB
	tsb $F2.b		; 04 F2
	clc		; 18
.INDEX 8
	sep #$1C		; E2 1C
	cpx $14.b		; E4 14
	pea $FC10.w		; F4 10 FC
	sta [$81.b]		; 87 81
	phb		; 8B
	asl A		; 0A
	trb $10.b		; 14 10
	rol $7C02.w		; 2E 02 7C
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	brk $14.b		; 00 14
	tsb $08.b		; 04 08
	jmp ($380C.w,X)		; 7C 0C 38
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	php		; 08
	brk $0C.b		; 00 0C
	tsb $04.b		; 04 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	trb $3E1C.w		; 1C 1C 3E
	asl $0E1E.w,X		; 1E 1E 0E
	asl $0606.w		; 0E 06 06
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	bit $3E08.w,X		; 3C 08 3E
	tsb $063E.w		; 0C 3E 06
	rol $1E02.w,X		; 3E 02 1E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	cpy #$78.b		; C0 78
	bra  60.b		; 80 3C
	cpx #$3C.b		; E0 3C
	cpy #$1C.b		; C0 1C
	bvs  28.b		; 70 1C
	bcs -100.b		; B0 9C
	bmi  28.b		; 30 1C
	cpy #$18.b		; C0 18
	bcc  16.b		; 90 10
	inx		; E8
	plp		; 28
	cpy #$00.b		; C0 00
	beq  16.b		; F0 10
	inx		; E8
	php		; 08
	pla		; 68
	php		; 08
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	.db $82, $FF, $81		; 82 FF 81
	sbc $28C33E.l,X		; FF 3E C3 28
	sbc $BB.b,S		; E3 BB
	bra  14.b		; 80 0E
	bpl -116.b		; 10 8C
	cmp ($C3.b,X)		; C1 C3
	sbc $BF.b,S		; E3 BF
	brk $B1.b		; 00 B1
	brk $83.b		; 00 83
	brk $24.b		; 00 24
	bmi 102.b		; 30 66
	php		; 08
	asl $F1.b		; 06 F1
	tsb $83F3.w		; 0C F3 83
	sbc $40F8C0.l,X		; FF C0 F8 40
	jsr ($FC30.w,X)		; FC 30 FC
	brk $FC.b		; 00 FC
	bpl 124.b		; 10 7C
	bpl  56.b		; 10 38
	brk $90.b		; 00 90
	bra -64.b		; 80 C0
	beq   0.b		; F0 00
	cld		; D8
	brk $38.b		; 00 38
	brk $F8.b		; 00 F8
	brk $58.b		; 00 58
	bra  24.b		; 80 18
	bra  16.b		; 80 10
	cpy #$80.b		; C0 80
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$01.b]		; 07 01
	asl $1D03.w		; 0E 03 1D
	ora [$3B.b]		; 07 3B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora [$05.b]		; 07 05
	ora $141F0A.l		; 0F 0A 1F 14
	brk $07.b		; 00 07
	brk $3F.b		; 00 3F
	ora $DF3FF7.l		; 0F F7 3F DF
	adc $FFFFBF.l,X		; 7F BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	and $A0FF28.l,X		; 3F 28 FF A0
	sbc $00FF40.l,X		; FF 40 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	ror $3EBD.w,X		; 7E BD 3E
	sbc $593E.w,Y		; F9 3E 59
	trb $1C7B.w		; 1C 7B 1C
	rtl		; 6B

	tsb $0C3B.w		; 0C 3B 0C
	tsa		; 3B
	php		; 08
	ora [$7F.b],Y		; 17 7F
	.db $42, $7F		; 42 7F
	asl $7F.b		; 06 7F
	ror $3F.b		; 66 3F
	tsb $3F.b		; 04 3F
	and $1F.b,X		; 35 1F
	ora $1F.b		; 05 1F
	ora [$0D.b],Y		; 17 0D
	ora #$00.b		; 09 00
	sbc $807F80.l,X		; FF 80 7F 80
	adc $827E81.l,X		; 7F 81 7E 82
	adc $FD82.w,X		; 7D 82 FD
	cpy $BB.b		; C4 BB
	cpy $BB.b		; C4 BB
	sed		; F8
	plp		; 28
	jsr ($F9AC.w,X)		; FC AC F9
	tay		; A8
	sbc ($B1.b,S),Y		; F3 B1
	inc $A2.b		; E6 A2
	inc $CD22.w		; EE 22 CD
	mvp $44,$DD		; 44 DD 44
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	tsb $0B12.w		; 0C 12 0B
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0D.b		; 00 0D
	ora ($0D.b,X)		; 01 0D
	tsb $080B.w		; 0C 0B 08
	ora $C6.b,S		; 03 C6
	cop $86.b		; 02 86
	ora ($83.b,X)		; 01 83
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	bpl  -1.b		; 10 FF
	jsl $702773.l		; 22 73 27 70
	sta $04.b		; 85 04
	sta ($80.b,X)		; 81 80
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	bne -64.b		; D0 C0
	lda $AF01.w		; AD 01 AF
	brk $20.b		; 00 20
	bne  32.b		; D0 20
	bne   0.b		; D0 00
	beq -64.b		; F0 C0
	beq  64.b		; F0 40
	bvs  96.b		; 70 60
	bmi -16.b		; 30 F0
	tya		; 98
	bmi -120.b		; 30 88
	rts		; 60

	jsr $2060.w		; 20 60 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$20.b		; A0 20
	bne  16.b		; D0 10
	rts		; 60

	brk $F8.b		; 00 F8
	dey		; 88
	sei		; 78
	cpy $C498.w		; CC 98 C4
	bit $D864.w,X		; 3C 64 D8
	.db $62, $98, $22		; 62 98 22
	pei ($26.b)		; D4 26
	cld		; D8
	bit $78C0.w,X		; 3C C0 78
	bmi   0.b		; 30 00
	jmp ($9844.w,X)		; 7C 44 98
	brk $BC.b		; 00 BC
	jsr $20FC.w		; 20 FC 20
	cld		; D8
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	sbc $FFEF1F.l,X		; FF 1F EF FF
	adc $F0FFFC.l,X		; 7F FC FF F0
	inc $FD81.w,X		; FE 81 FD
	cpy #$F8.b		; C0 F8
	brk $00.b		; 00 00
	ora $90FF0F.l		; 0F 0F FF 90
	sbc $02FE80.l,X		; FF 80 FE 02
	sed		; F8
	ora #$C0.b		; 09 C0
	eor $E0.b,S		; 43 E0
	and [$C1.b]		; 27 C1
	lda $7880.w,Y		; B9 80 78
	ora ($FB.b,X)		; 01 FB
	and [$F3.b],Y		; 37 F3
	adc [$F2.b],Y		; 77 F2
	and ($F2.b,X)		; 21 F2
	cpy $EC.b		; C4 EC
	stx $CC.b		; 86 CC
	beq  87.b		; F0 57
	beq -73.b		; F0 B7
	cpy #$47.b		; C0 47
	lda ($8F.b),Y		; B1 8F
	bvs  14.b		; 70 0E
	jsr $C00E.w		; 20 0E C0
	ora $AF3D80.l,X		; 1F 80 3D AF
	dey		; 88
	phd		; 0B
	cpx #$0C.b		; E0 0C
	cpx #$56.b		; E0 56
	ldy $97.b,X		; B4 97
	adc [$0B.b],Y		; 77 0B
	xce		; FB
	eor $BD.b		; 45 BD
	eor ($AE.b)		; 52 AE
	bra 120.b		; 80 78
	brk $37.b		; 00 37
	brk $33.b		; 00 33
	bne  93.b		; D0 5D
	sta ($9F.b,S),Y		; 93 9F
	phk		; 4B
	ora $D24FC4.l		; 0F C4 4F D2
	eor [$51.b],Y		; 57 51
	lda $926F90.l		; AF 90 6F 92
	adc $6D92.w		; 6D 92 6D
	inc A		; 1A
	sbc $19.b		; E5 19
	inc $19.b		; E6 19
	inc $19.b		; E6 19
	inc $F1.b		; E6 F1
	eor ($B4.b,S),Y		; 53 B4
	sta ($B6.b),Y		; 91 B6
	sta ($F6.b)		; 92 F6
	sta ($7A.b)		; 92 7A
	inc A		; 1A
	tda		; 7B
	ora $197B.w,Y		; 19 7B 19
	tsa		; 3B
	ora $FEC1.w,Y		; 19 C1 FE
	bne  31.b		; D0 1F
	inx		; E8
	ora $F80774.l		; 0F 74 07 F8
	sta $7C.b,S		; 83 7C
	cmp ($3F.b,X)		; C1 3F
	sbc ($1E.b,X)		; E1 1E
	beq   3.b		; F0 03
	ora ($E0.b,X)		; 01 E0
	brk $F0.b		; 00 F0
	brk $F9.b		; 00 F9
	ora ($7F.b,X)		; 01 7F
	ora $BE.b,S		; 03 BE
	bra  94.b		; 80 5E
	rti		; 40

	and $0B0020.l		; 2F 20 00 0B
	brk $D3.b		; 00 D3
	brk $FF.b		; 00 FF
	sbc ($EE.b),Y		; F1 EE
	ora $02F3.w		; 0D F3 02
	ora $EEC1.w,X		; 1D C1 EE
	stz $72.b		; 64 72
	tsb $04.b		; 04 04
	tsb $F10C.w		; 0C 0C F1
	bra  -1.b		; 80 FF
	ora ($CF.b),Y		; 11 CF
	cpy $E202.w		; CC 02 E2
	sta $45F0.w		; 8D F0 45
	jsr ($F707.w,X)		; FC 07 F7
	inc A		; 1A
	ply		; 7A
	ldy $9EBC.w,X		; BC BC 9E
	ldx $DECE.w,Y		; BE CE DE
	sty $CC.b		; 84 CC
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	ora $FF.b,S		; 03 FF
	bpl  -1.b		; 10 FF
	clc		; 18
	sbc $C6FF8C.l,X		; FF 8C FF C6
	sbc $00FE80.l,X		; FF 80 FE 00
	cpy $0000.w		; CC 00 00
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $7F0F37.l		; 0F 37 0F 7F
	ora $FF1F6F.l,X		; 1F 6F 1F FF
	and $FE3FDF.l,X		; 3F DF 3F FE
	and $BC7FFE.l,X		; 3F FE 7F BC
	ora $203F18.l,X		; 1F 18 3F 20
	adc $407F50.l,X		; 7F 50 7F 40
	adc $017F20.l,X		; 7F 20 7F 01
	adc $437F01.l,X		; 7F 01 7F 43
	sbc $EDFEF6.l,X		; FF F6 FE ED
	jsr ($F8DB.w,X)		; FC DB F8
	sta [$B1.b],Y		; 97 B1
	eor $639F63.l		; 4F 63 9F 63
	sta $FFFF03.l,X		; 9F 03 FF FF
	ora #$FF.b		; 09 FF
	ora ($FF.b)		; 12 FF
	and $FE.b		; 25 FE
	ror A		; 6A
	sbc $FFB8.w,X		; FD B8 FF
	bvs  -1.b		; 70 FF
	stz $FF.b,X		; 74 FF
	bit $00.b		; 24 00
	ora $1D00.w,X		; 1D 00 1D
	brk $19.b		; 00 19
	brk $11.b		; 00 11
	brk $11.b		; 00 11
	brk $11.b		; 00 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0805.w		; 0D 05 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	iny		; C8
	sbc [$E8.b],Y		; F7 E8
	cmp [$E1.b],Y		; D7 E1
	inc $76E9.w,X		; FE E9 76
	rts		; 60

	sbc $41DF60.l,X		; FF 60 DF 41
	sbc $EB3741.l,X		; FF 41 37 EB
	plp		; 28
	xba		; EB
	plp		; 28
	sbc ($01.b,S),Y		; F3 01
	xce		; FB
	sta $00E8.w,Y		; 99 E8 00
	xba		; EB
	plb		; AB
	.db $62, $02, $62		; 62 02 62
	.db $62, $16, $08		; 62 16 08
	trb $39.b		; 14 39
	ora ($3A.b)		; 12 3A
	trb $3E.b		; 14 3E
	bpl  44.b		; 10 2C
	clc		; 18
	bit $00.b		; 24 00
	bit $1800.w,X		; 3C 00 18
	ora [$10.b],Y		; 17 10
	asl $00.b,X		; 16 00
	trb $00.b		; 14 00
	bpl   0.b		; 10 00
	bpl  16.b		; 10 10
	trb $1818.w		; 1C 18 18
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	beq   2.b		; F0 02
	rol $3F10.w,X		; 3E 10 3F
	bpl  60.b		; 10 3C
	clc		; 18
	bit $3408.w		; 2C 08 34
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	ora $040500.l		; 0F 00 05 04
	ora ($01.b),Y		; 11 01
	bpl   0.b		; 10 00
	clc		; 18
	bpl  24.b		; 10 18
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $82.b		; 00 82
	sta $0D30.w		; 8D 30 0D
	eor $29C3.w,Y		; 59 C3 29
	sbc $90.b,S		; E3 90
	ror $22.b,X		; 76 22
	trb $0B15.w		; 1C 15 0B
	eor $0B.b,X		; 55 0B
	asl $F2.b		; 06 F2
	stz $87.b,X		; 74 87
	lda $5987.w,Y		; B9 87 59
	eor [$28.b]		; 47 28
	and ($12.b,X)		; 21 12
	cmp ($04.b,S),Y		; D3 04
	sbc $05.b		; E5 05
	sbc $E9.b		; E5 E9
	ora [$3C.b]		; 07 3C
	ora $EB.b,S		; 03 EB
	bpl -35.b		; 10 DD
	bmi  -2.b		; 30 FE
	brk $EC.b		; 00 EC
	cpy #$B8.b		; C0 B8
	bra   0.b		; 80 00
	brk $05.b		; 00 05
	sbc ($02.b),Y		; F1 02
	cpy #$10.b		; C0 10
	tsb $30.b		; 04 30
	stx $00.b		; 86 00
	brk $80.b		; 00 80
	cld		; D8
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	ora $784EF1.l,X		; 1F F1 4E 78
	sbc [$3C.b]		; E7 3C
	sbc ($0C.b),Y		; F1 0C
	sta $1780.w,Y		; 99 80 17
	bvs   7.b		; 70 07
	trb $0700.w		; 1C 00 07
	rol $9720.w		; 2E 20 97
	bpl -53.b		; 10 CB
	php		; 08
	sbc [$04.b],Y		; F7 04
	adc $202F00.l,X		; 7F 00 2F 20
	phd		; 0B
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	rti		; 40

	ldy #$40.b		; A0 40
	ldy #$00.b		; A0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	rti		; 40

	rti		; 40

	rti		; 40

	brk $38.b		; 00 38
	brk $24.b		; 00 24
	brk $22.b		; 00 22
	brk $61.b		; 00 61
	brk $AF.b		; 00 AF
	ora [$7B.b]		; 07 7B
	ora $EF1877.l		; 0F 77 18 EF
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	trb $1E1C.w		; 1C 1C 1E
	asl $5053.w,X		; 1E 53 50
	sta [$84.b]		; 87 84
	sta $103988.l,X		; 9F 88 39 10
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $28.b		; 00 28
	brk $C8.b		; 00 C8
	brk $E8.b		; 00 E8
	cpy #$F8.b		; C0 F8
	cpx #$F8.b		; E0 F8
	beq  -1.b		; F0 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	bmi  48.b		; 30 30
	bne  16.b		; D0 10
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $00.b		; 00 00
	and $00.b,X		; 35 00
	ror $30.b,X		; 76 30
	adc $087B24.l,X		; 7F 24 7B 08
	adc [$10.b],Y		; 77 10
	adc $045D22.l		; 6F 22 5D 04
	tsa		; 3B
	brk $0B.b		; 00 0B
	bmi   9.b		; 30 09
	rol $02.b,X		; 36 02
	and $1B05.w		; 2D 05 1B
	asl A		; 0A
	rol $14.b,X		; 36 14
	rol $1D22.w		; 2E 22 1D
	ora $B0.b		; 05 B0
	sta $6564.w,Y		; 99 64 65
	clc		; 18
	txy		; 9B
	brk $E7.b		; 00 E7
	eor #$B6.b		; 49 B6
	lsr A		; 4A
	lda $4A.b,X		; B5 4A
	lda $4B.b,X		; B5 4B
	ldy $00.b,X		; B4 00
	inc $FE24.w,X		; FE 24 FE
	ora $417D.w,Y		; 19 7D 41
	eor $4949.w,Y		; 59 49 49
	phy		; 5A
	phy		; 5A
	phx		; DA
	phx		; DA
	xce		; FB
	rtl		; 6B

	xce		; FB
	asl $06F0.w		; 0E F0 06
	adc $B807.w,X		; 7D 07 B8
	sta $5E.b,S		; 83 5E
	cmp $2C.b,S		; C3 2C
	sbc ($17.b,X)		; E1 17
	sbc ($06.b),Y		; F1 06
	beq -15.b		; F0 F1
	brk $FD.b		; 00 FD
	tsb $F8.b		; 04 F8
	brk $7E.b		; 00 7E
	cop $BC.b		; 02 BC
	bra  95.b		; 80 5F
	eor ($2E.b,X)		; 41 2E
	jsr $909F.w		; 20 9F 90
	beq  24.b		; F0 18
	cpx #$08.b		; E0 08
	sei		; 78
	tsb $84B0.w		; 0C B0 84
	jmp $E23CC6.l		; 5C C6 3C E2
	asl $0CE3.w		; 0E E3 0C
	sbc ($E0.b,X)		; E1 E0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	jmp ($3804.w,X)		; 7C 04 38
	brk $1E.b		; 00 1E
	cop $5C.b		; 02 5C
	rti		; 40

	ldx $00A0.w,Y		; BE A0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$03.b]		; 07 03
	ora $1B07.w		; 0D 07 1B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$02.b]		; 07 02
	ora $070004.l		; 0F 04 00 07
	brk $01.b		; 00 01
	brk $3F.b		; 00 3F
	tsb $7FF3.w		; 0C F3 7F
	sta $E171FF.l,X		; 9F FF 71 E1
	dec $BFC0.w,X		; DE C0 BF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $60FF2D.l,X		; 3F 2D FF 60
	sbc $27FF8E.l,X		; FF 8E FF 27
	sbc $C00041.l,X		; FF 41 00 C0
	bra 112.b		; 80 70
	rti		; 40

	clv		; B8
	rts		; 60

	jmp.w [$EE70]		; DC 70 EE
	sed		; F8
	inc $FC.b,X		; F6 FC
	tda		; 7B
	inc $003D.w,X		; FE 3D 00
	brk $E0.b		; 00 E0
	ldy #$70.b		; A0 70
	bvc  -8.b		; 50 F8
	tay		; A8
	jsr ($FE14.w,X)		; FC 14 FE
	asl A		; 0A
	sbc $C2FF85.l,X		; FF 85 FF C2
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rti		; 40

	beq -128.b		; F0 80
	cpx #$80.b		; E0 80
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	jsr $40C0.w		; 20 C0 40
	cpy #$40.b		; C0 40
	bne  -8.b		; D0 F8
	dey		; 88
	jsr ($FE20.w,X)		; FC 20 FE
	stz $046B.w		; 9C 6B 04
	tsa		; 3B
	bpl 119.b		; 10 77
	bmi -26.b		; 30 E6
	bvs -52.b		; 70 CC
	bne  28.b		; D0 1C
	inx		; E8
	asl $03A0.w		; 0E A0 03
	asl $0614.w,X		; 1E 14 06
	tsb $28.b		; 04 28
	jsr $4058.w		; 20 58 40
	clv		; B8
	dey		; 88
	phd		; 0B
	trb $0817.w		; 1C 17 08
	ora $330726.l		; 0F 26 07 33
	ora $39.b,S		; 03 39
	and ($78.b),Y		; 31 78
	sec		; 38
	jmp ($7D3C.w,X)		; 7C 3C 7D
	brk $3E.b		; 00 3E
	brk $1D.b		; 00 1D
	brk $1E.b		; 00 1E
	brk $0F.b		; 00 0F
	bpl   7.b		; 10 07
	sec		; 38
	ora [$3C.b]		; 07 3C
	ora $3C.b,S		; 03 3C
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$80.b		; C0 80
	rts		; 60

	rti		; 40

	bcs  32.b		; B0 20
	cld		; D8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$40.b		; C0 40
	rts		; 60

	jsr $E810.w		; 20 10 E8
	bcc 104.b		; 90 68
	bra 112.b		; 80 70
	bra 120.b		; 80 78
	bmi  -4.b		; 30 FC
	pha		; 48
	cpy $8634.w		; CC 34 86
	sec		; 38
	.db $82, $70, $10		; 82 70 10
	bcs -112.b		; B0 90
	ldy #$80.b		; A0 80
	bcc -112.b		; 90 90
	php		; 08
	php		; 08
	ldy $84.b,X		; B4 84
	sed		; F8
	bra 126.b		; 80 7E
	cop $02.b		; 02 02
	rol $3E00.w,X		; 3E 00 3E
	ora $3B.b		; 05 3B
	bpl  47.b		; 10 2F
	brk $1B.b		; 00 1B
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora $04.b,X		; 15 04
	ora ($02.b,S),Y		; 13 02
	asl $06.b,X		; 16 06
	ora $0011.w,Y		; 19 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $19.b		; 00 19
	brk $39.b		; 00 39
	bpl  -2.b		; 10 FE
	sec		; 38
	jsr ($FCFC.w,X)		; FC FC FC
	inc $7EFC.w,X		; FE FC 7E
	jmp ($003E.w,X)		; 7C 3E 00
	sbc [$00.b]		; E7 00
	sbc [$00.b]		; E7 00
	dec $10.b,X		; D6 10
	and $FFF8.w,Y		; 39 F8 FF
	sei		; 78
	sbc $18FF78.l,X		; FF 78 FF 18
	sbc $000300.l,X		; FF 00 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	inc $FF1F.w,X		; FE 1F FF
	ora $1C0337.l		; 0F 37 03 1C
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $203FC1.l,X		; FF C1 3F 20
	ora $070718.l,X		; 1F 18 07 07
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	adc [$10.b],Y		; 77 10
	and $013F00.l		; 2F 00 3F 01
	asl $0F00.w,X		; 1E 00 0F
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	tsa		; 3B
	asl A		; 0A
	ora ($10.b,S),Y		; 13 10
	ora [$00.b]		; 07 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cop $00.b		; 02 00
	phd		; 0B
	pea $7689.w		; F4 89 76
	bit #$76.b		; 89 76
	dey		; 88
	adc [$18.b],Y		; 77 18
	sbc [$80.b]		; E7 80
	sta $1E8784.l,X		; 9F 84 87 1E
	sta $BB.b,S		; 83 BB
	pld		; 2B
	tyx		; BB
	lda #$BB.b		; A9 BB
	bit #$BB.b		; 89 BB
	dey		; 88
	tas		; 1B
	clc		; 18
	rts		; 60

	brk $7A.b		; 00 7A
	cop $FD.b		; 02 FD
	sta ($07.b,X)		; 81 07
	sed		; F8
	ora $7C.b,S		; 03 7C
	asl A		; 0A
	sec		; 38
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $242748.l		; 4F 48 27 24
	ora [$10.b],Y		; 17 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $80E1.w		; 8C E1 80
	sbc ($00.b)		; F2 00
	sed		; F8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0C00.w,X		; 1E 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora [$1F.b],Y		; 17 1F
	rol $3D1F.w		; 2E 1F 3D
	and $BF7F5B.l,X		; 3F 5B 7F BF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $081F7F.l,X		; FF 7F 1F 08
	ora $023F11.l,X		; 1F 11 3F 02
	and $C0FF24.l,X		; 3F 24 FF C0
	sbc $00FF80.l,X		; FF 80 FF 00
	sbc $43BC80.l,X		; FF 80 BC 43
	inc $FD78.w,X		; FE 78 FD
	sbc $FDFD.w,X		; FD FD FD
	sbc $FEFD.w,X		; FD FD FE
	inc $FFFF.w,X		; FE FF FF
	sbc $BCFFFE.l,X		; FF FE FF BC
	inc $FC87.w,X		; FE 87 FC
	ora $FD.b,S		; 03 FD
	ora $FD.b,S		; 03 FD
	ora $FE.b,S		; 03 FE
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	ora ($7F.b,X)		; 01 7F
	stz $0F3F.w,X		; 9E 3F 0F
	ora $F1F307.l		; 0F 07 F3 F1
	jsr ($EFFC.w,X)		; FC FC EF
	sbc $F30F07.l,X		; FF 07 0F F3
	sbc [$FF.b],Y		; F7 FF
	sbc ($3F.b,X)		; E1 3F
	beq  15.b		; F0 0F
	sed		; F8
	sta $FE.b,S		; 83 FE
	cpy $06FF.w		; CC FF 06
	sbc $F1FF03.l,X		; FF 03 FF F1
	ora $C0E080.l		; 0F 80 E0 C0
	bcs -64.b		; B0 C0
	beq -32.b		; F0 E0
	cld		; D8
	cpx #$D8.b		; E0 D8
	bvs  72.b		; 70 48
	bcs -115.b		; B0 8D
	bne -50.b		; D0 CE
	cpy #$00.b		; C0 00
	cpx #$60.b		; E0 60
	cpx #$00.b		; E0 00
	beq  48.b		; F0 30
	beq  32.b		; F0 20
	sei		; 78
	clv		; B8
	sec		; 38
	sed		; F8
	sta $07F9.w,Y		; 99 F9 07
	jsr ($7C87.w,X)		; FC 87 7C
	cmp $BC.b,S		; C3 BC
	sbc $5C.b,S		; E3 5C
	rts		; 60

	stz $FE02.w		; 9C 02 FE
	ora ($FD.b,X)		; 01 FD
	cop $7A.b		; 02 7A
	sbc ($70.b,S),Y		; F3 70
	sbc ($B0.b,S),Y		; F3 B0
	sbc [$54.b],Y		; F7 54
	sbc [$A4.b],Y		; F7 A4
	xce		; FB
	pla		; 68
	sed		; F8
	bit #$79.b		; 89 79
	tda		; 7B
	inc A		; 1A
	ora $06F808.l,X		; 1F 08 F8 06
	sbc [$09.b],Y		; F7 09
	inx		; E8
	asl $096D.w		; 0E 6D 09
	phd		; 0B
	ora [$0B.b]		; 07 0B
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	cpx #$27.b		; E0 27
	cpx $EF.b		; E4 EF
	pla		; 68
	adc $081F04.l,X		; 7F 04 1F 08
	ora $030F01.l,X		; 1F 01 0F 03
	ora $050F02.l		; 0F 02 0F 05
	lda ($02.b),Y		; B1 02
	eor $EE01.w,Y		; 59 01 EE
	brk $E3.b		; 00 E3
	brk $F3.b		; 00 F3
	bra  59.b		; 80 3B
	phb		; 8B
	tsb $CF.b		; 04 CF
	.db $82, $5E, $52		; 82 5E 52
	rol $D1A8.w		; 2E A8 D1
	ora ($FD.b),Y		; 11 FD
	jsr $E1ED.w		; 20 ED E1
	bit $70.b,X		; 34 70
	brk $7B.b		; 00 7B
	cop $B0.b		; 02 B0
	trb $38F3.w		; 1C F3 38
	inc $30.b		; E6 30
	cpy $D800.w		; CC 00 D8
	rti		; 40

	bcs   0.b		; B0 00
	jsr $0000.w		; 20 00 00
	rti		; 40

	brk $2E.b		; 00 2E
	jsl $B8049C.l		; 22 9C 04 B8
	php		; 08
	bcs -112.b		; B0 90
	jsr $0060.w		; 20 60 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	stx $00.b		; 86 00
	eor $3C00.w,Y		; 59 00 3C
	brk $1F.b		; 00 1F
	brk $7F.b		; 00 7F
	asl $3FFF.w		; 0E FF 3F
	sbc $00FFC5.l,X		; FF C5 FF 00
	brk $86.b		; 00 86
	stx $C3.b		; 86 C3
	cmp $E0.b,S		; C3 E0
	cpx #$9F.b		; E0 9F
	sta ($7F.b),Y		; 91 7F
	rti		; 40

	sbc $00FD80.l,X		; FF 80 FD 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	cpy #$40.b		; C0 40
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq -128.b		; F0 80
	sed		; F8
	cpx #$FC.b		; E0 FC
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	rts		; 60

	brk $70.b		; 00 70
	brk $70.b		; 00 70
	bra -104.b		; 80 98
	cpx #$24.b		; E0 24
	sed		; F8
	asl $22.b		; 06 22
	and $601F42.l,X		; 3F 42 1F 60
	ora $E39DF2.l,X		; 1F F2 9D E3
	sta $8E62.w		; 8D 62 8E
	rts		; 60

	stx $9F00.w		; 8E 00 9F
	cmp [$00.b]		; C7 00
	inc $14.b,X		; F6 14
	pea $6614.w		; F4 14 66
	tsb $76.b		; 04 76
	tsb $F1.b		; 04 F1
	bra -15.b		; 80 F1
	bra 113.b		; 80 71
	ora ($44.b),Y		; 11 44
	sbc $71FF89.l,X		; FF 89 FF 71
	stx $4496.w		; 8E 96 44
	adc $43B4C4.l,X		; 7F C4 B4 43
	jsr ($6406.w,X)		; FC 06 64
	ora [$76.b]		; 07 76
	brk $CD.b		; 00 CD
	brk $80.b		; 00 80
	cop $08.b		; 02 08
	adc ($48.b,X)		; 61 48
	eor ($98.b)		; 52 98
	rti		; 40

	sed		; F8
	brk $F8.b		; 00 F8
	clc		; 18
	and $F907CF.l,X		; 3F CF 07 F9
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $767FB0.l,X		; FF B0 7F 76
	ora [$04.b]		; 07 04
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BF7F7F.l,X		; FF 7F 7F BF
	and $FC03C7.l,X		; 3F C7 03 FC
	ora [$7B.b]		; 07 7B
	ora $3D.b,S		; 03 3D
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $40FF80.l,X		; FF 80 FF 40
	sbc $437FB8.l,X		; FF B8 7F 43
	and $1A1F24.l,X		; 3F 24 1F 1A
	sta $9C73.w,Y		; 99 73 9C
	sbc #$CE.b		; E9 CE
	lda $F5CE.w,X		; BD CE F5
	inc $D9.b		; E6 D9
.ACCU 8
.INDEX 8
	sep #$FD		; E2 FD
	beq -17.b		; F0 EF
	beq  -1.b		; F0 FF
	sed		; F8
	cmp $FE37FC.l		; CF FC 37 FE
	.db $62, $FE, $1A		; 62 FE 1A
	sbc $0AFF36.l,X		; FF 36 FF 0A
	sbc $07FF1C.l,X		; FF 1C FF 07
	bra  -4.b		; 80 FC
	bvs  -1.b		; 70 FF
	bra  -1.b		; 80 FF
	ora ($FD.b,X)		; 01 FD
	ora ($FD.b),Y		; 11 FD
	php		; 08
	cmp $18C710.l		; CF 10 C7 18
	cmp [$8B.b]		; C7 8B
	phb		; 8B
	bvs   0.b		; 70 00
	sed		; F8
	brk $C3.b		; 00 C3
	cop $2B.b		; 02 2B
	rol A		; 2A
	adc ($40.b),Y		; 71 40
	adc $BD45.w,X		; 7D 45 BD
	sta $00.b		; 85 00
	php		; 08
	brk $0F.b		; 00 0F
	ora ($06.b,X)		; 01 06
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$09.b		; 09 09
	ora [$05.b]		; 07 05
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs -17.b		; 70 EF
	bvs -81.b		; 70 AF
	bmi -17.b		; 30 EF
	bmi  77.b		; 30 4D
	bpl 104.b		; 10 68
	bpl  40.b		; 10 28
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	adc $7918.w,Y		; 79 18 79
	eor $1878.w,Y		; 59 78 18
	sec		; 38
	sec		; 38
	sec		; 38
	clc		; 18
	clc		; 18
	clc		; 18
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $DF.b		; 00 DF
	brk $DF.b		; 00 DF
	brk $DF.b		; 00 DF
	brk $CF.b		; 00 CF
	brk $C9.b		; 00 C9
	brk $41.b		; 00 41
	brk $40.b		; 00 40
	sta ($81.b,X)		; 81 81
	sta ($80.b,X)		; 81 80
	sta $82.b,S		; 83 82
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $C36B.w		; 8D 6B C3
	and [$4B.b],Y		; 37 4B
	lda [$4B.b],Y		; B7 4B
	lda [$25.b],Y		; B7 25
	stp		; DB
	bit $DB.b		; 24 DB
	.db $82, $FD, $C2		; 82 FD C2
	adc $998A.w,X		; 7D 8A 99
	cmp ($CB.b,X)		; C1 CB
	stp		; DB
	phk		; 4B
	cmp $EC4B.w,Y		; D9 4B EC
	and $AC.b		; 25 AC
	ldy $4A.b		; A4 4A
	.db $42, $AA		; 42 AA
	jsl L808080.l		; 22 80 80 80
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	beq  80.b		; F0 50
	sei		; 78
	trb $003C.w		; 1C 3C 00
	cpy #$00.b		; C0 00
	cpy #$80.b		; C0 80
	cpx #$80.b		; E0 80
	cpx #$C0.b		; E0 C0
	beq  64.b		; F0 40
	beq   0.b		; F0 00
	jsr ($7E1C.w,X)		; FC 1C 7E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($0F.b,X)		; 01 0F
	ora [$3E.b]		; 07 3E
	asl $0079.w,X		; 1E 79 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	ora ($3F.b),Y		; 11 3F
	rol $00.b		; 26 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	asl $EF1F.w		; 0E 1F EF
	sbc $98E77F.l,X		; FF 7F E7 98
	lda $7EFF5F.l,X		; BF 5F FF 7E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$05.b]		; 07 05
	adc $80FF50.l,X		; 7F 50 FF 80
	sbc $A0FF67.l,X		; FF 67 FF A0
	sbc $240081.l,X		; FF 81 00 24
	brk $12.b		; 00 12
	clc		; 18
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $8AFFED.l,X		; FF ED FF 8A
	sbc $D8FF22.l,X		; FF 22 FF D8
	cld		; D8
	cpx $3CEC.w		; EC EC 3C
	brk $FF.b		; 00 FF
	clc		; 18
	sbc $08FF64.l,X		; FF 64 FF 08
	sbc $C0F700.l		; EF 00 F7 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	rts		; 60

	beq  32.b		; F0 20
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $B0.b		; 00 B0
	bpl   0.b		; 10 00
	ora [$1F.b]		; 07 1F
	sbc [$FF.b]		; E7 FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $F8F8FF.l,X		; FF FF F8 F8
	cmp [$C0.b]		; C7 C0
	and $7F0203.l,X		; 3F 03 02 7F
	cli		; 58
	sbc $00FF80.l,X		; FF 80 FF 00
	sbc $07FF00.l,X		; FF 00 FF 07
	sbc $C0FF38.l,X		; FF 38 FF C0
	inc $FE3D.w,X		; FE 3D FE
	sbc ($FC.b),Y		; F1 FC
	xce		; FB
	sed		; F8
	sbc [$E0.b]		; E7 E0
	ora $00FF00.l,X		; 1F 00 FF 00
	sbc ($00.b,S),Y		; F3 00
	sbc $C3FF.w,Y		; F9 FF C3
	inc $FE0E.w,X		; FE 0E FE
	tsb $FF.b		; 04 FF
	ora $E1FF.w,Y		; 19 FF E1
	inc $F002.w,X		; FE 02 F0
	tsb $4EC8.w		; 0C C8 4E
	brk $CC.b		; 00 CC
	jsr $600C.w		; 20 0C 60
	tsb $0C70.w		; 0C 70 0C
	bvs  12.b		; 70 0C
	bvs   8.b		; 70 08
	bvs   8.b		; 70 08
	bvs   8.b		; 70 08
	sec		; 38
	php		; 08
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $1B1E.w		; 0D 1E 1B
	bit $7C38.w,X		; 3C 38 7C
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $041F02.l		; 0F 02 1F 04
	and $073F04.l,X		; 3F 04 3F 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $5E.b		; 00 5E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $4420.w		; 20 20 44
	tyx		; BB
	dey		; 88
	adc [$08.b],Y		; 77 08
	sbc [$40.b],Y		; F7 40
	cmp $BF83B8.l,X		; DF B8 83 BF
	sta $5F.b,S		; 83 5F
	cpy #$2F.b		; C0 2F
	cpx #$DD.b		; E0 DD
	mvp $88,$BB		; 44 BB 88
	phd		; 0B
	php		; 08
	lda $80.b,S		; A3 80
	ror $7C02.w,X		; 7E 02 7C
	brk $BF.b		; 00 BF
	bra  95.b		; 80 5F
	rti		; 40

	ora [$70.b],Y		; 17 70
	ora $3C.b		; 05 3C
	sec		; 38
	sbc $FF00FC.l,X		; FF FC 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	sbc $0B202F.l,X		; FF 2F 20 0B
	php		; 08
	cmp [$C7.b]		; C7 C7
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	cpy #$C0.b		; C0 C0
	brk $7F.b		; 00 7F
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $FF.b		; 00 FF
	cmp $1F.b		; C5 1F
	sty $1E.b		; 84 1E
	beq  -1.b		; F0 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	pea $F510.w		; F4 10 F5
	bpl   5.b		; 10 05
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $1B.b,S		; C3 1B
	sed		; F8
	sta $007F80.l,X		; 9F 80 7F 00
	trb $00FC.w		; 1C FC 00
	sbc $000000.l,X		; FF 00 00 00
	brk $01.b		; 00 01
	ora ($67.b,X)		; 01 67
	rts		; 60

	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $E0.b,S		; E3 E0
	ora $03.b,S		; 03 03
	sbc ($3E.b,X)		; E1 3E
	sbc ($1E.b),Y		; F1 1E
	and ($0E.b),Y		; 31 0E
	bne -49.b		; D0 CF
	beq  12.b		; F0 0C
	beq  12.b		; F0 0C
	cpx #$3C.b		; E0 3C
	cpy #$FC.b		; C0 FC
	cmp ($11.b,S),Y		; D3 11
	sbc $01.b,S		; E3 01
	sbc $3809.w,Y		; F9 09 38
	php		; 08
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	bne  16.b		; D0 10
	plp		; 28
	plp		; 28
	asl $0E9E.w,X		; 1E 9E 0E
	stx $8000.w		; 8E 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0E3F.w		; 0E 3F 0E
	ora $000E00.l,X		; 1F 00 0E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $31.b		; 00 31
	ror $5D63.w		; 6E 63 5D
	eor [$BA.b]		; 47 BA
	asl $FD.b		; 06 FD
	tsb $08FB.w		; 0C FB 08
	inc $10.b,X		; F6 10
	adc $7B00.w		; 6D 00 7B
	adc $327351.l,X		; 7F 51 73 32
	adc [$65.b]		; 67 65
	eor $464E4B.l		; 4F 4B 4E 46
	trb $181C.w		; 1C 1C 18
	clc		; 18
	ora ($01.b),Y		; 11 01
	inc $E1F1.w,X		; FE F1 E1
	stz $7987.w,X		; 9E 87 79
	ora $6E1FF7.l		; 0F F7 1F 6E
	rol $7CDD.w,X		; 3E DD 7C
	tyx		; BB
	sbc $FF76.w,Y		; F9 76 FF
	asl $61FF.w		; 0E FF 61
	sbc $889FBE.l,X		; FF BE 9F 88
	and $237F11.l,X		; 3F 11 7F 23
	sbc $8DFF46.l,X		; FF 46 FF 8D
	bit $FF.b		; 24 FF
	lsr $F9.b		; 46 F9
	ora $1EE4.w,Y		; 19 E4 1E
	clc		; 18
	bit $BF82.w,X		; 3C 82 BF
	rti		; 40

	ora $0EC0.w,X		; 1D C0 0E
	sbc ($77.b,X)		; E1 77
	brk $60.b		; 00 60
	brk $80.b		; 00 80
	asl $E9.b		; 06 E9
	php		; 08
	adc $3F02.w,Y		; 79 02 3F
	brk $3F.b		; 00 3F
	cop $1E.b		; 02 1E
	brk $20.b		; 00 20
	sed		; F8
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $30.b		; 00 30
	rti		; 40

	jsr $4080.w		; 20 80 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	bcs   0.b		; B0 00
	bvs   0.b		; 70 00
	ldy #$60.b		; A0 60
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	sbc [$F0.b],Y		; F7 F0
	lsr $BCC1.w		; 4E C1 BC
	.db $82, $7F, $29		; 82 7F 29
	cmp $9B6B.w,X		; DD 6B 9B
	cmp ($3B.b,X)		; C1 3B
	cpy #$3D.b		; C0 3D
	inc $FB08.w,X		; FE 08 FB
	lda ($F7.b)		; B2 F7
	mvp $84,$E4		; 44 E4 84
	inx		; E8
	and $E9.b,S		; 23 E9
	adc [$F0.b]		; 67 F0
	cmp [$F8.b]		; C7 F8
	wai		; CB
	cpx #$88.b		; E0 88
	cmp ($1A.b,S),Y		; D3 1A
	.db $82, $38, $05		; 82 38 05
	and $CF.b,X		; 35 CF
	dec $ECEF.w		; CE EF EC
	sbc [$F4.b],Y		; F7 F4
	xce		; FB
	sed		; F8
	sei		; 78
	ora $F00FE8.l		; 0F E8 0F F0
	and [$00.b],Y		; 37 00
	cmp $C4FE02.l		; CF 02 FE C4
	sbc $FCE0.w,X		; FD E0 FC
	bvs  -3.b		; 70 FD
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $38.b		; 00 38
	brk $29.b		; 00 29
	ora ($2B.b,X)		; 01 2B
	brk $2F.b		; 00 2F
	tsb $3B.b		; 04 3B
	asl $0171.w		; 0E 71 01
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	ora [$16.b]		; 07 16
	asl $15.b,X		; 16 15
	trb $13.b		; 14 13
	ora ($0F.b)		; 12 0F
	asl $2F3F.w		; 0E 3F 2F
	clc		; 18
	plx		; FA
	rti		; 40

	bmi -16.b		; 30 F0
	dey		; 88
	pea $9808.w		; F4 08 98
	tsb $0E.b		; 04 0E
	brk $9E.b		; 00 9E
	php		; 08
	sbc $18.b,X		; F5 18
	mvp $60,$00		; 44 00 60
	cpy #$30.b		; C0 30
	bcs   0.b		; B0 00
	rts		; 60

	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	php		; 08
	.db $62, $18, $83		; 62 18 83
	clc		; 18
	.db $62, $18, $62		; 62 18 62
	trb $1C26.w		; 1C 26 1C
	bit $18.b		; 24 18
	bit $08.b		; 24 08
	bit $10.b		; 24 10
	bit $08.b,X		; 34 08
	bit $223E.w,X		; 3C 3E 22
	bit $3820.w,X		; 3C 20 38
	jsr $0018.w		; 20 18 00
	trb $1C04.w		; 1C 04 1C
	tsb $0C.b		; 04 0C
	tsb $04.b		; 04 04
	tsb $08.b		; 04 08
	bit $3C00.w,X		; 3C 00 3C
	clc		; 18
	bit $7418.w,X		; 3C 18 74
	plp		; 28
	stz $20.b		; 64 20
	cpx $20.b		; E4 20
	beq   0.b		; F0 00
	beq  24.b		; F0 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $6C.b		; 00 6C
	brk $6C.b		; 00 6C
	brk $10.b		; 00 10
	ply		; 7A
	php		; 08
	rol $1E0C.w,X		; 3E 0C 1E
	asl $0E.b		; 06 0E
	cop $0F.b		; 02 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	bit $00.b,X		; 34 00
	clc		; 18
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	adc [$03.b]		; 67 03
	adc $4B07.w		; 6D 07 4B
	ora [$5B.b]		; 07 5B
	ora $160F57.l		; 0F 57 0F 16
	ora $1E0716.l		; 0F 16 07 1E
	and [$24.b]		; 27 24
	ora [$02.b]		; 07 02
	ora $040F0C.l		; 0F 0C 0F 04
	ora $090F08.l		; 0F 08 0F 09
	ora $010F09.l		; 0F 09 0F 01
	sbc $DE.b,S		; E3 DE
	cmp $39CEB4.l		; CF B4 CE 39
	stz $9C79.w,X		; 9E 79 9C
	adc ($18.b,S),Y		; 73 18
	sbc [$10.b],Y		; F7 10
	sbc $FFEF10.l		; EF 10 EF FF
	and ($FF.b),Y		; 31 FF
	tda		; 7B
	sbc $E6FFE6.l,X		; FF E6 FF E6
	sbc $CADEED.l,X		; FF ED DE CA
	jmp.w [$DCD4]		; DC D4 DC
	jmp.w [$FC00]		; DC 00 FC
	cop $FF.b		; 02 FF
	ora [$FF.b]		; 07 FF
	ora $FF.b,S		; 03 FF
	clc		; 18
	sbc $00FE31.l,X		; FF 31 FE 00
	sbc $FCDD02.l,X		; FF 02 DD FC
	ora $F738FB.l,X		; 1F FB 38 F7
	bvs -29.b		; 70 E3
	cpx #$5C.b		; E0 5C
	rti		; 40

	and $1601.w,Y		; 39 01 16
	tsb $0E.b		; 04 0E
	asl A		; 0A
	sei		; 78
	sed		; F8
	ora $CF87BF.l,X		; 1F BF 87 CF
	ora $83.b,S		; 03 83
	jsr $0518.w		; 20 18 05
	cmp $EA12.w		; CD 12 EA
	and ($DD.b,X)		; 21 DD
	bmi  -1.b		; 30 FF
	sta $3F837F.l		; 8F 7F 83 3F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	adc ($17.b)		; 72 17
	sbc #$23.b		; E9 23
	eor ($20.b),Y		; 51 20
	sep #$C0		; E2 C0
	pea $D8C0.w		; F4 C0 D8
	cpy #$48.b		; C0 48
	brk $F8.b		; 00 F8
	bra -32.b		; 80 E0
	bne  96.b		; D0 60
	clc		; 18
	jsr $C08E.w		; 20 8E C0
	jmp.w [$E8C0]		; DC C0 E8
	brk $F0.b		; 00 F0
	brk $B0.b		; 00 B0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bpl -128.b		; 10 80
	tsb $3E61.w		; 0C 61 3E
	adc $1C.b,S		; 63 1C
	eor $38.b,S		; 43 38
	eor $38.b,S		; 43 38
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	dec $7C.b		; C6 7C
	dec $78.b		; C6 78
	cpy $3F.b		; C4 3F
	and ($1D.b,X)		; 21 1D
	ora ($3E.b,X)		; 01 3E
	cop $3E.b		; 02 3E
	cop $7C.b		; 02 7C
	rti		; 40

	sei		; 78
	rti		; 40

	sec		; 38
	brk $3C.b		; 00 3C
	tsb $0E.b		; 04 0E
	and ($1E.b,X)		; 21 1E
	and ($1E.b),Y		; 31 1E
	and ($1E.b),Y		; 31 1E
	and ($1E.b),Y		; 31 1E
	and ($1C.b),Y		; 31 1C
	adc ($0C.b),Y		; 71 0C
	adc ($3A.b,X)		; 61 3A
	adc $3F.b,S		; 63 3F
	and ($0E.b,X)		; 21 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $2E.b		; 00 2E
	jsr $202E.w		; 20 2E 20
	rol $5C20.w,X		; 3E 20 5C
	rti		; 40

	cop $1E.b		; 02 1E
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	cop $06.b		; 02 06
	ora $04.b		; 05 04
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora $04.b		; 05 04
	bvs  12.b		; 70 0C
	clv		; B8
	stx $2C.b		; 86 2C
	sbc $1C.b,S		; E3 1C
	sbc ($0C.b),Y		; F1 0C
	sbc ($BC.b,X)		; E1 BC
	bra 116.b		; 80 74
	asl $E8.b		; 06 E8
	tsb $08F8.w		; 0C F8 08
	jmp ($5E04.w,X)		; 7C 04 5E
	.db $42, $2E		; 42 2E
	jsr $E0FE.w		; 20 FE E0
	ror $F800.w,X		; 7E 00 F8
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $000800.l		; 0F 00 08 00
	jmp ($3F00.w,X)		; 7C 00 3F
	ora ($1E.b,X)		; 01 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	brk $F7.b		; 00 F7
	brk $84.b		; 00 84
	brk $82.b		; 00 82
	ora $DF.b,S		; 03 DF
	ora $FF3F7F.l,X		; 1F 7F 3F FF
	ora $91FF.w,X		; 1D FF 91
	adc $7B0000.l,X		; 7F 00 00 7B
	tda		; 7B
	adc $277D.w,X		; 7D 7D 27
	jsr $839F.w		; 20 9F 83
	and $417D0C.l,X		; 3F 0C 7D 41
	sbc $00C0.w,X		; FD C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$03.b]		; 07 03
	ora $0000.w,X		; 1D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $00000A.l		; 0F 0A 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	trb $FFE3.w		; 1C E3 FF
	adc $00FFFF.l,X		; 7F FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	jmp $FF80FF.l		; 5C FF 80 FF
	brk $04.b		; 00 04
	sbc $007F20.l,X		; FF 20 7F 00
	and $193F0C.l,X		; 3F 0C 3F 19
	rol $FE39.w,X		; 3E 39 FE
	bmi 127.b		; 30 7F
	cop $3D.b		; 02 3D
	ror $3400.w		; 6E 00 34
	brk $19.b		; 00 19
	brk $0D.b		; 00 0D
	brk $1D.b		; 00 1D
	ora ($3B.b,X)		; 01 3B
	ora ($3A.b,X)		; 01 3A
	brk $16.b		; 00 16
	cop $29.b		; 02 29
	cmp [$20.b],Y		; D7 20
	cmp $24DB24.l,X		; DF 24 DB 24
	stp		; DB
	jsl $DD22DD.l		; 22 DD 22 DD
	jsl $FD02DD.l		; 22 DD 02 FD
	pld		; 2B
	plp		; 28
	plb		; AB
	jsr $246D.w		; 20 6D 24
	adc $6E24.w		; 6D 24 6E
	jsl $FE22FE.l		; 22 FE 22 FE
	jsl $4F03DF.l		; 22 DF 03 4F
	jsr $90A7.w		; 20 A7 90
	bit $DC.b		; 24 DC
	cpx #$011F.w		; E0 1F 01
	tsa		; 3B
	ora $F3.b,S		; 03 F3
	ora $F1.b,S		; 03 F1
	ora $F0.b		; 05 F0
	eor $E02FC0.l,X		; 5F C0 2F E0
	pld		; 2B
	inx		; E8
	jsr $38E0.w		; 20 E0 38
	sbc $F1FFF1.l,X		; FF F1 FF F1
	sbc $D18F80.l,X		; FF 80 8F D1
	ora [$D0.b],Y		; 17 D0
	ora [$CC.b],Y		; 17 CC
	xba		; EB
	asl $FF19.w,X		; 1E 19 FF
	sed		; F8
	sbc $F8F0.w,X		; FD F0 F8
	beq  -8.b		; F0 F8
	bpl -60.b		; 10 C4
	sec		; 38
	cpy $38.b		; C4 38
	asl A		; 0A
	sec		; 38
	ora $78F8.w,Y		; 19 F8 78
	plx		; FA
	beq -13.b		; F0 F3
	beq  -9.b		; F0 F7
	brk $F7.b		; 00 F7
	ora [$3B.b]		; 07 3B
	ora $6F1F77.l		; 0F 77 1F 6F
	ora $CF3F6F.l,X		; 1F 6F 3F CF
	and $DF3FDF.l,X		; 3F DF 3F DF
	and $141FDF.l,X		; 3F DF 1F 14
	and $303F28.l,X		; 3F 28 3F 30
	adc $707F50.l,X		; 7F 50 7F 70
	adc $607F60.l,X		; 7F 60 7F 60
	adc $F0FF60.l,X		; 7F 60 FF F0
	inc $FCE1.w,X		; FE E1 FC
	cmp $F8.b,S		; C3 F8
	stx $F3.b		; 86 F3
	phd		; 0B
	sbc $1B.b,S		; E3 1B
	sbc $1B.b,S		; E3 1B
	sbc ($1D.b,X)		; E1 1D
	sbc $1EFF0F.l,X		; FF 0F FF 1E
	sbc $79FE3C.l,X		; FF 3C FE 79
	sed		; F8
	sbc [$FB.b],Y		; F7 FB
	sbc [$FB.b]		; E7 FB
	sbc [$FD.b]		; E7 FD
	sbc $00.b,S		; E3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -64.b		; F0 C0
	and $00E7F8.l,X		; 3F F8 E7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$CCFC.w		; C0 FC CC
	sbc $FEFF19.l,X		; FF 19 FF FE
	sbc $F30FFF.l,X		; FF FF 0F F3
	ora ($FE.b,X)		; 01 FE
	sbc $07F800.l,X		; FF 00 F8 07
	cpy #$0D33.w		; C0 33 0D
	cpx $01FF.w		; EC FF 01
	sbc $CCFF00.l,X		; FF 00 FF CC
	sbc $FFFF31.l,X		; FF 31 FF FF
	sbc $CCF0F8.l,X		; FF F8 F0 CC
	sbc ($1F.b,X)		; E1 1F
	ora ($03.b,X)		; 01 03
	cop $07.b		; 02 07
	ora ($0F.b,X)		; 01 0F
	brk $3B.b		; 00 3B
	asl $79.b		; 06 79
	cop $7B.b		; 02 7B
	tsb $7E.b		; 04 7E
	brk $7E.b		; 00 7E
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora $00.b		; 05 00
	rol $00.b,X		; 36 00
	trb $10.b		; 14 10
	bpl  16.b		; 10 10
	mvn $40,$54		; 54 54 40
	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	ora $0C.b		; 05 0C
	ora $08.b,S		; 03 08
	phd		; 0B
	clc		; 18
	ora $311618.l		; 0F 18 16 31
	trb $0833.w		; 1C 33 08
	ror $08.b		; 66 08
	cpy $0003.w		; CC 03 00
	ora $000708.l		; 0F 08 07 00
	ora [$10.b],Y		; 17 10
	ora $020E01.l		; 0F 01 0E 02
	bit $7024.w,X		; 3C 24 70
	rti		; 40

	bne  24.b		; D0 18
	cpx #$C030.w		; E0 30 C0
	rts		; 60

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	sed		; F8
	sta $FFFE70.l		; 8F 70 FE FF
	jsr ($F8F3.w,X)		; FC F3 F8
	ora [$80.b]		; 07 80
	adc $66FC05.l,X		; 7F 05 FC 66
	cpx #$878F.w		; E0 8F 87
	sbc $00FF8F.l,X		; FF 8F FF 00
	sbc $F9FF0C.l,X		; FF 0C FF F9
	sed		; F8
	dey		; 88
	cpy #$9E43.w		; C0 43 9E
	sta ($84.b,X)		; 81 84
	adc $00FF04.l,X		; 7F 04 FF 00
	sbc $03E103.l		; EF 03 E1 03
	sbc ($0F.b,S),Y		; F3 0F
	sed		; F8
	ora $B88378.l		; 0F 78 83 B8
	inc $E6B0.w,X		; FE B0 E6
	brk $D0.b		; 00 D0
	rti		; 40

	cmp $CDC1.w,X		; DD C1 CD
	cmp ($17.b,X)		; C1 17
	bpl  87.b		; 10 57
	bcc  47.b		; 90 2F
	iny		; C8
	ora $6F1F37.l		; 0F 37 1F 6F
	and $F97EDF.l,X		; 3F DF 7E F9
	beq -49.b		; F0 CF
	brk $FF.b		; 00 FF
	ora $FC.b,S		; 03 FC
	ora $081F73.l		; 0F 73 1F 08
	and $207F10.l,X		; 3F 10 7F 20
	sbc $33FF06.l,X		; FF 06 FF 33
	sbc $131FFC.l,X		; FF FC 1F 13
	and $FFFF2C.l,X		; 3F 2C FF FF
	sbc $3FC0FF.l,X		; FF FF C0 3F
	ora [$F8.b]		; 07 F8
	and $30FFC0.l,X		; 3F C0 FF 30
	sbc $F3FCFF.l,X		; FF FF FC F3
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $67FFCF.l,X		; FF CF FF 67
	sbc $CFFF3F.l,X		; FF 3F FF CF
	sbc $0CFF00.l,X		; FF 00 FF 0C
	cop $1D.b		; 02 1D
	tsb $0B.b		; 04 0B
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$02.b]		; 07 02
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	lda $41BF40.l,X		; BF 40 BF 41
	lda $06FF03.l,X		; BF 03 FF 06
	inc $7C0D.w,X		; FE 0D 7C
	asl $3E.b		; 06 3E
	ora ($0F.b,X)		; 01 0F
	cld		; D8
	rti		; 40

	cmp [$47.b]		; C7 47
	dec $1C4E.w		; CE 4E 1C
	trb $3839.w		; 1C 39 38
	ora ($10.b,S),Y		; 13 10
	ora #$0208.w		; 09 08 02
	cop $05.b		; 02 05
	sta $00.b,S		; 83 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	and $7D00.w,Y		; 39 00 7D
	adc ($FE.b,X)		; 61 FE
	bmi 126.b		; 30 7E
	ora $00FF.w,Y		; 19 FF 00
	ora $000700.l		; 0F 00 07 00
	ora $00.b,S		; 03 00
	ora $38.b,S		; 03 38
	ora $7C.b,S		; 03 7C
	ora ($3C.b,X)		; 01 3C
	ora ($7C.b,X)		; 01 7C
	ora ($F9.b,X)		; 01 F9
	cpx #$F0FF.w		; E0 FF F0
	jsr ($FEF8.w,X)		; FC F8 FE
	jsr ($8484.w,X)		; FC 84 84
	sei		; 78
	sei		; 78
	sty $C7.b		; 84 C7
	ora $EF.b,X		; 15 EF
	brk $F6.b		; 00 F6
	cpx #$F8F3.w		; E0 F3 F8
	xce		; FB
	sed		; F8
	jsr ($FE00.w,X)		; FC 00 FE
	sec		; 38
	inc $FC04.w,X		; FE 04 FC
	ora $10.b,X		; 15 10
	ora $6F1F7F.l,X		; 1F 7F 1F 6F
	ora $370F3F.l		; 0F 3F 0F 37
	ora [$1B.b]		; 07 1B
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	adc $103F40.l,X		; 7F 40 3F 10
	and $181F20.l,X		; 3F 20 1F 18
	ora $06070C.l		; 0F 0C 07 06
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	cpx $FE12.w		; EC 12 FE
	ora ($F8.b,X)		; 01 F8
	sta [$F0.b]		; 87 F0
	stx $CEF0.w		; 8E F0 CE
	sed		; F8
	sbc [$3F.b],Y		; F7 3F
	cpy #$7F00.w		; C0 00 7F
	inc $FFED.w,X		; FE ED FF
	sbc $FC7AFE.l,X		; FF FE 7A FC
	stz $FC.b,X		; 74 FC
	bit $FE.b,X		; 34 FE
	php		; 08
	sbc $00003F.l,X		; FF 3F 00 00
	php		; 08
	jmp ($7C08.w,X)		; 7C 08 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $20.b		; 00 20
	jsr $2000.w		; 20 00 20
	brk $28.b		; 00 28
	php		; 08
	jsr $3020.w		; 20 20 30
	bmi  48.b		; 30 30
	bmi  32.b		; 30 20
	jsr $0000.w		; 20 00 00
	ora ($FF.b,X)		; 01 FF
	sbc $00FF00.l,X		; FF 00 FF 00
	jsr ($C900.w,X)		; FC 00 C9
	ora $007F60.l		; 0F 60 7F 00
	sed		; F8
	brk $80.b		; 00 80
	asl $06.b		; 06 06
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $06F600.l,X		; FF 00 F6 06
	tya		; 98
	clc		; 18
	cpy #$00C0.w		; C0 C0 00
	brk $E8.b		; 00 E8
	sbc $FF00FF.l		; EF FF 00 FF
	brk $7F.b		; 00 7F
	brk $DF.b		; 00 DF
	cpy #$F909.w		; C0 09 F9
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $04.b		; 14 04
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $003F00.l,X		; FF 00 3F 00
	rol $30.b,X		; 36 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00FC1F.l,X		; 1F 1F FC 00
	sbc $0FCC00.l,X		; FF 00 CC 0F
	bra  -2.b		; 80 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$FF00.w		; E0 00 FF
	brk $FF.b		; 00 FF
	brk $F3.b		; 00 F3
	ora $60.b,S		; 03 60
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	jsr ($F8D6.w,X)		; FC D6 F8
	mvp $03,$7B		; 44 7B 03
	sbc $000702.l,X		; FF 02 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $E8.b		; 00 E8
	cpx #$0017.w		; E0 17 00
	sty $00.b,X		; 94 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  -8.b		; 80 F8
	clc		; 18
	sbc $00FF06.l,X		; FF 06 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	cmp $00.b,S		; C3 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	trb $FF00.w		; 1C 00 FF
	brk $3F.b		; 00 3F
	and $00C0C0.l,X		; 3F C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $48.b		; 00 48
	sbc $C4FF88.l,X		; FF 88 FF C4
	asl $BF04.w,X		; 1E 04 BF
	iny		; C8
	ora $E06E70.l		; 0F 70 6E E0
	trb $2040.w		; 1C 40 20
	nop		; EA
	brk $CE.b		; 00 CE
	brk $2C.b		; 00 2C
	brk $1E.b		; 00 1E
	cpy #$102E.w		; C0 2E 10
	tsb $C08C.w		; 0C 8C C0
	brk $C0.b		; 00 C0
	bra   0.b		; 80 00
	sbc $C5FE82.l,X		; FF 82 FE C5
	jmp ($9863.w,X)		; 7C 63 98
	adc [$90.b]		; 67 90
	lsr $03A0.w		; 4E A0 03
	cmp $00.b,S		; C3 00
	sbc $B10078.l,X		; FF 78 00 B1
	brk $C3.b		; 00 C3
	bra -25.b		; 80 E7
	rts		; 60

	sbc $40DF60.l		; EF 60 DF 40
	bit $7C00.w,X		; 3C 00 7C
	jmp ($F800.w,X)		; 7C 00 F8
	brk $E0.b		; 00 E0
	cpy #$00E0.w		; C0 E0 00
	bpl 112.b		; 10 70
	clc		; 18
	beq   4.b		; F0 04
	sed		; F8
	cop $3C.b		; 02 3C
	ora $00.b,S		; 03 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$03.b]		; 07 03
	and $0300.w,X		; 3D 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $00000A.l		; 0F 0A 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	bpl   0.b		; 10 00
	cpx #$0000.w		; E0 00 00
	bra   0.b		; 80 00
	cpx #$F000.w		; E0 00 F0
	rti		; 40

	bcc  64.b		; 90 40
	bcc  64.b		; 90 40
	cpx #$8000.w		; E0 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	jsr $2040.w		; 20 40 20
	rti		; 40

	rts		; 60

	bne   0.b		; D0 00
	cpx #$A000.w		; E0 00 A0
	brk $A0.b		; 00 A0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	beq -24.b		; F0 E8
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  16.b		; F0 10
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	cpy #$C0E0.w		; C0 E0 C0
	pea $FEA0.w		; F4 A0 FE
	bvc  -2.b		; 50 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C040.w		; C0 40 C0
	brk $E0.b		; 00 E0
	bra -28.b		; 80 E4
	brk $FC.b		; 00 FC
	brk $07.b		; 00 07
	sbc [$0F.b],Y		; F7 0F
	sbc $3DDF1E.l		; EF 1E DF 3D
	rol $FCB8.w,X		; 3E B8 FC
	bne -13.b		; D0 F3
	ldy #$C0AF.w		; A0 AF C0
	cmp $E60FF3.l,X		; DF F3 0F E6
	ora $183FCC.l,X		; 1F CC 3F 18
	sbc $03FF10.l,X		; FF 10 FF 03
	sbc $9CFF8F.l,X		; FF 8F FF 9C
	jsr ($3C00.w,X)		; FC 00 3C
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $83.b		; 00 83
	jsr $80E0.w		; 20 E0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora $3D0E16.l		; 0F 16 0E 3D
	ora $3E3A.w,X		; 1D 3A 3E
	eor ($30.b),Y		; 51 30
	sbc $64.b,S		; E3 64
	cmp $CA.b		; C5 CA
	nop		; EA
	sta $F5.b		; 85 F5
	ora $121E09.l		; 0F 09 1E 12
	bit $3924.w,X		; 3C 24 39
	plp		; 28
	adc ($1D.b),Y		; 71 1D
	cpx $BE.b		; E4 BE
	nop		; EA
	and $355FD0.l,X		; 3F D0 5F 35
	wai		; CB
	adc ($98.b,X)		; 61 98
	lda $5C.b		; A5 5C
	jsr $01DC.w		; 20 DC 01
	sbc $01FF00.l,X		; FF 00 FF 01
	plx		; FA
	ora ($78.b,X)		; 01 78
	ora $0F11.w,X		; 1D 11 0F
	brk $4B.b		; 00 4B
	php		; 08
	cmp [$04.b]		; C7 04
	nop		; EA
	asl A		; 0A
	cpx $768C.w		; EC 8C 76
	.db $42, $36		; 42 36
	ldy #$18C0.w		; A0 C0 18
	rts		; 60

	dey		; 88
	cpx #$D008.w		; E0 08 D0
	bpl  96.b		; 10 60
	bpl   0.b		; 10 00
	cpx #$C020.w		; E0 20 C0
	jsr $20C0.w		; 20 C0 20
	rti		; 40

	bmi -128.b		; 30 80
	beq   0.b		; F0 00
	cpx #$E020.w		; E0 20 E0
	ora ($00.b,X)		; 01 00
	ora ($C0.b,X)		; 01 C0
	ora ($C0.b,X)		; 01 C0
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
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
	tsb $00.b		; 04 00
	asl A		; 0A
	brk $12.b		; 00 12
	brk $91.b		; 00 91
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	tsb $0E0C.w		; 0C 0C 0E
	asl $0F03.w		; 0E 03 0F
	ora [$0B.b]		; 07 0B
	ora [$0F.b]		; 07 0F
	ora $1F0E06.l		; 0F 06 0E 1F
	asl $0E1F.w		; 0E 1F 0E
	ora $071E0F.l,X		; 1F 0F 1E 07
	brk $0F.b		; 00 0F
	tsb $000F.w		; 0C 0F 00
	ora $000F09.l		; 0F 09 0F 00
	ora $000F00.l		; 0F 00 0F 00
	ora $3EBE01.l		; 0F 01 BE 3E
	ora $E70BDF.l,X		; 1F DF 0B E7
	tas		; 1B
	sbc $FE30.w,Y		; F9 30 FE
	rti		; 40

	lda $C05FE0.l,X		; BF E0 5F C0
	sbc $CEFF9C.l,X		; FF 9C FF CE
	adc $D85FE0.l,X		; 7F E0 5F D8
	sta [$FA.b]		; 87 FA
	sta ($D6.b,X)		; 81 D6
	rti		; 40

	sbc $DBA0.w		; ED A0 DB
	brk $FC.b		; 00 FC
	beq  15.b		; F0 0F
	brk $FB.b		; 00 FB
	sbc $70FBFA.l,X		; FF FA FB 70
	plx		; FA
	rts		; 60

	bmi -96.b		; 30 A0
	eor $53A8.w,Y		; 59 A8 53
	bmi  -9.b		; 30 F7
	brk $F0.b		; 00 F0
	sbc ($FF.b)		; F2 FF
	cpx #$00FF.w		; E0 FF 00
	sbc $A0FF00.l,X		; FF 00 FF A0
	ldx $A9.b		; A6 A9
	ldy $519D.w		; AC 9D 51
	txa		; 8A
	lda ($04.b,S),Y		; B3 04
	and [$09.b],Y		; 37 09
	lda $237E00.l,X		; BF 00 7E 23
	phx		; DA
	ora $F2.b,S		; 03 F2
	sta ($72.b,X)		; 81 72
	asl $0C60.w		; 0E 60 0C
	cpy #$C129.w		; C0 29 C1
	jsr $03C0.w		; 20 C0 03
	.db $82, $61, $20		; 82 61 20
	adc ($00.b,X)		; 61 00
	sta $82.b,S		; 83 82
	adc ($ED.b)		; 72 ED
	.db $62, $DD, $40		; 62 DD 40
	lda $017F08.l,X		; BF 08 7F 01
	lsr $4E01.w,X		; 5E 01 4E
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	inc $92.b,X		; F6 92
	ror $22.b,X		; 76 22
	adc ($52.b)		; 72 52
	phy		; 5A
	ora ($0B.b)		; 12 0B
	phd		; 0B
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	asl $FF.b		; 06 FF
	sta $BF.b,S		; 83 BF
	bra -21.b		; 80 EB
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	cpy #$E060.w		; C0 60 E0
	bvs   0.b		; 70 00
	beq  17.b		; F0 11
	ora ($44.b,X)		; 01 44
	tsb $21.b		; 04 21
	and ($00.b,X)		; 21 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	bra   0.b		; 80 00
	brk $05.b		; 00 05
	jsr ($1F71.w,X)		; FC 71 1F
	ldy $1787.w,X		; BC 87 17
	bvs   2.b		; 70 02
	asl $0100.w		; 0E 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	wai		; CB
	iny		; C8
	sep #$02		; E2 02
	adc $2F01.w,Y		; 79 01 2F
	jsr $0405.w		; 20 05 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C438.w		; E0 38 C4
	asl $9BE4.w,X		; 1E E4 9B
	cpx #$C01F.w		; E0 1F C0
	bpl   0.b		; 10 00
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	cpy #$E400.w		; C0 00 E4
	brk $66.b		; 00 66
	tsb $E0.b		; 04 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	bvs 112.b		; 70 70
	bmi  48.b		; 30 30
	bne -48.b		; D0 D0
	bcs  32.b		; B0 20
	bvs  96.b		; 70 60
	cpy #$00E0.w		; C0 E0 00
	rts		; 60

	rts		; 60

	beq  48.b		; F0 30
	beq  16.b		; F0 10
	sed		; F8
	cpy #$00F8.w		; C0 F8 00
	sed		; F8
	brk $F0.b		; 00 F0
	rti		; 40

	cpx #$C0E0.w		; E0 E0 C0
	bra -64.b		; 80 C0
	cpy #$4080.w		; C0 80 40
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpx #$E080.w		; E0 80 E0
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $05.b,S		; 03 05
	asl $0B.b		; 06 0B
	tsb $1F.b		; 04 1F
	php		; 08
	and [$10.b],Y		; 37 10
	adc $337C10.l		; 6F 10 7C 33
	stp		; DB
	adc [$B7.b],Y		; 77 B7
	ora $02.b,S		; 03 02
	ora [$05.b]		; 07 05
	asl $1C02.w		; 0E 02 1C
	trb $383B.w		; 1C 3B 38
	stz $43.b,X		; 74 43
	bvs  39.b		; 70 27
	sbc ($CF.b),Y		; F1 CF
	bpl -54.b		; 10 CA
	and ($9C.b),Y		; 31 9C
	adc $3A.b		; 65 3A
	wai		; CB
	ror $1F.b,X		; 76 1F
	inc $39.b		; E6 39
	dec $36.b		; C6 36
	lsr $9FAF.w		; 4E AF 9F
	clv		; B8
	sta $D00A68.l		; 8F 68 0A D0
	asl $A0.b,X		; 16 A0
	rol $5E42.w		; 2E 42 5E
	brk $3E.b		; 00 3E
	brk $BF.b		; 00 BF
	ora $FF.b,S		; 03 FF
	sbc $1C.b,S		; E3 1C
	sbc $021D00.l,X		; FF 00 1D 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	sbc $6602.w,X		; FD 02 66
	brk $C8.b		; 00 C8
	tsb $1A.b		; 04 1A
	clc		; 18
	cop $E0.b		; 02 E0
	brk $F8.b		; 00 F8
	cop $F8.b		; 02 F8
	cop $F8.b		; 02 F8
	cop $00.b		; 02 00
	brk $B9.b		; 00 B9
	ora ($76.b,X)		; 01 76
	adc ($81.b,X)		; 61 81
	sbc ($07.b,X)		; E1 07
	ldx $1F.b		; A6 1F
	and $3E01.w		; 2D 01 3E
	brk $FE.b		; 00 FE
	brk $66.b		; 00 66
	php		; 08
	cmp [$19.b]		; C7 19
	bra -125.b		; 80 83
	ora ($41.b,X)		; 01 41
	php		; 08
	iny		; C8
	asl $1FC0.w,X		; 1E C0 1F
	cpy #$003F.w		; C0 3F 00
	sbc $18FE08.l,X		; FF 08 FE 18
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	brk $32.b		; 00 32
	brk $41.b		; 00 41
	brk $21.b		; 00 21
	brk $13.b		; 00 13
	ora $030316.l		; 0F 16 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $3E0D.w		; 0D 0D 3E
	rol $1E1E.w,X		; 3E 1E 1E
	tsb $0F0C.w		; 0C 0C 0F
	ora #$7F00.w		; 09 00 7F
	brk $3F.b		; 00 3F
	asl $1F77.w		; 0E 77 1F
	sbc [$3E.b]		; E7 3E
	cmp $47877E.l		; CF 7E 87 47
	ldy $9A65.w,X		; BC 65 9A
	bra -128.b		; 80 80
	cmp $A8BFC8.l		; CF C8 BF A8
	adc $347F5C.l,X		; 7F 5C 7F 34
	adc $407C78.l,X		; 7F 78 7C 40
	bmi  34.b		; 30 22
	ora $1E0716.l		; 0F 16 07 1E
	ora [$0F.b]		; 07 0F
	ora [$0B.b]		; 07 0B
	ora $0F.b,S		; 03 0F
	ora $07.b,S		; 03 07
	ora $05.b,S		; 03 05
	ora ($07.b,X)		; 01 07
	ora $010F09.l		; 0F 09 0F 01
	ora $040708.l		; 0F 08 07 04
	ora [$00.b]		; 07 00
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	sta ($FE.b,X)		; 81 FE
	cmp ($FE.b,X)		; C1 FE
.ACCU 8
.INDEX 8
	sep #$FD		; E2 FD
.ACCU 8
.INDEX 8
	sep #$7D		; E2 7D
	ldy #$7F.b		; A0 7F
	ldy #$5F.b		; A0 5F
	cpy #$BF.b		; C0 BF
	cpy $BB.b		; C4 BB
	tyx		; BB
	ora ($D7.b,X)		; 01 D7
	ora ($E6.b,X)		; 01 E6
	cop $E6.b		; 02 E6
	.db $82, $E0, $80		; 82 E0 80
	cpx #$A0.b		; E0 A0
	cpx $40.b		; E4 40
	cpx $2444.w		; EC 44 24
	stp		; DB
	bit $DB.b		; 24 DB
	jsl $DD22DD.l		; 22 DD 22 DD
	jsl $DF21DD.l		; 22 DD 21 DF
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	adc $6C24.w		; 6D 24 6C
	bit $EE.b		; 24 EE
	jsl $EE22EE.l		; 22 EE 22 EE
	jsl $82202C.l		; 22 2C 20 82
	cop $B8.b		; 02 B8
	sec		; 38
	adc ($92.b,X)		; 61 92
	ora ($F2.b,X)		; 01 F2
	jsr $50FA.w		; 20 FA 50
	cmp $BA87B0.l		; CF B0 87 BA
	sta $BD.b,S		; 83 BD
	sta ($5E.b,X)		; 81 5E
	cpy #$E3.b		; C0 E3
	.db $62, $C1, $00		; 62 C1 00
	sta ($10.b),Y		; 91 10
	sec		; 38
	php		; 08
	adc $7C04.w,X		; 7D 04 7C
	brk $7E.b		; 00 7E
	brk $BF.b		; 00 BF
	bra   0.b		; 80 00
	bcc   0.b		; 90 00
	sed		; F8
	bra  -8.b		; 80 F8
	cpx #$FC.b		; E0 FC
	bne  -4.b		; D0 FC
	bvc  -4.b		; 50 FC
	bra  88.b		; 80 58
	jsr $0018.w		; 20 18 00
	brk $90.b		; 00 90
	bra -32.b		; 80 E0
	jsr $D0F0.w		; 20 F0 D0
	sed		; F8
	tay		; A8
	sei		; 78
	jsr $4070.w		; 20 70 40
	rti		; 40

	bra 120.b		; 80 78
	dey		; 88
	cpx #$88.b		; E0 88
	bvs  24.b		; 70 18
	beq  24.b		; F0 18
	cpy #$10.b		; C0 10
	cpx #$30.b		; E0 30
	cpx #$30.b		; E0 30
	bra  32.b		; 80 20
	beq -128.b		; F0 80
	sei		; 78
	php		; 08
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpy #$60.b		; C0 60
	cpy #$60.b		; C0 60
	bra  96.b		; 80 60
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	ldy #$20.b		; A0 20
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($0E.b,X)		; 01 0E
	ora $0D.b,S		; 03 0D
	ora [$1B.b]		; 07 1B
	ora $170F17.l		; 0F 17 0F 17
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$05.b]		; 07 05
	ora $040F0A.l		; 0F 0A 0F 04
	ora $081F18.l,X		; 1F 18 1F 08
	and $BE7FDF.l,X		; 3F DF 7F BE
	sbc $F9FE7C.l,X		; FF 7C FE F9
	jsr ($F8F3.w,X)		; FC F3 F8
	sbc [$F1.b]		; E7 F1
	dec $9DE3.w		; CE E3 9D
	sbc $41FFA0.l,X		; FF A0 FF 41
	sbc $06FF83.l,X		; FF 83 FF 06
	sbc $1AFF0D.l,X		; FF 0D FF 1A
	sbc $62FF35.l,X		; FF 35 FF 62
	sbc $8B.b,X		; F5 8B
	cmp ($38.b,X)		; C1 38
	ora $FC.b		; 05 FC
	brk $DC.b		; 00 DC
	ora ($EF.b,X)		; 01 EF
	brk $F7.b		; 00 F7
	brk $FF.b		; 00 FF
	brk $7D.b		; 00 7D
	sbc $DF71.w,X		; FD 71 DF
	bne  59.b		; D0 3B
	plp		; 28
	lda [$94.b],Y		; B7 94
	phx		; DA
	cop $EC.b		; 02 EC
	brk $F7.b		; 00 F7
	sta [$7A.b]		; 87 7A
	cpy #$C0.b		; C0 C0
	clc		; 18
	rts		; 60

	dey		; 88
	cpx #$08.b		; E0 08
	pei ($1F.b)		; D4 1F
	adc $F80B18.l		; 6F 18 0B F8
	tsb $FC.b		; 04 FC
	bra 127.b		; 80 7F
	jsr $3040.w		; 20 40 30
	bra -16.b		; 80 F0
	brk $E3.b		; 00 E3
	and $E7.b,S		; 23 E7
	brk $17.b		; 00 17
	bpl  43.b		; 10 2B
	php		; 08
	adc $43.b,S		; 63 43
	brk $3F.b		; 00 3F
	ora $CF3FF3.l		; 0F F3 3F CF
	sbc $FCFF3F.l,X		; FF 3F FF FC
	jsr ($F0F3.w,X)		; FC F3 F0
	cmp $0F9FE0.l		; CF E0 9F 0F
	ora $FF2C3F.l		; 0F 3F 2C FF
	bcs  -1.b		; B0 FF
	cpy #$FF.b		; C0 FF
	ora $FF.b,S		; 03 FF
	tsb $33FF.w		; 0C FF 33
	sbc $9F7F6F.l,X		; FF 6F 7F 9F
	sbc $CCF3F0.l,X		; FF F0 F3 CC
	cpy #$3F.b		; C0 3F
	brk $F3.b		; 00 F3
	tsb $E5.b		; 04 E5
	asl A		; 0A
	dex		; CA
	ora $F5.b		; 05 F5
	sbc $0FFF60.l,X		; FF 60 FF 0F
	sbc $C8F833.l,X		; FF 33 F8 C8
	sbc ($3C.b),Y		; F1 3C
	sbc $FF.b		; E5 FF
	dex		; CA
	sbc $009F90.l,X		; FF 90 9F 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	sbc $A7DFA7.l,X		; FF A7 DF A7
	eor $0E7F00.l,X		; 5F 00 7F 0E
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $3B.b,S		; 03 3B
	and $B07F77.l		; 2F 77 7F B0
	and $301FB0.l,X		; 3F B0 1F 30
	and $030001.l,X		; 3F 01 00 03
	ora ($FF.b,X)		; 01 FF
	ora [$FF.b]		; 07 FF
	sbc $88FEFD.l,X		; FF FD FE 88
	beq  64.b		; F0 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $03.b,S		; 03 03
	sbc $F0FFFF.l,X		; FF FF FF F0
	sbc $00FE00.l,X		; FF 00 FE 00
	beq   0.b		; F0 00
	bra   2.b		; 80 02
	ora $0D02.w		; 0D 02 0D
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	ora ($06.b,X)		; 01 06
	ora ($06.b,X)		; 01 06
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	asl $02.b		; 06 02
	asl $02.b		; 06 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	asl $FF.b		; 06 FF
	sta $BF.b,S		; 83 BF
	bra -21.b		; 80 EB
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	cpy #$60.b		; C0 60
	cpx #$70.b		; E0 70
	brk $F0.b		; 00 F0
	ora ($01.b),Y		; 11 01
	mvp $21,$04		; 44 04 21
	and ($00.b,X)		; 21 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	bra   0.b		; 80 00
	brk $05.b		; 00 05
	jsr ($1F71.w,X)		; FC 71 1F
	ldy $1787.w,X		; BC 87 17
	bvs   2.b		; 70 02
	asl $0100.w		; 0E 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	wai		; CB
	iny		; C8
	sep #$02		; E2 02
	adc $2F01.w,Y		; 79 01 2F
	jsr $0405.w		; 20 05 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$38.b		; E0 38
	cpy $1E.b		; C4 1E
	cpx $9B.b		; E4 9B
	cpx #$1F.b		; E0 1F
	cpy #$10.b		; C0 10
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx $00.b		; E4 00
	ror $04.b		; 66 04
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lsr $EE1C.w,X		; 5E 1C EE
	jmp ($ACFC.w)		; 6C FC AC
	jsr ($D8D0.w,X)		; FC D0 D8
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $FE2C.w,X		; 7E 2C FE
	plp		; 28
	jsr ($FCD0.w,X)		; FC D0 FC
	bra  -8.b		; 80 F8
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $02.b		; 00 02
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $9C.b		; 00 9C
	brk $53.b		; 00 53
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $008C.w		; 8C 8C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $071C03.l		; 0F 03 1C 07
	tsa		; 3B
	ora $EF1F77.l		; 0F 77 1F EF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $141F0B.l		; 0F 0B 1F 14
	and $507F28.l,X		; 3F 28 7F 50
	ora $2F1F2F.l,X		; 1F 2F 1F 2F
	ora $3E0F2E.l,X		; 1F 2E 0F 3E
	ora $1A0716.l		; 0F 16 07 1A
	cop $0D.b		; 02 0D
	brk $0F.b		; 00 0F
	ora $101F10.l,X		; 1F 10 1F 10
	ora $011F11.l,X		; 1F 11 1F 01
	ora $050F19.l,X		; 1F 19 0F 05
	ora $04060B.l		; 0F 0B 06 04
	sbc [$1B.b]		; E7 1B
	cmp $6B9C36.l		; CF 36 9C 6B
	tya		; 98
	adc [$31.b]		; 67 31
	dec $DD22.w		; CE 22 DD
	bit $DB.b		; 24 DB
	php		; 08
	sbc [$FF.b],Y		; F7 FF
	cpx $FF.b		; E4 FF
	cmp #$FF.b		; C9 FF
	pei ($FF.b)		; D4 FF
	txy		; 9B
	xce		; FB
	lda ($F7.b,S),Y		; B3 F7
	and [$EF.b]		; 27 EF
	and $0AEE.w		; 2D EE 0A
	cpx #$1D.b		; E0 1D
	sbc $1D00.w,X		; FD 00 1D
	cop $07.b		; 02 07
	cop $07.b		; 02 07
	cop $FD.b		; 02 FD
	cop $66.b		; 02 66
	brk $C9.b		; 00 C9
	tsb $1A.b		; 04 1A
	brk $02.b		; 00 02
	cpx #$00.b		; E0 00
	sed		; F8
	cop $F8.b		; 02 F8
	cop $F8.b		; 02 F8
	cop $00.b		; 02 00
	brk $B9.b		; 00 B9
	ora ($76.b,X)		; 01 76
	cpx #$10.b		; E0 10
	cpx #$0C.b		; E0 0C
	ldy $3A1E.w		; AC 1E 3A
	ora $3C.b,S		; 03 3C
	ora ($FC.b,X)		; 01 FC
	ora ($CC.b,X)		; 01 CC
	ora ($8E.b),Y		; 11 8E
	and ($00.b,S),Y		; 33 00
	brk $00.b		; 00 00
	rti		; 40

	bpl -48.b		; 10 D0
	trb $1EC0.w		; 1C C0 1E
	cpy #$3E.b		; C0 3E
	brk $FE.b		; 00 FE
	bpl  -4.b		; 10 FC
	bmi -64.b		; 30 C0
	and $007F80.l,X		; 3F 80 7F 00
	sbc $70FE00.l,X		; FF 00 FE 70
	sta $E06FF4.l		; 8F F4 6F E0
	jmp.w [$BBC3]		; DC C3 BB
	sbc $BFFFDF.l,X		; FF DF FF BF
	inc $FD62.w,X		; FE 62 FD
	sty $F8.b		; 84 F8
	sei		; 78
	sbc [$90.b],Y		; F7 90
	pea $F323.w		; F4 23 F3
	eor [$10.b],Y		; 57 10
	dex		; CA
	and ($88.b,X)		; 21 88
	eor $1A.b,S		; 43 1A
	sta $36.b,S		; 83 36
	phd		; 0B
	ror $1B.b		; 66 1B
	dec $00.b		; C6 00
	brk $97.b		; 00 97
	sta $788FB8.l		; 8F B8 8F 78
	asl $16F2.w		; 0E F2 16
.ACCU 8
	sep #$2E		; E2 2E
.INDEX 16
	rep #$5E		; C2 5E
	cop $3E.b		; 02 3E
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	sta $7B.b,S		; 83 7B
	ora $FB.b,S		; 03 FB
	ora ($F8.b,X)		; 01 F8
	stx $7E.b		; 86 7E
	tsb $00FF.w		; 0C FF 00
	cmp $008700.l		; CF 00 87 00
	ora $F1B7F3.l		; 0F F3 B7 F1
	eor [$F0.b],Y		; 57 F0
	lda [$E6.b],Y		; B7 E6
	sbc ($CE.b,X)		; E1 CE
	cpy #$8085.w		; C0 85 80
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	cmp [$CE.b],Y		; D7 CE
	sbc ($E0.b,X)		; E1 E0
	adc $3F7FFF.l,X		; 7F FF 7F 3F
	asl $0C5F.w		; 0E 5F 0C
	stx $28.b		; 86 28
	dec $2A.b,X		; D6 2A
	pei ($82.b)		; D4 82
	inc $FEC0.w,X		; FE C0 FE
	asl $1CFF.w,X		; 1E FF 1C
	sbc $80FF00.l,X		; FF 00 FF 80
	adc $EA2968.l,X		; 7F 68 29 EA
	pld		; 2B
	sta ($08.b,S),Y		; 93 08
	sbc ($14.b)		; F2 14
	adc ($ED.b,X)		; 61 ED
	.db $42, $6F		; 42 6F
	brk $5F.b		; 00 5F
	php		; 08
	asl $00.b,X		; 16 00
	jmp ($DC20.w,X)		; 7C 20 DC
	ora $EC.b,S		; 03 EC
	ora $18.b,S		; 03 18
	lsr A		; 4A
	beq   8.b		; F0 08
	beq   0.b		; F0 00
	cpx #$E818.w		; E0 18 E8
	clc		; 18
	bra  96.b		; 80 60
	jsr $625E.w		; 20 5E 62
	clv		; B8
.INDEX 8
	sep #$1C		; E2 1C
	dec $7C.b		; C6 7C
	dec $30.b		; C6 30
	sty $F8.b		; 84 F8
	sty $8CF8.w		; 8C F8 8C
	rts		; 60

	dey		; 88
	ldy $1E20.w,X		; BC 20 1E
	cop $78.b		; 02 78
	rti		; 40

	sec		; 38
	brk $FC.b		; 00 FC
	sty $70.b		; 84 70
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	dey		; 88
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $63000E.l		; 0F 0E 00 63
	brk $E1.b		; 00 E1
	brk $27.b		; 00 27
	brk $1F.b		; 00 1F
	ora ($3E.b,X)		; 01 3E
	ora $FC.b,S		; 03 FC
	and ($CD.b)		; 32 CD
	sbc $1C36.w,Y		; F9 36 1C
	trb $1E1E.w		; 1C 1E 1E
	cmp $E3D9.w,Y		; D9 D9 E3
.INDEX 8
	sep #$D7		; E2 D7
	cmp $37.b,X		; D5 37
	and [$FF.b]		; 27 FF
	ldx $FF.b,Y		; B6 FF
	wai		; CB
	brk $1D.b		; 00 1D
	brk $FF.b		; 00 FF
	stz $BF.b,X		; 74 BF
	sbc $7FF63F.l,X		; FF 3F F6 7F
	sbc ($3F.b)		; F2 3F
	bit $29E2.w,X		; 3C E2 29
	bne -32.b		; D0 E0
	cpx #$FC.b		; E0 FC
	sty $FF.b		; 84 FF
	eor ($FF.b,X)		; 41 FF
	inc $FF.b		; E6 FF
	lda $FB.b		; A5 FB
	cmp ($E3.b,X)		; C1 E3
	cop $82.b		; 02 82
	trb $00.b		; 14 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$80.b		; E0 80
	cpx #$80.b		; E0 80
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora ($FE.b,X)		; 01 FE
	brk $7B.b		; 00 7B
	brk $29.b		; 00 29
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $0951.w,Y		; 59 51 09
	ora ($08.b,X)		; 01 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E3.b		; 00 E3
	brk $C1.b		; 00 C1
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($40.b,X)		; C1 40
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$F6.b		; 09 F6
	ora #$F6.b		; 09 F6
	ora ($EE.b),Y		; 11 EE
	ora ($EE.b),Y		; 11 EE
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	brk $FF.b		; 00 FF
	jsr $DBDF.w		; 20 DF DB
	ora #$BB.b		; 09 BB
	ora #$37.b		; 09 37
	ora ($37.b),Y		; 11 37
	ora ($07.b),Y		; 11 07
	ora ($01.b,X)		; 01 01
	ora ($24.b,X)		; 01 24
	brk $65.b		; 00 65
	and ($23.b,X)		; 21 23
	jmp.w [$DF20]		; DC 20 DF
	ora ($EF.b),Y		; 11 EF
	ora ($EE.b)		; 12 EE
	ora $EC.b,X		; 15 EC
	ora $0DFC.w		; 0D FC 0D
	jsr ($FE02.w,X)		; FC 02 FE
	adc $206623.l		; 6F 23 66 20
	stz $10.b,X		; 74 10
	adc ($10.b),Y		; 71 10
	adc ($10.b,S),Y		; 73 10
	adc $00.b,S		; 63 00
	ora ($10.b,S),Y		; 13 10
	cmp $C4.b		; C5 C4
	asl $0E93.w		; 0E 93 0E
	sta ($04.b,S),Y		; 93 04
	cmp ($80.b,S),Y		; D3 80
	ply		; 7A
	bra  62.b		; 80 3E
	bne  30.b		; D0 1E
	inx		; E8
	asl $06F0.w		; 0E F0 06
	ora $0C11.w,X		; 1D 11 0C
	brk $8E.b		; 00 8E
	.db $82, $C6, $42		; 82 C6 42
	inx		; E8
	jsr $00E4.w		; 20 E4 00
	beq   0.b		; F0 00
	sed		; F8
	brk $04.b		; 00 04
	ora $000502.l		; 0F 02 05 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	rol $36.b,X		; 36 36
	adc $047F22.l,X		; 7F 22 7F 04
	brk $02.b		; 00 02
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $36.b		; 00 36
	jsr $0022.w		; 20 22 00
	rti		; 40

	cpx #$80.b		; E0 80
	rti		; 40

	brk $80.b		; 00 80
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($06.b,X)		; 01 06
	ora ($07.b,X)		; 01 07
	ora $0D.b,S		; 03 0D
	rti		; 40

	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	tsb $07.b		; 04 07
	cop $01.b		; 02 01
	ora $0F3B06.l,X		; 1F 06 3B 0F
	inc $3E.b,X		; F6 3E
	jmp.w [$7AFC]		; DC FC 7A
	sed		; F8
	sbc $F0.b,X		; F5 F0
	sbc $0DDEE0.l		; EF E0 DE 0D
	php		; 08
	asl $3F14.w,X		; 1E 14 3F
	and #$FE.b		; 29 FE
	lda $FE.b,S		; A3 FE
	sta $FC.b		; 85 FC
	asl A		; 0A
	sbc $FB15.w,X		; FD 15 FB
	rol A		; 2A
	bpl  -1.b		; 10 FF
	ldy #$5F.b		; A0 5F
	bpl -27.b		; 10 E5
	lda $EB.b,S		; A3 EB
	and [$37.b]		; 27 37
	ora [$CF.b]		; 07 CF
	asl $5F.b,X		; 16 5F
	bmi  58.b		; 30 3A
	ora ($03.b,S),Y		; 13 03
	ldx $A6.b		; A6 A6
	eor $931B.w,Y		; 59 1B 93
	lda [$03.b],Y		; B7 03
	sbc $D0BF82.l,X		; FF 82 BF D0
	adc $F87FB0.l,X		; 7F B0 7F F8
	tsb $CC.b		; 04 CC
	brk $C2.b		; 00 C2
	bra -62.b		; 80 C2
	bra 126.b		; 80 7E
	sta ($FD.b,X)		; 81 FD
	ora $C2.b,S		; 03 C2
	asl $8D.b		; 06 8D
	tsb $00.b		; 04 00
	bvs   0.b		; 70 00
	sei		; 78
	bra  -4.b		; 80 FC
	bra -68.b		; 80 BC
	ora ($81.b,X)		; 01 81
	cop $3A.b		; 02 3A
	ora $7C.b		; 05 7C
	ora $70.b,S		; 03 70
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb $1A3E.w		; 0C 3E 1A
	cmp $BC.b,S		; C3 BC
	sta ($7C.b,X)		; 81 7C
	ora ($CC.b,X)		; 01 CC
	ora ($8E.b),Y		; 11 8E
	and ($00.b,S),Y		; 33 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl 124.b		; 10 7C
	rti		; 40

	ror $FE00.w,X		; 7E 00 FE
	brk $FE.b		; 00 FE
	bpl  -4.b		; 10 FC
	bmi  24.b		; 30 18
	cpx $00.b		; E4 00
	jsr ($7E88.w,X)		; FC 88 7E
	sty $73.b,X		; 94 73
	ldy $6E61.w		; AC 61 6E
	cpx #$6F.b		; E0 6F
	cpx #$17.b		; E0 17
	beq 120.b		; F0 78
	clc		; 18
	bmi   0.b		; 30 00
	ldy $84.b		; A4 84
	stx $9F82.w		; 8E 82 9F
	sta ($1F.b,X)		; 81 1F
	brk $9F.b		; 00 9F
	bra  47.b		; 80 2F
	jsr $9870.w		; 20 70 98
	bvs -104.b		; 70 98
	jsr $0098.w		; 20 98 00
	bne   0.b		; D0 00
	beq -128.b		; F0 80
	beq  64.b		; F0 40
	bvs -128.b		; 70 80
	bmi -24.b		; 30 E8
	dey		; 88
	rts		; 60

	brk $70.b		; 00 70
	bpl  48.b		; 10 30
	bpl  64.b		; 10 40
	brk $20.b		; 00 20
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	adc $207F20.l,X		; 7F 20 7F 20
	eor $003700.l,X		; 5F 00 37 00
	and [$00.b],Y		; 37 00
	and [$00.b]		; 27 00
	ora [$01.b]		; 07 01
	asl $6E.b		; 06 6E
	brk $75.b		; 00 75
	bvc  49.b		; 50 31
	bmi  49.b		; 30 31
	bpl  32.b		; 10 20
	jsr $0000.w		; 20 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	eor #$B6.b		; 49 B6
	eor #$B6.b		; 49 B6
	dey		; 88
	adc [$88.b],Y		; 77 88
	adc [$08.b],Y		; 77 08
	sbc [$08.b],Y		; F7 08
	sbc [$00.b],Y		; F7 00
	sbc $DBFF00.l,X		; FF 00 FF DB
	eor #$DB.b		; 49 DB
	eor #$BB.b		; 49 BB
	dey		; 88
	tyx		; BB
	dey		; 88
	tsa		; 3B
	php		; 08
	phd		; 0B
	php		; 08
	jsr $2E00.w		; 20 00 2E
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $24.b		; 00 24
	brk $F2.b		; 00 F2
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	sbc ($10.b)		; F2 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $21.b		; 00 21
	brk $50.b		; 00 50
	brk $4C.b		; 00 4C
	brk $87.b		; 00 87
	ora ($86.b,X)		; 01 86
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($21.b,X)		; 21 21
	and ($31.b),Y		; 31 31
	sei		; 78
	sei		; 78
	tda		; 7B
	adc $0278.w,Y		; 79 78 02
	bit $04.b,X		; 34 04
	cli		; 58
	cpy $00.b		; C4 00
	sed		; F8
	bra -64.b		; 80 C0
	brk $E0.b		; 00 E0
	brk $30.b		; 00 30
	rts		; 60

	clc		; 18
	jsr ($F800.w,X)		; FC 00 F8
	php		; 08
	clv		; B8
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra  32.b		; 80 20
	bra  16.b		; 80 10
	cpy #$08.b		; C0 08
	bra   0.b		; 80 00
	trb $0800.w		; 1C 00 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	and [$06.b],Y		; 37 06
	and $023B06.l,X		; 3F 06 3B 02
	eor $42FF42.l,X		; 5F 42 FF 42
	lda $CF00.w		; AD 00 CF
	brk $87.b		; 00 87
	ora $111F19.l,X		; 1F 19 1F 11
	ora $090F15.l,X		; 1F 15 0F 09
	lsr $4608.w		; 4E 08 46
	lsr $87.b		; 46 87
	tsb $03.b		; 04 03
	ora ($78.b,X)		; 01 78
	sbc [$F0.b],Y		; F7 F0
	adc $E65FE3.l		; 6F E3 5F E6
	eor $407FCC.l,X		; 5F CC 7F 40
	sbc $60DF60.l,X		; FF 60 DF 60
	lda $FC08FC.l,X		; BF FC 08 FC
	sty $FB.b,X		; 94 FB
	tay		; A8
	sbc [$B0.b],Y		; F7 B0
	inc $F580.w		; EE 80 F5
	bpl  -5.b		; 10 FB
	clv		; B8
	ror $50.b,X		; 76 50
	trb $2A.b		; 14 2A
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	trb $3E.b		; 14 3E
	trb $2A.b		; 14 2A
	trb $14.b		; 14 14
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	brk $14.b		; 00 14
	trb $07.b		; 14 07
	phd		; 0B
	ora [$1F.b]		; 07 1F
	ora $370F17.l		; 0F 17 0F 37
	ora $360F36.l		; 0F 36 0F 36
	asl $0E37.w		; 0E 37 0E
	and [$0F.b],Y		; 37 0F
	tsb $000F.w		; 0C 0F 00
	ora $181F18.l,X		; 1F 18 1F 18
	ora $091F09.l,X		; 1F 09 1F 09
	ora $081F08.l,X		; 1F 08 1F 08
	cmp ($BC.b,X)		; C1 BC
.ACCU 16
.INDEX 16
	rep #$BC		; C2 BC
	sta ($7D.b,X)		; 81 7D
	sta ($7D.b,X)		; 81 7D
	ora ($ED.b),Y		; 11 ED
	bmi -51.b		; 30 CD
	bvs -98.b		; 70 9E
	sei		; 78
	lda [$FB.b],Y		; B7 FB
	cli		; 58
	sbc ($51.b)		; F2 51
	pea $F4A7.w		; F4 A7 F4
	sta [$F0.b]		; 87 F0
	eor ($F4.b,S),Y		; 53 F4
	and ($F6.b,S),Y		; 33 F6
	sbc ($FB.b,X)		; E1 FB
	pha		; 48
	sei		; 78
	bvs -27.b		; 70 E5
	sbc ($CB.b,S),Y		; F3 CB
	sbc [$A7.b]		; E7 A7
	cmp $AC8343.l		; CF 43 83 AC
	trb $7F1E.w		; 1C 1E 7F
	and $FF60BF.l,X		; 3F BF 60 FF
	cmp ($FF.b,X)		; C1 FF
	sta ($FF.b,X)		; 81 FF
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	tsb $0FBF.w		; 0C BF 0F
	adc $E284CF.l,X		; 7F CF 84 E2
	sty $D509.w		; 8C 09 D5
	jsl $2F109F.l		; 22 9F 10 2F
	php		; 08
	ror $40.b,X		; 76 40
	ldy $DC20.w,X		; BC 20 DC
	ora $B0.b,S		; 03 B0
	ora $90.b,S		; 03 90
	inc A		; 1A
	inx		; E8
	plp		; 28
	cpx #$9030.w		; E0 30 90
	sec		; 38
	php		; 08
	cli		; 58
	rti		; 40

	rts		; 60

	jsr $625E.w		; 20 5E 62
	clv		; B8
.INDEX 8
	sep #$1C		; E2 1C
	dec $7C.b		; C6 7C
	dec $30.b		; C6 30
	sty $F8.b		; 84 F8
	sty $8CF8.w		; 8C F8 8C
	rts		; 60

	dey		; 88
	ldy $1E20.w,X		; BC 20 1E
	cop $78.b		; 02 78
	rti		; 40

	sec		; 38
	brk $FC.b		; 00 FC
	sty $70.b		; 84 70
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	dey		; 88
	ora $FC.b		; 05 FC
	adc ($1F.b),Y		; 71 1F
	ldy $1787.w,X		; BC 87 17
	bvs   2.b		; 70 02
	asl $0100.w		; 0E 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	wai		; CB
	iny		; C8
	sep #$02		; E2 02
	adc $2F01.w,Y		; 79 01 2F
	jsr $0405.w		; 20 05 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$38.b		; E0 38
	cpy $1E.b		; C4 1E
	cpx $9B.b		; E4 9B
	cpx #$1F.b		; E0 1F
	cpy #$10.b		; C0 10
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx $00.b		; E4 00
	ror $04.b		; 66 04
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $0D.b		; 02 0D
	cop $0D.b		; 02 0D
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	ora ($06.b,X)		; 01 06
	ora ($06.b,X)		; 01 06
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	asl $02.b		; 06 02
	asl $02.b		; 06 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	asl $FF.b		; 06 FF
	sta $BF.b,S		; 83 BF
	bra -61.b		; 80 C3
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	cpy #$60.b		; C0 60
	cpx #$70.b		; E0 70
	brk $F0.b		; 00 F0
	ora ($01.b),Y		; 11 01
	mvp $01,$04		; 44 04 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	bra   0.b		; 80 00
	brk $7F.b		; 00 7F
	and $7F3F7F.l,X		; 3F 7F 3F 7F
	eor $11AF3E.l,X		; 5F 3E AF 11
	cmp $20CE2E.l,X		; DF 2E CE 20
	cmp ($2A.b),Y		; D1 2A
	cmp $1F.b,X		; D5 1F
	sbc $0EFF1F.l,X		; FF 1F FF 0E
	sbc $917F24.l,X		; FF 24 7F 91
	and $603FAE.l,X		; 3F AE 3F 60
	rol $2AEA.w		; 2E EA 2A
	brk $07.b		; 00 07
	brk $02.b		; 00 02
	brk $02.b		; 00 02
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1B.b		; 00 1B
	tas		; 1B
	and $000000.l,X		; 3F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1B.b		; 00 1B
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($FE6C.w)		; 6C 6C FE
	mvp $28,$FE		; 44 FE 28
	mvn $38,$00		; 54 00 38
	brk $90.b		; 00 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($4440.w)		; 6C 40 44
	brk $28.b		; 00 28
	plp		; 28
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $7F.b		; 00 7F
	jmp ($44FF.w)		; 6C FF 44
	sbc $005728.l,X		; FF 28 57 00
	and $163F00.l,X		; 3F 00 3F 16
	and $000101.l		; 2F 01 01 00
	brk $6C.b		; 00 6C
	rti		; 40

	mvp $2A,$00		; 44 00 2A
	rol A		; 2A
	ora [$04.b],Y		; 17 04
	and #$1608.w		; 29 08 16
	trb $0F.b		; 14 0F
	and ($1F.b,S),Y		; 33 1F
	adc $3BDB3F.l		; 6F 3F DB 3B
	sbc [$33.b],Y		; F7 33
	inc $D966.w		; EE 66 D9
	ora ($FB.b,X)		; 01 FB
	cmp $FC.b		; C5 FC
	cmp $92BFCC.l,X		; DF CC BF 92
	adc $88FF66.l,X		; 7F 66 FF 88
	plx		; FA
	bpl  -4.b		; 10 FC
	and ($3D.b,X)		; 21 3D
	ora $10D3.w,Y		; 19 D3 10
	rti		; 40

	inc $FFF0.w,X		; FE F0 FF
	pla		; 68
	sbc $C0FE28.l,X		; FF 28 FE C0
	bit $0C90.w		; 2C 90 0C
	cpy #$18.b		; C0 18
	rts		; 60

	dey		; 88
	beq  16.b		; F0 10
	inc $FE62.w,X		; FE 62 FE
	lsr $BC.b,X		; 56 BC
	bpl  56.b		; 10 38
	jsr $4020.w		; 20 20 40
	jsr $3040.w		; 20 40 30
	bra  15.b		; 80 0F
	and $1D6F1E.l,X		; 3F 1E 6F 1D
	ror $7B1D.w,X		; 7E 1D 7B
	tsa		; 3B
	cmp $33.b,X		; D5 33
	sbc $67BB67.l		; EF 67 BB 67
	cmp $3F001F.l,X		; DF 1F 00 3F
	bmi  63.b		; 30 3F
	and ($7F.b,X)		; 21 7F
	lsr $7F.b		; 46 7F
	ror $187F.w		; 6E 7F 18
	adc $B0FF4C.l,X		; 7F 4C FF B0
	adc $F9BE.w,Y		; 79 BE F9
	ror $F9.b,X		; 76 F9
	sbc [$F1.b],Y		; F7 F1
	sbc $F1EEF1.l		; EF F1 EE F1
	ldx $B7F8.w		; AE F8 B7
	sed		; F8
	and [$FF.b],Y		; 37 FF
	eor $FF.b,S		; 43 FF
	phb		; 8B
	sbc $14FF0C.l,X		; FF 0C FF 14
	sbc $57FF15.l,X		; FF 15 FF 57
	sbc $FD4C.w,X		; FD 4C FD
	cmp #$FFFC.w		; C9 FC FF
	jsr ($F8FB.w,X)		; FC FB F8
	sbc $F0F7F8.l,X		; FF F8 F7 F0
	sbc $E0EFF0.l,X		; FF F0 EF E0
	cmp $FD7EC0.l,X		; DF C0 7E FD
	brk $FD.b		; 00 FD
	tsb $FD.b		; 04 FD
	ora ($FD.b,X)		; 01 FD
	ora $04FC.w		; 0D FC 04
	sed		; F8
	clc		; 18
	sed		; F8
	plp		; 28
	beq -111.b		; F0 91
	rol A		; 2A
.INDEX 16
	rep #$11		; C2 11
	cmp $2A8704.l		; CF 04 87 2A
	txy		; 9B
	eor $3E3D.w,X		; 5D 3D 3E
	ror $7EFE.w,X		; 7E FE 7E
	adc $81FE.w,X		; 7D FE 81
	trb $BC80.w		; 1C 80 BC
	brk $7E.b		; 00 7E
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	asl $3EFF.w,X		; 1E FF 3E
	sbc $80FE7C.l,X		; FF 7C FE 80
	and ($40.b)		; 32 40
	ora $BF87.w,X		; 1D 87 BF
	ora [$FF.b]		; 07 FF
	ora $FF.b,S		; 03 FF
	rti		; 40

	and $9E18C0.l,X		; 3F C0 18 9E
	brk $C0.b		; 00 C0
	ora $03E8.w		; 0D E8 03
	eor ($07.b,S),Y		; 53 07
	and ($07.b,S),Y		; 33 07
	and ($83.b,S),Y		; 33 83
	clc		; 18
	sta $00.b,S		; 83 00
	adc [$03.b]		; 67 03
	cpx #$7E38.w		; E0 38 7E
	beq  -8.b		; F0 F8
	cpx #$C8F0.w		; E0 F0 C8
	cpx $8410.w		; EC 10 84
	bmi   4.b		; 30 04
	bmi  68.b		; 30 44
	sec		; 38
	cpy $FF18.w		; CC 18 FF
	bvs  -2.b		; 70 FE
	cpx #$C0F8.w		; E0 F8 C0
	beq  24.b		; F0 18
	cpx #$C038.w		; E0 38 C0
	sed		; F8
	rti		; 40

	beq -64.b		; F0 C0
	ora ($7E.b,X)		; 01 7E
	ora ($3E.b,X)		; 01 3E
	cop $1D.b		; 02 1D
	cop $1D.b		; 02 1D
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	tsb $1B.b		; 04 1B
	tsa		; 3B
	ora ($17.b,X)		; 01 17
	ora ($06.b,X)		; 01 06
	cop $06.b		; 02 06
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	tsb $24.b		; 04 24
	stp		; DB
	bit $DB.b		; 24 DB
	jsl $DD22DD.l		; 22 DD 22 DD
	jsl $DF21DD.l		; 22 DD 21 DF
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	adc $6C24.w		; 6D 24 6C
	bit $EE.b		; 24 EE
	jsl $EE22EE.l		; 22 EE 22 EE
	jsl $82202C.l		; 22 2C 20 82
	cop $B8.b		; 02 B8
	sec		; 38
	adc ($92.b,X)		; 61 92
	ora ($F2.b,X)		; 01 F2
	jsr $50FA.w		; 20 FA 50
	cmp $BA87B0.l		; CF B0 87 BA
	sta $BD.b,S		; 83 BD
	sta ($5E.b,X)		; 81 5E
	cpy #$62E3.w		; C0 E3 62
	cmp ($00.b,X)		; C1 00
	sta ($10.b),Y		; 91 10
	sec		; 38
	php		; 08
	adc $7C04.w,X		; 7D 04 7C
	brk $7E.b		; 00 7E
	brk $BF.b		; 00 BF
	bra -64.b		; 80 C0
	rts		; 60

	cpy #$8060.w		; C0 60 80
	rts		; 60

	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	ldy #$8020.w		; A0 20 80
	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$0040.w		; C0 40 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2B.b		; 00 2B
	cmp [$06.b],Y		; D7 06
	sbc $5B85.w,Y		; F9 85 5B
	sta ($FB.b,X)		; 81 FB
	stx $75.b		; 86 75
	lsr $3FB4.w,X		; 5E B4 3F
	ldy $E02E.w,X		; BC 2E E0
	pld		; 2B
	plp		; 28
	stx $06.b,Y		; 96 06
	lda $A5.b		; A5 A5
	sbc $04.b,X		; F5 04
	cpy $CDC4.w		; CC C4 CD
	tsb $C1.b		; 04 C1
	sty $5F.b		; 84 5F
	rti		; 40

	bra  64.b		; 80 40
	rti		; 40

	bcs -80.b		; B0 B0
	sed		; F8
	bpl  -8.b		; 10 F8
	ldy #$0050.w		; A0 50 00
	cpx #$C080.w		; E0 80 C0
	brk $9B.b		; 00 9B
	cpy #$4080.w		; C0 80 40
	rti		; 40

	bcs   0.b		; B0 00
	bpl   0.b		; 10 00
	ldy #$40A0.w		; A0 A0 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $36.b,X		; 36 36
	adc $147F22.l,X		; 7F 22 7F 14
	rol A		; 2A
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	asl A		; 0A
	ora $00150A.l,X		; 1F 0A 15 00
	asl $0400.w		; 0E 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	brk $0A.b		; 00 0A
	asl A		; 0A
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
	brk $0A.b		; 00 0A
	asl A		; 0A
	ora $00150A.l,X		; 1F 0A 15 00
	asl $0400.w		; 0E 00 04
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	brk $0A.b		; 00 0A
	asl A		; 0A
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $BE4FF7.l		; 4F F7 4F BE
	ora $FF0EFE.l		; 0F FE 0E FF
	asl $0EDF.w		; 0E DF 0E
	sta $04950E.l,X		; 9F 0E 95 04
	ora $FF98FF.l,X		; 1F FF 98 FF
	sbc ($DF.b),Y		; F1 DF
	sta ($DF.b,X)		; 81 DF
	cpy #$809F.w		; C0 9F 80
	sta $0B0F91.l,X		; 9F 91 0F 0B
	ora $7FB801.l		; 0F 01 B8 7F
	sec		; 38
	inc $F638.w,X		; FE 38 F6
	bmi  -2.b		; 30 FE
	bmi -20.b		; 30 EC
	jsr $009C.w		; 20 9C 00
	clv		; B8
	brk $B0.b		; 00 B0
	jsr ($FC80.w,X)		; FC 80 FC
	rti		; 40

	ldy $BC08.w,X		; BC 08 BC
	sty $B8.b		; 84 B8
	bcc  56.b		; 90 38
	plp		; 28
	bmi  16.b		; 30 10
	jsr $4020.w		; 20 20 40
	inc $AE40.w,X		; FE 40 AE
	ora $18FF.w		; 0D FF 18
	ror $7F30.w,X		; 7E 30 7F
	brk $7F.b		; 00 7F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	cpx #$E021.w		; E0 21 E0
	sbc ($4E.b,X)		; E1 4E
	ora ($5C.b,X)		; 01 5C
	eor ($3A.b,X)		; 41 3A
	brk $16.b		; 00 16
	brk $0D.b		; 00 0D
	brk $1B.b		; 00 1B
	brk $FB.b		; 00 FB
	jsr ($F87E.w,X)		; FC 7E F8
	lda $BED87C.l,X		; BF 7C D8 BE
	mvp $B8,$7C		; 44 7C B8
	and $5EA1.w,Y		; 39 A1 5E
	tay		; A8
	eor [$78.b],Y		; 57 78
	sbc $FB30.w,X		; FD 30 FB
	clc		; 18
	jsr ($FF80.w,X)		; FC 80 FF
	mvp $B8,$FE		; 44 FE B8
	jsr ($A1A1.w,X)		; FC A1 A1
	lda #$3DA8.w		; A9 A8 3D
	ora ($6A.b,X)		; 01 6A
	ora ($E4.b,S),Y		; 13 E4
	ora [$89.b],Y		; 17 89
	adc $23BE40.l,X		; 7F 40 BE 23
	phx		; DA
	ora $F2.b,S		; 03 F2
	sta ($72.b,X)		; 81 72
	asl $C0.b		; 06 C0
	tsb $2980.w		; 0C 80 29
	and ($A0.b,X)		; 21 A0
	bra -61.b		; 80 C3
	.db $42, $E1		; 42 E1
	jsr $0061.w		; 20 61 00
	sta $82.b,S		; 83 82
	sei		; 78
	dey		; 88
	cpx #$7088.w		; E0 88 70
	clc		; 18
	beq  24.b		; F0 18
	cpy #$E010.w		; C0 10 E0
	bmi -32.b		; 30 E0
	bmi -128.b		; 30 80
	jsr $80F0.w		; 20 F0 80
	sei		; 78
	php		; 08
	cpx #$E000.w		; E0 00 E0
	brk $F0.b		; 00 F0
	bpl -64.b		; 10 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $3708.w		; 20 08 37
	asl A		; 0A
	rol $02.b,X		; 36 02
	and $041F02.l,X		; 3F 02 1F 04
	tas		; 1B
	ora [$19.b]		; 07 19
	ora $0D.b,S		; 03 0D
	brk $07.b		; 00 07
	clc		; 18
	php		; 08
	ora $0808.w,Y		; 19 08 08
	php		; 08
	php		; 08
	php		; 08
	tsb $0F0C.w		; 0C 0C 0F
	asl $0607.w		; 0E 07 06
	brk $00.b		; 00 00
	clc		; 18
	sbc $02FC0D.l,X		; FF 0D FC 02
	asl $0100.w		; 0E 00 01
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	eor [$07.b]		; 47 07
	ora ($10.b,S),Y		; 13 10
	ora $04.b		; 05 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora [$F0.b],Y		; 17 F0
	cmp [$7C.b]		; C7 7C
	sbc ($1E.b,S),Y		; F3 1E
	eor $380BC0.l,X		; 5F C0 0B 38
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $088B20.l		; 2F 20 8B 08
	sbc $04.b		; E5 04
	lda $101780.l,X		; BF 80 17 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -32.b		; 80 E0
	bpl 120.b		; 10 78
	bcc 108.b		; 90 6C
	bra 124.b		; 80 7C
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc   0.b		; 90 00
	tya		; 98
	bpl -128.b		; 10 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	ora $1F0D.w		; 0D 0D 1F
	php		; 08
	ora $002A05.l,X		; 1F 05 2A 00
	and [$00.b]		; 27 00
	lsr A		; 4A
	brk $DC.b		; 00 DC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0808.w		; 0D 08 08
	brk $15.b		; 00 15
	ora $1A.b,X		; 15 1A
	clc		; 18
	and $35.b,X		; 35 35
	and $23.b,S		; 23 23
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $09.b		; 00 09
	brk $17.b		; 00 17
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	ora ($1E.b,X)		; 01 1E
	ora [$79.b]		; 07 79
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	asl $06.b		; 06 06
	php		; 08
	php		; 08
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$05.b]		; 07 05
	ora $B80016.l,X		; 1F 16 00 B8
	brk $C5.b		; 00 C5
	brk $83.b		; 00 83
	ora ($06.b,X)		; 01 06
	ora $8D.b,S		; 03 8D
	ora [$CB.b]		; 07 CB
	sta [$6E.b]		; 87 6E
	dec $AD.b		; C6 AD
	eor [$47.b]		; 47 47
	dec A		; 3A
	dec A		; 3A
	adc $FB7C.w,X		; 7D 7C FB
	sbc $7277.w,Y		; F9 77 72
	lda [$34.b],Y		; B7 34
	cmp [$91.b],Y		; D7 91
	sbc [$52.b],Y		; F7 52
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D8.b		; 00 D8
	cld		; D8
	jsr ($FC88.w,X)		; FC 88 FC
	bvc -85.b		; 50 AB
	ora $77.b,S		; 03 77
	cop $A7.b		; 02 A7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cld		; D8
	bra -120.b		; 80 88
	brk $50.b		; 00 50
	bvc -85.b		; 50 AB
	txa		; 8A
	phy		; 5A
	cli		; 58
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	rts		; 60

	pea $FE20.w		; F4 20 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $24.b		; 00 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$03.b]		; 07 03
	ora $1B07.w		; 0D 07 1B
	ora $6F1F37.l		; 0F 37 1F 6F
	rol $00DF.w,X		; 3E DF 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	asl $0F.b		; 06 0F
	tsb $181F.w		; 0C 1F 18
	and $607F30.l,X		; 3F 30 7F 60
	ora $7C.b,S		; 03 7C
	ora $BF7FE7.l,X		; 1F E7 7F BF
	sbc $DDFEEF.l,X		; FF EF FE DD
	ldy $79DB.w,X		; BC DB 79
	ldx $F3.b,Y		; B6 F3
	adc $0B0F.w		; 6D 0F 0B
	adc $40FF58.l,X		; 7F 58 FF 40
	sbc $23FF10.l,X		; FF 10 FF 23
	sbc $4DFF26.l,X		; FF 26 FF 4D
	sbc $FDFE92.l,X		; FF 92 FE FD
	dec $BFFF.w,X		; DE FF BF
	inc $B67F.w,X		; FE 7F B6
	ror $FCF5.w,X		; 7E F5 FC
	adc [$F4.b],Y		; 77 F4
	xce		; FB
	beq  -1.b		; F0 FF
	inc $FF02.w,X		; FE 02 FF
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	eor #$0AFF.w		; 49 FF 0A
	sbc $04FE89.l,X		; FF 89 FE 04
	inc $4008.w,X		; FE 08 40
	ldx $FF00.w,Y		; BE 00 FF
	brk $F3.b		; 00 F3
	php		; 08
	sbc #$D514.w		; E9 14 D5
	pha		; 48
	tax		; AA
	mvp $C4,$93		; 44 93 C4
	and ($F3.b,X)		; 21 F3
	eor ($F1.b)		; 52 F1
	ora ($E0.b),Y		; 11 E0
	bit $5EC8.w		; 2C C8 5E
	sta $BE.b,X		; 95 BE
	php		; 08
	and $3804.w,X		; 3D 04 38
	asl $E130.w		; 0E 30 E1
	ora $41.b,S		; 03 41
	ora ($00.b,S),Y		; 13 00
	sbc ($00.b,X)		; E1 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$6000.w		; C0 00 60
	brk $B0.b		; 00 B0
	sbc ($01.b),Y		; F1 01
	sbc ($00.b,X)		; E1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rts		; 60

	ldy #$5030.w		; A0 30 50
	bcs  -8.b		; B0 F8
	bpl  -8.b		; 10 F8
	ldy #$0050.w		; A0 50 00
	cpx #$4C04.w		; E0 04 4C
	asl $1E1E.w		; 0E 1E 1E
	asl $3E3C.w,X		; 1E 3C 3E
	bcs   0.b		; B0 00
	bpl   0.b		; 10 00
	ldy #$40A0.w		; A0 A0 40
	tsb $1E04.w		; 0C 04 1E
	asl $0E1F.w		; 0E 1F 0E
	and $20FF00.l,X		; 3F 00 FF 20
	eor $7800.w,Y		; 59 00 78
	brk $70.b		; 00 70
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	bmi  16.b		; 30 10
	jsr $2020.w		; 20 20 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $0A.b		; 00 0A
	brk $89.b		; 00 89
	brk $51.b		; 00 51
	brk $22.b		; 00 22
	brk $94.b		; 00 94
	brk $E8.b		; 00 E8
	brk $86.b		; 00 86
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	asl $06.b		; 06 06
	stx $DD8E.w		; 8E 8E DD
	cmp $6B6B.w,X		; DD 6B 6B
	sta [$97.b],Y		; 97 97
	adc $0079.w,Y		; 79 79 00
	brk $00.b		; 00 00
	jsr $5F00.w		; 20 00 5F
	ora $1F0F9E.l		; 0F 9E 0F 1F
	ora $3F1D1F.l		; 0F 1F 1D 3F
	tsa		; 3B
	ror $00.b,X		; 76 00
	brk $00.b		; 00 00
	brk $2E.b		; 00 2E
	jsr $616F.w		; 20 6F 61
	sbc $E0EFE0.l		; EF E0 EF E0
	cmp $BBC0.w,X		; DD C0 BB
	bit #$5860.w		; 89 60 58
	inx		; E8
	rti		; 40

	sed		; F8
	iny		; C8
	cpy #$C008.w		; C0 08 C0
	brk $80.b		; 00 80
	pea $A7A4.w		; F4 A4 A7
	ldx $D0A0.w		; AE A0 D0
	rti		; 40

	bne  64.b		; D0 40
	bpl  64.b		; 10 40
	beq   0.b		; F0 00
	beq  32.b		; F0 20
	brk $58.b		; 00 58
	phd		; 0B
	sbc ($AF.b,S),Y		; F3 AF
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $66.b		; 00 66
	stz $00.b		; 64 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $05FC03.l,X		; FF 03 FC 05
	xce		; FB
	phd		; 0B
	sbc [$0B.b],Y		; F7 0B
	sbc [$EF.b],Y		; F7 EF
	sbc [$FF.b],Y		; F7 FF
	ora $FE.b,S		; 03 FE
	inc $70F0.w,X		; FE F0 70
	sed		; F8
	tsa		; 3B
	cpx #$C167.w		; E0 67 C1
	cmp $E30F03.l		; CF 03 0F E3
	ora $0EFA06.l		; 0F 06 FA 0E
	inc $EF.b,X		; F6 EF
	and $FFFFF7.l,X		; 3F F7 FF FF
	xce		; FB
	plx		; FA
	sbc $FCFB.w,X		; FD FB FC
	sbc ($FC.b,S),Y		; F3 FC
	rep #$C7		; C2 C7
	asl $0F.b		; 06 0F
	ora $FF06FF.l		; 0F FF 06 FF
	beq  -1.b		; F0 FF
	sed		; F8
	sbc $E0FEF0.l,X		; FF F0 FE E0
	sbc $FE70.w,X		; FD 70 FE
	and ($FE.b,X)		; 21 FE
	tsb $FB.b		; 04 FB
	tsb $FB.b		; 04 FB
	mvp $44,$BB		; 44 BB 44
	tyx		; BB
	tsb $FB.b		; 04 FB
	tsb $FB.b		; 04 FB
	jmp ($B905.w,X)		; 7C 05 B9
	ora #$1435.w		; 09 35 14
	cmp $DD04.w		; CD 04 DD
	mvp $44,$DD		; 44 DD 44
	ora $0504.w,X		; 1D 04 05
	tsb $20.b		; 04 20
	dec $EE10.w,X		; DE 10 EE
	sty $8072.w		; 8C 72 80
	ror $BF44.w,X		; 7E 44 BF
	lsr A		; 4A
	lda $B056.w,Y		; B9 56 B0
	and [$F0.b],Y		; 37 F0
	bit $3020.w		; 2C 20 30
	bpl -68.b		; 10 BC
	sty $8098.w		; 8C 98 80
	cmp ($42.b)		; D2 42
	cmp [$41.b]		; C7 41
	cmp $008F40.l		; CF 40 8F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora [$39.b]		; 07 39
	ora $9F7FE7.l,X		; 1F E7 7F 9F
	sbc $FFFF7F.l,X		; FF 7F FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $587F16.l,X		; 1F 16 7F 58
	sbc $80FF60.l,X		; FF 60 FF 80
	sbc $000000.l,X		; FF 00 00 00
	brk $01.b		; 00 01
	brk $FE.b		; 00 FE
	jsr ($FEFB.w,X)		; FC FB FE
	sbc $FEFF.w,X		; FD FF FE
	inc $FFFF.w,X		; FE FF FF
	sbc $000000.l,X		; FF 00 00 00
	brk $F1.b		; 00 F1
	ora ($FE.b),Y		; 11 FE
	asl $FF.b		; 06 FF
	ora $FF.b,S		; 03 FF
	ora ($FE.b,X)		; 01 FE
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
	brk $FC.b		; 00 FC
	sed		; F8
	pea $DAEC.w		; F4 EC DA
	jmp.w [$38B2]		; DC B2 38
	cpx $00.b		; E4 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	brk $FC.b		; 00 FC
	php		; 08
	jsr ($FC24.w,X)		; FC 24 FC
	jmp $1838.w		; 4C 38 18
	inc $08.b		; E6 08
	cmp [$19.b]		; C7 19
	lda $715C31.l		; AF 31 5C 71
	stx $3EE3.w		; 8E E3 3E
	sbc $18.b,S		; E3 18
.ACCU 16
.INDEX 16
	rep #$7C		; C2 7C
	lsr $7F.b		; 46 7F
	php		; 08
	inc $DE18.w,X		; FE 18 DE
	bpl -113.b		; 10 8F
	ora ($3C.b,X)		; 01 3C
	jsr $001C.w		; 20 1C 00
	ror $3842.w,X		; 7E 42 38
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
	brk $7C.b		; 00 7C
	lsr $30.b		; 46 30
	mvp $4C,$38		; 44 38 4C
	sec		; 38
	jmp $4C10.w		; 4C 10 4C
	brk $E8.b		; 00 E8
	brk $F8.b		; 00 F8
	rti		; 40

	sei		; 78
	sec		; 38
	brk $7C.b		; 00 7C
	mvp $44,$74		; 44 74 44
	bmi   0.b		; 30 00
	sec		; 38
	php		; 08
	clc		; 18
	php		; 08
	ldy #$9080.w		; A0 80 90
	brk $A0.b		; 00 A0
	sec		; 38
	cpy #$F018.w		; C0 18 F0
	trb $8FE2.w		; 1C E2 8F
	adc ($CD.b)		; 72 CD
	beq  15.b		; F0 0F
	rts		; 60

	php		; 08
	brk $F0.b		; 00 F0
	cpy #$E000.w		; C0 00 E0
	brk $E0.b		; 00 E0
	brk $72.b		; 00 72
	brk $B3.b		; 00 B3
	.db $82, $F0, $00		; 82 F0 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	cop $07.b		; 02 07
	ora [$0F.b]		; 07 0F
	asl $0F.b		; 06 0F
	tsb $07.b		; 04 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$01.b]		; 07 01
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	asl $0F.b		; 06 0F
	ora $DE8F9F.l		; 0F 9F 8F DE
	dec $F9F9.w,X		; DE F9 F9
	inc $E7.b		; E6 E7
	ora $C63F.w,Y		; 19 3F C6
	dec $F631.w		; CE 31 F6
	beq 111.b		; F0 6F
	rts		; 60

	lda $06DF21.l		; AF 21 DF 06
	sbc $E6FF19.l,X		; FF 19 FF E6
	sbc $CEFF39.l,X		; FF 39 FF CE
	sec		; 38
	adc [$6B.b],Y		; 77 6B
	sbc $C3.b,X		; F5 C3
	and $6EF2.w,X		; 3D F2 6E
	sbc ($DF.b,X)		; E1 DF
	cpy #$80BF.w		; C0 BF 80
	adc $B8FC02.l,X		; 7F 02 FC B8
	dey		; 88
	ror A		; 6A
	php		; 08
	rep #$C0		; C2 C0
	sbc $F890.w,Y		; F9 90 F8
	plp		; 28
	sed		; F8
	cli		; 58
	beq -80.b		; F0 B0
	cpx #$AB63.w		; E0 63 AB
	tay		; A8
	ldx #$00AE.w		; A2 AE 00
	ora [$BC.b],Y		; 17 BC
	.db $82, $4E, $87		; 82 4E 87
	sta $FE01.w,X		; 9D 01 FE
	brk $FE.b		; 00 FE
	brk $A7.b		; 00 A7
	beq   5.b		; F0 05
	pea $F800.w		; F4 00 F8
	brk $C0.b		; 00 C0
	brk $B0.b		; 00 B0
	asl $1F60.w		; 0E 60 1F
	brk $3F.b		; 00 3F
	bra -63.b		; 80 C1
	ora $411FC1.l,X		; 1F C1 1F 41
	cmp $003F00.l,X		; DF 00 3F 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -19.b		; 80 ED
	ora #$09ED.w		; 09 ED 09
	ldy $0689.w		; AC 89 06
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EF.b		; 00 EF
	sbc [$C8.b],Y		; F7 C8
	sbc [$46.b],Y		; F7 46
	sbc $39FF1E.l,X		; FF 1E FF 39
	sbc $00FE30.l,X		; FF 30 FE 00
	sbc $E3FF78.l,X		; FF 78 FF E3
	ora $C708C1.l		; 0F C1 08 C7
	brk $DF.b		; 00 DF
	sta ($3E.b,X)		; 81 3E
	ora $BC.b,S		; 03 BC
	ora $A4.b		; 05 A4
	sta $7C.b		; 85 7C
	ora ($EF.b,X)		; 01 EF
	beq  89.b		; F0 59
	cpx #$C02F.w		; E0 2F C0
	cmp #$A486.w		; C9 86 A4
	rol A		; 2A
	eor ($CF.b),Y		; 51 CF
	dey		; 88
	sta [$04.b],Y		; 97 04
	tsa		; 3B
	cpy #$00FB.w		; C0 FB 00
	ror $01.b,X		; 76 01
	bvs   9.b		; 70 09
	sed		; F8
	ora $54F4.w		; 0D F4 54
	beq -104.b		; F0 98
	iny		; C8
	trb $0084.w		; 1C 84 00
	sbc $037F80.l,X		; FF 80 7F 03
	sbc $40DF41.l,X		; FF 41 DF 40
	sbc ($40.b,X)		; E1 40
	cpx #$6080.w		; E0 80 60
	cpx #$9030.w		; E0 30 90
	brk $97.b		; 00 97
	sta [$08.b]		; 87 08
	brk $22.b		; 00 22
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	cpy #$F037.w		; C0 37 F0
	phd		; 0B
	sed		; F8
	cop $FE.b		; 02 FE
	clv		; B8
	sta $0BC35E.l		; 8F 5E C3 0B
	sec		; 38
	ora ($07.b,X)		; 01 07
	brk $00.b		; 00 00
	eor $101740.l		; 4F 40 17 10
	sbc $E4.b		; E5 E4
	adc ($01.b),Y		; 71 01
	ldy $1780.w,X		; BC 80 17
	bpl   2.b		; 10 02
	cop $00.b		; 02 00
	brk $FF.b		; 00 FF
	ora $01E11F.l		; 0F 1F E1 01
	ror $FF00.w,X		; 7E 00 FF
	sbc $7FFF1F.l,X		; FF 1F FF 7F
	sbc $3FFFFF.l,X		; FF FF FF 3F
	sbc $1EFFF0.l,X		; FF F0 FF 1E
	adc $FEFF71.l,X		; 7F 71 FF FE
	sbc $80FFE0.l,X		; FF E0 FF 80
	sbc $C0FF00.l,X		; FF 00 FF C0
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $9E7F7F.l,X		; FF 7F 7F 9E
	inc $FFF1.w,X		; FE F1 FF
	inc $8FF0.w,X		; FE F0 8F
	sed		; F8
	sbc [$FF.b]		; E7 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra  -1.b		; 80 FF
	adc ($FF.b,X)		; 61 FF
	asl $01FF.w		; 0E FF 01
	sbc $1BFF70.l,X		; FF 70 FF 1B
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
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
	and $F807C7.l,X		; 3F C7 07 F8
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $1F.b		; 00 1F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	sbc $677FB8.l,X		; FF B8 7F 67
	ora $06071C.l,X		; 1F 1C 07 06
	and $030330.l,X		; 3F 30 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($FEF3.w,X)		; FC F3 FE
	sbc $07F8.w,Y		; F9 F8 07
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	brk $7F.b		; 00 7F
	sbc $06FF0C.l,X		; FF 0C FF 06
	sbc $01FFF8.l,X		; FF F8 FF 01
	sbc $F8F81F.l,X		; FF 1F F8 F8
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pea $FFF8.w		; F4 F8 FF
	sbc $C8FFFF.l,X		; FF FF FF C8
	beq  32.b		; F0 20
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	jsr ($F9FF.w,X)		; FC FF F9
	sbc $00FF00.l,X		; FF 00 FF 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($81.b,X)		; 01 81
	adc ($F1.b,S),Y		; 73 F1
	xce		; FB
	sed		; F8
	sbc ($E0.b),Y		; F1 E0
	beq  32.b		; F0 20
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($F1.b,X)		; 01 F1
	sbc ($F8.b),Y		; F1 F8
	beq  -8.b		; F0 F8
	rts		; 60

	sed		; F8
	brk $F0.b		; 00 F0
	brk $60.b		; 00 60
	brk $03.b		; 00 03
	ora ($06.b,X)		; 01 06
	ora $0C.b,S		; 03 0C
	ora [$18.b]		; 07 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($01.b,X)		; 01 01
	ora [$05.b]		; 07 05
	ora $171F0B.l		; 0F 0B 1F 17
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $1C.b,S		; 03 1C
	ora [$3B.b]		; 07 3B
	brk $7F.b		; 00 7F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $141F0B.l		; 0F 0B 1F 14
	ora [$06.b]		; 07 06
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $28DF.w		; 20 DF 28
	stp		; DB
	php		; 08
	jsr ($7C08.w,X)		; FC 08 7C
	bpl 108.b		; 10 6C
	trb $0E66.w		; 1C 66 0E
	and [$00.b],Y		; 37 00
	ora $642061.l,X		; 1F 61 20 64
	jsr $2020.w		; 20 20 20
	jsr $3020.w		; 20 20 30
	bmi  60.b		; 30 3C
	sec		; 38
	asl $0018.w,X		; 1E 18 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($FE6C.w)		; 6C 6C FE
	mvp $28,$FE		; 44 FE 28
	mvn $38,$00		; 54 00 38
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($4440.w)		; 6C 40 44
	brk $28.b		; 00 28
	plp		; 28
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $3E20.w		; 20 20 3E
	rol $3F3B.w,X		; 3E 3B 3F
	ora ($3B.b,X)		; 01 3B
	brk $01.b		; 00 01
	brk $6C.b		; 00 6C
	jmp ($44FE.w)		; 6C FE 44
	inc $7E00.w,X		; FE 00 7E
	bmi 127.b		; 30 7F
	and $007F.w,Y		; 39 7F 00
	adc $000300.l,X		; 7F 00 03 00
	ora ($6C.b,X)		; 01 6C
	rti		; 40

	mvp $00,$00		; 44 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	cpx #$F0F0.w		; E0 F0 F0
	sei		; 78
	sed		; F8
	bmi 126.b		; 30 7E
	tsb $003F.w		; 0C 3F 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$F0C0.w		; E0 C0 F0
	rts		; 60

	sed		; F8
	bmi  -4.b		; 30 FC
	bpl -16.b		; 10 F0
	asl $0062.w		; 0E 62 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	sbc #$1F00.w		; E9 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	cpx #$00E0.w		; E0 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	pld		; 2B
	plp		; 28
	adc $005728.l,X		; 7F 28 57 00
	and $001F00.l,X		; 3F 00 1F 00
	ora $011B04.l		; 0F 04 1B 01
	ora ($01.b,X)		; 01 01
	brk $2B.b		; 00 2B
	cop $2B.b		; 02 2B
	and #$0517.w		; 29 17 05
	ora [$01.b]		; 07 01
	ora $060F0A.l		; 0F 0A 0F 06
	clc		; 18
	sbc $18.b,S		; E3 18
	sbc $04.b,S		; E3 04
	sbc [$18.b]		; E7 18
	jsr ($DA02.w,X)		; FC 02 DA
	lsr $86.b		; 46 86
	jmp.w [$C85E]		; DC 5E C8
	sbc $22BE.w,X		; FD BE 22
	ldx $5AA2.w,Y		; BE A2 5A
	.db $42, $44		; 42 44
	eor [$DA.b]		; 47 DA
	lda $D87FC4.l,X		; BF C4 7F D8
	lda $2D3FE0.l,X		; BF E0 3F 2D
	bcc  63.b		; 90 3F
	sta ($58.b,X)		; 81 58
	cmp $2C.b,S		; C3 2C
	adc ($10.b,X)		; 61 10
	lda ($00.b,S),Y		; B3 00
	cmp [$08.b]		; C7 08
	sbc [$FF.b],Y		; F7 FF
	brk $66.b		; 00 66
	bpl 126.b		; 10 7E
	brk $3F.b		; 00 3F
	ora $9E.b		; 05 9E
	bra  76.b		; 80 4C
	rti		; 40

	clv		; B8
	sec		; 38
	sbc $00.b,S		; E3 00
	brk $18.b		; 00 18
	brk $E0.b		; 00 E0
	ora $C3.b,S		; 03 C3
	ora $83.b,S		; 03 83
	ora ($01.b,X)		; 01 01
	asl $06.b		; 06 06
	ora $01.b		; 05 01
	ora $83.b,S		; 03 83
	stx $07.b		; 86 07
	rti		; 40

	ora $03.b,S		; 03 03
	ora [$01.b]		; 07 01
	ora [$00.b]		; 07 00
	ora [$06.b]		; 07 06
	ora $000F00.l		; 0F 00 0F 00
	ora $AF0F02.l		; 0F 02 0F AF
	and ($5C.b),Y		; 31 5C
	adc ($8E.b),Y		; 71 8E
	sbc $3E.b,S		; E3 3E
	sbc $18.b,S		; E3 18
.ACCU 16
.INDEX 16
	rep #$7C		; C2 7C
	lsr $7C.b		; 46 7C
	lsr $30.b		; 46 30
	mvp $10,$DE		; 44 DE 10
	sta $203C01.l		; 8F 01 3C 20
	trb $7E00.w		; 1C 00 7E
	.db $42, $38		; 42 38
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	mvp $1B,$07		; 44 07 1B
	ora $1F.b,S		; 03 1F
	ora $1D.b,S		; 03 1D
	ora ($0F.b,X)		; 01 0F
	ora ($0F.b,X)		; 01 0F
	ora ($06.b,X)		; 01 06
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	ora $080F0C.l		; 0F 0C 0F 08
	ora $04070A.l		; 0F 0A 07 04
	ora [$04.b]		; 07 04
	ora $03.b,S		; 03 03
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	bit $78FB.w,X		; 3C FB 78
	lda [$71.b],Y		; B7 71
	lda $66AF73.l		; AF 73 AF 66
	lda $30FF20.l,X		; BF 20 FF 30
	sbc $FFDF30.l		; EF 30 DF FF
	sta [$FE.b]		; 87 FE
	dex		; CA
	sbc $FBD4.w,X		; FD D4 FB
	cld		; D8
	adc [$40.b],Y		; 77 40
	ply		; 7A
	php		; 08
	sbc $BB5C.w,X		; FD 5C BB
	tay		; A8
	ora $9F0FA3.l,X		; 1F A3 0F 9F
	lda [$AF.b]		; A7 AF
	ora $08D1.w,Y		; 19 D1 08
	sbc $10E717.l		; EF 17 E7 10
	inx		; E8
	ora $EA.b,X		; 15 EA
	ora $63.b,S		; 03 63
	ora [$7F.b]		; 07 7F
	sta $7F.b,S		; 83 7F
	bcc  63.b		; 90 3F
	pha		; 48
	ora $B01FD7.l,X		; 1F D7 1F B0
	ora [$75.b],Y		; 17 75
	ora $C7.b,X		; 15 C7
	txs		; 9A
	cmp ($DE.b,X)		; C1 DE
	cpy $CA.b		; C4 CA
	cmp ($CF.b),Y		; D1 CF
	dey		; 88
	sta [$04.b],Y		; 97 04
	tsa		; 3B
	jsr $10DE.w		; 20 DE 10
	inc $A081.w		; EE 81 A0
	sta ($E0.b,X)		; 81 E0
	sta $14F4.w		; 8D F4 14
	beq -104.b		; F0 98
	inx		; E8
	trb $2C84.w		; 1C 84 2C
	jsr $1030.w		; 20 30 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	jmp ($8634.w,X)		; 7C 34 86
	sei		; 78
	cop $F8.b		; 02 F8
	cop $98.b		; 02 98
	jsl $00661C.l		; 22 1C 66 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $80F8.w		; 20 F8 80
	jsr ($FC00.w,X)		; FC 00 FC
	brk $FC.b		; 00 FC
	jsr $60F8.w		; 20 F8 60
	jsr $28DF.w		; 20 DF 28
	stp		; DB
	php		; 08
	jsr ($7C08.w,X)		; FC 08 7C
	bpl 108.b		; 10 6C
	trb $0E66.w		; 1C 66 0E
	and [$00.b],Y		; 37 00
	ora $642061.l,X		; 1F 61 20 64
	jsr $2020.w		; 20 20 20
	jsr $3020.w		; 20 20 30
	bmi  60.b		; 30 3C
	sec		; 38
	asl $0018.w,X		; 1E 18 00
	brk $28.b		; 00 28
	mvn $38,$00		; 54 00 38
	brk $10.b		; 00 10
	brk $28.b		; 00 28
	plp		; 28
	jmp ($5428.w,X)		; 7C 28 54
	brk $38.b		; 00 38
	brk $10.b		; 00 10
	plp		; 28
	plp		; 28
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plp		; 28
	brk $28.b		; 00 28
	plp		; 28
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	bpl  63.b		; 10 3F
	brk $3F.b		; 00 3F
	asl $1F.b		; 06 1F
	brk $19.b		; 00 19
	tsb $11.b		; 04 11
	ora $31.b		; 05 31
	asl $0E38.w		; 0E 38 0E
	sei		; 78
	ora $081801.l,X		; 1F 01 18 08
	brk $00.b		; 00 00
	asl $0F08.w		; 0E 08 0F
	ora ($0E.b,X)		; 01 0E
	brk $27.b		; 00 27
	jsr $0027.w		; 20 27 00
	tsb $3FBF.w		; 0C BF 3F
	lda $08BF26.l,X		; BF 26 BF 08
	sbc $0EFF11.l,X		; FF 11 FF 0E
	sbc ($12.b),Y		; F1 12
	inx		; E8
	asl $5FF8.w		; 0E F8 5F
	rti		; 40

	adc $407F40.l,X		; 7F 40 7F 40
	rol $5900.w		; 2E 00 59
	rti		; 40

	bvc   0.b		; 50 00
	eor ($0C.b,X)		; 41 0C
	bit #$108A.w		; 89 8A 10
	sed		; F8
	bra  -8.b		; 80 F8
	beq  -4.b		; F0 FC
	tya		; 98
	inc $FE34.w,X		; FE 34 FE
	bit $DE.b		; 24 DE
	bne  12.b		; D0 0C
	cpx #$101C.w		; E0 1C 10
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $DC.b		; 00 DC
	brk $BC.b		; 00 BC
	brk $14.b		; 00 14
	rti		; 40

	sty $20.b		; 84 20
	dey		; 88
	rti		; 40

	ora $0F17.w		; 0D 17 0F
	and $1F.b,X		; 35 1F
	bit $1F.b		; 24 1F
	pla		; 68
	asl $1E69.w,X		; 1E 69 1E
	adc #$6B1C.w		; 69 1C 6B
	trb $1F6F.w		; 1C 6F 1F
	clc		; 18
	ora $3B3F0A.l,X		; 1F 0A 3F 3B
	and $163F37.l,X		; 3F 37 3F 16
	and $153F16.l,X		; 3F 16 3F 15
	and $6A8110.l,X		; 3F 10 81 6A
	sta $76.b,S		; 83 76
	ora [$F6.b]		; 07 F6
	ora [$F6.b]		; 07 F6
	and $DA.b,S		; 23 DA
	adc ($8E.b),Y		; 71 8E
	beq  45.b		; F0 2D
	beq 110.b		; F0 6E
	cpx #$E0BE.w		; E0 BE E0
	ldx $4EE2.w		; AE E2 4E
	sep #$0E		; E2 0E
	beq -90.b		; F0 A6
	sed		; F8
	tda		; 7B
	jsr ($FCDF.w,X)		; FC DF FC
	sta $008E.w,X		; 9D 8E 00
	tsb $04.b		; 04 04
	ora $041804.l,X		; 1F 04 18 04
	and $00.b,X		; 35 00
	cpx $00.b		; E4 00
	stx $9E80.w		; 8E 80 9E
	sty $00.b		; 84 00
	xce		; FB
	tsb $FB.b		; 04 FB
	tsb $E0.b		; 04 E0
	tsb $FB.b		; 04 FB
	brk $CB.b		; 00 CB
	brk $3B.b		; 00 3B
	bra -15.b		; 80 F1
	tsb $E5.b		; 04 E5
	eor $0C2E0E.l		; 4F 0E 2E 0C
	rol $7C1C.w,X		; 3E 1C 7C
	ora $3BFD.w,Y		; 19 FD 3B
	sbc ($36.b)		; F2 36
	adc $2C.b		; 65 2C
	txy		; 9B
	php		; 08
	tsb $9F.b		; 04 9F
	tsb $18DE.w		; 0C DE 18
	dec $9C10.w,X		; DE 10 9C
	and ($3E.b)		; 32 3E
	and $BC.b		; 25 BC
	phd		; 0B
	clv		; B8
	ora [$60.b]		; 07 60
	rts		; 60

	sbc $0BF137.l,X		; FF 37 F1 0B
	sec		; 38
	ora ($07.b,X)		; 01 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $4E1C.w		; 1C 1C 4E
	rti		; 40

	ora [$10.b],Y		; 17 10
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lsr $1CC3.w,X		; 5E C3 1C
	sbc ($CE.b),Y		; F1 CE
	adc $017E.w,Y		; 79 7E 01
	bit $00E1.w		; 2C E1 00
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	ldy $2E80.w,X		; BC 80 2E
	jsr $1096.w		; 20 96 10
	inc $5E00.w,X		; FE 00 5E
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	cpx #$B040.w		; E0 40 B0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $60.b		; 00 60
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $EF.b		; 04 EF
	tsb $4F.b		; 04 4F
	tsb $4B.b		; 04 4B
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $0E40.w		; 4D 40 0E
	asl A		; 0A
	asl $06.b		; 06 06
	asl $02.b		; 06 02
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$09F6.w		; 09 F6 09
	inc $11.b,X		; F6 11
	inc $EE11.w		; EE 11 EE
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	brk $FF.b		; 00 FF
	jsr $DBDF.w		; 20 DF DB
	ora #$09BB.w		; 09 BB 09
	and [$11.b],Y		; 37 11
	and [$11.b],Y		; 37 11
	ora [$01.b]		; 07 01
	ora ($01.b,X)		; 01 01
	bit $00.b		; 24 00
	adc $21.b		; 65 21
	and $DC.b,S		; 23 DC
	jsr $11DF.w		; 20 DF 11
	sbc $15EE12.l		; EF 12 EE 15
	cpx $FC0D.w		; EC 0D FC
	ora $02FC.w		; 0D FC 02
	inc $236F.w,X		; FE 6F 23
	ror $20.b		; 66 20
	stz $10.b,X		; 74 10
	adc ($10.b),Y		; 71 10
	adc ($10.b,S),Y		; 73 10
	adc $00.b,S		; 63 00
	ora ($10.b,S),Y		; 13 10
	cmp $C4.b		; C5 C4
	asl $0E93.w		; 0E 93 0E
	sta ($04.b,S),Y		; 93 04
	cmp ($80.b,S),Y		; D3 80
	ply		; 7A
	bra  62.b		; 80 3E
	bne  30.b		; D0 1E
	inx		; E8
	asl $06F0.w		; 0E F0 06
	ora $0C11.w,X		; 1D 11 0C
	brk $8E.b		; 00 8E
	.db $82, $C6, $42		; 82 C6 42
	inx		; E8
	jsr $00E4.w		; 20 E4 00
	beq   0.b		; F0 00
	sed		; F8
	brk $00.b		; 00 00
	sed		; F8
	cpy #$E13E.w		; C0 3E E1
	sta $E0CBF1.l,X		; 9F F1 CB E0
	txs		; 9A
	bra 123.b		; 80 7B
	brk $F3.b		; 00 F3
	php		; 08
	sbc $FC10F0.l		; EF F0 10 FC
	cmp $FD.b		; C5 FD
	adc $FA.b		; 65 FA
	and $F2.b,X		; 35 F2
	adc $E3.b		; 65 E3
	stx $81.b		; 86 81
	ora $1E00.w		; 0D 00 1E
	sei		; 78
	bvs -16.b		; 70 F0
	cpx #$C0E0.w		; E0 E0 C0
	cpy #$0080.w		; C0 80 00
	brk $20.b		; 00 20
	bcc  64.b		; 90 40
	bne  32.b		; D0 20
	sed		; F8
	rts		; 60

	sed		; F8
	cpy #$80F8.w		; C0 F8 80
	beq   0.b		; F0 00
	cpx #$E000.w		; E0 00 E0
	ldy #$2048.w		; A0 48 20
	tsb $CEC0.w		; 0C C0 CE
	brk $FF.b		; 00 FF
	cop $FE.b		; 02 FE
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cop $FE.b		; 02 FE
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	trb $7914.w		; 1C 14 79
	pha		; 48
	pea $0694.w		; F4 94 06
	asl $83.b		; 06 83
	sta $8D.b,S		; 83 8D
	tsb $4041.w		; 0C 41 40
	cpy #$0880.w		; C0 80 08
	cpx #$1800.w		; E0 00 18
	bra  -1.b		; 80 FF
	and ($F3.b)		; 32 F3
	sta $7E81.w,X		; 9D 81 7E
	brk $E7.b		; 00 E7
	cpx #$FFC3.w		; E0 C3 FF
	brk $18.b		; 00 18
	cpx #$0004.w		; E0 04 00
	brk $CD.b		; 00 CD
	cmp ($7E.b,X)		; C1 7E
	brk $FF.b		; 00 FF
	brk $9F.b		; 00 9F
	brk $C0.b		; 00 C0
	brk $E2.b		; 00 E2
	cmp $C0FFC6.l,X		; DF C6 FF C0
	lda $F07F80.l,X		; BF 80 7F F0
	ora $80BBC0.l		; 0F C0 BB 80
	adc ($00.b,S),Y		; 73 00
	sta $F6.b,S		; 83 F6
	jsr $00EE.w		; 20 EE 00
	cmp ($41.b,X)		; C1 41
	xce		; FB
	bra  -8.b		; 80 F8
	sed		; F8
	beq  80.b		; F0 50
	sbc ($A1.b,X)		; E1 A1
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	ora $0F.b,S		; 03 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $0F.b,S		; 03 0F
	cop $1F.b		; 02 1F
	tsb $3F.b		; 04 3F
	tsb $083F.w		; 0C 3F 08
	rol $3C10.w,X		; 3E 10 3C
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	ora $01.b		; 05 01
	tsb $0C00.w		; 0C 00 0C
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	asl $03.b		; 06 03
	ora $03.b		; 05 03
	ora [$07.b]		; 07 07
	phd		; 0B
	ora [$0F.b]		; 07 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$06.b]		; 07 06
	ora [$00.b]		; 07 00
	ora [$04.b]		; 07 04
	ora $0F0708.l		; 0F 08 07 0F
	ora $1F0F17.l		; 0F 17 0F 1F
	ora $3A0777.l		; 0F 77 07 3A
	ora $1F.b,S		; 03 1F
	ora [$0B.b]		; 07 0B
	ora [$1F.b]		; 07 1F
	ora $080F00.l		; 0F 00 0F 08
	ora $283F10.l,X		; 1F 10 3F 28
	ora $080F15.l,X		; 1F 15 0F 08
	ora [$04.b]		; 07 04
	ora $170F00.l		; 0F 00 0F 17
	ora $6F1F3F.l		; 0F 3F 1F 6F
	ora $CF3FFC.l,X		; 1F FC 3F CF
	ora ($3E.b,X)		; 01 3E
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	ora $001F18.l,X		; 1F 18 1F 00
	and $437F30.l,X		; 3F 30 7F 43
	sbc $191FB0.l,X		; FF B0 1F 19
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	ora [$3B.b]		; 07 3B
	and $7FFFDF.l,X		; 3F DF FF 7F
	sbc $FEFFFF.l,X		; FF FF FF FE
	inc $FCFD.w,X		; FE FD FC
	xce		; FB
	jsr ($1FF3.w,X)		; FC F3 1F
	trb $7F.b		; 14 7F
	jsr $80FF.w		; 20 FF 80
	sbc $01FF00.l,X		; FF 00 FF 01
	sbc $04FE02.l,X		; FF 02 FE 04
	sbc $F7F80C.l,X		; FF 0C F8 F7
	pea $E8EB.w		; F4 EB E8
	cmp [$F9.b],Y		; D7 F9
	sta [$F3.b]		; 87 F3
	ora $F0DFE0.l		; 0F E0 DF F0
	sbc $FFEFF0.l		; EF F0 EF FF
	php		; 08
	inc $FD14.w,X		; FE 14 FD
	plp		; 28
	xce		; FB
	sei		; 78
	sbc [$F0.b],Y		; F7 F0
	cpx #$FD20.w		; E0 20 FD
	bpl  -5.b		; 10 FB
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E080.w		; C0 80 E0
	rti		; 40

	rts		; 60

	cpy #$00E0.w		; C0 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	bra  48.b		; 80 30
	cpy #$6018.w		; C0 18 60
	php		; 08
	bmi -60.b		; 30 C4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$E040.w		; C0 40 E0
	jsr $10F0.w		; 20 F0 10
	sed		; F8
	php		; 08
	sei		; 78
	rti		; 40

	ora $FE.b		; 05 FE
	sta $DE.b,X		; 95 DE
	php		; 08
	lda $03C680.l,X		; BF 80 C6 03
	sta [$03.b]		; 87 03
	ora $02.b,S		; 03 02
	cop $00.b		; 02 00
	brk $B5.b		; 00 B5
	bmi -91.b		; 30 A5
	brk $6B.b		; 00 6B
	and $00.b,S		; 23 00
	ora [$03.b]		; 07 03
	ora [$03.b]		; 07 03
	ora [$02.b]		; 07 02
	ora [$00.b]		; 07 00
	ora [$FE.b]		; 07 FE
	brk $FF.b		; 00 FF
	brk $73.b		; 00 73
	beq   3.b		; F0 03
	ora $000300.l,X		; 1F 00 03 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $8F.b		; 00 8F
	bra   4.b		; 80 04
	sty $00.b		; 84 00
	bra   0.b		; 80 00
	cpy #$F080.w		; C0 80 F0
	brk $F0.b		; 00 F0
	asl $0FFF.w,X		; 1E FF 0F
	cmp $1CCF1F.l,X		; DF 1F CF 1C
	dec $ED89.w		; CE 89 ED
	sta $EB.b,S		; 83 EB
	bra -28.b		; 80 E4
	ora ($FF.b,X)		; 01 FF
	tsb $0E1F.w		; 0C 1F 0E
	and $883F0F.l,X		; 3F 0F 3F 88
	and $C31FC1.l,X		; 3F C1 1F C3
	ora $C11FC0.l,X		; 1F C0 1F C1
	ora ($06.b,X)		; 01 06
	beq   6.b		; F0 06
	iny		; C8
	cpx $08F0.w		; EC F0 08
	brk $E0.b		; 00 E0
	beq -48.b		; F0 D0
	cpx #$0000.w		; E0 00 00
	bne -32.b		; D0 E0
	brk $1F.b		; 00 1F
	brk $FF.b		; 00 FF
	cpy #$00FE.w		; C0 FE 00
	inc $FC80.w,X		; FE 80 FC
	bra  -4.b		; 80 FC
	brk $F8.b		; 00 F8
	bra  -8.b		; 80 F8
	brk $F7.b		; 00 F7
	php		; 08
	sbc ($08.b,S),Y		; F3 08
	sbc $0A.b,X		; F5 0A
	inc $0A.b,X		; F6 0A
	ror $0A.b,X		; 76 0A
	rol $02.b,X		; 36 02
	asl $00.b,X		; 16 00
	inc $0880.w,X		; FE 80 08
	bpl  28.b		; 10 1C
	bmi  62.b		; 30 3E
	adc ($3F.b)		; 72 3F
	and ($1F.b)		; 32 1F
	ora ($1F.b)		; 12 1F
	cop $0F.b		; 02 0F
	ora ($10.b),Y		; 11 10
	rts		; 60

	sbc $16F130.l,X		; FF 30 F1 16
	beq  11.b		; F0 0B
	sed		; F8
	ora $FC.b		; 05 FC
	cop $1E.b		; 02 1E
	brk $3F.b		; 00 3F
	adc ($03.b)		; 72 03
	jmp ($3F1C.w,X)		; 7C 1C 3F
	ora ($1F.b,X)		; 01 1F
	brk $07.b		; 00 07
	brk $1B.b		; 00 1B
	clc		; 18
	ora $04.b		; 05 04
	ora ($01.b,X)		; 01 01
	jsr ($9800.w,X)		; FC 00 98
	cpx $A8.b		; E4 A8
	bmi  -4.b		; 30 FC
	tsb $00.b		; 04 00
	tsb $70.b		; 04 70
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $DC04.w		; 1C 04 DC
	bpl  -8.b		; 10 F8
	brk $F8.b		; 00 F8
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	tsb $1E1C.w		; 0C 1C 1E
	clc		; 18
	rol $7068.w,X		; 3E 68 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	php		; 08
	asl $3F18.w,X		; 1E 18 3F
	brk $7F.b		; 00 7F
	rti		; 40

	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	asl $0071.w		; 0E 71 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	php		; 08
	and $00002E.l,X		; 3F 2E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1C.b,S		; 03 1C
	ora $9F6367.l,X		; 1F 67 63 9F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $383F0B.l		; 0F 0B 3F 38
	sbc $0000E0.l,X		; FF E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F038.w		; C0 38 F0
	inc $FBFC.w		; EE FC FB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -48.b		; F0 D0
	jsr ($FE14.w,X)		; FC 14 FE
	asl $0D.b		; 06 0D
	adc $8D.b,S		; 63 8D
	and $C1.b,S		; 23 C1
	ora ($E1.b,S),Y		; 13 E1
	ora ($F0.b),Y		; 11 F0
	ora #$89F0.w		; 09 F0 89
	sei		; 78
	cmp $38.b		; C5 38
	adc $C0.b		; 65 C0
	jmp $20E0.w		; 4C E0 20
	cpx #$F000.w		; E0 00 F0
	bpl -15.b		; 10 F1
	ora ($79.b,X)		; 01 79
	ora #$0038.w		; 09 38 00
	trb $C004.w		; 1C 04 C0
	rol $3EC4.w,X		; 3E C4 3E
	cpx $3E.b		; E4 3E
	inx		; E8
	dec A		; 3A
	iny		; C8
	inc A		; 1A
	iny		; C8
	inc A		; 1A
	pla		; 68
	inc A		; 1A
	inx		; E8
	stz $0CCC.w,X		; 9E CC 0C
	inx		; E8
	plp		; 28
	iny		; C8
	php		; 08
	cpy $00.b		; C4 00
	cpx $00.b		; E4 00
	cpx $00.b		; E4 00
	cpx $00.b		; E4 00
	rts		; 60

	brk $01.b		; 00 01
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	tsb $07.b		; 04 07
	tsb $07.b		; 04 07
	tsb $07.b		; 04 07
	tsb $07.b		; 04 07
	tsb $0407.w		; 0C 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc $38.b,S		; E3 38
	sbc $38.b,S		; E3 38
	cmp $2C.b,S		; C3 2C
	cmp $26.b,S		; C3 26
	sta ($23.b,X)		; 81 23
	bra  33.b		; 80 21
	cpy #$C040.w		; C0 40 C0
	rti		; 40

	cmp [$00.b]		; C7 00
	cmp $24E708.l		; CF 08 E7 24
	sbc ($20.b,X)		; E1 20
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora [$03.b]		; 07 03
	tsb $0B04.w		; 0C 04 0B
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	ora ($1E.b,X)		; 01 1E
	ora $1C.b,S		; 03 1C
	asl $19.b		; 06 19
	ora $00.b,S		; 03 00
	ora [$03.b]		; 07 03
	tsb $04.b		; 04 04
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $030F01.l		; 0F 01 0F 03
	asl $0306.w		; 0E 06 03
	jsr ($1EE1.w,X)		; FC E1 1E
	clc		; 18
	sbc [$00.b]		; E7 00
	sbc $05F9.w,X		; FD F9 05
	sta ($7D.b,X)		; 81 7D
	bpl -22.b		; 10 EA
	and ($CA.b)		; 32 CA
	cmp $E5F713.l,X		; DF 13 F7 E5
	ora $E018.w,Y		; 19 18 E0
	ora $F8.b,S		; 03 F8
	xce		; FB
	bra -125.b		; 80 83
	bvs  23.b		; 70 17
	beq  55.b		; F0 37
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $EF1F1F.l,X		; FF 1F 1F EF
	eor [$3B.b]		; 47 3B
	and $5D.b,S		; 23 5D
	bne -17.b		; D0 EF
	cpx #$FFF7.w		; E0 F7 FF
	brk $FF.b		; 00 FF
	bra  -1.b		; 80 FF
	cpx #$90FF.w		; E0 FF 90
	ora $EA0FD4.l,X		; 1F D4 0F EA
	ora $F2.b,S		; 03 F2
	brk $F8.b		; 00 F8
	sta ($7F.b,X)		; 81 7F
	cmp [$BF.b]		; C7 BF
	cmp $FFFFBF.l		; CF BF FF FF
	sbc $FBFCFF.l,X		; FF FF FC FB
	sed		; F8
	adc [$31.b],Y		; 77 31
	cmp $FFA6E7.l		; CF E7 A6 FF
	cli		; 58
	sbc $00FF60.l		; EF 60 FF 00
	sbc $05FF00.l,X		; FF 00 FF 05
	inc $FC8A.w,X		; FE 8A FC
	ldy $00.b,X		; B4 00
	bra   0.b		; 80 00
	cpy #$6080.w		; C0 80 60
	cpy #$C0B0.w		; C0 B0 C0
	bcs -32.b		; B0 E0
	cld		; D8
	cpx #$F0F8.w		; E0 F8 F0
	inx		; E8
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$E0C0.w		; C0 C0 E0
	rts		; 60

	cpx #$F040.w		; E0 40 F0
	bmi -16.b		; 30 F0
	brk $F8.b		; 00 F8
	clc		; 18
	bmi -49.b		; 30 CF
	jsr ($8EFB.w,X)		; FC FB 8E
	adc $07.b,X		; 75 07
	dec A		; 3A
	ora ($0E.b,X)		; 01 0E
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	sbc ($B0.b),Y		; F1 B0
	sbc $8AFF05.l,X		; FF 05 FF 8A
	ora $050715.l,X		; 1F 15 07 05
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $DB3737.l		; EF 37 37 DB
	ora $F70FED.l,X		; 1F ED 0F F7
	sta [$7B.b]		; 87 7B
	eor $BD.b,S		; 43 BD
	ora $FC.b,S		; 03 FC
	ora ($FE.b,X)		; 01 FE
	sbc $247FC8.l,X		; FF C8 7F 24
	lda $48DF92.l,X		; BF 92 DF 48
	sbc $4AFFA4.l		; EF A4 FF 4A
	adc $11DF47.l,X		; 7F 47 DF 11
	beq  -4.b		; F0 FC
	sed		; F8
	pea $FEF8.w		; F4 F8 FE
	jsr ($FCFB.w,X)		; FC FB FC
	sbc $FFFDFE.l,X		; FF FE FD FF
	sbc $F87FFF.l,X		; FF FF 7F F8
	brk $FC.b		; 00 FC
	tsb $00FC.w		; 0C FC 00
	inc $FF06.w,X		; FE 06 FF
	ora ($FF.b,X)		; 01 FF
	cop $FF.b		; 02 FF
	brk $FF.b		; 00 FF
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	asl $00.b		; 06 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $00.b,S		; 03 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $9D.b		; 00 9D
	.db $62, $3F, $DF		; 62 3F DF
	adc $7EC1BF.l,X		; 7F BF C1 7E
	brk $FF.b		; 00 FF
	ora $1C.b,S		; 03 1C
	ora $FD0377.l		; 0F 77 03 FD
	lda $207F9D.l,X		; BF 9D 7F 20
	sbc $81C340.l,X		; FF 40 C3 81
	ora ($00.b,X)		; 01 00
	ora $283F0B.l		; 0F 0B 3F 28
	ora $FDFE1A.l,X		; 1F 1A FE FD
	sbc $FFFF7E.l,X		; FF 7E FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	and $DF3FFF.l,X		; 3F FF 3F DF
	cmp $03FFEF.l,X		; DF EF FF 03
	sbc $00FF81.l,X		; FF 81 FF 00
	sbc $80FF00.l,X		; FF 00 FF 80
	adc $20BF00.l,X		; 7F 00 BF 20
	sbc $E23C10.l,X		; FF 10 3C E2
	jmp $8CB8C2.l		; 5C C2 B8 8C
	bvs  16.b		; 70 10
	cpx #$C030.w		; E0 30 C0
	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	jmp $80BC40.l		; 5C 40 BC 80
	bvs   0.b		; 70 00
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $82.b		; 00 82
	inc $FF12.w,X		; FE 12 FF
	bpl  -1.b		; 10 FF
	brk $F7.b		; 00 F7
	cop $C7.b		; 02 C7
	and ($B7.b,S),Y		; 33 B7
	adc ($77.b,S),Y		; 73 77
	adc ($7F.b,S),Y		; 73 7F
	asl $00.b		; 06 00
	rol $00.b,X		; 36 00
	bvs   0.b		; 70 00
	cpy #$808F.w		; C0 8F 80
	lda $327F32.l,X		; BF 32 7F 32
	sbc $07FF32.l,X		; FF 32 FF 07
	trb $3C0F.w		; 1C 0F 3C
	ora [$74.b],Y		; 17 74
	rol $5CE1.w		; 2E E1 5C
.ACCU 16
.INDEX 16
	rep #$B0		; C2 B0
	sty $60.b		; 84 60
	php		; 08
	cpy #$0B10.w		; C0 10 0B
	php		; 08
	ora ($10.b,S),Y		; 13 10
	pld		; 2B
	jsr $405E.w		; 20 5E 40
	ldy $7C80.w,X		; BC 80 7C
	tsb $F0.b		; 04 F0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	rti		; 40

	bra  65.b		; 80 41
	brk $83.b		; 00 83
	ora ($07.b,X)		; 01 07
	cop $06.b		; 02 06
	ora $0C.b		; 05 0C
	ora $1C.b		; 05 1C
	phd		; 0B
	ora $40C0.w,Y		; 19 C0 40
	bra   0.b		; 80 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora $04.b		; 05 04
	ora $00.b,S		; 03 00
	phd		; 0B
	php		; 08
	asl $00.b		; 06 00
	tsb $0813.w		; 0C 13 08
	ora [$01.b],Y		; 17 01
	asl $0C03.w		; 0E 03 0C
	brk $0F.b		; 00 0F
	cop $0F.b		; 02 0F
	ora $0D.b		; 05 0D
	brk $08.b		; 00 08
	ora $0B0C.w		; 0D 0C 0B
	php		; 08
	ora [$01.b]		; 07 01
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	asl A		; 0A
	php		; 08
	ora $956908.l		; 0F 08 69 95
	cmp #$9035.w		; C9 35 90
	jmp ($EB14.w)		; 6C 14 EB
	rol $D9.b		; 26 D9
	rol $D9.b		; 26 D9
	jsr $41DF.w		; 20 DF 41
	adc $6BE8.w,Y		; 79 E8 6B
	cld		; D8
	wai		; CB
	bcs -109.b		; B0 93
	stz $14.b,X		; 74 14
	inc $EE26.w		; EE 26 EE
	rol $28.b		; 26 28
	jsr $0086.w		; 20 86 00
	cpx #$D8EF.w		; E0 EF D8
	stp		; DB
	jmp $1C3CDD.l		; 5C DD 3C 1C
	ora $1B731F.l,X		; 1F 1F 73 1B
	rts		; 60

	brk $23.b		; 00 23
	stx $83.b		; 86 83
	sed		; F8
	cmp ($FC.b),Y		; D1 FC
	clc		; 18
	inc $7F1C.w,X		; FE 1C 7F
	ora $013F.w,Y		; 19 3F 01
	and $013F00.l,X		; 3F 00 3F 01
	clc		; 18
	ora ($FC.b,X)		; 01 FC
	ora ($F4.b,X)		; 01 F4
	ora #$00F8.w		; 09 F8 00
	inc $3F00.w,X		; FE 00 3F
	bra -128.b		; 80 80
	brk $7C.b		; 00 7C
	bra  56.b		; 80 38
	cmp $C0.b,S		; C3 C0
	xba		; EB
	rts		; 60

	sbc [$20.b]		; E7 20
	and ($12.b,S),Y		; 33 12
	trb $C0.b		; 14 C0
	brk $FC.b		; 00 FC
	brk $C6.b		; 00 C6
	tya		; 98
	jmp $3B7B73.l		; 5C 73 7B 3B
	tda		; 7B
	tsa		; 3B
	tsa		; 3B
	ora $1D3B.w,Y		; 19 3B 1D
	ora $1D0D.w,X		; 1D 0D 1D
	asl $0E.b		; 06 0E
	ora ($07.b,X)		; 01 07
	and ($FF.b)		; 32 FF
	and ($7F.b,S),Y		; 33 7F
	ora ($7F.b),Y		; 11 7F
	ora $087F.w,Y		; 19 7F 08
	and $023F05.l,X		; 3F 05 3F 02
	ora $000F01.l,X		; 1F 01 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	cpx #$E810.w		; E0 10 E8
	bpl -24.b		; 10 E8
	bmi -56.b		; 30 C8
	bmi -56.b		; 30 C8
	rti		; 40

	sed		; F8
	bvs  -4.b		; 70 FC
	sec		; 38
	jmp ($7C00.w,X)		; 7C 00 7C
	bvs  32.b		; 70 20
	bvs  32.b		; 70 20
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	rts		; 60

	brk $70.b		; 00 70
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000400.l		; 0F 00 04 00
	inc $E200.w,X		; FE 00 E2
	bra 113.b		; 80 71
	cpy #$00B9.w		; C0 B9 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $01.b,S		; 03 01
	ora ($9D.b,X)		; 01 9D
	sta $AEEE.w,X		; 9D EE AE
	inc $56.b,X		; F6 56
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora $06.b,S		; 03 06
	ora [$0C.b]		; 07 0C
	asl $0C19.w		; 0E 19 0C
	and ($00.b,S),Y		; 33 00
	ror $FC18.w,X		; 7E 18 FC
	rti		; 40

	clv		; B8
	rts		; 60

	bcc   1.b		; 90 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($1E.b,X)		; 01 1E
	ora ($34.b)		; 12 34
	bit $18.b		; 24 18
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	bra -64.b		; 80 C0
	rts		; 60

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora ($0F.b,X)		; 01 0F
	ora ($0F.b,X)		; 01 0F
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	asl $33.b		; 06 33
	tsb $1866.w		; 0C 66 18
	cpy $F830.w		; CC 30 F8
	rti		; 40

	beq  96.b		; F0 60
	cpx #$6000.w		; E0 00 60
	brk $40.b		; 00 40
	trb $3810.w		; 1C 10 38
	jsr $4070.w		; 20 70 40
	bra   0.b		; 80 00
	cpy #$6000.w		; C0 00 60
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $66.b		; 00 66
	brk $6C.b		; 00 6C
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $B2.b		; 00 B2
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp.w [$D898]		; DC 98 D8
	bcc -48.b		; 90 D0
	bra -64.b		; 80 C0
	bra  64.b		; 80 40
	rti		; 40

	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $06.b,S		; 03 06
	ora $0C.b,S		; 03 0C
	brk $1F.b		; 00 1F
	asl $3F.b		; 06 3F
	bpl 110.b		; 10 6E
	clc		; 18
	stz $00.b		; 64 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	tsb $0D.b		; 04 0D
	ora #$0006.w		; 09 06 00
	bmi  32.b		; 30 20
	sec		; 38
	jsr $E8C0.w		; 20 C0 E8
	cpx #$E0FC.w		; E0 FC E0
	jsr ($FEF0.w,X)		; FC F0 FE
	iny		; C8
	ldx $FC18.w,Y		; BE 18 FC
	cpy #$B0AC.w		; C0 AC B0
	cli		; 58
	cpy #$E800.w		; C0 00 E8
	brk $F8.b		; 00 F8
	php		; 08
	jsr ($EC04.w,X)		; FC 04 EC
	rti		; 40

	pha		; 48
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	rti		; 40

	cpx #$C090.w		; E0 90 C0
	bcc -32.b		; 90 E0
	brk $40.b		; 00 40
	jsr $8080.w		; 20 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$A080.w		; A0 80 A0
	bra -16.b		; 80 F0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc ($10.b)		; 72 10
	sei		; 78
	clc		; 18
	bit $3E0C.w,X		; 3C 0C 3E
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $3400.w		; 2C 00 34
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3A.b		; 00 3A
	dec A		; 3A
	trb $0E1C.w		; 1C 1C 0E
	asl $04.b		; 06 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1A.b		; 00 1A
	ror $3E0C.w,X		; 7E 0C 3E
	asl $1E.b		; 06 1E
	brk $0E.b		; 00 0E
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	tsb $0F.b		; 04 0F
	brk $0B.b		; 00 0B
	ora ($0B.b,X)		; 01 0B
	tsb $09.b		; 04 09
	tsb $09.b		; 04 09
	ora $09.b		; 05 09
	brk $0F.b		; 00 0F
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	jsr $1050.w		; 20 50 10
	inx		; E8
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	bpl -68.b		; 10 BC
	bpl -66.b		; 10 BE
	tsb $AA.b		; 04 AA
	tsb $2A.b		; 04 2A
	jsr $3020.w		; 20 20 30
	bpl   0.b		; 10 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $08.b		; 00 08
	brk $1C.b		; 00 1C
	tsb $14.b		; 04 14
	tsb $02.b		; 04 02
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	tsb $07.b		; 04 07
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	tsb $01.b		; 04 01
	tsb $07.b		; 04 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	tsb $07.b		; 04 07
	tsb $07.b		; 04 07
	tsb $03.b		; 04 03
	brk $28.b		; 00 28
	sty $CC28.w		; 8C 28 CC
	tay		; A8
	cpy $C4B0.w		; CC B0 C4
	bmi  70.b		; 30 46
	trb $66.b		; 14 66
	sty $66.b,X		; 94 66
	pei ($66.b)		; D4 66
	bcs -128.b		; B0 80
	bcs -128.b		; B0 80
	stz $44.b,X		; 74 44
	jmp ($FC44.w,X)		; 7C 44 FC
	mvp $40,$D8		; 44 D8 40
	cld		; D8
	rti		; 40

	tya		; 98
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $001F00.l		; 0F 00 1F 00
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1D.b		; 00 1D
	trb $0300.w		; 1C 00 03
	brk $01.b		; 00 01
	brk $C1.b		; 00 C1
	bra  96.b		; 80 60
	rti		; 40

	bcs  32.b		; B0 20
	cld		; D8
	bpl -20.b		; 10 EC
	dey		; 88
	ror $03.b,X		; 76 03
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	cpx #$7020.w		; E0 20 70
	bpl -72.b		; 10 B8
	dey		; 88
	sbc [$7B.b],Y		; F7 7B
	adc ($BD.b,S),Y		; 73 BD
	and ($DD.b,S),Y		; 33 DD
	ora ($EC.b,S),Y		; 13 EC
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	sbc $42FF84.l,X		; FF 84 FF 42
	sbc $97FF22.l,X		; FF 22 FF 97
	sbc $E9FBC5.l,X		; FF C5 FB E9
	xce		; FB
	sbc $FDFF.w,Y		; F9 FF FD
	cpy #$C0B0.w		; C0 B0 C0
	bcs -32.b		; B0 E0
	cld		; D8
	beq -50.b		; F0 CE
	beq -49.b		; F0 CF
	beq -17.b		; F0 EF
	sbc ($ED.b)		; F2 ED
	inc $EB.b,X		; F6 EB
	cpx #$F060.w		; E0 60 F0
	bvc -16.b		; 50 F0
	jsr $34FC.w		; 20 FC 34
	inc $FF32.w,X		; FE 32 FF
	ora ($FF.b),Y		; 11 FF
	ora ($FF.b)		; 12 FF
	trb $3E.b		; 14 3E
	ora ($00.b,X)		; 01 00
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
	ora ($00.b,X)		; 01 00
	adc $20CFC0.l,X		; 7F C0 CF 20
	and $404F00.l,X		; 3F 00 4F 40
	adc $607FE0.l,X		; 7F E0 7F 60
	sbc $03FFE0.l,X		; FF E0 FF 03
	.db $82, $87, $F6		; 82 87 F6
	ora [$F4.b]		; 07 F4
	ora $E80FFC.l		; 0F FC 0F E8
	eor $E84FE8.l		; 4F E8 4F E8
	cmp $CE3FE8.l		; CF E8 3F CE
	adc $9F7F8F.l,X		; 7F 8F 7F 9F
	adc $1FFF9F.l,X		; 7F 9F FF 1F
	sbc $3DFE3E.l,X		; FF 3E FE 3D
	jsr ($FF3B.w,X)		; FC 3B FF
	and ($FF.b),Y		; 31 FF
	bvs  -1.b		; 70 FF
	rts		; 60

	sbc $E0FF60.l,X		; FF 60 FF E0
	sbc $C2FFC1.l,X		; FF C1 FF C2
	jsr ($F8C4.w,X)		; FC C4 F8
	sbc [$F0.b],Y		; F7 F0
	inc $DCE0.w		; EE E0 DC
	cpy #$80B8.w		; C0 B8 80
	bvs   0.b		; 70 00
	cpx #$E000.w		; E0 00 E0
	brk $20.b		; 00 20
	inc $FC0A.w,X		; FE 0A FC
	trb $F8.b		; 14 F8
	plp		; 28
	beq  80.b		; F0 50
	cpx #$C0A0.w		; E0 A0 C0
	rti		; 40

	bra -128.b		; 80 80
	cpy #$34C0.w		; C0 C0 34
	brk $0D.b		; 00 0D
	ora ($04.b,X)		; 01 04
	brk $03.b		; 00 03
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $000F00.l,X		; 3F 00 0F 00
	ora $00.b		; 05 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $09.b		; 00 09
	ora $D0.b		; 05 D0
	cmp $2808.w		; CD 08 28
	phk		; 4B
	cli		; 58
	sta [$30.b]		; 87 30
	sta $309B21.l		; 8F 21 9B 30
	txa		; 8A
	sec		; 38
	cop $F0.b		; 02 F0
	sta [$E5.b]		; 87 E5
	ora [$F0.b]		; 07 F0
	sta [$30.b],Y		; 97 30
	cmp $01DF10.l,X		; DF 10 DF 01
	dec $C704.w		; CE 04 C7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi 112.b		; 30 70
	stx $FBFC.w		; 8E FC FB
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $7BF7CF.l,X		; FF CF F7 7B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($FF74.w,X)		; FC 74 FF
	ora $FF.b		; 05 FF
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	bmi  -1.b		; 30 FF
	sty $00.b		; 84 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$6080.w		; C0 80 60
	bra -16.b		; 80 F0
	cpy #$00B0.w		; C0 B0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$20E0.w		; C0 E0 20
	beq  80.b		; F0 50
	tsb $0F.b		; 04 0F
	brk $0F.b		; 00 0F
	cop $0B.b		; 02 0B
	cop $0B.b		; 02 0B
	tsb $09.b		; 04 09
	asl $09.b		; 06 09
	ora [$09.b]		; 07 09
	ora [$01.b]		; 07 01
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora $01.b		; 05 01
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	clc		; 18
	bit $3800.w		; 2C 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	bmi -72.b		; 30 B8
	bpl -104.b		; 10 98
	brk $88.b		; 00 88
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	plp		; 28
	php		; 08
	clv		; B8
	dey		; 88
	ora ($04.b,X)		; 01 04
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pei ($67.b)		; D4 67
	sta ($3F.b,X)		; 81 3F
	stx $3E.b		; 86 3E
	lda ($30.b,S),Y		; B3 30
	sbc $00FE00.l,X		; FF 00 FE 00
	brk $FF.b		; 00 FF
	brk $1F.b		; 00 1F
	tya		; 98
	brk $C2.b		; 00 C2
	cop $F9.b		; 02 F9
	sec		; 38
	cmp $00FF00.l		; CF 00 FF 00
	sbc $7F7F00.l,X		; FF 00 7F 7F
	brk $00.b		; 00 00
	jmp ($98FF.w,X)		; 7C FF 98
	sta $A01CD3.l,X		; 9F D3 1C A0
	and $987F40.l,X		; 3F 40 7F 98
	sbc [$06.b]		; E7 06
	sbc $FF00.w,Y		; F9 00 FF
	sta ($80.b,X)		; 81 80
	stz $04.b		; 64 04
	xba		; EB
	phd		; 0B
	cmp [$10.b],Y		; D7 10
	lda [$20.b]		; A7 20
	eor $BE58.w,Y		; 59 58 BE
	stx $03.b		; 86 03
	brk $44.b		; 00 44
	tyx		; BB
	jsl $EF10DD.l		; 22 DD 10 EF
	dey		; 88
	adc [$44.b],Y		; 77 44
	tyx		; BB
	jsr $10DF.w		; 20 DF 10
	sbc $DCF708.l		; EF 08 F7 DC
	mvp $22,$EE		; 44 EE 22
	ror $10.b,X		; 76 10
	tsx		; BA
	dey		; 88
	jmp.w [$EE44]		; DC 44 EE
	jsr $1175.w		; 20 75 11
	sta $0109.w,Y		; 99 09 01
	inc $FE01.w,X		; FE 01 FE
	ora $FC.b,S		; 03 FC
	ora $FC.b,S		; 03 FC
	ora [$F9.b]		; 07 F9
	ora $E31FF1.l		; 0F F1 1F E3
	and $F5F7C7.l,X		; 3F C7 F7 F5
	sbc $535FE9.l		; EF E9 5F 53
	and $467F23.l,X		; 3F 23 7F 46
	sbc $1CFF8E.l,X		; FF 8E FF 1C
	sbc $EAF738.l,X		; FF 38 F7 EA
	sbc [$EA.b],Y		; F7 EA
	sbc $C6FFE2.l,X		; FF E2 FF C6
	sbc $9CFFCE.l,X		; FF CE FF 9C
	inc $FCBD.w,X		; FE BD FC
	tda		; 7B
	sbc $15FF15.l,X		; FF 15 FF 15
	sbc $39FF1D.l,X		; FF 1D FF 39
	sbc $63FF31.l,X		; FF 31 FF 63
	sbc $85FF42.l,X		; FF 42 FF 85
	ora $00.b,S		; 03 00
	tsb $01.b		; 04 01
	ora #$1101.w		; 09 01 11
	ora ($09.b,X)		; 01 09
	ora ($05.b,X)		; 01 05
	ora ($00.b,X)		; 01 00
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $001F00.l		; 0F 00 1F 00
	ora $000700.l		; 0F 00 07 00
	ora $00.b,S		; 03 00
	ora $E0.b,S		; 03 E0
	sbc $80FFC0.l,X		; FF C0 FF 80
	and $80FF80.l,X		; 3F 80 FF 80
	sbc $C0BFC0.l,X		; FF C0 BF C0
	sta $CFBB38.l		; 8F 38 BB CF
	inx		; E8
	sta $C017E8.l		; 8F E8 17 C0
	sta [$C4.b],Y		; 97 C4
	sta $C28BC4.l,X		; 9F C4 8B C2
	ora $F1.b		; 05 F1
	asl A		; 0A
	jsr ($34F8.w,X)		; FC F8 34
	beq  57.b		; F0 39
	sed		; F8
	and $3FFC.w,X		; 3D FC 3F
	ror $7E9F.w,X		; 7E 9F 7E
	sta $C73E.w,Y		; 99 3E C7
	ora ($FF.b,X)		; 01 FF
	xce		; FB
	wai		; CB
	inc $C6.b,X		; F6 C6
	plx		; FA
.ACCU 16
.INDEX 16
	rep #$FC		; C2 FC
	cpy #$60FE.w		; C0 FE 60
	inc $FF66.w,X		; FE 66 FF
	and $80CF.w,Y		; 39 CF 80
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $A0.b		; 00 A0
	brk $50.b		; 00 50
	brk $28.b		; 00 28
	brk $18.b		; 00 18
	brk $90.b		; 00 90
	brk $E0.b		; 00 E0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$4040.w		; C0 40 40
	ldy #$D0A0.w		; A0 A0 D0
	bne -32.b		; D0 E0
	cpx #$6060.w		; E0 60 60
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	bra  61.b		; 80 3D
	rti		; 40

	pla		; 68
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $DC.b		; 00 DC
	brk $D0.b		; 00 D0
	bra -48.b		; 80 D0
	rep #$00		; C2 00
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	cld		; D8
	brk $D8.b		; 00 D8
	brk $00.b		; 00 00
	jsr $FC00.w		; 20 00 FC
	brk $FC.b		; 00 FC
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
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$C040.w		; C0 40 C0
	brk $80.b		; 00 80
	rts		; 60

	bra  96.b		; 80 60
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C0A0.w		; E0 A0 C0
	bra -64.b		; 80 C0
	rti		; 40

	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs 116.b		; 70 74
	bvs 116.b		; 70 74
	bvs 116.b		; 70 74
	bit $74.b,X		; 34 74
	bit $34.b,X		; 34 34
	bit $34.b,X		; 34 34
	bit $34.b,X		; 34 34
	bit $34.b,X		; 34 34
	bmi 127.b		; 30 7F
	bmi 127.b		; 30 7F
	bmi 126.b		; 30 7E
	bmi 126.b		; 30 7E
	bpl 126.b		; 10 7E
	bpl 126.b		; 10 7E
	bpl 126.b		; 10 7E
	bpl 126.b		; 10 7E
	trb $34.b		; 14 34
	ora ($16.b)		; 12 16
	clc		; 18
	clc		; 18
	ora $0F0E1F.l,X		; 1F 1F 0E 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl 126.b		; 10 7E
	bpl  63.b		; 10 3F
	bpl  63.b		; 10 3F
	ora $1F043F.l		; 0F 3F 04 1F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$60C0.w		; C0 C0 60
	rts		; 60

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	cpx #$E020.w		; E0 20 E0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	beq  64.b		; F0 40
	beq  32.b		; F0 20
	tda		; 7B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $60.b		; 00 60
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	ora $E71F.w,X		; 1D 1F E7
	ora $1D.b,S		; 03 1D
	ora ($06.b,X)		; 01 06
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$02.b]		; 07 02
	and $0A0F18.l,X		; 3F 18 0F 0A
	ora [$05.b]		; 07 05
	ora ($00.b,X)		; 01 00
	sec		; 38
	jsr ($FE3C.w,X)		; FC 3C FE
	trb $887F.w		; 1C 7F 88
	adc $D4FF88.l,X		; 7F 88 FF D4
	and $90BFCC.l,X		; 3F CC BF 90
	adc $7C047C.l,X		; 7F 7C 04 7C
	brk $FE.b		; 00 FE
	.db $42, $BE		; 42 BE
	jsr $000E.w		; 20 0E 00
	rol $3E00.w,X		; 3E 00 3E
	ldy #$029E.w		; A0 9E 02
	pla		; 68
	inc $7C00.w,X		; FE 00 7C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $1804.w		; 0C 04 18
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
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	ora [$0C.b]		; 07 0C
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
	brk $70.b		; 00 70
	brk $8C.b		; 00 8C
	stz $06.b,X		; 74 06
	jsr ($EE01.w,X)		; FC 01 EE
	brk $E7.b		; 00 E7
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $CF.b		; 00 CF
	brk $37.b		; 00 37
	cmp $9B7F97.l,X		; DF 97 7F 9B
	adc $CF7F8B.l,X		; 7F 8B 7F CF
	and $633FC7.l,X		; 3F C7 3F 63
	sta $FF9F60.l,X		; 9F 60 9F FF
	jsr $80FF.w		; 20 FF 80
	sbc $80FF80.l,X		; FF 80 FF 80
	sbc $C0FFC0.l,X		; FF C0 FF C0
	adc $607F60.l,X		; 7F 60 7F 60
	beq  -1.b		; F0 FF
	beq  -1.b		; F0 FF
	sbc ($FD.b)		; F2 FD
.ACCU 8
.INDEX 8
	sep #$FD		; E2 FD
	cpx #$FE.b		; E0 FE
	cpx $FA.b		; E4 FA
	cpy $FA.b		; C4 FA
	tsb $FEF2.w		; 0C F2 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	cop $FE.b		; 02 FE
	cop $FC.b		; 02 FC
	brk $FC.b		; 00 FC
	tsb $FC.b		; 04 FC
	tsb $FC.b		; 04 FC
	tsb $FF20.w		; 0C 20 FF
	ora ($28.b),Y		; 11 28
	php		; 08
	asl $0F02.w,X		; 1E 02 0F
	ora ($0F.b,X)		; 01 0F
	brk $1F.b		; 00 1F
	ora #$17.b		; 09 17
	cop $0D.b		; 02 0D
	php		; 08
	brk $17.b		; 00 17
	bpl   1.b		; 10 01
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	php		; 08
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$20.b		; C0 20
	rts		; 60

	bcc -128.b		; 90 80
	sed		; F8
	sec		; 38
	inc $FF32.w,X		; FE 32 FF
	rti		; 40

	sbc $000000.l,X		; FF 00 00 00
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $80.b		; 00 80
	brk $F8.b		; 00 F8
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	ora [$01.b]		; 07 01
	cop $02.b		; 02 02
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $07.b		; 02 07
	bpl  23.b		; 10 17
	bmi  16.b		; 30 10
	bcs  37.b		; B0 25
	cmp $A45B.w,X		; DD 5B A4
	txs		; 9A
	adc $18.b		; 65 18
	sbc [$8C.b]		; E7 8C
	adc ($0F.b,S),Y		; 73 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $02.b		; 00 02
	brk $18.b		; 00 18
	clc		; 18
	sec		; 38
	clc		; 18
	adc $BD18.w,Y		; 79 18 BD
	sty $0000.w		; 8C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$06.b]		; 07 06
	asl $0F0F.w		; 0E 0F 0F
	ora $1F0F0F.l		; 0F 0F 0F 1F
	ora $1F9F1F.l,X		; 1F 1F 9F 1F
	and $2F3F1F.l,X		; 3F 1F 3F 2F
	tsb $1F.b		; 04 1F
	asl $1F.b		; 06 1F
	ora [$1F.b]		; 07 1F
	ora $3F0F3F.l		; 0F 3F 0F 3F
	ora $FF0F3F.l		; 0F 3F 0F FF
	brk $FF.b		; 00 FF
	cpy #$EF.b		; C0 EF
	brk $0F.b		; 00 0F
	cmp ($EF.b,X)		; C1 EF
.INDEX 16
	rep #$DF		; C2 DF
	cpy $CF.b		; C4 CF
	cmp ($C4.b,X)		; C1 C4
	bra -64.b		; 80 C0
	cpy #$8C80.w		; C0 80 8C
	beq  15.b		; F0 0F
	beq  15.b		; F0 0F
	beq -114.b		; F0 8E
	cpx #$E085.w		; E0 85 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	cpy #$6080.w		; C0 80 60
	cpy #$C020.w		; C0 20 C0
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	and $031F05.l,X		; 3F 05 1F 03
	ora $000F01.l		; 0F 01 0F 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	cmp [$19.b]		; C7 19
	brk $0D.b		; 00 0D
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	cmp [$00.b]		; C7 00
	dec $DE80.w		; CE 80 DE
	bra -34.b		; 80 DE
	dey		; 88
	inc $FE88.w,X		; FE 88 FE
	cpy $FE.b		; C4 FE
	mvp $00,$FF		; 44 FF 00
	brk $84.b		; 00 84
	brk $8C.b		; 00 8C
	brk $8C.b		; 00 8C
	brk $DC.b		; 00 DC
	brk $DC.b		; 00 DC
	brk $EC.b		; 00 EC
	brk $EE.b		; 00 EE
	brk $43.b		; 00 43
	ora $A01F47.l,X		; 1F 47 1F A0
	lda $80FF00.l,X		; BF 00 FF 80
	inc $FC00.w,X		; FE 00 FC
	bra  -2.b		; 80 FE
	brk $FC.b		; 00 FC
	sbc $00EF00.l		; EF 00 EF 00
	eor $000800.l		; 4F 00 08 00
	cpx $00.b		; E4 00
	brk $00.b		; 00 00
	cpx $0000.w		; EC 00 00
	brk $81.b		; 00 81
	inc $00.b		; E6 00
	sbc $D900.w		; ED 00 D9
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $D819.w,X		; DD 19 D8
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	php		; 08
	ora $100718.l		; 0F 18 07 10
	ora $200F30.l,X		; 1F 30 0F 20
	and $401E60.l,X		; 3F 60 1E 40
	ror $07C0.w,X		; 7E C0 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $CB.b		; 00 CB
	sec		; 38
	sta $3C.b,X		; 95 3C
	bit #$1F.b		; 89 1F
	lsr $4F.b		; 46 4F
	eor ($47.b,X)		; 41 47
	brk $41.b		; 00 41
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	cmp [$00.b]		; C7 00
	cmp $00.b,S		; C3 00
	cpy #$8000.w		; C0 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	eor $1F4738.l		; 4F 38 47 1F
	jsr $1807.w		; 20 07 18
	ora ($06.b,X)		; 01 06
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $383F30.l,X		; 3F 30 3F 38
	ora $07071F.l,X		; 1F 1F 07 07
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	cpx $18.b		; E4 18
	cpx $F0.b		; E4 F0
	php		; 08
	cpx #$C010.w		; E0 10 C0
	jsr $C000.w		; 20 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	clc		; 18
	sed		; F8
	clc		; 18
	beq -16.b		; F0 F0
	cpx #$C0E0.w		; E0 E0 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($0E.b,X)		; 01 0E
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bvc  -4.b		; 50 FC
	jsr $01F0.w		; 20 F0 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
	sei		; 78
	beq  12.b		; F0 0C
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	sed		; F8
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	php		; 08
	ora $04.b,S		; 03 04
	ora ($02.b,X)		; 01 02
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	cop $02.b		; 02 02
	ora [$07.b]		; 07 07
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora ($02.b,X)		; 01 02
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	tsb $8CF3.w		; 0C F3 8C
	adc ($09.b,S),Y		; 73 09
	inc $0A.b,X		; F6 0A
	sbc $15.b,X		; F5 15
	nop		; EA
	lda $2252.w		; AD 52 22
	eor $88.b,X		; 55 88
	phb		; 8B
	lda $DD0C.w,X		; BD 0C DD
	sty $09DB.w		; 8C DB 09
	tsx		; BA
	asl A		; 0A
	adc $15.b,X		; 75 15
	cpx $61AC.w		; EC AC 61
	tay		; A8
	sta ($FC.b,X)		; 81 FC
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $7F7F70.l,X		; 3F 70 7F 7F
	sbc $3F3F7F.l,X		; FF 7F 3F 3F
	and $1F1F3F.l,X		; 3F 3F 1F 1F
	ldx $E50E.w		; AE 0E E5
	ora $30.b		; 05 30
	sbc $3FFF3F.l,X		; FF 3F FF 3F
	adc $1FFF1F.l,X		; 7F 1F FF 1F
	sbc $04FF0F.l,X		; FF 0F FF 04
	cmp $C04F00.l,X		; DF 00 4F C0
	rts		; 60

	sbc $E0.b,S		; E3 E0
	cpx $F3.b		; E4 F3
	pea $F1F3.w		; F4 F3 F1
	inc $F7.b,X		; F6 F7
	beq   7.b		; F0 07
	bpl -17.b		; 10 EF
	cpy #$F000.w		; C0 00 F0
	cpy #$E3F0.w		; C0 F0 E3
	sed		; F8
	sbc [$FC.b]		; E7 FC
	sbc [$F9.b]		; E7 F9
	sbc [$FF.b]		; E7 FF
	tsb $FC.b		; 04 FC
	phb		; 8B
	xce		; FB
	cpy #$1838.w		; C0 38 18
	inc $38.b		; E6 38
	cmp [$7E.b]		; C7 7E
	sta $EE1FE1.l		; 8F E1 1F EE
	ora ($FF.b),Y		; 11 FF
	asl $9F7F.w		; 0E 7F 9F
	bmi   0.b		; 30 00
	cpx #$E600.w		; E0 00 E6
	jsr $60EF.w		; 20 EF 60
	cmp $CEDFC0.l,X		; DF C0 DF CE
	eor $009F51.l,X		; 5F 51 9F 00
	brk $63.b		; 00 63
	jsr $4373.w		; 20 73 43
	pea $F403.w		; F4 03 F4
	sta $EA.b		; 85 EA
	eor $8AF2.w		; 4D F2 8A
	adc $E4.b,X		; 75 E4
	txy		; 9B
	ora ($00.b,X)		; 01 00
	and ($00.b,X)		; 21 00
	adc $03.b,S		; 63 03
	lda $03.b,S		; A3 03
	cmp [$05.b]		; C7 05
	sbc $8AEF0D.l		; EF 0D EF 8A
	sbc [$64.b],Y		; F7 64
	rts		; 60

	sbc $60FF60.l,X		; FF 60 FF 60
	sbc $B0FF70.l,X		; FF 70 FF B0
	adc $58FF30.l,X		; 7F 30 FF 58
	ldx $BED8.w,Y		; BE D8 BE
	inc $00.b,X		; F6 00
	inc $00.b,X		; F6 00
	inc $00.b,X		; F6 00
	plx		; FA
	brk $FA.b		; 00 FA
	bra  -6.b		; 80 FA
	brk $FC.b		; 00 FC
	rti		; 40

	jsr ($4040.w,X)		; FC 40 40
	inx		; E8
	inx		; E8
	inx		; E8
	inx		; E8
	inx		; E8
	inx		; E8
	inx		; E8
	pla		; 68
	inx		; E8
	pla		; 68
	pla		; 68
	pla		; 68
	pla		; 68
	pla		; 68
	pla		; 68
	brk $FC.b		; 00 FC
	rts		; 60

	jsr ($FC60.w,X)		; FC 60 FC
	rts		; 60

	jsr ($FC60.w,X)		; FC 60 FC
	jsr $20FC.w		; 20 FC 20
	jsr ($FC20.w,X)		; FC 20 FC
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	cop $06.b		; 02 06
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	cop $0F.b		; 02 0F
	cop $0F.b		; 02 0F
	cop $0F.b		; 02 0F
	cop $07.b		; 02 07
	cop $07.b		; 02 07
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0D.b		; 00 0D
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
	bra -128.b		; 80 80
	rti		; 40

	cpy #$1818.w		; C0 18 18
	cpx $D0EC.w		; EC EC D0
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $F8.b		; 00 F8
	php		; 08
	jsr ($FEE4.w,X)		; FC E4 FE
	bcc  -4.b		; 90 FC
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	cpy #$0060.w		; C0 60 00
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $A0.b		; 00 A0
	brk $90.b		; 00 90
	clc		; 18
	ldy #$6030.w		; A0 30 60
	bvs -128.b		; 70 80
	bvs  32.b		; 70 20
	bne  40.b		; D0 28
	bne  72.b		; D0 48
	bcs  72.b		; B0 48
	bcs -32.b		; B0 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	jsr $20E0.w		; 20 E0 20
	cld		; D8
	pha		; 48
	cld		; D8
	pha		; 48
	tya		; 98
	rts		; 60

	tya		; 98
	rts		; 60

	bmi -64.b		; 30 C0
	rts		; 60

	bra -128.b		; 80 80
	rts		; 60

	brk $F0.b		; 00 F0
	rti		; 40

	cpx #$C080.w		; E0 80 C0
	bcs -112.b		; B0 90
	bcs -112.b		; B0 90
	rts		; 60

	jsr $40C0.w		; 20 C0 40
	rti		; 40

	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$30E0.w		; C0 E0 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	tsb $06F4.w		; 0C F4 06
	jmp ($7E00.w,X)		; 7C 00 7E
	cmp ($8E.b,X)		; C1 8E
	cpx #$F861.w		; E0 61 F8
	clc		; 18
	ror $1F06.w,X		; 7E 06 1F
	beq   0.b		; F0 00
	sed		; F8
	brk $FE.b		; 00 FE
	brk $3E.b		; 00 3E
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	cop $00.b		; 02 00
	asl $01.b		; 06 01
	ora $00.b		; 05 00
	asl $04.b		; 06 04
	asl A		; 0A
	tsb $12.b		; 04 12
	brk $0A.b		; 00 0A
	ora ($08.b,X)		; 01 08
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora $04.b		; 05 04
	ora $04.b		; 05 04
	ora $0500.w		; 0D 00 05
	brk $07.b		; 00 07
	brk $0C.b		; 00 0C
	and $02.b,S		; 23 02
	and $845F44.l		; 2F 44 5F 84
	and $833F80.l,X		; 3F 80 3F 83
	bit $7FC8.w,X		; 3C C8 7F
	phd		; 0B
	adc $0FF407.l,X		; 7F 07 F4 0F
	beq -113.b		; F0 8F
	jsr $00CF.w		; 20 CF 00
	stp		; DB
	brk $D7.b		; 00 D7
	ora $8B.b,S		; 03 8B
	brk $AB.b		; 00 AB
	brk $7F.b		; 00 7F
	sbc $00FF03.l,X		; FF 03 FF 00
	cmp $82C30C.l,X		; DF 0C C3 82
	eor $FE01.w		; 4D 01 FE
	ora #$86.b		; 09 86
	tsb $8B.b		; 04 8B
	sbc $009F00.l,X		; FF 00 9F 00
	lda $3CBF20.l		; AF 20 BF 3C
	lda $018FB2.l,X		; BF B2 8F 01
	adc $747779.l,X		; 7F 79 77 74
	sbc ($EF.b),Y		; F1 EF
	sbc $F1F7.w,Y		; F9 F7 F1
	sbc $7AFF79.l,X		; FF 79 FF 7A
	sbc $FE3D.w,X		; FD 3D FE
	and $7F9FFF.l,X		; 3F FF 9F 7F
	sbc [$10.b],Y		; F7 10
	xce		; FB
	php		; 08
	xce		; FB
	brk $FD.b		; 00 FD
	brk $FF.b		; 00 FF
	cop $FF.b		; 02 FF
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	bra -72.b		; 80 B8
	dec $EE98.w,X		; DE 98 EE
	tya		; 98
	inc $FE88.w		; EE 88 FE
	dey		; 88
	inc $FA8C.w,X		; FE 8C FA
	cpy $FA.b		; C4 FA
	cpy #$FCFC.w		; C0 FC FC
	jsr $10FC.w		; 20 FC 10
	jsr ($FC10.w,X)		; FC 10 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	tsb $FC.b		; 04 FC
	tsb $F8.b		; 04 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	cpy $3E00.w		; CC 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	cmp ($C1.b,X)		; C1 C1
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	ora $00004F.l		; 0F 4F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	stx $F09F.w		; 8E 9F F0
	sbc $F0FFF0.l,X		; FF F0 FF F0
	sbc $E0FFE0.l,X		; FF E0 FF E0
	sbc $C0FFC0.l,X		; FF C0 FF C0
	sbc $FFCFB0.l,X		; FF B0 CF FF
	ora $FF0FFF.l		; 0F FF 0F FF
	ora $FE1BFF.l		; 0F FF 1B FE
	inc A		; 1A
	inc $FE32.w,X		; FE 32 FE
	jsl $7672FE.l		; 22 FE 72 76
	cmp [$6B.b],Y		; D7 6B
	dey		; 88
	ror $E6.b,X		; 76 E6
	sed		; F8
	sed		; F8
	adc $FF0EFF.l,X		; 7F FF 0E FF
	trb $04E2.w		; 1C E2 04
	sed		; F8
	bra  -2.b		; 80 FE
	dey		; 88
	sbc $38FF00.l,X		; FF 00 FF 38
	sbc $00FF1F.l,X		; FF 1F FF 00
	sbc $E01F00.l,X		; FF 00 1F E0
	ora $000400.l		; 0F 00 04 00
	ora $70FF00.l		; 0F 00 FF 70
	sta $20F906.l		; 8F 06 F9 20
	cmp $09EF10.l,X		; DF 10 EF 09
	sbc [$00.b],Y		; F7 00
	brk $04.b		; 00 04
	bra  15.b		; 80 0F
	tsb $7373.w		; 0C 73 73
	sta $A8EE07.l,X		; 9F 07 EE A8
	adc ($51.b),Y		; 71 51
	ply		; 7A
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $FF.b		; 00 FF
	asl $FE.b		; 06 FE
	eor $80BEC0.l,X		; 5F C0 BE 80
	sbc $0001.w,Y		; F9 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($39.b,X)		; 01 39
	sec		; 38
	lda $007F80.l,X		; BF 80 7F 00
	inc $BE00.w,X		; FE 00 BE
	bra  95.b		; 80 5F
	cpy #$E02F.w		; C0 2F E0
	ora #$78.b		; 09 78
	brk $FF.b		; 00 FF
	brk $9F.b		; 00 9F
	and ($EE.b,X)		; 21 EE
	ora ($FE.b),Y		; 11 FE
	adc $80BF00.l,X		; 7F 00 BF 80
	eor $101740.l,X		; 5F 40 17 10
	cmp ($C1.b,X)		; C1 C1
	xba		; EB
	sta $55.b,S		; 83 55
	rti		; 40

	sta $00.b		; 85 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	bra  32.b		; 80 20
	cpy #$F010.w		; C0 10 F0
	tya		; 98
	jsr $D0E8.w		; 20 E8 D0
	stz $E8.b,X		; 74 E8
	trb $00.b		; 14 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $50.b		; 00 50
	rti		; 40

	dey		; 88
	brk $E8.b		; 00 E8
	brk $D0.b		; 00 D0
	lda [$94.b]		; A7 94
	sbc [$85.b]		; E7 85
	adc [$04.b],Y		; 77 04
	sbc $00FE20.l,X		; FF 20 FE 00
	rol $3E30.w,X		; 3E 30 3E
	bvs  60.b		; 70 3C
	phx		; DA
	rti		; 40

	cld		; D8
	brk $C9.b		; 00 C9
	cpy #$B0B0.w		; C0 B0 B0
	sec		; 38
	php		; 08
	tsb $3444.w		; 0C 44 34
	stz $30.b,X		; 74 30
	sei		; 78
	jmp $FEC9FF.l		; 5C FF C9 FE
	cpy #$40FF.w		; C0 FF 40
	sbc $00FE01.l,X		; FF 01 FE 00
	sbc $11FF00.l,X		; FF 00 FF 11
	adc $EB005C.l		; 6F 5C 00 EB
	ora $F3.b,S		; 03 F3
	brk $6B.b		; 00 6B
	php		; 08
	and [$15.b],Y		; 37 15
	lsr $50.b,X		; 56 50
	adc $61.b,X		; 75 61
	bit $10.b,X		; 34 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($0E.b,X)		; 01 0E
	ora [$3B.b]		; 07 3B
	ora $0000EF.l,X		; 1F EF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$05.b]		; 07 05
	ora $507F14.l,X		; 1F 14 7F 50
	brk $73.b		; 00 73
	ora ($06.b,X)		; 01 06
	ora ($0E.b,X)		; 01 0E
	ora $3D.b,S		; 03 3D
	ora $FFFFEF.l,X		; 1F EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ora $030C.w		; 0D 0C 03
	ora $07.b,S		; 03 07
	ora $0F.b		; 05 0F
	asl A		; 0A
	sbc $00FF90.l,X		; FF 90 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FEFFFF.l,X		; FF FF FF FE
	jsr ($F0FB.w,X)		; FC FB F0
	sbc $C7DDE3.l		; EF E3 DD C7
	tyx		; BB
	sta $EF1F77.l		; 8F 77 1F EF
	sbc $01FF00.l,X		; FF 00 FF 01
	sbc $12FF05.l,X		; FF 05 FF 12
	sbc [$26.b],Y		; F7 26
	sbc $98DF4C.l		; EF 4C DF 98
	sbc $BFC770.l,X		; FF 70 C7 BF
	ora $DF3FFF.l		; 0F FF 3F DF
	sbc $FEFF3F.l,X		; FF 3F FF FE
	inc $F8FD.w,X		; FE FD F8
	sbc [$E0.b],Y		; F7 E0
	dec $50FF.w,X		; DE FF 50
	sbc $A0FF60.l,X		; FF 60 FF A0
	sbc $01FFC0.l,X		; FF C0 FF 01
	sbc $0AFE03.l,X		; FF 03 FE 0A
	jsr ($002C.w,X)		; FC 2C 00
	bra   0.b		; 80 00
	cpy #$F000.w		; C0 00 F0
	bra 120.b		; 80 78
	rti		; 40

	ldy $BC40.w,X		; BC 40 BC
	brk $7C.b		; 00 7C
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$4040.w		; C0 40 40
	rti		; 40

	jsr $1800.w		; 20 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $5E00.w		; 1C 00 5E
	bra -65.b		; 80 BF
	bmi 103.b		; 30 67
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $0660.w		; 1C 60 06
	cpy #$801A.w		; C0 1A 80
	brk $3F.b		; 00 3F
	bpl 110.b		; 10 6E
	sec		; 38
	pei ($78.b)		; D4 78
	ldy $BC78.w,X		; BC 78 BC
	sei		; 78
	inc $7DF0.w,X		; FE F0 7D
	beq 127.b		; F0 7F
	phx		; DA
	cpy #$91BB.w		; C0 BB 91
	adc $C3FF2B.l,X		; 7F 2B FF C3
	sbc $01FBC3.l,X		; FF C3 FB 01
	inc $82.b,X		; F6 82
	sbc $0289.w,Y		; F9 89 02
	.db $42, $00		; 42 00
	cmp $01.b		; C5 01
	adc $03.b,S		; 63 03
	ror $7C03.w,X		; 7E 03 7C
	asl $6C.b		; 06 6C
	and $ED.b		; 25 ED
	plp		; 28
	sbc $009F80.l		; EF 80 9F 00
	asl $8C80.w		; 0E 80 8C
	sta ($80.b,X)		; 81 80
	sta [$84.b]		; 87 84
	sta $90.b,S		; 83 90
	jsl $BBAB30.l		; 22 30 AB BB
	bvs -113.b		; 70 8F
	beq -17.b		; F0 EF
	beq -17.b		; F0 EF
	cpx #$E1DF.w		; E0 DF E1
	cmp $D69FE7.l,X		; DF E7 9F D6
	lda $FCA7D0.l		; AF D0 A7 FC
	pea $14FC.w		; F4 FC 14
	jsr ($F814.w,X)		; FC 14 F8
	plp		; 28
	sbc $EF28.w,Y		; F9 28 EF
	pla		; 68
	sbc [$60.b],Y		; F7 60
	xce		; FB
	rts		; 60

	inc $F3F4.w		; EE F4 F3
	plx		; FA
	cpx #$C0FC.w		; E0 FC C0
	sbc $38FF00.l,X		; FF 00 FF 38
	sbc $5EFF3C.l,X		; FF 3C FF 5E
	sbc $F80FF0.l,X		; FF F0 0F F8
	ora [$F0.b]		; 07 F0
	ora $E0.b,S		; 03 E0
	brk $59.b		; 00 59
	ora ($3E.b,X)		; 01 3E
	brk $3F.b		; 00 3F
	brk $5F.b		; 00 5F
	brk $03.b		; 00 03
	inc $FC04.w,X		; FE 04 FC
	sta $7F807F.l		; 8F 7F 80 7F
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	dey		; 88
	stx $037A.w		; 8E 7A 03
	sbc $84.b,X		; F5 84
	rtl		; 6B

	pha		; 48
	ldy #$9EA0.w		; A0 A0 9E
	stz $0000.w,X		; 9E 00 00
	beq -16.b		; F0 F0
	stz $04.b,X		; 74 04
	jsr ($E400.w,X)		; FC 00 E4
	ora [$10.b]		; 07 10
	ora $00F8C0.l,X		; 1F C0 F8 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xce		; FB
	ora $EC.b,S		; 03 EC
	tsb $2020.w		; 0C 20 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DE.b		; 00 DE
	brk $C7.b		; 00 C7
	brk $C1.b		; 00 C1
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $810C.w		; 8D 0C 81
	ora ($40.b,X)		; 01 40
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	asl A		; 0A
	jmp ($5802.w,X)		; 7C 02 58
.INDEX 16
	rep #$1C		; C2 1C
	inc $3C00.w,X		; FE 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pea $FC00.w		; F4 00 FC
	brk $BC.b		; 00 BC
	bra  96.b		; 80 60
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi 120.b		; 30 78
	sei		; 78
	bvs 120.b		; 70 78
	bvs -16.b		; 70 F0
	bvs  96.b		; 70 60
	beq -16.b		; F0 F0
	cpx #$E0E0.w		; E0 E0 E0
	cpy #$30E0.w		; C0 E0 30
	jmp ($FC30.w,X)		; 7C 30 FC
	bvs  -4.b		; 70 FC
	rts		; 60

	sed		; F8
	rts		; 60

	sed		; F8
	rts		; 60

	sed		; F8
	cpy #$C0F0.w		; C0 F0 C0
	beq   0.b		; F0 00
	adc $002100.l,X		; 7F 00 21 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $001F00.l		; 0F 00 1F 00
	ora $210F00.l,X		; 1F 00 0F 21
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $7F.b		; 00 7F
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $8FFEE1.l,X		; FF E1 FE 8F
	sbc ($3F.b,S),Y		; F3 3F
	cmp $FFBF7F.l,X		; DF 7F BF FF
	adc $FF40FF.l,X		; 7F FF 40 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora #$FF.b		; 09 FF
	bit $A0FF.w		; 2C FF A0
	sbc $80FF40.l,X		; FF 40 FF 80
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $3FFFFE.l,X		; FF FE FF 3F
	sbc $FBFDFE.l,X		; FF FE FD FB
	xce		; FB
	sbc [$E7.b],Y		; F7 E7
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	cpy #$01FF.w		; C0 FF 01
	sbc $0CFF06.l,X		; FF 06 FF 0C
	sbc $5F3F08.l,X		; FF 08 3F 5F
	bit $707B.w,X		; 3C 7B 70
	inc $D860.w		; EE 60 D8
	rti		; 40

	bcs   0.b		; B0 00
	cpx #$4000.w		; E0 00 40
	brk $40.b		; 00 40
	and $457F20.l,X		; 3F 20 7F 45
	sei		; 78
	clc		; 18
	bvs  48.b		; 70 30
	rts		; 60

	rts		; 60

	rti		; 40

	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	bra 120.b		; 80 78
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00A0.w		; E0 A0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($70.b,X)		; 01 70
	dec $E8.b		; C6 E8
	sty $18D0.w		; 8C D0 18
	ldy #$4030.w		; A0 30 40
	rts		; 60

	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	sec		; 38
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	bra 112.b		; 80 70
	bra  96.b		; 80 60
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$80C0.w		; E0 C0 80
	cpy #$80C0.w		; C0 C0 80
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80E0.w		; C0 E0 80
	cpx #$E080.w		; E0 80 E0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
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
	brk $01.b		; 00 01
	ora ($3F.b,X)		; 01 3F
	ora #$F8.b		; 09 F8
	eor ($70.b,S),Y		; 53 70
	lda ($30.b,S),Y		; B3 30
	ror $7E.b		; 66 7E
	brk $FF.b		; 00 FF
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	sbc [$F0.b],Y		; F7 F0
	lda $00CF20.l		; AF 20 CF 00
	sta $C018.w,Y		; 99 18 C0
	cpy #$0000.w		; C0 00 00
	brk $C0.b		; 00 C0
	cpy #$24FF.w		; C0 FF 24
	and $000A8C.l,X		; 3F 8C 0A 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $11D5.w		; 20 D5 11
	sbc $04.b,X		; F5 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora $0F.b,S		; 03 0F
	ora [$1F.b]		; 07 1F
	ora $3F0F1F.l		; 0F 1F 0F 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora $101F08.l		; 0F 08 1F 10
	ora $3F1E00.l,X		; 1F 00 1E 3F
	trb $397F.w		; 1C 7F 39
	ror $FE39.w,X		; 7E 39 FE
	adc ($BD.b,S),Y		; 73 BD
	adc [$FB.b],Y		; 77 FB
	sbc [$7F.b],Y		; F7 7F
	sbc [$6F.b],Y		; F7 6F
	and $023F21.l,X		; 3F 21 3F 02
	adc $057F45.l,X		; 7F 45 7F 05
	sbc $0CFFCA.l,X		; FF CA FF 0C
	sbc $90FF88.l,X		; FF 88 FF 90
	sbc $2ECF57.l		; EF 57 CF 2E
	sty $084B.w		; 8C 4B 08
	stx $00.b		; 86 00
	sty $8C00.w		; 8C 00 8C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	sbc $E1EFB8.l,X		; FF B8 EF E1
	cmp $0A8EC5.l		; CF C5 8E 0A
	sty $8C84.w		; 8C 84 8C
	sty $08.b		; 84 08
	php		; 08
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora $1E3E07.l,X		; 1F 07 3E 1E
	trb $34.b		; 14 34
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora [$1F.b]		; 07 1F
	trb $3F.b		; 14 3F
	brk $36.b		; 00 36
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	sty $FC8F.w		; 8C 8F FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $18.b		; 00 18
	ora $00C000.l,X		; 1F 00 C0 00
	brk $00.b		; 00 00
	brk $73.b		; 00 73
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $E7.b		; 00 E7
	ora [$00.b]		; 07 00
	brk $0C.b		; 00 0C
	sbc [$8C.b],Y		; F7 8C
	sbc $01599E.l,X		; FF 9E 59 01
	inc $0700.w,X		; FE 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $BC08.w		; 0C 08 BC
	bmi -82.b		; 30 AE
	stx $03.b		; 86 03
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E6.b		; 00 E6
	sbc $03EFEF.l		; EF EF EF 03
	sbc $687F84.l		; EF 84 7F 68
	sta $89F807.l,X		; 9F 07 F8 89
	pea $9CC7.w		; F4 C7 9C
	cmp $F00FF0.l		; CF F0 0F F0
	sta $80E710.l		; 8F 10 E7 80
	jmp ($8860.w)		; 6C 60 88
	bra  96.b		; 80 60
	ror $74.b		; 66 74
	ora $46.b,X		; 15 46
	lda $FF04.w,X		; BD 04 FF
	tsb $EB.b		; 04 EB
	brk $4F.b		; 00 4F
	brk $4F.b		; 00 4F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	adc $296F63.l		; 6F 63 6F 29
	eor [$45.b]		; 47 45
	ora [$03.b]		; 07 03
	ora [$07.b]		; 07 07
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	trb $1CC1.w		; 1C C1 1C
	cmp ($3C.b,X)		; C1 3C
	sbc ($3C.b,X)		; E1 3C
	sbc ($3E.b,X)		; E1 3E
	sbc $1E.b,S		; E3 1E
	adc $1E.b,S		; 63 1E
	adc $1C.b,S		; 63 1C
	adc $7E.b,S		; 63 7E
	rti		; 40

	ror $5E40.w,X		; 7E 40 5E
	rti		; 40

	asl $1C00.w,X		; 1E 00 1C
	brk $3C.b		; 00 3C
	jsr $203C.w		; 20 3C 20
	rol $0422.w,X		; 3E 22 04
	ora $0C170C.l,X		; 1F 0C 17 0C
	and $1D2F1D.l,X		; 3F 1D 2F 1D
	and $1D3F1D.l		; 2F 1D 3F 1D
	ror $5D3E.w,X		; 7E 3E 5D
	ora $191F01.l		; 0F 01 1F 19
	ora $101F00.l,X		; 1F 00 1F 10
	ora $203F10.l,X		; 1F 10 3F 20
	and $223E01.l,X		; 3F 01 3E 22
	sta ($7B.b,X)		; 81 7B
	sta ($7B.b,X)		; 81 7B
	txs		; 9A
	adc $7091.w,Y		; 79 91 70
	dec $30.b		; C6 30
	.db $82, $79, $20		; 82 79 20
	sbc $80FB64.l,X		; FF 64 FB 80
	sta [$B8.b]		; 87 B8
	sta [$B8.b]		; 87 B8
	sta [$B0.b]		; 87 B0
	sta $80CFD0.l		; 8F D0 CF 80
	sta [$60.b]		; 87 60
	brk $E5.b		; 00 E5
	tsb $DD.b		; 04 DD
	asl $DEFC.w		; 0E FC DE
	jsr ($7CFE.w,X)		; FC FE 7C
	jsr ($7C3C.w,X)		; FC 3C 7C
	clc		; 18
	ldy $ED69.w,X		; BC 69 ED
	and ($F5.b),Y		; 31 F5
	tsb $2E.b		; 04 2E
	tsb $7CDF.w		; 0C DF 7C
	sbc $18FF3C.l,X		; FF 3C FF 18
	sbc $20FF08.l,X		; FF 08 FF 20
	sbc $803F10.l,X		; FF 10 3F 80
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
	bra   0.b		; 80 00
	rts		; 60

	brk $FC.b		; 00 FC
	cpy #$78FC.w		; C0 FC 78
	inc $FF4C.w,X		; FE 4C FF
	txs		; 9A
	sbc $68EF12.l,X		; FF 12 EF 68
	asl $70.b		; 06 70
	asl $0088.w		; 0E 88 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $6E.b		; 00 6E
	brk $DE.b		; 00 DE
	brk $0A.b		; 00 0A
	jsr $10C2.w		; 20 C2 10
	cpy $20.b		; C4 20
	ldy #$E01C.w		; A0 1C E0
	sec		; 38
	brk $70.b		; 00 70
	bra  32.b		; 80 20
	brk $40.b		; 00 40
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	pha		; 48
	beq -56.b		; F0 C8
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	ldy #$00C0.w		; A0 C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	jsr $1000.w		; 20 00 10
	brk $0D.b		; 00 0D
	asl $0D.b,X		; 16 0D
	dec A		; 3A
	asl A		; 0A
	and $2D1A.w,X		; 3D 1A 2D
	inc A		; 1A
	adc $16.b,X		; 75 16
	adc $5E31.w,Y		; 79 31 5E
	bmi -17.b		; 30 EF
	asl $1E08.w		; 0E 08 1E
	trb $1C.b		; 14 1C
	brk $1C.b		; 00 1C
	trb $3C.b		; 14 3C
	bit $0038.w		; 2C 38 00
	rol $7F2E.w,X		; 3E 2E 7F
	eor $21595E.l,X		; 5F 5E 59 21
	jsr $1019.w		; 20 19 10
	sec		; 38
	bvs  60.b		; 70 3C
	clv		; B8
	ora $84.b,S		; 03 84
	sbc [$08.b],Y		; F7 08
	and $41D8.w		; 2D D8 41
	sed		; F8
	brk $FE.b		; 00 FE
	brk $F7.b		; 00 F7
	bpl  -9.b		; 10 F7
	bmi 123.b		; 30 7B
	brk $7C.b		; 00 7C
	brk $3B.b		; 00 3B
	cpy #$2CFB.w		; C0 FB 2C
	beq -68.b		; F0 BC
	rts		; 60

	ror A		; 6A
	brk $F2.b		; 00 F2
	jsr $2026.w		; 20 26 20
	sty $2420.w		; 8C 20 24
	brk $FC.b		; 00 FC
	jsr $0080.w		; 20 80 00
	brk $00.b		; 00 00
	brk $9C.b		; 00 9C
	jsr $20DC.w		; 20 DC 20
	cld		; D8
	jsr $0050.w		; 20 50 00
	cld		; D8
	brk $A8.b		; 00 A8
	bmi -124.b		; 30 84
	sec		; 38
	sty $38.b		; 84 38
	sty $38.b		; 84 38
	sty $58.b		; 84 58
	cpy $58.b		; C4 58
	cpy $58.b		; C4 58
	cpy $58.b		; C4 58
	cpy $F8.b		; C4 F8
	bra  -8.b		; 80 F8
	bra  -8.b		; 80 F8
	bra  -8.b		; 80 F8
	bra -72.b		; 80 B8
	bra  56.b		; 80 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	cpy $28.b		; C4 28
	cpx $28.b		; E4 28
	cpx $38.b		; E4 38
	cpx $58.b		; E4 58
	cpy $38.b		; C4 38
	sty $38.b		; 84 38
	sty $38.b		; 84 38
	sty $78.b		; 84 78
	rti		; 40

	jmp $445C44.l		; 5C 44 5C 44
	jmp.w [$BCC4]		; DC C4 BC
	sty $FC.b		; 84 FC
	sty $F8.b		; 84 F8
	bra  -8.b		; 80 F8
	bra   1.b		; 80 01
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	cop $03.b		; 02 03
	asl $03.b		; 06 03
	asl $01.b		; 06 01
	tsb $01.b		; 04 01
	tsb $01.b		; 04 01
	tsb $00.b		; 04 00
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora [$02.b]		; 07 02
	ora $02.b		; 05 02
	ora $070E03.l		; 0F 03 0E 07
	asl A		; 0A
	asl $1F.b		; 06 1F
	asl $1D.b		; 06 1D
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	ora $03.b,S		; 03 03
	ora [$04.b]		; 07 04
	ora [$01.b]		; 07 01
	ora [$05.b]		; 07 05
	ora $020F08.l		; 0F 08 0F 02
	sbc $92.b		; E5 92
	sbc [$98.b]		; E7 98
	sbc $98.b,S		; E3 98
	adc $9C.b,X		; 75 9C
	and ($9E.b)		; 32 9E
	cli		; 58
	cmp [$38.b]		; C7 38
	cmp [$3C.b],Y		; D7 3C
	and $7C.b,S		; 23 7C
	ora ($77.b)		; 12 77
	bpl 119.b		; 10 77
	bpl -29.b		; 10 E3
	bra -31.b		; 80 E1
	bra -96.b		; 80 A0
	bra  68.b		; 80 44
	bvc   3.b		; 50 03
	cpx #$0400.w		; E0 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	bit $2C63.w		; 2C 63 2C
	adc $28.b,S		; 63 28
	sbc $14.b,S		; E3 14
	cmp [$70.b]		; C7 70
	cmp [$30.b]		; C7 30
	sta $F8.b		; 85 F8
	sta $0D70.w		; 8D 70 0D
	asl $1E02.w,X		; 1E 02 1E
	cop $5E.b		; 02 5E
	.db $42, $78		; 42 78
	rti		; 40

	bit $FC04.w,X		; 3C 04 FC
	sty $70.b		; 84 70
	brk $F8.b		; 00 F8
	php		; 08
	bit $3E5B.w,X		; 3C 5B 3E
	adc $7D3E.w,X		; 7D 3E 7D
	and $FE3FFE.l,X		; 3F FE 3F FE
	adc $BF7FBE.l,X		; 7F BE 7F BF
	and $243DFF.l,X		; 3F FF 3D 24
	rol $7F02.w,X		; 3E 02 7F
	.db $42, $7F		; 42 7F
	eor ($7F.b,X)		; 41 7F
	ora ($7F.b,X)		; 01 7F
	eor ($7F.b,X)		; 41 7F
	rti		; 40

	adc $EBD400.l,X		; 7F 00 D4 EB
	mvn $24,$EB		; 54 EB 24
	stp		; DB
	and #$D6.b		; 29 D6
	eor #$B6.b		; 49 B6
	eor ($AE.b),Y		; 51 AE
	ora ($EC.b,S),Y		; 13 EC
	ora ($ED.b)		; 12 ED
	cmp $14.b,X		; D5 14
	cmp $14.b,X		; D5 14
	and $AB24.w		; 2D 24 AB
	and #$5B.b		; 29 5B
	eor #$57.b		; 49 57
	eor ($B7.b),Y		; 51 B7
	sta ($B6.b,S),Y		; 93 B6
	ora ($8A.b)		; 12 8A
	tda		; 7B
	ldy $5F.b		; A4 5F
	tax		; AA
	eor $2A.b,X		; 55 2A
	cmp $29.b,X		; D5 29
	dec $25.b,X		; D6 25
	phx		; DA
	bit $DB.b		; 24 DB
	bit $DB.b		; 24 DB
	txa		; 8A
	stx $A4A4.w		; 8E A4 A4
	tax		; AA
	tax		; AA
	ror A		; 6A
	rol A		; 2A
	rtl		; 6B

	and #$6D.b		; 29 6D
	and $ED.b		; 25 ED
	bit $ED.b		; 24 ED
	bit $40.b		; 24 40
	cpy #$60A0.w		; C0 A0 60
	rol $3AFE.w,X		; 3E FE 3A
	plx		; FA
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	bra  96.b		; 80 60
	cpy #$0020.w		; C0 20 00
	rts		; 60

	bra -66.b		; 80 BE
	ldy #$903F.w		; A0 3F 90
	and $401F40.l,X		; 3F 40 1F 40
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$09E0.w		; C0 E0 09
	beq  25.b		; F0 19
	cpy #$E010.w		; C0 10 E0
	bmi -96.b		; 30 A0
	bmi -64.b		; 30 C0
	rts		; 60

	cpy #$0060.w		; C0 60 00
	rts		; 60

	beq   0.b		; F0 00
	cpx #$F000.w		; E0 00 F0
	bpl -64.b		; 10 C0
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	jsr $0080.w		; 20 80 00
	cpy #$3840.w		; C0 40 38
	sty $78.b		; 84 78
	cpy $78.b		; C4 78
	cpy $78.b		; C4 78
	cpy $18.b		; C4 18
	cpy $38.b		; C4 38
	stz $38.b		; 64 38
	stz $38.b		; 64 38
	stz $F8.b		; 64 F8
	bra -72.b		; 80 B8
	bra -72.b		; 80 B8
	bra  56.b		; 80 38
	brk $78.b		; 00 78
	rti		; 40

	cli		; 58
	rti		; 40

	clc		; 18
	brk $18.b		; 00 18
	brk $40.b		; 00 40
	bne  32.b		; D0 20
	inx		; E8
	pha		; 48
	ldy $9C60.w,X		; BC 60 9C
	brk $FE.b		; 00 FE
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	bmi  16.b		; 30 10
	clc		; 18
	php		; 08
	rti		; 40

	rti		; 40

	bvs  96.b		; 70 60
	trb $1E00.w		; 1C 00 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	jsl $0C260C.l		; 22 0C 26 0C
	rol $08.b		; 26 08
	bit $08.b		; 24 08
	bit $3C00.w		; 2C 00 3C
	php		; 08
	bit $7C00.w,X		; 3C 00 7C
	asl $1802.w,X		; 1E 02 18
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	tsb $10.b		; 04 10
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $20.b		; 00 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	tsb $1C1C.w		; 0C 1C 1C
	bit $3C18.w,X		; 3C 18 3C
	brk $1C.b		; 00 1C
	tsb $0C.b		; 04 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0C1C.w		; 0C 1C 0C
	tsb $1C3E.w		; 0C 3E 1C
	ror $7E18.w,X		; 7E 18 7E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	php		; 08
	asl $1E08.w,X		; 1E 08 1E
	bpl  36.b		; 10 24
	php		; 08
	bit $3C00.w		; 2C 00 3C
	brk $3C.b		; 00 3C
	php		; 08
	bit $3C00.w,X		; 3C 00 3C
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	sec		; 38
	jsr $2030.w		; 20 30 20
	clc		; 18
	clc		; 18
	bmi   0.b		; 30 00
	clc		; 18
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	ora $0A1B0A.l		; 0F 0A 1B 0A
	tas		; 1B
	tsb $1E.b		; 04 1E
	bpl  46.b		; 10 2E
	trb $2E.b		; 14 2E
	bit $08.b,X		; 34 08
	sec		; 38
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	php		; 08
	bpl  16.b		; 10 10
	trb $1810.w		; 1C 10 18
	bpl   0.b		; 10 00
	brk $3F.b		; 00 3F
	sbc $3FFF3F.l,X		; FF 3F FF 3F
	eor $1D7D1F.l,X		; 5F 1F 7D 1D
	adc $0D3F0D.l		; 6F 0D 3F 0D
	tsa		; 3B
	ora #$3E.b		; 09 3E
	adc $407F00.l,X		; 7F 00 7F 40
	adc $023F60.l,X		; 7F 60 3F 02
	and $223F30.l,X		; 3F 30 3F 22
	ora $111D16.l,X		; 1F 16 1D 11
	.db $82, $7D, $80		; 82 7D 80
	adc $83FF86.l,X		; 7F 86 FF 83
	sed		; F8
	sta $F8.b,S		; 83 F8
	cmp $B8.b,S		; C3 B8
	cmp $B8.b,S		; C3 B8
	cmp $B8.b,S		; C3 B8
	dec $C2.b		; C6 C2
	cpx #$E8E0.w		; E0 E0 E8
	plp		; 28
	sbc $28EF28.l		; EF 28 EF 28
	sbc $68EF68.l		; EF 68 EF 68
	sbc $DD2268.l		; EF 68 22 DD
	jsl $FF00DD.l		; 22 DD 00 FF
	cmp [$71.b]		; C7 71
	sta [$31.b]		; 87 31
	stx $30.b		; 86 30
	stx $30.b		; 86 30
	stx $30.b		; 86 30
	inc $EE22.w		; EE 22 EE
	jsl $9E0000.l		; 22 00 00 9E
	bpl -34.b		; 10 DE
	bpl -33.b		; 10 DF
	bpl -33.b		; 10 DF
	bpl -33.b		; 10 DF
	bpl -128.b		; 10 80
	rti		; 40

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs  48.b		; 70 30
	sei		; 78
	bmi  56.b		; 30 38
	bvs  56.b		; 70 38
	bvs 120.b		; 70 78
	bvs 112.b		; 70 70
	sei		; 78
	bvs 123.b		; 70 7B
	sec		; 38
	tda		; 7B
	jsr $20F8.w		; 20 F8 20
	sed		; F8
	bmi  -8.b		; 30 F8
	bmi  -8.b		; 30 F8
	bmi  -8.b		; 30 F8
	bmi  -4.b		; 30 FC
	bmi  -4.b		; 30 FC
	bmi  -4.b		; 30 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	brk $E2.b		; 00 E2
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00C0.w		; C0 C0 00
	brk $7E.b		; 00 7E
	tyx		; BB
	dec A		; 3A
	sbc [$3B.b],Y		; F7 3B
	ror $33.b,X		; 76 33
	ror $5E33.w,X		; 7E 33 5E
	ora ($3E.b,S),Y		; 13 3E
	ora ($3E.b,S),Y		; 13 3E
	ora ($2C.b,S),Y		; 13 2C
	adc $087F44.l,X		; 7F 44 7F 08
	adc $013F49.l,X		; 7F 49 3F 01
	and $013F21.l,X		; 3F 21 3F 01
	and $1F1F29.l,X		; 3F 29 1F 1F
	php		; 08
	sbc [$00.b],Y		; F7 00
	sbc $1EF708.l,X		; FF 08 F7 1E
	sbc ($0F.b),Y		; F1 0F
	sbc ($0F.b,X)		; E1 0F
	sbc ($1E.b,X)		; E1 1E
	cpx #$E01E.w		; E0 1E E0
	txy		; 9B
	dey		; 88
	sta $80.b,S		; 83 80
	clv		; B8
	bcs -81.b		; B0 AF
	lda ($BE.b,X)		; A1 BE
	ldy #$A0BE.w		; A0 BE A0
	lda $A0BFA0.l,X		; BF A0 BF A0
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0C.b		; 00 0C
	brk $09.b		; 00 09
	brk $05.b		; 00 05
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	asl $06.b		; 06 06
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	asl $3F.b		; 06 3F
	ora $7F137F.l,X		; 1F 7F 13 7F
	bit $FF.b		; 24 FF
	plp		; 28
	sbc $09F867.l,X		; FF 67 F8 09
	pei ($37.b)		; D4 37
	jmp.w [$C0CF]		; DC CF C0
	sta $80BF80.l,X		; 9F 80 BF 80
	adc [$00.b],Y		; 77 00
	jmp ($6800.w)		; 6C 00 68
	brk $E0.b		; 00 E0
	stx $E4.b		; 86 E4
	cmp $01.b		; C5 01
	ora [$03.b]		; 07 03
	ora $03.b		; 05 03
	ora $03.b		; 05 03
	ora $070B07.l		; 0F 07 0B 07
	ora $070F07.l		; 0F 07 0F 07
	ora $030003.l		; 0F 03 00 03
	cop $07.b		; 02 07
	asl $07.b		; 06 07
	brk $07.b		; 00 07
	tsb $07.b		; 04 07
	brk $0F.b		; 00 0F
	php		; 08
	ora $7E8008.l		; 0F 08 80 7E
	bra 126.b		; 80 7E
	sty $7F.b		; 84 7F
	ldx $DF.b		; A6 DF
	ldx #$F0DE.w		; A2 DE F0
	stx $AFF0.w		; 8E F0 AF
.ACCU 8
.INDEX 8
	sep #$BF		; E2 BF
	inc $F0A3.w,X		; FE A3 F0
	lda ($F7.b,X)		; A1 F7
	bra  -9.b		; 80 F7
	jsr $21F6.w		; 20 F6 21
	plx		; FA
	adc ($F8.b),Y		; 71 F8
	bvc -10.b		; 50 F6
	rti		; 40

	sta $7FBF67.l,X		; 9F 67 BF 7F
	and $7F3F7F.l,X		; 3F 7F 3F 7F
	lda $67FF1F.l,X		; BF 1F FF 67
	adc $45BF9A.l,X		; 7F 9A BF 45
	brk $E7.b		; 00 E7
	ora $FF.b,S		; 03 FF
	ora $FF0FFF.l		; 0F FF 0F FF
	ora $FF02FF.l		; 0F FF 02 FF
	php		; 08
	adc $C0BFA4.l,X		; 7F A4 BF C0
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra  64.b		; 80 40
	rti		; 40

	rti		; 40

	rti		; 40

	cpy #$A0.b		; C0 A0
	cpy #$20.b		; C0 20
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$B8.b		; C0 B8
	bit $3CB8.w,X		; 3C B8 3C
	clc		; 18
	bit $D800.w,X		; 3C 00 D8
	brk $E4.b		; 00 E4
	brk $7C.b		; 00 7C
	bra  56.b		; 80 38
	bra -16.b		; 80 F0
	clv		; B8
	jmp ($7C98.w,X)		; 7C 98 7C
	bra  -4.b		; 80 FC
	rti		; 40

	jmp ($5864.w,X)		; 7C 64 58
	clv		; B8
	jsr $01C0.w		; 20 C0 01
	rti		; 40

	eor ($0E.b,X)		; 41 0E
	and $0C.b,X		; 35 0C
	and $182B1C.l,X		; 3F 1C 2B 18
	and $107F10.l		; 2F 10 7F 10
	adc $305F30.l,X		; 7F 30 5F 30
	sbc $1E1B1F.l		; EF 1F 1B 1E
	brk $1C.b		; 00 1C
	trb $3C.b		; 14 3C
	bmi  56.b		; 30 38
	jsr $063E.w		; 20 3E 06
	adc $567F67.l,X		; 7F 67 7F 56
	dex		; CA
	tad		; 5B
	cmp ($4E.b,X)		; C1 4E
	xba		; EB
	jsr $5078.w		; 20 78 50
	sei		; 78
	ldy #$2B.b		; A0 2B
	bra  27.b		; 80 1B
	cpy #$15.b		; C0 15
	iny		; C8
	ora $71.b,X		; 15 71
	php		; 08
	adc $3700.w,Y		; 79 00 37
	brk $D7.b		; 00 D7
	brk $27.b		; 00 27
	brk $54.b		; 00 54
	brk $37.b		; 00 37
	cpy #$FB.b		; C0 FB
	jmp ($FE80.w,X)		; 7C 80 FE
	cop $BD.b		; 02 BD
	and ($6E.b,X)		; 21 6E
	jsr $2007.w		; 20 07 20
	and $7402.w		; 2D 02 74
	ora $FC.b,S		; 03 FC
	rti		; 40

	brk $01.b		; 00 01
	brk $98.b		; 00 98
	jsl $D823D8.l		; 22 D8 23 D8
	and $D8.b,S		; 23 D8
	ora $D2.b,S		; 03 D2
	brk $98.b		; 00 98
	brk $58.b		; 00 58
	sta ($6D.b)		; 92 6D
	bcc 111.b		; 90 6F
	brk $FE.b		; 00 FE
	trb $24FE.w		; 1C FE 24
	inc $58.b		; E6 58
.ACCU 16
.INDEX 16
	rep #$78		; C2 78
.ACCU 16
.INDEX 16
	rep #$78		; C2 78
.ACCU 16
.INDEX 16
	rep #$B6		; C2 B6
	sta ($B0.b)		; 92 B0
	bcc  12.b		; 90 0C
	tsb $6060.w		; 0C 60 60
	cli		; 58
	rti		; 40

	bit $3C00.w,X		; 3C 00 3C
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
.INDEX 16
	rep #$1C		; C2 1C
.INDEX 16
	rep #$1C		; C2 1C
.INDEX 16
	rep #$1C		; C2 1C
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	sbc $3C.b,S		; E3 3C
	sbc $2E.b,S		; E3 2E
	adc $3C.b,S		; 63 3C
	brk $7C.b		; 00 7C
	rti		; 40

	jmp ($7E40.w,X)		; 7C 40 7E
	.db $42, $7E		; 42 7E
	.db $42, $5E		; 42 5E
	.db $42, $1E		; 42 1E
	cop $1C.b		; 02 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$F0F0.w		; E0 F0 F0
	rts		; 60

	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F080.w		; E0 80 F0
	cpy #$60F8.w		; C0 F8 60
	sed		; F8
	jsr $00F8.w		; 20 F8 00
	sei		; 78
	php		; 08
	ldy $DE9C.w,X		; BC 9C DE
	dec $8F5F.w,X		; DE 5F 8F
	eor $00DF0F.l,X		; 5F 0F DF 00
	asl $F820.w		; 0E 20 F8
	brk $FC.b		; 00 FC
	brk $7E.b		; 00 7E
	php		; 08
	and $C63F8C.l,X		; 3F 8C 3F C6
	adc $003F02.l,X		; 7F 02 3F 00
	ora $013E01.l,X		; 1F 01 3E 01
	rol $3201.w,X		; 3E 01 32
	ora ($22.b,X)		; 01 22
	brk $21.b		; 00 21
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($01.b,S),Y		; 13 01
	ora ($13.b,S),Y		; 13 13
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	asl $1EE0.w,X		; 1E E0 1E
	cpx #$E01E.w		; E0 1E E0
	asl $1FE0.w,X		; 1E E0 1F
	sbc ($1F.b,X)		; E1 1F
	lda ($0E.b,X)		; A1 0E
	lda ($0E.b,X)		; A1 0E
	and ($BF.b,X)		; 21 BF
	ldy #$A0BF.w		; A0 BF A0
	lda $A0BFA0.l,X		; BF A0 BF A0
	ldx $3EA0.w,Y		; BE A0 3E
	jsr $213F.w		; 20 3F 21
	ora $050201.l,X		; 1F 01 02 05
	ora $07.b,S		; 03 07
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	ora [$0A.b]		; 07 0A
	ora [$1E.b]		; 07 1E
	asl $1F.b		; 06 1F
	asl $0317.w		; 0E 17 03
	ora $03.b,S		; 03 03
	brk $07.b		; 00 07
	tsb $07.b		; 04 07
	brk $07.b		; 00 07
	ora $0F.b		; 05 0F
	ora #$000F.w		; 09 0F 00
	ora $D23509.l		; 0F 09 35 D2
	ora [$F0.b],Y		; 17 F0
	phd		; 0B
	sed		; F8
	tsb $FD.b		; 04 FD
	bpl -29.b		; 10 E3
	cop $FE.b		; 02 FE
	rtl		; 6B

	clv		; B8
	dec $50.b		; C6 50
	cpx $EF42.w		; EC 42 EF
	jsr $40C7.w		; 20 C7 40
	rep #$40		; C2 40
	cmp ($CD.b,X)		; C1 CD
	sta $94.b		; 85 94
	ora [$20.b]		; 07 20
	ora $0F0770.l,X		; 1F 70 07 0F
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	ora [$0B.b]		; 07 0B
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	ora $07.b,S		; 03 07
	ora $080F08.l		; 0F 08 0F 08
	ora $080F08.l		; 0F 08 0F 08
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$04.b]		; 07 04
	cpy $FF.b		; C4 FF
	cmp $C9FE.w		; CD FE C9
	inc $FDC2.w,X		; FE C2 FD
.ACCU 16
.INDEX 16
	rep #$FD		; C2 FD
	cpx $DB.b		; E4 DB
	pea $F0CB.w		; F4 CB F0
	cmp $DD00ED.l,X		; DF ED 00 DD
	ora ($EB.b,X)		; 01 EB
	ora ($F6.b,X)		; 01 F6
	cop $EE.b		; 02 EE
	cop $ED.b		; 02 ED
	bit $F5.b		; 24 F5
	bit $F9.b,X		; 34 F9
	jsr $52AF.w		; 20 AF 52
	plp		; 28
	cmp [$2A.b],Y		; D7 2A
	cmp $2A.b,X		; D5 2A
	cmp $29.b,X		; D5 29
	dec $49.b,X		; D6 49
	ldx $44.b,Y		; B6 44
	tyx		; BB
	mvp $A8,$BB		; 44 BB A8
	lda $6A2868.l		; AF 68 28 6A
	rol A		; 2A
	nop		; EA
	rol A		; 2A
	xce		; FB
	and #$49DB.w		; 29 DB 49
	cmp $DD44.w,X		; DD 44 DD
	mvp $50,$A0		; 44 A0 50
	ldy #$9050.w		; A0 50 90
	rts		; 60

	bvc -88.b		; 50 A8
	pha		; 48
	ldy $28.b,X		; B4 28
	pei ($A8.b)		; D4 A8
	mvn $68,$90		; 54 90 68
	ldy #$A0A0.w		; A0 A0 A0
	ldy #$90B0.w		; A0 B0 90
	bne  80.b		; D0 50
	cli		; 58
	pha		; 48
	pla		; 68
	plp		; 28
	tay		; A8
	tay		; A8
	bcs -112.b		; B0 90
	brk $06.b		; 00 06
	ora $06.b,S		; 03 06
	ora ($04.b,X)		; 01 04
	ora $0C.b,S		; 03 0C
	ora [$0C.b]		; 07 0C
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	asl $0318.w		; 0E 18 03
	cop $01.b		; 02 01
	brk $07.b		; 00 07
	tsb $07.b		; 04 07
	tsb $03.b		; 04 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	php		; 08
	ora [$00.b]		; 07 00
	cpy #$E018.w		; C0 18 E0
	bmi -128.b		; 30 80
	bmi -64.b		; 30 C0
	rts		; 60

	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	beq  16.b		; F0 10
	cpy #$E000.w		; C0 00 E0
	jsr $0080.w		; 20 80 00
	cpy #$0040.w		; C0 40 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $18.b		; 00 18
.INDEX 16
	rep #$18		; C2 18
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
.ACCU 8
.INDEX 8
	sep #$3C		; E2 3C
	.db $62, $2C, $62		; 62 2C 62
	tsb $1462.w		; 0C 62 14
	and ($14.b)		; 32 14
	and ($7C.b)		; 32 7C
	rti		; 40

	jmp ($5C40.w,X)		; 7C 40 5C
	rti		; 40

	jmp $001C40.l		; 5C 40 1C 00
	bit $2C20.w,X		; 3C 20 2C
	jsr $000C.w		; 20 0C 00
	php		; 08
	dec A		; 3A
	php		; 08
	dec A		; 3A
	tsb $1E.b		; 04 1E
	tsb $1E.b		; 04 1E
	brk $1E.b		; 00 1E
	tsb $1E.b		; 04 1E
	brk $1E.b		; 00 1E
	php		; 08
	inc A		; 1A
	trb $10.b		; 14 10
	trb $10.b		; 14 10
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	bpl   0.b		; 10 00
	tsb $0000.w		; 0C 00 00
	brk $04.b		; 00 04
	brk $1E.b		; 00 1E
	and ($08.b,S),Y		; 33 08
	jsl $08260C.l		; 22 0C 26 08
	rol $00.b		; 26 00
	bit $00.b		; 24 00
	bit $3C08.w,X		; 3C 08 3C
	brk $7C.b		; 00 7C
	tsb $1E00.w		; 0C 00 1E
	cop $18.b		; 02 18
	brk $1C.b		; 00 1C
	tsb $1C.b		; 04 1C
	tsb $00.b		; 04 00
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0A1B0A.l		; 0F 0A 1B 0A
	tas		; 1B
	tsb $1E.b		; 04 1E
	bpl  46.b		; 10 2E
	trb $2E.b		; 14 2E
	bit $08.b,X		; 34 08
	sec		; 38
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	php		; 08
	bpl  16.b		; 10 10
	trb $1810.w		; 1C 10 18
	bpl   0.b		; 10 00
	brk $50.b		; 00 50
	.db $62, $20, $76		; 62 20 76
	sec		; 38
	ror $34.b,X		; 76 34
	sbc $3EFBBA.l,X		; FF BA FB 3E
	xce		; FB
	bit $383A.w,X		; 3C 3A 38
	rol $F000.w,X		; 3E 00 F0
	cop $F8.b		; 02 F8
	bit $F8.b		; 24 F8
	rol $78.b,X		; 36 78
	lda ($7C.b)		; B2 7C
	and ($7C.b)		; 32 7C
	tsx		; BA
	jmp ($7CB8.w,X)		; 7C B8 7C
	jsr $0090.w		; 20 90 00
	iny		; C8
	brk $E4.b		; 00 E4
	brk $FE.b		; 00 FE
	tsb $0073.w		; 0C 73 00
	ora $000F00.l,X		; 1F 00 0F 00
	brk $60.b		; 00 60
	brk $30.b		; 00 30
	brk $58.b		; 00 58
	brk $60.b		; 00 60
	brk $1C.b		; 00 1C
	tsb $000E.w		; 0C 0E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $79.b		; 00 79
	brk $47.b		; 00 47
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sec		; 38
	sei		; 78
	clc		; 18
	clv		; B8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bpl 120.b		; 10 78
	sec		; 38
	sed		; F8
	sei		; 78
	jsr ($FC38.w,X)		; FC 38 FC
	bpl 124.b		; 10 7C
	ora [$4C.b]		; 07 4C
	ora [$0C.b]		; 07 0C
	ora $0C.b		; 05 0C
	ora [$0E.b]		; 07 0E
	ora [$1E.b]		; 07 1E
	tsb $091C.w		; 0C 1C 09
	and $3115.w,Y		; 39 15 31
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora #$08.b		; 09 08
	ora #$08.b		; 09 08
	ora $00.b,S		; 03 00
	asl $10.b,X		; 16 10
	rol $8B20.w		; 2E 20 8B
	cli		; 58
	phd		; 0B
	cli		; 58
	phd		; 0B
	pha		; 48
	sta $C8.b,S		; 83 C8
	sta [$CC.b]		; 87 CC
	sta [$8C.b]		; 87 8C
	ora $8C.b		; 05 8C
	ora ($8C.b,X)		; 01 8C
	sta [$00.b]		; 87 00
	sta [$00.b]		; 87 00
	sta [$00.b]		; 87 00
	ora $080B08.l		; 0F 08 0B 08
	ora $00.b,S		; 03 00
	sta $80.b,S		; 83 80
	ora [$04.b]		; 07 04
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	rti		; 40

	rts		; 60

	bra  32.b		; 80 20
	bra  32.b		; 80 20
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	lda $C35881.l,X		; BF 81 58 C3
	plp		; 28
	sbc ($10.b,X)		; E1 10
	sbc ($00.b,S),Y		; F3 00
	rol $DCC3.w,X		; 3E C3 DC
	bit $07.b,X		; 34 07
	and $7E01.w,X		; 3D 01 7E
	brk $3F.b		; 00 3F
	ora $1E.b		; 05 1E
	tsb $8C.b		; 04 8C
	brk $00.b		; 00 00
	cmp ($83.b,X)		; C1 83
	sbc $7A.b,S		; E3 7A
	.db $82, $7E, $80		; 82 7E 80
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bra  63.b		; 80 3F
	clc		; 18
	clc		; 18
	sta [$A7.b]		; 87 A7
	eor $57.b,S		; 43 57
	and [$CF.b],Y		; 37 CF
	and [$DF.b]		; 27 DF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E7.b		; 00 E7
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	and ($37.b,S),Y		; 33 37
	lda ($A7.b,S),Y		; B3 A7
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	ora ($06.b,X)		; 01 06
	ora ($07.b,X)		; 01 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora $00.b,S		; 03 00
	adc ($DD.b,X)		; 61 DD
	adc ($9C.b,X)		; 61 9C
	cmp ($3C.b,X)		; C1 3C
	cpy #$3E.b		; C0 3E
	cpy #$3E.b		; C0 3E
	cpy #$BE.b		; C0 BE
	bra  -2.b		; 80 FE
	bra  -1.b		; 80 FF
	beq -93.b		; F0 A3
	cpx #$63.b		; E0 63
	cpy #$C3.b		; C0 C3
	cpx #$E1.b		; E0 E1
	beq -15.b		; F0 F1
	sed		; F8
	adc $33FE.w,Y		; 79 FE 33
	inc $7F22.w,X		; FE 22 7F
	and $3F5F.w,Y		; 39 5F 3F
	ora $275F9F.l		; 0F 9F 5F 27
	eor $CD3E3B.l,X		; 5F 3B 3E CD
	and $55ABD2.l		; 2F D2 AB 55
	brk $F9.b		; 00 F9
	ora $7F87FF.l		; 0F FF 87 7F
	ora $FF.b,S		; 03 FF
	ora #$FF.b		; 09 FF
	tsb $3F.b		; 04 3F
	jsl $ABA92F.l		; 22 2F A9 AB
	cpx #$80.b		; E0 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	rti		; 40

	bra -128.b		; 80 80
	rti		; 40

	cpy #$A0.b		; C0 A0
	ldy #$50.b		; A0 50
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	jsr $0FA0.w		; 20 A0 0F
	and [$0F.b],Y		; 37 0F
	and [$0F.b],Y		; 37 0F
	and [$1F.b],Y		; 37 1F
	and [$1F.b]		; 27 1F
	and $0F2F1F.l		; 2F 1F 2F 0F
	rol $3E0F.w,X		; 3E 0F 3E
	ora $081F08.l,X		; 1F 08 1F 08
	ora $181F08.l,X		; 1F 08 1F 18
	ora $101F10.l,X		; 1F 10 1F 10
	ora $111F01.l,X		; 1F 01 1F 11
	cmp $7E.b		; C5 7E
	cmp $C97E.w		; CD 7E C9
	ror $5EE1.w,X		; 7E E1 5E
.INDEX 8
	sep #$5D		; E2 5D
	.db $62, $FD, $62		; 62 FD 62
	sbc $AF70.w,X		; FD 70 AF
	sbc $DD81.w		; ED 81 DD
	sta ($EB.b,X)		; 81 EB
	sta ($F3.b,X)		; 81 F3
	lda ($F6.b,X)		; A1 F6
	ldx #$F6.b		; A2 F6
	cop $F2.b		; 02 F2
	cop $FC.b		; 02 FC
	mvn $FF,$60		; 54 60 FF
	bit $3887.w,X		; 3C 87 38
	sta $38.b,S		; 83 38
	sta $38.b,S		; 83 38
	sta $39.b,S		; 83 39
	sta $39.b,S		; 83 39
	sta $39.b,S		; 83 39
	sta $9B.b,S		; 83 9B
	bra  -8.b		; 80 F8
	bra  -3.b		; 80 FD
	sta ($FD.b,X)		; 81 FD
	sta ($FD.b,X)		; 81 FD
	sta ($FC.b,X)		; 81 FC
	bra  -4.b		; 80 FC
	bra  -4.b		; 80 FC
	bra -128.b		; 80 80
	sei		; 78
	brk $F8.b		; 00 F8
	rts		; 60

	sed		; F8
	bcc -104.b		; 90 98
	rts		; 60

	php		; 08
	bvs   8.b		; 70 08
	bvs   8.b		; 70 08
	bvs   8.b		; 70 08
	bra -128.b		; 80 80
	bmi  48.b		; 30 30
	bcc -112.b		; 90 90
	rts		; 60

	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	brk $0D.b		; 00 0D
	brk $1D.b		; 00 1D
	brk $33.b		; 00 33
	brk $27.b		; 00 27
	ora ($17.b,X)		; 01 17
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora $190C.w		; 0D 0C 19
	clc		; 18
	ora #$08.b		; 09 08
	ora $02.b,S		; 03 02
	phd		; 0B
	phd		; 0B
	ora $FF7F05.l		; 0F 05 7F FF
	eor $91FF.w		; 4D FF 91
	sbc $9CFFA2.l,X		; FF A2 FF 9C
	sbc $25.b,S		; E3 25
	bvc -35.b		; 50 DD
	bvs -42.b		; 70 D6
	pha		; 48
	adc $00FF00.l,X		; 7F 00 FF 00
	cmp $B300.w,X		; DD 00 B3
	brk $A0.b		; 00 A0
	brk $83.b		; 00 83
	clc		; 18
	sta ($14.b,S),Y		; 93 14
	lda ($08.b,S),Y		; B3 08
	brk $F8.b		; 00 F8
	cpx #$F8.b		; E0 F8
	bmi  -4.b		; 30 FC
	pla		; 68
	jsr ($BC48.w,X)		; FC 48 BC
	ldy #$18.b		; A0 18
	cpy #$38.b		; C0 38
	bra 112.b		; 80 70
	inx		; E8
	brk $F0.b		; 00 F0
	brk $B8.b		; 00 B8
	brk $78.b		; 00 78
	brk $28.b		; 00 28
	bra   8.b		; 80 08
	rti		; 40

	bpl -128.b		; 10 80
	jsr $0E00.w		; 20 00 0E
	adc $0E.b,S		; 63 0E
	adc $1C.b,S		; 63 1C
	and ($1C.b),Y		; 31 1C
	and ($04.b),Y		; 31 04
	and ($06.b),Y		; 31 06
	and ($0E.b),Y		; 31 0E
	ora $190E.w,Y		; 19 0E 19
	bit $3C20.w,X		; 3C 20 3C
	jsr $202E.w		; 20 2E 20
	asl $1E00.w		; 0E 00 1E
	bpl  30.b		; 10 1E
	bpl   6.b		; 10 06
	brk $06.b		; 00 06
	brk $14.b		; 00 14
	rol $08.b,X		; 36 08
	bit $5C20.w,X		; 3C 20 5C
	plp		; 28
	jmp $701068.l		; 5C 68 10 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	bpl  32.b		; 10 20
	jsr $2038.w		; 20 38 20
	bmi  32.b		; 30 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	and $1E7D1E.l		; 2F 1E 7D 1E
	adc $593E.w,X		; 7D 3E 59
	bit $38FB.w,X		; 3C FB 38
	inc $B579.w,X		; FE 79 B5
	adc ($ED.b),Y		; 71 ED
	ora $223F11.l,X		; 1F 11 3F 22
	and $263F02.l,X		; 3F 02 3F 26
	ror $7C44.w,X		; 7E 44 7C
	ora ($79.b,X)		; 01 79
	phk		; 4B
	adc $5F13.w,Y		; 79 13 5F
	rti		; 40

	tya		; 98
	sed		; F8
	bra   7.b		; 80 07
	ldx $3B70.w,Y		; BE 70 3B
	bvs -98.b		; 70 9E
	brk $99.b		; 00 99
	rts		; 60

	adc $3F30.w,X		; 7D 30 3F
	bra  39.b		; 80 27
	ldy #$00.b		; A0 00
	sed		; F8
	bpl  -9.b		; 10 F7
	bpl -10.b		; 10 F6
	brk $E1.b		; 00 E1
	brk $EE.b		; 00 EE
	brk $F6.b		; 00 F6
	sta [$7F.b]		; 87 7F
	cop $3F.b		; 02 3F
	brk $F8.b		; 00 F8
	iny		; C8
	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	brk $50.b		; 00 50
	bra -16.b		; 80 F0
	bra -77.b		; 80 B3
	ora [$D8.b]		; 07 D8
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	bmi   0.b		; 30 00
	ldy #$00.b		; A0 00
	brk $00.b		; 00 00
	ldy #$00.b		; A0 00
	ldy #$03.b		; A0 03
	ora $03.b		; 05 03
	ora $070B07.l		; 0F 07 0B 07
	ora $070F07.l		; 0F 07 0F 07
	ora $0F170F.l,X		; 1F 0F 17 0F
	ora [$07.b],Y		; 17 07
	asl $07.b		; 06 07
	brk $07.b		; 00 07
	tsb $0F.b		; 04 0F
	php		; 08
	ora $000F00.l		; 0F 00 0F 00
	ora $181F08.l		; 0F 08 1F 18
	bra  -1.b		; 80 FF
	bra  -1.b		; 80 FF
	.db $82, $FF, $D3		; 82 FF D3
	lda $D0AFD1.l		; AF D1 AF D0
	sbc $E2EFD0.l		; EF D0 EF E2
	cmp $FB20F8.l,X		; DF F8 20 FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	bvc  -3.b		; 50 FD
	bvc  -3.b		; 50 FD
	bpl  -6.b		; 10 FA
	bpl -10.b		; 10 F6
	jsr $54AB.w		; 20 AB 54
	rol A		; 2A
	cmp $2A.b,X		; D5 2A
	cmp $09.b,X		; D5 09
	inc $09.b,X		; F6 09
	inc $49.b,X		; F6 49
	ldx $40.b,Y		; B6 40
	lda $AABF40.l,X		; BF 40 BF AA
	plb		; AB
	ror A		; 6A
	rol A		; 2A
	ror A		; 6A
	rol A		; 2A
	tad		; 5B
	ora #$DB.b		; 09 DB
	ora #$DB.b		; 09 DB
	eor #$DB.b		; 49 DB
	rti		; 40

	stp		; DB
	rti		; 40

	ldy #$50.b		; A0 50
	bcc 104.b		; 90 68
	bvc -88.b		; 50 A8
	pha		; 48
	ldy $28.b,X		; B4 28
	pei ($24.b)		; D4 24
	phx		; DA
	sty $6A.b,X		; 94 6A
	bcc 108.b		; 90 6C
	ldy #$A0.b		; A0 A0
	bcs -112.b		; B0 90
	bne  80.b		; D0 50
	cli		; 58
	pha		; 48
	pla		; 68
	plp		; 28
	bit $B424.w		; 2C 24 B4
	sty $B0.b,X		; 94 B0
	bcc  15.b		; 90 0F
	asl $170E.w,X		; 1E 0E 17
	asl $1F.b		; 06 1F
	asl $0F.b		; 06 0F
	asl $0B.b		; 06 0B
	cop $0F.b		; 02 0F
	cop $05.b		; 02 05
	brk $07.b		; 00 07
	ora $080F11.l,X		; 1F 11 0F 08
	ora $080F00.l		; 0F 00 0F 08
	ora $00060D.l		; 0F 0D 06 00
	asl $06.b		; 06 06
	cop $00.b		; 02 00
	bvs -81.b		; 70 AF
	bmi -17.b		; 30 EF
	bmi -49.b		; 30 CF
	bpl -17.b		; 10 EF
	bpl 111.b		; 10 6F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	inc $FE56.w,X		; FE 56 FE
	stx $7E.b,Y		; 96 7E
	rol $7E.b,X		; 36 7E
	lsr $3E.b,X		; 56 3E
	rol $3E.b,X		; 36 3E
	rol $1E.b		; 26 1E
	asl $0E.b,X		; 16 0E
	asl $79.b		; 06 79
	cmp $78.b,S		; C3 78
	cmp $7C.b,S		; C3 7C
	cmp [$3C.b]		; C7 3C
	cmp [$3C.b]		; C7 3C
	cmp [$38.b]		; C7 38
	cmp [$58.b]		; C7 58
	cmp [$58.b]		; C7 58
	dec $BC.b		; C6 BC
	bra  61.b		; 80 3D
	ora ($39.b,X)		; 01 39
	ora ($79.b,X)		; 01 79
	eor ($79.b,X)		; 41 79
	eor ($7C.b,X)		; 41 7C
	mvp $04,$3C		; 44 3C 04
	bit $7004.w,X		; 3C 04 70
	php		; 08
	sei		; 78
	tsb $8CF8.w		; 0C F8 8C
	sed		; F8
	sty $84F0.w		; 8C F0 84
	bcs -124.b		; B0 84
	bmi -124.b		; 30 84
	bvs -60.b		; 70 C4
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	sei		; 78
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	bra -68.b		; 80 BC
	sty $00.b		; 84 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000F00.l,X		; 1F 00 0F 00
	ora $000600.l		; 0F 00 06 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	asl $0606.w		; 0E 06 06
	asl $06.b		; 06 06
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	brk $06.b		; 00 06
	ora $06.b,S		; 03 06
	ora ($04.b,X)		; 01 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	bvc -58.b		; 50 C6
	plp		; 28
	sty $8CE0.w		; 8C E0 8C
	rts		; 60

	php		; 08
	beq  24.b		; F0 18
	cpx #$18.b		; E0 18
	cpy #$10.b		; C0 10
	cpx #$30.b		; E0 30
	ldy $F084.w,X		; BC 84 F0
	bra 120.b		; 80 78
	php		; 08
	sed		; F8
	php		; 08
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bvc -60.b		; 50 C4
	cli		; 58
	dec $5C.b		; C6 5C
	dec $1C.b		; C6 1C
	dec $2C.b,X		; D6 2C
	inc $6E2C.w		; EE 2C 6E
	bit $66.b		; 24 66
	plp		; 28
	.db $62, $BC, $84		; 62 BC 84
	bit $3804.w,X		; 3C 04 38
	brk $68.b		; 00 68
	rti		; 40

	bvc  64.b		; 50 40
	bvc  64.b		; 50 40
	inc A		; 1A
	cop $1E.b		; 02 1E
	cop $00.b		; 02 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $FF.b		; 00 FF
	sbc $F6FFFC.l,X		; FF FC FF F6
	sed		; F8
	rts		; 60

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $FF.b,S		; 83 FF
	sbc $C0FFF0.l,X		; FF F0 FF C0
	sbc $00F800.l,X		; FF 00 F8 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $6C.b		; 00 6C
	asl $F8F0.w,X		; 1E F0 F8
	cpx #$F0.b		; E0 F0
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	php		; 08
	sbc $E0FCF0.l,X		; FF F0 FC E0
	sed		; F8
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $13.b		; 06 13
	tsb $12.b		; 04 12
	tsb $16.b		; 04 16
	brk $1E.b		; 00 1E
	tsb $1E.b		; 04 1E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	plp		; 28
	jmp ($000C.w)		; 6C 0C 00
	asl $0802.w		; 0E 02 08
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	brk $04.b		; 00 04
	and ($04.b)		; 32 04
	and ($00.b)		; 32 00
	inc A		; 1A
	php		; 08
	asl $0A.b,X		; 16 0A
	asl $00.b,X		; 16 00
	asl $0800.w		; 0E 00 08
	brk $09.b		; 00 09
	trb $1C10.w		; 1C 10 1C
	bpl   4.b		; 10 04
	brk $08.b		; 00 08
	php		; 08
	asl $0008.w		; 0E 08 00
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	sbc ($00.b)		; F2 00
	sta $009F03.l		; 8F 03 9F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($70.b,X)		; 01 70
	bvs 103.b		; 70 67
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $EC.b		; 00 EC
	brk $FD.b		; 00 FD
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	iny		; C8
	brk $18.b		; 00 18
	.db $42, $7C		; 42 7C
	dec $74.b		; C6 74
	dec $38.b		; C6 38
	sty $8C38.w		; 8C 38 8C
	jsr $208C.w		; 20 8C 20
	dey		; 88
	bmi -104.b		; 30 98
	ror $3842.w,X		; 7E 42 38
	brk $38.b		; 00 38
	brk $74.b		; 00 74
	tsb $70.b		; 04 70
	brk $78.b		; 00 78
	php		; 08
	sei		; 78
	php		; 08
	rts		; 60

	brk $00.b		; 00 00
	iny		; C8
	rti		; 40

	ldy $9E60.w,X		; BC 60 9E
	tsb $FF.b		; 04 FF
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	rti		; 40

	rti		; 40

	sei		; 78
	rts		; 60

	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	ora $071D03.l		; 0F 03 1D 07
	tsa		; 3B
	ora [$3F.b]		; 07 3F
	ora $6F1F7F.l		; 0F 7F 1F 6F
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora $141F0A.l		; 0F 0A 1F 14
	and $203F20.l,X		; 3F 20 3F 20
	and $FF7F10.l,X		; 3F 10 7F FF
	sbc $FDFEFE.l,X		; FF FE FE FD
	inc $FCFD.w,X		; FE FD FC
	xce		; FB
	jsr ($F9FB.w,X)		; FC FB F9
	inc $FEF9.w,X		; FE F9 FE
	sbc $01FF00.l,X		; FF 00 FF 01
	sbc $02FF02.l,X		; FF 02 FF 02
	sbc $05FF05.l,X		; FF 05 FF 05
	sbc $03FF03.l,X		; FF 03 FF 03
	sta ($7E.b,X)		; 81 7E
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bmi -33.b		; 30 DF
	adc ($AF.b),Y		; 71 AF
	cpx #$78.b		; E0 78
	sbc $DF.b,S		; E3 DF
	cmp $BF.b,S		; C3 BF
	sbc $F8B5.w,X		; FD B5 F8
	rts		; 60

	sed		; F8
	cpy #$F8.b		; C0 F8
	lda ($F0.b,X)		; A1 F0
	cmp ($F0.b,S),Y		; D3 F0
	sta [$E1.b]		; 87 E1
	and [$E1.b]		; 27 E1
	eor $8017D7.l		; 4F D7 17 80
	eor $86CD00.l		; 4F 00 CD 86
	tay		; A8
	cmp $C8.b,S		; C3 C8
	sbc $EC.b		; E5 EC
	adc ($66.b)		; 72 66
	lda #$B7.b		; A9 B7
	cpy #$FF.b		; C0 FF
	bra -68.b		; 80 BC
	ora $31.b,S		; 03 31
	ora [$F0.b]		; 07 F0
	ora [$F0.b]		; 07 F0
	sbc $F0.b,S		; E3 F0
	adc ($F8.b,X)		; 61 F8
	cop $FA.b		; 02 FA
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $1F.b		; 00 1F
	phd		; 0B
	sed		; F8
	eor $017EC0.l		; 4F C0 7E 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$10.b],Y		; 17 10
	lda $00FE80.l,X		; BF 80 FE 00
	lda ($9C.b)		; B2 9C
	bvs -33.b		; 70 DF
	jsr $00FF.w		; 20 FF 00
	sbc $98FF18.l,X		; FF 18 FF 98
	ror $FC58.w,X		; 7E 58 FC
	cld		; D8
	jmp ($0467.w,X)		; 7C 67 04
	lda $83.b,S		; A3 83
	eor $2641.w		; 4D 41 26
	jsr $C0C2.w		; 20 C2 C0
	bra   0.b		; 80 00
	rti		; 40

	brk $C0.b		; 00 C0
	bra   0.b		; 80 00
	ora $00.b,S		; 03 00
	ora $001000.l,X		; 1F 00 10 00
	ora ($00.b),Y		; 11 00
	phd		; 0B
	brk $08.b		; 00 08
	brk $0D.b		; 00 0D
	ora ($0F.b,X)		; 01 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0E0E0F.l		; 0F 0F 0E 0E
	tsb $04.b		; 04 04
	ora [$07.b]		; 07 07
	cop $02.b		; 02 02
	ora $00.b		; 05 00
	brk $BF.b		; 00 BF
	ora ($4E.b,X)		; 01 4E
	ora $8D.b,S		; 03 8D
	ora [$1B.b]		; 07 1B
	ora $FE17FF.l		; 0F FF 17 FE
	pei ($3B.b)		; D4 3B
	bne  45.b		; D0 2D
	eor $42.b,S		; 43 42
	lda [$B1.b],Y		; B7 B1
	adc [$72.b],Y		; 77 72
	sbc $101FEC.l		; EF EC 1F 10
	adc $C4FD01.l,X		; 7F 01 FD C4
	plx		; FA
	beq -32.b		; F0 E0
	bcc  96.b		; 90 60
	bcc   0.b		; 90 00
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rts		; 60

	brk $E0.b		; 00 E0
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1D.b		; 00 1D
	tda		; 7B
	ora $1D7E.w,X		; 1D 7E 1D
	rol $2F1C.w,X		; 3E 1C 2F
	tsb $0C3F.w		; 0C 3F 0C
	ora $0C1F0C.l,X		; 1F 0C 1F 0C
	ora $3F043F.l,X		; 1F 3F 04 3F
	and ($3F.b,X)		; 21 3F
	and ($1F.b,X)		; 21 1F
	bpl  31.b		; 10 1F
	brk $1F.b		; 00 1F
	ora ($1E.b),Y		; 11 1E
	bpl  14.b		; 10 0E
	cop $EC.b		; 02 EC
	sbc $CEDDEE.l,X		; FF EE DD CE
	sbc $CEFFCE.l,X		; FF CE FF CE
	lda [$8F.b],Y		; B7 8F
	inc $87.b,X		; F6 87
	inc $5B86.w,X		; FE 86 5B
	sbc $32FF12.l,X		; FF 12 FF 32
	sbc $20EF00.l		; EF 00 EF 20
	cmp $09CF48.l		; CF 48 CF 09
	cmp $8C8F41.l		; CF 41 8F 8C
	trb $08FF.w		; 1C FF 08
	sbc $12FF00.l,X		; FF 00 FF 12
	sbc $EE11.w		; ED 11 EE
	brk $FF.b		; 00 FF
	php		; 08
	sbc [$08.b],Y		; F7 08
	sbc [$BE.b],Y		; F7 BE
	bra -99.b		; 80 9D
	bra  41.b		; 80 29
	brk $36.b		; 00 36
	ora ($37.b)		; 12 37
	ora ($37.b),Y		; 11 37
	brk $3B.b		; 00 3B
	php		; 08
	tsa		; 3B
	php		; 08
	dey		; 88
	adc [$45.b],Y		; 77 45
	tyx		; BB
	and ($DC.b,X)		; 21 DC
	ora $FC.b,S		; 03 FC
	ora [$F8.b]		; 07 F8
	sty $007C.w		; 8C 7C 00
	sbc $BAE000.l,X		; FF 00 E0 BA
	dey		; 88
	jmp.w [$EB44]		; DC 44 EB
	jsr $00F3.w		; 20 F3 00
	adc [$00.b],Y		; 77 00
	lda $80.b,S		; A3 80
	sta ($01.b,X)		; 81 01
	rti		; 40

	rti		; 40

	brk $F0.b		; 00 F0
	cpy #$FC.b		; C0 FC
	bne  31.b		; D0 1F
	pea $FD07.w		; F4 07 FD
	ora ($0E.b,X)		; 01 0E
	brk $37.b		; 00 37
	beq   3.b		; F0 03
	sed		; F8
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	cpx $FB0C.w		; EC 0C FB
	ora $FE.b,S		; 03 FE
	brk $FF.b		; 00 FF
	brk $CF.b		; 00 CF
	cpy #$0F.b		; C0 0F
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	rts		; 60

	bra  32.b		; 80 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	brk $C0.b		; 00 C0
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
	brk $00.b		; 00 00
	and $DF3F5F.l,X		; 3F 5F 3F DF
	and $DD3FDF.l,X		; 3F DF 3F DD
	and $DD3FDD.l,X		; 3F DD 3F DD
	and $3DDB.w,X		; 3D DB 3D
	tad		; 5B
	adc $607F60.l,X		; 7F 60 7F 60
	adc $227F20.l,X		; 7F 20 7F 22
	adc $227F22.l,X		; 7F 22 7F 22
	adc $647F64.l,X		; 7F 64 7F 64
	sbc $F9FE.w,Y		; F9 FE F9
	inc $FCFB.w,X		; FE FB FC
	xce		; FB
	jsr ($EEF9.w,X)		; FC F9 EE
	sbc $EDEE.w,Y		; F9 EE ED
	inc $FFEC.w,X		; FE EC FF
	sbc $05FF01.l,X		; FF 01 FF 05
	sbc $07FF07.l,X		; FF 07 FF 07
	sbc $15FF15.l,X		; FF 15 FF 15
	sbc $02FF01.l,X		; FF 01 FF 02
	sta ($FF.b,X)		; 81 FF
	sta ($7F.b,X)		; 81 7F
	stz $1C7E.w		; 9C 7E 1C
	sbc $06FF0C.l,X		; FF 0C FF 06
	sbc $38FF00.l,X		; FF 00 FF 38
	sbc $CC11C1.l,X		; FF C1 11 CC
	cmp ($DC.b,X)		; C1 DC
	cmp ($BC.b,X)		; C1 BC
	brk $BC.b		; 00 BC
	brk $9E.b		; 00 9E
	bra -90.b		; 80 A6
	bra -72.b		; 80 B8
	bra -116.b		; 80 8C
	lda [$0E.b]		; A7 0E
	cmp [$30.b]		; C7 30
	rti		; 40

	brk $20.b		; 00 20
	cpx #$18.b		; E0 18
	bpl -18.b		; 10 EE
	tsb $13F3.w		; 0C F3 13
	cpx $FD05.w		; EC 05 FD
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $C0.b		; 00 C0
	cpx #$E0.b		; E0 E0
	bmi  16.b		; 30 10
	cpy $770C.w		; CC 0C 77
	ora ($00.b,S),Y		; 13 00
	ora ($00.b,X)		; 01 00
	sbc $000300.l,X		; FF 00 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EC.b		; 00 EC
	ror $1EF4.w,X		; 7E F4 1E
	inc A		; 1A
	sbc $06F70C.l		; EF 0C F7 06
	stp		; DB
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$80.b		; E0 80
	beq -32.b		; F0 E0
	clv		; B8
	bpl -116.b		; 10 8C
	php		; 08
	asl $04.b		; 06 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$1B.b]		; 07 1B
	ora $EE1F37.l		; 0F 37 1F EE
	and $3DFE5E.l,X		; 3F 5E FE 3D
	jsr ($F8FB.w,X)		; FC FB F8
	sbc [$F0.b],Y		; F7 F0
	sbc $1F040F.l		; EF 0F 04 1F
	php		; 08
	and $A1FF11.l,X		; 3F 11 FF A1
	sbc $05FFC2.l,X		; FF C2 FF 05
	sbc $17FF0B.l,X		; FF 0B FF 17
	bcc 109.b		; 90 6D
	sta ($6F.b),Y		; 91 6F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	trb $3AE0.w		; 1C E0 3A
.ACCU 16
.INDEX 16
	rep #$F2		; C2 F2
	bcs -14.b		; B0 F2
	sbc ($F9.b)		; F2 F9
	adc $F8F8.w,Y		; 79 F8 F8
	sbc ($F1.b),Y		; F1 F1
	inc $DCEE.w		; EE EE DC
	cmp $00BFB8.l,X		; DF B8 BF 00
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
	ora $00.b,S		; 03 00
	ora [$07.b]		; 07 07
	and $6F1E.w,Y		; 39 1E 6F
	bit $00DF.w,X		; 3C DF 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $1F.b		; 00 1F
	asl $3E.b		; 06 3E
	bpl 125.b		; 10 7D
	and ($00.b,X)		; 21 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	lda $747F80.l,X		; BF 80 7F 74
	txa		; 8A
	ora $1F.b		; 05 1F
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$9840.w		; C0 40 98
	tya		; 98
	adc $04.b,X		; 75 04
	inc $12.b,X		; F6 12
	inx		; E8
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	rts		; 60

	ldx $7620.w,Y		; BE 20 76
	jsr $0054.w		; 20 54 00
	stz $00.b,X		; 74 00
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	bpl 100.b		; 10 64
	rti		; 40

	stz $04.b		; 64 04
	rts		; 60

	rts		; 60

	jsr $2000.w		; 20 00 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl 123.b		; 10 7B
	bpl 105.b		; 10 69
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	sec		; 38
	php		; 08
	bmi  48.b		; 30 30
	bpl   0.b		; 10 00
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $FB.b		; 02 FB
	jmp $C15FC1.l		; 5C C1 5F C1
	rol $2F60.w		; 2E 60 2F
	rts		; 60

	ora [$30.b],Y		; 17 30
	phd		; 0B
	sec		; 38
	ora $1C.b		; 05 1C
	sta $01.b		; 85 01
	and $003E01.l,X		; 3F 01 3E 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $101700.l		; 0F 00 17 10
	phd		; 0B
	php		; 08
	brk $01.b		; 00 01
	brk $83.b		; 00 83
	ora ($87.b,X)		; 01 87
	cop $86.b		; 02 86
	ora $CC.b		; 05 CC
	sta $C8.b,S		; 83 C8
	ora $738E59.l		; 0F 59 8E 73
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	sta $84.b		; 85 84
	sta $80.b,S		; 83 80
	ora $40C608.l		; 0F 08 C6 40
	cmp $4C51.w,X		; DD 51 4C
	cmp $B8.b,S		; C3 B8
	stx $70.b		; 86 70
	tsb $18E0.w		; 0C E0 18
	bra  48.b		; 80 30
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	ldx $7C82.w,Y		; BE 82 7C
	tsb $F8.b		; 04 F8
	php		; 08
	beq  16.b		; F0 10
	cpx #$C020.w		; E0 20 C0
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $58.b		; 00 58
	brk $6D.b		; 00 6D
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	cli		; 58
	bpl 100.b		; 10 64
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $F4.b		; 00 F4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$0080.w		; C0 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $071C03.l		; 0F 03 1C 07
	tsa		; 3B
	ora $00007F.l		; 0F 7F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $141F0B.l		; 0F 0B 1F 14
	and $000020.l,X		; 3F 20 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	cpy #$4020.w		; C0 20 40
	bpl   0.b		; 10 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	rti		; 40

	bra -128.b		; 80 80
	cpy #$C040.w		; C0 40 C0
	brk $E0.b		; 00 E0
	jsr $00E0.w		; 20 E0 00
	brk $FC.b		; 00 FC
	bra 126.b		; 80 7E
	jsr ($F6FA.w,X)		; FC FA F6
	cmp $798E.w		; CD 8E 79
	jmp ($1083.w,X)		; 7C 83 10
	cmp $80C2F4.l		; CF F4 C2 80
	brk $F4.b		; 00 F4
	bra  -2.b		; 80 FE
	tsb $FE.b		; 04 FE
	and ($FE.b)		; 32 FE
	stx $8C.b		; 86 8C
	tsb $6008.w		; 0C 08 60
	pha		; 48
	bvc -36.b		; 50 DC
	ldy $78.b		; A4 78
	tsb $30.b		; 04 30
	php		; 08
	bvc -56.b		; 50 C8
	bra -16.b		; 80 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	pha		; 48
	jsr $00F8.w		; 20 F8 00
	sed		; F8
	php		; 08
	bcs -128.b		; B0 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $3F.b		; 00 3F
	ora ($CE.b,X)		; 01 CE
	ora $3D.b,S		; 03 3D
	ora [$3B.b]		; 07 3B
	ora $FE177F.l		; 0F 7F 17 FE
	pei ($3B.b)		; D4 3B
	bne  45.b		; D0 2D
	cmp $C2.b,S		; C3 C2
	and [$31.b],Y		; 37 31
	cmp [$C2.b]		; C7 C2
	cmp $909FCC.l		; CF CC 9F 90
	adc $C4FD01.l,X		; 7F 01 FD C4
	plx		; FA
	beq   0.b		; F0 00
	jsr ($7E80.w,X)		; FC 80 7E
	jsr ($F6FA.w,X)		; FC FA F6
	cmp $798E.w		; CD 8E 79
	jmp ($1083.w,X)		; 7C 83 10
	cmp $80C2F4.l		; CF F4 C2 80
	brk $F4.b		; 00 F4
	bra  -2.b		; 80 FE
	tsb $FE.b		; 04 FE
	and ($FE.b)		; 32 FE
	stx $8C.b		; 86 8C
	tsb $6008.w		; 0C 08 60
	pha		; 48
	bvc  72.b		; 50 48
	adc $00B818.l,X		; 7F 18 B8 00
	brk $84.b		; 00 84
	cpx #$009C.w		; E0 9C 00
	ror $00.b		; 66 00
	sbc $00.b,S		; E3 00
	.db $62, $00, $50		; 62 00 50
	bne   0.b		; D0 00
	jsr ($FC00.w,X)		; FC 00 FC
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	brk $9C.b		; 00 9C
	brk $5E.b		; 00 5E
	brk $DC.b		; 00 DC
	tya		; 98
	jsr ($FC3C.w,X)		; FC 3C FC
	trb $0E3E.w		; 1C 3E 0E
	asl $0F06.w,X		; 1E 06 0F
	ora $07.b,S		; 03 07
	brk $04.b		; 00 04
	ora ($04.b,X)		; 01 04
	bne  28.b		; D0 1C
	clc		; 18
	rol $7E0C.w,X		; 3E 0C 7E
	tsb $3F.b		; 04 3F
	cop $1F.b		; 02 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	eor ($BF.b,X)		; 41 BF
	and #$28DE.w		; 29 DE 28
	cmp [$00.b],Y		; D7 00
	sbc $51FF01.l,X		; FF 01 FF 51
	cmp $54CF49.l,X		; DF 49 CF 54
	cmp [$D7.b]		; C7 D7
	rti		; 40

	rtl		; 6B

	and ($6A.b,X)		; 21 6A
	plp		; 28
	eor ($01.b,X)		; 41 01
	asl A		; 0A
	asl A		; 0A
	tax		; AA
	txa		; 8A
	bit $04.b,X		; 34 04
	and $5001.w,Y		; 39 01 50
	lda #$F000.w		; A9 00 F0
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	cpy #$7030.w		; C0 30 70
	bvs  32.b		; 70 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $F77F.w		; 20 7F F7
	adc [$FF.b],Y		; 77 FF
	adc [$BF.b],Y		; 77 BF
	and [$7F.b],Y		; 37 7F
	and [$5B.b],Y		; 37 5B
	ora ($6F.b,S),Y		; 13 6F
	ora $3D.b,S		; 03 3D
	ora ($3E.b,X)		; 01 3E
	sbc $007F88.l,X		; FF 88 7F 00
	adc $007F40.l,X		; 7F 40 7F 00
	adc $183F6C.l,X		; 7F 6C 3F 18
	and [$26.b],Y		; 37 26
	ora ($13.b,S),Y		; 13 13
	ror $BEB1.w,X		; 7E B1 BE
	adc $5DBE.w,Y		; 79 BE 5D
	stz $9EFD.w,X		; 9E FD 9E
	sbc $F78E.w		; ED 8E F7
	cmp [$BA.b]		; C7 BA
	cmp [$BA.b]		; C7 BA
	inc $FF4E.w,X		; FE 4E FF
	sta [$FF.b]		; 87 FF
	lda $FF.b,S		; A3 FF
	eor $FF.b,S		; 43 FF
	and ($DF.b)		; 32 DF
	php		; 08
	cmp $65E745.l		; CF 45 E7 65
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	ora $05.b,S		; 03 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $0D.b,S		; 03 0D
	ora $6F1F37.l		; 0F 37 1F 6F
	ror $FCBF.w,X		; 7E BF FC
	sbc $00FFF8.l,X		; FF F8 FF 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	cop $1F.b		; 02 1F
	php		; 08
	and $40FF10.l,X		; 3F 10 FF 40
	sbc $03FF01.l,X		; FF 01 FF 03
	ora ($03.b,X)		; 01 03
	cop $07.b		; 02 07
	brk $0F.b		; 00 0F
	tsb $1517.w		; 0C 17 15
	tsa		; 3B
	bit $397A.w		; 2C 7A 39
	ror $7E19.w,X		; 7E 19 7E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $0409.w		; 0D 09 04
	tsb $25.b		; 04 25
	tsb $31.b		; 04 31
	brk $13.b		; 00 13
	cop $58.b		; 02 58
	cmp $B4.b,S		; C3 B4
	stx $78.b		; 86 78
	tsb $0CE0.w		; 0C E0 0C
	beq  24.b		; F0 18
	cpy #$E010.w		; C0 10 E0
	bmi -128.b		; 30 80
	jsr $82BE.w		; 20 BE 82
	sei		; 78
	brk $F4.b		; 00 F4
	tsb $F8.b		; 04 F8
	php		; 08
	cpx #$F000.w		; E0 00 F0
	bpl -64.b		; 10 C0
	brk $E0.b		; 00 E0
	jsr $0C01.w		; 20 01 0C
	ora $0E.b,S		; 03 0E
	cop $0E.b		; 02 0E
	brk $1E.b		; 00 1E
	ora ($1F.b,X)		; 01 1F
	brk $3F.b		; 00 3F
	ora ($3E.b)		; 12 3E
	and $7C.b		; 25 7C
	ora [$04.b]		; 07 04
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	ora [$07.b]		; 07 07
	ora $04.b		; 05 04
	phd		; 0B
	php		; 08
	dey		; 88
	rol $3CE0.w,X		; 3E E0 3C
	cpy #$E018.w		; C0 18 E0
	clc		; 18
	cpx #$C030.w		; E0 30 C0
	bmi -64.b		; 30 C0
	bmi -64.b		; 30 C0
	rts		; 60

	cpx $24.b		; E4 24
	iny		; C8
	php		; 08
	inx		; E8
	php		; 08
	cpx #$C000.w		; E0 00 C0
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $90.b		; 00 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	rts		; 60

	rts		; 60

	brk $02.b		; 00 02
	brk $0F.b		; 00 0F
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $1C.b		; 00 1C
	brk $3D.b		; 00 3D
	ora ($6F.b),Y		; 11 6F
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora ($02.b)		; 12 02
	and $10.b,X		; 35 10
	bcc 109.b		; 90 6D
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	php		; 08
	lda $AF7056.l		; AF 56 70 AF
	cpx #$C09F.w		; E0 9F C0
	sty $C7.b,X		; 94 C7
	sbc ($B0.b)		; F2 B0
	rep #$C2		; C2 C2
	and $9439.w,Y		; 39 39 94
	cpx $0F.b		; E4 0F
	cpy #$801F.w		; C0 1F 80
	lda $82BA80.l,X		; BF 80 BA 82
	jmp.w [$78A4]		; DC A4 78
	tsb $30.b		; 04 30
	php		; 08
	bpl -56.b		; 10 C8
	bra -16.b		; 80 F0
	ldy #$A070.w		; A0 70 A0
	sei		; 78
	pha		; 48
	sed		; F8
	pha		; 48
	jsr $00F8.w		; 20 F8 00
	sed		; F8
	php		; 08
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	ldy #$A008.w		; A0 08 A0
	php		; 08
	rts		; 60

	tsb $00D4.w		; 0C D4 00
	iny		; C8
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora [$02.b]		; 07 02
	eor $50.b,X		; 55 50
	xce		; FB
	brk $88.b		; 00 88
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $03.b,S		; 03 03
	eor ($00.b),Y		; 51 00
	cop $01.b		; 02 01
	brk $36.b		; 00 36
	rol $7F.b,X		; 36 7F
	jsl $AA147F.l		; 22 7F 14 AA
	bra -36.b		; 80 DC
	bra  72.b		; 80 48
	brk $80.b		; 00 80
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
	dey		; 88
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $58.b		; 00 58
	cmp $1A.b,S		; C3 1A
	cmp $1D.b,S		; C3 1D
	cmp ($3F.b,X)		; C1 3F
	adc ($0E.b,X)		; 61 0E
	rts		; 60

	ora $300730.l,X		; 1F 30 07 30
	ora $023E18.l		; 0F 18 3E 02
	jmp ($7E40.w,X)		; 7C 40 7E
	rti		; 40

	asl $3F00.w,X		; 1E 00 3F
	jsr $000F.w		; 20 0F 00
	ora $000710.l,X		; 1F 10 07 00
	cpx #$7018.w		; E0 18 70
	tsb $8430.w		; 0C 30 84
	sei		; 78
.INDEX 16
	rep #$18		; C2 18
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	sep #$84		; E2 84
	inc $18.b		; E6 18
	jmp ($10F0.w,X)		; 7C F0 10
	sed		; F8
	php		; 08
	jsr ($3C84.w,X)		; FC 84 3C
	brk $7C.b		; 00 7C
	rti		; 40

	stz $3880.w		; 9C 80 38
	jsr $24A4.w		; 20 A4 24
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
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
.ACCU 16
.INDEX 16
	rep #$7D		; C2 7D
	rti		; 40

	lda $00FB00.l,X		; BF 00 FB 00
	adc ($00.b,S),Y		; 73 00
	adc ($00.b)		; 72 00
	jsl $002000.l		; 22 00 20 00
	jsr $A2E7.w		; 20 E7 A2
.ACCU 8
	sep #$E0		; E2 E0
	.db $62, $22, $60		; 62 22 60
	rts		; 60

	jsr $2020.w		; 20 20 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	ora [$0B.b]		; 07 0B
	ora [$1F.b]		; 07 1F
	ora $3F0F17.l		; 0F 17 0F 3F
	ora $3F1F2F.l,X		; 1F 2F 1F 3F
	and $7F3F5F.l,X		; 3F 5F 3F 7F
	ora [$04.b]		; 07 04
	ora $181F00.l		; 0F 00 1F 18
	ora $303F00.l,X		; 1F 00 3F 30
	and $203F00.l,X		; 3F 00 3F 20
	adc $FFF040.l,X		; 7F 40 F0 FF
	sbc ($FC.b,S),Y		; F3 FC
	inc $F9.b		; E6 F9
	cpx $FB.b		; E4 FB
	iny		; C8
	sbc [$C8.b],Y		; F7 C8
	sbc [$D0.b],Y		; F7 D0
	sbc $FFEED1.l		; EF D1 EE FF
	ora [$FF.b]		; 07 FF
	ora [$FF.b]		; 07 FF
	ora $FE0FFF.l		; 0F FF 0F FE
	inc A		; 1A
	inc $FC1E.w,X		; FE 1E FC
	and $FC.b,X		; 35 FC
	and $11.b,X		; 35 11
	ror $FE03.w		; 6E 03 FE
	ora ($FC.b,X)		; 01 FC
	bpl -17.b		; 10 EF
	jsl $CE23CF.l		; 22 CF 23 CE
	and $4FCA.w		; 2D CA 4F
	php		; 08
	ora ($12.b,S),Y		; 13 12
	ora ($00.b),Y		; 11 00
	ora ($00.b,S),Y		; 13 00
	ora $15.b,X		; 15 15
	rol $24.b		; 26 24
	and $21.b,S		; 23 21
	and $21.b		; 25 21
	eor [$41.b]		; 47 41
	cpy #$0060.w		; C0 60 00
	rti		; 40

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$0040.w		; C0 40 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $23.b		; 00 23
	cmp $CC7FC7.l,X		; DF C7 7F CC
	sbc $01FF80.l,X		; FF 80 FF 01
	sbc $FA02.w,X		; FD 02 FA
	asl A		; 0A
	plx		; FA
	asl $6FFE.w,X		; 1E FE 6F
	bit $DF.b		; 24 DF
	dey		; 88
	sbc $3CFC13.l,X		; FF 13 FC 3C
	sbc $F27B.w,Y		; F9 7B F2
	sbc [$E0.b],Y		; F7 E0
	sbc $1CDFC0.l		; EF C0 DF 1C
	cmp $F61E.w		; CD 1E F6
	adc $7DFFBB.l,X		; 7F BB FF 7D
	sbc $7EFFFF.l,X		; FF FF FF 7E
	inc $FDBC.w,X		; FE BC FD
	cli		; 58
	bra -65.b		; 80 BF
	bra -65.b		; 80 BF
	bmi 127.b		; 30 7F
	sei		; 78
	sbc $38FF78.l,X		; FF 78 FF 38
	sbc $40FF10.l,X		; FF 10 FF 40
	inc $7F3F.w,X		; FE 3F 7F
	adc $FE7FBE.l,X		; 7F BE 7F FE
	adc $FF7EFA.l,X		; 7F FA 7E FF
	ror $7EFF.w,X		; 7E FF 7E
	sbc [$7F.b],Y		; F7 7F
	inc $7F.b,X		; F6 7F
	brk $7F.b		; 00 7F
	eor ($FF.b,X)		; 41 FF
	sta ($FF.b,X)		; 81 FF
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	php		; 08
	sbc $EFD089.l,X		; FF 89 D0 EF
	cpx #$E0DF.w		; E0 DF E0
	cmp $F0CFF0.l,X		; DF F0 CF F0
	cmp $FCE7F8.l		; CF F8 E7 FC
	adc $7C.b,S		; 63 7C
	sbc ($FC.b,S),Y		; F3 FC
	bit $FA.b,X		; 34 FA
	rol A		; 2A
	plx		; FA
	rol A		; 2A
	plx		; FA
	dec A		; 3A
	inc $FE3E.w,X		; FE 3E FE
	asl $9EFE.w,X		; 1E FE 9E
	inc $6A0E.w,X		; FE 0E 6A
	ldy #$F013.w		; A0 13 F0
	sta ($78.b,X)		; 81 78
	bra 124.b		; 80 7C
	tay		; A8
	mvn $56,$AC		; 54 AC 56
	mvn $52,$AB		; 54 AB 52
	lda $007D20.l		; AF 20 7D 00
	trb $8C80.w		; 1C 80 8C
	bra -128.b		; 80 80
	tay		; A8
	tay		; A8
	ldy $F4A8.w		; AC A8 F4
	mvn $50,$D6		; 54 D6 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E8.b		; 00 E8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0219.w		; 0E 19 02
	ora $1E01.w,X		; 1D 01 1E
	cop $1F.b		; 02 1F
	cop $1F.b		; 02 1F
	ora ($1F.b,X)		; 01 1F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	ora $0E00.w		; 0D 00 0E
	brk $0E.b		; 00 0E
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	cpx #$F060.w		; E0 60 F0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	adc $2D6724.l		; 6F 24 67 2D
	adc ($0E.b,X)		; 61 0E
	rts		; 60

	ora $301F60.l		; 0F 60 1F 30
	ora $301F30.l,X		; 1F 30 1F 30
	ora ($00.b),Y		; 11 00
	inc A		; 1A
	cop $1E.b		; 02 1E
	brk $3F.b		; 00 3F
	jsr $203F.w		; 20 3F 20
	and $000F20.l		; 2F 20 0F 00
	ora $E10800.l		; 0F 00 08 E1
	bit $0EE0.w		; 2C E0 0E
	cpx #$F087.w		; E0 87 F0
	phb		; 8B
	sed		; F8
	sta $DC.b		; 85 DC
	.db $82, $CE, $81		; 82 CE 81
	cmp [$3F.b]		; C7 3F
	and ($9F.b,X)		; 21 9F
	bra -65.b		; 80 BF
	ldy #$303F.w		; A0 3F 30
	ora [$10.b],Y		; 17 10
	phd		; 0B
	php		; 08
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	asl $3F.b		; 06 3F
	tsb $3E.b		; 04 3E
	php		; 08
	and $7E08.w,X		; 3D 08 7E
	bpl  -4.b		; 10 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	ora $00.b		; 05 00
	asl A		; 0A
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $39.b		; 00 39
	sbc [$3C.b]		; E7 3C
	sbc [$8C.b]		; E7 8C
	inc $98.b		; E6 98
	sbc ($18.b)		; F2 18
	sbc ($3C.b)		; F2 3C
	.db $62, $3C, $62		; 62 3C 62
	bit $5C62.w,X		; 3C 62 5C
	mvp $00,$18		; 44 18 00
	sec		; 38
	jsr $202C.w		; 20 2C 20
	bit $1C20.w		; 2C 20 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	php		; 08
	asl $0A.b		; 06 0A
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	asl $07.b		; 06 07
	asl $05.b		; 06 05
	cpx #$5CEF.w		; E0 EF 5C
	cmp ($3E.b,S),Y		; D3 3E
	and ($E6.b,X)		; 21 E6
	cmp ($E2.b,X)		; C1 E2
	cmp ($F1.b,X)		; C1 F1
	bra -71.b		; 80 B9
	ora ($8B.b,X)		; 01 8B
	brk $66.b		; 00 66
	pea $F012.w		; F4 12 F0
	jsr $40EC.w		; 20 EC 40
	dec $DE00.w,X		; DE 00 DE
	brk $8E.b		; 00 8E
	ora ($76.b,X)		; 01 76
	ora $7F.b,S		; 03 7F
	bra  -1.b		; 80 FF
	cmp $F7AFF0.l		; CF F0 AF F7
	and $7F8FFF.l		; 2F FF 8F 7F
	ora $FF0FFF.l		; 0F FF 0F FF
	ora $00DFEF.l,X		; 1F EF DF 00
	sbc $08EF0F.l		; EF 0F EF 08
	lda $103F00.l		; AF 00 3F 10
	eor $20BF10.l,X		; 5F 10 BF 20
	adc $E00050.l,X		; 7F 50 00 E0
	cpy #$FC3E.w		; C0 3E FC
	sbc ($FF.b,S),Y		; F3 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FCC0C0.l,X		; FF C0 C0 FC
	cpy $0CFF.w		; CC FF 0C
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$F0B0.w		; C0 B0 F0
	cpx $FBFC.w		; EC FC FB
	inc $FFFD.w,X		; FE FD FF
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$F860.w		; E0 60 F8
	clc		; 18
	inc $FF06.w,X		; FE 06 FF
	ora $FF.b,S		; 03 FF
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	ora $3FCFFF.l,X		; 1F FF CF 3F
	sbc [$9F.b]		; E7 9F
	sbc ($EF.b,S),Y		; F3 EF
	tda		; 7B
	sbc [$3D.b],Y		; F7 3D
	xce		; FB
	sta $DF7F.w,X		; 9D 7F DF
	lda $20FF.w,X		; BD FF 20
	sbc $68FFD0.l,X		; FF D0 FF 68
	sbc $88FF14.l,X		; FF 14 FF 88
	sbc $A0FF44.l,X		; FF 44 FF A0
	sbc $FAFC42.l,X		; FF 42 FC FA
	jsr ($FCFA.w,X)		; FC FA FC
	plx		; FA
	jsr ($FCFB.w,X)		; FC FB FC
	xce		; FB
	sed		; F8
	inc $F8.b,X		; F6 F8
	pea $ECF0.w		; F4 F0 EC
	inc $FE06.w,X		; FE 06 FE
	tsb $FE.b		; 04 FE
	tsb $FE.b		; 04 FE
	asl $FC.b		; 06 FC
	tsb $FC.b		; 04 FC
	php		; 08
	jsr ($F80C.w,X)		; FC 0C F8
	bpl   0.b		; 10 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	cop $3F.b		; 02 3F
	sbc $07FF0F.l,X		; FF 0F FF 07
	sbc $00F708.l,X		; FF 08 F7 00
	sbc [$43.b],Y		; F7 43
	adc $446F42.l		; 6F 42 6F 44
	adc $C73F0F.l,X		; 7F 0F 3F C7
	ora $602FE0.l,X		; 1F E0 2F 60
	adc $97AAA3.l		; 6F A3 AA 97
	trb $9F.b		; 14 9F
	clc		; 18
	sta $500011.l,X		; 9F 11 00 50
	bvc  -8.b		; 50 F8
	bvc -88.b		; 50 A8
	brk $70.b		; 00 70
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc   0.b		; 50 00
	bvs 112.b		; 70 70
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($FE6C.w)		; 6C 6C FE
	mvp $28,$FE		; 44 FE 28
	mvn $38,$00		; 54 00 38
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($4440.w)		; 6C 40 44
	brk $28.b		; 00 28
	plp		; 28
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$30.b]		; 07 30
	ora [$10.b]		; 07 10
	ora $180F18.l		; 0F 18 0F 18
	ora $18.b,S		; 03 18
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora ($0C.b,X)		; 01 0C
	ora $101F10.l,X		; 1F 10 1F 10
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $080B08.l		; 0F 08 0B 08
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	bra -61.b		; 80 C3
	bra -57.b		; 80 C7
	ora ($4F.b,X)		; 01 4F
	ora $5C.b		; 05 5C
	phd		; 0B
	sei		; 78
	sta [$70.b],Y		; 97 70
	sta $8C71.w,X		; 9D 71 8C
	adc [$01.b]		; 67 01
	ora ($00.b,X)		; 01 00
	brk $82.b		; 00 82
	cop $8B.b		; 02 8B
	php		; 08
	sta [$10.b],Y		; 97 10
	sta $008E00.l		; 8F 00 8E 00
	tya		; 98
	brk $20.b		; 00 20
	sed		; F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
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
	brk $0C.b		; 00 0C
	.db $62, $0C, $62		; 62 0C 62
	trb $1E32.w		; 1C 32 1E
	and ($0E.b)		; 32 0E
	and ($04.b)		; 32 04
	bpl  12.b		; 10 0C
	ora $1900.w,Y		; 19 00 19
	rol $3E22.w,X		; 3E 22 3E
	jsl $0C222E.l		; 22 2E 22 0C
	brk $1C.b		; 00 1C
	bpl  30.b		; 10 1E
	bpl   6.b		; 10 06
	brk $0E.b		; 00 0E
	php		; 08
	asl $0A.b		; 06 0A
	tsb $0C.b		; 04 0C
	ora ($0C.b,X)		; 01 0C
	php		; 08
	ora $1A.b,X		; 15 1A
	bit $3D12.w		; 2C 12 3D
	cop $3D.b		; 02 3D
	tsb $3B.b		; 04 3B
	asl $05.b		; 06 05
	tsb $03.b		; 04 03
	brk $03.b		; 00 03
	php		; 08
	phd		; 0B
	inc A		; 1A
	ora ($16.b,S),Y		; 13 16
	asl $0E.b		; 06 0E
	asl A		; 0A
	ora $5D15.w,X		; 1D 15 5D
	.db $82, $2F, $C0		; 82 2F C0
	and $FC9F64.l,X		; 3F 64 9F FC
	txy		; 9B
	ldy $5847.w,X		; BC 47 58
	ldy #$9821.w		; A0 21 98
	jmp $00B802.l		; 5C 02 B8 00
	bne   4.b		; D0 04
	sbc $18.b		; E5 18
	sbc $FD00.w,X		; FD 00 FD
	rti		; 40

	jsr ($FFA0.w,X)		; FC A0 FF
	bcc -65.b		; 90 BF
	and $9F7FCF.l,X		; 3F CF 7F 9F
	sbc $3FFF3F.l,X		; FF 3F FF 3F
	sbc $00FF1F.l,X		; FF 1F FF 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $60FFB0.l,X		; FF B0 FF 60
	sbc $C0FFC0.l,X		; FF C0 FF C0
	sbc $FFFFE0.l,X		; FF E0 FF FF
	sbc $000000.l,X		; FF 00 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $0FFFFF.l,X		; FF FF FF 0F
	ora [$F9.b]		; 07 F9
	brk $FF.b		; 00 FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $F0FF00.l,X		; FF 00 FF F0
	sbc $F8FF06.l,X		; FF 06 FF F8
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $3FFFFF.l,X		; FF FF FF 3F
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $C0FF00.l,X		; FF 00 FF C0
	bra  96.b		; 80 60
	cpy #$E0B0.w		; C0 B0 E0
	cld		; D8
	beq -24.b		; F0 E8
	beq -20.b		; F0 EC
	sed		; F8
	pea $F6F8.w		; F4 F8 F6
	jsr ($C0FA.w,X)		; FC FA C0
	cpy #$60E0.w		; C0 E0 60
	beq  48.b		; F0 30
	sed		; F8
	clc		; 18
	sed		; F8
	bpl  -4.b		; 10 FC
	tsb $08FC.w		; 0C FC 08
	jsr ($CF04.w,X)		; FC 04 CF
	sbc $7FCF.w,X		; FD CF 7F
	eor $FE0FBF.l		; 4F BF 0F FE
	asl $38ED.w,X		; 1E ED 38
	cmp [$00.b]		; C7 00
	inc $E000.w,X		; FE 00 E0
	sbc $90FF12.l,X		; FF 12 FF 90
	sbc $015FE0.l		; EF E0 5F 01
	and $7A7E32.l,X		; 3F 32 7E 7A
	beq -112.b		; F0 90
	brk $00.b		; 00 00
	cpx #$C0D8.w		; E0 D8 C0
	clv		; B8
	bra 112.b		; 80 70
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	plp		; 28
	beq  80.b		; F0 50
	cpx #$C0A0.w		; E0 A0 C0
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	cmp $7F.b		; C5 7F
	cpy $C57F.w		; CC 7F C5
	ror $7FC4.w,X		; 7E C4 7F
	cpy #$017E.w		; C0 7E 01
	and $20DFC1.l,X		; 3F C1 DF 20
	and $AF129F.l,X		; 3F 9F 12 AF
	jsl $AE22AE.l		; 22 AE 22 AE
	jsl $2020A5.l		; 22 A5 20 20
	cpx #$E8C8.w		; E0 C8 E8
	and #$E9.b		; 29 E9
	brk $50.b		; 00 50
	bvc  -8.b		; 50 F8
	bvc -88.b		; 50 A8
	brk $70.b		; 00 70
	brk $21.b		; 00 21
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc   0.b		; 50 00
	bvs 112.b		; 70 70
	jsr $0000.w		; 20 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  72.b		; 10 48
	clc		; 18
	mvp $64,$08		; 44 08 64
	trb $207E.w		; 1C 7E 20
	ror $1F3E.w,X		; 7E 3E 1F
	trb $0023.w		; 1C 23 00
	asl $4070.w,X		; 1E 70 40
	sei		; 78
	rti		; 40

	sec		; 38
	jsr $0000.w		; 20 00 00
	jsr $3E00.w		; 20 00 3E
	jsr $1C1E.w		; 20 1E 1C
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	ldy #$A0F0.w		; A0 F0 A0
	bvc   0.b		; 50 00
	cpx #$4100.w		; E0 00 41
	ora ($03.b,X)		; 01 03
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ldy #$E000.w		; A0 00 E0
	cpx #$0040.w		; E0 40 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	php		; 08
	dec A		; 3A
	tsb $1E.b		; 04 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	asl $1C.b		; 06 1C
	asl $1D.b		; 06 1D
	brk $1F.b		; 00 1F
	cop $19.b		; 02 19
	trb $10.b		; 14 10
	clc		; 18
	clc		; 18
	tsb $04.b		; 04 04
	php		; 08
	brk $0E.b		; 00 0E
	cop $06.b		; 02 06
	cop $08.b		; 02 08
	php		; 08
	asl $0008.w		; 0E 08 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$4000.w		; C0 00 40
	bra  96.b		; 80 60
	bra  32.b		; 80 20
	cpy #$4030.w		; C0 30 40
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$E000.w		; C0 00 E0
	jsr $00E0.w		; 20 E0 00
	jsr $00E7.w		; 20 E7 00
	sbc $40FF80.l,X		; FF 80 FF 40
	adc $407F00.l,X		; 7F 00 7F 40
	lda $B01FE0.l,X		; BF E0 1F B0
	ora $B7425B.l		; 0F 5B 42 B7
	ldx $4F.b,Y		; B6 4F
	jmp $2CAF.w		; 4C AF 2C
	sbc [$46.b],Y		; F7 46
	bcs -128.b		; B0 80
	bpl  64.b		; 10 40
	ora $63.b,S		; 03 63
	bpl  15.b		; 10 0F
	jsr $C003.w		; 20 03 C0
	brk $A0.b		; 00 A0
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	rti		; 40

	cpy #$40C0.w		; C0 C0 40
	cpx #$E000.w		; E0 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	cpy #$40E0.w		; C0 E0 40
	jsr ($7708.w,X)		; FC 08 77
	ora ($EE.b),Y		; 11 EE
	cop $FD.b		; 02 FD
	asl $39.b		; 06 39
	tsb $1B.b		; 04 1B
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	tsb $0F.b		; 04 0F
	tsa		; 3B
	rol A		; 2A
	and [$15.b],Y		; 37 15
	ror $1F22.w		; 6E 22 1F
	ora [$0D.b]		; 07 0D
	tsb $01.b		; 04 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $A2.b		; 00 A2
	eor ($29.b,X)		; 41 29
	dec $29.b,X		; D6 29
	dec $40.b,X		; D6 40
	lda $C4BB44.l,X		; BF 44 BB C4
	tsa		; 3B
	sty $7B.b		; 84 7B
	.db $82, $7E, $A2		; 82 7E A2
	ldx $6B6B.w,Y		; BE 6B 6B
	xce		; FB
	tyx		; BB
	stp		; DB
	eor ($DD.b)		; 52 DD
	eor $FD.b		; 45 FD
	sbc $BC.b		; E5 BC
	ldy $B1.b		; A4 B1
	bra  28.b		; 80 1C
	jmp ($B212.w,X)		; 7C 12 B2
	bpl -112.b		; 10 90
	bra  64.b		; 80 40
	rti		; 40

	ldy #$C000.w		; A0 00 C0
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	trb $12FE.w		; 1C FE 12
	ror $3210.w,X		; 7E 10 32
	bra -112.b		; 80 90
	cpy #$0040.w		; C0 40 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	ldy #$6098.w		; A0 98 60
	iny		; C8
	jsr $E008.w		; 20 08 E0
	php		; 08
	cpy #$4010.w		; C0 10 40
	rts		; 60

	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	bvs  16.b		; 70 10
	bcs -128.b		; B0 80
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$8000.w		; E0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00F807.l,X		; FF 07 F8 00
	sbc $03F807.l,X		; FF 07 F8 03
	bit $0700.w,X		; 3C 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $C7FF78.l,X		; 7F 78 FF C7
	adc $273F7C.l,X		; 7F 7C 3F 27
	ora $00001B.l,X		; 1F 1B 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FF3F00.l,X		; FF 00 3F FF
	beq  15.b		; F0 0F
	inc $0F7D.w,X		; FE 7D 0F
	inc $07.b,X		; F6 07
	xce		; FB
	ora $1D.b,S		; 03 1D
	sbc $FFFF00.l,X		; FF 00 FF FF
	sbc $F0FF00.l,X		; FF 00 FF F0
	sbc $C9FF82.l,X		; FF 82 FF C9
	ora $060714.l,X		; 1F 14 07 06
	ora ($06.b,X)		; 01 06
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$FEFE.w		; E0 FE FE
	sbc $1EFF3E.l,X		; FF 3E FF 1E
	asl $FDCC.w,X		; 1E CC FD
	sed		; F8
	sbc $89FF6F.l,X		; FF 6F FF 89
	sbc $FCFF00.l,X		; FF 00 FF FC
	sbc $0CFF1C.l,X		; FF 1C FF 0C
	sbc $FF0EF0.l,X		; FF F0 0E FF
	brk $FF.b		; 00 FF
	brk $ED.b		; 00 ED
	brk $13.b		; 00 13
	sbc $2D1DE2.l,X		; FF E2 1D 2D
	bra -18.b		; 80 EE
	sta ($34.b,X)		; 81 34
	eor $7C.b,S		; 43 7C
	ora [$60.b]		; 07 60
	ora $9B87A0.l		; 0F A0 87 9B
	brk $01.b		; 00 01
	tsb $18.b		; 04 18
.INDEX 16
	rep #$98		; C2 98
	ldy $99.b		; A4 99
	rti		; 40

	sed		; F8
	brk $FD.b		; 00 FD
	ora $7B.b,X		; 15 7B
	ora ($00.b)		; 12 00
	jmp ($FE6C.w)		; 6C 6C FE
	mvp $28,$FE		; 44 FE 28
	mvn $38,$00		; 54 00 38
	brk $10.b		; 00 10
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	jmp ($4440.w)		; 6C 40 44
	brk $28.b		; 00 28
	tay		; A8
	bpl -128.b		; 10 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	brk $0C.b		; 00 0C
	ora ($0C.b,X)		; 01 0C
	ora ($1C.b,X)		; 01 1C
	ora ($1C.b,X)		; 01 1C
	cop $1E.b		; 02 1E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	ora ($39.b,X)		; 01 39
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora #$00.b		; 09 00
	tas		; 1B
	cop $19.b		; 02 19
	brk $10.b		; 00 10
	brk $F5.b		; 00 F5
	trb $1EF2.w		; 1C F2 1E
	sbc ($1F.b),Y		; F1 1F
	cpx #$E20F.w		; E0 0F E2
	ora $0CE1.w		; 0D E1 0C
	sbc #$0F.b		; E9 0F
	sed		; F8
	ora $E500E3.l		; 0F E3 00 E5
	tsb $EA.b		; 04 EA
	asl A		; 0A
	sbc $FA09.w,Y		; F9 09 FA
	php		; 08
	xce		; FB
	php		; 08
	sbc ($02.b)		; F2 02
	beq   0.b		; F0 00
	trb $2A.b		; 14 2A
	brk $1D.b		; 00 1D
	ora ($0B.b,X)		; 01 0B
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	trb $3E.b		; 14 3E
	trb $14.b		; 14 14
	php		; 08
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	cpx #$A040.w		; E0 40 A0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $C0.b		; 00 C0
	cpy #$0080.w		; C0 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	sei		; 78
	sei		; 78
	sei		; 78
	jmp ($7878.w,X)		; 7C 78 78
	jmp ($7A7C.w,X)		; 7C 7C 7A
	jsr $407E.w		; 20 7E 40
	rol $7E10.w,X		; 3E 10 7E
	bmi 124.b		; 30 7C
	bmi 124.b		; 30 7C
	bmi 124.b		; 30 7C
	bmi 126.b		; 30 7E
	bmi 124.b		; 30 7C
	jsr $1C60.w		; 20 60 1C
	rti		; 40

	dec A		; 3A
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $4700.w,Y		; 79 00 47
	ora ($4F.b,X)		; 01 4F
	ora [$5F.b]		; 07 5F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	sec		; 38
	and [$34.b],Y		; 37 34
	and $000028.l		; 2F 28 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	brk $F8.b		; 00 F8
	bra  -2.b		; 80 FE
	beq  -1.b		; F0 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00C0.w		; C0 C0 00
	brk $F0.b		; 00 F0
	bpl  -1.b		; 10 FF
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $0E.b		; 00 0E
	brk $1D.b		; 00 1D
	asl $38.b		; 06 38
	ora $1E34.w		; 0D 34 1E
	ror $7E1E.w		; 6E 1E 7E
	ora $DF3F7F.l,X		; 1F 7F 3F DF
	tsb $05.b		; 04 05
	tsb $1C0B.w		; 0C 0B 1C
	ora [$1C.b],Y		; 17 1C
	phd		; 0B
	rol $3E31.w,X		; 3E 31 3E
	ora ($3F.b,X)		; 01 3F
	brk $7F.b		; 00 7F
	rts		; 60

	.db $82, $9E, $41		; 82 9E 41
	eor $619F00.l,X		; 5F 00 9F 61
	ror $E778.w		; 6E 78 E7
	cpy $FB.b		; C4 FB
	lsr A		; 4A
	cmp $65.b		; C5 65
	.db $42, $11		; 42 11
	beq  90.b		; F0 5A
	sbc ($1D.b)		; F2 1D
	sbc ($2D.b),Y		; F1 2D
	sed		; F8
	rol $E4.b		; 26 E4
	cop $FA.b		; 02 FA
	brk $FC.b		; 00 FC
	brk $DE.b		; 00 DE
	cpy #$601C.w		; C0 1C 60
	php		; 08
	bra -104.b		; 80 98
	cop $FC.b		; 02 FC
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	dec $38.b		; C6 38
	stx $6470.w		; 8E 70 64
	txs		; 9A
	sed		; F8
	plp		; 28
	beq   0.b		; F0 00
	rts		; 60

	brk $E0.b		; 00 E0
.INDEX 8
	sep #$DC		; E2 DC
	ora $D8.b,S		; 03 D8
	ora $B0.b,S		; 03 B0
	ora $00.b		; 05 00
	tas		; 1B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	bra -93.b		; 80 A3
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	asl $7F.b		; 06 7F
	brk $7F.b		; 00 7F
	ora ($7F.b,X)		; 01 7F
	cop $3F.b		; 02 3F
	tsb $3F.b		; 04 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	and [$00.b],Y		; 37 00
	rol $20.b,X		; 36 20
	ora ($00.b),Y		; 11 00
	tas		; 1B
	bpl  22.b		; 10 16
	bpl  10.b		; 10 0A
	php		; 08
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	ora $A75FAF.l,X		; 1F AF 5F A7
	eor [$B9.b]		; 47 B9
	eor $AD53B6.l		; 4F B6 53 AD
	eor ($AE.b),Y		; 51 AE
	bvc -81.b		; 50 AF
	eor ($AD.b)		; 52 AD
	ora [$7F.b]		; 07 7F
	ora $7F.b,S		; 03 7F
	ora ($7F.b,X)		; 01 7F
	.db $42, $4F		; 42 4F
	cmp ($53.b),Y		; D1 53
	cld		; D8
	eor $50D4.w,Y		; 59 D4 50
	cmp [$53.b],Y		; D7 53
	cmp $E1C0EF.l		; CF EF C0 E1
	lda $AFEFCF.l,X		; BF CF EF AF
	dec $CC4E.w		; CE 4E CC
	ldy $50A1.w		; AC A1 50
	sta [$68.b],Y		; 97 68
	sta $FF80F0.l		; 8F F0 80 FF
	ora $FF0EFF.l		; 0F FF 0E FF
	tsb $80FF.w		; 0C FF 80
	cmp $F7AF21.l,X		; DF 21 AF F7
	cmp [$78.b],Y		; D7 78
	adc $FB30.w,X		; 7D 30 FB
	cpy #$C7.b		; C0 C7
	bmi  15.b		; 30 0F
	adc $1FFF00.l,X		; 7F 00 FF 1F
	sbc $FFFF7F.l,X		; FF 7F FF FF
	bvs  -2.b		; 70 FE
	brk $FC.b		; 00 FC
	ora [$F8.b]		; 07 F8
	and $FF7FF3.l,X		; 3F F3 7F FF
	sbc $80FFE0.l,X		; FF E0 FF 80
	sbc $310000.l,X		; FF 00 00 31
	brk $01.b		; 00 01
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
	bvs   4.b		; 70 04
	bvs   4.b		; 70 04
	bcs -124.b		; B0 84
	sec		; 38
	sty $78.b		; 84 78
	cpy $7C.b		; C4 7C
	cpy $3C.b		; C4 3C
	cpy $38.b		; C4 38
	.db $42, $F8		; 42 F8
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	brk $FC.b		; 00 FC
	sty $3C.b		; 84 3C
	tsb $38.b		; 04 38
	brk $78.b		; 00 78
	rti		; 40

	jmp ($1440.w,X)		; 7C 40 14
	rol A		; 2A
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $51.b		; 00 51
	bvc  -7.b		; 50 F9
	bvc -88.b		; 50 A8
	brk $70.b		; 00 70
	brk $20.b		; 00 20
	trb $081C.w		; 1C 1C 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	brk $70.b		; 00 70
	bvs  32.b		; 70 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	lda $A1.b,S		; A3 A1
	sbc ($A0.b)		; F2 A0
	eor ($00.b),Y		; 51 00
	cpx #$00.b		; E0 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	lda ($01.b,X)		; A1 01
	cpx #$E0.b		; E0 E0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $22.b		; 00 22
	adc $033100.l,X		; 7F 00 31 03
	and ($0A.b),Y		; 31 0A
	clc		; 18
	ora $08.b,S		; 03 08
	ora $0C.b		; 05 0C
	ora $06.b,S		; 03 06
	brk $07.b		; 00 07
	bit $04.b,X		; 34 04
	ora $101E01.l		; 0F 01 1E 10
	ora [$00.b]		; 07 00
	ora $000308.l		; 0F 08 03 00
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	tsb $DF.b		; 04 DF
	ora #$0A7F.w		; 09 7F 0A
	sbc $8AFE19.l,X		; FF 19 FE 8A
	sbc $7F0D.w,X		; FD 0D 7F
	tsb $9C.b		; 04 9C
	.db $42, $5E		; 42 5E
	and $A2BF30.l,X		; 3F 30 BF A2
	and $849E24.l,X		; 3F 24 9E 84
	trb $9D05.w		; 1C 05 9D
	ora ($0F.b,X)		; 01 0F
	rts		; 60

	ora ($E0.b,X)		; 01 E0
	dec $13FF.w,X		; DE FF 13
	sbc $C4FF26.l,X		; FF 26 FF C4
	tsa		; 3B
	phy		; 5A
	ora ($DC.b,X)		; 01 DC
	ora $68.b,S		; 03 68
	sta [$F8.b]		; 87 F8
	asl $00FF.w		; 0E FF 00
	stp		; DB
	brk $37.b		; 00 37
	brk $02.b		; 00 02
	php		; 08
	bmi -124.b		; 30 84
	and ($48.b),Y		; 31 48
	and ($80.b)		; 32 80
	beq   0.b		; F0 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $DF3FDF.l,X		; 3F DF 3F DF
	and $DF3FDF.l,X		; 3F DF 3F DF
	rol $1DCF.w,X		; 3E CF 1D
	sbc [$1D.b]		; E7 1D
	sbc $0B.b,S		; E3 0B
	sbc [$7F.b],Y		; F7 7F
	rts		; 60

	adc $207F20.l,X		; 7F 20 7F 20
	adc $307E20.l,X		; 7F 20 7E 30
	adc $7D18.w,X		; 7D 18 7D
	jmp $22487B.l		; 5C 7B 48 22
	eor ($A1.b,X)		; 41 A1
	bra -65.b		; 80 BF
	bra -83.b		; 80 AD
	bra -29.b		; 80 E3
	cpy #$77.b		; C0 77
	cmp ($9F.b,X)		; C1 9F
	cmp [$0F.b]		; C7 0F
	sta $80DF00.l,X		; 9F 00 DF 80
	lsr $4080.w,X		; 5E 80 40
	bra  94.b		; 80 5E
	cpy #$1E.b		; C0 1E
	eor ($09.b,X)		; 41 09
	sta $27.b,S		; 83 27
	sta [$7F.b]		; 87 7F
	ldx $C2.b,Y		; B6 C2
	stx $83.b		; 86 83
	mvp $FC,$82		; 44 82 FC
	ora $FF.b,S		; 03 FF
	sta $C7.b,S		; 83 C7
	sta $EF.b,S		; 83 EF
	cmp [$FF.b]		; C7 FF
	sbc [$82.b]		; E7 82
	tda		; 7B
	bra 123.b		; 80 7B
	bra  59.b		; 80 3B
	brk $00.b		; 00 00
	ora $B0.b,S		; 03 B0
	sta $B8.b,S		; 83 B8
	sta [$D0.b]		; 87 D0
	cmp [$E0.b]		; C7 E0
	brk $BF.b		; 00 BF
	adc [$38.b]		; 67 38
	sbc [$9F.b],Y		; F7 9F
	tyx		; BB
	sta $80DF41.l		; 8F 41 DF 80
	sbc $DC.b,S		; E3 DC
	cmp $BFBC.w,X		; DD BC BF
	ora $C2.b,S		; 03 C2
	eor $006787.l		; 4F 87 67 00
	adc ($00.b,S),Y		; 73 00
	and ($00.b,X)		; 21 00
	.db $82, $1C, $DD		; 82 1C DD
	rol $7EB9.w,X		; 3E B9 7E
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($6D.b)		; 92 6D
	sta ($6D.b)		; 92 6D
	sta ($6D.b)		; 92 6D
	sta $9966.w,Y		; 99 66 99
	ror $19.b		; 66 19
	inc $01.b		; E6 01
	ror $7310.w,X		; 7E 10 73
	ldx $92.b,Y		; B6 92
	ldx $92.b,Y		; B6 92
	ldx $96.b,Y		; B6 96
	lda $99BB9D.l,X		; BF 9D BB 99
	tas		; 1B
	ora $2123.w,Y		; 19 23 21
	bit $4B20.w		; 2C 20 4B
	lda $45.b,X		; B5 45
	tsx		; BA
	and ($DF.b,X)		; 21 DF
	and ($DE.b,X)		; 21 DE
	bit $D7.b		; 24 D7
	asl A		; 0A
	sbc $2D.b,S		; E3 2D
	sbc ($2E.b,X)		; E1 2E
	cpx #$FB.b		; E0 FB
	ror A		; 6A
	sbc $E965.w,X		; FD 65 E9
	ldy #$E5.b		; A0 E5
	lda $EA.b		; A5 EA
	ldx #$5D.b		; A2 5D
	ora ($1E.b,X)		; 01 1E
	brk $1F.b		; 00 1F
	brk $FC.b		; 00 FC
	sbc $E0.b,S		; E3 E0
	ora $E0F9FE.l,X		; 1F FE F9 E0
	ora $00FE00.l,X		; 1F 00 FE 00
	sed		; F8
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	sbc $E0E01C.l,X		; FF 1C E0 E0
	sbc $E0F806.l,X		; FF 06 F8 E0
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	brk $1F.b		; 00 1F
	ora $C73FF0.l		; 0F F0 3F C7
	sbc $7FFF1F.l,X		; FF 1F FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $0000FF.l,X		; FF FF 00 00
	and $B8FF2F.l,X		; 3F 2F FF B8
	sbc $80FFE0.l,X		; FF E0 FF 80
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $E00000.l,X		; FF 00 00 E0
	bra 126.b		; 80 7E
	beq -113.b		; F0 8F
	jsr ($FEF3.w,X)		; FC F3 FE
	sbc $F0FF.w,X		; FD FF F0
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	sed		; F8
	tya		; 98
	sbc $0CFF73.l,X		; FF 73 FF 0C
	inc $FF02.w,X		; FE 02 FF
	ora $FF00FF.l		; 0F FF 00 FF
	brk $00.b		; 00 00
	rol $36.b,X		; 36 36
	adc $147F22.l,X		; 7F 22 7F 14
	rol A		; 2A
	brk $1D.b		; 00 1D
	ora ($0B.b,X)		; 01 0B
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
	php		; 08
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	rol $36.b,X		; 36 36
	adc $147F22.l,X		; 7F 22 7F 14
	rol A		; 2A
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
	php		; 08
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	trb $14.b		; 14 14
	rol $2A14.w,X		; 3E 14 2A
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $00.b		; 14 00
	trb $081C.w		; 1C 1C 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	sep #$42		; E2 42
	lda [$02.b]		; A7 02
	cmp $00.b		; C5 00
	sta $00.b,S		; 83 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $C2.b		; 00 C2
	cpy #$83.b		; C0 83
	ora $01.b,S		; 03 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	mvp $04,$18		; 44 18 04
	sec		; 38
	rol $00.b		; 26 00
	rol $00.b		; 26 00
	rol $2C1E.w,X		; 3E 1E 2C
	tsb $0036.w		; 0C 36 00
	trb $0038.w		; 1C 38 00
	sec		; 38
	brk $1C.b		; 00 1C
	tsb $18.b		; 04 18
	brk $22.b		; 00 22
	brk $3E.b		; 00 3E
	ora ($1E.b)		; 12 1E
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra  69.b		; 80 45
	ora $8F.b		; 05 8F
	ora $0A.b		; 05 0A
	brk $07.b		; 00 07
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	ora $00.b		; 05 00
	ora [$07.b]		; 07 07
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	bvs -60.b		; 70 C4
	clc		; 18
	cpy $3C.b		; C4 3C
	cpx $0C.b		; E4 0C
	stz $18.b		; 64 18
	adc ($08.b)		; 72 08
	and ($04.b)		; 32 04
	and ($0C.b)		; 32 0C
	inc A		; 1A
	bit $7C04.w,X		; 3C 04 7C
	mvp $40,$58		; 44 58 40
	sec		; 38
	jsr $202C.w		; 20 2C 20
	trb $1C10.w		; 1C 10 1C
	bpl   4.b		; 10 04
	brk $20.b		; 00 20
	bit $0C.b		; 24 0C
	trb $3818.w		; 1C 18 38
	bmi  48.b		; 30 30
	jsr $7030.w		; 20 30 70
	bmi 120.b		; 30 78
	bmi  48.b		; 30 30
	sei		; 78
	jsr $047E.w		; 20 7E 04
	ror $7C08.w,X		; 7E 08 7C
	brk $78.b		; 00 78
	jsr $3078.w		; 20 78 30
	sei		; 78
	bmi 120.b		; 30 78
	bmi 120.b		; 30 78
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
	brk $D0.b		; 00 D0
	brk $F0.b		; 00 F0
	rts		; 60

	bne  96.b		; D0 60
	bne   0.b		; D0 00
	bvs  48.b		; 70 30
	sei		; 78
	jsr $2068.w		; 20 68 20
	pla		; 68
	rts		; 60

	rti		; 40

	brk $00.b		; 00 00
	cpx #$20.b		; E0 20
	bvs  32.b		; 70 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	clc		; 18
	php		; 08
	inx		; E8
	tsb $04F0.w		; 0C F0 04
	jmp ($B806.w,X)		; 7C 06 B8
	.db $82, $5E, $C2		; 82 5E C2
	bit $46E1.w		; 2C E1 46
	and ($47.b,X)		; 21 47
	cmp ($F0.b),Y		; D1 F0
	brk $FC.b		; 00 FC
	tsb $F8.b		; 04 F8
	brk $7E.b		; 00 7E
	cop $BC.b		; 02 BC
	bra -98.b		; 80 9E
	bra -33.b		; 80 DF
	ora ($AE.b,X)		; 01 AE
	bra  17.b		; 80 11
	sbc ($06.b),Y		; F1 06
	and $000E00.l,X		; 3F 00 0E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2E.b		; 00 2E
	jsr $0808.w		; 20 08 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $36.b		; 00 36
	rol $7F.b,X		; 36 7F
	jsl $2A147F.l		; 22 7F 14 2A
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
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
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora [$00.b]		; 07 00
	ora $7FFFFF.l		; 0F FF FF 7F
	inc $FC7F.w,X		; FE 7F FC
	adc $03FCF8.l,X		; 7F F8 FC 03
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	beq  15.b		; F0 0F
	sbc $017F00.l,X		; FF 00 7F 01
	adc $077F03.l,X		; 7F 03 7F 07
	sbc $00FFFC.l,X		; FF FC FF 00
	sed		; F8
	sed		; F8
	sbc $E0FFF0.l,X		; FF F0 FF E0
	beq  15.b		; F0 0F
	cpy #$3F.b		; C0 3F
	bra 124.b		; 80 7C
	brk $F0.b		; 00 F0
	brk $FE.b		; 00 FE
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	sbc $F0FF1F.l,X		; FF 1F FF F0
	inc $F0CE.w,X		; FE CE F0
	bcs -64.b		; B0 C0
	rti		; 40

	bra -128.b		; 80 80
	bpl  16.b		; 10 10
	cpx #$20.b		; E0 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	bra 112.b		; 80 70
	cpy #$3C.b		; C0 3C
	cpx #$9F.b		; E0 9F
	beq  15.b		; F0 0F
	brk $FF.b		; 00 FF
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	beq -64.b		; F0 C0
	jsr ($FF64.w,X)		; FC 64 FF
	sbc ($E0.b,S),Y		; F3 E0
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($50.b),Y		; 51 50
	sed		; F8
	bvc -88.b		; 50 A8
	brk $70.b		; 00 70
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc   0.b		; 50 00
	bvs 112.b		; 70 70
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	sty $78.b		; 84 78
	sty $78.b		; 84 78
	sty $78.b		; 84 78
	sty $38.b		; 84 38
	sty $7C.b		; 84 7C
	dec $3C.b		; C6 3C
	dec $18.b		; C6 18
	.db $42, $F8		; 42 F8
	bra  -8.b		; 80 F8
	bra 120.b		; 80 78
	brk $7C.b		; 00 7C
	tsb $7C.b		; 04 7C
	tsb $38.b		; 04 38
	brk $78.b		; 00 78
	rti		; 40

	jmp ($FF40.w,X)		; 7C 40 FF
	inc $F3FC.w,X		; FE FC F3
	cpx #$9F.b		; E0 9F
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	sbc $0DFF01.l,X		; FF 01 FF 0D
	jsr ($C064.w,X)		; FC 64 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

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
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	asl $06.b		; 06 06
	brk $03.b		; 00 03
	brk $E4.b		; 00 E4
	brk $1F.b		; 00 1F
	asl $3F.b		; 06 3F
	ora $7F137F.l,X		; 1F 7F 13 7F
	bit $FF.b		; 24 FF
	plp		; 28
	sbc $030000.l,X		; FF 00 00 03
	ora $E0.b,S		; 03 E0
	cpx #$CF.b		; E0 CF
	cpy #$9F.b		; C0 9F
	bra -65.b		; 80 BF
	bra 119.b		; 80 77
	brk $6C.b		; 00 6C
	brk $01.b		; 00 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora [$02.b]		; 07 02
	ora $02.b		; 05 02
	ora $0B06.w		; 0D 06 0B
	asl $1B.b		; 06 1B
	ora $010117.l		; 0F 17 01 01
	ora $03.b,S		; 03 03
	cop $01.b		; 02 01
	ora [$07.b]		; 07 07
	asl $02.b		; 06 02
	asl $0F0C.w		; 0E 0C 0F
	ora $1E.b		; 05 1E
	clc		; 18
	.db $82, $FE, $82		; 82 FE 82
	inc $7E00.w,X		; FE 00 7E
	lda $7C86.w,Y		; B9 86 7C
	.db $82, $8F, $80		; 82 8F 80
	cop $01.b		; 02 01
	eor ($01.b,X)		; 41 01
	cmp #$3941.w		; C9 41 39
	bra  61.b		; 80 3D
	pea $C005.w		; F4 05 C0
	sta ($B0.b,X)		; 81 B0
	brk $7C.b		; 00 7C
	sta ($7E.b,X)		; 81 7E
	sta ($3E.b,X)		; 81 3E
	ora ($7F.b,X)		; 01 7F
	brk $3D.b		; 00 3D
	sta ($7D.b,X)		; 81 7D
	sta $7565.w,Y		; 99 65 75
	sta ($E5.b,X)		; 81 E5
	ora ($85.b,X)		; 01 85
	ora ($08.b,X)		; 01 08
	ora ($90.b,X)		; 01 90
	sta $FC.b,S		; 83 FC
	and [$B8.b]		; 27 B8
	phd		; 0B
	ldy #$23.b		; A0 23
	brk $1B.b		; 00 1B
	brk $7B.b		; 00 7B
	brk $FB.b		; 00 FB
	brk $F7.b		; 00 F7
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$E0.b		; C0 E0
	cpx #$E0.b		; E0 E0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	cpy #$E0.b		; C0 E0
	cpy #$F0.b		; C0 F0
	cpy #$F0.b		; C0 F0
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	asl $07.b		; 06 07
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	cop $07.b		; 02 07
	asl $0F.b		; 06 0F
	sec		; 38
	tyx		; BB
	bvs 123.b		; 70 7B
	adc ($76.b,X)		; 61 76
.ACCU 16
	rep #$ED		; C2 ED
	sty $DB.b		; 84 DB
	tay		; A8
	sta [$60.b],Y		; 97 60
	sta $B05E61.l,X		; 9F 61 5E B0
	jmp ($FC60.w,X)		; 7C 60 FC
	eor ($F9.b,X)		; 41 F9
	sta $F2.b,S		; 83 F2
	sta [$F4.b],Y		; 97 F4
	rol $6EE8.w		; 2E E8 6E
	cpx #$6D.b		; E0 6D
	lda ($1F.b,X)		; A1 1F
	sbc [$8F.b],Y		; F7 8F
	ply		; 7A
	and [$DD.b]		; 27 DD
	.db $42, $BE		; 42 BE
	eor #$89B4.w		; 49 B4 89
	ror $91.b,X		; 76 91
	ror $EE11.w		; 6E 11 EE
	ora $3F.b,S		; 03 3F
	dey		; 88
	sta $622FA5.l,X		; 9F A5 2F 62
	eor [$69.b]		; 47 69
	phk		; 4B
	sbc $DD89.w		; ED 89 DD
	sta ($DD.b),Y		; 91 DD
	ora ($A0.b),Y		; 11 A0
	bvc -128.b		; 50 80
	clv		; B8
	bpl 108.b		; 10 6C
	pha		; 48
	ldx $44.b,Y		; B6 44
	tyx		; BB
	bit $DB.b		; 24 DB
	jsl $EE10DD.l		; 22 DD 10 EE
	brk $C0.b		; 00 C0
	bcc -64.b		; 90 C0
	cli		; 58
	bcc 108.b		; 90 6C
	pha		; 48
	ror $44.b		; 66 44
	ldx $24.b,Y		; B6 24
	lda ($22.b)		; B2 22
	cld		; D8
	bpl 111.b		; 10 6F
	tya		; 98
	and $F80FD8.l		; 2F D8 0F F8
	ora $700778.l		; 0F 78 07 70
	ora [$30.b]		; 07 30
	ora [$30.b]		; 07 30
	asl $10.b		; 06 10
	sbc [$E0.b]		; E7 E0
	adc [$20.b]		; 67 20
	adc [$40.b]		; 67 40
	and [$00.b]		; 27 00
	and $202F20.l		; 2F 20 2F 20
	ora $000F00.l		; 0F 00 0F 00
	sta $208F20.l		; 8F 20 8F 20
	sta $209E20.l,X		; 9F 20 9E 20
	dec $1D40.w,X		; DE 40 1D
	eor ($9C.b,X)		; 41 9C
	cmp ($3E.b,X)		; C1 3E
	cmp $DF.b,S		; C3 DF
	brk $FF.b		; 00 FF
	jsr $20FF.w		; 20 FF 20
	sbc $00BF20.l,X		; FF 20 BF 00
	inc $7F40.w,X		; FE 40 7F
	eor ($BC.b,X)		; 41 BC
	bra  46.b		; 80 2E
	adc ($2C.b,X)		; 61 2C
	adc ($2E.b,X)		; 61 2E
	adc $28.b,S		; 63 28
	adc $24.b,S		; 63 24
	ror $20.b		; 66 20
	ror $28.b		; 66 28
	jmp ($EC20.w)		; 6C 20 EC
	asl $1E00.w,X		; 1E 00 1E
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	cop $18.b		; 02 18
	brk $5C.b		; 00 5C
	mvp $40,$50		; 44 50 40
	cli		; 58
	pha		; 48
	ora ($0C.b,X)		; 01 0C
	ora ($06.b,X)		; 01 06
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
	cpx #$30.b		; E0 30
	cpy #$18.b		; C0 18
	cpx #$0C.b		; E0 0C
	sei		; 78
	tsb $8630.w		; 0C 30 86
	jmp $6228C6.l		; 5C C6 28 62
	asl $33.b,X		; 16 33
	cpy #$00.b		; C0 00
	beq  16.b		; F0 10
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	jsr ($3884.w,X)		; FC 84 38
	brk $1E.b		; 00 1E
	cop $0C.b		; 02 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	sep #$00		; E2 00
	inc $FEC0.w,X		; FE C0 FE
	sei		; 78
	sbc $9AFF4C.l,X		; FF 4C FF 9A
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $98.b		; 00 98
	brk $FA.b		; 00 FA
	brk $FC.b		; 00 FC
	brk $6E.b		; 00 6E
	brk $DE.b		; 00 DE
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora $02.b		; 05 02
	ora [$03.b]		; 07 03
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	ora $03.b,S		; 03 03
	cop $03.b		; 02 03
	brk $03.b		; 00 03
	cop $07.b		; 02 07
	tsb $64.b		; 04 64
	sbc $D800.w,Y		; F9 00 D8
	tsx		; BA
	eor $BF.b,X		; 55 BF
	bvc -105.b		; 50 97
	bvs  14.b		; 70 0E
	sed		; F8
	ora $F8.b,S		; 03 F8
	ora $F6.b,S		; 03 F6
	ror A		; 6A
	brk $6F.b		; 00 6F
	php		; 08
	cpx $EFC4.w		; EC C4 EF
	cpy #$AF.b		; C0 AF
	ldy #$C7.b		; A0 C7
	eor ($CF.b,X)		; 41 CF
	pha		; 48
	sta $0D84.w		; 8D 84 0D
	and [$0C.b],Y		; 37 0C
	rol $2E1F.w,X		; 3E 1F 2E
	tas		; 1B
	ror $6C18.w		; 6E 18 6C
	ora $63.b,X		; 15 63
	asl A		; 0A
	adc $DB18.w		; 6D 18 DB
	trb $1F08.w		; 1C 08 1F
	cop $3D.b		; 02 3D
	bmi  57.b		; 30 39
	bpl  59.b		; 10 3B
	bpl 116.b		; 10 74
	jmp $4B1A66.l		; 5C 66 1A 4B
	and $0027.w,X		; 3D 27 00
	sbc $417240.l,X		; FF 40 72 41
	ldy $C3.b		; A4 C3
	txy		; 9B
	cmp [$07.b]		; C7 07
	cmp $1FEF27.l		; CF 27 EF 1F
	lda [$C0.b],Y		; B7 C0
	clc		; 18
	bra  12.b		; 80 0C
	bra  31.b		; 80 1F
	rti		; 40

	tad		; 5B
	eor $67.b,S		; 43 67
	sta [$BF.b]		; 87 BF
	sta [$BF.b]		; 87 BF
	ora $7F.b,S		; 03 7F
	iny		; C8
	cop $70.b		; 02 70
	ora $98.b,S		; 03 98
	ora $48.b,S		; 03 48
	sta ($B0.b,X)		; 81 B0
	cpy #$E0.b		; C0 E0
	cpx #$C0.b		; E0 C0
	inx		; E8
	cpy #$C8.b		; C0 C8
	brk $35.b		; 00 35
	ora ($EC.b,X)		; 01 EC
	brk $70.b		; 00 70
	brk $B0.b		; 00 B0
	bra -64.b		; 80 C0
	bra -16.b		; 80 F0
	bra -16.b		; 80 F0
	bra -16.b		; 80 F0
	rts		; 60

	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	beq   0.b		; F0 00
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	asl $1A16.w		; 0E 16 1A
	and ($22.b,X)		; 21 22
	ora ($20.b,X)		; 01 20
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	asl A		; 0A
	ora $013F00.l,X		; 1F 00 3F 01
	and $013301.l,X		; 3F 01 33 01
	jsr $0001.w		; 20 01 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	sbc ($DE.b,X)		; E1 DE
	sbc ($DE.b,X)		; E1 DE
	cpx #$DF.b		; E0 DF
	sbc $DF.b,S		; E3 DF
	cpx $DC.b		; E4 DC
	sbc $D8.b,S		; E3 D8
	sbc $58.b,S		; E3 58
	rtl		; 6B

	cld		; D8
	sbc $21.b,X		; F5 21
	sbc ($21.b),Y		; F1 21
	pea $F424.w		; F4 24 F4
	bit $FB.b		; 24 FB
	plp		; 28
	sbc $A8FF28.l,X		; FF 28 FF A8
	sbc [$30.b],Y		; F7 30
	and ($DE.b,X)		; 21 DE
	jsl $BD42DD.l		; 22 DD 42 BD
	rti		; 40

	lda $49FE82.l,X		; BF 82 FE 49
	sei		; 78
	sta ($30.b,S),Y		; 93 30
	sta [$30.b],Y		; 97 30
	lda $BB21.w,X		; BD 21 BB
	jsl $78427B.l		; 22 7B 42 78
	rti		; 40

	ora $04.b		; 05 04
	sta [$10.b],Y		; 97 10
	cmp $00CF00.l		; CF 00 CF 00
	bpl -20.b		; 10 EC
	bpl -24.b		; 10 E8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	cld		; D8
	bpl -48.b		; 10 D0
	bpl -128.b		; 10 80
	brk $C0.b		; 00 C0
	cpy #$40.b		; C0 40
	rti		; 40

	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	ora [$31.b]		; 07 31
	trb $0E31.w		; 1C 31 0E
	and $3C.b,S		; 23 3C
	adc $1C.b,S		; 63 1C
	eor $1C.b,S		; 43 1C
	.db $42, $5C		; 42 5C
	.db $42, $5C		; 42 5C
.INDEX 16
	rep #$1E		; C2 1E
	bpl  15.b		; 10 0F
	ora ($3D.b,X)		; 01 3D
	and ($1E.b,X)		; 21 1E
	cop $3E.b		; 02 3E
	cop $7E.b		; 02 7E
	.db $42, $3C		; 42 3C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	dec $38.b		; C6 38
	lsr $3C.b		; 46 3C
	eor [$1A.b]		; 47 1A
	eor $3D.b,S		; 43 3D
	adc ($0E.b,X)		; 61 0E
	jsr $3007.w		; 20 07 30
	ldx $3882.w,Y		; BE 82 38
	brk $3C.b		; 00 3C
	tsb $3A.b		; 04 3A
	cop $3D.b		; 02 3D
	ora ($1E.b,X)		; 01 1E
	brk $3F.b		; 00 3F
	jsr $101F.w		; 20 1F 10
	and ($CF.b)		; 32 CF
	sei		; 78
	inc $E0.b		; E6 E0
	stz $AC40.w,X		; 9E 40 AC
	cpy #$3810.w		; C0 10 38
	clc		; 18
	jmp $5C8C3C.l		; 5C 3C 8C 5C
	txa		; 8A
	brk $02.b		; 00 02
	brk $64.b		; 00 64
	brk $58.b		; 00 58
	brk $F0.b		; 00 F0
	clc		; 18
	sed		; F8
	jmp.w [$BEDC]		; DC DC BE
	sty $003E.w		; 8C 3E 00
	ora $1C1F00.l		; 0F 00 1F 1C
	tsa		; 3B
	clc		; 18
	and [$00.b],Y		; 37 00
	rol $0000.w,X		; 3E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	ora ($00.b,X)		; 01 00
	ora $083E04.l,X		; 1F 04 3E 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	and ($04.b)		; 32 04
	and ($0C.b)		; 32 0C
	tas		; 1B
	cop $1B.b		; 02 1B
	asl $0F.b		; 06 0F
	brk $0F.b		; 00 0F
	ora $07.b,S		; 03 07
	brk $03.b		; 00 03
	tsb $1C00.w		; 0C 00 1C
	bpl   6.b		; 10 06
	cop $0C.b		; 02 0C
	php		; 08
	ora ($01.b,X)		; 01 01
	tsb $04.b		; 04 04
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	cpy #$E020.w		; C0 20 E0
	bcc 112.b		; 90 70
	iny		; C8
	brk $FC.b		; 00 FC
	bvs 110.b		; 70 6E
	sec		; 38
	ror $00.b,X		; 76 00
	rol $0000.w,X		; 3E 00 00
	cpy #$6000.w		; C0 00 60
	brk $B0.b		; 00 B0
	bra   0.b		; 80 00
	brk $7C.b		; 00 7C
	bpl  60.b		; 10 3C
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	php		; 08
	ora $08.b,S		; 03 08
	ora ($10.b,S),Y		; 13 10
	ora [$00.b]		; 07 00
	and $707E00.l,X		; 3F 00 7E 70
	inc $DC60.w		; EE 60 DC
	cop $02.b		; 02 02
	asl $0C02.w		; 0E 02 0C
	brk $1E.b		; 00 1E
	tsb $1A.b		; 04 1A
	clc		; 18
	tsb $00.b		; 04 00
	jmp ($F810.w,X)		; 7C 10 F8
	jsr $6040.w		; 20 40 60
	cpy #$00F0.w		; C0 F0 00
	beq  96.b		; F0 60
	sed		; F8
	brk $78.b		; 00 78
	sec		; 38
	stz $1C.b		; 64 1C
	and ($0E.b)		; 32 0E
	and $0080.w,Y		; 39 80 00
	jsr $8020.w		; 20 20 80
	bra 112.b		; 80 70
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $2C.b		; 00 2C
	jsr $1016.w		; 20 16 10
	php		; 08
	dec A		; 3A
	tsb $083E.w		; 0C 3E 08
	rol $3C08.w,X		; 3E 08 3C
	php		; 08
	bit $3C00.w,X		; 3C 00 3C
	brk $3C.b		; 00 3C
	bmi 104.b		; 30 68
	trb $10.b		; 14 10
	bpl  16.b		; 10 10
	trb $14.b		; 14 14
	trb $14.b		; 14 14
	bpl  16.b		; 10 10
	clc		; 18
	clc		; 18
	php		; 08
	brk $30.b		; 00 30
	bpl -128.b		; 10 80
	cpy #$C080.w		; C0 80 C0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$0040.w		; C0 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000800.l		; 0F 00 08 00
	ora #$0B00.w		; 09 00 0B
	brk $1B.b		; 00 1B
	ora ($27.b,X)		; 01 27
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	asl $06.b		; 06 06
	tsb $04.b		; 04 04
	ora $04.b		; 05 04
	tas		; 1B
	clc		; 18
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $26.b		; 00 26
	brk $FF.b		; 00 FF
	bmi  -1.b		; 30 FF
	inc $9BFF.w,X		; FE FF 9B
	sbc $00FF22.l,X		; FF 22 FF 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	brk $00.b		; 00 00
	jmp ($FF00.w,X)		; 7C 00 FF
	brk $FF.b		; 00 FF
	brk $BB.b		; 00 BB
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	asl $01.b		; 06 01
	asl $03.b		; 06 03
	ora $0907.w		; 0D 07 09
	asl $1B.b		; 06 1B
	asl $1B.b		; 06 1B
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora $03.b,S		; 03 03
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	ora $040E0E.l		; 0F 0E 0E 04
	asl $8004.w		; 0E 04 80
	rol $7F41.w,X		; 3E 41 7F
	rts		; 60

	eor $7EA39C.l,X		; 5F 9C A3 7E
	cmp ($07.b,X)		; C1 07
	cpy #$8081.w		; C0 81 80
	rts		; 60

	brk $8D.b		; 00 8D
	cpy #$E03C.w		; C0 3C E0
	asl $02D2.w,X		; 1E D2 02
	cpx #$5800.w		; E0 00 58
	bra -66.b		; 80 BE
	rti		; 40

	and $711FC0.l,X		; 3F C0 1F 71
	cmp $407F01.l		; CF 01 7F 40
	and $32CC.w,X		; 3D CC 32
	dec A		; 3A
	rti		; 40

	sbc ($00.b)		; F2 00
	.db $42, $80		; 42 80
	sty $81.b		; 84 81
	lda ($81.b),Y		; B1 81
	sta $DC03.w		; 8D 03 DC
	ora [$D0.b]		; 07 D0
	ora ($80.b),Y		; 11 80
	ora $3D00.w		; 0D 00 3D
	bra 125.b		; 80 7D
	bra 122.b		; 80 7A
	bra -128.b		; 80 80
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$E040.w		; C0 40 E0
	jsr $6060.w		; 20 60 60
	rts		; 60

	rts		; 60

	bvs 112.b		; 70 70
	bvs -128.b		; 70 80
	cpy #$E0C0.w		; C0 C0 E0
	cpy #$00E0.w		; C0 E0 00
	beq   0.b		; F0 00
	beq  32.b		; F0 20
	beq  32.b		; F0 20
	sed		; F8
	jsr $00F8.w		; 20 F8 00
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora $06.b,S		; 03 06
	ora [$0E.b]		; 07 0E
	asl $1A16.w		; 0E 16 1A
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	cop $0F.b		; 02 0F
	asl $1F.b		; 06 1F
	asl A		; 0A
	ora $603F00.l,X		; 1F 00 3F 60
	adc [$C1.b],Y		; 77 C1
	inc $DD82.w		; EE 82 DD
	ldy $9B.b		; A4 9B
	pla		; 68
	sta [$60.b],Y		; 97 60
	eor $E1DEE1.l,X		; 5F E1 DE E1
	dec $F840.w,X		; DE 40 F8
	sta ($F1.b,X)		; 81 F1
	ora ($F2.b,S),Y		; 13 F2
	and [$F4.b],Y		; 37 F4
	ror $6EE8.w		; 6E E8 6E
	ldy #$21ED.w		; A0 ED 21
	sbc $21.b,X		; F5 21
	sta $DD277A.l		; 8F 7A 27 DD
	.db $42, $BE		; 42 BE
	eor #$89B4.w		; 49 B4 89
	ror $91.b,X		; 76 91
	ror $EE11.w		; 6E 11 EE
	and ($DE.b,X)		; 21 DE
	dey		; 88
	sta $622FA5.l,X		; 9F A5 2F 62
	eor [$69.b]		; 47 69
	phk		; 4B
	sbc $DD89.w		; ED 89 DD
	sta ($DD.b),Y		; 91 DD
	ora ($BD.b),Y		; 11 BD
	and ($80.b,X)		; 21 80
	clv		; B8
	bpl 108.b		; 10 6C
	pha		; 48
	ldx $44.b,Y		; B6 44
	tyx		; BB
	bit $DB.b		; 24 DB
	jsl $EE10DD.l		; 22 DD 10 EE
	bpl -20.b		; 10 EC
	bcc -64.b		; 90 C0
	cli		; 58
	bcc 108.b		; 90 6C
	pha		; 48
	ror $44.b		; 66 44
	ldx $24.b,Y		; B6 24
	lda ($22.b)		; B2 22
	cld		; D8
	bpl -40.b		; 10 D8
	bpl  15.b		; 10 0F
	sed		; F8
	ora $780F78.l		; 0F 78 0F 78
	ora [$30.b]		; 07 30
	ora [$30.b]		; 07 30
	ora [$10.b]		; 07 10
	asl $10.b		; 06 10
	ora [$31.b]		; 07 31
	adc [$40.b]		; 67 40
	and [$00.b]		; 27 00
	and [$20.b]		; 27 20
	and $000F20.l		; 2F 20 0F 00
	ora $000F00.l		; 0F 00 0F 00
	asl $8F10.w,X		; 1E 10 8F
	jsr $209F.w		; 20 9F 20
	stz $DE20.w,X		; 9E 20 DE
	rti		; 40

	ora $9C41.w,X		; 1D 41 9C
	cmp ($3E.b,X)		; C1 3E
	cmp $38.b,S		; C3 38
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	jsr $20FF.w		; 20 FF 20
	sbc $00BF20.l,X		; FF 20 BF 00
	inc $7F40.w,X		; FE 40 7F
	eor ($BC.b,X)		; 41 BC
	bra -66.b		; 80 BE
	.db $82, $18, $7C		; 82 18 7C
	bpl 124.b		; 10 7C
	bpl 120.b		; 10 78
	bpl 120.b		; 10 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	rts		; 60

	bne   0.b		; D0 00
	beq  32.b		; F0 20
	jsr $2828.w		; 20 28 28
	plp		; 28
	plp		; 28
	jsr $3020.w		; 20 20 30
	bmi  16.b		; 30 10
	brk $60.b		; 00 60
	jsr $2020.w		; 20 20 20
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
	jsr $6090.w		; 20 90 60
	cld		; D8
	bpl -40.b		; 10 D8
	bmi 124.b		; 30 7C
	brk $7C.b		; 00 7C
	clc		; 18
	rol $1E00.w,X		; 3E 00 1E
	asl $E019.w		; 0E 19 E0
	bra  48.b		; 80 30
	bpl  96.b		; 10 60
	rti		; 40

	php		; 08
	php		; 08
	jsr $1C20.w		; 20 20 1C
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $2C.b		; 00 2C
	adc ($2E.b,X)		; 61 2E
	adc $28.b,S		; 63 28
	adc $24.b,S		; 63 24
	ror $20.b		; 66 20
	ror $28.b		; 66 28
	jmp ($EC20.w)		; 6C 20 EC
	jsr $1EE8.w		; 20 E8 1E
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	cop $18.b		; 02 18
	brk $5C.b		; 00 5C
	mvp $40,$50		; 44 50 40
	cli		; 58
	pha		; 48
	bvc  64.b		; 50 40
	ora ($4F.b,X)		; 01 4F
	ora $2F.b,S		; 03 2F
	brk $1E.b		; 00 1E
	ora $1A.b		; 05 1A
	ora $0E32.w		; 0D 32 0E
	tsa		; 3B
	clc		; 18
	adc $335F30.l,X		; 7F 30 5F 33
	bmi  27.b		; 30 1B
	clc		; 18
	phd		; 0B
	php		; 08
	ora $1E1F06.l		; 0F 06 1F 1E
	ora $223E15.l,X		; 1F 15 3E 22
	adc $4465.w,X		; 7D 65 44
	sbc $03CE21.l,X		; FF 21 CE 03
	cmp [$D7.b]		; C7 D7
	ldy $85FA.w		; AC FA 85
	ldx $7180.w,Y		; BE 80 71
	cpy #$C11A.w		; C0 1A C1
	ror $00.b		; 66 00
	mvn $78,$00		; 54 00 78
	rti		; 40

	adc $20.b,S		; 63 20
	ply		; 7A
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	asl $447E.w		; 0E 7E 44
	asl $0D13.w		; 0E 13 0D
	and ($0C.b,S),Y		; 33 0C
	and ($0A.b)		; 32 0A
	and $01.b,X		; 35 01
	and ($0C.b)		; 32 0C
	adc $6E0C.w		; 6D 0C 6E
	trb $1F5E.w		; 1C 5E 1F
	ora $0C1C.w,X		; 1D 1C 0C
	ora $3A0C.w,X		; 1D 0C 3A
	rol A		; 2A
	and ($0D.b,S),Y		; 33 0D
	and ($1E.b,X)		; 21 1E
	plp		; 28
	ora $F37F58.l,X		; 1F 58 7F F3
	jsr $20BF.w		; 20 BF 20
	eor $1360.w,Y		; 59 60 13
	adc ($03.b,X)		; 61 03
	sbc $0FD713.l		; EF 13 D7 0F
	stp		; DB
	ora [$FD.b]		; 07 FD
	cpy #$C00C.w		; C0 0C C0
	asl $A0.b		; 06 A0
	rol $4DC1.w		; 2E C1 4D
	ora $1F.b,S		; 03 1F
	sta $BF.b,S		; 83 BF
	sta ($BF.b,X)		; 81 BF
	brk $0F.b		; 00 0F
	cpx $01.b		; E4 01
	clv		; B8
	ora ($4C.b,X)		; 01 4C
	bra -92.b		; 80 A4
	cpy #$F0F8.w		; C0 F8 F0
	cpx #$E0F4.w		; E0 F4 E0
	cpx $E8.b		; E4 E8
	pei ($00.b)		; D4 00
	inc A		; 1A
	brk $76.b		; 00 76
	brk $B8.b		; 00 B8
	bra -40.b		; 80 D8
	cpy #$C0F0.w		; C0 F0 C0
	sed		; F8
	cpy #$C0F8.w		; C0 F8 C0
	beq 112.b		; F0 70
	bvs 112.b		; 70 70
	sei		; 78
	sec		; 38
	sei		; 78
	clc		; 18
	clv		; B8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	bmi  -8.b		; 30 F8
	bmi  -4.b		; 30 FC
	bmi  -4.b		; 30 FC
	clc		; 18
	jmp ($0040.w,X)		; 7C 40 00
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $21.b		; 00 21
	jsl $002001.l		; 22 01 20 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	and $013301.l,X		; 3F 01 33 01
	jsr $0001.w		; 20 01 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($DE.b,X)		; E1 DE
	cpx #$E3DF.w		; E0 DF E3
	cmp $E3DCE4.l,X		; DF E4 DC E3
	cli		; 58
	adc $D8.b,S		; 63 D8
	rtl		; 6B

	tya		; 98
	and $21F1D8.l		; 2F D8 F1 21
	pea $F424.w		; F4 24 F4
	bit $FB.b		; 24 FB
	plp		; 28
	sbc $28FFA8.l,X		; FF A8 FF 28
	sbc [$F0.b],Y		; F7 F0
	adc [$20.b]		; 67 20
	jsl $BD42DD.l		; 22 DD 42 BD
	rti		; 40

	lda $49FE82.l,X		; BF 82 FE 49
	sei		; 78
	sta ($30.b,S),Y		; 93 30
	sta [$30.b],Y		; 97 30
	sta $22BB20.l		; 8F 20 BB 22
	tda		; 7B
	.db $42, $78		; 42 78
	rti		; 40

	ora $04.b		; 05 04
	sta [$10.b],Y		; 97 10
	cmp $00CF00.l		; CF 00 CF 00
	cmp $E81000.l,X		; DF 00 10 E8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	bne  16.b		; D0 10
	bra   0.b		; 80 00
	cpy #$40C0.w		; C0 C0 40
	rti		; 40

	cpy #$C040.w		; C0 40 C0
	rti		; 40

	cpy #$0040.w		; C0 40 00
	brk $1C.b		; 00 1C
	and ($0E.b),Y		; 31 0E
	and $3C.b,S		; 23 3C
	adc $1C.b,S		; 63 1C
	eor $1C.b,S		; 43 1C
	.db $42, $5C		; 42 5C
	.db $42, $5C		; 42 5C
.INDEX 16
	rep #$5C		; C2 5C
	rep #$0F		; C2 0F
	ora ($3D.b,X)		; 01 3D
	and ($1E.b,X)		; 21 1E
	cop $3E.b		; 02 3E
	cop $7E.b		; 02 7E
	.db $42, $3C		; 42 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	dec $38.b		; C6 38
	lsr $3C.b		; 46 3C
	eor [$1A.b]		; 47 1A
	eor $3D.b,S		; 43 3D
	adc ($0E.b,X)		; 61 0E
	jsr $3007.w		; 20 07 30
	ora $18.b,S		; 03 18
	sec		; 38
	brk $3C.b		; 00 3C
	tsb $3A.b		; 04 3A
	cop $3D.b		; 02 3D
	ora ($1E.b,X)		; 01 1E
	brk $3F.b		; 00 3F
	jsr $101F.w		; 20 1F 10
	ora $C87008.l		; 0F 08 70 C8
	sec		; 38
	cpx $00.b		; E4 00
	ror $3738.w,X		; 7E 38 37
	trb $003B.w		; 1C 3B 00
	ora $000000.l,X		; 1F 00 00 00
	brk $B0.b		; 00 B0
	bra  88.b		; 80 58
	rti		; 40

	brk $00.b		; 00 00
	rol $1E08.w,X		; 3E 08 1E
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	ora $08.b,S		; 03 08
	ora ($10.b,S),Y		; 13 10
	ora [$00.b]		; 07 00
	and $707E00.l,X		; 3F 00 7E 70
	inc $DC60.w		; EE 60 DC
	brk $F8.b		; 00 F8
	asl $0C02.w		; 0E 02 0C
	brk $1E.b		; 00 1E
	tsb $1A.b		; 04 1A
	clc		; 18
	tsb $00.b		; 04 00
	jmp ($F810.w,X)		; 7C 10 F8
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	cpy #$60F8.w		; C0 F8 60
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$D000.w		; C0 00 D0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $D0.b		; 00 D0
	sed		; F8
	bcc 120.b		; 90 78
	cpy #$0030.w		; C0 30 00
	beq  64.b		; F0 40
	jsr $8000.w		; 20 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	beq   0.b		; F0 00
	bvc   0.b		; 50 00
	bpl   0.b		; 10 00
	jsr $8000.w		; 20 00 80
	brk $80.b		; 00 80
	cpy #$0000.w		; C0 00 00
	brk $70.b		; 00 70
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $60.b		; 00 60
	cpy #$0060.w		; C0 60 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	ora $0C.b,S		; 03 0C
	ora ($06.b,X)		; 01 06
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  48.b		; 80 30
	cpy #$F018.w		; C0 18 F0
	clc		; 18
	rts		; 60

	tsb $8CB8.w		; 0C B8 8C
	bvc -60.b		; 50 C4
	bit $1866.w		; 2C 66 18
	and ($E0.b)		; 32 E0
	jsr $10F0.w		; 20 F0 10
	cpx #$F800.w		; E0 00 F8
	php		; 08
	bvs   0.b		; 70 00
	bit $1804.w,X		; 3C 04 18
	brk $0C.b		; 00 0C
	brk $0F.b		; 00 0F
	ora [$07.b],Y		; 17 07
	cop $02.b		; 02 02
	php		; 08
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	asl $1F0E.w		; 0E 0E 1F
	asl A		; 0A
	ora [$05.b]		; 07 05
	asl A		; 0A
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $0E.b		; 00 0E
	tsb $80.b		; 04 80
	jmp ($FE6C.w)		; 6C 6C FE
	mvp $28,$FE		; 44 FE 28
	mvn $38,$00		; 54 00 38
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$6C80.w		; C0 80 6C
	rti		; 40

	cpy $00.b		; C4 00
	plp		; 28
	plp		; 28
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($05.b,X)		; 01 05
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $76.b		; 00 76
	rol $7F.b,X		; 36 7F
	jsl $2A147F.l		; 22 7F 14 2A
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $36.b		; 00 36
	jsr $0022.w		; 20 22 00
	trb $14.b		; 14 14
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	ora $003F07.l		; 0F 07 3F 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $07.b		; 02 07
	tsb $1F.b		; 04 1F
	bpl   0.b		; 10 00
	brk $03.b		; 00 03
	cop $1F.b		; 02 1F
	sbc $7FFF3F.l		; EF 3F FF 7F
	sbc $C1FFFF.l,X		; FF FF FF C1
	inc $FB07.w,X		; FE 07 FB
	and $7CFFDF.l,X		; 3F DF FF 7C
	adc $80FF50.l,X		; 7F 50 FF 80
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $64FF19.l,X		; FF 19 FF 64
	sbc $83FFA0.l,X		; FF A0 FF 83
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFEFE.l,X		; FF FE FE FF
	inc $FEFF.w,X		; FE FF FE
	sbc $00FF.w,X		; FD FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $01FF01.l,X		; FF 01 FF 01
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $D02802.l,X		; FF 02 28 D0
	plp		; 28
	bne  40.b		; D0 28
	bne  32.b		; D0 20
	bne   0.b		; D0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq -16.b		; F0 F0
	jmp ($7CF0.w,X)		; 7C F0 7C
	beq 108.b		; F0 6C
	beq 104.b		; F0 68
	beq  72.b		; F0 48
	beq -56.b		; F0 C8
	beq -40.b		; F0 D8
	beq -40.b		; F0 D8
	inc $BCBD.w,X		; FE BD BC
	tda		; 7B
	jmp ($78FB.w,X)		; 7C FB 78
	sbc [$F0.b],Y		; F7 F0
	sbc $C2DDE2.l		; EF E2 DD C2
	lda $7E81.w,X		; BD 81 7E
	sbc $85FF42.l,X		; FF 42 FF 85
	sbc $0AFE05.l,X		; FF 05 FE 0A
	jsr ($FA14.w,X)		; FC 14 FA
	rol A		; 2A
	inc $52.b,X		; F6 52
	sbc [$A1.b]		; E7 A1
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra  96.b		; 80 60
	bra 112.b		; 80 70
	brk $F0.b		; 00 F0
	rti		; 40

	clv		; B8
	rti		; 40

	clv		; B8
	jsr $80DC.w		; 20 DC 80
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -96.b		; 80 A0
	brk $D0.b		; 00 D0
	rti		; 40

	bne  64.b		; D0 40
	pla		; 68
	jsr $FDFF.w		; 20 FF FD
	sbc $FCFF.w,X		; FD FF FC
	xce		; FB
	sed		; F8
	sbc [$F1.b],Y		; F7 F1
	inc $DFE1.w		; EE E1 DF
	cmp $3D.b,S		; C3 3D
	ora [$FB.b]		; 07 FB
	sbc $00FF02.l,X		; FF 02 FF 00
	sbc $0AFF05.l,X		; FF 05 FF 0A
	sbc $28FB15.l,X		; FF 15 FB 28
	sbc [$D2.b],Y		; F7 D2
	sbc $FFBF2C.l		; EF 2C BF FF
	adc $7EFFBF.l,X		; 7F BF FF 7E
	inc $FCFD.w,X		; FE FD FC
	xce		; FB
	sbc $F1F7.w,Y		; F9 F7 F1
	sbc $FFDFE3.l		; EF E3 DF FF
	rti		; 40

	sbc $81FFC0.l,X		; FF C0 FF 81
	sbc $05FF02.l,X		; FF 02 FF 05
	sbc $16FF0A.l,X		; FF 0A FF 16
	sbc $00002C.l,X		; FF 2C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$0103.w		; 09 03 01
	ora $030D1B.l		; 0F 1B 0D 03
	and [$33.b],Y		; 37 33
	adc $476B67.l,X		; 7F 67 6B 47
	adc $03F70F.l,X		; 7F 0F F7 03
	asl $1803.w		; 0E 03 18
	phd		; 0B
	inc A		; 1A
	ora [$1C.b]		; 07 1C
	ora [$10.b],Y		; 17 10
	ora $101F1C.l		; 0F 1C 1F 10
	and $F80028.l,X		; 3F 28 00 F8
	jsr $10D8.w		; 20 D8 10
	cld		; D8
	bmi  -8.b		; 30 F8
	bpl  -8.b		; 10 F8
	rts		; 60

	cld		; D8
	rts		; 60

	cld		; D8
	rts		; 60

	cld		; D8
	bpl   0.b		; 10 00
	jsr $2000.w		; 20 00 20
	brk $40.b		; 00 40
	rti		; 40

	rts		; 60

	rts		; 60

	bvs  48.b		; 70 30
	bvs  32.b		; 70 20
	bvs  32.b		; 70 20
	clc		; 18
	rol $18.b,X		; 36 18
	rol $10.b,X		; 36 10
	rol $0E10.w		; 2E 10 0E
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	trb $1C08.w		; 1C 08 1C
	php		; 08
	asl $1210.w,X		; 1E 10 12
	bpl   0.b		; 10 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	ora $03.b		; 05 03
	ora ($0F.b,X)		; 01 0F
	ora [$03.b],Y		; 17 03
	ora ($04.b,X)		; 01 04
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($05.b,X)		; 01 05
	brk $03.b		; 00 03
	ora $1F.b,S		; 03 1F
	phd		; 0B
	ora $03.b,S		; 03 03
	brk $36.b		; 00 36
	rol $7F.b,X		; 36 7F
	jsl $2A147F.l		; 22 7F 14 2A
	brk $5C.b		; 00 5C
	bra   8.b		; 80 08
	cpx #$80D0.w		; E0 D0 80
	brk $00.b		; 00 00
	brk $36.b		; 00 36
	jsr $0022.w		; 20 22 00
	trb $14.b		; 14 14
	pha		; 48
	brk $80.b		; 00 80
	bra -16.b		; 80 F0
	ldy #$8080.w		; A0 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	ora $05.b,S		; 03 05
	ora ($00.b,X)		; 01 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora ($01.b,X)		; 01 01
	ora [$02.b]		; 07 02
	ora ($01.b,X)		; 01 01
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B6.b		; 00 B6
	stx $7F.b,Y		; 96 7F
.ACCU 8
.INDEX 8
	sep #$BF		; E2 BF
	cpx $DA.b		; E4 DA
	cpy #$9C.b		; C0 9C
	bra  40.b		; 80 28
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	ldx $80.b,Y		; B6 80
	sep #$40		; E2 40
	pea $C8A4.w		; F4 A4 C8
	rti		; 40

	ldy #$80.b		; A0 80
	bra   0.b		; 80 00
	ora $1D.b,S		; 03 1D
	ora $FF0077.l		; 0F 77 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $283F0A.l		; 0F 0A 3F 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($E0E3.w,X)		; FC E3 E0
	sta $00FC00.l,X		; 9F 00 FC 00
	ora $01.b,S		; 03 01
	ora $003807.l		; 0F 07 38 00
	sbc $FF0000.l,X		; FF 00 00 FF
	trb $64FC.w		; 1C FC 64
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$04.b]		; 07 04
	ora $000017.l,X		; 1F 17 00 00
	brk $00.b		; 00 00
	inc $FCFD.w,X		; FE FD FC
	sbc $F9FBFC.l,X		; FF FC FB F9
	inc $F3.b,X		; F6 F3
	inc $FEF7.w,X		; FE F7 FE
	sbc $DDFEFE.l,X		; FF FE FE DD
	sbc $01FF03.l,X		; FF 03 FF 01
	sbc $0BFF05.l,X		; FF 05 FF 0B
	sbc $09FF05.l,X		; FF 05 FF 09
	sbc $22FF01.l,X		; FF 01 FF 22
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	beq -40.b		; F0 D8
	cpx #$C0.b		; E0 C0
	cpx #$60.b		; E0 60
	cpx #$60.b		; E0 60
	cpx #$60.b		; E0 60
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	ora #$F6.b		; 09 F6
	php		; 08
	sbc [$48.b],Y		; F7 48
	lda [$40.b],Y		; B7 40
	lda $00FF00.l,X		; BF 00 FF 00
	inc $FC84.w,X		; FE 84 FC
	sta $FC.b		; 85 FC
	stp		; DB
	eor #$9B.b		; 49 9B
	dey		; 88
	tad		; 5B
	pha		; 48
	stp		; DB
	rti		; 40

	phx		; DA
	brk $01.b		; 00 01
	brk $4B.b		; 00 4B
	pha		; 48
	rtl		; 6B

	pla		; 68
	jsr $10DE.w		; 20 DE 10
	inc $6E90.w		; EE 90 6E
	bra 124.b		; 80 7C
	brk $F8.b		; 00 F8
	rti		; 40

	bvs   0.b		; 70 00
	bmi -96.b		; 30 A0
	bmi 104.b		; 30 68
	jsr $1074.w		; 20 74 10
	bcs -112.b		; B0 90
	ldy #$80.b		; A0 80
	brk $00.b		; 00 00
	ldy #$20.b		; A0 20
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	ora $EF1FF7.l		; 0F F7 1F EF
	and $FB7CDE.l,X		; 3F DE 7C FB
	beq -17.b		; F0 EF
	bra 127.b		; 80 7F
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	sta $303F98.l,X		; 9F 98 3F 30
	adc $05FF61.l,X		; 7F 61 FF 05
	inc $F016.w,X		; FE 16 F0
	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	brk $C7.b		; 00 C7
	ldx $7D8E.w,Y		; BE 8E 7D
	trb $00E3.w		; 1C E3 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $041F00.l,X		; FF 00 1F 04
	tsb $51F7.w		; 0C F7 51
	sbc $5DDFA2.l		; EF A2 DF 5D
	ldy $0284.w,X		; BC 84 02
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$03.b]		; 07 03
	ora $EF1F.w,X		; 1D 1F EF
	adc $FFFFBF.l,X		; 7F BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $507F0A.l		; 0F 0A 7F 50
	sbc $00FF40.l,X		; FF 40 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	and $7FFFDF.l,X		; 3F DF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $DFFFEF.l,X		; FF EF FF DF
	sbc $80FFA0.l,X		; FF A0 FF 80
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $08FF00.l,X		; FF 00 FF 08
	sbc $20FF10.l,X		; FF 10 FF 20
	bvs -56.b		; 70 C8
	bvs -116.b		; 70 8C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	sec		; 38
	sei		; 78
	bvs  12.b		; 70 0C
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000F00.l		; 0F 00 0F 00
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
	brk $09.b		; 00 09
	eor ($5A.b,X)		; 41 5A
	eor $7A.b,S		; 43 7A
	cmp $3C.b,S		; C3 3C
	sta [$3C.b]		; 87 3C
	stx $34.b		; 86 34
	stx $30.b		; 86 30
	sty $30.b		; 84 30
	sty $7E.b		; 84 7E
	rti		; 40

	and $3C01.w,X		; 3D 01 3C
	brk $7A.b		; 00 7A
	cop $78.b		; 02 78
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	tsb $78.b		; 04 78
	brk $07.b		; 00 07
	bpl  30.b		; 10 1E
	bpl  30.b		; 10 1E
	bmi  15.b		; 30 0F
	and ($0C.b,X)		; 21 0C
	and ($0E.b,X)		; 21 0E
	and $1C.b,S		; 23 1C
	and ($1C.b,S),Y		; 33 1C
	and ($1F.b,S),Y		; 33 1F
	bpl  15.b		; 10 0F
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	ora ($1C.b,X)		; 01 1C
	brk $0E.b		; 00 0E
	cop $0E.b		; 02 0E
	cop $0D.b		; 02 0D
	and ($0E.b,X)		; 21 0E
	jsr $200E.w		; 20 0E 20
	ora $000F20.l		; 0F 20 0F 00
	ora $101F10.l,X		; 1F 10 1F 10
	ora $001E10.l,X		; 1F 10 1E 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $000F00.l		; 0F 00 0F 00
	ora $F01700.l		; 0F 00 17 F0
	sta [$F0.b],Y		; 97 F0
	ora $784B78.l		; 0F 78 4B 78
	eor $58.b,S		; 43 58
	eor [$5C.b]		; 47 5C
	ora $4C.b		; 05 4C
	.db $82, $CE, $AF		; 82 CE AF
	ldy #$4F.b		; A0 4F
	rti		; 40

	cmp [$50.b],Y		; D7 50
	sta [$10.b],Y		; 97 10
	sta $088B08.l		; 8F 08 8B 08
	sta $00.b,S		; 83 00
	ora $04.b		; 05 04
	brk $61.b		; 00 61
	brk $9A.b		; 00 9A
	brk $86.b		; 00 86
	brk $84.b		; 00 84
	brk $C7.b		; 00 C7
	brk $4F.b		; 00 4F
	cop $15.b		; 02 15
	ora $24.b,S		; 03 24
	brk $00.b		; 00 00
	adc ($61.b,X)		; 61 61
	adc $7B79.w,Y		; 79 79 7B
	tda		; 7B
	sec		; 38
	sec		; 38
	and ($32.b)		; 32 32
	pld		; 2B
	pld		; 2B
	tas		; 1B
	tas		; 1B
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $D8.b		; 00 D8
	brk $39.b		; 00 39
	brk $89.b		; 00 89
	ora ($DB.b,X)		; 01 DB
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	jsr $C020.w		; 20 20 C0
	cpy #$71.b		; C0 71
	adc ($A0.b),Y		; 71 A0
	ldy #$00.b		; A0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tas		; 1B
	tas		; 1B
	and $0A3F11.l,X		; 3F 11 3F 0A
	ora $00.b,X		; 15 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1B.b		; 00 1B
	bpl  17.b		; 10 11
	brk $0A.b		; 00 0A
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $7020.w		; 20 20 70
	bvs  32.b		; 70 20
	lda ($00.b,X)		; A1 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $70.b		; 00 70
	jsr $0021.w		; 20 21 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0F.b		; 04 0F
	tsb $0E0E.w		; 0C 0E 0E
	asl $0E0E.w		; 0E 0E 0E
	asl $1E1E.w		; 0E 1E 1E
	asl $1E1E.w,X		; 1E 1E 1E
	cop $02.b		; 02 02
	brk $0F.b		; 00 0F
	tsb $0F.b		; 04 0F
	tsb $0F.b		; 04 0F
	tsb $0C1F.w		; 0C 1F 0C
	ora $0C1F0C.l,X		; 1F 0C 1F 0C
	and $203F00.l,X		; 3F 00 3F 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $11.b		; 04 11
	asl $1F04.w		; 0E 04 1F
	rol $0020.w		; 2E 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora $04.b,X		; 15 04
	asl $3F0A.w		; 0E 0A 3F
	ora $10.b,X		; 15 10
	bra -128.b		; 80 80
	cmp ($82.b)		; D2 82
	iny		; C8
	ora [$82.b]		; 07 82
	ora $020717.l		; 0F 17 07 02
	cop $08.b		; 02 08
	brk $02.b		; 00 02
	bpl  16.b		; 10 10
	sta ($00.b)		; 92 00
	txa		; 8A
	cop $07.b		; 02 07
	ora $1F.b		; 05 1F
	asl A		; 0A
	ora [$05.b]		; 07 05
	asl A		; 0A
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	rti		; 40

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	trb $081C.w		; 1C 1C 08
	php		; 08
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $1C.b		; 00 1C
	php		; 08
	php		; 08
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tas		; 1B
	tas		; 1B
	and $0A3F11.l,X		; 3F 11 3F 0A
	ora $00.b,X		; 15 00
	asl $4400.w		; 0E 00 44
	rti		; 40

	bpl -32.b		; 10 E0
	rti		; 40

	brk $00.b		; 00 00
	tas		; 1B
	bpl  17.b		; 10 11
	brk $0A.b		; 00 0A
	asl A		; 0A
	tsb $00.b		; 04 00
	rti		; 40

	brk $50.b		; 00 50
	rti		; 40

	cpx #$A0.b		; E0 A0
	bra -64.b		; 80 C0
	rti		; 40

	rti		; 40

	cpy #$60.b		; C0 60
	cpy #$60.b		; C0 60
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	ldy #$20.b		; A0 20
	ldy #$30.b		; A0 30
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	brk $10.b		; 00 10
	bra -112.b		; 80 90
	cpy #$D0.b		; C0 D0
	brk $10.b		; 00 10
	ldy #$30.b		; A0 30
	bra  48.b		; 80 30
	rti		; 40

	rts		; 60

	brk $40.b		; 00 40
	cpx #$00.b		; E0 00
	rts		; 60

	brk $30.b		; 00 30
	bpl -16.b		; 10 F0
	bpl -64.b		; 10 C0
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	cpy #$40.b		; C0 40
	sec		; 38
	sty $8828.w		; 8C 28 88
	jsr $3088.w		; 20 88 30
	tya		; 98
	bmi -104.b		; 30 98
	bpl  -8.b		; 10 F8
	rts		; 60

	cld		; D8
	rts		; 60

	cld		; D8
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	sei		; 78
	php		; 08
	rts		; 60

	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	jsr $2070.w		; 20 70 20
	tsb $0032.w		; 0C 32 00
	rol $1608.w,X		; 3E 08 16
	bpl  30.b		; 10 1E
	tsb $0C16.w		; 0C 16 0C
	rol $00.b		; 26 00
	rol $3608.w		; 2E 08 36
	asl $1012.w,X		; 1E 12 10
	bpl  12.b		; 10 0C
	php		; 08
	bpl   0.b		; 10 00
	php		; 08
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	php		; 08
	ora $100F10.l		; 0F 10 0F 10
	ora $300F10.l		; 0F 10 0F 30
	ora $300E30.l		; 0F 30 0E 30
	trb $2170.w		; 1C 70 21
	adc ($1F.b,X)		; 61 1F
	bpl  31.b		; 10 1F
	bpl  31.b		; 10 1F
	bpl  31.b		; 10 1F
	bpl  31.b		; 10 1F
	bpl  63.b		; 10 3F
	bmi  47.b		; 30 2F
	jsr $405E.w		; 20 5E 40
	sta $C7.b,S		; 83 C7
	bra -57.b		; 80 C7
	sta ($87.b,X)		; 81 87
	.db $82, $86, $01		; 82 86 01
	sty $8C05.w		; 8C 05 8C
	phd		; 0B
	tya		; 98
	ora [$90.b]		; 07 90
	tsb $04.b		; 04 04
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	ora $04.b		; 05 04
	ora [$04.b]		; 07 04
	phd		; 0B
	php		; 08
	ora [$00.b]		; 07 00
	ora $4C0310.l,X		; 1F 10 03 4C
	cop $5D.b		; 02 5D
	ora [$5B.b]		; 07 5B
	ora $3F0F77.l		; 0F 77 0F 3F
	ora $7F1F2F.l,X		; 1F 2F 1F 7F
	and $33375F.l,X		; 3F 5F 37 33
	and $242F2A.l		; 2F 2A 2F 24
	ora $001F18.l,X		; 1F 18 1F 00
	and $003F30.l,X		; 3F 30 3F 00
	and $7A80A0.l,X		; 3F A0 80 7A
	ora $FE.b,S		; 03 FE
	cmp ($BC.b,X)		; C1 BC
	sbc $DE.b		; E5 DE
	sbc $FE.b,S		; E3 FE
	sbc ($FE.b,X)		; E1 FE
	sbc $FC.b,S		; E3 FC
	sbc ($FE.b,X)		; E1 FE
	wai		; CB
	dex		; CA
	cmp $FB18.w,Y		; D9 18 FB
	jmp $FA2EFD.l		; 5C FD 2E FA
	ora $FC0FFC.l		; 0F FC 0F FC
	phd		; 0B
	inc $000B.w,X		; FE 0B 00
	asl $0400.w		; 0E 00 04
	sec		; 38
	bit $0E0C.w,X		; 3C 0C 0E
	cop $0E.b		; 02 0E
	tas		; 1B
	asl $0E0F.w,X		; 1E 0F 0E
	ora [$06.b]		; 07 06
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	clc		; 18
	rol $1F0C.w,X		; 3E 0C 1F
	cop $3F.b		; 02 3F
	asl A		; 0A
	and $001F06.l,X		; 3F 06 1F 00
	ora $0D0D00.l		; 0F 00 0D 0D
	ora $051F08.l,X		; 1F 08 1F 05
	asl A		; 0A
	brk $07.b		; 00 07
	brk $02.b		; 00 02
	jsr $7020.w		; 20 20 70
	bvs   0.b		; 70 00
	brk $0D.b		; 00 0D
	php		; 08
	php		; 08
	brk $05.b		; 00 05
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $70.b		; 00 70
	jsr $3E02.w		; 20 02 3E
	bit $5A.b		; 24 5A
	trb $6A.b		; 14 6A
	pha		; 48
	dec $20.b,X		; D6 20
	sty $88E0.w		; 8C E0 88
	bvc  24.b		; 50 18
	cpy #$10.b		; C0 10
	clc		; 18
	ora $2C.b,S		; 03 2C
	and $14.b		; 25 14
	trb $28.b		; 14 28
	php		; 08
	beq -128.b		; F0 80
	bvs   0.b		; 70 00
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	asl $0404.w		; 0E 04 04
	ora ($00.b),Y		; 11 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	asl A		; 0A
	ora $04.b,X		; 15 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $0F.b		; 06 0F
	tsb $0F.b		; 04 0F
	cop $05.b		; 02 05
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	asl $04.b		; 06 04
	tsb $00.b		; 04 00
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	ora [$C7.b]		; 07 C7
.ACCU 16
	rep #$E2		; C2 E2
	rti		; 40

	cpx #$80.b		; E0 80
	rti		; 40

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$02.b]		; 07 02
	rep #$00		; C2 00
	rti		; 40

	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	sbc #$43E1.w		; E9 E1 43
	eor ($13.b,X)		; 41 13
	brk $41.b		; 00 41
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	bvc -31.b		; 50 E1
	lda ($51.b,X)		; A1 51
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $28.b		; 00 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	bvc  -8.b		; 50 F8
	bvc -88.b		; 50 A8
	brk $70.b		; 00 70
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc   0.b		; 50 00
	bvc  80.b		; 50 50
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs -80.b		; B0 B0
	sed		; F8
	bpl  -8.b		; 10 F8
	ldy #$50.b		; A0 50
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs   0.b		; B0 00
	bpl   0.b		; 10 00
	ldy #$A0.b		; A0 A0
	rti		; 40

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	asl $1D03.w		; 0E 03 1D
	ora $000077.l		; 0F 77 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$05.b]		; 07 05
	ora $283F0A.l		; 0F 0A 3F 28
	trb $0808.w		; 1C 08 08
	rol $361C.w,X		; 3E 1C 36
	trb $2A.b		; 14 2A
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $2A1C.w		; 1C 1C 2A
	brk $1C.b		; 00 1C
	php		; 08
	trb $0814.w		; 1C 14 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($FE6C.w)		; 6C 6C FE
	mvp $28,$FE		; 44 FE 28
	mvn $38,$00		; 54 00 38
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($4440.w)		; 6C 40 44
	brk $28.b		; 00 28
	plp		; 28
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora ($0B.b,X)		; 01 0B
	php		; 08
	ora ($08.b,X)		; 01 08
	rol A		; 2A
	trb $7F08.w		; 1C 08 7F
	ldx $0000.w,Y		; BE 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora #$0800.w		; 09 00 08
	php		; 08
	rol A		; 2A
	brk $1C.b		; 00 1C
	trb $5DFF.w		; 1C FF 5D
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl   0.b		; 10 00
	bpl  84.b		; 10 54
	sec		; 38
	bpl  -2.b		; 10 FE
	adc $1038.w,X		; 7D 38 10
	bpl  84.b		; 10 54
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bpl  16.b		; 10 10
	mvn $38,$00		; 54 00 38
	sec		; 38
	sbc $3838BA.l,X		; FF BA 38 38
	mvn $00,$00		; 54 00 00
	brk $00.b		; 00 00
	bra   4.b		; 80 04
	sty $0E.b		; 84 0E
	asl $0404.w		; 0E 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	asl $0404.w		; 0E 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	bmi -128.b		; 30 80
	jsr $2080.w		; 20 80 20
	rti		; 40

	rti		; 40

	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $B0.b		; 00 B0
	bcs  -8.b		; B0 F8
	bpl  -8.b		; 10 F8
	ldy #$50.b		; A0 50
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs   0.b		; B0 00
	bpl   0.b		; 10 00
	ldy #$A0.b		; A0 A0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	ora ($0E.b),Y		; 11 0E
	tsb $1F.b		; 04 1F
	rol $040E.w		; 2E 0E 04
	tsb $11.b		; 04 11
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora $04.b,X		; 15 04
	asl $3F0A.w		; 0E 0A 3F
	ora $0E.b,X		; 15 0E
	asl A		; 0A
	ora $04.b,X		; 15 04
	tsb $00.b		; 04 00
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
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $36.b		; 00 36
	rol $7F.b,X		; 36 7F
	jsl $2A147F.l		; 22 7F 14 2A
	brk $1C.b		; 00 1C
	brk $48.b		; 00 48
	rti		; 40

	bpl -32.b		; 10 E0
	rti		; 40

	brk $00.b		; 00 00
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
	php		; 08
	brk $40.b		; 00 40
	brk $50.b		; 00 50
	rti		; 40

	cpx #$A0.b		; E0 A0
	trb $1818.w		; 1C 18 18
	trb $1C18.w		; 1C 18 1C
	clc		; 18
	trb $1C0E.w		; 1C 0E 1C
	tsb $1E1E.w		; 0C 1E 1E
	asl $0E0E.w		; 0E 0E 0E
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	clc		; 18
	rol $1E18.w,X		; 3E 18 1E
	php		; 08
	asl $1F08.w,X		; 1E 08 1F
	tsb $0C1F.w		; 0C 1F 0C
	ora $1C2A08.l,X		; 1F 08 2A 1C
	php		; 08
	adc $081CBE.l,X		; 7F BE 1C 08
	php		; 08
	rol A		; 2A
	php		; 08
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	rol A		; 2A
	brk $1C.b		; 00 1C
	trb $5DFF.w		; 1C FF 5D
	trb $2A1C.w		; 1C 1C 2A
	brk $08.b		; 00 08
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
	brk $40.b		; 00 40
	clc		; 18
	brk $78.b		; 00 78
	rts		; 60

	sei		; 78
	jsr $1878.w		; 20 78 18
	jmp ($4438.w)		; 6C 38 44
	sec		; 38
	jmp $5E30.w		; 4C 30 5E
	rts		; 60

	brk $10.b		; 00 10
	brk $70.b		; 00 70
	brk $28.b		; 00 28
	php		; 08
	bpl   0.b		; 10 00
	sec		; 38
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	mvp $10,$38		; 44 38 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	mvn $38,$10		; 54 10 38
	plp		; 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	cpx #$E0.b		; E0 E0
	rti		; 40

	eor ($01.b,X)		; 41 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $E0.b		; 00 E0
	rti		; 40

	rti		; 40

	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	cld		; D8
	stp		; DB
	sbc $F88D.w,X		; FD 8D F8
	bvc -86.b		; 50 AA
	brk $70.b		; 00 70
	bra  32.b		; 80 20
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora ($01.b,X)		; 01 01
	cmp $058D82.l,X		; DF 82 8D 05
	eor ($50.b)		; 52 50
	rts		; 60

	brk $80.b		; 00 80
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	jsr $80C0.w		; 20 C0 80
	cpx #$D0.b		; E0 D0
	cpy #$80.b		; C0 80
	bra  32.b		; 80 20
	brk $EC.b		; 00 EC
	jmp ($80FE.w)		; 6C FE 80
	brk $A0.b		; 00 A0
	bra -64.b		; 80 C0
	rti		; 40

	beq -96.b		; F0 A0
	cpy #$40.b		; C0 40
	ldy #$80.b		; A0 80
	bra   0.b		; 80 00
	jmp ($0040.w)		; 6C 40 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	beq -128.b		; F0 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
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
	brk $5E.b		; 00 5E
	sta [$76.b]		; 87 76
	phk		; 4B
	and $1841.w,X		; 3D 41 18
	and ($14.b,X)		; 21 14
	and [$02.b]		; 27 02
	ora $001F00.l,X		; 1F 00 1F 00
	ora $241424.l,X		; 1F 24 14 24
	php		; 08
	rol $3F00.w,X		; 3E 00 3F
	and ($1A.b,X)		; 21 1A
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $17.b		; 00 17
	adc #$6E1F.w		; 69 1F 6E
	ora [$EF.b],Y		; 17 EF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	asl $00EF.w		; 0E EF 00
	bne -65.b		; D0 BF
	asl $119F.w,X		; 1E 9F 11
	sta $202190.l,X		; 9F 90 21 20
	asl $7000.w,X		; 1E 00 70
	ora $C03FE6.l,X		; 1F E6 3F C0
	adc $FFFDFE.l,X		; 7F FE FD FF
	inc $FF7F.w,X		; FE 7F FF
	and $7F1FFF.l,X		; 3F FF 1F 7F
	ora $FF077F.l		; 0F 7F 07 FF
	ora $7F.b,S		; 03 7F
	sbc $01FF02.l,X		; FF 02 FF 01
	adc $003F00.l,X		; 7F 00 3F 00
	ora $800F80.l,X		; 1F 80 0F 80
	ora [$80.b]		; 07 80
	ora $80.b,S		; 03 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra 112.b		; 80 70
	cpy #$B8.b		; C0 B8
	cpx #$DC.b		; E0 DC
	beq -18.b		; F0 EE
	sed		; F8
	sbc [$FC.b],Y		; F7 FC
	xce		; FB
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	cpx #$A0.b		; E0 A0
	beq  80.b		; F0 50
	sed		; F8
	plp		; 28
	jsr ($FE14.w,X)		; FC 14 FE
	asl A		; 0A
	sbc $014305.l,X		; FF 05 43 01
	adc $031F07.l,X		; 7F 07 1F 03
	and $002701.l		; 2F 01 27 00
	ora ($00.b),Y		; 11 00
	asl $1001.w,X		; 1E 01 10
	ora $033D00.l		; 0F 00 3D 03
	ora [$01.b]		; 07 01
	tsa		; 3B
	brk $1D.b		; 00 1D
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	asl A		; 0A
	brk $85.b		; 00 85
	sbc #$EFC1.w		; E9 C1 EF
	cpy $EF.b		; C4 EF
	rep #$C7		; C2 C7
	ora #$1C1B.w		; 09 1B 1C
	lda $7D3C.w,X		; BD 3C 7D
	sei		; 78
	tda		; 7B
	asl $82F8.w		; 0E F8 82
	sbc ($8D.b)		; F2 8D
	sbc ($86.b),Y		; F1 86
	sed		; F8
	ora $FC.b,S		; 03 FC
	ora #$187E.w		; 09 7E 18
	inc $FC30.w,X		; FE 30 FC
	cop $1F.b		; 02 1F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	ora $59372F.l,X		; 1F 2F 37 59
	sec		; 38
	eor $04601F.l		; 4F 1F 60 04
	adc $0A00.w,Y		; 79 00 0A
	brk $00.b		; 00 00
	ora [$00.b],Y		; 17 00
	and $263F10.l,X		; 3F 10 3F 26
	and $181830.l,X		; 3F 30 18 18
	php		; 08
	ora $00.b,S		; 03 00
	sbc ($00.b),Y		; F1 00
	inc $39C0.w,X		; FE C0 39
	cpx #$D8.b		; E0 D8
	beq -20.b		; F0 EC
	sed		; F8
	adc $15BF74.l,X		; 7F 74 BF 15
	inc $0000.w		; EE 00 00
	sbc ($21.b,X)		; E1 21
	inc $C6.b,X		; F6 C6
	sbc [$27.b],Y		; F7 27
	xce		; FB
	tas		; 1B
	jsr ($FF84.w,X)		; FC 84 FF
	rti		; 40

	eor $000011.l,X		; 5F 11 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	asl $0F.b		; 06 0F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	inc $FE68.w,X		; FE 68 FE
	brk $FE.b		; 00 FE
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	tsb $0000.w		; 0C 00 00
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	tyx		; BB
	tsa		; 3B
	ora [$12.b],Y		; 17 12
	eor [$01.b]		; 47 01
	ora ($00.b)		; 12 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	jsr ($3B54.w,X)		; FC 54 3B
	rol A		; 2A
	lsr $10.b,X		; 56 10
	ora ($01.b),Y		; 11 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	rts		; 60

	ora ($61.b,X)		; 01 61
	adc $F3.b,S		; 63 F3
	and ($F1.b,X)		; 21 F1
	rti		; 40

	ldy #$00.b		; A0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	ora ($01.b,X)		; 01 01
	tsb $01.b		; 04 01
	brk $63.b		; 00 63
	ora ($21.b,X)		; 01 21
	brk $40.b		; 00 40
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b		; 05 01
	cpx #$D0.b		; E0 D0
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	beq -96.b		; F0 A0
	bra -128.b		; 80 80
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $44.b		; 00 44
	inc $5428.w,X		; FE 28 54
	brk $38.b		; 00 38
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl  68.b		; 10 44
	sec		; 38
	bpl  68.b		; 10 44
	brk $28.b		; 00 28
	plp		; 28
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	mvn $38,$10		; 54 10 38
	plp		; 28
	brk $7C.b		; 00 7C
	brk $84.b		; 00 84
	brk $44.b		; 00 44
	brk $EC.b		; 00 EC
	brk $8E.b		; 00 8E
	bra  95.b		; 80 5F
	cpy $7B.b		; C4 7B
	dec $80BD.w		; CE BD 80
	bra 120.b		; 80 78
	sei		; 78
	clv		; B8
	clv		; B8
	bpl  16.b		; 10 10
	stz $74.b,X		; 74 74
	ldx $A6.b		; A6 A6
	cmp [$85.b],Y		; D7 85
	sbc $000042.l,X		; FF 42 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	ora $19.b,S		; 03 19
	ora [$10.b]		; 07 10
	ora $1900.w		; 0D 00 19
	brk $31.b		; 00 31
	brk $21.b		; 00 21
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora $08.b,S		; 03 08
	ora $10.b		; 05 10
	asl A		; 0A
	brk $36.b		; 00 36
	brk $2E.b		; 00 2E
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	ora $10008F.l		; 0F 8F 00 10
	dey		; 88
	cmp #$D187.w		; C9 87 D1
	stx $C6D8.w		; 8E D8 C6
	inx		; E8
.ACCU 16
	rep #$E8		; C2 E8
	asl $04.b		; 06 04
	sta [$FF.b]		; 87 FF
	brk $FF.b		; 00 FF
	sta [$F1.b]		; 87 F1
	stx $87E0.w		; 8E E0 87
	cpx #$8F.b		; E0 8F
	sed		; F8
	sta [$F0.b]		; 87 F0
	ora $F8.b,S		; 03 F8
	ora [$FF.b]		; 07 FF
	ora $FF1FFF.l		; 0F FF 1F FF
	and $FF3FFF.l,X		; 3F FF 3F FF
	sta $FF.b,S		; 83 FF
	sta $FF.b,S		; 83 FF
	lda $07FE.w,Y		; B9 FE 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $BF.b		; 00 BF
	bra -65.b		; 80 BF
	bra   3.b		; 80 03
	brk $3B.b		; 00 3B
	sec		; 38
	and $FE05.w,X		; 3D 05 FE
	sbc $FEFF.w,X		; FD FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $01FF02.l,X		; FF 02 FF 01
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $1E.b		; 00 1E
	ora ($3D.b,X)		; 01 3D
	ora $3B.b,S		; 03 3B
	asl $37.b		; 06 37
	ora $5E1E6F.l		; 0F 6F 1E 5E
	trb $1A5E.w		; 1C 5E 1A
	cmp $010A.w,X		; DD 0A 01
	bpl   3.b		; 10 03
	ora ($07.b),Y		; 11 07
	jsr $2E0F.w		; 20 0F 2E
	ora $583F5C.l,X		; 1F 5C 3F 58
	and $F13E41.l,X		; 3F 41 3E F1
	inc $E1.b,X		; F6 E1
	sbc $09D7C9.l		; EF C9 D7 09
	lda $4C7F49.l,X		; BF 49 7F 4C
	xce		; FB
	jmp $4CFB.w		; 4C FB 4C
	xce		; FB
	adc ($F9.b,X)		; 61 F9
	cmp $F0.b		; C5 F0
	sta $2DE8.w		; 8D E8 2D
	cpy #$6D.b		; C0 6D
	bra 110.b		; 80 6E
	tsb $6E.b		; 04 6E
	tsb $6E.b		; 04 6E
	tsb $00.b		; 04 00
	sbc ($00.b,X)		; E1 00
	ora $000F02.l,X		; 1F 02 0F 00
	php		; 08
	ora $18.b,S		; 03 18
	ora $100718.l		; 0F 18 07 10
	ora $1E0130.l,X		; 1F 30 01 1E
	brk $00.b		; 00 00
	ora $0F0D.w		; 0D 0D 0F
	php		; 08
	ora $101708.l		; 0F 08 17 10
	ora $000F10.l,X		; 1F 10 0F 00
	mvp $44,$BB		; 44 BB 44
	tyx		; BB
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	mvp $44,$7F		; 44 7F 44
	adc $447F4C.l,X		; 7F 4C 7F 44
	ror $76.b,X		; 76 76
	mvp $44,$76		; 44 76 44
	brk $00.b		; 00 00
	cpx $A86C.w		; EC 6C A8
	plp		; 28
	tay		; A8
	plp		; 28
	bra   0.b		; 80 00
	tya		; 98
	bpl  40.b		; 10 28
	sty $9C10.w		; 8C 10 9C
	clc		; 18
	stz $CC48.w		; 9C 48 CC
	tsb $46.b		; 04 46
	bpl  66.b		; 10 42
	dec A		; 3A
	and $0C.b,S		; 23 0C
	and ($74.b,X)		; 21 74
	tsb $68.b		; 04 68
	php		; 08
	rts		; 60

	brk $34.b		; 00 34
	tsb $78.b		; 04 78
	rti		; 40

	rol $1C02.w,X		; 3E 02 1C
	brk $3F.b		; 00 3F
	and ($48.b,X)		; 21 48
	lsr $6724.w		; 4E 24 67
	ora ($33.b)		; 12 33
	ora #$0439.w		; 09 39 04
	trb $0E02.w		; 1C 02 0E
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	bit $04.b,X		; 34 04
	phy		; 5A
	.db $42, $2D		; 42 2D
	and ($16.b,X)		; 21 16
	bpl  11.b		; 10 0B
	php		; 08
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	adc ($FD.b,S),Y		; 73 FD
	adc $FD.b,S		; 63 FD
	phk		; 4B
	sbc $FD0B.w,X		; FD 0B FD
	ora $FD.b,S		; 03 FD
	adc ($FD.b,S),Y		; 73 FD
	adc $FC.b,S		; 63 FC
	lsr $F9.b		; 46 F9
	adc ($02.b,S),Y		; 73 02
	rtl		; 6B

	asl A		; 0A
	tad		; 5B
	ora ($0B.b)		; 12 0B
	cop $73.b		; 02 73
	adc ($77.b)		; 72 77
	asl $6F.b		; 06 6F
	ora $FF1F5F.l		; 0F 5F 1F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFDEFF.l,X		; DF FF DE FF
	stz $5CBF.w		; 9C BF 5C
	and $79FA.w,X		; 3D FA 79
	inc $00FF.w,X		; FE FF 00
	sbc $20FF00.l,X		; FF 00 FF 20
	sbc $63FF21.l,X		; FF 21 FF 63
	sbc $85FFA3.l,X		; FF A3 FF 85
	sbc $3B0A05.l,X		; FF 05 0A 3B
	tsb $1F.b		; 04 1F
	brk $0F.b		; 00 0F
	cop $07.b		; 02 07
	cop $03.b		; 02 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	trb $10.b		; 14 10
	ora #$0508.w		; 09 08 05
	tsb $03.b		; 04 03
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sei		; 78
	bcc  60.b		; 90 3C
	dey		; 88
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bne -64.b		; D0 C0
	bne  64.b		; D0 40
	cld		; D8
	brk $C8.b		; 00 C8
	brk $00.b		; 00 00
	ora $1F0D.w		; 0D 0D 1F
	php		; 08
	sta $000A05.l,X		; 9F 05 0A 00
	ora [$00.b]		; 07 00
	cop $02.b		; 02 02
	cop $07.b		; 02 07
	ora [$00.b]		; 07 00
	brk $0D.b		; 00 0D
	php		; 08
	dey		; 88
	brk $05.b		; 00 05
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $07.b		; 00 07
	cop $00.b		; 02 00
	bra -128.b		; 80 80
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $04.b		; 00 04
	tsb $0E.b		; 04 0E
	asl $0404.w		; 0E 04 04
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	asl $0404.w		; 0E 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$80.b		; C0 80
	rts		; 60

	cpy #$A0.b		; C0 A0
	cpy #$F0.b		; C0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$40.b		; C0 40
	cpy #$80.b		; C0 80
	cpx #$40.b		; E0 40
	cpx #$00.b		; E0 00
	cpx #$D0.b		; E0 D0
	cpx #$F8.b		; E0 F8
	beq -24.b		; F0 E8
	beq -24.b		; F0 E8
	beq  -8.b		; F0 F8
	beq  -8.b		; F0 F8
	beq 120.b		; F0 78
	beq 104.b		; F0 68
	beq  48.b		; F0 30
	beq   0.b		; F0 00
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq -128.b		; F0 80
	beq -112.b		; F0 90
	ora ($36.b,X)		; 01 36
	rol $7F.b,X		; 36 7F
	jsl $2B157F.l		; 22 7F 15 2B
	ora ($1D.b,X)		; 01 1D
	brk $09.b		; 00 09
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	rol $20.b,X		; 36 20
	jsl $151500.l		; 22 00 15 15
	ora #$0003.w		; 09 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
	brk $88.b		; 00 88
	dey		; 88
	jmp.w [$C89C]		; DC 9C C8
	dey		; 88
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	dey		; 88
	cpy #$9C.b		; C0 9C
	iny		; C8
	php		; 08
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$1C.b		; E0 1C
	php		; 08
	rol $1C5D.w,X		; 3E 5D 1C
	php		; 08
	php		; 08
	jsl $000800.l		; 22 00 08 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	brk $1C.b		; 00 1C
	trb $7F.b		; 14 7F
	rol A		; 2A
	trb $2A14.w		; 1C 14 2A
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	rti		; 40

	asl $3F04.w		; 0E 04 3F
	eor $04040E.l,X		; 5F 0E 04 04
	ora $04.b,X		; 15 04
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	asl $2E7F.w		; 0E 7F 2E
	asl $150E.w		; 0E 0E 15
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	jsr $201F.w		; 20 1F 20
	rol $1D20.w,X		; 3E 20 1D
	eor ($3C.b,X)		; 41 3C
	eor ($3A.b,X)		; 41 3A
	eor $78.b,S		; 43 78
	.db $42, $34		; 42 34
	asl $1F.b		; 06 1F
	brk $3F.b		; 00 3F
	jsr $001F.w		; 20 1F 00
	rol $3F00.w,X		; 3E 00 3F
	ora ($7C.b,X)		; 01 7C
	rti		; 40

	rol $7802.w,X		; 3E 02 78
	brk $14.b		; 00 14
	ror $84.b,X		; 76 84
	inc $24.b		; E6 24
	inc $04.b		; E6 04
	cpy $48.b		; C4 48
	jmp $0C08.w		; 4C 08 0C
	php		; 08
	tsb $0C00.w		; 0C 00 0C
	iny		; C8
	rti		; 40

	sec		; 38
	jsr $8098.w		; 20 98 80
	sei		; 78
	rti		; 40

	bit $04.b,X		; 34 04
	stz $04.b,X		; 74 04
	stz $04.b,X		; 74 04
	sei		; 78
	php		; 08
	asl $0731.w,X		; 1E 31 07
	ora ($0F.b),Y		; 11 0F
	ora $0806.w,Y		; 19 06 08
	cop $08.b		; 02 08
	ora [$04.b]		; 07 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $101E01.l		; 0F 01 1E 10
	asl $00.b		; 06 00
	ora $000708.l		; 0F 08 07 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	brk $01.b		; 00 01
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $9973.w		; 8C 73 99
	adc [$83.b]		; 67 83
	sbc $80F08F.l,X		; FF 8F F0 80
	adc $006780.l,X		; 7F 80 67 00
	cmp ($00.b,X)		; C1 00
	bra -65.b		; 80 BF
	ldx $BCBF.w,Y		; BE BF BC
	sbc $1FDF38.l,X		; FF 38 DF 1F
	cmp $82839F.l,X		; DF 9F 83 82
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xce		; FB
	sbc $F7.b,X		; F5 F7
	xba		; EB
	sbc $6D9ED6.l		; EF D6 9E 6D
	jmp ($F0BB.w,X)		; 7C BB F0
	asl $F000.w		; 0E 00 F0
	brk $00.b		; 00 00
	sbc $14F70E.l,X		; FF 0E F7 14
	sbc $F3FF29.l		; EF 29 FF F3
	inc $FCC6.w,X		; FE C6 FC
	pea $80E0.w		; F4 E0 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bra  60.b		; 80 3C
	cpy #$F8.b		; C0 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
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
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $36.b		; 00 36
	rol $7F.b,X		; 36 7F
	jsl $2A147F.l		; 22 7F 14 2A
	brk $1C.b		; 00 1C
	brk $28.b		; 00 28
	jsr $2000.w		; 20 00 20
	tay		; A8
	brk $00.b		; 00 00
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
	php		; 08
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	jsr $00A8.w		; 20 A8 00
	brk $6C.b		; 00 6C
	ldy $447E.w		; AC 7E 44
	inc $5428.w,X		; FE 28 54
	brk $38.b		; 00 38
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx $4480.w		; EC 80 44
	brk $28.b		; 00 28
	plp		; 28
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($E5.b,X)		; 01 E5
	sta $C1.b,S		; 83 C1
	ora $010317.l		; 0F 17 03 01
	ora ($05.b,X)		; 01 05
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $40.b		; 00 40
	eor $00.b		; 45 00
	sta $03.b,S		; 83 03
	ora $03030B.l,X		; 1F 0B 03 03
	ora $00.b		; 05 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	trb $081C.w		; 1C 1C 08
	php		; 08
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $1C.b		; 00 1C
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $36.b,X		; 36 36
	adc $147F22.l,X		; 7F 22 7F 14
	rol A		; 2A
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	asl A		; 0A
	ora $00150A.l,X		; 1F 0A 15 00
	asl $0400.w		; 0E 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	brk $0A.b		; 00 0A
	asl A		; 0A
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	rts		; 60

	jsr $8030.w		; 20 30 80
	bcc  64.b		; 90 40
	iny		; C8
	jsr $10E4.w		; 20 E4 10
	adc ($80.b)		; 72 80
	bra  64.b		; 80 40
	rti		; 40

	ldy #$20.b		; A0 20
	cpy #$00.b		; C0 00
	bvs  16.b		; 70 10
	clv		; B8
	dey		; 88
	jmp $202C44.l		; 5C 44 2C 20
	brk $08.b		; 00 08
	php		; 08
	jsl $3E081C.l		; 22 1C 08 3E
	eor $081C.w,X		; 5D 1C 08
	php		; 08
	jsl $000800.l		; 22 00 08 00
	brk $08.b		; 00 08
	brk $2A.b		; 00 2A
	php		; 08
	trb $7F14.w		; 1C 14 7F
	rol A		; 2A
	trb $2A14.w		; 1C 14 2A
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpy #$C0.b		; C0 C0
	cpx #$C0.b		; E0 C0
	ldy #$80.b		; A0 80
	cpx #$80.b		; E0 80
	rti		; 40

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpx #$20.b		; E0 20
	cpx #$00.b		; E0 00
	cpx #$60.b		; E0 60
	cpy #$00.b		; C0 00
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $11.b		; 04 11
	asl $1F04.w		; 0E 04 1F
	rol $040E.w		; 2E 0E 04
	tsb $11.b		; 04 11
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $04.b,X		; 15 04
	asl $3F0A.w		; 0E 0A 3F
	ora $0E.b,X		; 15 0E
	asl A		; 0A
	ora $04.b,X		; 15 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B0.b		; 00 B0
	bcs  -7.b		; B0 F9
	bpl  -7.b		; 10 F9
	lda ($50.b,X)		; A1 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs   0.b		; B0 00
	ora ($00.b),Y		; 11 00
	lda ($A1.b,X)		; A1 A1
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	cop $07.b		; 02 07
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	bpl  16.b		; 10 10
	sec		; 38
	sec		; 38
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	cop $00.b		; 02 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	sec		; 38
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	beq  32.b		; F0 20
	beq  64.b		; F0 40
	ldy #$00.b		; A0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	rti		; 40

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
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $1B.b		; 00 1B
	tas		; 1B
	and $0A3F11.l,X		; 3F 11 3F 0A
	ora $00.b,X		; 15 00
	ora $000400.l		; 0F 00 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1B.b		; 00 1B
	bpl  17.b		; 10 11
	brk $0A.b		; 00 0A
	asl A		; 0A
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	jsr $7088.w		; 20 88 70
	jsr $74F8.w		; 20 F8 74
	bvs  32.b		; 70 20
	jsr $0088.w		; 20 88 00
	jsr $0000.w		; 20 00 00
	jsr $A800.w		; 20 00 A8
	jsr $5070.w		; 20 70 50
	jsr ($70A8.w,X)		; FC A8 70
	bvc -88.b		; 50 A8
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $6F.b		; 00 6F
	ora ($3F.b,X)		; 01 3F
	ora $7F193F.l		; 0F 3F 19 7F
	bit $007F.w		; 2C 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2F.b		; 00 2F
	brk $1F.b		; 00 1F
	brk $3B.b		; 00 3B
	brk $3D.b		; 00 3D
	brk $00.b		; 00 00
	rts		; 60

	brk $93.b		; 00 93
	brk $FC.b		; 00 FC
	bmi  -2.b		; 30 FE
	jsr ($64FF.w,X)		; FC FF 64
	sbc $8AFF12.l,X		; FF 12 FF 8A
	sbc $600000.l,X		; FF 00 00 60
	rts		; 60

	ora $03.b,S		; 03 03
	sbc $FC01.w,Y		; F9 01 FC
	brk $FE.b		; 00 FE
	brk $77.b		; 00 77
	brk $9B.b		; 00 9B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $B0.b		; 00 B0
	brk $B8.b		; 00 B8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bvc  80.b		; 50 50
	bvc  64.b		; 50 40
	brk $18.b		; 00 18
	ora [$17.b]		; 07 17
	php		; 08
	plp		; 28
	ora [$37.b]		; 07 37
	tsb $2C.b		; 04 2C
	brk $29.b		; 00 29
	ora $01.b,S		; 03 01
	asl $14.b		; 06 14
	brk $07.b		; 00 07
	asl $0F.b		; 06 0F
	brk $1F.b		; 00 1F
	cop $1F.b		; 02 1F
	brk $1F.b		; 00 1F
	ora $1D.b,S		; 03 1D
	asl $18.b		; 06 18
	ora $08.b,S		; 03 08
	ora $CC.b,S		; 03 CC
	cmp ($3E.b,X)		; C1 3E
	rts		; 60

	sta $7F20FF.l,X		; 9F FF 20 7F
	ldy #$60.b		; A0 60
	bra  97.b		; 80 61
	bra  35.b		; 80 23
	cpy #$3B.b		; C0 3B
	bmi  61.b		; 30 3D
	bmi  30.b		; 30 1E
	tya		; 98
	brk $20.b		; 00 20
	brk $BF.b		; 00 BF
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	bra -100.b		; 80 9C
	brk $1B.b		; 00 1B
	tas		; 1B
	and $0A3F11.l,X		; 3F 11 3F 0A
	ora $40.b,X		; 15 40
	eor $40E5E0.l		; 4F E0 E5 40
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	brk $1B.b		; 00 1B
	bpl  17.b		; 10 11
	brk $0A.b		; 00 0A
	asl A		; 0A
	mvp $E0,$00		; 44 00 E0
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $10.b		; 00 10
	jmp ($F830.w,X)		; 7C 30 F8
	bmi  -8.b		; 30 F8
	cpy #$B0.b		; C0 B0
	cpy #$B0.b		; C0 B0
	cpy #$30.b		; C0 30
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	cpx #$60.b		; E0 60
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($0A.b,X)		; 01 0A
	ora #$0902.w		; 09 02 09
	rol A		; 2A
	ora $7F0A.w,X		; 1D 0A 7F
	ldx $0A1C.w,Y		; BE 1C 0A
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	phd		; 0B
	cop $0B.b		; 02 0B
	asl A		; 0A
	pld		; 2B
	brk $1F.b		; 00 1F
	asl $5DFF.w,X		; 1E FF 5D
	ora $10C01E.l,X		; 1F 1E C0 10
	cpx #$20.b		; E0 20
	cpy #$20.b		; C0 20
	bra  32.b		; 80 20
	cpy #$60.b		; C0 60
	bra  64.b		; 80 40
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	tya		; 98
	cpx $40.b		; E4 40
	jsr ($FF60.w,X)		; FC 60 FF
	tad		; 5B
	sbc $0ABF51.l,X		; FF 51 BF 0A
	adc $00.b,X		; 75 00
	asl $0400.w		; 0E 00 04
	clv		; B8
	jsr $2060.w		; 20 60 20
	rts		; 60

	brk $5B.b		; 00 5B
	bpl  81.b		; 10 51
	rti		; 40

	asl A		; 0A
	asl A		; 0A
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $1B.b		; 00 1B
	tas		; 1B
	and $103F11.l,X		; 3F 11 3F 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1B.b		; 00 1B
	bpl  17.b		; 10 11
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	ora $020F04.l		; 0F 04 0F 02
	ora $00.b		; 05 00
	eor $40.b,S		; 43 40
	ora ($E0.b),Y		; 11 E0
	rti		; 40

	beq -24.b		; F0 E8
	brk $00.b		; 00 00
	asl $04.b		; 06 04
	tsb $00.b		; 04 00
	cop $02.b		; 02 02
	eor ($00.b,X)		; 41 00
	bvc  64.b		; 50 40
	cpx #$A0.b		; E0 A0
	sed		; F8
	bvc   0.b		; 50 00
	cpy #$C0.b		; C0 C0
	cpx #$40.b		; E0 40
	cpx #$80.b		; E0 80
	rti		; 40

	brk $80.b		; 00 80
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $03.b		; 00 03
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	phd		; 0B
	ora [$02.b]		; 07 02
	ora $02072F.l,X		; 1F 2F 07 02
	cop $0A.b		; 02 0A
	cop $00.b		; 02 00
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	asl A		; 0A
	brk $07.b		; 00 07
	ora [$3F.b]		; 07 3F
	ora [$07.b],Y		; 17 07
	ora [$0A.b]		; 07 0A
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cld		; D8
	cli		; 58
	jsr ($FC88.w,X)		; FC 88 FC
	bne -88.b		; D0 A8
	brk $70.b		; 00 70
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cld		; D8
	brk $88.b		; 00 88
	brk $F0.b		; 00 F0
	bvc  32.b		; 50 20
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
	brk $24.b		; 00 24
	tsa		; 3B
	phd		; 0B
	bvs   7.b		; 70 07
	sec		; 38
	cop $1C.b		; 02 1C
	ora $0E.b,S		; 03 0E
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	brk $1F.b		; 00 1F
	plp		; 28
	cop $01.b		; 02 01
	tsb $11.b		; 04 11
	cop $09.b		; 02 09
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $0D.b		; 02 0D
	brk $0E.b		; 00 0E
	asl $8F73.w		; 0E 73 8F
	pha		; 48
	ora $76.b,X		; 15 76
	ora $25D6.w,X		; 1D D6 25
	pea $6807.w		; F4 07 68
	ora $2719D2.l		; 0F D2 19 27
	bmi  11.b		; 30 0B
	brk $83.b		; 00 83
	bmi -109.b		; 30 93
	eor ($9B.b),Y		; 51 9B
	and ($FA.b,X)		; 21 FA
	cop $F0.b		; 02 F0
	bra -18.b		; 80 EE
	tsb $18DF.w		; 0C DF 18
	bpl -88.b		; 10 A8
	bpl -68.b		; 10 BC
	sec		; 38
	pei ($08.b)		; D4 08
	cpy $10.b		; C4 10
	pea $F808.w		; F4 08 F8
	brk $F8.b		; 00 F8
	trb $CA.b		; 14 CA
	cli		; 58
	cli		; 58
	cli		; 58
	rti		; 40

	ldy $CCAC.w,X		; BC AC CC
	sei		; 78
	cpy $38.b		; C4 38
	cpx #$3C.b		; E0 3C
	rts		; 60

	bit $2044.w		; 2C 44 20
	ora $1C.b,S		; 03 1C
	tas		; 1B
	rol $7E31.w,X		; 3E 31 7E
	jsr $017F.w		; 20 7F 01
	rol $3F00.w,X		; 3E 00 3F
	brk $1F.b		; 00 1F
	ora ($1E.b,X)		; 01 1E
	ora [$04.b]		; 07 04
	ora $3B00.w,Y		; 19 00 3B
	cop $38.b		; 02 38
	brk $15.b		; 00 15
	ora ($14.b,X)		; 01 14
	brk $0C.b		; 00 0C
	brk $0D.b		; 00 0D
	ora ($A7.b,X)		; 01 A7
	cmp ($1F.b,X)		; C1 1F
	adc ($1B.b,X)		; 61 1B
	sbc ($C7.b,X)		; E1 C7
	and ($06.b,S),Y		; 33 06
	stx $74.b		; 86 74
	sbc $78.b,X		; F5 78
	xce		; FB
	bit $017D.w,X		; 3C 7D 01
	ora $0581.w,Y		; 19 81 05
	ora ($0D.b,X)		; 01 0D
	cmp $CB.b,S		; C3 CB
	asl $7F.b		; 06 7F
	stz $FE.b,X		; 74 FE
	and $1CFC.w,Y		; 39 FC 1C
	inc $0000.w,X		; FE 00 00
	brk $11.b		; 00 11
	bpl  69.b		; 10 45
	sec		; 38
	bpl 124.b		; 10 7C
	tsx		; BA
	sec		; 38
	bpl  16.b		; 10 10
	mvp $10,$00		; 44 00 10
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	mvn $38,$10		; 54 10 38
	plp		; 28
	inc $3854.w,X		; FE 54 38
	plp		; 28
	mvn $10,$10		; 54 10 10
	brk $00.b		; 00 00
	cld		; D8
	cld		; D8
	jsr ($FC88.w,X)		; FC 88 FC
	bvc -88.b		; 50 A8
	brk $70.b		; 00 70
	ora ($21.b,X)		; 01 21
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	brk $00.b		; 00 00
	cld		; D8
	bra -120.b		; 80 88
	brk $50.b		; 00 50
	bvc  32.b		; 50 20
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $08.b		; 02 08
	and $020708.l		; 2F 08 07 02
	ora $000502.l		; 0F 02 05 00
	ora $860906.l		; 0F 06 09 86
	sbc ($6E.b,X)		; E1 6E
	sbc $012B.w,Y		; F9 2B 01
	php		; 08
	php		; 08
	phd		; 0B
	ora ($03.b,X)		; 01 03
	ora $00.b,S		; 03 00
	brk $06.b		; 00 06
	brk $8E.b		; 00 8E
	brk $66.b		; 00 66
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   4.b		; 80 04
	tsb $0E.b		; 04 0E
	asl $8080.w		; 0E 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	asl $0004.w		; 0E 04 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	mvp $10,$38		; 44 38 10
	jmp ($38BA.w,X)		; 7C BA 38
	bpl  16.b		; 10 10
	mvp $10,$00		; 44 00 10
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	mvn $38,$10		; 54 10 38
	plp		; 28
	inc $3854.w,X		; FE 54 38
	plp		; 28
	mvn $10,$10		; 54 10 10
	brk $0A.b		; 00 0A
	ora $00.b,X		; 15 00
	asl $0400.w		; 0E 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	asl A		; 0A
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $11.b		; 04 11
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $0D.b		; 00 0D
	ora $081F.w		; 0D 1F 08
	ora $040415.l,X		; 1F 15 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $0D.b		; 00 0D
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tas		; 1B
	tas		; 1B
	and $0A3F11.l,X		; 3F 11 3F 0A
	ora $00.b,X		; 15 00
	stx $C480.w		; 8E 80 C4
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tas		; 1B
	bpl  17.b		; 10 11
	brk $0A.b		; 00 0A
	asl A		; 0A
	tsb $00.b		; 04 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $36.b		; 00 36
	rol $7F.b,X		; 36 7F
	jsl $2A147F.l		; 22 7F 14 2A
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	rti		; 40

	rti		; 40

	bvc  64.b		; 50 40
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$E0.b		; E0 E0
	bvc   0.b		; 50 00
	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $16.b		; 00 16
	bmi  31.b		; 30 1F
	adc ($2C.b),Y		; 71 2C
	adc ($2A.b,X)		; 61 2A
	adc $24.b,S		; 63 24
	adc [$38.b]		; 67 38
	dec $C63C.w		; CE 3C C6
	bmi -60.b		; 30 C4
	and $202E20.l		; 2F 20 2E 20
	ora $405C01.l,X		; 1F 01 5C 40
	phy		; 5A
	.db $42, $70		; 42 70
	rti		; 40

	sei		; 78
	rti		; 40

	jmp ($0744.w,X)		; 7C 44 07
	sty $06.b		; 84 06
	sta $8C07.w		; 8D 07 8C
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
	sec		; 38
	ora ($11.b),Y		; 11 11
	eor [$01.b]		; 47 01
	ora ($00.b,S),Y		; 13 00
	ora ($00.b,X)		; 01 00
	tsb $04.b		; 04 04
	brk $04.b		; 00 04
	ora $0E.b,X		; 15 0E
	tsb $38.b		; 04 38
	plp		; 28
	eor $11.b,X		; 55 11
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	tsb $04.b		; 04 04
	ora $00.b,X		; 15 00
	asl $000E.w		; 0E 0E 00
	bcs -80.b		; B0 B0
	sed		; F8
	bpl  -8.b		; 10 F8
	ldy #$50.b		; A0 50
	ora ($E1.b,X)		; 01 E1
	ora $43.b,S		; 03 43
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs   0.b		; B0 00
	bpl   0.b		; 10 00
	ldy #$A0.b		; A0 A0
	eor ($00.b,X)		; 41 00
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $020E01.l		; 0F 01 0E 02
	ora $0F00.w		; 0D 00 0F
	tsb $1F.b		; 04 1F
	tsb $1F.b		; 04 1F
	asl A		; 0A
	tas		; 1B
	ora $0619.w		; 0D 19 06
	brk $05.b		; 00 05
	ora ($0B.b,X)		; 01 0B
	asl A		; 0A
	phd		; 0B
	php		; 08
	ora #$0808.w		; 09 08 08
	php		; 08
	tsb $00.b		; 04 00
	asl $10.b,X		; 16 10
	sta [$6F.b]		; 87 6F
	ora ($E7.b,S),Y		; 13 E7
	ora ($EB.b),Y		; 11 EB
	bit $D9.b		; 24 D9
	mvp $88,$BA		; 44 BA 88
	adc [$88.b],Y		; 77 88
	adc [$08.b],Y		; 77 08
	sbc [$C3.b],Y		; F7 C3
	sta $D81FD1.l,X		; 9F D1 1F D8
	ora [$B4.b],Y		; 17 B4
	and [$76.b]		; 27 76
	eor $EE.b		; 45 EE
	dey		; 88
	inc $6888.w		; EE 88 68
	php		; 08
	.db $82, $BD, $80		; 82 BD 80
	cmp [$F8.b]		; C7 F8
	xce		; FB
	jsr ($7CF8.w,X)		; FC F8 7C
	beq  56.b		; F0 38
	jsr $8010.w		; 20 10 80
	brk $E0.b		; 00 E0
	lda ($C2.b,S),Y		; B3 C2
	sta $F9.b,S		; 83 F9
	plx		; FA
	inc $FE30.w,X		; FE 30 FE
	jsr $00FE.w		; 20 FE 00
	jsr ($7880.w,X)		; FC 80 78
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0020.w		; 20 20 00
	jsr $70A8.w		; 20 A8 70
	jsr $FAFC.w		; 20 FC FA
	bvs  32.b		; 70 20
	jsr $00A8.w		; 20 A8 00
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	jsr $00A8.w		; 20 A8 00
	bvs 112.b		; 70 70
	inc $7074.w,X		; FE 74 70
	bvs -88.b		; 70 A8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($20.b,X)		; 01 20
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	cpx #$E0.b		; E0 E0
	jsr $2020.w		; 20 20 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $E0.b		; 00 E0
	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	cop $0A.b		; 02 0A
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	cop $0A.b		; 02 0A
	brk $05.b		; 00 05
	txa		; 8A
	bra -57.b		; 80 C7
	.db $82, $C8, $07		; 82 C8 07
	.db $82, $0F, $17		; 82 0F 17
	ora [$02.b]		; 07 02
	cop $08.b		; 02 08
	brk $02.b		; 00 02
	ora $05.b		; 05 05
	.db $82, $00, $8A		; 82 00 8A
	cop $07.b		; 02 07
	ora $1F.b		; 05 1F
	asl A		; 0A
	ora [$05.b]		; 07 05
	asl A		; 0A
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	rti		; 40

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra  13.b		; 80 0D
	sta $C8BF.w		; 8D BF C8
	sta $C0EAF5.l,X		; 9F F5 EA C0
	sta [$80.b]		; 87 80
	ldx #$80.b		; A2 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -83.b		; 80 AD
	php		; 08
	iny		; C8
	cpy #$FD.b		; C0 FD
	cmp $C2.b,X		; D5 C2
	cpy #$A0.b		; C0 A0
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	sta ($81.b,X)		; 81 81
	cpy #$81.b		; C0 81
	cmp $03.b		; C5 03
	sta ($0F.b,X)		; 81 0F
	ora [$03.b],Y		; 17 03
	ora ($01.b,X)		; 01 01
	ora $01.b		; 05 01
	cop $01.b		; 02 01
	brk $81.b		; 00 81
	ora ($85.b,X)		; 01 85
	brk $03.b		; 00 03
	ora $1F.b,S		; 03 1F
	phd		; 0B
	ora $03.b,S		; 03 03
	ora $00.b		; 05 00
	ora ($01.b,X)		; 01 01
	sei		; 78
	cpy $C860.w		; CC 60 C8
	bmi -40.b		; 30 D8
	bra  80.b		; 80 50
	cpx #$D0.b		; E0 D0
	bra 112.b		; 80 70
	ldy #$50.b		; A0 50
	rti		; 40

	bcs  48.b		; B0 30
	brk $38.b		; 00 38
	php		; 08
	rts		; 60

	brk $F0.b		; 00 F0
	bne -16.b		; D0 F0
	ldy #$80.b		; A0 80
	bra -32.b		; 80 E0
	ldy #$40.b		; A0 40
	rti		; 40

	ora $0C.b,S		; 03 0C
	tsb $0C.b		; 04 0C
	ora ($08.b,X)		; 01 08
	phd		; 0B
	clc		; 18
	eor [$50.b]		; 47 50
	sbc [$F0.b]		; E7 F0
	eor $100F50.l		; 4F 50 0F 10
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $000708.l		; 0F 08 07 00
	eor $50FF00.l		; 4F 00 FF 50
	eor $101F10.l,X		; 5F 10 1F 10
	and $050E5F.l,X		; 3F 5F 0E 05
	tsb $15.b		; 04 15
	tsb $00.b		; 04 00
	rti		; 40

	mvp $E0,$E0		; 44 E0 E0
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	adc $0E0E2E.l,X		; 7F 2E 0E 0E
	ora $00.b,X		; 15 00
	tsb $04.b		; 04 04
	mvp $E0,$00		; 44 00 E0
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cli		; 58
	cld		; D8
	jsr ($FC88.w,X)		; FC 88 FC
	bvc -88.b		; 50 A8
	brk $70.b		; 00 70
	brk $22.b		; 00 22
	ora ($00.b,X)		; 01 00
	ora [$0B.b]		; 07 0B
	cpy #$80.b		; C0 80
	cld		; D8
	bra -120.b		; 80 88
	brk $50.b		; 00 50
	bvc  32.b		; 50 20
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	ora ($0F.b,X)		; 01 0F
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	ldy #$C0.b		; A0 C0
	bra -16.b		; 80 F0
	inx		; E8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	ldy #$00.b		; A0 00
	cpy #$C0.b		; C0 C0
	sed		; F8
	bne   6.b		; D0 06
	bpl   7.b		; 10 07
	bpl   7.b		; 10 07
	bmi   7.b		; 30 07
	bmi  30.b		; 30 1E
	bmi  14.b		; 30 0E
	jsr $610F.w		; 20 0F 61
	bit $1F61.w		; 2C 61 1F
	bpl  31.b		; 10 1F
	bpl  31.b		; 10 1F
	bpl  31.b		; 10 1F
	bpl  15.b		; 10 0F
	brk $3F.b		; 00 3F
	jsr $203E.w		; 20 3E 20
	ora $FC8001.l,X		; 1F 01 80 FC
	phb		; 8B
	sed		; F8
	phb		; 8B
	sed		; F8
	phb		; 8B
	cld		; D8
	phb		; 8B
	iny		; C8
	phd		; 0B
	dey		; 88
	ora $880F88.l		; 0F 88 0F 88
	and $00.b,S		; 23 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	sta [$80.b]		; 87 80
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	jsr $2040.w		; 20 40 20
	inx		; E8
	jsr $0000.w		; 20 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	rti		; 40

	cpx #$40.b		; E0 40
	cpx #$60.b		; E0 60
	inx		; E8
	rti		; 40

	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$E0.b		; C0 E0
	rti		; 40

	cpx #$00.b		; E0 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc  80.b		; 50 50
	sed		; F8
	bvc -88.b		; 50 A8
	brk $70.b		; 00 70
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc   0.b		; 50 00
	bvc  80.b		; 50 50
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	ora $000A05.l,X		; 1F 05 0A 00
	ora [$00.b]		; 07 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $05.b		; 00 05
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
.ACCU 16
	rep #$6E		; C2 6E
	sta ($CF.b,X)		; 81 CF
	tsb $8A.b		; 04 8A
	ora [$88.b]		; 07 88
	sta [$F8.b]		; 87 F8
	sta [$70.b]		; 87 70
	sta $440ED0.l		; 8F D0 0E 44
	bpl   6.b		; 10 06
	bmi   3.b		; 30 03
	bvs   4.b		; 70 04
	stz $85.b,X		; 74 85
	stz $83.b,X		; 74 83
	brk $82.b		; 00 82
	jsr $6100.w		; 20 00 61
	trb $7F08.w		; 1C 08 7F
	ldx $081C.w,Y		; BE 1C 08
	php		; 08
	rol A		; 2A
	php		; 08
	brk $00.b		; 00 00
	ora $9F0D.w		; 0D 0D 9F
	php		; 08
	sta $FF1C1C.l,X		; 9F 1C 1C FF
	eor $1C1C.w,X		; 5D 1C 1C
	rol A		; 2A
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	brk $0D.b		; 00 0D
	php		; 08
	php		; 08
	brk $05.b		; 00 05
	asl A		; 0A
	brk $07.b		; 00 07
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $05.b		; 05 05
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc  14.b		; 90 0E
	pei ($0A.b)		; D4 0A
	ldx $0E51.w		; AE 51 0E
	sbc $ED1E.w,X		; FD 1E ED
	asl $0EED.w,X		; 1E ED 0E
	sbc $FB0C.w,X		; FD 0C FB
	tsb $65.b		; 04 65
	asl $0F27.w		; 0E 27 0F
	ora $BF021F.l		; 0F 1F 02 BF
	ora ($DF.b)		; 12 DF
	ora ($6F.b)		; 12 6F
	ora $AE.b,S		; 03 AE
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	brk $07.b		; 00 07
	phd		; 0B
	ora ($00.b,X)		; 01 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora ($01.b,X)		; 01 01
	ora $010105.l		; 0F 05 01 01
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	cpx #$D0.b		; E0 D0
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $80.b		; 00 80
	bra -16.b		; 80 F0
	ldy #$80.b		; A0 80
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  80.b		; 80 50
	rts		; 60

	pea $FEF8.w		; F4 F8 FE
	sbc $01FF7F.l,X		; FF 7F FF 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rts		; 60

	brk $F8.b		; 00 F8
	rts		; 60

	inc $FF7C.w,X		; FE 7C FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	bra -12.b		; 80 F4
	sed		; F8
	iny		; C8
	jsr ($7C6C.w,X)		; FC 6C 7C
	bit $24.b		; 24 24
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	bvs  -4.b		; 70 FC
	pha		; 48
	jsr ($FC2C.w,X)		; FC 2C FC
	tsb $7C.b		; 04 7C
	brk $34.b		; 00 34
	sed		; F8
	bpl  -2.b		; 10 FE
	adc $10F8.w,X		; 7D F8 10
	bcc 116.b		; 90 74
	bne  32.b		; D0 20
	cpy #$30.b		; C0 30
	bra  96.b		; 80 60
	bra  96.b		; 80 60
	sed		; F8
	sec		; 38
	sbc $38F8BA.l,X		; FF BA F8 38
	pea $D020.w		; F4 20 D0
	bpl -48.b		; 10 D0
	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$40.b		; C0 40
	bra  96.b		; 80 60
	brk $41.b		; 00 41
	ora ($40.b,X)		; 01 40
	ora ($45.b,X)		; 01 45
	ora $41.b,S		; 03 41
	sta $810397.l		; 8F 97 03 81
	ora ($85.b,X)		; 01 85
	cpy #$40.b		; C0 40
	cmp ($40.b,X)		; C1 40
	cmp ($41.b,X)		; C1 41
	sta $00.b		; 85 00
	sta $03.b,S		; 83 03
	ora $83830B.l,X		; 1F 0B 83 83
	ora $00.b		; 05 00
	brk $6C.b		; 00 6C
	jmp ($44FE.w)		; 6C FE 44
	inc $5428.w,X		; FE 28 54
	brk $38.b		; 00 38
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($4440.w)		; 6C 40 44
	brk $28.b		; 00 28
	plp		; 28
	bpl   0.b		; 10 00
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
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($04.b,X)		; 01 04
	ora $01.b,S		; 03 01
	ora [$0B.b]		; 07 0B
	ora $01.b,S		; 03 01
	ora ($04.b,X)		; 01 04
	brk $01.b		; 00 01
	brk $80.b		; 00 80
	ora ($00.b,X)		; 01 00
	ora $01.b		; 05 01
	ora $02.b,S		; 03 02
	ora $020305.l		; 0F 05 03 02
	ora $01.b		; 05 01
	ora ($00.b,X)		; 01 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora ($41.b,X)		; 01 41
	sta $03.b,S		; 83 03
	cmp ($A1.b,X)		; C1 A1
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	brk $06.b		; 00 06
	asl $0F.b		; 06 0F
	brk $00.b		; 00 00
	eor ($00.b,X)		; 41 00
	sta $81.b,S		; 83 81
	sbc ($40.b,X)		; E1 40
	bra -128.b		; 80 80
	rti		; 40

	brk $00.b		; 00 00
	brk $06.b		; 00 06
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	asl $07.b		; 06 07
	tas		; 1B
	ora $6D1E36.l		; 0F 36 1E 6D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora $191F0C.l		; 0F 0C 1F 19
	and $350A32.l,X		; 3F 32 0A 35
	trb $6B.b		; 14 6B
	plp		; 28
	cmp [$DE.b],Y		; D7 DE
	and $84BDDC.l		; 2F DC BD 84
	ror $09.b		; 66 09
	sbc ($19.b)		; F2 19
	cpx #$1C.b		; E0 1C
	clc		; 18
	and $7331.w,Y		; 39 31 73
	.db $62, $EC, $CE		; 62 EC CE
	sed		; F8
	adc $D89FC0.l,X		; 7F C0 9F D8
	lsr $BC.b,X		; 56 BC
	ldx #$44.b		; A2 44
	ldy $D330.w		; AC 30 D3
	php		; 08
	sbc $00F902.l,X		; FF 02 F9 00
	sbc $1EE1.w,X		; FD E1 1E
	sbc $001E00.l,X		; FF 00 1E 00
	tsa		; 3B
	sec		; 38
	cpy $E60C.w		; CC 0C E6
	asl $F6.b		; 06 F6
	bra 122.b		; 80 7A
	rti		; 40

	trb $0000.w		; 1C 00 00
	sbc ($00.b,X)		; E1 00
	xce		; FB
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	cpy #$00.b		; C0 00
	cmp ($01.b,X)		; C1 01
	eor ($01.b,X)		; 41 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	brk $01.b		; 00 01
	ora ($83.b,X)		; 01 83
	brk $83.b		; 00 83
	bpl -104.b		; 10 98
	php		; 08
	cpx $BE4C.w		; EC 4C BE
	rts		; 60

	sta $0FFF02.l,X		; 9F 02 FF 0F
	brk $0A.b		; 00 0A
	ora $60150A.l,X		; 1F 0A 15 60
	brk $10.b		; 00 10
	brk $60.b		; 00 60
	rti		; 40

	bvs  96.b		; 70 60
	ora $000000.l		; 0F 00 00 00
	asl A		; 0A
	brk $0A.b		; 00 0A
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	dey		; 88
	stz $081C.w		; 9C 1C 08
	plp		; 28
	plp		; 28
	adc $0000.w,X		; 7D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $1C.b		; 00 1C
	php		; 08
	php		; 08
	brk $28.b		; 00 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FDD8.w,Y		; F9 D8 FD
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $D800.w		; 20 00 D8
	bra  56.b		; 80 38
	bpl 124.b		; 10 7C
	tsx		; BA
	sec		; 38
	bpl  16.b		; 10 10
	eor $00.b		; 45 00
	ora ($00.b),Y		; 11 00
	cld		; D8
	cld		; D8
	jsr ($FC88.w,X)		; FC 88 FC
	sec		; 38
	plp		; 28
	inc $3854.w,X		; FE 54 38
	plp		; 28
	mvn $10,$10		; 54 10 10
	brk $00.b		; 00 00
	brk $D8.b		; 00 D8
	bra -120.b		; 80 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000800.l		; 0F 00 08 00
	ora #$0B00.w		; 09 00 0B
	brk $1B.b		; 00 1B
	ora ($23.b,X)		; 01 23
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	asl $06.b		; 06 06
	tsb $04.b		; 04 04
	ora $04.b		; 05 04
	ora $00001C.l,X		; 1F 1C 00 00
	brk $18.b		; 00 18
	brk $24.b		; 00 24
	brk $FE.b		; 00 FE
	bmi  -1.b		; 30 FF
	inc $9BFF.w,X		; FE FF 9B
	sbc $00FF22.l,X		; FF 22 FF 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	brk $00.b		; 00 00
	jmp ($FF00.w,X)		; 7C 00 FF
	brk $FF.b		; 00 FF
	brk $BB.b		; 00 BB
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
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	php		; 08
	brk $36.b		; 00 36
	rol $7F.b,X		; 36 7F
	jsl $2A147F.l		; 22 7F 14 2A
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $20.b,X		; 36 20
	jsl $141400.l		; 22 00 14 14
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ora $0E.b,X		; 15 0E
	tsb $3F.b		; 04 3F
	eor $04040E.l,X		; 5F 0E 04 04
	ora $04.b,X		; 15 04
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $15.b		; 00 15
	brk $0E.b		; 00 0E
	asl $2E7F.w		; 0E 7F 2E
	asl $150E.w		; 0E 0E 15
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora $05.b,S		; 03 05
	ora $05.b,S		; 03 05
	ora $05.b,S		; 03 05
	ora $05.b,S		; 03 05
	ora $05.b,S		; 03 05
	ora $03.b,S		; 03 03
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $02.b,S		; 03 02
	ora [$06.b]		; 07 06
	ora [$06.b]		; 07 06
	ora [$06.b]		; 07 06
	ora [$06.b]		; 07 06
	iny		; C8
	lda [$C8.b],Y		; B7 C8
	lda [$98.b],Y		; B7 98
	sbc $B8CFB9.l		; EF B9 CF B8
	cmp $B8DFB8.l,X		; DF B8 DF B8
	cmp $FEFFB8.l,X		; DF B8 FF FE
	ror A		; 6A
	sbc $12FE6B.l,X		; FF 6B FE 12
	sbc $FE30.w,X		; FD 30 FE
	jsl $FF21FF.l		; 22 FF 21 FF
	and ($FF.b,X)		; 21 FF
	brk $3C.b		; 00 3C
	stp		; DB
	sei		; 78
	lda [$F0.b],Y		; B7 F0
	adc $C1DFE0.l		; 6F E0 DF C1
	ldx $7E81.w,Y		; BE 81 7E
	bra 127.b		; 80 7F
	brk $FF.b		; 00 FF
	adc $CBFF65.l,X		; 7F 65 FF CB
	inc $FE96.w,X		; FE 96 FE
	rol $59FD.w		; 2E FD 59
	sbc $FDB1.w,X		; FD B1 FD
	cpx $F8.b		; E4 F8
	pha		; 48
	and ($C6.b),Y		; 31 C6
	adc $8E.b,S		; 63 8E
	ora [$DB.b]		; 07 DB
	tya		; 98
	eor [$3F.b]		; 47 3F
	lda $3F7F7F.l,X		; BF 7F 7F 3F
	ror $3844.w,X		; 7E 44 38
	ldy $7886.w,X		; BC 86 78
	asl A		; 0A
	bvs  87.b		; 70 57
	bra -65.b		; 80 BF
	lda $FF3F7F.l,X		; BF 7F 3F FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	tsb $04.b		; 04 04
	tsa		; 3B
	tsb $F8.b		; 04 F8
	sec		; 38
	xce		; FB
	sec		; 38
	sbc $7AF8.w,Y		; F9 F8 7A
	beq   1.b		; F0 01
	brk $F0.b		; 00 F0
	beq   4.b		; F0 04
	xce		; FB
	tsb $C0.b		; 04 C0
	bpl  63.b		; 10 3F
	bmi  -4.b		; 30 FC
	bvs  -1.b		; 70 FF
	brk $FD.b		; 00 FD
	brk $F8.b		; 00 F8
	rts		; 60

	sed		; F8
	eor ($01.b,X)		; 41 01
	cpy #$01.b		; C0 01
	sta [$6F.b]		; 87 6F
	asl $BDFF.w,X		; 1E FF BD
	rol $BC38.w,X		; 3E 38 BC
	sec		; 38
	bcs   0.b		; B0 00
	cpy #$01.b		; C0 01
	sta $00.b,S		; 83 00
	ora [$02.b]		; 07 02
	ora $B83F4C.l,X		; 1F 4C 3F B8
	sbc $007EB0.l,X		; FF B0 7E 00
	jmp ($3800.w,X)		; 7C 00 38
	php		; 08
	asl $0400.w		; 0E 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $28.b		; 00 28
	eor $20.b,X		; 55 20
	sec		; 38
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plp		; 28
	plp		; 28
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
	jsr ($A850.w,X)		; FC 50 A8
	brk $70.b		; 00 70
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
	brk $50.b		; 00 50
	bvc  32.b		; 50 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	tay		; A8
	brk $70.b		; 00 70
	brk $20.b		; 00 20
	tsb $04.b		; 04 04
	asl $040E.w		; 0E 0E 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	bvc  32.b		; 50 20
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $0E.b		; 00 0E
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	eor [$01.b]		; 47 01
	and [$00.b]		; 27 00
	asl $01.b,X		; 16 01
	asl $1E01.w,X		; 1E 01 1E
	tsb $1833.w		; 0C 33 18
	and [$32.b]		; 27 32
	eor $383B.w		; 4D 3B 38
	tas		; 1B
	clc		; 18
	phd		; 0B
	php		; 08
	ora $02.b,S		; 03 02
	phd		; 0B
	asl A		; 0A
	ora $1A1E1F.l,X		; 1F 1F 1E 1A
	jmp ($4474.w,X)		; 7C 74 44
	sbc $4BC738.l,X		; FF 38 C7 4B
	ldy #$BB.b		; A0 BB
	cpx #$AD.b		; E0 AD
	bcc -65.b		; 90 BF
	sta ($58.b,X)		; 81 58
	cmp $2C.b,S		; C3 2C
	adc ($66.b,X)		; 61 66
	brk $40.b		; 00 40
	ora ($06.b,X)		; 01 06
	bmi  38.b		; 30 26
	and #$1066.w		; 29 66 10
	ror $3F00.w,X		; 7E 00 3F
	ora $DE.b		; 05 DE
	cpy #$08.b		; C0 08
	rol A		; 2A
	trb $7F09.w		; 1C 09 7F
	ldx $081C.w,Y		; BE 1C 08
	php		; 08
	rol A		; 2A
	php		; 08
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	rol A		; 2A
	brk $1C.b		; 00 1C
	trb $5DFF.w		; 1C FF 5D
	trb $2A1C.w		; 1C 1C 2A
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cld		; D8
	cld		; D8
	jsr ($FC08.w,X)		; FC 08 FC
	bvc -88.b		; 50 A8
	brk $70.b		; 00 70
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cld		; D8
	bra -120.b		; 80 88
	brk $50.b		; 00 50
	bvc  32.b		; 50 20
	brk $00.b		; 00 00
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora ($08.b,X)		; 01 08
	php		; 08
	trb $081C.w		; 1C 1C 08
	jmp ($FE6C.w)		; 6C 6C FE
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	php		; 08
	brk $1C.b		; 00 1C
	php		; 08
	php		; 08
	brk $6C.b		; 00 6C
	rti		; 40

	ora $05.b,S		; 03 05
	ora ($07.b,X)		; 01 07
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora $03.b,S		; 03 03
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	jsr ($FC3B.w,X)		; FC 3B FC
	tsa		; 3B
	inc $6E6D.w,X		; FE 6D 6E
	sbc $E67F.w,X		; FD 7F E6
	adc [$BA.b],Y		; 77 BA
	tsa		; 3B
	sbc $39.b,X		; F5 39
	ror $FF.b,X		; 76 FF
	cpy $FF.b		; C4 FF
	cpy $FF.b		; C4 FF
	sta ($FF.b)		; 92 FF
	cop $FF.b		; 02 FF
	ora $C5FF.w,Y		; 19 FF C5
	adc $4D7F0A.l,X		; 7F 0A 7F 4D
	sei		; 78
	cop $3E.b		; 02 3E
	sta $1C.b,S		; 83 1C
	cmp ($0F.b,X)		; C1 0F
	adc ($16.b,X)		; 61 16
	bmi  11.b		; 30 0B
	sec		; 38
	ora $1C.b		; 05 1C
	ora $0E.b,S		; 03 0E
	inc $FC02.w,X		; FE 02 FC
	bra 127.b		; 80 7F
	eor ($3E.b,X)		; 41 3E
	jsr $202F.w		; 20 2F 20
	ora [$10.b],Y		; 17 10
	phd		; 0B
	php		; 08
	ora $04.b		; 05 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	cpy #$00.b		; C0 00
	ldy $DC78.w,X		; BC 78 DC
	lda [$F8.b],Y		; B7 F8
	cmp $4AFD32.l		; CF 32 FD 4A
	lda $4A.b,X		; B5 4A
	lda $4A.b,X		; B5 4A
	lda $49.b,X		; B5 49
	ldx $18.b,Y		; B6 18
	inc $FC84.w,X		; FE 84 FC
	pha		; 48
	sed		; F8
	and ($32.b)		; 32 32
	lsr A		; 4A
	lsr A		; 4A
	rtl		; 6B

	lsr A		; 4A
	rtl		; 6B

	lsr A		; 4A
	adc $0049.w		; 6D 49 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	ldy #$40.b		; A0 40
	bcs  32.b		; B0 20
	cld		; D8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	rts		; 60

	rti		; 40

	bcs  32.b		; B0 20
	sta ($7C.b,X)		; 81 7C
	ora ($FC.b,X)		; 01 FC
	ora $F6.b,S		; 03 F6
	brk $E2.b		; 00 E2
	ora ($43.b,X)		; 01 43
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	sbc ($90.b,S),Y		; F3 90
	sbc ($10.b,S),Y		; F3 10
	sbc ($A0.b,X)		; E1 A0
	eor $42.b,S		; 43 42
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	cpx #$0B.b		; E0 0B
	cpx #$09.b		; E0 09
	cpx #$08.b		; E0 08
	beq   8.b		; F0 08
	beq   8.b		; F0 08
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	bvs   0.b		; 70 00
	sbc ($01.b),Y		; F1 01
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	cop $03.b		; 02 03
	cop $01.b		; 02 01
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	cop $01.b		; 02 01
	brk $03.b		; 00 03
	brk $4E.b		; 00 4E
	cmp ($1C.b,X)		; C1 1C
	.db $82, $B8, $80		; 82 B8 80
	bvs   4.b		; 70 04
	cpx #$08.b		; E0 08
	cpy #$10.b		; C0 10
	bra  32.b		; 80 20
	brk $40.b		; 00 40
	rol $FC00.w,X		; 3E 00 FC
	bra 124.b		; 80 7C
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $10.b		; 00 10
	sed		; F8
	ldy #$50.b		; A0 50
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	bpl   0.b		; 10 00
	ldy #$A0.b		; A0 A0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	beq -64.b		; F0 C0
	beq  96.b		; F0 60
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne   0.b		; D0 00
	cpx #$00.b		; E0 00
	bvs   0.b		; 70 00
	bne  -8.b		; D0 F8
	bcc 120.b		; 90 78
	rti		; 40

	bmi -128.b		; 30 80
	bvs   0.b		; 70 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $F0.b		; 00 F0
	brk $50.b		; 00 50
	brk $10.b		; 00 10
	bra  32.b		; 80 20
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	lsr $1C.b		; 46 1C
	lsr $18.b		; 46 18
	.db $42, $18		; 42 18
	.db $42, $3C		; 42 3C
	.db $62, $0C, $22		; 62 0C 22
	tsb $1422.w		; 0C 22 14
	and ($38.b)		; 32 38
	brk $78.b		; 00 78
	rti		; 40

	jmp ($3C40.w,X)		; 7C 40 3C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	jsr $021E.w		; 20 1E 02
	asl $0002.w		; 0E 02 00
	ora ($04.b)		; 12 04
	rol $00.b,X		; 36 00
	bit $3C00.w,X		; 3C 00 3C
	jsr $307C.w		; 20 7C 30
	jmp ($F800.w,X)		; 7C 00 F8
	bpl -40.b		; 10 D8
	trb $1810.w		; 1C 10 18
	bpl  24.b		; 10 18
	clc		; 18
	brk $00.b		; 00 00
	jsr $3800.w		; 20 00 38
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rti		; 40

	tsb $1424.w		; 0C 24 14
	bit $04.b,X		; 34 04
	rol $00.b,X		; 36 00
	rol $3E00.w,X		; 3E 00 3E
	brk $1E.b		; 00 1E
	php		; 08
	tas		; 1B
	php		; 08
	ora $2038.w,Y		; 19 38 20
	php		; 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $0E.b		; 04 0E
	asl $0404.w		; 0E 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	asl $0404.w		; 0E 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $15.b		; 00 15
	tsb $01.b		; 04 01
	tsb $0400.w		; 0C 00 04
	brk $04.b		; 00 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora $06.b,S		; 03 06
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	bra -96.b		; 80 A0
	cpy #$E0.b		; C0 E0
	rti		; 40

	rts		; 60

	bra  32.b		; 80 20
	cpy #$20.b		; C0 20
	cpx #$30.b		; E0 30
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	cpy #$00.b		; C0 00
	bit #$8976.w		; 89 76 89
	ror $84.b,X		; 76 84
	tda		; 7B
	sty $7B.b		; 84 7B
	sty $7B.b		; 84 7B
	tsb $FB.b		; 04 FB
	sbc $1E.b,S		; E3 1E
	beq  30.b		; F0 1E
	sbc $FD89.w		; ED 89 FD
	bit #$84F6.w		; 89 F6 84
	inc $84.b,X		; F6 84
	inc $84.b,X		; F6 84
	tsb $04.b		; 04 04
	sbc ($10.b),Y		; F1 10
	sbc $02.b,S		; E3 02
	jsr $00D8.w		; 20 D8 00
	beq -128.b		; F0 80
	rts		; 60

	bra  96.b		; 80 60
	brk $F0.b		; 00 F0
	cpy #$18.b		; C0 18
	cpx #$0C.b		; E0 0C
	beq   6.b		; F0 06
	ldy #$20.b		; A0 20
	cpy #$00.b		; C0 00
	cpy #$80.b		; C0 80
	bra -128.b		; 80 80
	rts		; 60

	rts		; 60

	beq  16.b		; F0 10
	sed		; F8
	php		; 08
	jsr ($0004.w,X)		; FC 04 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	asl $0C04.w		; 0E 04 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora $04.b		; 05 04
	phd		; 0B
	php		; 08
	beq -128.b		; F0 80
	bvs -124.b		; 70 84
	bmi -124.b		; 30 84
	bmi -124.b		; 30 84
	sei		; 78
	cpy $CC78.w		; CC 78 CC
	bcs -120.b		; B0 88
	rts		; 60

	bpl 120.b		; 10 78
	brk $F8.b		; 00 F8
	bra 120.b		; 80 78
	brk $F8.b		; 00 F8
	bra -80.b		; 80 B0
	bra -80.b		; 80 B0
	bra 112.b		; 80 70
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	bra   0.b		; 80 00
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
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	asl $01.b		; 06 01
	ora [$03.b]		; 07 03
	ora $0F03.w		; 0D 03 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora $03.b,S		; 03 03
	ora [$04.b]		; 07 04
	ora [$06.b]		; 07 06
	ora $040408.l		; 0F 08 04 04
	asl $040E.w		; 0E 0E 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	brk $04.b		; 00 04
	brk $0E.b		; 00 0E
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	bpl  12.b		; 10 0C
	rol $1C.b,X		; 36 1C
	rol $10.b,X		; 36 10
	rol $08.b,X		; 36 08
	ror $5C20.w,X		; 7E 20 5C
	plp		; 28
	jmp $707810.l		; 5C 10 78 70
	brk $18.b		; 00 18
	bpl   8.b		; 10 08
	brk $0C.b		; 00 0C
	tsb $10.b		; 04 10
	bpl  32.b		; 10 20
	jsr $2038.w		; 20 38 20
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $D8.b		; 00 D8
	cld		; D8
	jsr ($FC88.w,X)		; FC 88 FC
	bvc -88.b		; 50 A8
	brk $70.b		; 00 70
	ora ($21.b,X)		; 01 21
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cld		; D8
	bra -120.b		; 80 88
	brk $50.b		; 00 50
	bvc  32.b		; 50 20
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$E0.b		; C0 E0
	cpx #$C0.b		; E0 C0
	cpx #$20.b		; E0 20
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	cpx #$C0.b		; E0 C0
	cpx #$40.b		; E0 40
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra -128.b		; 80 80
	cpx #$01.b		; E0 01
	sbc $C9FFE0.l,X		; FF E0 FF C9
	inc $91.b,X		; F6 91
	inc $ED12.w		; EE 12 ED
	jsl $BB44DD.l		; 22 DD 44 BB
	cpy #$1F.b		; C0 1F
	brk $03.b		; 00 03
	cpx $00.b		; E4 00
	sbc $DD09.w		; ED 09 DD
	ora ($5B.b),Y		; 11 5B
	ora ($3B.b)		; 12 3B
	jsl $444477.l		; 22 77 44 44
	tyx		; BB
	php		; 08
	sbc [$08.b],Y		; F7 08
	sbc [$08.b],Y		; F7 08
	sbc [$00.b],Y		; F7 00
	sbc $81FC01.l,X		; FF 01 FC 81
	jmp ($7C81.w,X)		; 7C 81 7C
	adc [$44.b],Y		; 77 44
	rol $8E08.w		; 2E 08 8E
	dey		; 88
	dec $E048.w		; CE 48 E0
	rts		; 60

	sbc [$24.b]		; E7 24
	sbc [$B4.b],Y		; F7 B4
	sbc [$94.b],Y		; F7 94
	sec		; 38
	eor [$18.b],Y		; 57 18
	and [$10.b],Y		; 37 10
	and $003E00.l		; 2F 00 3E 00
	trb $1000.w		; 1C 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $0D3D2E.l,X		; 3F 2E 3D 0D
	bit $1834.w,X		; 3C 34 18
	php		; 08
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0D.b		; 00 0D
	ora $081F.w		; 0D 1F 08
	ora $0E0E05.l,X		; 1F 05 0E 0E
	ora $000604.l		; 0F 04 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0D.b		; 00 0D
	php		; 08
	php		; 08
	brk $05.b		; 00 05
	ora ($0E.b,X)		; 01 0E
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -120.b		; 80 88
	iny		; C8
	stz $08DC.w		; 9C DC 08
	dey		; 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
	brk $9C.b		; 00 9C
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs -80.b		; B0 B0
	sed		; F8
	bpl  -8.b		; 10 F8
	ldy #$50.b		; A0 50
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs   0.b		; B0 00
	bpl   0.b		; 10 00
	ldy #$A0.b		; A0 A0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	and $1F7810.l,X		; 3F 10 78 1F
	adc $3F7F1F.l,X		; 7F 1F 7F 3F
	eor $3E5F3F.l,X		; 5F 3F 5F 3E
	eor $265F3C.l,X		; 5F 3C 5F 26
	and [$30.b]		; 27 30
	ora [$3F.b]		; 07 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	jsr $203F.w		; 20 3F 20
	rol $3E20.w,X		; 3E 20 3E
	jsr $CCAA.w		; 20 AA CC
	stz $71.b		; 64 71
	cmp ($FE.b,X)		; C1 FE
	cmp ($FF.b,X)		; C1 FF
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	rts		; 60

	sta $D803C8.l		; 8F C8 03 D8
	ora ($BA.b,X)		; 01 BA
	brk $36.b		; 00 36
	brk $6D.b		; 00 6D
	brk $ED.b		; 00 ED
	brk $FA.b		; 00 FA
	jsr ($FAFC.w,X)		; FC FC FA
	jmp ($F9F5.w,X)		; 7C F5 F9
	ror A		; 6A
	sbc ($94.b,S),Y		; F3 94
	and $AA.b		; 25 AA
	tsb $DB.b		; 04 DB
	bit $DB.b		; 24 DB
	bvs  -3.b		; 70 FD
	bvs  -1.b		; 70 FF
	rts		; 60

	inc $FD09.w,X		; FE 09 FD
	sta ($FB.b,S),Y		; 93 FB
	ora $75.b		; 05 75
	sta $AD24.w		; 8D 24 AD
	bit $0E.b		; 24 0E
	inc $EE0F.w,X		; FE 0F EE
	rol $DF.b		; 26 DF
	and [$D7.b]		; 27 D7
	and [$DB.b],Y		; 37 DB
	tas		; 1B
	xce		; FB
	ora $99EF.w,Y		; 19 EF 99
	adc $FFEC.w		; 6D EC FF
	inc $DF.b		; E6 DF
	inc $EF.b		; E6 EF
.ACCU 8
	sep #$EF		; E2 EF
	sbc ($E7.b,S),Y		; F3 E7
	adc $7947.w,Y		; 79 47 79
	adc ($B8.b,S),Y		; 73 B8
	lda ($00.b,S),Y		; B3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	cop $02.b		; 02 02
	cop $30.b		; 02 30
	eor $42BE60.l		; 4F 60 BE 42
	sbc $DE81.w,X		; FD 81 DE
	and $AC.b,S		; 23 AC
	jsr $5C37.w		; 20 37 5C
	eor $99.b,S		; 43 99
	ldy #$7C.b		; A0 7C
	jmp ($4979.w,X)		; 7C 79 49
	sbc ($92.b)		; F2 92
	cmp $73A721.l		; CF 21 A7 73
	ora $F8.b,S		; 03 F8
	brk $E0.b		; 00 E0
	brk $66.b		; 00 66
	jsr $003F.w		; 20 3F 00
	sbc $041B04.l		; EF 04 1B 04
	xce		; FB
	pla		; 68
	stx $A8.b,Y		; 96 A8
	mvn $5C,$A3		; 54 A3 5C
	jsr ($C700.w,X)		; FC 00 C7
	asl $13.b		; 06 13
	ora ($F4.b,S),Y		; 13 F4
	pea $7477.w		; F4 77 74
	ror $AC19.w,X		; 7E 19 AC
	phb		; 8B
	ldy #$80.b		; A0 80
	brk $03.b		; 00 03
	cpx #$50.b		; E0 50
	rts		; 60

	bcs  32.b		; B0 20
	cld		; D8
	brk $78.b		; 00 78
	bra -72.b		; 80 B8
	bra -104.b		; 80 98
	rts		; 60

	sei		; 78
	cpx #$38.b		; E0 38
	cpx #$A0.b		; E0 A0
	cpx #$C0.b		; E0 C0
	beq -16.b		; F0 F0
	bmi -80.b		; 30 B0
	bpl -48.b		; 10 D0
	bcc -16.b		; 90 F0
	bpl -112.b		; 10 90
	bvc  16.b		; 50 10
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	ora ($0E.b,X)		; 01 0E
	ora $1D.b,S		; 03 1D
	ora $3D0F17.l		; 0F 17 0F 3D
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora $080F02.l		; 0F 02 0F 08
	ora $010002.l,X		; 1F 02 00 01
	brk $82.b		; 00 82
	brk $44.b		; 00 44
	brk $F8.b		; 00 F8
	bcc 108.b		; 90 6C
	jsr ($FCBA.w,X)		; FC BA FC
	sbc $00D7EC.l		; EF EC D7 00
	brk $01.b		; 00 01
	ora ($83.b,X)		; 01 83
	sta $07.b,S		; 83 07
	ora [$BB.b]		; 07 BB
	sta ($FD.b,S),Y		; 93 FD
	eor $FE.b		; 45 FE
	bpl  -1.b		; 10 FF
	and #$10.b		; 29 10
	sbc $007F01.l		; EF 01 7F 00
	lsr $1E01.w,X		; 5E 01 1E
	ora ($0E.b,X)		; 01 0E
	ora ($0E.b,X)		; 01 0E
	ora ($06.b,X)		; 01 06
	ora $06.b,S		; 03 06
	eor $5C15.w,X		; 5D 15 5C
	mvp $12,$1B		; 44 1B 12
	phd		; 0B
	asl A		; 0A
	phd		; 0B
	asl A		; 0A
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	sbc ($FF.b,S),Y		; F3 FF
	ora ($1E.b)		; 12 1E
	sbc $0E.b,S		; E3 0E
	sbc $0E.b,S		; E3 0E
	sbc $0E.b,S		; E3 0E
	sbc $0E.b,S		; E3 0E
	sbc ($1E.b,S),Y		; F3 1E
	beq  26.b		; F0 1A
	php		; 08
	php		; 08
	sbc #$08.b		; E9 08
	sbc $F908.w,Y		; F9 08 F9
	php		; 08
	sbc $F908.w,Y		; F9 08 F9
	php		; 08
	sbc #$08.b		; E9 08
	sbc $02.b,S		; E3 02
	ora $180E18.l		; 0F 18 0E 18
	asl $30.b		; 06 30
	ora $210E31.l,X		; 1F 31 0E 21
	tsb $2261.w		; 0C 61 22
	adc $1A.b,S		; 63 1A
	.db $42, $07		; 42 07
	brk $17.b		; 00 17
	bpl  31.b		; 10 1F
	bpl  14.b		; 10 0E
	brk $3F.b		; 00 3F
	and ($3E.b,X)		; 21 3E
	jsr $001C.w		; 20 1C 00
	jmp ($8040.w,X)		; 7C 40 80
	rep #$00		; C2 00
	.db $82, $01, $83		; 82 01 83
	ora ($83.b,X)		; 01 83
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora $02.b,S		; 03 02
	sta ($80.b,X)		; 81 80
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
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	cpx #$E0.b		; E0 E0
	beq -16.b		; F0 F0
	clv		; B8
	sed		; F8
	dey		; 88
	dey		; 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F0.b		; C0 F0
	cpx #$F8.b		; E0 F8
	bcc  -4.b		; 90 FC
	php		; 08
	jsr ($9800.w,X)		; FC 00 98
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $1C3F.w		; 1C 3F 1C
	and $1D2F1C.l		; 2F 1C 2F 1D
	ora $0D1F0D.l		; 0F 0D 1F 0D
	ora [$05.b],Y		; 17 05
	ora $3E0B05.l,X		; 1F 05 0B 3E
	brk $3E.b		; 00 3E
	bmi  31.b		; 30 1F
	bpl  31.b		; 10 1F
	bpl  31.b		; 10 1F
	brk $1F.b		; 00 1F
	clc		; 18
	ora $0E0F02.l		; 0F 02 0F 0E
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra  -1.b		; 80 FF
	bra  -1.b		; 80 FF
	bra 127.b		; 80 7F
	dey		; 88
	adc $5B00DD.l,X		; 7F DD 00 5B
	brk $3B.b		; 00 3B
	brk $BB.b		; 00 BB
	brk $D7.b		; 00 D7
	rti		; 40

	cmp [$40.b]		; C7 40
	cmp ($D0.b),Y		; D1 D0
	bne -48.b		; D0 D0
	jsl $ED12DD.l		; 22 DD 12 ED
	ora ($ED.b)		; 12 ED
	ora ($EE.b),Y		; 11 EE
	ora ($EE.b),Y		; 11 EE
	ora ($EE.b),Y		; 11 EE
	bpl -17.b		; 10 EF
	cop $FF.b		; 02 FF
	ldx $B622.w		; AE 22 B6
	ora ($B6.b)		; 12 B6
	ora ($77.b)		; 12 77
	ora ($77.b),Y		; 11 77
	ora ($77.b),Y		; 11 77
	ora ($74.b),Y		; 11 74
	bpl   1.b		; 10 01
	ora ($09.b,X)		; 01 09
	sbc $40.b,X		; F5 40
	lda $DC21.w,X		; BD 21 DC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $E8.b		; 00 E8
	brk $E8.b		; 00 E8
	clv		; B8
	tsa		; 3B
	cld		; D8
	eor ($E8.b,S),Y		; 53 E8
	and #$68.b		; 29 68
	ora #$40.b		; 09 40
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra   1.b		; 80 01
	ora $060E03.l		; 0F 03 0E 06
	trb $1909.w		; 1C 09 19
	brk $27.b		; 00 27
	asl $2F.b		; 06 2F
	ora $7F0F7F.l		; 0F 7F 0F 7F
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	ora $0F1807.l,X		; 1F 07 18 0F
	ora $4F4F0F.l		; 0F 0F 4F 4F
	txy		; 9B
	brk $49.b		; 00 49
	bvs -119.b		; 70 89
	beq   4.b		; F0 04
	sed		; F8
	ora [$F8.b]		; 07 F8
	sbc $1E.b,S		; E3 1E
	sbc $FBFE.w,X		; FD FE FB
	jsr ($27C0.w,X)		; FC C0 27
	ldy #$27.b		; A0 27
	bvc  87.b		; 50 57
	bcs -77.b		; B0 B3
	bvs 112.b		; 70 70
	brk $FE.b		; 00 FE
	tya		; 98
	inc $FE30.w,X		; FE 30 FE
	ror $20.b,X		; 76 20
	jsr ($5420.w,X)		; FC 20 54
	jsr $00D9.w		; 20 D9 00
	lda $609D00.l,X		; BF 00 9D 60
	sbc ($60.b),Y		; F1 60
	plx		; FA
	sbc ($20.b),Y		; F1 20
	sta $208F20.l		; 8F 20 8F 20
	sta $002600.l		; 8F 00 26 00
	rti		; 40

	brk $6E.b		; 00 6E
	rts		; 60

	ror $F5E1.w		; 6E E1 F5
	cpx #$38.b		; E0 38
	cpx #$1C.b		; E0 1C
	beq  28.b		; F0 1C
	rts		; 60

	stz $A418.w		; 9C 18 A4
	tsb $F8.b		; 04 F8
	brk $E0.b		; 00 E0
	clc		; 18
	jmp.w [$0040]		; DC 40 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $58.b		; 00 58
	clc		; 18
	bit $A004.w,X		; 3C 04 A0
	stz $BE88.w		; 9C 88 BE
	ora $182B.w,X		; 1D 2B 18
	and $033E03.l		; 2F 03 3E 03
	rol $3E03.w,X		; 3E 03 3E
	ora $3E.b,S		; 03 3E
	ora ($2C.b),Y		; 11 2C
	bpl 126.b		; 10 7E
	ora $101D14.l,X		; 1F 14 1D 10
	clc		; 18
	cop $08.b		; 02 08
	phd		; 0B
	asl A		; 0A
	asl A		; 0A
	ora $3B18.w,Y		; 19 18 3B
	sec		; 38
	and $022C.w,X		; 3D 2C 02
	sbc $FE41.w,X		; FD 41 FE
	pea $3CEF.w		; F4 EF 3C
	and [$D4.b]		; 27 D4
	ora $0807C4.l		; 0F C4 07 08
	ora $971FD0.l		; 0F D0 1F 97
	cop $0B.b		; 02 0B
	ora #$01.b		; 09 01
	tsb $15C1.w		; 0C C1 15
	sbc $0D.b		; E5 0D
	sbc $F301.w,Y		; F9 01 F3
	.db $42, $E7		; 42 E7
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	asl $01.b		; 06 01
	tsb $01.b		; 04 01
	tsb $01.b		; 04 01
	tsb $01.b		; 04 01
	tsb $07.b		; 04 07
	tsb $07.b		; 04 07
	tsb $0001.w		; 0C 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cpy #$1A.b		; C0 1A
	cpy #$1A.b		; C0 1A
	sbc ($33.b,X)		; E1 33
	sbc ($33.b,X)		; E1 33
	cmp ($33.b,X)		; C1 33
	cmp ($33.b,X)		; C1 33
	cpy #$23.b		; C0 23
	bra  35.b		; 80 23
	sbc ($12.b,S),Y		; F3 12
	sbc ($12.b,S),Y		; F3 12
	bne  16.b		; D0 10
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	sbc ($21.b,X)		; E1 21
	cmp ($01.b,X)		; C1 01
	bpl  38.b		; 10 26
	bmi 102.b		; 30 66
	bmi 100.b		; 30 64
	bpl 124.b		; 10 7C
	rti		; 40

	ldy $B850.w,X		; BC 50 B8
	jsr $E0F0.w		; 20 F0 E0
	brk $1C.b		; 00 1C
	tsb $1C.b		; 04 1C
	tsb $1C.b		; 04 1C
	tsb $28.b		; 04 28
	plp		; 28
	rti		; 40

	rti		; 40

	bvs  64.b		; 70 40
	rts		; 60

	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bpl -64.b		; 10 C0
	clc		; 18
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	rts		; 60

	tsb $0C60.w		; 0C 60 0C
	inx		; E8
	sty $84F0.w		; 8C F0 84
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	bvs   0.b		; 70 00
	jmp ($3004.w,X)		; 7C 04 30
	stx $7C.b		; 86 7C
	dec $7C.b		; C6 7C
	dec $1C.b		; C6 1C
	lsr $3C.b		; 46 3C
	ror $38.b		; 66 38
	.db $62, $08, $23		; 62 08 23
	clc		; 18
	and ($FC.b,S),Y		; 33 FC
	sty $38.b		; 84 38
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	rti		; 40

	clc		; 18
	brk $1E.b		; 00 1E
	cop $3E.b		; 02 3E
	jsl $18020E.l		; 22 0E 02 18
	and ($08.b,S),Y		; 33 08
	and ($00.b,S),Y		; 33 00
	ora ($00.b,S),Y		; 13 00
	ora ($00.b,S),Y		; 13 00
	ora $001F06.l,X		; 1F 06 1F 00
	ora $0E1B0A.l,X		; 1F 0A 1B 0E
	cop $1E.b		; 02 1E
	ora ($1E.b)		; 12 1E
	ora ($0E.b)		; 12 0E
	cop $00.b		; 02 00
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	brk $D0.b		; 00 D0
	brk $C8.b		; 00 C8
	bra 100.b		; 80 64
	bra 104.b		; 80 68
	cpy #$B0.b		; C0 B0
	cpx #$D0.b		; E0 D0
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	ldy #$A0.b		; A0 A0
	bcs  48.b		; B0 30
	cld		; D8
	cld		; D8
	bne -112.b		; D0 90
	cpy #$40.b		; C0 40
	cpx #$20.b		; E0 20
	sec		; 38
	stz $30.b		; 64 30
	stz $18.b		; 64 18
	jmp ($6810.w)		; 6C 10 68
	bpl 120.b		; 10 78
	brk $78.b		; 00 78
	bpl 120.b		; 10 78
	brk $F8.b		; 00 F8
	trb $1804.w		; 1C 04 18
	brk $30.b		; 00 30
	jsr $2838.w		; 20 38 28
	brk $00.b		; 00 00
	jsr $1000.w		; 20 00 10
	brk $40.b		; 00 40
	rti		; 40

	trb $3C61.w		; 1C 61 3C
	adc ($1E.b,X)		; 61 1E
	eor $18.b,S		; 43 18
	.db $42, $3C		; 42 3C
	lsr $38.b		; 46 38
	mvp $C4,$30		; 44 30 C4
	sei		; 78
	cpy STAT78.w		; CC 3F 21
	asl $3C00.w,X		; 1E 00 3C
	brk $3E.b		; 00 3E
	cop $38.b		; 02 38
	brk $7C.b		; 00 7C
	mvp $40,$78		; 44 78 40
	bmi   0.b		; 30 00
	sec		; 38
	stz $18.b		; 64 18
	.db $62, $00, $7A		; 62 00 7A
	asl $0E7E.w		; 0E 7E 0E
	adc [$06.b],Y		; 77 06
	tsa		; 3B
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	clc		; 18
	brk $1C.b		; 00 1C
	brk $24.b		; 00 24
	jsr $203E.w		; 20 3E 20
	asl $1E08.w,X		; 1E 08 1E
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	rol $1ED0.w,X		; 3E D0 1E
	inx		; E8
	asl $0CE8.w		; 0E E8 0C
	inx		; E8
	tsb $0CE8.w		; 0C E8 0C
	cpx #$0C.b		; E0 0C
	cpx #$0C.b		; E0 0C
	iny		; C8
	php		; 08
	inx		; E8
	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	cpx #$08.b		; E0 08
	cpx #$08.b		; E0 08
	cpx #$08.b		; E0 08
	cpx #$08.b		; E0 08
	cpx #$08.b		; E0 08
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	ora ($0E.b,X)		; 01 0E
	ora $1D.b,S		; 03 1D
	ora $3D0F17.l		; 0F 17 0F 3D
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora $080F02.l		; 0F 02 0F 08
	ora $000002.l,X		; 1F 02 00 00
	brk $81.b		; 00 81
	brk $46.b		; 00 46
	brk $F8.b		; 00 F8
	bcc 108.b		; 90 6C
	jsr ($FCBA.w,X)		; FC BA FC
	sbc $00D7EC.l		; EF EC D7 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	sta ($07.b,X)		; 81 07
	ora [$BB.b]		; 07 BB
	sta ($FD.b,S),Y		; 93 FD
	eor $FE.b		; 45 FE
	bpl  -1.b		; 10 FF
	and #$00.b		; 29 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $90.b		; 00 90
	brk $C8.b		; 00 C8
	brk $C8.b		; 00 C8
	bra 100.b		; 80 64
	bra 116.b		; 80 74
	cpy #$B8.b		; C0 B8
	cpy #$B0.b		; C0 B0
	rti		; 40

	rti		; 40

	rts		; 60

	rts		; 60

	bcs -80.b		; B0 B0
	bcs  48.b		; B0 30
	cld		; D8
	tya		; 98
	iny		; C8
	dey		; 88
	cpx #$40.b		; E0 40
	cpx #$40.b		; E0 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $182B.w,X		; 1D 2B 18
	and $033E03.l		; 2F 03 3E 03
	asl $1E03.w,X		; 1E 03 1E
	ora $1E.b,S		; 03 1E
	ora ($1C.b,X)		; 01 1C
	brk $3E.b		; 00 3E
	ora $101D14.l,X		; 1F 14 1D 10
	clc		; 18
	cop $08.b		; 02 08
	ora $0A.b,S		; 03 0A
	asl A		; 0A
	ora $1B18.w,Y		; 19 18 1B
	clc		; 18
	ora $0204.w,X		; 1D 04 02
	sbc $FE41.w,X		; FD 41 FE
	pea $3CEF.w		; F4 EF 3C
	and [$D4.b]		; 27 D4
	ora $0807C4.l		; 0F C4 07 08
	ora $971F90.l		; 0F 90 1F 97
	cop $0B.b		; 02 0B
	ora #$01.b		; 09 01
	tsb $15C1.w		; 0C C1 15
	sbc $0D.b		; E5 0D
	sbc $F301.w,Y		; F9 01 F3
.ACCU 8
	sep #$E7		; E2 E7
	lsr $00.b		; 46 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	ora [$01.b]		; 07 01
	asl $1D03.w		; 0E 03 1D
	ora $3D0F17.l		; 0F 17 0F 3D
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora $080F02.l		; 0F 02 0F 08
	ora $000002.l,X		; 1F 02 00 00
	brk $81.b		; 00 81
	brk $46.b		; 00 46
	brk $F8.b		; 00 F8
	bcc 108.b		; 90 6C
	jsr ($FCBA.w,X)		; FC BA FC
	sbc $00D7EC.l		; EF EC D7 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	sta ($07.b,X)		; 81 07
	ora [$BB.b]		; 07 BB
	sta ($FD.b,S),Y		; 93 FD
	eor $FE.b		; 45 FE
	bpl  -1.b		; 10 FF
	and #$00.b		; 29 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $90.b		; 00 90
	brk $C8.b		; 00 C8
	brk $C8.b		; 00 C8
	bra 100.b		; 80 64
	bra 116.b		; 80 74
	cpy #$B8.b		; C0 B8
	cpy #$B0.b		; C0 B0
	rti		; 40

	rti		; 40

	rts		; 60

	rts		; 60

	bcs -80.b		; B0 B0
	bcs  48.b		; B0 30
	cld		; D8
	tya		; 98
	iny		; C8
	dey		; 88
	cpx #$40.b		; E0 40
	cpx #$40.b		; E0 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $182B.w,X		; 1D 2B 18
	and $033E03.l		; 2F 03 3E 03
	asl $1E03.w,X		; 1E 03 1E
	ora $1E.b,S		; 03 1E
	ora ($1C.b,X)		; 01 1C
	brk $3E.b		; 00 3E
	ora $101D14.l,X		; 1F 14 1D 10
	clc		; 18
	cop $08.b		; 02 08
	ora $0A.b,S		; 03 0A
	asl A		; 0A
	ora $1B18.w,Y		; 19 18 1B
	clc		; 18
	ora $0204.w,X		; 1D 04 02
	sbc $FE41.w,X		; FD 41 FE
	sed		; F8
	sbc $D83B24.l,X		; FF 24 3B D8
	ora [$C8.b]		; 07 C8
	ora $D00F08.l		; 0F 08 0F D0
	ora $0B0297.l,X		; 1F 97 02 0B
	ora #$05.b		; 09 05
	tsb $C1.b		; 04 C1
	ora $05E5.w,Y		; 19 E5 05
	sbc $05.b,X		; F5 05
	sbc ($42.b,S),Y		; F3 42
	sbc [$06.b]		; E7 06
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	cop $02.b		; 02 02
	ora ($12.b)		; 12 12
	asl A		; 0A
	asl A		; 0A
	brk $07.b		; 00 07
	ora $01010D.l		; 0F 0D 01 01
	ora ($01.b,X)		; 01 01
	ora ($07.b,X)		; 01 07
	brk $37.b		; 00 37
	cop $3F.b		; 02 3F
	php		; 08
	ora $0D0F00.l,X		; 1F 00 0F 0D
	ora $00F302.l,X		; 1F 02 F3 00
	inc $E101.w		; EE 01 E1
	ora $39C0FF.l		; 0F FF C0 39
	and ($09.b)		; 32 09
	tda		; 7B
	tsb $75.b		; 04 75
	.db $82, $CC, $40		; 82 CC 40
	cmp ($51.b),Y		; D1 51
	stz $600E.w,X		; 9E 0E 60
	brk $F6.b		; 00 F6
	cpy #$36.b		; C0 36
	beq  10.b		; F0 0A
	dey		; 88
	brk $B8.b		; 00 B8
	asl $00FD.w		; 0E FD 00
	sbc $04FF00.l,X		; FF 00 FF 04
	sbc $9A6A.w,X		; FD 6A 9A
	.db $42, $B5		; 42 B5
	dec $08.b		; C6 08
	rtl		; 6B

	brk $3F.b		; 00 3F
	jsl $730C4F.l		; 22 4F 0C 73
	cop $75.b		; 02 75
	ora [$E2.b]		; 07 E2
	adc $035DC1.l		; 6F C1 5D 03
	sec		; 38
	ora [$F0.b]		; 07 F0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	bra -32.b		; 80 E0
	rti		; 40

	ldy #$40.b		; A0 40
	beq  32.b		; F0 20
	bne   0.b		; D0 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	brk $C0.b		; 00 C0
	cpy #$C0.b		; C0 C0
	brk $60.b		; 00 60
	rts		; 60

	rts		; 60

	brk $B0.b		; 00 B0
	bcs -32.b		; B0 E0
	sbc [$C0.b],Y		; F7 C0
	sbc $07DD82.l		; EF 82 DD 07
	tsx		; BA
	ora $EF1F76.l		; 0F 76 1F EF
	and $BF7FDF.l,X		; 3F DF 7F BF
	cmp $F9.b,S		; C3 F9
	sta [$F5.b]		; 87 F5
	ora $D51FEA.l		; 0F EA 1F D5
	and $507FA9.l,X		; 3F A9 7F 50
	sbc $40FFA0.l,X		; FF A0 FF 40
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	clc		; 18
	and [$18.b]		; 27 18
	adc [$38.b],Y		; 77 38
	eor [$38.b],Y		; 57 38
	eor [$38.b],Y		; 57 38
	adc [$71.b],Y		; 77 71
	ldx $BD72.w,Y		; BE 72 BD
	adc ($FD.b)		; 72 FD
	and $3F3C.w,X		; 3D 3C 3F
	asl $2E3E.w		; 0E 3E 2E
	ror $7D6C.w,X		; 7E 6C 7D
	php		; 08
	tda		; 7B
	eor ($76.b,X)		; 41 76
	.db $42, $72		; 42 72
	cop $0F.b		; 02 0F
	lda $0B9717.l		; AF 17 97 0B
	xba		; EB
	tsb $F4.b		; 04 F4
	lda $5B.b,S		; A3 5B
	brk $FC.b		; 00 FC
	.db $42, $BD		; 42 BD
	ora ($ED.b)		; 12 ED
	sta [$7F.b]		; 87 7F
	ora [$7F.b]		; 07 7F
	eor $1F.b,S		; 43 1F
	ldy $0F.b		; A4 0F
	plb		; AB
	lda [$58.b]		; A7 58
	ora $D6.b,S		; 03 D6
	.db $42, $B6		; 42 B6
	ora ($10.b)		; 12 10
	and $013F00.l		; 2F 00 3F 01
	ora [$01.b],Y		; 17 01
	ora [$00.b],Y		; 17 00
	asl $00.b		; 06 00
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	asl $35.b		; 06 35
	and $15.b,X		; 35 15
	ora $10.b		; 05 10
	bpl   2.b		; 10 02
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	brk $90.b		; 00 90
	sta [$B1.b]		; 87 B1
	sta [$72.b]		; 87 72
	asl $7A.b		; 06 7A
	asl $0CF1.w		; 0E F1 0C
	sbc ($0C.b,X)		; E1 0C
	sbc ($1C.b,S),Y		; F3 1C
	sbc [$1C.b]		; E7 1C
	adc $7C05.w,X		; 7D 05 7C
	tsb $FD.b		; 04 FD
	tsb $F1.b		; 04 F1
	brk $FB.b		; 00 FB
	php		; 08
	xce		; FB
	php		; 08
	sbc [$04.b]		; E7 04
	sbc ($10.b,S),Y		; F3 10
	jsr $3864.w		; 20 64 38
	stz $18.b		; 64 18
	rts		; 60

	brk $7A.b		; 00 7A
	asl $0E7F.w		; 0E 7F 0E
	and [$06.b],Y		; 37 06
	tsa		; 3B
	brk $1E.b		; 00 1E
	clc		; 18
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $24.b		; 00 24
	jsr $203E.w		; 20 3E 20
	asl $1E08.w,X		; 1E 08 1E
	trb $00.b		; 14 00
	brk $0C.b		; 00 0C
	and ($0E.b,X)		; 21 0E
	adc $38.b,S		; 63 38
	adc $1C.b,S		; 63 1C
	lsr $10.b		; 46 10
	lsr $38.b		; 46 38
	jmp $4C20.w		; 4C 20 4C
	bmi -40.b		; 30 D8
	ora $203C01.l,X		; 1F 01 3C 20
	asl $3802.w,X		; 1E 02 38
	brk $3C.b		; 00 3C
	tsb $30.b		; 04 30
	brk $78.b		; 00 78
	pha		; 48
	rts		; 60

	rti		; 40

	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	brk $06.b		; 00 06
	ora $06.b,S		; 03 06
	ora ($04.b,X)		; 01 04
	ora $0C.b,S		; 03 0C
	ora [$0C.b]		; 07 0C
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	sed		; F8
	sty $0860.w		; 8C 60 08
	beq  24.b		; F0 18
	cpy #$18.b		; C0 18
	cpx #$30.b		; E0 30
	bra  48.b		; 80 30
	cpy #$60.b		; C0 60
	bra  96.b		; 80 60
	bvs   0.b		; 70 00
	sed		; F8
	php		; 08
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	bit $3C43.w,X		; 3C 43 3C
	eor $3C.b,S		; 43 3C
	eor $38.b,S		; 43 38
	.db $42, $38		; 42 38
.ACCU 16
.INDEX 16
	rep #$78		; C2 78
.ACCU 16
.INDEX 16
	rep #$7C		; C2 7C
	dec $3C.b		; C6 3C
	stx $3E.b		; 86 3E
	cop $3E.b		; 02 3E
	cop $3E.b		; 02 3E
	cop $7C.b		; 02 7C
	rti		; 40

	jmp ($3C40.w,X)		; 7C 40 3C
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $3C.b		; 00 3C
	stx $38.b		; 86 38
	sty $78.b		; 84 78
	cpy $78.b		; C4 78
	cpy $70.b		; C4 70
	cpy $30.b		; C4 30
	cpy $30.b		; C4 30
	cpy $18.b		; C4 18
	jmp $0078.w		; 4C 78 00
	jmp ($3C04.w,X)		; 7C 04 3C
	tsb $3C.b		; 04 3C
	tsb $3C.b		; 04 3C
	tsb $78.b		; 04 78
	rti		; 40

	sei		; 78
	rti		; 40

	bvs  64.b		; 70 40
	asl A		; 0A
	ora $0B07.w		; 0D 07 0B
	asl $17.b		; 06 17
	ora ($1A.b,X)		; 01 1A
	cop $1C.b		; 02 1C
	brk $1F.b		; 00 1F
	php		; 08
	and [$18.b],Y		; 37 18
	and [$00.b]		; 27 00
	ora $001F03.l,X		; 1F 03 1F 00
	ora $0B0A0C.l		; 0F 0C 0A 0B
	brk $1E.b		; 00 1E
	asl $1E.b,X		; 16 1E
	asl $1C1D.w		; 0E 1D 1C
	sbc $827782.l,X		; FF 82 77 82
	cmp $B202.w		; CD 02 B2
	rti		; 40

	cmp $078F82.l,X		; DF 82 8F 07
	adc $9F1F9F.l,X		; 7F 9F 1F 9F
	.db $82, $B8, $02		; 82 B8 02
	clv		; B8
	cop $32.b		; 02 32
	rti		; 40

	eor $3A02.w		; 4D 02 3A
	ora $77.b,S		; 03 77
	ora $1F.b,S		; 03 1F
	sta [$7F.b]		; 87 7F
	wai		; CB
	tsb $49.b		; 04 49
	tsb $98.b		; 04 98
	asl $78.b		; 06 78
	ora [$7A.b]		; 07 7A
	ora $92.b		; 05 92
	ora $E28FE2.l		; 0F E2 8F E2
	inc $F003.w		; EE 03 F0
	ora $F0.b,S		; 03 F0
	ora $60.b		; 05 60
	asl $80.b		; 06 80
	ora [$E2.b]		; 07 E2
	ora [$60.b]		; 07 60
	sta [$90.b]		; 87 90
	stx $F1.b		; 86 F1
	jsr $9078.w		; 20 78 90
	plp		; 28
	cpy #$603C.w		; C0 3C 60
	trb $FE00.w		; 1C 00 FE
	brk $9E.b		; 00 9E
	jsr $706F.w		; 20 6F 70
	sbc [$B0.b],Y		; F7 B0
	brk $D0.b		; 00 D0
	bpl -24.b		; 10 E8
	plp		; 28
	cpx #$5000.w		; E0 00 50
	rti		; 40

	clc		; 18
	rts		; 60

	rol A		; 2A
	sbc ($62.b)		; F2 62
	plx		; FA
	sbc $7FFF7F.l,X		; FF 7F FF 7F
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc [$FF.b],Y		; F7 FF
	sbc [$FE.b],Y		; F7 FE
	inc $ED.b,X		; F6 ED
	cpx $FB.b		; E4 FB
	sbc $80FF80.l,X		; FF 80 FF 80
	sbc $08FF00.l,X		; FF 00 FF 08
	sbc $09FF00.l,X		; FF 00 FF 09
	sbc [$12.b],Y		; F7 12
	sbc [$05.b],Y		; F7 05
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs  -1.b		; 70 FF
	bvs  -1.b		; 70 FF
	adc ($BE.b),Y		; 71 BE
	bvs -65.b		; 70 BF
	bmi  -1.b		; 30 FF
	bmi 127.b		; 30 7F
	bmi  95.b		; 30 5F
	bpl 127.b		; 10 7F
	adc $7900.w,Y		; 79 00 79
	brk $7D.b		; 00 7D
	eor $7C.b		; 45 7C
	mvp $04,$7C		; 44 7C 04
	jmp ($3C4C.w,X)		; 7C 4C 3C
	bit $0D3D.w		; 2C 3D 0D
	sta ($6D.b)		; 92 6D
	jsl $D926DD.l		; 22 DD 26 D9
	stz $9B.b		; 64 9B
	mvp $0C,$BB		; 44 BB 0C
	sbc ($24.b,S),Y		; F3 24
	xce		; FB
	pha		; 48
	cmp $6E92B6.l		; CF B6 92 6E
	jsl $ED266E.l		; 22 6E 26 ED
	stz $5D.b		; 64 5D
	mvp $8C,$9D		; 44 9D 8C
	cmp $C4.b		; C5 C4
	bcs -128.b		; B0 80
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora [$04.b]		; 07 04
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora $08.b,S		; 03 08
	ora $18.b,S		; 03 18
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $1CC708.l		; 0F 08 C7 1C
	sbc $34.b,S		; E3 34
	cmp $34.b,S		; C3 34
	sta $24.b,S		; 83 24
	cmp $64.b,S		; C3 64
	sta $64.b,S		; 83 64
	ora $44.b,S		; 03 44
	ora $44.b,S		; 03 44
	sbc ($10.b,S),Y		; F3 10
	cmp [$04.b]		; C7 04
	sbc [$24.b]		; E7 24
	cmp $00.b,S		; C3 00
	sta $00.b,S		; 83 00
	cmp $40.b,S		; C3 40
	sta $00.b,S		; 83 00
	sta $00.b,S		; 83 00
	clc		; 18
	jmp $6C38.w		; 4C 38 6C
	jsr $106C.w		; 20 6C 10
	jmp ($7C10.w,X)		; 7C 10 7C
	brk $7C.b		; 00 7C
	clc		; 18
	jmp ($7C00.w,X)		; 7C 00 7C
	bvs  64.b		; 70 40
	bvc  64.b		; 50 40
	clc		; 18
	php		; 08
	plp		; 28
	plp		; 28
	plp		; 28
	plp		; 28
	brk $00.b		; 00 00
	clc		; 18
	brk $00.b		; 00 00
	brk $C2.b		; 00 C2
	dec $A5A1.w		; CE A1 A5
	eor $4B.b,S		; 43 4B
	sta $1EBF.w,X		; 9D BF 1E
	and $80BE0C.l,X		; 3F 0C BE 80
	eor $6B80.w,X		; 5D 80 6B
	stx $F1.b		; 86 F1
	lda $FB.b		; A5 FB
	eor ($FF.b,X)		; 41 FF
	bcc  -1.b		; 90 FF
	trb $0CFF.w		; 1C FF 0C
	adc $81BE80.l,X		; 7F 80 BE 81
	sta $6390.w,X		; 9D 90 63
	mvn $49,$AB		; 54 AB 49
	ldx $49.b,Y		; B6 49
	ldx $69.b,Y		; B6 69
	stx $63.b,Y		; 96 63
	sta $FE13.w,X		; 9D 13 FE
	lsr $DF.b,X		; 56 DF
	sta ($9C.b),Y		; 91 9C
	cmp $54.b,X		; D5 54
	cmp $DB49.w,Y		; D9 49 DB
	phk		; 4B
	xba		; EB
	adc #$66E7.w		; 69 E7 66
	sta [$01.b]		; 87 01
	and [$00.b]		; 27 00
	stx $9D.b,Y		; 96 9D
	trb $1F.b		; 14 1F
	mvn $C0,$1A		; 54 1A C0
	asl $1CC0.w,X		; 1E C0 1C
	cpy #$C01C.w		; C0 1C C0
	clc		; 18
	cpy #$6710.w		; C0 10 67
	ora $E6.b,S		; 03 E6
	brk $E6.b		; 00 E6
	asl $F4.b		; 06 F4
	bpl -12.b		; 10 F4
	trb $F0.b		; 14 F0
	bpl -16.b		; 10 F0
	bpl -16.b		; 10 F0
	bpl -32.b		; 10 E0
	cmp [$C0.b],Y		; D7 C0
	ldx $80.b,Y		; B6 80
	stz $00.b		; 64 00
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $32.b,X		; F6 32
	cpx $44.b		; E4 44
	cpx #$C0A0.w		; E0 A0 C0
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C010.w		; C0 10 C0
	bpl -64.b		; 10 C0
	bpl -32.b		; 10 E0
	bmi -32.b		; 30 E0
	bmi -32.b		; 30 E0
	bmi -32.b		; 30 E0
	bmi -32.b		; 30 E0
	bmi -32.b		; 30 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $1C.b		; 00 1C
	rol $6E2C.w		; 2E 2C 6E
	clc		; 18
	jmp ($7C20.w,X)		; 7C 20 7C
	bmi  76.b		; 30 4C
	jsr $0058.w		; 20 58 00
	bvs   0.b		; 70 00
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $38.b		; 00 38
	bmi  48.b		; 30 30
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	tsb $081B.w		; 0C 1B 08
	inc A		; 1A
	php		; 08
	rol $3E10.w,X		; 3E 10 3E
	clc		; 18
	stz $00.b,X		; 74 00
	jmp $509830.l		; 5C 30 98 50
	tya		; 98
	asl $02.b		; 06 02
	asl $02.b		; 06 02
	tsb $04.b		; 04 04
	bpl   0.b		; 10 00
	clc		; 18
	php		; 08
	jsr $6000.w		; 20 00 60
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000800.l		; 0F 00 08 00
	ora #$0B00.w		; 09 00 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	asl $06.b		; 06 06
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	ora ($24.b,X)		; 01 24
	brk $FE.b		; 00 FE
	bmi  -1.b		; 30 FF
	inc $00FF.w,X		; FE FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	inc A		; 1A
	brk $01.b		; 00 01
	jmp ($FF00.w,X)		; 7C 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $B4.b		; 00 B4
	brk $03.b		; 00 03
	rti		; 40

	cli		; 58
	cpx #$FC1F.w		; E0 1F FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $7B.b		; 00 7B
	brk $BC.b		; 00 BC
	rti		; 40

	ora $001FDC.l,X		; 1F DC 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $48.b		; 00 48
	brk $BC.b		; 00 BC
	dey		; 88
	sty $00.b		; 84 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -56.b		; 80 C8
	brk $F8.b		; 00 F8
	ora $6D.b,S		; 03 6D
	ora ($79.b,S),Y		; 13 79
	ora $79.b,S		; 03 79
	ora ($78.b),Y		; 11 78
	ora ($78.b),Y		; 11 78
	bpl  -8.b		; 10 F8
	brk $F8.b		; 00 F8
	rti		; 40

	inx		; E8
	sec		; 38
	and #$0500.w		; 29 00 05
	jsr $3005.w		; 20 05 30
	tsb $30.b		; 04 30
	tsb $10.b		; 04 10
	ora $40.b		; 05 40
	ora ($50.b,X)		; 01 50
	ora ($07.b,X)		; 01 07
	jsr $002D.w		; 20 2D 00
	phk		; 4B
	brk $6B.b		; 00 6B
	jsl $2F226B.l		; 22 6B 22 2F
	jsl $8F0087.l		; 22 87 00 8F
	tay		; A8
	brk $FA.b		; 00 FA
	brk $F2.b		; 00 F2
	brk $F4.b		; 00 F4
	jsr $20F6.w		; 20 F6 20
	inc $20.b,X		; F6 20
	sbc ($00.b)		; F2 00
	sed		; F8
	bra  -6.b		; 80 FA
	sbc [$3F.b]		; E7 3F
	ora [$7E.b]		; 07 7E
	phb		; 8B
	and [$14.b]		; 27 14
	eor $C8.b,S		; 43 C8
	tsb $A5.b		; 04 A5
	eor ($52.b,X)		; 41 52
	ldy $12.b		; A4 12
	cpx #$07C0.w		; E0 C0 07
	cpx #$C0AF.w		; E0 AF C0
	ora $003F80.l,X		; 1F 80 3F 00
	adc $40BF80.l,X		; 7F 80 BF 40
	eor $C31F40.l,X		; 5F 40 1F C3
	dey		; 88
	stx $00.b		; 86 00
	tsb $38B0.w		; 0C B0 38
	brk $70.b		; 00 70
	brk $28.b		; 00 28
	bpl -108.b		; 10 94
	dey		; 88
	sty $00.b,X		; 94 00
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $D0.b		; 00 D0
	brk $E8.b		; 00 E8
	brk $E8.b		; 00 E8
	ora ($07.b,X)		; 01 07
	ora $07.b,S		; 03 07
	ora $0F.b,S		; 03 0F
	brk $0F.b		; 00 0F
	ora [$16.b]		; 07 16
	ora $3A2D.w		; 0D 2D 3A
	.db $62, $36, $86		; 62 36 86
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	php		; 08
	php		; 08
	asl $0E.b		; 06 0E
	ora $1A1F.w		; 0D 1F 1A
	ora [$78.b]		; 07 78
	ora $97.b,S		; 03 97
	bvs -117.b		; 70 8B
	sei		; 78
	ora $EC.b		; 05 EC
	.db $42, $B6		; 42 B6
	sta $7C.b		; 85 7C
.ACCU 16
.INDEX 16
	rep #$3F		; C2 3F
	sbc ($9D.b,X)		; E1 9D
	ora ($AF.b),Y		; 11 AF
	sbc $90D7A0.l		; EF A0 D7 90
	txy		; 9B
	clc		; 18
	adc $F26C.w		; 6D 6C F2
	bcc 120.b		; 90 78
	pha		; 48
	dec A		; 3A
	ldy #$D41C.w		; A0 1C D4
	lda $C3.b,S		; A3 C3
	sbc [$A7.b]		; E7 A7
	rol $9FBF.w,X		; 3E BF 9F
	asl $2222.w,X		; 1E 22 22
	bit $BE3C.w,X		; 3C 3C BE
	ldx $3E92.w,Y		; BE 92 3E
	brk $DF.b		; 00 DF
	jsl $FF3EFF.l		; 22 FF 3E FF
	trb $00FF.w		; 1C FF 00
	sbc $0CFF00.l,X		; FF 00 FF 0C
	sbc $0CFF12.l,X		; FF 12 FF 0C
	bcs -96.b		; B0 A0
	bvs 120.b		; 70 78
	rts		; 60

	tsb DMAP2.w		; 0C 20 43
	mvp $7B,$78		; 44 78 7B
	adc $257D.w,X		; 7D 7D 25
	jmp ($F800.w,X)		; 7C 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	clc		; 18
	sbc $D8FF24.l,X		; FF 24 FF D8
	cmp $6CEFD4.l,X		; DF D4 EF 6C
	sbc $387670.l		; EF 70 76 38
	adc $BC3C.w,Y		; 79 3C BC
	sec		; 38
	lda $DB10.w,X		; BD 10 DB
	stp		; DB
	cpx #$F055.w		; E0 55 F0
	rol $06F0.w		; 2E F0 06
	sbc $FF38.w,Y		; F9 38 FF
	clv		; B8
	adc $807E90.l,X		; 7F 90 7E 80
	bit $6173.w,X		; 3C 73 61
	adc $FF3F73.l,X		; 7F 73 3F FF
	sbc $E71F1F.l,X		; FF 1F 1F E7
	adc $C43F1A.l,X		; 7F 1A 3F C4
	ora [$FB.b]		; 07 FB
	brk $ED.b		; 00 ED
	ora ($F3.b),Y		; 11 F3
	ora $FF0EFF.l,X		; 1F FF 0E FF
	cop $FF.b		; 02 FF
	php		; 08
	sbc $A23F04.l,X		; FF 04 3F A2
	lda [$E5.b]		; A7 E5
	cmp ($C5.b),Y		; D1 C5
	lda ($81.b),Y		; B1 81
	sbc ($83.b),Y		; F1 83
	adc $02.b,S		; 63 02
	cpy #$8002.w		; C0 02 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	sbc ($3B.b),Y		; F1 3B
	sbc ($43.b,X)		; E1 43
	sbc ($23.b,X)		; E1 23
	cpy #$80C3.w		; C0 C3 80
	lda $00.b,S		; A3 00
	ora $00.b,S		; 03 00
	ora $80.b,S		; 03 80
	sta $05.b,S		; 83 05
	jsr ($FE02.w,X)		; FC 02 FE
	sta ($7F.b,X)		; 81 7F
	brk $7E.b		; 00 7E
	ora ($3C.b,X)		; 01 3C
	ora $38.b,S		; 03 38
	ora $301F38.l		; 0F 38 1F 30
	rtl		; 6B

	pla		; 68
	adc $74.b,X		; 75 74
	dec A		; 3A
	tsx		; BA
	tsa		; 3B
	tsx		; BA
	and [$B4.b],Y		; 37 B4
	ora $101708.l		; 0F 08 17 10
	ora $1B0000.l		; 0F 00 00 1B
	ora ($27.b,X)		; 01 27
	ora $4F.b,S		; 03 4F
	ora $2F.b,S		; 03 2F
	brk $1E.b		; 00 1E
	ora $1A.b		; 05 1A
	ora $0C1A.w		; 0D 1A 0C
	tsa		; 3B
	ora $04.b		; 05 04
	tas		; 1B
	clc		; 18
	and ($30.b,S),Y		; 33 30
	ora ($10.b,S),Y		; 13 10
	phd		; 0B
	php		; 08
	ora $161F06.l		; 0F 06 1F 16
	ora $FF9B05.l,X		; 1F 05 9B FF
	jsl $FF44FF.l		; 22 FF 44 FF
	sec		; 38
	cmp [$4B.b]		; C7 4B
	ldy #$E0BB.w		; A0 BB E0
	lda $BF90.w		; AD 90 BF
	sta ($FF.b,X)		; 81 FF
	brk $BB.b		; 00 BB
	brk $66.b		; 00 66
	brk $40.b		; 00 40
	ora ($06.b,X)		; 01 06
	bmi  38.b		; 30 26
	and #$1066.w		; 29 66 10
	ror $CF00.w,X		; 7E 00 CF
	sbc [$66.b],Y		; F7 66
	jsr ($F9D5.w,X)		; FC D5 F9
	bcc 122.b		; 90 7A
	mvp $86,$3C		; 44 3C 86
	jmp ($EC08.w,X)		; 7C 08 EC
	rol $E7FC.w,X		; 3E FC E7
	ora $F10774.l		; 0F 74 07 F1
	ora [$50.b]		; 07 50
	ora [$10.b]		; 07 10
	sta $400F20.l		; 8F 20 0F 40
	ora $DA3F00.l,X		; 1F 00 3F DA
	tya		; 98
	sbc $EBCC.w		; ED CC EB
	tax		; AA
	lda [$22.b]		; A7 22
	bit $5A00.w,X		; 3C 00 5A
	brk $B4.b		; 00 B4
	brk $18.b		; 00 18
	rti		; 40

	bra  -4.b		; 80 FC
	cpy #$A0FE.w		; C0 FE A0
	inc $FA20.w,X		; FE 20 FA
	brk $E2.b		; 00 E2
	brk $E4.b		; 00 E4
	brk $C8.b		; 00 C8
	brk $E0.b		; 00 E0
	rti		; 40

	cpx #$E040.w		; E0 40 E0
	brk $60.b		; 00 60
	jsr $1070.w		; 20 70 10
	sei		; 78
	php		; 08
	jmp ($3E00.w,X)		; 7C 00 3E
	brk $3E.b		; 00 3E
	cli		; 58
	ora ($58.b,X)		; 01 58
	ora ($18.b,X)		; 01 18
	brk $28.b		; 00 28
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $8F.b		; 00 8F
	clv		; B8
	sta $300FB8.l		; 8F B8 0F 30
	eor $226B54.l		; 4F 54 6B 22
	adc ($11.b),Y		; 71 11
	sec		; 38
	brk $03.b		; 00 03
	brk $80.b		; 00 80
	xce		; FB
	bra  -5.b		; 80 FB
	brk $F3.b		; 00 F3
	rti		; 40

	sbc $20.b,X		; F5 20
	inc $10.b,X		; F6 10
	sbc $007F00.l,X		; FF 00 7F 00
	jmp ($F00A.w,X)		; 7C 0A F0
	sec		; 38
	cpy #$804E.w		; C0 4E 80
	bit #$C981.w		; 89 81 C9
	sta ($F8.b,X)		; 81 F8
	brk $B0.b		; 00 B0
	brk $50.b		; 00 50
	sta ($40.b,X)		; 81 40
	ora $007740.l		; 0F 40 77 00
	adc [$81.b],Y		; 77 81
	adc [$81.b],Y		; 77 81
	and [$00.b],Y		; 37 00
	ora [$00.b]		; 07 00
	adc $96AF00.l		; 6F 00 AF 96
	brk $69.b		; 00 69
	brk $87.b		; 00 87
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $5A.b		; 00 5A
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	inx		; E8
	brk $F6.b		; 00 F6
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E4.b		; 00 E4
	brk $F0.b		; 00 F0
	pla		; 68
	asl $1CD2.w		; 0E D2 1C
	rti		; 40

	sbc $791C.w,Y		; F9 1C 79
	trb $BCBB.w		; 1C BB BC
	txs		; 9A
	ldy $FCFB.w,X		; BC FB FC
	stp		; DB
	pea $E807.w		; F4 07 E8
	phd		; 0B
	jsr $1C27.w		; 20 27 1C
	sta [$3E.b]		; 87 3E
	cmp $3E.b		; C5 3E
	sbc $BF.b		; E5 BF
	cpy $BF.b		; C4 BF
	cpx $B9.b		; E4 B9
	eor [$64.b]		; 47 64
	eor $E3.b,S		; 43 E3
	cpy #$E0F0.w		; C0 F0 E0
	sbc ($E0.b),Y		; F1 E0
	adc $4038C0.l,X		; 7F C0 38 40
	and ($00.b),Y		; 31 00
	tsb $D8.b		; 04 D8
	brk $DC.b		; 00 DC
	rti		; 40

	cmp $60EF60.l,X		; DF 60 EF 60
	inc $C000.w		; EE 00 C0
	brk $DF.b		; 00 DF
	brk $DE.b		; 00 DE
	jmp $6218.w		; 4C 18 62
	cpy #$C025.w		; C0 25 C0
	asl $E0.b		; 06 E0
	ora $F0.b,S		; 03 F0
	ora ($F8.b,X)		; 01 F8
	tsb $F8.b		; 04 F8
	brk $F8.b		; 00 F8
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra  63.b		; 80 3F
	rti		; 40

	ora $D00FA0.l,X		; 1F A0 0F D0
	eor [$60.b]		; 47 60
	and [$00.b]		; 27 00
	ora [$9A.b]		; 07 9A
	and ($43.b),Y		; 31 43
	brk $28.b		; 00 28
	brk $94.b		; 00 94
	brk $4A.b		; 00 4A
	brk $2D.b		; 00 2D
	brk $87.b		; 00 87
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	adc $00B800.l,X		; 7F 00 B8 00
	bne   0.b		; D0 00
	inx		; E8
	brk $F4.b		; 00 F4
	brk $F2.b		; 00 F2
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	rts		; 60

	sbc [$40.b]		; E7 40
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $80FF00.l,X		; FF 00 FF 80
	adc $817F80.l,X		; 7F 80 7F 81
	inc $1C64.w,X		; FE 64 1C
	stz $04.b,X		; 74 04
	tax		; AA
	php		; 08
	tax		; AA
	php		; 08
	dec $54.b,X		; D6 54
	cmp [$D5.b],Y		; D7 D5
	cmp $2DEF8D.l		; CF 8D EF 2D
	ora $FD.b,S		; 03 FD
	and ($DE.b,X)		; 21 DE
	jsr $A0DF.w		; 20 DF A0
	eor $986F90.l,X		; 5F 90 6F 98
	adc [$CC.b]		; 67 CC
	and ($44.b,S),Y		; 33 44
	tyx		; BB
	ldy $97.b,X		; B4 97
	ldx $23.b,Y		; B6 23
	tsx		; BA
	plp		; 28
	xce		; FB
	inx		; E8
	cmp $DED4.w,X		; DD D4 DE
	txs		; 9A
	sbc $D4F4ED.l		; EF ED F4 D4
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	asl $1C30.w,X		; 1E 30 1C
	adc ($38.b,X)		; 61 38
	cmp $70.b,S		; C3 70
	sta [$E0.b]		; 87 E0
	ora $891FC5.l		; 0F C5 1F 89
	and $2F7510.l,X		; 3F 10 75 2F
	jsr $A03E.w		; 20 3E A0
	jmp ($7840.w,X)		; 7C 40 78
	brk $F2.b		; 00 F2
	cop $E2.b		; 02 E2
	ora $C4.b,S		; 03 C4
	ora $8C.b		; 05 8C
	ora [$EB.b]		; 07 EB
	and [$C5.b],Y		; 37 C5
	ora ($72.b,S),Y		; 13 72
	ora $8AA1.w,Y		; 19 A1 8A
	sbc $0F.b,S		; E3 0F
	cmp [$1F.b],Y		; D7 1F
	lda $7F1E3F.l		; AF 3F 1E 7F
	cpy #$F00F.w		; C0 0F F0
	ora $7807E0.l,X		; 1F E0 07 78
	ora $E00FF8.l		; 0F F8 0F E0
	ora [$C0.b]		; 07 C0
	ora $C21F80.l		; 0F 80 1F C2
	tya		; 98
	stx $D8.b		; 86 D8
	sbc ($CC.b,X)		; E1 CC
	phk		; 4B
	cpx $C3.b		; E4 C3
	cpx $C8A5.w		; EC A5 C8
	lsr A		; 4A
	bcc  28.b		; 90 1C
	jsr $FC00.w		; 20 00 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $F0.b		; 00 F0
	php		; 08
	asl $1E0C.w,X		; 1E 0C 1E
	tsb $041E.w		; 0C 1E 04
	asl $0E00.w		; 0E 00 0E
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	cop $0C.b		; 02 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora $031C08.l		; 0F 08 1C 03
	tas		; 1B
	ora [$17.b]		; 07 17
	ora [$17.b]		; 07 17
	ora $07.b,S		; 03 07
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	tsb $0803.w		; 0C 03 08
	ora [$03.b]		; 07 03
	ora $010F03.l		; 0F 03 0F 01
	ora $000B01.l		; 0F 01 0B 00
	ora $1A04.w,X		; 1D 04 1A
	asl $0F35.w		; 0E 35 0F
	bit $2C1F.w,X		; 3C 1F 2C
	ora $5E3F7C.l,X		; 1F 7C 3F 5E
	brk $07.b		; 00 07
	tsb $0E0B.w		; 0C 0B 0E
	ora $1F.b		; 05 1F
	inc A		; 1A
	ora $333F03.l,X		; 1F 03 3F 33
	and $213F03.l,X		; 3F 03 3F 21
	and $7E3F7E.l,X		; 3F 7E 3F 7E
	adc $F77FB6.l,X		; 7F B6 7F F7
	adc [$FB.b],Y		; 77 FB
	adc ($BF.b,S),Y		; 73 BF
	tsa		; 3B
	adc $39.b,X		; 75 39
	adc [$7F.b],Y		; 77 7F
	eor ($7F.b,X)		; 41 7F
	ora ($7F.b,X)		; 01 7F
	eor #$087F.w		; 49 7F 08
	adc $407F04.l,X		; 7F 04 7F 40
	adc $4C7F0E.l,X		; 7F 0E 7F 4C
	and $1C5E.w,Y		; 39 5E 1C
	tda		; 7B
	trb $0C2F.w		; 1C 2F 0C
	and $0E3D0E.l,X		; 3F 0E 3D 0E
	ora $06.b,X		; 15 06
	ora $0F04.w,X		; 1D 04 0F
	and $053D23.l,X		; 3F 23 3D 05
	rol $1E32.w,X		; 3E 32 1E
	brk $1F.b		; 00 1F
	ora ($0F.b,S),Y		; 13 0F
	phd		; 0B
	ora $080E03.l		; 0F 03 0E 08
	cmp ($BE.b,X)		; C1 BE
	cpx #$F0DF.w		; E0 DF F0
	adc $78FF70.l		; 6F 70 FF 78
	ldx $38.b,Y		; B6 38
	inc $7E38.w,X		; FE 38 7E
	and $E77C.w,Y		; 39 7C E7
	eor $F3.b		; 45 F3
	jsl $FC99F9.l		; 22 F9 99 FC
	tsb $FC.b		; 04 FC
	cmp $057C.w		; CD 7C 05
	jmp ($3C41.w,X)		; 7C 41 3C
	cop $61.b		; 02 61
	sta $F006.w,X		; 9D 06 F0
	ora [$E0.b]		; 07 E0
	ora [$F0.b],Y		; 17 F0
	ora $F803F8.l		; 0F F8 03 F8
	ora $7C.b		; 05 7C
	cop $7E.b		; 02 7E
	sbc ($E0.b)		; F2 E0
	adc $405F20.l		; 6F 20 5F 40
	and $101720.l		; 2F 20 17 10
	ora $800308.l		; 0F 08 03 80
	ora $94.b,X		; 15 94
	cop $F4.b		; 02 F4
	sta $4EFE.w		; 8D FE 4E
	adc $EF3F8F.l,X		; 7F 8F 3F EF
	and $F31FC7.l,X		; 3F C7 1F F3
	ora $800BE5.l,X		; 1F E5 0B 80
	sta $805F40.l		; 8F 40 5F 80
	ora $C03FE0.l,X		; 1F E0 3F C0
	ora $E01FF0.l		; 0F F0 1F E0
	ora [$F8.b]		; 07 F8
	ora $2C001E.l		; 0F 1E 00 2C
	brk $94.b		; 00 94
	jsr $B00C.w		; 20 0C B0
.INDEX 16
	rep #$98		; C2 98
	stx $D8.b		; 86 D8
	sbc ($CC.b,X)		; E1 CC
	cmp $EC.b,S		; C3 EC
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra -96.b		; 80 A0
	cpy #$40E0.w		; C0 E0 40
	rti		; 40

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bpl  45.b		; 10 2D
	brk $39.b		; 00 39
	brk $19.b		; 00 19
	ora ($10.b,X)		; 01 10
	brk $11.b		; 00 11
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	clc		; 18
	clc		; 18
	bpl   0.b		; 10 00
	bpl  16.b		; 10 10
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
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
	bra   0.b		; 80 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $02.b		; 00 02
	ora $087F0A.l,X		; 1F 0A 7F 08
	sbc [$18.b],Y		; F7 18
	sbc [$58.b],Y		; F7 58
	sbc $E950.w		; ED 50 E9
	bvc -23.b		; 50 E9
	bvc  -5.b		; 50 FB
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	pla		; 68
	brk $68.b		; 00 68
	brk $50.b		; 00 50
	brk $58.b		; 00 58
	php		; 08
	bvc   0.b		; 50 00
	eor ($01.b,X)		; 41 01
	bit $38DE.w,X		; 3C DE 38
	ldy $7970.w,X		; BC 70 79
	sbc ($F0.b,X)		; E1 F0
	cmp ($E0.b,X)		; C1 E0
	phb		; 8B
	cpy #$8012.w		; C0 12 80
	and $10.b		; 25 10
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $FD.b		; 00 FD
	brk $FB.b		; 00 FB
	sec		; 38
	rti		; 40

	bvs -128.b		; 70 80
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plp		; 28
	cpx $CC44.w		; EC 44 CC
	bmi -104.b		; 30 98
	sbc ($90.b,X)		; E1 90
	mvp $ED,$11		; 44 11 ED
	and $298D.w,Y		; 39 8D 29
	cmp #$1069.w		; C9 69 10
	ora $3C.b,S		; 03 3C
	ora $7087E0.l		; 0F E0 87 70
	ora $C00BE0.l,X		; 1F E0 0B C0
	phd		; 0B
	cpx #$803B.w		; E0 3B 80
	ora $872052.l,X		; 1F 52 20 87
	rts		; 60

	adc #$C2C4.w		; 69 C4 C2
	cpy $C896.w		; CC 96 C8
.INDEX 16
	rep #$98		; C2 98
	bit $A490.w		; 2C 90 A4
	bpl   0.b		; 10 00
	sbc $00FE00.l,X		; FF 00 FE 00
	inc $FC00.w,X		; FE 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $D8.b		; 00 D8
	brk $D8.b		; 00 D8
	brk $13.b		; 00 13
	ora ($17.b,X)		; 01 17
	ora ($37.b,X)		; 01 37
	cop $47.b		; 02 47
	cop $8F.b		; 02 8F
	cop $4F.b		; 02 4F
	brk $2D.b		; 00 2D
	ora $3D.b,S		; 03 3D
	tsb $090C.w		; 0C 0C 09
	php		; 08
	phd		; 0B
	php		; 08
	and $707638.l,X		; 3F 38 76 70
	rol $30.b,X		; 36 30
	asl $10.b,X		; 16 10
	asl $04.b		; 06 04
	rts		; 60

	sbc $37FFFC.l,X		; FF FC FF 37
	sbc $89FF44.l,X		; FF 44 FF 89
	sbc $968E71.l,X		; FF 71 8E 96
	rti		; 40

	adc [$C0.b],Y		; 77 C0
	sed		; F8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $76.b		; 00 76
	brk $CD.b		; 00 CD
	brk $80.b		; 00 80
	cop $0C.b		; 02 0C
	adc ($4C.b,X)		; 61 4C
	eor ($3D.b)		; 52 3D
	phy		; 5A
	ora $1D7A.w,X		; 1D 7A 1D
	tsa		; 3B
	ora $390F29.l,X		; 1F 29 0F 39
	ora $170D15.l		; 0F 15 0D 17
	ora $1B.b		; 05 1B
	and $053F27.l,X		; 3F 27 3F 05
	and $161F24.l,X		; 3F 24 1F 16
	ora $1A1F06.l,X		; 1F 06 1F 1A
	ora $040F08.l		; 0F 08 0F 04
	cmp $C2BE.w,Y		; D9 BE C2
	lda $BDC2.w,X		; BD C2 BD
	cpy $BB.b		; C4 BB
	cpy $FB.b		; C4 FB
	iny		; C8
	sbc [$C1.b],Y		; F7 C1
	inc $DEE1.w,X		; FE E1 DE
	cmp $DB41.w,X		; DD 41 DB
	.db $42, $EB		; 42 EB
	.db $62, $F6, $74		; 62 F6 74
	inc $14.b,X		; F6 14
	cpx $E508.w		; EC 08 E5
	ora ($F1.b,X)		; 01 F1
	and ($21.b,X)		; 21 21
	dec $B649.w,X		; DE 49 B6
	eor #$49B6.w		; 49 B6 49
	ldx $89.b,Y		; B6 89
	ror $90.b,X		; 76 90
	adc $106F90.l		; 6F 90 6F 10
	sbc $6D21B5.l		; EF B5 21 6D
	eor #$496D.w		; 49 6D 49
	adc $ED49.w		; 6D 49 ED
	bit #$90DE.w		; 89 DE 90
	dec $DE90.w,X		; DE 90 DE
	bpl  64.b		; 10 40
	clv		; B8
	rti		; 40

	ldy $BE40.w,X		; BC 40 BE
	jsr $20DF.w		; 20 DF 20
	cmp $905EA0.l,X		; DF A0 5E 90
	jmp ($6C90.w)		; 6C 90 6C
	bvc  64.b		; 50 40
	pla		; 68
	rti		; 40

	jmp ($B640.w)		; 6C 40 B6
	jsr $20B6.w		; 20 B6 20
	sed		; F8
	ldy #$90D8.w		; A0 D8 90
	bne -112.b		; D0 90
	cop $0E.b		; 02 0E
	tsb $1E.b		; 04 1E
	php		; 08
	inc A		; 1A
	tsb $30.b		; 04 30
	asl $2F30.w,X		; 1E 30 2F
	adc ($1C.b,X)		; 61 1C
	eor ($7A.b,X)		; 41 7A
	cmp $05.b,S		; C3 05
	tsb $0B.b		; 04 0B
	asl A		; 0A
	ora [$02.b]		; 07 02
	ora $202F10.l,X		; 1F 10 2F 20
	asl $7F00.w,X		; 1E 00 7F
	eor ($3C.b,X)		; 41 3C
	brk $DC.b		; 00 DC
	and ($9C.b,X)		; 21 9C
	and ($9C.b,X)		; 21 9C
	sbc ($BC.b,X)		; E1 BC
	sbc ($1C.b,X)		; E1 1C
	cpy #$C03C.w		; C0 3C C0
	bit $3C40.w,X		; 3C 40 3C
	rti		; 40

	dec $FE00.w,X		; DE 00 FE
	jsr $203E.w		; 20 3E 20
	asl $BE00.w,X		; 1E 00 BE
	bra  62.b		; 80 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	sed		; F8
	brk $F8.b		; 00 F8
	adc ($B3.b,X)		; 61 B3
	ora [$CF.b]		; 07 CF
	ora $FF1EFF.l,X		; 1F FF 1E FF
	trb $00FE.w		; 1C FE 00
	bvs  96.b		; 70 60
	jsr $0140.w		; 20 40 01
	ldy #$036F.w		; A0 6F 03
	and $4C1F4E.l,X		; 3F 4E 1F 4C
	ora $201F48.l,X		; 1F 48 1F 20
	sty $0E00.w		; 8C 00 0E
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0804.w		; 0C 04 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $580F58.l		; 0F 58 0F 58
	ora [$18.b]		; 07 18
	ora [$08.b]		; 07 08
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora [$0C.b]		; 07 0C
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $080F08.l		; 0F 08 0F 08
	ora $080F08.l		; 0F 08 0F 08
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	asl $3E43.w,X		; 1E 43 3E
	eor $BA.b,S		; 43 BA
	eor $BA.b,S		; 43 BA
	eor $B8.b,S		; 43 B8
	.db $42, $B8		; 42 B8
	.db $42, $B8		; 42 B8
	.db $42, $B8		; 42 B8
	.db $42, $BC		; 42 BC
	brk $BC.b		; 00 BC
	brk $BC.b		; 00 BC
	brk $BC.b		; 00 BC
	brk $BE.b		; 00 BE
	cop $BE.b		; 02 BE
	cop $BE.b		; 02 BE
	cop $BC.b		; 02 BC
	brk $38.b		; 00 38
	stz $38.b		; 64 38
	bit $18.b		; 24 18
	bit $18.b		; 24 18
	bit $18.b		; 24 18
	bit $18.b,X		; 34 18
	bit $00.b,X		; 34 00
	bit $3C08.w,X		; 3C 08 3C
	trb $1804.w		; 1C 04 18
	brk $38.b		; 00 38
	jsr $2038.w		; 20 38 20
	php		; 08
	brk $08.b		; 00 08
	brk $20.b		; 00 20
	brk $18.b		; 00 18
	brk $02.b		; 00 02
	tas		; 1B
	bpl  30.b		; 10 1E
	clc		; 18
	rol $3C00.w,X		; 3E 00 3C
	clc		; 18
	bit $6C38.w		; 2C 38 6C
	clc		; 18
	jmp $4C00.w		; 4C 00 4C
	tsb $1008.w		; 0C 08 10
	brk $1C.b		; 00 1C
	brk $20.b		; 00 20
	jsr $2030.w		; 20 30 20
	bpl   0.b		; 10 00
	bmi   0.b		; 30 00
	sec		; 38
	php		; 08
	bpl 120.b		; 10 78
	rti		; 40

	clv		; B8
	bvc -72.b		; 50 B8
	jsr $E0F0.w		; 20 F0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $4040.w		; 20 40 40
	bvs  64.b		; 70 40
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	bmi  72.b		; 30 48
	sec		; 38
	rti		; 40

	clc		; 18
	stz $00.b		; 64 00
	jmp ($3E18.w,X)		; 7C 18 3E
	trb $003F.w		; 1C 3F 00
	ora $704040.l,X		; 1F 40 40 70
	rti		; 40

	sec		; 38
	brk $18.b		; 00 18
	brk $20.b		; 00 20
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	and $6719.w,X		; 3D 19 67
	bmi -49.b		; 30 CF
	stz $9A.b		; 64 9A
	eor ($AD.b)		; 52 AD
	sta ($42.b,X)		; 81 42
	inc A		; 1A
	txy		; 9B
	rol $36.b,X		; 36 36
	asl $14.b,X		; 16 14
	rol $3C3E.w,X		; 3E 3E 3C
	bit $F9.b,X		; 34 F9
	sbc #$C1E1.w		; E9 E1 C1
.ACCU 16
.INDEX 16
	rep #$BC		; C2 BC
	txy		; 9B
	ror $FF16.w,X		; 7E 16 FF
	phy		; 5A
	and ($7E.b,X)		; 21 7E
	ora $A0.b,S		; 03 A0
	sta [$40.b]		; 87 40
.ACCU 16
	rep #$20		; C2 20
	stz $84.b		; 64 84
	tya		; 98
	rti		; 40

	inc $CF10.w,X		; FE 10 CF
	cpy $FC20.w		; CC 20 FC
	brk $7E.b		; 00 7E
	inc A		; 1A
	ldy $D898.w,X		; BC 98 D8
	cpy #$6060.w		; C0 60 60
	bit $30.b,X		; 34 30
	ldx $02.b,Y		; B6 02
	ora ($1E.b,X)		; 01 1E
	ora ($1E.b,X)		; 01 1E
	brk $1B.b		; 00 1B
	brk $13.b		; 00 13
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora $0B0B0B.l		; 0F 0B 0B 0B
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$E1DF.w		; E0 DF E1
	cmp $E1DFE1.l,X		; DF E1 DF E1
	cmp $C1DFE1.l,X		; DF E1 DF C1
	lda $80BFC0.l,X		; BF C0 BF 80
	adc $F828F8.l		; 6F F8 28 F8
	plp		; 28
	jsr ($FC2C.w,X)		; FC 2C FC
	bit $34F4.w		; 2C F4 34
	pea $E554.w		; F4 54 E5
	eor $E5.b		; 45 E5
	lda $10.b		; A5 10
	sbc $71FF01.l		; EF 01 FF 71
	ora [$72.b]		; 07 72
	asl $72.b		; 06 72
	asl $71.b		; 06 71
	tsb $71.b		; 04 71
	tsb $71.b		; 04 71
	tsb $DE.b		; 04 DE
	bpl   2.b		; 10 02
	cop $FA.b		; 02 FA
	cop $FD.b		; 02 FD
	tsb $FD.b		; 04 FD
	tsb $FB.b		; 04 FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $80.b		; 00 80
	sei		; 78
	bvc  24.b		; 50 18
	bvc  24.b		; 50 18
	bne  24.b		; D0 18
	cpy #$C018.w		; C0 18 C0
	clc		; 18
	cpx #$E030.w		; E0 30 E0
	bmi -128.b		; 30 80
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bpl -16.b		; 10 F0
	bpl -48.b		; 10 D0
	bpl -48.b		; 10 D0
	bpl  52.b		; 10 34
	stx $68.b		; 86 68
	stx $9CF0.w		; 8E F0 9C
	rti		; 40

	clc		; 18
	cpx #$8030.w		; E0 30 80
	jsr $60C0.w		; 20 C0 60
	brk $40.b		; 00 40
	sei		; 78
	brk $F4.b		; 00 F4
	sty $68.b		; 84 68
	php		; 08
	beq  16.b		; F0 10
	cpy #$E000.w		; C0 00 E0
	jsr $0080.w		; 20 80 00
	cpy #$3C40.w		; C0 40 3C
	rti		; 40

	asl $1E42.w,X		; 1E 42 1E
	.db $42, $3E		; 42 3E
	.db $62, $1C, $62		; 62 1C 62
	trb $0C22.w		; 1C 22 0C
	jsl $3E220C.l		; 22 0C 22 3E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	jsl $1E223E.l		; 22 3E 22 1E
	cop $1E.b		; 02 1E
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $03.b		; 02 03
	ora $07.b		; 05 07
	phd		; 0B
	ora $000036.l		; 0F 36 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora [$06.b]		; 07 06
	ora $091F0C.l		; 0F 0C 1F 09
	bmi  48.b		; 30 30
	sei		; 78
	sei		; 78
	bvs 120.b		; 70 78
	rts		; 60

	beq -64.b		; F0 C0
	cpx #$C080.w		; E0 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bmi  -8.b		; 30 F8
	bvs  -4.b		; 70 FC
	rts		; 60

	jsr ($F800.w,X)		; FC 00 F8
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	ora ($06.b,X)		; 01 06
	ora $0D.b,S		; 03 0D
	ora [$1B.b]		; 07 1B
	ora $6E1F37.l		; 0F 37 1F 6E
	asl $3C7D.w,X		; 1E 7D 3C
	stp		; DB
	jmp ($03BB.w,X)		; 7C BB 03
	ora ($07.b,X)		; 01 07
	cop $0F.b		; 02 0F
	tsb $1F.b		; 04 1F
	php		; 08
	and $427F31.l,X		; 3F 31 7F 42
	adc $C5FF25.l,X		; 7F 25 FF C5
.INDEX 8
	sep #$D6		; E2 D6
	cpy #$B5.b		; C0 B5
	dey		; 88
	adc ($08.b),Y		; 71 08
	pea $F60A.w		; F4 0A F6
	ora $F3.b		; 05 F3
	ora $F0.b,S		; 03 F0
	ora [$F3.b]		; 07 F3
	beq  63.b		; F0 3F
	beq  95.b		; F0 5F
	cpx #$AF.b		; E0 AF
	cpx #$6F.b		; E0 6F
	cpx #$EF.b		; E0 EF
	cpx #$EF.b		; E0 EF
	cpx #$EF.b		; E0 EF
	cmp ($CF.b,X)		; C1 CF
	brk $20.b		; 00 20
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	cpy #$F0.b		; C0 F0
	ldy #$F0.b		; A0 F0
	jsr $80F0.w		; 20 F0 80
	rts		; 60

	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	ldy #$00.b		; A0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	ldy #$00.b		; A0 00
	jsr $4000.w		; 20 00 40
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	ora [$80.b]		; 07 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $0F0F07.l		; 0F 07 0F 0F
	rol $2F1E.w,X		; 3E 1E 2F
	asl $3C3D.w,X		; 1E 3D 3C
	eor $387B3C.l,X		; 5F 3C 7B 38
	adc $79B679.l,X		; 7F 79 B6 79
	ldx $1F.b,Y		; B6 1F
	ora ($3F.b,X)		; 01 3F
	bmi  63.b		; 30 3F
	ora $3F.b,S		; 03 3F
	and ($7F.b,X)		; 21 7F
	eor [$7F.b]		; 47 7F
	cop $7F.b		; 02 7F
	eor $004D7F.l		; 4F 7F 4D 00
	inc $FE04.w,X		; FE 04 FE
	tsb $08FE.w		; 0C FE 08
	jsr ($FC11.w,X)		; FC 11 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	inc A		; 1A
	sbc $79F8.w,X		; FD F8 79
	pea $ECF1.w		; F4 F1 EC
	sbc ($EC.b,X)		; E1 EC
	sbc $DC.b,S		; E3 DC
	eor $D1.b,S		; 43 D1
	rti		; 40

	cmp $40.b		; C5 40
	stp		; DB
	.db $42, $A3		; 42 A3
	rti		; 40

	xce		; FB
	ora ($1F.b,X)		; 01 1F
	tsa		; 3B
	cmp $E63F3F.l		; CF 3F 3F E6
	and ($DF.b)		; 32 DF
	tsb $40FF.w		; 0C FF 40
	lda $01DC00.l,X		; BF 00 DC 01
	sta $0B.b		; 85 0B
	xce		; FB
	asl $FF.b		; 06 FF
	brk $FF.b		; 00 FF
	ora ($3E.b)		; 12 3E
	jmp $6A0C.w		; 4C 0C 6A
	rti		; 40

	iny		; C8
	bra -32.b		; 80 E0
	bra -112.b		; 80 90
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$80.b		; E0 80
	bvs   0.b		; 70 00
	bcs   0.b		; B0 00
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $A0.b		; 00 A0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	sbc ($00.b)		; F2 00
	sta $000000.l		; 8F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($70.b,X)		; 01 70
	bvs   0.b		; 70 00
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
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	cpy #$CE.b		; C0 CE
	tay		; A8
	lda $3F475C.l		; AF 5C 47 3F
	sbc ($8F.b,X)		; E1 8F
	sei		; 78
	.db $82, $1E, $F9		; 82 1E F9
	ora [$8E.b]		; 07 8E
	tsb $41.b		; 04 41
	beq  16.b		; F0 10
	cpy #$38.b		; C0 38
	bra  94.b		; 80 5E
	rti		; 40

	ora [$10.b],Y		; 17 10
	ora $64.b		; 05 64
	brk $80.b		; 00 80
	brk $75.b		; 00 75
	bit $0E61.w,X		; 3C 61 0E
	adc ($1E.b,X)		; 61 1E
	and ($07.b),Y		; 31 07
	and ($0E.b),Y		; 31 0E
	clc		; 18
	ora $18.b,S		; 03 18
	ora $1C.b		; 05 1C
	ora $18.b,S		; 03 18
	asl $3F00.w,X		; 1E 00 3F
	and ($0F.b,X)		; 21 0F
	ora ($1E.b,X)		; 01 1E
	bpl   7.b		; 10 07
	brk $0F.b		; 00 0F
	php		; 08
	ora $00.b,S		; 03 00
	ora $190208.l		; 0F 08 02 19
	cop $39.b		; 02 39
	tsb $BD.b		; 04 BD
	cop $BF.b		; 02 BF
	brk $9F.b		; 00 9F
	tsb $9F.b		; 04 9F
	asl $8F.b		; 06 8F
	cop $8F.b		; 02 8F
	asl $00.b,X		; 16 00
	asl $00.b,X		; 16 00
	ora ($00.b)		; 12 00
	php		; 08
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	ora $1100.w		; 0D 00 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora $00000E.l		; 0F 0E 00 00
	brk $0C.b		; 00 0C
	brk $92.b		; 00 92
	brk $7F.b		; 00 7F
	clc		; 18
	sbc $4DFF7F.l,X		; FF 7F FF 4D
	sbc $00FF91.l,X		; FF 91 FF 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb $8080.w		; 0C 80 80
	rol $7F00.w,X		; 3E 00 7F
	brk $FF.b		; 00 FF
	brk $DD.b		; 00 DD
	brk $7F.b		; 00 7F
	lda [$3F.b]		; A7 3F
	sbc $2D4D3F.l		; EF 3F 4D 2D
	eor $0E740F.l,X		; 5F 0F 74 0E
	and [$07.b],Y		; 37 07
	dec A		; 3A
	ora [$2B.b]		; 07 2B
	adc $107F58.l,X		; 7F 58 7F 10
	adc $607F32.l,X		; 7F 32 7F 60
	and $183F0B.l,X		; 3F 0B 3F 18
	and $0C0F25.l		; 2F 25 0F 0C
	bra 127.b		; 80 7F
	bra  -1.b		; 80 FF
	cmp ($BE.b,X)		; C1 BE
	cmp ($BE.b,X)		; C1 BE
	sbc ($DE.b,X)		; E1 DE
	cpx #$5F.b		; E0 5F
	bvs -81.b		; 70 AF
	bmi -49.b		; 30 CF
	sbc $80.b		; E5 80
	sbc $00.b,S		; E3 00
	sbc ($51.b,S),Y		; F3 51
	xce		; FB
	eor #$29F9.w		; 49 F9 29
	jsr ($FEA4.w,X)		; FC A4 FE
	lsr $FE.b,X		; 56 FE
	lda ($24.b)		; B2 24
	stp		; DB
	bit $DB.b		; 24 DB
	jsl $EE11DD.l		; 22 DD 11 EE
	bpl -17.b		; 10 EF
	php		; 08
	sbc [$08.b],Y		; F7 08
	sbc [$08.b],Y		; F7 08
	adc [$6D.b],Y		; 77 6D
	bit $6D.b		; 24 6D
	bit $6E.b		; 24 6E
	jsl $771177.l		; 22 77 11 77
	bpl 123.b		; 10 7B
	php		; 08
	ply		; 7A
	php		; 08
	ora $1E09.w,Y		; 19 09 1E
	sbc $00FE30.l,X		; FF 30 FE 00
	jsr ($F000.w,X)		; FC 00 F0
	bra  96.b		; 80 60
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	cpy #$00.b		; C0 00
	sty $B00C.w		; 8C 0C B0
	bmi   0.b		; 30 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	ora $0D.b,S		; 03 0D
	ora [$1B.b]		; 07 1B
	ora $3D0E36.l		; 0F 36 0E 3D
	trb $186B.w		; 1C 6B 18
	adc [$38.b],Y		; 77 38
	cmp [$30.b],Y		; D7 30
	sbc $0F0607.l,X		; FF 07 06 0F
	tsb $191F.w		; 0C 1F 19
	and $353F22.l,X		; 3F 22 3F 35
	adc $6E7F4B.l,X		; 7F 4B 7F 6E
	sbc $BEC184.l,X		; FF 84 C1 BE
	bra 126.b		; 80 7E
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	tsb $1EFE.w		; 0C FE 1E
	inc $FC18.w,X		; FE 18 FC
	jsr ($FC5D.w,X)		; FC 5D FC
	lda $7DFC.w,X		; BD FC 7D
	jsr ($E0FD.w,X)		; FC FD E0
	lda ($CC.b,X)		; A1 CC
	ora ($DE.b,X)		; 01 DE
	eor ($DC.b,X)		; 41 DC
	cmp $52.b,S		; C3 52
	dec $B2.b		; C6 B2
	adc ($7F.b,X)		; 61 7F
	brk $F1.b		; 00 F1
	rts		; 60

	lda $40.b,S		; A3 40
	xce		; FB
	ora ($1F.b,X)		; 01 1F
	tsa		; 3B
	cmp $E8013F.l		; CF 3F 01 E8
	brk $EC.b		; 00 EC
	brk $F0.b		; 00 F0
	jsr $00EE.w		; 20 EE 00
	jmp.w [$8501]		; DC 01 85
	phd		; 0B
	xce		; FB
	asl $FF.b		; 06 FF
	ora $EF806F.l		; 0F 6F 80 EF
	cmp [$20.b],Y		; D7 20
	iny		; C8
	bra -56.b		; 80 C8
	bra -32.b		; 80 E0
	bra -112.b		; 80 90
	brk $80.b		; 00 80
	brk $A0.b		; 00 A0
	ora $203F20.l,X		; 1F 20 3F 20
	and $00B000.l		; 2F 00 B0 00
	bcs   0.b		; B0 00
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
	brk $F8.b		; 00 F8
	cpx #$F8.b		; E0 F8
	bmi  -4.b		; 30 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inx		; E8
	brk $F0.b		; 00 F0
	brk $B8.b		; 00 B8
	brk $68.b		; 00 68
	jsr ($BC48.w,X)		; FC 48 BC
	ldy #$18.b		; A0 18
	cpy #$38.b		; C0 38
	bra 112.b		; 80 70
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	sei		; 78
	brk $28.b		; 00 28
	bra   8.b		; 80 08
	rti		; 40

	bpl -128.b		; 10 80
	jsr $0000.w		; 20 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $33.b		; 00 33
	ora $070738.l		; 0F 38 07 07
	sec		; 38
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $34.b,X		; 34 34
	sec		; 38
	sec		; 38
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra  96.b		; 80 60
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1738.w		; 0E 38 17
	and ($0E.b),Y		; 31 0E
	adc ($2C.b,X)		; 61 2C
	adc ($3E.b,X)		; 61 3E
	adc $1C.b,S		; 63 1C
	.db $42, $1C		; 42 1C
	.db $42, $18		; 42 18
	.db $42, $17		; 42 17
	bpl  14.b		; 10 0E
	brk $3F.b		; 00 3F
	and ($1E.b,X)		; 21 1E
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	cop $3C.b		; 02 3C
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	sta [$00.b]		; 87 00
	sta $00.b,S		; 83 00
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
	and $00.b,S		; 23 00
	ora ($00.b,S),Y		; 13 00
	phd		; 0B
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	asl $19.b		; 06 19
	tsb $1913.w		; 0C 13 19
	rol $1D.b		; 26 1D
	trb $0C0D.w		; 1C 0D 0C
	ora $04.b		; 05 04
	ora ($01.b,X)		; 01 01
	ora $05.b		; 05 05
	ora $0D0F0F.l		; 0F 0F 0F 0D
	rol $A23A.w,X		; 3E 3A A2
	sbc $25E39C.l,X		; FF 9C E3 25
	bvc -35.b		; 50 DD
	bvs -42.b		; 70 D6
	pha		; 48
	eor $E128C0.l,X		; 5F C0 28 E1
	bpl -80.b		; 10 B0
	lda ($00.b,S),Y		; B3 00
	ldy #$00.b		; A0 00
	sta $18.b,S		; 83 18
	sta ($14.b,S),Y		; 93 14
	lda ($08.b,S),Y		; B3 08
	lda $061F80.l,X		; BF 80 1F 06
	adc $0B0766.l		; 6F 66 07 0B
	ora $06.b,S		; 03 06
	cop $05.b		; 02 05
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	ora [$01.b]		; 07 01
	ora [$06.b]		; 07 06
	ora $01.b,S		; 03 01
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl -18.b		; 10 EE
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $DC.b		; 00 DC
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $BCD2.w,X		; FE D2 BC
	ldy #$9C.b		; A0 9C
	sty $08.b,X		; 94 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	ora ($0F.b,X)		; 01 0F
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	rti		; 40

	beq -32.b		; F0 E0
	beq -128.b		; F0 80
	bcc  32.b		; 90 20
	clc		; 18
	bvs  24.b		; 70 18
	rts		; 60

	php		; 08
	bvs  12.b		; 70 0C
	sei		; 78
	tsb $A0A0.w		; 0C A0 A0
	brk $00.b		; 00 00
	bvs  16.b		; 70 10
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	adc ($AD.b)		; 72 AD
	adc ($ED.b)		; 72 ED
	ror $FB.b		; 66 FB
	inc $EF73.w		; EE 73 EF
	adc ($EF.b)		; 72 EF
	adc ($FF.b)		; 72 FF
	ror $FF.b		; 66 FF
	ror $FF.b		; 66 FF
	phx		; DA
	sbc $04FF1A.l,X		; FF 1A FF 04
	sbc $8DFF8C.l,X		; FF 8C FF 8D
	sbc $99FF8D.l,X		; FF 8D FF 99
	sbc $FC1199.l,X		; FF 99 11 FC
	ora ($FE.b,X)		; 01 FE
	clc		; 18
	sbc $24FD32.l,X		; FF 32 FD 24
	xce		; FB
	plp		; 28
	sbc [$10.b],Y		; F7 10
	sbc $DCFF00.l		; EF 00 FF DC
	cmp $E4.b,S		; C3 E4
	sbc ($99.b,X)		; E1 99
	bra -69.b		; 80 BB
	.db $82, $B6, $84		; 82 B6 84
	sbc $DD48.w		; ED 48 DD
	bvc -37.b		; 50 DB
	brk $3F.b		; 00 3F
	inc $FF.b		; E6 FF
	ora $E71E.w,Y		; 19 1E E7
	ora #$0AF6.w		; 09 F6 0A
	sbc $04.b,X		; F5 04
	xce		; FB
	eor ($AD.b)		; 52 AD
	eor ($AE.b),Y		; 51 AE
	brk $FF.b		; 00 FF
	php		; 08
	sbc $491E04.l,X		; FF 04 1E 49
	ora #$0AAB.w		; 09 AB 0A
	lda $7604.w		; AD 04 76
	eor ($57.b)		; 52 57
	eor ($C0.b),Y		; 51 C0
	ora $02.b,S		; 03 02
	inc $18EB.w,X		; FE EB 18
	sta [$70.b],Y		; 97 70
	asl $1DE0.w		; 0E E0 1D
	sbc ($3A.b,X)		; E1 3A
	sbc $A4.b,S		; E3 A4
	adc [$01.b]		; 67 01
	sta ($05.b,X)		; 81 05
	tsb $E7.b		; 04 E7
	cpx #$CF.b		; E0 CF
	bra -33.b		; 80 DF
	brk $9E.b		; 00 9E
	brk $1D.b		; 00 1D
	ora ($9A.b,X)		; 01 9A
	.db $82, $0F, $21		; 82 0F 21
	asl $1E21.w		; 0E 21 1E
	and ($1C.b),Y		; 31 1C
	and ($0C.b),Y		; 31 0C
	ora ($0E.b),Y		; 11 0E
	ora ($06.b,S),Y		; 13 06
	ora ($04.b)		; 12 04
	ora ($1E.b)		; 12 1E
	brk $1F.b		; 00 1F
	ora ($0F.b,X)		; 01 0F
	ora ($0E.b,X)		; 01 0E
	brk $1E.b		; 00 1E
	bpl  28.b		; 10 1C
	bpl  12.b		; 10 0C
	brk $0E.b		; 00 0E
	cop $0C.b		; 02 0C
	inc A		; 1A
	tsb $0C1A.w		; 0C 1A 0C
	inc A		; 1A
	tsb $1A.b		; 04 1A
	brk $1E.b		; 00 1E
	tsb $1E.b		; 04 1E
	trb $3E.b		; 14 3E
	brk $64.b		; 00 64
	asl $02.b		; 06 02
	asl $02.b		; 06 02
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	php		; 08
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $58.b		; 00 58
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
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($1E.b,X)		; 01 1E
	and $1C.b,S		; 23 1C
	jsl $0C220C.l		; 22 0C 22 0C
	jsl $1C220C.l		; 22 0C 22 1C
	and ($18.b)		; 32 18
	bmi  12.b		; 30 0C
	bit $1C.b,X		; 34 1C
	brk $1E.b		; 00 1E
	cop $1E.b		; 02 1E
	cop $1C.b		; 02 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $18.b		; 00 18
	bpl   8.b		; 10 08
	bit $08.b,X		; 34 08
	bit $00.b,X		; 34 00
	bit $2C18.w,X		; 3C 18 2C
	brk $3C.b		; 00 3C
	brk $34.b		; 00 34
	bit $1E.b		; 24 1E
	rol $0F.b,X		; 36 0F
	trb $1814.w		; 1C 14 18
	bpl   0.b		; 10 00
	brk $18.b		; 00 18
	bpl   0.b		; 10 00
	brk $18.b		; 00 18
	bpl  40.b		; 10 28
	plp		; 28
	bmi  48.b		; 30 30
	bne -32.b		; D0 E0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	bit $E6.b		; 24 E6
	brk $FC.b		; 00 FC
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cli		; 58
	rti		; 40

	ldy $EE82.w,X		; BC 82 EE
	ora $DC.b,S		; 03 DC
	ora ($5C.b),Y		; 11 5C
	adc ($8C.b),Y		; 71 8C
	sbc ($3C.b,X)		; E1 3C
	sbc ($1E.b,X)		; E1 1E
.INDEX 16
	rep #$1E		; C2 1E
	.db $42, $7E		; 42 7E
	cop $FC.b		; 02 FC
	brk $EE.b		; 00 EE
	brk $AE.b		; 00 AE
	jsr $405E.w		; 20 5E 40
	stz $3C80.w,X		; 9E 80 3C
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	asl $03.b		; 06 03
	ora $1B07.w		; 0D 07 1B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora [$06.b]		; 07 06
	ora $0D020C.l		; 0F 0C 02 0D
	tsb $1A.b		; 04 1A
	ora #$3235.w		; 09 35 32
	lsr A		; 4A
	adc ($AA.b)		; 72 AA
	cpx #$C4DA.w		; E0 DA C4
	clv		; B8
	sty $7A.b		; 84 7A
	ora [$06.b]		; 07 06
	asl $1D0D.w		; 0E 0D 1D
	tas		; 1B
	dec A		; 3A
	and [$F8.b],Y		; 37 F8
	eor [$F8.b],Y		; 57 F8
	and $F057F0.l		; 2F F0 57 F0
	lda [$91.b],Y		; B7 91
	rtl		; 6B

	tsb $6214.w		; 0C 14 62
	adc $B0DEC0.l		; 6F C0 DE B0
	sta $1E8F38.l,X		; 9F 38 8F 1E
	sta $0E.b,S		; 83 0E
	adc ($0E.b,X)		; 61 0E
	asl $E313.w		; 0E 13 E3
	eor #$85F1.w		; 49 F1 85
	cpx #$C828.w		; E0 28 C8
	bit $C4.b,X		; 34 C4
	and $1EC1.w,X		; 3D C1 1E
	bra   0.b		; 80 00
	jsr $C000.w		; 20 00 C0
	brk $F0.b		; 00 F0
	bra 120.b		; 80 78
	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	and [$DF.b]		; 27 DF
	and $00C0BF.l,X		; 3F BF C0 00
	brk $00.b		; 00 00
	ldy #$B080.w		; A0 80 B0
	bpl -80.b		; 10 B0
	clc		; 18
	jsr $410F.w		; 20 0F 41
	adc $007FBF.l,X		; 7F BF 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb $1E1E.w		; 0C 1E 1E
	trb $D81E.w		; 1C 1E D8
	jsr ($F0F0.w,X)		; FC F0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb $1C3E.w		; 0C 3E 1C
	and $C0FF18.l,X		; 3F 18 FF C0
	inc $FC00.w,X		; FE 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
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
	bra   0.b		; 80 00
	tsb $00.b		; 04 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b)		; 12 00
	php		; 08
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $00.b		; 24 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvp $00,$00		; 44 00 00
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
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EA.b		; 00 EA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7E.b		; 00 7E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	bne   0.b		; D0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	.db $F5		; Opcode F5 overrunning bank boundry at 13FFFF. Skipping.
.ENDS
