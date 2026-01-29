.BANK 16 SLOT 0
.ORG $0000

.SECTION "Bank16" FORCE

	sbc [$06.b]		; E7 06
	sbc $1FE302.l,X		; FF 02 E3 1F
	adc $611F.w		; 6D 1F 61
	ora $1820.w,Y		; 19 20 18
	ora ($08.b,S),Y		; 13 08
	ora [$0C.b]		; 07 0C
	ora $010319.l,X		; 1F 19 03 01
	ora $02030C.l		; 0F 0C 03 02
	asl $0F08.w		; 0E 08 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	lda $ED21.w		; AD 21 ED
	and ($37.b,X)		; 21 37
	and ($FF.b),Y		; 31 FF
	sbc $44FEC2.l,X		; FF C2 FE 44
	jmp ($3CA4.w,X)		; 7C A4 3C
	cpx $3C.b		; E4 3C
	sbc $DEFFDE.l,X		; FF DE FF DE
	sbc $00FECE.l,X		; FF CE FE 00
	and $AB2C.w		; 2D 2C AB
	plp		; 28
	wai		; CB
	php		; 08
	cmp $00.b,S		; C3 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora ($01.b,X)		; 01 01
	brk $02.b		; 00 02
	ora $04.b		; 05 04
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($02.b,X)		; 01 02
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	and $CC.b,X		; 35 CC
	dec A		; 3A
	dec $7A.b		; C6 7A
	sta [$FD.b]		; 87 FD
	adc $C8CA.w,X		; 7D CA C8
	ldx $86.b,Y		; B6 86
	rtl		; 6B

	adc $31.b,S		; 63 31
	eor ($C3.b),Y		; 51 C3
	brk $C1.b		; 00 C1
	brk $85.b		; 00 85
	ora $7A.b		; 05 7A
	brk $FF.b		; 00 FF
	and [$FD.b],Y		; 37 FD
	sei		; 78
	ror $1F9C.w,X		; 7E 9C 1F
	inc $0000.w		; EE 00 00
	asl $958E.w		; 0E 8E 95
	sbc $7F.b,X		; F5 7F
	adc $3D.b,X		; 75 3D
	and $D5.b,X		; 35 D5
	pea $EA1E.w		; F4 1E EA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1F01.w		; 0E 01 1F
	asl A		; 0A
	sta $0ADF0A.l,X		; 9F 0A DF 0A
	rol $0A2A.w,X		; 3E 2A 0A
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	asl $FC7C.w,X		; 1E 7C FC
	beq  -8.b		; F0 F8
	cpy #$00E0.w		; C0 E0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	sbc $60FE38.l,X		; FF 38 FE 60
	jsr ($F800.w,X)		; FC 00 F8
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0038.w		; 20 38 00
	clc		; 18
	trb $18.b		; 14 18
	trb $18.b		; 14 18
	asl $08.b		; 06 08
	cop $0C.b		; 02 0C
	phb		; 8B
	sty $8C88.w		; 8C 88 8C
	bne  16.b		; D0 10
	beq  16.b		; F0 10
	cpx #$E000.w		; E0 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bit $1B.b		; 24 1B
	adc $5F06.w,Y		; 79 06 5F
	jsr $2857.w		; 20 57 28
	cmp [$38.b]		; C7 38
	sta $8973.w		; 8D 73 89
	bvs -115.b		; 70 8D
	stz $13.b,X		; 74 13
	tsb $1E00.w		; 0C 00 1E
	jsr $281E.w		; 20 1E 28
	ora $38.b,X		; 15 38
	brk $73.b		; 00 73
	ora $77.b,S		; 03 77
	brk $73.b		; 00 73
	brk $35.b		; 00 35
	dex		; CA
	tyx		; BB
	mvn $45,$AA		; 54 AA 45
	lsr $89.b		; 46 89
	cmp [$28.b]		; C7 28
	phy		; 5A
	ldy $D8.b		; A4 D8
	tsb $B0.b		; 04 B0
	cpy $25CA.w		; CC CA 25
	tsb $C3.b		; 04 C3
	eor $80.b,X		; 55 80
	lda $3008.w,Y		; B9 08 30
	brk $B0.b		; 00 B0
	jsr $4830.w		; 20 30 48
	sei		; 78
	bra  95.b		; 80 5F
	and $5F.b,S		; 23 5F
	and [$5F.b]		; 27 5F
	and [$5E.b]		; 27 5E
	rol $7E.b		; 26 7E
	tsb $0C7E.w		; 0C 7E 0C
	bit $3C08.w,X		; 3C 08 3C
	php		; 08
	and $00.b,S		; 23 00
	and [$00.b]		; 27 00
	and [$00.b]		; 27 00
	and [$01.b]		; 27 01
	ora $0D01.w		; 0D 01 0D
	ora ($0B.b,X)		; 01 0B
	ora $0B.b,S		; 03 0B
	ora $29.b,S		; 03 29
	and #$282A.w		; 29 2A 28
	tda		; 7B
	adc #$485A.w		; 69 5A 48
	tad		; 5B
	pha		; 48
	tad		; 5B
	pha		; 48
	stp		; DB
	iny		; C8
	sbc $C4.b,X		; F5 C4
	sbc $FED7.w,Y		; F9 D7 FE
	cmp [$FF.b],Y		; D7 FF
	stx $FF.b,Y		; 96 FF
	lda [$FF.b],Y		; B7 FF
	lda [$FF.b],Y		; B7 FF
	lda [$FF.b],Y		; B7 FF
	and [$FF.b],Y		; 37 FF
	tsa		; 3B
	ply		; 7A
	mvp $64,$7A		; 44 7A 64
	lsr $AE50.w,X		; 5E 50 AE
	tay		; A8
	sta [$84.b],Y		; 97 84
	lda $445780.l		; AF 80 57 44
	stp		; DB
	rti		; 40

	mvp $E4,$80		; 44 80 E4
	bra -16.b		; 80 F0
	ldy #$50F8.w		; A0 F8 50
	cpx $F068.w		; EC 68 F0
	bvs  -4.b		; 70 FC
	clv		; B8
	jsr ($01BC.w,X)		; FC BC 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	clc		; 18
	bra 112.b		; 80 70
	brk $70.b		; 00 70
	bpl -32.b		; 10 E0
	bne -96.b		; D0 A0
	sed		; F8
	cpy #$ACE0.w		; C0 E0 AC
	beq -121.b		; F0 87
	cpx #$E000.w		; E0 00 E0
	rts		; 60

	cpx #$0060.w		; E0 60 00
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	bpl -124.b		; 10 84
	trb $C5F5.w		; 1C F5 C5
	pea $D684.w		; F4 84 D6
	rol $27D8.w		; 2E D8 27
	sed		; F8
	bra 120.b		; 80 78
	rti		; 40

	cpx #$BFA0.w		; E0 A0 BF
	and $8308C2.l		; 2F C2 08 83
	plp		; 28
	sta ($A0.b,X)		; 81 A0
	ldy #$8080.w		; A0 80 80
	jsr $80C0.w		; 20 C0 80
	cpx #$E05F.w		; E0 5F E0
	cmp $5E205E.l,X		; DF 5E 20 5E
	rol $28D8.w		; 2E D8 28
	txs		; 9A
	ror A		; 6A
	ldy $BC40.w,X		; BC 40 BC
	eor #$42A6.w		; 49 A6 42
	lda $012057.l,X		; BF 57 20 01
	rol $2E01.w		; 2E 01 2E
	ora [$6E.b]		; 07 6E
	ora $40.b		; 05 40
	ora $48.b,S		; 03 48
	ora $5A.b,S		; 03 5A
	ora $0057.w,Y		; 19 57 00
	ora [$0C.b]		; 07 0C
	ora $0C.b,S		; 03 0C
	ora ($0C.b,X)		; 01 0C
	ora ($04.b,X)		; 01 04
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
.INDEX 16
	rep #$1E		; C2 1E
.INDEX 16
	rep #$1E		; C2 1E
	dex		; CA
	asl $C9.b,X		; 16 C9
	ora [$E5.b],Y		; 17 E5
	and ($E0.b,S),Y		; 33 E0
	and ($E0.b,S),Y		; 33 E0
	and ($E0.b,S),Y		; 33 E0
	and ($E5.b),Y		; 31 E5
	tsb $E1.b		; 04 E1
	brk $E1.b		; 00 E1
	brk $E2.b		; 00 E2
	cop $C0.b		; 02 C0
	brk $C1.b		; 00 C1
	ora ($C0.b,X)		; 01 C0
	brk $C0.b		; 00 C0
	brk $06.b		; 00 06
	cop $04.b		; 02 04
	ora $18.b		; 05 18
	cop $11.b		; 02 11
	phd		; 0B
	jsl $102D19.l		; 22 19 2D 10
	and $4D10.w		; 2D 10 4D
	bmi   2.b		; 30 02
	ora $010E00.l		; 0F 00 0E 01
	tsb $08.b		; 04 08
	tsb $18.b		; 04 18
	asl $10.b		; 06 10
	ora $10.b,S		; 03 10
	ora $30.b,S		; 03 30
	ora $1E.b,S		; 03 1E
	sep #$4D		; E2 4D
	adc ($D3.b)		; 72 D3
	trb $0671.w		; 1C 71 06
	lsr $2DC3.w,X		; 5E C3 2D
	sbc ($4B.b,X)		; E1 4B
	plx		; FA
	sbc [$0D.b],Y		; F7 0D
	ora $21.b,S		; 03 21
	.db $82, $0C, $E0		; 82 0C E0
	asl $F8.b		; 06 F8
	brk $3C.b		; 00 3C
	brk $1F.b		; 00 1F
	bra   7.b		; 80 07
	cmp ($07.b,X)		; C1 07
	sep #$00		; E2 00
	ora ($43.b,X)		; 01 43
	sta $FF.b,S		; 83 FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $01.b,S		; C3 01
	sbc $E3FFF7.l,X		; FF F7 FF E3
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$C080.w		; C0 80 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $7FF5.w,X		; 3D F5 7F
	sbc $7FFF7F.l,X		; FF 7F FF 7F
	sbc $CE3F3F.l,X		; FF 3F 3F CE
	cmp $4D3232.l		; CF 32 32 4D
	eor $F207.w		; 4D 07 F2
	and $FE3FFC.l,X		; 3F FC 3F FE
	rol $1EFF.w,X		; 3E FF 1E
	sbc $10FF46.l,X		; FF 46 FF 10
	sbc $DFBFC4.l,X		; FF C4 BF DF
	adc $C07F7F.l,X		; 7F 7F 7F C0
	cpy #$3048.w		; C0 48 30
	pha		; 48
	bmi  44.b		; 30 2C
	bpl  36.b		; 10 24
	tya		; 98
	stz $18.b		; 64 18
	cmp $BFDFBF.l,X		; DF BF DF BF
	cpy #$303F.w		; C0 3F 30
	bra  48.b		; 80 30
	bra  16.b		; 80 10
	cpy #$C018.w		; C0 18 C0
	clc		; 18
	bra  60.b		; 80 3C
	brk $DC.b		; 00 DC
	cpx #$E00C.w		; E0 0C E0
	cpy $46E0.w		; CC E0 46
	rts		; 60

	asl $30.b		; 06 30
	ora $30.b,S		; 03 30
	plp		; 28
	bmi -64.b		; 30 C0
	cpy #$00C0.w		; C0 C0 00
	cpy #$00C0.w		; C0 C0 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	cpy #$0000.w		; C0 00 00
	brk $1F.b		; 00 1F
	brk $70.b		; 00 70
	ora $906F90.l		; 0F 90 6F 90
	adc $7E19E6.l		; 6F E6 19 7E
	sta ($5D.b,X)		; 81 5D
	ldx #$0000.w		; A2 00 00
	brk $00.b		; 00 00
	ora $106F00.l		; 0F 00 6F 10
	eor $7B0030.l		; 4F 30 00 7B
	sta ($7A.b,X)		; 81 7A
	ldx #$0054.w		; A2 54 00
	brk $C0.b		; 00 C0
	brk $78.b		; 00 78
	bra   4.b		; 80 04
	sed		; F8
	dec $28.b,X		; D6 28
	inc $AA50.w		; EE 50 AA
	trb $1A.b		; 14 1A
	bit $00.b		; 24 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F8.b		; 00 F8
	brk $28.b		; 00 28
	sty $10.b,X		; 94 10
	tsb $0054.w		; 0C 54 00
	cpx $20.b		; E4 20
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	bit $222C.w		; 2C 2C 22
	and ($0C.b)		; 32 0C
	tsb $0E06.w		; 0C 06 0E
	asl $06.b		; 06 06
	asl $000E.w		; 0E 0E 00
	clc		; 18
	bpl  60.b		; 10 3C
	jsr $207E.w		; 20 7E 20
	adc $063F0C.l,X		; 7F 0C 3F 06
	ora $0C0F06.l,X		; 1F 06 0F 0C
	and $000000.l,X		; 3F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $07.b,S		; 03 07
	ora [$1D.b]		; 07 1D
	ora $2B2A.w,X		; 1D 2A 2B
	sei		; 78
	lsr A		; 4A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	asl $3C00.w,X		; 1E 00 3C
	bpl  76.b		; 10 4C
	brk $16.b		; 00 16
	and ($28.b,S),Y		; 33 28
	adc $C2DF51.l		; 6F 51 DF C2
	inc $EC84.w,X		; FE 84 EC
	ora ($99.b,X)		; 01 99
	ora #$0819.w		; 09 19 08
	ora $010D.w,Y		; 19 0D 01
	trb $04.b		; 14 04
	jsr $2500.w		; 20 00 25
	bit $03.b		; 24 03
	brk $0E.b		; 00 0E
	php		; 08
	asl $00.b		; 06 00
	ora [$01.b]		; 07 01
	ora $0B05.w		; 0D 05 0B
	cop $13.b		; 02 13
	ora #$0319.w		; 09 19 03
	tas		; 1B
	ora $2B.b,S		; 03 2B
	ora ($29.b,S),Y		; 13 29
	ora ($39.b,S),Y		; 13 39
	ora $07.b		; 05 07
	cop $03.b		; 02 03
	ora $09.b		; 05 09
	asl $00.b		; 06 00
	ora $110F01.l		; 0F 01 0F 11
	ora $050F11.l		; 0F 11 0F 05
	tas		; 1B
	sbc $BBF3.w		; ED F3 BB
	and $E9.b,S		; 23 E9
	cmp $28.b,X		; D5 28
	stx $92.b,Y		; 96 92
	lda [$93.b]		; A7 93
	lda [$A3.b]		; A7 A3
	sta [$81.b]		; 87 81
	sta ($E0.b,X)		; 81 E0
	ora [$E1.b]		; 07 E1
	cmp [$D0.b]		; C7 D0
	ora [$10.b]		; 07 10
	cmp [$20.b]		; C7 20
	cmp $91CFA1.l		; CF A1 CF 91
	cmp $E7FFB0.l,X		; DF B0 FF E7
	cld		; D8
	sbc ($CC.b)		; F2 CC
	tyx		; BB
	cpy $5D.b		; C4 5D
	jsl $FDB847.l		; 22 47 B8 FD
.ACCU 16
.INDEX 16
	rep #$F9		; C2 F9
	cpx $F0.b		; E4 F0
	sbc $D1C9.w,Y		; F9 C9 D1
	sta $04D1.w		; 8D D1 04
	cld		; D8
	jsl $843880.l		; 22 80 38 84
	brk $DA.b		; 00 DA
	cpy #$E0E6.w		; C0 E6 E0
	jsr ($20D0.w,X)		; FC D0 20
	bcs  64.b		; B0 40
	beq   0.b		; F0 00
	rts		; 60

	bcc -96.b		; 90 A0
	bvc -32.b		; 50 E0
	bpl -32.b		; 10 E0
	sec		; 38
	stz $009C.w		; 9C 9C 00
	jsr $2040.w		; 20 40 20
	brk $60.b		; 00 60
	bra   0.b		; 80 00
	rti		; 40

	bra   0.b		; 80 00
	cpy #$1010.w		; C0 10 10
	jmp ($EA00.w)		; 6C 00 EA
	plp		; 28
	wai		; CB
	rti		; 40

	wai		; CB
	rti		; 40

	tda		; 7B
	bcs 124.b		; B0 7C
	sty $7F.b		; 84 7F
	sta $3E.b,S		; 83 3E
	cmp ($BF.b,X)		; C1 BF
	rti		; 40

	and $377717.l,X		; 3F 17 77 37
	adc [$37.b],Y		; 77 37
	lda [$07.b],Y		; B7 07
	sta [$03.b]		; 87 03
	sta $00.b,S		; 83 00
	cpy #$4000.w		; C0 00 40
	brk $B6.b		; 00 B6
	bra -67.b		; 80 BD
	bra  95.b		; 80 5F
	eor $AB.b,S		; 43 AB
	and $FE.b,S		; 23 FE
	inc $FFCF.w,X		; FE CF FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $FE79.w,Y		; F9 79 FE
	ror $BCFF.w,X		; 7E FF BC
	inc $FDDC.w,X		; FE DC FD
	brk $F0.b		; 00 F0
	bmi   7.b		; 30 07
	ora [$78.b]		; 07 78
	sei		; 78
	bvs  14.b		; 70 0E
	stz $5C7F.w		; 9C 7F 5C
	cpy #$007F.w		; C0 7F 00
	adc $003F00.l,X		; 7F 00 3F 00
	sbc ($FF.b,X)		; E1 FF
	cop $FE.b		; 02 FE
	bra -128.b		; 80 80
	.db $62, $62, $BF		; 62 62 BF
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $1A.b		; 00 1A
	inc A		; 1A
	ora $04.b		; 05 04
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	ldy #$D030.w		; A0 30 D0
	clc		; 18
	bne  24.b		; D0 18
	bcc -104.b		; 90 98
	cpy #$0018.w		; C0 18 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $F0.b		; 00 F0
	bpl   0.b		; 10 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $1C.b		; 00 1C
	ora $60.b,S		; 03 60
	ora $2B03FC.l,X		; 1F FC 03 2B
	pei ($4F.b)		; D4 4F
	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	brk $03.b		; 00 03
	bit $3EC0.w,X		; 3C C0 3E
	bcs  78.b		; B0 4E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	cpx #$FBF0.w		; E0 F0 FB
	sbc $000707.l,X		; FF 07 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F000.w		; C0 00 F0
	cpy #$31FF.w		; C0 FF 31
	sbc $00FF03.l,X		; FF 03 FF 00
	ora [$00.b]		; 07 00
	ora ($24.b,X)		; 01 24
	tas		; 1B
	trb $0B.b		; 14 0B
	ora ($0D.b)		; 12 0D
	asl A		; 0A
	ora $0A.b		; 05 0A
	ora $06.b		; 05 06
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	brk $1B.b		; 00 1B
	brk $0B.b		; 00 0B
	brk $0D.b		; 00 0D
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	beq -96.b		; F0 A0
	bcs   0.b		; B0 00
	bmi  64.b		; 30 40
	rts		; 60

	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rti		; 40

	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	cpy #$40C0.w		; C0 C0 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	rti		; 40

	cpx #$E000.w		; E0 00 E0
	jmp $3C380E.l		; 5C 0E 38 3C
	bit $2C3C.w,X		; 3C 3C 2C
	bit $2838.w		; 2C 38 28
	plp		; 28
	plp		; 28
	plp		; 28
	plp		; 28
	bpl  16.b		; 10 10
	php		; 08
	brk $30.b		; 00 30
	brk $34.b		; 00 34
	brk $3C.b		; 00 3C
	bpl  56.b		; 10 38
	bpl  56.b		; 10 38
	bpl  56.b		; 10 38
	bpl  16.b		; 10 10
	brk $02.b		; 00 02
	ora ($00.b,S),Y		; 13 00
	and ($14.b,S),Y		; 33 14
	rol $10.b,X		; 36 10
	rol $08.b,X		; 36 08
	bit $6C00.w		; 2C 00 6C
	brk $68.b		; 00 68
	bmi 120.b		; 30 78
	tsb $1E00.w		; 0C 00 1E
	ora ($08.b)		; 12 08
	brk $0C.b		; 00 0C
	tsb $10.b		; 04 10
	brk $38.b		; 00 38
	plp		; 28
	bmi  32.b		; 30 20
	brk $00.b		; 00 00
	and $5005.w,Y		; 39 05 50
	and $2C52.w		; 2D 52 2C
	eor ($2C.b)		; 52 2C
	eor ($2C.b,S),Y		; 53 2C
	eor ($3E.b,X)		; 41 3E
	and ($1E.b,X)		; 21 1E
	and ($1E.b,X)		; 21 1E
	tsb $1B.b		; 04 1B
	bit $2C13.w		; 2C 13 2C
	ora ($2C.b),Y		; 11 2C
	ora ($2C.b),Y		; 11 2C
	bpl  62.b		; 10 3E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $B2.b		; 00 B2
	ldx $B9.b		; A6 B9
	cmp #$CADA.w		; C9 DA CA
	lsr A		; 4A
	nop		; EA
	adc ($72.b)		; 72 72
	adc ($71.b),Y		; 71 71
	and ($71.b,S),Y		; 33 71
	phb		; 8B
	ora #$CFA0.w		; 09 A0 CF
	ora #$0EC7.w		; 09 C7 0E
	sbc $0F.b		; E5 0F
	sbc $07.b,X		; F5 07
	sbc $FE67.w,X		; FD 67 FE
	and [$FE.b],Y		; 37 FE
	ora $706076.l		; 0F 76 60 70
	bcc -128.b		; 90 80
	mvp $8C,$60		; 44 60 8C
	dey		; 88
	ror $2E64.w		; 6E 64 2E
	jsr $1055.w		; 20 55 10
	rtl		; 6B

	php		; 08
	rti		; 40

	sed		; F8
	bra  -8.b		; 80 F8
	brk $F8.b		; 00 F8
	dey		; 88
	bvs -12.b		; 70 F4
	bcc  -8.b		; 90 F8
	cld		; D8
	inc $FFEE.w,X		; FE EE FF
	sbc [$5C.b],Y		; F7 5C
	pei ($34.b)		; D4 34
	adc [$2B.b]		; 67 2B
	and $001F1B.l		; 2F 1B 1F 00
	ora ($00.b,X)		; 01 00
	brk $C0.b		; 00 C0
	brk $B0.b		; 00 B0
	brk $3C.b		; 00 3C
	phd		; 0B
	bit $3B1B.w,X		; 3C 1B 3B
	ora [$19.b],Y		; 17 19
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	brk $C0.b		; 00 C0
	cpy #$609B.w		; C0 9B 60
	lsr A		; 4A
	bmi  80.b		; 30 50
	jsr $0030.w		; 20 30 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	adc $097010.l,X		; 7F 10 70 09
	and $1F02.w,Y		; 39 02 1F
	ora ($0F.b,X)		; 01 0F
	cop $06.b		; 02 06
	ora $0C.b		; 05 0C
	asl A		; 0A
	clc		; 18
	jsr $2F20.w		; 20 20 2F
	jsr $1016.w		; 20 16 10
	tsb $000C.w		; 0C 0C 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $DB.b		; 00 DB
	sed		; F8
	lda $C15DE0.l		; AF E0 5D C1
	tsx		; BA
	sta $68.b,S		; 83 68
	asl $1CD0.w		; 0E D0 1C
	rti		; 40

	sei		; 78
	bra -16.b		; 80 F0
	ora [$00.b]		; 07 00
	ora $003E00.l,X		; 1F 00 3E 00
	jmp ($F400.w,X)		; 7C 00 F4
	tsb $E0.b		; 04 E0
	brk $A0.b		; 00 A0
	jsr $0000.w		; 20 00 00
	ldy #$0030.w		; A0 30 00
	rts		; 60

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	ora $02.b		; 05 02
	phd		; 0B
	tsb $0E.b		; 04 0E
	ora ($18.b,X)		; 01 18
	ora [$10.b]		; 07 10
	ora $430E31.l		; 0F 31 0E 43
	sec		; 38
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora $100E00.l		; 0F 00 0E 10
	sec		; 38
	tsb $8F.b		; 04 8F
	bvs -113.b		; 70 8F
	bvs -53.b		; 70 CB
	and $17.b,X		; 35 17
	cpx $33.b		; E4 33
	cpy #$8C75.w		; C0 75 8C
	sbc ($0E.b,S),Y		; F3 0E
	sbc $70FF.w,Y		; F9 FF 70
	ora $0870.w		; 0D 70 08
	and ($01.b),Y		; 31 01
	xba		; EB
	brk $CF.b		; 00 CF
	brk $83.b		; 00 83
	brk $09.b		; 00 09
	php		; 08
	pea $0004.w		; F4 04 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $38.b		; 00 38
	cpy #$F804.w		; C0 04 F8
	sbc ($0C.b)		; F2 0C
	sta $DD62.w,X		; 9D 62 DD
	jsl $000000.l		; 22 00 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F8.b		; 00 F8
	brk $0C.b		; 00 0C
	beq  34.b		; F0 22
	pei ($22.b)		; D4 22
	cpy $3E.b		; C4 3E
	bne  -6.b		; D0 FA
	trb $6C.b		; 14 6C
	bcs -64.b		; B0 C0
	bpl -80.b		; 10 B0
	cld		; D8
	cpy #$0010.w		; C0 10 00
	bvs -64.b		; 70 C0
	rts		; 60

	cpy #$0404.w		; C0 04 04
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	rti		; 40

	rts		; 60

	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	rts		; 60

	bra   0.b		; 80 00
	ora $02.b		; 05 02
	asl A		; 0A
	ora $0F.b		; 05 0F
	brk $16.b		; 00 16
	ora #$0719.w		; 09 19 07
	and $0C.b,X		; 35 0C
	rtl		; 6B

	plp		; 28
	adc $0225.w		; 6D 25 02
	ora ($05.b,X)		; 01 05
	cop $00.b		; 02 00
	tsb $08.b		; 04 08
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $3F.b		; 00 3F
	bpl  62.b		; 10 3E
	clc		; 18
	php		; 08
	tay		; A8
	ora [$14.b],Y		; 17 14
	phk		; 4B
	lsr A		; 4A
	pld		; 2B
	lda #$2823.w		; A9 23 28
	sta $50.b,S		; 83 50
	ora $64.b,S		; 03 64
	rol $8F9D.w		; 2E 9D 8F
	adc [$07.b],Y		; 77 07
	xce		; FB
	phd		; 0B
	sbc $FCA1.w,X		; FD A1 FC
	bra 126.b		; 80 7E
	cpy #$807E.w		; C0 7E 80
	ora $7D00.w,X		; 1D 00 7D
	ldy #$9CBE.w		; A0 BE 9C
	jmp.w [$686A]		; DC 6A 68
	dex		; CA
	pla		; 68
	tsx		; BA
	clv		; B8
	ror $BEBC.w		; 6E BC BE
	pha		; 48
	tda		; 7B
	sty $D0.b		; 84 D0
	bvc  -4.b		; 50 FC
	rts		; 60

	jmp.w [$FC84]		; DC 84 FC
	ldy $EC.b		; A4 EC
	mvp $10,$BC		; 44 BC 10
	pha		; 48
	sta ($14.b,X)		; 81 14
	cmp ($10.b)		; D2 10
	bit $3810.w,X		; 3C 10 38
	bpl 120.b		; 10 78
	bmi 120.b		; 30 78
	jsr $C068.w		; 20 68 C0
	inx		; E8
	cpy #$B0E8.w		; C0 E8 B0
	clv		; B8
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	jsr $0020.w		; 20 20 00
	brk $10.b		; 00 10
	brk $F0.b		; 00 F0
	jsr $20F0.w		; 20 F0 20
	cpx #$B040.w		; E0 40 B0
	sec		; 38
	cpy #$B818.w		; C0 18 B8
	trb $0C28.w		; 1C 28 0C
	rol $1D0E.w		; 2E 0E 1D
	ora ($0F.b,X)		; 01 0F
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rti		; 40

	bmi  48.b		; 30 30
	bpl   0.b		; 10 00
	clc		; 18
	bpl  30.b		; 10 1E
	bpl  15.b		; 10 0F
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	cop $06.b		; 02 06
	tsb $0C.b		; 04 0C
	ora $18.b,S		; 03 18
	ora [$10.b]		; 07 10
	asl $30.b,X		; 16 30
	ora $000021.l		; 0F 21 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $000F08.l		; 0F 08 0F 00
	ora $001E00.l		; 0F 00 1E 00
	cpy #$E018.w		; C0 18 E0
	bmi  32.b		; 30 20
	bmi   0.b		; 30 00
	bmi  64.b		; 30 40
	rts		; 60

	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	beq  16.b		; F0 10
	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	rti		; 40

	cpy $00.b		; C4 00
	cpy $20.b		; C4 20
	cpx $20.b		; E4 20
	stz $28.b		; 64 28
	ror $EE28.w		; 6E 28 EE
	jsr $04E6.w		; 20 E6 04
	dec $38.b		; C6 38
	brk $78.b		; 00 78
	rti		; 40

	cli		; 58
	rti		; 40

	clc		; 18
	brk $14.b		; 00 14
	tsb $14.b		; 04 14
	tsb $5C.b		; 04 5C
	mvp $40,$78		; 44 78 40
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	ora ($06.b,X)		; 01 06
	ora $06.b,S		; 03 06
	ora ($04.b,X)		; 01 04
	cop $0C.b		; 02 0C
	ora [$0D.b]		; 07 0D
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	cop $00.b		; 02 00
	rts		; 60

	tsb $18F0.w		; 0C F0 18
	cpy #$8010.w		; C0 10 80
	bmi -64.b		; 30 C0
	rts		; 60

	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	sed		; F8
	php		; 08
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	mvp $44,$C6		; 44 C6 44
	dec $04.b		; C6 04
	dec $20.b		; C6 20
.ACCU 8
	sep #$20		; E2 20
	.db $62, $00, $62		; 62 00 62
	brk $62.b		; 00 62
	bpl  50.b		; 10 32
	sec		; 38
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	rti		; 40

	jmp $001C40.l		; 5C 40 1C 00
	bit $3C20.w,X		; 3C 20 3C
	jsr $000C.w		; 20 0C 00
	tsb $19.b		; 04 19
	asl $001B.w		; 0E 1B 00
	ora ($04.b)		; 12 04
	rol $10.b,X		; 36 10
	bit $08.b,X		; 34 08
	bit $6820.w		; 2C 20 68
	bpl  88.b		; 10 58
	asl $0408.w		; 0E 08 04
	brk $0C.b		; 00 0C
	brk $18.b		; 00 18
	bpl   8.b		; 10 08
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	and ($00.b)		; 32 00
	ora ($00.b)		; 12 00
	ora ($08.b)		; 12 08
	inc A		; 1A
	brk $1A.b		; 00 1A
	brk $0B.b		; 00 0B
	cop $0B.b		; 02 0B
	cop $0B.b		; 02 0B
	trb $0C10.w		; 1C 10 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	php		; 08
	asl $02.b		; 06 02
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	brk $58.b		; 00 58
	bcc -40.b		; 90 D8
	bne -40.b		; D0 D8
	inx		; E8
	pla		; 68
	ldy $DC3C.w,X		; BC 3C DC
	tsb $A6.b		; 04 A6
	jsl $303E3E.l		; 22 3E 3E 30
	bpl -32.b		; 10 E0
	rti		; 40

	cpx #$5800.w		; E0 00 58
	brk $7C.b		; 00 7C
	rti		; 40

	bit $3E38.w,X		; 3C 38 3E
	trb $003E.w		; 1C 3E 00
	clc		; 18
	ora $1717.w,X		; 1D 17 17
	ora $17.b,X		; 15 17
	tas		; 1B
	tas		; 1B
	ora $080D09.l		; 0F 09 0D 08
	tsb $0008.w		; 0C 08 00
	brk $1F.b		; 00 1F
	ora $1C.b		; 05 1C
	php		; 08
	asl $1F0A.w,X		; 1E 0A 1F
	tsb $09.b		; 04 09
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$E0C0.w		; C0 C0 E0
	beq -16.b		; F0 F0
	plp		; 28
	php		; 08
	sed		; F8
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	sed		; F8
	beq 120.b		; F0 78
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	cop $02.b		; 02 02
	asl $04.b		; 06 04
	tsb $1803.w		; 0C 03 18
	phd		; 0B
	clc		; 18
	ora [$30.b]		; 07 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $000708.l		; 0F 08 07 00
	ora $31E010.l,X		; 1F 10 E0 31
	cpx #$0030.w		; E0 30 00
	bmi   0.b		; 30 00
	jsr $6040.w		; 20 40 60
	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	bra   0.b		; 80 00
	cpy #$0040.w		; C0 40 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	sty $40.b		; 84 40
	dec $20.b		; C6 20
	inc $28.b		; E6 28
	ror $6E0C.w		; 6E 0C 6E
	bit $66.b		; 24 66
	jsr $2063.w		; 20 63 20
	adc $F8.b,S		; 63 F8
	bra  60.b		; 80 3C
	tsb $5C.b		; 04 5C
	mvp $04,$14		; 44 14 04
	bmi  32.b		; 30 20
	clc		; 18
	brk $1E.b		; 00 1E
	cop $1E.b		; 02 1E
	cop $04.b		; 02 04
	dec $24.b		; C6 24
	inc $20.b		; E6 20
	.db $62, $00, $62		; 62 00 62
	brk $63.b		; 00 63
	ora ($33.b)		; 12 33
	cop $33.b		; 02 33
	php		; 08
	ora $4078.w,Y		; 19 78 40
	cli		; 58
	rti		; 40

	trb $3C00.w		; 1C 00 3C
	jsr $223E.w		; 20 3E 22
	tsb $1C00.w		; 0C 00 1C
	bpl   6.b		; 10 06
	brk $00.b		; 00 00
	stz $10.b		; 64 10
	bit $00.b,X		; 34 00
	rol $04.b,X		; 36 04
	asl $08.b,X		; 16 08
	inc A		; 1A
	brk $1A.b		; 00 1A
	brk $0B.b		; 00 0B
	asl $0F.b		; 06 0F
	sec		; 38
	jsr $0008.w		; 20 08 00
	trb $0814.w		; 1C 14 08
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	php		; 08
	asl $02.b		; 06 02
	brk $00.b		; 00 00
	clc		; 18
	ora $1717.w,X		; 1D 17 17
	ora $17.b,X		; 15 17
	tas		; 1B
	tas		; 1B
	ora $080D09.l		; 0F 09 0D 08
	tsb $0008.w		; 0C 08 00
	brk $1F.b		; 00 1F
	ora $1C.b		; 05 1C
	php		; 08
	asl $1F0A.w,X		; 1E 0A 1F
	tsb $09.b		; 04 09
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$E0C0.w		; C0 C0 E0
	beq -16.b		; F0 F0
	plp		; 28
	php		; 08
	sed		; F8
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	sed		; F8
	beq 120.b		; F0 78
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	bit $6C48.w		; 2C 48 6C
	pla		; 68
	jmp ($3474.w)		; 6C 74 34
	lsr $6E1E.w,X		; 5E 1E 6E
	cop $53.b		; 02 53
	ora ($1F.b),Y		; 11 1F
	ora $700010.l,X		; 1F 10 00 70
	jsr $0070.w		; 20 70 00
	bit $3E00.w		; 2C 00 3E
	jsr $1C1E.w		; 20 1E 1C
	ora $001F0E.l,X		; 1F 0E 1F 00
	clc		; 18
	and ($0C.b)		; 32 0C
	rol $10.b		; 26 10
	bit $18.b		; 24 18
	jmp ($6C20.w)		; 6C 20 6C
	brk $48.b		; 00 48
	bpl -40.b		; 10 D8
	rti		; 40

	cld		; D8
	tsb $1800.w		; 0C 00 18
	brk $18.b		; 00 18
	brk $30.b		; 00 30
	jsr $0818.w		; 20 18 08
	bmi   0.b		; 30 00
	rts		; 60

	rti		; 40

	bmi  16.b		; 30 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $30.b		; 06 30
	ora $610C31.l,X		; 1F 31 0C 61
	asl $3863.w		; 0E 63 38
	.db $62, $3C, $66		; 62 3C 66
	bpl  68.b		; 10 44
	clc		; 18
	cpy $101F.w		; CC 1F 10
	asl $3E00.w		; 0E 00 3E
	jsr $203C.w		; 20 3C 20
	trb $1800.w		; 1C 00 18
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	rti		; 40

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
	asl A		; 0A
	ora $14.b		; 05 14
	phd		; 0B
	ora ($0E.b),Y		; 11 0E
	and $1C.b,S		; 23 1C
	and $1C.b,S		; 23 1C
	and [$18.b]		; 27 18
	eor $38.b		; 45 38
	eor #$30.b		; 49 30
	ora $02.b		; 05 02
	phd		; 0B
	tsb $0E.b		; 04 0E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	sta $C81BE4.l		; 8F E4 1B C8
	and [$99.b],Y		; 37 99
	ror $B3.b		; 66 B3
	jmp $CC33.w		; 4C 33 CC
	adc [$98.b]		; 67 98
	adc $008F90.l		; 6F 90 8F 00
	tas		; 1B
	tsb $37.b		; 04 37
	php		; 08
	ror $18.b		; 66 18
	jmp $CC30.w		; 4C 30 CC
	bmi -104.b		; 30 98
	rts		; 60

	bcc  96.b		; 90 60
	sbc $1C.b,S		; E3 1C
	sta [$78.b]		; 87 78
	asl $1EF0.w		; 0E F0 1E
	sbc ($3E.b,X)		; E1 3E
	cmp ($3D.b,X)		; C1 3D
	cmp $7D.b,S		; C3 7D
	sta $FC.b,S		; 83 FC
	cop $1C.b		; 02 1C
	brk $78.b		; 00 78
	brk $F0.b		; 00 F0
	ora ($E0.b,X)		; 01 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $01.b		; 00 01
	brk $D6.b		; 00 D6
	bpl 115.b		; 10 73
	bvs -100.b		; 70 9C
	stz $526E.w		; 9C 6E 52
	lda $12A3.w,X		; BD A3 12
	ora $2A95.w		; 0D 95 2A
	dec $1F61.w,X		; DE 61 1F
	and $0FEF3F.l		; 2F 3F EF 0F
	sbc ($43.b,S),Y		; F3 43
	sbc ($03.b),Y		; F1 03
	jmp ($2EC1.w)		; 6C C1 2E
	rep #$0C		; C2 0C
	sta ($0E.b,X)		; 81 0E
	plb		; AB
	dey		; 88
	lsr $FD58.w,X		; 5E 58 FD
	adc ($77.b),Y		; 71 77
	rol $DF.b		; 26 DF
	bcc -23.b		; 90 E9
	asl $F4.b,X		; 16 F4
	php		; 08
	plb		; AB
	ora ($FF.b,S),Y		; 13 FF
	adc [$EF.b],Y		; 77 EF
	sta [$DF.b]		; 87 DF
	stx $D8FE.w		; 8E FE D8
	bcs  38.b		; B0 26
	bvc  78.b		; 50 4E
	pha		; 48
	eor [$51.b]		; 47 51
	eor $208080.l		; 4F 80 80 20
	rts		; 60

	bvc  80.b		; 50 50
	jsr $1028.w		; 20 28 10
	cli		; 58
	brk $08.b		; 00 08
	plp		; 28
	jmp ($8480.w)		; 6C 80 84
	bra 112.b		; 80 70
	brk $F8.b		; 00 F8
	rti		; 40

	sed		; F8
	jsr $00F0.w		; 20 F0 00
	cpx #$C030.w		; E0 30 C0
	bpl -128.b		; 10 80
	tya		; 98
	cpx #$0000.w		; E0 00 00
	ora [$00.b]		; 07 00
	clc		; 18
	ora [$23.b]		; 07 23
	trb $122D.w		; 1C 2D 12
	eor $2D5230.l		; 4F 30 52 2D
	sbc $1A.b		; E5 1A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	trb $1003.w		; 1C 03 10
	ora $2D0F30.l		; 0F 30 0F 2D
	ora ($1A.b)		; 12 1A
	jsr $0000.w		; 20 00 00
	cpx #$F800.w		; E0 00 F8
	brk $CE.b		; 00 CE
	bmi  82.b		; 30 52
	ldy $827D.w		; AC 7D 82
	sbc $AF02.w,X		; FD 02 AF
	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F800.w		; E0 00 F8
	ldy $58.b		; A4 58
	.db $82, $5C, $02		; 82 5C 02
	jmp $1450.w		; 4C 50 14
	sta ($02.b)		; 92 02
	cmp ($13.b,S),Y		; D3 13
	dec $600F.w		; CE 0F 60
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $18.b		; 00 18
	ora $0F1F79.l,X		; 1F 79 1F 0F
	ora $0C1F.w		; 0D 1F 0C
	ora $010101.l		; 0F 01 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $1E.b		; 00 1E
	asl $B7.b		; 06 B7
	inc $CF4D.w,X		; FE 4D CF
	tsx		; BA
	sta $BD.b,S		; 83 BD
	sta ($5E.b,X)		; 81 5E
	cpy #$C05F.w		; C0 5F C0
	and $F097E0.l		; 2F E0 97 F0
	dec $B348.w		; CE 48 B3
	.db $82, $7D, $01		; 82 7D 01
	ror $BF00.w,X		; 7E 00 BF
	bra  63.b		; 80 3F
	brk $1F.b		; 00 1F
	brk $4F.b		; 00 4F
	rti		; 40

	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora $10EF00.l,X		; 1F 00 EF 10
	asl $7CE1.w,X		; 1E E1 7C
	sta $CF.b,S		; 83 CF
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $E1.b		; 00 E1
	brk $83.b		; 00 83
	brk $30.b		; 00 30
	brk $94.b		; 00 94
	phd		; 0B
	sty $0B.b,X		; 94 0B
	sty $0B.b,X		; 94 0B
	bcc  15.b		; 90 0F
	bcc  15.b		; 90 0F
	dey		; 88
	ora [$88.b]		; 07 88
	ora [$08.b]		; 07 08
	ora [$0B.b]		; 07 0B
	tsb $0B.b		; 04 0B
	tsb $0B.b		; 04 0B
	tsb $0F.b		; 04 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $E7.b		; 00 E7
	clc		; 18
	cmp $30CE30.l		; CF 30 CE 30
	cmp $9930.w		; CD 30 99
	rts		; 60

	sta $9160.w,Y		; 99 60 91
	rts		; 60

	sta ($60.b),Y		; 91 60
	clc		; 18
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $F8.b		; 00 F8
	brk $FB.b		; 00 FB
	cop $FB.b		; 02 FB
	ora ($FF.b,X)		; 01 FF
	ora $FA.b,S		; 03 FA
	php		; 08
	inc $12.b,X		; F6 12
	pea $DD10.w		; F4 10 DD
	ora $00.b		; 05 00
	ora [$06.b]		; 07 06
	tsb $05.b		; 04 05
	tsb $03.b		; 04 03
	brk $0D.b		; 00 0D
	ora $1B.b		; 05 1B
	ora #$1B.b		; 09 1B
	phd		; 0B
	ora [$02.b]		; 07 02
	and [$E7.b]		; 27 E7
	stp		; DB
	tyx		; BB
	adc $45.b,X		; 75 45
	eor ($52.b)		; 52 52
	adc $AC51.w,Y		; 79 51 AC
	dey		; 88
	sbc $346E80.l,X		; FF 80 6E 34
	ora [$FF.b]		; 07 FF
	phb		; 8B
	and $FA8FC4.l,X		; 3F C4 8F FA
	lda $FEAFFD.l		; AF FD AF FE
	adc [$E6.b],Y		; 77 E6
	ror $F7.b		; 66 F7
	cmp ($80.b,S),Y		; D3 80
	cpy #$A000.w		; C0 00 A0
	cli		; 58
	bvc -84.b		; 50 AC
	tay		; A8
	rol $24.b		; 26 24
	ldx $A4.b		; A6 A4
	sta ($92.b,S),Y		; 93 92
	cmp ($50.b,S),Y		; D3 50
	bra -16.b		; 80 F0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	clv		; B8
	bne 124.b		; D0 7C
	cld		; D8
	jsr ($FE58.w,X)		; FC 58 FE
	jmp ($2C7C.w)		; 6C 7C 2C
	lsr A		; 4A
	and ($4A.b),Y		; 31 4A
	and ($52.b),Y		; 31 52
	and ($52.b,X)		; 21 52
	and ($52.b,X)		; 21 52
	and ($52.b,X)		; 21 52
	and ($32.b,X)		; 21 32
	ora ($32.b,X)		; 01 32
	ora ($31.b,X)		; 01 31
	brk $31.b		; 00 31
	brk $21.b		; 00 21
	brk $21.b		; 00 21
	brk $21.b		; 00 21
	brk $21.b		; 00 21
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $4F.b		; 00 4F
	bcs -50.b		; B0 CE
	and ($DC.b),Y		; 31 DC
	and $9C.b,S		; 23 9C
	adc $99.b,S		; 63 99
	ror $99.b		; 66 99
	ror $19.b		; 66 19
	inc $13.b		; E6 13
	cpx $40B0.w		; EC B0 40
	and ($C0.b),Y		; 31 C0
	and $C0.b,S		; 23 C0
	adc $80.b,S		; 63 80
	ror $80.b		; 66 80
	ror $80.b		; 66 80
	inc $00.b		; E6 00
	cpx $F900.w		; EC 00 F9
	tsb $FE.b		; 04 FE
	asl $11F5.w		; 0E F5 11
	sbc [$17.b],Y		; F7 17
	inc $EF1F.w,X		; FE 1F EF
	ora $F00FE7.l		; 0F E7 0F F0
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	asl $081F.w		; 0E 1F 08
	asl $0607.w,X		; 1E 07 06
	ora $001F00.l,X		; 1F 00 1F 00
	ora $8E4E11.l		; 0F 11 4E 8E
	cmp ($11.b),Y		; D1 11
	stx $8CF3.w		; 8E F3 8C
	ora $77F703.l		; 0F 03 F7 77
	adc [$F7.b],Y		; 77 F7
	sbc $E3.b,S		; E3 E3
	stx $0120.w		; 8E 20 01
	bmi  14.b		; 30 0E
	and ($8C.b,X)		; 21 8C
	brk $01.b		; 00 01
	sbc ($31.b,S),Y		; F3 31
	sbc $63FF63.l,X		; FF 63 FF 63
	sbc $6303FB.l,X		; FF FB 03 63
	txy		; 9B
	bcs 108.b		; B0 6C
	sbc $FFF6.w,Y		; F9 F6 FF
	sed		; F8
	sed		; F8
	jsr ($F8FC.w,X)		; FC FC F8
	sed		; F8
	sed		; F8
	ora $07.b,S		; 03 07
	txy		; 9B
	ora [$0C.b]		; 07 0C
	adc $66.b,S		; 63 66
	beq -16.b		; F0 F0
	sed		; F8
	beq  -2.b		; F0 FE
	beq  -2.b		; F0 FE
	beq  -4.b		; F0 FC
	cpy #$B0E4.w		; C0 E4 B0
	pea $7A30.w		; F4 30 7A
	ora ($3A.b)		; 12 3A
	asl A		; 0A
	asl A		; 0A
	and ($32.b)		; 32 32
	tsb $000C.w		; 0C 0C 00
	brk $88.b		; 00 88
	beq  32.b		; F0 20
	sed		; F8
	bpl  -4.b		; 10 FC
	cop $7C.b		; 02 7C
	asl $3E34.w		; 0E 34 3E
	tsb $000C.w		; 0C 0C 00
	brk $00.b		; 00 00
	sta [$78.b]		; 87 78
	sta $669772.l		; 8F 72 97 66
	ora ($E1.b,S),Y		; 13 E1
	and $CC.b,X		; 35 CC
	dec A		; 3A
	dec $B8.b		; C6 B8
	eor $78E666.l,X		; 5F 66 E6 78
	brk $70.b		; 00 70
	cop $6A.b		; 02 6A
	cop $EF.b		; 02 EF
	ora ($C3.b,X)		; 01 C3
	brk $C1.b		; 00 C1
	brk $5C.b		; 00 5C
	tsb $FD.b		; 04 FD
	clc		; 18
	plx		; FA
	stz $54.b,X		; 74 54
	dey		; 88
	beq   8.b		; F0 08
	cpx #$8018.w		; E0 18 80
	plp		; 28
	cpy #$8070.w		; C0 70 80
	bcs  12.b		; B0 0C
	cpx $0004.w		; EC 04 00
	ldy #$6000.w		; A0 00 60
	bcc 112.b		; 90 70
	brk $F0.b		; 00 F0
	jsr $20A0.w		; 20 A0 20
	rts		; 60

	jsr $101C.w		; 20 1C 10
	and [$1F.b],Y		; 37 1F
	sec		; 38
	and $785C54.l,X		; 3F 54 5C 78
	cli		; 58
	pla		; 68
	pha		; 48
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	php		; 08
	bit $04.b,X		; 34 04
	jmp ($7828.w,X)		; 7C 28 78
	jsr $3078.w		; 20 78 30
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp #$F8.b		; C9 F8
	ora $FF.b,S		; 03 FF
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and [$20.b]		; 27 20
	jmp ($007C.w,X)		; 7C 7C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	ora ($09.b,X)		; 01 09
	asl $17.b		; 06 17
	php		; 08
	bit $5913.w		; 2C 13 59
	rol $00.b		; 26 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	ora ($08.b,X)		; 01 08
	ora [$13.b]		; 07 13
	tsb $1826.w		; 0C 26 18
	ora #$06.b		; 09 06
	ora #$06.b		; 09 06
	ora $02.b		; 05 02
	ora $02.b		; 05 02
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($C0.b,X)		; 21 C0
	and ($C0.b,X)		; 21 C0
	ldy #$A040.w		; A0 40 A0
	rti		; 40

	bvs   0.b		; 70 00
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
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
	brk $80.b		; 00 80
	bra  96.b		; 80 60
	cpx #$1010.w		; E0 10 10
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rts		; 60

	brk $F0.b		; 00 F0
	cpx #$00F0.w		; E0 F0 00
	ora [$00.b]		; 07 00
	sei		; 78
	ora [$89.b]		; 07 89
	ror $77.b,X		; 76 77
	dey		; 88
	cpy $3833.w		; CC 33 38
	cmp [$F0.b]		; C7 F0
	ora $003EC1.l		; 0F C1 3E 00
	brk $07.b		; 00 07
	brk $76.b		; 00 76
	php		; 08
	dey		; 88
	bvs  51.b		; 70 33
	cpy #$00C7.w		; C0 C7 00
	ora $003E00.l		; 0F 00 3E 00
	nop		; EA
	stz $B0.b		; 64 B0
	jmp ($7CF8.w,X)		; 7C F8 7C
	plp		; 28
	inc $E6A0.w		; EE A0 E6
	tsb $66.b		; 04 66
	cpy $66.b		; C4 66
	bra  35.b		; 80 23
	bvs  16.b		; 70 10
	sei		; 78
	pha		; 48
	brk $00.b		; 00 00
	mvn $1C,$44		; 54 44 1C
	tsb $B8.b		; 04 B8
	jsr $0098.w		; 20 98 00
	dec $8002.w,X		; DE 02 80
	and $82.b,S		; 23 82
	sbc $02.b,S		; E3 02
	sbc $12.b,S		; E3 12
	adc ($0C.b,S),Y		; 73 0C
	and $071F00.l,X		; 3F 00 1F 07
	ora [$01.b]		; 07 01
	ora ($DE.b,X)		; 01 DE
	cop $1C.b		; 02 1C
	brk $3C.b		; 00 3C
	jsr $202C.w		; 20 2C 20
	ora ($12.b)		; 12 12
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	ora #$06.b		; 09 06
	ora #$06.b		; 09 06
	ora #$06.b		; 09 06
	ora ($0E.b),Y		; 11 0E
	ora ($0E.b),Y		; 11 0E
	ora ($0C.b,S),Y		; 13 0C
	ora ($0C.b,S),Y		; 13 0C
	ora ($0C.b,S),Y		; 13 0C
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $0E00.w		; 0E 00 0E
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $9D.b		; 00 9D
	tsb $D4F6.w		; 0C F6 D4
	inc $D4.b,X		; F6 D4
	nop		; EA
	tay		; A8
	sbc $11D529.l		; EF 29 D5 11
	cmp $11.b,X		; D5 11
	sbc $01.b,X		; F5 01
	ora $0BDF63.l		; 0F 63 DF 0B
	cmp $17BF0B.l,X		; DF 0B BF 17
	and $2E3F16.l,X		; 3F 16 3F 2E
	and $0E0F2E.l,X		; 3F 2E 0F 0E
	.db $42, $42		; 42 42
	lda $8AAF8A.l		; AF 8A AF 8A
	ldx $6D8A.w		; AE 8A 6D
	ora #$6F.b		; 09 6F
	ora #$6F.b		; 09 6F
	ora #$EF.b		; 09 EF
	ora #$F7.b		; 09 F7
	lda $75FF.w,X		; BD FF 75
	sbc $75FF75.l,X		; FF 75 FF 75
	sbc $F6FFF6.l,X		; FF F6 FF F6
	sbc $F6FFF6.l,X		; FF F6 FF F6
	ldy $80.b		; A4 80
	ldy $7CA0.w,X		; BC A0 7C
	rts		; 60

	jsr ($DC70.w,X)		; FC 70 DC
	bvc  92.b		; 50 5C
	bvc 124.b		; 50 7C
	rts		; 60

	sei		; 78
	rti		; 40

	cpy #$E058.w		; C0 58 E0
	rti		; 40

	cpx #$F080.w		; E0 80 F0
	bra -16.b		; 80 F0
	ldy #$A0F0.w		; A0 F0 A0
	cpx #$C080.w		; E0 80 C0
	bra   2.b		; 80 02
	tas		; 1B
	ora #$1B.b		; 09 1B
	ora [$37.b]		; 07 37
	and $5C5D3C.l,X		; 3F 3C 5D 5C
	ldy $84.b		; A4 84
	sed		; F8
	tya		; 98
	rts		; 60

	rts		; 60

	tsb $0508.w		; 0C 08 05
	brk $1B.b		; 00 1B
	bpl  36.b		; 10 24
	brk $7C.b		; 00 7C
	jsr $78FC.w		; 20 FC 78
	sed		; F8
	rts		; 60

	rts		; 60

	brk $38.b		; 00 38
	jmp ($6410.w)		; 6C 10 64
	php		; 08
	bit $18.b		; 24 18
	bit $00.b,X		; 34 00
	rol $04.b,X		; 36 04
	asl $00.b,X		; 16 00
	ora ($3A.b)		; 12 3A
	tsa		; 3B
	bpl   0.b		; 10 00
	sec		; 38
	jsr $0018.w		; 20 18 00
	php		; 08
	brk $1C.b		; 00 1C
	trb $08.b		; 14 08
	brk $0C.b		; 00 0C
	brk $34.b		; 00 34
	brk $58.b		; 00 58
	phy		; 5A
	jmp $3E4F.w		; 4C 4F 3E
	and $37273F.l		; 2F 3F 27 37
	and $32.b,S		; 23 32
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $74.b		; 00 74
	jsr $327A.w		; 20 7A 32
	bit $2610.w,X		; 3C 10 26
	brk $23.b		; 00 23
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -32.b		; 80 E0
	cpx #$1050.w		; E0 50 10
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F000.w		; E0 00 F0
	cpx #$00F0.w		; E0 F0 00
	brk $00.b		; 00 00
	trb $3C46.w		; 1C 46 3C
	ror $34.b		; 66 34
	ror $24.b		; 66 24
	ror $2C.b		; 66 2C
	ror $C614.w		; 6E 14 C6
	trb $C6.b		; 14 C6
	trb $38C6.w		; 1C C6 38
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $78.b		; 00 78
	rti		; 40

	sei		; 78
	rti		; 40

	sei		; 78
	rti		; 40

	jmp ($78C6.w,X)		; 7C C6 78
	dec $78.b		; C6 78
	dec $30.b		; C6 30
	cpy $30.b		; C4 30
	cpy $30.b		; C4 30
	cpy $38.b		; C4 38
	jmp $4C30.w		; 4C 30 4C
	sec		; 38
	brk $3C.b		; 00 3C
	tsb $3C.b		; 04 3C
	tsb $78.b		; 04 78
	rti		; 40

	sei		; 78
	rti		; 40

	sei		; 78
	rti		; 40

	bmi   0.b		; 30 00
	sec		; 38
	php		; 08
	bpl  76.b		; 10 4C
	bpl  72.b		; 10 48
	bpl  72.b		; 10 48
	brk $48.b		; 00 48
	brk $48.b		; 00 48
	bpl  88.b		; 10 58
	bpl  88.b		; 10 58
	bpl  88.b		; 10 58
	sec		; 38
	php		; 08
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $24.b		; 00 24
	ora $10.b,S		; 03 10
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7A.b		; 00 7A
	tsb $0CF2.w		; 0C F2 0C
	cpx #$E00C.w		; E0 0C E0
	tsb $08E0.w		; 0C E0 08
	cpx #$7008.w		; E0 08 70
	clc		; 18
	bvs  24.b		; 70 18
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$E000.w		; E0 00 E0
	brk $38.b		; 00 38
	stx $7C.b		; 86 7C
	dec $5C.b		; C6 5C
	dec $1C.b		; C6 1C
	dec $3C.b		; C6 3C
	ror $28.b		; 66 28
	.db $62, $08, $62		; 62 08 62
	clc		; 18
	and ($7C.b)		; 32 7C
	tsb $38.b		; 04 38
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	rti		; 40

	clc		; 18
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	jsr $000C.w		; 20 0C 00
	rti		; 40

	cpy $CC00.w		; CC 00 CC
	plp		; 28
	cpx $FC38.w		; EC 38 FC
	pha		; 48
	cpy $C450.w		; CC 50 C4
	bvc -60.b		; 50 C4
	bpl -60.b		; 10 C4
	sec		; 38
	php		; 08
	sei		; 78
	pha		; 48
	bvc  64.b		; 50 40
	rti		; 40

	rti		; 40

	bmi   0.b		; 30 00
	sec		; 38
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	rti		; 40

	clc		; 18
	dec $18.b		; C6 18
	lsr $3C.b		; 46 3C
	ror $3C.b		; 66 3C
	ror $1C.b		; 66 1C
	ror $08.b		; 66 08
	jsl $04321C.l		; 22 1C 32 04
	and ($7C.b,S),Y		; 33 7C
	mvp $04,$3C		; 44 3C 04
	clc		; 18
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	jsr $001C.w		; 20 1C 00
	tsb $1E00.w		; 0C 00 1E
	ora ($13.b)		; 12 13
	tsb $0C13.w		; 0C 13 0C
	phd		; 0B
	tsb $0B.b		; 04 0B
	tsb $0B.b		; 04 0B
	tsb $06.b		; 04 06
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E9.b		; 00 E9
	ora ($E7.b),Y		; 11 E7
	ora $1FE7.w,Y		; 19 E7 1F
	cpx $1C.b		; E4 1C
	xba		; EB
	clc		; 18
	xba		; EB
	clc		; 18
	xba		; EB
	clc		; 18
	adc $18.b,S		; 63 18
	ora [$06.b]		; 07 06
	ora #$08.b		; 09 08
	php		; 08
	php		; 08
	phd		; 0B
	php		; 08
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $09EF08.l		; 0F 08 EF 09
	sta $C77B86.l		; 8F 86 7B C7
	tsb $7C.b		; 04 7C
	eor $7C.b		; 45 7C
	cmp $6C.b,X		; D5 6C
	cmp ($6C.b),Y		; D1 6C
	cmp ($6C.b),Y		; D1 6C
	sbc $70F6F6.l,X		; FF F6 F6 70
	cpy $84.b		; C4 84
	wai		; CB
	pha		; 48
	phb		; 8B
	php		; 08
	sta $00.b,S		; 83 00
	sta [$04.b]		; 87 04
	sta [$04.b]		; 87 04
	sed		; F8
	brk $98.b		; 00 98
	cpx #$6058.w		; E0 58 60
	bcc  32.b		; 90 20
	bcc  32.b		; 90 20
	bcc  32.b		; 90 20
	cpy #$C030.w		; C0 30 C0
	bmi   0.b		; 30 00
	brk $40.b		; 00 40
	rti		; 40

	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	ora ($C1.b,X)		; 01 C1
	sta ($E1.b,X)		; 81 E1
	eor ($71.b,X)		; 41 71
	and ($31.b,X)		; 21 31
	ora ($31.b,X)		; 01 31
	eor $65.b		; 45 65
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	eor ($40.b,X)		; 41 40
	lda ($20.b,X)		; A1 20
	cmp ($00.b,X)		; C1 00
	sbc ($20.b,X)		; E1 20
	sta $00.b		; 85 00
	and $2B2B2F.l		; 2F 2F 2B 2B
	and $23.b,S		; 23 23
	lda $B5.b,X		; B5 B5
	sty $94.b,X		; 94 94
	tsb $4D0C.w		; 0C 0C 4D
	jmp $5454.w		; 4C 54 54
	and $042F00.l		; 2F 00 2F 04
	and [$04.b]		; 27 04
	lda [$02.b],Y		; B7 02
	sta [$03.b],Y		; 97 03
	sta $93DF93.l,X		; 9F 93 DF 93
	cmp $FC9C8B.l,X		; DF 8B 9C FC
	ldx $A33C.w		; AE 3C A3
	sec		; 38
	cmp [$F8.b]		; C7 F8
	ora $F0B5F8.l		; 0F F8 B5 F0
	cmp $D0.b,X		; D5 D0
	.db $42, $42		; 42 42
	eor $13DF43.l,X		; 5F 43 DF 13
	cmp [$17.b],Y		; D7 17
	and [$37.b],Y		; 37 37
	adc $0FBF67.l		; 6F 67 BF 0F
	sbc $3D7F2F.l,X		; FF 2F 7F 3D
	adc $00BF00.l		; 6F 00 BF 00
	lda $00FF00.l,X		; BF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $006F00.l,X		; 7F 00 6F 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	bra   0.b		; 80 00
	sta ($10.b),Y		; 91 10
	cmp $10.b,X		; D5 10
	mvp $44,$00		; 44 00 44
	brk $66.b		; 00 66
	brk $66.b		; 00 66
	brk $76.b		; 00 76
	brk $FF.b		; 00 FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $62FFFF.l,X		; FF FF FF 62
	brk $6A.b		; 00 6A
	brk $62.b		; 00 62
	brk $73.b		; 00 73
	brk $F3.b		; 00 F3
	brk $F3.b		; 00 F3
	brk $F7.b		; 00 F7
	brk $F6.b		; 00 F6
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $23FFFF.l,X		; FF FF FF 23
	and $23.b,S		; 23 23
	and $43.b,S		; 23 43
	eor ($0B.b,X)		; 41 0B
	ora #$0B.b		; 09 0B
	ora #$05.b		; 09 05
	ora $07.b		; 05 07
	tsb $13.b		; 04 13
	ora ($23.b)		; 12 23
	brk $23.b		; 00 23
	brk $41.b		; 00 41
	brk $49.b		; 00 49
	rti		; 40

	and #$20.b		; 29 20
	and $20.b		; 25 20
	tsb $00.b		; 04 00
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bne -64.b		; D0 C0
	bne -48.b		; D0 D0
	beq -48.b		; F0 D0
	beq -48.b		; F0 D0
	bpl  16.b		; 10 10
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$D000.w		; C0 00 D0
	brk $D0.b		; 00 D0
	brk $D0.b		; 00 D0
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $03.b		; 02 03
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($05.b,X)		; 01 05
	ora $00.b		; 05 00
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $05.b		; 00 05
	brk $9D.b		; 00 9D
	sta $5555.w,X		; 9D 55 55
	adc [$77.b],Y		; 77 77
	adc $BBBB7F.l,X		; 7F 7F BB BB
	plb		; AB
	plb		; AB
	sbc $F9F9.w,Y		; F9 F9 F9
	sbc $029F.w,Y		; F9 9F 02
	eor $087F0A.l,X		; 5F 0A 7F 08
	adc $04BF00.l,X		; 7F 00 BF 04
	lda $06FF14.l,X		; BF 14 FF 06
	sbc $EDED06.l,X		; FF 06 ED ED
	jmp $4C4C5C.l		; 5C 5C 4C 4C
	lsr $4A4E.w		; 4E 4E 4A
	lsr A		; 4A
	asl A		; 0A
	asl A		; 0A
	phd		; 0B
	phd		; 0B
	ora #$09.b		; 09 09
	sbc $A3FF12.l,X		; FF 12 FF A3
	sbc $B1FFB3.l,X		; FF B3 FF B1
	sbc $F5FFB5.l,X		; FF B5 FF F5
	sbc $F6FFF4.l,X		; FF F4 FF F6
	cpy #$D0C0.w		; C0 C0 D0
	bne -48.b		; D0 D0
	bne -16.b		; D0 F0
	beq -14.b		; F0 F2
	sbc ($62.b)		; F2 62
	.db $62, $60, $60		; 62 60 60
	rts		; 60

	rts		; 60

	cpy #$D000.w		; C0 00 D0
	brk $D0.b		; 00 D0
	brk $F0.b		; 00 F0
	brk $F2.b		; 00 F2
	brk $E2.b		; 00 E2
	bra -31.b		; 80 E1
	sta ($E1.b,X)		; 81 E1
	sta ($40.b,X)		; 81 40
	rti		; 40

	ldy #$C0A0.w		; A0 A0 C0
	cpy #$8080.w		; C0 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$A080.w		; C0 80 A0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C8.b		; 00 C8
	iny		; C8
	iny		; C8
	iny		; C8
	tya		; 98
	tya		; 98
	clv		; B8
	tya		; 98
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bvc  16.b		; 50 10
	bvc  16.b		; 50 10
	sed		; F8
	bmi  -8.b		; 30 F8
	bmi  -8.b		; 30 F8
	rts		; 60

	sed		; F8
	rts		; 60

	beq -32.b		; F0 E0
	beq -32.b		; F0 E0
	beq -32.b		; F0 E0
	sbc ($E1.b),Y		; F1 E1
	sta $E5.b		; 85 E5
	ora [$C7.b]		; 07 C7
	ora ($93.b,S),Y		; 13 93
	phd		; 0B
	phd		; 0B
	asl A		; 0A
	asl A		; 0A
	asl $2E0E.w		; 0E 0E 2E
	rol $FC3C.w		; 2E 3C FC
	eor $40.b		; 45 40
	sta [$80.b]		; 87 80
	ora ($00.b,S),Y		; 13 00
	phd		; 0B
	brk $0B.b		; 00 0B
	ora ($0F.b,X)		; 01 0F
	ora ($2F.b,X)		; 01 2F
	ora ($3F.b,X)		; 01 3F
	ora $56.b,S		; 03 56
	mvn $34,$36		; 54 36 34
	eor ($10.b)		; 52 10
	dec $90.b,X		; D6 90
	stx $90.b,Y		; 96 90
	stx $80.b		; 86 80
	cmp $004F80.l		; CF 80 4F 00
	cmp $CBFF8B.l,X		; DF 8B FF CB
	sbc $6FFFEF.l,X		; FF EF FF 6F
	sbc $7FFF6F.l,X		; FF 6F FF 7F
	sbc $FFFF7F.l,X		; FF 7F FF FF
	rol $26.b		; 26 26
	ora $01011F.l,X		; 1F 1F 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $001F19.l,X		; 3F 19 1F 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tda		; 7B
	brk $73.b		; 00 73
	brk $9D.b		; 00 9D
	stz $F0F0.w		; 9C F0 F0
	ora $0E19.w,Y		; 19 19 0E
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $0FFF63.l,X		; FF 63 FF 0F
	ora $000E06.l,X		; 1F 06 0E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc [$00.b],Y		; 77 00
	adc [$00.b],Y		; 77 00
	adc $007F00.l,X		; 7F 00 7F 00
	sbc [$00.b],Y		; F7 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FFFF00.l,X		; FF 00 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00F6FF.l,X		; FF FF F6 00
	inc $00.b,X		; F6 00
	sbc [$00.b],Y		; F7 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00F700.l,X		; FF 00 F7 00
	sbc [$00.b],Y		; F7 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00B700.l,X		; FF 00 B7 00
	and $20.b,S		; 23 20
	bvs 112.b		; 70 70
	sta $00009F.l,X		; 9F 9F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $8FFFDF.l,X		; FF DF FF 8F
	sta $000000.l,X		; 9F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00EE00.l,X		; FF 00 EE 00
	tsb $E100.w		; 0C 00 E1
	sbc ($FF.b,X)		; E1 FF
	sbc $003838.l,X		; FF 38 38 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF1EFF.l,X		; FF FF 1E FF
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1B.b		; 00 1B
	inc A		; 1A
	phd		; 0B
	phd		; 0B
	ora $4D4F0D.l		; 0F 0D 4F 4D
	eor [$44.b]		; 47 44
	adc [$64.b]		; 67 64
	adc [$66.b]		; 67 66
	and [$36.b],Y		; 37 36
	inc A		; 1A
	brk $0B.b		; 00 0B
	brk $0D.b		; 00 0D
	brk $4D.b		; 00 4D
	brk $44.b		; 00 44
	brk $64.b		; 00 64
	brk $66.b		; 00 66
	brk $36.b		; 00 36
	brk $F0.b		; 00 F0
	bvs -16.b		; 70 F0
	bvs -16.b		; 70 F0
	bvc  -8.b		; 50 F8
	cld		; D8
	sei		; 78
	pha		; 48
	sei		; 78
	pla		; 68
	sei		; 78
	pla		; 68
	bit $702C.w,X		; 3C 2C 70
	brk $70.b		; 00 70
	brk $50.b		; 00 50
	brk $D8.b		; 00 D8
	brk $C9.b		; 00 C9
	sta ($E8.b,X)		; 81 E8
	bra -24.b		; 80 E8
	bra -20.b		; 80 EC
	cpy #$0404.w		; C0 04 04
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	asl A		; 0A
	asl A		; 0A
	ora #$09.b		; 09 09
	ora #$09.b		; 09 09
	ora $270D.w		; 0D 0D 27
	and [$04.b]		; 27 04
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $8B.b		; 00 8B
	sta ($09.b,X)		; 81 09
	brk $09.b		; 00 09
	brk $0D.b		; 00 0D
	brk $27.b		; 00 27
	brk $D9.b		; 00 D9
	cmp $D8D8.w,Y		; D9 D8 D8
	iny		; C8
	iny		; C8
	cpx $64EC.w		; EC EC 64
	stz $66.b		; 64 66
	stz $26.b		; 64 26
	bit $82.b		; 24 82
	bra  -1.b		; 80 FF
	rol $FF.b		; 26 FF
	and [$FF.b]		; 27 FF
	and [$FF.b],Y		; 37 FF
	ora ($FF.b,S),Y		; 13 FF
	txy		; 9B
	sbc $DBFF9B.l,X		; FF 9B FF DB
	sbc $89A97F.l,X		; FF 7F A9 89
	lda #$89.b		; A9 89
	ora ($01.b,X)		; 01 01
	lda ($81.b,X)		; A1 81
	ldy #$2480.w		; A0 80 24
	brk $B0.b		; 00 B0
	bra  50.b		; 80 32
	cop $FF.b		; 02 FF
	ror $FF.b,X		; 76 FF
	ror $FF.b,X		; 76 FF
	inc $7EFF.w,X		; FE FF 7E
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FDFF7F.l,X		; FF 7F FF FD
	pla		; 68
	pla		; 68
	inx		; E8
	inx		; E8
	cpy $DCCC.w		; CC CC DC
	jmp.w [$9494]		; DC 94 94
	ldy $B4.b,X		; B4 B4
	bit $34.b,X		; 34 34
	bit $34.b,X		; 34 34
	nop		; EA
	.db $82, $E8, $00		; 82 E8 00
	cpx $FC20.w		; EC 20 FC
	jsr $68FC.w		; 20 FC 68
	jsr ($FC48.w,X)		; FC 48 FC
	iny		; C8
	jsr ($00C8.w,X)		; FC C8 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	tsb $06.b		; 04 06
	tsb $46.b		; 04 46
	lsr $40.b		; 46 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	lsr $00.b		; 46 00
	lsr $46.b		; 46 46
	eor $43.b,S		; 43 43
	sta ($93.b,S),Y		; 93 93
	phd		; 0B
	phd		; 0B
	eor $05074D.l		; 4F 4D 07 05
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	lsr $00.b		; 46 00
	eor $00.b,S		; 43 00
	sta ($00.b,S),Y		; 93 00
	phb		; 8B
	bra -51.b		; 80 CD
	bra  69.b		; 80 45
	rti		; 40

	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	adc [$66.b],Y		; 77 66
	adc ($62.b,S),Y		; 73 62
	tda		; 7B
	rol A		; 2A
	xce		; FB
	tyx		; BB
	xce		; FB
	tyx		; BB
	rtl		; 6B

	phd		; 0B
	adc $3D59.w,Y		; 79 59 3D
	ora $086E.w,X		; 1D 6E 08
	ror $2E0C.w		; 6E 0C 2E
	tsb $BF.b		; 04 BF
	tsb $BF.b		; 04 BF
	tsb $9F.b		; 04 9F
	sty $DF.b,X		; 94 DF
	stx $DF.b		; 86 DF
	rep #$80		; C2 80
	bra -64.b		; 80 C0
	cpy #$40C0.w		; C0 C0 40
	rep #$42		; C2 42
	cmp #$49.b		; C9 49
	inx		; E8
	inx		; E8
	tay		; A8
	tay		; A8
	clv		; B8
	clv		; B8
	bra   0.b		; 80 00
	cpy #$5000.w		; C0 00 50
	bpl  82.b		; 10 52
	bpl  73.b		; 10 49
	brk $E9.b		; 00 E9
	ora ($E8.b,X)		; 01 E8
	rti		; 40

	sed		; F8
	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $0001.w		; 20 01 00
	brk $00.b		; 00 00
	iny		; C8
	php		; 08
	dey		; 88
	php		; 08
	dey		; 88
	php		; 08
	tax		; AA
	asl A		; 0A
	ror $06.b		; 66 06
	jmp $34F41C.l		; 5C 1C F4 34
	tay		; A8
	plp		; 28
	sed		; F8
	beq  -8.b		; F0 F8
	beq  -8.b		; F0 F8
	beq  -6.b		; F0 FA
	beq -10.b		; F0 F6
	beq  -4.b		; F0 FC
	cpx #$C8FC.w		; E0 FC C8
	sed		; F8
	bne -112.b		; D0 90
	bpl -96.b		; 10 A0
	jsr $3030.w		; 20 30 30
	bvc  80.b		; 50 50
	bcc -112.b		; 90 90
	ldy #$A0A0.w		; A0 A0 A0
	jsr $6060.w		; 20 60 60
	beq -32.b		; F0 E0
	cpx #$F0C0.w		; E0 C0 F0
	cpy #$A0F0.w		; C0 F0 A0
	beq  96.b		; F0 60
	cpx #$E040.w		; E0 40 E0
	cpy #$80E0.w		; C0 E0 80
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
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
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $83.b,S		; 83 83
	ora ($01.b,X)		; 01 01
	and $F8F93F.l,X		; 3F 3F F9 F8
	bcc -112.b		; 90 90
	sbc $00FD.w,X		; FD FD 00
	brk $00.b		; 00 00
	brk $C3.b		; 00 C3
	rti		; 40

	ora ($00.b,X)		; 01 00
	and $07FF00.l,X		; 3F 00 FF 07
	sbc $02FF6F.l,X		; FF 6F FF 02
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	ldy #$D030.w		; A0 30 D0
	clc		; 18
	rts		; 60

	tsb $8C88.w		; 0C 88 8C
	cli		; 58
	dec $0000.w,X		; DE 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	cpy #$E000.w		; C0 00 E0
	brk $F8.b		; 00 F8
	php		; 08
	bvs   0.b		; 70 00
	ldy $84.b		; A4 84
	bit $E7.b		; 24 E7
	asl $1673.w,X		; 1E 73 16
	bmi  11.b		; 30 0B
	clc		; 18
	ora $0C.b		; 05 0C
	cop $0E.b		; 02 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phy		; 5A
	.db $42, $2D		; 42 2D
	and ($0F.b,X)		; 21 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$20E0.w		; C0 E0 20
	bcs -112.b		; B0 90
	bne -48.b		; D0 D0
	bvs -16.b		; 70 F0
	cpy #$E0E0.w		; C0 E0 E0
	clv		; B8
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	cpy #$60F0.w		; C0 F0 60
	beq  32.b		; F0 20
	beq -128.b		; F0 80
	brk $00.b		; 00 00
	rti		; 40

	brk $1C.b		; 00 1C
	and [$0A.b],Y		; 37 0A
	tsa		; 3B
	asl $0518.w		; 0E 18 05
	tsb $0603.w		; 0C 03 06
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	asl A		; 0A
	cop $15.b		; 02 15
	ora ($07.b),Y		; 11 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  -8.b		; 80 F8
	sed		; F8
	trb $FE0C.w		; 1C 0C FE
	cop $0F.b		; 02 0F
	ora ($7D.b,X)		; 01 7D
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	beq  -2.b		; F0 FE
	jsr ($FEFF.w,X)		; FC FF FE
	sbc $031FFE.l,X		; FF FE 1F 03
	iny		; C8
	brk $8F.b		; 00 8F
	bra  61.b		; 80 3D
	and ($FC.b,X)		; 21 FC
	sbc ($86.b),Y		; F1 86
	sta [$1E.b]		; 87 1E
	ora $FF0100.l,X		; 1F 00 01 FF
	jsr ($FFFF.w,X)		; FC FF FF
	sbc $DEFF7F.l,X		; FF 7F FF DE
	sbc $098F0F.l,X		; FF 0F 8F 09
	ora $000001.l,X		; 1F 01 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	cpy #$4000.w		; C0 00 40
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora [$0F.b]		; 07 0F
	ora $100C0C.l		; 0F 0C 0C 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	sty $00.b		; 84 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	sed		; F8
	and ($30.b)		; 32 30
	and $7F7F2F.l		; 2F 2F 7F 7F
	sbc ($E1.b,X)		; E1 E1
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $0F3F07.l,X		; FF 07 3F 0F
	and $007F10.l,X		; 3F 10 7F 00
	sbc ($00.b,X)		; E1 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	rti		; 40

	rti		; 40

	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sec		; 38
	ora $01030F.l,X		; 1F 0F 03 01
	rti		; 40

	brk $30.b		; 00 30
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $E0.b,S		; 03 E0
	cpx #$3C3C.w		; E0 3C 3C
	ora $FFFF07.l		; 0F 07 FF FF
	sbc $00F9.w,Y		; F9 F9 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $E0.b		; 00 E0
	brk $3C.b		; 00 3C
	brk $07.b		; 00 07
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	asl $00.b		; 06 00
	brk $0C.b		; 00 0C
	tsb $0000.w		; 0C 00 00
	cpy #$71C0.w		; C0 C0 71
	adc ($FC.b),Y		; 71 FC
	bit $D6F6.w,X		; 3C F6 D6
	xce		; FB
	xce		; FB
	brk $00.b		; 00 00
	asl $0102.w		; 0E 02 01
	ora ($C0.b,X)		; 01 C0
	brk $71.b		; 00 71
	brk $3C.b		; 00 3C
	brk $DE.b		; 00 DE
	php		; 08
	sbc $000004.l,X		; FF 04 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $83.b,S		; 83 83
	cpy #$F0C0.w		; C0 C0 F0
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $83.b		; 00 83
	brk $C1.b		; 00 C1
	ora ($F0.b,X)		; 01 F0
	brk $79.b		; 00 79
	and $0E1E.w,Y		; 39 1E 0E
	ora [$03.b]		; 07 03
	ora [$07.b]		; 07 07
	ora $03031F.l,X		; 1F 1F 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	and $010F06.l,X		; 3F 06 0F 01
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $000300.l,X		; 1F 00 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bcs -80.b		; B0 B0
	rep #$C2		; C2 C2
	stz $60.b		; 64 60
	sed		; F8
	sed		; F8
	sbc $3EEC.w		; ED EC 3E
	rol $D8D8.w,X		; 3E D8 D8
	jmp ($FF7C.w,X)		; 7C 7C FF
	eor $FF3DFF.l		; 4F FF 3D FF
	sta $FF07FF.l,X		; 9F FF 07 FF
	ora ($FF.b,S),Y		; 13 FF
	cmp ($FF.b,X)		; C1 FF
	and [$7F.b]		; 27 7F
	ora $F1.b,S		; 03 F1
	brk $7A.b		; 00 7A
	brk $7E.b		; 00 7E
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	ora ($CB.b,X)		; 01 CB
	ora ($F1.b,X)		; 01 F1
	ora ($72.b,X)		; 01 72
	cop $EC.b		; 02 EC
	tsb $08F8.w		; 0C F8 08
	sed		; F8
	php		; 08
	bcs  16.b		; B0 10
	sbc $FEFFFE.l,X		; FF FE FF FE
	sbc $FCFEFE.l,X		; FF FE FE FC
	jsr ($F8F0.w,X)		; FC F0 F8
	beq  -8.b		; F0 F8
	beq -16.b		; F0 F0
	cpx #$0000.w		; E0 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$78C0.w		; C0 C0 78
	sei		; 78
	bit $24.b		; 24 24
	asl A		; 0A
	cop $BD.b		; 02 BD
	ora ($00.b),Y		; 11 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $F8.b		; 00 F8
	bra  -4.b		; 80 FC
	cld		; D8
	inc $FFFC.w,X		; FE FC FF
	inc $0808.w		; EE 08 08
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $1004.w		; 0C 04 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	and $041F01.l,X		; 3F 01 1F 04
	ora $163302.l,X		; 1F 02 33 16
	adc [$24.b],Y		; 77 24
	adc [$30.b]		; 67 30
	dec $70.b		; C6 70
	cpy $3F.b		; C4 3F
	brk $0F.b		; 00 0F
	asl $0B0B.w		; 0E 0B 0B
	ora $2911.w,X		; 1D 11 29
	and ($1A.b,X)		; 21 1A
	cop $7C.b		; 02 7C
	mvp $00,$38		; 44 38 00
	clc		; 18
	php		; 08
	tya		; 98
	dey		; 88
	cld		; D8
	iny		; C8
	iny		; C8
	iny		; C8
	bcc -112.b		; 90 90
	cpx #$00E0.w		; E0 E0 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	beq  -8.b		; F0 F8
	bvs  -8.b		; 70 F8
	bmi  -8.b		; 30 F8
	bmi -16.b		; 30 F0
	rts		; 60

	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($00.b,X)		; 01 00
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
	brk $09.b		; 00 09
	ora #$06.b		; 09 06
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	brk $07.b		; 00 07
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
	brk $C0.b		; 00 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000703.l		; 0F 03 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ror $0F3E.w,X		; 7E 3E 0F
	ora $FF01E3.l		; 0F E3 01 FF
	sbc $1F3676.l,X		; FF 76 36 1F
	ora $FF0107.l		; 0F 07 01 FF
	trb $013F.w		; 1C 3F 01
	ora $000100.l		; 0F 00 01 00
	sbc $093F00.l,X		; FF 00 3F 09
	ora $000100.l		; 0F 00 01 00
	trb $9F00.w		; 1C 00 9F
	stz $E3E3.w,X		; 9E E3 E3
	bcs -80.b		; B0 B0
	stp		; DB
	cld		; D8
	adc $0978.w,Y		; 79 78 09
	php		; 08
	bra -128.b		; 80 80
	sbc $E0.b,S		; E3 E0
	inc $FF60.w,X		; FE 60 FF
	trb $4FFF.w		; 1C FF 4F
	sbc $87FF27.l,X		; FF 27 FF 87
	sbc $7FFFF7.l,X		; FF F7 FF 7F
	sbc $B8B81F.l,X		; FF 1F B8 B8
	cpy $E6CC.w		; CC CC E6
	inc $23.b		; E6 23
	and $09.b,S		; 23 09
	ora ($40.b,X)		; 01 40
	brk $1A.b		; 00 1A
	clc		; 18
	sta $04.b		; 85 04
	sed		; F8
	rti		; 40

	jsr ($FE30.w,X)		; FC 30 FE
	clc		; 18
	sbc $FEFFDC.l,X		; FF DC FF FE
	sbc $E7FFFF.l,X		; FF FF FF E7
	sbc $0101FB.l,X		; FF FB 01 01
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($10.b,S),Y		; 13 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plx		; FA
	sed		; F8
	cmp ($C0.b,X)		; C1 C0
	sbc ($E0.b,X)		; E1 E0
	clc		; 18
	clc		; 18
	bit $613C.w,X		; 3C 3C 61
	rts		; 60

	bpl  16.b		; 10 10
	jmp ($FF7C.w,X)		; 7C 7C FF
	ora [$FF.b]		; 07 FF
	and $1F1FFF.l,X		; 3F FF 1F 1F
	ora [$3F.b]		; 07 3F
	ora $7F.b,S		; 03 7F
	ora $7F0F1F.l,X		; 1F 1F 0F 7F
	ora $7F.b,S		; 03 7F
	brk $FF.b		; 00 FF
	brk $F5.b		; 00 F5
	ora ($FD.b,X)		; 01 FD
	ora ($6D.b,X)		; 01 6D
	ora ($EA.b,X)		; 01 EA
	asl A		; 0A
	cpx $380C.w		; EC 0C 38
	php		; 08
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFE.l,X		; FF FE FF FE
	sbc $F4FEFE.l,X		; FF FE FE F4
	jsr ($F8F0.w,X)		; FC F0 F8
	beq  96.b		; F0 60
	rts		; 60

	cpy #$C040.w		; C0 40 C0
	rti		; 40

	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C080.w		; E0 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora $133E0C.l		; 0F 0C 3E 13
	sbc [$71.b],Y		; F7 71
	sbc $9898.w,X		; FD 98 98
	jsr $0230.w		; 20 30 02
	jsl $006303.l		; 22 03 63 00
	brk $00.b		; 00 00
	brk $2B.b		; 00 2B
	jsr $8899.w		; 20 99 88
	pla		; 68
	brk $C8.b		; 00 C8
	php		; 08
	rep #$00		; C2 00
	cmp $40.b,S		; C3 40
	ora $5D5D17.l,X		; 1F 17 5D 5D
	stz $74.b,X		; 74 74
	ldx $B6.b,Y		; B6 B6
	sbc ($F2.b)		; F2 F2
	cmp ($D2.b)		; D2 D2
	bne -48.b		; D0 D0
	bvs 112.b		; 70 70
	ora [$00.b],Y		; 17 00
	eor $0B7F02.l,X		; 5F 02 7F 0B
	lda $0DFF09.l,X		; BF 09 FF 0D
	sbc $2FFF2D.l,X		; FF 2D FF 2F
	sbc $0E0F8F.l,X		; FF 8F 0F 0E
	ora $04.b		; 05 04
	tsb $04.b		; 04 04
	trb $14.b		; 14 14
	asl $081E.w,X		; 1E 1E 08
	php		; 08
	ora $227C.w		; 0D 7C 22
	inc $010F.w		; EE 0F 01
	ora [$03.b]		; 07 03
	ora [$03.b]		; 07 03
	ora [$03.b],Y		; 17 03
	ora $070F01.l,X		; 1F 01 0F 07
	ora $495B03.l		; 0F 03 5B 49
	and $8D20.w		; 2D 20 8D
	brk $CF.b		; 00 CF
	brk $DF.b		; 00 DF
	brk $5F.b		; 00 5F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $A3FFFF.l,X		; FF FF FF A3
	lda $81.b,S		; A3 81
	sta ($85.b,X)		; 81 85
	sta ($54.b,X)		; 81 54
	bvc  69.b		; 50 45
	eor ($17.b,X)		; 41 17
	ora ($96.b,X)		; 01 96
	brk $26.b		; 00 26
	jsr $5CFF.w		; 20 FF 5C
	sbc $7EFF7E.l,X		; FF 7E FF 7E
	sbc $BEFFAF.l,X		; FF AF FF BE
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $F6F6DF.l,X		; FF DF F6 F6
	phy		; 5A
	phy		; 5A
	ply		; 7A
	ply		; 7A
	phy		; 5A
	phy		; 5A
	txy		; 9B
	tas		; 1B
	and ($13.b,S),Y		; 33 13
	and ($12.b)		; 32 12
	sta ($12.b)		; 92 12
	inc $00.b,X		; F6 00
	inc $FEA4.w,X		; FE A4 FE
	sty $FE.b		; 84 FE
	ldy $FF.b		; A4 FF
	cpx $FF.b		; E4 FF
	cpx $EDFF.w		; EC FF ED
	sbc $0000ED.l,X		; FF ED 00 00
	asl $06.b		; 06 06
	cmp ($01.b,X)		; C1 01
	bmi   0.b		; 30 00
	trb $0E00.w		; 1C 00 0E
	tsb $07.b		; 04 07
	ora [$87.b]		; 07 87
	sta $00.b,S		; 83 00
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $83.b		; 00 83
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	rti		; 40

	bmi  32.b		; 30 20
	lda ($B1.b),Y		; B1 B1
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $20.b		; 00 20
	brk $B1.b		; 00 B1
	brk $A0.b		; 00 A0
	ldy #$2020.w		; A0 20 20
	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	cpy #$90C0.w		; C0 C0 90
	bcc -112.b		; 90 90
	bcc -80.b		; 90 B0
	bcc -96.b		; 90 A0
	brk $20.b		; 00 20
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	jsr $20E0.w		; 20 E0 20
	beq  96.b		; F0 60
	beq  96.b		; F0 60
	beq  96.b		; F0 60
	lda $00FF00.l,X		; BF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	plx		; FA
	brk $DB.b		; 00 DB
	ora $FF.b,S		; 03 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFCFF.l,X		; FF FF FC FF
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	brk $F8.b		; 00 F8
	brk $B7.b		; 00 B7
	ora [$3E.b]		; 07 3E
	asl $0808.w		; 0E 08 08
	beq -16.b		; F0 F0
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F0FEF8.l,X		; FF F8 FE F0
	sed		; F8
	beq -16.b		; F0 F0
	brk $30.b		; 00 30
	bpl -48.b		; 10 D0
	bpl  80.b		; 10 50
	bvc  80.b		; 50 50
	bvc  96.b		; 50 60
	rts		; 60

	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	cpx #$E0F0.w		; E0 F0 E0
	beq -96.b		; F0 A0
	beq -96.b		; F0 A0
	cpx #$C080.w		; E0 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $32.b		; 00 32
	cop $44.b		; 02 44
	mvp $78,$78		; 44 78 78
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FCFC.w,X		; FE FC FC
	clv		; B8
	sed		; F8
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
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
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	rts		; 60

	rts		; 60

	jsr $0020.w		; 20 20 00
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	jsr $A0A0.w		; 20 A0 A0
	bcc -112.b		; 90 90
	bcc -112.b		; 90 90
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	jsr $A000.w		; 20 00 A0
	brk $90.b		; 00 90
	brk $90.b		; 00 90
	brk $90.b		; 00 90
	bpl -96.b		; 10 A0
	jsr $20A0.w		; 20 A0 20
	bra   0.b		; 80 00
	sta ($C1.b,X)		; 81 C1
	tsb $84.b		; 04 84
	asl $06.b		; 06 06
	ora $05.b		; 05 05
	tsb $04.b		; 04 04
	ora ($12.b)		; 12 12
	inc A		; 1A
	inc A		; 1A
	ora $00010E.l		; 0F 0E 01 00
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	ora [$02.b]		; 07 02
	ora [$03.b]		; 07 03
	ora ($01.b,S),Y		; 13 01
	tas		; 1B
	ora ($0F.b,X)		; 01 0F
	ora ($BB.b,X)		; 01 BB
	lda $9898.w,Y		; B9 98 98
	iny		; C8
	iny		; C8
	.db $42, $40		; 42 40
	sbc $E0.b,S		; E3 E0
	sbc $E4.b		; E5 E4
	adc #$60.b		; 69 60
	eor #$40.b		; 49 40
	sbc $67FF46.l,X		; FF 46 FF 67
	sbc $3F7F37.l,X		; FF 37 7F 3F
	sbc $1BFF1F.l,X		; FF 1F FF 1B
	sbc $BFFF9F.l,X		; FF 9F FF BF
	ror A		; 6A
	asl $1EF2.w		; 0E F2 1E
	cmp $2B1C.w		; CD 1C 2B
	sec		; 38
	mvp $03,$64		; 44 64 03
	cmp $00.b,S		; C3 00
	bra   0.b		; 80 00
	brk $F3.b		; 00 F3
	ora ($EB.b,X)		; 01 EB
	ora #$FF.b		; 09 FF
	ora ($CF.b,S),Y		; 13 CF
	ora [$87.b]		; 07 87
	ora $83.b,S		; 03 83
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $DF.b		; 00 DF
	brk $83.b		; 00 83
	brk $78.b		; 00 78
	sei		; 78
	stz $039E.w,X		; 9E 9E 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $9F87FF.l,X		; FF FF 87 9F
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $4E.b		; 00 4E
	brk $4B.b		; 00 4B
	brk $6F.b		; 00 6F
	brk $6F.b		; 00 6F
	brk $6F.b		; 00 6F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $84FFFF.l,X		; FF FF FF 84
	brk $D5.b		; 00 D5
	ora ($D1.b,X)		; 01 D1
	ora ($D1.b,X)		; 01 D1
	ora ($73.b,X)		; 01 73
	ora ($6A.b,X)		; 01 6A
	brk $CA.b		; 00 CA
	brk $DE.b		; 00 DE
	brk $FF.b		; 00 FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	inc $FEFF.w,X		; FE FF FE
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ora $03.b,S		; 03 03
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	sec		; 38
	sec		; 38
	mvn $16,$54		; 54 54 16
	ora ($03.b)		; 12 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $5C.b		; 00 5C
	php		; 08
	lsr $F94C.w,X		; 5E 4C F9
	cmp $5979.w,Y		; D9 79 59
	cpx $FCEC.w		; EC EC FC
	jsr ($DADE.w,X)		; FC DE DA
	sbc $6DEDEB.l		; EF EB ED 6D
	ror $66.b		; 66 66
	cmp $D900.w,Y		; D9 00 D9
	bra  -4.b		; 80 FC
	bpl  -4.b		; 10 FC
	brk $FA.b		; 00 FA
	jsr $10FB.w		; 20 FB 10
	adc $197F12.l,X		; 7F 12 7F 19
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	plp		; 28
	plp		; 28
	ldy $A4.b		; A4 A4
	pea $00F4.w		; F4 F4 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	brk $28.b		; 00 28
	brk $A4.b		; 00 A4
	brk $F4.b		; 00 F4
	brk $0A.b		; 00 0A
	asl A		; 0A
	ora $0E0B0E.l		; 0F 0E 0B 0E
	ora $0F070F.l		; 0F 0F 07 0F
	ora [$1F.b]		; 07 1F
	phd		; 0B
	ora $2E3E1A.l,X		; 1F 1A 3E 2E
	bit $0E.b		; 24 0E
	brk $0E.b		; 00 0E
	tsb $0B.b		; 04 0B
	brk $03.b		; 00 03
	brk $0B.b		; 00 0B
	php		; 08
	eor [$44.b]		; 47 44
	cop $00.b		; 02 00
	adc [$77.b],Y		; 77 77
	and [$37.b],Y		; 37 37
	and $F63D.w,X		; 3D 3D F6
	dec $FE.b,X		; D6 FE
	dec $BBBB.w,X		; DE BB BB
	stp		; DB
	stp		; DB
	cmp $7F59.w,Y		; D9 59 7F
	php		; 08
	and $023F08.l,X		; 3F 08 3F 02
	cmp $01DF09.l,X		; DF 09 DF 01
	sbc $24FF44.l,X		; FF 44 FF 24
	adc $ECFC26.l,X		; 7F 26 FC EC
	ldx $FAAE.w,Y		; BE AE FA
	plx		; FA
	dec $4EDE.w,X		; DE DE 4E
	lsr $6D6D.w		; 4E 6D 6D
	lda $25.b		; A5 25
	lda [$37.b],Y		; B7 37
	cpx $EE00.w		; EC 00 EE
	rti		; 40

	inc $FE04.w,X		; FE 04 FE
	jsr $B0FE.w		; 20 FE B0
	sbc $DAFF92.l,X		; FF 92 FF DA
	sbc $2020C8.l,X		; FF C8 20 20
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $0000.w		; 20 00 00
	sed		; F8
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $1E.b		; 00 1E
	brk $06.b		; 00 06
	ora ($C3.b,X)		; 01 C3
	and $7FFF1F.l,X		; 3F 1F FF 7F
	sbc $00FF0F.l,X		; FF 0F FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0700.w,X		; 1E 00 07
	brk $FF.b		; 00 FF
	ora $FF.b,S		; 03 FF
	ora [$FF.b]		; 07 FF
	ora ($FF.b,X)		; 01 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bra -128.b		; 80 80
	cpx #$F0C0.w		; E0 C0 F0
	cpx #$E0F0.w		; E0 F0 E0
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	bra -16.b		; 80 F0
	cpy #$C0F0.w		; C0 F0 C0
	beq 112.b		; F0 70
	jmp.w [$6E38]		; DC 38 6E
	trb $77.b		; 14 77
	ora $0B31.w,X		; 1D 31 0B
	clc		; 18
	ora [$0C.b]		; 07 0C
	cop $06.b		; 02 06
	ora ($03.b,X)		; 01 03
	jsr $1400.w		; 20 00 14
	tsb $2A.b		; 04 2A
	jsl $07000E.l		; 22 0E 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	sty $DE58.w		; 8C 58 DE
	bit $E7.b		; 24 E7
	asl $1673.w,X		; 1E 73 16
	bmi  11.b		; 30 0B
	clc		; 18
	ora $0C.b		; 05 0C
	cop $0E.b		; 02 0E
	bvs   0.b		; 70 00
	ldy $84.b		; A4 84
	phy		; 5A
	.db $42, $2D		; 42 2D
	and ($0F.b,X)		; 21 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	tsb $01.b		; 04 01
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	rti		; 40

	ora #$07.b		; 09 07
	ora [$08.b],Y		; 17 08
	adc $10.b,S		; 63 10
	cpy #$0004.w		; C0 04 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	eor $00.b,S		; 43 00
	ora $001F00.l		; 0F 00 1F 00
	adc ($00.b,S),Y		; 73 00
	cpy $00.b		; C4 00
	brk $06.b		; 00 06
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	jsr $0010.w		; 20 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	beq -96.b		; F0 A0
	sec		; 38
	pla		; 68
	tsb $86F4.w		; 0C F4 86
	cli		; 58
	cmp $22.b,S		; C3 22
	adc $16.b,S		; 63 16
	adc [$09.b],Y		; 77 09
	and $4040.w,Y		; 39 40 40
	bne  16.b		; D0 10
	beq   0.b		; F0 00
	sei		; 78
	brk $3E.b		; 00 3E
	cop $1C.b		; 02 1C
	brk $29.b		; 00 29
	and ($16.b,X)		; 21 16
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C3.b		; 00 C3
	and $79FF3F.l,X		; 3F 3F FF 79
	sta [$8E.b]		; 87 8E
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF01.l,X		; FF 01 FF 00
	sbc $008F00.l,X		; FF 00 8F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	sed		; F8
	cpy #$98F8.w		; C0 F8 98
	jsr ($F614.w,X)		; FC 14 F6
	asl $073B.w		; 0E 3B 07
	ora $0603.w,X		; 1D 03 06
	ora ($07.b,X)		; 01 07
	rti		; 40

	sed		; F8
	bra -16.b		; 80 F0
	jsr $08E0.w		; 20 E0 08
	cpy #$2004.w		; C0 04 20
	cop $10.b		; 02 10
	ora ($00.b,X)		; 01 00
	cop $02.b		; 02 02
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora $02.b		; 05 02
	ora $02.b		; 05 02
	tsb $02.b		; 04 02
	asl A		; 0A
	tsb $0A.b		; 04 0A
	tsb $01.b		; 04 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	ora $04.b,S		; 03 04
	ora $CF.b,S		; 03 CF
	bmi  -1.b		; 30 FF
	brk $F3.b		; 00 F3
	cop $ED.b		; 02 ED
	adc ($1B.b,X)		; 61 1B
	clc		; 18
	ldx $76.b,Y		; B6 76
	ora $08.b,S		; 03 08
	adc ($F2.b),Y		; 71 F2
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	asl $7F0C.w		; 0E 0C 7F
	asl $E71F.w,X		; 1E 1F E7
	ora [$F9.b],Y		; 17 F9
	brk $FC.b		; 00 FC
	jsr $61FE.w		; 20 FE 61
	cmp $85FC31.l		; CF 31 FC 85
	jsr ($8597.w,X)		; FC 97 85
	adc [$74.b],Y		; 77 74
	cmp $F1FE1C.l,X		; DF 1C FE F1
	inc $BD01.w,X		; FE 01 BD
	sty $8B8B.w		; 8C 8B 8B
	eor [$43.b]		; 47 43
	sbc $82EE7A.l,X		; FF 7A EE 82
	pea $F1E1.w		; F4 E1 F1
	brk $05.b		; 00 05
	tsb $00.b		; 04 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	brk $20.b		; 00 20
	cpy #$40A0.w		; C0 A0 40
	rts		; 60

	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	eor ($2F.b),Y		; 51 2F
	mvn $AB,$2A		; 54 2A AB
	eor [$9D.b],Y		; 57 9D
	stz $37.b		; 64 37
	cmp $77CC35.l		; CF 35 CC 77
	sta $2C1BE3.l		; 8F E3 1B 2C
	bpl  41.b		; 10 29
	bpl  87.b		; 10 57
	jsr $0367.w		; 20 67 03
	cmp $03CF00.l		; CF 00 CF 03
	sta $071800.l		; 8F 00 18 07
	stx $D130.w		; 8E 30 D1
	rts		; 60

	stp		; DB
	nop		; EA
	sbc #$70.b		; E9 70
	lda $71EFB6.l		; AF B6 EF 71
	and $E9FB35.l		; 2F 35 FB E9
	bne   1.b		; D0 01
	stx $8E0E.w		; 8E 0E 8E
	tsb $F6.b		; 04 F6
	stx $F6.b		; 86 F6
	rti		; 40

	sbc ($80.b),Y		; F1 80
	sbc $C0.b,X		; F5 C0
	sbc $3F04.w		; ED 04 3F
	adc $801F0F.l,X		; 7F 0F 1F 80
	rts		; 60

	ora $60E01F.l		; 0F 1F E0 60
	lda #$29.b		; A9 29
	ldy $24.b		; A4 24
	lda $24.b		; A5 24
	ora $FF03FF.l		; 0F FF 03 FF
	brk $FF.b		; 00 FF
	ora $FF.b,S		; 03 FF
	rts		; 60

	ora $7F567F.l,X		; 1F 7F 56 7F
	tad		; 5B
	adc $42535B.l,X		; 7F 5B 53 42
	eor $44.b		; 45 44
	tad		; 5B
	cli		; 58
	cmp $3033C0.l		; CF C0 33 30
	adc $BB0D.w		; 6D 0D BB
	bra  93.b		; 80 5D
	rti		; 40

	ora $FB1FED.l		; 0F ED 1F FB
	eor $FFDFE7.l,X		; 5F E7 DF FF
	and $F2FFCF.l,X		; 3F CF FF F2
	jsr ($FE7C.w,X)		; FC 7C FE
	ldx $E0E0.w,Y		; BE E0 E0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C7C7.w		; C0 C7 C7
	phx		; DA
	dec $FC44.w,X		; DE 44 FC
	ora ($F9.b,X)		; 01 F9
	ora ($F3.b)		; 12 F3
	sta $00BF00.l,X		; 9F 00 BF 00
	lda $00B800.l,X		; BF 00 B8 00
	lda $04.b		; A5 04
	lda ($B0.b,S),Y		; B3 B0
	dec $0CC8.w		; CE C8 0C
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
	brk $0F.b		; 00 0F
	brk $38.b		; 00 38
	ora [$50.b]		; 07 50
	and $B15FA0.l		; 2F A0 5F B1
	lsr $0000.w		; 4E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	and $205F00.l		; 2F 00 5F 20
	lsr $0031.w		; 4E 31 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	bra -128.b		; 80 80
	adc $007F9C.l,X		; 7F 9C 7F 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	adc $63.b,S		; 63 63
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	php		; 08
	ora [$31.b]		; 07 31
	asl $3847.w		; 0E 47 38
	inc $0000.w,X		; FE 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($26.b,X)		; 01 26
	pei ($44.b)		; D4 44
	lda $EC0D.w		; AD 0D EC
	eor $DDAC.w		; 4D AC DD
	trb $3E3E.w		; 1C 3E 3E
.ACCU 8
.INDEX 8
	sep #$F2		; E2 F2
	brk $00.b		; 00 00
	pei ($2F.b)		; D4 2F
	lda ($5E.b,X)		; A1 5E
	cpx #$1E.b		; E0 1E
	ldy $1E.b		; A4 1E
	tsb $3A3E.w		; 0C 3E 3A
	sbc $00FFC0.l,X		; FF C0 FF 00
	xce		; FB
	eor $BC.b,S		; 43 BC
	dec $38.b		; C6 38
	stz $BC60.w,X		; 9E 60 BC
	rti		; 40

	sed		; F8
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BC.b		; 00 BC
	brk $38.b		; 00 38
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	tsb $0E.b		; 04 0E
	ora ($16.b,X)		; 01 16
	ora #$14.b		; 09 14
	phd		; 0B
	trb $2C03.w		; 1C 03 2C
	ora ($28.b,S),Y		; 13 28
	ora [$38.b],Y		; 17 38
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	asl $08.b		; 06 08
	asl $0A.b		; 06 0A
	tsb $02.b		; 04 02
	tsb $0C12.w		; 0C 12 0C
	asl $08.b,X		; 16 08
	ora $19.b		; 05 19
	ora $16.b,S		; 03 16
	ora [$86.b]		; 07 86
.INDEX 16
	rep #$97		; C2 97
	cmp [$93.b]		; C7 93
	rti		; 40

	bpl 100.b		; 10 64
	and ($C2.b,S),Y		; 33 C2
	and ($80.b),Y		; 31 80
	sec		; 38
	brk $FE.b		; 00 FE
.INDEX 8
	sep #$9E		; E2 9E
	.db $62, $0F, $60		; 62 0F 60
	ora $C00FE0.l		; 0F E0 0F C0
	ora $D82FE0.l		; 0F E0 2F D8
	ora [$9B.b]		; 07 9B
	rts		; 60

	sta $78.b		; 85 78
	sbc $0BF610.l		; EF 10 F6 0B
	stz $FE67.w		; 9C 67 FE
	ora $7F9FFF.l		; 0F FF 9F 7F
	sbc $3AF606.l,X		; FF 06 F6 3A
.INDEX 16
	rep #$10		; C2 10
	rts		; 60

	php		; 08
	ora $60.b,S		; 03 60
	ora [$06.b],Y		; 17 06
	adc $1E9F0E.l		; 6F 0E 9F 1E
	sbc $3700F0.l,X		; FF F0 00 37
	cmp [$FF.b]		; C7 FF
	ora $087C.w		; 0D 7C 08
	and $310F7E.l,X		; 3F 7E 0F 31
	eor $501D08.l,X		; 5F 08 1D 50
	brk $07.b		; 00 07
	cmp $2F.b,S		; C3 2F
	tsb $6F.b		; 04 6F
	php		; 08
	sta $01FE04.l		; 8F 04 FE 01
	beq  11.b		; F0 0B
	sbc $16.b,S		; E3 16
	inc $05.b		; E6 05
	cop $0A.b		; 02 0A
	tsb $1C.b		; 04 1C
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $63.b		; 00 63
	tas		; 1B
	cmp $3B.b,S		; C3 3B
	cmp [$33.b]		; C7 33
	cmp $37.b,S		; C3 37
	stx $77.b		; 86 77
	sta [$66.b],Y		; 97 66
	asl $E6.b,X		; 16 E6
	bit $C6.b,X		; 34 C6
	tas		; 1B
	ora [$3B.b]		; 07 3B
	ora [$33.b]		; 07 33
	ora $720F32.l		; 0F 32 0F 72
	ora $E41F66.l		; 0F 66 1F E4
	ora $933FC4.l,X		; 1F C4 3F 93
	lda ($0E.b,X)		; A1 0E
	bcs -94.b		; B0 A2
	trb $0679.w		; 1C 79 06
	jmp ($0C13.w)		; 6C 13 0C
	adc ($09.b,S),Y		; 73 09
	inc $29.b,X		; F6 29
	dec $2D.b,X		; D6 2D
	cpy $C131.w		; CC 31 C1
	ora $06E1.w,X		; 1D E1 06
	sed		; F8
	ora ($EC.b,S),Y		; 13 EC
	adc ($8C.b,S),Y		; 73 8C
	inc $08.b,X		; F6 08
	dec $08.b,X		; D6 08
	sta ($12.b)		; 92 12
	sta ($12.b)		; 92 12
	cmp ($41.b),Y		; D1 41
	cmp $5F41.w,Y		; D9 41 5F
	sta ($B8.b,S),Y		; 93 B8
	ora [$80.b]		; 07 80
	ora $00.b,S		; 03 00
	brk $7F.b		; 00 7F
	adc $6D7F.w		; 6D 7F 6D
	adc $26672E.l		; 6F 2E 67 26
	lda ($20.b,S),Y		; B3 20
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $03D621.l		; AF 21 D6 03
	adc $147C07.l		; 6F 07 7C 14
	xce		; FB
	sed		; F8
	adc ($F0.b,S),Y		; 73 F0
	ora $00F8.w,Y		; 19 F8 00
	adc $EFDEFF.l,X		; 7F FF DE EF
	sbc $F0F4.w		; ED F4 F0
	sbc ($E0.b,S),Y		; F3 E0
	sbc [$00.b]		; E7 00
	sta $606780.l		; 8F 80 67 60
	ora $03.b,S		; 03 03
	jsr $00E6.w		; 20 E6 00
	jsr ($3C20.w,X)		; FC 20 3C
	inx		; E8
	ora $FE03FA.l		; 0F FA 03 FE
	brk $FF.b		; 00 FF
	brk $CF.b		; 00 CF
	cpy #$041C.w		; C0 1C 04
	bra -128.b		; 80 80
	bne  16.b		; D0 10
	pea $FD04.w		; F4 04 FD
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($06.b,X)		; 01 06
	ora ($06.b,X)		; 01 06
	ora ($04.b,X)		; 01 04
	ora $04.b,S		; 03 04
	ora $05.b,S		; 03 05
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $0D.b		; 00 0D
	sbc ($1A.b)		; F2 1A
	sbc $33.b		; E5 33
	cpy $FE01.w		; CC 01 FE
	ora $FA.b		; 05 FA
	eor $629BB1.l		; 4F B1 9B 62
	sta $E260.w,Y		; 99 60 E2
	ora $1AE5.w,X		; 1D E5 1A
	cpy $FE32.w		; CC 32 FE
	brk $FA.b		; 00 FA
	brk $B1.b		; 00 B1
	ora ($65.b,X)		; 01 65
	brk $67.b		; 00 67
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $07.b		; 02 07
	tsb $05.b		; 04 05
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($04.b,X)		; 01 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	stp		; DB
	ldy #$C0B0.w		; A0 B0 C0
	cpx #$E080.w		; E0 80 E0
	bne -16.b		; D0 F0
	sty $FC8C.w		; 8C 8C FC
	jmp ($0000.w,X)		; 7C 00 00
	ldy #$C000.w		; A0 00 C0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	rti		; 40

	beq  32.b		; F0 20
	jsr ($7C70.w,X)		; FC 70 7C
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	sbc $000F00.l,X		; FF 00 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
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
	bra   0.b		; 80 00
	adc $0780.w,Y		; 79 80 07
	sed		; F8
	and ($DE.b,X)		; 21 DE
	nop		; EA
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F8.b		; 00 F8
	brk $DE.b		; 00 DE
	jsr $E814.w		; 20 14 E8
	adc $8A.b,X		; 75 8A
	lda $AD46.w,Y		; B9 46 AD
	eor ($6A.b)		; 52 6A
	ldy $D6.b,X		; B4 D6
	sec		; 38
	iny		; C8
	tsb $B0.b		; 04 B0
	pha		; 48
	cpx #$0238.w		; E0 38 02
	cpx $AC42.w		; EC 42 AC
	eor ($94.b)		; 52 94
	sty $10.b,X		; 94 10
	plp		; 28
	brk $30.b		; 00 30
	pha		; 48
	beq   0.b		; F0 00
	bne  16.b		; D0 10
	tsb $03.b		; 04 03
	php		; 08
	ora [$10.b]		; 07 10
	ora $240D12.l		; 0F 12 0D 24
	tas		; 1B
	and #$16.b		; 29 16
	tad		; 5B
	bit $72.b		; 24 72
	ora $0003.w		; 0D 03 00
	ora [$00.b]		; 07 00
	ora $000D00.l		; 0F 00 0D 00
	tas		; 1B
	brk $16.b		; 00 16
	ora ($24.b,X)		; 01 24
	ora $0D.b,S		; 03 0D
	cop $00.b		; 02 00
	sbc $3CF10E.l,X		; FF 0E F1 3C
	cmp $70.b,S		; C3 70
	sta $FF00FF.l		; 8F FF 00 FF
	brk $38.b		; 00 38
	cmp [$43.b]		; C7 43
	ldy $00FF.w,X		; BC FF 00
	sbc ($0E.b),Y		; F1 0E
	cmp $3C.b,S		; C3 3C
	sta $FF0070.l		; 8F 70 00 FF
	brk $FF.b		; 00 FF
	cmp [$38.b]		; C7 38
	ldy $8040.w,X		; BC 40 80
	bra  57.b		; 80 39
	ora ($E6.b,X)		; 01 E6
	ora [$B0.b]		; 07 B0
	and $00F800.l,X		; 3F 00 F8 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $FE.b		; 00 FE
	brk $F9.b		; 00 F9
	ora ($C8.b,X)		; 01 C8
	php		; 08
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dec $3992.w,X		; DE 92 39
	cmp #$3F.b		; C9 3F
	jmp.w [$803C]		; DC 3C 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $213300.l		; 0F 00 33 21
	cmp $809CC6.l		; CF C6 9C 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $0E.b		; 02 0E
	ora ($07.b,X)		; 01 07
	ora $03.b,S		; 03 03
	asl $150E.w		; 0E 0E 15
	ora ($1E.b),Y		; 11 1E
	bpl  47.b		; 10 2F
	jsr $1073.w		; 20 73 10
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	ora $00.b,S		; 03 00
	ora $0E1F01.l		; 0F 01 1F 0E
	ora $1F3F0F.l,X		; 1F 0F 3F 1F
	ora $0E080F.l,X		; 1F 0F 08 0E
	jsr ($EFFF.w,X)		; FC FF EF
	ora $7C04F4.l		; 0F F4 04 7C
	tsb $BA.b		; 04 BA
	.db $82, $5E, $42		; 82 5E 42
	lda $21.b		; A5 21
	pea $FA04.w		; F4 04 FA
	cop $FF.b		; 02 FF
	beq  -1.b		; F0 FF
	xce		; FB
	sbc $7DFFFB.l,X		; FF FB FF 7D
	sbc $DEFFBD.l,X		; FF BD FF DE
	ora $03.b,S		; 03 03
	ora ($03.b,X)		; 01 03
	cmp ($C1.b,X)		; C1 C1
	rep #$42		; C2 42
	sbc ($41.b,X)		; E1 41
	beq  97.b		; F0 61
	dec $D941.w,X		; DE 41 D9
	phk		; 4B
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	cmp ($02.b,X)		; C1 02
	cmp $81.b,S		; C3 81
	cmp ($80.b,X)		; C1 80
	cpx #$E080.w		; E0 80 E0
	ldy #$A4EC.w		; A0 EC A4
	cpy #$F0C0.w		; C0 C0 F0
	beq -48.b		; F0 D0
	bpl -16.b		; 10 F0
	bvs -80.b		; 70 B0
	bcc -16.b		; 90 F0
	beq  64.b		; F0 40
	bpl -128.b		; 10 80
	jsr $E080.w		; 20 80 E0
	beq   0.b		; F0 00
	beq -32.b		; F0 E0
	beq -128.b		; F0 80
	beq  96.b		; F0 60
	bvs   0.b		; 70 00
	cpx #$C000.w		; E0 00 C0
	brk $03.b		; 00 03
	jmp $DF007D.l		; 5C 7D 00 DF
	jsr $48B7.w		; 20 B7 48
	sbc [$08.b],Y		; F7 08
	and $00FE10.l		; 2F 10 FE 00
	sbc ($07.b,S),Y		; F3 07
	brk $FD.b		; 00 FD
	cop $C2.b		; 02 C2
	and ($11.b,X)		; 21 11
	pha		; 48
	bit $09.b		; 24 09
	ora $11.b		; 05 11
	ora $0101.w		; 0D 01 01
	ora ($0E.b,X)		; 01 0E
	ldy #$A21F.w		; A0 1F A2
	ora $66F9.w,X		; 1D F9 66
	jmp.w [$94E3]		; DC E3 94
	lda $4B.b,S		; A3 4B
	jmp ($2B84.w)		; 6C 84 2B
	dec $30.b,X		; D6 30
	eor $C2DD40.l,X		; 5F 40 DD C2
	ror $21.b		; 66 21
	tas		; 1B
	brk $DB.b		; 00 DB
	brk $D8.b		; 00 D8
	sty $C4DB.w		; 8C DB C4
	cmp $9867C0.l		; CF C0 67 98
	lda [$48.b],Y		; B7 48
	cmp ($3E.b,X)		; C1 3E
	tsb $FB.b		; 04 FB
	jmp ($C593.w)		; 6C 93 C5
	dec A		; 3A
	inc $3291.w		; EE 91 32
	and $6098.w		; 2D 98 60
	php		; 08
	beq  62.b		; F0 3E
	cpy #$04FB.w		; C0 FB 04
	sta $7C.b,S		; 83 7C
	dec A		; 3A
	ora $11.b		; 05 11
	asl $02CD.w		; 0E CD 02
	asl $C7E0.w,X		; 1E E0 C7
	sec		; 38
	sbc $1C.b,S		; E3 1C
	sbc ($0E.b),Y		; F1 0E
	sbc $FD06.w,Y		; F9 06 FD
	cop $FD.b		; 02 FD
	cop $7F.b		; 02 7F
	bra -32.b		; 80 E0
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	cpy #$40C0.w		; C0 C0 40
	rti		; 40

	cpy #$00C0.w		; C0 C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($FF.b,X)		; 01 FF
	sbc $09FC.w,X		; FD FC 09
	php		; 08
	cmp $7F600F.l		; CF 0F 60 7F
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	asl $06.b		; 06 06
	ora $00.b,S		; 03 00
	sbc [$00.b],Y		; F7 00
	beq   0.b		; F0 00
	bcc  16.b		; 90 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  24.b		; 10 18
	sec		; 38
	sec		; 38
	plp		; 28
	trb $3C3C.w		; 1C 3C 3C
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	bpl 124.b		; 10 7C
	php		; 08
	ror $7E18.w,X		; 7E 18 7E
	brk $3F.b		; 00 3F
	and $087B0F.l,X		; 3F 0F 7B 08
	adc $08CB0F.l		; 6F 0F CB 08
	sta [$07.b]		; 87 07
	sta $07.b,S		; 83 07
	ora $07.b,S		; 03 07
	ora [$03.b]		; 07 03
	ora $070F00.l		; 0F 00 0F 07
	ora $070F00.l		; 0F 00 0F 07
	ora [$08.b]		; 07 08
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	bne  15.b		; D0 0F
	bcc  15.b		; 90 0F
	bcc  15.b		; 90 0F
	ora ($0E.b),Y		; 11 0E
	ora ($0E.b),Y		; 11 0E
	ora ($0C.b,S),Y		; 13 0C
	ora ($0C.b,S),Y		; 13 0C
	phd		; 0B
	tsb $0F.b		; 04 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $1F.b		; 00 1F
	cpx #$807C.w		; E0 7C 80
	sed		; F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	brk $08.b		; 00 08
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
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	ora $833F40.l		; 0F 40 3F 83
	jmp ($FB04.w,X)		; 7C 04 FB
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $003F00.l		; 0F 00 3F 00
	jmp ($FB00.w,X)		; 7C 00 FB
	brk $FF.b		; 00 FF
	brk $6C.b		; 00 6C
	tsb $233B.w		; 0C 3B 23
	rol $4020.w,X		; 3E 20 40
	bra 127.b		; 80 7F
	sta $C1C0C0.l		; 8F C0 C0 C1
	cmp ($C7.b,X)		; C1 C7
	sty $3F.b		; 84 3F
	and ($3F.b,S),Y		; 33 3F
	trb $1F3F.w		; 1C 3F 1F
	and $808F3F.l,X		; 3F 3F 8F 80
	adc $3E7F3F.l,X		; 7F 3F 7F 3E
	bit $D338.w,X		; 3C 38 D3
	ora ($40.b),Y		; 11 40
	rti		; 40

	lda $4043BF.l,X		; BF BF 43 40
	lsr $5F59.w,X		; 5E 59 5F
	cli		; 58
	eor $0E5A.w,X		; 5D 5A 0E
	eor $EEFF.w,Y		; 59 FF EE
	cpy #$BCBF.w		; C0 BF BC
	adc $49FC40.l,X		; 7F 40 FC 49
	plx		; FA
	php		; 08
	plx		; FA
	asl A		; 0A
	sed		; F8
	ora ($F8.b,X)		; 01 F8
	cli		; 58
	lsr A		; 4A
	bvs  96.b		; 70 60
	adc $0183.w,Y		; 79 83 01
	brk $DE.b		; 00 DE
	and $9768.w,Y		; 39 68 97
	lda ($4E.b),Y		; B1 4E
	beq  15.b		; F0 0F
	sbc $6CA4.w		; ED A4 6C
	sta $00C700.l		; 8F 00 C7 00
	inc $3809.w,X		; FE 09 38
	sta [$50.b]		; 87 50
	asl $0FE0.w		; 0E E0 0F
	bra -64.b		; 80 C0
	rts		; 60

	brk $60.b		; 00 60
	inc $8180.w,X		; FE 80 81
	ror $C738.w,X		; 7E 38 C7
	sbc $00FF00.l,X		; FF 00 FF 00
	tsb $80F3.w		; 0C F3 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra 126.b		; 80 7E
	brk $C7.b		; 00 C7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F3.b		; 00 F3
	brk $F9.b		; 00 F9
	ora $FD.b,S		; 03 FD
	brk $06.b		; 00 06
	sed		; F8
	ora $00FFE0.l,X		; 1F E0 FF 00
	cpy #$003F.w		; C0 3F 00
	sbc $01FE01.l,X		; FF 01 FE 01
	asl $00.b		; 06 00
	ora $F8.b,S		; 03 F8
	ora ($E0.b,X)		; 01 E0
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora ($42.b,X)		; 01 42
	and $9E82.w,X		; 3D 82 9E
	cpy #$FE4F.w		; C0 4F FE
	and ($AA.b),Y		; 31 AA
	trb $8000.w		; 1C 00 80
	trb $C1BE.w		; 1C BE C1
	brk $DE.b		; 00 DE
	cmp $6DEC.w,X		; DD EC 6D
	bvs  48.b		; 70 30
	and ($00.b),Y		; 31 00
	brk $7F.b		; 00 7F
	bra 127.b		; 80 7F
	dey		; 88
	adc $FEFF00.l,X		; 7F 00 FF FE
	ora ($7D.b,X)		; 01 7D
	cop $C6.b		; 02 C6
	and $8778.w,Y		; 39 78 87
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	eor $BC.b,S		; 43 BC
	bra 127.b		; 80 7F
	ora ($CE.b,X)		; 01 CE
	cop $9C.b		; 02 9C
	and $8700.w,Y		; 39 00 87
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $BC.b		; 00 BC
	rti		; 40

	adc $C03F80.l,X		; 7F 80 3F C0
	sbc $C83700.l,X		; FF 00 37 C8
	rol $C8.b,X		; 36 C8
	ror $98.b		; 66 98
	dec $0C30.w		; CE 30 0C
	beq  28.b		; F0 1C
	cpx #$00C0.w		; E0 C0 00
	brk $00.b		; 00 00
	iny		; C8
	brk $C8.b		; 00 C8
	brk $98.b		; 00 98
	brk $30.b		; 00 30
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$03.b]		; 07 03
	ora $207808.l,X		; 1F 08 78 20
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	tsb $04.b		; 04 04
	ora [$10.b],Y		; 17 10
	eor $000040.l,X		; 5F 40 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$3000.w		; C0 00 30
	cpy #$7088.w		; C0 88 70
	pea $FE08.w		; F4 08 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $70.b		; 00 70
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	sed		; F8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cpx #$001F.w		; E0 1F 00
	sbc $E0C03F.l,X		; FF 3F C0 E0
	brk $F8.b		; 00 F8
	ora [$FF.b]		; 07 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $1F.b		; 00 1F
	cpx #$00FF.w		; E0 FF 00
	cpy #$0000.w		; C0 00 00
	brk $C5.b		; 00 C5
	rol $04.b		; 26 04
	sbc [$10.b]		; E7 10
	sbc ($10.b,S),Y		; F3 10
	sbc ($00.b,S),Y		; F3 00
	sbc ($02.b,S),Y		; F3 02
	sbc ($E2.b,S),Y		; F3 E2
	ora ($28.b,S),Y		; 13 28
	ora $C118.w,Y		; 19 18 C1
	cmp $CD00.w,Y		; D9 00 CD
	brk $CD.b		; 00 CD
	brk $DE.b		; 00 DE
	ora ($EC.b)		; 12 EC
	brk $0C.b		; 00 0C
	brk $06.b		; 00 06
	brk $F0.b		; 00 F0
	ora $3F8679.l		; 0F 79 86 3F
	cpy #$06F9.w		; C0 F9 06
	inc $7010.w		; EE 10 70
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	beq -122.b		; F0 86
	adc $3FC0.w,Y		; 79 C0 3F
	asl $F8.b		; 06 F8
	bpl -32.b		; 10 E0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cli		; 58
	ldy #$40B0.w		; A0 B0 40
	rts		; 60

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $67FC0C.l,X		; 1F 0C FC 67
	cpx #$001E.w		; E0 1E 00
	rts		; 60

	adc $00FC00.l,X		; 7F 00 FC 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $13.b,S		; 03 13
	bpl -97.b		; 10 9F
	bra  -1.b		; 80 FF
	brk $9C.b		; 00 9C
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
.ACCU 16
.INDEX 16
	rep #$3E		; C2 3E
	jsr ($C8FC.w,X)		; FC FC C8
	cmp $00FC80.l		; CF 80 FC 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $04.b		; 05 04
	sta $00.b,S		; 83 00
	bit $04.b,X		; 34 04
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $01.b,S		; 03 01
	ora $171703.l		; 0F 03 17 17
	asl $1717.w,X		; 1E 17 17
	asl $1C.b,X		; 16 1C
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	asl $1C08.w,X		; 1E 08 1C
	php		; 08
	asl $1C08.w,X		; 1E 08 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	bpl  28.b		; 10 1C
	tsb $1A0E.w		; 0C 0E 1A
	ora $1D.b,S		; 03 1D
	ora ($2E.b,X)		; 01 2E
	cpx #$7017.w		; E0 17 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	bpl   0.b		; 10 00
	trb $1E00.w		; 1C 00 1E
	brk $5F.b		; 00 5F
	rti		; 40

	and $030320.l		; 2F 20 03 03
	cop $01.b		; 02 01
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	bvs   1.b		; 70 01
	ora [$00.b]		; 07 00
	ora [$01.b]		; 07 01
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	ldy #$8020.w		; A0 20 80
	bra -128.b		; 80 80
	cpy #$C0C0.w		; C0 C0 C0
	rts		; 60

	rts		; 60

	bmi 112.b		; 30 70
	sec		; 38
	sec		; 38
	trb $1E3C.w		; 1C 3C 1E
	asl $C000.w,X		; 1E 00 C0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	bpl 124.b		; 10 7C
	clc		; 18
	ror $3F0C.w,X		; 7E 0C 3F
	trb $1C1C.w		; 1C 1C 1C
	trb $1C1C.w		; 1C 1C 1C
	tsb $0C1C.w		; 0C 1C 0C
	trb $0C1C.w		; 1C 1C 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $3E18.w		; 0C 18 3E
	php		; 08
	rol $3E08.w,X		; 3E 08 3E
	php		; 08
	rol $3E0C.w,X		; 3E 0C 3E
	tsb $0C3E.w		; 0C 3E 0C
	asl $1E04.w,X		; 1E 04 1E
	tsb $040C.w		; 0C 0C 04
	tsb $0C04.w		; 0C 04 0C
	ora $0C0F0F.l		; 0F 0F 0F 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $1E.b		; 04 1E
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	ora [$1F.b]		; 07 1F
	tsb $001F.w		; 0C 1F 00
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	rts		; 60

	beq   0.b		; F0 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $BC.b		; 00 BC
	rti		; 40

	jmp $205C20.l		; 5C 20 5C 20
	bit $1E10.w		; 2C 10 1E
	brk $0E.b		; 00 0E
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	ora ($F8.b,X)		; 01 F8
	ora [$01.b]		; 07 01
	inc $FD02.w,X		; FE 02 FD
	bra 127.b		; 80 7F
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	inc $FD00.w,X		; FE 00 FD
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $54.b		; 00 54
	php		; 08
	pea $6408.w		; F4 08 64
	tya		; 98
	cpy $38.b		; C4 38
	sty $78.b		; 84 78
	tsb $F8.b		; 04 F8
	php		; 08
	beq  72.b		; F0 48
	bcs   8.b		; B0 08
	brk $08.b		; 00 08
	brk $98.b		; 00 98
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $B0.b		; 00 B0
	rti		; 40

	tsb $1003.w		; 0C 03 10
	ora $201F20.l		; 0F 20 1F 20
	ora $4A3D42.l,X		; 1F 42 3D 4A
	and $4B.b,X		; 35 4B
	bit $8A.b,X		; 34 8A
	adc $03.b,X		; 75 03
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3D.b		; 00 3D
	cop $34.b		; 02 34
	ora $34.b,S		; 03 34
	ora $75.b,S		; 03 75
	cop $01.b		; 02 01
	inc $8150.w,X		; FE 50 81
	adc $CA3584.l,X		; 7F 84 35 CA
	bit #$9B76.w		; 89 76 9B
	rts		; 60

	cmp ($21.b)		; D2 21
	lsr $C0A1.w,X		; 5E A1 C0
	brk $BE.b		; 00 BE
	brk $8D.b		; 00 8D
	asl $CB.b		; 06 CB
	tsb $77.b		; 04 77
	bra 103.b		; 80 67
	bra  45.b		; 80 2D
	cpy #$40A1.w		; C0 A1 40
	lda [$48.b],Y		; B7 48
	lda ($4C.b,S),Y		; B3 4C
	adc ($0C.b,S),Y		; 73 0C
	adc ($0E.b),Y		; 71 0E
	adc ($0E.b),Y		; 71 0E
	sec		; 38
	ora [$38.b]		; 07 38
	ora [$18.b]		; 07 18
	ora [$48.b]		; 07 48
	brk $4C.b		; 00 4C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $B8.b		; 00 B8
	eor [$98.b]		; 47 98
	adc [$8C.b]		; 67 8C
	adc ($86.b,S),Y		; 73 86
	adc $7F80.w,Y		; 79 80 7F
	bra 127.b		; 80 7F
	rti		; 40

	lda $47FF00.l,X		; BF 00 FF 47
	brk $67.b		; 00 67
	brk $73.b		; 00 73
	brk $79.b		; 00 79
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $BF.b		; 00 BF
	brk $FF.b		; 00 FF
	brk $F9.b		; 00 F9
	trb $DC3A.w		; 1C 3A DC
	trb $10F8.w		; 1C F8 10
	sed		; F8
	bra 120.b		; 80 78
	cop $A0.b		; 02 A0
	phd		; 0B
	cld		; D8
	sta ($F0.b,S),Y		; 93 F0
	php		; 08
	asl $1C10.w,X		; 1E 10 1C
	bne -34.b		; D0 DE
	cpy #$C0DC.w		; C0 DC C0
	jmp $881CC0.l		; 5C C0 1C 88
	bit $BC00.w,X		; 3C 00 BC
	sed		; F8
	rts		; 60

	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $FF.b		; 00 FF
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $CD.b		; 00 CD
	rol $0D.b		; 26 0D
	inc $51.b		; E6 51
	lda ($DF.b)		; B2 DF
	and $67B17D.l,X		; 3F 7D B1 67
	lda [$3D.b]		; A7 3D
	cmp $D333.w,Y		; D9 33 D3
	clc		; 18
	ora ($D8.b,X)		; 01 D8
	ora ($8C.b,X)		; 01 8C
	eor ($0F.b,X)		; 41 0F
	cpy #$4EBF.w		; C0 BF 4E
	lda $26DF58.l,X		; BF 58 DF 26
	cmp $07F82C.l,X		; DF 2C F8 07
	cpx #$E01F.w		; E0 1F E0
	ora $C00FF0.l,X		; 1F F0 0F C0
	and $803FC0.l,X		; 3F C0 3F 80
	adc $071FE0.l,X		; 7F E0 1F 07
	sed		; F8
	ora $E01FE0.l,X		; 1F E0 1F E0
	ora $C03FF0.l		; 0F F0 3F C0
	and $807FC0.l,X		; 3F C0 7F 80
	ora $C644E0.l,X		; 1F E0 44 C6
	mvp $40,$C6		; 44 C6 40
	dec $48.b		; C6 48
	dec $CC48.w		; CE 48 CC
	pha		; 48
	dec $C704.w		; CE 04 C7
	and ($61.b,X)		; 21 61
	sec		; 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $34.b		; 04 34
	tsb $30.b		; 04 30
	brk $30.b		; 00 30
	brk $7A.b		; 00 7A
	.db $42, $1E		; 42 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $34.b		; 00 34
	bit $34.b,X		; 34 34
	bit $3C.b		; 24 3C
	bit $0E0C.w,X		; 3C 0C 0E
	cop $07.b		; 02 07
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	brk $3C.b		; 00 3C
	jsr $247E.w		; 20 7E 24
	ror $7E1C.w,X		; 7E 1C 7E
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	brk $08.b		; 00 08
	brk $03.b		; 00 03
	cmp $6D41.w,Y		; D9 41 6D
	ora #$0115.w		; 09 15 01
	trb $0308.w		; 1C 08 03
	ora $08.b,S		; 03 08
	tsb $01.b		; 04 01
	sta $87.b,S		; 83 87
	ora [$67.b]		; 07 67
	rol $1B.b		; 26 1B
	ora ($0B.b)		; 12 0B
	asl A		; 0A
	php		; 08
	ora $01.b,S		; 03 01
	ora $009F00.l,X		; 1F 00 9F 00
	cmp $6A5F03.l,X		; DF 03 5F 6A
	pha		; 48
	ror A		; 6A
	pha		; 48
	ora $CD09.w		; 0D 09 CD
	cmp #$5252.w		; C9 52 52
	jsl $A4A422.l		; 22 22 A4 A4
	lda ($B0.b),Y		; B1 B0
	sbc $B7FFB7.l,X		; FF B7 FF B7
	and $F6DFF6.l,X		; 3F F6 DF F6
	ora $FD2FED.l,X		; 1F ED 2F FD
	and $FE96FB.l		; 2F FB 96 FE
	bne -56.b		; D0 C8
	dey		; 88
	bra  40.b		; 80 28
	brk $58.b		; 00 58
	brk $B0.b		; 00 B0
	brk $70.b		; 00 70
	jsr $40D0.w		; 20 D0 40
	bcs -96.b		; B0 A0
	cpx #$F020.w		; E0 20 F0
	bvs -16.b		; 70 F0
	beq -32.b		; F0 E0
	cpx #$C0C0.w		; E0 C0 C0
	ldy #$6080.w		; A0 80 60
	jsr $40E0.w		; 20 E0 40
	brk $FF.b		; 00 FF
	ora ($FE.b,X)		; 01 FE
	ora $FC.b,S		; 03 FC
	ora [$F8.b]		; 07 F8
	trb $00E3.w		; 1C E3 00
	sbc $FCFC03.l,X		; FF 03 FC FC
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora ($FC.b,X)		; 01 FC
	ora $F8.b,S		; 03 F8
	ora [$E3.b]		; 07 E3
	trb $00FF.w		; 1C FF 00
	jsr ($0000.w,X)		; FC 00 00
	brk $90.b		; 00 90
	rts		; 60

	bcc  96.b		; 90 60
	ldy #$2040.w		; A0 40 20
	cpy #$8040.w		; C0 40 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	bra  96.b		; 80 60
	bra  64.b		; 80 40
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8F.b		; 00 8F
	bvs -114.b		; 70 8E
	adc ($9E.b),Y		; 71 9E
	adc ($9F.b,X)		; 61 9F
	rts		; 60

	sta $48B760.l,X		; 9F 60 B7 48
	lda [$48.b],Y		; B7 48
	lda [$48.b],Y		; B7 48
	bvs   0.b		; 70 00
	adc ($00.b),Y		; 71 00
	adc ($00.b,X)		; 61 00
	rts		; 60

	brk $60.b		; 00 60
	brk $48.b		; 00 48
	brk $48.b		; 00 48
	brk $48.b		; 00 48
	brk $0B.b		; 00 0B
	sbc $17.b,X		; F5 17
	inx		; E8
	rol $C9.b,X		; 36 C9
	beq  15.b		; F0 0F
	sbc ($0E.b),Y		; F1 0E
	sbc $FF02.w,X		; FD 02 FF
	brk $F3.b		; 00 F3
	tsb $08F4.w		; 0C F4 08
	inx		; E8
	bpl -63.b		; 10 C1
	rol $F00F.w,X		; 3E 0F F0
	asl $0200.w		; 0E 00 02
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $18.b		; 00 18
	ora [$0C.b]		; 07 0C
	ora $0C.b,S		; 03 0C
	ora $06.b,S		; 03 06
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	jsr ($FE01.w,X)		; FC 01 FE
	cmp ($3E.b,X)		; C1 3E
	adc $E01F80.l,X		; 7F 80 1F E0
	sta $3EC170.l		; 8F 70 C1 3E
	sec		; 38
	ora [$FC.b]		; 07 FC
	ora $FE.b,S		; 03 FE
	ora ($3E.b,X)		; 01 3E
	cmp ($80.b,X)		; C1 80
	adc $701FE0.l,X		; 7F E0 1F 70
	ora $07013E.l		; 0F 3E 01 07
	brk $C9.b		; 00 C9
	asl A		; 0A
	cli		; 58
	lda ($40.b,S),Y		; B3 40
	sta [$C8.b]		; 87 C8
	ora $B24F98.l		; 0F 98 4F B2
	adc $B3.b		; 65 B3
	stz $89.b		; 64 89
	ror $02.b		; 66 02
	bit $3C83.w,X		; 3C 83 3C
	sta $38.b,S		; 83 38
	and ($00.b,S),Y		; 33 00
	and ($00.b,S),Y		; 33 00
	ora $1802.w,Y		; 19 02 18
	ora $3C.b,S		; 03 3C
	and $FF.b		; 25 FF
	brk $7F.b		; 00 7F
	bra  15.b		; 80 0F
	beq   0.b		; F0 00
	sbc $607F80.l,X		; FF 80 7F 60
	sta $FF40BF.l,X		; 9F BF 40 FF
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra -97.b		; 80 9F
	rts		; 60

	rti		; 40

	lda $FFFF00.l,X		; BF 00 FF FF
	ora $C707EF.l,X		; 1F EF 07 C7
	and [$83.b],Y		; 37 83
	adc [$83.b],Y		; 77 83
	tda		; 7B
	cmp ($3B.b,X)		; C1 3B
	sbc ($1D.b,X)		; E1 1D
	brk $FD.b		; 00 FD
	asl $07E3.w,X		; 1E E3 07
	sbc $73CF33.l,X		; FF 33 CF 73
	sta $398779.l		; 8F 79 87 39
	cmp [$1C.b]		; C7 1C
	sbc $FC.b,S		; E3 FC
	ora $70.b,S		; 03 70
	ora $007F00.l		; 0F 00 7F 00
	adc $80BF00.l,X		; 7F 00 BF 80
	lda $80BF80.l,X		; BF 80 BF 80
	lda $0F9CC3.l,X		; BF C3 9C 0F
	beq 127.b		; F0 7F
	bra 127.b		; 80 7F
	bra  63.b		; 80 3F
	cpy #$C03F.w		; C0 3F C0
	lda $C0BFC0.l,X		; BF C0 BF C0
	stz $00E0.w		; 9C E0 00
	rts		; 60

	php		; 08
	sec		; 38
	tsb $1C.b		; 04 1C
	cop $0E.b		; 02 0E
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $101720.l,X		; 3F 20 17 10
	phd		; 0B
	php		; 08
	ora $04.b		; 05 04
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	ror $0F0C.w,X		; 7E 0C 0F
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	cmp [$C0.b]		; C7 C0
	adc $E313F8.l,X		; 7F F8 13 E3
	sei		; 78
	brk $90.b		; 00 90
	bpl -14.b		; 10 F2
	cop $FC.b		; 02 FC
	brk $FF.b		; 00 FF
	brk $39.b		; 00 39
	ora ($8B.b,X)		; 01 8B
	sta $2F.b,S		; 83 2F
	bit $0707.w		; 2C 07 07
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $003F00.l,X		; 1F 00 3F 00
	rol $3F00.w,X		; 3E 00 3F
	brk $7B.b		; 00 7B
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora $011E00.l		; 0F 00 1E 01
	ora ($18.b,X)		; 01 18
	clc		; 18
	ora $01.b		; 05 01
	cmp $3FDF1F.l		; CF 1F DF 3F
	sbc $00FF30.l,X		; FF 30 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $FD01.w,X		; FE 01 FD
	ora $07.b,S		; 03 07
	lda $00BF0F.l,X		; BF 0F BF 00
	bmi   0.b		; 30 00
	ora $008780.l		; 0F 80 87 00
	sei		; 78
	brk $7D.b		; 00 7D
	bra -69.b		; 80 BB
	cmp ($D1.b,S),Y		; D3 D1
	phx		; DA
	phx		; DA
	sbc ($E9.b,X)		; E1 E9
	sbc $6A.b,S		; E3 6A
	sbc $E64F61.l		; EF 61 4F E6
	trb $194C.w		; 1C 4C 19
	ora #$FC85.w		; 09 85 FC
	cmp $FD.b,S		; C3 FD
	cmp $FE.b,S		; C3 FE
	.db $42, $7C		; 42 7C
	ora ($78.b,X)		; 01 78
	asl $F0.b		; 06 F0
	ora $E60FE3.l		; 0F E3 0F E6
	rts		; 60

	rti		; 40

	beq -128.b		; F0 80
	beq  96.b		; F0 60
	bcs -128.b		; B0 80
	cpy #$8080.w		; C0 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -128.b		; 80 80
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $FC.b,S		; 03 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	cop $FC.b		; 02 FC
	cop $FC.b		; 02 FC
	jsr ($FF00.w,X)		; FC 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $18.b		; 00 18
	cpx #$F804.w		; E0 04 F8
	ply		; 7A
	sty $86.b		; 84 86
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $84.b		; 00 84
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	sed		; F8
	tsb $F8.b		; 04 F8
	php		; 08
	beq   8.b		; F0 08
	beq  16.b		; F0 10
	cpx #$C020.w		; E0 20 C0
	cpy #$0000.w		; C0 00 00
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rol $003F.w,X		; 3E 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $0001.w,X		; 3E 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $9C.b		; 00 9C
	cpy #$C0C0.w		; C0 C0 C0
	rti		; 40

	cpy #$6040.w		; C0 40 60
	rts		; 60

	bvs 120.b		; 70 78
	sei		; 78
	jmp ($0054.w,X)		; 7C 54 00
	brk $80.b		; 00 80
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	bvc  -4.b		; 50 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	bpl  88.b		; 10 58
	bmi 120.b		; 30 78
	bmi 120.b		; 30 78
	bmi 120.b		; 30 78
	bpl  88.b		; 10 58
	bpl  88.b		; 10 58
	bpl  88.b		; 10 58
	brk $4C.b		; 00 4C
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $38.b		; 00 38
	php		; 08
	brk $4C.b		; 00 4C
	php		; 08
	jmp $4C08.w		; 4C 08 4C
	brk $46.b		; 00 46
	brk $46.b		; 00 46
	tsb $46.b		; 04 46
	tsb $47.b		; 04 47
	brk $43.b		; 00 43
	sec		; 38
	php		; 08
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bit $3C04.w,X		; 3C 04 3C
	tsb $38.b		; 04 38
	brk $3A.b		; 00 3A
	cop $3E.b		; 02 3E
	cop $01.b		; 02 01
	tsb $0C07.w		; 0C 07 0C
	ora $18.b,S		; 03 18
	ora $300718.l		; 0F 18 07 30
	ora [$30.b],Y		; 17 30
	asl $2E60.w		; 0E 60 2E
	rts		; 60

	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $000708.l		; 0F 08 07 00
	ora $000F10.l,X		; 1F 10 0F 00
	and $001F20.l,X		; 3F 20 1F 00
	cpy #$C060.w		; C0 60 C0
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C040.w		; C0 40 C0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $01.b		; 00 01
	brk $C1.b		; 00 C1
	sbc $003FCE.l,X		; FF CE 3F 00
	lda $DD21.w		; AD 21 DD
	ora ($5D.b),Y		; 11 5D
	ora ($9D.b),Y		; 11 9D
	sta ($00.b),Y		; 91 00
	brk $00.b		; 00 00
	brk $CE.b		; 00 CE
	brk $DE.b		; 00 DE
	dec $DEFF.w,X		; DE FF DE
	sbc $EEFFEE.l,X		; FF EE FF EE
	sbc $831E6E.l,X		; FF 6E 1E 83
	dex		; CA
	cmp $F0.b,S		; C3 F0
	adc ($F8.b,S),Y		; 73 F8
	tda		; 7B
	jsr ($F83E.w,X)		; FC 3E F8
	asl $1ED8.w,X		; 1E D8 1E
	pei ($12.b)		; D4 12
	jsr ($3C80.w,X)		; FC 80 3C
	brk $0E.b		; 00 0E
	cop $E6.b		; 02 E6
	.db $82, $F0, $C0		; 82 F0 C0
	pea $FCE4.w		; F4 E4 FC
	cpx $F8.b		; E4 F8
	inx		; E8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	bit $0000.w		; 2C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	jsr ($80B2.w,X)		; FC B2 80
	adc $1F1F6E.l		; 6F 6E 1F 1F
	ora $07.b,S		; 03 07
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	jsr ($FC00.w,X)		; FC 00 FC
	jmp ($107E.w,X)		; 7C 7E 10
	tas		; 1B
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	rti		; 40

	rts		; 60

	rti		; 40

	cpx #$80C0.w		; E0 C0 80
	cpx #$6000.w		; E0 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	bit $C003.w,X		; 3C 03 C0
	and $F800FF.l,X		; 3F FF 00 F8
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $C0.b		; 00 C0
	and $F001FE.l,X		; 3F FE 01 F0
	ora $00FF00.l		; 0F 00 FF 00
	sbc $C0FF00.l,X		; FF 00 FF C0
	and $3FFF00.l,X		; 3F 00 FF 3F
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	cpy #$00FF.w		; C0 FF 00
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	cop $0E.b		; 02 0E
	ora [$0C.b]		; 07 0C
	cop $18.b		; 02 18
	php		; 08
	clc		; 18
	ora ($31.b,X)		; 01 31
	ora ($31.b),Y		; 11 31
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora $04.b		; 05 04
	ora $00.b,S		; 03 00
	ora $000708.l		; 0F 08 07 00
	asl $0E10.w,X		; 1E 10 0E
	brk $80.b		; 00 80
	bra   2.b		; 80 02
	cop $08.b		; 02 08
	asl $7C60.w		; 0E 60 7C
	bra -16.b		; 80 F0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	ror $FC00.w,X		; 7E 00 FC
	brk $F4.b		; 00 F4
	tsb $90.b		; 04 90
	bpl  64.b		; 10 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $33.b,X		; 36 33
	stx $9E83.w		; 8E 83 9E
	sta $FA637D.l,X		; 9F 7D 63 FA
	asl $0C3D.w		; 0E 3D 0C
	cmp $08BBDC.l,X		; DF DC BB 08
	adc $FC3ECD.l,X		; 7F CD 3E FC
	ldx $72E0.w,Y		; BE E0 72
	sta ($FD.b)		; 92 FD
	pea $F0FB.w		; F4 FB F0
	sbc ($20.b,S),Y		; F3 20
	cmp [$C0.b]		; C7 C0
	cop $BE.b		; 02 BE
	ora ($F0.b)		; 12 F0
	lsr $3EC0.w,X		; 5E C0 3E
	brk $FC.b		; 00 FC
	brk $F2.b		; 00 F2
	cop $E4.b		; 02 E4
	asl $D0.b		; 06 D0
	trb $0404.w		; 1C 04 04
	rol $BE20.w		; 2E 20 BE
	bra  -2.b		; 80 FE
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $E8.b		; 00 E8
	php		; 08
	asl $01.b		; 06 01
	asl $0C01.w		; 0E 01 0C
	ora $0C.b,S		; 03 0C
	ora $0D.b,S		; 03 0D
	cop $99.b		; 02 99
	asl $9B.b		; 06 9B
	tsb $9B.b		; 04 9B
	tsb $01.b		; 04 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($06.b,X)		; 01 06
	ora ($04.b,X)		; 01 04
	ora $04.b,S		; 03 04
	ora $00.b,S		; 03 00
	sbc $80BF40.l,X		; FF 40 BF 80
	adc $817F80.l,X		; 7F 80 7F 81
	ror $FE01.w,X		; 7E 01 FE
	sta $9F72.w		; 8D 72 9F
	rts		; 60

	sbc $40BF00.l,X		; FF 00 BF 40
	adc $807F80.l,X		; 7F 80 7F 80
	ror $FE81.w,X		; 7E 81 FE
	ora ($72.b,X)		; 01 72
	sta $9F60.w		; 8D 60 9F
	eor #$2C36.w		; 49 36 2C
	ora ($24.b,S),Y		; 13 24
	tas		; 1B
	rol $19.b		; 26 19
	ora ($0C.b,S),Y		; 13 0C
	ora ($0E.b),Y		; 11 0E
	php		; 08
	ora [$08.b]		; 07 08
	ora [$36.b]		; 07 36
	ora ($13.b,X)		; 01 13
	brk $1B.b		; 00 1B
	brk $19.b		; 00 19
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $80.b		; 00 80
	adc $603FC0.l,X		; 7F C0 3F 60
	sta $00FF00.l,X		; 9F 00 FF 00
	sbc $E07F80.l,X		; FF 80 7F E0
	ora $7FC33C.l,X		; 1F 3C C3 7F
	bra  63.b		; 80 3F
	cpy #$609F.w		; C0 9F 60
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $001F00.l,X		; 7F 00 1F 00
	cmp $00.b,S		; C3 00
	jsr $20C0.w		; 20 C0 20
	cpy #$C020.w		; C0 20 C0
	rti		; 40

	bra  64.b		; 80 40
	bra  65.b		; 80 41
	bra -62.b		; 80 C2
	ora ($C3.b,X)		; 01 C3
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $01.b		; 00 01
	bra   0.b		; 80 00
	sta ($00.b,X)		; 81 00
	brk $01.b		; 00 01
	brk $1E.b		; 00 1E
	ora ($70.b,X)		; 01 70
	ora $843C43.l		; 0F 43 3C 84
	tda		; 7B
	sta $6A.b,X		; 95 6A
	adc ($8D.b)		; 72 8D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $033C00.l		; 0F 00 3C 03
	ply		; 7A
	ora $6A.b		; 05 6A
	sta $0D.b,X		; 95 0D
	beq   0.b		; F0 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $03FE01.l,X		; FF 01 FE 03
	jsr ($F807.w,X)		; FC 07 F8
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FE00.l,X		; FF 00 FE 00
	jsr ($F800.w,X)		; FC 00 F8
	brk $3B.b		; 00 3B
	cmp [$7F.b]		; C7 7F
	sta $ED987B.l		; 8F 7B 98 ED
	and ($DB.b,X)		; 21 DB
	.db $42, $FF		; 42 FF
	jmp ($3C9C.w,X)		; 7C 9C 3C
	.db $82, $06, $C0		; 82 06 C0
	brk $8F.b		; 00 8F
	brk $9F.b		; 00 9F
	ora [$3F.b]		; 07 3F
	asl $3D7E.w,X		; 1E 7E 3D
	jmp ($0800.w,X)		; 7C 00 08
	adc $3B7F00.l,X		; 7F 00 7F 3B
	tsb $DD.b		; 04 DD
	.db $42, $7E		; 42 7E
	eor ($E9.b,X)		; 41 E9
	bcc  87.b		; 90 57
	lda #$55AB.w		; A9 AB 55
	inc $B610.w		; EE 10 B6
	iny		; C8
	pei ($D2.b)		; D4 D2
	jsl $8CCD00.l		; 22 00 CD 8C
	stx $66.b,Y		; 96 66
	plp		; 28
	cmp ($15.b,X)		; C1 15
	sbc ($10.b,X)		; E1 10
	and $08.b		; 25 08
	cmp $E0.b		; C5 E0
	brk $60.b		; 00 60
	bra -32.b		; 80 E0
	brk $81.b		; 00 81
	ora ($01.b,X)		; 01 01
	eor ($41.b,X)		; 41 41
	adc ($E0.b,X)		; 61 E0
	sbc ($F2.b)		; F2 F2
	xce		; FB
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	ora ($40.b,X)		; 01 40
	ora ($E0.b,X)		; 01 E0
	ora ($FA.b,X)		; 01 FA
	rti		; 40

	sbc $00FFE0.l,X		; FF E0 FF 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $38.b		; 00 38
	brk $14.b		; 00 14
	php		; 08
	trb $08.b		; 14 08
	ora ($0C.b)		; 12 0C
	ora ($0C.b)		; 12 0C
	and ($0C.b)		; 32 0C
	and ($0E.b),Y		; 31 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $51.b		; 00 51
	adc ($59.b),Y		; 71 59
	adc $BDBD.w,Y		; 79 BD BD
	sbc $27B62F.l		; EF 2F B6 27
	rol $27.b,X		; 36 27
	ror A		; 6A
	phk		; 4B
	asl $4E0B.w		; 0E 0B 4E
	brk $46.b		; 00 46
	brk $F2.b		; 00 F2
	rti		; 40

	sed		; F8
	bne  -3.b		; D0 FD
	cmp $D9FD.w,Y		; D9 FD D9
	sbc $F57FB5.l,X		; FF B5 7F F5
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $86.b		; 00 86
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xce		; FB
	clc		; 18
	sed		; F8
	sec		; 38
	sbc $DFECBF.l		; EF BF EC DF
	rts		; 60

	lsr $1824.w,X		; 5E 24 18
	pea $7810.w		; F4 10 78
	brk $D7.b		; 00 D7
	cpy #$4077.w		; C0 77 40
	bcs  16.b		; B0 10
	cmp ($12.b)		; D2 12
	cld		; D8
	tya		; 98
	cpy #$18C0.w		; C0 C0 18
	php		; 08
	brk $00.b		; 00 00
	jsr $4038.w		; 20 38 40
	bvs   0.b		; 70 00
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne  16.b		; D0 10
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $08D700.l,X		; DF 00 D7 08
	lda [$48.b],Y		; B7 48
	lda [$48.b],Y		; B7 48
	sta ($6C.b,S),Y		; 93 6C
	eor ($2C.b,S),Y		; 53 2C
	eor ($2C.b,S),Y		; 53 2C
	eor $0026.w,Y		; 59 26 00
	ora [$08.b]		; 07 08
	ora [$48.b]		; 07 48
	ora [$48.b]		; 07 48
	ora [$6C.b]		; 07 6C
	ora $2C.b,S		; 03 2C
	ora $2C.b,S		; 03 2C
	ora $26.b,S		; 03 26
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra  56.b		; 80 38
	cmp [$0C.b]		; C7 0C
	sbc ($00.b,S),Y		; F3 00
	sbc $807F80.l,X		; FF 80 7F 80
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $C77F80.l,X		; FF 80 7F C7
	sec		; 38
	sbc ($0C.b,S),Y		; F3 0C
	sbc $807F00.l,X		; FF 00 7F 80
	adc $030480.l,X		; 7F 80 04 03
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($FE.b,X)		; 01 FE
	sbc $007F00.l,X		; FF 00 7F 00
	bmi  15.b		; 30 0F
	asl $0101.w		; 0E 01 01
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $A5.b		; 00 A5
	.db $42, $DF		; 42 DF
	jsr $3BC4.w		; 20 C4 3B
	pea $0C0B.w		; F4 0B 0C
	sbc ($08.b,S),Y		; F3 08
	sbc [$08.b],Y		; F7 08
	sbc [$10.b],Y		; F7 10
	sbc $208142.l		; EF 42 81 20
	cmp $3B.b,S		; C3 3B
	cpy #$F00B.w		; C0 0B F0
	sbc ($00.b,S),Y		; F3 00
	sbc [$00.b],Y		; F7 00
	sbc [$00.b],Y		; F7 00
	sbc $5CA300.l		; EF 00 A3 5C
	and [$D8.b]		; 27 D8
	ora [$FA.b]		; 07 FA
	ora $E01BE0.l,X		; 1F E0 1B E0
	ora ($E0.b,S),Y		; 13 E0
	dec A		; 3A
	dec $38.b		; C6 38
	cmp [$5C.b]		; C7 5C
	ldy #$20D8.w		; A0 D8 20
	plx		; FA
	cop $E2.b		; 02 E2
	ora ($EF.b,X)		; 01 EF
	brk $EF.b		; 00 EF
	brk $C5.b		; 00 C5
	tsb $C3.b		; 04 C3
	ora $0F.b,S		; 03 0F
	beq  63.b		; F0 3F
	cpy #$00FF.w		; C0 FF 00
	inc $F001.w,X		; FE 01 F0
	ora $00FF00.l		; 0F 00 FF 00
	sbc $F01FE0.l,X		; FF E0 1F F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $1E.b		; 00 1E
	brk $38.b		; 00 38
	ply		; 7A
	tsb $0D.b		; 04 0D
	rti		; 40

	cmp $74.b		; C5 74
	jmp.w [$9E36]		; DC 36 9E
	and [$98.b]		; 27 98
	and [$98.b]		; 27 98
	cpy $1090.w		; CC 90 10
	sbc $30FF00.l,X		; FF 00 FF 30
	ora $670324.l		; 0F 24 03 67
	ora ($70.b,X)		; 01 70
	bpl -16.b		; 10 F0
	bcc  96.b		; 90 60
	brk $ED.b		; 00 ED
	sbc ($FB.b),Y		; F1 FB
	xce		; FB
	and [$F7.b],Y		; 37 F7
	cop $0F.b		; 02 0F
	cpy #$BA00.w		; C0 00 BA
	cop $26.b		; 02 26
	asl $25.b		; 06 25
	tsb $C0.b		; 04 C0
	sbc ($71.b,S),Y		; F3 71
	sbc $00FF03.l,X		; FF 03 FF 00
	sbc $061F00.l,X		; FF 00 1F 06
	ora $1E.b		; 05 1E
	ora $1A1E.w,Y		; 19 1E 1A
	sbc $FCFD.w,Y		; F9 FD FC
	inc $F1F1.w,X		; FE F1 F1
	asl $308E.w		; 0E 8E 30
	sei		; 78
	ora [$C7.b]		; 07 C7
	asl $CD10.w,X		; 1E 10 CD
	iny		; C8
	beq  -1.b		; F0 FF
	sed		; F8
	sbc $06FFE1.l,X		; FF E1 FF 06
	sbc $07FF01.l,X		; FF 01 FF 07
	sed		; F8
	and $33FBEF.l,X		; 3F EF FB 33
	asl $0F00.w		; 0E 00 0F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	ora ($3C.b,X)		; 01 3C
	ora $38.b,S		; 03 38
	ora [$70.b]		; 07 70
	ora $000F70.l		; 0F 70 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $51.b		; 00 51
	rol $4EB1.w		; 2E B1 4E
	and ($DE.b,X)		; 21 DE
	adc ($9E.b,X)		; 61 9E
	eor ($BE.b,X)		; 41 BE
	cmp ($3E.b,X)		; C1 3E
	sta ($7E.b,X)		; 81 7E
	sta ($7E.b,X)		; 81 7E
	rol $4E00.w		; 2E 00 4E
	brk $DE.b		; 00 DE
	brk $9E.b		; 00 9E
	brk $BE.b		; 00 BE
	brk $3E.b		; 00 3E
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $08.b		; 00 08
	beq -60.b		; F0 C4
	sec		; 38
	cpx $18.b		; E4 18
	cpx $18.b		; E4 18
	pea $E848.w		; F4 48 E8
	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $38.b		; 00 38
	cpy #$6018.w		; C0 18 60
	php		; 08
	bmi   8.b		; 30 08
	bpl  16.b		; 10 10
	brk $18.b		; 00 18
	jsr $9028.w		; 20 28 90
	rti		; 40

	bcs  64.b		; B0 40
	bcc -96.b		; 90 A0
	bvs   0.b		; 70 00
	beq  30.b		; F0 1E
	cpx #$C02F.w		; E0 2F C0
	cpx #$C000.w		; E0 00 C0
	jsr $8060.w		; 20 60 80
	cpx #$C000.w		; E0 00 C0
	rti		; 40

	cpx #$C0E0.w		; E0 E0 C0
	cpy #$1610.w		; C0 10 16
	asl $0001.w,X		; 1E 01 00
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	cop $03.b		; 02 03
	ora $02.b,S		; 03 02
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	ora ($01.b,X)		; 01 01
	cop $00.b		; 02 00
	ora $C0.b,S		; 03 C0
	bcc  96.b		; 90 60
	bmi -16.b		; 30 F0
	beq -48.b		; F0 D0
	bpl -16.b		; 10 F0
	beq -48.b		; F0 D0
	bpl -16.b		; 10 F0
	beq -32.b		; F0 E0
	cpx #$0060.w		; E0 60 00
	cpy #$F000.w		; C0 00 F0
	brk $F0.b		; 00 F0
	cpx #$00F0.w		; E0 F0 00
	beq -32.b		; F0 E0
	beq   0.b		; F0 00
	cpy #$11F0.w		; C0 F0 11
	brk $0B.b		; 00 0B
	cop $06.b		; 02 06
	brk $06.b		; 00 06
	cop $04.b		; 02 04
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	asl $0406.w		; 0E 06 04
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc [$E4.b]		; E7 E4
	sbc ($73.b,S),Y		; F3 73
	sbc $FC71.w,Y		; F9 71 FC
	tya		; 98
	stz $0F0C.w,X		; 9E 0C 0F
	asl $07.b		; 06 07
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	clc		; 18
	adc $06770C.l,X		; 7F 0C 77 06
	txy		; 9B
	ora $0D.b,S		; 03 0D
	ora ($06.b,X)		; 01 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$02.b]		; 07 02
	asl $3808.w,X		; 1E 08 38
	bpl -16.b		; 10 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $04.b		; 05 04
	ora [$10.b],Y		; 17 10
	and $783820.l		; 2F 20 38 78
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	clc		; 18
	sec		; 38
	sec		; 38
	clc		; 18
	trb $0818.w		; 1C 18 08
	trb $0C1C.w		; 1C 1C 0C
	bmi  -4.b		; 30 FC
	bpl 124.b		; 10 7C
	clc		; 18
	jmp ($7C18.w,X)		; 7C 18 7C
	clc		; 18
	jmp ($3E08.w,X)		; 7C 08 3E
	php		; 08
	rol $3E08.w,X		; 3E 08 3E
	tsb $040C.w		; 0C 0C 04
	tsb $040C.w		; 0C 0C 04
	tsb $06.b		; 04 06
	asl $0E.b		; 06 0E
	asl $3E1E.w,X		; 1E 1E 3E
	rol A		; 2A
	brk $00.b		; 00 00
	tsb $041E.w		; 0C 1E 04
	asl $1E00.w,X		; 1E 00 1E
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	asl A		; 0A
	and $007F00.l,X		; 3F 00 7F 00
	adc $002040.l,X		; 7F 40 20 00
	brk $0F.b		; 00 0F
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	php		; 08
	ora ($00.b,X)		; 01 00
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	brk $01.b		; 00 01
	sty $6373.w		; 8C 73 63
	ora $0F16.w,X		; 1D 16 0F
	and $B4C7.w,Y		; 39 C7 B4
	tda		; 7B
	phk		; 4B
	and $DC0F31.l,X		; 3F 31 0F DC
	ora $00.b,S		; 03 00
	sbc $007F00.l,X		; FF 00 7F 00
	ora $00FF00.l,X		; 1F 00 FF 00
	sbc $007F00.l,X		; FF 00 7F 00
	and $14DF00.l,X		; 3F 00 DF 14
	jsr $906A.w		; 20 6A 90
	and $DA.b		; 25 DA
	lsr A		; 4A
	sbc $FF34.w,X		; FD 34 FF
	asl $EFFF.w,X		; 1E FF EF
	sbc $00FFFF.l,X		; FF FF FF 00
	bit $00.b,X		; 34 00
	plx		; FA
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	jmp $27FF.w		; 4C FF 27
	sbc $000000.l,X		; FF 00 00 00
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $D0.b		; 00 D0
	bra -80.b		; 80 B0
	cpy #$E850.w		; C0 50 E8
	beq  -4.b		; F0 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $D0.b		; 00 D0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	rti		; 40

	jsr ($FF7E.w,X)		; FC 7E FF
	inc $FCFE.w,X		; FE FE FC
	inc $FEF8.w,X		; FE F8 FE
	jsr ($F8FE.w,X)		; FC FE F8
	jsr ($FCF8.w,X)		; FC F8 FC
	cpy #$1CF8.w		; C0 F8 1C
	sbc $BCFE1C.l,X		; FF 1C FE BC
	inc $FEF0.w,X		; FE F0 FE
	sed		; F8
	inc $FCF8.w,X		; FE F8 FC
	cpy #$80FC.w		; C0 FC 80
	sed		; F8
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
	php		; 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta [$7F.b]		; 87 7F
	eor $3F.b,S		; 43 3F
	and $3F871F.l		; 2F 1F 87 3F
	ora ($FF.b),Y		; 11 FF
	cmp [$3F.b]		; C7 3F
	and $3F4F7F.l,X		; 3F 7F 4F 3F
	cop $FF.b		; 02 FF
	brk $7F.b		; 00 7F
	ora $3F.b,S		; 03 3F
	ora ($BF.b,X)		; 01 BF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	phd		; 0B
	adc $007F01.l,X		; 7F 01 7F 00
	brk $04.b		; 00 04
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
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $0300.w,X		; 3E 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	sed		; F8
	brk $1F.b		; 00 1F
	brk $04.b		; 00 04
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	sed		; F8
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	rts		; 60

	brk $18.b		; 00 18
	brk $C2.b		; 00 C2
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $60.b		; 00 60
	brk $18.b		; 00 18
	brk $CE.b		; 00 CE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $80.b		; 00 80
	ora ($1F.b,X)		; 01 1F
	brk $1F.b		; 00 1F
	tsb $1F.b		; 04 1F
	cop $33.b		; 02 33
	asl $77.b,X		; 16 77
	bit $67.b		; 24 67
	bmi -58.b		; 30 C6
	bvs -60.b		; 70 C4
	brk $1F.b		; 00 1F
	asl $0B0F.w		; 0E 0F 0B
	phd		; 0B
	ora $2911.w,X		; 1D 11 29
	and ($1A.b,X)		; 21 1A
	cop $7C.b		; 02 7C
	mvp $00,$38		; 44 38 00
	cpx #$C0F0.w		; E0 F0 C0
	cpx #$E040.w		; E0 40 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	beq   0.b		; F0 00
	cpx #$E000.w		; E0 00 E0
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($7F.b),Y		; 11 7F
	bit $101F.w		; 2C 1F 10
	ora $4C03DD.l		; 0F DD 03 4C
	and $1C0F30.l,X		; 3F 30 0F 1C
	ora $76.b,S		; 03 76
	ora $007F00.l		; 0F 00 7F 00
	and $001F00.l,X		; 3F 00 1F 00
	cmp $007F00.l,X		; DF 00 7F 00
	and $001F00.l,X		; 3F 00 1F 00
	adc $7FFFFF.l,X		; 7F FF FF 7F
	sbc $FFFF1F.l,X		; FF 1F FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $3FFF7F.l,X		; FF 7F FF 3F
	sbc $1FFF0F.l,X		; FF 0F FF 1F
	sbc $07FF03.l,X		; FF 03 FF 07
	sbc $1FFF3F.l,X		; FF 3F FF 1F
	sbc $0FFF3F.l,X		; FF 3F FF 0F
	sbc $F8FEF8.l,X		; FF F8 FE F8
	inc $FCF8.w,X		; FE F8 FC
	beq  -8.b		; F0 F8
	cpx #$80F8.w		; E0 F8 80
	cpx #$E080.w		; E0 80 E0
	bra -64.b		; 80 C0
	ldy #$F0FE.w		; A0 FE F0
	inc $FCE0.w,X		; FE E0 FC
	cpx #$00F8.w		; E0 F8 00
	sed		; F8
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	php		; 08
	cop $09.b		; 02 09
	cop $00.b		; 02 00
	phd		; 0B
	bit $0B.b		; 24 0B
	cop $2F.b		; 02 2F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $0A.b		; 00 0A
	brk $0B.b		; 00 0B
	brk $0B.b		; 00 0B
	brk $2F.b		; 00 2F
	brk $2F.b		; 00 2F
	plb		; AB
	eor $4FDF6F.l,X		; 5F 6F DF 4F
	sbc $6FFF6F.l,X		; FF 6F FF 6F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $01FFFF.l,X		; FF FF FF 01
	sbc $02FF01.l,X		; FF 01 FF 02
	sbc $08FF0A.l,X		; FF 0A FF 08
	sbc $0BFF4B.l,X		; FF 4B FF 0B
	sbc $BDFF5F.l,X		; FF 5F FF BD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $10FFFF.l,X		; FF FF FF 10
	sbc $A4FF14.l,X		; FF 14 FF A4
	sbc $B7FFA6.l,X		; FF A6 FF B7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F9FFFF.l,X		; FF FF FF F9
	cpx $FCEB.w		; EC EB FC
	sbc #$FCFE.w		; E9 FE FC
	inc $FEFC.w,X		; FE FC FE
	sbc $FFFE.w,X		; FD FE FF
	inc $FFFE.w,X		; FE FE FF
	bra  -3.b		; 80 FD
	rti		; 40

	sbc $E8FFC8.l,X		; FF C8 FF E8
	inc $FEF0.w,X		; FE F0 FE
	sed		; F8
	sbc $F8FFF0.l,X		; FF F0 FF F8
	sbc $800082.l,X		; FF 82 00 80
	brk $C8.b		; 00 C8
	brk $48.b		; 00 48
	bra  72.b		; 80 48
	bra  76.b		; 80 4C
	bra -60.b		; 80 C4
	dey		; 88
	pei ($88.b)		; D4 88
	brk $82.b		; 00 82
	brk $80.b		; 00 80
	brk $C8.b		; 00 C8
	brk $C8.b		; 00 C8
	brk $C8.b		; 00 C8
	brk $CC.b		; 00 CC
	brk $CC.b		; 00 CC
	brk $DC.b		; 00 DC
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	rts		; 60

	jsr $80A0.w		; 20 A0 80
	beq -32.b		; F0 E0
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E080.w		; C0 80 E0
	cpy #$40C0.w		; C0 C0 40
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	php		; 08
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	rts		; 60

	ora $201C10.l		; 0F 10 1C 20
	bmi   0.b		; 30 00
	rts		; 60

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	ora $400060.l		; 0F 60 00 40
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	sbc $00F800.l,X		; FF 00 F8 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00F800.l,X		; FF 00 F8 00
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
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $07.b		; 02 07
	brk $07.b		; 00 07
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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $84.b		; 00 84
	brk $04.b		; 00 04
	bpl   6.b		; 10 06
	brk $02.b		; 00 02
	brk $23.b		; 00 23
	brk $23.b		; 00 23
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sty $00.b		; 84 00
	trb $00.b		; 14 00
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	and $00.b,S		; 23 00
	and $80.b,S		; 23 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	asl A		; 0A
	and $2B7F23.l,X		; 3F 23 7F 2B
	adc $1F7F1F.l,X		; 7F 1F 7F 1F
	sbc $4F7F0F.l,X		; FF 0F 7F 4F
	adc $00FF8F.l,X		; 7F 8F FF 00
	and $017F00.l,X		; 3F 00 7F 01
	adc $0B7F03.l,X		; 7F 03 7F 0B
	and $875FC7.l,X		; 3F C7 5F 87
	ora $FF5F46.l,X		; 1F 46 5F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $5FFFEE.l,X		; FF EE FF 5F
	sbc $7FFF5F.l,X		; FF 5F FF 7F
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $E6FFFF.l,X		; FF FF FF E6
	sbc $FFFF80.l,X		; FF 80 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F1FFFF.l,X		; FF FF FF F1
	sbc $00F3C0.l,X		; FF C0 F3 00
	cpy #$C000.w		; C0 00 C0
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $D0FF.w,X		; FD FF D0
	sbc $00FF80.l,X		; FF 80 FF 00
	sbc ($00.b,S),Y		; F3 00
	cpy #$C000.w		; C0 00 C0
	inc $DCFF.w,X		; FE FF DC
	inc $FCC0.w,X		; FE C0 FC
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80FF.w		; C0 FF 80
	inc $FC00.w,X		; FE 00 FC
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($8C.b)		; D2 8C
	inc A		; 1A
	cpy $DC2A.w		; CC 2A DC
	plp		; 28
	dec $FE8C.w,X		; DE 8C FE
	lda $9CDE.w		; AD DE 9C
	sbc $00FFDC.l,X		; FF DC FF 00
	dec $DE00.w,X		; DE 00 DE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	php		; 08
	inc $FF00.w,X		; FE 00 FF
	brk $FF.b		; 00 FF
	php		; 08
	sbc $800000.l,X		; FF 00 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra -112.b		; 80 90
	cpy #$0000.w		; C0 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $D0.b		; 00 D0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	asl $1F.b		; 06 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs -32.b		; B0 E0
	pea $7DE0.w		; F4 E0 7D
	pea $E869.w		; F4 69 E8
	bmi -16.b		; 30 F0
	ldy #$40E0.w		; A0 E0 40
	cpy #$0000.w		; C0 00 00
	cpx #$A040.w		; E0 40 A0
	brk $34.b		; 00 34
	ora ($B8.b,X)		; 01 B8
	sta ($70.b),Y		; 91 70
	cpy #$4020.w		; C0 20 40
	rti		; 40

	brk $00.b		; 00 00
	brk $32.b		; 00 32
	ora ($12.b,X)		; 01 12
	ora ($1A.b,X)		; 01 1A
	ora ($1A.b,X)		; 01 1A
	ora ($0B.b,X)		; 01 0B
	ora ($2F.b),Y		; 11 2F
	ora ($A7.b),Y		; 11 A7
	ora $1BA4.w,Y		; 19 A4 1B
	brk $33.b		; 00 33
	brk $13.b		; 00 13
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $3F.b		; 00 3F
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	php		; 08
	ply		; 7A
	bmi 118.b		; 30 76
	pha		; 48
	jmp $1810.w		; 4C 10 18
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	rti		; 40

	rts		; 60

	brk $40.b		; 00 40
	trb $10.b		; 14 10
	jmp $3044.w		; 4C 44 30
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	tsb $01.b		; 04 01
	eor #$0004.w		; 49 04 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	eor $1BB4.w		; 4D B4 1B
	beq  31.b		; F0 1F
	cmp $3B.b		; C5 3B
	eor ($BF.b),Y		; 51 BF
	eor ($BF.b),Y		; 51 BF
	ora $9BFF.w,Y		; 19 FF 9B
	sbc $00FFBB.l,X		; FF BB FF 00
	lda $00FF00.l,X		; BF 00 FF 00
	sbc $01FF00.l,X		; FF 00 FF 01
	sbc $10FF01.l,X		; FF 01 FF 10
	sbc $00FF11.l,X		; FF 11 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E080.w		; C0 80 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora #$0000.w		; 09 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora #$0300.w		; 09 00 03
	cop $17.b		; 02 17
	brk $1F.b		; 00 1F
	ora #$85FF.w		; 09 FF 85
	sbc $A13FA5.l,X		; FF A5 3F A1
	and $00FFC3.l,X		; 3F C3 FF 00
	ora $00.b,S		; 03 00
	ora [$00.b],Y		; 17 00
	ora $403F00.l,X		; 1F 00 3F 40
	eor $D11FD0.l,X		; 5F D0 1F D1
	ora [$30.b],Y		; 17 30
	and [$13.b],Y		; 37 13
	adc $337FB3.l,X		; 7F B3 7F 33
	sbc $7FFF3B.l,X		; FF 3B FF 7F
	sbc $FFFF7B.l,X		; FF 7B FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	adc $01FF00.l,X		; 7F 00 FF 01
	sbc $11FF11.l,X		; FF 11 FF 11
	sbc $33FF13.l,X		; FF 13 FF 33
	sbc $00FF3B.l,X		; FF 3B FF 00
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
	tsb $00.b		; 04 00
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
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	mvp $24,$00		; 44 00 24
	brk $06.b		; 00 06
	jsr $0402.w		; 20 02 04
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $44.b		; 00 44
	brk $24.b		; 00 24
	brk $26.b		; 00 26
	brk $06.b		; 00 06
	pha		; 48
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	rti		; 40

	jsr $A240.w		; 20 40 A2
	rti		; 40

	ldy #$9042.w		; A0 42 90
	rts		; 60

	brk $48.b		; 00 48
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $E2.b		; 00 E2
	brk $E2.b		; 00 E2
	brk $F0.b		; 00 F0
	inc A		; 1A
	lda [$1B.b]		; A7 1B
	and [$09.b]		; 27 09
	and [$09.b],Y		; 37 09
	and [$69.b],Y		; 37 69
	and [$64.b],Y		; 37 64
	and $A43F64.l,X		; 3F 64 3F A4
	adc $00BF00.l,X		; 7F 00 BF 00
	and $003F00.l,X		; 3F 00 3F 00
	and $007F00.l,X		; 3F 00 7F 00
	adc $007F00.l,X		; 7F 00 7F 00
	sbc $037A85.l,X		; FF 85 7A 03
	inc $FF22.w,X		; FE 22 FF
	rol $FB.b		; 26 FB
	jsl $FF20FF.l		; 22 FF 20 FF
	bcs  -1.b		; B0 FF
	sty $FF.b,X		; 94 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ldx $FFFF.w,Y		; BE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $04FF04.l,X		; FF 04 FF 04
	sbc $2DFF2C.l,X		; FF 2C FF 2D
	sbc $7FFF6F.l,X		; FF 6F FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFF6.l,X		; FF F6 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFE.l,X		; FF FE FF FE
	sbc $FEFFFE.l,X		; FF FE FF FE
	sbc $E2FF62.l,X		; FF 62 FF E2
	sbc $E6FFE6.l,X		; FF E6 FF E6
	sbc $FCFFF4.l,X		; FF F4 FF FC
	sbc $FCFFFC.l,X		; FF FC FF FC
	sbc $000040.l,X		; FF 40 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	jsr $2080.w		; 20 80 20
	bra   0.b		; 80 00
	ldy #$A000.w		; A0 00 A0
	rti		; 40

	ldy #$6080.w		; A0 80 60
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	jsr $80C0.w		; 20 C0 80
	cpy #$80C0.w		; C0 C0 80
	bpl -128.b		; 10 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $A0.b		; 00 A0
	bra  32.b		; 80 20
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $90.b		; 00 90
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	bra  96.b		; 80 60
	cpy #$6060.w		; C0 60 60
	cpy #$C080.w		; C0 80 C0
	bra -64.b		; 80 C0
	cpy #$0080.w		; C0 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	rti		; 40

	bvs  32.b		; 70 20
	bmi   0.b		; 30 00
	bmi  64.b		; 30 40
	rts		; 60

	bra -32.b		; 80 E0
	cop $C0.b		; 02 C0
	brk $82.b		; 00 82
	ora ($02.b,X)		; 01 02
	ldy #$C020.w		; A0 20 C0
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	rti		; 40

	rti		; 40

	bra -126.b		; 80 82
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	ora ($01.b)		; 12 01
	ora $03.b,X		; 15 03
	sta $03.b,X		; 95 03
	ora #$2917.w		; 09 17 29
	ora [$13.b],Y		; 17 13
	and $000300.l,X		; 3F 00 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,S),Y		; 13 00
	ora [$00.b],Y		; 17 00
	sta [$00.b],Y		; 97 00
	ora $013F00.l,X		; 1F 00 3F 01
	and $0FFF07.l,X		; 3F 07 FF 0F
	sbc $077F0F.l,X		; FF 0F 7F 07
	ora $000702.l,X		; 1F 02 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $60.b		; 00 60
	adc $03BF07.l		; 6F 07 BF 03
	adc $001F02.l,X		; 7F 02 1F 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $0EFF9F.l,X		; FF 9F FF 0E
	lda $FF1E00.l,X		; BF 00 1E FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $1FFF7F.l,X		; FF 7F FF 1F
	sbc $00FF06.l,X		; FF 06 FF 00
	lda $001E00.l,X		; BF 00 1E 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	cop $04.b		; 02 04
	ora $04.b,S		; 03 04
	ora ($06.b,X)		; 01 06
	and ($06.b,X)		; 21 06
	plp		; 28
	ora [$2A.b]		; 07 2A
	ora [$28.b]		; 07 28
	ora [$1A.b]		; 07 1A
	and [$00.b]		; 27 00
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	and [$00.b]		; 27 00
	and $002F00.l		; 2F 00 2F 00
	and $903F00.l		; 2F 00 3F 90
	rts		; 60

	bcc  96.b		; 90 60
	txa		; 8A
	bvs -118.b		; 70 8A
	bvs -119.b		; 70 89
	adc ($A9.b)		; 72 A9
	adc ($29.b)		; 72 29
	sbc ($AD.b)		; F2 AD
	adc ($00.b)		; 72 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	plx		; FA
	brk $FA.b		; 00 FA
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FF.b		; 00 FF
	ldy $7F.b,X		; B4 7F
	bit $FF.b,X		; 34 FF
	asl $FF.b,X		; 16 FF
	asl $FF.b,X		; 16 FF
	ldx $FF.b		; A6 FF
	ldx $8FFF.w		; AE FF 8F
	sbc $00FF9E.l,X		; FF 9E FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $04FF00.l,X		; FF 00 FF 04
	sbc $00FF04.l,X		; FF 04 FF 00
	sbc $95FF00.l,X		; FF 00 FF 95
	inc $FFD0.w,X		; FE D0 FF
	phx		; DA
	sbc $E2FFEA.l,X		; FF EA FF E2
	sbc $F6FFE6.l,X		; FF E6 FF F6
	sbc $00FFFE.l,X		; FF FE FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $40FF00.l,X		; FF 00 FF 40
	sbc $40FF40.l,X		; FF 40 FF 40
	sbc $FFFF62.l,X		; FF 62 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $07FF9F.l,X		; FF 9F FF 07
	sbc $000F00.l,X		; FF 00 0F 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $0BFFFF.l,X		; FF FF FF 0B
	sbc $00FF02.l,X		; FF 02 FF 00
	sbc $000F00.l,X		; FF 00 0F 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $3FFFFF.l,X		; FF FF FF 3F
	sbc $00FF1E.l,X		; FF 1E FF 00
	sbc $FC3800.l,X		; FF 00 38 FC
	sbc $9FFFDF.l,X		; FF DF FF 9F
	sbc $0CFF1E.l,X		; FF 1E FF 0C
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $003800.l,X		; FF 00 38 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
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
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F8.b		; 00 F8
	bne  31.b		; D0 1F
	sei		; 78
	brk $0F.b		; 00 0F
	sbc $001F00.l,X		; FF 00 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -24.b		; 80 E8
	php		; 08
	sbc $101000.l,X		; FF 00 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $1C0C.w		; 0C 0C 1C
	trb $1C.b		; 14 1C
	trb $34.b		; 14 34
	bit $24.b,X		; 34 24
	bit $00.b,X		; 34 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	php		; 08
	trb $3C08.w		; 1C 08 3C
	php		; 08
	bit $0C08.w		; 2C 08 0C
	bit $781C.w,X		; 3C 1C 78
	bit $78F8.w,X		; 3C F8 78
	bvs -72.b		; 70 B8
	beq  78.b		; F0 4E
	cpy #$7C7C.w		; C0 7C 7C
	brk $00.b		; 00 00
	trb $2810.w		; 1C 10 28
	jsr $4058.w		; 20 58 40
	bcc   0.b		; 90 00
	bvs  64.b		; 70 40
	bvs  48.b		; 70 30
	jmp ($0000.w,X)		; 7C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E080.w		; C0 80 E0
	rti		; 40

	bvs  32.b		; 70 20
	bmi   0.b		; 30 00
	bmi  64.b		; 30 40
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	ldy #$C020.w		; A0 20 C0
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -16.b		; 80 F0
	ldy #$883C.w		; A0 3C 88
	ora $2F809E.l		; 0F 9E 80 2F
	cpx #$7013.w		; E0 13 70
	asl $1E.b		; 06 1E
	brk $0F.b		; 00 0F
	rti		; 40

	rti		; 40

	bne  16.b		; D0 10
	pea $7F04.w		; F4 04 7F
	brk $5F.b		; 00 5F
	rti		; 40

	ora $080900.l		; 0F 00 09 08
	ora $03.b,S		; 03 03
	brk $C0.b		; 00 C0
	bra  -8.b		; 80 F8
	bne  30.b		; D0 1E
	pea $7F07.w		; F4 07 7F
	ora ($CF.b,X)		; 01 CF
	cpy #$FF07.w		; C0 07 FF
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	inx		; E8
	php		; 08
	plx		; FA
	cop $FE.b		; 02 FE
	brk $3F.b		; 00 3F
	brk $18.b		; 00 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $02.b		; 05 02
	phd		; 0B
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $70.b		; 00 70
	ora $636798.l		; 0F 98 67 63
	stz $31CE.w		; 9C CE 31
	tya		; 98
	adc [$00.b]		; 67 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $67.b		; 00 67
	clc		; 18
	stz $3160.w		; 9C 60 31
	cpy #$8067.w		; C0 67 80
	and $1FE000.l,X		; 3F 00 E0 1F
	jsr $A9DF.w		; 20 DF A9
	lsr $CD.b,X		; 56 CD
	and ($79.b)		; 32 79
	stx $B2.b		; 86 B2
	jmp $827D.w		; 4C 7D 82
	brk $00.b		; 00 00
	ora $20DF00.l,X		; 1F 00 DF 20
	asl $E9.b,X		; 16 E9
	brk $F6.b		; 00 F6
	stx $68.b		; 86 68
	eor $8390.w		; 4D 90 83
	cop $80.b		; 02 80
	brk $F0.b		; 00 F0
	brk $08.b		; 00 08
	beq -84.b		; F0 AC
	bvc  92.b		; 50 5C
	ldy #$4874.w		; A0 74 48
	sei		; 78
	brk $98.b		; 00 98
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	bvc  40.b		; 50 28
	ldy #$8898.w		; A0 98 88
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $7F.b		; 00 7F
	bra  -9.b		; 80 F7
	php		; 08
	pea $5A0B.w		; F4 0B 5A
	sta $F5.b		; 85 F5
	asl A		; 0A
	plp		; 28
	cmp [$D7.b],Y		; D7 D7
	plp		; 28
	clv		; B8
	adc [$00.b]		; 67 00
	cpy #$A728.w		; C0 28 A7
	plp		; 28
	and [$A4.b]		; 27 A4
	and $08.b,S		; 23 08
	ora [$D7.b]		; 07 D7
	brk $08.b		; 00 08
	ldy #$6807.w		; A0 07 68
	stz $14.b		; 64 14
	txa		; 8A
	lsr A		; 4A
	cmp $54.b,X		; D5 54
	pei ($54.b)		; D4 54
.INDEX 16
	rep #$56		; C2 56
	sbc ($63.b,X)		; E1 63
	cmp ($E1.b),Y		; D1 E1
	sbc ($01.b,X)		; E1 01
	sty $9F.b		; 84 9F
	ora #$137C.w		; 09 7C 13
	sei		; 78
	ora $78.b,S		; 03 78
	eor ($78.b,X)		; 41 78
	rti		; 40

	jmp ($F801.w,X)		; 7C 01 F8
	ora ($70.b,X)		; 01 70
	sbc $41EF5A.l,X		; FF 5A EF 41
	sbc [$46.b],Y		; F7 46
	lsr $3F40.w,X		; 5E 40 3F
	and $EC.b,S		; 23 EC
	and $77D838.l		; 2F 38 D8 77
	beq  -6.b		; F0 FA
	ldx #$B0F1.w		; A2 F1 B0
	inc $FFB8.w,X		; FE B8 FF
	lda $3FDCFF.l,X		; BF FF DC 3F
	ora ($D7.b,S),Y		; 13 D7
	cpy #$808F.w		; C0 8F 80
	sta ($B8.b)		; 92 B8
	cpy $E19E.w		; CC 9E E1
	cmp ($F1.b,X)		; C1 F1
	adc ($79.b,X)		; 61 79
	plp		; 28
	sbc $D3FD95.l,X		; FF 95 FD D3
	sei		; 78
	eor [$90.b]		; 47 90
	adc $C13F8C.l,X		; 7F 8C 3F C1
	asl $0E6F.w,X		; 1E 6F 0E
	ldx $9486.w		; AE 86 94
	brk $52.b		; 00 52
	cop $80.b		; 02 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $F0.b		; 00 F0
	ora $7CF807.l		; 0F 07 F8 7C
	sta $00.b,S		; 83 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $F8.b		; 00 F8
	brk $83.b		; 00 83
	brk $09.b		; 00 09
	asl $0A.b		; 06 0A
	ora $30.b		; 05 30
	ora $CC0DF2.l		; 0F F2 0D CC
	and ($FB.b,S),Y		; 33 FB
	tsb $FF.b		; 04 FF
	brk $3F.b		; 00 3F
	cpy #$0106.w		; C0 06 01
	ora $02.b		; 05 02
	ora $000D00.l		; 0F 00 0D 00
	and ($00.b,S),Y		; 33 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	cpy #$FD00.w		; C0 00 FD
	ora ($FC.b,X)		; 01 FC
	brk $FF.b		; 00 FF
	brk $FA.b		; 00 FA
	tsb $F6.b		; 04 F6
	php		; 08
	stz $18.b		; 64 18
	cpx $C810.w		; EC 10 C8
	bmi   1.b		; 30 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	brk $8F.b		; 00 8F
	brk $BA.b		; 00 BA
	sta ($37.b,X)		; 81 37
	brk $65.b		; 00 65
	brk $65.b		; 00 65
	ora ($47.b,X)		; 01 47
	cop $47.b		; 02 47
	brk $0B.b		; 00 0B
	cop $00.b		; 02 00
	beq   1.b		; F0 01
	cpy #$8100.w		; C0 00 81
	cop $02.b		; 02 02
	ora $02.b,S		; 03 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	asl $04.b		; 06 04
	and [$18.b]		; 27 18
	and [$18.b]		; 27 18
	ora [$08.b],Y		; 17 08
	ora [$08.b],Y		; 17 08
	ora $08.b,X		; 15 08
	ora $0C00.w		; 0D 00 0C
	brk $04.b		; 00 04
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6F.b		; 00 6F
	bcc 111.b		; 90 6F
	bcc  79.b		; 90 4F
	bcs  78.b		; B0 4E
	bcs  94.b		; B0 5E
	ldy #$A05C.w		; A0 5C A0
	ldy $BC40.w,X		; BC 40 BC
	rti		; 40

	bcc  96.b		; 90 60
	bcc  96.b		; 90 60
	bcs  64.b		; B0 40
	bcs  64.b		; B0 40
	ldy #$A040.w		; A0 40 A0
	rti		; 40

	rti		; 40

	jsr $2040.w		; 20 40 20
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	rti		; 40

	bpl -16.b		; 10 F0
	beq -88.b		; F0 A8
	dey		; 88
	cld		; D8
	iny		; C8
	clv		; B8
	inx		; E8
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	bvs  -8.b		; 70 F8
	bmi  56.b		; 30 38
	bne -56.b		; D0 C8
	inx		; E8
	bne -16.b		; D0 F0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$A0C0.w		; C0 C0 A0
	jsr $F098.w		; 20 98 F0
	bcc -32.b		; 90 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	cpy #$040B.w		; C0 0B 04
	asl $09.b,X		; 16 09
	trb $0B.b		; 14 0B
	ora $2902.w,X		; 1D 02 29
	asl $2B.b,X		; 16 2B
	trb $2B.b		; 14 2B
	trb $23.b		; 14 23
	trb $0304.w		; 1C 04 03
	ora #$0B06.w		; 09 06 0B
	tsb $02.b		; 04 02
	tsb $0816.w		; 0C 16 08
	trb $08.b		; 14 08
	trb $08.b		; 14 08
	trb $3000.w		; 1C 00 30
	cmp $C89B64.l		; CF 64 9B C8
	and [$D9.b],Y		; 37 D9
	rol $93.b		; 26 93
	jmp ($4CB3.w)		; 6C B3 4C
	lda [$48.b],Y		; B7 48
	adc [$98.b]		; 67 98
	cmp $049B00.l		; CF 00 9B 04
	and [$08.b],Y		; 37 08
	rol $18.b		; 26 18
	jmp ($4C10.w)		; 6C 10 4C
	bmi  72.b		; 30 48
	bmi -104.b		; 30 98
	rts		; 60

	cmp $70FF30.l,X		; DF 30 FF 70
	phb		; 8B
	pla		; 68
	cpx $11.b		; E4 11
	inx		; E8
	tas		; 1B
	cmp ($1C.b,X)		; C1 1C
	bcs  15.b		; B0 0F
	cmp $2108.w,X		; DD 08 21
	bmi  19.b		; 30 13
	trb $3B.b		; 14 3B
	bit $111F.w		; 2C 1F 11
	ora [$03.b]		; 07 03
	and [$24.b]		; 27 24
	pla		; 68
	pla		; 68
	and $A3.b,S		; 23 A3
	bne  32.b		; D0 20
	cpy #$8060.w		; C0 60 80
	jsr $60C0.w		; 20 C0 60
	sec		; 38
	sei		; 78
	trb $7284.w		; 1C 84 72
	cop $9F.b		; 02 9F
	ora ($00.b,X)		; 01 00
	rti		; 40

	rti		; 40

	cpy #$00C0.w		; C0 C0 00
	bra   0.b		; 80 00
	clv		; B8
	brk $7C.b		; 00 7C
	sei		; 78
	inc $E1FC.w,X		; FE FC E1
	cpx #$62BD.w		; E0 BD 62
	ldx $3F31.w,Y		; BE 31 3F
	lda $AEDF5F.l,X		; BF 5F DF AE
	adc $3896F7.l		; 6F F7 96 38
	rol A		; 2A
	eor $2255.w,X		; 5D 55 22
	jmp ($7120.w)		; 6C 20 71
	bpl  -1.b		; 10 FF
	asl $26FF.w		; 0E FF 26
	adc $E81F94.l,X		; 7F 94 1F E8
	cmp $00A7F4.l		; CF F4 A7 00
	cpy #$91D1.w		; C0 D1 91
	sta ($93.b,S),Y		; 93 93
	ora [$97.b],Y		; 17 97
	lsr $1C0F.w		; 4E 0F 1C
	jmp $B0991D.l		; 5C 1D 99 B0
	sec		; 38
	brk $E1.b		; 00 E1
	ora ($E3.b),Y		; 11 E3
	and ($E7.b,S),Y		; 33 E7
	and [$EF.b],Y		; 37 EF
	tsb $08FF.w		; 0C FF 08
	sbc $31FE11.l,X		; FF 11 FE 31
	adc $07E02F.l,X		; 7F 2F E0 07
	rts		; 60

	ora ($70.b,S),Y		; 13 70
	txy		; 9B
	sec		; 38
	dey		; 88
	sec		; 38
	ldx $3F.b		; A6 3F
	ldy #$B83F.w		; A0 3F B8
	bmi  95.b		; 30 5F
	rti		; 40

	and $202F20.l,X		; 3F 20 2F 20
	eor [$40.b]		; 47 40
	eor [$50.b],Y		; 57 50
	eor #$5049.w		; 49 49 50
	bvc 112.b		; 50 70
	rti		; 40

	bra  32.b		; 80 20
	bra  32.b		; 80 20
	cpy #$0060.w		; C0 60 00
	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($7E.b,X)		; 81 7E
	ora $E01FF0.l		; 0F F0 1F E0
	and $807FC0.l,X		; 3F C0 7F 80
	sbc $00FE00.l,X		; FF 00 FE 00
	sbc $7E01.w,X		; FD 01 7E
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora ($FB.b,X)		; 01 FB
	brk $F6.b		; 00 F6
	ora ($0A.b,X)		; 01 0A
	ora $F8F7.w		; 0D F7 F8
	adc $B0.b,S		; 63 B0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $05.b		; 00 05
	brk $0D.b		; 00 0D
	brk $FD.b		; 00 FD
	cpx #$00FD.w		; E0 FD 00
	sbc $30C8.w,X		; FD C8 30
	cld		; D8
	jsr $20D0.w		; 20 D0 20
	bne  32.b		; D0 20
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	clc		; 18
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $16.b		; 00 16
	tsb $14.b		; 04 14
	brk $0D.b		; 00 0D
	ora ($15.b,X)		; 01 15
	ora ($2A.b,X)		; 01 2A
	cop $3A.b		; 02 3A
	cop $33.b		; 02 33
	cop $15.b		; 02 15
	brk $0D.b		; 00 0D
	ora #$0B0B.w		; 09 0B 0B
	ora [$06.b]		; 07 06
	ora $1D1F0E.l		; 0F 0E 1F 1D
	ora $1D1F1D.l,X		; 1F 1D 1F 1D
	phd		; 0B
	phd		; 0B
	rti		; 40

	sei		; 78
	bcs  -2.b		; B0 FE
	cpy $47.b		; C4 47
	lda $7E81.w,Y		; B9 81 7E
	brk $BF.b		; 00 BF
	bra  55.b		; 80 37
	beq   3.b		; F0 03
	sbc $C8A0E0.l,X		; FF E0 A0 C8
	pha		; 48
	dec A		; 3A
	cop $7E.b		; 02 7E
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $CF.b		; 00 CF
	cpy #$0404.w		; C0 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs -128.b		; 70 80
	trb $4EE0.w		; 1C E0 4E
	jmp ($1CD5.w,X)		; 7C D5 1C
	sbc [$18.b],Y		; F7 18
	jsr $0038.w		; 20 38 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -84.b		; 80 AC
	jsr $02E6.w		; 20 E6 02
	cpx #$D000.w		; E0 00 D0
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	ora ($04.b,X)		; 01 04
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $03.b,S		; 03 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	brk $70.b		; 00 70
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
	brk $00.b		; 00 00
	tya		; 98
	rts		; 60

	pha		; 48
	bmi  72.b		; 30 48
	bmi  44.b		; 30 2C
	bpl  20.b		; 10 14
	php		; 08
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	jsr $0015.w		; 20 15 00
	ora $000100.l		; 0F 00 01 00
	ora $000501.l		; 0F 01 05 00
	ora $0D.b,S		; 03 0D
	ora $3E.b,S		; 03 3E
	asl A		; 0A
	ror A		; 6A
	asl A		; 0A
	rol A		; 2A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $03.b,S		; 03 03
	ora ($00.b,X)		; 01 00
	tsb $040C.w		; 0C 0C 04
	ora $0EFF9E.l,X		; 1F 9E FF 0E
	dec $35D5.w		; CE D5 35
	tsa		; 3B
	asl A		; 0A
	stx $FE04.w		; 8E 04 FE
	bra -14.b		; 80 F2
	brk $E0.b		; 00 E0
	ora [$4C.b]		; 07 4C
	eor $013F0C.l,X		; 5F 0C 3F 01
	and $F5CECA.l,X		; 3F CA CE F5
	sbc $81.b,X		; F5 81
	ora ($3D.b,X)		; 01 3D
	and $0000.w,X		; 3D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
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
	ora $00.b,S		; 03 00
	trb $6F03.w		; 1C 03 6F
	bpl -69.b		; 10 BB
	mvp $9B,$64		; 44 64 9B
	dey		; 88
	adc [$00.b],Y		; 77 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $10.b		; 00 10
	ora $9B3844.l		; 0F 44 38 9B
	rts		; 60

	adc [$80.b],Y		; 77 80
	brk $00.b		; 00 00
	and $0FF000.l,X		; 3F 00 F0 0F
	sbc [$18.b]		; E7 18
	clv		; B8
	eor [$C7.b]		; 47 C7
	sec		; 38
	ora $00FFE0.l,X		; 1F E0 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $E01800.l		; 0F 00 18 E0
	eor [$80.b]		; 47 80
	sec		; 38
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $C7.b		; 00 C7
	sec		; 38
	sed		; F8
	ora [$FC.b]		; 07 FC
	ora $E6.b,S		; 03 E6
	ora $07F8.w,Y		; 19 F8 07
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $19.b		; 00 19
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $78.b		; 00 78
	ora [$88.b]		; 07 88
	adc [$2A.b],Y		; 77 2A
	cmp $73.b,X		; D5 73
	sty $31CE.w		; 8C CE 31
	tsb $9FF3.w		; 0C F3 9F
	rts		; 60

	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	adc [$08.b],Y		; 77 08
	cmp $3A.b		; C5 3A
	bra 125.b		; 80 7D
	and ($CA.b),Y		; 31 CA
	sbc ($04.b,S),Y		; F3 04
	rts		; 60

	brk $F8.b		; 00 F8
	brk $3C.b		; 00 3C
	cpy #$FC02.w		; C0 02 FC
	rtl		; 6B

	sty $57.b,X		; 94 57
	tay		; A8
	eor $9E92.w,X		; 5D 92 9E
	brk $66.b		; 00 66
	tya		; 98
	brk $00.b		; 00 00
	cpy #$FC00.w		; C0 00 FC
	brk $94.b		; 00 94
	lsr A		; 4A
	plp		; 28
	ldx $A2.b		; A6 A2
	brk $60.b		; 00 60
	brk $D0.b		; 00 D0
	bra  48.b		; 80 30
	jsr ($781E.w,X)		; FC 1E 78
	ora $1A0F1A.l		; 0F 1A 0F 1A
	tsa		; 3B
	bpl  86.b		; 10 56
	brk $AA.b		; 00 AA
	brk $F0.b		; 00 F0
	brk $48.b		; 00 48
	pha		; 48
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	tsb $04.b		; 04 04
	plp		; 28
	plp		; 28
	bvs 112.b		; 70 70
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	rti		; 40

	adc $E31CDC.l,X		; 7F DC 1C E3
	brk $80.b		; 00 80
	bra  14.b		; 80 0E
	inc $3F00.w,X		; FE 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$E320.w		; A0 20 E3
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $31.b		; 00 31
	bmi   0.b		; 30 00
	brk $BE.b		; 00 BE
	cop $5F.b		; 02 5F
	pla		; 68
	lda $EFC5.w,X		; BD C5 EF
	ora #$0293.w		; 09 93 02
	tay		; A8
	brk $74.b		; 00 74
	brk $DB.b		; 00 DB
	brk $03.b		; 00 03
	sbc ($08.b,X)		; E1 08
	cpx #$C207.w		; E0 07 C2
	ora $6E10.w,Y		; 19 10 6E
	jmp ($7777.w)		; 6C 77 77
	tyx		; BB
	tyx		; BB
	ldy $BFBC.w,X		; BC BC BF
	ora ($AC.b,X)		; 01 AC
	cop $D6.b		; 02 D6
	cop $F9.b		; 02 F9
	ora [$F0.b]		; 07 F0
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DC.b		; 00 DC
	jmp.w [$DADB]		; DC DB DA
	sbc #$E2E8.w		; E9 E8 E2
	sep #$00		; E2 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	ldy #$70C0.w		; A0 C0 70
	bra -104.b		; 80 98
	jsr $800C.w		; 20 0C 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	jsr $1070.w		; 20 70 10
	sed		; F8
	php		; 08
	stz $06.b,X		; 74 06
	ply		; 7A
	ora $3D.b,S		; 03 3D
	ora ($4E.b,X)		; 01 4E
	cpy #$F017.w		; C0 17 F0
	ora $3C.b		; 05 3C
	ora ($0F.b,X)		; 01 0F
	brk $03.b		; 00 03
	sed		; F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $BF.b		; 00 BF
	bra  47.b		; 80 2F
	jsr $080B.w		; 20 0B 08
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpy #$E8FC.w		; C0 FC E8
	ora $3F01FD.l		; 0F FD 01 3F
	brk $3C.b		; 00 3C
	jsr ($FF00.w,X)		; FC 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $F420.w		; 20 20 F4
	tsb $FE.b		; 04 FE
	brk $FF.b		; 00 FF
	brk $C3.b		; 00 C3
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$80.b]		; 07 80
	ora ($FE.b,X)		; 01 FE
	cmp $00000E.l		; CF 0E 00 00
	brk $FF.b		; 00 FF
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	beq   0.b		; F0 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	bpl 112.b		; 10 70
	and $C05FE0.l		; 2F E0 5F C0
	asl $5980.w,X		; 1E 80 59
	cmp ($1C.b,X)		; C1 1C
	adc $013F07.l,X		; 7F 07 3F 01
	ora $5F202F.l		; 0F 2F 20 5F
	rti		; 40

	and $007F00.l,X		; 3F 00 7F 00
	rol $2200.w,X		; 3E 00 22
	jsl $020808.l		; 22 08 08 02
	cop $BA.b		; 02 BA
	cpy #$6052.w		; C0 52 60
	rol A		; 2A
	bmi  70.b		; 30 46
	sei		; 78
	ora $E0.b,S		; 03 E0
	brk $F0.b		; 00 F0
	jsr $D038.w		; 20 38 D0
	cld		; D8
	eor $AD5D.w,X		; 5D 5D AD
	and $15D5.w		; 2D D5 15
	lda ($21.b,X)		; A1 21
	bra -128.b		; 80 80
	rts		; 60

	rts		; 60

	bne  16.b		; D0 10
	jsr $0800.w		; 20 00 08
	ora [$10.b]		; 07 10
	ora $230F10.l		; 0F 10 0F 23
	trb $1926.w		; 1C 26 19
	eor $225D30.l		; 4F 30 5D 22
	eor $22.b,X		; 55 22
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	trb $1900.w		; 1C 00 19
	brk $30.b		; 00 30
	ora ($22.b,X)		; 01 22
	ora ($22.b,X)		; 01 22
	ora ($33.b,X)		; 01 33
	cpy $B847.w		; CC 47 B8
	ldx $5851.w		; AE 51 58
	lda [$B1.b]		; A7 B1
	lsr $5CA3.w		; 4E A3 5C
	adc $9C.b,S		; 63 9C
	eor [$B8.b]		; 47 B8
	cpy $B800.w		; CC 00 B8
	brk $51.b		; 00 51
	jsr $40A7.w		; 20 A7 40
	lsr $5C80.w		; 4E 80 5C
	bra -100.b		; 80 9C
	brk $B8.b		; 00 B8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra  -1.b		; 80 FF
	brk $FE.b		; 00 FE
	ora ($FD.b,X)		; 01 FD
	cop $FF.b		; 02 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $07.b		; 00 07
	sed		; F8
	and $00FFC0.l,X		; 3F C0 FF 00
	sed		; F8
	brk $83.b		; 00 83
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$01.b]		; 07 01
	ora [$F7.b]		; 07 F7
	tsb $1CFF.w		; 0C FF 1C
.INDEX 8
	sep #$1A		; E2 1A
	sbc $FA04.w,Y		; F9 04 FA
	asl $FC.b		; 06 FC
	phd		; 0B
	ldx $43.b		; A6 43
	sbc $91.b,X		; F5 91
	php		; 08
	tsb $0504.w		; 0C 04 05
	asl $070B.w		; 0E 0B 07
	tsb $01.b		; 04 01
	brk $09.b		; 00 09
	ora ($58.b,X)		; 01 58
	clc		; 18
	inc A		; 1A
	dey		; 88
	pea $F008.w		; F4 08 F0
	clc		; 18
	cpx #$08.b		; E0 08
	bmi  88.b		; 30 58
	tsb $56D0.w		; 0C D0 56
	bit $2A.b		; 24 2A
	cpy #$DB.b		; C0 DB
	cop $40.b		; 02 40
	bpl -48.b		; 10 D0
	bmi -16.b		; 30 F0
	brk $E0.b		; 00 E0
	rti		; 40

	cpx #$C0.b		; E0 C0
	cpy $1C08.w		; CC 08 1C
	trb $3C3E.w		; 1C 3E 3C
	cpy #$00.b		; C0 00
	beq -128.b		; F0 80
	bcs  32.b		; B0 20
	cpx $1E80.w		; EC 80 1E
	cpx #$F7.b		; E0 F7
	bmi 123.b		; 30 7B
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	rti		; 40

	bpl  16.b		; 10 10
	pla		; 68
	pla		; 68
	bit $060C.w,X		; 3C 0C 06
	asl $00.b		; 06 00
	brk $66.b		; 00 66
	ora ($2A.b,X)		; 01 2A
	ora $2A.b		; 05 2A
	ora $09.b		; 05 09
	asl $09.b		; 06 09
	asl $0A.b		; 06 0A
	tsb $0A.b		; 04 0A
	tsb $06.b		; 04 06
	brk $01.b		; 00 01
	cop $05.b		; 02 05
	cop $05.b		; 02 05
	cop $06.b		; 02 06
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $C7.b		; 00 C7
	sec		; 38
	sta [$78.b]		; 87 78
	lda [$58.b]		; A7 58
	lda [$58.b]		; A7 58
	lda [$58.b]		; A7 58
	ldx $48.b,Y		; B6 48
	adc ($0C.b)		; 72 0C
	eor ($2C.b)		; 52 2C
	sec		; 38
	brk $78.b		; 00 78
	brk $58.b		; 00 58
	jsr $2058.w		; 20 58 20
	cli		; 58
	jsr $3048.w		; 20 48 30
	tsb $2C30.w		; 0C 30 2C
	bpl -24.b		; 10 E8
	brk $C7.b		; 00 C7
	ora [$95.b]		; 07 95
	ora $14.b		; 05 14
	asl $10.b		; 06 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$05.b]		; 07 05
	ora $000F00.l		; 0F 00 0F 00
	ora $000600.l		; 0F 00 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	sta ($C0.b,X)		; 81 C0
	cpx #$30.b		; E0 30
	beq  28.b		; F0 1C
	bit $1F0F.w,X		; 3C 0F 1F
	ora [$0F.b]		; 07 0F
	ora $03.b,S		; 03 03
	brk $87.b		; 00 87
	brk $E3.b		; 00 E3
	bra -15.b		; 80 F1
	brk $FC.b		; 00 FC
	clc		; 18
	sbc $033F06.l,X		; FF 06 3F 03
	ora $550F01.l,X		; 1F 01 0F 55
	ldy #$EF.b		; A0 EF
	bcc 125.b		; 90 7D
	cop $5E.b		; 02 5E
	and ($74.b,X)		; 21 74
	ora $09.b,S		; 03 09
	and [$FD.b],Y		; 37 FD
	cpy $DB.b		; C4 DB
	bra  42.b		; 80 2A
	dey		; 88
	bpl -96.b		; 10 A0
	asl A		; 0A
	lda #$0829.w		; A9 29 08
	asl A		; 0A
	plp		; 28
	bmi -64.b		; 30 C0
	sta $C0.b,S		; 83 C0
	lda [$B0.b],Y		; B7 B0
	adc [$06.b],Y		; 77 06
	sbc $C60200.l,X		; FF 00 02 C6
	ora $9B.b,S		; 03 9B
	ldy $D4AD.w		; AC AD D4
	trb $95.b		; 14 95
	trb $40.b		; 14 40
	adc ($FE.b)		; 72 FE
	sed		; F8
	brk $00.b		; 00 00
	.db $42, $BF		; 42 BF
	ora ($7F.b,X)		; 01 7F
	mvp $E4,$1F		; 44 1F E4
	ora $800FE0.l		; 0F E0 0F 80
	ora $000000.l		; 0F 00 00 00
	brk $38.b		; 00 38
	brk $48.b		; 00 48
	brk $48.b		; 00 48
	rti		; 40

	cli		; 58
	bvc 124.b		; 50 7C
	rts		; 60

	sbc ($10.b)		; F2 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bmi -80.b		; 30 B0
	bvs -80.b		; 70 B0
	bvs -96.b		; 70 A0
	rts		; 60

	bra  28.b		; 80 1C
	tsb $0031.w		; 0C 31 00
	ora ($00.b),Y		; 11 00
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
	bcc  96.b		; 90 60
	pha		; 48
	bcs -120.b		; B0 88
	bvs 100.b		; 70 64
	clc		; 18
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	bra -80.b		; 80 B0
	rti		; 40

	bvs   0.b		; 70 00
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $C1.b		; 00 C1
	rol $BF40.w,X		; 3E 40 BF
	eor ($AC.b,S),Y		; 53 AC
	txs		; 9A
	adc $72.b		; 65 72
	sty $9864.w		; 8C 64 98
	xce		; FB
	tsb $00.b		; 04 00
	brk $3E.b		; 00 3E
	brk $BF.b		; 00 BF
	rti		; 40

	bit $01D2.w		; 2C D2 01
	sbc $508D.w		; ED 8D 50
	txy		; 9B
	jsr $0406.w		; 20 06 04
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	bpl -32.b		; 10 E0
	cli		; 58
	ldy #$B8.b		; A0 B8
	rti		; 40

	inx		; E8
	bcc -16.b		; 90 F0
	brk $30.b		; 00 30
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $A0.b		; 00 A0
	bvc  64.b		; 50 40
	bmi  16.b		; 30 10
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $FE.b		; 00 FE
	brk $EF.b		; 00 EF
	bpl -23.b		; 10 E9
	asl $B5.b,X		; 16 B5
	asl A		; 0A
	xba		; EB
	trb $51.b		; 14 51
	ldx $51AF.w		; AE AF 51
	adc ($CE.b),Y		; 71 CE
	ora ($81.b,X)		; 01 81
	bvc  78.b		; 50 4E
	bvc  78.b		; 50 4E
	pha		; 48
	lsr $10.b		; 46 10
	asl $00AE.w		; 0E AE 00
	bpl  65.b		; 10 41
	asl $C8D0.w		; 0E D0 C8
	plp		; 28
	trb $95.b		; 14 95
	tax		; AA
	tay		; A8
	lda #$84A8.w		; A9 A8 84
	ldy $C7C3.w		; AC C3 C7
	lda $C3.b,S		; A3 C3
	cmp $03.b,S		; C3 03
	php		; 08
	rol $F812.w,X		; 3E 12 F8
	and [$F0.b]		; 27 F0
	ora [$F0.b]		; 07 F0
	sta $F0.b,S		; 83 F0
	bra  -8.b		; 80 F8
	ora $F0.b,S		; 03 F0
	ora $E0.b,S		; 03 E0
	sbc $83DFB5.l,X		; FF B5 DF 83
	sbc $80BD8D.l		; EF 8D BD 80
	ror $D946.w,X		; 7E 46 D9
	eor $EEB171.l,X		; 5F 71 B1 EE
	cpx #$F5.b		; E0 F5
	mvp $60,$E3		; 44 E3 60
	sbc $FE70.w,X		; FD 70 FE
	ror $B9FF.w,X		; 7E FF B9
	adc $80AE26.l,X		; 7F 26 AE 80
	ora $702500.l,X		; 1F 00 25 70
	tya		; 98
	bit $83C3.w,X		; 3C C3 83
	sbc $C2.b,S		; E3 C2
	sbc ($51.b,S),Y		; F3 51
	inc $FB2A.w,X		; FE 2A FB
	lda [$F0.b]		; A7 F0
	sta $19FF21.l		; 8F 21 FF 19
	adc $DE3C83.l,X		; 7F 83 3C DE
	trb $0C5C.w		; 1C 5C 0C
	and #$A400.w		; 29 00 A4
	tsb $01.b		; 04 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $F8.b		; 00 F8
	ora [$3F.b]		; 07 3F
	cpy #$FF.b		; C0 FF
	brk $3C.b		; 00 3C
	cmp $FF.b,S		; C3 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $C3.b		; 00 C3
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $3C.b		; 00 3C
	ora $C0.b,S		; 03 C0
	and $EEFE01.l,X		; 3F 01 FE EE
	ora ($C0.b),Y		; 11 C0
	and $FFE31C.l,X		; 3F 1C E3 FF
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $3F.b		; 00 3F
	brk $FE.b		; 00 FE
	ora ($11.b,X)		; 01 11
	asl $003F.w		; 0E 3F 00
	sbc $00.b,S		; E3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	php		; 08
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $3B.b		; 00 3B
	tsb $CF.b		; 04 CF
	bmi  28.b		; 30 1C
	sbc $03.b,S		; E3 03
	jsr ($F30C.w,X)		; FC 0C F3
	bmi -49.b		; 30 CF
	sbc $1C.b,S		; E3 1C
	brk $00.b		; 00 00
	tsb $03.b		; 04 03
	bmi  15.b		; 30 0F
	sbc $1C.b,S		; E3 1C
	jsr ($F300.w,X)		; FC 00 F3
	brk $CF.b		; 00 CF
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$E0.b		; C0 E0
	jsr $2060.w		; 20 60 20
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$C0.b		; E0 C0
	cpx #$C0.b		; E0 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	cpx #$E0.b		; E0 E0
	bvc  16.b		; 50 10
	bcs -112.b		; B0 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq -32.b		; F0 E0
	beq  96.b		; F0 60
	bvs -48.b		; 70 D0
	bcc -48.b		; 90 D0
	ldy #$E0.b		; A0 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bvs -96.b		; 70 A0
	bmi -32.b		; 30 E0
	jsr $00C0.w		; 20 C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	rti		; 40

	bra -16.b		; 80 F0
	rts		; 60

	jsr ($8F88.w,X)		; FC 88 8F
	adc ($03.b)		; 72 03
	sbc $7F01.w,X		; FD 01 7F
	brk $6F.b		; 00 6F
	cpx #$C0.b		; E0 C0
	bra -64.b		; 80 C0
	rti		; 40

	bcc -112.b		; 90 90
	stz $04.b,X		; 74 04
	sbc $FE01.w,X		; FD 01 FE
	brk $FF.b		; 00 FF
	brk $9F.b		; 00 9F
	bra  12.b		; 80 0C
	jsr ($1F00.w,X)		; FC 00 1F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($10.b,S),Y		; 13 10
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $010E04.l		; 0F 04 0E 01
	asl $05.b,X		; 16 05
	and $2908.w		; 2D 08 29
	ora ($1A.b,X)		; 01 1A
	cop $2A.b		; 02 2A
	cop $55.b		; 02 55
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	ora ($0C.b,X)		; 01 0C
	ora #$121A.w		; 09 1A 12
	ora [$16.b],Y		; 17 16
	ora $1D1F0D.l		; 0F 0D 1F 1D
	and $60BF3B.l,X		; 3F 3B BF 60
	sbc $D017E0.l,X		; FF E0 17 D0
	cmp #$D022.w		; C9 22 D0
	rol $82.b,X		; 36 82
	and $1E60.w,Y		; 39 60 1E
	tyx		; BB
	bpl  66.b		; 10 42
	rts		; 60

	rol $29.b		; 26 29
	adc [$58.b],Y		; 77 58
	and $060F22.l,X		; 3F 22 0F 06
	lsr $D148.w		; 4E 48 D1
	cmp ($47.b),Y		; D1 47
	eor [$A0.b]		; 47 A0
	rti		; 40

	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	bvs -16.b		; 70 F0
	sec		; 38
	php		; 08
	cpx $04.b		; E4 04
	rol $0002.w,X		; 3E 02 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	beq  -4.b		; F0 FC
	sed		; F8
	rep #$C0		; C2 C0
	ply		; 7A
	cmp $7D.b		; C5 7D
	adc $7F.b,S		; 63 7F
	adc $5CBFBE.l,X		; 7F BE BF 5C
	dec $2CEE.w,X		; DE EE 2C
	bvs  85.b		; 70 55
	tyx		; BB
	tax		; AA
	mvp $40,$D9		; 44 D9 40
	sbc $20.b,S		; E3 20
	sbc $4CFF1C.l,X		; FF 1C FF 4C
	sbc $D03F28.l,X		; FF 28 3F D0
	sta $014EE8.l,X		; 9F E8 4E 01
	sta ($A3.b,X)		; 81 A3
	and $27.b,S		; 23 27
	and [$2F.b]		; 27 2F
	and $381E9C.l		; 2F 9C 1E 38
	clv		; B8
	dec A		; 3A
	and ($61.b)		; 32 61
	adc ($00.b),Y		; 71 00
	cmp $23.b,S		; C3 23
	cmp [$67.b]		; C7 67
	cmp $18DF6E.l		; CF 6E DF 18
	sbc $22FE10.l,X		; FF 10 FE 22
	jsr ($FE63.w,X)		; FC 63 FE
	eor $C00FC0.l,X		; 5F C0 0F C0
	and [$E0.b]		; 27 E0
	rol $70.b,X		; 36 70
	ora ($71.b),Y		; 11 71
	jmp $407F.w		; 4C 7F 40
	ror $6070.w,X		; 7E 70 60
	lda $407F80.l,X		; BF 80 7F 40
	eor $808F40.l,X		; 5F 40 8F 80
	ldx $92A0.w		; AE A0 92
	sta ($A0.b)		; 92 A0
	ldy #$E0.b		; A0 E0
	bra   0.b		; 80 00
	eor ($00.b,X)		; 41 00
	rti		; 40

	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	beq  15.b		; F0 0F
	cmp $3C.b,S		; C3 3C
	sta $807F60.l,X		; 9F 60 7F 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $003C00.l		; 0F 00 3C 00
	rts		; 60

	brk $80.b		; 00 80
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	rti		; 40

	sbc $F702.w,X		; FD 02 F7
	brk $8C.b		; 00 8C
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	phd		; 0B
	brk $1B.b		; 00 1B
	ora #$1306.w		; 09 06 13
	tsb $0817.w		; 0C 17 08
	ora $08.b,X		; 15 08
	ora $0A00.w,Y		; 19 00 0A
	ora ($0A.b,X)		; 01 0A
	ora ($02.b,X)		; 01 02
	ora ($06.b,X)		; 01 06
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $C7.b		; 00 C7
	sec		; 38
	stx $9C71.w		; 8E 71 9C
	adc $18.b,S		; 63 18
	sbc [$30.b]		; E7 30
	cmp $61CE31.l		; CF 31 CE 61
	stz $9E61.w,X		; 9E 61 9E
	sec		; 38
	brk $71.b		; 00 71
	brk $63.b		; 00 63
	brk $E7.b		; 00 E7
	brk $CF.b		; 00 CF
	brk $CE.b		; 00 CE
	brk $9E.b		; 00 9E
	brk $9E.b		; 00 9E
	brk $75.b		; 00 75
	tsb $67.b		; 04 67
	tsb $2A.b		; 04 2A
	brk $1E.b		; 00 1E
	brk $0D.b		; 00 0D
	brk $06.b		; 00 06
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora ($3F.b,X)		; 01 3F
	tsa		; 3B
	and $17173B.l,X		; 3F 3B 17 17
	ora [$07.b]		; 07 07
	asl $06.b		; 06 06
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	ldy #$3F.b		; A0 3F
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -48.b		; 80 D0
	bpl  -1.b		; 10 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $C1.b		; 00 C1
	ora ($02.b,X)		; 01 02
	ora $03.b,S		; 03 03
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$02.b]		; 07 02
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $15.b		; 00 15
	inc A		; 1A
	sbc $61C6F0.l		; EF F0 C6 61
	ora $00.b,S		; 03 00
	tsb $03.b		; 04 03
	ora $000B00.l		; 0F 00 0B 00
	phd		; 0B
	cop $00.b		; 02 00
	xce		; FB
	cpy #$FA.b		; C0 FA
	ora ($FA.b,X)		; 01 FA
	brk $E0.b		; 00 E0
	ora $80.b,S		; 03 80
	brk $03.b		; 00 03
	tsb $04.b		; 04 04
	asl $04.b		; 06 04
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	rti		; 40

	adc $E703E3.l,X		; 7F E3 03 E7
	brk $33.b		; 00 33
	beq   6.b		; F0 06
	inc $1F00.w,X		; FE 00 1F
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	jsr ($FF00.w,X)		; FC 00 FF
	brk $CF.b		; 00 CF
	cpy #$19.b		; C0 19
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	rts		; 60

	adc $0637FF.l,X		; 7F FF 37 06
	ora $03.b,S		; 03 03
	ora $FF.b,S		; 03 FF
	ora $07.b,S		; 03 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $1F.b		; 00 1F
	brk $FB.b		; 00 FB
	ora ($FD.b,X)		; 01 FD
	brk $05.b		; 00 05
	tsb $03.b		; 04 03
	brk $FF.b		; 00 FF
	brk $C0.b		; 00 C0
	and $F000FF.l,X		; 3F FF 00 F0
	ora $3FF807.l		; 0F 07 F8 3F
	cpy #$FF.b		; C0 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	cpy #$00.b		; C0 00
	beq  15.b		; F0 0F
	brk $F8.b		; 00 F8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $9F.b		; 00 9F
	rts		; 60

	and $807FC0.l,X		; 3F C0 7F 80
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FB00.l,X		; FF 00 FB 00
	sbc [$00.b],Y		; F7 00
	rts		; 60

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
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
	brk $61.b		; 00 61
	stz $1EA1.w,X		; 9E A1 1E
	lda ($1E.b,X)		; A1 1E
	sta ($0E.b),Y		; 91 0E
	bcc  15.b		; 90 0F
	dey		; 88
	ora [$88.b]		; 07 88
	ora [$04.b]		; 07 04
	ora $9E.b,S		; 03 9E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $E6.b		; 00 E6
	brk $CC.b		; 00 CC
	brk $C8.b		; 00 C8
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $04.b		; 00 04
	trb $0E26.w		; 1C 26 0E
	jsl $0F290E.l		; 22 0E 29 0F
	plp		; 28
	ora $240C2E.l		; 0F 2E 0C 24
	brk $1C.b		; 00 1C
	brk $0B.b		; 00 0B
	php		; 08
	ora ($10.b),Y		; 11 10
	ora $14.b,X		; 15 14
	ora ($12.b)		; 12 12
	trb $14.b		; 14 14
	trb $1810.w		; 1C 10 18
	clc		; 18
	brk $00.b		; 00 00
	pha		; 48
	bmi  52.b		; 30 34
	php		; 08
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	cop $03.b		; 02 03
	ora ($02.b,X)		; 01 02
	ora ($05.b,X)		; 01 05
	ora $0D.b,S		; 03 0D
	tsb $07.b		; 04 07
	tsb $1B.b		; 04 1B
	brk $3B.b		; 00 3B
	php		; 08
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	cop $0E.b		; 02 0E
	brk $04.b		; 00 04
	tsb $1C.b		; 04 1C
	tsb $3C.b		; 04 3C
	and [$31.b],Y		; 37 31
	ora $8CBF02.l		; 0F 02 BF 8C
	dec $39.b,X		; D6 39
	inc $F862.w,X		; FE 62 F8
	brk $71.b		; 00 71
	cpy #$23.b		; C0 23
	cpy #$C9.b		; C0 C9
	sbc $F6F6.w,Y		; F9 F6 F6
	jmp $38CC.w		; 4C CC 38
	and $7371.w,Y		; 39 71 73
	ora [$07.b]		; 07 07
	dec $DCCE.w		; CE CE DC
	jmp.w [$71A3]		; DC A3 71
	stz $4E52.w		; 9C 52 4E
	dec $8083.w		; CE 83 80
	ora $00FF00.l		; 0F 00 FF 00
	sbc $7CBB00.l,X		; FF 00 BB 7C
	brk $73.b		; 00 73
	and ($7F.b,X)		; 21 7F
	and ($FF.b),Y		; 31 FF
	jmp ($F0FC.w,X)		; 7C FC F0
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	jmp ($0080.w,X)		; 7C 80 00
	rti		; 40

	bra -64.b		; 80 C0
	bra -96.b		; 80 A0
	rti		; 40

	bvs  96.b		; 70 60
	inx		; E8
	bpl -12.b		; 10 F4
	sec		; 38
	ldy $0038.w,X		; BC 38 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	rts		; 60

	bra -16.b		; 80 F0
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	rti		; 40

	jmp ($0307.w,X)		; 7C 07 03
	ora $0E06.w		; 0D 06 0E
	tsb $0E.b		; 04 0E
	tsb $0F.b		; 04 0F
	tsb $07.b		; 04 07
	ora $09.b,S		; 03 09
	tsb $08.b		; 04 08
	tsb $00.b		; 04 00
	ora [$00.b]		; 07 00
	ora $000E00.l		; 0F 00 0E 00
	asl $0F00.w		; 0E 00 0F
	brk $07.b		; 00 07
	brk $0D.b		; 00 0D
	brk $0C.b		; 00 0C
	lda [$00.b]		; A7 00
	adc $23.b		; 65 23
	cpy $43.b		; C4 43
	eor $032D20.l		; 4F 20 2D 03
	sbc $F73A93.l,X		; FF 93 3A F7
	dec $1827.w,X		; DE 27 18
	clv		; B8
	tas		; 1B
	tda		; 7B
	tsa		; 3B
	xce		; FB
	bpl 112.b		; 10 70
	ora ($33.b,S),Y		; 13 33
	ora [$F7.b]		; 07 F7
	ora [$F7.b]		; 07 F7
	ora [$E7.b]		; 07 E7
	cmp [$0C.b],Y		; D7 0C
	wai		; CB
	asl $CD.b		; 06 CD
	ora $D6.b,S		; 03 D6
	ora ($EB.b),Y		; 11 EB
	bmi -11.b		; 30 F5
	jsl $990092.l		; 22 92 00 99
	ora ($2E.b),Y		; 11 2E
	rol $3737.w		; 2E 37 37
	and [$37.b],Y		; 37 37
	pld		; 2B
	tsa		; 3B
	ora $3D.b		; 05 3D
	brk $36.b		; 00 36
	adc ($73.b,X)		; 61 73
	rts		; 60

	adc $20F0.w,Y		; 79 F0 20
	inx		; E8
	bmi -12.b		; 30 F4
	clc		; 18
	nop		; EA
	sty $D874.w		; 8C 74 D8
	pea $FC48.w		; F4 48 FC
	plp		; 28
	jmp ($0028.w,X)		; 7C 28 00
	bmi   0.b		; 30 00
	sec		; 38
	bra -100.b		; 80 9C
	bne -34.b		; D0 DE
	cpy #$DC.b		; C0 DC
	cpx #$EC.b		; E0 EC
	rts		; 60

	jmp ($ACA0.w)		; 6C A0 AC
	cmp #$ED14.w		; C9 14 ED
	php		; 08
	cpx $01.b		; E4 01
	pea $FF00.w		; F4 00 FF
	tsb $FE.b		; 04 FE
	ora $F7.b,S		; 03 F7
	ora ($F3.b,X)		; 01 F3
	brk $20.b		; 00 20
	and $1D10.w,X		; 3D 10 1D
	clc		; 18
	ora $0C08.w,X		; 1D 08 0C
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	php		; 08
	ora #$0C0C.w		; 09 0C 0C
	and $DF8E.w,X		; 3D 8E DF
	rep #$CF		; C2 CF
	jsl $2E143F.l		; 22 3F 14 2E
	bpl -67.b		; 10 BD
	inc A		; 1A
	stx $4000.w		; 8E 00 40
	bra  78.b		; 80 4E
	dec $E222.w		; CE 22 E2
	ora ($F2.b)		; 12 F2
	tsb $34.b		; 04 34
	ora ($31.b,X)		; 01 31
	brk $BB.b		; 00 BB
	brk $8E.b		; 00 8E
	brk $C0.b		; 00 C0
	sbc $C0FFC0.l,X		; FF C0 FF C0
	lda $C0BFC0.l,X		; BF C0 BF C0
	sbc $80FF80.l,X		; FF 80 FF 80
	sbc $80FD80.l,X		; FF 80 FD 80
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	.db $82, $82, $E6		; 82 82 E6
	brk $E5.b		; 00 E5
	cop $F2.b		; 02 F2
	ora $FB.b,X		; 15 FB
	ora $11CD.w,Y		; 19 CD 11
	cmp ($00.b)		; D2 00
	cmp ($00.b)		; D2 00
	cmp $11.b,S		; C3 11
	clc		; 18
	inc A		; 1A
	clc		; 18
	tas		; 1B
	php		; 08
	ora $1D04.w,X		; 1D 04 1D
	jsl $33213F.l		; 22 3F 21 33
	and ($33.b,X)		; 21 33
	jsr $F933.w		; 20 33 F9
	asl $FF.b		; 06 FF
	brk $F7.b		; 00 F7
	tsb $0CF3.w		; 0C F3 0C
	sbc $0CF700.l,X		; FF 00 F7 0C
	sbc ($0C.b,S),Y		; F3 0C
	adc $0606C0.l,X		; 7F C0 06 06
	brk $00.b		; 00 00
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0000.w		; 0C 00 00
	tsb $0C0C.w		; 0C 0C 0C
	tsb $E1E1.w		; 0C E1 E1
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $C0BF00.l,X		; FF 00 BF C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	ora $1508.w,Y		; 19 08 15
	tsb $140F.w		; 0C 0F 14
	pld		; 2B
	clc		; 18
	eor ($30.b,S),Y		; 53 30
	ora $081708.l,X		; 1F 08 17 08
	ora [$08.b],Y		; 17 08
	asl $1E.b		; 06 1E
	cop $1E.b		; 02 1E
	brk $1C.b		; 00 1C
	tsb $3C.b		; 04 3C
	tsb $007C.w		; 0C 7C 00
	clc		; 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$0C.b]		; 07 0C
	ora $040904.l		; 0F 04 09 04
	ora #$0D04.w		; 09 04 0D
	tsb $30.b		; 04 30
	bpl  10.b		; 10 0A
	asl $04.b		; 06 04
	cop $00.b		; 02 00
	tsb $0C00.w		; 0C 00 0C
	cop $0E.b		; 02 0E
	cop $0E.b		; 02 0E
	cop $0E.b		; 02 0E
	ora $0F013F.l		; 0F 3F 01 0F
	ora ($07.b,X)		; 01 07
	sbc $00.b,S		; E3 00
	inc $41.b		; E6 41
	sbc [$41.b]		; E7 41
	sbc [$41.b],Y		; F7 41
	cmp [$61.b],Y		; D7 61
	lda $30EF60.l,X		; BF 60 EF 30
	cmp $1C1C30.l,X		; DF 30 1C 1C
	cmp $59D9.w,Y		; D9 D9 59
	eor $6969.w,Y		; 59 69 69
	adc #$7069.w		; 69 69 70
	bvs 112.b		; 70 70
	bvs  48.b		; 70 30
	bmi 125.b		; 30 7D
	inc $93FE.w,X		; FE FE 93
	sbc $55BB55.l,X		; FF 55 BB 55
	sbc $FEFF11.l,X		; FF 11 FF FE
	sbc $44BB00.l,X		; FF 00 BB 44
	inc $93FE.w,X		; FE FE 93
	sta ($55.b,S),Y		; 93 55
	eor $55.b,X		; 55 55
	eor $11.b,X		; 55 11
	ora ($FE.b),Y		; 11 FE
	inc $1010.w,X		; FE 10 10
	mvp $FA,$44		; 44 44 FA
	trb $1EDC.w		; 1C DC 1E
	sta ($1E.b,S),Y		; 93 1E
	cmp $D212.w,X		; DD 12 D2
	ora ($D0.b,X)		; 01 D0
	ora ($D9.b,X)		; 01 D9
	ora ($EB.b),Y		; 11 EB
	ora $1E00.w		; 0D 00 1E
	jsr $603E.w		; 20 3E 60
	adc $203F20.l,X		; 7F 20 3F 20
	and ($20.b,S),Y		; 33 20
	and ($20.b),Y		; 31 20
	and $1F10.w,Y		; 39 10 1F
	tsb $02.b		; 04 02
	ora [$02.b]		; 07 02
	ora [$03.b]		; 07 03
	asl $01.b		; 06 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $265F06.l,X		; 3F 06 5F 26
	lda $869F66.l,X		; BF 66 9F 86
	lda $264B66.l,X		; BF 66 4B 26
	and $123F12.l,X		; 3F 12 3F 12
	ora [$27.b]		; 07 27
	asl $66.b		; 06 66
	asl $E6.b		; 06 E6
	ror $E6.b		; 66 E6
	asl $E6.b		; 06 E6
	asl $76.b,X		; 16 76
	asl $36.b		; 06 36
	cop $32.b		; 02 32
	lda ($20.b),Y		; B1 20
	lda ($00.b),Y		; B1 00
	sbc ($40.b,X)		; E1 40
	ldy #$40.b		; A0 40
	cpy $00.b		; C4 00
	dec $00.b		; C6 00
	lda ($42.b,X)		; A1 42
	bne  99.b		; D0 63
	rti		; 40

	adc ($40.b),Y		; 71 40
	adc ($00.b),Y		; 71 00
	adc ($00.b,X)		; 61 00
	rts		; 60

	brk $44.b		; 00 44
	brk $46.b		; 00 46
	brk $63.b		; 00 63
	brk $73.b		; 00 73
	ply		; 7A
	mvp $D0,$EE		; 44 EE D0
	adc $DA.b,X		; 75 DA
	ldx $5B.b,Y		; B6 5B
	jmp ($7B11.w,X)		; 7C 11 7B
	ora ($B9.b)		; 12 B9
	.db $42, $92		; 42 92
	bra -128.b		; 80 80
	dec $18.b		; C6 18
	phx		; DA
	clc		; 18
	stp		; DB
	clc		; 18
	stp		; DB
	ora ($53.b)		; 12 53
	trb $57.b		; 14 57
	tsb $C7.b		; 04 C7
	jmp ($F1EE.w)		; 6C EE F1
	brk $FA.b		; 00 FA
	cop $F9.b		; 02 F9
	ora $FF.b,S		; 03 FF
	tsb $FC.b		; 04 FC
	brk $FC.b		; 00 FC
	brk $EC.b		; 00 EC
	brk $EC.b		; 00 EC
	brk $0E.b		; 00 0E
	asl $0705.w		; 0E 05 07
	tsb $07.b		; 04 07
	brk $07.b		; 00 07
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	ldy #$40.b		; A0 40
	bne -96.b		; D0 A0
	pla		; 68
	bvs  -8.b		; 70 F8
	bmi  48.b		; 30 30
	php		; 08
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $B0.b		; 00 B0
	bra  -8.b		; 80 F8
	brk $F8.b		; 00 F8
	brk $38.b		; 00 38
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($7C80.w,X)		; FC 80 7C
	bra  -8.b		; 80 F8
	brk $F2.b		; 00 F2
	cop $F3.b		; 02 F3
	ora $E1.b,S		; 03 E1
	sta ($72.b,X)		; 81 72
	sta $F9.b,S		; 83 F9
	cop $83.b		; 02 83
	sta $83.b,S		; 83 83
	sta [$87.b]		; 87 87
	sta $0C0F0D.l		; 8F 0D 0F 0C
	ora $8C9F9E.l,X		; 1F 9E 9F 8C
	sta $FF4744.l		; 8F 44 47 FF
	and $CF.b,S		; 23 CF
	bit $D2.b		; 24 D2
	tay		; A8
	mvn $D8,$30		; 54 30 D8
	cpx #$A0.b		; E0 A0
	cpy #$E0.b		; C0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $042F00.l,X		; 3F 00 2F 04
	ldx $BC88.w,Y		; BE 88 BC
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	sbc $FFF3.w		; ED F3 FF
	stz $8CFF.w,X		; 9E FF 8C
	sbc $FF7F8C.l,X		; FF 8C 7F FF
	sbc $731E.w		; ED 1E 73
	cpy $C0FF.w		; CC FF C0
	sbc ($F3.b,S),Y		; F3 F3
	dec $8CDE.w,X		; DE DE 8C
	sty $CCCC.w		; 8C CC CC
	sbc $1E1EFF.l,X		; FF FF 1E 1E
	cpy $E0CC.w		; CC CC E0
	cpx #$DF.b		; E0 DF
	cpx #$FF.b		; E0 FF
	rts		; 60

	sbc $60DF60.l,X		; FF 60 DF 60
	lda $00FFC0.l,X		; BF C0 FF 00
	adc $C0FFC0.l,X		; 7F C0 FF C0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	rts		; 60

	rts		; 60

	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	ora $102D00.l,X		; 1F 00 2D 10
	eor $6DC0.w		; 4D C0 6D
	jsr $0039.w		; 20 39 00
	and $3900.w,Y		; 39 00 39
	php		; 08
	eor ($30.b),Y		; 51 30
	brk $10.b		; 00 10
	cop $32.b		; 02 32
	and ($F2.b)		; 32 F2
	ora ($72.b)		; 12 72
	asl $26.b		; 06 26
	asl $26.b		; 06 26
	asl $2E.b		; 06 2E
	asl $FE7E.w		; 0E 7E FE
	ora ($FF.b,X)		; 01 FF
	ora ($FF.b,X)		; 01 FF
	ora ($FE.b,X)		; 01 FE
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	adc ($00.b),Y		; 71 00
	cmp ($00.b,S),Y		; D3 00
	and $10.b,S		; 23 10
	asl $34.b,X		; 16 34
	eor [$39.b],Y		; 57 39
	tsa		; 3B
	bpl  40.b		; 10 28
	bpl 112.b		; 10 70
	jsr $7E0E.w		; 20 0E 7E
	tsb $0CDC.w		; 0C DC 0C
	bit $3D09.w,X		; 3C 09 3D
	brk $7D.b		; 00 7D
	brk $39.b		; 00 39
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	lda $00BF00.l,X		; BF 00 BF 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $809F00.l,X		; 1F 00 9F 80
	cmp $40CF00.l,X		; DF 00 CF 40
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	rts		; 60

	cpx #$20.b		; E0 20
	cpx #$30.b		; E0 30
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0D.b		; 00 0D
	ora $3F.b,S		; 03 3F
	asl $305E.w		; 0E 5E 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	brk $7E.b		; 00 7E
	cmp $267F44.l,X		; DF 44 7F 26
	tad		; 5B
	rol $4F.b		; 26 4F
	jsr $60AF.w		; 20 AF 60
	ora $811F01.l,X		; 1F 01 1F 81
	cmp $EE2E41.l,X		; DF 41 2E EE
	asl $66.b		; 06 66
	asl $66.b		; 06 66
	bpl 112.b		; 10 70
	bpl -16.b		; 10 F0
	sbc ($E1.b,X)		; E1 E1
	adc ($E1.b,X)		; 61 E1
	and ($E1.b,X)		; 21 E1
	sbc $00FF0E.l,X		; FF 0E FF 00
	tad		; 5B
	inc $F9.b		; E6 F9
	rol $FF.b,X		; 36 FF
	cmp $017F91.l		; CF 91 7F 01
	inc $D601.w,X		; FE 01 D6
	asl $000E.w		; 0E 0E 00
	brk $E6.b		; 00 E6
	inc $37.b		; E6 37
	and [$CF.b],Y		; 37 CF
	cmp $001313.l		; CF 13 13 00
	brk $28.b		; 00 28
	brk $F9.b		; 00 F9
	cop $F9.b		; 02 F9
	cop $F2.b		; 02 F2
	ora $F8.b,S		; 03 F8
	brk $78.b		; 00 78
	bra -17.b		; 80 EF
	beq  -1.b		; F0 FF
	stz $FB.b		; 64 FB
	and [$04.b]		; 27 04
	ora [$04.b]		; 07 04
	ora [$0C.b]		; 07 0C
	ora $C70707.l		; 0F 07 07 C7
	cmp [$F8.b]		; C7 F8
	sed		; F8
	ror $66.b		; 66 66
	and $60C02F.l		; 2F 2F C0 60
	jsr $A080.w		; 20 80 A0
	bra  96.b		; 80 60
	rti		; 40

	sta $0EE0.w,Y		; 99 E0 0E
	ora #$03DF.w		; 09 DF 03
	adc $E00081.l,X		; 7F 81 00 E0
	rti		; 40

	cpx #$40.b		; E0 40
	cpx #$80.b		; E0 80
	cpx #$00.b		; E0 00
	sbc $FFF0.w,Y		; F9 F0 FF
	jsr $C023.w		; 20 23 C0
	cmp ($00.b,X)		; C1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $B0.b		; 00 B0
	cpy #$90.b		; C0 90
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	bcc   0.b		; 90 00
	bra  13.b		; 80 0D
	tsb $0B.b		; 04 0B
	asl $05.b		; 06 05
	cop $05.b		; 02 05
	cop $0A.b		; 02 0A
	asl $38.b		; 06 38
	php		; 08
	asl A		; 0A
	asl $04.b		; 06 04
	cop $02.b		; 02 02
	asl $0E00.w		; 0E 00 0E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	ora ($0F.b,X)		; 01 0F
	ora [$3F.b]		; 07 3F
	ora ($0F.b,X)		; 01 0F
	ora ($07.b,X)		; 01 07
	plx		; FA
	stz $C8A4.w		; 9C A4 C8
	pla		; 68
	cpy #$E8.b		; C0 E8
	rti		; 40

	inx		; E8
	rti		; 40

	inx		; E8
	rti		; 40

	cpx $08.b		; E4 08
	jsr ($C008.w,X)		; FC 08 C0
	dec $DCD0.w,X		; DE D0 DC
	bne -40.b		; D0 D8
	bvc  88.b		; 50 58
	bvc  88.b		; 50 58
	bvc  88.b		; 50 58
	bpl  28.b		; 10 1C
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra -96.b		; 80 A0
	cpy #$D0.b		; C0 D0
	jsr $10B8.w		; 20 B8 10
	stz $0008.w		; 9C 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	clv		; B8
	brk $9C.b		; 00 9C
	stz $28.b,X		; 74 28
	cli		; 58
	bmi  40.b		; 30 28
	bpl  28.b		; 10 1C
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($7800.w)		; 6C 00 78
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $E0DFE0.l,X		; DF E0 DF E0
	adc $E07FE0.l,X		; 7F E0 7F E0
	inc $FE61.w,X		; FE 61 FE
	adc ($FF.b,X)		; 61 FF
	adc ($FF.b,X)		; 61 FF
	adc ($E0.b,X)		; 61 E0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	cpx #$E1.b		; E0 E1
	sbc ($E1.b,X)		; E1 E1
	sbc ($61.b,X)		; E1 61
	adc ($61.b,X)		; 61 61
	adc ($63.b,X)		; 61 63
	adc $BD.b,S		; 63 BD
	adc $BD.b,S		; 63 BD
	adc $ED.b,S		; 63 ED
	and ($EE.b,S),Y		; 33 EE
	and ($FF.b),Y		; 31 FF
	bmi  -2.b		; 30 FE
	and ($7E.b),Y		; 31 7E
	and ($5F.b),Y		; 31 5F
	bmi  99.b		; 30 63
	adc $73.b,S		; 63 73
	adc ($73.b,S),Y		; 73 73
	adc ($33.b,S),Y		; 73 33
	and ($30.b,S),Y		; 33 30
	bmi  49.b		; 30 31
	and ($B1.b),Y		; 31 B1
	lda ($B0.b),Y		; B1 B0
	bcs   0.b		; B0 00
	brk $01.b		; 00 01
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
	bra -128.b		; 80 80
	cpy #$A0.b		; C0 A0
	cpy #$20.b		; C0 20
	rti		; 40

	cpx #$C0.b		; E0 C0
	rts		; 60

	cpy #$F0.b		; C0 F0
	jsr $0010.w		; 20 10 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $10.b		; 00 10
	bvs  32.b		; 70 20
	adc $20.b,S		; 63 20
	adc $381F2F.l,X		; 7F 2F 1F 38
	plp		; 28
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	adc $00.b,S		; 63 00
	adc $003F00.l,X		; 7F 00 3F 00
	sec		; 38
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $F0DD20.l		; AF 20 DD F0
	jmp ($8C98.w,X)		; 7C 98 8C
	clc		; 18
	inc A		; 1A
	asl A		; 0A
	tas		; 1B
	phd		; 0B
	and $351F.w		; 2D 1F 35
	tas		; 1B
	bvc -16.b		; 50 F0
	cop $F2.b		; 02 F2
	ora $FB.b,S		; 03 FB
	ora $9B.b,S		; 03 9B
	ora $1F.b		; 05 1F
	tsb $1F.b		; 04 1F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	bvs  32.b		; 70 20
	eor ($20.b,X)		; 41 20
	lda [$41.b]		; A7 41
	inx		; E8
	mvp $E2,$44		; 44 44 E2
	adc ($E1.b)		; 72 E1
	sta $2C6952.l		; 8F 52 69 2C
	brk $70.b		; 00 70
	brk $61.b		; 00 61
	brk $E7.b		; 00 E7
	ora $EF.b,S		; 03 EF
	ora ($E7.b,X)		; 01 E7
	brk $F3.b		; 00 F3
	jsr $12FE.w		; 20 FE 12
	ror $41FF.w,X		; 7E FF 41
	and $017F81.l,X		; 3F 81 7F 01
	adc $00FF01.l,X		; 7F 01 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $C10100.l,X		; FF 00 01 C1
	eor ($C1.b,X)		; 41 C1
	sta ($81.b,X)		; 81 81
	sta ($81.b,X)		; 81 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($C7.b,X)		; 01 C7
	sta $6C.b,S		; 83 6C
	cmp [$3E.b]		; C7 3E
	sbc $8CFF7D.l		; EF 7D FF 8C
	sbc $61FF92.l,X		; FF 92 FF 61
	sbc [$0C.b],Y		; F7 0C
	and $1001.w,Y		; 39 01 10
	brk $06.b		; 00 06
	asl $6D.b		; 06 6D
	adc $CCCC.w		; 6D CC CC
	stz $619E.w,X		; 9E 9E 61
	adc ($0C.b,X)		; 61 0C
	tsb $E0BF.w		; 0C BF E0
	sbc $20F920.l,X		; FF 20 F9 20
	ldy $FCE0.w,X		; BC E0 FC
	rti		; 40

	inc $FF40.w,X		; FE 40 FF
	bra  -1.b		; 80 FF
	brk $E1.b		; 00 E1
	sbc ($20.b,X)		; E1 20
	jsr $2626.w		; 20 26 26
	sbc $E3.b,S		; E3 E3
	eor $43.b,S		; 43 43
	eor ($41.b,X)		; 41 41
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	sbc $08F7EC.l,X		; FF EC F7 08
	xce		; FB
	asl $1E.b		; 06 1E
	ora $0F.b,S		; 03 0F
	ora ($DF.b,X)		; 01 DF
	cld		; D8
	rtl		; 6B

	ldx $BD.b,Y		; B6 BD
	cmp $EC.b,S		; C3 EC
	cpx $0808.w		; EC 08 08
	asl $06.b		; 06 06
	sbc [$E7.b]		; E7 E7
	sbc ($F3.b,S),Y		; F3 F3
	and ($F9.b,X)		; 21 F9
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	rti		; 40

	bra 104.b		; 80 68
	rti		; 40

	tya		; 98
	jsr $10D8.w		; 20 D8 10
	pha		; 48
	bra -28.b		; 80 E4
	dey		; 88
	sbc ($44.b)		; F2 44
	inc $0013.w		; EE 13 00
	cpy #$80.b		; C0 80
	inx		; E8
	rti		; 40

	sei		; 78
	jsr $B038.w		; 20 38 B0
	clv		; B8
	bne -36.b		; D0 DC
	iny		; C8
	dec $1310.w		; CE 10 13
	ora $03.b		; 05 03
	ora [$03.b]		; 07 03
	phd		; 0B
	asl $0D.b		; 06 0D
	tsb $19.b		; 04 19
	php		; 08
	and $0704.w,Y		; 39 04 07
	cop $07.b		; 02 07
	cop $00.b		; 02 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $0E02.w		; 0E 02 0E
	asl $1E.b		; 06 1E
	cop $3E.b		; 02 3E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	cmp ($64.b)		; D2 64
	cmp $66.b,X		; D5 66
	inc $48.b,X		; F6 48
	sei		; 78
	bne -88.b		; D0 A8
	bne -16.b		; D0 F0
	bra -48.b		; 80 D0
	ldy #$C0.b		; A0 C0
	jsr $6E68.w		; 20 68 6E
	pla		; 68
	adc $C04E40.l		; 6F 40 4E C0
	cld		; D8
	cpy #$D8.b		; C0 D8
	bra -112.b		; 80 90
	bra -80.b		; 80 B0
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $1E.b		; 00 1E
	php		; 08
	and $16.b,S		; 23 16
	rol A		; 2A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $1E.b		; 00 1E
	php		; 08
	and $033614.l,X		; 3F 14 36 03
	brk $10.b		; 00 10
	ora $703019.l		; 0F 19 30 70
	jsr $2060.w		; 20 60 20
	jsr $2670.w		; 20 70 26
	pla		; 68
	ora $76.b,X		; 15 76
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	brk $39.b		; 00 39
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	bpl 126.b		; 10 7E
	php		; 08
	adc $CD88F8.l,X		; 7F F8 88 CD
	sta $F5.b		; 85 F5
	jmp ($1A3F.w)		; 6C 3F 1A
	ora $0202.w,X		; 1D 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	sbc $02CF02.l,X		; FF 02 CF 02
	sbc $003F00.l,X		; FF 00 3F 00
	ora $000200.l,X		; 1F 00 02 00
	brk $00.b		; 00 00
	brk $BB.b		; 00 BB
	.db $62, $95, $88		; 62 95 88
	jmp.w [$7D49]		; DC 49 7D
	and #$295F.w		; 29 5F 29
	rol $7B04.w		; 2E 04 7B
	ora $FE.b,X		; 15 FE
	adc ($04.b,X)		; 61 04
	sbc [$6A.b]		; E7 6A
	xba		; EB
	rol A		; 2A
	xba		; EB
	asl A		; 0A
	rtl		; 6B

	tsb $156D.w		; 0C 6D 15
	and $04.b,X		; 35 04
	adc $00.b,X		; 75 00
	sbc ($03.b,X)		; E1 03
	asl $01.b		; 06 01
	tsb $01.b		; 04 01
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	tsb $07.b		; 04 07
	tsb $0802.w		; 0C 02 08
	tsb $08.b		; 04 08
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	sed		; F8
	asl $B3.b		; 06 B3
	pha		; 48
	stz $FB20.w		; 9C 20 FB
	bpl  36.b		; 10 24
	brk $DF.b		; 00 DF
	bit $3E9F.w,X		; 3C 9F 3E
	sta $D717DF.l,X		; 9F DF 17 D7
	jmp $63CF.w		; 4C CF 63
	sbc $04.b,S		; E3 04
	trb $C3.b		; 14 C3
	stp		; DB
	tsb $0EBD.w		; 0C BD 0E
	ror $3F0F.w,X		; 7E 0F 3F
	cpx $FF33.w		; EC 33 FF
	sec		; 38
	adc $0BDE33.l,X		; 7F 33 DE 0B
	adc $73FF2B.l,X		; 7F 2B FF 73
	sbc $F8FFFB.l,X		; FF FB FF F8
	and ($B1.b,X)		; 21 B1
	jsr $83B8.w		; 20 B8 83
	lda ($08.b,S),Y		; B3 08
	pld		; 2B
	sta ($AB.b,X)		; 81 AB
	brk $73.b		; 00 73
	bmi  -5.b		; 30 FB
	beq  -8.b		; F0 F8
	ldy #$88.b		; A0 88
	jmp.w [$FE40]		; DC 40 FE
	sty $FE.b		; 84 FE
	clv		; B8
	lda $FEFFFE.l,X		; BF FE FF FE
	lda $1AFE.w,X		; BD FE 1A
	ldy $0070.w,X		; BC 70 00
	jsr $8400.w		; 20 00 84
	bra -104.b		; 80 98
	clv		; B8
	stz $BCFE.w		; 9C FE BC
	inc $FE00.w,X		; FE 00 FE
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	and $00.b,S		; 23 00
	jmp $3F4323.l		; 5C 23 43 3F
	adc ($1F.b,X)		; 61 1F
	sty $7B.b		; 84 7B
	ldx $0075.w		; AE 75 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($14.b,X)		; 01 14
	trb $10.b		; 14 10
	bpl  49.b		; 10 31
	and ($40.b),Y		; 31 40
	rti		; 40

	beq   0.b		; F0 00
	pla		; 68
	bcc -12.b		; 90 F4
	pha		; 48
	pea $2CC8.w		; F4 C8 2C
	bmi  84.b		; 30 54
	sed		; F8
	tsb $F8.b		; 04 F8
	ldx #$5C.b		; A2 5C
	brk $00.b		; 00 00
	bcc -112.b		; 90 90
	pla		; 68
	php		; 08
	brk $00.b		; 00 00
	bne  16.b		; D0 10
	tay		; A8
	tay		; A8
	cli		; 58
	cli		; 58
	php		; 08
	php		; 08
	ora [$00.b]		; 07 00
	asl $03.b		; 06 03
	asl $0E03.w		; 0E 03 0E
	ora ($1D.b,X)		; 01 1D
	asl $1F.b		; 06 1F
	tsb $0B.b		; 04 0B
	ora $07.b		; 05 07
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	brk $07.b		; 00 07
	tsb $07.b		; 04 07
	asl $0F.b		; 06 0F
	ora #$090D.w		; 09 0D 09
	ora $00.b		; 05 00
	ora $02.b,S		; 03 02
	nop		; EA
	ora [$DB.b],Y		; 17 DB
	ror $6FDB.w		; 6E DB 6F
	stp		; DB
	adc $FBDD.w		; 6D DD FB
	lda $BDDF.w,X		; BD DF BD
	cmp $5FDCBF.l,X		; DF BF DC 5F
	pha		; 48
	sbc $90FF91.l,X		; FF 91 FF 90
	sbc $04FF92.l,X		; FF 92 FF 04
	sbc $20FF20.l,X		; FF 20 FF 20
	sbc $D021.w,X		; FD 21 D0
	rts		; 60

	beq  64.b		; F0 40
	sei		; 78
	ldy #$F8.b		; A0 F8
	bmi -68.b		; 30 BC
	cli		; 58
	jmp ($0000.w,X)		; 7C 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	ldy #$F0.b		; A0 F0
	bvc 112.b		; 50 70
	rti		; 40

	sei		; 78
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	adc $20.b,S		; 63 20
	adc $34.b,S		; 63 34
	ror $1C.b,X		; 76 1C
	ror $7E0C.w,X		; 7E 0C 7E
	php		; 08
	ply		; 7A
	clc		; 18
	tda		; 7B
	asl $73.b,X		; 16 73
	asl $1E02.w,X		; 1E 02 1E
	cop $08.b		; 02 08
	brk $20.b		; 00 20
	jsr $3030.w		; 20 30 30
	bit $30.b,X		; 34 30
	rol $22.b		; 26 22
	bit $0820.w		; 2C 20 08
	jsl $0E260C.l		; 22 0C 26 0E
	bit $3E.b		; 24 3E
	brk $3E.b		; 00 3E
	trb $083E.w		; 1C 3E 08
	rol $3E08.w,X		; 3E 08 3E
	php		; 08
	trb $1800.w		; 1C 00 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	trb $1C.b		; 14 1C
	trb $1C.b		; 14 1C
	trb $3E.b		; 14 3E
	php		; 08
	rol $3E08.w,X		; 3E 08 3E
	php		; 08
	rol $5A08.w,X		; 3E 08 5A
	bit $1876.w,X		; 3C 76 18
	inc $F620.w,X		; FE 20 F6
	rts		; 60

	trb $1C14.w		; 1C 14 1C
	trb $1C.b		; 14 1C
	trb $1C.b		; 14 1C
	trb $3C.b		; 14 3C
	brk $38.b		; 00 38
	jsr $5070.w		; 20 70 50
	cpx #$80.b		; E0 80
	jsr $6888.w		; 20 88 68
	cpy $CC18.w		; CC 18 CC
	and ($64.b)		; 32 64
	asl $60.b		; 06 60
	dec A		; 3A
	tsb $3F.b		; 04 3F
	trb $1C2F.w		; 1C 2F 1C
	beq -128.b		; F0 80
	bmi   0.b		; 30 00
	bvs  64.b		; 70 40
	trb $3804.w		; 1C 04 38
	jsr $0004.w		; 20 04 00
	asl $1E02.w,X		; 1E 02 1E
	cop $28.b		; 02 28
	.db $62, $28, $62		; 62 28 62
	plp		; 28
	.db $62, $28, $62		; 62 28 62
	trb $1C46.w		; 1C 46 1C
	lsr $10.b		; 46 10
	lsr $10.b		; 46 10
	lsr $1C.b		; 46 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $3C.b		; 04 3C
	tsb $80.b		; 04 80
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	bra  64.b		; 80 40
	bvc -96.b		; 50 A0
	tay		; A8
	bcc -124.b		; 90 84
	tay		; A8
	ldx #$14.b		; A2 14
	lda ($00.b),Y		; B1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$90.b		; E0 90
	cpy #$B8.b		; C0 B8
	cpy #$1C.b		; C0 1C
	cpy #$2E.b		; C0 2E
	cpx #$24.b		; E0 24
	adc [$1C.b]		; 67 1C
	adc $067F06.l,X		; 7F 06 7F 06
	adc $053F06.l,X		; 7F 06 3F 05
	and $1C04.w,X		; 3D 04 1C
	tsb $1C.b		; 04 1C
	inc A		; 1A
	cop $22.b		; 02 22
	jsl $383838.l		; 22 38 38 38
	sec		; 38
	clc		; 18
	clc		; 18
	inc A		; 1A
	clc		; 18
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	ora $062701.l,X		; 1F 01 27 06
	ora $3B6B1B.l		; 0F 1B 6B 3B
	sbc $79.b,S		; E3 79
	cmp [$74.b],Y		; D7 74
	ror $3030.w		; 6E 30 30
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	asl $3B0A.w,X		; 1E 0A 3B
	plp		; 28
	and $007D60.l,X		; 3F 60 7D 00
	jmp ($3000.w,X)		; 7C 00 30
	brk $00.b		; 00 00
	ora $CF0FDF.l		; 0F DF 0F CF
	sta $0F870F.l		; 8F 0F 87 0F
	sta [$17.b],Y		; 97 17
	dec A		; 3A
	asl A		; 0A
	and $7F05.w,X		; 3D 05 7F
	ora ($87.b)		; 12 87
	lda $079F87.l,X		; BF 87 9F 07
	ora $021F07.l,X		; 1F 07 1F 02
	and $150F00.l,X		; 3F 00 0F 15
	ora [$32.b],Y		; 17 32
	jsl $FDF8FD.l		; 22 FD F8 FD
	sed		; F8
	sbc ($F0.b,S),Y		; F3 F0
	cmp $CC.b,S		; C3 CC
	rol $F530.w,X		; 3E 30 F5
	dex		; CA
	jsr ($FB03.w,X)		; FC 03 FB
	tsb $F2.b		; 04 F2
	plx		; FA
	sbc ($FA.b)		; F2 FA
	cpy #$FC.b		; C0 FC
	brk $FC.b		; 00 FC
	and ($F1.b,X)		; 21 F1
	dex		; CA
	cpy #$2B.b		; C0 2B
	plp		; 28
	lda $FCA9.w		; AD A9 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	brk $20.b		; 00 20
	brk $20.b		; 00 20
	bra  32.b		; 80 20
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$C0.b		; C0 C0
	cpy #$40.b		; C0 40
	rti		; 40

	bra   0.b		; 80 00
	lda $9676.w		; AD 76 96
	adc $6A6F92.l		; 6F 92 6F 6A
	ora $25.b,X		; 15 25
	bpl  72.b		; 10 48
	tsa		; 3B
	mvp $42,$3F		; 44 3F 42
	rol $4040.w,X		; 3E 40 40
	plp		; 28
	plp		; 28
	ora $05.b		; 05 05
	ora ($11.b,S),Y		; 13 11
	ora $232700.l		; 0F 00 27 23
	pld		; 2B
	pld		; 2B
	ora $14.b,X		; 15 14
.INDEX 8
	sep #$9C		; E2 9C
	dec A		; 3A
	cpx $CE.b		; E4 CE
	sec		; 38
	inc $C498.w		; EE 98 C4
	clc		; 18
	jmp $2810.w		; 4C 10 28
	bcs  88.b		; B0 58
	bvs   0.b		; 70 00
	brk $C0.b		; 00 C0
	cpy #$30.b		; C0 30
	bmi 112.b		; 30 70
	bpl -16.b		; 10 F0
	bpl -32.b		; 10 E0
	brk $C0.b		; 00 C0
	bra -128.b		; 80 80
	brk $03.b		; 00 03
	ora $0C05.w		; 0D 05 0C
	cop $08.b		; 02 08
	ora $100718.l		; 0F 18 07 10
	asl $1E10.w		; 0E 10 1E
	bmi  13.b		; 30 0D
	and ($05.b,X)		; 21 05
	tsb $02.b		; 04 02
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	brk $FF.b		; 00 FF
	stz $03FD.w		; 9C FD 03
	adc ($7F.b,X)		; 61 7F
	eor ($77.b,X)		; 41 77
	eor ($73.b,X)		; 41 73
	sta ($E3.b,X)		; 81 E3
	bra -29.b		; 80 E3
	brk $C3.b		; 00 C3
	ldy $0220.w,X		; BC 20 02
	cop $92.b		; 02 92
	ora ($A2.b)		; 12 A2
	jsl $4020A0.l		; 22 A0 20 40
	rti		; 40

	eor ($41.b,X)		; 41 41
	sta ($81.b,X)		; 81 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $3C0C.w,X		; 3E 0C 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	cpy $18.b		; C4 18
	dec $1C.b		; C6 1C
	dec $28.b		; C6 28
	.db $62, $0C, $63		; 62 0C 63
	asl $33.b,X		; 16 33
	tsb $31.b		; 04 31
	ora $3819.w		; 0D 19 38
	brk $7C.b		; 00 7C
	mvp $40,$78		; 44 78 40
	trb $3E00.w		; 1C 00 3E
	jsl $1E000C.l		; 22 0C 00 1E
	bpl   6.b		; 10 06
	brk $40.b		; 00 40
	and $2E1D22.l,X		; 3F 22 1D 2E
	ora ($3F.b),Y		; 11 3F
	cop $77.b		; 02 77
	rol A		; 2A
	tad		; 5B
	trb $6F.b		; 14 6F
	jsr $4133.w		; 20 33 41
	ora $0819.w,Y		; 19 19 08
	php		; 08
	brk $00.b		; 00 00
	asl $0E0C.w		; 0E 0C 0E
	bit $16.b		; 24 16
	and ($00.b)		; 32 00
	bmi  13.b		; 30 0D
	ora $E03F.w		; 0D 3F E0
	sbc $0C1F0E.l,X		; FF 0E 1F 0C
	adc $12BE19.l,X		; 7F 19 BE 12
	plx		; FA
	stx $CD.b		; 86 CD
	cop $FD.b		; 02 FD
	brk $90.b		; 00 90
	bcc -17.b		; 90 EF
	sbc ($EE.b,X)		; E1 EE
	cop $DD.b		; 02 DD
	ora $DA.b		; 05 DA
	phd		; 0B
	brk $07.b		; 00 07
	bmi  58.b		; 30 3A
	brk $7A.b		; 00 7A
	nop		; EA
	trb $B5.b		; 14 B5
	lsr A		; 4A
	rtl		; 6B

	sty $F7.b,X		; 94 F7
	php		; 08
	dec $AC20.w,X		; DE 20 AC
	bne -12.b		; D0 F4
	dey		; 88
	cpx #$18.b		; E0 18
	jmp $246E48.l		; 5C 48 6E 24
	ldy $20.b,X		; B4 20
	clv		; B8
	bcs -80.b		; B0 B0
	bcc -48.b		; 90 D0
	brk $C0.b		; 00 C0
	rti		; 40

	bcc -112.b		; 90 90
	beq 120.b		; F0 78
	brk $08.b		; 00 08
	rts		; 60

	php		; 08
	sei		; 78
	tsb $0C78.w		; 0C 78 0C
	bvs   4.b		; 70 04
	bvs   4.b		; 70 04
	bvs   4.b		; 70 04
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $1D.b		; 00 1D
	and ($3A.b,X)		; 21 3A
	adc $1A.b,S		; 63 1A
	eor $3C.b,S		; 43 3C
	eor [$74.b]		; 47 74
	cmp [$30.b]		; C7 30
	stx $68.b		; 86 68
	stx $8C68.w		; 8E 68 8C
	asl $1D00.w,X		; 1E 00 1D
	ora ($3D.b,X)		; 01 3D
	ora ($3A.b,X)		; 01 3A
	cop $3A.b		; 02 3A
	cop $7C.b		; 02 7C
	tsb $74.b		; 04 74
	tsb $70.b		; 04 70
	brk $00.b		; 00 00
	cmp ($00.b,X)		; C1 00
	sta ($00.b,X)		; 81 00
	sta ($00.b,X)		; 81 00
	ora ($00.b,X)		; 01 00
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
	brk $70.b		; 00 70
	tsb $F0.b		; 04 F0
	sty $78.b		; 84 78
	stx $3C.b		; 86 3C
	stx $3C.b		; 86 3C
	stx $7C.b		; 86 7C
	dec $38.b		; C6 38
.INDEX 16
	rep #$18		; C2 18
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	brk $78.b		; 00 78
	brk $FC.b		; 00 FC
	sty $F8.b		; 84 F8
	bra 120.b		; 80 78
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	rti		; 40

	jmp ($7C40.w,X)		; 7C 40 7C
	bpl 124.b		; 10 7C
	clc		; 18
	lsr $3E28.w,X		; 5E 28 3E
	php		; 08
	rol $1D1C.w		; 2E 1C 1D
	asl $1F.b		; 06 1F
	tsb $17.b		; 04 17
	asl A		; 0A
	sec		; 38
	plp		; 28
	sec		; 38
	jsr $143C.w		; 20 3C 14
	trb $1C14.w		; 1C 14 1C
	brk $0E.b		; 00 0E
	php		; 08
	asl $0F0A.w		; 0E 0A 0F
	ora $21.b		; 05 21
	adc $3C07.w		; 6D 07 3C
	rol $7C00.w,X		; 3E 00 7C
	ora $08FF.w,Y		; 19 FF 08
	sbc $40FF4A.l,X		; FF 4A FF 40
	eor $081A04.l		; 4F 04 1A 08
	ora $03.b,S		; 03 03
	ora [$06.b]		; 07 06
	tsa		; 3B
	and ($3A.b,X)		; 21 3A
	bmi  88.b		; 30 58
	bvc   0.b		; 50 00
	rti		; 40

	bit $35.b,X		; 34 35
	ldx $FE40.w,Y		; BE 40 FE
	and ($FD.b)		; 32 FD
	and $FB.b,X		; 35 FB
	ror A		; 6A
	xce		; FB
	dex		; CA
	xba		; EB
	ora ($3B.b)		; 12 3B
	tsb $FD.b		; 04 FD
	asl A		; 0A
	bra -128.b		; 80 80
	clv		; B8
	phb		; 8B
	stz $47.b,X		; 74 47
	ror A		; 6A
	asl $2EE2.w		; 0E E2 2E
	brk $16.b		; 00 16
	cpy #$08E4.w		; C0 E4 08
	nop		; EA
	sbc ($67.b,S),Y		; F3 67
	xce		; FB
	sbc ($7B.b,S),Y		; F3 7B
	sbc ($89.b,S),Y		; F3 89
	lda ($F5.b,S),Y		; B3 F5
	sta $CE.b		; 85 CE
	.db $82, $8F, $01		; 82 8F 01
	ora $6F2104.l,X		; 1F 04 21 6F
	adc ($F7.b,X)		; 61 F7
	ora ($F7.b,X)		; 01 F7
	ora ($F7.b,X)		; 01 F7
	brk $8F.b		; 00 8F
	brk $83.b		; 00 83
	ora $05.b		; 05 05
	tsb $FF08.w		; 0C 08 FF
	inc $FEFF.w,X		; FE FF FE
	jsr ($F0FC.w,X)		; FC FC F0
	sbc ($CF.b,S),Y		; F3 CF
	cpy $B2BD.w		; CC BD B2
	adc $81FE40.l,X		; 7F 40 FE 81
	jsr ($FCFE.w,X)		; FC FE FC
	inc $FFF0.w,X		; FE F0 FF
	cpy #$88FF.w		; C0 FF 88
	jsr ($F032.w,X)		; FC 32 F0
	lsr A		; 4A
	dex		; CA
	plb		; AB
	tax		; AA
	ora $200F36.l		; 0F 36 0F 20
	asl $1C20.w		; 0E 20 1C
	jsr $613D.w		; 20 3D 61
	ora $1E41.w,X		; 1D 41 1E
	eor $3A.b,S		; 43 3A
	eor $16.b,S		; 43 16
	bpl  24.b		; 10 18
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	brk $3D.b		; 00 3D
	ora ($3D.b,X)		; 01 3D
	ora ($FF.b,X)		; 01 FF
	adc ($FA.b),Y		; 71 FA
	asl $82.b		; 06 82
	inc $C680.w		; EE 80 C6
	brk $C6.b		; 00 C6
	ora ($C3.b,X)		; 01 C3
	ora ($83.b,X)		; 01 83
	brk $83.b		; 00 83
	beq -128.b		; F0 80
	ora $04.b		; 05 04
	eor $44.b		; 45 44
	ora $02.b,S		; 03 02
	sta $82.b,S		; 83 82
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	asl $7F.b		; 06 7F
	asl $7F.b		; 06 7F
	asl $3F.b		; 06 3F
	ora $3D.b		; 05 3D
	tsb $1C.b		; 04 1C
	tsb $1C.b		; 04 1C
	ora $0C.b		; 05 0C
	ora $0E.b,S		; 03 0E
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	clc		; 18
	clc		; 18
	inc A		; 1A
	clc		; 18
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	ora $00.b,S		; 03 00
	ora $04.b		; 05 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	rts		; 60

	bra  48.b		; 80 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$0020.w		; E0 20 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	brk $2E.b		; 00 2E
	ora ($27.b),Y		; 11 27
	trb $3F41.w		; 1C 41 3F
	sty $9673.w		; 8C 73 96
	adc #$0000.w		; 69 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phd		; 0B
	php		; 08
	jsl $212122.l		; 22 22 21 21
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	ora $07D900.l		; 0F 00 D9 07
	rol $EED5.w,X		; 3E D5 EE
	cmp ($F5.b),Y		; D1 F5
	nop		; EA
	cmp $FC03F8.l		; CF F8 03 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	cmp $2CC1.w,X		; DD C1 2C
	tsb $0010.w		; 0C 10 00
	bmi  48.b		; 30 30
	cli		; 58
	cli		; 58
	brk $00.b		; 00 00
	rts		; 60

	brk $30.b		; 00 30
	brk $29.b		; 00 29
	bpl -42.b		; 10 D6
	and $FBE5.w,Y		; 39 E5 FB
	brk $FF.b		; 00 FF
	bra 127.b		; 80 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	clc		; 18
	clc		; 18
	adc $63.b,S		; 63 63
	asl $1E1E.w,X		; 1E 1E 1E
	brk $61.b		; 00 61
	asl $7F90.w,X		; 1E 90 7F
	ror $F9.b		; 66 F9
	sta $F00DF0.l		; 8F F0 0D F0
	ora $19E0.w,Y		; 19 E0 19
	cpx #$0000.w		; E0 00 00
	trb $281C.w		; 1C 1C 28
	plp		; 28
	bpl  16.b		; 10 10
	rts		; 60

	rts		; 60

	cpy #$A0C0.w		; C0 C0 A0
	ldy #$4040.w		; A0 40 40
	trb $0333.w		; 1C 33 03
	bmi  61.b		; 30 3D
	cop $3F.b		; 02 3F
	asl $041F.w		; 0E 1F 04
	ora $041F04.l,X		; 1F 04 1F 04
	ora $020E04.l,X		; 1F 04 0E 02
	trb $0210.w		; 1C 10 02
	brk $1E.b		; 00 1E
	bpl  14.b		; 10 0E
	asl A		; 0A
	asl $0E0A.w		; 0E 0A 0E
	asl A		; 0A
	asl $010A.w		; 0E 0A 01
	clc		; 18
	asl $0F01.w,X		; 1E 01 0F
	ora [$0B.b]		; 07 0B
	ora $05.b		; 05 05
	ora $05.b,S		; 03 05
	cop $03.b		; 02 03
	brk $02.b		; 00 02
	ora ($0E.b,X)		; 01 0E
	php		; 08
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora [$02.b]		; 07 02
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C080.w		; C0 80 C0
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	cpy #$40F0.w		; C0 F0 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	cpy #$C040.w		; C0 40 C0
	brk $E0.b		; 00 E0
	ldy #$041F.w		; A0 1F 04
	ora $041F04.l,X		; 1F 04 1F 04
	and $3B1E.w		; 2D 1E 3B
	tsb $107F.w		; 0C 7F 10
	xce		; FB
	bmi -16.b		; 30 F0
	brk $0E.b		; 00 0E
	asl A		; 0A
	asl $0E0A.w		; 0E 0A 0E
	asl A		; 0A
	asl $1C00.w,X		; 1E 00 1C
	bpl  56.b		; 10 38
	plp		; 28
	bvs  64.b		; 70 40
	brk $00.b		; 00 00
	ror $6C01.w,X		; 7E 01 6C
	ora ($67.b)		; 12 67
	php		; 08
	rol $4944.w,X		; 3E 44 49
	brk $77.b		; 00 77
	ora $674F37.l		; 0F 37 4F 67
	ora [$05.b]		; 07 05
	and $13.b,X		; 35 13
	and ($18.b,S),Y		; 33 18
	sec		; 38
	ora ($05.b,X)		; 01 05
	bmi  54.b		; 30 36
	ora $2F.b,S		; 03 2F
	ora $0F.b,S		; 03 0F
	ora ($0F.b,S),Y		; 13 0F
	and $0EFD8C.l,X		; 3F 8C FD 0E
	ora $02F70C.l,X		; 1F 0C F7 02
	ora $1CFF0A.l,X		; 1F 0A FF 1C
	sbc $FEFFBE.l,X		; FF BE FF FE
	iny		; C8
	cpx $EE08.w		; EC 08 EE
	cpx #$02EC.w		; E0 EC 02
	asl A		; 0A
	cpx #$04EA.w		; E0 EA 04
	jmp $FCBE8C.l		; 5C 8C BE FC
	inc $001F.w,X		; FE 1F 00
	tas		; 1B
	ora $0D3B.w		; 0D 3B 0D
	tsa		; 3B
	ora $77.b		; 05 77
	tas		; 1B
	ror $2E13.w,X		; 7E 13 2E
	ora [$1E.b],Y		; 17 1E
	ora [$0D.b]		; 07 0D
	ora $020F.w		; 0D 0F 02
	ora $1A1F12.l,X		; 1F 12 1F 1A
	and $243724.l,X		; 3F 24 37 24
	ora [$00.b],Y		; 17 00
	ora $5CAB08.l		; 0F 08 AB 5C
	ror $6DB9.w		; 6E B9 6D
	ldx $B46F.w,Y		; BE 6F B4
	adc [$EC.b],Y		; 77 EC
	inc $7F.b,X		; F6 7F
	sbc [$7E.b],Y		; F7 7E
	sbc $217D70.l,X		; FF 70 7D 21
	sbc $FE44.w,X		; FD 44 FE
	rti		; 40

	inc $FE4A.w,X		; FE 4A FE
	ora ($FF.b)		; 12 FF
	bra  -1.b		; 80 FF
	sta ($F6.b,X)		; 81 F6
	stx $3A.b		; 86 3A
	eor $7C.b,S		; 43 7C
	cmp [$74.b]		; C7 74
	cmp [$34.b]		; C7 34
	stx $38.b		; 86 38
	stx $8E78.w		; 8E 78 8E
	pla		; 68
	sty $8C60.w		; 8C 60 8C
	bit $3A00.w,X		; 3C 00 3A
	cop $3A.b		; 02 3A
	cop $78.b		; 02 78
	brk $74.b		; 00 74
	tsb $74.b		; 04 74
	tsb $70.b		; 04 70
	brk $F8.b		; 00 F8
	dey		; 88
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
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$4030.w		; E0 30 40
	clc		; 18
	bvs  24.b		; 70 18
	ldy #$3888.w		; A0 88 38
	sty $C410.w		; 8C 10 C4
	bit $1866.w		; 2C 66 18
	adc ($C0.b)		; 72 C0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	bra 120.b		; 80 78
	rti		; 40

	clc		; 18
	brk $2C.b		; 00 2C
	jsr $2ADF.w		; 20 DF 2A
	adc $17.b		; 65 17
	adc #$211E.w		; 69 1E 21
	tas		; 1B
	phd		; 0B
	clc		; 18
	brk $16.b		; 00 16
	php		; 08
	ora $000F04.l,X		; 1F 04 0F 00
	brk $1A.b		; 00 1A
	ora ($14.b)		; 12 14
	trb $06.b		; 14 06
	cop $07.b		; 02 07
	brk $0B.b		; 00 0B
	cop $07.b		; 02 07
	ora [$03.b]		; 07 03
	ora $82.b,S		; 03 82
	jmp ($3C42.w,X)		; 7C 42 3C
	dec A		; 3A
	sty $CA.b		; 84 CA
	bit $CC.b		; 24 CC
	jsr $2894.w		; 20 94 28
	bcc  56.b		; 90 38
	bit $78.b,X		; 34 78
	tsb $800C.w		; 0C 0C 80
	brk $C0.b		; 00 C0
	bra -16.b		; 80 F0
	jsr $20F0.w		; 20 F0 20
	cpx #$C020.w		; E0 20 C0
	brk $C8.b		; 00 C8
	pha		; 48
	cpx #$9C1F.w		; E0 1F 9C
	adc $E1.b,S		; 63 E1
	asl $007F.w,X		; 1E 7F 00
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi -64.b		; 30 C0
	rts		; 60

	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
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
	brk $38.b		; 00 38
	adc $20.b,S		; 63 20
	.db $62, $34, $76		; 62 34 76
	trb $0C7E.w		; 1C 7E 0C
	ror $7B08.w,X		; 7E 08 7B
	asl A		; 0A
	tsa		; 3B
	php		; 08
	and $021E.w,Y		; 39 1E 02
	trb $0800.w		; 1C 00 08
	brk $20.b		; 00 20
	jsr $3030.w		; 20 30 30
	rol $32.b,X		; 36 32
	trb $10.b		; 14 10
	asl $10.b,X		; 16 10
	jmp ($5A18.w,X)		; 7C 18 5A
	bit $083E.w		; 2C 3E 08
	and $1F1E.w		; 2D 1E 1F
	tsb $1F.b		; 04 1F
	tsb $1E.b		; 04 1E
	tsb $0E.b		; 04 0E
	brk $38.b		; 00 38
	jsr $103C.w		; 20 3C 10
	trb $1E14.w		; 1C 14 1E
	brk $0C.b		; 00 0C
	php		; 08
	tsb $0C08.w		; 0C 08 0C
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C080.w		; C0 80 C0
	bra  64.b		; 80 40
	bra -128.b		; 80 80
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
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	cpy #$3080.w		; C0 80 30
	rti		; 40

	clc		; 18
	bcs -124.b		; B0 84
	pha		; 48
	rep #$00		; C2 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	bpl 120.b		; 10 78
	brk $BC.b		; 00 BC
	bra  23.b		; 80 17
	beq  -1.b		; F0 FF
	ora ($FF.b,X)		; 01 FF
	inc $FFAF.w		; EE AF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	inc $EF.b		; E6 EF
	sbc $202800.l,X		; FF 00 28 20
	ora ($00.b,X)		; 01 00
	inc $EE.b		; E6 EE
	and [$FF.b]		; 27 FF
	ror $20FF.w		; 6E FF 20
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $E0.b		; 00 E0
	bpl -128.b		; 10 80
	pha		; 48
	rti		; 40

	dey		; 88
	bmi -56.b		; 30 C8
	bne  32.b		; D0 20
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	bcs  48.b		; B0 30
	cpy #$6010.w		; C0 10 60
	rti		; 40

	tay		; A8
	bvc -44.b		; 50 D4
	plp		; 28
	ldy $DC50.w		; AC 50 DC
	jsr $8078.w		; 20 78 80
	bcs  64.b		; B0 40
	bne  32.b		; D0 20
	ldy #$7070.w		; A0 70 70
	jsr $90B8.w		; 20 B8 90
	bne -128.b		; D0 80
	cpx #$C0C0.w		; E0 C0 C0
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	cpx #$C0F0.w		; E0 F0 C0
	clc		; 18
	beq  24.b		; F0 18
	cpx #$F008.w		; E0 08 F0
	tsb $0CF8.w		; 0C F8 0C
	bvs   4.b		; 70 04
	sei		; 78
	tsb $00.b		; 04 00
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	sty $38.b		; 84 38
	stx $3C.b		; 86 3C
	stx $58.b		; 86 58
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
.ACCU 8
	sep #$2C		; E2 2C
	sbc $12.b,S		; E3 12
	adc ($1E.b,S),Y		; 73 1E
	adc $FC0078.l,X		; 7F 78 00 FC
	sty $F8.b		; 84 F8
	bra  60.b		; 80 3C
	brk $5C.b		; 00 5C
	rti		; 40

	lsr $2C42.w,X		; 5E 42 2C
	jsr $2020.w		; 20 20 20
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	phd		; 0B
	ora [$1A.b]		; 07 1A
	asl $0E1A.w		; 0E 1A 0E
	ora $0D.b,X		; 15 0D
	phd		; 0B
	tsb $06.b		; 04 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora [$0A.b]		; 07 0A
	ora $000F0A.l		; 0F 0A 0F 00
	ora $000400.l		; 0F 00 04 00
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
	brk $80.b		; 00 80
	brk $9C.b		; 00 9C
	brk $EE.b		; 00 EE
	bpl -110.b		; 10 92
	rts		; 60

	jsr $C0C0.w		; 20 C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $4040.w		; 20 40 40
	brk $00.b		; 00 00
	plp		; 28
	inc $2C.b		; E6 2C
	ror $28.b		; 66 28
	.db $62, $2C, $62		; 62 2C 62
	bit $0C62.w		; 2C 62 0C
	.db $62, $0C, $22		; 62 0C 22
	tsb $5C22.w		; 0C 22 5C
	mvp $00,$18		; 44 18 00
	trb $1C00.w		; 1C 00 1C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	jsr $001C.w		; 20 1C 00
	trb $1600.w		; 1C 00 16
	bmi  22.b		; 30 16
	bmi  23.b		; 30 17
	and ($17.b),Y		; 31 17
	and ($17.b),Y		; 31 17
	and ($17.b),Y		; 31 17
	and ($10.b),Y		; 31 10
	and ($0E.b),Y		; 31 0E
	and $0F000F.l,X		; 3F 0F 00 0F
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	ora ($11.b,X)		; 01 11
	ora ($05.b),Y		; 11 05
	sty $8C01.w		; 8C 01 8C
	cop $8E.b		; 02 8E
	cop $86.b		; 02 86
	ora ($87.b,X)		; 01 87
	brk $87.b		; 00 87
	brk $83.b		; 00 83
	brk $83.b		; 00 83
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora $11.b		; 05 11
	asl A		; 0A
	and $74.b,S		; 23 74
	ora [$B9.b]		; 07 B9
	lsr $FD.b,X		; 56 FD
	brk $FD.b		; 00 FD
	brk $DA.b		; 00 DA
	bit $7DBE.w,X		; 3C BE 7D
	asl $1D00.w		; 0E 00 1D
	ora ($0A.b,X)		; 01 0A
	cop $70.b		; 02 70
	jsr $0A0A.w		; 20 0A 0A
	.db $42, $42		; 42 42
	brk $3D.b		; 00 3D
	clc		; 18
	adc $CC3B.w,X		; 7D 3B CC
	inc A		; 1A
	ldy $409C.w,X		; BC 9C 40
	cmp ($60.b,S),Y		; D3 60
	sei		; 78
	sbc ($7F.b,X)		; E1 7F
	cpx #$FF7F.w		; E0 7F FF
	and $8B803F.l,X		; 3F 3F 80 8B
	ora #$7B.b		; 09 7B
	ora $63.b,S		; 03 63
	tsb $076C.w		; 0C 6C 07
	sbc $3FE020.l		; EF 20 E0 3F
	sbc $BFFF0F.l,X		; FF 0F FF BF
	brk $3D.b		; 00 3D
	bne 121.b		; D0 79
	trb $F2.b		; 14 F2
	brk $AE.b		; 00 AE
	bpl -29.b		; 10 E3
	cmp ($FF.b,X)		; C1 FF
	cmp $FB.b,S		; C3 FB
	cmp [$40.b]		; C7 40
	dec $D2.b		; C6 D2
	dec $B6.b,X		; D6 B6
	ldx $0C.b		; A6 0C
	ora $5110.w		; 0D 10 51
	trb $83DD.w		; 1C DD 83
	stp		; DB
	sta ($C7.b,X)		; 81 C7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$F080.w		; C0 80 F0
	cop $01.b		; 02 01
	.db $42, $01		; 42 01
	mvp $64,$03		; 44 03 64
	ora $58.b,S		; 03 58
	and [$40.b]		; 27 40
	and $111F20.l,X		; 3F 20 1F 11
	asl $0000.w		; 0E 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	and $DC.b,S		; 23 DC
	adc $00CF80.l,X		; 7F 80 CF 00
	bra   0.b		; 80 00
	sta $F8F800.l,X		; 9F 00 F8 F8
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E7.b		; 00 E7
	trb $1FEF.w		; 1C EF 1F
	dec $CC3F.w		; CE 3F CC
	and [$FA.b],Y		; 37 FA
	ora $CF.b		; 05 CF
	jsr $2F44.w		; 20 44 2F
	xba		; EB
	clc		; 18
	phd		; 0B
	php		; 08
	bpl  16.b		; 10 10
	ora ($11.b),Y		; 11 11
	ora ($12.b)		; 12 12
	tsb $04.b		; 04 04
	bmi  32.b		; 30 20
	dec A		; 3A
	rol A		; 2A
	tsb $00.b		; 04 00
	iny		; C8
	beq -28.b		; F0 E4
	clv		; B8
	pei ($B8.b)		; D4 B8
	lda ($DC.b)		; B2 DC
	adc ($9E.b,X)		; 61 9E
	eor $AA.b,X		; 55 AA
	dec $68.b,X		; D6 68
	rol $20E0.w,X		; 3E E0 20
	jsr $1050.w		; 20 50 10
	pla		; 68
	plp		; 28
	jmp $9A4C.w		; 4C 4C 9A
	txs		; 9A
	rol A		; 2A
	rol A		; 2A
	jsr $4020.w		; 20 20 40
	rti		; 40

	sbc [$74.b],Y		; F7 74
	sta [$54.b]		; 87 54
	adc [$09.b],Y		; 77 09
	adc $186705.l,X		; 7F 05 67 18
	ora $1F.b,S		; 03 1F
	tsb $1C.b		; 04 1C
	ora $1C.b		; 05 1C
	eor $7D.b,X		; 55 7D
	ora $7D.b		; 05 7D
	ora #$00.b		; 09 00
	ora $00.b		; 05 00
	php		; 08
	php		; 08
	tsb $0B0C.w		; 0C 0C 0B
	php		; 08
	phd		; 0B
	php		; 08
	tyx		; BB
	cmp $BB.b,X		; D5 BB
	cmp $BADD.w,X		; DD DD BA
	cmp $84FCA8.l,X		; DF A8 FC 84
	xce		; FB
	php		; 08
	eor $6C.b,X		; 55 6C
	cmp $2C.b,X		; D5 2C
	sbc $22FF2A.l,X		; FF 2A FF 22
	sbc $50F845.l,X		; FF 45 F8 50
	cmp $40.b,S		; C3 40
	ora [$00.b]		; 07 00
	plb		; AB
	plp		; 28
	xba		; EB
	plp		; 28
	ora $083F08.l,X		; 1F 08 3F 08
	rol $3E10.w,X		; 3E 10 3E
	bpl 126.b		; 10 7E
	jsr $20F8.w		; 20 F8 20
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	tsb $1C04.w		; 0C 04 1C
	trb $18.b		; 14 18
	php		; 08
	clc		; 18
	php		; 08
	bmi  16.b		; 30 10
	bvs  80.b		; 70 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inx		; E8
	bmi  -8.b		; 30 F8
	jsr $50BC.w		; 20 BC 50
	phx		; DA
	bit $083E.w		; 2C 3E 08
	ora $000F04.l,X		; 1F 04 0F 00
	brk $00.b		; 00 00
	bvs  64.b		; 70 40
	bvs  80.b		; 70 50
	sei		; 78
	plp		; 28
	bit $1C10.w,X		; 3C 10 1C
	trb $0E.b		; 14 0E
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1F2600.l,X		; 1F 00 26 1F
	eor ($3F.b,X)		; 41 3F
	cpy #$007F.w		; C0 7F 00
	adc $03FF00.l,X		; 7F 00 FF 03
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	ora $3E19.w,Y		; 19 19 3E
	rol $2121.w,X		; 3E 21 21
	dec $E05E.w,X		; DE 5E E0
	cpx #$C0C0.w		; E0 C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra  96.b		; 80 60
	bra -48.b		; 80 D0
	rti		; 40

	jsr ($CB00.w,X)		; FC 00 CB
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	rts		; 60

	brk $40.b		; 00 40
	rti		; 40

	trb $14.b		; 14 14
	asl $3F.b		; 06 3F
	asl $3F.b		; 06 3F
	asl $1C3F.w		; 0E 3F 1C
	adc $247714.l,X		; 7F 14 77 24
	ror $18.b		; 66 18
	dec $CE68.w		; CE 68 CE
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	bpl  16.b		; 10 10
	jsl $222A22.l		; 22 22 2A 22
	clc		; 18
	brk $74.b		; 00 74
	mvp $04,$34		; 44 34 04
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
	lda $3D5A7C.l,X		; BF 7C 5A 3D
	phy		; 5A
	and $1D3B.w,X		; 3D 3B 1D
	and $2F1E.w		; 2D 1E 2F
	asl $1F3F.w,X		; 1E 3F 1F
	and $181F.w,X		; 3D 1F 18
	jmp ($3C19.w,X)		; 7C 19 3C
	ora #$3C.b		; 09 3C
	ora #$1C.b		; 09 1C
	php		; 08
	asl $1E08.w,X		; 1E 08 1E
	asl $1C1F.w		; 0E 1F 1C
	ora $F7CF4F.l,X		; 1F 4F CF F7
	and [$FA.b],Y		; 37 FA
	txa		; 8A
	eor $A7A5.w,X		; 5D A5 A7
	phy		; 5A
	lda $76AD71.l		; AF 71 AD 76
	sbc $0736.w		; ED 36 07
	sbc $883F12.l,X		; FF 12 3F 88
	ora $7A07A5.l		; 0F A5 07 7A
	jsl $7F0C7D.l		; 22 7D 0C 7F
	ora #$7F.b		; 09 7F
	eor #$86.b		; 49 86
	sta ($01.b,X)		; 81 01
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	brk $B0.b		; 00 B0
	rti		; 40

	jsr ($DA00.w,X)		; FC 00 DA
	ldy $ED.b		; A4 ED
	sta ($00.b)		; 92 00
	cmp ($00.b,X)		; C1 00
	cpy #$8000.w		; C0 00 80
	rti		; 40

	rti		; 40

	rts		; 60

	jsr $B0B0.w		; 20 B0 B0
	ldy $DE18.w,X		; BC 18 DE
	jmp $F0F0.w		; 4C F0 F0
	jmp ($AE7C.w,X)		; 7C 7C AE
	.db $62, $6E, $34		; 62 6E 34
	and $001212.l,X		; 3F 12 12 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	jsr ($FE3C.w,X)		; FC 3C FE
	jsl $350073.l		; 22 73 00 35
	bpl  18.b		; 10 12
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0000.w		; 0E 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	tsb $02.b		; 04 02
	php		; 08
	ora $11.b		; 05 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $6800.w		; 0E 00 68
	ora [$FF.b],Y		; 17 FF
	stz $9F.b		; 64 9F
	sta ($CF.b,S),Y		; 93 CF
	rtl		; 6B

	sbc [$29.b]		; E7 29
	adc $D8A550.l,X		; 7F 50 A5 D8
	asl $E8.b		; 06 E8
	ora $6B2F08.l,X		; 1F 08 2F 6B
	ora [$F4.b],Y		; 17 F4
	eor $78.b,S		; 43 78
	lda $3A.b,S		; A3 3A
	sta ($11.b,X)		; 81 11
	.db $42, $56		; 42 56
	sta ($B7.b,X)		; 81 B7
	plb		; AB
	clc		; 18
	plb		; AB
	sec		; 38
	ldy $D73F.w		; AC 3F D7
	sta $FEBFE0.l,X		; 9F E0 BF FE
	tay		; A8
	inc $DEA8.w,X		; FE A8 DE
	jsr $1057.w		; 20 57 10
	eor [$00.b]		; 47 00
	eor $03.b,S		; 43 03
	ldy #$9000.w		; A0 00 90
	bpl -116.b		; 10 8C
	tsb $8C.b		; 04 8C
	tsb $20.b		; 04 20
	jsr $942A.w		; 20 2A 94
	sty $20.b		; 84 20
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C080.w		; C0 80 C0
	brk $C0.b		; 00 C0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0C.b		; 05 0C
	ora $0C.b		; 05 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	sbc $2C.b,X		; F5 2C
.ACCU 8
.INDEX 8
	sep #$3E		; E2 3E
.INDEX 16
	rep #$1E		; C2 1E
.INDEX 16
	rep #$1E		; C2 1E
	cmp ($17.b,X)		; C1 17
	cmp ($17.b,X)		; C1 17
	cpy #$C013.w		; C0 13 C0
	ora ($CB.b,S),Y		; 13 CB
	php		; 08
	cmp $04.b		; C5 04
	sbc $04.b		; E5 04
	sbc $04.b		; E5 04
	sep #$02		; E2 02
	sep #$02		; E2 02
	sbc ($01.b,X)		; E1 01
	sbc ($01.b,X)		; E1 01
	sec		; 38
	sty $C470.w		; 8C 70 C4
	clc		; 18
	cpy $3C.b		; C4 3C
	ror $08.b		; 66 08
	.db $62, $14, $32		; 62 14 32
	asl $033B.w		; 0E 3B 03
	inc A		; 1A
	beq -128.b		; F0 80
	sec		; 38
	brk $78.b		; 00 78
	rti		; 40

	clc		; 18
	brk $3C.b		; 00 3C
	jsr $000C.w		; 20 0C 00
	trb $10.b		; 14 10
	tsb $3F08.w		; 0C 08 3F
	bpl  63.b		; 10 3F
	tsb $083E.w		; 0C 3E 08
	dec A		; 3A
	tsb $143A.w		; 0C 3A 14
	jmp ($7410.w,X)		; 7C 10 74
	clc		; 18
	stz $28.b,X		; 74 28
	bpl   0.b		; 10 00
	asl $1C12.w,X		; 1E 12 1C
	trb $1C.b		; 14 1C
	bpl  28.b		; 10 1C
	php		; 08
	sec		; 38
	plp		; 28
	sec		; 38
	jsr $1038.w		; 20 38 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	tsb $1700.w		; 0C 00 17
	tsb $0F13.w		; 0C 13 0F
	php		; 08
	ora [$10.b]		; 07 10
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	tsb $04.b		; 04 04
	ora $03.b,S		; 03 03
	tsb $04.b		; 04 04
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	cpy #$C030.w		; C0 30 C0
	bmi  32.b		; 30 20
	bmi -32.b		; 30 E0
	beq  32.b		; F0 20
	sed		; F8
	bmi  -8.b		; 30 F8
	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	cpy #$0000.w		; C0 00 00
	brk $D0.b		; 00 D0
	bne -64.b		; D0 C0
	cpy #$EC20.w		; C0 20 EC
	plp		; 28
	cpx $E604.w		; EC 04 E6
	bpl 114.b		; 10 72
	asl $73.b,X		; 16 73
	trb $31.b		; 14 31
	ora [$31.b]		; 07 31
	asl $D818.w		; 0E 18 D8
	iny		; C8
	bne -64.b		; D0 C0
	sei		; 78
	rts		; 60

	bit $2C20.w		; 2C 20 2C
	jsr $000E.w		; 20 0E 00
	asl $0710.w,X		; 1E 10 07
	brk $CC.b		; 00 CC
	bmi  -8.b		; 30 F8
	bra  -8.b		; 80 F8
	brk $10.b		; 00 10
	cpx #$6040.w		; E0 40 60
	bra  32.b		; 80 20
	cpx #$C030.w		; E0 30 C0
	bpl -80.b		; 10 B0
	bra -64.b		; 80 C0
	rti		; 40

	brk $00.b		; 00 00
	cpy #$80C0.w		; C0 C0 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	bpl -32.b		; 10 E0
	bpl -16.b		; 10 F0
	clc		; 18
	cpx #$6008.w		; E0 08 60
	php		; 08
	bvs   8.b		; 70 08
	bvs  12.b		; 70 0C
	clv		; B8
	sty $00E0.w		; 8C E0 00
	cpx #$E000.w		; E0 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	bvs   0.b		; 70 00
	php		; 08
	and $1C.b,S		; 23 1C
	and [$1C.b]		; 27 1C
	and [$18.b]		; 27 18
	rol $10.b		; 26 10
	ror $30.b		; 66 30
	ror $58.b		; 66 58
	tsb $086C.w		; 0C 6C 08
	asl $1A02.w,X		; 1E 02 1A
	cop $1A.b		; 02 1A
	cop $1C.b		; 02 1C
	tsb $3C.b		; 04 3C
	bit $1C.b		; 24 1C
	tsb $30.b		; 04 30
	brk $30.b		; 00 30
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	sec		; 38
	jmp ($5A08.w,X)		; 7C 08 5A
	bit $083E.w		; 2C 3E 08
	rol $1D14.w		; 2E 14 1D
	asl $17.b		; 06 17
	tsb $0808.w		; 0C 08 08
	sei		; 78
	rti		; 40

	sec		; 38
	bmi  60.b		; 30 3C
	bpl  28.b		; 10 1C
	trb $1C.b		; 14 1C
	php		; 08
	asl $0E08.w		; 0E 08 0E
	cop $3E.b		; 02 3E
	sbc $2C.b,S		; E3 2C
	adc ($11.b,X)		; 61 11
	adc ($0F.b),Y		; 71 0F
	and $011F01.l,X		; 3F 01 1F 01
	ora $010F01.l,X		; 1F 01 0F 01
	ora [$5C.b]		; 07 5C
	rti		; 40

	ora $000E01.l,X		; 1F 01 0E 00
	bpl  16.b		; 10 10
	asl $060E.w		; 0E 0E 06
	asl $06.b		; 06 06
	asl $02.b		; 06 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C080.w		; C0 80 C0
	bra -32.b		; 80 E0
	rti		; 40

	rts		; 60

	jsr $0030.w		; 20 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	rti		; 40

	bra   0.b		; 80 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0C.b		; 00 0C
	ora $10.b,S		; 03 10
	ora $2E1F20.l		; 0F 20 1F 2E
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $04.b,S		; 03 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	brk $0A.b		; 00 0A
	tsb $89.b		; 04 89
	asl $48.b		; 06 48
	sta [$24.b]		; 87 24
	cmp $1E.b,S		; C3 1E
	sbc ($00.b,X)		; E1 00
	sbc $000000.l,X		; FF 00 00 00
	brk $04.b		; 00 04
	tsb $06.b		; 04 06
	asl $83.b		; 06 83
	sta $40.b,S		; 83 40
	rti		; 40

	and ($21.b,X)		; 21 21
	and ($32.b)		; 32 32
	adc $76FA.w		; 6D FA 76
	sbc $E07F.w		; ED 7F E0
	sbc [$9E.b]		; E7 9E
	lda $AF61.w		; AD 61 AF
	adc ($2E.b,X)		; 61 2E
	cpx #$F017.w		; E0 17 F0
	sbc $12FF05.l,X		; FF 05 FF 12
	cpx #$9800.w		; E0 00 98
	clc		; 18
	lsr $5E40.w,X		; 5E 40 5E
	rti		; 40

	eor $202F40.l,X		; 5F 40 2F 20
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	bra -128.b		; 80 80
	cpy #$4000.w		; C0 00 40
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sta $A24F46.l,X		; 9F 46 4F A2
	cmp [$62.b],Y		; D7 62
	txy		; 9B
	cpx #$CAB1.w		; E0 B1 CA
	sbc ($05.b,S),Y		; F3 05
	and [$01.b],Y		; 37 01
	sta $680E00.l		; 8F 00 0E 68
	asl $94.b,X		; 16 94
	asl A		; 0A
	cli		; 58
	tsb $DC.b		; 04 DC
	stx $0DBE.w		; 8E BE 0D
	and $CACB.w,X		; 3D CB CA
	bvs -16.b		; 70 F0
	ldy $AE62.w		; AC 62 AE
	sbc ($50.b,X)		; E1 50
	and $3EE0.w,X		; 3D E0 3E
	cpx $58.b		; E4 58
	sed		; F8
	brk $F0.b		; 00 F0
	brk $20.b		; 00 20
	brk $5F.b		; 00 5F
	.db $42, $1F		; 42 1F
	ora ($8E.b,X)		; 01 8E
	tsb $00A0.w		; 0C A0 00
	sei		; 78
	jsr $0000.w		; 20 00 00
	brk $60.b		; 00 60
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora $03.b,S		; 03 03
	ora $07.b,S		; 03 07
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora [$03.b]		; 07 03
	ora [$03.b]		; 07 03
	ora $94230A.l		; 0F 0A 23 94
	eor [$E9.b]		; 47 E9
	asl $5FF1.w		; 0E F1 5F
	sbc ($8D.b),Y		; F1 8D
	jsr ($F706.w,X)		; FC 06 F7
	stx $CEB7.w		; 8E B7 CE
	ora $3A01.w,X		; 1D 01 3A
	cop $B4.b		; 02 B4
	sty $48.b		; 84 48
	phd		; 0B
	ldy #$4027.w		; A0 27 40
	eor [$00.b]		; 47 00
	stx $CE02.w		; 8E 02 CE
	bmi  -2.b		; 30 FE
	bmi 126.b		; 30 7E
	bpl 126.b		; 10 7E
	trb $147E.w		; 1C 7E 14
	ror $18.b,X		; 76 18
	and ($1C.b,S),Y		; 33 1C
	and ($1E.b,S),Y		; 33 1E
	and ($4C.b,S),Y		; 33 4C
	jmp $0C0C.w		; 4C 0C 0C
	bit $202C.w		; 2C 2C 20
	jsr $2028.w		; 20 28 20
	asl $0E02.w		; 0E 02 0E
	cop $0C.b		; 02 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	beq  32.b		; F0 20
	bcs  64.b		; B0 40
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	asl $1C33.w,X		; 1E 33 1C
	and ($04.b),Y		; 31 04
	and ($04.b),Y		; 31 04
	and ($04.b),Y		; 31 04
	and ($0C.b),Y		; 31 0C
	ora $190C.w,Y		; 19 0C 19
	ora $0C18.w		; 0D 18 0C
	brk $0E.b		; 00 0E
	brk $1E.b		; 00 1E
	bpl  30.b		; 10 1E
	bpl  30.b		; 10 1E
	bpl   6.b		; 10 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	trb $083E.w		; 1C 3E 08
	rol $3E08.w,X		; 3E 08 3E
	php		; 08
	asl $1E08.w,X		; 1E 08 1E
	php		; 08
	ora $000A.w,X		; 1D 0A 00
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	trb $1C.b		; 14 1C
	trb $1C.b		; 14 1C
	trb $0C.b		; 14 0C
	tsb $0C.b		; 04 0C
	tsb $0E.b		; 04 0E
	tsb $1D.b		; 04 1D
	asl A		; 0A
	ora $1D0A.w,X		; 1D 0A 1D
	asl A		; 0A
	ora $081F08.l,X		; 1F 08 1F 08
	asl $1E08.w,X		; 1E 08 1E
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	tsb $0E.b		; 04 0E
	tsb $0E.b		; 04 0E
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	tsb $0000.w		; 0C 00 00
	beq -32.b		; F0 E0
	sei		; 78
	ldy #$70B8.w		; A0 B8 70
	ldy $5C50.w,X		; BC 50 5C
	sec		; 38
	rol $2E08.w,X		; 3E 08 2E
	trb $17.b		; 14 17
	tsb $00E0.w		; 0C E0 00
	beq  80.b		; F0 50
	bvs   0.b		; 70 00
	sei		; 78
	plp		; 28
	sec		; 38
	brk $1C.b		; 00 1C
	trb $1C.b		; 14 1C
	php		; 08
	asl $0102.w		; 0E 02 01
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	clc		; 18
	bvs  12.b		; 70 0C
	bcs -124.b		; B0 84
	jmp $E238C6.l		; 5C C6 38 E2
	tsb $1661.w		; 0C 61 16
	and ($0A.b),Y		; 31 0A
	sec		; 38
	cpx #$F800.w		; E0 00 F8
	php		; 08
	sei		; 78
	brk $B8.b		; 00 B8
	bra  92.b		; 80 5C
	rti		; 40

	rol $0E20.w,X		; 3E 20 0E
	brk $17.b		; 00 17
	bpl  81.b		; 10 51
	jsr $0060.w		; 20 60 00
	rts		; 60

	brk $20.b		; 00 20
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
	sbc $807F80.l,X		; FF 80 7F 80
	adc $3F1E61.l,X		; 7F 61 1E 3F
	brk $CF.b		; 00 CF
	bmi  48.b		; 30 30
	ora $1F000F.l		; 0F 0F 00 1F
	ora $000C0C.l,X		; 1F 0C 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $17.b		; 00 17
	beq  75.b		; F0 4B
	clv		; B8
	phd		; 0B
	clv		; B8
	ora $9C.b		; 05 9C
	ora $9C.b		; 05 9C
	cop $8E.b		; 02 8E
	brk $C6.b		; 00 C6
	ora ($C3.b,X)		; 01 C3
	and $101720.l		; 2F 20 17 10
	ora [$10.b],Y		; 17 10
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	ora $04.b		; 05 04
	sta $82.b,S		; 83 82
	bra -128.b		; 80 80
	cpy #$8060.w		; C0 60 80
	jsr $30A0.w		; 20 A0 30
	cpy #$C010.w		; C0 10 C0
	bpl -32.b		; 10 E0
	clc		; 18
	cpx #$7008.w		; E0 08 70
	tsb $0080.w		; 0C 80 00
	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bpl -16.b		; 10 F0
	brk $F8.b		; 00 F8
	php		; 08
	sbc $FC08.w,X		; FD 08 FC
	sed		; F8
	sbc [$F8.b],Y		; F7 F8
	sbc $E0.b,S		; E3 E0
	bcc -104.b		; 90 98
	jmp ($FE60.w,X)		; 7C 60 FE
	bra  -1.b		; 80 FF
	rti		; 40

	cop $0A.b		; 02 0A
	sbc ($FB.b,S),Y		; F3 FB
	cpx #$80FB.w		; E0 FB 80
	jsr ($FC00.w,X)		; FC 00 FC
	rts		; 60

	cpx #$9494.w		; E0 94 94
	ror A		; 6A
	rol A		; 2A
	beq  32.b		; F0 20
	sei		; 78
	bmi  -1.b		; 30 FF
	sei		; 78
	lda $1E6D7F.l,X		; BF 7F 6D 1E
	ora $010706.l,X		; 1F 06 07 01
	ora ($00.b,X)		; 01 00
	brk $20.b		; 00 20
	ldy #$30B0.w		; A0 B0 30
	sei		; 78
	ora [$7F.b]		; 07 7F
	brk $1E.b		; 00 1E
	cop $06.b		; 02 06
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	asl $07.b		; 06 07
	ora [$0E.b]		; 07 0E
	ora $0F0E.w		; 0D 0E 0F
	trb $1C1B.w		; 1C 1B 1C
	tsa		; 3B
	bit $687C.w,X		; 3C 7C 68
	cop $0F.b		; 02 0F
	asl $0F.b		; 06 0F
	tsb $1E.b		; 04 1E
	tsb $1E.b		; 04 1E
	php		; 08
	bit $3D08.w,X		; 3C 08 3D
	sec		; 38
	jmp ($E848.w,X)		; 7C 48 E8
	eor [$8E.b],Y		; 57 8E
	cmp [$07.b],Y		; D7 07
	adc ($0B.b,S),Y		; 73 0B
	lda $7E05.w,X		; BD 05 7E
	cop $7F.b		; 02 7F
	ora ($FF.b,X)		; 01 FF
	bit $FB.b		; 24 FB
	and $22.b		; 25 22
	ldx $2F23.w		; AE 23 2F
	ora ($0F.b,X)		; 01 0F
	bvc  87.b		; 50 57
	lda ($B3.b)		; B2 B3
	lda $2CAD.w		; AD AD 2C
	dey		; 88
	adc $00004A.l		; 6F 4A 00 00
	brk $00.b		; 00 00
	jmp ($8200.w,X)		; 7C 00 82
	jmp ($FECD.w,X)		; 7C CD FE
	cop $FF.b		; 02 FF
	ora ($FF.b,X)		; 01 FF
	ora ($FF.b,X)		; 01 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($327C.w,X)		; 7C 7C 32
	and ($C5.b)		; 32 C5
	cmp $02.b		; C5 02
	cop $E0.b		; 02 E0
	cpx #$FF00.w		; E0 00 FF
	sec		; 38
	cmp [$FC.b]		; C7 FC
	ora $FC.b,S		; 03 FC
	ora $9D.b,S		; 03 9D
	.db $62, $7A, $88		; 62 7A 88
	lda $1F2000.l,X		; BF 00 20 1F
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $0010.w		; 1C 10 00
	brk $0C.b		; 00 0C
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora ($04.b,X)		; 01 04
	cop $08.b		; 02 08
	ora $11.b		; 05 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	ora [$00.b]		; 07 00
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $F1.b		; 00 F1
	brk $CD.b		; 00 CD
	bcs 115.b		; B0 73
	jmp $DF88BF.l		; 5C BF 88 DF
	lsr $4EDF.w		; 4E DF 4E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi -128.b		; 30 80
	jmp $D69EC0.l		; 5C C0 9E D6
	lsr $0E60.w		; 4E 60 0E
	rts		; 60

	eor $67BF37.l,X		; 5F 37 BF 67
	tsa		; 3B
	jsr ($FF02.w,X)		; FC 02 FF
	dex		; CA
	and [$39.b],Y		; 37 39
	stx $15.b		; 86 15
	tsx		; BA
	ldx $2861.w		; AE 61 28
	jsr $4058.w		; 20 58 40
	eor [$44.b]		; 47 44
	and $103D.w,X		; 3D 3D 10
	bpl -62.b		; 10 C2
	.db $82, $E8, $A8		; 82 E8 A8
	ora ($01.b),Y		; 11 01
	jmp ($7C48.w,X)		; 7C 48 7C
	pha		; 48
	jmp ($6040.w)		; 6C 40 60
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $48.b		; 00 48
	iny		; C8
	brk $C8.b		; 00 C8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xce		; FB
	and $0DFB.w		; 2D FB 0D
	xce		; FB
	eor $FF5FFB.l		; 4F FB 5F FF
	cli		; 58
	sed		; F8
	ora [$D1.b]		; 07 D1
	and ($8F.b),Y		; 31 8F
	adc ($6F.b,X)		; 61 6F
	.db $42, $5F		; 42 5F
	eor ($5F.b)		; 52 5F
	bpl  95.b		; 10 5F
	brk $D8.b		; 00 D8
	bra -121.b		; 80 87
	sta [$2E.b]		; 87 2E
	jsr $203E.w		; 20 3E 20
	stx $0E60.w		; 8E 60 0E
	rts		; 60

	asl $1E70.w,X		; 1E 70 1E
	bmi  30.b		; 30 1E
	bmi   6.b		; 30 06
	bmi   7.b		; 30 07
	bmi  15.b		; 30 0F
	sec		; 38
	and $203F20.l,X		; 3F 20 3F 20
	and $000F20.l		; 2F 20 0F 00
	ora $101F00.l		; 0F 00 1F 10
	ora $101710.l,X		; 1F 10 17 10
	bvs -96.b		; 70 A0
	clv		; B8
	rts		; 60

	jmp ($5E10.w,X)		; 7C 10 5E
	plp		; 28
	ror $3714.w		; 6E 14 37
	tsb $060B.w		; 0C 0B 06
	ora [$00.b]		; 07 00
	cpx #$7040.w		; E0 40 70
	bpl  56.b		; 10 38
	plp		; 28
	bit $1C14.w,X		; 3C 14 1C
	php		; 08
	asl $0602.w		; 0E 02 06
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
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
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	cpy #$E090.w		; C0 90 E0
	bpl -32.b		; 10 E0
	plp		; 28
	beq -92.b		; F0 A4
	cli		; 58
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	cpx #$50E0.w		; E0 E0 50
	bvc  56.b		; 50 38
	clc		; 18
	ldy $78.b		; A4 78
	mvn $D8,$A8		; 54 A8 D8
	ldy #$50A8.w		; A0 A8 50
	bmi -128.b		; 30 80
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	ldy #$00A0.w		; A0 A0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	cpy $34.b		; C4 34
	inc $16.b		; E6 16
	bvs  63.b		; 70 3F
	tsb $2F.b		; 04 2F
	asl $0A17.w,X		; 1E 17 0A
	phd		; 0B
	ora [$0B.b]		; 07 0B
	ora $B8.b		; 05 B8
	bra  88.b		; 80 58
	rti		; 40

	plp		; 28
	jsr $0206.w		; 20 06 02
	asl $0F00.w,X		; 1E 00 0F
	ora $07.b		; 05 07
	brk $07.b		; 00 07
	cop $3C.b		; 02 3C
	sbc $3E.b,S		; E3 3E
	adc $0E.b,S		; 63 0E
	adc $0C.b,S		; 63 0C
	adc ($1C.b,X)		; 61 1C
	adc ($1C.b),Y		; 71 1C
	and ($10.b),Y		; 31 10
	and ($0E.b),Y		; 31 0E
	and $1C425E.l,X		; 3F 5E 42 1C
	brk $3C.b		; 00 3C
	jsr $203E.w		; 20 3E 20
	rol $0E20.w		; 2E 20 0E
	brk $0E.b		; 00 0E
	brk $10.b		; 00 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	ora ($0A.b,X)		; 01 0A
	ora [$17.b]		; 07 17
	ora $1F2A.w		; 0D 2A 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	asl A		; 0A
	php		; 08
	ora $05.b		; 05 05
	brk $00.b		; 00 00
	cpy #$7000.w		; C0 00 70
	cpy #$E01C.w		; C0 1C E0
	dex		; CA
	jmp ($D22D.w,X)		; 7C 2D D2
	eor ($AC.b,S),Y		; 53 AC
	eor ($BC.b)		; 52 BC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	jsr $A420.w		; 20 20 A4
	bit $80.b		; 24 80
	bra  40.b		; 80 28
	plp		; 28
	plp		; 28
	plp		; 28
	ora $1A02.w,Y		; 19 02 1A
	ora ($1F.b,X)		; 01 1F
	brk $12.b		; 00 12
	ora $27.b		; 05 27
	brk $47.b		; 00 47
	php		; 08
	rtl		; 6B

	tsb $2B.b		; 04 2B
	tsb $06.b		; 04 06
	asl $0D04.w		; 0E 04 0D
	brk $00.b		; 00 00
	ora $190C.w		; 0D 0C 19
	ora $3939.w,Y		; 19 39 39
	ora $31.b,X		; 15 31
	ora $11.b,X		; 15 11
	ora $E66518.l,X		; 1F 18 65 E6
	sed		; F8
	ora $45BD.w,Y		; 19 BD 45
	sbc $24FF22.l,X		; FF 22 FF 24
	sbc $35EE34.l		; EF 34 EE 35
	brk $F8.b		; 00 F8
	brk $FE.b		; 00 FE
	php		; 08
	ora $6A2764.l,X		; 1F 64 27 6A
	lsr A		; 4A
	adc $7D49.w		; 6D 49 7D
	eor #$7F.b		; 49 7F
	lsr A		; 4A
	and $00FE00.l,X		; 3F 00 FE 00
	sbc $FD09.w,X		; FD 09 FD
	ora $03FE.w,Y		; 19 FE 03
	inc $FC03.w,X		; FE 03 FC
	cmp $FC.b,S		; C3 FC
	ply		; 7A
	ora [$10.b],Y		; 17 10
	and [$20.b]		; 27 20
	phy		; 5A
	bvc  58.b		; 50 3A
	jsr $7979.w		; 20 79 79
	sta ($81.b,X)		; 81 81
	plx		; FA
	dec A		; 3A
	sed		; F8
	bra  14.b		; 80 0E
	adc $8E.b,S		; 63 8E
	sbc $14.b,S		; E3 14
	sbc ($14.b),Y		; F1 14
	sbc ($04.b),Y		; F1 04
	lda ($04.b),Y		; B1 04
	lda ($04.b),Y		; B1 04
	and ($0C.b),Y		; 31 0C
	and $40DC.w,Y		; 39 DC 40
	jmp $808E40.l		; 5C 40 8E 80
	stx $1E80.w		; 8E 80 1E
	bpl  30.b		; 10 1E
	bpl  30.b		; 10 1E
	bpl  22.b		; 10 16
	bpl  40.b		; 10 28
	ora $0C0F18.l,X		; 1F 18 0F 0C
	ora [$0C.b]		; 07 0C
	ora [$52.b]		; 07 52
	ora $1B24.w		; 0D 24 1B
	clc		; 18
	ora [$08.b]		; 07 08
	ora [$15.b]		; 07 15
	ora $05.b,X		; 15 05
	ora $01.b		; 05 01
	ora ($01.b,X)		; 01 01
	ora ($0D.b,X)		; 01 0D
	ora $0101.w		; 0D 01 01
	ora $03.b,S		; 03 03
	asl $06.b		; 06 06
	eor $82.b		; 45 82
	and $EC13C0.l		; 2F C0 13 EC
	ora $CB3BE0.l,X		; 1F E0 3B CB
	and $896DD4.l,X		; 3F D4 6D 89
	adc [$88.b]		; 67 88
	ora $01.b,S		; 03 01
	brk $00.b		; 00 00
	sta $808083.l		; 8F 83 80 80
	phb		; 8B
	sta $029484.l		; 8F 84 94 02
	clc		; 18
	ora $18.b,S		; 03 18
	cld		; D8
	ldy #$08B6.w		; A0 B6 08
	cmp $EF8A.w,X		; DD 8A EF
	brk $FE.b		; 00 FE
	bra  -1.b		; 80 FF
	.db $42, $67		; 42 67
	bra -90.b		; 80 A6
	iny		; C8
	cpy #$4840.w		; C0 40 48
	brk $AE.b		; 00 AE
	tsb $54.b		; 04 54
	mvp $85,$05		; 44 05 85
	cop $5A.b		; 02 5A
	txs		; 9A
	txs		; 9A
	ora $0019.w,Y		; 19 19 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	rti		; 40

	bra  48.b		; 80 30
	inc $08.b		; E6 08
	sta $0001.w,X		; 9D 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $70.b		; 00 70
	ora ($75.b,X)		; 01 75
	ora [$30.b]		; 07 30
	ora $1F033F.l		; 0F 3F 03 1F
	tsb $103F.w		; 0C 3F 10
	bit $3410.w,X		; 3C 10 34
	php		; 08
	dec A		; 3A
	tsb $1E.b		; 04 1E
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	tsb $0F.b		; 04 0F
	ora $1C.b,S		; 03 1C
	tsb $0818.w		; 0C 18 08
	clc		; 18
	bpl  28.b		; 10 1C
	clc		; 18
	brk $00.b		; 00 00
	sed		; F8
	ora [$FC.b],Y		; 17 FC
	pea $04FD.w		; F4 FD 04
	sbc ($0F.b,S),Y		; F3 0F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -32.b		; F0 E0
	sbc ($00.b,S),Y		; F3 00
	sbc ($F0.b,S),Y		; F3 F0
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	cop $03.b		; 02 03
	sbc $FCFC00.l,X		; FF 00 FC FC
	brk $FF.b		; 00 FF
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	jsr ($FF00.w,X)		; FC 00 FF
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $BD.b		; 00 BD
	stx $25.b		; 86 25
	inc $8D.b		; E6 8D
	asl $7E73.w		; 0E 73 7E
	ora [$F9.b]		; 07 F9
	ora $000DE0.l		; 0F E0 0D 00
	brk $00.b		; 00 00
	sei		; 78
	brk $58.b		; 00 58
	rti		; 40

	sbc ($01.b),Y		; F1 01
	phb		; 8B
	ora #$E3.b		; 09 E3
	sep #$01		; E2 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	ora $0C.b,S		; 03 0C
	ora [$14.b]		; 07 14
	ora $100F10.l		; 0F 10 0F 10
	ora $000F14.l		; 0F 14 0F 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $02.b,S		; 03 02
	cop $08.b		; 02 08
	php		; 08
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0A0A.w		; 0C 0A 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	bra  -8.b		; 80 F8
	rts		; 60

	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	cpx #$0080.w		; E0 80 00
	brk $62.b		; 00 62
	ora $E21EE1.l,X		; 1F E1 1E E2
	eor $9A64.w,X		; 5D 64 9A
	and $CA.b,X		; 35 CA
	dec A		; 3A
	cmp $3D.b		; C5 3D
.INDEX 16
	rep #$13		; C2 13
	cpx #$0909.w		; E0 09 09
	lsr A		; 4A
	asl A		; 0A
	pha		; 48
	php		; 08
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	tay		; A8
	eor $B0E71C.l,X		; 5F 1C E7 B0
	sta $B00F30.l		; 8F 30 0F B0
	sta $40CF48.l		; 8F 48 CF 40
	inc $F830.w,X		; FE 30 F8
	mvp $BA,$44		; 44 44 BA
	ldx #$0E7E.w		; A2 7E 0E
	inc $7E0E.w,X		; FE 0E 7E
	asl $0636.w		; 0E 36 06
	jsr $4020.w		; 20 20 40
	rti		; 40

	ora [$08.b],Y		; 17 08
	asl $09.b,X		; 16 09
	asl $09.b,X		; 16 09
	ora $000700.l		; 0F 00 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora $030B00.l		; 0F 00 0B 03
	phd		; 0B
	cop $0B.b		; 02 0B
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EE.b		; 00 EE
	and [$F7.b],Y		; 37 F7
	rol A		; 2A
	sbc [$2B.b],Y		; F7 2B
	sbc [$69.b],Y		; F7 69
	xce		; FB
	adc $FB.b,X		; 75 FB
	pea $00FF.w		; F4 FF 00
	sbc $487F00.l,X		; FF 00 7F 48
	adc $547F55.l,X		; 7F 55 7F 54
	sbc $8AFF96.l,X		; FF 96 FF 8A
	sbc $0009.w,X		; FD 09 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	bvs 120.b		; 70 78
	sty $B4.b,X		; 94 B4
	eor $FFC1F5.l		; 4F F5 C1 FF
	bcc -17.b		; 90 EF
	jsr $E063.w		; 20 63 E0
	sty $F07C.w		; 8C 7C F0
	bra -16.b		; 80 F0
	rts		; 60

	iny		; C8
	dey		; 88
	inc $CF20.w		; EE 20 CF
	rti		; 40

	ora $809F00.l,X		; 1F 00 9F 80
	adc ($70.b,S),Y		; 73 70
	tsb $0219.w		; 0C 19 02
	tas		; 1B
	cop $1B.b		; 02 1B
	ora $744FC0.l,X		; 1F C0 4F 74
	cmp ($1C.b,S),Y		; D3 1C
	sbc $FD0E.w,Y		; F9 0E FD
	asl $06.b		; 06 06
	brk $0C.b		; 00 0C
	php		; 08
	tsb $0008.w		; 0C 08 00
	brk $8E.b		; 00 8E
	asl A		; 0A
	sep #$02		; E2 02
	pea $F804.w		; F4 04 F8
	brk $08.b		; 00 08
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	ora ($02.b,X)		; 01 02
	ora ($1C.b,X)		; 01 1C
	ora $09.b,S		; 03 09
	asl $07.b		; 06 07
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $02.b		; 06 02
	cop $01.b		; 02 01
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $79.b		; 00 79
	sty $6A.b		; 84 6A
	stx $49.b		; 86 49
	sta [$44.b]		; 87 44
	sta $FC.b,S		; 83 FC
	ora $E6.b,S		; 03 E6
	ora ($62.b,X)		; 01 62
	ora $22.b		; 05 22
	ora $07.b		; 05 07
	tsb $01.b		; 04 01
	brk $02.b		; 00 02
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	cop $18.b		; 02 18
	and $3D1C.w,Y		; 39 1C 3D
	trb $521D.w		; 1C 1D 52
	rts		; 60

	sta ($20.b,S),Y		; 93 20
	lsr $BF10.w		; 4E 10 BF
	bra  91.b		; 80 5B
	dec $EE3B.w		; CE 3B EE
	sta $EAD5E0.l,X		; 9F E0 D5 EA
	sta $CC0D.w		; 8D 0D CC
	tsb $01E0.w		; 0C E0 01
	ror A		; 6A
	asl A		; 0A
	ldx $4E80.w		; AE 80 4E
	rti		; 40

	rol A		; 2A
	tax		; AA
	asl A		; 0A
	cpy #$63E3.w		; C0 E3 63
	eor $3E3F8F.l		; 4F 8F 3F 3E
	plx		; FA
	sbc $FAF4.w,X		; FD F4 FA
	sbc #$F4.b		; E9 F4
	lda ($C8.b,S),Y		; B3 C8
	inc $10.b		; E6 10
	ora ($0F.b,S),Y		; 13 0F
	stx $BF.b		; 86 BF
	clc		; 18
	inc $FD71.w,X		; FE 71 FD
	sbc $FA.b,S		; E3 FA
	sta [$F4.b]		; 87 F4
	ora $101FC8.l		; 0F C8 1F 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	inc $E7.b,X		; F6 E7
	dec $00D6.w,X		; DE D6 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	sbc [$62.b]		; E7 62
	sbc $EEF7C4.l		; EF C4 F7 EE
	xba		; EB
	sta $F9D5.w,Y		; 99 D5 F9
	ora ($78.b)		; 12 78
	cop $D8.b		; 02 D8
	cop $9C.b		; 02 9C
	lsr $1C.b		; 46 1C
	lsr $9C.b		; 46 9C
	dec $E0.b		; C6 E0
	xce		; FB
	brk $F3.b		; 00 F3
	tsb $10.b		; 04 10
	cpx $00.b		; E4 00
	jsr ($F800.w,X)		; FC 00 F8
	rti		; 40

	sed		; F8
	rti		; 40

	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$1070.w		; E0 70 10
	tya		; 98
	rts		; 60

	pla		; 68
	bpl  -8.b		; 10 F8
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $98.b		; 00 98
	brk $60.b		; 00 60
	brk $90.b		; 00 90
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	and [$3F.b]		; 27 3F
	ldx #$E0BE.w		; A2 BE E0
	inc $FF31.w,X		; FE 31 FF
	bit $18FF.w,X		; 3C FF 18
	adc $781A.w,Y		; 79 1A 78
	phd		; 0B
	sec		; 38
	bne  16.b		; D0 10
	eor $14.b,X		; 55 14
	tas		; 1B
	inc A		; 1A
	cpy $41CC.w		; CC CC 41
	eor ($26.b,X)		; 41 26
	jsr $2027.w		; 20 27 20
	ora [$10.b],Y		; 17 10
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	bvs  32.b		; 70 20
	sec		; 38
	bra -116.b		; 80 8C
	stz $E6.b		; 64 E6
	ora ($F3.b)		; 12 F3
	ora $7D.b		; 05 7D
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	ldy #$D020.w		; A0 20 D0
	bpl 120.b		; 10 78
	php		; 08
	tya		; 98
	bra 108.b		; 80 6C
	rts		; 60

	txs		; 9A
	clc		; 18
	asl $02.b		; 06 02
	ora [$03.b]		; 07 03
	ora $01.b,S		; 03 01
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	brk $22.b		; 00 22
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	trb $C01D.w		; 1C 1D C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$40C0.w		; C0 C0 40
	cpy #$C040.w		; C0 40 C0
	rti		; 40

	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpx #$E0C0.w		; E0 C0 E0
	rti		; 40

	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	ora $DC.b,S		; 03 DC
	ora $DF00D8.l,X		; 1F D8 00 DF
	sed		; F8
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	php		; 08
	asl $08.b		; 06 08
	ora $E50500.l,X		; 1F 00 05 E5
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora ($07.b,X)		; 01 07
	brk $00.b		; 00 00
	cmp $BE16.w,Y		; D9 16 BE
	adc ($2F.b,X)		; 61 2F
	dec $27.b,X		; D6 27
	cmp $15C13F.l,X		; DF 3F C1 15
	nop		; EA
	asl $A9.b,X		; 16 A9
	phd		; 0B
	ora $17.b,X		; 15 17
	and ($01.b),Y		; 31 01
	rts		; 60

	sta $809F89.l,X		; 9F 89 9F 80
	sta [$86.b]		; 87 86
	rtl		; 6B

	adc ($6F.b,X)		; 61 6F
	ror $F7.b		; 66 F7
	sbc ($00.b)		; F2 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $8F.b		; 00 8F
	ora ($FF.b,X)		; 01 FF
	asl $FF.b		; 06 FF
	rts		; 60

	sbc $00000F.l,X		; FF 0F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	asl $E108.w		; 0E 08 E1
	sta ($1F.b,X)		; 81 1F
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
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
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	ora ($1F.b,X)		; 01 1F
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
	brk $38.b		; 00 38
	brk $27.b		; 00 27
	clc		; 18
	rol $0F.b,X		; 36 0F
	cpy #$C83F.w		; C0 3F C8
	and [$05.b],Y		; 37 05
	plx		; FA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$09.b		; 09 09
	asl $221E.w,X		; 1E 1E 22
	jsl $152222.l		; 22 22 22 15
	asl A		; 0A
	ora #$06.b		; 09 06
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0604.w		; 0E 04 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0D.b		; 00 0D
	cop $06.b		; 02 06
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	ora $501F20.l,X		; 1F 20 1F 50
	and $C05FA0.l		; 2F A0 5F C0
	and $827E81.l,X		; 3F 81 7E 82
	jmp ($7C82.w,X)		; 7C 82 7C
	asl $1E1E.w,X		; 1E 1E 1E
	asl $2E2E.w,X		; 1E 2E 2E
	asl $1C1E.w,X		; 1E 1E 1C
	trb $1C1C.w		; 1C 1C 1C
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	jsr $20C0.w		; 20 C0 20
	cpy #$8040.w		; C0 40 80
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
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	adc $1C.b,S		; 63 1C
	ora $1906.w,Y		; 19 06 19
	asl $22.b		; 06 22
	trb $102C.w		; 1C 2C 10
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bra -16.b		; 80 F0
	rti		; 40

	inx		; E8
	bne 126.b		; D0 7E
	bcs -65.b		; B0 BF
	pha		; 48
	adc $031D17.l		; 6F 17 1D 03
	phb		; 8B
	tsb $00.b		; 04 00
	brk $40.b		; 00 40
	brk $F0.b		; 00 F0
	jsr $48F8.w		; 20 F8 48
	ror $1F36.w,X		; 7E 36 1F
	php		; 08
	ora $02060C.l		; 0F 0C 06 02
	ora $1C.b		; 05 1C
	cop $0E.b		; 02 0E
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phd		; 0B
	php		; 08
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
.ACCU 16
.INDEX 16
	rep #$7E		; C2 7E
	sbc $3A.b		; E5 3A
	eor ($19.b)		; 52 19
	and $88.b		; 25 88
	asl $1FD0.w,X		; 1E D0 1F
	stz $2F.b		; 64 2F
	inc A		; 1A
	ora ($0D.b,S),Y		; 13 0D
	sta $C20C.w		; 8D 0C C2
	cop $E1.b		; 02 E1
	brk $F0.b		; 00 F0
	bra 100.b		; 80 64
	mvp $2A,$2E		; 44 2E 2A
	ora $020F05.l,X		; 1F 05 0F 02
	rep #$00		; C2 00
	bit $CDFD.w,X		; 3C FD CD
	sbc $1DD1.w,X		; FD D1 1D
	and ($05.b)		; 32 05
	sbc $F91FE2.l		; EF E2 1F F9
	ora [$F8.b]		; 07 F8
	brk $3D.b		; 00 3D
	trb $003F.w		; 1C 3F 00
	ora $FC03E0.l		; 0F E0 03 FC
	ora $1A.b		; 05 1A
	brk $E1.b		; 00 E1
	cpx #$1A1A.w		; E0 1A 1A
	cpx #$E0C0.w		; E0 C0 E0
	cpy #$C0E0.w		; C0 E0 C0
	cpx #$F1C0.w		; E0 C0 F1
	bne  59.b		; D0 3B
	phx		; DA
	cmp [$14.b],Y		; D7 14
	cmp $C08028.l		; CF 28 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -48.b		; 80 D0
	brk $DA.b		; 00 DA
	bpl -34.b		; 10 DE
	ora $3D.b		; 05 3D
	dey		; 88
	clv		; B8
	ora ($0E.b),Y		; 11 0E
	asl $0001.w,X		; 1E 01 00
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	asl $0000.w		; 0E 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $EA02.w		; CD 02 EA
	ora $39.b		; 05 39
	dec $94.b		; C6 94
	ora $72.b,S		; 03 72
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $33.b		; 00 33
	sbc ($15.b),Y		; F1 15
	bmi -58.b		; 30 C6
	cpy #$6063.w		; C0 63 60
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $867F7F.l,X		; FF 7F 7F 86
	sta [$78.b]		; 87 78
	inc $FEFD.w,X		; FE FD FE
	sbc $3DFF.w,X		; FD FF 3D
	and $EBD5C1.l,X		; 3F C1 D5 EB
	sbc $79FF80.l,X		; FF 80 FF 79
	sed		; F8
	bra  -3.b		; 80 FD
	ora ($FD.b,X)		; 01 FD
	ora ($FC.b,X)		; 01 FC
	cpy #$3CFC.w		; C0 FC 3C
	nop		; EA
	cop $E0.b		; 02 E0
	brk $A0.b		; 00 A0
	rti		; 40

	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	cpy #$20FC.w		; C0 FC 20
	rol $1F50.w,X		; 3E 50 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$60C0.w		; C0 C0 60
	rts		; 60

	bcs -80.b		; B0 B0
	clc		; 18
	clc		; 18
	cpy $E60C.w		; CC 0C E6
	asl $20.b		; 06 20
	ora $5C3F40.l,X		; 1F 40 3F 5C
	and $483F5C.l,X		; 3F 5C 3F 48
	and $483F48.l,X		; 3F 48 3F 48
	and $003F48.l,X		; 3F 48 3F 00
	brk $1E.b		; 00 1E
	asl $2222.w,X		; 1E 22 22
	jsl $161622.l		; 22 22 16 16
	asl $16.b,X		; 16 16
	asl $16.b,X		; 16 16
	asl $16.b,X		; 16 16
	cmp $3A.b		; C5 3A
.INDEX 8
	sep #$1D		; E2 1D
	jsr $30DF.w		; 20 DF 30
	cmp $31CF30.l		; CF 30 CF 31
	dec $C03F.w		; CE 3F C0
	and $1010C0.l,X		; 3F C0 10 10
	php		; 08
	php		; 08
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $7177.w,Y		; F9 77 71
	sta $7C47B9.l		; 8F B9 47 7C
	sta $3C.b,S		; 83 3C
	cmp ($78.b,X)		; C1 78
	bra -16.b		; 80 F0
	brk $60.b		; 00 60
	brk $F6.b		; 00 F6
	stx $E6.b		; 86 E6
	ror $42.b		; 66 42
	cop $81.b		; 02 81
	ora ($E0.b,X)		; 01 E0
	jsr $40C0.w		; 20 C0 40
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	pla		; 68
	ora $7A0774.l		; 0F 74 07 7A
	ora $BD.b,S		; 03 BD
	sta ($4E.b,X)		; 81 4E
	cpy #$37.b		; C0 37
	beq  11.b		; F0 0B
	sei		; 78
	ora $3C.b		; 05 3C
	sbc ($03.b,S),Y		; F3 03
	sbc $FC01.w,Y		; F9 01 FC
	brk $7E.b		; 00 7E
	brk $BF.b		; 00 BF
	bra  79.b		; 80 4F
	rti		; 40

	and [$30.b],Y		; 37 30
	phd		; 0B
	php		; 08
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bra  -8.b		; 80 F8
	bpl 124.b		; 10 7C
	dey		; 88
	rol $3FA4.w,X		; 3E A4 3F
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	rts		; 60

	rts		; 60

	bmi  48.b		; 30 30
	iny		; C8
	pha		; 48
	pei ($14.b)		; D4 14
	dex		; CA
	asl A		; 0A
	cop $1E.b		; 02 1E
	ora ($0F.b,X)		; 01 0F
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
	rti		; 40

	bra  64.b		; 80 40
	bra  96.b		; 80 60
	bra -32.b		; 80 E0
	brk $80.b		; 00 80
	jsr $9040.w		; 20 40 90
	rti		; 40

	dey		; 88
	eor ($98.b,X)		; 41 98
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $20.b		; 00 20
	brk $B0.b		; 00 B0
	bra  48.b		; 80 30
	asl $6B.b,X		; 16 6B
	txa		; 8A
	cmp [$15.b],Y		; D7 15
	cmp [$14.b],Y		; D7 14
	ldy $54.b		; A4 54
	tya		; 98
	adc $B6.b		; 65 B6
	adc #$6FB8.w		; 69 B8 6F
	lda $1E0A77.l		; AF 77 0A 1E
	brk $3C.b		; 00 3C
	ora ($3C.b,X)		; 01 3C
	eor ($1E.b,X)		; 41 1E
	adc ($07.b,X)		; 61 07
	rts		; 60

	php		; 08
	rts		; 60

	ora $BF0776.l		; 0F 76 07 BF
	eor [$B4.b],Y		; 57 B4
	tad		; 5B
	eor $285E28.l,X		; 5F 28 5E 28
	phy		; 5A
	bit $2854.w		; 2C 54 28
	jmp $007020.l		; 5C 20 70 00
	bvs  39.b		; 70 27
	sei		; 78
	and $38.b,S		; 23 38
	bpl  56.b		; 10 38
	bpl  60.b		; 10 3C
	bpl  56.b		; 10 38
	bpl  48.b		; 10 30
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	sbc ($EE.b)		; F2 EE
	bpl -16.b		; 10 F0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	tsb $E0F0.w		; 0C F0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lsr $81.b		; 46 81
	lda ($C0.b,X)		; A1 C0
	bne  96.b		; D0 60
	pla		; 68
	bcs -76.b		; B0 B4
	cli		; 58
	phy		; 5A
	bit $1C2E.w		; 2C 2E 1C
	ora $8106.w,X		; 1D 06 81
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	rti		; 40

	sei		; 78
	jsr $103C.w		; 20 3C 10
	trb $0E00.w		; 1C 00 0E
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	sec		; 38
	php		; 08
	pla		; 68
	bit $2C6C.w		; 2C 6C 2C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	php		; 08
	tsb $3E08.w		; 0C 08 3E
	tsb $073E.w		; 0C 3E 07
	brk $1B.b		; 00 1B
	ora [$20.b]		; 07 20
	ora $F2334C.l,X		; 1F 4C 33 F2
	ora ($82.b,X)		; 01 82
	ora ($02.b,X)		; 01 02
	ora ($06.b,X)		; 01 06
	ora ($00.b,X)		; 01 00
	brk $04.b		; 00 04
	tsb $1F.b		; 04 1F
	ora $000101.l,X		; 1F 01 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	bra -48.b		; 80 D0
	cpx #$38.b		; E0 38
	beq  28.b		; F0 1C
	sed		; F8
	tsb $0CF8.w		; 0C F8 0C
	sed		; F8
	tsb $00F8.w		; 0C F8 00
	brk $80.b		; 00 80
	bra  32.b		; 80 20
	jsr $C0C0.w		; 20 C0 C0
	rts		; 60

	rts		; 60

	bmi  48.b		; 30 30
	bcs -80.b		; B0 B0
	bcs -80.b		; B0 B0
	rti		; 40

	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -57.b		; 80 C7
	bra -49.b		; 80 CF
	bra  79.b		; 80 4F
	sty $DF.b		; 84 DF
	php		; 08
	stz $0009.w,X		; 9E 09 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   4.b		; 80 04
	sty $04.b		; 84 04
	bra  12.b		; 80 0C
	tsb $0B.b		; 04 0B
	cop $02.b		; 02 02
	ora [$05.b]		; 07 05
	ora $971E0B.l		; 0F 0B 1E 97
	bit $788F.w,X		; 3C 8F 78
	asl $F0.b,X		; 16 F0
	and $9DE1.w		; 2D E1 9D
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $27.b		; 00 27
	jsr $404F.w		; 20 4F 40
	asl $7E00.w,X		; 1E 00 7E
	rti		; 40

	ora $00.b,S		; 03 00
	asl $01.b		; 06 01
	asl $01.b		; 06 01
	asl $0E01.w		; 0E 01 0E
	ora ($1E.b,X)		; 01 1E
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $04.b		; 00 04
	tsb $05.b		; 04 05
	ora $01.b		; 05 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $F3.b		; 00 F3
	beq  -5.b		; F0 FB
	phd		; 0B
	lda $BB.b,S		; A3 BB
	eor [$1F.b]		; 47 1F
	eor [$1F.b]		; 47 1F
	eor $1F.b,S		; 43 1F
	mvp $23,$1B		; 44 1B 23
	bmi  48.b		; 30 30
	jsr ($0F03.w,X)		; FC 03 0F
	eor ($17.b,S),Y		; 53 17
	sbc ($17.b,S),Y		; F3 17
	sbc ($17.b,S),Y		; F3 17
	beq  23.b		; F0 17
	beq  19.b		; F0 13
	cpy #$00.b		; C0 00
	sei		; 78
	lda [$37.b]		; A7 37
	wai		; CB
	rol $6CDB.w		; 2E DB 6C
	sta $483FC8.l,X		; 9F C8 3F 48
	lda $141EE1.l,X		; BF E1 1E 14
	phd		; 0B
	and ($11.b),Y		; 31 11
	cpy $C0.b		; C4 C0
	ora $01.b		; 05 01
	ora ($01.b,X)		; 01 01
	ora $15.b,X		; 15 15
	bcc -112.b		; 90 90
	php		; 08
	php		; 08
	asl A		; 0A
	asl A		; 0A
.ACCU 16
.INDEX 16
	rep #$7C		; C2 7C
	sta ($EE.b),Y		; 91 EE
	lda #$35D6.w		; A9 D6 35
	phx		; DA
	lsr A		; 4A
	ldy $4CF8.w		; AC F8 4C
	ldy $E6.b		; A4 E6
	bvs  14.b		; 70 0E
	ldy $442C.w		; AC 2C 44
	mvp $10,$10		; 44 10 10
	dey		; 88
	dey		; 88
	bmi  32.b		; 30 20
	brk $00.b		; 00 00
	cli		; 58
	rti		; 40

	jsr ($000C.w,X)		; FC 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$05.b]		; 07 05
	trb $3016.w		; 1C 16 30
	plp		; 28
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	ora $001F00.l		; 0F 00 1F 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($1F.b,X)		; 01 1F
	php		; 08
	sed		; F8
	lda ($83.b,S),Y		; B3 83
	sty $300F.w		; 8C 0F 30
	and $00FCC0.l,X		; 3F C0 FC 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $17.b		; 02 17
	bpl 124.b		; 10 7C
	brk $F3.b		; 00 F3
	ora $CC.b,S		; 03 CC
	tsb $3030.w		; 0C 30 30
	lsr $3737.w		; 4E 37 37
	ora #$0708.w		; 09 08 07
	ora $02.b		; 05 02
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $060F08.l,X		; 3F 08 0F 06
	ora [$00.b]		; 07 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$BF00.w		; C0 00 BF
	cpy #$3AFD.w		; C0 FD 3A
	stx $F070.w		; 8E 70 F0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $FE.b		; 00 FE
	cpy $70.b		; C4 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
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
	brk $0E.b		; 00 0E
	brk $1A.b		; 00 1A
	trb $24.b		; 14 24
	plp		; 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $34.b		; 00 34
	brk $78.b		; 00 78
	bit $2E20.w		; 2C 20 2E
	bit $2A.b		; 24 2A
	bit $383C.w		; 2C 3C 38
	bit $38.b,X		; 34 38
	sec		; 38
	bmi  40.b		; 30 28
	bmi  40.b		; 30 28
	bmi   0.b		; 30 00
	bvs  32.b		; 70 20
	stz $20.b,X		; 74 20
	jmp ($7818.w,X)		; 7C 18 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	jsr $2070.w		; 20 70 20
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	cop $07.b		; 02 07
	cop $0F.b		; 02 0F
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	cop $08.b		; 02 08
	ora [$10.b]		; 07 10
	ora $200F10.l		; 0F 10 0F 20
	ora $601F20.l,X		; 1F 20 1F 60
	ora $A01F60.l,X		; 1F 60 1F A0
	eor $030101.l,X		; 5F 01 01 03
	ora $06.b,S		; 03 06
	asl $0D.b		; 06 0D
	ora $0B0B.w		; 0D 0B 0B
	asl A		; 0A
	asl A		; 0A
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	trb $F8.b		; 14 F8
	php		; 08
	beq  16.b		; F0 10
	cpx #$C020.w		; E0 20 C0
	rti		; 40

	bra -128.b		; 80 80
	brk $98.b		; 00 98
	brk $BF.b		; 00 BF
	php		; 08
	tay		; A8
	tay		; A8
	bvs 112.b		; 70 70
	cpy #$80C0.w		; C0 C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $3B.b		; 00 3B
	ora [$FF.b],Y		; 17 FF
	cmp [$BE.b]		; C7 BE
	lda $F75679.l		; AF 79 56 F7
	phb		; 8B
	sbc $3FFF0F.l,X		; FF 0F FF 3F
	sbc $C81F00.l,X		; FF 00 1F C8
	ora [$D0.b],Y		; 17 D0
	ora $C95FE0.l		; 0F E0 5F C9
	lda $101FA4.l		; AF A4 1F 10
	sbc $7F7FC0.l,X		; FF C0 7F 7F
	phx		; DA
	sta $D4.b,S		; 83 D4
	ora [$64.b]		; 07 64
	lda [$E8.b]		; A7 E8
	dec $DEF0.w		; CE F0 DE
	cpx #$E0DC.w		; E0 DC E0
	cld		; D8
	cpx #$BD10.w		; E0 10 BD
	ora ($BA.b,X)		; 01 BA
	.db $82, $9A, $02		; 82 9A 02
	pei ($04.b)		; D4 04
	iny		; C8
	php		; 08
	cld		; D8
	clc		; 18
	bne  16.b		; D0 10
	cpy #$00C0.w		; C0 C0 00
	ora $01.b,S		; 03 01
	cop $03.b		; 02 03
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D1.b		; 00 D1
	jsr $C0B2.w		; 20 B2 C0
	jmp ($EFA0.w,X)		; 7C A0 EF
	eor $FFBFDF.l,X		; 5F DF BF FF
	and $FEBE59.l,X		; 3F 59 BE FE
	brk $20.b		; 00 20
	jsr $01C1.w		; 20 C1 01
	ldy #$4003.w		; A0 03 40
	ora $9F3F9F.l,X		; 1F 9F 3F 9F
	lda $003E80.l,X		; BF 80 3E 00
	brk $15.b		; 00 15
	php		; 08
	ora $0A.b,X		; 15 0A
	asl $0301.w		; 0E 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($30.b,X)		; 01 30
	asl $8E00.w		; 0E 00 8E
	sec		; 38
	jsr ($78A0.w,X)		; FC A0 78
	lda $FF70.w,X		; BD 70 FF
	brk $FF.b		; 00 FF
	beq  12.b		; F0 0C
	php		; 08
	jsr ($FC0C.w,X)		; FC 0C FC
	sty $8080.w		; 8C 80 80
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	php		; 08
	php		; 08
	bmi  -9.b		; 30 F7
	ora $FB.b,S		; 03 FB
	eor ($FF.b,X)		; 41 FF
	sty $F7.b,X		; 94 F7
	jmp ($FEC1.w,X)		; 7C C1 FE
	bra -25.b		; 80 E7
	brk $DB.b		; 00 DB
	clc		; 18
	lda $3C.b		; A5 3C
	.db $42, $7E		; 42 7E
	cop $02.b		; 02 02
	plp		; 28
	jsr $003E.w		; 20 3E 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc [$00.b]		; E7 00
	stp		; DB
	clc		; 18
	sta $04.b		; 85 04
	brk $F8.b		; 00 F8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	cpx #$F030.w		; E0 30 F0
	clc		; 18
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $3D.b		; 00 3D
	asl A		; 0A
	phx		; DA
	bit $FF.b,X		; 34 FF
	cpx #$0CF3.w		; E0 F3 0C
	trb $E0E0.w		; 1C E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	tsb $3C.b		; 04 3C
	php		; 08
	sed		; F8
	clc		; 18
	jsr ($E0F0.w,X)		; FC F0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $EC.b		; 00 EC
	brk $14.b		; 00 14
	inx		; E8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$A05F.w		; A0 5F A0
	eor $886F90.l,X		; 5F 90 6F 88
	adc [$43.b],Y		; 77 43
	bit $3F40.w,X		; 3C 40 3F
	jsr $1F1F.w		; 20 1F 1F
	brk $06.b		; 00 06
	asl $07.b		; 06 07
	ora [$43.b]		; 07 43
	eor $40.b,S		; 43 40
	rti		; 40

	jsr $3020.w		; 20 20 30
	bmi  30.b		; 30 1E
	asl $0000.w,X		; 1E 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	adc ($03.b,X)		; 61 03
	cmp $6403.w,Y		; D9 03 64
	ora ($FF.b,X)		; 01 FF
	rti		; 40

	adc ($08.b),Y		; 71 08
	eor $0301B0.l		; 4F B0 01 03
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	jsr $9867.w		; 20 67 98
	txy		; 9B
	rts		; 60

	rts		; 60

	stx $A08F.w		; 8E 8F A0
	ldy #$06CC.w		; A0 CC 06
	lda $8FFF07.l,X		; BF 07 FF 8F
	sta $BEBEBF.l,X		; 9F BF BE BE
	and $3B7D.w,X		; 3D 7D 3B
	ply		; 7A
	wai		; CB
	dec A		; 3A
	bmi  55.b		; 30 37
	lsr $77.b		; 46 77
	sta $FF1E8F.l		; 8F 8F 1E FF
	trb $19FF.w		; 1C FF 19
	sbc $00FE00.l,X		; FF 00 FE 00
	rol $C031.w,X		; 3E 31 C0
	ora $1F1D2E.l		; 0F 2E 1D 1F
	sbc $F6F1FD.l,X		; FF FD F1 F6
	sbc $00FFF4.l		; EF F4 FF 00
	brk $00.b		; 00 00
	cpy #$E6CE.w		; C0 CE E6
	inc $FF0C.w,X		; FE 0C FF
	trb $F0FD.w		; 1C FD F0
	inc $F480.w,X		; FE 80 F4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  15.b		; F0 0F
	sbc $07FFFF.l,X		; FF FF FF 07
	lda $00FF40.l,X		; BF 40 FF 00
	eor $00C780.l,X		; 5F 80 C7 00
	brk $00.b		; 00 00
	sta $00FF80.l		; 8F 80 FF 00
	and $074738.l,X		; 3F 38 47 07
	clc		; 18
	clc		; 18
	sta [$87.b]		; 87 87
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$E000.w		; E0 00 E0
	bra -16.b		; 80 F0
	bra -16.b		; 80 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	cpy #$20FC.w		; C0 FC 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E040.w		; C0 40 E0
	jsr $D0F0.w		; 20 F0 D0
	ora [$00.b]		; 07 00
	and $E41F03.l,X		; 3F 03 1F E4
	jmp $3BC3.w		; 4C C3 3B
	bit $CC.b,X		; 34 CC
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpy #$0000.w		; C0 00 00
	ora [$04.b]		; 07 04
	and $84B72B.l		; 2F 2B B7 84
	cpy $00.b		; C4 00
	bmi  48.b		; 30 30
	cpy #$00C0.w		; C0 C0 00
	brk $81.b		; 00 81
	sbc [$00.b]		; E7 00
	cmp $00.b,S		; C3 00
	cmp ($00.b,X)		; C1 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $42.b		; 00 42
	.db $42, $81		; 42 81
	sta ($80.b,X)		; 81 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	tsb $86BC.w		; 0C BC 86
	and $7117E2.l		; 2F E2 17 71
	brk $18.b		; 00 18
	phd		; 0B
	asl $07.b		; 06 07
	brk $02.b		; 00 02
	ora ($F0.b,X)		; 01 F0
	brk $78.b		; 00 78
	brk $5C.b		; 00 5C
	rti		; 40

	asl $0F00.w		; 0E 00 0F
	php		; 08
	tsb $04.b		; 04 04
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	ora $1C.b		; 05 1C
	trb $70.b		; 14 70
	eor ($C1.b),Y		; 51 C1
	lsr $07.b		; 46 07
	clc		; 18
	ora $007E42.l,X		; 1F 42 7E 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $3E.b		; 00 3E
	brk $F9.b		; 00 F9
	ora ($E4.b,X)		; 01 E4
	tsb $B1.b		; 04 B1
	bmi   0.b		; 30 00
	sed		; F8
	rts		; 60

	tsb $07FC.w		; 0C FC 07
	asl $9203.w		; 0E 03 92
	beq   0.b		; F0 00
	jsr ($83B8.w,X)		; FC B8 83
	jsr ($0000.w,X)		; FC 00 00
	brk $F8.b		; 00 F8
	php		; 08
	sed		; F8
	brk $FD.b		; 00 FD
	ora ($6F.b,X)		; 01 6F
	rts		; 60

	ora $00.b,S		; 03 00
	jmp ($FF00.w,X)		; 7C 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($04.b,X)		; 01 04
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $F0.b		; 00 F0
	brk $08.b		; 00 08
	beq -52.b		; F0 CC
	lda ($B0.b)		; B2 B0
	eor $D0A3.w,X		; 5D A3 D0
	ply		; 7A
	cmp $73.b,X		; D5 73
	cld		; D8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	dex		; CA
	pha		; 48
	eor $858750.l,X		; 5F 50 87 85
	sta [$80.b]		; 87 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	cop $80.b		; 02 80
	ora $40.b,S		; 03 40
	eor $60.b,S		; 43 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	bra   0.b		; 80 00
	bra   1.b		; 80 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc ($8C.b)		; 72 8C
	ror $F0.b		; 66 F0
	cpx $18.b		; E4 18
	pha		; 48
	lda [$00.b],Y		; B7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $68.b		; 00 68
	jmp $0B08.w		; 4C 08 0B
	jsr $C367.w		; 20 67 C3
	eor ($BA.b,X)		; 41 BA
	and $7C75.w,Y		; 39 75 7C
	sbc $E7FC.w,Y		; F9 FC E7
	pea $E34C.w		; F4 4C E3
	sbc [$09.b],Y		; F7 09
	ora $BCC000.l,X		; 1F 00 C0 BC
	ora $307D.w,Y		; 19 7D 30
	inc $FEF8.w,X		; FE F8 FE
	cpx #$03FC.w		; E0 FC 03
	beq  15.b		; F0 0F
	asl $00.b		; 06 00
	brk $80.b		; 00 80
	beq   0.b		; F0 00
	cpx #$8000.w		; E0 00 80
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rts		; 60

	bra  48.b		; 80 30
	cpy #$50E8.w		; C0 E8 50
	bit $18.b,X		; 34 18
	sbc $659E98.l,X		; FF 98 9E 65
	sbc [$1B.b]		; E7 1B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bcc   0.b		; 90 00
	cld		; D8
	brk $3C.b		; 00 3C
	bit $7F.b		; 24 7F
	inc A		; 1A
	ora $800004.l,X		; 1F 04 00 80
	bra -64.b		; 80 C0
	rti		; 40

	rts		; 60

	jsr $1030.w		; 20 30 10
	cld		; D8
	pha		; 48
	ror $3CE7.w,X		; 7E E7 3C
	sbc ($0E.b,X)		; E1 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$2000.w		; C0 00 20
	brk $80.b		; 00 80
	brk $D0.b		; 00 D0
	bpl  -7.b		; 10 F9
	ora #$0338.w		; 09 38 03
	lsr $C0.b		; 46 C0
	ora $02F8.w,Y		; 19 F8 02
	ror $0F00.w,X		; 7E 00 0F
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $BF02.w,X		; FE 02 BF
	bra 103.b		; 80 67
	rts		; 60

	ora $030C.w		; 0D 0C 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($1E.b,X)		; 01 1E
	brk $7F.b		; 00 7F
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	tsb $1C.b		; 04 1C
	clc		; 18
	ldx $F959.w,Y		; BE 59 F9
	ror $C7.b		; 66 C7
	dec A		; 3A
	and $FCFFFE.l,X		; 3F FE FF FC
	ror $8781.w,X		; 7E 81 87
	adc $F9FF.w,Y		; 79 FF F9
	adc $FE25.w,X		; 7D 25 FE
	tya		; 98
	inc $FEC4.w,X		; FE C4 FE
	brk $FE.b		; 00 FE
	cop $FD.b		; 02 FD
	adc $80F8.w,X		; 7D F8 80
	jsr ($0004.w,X)		; FC 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($07.b,X)		; 01 07
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	tsb $01.b		; 04 01
	sbc $E9EE.w,X		; FD EE E9
	stp		; DB
	pei ($DC.b)		; D4 DC
	cmp ($BF.b,S),Y		; D3 BF
	ldx $B7.b		; A6 B7
	plb		; AB
	and $27A6.w,Y		; 39 A6 27
	cli		; 58
	sed		; F8
	brk $09.b		; 00 09
	sed		; F8
	sta [$F3.b],Y		; 97 F3
	sta ($F0.b,S),Y		; 93 F0
	and $E42FE9.l		; 2F E9 2F E4
	ora [$E1.b]		; 07 E1
	clc		; 18
	cpy #$0700.w		; C0 00 07
	rti		; 40

	and $213F40.l,X		; 3F 40 3F 21
	ora $00001F.l,X		; 1F 1F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	sec		; 38
	trb $061C.w		; 1C 1C 06
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8B.b		; 00 8B
	sed		; F8
	and $803EE0.l		; 2F E0 3E 80
	sbc $7281.w,X		; FD 81 72
	ora $68.b,S		; 03 68
	ora $E01E10.l		; 0F 10 1E E0
	jsr ($4047.w,X)		; FC 47 40
	ora $80FF00.l,X		; 1F 00 FF 80
	ror $FD00.w,X		; 7E 00 FD
	ora ($F6.b,X)		; 01 F6
	asl $E8.b		; 06 E8
	php		; 08
	bpl  16.b		; 10 10
	sbc $30B300.l,X		; FF 00 B3 30
	sty $FC.b		; 84 FC
	ora ($FF.b,X)		; 01 FF
	brk $87.b		; 00 87
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00CF00.l,X		; FF 00 CF 00
	phk		; 4B
	pha		; 48
	stx $86.b		; 86 86
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	asl $2F05.w,X		; 1E 05 2F
	bpl  79.b		; 10 4F
	bit $46.b,X		; 34 46
	and $0303.w,Y		; 39 03 03
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	tsb $00.b		; 04 00
	asl $02.b		; 06 02
	asl $12.b,X		; 16 12
	bmi  48.b		; 30 30
	rol $D8.b,X		; 36 D8
	bmi -64.b		; 30 C0
	jsr $32D8.w		; 20 D8 32
	cmp [$26.b],Y		; D7 26
	cmp $E41B.w,Y		; D9 1B E4
	cmp [$38.b]		; C7 38
	and $484FC0.l,X		; 3F C0 4F 48
	sta $808780.l		; 8F 80 87 80
	cmp #$C0C1.w		; C9 C1 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $9F60.w		; 0D 60 9F
	inx		; E8
	jsr ($7FD0.w,X)		; FC D0 7F
	bra  88.b		; 80 58
	sta $6EA0.w,X		; 9D A0 6E
	plx		; FA
	eor ($B6.b,S),Y		; 53 B6
	bvc -62.b		; 50 C2
	eor $48.b,S		; 43 48
	eor $1B.b,S		; 43 1B
	phd		; 0B
	ldy #$10A0.w		; A0 A0 10
	and $0C7120.l,X		; 3F 20 71 0C
	rti		; 40

	ora $936740.l		; 0F 40 67 93
	adc [$01.b]		; 67 01
	and #$D707.w		; 29 07 D7
	and $5FCFFF.l		; 2F FF CF 5F
	cmp $80DF0F.l,X		; DF 0F DF 80
	sbc $99DB98.l		; EF 98 DB 99
	cmp $DBD1.w,X		; DD D1 DB
	and $37.b,S		; 23 37
	ora [$CF.b]		; 07 CF
	ora $7F00FF.l		; 0F FF 00 7F
	brk $1F.b		; 00 1F
	ora $FC.b,S		; 03 FC
	ora ($FE.b,X)		; 01 FE
	cpy #$D0FF.w		; C0 FF D0
	and $171B24.l,X		; 3F 24 1B 17
	php		; 08
	sec		; 38
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra 120.b		; 80 78
	sei		; 78
	bit $34.b,X		; 34 34
	pld		; 2B
	pld		; 2B
	ora $0819.w,Y		; 19 19 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $635C.w		; AD 5C 63
	sta $30F708.l,X		; 9F 08 F7 30
	cmp $60.b,S		; C3 60
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $13.b		; 00 13
	bvc  12.b		; 50 0C
	tsb $2323.w		; 0C 23 23
	cpy #$80C0.w		; C0 C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $AE.b		; 00 AE
	bmi 123.b		; 30 7B
	asl $CEDB.w		; 0E DB CE
	and $EA15E0.l,X		; 3F E0 15 EA
	ora $000020.l,X		; 1F 20 00 00
	brk $00.b		; 00 00
	cpy #$EE01.w		; C0 01 EE
	brk $2E.b		; 00 2E
	brk $CA.b		; 00 CA
	dex		; CA
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $1CFCF3.l,X		; FF F3 FC 1C
	cpy #$00E0.w		; C0 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFCFF.l,X		; FF FF FC FF
	brk $FC.b		; 00 FC
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tda		; 7B
	sty $9E.b,X		; 94 9E
	adc $1B67.w		; 6D 67 1B
	ora $0F06.w,Y		; 19 06 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	pla		; 68
	adc $041F12.l,X		; 7F 12 1F 04
	ora [$01.b]		; 07 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	brk $F0.b		; 00 F0
	brk $EF.b		; 00 EF
	bne 125.b		; D0 7D
	tsx		; BA
	.db $82, $7C, $7C		; 82 7C 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -16.b		; 80 F0
	jsr $44FE.w		; 20 FE 44
	jmp ($0000.w,X)		; 7C 00 00
	brk $00.b		; 00 00
	brk $D8.b		; 00 D8
	ora $FE03FC.l,X		; 1F FC 03 FE
	lda ($BF.b),Y		; B1 BF
	adc ($BF.b)		; 72 BF
	adc $F7.b,S		; 63 F7
	rol $36EF.w		; 2E EF 36
	ldx $E655.w		; AE 55 E6
	asl $03.b		; 06 03
	ora $B9.b,S		; 03 B9
	ora #$88FA.w		; 09 FA 88
	sbc [$94.b],Y		; F7 94
	lda $89BF91.l,X		; BF 91 BF 89
	adc $00002A.l,X		; 7F 2A 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra  96.b		; 80 60
	cpy #$F820.w		; C0 20 F8
	brk $78.b		; 00 78
	cpy #$60FC.w		; C0 FC 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	cpx #$E020.w		; E0 20 E0
	bra   0.b		; 80 00
	ora $01.b,S		; 03 01
	ora $081E06.l		; 0F 06 1E 08
	and $3F09.w,Y		; 39 09 3F
	tsb $3C.b		; 04 3C
	ora $100618.l		; 0F 18 06 10
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora #$1608.w		; 09 08 16
	bpl  16.b		; 10 10
	bpl  19.b		; 10 13
	bpl   7.b		; 10 07
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	sbc $04FFF8.l,X		; FF F8 FF 04
	bit $E027.w,X		; 3C 27 E0
	rol $FA00.w,X		; 3E 00 FA
	ora $CC.b,S		; 03 CC
	ora $0C3E20.l		; 0F 20 3E 0C
	tsb $0000.w		; 0C 00 00
	cmp $00.b,S		; C3 00
	ora $00FF00.l,X		; 1F 00 FF 00
	sbc $F201.w,X		; FD 01 F2
	cop $D0.b		; 02 D0
	bpl  -8.b		; 10 F8
	ldy #$8C78.w		; A0 78 8C
	bvs -92.b		; 70 A4
	ldy $19E6.w		; AC E6 19
	ror $1B.b,X		; 76 1B
	adc ($CF.b),Y		; 71 CF
	bvs -51.b		; 70 CD
	adc ($A0.b)		; 72 A0
	brk $50.b		; 00 50
	rti		; 40

	clc		; 18
	brk $18.b		; 00 18
	brk $A0.b		; 00 A0
	jsr $25A5.w		; 20 A5 25
	bcc  16.b		; 90 10
	bcc  21.b		; 90 15
	phd		; 0B
	ora [$07.b]		; 07 07
	brk $02.b		; 00 02
	ora ($01.b,X)		; 01 01
	brk $C8.b		; 00 C8
	bmi -39.b		; 30 D9
	bra -48.b		; 80 D0
	brk $62.b		; 00 62
	.db $82, $07, $00		; 82 07 00
	ora $03.b,S		; 03 03
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$2030.w		; A0 30 20
	and $80.b,S		; 23 80
	sta $000000.l,X		; 9F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$01.b]		; 07 01
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $0F.b,S		; 03 0F
	ora ($57.b)		; 12 57
	cpy $2A3F.w		; CC 3F 2A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	cop $F2.b		; 02 F2
	tsb $0AE0.w		; 0C E0 0A
	cpx #$6F34.w		; E0 34 6F
	and ($2D.b)		; 32 2D
	eor ($6E.b),Y		; 51 6E
	adc ($0E.b),Y		; 71 0E
	ply		; 7A
	ora $BE.b,X		; 15 BE
	eor ($3F.b,X)		; 41 3F
	bne  24.b		; D0 18
	sbc [$09.b]		; E7 09
	sbc #$6C2C.w		; E9 2C 6C
	mvp $04,$E4		; 44 E4 04
	sty $10.b		; 84 10
	brk $18.b		; 00 18
	php		; 08
	cli		; 58
	pha		; 48
	cpy #$E1C0.w		; C0 C0 E1
	adc [$49.b]		; 67 49
	lda $F88F4C.l		; AF 4C 8F F8
	and $027D02.l,X		; 3F 02 7D 02
	lda $C13E.w,X		; BD 3E C1
	sbc $623A00.l,X		; FF 00 3A 62
	sta ($82.b)		; 92 82
	and ($01.b),Y		; 31 01
	ora $05.b		; 05 05
	sbc $C579.w,Y		; F9 79 C5
	sta $00.b		; 85 00
	brk $00.b		; 00 00
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
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	bra  -4.b		; 80 FC
	ldy #$003E.w		; A0 3E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  32.b		; 80 20
	jsr $4040.w		; 20 40 40
	cld		; D8
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $00.b,X		; 36 00
	dec A		; 3A
	tsb $2B.b		; 04 2B
	trb $2D.b		; 14 2D
	asl $5D.b,X		; 16 5D
	rol $EE.b		; 26 EE
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	asl $02.b,X		; 16 02
	asl $00.b,X		; 16 00
	rol $1C08.w		; 2E 08 1C
	tsb $D6.b		; 04 D6
	lsr $7E.b,X		; 56 7E
	lda $7F5FA0.l		; AF A0 5F 7F
	bra  56.b		; 80 38
	cpy #$807C.w		; C0 7C 80
	sty $0400.w		; 8C 00 04
	brk $06.b		; 00 06
	adc $00AF00.l,X		; 7F 00 AF 00
	eor $000000.l,X		; 5F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7B.b		; 00 7B
	jsr ($7806.w,X)		; FC 06 78
	tda		; 7B
	brk $83.b		; 00 83
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($F901.w,X)		; FC 01 F9
	brk $81.b		; 00 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lsr $FDAD.w,X		; 5E AD FD
	txa		; 8A
	stp		; DB
	lda $FF.b		; A5 FF
	.db $82, $7E, $41		; 82 7E 41
	adc $6B43.w,X		; 7D 43 6B
	mvn $A0,$1F		; 54 1F A0
	and $951F92.l,X		; 3F 92 1F 95
	lda $B5B79A.l,X		; BF 9A B7 B5
	eor $D81BCE.l		; 4F CE 1B D8
	ora [$C3.b],Y		; 17 C3
	brk $E0.b		; 00 E0
	inc $FEF0.w,X		; FE F0 FE
	cpx #$90EE.w		; E0 EE 90
	stz $7E7C.w,X		; 9E 7C 7E
	ldy $C0FF.w,X		; BC FF C0
	sbc $00FF00.l,X		; FF 00 FF 00
	beq   0.b		; F0 00
	sed		; F8
	clc		; 18
	pea $FC64.w		; F4 64 FC
	bra  -4.b		; 80 FC
	rti		; 40

	jsr ($C03C.w,X)		; FC 3C C0
	cpy #$3C3C.w		; C0 3C 3C
	ora $11.b		; 05 11
	ora $0C0518.l		; 0F 18 05 0C
	ora $07.b,S		; 03 07
	brk $03.b		; 00 03
	cpx #$B001.w		; E0 01 B0
	rts		; 60

	sed		; F8
	bvc  14.b		; 50 0E
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $60.b		; 00 60
	brk $50.b		; 00 50
	brk $00.b		; 00 00
	sbc $F63FB0.l,X		; FF B0 3F F6
	ora [$3E.b]		; 07 3E
	brk $4F.b		; 00 4F
	cpy #$F011.w		; C0 11 F0
	asl $7E.b		; 06 7E
	ora $808010.l		; 0F 10 80 80
	cmp #$F809.w		; C9 09 F8
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	bra 111.b		; 80 6F
	rts		; 60

	ora $0018.w,Y		; 19 18 00
	brk $95.b		; 00 95
	jsl $D0209D.l		; 22 9D 20 D0
	jsr $207F.w		; 20 7F 20
	lsr $56.b,X		; 56 56
	stx $D6.b,Y		; 96 D6
	ldx $A6.b		; A6 A6
	ror $A6.b		; 66 A6
	dex		; CA
	ora $EF0FC2.l		; 0F C2 0F EF
	and $8000C0.l		; 2F C0 00 80
	and $267F56.l,X		; 3F 56 7F 26
	adc $9EBF86.l,X		; 7F 86 BF 9E
	lsr $079E.w		; 4E 9E 07
	lda [$1F.b]		; A7 1F
	eor $3FFFBF.l,X		; 5F BF FF 3F
	adc $FFFFFF.l,X		; 7F FF FF FF
	jsr ($6EFF.w,X)		; FC FF 6E
	adc $467766.l		; 6F 66 77 46
	adc $1FDF8F.l		; 6F 8F DF 1F
	and $7CFF3F.l,X		; 3F 3F FF 7C
	sbc $04FF70.l,X		; FF 70 FF 04
	tsb $03.b		; 04 03
	ora $0F.b,S		; 03 0F
	ora $F17F7F.l,X		; 1F 7F 7F F1
	inc $E1DE.w,X		; FE DE E1
	cmp $EE.b,X		; D5 EE
	stz $6F.b,X		; 74 6F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	ora $7F.b,S		; 03 7F
	asl $C0FF.w,X		; 1E FF C0
	inc $E1C1.w,X		; FE C1 E1
	.db $42, $E2		; 42 E2
	phd		; 0B
	xba		; EB
	sbc $D0EDC1.l,X		; FF C1 ED D0
	sbc $99E4.w,Y		; F9 E4 99
	cpx $F3.b		; E4 F3
	asl $8E52.w		; 0E 52 8E
	txa		; 8A
	ror $E0.b		; 66 E0
	asl $14.b,X		; 16 14
	pei ($D3.b)		; D4 D3
	cpy #$E4C7.w		; C0 C7 E4
	ora [$E4.b]		; 07 E4
	ora $04.b		; 05 04
	and $04.b,X		; 35 04
	and $0B20.w,Y		; 39 20 0B
	cop $00.b		; 02 00
	sbc $87FF18.l,X		; FF 18 FF 87
	adc $090F70.l,X		; 7F 70 0F 09
	asl $0A.b		; 06 0A
	tsb $1C.b		; 04 1C
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	beq 100.b		; F0 64
	stz $18.b		; 64 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$F8.b]		; 07 F8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($FE.b,X)		; 01 FE
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $83.b		; 00 83
	sta $1E.b,S		; 83 1E
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $9C60A0.l,X		; 9F A0 60 9C
	sta ($68.b,S),Y		; 93 68
	ora $002890.l		; 0F 90 28 00
	beq   0.b		; F0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	ora $2F2C9F.l,X		; 1F 9F 2C 2F
	beq -16.b		; F0 F0
	bne -16.b		; D0 F0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta [$78.b]		; 87 78
	sbc $008000.l,X		; FF 00 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($0004.w,X)		; 7C 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	bit $FE0D.w,X		; 3C 0D FE
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	ora ($F0.b,S),Y		; 13 F0
	stz $FA80.w,X		; 9E 80 FA
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bmi   1.b		; 30 01
	brk $0F.b		; 00 0F
	brk $7F.b		; 00 7F
	brk $FD.b		; 00 FD
	ora ($0E.b,X)		; 01 0E
	ora ($7D.b,X)		; 01 7D
	cop $E7.b		; 02 E7
	ora $7339FE.l,X		; 1F FE 39 73
	bit $306C.w		; 2C 6C 30
	beq -128.b		; F0 80
	rti		; 40

	bra   1.b		; 80 01
	brk $03.b		; 00 03
	ora ($1F.b,X)		; 01 1F
	brk $7F.b		; 00 7F
	lsr $BC.b		; 46 BC
	bpl -80.b		; 10 B0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B4.b		; 00 B4
	cli		; 58
	stz $98.b,X		; 74 98
	clv		; B8
	rts		; 60

	inx		; E8
	bmi -16.b		; 30 F0
	cpy #$98.b		; C0 98
	rts		; 60

	sei		; 78
	bra -128.b		; 80 80
	brk $58.b		; 00 58
	brk $B8.b		; 00 B8
	jsr $1070.w		; 20 70 10
	beq -64.b		; F0 C0
	cpx #$20.b		; E0 20
	cpx #$80.b		; E0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	asl $3500.w		; 0E 00 35
	asl A		; 0A
	eor [$3A.b]		; 47 3A
	txy		; 9B
	stz $FC.b,X		; 74 FC
	trb $BB.b		; 14 BB
	trb $2D.b		; 14 2D
	ora ($2A.b,S),Y		; 13 2A
	ora $01.b,X		; 15 01
	brk $00.b		; 00 00
	brk $31.b		; 00 31
	bmi  71.b		; 30 47
	mvp $00,$03		; 44 03 00
	tsb $04.b		; 04 04
	ora ($12.b)		; 12 12
	asl $04.b		; 06 04
	ora $35C379.l		; 0F 79 C3 35
	adc $85.b,S		; 63 85
	cmp $84.b,S		; C3 84
	lda $C4.b,S		; A3 C4
	sbc #$2A.b		; E9 2A
	adc ($9B.b,X)		; 61 9B
	txy		; 9B
	stz $81.b		; 64 81
	brk $C9.b		; 00 C9
	brk $F9.b		; 00 F9
	bra  57.b		; 80 39
	ora ($19.b,X)		; 01 19
	ora ($14.b,X)		; 01 14
	brk $95.b		; 00 95
	bcc   0.b		; 90 00
	brk $AB.b		; 00 AB
	phy		; 5A
	inc $95.b,X		; F6 95
	dec $FDAA.w,X		; DE AA FD
	php		; 08
	inc $9D0A.w,X		; FE 0A 9D
	rtl		; 6B

	stz $83.b,X		; 74 83
	bcs 112.b		; B0 70
	iny		; C8
	stz $5CC4.w,X		; 9E C4 5C
	sbc #$48.b		; E9 48
	xba		; EB
	inx		; E8
	sbc #$E8.b		; E9 E8
	.db $62, $0A, $80		; 62 0A 80
	php		; 08
	brk $78.b		; 00 78
	tya		; 98
	adc [$48.b]		; 67 48
	sty $88.b		; 84 88
	cpx #$A9.b		; E0 A9
	bmi  86.b		; 30 56
	clc		; 18
	lda [$84.b],Y		; B7 84
	eor $FA17C2.l		; 4F C2 17 FA
	adc [$67.b]		; 67 67
	and [$37.b],Y		; 37 37
	ora [$17.b],Y		; 17 17
	dec $06.b		; C6 06
	inx		; E8
	php		; 08
	sei		; 78
	brk $BA.b		; 00 BA
	bra  42.b		; 80 2A
	plp		; 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	ora $4220.w,X		; 1D 20 42
	and ($00.b),Y		; 31 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	tsb $000D.w		; 0C 0D 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	ora $877FBF.l		; 0F BF 7F 87
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $7F00.w		; 0C 00 7F
	ora $07077F.l		; 0F 7F 07 07
	asl $3F00.w		; 0E 00 3F
	brk $7F.b		; 00 7F
	ora ($7F.b,X)		; 01 7F
	ora [$BC.b]		; 07 BC
	adc $B3.b,S		; 63 B3
	ldy $A3BF.w		; AC BF A3
	clv		; B8
	lda [$00.b]		; A7 00
	brk $0C.b		; 00 0C
	tsb $3233.w		; 0C 33 32
	ora $600308.l		; 0F 08 03 60
	and $EC2FE3.l		; 2F E3 2F EC
	and [$E0.b]		; 27 E0
	cpx #$00.b		; E0 00
	beq  96.b		; F0 60
	beq -64.b		; F0 C0
	clv		; B8
	rti		; 40

	jmp ($FE88.w,X)		; 7C 88 FE
	adc $F9FF.w,X		; 7D FF F9
	rol $00C0.w,X		; 3E C0 00
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	jsr $80C0.w		; 20 C0 80
	sed		; F8
	bvs  -4.b		; 70 FC
	bra  -4.b		; 80 FC
	tsb $FD.b		; 04 FD
	bit $0000.w,X		; 3C 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	ldy #$3C.b		; A0 3C
	pea $9C07.w		; F4 07 9C
	bra 103.b		; 80 67
	cpx #$1C.b		; E0 1C
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	sed		; F8
	brk $7F.b		; 00 7F
	brk $9F.b		; 00 9F
	bra  99.b		; 80 63
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -16.b		; 80 F0
	sta $030C10.l,X		; 9F 10 0C 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	sbc [$04.b],Y		; F7 04
	cpy #$40.b		; C0 40
	cpx #$E0.b		; E0 E0
	beq -16.b		; F0 F0
	sed		; F8
	jsr ($7EBE.w,X)		; FC BE 7E
	adc $071B1F.l		; 6F 1F 1B 07
	asl $01.b		; 06 01
	brk $60.b		; 00 60
	rti		; 40

	beq -32.b		; F0 E0
	jsr ($FE30.w,X)		; FC 30 FE
	tsb $027F.w		; 0C 7F 02
	ora $000700.l,X		; 1F 00 07 00
	ora ($30.b,X)		; 01 30
	ora $02030C.l		; 0F 0C 03 02
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $0E.b		; 00 0E
	ora ($04.b,X)		; 01 04
	ora $03.b,S		; 03 03
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $00.b,S		; 03 00
	brk $84.b		; 00 84
	sei		; 78
	mvp $46,$B8		; 44 B8 46
	clv		; B8
	jsl $DE21DC.l		; 22 DC 21 DE
	bmi -49.b		; 30 CF
	cli		; 58
	sta [$87.b]		; 87 87
	brk $60.b		; 00 60
	rts		; 60

	jsr $0020.w		; 20 20 00
	brk $88.b		; 00 88
	dey		; 88
	sty $84.b		; 84 84
	sta $83.b,S		; 83 83
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	brk $84.b		; 00 84
	sei		; 78
	asl $61E0.w,X		; 1E E0 61
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	jsr $F93F.w		; 20 3F F9
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	bpl  -2.b		; 10 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $E0FF00.l,X		; FF 00 FF E0
	ora $FCFF03.l,X		; 1F 03 FF FC
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $1C0000.l,X		; FF 00 00 1C
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$0F.b],Y		; 17 0F
	sec		; 38
	ora [$7C.b]		; 07 7C
	ora ($5B.b,S),Y		; 13 5B
	bit $41.b		; 24 41
	rol $3F50.w,X		; 3E 50 3F
	pha		; 48
	and $081F24.l,X		; 3F 24 1F 08
	php		; 08
	ora ($03.b,S),Y		; 13 03
	clc		; 18
	php		; 08
	brk $00.b		; 00 00
	trb $14.b		; 14 14
	tsb $04.b		; 04 04
	asl $16.b,X		; 16 16
	phd		; 0B
	phd		; 0B
	sta $F8.b		; 85 F8
	php		; 08
	beq  16.b		; F0 10
	cpx #$E0.b		; E0 E0
	brk $70.b		; 00 70
	bra  40.b		; 80 28
	bne  20.b		; D0 14
	inx		; E8
	mvp $70,$F8		; 44 F8 70
	bvs -32.b		; 70 E0
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$20.b		; C0 20
	jsr $F030.w		; 20 30 F0
	tya		; 98
	sei		; 78
	cli		; 58
	sec		; 38
	bit $141C.w		; 2C 1C 14
	asl $0E16.w		; 0E 16 0E
	ora ($0E.b)		; 12 0E
	ora ($0F.b,S),Y		; 13 0F
	bpl  -8.b		; 10 F8
	bpl 124.b		; 10 7C
	php		; 08
	bit $1E00.w,X		; 3C 00 1E
	tsb $0F.b		; 04 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	ora $100F31.l		; 0F 31 0F 10
	ora $010601.l		; 0F 01 06 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	ora $14.b,X		; 15 14
	cop $02.b		; 02 02
	tsb $05.b		; 04 05
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $DA32.w		; 8D 32 DA
	ora $1AFC.w		; 0D FC 1A
	sed		; F8
	eor [$DD.b]		; 47 DD
	dey		; 88
	txs		; 9A
	tsb $489F.w		; 0C 9F 48
	sta $7272E9.l,X		; 9F E9 72 72
	bit $19E0.w		; 2C E0 19
	ora #$C7.b		; 09 C7
	sta [$AA.b]		; 87 AA
	ora $6D.b,S		; 03 6D
	ora ($6C.b,X)		; 01 6C
	mvp $25,$2C		; 44 2C 25
	and [$83.b],Y		; 37 83
	adc [$83.b],Y		; 77 83
	sbc $0F7F07.l		; EF 07 7F 0F
	inc $FE1F.w,X		; FE 1F FE
	rol $1EED.w,X		; 3E ED 1E
	lda ($6D.b)		; B2 6D
	wai		; CB
	xce		; FB
	asl A		; 0A
	tas		; 1B
	ora ($D7.b)		; 12 D7
	stx $CF.b		; 86 CF
	asl $0CDF.w		; 0E DF 0C
	lda $011E00.l,X		; BF 00 1E 01
	adc $4C7F.w		; 6D 7F 4C
	adc $437C43.l,X		; 7F 43 7C 43
	adc $512F44.l,X		; 7F 44 2F 51
	tad		; 5B
	ldy $F5.b		; A4 F5
	asl A		; 0A
	stx $4F71.w		; 8E 71 4F
	cmp $53.b,S		; C3 53
	bne  31.b		; D0 1F
	jmp.w [$CB0F]		; DC 0F CB
	ora ($C2.b,S),Y		; 13 C2
	and $0E99.w,X		; 3D 99 0E
	tsb $73.b		; 04 73
	adc ($C6.b)		; 72 C6
	sec		; 38
	inc $FEC0.w,X		; FE C0 FE
	jmp ($DD3F.w,X)		; 7C 3F DD
	sbc $C3FC03.l,X		; FF 03 FC C3
	sbc $20FF70.l,X		; FF 70 FF 20
	sbc $FDC0.w,Y		; F9 C0 FD
	bit $80FD.w,X		; 3C FD 80
	jsr ($C820.w,X)		; FC 20 C8
	iny		; C8
	sbc ($33.b,S),Y		; F3 33
	sed		; F8
	dey		; 88
	bvs  80.b		; 70 50
	cpy #$3F.b		; C0 3F
	inc $F941.w,X		; FE 41 F9
	ror $3F.b,X		; 76 3F
	dec $18E7.w		; CE E7 18
	trb $0303.w		; 1C 03 03
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $FE2060.l		; 0F 60 20 FE
	dey		; 88
	sbc $071F31.l,X		; FF 31 1F 07
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $E71FF7.l		; EF F7 1F E7
	cpx $1F13.w		; EC 13 1F
	cpx #$EC.b		; E0 EC
	bpl 112.b		; 10 70
	bra  32.b		; 80 20
	cpy #$C0.b		; C0 C0
	brk $17.b		; 00 17
	bpl 111.b		; 10 6F
	pla		; 68
	ora $00E00C.l,X		; 1F 0C E0 00
	beq -32.b		; F0 E0
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $38C700.l,X		; FF 00 C7 38
	sbc $E01FFF.l,X		; FF FF 1F E0
	dec $38.b		; C6 38
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	cmp [$FF.b]		; C7 FF
	brk $F8.b		; 00 F8
	clc		; 18
	bit $0004.w,X		; 3C 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	cpy #$E0.b		; C0 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	jsr $8080.w		; 20 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	jsr $E83C.w		; 20 3C E8
	ora $0700FE.l		; 0F FE 00 07
	brk $0C.b		; 00 0C
	jsr ($FF01.w,X)		; FC 01 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	pea $FF04.w		; F4 04 FF
	brk $FF.b		; 00 FF
	brk $F3.b		; 00 F3
	beq   6.b		; F0 06
	asl $C0.b		; 06 C0
	sbc $0EFF38.l,X		; FF 38 FF 0E
	sbc $393FC0.l,X		; FF C0 3F 39
	asl $07.b		; 06 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $39.b		; 00 39
	and $C6C6.w,Y		; 39 C6 C6
	and ($31.b),Y		; 31 31
	ora $00000F.l		; 0F 0F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	ora [$00.b]		; 07 00
	tsb $0C.b		; 04 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$E0.b		; E0 E0
	sed		; F8
	sed		; F8
	jmp ($A0E0.w,X)		; 7C E0 A0
	bvs 126.b		; 70 7E
	asl $001E.w,X		; 1E 1E 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpy #$F8.b		; C0 F8
	sei		; 78
	jsr ($E000.w,X)		; FC 00 E0
	brk $7E.b		; 00 7E
	brk $1F.b		; 00 1F
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
	ror $3C10.w		; 6E 10 3C
	brk $60.b		; 00 60
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -76.b		; 80 B4
	ldy $C0.b		; A4 C0
	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $1B.b		; 00 1B
	asl A		; 0A
	trb $C00C.w		; 1C 0C C0
	jsr $001F.w		; 20 1F 00
	asl $02.b		; 06 02
	bit $00.b,X		; 34 00
	eor #$00.b		; 49 00
	lda $01.b,S		; A3 01
	tsb $1F.b		; 04 1F
	ora $1F.b,S		; 03 1F
	ora $1F00FF.l,X		; 1F FF 00 1F
	ora ($07.b,X)		; 01 07
	ora $37.b,S		; 03 37
	rol $7E.b,X		; 36 7E
	eor $ACFD.w,X		; 5D FD AC
	brk $ED.b		; 00 ED
	bra  57.b		; 80 39
	plp		; 28
	sta $80.b,S		; 83 80
	cop $00.b		; 02 00
	bra   0.b		; 80 00
	eor ($80.b,X)		; 41 80
	inc $0381.w,X		; FE 81 03
	lda $C6EF02.l		; AF 02 EF C6
	sbc $FDFF7C.l,X		; FF 7C FF FD
	sbc $BE7F7F.l,X		; FF 7F 7F BE
	ldx $8181.w,Y		; BE 81 81
	ora $06CB02.l		; 0F 02 CB 06
	sta $1F06.w		; 8D 06 1F
	tsb $37.b		; 04 37
	tsb $047E.w		; 0C 7E 04
	dec $EC30.w,X		; DE 30 EC
	beq -14.b		; F0 F2
	sbc ($36.b)		; F2 36
	inc $76.b,X		; F6 76
	inc $E6.b,X		; F6 E6
	inc $CC.b		; E6 CC
	cpy $8C8C.w		; CC 8C 8C
	bvs 112.b		; 70 70
	beq -16.b		; F0 F0
	cld		; D8
	inc $BC.b		; E6 BC
	cmp $DEB1EE.l,X		; DF EE B1 DE
	sbc ($EF.b,X)		; E1 EF
	cmp $FE71DE.l,X		; DF DE 71 FE
	adc $FF.b,S		; 63 FF
	ora $DCE0E1.l,X		; 1F E1 E0 DC
	jmp.w [$B0B0]		; DC B0 B0
	sbc ($E1.b,X)		; E1 E1
	cmp $7171DF.l,X		; DF DF 71 71
	adc $63.b,S		; 63 63
	ora $380D1F.l,X		; 1F 1F 0D 38
	ora $3C68.w,X		; 1D 68 3C
	inx		; E8
	adc $FDA8.w,X		; 7D A8 FD
	tay		; A8
	cpx $ED59.w		; EC 59 ED
	eor $98FE.w,Y		; 59 FE 98
	dex		; CA
	phd		; 0B
	txa		; 8A
	phd		; 0B
	pld		; 2B
	pld		; 2B
	ror A		; 6A
	rtl		; 6B

	tsx		; BA
	tyx		; BB
	phx		; DA
	stp		; DB
	phy		; 5A
	tad		; 5B
	sta $9899.w,Y		; 99 99 98
	bpl -80.b		; 10 B0
	bra  70.b		; 80 46
	brk $8C.b		; 00 8C
	brk $3C.b		; 00 3C
	php		; 08
	cld		; D8
	bpl -48.b		; 10 D0
	cpy #$13.b		; C0 13
	brk $60.b		; 00 60
	sed		; F8
	rti		; 40

	beq -128.b		; F0 80
	dec $00.b		; C6 00
	sty $3C00.w		; 8C 00 3C
	jsr $20F8.w		; 20 F8 20
	beq -32.b		; F0 E0
	sbc ($02.b,S),Y		; F3 02
	brk $02.b		; 00 02
	brk $43.b		; 00 43
	sta ($B9.b,X)		; 81 B9
	rti		; 40

	adc ($20.b),Y		; 71 20
	adc ($20.b),Y		; 71 20
	ora ($20.b),Y		; 11 20
	bpl  32.b		; 10 20
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $C3.b		; 00 C3
	brk $F9.b		; 00 F9
	brk $71.b		; 00 71
	brk $71.b		; 00 71
	brk $31.b		; 00 31
	brk $30.b		; 00 30
	adc $0C3B18.l		; 6F 18 3B 0C
	and $0C370C.l,X		; 3F 0C 37 0C
	and $3F06.w,X		; 3D 06 3F
	asl $9F.b		; 06 9F
	stx $9F.b		; 86 9F
	brk $9C.b		; 00 9C
	stz $DCDC.w		; 9C DC DC
	cpy $CECC.w		; CC CC CE
	dec $CECE.w		; CE CE CE
	dec $C6.b		; C6 C6
	ror $E6.b		; 66 E6
	rts		; 60

	cpx #$FE.b		; E0 FE
	clc		; 18
	inc $DE18.w,X		; FE 18 DE
	sec		; 38
	dec $38.b,X		; D6 38
	inc $38.b,X		; F6 38
	jsr ($FC30.w,X)		; FC 30 FC
	bmi -35.b		; 30 DD
	and ($19.b),Y		; 31 19
	ora $3939.w,Y		; 19 39 39
	and $3939.w,Y		; 39 39 39
	and $3939.w,Y		; 39 39 39
	tsa		; 3B
	tsa		; 3B
	and ($33.b,S),Y		; 33 33
	and ($33.b)		; 32 33
	bcs   0.b		; B0 00
	sed		; F8
	bmi -51.b		; 30 CD
	cld		; D8
	tsa		; 3B
	tsb $086C.w		; 0C 6C 08
	cpy $9880.w		; CC 80 98
	brk $90.b		; 00 90
	brk $00.b		; 00 00
	bcs   0.b		; B0 00
	sed		; F8
	jsr $C0FD.w		; 20 FD C0
	sbc $00EC80.l,X		; FF 80 EC 00
	cpy $9800.w		; CC 00 98
	brk $90.b		; 00 90
	tsb $00.b		; 04 00
	tsb $3014.w		; 0C 14 30
	bpl 126.b		; 10 7E
	cop $07.b		; 02 07
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	brk $66.b		; 00 66
	inc A		; 1A
	ora $07.b,S		; 03 07
	ora $1F.b,S		; 03 1F
	ora $7F013F.l		; 0F 3F 01 7F
	brk $07.b		; 00 07
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($7F.b,X)		; 01 7F
	rol $18.b,X		; 36 18
	jmp $205D30.l		; 5C 30 5D 20
	adc $7000.w,Y		; 79 00 70
	brk $0F.b		; 00 0F
	php		; 08
	tsb $00.b		; 04 00
	dec $44.b		; C6 44
	cmp $BBD9.w,Y		; D9 D9 BB
	tyx		; BB
	lda ($B3.b)		; B2 B3
	ldx $A7.b		; A6 A7
	sta $FFF08F.l		; 8F 8F F0 FF
	sed		; F8
	jsr ($FE38.w,X)		; FC 38 FE
	ora $9F02.w		; 0D 02 9F
	asl $DF.b		; 06 DF
	ora [$CF.b]		; 07 CF
	ora $C7.b,S		; 03 C7
	sta $3D.b		; 85 3D
	bit $ED.b		; 24 ED
	mvp $00,$48		; 44 48 00
	inc $F6.b,X		; F6 F6
	adc [$E7.b]		; 67 E7
	and [$E7.b]		; 27 E7
	and ($F3.b,S),Y		; 33 F3
	and $C2FD.w,Y		; 39 FD C2
	inc $EE02.w,X		; FE 02 EE
	ora [$4F.b]		; 07 4F
	sta $B900.w,X		; 9D 00 B9
	plp		; 28
	sbc ($32.b,S),Y		; F3 32
	dec $04.b		; C6 04
	inc $84.b		; E6 84
	sbc $738E.w		; ED 8E 73
	cmp $B8.b,S		; C3 B8
	rts		; 60

	.db $62, $7F, $46		; 62 7F 46
	adc $B83F0C.l,X		; 7F 0C 3F B8
	ldx $9E98.w,Y		; BE 98 9E
	bne -33.b		; D0 DF
	cpx $67EF.w		; EC EF 67
	adc [$15.b]		; 67 15
	asl $082F.w		; 0E 2F 08
	and $012F00.l		; 2F 00 2F 01
	asl $00.b,X		; 16 00
	and ($00.b)		; 32 00
	sbc ($01.b,S),Y		; F3 01
	cmp $C4.b,S		; C3 C4
	brk $1F.b		; 00 1F
	bpl  63.b		; 10 3F
	bpl  63.b		; 10 3F
	bpl  63.b		; 10 3F
	ora #$1F.b		; 09 1F
	ora $0C3F.w		; 0D 3F 0C
	sbc $97FF38.l,X		; FF 38 FF 97
	asl $0E9D.w		; 0E 9D 0E
	stz $3A8C.w,X		; 9E 8C 3A
	tsb $182E.w		; 0C 2E 18
	bit $3418.w,X		; 3C 18 34
	clc		; 18
	bit $6E10.w,X		; 3C 10 6E
	inc $EE6E.w		; EE 6E EE
	adc $DDED.w		; 6D ED DD
	cmp $DDDD.w,X		; DD DD DD
	stp		; DB
	stp		; DB
	stp		; DB
	stp		; DB
	stp		; DB
	stp		; DB
	sbc ($40.b,S),Y		; F3 40
	lda ($C0.b),Y		; B1 C0
	dec $0E.b,X		; D6 0E
	tsb $0700.w		; 0C 00 07
	ora ($1C.b,X)		; 01 1C
	tsb $19.b		; 04 19
	php		; 08
	ora $FC0C06.l		; 0F 06 0C FC
	asl $01FE.w		; 0E FE 01
	cmp $000F03.l,X		; DF 03 0F 00
	ora [$03.b]		; 07 03
	ora $001F06.l,X		; 1F 06 1F 00
	ora $F3EF7F.l		; 0F 7F EF F3
	tsb $007F.w		; 0C 7F 00
	brk $00.b		; 00 00
	jsr $6220.w		; 20 20 62
	.db $62, $E6, $06		; 62 E6 06
	lda $EFEF01.l		; AF 01 EF EF
	asl $800E.w		; 0E 0E 80
	bra  -1.b		; 80 FF
	sbc $9DFFDF.l,X		; FF DF FF 9D
	sbc $10FF19.l,X		; FF 19 FF 10
	lda $E3C0BB.l,X		; BF BB C0 E3
	brk $03.b		; 00 03
	brk $33.b		; 00 33
	brk $73.b		; 00 73
	brk $E3.b		; 00 E3
	brk $41.b		; 00 41
	brk $07.b		; 00 07
	brk $E4.b		; 00 E4
	cpx $1C.b		; E4 1C
	trb $FCFC.w		; 1C FC FC
	cpy $8CFC.w		; CC FC 8C
	jsr ($FC1C.w,X)		; FC 1C FC
	ldx $F8FE.w,Y		; BE FE F8
	sed		; F8
	xce		; FB
	asl $FF.b		; 06 FF
	brk $FB.b		; 00 FB
	asl $FD.b		; 06 FD
	cop $FF.b		; 02 FF
	brk $FB.b		; 00 FB
	asl $AF.b		; 06 AF
	bvs 123.b		; 70 7B
	jsr ($0606.w,X)		; FC 06 06
	cop $02.b		; 02 02
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	cop $02.b		; 02 02
	asl $06.b		; 06 06
	bvs 112.b		; 70 70
	jsr ($FEFC.w,X)		; FC FC FE
	bpl -17.b		; 10 EF
	asl $FB.b,X		; 16 FB
	asl $EF.b		; 06 EF
	brk $ED.b		; 00 ED
	ora $E6.b,S		; 03 E6
	ora ($F1.b,X)		; 01 F1
	brk $58.b		; 00 58
	cpx #$19.b		; E0 19
	ora $1616.w,Y		; 19 16 16
	asl $06.b		; 06 06
	bpl  16.b		; 10 10
	ora ($13.b,S),Y		; 13 13
	ora $0E19.w,Y		; 19 19 0E
	asl $E7E7.w		; 0E E7 E7
	and $21.b,X		; 35 21
	tsa		; 3B
	jsr $100C.w		; 20 0C 10
	stx $08.b		; 86 08
	cpy $04.b		; C4 04
	cpx #$80.b		; E0 80
	sei		; 78
	cpx #$DE.b		; E0 DE
	bmi -62.b		; 30 C2
	sbc [$C4.b],Y		; F7 C4
	sbc $71FFE3.l,X		; FF E3 FF 71
	adc $9F3F3B.l,X		; 7F 3B 3F 9F
	sta $31E7E7.l,X		; 9F E7 E7 31
	and ($78.b),Y		; 31 78
	jsr $3069.w		; 20 69 30
	tad		; 5B
	bpl  94.b		; 10 5E
	ora ($88.b)		; 12 88
	pha		; 48
	cpy #$40.b		; C0 40
	iny		; C8
	pha		; 48
	cmp $0068.w,Y		; D9 68 00
	sei		; 78
	brk $79.b		; 00 79
	jsr $217B.w		; 20 7B 21
	adc $3FFF37.l,X		; 7F 37 FF 3F
	sbc $06FF37.l,X		; FF 37 FF 06
	inc $069F.w,X		; FE 9F 06
	lda $003F86.l,X		; BF 86 3F 00
	adc $3CDB1C.l		; 6F 1C DB 3C
	sbc $38.b,X		; F5 38
	tyx		; BB
	bvs -22.b		; 70 EA
	adc ($66.b),Y		; 71 66
	inc $46.b		; E6 46
	dec $C0.b		; C6 C0
	cpy #$9C.b		; C0 9C
	stz $3C3C.w		; 9C 3C 3C
	ply		; 7A
	ply		; 7A
	adc $75.b,X		; 75 75
	sbc $F5.b,X		; F5 F5
	sbc $FD00.w,X		; FD 00 FD
	rts		; 60

	sbc $F960.w,Y		; F9 60 F9
	ora ($70.b,X)		; 01 70
	cpy #$F0.b		; C0 F0
	cpy #$F1.b		; C0 F1
	cmp ($E3.b,X)		; C1 E3
	rep #$02		; C2 02
	ora $62.b,S		; 03 62
	adc $66.b,S		; 63 66
	adc [$06.b]		; 67 06
	ora [$EF.b]		; 07 EF
	sbc $CEEFEF.l		; EF EF EF CE
	cmp $00DFDC.l		; CF DC DF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B0.b		; 00 B0
	brk $E0.b		; 00 E0
	bra 112.b		; 80 70
	rts		; 60

	sed		; F8
	bmi  56.b		; 30 38
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs   0.b		; B0 00
	cpx #$80.b		; E0 80
	beq   0.b		; F0 00
	sed		; F8
	brk $38.b		; 00 38
	ora $0A08.w,Y		; 19 08 0A
	brk $0B.b		; 00 0B
	cop $05.b		; 02 05
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora $040E04.l,X		; 1F 04 0E 04
	ora $000700.l		; 0F 00 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $72.b		; 00 72
	brk $0E.b		; 00 0E
	tsb $04.b		; 04 04
	cop $82.b		; 02 82
	brk $C2.b		; 00 C2
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	ror $0E00.w,X		; 7E 00 0E
	brk $06.b		; 00 06
	brk $82.b		; 00 82
	brk $C2.b		; 00 C2
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	ror $20.b		; 66 20
	and [$10.b],Y		; 37 10
	asl $0F0C.w,X		; 1E 0C 0F
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	and $087F19.l,X		; 3F 19 7F 08
	and $001E00.l,X		; 3F 00 1E 00
	ora $000300.l		; 0F 00 03 00
	ora ($00.b,X)		; 01 00
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $B3.b		; 00 B3
	sta ($BF.b,S),Y		; 93 BF
	jsr $0050.w		; 20 50 00
	jmp ($3B20.w)		; 6C 20 3B
	trb $001C.w		; 1C 1C 00
	sta [$87.b]		; 87 87
	sbc $FF4CFF.l,X		; FF FF 4C FF
	rti		; 40

	sbc $107020.l,X		; FF 20 70 10
	jmp ($3F00.w,X)		; 7C 00 3F
	brk $1C.b		; 00 1C
	adc $002F20.l,X		; 7F 20 2F 00
	and [$00.b]		; 27 00
	ora [$05.b],Y		; 17 05
	ora ($02.b)		; 12 02
	bvc  48.b		; 50 30
	lda ($00.b),Y		; B1 00
	and $0018.w,Y		; 39 18 00
	adc $183F10.l,X		; 7F 10 3F 18
	and $0D1F08.l,X		; 3F 08 1F 0D
	ora $0E7F0F.l,X		; 1F 0F 7F 0E
	ldx $3E06.w,Y		; BE 06 3E
	sec		; 38
	bpl 121.b		; 10 79
	bpl 107.b		; 10 6B
	bpl 123.b		; 10 7B
	brk $B3.b		; 00 B3
	rts		; 60

	sbc ($60.b,S),Y		; F3 60
	bvc -32.b		; 50 E0
	beq -64.b		; F0 C0
	cmp [$D7.b],Y		; D7 D7
	ldx $B7.b,Y		; B6 B7
	ldy $B7.b,X		; B4 B7
	sty $87.b		; 84 87
	jmp ($6C6F.w)		; 6C 6F 6C
	adc $EFEFEF.l		; 6F EF EF EF
	sbc $7A1C2E.l		; EF 2E 1C 7A
	trb $1C7A.w		; 1C 7A 1C
	ror $7C18.w,X		; 7E 18 7C
	clc		; 18
	stz $18.b,X		; 74 18
	stz $18.b,X		; 74 18
	jmp ($DD10.w,X)		; 7C 10 DD
	cmp $9D9D.w,X		; DD 9D 9D
	sta $9D9D.w,X		; 9D 9D 9D
	sta $9B9B.w,X		; 9D 9B 9B
	txy		; 9B
	txy		; 9B
	txy		; 9B
	txy		; 9B
	txy		; 9B
	txy		; 9B
	adc ($00.b,X)		; 61 00
	cmp $80.b,S		; C3 80
	dec $80.b		; C6 80
	jmp $4000.w		; 4C 00 40
	brk $60.b		; 00 60
	rti		; 40

	jsr $B800.w		; 20 00 B8
	jsr $E180.w		; 20 80 E1
	brk $C3.b		; 00 C3
	brk $C6.b		; 00 C6
	bra -52.b		; 80 CC
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	cpy #$E0.b		; C0 E0
	rti		; 40

	sed		; F8
	and ($00.b,S),Y		; 33 00
	ora ($00.b,S),Y		; 13 00
	ora ($00.b,S),Y		; 13 00
	and ($10.b,X)		; 21 10
	bmi  16.b		; 30 10
	bit $3A1C.w,X		; 3C 1C 3A
	asl $0D1F.w		; 0E 1F 0D
	tsb $0C3C.w		; 0C 3C 0C
	trb $1C0C.w		; 1C 0C 1C
	asl $0F3E.w		; 0E 3E 0F
	and $013F03.l,X		; 3F 03 3F 01
	and $FF1F00.l,X		; 3F 00 1F FF
	clc		; 18
	sbc $10FF10.l,X		; FF 10 FF 10
	sbc $1FEF19.l,X		; FF 19 EF 1F
	sbc [$0E.b],Y		; F7 0E
	and $183F00.l,X		; 3F 00 3F 18
	clc		; 18
	clc		; 18
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	ora $1F19.w,Y		; 19 19 1F
	ora $C00E0E.l,X		; 1F 0E 0E C0
	cpy #$DC.b		; C0 DC
	jmp.w [$FEFD]		; DC FD FE
	sbc $E2FF62.l,X		; FF 62 FF E2
	sbc $1EFFF2.l,X		; FF F2 FF 1E
	sbc $03FE0C.l,X		; FF 0C FE 03
	xce		; FB
	ora [$FE.b]		; 07 FE
	inc $6262.w,X		; FE 62 62
.ACCU 8
	sep #$E2		; E2 E2
	sbc ($F2.b)		; F2 F2
	asl $0C1E.w,X		; 1E 1E 0C
	tsb $0303.w		; 0C 03 03
	ora [$07.b]		; 07 07
	sta $03.b		; 85 03
	cmp $00.b,S		; C3 00
	iny		; C8
	php		; 08
	bne  24.b		; D0 18
	dec $CE12.w,X		; DE 12 CE
	cop $8C.b		; 02 8C
	tsb $8F.b		; 04 8F
	php		; 08
	tda		; 7B
	tda		; 7B
	bit $373C.w,X		; 3C 3C 37
	and $213F27.l,X		; 3F 27 3F 21
	and $733F31.l,X		; 3F 31 3F 73
	adc $E07F70.l,X		; 7F 70 7F E0
	brk $B1.b		; 00 B1
	rti		; 40

	xce		; FB
	jsl $BC087C.l		; 22 7C 08 BC
	pla		; 68
	adc $0001.w,Y		; 79 01 00
	brk $02.b		; 00 02
	brk $1F.b		; 00 1F
	ora $244F4E.l,X		; 1F 4E 4F 24
	and [$9B.b]		; 27 9B
	txy		; 9B
	tda		; 7B
	tda		; 7B
	stx $87.b		; 86 87
	sbc $FFFDFF.l,X		; FF FF FD FF
	inx		; E8
	rti		; 40

	bne   0.b		; D0 00
	ldy #$00.b		; A0 00
	rts		; 60

	rti		; 40

	dec $9B80.w		; CE 80 9B
	brk $B8.b		; 00 B8
	bpl -40.b		; 10 D8
	bmi   0.b		; 30 00
	inx		; E8
	jsr $40F0.w		; 20 F0 40
	cpx #$80.b		; E0 80
	cpx #$00.b		; E0 00
	dec $9B00.w		; CE 00 9B
	brk $B8.b		; 00 B8
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	tsb $1800.w		; 0C 00 18
	brk $28.b		; 00 28
	bpl  81.b		; 10 51
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $71.b		; 00 71
	ora $000704.l		; 0F 04 07 00
	phd		; 0B
	tsb $1F.b		; 04 1F
	tsb $67.b		; 04 67
	brk $CC.b		; 00 CC
	rti		; 40

	stz $4000.w,X		; 9E 00 40
	cpy #$00.b		; C0 00
	ora $000700.l		; 0F 00 07 00
	ora $181F00.l		; 0F 00 1F 18
	adc $61FF33.l,X		; 7F 33 FF 61
	sbc $00FF3F.l,X		; FF 3F FF 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra  96.b		; 80 60
	cpy #$B0.b		; C0 B0
	jsr $909C.w		; 20 9C 90
	phd		; 0B
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	rti		; 40

	beq  96.b		; F0 60
	jsr ($FFF0.w,X)		; FC F0 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $34.b		; 00 34
	clc		; 18
	ply		; 7A
	bit $D7.b		; 24 D7
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $3C.b		; 00 3C
	brk $7E.b		; 00 7E
	jsr $02F7.w		; 20 F7 02
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $34.b		; 00 34
	brk $C0.b		; 00 C0
	bmi  32.b		; 30 20
	brk $60.b		; 00 60
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $34.b		; 00 34
	brk $F0.b		; 00 F0
	cpy #$E0.b		; C0 E0
	bra -32.b		; 80 E0
	rti		; 40

	brk $60.b		; 00 60
	brk $30.b		; 00 30
	jsr $20B0.w		; 20 B0 20
	sei		; 78
	bmi  48.b		; 30 30
	clc		; 18
	bpl   8.b		; 10 08
	bpl   0.b		; 10 00
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	cpy #$F0.b		; C0 F0
	rti		; 40

	beq   0.b		; F0 00
	sei		; 78
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	adc $3D10.w,X		; 7D 10 3D
	bpl -67.b		; 10 BD
	bpl -68.b		; 10 BC
	bpl -68.b		; 10 BC
	bpl  44.b		; 10 2C
	bpl  60.b		; 10 3C
	brk $7C.b		; 00 7C
	brk $92.b		; 00 92
	sta ($D2.b,S),Y		; 93 D2
	cmp ($52.b,S),Y		; D3 52
	cmp ($53.b,S),Y		; D3 53
	cmp ($53.b,S),Y		; D3 53
	cmp ($D3.b,S),Y		; D3 D3
	cmp ($D3.b,S),Y		; D3 D3
	cmp ($83.b,S),Y		; D3 83
	sta $8C.b,S		; 83 8C
	pha		; 48
	stz $7010.w,X		; 9E 10 70
	rti		; 40

	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	dey		; 88
	brk $88.b		; 00 88
	brk $90.b		; 00 90
	php		; 08
	bmi  -4.b		; 30 FC
	rts		; 60

	inc $F080.w,X		; FE 80 F0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $88.b		; 00 88
	brk $88.b		; 00 88
	brk $98.b		; 00 98
	ora $0D1B0C.l,X		; 1F 0C 1B 0D
	dec A		; 3A
	trb $30DD.w		; 1C DD 30
	and ($20.b),Y		; 31 20
	adc ($20.b),Y		; 71 20
	eor ($20.b,X)		; 41 20
	rts		; 60

	brk $00.b		; 00 00
	ora $011F00.l,X		; 1F 00 1F 01
	and $00FD00.l,X		; 3F 00 FD 00
	and ($00.b),Y		; 31 00
	adc ($00.b),Y		; 71 00
	adc ($00.b,X)		; 61 00
	rts		; 60

	tyx		; BB
	stz $1C2B.w		; 9C 2B 1C
	ora $4E5D0C.l,X		; 1F 0C 5D 4E
	cmp [$CE.b],Y		; D7 CE
	cmp $878AC6.l,X		; DF C6 8A 87
	sta $DC5C03.l		; 8F 03 5C DC
	jmp.w [$EEDC]		; DC DC EE
	inc $EEAE.w		; EE AE EE
	rol $2FEE.w		; 2E EE 2F
	sbc $77F777.l		; EF 77 F7 77
	sbc [$FB.b],Y		; F7 FB
	ora [$FF.b]		; 07 FF
	ora $FF.b,S		; 03 FF
	ora $FF.b,S		; 03 FF
	ora $FF.b,S		; 03 FF
	ora $FF.b,S		; 03 FF
	ora $FF.b,S		; 03 FF
	ora $FF.b,S		; 03 FF
	ora $07.b,S		; 03 07
	ora [$07.b]		; 07 07
	ora [$03.b]		; 07 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $B8.b,S		; 03 B8
	bmi -104.b		; 30 98
	bpl -50.b		; 10 CE
	brk $C3.b		; 00 C3
	cop $CD.b		; 02 CD
	ora #$CF.b		; 09 CF
	ora ($D9.b,X)		; 01 D9
	bpl -48.b		; 10 D0
	brk $40.b		; 00 40
	sei		; 78
	rts		; 60

	sei		; 78
	bmi  62.b		; 30 3E
	bit $323F.w,X		; 3C 3F 32
	and $203F30.l,X		; 3F 30 3F 20
	and $3020.w,Y		; 39 20 30
	stz $951C.w,X		; 9E 1C 95
	clc		; 18
	cli		; 58
	brk $70.b		; 00 70
	jsr $10A0.w		; 20 A0 10
	tya		; 98
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $61.b		; 00 61
	sbc $20FD60.l,X		; FF 60 FD 20
	sei		; 78
	brk $70.b		; 00 70
	brk $B0.b		; 00 B0
	brk $98.b		; 00 98
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	beq -96.b		; F0 A0
	bvs  96.b		; 70 60
	ldy #$00.b		; A0 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -128.b		; F0 80
	beq  64.b		; F0 40
	cpx #$00.b		; E0 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $6820.w,X		; 7E 20 68
	sec		; 38
	ror $7330.w,X		; 7E 30 73
	and ($23.b,X)		; 21 23
	brk $03.b		; 00 03
	ora ($04.b,X)		; 01 04
	brk $09.b		; 00 09
	ora ($01.b,X)		; 01 01
	adc $017F07.l,X		; 7F 07 7F 01
	adc $007300.l,X		; 7F 00 73 00
	and $00.b,S		; 23 00
	ora $03.b,S		; 03 03
	ora [$06.b]		; 07 06
	ora $1FC0CF.l		; 0F CF C0 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $C7.b		; 00 C7
	cpy #$03.b		; C0 03
	brk $1F.b		; 00 1F
	brk $9F.b		; 00 9F
	bra  48.b		; 80 30
	beq -32.b		; F0 E0
	cpx #$E0.b		; E0 E0
	cpx #$F0.b		; E0 F0
	beq  56.b		; F0 38
	sed		; F8
	jsr ($E0FC.w,X)		; FC FC E0
	cpx #$60.b		; E0 60
	cpx #$24.b		; E0 24
	eor $79.b		; 45 79
	ora ($38.b,X)		; 01 38
	brk $82.b		; 00 82
	brk $C7.b		; 00 C7
	bra  -1.b		; 80 FF
	brk $DE.b		; 00 DE
	cpx #$FF.b		; E0 FF
	beq -102.b		; F0 9A
	sbc $C7FF86.l,X		; FF 86 FF C7
	sbc $B87D7D.l,X		; FF 7D 7D B8
	clv		; B8
	brk $00.b		; 00 00
	sbc ($E1.b,X)		; E1 E1
	sed		; F8
	sed		; F8
	sta ($81.b,S),Y		; 93 81
	and ($21.b,S),Y		; 33 21
	ora ($21.b)		; 12 21
	and ($02.b,X)		; 21 02
	ror $40.b,X		; 76 40
	bmi  32.b		; 30 20
	clc		; 18
	bpl -56.b		; 10 C8
	rti		; 40

	rts		; 60

	sbc ($C0.b,S),Y		; F3 C0
	sbc ($C0.b,S),Y		; F3 C0
	sbc ($C0.b,S),Y		; F3 C0
	sbc $80.b,S		; E3 80
	inc $C0.b,X		; F6 C0
	beq -32.b		; F0 E0
	sed		; F8
	bmi 120.b		; 30 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	cop $00.b		; 02 00
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	tsb $0000.w		; 0C 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	stx $D700.w		; 8E 00 D7
	sty $487C.w		; 8C 7C 48
	rol $04.b,X		; 36 04
	ora $06.b,X		; 15 06
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $8E.b		; 00 8E
	brk $DF.b		; 00 DF
	bra  -4.b		; 80 FC
	iny		; C8
	inc $FFE8.w,X		; FE E8 FF
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora ($02.b,X)		; 01 02
	ora [$02.b]		; 07 02
	ora $1E06.w		; 0D 06 1E
	tsb $2C.b		; 04 2C
	php		; 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	bpl  60.b		; 10 3C
	lda [$62.b],Y		; B7 62
	pea $3222.w		; F4 22 32
	brk $12.b		; 00 12
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc [$00.b],Y		; F7 00
	inc $00.b,X		; F6 00
	and ($00.b)		; 32 00
	ora ($00.b)		; 12 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4E.b		; 00 4E
	asl $BC.b,X		; 16 BC
	ldy $78.b		; A4 78
	brk $18.b		; 00 18
	php		; 08
	and ($00.b,S),Y		; 33 00
	bmi  16.b		; 30 10
	eor ($00.b,X)		; 41 00
	beq  80.b		; F0 50
	and ($7F.b,X)		; 21 7F
	eor $FF.b,S		; 43 FF
	ora [$7F.b]		; 07 7F
	ora [$1F.b]		; 07 1F
	tsb $0F3C.w		; 0C 3C 0F
	and $0F7E3E.l,X		; 3F 3E 7E 0F
	sbc $3F007F.l,X		; FF 7F 00 3F
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $FB.b		; 00 FB
	ora [$7F.b]		; 07 7F
	ora [$80.b]		; 07 80
	bra -64.b		; 80 C0
	cpy #$C0.b		; C0 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	sta ($07.b,X)		; 81 07
	ora [$87.b]		; 07 87
	sta [$FF.b]		; 87 FF
	brk $FC.b		; 00 FC
	bmi -36.b		; 30 DC
	bmi -17.b		; 30 EF
	bpl  -1.b		; 10 FF
	brk $7F.b		; 00 7F
	sbc ($FF.b,S),Y		; F3 FF
	sty $7DF0.w		; 8C F0 7D
	brk $00.b		; 00 00
	and ($33.b,S),Y		; 33 33
	and ($33.b,S),Y		; 33 33
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	sbc $9E9EFF.l,X		; FF FF 9E 9E
	sbc ($F0.b)		; F2 F0
	jmp ($F530.w)		; 6C 30 F5
	ora $03.b,S		; 03 03
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($06.b,X)		; 01 06
	cop $03.b		; 02 03
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	adc $00F700.l,X		; 7F 00 F7 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora [$01.b]		; 07 01
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $16.b,S		; 03 16
	tsb $1B.b		; 04 1B
	cop $1D.b		; 02 1D
	ora ($06.b,X)		; 01 06
	brk $C2.b		; 00 C2
	brk $70.b		; 00 70
	bra -71.b		; 80 B9
	cpy #$0B.b		; C0 0B
	bvs -24.b		; 70 E8
	inc $FFE4.w,X		; FE E4 FF
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	sbc $3DFF.w,Y		; F9 FF 3D
	and $E6CFCF.l,X		; 3F CF CF E6
	sbc [$94.b]		; E7 94
	ora [$00.b],Y		; 17 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $88.b		; 00 88
	brk $88.b		; 00 88
	brk $68.b		; 00 68
	brk $B8.b		; 00 B8
	bra -72.b		; 80 B8
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	dey		; 88
	brk $88.b		; 00 88
	bra -24.b		; 80 E8
	rti		; 40

	sed		; F8
	rti		; 40

	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$02.b]		; 07 02
	ora $00.b		; 05 00
	tsb $0004.w		; 0C 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$02.b]		; 07 02
	ora [$03.b]		; 07 03
	ora $000000.l		; 0F 00 00 00
	brk $01.b		; 00 01
	brk $82.b		; 00 82
	ora ($0D.b,X)		; 01 0D
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	brk $FB.b		; 00 FB
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	sta $00.b,S		; 83 00
	ora $0000.w		; 0D 00 00
	brk $81.b		; 00 81
	brk $FB.b		; 00 FB
	asl $18.b,X		; 16 18
	bra -128.b		; 80 80
	trb $BF80.w		; 1C 80 BF
	bra  63.b		; 80 3F
	asl $3B.b		; 06 3B
	tsb $3D.b		; 04 3D
	ora $77.b,S		; 03 77
	ora $7FFFE1.l		; 0F E1 FF 7F
	sbc $40E363.l,X		; FF 63 E3 40
	cpy #$C6.b		; C0 C6
	dec $C4.b		; C6 C4
	cpy $C3.b		; C4 C3
	cmp $8F.b,S		; C3 8F
	sta $FF18EF.l		; 8F EF 18 FF
	clc		; 18
	sbc $0CFF19.l,X		; FF 19 FF 0C
	sbc $09F707.l,X		; FF 07 F7 09
	sbc $03FF05.l,X		; FF 05 FF 03
	trb $181C.w		; 1C 1C 18
	clc		; 18
	ora $1C19.w,Y		; 19 19 1C
	trb $1F1F.w		; 1C 1F 1F
	ora #$09.b		; 09 09
	ora $05.b		; 05 05
	ora $03.b,S		; 03 03
	inc $C8.b,X		; F6 C8
	sbc $E8FFC8.l,X		; FF C8 FF E8
	sbc $D8.b,X		; F5 D8
	sed		; F8
	beq -24.b		; F0 E8
	bvc  -8.b		; 50 F8
	bvc -16.b		; 50 F0
	cpx #$D9.b		; E0 D9
	cmp $C8C8.w,Y		; D9 C8 C8
	inx		; E8
	inx		; E8
	phx		; DA
	phx		; DA
	sbc [$F7.b],Y		; F7 F7
	eor [$57.b],Y		; 57 57
	eor [$57.b],Y		; 57 57
	sbc $182CEF.l		; EF EF 2C 18
	bit $6A08.w,X		; 3C 08 6A
	mvp $04,$42		; 44 42 04
	lsr $00.b		; 46 00
	mvp $C4,$00		; 44 00 C4
	bra -60.b		; 80 C4
	brk $C0.b		; 00 C0
	jsr ($FCC0.w,X)		; FC C0 FC
	bra -18.b		; 80 EE
	bra -58.b		; 80 C6
	bra -58.b		; 80 C6
	bra -60.b		; 80 C4
	brk $C4.b		; 00 C4
	brk $C4.b		; 00 C4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	clc		; 18
	ora $0000.w,Y		; 19 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $70.b		; 00 70
	bpl  43.b		; 10 2B
	ora $0026.w,Y		; 19 26 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	ora $01.b		; 05 01
	ora [$96.b]		; 07 96
	pei ($5D.b)		; D4 5D
	ldx $0100.w,Y		; BE 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $05.b		; 00 05
	ora $2A.b		; 05 2A
	ora [$78.b]		; 07 78
	cmp [$28.b],Y		; D7 28
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	adc $FF827F.l,X		; 7F 7F 82 FF
	jmp $7C83.w		; 4C 83 7C
	plx		; FA
	bcs  60.b		; B0 3C
	rti		; 40

	adc $0000.w,X		; 7D 00 00
	brk $D9.b		; 00 D9
	adc $00FE80.l,X		; 7F 80 FE 00
	sbc $8400.w,X		; FD 00 84
	ora ($C0.b,X)		; 01 C0
	ora $81.b,S		; 03 81
	cop $00.b		; 02 00
	brk $C0.b		; 00 C0
	cpy #$0C.b		; C0 0C
	jsr ($BF27.w,X)		; FC 27 BF
	ora $0126.w,Y		; 19 26 01
	adc $42F906.l,X		; 7F 06 F9 42
	lda $8000.w		; AD 00 80
	cpy #$39.b		; C0 39
	tsb $B701.w		; 0C 01 B7
	rti		; 40

	tsa		; 3B
	cpy #$40.b		; C0 40
	bra -82.b		; 80 AE
	brk $6E.b		; 00 6E
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	tsb $E0.b		; 04 E0
	jsr ($E69A.w,X)		; FC 9A E6
	jmp ($1484.w)		; 6C 84 14
	trb $FC74.w		; 1C 74 FC
	jsr $00EC.w		; 20 EC 00
	stx $FB04.w		; 8E 04 FB
	jsr ($FE02.w,X)		; FC 02 FE
	brk $FC.b		; 00 FC
	brk $EC.b		; 00 EC
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	ora ($00.b,X)		; 01 00
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
	brk $1C.b		; 00 1C
	brk $F0.b		; 00 F0
	rts		; 60

	bra   7.b		; 80 07
	asl $02.b		; 06 02
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	ora $1D8C.w,Y		; 19 8C 1D
	ldy $3D.b		; A4 3D
	pha		; 48
	sty $B2.b,X		; 94 B2
	dec $C3FD.w,X		; DE FD C3
	and ($13.b)		; 32 13
	.db $42, $42		; 42 42
	sbc #$06.b		; E9 06
	sbc $CD02.w		; ED 02 CD
	cop $EC.b		; 02 EC
	ora $E2.b,S		; 03 E2
	ora ($FD.b,X)		; 01 FD
	brk $32.b		; 00 32
	cpy $3D42.w		; CC 42 3D
	cpx #$1E.b		; E0 1E
	sed		; F8
	asl $FA.b		; 06 FA
	ora $BC.b		; 05 BC
	cmp $2F.b,S		; C3 2F
	and ($8C.b),Y		; 31 8C
	sbc ($10.b)		; F2 10
	jsr ($7E41.w,X)		; FC 41 7E
	inx		; E8
	ora ($F8.b,X)		; 01 F8
	ora ($FA.b,X)		; 01 FA
	brk $BC.b		; 00 BC
	brk $1E.b		; 00 1E
	cpy #$DD.b		; C0 DD
	brk $E3.b		; 00 E3
	brk $7F.b		; 00 7F
	bra   8.b		; 80 08
	eor ($08.b,X)		; 41 08
	brk $1C.b		; 00 1C
	brk $77.b		; 00 77
	php		; 08
	rol $88.b,X		; 36 88
	sty $C9.b,X		; 94 C9
	eor #$63.b		; 49 63
	trb $23.b		; 14 23
	php		; 08
	ldx $08.b,Y		; B6 08
	sbc [$1C.b],Y		; F7 1C
	sbc $F7.b,S		; E3 F7
	brk $77.b		; 00 77
	brk $36.b		; 00 36
	brk $9C.b		; 00 9C
	brk $DC.b		; 00 DC
	brk $1B.b		; 00 1B
	sec		; 38
	ora $2B3D.w		; 0D 3D 2B
	eor $407F12.l,X		; 5F 12 7F 40
	sbc [$80.b]		; E7 80
	sbc [$18.b]		; E7 18
	stp		; DB
	trb $DC.b		; 14 DC
	ora [$C0.b]		; 07 C0
	cop $C0.b		; 02 C0
	jsr $8080.w		; 20 80 80
	brk $00.b		; 00 00
	clc		; 18
	brk $18.b		; 00 18
	clc		; 18
	bit $1C.b		; 24 1C
	and $4F.b,S		; 23 4F
	adc $A8.b,S		; 63 A8
	cpx $70.b		; E4 70
	inx		; E8
	cli		; 58
	cpy #$20.b		; C0 20
	inx		; E8
	bmi  48.b		; 30 30
	brk $10.b		; 00 10
	bvc  80.b		; 50 50
	sta $031C00.l,X		; 9F 00 1C 03
	clc		; 18
	tsb $38.b		; 04 38
	asl $18.b		; 06 18
	asl $00.b		; 06 00
	dec $EC00.w		; CE 00 EC
	bvc -81.b		; 50 AF
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$17.b],Y		; 17 17
	ora $030F.w		; 0D 0F 03
	jmp ($3300.w,X)		; 7C 00 33
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora [$60.b],Y		; 17 60
	ora $AFE070.l		; 0F 70 E0 AF
	rti		; 40

	eor $1C2E38.l		; 4F 38 2E 1C
	ora $7E3F0C.l		; 0F 0C 3F 7E
	asl $B838.w		; 0E 38 B8
	sta $75.b,X		; 95 75
	bne   0.b		; D0 00
	bvs -128.b		; 70 80
	bmi -63.b		; 30 C1
	bpl  96.b		; 10 60
	bmi -64.b		; 30 C0
	bvs -127.b		; 70 81
	cpy #$07.b		; C0 07
	sta $0A.b		; 85 0A
	php		; 08
	xba		; EB
	php		; 08
	inx		; E8
	ora [$5F.b],Y		; 17 5F
	and $3C.b,S		; 23 3C
	mvn $89,$68		; 54 68 89
	lda ($9F.b,X)		; A1 9F
	sta [$35.b],Y		; 97 35
	lda [$08.b],Y		; B7 08
	trb $08.b		; 14 08
	ora [$1F.b],Y		; 17 1F
	ldy #$3F.b		; A0 3F
	cpy #$7F.b		; C0 7F
	bra  -2.b		; 80 FE
	brk $E8.b		; 00 E8
	brk $C8.b		; 00 C8
	brk $20.b		; 00 20
	jsr ($7404.w,X)		; FC 04 74
	cpy #$C0.b		; C0 C0
	ror $98FE.w,X		; 7E FE 98
	sei		; 78
	bmi 112.b		; 30 70
	adc $63.b,S		; 63 63
	ldx $00AE.w		; AE AE 00
	ora $00.b,S		; 03 00
	phb		; 8B
	cpy #$3F.b		; C0 3F
	inc $F801.w,X		; FE 01 F8
	ora [$F0.b]		; 07 F0
	ora $6E1CE3.l		; 0F E3 1C 6E
	ora ($14.b),Y		; 11 14
	ora $1E3C32.l,X		; 1F 32 3C 1E
	clc		; 18
	ora #$0D.b		; 09 0D
	ora $07040C.l		; 0F 0C 04 07
	tsb $07.b		; 04 07
	ora $03.b,S		; 03 03
	ora $403F60.l,X		; 1F 60 3F 40
	ora $300E60.l,X		; 1F 60 0E 30
	ora $080710.l		; 0F 10 07 08
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ldy $1F.b		; A4 1F
	stz $63.b		; 64 63
	stx $FF.b		; 86 FF
	.db $82, $FF, $8B		; 82 FF 8B
	adc $533795.l,X		; 7F 95 37 53
	lda ($4B.b,S),Y		; B3 4B
	tyx		; BB
	sbc $009F00.l,X		; FF 00 9F 00
	ora ($00.b,X)		; 01 00
	asl A		; 0A
	brk $8B.b		; 00 8B
	brk $D5.b		; 00 D5
	php		; 08
	cmp ($0C.b,S),Y		; D3 0C
	stp		; DB
	tsb $40.b		; 04 40
	tda		; 7B
	bra -25.b		; 80 E7
	lda ($FC.b),Y		; B1 FC
	and [$F0.b]		; 27 F0
	dec $ECF1.w		; CE F1 EC
	cmp ($8D.b)		; D2 8D
.INDEX 8
	sep #$14		; E2 14
	nop		; EA
	.db $82, $04, $25		; 82 04 25
	clc		; 18
	and ($00.b,S),Y		; 33 00
	adc $00EE00.l		; 6F 00 EE 00
	sbc $DD00.w		; ED 00 DD
	brk $D4.b		; 00 D4
	ora ($81.b,X)		; 01 81
	.db $42, $14		; 42 14
	and ($E3.b,X)		; 21 E3
	trb $EA15.w		; 1C 15 EA
	sty $2B.b,X		; 94 2B
	cmp #$14.b		; C9 14
	trb $08.b		; 14 08
	php		; 08
	brk $CB.b		; 00 CB
	bit $3D.b,X		; 34 3D
.ACCU 16
	rep #$E3		; C2 E3
	brk $15.b		; 00 15
	brk $DC.b		; 00 DC
	brk $EB.b		; 00 EB
	brk $14.b		; 00 14
	sbc $08.b,S		; E3 08
	sbc [$20.b],Y		; F7 20
	cpx $A1.b		; E4 A1
	adc [$CD.b],Y		; 77 CD
	dec A		; 3A
	dec $3C.b,X		; D6 3C
	stz $9C.b		; 64 9C
	and $4A5C.w		; 2D 5C 4A
	and $3300.w,Y		; 39 00 33
	trb $8F03.w		; 1C 03 8F
	brk $C7.b		; 00 C7
	brk $C3.b		; 00 C3
	brk $63.b		; 00 63
	brk $A3.b		; 00 A3
	brk $47.b		; 00 47
	bra  15.b		; 80 0F
	cpy #$A0.b		; C0 A0
	cpx #$60.b		; E0 60
	cpx #$E0.b		; E0 E0
	rts		; 60

	rti		; 40

	cpy #$00.b		; C0 00
	bra -30.b		; 80 E2
	ror $E39D.w,X		; 7E 9D E3
	cld		; D8
	ora $00E0.w,Y		; 19 E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$20.b		; C0 20
	bra 126.b		; 80 7E
	inc $FF01.w,X		; FE 01 FF
	brk $E7.b		; 00 E7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($04.b,X)		; 01 04
	ora $05.b		; 05 05
	asl $1A.b		; 06 1A
	trb $0F0E.w		; 1C 0E 0F
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	ora ($06.b,X)		; 01 06
	ora $0A.b		; 05 0A
	ora [$38.b]		; 07 38
	ora $700F60.l,X		; 1F 60 0F 70
	ora $7E0F.w		; 0D 0F 7E
	adc $FCEF.w,X		; 7D EF FC
	stz $EE.b,X		; 74 EE
	cli		; 58
	inc $66.b		; E6 66
	sta ($9F.b,X)		; 81 9F
	stz $7FFB.w		; 9C FB 7F
	ora $807FF0.l		; 0F F0 7F 80
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $00.b,S		; 63 00
	bra   0.b		; 80 00
	bra -121.b		; 80 87
	bne -48.b		; D0 D0
	ora $9BF9.w,Y		; 19 F9 9B
	phb		; 8B
	sbc $42E7.w		; ED E7 42
	stz $55.b		; 64 55
	sbc $E702.w,Y		; F9 02 E7
	bra 120.b		; 80 78
	bne  47.b		; D0 2F
	sbc $7B06.w,Y		; F9 06 7B
	tsb $1F.b		; 04 1F
	brk $9F.b		; 00 9F
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	clc		; 18
	asl A		; 0A
	sbc $05.b,X		; F5 05
	and $1212.w		; 2D 12 12
	clv		; B8
	sed		; F8
	and ($ED.b),Y		; 31 ED
	pld		; 2B
	eor $749892.l		; 4F 92 98 74
	inc $000A.w,X		; FE 0A 00
	adc $92.b		; 65 92
	ora ($ED.b)		; 12 ED
	sed		; F8
	ora [$FD.b]		; 07 FD
	cop $F7.b		; 02 F7
	brk $66.b		; 00 66
	ora ($02.b,X)		; 01 02
	ora ($0D.b,X)		; 01 0D
	sta $22.b,X		; 95 22
	and [$A6.b],Y		; 37 A6
	lda $46.b,S		; A3 46
	adc ($C5.b,X)		; 61 C5
	bra -115.b		; 80 8D
	iny		; C8
	sbc #$3428.w		; E9 28 34
	bit $621D.w,X		; 3C 1D 62
	lda $40BF40.l,X		; BF 40 BF 40
	adc $00FF80.l,X		; 7F 80 FF 00
	sbc [$00.b],Y		; F7 00
	cmp [$00.b],Y		; D7 00
	cmp $00.b,S		; C3 00
	eor ($41.b,X)		; 41 41
	ldx $E7.b		; A6 E7
	sta $A6.b		; 85 A6
	xba		; EB
	jmp $58B5.w		; 4C B5 58
	ldy #$E1.b		; A0 E1
	dec A		; 3A
	sbc $F9EA.w,Y		; F9 EA F9
	eor ($BE.b,X)		; 41 BE
	sbc [$18.b]		; E7 18
	sbc [$18.b]		; E7 18
	lda $00BF10.l		; AF 10 BF 00
	ora $000700.l,X		; 1F 00 07 00
	ora [$00.b]		; 07 00
	ora [$17.b],Y		; 17 17
	ora ($11.b),Y		; 11 11
	trb $1C.b		; 14 1C
	ora ($1F.b,S),Y		; 13 1F
	ora $0B.b		; 05 0B
	asl $0D09.w		; 0E 09 0D
	php		; 08
	asl $160A.w		; 0E 0A 16
	pla		; 68
	ora ($2E.b),Y		; 11 2E
	trb $1F23.w		; 1C 23 1F
	jsr $300F.w		; 20 0F 30
	ora $100F10.l		; 0F 10 0F 10
	ora $A610.w		; 0D 10 A6
	sbc [$04.b],Y		; F7 04
	stx $62.b		; 86 62
	cpx $8B.b		; E4 8B
	sty $8300.w		; 8C 00 83
	cmp [$46.b]		; C7 46
	and $6F.b,S		; 23 6F
	stx $F3.b		; 86 F3
	ora [$08.b]		; 07 08
	adc [$18.b]		; 67 18
	adc [$18.b]		; 67 18
	sta $7C8370.l		; 8F 70 83 7C
	cmp [$38.b]		; C7 38
	sbc $087710.l		; EF 10 77 08
	lda #$A93F.w		; A9 3F A9
	and $823F01.l,X		; 3F 01 3F 82
	ror $F989.w,X		; 7E 89 F9
	ora ($F3.b)		; 12 F3
	sty $E6.b		; 84 E6
	ldx #$E4.b		; A2 E4
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   1.b		; 80 01
	ora #$3306.w		; 09 06 33
	tsb $18E7.w		; 0C E7 18
	sbc [$18.b]		; E7 18
	pei ($FC.b)		; D4 FC
	jsr $1138.w		; 20 38 11
	plp		; 28
	tsx		; BA
	iny		; C8
	phy		; 5A
	txa		; 8A
	eor [$47.b],Y		; 57 47
.INDEX 16
	rep #$D3		; C2 D3
	iny		; C8
	stp		; DB
	bit $7803.w,X		; 3C 03 78
	sta [$39.b]		; 87 39
	dec $FB.b		; C6 FB
	tsb $F9.b		; 04 F9
	tsb $B0.b		; 04 B0
	php		; 08
	bmi  12.b		; 30 0C
	sec		; 38
	tsb $D5.b		; 04 D5
	sbc $7441.w,X		; FD 41 74
	bpl  96.b		; 10 60
	brk $30.b		; 00 30
	cop $22.b		; 02 22
	tsb $120E.w		; 0C 0E 12
	asl $3408.w,X		; 1E 08 34
	cop $00.b		; 02 00
	ora $88.b,S		; 03 88
	ora ($8D.b)		; 12 8D
	brk $CF.b		; 00 CF
	cop $DD.b		; 02 DD
	asl $1EF1.w		; 0E F1 1E
	sbc ($3C.b,X)		; E1 3C
	cmp $08.b,S		; C3 08
	adc $390A.w,Y		; 79 0A 39
	ora $1F3B.w		; 0D 3B 1F
	adc $7002.w,Y		; 79 02 70
	mvn $28,$72		; 54 72 28
	rol $3A.b		; 26 3A
	rol $87.b		; 26 87
	brk $47.b		; 00 47
	bra   7.b		; 80 07
	cpy #$8007.w		; C0 07 80
	stx $8E01.w		; 8E 01 8E
	ora ($1E.b,X)		; 01 1E
	cmp ($1E.b,X)		; C1 1E
	cmp ($38.b,X)		; C1 38
	sec		; 38
	tsb $040C.w		; 0C 0C 04
	tsb $02.b		; 04 02
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	ora [$0C.b]		; 07 0C
	ora $04.b,S		; 03 04
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C2.b		; 00 C2
	cpx #$C5B5.w		; E0 B5 C5
	sta [$E7.b],Y		; 97 E7
	ldy $C7.b,X		; B4 C7
	stx $67.b,Y		; 96 67
.ACCU 16
.INDEX 16
	rep #$33		; C2 33
	tad		; 5B
	tyx		; BB
	and #$FF59.w		; 29 59 FF
	brk $FA.b		; 00 FA
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $78.b		; 00 78
	tsb $39.b		; 04 39
	asl $90.b		; 06 90
	jsr ($FCB1.w,X)		; FC B1 FC
	phd		; 0B
	pea $F42B.w		; F4 2B F4
	rtl		; 6B

	pea $F46B.w		; F4 6B F4
	rtl		; 6B

	ldy $EB.b,X		; B4 EB
	bit $03.b,X		; 34 03
	brk $03.b		; 00 03
	brk $3B.b		; 00 3B
	brk $3B.b		; 00 3B
	brk $3B.b		; 00 3B
	brk $3B.b		; 00 3B
	brk $7B.b		; 00 7B
	brk $FB.b		; 00 FB
	brk $AC.b		; 00 AC
	adc ($08.b)		; 72 08
	pea $5C90.w		; F4 90 5C
	ldy #$8058.w		; A0 58 80
	rts		; 60

	bra  64.b		; 80 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	dec $0C00.w		; CE 00 0C
	brk $AC.b		; 00 AC
	brk $B8.b		; 00 B8
	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $38.b		; 00 38
	ldy $70.b,X		; B4 70
	inx		; E8
	pha		; 48
	sed		; F8
	rti		; 40

	beq   0.b		; F0 00
	ldy #$C040.w		; A0 40 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $60.b		; 00 60
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
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	cpy #$4040.w		; C0 40 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$4020.w		; C0 20 40
	ldy #$0000.w		; A0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra -128.b		; 80 80
	cpy #$40C0.w		; C0 C0 40
	cpy #$C040.w		; C0 40 C0
	cpx #$80E0.w		; E0 E0 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bvs -64.b		; 70 C0
	bmi -64.b		; 30 C0
	jsr $30C0.w		; 20 C0 30
	cpx #$8018.w		; E0 18 80
	bvs -128.b		; 70 80
	rti		; 40

	bra  64.b		; 80 40
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phd		; 0B
	ora $04.b,S		; 03 04
	ora #$0907.w		; 09 07 09
	cop $00.b		; 02 00
	ora [$06.b]		; 07 06
	ora $000D.w		; 0D 0D 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	bmi  14.b		; 30 0E
	bmi  14.b		; 30 0E
	bpl   3.b		; 10 03
	trb $1807.w		; 1C 07 18
	ora $0000.w		; 0D 00 00
	brk $00.b		; 00 00
	brk $96.b		; 00 96
	lda ($93.b),Y		; B1 93
	pea $D444.w		; F4 44 D4
	brk $F0.b		; 00 F0
	ora ($74.b)		; 12 74
	lda $76.b,X		; B5 76
	nop		; EA
	tyx		; BB
	pha		; 48
	sei		; 78
	adc [$08.b],Y		; 77 08
	and [$08.b],Y		; 37 08
	and [$08.b],Y		; 37 08
	ora ($0C.b,S),Y		; 13 0C
	sta [$08.b],Y		; 97 08
	sta [$08.b],Y		; 97 08
	wai		; CB
	tsb $48.b		; 04 48
	ora [$F9.b]		; 07 F9
	adc $5B97.w,X		; 7D 97 5B
	ora ($1B.b,S),Y		; 13 1B
	tay		; A8
	and ($25.b),Y		; 31 25
	lda $2915.w,Y		; B9 15 29
	jmp $4E60.w		; 4C 60 4E
	rts		; 60

	inc $DC00.w,X		; FE 00 DC
	jsr $609C.w		; 20 9C 60
	ldx $BE40.w,Y		; BE 40 BE
	rti		; 40

	rol $7FC0.w,X		; 3E C0 7F
	bra 127.b		; 80 7F
	bra 104.b		; 80 68
	cmp $C970.w,Y		; D9 70 C9
	eor $CF.b,X		; 55 CF
	ror $28E5.w		; 6E E5 28
	sbc $2F.b		; E5 2F
	sep #$87		; E2 87
	inc $83.b,X		; F6 83
	jsr ($0638.w,X)		; FC 38 06
	sec		; 38
	asl $3F.b		; 06 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1D.b		; 00 1D
	brk $09.b		; 00 09
	brk $03.b		; 00 03
	brk $8B.b		; 00 8B
	sta $1109.w		; 8D 09 11
	ora ($23.b)		; 12 23
	ora $803F.w		; 0D 3F 80
	lda $9BBE12.l,X		; BF 12 BE 9B
	lda $0E71F6.l,X		; BF F6 71 0E
	bvs  30.b		; 70 1E
	cpx #$C03C.w		; E0 3C C0
	jsr $A0C0.w		; 20 C0 A0
	rti		; 40

	lda ($40.b,X)		; A1 40
	ldy #$CF40.w		; A0 40 CF
	brk $35.b		; 00 35
	eor $8D55.w		; 4D 55 8D
	bcc   9.b		; 90 09
	eor ($43.b)		; 52 43
	lda [$F6.b],Y		; B7 F6
	and $F6.b,X		; 35 F6
	trb $F6.b		; 14 F6
	rol A		; 2A
	cpx $827D.w		; EC 7D 82
	sbc $F902.w,X		; FD 02 F9
	asl $B3.b		; 06 B3
	tsb $0807.w		; 0C 07 08
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora $1C0410.l		; 0F 10 04 1C
	tsb $0C3C.w		; 0C 3C 0C
	bit $FC9C.w,X		; 3C 9C FC
	ldy $48DC.w,X		; BC DC 48
	tya		; 98
	dey		; 88
	clc		; 18
	tay		; A8
	clc		; 18
	trb $3CE3.w		; 1C E3 3C
	cmp $3C.b,S		; C3 3C
	cpy #$00FC.w		; C0 FC 00
	jsr ($F800.w,X)		; FC 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $1EC70F.l,X		; 7F 0F C7 1E
	and $1C5D3A.l		; 2F 3A 5D 1C
	ply		; 7A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $001F00.l,X		; 3F 00 1F 00
	rol $3C00.w,X		; 3E 00 3C
	brk $14.b		; 00 14
	bit $170B.w		; 2C 0B 17
	ora $0B.b		; 05 0B
	cop $FD.b		; 02 FD
	sta $F1E2.w,Y		; 99 E2 F1
	ora ($00.b,X)		; 01 00
	sbc $1C0000.l,X		; FF 00 00 1C
	ora $0F.b,S		; 03 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2B.b		; 00 2B
	bit $2A.b,X		; 34 2A
	bit $E6.b,X		; 34 E6
	jsr ($E9D6.w,X)		; FC D6 E9
	bit $38D9.w		; 2C D9 38
	sep #$00		; E2 00
	jsr ($0000.w,X)		; FC 00 00
	tsa		; 3B
	cpy #$C03B.w		; C0 3B C0
	sbc ($00.b,S),Y		; F3 00
	inc $00.b,X		; F6 00
	inc $00.b		; E6 00
	trb $0000.w		; 1C 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	bvs  64.b		; 70 40
	cpx #$F050.w		; E0 50 F0
	clc		; 18
	sed		; F8
	ldy #$80E0.w		; A0 E0 80
	rti		; 40

	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bcs   0.b		; B0 00
	jsr $3000.w		; 20 00 30
	brk $78.b		; 00 78
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	cop $01.b		; 02 01
	asl $53.b		; 06 53
	lda ($7E.b)		; B2 7E
	sty $80D8.w		; 8C D8 80
	.db $82, $CA, $82		; 82 CA 82
	cmp $557F4B.l,X		; DF 4B 7F 55
	adc [$13.b],Y		; 77 13
	and ($F3.b,S),Y		; 33 F3
	tsb $00FF.w		; 0C FF 00
	sbc $00F500.l,X		; FF 00 F5 00
	nop		; EA
	brk $4B.b		; 00 4B
	bra  85.b		; 80 55
	dey		; 88
	ora ($CC.b,S),Y		; 13 CC
	brk $DD.b		; 00 DD
	bra  59.b		; 80 3B
	brk $67.b		; 00 67
	lda ($FC.b),Y		; B1 FC
	and [$F0.b]		; 27 F0
	dec $ECF1.w		; CE F1 EC
	cmp ($8D.b)		; D2 8D
.ACCU 8
.INDEX 8
	sep #$F1		; E2 F1
	cop $C2.b		; 02 C2
	tsb $A5.b		; 04 A5
	clc		; 18
	and ($00.b,S),Y		; 33 00
	adc $00EE00.l		; 6F 00 EE 00
	sbc $DD00.w		; ED 00 DD
	brk $42.b		; 00 42
	lda $4281.w		; AD 81 42
	trb $21.b		; 14 21
	sbc $1C.b,S		; E3 1C
	ora $EA.b,X		; 15 EA
	sty $2B.b,X		; 94 2B
	cmp #$14.b		; C9 14
	trb $08.b		; 14 08
	ror $CB10.w		; 6E 10 CB
	bit $3D.b,X		; 34 3D
.ACCU 16
	rep #$E3		; C2 E3
	brk $15.b		; 00 15
	brk $DC.b		; 00 DC
	brk $EB.b		; 00 EB
	brk $14.b		; 00 14
	sbc $09.b,S		; E3 09
	cmp $C911.w,Y		; D9 11 C9
	lda $6B.b,S		; A3 6B
	dec $3F.b		; C6 3F
	cmp $6236.w,X		; DD 36 62
	sty $25.b,X		; 94 25
	eor ($4F.b),Y		; 51 4F
	tsa		; 3B
	and $3902.w,Y		; 39 02 39
	asl $9B.b		; 06 9B
	tsb $CF.b		; 04 CF
	brk $CF.b		; 00 CF
	brk $6F.b		; 00 6F
	brk $AE.b		; 00 AE
	brk $44.b		; 00 44
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	cpy #$28.b		; C0 28
	inx		; E8
	bcs 120.b		; B0 78
	bvc  56.b		; 50 38
	bra -72.b		; 80 B8
	inx		; E8
	cld		; D8
	pha		; 48
	sed		; F8
	bra  64.b		; 80 40
	cpy #$18.b		; C0 18
	inx		; E8
	bpl  -8.b		; 10 F8
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	tsb $38.b		; 04 38
	tsb $38.b		; 04 38
	tsb $42.b		; 04 42
	.db $42, $60		; 42 60
	rts		; 60

	bvc 112.b		; 50 70
	eor $0A79.w,Y		; 59 79 0A
	tsa		; 3B
	and $3E.b		; 25 3E
	and #$2A36.w		; 29 36 2A
	bit $41.b,X		; 34 41
	ldy $9F60.w,X		; BC 60 9F
	bvs -113.b		; 70 8F
	adc $3B86.w,Y		; 79 86 3B
	mvp $40,$3F		; 44 3F 40
	and $003F40.l,X		; 3F 40 3F 00
	cpx #$FD.b		; E0 FD
	bne  -7.b		; D0 F9
	jsr $1838.w		; 20 38 18
	clc		; 18
	and ($39.b),Y		; 31 39
	cld		; D8
	sbc ($2D.b),Y		; F1 2D
	cmp $14.b,X		; D5 14
	sty $00.b		; 84 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	cmp [$08.b]		; C7 08
	sbc [$39.b]		; E7 39
	dec $F9.b		; C6 F9
	asl $FD.b		; 06 FD
	cop $FC.b		; 02 FC
	ora $32.b,S		; 03 32
	rol $1A.b,X		; 36 1A
	rol $3F19.w,X		; 3E 19 3F
	ora $3B.b		; 05 3B
	bit $3B.b		; 24 3B
	rol $29.b,X		; 36 29
	and #$2D30.w		; 29 30 2D
	bmi  54.b		; 30 36
	eor #$413E.w		; 49 3E 41
	and $403F40.l,X		; 3F 40 3F 40
	and $C03FC0.l,X		; 3F C0 3F C0
	and $003F40.l,X		; 3F 40 3F 00
	brk $0F.b		; 00 0F
	jsr $602F.w		; 20 2F 60
	adc [$C0.b]		; 67 C0
	sbc [$50.b]		; E7 50
	sbc ($30.b,S),Y		; F3 30
	cmp ($59.b),Y		; D1 59
	clv		; B8
	tay		; A8
	trb $F000.w		; 1C 00 F0
	jsr $60D0.w		; 20 D0 60
	tya		; 98
	cpx #$18.b		; E0 18
	beq  12.b		; F0 0C
	beq  14.b		; F0 0E
	sbc $FC06.w,Y		; F9 06 FC
	ora $40.b,S		; 03 40
	adc $193F31.l,X		; 7F 31 3F 19
	ora $010706.l,X		; 1F 06 07 01
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $40.b		; 00 40
	brk $30.b		; 00 30
	brk $1E.b		; 00 1E
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	sbc $F8FFF0.l,X		; FF F0 FF F8
	and $389F78.l,X		; 3F 78 9F 38
	cmp [$96.b]		; C7 96
	adc [$C2.b]		; 67 C2
	and ($5B.b,S),Y		; 33 5B
	tyx		; BB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $78.b		; 00 78
	tsb $1A.b		; 04 1A
	jsr ($DB17.w,X)		; FC 17 DB
	asl $0BD7.w,X		; 1E D7 0B
	pea $F42B.w		; F4 2B F4
	rtl		; 6B

	pea $F46B.w		; F4 6B F4
	rtl		; 6B

	ldy $1F.b,X		; B4 1F
	brk $1C.b		; 00 1C
	jsr $2018.w		; 20 18 20
	tsa		; 3B
	brk $3B.b		; 00 3B
	brk $3B.b		; 00 3B
	brk $3B.b		; 00 3B
	brk $7B.b		; 00 7B
	brk $BA.b		; 00 BA
	sbc [$0B.b],Y		; F7 0B
	sbc $B4FE2A.l,X		; FF 2A FE B4
	stz $B8.b,X		; 74 B8
	pla		; 68
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	brk $40.b		; 00 40
	ora $000700.l		; 0F 00 07 00
	asl $01.b		; 06 01
	sty $9800.w		; 8C 00 98
	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $81.b		; 00 81
	inc $FF00.w,X		; FE 00 FF
	ora $F2.b		; 05 F2
	rol A		; 2A
	eor #$0808.w		; 49 08 08
	cmp $DD.b,X		; D5 DD
	adc #$02F7.w		; 69 F7 02
	sbc ($FF.b),Y		; F1 FF
	brk $30.b		; 00 30
	brk $05.b		; 00 05
	php		; 08
	rol A		; 2A
	sty $08.b,X		; 94 08
	sbc [$DD.b],Y		; F7 DD
	jsl $FF00FF.l		; 22 FF 00 FF
	brk $14.b		; 00 14
	and $0A.b,S		; 23 0A
	sbc $B0.b,X		; F5 B0
	php		; 08
	sty $490C.w		; 8C 0C 49
	eor $FAA6.w		; 4D A6 FA
	lda $17D1.w		; AD D1 17
	sbc $DC.b,S		; E3 DC
	brk $0A.b		; 00 0A
	brk $B0.b		; 00 B0
	eor [$8C.b]		; 47 8C
	adc ($4D.b,S),Y		; 73 4D
	lda ($FF.b)		; B2 FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $02.b		; 00 02
	ora $05.b,S		; 03 05
	asl $00.b		; 06 00
	cop $0A.b		; 02 0A
	tsb $1C12.w		; 0C 12 1C
	ora $3715.w,Y		; 19 15 37
	tsa		; 3B
	clc		; 18
	clc		; 18
	ora $1C.b,S		; 03 1C
	ora [$08.b]		; 07 08
	ora $0C.b,S		; 03 0C
	ora $001F00.l		; 0F 00 1F 00
	asl $3C00.w,X		; 1E 00 3C
	bra  31.b		; 80 1F
	cpy #$8B.b		; C0 8B
	tyx		; BB
	pla		; 68
	sbc $3DCC.w,Y		; F9 CC 3D
	stz $1D.b		; 64 1D
	dey		; 88
	sty $F2.b,X		; 94 F2
	inc $FF99.w,X		; FE 99 FF
	cpy $9BFF.w		; CC FF 9B
	mvp $06,$E9		; 44 E9 06
	sbc $ED02.w		; ED 02 ED
	cop $6C.b		; 02 6C
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	nop		; EA
	cpx #$1E.b		; E0 1E
	sed		; F8
	asl $FA.b		; 06 FA
	ora $BC.b		; 05 BC
	cmp $2F.b,S		; C3 2F
	and ($8C.b),Y		; 31 8C
	sbc ($10.b)		; F2 10
	jsr ($01D4.w,X)		; FC D4 01
	inx		; E8
	ora ($F8.b,X)		; 01 F8
	ora ($FA.b,X)		; 01 FA
	brk $BC.b		; 00 BC
	brk $1E.b		; 00 1E
	cpy #$DD.b		; C0 DD
	brk $E3.b		; 00 E3
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	eor ($08.b,X)		; 41 08
	brk $1C.b		; 00 1C
	brk $77.b		; 00 77
	php		; 08
	rol $88.b,X		; 36 88
	sty $C9.b,X		; 94 C9
	eor #$0863.w		; 49 63 08
	sbc [$08.b],Y		; F7 08
	ldx $08.b,Y		; B6 08
	sbc [$1C.b],Y		; F7 1C
	sbc $F7.b,S		; E3 F7
	brk $77.b		; 00 77
	brk $36.b		; 00 36
	brk $9C.b		; 00 9C
	brk $09.b		; 00 09
	tsa		; 3B
	trb $3F.b		; 14 3F
	tsb $3F.b		; 04 3F
	bit $5F.b		; 24 5F
	brk $7F.b		; 00 7F
	rti		; 40

	sbc $20FE80.l,X		; FF 80 FE 20
	jmp.w [$C004]		; DC 04 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	jsr $8080.w		; 20 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($20.b,X)		; 01 20
	ora $60.b,S		; 03 60
	beq  48.b		; F0 30
	beq  32.b		; F0 20
	cpx #$20.b		; E0 20
	cpx #$42.b		; E0 42
	.db $42, $02		; 42 02
	cop $51.b		; 02 51
	eor ($95.b,S),Y		; 53 95
	sta [$10.b],Y		; 97 10
	tsb $0910.w		; 0C 10 09
	brk $1B.b		; 00 1B
	jsr $4217.w		; 20 17 42
	lda $02.b,X		; B5 02
	sbc $AC53.w,X		; FD 53 AC
	sta [$68.b],Y		; 97 68
	rol $2930.w		; 2E 30 29
	and ($2C.b),Y		; 31 2C
	bmi  38.b		; 30 26
	sec		; 38
	ora $000C01.l		; 0F 01 0C 00
	jsl $222222.l		; 22 22 22 22
	and $003E00.l,X		; 3F 00 3E 00
	and $C03F00.l,X		; 3F 00 3F C0
	ora $730C70.l		; 0F 70 0C 73
	jsl $5D225D.l		; 22 5D 22 5D
	tax		; AA
	rol $3B3D.w		; 2E 3D 3B
	dec $FD.b,X		; D6 FD
	cmp $FC.b		; C5 FC
	inc $FE.b		; E6 FE
	cmp ($FF.b,X)		; C1 FF
	sbc ($EF.b,X)		; E1 EF
	brk $0F.b		; 00 0F
	dec $01.b,X		; D6 01
	cmp [$00.b]		; C7 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $F0.b		; 00 F0
	trb $18.b		; 14 18
	ror A		; 6A
	jmp ($3C26.w)		; 6C 26 3C
	bpl  28.b		; 10 1C
	ora #$020F.w		; 09 0F 02
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $1F.b		; 00 1F
	cpx #$6F.b		; E0 6F
	bcc  63.b		; 90 3F
	rti		; 40

	ora $300E20.l,X		; 1F 20 0E 30
	ora $1C.b,S		; 03 1C
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	ldx $1A.b		; A6 1A
	ora $7813.w		; 0D 13 78
	adc ($0D.b,X)		; 61 0D
	stz $52.b		; 64 52
	ror $68.b,X		; 76 68
	ror $FFE1.w,X		; 7E E1 FF
	rts		; 60

	adc $FF01FE.l,X		; 7F FE 01 FF
	brk $9F.b		; 00 9F
	brk $9B.b		; 00 9B
	brk $89.b		; 00 89
	brk $81.b		; 00 81
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $1EC70F.l,X		; 7F 0F C7 1E
	and $005D3A.l		; 2F 3A 5D 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	brk $29.b		; 00 29
	eor $2C14.w,Y		; 59 14 2C
	phd		; 0B
	ora [$05.b],Y		; 17 05
	phd		; 0B
	cop $FD.b		; 02 FD
	sta $F1E2.w,Y		; 99 E2 F1
	ora ($00.b,X)		; 01 00
	sbc $1C0639.l,X		; FF 39 06 1C
	ora $0F.b,S		; 03 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $EB.b		; 00 EB
	bit $2B.b,X		; 34 2B
	bit $2A.b,X		; 34 2A
	bit $E6.b,X		; 34 E6
	jsr ($E9D6.w,X)		; FC D6 E9
	bit $38D9.w		; 2C D9 38
	sep #$00		; E2 00
	jsr ($00FB.w,X)		; FC FB 00
	tsa		; 3B
	cpy #$3B.b		; C0 3B
	cpy #$F3.b		; C0 F3
	brk $F6.b		; 00 F6
	brk $E6.b		; 00 E6
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $80.b		; 00 80
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
	bit $04.b		; 24 04
	ora $15.b,X		; 15 15
	inc A		; 1A
	asl $CF09.w,X		; 1E 09 CF
	jmp $002F.w		; 4C 2F 00
	ora [$90.b],Y		; 17 90
	sta $20.b,S		; 83 20
	cpx #$7B.b		; E0 7B
	bra  42.b		; 80 2A
	cpy #$01.b		; C0 01
	cpx #$C0.b		; E0 C0
	bmi -32.b		; 30 E0
	bpl -16.b		; 10 F0
	php		; 08
	bvs  12.b		; 70 0C
	clc		; 18
	ora [$82.b]		; 07 82
	adc ($D4.b)		; 72 D4
	ldy $A9.b,X		; B4 A9
	sta $CFD5.w,Y		; 99 D5 CF
	lda ($EE.b)		; B2 EE
	and $E304E3.l		; 2F E3 04 E3
	cop $11.b		; 02 11
	jsr ($7001.w,X)		; FC 01 70
	phd		; 0B
	adc $3F06.w,Y		; 79 06 3F
	brk $1E.b		; 00 1E
	ora ($1F.b,X)		; 01 1F
	brk $5F.b		; 00 5F
	brk $0F.b		; 00 0F
	cpx #$23.b		; E0 23
	lda $26.b,S		; A3 26
	and [$5C.b]		; 27 5C
	adc $22C9B6.l,X		; 7F B6 C9 22
	sta ($7A.b,X)		; 81 7A
	adc $F98B.w,Y		; 79 8B F9
	eor $233B.w		; 4D 3B 23
	jmp $7FD827.l		; 5C 27 D8 7F
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $87.b		; 00 87
	brk $07.b		; 00 07
	brk $47.b		; 00 47
	bra -115.b		; 80 8D
	sta $A7958B.l,X		; 9F 8B 95 A7
	lda $B0BA.w,Y		; B9 BA B0
	tsx		; BA
	bcs -92.b		; B0 A4
	ldx $B7.b,Y		; B6 B7
	lda $38.b		; A5 38
	and $9F609F.l		; 2F 9F 60 9F
	rts		; 60

	lda $41BE40.l,X		; BF 40 BE 41
	ldx $BA41.w,Y		; BE 41 BA
	eor ($BB.b,X)		; 41 BB
	rti		; 40

	and ($C0.b,S),Y		; 33 C0
	ora #$00F1.w		; 09 F1 00
	beq   0.b		; F0 00
	sed		; F8
	cop $FA.b		; 02 FA
	ora $E3.b,S		; 03 E3
	ora ($F3.b,X)		; 01 F3
	ora $D6CF.w		; 0D CF D6
	cmp $0619.w,X		; DD 19 06
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	cop $05.b		; 02 05
	ora $1C.b,S		; 03 1C
	ora $0C.b,S		; 03 0C
	ora $209F30.l		; 0F 30 9F 20
	sbc $E0.b,S		; E3 E0
	bcc -16.b		; 90 F0
	cmp #$60FD.w		; C9 FD 60
	cmp $CD74.w,X		; DD 74 CD
	ora ($C6.b),Y		; 11 C6
	stx $40.b,Y		; 96 40
	sty $EF08.w		; 8C 08 EF
	bpl -10.b		; 10 F6
	ora #$02FD.w		; 09 FD 02
	sbc $FD02.w,X		; FD 02 FD
	cop $FF.b		; 02 FF
	brk $FF.b		; 00 FF
	brk $F7.b		; 00 F7
	brk $27.b		; 00 27
	sec		; 38
	.db $42, $78		; 42 78
	rol $44.b,X		; 36 44
	cmp $4DCD.w,X		; DD CD 4D
	ora $3FB7.w		; 0D B7 3F
	ora [$3F.b],Y		; 17 3F
	ora [$3F.b]		; 07 3F
	and $807FC0.l,X		; 3F C0 7F 80
	tda		; 7B
	bra -14.b		; 80 F2
	brk $72.b		; 00 72
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	cpy #$07.b		; C0 07
	cmp $A3ED2F.l,X		; DF 2F ED A3
	.db $62, $3F, $7F		; 62 3F 7F
	jsr $B020.w		; 20 20 B0
	bcs -40.b		; B0 D8
	iny		; C8
	plb		; AB
	plb		; AB
	cpy #$20.b		; C0 20
.INDEX 8
	sep #$10		; E2 10
	sbc [$18.b]		; E7 18
	sbc $1EE000.l,X		; FF 00 E0 1E
	bvs  14.b		; 70 0E
	sec		; 38
	ora [$7B.b]		; 07 7B
	tsb $1C.b		; 04 1C
	ply		; 7A
	sec		; 38
	ldy $70.b,X		; B4 70
	inx		; E8
	pha		; 48
	sed		; F8
	rti		; 40

	beq   0.b		; F0 00
	ldy #$40.b		; A0 40
	cpy #$00.b		; C0 00
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	sed		; F8
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	tsb $C0.b		; 04 C0
	sec		; 38
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
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
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
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	bra -128.b		; 80 80
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
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	tsb $0D0C.w		; 0C 0C 0D
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	inc A		; 1A
	php		; 08
	ora [$0C.b],Y		; 17 0C
	ora ($0F.b,S),Y		; 13 0F
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($0A.b,X)		; 01 0A
	phd		; 0B
	ora [$0E.b]		; 07 0E
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	ora ($0A.b,X)		; 01 0A
	phd		; 0B
	bit $0F.b,X		; 34 0F
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$01.b]		; 07 01
	ora $1900.w		; 0D 00 19
	bra -109.b		; 80 93
	bra -25.b		; 80 E7
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	ora $92.b		; 05 92
	ora #$82E6.w		; 09 E6 82
	jmp ($18C5.w)		; 6C C5 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $4120.w		; 20 20 41
	sbc ($12.b,X)		; E1 12
	sbc ($CD.b,S),Y		; F3 CD
	rol $FC09.w,X		; 3E 09 FC
	and ($C8.b),Y		; 31 C8
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	jsr $61C5.w		; 20 C5 61
	asl $0CB3.w,X		; 1E B3 0C
	cmp $000700.l,X		; DF 00 07 00
	adc [$00.b],Y		; 77 00
	ora $7B.b		; 05 7B
	ora $78.b,S		; 03 78
	rti		; 40

	bit $7901.w,X		; 3C 01 79
	ora $35.b		; 05 35
	cop $07.b		; 02 07
	txa		; 8A
	sta $07BA35.l		; 8F 35 BA 07
	bra   7.b		; 80 07
	bra  64.b		; 80 40
	sta $01.b,S		; 83 01
	stx $05.b		; 86 05
	dex		; CA
	ora [$F8.b]		; 07 F8
	sta $40BF70.l		; 8F 70 BF 40
	bit $0E.b		; 24 0E
	php		; 08
	asl $BBB5.w		; 0E B5 BB
	lda $B9.b,S		; A3 B9
	brk $99.b		; 00 99
	ora $8B9C.w		; 0D 9C 8B
	eor $325F83.l,X		; 5F 83 5F 32
	cpy #$36.b		; C0 36
	cpy #$87.b		; C0 87
	rti		; 40

	sta [$40.b]		; 87 40
	sta [$60.b]		; 87 60
	sta $60.b,S		; 83 60
	cpy #$20.b		; C0 20
	cpy #$20.b		; C0 20
	plp		; 28
	and $57.b,X		; 35 57
	.db $62, $76, $42		; 62 76 42
	lda [$CF.b]		; A7 CF
	and [$FF.b],Y		; 37 FF
	sta $5F.b,S		; 83 5F
	eor ($1F.b)		; 52 1F
	bmi  63.b		; 30 3F
	and $807DC0.l,X		; 3F C0 7D 80
	adc $F080.w,X		; 7D 80 F0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $68.b		; 00 68
	pla		; 68
	ror $E87E.w,X		; 7E 7E E8
	sed		; F8
	bvc -16.b		; 50 F0
	and $38F9.w,Y		; 39 F9 38
	sbc ($32.b),Y		; F1 32
	sbc $05.b,S		; E3 05
	inc $97.b,X		; F6 97
	brk $80.b		; 00 80
	ora ($04.b,X)		; 01 04
	ora $0E.b,S		; 03 0E
	ora ($05.b,X)		; 01 05
	cop $09.b		; 02 09
	asl $13.b		; 06 13
	tsb $0837.w		; 0C 37 08
	cop $1F.b		; 02 1F
	.db $42, $5F		; 42 5F
	bra -49.b		; 80 CF
	jsr $40EF.w		; 20 EF 40
	lda $A0.b,S		; A3 A0
	ora ($2D.b),Y		; 11 2D
	trb $6F77.w		; 1C 77 6F
	brk $E0.b		; 00 E0
	rti		; 40

	ldy #$C0.b		; A0 C0
	bmi -32.b		; 30 E0
	bpl -32.b		; 10 E0
	trb $0EF0.w		; 1C F0 0E
	sbc $9F02.w,X		; FD 02 9F
	brk $FE.b		; 00 FE
	inc $FC74.w,X		; FE 74 FC
	stz $BC.b		; 64 BC
	ldy $DCB4.w		; AC B4 DC
	cpx $BC.b		; E4 BC
	cpy $74.b		; C4 74
	tsb $9868.w		; 0C 68 98
	ror $7C01.w,X		; 7E 01 7C
	ora $7C.b,S		; 03 7C
	cop $7C.b		; 02 7C
	cop $7C.b		; 02 7C
	cop $7C.b		; 02 7C
	ora $FC.b,S		; 03 FC
	ora $F8.b,S		; 03 F8
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	sty $00.b		; 84 00
	sty $4C80.w		; 8C 80 4C
	bra  76.b		; 80 4C
	cpy #$1C.b		; C0 1C
	bvc  32.b		; 50 20
	adc ($00.b,X)		; 61 00
	and ($00.b,X)		; 21 00
	ora ($03.b),Y		; 11 03
	cop $06.b		; 02 06
	ora $0C.b		; 05 0C
	asl A		; 0A
	clc		; 18
	and $01.b,X		; 35 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $F700.w		; 0E 00 F7
	phk		; 4B
	lda $59D6B0.l		; AF B0 D6 59
	adc $BD2A.w		; 6D 2A BD
	asl $6D.b,X		; 16 6D
	lsr $9D.b,X		; 56 9D
	inc $FF1E.w		; EE 1E FF
	ora $F32344.l		; 0F 44 23 F3
	rti		; 40

	sei		; 78
	bra  57.b		; 80 39
	cpy #$15.b		; C0 15
	bra  21.b		; 80 15
	mvp $8C,$4D		; 44 4D 8C
	ldx $60DC.w,Y		; BE DC 60
	jsr ($3CA0.w,X)		; FC A0 3C
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	cop $F8.b		; 02 F8
	asl $38.b,X		; 16 38
	.db $42, $D0		; 42 D0
	ora $82.b,S		; 03 82
	bit $0828.w,X		; 3C 28 08
	bra   0.b		; 80 00
	brk $04.b		; 00 04
	cpy $CC.b		; C4 CC
	trb $D4.b		; 14 D4
	pei ($D5.b)		; D4 D5
	bit $41EC.w		; 2C EC 41
	cmp $00.b,S		; C3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0D.b]		; 07 0D
	tsb $FFFF.w		; 0C FF FF
	adc $0000F0.l		; 6F F0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	cop $0F.b		; 02 0F
	tsb $FE.b		; 04 FE
	inc $00FF.w,X		; FE FF 00
	bvs 120.b		; 70 78
	sec		; 38
	sei		; 78
	sec		; 38
	cli		; 58
	sec		; 38
	cli		; 58
	sec		; 38
	sec		; 38
	clc		; 18
	sec		; 38
	clc		; 18
	sec		; 38
	clc		; 18
	bit $101C.w,X		; 3C 1C 10
	bit $3C10.w,X		; 3C 10 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	php		; 08
	trb $1E08.w		; 1C 08 1E
	tsb $4A.b		; 04 4A
	and $45.b,S		; 23 45
	ora ($25.b)		; 12 25
	ora ($22.b),Y		; 11 22
	ora #$0012.w		; 09 12 00
	ora $0900.w		; 0D 00 09
	tsb $3810.w		; 0C 10 38
	tsa		; 3B
	trb $0C3D.w		; 1C 3D 0C
	ora $1E0E.w,X		; 1D 0E 1E
	tsb $0C.b		; 04 0C
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora $0F.b,S		; 03 0F
	xce		; FB
	cpy $44.b		; C4 44
	tyx		; BB
	lda $807F53.l		; AF 53 7F 80
	cld		; D8
	and [$FF.b]		; 27 FF
	tsb $17EF.w		; 0C EF 17
	eor [$AB.b],Y		; 57 AB
	sta [$C3.b]		; 87 C3
	tsa		; 3B
	bra  95.b		; 80 5F
	tsb $27A7.w		; 0C A7 27
	lda $535F98.l,X		; BF 98 5F 53
	eor $042F48.l,X		; 5F 48 2F 04
	txy		; 9B
	rts		; 60

	ply		; 7A
	bcc  -7.b		; 90 F9
	sbc ($FE.b),Y		; F1 FE
	adc [$F2.b],Y		; 77 F2
	ora $F08F70.l		; 0F 70 8F F0
	dec $DCE0.w		; CE E0 DC
	sbc [$90.b],Y		; F7 90
	sbc [$60.b],Y		; F7 60
	inc $00.b,X		; F6 00
	sbc ($81.b),Y		; F1 81
	sbc $8EED.w		; ED ED 8E
	asl $28E8.w		; 0E E8 28
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$7840.w		; E0 40 78
	bvc  30.b		; 50 1E
	cmp $C6.b,X		; D5 C6
	ora [$F2.b],Y		; 17 F2
	ora [$7D.b]		; 07 7D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$E820.w		; A0 20 E8
	php		; 08
	dec A		; 3A
	cop $6C.b		; 02 6C
	rts		; 60

	ora #$0008.w		; 09 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	bra -36.b		; 80 DC
	ldy #$0000.w		; A0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$0040.w		; E0 40 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	bra   0.b		; 80 00
	bra  15.b		; 80 0F
	brk $3F.b		; 00 3F
	tsb $FC.b		; 04 FC
	ora [$F0.b],Y		; 17 F0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	and $20.b,S		; 23 20
	sta $000080.l		; 8F 80 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	ldy #$48FC.w		; A0 FC 48
	adc $000000.l		; 6F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	bpl  16.b		; 10 10
	sty $04.b,X		; 94 04
	asl A		; 0A
	ora ($0C.b,X)		; 01 0C
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $08.b,S		; 03 08
	ora [$34.b]		; 07 34
	ora $803F48.l		; 0F 48 3F 80
	adc $030101.l,X		; 7F 01 01 03
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora $0B.b,S		; 03 0B
	phd		; 0B
	ora [$17.b],Y		; 17 17
	rol $873E.w,X		; 3E 3E 87
	sed		; F8
	ora $F10EF5.l		; 0F F5 0E F1
	asl $1DE1.w,X		; 1E E1 1D
	sbc $14.b,S		; E3 14
	sbc $34.b,S		; E3 34
	cmp $34.b,S		; C3 34
	cmp $40.b,S		; C3 40
	rti		; 40

	sta [$90.b],Y		; 97 90
	ldx $A6.b		; A6 A6
	eor ($41.b,X)		; 41 41
	rti		; 40

	rti		; 40

	eor $43.b,S		; 43 43
	eor $43.b,S		; 43 43
	.db $82, $82, $78		; 82 82 78
	brk $87.b		; 00 87
	sei		; 78
	ror $DCB3.w,X		; 7E B3 DC
	adc $23FE39.l,X		; 7F 39 FE 23
	jsr ($F20D.w,X)		; FC 0D F2
	stx $69.b,Y		; 96 69
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	cmp $A281.w		; CD 81 A2
	jsl $90C4C4.l		; 22 C4 C4 90
	bcc  34.b		; 90 22
	jsl $800808.l		; 22 08 08 80
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	cpy #$C020.w		; C0 20 C0
	bcc  96.b		; 90 60
	bcc  96.b		; 90 60
	bne -96.b		; D0 A0
	rts		; 60

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	rti		; 40

	jsr $0020.w		; 20 20 00
	brk $80.b		; 00 80
	bra 122.b		; 80 7A
	ora ($6C.b,S),Y		; 13 6C
	tas		; 1B
	jsr ($FC32.w,X)		; FC 32 FC
	brk $BC.b		; 00 BC
	bvs -72.b		; 70 B8
	sei		; 78
	clv		; B8
	sei		; 78
	clv		; B8
	sei		; 78
	and $21.b,X		; 35 21
	inc A		; 1A
	cop $74.b		; 02 74
	mvp $08,$08		; 44 08 08
	brk $70.b		; 00 70
	bpl 124.b		; 10 7C
	bpl 124.b		; 10 7C
	bpl 124.b		; 10 7C
	lsr $5CBF.w,X		; 5E BF 5C
	and $0362.w,X		; 3D 62 03
	and $1F2F1F.l		; 2F 1F 2F 1F
	ora $0F170F.l,X		; 1F 0F 17 0F
	phd		; 0B
	adc [$0C.b],Y		; 77 0C
	rol $3E00.w,X		; 3E 00 3E
	brk $1E.b		; 00 1E
	cop $1F.b		; 02 1F
	ora [$1F.b]		; 07 1F
	ora [$0F.b]		; 07 0F
	ora $0F.b,S		; 03 0F
	brk $07.b		; 00 07
	asl A		; 0A
	bne   8.b		; D0 08
	ora $88.b,X		; 15 88
	and ($28.b)		; 32 28
	beq -12.b		; F0 F4
	sed		; F8
	sbc [$F8.b],Y		; F7 F8
	cmp [$C4.b]		; C7 C4
	bit $353B.w,X		; 3C 3B 35
	and [$E2.b],Y		; 37 E2
	sep #$40		; E2 40
	bne   0.b		; D0 00
	bmi  32.b		; 30 20
	sed		; F8
	cpy #$00F8.w		; C0 F8 00
	jsr ($F823.w,X)		; FC 23 F8
	clv		; B8
	rti		; 40

	cpy #$1C00.w		; C0 00 1C
	ora $29.b,S		; 03 29
	ora [$D8.b],Y		; 17 D8
	and [$7E.b]		; 27 7E
	sta ($FD.b)		; 92 FD
	bit $FB.b,X		; 34 FB
	rti		; 40

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b)		; 12 02
	bit $14.b,X		; 34 14
	lda ($20.b),Y		; B1 20
	adc ($40.b,S),Y		; 73 40
	sbc [$A0.b]		; E7 A0
	bit $2E1C.w		; 2C 1C 2E
	trb $1C6E.w		; 1C 6E 1C
	ror $3C3C.w,X		; 7E 3C 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	asl $1C0C.w,X		; 1E 0C 1C
	tsb $001C.w		; 0C 1C 00
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1C.b,S		; 03 1C
	brk $03.b		; 00 03
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
	xba		; EB
	trb $35.b		; 14 35
	dex		; CA
	and ($0C.b,S),Y		; 33 0C
	ora $001F00.l,X		; 1F 00 1F 00
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $37.b		; 00 37
	lda $1B.b,S		; A3 1B
	ora ($1C.b),Y		; 11 1C
	bpl  12.b		; 10 0C
	tsb $0808.w		; 0C 08 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80B0.w		; C0 B0 80
	rti		; 40

	cpy #$8000.w		; C0 00 80
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
	brk $03.b		; 00 03
	tsb $0003.w		; 0C 03 00
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
	sbc ($6C.b,S),Y		; F3 6C
	adc $27DF98.l,X		; 7F 98 DF 27
	and $1A.b		; 25 1A
	ora $000300.l,X		; 1F 00 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($FF90.w,X)		; FC 90 FF
	adc [$3F.b]		; 67 3F
	clc		; 18
	asl $0304.w,X		; 1E 04 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2F.b		; 00 2F
	cpx #$80BD.w		; E0 BD 80
	inc $06.b,X		; F6 06
	nop		; EA
	asl $1CD1.w		; 0E D1 1C
	lda ($3C.b,X)		; A1 3C
	eor ($74.b,X)		; 41 74
	sta $E6.b,S		; 83 E6
	eor $007F40.l,X		; 5F 40 7F 00
	sbc $F500.w,Y		; F9 00 F5
	tsb $EB.b		; 04 EB
	php		; 08
	cmp ($10.b,S),Y		; D3 10
	lda $20.b,S		; A3 20
	eor ($40.b,X)		; 41 40
	txs		; 9A
	and $C6.b,S		; 23 C6
	jsr $38D9.w		; 20 D9 38
	cmp [$3F.b]		; C7 3F
	cpy #$C03F.w		; C0 3F C0
	and [$C0.b]		; 27 C0
	jsr $20C0.w		; 20 C0 20
	cmp $DF01.w,X		; DD 01 DF
	brk $C7.b		; 00 C7
	brk $D8.b		; 00 D8
	clc		; 18
	cmp [$07.b]		; C7 07
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	adc $807F80.l,X		; 7F 80 7F 80
	adc $213E41.l,X		; 7F 41 3E 21
	asl $0C13.w,X		; 1E 13 0C
	ora ($0C.b)		; 12 0C
	bit $18.b		; 24 18
	and $3239.w,Y		; 39 39 32
	and ($32.b)		; 32 32
	and ($18.b)		; 32 18
	clc		; 18
	tsb $040C.w		; 0C 0C 04
	tsb $04.b		; 04 04
	tsb $10.b		; 04 10
	bpl 117.b		; 10 75
	.db $82, $67, $80		; 82 67 80
	eor $80.b,S		; 43 80
	eor ($80.b,X)		; 41 80
	eor ($80.b,X)		; 41 80
	stx $01.b		; 86 01
	ora $2606.w,Y		; 19 06 26
	tas		; 1B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora $916A04.l,X		; 1F 04 6A 91
	lda [$6D.b]		; A7 6D
	stz $0F44.w		; 9C 44 0F
	cmp ($20.b,X)		; C1 20
	sbc $48.b,S		; E3 48
	xce		; FB
	rts		; 60

	inc $609E.w,X		; FE 9E 60
	ora ($15.b),Y		; 11 15
	bcc   4.b		; 90 04
	sbc $7E46.w,X		; FD 46 7E
	rti		; 40

	dec $B6C2.w,X		; DE C2 B6
	lda ($80.b)		; B2 80
	brk $6C.b		; 00 6C
	tsb $8060.w		; 0C 60 80
	rti		; 40

	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
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
	brk $C0.b		; 00 C0
	jsr $20C0.w		; 20 C0 20
	cpy #$C020.w		; C0 20 C0
	jsr $2080.w		; 20 80 20
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $68.b		; 00 68
	bcs -76.b		; B0 B4
	cli		; 58
	lsr $3E2C.w,X		; 5E 2C 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	rti		; 40

	sei		; 78
	jsr $103C.w		; 20 3C 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $36.b		; 04 36
	rol $3E00.w,X		; 3E 00 3E
	tsb $142E.w		; 0C 2E 14
	rol $2E14.w		; 2E 14 2E
	trb $1F.b		; 14 1F
	tsb $1F.b		; 04 1F
	tsb $18.b		; 04 18
	bpl   0.b		; 10 00
	brk $1C.b		; 00 1C
	bpl  28.b		; 10 1C
	php		; 08
	trb $1C08.w		; 1C 08 1C
	php		; 08
	asl $0E0A.w		; 0E 0A 0E
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $4200.w,X		; 3C 00 42
	bit $7E99.w,X		; 3C 99 7E
	lda ($7E.b,X)		; A1 7E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $24.b		; 24 24
	mvn $7C,$54		; 54 54 7C
	bpl  90.b		; 10 5A
	bit $285E.w		; 2C 5E 28
	adc $7616.w		; 6D 16 76
	phd		; 0B
	rtl		; 6B

	ora $07.b		; 05 07
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	plp		; 28
	bit $3C10.w,X		; 3C 10 3C
	trb $1E.b		; 14 1E
	php		; 08
	ora $020704.l		; 0F 04 07 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	cpy #$00F8.w		; C0 F8 00
	beq   0.b		; F0 00
	rti		; 40

	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl -32.b		; 10 E0
	jsr $C0C0.w		; 20 C0 C0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cop $C6.b		; 02 C6
	cop $86.b		; 02 86
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	sta ($80.b,X)		; 81 80
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $11.b		; 04 11
	asl A		; 0A
	and $54.b,S		; 23 54
	and [$68.b]		; 27 68
	asl $40BF.w,X		; 1E BF 40
	sbc $4EBE16.l,X		; FF 16 BE 4E
	inc $0F3E.w,X		; FE 3E 0F
	ora ($1C.b,X)		; 01 1C
	brk $1A.b		; 00 1A
	cop $14.b		; 02 14
	trb $40.b		; 14 40
	brk $30.b		; 00 30
	rol $4E.b		; 26 4E
	ora $5C3F0C.l		; 0F 0C 3F 5C
	clv		; B8
	sbc $185C38.l,X		; FF 38 5C 18
	eor $20.b,S		; 43 20
	cmp $0F3E.w,X		; DD 3E 0F
	ora [$FF.b]		; 07 FF
	xba		; EB
	sta $3B0BEB.l,X		; 9F EB 0B 3B
	php		; 08
	sec		; 38
	ora $3B.b,S		; 03 3B
	brk $3D.b		; 00 3D
	brk $3E.b		; 00 3E
	ora $F7.b,S		; 03 F7
	wai		; CB
	xba		; EB
	phb		; 8B
	xba		; EB
	adc $B700.w,Y		; 79 00 B7
	php		; 08
	adc $9E30.w,Y		; 79 30 9E
	ora ($CF.b),Y		; 11 CF
	cpx #$E0F3.w		; E0 F3 E0
	sbc ($E0.b)		; F2 E0
	sbc ($E0.b),Y		; F1 E0
	stx $86.b		; 86 86
	pha		; 48
	pha		; 48
	stx $B6.b		; 86 B6
	ora ($75.b,X)		; 01 75
	brk $F0.b		; 00 F0
	cpy #$C0E0.w		; C0 E0 C0
	sbc ($C0.b,X)		; E1 C0
	cpx #$4020.w		; E0 20 40
	ror $F22E.w,X		; 7E 2E F2
	ldx $2EFE.w		; AE FE 2E
	inc $0E.b,X		; F6 0E
	lsr $7EAE.w,X		; 5E AE 7E
	cpy #$7804.w		; C0 04 78
	cpy #$A65E.w		; C0 5E A6
	and $062F20.l		; 2F 20 2F 06
	and $060F02.l		; 2F 02 0F 06
	lda $00C000.l		; AF 00 C0 00
	sed		; F8
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	beq   0.b		; F0 00
	txy		; 9B
	cpx #$AB7C.w		; E0 7C AB
	adc [$8B.b],Y		; 77 8B
	and $DF33D7.l		; 2F D7 33 DF
	rti		; 40

	lda $00BE41.l,X		; BF 41 BE 00
	brk $40.b		; 00 40
	rti		; 40

	tsa		; 3B
	ora $34.b,S		; 03 34
	bmi   8.b		; 30 08
	brk $0C.b		; 00 0C
	tsb $9A9A.w		; 0C 9A 9A
	bmi  48.b		; 30 30
	sed		; F8
	brk $D0.b		; 00 D0
	cli		; 58
	inx		; E8
	sty $0674.w		; 8C 74 06
	ply		; 7A
	ora $BD.b,S		; 03 BD
	sta ($5E.b,X)		; 81 5E
	cpy #$F037.w		; C0 37 F0
	brk $00.b		; 00 00
	jsr $7000.w		; 20 00 70
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $7E.b		; 00 7E
	brk $BF.b		; 00 BF
	bra  79.b		; 80 4F
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	eor $2A.b,X		; 55 2A
	sta $6A.b,X		; 95 6A
	sta $6D62.w,X		; 9D 62 6D
	ora ($3B.b)		; 12 3B
	tsb $0F.b		; 04 0F
	bpl   4.b		; 10 04
	trb $1C04.w		; 1C 04 1C
	and $056F05.l		; 2F 05 6F 05
	adc $0D1F0D.l		; 6F 0D 1F 0D
	ora $0009.w		; 0D 09 00
	brk $0B.b		; 00 0B
	php		; 08
	phd		; 0B
	php		; 08
	tyx		; BB
	cmp [$DB.b],Y		; D7 DB
	ldy $F9DF.w,X		; BC DF F9
	cmp $C3FDFD.l,X		; DF FD FD C3
	sed		; F8
	ora $C0.b,S		; 03 C0
	sbc ($20.b),Y		; F1 20
	bmi  -1.b		; 30 FF
	plp		; 28
	inc $FC42.w,X		; FE 42 FC
	tsb $FC.b		; 04 FC
	brk $EA.b		; 00 EA
	rol A		; 2A
	ora ($01.b,X)		; 01 01
	jsr $C020.w		; 20 20 C0
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	trb $3016.w		; 1C 16 30
	asl $01C0.w,X		; 1E C0 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	brk $70.b		; 00 70
	tsb $8CF0.w		; 0C F0 8C
	sec		; 38
	sty $8430.w		; 8C 30 84
	bcs -124.b		; B0 84
	sec		; 38
	tsb $0C00.w		; 0C 00 0C
	cpy #$F8F8.w		; C0 F8 F8
	php		; 08
	sei		; 78
	php		; 08
	beq -128.b		; F0 80
	sed		; F8
	bra 120.b		; 80 78
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	bmi  48.b		; 30 30
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
	dey		; 88
	brk $74.b		; 00 74
	dey		; 88
	cpx $38.b		; E4 38
	.db $82, $FC, $31		; 82 FC 31
	dec $9669.w		; CE 69 96
	tyx		; BB
	mvn $00,$00		; 54 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne  16.b		; D0 10
	mvp $84,$44		; 44 44 84
	sty $10.b		; 84 10
	bpl  64.b		; 10 40
	rti		; 40

	inc $38.b,X		; F6 38
	lsr $CC30.w,X		; 5E 30 CC
	bcc -112.b		; 90 90
	cld		; D8
	cpx #$9008.w		; E0 08 90
	sei		; 78
	ldy #$00B0.w		; A0 B0 00
	cpx #$0808.w		; E0 08 08
	brk $80.b		; 00 80
	bmi -112.b		; 30 90
	cpx #$F080.w		; E0 80 F0
	brk $E0.b		; 00 E0
	rts		; 60

	rti		; 40

	brk $40.b		; 00 40
	rti		; 40

	asl $0B01.w		; 0E 01 0B
	cop $05.b		; 02 05
	ora $0E.b		; 05 0E
	inc A		; 1A
	tas		; 1B
	and ($0B.b),Y		; 31 0B
	jsl $794615.l		; 22 15 46 79
	dec $0001.w		; CE 01 00
	brk $06.b		; 00 06
	ora ($0F.b,X)		; 01 0F
	cop $03.b		; 02 03
	tsb $1C01.w		; 0C 01 1C
	brk $3A.b		; 00 3A
	cop $34.b		; 02 34
	tsb $5C.b		; 04 5C
	rol $0E34.w,X		; 3E 34 0E
	ora $000200.l		; 0F 00 02 00
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	tsb $3F.b		; 04 3F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	sbc $E1DDEB.l,X		; FF EB DD E1
	inc $EA.b,X		; F6 EA
	sbc $906F01.l,X		; FF 01 6F 90
	lda $47BA52.l		; AF 52 BA 47
	dec A		; 3A
	cmp [$C1.b]		; C7 C1
	xba		; EB
	bra -29.b		; 80 E3
.ACCU 16
	rep #$EB		; C2 EB
	ora ($01.b,X)		; 01 01
	txs		; 9A
	txa		; 8A
	phy		; 5A
	php		; 08
	eor $18DF18.l,X		; 5F 18 DF 18
	bne -32.b		; D0 E0
	cld		; D8
	bne -72.b		; D0 B8
	ldy #$4874.w		; A0 74 48
	plx		; FA
	ldy $BD.b		; A4 BD
	eor ($DF.b)		; 52 DF
	bcs -33.b		; B0 DF
	sed		; F8
	cpy #$80E0.w		; C0 E0 80
	beq  32.b		; F0 20
	cpx #$C048.w		; E0 48 C0
	ldy $7688.w		; AC 88 76
	bit $FB.b		; 24 FB
	phk		; 4B
	jsr ($F804.w,X)		; FC 04 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -32.b		; 80 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	ora [$34.b]		; 07 34
	ora $181F20.l		; 0F 20 1F 18
	ora [$10.b]		; 07 10
	ora $100F10.l		; 0F 10 0F 10
	ora $07040B.l		; 0F 0B 04 07
	ora [$0B.b]		; 07 0B
	phd		; 0B
	ora $021D.w,X		; 1D 1D 02
	cop $04.b		; 02 04
	tsb $0C.b		; 04 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $04.b		; 04 04
	lsr A		; 4A
	lda $57.b,X		; B5 57
	tax		; AA
	rol A		; 2A
	pei ($29.b)		; D4 29
	bne  85.b		; D0 55
	sty $0ED2.w		; 8C D2 0E
	sbc $920F.w,X		; FD 0F 92
	rtl		; 6B

	and ($21.b,X)		; 21 21
	jsr $0A20.w		; 20 20 0A
	ora ($0F.b,X)		; 01 0F
	brk $03.b		; 00 03
	brk $0D.b		; 00 0D
	tsb $0202.w		; 0C 02 02
	jmp ($0B00.w)		; 6C 00 0B
	sei		; 78
	ora $3C.b		; 05 3C
	cop $0E.b		; 02 0E
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	brk $06.b		; 00 06
	ora $06.b,S		; 03 06
	and [$30.b],Y		; 37 30
	phd		; 0B
	php		; 08
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	bra  48.b		; 80 30
	cpx #$C030.w		; E0 30 C0
	clc		; 18
	cpy #$2018.w		; C0 18 20
	sec		; 38
	rti		; 40

	sei		; 78
	rti		; 40

	bvs -64.b		; 70 C0
	bvs -32.b		; 70 E0
	jsr $00C0.w		; 20 C0 00
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	bne  16.b		; D0 10
	bcs  48.b		; B0 30
	ldy #$A020.w		; A0 20 A0
	jsr $1C05.w		; 20 05 1C
	cop $0E.b		; 02 0E
	cop $0E.b		; 02 0E
	cop $0E.b		; 02 0E
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	phd		; 0B
	php		; 08
	ora $04.b		; 05 04
	ora $04.b		; 05 04
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	cpy #$E010.w		; C0 10 E0
	bpl -32.b		; 10 E0
	clc		; 18
	cpx #$F018.w		; E0 18 F0
	clc		; 18
	cpx #$E008.w		; E0 08 E0
	php		; 08
	bvs   8.b		; 70 08
	cpx #$E000.w		; E0 00 E0
	brk $F0.b		; 00 F0
	bpl -16.b		; 10 F0
	bpl -32.b		; 10 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $B7.b		; 00 B7
	sta [$18.b]		; 87 18
	ora $00FEC0.l,X		; 1F C0 FE 00
	beq -64.b		; F0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	brk $E6.b		; 00 E6
	asl $30.b		; 06 30
	bmi -64.b		; 30 C0
	cpy #$0000.w		; C0 00 00
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
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F9.b		; 00 F9
	asl $3F.b,X		; 16 3F
	cmp #$34CF.w		; C9 CF 34
	sbc $403380.l,X		; FF 80 33 40
	lda $863180.l,X		; BF 80 31 86
	jmp ($F641.w,X)		; 7C 41 F6
	cpx #$30FA.w		; E0 FA 30
	and $0108.w,X		; 3D 08 01
	bra  12.b		; 80 0C
	jmp.w [$DE00]		; DC 00 DE
	asl $03DE.w		; 0E DE 03
	cmp $F800E0.l,X		; DF E0 00 F8
	brk $E8.b		; 00 E8
	bvc  -8.b		; 50 F8
	rti		; 40

	iny		; C8
	tsb $F8.b		; 04 F8
	sty $D8.b		; 84 D8
	rol $BC.b		; 26 BC
	asl $00.b		; 06 00
	brk $60.b		; 00 60
	rts		; 60

	bvs  32.b		; 70 20
	rti		; 40

	brk $30.b		; 00 30
	bmi -128.b		; 30 80
	bcs -92.b		; B0 A4
	ldy $40.b,X		; B4 40
	bvs  94.b		; 70 5E
	and $7D.b		; 25 7D
	cop $3E.b		; 02 3E
	bpl  84.b		; 10 54
	sec		; 38
	mvn $5C,$38		; 54 38 5C
	bmi  44.b		; 30 2C
	bpl  60.b		; 10 3C
	brk $2F.b		; 00 2F
	asl A		; 0A
	asl $181C.w,X		; 1E 1C 18
	php		; 08
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	php		; 08
	clc		; 18
	php		; 08
	brk $00.b		; 00 00
	pla		; 68
	asl $007E.w		; 0E 7E 00
	ror $7C18.w,X		; 7E 18 7C
	bpl 124.b		; 10 7C
	bpl 124.b		; 10 7C
	bpl -72.b		; 10 B8
	bvc -72.b		; 50 B8
	bvc  20.b		; 50 14
	tsb $20.b		; 04 20
	jsr $243C.w		; 20 3C 24
	sec		; 38
	plp		; 28
	sec		; 38
	plp		; 28
	sec		; 38
	plp		; 28
	bvs  32.b		; 70 20
	bvs  32.b		; 70 20
	ora $00.b,S		; 03 00
	ora [$02.b]		; 07 02
	ora $166F02.l,X		; 1F 02 6F 16
	cmp $947B28.l,X		; DF 28 7B 94
	pea $F808.w		; F4 08 F8
	rti		; 40

	brk $00.b		; 00 00
	cop $00.b		; 02 00
	asl $04.b		; 06 04
	asl $3F08.w,X		; 1E 08 3F
	ora [$BC.b],Y		; 17 BC
	plp		; 28
	sei		; 78
	bvs  96.b		; 70 60
	jsr $00F8.w		; 20 F8 00
	jmp.w [$FC20]		; DC 20 FC
	php		; 08
	inc $DF00.w,X		; FE 00 DF
	cop $0F.b		; 02 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bmi  56.b		; 30 38
	clc		; 18
	clc		; 18
	bpl  28.b		; 10 1C
	trb $0C0E.w		; 1C 0E 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $46.b		; 14 46
	bmi  70.b		; 30 46
	sec		; 38
	lsr $CE38.w		; 4E 38 CE
	pla		; 68
	cpy $8C20.w		; CC 20 8C
	bmi -100.b		; 30 9C
	bpl -104.b		; 10 98
	sec		; 38
	brk $3C.b		; 00 3C
	tsb $34.b		; 04 34
	tsb $74.b		; 04 74
	mvp $00,$30		; 44 30 00
	sei		; 78
	php		; 08
	pla		; 68
	php		; 08
	rts		; 60

	brk $03.b		; 00 03
	brk $05.b		; 00 05
	ora $06.b,S		; 03 06
	ora $08.b,S		; 03 08
	ora [$08.b]		; 07 08
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$00.b]		; 07 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $06.b		; 00 06
	asl $04.b		; 06 04
	tsb $00.b		; 04 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $E0.b		; 02 E0
	brk $3F.b		; 00 3F
	cpy #$57F8.w		; C0 F8 57
	sbc [$1B.b]		; E7 1B
	adc $5397.w		; 6D 97 53
	lda $C03FC2.l,X		; BF C2 3F C0
	and $800000.l,X		; 3F 00 00 80
	bra 119.b		; 80 77
	ora [$6C.b]		; 07 6C
	pla		; 68
	inc A		; 1A
	ora ($0C.b)		; 12 0C
	tsb $3939.w		; 0C 39 39
	and ($32.b)		; 32 32
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	asl $0C.b		; 06 0C
	cop $08.b		; 02 08
	ora $11.b		; 05 11
	asl A		; 0A
	and $00.b,S		; 23 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	brk $1D.b		; 00 1D
	ora ($AB.b,X)		; 01 AB
	ldy $D5.b,X		; B4 D5
	phy		; 5A
.ACCU 8
	sep #$29		; E2 29
	eor [$72.b],Y		; 57 72
	stx $F7.b		; 86 F7
	ldx $5ECF.w,Y		; BE CF 5E
	lda $27BE5C.l,X		; BF 5C BE 27
	sbc ($53.b,S),Y		; F3 53
	adc $3CA1.w,Y		; 79 A1 3C
	bra  26.b		; 80 1A
	rti		; 40

	lsr $0E04.w,X		; 5E 04 0E
	tsb $0D3E.w		; 0C 3E 0D
	and $00F8.w,X		; 3D F8 00
	jsr ($FCA0.w,X)		; FC A0 FC
	pha		; 48
	sbc $013C08.l,X		; FF 08 3C 01
	dec $9C09.w,X		; DE 09 9C
	adc $DA.b,S		; 63 DA
	ora ($60.b,X)		; 01 60
	rts		; 60

	dey		; 88
	php		; 08
	iny		; C8
	bra  40.b		; 80 28
	jsr $C2C2.w		; 20 C2 C2
	plp		; 28
	nop		; EA
	ror A		; 6A
	nop		; EA
	bit $E6.b		; 24 E6
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
	brk $00.b		; 00 00
	ora $04.b,S		; 03 04
	ora ($0A.b,X)		; 01 0A
	ora $10.b,S		; 03 10
	and $04.b,S		; 23 04
	and $02.b,X		; 35 02
	ora $02.b,X		; 15 02
	asl A		; 0A
	ora $0B.b		; 05 0B
	tsb $00.b		; 04 00
	brk $06.b		; 00 06
	asl $0C.b		; 06 0C
	tsb $1C1C.w		; 0C 1C 1C
	asl A		; 0A
	clc		; 18
	asl A		; 0A
	php		; 08
	ora $00.b		; 05 00
	ora $01.b		; 05 01
	sbc $40BF03.l,X		; FF 03 BF 40
	ror $5E81.w,X		; 7E 81 5E
	lda ($D5.b,X)		; A1 D5
	rol A		; 2A
	sbc [$1A.b],Y		; F7 1A
	sbc [$1A.b],Y		; F7 1A
	xce		; FB
	ora $03.b,X		; 15 03
	ora $50.b,S		; 03 50
	bpl -43.b		; 10 D5
	mvn $14,$B5		; 54 B5 14
	ldx $BE94.w,Y		; BE 94 BE
	ldy $BF.b		; A4 BF
	lda $BF.b		; A5 BF
	tax		; AA
	ror $FF04.w,X		; 7E 04 FF
	sta $01FF.w		; 8D FF 01
	ldx $FE41.w,Y		; BE 41 FE
	adc ($7C.b,X)		; 61 7C
	tsx		; BA
	jmp ($B898.w,X)		; 7C 98 B8
	rti		; 40

	and $1CA8.w		; 2D A8 1C
	bcc  60.b		; 90 3C
	bit $81C1.w,X		; 3C C1 81
	jsr ($F89C.w,X)		; FC 9C F8
	rti		; 40

	sed		; F8
	rts		; 60

	beq -80.b		; F0 B0
	sty $1CF1.w		; 8C F1 1C
	sbc ($0E.b),Y		; F1 0E
	sbc $0C.b,S		; E3 0C
	lda $0C.b,S		; A3 0C
	and $08.b,S		; 23 08
	jsl $1C2208.l		; 22 08 22 1C
	ror $5E.b,X		; 76 5E
	bvc -114.b		; 50 8E
	bra -100.b		; 80 9C
	bra  30.b		; 80 1E
	cop $1E.b		; 02 1E
	cop $1C.b		; 02 1C
	brk $1C.b		; 00 1C
	brk $28.b		; 00 28
	jsr $0F08.w		; 20 08 0F
	ror $E300.w,X		; 7E 00 E3
	cpx #$FF03.w		; E0 03 FF
	brk $1F.b		; 00 1F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pea $FF04.w		; F4 04 FF
	brk $1F.b		; 00 1F
	brk $1C.b		; 00 1C
	trb $0101.w		; 1C 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp $10C1.w		; 4C C1 10
	adc ($D2.b),Y		; 71 D2
	ora ($34.b,S),Y		; 13 34
	ora [$38.b]		; 07 38
	sbc $00FE01.l,X		; FF 01 FE 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	ora ($AF.b,X)		; 01 AF
	and ($ED.b,X)		; 21 ED
	ora ($FB.b,X)		; 01 FB
	ora $C6.b,S		; 03 C6
	dec $00.b		; C6 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	cpy #$8060.w		; C0 60 80
	bvs -64.b		; 70 C0
	sed		; F8
	jsr $187E.w		; 20 7E 18
	rol $0000.w,X		; 3E 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	rti		; 40

	rts		; 60

	jsr $5070.w		; 20 70 50
	sec		; 38
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	jsr $B040.w		; 20 40 B0
	cpx #$F038.w		; E0 38 F0
	clc		; 18
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	jsr $B090.w		; 20 90 B0
	bcc -80.b		; 90 B0
	brk $00.b		; 00 00
	dey		; 88
	brk $74.b		; 00 74
	dey		; 88
.ACCU 8
.INDEX 8
	sep #$3C		; E2 3C
.ACCU 16
.INDEX 16
	rep #$FC		; C2 FC
	sta $39E6.w,Y		; 99 E6 39
	dec $DD.b		; C6 DD
	rol A		; 2A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne  16.b		; D0 10
	bit $24.b		; 24 24
	mvp $02,$44		; 44 44 02
	cop $20.b		; 02 20
	jsr $9866.w		; 20 66 98
	ldx $18.b		; A6 18
	stz $D8.b,X		; 74 D8
	cpy #$F048.w		; C0 48 F0
	clc		; 18
	brk $30.b		; 00 30
	bra -80.b		; 80 B0
	brk $E0.b		; 00 E0
	dey		; 88
	dey		; 88
	bpl  80.b		; 10 50
	brk $40.b		; 00 40
	cld		; D8
	pla		; 68
	cpx #$E000.w		; E0 00 E0
	jsr $2060.w		; 20 60 20
	brk $00.b		; 00 00
	bvc  15.b		; 50 0F
	pla		; 68
	ora $303F40.l,X		; 1F 40 3F 30
	ora $211F20.l		; 0F 20 1F 21
	asl $1827.w,X		; 1E 27 18
	ora $0E12.w		; 0D 12 0E
	asl $1616.w		; 0E 16 16
	dec A		; 3A
	dec A		; 3A
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	brk $02.b		; 00 02
	cmp #$D636.w		; C9 36 D6
	and #$966A.w		; 29 6A 96
	adc #$9094.w		; 69 94 90
	tsb $0E9A.w		; 0C 9A 0E
	cpx #$141B.w		; E0 1B 14
	sbc #$2020.w		; E9 20 20
	ora ($01.b,X)		; 01 01
	ora #$0F00.w		; 09 00 0F
	tsb $07.b		; 04 07
	tsb $05.b		; 04 05
	tsb $1F.b		; 04 1F
	ora $EE.b,S		; 03 EE
	tsb $3C.b		; 04 3C
	eor $7E.b,S		; 43 7E
	plp		; 28
	sbc $0FF410.l,X		; FF 10 F4 0F
	lda $1F5F5F.l		; AF 5F 5F 1F
	and [$0F.b],Y		; 37 0F
	ora $000000.l		; 0F 00 00 00
	bit $5004.w		; 2C 04 50
	rti		; 40

	jsr $472F.w		; 20 2F 47
	ora $003F07.l,X		; 1F 07 3F 00
	ora $9B0000.l		; 0F 00 00 9B
	jmp $B363A5.l		; 5C A5 63 B3
	adc ($0B.b,S),Y		; 73 0B
	ora $F8FFFB.l		; 0F FB FF F8
	sbc $FEE09F.l,X		; FF 9F E0 FE
	asl $7C00.w,X		; 1E 00 7C
	ora ($7B.b,X)		; 01 7B
	ora ($7F.b,X)		; 01 7F
	ora ($FF.b,X)		; 01 FF
	sbc $E0FF.w,Y		; F9 FF E0
	sbc $00E000.l,X		; FF 00 E0 00
	ora $C725D8.l,X		; 1F D8 25 C7
	cld		; D8
	tsb $8CC0.w		; 0C C0 8C
	cmp ($AF.b,X)		; C1 AF
	cmp ($1A.b),Y		; D1 1A
	sty $D7.b		; 84 D7
	ora #$522D.w		; 09 2D 52
	rol $26.b		; 26 26
	tya		; 98
	sed		; F8
	bpl  -8.b		; 10 F8
	bcc  -8.b		; 90 F8
	bcc -48.b		; 90 D0
	ora $C0.b		; 05 C0
	tsb $1A04.w		; 0C 04 1A
	iny		; C8
	ora #$0F19.w		; 09 19 0F
	rts		; 60

	eor $B5C0.w,Y		; 59 C0 B5
	sty $6B.b		; 84 6B
	tsb $1CD7.w		; 0C D7 1C
	cmp $18.b,S		; C3 18
	lda $38.b,S		; A3 38
	asl $00.b		; 06 00
	ora $003F00.l,X		; 1F 00 3F 00
	tda		; 7B
	brk $F7.b		; 00 F7
	tsb $EB.b		; 04 EB
	php		; 08
	sbc [$10.b],Y		; F7 10
	cmp [$10.b],Y		; D7 10
	phd		; 0B
	tsb $07.b		; 04 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $C1.b		; 00 C1
	rol $0105.w,X		; 3E 05 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $957B01.l,X		; 3F 01 7B 95
	tyx		; BB
	eor $3AFD.w,X		; 5D FD 3A
	adc $1F0100.l,X		; 7F 00 01 1F
	brk $0F.b		; 00 0F
	beq   3.b		; F0 03
	beq  47.b		; F0 2F
	lda $227F2A.l,X		; BF 2A 7F 22
	adc $000045.l,X		; 7F 45 00 00
	asl $06.b		; 06 06
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	cpx #$C8C0.w		; E0 C0 C8
	bcs -16.b		; B0 F0
	cpy $36D4.w		; CC D4 36
	jmp $80BEC1.l		; 5C C1 BE 80
	cmp $E027C0.l,X		; DF C0 27 E0
	phd		; 0B
	sed		; F8
	beq  64.b		; F0 40
	iny		; C8
	php		; 08
	plp		; 28
	jsr $80BE.w		; 20 BE 80
	adc $003F00.l,X		; 7F 00 3F 00
	cmp $3037C0.l,X		; DF C0 37 30
	trb $7076.w		; 1C 76 70
	asl $7C.b,X		; 16 7C
	brk $5C.b		; 00 5C
	sec		; 38
	jmp $701CB0.l		; 5C B0 1C 70
	stz $EC30.w		; 9C 30 EC
	bmi  40.b		; 30 28
	jsr $040C.w		; 20 0C 04
	jsr $3820.w		; 20 20 38
	brk $38.b		; 00 38
	php		; 08
	clv		; B8
	php		; 08
	cld		; D8
	php		; 08
	iny		; C8
	php		; 08
	beq -96.b		; F0 A0
	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $010700.l		; 0F 00 07 01
	ora $050E06.l		; 0F 06 0E 05
	ora $0E06.w		; 0D 06 0E
	ora ($07.b,X)		; 01 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $07.b		; 02 07
	ora ($07.b,X)		; 01 07
	cop $06.b		; 02 06
	brk $07.b		; 00 07
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $85FF.w,X		; FD FF 85
	ror $8781.w,X		; 7E 81 87
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	sei		; 78
	sta $05.b		; 85 05
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
	ora ($03.b,X)		; 01 03
	brk $06.b		; 00 06
	ora $06.b,S		; 03 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	jsr $2C63.w		; 20 63 2C
	inc $DE50.w		; EE 50 DE
	bcc -100.b		; 90 9C
	jsr $A03C.w		; 20 3C A0
	sec		; 38
	ldy #$8030.w		; A0 30 80
	bmi  30.b		; 30 1E
	cop $50.b		; 02 50
	rti		; 40

	ldy $688C.w		; AC 8C 68
	php		; 08
	cld		; D8
	clc		; 18
	bne  16.b		; D0 10
	cpy #$E000.w		; C0 00 E0
	jsr $001E.w		; 20 1E 00
	tsb $11.b		; 04 11
	ora [$28.b]		; 07 28
	ora $4A.b		; 05 4A
	rol $1341.w		; 2E 41 13
	bit $001F.w		; 2C 1F 00
	and [$0A.b],Y		; 37 0A
	brk $01.b		; 00 01
	php		; 08
	phd		; 0B
	clc		; 18
	clc		; 18
	dec A		; 3A
	sec		; 38
	ora $34.b,X		; 15 34
	ora $0B01.w		; 0D 01 0B
	phd		; 0B
	inc A		; 1A
	bpl 127.b		; 10 7F
	adc $EE9F9E.l,X		; 7F 9E 9F EE
	ror $15F0.w		; 6E F0 15
	tda		; 7B
	txa		; 8A
	sbc $50EF14.l		; EF 14 EF 50
	inc $1E5B.w		; EE 5B 1E
	sbc $04FF0E.l,X		; FF 0E FF 04
	adc $A89F90.l,X		; 7F 90 9F A8
	rol $6474.w		; 2E 74 64
	ply		; 7A
	rol A		; 2A
	xce		; FB
	ldy #$0701.w		; A0 01 07
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $1B.b,X		; 55 1B
	.db $62, $0E, $7A		; 62 0E 7A
	asl $8EFA.w		; 0E FA 8E
	sbc $F18F.w,Y		; F9 8F F1
	sta [$30.b]		; 87 30
	sta [$38.b]		; 87 38
	sta [$EA.b]		; 87 EA
	asl A		; 0A
	sbc $F108.w,Y		; F9 08 F1
	brk $71.b		; 00 71
	brk $72.b		; 00 72
	cop $7A.b		; 02 7A
	cop $F9.b		; 02 F9
	sta ($FD.b,X)		; 81 FD
	sta $27.b		; 85 27
	inc A		; 1A
	and $2B5D14.l		; 2F 14 5D 2B
	stz $BD6A.w,X		; 9E 6A BD
	eor $7A.b,X		; 55 7A
	cop $7D.b		; 02 7D
	cop $7A.b		; 02 7A
	ora $13.b		; 05 13
	ora ($04.b),Y		; 11 04
	brk $28.b		; 00 28
	and $4A.b,S		; 23 4A
	eor $51.b,S		; 43 51
	eor [$10.b]		; 47 10
	ora [$20.b],Y		; 17 20
	jsl $F90400.l		; 22 00 04 F9
	lsr $21FF.w,X		; 5E FF 21
	sbc $81FE14.l,X		; FF 14 FE 81
	eor $A362.w,X		; 5D 62 A3
	lda $0F21.w,Y		; B9 21 0F
	cld		; D8
	cmp $C3.b,S		; C3 C3
	sta ($ED.b,X)		; 81 ED
	cpy $6171.w		; CC 71 61
	ldy #$02A0.w		; A0 A0 02
	stx $0545.w		; 8E 45 05
	sbc $3E08.w,Y		; F9 08 3E
	cop $80.b		; 02 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	bra -96.b		; 80 A0
	rti		; 40

	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	rti		; 40

	bne  32.b		; D0 20
	bcs  64.b		; B0 40
	inx		; E8
	bpl -56.b		; 10 C8
	bmi -80.b		; 30 B0
	cpy #$80F0.w		; C0 F0 80
	cpy #$E030.w		; C0 30 E0
	bvs  96.b		; 70 60
	rti		; 40

	rts		; 60

	jsr $A0B0.w		; 20 B0 A0
	bcs -128.b		; B0 80
	cpy #$C000.w		; C0 00 C0
	rti		; 40

	ldy #$00A0.w		; A0 A0 00
	brk $00.b		; 00 00
	clc		; 18
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	cpx #$6008.w		; E0 08 60
	tsb $0C78.w		; 0C 78 0C
	clv		; B8
	sty $84B0.w		; 8C B0 84
	beq  16.b		; F0 10
	cpx #$E000.w		; E0 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	sei		; 78
	brk $30.b		; 00 30
	stx $5C.b		; 86 5C
	dec $58.b		; C6 58
.INDEX 16
	rep #$18		; C2 18
.ACCU 16
	rep #$2C		; C2 2C
.ACCU 8
	sep #$2C		; E2 2C
	adc $0E.b,S		; 63 0E
	adc $10.b,S		; 63 10
	and ($FC.b),Y		; 31 FC
	sty $B8.b		; 84 B8
	bra  60.b		; 80 3C
	brk $7C.b		; 00 7C
	rti		; 40

	jmp $021E40.l		; 5C 40 1E 02
	bit $0E20.w,X		; 3C 20 0E
	brk $1C.b		; 00 1C
	ror $7E0C.w,X		; 7E 0C 7E
	tsb $087F.w		; 0C 7F 08
	tda		; 7B
	clc		; 18
	tda		; 7B
	ora ($73.b)		; 12 73
	asl $33.b,X		; 16 33
	asl $33.b,X		; 16 33
	jsr $3020.w		; 20 20 30
	bmi  50.b		; 30 32
	and ($36.b)		; 32 36
	and ($26.b)		; 32 26
	jsl $0C202C.l		; 22 2C 20 0C
	brk $0C.b		; 00 0C
	brk $14.b		; 00 14
	and ($14.b),Y		; 31 14
	and ($14.b),Y		; 31 14
	and ($04.b),Y		; 31 04
	and ($06.b),Y		; 31 06
	and ($06.b),Y		; 31 06
	ora ($0E.b),Y		; 11 0E
	ora $190E.w,Y		; 19 0E 19
	asl $0E00.w		; 0E 00 0E
	brk $0E.b		; 00 0E
	brk $1E.b		; 00 1E
	bpl  30.b		; 10 1E
	bpl  14.b		; 10 0E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	ora $1B02.w,Y		; 19 02 1B
	ora $061F00.l,X		; 1F 00 1F 06
	ora [$0A.b],Y		; 17 0A
	ora [$0A.b],Y		; 17 0A
	ora [$0A.b],Y		; 17 0A
	ora $000602.l		; 0F 02 06 00
	tsb $0008.w		; 0C 08 00
	brk $0E.b		; 00 0E
	php		; 08
	asl $0E04.w		; 0E 04 0E
	tsb $0E.b		; 04 0E
	tsb $06.b		; 04 06
	tsb $0F.b		; 04 0F
	cop $0F.b		; 02 0F
	cop $0B.b		; 02 0B
	asl $0F.b		; 06 0F
	ora ($0F.b,X)		; 01 0F
	brk $0D.b		; 00 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	tsb $07.b		; 04 07
	ora $07.b		; 05 07
	ora ($03.b,X)		; 01 03
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	tsb $03.b		; 04 03
	tsb $0C06.w		; 0C 06 0C
	cop $08.b		; 02 08
	ora $19.b		; 05 19
	trb $3A09.w		; 1C 09 3A
	phd		; 0B
	and $0306.w,X		; 3D 06 03
	brk $07.b		; 00 07
	tsb $03.b		; 04 03
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	php		; 08
	ora [$01.b]		; 07 01
	tsb $00.b		; 04 00
	ora ($12.b)		; 12 12
	rti		; 40

	rts		; 60

	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$0040.w		; C0 40 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	cop $5F.b		; 02 5F
	bit $3F.b		; 24 3F
	tsb $011F.w		; 0C 1F 01
	ora $0303.w		; 0D 03 03
	tsb $01.b		; 04 01
	ora [$01.b]		; 07 01
	ora [$36.b]		; 07 36
	bit $36.b,X		; 34 36
	ora ($0D.b)		; 12 0D
	ora ($0D.b,X)		; 01 0D
	tsb $0003.w		; 0C 03 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	stp		; DB
	inc $EFDB.w		; EE DB EF
	stp		; DB
	lda $BDDB.w		; AD DB BD
	lda $BDDB.w,X		; BD DB BD
	tad		; 5B
	sbc $201F1C.l,X		; FF 1C 1F 20
	sbc $10FF11.l,X		; FF 11 FF 10
	sbc $42FF52.l,X		; FF 52 FF 42
	sbc $A4FF24.l,X		; FF 24 FF A4
	ora $E001.w,X		; 1D 01 E0
	jsr $0100.w		; 20 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sta [$78.b]		; 87 78
	cmp [$7C.b]		; C7 7C
	dec $5C.b		; C6 5C
	dec $18.b		; C6 18
.INDEX 16
	rep #$18		; C2 18
.INDEX 16
	rep #$18		; C2 18
.INDEX 16
	rep #$1C		; C2 1C
	dec $FC.b		; C6 FC
	sty $3C.b		; 84 3C
	tsb $38.b		; 04 38
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	rti		; 40

	jmp ($7C40.w,X)		; 7C 40 7C
	rti		; 40

	sei		; 78
	rti		; 40

	php		; 08
	ora [$0B.b]		; 07 0B
	ora $68.b,S		; 03 68
	sty $5A.b		; 84 5A
	sta [$4B.b]		; 87 4B
	sta [$4B.b],Y		; 97 4B
	sta [$4B.b],Y		; 97 4B
	sta [$43.b],Y		; 97 43
	sta [$00.b],Y		; 97 00
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	ora [$20.b]		; 07 20
	adc [$30.b]		; 67 30
	adc [$31.b],Y		; 77 31
	adc [$31.b],Y		; 77 31
	adc [$31.b],Y		; 77 31
	adc $08E127.l,X		; 7F 27 E1 08
	sed		; F8
	eor $3E.b,S		; 43 3E
	eor #$86.b		; 49 86
	xce		; FB
	cpy $FCFA.w		; CC FA FC
	plx		; FA
	jsr ($F8FC.w,X)		; FC FC F8
	dec $37C0.w,X		; DE C0 37
	bmi  12.b		; 30 0C
	sty $B030.w		; 8C 30 B0
	brk $CC.b		; 00 CC
	beq  -4.b		; F0 FC
	beq  -4.b		; F0 FC
	beq  -8.b		; F0 F8
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	bra  -8.b		; 80 F8
	rts		; 60

	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	cpx #$0080.w		; E0 80 00
	brk $00.b		; 00 00
	brk $A1.b		; 00 A1
	asl $3ED1.w,X		; 1E D1 3E
	bra 127.b		; 80 7F
	rts		; 60

	ora $433E41.l,X		; 1F 41 3E 43
	bit $3C43.w,X		; 3C 43 3C
	and $1C.b,S		; 23 1C
	trb $2C1C.w		; 1C 1C 2C
	bit $7474.w		; 2C 74 74
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bpl  16.b		; 10 10
	pld		; 2B
	pei ($5D.b)		; D4 5D
	tay		; A8
	plb		; AB
	eor ($A6.b)		; 52 A6
	eor $D7.b,S		; 43 D7
	bmi -54.b		; 30 CA
	and $7E96.w,Y		; 39 96 7E
	sei		; 78
	cmp $808484.l,X		; DF 84 84 80
	.db $82, $28, $06		; 82 28 06
	and $000F02.l,X		; 3F 02 0F 00
	ora [$11.b],Y		; 17 11
	eor #$08.b		; 49 08
	cmp ($01.b,X)		; C1 01
	cmp $CB7BE7.l,X		; DF E7 7B CB
	dec A		; 3A
	phk		; 4B
	jmp $8262.w		; 4C 62 82
	jsr $E041.w		; 20 41 E0
	bra -64.b		; 80 C0
	eor ($80.b,X)		; 41 80
	and $27.b,S		; 23 27
	ora #$0F.b		; 09 0F
	cpy #$804F.w		; C0 4F 80
	ora $C0.b,S		; 03 C0
	ora ($80.b,X)		; 01 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	cpy #$E0E0.w		; C0 E0 E0
	bvs -104.b		; 70 98
	jsr ($8E6C.w,X)		; FC 6C 8E
	cmp [$00.b]		; C7 00
	cpy #$C080.w		; C0 80 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	rti		; 40

	sed		; F8
	brk $9C.b		; 00 9C
	rti		; 40

	adc $1CF784.l		; 6F 84 F7 1C
	stx $EEDF.w		; 8E DF EE
	cmp $D4FBEE.l,X		; DF EE FB D4
	ldx $C8.b,Y		; B6 C8
	cpy #$40BC.w		; C0 BC 40
	bra -128.b		; 80 80
	brk $08.b		; 00 08
	sbc $40EECC.l		; EF CC EE 40
	inc $C400.w		; EE 00 C4
	php		; 08
	iny		; C8
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	ora $0F1400.l		; 0F 00 14 0F
	tas		; 1B
	ora $1C23.w		; 0D 23 1C
	and ($1E.b,X)		; 21 1E
	and ($1E.b),Y		; 31 1E
	and ($1D.b)		; 32 1D
	and ($1D.b)		; 32 1D
	brk $00.b		; 00 00
	asl A		; 0A
	asl A		; 0A
	ora ($00.b,X)		; 01 00
	ora $1019.w,Y		; 19 19 10
	bpl   0.b		; 10 00
	brk $04.b		; 00 04
	tsb $09.b		; 04 09
	ora #$00.b		; 09 00
	brk $FC.b		; 00 FC
	brk $E3.b		; 00 E3
	jmp $7C59BF.l		; 5C BF 59 7C
	lda $03FE99.l,X		; BF 99 FE 03
	jsr ($F20D.w,X)		; FC 0D F2
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cld		; D8
	clc		; 18
	ldx $80.b		; A6 80
	.db $42, $02		; 42 02
	stz $64.b		; 64 64
	bne -48.b		; D0 D0
	.db $82, $82, $00		; 82 82 00
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	rti		; 40

	jsr $10C0.w		; 20 C0 10
	cpx #$7088.w		; E0 88 70
	pha		; 48
	bcs -34.b		; B0 DE
	ldx $0000.w		; AE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	jsr $2020.w		; 20 20 20
	jsr $8680.w		; 20 80 86
	asl $3D0F.w		; 0E 0F 3D
	asl $3E.b		; 06 3E
	bpl  62.b		; 10 3E
	trb $305C.w		; 1C 5C 30
	jmp ($7410.w,X)		; 7C 10 74
	plp		; 28
	clv		; B8
	rts		; 60

	inx		; E8
	bmi  18.b		; 30 12
	ora ($18.b)		; 12 18
	php		; 08
	trb $3800.w		; 1C 00 38
	php		; 08
	sec		; 38
	plp		; 28
	sec		; 38
	bpl 112.b		; 10 70
	bpl 112.b		; 10 70
	rti		; 40

	tda		; 7B
	sta ($FF.b,X)		; 81 FF
	and #$6E.b		; 29 6E
	lda #$9A.b		; A9 9A
	eor ($5F.b),Y		; 51 5F
	ora ($77.b),Y		; 11 77
	lda $5F.b,S		; A3 5F
	lda [$5E.b]		; A7 5E
	lda $800181.l		; AF 81 01 80
	lda #$28.b		; A9 28
	and $B114.w,Y		; 39 14 B1
	sta $B1.b		; 85 B1
	bit #$A3.b		; 89 A3
	.db $82, $A7, $06		; 82 A7 06
	and $FD1EFF.l		; 2F FF 1E FD
	lsr $ECBA.w,X		; 5E BA EC
	ldy $48.b,X		; B4 48
	cli		; 58
	ldy #$00F0.w		; A0 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp $585E.w		; 4C 5E 58
	asl $0CE0.w,X		; 1E E0 0C
	cpx #$A0A8.w		; E0 A8 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3A.b		; 00 3A
	trb $5C.b		; 14 5C
	bmi 124.b		; 30 7C
	bpl 116.b		; 10 74
	plp		; 28
	stz $28.b,X		; 74 28
	pla		; 68
	bmi 104.b		; 30 68
	bpl 112.b		; 10 70
	brk $1C.b		; 00 1C
	php		; 08
	sec		; 38
	php		; 08
	sec		; 38
	plp		; 28
	sec		; 38
	bpl  56.b		; 10 38
	bpl  48.b		; 10 30
	brk $30.b		; 00 30
	jsr $0000.w		; 20 00 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl A		; 0A
	tsb $0E.b		; 04 0E
	ora ($0D.b,X)		; 01 0D
	ora $05.b,S		; 03 05
	ora $05.b,S		; 03 05
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora $00.b		; 05 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $A4.b,S		; 03 A4
	lda [$CC.b]		; A7 CC
	rti		; 40

	cmp ($50.b,S),Y		; D3 50
	stx $5E.b		; 86 5E
	beq -113.b		; F0 8F
	sed		; F8
	sbc [$FC.b],Y		; F7 FC
	sbc ($F4.b),Y		; F1 F4
	beq  40.b		; F0 28
	beq  31.b		; F0 1F
	rts		; 60

	ora $781960.l		; 0F 60 19 78
	ora [$87.b]		; 07 87
	brk $F0.b		; 00 F0
	sbc $F7.b,S		; E3 F7
	sbc $FF.b,S		; E3 FF
	rol A		; 2A
	sbc $F30D.w		; ED 0D F3
	lda $0E7A35.l		; AF 35 7A 0E
	sbc $EA15E0.l,X		; FF E0 15 EA
	stz $9060.w,X		; 9E 60 90
	rti		; 40

	bvc  65.b		; 50 41
	bra -125.b		; 80 83
	pei ($11.b)		; D4 11
	inc $0A01.w		; EE 01 0A
	asl A		; 0A
	ror A		; 6A
	rts		; 60

	brk $00.b		; 00 00
	rts		; 60

	jsr $78BC.w		; 20 BC 78
	ldx $DA7C.w,Y		; BE 7C DA
	ldy $88C6.w,X		; BC C6 88
	ror $BC94.w,X		; 7E 94 BC
	rti		; 40

	sei		; 78
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	sei		; 78
	clc		; 18
	jmp ($BC80.w,X)		; 7C 80 BC
	brk $B8.b		; 00 B8
	trb $80.b		; 14 80
	pla		; 68
	plp		; 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora ($01.b)		; 12 01
	trb $0003.w		; 1C 03 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $F0.b,S		; 03 F0
	brk $68.b		; 00 68
	beq -124.b		; F0 84
	sed		; F8
	asl $3FE0.w,X		; 1E E0 3F
	bne  44.b		; D0 2C
	cmp ($02.b,S),Y		; D3 02
	inc $DE26.w,X		; FE 26 DE
	brk $00.b		; 00 00
	bcc -112.b		; 90 90
	bvs 112.b		; 70 70
	bra -128.b		; 80 80
	stz $1184.w		; 9C 84 11
	ora ($64.b,X)		; 01 64
	adc $88.b		; 65 88
	bit #$00.b		; 89 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	rts		; 60

	bcs -16.b		; B0 F0
	tay		; A8
	tay		; A8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rti		; 40

	sed		; F8
	bcs  -8.b		; B0 F8
	php		; 08
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $783C.w		; 1C 3C 78
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	clc		; 18
	ror $3E00.w,X		; 7E 00 3E
	ora [$08.b]		; 07 08
	ora $14.b,S		; 03 14
	ora $22.b		; 05 22
	lsr $09.b		; 46 09
	adc [$08.b]		; 67 08
	pld		; 2B
	tsb $1B.b		; 04 1B
	tsb $15.b		; 04 15
	asl A		; 0A
	brk $00.b		; 00 00
	tsb $1A0C.w		; 0C 0C 1A
	clc		; 18
	and $1938.w,Y		; 39 38 19
	and $1115.w,Y		; 39 15 11
	ora $01.b		; 05 01
	phd		; 0B
	ora ($7C.b,X)		; 01 7C
	sta $A25E.w		; 8D 5E A2
	adc [$89.b],Y		; 77 89
	lda $AD42.w,X		; BD 42 AD
	eor ($AB.b)		; 52 AB
	mvn $35,$EE		; 54 EE 35
	inc $8C35.w		; EE 35 8C
	ora $A803A2.l		; 0F A2 03 A8
	and ($6A.b,X)		; 21 6A
	plp		; 28
	tda		; 7B
	and #$7D.b		; 29 7D
	and #$7D.b		; 29 7D
	pha		; 48
	adc $48B64A.l,X		; 7F 4A B6 48
	sbc $FE09.w,X		; FD 09 FE
	tas		; 1B
	jsr ($7C03.w,X)		; FC 03 7C
	sta $FC.b,S		; 83 FC
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	stz $F8.b,X		; 74 F8
	bmi 107.b		; 30 6B
	jsr $505A.w		; 20 5A 50
	and $7B21.w,Y		; 39 21 7B
	tda		; 7B
	.db $82, $02, $F8		; 82 02 F8
	sec		; 38
	beq -128.b		; F0 80
	beq -64.b		; F0 C0
	sty $18E3.w		; 8C E3 18
.ACCU 8
.INDEX 8
	sep #$38		; E2 38
.INDEX 8
	sep #$1C		; E2 1C
	dec $18.b		; C6 18
	lsr $18.b		; 46 18
	lsr $10.b		; 46 10
	mvp $44,$10		; 44 10 44
	lsr $BC42.w,X		; 5E 42 BC
	ldy #$1C.b		; A0 1C
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $3C.b		; 04 3C
	tsb $38.b		; 04 38
	brk $38.b		; 00 38
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	rti		; 40

	jsr ($7C30.w,X)		; FC 30 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	cpx #$A0.b		; E0 A0
	bvs  64.b		; 70 40
	brk $00.b		; 00 00
	clc		; 18
	ora [$1F.b]		; 07 1F
	ora ($0F.b,X)		; 01 0F
	ora $1E.b,S		; 03 1E
	ora $0A1D.w		; 0D 1D 0A
	inc A		; 1A
	tsb $001F.w		; 0C 1F 00
	ora $000700.l		; 0F 00 07 00
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $040E02.l		; 0F 02 0E 04
	tsb $0E00.w		; 0C 00 0E
	asl $0000.w		; 0E 00 00
	rol $FEC5.w,X		; 3E C5 FE
	plx		; FA
	inc $FD0A.w,X		; FE 0A FD
	ora $0E.b,S		; 03 0E
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	sec		; 38
	sbc $F900.w,Y		; F9 00 F9
	beq  10.b		; F0 0A
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($FF.b,X)		; 01 FF
	bpl  31.b		; 10 1F
	jsr ($C700.w,X)		; FC 00 C7
	cpy #$06.b		; C0 06
	inc $3F00.w,X		; FE 00 3F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	inx		; E8
	php		; 08
	sbc $003F00.l,X		; FF 00 3F 00
	and $0338.w,Y		; 39 38 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $70.b		; 00 70
	ora $2B.b,S		; 03 2B
	eor ($2B.b,S),Y		; 53 2B
	eor [$2B.b]		; 47 2B
	eor [$29.b]		; 47 29
	eor $28.b,S		; 43 28
	mvp $53,$0D		; 44 0D 53
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	bpl  55.b		; 10 37
	ora ($37.b),Y		; 11 37
	ora ($37.b),Y		; 11 37
	bpl  55.b		; 10 37
	bpl  55.b		; 10 37
	bmi  51.b		; 30 33
	sbc $2EE0.w,Y		; F9 E0 2E
	ora ($DA.b,X)		; 01 DA
	cmp ($ED.b,X)		; C1 ED
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	jsr ($FCFA.w,X)		; FC FA FC
	tda		; 7B
	jmp ($999E.w,X)		; 7C 9E 99
	rol $E6.b		; 26 E6
	bpl -47.b		; 10 D1
	tsb $FD.b		; 04 FD
	cpy #$F2.b		; C0 F2
	cpx #$FC.b		; E0 FC
	bvs  -4.b		; 70 FC
	bpl  -4.b		; 10 FC
	ora ($F8.b,X)		; 01 F8
	bne  33.b		; D0 21
	ldy #$06.b		; A0 06
	sbc $0C.b		; E5 0C
	wai		; CB
	clc		; 18
	lsr $30.b,X		; 56 30
	sbc $5A21.w		; ED 21 5A
	sta $F8.b,S		; 83 F8
	and $20.b,S		; 23 20
	jsr $4041.w		; 20 41 40
	ora $40.b,S		; 03 40
	ora [$00.b]		; 07 00
	ora $001E00.l		; 0F 00 1E 00
	lda $9E01.w,X		; BD 01 9E
	.db $82, $00, $E0		; 82 00 E0
	cpy #$10.b		; C0 10
	beq  24.b		; F0 18
	jsr $A008.w		; 20 08 A0
	dey		; 88
	rts		; 60

	dey		; 88
	beq -104.b		; F0 98
	rts		; 60

	clc		; 18
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	beq -128.b		; F0 80
	rts		; 60

	brk $F0.b		; 00 F0
	bpl  18.b		; 10 12
	ora $0C0708.l		; 0F 08 07 0C
	ora $08.b,S		; 03 08
	ora [$10.b]		; 07 10
	ora $120E11.l		; 0F 11 0E 12
	tsb $0A17.w		; 0C 17 0A
	ora $070D.w		; 0D 0D 07
	ora [$02.b]		; 07 02
	cop $06.b		; 02 06
	asl $04.b		; 06 04
	tsb $0C.b		; 04 0C
	tsb $0D0C.w		; 0C 0C 0D
	cop $02.b		; 02 02
	eor $4EBC.w		; 4D BC 4E
	lda $BE41.w,X		; BD 41 BE
	eor #$B6.b		; 49 B6
	lsr $E3A1.w,X		; 5E A1 E3
	asl $DC.b,X		; 16 DC
	and [$82.b]		; 27 82
	ldx $1210.w,Y		; BE 10 12
	bmi  49.b		; 30 31
	bit $222C.w		; 2C 2C 22
	jsl $0C2129.l		; 22 29 21 0C
	tsb $22.b		; 04 22
	jsl $5AD415.l		; 22 15 D4 5A
	clc		; 18
	nop		; EA
	cld		; D8
	cpy $0C.b		; C4 0C
	adc $E6DC.w		; 6D DC E6
	stx $4FB7.w		; 8E B7 4F
	and $F7.b,S		; 23 F7
	wai		; CB
	and [$08.b],Y		; 37 08
	ldy $DC00.w,X		; BC 00 DC
	brk $3E.b		; 00 3E
	sty $9E.b		; 84 9E
	tsb $1F.b		; 04 1F
	cop $0F.b		; 02 0F
	eor ($5F.b),Y		; 51 5F
	sbc ($27.b,X)		; E1 27
	sei		; 78
	bit $3874.w,X		; 3C 74 38
	plp		; 28
	bvs 104.b		; 70 68
	bvs -16.b		; 70 F0
	cpx #$D0.b		; E0 D0
	rts		; 60

	cpx #$80.b		; E0 80
	cpx #$C0.b		; E0 C0
	brk $3E.b		; 00 3E
	brk $38.b		; 00 38
	brk $F0.b		; 00 F0
	jsr $40F0.w		; 20 F0 40
	cpx #$40.b		; E0 40
	rts		; 60

	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	ora [$08.b],Y		; 17 08
	asl $0301.w		; 0E 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $0B.b		; 00 0B
	ora $03.b,S		; 03 03
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F7.b		; 00 F7
	rol A		; 2A
	sbc [$2B.b],Y		; F7 2B
	adc [$BB.b],Y		; 77 BB
	xce		; FB
	bit $3E.b,X		; 34 3E
	eor ($03.b,X)		; 41 03
	and $E01F01.l,X		; 3F 01 1F E0
	ora [$7F.b]		; 07 7F
	eor $7F.b,X		; 55 7F
	mvn $44,$FF		; 54 FF 44
	rol $010A.w,X		; 3E 0A 01
	ora ($0C.b,X)		; 01 0C
	tsb $0606.w		; 0C 06 06
	ora ($01.b,X)		; 01 01
	bvs -128.b		; 70 80
	bcc  96.b		; 90 60
	cpx #$98.b		; E0 98
	tay		; A8
	jmp ($82B8.w)		; 6C B8 82
	jmp ($BE01.w,X)		; 7C 01 BE
	bra  79.b		; 80 4F
	cpy #$E0.b		; C0 E0
	rts		; 60

	cpx #$80.b		; E0 80
	bcc  16.b		; 90 10
	bvc  64.b		; 50 40
	jmp ($FE00.w,X)		; 7C 00 FE
	brk $7F.b		; 00 7F
	brk $BF.b		; 00 BF
	bra  56.b		; 80 38
	cpx $EC38.w		; EC 38 EC
	cpx #$2C.b		; E0 2C
	sed		; F8
	brk $B8.b		; 00 B8
	bvs -72.b		; 70 B8
	rts		; 60

	sec		; 38
	cpx #$38.b		; E0 38
	rts		; 60

	bvc  64.b		; 50 40
	bvc  64.b		; 50 40
	clc		; 18
	php		; 08
	rti		; 40

	rti		; 40

	bvs   0.b		; 70 00
	bvs  16.b		; 70 10
	bvs  16.b		; 70 10
	bcs  16.b		; B0 10
	adc $9806.w,X		; 7D 06 98
	sta $20.b,S		; 83 20
	sbc $A4.b,S		; E3 A4
	and [$68.b]		; 27 68
	ora $02FE71.l		; 0F 71 FE 02
	jsr ($0000.w,X)		; FC 00 00
	sbc $7E01.w,Y		; F9 01 7E
	cop $5E.b		; 02 5E
	.db $42, $DA		; 42 DA
	cop $F6.b		; 02 F6
	asl $8C.b		; 06 8C
	sty $0000.w		; 8C 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $01.b		; 05 01
	cop $02.b		; 02 02
	ora $05.b,S		; 03 05
	ora [$0E.b]		; 07 0E
	cop $09.b		; 02 09
	ora $0419.w		; 0D 19 04
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	ora ($00.b,X)		; 01 00
	brk $07.b		; 00 07
	ora ($06.b,X)		; 01 06
	brk $0F.b		; 00 0F
	ora ($DF.b,X)		; 01 DF
	bit $EF.b		; 24 EF
	eor ($F7.b)		; 52 F7
	tay		; A8
	adc $909C50.l,X		; 7F 50 9C 90
	stz $5E53.w		; 9C 53 5E
	bcs  -8.b		; B0 F8
	adc ($3D.b),Y		; 71 3D
	ora $4C1E.w,Y		; 19 1E 4C
	dey		; 88
	ldy #$00.b		; A0 00
	cmp [$03.b],Y		; D7 03
	sbc [$03.b],Y		; F7 03
	adc [$11.b],Y		; 77 11
	and [$17.b],Y		; 37 17
	adc [$FE.b],Y		; 77 FE
	and ($3F.b),Y		; 31 3F
	rti		; 40

	adc [$78.b]		; 67 78
	ror $79.b,X		; 76 79
	adc $7A.b,X		; 75 7A
	adc [$78.b],Y		; 77 78
	ply		; 7A
	adc [$7E.b],Y		; 77 7E
	adc ($38.b,S),Y		; 73 38
	ora #$00.b		; 09 00
	cpy #$00.b		; C0 00
	sed		; F8
	and ($F8.b,X)		; 21 F8
	and $F9.b,S		; 23 F9
	and $FB.b,S		; 23 FB
	and [$F0.b]		; 27 F0
	and [$F4.b]		; 27 F4
	stz $EE9F.w,X		; 9E 9F EE
	ror $15F4.w		; 6E F4 15
	xce		; FB
	asl A		; 0A
	adc $D06F94.l		; 6F 94 6F D0
	inc $DB5B.w		; EE 5B DB
	inc $FF0C.w		; EE 0C FF
	bit $7F.b		; 24 7F
	bcc -97.b		; 90 9F
	tay		; A8
	ldx $64F4.w		; AE F4 64
	plx		; FA
	rol A		; 2A
	xce		; FB
	ldy #$FF.b		; A0 FF
	ora ($02.b),Y		; 11 02
	ora ($03.b,X)		; 01 03
	ora ($04.b,X)		; 01 04
	ora $04.b,S		; 03 04
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $28.b,S		; 03 28
	ora [$01.b]		; 07 01
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	ora $02.b,S		; 03 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	ora [$9F.b]		; 07 9F
	cpx #$7C.b		; E0 7C
	plb		; AB
	adc [$8B.b],Y		; 77 8B
	and $DF33D7.l		; 2F D7 33 DF
	rti		; 40

	lda $4ABE41.l,X		; BF 41 BE 4A
	lda $40.b,X		; B5 40
	rti		; 40

	tsa		; 3B
	ora $34.b,S		; 03 34
	bmi   8.b		; 30 08
	brk $0C.b		; 00 0C
	tsb $9A9A.w		; 0C 9A 9A
	bmi  48.b		; 30 30
	and ($21.b,X)		; 21 21
	sed		; F8
	jsr $90E8.w		; 20 E8 90
	sed		; F8
	brk $58.b		; 00 58
	bra  -8.b		; 80 F8
	rti		; 40

	inx		; E8
	rti		; 40

	cli		; 58
	ldy #$E8.b		; A0 E8
	brk $B0.b		; 00 B0
	bcc  48.b		; 90 30
	jsr $0000.w		; 20 00 00
	ldy #$B0.b		; A0 B0
	rti		; 40

	bvc  80.b		; 50 50
	bpl -96.b		; 10 A0
	bcs  16.b		; B0 10
	bpl  88.b		; 10 58
	ldy #$C8.b		; A0 C8
	brk $B8.b		; 00 B8
	cpy #$B8.b		; C0 B8
	ldy #$38.b		; A0 38
	bra  56.b		; 80 38
	bvc  72.b		; 50 48
	bmi 120.b		; 30 78
	bmi -96.b		; 30 A0
	ldy #$30.b		; A0 30
	bmi   0.b		; 30 00
	bne   0.b		; D0 00
	cpy #$00.b		; C0 00
	cpy #$70.b		; C0 70
	ldy #$30.b		; A0 30
	bra 112.b		; 80 70
	cpy #$70.b		; C0 70
	brk $20.b		; 00 20
	bvs 112.b		; 70 70
	bvs -16.b		; 70 F0
	bmi 112.b		; 30 70
	bcs -80.b		; B0 B0
	cli		; 58
	beq  24.b		; F0 18
	cld		; D8
	plp		; 28
	brk $88.b		; 00 88
	brk $F8.b		; 00 F8
	jsr $20F8.w		; 20 F8 20
	sec		; 38
	ldy #$38.b		; A0 38
	cpy #$9C.b		; C0 9C
	rti		; 40

	jmp $B84C60.l		; 5C 60 4C B8
	pha		; 48
	inx		; E8
	bpl -56.b		; 10 C8
	bit $A8.b,X		; 34 A8
	pei ($FA.b)		; D4 FA
	stx $2ACB.w		; 8E CB 2A
	sta ($6A.b),Y		; 91 6A
	dec $E0.b		; C6 E0
	rts		; 60

	bit $A4B0.w		; 2C B0 A4
	bcs -122.b		; B0 86
	bne   6.b		; D0 06
	iny		; C8
	eor $409E88.l		; 4F 88 9E 40
	lsr $1800.w		; 4E 00 18
	bit $3833.w,X		; 3C 33 38
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	sbc ($01.b),Y		; F1 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BD.b		; 00 BD
	sta [$BD.b]		; 87 BD
	sta [$BD.b]		; 87 BD
	sta [$3D.b]		; 87 3D
	sta [$7D.b]		; 87 7D
	cmp [$7D.b]		; C7 7D
	cmp [$5D.b]		; C7 5D
	cmp [$5C.b]		; C7 5C
	dec $78.b		; C6 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	bra -72.b		; 80 B8
	bra -72.b		; 80 B8
	bra  56.b		; 80 38
	brk $39.b		; 00 39
	brk $00.b		; 00 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	brk $74.b		; 00 74
	dey		; 88
	cpx $38.b		; E4 38
	.db $82, $FC, $31		; 82 FC 31
	dec $9669.w		; CE 69 96
	tsx		; BA
	mvn $F8,$36		; 54 36 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne  16.b		; D0 10
	mvp $84,$44		; 44 44 84
	sty $10.b		; 84 10
	bpl  64.b		; 10 40
	rti		; 40

	pha		; 48
	pha		; 48
	stz $4CF0.w		; 9C F0 4C
	bcc -80.b		; 90 B0
	cld		; D8
	cpx #$08.b		; E0 08
	bcc 120.b		; 90 78
	ldy #$B0.b		; A0 B0
	brk $E0.b		; 00 E0
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	bmi  16.b		; 30 10
	rts		; 60

	rti		; 40

	beq   0.b		; F0 00
	cpx #$60.b		; E0 60
	rti		; 40

	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	rti		; 40

	asl A		; 0A
	ora ($18.b,S),Y		; 13 18
	and ($04.b,S),Y		; 33 04
	rol $30.b		; 26 30
	ror $48.b		; 66 48
	tsb $05F8.w		; 0C F8 05
	inc $BE31.w,X		; FE 31 BE
	rti		; 40

	tsb $0E00.w		; 0C 00 0E
	cop $18.b		; 02 18
	ora ($1C.b,X)		; 01 1C
	ora $30.b		; 05 30
	ora ($40.b,X)		; 01 40
	eor $38.b,S		; 43 38
	ora #$40.b		; 09 40
	ora ($77.b,X)		; 01 77
	rts		; 60

	trb $FF80.w		; 1C 80 FF
	beq  -1.b		; F0 FF
	sbc $FFFF.w,Y		; F9 FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	ror $087F.w,X		; 7E 7F 08
	inx		; E8
	ora $EF.b,S		; 03 EF
	brk $F6.b		; 00 F6
	bvs  -7.b		; 70 F9
	ror $7EFF.w,X		; 7E FF 7E
	sbc $1CFF7C.l,X		; FF 7C FF 1C
	sbc $6F756E.l,X		; FF 6E 75 6F
	bvs 111.b		; 70 6F
	adc ($6D.b),Y		; 71 6D
	adc $77.b,S		; 63 77
	sei		; 78
	adc $687A.w,Y		; 79 7A 68
	tda		; 7B
	pla		; 68
	rtl		; 6B

	ora [$F2.b]		; 07 F2
	ora $F5.b		; 05 F5
	ora $F4.b		; 05 F4
	and $F0.b,S		; 23 F0
	adc ($F9.b),Y		; 71 F9
	sei		; 78
	jsr ($FD61.w,X)		; FC 61 FD
	adc ($FD.b,X)		; 61 FD
	stp		; DB
	sbc $DBADDB.l		; EF DB AD DB
	lda $DBBD.w,X		; BD BD DB
	lda $BF5B.w,X		; BD 5B BF
	jmp $8880FF.l		; 5C FF 80 88
	sta $FF10FF.l		; 8F FF 10 FF
	eor ($FF.b)		; 52 FF
	.db $42, $FF		; 42 FF
	bit $FF.b		; 24 FF
	ldy $7D.b		; A4 7D
	and ($00.b,X)		; 21 00
	brk $75.b		; 00 75
	ora $34.b		; 05 34
	ora $181F20.l		; 0F 20 1F 18
	ora [$10.b]		; 07 10
	ora $100F10.l		; 0F 10 0F 10
	ora $060609.l		; 0F 09 06 06
	ora ($0B.b,X)		; 01 0B
	phd		; 0B
	ora $021D.w,X		; 1D 1D 02
	cop $04.b		; 02 04
	tsb $0C.b		; 04 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $04.b		; 04 04
	ora ($00.b,X)		; 01 00
	lsr $AA.b,X		; 56 AA
	rol A		; 2A
	cmp $28.b,X		; D5 28
	bne 117.b		; D0 75
	sty $0EF2.w		; 8C F2 0E
	cmp $2F.b,X		; D5 2F
	dec A		; 3A
	sbc $F9.b,S		; E3 F9
	ora $21.b,X		; 15 21
	jsr $000A.w		; 20 0A 00
	ora $000300.l		; 0F 00 03 00
	ora $04.b		; 05 04
	rol A		; 2A
	asl A		; 0A
	pea $F610.w		; F4 10 F6
	cpx $06.b		; E4 06
	ora ($1A.b,S),Y		; 13 1A
	and ($08.b,S),Y		; 33 08
	and $08.b,S		; 23 08
	and $14.b,S		; 23 14
	adc [$7C.b]		; 67 7C
	ora $5E.b,S		; 03 5E
	and $0C72.w,Y		; 39 72 0C
	ora $0C01.w		; 0D 01 0C
	brk $1E.b		; 00 1E
	cop $1C.b		; 02 1C
	ora ($38.b,X)		; 01 38
	and ($00.b,X)		; 21 00
	ora ($3C.b,X)		; 01 3C
	ora $0C.b		; 05 0C
	ora ($2E.b,X)		; 01 2E
	cmp ($39.b,X)		; C1 39
	brk $FF.b		; 00 FF
	sbc ($FE.b,X)		; E1 FE
	sbc ($FE.b,S),Y		; F3 FE
	inc $FEFC.w,X		; FE FC FE
	sbc $79FC.w,X		; FD FC 79
	jsr ($5111.w,X)		; FC 11 51
	asl $DE.b		; 06 DE
	brk $ED.b		; 00 ED
	rts		; 60

	sbc ($78.b,S),Y		; F3 78
	sbc $78FF78.l,X		; FF 78 FF 78
	inc $FE30.w,X		; FE 30 FE
	lda $39363A.l,X		; BF 3A 36 39
	rol $39.b,X		; 36 39
	rol $39.b,X		; 36 39
	and $32.b,X		; 35 32
	tsa		; 3B
	bit $3D3C.w,X		; 3C 3C 3D
	bit $3C.b,X		; 34 3C
	ora ($79.b,S),Y		; 13 79
	ora ($7A.b,S),Y		; 13 7A
	ora ($7A.b,S),Y		; 13 7A
	ora $7A.b,S		; 03 7A
	ora ($79.b,S),Y		; 13 79
	sec		; 38
	jmp ($7F3D.w,X)		; 7C 3D 7F
	and ($7E.b),Y		; 31 7E
	ror $EDFD.w		; 6E FD ED
	ror $7CEF.w,X		; 7E EF 7C
	sbc $F6EFF6.l		; EF F6 EF F6
	sbc $03FC60.l,X		; FF 60 FC 03
	lsr $7F.b		; 46 7F
	sbc $FE00.w,X		; FD 00 FE
	bra  -2.b		; 80 FE
	.db $82, $FE, $08		; 82 FE 08
	sbc $8CEC09.l,X		; FF 09 EC 8C
	cop $02.b		; 02 02
	tay		; A8
	plp		; 28
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cpx #$00.b		; E0 00
	sta $AB7CE0.l,X		; 9F E0 7C AB
	adc [$8B.b],Y		; 77 8B
	and $DF33D7.l		; 2F D7 33 DF
	rti		; 40

	lda $00BE41.l,X		; BF 41 BE 00
	brk $40.b		; 00 40
	rti		; 40

	tsa		; 3B
	ora $34.b,S		; 03 34
	bmi   8.b		; 30 08
	brk $0C.b		; 00 0C
	tsb $9A9A.w		; 0C 9A 9A
	bmi  48.b		; 30 30
	beq  96.b		; F0 60
	beq   0.b		; F0 00
	cpy #$E0.b		; C0 E0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	cpx #$60.b		; E0 60
	cpx #$60.b		; E0 60
	rts		; 60

	bcs -32.b		; B0 E0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	beq  64.b		; F0 40
	beq  64.b		; F0 40
	beq  64.b		; F0 40
	bvs  64.b		; 70 40
	bvs -128.b		; 70 80
	sec		; 38
	cpx #$30.b		; E0 30
	bcs  80.b		; B0 50
	bcs  80.b		; B0 50
	rti		; 40

	tya		; 98
	bcc  24.b		; 90 18
	bit $54.b,X		; 34 54
	rol $54.b,X		; 36 54
	ror A		; 6A
	trb $80.b		; 14 80
	clv		; B8
	cpy #$98.b		; C0 98
	cpy #$98.b		; C0 98
	bra  60.b		; 80 3C
	bpl 124.b		; 10 7C
	bpl -34.b		; 10 DE
	bpl -36.b		; 10 DC
	brk $14.b		; 00 14
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $B0.b		; 00 B0
	rti		; 40

	bcc   0.b		; 90 00
	bvs   0.b		; 70 00
	jsr $A010.w		; 20 10 A0
	bcs -16.b		; B0 F0
	brk $70.b		; 00 70
	ldy #$90.b		; A0 90
	rts		; 60

	rti		; 40

	rti		; 40

	rts		; 60

	rts		; 60

	brk $A0.b		; 00 A0
	rti		; 40

	bra  64.b		; 80 40
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	rti		; 40

	rts		; 60

	brk $00.b		; 00 00
	brk $88.b		; 00 88
	brk $74.b		; 00 74
	dey		; 88
	inc $38.b		; E6 38
	.db $82, $FC, $31		; 82 FC 31
	dec $9669.w		; CE 69 96
	tsx		; BA
	mvn $00,$00		; 54 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne  16.b		; D0 10
	mvp $84,$44		; 44 44 84
	sty $10.b		; 84 10
	bpl  64.b		; 10 40
	rti		; 40

	rol $F8.b,X		; 36 F8
	stz $6CF0.w		; 9C F0 6C
	bcs -80.b		; B0 B0
	cld		; D8
	cpx #$08.b		; E0 08
	bcc 120.b		; 90 78
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	pha		; 48
	pha		; 48
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	rts		; 60

	rti		; 40

	beq   0.b		; F0 00
	cpy #$40.b		; C0 40
	jsr $4020.w		; 20 20 40
	rti		; 40

	phd		; 0B
	brk $02.b		; 00 02
	cop $15.b		; 02 15
	ora $021A.w		; 0D 1A 02
	ora $100519.l		; 0F 19 05 10
	tas		; 1B
	and ($0A.b)		; 32 0A
	and $00.b,S		; 23 00
	tsb $00.b		; 04 00
	ora $020F01.l		; 0F 01 0F 02
	ora [$04.b]		; 07 04
	ora ($0E.b,X)		; 01 0E
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $7D.b		; 00 7D
	sty $BD.b,X		; 94 BD
	rti		; 40

	eor $82B920.l,X		; 5F 20 B9 82
	and ($01.b,S),Y		; 33 01
	lda ($8D.b,S),Y		; B3 8D
	and $E342.w,Y		; 39 42 E3
	bra -14.b		; 80 F2
	rts		; 60

	ply		; 7A
	sec		; 38
	jsr $0680.w		; 20 80 06
	dec $DD0D.w,X		; DE 0D DD
	ora $06DC.w		; 0D DC 06
	dec $9C1C.w,X		; DE 1C 9C
	cpy #$00.b		; C0 00
	ldy #$40.b		; A0 40
	cpx #$00.b		; E0 00
	rts		; 60

	brk $E0.b		; 00 E0
	brk $A0.b		; 00 A0
	brk $60.b		; 00 60
	bra -96.b		; 80 A0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	cpy #$00.b		; C0 00
	rti		; 40

	rti		; 40

	rti		; 40

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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $003F39.l,X		; 5F 39 3F 00
	and ($3D.b)		; 32 3D
	dec A		; 3A
	and $3C3B.w,X		; 3D 3B 3C
	lda $BF3B.w,X		; BD 3B BF
	and $3ABF.w,Y		; 39 BF 3A
	bit $0005.w,X		; 3C 05 00
	rti		; 40

	ora ($7C.b,X)		; 01 7C
	ora ($7C.b),Y		; 11 7C
	ora ($7D.b),Y		; 11 7D
	ora ($78.b,S),Y		; 13 78
	ora ($7A.b,S),Y		; 13 7A
	ora ($79.b,S),Y		; 13 79
	tsa		; 3B
	sec		; 38
	cmp ($D4.b)		; D2 D4
	sbc $FD2A.w		; ED 2A FD
	ora ($FF.b)		; 12 FF
	brk $7A.b		; 00 7A
	lda $38EF.w		; AD EF 38
	adc $FC10BC.l		; 6F BC 10 FC
	rti		; 40

	jsr ($3822.w,X)		; FC 22 38
	sta ($90.b)		; 92 90
	tax		; AA
	tax		; AA
	lda $7D00.w		; AD 00 7D
	eor $FD.b		; 45 FD
	eor ($35.b,X)		; 41 35
	bit $1F.b,X		; 34 1F
	clc		; 18
	ora $0304.w,Y		; 19 04 03
	asl $0E03.w		; 0E 03 0E
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	and ($7E.b),Y		; 31 7E
	ora ($78.b,X)		; 01 78
	ora [$04.b]		; 07 04
	ora $04.b		; 05 04
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	inx		; E8
	and $39E8.w,Y		; 39 E8 39
	inx		; E8
	and $39E8.w,Y		; 39 E8 39
	inx		; E8
	and $19C8.w,Y		; 39 C8 19
	cpy #$11.b		; C0 11
	brk $00.b		; 00 00
	dec $00.b		; C6 00
	dec $00.b		; C6 00
	dec $00.b		; C6 00
	dec $00.b		; C6 00
	dec $00.b		; C6 00
	inc $00.b		; E6 00
	inc $0000.w		; EE 00 00
	brk $28.b		; 00 28
	ora [$34.b]		; 07 34
	ora $181F20.l		; 0F 20 1F 18
	ora [$10.b]		; 07 10
	ora $130F10.l		; 0F 10 0F 13
	tsb $0A05.w		; 0C 05 0A
	ora [$07.b]		; 07 07
	phd		; 0B
	phd		; 0B
	ora $021D.w,X		; 1D 1D 02
	cop $04.b		; 02 04
	tsb $0C.b		; 04 0C
	tsb $0808.w		; 0C 08 08
	ora $01.b,S		; 03 01
	lsr A		; 4A
	lda $56.b,X		; B5 56
	tax		; AA
	rol A		; 2A
	cmp $28.b,X		; D5 28
	bne 117.b		; D0 75
	sty $4EB2.w		; 8C B2 4E
	adc $AF.b,X		; 75 AF
	inc $2121.w,X		; FE 21 21
	and ($21.b,X)		; 21 21
	jsr $000A.w		; 20 0A 00
	ora $000300.l		; 0F 00 03 00
	adc $24.b		; 65 24
	nop		; EA
	lsr A		; 4A
	inc $D6.b,X		; F6 D6
	ora ($04.b,X)		; 01 04
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	asl $0618.w		; 0E 18 06
	bpl  13.b		; 10 0D
	ora ($03.b),Y		; 11 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	brk $C0.b		; 00 C0
	clc		; 18
	ldy #$38.b		; A0 38
	ldy #$30.b		; A0 30
	rti		; 40

	bvs  64.b		; 70 40
	rts		; 60

	bra -32.b		; 80 E0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	beq  16.b		; F0 10
	bne  16.b		; D0 10
	cpy #$00.b		; C0 00
	ldy #$20.b		; A0 20
	bra   0.b		; 80 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	bra -128.b		; 80 80
	asl $0C.b		; 06 0C
	cop $08.b		; 02 08
	ora $0419.w		; 0D 19 04
	ora ($1A.b),Y		; 11 1A
	and ($38.b,S),Y		; 33 38
	ora $3C.b,S		; 03 3C
	dec A		; 3A
	rol $64.b		; 26 64
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	ora $000C01.l		; 0F 01 0C 00
	asl $02.b		; 06 02
	clc		; 18
	sei		; 78
	brk $FC.b		; 00 FC
	cpx $0A.b		; E4 0A
	txy		; 9B
	tsb $EE.b		; 04 EE
	tsb $81.b		; 04 81
	bpl 111.b		; 10 6F
	ora $1F1F2F.l		; 0F 2F 1F 1F
	ora $1B1F1F.l,X		; 1F 1F 1F 1B
	tda		; 7B
	rts		; 60

	stz $11.b		; 64 11
	ora $70.b,X		; 15 70
	ror $3F06.w,X		; 7E 06 3F
	ora [$1F.b]		; 07 1F
	ora $3F0F3F.l		; 0F 3F 0F 3F
	sbc ($01.b,S),Y		; F3 01
	and $2EEA1E.l		; 2F 1E EA 2E
	ror $AF2F.w		; 6E 2F AF
	eor $F88FEE.l		; 4F EE 8F F8
	inc $F7.b,X		; F6 F7
	sed		; F8
	brk $EC.b		; 00 EC
	dec $22DE.w		; CE DE 22
	and $02BF86.l,X		; 3F 86 BF 02
	ora $E09F00.l,X		; 1F 00 9F E0
	sbc [$E0.b],Y		; F7 E0
	sed		; F8
	rti		; 40

	bpl -96.b		; 10 A0
	dey		; 88
	mvp $02,$F8		; 44 F8 02
	tsb $FEFD.w		; 0C FD FE
	sbc $FE3DFE.l,X		; FF FE 3D FE
	cmp $3C.b,S		; C3 3C
	cpx #$00.b		; E0 00
	bvs   0.b		; 70 00
	clv		; B8
	bra   0.b		; 80 00
	jsr ($FE78.w,X)		; FC 78 FE
	trb $00FE.w		; 1C FE 00
	inc $3C00.w,X		; FE 00 3C
	ora [$00.b]		; 07 00
	asl A		; 0A
	ora [$0D.b]		; 07 0D
	asl $11.b		; 06 11
	asl $0F10.w		; 0E 10 0F
	clc		; 18
	ora $190E19.l		; 0F 19 0E 19
	asl $0000.w		; 0E 00 00
	ora $05.b		; 05 05
	brk $00.b		; 00 00
	tsb $080C.w		; 0C 0C 08
	php		; 08
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	cpy #$00.b		; C0 00
	ror $F180.w		; 6E 80 F1
	ldx $2CDF.w		; AE DF 2C
	ldx $CC5F.w,Y		; BE 5F CC
	adc $06FE01.l,X		; 7F 01 FE 06
	sbc $0000.w,Y		; F9 00 00
	brk $00.b		; 00 00
	cpx $D30C.w		; EC 0C D3
	cpy #$21.b		; C0 21
	ora ($32.b,X)		; 01 32
	and ($68.b)		; 32 68
	pla		; 68
	cmp ($C1.b,X)		; C1 C1
	sed		; F8
	jsr $70B8.w		; 20 B8 70
	stz $18.b,X		; 74 18
	jmp ($5E10.w,X)		; 7C 10 5E
	plp		; 28
	rol $2F0C.w,X		; 3E 0C 2F
	asl $1F.b,X		; 16 1F
	brk $70.b		; 00 70
	bvc 112.b		; 50 70
	brk $38.b		; 00 38
	jsr $2838.w		; 20 38 28
	bit $1C14.w,X		; 3C 14 1C
	bpl  30.b		; 10 1E
	php		; 08
	brk $00.b		; 00 00
	php		; 08
	adc $3C.b,S		; 63 3C
	ror $14.b		; 66 14
	lsr $30.b		; 46 30
	lsr $38.b		; 46 38
	lsr $4C28.w		; 4E 28 4C
	jsr $70CC.w		; 20 CC 70
	jmp.w [$223E]		; DC 3E 22
	clc		; 18
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $34.b		; 04 34
	tsb $30.b		; 04 30
	brk $78.b		; 00 78
	pha		; 48
	plp		; 28
	php		; 08
	bit $3C86.w,X		; 3C 86 3C
	stx $3C.b		; 86 3C
	stx $3C.b		; 86 3C
	stx $3C.b		; 86 3C
	stx $7C.b		; 86 7C
	dec $7C.b		; C6 7C
	dec $00.b		; C6 00
	dec $78.b		; C6 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	mvp $08,$03		; 44 03 08
	ora $08.b,S		; 03 08
	ora $180F18.l		; 0F 18 0F 18
	ora [$10.b]		; 07 10
	asl $30.b,X		; 16 30
	asl $0E30.w,X		; 1E 30 0E
	jsr $0007.w		; 20 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $001F00.l		; 0F 00 1F 00
	adc $0A.b,X		; 75 0A
	lsr $4170.w		; 4E 70 41
	stz $41.b,X		; 74 41
	stz $41.b,X		; 74 41
	stz $81.b		; 64 81
	cpx $81.b		; E4 81
	cpx $81.b		; E4 81
	cpy $8A.b		; C4 8A
	brk $A1.b		; 00 A1
	jsr $20A3.w		; 20 A3 20
	lda $20.b,S		; A3 20
	sta $00.b,S		; 83 00
	eor $40.b,S		; 43 40
	eor $40.b,S		; 43 40
	ora $00.b,S		; 03 00
	beq 120.b		; F0 78
	bpl  24.b		; 10 18
	bne  24.b		; D0 18
	cpy #$18.b		; C0 18
	cpy #$18.b		; C0 18
	cpy #$18.b		; C0 18
	cpx #$38.b		; E0 38
	cpx #$38.b		; E0 38
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	bne  16.b		; D0 10
	bne  16.b		; D0 10
	clc		; 18
	dec $38.b		; C6 38
	.db $62, $2C, $62		; 62 2C 62
	trb $1472.w		; 1C 72 14
	and ($06.b,S),Y		; 33 06
	and ($0C.b,S),Y		; 33 0C
	ora $1902.w,Y		; 19 02 19
	jmp ($1C44.w,X)		; 7C 44 1C
	brk $1C.b		; 00 1C
	brk $2C.b		; 00 2C
	jsr $020E.w		; 20 0E 02
	trb $0610.w		; 1C 10 06
	brk $0E.b		; 00 0E
	php		; 08
	ora $041F04.l,X		; 1F 04 1F 04
	ora $0E3D04.l,X		; 1F 04 3D 0E
	rol $7E08.w,X		; 3E 08 7E
	bpl  -2.b		; 10 FE
	bmi -16.b		; 30 F0
	brk $0E.b		; 00 0E
	asl A		; 0A
	asl $0E0A.w		; 0E 0A 0E
	asl A		; 0A
	asl $1C10.w,X		; 1E 10 1C
	trb $38.b		; 14 38
	plp		; 28
	bvs  64.b		; 70 40
	brk $00.b		; 00 00
	ora ($11.b,X)		; 01 11
	asl $063F.w		; 0E 3F 06
	and $0A3F06.l,X		; 3F 06 3F 0A
	tsa		; 3B
	ora ($33.b)		; 12 33
	inc A		; 1A
	and ($18.b,S),Y		; 33 18
	and ($0E.b,S),Y		; 33 0E
	brk $11.b		; 00 11
	ora ($19.b),Y		; 11 19
	ora $1818.w,Y		; 19 18 18
	trb $10.b		; 14 10
	tsb $0C00.w		; 0C 00 0C
	brk $0E.b		; 00 0E
	cop $00.b		; 02 00
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
	brk $8E.b		; 00 8E
	cli		; 58
	nop		; EA
	sec		; 38
	sbc $7A.b,S		; E3 7A
	dec $74.b,X		; D6 74
	jmp ($3030.w)		; 6C 30 30
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($08.b,X)		; 01 08
	sei		; 78
	plp		; 28
	bit $7E60.w,X		; 3C 60 7E
	brk $7C.b		; 00 7C
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $1F1F1F.l,X		; 1F 1F 1F 1F
	eor $37570F.l		; 4F 0F 57 37
	ply		; 7A
	asl A		; 0A
	lda $7F45.w,X		; BD 45 7F
	sta ($FE.b)		; 92 FE
	and $0F.b,X		; 35 0F
	and $077F0F.l,X		; 3F 0F 7F 07
	and $003F02.l,X		; 3F 02 3F 00
	ora $B21755.l		; 0F 55 17 B2
	jsl $F080B5.l		; 22 B5 80 F0
	plx		; FA
	beq -14.b		; F0 F2
	cmp [$C8.b]		; C7 C8
	bit $F630.w,X		; 3C 30 F6
	iny		; C8
	sbc $FA02.w,X		; FD 02 FA
	ora $AE.b		; 05 AE
	adc ($E0.b),Y		; 71 E0
	jsr ($FCC0.w,X)		; FC C0 FC
	brk $F8.b		; 00 F8
	and $F3.b,S		; 23 F3
	cmp #$C1.b		; C9 C1
	rol A		; 2A
	plp		; 28
	lda $F5A8.w		; AD A8 F5
	sty $3E.b		; 84 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $A1.b		; 00 A1
	asl $3ED1.w,X		; 1E D1 3E
	bra 127.b		; 80 7F
	rts		; 60

	ora $433E41.l,X		; 1F 41 3E 43
	bit $3C43.w,X		; 3C 43 3C
	and ($1E.b,X)		; 21 1E
	trb $2C1C.w		; 1C 1C 2C
	bit $7474.w		; 2C 74 74
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bpl  16.b		; 10 10
	pld		; 2B
	pei ($5D.b)		; D4 5D
	tay		; A8
	plb		; AB
	eor ($A6.b)		; 52 A6
	eor $D7.b,S		; 43 D7
	bmi -54.b		; 30 CA
	and $3E96.w,Y		; 39 96 3E
	dey		; 88
	and $808484.l		; 2F 84 84 80
	.db $82, $28, $06		; 82 28 06
	and $000F02.l,X		; 3F 02 0F 00
	ora [$11.b],Y		; 17 11
	ora #$08.b		; 09 08
	ora ($01.b),Y		; 11 01
	and $0B3711.l		; 2F 11 37 0B
	and $061F13.l		; 2F 13 1F 06
	asl $0F07.w,X		; 1E 07 0F
	asl $07.b,X		; 16 07
	clc		; 18
	ora ($30.b,S),Y		; 13 30
	tas		; 1B
	asl A		; 0A
	tas		; 1B
	bpl  23.b		; 10 17
	tsb $07.b		; 04 07
	ora ($0F.b,X)		; 01 0F
	php		; 08
	asl $00.b		; 06 00
	asl A		; 0A
	asl A		; 0A
	ora $ED01.w		; 0D 01 ED
	and [$6D.b],Y		; 37 6D
	lda [$6D.b],Y		; B7 6D
	ldx $6E.b,Y		; B6 6E
	sbc $EE.b,X		; F5 EE
	adc [$EE.b],Y		; 77 EE
	adc [$EF.b],Y		; 77 EF
	inc $FF.b,X		; F6 FF
	inc $BF.b		; E6 BF
	dey		; 88
	sbc $49FF48.l,X		; FF 48 FF 49
	sbc $88FF0A.l,X		; FF 0A FF 88
	sbc $08FE88.l,X		; FF 88 FE 08
	inc $FA08.w		; EE 08 FA
	tsb $FA.b		; 04 FA
	sty $FC.b		; 84 FC
	bra  -4.b		; 80 FC
	bra -40.b		; 80 D8
	cpx #$F0.b		; E0 F0
	cpy #$E0.b		; C0 E0
	brk $80.b		; 00 80
	rts		; 60

	ldy $B0.b,X		; B4 B0
	ldy $30.b,X		; B4 30
	cld		; D8
	cli		; 58
	cld		; D8
	cli		; 58
	cpx #$00.b		; E0 00
	cpx #$20.b		; E0 20
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	bvs  -4.b		; 70 FC
	clc		; 18
	jsr ($FC18.w,X)		; FC 18 FC
	clc		; 18
	inc $7614.w,X		; FE 14 76
	bpl 115.b		; 10 73
	asl $73.b,X		; 16 73
	tsb $31.b		; 04 31
	php		; 08
	php		; 08
	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	stz $64.b		; 64 64
	plp		; 28
	jsr $222E.w		; 20 2E 22
	bit $1E20.w		; 2C 20 1E
	bpl   0.b		; 10 00
	brk $20.b		; 00 20
	brk $D0.b		; 00 D0
	jsr $E090.w		; 20 90 E0
	php		; 08
	beq -60.b		; F0 C4
	sec		; 38
	ldy $58.b		; A4 58
	cpx $0050.w		; EC 50 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	cld		; D8
	cpx #$78.b		; E0 78
	cpy #$30.b		; C0 30
	rti		; 40

	rti		; 40

	rts		; 60

	bra  32.b		; 80 20
	rti		; 40

	cpx #$80.b		; E0 80
	cpy #$00.b		; C0 00
	bra  32.b		; 80 20
	jsr $0000.w		; 20 00 00
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and [$18.b]		; 27 18
	pld		; 2B
	ora $5F.b,X		; 15 5F
	and #$5F.b		; 29 5F
	and ($3F.b,X)		; 21 3F
	clc		; 18
	and $2F00.w,Y		; 39 00 2F
	bvs  28.b		; 70 1C
	eor ($10.b,S),Y		; 53 10
	bpl  23.b		; 10 17
	ora ($2B.b)		; 12 2B
	rol A		; 2A
	ora $02.b,S		; 03 02
	ora ($19.b,X)		; 01 19
	asl $06.b		; 06 06
	bpl  23.b		; 10 17
	and $07.b,S		; 23 07
	sbc $0A.b,X		; F5 0A
	sbc $0CBF87.l		; EF 87 BF 0C
	sbc $BE2A.w,X		; FD 2A BE
	ora ($F3.b),Y		; 11 F3
	brk $FF.b		; 00 FF
	rti		; 40

	sbc $18.b,S		; E3 18
	sec		; 38
	bmi -73.b		; 30 B7
	brk $6F.b		; 00 6F
	ora $4E.b,S		; 03 4E
	tsb $50.b		; 04 50
	ora ($0C.b,X)		; 01 0C
	asl $5E40.w		; 0E 40 5E
	jmp $00C05E.l		; 5C 5E C0 00
	bcs  64.b		; B0 40
	rts		; 60

	ldy #$D8.b		; A0 D8
	bvc -80.b		; 50 B0
	ldy $4468.w		; AC 68 44
	pla		; 68
	ldx #$C6.b		; A2 C6
	and $00.b,S		; 23 00
	brk $C0.b		; 00 C0
	bra -128.b		; 80 80
	bmi  64.b		; 30 40
	bvs  32.b		; 70 20
	cpx #$18.b		; E0 18
	cpy #$1C.b		; C0 1C
	bra  60.b		; 80 3C
	jsr $4C18.w		; 20 18 4C
	brk $4C.b		; 00 4C
	jsr ($F440.w,X)		; FC 40 F4
	sec		; 38
	sed		; F8
	jsr $20F8.w		; 20 F8 20
	inx		; E8
	bmi -16.b		; 30 F0
	rts		; 60

	bmi   0.b		; 30 00
	sec		; 38
	php		; 08
	rti		; 40

	brk $78.b		; 00 78
	rti		; 40

	bvs  80.b		; 70 50
	bvs  80.b		; 70 50
	bvs  64.b		; 70 40
	rts		; 60

	brk $30.b		; 00 30
	tya		; 98
	pla		; 68
	bne  -4.b		; D0 FC
	brk $FC.b		; 00 FC
	bmi 124.b		; 30 7C
	clc		; 18
	jmp ($5A18.w,X)		; 7C 18 5A
	bit $083E.w		; 2C 3E 08
	rts		; 60

	brk $30.b		; 00 30
	bpl   8.b		; 10 08
	php		; 08
	sei		; 78
	pha		; 48
	sec		; 38
	jsr $2038.w		; 20 38 20
	bit $1C10.w,X		; 3C 10 1C
	trb $07.b		; 14 07
	brk $0A.b		; 00 0A
	ora [$0D.b]		; 07 0D
	asl $11.b		; 06 11
	asl $0F10.w		; 0E 10 0F
	clc		; 18
	ora $190E19.l		; 0F 19 0E 19
	asl $0000.w		; 0E 00 00
	ora $05.b		; 05 05
	brk $00.b		; 00 00
	tsb $080C.w		; 0C 0C 08
	php		; 08
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	cpy #$00.b		; C0 00
	ror $F180.w		; 6E 80 F1
	ldx $2CDF.w		; AE DF 2C
	ldx $CC5F.w,Y		; BE 5F CC
	adc $06FE01.l,X		; 7F 01 FE 06
	sbc $0000.w,Y		; F9 00 00
	brk $00.b		; 00 00
	cpx $D30C.w		; EC 0C D3
	cpy #$21.b		; C0 21
	ora ($32.b,X)		; 01 32
	and ($68.b)		; 32 68
	pla		; 68
	cmp ($C1.b,X)		; C1 C1
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $00.b,S		; 03 00
	ora $03.b,S		; 03 03
	ora $07.b,S		; 03 07
	asl A		; 0A
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora [$01.b]		; 07 01
	ora $770700.l		; 0F 00 07 77
	cpy #$2C.b		; C0 2C
	dey		; 88
	cmp [$98.b],Y		; D7 98
	ldy $38.b		; A4 38
	cmp $70.b,S		; C3 70
	cmp ($A0.b,X)		; C1 A0
	jsr $6000.w		; 20 00 60
	cpy #$38.b		; C0 38
	ora $73.b,S		; 03 73
	ora $60.b,S		; 03 60
	brk $C3.b		; 00 C3
	ora $20.b,S		; 03 20
	and ($80.b,X)		; 21 80
	bra   0.b		; 80 00
	cmp ($40.b,X)		; C1 40
	cmp ($FB.b,X)		; C1 FB
	tsb $F7.b		; 04 F7
	eor $DF.b,S		; 43 DF
	stx $FE.b		; 86 FE
	sta $DF.b,X		; 95 DF
	php		; 08
	sbc $FF00.w,Y		; F9 00 FF
	jsr $8C71.w		; 20 71 8C
	trb $DB18.w		; 1C 18 DB
	bra -73.b		; 80 B7
	ora ($A7.b,X)		; 01 A7
	cop $A8.b		; 02 A8
	bra   6.b		; 80 06
	ora [$20.b]		; 07 20
	lda $C0AFAE.l		; AF AE AF C0
	brk $F0.b		; 00 F0
	bra -80.b		; 80 B0
	bvc -20.b		; 50 EC
	plp		; 28
	eor ($DC.b)		; 52 DC
	bcs  34.b		; B0 22
	ldx $53.b,Y		; B6 53
	jsr ($0059.w,X)		; FC 59 00
	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$98.b		; C0 98
	jsr $1038.w		; 20 38 10
	beq  12.b		; F0 0C
	rts		; 60

	tsb $0640.w		; 0C 40 06
	rti		; 40

	sbc $FFFFFF.l,X		; FF FF FF FF
	ror $B97E.w,X		; 7E 7E B9
	lda $56D7.w,Y		; B9 D7 56
	sbc $90FF28.l		; EF 28 FF 90
	sbc $AB.b,X		; F5 AB
	adc $FF7EFF.l,X		; 7F FF 7E FF
	sec		; 38
	sbc $06FF11.l,X		; FF 11 FF 06
	ror $B9A9.w,X		; 7E A9 B9
	sta $15.b,X		; 95 15
	lda $9DDC04.l		; AF 04 DC 9D
	lda [$98.b]		; A7 98
	sec		; 38
	rti		; 40

	inc $80.b		; E6 80
	lda ($40.b)		; B2 40
	inc $D410.w		; EE 10 D4
	plp		; 28
	stz $88.b,X		; 74 88
	brk $BF.b		; 00 BF
	brk $D8.b		; 00 D8
	brk $C0.b		; 00 C0
	clc		; 18
	tya		; 98
	jmp $500C.w		; 4C 0C 50
	mvp $40,$68		; 44 68 40
	tay		; A8
	jsr $09F6.w		; 20 F6 09
	txs		; 9A
	inc $83.b		; E6 83
	inx		; E8
	sta $E8.b,S		; 83 E8
	sta $E8.b,S		; 83 E8
	ora $C8.b,S		; 03 C8
	ora [$CC.b]		; 07 CC
	ora [$CC.b]		; 07 CC
	ora #$01.b		; 09 01
	eor $44.b		; 45 44
	eor [$40.b]		; 47 40
	eor [$40.b]		; 47 40
	eor [$40.b]		; 47 40
	sta [$80.b]		; 87 80
	sta $80.b,S		; 83 80
	sta $80.b,S		; 83 80
	cpx #$F0.b		; E0 F0
	jsr $E030.w		; 20 30 E0
	bmi -32.b		; 30 E0
	bmi -32.b		; 30 E0
	bmi -128.b		; 30 80
	bmi -128.b		; 30 80
	bmi -128.b		; 30 80
	bmi   0.b		; 30 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	cpx #$20.b		; E0 20
	clc		; 18
	dec $1C.b		; C6 1C
	dec $28.b		; C6 28
	.db $62, $0C, $62		; 62 0C 62
	trb $33.b		; 14 33
	asl $33.b		; 06 33
	tsb $0A19.w		; 0C 19 0A
	ora $447C.w,Y		; 19 7C 44
	sei		; 78
	rti		; 40

	trb $3C00.w		; 1C 00 3C
	jsr $020E.w		; 20 0E 02
	trb $0610.w		; 1C 10 06
	brk $06.b		; 00 06
	brk $1F.b		; 00 1F
	tsb $1F.b		; 04 1F
	tsb $1F.b		; 04 1F
	tsb $3D.b		; 04 3D
	asl $083E.w		; 0E 3E 08
	ror $FE10.w,X		; 7E 10 FE
	bmi -16.b		; 30 F0
	brk $0E.b		; 00 0E
	asl A		; 0A
	asl $0E0A.w		; 0E 0A 0E
	asl A		; 0A
	asl $1C10.w,X		; 1E 10 1C
	trb $38.b		; 14 38
	plp		; 28
	bvs  64.b		; 70 40
	brk $00.b		; 00 00
	sec		; 38
	inc $FE0C.w,X		; FE 0C FE
	tsb $0C7E.w		; 0C 7E 0C
	ror $7B0A.w,X		; 7E 0A 7B
	php		; 08
	and $3909.w,Y		; 39 09 39
	asl A		; 0A
	clc		; 18
	mvp $70,$44		; 44 44 70
	bvs  48.b		; 70 30
	bmi  48.b		; 30 30
	bmi  52.b		; 30 34
	bmi  22.b		; 30 16
	bpl  22.b		; 10 16
	bpl   7.b		; 10 07
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
	brk $34.b		; 00 34
	ror $14.b		; 66 14
	lsr $10.b		; 46 10
	lsr $30.b		; 46 30
	lsr $38.b		; 46 38
	jmp $4C28.w		; 4C 28 4C
	jsr $70CC.w		; 20 CC 70
	jmp.w [$0018]		; DC 18 00
	sec		; 38
	brk $3C.b		; 00 3C
	tsb $3C.b		; 04 3C
	tsb $30.b		; 04 30
	brk $30.b		; 00 30
	brk $78.b		; 00 78
	pha		; 48
	plp		; 28
	php		; 08
	cop $63.b		; 02 63
	trb $0C7F.w		; 1C 7F 0C
	ror $7E1C.w,X		; 7E 1C 7E
	trb $76.b		; 14 76
	bit $66.b		; 24 66
	bmi 102.b		; 30 66
	bpl  70.b		; 10 46
	bit $2220.w,X		; 3C 20 22
	jsl $203030.l		; 22 30 30 20
	jsr $2028.w		; 20 28 20
	clc		; 18
	brk $1C.b		; 00 1C
	tsb $3C.b		; 04 3C
	tsb $A1.b		; 04 A1
	asl $3ED1.w,X		; 1E D1 3E
	bra 127.b		; 80 7F
	rts		; 60

	ora $433E41.l,X		; 1F 41 3E 43
	bit $3C43.w,X		; 3C 43 3C
	and ($1E.b,X)		; 21 1E
	trb $2C1C.w		; 1C 1C 2C
	bit $7474.w		; 2C 74 74
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bpl  16.b		; 10 10
	pld		; 2B
	pei ($5D.b)		; D4 5D
	tay		; A8
	plb		; AB
	eor ($A6.b)		; 52 A6
	eor $D7.b,S		; 43 D7
	bmi -54.b		; 30 CA
	and $3E96.w,Y		; 39 96 3E
	dey		; 88
	and $808484.l		; 2F 84 84 80
	.db $82, $28, $06		; 82 28 06
	and $000F02.l,X		; 3F 02 0F 00
	ora [$11.b],Y		; 17 11
	ora #$08.b		; 09 08
	ora ($01.b),Y		; 11 01
	phd		; 0B
	ora $07.b		; 05 07
	ora $06.b,S		; 03 06
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $03.b		; 05 03
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	cpy #$18.b		; C0 18
	bne -78.b		; D0 B2
	ldy #$62.b		; A0 62
	sta ($87.b,X)		; 81 87
	brk $05.b		; 00 05
	cop $0B.b		; 02 0B
	tsb $17.b		; 04 17
	ora #$40.b		; 09 40
	sbc ($00.b,X)		; E1 00
	sbc ($00.b),Y		; F1 00
	sbc ($00.b,X)		; E1 00
	sta ($00.b,X)		; 81 00
	brk $02.b		; 00 02
	brk $05.b		; 00 05
	ora ($0D.b,X)		; 01 0D
	tsb $27.b		; 04 27
	bvc -40.b		; 50 D8
	jsr $2077.w		; 20 77 20
	php		; 08
	bra 127.b		; 80 7F
	sei		; 78
	sbc $FEFFFC.l,X		; FF FC FF FE
	sbc $DFD8FF.l,X		; FF FF D8 DF
	ora [$27.b]		; 07 27
	dey		; 88
	tay		; A8
	sta [$F7.b]		; 87 F7
	bmi  -6.b		; 30 FA
	sei		; 78
	jsr ($FE7E.w,X)		; FC 7E FE
	ror $AAFF.w,X		; 7E FF AA
	clc		; 18
	sbc $5C.b		; E5 5C
.ACCU 16
	rep #$6E		; C2 6E
	sbc $BD46.w,Y		; F9 46 BD
	dec A		; 3A
	lda $FFBF.w		; AD BF FF
	lda $173FED.l,X		; BF ED 3F 17
	bvc  11.b		; 50 0B
	pha		; 48
	ora $74.b		; 05 74
	cop $42.b		; 02 42
	sec		; 38
	sei		; 78
	dey		; 88
	sbc $08BF19.l,X		; FF 19 BF 08
	and $6D37ED.l,X		; 3F ED 37 6D
	lda [$6D.b],Y		; B7 6D
	ldx $6E.b,Y		; B6 6E
	sbc $EE.b,X		; F5 EE
	adc [$EE.b],Y		; 77 EE
	adc [$EF.b],Y		; 77 EF
	inc $FF.b,X		; F6 FF
	inc $BF.b		; E6 BF
	dey		; 88
	sbc $49FF48.l,X		; FF 48 FF 49
	sbc $88FF0A.l,X		; FF 0A FF 88
	sbc $08FE88.l,X		; FF 88 FE 08
	inc $FA08.w		; EE 08 FA
	tsb $FA.b		; 04 FA
	sty $FC.b		; 84 FC
	bra  -4.b		; 80 FC
	bra -40.b		; 80 D8
	cpx #$F0.b		; E0 F0
	cpy #$E0.b		; C0 E0
	bpl -128.b		; 10 80
	bvs -76.b		; 70 B4
	bcs -76.b		; B0 B4
	bmi -40.b		; 30 D8
	cli		; 58
	cld		; D8
	cli		; 58
	cpx #$00.b		; E0 00
	cpx #$20.b		; E0 20
	bra -128.b		; 80 80
	rts		; 60

	rts		; 60

	ora $8C.b,S		; 03 8C
	ora $8C.b,S		; 03 8C
	ora $84.b,S		; 03 84
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora ($04.b,X)		; 01 04
	cop $06.b		; 02 06
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	bra  48.b		; 80 30
	bra  48.b		; 80 30
	bra  48.b		; 80 30
	bra  48.b		; 80 30
	bra  48.b		; 80 30
	bra  48.b		; 80 30
	bra  48.b		; 80 30
	rti		; 40

	bvs -32.b		; 70 E0
	jsr $20E0.w		; 20 E0 20
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	ldy #$20.b		; A0 20
	sed		; F8
	jsr $70B8.w		; 20 B8 70
	stz $18.b,X		; 74 18
	jmp ($5E10.w,X)		; 7C 10 5E
	plp		; 28
	rol $2F0C.w,X		; 3E 0C 2F
	asl $1F.b,X		; 16 1F
	brk $70.b		; 00 70
	bvc 112.b		; 50 70
	brk $38.b		; 00 38
	jsr $2838.w		; 20 38 28
	bit $1C14.w,X		; 3C 14 1C
	bpl  30.b		; 10 1E
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $D000.w		; 20 00 D0
	jsr $E090.w		; 20 90 E0
	php		; 08
	beq -60.b		; F0 C4
	sec		; 38
	ldy $58.b		; A4 58
	cpx $0050.w		; EC 50 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	cld		; D8
	cpx #$78.b		; E0 78
	cpy #$30.b		; C0 30
	rti		; 40

	rti		; 40

	rts		; 60

	bra  32.b		; 80 20
	rti		; 40

	cpx #$80.b		; E0 80
	cpy #$00.b		; C0 00
	bra  32.b		; 80 20
	jsr $0000.w		; 20 00 00
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($0C.b,S),Y		; 13 0C
	ora $0A.b,X		; 15 0A
	and $102F14.l		; 2F 14 2F 10
	ora $300C0C.l,X		; 1F 0C 0C 30
	ora [$78.b],Y		; 17 78
	asl $41.b,X		; 16 41
	php		; 08
	php		; 08
	phd		; 0B
	ora #$1515.w		; 09 15 15
	ora ($01.b,X)		; 01 01
	brk $0C.b		; 00 0C
	ora ($13.b,S),Y		; 13 13
	plp		; 28
	pld		; 2B
	and $2F03.w,Y		; 39 03 2F
	ora ($3F.b),Y		; 11 3F
	ora $1F.b,S		; 03 1F
	ora $17.b,S		; 03 17
	asl $071E.w		; 0E 1E 07
	ora $080706.l		; 0F 06 07 08
	ora $18.b,S		; 03 18
	tas		; 1B
	asl A		; 0A
	tas		; 1B
	clc		; 18
	ora [$04.b]		; 07 04
	ora $080F01.l		; 0F 01 0F 08
	asl $00.b		; 06 00
	cop $02.b		; 02 02
	ora $0509.w		; 0D 09 05
	bpl   6.b		; 10 06
	bpl   6.b		; 10 06
	bpl  30.b		; 10 1E
	bmi  30.b		; 30 1E
	bmi  14.b		; 30 0E
	jsr $210F.w		; 20 0F 21
	and $0E61.w,X		; 3D 61 0E
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $3D.b		; 00 3D
	adc ($1C.b,X)		; 61 1C
	eor ($1A.b,X)		; 41 1A
	eor $1A.b,S		; 43 1A
	eor $74.b,S		; 43 74
	cmp [$74.b]		; C7 74
	dec $30.b		; C6 30
	stx $78.b		; 86 78
	sty $001E.w		; 8C 1E 00
	and $013D01.l,X		; 3F 01 3D 01
	bit $3A00.w,X		; 3C 00 3A
	cop $38.b		; 02 38
	brk $7C.b		; 00 7C
	tsb $70.b		; 04 70
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	cpx #$00.b		; E0 00
	beq  64.b		; F0 40
	iny		; C8
	bpl  -8.b		; 10 F8
	beq  -8.b		; F0 F8
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	jsr $3000.w		; 20 00 30
	rts		; 60

	beq -32.b		; F0 E0
	beq -24.b		; F0 E8
	beq  16.b		; F0 10
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	rol $10.b		; 26 10
	rol $7E.b,X		; 36 7E
	jsr $187E.w		; 20 7E 18
	jmp ($7C10.w,X)		; 7C 10 7C
	bpl 124.b		; 10 7C
	bpl 120.b		; 10 78
	bmi  24.b		; 30 18
	brk $0C.b		; 00 0C
	tsb $20.b		; 04 20
	brk $38.b		; 00 38
	jsr $2838.w		; 20 38 28
	sec		; 38
	plp		; 28
	bmi  32.b		; 30 20
	bmi   0.b		; 30 00
	trb $24C8.w		; 1C C8 24
	pla		; 68
	ror $08.b,X		; 76 08
	ror $3E38.w,X		; 7E 38 3E
	php		; 08
	rol $2D0C.w,X		; 3E 0C 2D
	asl $041F.w,X		; 1E 1F 04
	bvs  64.b		; 70 40
	clc		; 18
	php		; 08
	tsb $3C04.w		; 0C 04 3C
	tsb $1C.b		; 04 1C
	trb $1C.b		; 14 1C
	bpl  30.b		; 10 1E
	brk $0E.b		; 00 0E
	asl A		; 0A
	ora $03.b		; 05 03
	asl $03.b		; 06 03
	php		; 08
	ora [$08.b]		; 07 08
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$50.b]		; 07 50
	ora $000202.l		; 0F 02 02 00
	brk $06.b		; 00 06
	asl $04.b		; 06 04
	tsb $00.b		; 04 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $0E.b		; 02 0E
	asl $C037.w		; 0E 37 C0
	sed		; F8
	eor [$EF.b],Y		; 57 EF
	asl $5F.b,X		; 16 5F
	lda $80BF66.l		; AF 66 BF 80
	adc $957C83.l,X		; 7F 83 7C 95
	ror A		; 6A
	bra -128.b		; 80 80
	ror $06.b,X		; 76 06
	adc #$1060.w		; 69 60 10
	brk $19.b		; 00 19
	ora $3434.w,Y		; 19 34 34
	rts		; 60

	rts		; 60

	.db $42, $42		; 42 42
	ora $11.b		; 05 11
	asl A		; 0A
	and $3C.b,S		; 23 3C
	eor [$7C.b]		; 47 7C
	dec A		; 3A
	rol $B87C.w,X		; 3E 7C B8
	sei		; 78
	sta ($76.b,S),Y		; 93 76
	tad		; 5B
	rol $000E.w		; 2E 0E 00
	ora $0201.w,X		; 1D 01 02
	cop $18.b		; 02 18
	sec		; 38
	clc		; 18
	jsr ($7E00.w,X)		; FC 00 7E
	cop $7E.b		; 02 7E
	asl A		; 0A
	rol $C126.w		; 2E 26 C1
	tsa		; 3B
	cmp ($20.b,X)		; C1 20
	tsb $1F.b		; 04 1F
	ora $0F.b,S		; 03 0F
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora [$87.b]		; 07 87
	ora [$98.b]		; 07 98
	sta $0504.w,Y		; 99 04 05
	trb $011F.w		; 1C 1F 01
	phd		; 0B
	ora $07.b,S		; 03 07
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	cpy $01.b		; C4 01
	ldx $4403.w,Y		; BE 03 44
	ora $F8.b,S		; 03 F8
	cpy #$FC.b		; C0 FC
	sbc $FCFE.w		; ED FE FC
	sbc $FEFB.w,X		; FD FB FE
	sbc $38.b,X		; F5 38
	dec A		; 3A
	rti		; 40

	eor $38.b,S		; 43 38
	tyx		; BB
	bra -41.b		; 80 D7
	cpy #$EE.b		; C0 EE
	beq  -3.b		; F0 FD
	sbc ($FB.b),Y		; F1 FB
	pea $50F5.w		; F4 F5 50
	cpy $28.b		; C4 28
	cpx $28.b		; E4 28
.INDEX 8
	sep #$1E		; E2 1E
	bvs  63.b		; 70 3F
	mvp $30,$5F		; 44 5F 30
	cmp $DE5FDE.l,X		; DF DE 5F DE
	clv		; B8
	bra  88.b		; 80 58
	rti		; 40

	jmp $202040.l		; 5C 40 20 20
	asl $000A.w		; 0E 0A 00
	bcs -36.b		; B0 DC
	inc $FE44.w,X		; FE 44 FE
	plx		; FA
	sty $FE.b		; 84 FE
	bra  -4.b		; 80 FC
	bra -36.b		; 80 DC
	cpx #$F8.b		; E0 F8
	cpy #$F0.b		; C0 F0
	php		; 08
	cpy #$38.b		; C0 38
	cpx #$F8.b		; E0 F8
	ldy $30.b,X		; B4 30
	cld		; D8
	cli		; 58
	cld		; D8
	cli		; 58
	inx		; E8
	php		; 08
	cpx #$20.b		; E0 20
	cpy #$C0.b		; C0 C0
	bmi  48.b		; 30 30
	bpl  16.b		; 10 10
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
	bpl   0.b		; 10 00
	inx		; E8
	bpl -56.b		; 10 C8
	bvs   4.b		; 70 04
	sed		; F8
	.db $62, $9C, $D2		; 62 9C D2
	bit $A876.w		; 2C 76 A8
	cpx $0070.w		; EC 70 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	jsr $8888.w		; 20 88 88
	php		; 08
	php		; 08
	jsr $8020.w		; 20 20 80
	bra  16.b		; 80 10
	bpl -68.b		; 10 BC
	rts		; 60

	tya		; 98
	jsr $B020.w		; 20 20 B0
	cpy #$10.b		; C0 10
	jsr $40F0.w		; 20 F0 40
	rts		; 60

	brk $C0.b		; 00 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	rts		; 60

	jsr $00C0.w		; 20 C0 00
	cpx #$00.b		; E0 00
	cpy #$C0.b		; C0 C0
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	asl $1701.w		; 0E 01 17
	asl A		; 0A
	ora $1A0704.l,X		; 1F 04 07 1A
	cop $34.b		; 02 34
	phd		; 0B
	bit $17.b		; 24 17
	mvp $8C,$2B		; 44 2B 8C
	ora ($00.b,X)		; 01 00
	asl A		; 0A
	asl A		; 0A
	brk $04.b		; 00 04
	php		; 08
	asl A		; 0A
	ora $1C15.w,X		; 1D 15 1C
	ora $38.b		; 05 38
	ora ($74.b,X)		; 01 74
	ora $FB.b		; 05 FB
	sbc ($EF.b,X)		; E1 EF
	eor $FF.b,S		; 43 FF
	lsr A		; 4A
	sbc $007C04.l		; EF 04 7C 00
	sbc $C63810.l,X		; FF 10 38 C6
	sta ($28.b,S),Y		; 93 28
	sbc $DB00.w		; ED 00 DB
	bra -45.b		; 80 D3
	sta ($54.b,X)		; 81 54
	rti		; 40

	sta $83.b,S		; 83 83
	bpl -41.b		; 10 D7
	cmp [$D7.b],Y		; D7 D7
	jmp ($F8EF.w)		; 6C EF F8
	cpy #$DC.b		; C0 DC
	plp		; 28
	adc ($90.b)		; 72 90
	ldx $DC2C.w		; AE 2C DC
	ora ($FA.b),Y		; 11 FA
	and #$38EA.w		; 29 EA 38
	cmp $3C.b		; C5 3C
	cpy #$00.b		; C0 00
	cpx #$C8.b		; E0 C8
	bcc  28.b		; 90 1C
	php		; 08
	jmp ($B002.w,X)		; 7C 02 B0
	asl $A0.b		; 06 A0
	ora [$A0.b]		; 07 A0
	phd		; 0B
	tay		; A8
	and $031F03.l,X		; 3F 03 1F 03
	ora [$0F.b],Y		; 17 0F
	ora $070E06.l		; 0F 06 0E 07
	ora [$08.b]		; 07 08
	ora $0C.b,S		; 03 0C
	tsb $0C.b		; 04 0C
	tas		; 1B
	clc		; 18
	ora [$04.b]		; 07 04
	ora $010700.l		; 0F 00 07 01
	ora [$00.b]		; 07 00
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	ora $00.b,S		; 03 00
	sbc $2F.b,X		; F5 2F
	adc $AE.b,X		; 75 AE
	ror $AD.b,X		; 76 AD
	ror $EEF7.w		; 6E F7 EE
	adc [$EF.b],Y		; 77 EF
	ror $FF.b,X		; 76 FF
	inc $F2.b		; E6 F2
	ora $90BF.w		; 0D BF 90
	sbc $52FF51.l,X		; FF 51 FF 52
	sbc $88FF08.l,X		; FF 08 FF 88
	inc $EE88.w,X		; FE 88 EE
	php		; 08
	ora $0001.w		; 0D 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $68.b		; 00 68
	ora $303F40.l,X		; 1F 40 3F 30
	ora $211F20.l		; 0F 20 1F 21
	asl $1E21.w,X		; 1E 21 1E
	ora ($0E.b),Y		; 11 0E
	phd		; 0B
	tsb $16.b		; 04 16
	asl $3A.b,X		; 16 3A
	dec A		; 3A
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	ldx $5554.w		; AE 54 55
	lda #$A153.w		; A9 53 A1
	xba		; EB
	clc		; 18
	sbc $1C.b		; E5 1C
	wai		; CB
	ora $FD17C4.l,X		; 1F C4 17 FD
	cop $40.b		; 02 40
	eor ($14.b,X)		; 41 14
	ora $1F.b,S		; 03 1F
	ora ($07.b,X)		; 01 07
	brk $0B.b		; 00 0B
	php		; 08
	tsb $04.b		; 04 04
	php		; 08
	brk $0E.b		; 00 0E
	tsb $1E38.w		; 0C 38 1E
	and $1D.b,X		; 35 1D
	tas		; 1B
	tsb $000C.w		; 0C 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	clc		; 18
	ora $001F00.l,X		; 1F 00 1F 00
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cmp [$87.b],Y		; D7 87
	plb		; AB
	tas		; 1B
	and $5605.w,X		; 3D 05 56
	rol A		; 2A
	eor $4ABD21.l,X		; 5F 21 BD 4A
	adc $1BFF9B.l,X		; 7F 9B FF 1B
	ora $8F.b,S		; 03 8F
	ora ($1F.b,X)		; 01 1F
	brk $07.b		; 00 07
	rol A		; 2A
	ora $29.b,S		; 03 29
	ora #$105A.w		; 09 5A 10
	stp		; DB
	rti		; 40

	tyx		; BB
	ldy #$FF.b		; A0 FF
	sbc $FF.b,X		; F5 FF
	sbc ($CE.b),Y		; F1 CE
	cpy $B0BF.w		; CC BF B0
	ror $FD41.w,X		; 7E 41 FD
	.db $82, $D7, $38		; 82 D7 38
	eor $F5F0F0.l,X		; 5F F0 F0 F5
	cpy #$F1.b		; C0 F1
	dey		; 88
	sbc $F030.w,X		; FD 30 F0
	eor $C4.b		; 45 C4
	stx $94.b,Y		; 96 94
	ply		; 7A
	.db $42, $FB		; 42 FB
	phd		; 0B
	cmp $42FE.w		; CD FE 42
	cpx $E0CC.w		; EC CC E0
	bmi -64.b		; 30 C0
	cpy #$00.b		; C0 00
	rti		; 40

	bra  64.b		; 80 40
	bra -96.b		; 80 A0
	rti		; 40

	cpy #$FE.b		; C0 FE
	rti		; 40

	jsr ($F040.w,X)		; FC 40 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	brk $08.b		; 00 08
	ora [$0A.b]		; 07 0A
	ora $0B.b		; 05 0B
	tsb $06.b		; 04 06
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($05.b,X)		; 01 05
	ora $04.b		; 05 04
	tsb $00.b		; 04 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E4.b		; 00 E4
	tas		; 1B
	ldx $69.b,Y		; B6 69
	sta $C542.w		; 8D 42 C5
	pld		; 2B
	eor $BA.b,X		; 55 BA
	inc $BAAB.w		; EE AB BA
	sta $88.b,S		; 83 88
	txy		; 9B
	ora $4819.w,Y		; 19 19 48
	pha		; 48
	adc ($42.b)		; 72 42
	bpl   0.b		; 10 00
	brk $AA.b		; 00 AA
	sta ($AA.b)		; 92 AA
	jmp ($7600.w,X)		; 7C 00 76
	ora ($0C.b)		; 12 0C
	ora $1800.w,Y		; 19 00 18
	cop $08.b		; 02 08
	asl $0D.b		; 06 0D
	ora $040905.l		; 0F 05 09 04
	asl $01.b		; 06 01
	ora [$00.b]		; 07 00
	tsb $03.b		; 04 03
	asl $0609.w		; 0E 09 06
	ora ($03.b,X)		; 01 03
	ora ($02.b,X)		; 01 02
	brk $06.b		; 00 06
	tsb $01.b		; 04 01
	brk $02.b		; 00 02
	cop $BA.b		; 02 BA
	cmp [$FE.b],Y		; D7 FE
	dec $7C.b		; C6 7C
	inc $75FC.w		; EE FC 75
	lda $7F79.w,X		; BD 79 7F
	ldy $3DDB.w,X		; BC DB 3D
	sbc $C7101A.l		; EF 1A 10 C7
	mvp $44,$C7		; 44 C7 44
	sbc $307721.l		; EF 21 77 30
	ply		; 7A
	clc		; 18
	ldy $3C09.w,X		; BC 09 3C
	.db $82, $98, $00		; 82 98 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $13.b		; 00 13
	brk $2C.b		; 00 2C
	ora ($23.b,S),Y		; 13 23
	ora $8C3F51.l,X		; 1F 51 3F 8C
	adc ($00.b,S),Y		; 73 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($04.b,X)		; 01 04
	tsb $2E.b		; 04 2E
	rol $3131.w		; 2E 31 31
	sei		; 78
	brk $84.b		; 00 84
	sei		; 78
	plx		; FA
	mvn $14,$FA		; 54 FA 14
	inc A		; 1A
	cpx $E9.b		; E4 E9
	inc $B5.b,X		; F6 B5
	plx		; FA
	sta $FA.b,X		; 95 FA
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	bvs   0.b		; 70 00
	trb $04.b		; 14 04
	cpy $C4.b		; C4 C4
	bpl  16.b		; 10 10
	rti		; 40

	rti		; 40

	pla		; 68
	pla		; 68
	bmi -64.b		; 30 C0
	bit $C0.b,X		; 34 C0
	bit $A4D0.w		; 2C D0 A4
	cli		; 58
	cpy $38.b		; C4 38
	iny		; C8
	bcs  72.b		; B0 48
	bcs -120.b		; B0 88
	bvs -128.b		; 70 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $2020.w		; 20 20 20
	ldy #$A0.b		; A0 A0
	jsr $0820.w		; 20 20 08
	beq   8.b		; F0 08
	beq -48.b		; F0 D0
	jsr $00F0.w		; 20 F0 00
	cld		; D8
	bpl 104.b		; 10 68
	ldy #$78.b		; A0 78
	bcc  88.b		; 90 58
	rti		; 40

	jsr $2020.w		; 20 20 20
	jsr $0000.w		; 20 00 00
	rts		; 60

	rts		; 60

	brk $30.b		; 00 30
	jsr $10B0.w		; 20 B0 10
	bcc  32.b		; 90 20
	bra   8.b		; 80 08
	bpl  32.b		; 10 20
	bcs -32.b		; B0 E0
	bcs   0.b		; B0 00
	bmi -64.b		; 30 C0
	bvs   0.b		; 70 00
	rts		; 60

	ldy #$40.b		; A0 40
	beq -128.b		; F0 80
	bvs -112.b		; 70 90
	cpy #$80.b		; C0 80
	rti		; 40

	brk $E0.b		; 00 E0
	jsr $20A0.w		; 20 A0 20
	cpy #$40.b		; C0 40
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	cpy #$10.b		; C0 10
	bra  16.b		; 80 10
	bra  16.b		; 80 10
	rti		; 40

	bmi -72.b		; 30 B8
	cpy #$E0.b		; C0 E0
	php		; 08
	bvc -88.b		; 50 A8
	bcs  72.b		; B0 48
	ldy #$A0.b		; A0 A0
	jsr $2060.w		; 20 60 20
	rts		; 60

	jsr $00A0.w		; 20 A0 00
	cpy #$10.b		; C0 10
	bpl -96.b		; 10 A0
	brk $40.b		; 00 40
	brk $0B.b		; 00 0B
	tsb $0F.b		; 04 0F
	brk $13.b		; 00 13
	ora $011F.w		; 0D 1F 01
	and [$19.b]		; 27 19
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b		; 05 01
	ora $05.b		; 05 05
	ora $0B00.w		; 0D 00 0B
	asl A		; 0A
	tas		; 1B
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6D.b		; 00 6D
	plb		; AB
	sbc $AB7D11.l,X		; FF 11 7D AB
	adc $6DAB.w,X		; 7D AB 6D
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $AB.b		; 00 AB
	sec		; 38
	eor $54.b,X		; 55 54
	sbc $44EF44.l		; EF 44 EF 44
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tay		; A8
	bvc -44.b		; 50 D4
	plp		; 28
	mvn $EA,$A8		; 54 A8 EA
	sty $EA.b,X		; 94 EA
	sty $00.b,X		; 94 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	brk $68.b		; 00 68
	rti		; 40

	tay		; A8
	brk $B4.b		; 00 B4
	jsr $20B4.w		; 20 B4 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora $001605.l		; 0F 05 16 00
	ora $190B.w,Y		; 19 0B 19
	ora $09.b,S		; 03 09
	ora $0000.w,Y		; 19 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	tsb $01.b		; 04 01
	brk $09.b		; 00 09
	ora ($0F.b,X)		; 01 0F
	ora ($07.b,X)		; 01 07
	tsb $03.b		; 04 03
	and ($E6.b,X)		; 21 E6
	eor ($3C.b,S),Y		; 53 3C
	pla		; 68
	bit $BB9B.w,X		; 3C 9B BB
	mvn $D7,$D6		; 54 D6 D7
	cmp [$D7.b],Y		; D7 D7
	cmp [$93.b]		; C7 93
	cmp [$5C.b],Y		; D7 5C
	mvp $28,$28		; 44 28 28
	bit $2093.w,X		; 3C 93 20
	sbc [$44.b]		; E7 44
	sbc $01EFC7.l		; EF C7 EF 01
	sbc $05FF10.l		; EF 10 FF 05
	cop $03.b		; 02 03
	tsb $01.b		; 04 01
	tsb $00.b		; 04 00
	asl $0E.b		; 06 0E
	brk $02.b		; 00 02
	ora #$0A05.w		; 09 05 0A
	ora $0A.b		; 05 0A
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	cop $03.b		; 02 03
	brk $01.b		; 00 01
	tsb $05.b		; 04 05
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	sbc [$2A.b],Y		; F7 2A
	eor $E7A2.w,X		; 5D A2 E7
	clc		; 18
	ror $7EFF.w,X		; 7E FF 7E
	inc $7D7D.w,X		; FE 7D 7D
	tyx		; BB
	tsx		; BA
	cmp [$54.b],Y		; D7 54
	.db $82, $A8, $82		; 82 A8 82
	jsr $1800.w		; 20 00 18
	brk $FF.b		; 00 FF
	bit $38FF.w,X		; 3C FF 38
	sbc $45FE12.l,X		; FF 12 FE 45
	adc $0001.w,X		; 7D 01 00
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	ora $02.b		; 05 02
	ora $02.b		; 05 02
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $FF8DFF.l,X		; 1F FF 8D FF
	stz $9F.b		; 64 9F
	adc ($8D.b)		; 72 8D
	tad		; 5B
	ldy $C6.b,X		; B4 C6
	and ($62.b,X)		; 21 62
	sta $AA.b,X		; 95 AA
	eor $2020.w,X		; 5D 20 20
	adc ($72.b)		; 72 72
	phb		; 8B
	phb		; 8B
	sty $248C.w		; 8C 8C 24
	bit $39.b		; 24 39
	and ($88.b,X)		; 21 88
	bra   0.b		; 80 00
	eor $00.b,X		; 55 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($80.b,X)		; 01 80
	sta ($81.b,X)		; 81 81
	sta $00.b,S		; 83 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$00.b		; C0 00
	cpy #$73.b		; C0 73
	ora $207F.w		; 0D 7F 20
	ror $28D0.w		; 6E D0 28
	lda ($EE.b,S),Y		; B3 EE
	bcs 105.b		; B0 69
	bmi -98.b		; 30 9E
	jsr $60D1.w		; 20 D1 60
	ora $200002.l		; 0F 02 00 20
	ora ($0F.b,X)		; 01 0F
	eor [$0F.b]		; 47 0F
	eor ($0F.b,X)		; 41 0F
	dec $0E.b		; C6 0E
	sbc ($21.b,X)		; E1 21
	ldx $FD2E.w		; AE 2E FD
	eor ($FF.b)		; 52 FF
	ora ($EF.b,X)		; 01 EF
	brk $E3.b		; 00 E3
	clc		; 18
	lda $A05300.l		; AF 00 53 A0
	sbc $001140.l		; EF 40 11 00
	asl $000C.w,X		; 1E 0C 00
	ora ($10.b,X)		; 01 10
	asl $5E1C.w,X		; 1E 1C 5E
	bvc  94.b		; 50 5E
	ldy $10AE.w		; AC AE 10
	bvc  14.b		; 50 0E
	inc $A0F0.w		; EE F0 A0
	cpx #$50.b		; E0 50
	cpx #$B0.b		; E0 B0
	beq  88.b		; F0 58
	rts		; 60

	iny		; C8
	clc		; 18
	cpy $C410.w		; CC 10 C4
	bit $80E6.w		; 2C E6 80
	ldy #$40.b		; A0 40
	rti		; 40

	brk $80.b		; 00 80
	jsr $3000.w		; 20 00 30
	brk $70.b		; 00 70
	rti		; 40

	sec		; 38
	bra  24.b		; 80 18
	bra  62.b		; 80 3E
	ldx $5DDD.w,Y		; BE DD 5D
	xba		; EB
	rol A		; 2A
	ldx $55.b,Y		; B6 55
	sbc $D5BE08.l,X		; FF 08 BE D5
	ldx $B6D5.w,Y		; BE D5 B6
	sbc $09FF1C.l,X		; FF 1C FF 09
	adc $D53E22.l,X		; 7F 22 3E D5
	stz $AAAA.w		; 9C AA AA
	sbc [$22.b],Y		; F7 22
	sbc [$22.b],Y		; F7 22
	sbc $84F000.l,X		; FF 00 F0 84
	tay		; A8
	mvn $24,$D8		; 54 D8 24
	pei ($A8.b)		; D4 A8
	nop		; EA
	sty $AA.b,X		; 94 AA
	pei ($F5.b)		; D4 F5
	dex		; CA
	sbc $CA.b,X		; F5 CA
	php		; 08
	dey		; 88
	bvc   0.b		; 50 00
	ldy #$80.b		; A0 80
	tay		; A8
	brk $B4.b		; 00 B4
	jsr $00D4.w		; 20 D4 00
	phx		; DA
	bpl -38.b		; 10 DA
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $13.b		; 00 13
	brk $2C.b		; 00 2C
	ora ($00.b,S),Y		; 13 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($48.b,X)		; 01 48
	bcs -88.b		; B0 A8
	bne -88.b		; D0 A8
	bne  24.b		; D0 18
	cpx #$1A.b		; E0 1A
	cpx #$96.b		; E0 96
	pla		; 68
	cmp ($AC.b)		; D2 AC
.INDEX 8
	sep #$1C		; E2 1C
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	cpy #$C0.b		; C0 C0
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	stz $D8.b		; 64 D8
	bit $D8.b		; 24 D8
	mvp $84,$B8		; 44 B8 84
	sei		; 78
	sty $78.b		; 84 78
	sed		; F8
	brk $88.b		; 00 88
	bvs -36.b		; 70 DC
	plp		; 28
	bpl  16.b		; 10 10
	bvc  80.b		; 50 50
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	beq -128.b		; F0 80
	cpx #$C8.b		; E0 C8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	brk $84.b		; 00 84
	sei		; 78
	plx		; FA
	mvn $14,$FA		; 54 FA 14
	inc A		; 1A
	cpx $00.b		; E4 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	bvs   0.b		; 70 00
	trb $04.b		; 14 04
	cpy $C4.b		; C4 C4
	ora ($04.b,X)		; 01 04
	cop $05.b		; 02 05
	cop $05.b		; 02 05
	ora $02.b		; 05 02
	ora [$00.b]		; 07 00
	ora #$0F06.w		; 09 06 0F
	brk $13.b		; 00 13
	tsb $0202.w		; 0C 02 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	cop $02.b		; 02 02
	asl $00.b		; 06 00
	ora $05.b		; 05 05
	ora $0001.w		; 0D 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	clc		; 18
	asl $16.b,X		; 16 16
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	bpl  62.b		; 10 3E
	cop $3F.b		; 02 3F
	ora #$1613.w		; 09 13 16
	ora [$CA.b]		; 07 CA
	phy		; 5A
	jmp.w [$E0FC]		; DC FC E0
	cpx #$D8.b		; E0 D8
	cpx #$20.b		; E0 20
	cpy #$C0.b		; C0 C0
	brk $01.b		; 00 01
	and [$02.b],Y		; 37 02
	sbc $CC7F02.l		; EF 02 7F CC
	sbc $00FCC0.l,X		; FF C0 FC 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($06.b,X)		; 01 06
	asl $09.b		; 06 09
	tsb $0E06.w		; 0C 06 0E
	ora $05.b		; 05 05
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	tsb $0F.b		; 04 0F
	php		; 08
	asl $1F04.w,X		; 1E 04 1F
	tsb $0F.b		; 04 0F
	ora $0F.b,S		; 03 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	tsb $03.b		; 04 03
	asl $0005.w		; 0E 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	tsb $77.b		; 04 77
	cmp $5D.b,X		; D5 5D
	cmp ($44.b,X)		; C1 44
	cmp $7310.w		; CD 10 73
	and #$F51E.w		; 29 1E F5
	asl $1EED.w,X		; 1E ED 1E
	stp		; DB
	adc $5549.w		; 6D 49 55
	rol $3B00.w,X		; 3E 00 3B
	ora #$222E.w		; 09 2E 22
	trb $14.b		; 14 14
	asl $D208.w,X		; 1E 08 D2
	cmp ($E5.b)		; D2 E5
	sty $00.b		; 84 00
	.db $82, $8F, $02		; 82 8F 02
	rol $FFB0.w		; 2E B0 FF
	plx		; FA
	adc $789F7A.l,X		; 7F 7A 9F 78
	rtl		; 6B

	trb $1E.b		; 14 1E
	brk $01.b		; 00 01
	cpy #$01.b		; C0 01
	bvs   5.b		; 70 05
	pea $F832.w		; F4 32 F8
	and ($F8.b)		; 32 F8
	cop $7A.b		; 02 7A
	tsb $10.b		; 04 10
	brk $00.b		; 00 00
	asl A		; 0A
	adc ($8F.b,X)		; 61 8F
	sbc $9B.b,S		; E3 9B
	cmp [$0B.b]		; C7 0B
	cmp [$07.b],Y		; D7 07
	cmp ($07.b,S),Y		; D3 07
	sta ($05.b,S),Y		; 93 05
	tas		; 1B
	and $C403.w,Y		; 39 03 C4
	eor $41.b		; 45 41
	eor $01.b,S		; 43 01
	ora [$81.b]		; 07 81
	sta [$89.b]		; 87 89
	phb		; 8B
	ora #$090B.w		; 09 0B 09
	phd		; 0B
	ora ($07.b,X)		; 01 07
	nop		; EA
	sbc ($FC.b),Y		; F1 FC
	sed		; F8
	sbc $FDFE.w,X		; FD FE FD
	inc $FEFD.w,X		; FE FD FE
	inc $F9FC.w,X		; FE FC F9
	jsr ($FBFA.w,X)		; FC FA FB
	tsb $F5.b		; 04 F5
	beq  -5.b		; F0 FB
	sed		; F8
	inc $FEF8.w,X		; FE F8 FE
	sed		; F8
	inc $FDF8.w,X		; FE F8 FD
	sed		; F8
	inc $FFF0.w,X		; FE F0 FF
	tya		; 98
	and ($97.b)		; 32 97
	and ($CB.b)		; 32 CB
	sec		; 38
	ora $5A075A.l		; 0F 5A 07 5A
	ora $C10640.l		; 0F 40 06 C1
	sbc ($00.b,X)		; E1 00
	bit $0C20.w		; 2C 20 0C
	brk $15.b		; 00 15
	ora ($82.b),Y		; 11 82
	bra -118.b		; 80 8A
	dey		; 88
	.db $82, $82, $81		; 82 82 81
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	ora $06.b,S		; 03 06
	ora $08.b,S		; 03 08
	ora [$08.b]		; 07 08
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$00.b]		; 07 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $06.b		; 00 06
	asl $04.b		; 06 04
	tsb $00.b		; 04 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $E0.b		; 02 E0
	brk $37.b		; 00 37
	cpy #$F8.b		; C0 F8
	eor [$EF.b],Y		; 57 EF
	asl $5F.b,X		; 16 5F
	lda $80BF66.l		; AF 66 BF 80
	adc $007C83.l,X		; 7F 83 7C 00
	brk $80.b		; 00 80
	bra 118.b		; 80 76
	asl $69.b		; 06 69
	rts		; 60

	bpl   0.b		; 10 00
	ora $3419.w,Y		; 19 19 34
	bit $60.b,X		; 34 60
	rts		; 60

	ora [$08.b],Y		; 17 08
	ora $04.b,X		; 15 04
	inc A		; 1A
	asl A		; 0A
	ora $1615.w		; 0D 15 16
	and ($0A.b)		; 32 0A
	and ($0D.b,X)		; 21 0D
	rol $34.b		; 26 34
	adc [$09.b]		; 67 09
	ora #$0E00.w		; 09 00 0E
	cop $0F.b		; 02 0F
	tsb $07.b		; 04 07
	asl A		; 0A
	ora $1C.b,S		; 03 1C
	ora ($18.b,X)		; 01 18
	brk $1A.b		; 00 1A
	cop $FB.b		; 02 FB
	mvp $A5,$77		; 44 77 A5
	xce		; FB
	ora ($5F.b)		; 12 5F
	rts		; 60

	eor $5960.w,X		; 5D 60 59
	ror $5D.b		; 66 5D
	cpx #$D3.b		; E0 D3
	cpx #$DC.b		; E0 DC
	tya		; 98
	sbc #$1440.w		; E9 40 14
	brk $00.b		; 00 00
	cpy #$42.b		; C0 42
	dec $DE46.w,X		; DE 46 DE
	.db $42, $DE		; 42 DE
	tsb $5FDC.w		; 0C DC 5F
	and $301F6C.l,X		; 3F 6C 1F 30
	brk $23.b		; 00 23
	trb $26.b		; 14 26
	ora ($2A.b,X)		; 01 2A
	ora $15.b		; 05 15
	asl A		; 0A
	pld		; 2B
	ora $0E.b,X		; 15 0E
	and $001F00.l,X		; 3F 00 1F 00
	ora $190C0C.l		; 0F 0C 0C 19
	clc		; 18
	ora $10.b,X		; 15 10
	phd		; 0B
	ora ($17.b,X)		; 01 17
	cop $8E.b		; 02 8E
	cmp $661F1E.l		; CF 1E 1F 66
	ror $DA.b		; 66 DA
	inc A		; 1A
	adc $FF85.w,X		; 7D 85 FF
	cop $76.b		; 02 76
	lda $B976.w,Y		; B9 76 B9
	asl $06FF.w		; 0E FF 06
	sbc $08FF02.l,X		; FF 02 FF 08
	and $B00784.l,X		; 3F 84 07 B0
	lda ($FD.b)		; B2 FD
	mvp $44,$FD		; 44 FD 44
	ora $0F.b,S		; 03 0F
	tsb $1C.b		; 04 1C
	ora [$1C.b]		; 07 1C
	ora $18.b,S		; 03 18
	ora $18.b,S		; 03 18
	phd		; 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	tsb $04.b		; 04 04
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	ora $080F08.l		; 0F 08 0F 08
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	cmp $3C24E0.l,X		; DF E0 24 3C
	ldy $3C.b		; A4 3C
	.db $82, $3E, $82		; 82 3E 82
	rol $7EC2.w,X		; 3E C2 7E
	cmp ($67.b,X)		; C1 67
	cmp ($67.b,X)		; C1 67
	jsr $CB20.w		; 20 20 CB
	php		; 08
	wai		; CB
	php		; 08
	sbc $24.b		; E5 24
	sbc $24.b		; E5 24
	lda $24.b		; A5 24
	.db $82, $02, $82		; 82 02 82
	cop $00.b		; 02 00
	brk $10.b		; 00 10
	brk $E8.b		; 00 E8
	bpl -56.b		; 10 C8
	bvs   4.b		; 70 04
	sed		; F8
	.db $62, $9C, $D2		; 62 9C D2
	bit $A876.w		; 2C 76 A8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$20.b		; A0 20
	dey		; 88
	dey		; 88
	php		; 08
	php		; 08
	jsr $8020.w		; 20 20 80
	bra -20.b		; 80 EC
	bvs -68.b		; 70 BC
	rts		; 60

	tya		; 98
	jsr $B020.w		; 20 20 B0
	cpy #$10.b		; C0 10
	jsr $40F0.w		; 20 F0 40
	rts		; 60

	brk $C0.b		; 00 C0
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	rts		; 60

	jsr $00C0.w		; 20 C0 00
	cpx #$00.b		; E0 00
	cpy #$C0.b		; C0 C0
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	ora $1F0E.w		; 0D 0E 1F
	trb $7C7A.w		; 1C 7A 7C
	pea $C8F8.w		; F4 F8 C8
	beq -112.b		; F0 90
	cpx #$60.b		; E0 60
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	asl $7C08.w,X		; 1E 08 7C
	bmi  -4.b		; 30 FC
	cpx #$F8.b		; E0 F8
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rol $5A08.w,X		; 3E 08 5A
	bit $7C.b,X		; 34 7C
	bpl 116.b		; 10 74
	clc		; 18
	ldy $58.b,X		; B4 58
	clv		; B8
	rts		; 60

	inx		; E8
	bmi -88.b		; 30 A8
	bvs  28.b		; 70 1C
	trb $3C.b		; 14 3C
	php		; 08
	sec		; 38
	plp		; 28
	sec		; 38
	jsr $2078.w		; 20 78 20
	bvs  16.b		; 70 10
	bvs  64.b		; 70 40
	bvs   0.b		; 70 00
	tsb $0E61.w		; 0C 61 0E
	adc $20.b,S		; 63 20
	adc $3C.b,S		; 63 3C
	adc $70FF38.l,X		; 7F 38 FF 70
	inc $BEB0.w,X		; FE B0 BE
	jsr $3F3C.w		; 20 3C 3F
	and ($3C.b,X)		; 21 3C
	jsr $021E.w		; 20 1E 02
	cop $02.b		; 02 02
	lsr $46.b		; 46 46
	tsb $4C0C.w		; 0C 0C 4C
	tsb $18D8.w		; 0C D8 18
	beq  64.b		; F0 40
	beq  32.b		; F0 20
	bvs -96.b		; 70 A0
	sei		; 78
	ldy #$F8.b		; A0 F8
	jsr $10FC.w		; 20 FC 10
	lda $001F0C.l,X		; BF 0C 1F 00
	cpx #$A0.b		; E0 A0
	cpx #$C0.b		; E0 C0
	cpx #$40.b		; E0 40
	beq  80.b		; F0 50
	bvs  80.b		; 70 50
	sec		; 38
	plp		; 28
	trb $0010.w		; 1C 10 00
	brk $00.b		; 00 00
	iny		; C8
	plp		; 28
	jmp ($007C.w)		; 6C 7C 00
	jmp ($5C18.w,X)		; 7C 18 5C
	plp		; 28
	jmp $083C28.l		; 5C 28 3C 08
	rol $7008.w,X		; 3E 08 70
	rti		; 40

	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	sec		; 38
	jsr $1038.w		; 20 38 10
	sec		; 38
	bpl  24.b		; 10 18
	bpl  28.b		; 10 1C
	trb $F4.b		; 14 F4
	clc		; 18
	pei ($38.b)		; D4 38
	jsr ($FA00.w,X)		; FC 00 FA
	tsb $083E.w		; 0C 3E 08
	and [$1E.b]		; 27 1E
	ora $000000.l,X		; 1F 00 00 00
	sec		; 38
	jsr $0038.w		; 20 38 00
	clc		; 18
	clc		; 18
	trb $1C10.w		; 1C 10 1C
	trb $1E.b		; 14 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	ora $401F68.l		; 0F 68 1F 40
	and $200F30.l,X		; 3F 30 0F 20
	ora $211E21.l,X		; 1F 21 1E 21
	asl $0F10.w,X		; 1E 10 0F
	asl $160E.w		; 0E 0E 16
	asl $3A.b,X		; 16 3A
	dec A		; 3A
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	php		; 08
	php		; 08
	sta $6A.b,X		; 95 6A
	ldx $5554.w		; AE 54 55
	lda #$A153.w		; A9 53 A1
	xba		; EB
	clc		; 18
	sbc $1C.b		; E5 1C
	xba		; EB
	ora $4247B4.l,X		; 1F B4 47 42
	.db $42, $40		; 42 40
	eor ($14.b,X)		; 41 14
	ora $1F.b,S		; 03 1F
	ora ($07.b,X)		; 01 07
	brk $0B.b		; 00 0B
	php		; 08
	tsb $04.b		; 04 04
	pla		; 68
	jsr $4711.w		; 20 11 47
	ora ($47.b),Y		; 11 47
	rol A		; 2A
	eor $CC63.w		; 4D 63 CC
	ror $70C1.w,X		; 7E C1 70
	ldy $5FEF.w		; AC EF 5F
	sbc $053C1F.l,X		; FF 1F 3C 05
	bit $3005.w,X		; 3C 05 30
	ora ($38.b,X)		; 01 38
	php		; 08
	brk $01.b		; 00 01
	jsr $470F.w		; 20 0F 47
	ora $FD5F4F.l,X		; 1F 4F 5F FD
	.db $82, $C0, $80		; 82 C0 80
	and $0F16C7.l,X		; 3F C7 16 0F
	ora $FB791F.l,X		; 1F 1F 79 FB
	xce		; FB
	xce		; FB
	sbc ($F0.b,X)		; E1 F0
	cop $82.b		; 02 82
	sec		; 38
	lda $06D703.l,X		; BF 03 D7 06
	sbc $08FF0F.l		; EF 0F FF 08
	sbc $80FFE0.l,X		; FF E0 FF 80
	inc $063B.w,X		; FE 3B 06
	lsr $2B.b,X		; 56 2B
	ror $3D11.w		; 6E 11 3D
	cop $1D.b		; 02 1D
	ora $0B.b,S		; 03 0B
	ora $07.b		; 05 07
	php		; 08
	ora ($0E.b,X)		; 01 0E
	ora [$01.b]		; 07 01
	and $0E1F04.l		; 2F 04 1F 0E
	ora $0C0F1D.l,X		; 1F 1D 0F 0C
	ora [$02.b]		; 07 02
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	adc [$EC.b],Y		; 77 EC
	sbc $EF76.w		; ED 76 EF
	pea $D4EF.w		; F4 EF D4
	sbc $DCEFD4.l		; EF D4 EF DC
	cmp $00FFEE.l,X		; DF EE FF 00
	sbc $FE11.w,X		; FD 11 FE
	dey		; 88
	inc $FE0A.w,X		; FE 0A FE
	rol A		; 2A
	inc $FE2A.w,X		; FE 2A FE
	jsl $1E10FE.l		; 22 FE 10 1E
	asl $3007.w,X		; 1E 07 30
	ora [$30.b]		; 07 30
	ora [$30.b]		; 07 30
	asl $30.b		; 06 30
	asl $30.b,X		; 16 30
	asl $30.b,X		; 16 30
	ora $311C31.l,X		; 1F 31 1C 31
	ora $101F10.l,X		; 1F 10 1F 10
	ora $101F10.l,X		; 1F 10 1F 10
	ora $000F00.l		; 0F 00 0F 00
	asl $0F00.w		; 0E 00 0F
	ora ($01.b,X)		; 01 01
	adc [$00.b]		; 67 00
	adc $80.b,S		; 63 80
	cmp $80.b,S		; C3 80
	cmp ($00.b,X)		; C1 00
	cmp ($00.b,X)		; C1 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra -62.b		; 80 C2
	.db $42, $C1		; 42 C1
	eor ($01.b,X)		; 41 01
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $16.b		; 00 16
	and [$04.b],Y		; 37 04
	and [$34.b]		; 27 34
	adc [$14.b]		; 67 14
	eor [$78.b]		; 47 78
	dec $8E28.w		; CE 28 8E
	bvs -100.b		; 70 9C
	bne -104.b		; D0 98
	ora #$1B01.w		; 09 01 1B
	ora $1B.b,S		; 03 1B
	ora $3A.b,S		; 03 3A
	cop $34.b		; 02 34
	tsb $74.b		; 04 74
	tsb $68.b		; 04 68
	php		; 08
	rts		; 60

	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $B0.b		; 00 B0
	brk $D0.b		; 00 D0
	bra -16.b		; 80 F0
	brk $90.b		; 00 90
	php		; 08
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	rti		; 40

	rts		; 60

	ldy #$A0.b		; A0 A0
	bra -96.b		; 80 A0
	rts		; 60

	rts		; 60

	bvs -120.b		; 70 88
	bcc   8.b		; 90 08
	sed		; F8
	sty $A4E0.w		; 8C E0 A4
	pha		; 48
	bit $5C.b		; 24 5C
	ldx $83.b,Y		; B6 83
	and ($0F.b),Y		; 31 0F
	and $8080.w,Y		; 39 80 80
	rts		; 60

	rts		; 60

	bpl -128.b		; 10 80
	tya		; 98
	bra  56.b		; 80 38
	ldy #$28.b		; A0 28
	lda ($1C.b,X)		; A1 1C
	ora ($10.b),Y		; 11 10
	sta ($1E.b),Y		; 91 1E
	ora $1F.b		; 05 1F
	brk $8F.b		; 00 8F
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $04.b		; 00 04
	sta ($0A.b,X)		; 81 0A
	txa		; 8A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$40.b		; A0 40
	ldy #$40.b		; A0 40
	bne  32.b		; D0 20
	bne  32.b		; D0 20
	cpx #$00.b		; E0 00
	ldy #$40.b		; A0 40
	rti		; 40

	ldy #$80.b		; A0 80
	rts		; 60

	rti		; 40

	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	bra -96.b		; 80 A0
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	beq  32.b		; F0 20
	bmi -64.b		; 30 C0
	bpl -64.b		; 10 C0
	clc		; 18
	cpx #$18.b		; E0 18
	beq  24.b		; F0 18
	rts		; 60

	php		; 08
	rts		; 60

	tsb $A0A0.w		; 0C A0 A0
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	bvs  12.b		; 70 0C
	clv		; B8
	sty $84B0.w		; 8C B0 84
	cli		; 58
	dec $5C.b		; C6 5C
	dec $28.b		; C6 28
.ACCU 8
	sep #$2C		; E2 2C
	sbc $1E.b,S		; E3 1E
	adc ($F8.b,S),Y		; 73 F8
	php		; 08
	bvs   0.b		; 70 00
	sei		; 78
	brk $BC.b		; 00 BC
	sty $B8.b		; 84 B8
	bra  92.b		; 80 5C
	rti		; 40

	lsr $2C42.w,X		; 5E 42 2C
	jsr $E228.w		; 20 28 E2
	brk $63.b		; 00 63
	trb $187F.w		; 1C 7F 18
	adc $183F18.l,X		; 7F 18 3F 18
	and $0A3F1C.l,X		; 3F 1C 3F 0A
	tsa		; 3B
	jmp $223E40.l		; 5C 40 3E 22
	jsl $262622.l		; 22 22 26 26
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	cop $02.b		; 02 02
	trb $10.b		; 14 10
	asl $1A13.w		; 0E 13 1A
	and ($0C.b,S),Y		; 33 0C
	and [$14.b]		; 27 14
	rol $18.b		; 26 18
	ror $6C28.w		; 6E 28 6C
	bne  28.b		; D0 1C
	beq  72.b		; F0 48
	ora $0C01.w		; 0D 01 0C
	brk $1A.b		; 00 1A
	cop $18.b		; 02 18
	brk $34.b		; 00 34
	bit $10.b		; 24 10
	brk $28.b		; 00 28
	php		; 08
	rti		; 40

	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	brk $05.b		; 00 05
	cop $05.b		; 02 05
	cop $07.b		; 02 07
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	ora $03.b,S		; 03 03
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	bmi  40.b		; 30 28
	sec		; 38
	ldy $F40C.w		; AC 0C F4
	stz $1C.b		; 64 1C
	trb $381C.w		; 1C 1C 38
	pla		; 68
	bvs   0.b		; 70 00
	bmi  32.b		; 30 20
	sei		; 78
	plp		; 28
	jmp ($5E04.w,X)		; 7C 04 5E
	brk $6E.b		; 00 6E
	php		; 08
	ror $7800.w,X		; 7E 00 78
	brk $F0.b		; 00 F0
	bmi -26.b		; 30 E6
	sec		; 38
	ror $38.b		; 66 38
	ror $3C.b		; 66 3C
	ror $08.b		; 66 08
	.db $62, $08, $62		; 62 08 62
	clc		; 18
	and ($18.b)		; 32 18
	and ($5C.b)		; 32 5C
	mvp $04,$1C		; 44 1C 04
	trb $1804.w		; 1C 04 18
	brk $3C.b		; 00 3C
	jsr $203C.w		; 20 3C 20
	tsb $0C00.w		; 0C 00 0C
	brk $AE.b		; 00 AE
	eor [$6E.b],Y		; 57 6E
	lda [$5E.b],Y		; B7 5E
	lda $6DDE.w		; AD DE 6D
	cmp $BD6E.w,X		; DD 6E BD
	lsr $5ABD.w,X		; 5E BD 5A
	sbc $7F1A.w,X		; FD 1A 7F
	plp		; 28
	sbc $52FF48.l,X		; FF 48 FF 52
	sbc $91FF92.l,X		; FF 92 FF 91
	sbc $A5FFA1.l,X		; FF A1 FF A5
	and $20D825.l,X		; 3F 25 D8 20
	ldy $48.b,X		; B4 48
	pea $EA88.w		; F4 88 EA
	sty $EA.b,X		; 94 EA
	sty $FC.b,X		; 94 FC
	bra  -4.b		; 80 FC
	bra -40.b		; 80 D8
	cpx #$A0.b		; E0 A0
	bra -56.b		; 80 C8
	bra -56.b		; 80 C8
	rti		; 40

	pei ($40.b)		; D4 40
	pei ($40.b)		; D4 40
	bne  80.b		; D0 50
	bne  80.b		; D0 50
	cpx #$00.b		; E0 00
	adc ($01.b)		; 72 01
	ldx $7251.w		; AE 51 72
	and ($9E.b,X)		; 21 9E
	brk $ED.b		; 00 ED
	cpx $E1.b		; E4 E1
	cpx $6E62.w		; EC 62 6E
	ldy #$A6.b		; A0 A6
	sty $508C.w		; 8C 8C 50
	bvc -116.b		; 50 8C
	ldy $6803.w		; AC 03 68
	ora $F0.b,S		; 03 F0
	cmp [$F4.b]		; C7 F4
	eor $F4.b		; 45 F4
	ora $F2.b,S		; 03 F2
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $83.b,S		; 03 83
	asl $87.b		; 06 87
	asl $DD4F.w		; 0E 4F DD
	rol $3EFD.w,X		; 3E FD 3E
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	cop $0F.b		; 02 0F
	sty $3F.b		; 84 3F
	tya		; 98
	rol $3E90.w,X		; 3E 90 3E
	tsb $03.b		; 04 03
	cop $01.b		; 02 01
	cop $00.b		; 02 00
	ora $01.b,S		; 03 01
	ora ($02.b,X)		; 01 02
	cop $06.b		; 02 06
	ora ($04.b,X)		; 01 04
	asl $0C.b		; 06 0C
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	and $FFD1.w		; 2D D1 FF
	php		; 08
	ldx $5F94.w		; AE 94 5F
	.db $42, $AB		; 42 AB
	ldy $4CCB.w		; AC CB 4C
	phk		; 4B
	bit $DCAB.w		; 2C AB DC
	inc A		; 1A
	php		; 08
	tsa		; 3B
	and ($1D.b,S),Y		; 33 1D
	iny		; C8
	.db $42, $E0		; 42 E0
	bra  -8.b		; 80 F8
	pha		; 48
	tda		; 7B
	dey		; 88
	tsa		; 3B
	php		; 08
	tas		; 1B
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	txy		; 9B
	cpx #$7C.b		; E0 7C
	plb		; AB
	adc [$8B.b],Y		; 77 8B
	and $DF33D7.l		; 2F D7 33 DF
	rti		; 40

	lda $000000.l,X		; BF 00 00 00
	brk $40.b		; 00 40
	rti		; 40

	tsa		; 3B
	ora $34.b,S		; 03 34
	bmi   8.b		; 30 08
	brk $0C.b		; 00 0C
	tsb $9A9A.w		; 0C 9A 9A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $06.b		; 00 06
	ora $06.b,S		; 03 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	asl $0C31.w,X		; 1E 31 0C
	and ($22.b,X)		; 21 22
	adc $4C.b,S		; 63 4C
	cmp $509E98.l		; CF 98 9E 50
	asl $3EA0.w,X		; 1E A0 3E
	ldy #$3E.b		; A0 3E
	asl $1E00.w		; 0E 00 1E
	brk $1C.b		; 00 1C
	brk $32.b		; 00 32
	cop $64.b		; 02 64
	tsb $EC.b		; 04 EC
	tsb $18D8.w		; 0C D8 18
	pei ($14.b)		; D4 14
	brk $F0.b		; 00 F0
	bvs -128.b		; 70 80
	sed		; F8
	ldy #$78.b		; A0 78
	rti		; 40

	jsr ($B600.w,X)		; FC 00 B6
	brk $3A.b		; 00 3A
	bne -66.b		; D0 BE
	brk $20.b		; 00 20
	jsr $0080.w		; 20 80 00
	bmi  16.b		; 30 10
	bcc  16.b		; 90 10
	bpl  16.b		; 10 10
	pha		; 48
	cpy $D4D4.w		; CC D4 D4
	bvc -44.b		; 50 D4
	adc $0F371F.l		; 6F 1F 37 0F
	tsb $0003.w		; 0C 03 00
	brk $04.b		; 00 04
	cop $04.b		; 02 04
	brk $05.b		; 00 05
	brk $02.b		; 00 02
	ora ($07.b,X)		; 01 07
	ora $000F00.l,X		; 1F 00 0F 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora ($03.b,X)		; 01 03
	ora $02.b,S		; 03 02
	cop $01.b		; 02 01
	brk $FF.b		; 00 FF
	sbc $3CFBF2.l,X		; FF F2 FB 3C
	asl $E4.b		; 06 E4
	brk $5B.b		; 00 5B
	lda $AF.b,S		; A3 AF
	bvc  95.b		; 50 5F
	ldy #$FE.b		; A0 FE
	ora $ED.b,S		; 03 ED
	sbc $00FF02.l,X		; FF 02 FF 00
	cmp [$00.b]		; C7 00
	tas		; 1B
	lda ($87.b,X)		; A1 87
	cli		; 58
	php		; 08
	ldx $16.b,Y		; B6 16
	and [$34.b],Y		; 37 34
	tsb $03.b		; 04 03
	ora $02.b		; 05 02
	ora #$06.b		; 09 06
	asl A		; 0A
	ora $05.b		; 05 05
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $05.b		; 00 05
	brk $03.b		; 00 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3D.b		; 00 3D
	asl A		; 0A
	dec A		; 3A
	tsb $147A.w		; 0C 7A 14
	pea $B418.w		; F4 18 B4
	pla		; 68
	tay		; A8
	bvs -24.b		; 70 E8
	bmi  -8.b		; 30 F8
	jsr $141E.w		; 20 1E 14
	trb $3C10.w		; 1C 10 3C
	plp		; 28
	sec		; 38
	jsr $1078.w		; 20 78 10
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	bmi  16.b		; 30 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
	brk $74.b		; 00 74
	dey		; 88
	cpx $38.b		; E4 38
	.db $82, $FC, $31		; 82 FC 31
	dec $9669.w		; CE 69 96
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne  16.b		; D0 10
	mvp $84,$44		; 44 44 84
	sty $10.b		; 84 10
	bpl  61.b		; 10 3D
.INDEX 16
	rep #$1F		; C2 1F
	jsr ($7111.w,X)		; FC 11 71
	asl $70.b,X		; 16 70
	ora [$70.b],Y		; 17 70
	ora [$30.b],Y		; 17 30
	ora [$30.b]		; 07 30
	ora $414338.l		; 0F 38 43 41
	rts		; 60

	rts		; 60

	rol $2F20.w		; 2E 20 2F
	jsr $202F.w		; 20 2F 20
	ora $101F00.l		; 0F 00 1F 10
	ora [$10.b],Y		; 17 10
	beq   0.b		; F0 00
	cpx #$0010.w		; E0 10 00
	beq   0.b		; F0 00
	beq -128.b		; F0 80
	beq -128.b		; F0 80
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	bvs -32.b		; 70 E0
	cpx #$0000.w		; E0 00 00
	rts		; 60

	rts		; 60

	ldy #$20A0.w		; A0 A0 20
	jsr $2020.w		; 20 20 20
	ldy #$A020.w		; A0 20 A0
	jsr $A721.w		; 20 21 A7
	rts		; 60

	adc $C1.b,S		; 63 C1
	cpx #$C0D0.w		; E0 D0 C0
	bvc  64.b		; 50 40
	bcs -96.b		; B0 A0
	inx		; E8
	bvc -40.b		; 50 D8
	jsr $F202.w		; 20 02 F2
	eor ($F1.b,X)		; 41 F1
	cpy #$40F0.w		; C0 F0 40
	cpx #$E000.w		; E0 00 E0
	bra -32.b		; 80 E0
	bpl  64.b		; 10 40
	ldy #$5A80.w		; A0 80 5A
	ldy $58E4.w,X		; BC E4 58
	sed		; F8
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bit $1840.w,X		; 3C 40 18
	ldy #$00A0.w		; A0 A0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora #$0C.b		; 09 0C
	ora $1306.w,Y		; 19 06 13
	clc		; 18
	and ($34.b,S),Y		; 33 34
	ora $76305E.l		; 0F 5E 30 76
	rol $1F7F.w		; 2E 7F 1F
	asl $00.b		; 06 00
	ora [$01.b]		; 07 01
	ora $0E01.w		; 0D 01 0E
	cop $02.b		; 02 02
	cop $30.b		; 02 30
	brk $20.b		; 00 20
	ora $3A1F0F.l		; 0F 0F 1F 3A
	jsr ($F03F.w,X)		; FC 3F F0
	sec		; 38
	beq  71.b		; F0 47
	sec		; 38
	adc $00.b,S		; 63 00
	cli		; 58
	sec		; 38
	ora [$07.b]		; 07 07
	sbc $BB81FF.l		; EF FF 81 BB
	brk $70.b		; 00 70
	ora [$77.b]		; 07 77
	brk $3B.b		; 00 3B
	brk $1C.b		; 00 1C
	brk $3F.b		; 00 3F
	ora ($FF.b,X)		; 01 FF
	stx $FF.b		; 86 FF
	asl $03.b		; 06 03
	plp		; 28
	ora [$34.b]		; 07 34
	ora $181F20.l		; 0F 20 1F 18
	ora [$10.b]		; 07 10
	ora $100F10.l		; 0F 10 0F 10
	ora $070101.l		; 0F 01 01 07
	ora [$0B.b]		; 07 0B
	phd		; 0B
	ora $021D.w,X		; 1D 1D 02
	cop $04.b		; 02 04
	tsb $0C.b		; 04 0C
	tsb $0C0C.w		; 0C 0C 0C
	eor ($BE.b,X)		; 41 BE
	lsr A		; 4A
	lda $57.b,X		; B5 57
	tax		; AA
	rol A		; 2A
	pei ($29.b)		; D4 29
	bne 117.b		; D0 75
	sty $0EF2.w		; 8C F2 0E
	sbc $0F.b,X		; F5 0F
	bmi  48.b		; 30 30
	and ($21.b,X)		; 21 21
	jsr $0A20.w		; 20 20 0A
	ora ($0F.b,X)		; 01 0F
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	tsb $02.b		; 04 02
	cop $05.b		; 02 05
	tsb $0802.w		; 0C 02 08
	ora $3409.w,X		; 1D 09 34
	ora ($2A.b),Y		; 11 2A
	ora $74.b,S		; 03 74
	and [$7A.b]		; 27 7A
	trb $F4.b		; 14 F4
	plp		; 28
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	ora $011D01.l		; 0F 01 1D 01
	rol A		; 2A
	cop $34.b		; 02 34
	bit $78.b		; 24 78
	bvc  64.b		; 50 40
	ror $FE98.w,X		; 7E 98 FE
	plp		; 28
	cpx $EC28.w		; EC 28 EC
	brk $CC.b		; 00 CC
	brk $CC.b		; 00 CC
	rts		; 60

	cpy $C860.w		; CC 60 C8
	ldy $442C.w		; AC 2C 44
	mvp $80,$90		; 44 90 80
	bvc  64.b		; 50 40
	sei		; 78
	pha		; 48
	sei		; 78
	pha		; 48
	sec		; 38
	php		; 08
	bmi   0.b		; 30 00
	tyx		; BB
	mvn $38,$F6		; 54 F6 38
	lsr $CC30.w,X		; 5E 30 CC
	bcc -112.b		; 90 90
	cld		; D8
	cpx #$9008.w		; E0 08 90
	sei		; 78
	ldy #$40B0.w		; A0 B0 40
	rti		; 40

	php		; 08
	php		; 08
	brk $80.b		; 00 80
	bmi -112.b		; 30 90
	cpx #$F080.w		; E0 80 F0
	brk $E0.b		; 00 E0
	rts		; 60

	rti		; 40

	brk $58.b		; 00 58
	cmp $1E.b,S		; C3 1E
	cmp $3C.b,S		; C3 3C
	sbc ($2C.b,X)		; E1 2C
	adc ($0C.b,X)		; 61 0C
	adc ($0E.b,X)		; 61 0E
	adc ($1E.b,X)		; 61 1E
	and ($1E.b),Y		; 31 1E
	and ($3E.b),Y		; 31 3E
	cop $7C.b		; 02 7C
	rti		; 40

	lsr $1E40.w,X		; 5E 40 1E
	brk $3E.b		; 00 3E
	jsr $203E.w		; 20 3E 20
	asl $0E00.w		; 0E 00 0E
	brk $60.b		; 00 60
	iny		; C8
	bvs -40.b		; 70 D8
	bmi -104.b		; 30 98
	bmi -104.b		; 30 98
	sed		; F8
	brk $F8.b		; 00 F8
	bmi -72.b		; 30 B8
	bvc -72.b		; 50 B8
	bvc  48.b		; 50 30
	brk $20.b		; 00 20
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	rti		; 40

	bvs  32.b		; 70 20
	bvs  32.b		; 70 20
	clv		; B8
	bvc -72.b		; 50 B8
	bvc -72.b		; 50 B8
	bvc -104.b		; 50 98
	bvs -36.b		; 70 DC
	bmi -36.b		; 30 DC
	bmi -22.b		; 30 EA
	trb $08DE.w		; 1C DE 08
	bvs  32.b		; 70 20
	bvs  32.b		; 70 20
	bvs  32.b		; 70 20
	bvs   0.b		; 70 00
	sec		; 38
	php		; 08
	sec		; 38
	php		; 08
	trb $0C00.w		; 1C 00 0C
	tsb $40.b		; 04 40
	bra -128.b		; 80 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	clc		; 18
	trb $1C.b		; 14 1C
	lsr $06.b,X		; 56 06
	ply		; 7A
	and ($0E.b)		; 32 0E
	asl $1C0E.w		; 0E 0E 1C
	trb $38.b		; 14 38
	brk $18.b		; 00 18
	bpl  60.b		; 10 3C
	trb $3E.b		; 14 3E
	cop $2F.b		; 02 2F
	bpl  55.b		; 10 37
	tsb $3F.b		; 04 3F
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	ldy $2F10.w,X		; BC 10 2F
	trb $001F.w		; 1C 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	php		; 08
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5A.b		; 00 5A
	bit $D4.b,X		; 34 D4
	sec		; 38
	pea $7C18.w		; F4 18 7C
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	php		; 08
	asl $0E00.w,X		; 1E 00 0E
	brk $3C.b		; 00 3C
	php		; 08
	sec		; 38
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	php		; 08
	clc		; 18
	php		; 08
	clc		; 18
	bpl  12.b		; 10 0C
	tsb $0000.w		; 0C 00 00
	ora [$00.b]		; 07 00
	asl A		; 0A
	ora [$0D.b]		; 07 0D
	asl $11.b		; 06 11
	asl $0F10.w		; 0E 10 0F
	clc		; 18
	ora $190E19.l		; 0F 19 0E 19
	asl $0000.w		; 0E 00 00
	ora $05.b		; 05 05
	brk $00.b		; 00 00
	tsb $080C.w		; 0C 0C 08
	php		; 08
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	cpy #$6E00.w		; C0 00 6E
	bra -15.b		; 80 F1
	ldx $2CDF.w		; AE DF 2C
	ldx $CC5F.w,Y		; BE 5F CC
	adc $06FE01.l,X		; 7F 01 FE 06
	sbc $0000.w,Y		; F9 00 00
	brk $00.b		; 00 00
	cpx $D30C.w		; EC 0C D3
	cpy #$0121.w		; C0 21 01
	and ($32.b)		; 32 32
	pla		; 68
	pla		; 68
	cmp ($C1.b,X)		; C1 C1
	ora [$08.b],Y		; 17 08
	ora $04.b,X		; 15 04
	inc A		; 1A
	asl A		; 0A
	ora $1615.w		; 0D 15 16
	and ($0A.b)		; 32 0A
	adc ($15.b,X)		; 61 15
	lsr $29.b		; 46 29
	sta $000909.l		; 8F 09 09 00
	asl $0F02.w		; 0E 02 0F
	tsb $07.b		; 04 07
	asl A		; 0A
	ora $3C.b,S		; 03 3C
	and ($38.b,X)		; 21 38
	brk $74.b		; 00 74
	ora $FB.b		; 05 FB
	mvp $A5,$77		; 44 77 A5
	xce		; FB
	ora ($5F.b)		; 12 5F
	rts		; 60

	eor $5960.w,X		; 5D 60 59
	ror $5D.b		; 66 5D
	cpx #$E0D3.w		; E0 D3 E0
	jmp.w [$E998]		; DC 98 E9
	rti		; 40

	trb $00.b		; 14 00
	brk $C0.b		; 00 C0
	.db $42, $DE		; 42 DE
	lsr $DE.b		; 46 DE
	.db $42, $DE		; 42 DE
	tsb $80DC.w		; 0C DC 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $B2.b		; 00 B2
	brk $D3.b		; 00 D3
	sta ($F1.b,X)		; 81 F1
	php		; 08
	bcc   8.b		; 90 08
	brk $00.b		; 00 00
	bra -127.b		; 80 81
	bra -127.b		; 80 81
	bra -127.b		; 80 81
	rti		; 40

	adc ($A0.b,X)		; 61 A0
	lda ($80.b,X)		; A1 80
	ldy #$6060.w		; A0 60 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$B0C0.w		; C0 C0 B0
	beq -80.b		; F0 B0
	bvs -56.b		; 70 C8
	bra -88.b		; 80 A8
	bvs  16.b		; 70 10
	rts		; 60

	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -16.b		; 80 F0
	bcs  -8.b		; B0 F8
	brk $78.b		; 00 78
	bra -80.b		; 80 B0
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	sta $01003F.l		; 8F 3F 00 01
	ora $152200.l		; 0F 00 22 15
	and $02.b		; 25 02
	and #$06.b		; 29 06
	ora ($0D.b)		; 12 0D
	and $1A.b		; 25 1A
	ora ($7F.b,X)		; 01 7F
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	ora $1A0C.w		; 0D 0C 1A
	clc		; 18
	asl $10.b,X		; 16 10
	ora $1B00.w		; 0D 00 1B
	ora ($F3.b,X)		; 01 F3
	xce		; FB
	rol $B7.b		; 26 B7
	lsr $66.b		; 46 66
	phx		; DA
	inc A		; 1A
	adc $FF85.w,X		; 7D 85 FF
	cop $F6.b		; 02 F6
	ora $5AB5.w,Y		; 19 B5 5A
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	asl $FF.b		; 06 FF
	cop $FF.b		; 02 FF
	php		; 08
	and $B047C4.l,X		; 3F C4 47 B0
	lda ($BD.b)		; B2 BD
	ldy $FE.b		; A4 FE
	ldy $07.b		; A4 07
	and $053C04.l,X		; 3F 04 3C 05
	bit $3E02.w,X		; 3C 02 3E
	cop $3E.b		; 02 3E
	ora ($3F.b),Y		; 11 3F
	ora ($3F.b),Y		; 11 3F
	ora ($7F.b),Y		; 11 7F
	php		; 08
	php		; 08
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	ora $14.b,X		; 15 14
	ora $14.b,X		; 15 14
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	rol A		; 2A
	rol A		; 2A
	sed		; F8
	bra  32.b		; 80 20
	sec		; 38
	beq  24.b		; F0 18
	cpx #$E008.w		; E0 08 E0
	php		; 08
	cpx #$780C.w		; E0 0C 78
	tsb $0470.w		; 0C 70 04
	brk $00.b		; 00 00
	bne  16.b		; D0 10
	cpx #$F000.w		; E0 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	sed		; F8
	brk $81.b		; 00 81
	sbc [$80.b]		; E7 80
	sbc $80.b,S		; E3 80
	cmp $80.b,S		; C3 80
	cmp ($00.b,X)		; C1 00
	cmp ($00.b,X)		; C1 00
	cmp ($00.b,X)		; C1 00
	sta ($00.b,X)		; 81 00
	sta ($42.b,X)		; 81 42
	.db $42, $41		; 42 41
	eor ($01.b,X)		; 41 01
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bpl  96.b		; 10 60
	bpl  96.b		; 10 60
	clc		; 18
	bcc -104.b		; 90 98
	bvs  -8.b		; 70 F8
	bvs  -8.b		; 70 F8
	rts		; 60

	inx		; E8
	rti		; 40

	cpy $00E0.w		; CC E0 00
	cpx #$F000.w		; E0 00 F0
	bpl  96.b		; 10 60
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -112.b		; 80 90
	bra -72.b		; 80 B8
	dey		; 88
	trb $27.b		; 14 27
	bit $67.b,X		; 34 67
	bpl  70.b		; 10 46
	plp		; 28
	lsr $4E28.w		; 4E 28 4E
	bvc -36.b		; 50 DC
	bpl -100.b		; 10 9C
	brk $98.b		; 00 98
	inc A		; 1A
	cop $1A.b		; 02 1A
	cop $3C.b		; 02 3C
	tsb $34.b		; 04 34
	tsb $34.b		; 04 34
	tsb $28.b		; 04 28
	php		; 08
	pla		; 68
	php		; 08
	bvs  16.b		; 70 10
	clc		; 18
	ror $1C.b,X		; 76 1C
	ror $08.b,X		; 76 08
	dec A		; 3A
	rol $3E00.w,X		; 3E 00 3E
	tsb $142E.w		; 0C 2E 14
	rol $2E14.w		; 2E 14 2E
	trb $2C.b		; 14 2C
	bit $28.b		; 24 28
	jsr $1014.w		; 20 14 10
	brk $00.b		; 00 00
	trb $1C10.w		; 1C 10 1C
	php		; 08
	trb $1C08.w		; 1C 08 1C
	php		; 08
	.db $42, $24		; 42 24
	ror A		; 6A
	trb $205C.w		; 1C 5C 20
	jmp ($7410.w,X)		; 7C 10 74
	clc		; 18
	sei		; 78
	bpl -72.b		; 10 B8
	bvc  -8.b		; 50 F8
	jsr $041C.w		; 20 1C 04
	trb $14.b		; 14 14
	jsr $3800.w		; 20 00 38
	plp		; 28
	sec		; 38
	jsr $2030.w		; 20 30 20
	bvs  32.b		; 70 20
	bvs  80.b		; 70 50
	bit $28E6.w		; 2C E6 28
	sep #$08		; E2 08
	.db $62, $08, $62		; 62 08 62
	trb $1472.w		; 1C 72 14
	adc ($14.b)		; 72 14
	and ($0C.b)		; 32 0C
	tsa		; 3B
	cli		; 58
	rti		; 40

	jmp $203C40.l		; 5C 40 3C 20
	bit $2C20.w,X		; 3C 20 2C
	jsr $202C.w		; 20 2C 20
	tsb $1600.w		; 0C 00 16
	ora ($A1.b)		; 12 A1
	asl $3ED1.w,X		; 1E D1 3E
	bra 127.b		; 80 7F
	rts		; 60

	ora $433E41.l,X		; 1F 41 3E 43
	bit $3C43.w,X		; 3C 43 3C
	and ($1E.b,X)		; 21 1E
	trb $2C1C.w		; 1C 1C 2C
	bit $7474.w		; 2C 74 74
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bpl  16.b		; 10 10
	pld		; 2B
	pei ($5D.b)		; D4 5D
	tay		; A8
	plb		; AB
	eor ($A6.b)		; 52 A6
	eor $D7.b,S		; 43 D7
	bmi -54.b		; 30 CA
	and $3ED6.w,Y		; 39 D6 3E
	pla		; 68
	sta $808484.l		; 8F 84 84 80
	.db $82, $28, $06		; 82 28 06
	and $000F02.l,X		; 3F 02 0F 00
	ora [$11.b],Y		; 17 11
	ora #$D108.w		; 09 08 D1
	eor ($51.b,X)		; 41 51
	ora $023BA5.l,X		; 1F A5 3B 02
	sbc ($F3.b),Y		; F1 F3
	brk $62.b		; 00 62
	sbc ($F8.b),Y		; F1 F8
	sbc $FEFC.w,Y		; F9 FC FE
	ror $E8FF.w,X		; 7E FF E8
	phd		; 0B
	bne  19.b		; D0 13
	rts		; 60

	adc ($00.b,X)		; 61 00
	brk $00.b		; 00 00
	sbc $FFF0.w,Y		; F9 F0 FF
	sei		; 78
	sbc $FDFF0E.l,X		; FF 0E FF FD
	.db $82, $C3, $81		; 82 C3 81
	bit $1FC0.w,X		; 3C C0 1F
	ora [$FF.b]		; 07 FF
	sbc $778F8F.l,X		; FF 8F 8F 77
	adc [$FB.b],Y		; 77 FB
	xce		; FB
	cop $82.b		; 02 82
	bit $00BD.w,X		; 3C BD 00
	stp		; DB
	brk $E7.b		; 00 E7
	asl $0EFF.w		; 0E FF 0E
	sbc $62FF16.l,X		; FF 16 FF 62
	sbc $988470.l,X		; FF 70 84 98
	tsb $E8.b		; 04 E8
	cop $57.b		; 02 57
	and ($07.b),Y		; 31 07
	and ($0A.b),Y		; 31 0A
	and $1A07.w,X		; 3D 07 1A
	ora $808800.l		; 0F 00 88 80
	pla		; 68
	adc ($1C.b,X)		; 61 1C
	eor ($2C.b,X)		; 41 2C
	lda ($1D.b,X)		; A1 1D
	sta ($14.b),Y		; 91 14
	sta ($0A.b),Y		; 91 0A
	dey		; 88
	ora $85.b		; 05 85
	bvs  96.b		; 70 60
	bvc -32.b		; 50 E0
	bne -32.b		; D0 E0
	bne -32.b		; D0 E0
	bcc -32.b		; 90 E0
	ldy #$20C0.w		; A0 C0 20
	cpy #$00C0.w		; C0 C0 00
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	and $1A.b		; 25 1A
	phk		; 4B
	and $4B.b,X		; 35 4B
	and $37.b,X		; 35 37
	asl A		; 0A
	asl $0B.b,X		; 16 0B
	ora $000300.l		; 0F 00 03 00
	brk $03.b		; 00 03
	tas		; 1B
	ora ($37.b,X)		; 01 37
	cop $37.b		; 02 37
	cop $0F.b		; 02 0F
	ora $0F.b		; 05 0F
	tsb $02.b		; 04 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $77.b		; 00 77
	clv		; B8
	adc [$BA.b],Y		; 77 BA
	adc [$BA.b],Y		; 77 BA
	adc [$FA.b],Y		; 77 FA
	inc $7B.b,X		; F6 7B
	sbc [$6A.b],Y		; F7 6A
	sbc $00FF63.l,X		; FF 63 FF 00
	inc $FE46.w,X		; FE 46 FE
	mvp $44,$FE		; 44 FE 44
	inc $FF04.w,X		; FE 04 FF
	sty $FF.b		; 84 FF
	sta $F7.b,X		; 95 F7
	sty $07.b,X		; 94 07
	ora [$08.b]		; 07 08
	adc $246F08.l		; 6F 08 6F 24
	adc [$24.b]		; 67 24
	adc [$24.b]		; 67 24
	adc [$24.b]		; 67 24
	adc [$04.b]		; 67 04
	eor [$08.b]		; 47 08
	lsr $2535.w		; 4E 35 25
	and $25.b,X		; 35 25
	inc A		; 1A
	cop $1A.b		; 02 1A
	cop $1A.b		; 02 1A
	cop $1A.b		; 02 1A
	cop $3A.b		; 02 3A
	cop $34.b		; 02 34
	tsb $B0.b		; 04 B0
	sty $B0.b		; 84 B0
	sty $78.b		; 84 78
	dec $5C.b		; C6 5C
	dec $58.b		; C6 58
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
.ACCU 8
	sep #$2C		; E2 2C
	sbc $0E.b,S		; E3 0E
	adc $78.b,S		; 63 78
	brk $78.b		; 00 78
	brk $BC.b		; 00 BC
	sty $B8.b		; 84 B8
	bra -68.b		; 80 BC
	bra  92.b		; 80 5C
	rti		; 40

	lsr $3C42.w,X		; 5E 42 3C
	jsr $60D0.w		; 20 D0 60
	beq  64.b		; F0 40
	beq  32.b		; F0 20
	jmp ($3C00.w,X)		; 7C 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	bra  96.b		; 80 60
	jsr $4060.w		; 20 60 40
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora $00.b,S		; 03 00
	ora $03.b		; 05 03
	ora [$02.b]		; 07 02
	ora [$01.b]		; 07 01
	asl $01.b		; 06 01
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $D000.w		; 20 00 D0
	jsr $E090.w		; 20 90 E0
	php		; 08
	beq -60.b		; F0 C4
	sec		; 38
	ldy $58.b		; A4 58
	cpx $0050.w		; EC 50 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	cld		; D8
	cpx #$C078.w		; E0 78 C0
	bmi  64.b		; 30 40
	rti		; 40

	rts		; 60

	bra  32.b		; 80 20
	rti		; 40

	cpx #$C080.w		; E0 80 C0
	brk $80.b		; 00 80
	jsr $0020.w		; 20 20 00
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	cpy #$8000.w		; C0 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $A0.b		; 00 A0
	rti		; 40

	ldy #$5040.w		; A0 40 50
	ldy #$A050.w		; A0 50 A0
	cpx #$A000.w		; E0 00 A0
	rti		; 40

	cpy #$8000.w		; C0 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	bpl 124.b		; 10 7C
	bpl 124.b		; 10 7C
	php		; 08
	jmp $285E28.l		; 5C 28 5E 28
	ror $7F08.w,X		; 7E 08 7F
	tsb $6F.b		; 04 6F
	ora $38.b,S		; 03 38
	plp		; 28
	sec		; 38
	plp		; 28
	sec		; 38
	bmi  56.b		; 30 38
	bpl  60.b		; 10 3C
	trb $1C.b		; 14 1C
	trb $0E.b		; 14 0E
	asl A		; 0A
	ora [$04.b]		; 07 04
	sei		; 78
	ldy #$20F8.w		; A0 F8 20
	jsr ($BF10.w,X)		; FC 10 BF
	tsb $001F.w		; 0C 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  80.b		; F0 50
	bvs  80.b		; 70 50
	sec		; 38
	plp		; 28
	trb $0010.w		; 1C 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	php		; 08
	ror $6E08.w,X		; 7E 08 6E
	trb $7D.b		; 14 7D
	asl $6F.b		; 06 6F
	tsb $0F.b		; 04 0F
	cop $07.b		; 02 07
	brk $03.b		; 00 03
	brk $1C.b		; 00 1C
	trb $1C.b		; 14 1C
	trb $1C.b		; 14 1C
	php		; 08
	asl $0608.w		; 0E 08 06
	cop $06.b		; 02 06
	tsb $03.b		; 04 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $0C04.w		; 0C 04 0C
	phd		; 0B
	tas		; 1B
	cop $13.b		; 02 13
	inc A		; 1A
	and ($0C.b,S),Y		; 33 0C
	and [$03.b]		; 27 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	tsb $03.b		; 04 03
	brk $04.b		; 00 04
	brk $0D.b		; 00 0D
	ora ($0D.b,X)		; 01 0D
	ora ($1B.b,X)		; 01 1B
	ora $3F.b,S		; 03 3F
	jsr ($E121.w,X)		; FC 21 E1
	rol $2EE0.w		; 2E E0 2E
	rts		; 60

	rol $2F60.w		; 2E 60 2F
	adc ($2F.b,X)		; 61 2F
	adc ($2F.b,X)		; 61 2F
	adc ($40.b,X)		; 61 40
	rti		; 40

	lsr $5F40.w,X		; 5E 40 5F
	rti		; 40

	ora $001F00.l,X		; 1F 00 1F 00
	asl $1E00.w,X		; 1E 00 1E
	brk $1E.b		; 00 1E
	brk $E0.b		; 00 E0
	clc		; 18
	jsr $50F8.w		; 20 F8 50
	cld		; D8
	bvc -40.b		; 50 D8
	bvc -40.b		; 50 D8
	bvc -40.b		; 50 D8
	rts		; 60

	cpy $CC60.w		; CC 60 CC
	bpl  16.b		; 10 10
	bvc  80.b		; 50 50
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $38.b		; 00 38
	php		; 08
	sec		; 38
	php		; 08
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	beq   0.b		; F0 00
	txy		; 9B
	cpx #$AB7C.w		; E0 7C AB
	adc [$8B.b],Y		; 77 8B
	and $DF33D7.l		; 2F D7 33 DF
	rti		; 40

	lda $00BE41.l,X		; BF 41 BE 00
	brk $40.b		; 00 40
	rti		; 40

	tsa		; 3B
	ora $34.b,S		; 03 34
	bmi   8.b		; 30 08
	brk $0C.b		; 00 0C
	tsb $9A9A.w		; 0C 9A 9A
	bmi  48.b		; 30 30
	ora $02.b		; 05 02
	ora $01.b		; 05 01
	asl $02.b		; 06 02
	ora $05.b,S		; 03 05
	ora $0C.b		; 05 0C
	cop $08.b		; 02 08
	ora $0619.w		; 0D 19 06
	ora ($02.b,S),Y		; 13 02
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora ($02.b,X)		; 01 02
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	brk $0D.b		; 00 0D
	ora ($FE.b,X)		; 01 FE
	ora ($5D.b),Y		; 11 5D
	and #$BE.b		; 29 BE
	sty $5F.b		; 84 5F
	bvc -97.b		; 50 9F
	bcc -98.b		; 90 9E
	eor ($5F.b),Y		; 51 5F
	bcs 124.b		; B0 7C
	beq 119.b		; F0 77
	ror $3A.b		; 66 3A
	bcc -123.b		; 90 85
	cpy #$F000.w		; C0 00 F0
	bcc  -9.b		; 90 F7
	ora ($77.b),Y		; 11 77
	bpl  55.b		; 10 37
	ora $77.b,S		; 03 77
	adc $06181F.l		; 6F 1F 18 06
	ora ($00.b,X)		; 01 00
	php		; 08
	ora $09.b		; 05 09
	brk $0A.b		; 00 0A
	ora ($05.b,X)		; 01 05
	cop $09.b		; 02 09
	asl $00.b		; 06 00
	ora $000700.l,X		; 1F 00 07 00
	asl $03.b		; 06 03
	ora $06.b,S		; 03 06
	asl $05.b		; 06 05
	tsb $02.b		; 04 02
	brk $06.b		; 00 06
	brk $E4.b		; 00 E4
	inc $79.b,X		; F6 79
	ora $01C9.w		; 0D C9 01
	ldx $46.b,Y		; B6 46
	eor $40BFA1.l,X		; 5F A1 BF 40
	sbc $5D06.w,X		; FD 06 5D
	ldx $FF04.w		; AE 04 FF
	ora ($8F.b,X)		; 01 8F
	brk $37.b		; 00 37
	.db $42, $0F		; 42 0F
	lda ($11.b),Y		; B1 11
	jmp ($6F2C.w)		; 6C 2C 6F
	adc #$FF.b		; 69 FF
	eor ($1D.b),Y		; 51 1D
	stz $7CBA.w,X		; 9E BA 7C
	plx		; FA
	jmp ($78B4.w,X)		; 7C B4 78
	iny		; C8
	bcs -16.b		; B0 F0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	ror $7C30.w,X		; 7E 30 7C
	jsr $007C.w		; 20 7C 00
	sei		; 78
	bra  48.b		; 80 30
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
	brk $74.b		; 00 74
	dey		; 88
	cpx $38.b		; E4 38
	.db $82, $FC, $31		; 82 FC 31
	dec $9669.w		; CE 69 96
	tyx		; BB
	mvn $00,$00		; 54 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne  16.b		; D0 10
	mvp $84,$44		; 44 44 84
	sty $10.b		; 84 10
	bpl  64.b		; 10 40
	rti		; 40

	inc $38.b,X		; F6 38
	lsr $CC30.w,X		; 5E 30 CC
	bcc -112.b		; 90 90
	cld		; D8
	cpx #$9008.w		; E0 08 90
	sei		; 78
	ldy #$00B0.w		; A0 B0 00
	cpx #$0808.w		; E0 08 08
	brk $80.b		; 00 80
	bmi -112.b		; 30 90
	cpx #$F080.w		; E0 80 F0
	brk $E0.b		; 00 E0
	rts		; 60

	rti		; 40

	brk $40.b		; 00 40
	rti		; 40

	cpx #$F000.w		; E0 00 F0
	rti		; 40

	beq -128.b		; F0 80
	sed		; F8
	brk $6C.b		; 00 6C
	brk $74.b		; 00 74
	ldy #$007C.w		; A0 7C 00
	cpx $02.b		; E4 02
	brk $00.b		; 00 00
	rts		; 60

	jsr $2020.w		; 20 20 20
	jsr $9020.w		; 20 20 90
	tya		; 98
	tay		; A8
	tay		; A8
	ldy #$18A8.w		; A0 A8 18
	clc		; 18
	jmp $42E4A2.l		; 5C A2 E4 42
	bit $DA01.w,X		; 3C 01 DA
	cmp #$C2.b		; C9 C2
	cld		; D8
	cmp $DC.b		; C5 DC
	eor ($4C.b,X)		; 41 4C
	.db $42, $4F		; 42 4F
	ldy #$18A0.w		; A0 A0 18
	cli		; 58
	asl $D0.b		; 06 D0
	asl $E0.b		; 06 E0
	sta $E88BE8.l		; 8F E8 8B E8
	ora [$E4.b]		; 07 E4
	ora $E4.b		; 05 E4
	cmp ($C6.b,X)		; C1 C6
	sta $C0.b,S		; 83 C0
	lda ($80.b,X)		; A1 80
	ldy #$6080.w		; A0 80 60
	rti		; 40

	bne -96.b		; D0 A0
	bcs  64.b		; B0 40
	bcs  64.b		; B0 40
	.db $82, $E2, $81		; 82 E2 81
	sbc ($80.b,X)		; E1 80
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	jsr $4080.w		; 20 80 40
	brk $40.b		; 00 40
	brk $68.b		; 00 68
	bcc -24.b		; 90 E8
	bpl -44.b		; 10 D4
	plp		; 28
	pei ($28.b)		; D4 28
	sed		; F8
	brk $F8.b		; 00 F8
	brk $B0.b		; 00 B0
	cpy #$10E0.w		; C0 E0 10
	bcc   0.b		; 90 00
	bcc -128.b		; 90 80
	tay		; A8
	bra -88.b		; 80 A8
	bra -96.b		; 80 A0
	ldy #$A0A0.w		; A0 A0 A0
	cpy #$C000.w		; C0 00 C0
	cpy #$032B.w		; C0 2B 03
	and $0719.w,X		; 3D 19 07
	ora [$07.b]		; 07 07
	asl $1C0A.w		; 0E 0A 1C
	inc A		; 1A
	trb $3834.w		; 1C 34 38
	stz $78.b,X		; 74 78
	ora ($17.b,X)		; 01 17
	php		; 08
	tas		; 1B
	cop $1F.b		; 02 1F
	brk $1E.b		; 00 1E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	bpl 120.b		; 10 78
	jsr $2CF8.w		; 20 F8 2C
	adc ($0C.b,X)		; 61 0C
	adc ($0C.b,X)		; 61 0C
	adc ($0E.b,X)		; 61 0E
	adc $0E.b,S		; 63 0E
	adc $0E.b,S		; 63 0E
	adc $0C.b,S		; 63 0C
	adc $0C.b,S		; 63 0C
	adc $1F.b,S		; 63 1F
	ora ($3F.b,X)		; 01 3F
	and ($3E.b,X)		; 21 3E
	jsr $203C.w		; 20 3C 20
	bit $3C20.w,X		; 3C 20 3C
	jsr $223E.w		; 20 3E 22
	rol $6822.w,X		; 3E 22 68
	cpy $8C38.w		; CC 38 8C
	sec		; 38
	sty $84B0.w		; 8C B0 84
	bcc -124.b		; 90 84
	bcc -122.b		; 90 86
	bvc -58.b		; 50 C6
	jmp $0030C6.l		; 5C C6 30 00
	bvs   0.b		; 70 00
	beq -128.b		; F0 80
	sei		; 78
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	tsb $BC.b		; 04 BC
	sty $B8.b		; 84 B8
	bra  40.b		; 80 28
	ora [$34.b]		; 07 34
	ora $181F20.l		; 0F 20 1F 18
	ora [$10.b]		; 07 10
	ora $100F10.l		; 0F 10 0F 10
	ora $070708.l		; 0F 08 07 07
	ora [$0B.b]		; 07 0B
	phd		; 0B
	ora $021D.w,X		; 1D 1D 02
	cop $04.b		; 02 04
	tsb $0C.b		; 04 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $04.b		; 04 04
	lsr A		; 4A
	lda $57.b,X		; B5 57
	tax		; AA
	rol A		; 2A
	pei ($29.b)		; D4 29
	bne 117.b		; D0 75
	sty $0EF2.w		; 8C F2 0E
	sbc $0F.b,X		; F5 0F
	phy		; 5A
	lda $21.b,S		; A3 21
	and ($20.b,X)		; 21 20
	jsr $010A.w		; 20 0A 01
	ora $000300.l		; 0F 00 03 00
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	bit $10.b,X		; 34 10
	clc		; 18
	and ($0C.b,S),Y		; 33 0C
	and [$30.b]		; 27 30
	ror $68.b		; 66 68
	asl $60BC.w,X		; 1E BC 60
	cpx $FF5C.w		; EC 5C FF
	and $0E3FDF.l,X		; 3F DF 3F 0E
	cop $1A.b		; 02 1A
	cop $1C.b		; 02 1C
	tsb $04.b		; 04 04
	tsb $60.b		; 04 60
	brk $40.b		; 00 40
	ora $0F3F1F.l,X		; 1F 1F 3F 0F
	and $70E07F.l,X		; 3F 7F E0 70
	cpx #$708F.w		; E0 8F 70
	cmp [$01.b]		; C7 01
	lda ($71.b),Y		; B1 71
	asl $FF0E.w		; 0E 0E FF
	sbc $00FFFE.l,X		; FF FE FF 00
	cpx #$EF0F.w		; E0 0F EF
	brk $76.b		; 00 76
	brk $39.b		; 00 39
	ora ($7F.b,X)		; 01 7F
	cop $FF.b		; 02 FF
	tsb $DAFF.w		; 0C FF DA
	sbc $12050A.l,X		; FF 0A 05 12
	ora $0A15.w		; 0D 15 0A
	phd		; 0B
	tsb $05.b		; 04 05
	cop $03.b		; 02 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($05.b,X)		; 01 05
	brk $0D.b		; 00 0D
	brk $0B.b		; 00 0B
	ora ($07.b,X)		; 01 07
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $DD.b		; 00 DD
	ror $5BBD.w		; 6E BD 5B
	lda $BBDB.w,X		; BD DB BB
	cmp $BD7B.w,X		; DD 7B BD
	tda		; 7B
	lda $FB.b,X		; B5 FB
	and $7B.b,X		; 35 7B
	sty $FF.b		; 84 FF
	sta ($FF.b),Y		; 91 FF
	ldy $FF.b		; A4 FF
	bit $FF.b		; 24 FF
	jsl $FF42FF.l		; 22 FF 42 FF
	lsr A		; 4A
	adc $83874A.l,X		; 7F 4A 87 83
	lsr $3E24.w,X		; 5E 24 3E
	tsb $3E.b		; 04 3E
	tsb $36.b		; 04 36
	tsb $0C37.w		; 0C 37 0C
	and [$0C.b],Y		; 37 0C
	dec A		; 3A
	ora [$37.b]		; 07 37
	cop $2C.b		; 02 2C
	php		; 08
	tsb $0C08.w		; 0C 08 0C
	php		; 08
	tsb $0E00.w		; 0C 00 0E
	cop $0E.b		; 02 0E
	cop $07.b		; 02 07
	brk $03.b		; 00 03
	ora ($0D.b,X)		; 01 0D
	ora $1105.w,Y		; 19 05 11
	ora $11.b		; 05 11
	tsb $11.b		; 04 11
	asl $0E33.w		; 0E 33 0E
	and ($0A.b,S),Y		; 33 0A
	and ($18.b,S),Y		; 33 18
	and ($06.b,S),Y		; 33 06
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	ora ($1D.b,X)		; 01 1D
	ora ($1C.b),Y		; 11 1C
	bpl  28.b		; 10 1C
	bpl  14.b		; 10 0E
	cop $24.b		; 02 24
	sbc [$28.b]		; E7 28
	inc $FC70.w		; EE 70 FC
	rts		; 60

	sed		; F8
	rti		; 40

	beq   0.b		; F0 00
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	txs		; 9A
	.db $82, $54, $44		; 82 54 44
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $4020.w		; 20 20 40
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $2830.w		; 20 30 28
	sec		; 38
	ldy $F40C.w		; AC 0C F4
	stz $1C.b		; 64 1C
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	jsr $2878.w		; 20 78 28
	jmp ($5E04.w,X)		; 7C 04 5E
	jsr $086E.w		; 20 6E 08
	ror $C070.w,X		; 7E 70 C0
	bvs -64.b		; 70 C0
	tay		; A8
	bvs 120.b		; 70 78
	jsr $385E.w		; 20 5E 38
	rol $0000.w,X		; 3E 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	bvs   0.b		; 70 00
	bmi  16.b		; 30 10
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	and ($12.b),Y		; 31 12
	and ($1C.b,S),Y		; 33 1C
	and $387F1C.l,X		; 3F 1C 7F 38
	adc $085F18.l,X		; 7F 18 5F 08
	cmp $0ECF09.l		; CF 09 CF 0E
	brk $0C.b		; 00 0C
	brk $02.b		; 00 02
	cop $22.b		; 02 22
	jsl $260606.l		; 22 06 06 26
	asl $75.b		; 06 75
	eor $74.b		; 45 74
	mvp $63,$26		; 44 26 63
	rol $73.b,X		; 36 73
	asl $73.b,X		; 16 73
	ora ($73.b)		; 12 73
	bpl -13.b		; 10 F3
	bit $F0FE.w,X		; 3C FE F0
	inc $BCA0.w,X		; FE A0 BC
	trb $0C00.w		; 1C 00 0C
	brk $2C.b		; 00 2C
	jsr $202C.w		; 20 2C 20
	rol $C022.w		; 2E 22 C0
	cpy #$0C0C.w		; C0 0C 0C
	cli		; 58
	clc		; 18
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	asl $01.b		; 06 01
	tsb $1D03.w		; 0C 03 1D
	cop $1D.b		; 02 1D
	cop $1D.b		; 02 1D
	cop $05.b		; 02 05
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $C0.b		; 00 C0
	tya		; 98
	cpx #$60B0.w		; E0 B0 60
	bmi  32.b		; 30 20
	bmi -16.b		; 30 F0
	brk $F0.b		; 00 F0
	rts		; 60

	beq  64.b		; F0 40
	bne  96.b		; D0 60
	bvs  16.b		; 70 10
	rti		; 40

	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	ldy #$80E0.w		; A0 E0 80
	tsb $03.b		; 04 03
	ora [$00.b]		; 07 00
	asl A		; 0A
	ora ($0A.b)		; 12 0A
	.db $62, $52, $C2		; 62 52 C2
	adc $920A.w		; 6D 0A 92
	ora $7C43.w,X		; 1D 43 7C
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cop $07.b		; 02 07
	inc A		; 1A
	ora [$38.b]		; 07 38
	ora [$F0.b]		; 07 F0
	cop $EC.b		; 02 EC
	ora $30B0.w		; 0D B0 30
	sbc $1B.b		; E5 1B
	ldy $DF4A.w,X		; BC 4A DF
	ldy $AE.b		; A4 AE
	sty $3B.b,X		; 94 3B
	ldx $37.b		; A6 37
	clv		; B8
	and [$78.b],Y		; 37 78
	ror $F9.b,X		; 76 F9
	clc		; 18
	brk $7B.b		; 00 7B
	and ($BD.b)		; 32 BD
	sta $C81D.w,Y		; 99 1D C8
	asl $E0.b		; 06 E0
	brk $F0.b		; 00 F0
	jsr $21F7.w		; 20 F7 21
	sbc [$85.b],Y		; F7 85
	txa		; 8A
	txs		; 9A
	cpy #$F8FF.w		; C0 FF F8
	sbc $BDFA.w,Y		; F9 FA BD
	dec A		; 3A
	stz $6B69.w,X		; 9E 69 6B
	trb $1D.b		; 14 1D
	cop $82.b		; 02 82
	dec $84.b		; C6 84
	sbc $F8.b		; E5 F8
	sed		; F8
	dec A		; 3A
	jsr ($783A.w,X)		; FC 3A 78
	ora ($68.b,X)		; 01 68
	ora $11.b		; 05 11
	ora $01.b,S		; 03 01
	and $CF0F3F.l,X		; 3F 3F 0F CF
	inc $37.b,X		; F6 37
	ply		; 7A
	txa		; 8A
	lda $B745.w,X		; BD 45 B7
	ror A		; 6A
	adc [$A8.b],Y		; 77 A8
	ror $A9.b,X		; 76 A9
	asl $06FF.w		; 0E FF 06
	sbc $883F02.l,X		; FF 02 3F 88
	ora $F8B7F4.l		; 0F F4 B7 F8
	sta ($FC.b)		; 92 FC
	mvn $54,$FD		; 54 FD 54
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	rol $03.b		; 26 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $44.b		; 00 44
	sed		; F8
	sta $AB7CE0.l,X		; 9F E0 7C AB
	adc [$8B.b],Y		; 77 8B
	and $DF33D7.l		; 2F D7 33 DF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$00A0.w		; A0 A0 00
	brk $3B.b		; 00 3B
	ora $34.b,S		; 03 34
	bmi   8.b		; 30 08
	brk $8C.b		; 00 8C
	sty $0602.w		; 8C 02 06
	ora $0C.b		; 05 0C
	ora $18.b,S		; 03 18
	and $11.b		; 25 11
	ror A		; 6A
	and $D4.b,S		; 23 D4
	ora [$F9.b]		; 07 F9
	lda $01DFF1.l,X		; BF F1 DF 01
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	php		; 08
	asl $1D10.w,X		; 1E 10 1D
	ora ($3A.b,X)		; 01 3A
	cop $84.b		; 02 84
	tsb $CA.b		; 04 CA
	asl A		; 0A
	bne  30.b		; D0 1E
	ldy #$403C.w		; A0 3C 40
	sei		; 78
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	rti		; 40

	beq  64.b		; F0 40
	bvs  64.b		; 70 40
	rts		; 60

	cpx $D80C.w		; EC 0C D8
	clc		; 18
	bcs  48.b		; B0 30
	cpy #$A0C0.w		; C0 C0 A0
	ldy #$2020.w		; A0 20 20
	ldy #$8020.w		; A0 20 80
	brk $0F.b		; 00 0F
	adc $057808.l,X		; 7F 08 78 05
	jmp ($3C05.w,X)		; 7C 05 3C
	cop $3E.b		; 02 3E
	cop $1E.b		; 02 1E
	ora ($1F.b,X)		; 01 1F
	brk $0F.b		; 00 0F
	bmi  48.b		; 30 30
	ora [$10.b],Y		; 17 10
	tas		; 1B
	clc		; 18
	phd		; 0B
	php		; 08
	ora $14.b,X		; 15 14
	ora $04.b		; 05 04
	asl A		; 0A
	asl A		; 0A
	ora $05.b		; 05 05
	jsr $40C0.w		; 20 C0 40
	rts		; 60

	ldy #$C030.w		; A0 30 C0
	bpl -16.b		; 10 F0
	clc		; 18
	cpx #$7808.w		; E0 08 78
	tsb $84B0.w		; 0C B0 84
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $0F.b		; 00 0F
	ora [$0B.b]		; 07 0B
	ora [$0B.b]		; 07 0B
	ora [$07.b]		; 07 07
	ora $05.b,S		; 03 05
	ora $03.b,S		; 03 03
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	ora [$03.b]		; 07 03
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $68.b		; 00 68
	cpx $F880.w		; EC 80 F8
	beq   0.b		; F0 00
	sei		; 78
	jsr $2078.w		; 20 78 20
	jsr ($6C00.w,X)		; FC 00 6C
	brk $74.b		; 00 74
	ldy #$8090.w		; A0 90 80
	bpl  16.b		; 10 10
	ldy #$B0A0.w		; A0 A0 B0
	bpl -80.b		; 10 B0
	bpl  32.b		; 10 20
	jsr $9890.w		; 20 90 98
	tay		; A8
	tay		; A8
	jmp ($6400.w,X)		; 7C 00 64
	bcc  92.b		; 90 5C
	ldy #$00C8.w		; A0 C8 00
	bvs   0.b		; 70 00
	cpx #$B080.w		; E0 80 B0
	bra -120.b		; 80 88
	bcs -96.b		; B0 A0
	tay		; A8
	clc		; 18
	clc		; 18
	ldy #$30A0.w		; A0 A0 30
	bmi   0.b		; 30 00
	ldy #$8000.w		; A0 00 80
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	bmi 120.b		; 30 78
	bit $9F7E.w,X		; 3C 7E 9F
	and $8707FB.l,X		; 3F FB 07 87
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	inc $FF1C.w,X		; FE 1C FF
	ora $7F.b,S		; 03 7F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cpy #$A000.w		; C0 00 A0
	rti		; 40

	ldy #$A040.w		; A0 40 A0
	rti		; 40

	bvc -96.b		; 50 A0
	bne  32.b		; D0 20
	bcs  64.b		; B0 40
	rti		; 40

	bra   0.b		; 80 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	sed		; F8
	iny		; C8
	iny		; C8
	iny		; C8
	inx		; E8
	inx		; E8
	bmi  56.b		; 30 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	beq  -4.b		; F0 FC
	cpy #$40FC.w		; C0 FC 40
	jsr ($3400.w,X)		; FC 00 34
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	ora ($F0.b,X)		; 01 F0
	sta ($40.b,X)		; 81 40
	ora ($00.b,X)		; 01 00
	ora ($80.b,X)		; 01 80
	ora [$80.b]		; 07 80
	sta $84.b,S		; 83 84
	sta $84.b,S		; 83 84
	sta $8A.b		; 85 8A
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $C2.b		; 00 C2
	brk $C2.b		; 00 C2
	cop $C6.b		; 02 C6
	sbc [$F8.b]		; E7 F8
	bvs -55.b		; 70 C9
	jsr $104F.w		; 20 4F 10
	bra 127.b		; 80 7F
	cpx #$F37F.w		; E0 7F F3
	adc $FF7FFF.l,X		; 7F FF 7F FF
	rts		; 60

	sbc [$07.b],Y		; F7 07
	cmp [$18.b]		; C7 18
	cld		; D8
	ora $EC00EF.l		; 0F EF 00 EC
	jsr $3FF3.w		; 20 F3 3F
	sbc $17FF3F.l,X		; FF 3F FF 17
	php		; 08
	rol A		; 2A
	ora $2E.b,X		; 15 2E
	ora ($2E.b),Y		; 11 2E
	ora ($16.b),Y		; 11 16
	ora #$0F.b		; 09 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora $0B.b,S		; 03 0B
	ora $17.b,S		; 03 17
	cop $17.b		; 02 17
	asl $17.b		; 06 17
	asl $0F.b		; 06 0F
	asl $01.b		; 06 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($77.b,X)		; 01 77
	inx		; E8
	sbc $59EF51.l		; EF 51 EF 59
	sbc $DDEB59.l		; EF 59 EB DD
	sbc $3CEFF8.l		; EF F8 EF 3C
	adc $15FD80.l,X		; 7F 80 FD 15
	sbc $FDAC.w,X		; FD AC FD
	ldy $FD.b		; A4 FD
	ldy $FD.b		; A4 FD
	jsr $05FD.w		; 20 FD 05
	ror $8042.w,X		; 7E 42 80
	bra  60.b		; 80 3C
	ora [$20.b]		; 07 20
	ora $100F10.l,X		; 1F 10 0F 10
	ora $211F20.l		; 0F 20 1F 21
	asl $1E21.w,X		; 1E 21 1E
	and $1C.b,S		; 23 1C
	ora $03.b,S		; 03 03
	ora $02020F.l		; 0F 0F 02 02
	asl $06.b		; 06 06
	tsb $180C.w		; 0C 0C 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	rti		; 40

	lda $4ABE41.l,X		; BF 41 BE 4A
	lda $57.b,X		; B5 57
	tax		; AA
	nop		; EA
	trb $E9.b		; 14 E9
	bpl -43.b		; 10 D5
	tsb $0EF2.w		; 0C F2 0E
	inc A		; 1A
	inc A		; 1A
	bmi  48.b		; 30 30
	and ($21.b,X)		; 21 21
	jsr $0A20.w		; 20 20 0A
	ora ($0F.b,X)		; 01 0F
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	tsb $D0.b		; 04 D0
	rol $8662.w		; 2E 62 86
	cmp $06.b,S		; C3 06
	sta ($0C.b,X)		; 81 0C
	asl $0C.b		; 06 0C
	asl $0C.b		; 06 0C
	asl $0C.b		; 06 0C
	ora #$05.b		; 09 05
	sbc $C2.b,S		; E3 C2
	sta ($00.b,X)		; 81 00
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	asl $04.b		; 06 04
	rti		; 40

	rts		; 60

	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	cpy #$0040.w		; C0 40 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $010700.l		; 0F 00 07 01
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	asl $05.b		; 06 05
	ora $02.b		; 05 02
	cop $02.b		; 02 02
	cop $01.b		; 02 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $BC.b		; 02 BC
	stx $5C.b		; 86 5C
	dec $18.b		; C6 18
	cmp $BC.b,S		; C3 BC
	sbc $0E.b,S		; E3 0E
	sbc $2E.b,S		; E3 2E
	sbc $80.b,S		; E3 80
	sta $D8.b,S		; 83 D8
	asl $0078.w,X		; 1E 78 00
	clv		; B8
	bra 126.b		; 80 7E
	.db $42, $1E		; 42 1E
	cop $BC.b		; 02 BC
	ldy #$405C.w		; A0 5C 40
	ror $E402.w,X		; 7E 02 E4
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	brk $74.b		; 00 74
	dey		; 88
	cpx $38.b		; E4 38
	.db $82, $FC, $31		; 82 FC 31
	dec $0000.w		; CE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne  16.b		; D0 10
	mvp $84,$44		; 44 44 84
	sty $69.b		; 84 69
	stx $BB.b,Y		; 96 BB
	mvn $38,$F6		; 54 F6 38
	lsr $CC30.w,X		; 5E 30 CC
	bcc -112.b		; 90 90
	cld		; D8
	cpx #$9008.w		; E0 08 90
	sei		; 78
	bpl  16.b		; 10 10
	rti		; 40

	rti		; 40

	php		; 08
	php		; 08
	brk $80.b		; 00 80
	bmi -112.b		; 30 90
	cpx #$F080.w		; E0 80 F0
	brk $E0.b		; 00 E0
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	ora $051E02.l		; 0F 02 1E 05
	and $0E.b,X		; 35 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$05.b]		; 07 05
	ora $000E0A.l		; 0F 0A 0E 00
	and $0C1A08.l,X		; 3F 08 1A 0C
	rol A		; 2A
	trb $182E.w		; 1C 2E 18
	bit $2C10.w		; 2C 10 2C
	bpl  20.b		; 10 14
	php		; 08
	tsb $0C00.w		; 0C 00 0C
	tsb $0C.b		; 04 0C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	php		; 08
	clc		; 18
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	bpl -76.b		; 10 B4
	cli		; 58
	ldy $58.b,X		; B4 58
	clv		; B8
	rts		; 60

	sed		; F8
	jsr $30E8.w		; 20 E8 30
	inx		; E8
	bmi   0.b		; 30 00
	brk $38.b		; 00 38
	plp		; 28
	sei		; 78
	jsr $2078.w		; 20 78 20
	bvs  16.b		; 70 10
	bvs  80.b		; 70 50
	bvs  64.b		; 70 40
	bvs  64.b		; 70 40
	brk $01.b		; 00 01
	ora $03.b		; 05 03
	asl $1E02.w		; 0E 02 1E
	cop $1F.b		; 02 1F
	ora $1F.b		; 05 1F
	brk $1A.b		; 00 1A
	ora [$17.b]		; 07 17
	ora $000000.l		; 0F 00 00 00
	brk $01.b		; 00 01
	brk $09.b		; 00 09
	php		; 08
	tsb $00.b		; 04 00
	php		; 08
	php		; 08
	brk $07.b		; 00 07
	cop $0F.b		; 02 0F
	pei ($38.b)		; D4 38
	pea $FC18.w		; F4 18 FC
	bpl  -4.b		; 10 FC
	php		; 08
	rol $1E18.w		; 2E 18 1E
	tsb $17.b		; 04 17
	php		; 08
	ora $003800.l		; 0F 00 38 00
	clc		; 18
	brk $18.b		; 00 18
	php		; 08
	clc		; 18
	bpl  24.b		; 10 18
	brk $0C.b		; 00 0C
	php		; 08
	asl $0006.w		; 0E 06 00
	brk $01.b		; 00 01
	inc $FE01.w,X		; FE 01 FE
	sta ($7E.b,X)		; 81 7E
	rti		; 40

	and $413F40.l,X		; 3F 40 3F 41
	rol $7C83.w,X		; 3E 83 7C
	sta $7A.b		; 85 7A
	sed		; F8
	sed		; F8
	cld		; D8
	cld		; D8
	jmp ($246C.w)		; 6C 6C 24
	bit $34.b		; 24 34
	bit $30.b,X		; 34 30
	bmi  32.b		; 30 20
	jsr $2022.w		; 20 22 20
	adc [$11.b]		; 67 11
	eor $30.b,S		; 43 30
	dey		; 88
	sec		; 38
	sta ($3E.b)		; 92 3E
	jsr ($5007.w,X)		; FC 07 50
	eor [$A0.b],Y		; 57 A0
	ldy $AB.b		; A4 AB
	tay		; A8
	and $101F11.l,X		; 3F 11 1F 10
	ora [$10.b],Y		; 17 10
	ora $000C.w		; 0D 0C 00
	brk $50.b		; 00 50
	sed		; F8
	lda [$FC.b]		; A7 FC
	lda [$F0.b]		; A7 F0
	adc ($06.b)		; 72 06
	clv		; B8
	stx $BD.b		; 86 BD
	sta [$BD.b]		; 87 BD
	sta [$78.b]		; 87 78
	cmp $58.b,S		; C3 58
	cmp $58.b,S		; C3 58
	cmp $1C.b,S		; C3 1C
	cmp $F9.b,S		; C3 F9
	brk $7D.b		; 00 7D
	tsb $78.b		; 04 78
	brk $78.b		; 00 78
	brk $BD.b		; 00 BD
	sta ($BD.b,X)		; 81 BD
	sta ($BC.b,X)		; 81 BC
	bra 124.b		; 80 7C
	rti		; 40

	cpy #$F018.w		; C0 18 F0
	clc		; 18
	rts		; 60

	tsb $0C78.w		; 0C 78 0C
	bcs -122.b		; B0 86
	ldy $5886.w,X		; BC 86 58
.INDEX 16
	rep #$5C		; C2 5C
	cmp $F0.b,S		; C3 F0
	bpl -32.b		; 10 E0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	jmp ($7804.w,X)		; 7C 04 78
	brk $BC.b		; 00 BC
	bra -66.b		; 80 BE
	.db $82, $00, $00		; 82 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	jsl $033401.l		; 22 01 34 03
	plp		; 28
	ora [$20.b],Y		; 17 20
	ora $000F10.l,X		; 1F 10 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($13.b,X)		; 01 13
	ora ($1F.b,S),Y		; 13 1F
	ora $F80707.l,X		; 1F 07 07 F8
	brk $34.b		; 00 34
	sed		; F8
	sty $F8.b		; 84 F8
	and $AB7CC0.l,X		; 3F C0 7C AB
	adc ($8D.b,S),Y		; 73 8D
	rol $CB.b,X		; 36 CB
	and #$DF.b		; 29 DF
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	sei		; 78
	sei		; 78
	bra -128.b		; 80 80
	lda $3681.w,Y		; B9 81 36
	bit $0D.b,X		; 34 0D
	ora #$06.b		; 09 06
	asl $0B.b		; 06 0B
	ora [$0B.b]		; 07 0B
	ora [$27.b]		; 07 27
	eor $3D.b,S		; 43 3D
	eor $25.b,S		; 43 25
	phk		; 4B
	and $4B.b		; 25 4B
	trb $28.b		; 14 28
	ora $0023.w,X		; 1D 23 00
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	and $19.b,S		; 23 19
	tsa		; 3B
	clc		; 18
	tsa		; 3B
	php		; 08
	tas		; 1B
	brk $13.b		; 00 13
	sbc $FCCC.w,Y		; F9 CC FC
	jsr ($FCFC.w,X)		; FC FC FC
	jsr ($FCFC.w,X)		; FC FC FC
	jsr ($FCFC.w,X)		; FC FC FC
	tsb $F10E.w		; 0C 0E F1
	sbc ($00.b)		; F2 00
	dec $FEF8.w		; CE F8 FE
	sed		; F8
	inc $FEF8.w,X		; FE F8 FE
	sed		; F8
	inc $FE08.w,X		; FE 08 FE
	brk $FF.b		; 00 FF
	bmi  -2.b		; 30 FE
	sta $7FBF1F.l		; 8F 1F BF 7F
	jsr ($B27E.w,X)		; FC 7E B2
	adc $24CB.w,Y		; 79 CB 24
	cpx $F010.w		; EC 10 F0
	brk $E0.b		; 00 E0
	brk $07.b		; 00 07
	adc $307F3C.l,X		; 7F 3C 7F 30
	adc $807D00.l,X		; 7F 00 7D 80
	ldy $00.b,X		; B4 00
	bpl -96.b		; 10 A0
	ldy #$0000.w		; A0 00 00
	brk $20.b		; 00 20
	cpy #$0060.w		; C0 60 00
	cpy #$C000.w		; C0 00 C0
	ora [$80.b]		; 07 80
	ora $151FF5.l		; 0F F5 1F 15
	sbc $A06000.l		; EF 00 60 A0
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	sbc $00.b		; E5 00
	sbc $05.b,X		; F5 05
	adc [$78.b],Y		; 77 78
	ora [$F8.b]		; 07 F8
	tsa		; 3B
	dec $38.b,X		; D6 38
	ora [$14.b]		; 07 14
	plp		; 28
	pea $3C00.w		; F4 00 3C
	brk $D4.b		; 00 D4
	jsr $0A8A.w		; 20 8A 0A
	bra -128.b		; 80 80
	bvc  80.b		; 50 50
	bne -48.b		; D0 D0
	inx		; E8
	inx		; E8
	php		; 08
	php		; 08
	cpy #$08C8.w		; C0 C8 08
	tay		; A8
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $43BF43.l,X		; BF 43 BF 43
	sbc $013F03.l,X		; FF 03 3F 01
	ora $04.b,S		; 03 04
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	adc [$34.b],Y		; 77 34
	adc [$34.b],Y		; 77 34
	and [$34.b],Y		; 37 34
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	tsb $0C3F.w		; 0C 3F 0C
	and $0A3F0C.l,X		; 3F 0C 3F 0A
	tsa		; 3B
	ora #$39.b		; 09 39
	phd		; 0B
	and $180A.w,Y		; 39 0A 18
	cop $18.b		; 02 18
	ora ($13.b,S),Y		; 13 13
	ora ($13.b,S),Y		; 13 13
	ora ($13.b,S),Y		; 13 13
	ora $11.b,X		; 15 11
	asl $10.b,X		; 16 10
	asl $10.b,X		; 16 10
	ora [$00.b]		; 07 00
	ora $8C6008.l		; 0F 08 60 8C
	bvc -100.b		; 50 9C
	jsr $20B8.w		; 20 B8 20
	clv		; B8
	rti		; 40

	beq  64.b		; F0 40
	beq  64.b		; F0 40
	cpx #$E000.w		; E0 00 E0
	sei		; 78
	php		; 08
	pla		; 68
	php		; 08
	bvc  16.b		; 50 10
	bvc  16.b		; 50 10
	jsr $2020.w		; 20 20 20
	jsr $0000.w		; 20 00 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	bit $643C.w,X		; 3C 3C 64
	jmp ($F838.w,X)		; 7C 38 F8
	sec		; 38
	sed		; F8
	bit $7080.w,X		; 3C 80 70
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	bit $7E20.w,X		; 3C 20 7E
	jsr $38FE.w		; 20 FE 38
	jsr ($FC08.w,X)		; FC 08 FC
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	sta $7A.b		; 85 7A
	adc $1A.b		; 65 1A
	ora [$08.b],Y		; 17 08
	ora $020F00.l		; 0F 00 0F 02
	asl $03.b		; 06 03
	ora [$02.b]		; 07 02
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	tay		; A8
	tay		; A8
	rol $AF.b		; 26 AF
	dey		; 88
	eor [$77.b],Y		; 57 77
	stx $FE7F.w		; 8E 7F FE
	sbc $7CBE7C.l,X		; FF 7C BE 7C
	eor $00.b,S		; 43 00
	and [$F0.b]		; 27 F0
	ora #$F9.b		; 09 F9
	brk $70.b		; 00 70
	brk $8E.b		; 00 8E
	brk $FE.b		; 00 FE
	sec		; 38
	jmp ($7D19.w,X)		; 7C 19 7D
	brk $3D.b		; 00 3D
	bit $2EE3.w,X		; 3C E3 2E
	sbc $0C.b,S		; E3 0C
	adc ($1C.b,X)		; 61 1C
	adc ($1C.b),Y		; 71 1C
	adc ($0C.b),Y		; 71 0C
	and ($0C.b),Y		; 31 0C
	and ($02.b),Y		; 31 02
	and ($5E.b,S),Y		; 33 5E
	.db $42, $5C		; 42 5C
	rti		; 40

	rol $2E20.w,X		; 3E 20 2E
	jsr $202E.w		; 20 2E 20
	ora $111F11.l,X		; 1F 11 1F 11
	ora $2E11.w,X		; 1D 11 2E
	sbc $2E.b,S		; E3 2E
	sbc $3E.b,S		; E3 3E
	adc ($10.b,S),Y		; 73 10
	adc ($1C.b,S),Y		; 73 1C
	adc $48FE38.l,X		; 7F 38 FE 48
	dec $8C20.w		; CE 20 8C
	jmp $405C40.l		; 5C 40 5C 40
	tsb $2E00.w		; 0C 00 2E
	jsl $442222.l		; 22 22 22 44
	mvp $04,$34		; 44 34 04
	sei		; 78
	php		; 08
	trb $0F.b		; 14 0F
	bit $5C1F.w		; 2C 1F 5C
	and $A07FB4.l,X		; 3F B4 7F A0
	adc $407F80.l,X		; 7F 80 7F 40
	and $0A0F30.l,X		; 3F 30 0F 0A
	asl A		; 0A
	bpl  16.b		; 10 10
	jsr $0820.w		; 20 20 08
	php		; 08
	asl $3F1E.w,X		; 1E 1E 3F
	and $0D1B1B.l,X		; 3F 1B 1B 0D
	ora $DF21.w		; 0D 21 DF
	rts		; 60

	sta $6B9B64.l,X		; 9F 64 9B 6B
	sty $7D.b,X		; 94 7D
	sta $2C.b,S		; 83 2C
.ACCU 16
	rep #$28		; C2 28
	dec $31.b		; C6 31
	cmp [$1C.b]		; C7 1C
	trb $1919.w		; 1C 19 19
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora [$02.b]		; 07 02
	ora $02.b,S		; 03 02
	.db $82, $82, $3F		; 82 82 3F
	brk $04.b		; 00 04
	pld		; 2B
	eor $0A.b,X		; 55 0A
	lda $5A06.w,Y		; B9 06 5A
	ora $2B.b		; 05 2B
	tsb $1B.b		; 04 1B
	tsb $13.b		; 04 13
	tsb $0000.w		; 0C 00 00
	tas		; 1B
	clc		; 18
	pld		; 2B
	and $7147.w,Y		; 39 47 71
	and [$32.b]		; 27 32
	asl $12.b,X		; 16 12
	asl $02.b		; 06 02
	asl $FC02.w		; 0E 02 FC
	tsb $42BE.w		; 0C BE 42
	sbc $26FD01.l,X		; FF 01 FD 26
	sbc $6E36.w		; ED 36 6E
	lda $6E.b,X		; B5 6E
	lda [$6E.b],Y		; B7 6E
	lda [$08.b],Y		; B7 08
	ora $6C2360.l		; 0F 60 23 6C
	adc $486E.w		; 6D 6E 48
	adc $4AFF49.l,X		; 7F 49 FF 4A
	sbc $48FF48.l,X		; FF 48 FF 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora [$0F.b]		; 07 0F
	ror $F9FF.w,X		; 7E FF F9
	jsr ($F0E7.w,X)		; FC E7 F0
	sty $C8.b,X		; 94 C8
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	cop $FF.b		; 02 FF
	sec		; 38
	sbc $80FEE0.l,X		; FF E0 FE 80
	sed		; F8
	brk $E8.b		; 00 E8
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
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
	clc		; 18
	cmp [$38.b]		; C7 38
	inc $38.b		; E6 38
	ror $28.b		; 66 28
	ror $0C.b		; 66 0C
	ror $9C.b		; 66 9C
	ror $D8.b,X		; 76 D8
	and ($50.b)		; 32 50
	lda ($7A.b)		; B2 7A
	.db $42, $58		; 42 58
	rti		; 40

	trb $1C04.w		; 1C 04 1C
	tsb $38.b		; 04 38
	jsr $2028.w		; 20 28 20
	tsb $8C00.w		; 0C 00 8C
	brk $42.b		; 00 42
	bcs 127.b		; B0 7F
	bra  -3.b		; 80 FD
	asl $16ED.w		; 0E ED 16
	cmp $BD26.w,X		; DD 26 BD
	lsr $5F.b		; 46 5F
	bit $37.b		; 24 37
	asl A		; 0A
	jmp.w [$C250]		; DC 50 C2
	.db $42, $5E		; 42 5E
	bvc  94.b		; 50 5E
	pha		; 48
	ror $6E48.w		; 6E 48 6E
	plp		; 28
	rol $0E0A.w		; 2E 0A 0E
	tsb $16.b		; 04 16
	phd		; 0B
	asl A		; 0A
	ora [$0B.b]		; 07 0B
	asl $0F.b		; 06 0F
	ora ($0D.b,X)		; 01 0D
	ora $03.b,S		; 03 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	tsb $07.b		; 04 07
	brk $07.b		; 00 07
	ora ($03.b,X)		; 01 03
	cop $03.b		; 02 03
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	rts		; 60

	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$E040.w		; C0 40 E0
	bra   0.b		; 80 00
	brk $BB.b		; 00 BB
	adc $BF5FBB.l,X		; 7F BB 5F BF
	jmp.w [$98FF]		; DC FF 98
	jsr ($F903.w,X)		; FC 03 F9
	sbc $B88684.l,X		; FF 84 86 B8
	.db $82, $FF, $80		; 82 FF 80
	sbc $21FDA0.l,X		; FF A0 FD 21
	jmp.w [$0144]		; DC 44 01
	ora ($04.b,X)		; 01 04
	tsb $79.b		; 04 79
	brk $7D.b		; 00 7D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C4.b		; 00 C4
	brk $3A.b		; 00 3A
	cpy $00.b		; C4 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -15.b		; 80 F1
	stz $FEE1.w,X		; 9E E1 FE
	cpy $1CF3.w		; CC F3 1C
	sbc $6E.b,S		; E3 6E
	sta $B3.b,X		; 95 B3
	jmp $8C53.w		; 4C 53 8C
	dec A		; 3A
	jmp ($0868.w)		; 6C 68 08
	ora ($12.b)		; 12 12
	jsl $818122.l		; 22 22 81 81
	bpl  16.b		; 10 10
	mvp $88,$44		; 44 44 88
	tay		; A8
	bra  32.b		; 80 20
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
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra -96.b		; 80 A0
	rti		; 40

	bne  32.b		; D0 20
	inx		; E8
	bcc -12.b		; 90 F4
	dey		; 88
	nop		; EA
	pei ($FA.b)		; D4 FA
	mvp $00,$00		; 44 00 00
	brk $80.b		; 00 80
	rti		; 40

	brk $A0.b		; 00 A0
	bra -80.b		; 80 B0
	jsr $50D8.w		; 20 D8 50
	jmp.w [$EC08]		; DC 08 EC
	tay		; A8
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	rts		; 60

	brk $E0.b		; 00 E0
	cpy #$20F0.w		; C0 F0 20
	bmi -64.b		; 30 C0
	clc		; 18
	beq  24.b		; F0 18
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	cpy #$20C0.w		; C0 C0 20
	jsr $00C0.w		; 20 C0 00
	beq  16.b		; F0 10
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	ora ($04.b,X)		; 01 04
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $1E.b		; 00 1E
	ora ($79.b,X)		; 01 79
	ora [$FE.b]		; 07 FE
	and ($DD.b)		; 32 DD
	lda #$8B7E.w		; A9 7E 8B
	sbc $000030.l,X		; FF 30 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $7118.w		; 1C 18 71
	rti		; 40

	nop		; EA
	rti		; 40

	sta $7C11.w,Y		; 99 11 7C
	jmp $0000.w		; 4C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	ora $0C.b		; 05 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	tsb $1C.b		; 04 1C
	ora ($70.b,S),Y		; 13 70
	bvc -64.b		; 50 C0
	adc $1F980F.l		; 6F 0F 98 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $003F00.l		; 0F 00 3F 00
	beq   0.b		; F0 00
	sbc [$07.b]		; E7 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	ora $1C.b		; 05 1C
	phd		; 0B
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$10.b],Y		; 17 10
	brk $00.b		; 00 00
	ora ($06.b,X)		; 01 06
	ora [$1E.b]		; 07 1E
	ora ($70.b,S),Y		; 13 70
	eor ($C1.b)		; 52 C1
	adc [$03.b],Y		; 77 03
	sbc [$03.b],Y		; F7 03
	sbc $000008.l		; EF 08 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $3D01.w		; 0D 01 3D
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $F3.b		; 00 F3
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
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
	brk $C0.b		; 00 C0
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $E2FE01.l,X		; FF 01 FE E2
	sbc $F805.w,Y		; F9 05 F8
	ora $DC.b		; 05 DC
	jsl $B0906F.l		; 22 6F 90 B0
	rti		; 40

	cpy #$0000.w		; C0 00 00
	ora ($F8.b,X)		; 01 F8
	tas		; 1B
	cpy #$30C7.w		; C0 C7 30
	and [$E0.b],Y		; 37 E0
	cmp $90.b,S		; C3 90
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $7B.b		; 00 7B
	ror $EF.b,X		; 76 EF
	sbc [$F7.b],Y		; F7 F7
	sbc $5EEFD7.l		; EF D7 EF 5E
	inc $DD2D.w		; EE 2D DD
	sbc #$BB1D.w		; E9 1D BB
	phy		; 5A
	jsr $42F6.w		; 20 F6 42
	sbc [$C3.b],Y		; F7 C3
	sbc $04EF06.l		; EF 06 EF 04
	sbc $00DF00.l		; EF 00 DF 00
	ora $C05E00.l,X		; 1F 00 5E C0
	brk $20.b		; 00 20
	cpy #$E01C.w		; C0 1C E0
	cop $FC.b		; 02 FC
	and ($FE.b,X)		; 21 FE
	bmi  -1.b		; 30 FF
	and ($FF.b)		; 32 FF
	cmp ($3F.b)		; D2 3F
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	pla		; 68
	pla		; 68
	mvn $46,$54		; 54 54 46
	lsr $44.b		; 46 44
	mvp $05,$05		; 44 05 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	clv		; B8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0D.b		; 00 0D
	asl $06.b,X		; 16 06
	ora #$0739.w		; 09 39 07
	asl $09.b,X		; 16 09
	tsb $0303.w		; 0C 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $94.b		; 00 94
	sei		; 78
	tsb $F8.b		; 04 F8
	iny		; C8
	bvs  48.b		; 70 30
	cpy #$8040.w		; C0 40 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plp		; 28
	plp		; 28
	bvs 112.b		; 70 70
	ldy #$C020.w		; A0 20 C0
	cpy #$8080.w		; C0 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $1800.w		; 0C 00 18
	brk $18.b		; 00 18
	brk $17.b		; 00 17
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  15.b		; 10 0F
	bpl -113.b		; 10 8F
	rol $E2C1.w		; 2E C1 E2
	ora ($41.b,X)		; 01 41
	brk $F1.b		; 00 F1
	brk $CF.b		; 00 CF
	bcs -26.b		; B0 E6
	eor [$0F.b]		; 47 0F
	ora $800707.l		; 0F 07 07 80
	bra   0.b		; 80 00
	cpy #$8080.w		; C0 80 80
	brk $00.b		; 00 00
	bcs  48.b		; B0 30
	cli		; 58
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	ora ($1F.b,X)		; 01 1F
	asl $3C.b		; 06 3C
	phd		; 0B
	adc $F636.w,Y		; 79 36 F6
	pla		; 68
	sed		; F8
	rti		; 40

	rts		; 60

	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $0F.b		; 02 0F
	ora #$141F.w		; 09 1F 14
	rol $7808.w,X		; 3E 08 78
	bpl  96.b		; 10 60
	jsr $0000.w		; 20 00 00
	inc $C8.b,X		; F6 C8
	iny		; C8
	bmi  48.b		; 30 30
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	bmi -16.b		; 30 F0
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $30.b		; 06 30
	and #$4661.w		; 29 61 46
	cmp [$98.b]		; C7 98
	sta $987F60.l,X		; 9F 60 7F 98
	sbc [$30.b]		; E7 30
	cmp $0F8000.l		; CF 00 80 0F
	brk $1E.b		; 00 1E
	brk $39.b		; 00 39
	ora ($66.b,X)		; 01 66
	asl $99.b		; 06 99
	ora $6767.w,Y		; 19 67 67
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	rts		; 60

	adc $00FD80.l,X		; 7F 80 FD 00
	sbc $C0F030.l,X		; FF 30 F0 C0
	cpy #$FF7F.w		; C0 7F FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	stz $601C.w		; 9C 1C 60
	rts		; 60

	sta ($91.b),Y		; 91 91
	eor $003F40.l		; 4F 40 3F 00
	bra -128.b		; 80 80
	and $00003F.l,X		; 3F 3F 00 00
	and $C05F60.l		; 2F 60 5F C0
	bit $F300.w,X		; 3C 00 F3
	ora $0C.b,S		; 03 0C
	ora $02FFF0.l		; 0F F0 FF 02
	inc $F80B.w,X		; FE 0B F8
	ora $003F00.l,X		; 1F 00 3F 00
	sbc $00FC00.l,X		; FF 00 FC 00
	sbc ($03.b,S),Y		; F3 03
	tsb $F10C.w		; 0C 0C F1
	beq   7.b		; F0 07
	brk $CF.b		; 00 CF
	php		; 08
	and [$3B.b],Y		; 37 3B
	cmp [$FA.b]		; C7 FA
	ora $F03FF0.l		; 0F F0 3F F0
	lda $0AFD88.l		; AF 88 FD 0A
	dex		; CA
	ora $00F0.w		; 0D F0 00
	wai		; CB
	php		; 08
	tsa		; 3B
	and $C6C6.w,Y		; 39 C6 C6
	ora ($01.b,X)		; 01 01
	adc ($03.b,S),Y		; 73 03
	sbc ($00.b)		; F2 00
	sbc $04.b,X		; F5 04
	sbc $6E9F38.l,X		; FF 38 9F 6E
	sbc $DD.b,S		; E3 DD
	jsr ($7FFB.w,X)		; FC FB 7F
	sta $F87887.l,X		; 9F 87 78 F8
	sbc [$FF.b],Y		; F7 FF
	bit $447C.w,X		; 3C 7C 44
	sbc $22FF91.l,X		; FF 91 FF 22
	sbc $60FF04.l,X		; FF 04 FF 60
	sbc $08FF87.l,X		; FF 87 FF 08
	inc $38C2.w,X		; FE C2 38
	brk $C8.b		; 00 C8
	ora [$EE.b]		; 07 EE
	bcc  -7.b		; 90 F9
	tsb $38.b		; 04 38
	dec $EF.b,X		; D6 EF
	plp		; 28
	cmp $B9BF5E.l,X		; DF 5E BF B9
	cpy #$30F0.w		; C0 F0 30
	bmi -47.b		; 30 D1
	eor [$E6.b],Y		; 57 E6
	sbc [$C3.b]		; E7 C3
	ora ($A0.b,S),Y		; 13 A0
	clv		; B8
	pha		; 48
	ror $F891.w,X		; 7E 91 F8
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($3A.b,S),Y		; D3 3A
	ror $B0.b,X		; 76 B0
	sbc ($30.b,S),Y		; F3 30
	cmp $B1.b,X		; D5 B1
	sbc ($70.b,S),Y		; F3 70
	asl $0E.b		; 06 0E
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $3E.b		; 00 3E
	ora ($B9.b),Y		; 11 B9
	trb $38.b		; 14 38
	stx $38.b,Y		; 96 38
	and [$78.b],Y		; 37 78
	ora #$0378.w		; 09 78 03
	ora $00.b,S		; 03 00
	brk $C2.b		; 00 C2
	sta $D82F61.l,X		; 9F 61 2F D8
	eor [$B8.b],Y		; 57 B8
	lda [$F8.b]		; A7 F8
	ora [$F8.b],Y		; 17 F8
	sta [$CE.b]		; 87 CE
	and ($FF.b),Y		; 31 FF
	brk $19.b		; 00 19
	and $3AAA.w,Y		; 39 AA 3A
	eor ($71.b),Y		; 51 71
	ora $E5.b		; 05 E5
	ora ($02.b)		; 12 02
	sbc ($71.b),Y		; F1 71
	beq -64.b		; F0 C0
	brk $00.b		; 00 00
	jmp $50B0.w		; 4C B0 50
	ldy #$A0D0.w		; A0 D0 A0
	php		; 08
	beq   4.b		; F0 04
	sed		; F8
	cop $FC.b		; 02 FC
	ora $FE.b,S		; 03 FE
	sta ($7F.b,X)		; 81 7F
	bpl  16.b		; 10 10
	ldy #$20A0.w		; A0 A0 20
	jsr $9090.w		; 20 90 90
	cld		; D8
	cld		; D8
	rts		; 60

	rts		; 60

	bcc -112.b		; 90 90
	cop $02.b		; 02 02
	inc $E980.w		; EE 80 E9
	clc		; 18
	.db $62, $9E, $61		; 62 9E 61
	lsr $8CDF.w,X		; 5E DF 8C
	sta $0C9F03.l		; 8F 03 9F 0C
	jmp ($9F93.w,X)		; 7C 93 9F
	brk $57.b		; 00 57
	bvc  13.b		; 50 0D
	sty $D040.w		; 8C 40 D0
	ldy #$73AC.w		; A0 AC 73
	bvs 111.b		; 70 6F
	adc $9F.b,S		; 63 9F
	tsb $7017.w		; 0C 17 70
	jmp $8383C0.l		; 5C C0 83 83
	tsb $300F.w		; 0C 0F 30
	and $00FCC0.l,X		; 3F C0 FC 00
	beq   0.b		; F0 00
	bra  47.b		; 80 2F
	jsr $003F.w		; 20 3F 00
	jmp ($F300.w,X)		; 7C 00 F3
	ora $CC.b,S		; 03 CC
	tsb $3030.w		; 0C 30 30
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	and ($3C.b,S),Y		; 33 3C
	cpy #$00FC.w		; C0 FC 00
	beq   0.b		; F0 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy $300C.w		; CC 0C 30
	bmi -64.b		; 30 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $07F4C0.l,X		; FF C0 F4 07
	adc $FA23.w,X		; 7D 23 FA
	asl $1669.w,X		; 1E 69 16
	sbc ($AE.b),Y		; F1 AE
	cmp $F054.w,Y		; D9 54 F0
	ora $C0.b,S		; 03 C0
	rti		; 40

	inc A		; 1A
	cop $A0.b		; 02 A0
	bra  57.b		; 80 39
	jsr $0A9B.w		; 20 9B 0A
	pld		; 2B
	jsl $017003.l		; 22 03 70 01
	ora ($49.b,X)		; 01 49
	ldx $08.b,Y		; B6 08
	cmp [$D3.b]		; C7 D3
	sbc $FB6E33.l		; EF 33 6E FB
	dec $E1.b		; C6 E1
	ora $33BD4F.l,X		; 1F 4F BD 33
	eor $3030.w		; 4D 30 30
	lda ($83.b,S),Y		; B3 83
	bit $24.b		; 24 24
	sta $850C.w		; 8D 0C 85
	cpy $46.b		; C4 46
	lsr $12.b		; 46 12
	bcc -58.b		; 90 C6
	mvp $1F,$E1		; 44 E1 1F
	sbc ($0F.b),Y		; F1 0F
	sei		; 78
	sta [$B9.b]		; 87 B9
	dec $BA.b,X		; D6 BA
	mvp $C0,$BC		; 44 BC C0
	ldy #$A0C0.w		; A0 C0 A0
	cpy #$0202.w		; C0 02 02
	asl $06.b		; 06 06
	lda [$B7.b],Y		; B7 B7
	asl $06.b,X		; 16 06
	bne  64.b		; D0 40
	rti		; 40

	rti		; 40

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
	ora [$00.b]		; 07 00
	clc		; 18
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$AD.b]		; 07 AD
	adc $BD6BBD.l,X		; 7F BD 6B BD
	phk		; 4B
	cmp $8F32.w		; CD 32 8F
	jmp $3393.w		; 4C 93 33
	ldy $7E7C.w,X		; BC 7C 7E
	sta $6F80FF.l,X		; 9F FF 80 6F
	tsb $4F.b		; 04 4F
	tsb $03.b		; 04 03
	and ($04.b),Y		; 31 04
	jmp ($7F03.w,X)		; 7C 03 7F
	bpl 127.b		; 10 7F
	tsb $1F9F.w		; 0C 9F 1F
	sec		; 38
	and $062F12.l		; 2F 12 2F 06
	and $072812.l,X		; 3F 12 28 07
	and ($1F.b),Y		; 31 1F
	php		; 08
	asl $100F.w,X		; 1E 0F 10
	brk $00.b		; 00 00
	asl $14.b,X		; 16 14
	asl $10.b		; 06 10
	asl $14.b		; 06 14
	brk $10.b		; 00 10
	asl $16.b		; 06 16
	ora [$06.b]		; 07 06
	ora $01E200.l		; 0F 00 E2 01
	jsr ($FF03.w,X)		; FC 03 FF
	ora $79.b,X		; 15 79
	ora ($FF.b)		; 12 FF
	lsr A		; 4A
	and $9EE9.w,X		; 3D E9 9E
	cpx $5F.b		; E4 5F
	adc $1C.b		; 65 1C
	trb $21A1.w		; 1C A1 21
	bcs  36.b		; B0 24
	bcs  38.b		; B0 26
	clc		; 18
	ora ($99.b)		; 12 99
	sta ($4C.b,S),Y		; 93 4C
	eor #$29AC.w		; 49 AC 29
	eor $5D22.w,X		; 5D 22 5D
	jsl $2E102F.l		; 22 2F 10 2E
	ora ($1F.b),Y		; 11 1F
	brk $18.b		; 00 18
	ora ($0B.b,X)		; 01 0B
	ora ($0E.b,X)		; 01 0E
	tsb $33.b		; 04 33
	ora ($3B.b),Y		; 11 3B
	ora $0D1D.w,Y		; 19 1D 0D
	ora $080C.w,X		; 1D 0C 08
	php		; 08
	ora [$01.b]		; 07 01
	asl $00.b		; 06 00
	ora $00.b,S		; 03 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	bra -32.b		; 80 E0
	brk $60.b		; 00 60
	bra  96.b		; 80 60
	bra  96.b		; 80 60
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	ora $183704.l,X		; 1F 04 37 18
	and ($08.b,S),Y		; 33 08
	and $08.b,S		; 23 08
	adc $04.b,S		; 63 04
	adc [$3C.b]		; 67 3C
	adc $017E38.l,X		; 7F 38 7E 01
	ora ($19.b,X)		; 01 19
	ora ($0E.b),Y		; 11 0E
	cop $1E.b		; 02 1E
	cop $3E.b		; 02 3E
	jsl $02223A.l		; 22 3A 22 02
	cop $04.b		; 02 04
	tsb $60.b		; 04 60
	clc		; 18
	bvs  24.b		; 70 18
	cpx #$F088.w		; E0 88 F0
	dey		; 88
	bcs -116.b		; B0 8C
	sec		; 38
	sty $8430.w		; 8C 30 84
	bvs -58.b		; 70 C6
	beq  16.b		; F0 10
	cpx #$7000.w		; E0 00 70
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	php		; 08
	beq -128.b		; F0 80
	sed		; F8
	bra  60.b		; 80 3C
	tsb $06.b		; 04 06
	bmi  14.b		; 30 0E
	sec		; 38
	ora $380B38.l		; 0F 38 0B 38
	phd		; 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	ora [$1C.b]		; 07 1C
	ora $1C.b		; 05 1C
	ora $101710.l,X		; 1F 10 17 10
	ora [$10.b],Y		; 17 10
	ora [$10.b],Y		; 17 10
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	ora [$F1.b],Y		; 17 F1
	stx $F0.b,Y		; 96 F0
	stx $F0.b,Y		; 96 F0
	stx $F0.b,Y		; 96 F0
	stx $F0.b,Y		; 96 F0
	asl $70.b,X		; 16 70
	asl $70.b,X		; 16 70
	asl $70.b,X		; 16 70
	ldx $2FA0.w		; AE A0 2F
	jsr $202F.w		; 20 2F 20
	and $202F20.l		; 2F 20 2F 20
	lda $20AF20.l		; AF 20 AF 20
	lda $104020.l		; AF 20 40 10
	cpx #$C030.w		; E0 30 C0
	bmi -128.b		; 30 80
	jsr $6040.w		; 20 40 60
	bra  96.b		; 80 60
	cpx #$7E80.w		; E0 80 7E
	rti		; 40

	cpx #$C000.w		; E0 00 C0
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	bra   0.b		; 80 00
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $C0.b		; 00 C0
	lda ($9E.b,X)		; A1 9E
	cmp ($3F.b,X)		; C1 3F
	ora [$FF.b]		; 07 FF
	eor ($FF.b,X)		; 41 FF
	brk $FF.b		; 00 FF
	asl $21FF.w,X		; 1E FF 21
	sbc $80E01F.l,X		; FF 1F E0 80
	cpy #$1E1E.w		; C0 1E 1E
	sei		; 78
	sei		; 78
	ldx #$80A2.w		; A2 A2 80
	bra  33.b		; 80 21
	and ($52.b,X)		; 21 52
	eor ($C0.b)		; 52 C0
	cpy #$0F30.w		; C0 30 0F
	tsb $0303.w		; 0C 03 03
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
	brk $18.b		; 00 18
	sbc [$78.b]		; E7 78
	sta [$F8.b]		; 87 F8
	and [$F0.b]		; 27 F0
	ora $427E81.l		; 0F 81 7E 42
	bit $003C.w,X		; 3C 3C 00
	brk $00.b		; 00 00
	cpy $C4.b		; C4 C4
	ora ($11.b),Y		; 11 11
	stz $14.b,X		; 74 14
	ora $05.b		; 05 05
	sec		; 38
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $D8.b		; 24 D8
	cop $FC.b		; 02 FC
	and ($CC.b)		; 32 CC
	dex		; CA
	tsb $1C.b		; 04 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra 112.b		; 80 70
	bvs -120.b		; 70 88
	dey		; 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
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
	sec		; 38
	bpl 127.b		; 10 7F
	and $383F7F.l		; 2F 7F 3F 38
	jmp $34601F.l		; 5C 1F 60 34
	.db $62, $0D, $60		; 62 0D 60
	ora $1020.w		; 0D 20 10
	ora [$06.b]		; 07 06
	and $103F38.l		; 2F 38 3F 10
	ora $1B2020.l,X		; 1F 20 20 1B
	ora $3A.b,S		; 03 3A
	jsl $01021A.l		; 22 1A 02 01
	ora ($FC.b,X)		; 01 FC
	inc $FFFF.w,X		; FE FF FF
	and $1EEFFF.l,X		; 3F FF EF 1E
	lda $8CFB60.l,X		; BF 60 FB 8C
	dec $0081.w,X		; DE 81 00
	sbc $3EFF78.l,X		; FF 78 FF 3E
	sbc $00FF0E.l,X		; FF 0E FF 00
	asl $6000.w,X		; 1E 00 60
	bra  12.b		; 80 0C
	ldy #$67A0.w		; A0 A0 67
	ora ($F3.b),Y		; 11 F3
	ora $AB.b,X		; 15 AB
	jmp $2A2BDC.l		; 5C DC 2B 2A
	sbc [$22.b],Y		; F7 22
	sbc $C07F80.l,X		; FF 80 7F C0
	and $08111D.l,X		; 3F 1D 11 08
	ora ($14.b,X)		; 01 14
	trb $23.b		; 14 23
	and $80.b,S		; 23 80
	bra -64.b		; 80 C0
	cpy #$6767.w		; C0 67 67
	ora [$07.b]		; 07 07
	ora $60EFB2.l		; 0F B2 EF 60
	nop		; EA
	sta ($94.b,X)		; 81 94
	rtl		; 6B

	bit $FB.b		; 24 FB
	adc $FB.b		; 65 FB
	cpx $FB.b		; E4 FB
	pha		; 48
	sbc [$E6.b],Y		; F7 E6
	ldy $10.b		; A4 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	jsr $5151.w		; 20 51 51
	bcc -112.b		; 90 90
	ora ($12.b)		; 12 12
	ldx #$09A2.w		; A2 A2 09
	tsb $05.b		; 04 05
	brk $07.b		; 00 07
	cop $05.b		; 02 05
	cop $02.b		; 02 02
	tsb $00.b		; 04 00
	asl $0E04.w		; 0E 04 0E
	ora $1F.b		; 05 1F
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	php		; 08
	php		; 08
	cpy #$0080.w		; C0 80 00
	rti		; 40

	bra  96.b		; 80 60
	cpy #$8060.w		; C0 60 80
	jsr $30C0.w		; 20 C0 30
	cpx #$C030.w		; E0 30 C0
	bpl   0.b		; 10 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	jsr $00C0.w		; 20 C0 00
	cpx #$3800.w		; E0 00 38
	ror $7E3C.w,X		; 7E 3C 7E
	jsr $2E63.w		; 20 63 2E
	adc $0E.b,S		; 63 0E
	adc $1C.b,S		; 63 1C
	adc ($14.b),Y		; 71 14
	adc ($17.b),Y		; 71 17
	and ($04.b),Y		; 31 04
	tsb $00.b		; 04 00
	brk $1E.b		; 00 1E
	cop $1C.b		; 02 1C
	brk $3C.b		; 00 3C
	jsr $212F.w		; 20 2F 21
	and $000E21.l		; 2F 21 0E 00
	mvp $20,$C6		; 44 C6 20
.ACCU 8
	sep #$20		; E2 20
	sbc $22.b,S		; E3 22
	sbc $16.b,S		; E3 16
	adc ($14.b,S),Y		; 73 14
	sbc ($14.b),Y		; F1 14
	sbc ($17.b),Y		; F1 17
	sbc ($38.b),Y		; F1 38
	brk $5C.b		; 00 5C
	rti		; 40

	lsr $5C42.w,X		; 5E 42 5C
	rti		; 40

	bit $2E20.w		; 2C 20 2E
	jsr $212F.w		; 20 2F 21
	ldx $15A0.w		; AE A0 15
	tsb $0E32.w		; 0C 32 0E
	and $083700.l,X		; 3F 00 37 08
	tas		; 1B
	tsb $1B.b		; 04 1B
	asl $0B.b		; 06 0B
	ora [$0D.b]		; 07 0D
	ora $0B.b,S		; 03 0B
	php		; 08
	ora $04.b		; 05 04
	bpl  16.b		; 10 10
	asl $0F16.w,X		; 1E 16 0F
	phd		; 0B
	ora $000709.l		; 0F 09 07 00
	ora [$04.b]		; 07 04
	asl $7F70.w		; 0E 70 7F
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	cop $F7.b		; 02 F7
	rol $AF76.w		; 2E 76 AF
	ror $ED.b,X		; 76 ED
	ror $ED.b,X		; 76 ED
	sta ($10.b),Y		; 91 10
	stx $6F8E.w		; 8E 8E 6F
	adc $7FEDEF.l		; 6F EF ED 7F
	eor ($FF.b),Y		; 51 FF
	bvc  -1.b		; 50 FF
	ora ($FF.b)		; 12 FF
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $88.b		; 00 88
	ora [$70.b]		; 07 70
	sta $00FEE1.l		; 8F E1 FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$8C.b]		; 07 8C
	sty $1818.w		; 8C 18 18
.ACCU 8
.INDEX 8
	sep #$FD		; E2 FD
	ora $FC.b,S		; 03 FC
	ora $FA.b		; 05 FA
	sta $01F2.w		; 8D F2 01
	inc $3CC2.w,X		; FE C2 3C
	bit $0000.w,X		; 3C 00 00
	brk $18.b		; 00 18
	clc		; 18
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	.db $62, $62, $0C		; 62 62 0C
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	bmi -64.b		; 30 C0
	ora #$F0.b		; 09 F0
	sbc [$18.b]		; E7 18
	sta ($0C.b)		; 92 0C
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	cpy #$30.b		; C0 30
	cpx #$30.b		; E0 30
	cpy #$38.b		; C0 38
	cpy #$BE.b		; C0 BE
	rti		; 40

	sta $000060.l,X		; 9F 60 00 00
	bra -128.b		; 80 80
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	bvs  48.b		; 70 30
	adc ($12.b)		; 72 12
	brk $00.b		; 00 00
	tsb $1E00.w		; 0C 00 1E
	brk $13.b		; 00 13
	tsb $0709.w		; 0C 09 07
	php		; 08
	ora [$04.b]		; 07 04
	ora $04.b,S		; 03 04
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb $020E.w		; 0C 0E 02
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ldy $FCE0.w,X		; BC E0 FC
	brk $FE.b		; 00 FE
	brk $F9.b		; 00 F9
	brk $FA.b		; 00 FA
	ora ($F2.b,X)		; 01 F2
	ora #$F2.b		; 09 F2
	cmp #$3E.b		; C9 3E
	and ($F0.b,X)		; 21 F0
	bpl -88.b		; 10 A8
	tay		; A8
	tay		; A8
	tay		; A8
	lsr $56.b,X		; 56 56
	mvn $2C,$56		; 54 56 2C
	rol $CECC.w		; 2E CC CE
	brk $E0.b		; 00 E0
	ldy $C2.b		; A4 C2
	stz $12.b		; 64 12
	cpx $52.b		; E4 52
	cpx $52.b		; E4 52
	cpy #$BE.b		; C0 BE
	inc $C0B0.w		; EE B0 C0
	bpl  64.b		; 10 40
	bpl  24.b		; 10 18
	jmp.w [$9C18]		; DC 18 9C
	cli		; 58
	trb $0C48.w		; 1C 48 0C
	ldy $802C.w		; AC 2C 80
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
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
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	cpy #$C0.b		; C0 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	bra -16.b		; 80 F0
	bra -16.b		; 80 F0
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	rti		; 40

	cpy #$40.b		; C0 40
	ldy #$20.b		; A0 20
	ldy #$A0.b		; A0 A0
	adc ($3E.b),Y		; 71 3E
	jmp $3F483F.l		; 5C 3F 48 3F
	rol $0F.b,X		; 36 0F
	bit $2B03.w,X		; 3C 03 2B
	trb $235C.w		; 1C 5C 23
	rti		; 40

	and $230C0C.l,X		; 3F 0C 0C 23
	and $14.b,S		; 23 14
	trb $09.b		; 14 09
	ora #$10.b		; 09 10
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $34.b		; 00 34
	bit $E8.b,X		; 34 E8
	bpl  56.b		; 10 38
	cpy #$10.b		; C0 10
	cpx #$3E.b		; E0 3E
	cpy #$7F.b		; C0 7F
	bra -128.b		; 80 80
	adc $0FFF00.l,X		; 7F 00 FF 0F
	sbc $001030.l,X		; FF 30 10 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	asl $7070.w,X		; 1E 70 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	and $FF00C0.l,X		; 3F C0 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($81.b,X)		; 81 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	php		; 08
	beq -60.b		; F0 C4
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	brk $7F.b		; 00 7F
	bit $3FFC.w,X		; 3C FC 3F
	and $603FB3.l,X		; 3F B3 3F 60
	adc $00FFC0.l,X		; 7F C0 FF 00
	sbc $9F00.w,Y		; F9 00 9F
	brk $00.b		; 00 00
	eor $40.b,S		; 43 40
	cpy #$00.b		; C0 00
	cpy $9F0C.w		; CC 0C 9F
	ora $803030.l,X		; 1F 30 30 80
	bra   1.b		; 80 01
	ora ($00.b,X)		; 01 00
	sbc $00003F.l,X		; FF 3F 00 00
	brk $FF.b		; 00 FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $BEF809.l,X		; FF 09 F8 BE
	bra   0.b		; 80 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	inc $0000.w,X		; FE 00 00
	ora [$10.b],Y		; 17 10
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $0AF701.l		; 0F 01 F7 0A
	ror $009D.w,X		; 7E 9D 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $0F.b		; 02 0F
	ora $FF.b		; 05 FF
	.db $62, $00, $00		; 62 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$80.b		; E0 80
	ldy #$40.b		; A0 40
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$C0.b		; C0 C0
	rti		; 40

	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	cop $1E.b		; 02 1E
	phd		; 0B
	sei		; 78
	and $80BEE0.l		; 2F E0 BE 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $04.b		; 05 04
	ora [$10.b],Y		; 17 10
	eor $007F40.l,X		; 5F 40 7F 00
	brk $03.b		; 00 03
	ora ($1F.b,X)		; 01 1F
	phd		; 0B
	sed		; F8
	eor $01F9C0.l,X		; 5F C0 F9 01
	inc $07.b		; E6 07
	tya		; 98
	ora $007E60.l,X		; 1F 60 7E 00
	brk $02.b		; 00 02
	cop $17.b		; 02 17
	bpl -65.b		; 10 BF
	bra  -2.b		; 80 FE
	brk $F9.b		; 00 F9
	ora ($E6.b,X)		; 01 E6
	asl $98.b		; 06 98
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora $1A1A.w,Y		; 19 1A 1A
	tas		; 1B
	bit $3B.b		; 24 3B
	rol $0634.w,X		; 3E 34 06
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $3E10.w,Y		; 19 10 3E
	bpl  63.b		; 10 3F
	brk $7B.b		; 00 7B
	bit $75.b,X		; 34 75
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	ora ($07.b,X)		; 01 07
	and $FFFF7F.l,X		; 3F 7F FF FF
	jsr ($FFFF.w,X)		; FC FF FF
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	tsb $00.b		; 04 00
	ora [$00.b]		; 07 00
	adc $FEFF03.l,X		; 7F 03 FF FE
	sbc $00FFE0.l,X		; FF E0 FF 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $41.b		; 00 41
	brk $B1.b		; 00 B1
	cpy #$FB.b		; C0 FB
	cpy #$BB.b		; C0 BB
	bne  95.b		; D0 5F
	lda ($F8.b,S),Y		; B3 F8
	jsr $47E7.w		; 20 E7 47
	sta $8000DF.l,X		; 9F DF 00 80
	brk $C0.b		; 00 C0
	sta ($D1.b),Y		; 91 D1
	bpl -64.b		; 10 C0
	and ($83.b),Y		; 31 83
	jsr $8007.w		; 20 07 80
	ora $F77F46.l,X		; 1F 46 7F F7
	tas		; 1B
	sbc $2DDE17.l		; EF 17 DE 2D
	sbc $F71F.w,Y		; F9 1F F7
	plb		; AB
	cmp $537CBE.l		; CF BE 7C 53
	adc ($4D.b,S),Y		; 73 4D
	lda $687FA4.l,X		; BF A4 7F 68
	adc $203F52.l,X		; 7F 52 3F 20
	lda $81BF94.l,X		; BF 94 BF 81
	eor $D25FCC.l,X		; 5F CC 5F D2
	cpx $9FD4.w		; EC D4 9F
	tda		; 7B
	ror $FEF1.w,X		; 7E F1 FE
	sta ($7D.b,X)		; 81 7D
	.db $82, $EE, $10		; 82 EE 10
	bmi -64.b		; 30 C0
	cpy #$00.b		; C0 00
	sbc ($20.b,S),Y		; F3 20
	sed		; F8
	bra  -3.b		; 80 FD
	ora $70F0.w		; 0D F0 70
	stx $700C.w		; 8E 0C 70
	rts		; 60

	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	cpy #$FC.b		; C0 FC
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	and $283F50.l,X		; 3F 50 3F 28
	ora $181F26.l,X		; 1F 26 1F 18
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $33.b		; 00 33
	and ($08.b,S),Y		; 33 08
	php		; 08
	ora [$17.b],Y		; 17 17
	ora #$09.b		; 09 09
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sec		; 38
	cmp [$C4.b]		; C7 C4
	ora $04.b,S		; 03 04
	ora $19.b,S		; 03 19
	asl $0E.b		; 06 0E
	brk $C3.b		; 00 C3
	cmp $3C.b,S		; C3 3C
	bit $E6E6.w,X		; 3C E6 E6
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FF.b,S		; E3 FF
	rol $00FF.w,X		; 3E FF 00
	sbc $E37F80.l,X		; FF 80 7F E3
	trb $00BE.w		; 1C BE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $C11C.w		; 1C 1C C1
	cmp ($60.b,X)		; C1 60
	rts		; 60

	rol $003E.w,X		; 3E 3E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	jsr ($CC32.w,X)		; FC 32 CC
	ply		; 7A
	sty $EA.b		; 84 EA
	tsb $8C.b		; 04 8C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $C8.b		; 00 C8
	iny		; C8
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $CF4FFF.l		; 0F FF 4F CF
	cpx $E80F.w		; EC 0F E8
	ora $C03F20.l		; 0F 20 3F C0
	sed		; F8
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	bpl  16.b		; 10 10
	bcs -128.b		; B0 80
	sbc ($03.b,S),Y		; F3 03
	sbc [$07.b],Y		; F7 07
	cld		; D8
	clc		; 18
	jsr $8020.w		; 20 20 80
	bra   0.b		; 80 00
	brk $03.b		; 00 03
	ora $F8.b,S		; 03 F8
	sbc $00FF00.l,X		; FF 00 FF 00
	sed		; F8
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($0700.w,X)		; FC 00 07
	ora [$F8.b]		; 07 F8
	sed		; F8
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xce		; FB
	cpx $E1.b		; E4 E1
	asl $00FF.w,X		; 1E FF 00
	ora $FFFFE0.l,X		; 1F E0 FF FF
	sbc ($0E.b),Y		; F1 0E
	inc $0000.w,X		; FE 00 00
	brk $FC.b		; 00 FC
	clc		; 18
	inc $00E0.w,X		; FE E0 00
	brk $FF.b		; 00 FF
	ora $FE00FF.l,X		; 1F FF 00 FE
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$C0.b		; C0 C0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $C601.w,Y		; 79 01 C6
	eor [$D8.b]		; 47 D8
	and $E59FE1.l,X		; 3F E1 9F E5
	jmp.w [$40B7]		; DC B7 40
	adc $F0FAE8.l,X		; 7F E8 FA F0
	inc $3900.w,X		; FE 00 39
	ora ($A4.b,X)		; 01 A4
	ldy $D2.b		; A4 D2
	eor ($CB.b)		; 52 CB
	php		; 08
	sbc $00E7A0.l		; EF A0 E7 00
	sbc [$00.b],Y		; F7 00
	bra  -1.b		; 80 FF
	ora $FC.b		; 05 FC
	and $007FE0.l		; 2F E0 7F 00
	jsr ($F300.w,X)		; FC 00 F3
	ora $CC.b,S		; 03 CC
	ora $603E30.l		; 0F 30 3E 60
	rts		; 60

	phb		; 8B
	dey		; 88
	eor $00FF40.l,X		; 5F 40 FF 00
	sbc $00FC00.l,X		; FF 00 FC 00
	sbc ($02.b)		; F2 02
	cpy $0C0C.w		; CC 0C 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $0B.b		; 00 0B
	bmi  32.b		; 30 20
	rts		; 60

	ror $7F7F.w,X		; 7E 7F 7F
	adc $7F3FBC.l,X		; 7F BC 3F 7F
	brk $3B.b		; 00 3B
	bpl   2.b		; 10 02
	brk $00.b		; 00 00
	adc $00.b,X		; 75 00
	sbc $3DFF2C.l,X		; FF 2C FF 3D
	sbc $007F30.l,X		; FF 30 7F 00
	brk $14.b		; 00 14
	ora ($FF.b,X)		; 01 FF
	and $003FFF.l,X		; 3F FF 3F 00
	brk $7F.b		; 00 7F
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FF07FF.l,X		; FF FF 07 FF
	php		; 08
	asl $3F3F.w,X		; 1E 3F 3F
	lda $1FFF00.l,X		; BF 00 FF 1F
	sbc $0FFFFF.l,X		; FF FF FF 0F
	sbc $080701.l,X		; FF 01 07 08
	inx		; E8
	ror $B341.w,X		; 7E 41 B3
	ldy $225D.w		; AC 5D 22
	lda ($CE.b),Y		; B1 CE
	inc $F0C0.w,X		; FE C0 F0
	cpy #$B0.b		; C0 B0
	cpy #$F0.b		; C0 F0
	brk $0F.b		; 00 0F
	dec $E00C.w		; CE 0C E0
	ora $A1.b,S		; 03 A1
	asl $80C0.w		; 0E C0 80
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	cpy #$20.b		; C0 20
	jsr $0000.w		; 20 00 00
	trb $1E00.w		; 1C 00 1E
	ora ($3F.b,X)		; 01 3F
	bpl  63.b		; 10 3F
	trb $7E.b		; 14 7E
	ora $7D.b,X		; 15 7D
	ora $000DFB.l		; 0F FB 0D 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	inc A		; 1A
	asl A		; 0A
	asl $02.b,X		; 16 02
	and [$22.b],Y		; 37 22
	and $525F20.l		; 2F 20 5F 52
	ora $1FCFF0.l		; 0F F0 CF 1F
	and $F30C34.l,X		; 3F 34 0C F3
	and $A37FC0.l,X		; 3F C0 7F A3
	lda $57781C.l,X		; BF 1C 78 57
	brk $00.b		; 00 00
	sbc $03C700.l		; EF 00 C7 03
	sbc [$F4.b],Y		; F7 F4
	brk $00.b		; 00 00
	and $03DF1C.l,X		; 3F 1C DF 03
	sta $C03F08.l,X		; 9F 08 3F C0
	bmi -64.b		; 30 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne -48.b		; D0 D0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora #$06.b		; 09 06
	ora ($0D.b)		; 12 0D
	and #$1E.b		; 29 1E
	and ($1D.b,S),Y		; 33 1D
	bit $1B.b		; 24 1B
	and $1C.b,S		; 23 1C
	bpl  15.b		; 10 0F
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	ora #$09.b		; 09 09
	trb $14.b		; 14 14
	php		; 08
	php		; 08
	ora ($13.b,S),Y		; 13 13
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	ora ($7E.b,X)		; 01 7E
	bra  75.b		; 80 4B
	bvc -51.b		; 50 CD
	cpy $6CF1.w		; CC F1 6C
	sta ($F8.b),Y		; 91 F8
	and ($30.b),Y		; 31 30
	cmp $D2.b,S		; C3 D2
	and $0000.w,X		; 3D 00 00
	adc $8CBE4B.l,X		; 7F 4B BE 8C
	and $011F31.l,X		; 3F 31 1F 01
	ora $828E31.l,X		; 1F 31 8E 82
	rol $7F2C.w		; 2E 2C 7F
	and ($7E.b,X)		; 21 7E
	and $FD.b,S		; 23 FD
	sta [$7D.b]		; 87 7D
	dey		; 88
	lsr $77AA.w,X		; 5E AA 77
	sta $1B.b,X		; 95 1B
	asl A		; 0A
	asl $A000.w		; 0E 00 A0
	ora $0AA0.w		; 0D A0 0A
	jsr $A324.w		; 20 24 A3
	tay		; A8
	and #$08.b		; 29 08
	trb $1C.b		; 14 1C
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	stz $6EEC.w,X		; 9E EC 6E
	cpy #$D4.b		; C0 D4
	clc		; 18
	ldy #$38.b		; A0 38
	bra -16.b		; 80 F0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	tsb $3080.w		; 0C 80 30
	brk $E8.b		; 00 E8
	php		; 08
	bne  16.b		; D0 10
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $060900.l		; 0F 00 09 06
	ora [$00.b]		; 07 00
	ora [$0C.b]		; 07 0C
	ora $1B18.w		; 0D 18 1B
	and ($74.b)		; 32 74
	rol $00.b		; 26 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora ($00.b,X)		; 01 00
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	brk $1A.b		; 00 1A
	ora $06.b,S		; 03 06
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bmi -65.b		; 30 BF
	sta $7FA7BF.l		; 8F BF A7 7F
	stz $FF.b,X		; 74 FF
	sbc $0000.w,Y		; F9 00 00
	brk $00.b		; 00 00
	sbc $0F3FFF.l,X		; FF FF 3F 0F
	ora $E80FD0.l,X		; 1F D0 0F E8
	rol $F2.b		; 26 F2
	bvs  -7.b		; 70 F9
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	tas		; 1B
	ora [$23.b]		; 07 23
	ora $403F41.l,X		; 1F 41 3F 40
	and $003F40.l,X		; 3F 40 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $0C.b		; 04 0C
	tsb $1E1E.w		; 0C 1E 1E
	trb $311C.w		; 1C 1C 31
	and ($0C.b),Y		; 31 0C
	brk $18.b		; 00 18
	brk $A9.b		; 00 A9
	bpl 102.b		; 10 66
	sta $FF82.w,Y		; 99 82 FF
	cpy $FF.b		; C4 FF
	clc		; 18
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl -111.b		; 10 91
	sta ($5D.b),Y		; 91 5D
	eor $2A2A.w,X		; 5D 2A 2A
	and ($21.b,X)		; 21 21
	dec $C6.b		; C6 C6
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($00.b),Y		; F1 00
	asl $FCF1.w		; 0E F1 FC
	adc [$F8.b]		; 67 F8
	sbc $00FC73.l,X		; FF 73 FC 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$9A.b		; E0 9A
	cop $04.b		; 02 04
	tsb $88.b		; 04 88
	dey		; 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra  64.b		; 80 40
	bra  32.b		; 80 20
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra   2.b		; 80 02
	tsb $06.b		; 04 06
	ora ($1B.b,X)		; 01 1B
	tsb $1B.b		; 04 1B
	brk $15.b		; 00 15
	cop $0B.b		; 02 0B
	tsb $36.b		; 04 36
	ora #$7E.b		; 09 7E
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora $04.b,S		; 03 04
	tsb $04.b		; 04 04
	tsb $080A.w		; 0C 0A 08
	tsb $00.b		; 04 00
	phd		; 0B
	cop $37.b		; 02 37
	rol $97.b,X		; 36 97
	and [$F9.b]		; 27 F9
	ora #$BE.b		; 09 BE
	asl $B7.b		; 06 B7
	eor #$FF.b		; 49 FF
	jsr $18EF.w		; 20 EF 18
	stp		; DB
	ror $EFDA.w		; 6E DA EF
	adc ($6F.b,X)		; 61 6F
	brk $0F.b		; 00 0F
	lsr $D7.b,X		; 56 D7
	pha		; 48
	cmp ($2A.b,X)		; C1 2A
	txa		; 8A
	ply		; 7A
	.db $62, $FE, $90		; 62 FE 90
	sbc $070310.l,X		; FF 10 03 07
	brk $0C.b		; 00 0C
	ora ($0C.b,X)		; 01 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	sbc ($FF.b)		; F2 FF
	ora ($1F.b)		; 12 1F
	cmp ($1D.b),Y		; D1 1D
	bne  28.b		; D0 1C
	cmp $1C.b		; C5 1C
	lda $3C.b		; A5 3C
	lda $3C.b		; A5 3C
	sta $3C.b		; 85 3C
	php		; 08
	php		; 08
	sbc #$09.b		; E9 09
	nop		; EA
	php		; 08
	xba		; EB
	php		; 08
	sbc ($10.b,S),Y		; F3 10
	cmp ($10.b,S),Y		; D3 10
	cmp ($10.b,S),Y		; D3 10
	xba		; EB
	plp		; 28
	clv		; B8
	bvc -72.b		; 50 B8
	bvc  -8.b		; 50 F8
	bpl -44.b		; 10 D4
	sec		; 38
	jsr ($EE10.w,X)		; FC 10 EE
	clc		; 18
	cmp $000F04.l,X		; DF 04 0F 00
	bvs  32.b		; 70 20
	bvs  32.b		; 70 20
	bmi  32.b		; 30 20
	sec		; 38
	brk $18.b		; 00 18
	php		; 08
	trb $0E04.w		; 1C 04 0E
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $34.b		; 00 34
	sed		; F8
	asl A		; 0A
	jsr ($FC02.w,X)		; FC 02 FC
	asl $1FF0.w		; 0E F0 1F
	nop		; EA
	bit $00C3.w,X		; 3C C3 00
	brk $00.b		; 00 00
	brk $C8.b		; 00 C8
	iny		; C8
	sty $84.b		; 84 84
	tsb $04.b		; 04 04
	bra -128.b		; 80 80
	asl $0D00.w		; 0E 00 0D
	ora $827D.w		; 0D 7D 82
	plx		; FA
	ora [$90.b]		; 07 90
	ora $110F10.l		; 0F 10 0F 11
	asl $0D12.w		; 0E 12 0D
	phd		; 0B
	tsb $0B.b		; 04 0B
	tsb $03.b		; 04 03
	cop $01.b		; 02 01
	ora ($07.b,X)		; 01 07
	ora [$06.b]		; 07 06
	asl $04.b		; 06 04
	tsb $04.b		; 04 04
	tsb $01.b		; 04 01
	brk $01.b		; 00 01
	brk $1C.b		; 00 1C
	eor [$74.b]		; 47 74
	cmp [$28.b]		; C7 28
	stx $8CE0.w		; 8E E0 8C
	bvc  28.b		; 50 1C
	ldy #$38.b		; A0 38
	rti		; 40

	bvs -16.b		; 70 F0
	brk $3A.b		; 00 3A
	cop $3A.b		; 02 3A
	cop $74.b		; 02 74
	tsb $78.b		; 04 78
	php		; 08
	inx		; E8
	php		; 08
	bne  16.b		; D0 10
	ldy #$20.b		; A0 20
	brk $00.b		; 00 00
	inx		; E8
	cpx #$18.b		; E0 18
	cpx #$28.b		; E0 28
	bcc  80.b		; 90 50
	jsr $00A0.w		; 20 A0 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	bpl -48.b		; 10 D0
	jsr $40A0.w		; 20 A0 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	sed		; F8
	brk $EC.b		; 00 EC
	clv		; B8
	jmp ($F420.w,X)		; 7C 20 F4
	dey		; 88
	cli		; 58
	ldy #$70.b		; A0 70
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	brk $50.b		; 00 50
	bvc  56.b		; 50 38
	brk $A8.b		; 00 A8
	php		; 08
	plp		; 28
	jsr $80A0.w		; 20 A0 80
	brk $00.b		; 00 00
	sed		; F8
	asl $2DF0.w,X		; 1E F0 2D
	jsr ($E200.w,X)		; FC 00 E2
	adc $1875.w,Y		; 79 75 18
	adc $08.b,X		; 75 08
	and $58.b		; 25 58
	ora $4442.w,Y		; 19 42 44
	eor $28.b		; 45 28
	phd		; 0B
	brk $03.b		; 00 03
	bit $75.b		; 24 75
	ora ($16.b)		; 12 16
	cop $26.b		; 02 26
	ora ($36.b)		; 12 36
	rol $2E.b		; 26 2E
	sbc $0F0FFF.l,X		; FF FF 0F 0F
	sbc ($F3.b,S),Y		; F3 F3
	sbc $FEFD.w,X		; FD FD FE
	inc $FFFE.w,X		; FE FE FF
	inc $FDFF.w,X		; FE FF FD
	inc $FF79.w,X		; FE 79 FF
	ora $FF.b,S		; 03 FF
	ora ($FF.b,X)		; 01 FF
	bvs  -1.b		; 70 FF
	jsr ($FEFF.w,X)		; FC FF FE
	sbc $F8FFFC.l,X		; FF FC FF F8
	inc $3B44.w,X		; FE 44 3B
	sta $708F70.l		; 8F 70 8F 70
	tya		; 98
	rts		; 60

	bpl -32.b		; 10 E0
	bmi -64.b		; 30 C0
	rts		; 60

	bra -64.b		; 80 C0
	brk $30.b		; 00 30
	bmi  32.b		; 30 20
	jsr $2020.w		; 20 20 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $01FF.w		; 1C FF 01
	inc $7C83.w,X		; FE 83 7C
	sbc $007C00.l,X		; FF 00 7C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor [$F8.b]		; 47 F8
	tas		; 1B
	sbc $2C.b		; E5 2C
	cmp ($D4.b,S),Y		; D3 D4
	and $4E.b,S		; 23 4E
	stp		; DB
	sec		; 38
	bit #$1E.b		; 89 1E
	sta $40.b,S		; 83 40
	dec $20.b		; C6 20
	jsr $4444.w		; 20 44 44
	ora ($13.b,S),Y		; 13 13
	and ($29.b,X)		; 21 29
	jsr $FB08.w		; 20 08 FB
	sta $80FC.w		; 8D FC 80
	ldy $2084.w,X		; BC 84 20
	cpy #$A0.b		; C0 A0
	rti		; 40

	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	ldx $3E1E.w,Y		; BE 1E 3E
	sta $483F7F.l,X		; 9F 7F 3F 48
	ora $004040.l,X		; 1F 40 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1F10.w,X		; 1E 10 1F
	tsb $3F1F.w		; 0C 1F 3F
	and $7F3800.l,X		; 3F 00 38 7F
	brk $7F.b		; 00 7F
	ora ($7F.b,X)		; 01 7F
	ora $3F.b,S		; 03 3F
	ora $3F.b,S		; 03 3F
	brk $1F.b		; 00 1F
	brk $06.b		; 00 06
	ora ($00.b,X)		; 01 00
	ora ($0D.b,X)		; 01 0D
	ora $0A0B.w		; 0D 0B 0A
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tyx		; BB
	dec $D6BB.w,X		; DE BB D6
	lda [$7A.b],Y		; B7 7A
	adc [$BF.b],Y		; 77 BF
	sbc [$3F.b],Y		; F7 3F
	adc [$FF.b],Y		; 77 FF
	sbc [$08.b],Y		; F7 08
	rol $FFC1.w,X		; 3E C1 FF
	and ($FF.b,X)		; 21 FF
	and #$FF.b		; 29 FF
	sta $FF.b		; 85 FF
	rti		; 40

	adc $00FF40.l,X		; 7F 40 FF 00
	rol $C136.w,X		; 3E 36 C1
	cmp ($07.b,X)		; C1 07
	clc		; 18
	ora $180F18.l		; 0F 18 0F 18
	asl $10.b		; 06 10
	asl $30.b		; 06 30
	ora $210D31.l,X		; 1F 31 0D 21
	tsb $0F21.w		; 0C 21 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $101F00.l		; 0F 00 1F 10
	asl $1E00.w		; 0E 00 1E
	brk $1F.b		; 00 1F
	ora ($45.b,X)		; 01 45
	jmp ($7C45.w,X)		; 7C 45 7C
	.db $82, $EE, $82		; 82 EE 82
	inc $C701.w		; EE 01 C7
	brk $C3.b		; 00 C3
	brk $83.b		; 00 83
	brk $81.b		; 00 81
	plb		; AB
	plp		; 28
	phb		; 8B
	php		; 08
	eor $44.b		; 45 44
	eor $44.b		; 45 44
	.db $82, $82, $81		; 82 82 81
	sta ($01.b,X)		; 81 01
	ora ($00.b,X)		; 01 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	and $FA.b		; 25 FA
	wai		; CB
	xba		; EB
	rol A		; 2A
	xba		; EB
	ror A		; 6A
	sbc $EA.b		; E5 EA
	sbc $EEF4.w,Y		; F9 F4 EE
	beq   0.b		; F0 00
	brk $F0.b		; 00 F0
	cmp $CA.b,X		; D5 CA
	ora $20BEAA.l		; 0F AA BE 20
	ror $FA60.w,X		; 7E 60 FA
	cpx #$F6.b		; E0 F6
	cpy #$F0.b		; C0 F0
	sty $7C.b		; 84 7C
	cmp [$40.b]		; C7 40
	sbc $9881.w,Y		; F9 81 98
	sta $00FF80.l,X		; 9F 80 FF 00
	sed		; F8
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	and $007E00.l,X		; 3F 00 7E 00
	adc [$07.b]		; 67 07
	sei		; 78
	sei		; 78
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pea $7C28.w		; F4 28 7C
	jsr $70A8.w		; 20 A8 70
	inx		; E8
	bvc -48.b		; 50 D0
	rts		; 60

	bne  96.b		; D0 60
	bcs  96.b		; B0 60
	bvs   0.b		; 70 00
	sec		; 38
	bpl  48.b		; 10 30
	bpl 112.b		; 10 70
	brk $70.b		; 00 70
	jsr $0060.w		; 20 60 00
	rts		; 60

	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0C06.w		; 0C 06 0C
	asl $1518.w		; 0E 18 15
	and ($0E.b),Y		; 31 0E
	adc $1A.b,S		; 63 1A
	eor $74.b,S		; 43 74
	cmp [$38.b]		; C7 38
	stx $0407.w		; 8E 07 04
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $3D00.w		; 0E 00 3D
	and ($3D.b,X)		; 21 3D
	ora ($3A.b,X)		; 01 3A
	cop $74.b		; 02 74
	tsb $1D.b		; 04 1D
	asl A		; 0A
	and $5A0A.w,X		; 3D 0A 5A
	bit $FE.b,X		; 34 FE
	bpl -12.b		; 10 F4
	plp		; 28
	jmp ($A820.w,X)		; 7C 20 A8
	bvs -24.b		; 70 E8
	bvc  14.b		; 50 0E
	tsb $1E.b		; 04 1E
	trb $3C.b		; 14 3C
	php		; 08
	sec		; 38
	plp		; 28
	sec		; 38
	bpl  48.b		; 10 30
	bpl 112.b		; 10 70
	brk $70.b		; 00 70
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$00.b		; 09 00
	asl $01.b		; 06 01
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne -32.b		; D0 E0
	cpx #$C0.b		; E0 C0
	ldy #$C0.b		; A0 C0
	rti		; 40

	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	cpx #$80.b		; E0 80
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	rti		; 40

	bcs  64.b		; B0 40
	iny		; C8
	bmi -56.b		; 30 C8
	bmi -88.b		; 30 A8
	bvc -16.b		; 50 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	brk $40.b		; 00 40
	brk $B0.b		; 00 B0
	bra -80.b		; 80 B0
	bra -48.b		; 80 D0
	bra -64.b		; 80 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	clc		; 18
	ora $11.b		; 05 11
	dec A		; 3A
	ora $74.b,S		; 03 74
	ora [$7F.b]		; 07 7F
	bpl 122.b		; 10 7A
	bit $F4.b		; 24 F4
	plp		; 28
	inx		; E8
	bvc   7.b		; 50 07
	brk $0E.b		; 00 0E
	brk $0D.b		; 00 0D
	ora ($0A.b,X)		; 01 0A
	cop $30.b		; 02 30
	jsr $183C.w		; 20 3C 18
	sei		; 78
	bvc 112.b		; 50 70
	jsr $C65C.w		; 20 5C C6
	sec		; 38
	sbc $22.b,S		; E3 22
	sbc $1A.b,S		; E3 1A
	tda		; 7B
	asl A		; 0A
	tda		; 7B
	asl A		; 0A
	tda		; 7B
	php		; 08
	tda		; 7B
	php		; 08
	tda		; 7B
	clv		; B8
	bra  94.b		; 80 5E
	.db $42, $5C		; 42 5C
	rti		; 40

	bit $20.b		; 24 20
	bit $30.b,X		; 34 30
	bit $30.b,X		; 34 30
	rol $32.b,X		; 36 32
	rol $32.b,X		; 36 32
	bpl 115.b		; 10 73
	bpl 115.b		; 10 73
	bpl 114.b		; 10 72
	bpl 114.b		; 10 72
	bpl 114.b		; 10 72
	bpl 114.b		; 10 72
	bpl  50.b		; 10 32
	brk $32.b		; 00 32
	bit $2C20.w		; 2C 20 2C
	jsr $202C.w		; 20 2C 20
	bit $2C20.w		; 2C 20 2C
	jsr $202C.w		; 20 2C 20
	tsb $1C00.w		; 0C 00 1C
	bpl   8.b		; 10 08
	dec A		; 3A
	php		; 08
	dec A		; 3A
	rol $3E00.w,X		; 3E 00 3E
	tsb $142E.w		; 0C 2E 14
	rol $2E14.w		; 2E 14 2E
	trb $2E.b		; 14 2E
	trb $14.b		; 14 14
	bpl  20.b		; 10 14
	bpl   0.b		; 10 00
	brk $1C.b		; 00 1C
	bpl  28.b		; 10 1C
	php		; 08
	trb $1C08.w		; 1C 08 1C
	php		; 08
	trb $1408.w		; 1C 08 14
	cmp [$58.b]		; C7 58
	dec $8E08.w		; CE 08 8E
	bne -100.b		; D0 9C
	cpy #$1C.b		; C0 1C
	ldy #$38.b		; A0 38
	cpy #$70.b		; C0 70
	rti		; 40

	bvs 122.b		; 70 7A
	.db $42, $34		; 42 34
	tsb $F4.b		; 04 F4
	sty $68.b		; 84 68
	php		; 08
	sed		; F8
	clc		; 18
	bne  16.b		; D0 10
	ldy #$20.b		; A0 20
	ldy #$20.b		; A0 20
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $60.b		; 00 60
	cpy #$60.b		; C0 60
	bra  48.b		; 80 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	cpx #$20.b		; E0 20
	cpx #$30.b		; E0 30
	cpy #$18.b		; C0 18
	beq  24.b		; F0 18
	cpx #$08.b		; E0 08
	bvs  12.b		; 70 0C
	sed		; F8
	sty $86B0.w		; 8C B0 86
	jmp $00C0C6.l		; 5C C6 C0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	bvs   0.b		; 70 00
	jmp ($B804.w,X)		; 7C 04 B8
	bra -64.b		; 80 C0
	brk $60.b		; 00 60
	cpy #$E0.b		; C0 E0
	rti		; 40

	sed		; F8
	brk $D9.b		; 00 D9
	brk $E9.b		; 00 E9
	rti		; 40

	sed		; F8
	brk $C8.b		; 00 C8
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	bpl  64.b		; 10 40
	rti		; 40

	jsr $5030.w		; 20 30 50
	bvc  64.b		; 50 40
	bvc  48.b		; 50 30
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rts		; 60

	jmp $781C70.l		; 5C 70 1C 78
	ldy $D8B8.w		; AC B8 D8
	bmi  56.b		; 30 38
	rti		; 40

	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rti		; 40

	bvs  80.b		; 70 50
	beq  24.b		; F0 18
	sed		; F8
	bra  -8.b		; 80 F8
	brk $30.b		; 00 30
	brk $C0.b		; 00 C0
	jsr $516C.w		; 20 6C 51
	cmp $87.b,S		; C3 87
	sta [$3F.b]		; 87 3F
	adc $EDFFFE.l,X		; 7F FE FF ED
	sbc ($B7.b,S),Y		; F3 B7
	iny		; C8
	stp		; DB
	ora ($10.b,X)		; 01 10
	ora $38.b,S		; 03 38
	ora [$03.b]		; 07 03
	adc $60FF17.l,X		; 7F 17 FF 60
	sbc $08F3C0.l,X		; FF C0 F3 08
	iny		; C8
	brk $01.b		; 00 01
	lda $B0DD70.l,X		; BF 70 DD B0
	sbc $B0EF89.l,X		; FF 89 EF B0
	inc $ACB0.w		; EE B0 AC
	adc ($6E.b,S),Y		; 73 6E
	beq -23.b		; F0 E9
	beq 118.b		; F0 76
	asl $3A.b		; 06 3A
	dey		; 88
	stz $8094.w		; 9C 94 80
	ldy #$A1.b		; A0 A1
	lda $216F23.l		; AF 23 6F 21
	sbc $03EEC6.l		; EF C6 EE 03
	brk $05.b		; 00 05
	ora $06.b,S		; 03 06
	ora $08.b,S		; 03 08
	ora [$08.b]		; 07 08
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$50.b]		; 07 50
	ora $020000.l		; 0F 00 00 02
	cop $00.b		; 02 00
	brk $06.b		; 00 06
	asl $04.b		; 06 04
	tsb $00.b		; 04 00
	brk $01.b		; 00 01
	ora ($0E.b,X)		; 01 0E
	asl $00E0.w		; 0E E0 00
	and [$C0.b],Y		; 37 C0
	sed		; F8
	eor [$E7.b]		; 47 E7
	tas		; 1B
	adc $5397.w		; 6D 97 53
	lda $C03FC2.l,X		; BF C2 3F C0
	and $800000.l,X		; 3F 00 00 80
	bra 103.b		; 80 67
	ora [$4C.b]		; 07 4C
	pha		; 48
	inc A		; 1A
	ora ($0C.b)		; 12 0C
	tsb $3939.w		; 0C 39 39
	and ($32.b)		; 32 32
	ora ($31.b),Y		; 11 31
	asl $0E20.w		; 0E 20 0E
	jsr $200E.w		; 20 0E 20
	asl $0E20.w		; 0E 20 0E
	jsr $200E.w		; 20 0E 20
	asl $0E20.w		; 0E 20 0E
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0C.b		; 00 0C
	jsr ($F88B.w,X)		; FC 8B F8
	phb		; 8B
	sed		; F8
	phb		; 8B
	sed		; F8
	sta [$DC.b]		; 87 DC
	sta $DC.b		; 85 DC
	ora $DC.b		; 05 DC
	cop $CE.b		; 02 CE
	cmp ($D0.b,S),Y		; D3 D0
	eor [$50.b],Y		; 57 50
	eor [$50.b],Y		; 57 50
	eor [$50.b],Y		; 57 50
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	phb		; 8B
	dey		; 88
	sta $84.b		; 85 84
	ora $00.b,S		; 03 00
	asl $0500.w		; 0E 00 05
	php		; 08
	cop $09.b		; 02 09
	ora $02.b		; 05 02
	phd		; 0B
	tsb $0F.b		; 04 0F
	brk $15.b		; 00 15
	asl A		; 0A
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	cop $06.b		; 02 06
	ora $04.b		; 05 04
	cop $00.b		; 02 00
	asl $02.b		; 06 02
	ora $05.b		; 05 05
	phd		; 0B
	ora ($8F.b,X)		; 01 8F
	eor $7D33F3.l		; 4F F3 33 7D
	sta $02FE.w		; 8D FE 02
	adc $00FF81.l,X		; 7F 81 FF 00
	lda [$5C.b],Y		; B7 5C
	ror $8D.b,X		; 76 8D
	ora [$7F.b]		; 07 7F
	ora ($3F.b,X)		; 01 3F
	sty $520F.w		; 8C 0F 52
	eor ($D5.b,S),Y		; 53 D5
	eor $B6.b,X		; 55 B6
	ldx $FE.b,Y		; B6 FE
	ldx #$FF.b		; A2 FF
	adc ($0E.b)		; 72 0E
	ora $1F.b,S		; 03 1F
	cop $1D.b		; 02 1D
	asl $1A.b		; 06 1A
	tsb $1C.b		; 04 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	tsb $0E.b		; 04 0E
	tsb $080E.w		; 0C 0E 08
	tsb $0008.w		; 0C 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	brk $74.b		; 00 74
	dey		; 88
.ACCU 8
.INDEX 8
	sep #$3C		; E2 3C
.ACCU 16
.INDEX 16
	rep #$FC		; C2 FC
	sta $39E6.w,Y		; 99 E6 39
	dec $DD.b		; C6 DD
	rol A		; 2A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne  16.b		; D0 10
	bit $24.b		; 24 24
	mvp $02,$44		; 44 44 02
	cop $20.b		; 02 20
	jsr $9867.w		; 20 67 98
	ldx $18.b		; A6 18
	stz $D8.b,X		; 74 D8
	cpy #$F04C.w		; C0 4C F0
	clc		; 18
	brk $30.b		; 00 30
	bra -80.b		; 80 B0
	brk $E0.b		; 00 E0
	clc		; 18
	clc		; 18
	php		; 08
	pha		; 48
	brk $40.b		; 00 40
	cld		; D8
	pla		; 68
	cpx #$E000.w		; E0 00 E0
	jsr $2060.w		; 20 60 20
	brk $00.b		; 00 00
	brk $33.b		; 00 33
	clc		; 18
	and ($0C.b,S),Y		; 33 0C
	and [$0C.b]		; 27 0C
	and [$0C.b]		; 27 0C
	and [$14.b]		; 27 14
	ror $30.b		; 66 30
	ror $18.b		; 66 18
	lsr $131F.w		; 4E 1F 13
	ora $021A03.l		; 0F 03 1A 02
	inc A		; 1A
	cop $1A.b		; 02 1A
	cop $38.b		; 02 38
	jsr $041C.w		; 20 1C 04
	bit $04.b,X		; 34 04
	bra -64.b		; 80 C0
	brk $60.b		; 00 60
	cpy #$8060.w		; C0 60 80
	jsr $30C0.w		; 20 C0 30
	cpx #$C030.w		; E0 30 C0
	bpl -32.b		; 10 E0
	bpl   0.b		; 10 00
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	jsr $00C0.w		; 20 C0 00
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	clc		; 18
	bvs  24.b		; 70 18
	rts		; 60

	php		; 08
	beq -116.b		; F0 8C
	clv		; B8
	sty $C470.w		; 8C 70 C4
	bvs -60.b		; 70 C4
	brk $C6.b		; 00 C6
	beq  16.b		; F0 10
	cpx #$F000.w		; E0 00 F0
	brk $78.b		; 00 78
	php		; 08
	bvs   0.b		; 70 00
	clv		; B8
	bra -72.b		; 80 B8
	bra 124.b		; 80 7C
	mvp $40,$B8		; 44 B8 40
	cmp #$5B81.w		; C9 81 5B
	ora $F7.b,S		; 03 F7
	eor $B66FB7.l		; 4F B7 6F B6
	eor $1E16A9.l		; 4F A9 16 1E
	brk $40.b		; 00 40
	eor ($30.b,X)		; 41 30
	lda ($21.b,S),Y		; B3 21
	lda [$03.b],Y		; B7 03
	ora $004F42.l		; 0F 42 4F 00
	ora $000610.l		; 0F 10 06 00
	brk $90.b		; 00 90
	cpx #$E090.w		; E0 90 E0
	ldy #$20C0.w		; A0 C0 20
	cpy #$8040.w		; C0 40 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($01.b,S),Y		; 33 01
	cop $01.b		; 02 01
	cop $00.b		; 02 00
	asl $0B01.w,X		; 1E 01 0B
	ora $0B.b,X		; 15 0B
	ora ($0B.b),Y		; 11 0B
	ora ($0A.b),Y		; 11 0A
	ora $00.b,X		; 15 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($04.b,X)		; 01 04
	ora $0D04.w		; 0D 04 0D
	tsb $0D.b		; 04 0D
	tsb $0D.b		; 04 0D
	inc $E1C1.w,X		; FE C1 E1
	cpy #$001E.w		; C0 1E 00
	inc $FEF3.w,X		; FE F3 FE
	sbc $FEFFFE.l,X		; FF FE FF FE
	sbc $C1FEFE.l,X		; FF FE FE C1
	cmp ($1E.b,X)		; C1 1E
	dec $ED00.w,X		; DE 00 ED
	brk $F3.b		; 00 F3
	jsr ($FCFF.w,X)		; FC FF FC
	sbc $7CFFFC.l,X		; FF FC FF 7C
	sbc $401F68.l,X		; FF 68 1F 40
	and $200F30.l,X		; 3F 30 0F 20
	ora $271F20.l,X		; 1F 20 1F 27
	clc		; 18
	pld		; 2B
	ora ($0D.b)		; 12 0D
	and $1616.w,X		; 3D 16 16
	dec A		; 3A
	dec A		; 3A
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	clc		; 18
	clc		; 18
	bpl  16.b		; 10 10
	bpl  22.b		; 10 16
	ora $0F.b		; 05 0F
	cmp #$D636.w		; C9 36 D6
	and #$867A.w		; 29 7A 86
	adc $D084.w,Y		; 79 84 D0
	tsb $0EF2.w		; 0C F2 0E
	bit $CF.b,X		; 34 CF
	inc $2023.w,X		; FE 23 20
	jsr $0101.w		; 20 01 01
	ora #$0F00.w		; 09 00 0F
	tsb $07.b		; 04 07
	tsb $0D.b		; 04 0D
	tsb $2BEB.w		; 0C EB 2B
	stz $54.b,X		; 74 54
	asl $0D20.w		; 0E 20 0D
	and ($0D.b,X)		; 21 0D
	and ($0D.b,X)		; 21 0D
	and ($0D.b,X)		; 21 0D
	and ($0E.b,X)		; 21 0E
	and $0E.b,S		; 23 0E
	and $0E.b,S		; 23 0E
	and $1F.b,S		; 23 1F
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1D.b		; 00 1D
	ora ($1D.b,X)		; 01 1D
	ora ($1D.b,X)		; 01 1D
	ora ($02.b,X)		; 01 02
	dec $8701.w		; CE 01 87
	ora ($87.b,X)		; 01 87
	brk $83.b		; 00 83
	brk $83.b		; 00 83
	brk $81.b		; 00 81
	brk $81.b		; 00 81
	brk $80.b		; 00 80
	sta $84.b		; 85 84
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000F00.l,X		; 1F 00 0F 00
	ora $000700.l		; 0F 00 07 00
	ora $00.b,S		; 03 00
	ora ($02.b,X)		; 01 02
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	phd		; 0B
	phd		; 0B
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ror $EEB7.w		; 6E B7 EE
	and [$EE.b],Y		; 37 EE
	adc [$EE.b],Y		; 77 EE
	eor [$DE.b],Y		; 57 DE
	sbc $6E2FDE.l		; EF DE 2F 6E
	sta $FFE0FF.l,X		; 9F FF E0 FF
	pha		; 48
	sbc $88FFC8.l,X		; FF C8 FF 88
	sbc $10FFA8.l,X		; FF A8 FF 10
	adc $809F50.l,X		; 7F 50 9F 80
	brk $00.b		; 00 00
	ora ($33.b)		; 12 33
	trb $307F.w		; 1C 7F 30
	adc $50DE10.l,X		; 7F 10 DE 50
	dec $9C00.w,X		; DE 00 9C
	cpy #$609C.w		; C0 9C 60
	sec		; 38
	tsb $2200.w		; 0C 00 22
	jsl $6C0E0E.l		; 22 0E 0E 6C
	jmp $0C2C.w		; 4C 2C 0C
	sed		; F8
	tya		; 98
	sei		; 78
	clc		; 18
	bne  16.b		; D0 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	inc $7E0C.w,X		; FE 0C 7E
	tsb $0C7E.w		; 0C 7E 0C
	ror $7E0C.w,X		; 7E 0C 7E
	php		; 08
	tda		; 7B
	php		; 08
	tda		; 7B
	asl A		; 0A
	tsa		; 3B
	mvp $30,$44		; 44 44 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  54.b		; 30 36
	and ($36.b)		; 32 36
	and ($14.b)		; 32 14
	bpl   0.b		; 10 00
	ora $01.b,S		; 03 01
	ora $6F0030.l		; 0F 30 00 6F
	ora $DF5FDF.l,X		; 1F DF 5F DF
	ora $7C5C8B.l,X		; 1F 8B 5C 7C
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	ora $4F1F00.l		; 0F 00 1F 4F
	and $407F4C.l,X		; 3F 4C 7F 40
	bit $0000.w,X		; 3C 00 00
	trb $76.b		; 14 76
	bpl 114.b		; 10 72
	clc		; 18
	ply		; 7A
	php		; 08
	ply		; 7A
	php		; 08
	dec A		; 3A
	php		; 08
	dec A		; 3A
	php		; 08
	tsa		; 3B
	brk $1B.b		; 00 1B
	plp		; 28
	jsr $202C.w		; 20 2C 20
	bit $20.b		; 24 20
	bit $30.b,X		; 34 30
	trb $10.b		; 14 10
	trb $10.b		; 14 10
	asl $12.b,X		; 16 12
	asl $1D0A.w		; 0E 0A 1D
	asl $3E.b		; 06 3E
	php		; 08
	dec A		; 3A
	tsb $083E.w		; 0C 3E 08
	ror $7410.w,X		; 7E 10 74
	clc		; 18
	jsr ($E810.w,X)		; FC 10 E8
	bmi  14.b		; 30 0E
	php		; 08
	trb $1C14.w		; 1C 14 1C
	bpl  24.b		; 10 18
	bpl  56.b		; 10 38
	plp		; 28
	sec		; 38
	jsr $6070.w		; 20 70 60
	bvs  64.b		; 70 40
	trb $7C70.w		; 1C 70 7C
	brk $7C.b		; 00 7C
	clc		; 18
	jmp $0C3A28.l		; 5C 28 3A 0C
	rol $2E18.w		; 2E 18 2E
	clc		; 18
	rol $201C.w		; 2E 1C 20
	jsr $0808.w		; 20 08 08
	sec		; 38
	jsr $1038.w		; 20 38 10
	trb $1C10.w		; 1C 10 1C
	tsb $1C.b		; 04 1C
	tsb $1C.b		; 04 1C
	brk $06.b		; 00 06
	ora ($08.b,S),Y		; 13 08
	and ($30.b,S),Y		; 33 30
	ora ($3E.b,S),Y		; 13 3E
	brk $3E.b		; 00 3E
	php		; 08
	jmp $107C28.l		; 5C 28 7C 10
	jmp ($0C10.w,X)		; 7C 10 0C
	brk $1E.b		; 00 1E
	ora ($0E.b)		; 12 0E
	cop $00.b		; 02 00
	brk $1C.b		; 00 1C
	trb $38.b		; 14 38
	bpl  56.b		; 10 38
	plp		; 28
	sec		; 38
	plp		; 28
	inx		; E8
	bmi -72.b		; 30 B8
	rts		; 60

	sed		; F8
	bmi  -4.b		; 30 FC
	bpl  -2.b		; 10 FE
	php		; 08
	cmp $000F04.l,X		; DF 04 0F 00
	brk $00.b		; 00 00
	bvs  64.b		; 70 40
	bvs  16.b		; 70 10
	bmi   0.b		; 30 00
	sec		; 38
	plp		; 28
	trb $0E14.w		; 1C 14 0E
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$A0C0.w		; C0 C0 A0
	bra  96.b		; 80 60
	rti		; 40

	cpx #$D080.w		; E0 80 D0
	jsr $00F0.w		; 20 F0 00
	beq -128.b		; F0 80
	tay		; A8
	bne -128.b		; D0 80
	cpx #$C000.w		; E0 00 C0
	brk $C0.b		; 00 C0
	bra -128.b		; 80 80
	rts		; 60

	rti		; 40

	ldy #$A0A0.w		; A0 A0 A0
	jsr $20F0.w		; 20 F0 20
	cld		; D8
	ldy #$A0D8.w		; A0 D8 A0
	pei ($A8.b)		; D4 A8
	cpx $FCD0.w		; EC D0 FC
	cpy #$C0F8.w		; C0 F8 C0
	beq  12.b		; F0 0C
	bne  60.b		; D0 3C
	beq  80.b		; F0 50
	beq  80.b		; F0 50
	sed		; F8
	bvc  -8.b		; 50 F8
	plp		; 28
	inx		; E8
	plp		; 28
	cpx #$C820.w		; E0 20 C8
	iny		; C8
	plp		; 28
	plp		; 28
	rol $3B11.w		; 2E 11 3B
	asl $17.b		; 06 17
	tsb $0A17.w		; 0C 17 0A
	ora [$08.b],Y		; 17 08
	ora $0302.w		; 0D 02 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A7.b		; 00 A7
	txa		; 8A
	sbc ($00.b,X)		; E1 00
	jmp.w [$FF3E]		; DC 3E FF
	lda $5C3FFF.l,X		; BF FF 3F 5C
	lda $BE00FF.l,X		; BF FF 00 BE
	adc $000A7A.l,X		; 7F 7A 0A 00
	asl $3F00.w,X		; 1E 00 3F
	sta $BF9E3F.l,X		; 9F 3F 9E BF
	bra  63.b		; 80 3F
	brk $00.b		; 00 00
	trb $097E.w		; 1C 7E 09
	ora ($1E.b)		; 12 1E
	ora ($6B.b,X)		; 01 6B
	bpl  53.b		; 10 35
	.db $42, $2A		; 42 2A
	eor $17.b		; 45 17
	plp		; 28
	and $053A00.l,X		; 3F 00 3A 05
	asl $0E.b		; 06 0E
	brk $01.b		; 00 01
	trb $1C.b		; 14 1C
	asl A		; 0A
	sec		; 38
	ora $30.b,X		; 15 30
	ora $0B05.w		; 0D 05 0B
	phd		; 0B
	ora [$12.b],Y		; 17 12
	adc $9F9F7F.l,X		; 7F 7F 9F 9F
	sbc [$67.b]		; E7 67
	ply		; 7A
	txs		; 9A
	sbc $FF05.w,X		; FD 05 FF
	jsl $EEA07F.l		; 22 7F A0 EE
	adc $FF1E.w,Y		; 79 1E FF
	asl $FF.b		; 06 FF
	cop $7F.b		; 02 7F
	tya		; 98
	ora $6AA7A4.l,X		; 1F A4 A7 6A
	lsr A		; 4A
	cpx $FD4C.w		; EC 4C FD
	sty $01.b		; 84 01
	ora [$02.b]		; 07 02
	asl $01.b		; 06 01
	tsb $01.b		; 04 01
	tsb $01.b		; 04 01
	tsb $01.b		; 04 01
	tsb $01.b		; 04 01
	tsb $01.b		; 04 01
	tsb $02.b		; 04 02
	cop $01.b		; 02 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $FF.b		; 00 FF
	cpy #$3F23.w		; C0 23 3F
	cmp ($1E.b)		; D2 1E
	cmp ($1E.b)		; D2 1E
	cmp ($1E.b)		; D2 1E
	cmp ($1F.b),Y		; D1 1F
	cmp ($1F.b),Y		; D1 1F
	cmp ($1F.b,X)		; C1 1F
	brk $00.b		; 00 00
	cld		; D8
	clc		; 18
	sbc #$E908.w		; E9 08 E9
	php		; 08
	sbc #$E208.w		; E9 08 E2
	cop $E2.b		; 02 E2
	cop $F2.b		; 02 F2
	ora ($01.b)		; 12 01
	brk $02.b		; 00 02
	ora ($05.b,X)		; 01 05
	ora $4A.b,S		; 03 4A
	ora [$74.b]		; 07 74
	ora $603F40.l		; 0F 40 3F 60
	ora $003FD0.l,X		; 1F D0 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $3C.b		; 02 3C
	bit $0D0D.w,X		; 3C 0D 0D
	and $F02D.w		; 2D 2D F0
	brk $C8.b		; 00 C8
	beq  63.b		; F0 3F
	cpy #$8778.w		; C0 78 87
	adc [$9B.b]		; 67 9B
	adc $5397.w		; 6D 97 53
	lda $00BF42.l,X		; BF 42 BF 00
	brk $20.b		; 00 20
	jsr $0000.w		; 20 00 00
	and [$27.b],Y		; 37 27
	bit $1A28.w		; 2C 28 1A
	ora ($0C.b)		; 12 0C
	tsb $3939.w		; 0C 39 39
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
	bvs -32.b		; 70 E0
	inx		; E8
	bmi -72.b		; 30 B8
	rts		; 60

	sed		; F8
	bmi  -4.b		; 30 FC
	bpl  -2.b		; 10 FE
	php		; 08
	cmp $000F04.l,X		; DF 04 0F 00
	cpx #$7000.w		; E0 00 70
	rti		; 40

	bvs  16.b		; 70 10
	bmi   0.b		; 30 00
	sec		; 38
	plp		; 28
	trb $0E14.w		; 1C 14 0E
	asl A		; 0A
	brk $00.b		; 00 00
	cpx #$F03E.w		; E0 3E F0
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $E3FF87.l,X		; FF 87 FF E3
	brk $9B.b		; 00 9B
	adc ($DD.b,X)		; 61 DD
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	brk $FF.b		; 00 FF
	sbc $FF01FF.l,X		; FF FF 01 FF
	brk $1C.b		; 00 1C
	rts		; 60

	sbc $28.b		; E5 28
	nop		; EA
	stz $3420.w,X		; 9E 20 34
	.db $42, $EC		; 42 EC
	bpl  36.b		; 10 24
	bpl -36.b		; 10 DC
	jsr $40E8.w		; 20 E8 40
	cpy #$4080.w		; C0 80 40
	bra  96.b		; 80 60
	sbc $C8.b		; E5 C8
	cpy $1010.w		; CC 10 10
	cld		; D8
	cld		; D8
	brk $A8.b		; 00 A8
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $87.b		; 00 87
	eor $47.b		; 45 47
	adc #$ED69.w		; 69 69 ED
	adc $04FC.w		; 6D FC 04
	sta [$00.b]		; 87 00
	rti		; 40

	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $01.b		; 00 01
	sbc $09FF01.l,X		; FF 01 FF 09
	adc $000704.l,X		; 7F 04 07 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $A0.b		; 00 A0
	rti		; 40

	ldy #$A040.w		; A0 40 A0
	rti		; 40

	bvc -96.b		; 50 A0
	bne  32.b		; D0 20
	bcs -64.b		; B0 C0
	cpx #$C080.w		; E0 80 C0
	bmi  64.b		; 30 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	rti		; 40

	jsr $4020.w		; 20 20 40
	beq  32.b		; F0 20
	bmi -64.b		; 30 C0
	clc		; 18
	beq  24.b		; F0 18
	cpx #$F008.w		; E0 08 F0
	tsb $0C78.w		; 0C 78 0C
	bvs   4.b		; 70 04
	ldy #$C0A0.w		; A0 A0 C0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	sed		; F8
	brk $B8.b		; 00 B8
	sty $B8.b		; 84 B8
	stx $5C.b		; 86 5C
	dec $58.b		; C6 58
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	sbc $2E.b,S		; E3 2E
	sbc $1C.b,S		; E3 1C
	adc ($1C.b),Y		; 71 1C
	adc ($78.b),Y		; 71 78
	brk $7C.b		; 00 7C
	tsb $B8.b		; 04 B8
	bra -68.b		; 80 BC
	bra  94.b		; 80 5E
	.db $42, $5C		; 42 5C
	rti		; 40

	rol $2E20.w		; 2E 20 2E
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0E00.w		; 0C 00 0E
	brk $05.b		; 00 05
	php		; 08
	php		; 08
	ora ($09.b),Y		; 11 09
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $02.b		; 04 02
	asl $07.b		; 06 07
	ora $BE0E06.l		; 0F 06 0E BE
	adc $821C8F.l,X		; 7F 8F 1C 82
	rts		; 60

	lda ($7C.b)		; B2 7C
	lda $7FBF7E.l,X		; BF 7E BF 7F
	sbc $FF7F7F.l,X		; FF 7F 7F FF
	trb $007E.w		; 1C 7E 00
	jmp ($7D01.w,X)		; 7C 01 7D
	ora ($7D.b,X)		; 01 7D
	clc		; 18
	ror $7F1E.w,X		; 7E 1E 7F
	and $FF3E7F.l,X		; 3F 7F 3E FF
	lsr $7523.w,X		; 5E 23 75
	asl A		; 0A
	and $3F02.w,X		; 3D 02 3F
	tsb $17.b		; 04 17
	ora #$010F.w		; 09 0F 01
	ora [$00.b]		; 07 00
	ora ($06.b,X)		; 01 06
	and [$14.b],Y		; 37 14
	and $0D0F25.l		; 2F 25 0F 0D
	ora $0B19.w,X		; 1D 19 0B
	cop $03.b		; 02 03
	cop $01.b		; 02 01
	ora ($02.b,X)		; 01 02
	cop $DC.b		; 02 DC
	rtl		; 6B

	cmp $DDEA.w,X		; DD EA DD
	xba		; EB
	cmp $BDAF.w,X		; DD AF BD
	cmp $BDDFBD.l,X		; DF BD DF BD
	eor $FF3EDD.l,X		; 5F DD 3E FF
	sty $FF.b,X		; 94 FF
	ora $FF.b,X		; 15 FF
	trb $FF.b		; 14 FF
	bvc  -1.b		; 50 FF
	jsr $20FF.w		; 20 FF 20
	sbc $013FA0.l,X		; FF A0 3F 01
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cpy #$C01B.w		; C0 1B C0
	tas		; 1B
	ldy #$A031.w		; A0 31 A0
	and ($A0.b),Y		; 31 A0
	bmi -96.b		; 30 A0
	bmi -64.b		; 30 C0
	bvs -64.b		; 70 C0
	bvs -15.b		; 70 F1
	ora ($F1.b),Y		; 11 F1
	ora ($C0.b),Y		; 11 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	jsr $20A0.w		; 20 A0 20
	bvs  -1.b		; 70 FF
	rti		; 40

	sbc $11FE01.l,X		; FF 01 FE 11
	inc $DC23.w		; EE 23 DC
	bit $D8.b		; 24 D8
	and [$D8.b]		; 27 D8
	tda		; 7B
	sta [$09.b]		; 87 09
	ora #$B2B2.w		; 09 B2 B2
	cpy $C4.b		; C4 C4
	dey		; 88
	dey		; 88
	dey		; 88
	dey		; 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C93F.w		; C0 3F C9
	rol $D6.b,X		; 36 D6
	and #$06BA.w		; 29 BA 06
	and $1004.w,Y		; 39 04 10
	tsb $0EF2.w		; 0C F2 0E
	jmp ($3247.w,X)		; 7C 47 32
	and ($20.b)		; 32 20
	jsr $0101.w		; 20 01 01
	ora #$0F00.w		; 09 00 0F
	tsb $07.b		; 04 07
	tsb $0D.b		; 04 0D
	tsb $D313.w		; 0C 13 D3
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$0040.w		; C0 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$E080.w		; C0 80 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	cop $1B.b		; 02 1B
	asl A		; 0A
	tas		; 1B
	cop $33.b		; 02 33
	trb $37.b		; 14 37
	tsb $27.b		; 04 27
	trb $67.b		; 14 67
	sec		; 38
	ror $4E18.w		; 6E 18 4E
	ora $0509.w		; 0D 09 05
	ora ($1D.b,X)		; 01 1D
	ora ($0B.b),Y		; 11 0B
	ora $1A.b,S		; 03 1A
	cop $3A.b		; 02 3A
	jsl $340414.l		; 22 14 04 34
	tsb $00.b		; 04 00
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
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $C6.b		; 00 C6
	sec		; 38
	inc $7E0C.w,X		; FE 0C 7E
	tsb $0C7E.w		; 0C 7E 0C
	ror $7E0C.w,X		; 7E 0C 7E
	php		; 08
	tda		; 7B
	php		; 08
	tda		; 7B
	jmp ($4444.w,X)		; 7C 44 44
	mvp $30,$30		; 44 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	rol $32.b,X		; 36 32
	rol $32.b,X		; 36 32
	trb $76.b		; 14 76
	trb $76.b		; 14 76
	bpl 114.b		; 10 72
	clc		; 18
	ply		; 7A
	php		; 08
	ply		; 7A
	php		; 08
	dec A		; 3A
	php		; 08
	dec A		; 3A
	php		; 08
	tsa		; 3B
	plp		; 28
	jsr $2028.w		; 20 28 20
	bit $2420.w		; 2C 20 24
	jsr $3034.w		; 20 34 30
	trb $10.b		; 14 10
	trb $10.b		; 14 10
	asl $12.b,X		; 16 12
	ora $040F03.l		; 0F 03 0F 04
	ora $030E02.l		; 0F 02 0E 03
	ora [$0C.b],Y		; 17 0C
	ora $1D06.w,X		; 1D 06 1D
	asl $2E.b		; 06 2E
	clc		; 18
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora [$05.b]		; 07 05
	ora [$04.b]		; 07 04
	asl $0E02.w		; 0E 02 0E
	php		; 08
	asl $1C08.w		; 0E 08 1C
	tsb $3A.b		; 04 3A
	tsb $285E.w		; 0C 5E 28
	jmp $187430.l		; 5C 30 74 18
	clv		; B8
	bvc -24.b		; 50 E8
	bmi -48.b		; 30 D0
	jsr $00E0.w		; 20 E0 00
	trb $3810.w		; 1C 10 38
	bpl  56.b		; 10 38
	php		; 08
	sec		; 38
	jsr $2070.w		; 20 70 20
	bvs  64.b		; 70 40
	rts		; 60

	rti		; 40

	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
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
	trb $0447.w		; 1C 47 04
	lsr $38.b		; 46 38
	inc $FE60.w,X		; FE 60 FE
	jsr $A0BC.w		; 20 BC A0
	ldy $3820.w,X		; BC 20 38
	rti		; 40

	sei		; 78
	dec A		; 3A
	cop $38.b		; 02 38
	brk $44.b		; 00 44
	mvp $1C,$1C		; 44 1C 1C
	cld		; D8
	tya		; 98
	cli		; 58
	clc		; 18
	bne  16.b		; D0 10
	bcs  48.b		; B0 30
	trb $26.b		; 14 26
	bpl 102.b		; 10 66
	sec		; 38
	ror $4C08.w		; 6E 08 4C
	beq  60.b		; F0 3C
	jsr ($F840.w,X)		; FC 40 F8
	jsr $30E8.w		; 20 E8 30
	clc		; 18
	brk $3C.b		; 00 3C
	bit $14.b		; 24 14
	tsb $30.b		; 04 30
	brk $08.b		; 00 08
	php		; 08
	rti		; 40

	brk $70.b		; 00 70
	bvc 112.b		; 50 70
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
	brk $74.b		; 00 74
	dey		; 88
.ACCU 8
.INDEX 8
	sep #$3C		; E2 3C
.ACCU 16
.INDEX 16
	rep #$FC		; C2 FC
	sta $39E6.w,Y		; 99 E6 39
	dec $00.b		; C6 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	bpl  36.b		; 10 24
	bit $44.b		; 24 44
	mvp $02,$02		; 44 02 02
	cmp $672A.w,X		; DD 2A 67
	tya		; 98
	ldx $18.b		; A6 18
	stz $D8.b,X		; 74 D8
	cpy #$F04C.w		; C0 4C F0
	clc		; 18
	brk $30.b		; 00 30
	bra -80.b		; 80 B0
	jsr $1820.w		; 20 20 18
	clc		; 18
	php		; 08
	pha		; 48
	brk $40.b		; 00 40
	cld		; D8
	pla		; 68
	cpx #$E000.w		; E0 00 E0
	jsr $2060.w		; 20 60 20
	brk $6C.b		; 00 6C
	trb $7C70.w		; 1C 70 7C
	brk $7C.b		; 00 7C
	clc		; 18
	jmp $0C3A28.l		; 5C 28 3A 0C
	rol $2E18.w		; 2E 18 2E
	clc		; 18
	sec		; 38
	plp		; 28
	jsr $0820.w		; 20 20 08
	php		; 08
	sec		; 38
	jsr $1038.w		; 20 38 10
	trb $1C10.w		; 1C 10 1C
	tsb $1C.b		; 04 1C
	tsb $01.b		; 04 01
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvp $00,$00		; 44 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $02.b		; 00 02
	bpl   0.b		; 10 00
	brk $40.b		; 00 40
	bit $44.b		; 24 44
	bra  64.b		; 80 40
	bra  13.b		; 80 0D
	jsl $000A20.l		; 22 20 0A 00
	cop $41.b		; 02 41
	rti		; 40

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
	brk $28.b		; 00 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	brk $00.b		; 00 00
	ora ($10.b,X)		; 01 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $0000.w		; 1C 00 00
	lda ($00.b,X)		; A1 00
	brk $80.b		; 00 80
	php		; 08
	brk $01.b		; 00 01
	and ($40.b,X)		; 21 40
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	bra -128.b		; 80 80
	brk $40.b		; 00 40
	clc		; 18
	pha		; 48
	and ($88.b,X)		; 21 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $20.b		; 00 20
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora $01.b		; 05 01
	tay		; A8
	brk $64.b		; 00 64
	asl $2801.w		; 0E 01 28
	brk $04.b		; 00 04
	rti		; 40

	bra -48.b		; 80 D0
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
	jsr $0000.w		; 20 00 00
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	php		; 08
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $28.b		; 00 28
	bpl   8.b		; 10 08
	bpl   0.b		; 10 00
	cop $80.b		; 02 80
	cpy #$11C0.w		; C0 C0 11
	ldx #$0414.w		; A2 14 04
	php		; 08
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $80.b		; 00 80
	brk $04.b		; 00 04
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	bpl  64.b		; 10 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $01.b		; 04 01
	.db $82, $00, $80		; 82 00 80
	brk $00.b		; 00 00
	bra -122.b		; 80 86
	brk $8A.b		; 00 8A
	cpy $08.b		; C4 08
	bit $02.b		; 24 02
	ora $D8.b,S		; 03 D8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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

	.db $82, $00, $00		; 82 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	clc		; 18
	lsr A		; 4A
	rts		; 60

	brk $A8.b		; 00 A8
	brk $40.b		; 00 40
	bpl  16.b		; 10 10
	bit $50.b		; 24 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	jsr $001D.w		; 20 1D 00
	brk $00.b		; 00 00
	mvp $10,$02		; 44 02 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $02.b		; 04 02
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0010.w		; 20 10 00
	rti		; 40

	brk $0A.b		; 00 0A
	ora ($80.b,X)		; 01 80
	brk $90.b		; 00 90
	rti		; 40

	eor [$88.b]		; 47 88
	bvc   8.b		; 50 08
	bra  65.b		; 80 41
	tya		; 98
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
	php		; 08
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	jsr $0060.w		; 20 60 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	jsr $0000.w		; 20 00 00
	tsb $00.b		; 04 00
	php		; 08
	jsr $8000.w		; 20 00 80
	bpl  64.b		; 10 40
	sta ($94.b),Y		; 91 94
	tsb $00.b		; 04 00
	bvc -128.b		; 50 80
	brk $09.b		; 00 09
	ldy #$C808.w		; A0 08 C8
	lda ($21.b),Y		; B1 21
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $80.b		; 00 80
	brk $0A.b		; 00 0A
	bpl   0.b		; 10 00
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $20.b		; 02 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $22.b		; 00 22
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	php		; 08
	brk $38.b		; 00 38
	ora ($08.b)		; 12 08
	php		; 08
	bpl   0.b		; 10 00
	tsb $00.b		; 04 00
	brk $04.b		; 00 04
	tsb $08.b		; 04 08
	brk $01.b		; 00 01
	brk $14.b		; 00 14
	brk $80.b		; 00 80
	bpl   4.b		; 10 04
	ora ($81.b)		; 12 81
	.db $80		; Opcode 80 overrunning bank boundry at 10FFFF. Skipping.
.ENDS
