.BANK 20 SLOT 0
.ORG $0000

.SECTION "Bank20" FORCE

	brk $07.b		; 00 07
	cop $0D.b		; 02 0D
	asl $0B.b		; 06 0B
	tsb $1F.b		; 04 1F
	tsb $0D16.w		; 0C 16 0D
	bit $2B1B.w,X		; 3C 1B 2B
	ora $0739.w,Y		; 19 39 07
	ora $07.b		; 05 07
	ora $0F.b,S		; 03 0F
	ora $030F.w		; 0D 0F 03
	asl $1C1B.w,X		; 1E 1B 1C
	ora $38.b,S		; 03 38
	and [$39.b],Y		; 37 39
	ora [$8B.b]		; 07 8B
	sei		; 78
	ora $FC.b		; 05 FC
	cop $F6.b		; 02 F6
	eor ($B9.b,X)		; 41 B9
	bpl -17.b		; 10 EF
	inx		; E8
	sbc [$64.b],Y		; F7 64
	rtl		; 6B

	sta $E0E780.l		; 8F 80 E7 E0
	xba		; EB
	inx		; E8
	sta $7E9C.w,X		; 9D 9C 7E
	lsr $1E.b		; 46 1E
	cmp ($0F.b)		; D2 0F
	sbc #$F447.w		; E9 47 F4
	sta ($F1.b,X)		; 81 F1
	beq  24.b		; F0 18
	bra  56.b		; 80 38
	cpy #$001E.w		; C0 1E 00
	rol $FD03.w,X		; 3E 03 FD
	eor [$F8.b]		; 47 F8
	phd		; 0B
	beq  50.b		; F0 32
	cpy #$00E0.w		; C0 E0 00
	beq  80.b		; F0 50
	inc $DE09.w		; EE 09 DE
	ora ($1C.b,S),Y		; 13 1C
	asl $19.b		; 06 19
	asl $9491.w		; 0E 91 94
	cmp ($4C.b,X)		; C1 4C
	brk $00.b		; 00 00
	bmi 112.b		; 30 70
	sec		; 38
	sei		; 78
	cli		; 58
	clv		; B8
	plp		; 28
	tya		; 98
	tya		; 98
	iny		; C8
	clv		; B8
	cli		; 58
	tya		; 98
	sec		; 38
	brk $70.b		; 00 70
	bmi 120.b		; 30 78
	sec		; 38
	jsr ($7C18.w,X)		; FC 18 7C
	brk $7C.b		; 00 7C
	php		; 08
	bit $3C88.w,X		; 3C 88 3C
	dey		; 88
	jmp ($7C39.w,X)		; 7C 39 7C
	and $307C.w,X		; 3D 7C 30
	adc $307837.l,X		; 7F 37 78 30
	adc $177738.l,X		; 7F 38 77 17
	and $3F3F0F.l,X		; 3F 0F 3F 3F
	tsb $7B.b		; 04 7B
	rti		; 40

	adc [$07.b],Y		; 77 07
	adc [$07.b],Y		; 77 07
	adc [$40.b],Y		; 77 40
	bmi   8.b		; 30 08
	bmi  15.b		; 30 0F
	rol $2F.b,X		; 36 2F
	sta ($EE.b),Y		; 91 EE
	ora ($ED.b)		; 12 ED
	cop $FD.b		; 02 FD
	cop $FD.b		; 02 FD
	ora ($FE.b,X)		; 01 FE
	ora #$0976.w		; 09 76 09
	inc $89.b,X		; F6 89
	ror $58.b,X		; 76 58
	eor ($96.b),Y		; 51 96
	sta ($56.b)		; 92 56
	.db $42, $EA		; 42 EA
	.db $62, $6B, $61		; 62 6B 61
	tad		; 5B
	cmp #$891B.w		; C9 1B 89
	tas		; 1B
	bit #$1F3E.w		; 89 3E 1F
	ora ($FE.b,X)		; 01 FE
	eor #$48B6.w		; 49 B6 48
	lda [$6C.b],Y		; B7 6C
	sta ($66.b,S),Y		; 93 66
	sta $CF30.w,Y		; 99 30 CF
	clc		; 18
	sbc [$1E.b]		; E7 1E
	dec $0101.w,X		; DE 01 01
	stp		; DB
	eor #$48DB.w		; 49 DB 48
	sbc $EE6C.w,X		; FD 6C EE
	ror $76.b		; 66 76
	bmi 122.b		; 30 7A
	clc		; 18
	rti		; 40

	bcs  32.b		; B0 20
	jmp.w [$4EB0]		; DC B0 4E
	iny		; C8
	tsa		; 3B
	eor ($B1.b),Y		; 51 B1
	and $E02FE0.l		; 2F E0 2F E0
	ora [$F0.b],Y		; 17 F0
	rti		; 40

	rti		; 40

	rts		; 60

	jsr $B0B0.w		; 20 B0 B0
	sbc [$C3.b]		; E7 C3
	dec $9F40.w		; CE 40 9F
	brk $1F.b		; 00 1F
	brk $EF.b		; 00 EF
	cpx #$38CF.w		; E0 CF 38
	rtl		; 6B

	clc		; 18
	lda ($88.b,S),Y		; B3 88
	eor [$CC.b],Y		; 57 CC
	and $12E4.w,Y		; 39 E4 12
	ror $01.b,X		; 76 01
	tsa		; 3B
	brk $0F.b		; 00 0F
	sbc [$20.b]		; E7 20
	sbc [$00.b]		; E7 00
	adc $80B308.l,X		; 7F 08 B3 80
	eor $242D44.l,X		; 5F 44 2D 24
	asl $000A.w		; 0E 0A 00
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	rti		; 40

	cpy #$C040.w		; C0 40 C0
	rti		; 40

	bra  64.b		; 80 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C040.w		; C0 40 C0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $FA.b		; 00 FA
	brk $8F.b		; 00 8F
	ora $9F.b,S		; 03 9F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	bvs 112.b		; 70 70
	adc [$60.b]		; 67 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	brk $F0.b		; 00 F0
	brk $FD.b		; 00 FD
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00C0.w		; C0 C0 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$01.b]		; 07 01
	ora $040B04.l		; 0F 04 0B 04
	tas		; 1B
	tsb $0233.w		; 0C 33 02
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	brk $05.b		; 00 05
	tsb $05.b		; 04 05
	brk $0D.b		; 00 0D
	tsb $050D.w		; 0C 0D 05
	ora $FF7F1F.l,X		; 1F 1F 7F FF
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
	cpx #$30F8.w		; E0 F8 30
	jsr ($FC68.w,X)		; FC 68 FC
	pha		; 48
	ldy $18A0.w,X		; BC A0 18
	cpy #$8038.w		; C0 38 80
	bvs -24.b		; 70 E8
	brk $F0.b		; 00 F0
	brk $B8.b		; 00 B8
	brk $78.b		; 00 78
	brk $28.b		; 00 28
	bra   8.b		; 80 08
	rti		; 40

	bpl -128.b		; 10 80
	jsr $0000.w		; 20 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	ora $0A.b,S		; 03 0A
	ora [$0A.b]		; 07 0A
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $03.b,S		; 03 03
	ora [$02.b]		; 07 02
	ora $003F02.l,X		; 1F 02 3F 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	eor $3F7D39.l,X		; 5F 39 7D 3F
	jmp ($387B.w,X)		; 7C 7B 38
	adc ($78.b,S),Y		; 73 78
	ror $F8.b,X		; 76 F8
	ror $65F8.w,X		; 7E F8 65
	sbc ($3B.b),Y		; F1 3B
	and $7E.b,S		; 23 7E
	mvp $00,$7B		; 44 7B 00
	adc $007740.l,X		; 7F 40 77 00
	adc $80F708.l,X		; 7F 08 F7 80
	inc $C900.w		; EE 00 C9
	cpx #$901F.w		; E0 1F 90
	bit $1870.w,X		; 3C 70 18
	bvs -81.b		; 70 AF
	bne  23.b		; D0 17
	dec $9C4B.w		; CE 4B 9C
	lsr $A8.b		; 46 A8
	bra -10.b		; 80 F6
	bra  -9.b		; 80 F7
	bra  55.b		; 80 37
	bra  55.b		; 80 37
	brk $30.b		; 00 30
	sty $BE.b		; 84 BE
	cpy #$60FD.w		; C0 FD 60
	tad		; 5B
	inc $FA01.w		; EE 01 FA
	brk $6E.b		; 00 6E
	brk $DE.b		; 00 DE
	jsr $00D2.w		; 20 D2 00
	txs		; 9A
	brk $EE.b		; 00 EE
	bpl  72.b		; 10 48
	dec A		; 3A
	brk $5C.b		; 00 5C
	jsr $20BC.w		; 20 BC 20
	bcs  32.b		; B0 20
	tsb $00.b		; 04 00
	bit $6400.w		; 2C 00 64
	brk $D0.b		; 00 D0
	php		; 08
	ldy $3838.w,X		; BC 38 38
	sec		; 38
	sed		; F8
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	bmi 112.b		; 30 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tya		; 98
	jmp ($7C18.w,X)		; 7C 18 7C
	clc		; 18
	jsr ($FC10.w,X)		; FC 10 FC
	brk $F8.b		; 00 F8
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0F0E3F.l		; 0F 3F 0E 0F
	ora $1E0C0E.l,X		; 1F 0E 0C 1E
	asl $1C1D.w,X		; 1E 1D 1C
	ora $1F18.w,X		; 1D 18 1F
	bit $161B.w,X		; 3C 1B 16
	ora $0C1F06.l,X		; 1F 06 1F 0C
	ora $0C1F0C.l,X		; 1F 0C 1F 0C
	asl $3E09.w,X		; 1E 09 3E
	ora $183C.w,Y		; 19 3C 18
	bit $7609.w,X		; 3C 09 76
	brk $FF.b		; 00 FF
	brk $EB.b		; 00 EB
	asl $DD.b		; 06 DD
	sta [$0C.b]		; 87 0C
	sta $C4.b,S		; 83 C4
	ora ($E4.b,X)		; 01 E4
	adc ($1C.b,X)		; 61 1C
	tas		; 1B
	bit #$00C3.w		; 89 C3 00
	cpy $40.b		; C4 40
	.db $82, $80, $03		; 82 80 03
	brk $87.b		; 00 87
	tsb $03.b		; 04 03
	brk $F3.b		; 00 F3
	bpl -120.b		; 10 88
	adc [$C0.b],Y		; 77 C0
	rol $9860.w,X		; 3E 60 98
	brk $F8.b		; 00 F8
	cpx #$E038.w		; E0 38 E0
	sec		; 38
	cpy #$D010.w		; C0 10 D0
	bpl -72.b		; 10 B8
	dey		; 88
	bne -64.b		; D0 C0
	cpx #$1060.w		; E0 60 10
	bpl -48.b		; 10 D0
	bpl -48.b		; 10 D0
	bpl -16.b		; 10 F0
	bpl -32.b		; 10 E0
	brk $05.b		; 00 05
	jsr ($0F01.w,X)		; FC 01 0F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tas		; 1B
	clc		; 18
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $62, $EE, $E1		; 62 EE E1
	sbc [$E0.b]		; E7 E0
	sbc $E0.b,S		; E3 E0
	sbc ($60.b,X)		; E1 60
	ldy #$2060.w		; A0 60 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $E4.b		; 45 E4
	.db $42, $E2		; 42 E2
	sbc ($E1.b,X)		; E1 E1
	cpx #$20E0.w		; E0 E0 20
	cpx #$6000.w		; E0 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	bra  56.b		; 80 38
	cpy #$001C.w		; C0 1C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	cpx #$F020.w		; E0 20 F0
	bpl -28.b		; 10 E4
	inc A		; 1A
	ror $19.b,X		; 76 19
	jsl $7F00FD.l		; 22 FD 00 7F
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pea $E614.w		; F4 14 E6
	asl $5E.b		; 06 5E
	.db $42, $0E		; 42 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($F8.b,X)		; 01 F8
	sbc ($E0.b,S),Y		; F3 E0
	sbc ($E0.b,S),Y		; F3 E0
	sbc ($F0.b,S),Y		; F3 F0
	sbc $C3EFF0.l		; EF F0 EF C3
	sbc $FFC1.w,X		; FD C1 FF
	cpx #$61DE.w		; E0 DE 61
	sed		; F8
	adc ($F8.b,X)		; 61 F8
	rts		; 60

	sed		; F8
	jmp ($40F0.w)		; 6C F0 40
	beq  70.b		; F0 46
	sep #$44		; E2 44
	cpx #$E041.w		; E0 41 E0
	trb $1F2C.w		; 1C 2C 1F
	rol $0D.b,X		; 36 0D
	plp		; 28
	ora $26.b,X		; 15 26
	and $3D66.w,X		; 3D 66 3D
	ror $19.b		; 66 19
	lsr $10.b		; 46 10
	eor [$28.b]		; 47 28
	and $302E20.l,X		; 3F 20 2E 30
	rol $3A.b		; 26 3A
	jsl $180018.l		; 22 18 00 18
	brk $7C.b		; 00 7C
	mvp $40,$78		; 44 78 40
	cpy #$B23D.w		; C0 3D B2
	ora $FF07C8.l		; 0F C8 07 FF
	brk $CF.b		; 00 CF
	ora ($77.b,X)		; 01 77
	ora ($4F.b,X)		; 01 4F
	brk $3F.b		; 00 3F
	ora $1A.b,S		; 03 1A
	php		; 08
	php		; 08
	cpy #$F202.w		; C0 02 F2
	brk $38.b		; 00 38
	ora ($30.b,X)		; 01 30
	ora ($8C.b,X)		; 01 8C
	brk $BC.b		; 00 BC
	ora ($C3.b,X)		; 01 C3
	lsr $DE85.w,X		; 5E 85 DE
	ora ($9F.b,X)		; 01 9F
	ora ($F6.b,X)		; 01 F6
	brk $FF.b		; 00 FF
	php		; 08
	sbc $88F308.l,X		; FF 08 F3 88
	cmp [$CC.b],Y		; D7 CC
	cpy #$836C.w		; C0 6C 83
	lda ($06.b,X)		; A1 06
	bvs  15.b		; 70 0F
	rts		; 60

	ora [$00.b]		; 07 00
	ora [$60.b]		; 07 60
	sta $E08388.l		; 8F 88 83 E0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	cpy #$60A0.w		; C0 A0 60
	bne -32.b		; D0 E0
	bne -32.b		; D0 E0
	bne   0.b		; D0 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	rts		; 60

	rts		; 60

	cpx #$60A0.w		; E0 A0 60
	jsr $2060.w		; 20 60 20
	sta ($6E.b),Y		; 91 6E
	sta ($6E.b),Y		; 91 6E
	ora ($FE.b,X)		; 01 FE
	php		; 08
	cmp $1DC35A.l		; CF 5A C3 1D
	cmp ($1E.b,X)		; C1 1E
	cpy #$E0BF.w		; C0 BF E0
	lda [$95.b],Y		; B7 95
	lda [$95.b],Y		; B7 95
	sta $81.b,S		; 83 81
	beq -64.b		; F0 C0
	lda $7E81.w,X		; BD 81 7E
	rti		; 40

	adc $001F40.l,X		; 7F 40 1F 00
	and $D7.b,S		; 23 D7
	sta [$73.b]		; 87 73
	sta [$63.b]		; 87 63
	ora ($C3.b,X)		; 01 C3
	ora ($83.b,X)		; 01 83
	ora $81.b,S		; 03 81
	sta $81.b,S		; 83 81
	ora $41.b,S		; 03 41
	adc ($3F.b),Y		; 71 3F
	lda ($AF.b,X)		; A1 AF
	sta ($87.b,X)		; 81 87
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	bra -125.b		; 80 83
	brk $03.b		; 00 03
	bra   3.b		; 80 03
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	cop $0D.b		; 02 0D
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora $01.b,S		; 03 01
	ora [$06.b]		; 07 06
	tsb $3F7F.w		; 0C 7F 3F
	sbc $48FF26.l,X		; FF 26 FF 48
	sbc $CEFF51.l,X		; FF 51 FF CE
	sbc ($12.b),Y		; F1 12
	tay		; A8
	ror $9FB8.w		; 6E B8 9F
	bra  63.b		; 80 3F
	brk $7F.b		; 00 7F
	brk $EE.b		; 00 EE
	brk $D9.b		; 00 D9
	brk $D0.b		; 00 D0
	brk $C1.b		; 00 C1
	tsb $8AC9.w		; 0C C9 8A
	brk $80.b		; 00 80
	cpy #$E0E0.w		; C0 E0 E0
	beq -32.b		; F0 E0
	bpl -32.b		; 10 E0
	bpl   0.b		; 10 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	cpx #$E0E0.w		; E0 E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $FA.b		; 00 FA
	brk $8F.b		; 00 8F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	bvs 112.b		; 70 70
	sta $BF.b,S		; 83 BF
	bra -65.b		; 80 BF
	cpy #$C080.w		; C0 80 C0
	bra -128.b		; 80 80
	cpy #$C080.w		; C0 80 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$FCBC.w		; C0 BC FC
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	cpy #$E0E0.w		; C0 E0 E0
	cpx #$E0E0.w		; E0 E0 E0
	rts		; 60

	bvs  26.b		; 70 1A
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -32.b		; 80 E0
	cpy #$E0E0.w		; C0 E0 E0
	beq  96.b		; F0 60
	sed		; F8
	clc		; 18
	inc $0E00.w,X		; FE 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	cpy #$D2FF.w		; C0 FF D2
	asl $00FF.w,X		; 1E FF 00
	and $E02F00.l,X		; 3F 00 2F E0
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bmi  48.b		; 30 30
	sbc $FF0C.w		; ED 0C FF
	brk $FF.b		; 00 FF
	brk $DF.b		; 00 DF
	cpy #$0000.w		; C0 00 00
	brk $C0.b		; 00 C0
	sbc ($03.b,S),Y		; F3 03
	jsr ($FF00.w,X)		; FC 00 FF
	brk $8F.b		; 00 8F
	ora $00FF00.l		; 0F 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$06.b]		; 07 06
	asl $1C14.w		; 0E 14 1C
	trb $14.b		; 14 14
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora $0F.b,S		; 03 0F
	tsb $1F.b		; 04 1F
	tsb $1E.b		; 04 1E
	tsb $3E.b		; 04 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C0DF.w		; E0 DF C0
	cmp $C4D8.w,X		; DD D8 C4
	cld		; D8
	cpy $40.b		; C4 40
	jmp $004040.l		; 5C 40 40 00
	brk $00.b		; 00 00
	brk $D1.b		; 00 D1
	sbc ($D0.b,X)		; E1 D0
	cpx #$F8D8.w		; E0 D8 F8
	cli		; 58
	sed		; F8
	rti		; 40

	cpx #$C000.w		; E0 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cli		; 58
	eor $48CF00.l		; 4F 00 CF 48
	lda [$30.b],Y		; B7 30
	wai		; CB
	brk $7B.b		; 00 7B
	dey		; 88
	and ($78.b),Y		; 31 78
	sbc ($F8.b,S),Y		; F3 F8
	sbc ($30.b,S),Y		; F3 30
	brk $70.b		; 00 70
	rti		; 40

	sei		; 78
	sei		; 78
	sei		; 78
	bmi  49.b		; 30 31
	bra   1.b		; 80 01
	iny		; C8
	ora ($F8.b,X)		; 01 F8
	adc ($F8.b,X)		; 61 F8
	cmp $0D.b		; C5 0D
	.db $62, $86, $40		; 62 86 40
	lda ($44.b),Y		; B1 44
	lda $BF40.w,Y		; B9 40 BF
	iny		; C8
	and [$98.b],Y		; 37 98
	adc [$99.b]		; 67 99
	ror $00.b		; 66 00
	and $D05FC0.l,X		; 3F C0 5F D0
	eor $FE4EDC.l		; 4F DC 4E FE
	pla		; 68
	inc $FAEC.w,X		; FE EC FA
	cld		; D8
	xce		; FB
	cmp $8CB7.w,Y		; D9 B7 8C
	brk $7C.b		; 00 7C
	bra 127.b		; 80 7F
	sta [$78.b]		; 87 78
	bra 127.b		; 80 7F
	rti		; 40

	lda $23BF47.l,X		; BF 47 BF 23
	cmp $07C083.l,X		; DF 83 C0 07
	sty $90.b		; 84 90
	bra -41.b		; 80 D7
	cmp [$D7.b]		; C7 D7
	bne -32.b		; D0 E0
	rts		; 60

	sbc ($E7.b,X)		; E1 E7
	sbc ($B7.b),Y		; F1 B7
	cpy #$00F0.w		; C0 F0 00
	beq -128.b		; F0 80
	ror $FF30.w,X		; 7E 30 FF
	rol $87.b,X		; 36 87
	ldx $8F80.w,Y		; BE 80 8F
	bra -77.b		; 80 B3
	bcs  96.b		; B0 60
	jsr $6060.w		; 20 60 60
	bra -128.b		; 80 80
	stx $390E.w		; 8E 0E 39
	eor ($3F.b,X)		; 41 3F
	cpy #$C0BF.w		; C0 BF C0
	sta $600FC0.l		; 8F C0 0F 60
	ora $F00FB0.l,X		; 1F B0 0F F0
	ora [$70.b]		; 07 70
	ora $1C0738.l		; 0F 38 07 1C
	cop $0E.b		; 02 0E
	brk $07.b		; 00 07
	lda $80CF20.l,X		; BF 20 CF 80
	eor $202F50.l,X		; 5F 50 2F 20
	ora [$00.b]		; 07 00
	phd		; 0B
	php		; 08
	ora $04.b		; 05 04
	brk $00.b		; 00 00
	ora ($41.b,X)		; 01 41
	sta ($41.b,X)		; 81 41
	sta ($41.b,X)		; 81 41
	sta ($41.b,X)		; 81 41
	ora ($41.b,X)		; 01 41
	ora ($C1.b,X)		; 01 C1
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   3.b		; 80 03
	sta ($03.b,X)		; 81 03
	sta ($03.b,X)		; 81 03
	sta ($03.b,X)		; 81 03
	bra   3.b		; 80 03
	bra -127.b		; 80 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0E.b,S		; 03 0E
	ora [$1B.b]		; 07 1B
	asl $3B.b		; 06 3B
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	bpl 127.b		; 10 7F
	bmi -41.b		; 30 D7
	pla		; 68
	xba		; EB
	ora [$01.b]		; 07 01
	ora $141E0C.l		; 0F 0C 1E 14
	ora ($01.b,X)		; 01 01
	ora [$16.b]		; 07 16
	ora [$14.b]		; 07 14
	ora ($7A.b,S),Y		; 13 7A
	jsr $6B7C.w		; 20 7C 6B
	ldy $2F.b		; A4 2F
	ldy #$B016.w		; A0 16 B0
	phd		; 0B
	cld		; D8
	tsb $E4.b		; 04 E4
	bpl  -1.b		; 10 FF
	php		; 08
	sbc $0C.b,S		; E3 0C
	sbc [$D9.b]		; E7 D9
	sty $5F.b		; 84 5F
	rti		; 40

	adc $B0B761.l		; 6F 61 B7 B0
	txy		; 9B
	tya		; 98
	ldy #$DD20.w		; A0 20 DD
	eor ($D9.b,X)		; 41 D9
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$FFC4.w		; E0 C4 FF
	cmp ($1F.b)		; D2 1F
	txa		; 8A
	sta $FF00.w		; 8D 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bit $20.b		; 24 20
	nop		; EA
	php		; 08
	adc ($02.b)		; 72 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	inc $CE01.w,X		; FE 01 CE
	cmp ($30.b,X)		; C1 30
	sbc ($06.b),Y		; F1 06
	ora $000300.l,X		; 1F 00 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	brk $3E.b		; 00 3E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$2000.w		; C0 00 20
	brk $D0.b		; 00 D0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$20C0.w		; C0 C0 20
	jsr $F400.w		; 20 00 F4
	bra  -4.b		; 80 FC
	beq  -4.b		; F0 FC
	tya		; 98
	inc $FE34.w,X		; FE 34 FE
	bit $DE.b		; 24 DE
	bne  12.b		; D0 0C
	cpx #$001C.w		; E0 1C 00
	brk $F4.b		; 00 F4
	brk $F8.b		; 00 F8
	brk $DC.b		; 00 DC
	brk $BC.b		; 00 BC
	brk $14.b		; 00 14
	rti		; 40

	sty $20.b		; 84 20
	dey		; 88
	rti		; 40

	rti		; 40

	sec		; 38
	cpy #$0070.w		; C0 70 00
	cpx #$6000.w		; E0 00 60
	brk $F8.b		; 00 F8
	bit $4CD4.w		; 2C D4 4C
	tay		; A8
	stz $9056.w		; 9C 56 90
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	rti		; 40

	rti		; 40

	cpx #$C8AC.w		; E0 AC C8
	jmp $00BC80.l		; 5C 80 BC 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	beq   0.b		; F0 00
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$8000.w		; C0 00 80
	bra   0.b		; 80 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	rol $0700.w,X		; 3E 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $030309.l		; 0F 09 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $770FE0.l,X		; 1F E0 0F 77
	ora [$3B.b]		; 07 3B
	cpx #$79FF.w		; E0 FF 79
	ldx $EF1F.w,Y		; BE 1F EF
	ora [$7B.b]		; 07 7B
	brk $1F.b		; 00 1F
	adc $283F5F.l,X		; 7F 5F 3F 28
	ora $0AEF14.l,X		; 1F 14 EF 0A
	sbc $D0FF45.l,X		; FF 45 FF D0
	ora $040714.l,X		; 1F 14 07 04
	sbc $FFFF3F.l,X		; FF 3F FF FF
	sbc $1DFEFE.l,X		; FF FE FE 1D
	sbc $E1FB.w,X		; FD FB E1
	cmp $1F7F80.l,X		; DF 80 7F 1F
	cpx #$C0FF.w		; E0 FF C0
	sbc $01FF00.l,X		; FF 00 FF 01
	inc $FDE2.w,X		; FE E2 FD
	tsb $F9.b		; 04 F9
	jsr $80E0.w		; 20 E0 80
	cmp $F8E25F.l,X		; DF 5F E2 F8
	sta $F81C78.l		; 8F 78 1C F8
	ldy $F8.b,X		; B4 F8
	ldy $F8.b		; A4 F8
	asl $6DF4.w		; 0E F4 6D
	dey		; 88
	sbc $00.b,S		; E3 00
	inx		; E8
	ora $D8.b		; 05 D8
	sta ($38.b,X)		; 81 38
	ora $B8.b,S		; 03 B8
	ora $B0.b,S		; 03 B0
	phd		; 0B
	bra  13.b		; 80 0D
	rts		; 60

	ply		; 7A
	cpx #$C6FF.w		; E0 FF C6
	adc $324D.w,Y		; 79 4D 32
	dey		; 88
	and [$7F.b],Y		; 37 7F
	brk $FF.b		; 00 FF
	clc		; 18
	lsr A		; 4A
	bmi  -4.b		; 30 FC
	brk $BE.b		; 00 BE
	ora ($77.b,X)		; 01 77
	adc ($35.b,X)		; 61 35
	lda ($33.b),Y		; B1 33
	sbc ($00.b),Y		; F1 00
	cpy #$C318.w		; C0 18 C3
	bmi -121.b		; 30 87
	brk $03.b		; 00 03
	ora ($C9.b,X)		; 01 C9
	bra -16.b		; 80 F0
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($1E.b,X)		; 01 1E
	asl $09.b		; 06 09
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	ora #$0701.w		; 09 01 07
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	adc [$13.b],Y		; 77 13
	sbc $099C64.l		; EF 64 9C 09
	sei		; 78
	ora ($18.b,X)		; 01 18
	cop $0E.b		; 02 0E
	brk $7F.b		; 00 7F
	iny		; C8
	cmp $9888EC.l		; CF EC 88 98
	bpl 115.b		; 10 73
	rts		; 60

	ora [$00.b]		; 07 00
	ora $040508.l		; 0F 08 05 04
	ora $03.b,S		; 03 03
	bit $04.b,X		; 34 04
	ora [$E0.b]		; 07 E0
	ora $E6.b,S		; 03 E6
	sta $27.b,S		; 83 27
	cmp $1F.b,S		; C3 1F
	sbc $0F.b,S		; E3 0F
	sbc ($07.b,S),Y		; F3 07
	tyx		; BB
	sta [$19.b]		; 87 19
	cmp $81.b,S		; C3 81
	ora $C18F80.l		; 0F 80 8F C1
	ora $F107E1.l		; 0F E1 07 F1
	ora [$F9.b]		; 07 F9
	ora $79.b,S		; 03 79
	ora $FD.b,S		; 03 FD
	cmp ($00.b,X)		; C1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $0000.w		; 0D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	ora ($0F.b,X)		; 01 0F
	dec $DF.b		; C6 DF
	iny		; C8
	sbc $000000.l		; EF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $01.b		; 02 01
	cpy #$F8DF.w		; C0 DF F8
	sta $C400F1.l		; 8F F1 00 C4
	brk $1F.b		; 00 1F
	asl $3F.b		; 06 3F
	ora $FF137F.l,X		; 1F 7F 13 FF
	bit $FF.b		; 24 FF
	plp		; 28
	sbc $03F867.l,X		; FF 67 F8 03
	ora $E0.b,S		; 03 E0
	cpx #$C0CF.w		; E0 CF C0
	sta $003F80.l,X		; 9F 80 3F 00
	adc [$00.b],Y		; 77 00
	jmp ($6800.w)		; 6C 00 68
	brk $00.b		; 00 00
	rti		; 40

	brk $E0.b		; 00 E0
	brk $F2.b		; 00 F2
	cpy #$78FE.w		; C0 FE 78
	inc $FF4C.w,X		; FE 4C FF
	txs		; 9A
	sbc $80EF12.l,X		; FF 12 EF 80
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $FA.b		; 00 FA
	brk $FC.b		; 00 FC
	brk $6E.b		; 00 6E
	brk $DE.b		; 00 DE
	brk $0A.b		; 00 0A
	jsr $E02E.w		; 20 2E E0
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $000040.l,X		; 5F 40 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($1F.b,X)		; 01 1F
	and [$7C.b],Y		; 37 7C
	jmp ($68F9.w)		; 6C F9 68
	cmp $00B840.l,X		; DF 40 B8 00
	beq   0.b		; F0 00
	rts		; 60

	brk $00.b		; 00 00
	ora $083B0E.l		; 0F 0E 3B 08
	adc [$01.b]		; 67 01
	.db $62, $22, $70		; 62 22 70
	bvc  96.b		; 50 60
	jsr $0000.w		; 20 00 00
	rts		; 60

	sbc $0BB056.l,X		; FF 56 B0 0B
	clc		; 18
	cop $06.b		; 02 06
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $404F0F.l		; 6F 0F 4F 40
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -16.b		; 80 F0
	cpx #$F038.w		; E0 38 F0
	ora $0F78.w,X		; 1D 78 0F
	rol $1D86.w,X		; 3E 86 1D
	cpy #$600F.w		; C0 0F 60
	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	bne  16.b		; D0 10
	inx		; E8
	php		; 08
	sbc $05.b,X		; F5 05
	sbc $7F80.w,Y		; F9 80 7F
	rti		; 40

	and $070020.l,X		; 3F 20 00 07
	brk $0F.b		; 00 0F
	tsb $3C.b		; 04 3C
	ora $80BFE0.l		; 0F E0 BF 80
	sbc $00FE00.l,X		; FF 00 FE 00
	inc $07.b,X		; F6 07
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	tas		; 1B
	clc		; 18
	adc $007F60.l,X		; 7F 60 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $0001.w,Y		; F9 01 00
	sbc $40FF00.l,X		; FF 00 FF 40
	adc $8030AF.l,X		; 7F AF 30 80
	ora $C13FA0.l,X		; 1F A0 3F C1
	inc $F906.w,X		; FE 06 F9
	ora $E0FE00.l,X		; 1F 00 FE E0
	ldy #$CF20.w		; A0 20 CF
	ora $CE00EF.l		; 0F EF 00 CE
	brk $31.b		; 00 31
	and ($87.b),Y		; 31 87
	stx $2C.b		; 86 2C
	cpy #$E807.w		; C0 07 E8
	xba		; EB
	ora $07FF0B.l,X		; 1F 0B FF 07
	sbc $808F72.l,X		; FF 72 8F 80
	adc $E619.w,X		; 7D 19 E6
	cpx #$003B.w		; E0 3B 00
	trb $EFE3.w		; 1C E3 EF
	sbc $0F.b,S		; E3 0F
	.db $82, $07, $70		; 82 07 70
	adc ($E0.b,S),Y		; 73 E0
	.db $82, $9D, $19		; 82 9D 19
	ply		; 7A
	and ($FA.b,X)		; 21 FA
	adc ($DA.b,X)		; 61 DA
	sbc ($80.b,X)		; E1 80
	cmp $40BF00.l		; CF 00 BF 40
	tsa		; 3B
	brk $F3.b		; 00 F3
	bra 123.b		; 80 7B
	and ($AD.b,X)		; 21 AD
	eor ($6D.b,X)		; 41 6D
	sta ($E5.b,X)		; 81 E5
	ora ($F1.b,X)		; 01 F1
	ora ($C1.b,X)		; 01 C1
	rts		; 60

	cpy #$0021.w		; C0 21 00
	cmp ($80.b),Y		; D1 80
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	phx		; DA
	sbc [$D5.b]		; E7 D5
	rol A		; 2A
	ldy #$006F.w		; A0 6F 00
	bcc   0.b		; 90 00
	ldy #$C000.w		; A0 00 C0
	bra  64.b		; 80 40
	cpy #$DA20.w		; C0 20 DA
	brk $F5.b		; 00 F5
	cpx $90.b		; E4 90
	bra  96.b		; 80 60
	brk $C0.b		; 00 C0
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$01FD.w		; C0 FD 01
	sbc $F01700.l,X		; FF 00 17 F0
	cop $1E.b		; 02 1E
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FF00.w,X		; FE 00 FF
	brk $2F.b		; 00 2F
	jsr $0405.w		; 20 05 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	sbc $0C.b,S		; E3 0C
	adc ($9C.b),Y		; 71 9C
	ora ($FE.b),Y		; 11 FE
	ora $5C.b,S		; 03 5C
	cmp [$08.b]		; C7 08
	ror $0000.w,X		; 7E 00 00
	brk $00.b		; 00 00
	ldy $DEA0.w,X		; BC A0 DE
	bvc -18.b		; 50 EE
	brk $FC.b		; 00 FC
	brk $BA.b		; 00 BA
	.db $82, $14, $15		; 82 14 15
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora $37.b		; 05 37
	ora $1C6F.w		; 0D 6F 1C
	cmp $FE3C.w,X		; DD 3C FE
	sei		; 78
	sbc $DBD5.w,X		; FD D5 DB
	inx		; E8
	sbc [$FF.b]		; E7 FF
	and $240F01.l,X		; 3F 01 0F 24
	and $D87F4C.l,X		; 3F 4C 7F D8
	lda $C03ED0.l,X		; BF D0 3E C0
	bit $18E0.w,X		; 3C E0 18
	sbc $EFA0C0.l,X		; FF C0 A0 EF
	bvc -33.b		; 50 DF
	brk $57.b		; 00 57
	bcc -113.b		; 90 8F
	ora ($2E.b,X)		; 01 2E
	trb $1C0F.w		; 1C 0F 1C
	sta $2E079C.l		; 8F 9C 07 2E
	inc $F040.w,X		; FE 40 F0
	asl $BE.b		; 06 BE
	eor [$3D.b]		; 47 3D
	sta [$7D.b]		; 87 7D
	sta $6E.b,S		; 83 6E
	ora [$6E.b]		; 07 6E
	sta [$E7.b]		; 87 E7
	ora #$37D4.w		; 09 D4 37
	jmp.w [$D235]		; DC 35 D2
	ora [$F0.b],Y		; 17 F0
	phb		; 8B
	sei		; 78
	sta $5C.b		; 85 5C
	.db $82, $4E, $20		; 82 4E 20
	cmp $60.b,S		; C3 60
	asl $64.b		; 06 64
	eor $2C.b		; 45 2C
	cop $8F.b		; 02 8F
	bra -105.b		; 80 97
	bcc -21.b		; 90 EB
	inx		; E8
	sbc ($D0.b),Y		; F1 D0
	ldy $680C.w,X		; BC 0C 68
	asl $70.b		; 06 70
	asl $1CA0.w		; 0E A0 1C
	cpx #$0038.w		; E0 38 00
	sei		; 78
	bcc  56.b		; 90 38
	bmi 120.b		; 30 78
	bmi -24.b		; 30 E8
.INDEX 16
	rep #$10		; C2 10
	cpy $20.b		; C4 20
	iny		; C8
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	ldy #$00D0.w		; A0 D0 00
	bcs   0.b		; B0 00
	bmi  16.b		; 30 10
	sty $7E.b		; 84 7E
	tsb $FE.b		; 04 FE
	jmp $A8BA.w		; 4C BA A8
	asl $3C28.w,X		; 1E 28 3C
	dey		; 88
	sty $60.b,X		; 94 60
	trb $18E0.w		; 1C E0 18
	inc $A0.b		; E6 A0
	cpy $0C40.w		; CC 40 0C
	tsb $0C.b		; 04 0C
	cpy #$C008.w		; C0 08 C0
	sei		; 78
	clc		; 18
	sed		; F8
	bpl -16.b		; 10 F0
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
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	cpy #$E020.w		; C0 20 E0
	jsr ($6AFC.w,X)		; FC FC 6A
	ror A		; 6A
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	rti		; 40

	cpx #$F820.w		; E0 20 F8
	jmp $FF6AFE.l		; 5C FE 6A FF
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($CF.b,X)		; 01 CF
	ora $FC.b,S		; 03 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	sbc $10E02B.l		; EF 2B E0 10
	cpy #$4020.w		; C0 20 40
	jsr $2040.w		; 20 40 20
	cpy #$00A0.w		; C0 A0 00
	ldy #$E000.w		; A0 00 E0
	brk $E0.b		; 00 E0
	cpx #$E000.w		; E0 00 E0
	jsr $20E0.w		; 20 E0 20
	cpy #$4000.w		; C0 00 40
	brk $40.b		; 00 40
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
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  19.b		; 10 13
	tsb $2C.b		; 04 2C
	ora ($33.b,S),Y		; 13 33
	trb $1F3C.w		; 1C 3C 1F
	and $3F3F1F.l,X		; 3F 1F 3F 3F
	ora $121F3F.l,X		; 1F 3F 1F 12
	ror $7F00.w,X		; 7E 00 7F
	brk $7F.b		; 00 7F
	clc		; 18
	adc $1E7F1C.l,X		; 7F 1C 7F 1E
	adc $0F3F1F.l,X		; 7F 1F 3F 0F
	and $03DF22.l,X		; 3F 22 DF 03
	eor $049F04.l,X		; 5F 04 9F 04
	eor $80CE04.l,X		; 5F 04 CE 80
	cpx $C0.b		; E4 C0
	cpx #$F0C0.w		; E0 C0 F0
	cmp $E01FC0.l,X		; DF C0 1F E0
	trb $0CE0.w		; 1C E0 0C
	cpx #$E004.w		; E0 04 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	bra  -8.b		; 80 F8
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	trb $3E00.w		; 1C 00 3E
	brk $68.b		; 00 68
	trb $68.b		; 14 68
	ora ($C4.b)		; 12 C4
	sec		; 38
.ACCU 16
.INDEX 16
	rep #$3D		; C2 3D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	trb $10.b		; 14 10
	asl $14.b,X		; 16 14
	asl A		; 0A
	asl A		; 0A
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$FBE0.w		; E0 E0 FB
	xce		; FB
	sta [$07.b]		; 87 07
	ldy $44.b,X		; B4 44
	adc #$1D10.w		; 69 10 1D
	brk $03.b		; 00 03
	asl $03.b		; 06 03
	asl $0E01.w		; 0E 01 0E
	bvs  -1.b		; 70 FF
	ora $7F.b,S		; 03 7F
	stz $3F.b,X		; 74 3F
	tas		; 1B
	tsb $0003.w		; 0C 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	bit $AE96.w		; 2C 96 AE
	sta ($0A.b),Y		; 91 0A
	adc $04.b,X		; 75 04
	tsa		; 3B
	phb		; 8B
	adc [$C7.b],Y		; 77 C7
	adc $C17FC7.l,X		; 7F C7 7F C1
	adc $9EC91D.l,X		; 7F 1D C9 9E
	dec $CA1E.w		; CE 1E CA
	stx $CF44.w		; 8E 44 CF
	pha		; 48
	sta [$00.b]		; 87 00
	lda $20A320.l		; AF 20 A3 20
	bit $0C4B.w,X		; 3C 4B 0C
	lda ($04.b,S),Y		; B3 04
	tas		; 1B
	brk $0F.b		; 00 0F
	cop $8D.b		; 02 8D
	.db $82, $FD, $82		; 82 FD 82
	sbc $BFFF82.l,X		; FF 82 FF BF
	lda $5F.b,X		; B5 5F
	eor $E5EF.w		; 4D EF E5
	sbc [$F1.b],Y		; F7 F1
	adc [$72.b],Y		; 77 72
	sta $30B702.l		; 8F 02 B7 30
	cmp [$10.b],Y		; D7 10
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	cpy #$C0E0.w		; C0 E0 C0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$E0F0.w		; E0 F0 E0
	beq 112.b		; F0 70
	beq   0.b		; F0 00
	beq -128.b		; F0 80
	beq -128.b		; F0 80
	beq -64.b		; F0 C0
	beq -64.b		; F0 C0
	beq -32.b		; F0 E0
	sed		; F8
	rts		; 60

	sed		; F8
	rts		; 60

	jsr ($ED1E.w,X)		; FC 1E ED
	asl $0FFD.w		; 0E FD 0F
	inc $F60F.w,X		; FE 0F F6
	ora [$FF.b]		; 07 FF
	ora [$7B.b]		; 07 7B
	ora $7F.b,S		; 03 7F
	ora $7D.b,S		; 03 7D
	adc $627F52.l,X		; 7F 52 7F 62
	adc $697F61.l,X		; 7F 61 7F 69
	and $343F30.l,X		; 3F 30 3F 34
	and $1A1F38.l,X		; 3F 38 1F 1A
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F1.b		; 00 F1
	bra 127.b		; 80 7F
	cmp $BC.b,S		; C3 BC
	sbc ($DE.b,X)		; E1 DE
	inc $80E1.w,X		; FE E1 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	rti		; 40

	cpy #$E340.w		; C0 40 E3
	lda $F7.b,S		; A3 F7
	eor [$FB.b],Y		; 57 FB
	and $FF.b,S		; 23 FF
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $FC.b		; 00 FC
	cpy #$6078.w		; C0 78 60
	sed		; F8
	ldy #$107C.w		; A0 7C 10
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	cli		; 58
	beq -112.b		; F0 90
	beq  16.b		; F0 10
	beq -112.b		; F0 90
	jsr ($000C.w,X)		; FC 0C 00
	brk $00.b		; 00 00
	asl $3313.w,X		; 1E 13 33
	and $803F40.l,X		; 3F 40 3F 80
	and $863680.l,X		; 3F 80 36 86
	adc #$004F.w		; 69 4F 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $79.b		; 00 79
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$3C30.w		; E0 30 3C
	cpy #$FF03.w		; C0 03 FF
	brk $FF.b		; 00 FF
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F800.w		; C0 00 F8
	cpy #$F83F.w		; C0 3F F8
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	ora $171F0F.l,X		; 1F 0F 1F 17
	tsb $030F.w		; 0C 0F 03
	ora $016703.l,X		; 1F 03 67 01
	lda $01B701.l		; AF 01 B7 01
	ora $3F0F3F.l		; 0F 3F 0F 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	ora ($03.b,X)		; 01 03
	ora ($1D.b,X)		; 01 1D
	ora ($55.b,X)		; 01 55
	brk $49.b		; 00 49
	cpy #$81E0.w		; C0 E0 81
	iny		; C8
	bmi  60.b		; 30 3C
	sed		; F8
	inc $FFFC.w,X		; FE FC FF
	inc $FEFF.w,X		; FE FF FE
	sbc $80FCFC.l,X		; FF FC FC 80
	jsr ($FE00.w,X)		; FC 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cpx #$F0FF.w		; E0 FF F0
	sbc $F8FFF8.l,X		; FF F8 FF F8
	sbc $827E81.l,X		; FF 81 7E 82
	adc $7A85.w,X		; 7D 85 7A
	wai		; CB
	and $D7.b,X		; 35 D7
	pld		; 2B
	mvn $58,$2B		; 54 2B 58
	bit $78.b		; 24 78
	tsb $02.b		; 04 02
	cop $05.b		; 02 05
	tsb $0B.b		; 04 0B
	ora #$1217.w		; 09 17 12
	and $A42C24.l		; 2F 24 2C A4
	pld		; 2B
	plb		; AB
	tas		; 1B
	txy		; 9B
	brk $FC.b		; 00 FC
	cpx #$F01E.w		; E0 1E F0
	asl $E7F8.w		; 0E F8 E7
	jsr ($7CF3.w,X)		; FC F3 7C
	xce		; FB
	tsb $1C7B.w		; 0C 7B 1C
	tsa		; 3B
	sed		; F8
	php		; 08
	jsr ($FCE4.w,X)		; FC E4 FC
	beq  -2.b		; F0 FE
	inc A		; 1A
	inc $7E0C.w,X		; FE 0C 7E
	tsb $8F.b		; 04 8F
	sta $DF.b		; 85 DF
	cmp $00.b		; C5 00
	asl $0600.w		; 0E 00 06
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $3F.b		; 84 3F
	sta ($3F.b,X)		; 81 3F
	sta [$3F.b]		; 87 3F
	sta ($7F.b,X)		; 81 7F
	ora $FF.b,S		; 03 FF
	asl $FF.b		; 06 FF
	tsb $00FF.w		; 0C FF 00
	sbc $E320ED.l,X		; FF ED 20 E3
	jsr $28EF.w		; 20 EF 28
	sbc [$66.b]		; E7 66
	sta [$84.b]		; 87 84
	adc $11FF08.l		; 6F 08 FF 11
	stz $821E.w,X		; 9E 1E 82
	sbc $87FA87.l,X		; FF 87 FA 87
	plx		; FA
	ora [$FA.b]		; 07 FA
	ora [$FA.b]		; 07 FA
	ora [$FA.b]		; 07 FA
	ora [$FB.b]		; 07 FB
	ora [$3B.b]		; 07 3B
	cmp [$10.b],Y		; D7 10
	cmp $35BF15.l,X		; DF 15 BF 35
	lda $35BF35.l,X		; BF 35 BF 35
	sta $141F95.l,X		; 9F 95 1F 14
	ora $C00014.l,X		; 1F 14 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	bra 112.b		; 80 70
	bra 112.b		; 80 70
	bra -128.b		; 80 80
	cpy #$C040.w		; C0 40 C0
	rti		; 40

	cpy #$C040.w		; C0 40 C0
	rti		; 40

	cpy #$E040.w		; C0 40 E0
	ldy #$A0E0.w		; A0 E0 A0
	bvs 120.b		; 70 78
	sec		; 38
	adc $3C18.w,Y		; 79 18 3C
	trb $1E.b		; 14 1E
	asl $0F0F.w		; 0E 0F 0F
	ora $000606.l		; 0F 06 06 00
	brk $30.b		; 00 30
	sbc $18FF10.l,X		; FF 10 FF 18
	adc $003F00.l,X		; 7F 00 3F 00
	ora $021F07.l,X		; 1F 07 1F 02
	ora $010700.l		; 0F 00 07 01
	rol $1F00.w,X		; 3E 00 1F
	brk $8F.b		; 00 8F
	brk $07.b		; 00 07
	rts		; 60

	sbc $B0.b,S		; E3 B0
	lda ($40.b),Y		; B1 40
	rti		; 40

	brk $00.b		; 00 00
	ora $C4070D.l		; 0F 0D 07 C4
	ora $E2.b,S		; 03 E2
	ora ($F1.b,X)		; 01 F1
	jsr $90F8.w		; 20 F8 90
	sed		; F8
	rti		; 40

	sed		; F8
	brk $E0.b		; 00 E0
	sbc $7FFFFF.l,X		; FF FF FF 7F
	adc $C03F8F.l,X		; 7F 8F 3F C0
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	sbc $80FF00.l,X		; FF 00 FF 80
	sbc $3FFF70.l,X		; FF 70 FF 3F
	sbc $7F7F80.l,X		; FF 80 7F 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($F8FB.w,X)		; FC FB F8
	sbc [$F0.b],Y		; F7 F0
	sta $001EE0.l		; 8F E0 1E 00
	jsr ($F800.w,X)		; FC 00 F8
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	inc $FE06.w,X		; FE 06 FE
	asl A		; 0A
	jsr ($F874.w,X)		; FC 74 F8
	inx		; E8
	beq  16.b		; F0 10
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	eor $3A4714.l		; 4F 14 47 3A
	adc $1D.b,S		; 63 1D
	and ($0E.b,X)		; 21 0E
	jsr $301F.w		; 20 1F 30
	ora $100F10.l		; 0F 10 0F 10
	stz $44.b,X		; 74 44
	dec A		; 3A
	cop $1D.b		; 02 1D
	ora ($3E.b,X)		; 01 3E
	jsr $001F.w		; 20 1F 00
	ora $101F00.l		; 0F 00 1F 10
	ora $FE0000.l		; 0F 00 00 FE
	brk $FF.b		; 00 FF
	brk $E7.b		; 00 E7
	brk $E1.b		; 00 E1
	bra -32.b		; 80 E0
	bra -16.b		; 80 F0
	rti		; 40

	bvs -64.b		; 70 C0
	sei		; 78
	sbc $0101FE.l,X		; FF FE 01 01
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	ldy #$0020.w		; A0 20 00
	ora [$00.b]		; 07 00
	sbc $01FF00.l,X		; FF 00 FF 01
	inc $0700.w,X		; FE 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plx		; FA
	brk $F2.b		; 00 F2
	beq   4.b		; F0 04
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D7.b		; 00 D7
	clc		; 18
	cpy $30FF.w		; CC FF 30
	sbc $001FE0.l,X		; FF E0 1F 00
	inc $FC00.w,X		; FE 00 FC
	brk $F8.b		; 00 F8
	brk $30.b		; 00 30
	sbc [$07.b]		; E7 07
	tsb $3000.w		; 0C 00 30
	brk $E0.b		; 00 E0
	cpx #$00C0.w		; E0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $3E40.w,X		; 1E 40 3E
	jsr $200E.w		; 20 0E 20
	ora [$30.b],Y		; 17 30
	ora $FC0338.l		; 0F 38 03 FC
	rti		; 40

	lda $3FBE41.l,X		; BF 41 BE 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $17.b		; 00 17
	bpl   3.b		; 10 03
	brk $7C.b		; 00 7C
	mvp $45,$7D		; 44 7D 45
	bra -32.b		; 80 E0
	bra -16.b		; 80 F0
	brk $70.b		; 00 70
	rti		; 40

	bvs  64.b		; 70 40
	sei		; 78
	rti		; 40

	sei		; 78
	brk $F8.b		; 00 F8
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	cpy #$8040.w		; C0 40 80
	brk $A0.b		; 00 A0
	jsr $20A0.w		; 20 A0 20
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	ora $03.b,S		; 03 03
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
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
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
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
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	jsr $40F0.w		; 20 F0 40
	cpx #$C000.w		; E0 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rts		; 60

	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $56.b		; 00 56
	ora ($29.b,X)		; 01 29
	brk $14.b		; 00 14
	brk $0B.b		; 00 0B
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $1700.w		; 2D 00 17
	brk $0B.b		; 00 0B
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($BE.b,X)		; 41 BE
	jsl $5D225D.l		; 22 5D 22 5D
	jsl $4B345D.l		; 22 5D 34 4B
	trb $2B.b		; 14 2B
	tsb $2B.b		; 04 2B
	ora $12.b,X		; 15 12
	adc $3B45.w,X		; 7D 45 3B
	jsl $3B223B.l		; 22 3B 22 3B
	and $37.b,S		; 23 37
	and $16.b,X		; 35 16
	asl $06.b,X		; 16 06
	asl $15.b,X		; 16 15
	and $EF10.w,X		; 3D 10 EF
	bpl -17.b		; 10 EF
	jsr $20DF.w		; 20 DF 20
	cmp $82BE41.l,X		; DF 41 BE 82
	adc $7B84.w,X		; 7D 84 7B
	ora #$DCF7.w		; 09 F7 DC
	mvn $D4,$DC		; 54 DC D4
	tyx		; BB
	plb		; AB
	tyx		; BB
	plb		; AB
	ror $56.b,X		; 76 56
	sbc $D8AC.w		; ED AC D8
	cld		; D8
	lda ($B0.b,S),Y		; B3 B0
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	ora [$1F.b]		; 07 1F
	php		; 08
	sec		; 38
	ora $000070.l,X		; 1F 70 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$07.b]		; 07 07
	php		; 08
	php		; 08
	ora [$10.b],Y		; 17 10
	and $FD0220.l		; 2F 20 02 FD
	ora #$09F6.w		; 09 F6 09
	inc $04.b,X		; F6 04
	xce		; FB
	tsb $FB.b		; 04 FB
	ldx #$12DD.w		; A2 DD 12
	adc $F609.w		; 6D 09 F6
	asl $06.b		; 06 06
	ora $0B1B0D.l		; 0F 0D 1B 0B
	sbc $D5DDE6.l,X		; FF E6 DD D5
	and $16B62B.l		; 2F 2B B6 16
	tda		; 7B
	phd		; 0B
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $3C.b,S		; 03 3C
	and ($DE.b,X)		; 21 DE
	cpx #$211F.w		; E0 1F 21
	stp		; DB
	bra  57.b		; 80 39
	bvc -104.b		; 50 98
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$03.b]		; 07 03
	and ($21.b,S),Y		; 33 21
	beq -32.b		; F0 E0
	bmi  32.b		; 30 20
	cpy #$E000.w		; C0 00 E0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	ldy #$D8A0.w		; A0 A0 D8
	bvc 108.b		; 50 6C
	bpl -84.b		; 10 AC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	jsr $9820.w		; 20 20 98
	bpl  88.b		; 10 58
	bpl  26.b		; 10 1A
	cmp $0F.b,S		; C3 0F
	adc ($07.b,X)		; 61 07
	bmi   3.b		; 30 03
	clc		; 18
	ora ($0C.b,X)		; 01 0C
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	adc $3E41.w,X		; 7D 41 3E
	jsr $101F.w		; 20 1F 10
	ora $040708.l		; 0F 08 07 04
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $C1.b		; 00 C1
	brk $E3.b		; 00 E3
	ora ($67.b,X)		; 01 67
	bra  62.b		; 80 3E
	cmp ($1C.b),Y		; D1 1C
	sbc $08.b,S		; E3 08
	adc [$00.b],Y		; 77 00
	and $000080.l,X		; 3F 80 00 00
	bra -128.b		; 80 80
	cpy #$E340.w		; C0 40 E3
	jsl $FF04E7.l		; 22 E7 04 FF
	php		; 08
	sbc $80FF00.l,X		; FF 00 FF 80
	ora $7E.b		; 05 7E
	asl $0F3F.w		; 0E 3F 0F
	ora $030707.l		; 0F 07 07 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	ora [$0C.b]		; 07 0C
	ora $031F06.l		; 0F 06 1F 03
	ora $000701.l		; 0F 01 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $04.b		; 00 04
	ora ($00.b,S),Y		; 13 00
	ora $801F86.l,X		; 1F 86 1F 80
	sta $CE9FC0.l,X		; 9F C0 9F CE
	dec $EE.b		; C6 EE
	dec $6E.b		; C6 6E
	ror $1E.b		; 66 1E
	ora ($10.b)		; 12 10
	bcc  14.b		; 90 0E
	bra  14.b		; 80 0E
	cpy #$C080.w		; C0 80 C0
	bra  -1.b		; 80 FF
	asl $FF.b		; 06 FF
	rol $FF.b		; 26 FF
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	asl $7CE1.w,X		; 1E E1 7C
	tyx		; BB
	sed		; F8
	inc $F3.b,X		; F6 F3
	cpx $D9E7.w		; EC E7 D9
	cmp $0000B7.l		; CF B7 00 00
	brk $00.b		; 00 00
	and $46FE1F.l,X		; 3F 1F FE 46
	jsr ($FF0C.w,X)		; FC 0C FF
	tas		; 1B
	sbc $68FF36.l,X		; FF 36 FF 68
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$C0DC.w		; E0 DC C0
	ldy #$0000.w		; A0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F840.w		; C0 40 F8
	plp		; 28
	cpx #$FC60.w		; E0 60 FC
	sbc $FF.b,S		; E3 FF
	jmp.w [$FFFF]		; DC FF FF
	sbc $E3FCF8.l,X		; FF F8 FC E3
	cpx #$C0DC.w		; E0 DC C0
	bcs -128.b		; B0 80
	rts		; 60

	sbc $23FF1D.l,X		; FF 1D FF 23
	sbc $07FF00.l,X		; FF 00 FF 07
	sbc $28F81C.l,X		; FF 1C F8 28
	cpx #$C040.w		; E0 40 C0
	bra   4.b		; 80 04
	xce		; FB
	brk $FF.b		; 00 FF
	bra 127.b		; 80 7F
	cpy #$E03F.w		; C0 3F E0
	tas		; 1B
	bpl 109.b		; 10 6D
	php		; 08
	bit $04.b,X		; 34 04
	clc		; 18
	rol $CE36.w,X		; 3E 36 CE
	pha		; 48
	inc $A4.b		; E6 A4
	sbc ($D0.b)		; F2 D0
	sed		; F8
	inx		; E8
	sec		; 38
	clc		; 18
	trb $0C0C.w		; 1C 0C 0C
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$01.b]		; 07 01
	asl $01.b		; 06 01
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora [$05.b]		; 07 05
	ora [$05.b]		; 07 05
	ora $DF3FEF.l,X		; 1F EF 3F DF
	adc $BF7EBE.l,X		; 7F BE 7E BF
	inc $FE7F.w,X		; FE 7F FE
	adc $FFFFFE.l,X		; 7F FE FF FF
	sbc $FF507F.l,X		; FF 7F 50 FF
	ldy #$41FF.w		; A0 FF 41
	sbc $80FF41.l,X		; FF 41 FF 80
	sbc $00FF80.l,X		; FF 80 FF 00
	sbc $BD4300.l,X		; FF 00 43 BD
	ora $FD.b,S		; 03 FD
	lda $5C.b,S		; A3 5C
	lda ($5E.b,X)		; A1 5E
	eor ($AE.b),Y		; 51 AE
	eor ($AE.b),Y		; 51 AE
	rti		; 40

	lda $CF7F80.l,X		; BF 80 7F CF
	dex		; CA
	eor $EBEF4A.l		; 4F 4A EF EB
	lda $59DFA9.l		; AF A9 DF 59
	cmp [$55.b],Y		; D7 55
	adc [$44.b]		; 67 44
	lda $8A.b,S		; A3 8A
	sbc [$FE.b],Y		; F7 FE
	sbc [$FE.b],Y		; F7 FE
	sbc [$FE.b],Y		; F7 FE
	inc $EF.b,X		; F6 EF
	inc $6F.b,X		; F6 6F
	inc $2F.b,X		; F6 2F
	sbc [$0E.b],Y		; F7 0E
	sbc [$0E.b],Y		; F7 0E
	sbc $01FF01.l,X		; FF 01 FF 01
	sbc $10FF01.l,X		; FF 01 FF 10
	sbc $D0FF90.l,X		; FF 90 FF D0
	sbc $F9FFF9.l,X		; FF F9 FF F9
	and $C07EE0.l,X		; 3F E0 7E C0
	jsr ($7C81.w,X)		; FC 81 7C
	ora $F8.b,S		; 03 F8
	ora [$F0.b]		; 07 F0
	ora $801FE0.l		; 0F E0 1F 80
	rol $405F.w,X		; 3E 5F 40
	lda $017F80.l,X		; BF 80 7F 01
	sbc $06FE03.l,X		; FF 03 FE 06
	sed		; F8
	php		; 08
	sbc ($12.b)		; F2 12
	cpx $24.b		; E4 24
	tsb $FB.b		; 04 FB
	cop $FD.b		; 02 FD
	sbc ($1E.b,X)		; E1 1E
	tsb $00F3.w		; 0C F3 00
	sbc $008778.l,X		; FF 78 87 00
	sed		; F8
	brk $E0.b		; 00 E0
	adc $1E45.w,X		; 7D 45 1E
	ora ($E7.b)		; 12 E7
	sbc $FD.b		; E5 FD
	ora $C0C0.w		; 0D C0 C0
	ror $607A.w,X		; 7E 7A 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dec $6F10.w,X		; DE 10 6F
	php		; 08
	and [$01.b],Y		; 37 01
	ora $0C01.w,Y		; 19 01 0C
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	pla		; 68
	rti		; 40

	rol $1932.w,X		; 3E 32 19
	ora #$000E.w		; 09 0E 00
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	jsr $10BC.w		; 20 BC 10
	lsr $FA20.w,X		; 5E 20 FA
	brk $FE.b		; 00 FE
	rti		; 40

	ror $1FD0.w,X		; 7E D0 1F
	pla		; 68
	ora $488734.l		; 0F 34 87 48
	brk $20.b		; 00 20
	brk $0C.b		; 00 0C
	brk $98.b		; 00 98
	bra -96.b		; 80 A0
	jsr $08E8.w		; 20 E8 08
	pea $FA04.w		; F4 04 FA
	.db $82, $00, $03		; 82 00 03
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
	ora $18C1.w,X		; 1D C1 18
	sbc $2EFE01.l,X		; FF 01 FE 2E
	cpx #$E13D.w		; E0 3D E1
	dec A		; 3A
	adc $1C.b,S		; 63 1C
	ror $3C00.w,X		; 7E 00 3C
	ror $A640.w,X		; 7E 40 A6
	ldx $C1.b		; A6 C1
	cpy #$405F.w		; C0 5F 40
	lsr $1C40.w,X		; 5E 40 1C
	brk $20.b		; 00 20
	jsr $0000.w		; 20 00 00
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
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $76.b,X		; 76 76
	inc $F6.b,X		; F6 F6
	inc $C6E6.w		; EE E6 C6
	dec $06.b		; C6 06
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	cop $06.b		; 02 06
	cop $66.b		; 02 66
	sbc $C6FF66.l,X		; FF 66 FF C6
	sbc $02EF86.l,X		; FF 86 EF 02
	cmp $020F02.l		; CF 02 0F 02
	ora $9F0700.l		; 0F 00 07 9F
	jmp ($DB3C.w)		; 6C 3C DB
	tda		; 7B
	ldy $7F.b,X		; B4 7F
	sbc [$FF.b]		; E7 FF
	adc $FFEFFF.l		; 6F FF EF FF
	sbc $FFF1FE.l,X		; FF FE F1 FF
	cmp ($FF.b,S),Y		; D3 FF
	lda $FF.b		; A5 FF
	phk		; 4B
	sbc $90FF18.l,X		; FF 18 FF 90
	sbc $00FF10.l,X		; FF 10 FF 00
	sbc $C0000E.l,X		; FF 0E 00 C0
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	cpy #$F0B8.w		; C0 B8 F0
	cpx $F6F8.w		; EC F8 F6
	sed		; F8
	inc $DA3C.w,X		; FE 3C DA
	cpy #$8040.w		; C0 40 80
	bra -32.b		; 80 E0
	jsr $50F0.w		; 20 F0 50
	sed		; F8
	clc		; 18
	jsr ($FC0C.w,X)		; FC 0C FC
	brk $FE.b		; 00 FE
	rol $80.b		; 26 80
	rti		; 40

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $D0.b		; 00 D0
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$00A0.w		; A0 A0 00
	tsb $0400.w		; 0C 00 04
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
	ora ($0E.b,X)		; 01 0E
	ora $0D.b,S		; 03 0D
	ora $0D.b,S		; 03 0D
	ora $1D.b,S		; 03 1D
	ora $9D.b,S		; 03 9D
	ora $9D.b,S		; 03 9D
	sta $5D.b,S		; 83 5D
	ora $DD.b,S		; 03 DD
	ora [$01.b]		; 07 01
	ora [$02.b]		; 07 02
	ora $0A0F0A.l		; 0F 0A 0F 0A
	ora $0A0F0A.l		; 0F 0A 0F 0A
	sta $8A8F8A.l		; 8F 8A 8F 8A
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc [$FF.b],Y		; F7 FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	pha		; 48
	tyx		; BB
	bpl -13.b		; 10 F3
	bit $A9.b		; 24 A9
	ora ($9D.b)		; 12 9D
	ora $189E.w,Y		; 19 9E 18
	clc		; 18
	asl $17.b,X		; 16 17
	asl $C30E.w		; 0E 0E C3
	dec $3D01.w,X		; DE 01 3D
	and ($7F.b,X)		; 21 7F
	brk $7E.b		; 00 7E
	bpl 127.b		; 10 7F
	clc		; 18
	and $0C3F00.l,X		; 3F 00 3F 0C
	and $3B8E77.l,X		; 3F 77 8E 3B
	cmp [$1B.b]		; C7 1B
	sbc [$0D.b]		; E7 0D
	sbc ($05.b,S),Y		; F3 05
	xce		; FB
	cop $FD.b		; 02 FD
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	sbc $3CFF79.l,X		; FF 79 FF 3C
	sbc $8EFF1C.l,X		; FF 1C FF 8E
	sbc $637FC6.l,X		; FF C6 7F 63
	and $DF1FB0.l,X		; 3F B0 1F DF
	jmp ($CB0D.w)		; 6C 0D CB
	phd		; 0B
	cpy $04.b		; C4 04
	adc ($05.b,X)		; 61 05
	adc $0C.b,S		; 63 0C
	and ($08.b,S),Y		; 33 08
	asl $08.b,X		; 16 08
	ora $3F0C19.l		; 0F 19 0C 3F
	phd		; 0B
	adc $027F04.l,X		; 7F 04 7F 02
	sec		; 38
	ora [$34.b]		; 07 34
	ora [$10.b]		; 07 10
	ora $000608.l		; 0F 08 06 00
	brk $9F.b		; 00 9F
	ora ($CF.b,X)		; 01 CF
	.db $82, $EE, $41		; 82 EE 41
	cli		; 58
	sta $B8.b,S		; 83 B8
	phb		; 8B
	cpx #$C00B.w		; E0 0B C0
	cop $84.b		; 02 84
	asl $E6.b		; 06 E6
	brk $F0.b		; 00 F0
	sta ($F0.b,X)		; 81 F0
	eor $583FE8.l		; 4F E8 3F 58
	eor [$50.b]		; 47 50
	sta [$B0.b]		; 87 B0
	ora $39.b,S		; 03 39
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	bpl  47.b		; 10 2F
	php		; 08
	ora [$00.b],Y		; 17 00
	ora $000600.l		; 0F 00 06 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	bpl  15.b		; 10 0F
	php		; 08
	ora [$07.b]		; 07 07
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	brk $B0.b		; 00 B0
	rti		; 40

	rts		; 60

	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	iny		; C8
	pha		; 48
	bcc -112.b		; 90 90
	rts		; 60

	jsr $0080.w		; 20 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora ($3E.b,X)		; 01 3E
	brk $FF.b		; 00 FF
	cop $FD.b		; 02 FD
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora [$03.b]		; 07 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($0E.b,X)		; 01 0E
	ora $1D.b,S		; 03 1D
	ora [$3B.b]		; 07 3B
	ora $000077.l		; 0F 77 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$05.b]		; 07 05
	ora $141F0A.l		; 0F 0A 1F 14
	and $000028.l,X		; 3F 28 00 00
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
	brk $CC.b		; 00 CC
	bra  82.b		; 80 52
	.db $82, $71, $C0		; 82 71 C0
	lda ($E0.b),Y		; B1 E0
	cmp $E7F8.w,X		; DD F8 E7
	jmp ($3EFB.w,X)		; 7C FB 3E
	sbc $30B0.w,X		; FD B0 30
	cpx $CEEC.w		; EC EC CE
	stx $4EEF.w		; 8E EF 4E
	sbc ($22.b)		; F2 22
	jsr ($FE18.w,X)		; FC 18 FE
	sty $FF.b		; 84 FF
	rep #$0F		; C2 0F
	inc $FF87.w,X		; FE 87 FF
	cmp $7E.b,S		; C3 7E
	sbc ($6F.b),Y		; F1 6F
	xba		; EB
	eor [$FF.b]		; 47 FF
	and $C1.b,S		; 23 C1
	ora $7F3D03.l		; 0F 03 3D 7F
	adc ($1F.b,X)		; 61 1F
	bpl -113.b		; 10 8F
	ora #$0081.w		; 09 81 00
	cmp [$50.b]		; C7 50
	sta [$24.b]		; 87 24
	sbc ($00.b,S),Y		; F3 00
	cmp $82.b,S		; C3 82
	ora $0906D6.l		; 0F D6 06 09
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $060709.l		; 0F 09 07 06
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
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$8000.w		; C0 00 80
	rts		; 60

	bra  96.b		; 80 60
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra  96.b		; 80 60
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpy #$C080.w		; C0 80 C0
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bpl  56.b		; 10 38
	sec		; 38
	bit $2C2C.w		; 2C 2C 2C
	tsb $0406.w		; 0C 06 04
	asl $04.b		; 06 04
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	bmi 124.b		; 30 7C
	plp		; 28
	ror $3E0C.w,X		; 7E 0C 3E
	tsb $0F.b		; 04 0F
	tsb $0F.b		; 04 0F
	brk $07.b		; 00 07
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
	asl $11.b		; 06 11
	tsb $0E11.w		; 0C 11 0E
	and ($1C.b)		; 32 1C
	and ($1C.b)		; 32 1C
	and ($00.b)		; 32 00
	rol $7E08.w,X		; 3E 08 7E
	brk $7E.b		; 00 7E
	ora $101E01.l		; 0F 01 1E 10
	trb $0C10.w		; 1C 10 0C
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	bpl  12.b		; 10 0C
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	ora $041C02.l,X		; 1F 02 1C 04
	bmi  20.b		; 30 14
	and ($14.b)		; 32 14
	and ($14.b)		; 32 14
	and ($14.b)		; 32 14
	and ($04.b)		; 32 04
	and ($08.b)		; 32 08
	bit $2F0C.w,X		; 3C 0C 2F
	trb $0C12.w		; 1C 12 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	cop $1E.b		; 02 1E
	ora ($01.b)		; 12 01
	ora [$00.b]		; 07 00
	ora $001C00.l		; 0F 00 1C 00
	and ($01.b,X)		; 21 01
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora $030F06.l		; 0F 06 0F 03
	brk $07.b		; 00 07
	ora $08.b,S		; 03 08
	php		; 08
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $F30F00.l		; 0F 00 0F F3
	ora $FF3FEF.l,X		; 1F EF 3F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b]		; E7 FF
	stz $3CEF.w,X		; 9E EF 3C
	cmp $BF6CFF.l,X		; DF FF 6C BF
	bcc 127.b		; 90 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bpl  -1.b		; 10 FF
	adc ($7F.b),Y		; 71 7F
	.db $62, $F9, $FE		; 62 F9 FE
	sbc ($FE.b),Y		; F1 FE
	sbc $FC.b,S		; E3 FC
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	stx $F9.b		; 86 F9
	brk $FC.b		; 00 FC
	ora $FB.b,S		; 03 FB
	ora [$F7.b]		; 07 F7
	sbc $FB04.w,X		; FD 04 FB
	asl A		; 0A
	sbc $30F71C.l,X		; FF 1C F7 30
	sbc $83E059.l,X		; FF 59 E0 83
	inx		; E8
	ora [$D7.b]		; 07 D7
	ora $8722C7.l		; 0F C7 22 87
	rol $7F0F.w		; 2E 0F 7F
	ora $9F0FDE.l		; 0F DE 0F 9F
	ora ($06.b,X)		; 01 06
	.db $42, $81		; 42 81
	sbc $3EE0FE.l,X		; FF FE E0 3E
.INDEX 16
	rep #$1E		; C2 1E
	cmp [$5F.b]		; C7 5F
	stx $BE.b		; 86 BE
	ora ($7F.b,X)		; 01 7F
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	inc $FF.b,X		; F6 FF
	sbc ($0C.b,S),Y		; F3 0C
	asl $3F00.w,X		; 1E 00 3F
	tsb $0E.b		; 04 0E
	tsb $FF.b		; 04 FF
	brk $EA.b		; 00 EA
	brk $1C.b		; 00 1C
	brk $1F.b		; 00 1F
	inx		; E8
	brk $C1.b		; 00 C1
	brk $F3.b		; 00 F3
	tsb $FB.b		; 04 FB
	tsb $F1.b		; 04 F1
	brk $00.b		; 00 00
	brk $37.b		; 00 37
	brk $E3.b		; 00 E3
	brk $E8.b		; 00 E8
	cmp ($00.b,X)		; C1 00
	eor ($00.b)		; 52 00
	adc $040404.l,X		; 7F 04 04 04
	brk $00.b		; 00 00
	ldx #$8000.w		; A2 00 80
	brk $08.b		; 00 08
	inx		; E8
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	tsb $BF.b		; 04 BF
	tsb $FF.b		; 04 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	sei		; 78
	lda $70BF70.l,X		; BF 70 BF 70
	sbc $E07EF0.l,X		; FF F0 7E E0
	jmp ($78E0.w,X)		; 7C E0 78
	rts		; 60

	sed		; F8
	rts		; 60

	beq 127.b		; F0 7F
	eor ($FE.b,X)		; 41 FE
.ACCU 16
.INDEX 16
	rep #$FC		; C2 FC
	brk $FC.b		; 00 FC
	sta $F8.b		; 85 F8
	sta ($F8.b,X)		; 81 F8
	bit #$00F0.w		; 89 F0 00
	beq -112.b		; F0 90
	bmi -17.b		; 30 EF
	bmi -17.b		; 30 EF
	clv		; B8
	adc [$58.b],Y		; 77 58
	sbc [$5C.b],Y		; F7 5C
	xce		; FB
	adc $E9FB.w		; 6D FB E9
	adc $3E756B.l,X		; 7F 6B 75 3E
	asl $3E.b,X		; 16 3E
	asl $3E.b,X		; 16 3E
	txa		; 8A
	ror $5EEA.w,X		; 7E EA 5E
	dec $7C.b		; C6 7C
	sbc $6C.b,X		; F5 6C
	sbc $68.b		; E5 68
	sbc #$0100.w		; E9 00 01
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora [$FF.b]		; 07 FF
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $5F0410.l,X		; 1F 10 04 5F
	ora #$1A3F.w		; 09 3F 1A
	adc $027E19.l,X		; 7F 19 7E 02
	sbc $0D.b,X		; F5 0D
	sbc [$8D.b],Y		; F7 8D
	pea $FC85.w		; F4 85 FC
	lda $C0DDA0.l		; AF A0 DD C0
	tyx		; BB
	ldy #$A0BA.w		; A0 BA A0
	cli		; 58
	eor ($D9.b,X)		; 41 D9
	ora ($EB.b),Y		; 11 EB
	brk $EB.b		; 00 EB
	pha		; 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$C0.b]		; 07 C0
	ora $E200.w		; 0D 00 E2
	.db $82, $FE, $F0		; 82 FE F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E3.b		; 00 E3
	brk $F2.b		; 00 F2
	.db $82, $FF, $F0		; 82 FF F0
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C8.b		; 00 C8
	brk $7C.b		; 00 7C
	php		; 08
	cpy $C0.b		; C4 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	brk $F8.b		; 00 F8
	tsb $FF.b		; 04 FF
	tsb $FF.b		; 04 FF
	tsb $FB.b		; 04 FB
	tsb $FB.b		; 04 FB
	sta ($FC.b,X)		; 81 FC
	lda $DC.b		; A5 DC
	ldx #$C08E.w		; A2 8E C0
	sta $3D004D.l		; 8F 4D 00 3D
	brk $1D.b		; 00 1D
	tsb $0C.b		; 04 0C
	tsb $03.b		; 04 03
	bra  11.b		; 80 0B
	dey		; 88
	ora $D4.b		; 05 D4
	ora $9B.b,S		; 03 9B
	jmp $24F7.w		; 4C F7 24
	sbc $22F926.l,X		; FF 26 F9 22
	cmp $3FC0.w,X		; DD C0 3F
	sed		; F8
	ora $FC.b,S		; 03 FC
	ora ($BE.b,X)		; 01 BE
	bra -35.b		; 80 DD
	php		; 08
	sbc $EE00.w		; ED 00 EE
	asl $2E.b		; 06 2E
	jsl $FE00C0.l		; 22 C0 00 FE
	cop $FF.b		; 02 FF
	ora ($7F.b,X)		; 01 7F
	brk $55.b		; 00 55
	ldy $F40D.w		; AC 0D F4
	php		; 08
	inc $64.b,X		; F6 64
	plx		; FA
	ldy #$B08C.w		; A0 8C B0
	stx $38.b		; 86 38
	sta $1C.b,S		; 83 1C
	cmp ($C4.b,X)		; C1 C4
	eor $600F84.l,X		; 5F 84 0F 60
	adc $789790.l		; 6F 90 97 78
	phd		; 0B
	jmp ($7E05.w,X)		; 7C 05 7E
	cop $BF.b		; 02 BF
	sta ($99.b,X)		; 81 99
	bvc -119.b		; 50 89
	brk $0F.b		; 00 0F
	brk $66.b		; 00 66
	brk $A1.b		; 00 A1
	bvs -79.b		; 70 B1
	sei		; 78
	sec		; 38
	jmp ($BE1C.w,X)		; 7C 1C BE
	brk $F7.b		; 00 F7
	brk $F6.b		; 00 F6
	brk $F8.b		; 00 F8
	brk $F9.b		; 00 F9
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	tsb $081F.w		; 0C 1F 08
	ora $013E01.l,X		; 1F 01 3E 01
	and $037D03.l,X		; 3F 03 7D 03
	adc $07DB07.l		; 6F 07 DB 07
	sta $1D000E.l,X		; 9F 0E 00 1D
	ora ($1B.b,X)		; 01 1B
	ora $33.b,S		; 03 33
	brk $27.b		; 00 27
	asl $47.b		; 06 47
	brk $0F.b		; 00 0F
	tsb $000F.w		; 0C 0F 00
	sei		; 78
	lda $E07FF0.l,X		; BF F0 7F E0
	sbc $C0FFE0.l,X		; FF E0 FF C0
	sbc $82FD82.l,X		; FF 82 FD 82
	sbc $F906.w,X		; FD 06 F9
	sbc $80FFC4.l,X		; FF C4 FF 80
	sbc $01FF00.l,X		; FF 00 FF 01
	sbc $06FF02.l,X		; FF 02 FF 06
	sbc $16F70E.l,X		; FF 0E F7 16
	ora [$F7.b]		; 07 F7
	ora [$F7.b]		; 07 F7
	jsr $78F0.w		; 20 F0 78
	sbc [$31.b],Y		; F7 31
	sbc $02FF01.l		; EF 01 FF 02
	sbc $D7FF00.l,X		; FF 00 FF D7
	ora $200F97.l		; 0F 97 0F 20
	ora $BB0C7D.l		; 0F 7D 0C BB
	tya		; 98
	sta [$80.b],Y		; 97 80
	stx $9D80.w		; 8E 80 9D
	bra -17.b		; 80 EF
	sbc $1ECFDF.l,X		; FF DF CF 1E
	asl $6181.w		; 0E 81 61
	and #$29D5.w		; 29 D5 29
	cmp $49.b,X		; D5 49
	inc $FE49.w,X		; FE 49 FE
	sta $FF0EFF.l		; 8F FF 0E FF
	tsb $FF.b		; 04 FF
	sta ($9F.b,X)		; 81 9F
	pla		; 68
	pld		; 2B
	pla		; 68
	pld		; 2B
	stp		; DB
	ora ($DB.b,X)		; 01 DB
	ora ($E1.b,X)		; 01 E1
	ora ($5A.b),Y		; 11 5A
	lsr A		; 4A
	txs		; 9A
	tsx		; BA
	.db $82, $B2, $0D		; 82 B2 0D
	ora $2941.w		; 0D 41 29
	rol A		; 2A
	sbc $F912.w,Y		; F9 12 F9
	ora ($9F.b,X)		; 01 9F
	lsr A		; 4A
	sbc $02FF8A.l		; EF 8A FF 02
	sbc $40FF00.l,X		; FF 00 FF 40
	cmp $700F68.l,X		; DF 68 0F 70
	ora [$91.b]		; 07 91
	bpl  74.b		; 10 4A
	lsr A		; 4A
	txs		; 9A
	tsx		; BA
	.db $82, $B2, $0D		; 82 B2 0D
	tsb $441B.w		; 0C 1B 44
	ror $20.b		; 66 20
	ror $10.b,X		; 76 10
	brk $FE.b		; 00 FE
	lsr A		; 4A
	sbc $02FF8A.l,X		; FF 8A FF 02
	sbc $00FE00.l,X		; FF 00 FE 00
	sbc $20.b		; E5 20
	sbc $FD10.w,X		; FD 10 FD
	rts		; 60

	bcs  32.b		; B0 20
	beq  32.b		; F0 20
	rti		; 40

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	rts		; 60

	rti		; 40

	rts		; 60

	brk $60.b		; 00 60
	rts		; 60

	jsr $2000.w		; 20 00 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $78.b,S		; 23 78
	.db $62, $38, $01		; 62 38 01
	bmi  33.b		; 30 21
	bpl   1.b		; 10 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	sbc #$E120.w		; E9 20 E1
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	asl $F8FF.w,X		; 1E FF F8
	sbc $80FEE1.l,X		; FF E1 FE 80
	sbc $F800.w,X		; FD 00 F8
	ora $F7.b,S		; 03 F7
	bra -15.b		; 80 F1
	dec $FFF8.w		; CE F8 FF
	sta ($FF.b,X)		; 81 FF
	ora [$FC.b]		; 07 FC
	clc		; 18
	sed		; F8
	adc $F0.b,S		; 63 F0
	sta [$F2.b]		; 87 F2
	ora $E60FF0.l		; 0F F0 0F E6
	ora ($02.b,X)		; 01 02
	inc $FB01.w,X		; FE 01 FB
	bra 125.b		; 80 7D
	adc ($9F.b,X)		; 61 9F
	bvs -49.b		; 70 CF
	sec		; 38
	adc [$04.b]		; 67 04
	plb		; AB
	rol $C191.w		; 2E 91 C1
	cpy #$1616.w		; C0 16 16
	tsa		; 3B
	tsa		; 3B
	bit $5EA4.w,X		; 3C A4 5E
	cmp ($0E.b)		; D2 0E
	inx		; E8
	ora [$F5.b]		; 07 F5
	ora ($F0.b,X)		; 01 F0
	adc $D31BDE.l,X		; 7F DE 1B D3
	lda [$E6.b],Y		; B7 E6
	.db $82, $C8, $10		; 82 C8 10
	bcs  89.b		; B0 59
	bcs  34.b		; B0 22
	bcs  -8.b		; B0 F8
	sbc ($5E.b),Y		; F1 5E
	adc $A63F93.l,X		; 7F 93 3F A6
	and $803F80.l,X		; 3F 80 3F 80
	adc $007F00.l,X		; 7F 00 7F 00
	sbc $7AFF00.l,X		; FF 00 FF 7A
	sei		; 78
	sta $BB0C.w,X		; 9D 0C BB
	txs		; 9A
	lda [$82.b],Y		; B7 82
	ldy $1A40.w,X		; BC 40 1A
	rti		; 40

	stz $80.b,X		; 74 80
	clc		; 18
	cpy #$FC00.w		; C0 00 FC
	brk $EE.b		; 00 EE
	bra -34.b		; 80 DE
	bra -22.b		; 80 EA
	brk $C2.b		; 00 C2
	brk $E4.b		; 00 E4
	brk $C8.b		; 00 C8
	brk $E0.b		; 00 E0
	cpy #$C081.w		; C0 81 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	adc $167E82.l,X		; 7F 82 7E 16
	sbc $EF16.w,Y		; F9 16 EF
	brk $98.b		; 00 98
	brk $98.b		; 00 98
	brk $90.b		; 00 90
	brk $90.b		; 00 90
	brk $00.b		; 00 00
	eor ($50.b),Y		; 51 50
	eor [$07.b]		; 47 07
	lsr $00.b,X		; 56 00
	and $780FE0.l		; 2F E0 0F 78
	eor $1C.b		; 45 1C
	ora ($7F.b,X)		; 01 7F
	rol $7FE1.w		; 2E E1 7F
	brk $FF.b		; 00 FF
	brk $0C.b		; 00 0C
	jsr ($C0DF.w,X)		; FC DF C0
	and [$30.b],Y		; 37 30
	phd		; 0B
	php		; 08
	asl $5F1E.w,X		; 1E 1E 5F
	eor ($FF.b,X)		; 41 FF
	brk $FF.b		; 00 FF
	brk $F3.b		; 00 F3
	beq  30.b		; F0 1E
	bvs -113.b		; 70 8F
	sec		; 38
	cmp [$1C.b]		; C7 1C
	sbc $0E.b,S		; E3 0E
	sbc ($87.b),Y		; F1 87
	bcs  71.b		; B0 47
	sbc ($07.b),Y		; F1 07
	stz $1B.b,X		; 74 1B
	cmp $20E740.l		; CF 40 E7 20
	sbc ($10.b,S),Y		; F3 10
	sbc $7C08.w,Y		; F9 08 7C
	tsb $FC.b		; 04 FC
	mvp $01,$F8		; 44 F8 01
	cpx #$1E07.w		; E0 07 1E
	cmp $87470F.l		; CF 0F 47 87
	adc $A3.b,S		; 63 A3
	adc ($B1.b),Y		; 71 B1
	sed		; F8
	bmi -72.b		; 30 B8
	beq  -7.b		; F0 F9
	ror $E1.b,X		; 76 E1
	bra -65.b		; 80 BF
	bra  63.b		; 80 3F
	cpy #$C07F.w		; C0 7F C0
	adc $003F00.l,X		; 7F 00 3F 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $3700B9.l,X		; FF B9 00 37
	brk $13.b		; 00 13
	bpl 126.b		; 10 7E
	bpl  -4.b		; 10 FC
	brk $76.b		; 00 76
	brk $7E.b		; 00 7E
	brk $DC.b		; 00 DC
	brk $00.b		; 00 00
	dec $00.b		; C6 00
	iny		; C8
	brk $FC.b		; 00 FC
	brk $90.b		; 00 90
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	clv		; B8
	brk $FC.b		; 00 FC
	plp		; 28
	ldy $FC68.w,X		; BC 68 FC
	php		; 08
	iny		; C8
	bmi -128.b		; 30 80
	brk $C0.b		; 00 C0
	bra  96.b		; 80 60
	rti		; 40

	brk $00.b		; 00 00
	brk $28.b		; 00 28
	brk $E8.b		; 00 E8
	brk $C8.b		; 00 C8
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora $0F.b,S		; 03 0F
	ora [$1E.b]		; 07 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$00.b]		; 07 00
	ora $030001.l		; 0F 01 00 03
	brk $0F.b		; 00 0F
	ora [$3F.b]		; 07 3F
	ora $FF7EFF.l,X		; 1F FF 7E FF
	sed		; F8
	sbc $1FFFFF.l,X		; FF FF FF 1F
	sbc [$01.b]		; E7 01
	ora ($07.b,X)		; 01 07
	asl $1F.b		; 06 1F
	bpl 127.b		; 10 7F
	rti		; 40

	sbc $06FF01.l,X		; FF 01 FF 06
	sbc $58FF00.l,X		; FF 00 FF 58
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $79.b		; 00 79
	brk $47.b		; 00 47
	ora ($4F.b,X)		; 01 4F
	ora [$DF.b]		; 07 DF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	sec		; 38
	and ($30.b,S),Y		; 33 30
	and [$20.b]		; 27 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	brk $FA.b		; 00 FA
	.db $82, $FF, $F0		; 82 FF F0
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cmp $0D00.w,Y		; D9 00 0D
	sep #$00		; E2 00
	inc $DE00.w,X		; FE 00 DE
	sbc $26FF13.l,X		; FF 13 FF 26
	sbc $5A3BC4.l,X		; FF C4 3B 5A
	ora ($DC.b,X)		; 01 DC
	ora $68.b,S		; 03 68
	sta [$F9.b]		; 87 F9
	ora $DB00FF.l		; 0F FF 00 DB
	brk $37.b		; 00 37
	brk $02.b		; 00 02
	php		; 08
	bmi -124.b		; 30 84
	and ($48.b),Y		; 31 48
	and ($80.b)		; 32 80
	beq   1.b		; F0 01
.INDEX 16
	rep #$1D		; C2 1D
	adc ($0C.b,X)		; 61 0C
	bra -110.b		; 80 92
	adc $AC00.w,Y		; 79 00 AC
	bne  70.b		; D0 46
	sei		; 78
	.db $42, $FC		; 42 FC
	eor $F8F0.w		; 4D F0 F8
	pld		; 2B
	beq   7.b		; F0 07
	rts		; 60

	ora $201F80.l		; 0F 80 1F 20
	and $100790.l		; 2F 90 07 10
	ora [$10.b]		; 07 10
	ora ($D0.b,S),Y		; 13 D0
	sbc $62.b,S		; E3 62
	sbc ($8D.b),Y		; F1 8D
	rts		; 60

	tas		; 1B
	bra -115.b		; 80 8D
	jsr $8056.w		; 20 56 80
	lsr $00.b,X		; 56 00
	.db $42, $00		; 42 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FB.b		; 00 FB
	brk $E6.b		; 00 E6
	brk $F2.b		; 00 F2
	brk $FB.b		; 00 FB
	brk $F9.b		; 00 F9
	brk $FD.b		; 00 FD
	bcs   0.b		; B0 00
	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	bra  56.b		; 80 38
	cpy #$E01C.w		; C0 1C E0
	asl $0070.w		; 0E 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	ora [$38.b]		; 07 38
	ora $9C.b,S		; 03 9C
	lda ($8E.b,X)		; A1 8E
	lda ($86.b),Y		; B1 86
	lda $3E00.w,Y		; B9 00 3E
	rti		; 40

	sec		; 38
	cpy #$8020.w		; C0 20 80
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $DE.b		; 00 DE
	brk $CE.b		; 00 CE
	brk $E6.b		; 00 E6
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	cli		; 58
	lda $50E840.l		; AF 40 E8 50
	sed		; F8
	rts		; 60

	sed		; F8
	bvs -72.b		; 70 B8
	bmi -40.b		; 30 D8
	bpl 104.b		; 10 68
	brk $38.b		; 00 38
	bvc  64.b		; 50 40
	bvc   0.b		; 50 00
	rti		; 40

	brk $60.b		; 00 60
	brk $70.b		; 00 70
	rti		; 40

	bvs  32.b		; 70 20
	bmi  16.b		; 30 10
	brk $00.b		; 00 00
	stz $DB.b		; 64 DB
	eor $D9.b,S		; 43 D9
	adc $F1.b,S		; 63 F1
	adc ($B1.b,S),Y		; 73 B1
	and ($D0.b,S),Y		; 33 D0
	ora ($60.b)		; 12 60
	ora ($30.b,X)		; 01 30
	brk $00.b		; 00 00
	jmp ($6004.w)		; 6C 04 60
	ora ($40.b,X)		; 01 40
	ora #$4970.w		; 09 70 49
	bvs  41.b		; 70 29
	bmi -103.b		; 30 99
	brk $48.b		; 00 48
	brk $38.b		; 00 38
	php		; 08
	pea $6143.w		; F4 43 61
	adc $41.b,S		; 63 41
	and ($70.b,S),Y		; 33 70
	eor ($30.b)		; 52 30
	lda ($10.b,X)		; A1 10
	rti		; 40

	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	ora $40F940.l		; 0F 40 F9 40
	sbc ($30.b),Y		; F1 30
	sbc ($10.b),Y		; F1 10
	sbc ($00.b),Y		; F1 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	brk $0F.b		; 00 0F
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	cpy #$40C0.w		; C0 C0 40
	rti		; 40

	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
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
	brk $03.b		; 00 03
	clc		; 18
	asl A		; 0A
	clc		; 18
	ora $041D.w		; 0D 1D 04
	bpl  22.b		; 10 16
	bmi  31.b		; 30 1F
	and ($0E.b),Y		; 31 0E
	and ($0E.b,X)		; 21 0E
	and ($0F.b,X)		; 21 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora ($10.b)		; 12 10
	ora $000F10.l,X		; 1F 10 0F 00
	asl $1F00.w		; 0E 00 1F
	ora ($1E.b,X)		; 01 1E
	brk $2C.b		; 00 2C
	ror $B4.b		; 66 B4
	inc $28.b,X		; F6 28
	jmp ($EC38.w)		; 6C 38 EC
	bpl -60.b		; 10 C4
	cli		; 58
	cpy $58.b		; C4 58
	cpy $58.b		; C4 58
	cpy $98.b		; C4 98
	brk $08.b		; 00 08
	brk $D4.b		; 00 D4
	mvp $C4,$D4		; 44 D4 C4
	jmp ($3844.w,X)		; 7C 44 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	asl $1C.b,X		; 16 1C
	rol $10.b,X		; 36 10
	rol $08.b,X		; 36 08
	bit $5C20.w,X		; 3C 20 5C
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
	trb $12.b		; 14 12
	brk $12.b		; 00 12
	tsb $16.b		; 04 16
	bpl  20.b		; 10 14
	bpl  60.b		; 10 3C
	php		; 08
	bit $7C08.w,X		; 3C 08 7C
	brk $58.b		; 00 58
	tsb $1C00.w		; 0C 00 1C
	bpl   8.b		; 10 08
	brk $1C.b		; 00 1C
	tsb $14.b		; 04 14
	tsb $08.b		; 04 08
	brk $28.b		; 00 28
	jsr $1030.w		; 20 30 10
	rti		; 40

	cpy #$F810.w		; C0 10 F8
	rti		; 40

	ldy $60.b,X		; B4 60
	sta $0FFF02.l,X		; 9F 02 FF 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $68.b		; 00 68
	rti		; 40

	bvs  96.b		; 70 60
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi 104.b		; 30 68
	jsr $2068.w		; 20 68 20
	pla		; 68
	brk $38.b		; 00 38
	bmi  56.b		; 30 38
	brk $38.b		; 00 38
	jsr $0028.w		; 20 28 00
	bit $50.b		; 24 50
	rti		; 40

	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	sec		; 38
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0C21.w		; 0E 21 0C
	and ($0E.b,X)		; 21 0E
	jsl $082208.l		; 22 08 22 08
	jsl $28260C.l		; 22 0C 26 28
	bit $28.b		; 24 28
	bit $1E.b		; 24 1E
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	jsl $38203C.l		; 22 3C 20 38
	jsr $041C.w		; 20 1C 04
	clc		; 18
	brk $58.b		; 00 58
	cpy $58.b		; C4 58
	cpy $38.b		; C4 38
	cpx $38.b		; E4 38
	stz $28.b		; 64 28
	stz $28.b		; 64 28
	stz $18.b		; 64 18
	bit $18.b,X		; 34 18
	bit $38.b,X		; 34 38
	brk $38.b		; 00 38
	brk $58.b		; 00 58
	rti		; 40

	cli		; 58
	rti		; 40

	clc		; 18
	brk $18.b		; 00 18
	brk $28.b		; 00 28
	jsr $2028.w		; 20 28 20
	adc [$EF.b],Y		; 77 EF
	adc [$AF.b],Y		; 77 AF
	and [$CB.b],Y		; 37 CB
	ora [$6B.b],Y		; 17 6B
	ora $7D.b,S		; 03 7D
	ora $3C.b,S		; 03 3C
	ora ($1E.b,X)		; 01 1E
	brk $07.b		; 00 07
	adc $587F18.l,X		; 7F 18 7F 58
	adc $5C7F3C.l,X		; 7F 3C 7F 5C
	and [$22.b],Y		; 37 22
	ora [$17.b],Y		; 17 17
	ora $01.b,S		; 03 01
	ora $02.b,S		; 03 02
	cpy #$C0BF.w		; C0 BF C0
	lda $80BFC0.l,X		; BF C0 BF 80
	sbc $007D80.l,X		; FF 80 7D 00
	sbc $FD00.w,X		; FD 00 FD
	brk $FD.b		; 00 FD
	cpx #$E060.w		; E0 60 E0
	rts		; 60

	cpx #$C060.w		; E0 60 C0
	rti		; 40

	cpy #$C0C0.w		; C0 C0 C0
	rti		; 40

	bra   0.b		; 80 00
	bra -128.b		; 80 80
	jsl $C34AE3.l		; 22 E3 4A C3
	phy		; 5A
	cmp $98.b,S		; C3 98
	sta $B9.b,S		; 83 B9
	sta $B9.b,S		; 83 B9
	sta $BD.b,S		; 83 BD
	sta [$BC.b]		; 87 BC
	stx $5C.b		; 86 5C
	rti		; 40

	ldy $BC80.w,X		; BC 80 BC
	bra 126.b		; 80 7E
	cop $7E.b		; 02 7E
	cop $7C.b		; 02 7C
	brk $78.b		; 00 78
	brk $79.b		; 00 79
	brk $20.b		; 00 20
	sed		; F8
	beq  -8.b		; F0 F8
	beq  -8.b		; F0 F8
	bne -40.b		; D0 D8
	bcs -104.b		; B0 98
	bmi  24.b		; 30 18
	rts		; 60

	clc		; 18
	rts		; 60

	clc		; 18
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bpl -16.b		; 10 F0
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	inc A		; 1A
	brk $7C.b		; 00 7C
	brk $24.b		; 00 24
	brk $22.b		; 00 22
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	tas		; 1B
	ora $1B.b,S		; 03 1B
	tas		; 1B
	ora $001D.w,X		; 1D 1D 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $FF00.w		; 1C 00 FF
	bit $1FFB.w,X		; 3C FB 1F
	ror $3F0F.w,X		; 7E 0F 3F
	ora $000017.l		; 0F 17 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $BF00.w,X		; 3C 00 BF
	tsb $DF.b		; 04 DF
	sta ($EF.b,X)		; 81 EF
	cpy #$E8EF.w		; C0 EF E8
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	cop $06.b		; 02 06
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora [$0C.b]		; 07 0C
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	bcc -106.b		; 90 96
	pla		; 68
	tsb $0D60.w		; 0C 60 0D
	beq  25.b		; F0 19
	bne  25.b		; D0 19
	cpx #$8031.w		; E0 31 80
	and ($C0.b),Y		; 31 C0
	adc ($6C.b,X)		; 61 6C
	tsb $F0.b		; 04 F0
	brk $F8.b		; 00 F8
	php		; 08
	cpx #$E000.w		; E0 00 E0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	asl A		; 0A
	ora $00150A.l,X		; 1F 0A 15 00
	asl $5400.w		; 0E 00 54
	bvc  -8.b		; 50 F8
	bvc -88.b		; 50 A8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	brk $0A.b		; 00 0A
	asl A		; 0A
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	bvc   0.b		; 50 00
	bvc  80.b		; 50 50
	pld		; 2B
	mvn $38,$07		; 54 07 38
	ora $221F30.l		; 0F 30 1F 22
	ora $4E3F66.l,X		; 1F 66 3F 4E
	and $9E7F5E.l,X		; 3F 5E 7F 9E
	pld		; 2B
	pld		; 2B
	ora [$07.b],Y		; 17 07
	ora $3D3F0F.l		; 0F 0F 3F 3D
	and $717F19.l,X		; 3F 19 7F 71
	adc $617F21.l,X		; 7F 21 7F 61
	ora $BF1E8F.l,X		; 1F 8F 1E BF
	adc $7A5E.w		; 6D 5E 7A
	tsb $006C.w		; 0C 6C 00
	eor ($1C.b)		; 52 1C
	and $B8.b		; 25 B8
	asl $10.b		; 06 10
	asl $7F.b		; 06 7F
	tsb $28DF.w		; 0C DF 28
	sta $709F60.l,X		; 9F 60 9F 70
	sta $108968.l		; 8F 68 89 10
	cmp ($00.b)		; D2 00
	xba		; EB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($3D.b,X)		; C1 3D
	sbc $3CE5.w,Y		; F9 E5 3C
	and $EC06.w,Y		; 39 06 EC
	jsr $20D2.w		; 20 D2 20
	jmp.w [$DB24]		; DC 24 DB
	mvp $01,$BB		; 44 BB 01
	sbc $18FFE1.l,X		; FF E1 FF 18
	sbc $607F64.l,X		; FF 64 7F 60
	and $FDA7EC.l		; 2F EC A7 FD
	and $DD.b,X		; 35 DD
	eor $80.b,X		; 55 80
	bra -64.b		; 80 C0
	cpy #$E0E0.w		; C0 E0 E0
	jmp $1EFC.w		; 4C FC 1E
	rol $1E1E.w,X		; 3E 1E 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	cpy #$00FC.w		; C0 FC 00
	inc $FF0C.w,X		; FE 0C FF
	asl $003F.w		; 0E 3F 00
	asl $0000.w,X		; 1E 00 00
	sed		; F8
	adc [$F8.b],Y		; 77 F8
	adc [$F8.b],Y		; 77 F8
	adc [$F0.b]		; 67 F0
	sbc $F0EFF0.l		; EF F0 EF F0
	sbc $E1FFE1.l		; EF E1 FF E1
	sbc $FE8EFE.l,X		; FF FE 8E FE
	stx $9CFC.w		; 8E FC 9C
	jsr ($FC1C.w,X)		; FC 1C FC
	trb $1CFD.w		; 1C FD 1C
	sbc $FB08.w,Y		; F9 08 FB
	php		; 08
	tsa		; 3B
	sed		; F8
	and [$F3.b],Y		; 37 F3
	brk $F0.b		; 00 F0
	brk $F7.b		; 00 F7
	adc ($F6.b),Y		; 71 F6
.ACCU 8
.INDEX 8
	sep #$FD		; E2 FD
.ACCU 16
.INDEX 16
	rep #$FD		; C2 FD
	sty $FB.b		; 84 FB
	sei		; 78
	ora [$70.b]		; 07 70
	ora $710F00.l		; 0F 00 0F 71
	ora #$0BF3.w		; 09 F3 0B
	inc $06.b		; E6 06
	dec $12.b,X		; D6 12
	lda $002D.w		; AD 2D 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $9900.w,Y		; D9 00 99
	brk $89.b		; 00 89
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	cop $06.b		; 02 06
	brk $04.b		; 00 04
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	clv		; B8
	stx $70.b		; 86 70
	asl $7B.b		; 06 7B
	asl $0E73.w		; 0E 73 0E
	adc ($0C.b,X)		; 61 0C
	adc ($1C.b),Y		; 71 1C
	adc ($14.b,X)		; 61 14
	and ($34.b,X)		; 21 34
	adc $06FF06.l,X		; 7F 06 FF 06
	sbc ($00.b),Y		; F1 00
	sbc $F308.w,Y		; F9 08 F3
	brk $E3.b		; 00 E3
	brk $F3.b		; 00 F3
	bpl -61.b		; 10 C3
	brk $C0.b		; 00 C0
	bpl -64.b		; 10 C0
	bpl -64.b		; 10 C0
	bpl -32.b		; 10 E0
	bmi -32.b		; 30 E0
	bmi -64.b		; 30 C0
	bmi -64.b		; 30 C0
	jsr $20C0.w		; 20 C0 20
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	cpx #$C000.w		; E0 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	cpx #$0020.w		; E0 20 00
	ora $0F00.w,Y		; 19 00 0F
	brk $1B.b		; 00 1B
	brk $36.b		; 00 36
	brk $25.b		; 00 25
	ora ($27.b,X)		; 01 27
	ora ($3F.b,X)		; 01 3F
	asl $79.b		; 06 79
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	ora #$1A09.w		; 09 09 1A
	inc A		; 1A
	ora $0119.w,Y		; 19 19 01
	brk $18.b		; 00 18
	clc		; 18
	ora [$3B.b]		; 07 3B
	ora ($FE.b,X)		; 01 FE
	asl $7F.b		; 06 7F
	bit $4F.b,X		; 34 4F
	lsr A		; 4A
	lda $B0.b,X		; B5 B0
	sbc $A3FF10.l,X		; FF 10 FF A3
	eor $C4CF.w,X		; 5D CF C4
	ora ($01.b,X)		; 01 01
	ldx $84.b,Y		; B6 84
	sty $80.b		; 84 80
	cop $02.b		; 02 02
	lda $00.b,X		; B5 00
	trb $00.b		; 14 00
	tay		; A8
	lda $07.b,S		; A3 07
	tsb $0803.w		; 0C 03 08
	cop $08.b		; 02 08
	ora $190C19.l		; 0F 19 0C 19
	asl $13.b		; 06 13
	tsb $13.b		; 04 13
	brk $1E.b		; 00 1E
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $000608.l		; 0F 08 06 00
	ora [$01.b]		; 07 01
	tsb $0E00.w		; 0C 00 0E
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	adc ($80.b,X)		; 61 80
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$0040.w		; C0 40 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	jsr $0000.w		; 20 00 00
	brk $28.b		; 00 28
	plp		; 28
	jmp ($5428.w,X)		; 7C 28 54
	brk $38.b		; 00 38
	brk $11.b		; 00 11
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	plp		; 28
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	adc $9F7F9E.l,X		; 7F 9E 7F 9F
	adc $CD3F8F.l,X		; 7F 8F 3F CD
	and $3D4F.w,X		; 3D 4F 3D
	eor $1D5F3D.l,X		; 5F 3D 5F 1D
	tda		; 7B
	adc $607F61.l,X		; 7F 61 7F 60
	adc $327F70.l,X		; 7F 70 7F 32
	adc $203F70.l,X		; 7F 70 3F 20
	and $063F22.l,X		; 3F 22 3F 06
	sbc $FCF8.w,X		; FD F8 FC
	sed		; F8
	sbc $EEF0.w,X		; FD F0 EE
	brk $F6.b		; 00 F6
	beq -15.b		; F0 F1
	cpx #$E0F3.w		; E0 F3 E0
	sbc $FB18F1.l,X		; FF F1 18 FB
	sec		; 38
	xce		; FB
	bvs -13.b		; 70 F3
	brk $F1.b		; 00 F1
	bpl  -1.b		; 10 FF
	rts		; 60

	sbc $70EE60.l		; EF 60 EE 70
	sbc ($40.b),Y		; F1 40
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
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  68.b		; 80 44
	tyx		; BB
	dey		; 88
	adc [$89.b],Y		; 77 89
	ror $89.b,X		; 76 89
	ror $11.b,X		; 76 11
	inc $ED12.w		; EE 12 ED
	jsl $FD02DD.l		; 22 DD 02 FD
	cmp $AABB46.l,X		; DF 46 BB AA
	tyx		; BB
	lda #$CDFF.w		; A9 FF CD
	adc [$55.b],Y		; 77 55
	ror $12.b,X		; 76 12
	ror $022A.w		; 6E 2A 02
	cop $00.b		; 02 00
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
	brk $E0.b		; 00 E0
	sbc $E0FFE0.l,X		; FF E0 FF E0
	sbc $F0FFE0.l,X		; FF E0 FF F0
	sbc $F0EFF0.l		; EF F0 EF F0
	sbc $FBEFF0.l		; EF F0 EF FB
	php		; 08
	sed		; F8
	php		; 08
	sbc $F909.w,Y		; F9 09 F9
	php		; 08
	sed		; F8
	clc		; 18
	sed		; F8
	clc		; 18
	sed		; F8
	clc		; 18
	sed		; F8
	clc		; 18
	bit $DB.b		; 24 DB
	pha		; 48
	lda [$88.b],Y		; B7 88
	adc [$90.b],Y		; 77 90
	adc $01EE11.l		; 6F 11 EE 01
	inc $FF00.w,X		; FE 00 FF
	asl $FF.b		; 06 FF
	adc $DB64.w		; 6D 64 DB
	phx		; DA
	tyx		; BB
	tay		; A8
	sbc [$D4.b],Y		; F7 D4
	adc [$11.b],Y		; 77 11
	ora $101009.l		; 0F 09 10 10
	clc		; 18
	clc		; 18
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	rol $7F.b,X		; 36 7F
	jsl $00007F.l		; 22 7F 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	asl $04.b		; 06 04
	ora $00090F.l		; 0F 0F 09 00
	rol $20.b,X		; 36 20
	jsl $FF0000.l		; 22 00 00 FF
	bcs  -5.b		; B0 FB
	ora $FD.b,X		; 15 FD
	lda $55.b		; A5 55
	ora $E5.b		; 05 E5
	brk $E5.b		; 00 E5
	brk $E2.b		; 00 E2
	sty $70.b		; 84 70
	eor ($00.b,X)		; 41 00
	bcs   6.b		; B0 06
	bpl   7.b		; 10 07
	lda $AF.b		; A5 AF
	rti		; 40

	ora $E03FA0.l,X		; 1F A0 3F E0
	and $00AFE0.l,X		; 3F E0 AF 00
	ror $8C70.w,X		; 7E 70 8C
	rts		; 60

	stz $F800.w		; 9C 00 F8
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	sei		; 78
	sei		; 78
	sei		; 78
	pla		; 68
	bvs  16.b		; 70 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi -124.b		; 30 84
	bvs -124.b		; 70 84
	bvs -124.b		; 70 84
	bvs -124.b		; 70 84
	sed		; F8
	sty $8CF8.w		; 8C F8 8C
	sed		; F8
	sty $8C78.w		; 8C 78 8C
	sei		; 78
	brk $F8.b		; 00 F8
	bra  -8.b		; 80 F8
	bra  -8.b		; 80 F8
	bra 112.b		; 80 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	bra  56.b		; 80 38
	sty $8C38.w		; 8C 38 8C
	sei		; 78
	cpy $CC78.w		; CC 78 CC
	clc		; 18
	cpy $4410.w		; CC 10 44
	bmi 100.b		; 30 64
	sec		; 38
	jmp ($80F0.w)		; 6C F0 80
	beq -128.b		; F0 80
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bvs  64.b		; 70 40
	sei		; 78
	rti		; 40

	clc		; 18
	brk $10.b		; 00 10
	brk $28.b		; 00 28
	phy		; 5A
	asl $6F.b,X		; 16 6F
	brk $7F.b		; 00 7F
	ora ($3E.b,X)		; 01 3E
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $20.b		; 24 20
	bmi  16.b		; 30 10
	sec		; 38
	brk $07.b		; 00 07
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	cpy #$0020.w		; C0 20 00
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tas		; 1B
	brk $1F.b		; 00 1F
	clc		; 18
	asl $08.b,X		; 16 08
	rol $38.b		; 26 38
	rol $10.b		; 26 10
	lsr $4E60.w		; 4E 60 4E
	bvc -36.b		; 50 DC
	tsb $0004.w		; 0C 04 00
	brk $0C.b		; 00 0C
	tsb $18.b		; 04 18
	brk $18.b		; 00 18
	brk $34.b		; 00 34
	tsb $34.b		; 04 34
	tsb $28.b		; 04 28
	php		; 08
	ora $0F.b		; 05 0F
	ora $0A.b		; 05 0A
	brk $07.b		; 00 07
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	ora $05.b		; 05 05
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
	brk $88.b		; 00 88
	bra 120.b		; 80 78
	iny		; C8
	ldy $F8.b,X		; B4 F8
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	iny		; C8
	bra  -4.b		; 80 FC
	pha		; 48
	jsr ($9800.w,X)		; FC 00 98
	jmp ($FC00.w)		; 6C 00 FC
	jmp.w [$5EE0]		; DC E0 5E
	jsr ($7EBD.w,X)		; FC BD 7E
	sei		; 78
	inc $FCF0.w,X		; FE F0 FC
	sed		; F8
	cpy #$90FC.w		; C0 FC 90
	clc		; 18
	brk $C0.b		; 00 C0
	tsb $1E40.w		; 0C 40 1E
	tya		; 98
	lda $607F30.l,X		; BF 30 7F 60
	inc $FC80.w,X		; FE 80 FC
	clc		; 18
	jmp ($2C10.w)		; 6C 10 2C
	brk $3C.b		; 00 3C
	php		; 08
	bit $00.b,X		; 34 00
	bit $2408.w,X		; 3C 08 24
	trb $30.b		; 14 30
	php		; 08
	dec A		; 3A
	bmi  32.b		; 30 20
	sec		; 38
	plp		; 28
	brk $00.b		; 00 00
	clc		; 18
	php		; 08
	brk $00.b		; 00 00
	clc		; 18
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora [$02.b]		; 07 02
	ora [$01.b]		; 07 01
	cop $00.b		; 02 00
	adc $FF6C.w		; 6D 6C FF
	eor $FE.b		; 45 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	cop $00.b		; 02 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	adc $4540.w		; 6D 40 45
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $15.b		; 00 15
	nop		; EA
	ora $FC.b,S		; 03 FC
	adc [$FA.b]		; 67 FA
	and $AD5EF4.l		; 2F F4 5E AD
	rol $7CD9.w,X		; 3E D9 7C
	tyx		; BB
	jsr ($1533.w,X)		; FC 33 15
	ora $0B.b,X		; 15 0B
	ora $67.b,S		; 03 67
	ora $2F.b		; 05 2F
	phd		; 0B
	eor $27BF53.l,X		; 5F 53 BF 27
	adc $CEFE47.l,X		; 7F 47 FE CE
	sta $73.b		; 85 73
	ora $F3.b		; 05 F3
	cop $F9.b		; 02 F9
	ora ($F8.b,X)		; 01 F8
	cop $F9.b		; 02 F9
	jsl $F932F9.l		; 22 F9 32 F9
	dec A		; 3A
	sbc $EFE0.w,Y		; F9 E0 EF
	cpy #$C04F.w		; C0 4F C0
	cmp [$80.b]		; C7 80
	sta [$A0.b]		; 87 A0
	sta [$30.b]		; 87 30
	ora [$78.b]		; 07 78
	ora [$78.b]		; 07 78
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($08.b,X)		; 01 08
	sbc [$08.b],Y		; F7 08
	sbc [$48.b],Y		; F7 48
	sbc [$00.b],Y		; F7 00
	sta $7C87FC.l		; 8F FC 87 7C
	asl $F0.b		; 06 F0
	asl $F8.b		; 06 F8
	tsb $082E.w		; 0C 2E 08
	lsr $2E48.w		; 4E 48 2E
	plp		; 28
	beq -128.b		; F0 80
	ply		; 7A
	cop $F8.b		; 02 F8
	brk $FC.b		; 00 FC
	tsb $F0.b		; 04 F0
	brk $80.b		; 00 80
	adc $8C7D81.l,X		; 7F 81 7D 8C
	bvs  14.b		; 70 0E
	cpx #$7007.w		; E0 07 70
	ora $38.b,S		; 03 38
	ora ($1C.b,X)		; 01 1C
	brk $0E.b		; 00 0E
	pea $E280.w		; F4 80 E2
	bra -113.b		; 80 8F
	bra  63.b		; 80 3F
	jsr $101F.w		; 20 1F 10
	ora $040708.l		; 0F 08 07 04
	ora $02.b,S		; 03 02
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $60.b		; 00 60
	rti		; 40

	bvs -96.b		; 70 A0
	sec		; 38
	bne  24.b		; D0 18
	cpx #$000C.w		; E0 0C 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	rti		; 40

	ldy #$D020.w		; A0 20 D0
	bpl -32.b		; 10 E0
	brk $F8.b		; 00 F8
	php		; 08
	ora [$07.b]		; 07 07
	ora $03.b,S		; 03 03
	ora ($05.b,X)		; 01 05
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	rti		; 40

	mvp $22,$20		; 44 20 22
	ora $07.b,S		; 03 07
	ora ($03.b,X)		; 01 03
	ora ($05.b,X)		; 01 05
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $44.b		; 00 44
	brk $22.b		; 00 22
	bra -128.b		; 80 80
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$E0E0.w		; C0 E0 E0
	beq -16.b		; F0 F0
	sed		; F8
	sed		; F8
	sei		; 78
	sed		; F8
	bit $007C.w,X		; 3C 7C 00
	bra -128.b		; 80 80
	cpy #$C080.w		; C0 80 C0
	cpy #$60E0.w		; C0 E0 60
	beq 112.b		; F0 70
	sed		; F8
	bmi  -8.b		; 30 F8
	sec		; 38
	jmp ($C000.w,X)		; 7C 00 C0
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C040.w		; C0 40 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $1100.w		; 20 00 11
	brk $08.b		; 00 08
	tsb $04.b		; 04 04
	cop $03.b		; 02 03
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $11.b		; 00 11
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	ora ($21.b,X)		; 01 21
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	cop $02.b		; 02 02
	ora ($11.b,X)		; 01 11
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $21.b		; 00 21
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $11.b		; 00 11
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $12.b		; 00 12
	sta ($89.b,X)		; 81 89
	rti		; 40

	mvp $22,$20		; 44 20 22
	ora $9F0F3F.l,X		; 1F 3F 0F 9F
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $12.b		; 00 12
	brk $89.b		; 00 89
	rti		; 40

	mvp $22,$20		; 44 20 22
	bpl  63.b		; 10 3F
	tsb $3F9F.w		; 0C 9F 3F
	and $0F1F1F.l,X		; 3F 1F 1F 0F
	sta $274F4F.l		; 8F 4F 4F 27
	and [$1B.b]		; 27 1B
	tyx		; BB
	sta $EF4FDF.l		; 8F DF 4F EF
	pld		; 2B
	and $0B1F17.l,X		; 3F 17 1F 0B
	sta $034F07.l		; 8F 07 4F 03
	and [$13.b]		; 27 13
	tyx		; BB
	sta $47DF.w		; 8D DF 47
	sbc $C0C0C0.l		; EF C0 C0 C0
	cpy #$E0E0.w		; C0 E0 E0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$F0F0.w		; E0 F0 F0
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	cpy #$C0E0.w		; C0 E0 C0
	cpx #$F0C0.w		; E0 C0 F0
	cpx #$E0F0.w		; E0 F0 E0
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	asl $3B07.w		; 0E 07 3B
	ora $DF3F6F.l,X		; 1F 6F 3F DF
	adc $7EFFBF.l,X		; 7F BF FF 7E
	sbc $0000F9.l,X		; FF F9 00 00
	ora [$05.b]		; 07 05
	ora $303F14.l,X		; 1F 14 3F 30
	adc $C0FF60.l,X		; 7F 60 FF C0
	sbc $06FF81.l,X		; FF 81 FF 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $3D.b,S		; 03 3D
	and $7FFFCF.l,X		; 3F CF FF 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $B0FF0A.l		; 0F 0A FF B0
	sbc $050080.l,X		; FF 80 00 05
	brk $03.b		; 00 03
	ora ($0E.b,X)		; 01 0E
	ora [$7B.b]		; 07 7B
	and $FDFEDE.l,X		; 3F DE FE FD
	jsr ($F1FB.w,X)		; FC FB F1
	inc $0202.w		; EE 02 02
	ora ($01.b,X)		; 01 01
	ora [$05.b]		; 07 05
	ora $A1FF14.l,X		; 1F 14 FF A1
	sbc $04FE02.l,X		; FF 02 FE 04
	sbc $0111.w,X		; FD 11 01
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	cop $03.b		; 02 03
	asl $03.b		; 06 03
	asl $01.b		; 06 01
	tsb $1C05.w		; 0C 05 1C
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	phd		; 0B
	php		; 08
	beq  12.b		; F0 0C
	cpx #$F008.w		; E0 08 F0
	clc		; 18
	cpy #$E010.w		; C0 10 E0
	bmi -128.b		; 30 80
	bmi -64.b		; 30 C0
	rts		; 60

	brk $60.b		; 00 60
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	cpx #$F000.w		; E0 00 F0
	bpl -64.b		; 10 C0
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	cpy #$0040.w		; C0 40 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
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
	brk $78.b		; 00 78
	tsb $84F0.w		; 0C F0 84
	jmp ($38C6.w,X)		; 7C C6 38
	sep #$0C		; E2 0C
	.db $62, $1E, $73		; 62 1E 73
	trb $71.b		; 14 71
	rol $E1.b		; 26 E1
	beq   0.b		; F0 00
	jmp ($3804.w,X)		; 7C 04 38
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	jsl $0E000C.l		; 22 0C 00 0E
	brk $1E.b		; 00 1E
	brk $11.b		; 00 11
	ora ($08.b),Y		; 11 08
	php		; 08
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $FEFC.w,X		; BC FC FE
	inc $7E7E.w,X		; FE 7E 7E
	and $7F1F3F.l,X		; 3F 3F 1F 7F
	ora $5F1FBF.l		; 0F BF 1F 5F
	ora $FC182F.l		; 0F 2F 18 FC
	stz $4CFE.w		; 9C FE 4C
	ror $3F2E.w,X		; 7E 2E 3F
	asl $0F7F.w,X		; 1E 7F 0F
	lda $075F07.l,X		; BF 07 5F 07
	and $008000.l		; 2F 00 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $20.b		; 00 20
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $02.b		; 00 02
	brk $11.b		; 00 11
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	ora ($01.b,X)		; 01 01
	brk $02.b		; 00 02
	brk $11.b		; 00 11
	brk $09.b		; 00 09
	tsb $24.b		; 04 24
	ora [$17.b],Y		; 17 17
	ora $1F1F1F.l,X		; 1F 1F 1F 1F
	sbc $7F7FFF.l,X		; FF FF 7F 7F
	ror $007E.w,X		; 7E 7E 00
	ora #$2400.w		; 09 00 24
	cop $17.b		; 02 17
	ora $1F.b		; 05 1F
	asl $1F.b		; 06 1F
	ora $FF.b,S		; 03 FF
	ora $FE00FF.l,X		; 1F FF 00 FE
	sta [$FF.b]		; 87 FF
	adc [$FF.b],Y		; 77 FF
	and $FFFFFF.l,X		; 3F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sed		; F8
	sed		; F8
	brk $00.b		; 00 00
	stx $FF.b		; 86 FF
	eor $FF.b,S		; 43 FF
	and ($FF.b,X)		; 21 FF
	sta [$FF.b]		; 87 FF
	ora $FFF8FF.l,X		; 1F FF F8 FF
	bra  -8.b		; 80 F8
	brk $00.b		; 00 00
	adc $3F377F.l		; 6F 7F 37 3F
	ora $CF0F1F.l,X		; 1F 1F 0F CF
	adc [$6F.b]		; 67 6F
	and [$3F.b],Y		; 37 3F
	xce		; FB
	sbc $277F7F.l,X		; FF 7F 7F 27
	adc $0B3F17.l,X		; 7F 17 3F 0B
	ora $07CF07.l,X		; 1F 07 CF 07
	adc $B33F03.l		; 6F 03 3F B3
	sbc $F87F5B.l,X		; FF 5B 7F F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	cpx #$E0F8.w		; E0 F8 E0
	sed		; F8
	beq  -8.b		; F0 F8
	beq  -8.b		; F0 F8
	beq  -8.b		; F0 F8
	beq  -8.b		; F0 F8
	beq  -8.b		; F0 F8
	beq  -8.b		; F0 F8
	ora $05.b,S		; 03 05
	ora $0F.b,S		; 03 0F
	ora [$0B.b]		; 07 0B
	ora [$1E.b]		; 07 1E
	asl $0C15.w		; 0E 15 0C
	ora $183B0C.l,X		; 1F 0C 3B 18
	and $070607.l		; 2F 07 06 07
	brk $0F.b		; 00 0F
	tsb $010F.w		; 0C 0F 01
	ora $111F0A.l		; 0F 0A 1F 11
	asl $1C06.w,X		; 1E 06 1C
	bpl  -1.b		; 10 FF
	sbc $EF.b,S		; E3 EF
	sta [$9E.b],Y		; 97 9E
	adc $3CFD1E.l		; 6F 1E FD 3C
	stp		; DB
	adc $79BA.w,X		; 7D BA 79
	sbc [$FB.b],Y		; F7 FB
	adc $FF.b,X		; 75 FF
	trb $68FF.w		; 1C FF 68
	sbc $43FFB0.l,X		; FF B0 FF 43
	sbc $477FA4.l,X		; FF A4 7F 47
	sbc $8EFF08.l,X		; FF 08 FF 8E
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F0FFFC.l,X		; FF FC FF F0
	inc $69.b,X		; F6 69
	cpx $98D3.w		; EC D3 98
	sbc [$18.b]		; E7 18
	sbc [$FF.b]		; E7 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora $FF.b,S		; 03 FF
	ora $FF96FF.l		; 0F FF 96 FF
	and $3BFF.w		; 2D FF 3B
	inc $E25A.w,X		; FE 5A E2
	cmp $893EC4.l,X		; DF C4 3E 89
	jmp ($FC01.w,X)		; 7C 01 FC
	ora ($FC.b,X)		; 01 FC
	brk $FC.b		; 00 FC
	rti		; 40

	sbc $FDE1.w,X		; FD E1 FD
	plx		; FA
	jsr $D1F4.w		; 20 F4 D1
	cpx $C4A3.w		; EC A3 C4
	eor [$80.b]		; 47 80
	sta $80.b,S		; 83 80
	sta $60.b,S		; 83 60
	ora $F0.b,S		; 03 F0
	ora $30.b,S		; 03 30
	cmp $C19E61.l		; CF 61 9E C1
	ldx $7F80.w,Y		; BE 80 7F
	brk $FF.b		; 00 FF
	brk $E7.b		; 00 E7
	trb $26DD.w		; 1C DD 26
	inc $7E7F.w,X		; FE 7F 7E
	sbc $5BFB6F.l,X		; FF 6F FB 5B
	sbc $C2B9.w,Y		; F9 B9 C2
	.db $42, $47		; 42 47
	ora $243E98.l,X		; 1F 98 3E 24
	adc [$3C.b]		; 67 3C
.ACCU 8
	sep #$29		; E2 29
	bne  92.b		; D0 5C
	lda ($16.b),Y		; B1 16
	dey		; 88
	lsr $0CC0.w,X		; 5E C0 0C
	cpy #$F014.w		; C0 14 F0
	brk $FE.b		; 00 FE
	sbc $02.b,S		; E3 02
	.db $82, $14, $D2		; 82 14 D2
	trb $F3.b		; 14 F3
	php		; 08
	lda $427E80.l,X		; BF 80 7E 42
	ldx $00A2.w		; AE A2 00
	brk $35.b		; 00 35
	wai		; CB
	ror $FCA7.w,X		; 7E A7 FC
	adc $FBDFF8.l		; 6F F8 DF FB
	sbc [$F7.b],Y		; F7 F7
	sbc $9CFFCE.l		; EF CE FF 9C
	sbc $FEB4FD.l,X		; FF FD B4 FE
	cli		; 58
	jsr ($FB90.w,X)		; FC 90 FB
	jsr $08FB.w		; 20 FB 08
	sbc [$10.b],Y		; F7 10
	sbc $00DE00.l		; EF 00 DE 00
	sbc ($FB.b,X)		; E1 FB
	sbc ($F3.b,X)		; E1 F3
	eor $02E3.w		; 4D E3 02
	sbc $F687.w		; ED 87 F6
	and $DB.b,S		; 23 DB
	eor #$B5.b		; 49 B5
	bcc 110.b		; 90 6E
	beq   7.b		; F0 07
	beq  15.b		; F0 0F
	rts		; 60

	ora $C21FA0.l,X		; 1F A0 1F C2
	ora $6C27B1.l		; 0F B1 27 6C
	phk		; 4B
	cld		; D8
	sta ($92.b),Y		; 91 92
	cmp $E0EEC8.l,X		; DF C8 EE E0
	inc $F8.b,X		; F6 F8
	beq -22.b		; F0 EA
	beq -12.b		; F0 F4
	rts		; 60

	cpy $68A0.w		; CC A0 68
	rti		; 40

	sta ($F8.b,S),Y		; 93 F8
	dex		; CA
	sbc $F9E0.w,Y		; F9 E0 F9
	cpx #$40FF.w		; E0 FF 40
	sbc $80FE00.l,X		; FF 00 FE 80
	inc $FC40.w,X		; FE 40 FC
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	cpy #$E0C0.w		; C0 C0 E0
	cpx #$E060.w		; E0 60 E0
	bvs 112.b		; 70 70
	bmi 112.b		; 30 70
	clc		; 18
	sec		; 38
	cpy #$0000.w		; C0 00 00
	cpx #$E0C0.w		; E0 C0 E0
	rti		; 40

	beq  96.b		; F0 60
	beq  32.b		; F0 20
	beq  16.b		; F0 10
	sei		; 78
	brk $7C.b		; 00 7C
	brk $02.b		; 00 02
	ora ($06.b,X)		; 01 06
	brk $07.b		; 00 07
	ora ($0F.b,X)		; 01 0F
	brk $0B.b		; 00 0B
	tsb $041A.w		; 0C 1A 04
	and ($08.b)		; 32 08
	ror $01.b,X		; 76 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $0C.b		; 00 0C
	php		; 08
	asl $02.b		; 06 02
	tsb $2C00.w		; 0C 00 2C
	bit $C0.b		; 24 C0
	bmi -128.b		; 30 80
	rts		; 60

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C020.w		; E0 20 C0
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora $07.b,S		; 03 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $16.b		; 00 16
	bpl  38.b		; 10 26
	bmi  68.b		; 30 44
	sei		; 78
	sty $03.b		; 84 03
	cop $00.b		; 02 00
	brk $05.b		; 00 05
	ora ($06.b,X)		; 01 06
	brk $08.b		; 00 08
	brk $1C.b		; 00 1C
	tsb $38.b		; 04 38
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	tsb $7000.w		; 0C 00 70
	brk $21.b		; 00 21
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora $1E1E0F.l		; 0F 0F 1E 1E
	brk $47.b		; 00 47
	brk $A4.b		; 00 A4
	brk $94.b		; 00 94
	brk $8F.b		; 00 8F
	ora ($9E.b,X)		; 01 9E
	ora $7C.b,S		; 03 7C
	ora [$F9.b]		; 07 F9
	eor [$B8.b]		; 47 B8
	brk $00.b		; 00 00
	eor $43.b,S		; 43 43
	adc $63.b,S		; 63 63
	adc ($72.b,S),Y		; 73 72
	adc [$65.b]		; 67 65
	sta $5E5F8B.l		; 8F 8B 5F 5E
	cmp $0000DF.l,X		; DF DF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$FFFF.w		; C0 FF FF
	adc $3F3F7F.l,X		; 7F 7F 3F 3F
	ora $DFDF1F.l,X		; 1F 1F DF DF
	adc $FF7FFF.l,X		; 7F FF 7F FF
	sbc $FF2FFF.l,X		; FF FF 2F FF
	ora $3F2F7F.l,X		; 1F 7F 2F 3F
	ora [$1F.b],Y		; 17 1F
	sta $FF5FDF.l,X		; 9F DF 5F FF
	and $FF7FFF.l		; 2F FF 7F FF
	sed		; F8
	sed		; F8
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$C0C0.w		; E0 C0 C0
	bra -128.b		; 80 80
	cpx #$E0F8.w		; E0 F8 E0
	beq -32.b		; F0 E0
	beq -64.b		; F0 C0
	beq -64.b		; F0 C0
	cpx #$E080.w		; E0 80 E0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	sbc $FEFEFF.l,X		; FF FF FE FE
	jsr ($F0FC.w,X)		; FC FC F0
	beq -64.b		; F0 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $7CFF.w,X		; FE FF 7C
	inc $FCF0.w,X		; FE F0 FC
	cpy #$00F0.w		; C0 F0 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	cop $0E.b		; 02 0E
	ora $0C.b		; 05 0C
	ora ($18.b,X)		; 01 18
	phd		; 0B
	clc		; 18
	asl $31.b,X		; 16 31
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora $04.b		; 05 04
	phd		; 0B
	php		; 08
	ora $101708.l		; 0F 08 17 10
	ora $7E5A01.l		; 0F 01 5A 7E
	tya		; 98
	cop $3C.b		; 02 3C
	sbc ($0C.b,X)		; E1 0C
	sbc ($5E.b,X)		; E1 5E
	sbc ($4E.b),Y		; F1 4E
	cld		; D8
	eor $68.b,S		; 43 68
	and $B7.b		; 25 B7
	rti		; 40

	cmp $3C.b,S		; C3 3C
	cmp ($1E.b,X)		; C1 1E
	bra  62.b		; 80 3E
	ldy #$C00E.w		; A0 0E C0
	ora [$E0.b]		; 07 E0
	ora [$F0.b]		; 07 F0
	and ($F8.b,X)		; 21 F8
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	bra  64.b		; 80 40
	brk $40.b		; 00 40
	rti		; 40

	bra   0.b		; 80 00
	ora ($FE.b,X)		; 01 FE
	cop $C5.b		; 02 C5
	tsb $8B.b		; 04 8B
	php		; 08
	ora [$11.b],Y		; 17 11
	rol $3E01.w		; 2E 01 3E
	cop $1D.b		; 02 1D
	cop $0D.b		; 02 0D
	cmp ($41.b,X)		; C1 41
	sta $82.b,S		; 83 82
	ora [$04.b]		; 07 04
	asl $1D08.w		; 0E 08 1D
	ora ($1D.b),Y		; 11 1D
	ora ($0B.b,X)		; 01 0B
	cop $03.b		; 02 03
	cop $25.b		; 02 25
	phx		; DA
	and $DA.b		; 25 DA
	pha		; 48
	lda [$88.b],Y		; B7 88
	adc [$12.b],Y		; 77 12
	sbc $ED12.w		; ED 12 ED
	jsl $DF20DD.l		; 22 DD 20 DF
	lda $25.b,X		; B5 25
	lda $25.b,X		; B5 25
	adc $ED48.w		; 6D 48 ED
	dey		; 88
	stp		; DB
	ora ($DB.b)		; 12 DB
	ora ($BB.b)		; 12 BB
	jsl $0020BB.l		; 22 BB 20 00
	ldy #$D000.w		; A0 00 D0
	rti		; 40

	bcs  64.b		; B0 40
	bcs  64.b		; B0 40
	clv		; B8
	jsr $20D8.w		; 20 D8 20
	jmp.w [$DC20]		; DC 20 DC
	brk $7C.b		; 00 7C
	brk $24.b		; 00 24
	rti		; 40

	rti		; 40

	rts		; 60

	rti		; 40

	beq  64.b		; F0 40
	bcs  32.b		; B0 20
	clv		; B8
	jsr $20BC.w		; 20 BC 20
	trb $1E1C.w		; 1C 1C 1E
	asl $0E08.w,X		; 1E 08 0E
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0C3E.w		; 0C 3E 0C
	and $001F00.l,X		; 3F 00 1F 00
	ora $000C00.l,X		; 1F 00 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	ror $08.b,X		; 76 08
	ror $08.b,X		; 76 08
	jsl $002302.l		; 22 02 23 00
	and [$00.b]		; 27 00
	and $003F00.l,X		; 3F 00 3F 00
	ora $2C042C.l		; 0F 2C 04 2C
	tsb $1C.b		; 04 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $17.b		; 00 17
	ora $0F.b		; 05 0F
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	clc		; 18
	and [$11.b],Y		; 37 11
	rol $3F01.w,X		; 3E 01 3F
	ora ($13.b,X)		; 01 13
	ora ($12.b,X)		; 01 12
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora $190C.w,X		; 1D 0C 19
	ora ($19.b,X)		; 01 19
	php		; 08
	ora ($10.b),Y		; 11 10
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	sbc ($EF.b,S),Y		; F3 EF
	sbc [$EB.b],Y		; F7 EB
	sbc [$DF.b]		; E7 DF
	inc $DF.b		; E6 DF
	dec $BD.b		; C6 BD
	cpy $BF.b		; C4 BF
	sty $F2.b		; 84 F2
	sty $62.b		; 84 62
	sbc $1CFF10.l,X		; FF 10 FF 1C
	sbc $38FF28.l,X		; FF 28 FF 38
	sbc [$53.b],Y		; F7 53
	inc $60.b		; E6 60
	cpy $04.b		; C4 04
	cpy $84.b		; C4 84
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	cop $06.b		; 02 06
	ora $0C.b		; 05 0C
	ora [$0C.b]		; 07 0C
	ora [$18.b]		; 07 18
	ora $000019.l		; 0F 19 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $000608.l		; 0F 08 06 00
	jmp $86B0C6.l		; 5C C6 B0 86
	bvs  12.b		; 70 0C
	beq  24.b		; F0 18
	cpx #$C030.w		; E0 30 C0
	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	clv		; B8
	bra 124.b		; 80 7C
	tsb $F8.b		; 04 F8
	php		; 08
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	and ($0C.b,S),Y		; 33 0C
	rol $18.b		; 26 18
	ror $4C00.w		; 6E 00 4C
	bpl -40.b		; 10 D8
	rts		; 60

	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$101C.w		; E0 1C 10
	clc		; 18
	brk $34.b		; 00 34
	bit $38.b		; 24 38
	php		; 08
	rts		; 60

	rti		; 40

	bpl  16.b		; 10 10
	ldy #$C020.w		; A0 20 C0
	brk $56.b		; 00 56
	cpy #$82B8.w		; C0 B8 82
	sei		; 78
	tsb $18F0.w		; 0C F0 18
	cpx #$C030.w		; E0 30 C0
	rts		; 60

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	ldx $7C80.w,Y		; BE 80 7C
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	and ($00.b),Y		; 31 00
	and ($00.b),Y		; 31 00
	jsr $2000.w		; 20 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($10.b),Y		; 31 10
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $03.b		; 02 03
	tsb $07.b		; 04 07
	php		; 08
	ora ($1E.b,X)		; 01 1E
	asl $3C2D.w,X		; 1E 2D 3C
	tad		; 5B
	brk $7E.b		; 00 7E
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	asl $3E12.w,X		; 1E 12 3E
	bit $00.b		; 24 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	jsr $18A0.w		; 20 A0 18
	cli		; 58
	tsb $062C.w		; 0C 2C 06
	asl $0F0F.w,X		; 1E 0F 0F
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	jsr $10A0.w		; 20 A0 10
	cli		; 58
	php		; 08
	bit $1E04.w		; 2C 04 1E
	cop $0F.b		; 02 0F
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $76.b		; 00 76
	brk $FF.b		; 00 FF
	bne  -1.b		; D0 FF
	jsr ($DAFF.w,X)		; FC FF DA
	sbc $00FFCA.l,X		; FF CA FF 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -14.b		; 80 F2
	bpl  -4.b		; 10 FC
	tsb $FE.b		; 04 FE
	txs		; 9A
	sbc $04EF95.l,X		; FF 95 EF 04
	ora ($0E.b,X)		; 01 0E
	ora ($0B.b,X)		; 01 0B
	ora ($07.b,X)		; 01 07
	cop $05.b		; 02 05
	cop $07.b		; 02 07
	ora $0A.b		; 05 0A
	tsb $0D.b		; 04 0D
	phd		; 0B
	ora $01.b		; 05 01
	ora ($03.b,X)		; 01 03
	cop $03.b		; 02 03
	brk $03.b		; 00 03
	cop $06.b		; 02 06
	brk $06.b		; 00 06
	ora $0C.b		; 05 0C
	ora $0C.b,S		; 03 0C
	phd		; 0B
	clc		; 18
	beq  30.b		; F0 1E
	cpx $31.b		; E4 31
	cpx $08.b		; E4 08
	inc $DF20.w		; EE 20 DF
	bpl -18.b		; 10 EE
	cmp ($FC.b,X)		; C1 FC
	sbc $F9.b,S		; E3 F9
	cpy $B8C3.w		; CC C3 B8
	lda $1C.b,S		; A3 1C
	ora [$10.b]		; 07 10
	ora ($E8.b,X)		; 01 E8
	plp		; 28
	bmi  17.b		; 30 11
	bvc -61.b		; 50 C3
	cmp ($E7.b,X)		; C1 E7
	and $0C.b,S		; 23 0C
	jsr $9009.w		; 20 09 90
	tas		; 1B
	ora [$78.b]		; 07 78
	pha		; 48
	bit $E4.b,X		; 34 E4
	tda		; 7B
	cpx #$D0FF.w		; E0 FF D0
	sbc $08F300.l		; EF 00 F3 08
	inc $19.b,X		; F6 19
	sbc $07.b		; E5 07
	bra  27.b		; 80 1B
	iny		; C8
	adc $C4E5.w		; 6D E5 C4
	beq -128.b		; F0 80
	beq  24.b		; F0 18
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	stx $D0.b		; 86 D0
	trb $7E4C.w		; 1C 4C 7E
	stz $18EE.w		; 9C EE 18
	cpx $08.b		; E4 08
	pea $F800.w		; F4 00 F8
	ror $FC43.w,X		; 7E 43 FC
	sty $E8.b		; 84 E8
	php		; 08
	ldy $5C20.w		; AC 20 5C
	bvc  24.b		; 50 18
	clc		; 18
	pha		; 48
	php		; 08
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $03.b		; 02 03
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $00.b		; 02 00
	php		; 08
	brk $04.b		; 00 04
	brk $1E.b		; 00 1E
	brk $7F.b		; 00 7F
	pha		; 48
	lda ($A8.b,S),Y		; B3 A8
	eor $D08F58.l		; 4F 58 8F D0
	eor [$07.b]		; 47 07
	ora [$03.b]		; 07 03
	ora $01.b,S		; 03 01
	ora ($18.b,X)		; 01 18
	clc		; 18
	adc ($6D.b,X)		; 61 6D
	sbc ($B9.b,X)		; E1 B9
	cmp #$C179.w		; C9 79 C1
	clv		; B8
	pla		; 68
	sbc $49F867.l,X		; FF 67 F8 49
	pei ($37.b)		; D4 37
	jmp.w [$D235]		; DC 35 D2
	ora [$F0.b],Y		; 17 F0
	phd		; 0B
	sed		; F8
	ora $FC.b,X		; 15 FC
	jmp ($6800.w)		; 6C 00 68
	brk $60.b		; 00 60
	asl $64.b		; 06 64
	ora $2C.b		; 05 2C
	cop $8F.b		; 02 8F
	bra -57.b		; 80 C7
	cpy #$C0C3.w		; C0 C3 C0
	txs		; 9A
	sbc $68EF12.l,X		; FF 12 EF 68
	asl $70.b		; 06 70
	asl $1CA0.w		; 0E A0 1C
	cpx #$0038.w		; E0 38 00
	bvs   0.b		; 70 00
	bmi -34.b		; 30 DE
	brk $0A.b		; 00 0A
	jsr $10C2.w		; 20 C2 10
	cpy $20.b		; C4 20
	iny		; C8
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	ldy #$80C0.w		; A0 C0 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
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
	sbc [$EC.b]		; E7 EC
	eor [$50.b]		; 47 50
	ora $C01EA0.l		; 0F A0 1E C0
	and $877C83.l,X		; 3F 83 7C 87
	sei		; 78
	ora $431F10.l		; 0F 10 1F 43
	beq  79.b		; F0 4F
	cpx #$401F.w		; E0 1F 40
	and $007C00.l,X		; 3F 00 7C 00
	tda		; 7B
	ora $F4.b,S		; 03 F4
	tsb $E8.b		; 04 E8
	php		; 08
	cpx #$B03F.w		; E0 3F B0
	and $D03F30.l,X		; 3F 30 3F D0
	sbc $08FE08.l,X		; FF 08 FE 08
	cpy $8400.w		; CC 00 84
	tsb $06.b		; 04 06
	cmp ($35.b,X)		; C1 35
	iny		; C8
	bit $1CC8.w,X		; 3C C8 1C
	jsr $C034.w		; 20 34 C0
	cpy $0C00.w		; CC 00 0C
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	bcs -113.b		; B0 8F
	bvc -49.b		; 50 CF
	jsr $10EF.w		; 20 EF 10
	sbc $88BE08.l,X		; FF 08 BE 88
	ldx $9E98.w,Y		; BE 98 9E
	tya		; 98
	stz $0A72.w,X		; 9E 72 0A
	lda ($8A.b)		; B2 8A
	bvc  72.b		; 50 48
	jsr $10A8.w		; 20 A8 10
	tya		; 98
	tsb $88.b		; 04 88
	tsb $98.b		; 04 98
	cop $9A.b		; 02 9A
	jsr $00D0.w		; 20 D0 00
	beq   0.b		; F0 00
	cpx #$C800.w		; E0 00 C8
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	jsr $2020.w		; 20 20 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $05.b		; 04 05
	tsb $05.b		; 04 05
	ora $45.b		; 05 45
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	tsb $05.b		; 04 05
	tsb $05.b		; 04 05
	tsb $45.b		; 04 45
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $E4.b		; 00 E4
	brk $1F.b		; 00 1F
	asl $3F.b		; 06 3F
	ora $7F137F.l		; 0F 7F 13 7F
	bit $FF.b		; 24 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	cpx #$CFE0.w		; E0 E0 CF
	cpy #$809F.w		; C0 9F 80
	lda $007780.l,X		; BF 80 77 00
	ora #$0703.w		; 09 03 07
	tas		; 1B
	ora $17.b,S		; 03 17
	asl $17.b		; 06 17
	ora $0D16.w		; 0D 16 0D
	asl $0E0E.w		; 0E 0E 0E
	asl $090E.w		; 0E 0E 09
	ora $030709.l		; 0F 09 07 03
	ora $040F02.l		; 0F 02 0F 04
	ora $0C1F0C.l		; 0F 0C 1F 0C
	ora $E71F0C.l,X		; 1F 0C 1F E7
	cmp $CB.b,S		; C3 CB
	sty $3FB0.w		; 8C B0 3F
	sei		; 78
	adc [$64.b],Y		; 77 64
	adc $187E41.l,X		; 7F 41 7E 18
	and $836322.l,X		; 3F 22 63 83
	sbc $30FF08.l,X		; FF 08 FF 30
	jsr ($FC63.w,X)		; FC 63 FC
	.db $42, $E4		; 42 E4
	eor ($C3.b,X)		; 41 C3
	ora $C6.b		; 05 C6
	trb $AE82.w		; 1C 82 AE
	cmp $0DF107.l,X		; DF 07 F1 0D
.ACCU 8
.INDEX 8
	sep #$3E		; E2 3E
	sbc $9D.b,S		; E3 9D
	eor ($3E.b,X)		; 41 3E
	cpx #$0F.b		; E0 0F
	cpx #$17.b		; E0 17
	beq   1.b		; F0 01
	sbc ($1E.b,X)		; E1 1E
	bpl -65.b		; 10 BF
	jsl $BE011D.l		; 22 1D 01 BE
	bra -97.b		; 80 9F
	brk $BF.b		; 00 BF
	jsr $408F.w		; 20 8F 40
	bpl -24.b		; 10 E8
	php		; 08
	pea $F488.w		; F4 88 F4
	cpy $7A.b		; C4 7A
	mvp $44,$FA		; 44 FA 44
	plx		; FA
	.db $82, $FD, $02		; 82 FD 02
	sbc $1050.w,X		; FD 50 10
	tya		; 98
	dey		; 88
	pha		; 48
	pha		; 48
	sty $2C04.w		; 8C 04 2C
	bit $24.b		; 24 24
	bit $26.b		; 24 26
	jsl $07A226.l		; 22 26 A2 07
	asl A		; 0A
	asl $1F.b		; 06 1F
	asl $0C15.w		; 0E 15 0C
	and $3C2B1C.l,X		; 3F 1C 2B 3C
	tad		; 5B
	plp		; 28
	eor $077F08.l,X		; 5F 08 7F 07
	ora $0F.b		; 05 0F
	php		; 08
	ora $011F1B.l,X		; 1F 1B 1F 01
	and $263F36.l,X		; 3F 36 3F 26
	and $022E32.l,X		; 3F 32 2E 02
	cli		; 58
	sbc ($0C.b,S),Y		; F3 0C
	xba		; EB
	ldy #$E7.b		; A0 E7
	bcc -61.b		; 90 C3
	bit $64C9.w,X		; 3C C9 64
	cmp ($72.b,X)		; C1 72
	bcc  98.b		; 90 62
	bra -47.b		; 80 D1
	trb $BCE1.w		; 1C E1 BC
	sta ($0C.b),Y		; 91 0C
	lda $F105.w,Y		; B9 05 F1
	eor [$30.b]		; 47 30
	asl $0F60.w		; 0E 60 0F
	cpx #$9F.b		; E0 9F
	inc A		; 1A
	inc $CF0C.w,X		; FE 0C CF
	jsr $30C7.w		; 20 C7 30
	cmp $00DF20.l		; CF 20 DF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc ($C1.b,S),Y		; F3 C1
	rti		; 40

	bcs   0.b		; B0 00
	tyx		; BB
	brk $B7.b		; 00 B7
	brk $AF.b		; 00 AF
	ora $9C.b,S		; 03 9C
	sty $B8.b		; 84 B8
	tay		; A8
	and ($2D.b,X)		; 21 2D
	brk $78.b		; 00 78
	brk $FC.b		; 00 FC
	brk $C6.b		; 00 C6
	clc		; 18
	txs		; 9A
	pla		; 68
	jmp ($1410.w)		; 6C 10 14
	php		; 08
	dey		; 88
	bvs  20.b		; 70 14
	bra   0.b		; 80 00
	beq -16.b		; F0 F0
	bra  56.b		; 80 38
	bpl 124.b		; 10 7C
	rts		; 60

	inc $FE10.w,X		; FE 10 FE
	cpy #$BE.b		; C0 BE
	cpx #$0C.b		; E0 0C
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	asl $0F.b		; 06 0F
	ora $0211.w		; 0D 11 02
	and ($10.b,S),Y		; 33 10
	adc $00DA3C.l		; 6F 3C DA 00
	jsr ($0000.w,X)		; FC 00 00
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	asl $0D00.w		; 0E 00 0D
	ora ($30.b,X)		; 01 30
	bmi 124.b		; 30 7C
	stz $00.b		; 64 00
	brk $00.b		; 00 00
	inc $F800.w,X		; FE 00 F8
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
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
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldx $FCBF.w,Y		; BE BF FC
	sbc $FFFC.w,X		; FD FC FF
	jsr ($7CFF.w,X)		; FC FF 7C
	adc $1F3F3E.l,X		; 7F 3E 3F 1F
	ora $000707.l,X		; 1F 07 07 00
	ldy $FC8A.w,X		; BC 8A FC
	cld		; D8
	jsr ($FC7B.w,X)		; FC 7B FC
	adc $3C7E.w,X		; 7D 7E 3C
	and $061F1E.l,X		; 3F 1E 1F 06
	ora [$08.b]		; 07 08
	php		; 08
	brk $88.b		; 00 88
	php		; 08
	dey		; 88
	php		; 08
	dey		; 88
	dey		; 88
	iny		; C8
	tya		; 98
	jmp.w [$DE9C]		; DC 9C DE
	sbc $0800FF.l,X		; FF FF 00 08
	brk $88.b		; 00 88
	brk $88.b		; 00 88
	brk $88.b		; 00 88
	brk $88.b		; 00 88
	brk $9C.b		; 00 9C
	dey		; 88
	stz $FFCA.w,X		; 9E CA FF
	ora [$47.b]		; 07 47
	ora [$47.b]		; 07 47
	eor [$6F.b]		; 47 6F
	eor $EF4F6F.l		; 4F 6F 4F EF
	sbc $FFFFEF.l		; EF EF FF FF
	sbc $4704FF.l,X		; FF FF 04 47
	ora $47.b		; 05 47
	ora $6F.b		; 05 6F
	ora $6F.b		; 05 6F
	ora [$EF.b]		; 07 EF
	eor $FF4FEF.l		; 4F EF 4F FF
	sbc $0000FF.l		; EF FF 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E2.b		; 00 E2
	cpy #$FE.b		; C0 FE
	sei		; 78
	inc $FF4C.w,X		; FE 4C FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	plx		; FA
	brk $FC.b		; 00 FC
	brk $6E.b		; 00 6E
	brk $12.b		; 00 12
	and ($12.b)		; 32 12
	and ($12.b)		; 32 12
	rol $32.b,X		; 36 32
	rol $32.b,X		; 36 32
	rol $37.b,X		; 36 37
	and [$37.b],Y		; 37 37
	and $003F37.l,X		; 3F 37 3F 00
	and ($00.b)		; 32 00
	and ($00.b)		; 32 00
	rol $00.b,X		; 36 00
	rol $10.b,X		; 36 10
	rol $12.b,X		; 36 12
	and [$12.b],Y		; 37 12
	and $F83F37.l,X		; 3F 37 3F F8
	sed		; F8
	sed		; F8
	sed		; F8
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	pla		; 68
	sed		; F8
	sei		; 78
	sed		; F8
	bvs -16.b		; 70 F0
	bvs -16.b		; 70 F0
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	and $FFBFBF.l,X		; 3F BF BF FF
	ldx $FCFE.w,Y		; BE FE FC
	jsr ($F8F8.w,X)		; FC F8 F8
	beq -16.b		; F0 F0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	and [$BF.b],Y		; 37 BF
	and [$FF.b],Y		; 37 FF
	rol $3CFE.w,X		; 3E FE 3C
	jsr ($F8B8.w,X)		; FC B8 F8
	beq -16.b		; F0 F0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	plp		; 28
	php		; 08
	plp		; 28
	plp		; 28
	plp		; 28
	plp		; 28
	sec		; 38
	plp		; 28
	sec		; 38
	plp		; 28
	sec		; 38
	sec		; 38
	sec		; 38
	brk $08.b		; 00 08
	brk $28.b		; 00 28
	php		; 08
	plp		; 28
	php		; 08
	plp		; 28
	php		; 08
	sec		; 38
	php		; 08
	sec		; 38
	php		; 08
	sec		; 38
	php		; 08
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	clv		; B8
	bmi -80.b		; 30 B0
	bmi -80.b		; 30 B0
	bmi -80.b		; 30 B0
	bmi -16.b		; 30 F0
	bcs -16.b		; B0 F0
	plp		; 28
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	clv		; B8
	bmi -80.b		; 30 B0
	bmi -80.b		; 30 B0
	bmi -80.b		; 30 B0
	bmi -16.b		; 30 F0
	bmi -16.b		; 30 F0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	jsr $A0E0.w		; 20 E0 A0
	cpx #$A0.b		; E0 A0
	cpx #$A0.b		; E0 A0
	cpx #$C0.b		; E0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	jsr $2024.w		; 20 24 20
	bit $20.b		; 24 20
	stz $00.b		; 64 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $64.b		; 00 64
	tas		; 1B
	sta $1E9F1B.l,X		; 9F 1B 9F 1E
	stz $BE9E.w,X		; 9E 9E BE
	stz $9CBC.w		; 9C BC 9C
	ldy $B8B8.w,X		; BC B8 B8
	sed		; F8
	sed		; F8
	ora $9F.b,S		; 03 9F
	phd		; 0B
	sta $1A9E0A.l,X		; 9F 0A 9E 1A
	ldx $BC18.w,Y		; BE 18 BC
	trb $98BC.w		; 1C BC 98
	clv		; B8
	tya		; 98
	sed		; F8
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($13.b,X)		; 01 13
	ora ($13.b,X)		; 01 13
	ora $13.b,S		; 03 13
	ora $97.b,S		; 03 97
	tas		; 1B
	sta $010101.l,X		; 9F 01 01 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora ($01.b,S),Y		; 13 01
	ora ($01.b,S),Y		; 13 01
	ora ($01.b,S),Y		; 13 01
	sta [$03.b],Y		; 97 03
	sta $000101.l,X		; 9F 01 01 00
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
	brk $FF.b		; 00 FF
	sbc $0F7F7F.l,X		; FF 7F 7F 0F
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	sbc $0F7F7F.l,X		; FF 7F 7F 0F
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $F0FCFC.l,X		; FF FC FC F0
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $F0FCFC.l,X		; FF FC FC F0
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	ora $1300.w		; 0D 00 13
	ora ($23.b,X)		; 01 23
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora $1D0C.w		; 0D 0C 1D
	trb $0C00.w		; 1C 00 0C
	brk $92.b		; 00 92
	brk $7F.b		; 00 7F
	clc		; 18
	sbc $4DFF3F.l,X		; FF 3F FF 4D
	sbc $A2FF91.l,X		; FF 91 FF A2
	sbc $0C0000.l,X		; FF 00 00 0C
	tsb $8080.w		; 0C 80 80
	rol $7F00.w,X		; 3E 00 7F
	brk $FF.b		; 00 FF
	brk $DD.b		; 00 DD
	brk $B3.b		; 00 B3
	brk $03.b		; 00 03
	ora $060A07.l		; 0F 07 0A 06
	ora $1E150E.l,X		; 1F 0E 15 1E
	and $2F14.w		; 2D 14 2F
	tsb $3F.b		; 04 3F
	tsb $3B.b		; 04 3B
	ora [$04.b]		; 07 04
	ora $000F0D.l		; 0F 0D 0F 00
	ora $131F1B.l,X		; 1F 1B 1F 13
	ora $011719.l,X		; 1F 19 17 01
	ora [$07.b]		; 07 07
	asl $F5.b		; 06 F5
	bvc -13.b		; 50 F3
	pha		; 48
	sbc ($1E.b,X)		; E1 1E
	cpx $32.b		; E4 32
	cpx #$39.b		; E0 39
	iny		; C8
	and ($C0.b),Y		; 31 C0
	rts		; 60

	cpy #$F0.b		; C0 F0
	lsr $86C8.w,X		; 5E C8 86
	jmp.w [$F882]		; DC 82 F8
	and $98.b,S		; 23 98
	ora [$B0.b]		; 07 B0
	ora [$70.b]		; 07 70
	eor $060F30.l		; 4F 30 0F 06
	sbc [$10.b]		; E7 10
	sbc $18.b,S		; E3 18
	sbc [$10.b]		; E7 10
	sbc $00FF00.l		; EF 00 FF 00
	adc $8C7900.l,X		; 7F 00 79 8C
	and ($D8.b,S),Y		; 33 D8
	brk $DD.b		; 00 DD
	brk $DB.b		; 00 DB
	bra -41.b		; 80 D7
	sta ($4E.b,X)		; 81 4E
	.db $42, $5C		; 42 5C
	pei ($10.b)		; D4 10
	stx $01.b,Y		; 96 01
	cmp $FE00.w		; CD 00 FE
	brk $E3.b		; 00 E3
	tsb $34CD.w		; 0C CD 34
	ldx $08.b,Y		; B6 08
	txa		; 8A
	tsb $C4.b		; 04 C4
	sec		; 38
	txa		; 8A
	rts		; 60

	php		; 08
	sei		; 78
	sei		; 78
	cpy #$1C.b		; C0 1C
	dey		; 88
	rol $FFB0.w,X		; 3E B0 FF
	php		; 08
	adc $F05F60.l,X		; 7F 60 5F F0
	stx $F8.b		; 86 F8
	asl $6E1F.w		; 0E 1F 6E
	asl $195C.w		; 0E 5C 19
	eor $5935.w,X		; 5D 35 59
	and $39.b,X		; 35 39
	sec		; 38
	sec		; 38
	sec		; 38
	and $3B39.w,Y		; 39 39 3B
	bit $1F.b		; 24 1F
	tsb $093F.w		; 0C 3F 09
	and $313F11.l,X		; 3F 11 3F 31
	adc $307F30.l,X		; 7F 30 7F 30
	ror $7C10.w,X		; 7E 10 7C
	bit $D033.w,X		; 3C 33 D0
	sbc $82DFE0.l		; EF E0 DF 82
	sbc $FB04.w,X		; FD 04 FB
	rts		; 60

	sbc $F08780.l,X		; FF 80 87 F0
	ora [$30.b]		; 07 30
	jsr ($F0C2.w,X)		; FC C2 F0
	sty $1AE0.w		; 8C E0 1A
	.db $82, $06, $04		; 82 06 04
	asl $10.b,X		; 16 10
	tda		; 7B
	brk $FC.b		; 00 FC
	tsb $1C.b		; 04 1C
	cmp [$36.b]		; C7 36
	phb		; 8B
	xce		; FB
	sta $0775.w		; 8D 75 07
	sbc $3E83.w,Y		; F9 83 3E
	sta $5E.b,S		; 83 5E
	cmp $2E.b,S		; C3 2E
	sbc $7A.b,S		; E3 7A
	.db $42, $FD		; 42 FD
	bit #$76.b		; 89 76
	tsb $F8.b		; 04 F8
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	bra  60.b		; 80 3C
	brk $5C.b		; 00 5C
	rti		; 40

	jsr $20D0.w		; 20 D0 20
	bne  16.b		; D0 10
	inx		; E8
	bpl -24.b		; 10 E8
	bpl -24.b		; 10 E8
	php		; 08
	pea $F408.w		; F4 08 F4
	php		; 08
	pea $2060.w		; F4 60 20
	jsr $3020.w		; 20 20 30
	bpl -80.b		; 10 B0
	bcc -112.b		; 90 90
	bcc -104.b		; 90 98
	dey		; 88
	tya		; 98
	dey		; 88
	dey		; 88
	dey		; 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $05.b		; 02 05
	ora $0A.b		; 05 0A
	ora $2B1D15.l		; 0F 15 1D 2B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$05.b]		; 07 05
	ora $141F0A.l		; 0F 0A 1F 14
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	brk $F8.b		; 00 F8
	cpx #$F8.b		; E0 F8
	bmi  -4.b		; 30 FC
	pla		; 68
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inx		; E8
	brk $F0.b		; 00 F0
	brk $B8.b		; 00 B8
	brk $78.b		; 00 78
	brk $48.b		; 00 48
	ldy $18A0.w,X		; BC A0 18
	cpy #$38.b		; C0 38
	bra 112.b		; 80 70
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	plp		; 28
	bra   8.b		; 80 08
	rti		; 40

	bpl -128.b		; 10 80
	jsr $0000.w		; 20 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	mvp $7C,$00		; 44 00 7C
	brk $7E.b		; 00 7E
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	tsb $3E.b		; 04 3E
	jsl $00101E.l		; 22 1E 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$06.b]		; 07 06
	ora $02110D.l		; 0F 0D 11 02
	and ($10.b,S),Y		; 33 10
	adc $00DA3C.l		; 6F 3C DA 00
	jsr ($0000.w,X)		; FC 00 00
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	asl $0D00.w		; 0E 00 0D
	ora ($30.b,X)		; 01 30
	bmi 124.b		; 30 7C
	stz $00.b		; 64 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($13.b,X)		; 01 13
	ora ($7B.b,X)		; 01 7B
	brk $FF.b		; 00 FF
	jsr $A0CF.w		; 20 CF A0
	and $403F60.l,X		; 3F 60 3F 40
	ora $0DCF60.l,X		; 1F 60 CF 0D
	tsb $0405.w		; 0C 05 04
	adc ($60.b,X)		; 61 60
	sty $B4.b		; 84 B4
	stx $E6.b		; 86 E6
	and [$E7.b]		; 27 E7
	ora [$E3.b]		; 07 E3
	eor [$71.b]		; 47 71
	stz $25E3.w		; 9C E3 25
	bvc -35.b		; 50 DD
	bvs -42.b		; 70 D6
	pha		; 48
	eor $E12CC0.l,X		; 5F C0 2C E1
	mvn $68,$F0		; 54 F0 68
	sbc $00A0.w,Y		; F9 A0 00
	sta $18.b,S		; 83 18
	sta ($14.b,S),Y		; 93 14
	lda ($08.b,S),Y		; B3 08
	and $021F00.l,X		; 3F 00 1F 02
	ora $000602.l		; 0F 02 06 00
	tsb $2F.b		; 04 2F
	tsb $1F.b		; 04 1F
	php		; 08
	ora [$08.b],Y		; 17 08
	ora $132B14.l,X		; 1F 14 2B 13
	and [$2F.b],Y		; 37 2F
	ora [$27.b],Y		; 17 27
	ora $0C0A0E.l		; 0F 0E 0A 0C
	brk $0C.b		; 00 0C
	php		; 08
	tas		; 1B
	brk $18.b		; 00 18
	trb $31.b		; 14 31
	ora $262F33.l		; 0F 33 2F 26
	and $C69078.l,X		; 3F 78 90 C6
	bcc  32.b		; 90 20
	lda $7C81.w,Y		; B9 81 7C
	eor $B9.b,S		; 43 B9
	ora [$F3.b]		; 07 F3
	sta $0F9EE7.l		; 8F E7 9E 0F
	cpx #$8F.b		; E0 8F
	bvs  31.b		; 70 1F
	rti		; 40

	asl $A0.b		; 06 A0
	lda $C1.b,S		; A3 C1
	eor [$43.b]		; 47 43
	ora $0C9F06.l		; 0F 06 9F 0C
	sbc $432680.l,X		; FF 80 26 43
	jmp ($E11D.w)		; 6C 1D E1
	jsl $EF90D3.l		; 22 D3 90 EF
	bra  -1.b		; 80 FF
	rti		; 40

	lda $237FB8.l,X		; BF B8 7F 23
	phx		; DA
	adc [$94.b]		; 67 94
	asl $6D00.w,X		; 1E 00 6D
	and ($B4.b,X)		; 21 B4
	sty $11.b,X		; 94 11
	cpy #$03.b		; C0 03
	cpy #$05.b		; C0 05
	sty $C0.b		; 84 C0
	clc		; 18
	rti		; 40

	bvs  48.b		; 70 30
	sed		; F8
	bvs -72.b		; 70 B8
	rts		; 60

	bcc  32.b		; 90 20
	bne   0.b		; D0 00
	cpx #$40.b		; E0 40
	ldy #$F0.b		; A0 F0
	bpl -96.b		; 10 A0
	jsr $80B0.w		; 20 B0 80
	bvs  64.b		; 70 40
	rts		; 60

	rts		; 60

	jsr $0020.w		; 20 20 00
	brk $40.b		; 00 40
	rti		; 40

	ora ($54.b),Y		; 11 54
	ora $68.b,S		; 03 68
	ora [$70.b]		; 07 70
	ora $211F20.l		; 0F 20 1F 21
	asl $0443.w,X		; 1E 43 04
	eor [$00.b]		; 47 00
	sbc $073813.l,X		; FF 13 38 07
	bpl  15.b		; 10 0F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $3D.b		; 00 3D
	ora ($3A.b,X)		; 01 3A
	cop $3C.b		; 02 3C
	bit $07E4.w,X		; 3C E4 07
	cpy $B00F.w		; CC 0F B0
	and $00FFC0.l,X		; 3F C0 FF 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra  -5.b		; 80 FB
	ora $F2.b,S		; 03 F2
	cop $CC.b		; 02 CC
	tsb $3030.w		; 0C 30 30
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $F1.b		; 14 F1
	php		; 08
	sbc $FD04.w,Y		; F9 04 FD
	cop $8F.b		; 02 8F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	cop $04.b		; 02 04
	rol $1620.w		; 2E 20 16
	bpl  10.b		; 10 0A
	php		; 08
	tsb $04.b		; 04 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	dey		; 88
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $0C.b		; 00 0C
	adc ($1F.b,X)		; 61 1F
	and ($06.b),Y		; 31 06
	bmi  15.b		; 30 0F
	clc		; 18
	ora $18.b,S		; 03 18
	ora [$0C.b]		; 07 0C
	ora ($0C.b,X)		; 01 0C
	ora $06.b,S		; 03 06
	and $000E21.l,X		; 3F 21 0E 00
	ora $000710.l,X		; 1F 10 07 00
	ora $000308.l		; 0F 08 03 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	ply		; 7A
	tda		; 7B
	bmi  59.b		; 30 3B
	bpl   7.b		; 10 07
	brk $0F.b		; 00 0F
	ora ($0E.b,X)		; 01 0E
	ora $1D.b,S		; 03 1D
	ora [$1B.b]		; 07 1B
	ora $FC3217.l		; 0F 17 32 FC
	cop $7C.b		; 02 7C
	tsb $38.b		; 04 38
	ora $02.b,S		; 03 02
	ora [$05.b]		; 07 05
	ora $040F0A.l		; 0F 0A 0F 04
	ora $E01E18.l,X		; 1F 18 1E E0
	rol $7ED0.w,X		; 3E D0 7E
	lda ($FC.b),Y		; B1 FC
	adc ($F9.b,S),Y		; 73 F9
	sbc [$F3.b],Y		; F7 F3
	sbc $F0FFF2.l,X		; FF F2 FF F0
	sbc $7E9F9E.l		; EF 9E 9F 7E
	and $FD4EFE.l		; 2F FE 4E FD
	sty $08FB.w		; 8C FB 08
	sbc [$00.b],Y		; F7 00
	plx		; FA
	php		; 08
	sbc $C71C.w,X		; FD 1C C7
	bra 120.b		; 80 78
	cpy #$71.b		; C0 71
	rts		; 60

	and ($61.b,S),Y		; 33 61
	and [$A3.b],Y		; 37 A3
	ora $5F2FA7.l,X		; 1F A7 2F 5F
	and $B8006F.l,X		; 3F 6F 00 B8
	rti		; 40

	cmp [$20.b]		; C7 20
	inc $ED00.w		; EE 00 ED
	ora ($6B.b,X)		; 01 6B
	ora [$67.b]		; 07 67
	ora [$FF.b]		; 07 FF
	ora [$FF.b]		; 07 FF
	pha		; 48
	stx $B9.b		; 86 B9
	ora $90.b,S		; 03 90
	sta ($D0.b,X)		; 81 D0
	bra -48.b		; 80 D0
	bra -16.b		; 80 F0
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	cpy #$83.b		; C0 83
	and ($00.b)		; 32 00
	rti		; 40

	brk $E0.b		; 00 E0
	brk $A0.b		; 00 A0
	bra -96.b		; 80 A0
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	brk $07.b		; 00 07
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $0D.b		; 00 0D
	brk $15.b		; 00 15
	brk $23.b		; 00 23
	brk $13.b		; 00 13
	ora ($0B.b,X)		; 01 0B
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	asl A		; 0A
	asl A		; 0A
	ora $0D1C.w,X		; 1D 1C 0D
	tsb $0405.w		; 0C 05 04
	brk $D2.b		; 00 D2
	brk $7F.b		; 00 7F
	clc		; 18
	sbc $4DFF7F.l,X		; FF 7F FF 4D
	sbc $A2FF91.l,X		; FF 91 FF A2
	sbc $0CE39C.l,X		; FF 9C E3 0C
	tsb $8080.w		; 0C 80 80
	rol $7F00.w,X		; 3E 00 7F
	brk $FF.b		; 00 FF
	brk $DD.b		; 00 DD
	brk $B3.b		; 00 B3
	brk $A0.b		; 00 A0
	brk $38.b		; 00 38
	adc $115738.l,X		; 7F 38 57 11
	adc $133F11.l,X		; 7F 11 3F 13
	and $013F03.l		; 2F 03 3F 01
	ora $7D1B01.l,X		; 1F 01 1B 7D
	eor ($3D.b,X)		; 41 3D
	bit $023B.w		; 2C 3B 02
	and ($20.b,S),Y		; 33 20
	ora ($10.b,S),Y		; 13 10
	ora ($00.b,S),Y		; 13 00
	ora ($10.b,S),Y		; 13 10
	ora ($00.b,X)		; 01 00
	cpy $BB.b		; C4 BB
	cpy #$BF.b		; C0 BF
	cpy #$FF.b		; C0 FF
	cpy #$FF.b		; C0 FF
	cpy #$FF.b		; C0 FF
	cmp ($FF.b,X)		; C1 FF
.ACCU 16
.INDEX 16
	rep #$BE		; C2 BE
.ACCU 16
.INDEX 16
	rep #$BE		; C2 BE
	cmp [$44.b],Y		; D7 44
	sbc [$40.b]		; E7 40
	xce		; FB
	clc		; 18
	sed		; F8
	clc		; 18
	xce		; FB
	tas		; 1B
	plx		; FA
	inc A		; 1A
	sbc $F558.w,Y		; F9 58 F5
	stz $22.b,X		; 74 22
	cmp $BB44.w,X		; DD 44 BB
	mvp $44,$BB		; 44 BB 44
	tyx		; BB
	tsb $FB.b		; 04 FB
	cpy $7B.b		; C4 7B
	ldy #$A03F.w		; A0 3F A0
	tsa		; 3B
	tyx		; BB
	jsl $774477.l		; 22 77 44 77
	mvp $44,$77		; 44 77 44
	sta [$84.b],Y		; 97 84
	lda [$24.b]		; A7 24
	bne  16.b		; D0 10
	cmp ($11.b),Y		; D1 11
	pha		; 48
	ldx $44.b,Y		; B6 44
	tsx		; BA
	rti		; 40

	ldy $D820.w,X		; BC 20 D8
	jsr $00D8.w		; 20 D8 00
	sed		; F8
	bmi  -8.b		; 30 F8
	bpl  28.b		; 10 1C
	ror $6448.w		; 6E 48 64
	mvp $40,$70		; 44 70 40
	bcs  32.b		; B0 20
	ldy #$1020.w		; A0 20 10
	bpl -56.b		; 10 C8
	iny		; C8
	inx		; E8
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cpy #$4030.w		; C0 30 40
	sec		; 38
	cpy #$04F8.w		; C0 F8 04
	jsr ($7E0E.w,X)		; FC 0E 7E
	ora $07031F.l		; 0F 1F 03 07
	brk $01.b		; 00 01
	cpy #$E000.w		; C0 00 E0
	jsr $0418.w		; 20 18 04
	bvs  70.b		; 70 46
	tsb $068F.w		; 0C 8F 06
	adc $001F01.l,X		; 7F 01 1F 00
	ora $08.b,S		; 03 08
	asl $1C.b,X		; 16 1C
	rol $14.b,X		; 36 14
	rol $20.b		; 26 20
	ror $00.b		; 66 00
	ror $5C38.w,X		; 7E 38 5C
	clc		; 18
	jmp ($7C00.w,X)		; 7C 00 7C
	php		; 08
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $04.b		; 00 04
	brk $3C.b		; 00 3C
	jsr $0038.w		; 20 38 00
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
	brk $00.b		; 00 00
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
	bra  96.b		; 80 60
	cpy #$4060.w		; C0 60 40
	rts		; 60

	brk $F0.b		; 00 F0
	rti		; 40

	beq   0.b		; F0 00
	sed		; F8
	bpl  76.b		; 10 4C
	clc		; 18
	mvp $40,$C0		; 44 C0 40
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	jsr $6000.w		; 20 00 60
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	php		; 08
	bit $0F04.w,X		; 3C 04 0F
	and $1F2F1F.l,X		; 3F 1F 2F 1F
	and $3F5F3F.l,X		; 3F 3F 5F 3F
	lsr $5E3F.w,X		; 5E 3F 5E
	rol $1E5F.w,X		; 3E 5F 1E
	adc $001F.w,X		; 7D 1F 00
	ora $203F10.l,X		; 1F 10 3F 20
	and $213F20.l,X		; 3F 20 3F 21
	and $203F21.l,X		; 3F 21 3F 20
	and $DFE103.l,X		; 3F 03 E1 DF
	cmp $BF.b,S		; C3 BF
	stx $7F.b		; 86 7F
	sta $7E.b		; 85 7E
	cop $FD.b		; 02 FD
	mvp $48,$BB		; 44 BB 48
	lda [$51.b],Y		; B7 51
	inc $28FB.w		; EE FB 28
	sbc [$50.b],Y		; F7 50
	inc $F5A0.w		; EE A0 F5
	sta ($F3.b),Y		; 91 F3
	ora ($F7.b)		; 12 F7
	pei ($6E.b)		; D4 6E
	pha		; 48
	eor $3F11.w,X		; 5D 11 3F
	sbc [$1D.b],Y		; F7 1D
	xce		; FB
	stx $7F.b		; 86 7F
	ora ($EF.b),Y		; 11 EF
	bit $DB.b		; 24 DB
	eor #$89B6.w		; 49 B6 89
	ror $11.b,X		; 76 11
	inc $3F13.w		; EE 13 3F
	ora #$C61F.w		; 09 1F C6
	sta [$D1.b]		; 87 D1
	ora ($B4.b),Y		; 11 B4
	bit $6D.b		; 24 6D
	eor #$89ED.w		; 49 ED 89
	cmp $8011.w,X		; DD 11 80
	cpy #$A0C0.w		; C0 C0 A0
	rti		; 40

	beq -128.b		; F0 80
	beq  80.b		; F0 50
	tay		; A8
	bvc -84.b		; 50 AC
	pha		; 48
	ldx $48.b,Y		; B6 48
	lda [$80.b],Y		; B7 80
	cpx #$F000.w		; E0 00 F0
	brk $E0.b		; 00 E0
	bra -128.b		; 80 80
	bvc  80.b		; 50 50
	cli		; 58
	bvc 108.b		; 50 6C
	pha		; 48
	ror $0048.w		; 6E 48 00
	ora $000F00.l		; 0F 00 0F 00
	ora $0C1F04.l		; 0F 04 1F 0C
	ora $183F0C.l,X		; 1F 0C 3F 18
	and $017C13.l,X		; 3F 13 7C 01
	brk $05.b		; 00 05
	ora ($0E.b,X)		; 01 0E
	brk $0F.b		; 00 0F
	ora ($1F.b,X)		; 01 1F
	ora ($1F.b,X)		; 01 1F
	ora ($3E.b,X)		; 01 3E
	cop $38.b		; 02 38
	brk $25.b		; 00 25
	bvc -35.b		; 50 DD
	bvs -42.b		; 70 D6
	pha		; 48
	eor $E12CC0.l,X		; 5F C0 2C E1
	lsr $B0.b,X		; 56 B0
	inx		; E8
	ora $A370.w,Y		; 19 70 A3
	sta $18.b,S		; 83 18
	sta ($14.b,S),Y		; 93 14
	lda ($08.b,S),Y		; B3 08
	and $021F00.l,X		; 3F 00 1F 02
	and $101620.l		; 2F 20 16 10
	sty $000C.w		; 8C 0C 00
	phd		; 0B
	brk $09.b		; 00 09
	brk $09.b		; 00 09
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
	sta ($FC.b,X)		; 81 FC
	sta $FC.b		; 85 FC
	ora $EC.b		; 05 EC
	ora $C8.b,S		; 03 C8
	ora $88.b,S		; 03 88
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	sbc [$34.b],Y		; F7 34
	sbc $60.b,S		; E3 60
	cmp $40.b,S		; C3 40
	sta [$80.b]		; 87 80
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ldy #$A13A.w		; A0 3A A1
	and ($A0.b,S),Y		; 33 A0
	and ($A0.b,S),Y		; 33 A0
	and ($80.b),Y		; 31 80
	and ($C0.b),Y		; 31 C0
	adc ($C0.b,X)		; 61 C0
	rts		; 60

	brk $60.b		; 00 60
	cmp ($10.b),Y		; D1 10
	bne  16.b		; D0 10
	cmp ($01.b,X)		; C1 01
	cpy #$E000.w		; C0 00 E0
	jsr $20A0.w		; 20 A0 20
	bra   0.b		; 80 00
	cpy #$E040.w		; C0 40 E0
	tsb $0CF8.w		; 0C F8 0C
	sed		; F8
	tsb $0670.w		; 0C 70 06
	beq -122.b		; F0 86
	sec		; 38
	stx $7C.b		; 86 7C
	dec $18.b		; C6 18
	cmp $F8.b,S		; C3 F8
	php		; 08
	beq   0.b		; F0 00
	pea $FC04.w		; F4 04 FC
	tsb $7C.b		; 04 7C
	tsb $FC.b		; 04 FC
	sty $38.b		; 84 38
	brk $7E.b		; 00 7E
	.db $42, $00		; 42 00
	brk $80.b		; 00 80
	bra  -2.b		; 80 FE
	inc $7131.w,X		; FE 31 71
	dec A		; 3A
	dec A		; 3A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $FC.b		; 00 FC
	ror $31FF.w,X		; 7E FF 31
	sbc $007F10.l,X		; FF 10 7F 00
	dec A		; 3A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	adc $0C.b,S		; 63 0C
	adc $1C.b,S		; 63 1C
	and ($05.b,S),Y		; 33 05
	and ($0E.b,S),Y		; 33 0E
	inc A		; 1A
	ora [$18.b]		; 07 18
	ora [$08.b]		; 07 08
	ora $08.b,S		; 03 08
	asl $3F02.w,X		; 1E 02 3F
	and $0F.b,S		; 23 0F
	ora $1E.b,S		; 03 1E
	ora ($05.b)		; 12 05
	brk $0F.b		; 00 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $60.b		; 00 60
	cpy #$0060.w		; C0 60 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	trb $71.b		; 14 71
	rol A		; 2A
	adc $28.b,S		; 63 28
	adc $18.b,S		; 63 18
	.db $42, $18		; 42 18
	dec $30.b		; C6 30
	cpy $78.b		; C4 78
	cpy $C860.w		; CC 60 C8
	and $001C21.l		; 2F 21 1C 00
	asl $3C02.w,X		; 1E 02 3C
	brk $7C.b		; 00 7C
	mvp $44,$7C		; 44 7C 44
	bmi   0.b		; 30 00
	sec		; 38
	php		; 08
	sei		; 78
	cpx $20.b		; E4 20
	ror $08.b		; 66 08
	ror $7F18.w,X		; 7E 18 7F
	clc		; 18
	and $001E00.l,X		; 3F 00 1E 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $2C.b		; 00 2C
	jsr $001E.w		; 20 1E 00
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora ($08.b,S),Y		; 13 08
	ora ($0C.b)		; 12 0C
	asl $00.b,X		; 16 00
	bit $08.b,X		; 34 08
	bit $7C00.w,X		; 3C 00 7C
	clc		; 18
	stz $08.b		; 64 08
	stz $0C.b,X		; 74 0C
	brk $1E.b		; 00 1E
	ora ($18.b)		; 12 18
	bpl  28.b		; 10 1C
	trb $10.b		; 14 10
	bpl  32.b		; 10 20
	brk $38.b		; 00 38
	clc		; 18
	clc		; 18
	php		; 08
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $E8.b		; 00 E8
	brk $F8.b		; 00 F8
	cpx #$30F8.w		; E0 F8 30
	sed		; F8
	pla		; 68
	sed		; F8
	pha		; 48
	clv		; B8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $E8.b		; 00 E8
	brk $F0.b		; 00 F0
	brk $B8.b		; 00 B8
	brk $78.b		; 00 78
	brk $28.b		; 00 28
	bra -96.b		; 80 A0
	clc		; 18
	cpy #$8038.w		; C0 38 80
	bvs -128.b		; 70 80
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	php		; 08
	rti		; 40

	bpl -128.b		; 10 80
	jsr $0000.w		; 20 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	jsr $3078.w		; 20 78 30
	jmp ($3C68.w,X)		; 7C 68 3C
	rts		; 60

	jmp $07023C.l		; 5C 3C 02 07
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bpl 120.b		; 10 78
	jsr $207C.w		; 20 7C 20
	jmp ($7F18.w,X)		; 7C 18 7F
	brk $3F.b		; 00 3F
	ora ($07.b,X)		; 01 07
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	ora ($0C.b,X)		; 01 0C
	sta $18.b,S		; 83 18
	wai		; CB
	sbc $0000.w		; ED 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$E0.b]		; 07 E0
	txa		; 8A
	beq  64.b		; F0 40
	sbc [$14.b]		; E7 14
	cmp [$18.b],Y		; D7 18
	stp		; DB
	pha		; 48
	rol A		; 2A
	cpx #$E119.w		; E0 19 E1
	and ($C3.b,S),Y		; 33 C3
	ror $1B.b,X		; 76 1B
.ACCU 8
	sep #$E3		; E2 E3
	dec A		; 3A
	cmp ($7D.b),Y		; D1 7D
	php		; 08
	rol $1FC0.w,X		; 3E C0 1F
	cpx #$D10F.w		; E0 0F D1
	ora $982EA0.l,X		; 1F A0 2E 98
	stz $A760.w,X		; 9E 60 A7
	bpl -13.b		; 10 F3
	php		; 08
	xce		; FB
	tsb $FF.b		; 04 FF
	bvs -113.b		; 70 8F
	sbc $020200.l,X		; FF 00 02 02
	cop $02.b		; 02 02
	txy		; 9B
	ora ($CD.b,X)		; 01 CD
	brk $E5.b		; 00 E5
	bra 113.b		; 80 71
	rti		; 40

	ora #$80.b		; 09 80
	brk $70.b		; 00 70
	cop $FD.b		; 02 FD
	cop $FD.b		; 02 FD
	rti		; 40

	cpy #$E020.w		; C0 20 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	beq   8.b		; F0 08
	jsr ($2C04.w,X)		; FC 04 2C
	cop $26.b		; 02 26
	ora ($00.b),Y		; 11 00
	rti		; 40

	bra -96.b		; 80 A0
	bra -96.b		; 80 A0
	bcc -80.b		; 90 B0
	clc		; 18
	php		; 08
	clc		; 18
	cpy #$C01C.w		; C0 1C C0
	asl $00D0.w,X		; 1E D0 00
	tsb $00.b		; 04 00
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
	trb $1C21.w		; 1C 21 1C
	and ($1E.b,X)		; 21 1E
	and $1A.b,S		; 23 1A
	jsl $386238.l		; 22 38 62 38
	.db $62, $3C, $E6		; 62 3C E6
	jmp $011FC6.l		; 5C C6 1F 01
	asl $1C00.w,X		; 1E 00 1C
	brk $3C.b		; 00 3C
	jsr $021E.w		; 20 1E 02
	asl $5802.w,X		; 1E 02 58
	rti		; 40

	clv		; B8
	bra  10.b		; 80 0A
	ora [$0B.b]		; 07 0B
	tsb $1C.b		; 04 1C
	php		; 08
	php		; 08
	bpl  40.b		; 10 28
	bpl  32.b		; 10 20
	bpl  64.b		; 10 40
	bmi  96.b		; 30 60
	rti		; 40

	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	sbc ($00.b,X)		; E1 00
	ldx $5361.w,Y		; BE 61 53
	and $511C2C.l,X		; 3F 2C 1C 51
	bmi  51.b		; 30 33
	bpl  39.b		; 10 27
	brk $6F.b		; 00 6F
	jsr $E100.w		; 20 00 E1
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	ora $3F.b,S		; 03 3F
	asl $0C7E.w		; 0E 7E 0C
	bit $3818.w,X		; 3C 18 38
	bpl 112.b		; 10 70
	adc $80FFC0.l,X		; 7F C0 FF 80
	adc $05FA01.l,X		; 7F 01 FA 05
	sbc $FF06.w,X		; FD 06 FF
	asl $FF.b		; 06 FF
	asl $FF.b		; 06 FF
	asl $00.b		; 06 00
	cpy #$8000.w		; C0 00 80
	sta ($81.b,X)		; 81 81
	ora $05.b		; 05 05
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	sbc $F8F700.l,X		; FF 00 F7 F8
	ror $F98F.w,X		; 7E 8F F9
	asl $F0.b		; 06 F0
	lda $C9F0.w,Y		; B9 F0 C9
	beq -116.b		; F0 8C
	sed		; F8
	stz $0000.w		; 9C 00 00
	jsr ($8FFC.w,X)		; FC FC 8F
	sta $B60000.l		; 8F 00 00 B6
	bcs -26.b		; B0 E6
	cpx #$8083.w		; E0 83 80
	txy		; 9B
	tya		; 98
	cld		; D8
	bpl -16.b		; 10 F0
	bpl -18.b		; 10 EE
	brk $75.b		; 00 75
	stx $32.b		; 86 32
	eor $30.b,S		; 43 30
	rti		; 40

	and $C6.b,X		; 35 C6
	tsa		; 3B
.ACCU 16
	rep #$20		; C2 20
	sec		; 38
	brk $10.b		; 00 10
	bcc -98.b		; 90 9E
	php		; 08
	ora $AF0F8C.l		; 0F 8C 0F AF
	and $742F28.l		; 2F 28 2F 74
	adc [$00.b],Y		; 77 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	bra -56.b		; 80 C8
	beq -76.b		; F0 B4
	clc		; 18
	trb $0008.w		; 1C 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$F800.w		; E0 00 F8
	brk $BC.b		; 00 BC
	brk $1C.b		; 00 1C
	ora [$08.b]		; 07 08
	trb $1608.w		; 1C 08 16
	tsb $0E17.w		; 0C 17 0E
	asl $1F0A.w,X		; 1E 0A 1F
	ora #$186D.w		; 09 6D 18
	adc $0030.w,Y		; 79 30 00
	ora $001C00.l		; 0F 00 1C 00
	asl $1F00.w,X		; 1E 00 1F
	ora ($1F.b,X)		; 01 1F
	brk $1F.b		; 00 1F
	brk $7D.b		; 00 7D
	brk $79.b		; 00 79
	rol $1F10.w,X		; 3E 10 1F
	bpl  63.b		; 10 3F
	bpl  -2.b		; 10 FE
	ora ($7B.b),Y		; 11 7B
	adc [$37.b]		; 67 37
	ora $7F0F7F.l		; 0F 7F 0F 7F
	dex		; CA
	ora ($31.b,X)		; 01 31
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	ora $F3.b,S		; 03 F3
	sta [$E7.b]		; 87 E7
	cmp $8F8FCF.l		; CF CF 8F 8F
	asl A		; 0A
	dex		; CA
	adc $C7.b,X		; 75 C7
	adc ($00.b)		; 72 00
	sbc $E0DF00.l,X		; FF 00 DF E0
	sbc [$F8.b],Y		; F7 F8
	xce		; FB
	jsr ($FCFF.w,X)		; FC FF FC
	sbc $CF08D4.l,X		; FF D4 08 CF
	sta $008D.w		; 8D 8D 00
	brk $F0.b		; 00 F0
	beq  -8.b		; F0 F8
	sed		; F8
	jsr ($FCFC.w,X)		; FC FC FC
	jsr ($D4D4.w,X)		; FC D4 D4
	bra   0.b		; 80 00
	cpy #$B080.w		; C0 80 B0
	cpy #$30A8.w		; C0 A8 30
	sty $18.b,X		; 94 18
	cpy $3468.w		; CC 68 34
	rti		; 40

	stx $CC.b,Y		; 96 CC
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	rti		; 40

	sei		; 78
	rts		; 60

	jmp ($7C10.w,X)		; 7C 10 7C
	dey		; 88
	jsr ($DE00.w,X)		; FC 00 DE
	tas		; 1B
	php		; 08
	ora [$00.b],Y		; 17 00
	ora [$00.b],Y		; 17 00
	ora [$00.b],Y		; 17 00
	sbc $014F10.l,X		; FF 10 4F 01
	adc $3924.w		; 6D 24 39
	bpl   4.b		; 10 04
	trb $1808.w		; 1C 08 18
	php		; 08
	clc		; 18
	php		; 08
	clc		; 18
	brk $F0.b		; 00 F0
	bmi 113.b		; 30 71
	ora ($76.b)		; 12 76
	asl $36.b		; 06 36
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $01FE00.l,X		; FF 00 FE 01
	sbc $13FD21.l,X		; FF 21 FD 13
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	and ($21.b,X)		; 21 21
	ora ($13.b,S),Y		; 13 13
	sbc $30DF10.l,X		; FF 10 DF 30
	sbc $61BE30.l		; EF 30 BE 61
	eor $C3FDE1.l,X		; 5F E1 FD C3
	sbc $03FD83.l,X		; FF 83 FD 03
	clc		; 18
	clc		; 18
	sec		; 38
	sec		; 38
	bmi  48.b		; 30 30
	adc ($61.b,X)		; 61 61
	sbc ($E1.b,X)		; E1 E1
	cmp $C3.b,S		; C3 C3
	sta $83.b,S		; 83 83
	ora $03.b,S		; 03 03
	sbc ($0C.b,S),Y		; F3 0C
	sta $F8FF60.l,X		; 9F 60 FF F8
	lda $867FCF.l,X		; BF CF 7F 86
	sbc $0FF606.l,X		; FF 06 F6 0F
	sbc $0C0C8F.l,X		; FF 8F 0C 0C
	rts		; 60

	rts		; 60

	sbc $CFF9.w,Y		; F9 F9 CF
	cmp $068686.l		; CF 86 86 06
	asl $0F.b		; 06 0F
	ora $DE9F9F.l		; 0F 9F 9F DE
	jsr $08FF.w		; 20 FF 08
	plb		; AB
	jmp.w [$6CDF]		; DC DF 6C
	sbc $FA36.w		; ED 36 FA
	ora [$FD.b],Y		; 17 FD
	ora ($FF.b,S),Y		; 13 FF
	and ($21.b),Y		; 31 21
	and ($08.b,X)		; 21 08
	php		; 08
	jmp.w [$ECDC]		; DC DC EC
	cpx $3636.w		; EC 36 36
	and [$37.b],Y		; 37 37
	and ($33.b,S),Y		; 33 33
	and ($31.b),Y		; 31 31
	sed		; F8
	cpx #$7068.w		; E0 68 70
	adc $78.b,X		; 75 78
	and $00F10C.l,X		; 3F 0C F1 00
	sbc ($20.b)		; F2 20
	sbc $BA1A.w,X		; FD 1A BA
	rts		; 60

	brk $F8.b		; 00 F8
	bra  -8.b		; 80 F8
	bra  -3.b		; 80 FD
	cpy #$0ECF.w		; C0 CF 0E
	ora $182E2C.l		; 0F 2C 2E 18
	tas		; 1B
	stz $66.b		; 64 66
	adc $40.b,S		; 63 40
	phk		; 4B
	eor [$6C.b]		; 47 6C
	mvp $62,$3C		; 44 3C 62
	cli		; 58
	sec		; 38
	bit $1A1C.w		; 2C 1C 1A
	asl $04.b		; 06 04
	cop $00.b		; 02 00
	adc $00.b,S		; 63 00
	eor $016F03.l		; 4F 03 6F 01
	adc $037F07.l,X		; 7F 07 7F 03
	and $011F01.l,X		; 3F 01 1F 01
	ora [$CF.b]		; 07 CF
	rti		; 40

	ora $003F00.l,X		; 1F 00 3F 00
	and $007F00.l,X		; 3F 00 7F 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $F03000.l,X		; FF 00 30 F0
	cpx #$C0E0.w		; E0 E0 C0
	cpy #$C0C0.w		; C0 C0 C0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $06FF06.l,X		; FF 06 FF 06
	xce		; FB
	asl $FD.b		; 06 FD
	cop $FF.b		; 02 FF
	brk $FF.b		; 00 FF
	asl $FF.b		; 06 FF
	asl $FF.b		; 06 FF
	brk $06.b		; 00 06
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	asl $02.b		; 06 02
	cop $00.b		; 02 00
	brk $06.b		; 00 06
	asl $06.b		; 06 06
	asl $00.b		; 06 00
	brk $FC.b		; 00 FC
	sbc $7F.b,S		; E3 7F
	cmp $FF70BF.l		; CF BF 70 FF
	brk $FB.b		; 00 FB
	asl $F9.b		; 06 F9
	asl $FF.b		; 06 FF
	brk $FD.b		; 00 FD
	ora $F0.b,S		; 03 F0
	beq -49.b		; F0 CF
	cmp $007676.l		; CF 76 76 00
	brk $06.b		; 00 06
	asl $06.b		; 06 06
	asl $00.b		; 06 00
	brk $03.b		; 00 03
	ora $69.b,S		; 03 69
	cmp ($FC.b),Y		; D1 FC
	bvc  -2.b		; 50 FE
	bcc  -2.b		; 90 FE
	bpl  -1.b		; 10 FF
	bpl  -1.b		; 10 FF
	php		; 08
	sbc $0CFF00.l,X		; FF 00 FF 0C
	inc $F7.b,X		; F6 F7
	eor ($53.b,S),Y		; 53 53
	sta ($91.b),Y		; 91 91
	ora ($11.b),Y		; 11 11
	clc		; 18
	clc		; 18
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	tsb $9C0C.w		; 0C 0C 9C
	php		; 08
	inx		; E8
	stz $383C.w		; 9C 3C 38
	jmp ($6848.w,X)		; 7C 48 68
	sty $CE.b		; 84 CE
	sty $EE.b		; 84 EE
	mvp $2C,$9A		; 44 9A 2C
	brk $9C.b		; 00 9C
	brk $FC.b		; 00 FC
	cpy #$80FC.w		; C0 FC 80
	jsr ($EC00.w,X)		; FC 00 EC
	brk $CE.b		; 00 CE
	brk $6E.b		; 00 6E
	rti		; 40

	ror $40F0.w,X		; 7E F0 40
	cpx #$B040.w		; E0 40 B0
	rts		; 60

	cmp $7E30.w,Y		; D9 30 7E
	ora #$070F.w		; 09 0F 07
	php		; 08
	tsb $04.b		; 04 04
	cop $00.b		; 02 00
	beq   0.b		; F0 00
	cpx #$F000.w		; E0 00 F0
	brk $F9.b		; 00 F9
	brk $7F.b		; 00 7F
	brk $0F.b		; 00 0F
	ora $0F.b,S		; 03 0F
	ora ($07.b,X)		; 01 07
	sta $287F6A.l,X		; 9F 6A 7F 28
	eor $C27F07.l,X		; 5F 07 7F C2
	lda $FF83.w,X		; BD 83 FF
	bra 127.b		; 80 7F
	brk $FF.b		; 00 FF
	brk $0A.b		; 00 0A
	nop		; EA
	php		; 08
	pla		; 68
	and $C2026F.l		; 2F 6F 02 C2
	eor $C3.b,S		; 43 C3
	ora ($81.b,X)		; 01 81
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	inc $FED4.w,X		; FE D4 FE
	cpy $FF.b		; C4 FF
	sed		; F8
	inc $EE10.w,X		; FE 10 EE
	bmi  -2.b		; 30 FE
	cpy #$00FF.w		; C0 FF 00
	sbc $D5D540.l,X		; FF 40 D5 D5
	cmp $C5.b		; C5 C5
	jsr ($11FD.w,X)		; FC FD 11
	ora ($31.b),Y		; 11 31
	and ($E1.b),Y		; 31 E1
	sbc ($00.b,X)		; E1 00
	brk $C0.b		; 00 C0
	cpy #$864A.w		; C0 4A 86
	cpy $02.b		; C4 02
	ldx #$62C0.w		; A2 C0 62
	rti		; 40

	cpy #$4080.w		; C0 80 40
	bra  32.b		; 80 20
	brk $30.b		; 00 30
	jsr $CE00.w		; 20 00 CE
	brk $C6.b		; 00 C6
	brk $E2.b		; 00 E2
	bra -30.b		; 80 E2
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	cpy #$C0E0.w		; C0 E0 C0
	beq  17.b		; F0 11
	brk $11.b		; 00 11
	brk $12.b		; 00 12
	cop $13.b		; 02 13
	ora $0A.b,S		; 03 0A
	ora $1815.w,X		; 1D 15 18
	clc		; 18
	bpl   0.b		; 10 00
	bpl  14.b		; 10 0E
	asl $1E0E.w,X		; 1E 0E 1E
	ora $0C1F.w		; 0D 1F 0C
	ora $001F00.l,X		; 1F 00 1F 00
	ora $1800.w,X		; 1D 00 18
	brk $10.b		; 00 10
	xce		; FB
	asl $EF.b		; 06 EF
	bmi  -1.b		; 30 FF
	eor $FF.b,S		; 43 FF
	bpl  -1.b		; 10 FF
	bit $FF.b		; 24 FF
	sty $BF.b		; 84 BF
	rti		; 40

	sbc $060640.l,X		; FF 40 06 06
	bit $4B3C.w,X		; 3C 3C 4B
	phk		; 4B
	bpl  16.b		; 10 10
	bit $24.b		; 24 24
	tsb $84.b		; 04 84
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	inc $FF01.w,X		; FE 01 FF
	brk $FB.b		; 00 FB
	asl $FE.b		; 06 FE
	ora [$FF.b]		; 07 FF
	ora [$FB.b]		; 07 FB
	ora [$FF.b]		; 07 FF
	ora $FF.b,S		; 03 FF
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $07.b		; 00 07
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora [$03.b]		; 07 03
	ora $FF.b,S		; 03 FF
	sbc $FF78B7.l,X		; FF B7 78 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $00FCFC.l,X		; FF FC FC 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	cpx #$C07F.w		; E0 7F C0
	sbc $70AF00.l,X		; FF 00 AF 70
	sbc $60FF70.l		; EF 70 FF 60
	inc $DE60.w,X		; FE 60 DE
	rts		; 60

	beq -16.b		; F0 F0
	cpx #$00E0.w		; E0 E0 00
	brk $70.b		; 00 70
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bvs  97.b		; 70 61
	adc ($E1.b,X)		; 61 E1
	sbc ($F2.b,X)		; E1 F2
	brk $EC.b		; 00 EC
	pha		; 48
	jsr ($F228.w,X)		; FC 28 F2
	tsb $302F.w		; 0C 2F 30
	bvs  64.b		; 70 40
	ldy #$60C0.w		; A0 C0 60
	rti		; 40

	tsb $500E.w		; 0C 0E 50
	jmp $002C20.l		; 5C 20 2C 00
	asl $FFC0.w		; 0E C0 FF
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	and $1A18.w,Y		; 39 18 1A
	asl $06.b		; 06 06
	ora ($11.b,X)		; 01 11
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bpl  49.b		; 10 31
	bpl  49.b		; 10 31
	bpl   6.b		; 10 06
	and $001F01.l,X		; 3F 01 1F 00
	ora [$00.b]		; 07 00
	ora ($00.b),Y		; 11 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	and ($00.b),Y		; 31 00
	and ($8B.b),Y		; 31 8B
	lsr $1F.b		; 46 1F
	brk $3F.b		; 00 3F
	tsb $B7.b		; 04 B7
	sta $09FF.w		; 8D FF 09
	inc $FC18.w		; EE 18 FC
	bcc -36.b		; 90 DC
	bcs  54.b		; B0 36
	inc $E0.b,X		; F6 E0
	cpx #$C4C4.w		; E0 C4 C4
	jmp $0CCD.w		; 4C CD 0C
	sta $9919.w		; 8D 19 99
	tas		; 1B
	txy		; 9B
	and ($B3.b,S),Y		; 33 B3
	sbc ($4C.b)		; F2 4C
	ror $7400.w,X		; 7E 00 74
	php		; 08
	sbc $F899.w,X		; FD 99 F8
	bpl  -8.b		; 10 F8
	bpl  -8.b		; 10 F8
	bpl  -8.b		; 10 F8
	bpl  13.b		; 10 0D
	eor $8181.w		; 4D 81 81
	txy		; 9B
	txy		; 9B
	inc A		; 1A
	txy		; 9B
	ora [$17.b],Y		; 17 17
	ora [$17.b],Y		; 17 17
	ora [$17.b],Y		; 17 17
	and [$37.b],Y		; 37 37
	stx $9484.w		; 8E 84 94
	dey		; 88
	jmp $986C08.l		; 5C 08 6C 98
	ora ($1C.b)		; 12 1C
	adc $007070.l		; 6F 70 70 00
	brk $80.b		; 00 80
	brk $8E.b		; 00 8E
	brk $9C.b		; 00 9C
	bra -36.b		; 80 DC
	brk $FC.b		; 00 FC
	cpx #$80FE.w		; E0 FE 80
	sbc $00F080.l,X		; FF 80 F0 00
	bra   5.b		; 80 05
	ora $07.b,S		; 03 07
	cop $1F.b		; 02 1F
	asl $79.b		; 06 79
	clc		; 18
	ora ($08.b,S),Y		; 13 08
	asl $0B05.w		; 0E 05 0B
	ora $0F.b		; 05 0F
	ora $00.b		; 05 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	asl $7E06.w,X		; 1E 06 7E
	ora $1D.b		; 05 1D
	ora ($0D.b,X)		; 01 0D
	ora ($0D.b,X)		; 01 0D
	ora ($0D.b,X)		; 01 0D
	lda $D750.w,Y		; B9 50 D7
	ora $8E4E.w,Y		; 19 4E 8E
	beq -68.b		; F0 BC
	sbc $A2C7A2.l,X		; FF A2 C7 A2
	sep #$80		; E2 80
	sbc ($80.b,X)		; E1 80
	rti		; 40

	eor $3F20.w,Y		; 59 20 3F
	lda ($BF.b),Y		; B1 BF
	sta $BF.b,S		; 83 BF
	bra -66.b		; 80 BE
	bra -90.b		; 80 A6
	sta ($A3.b,X)		; 81 A3
	bra -95.b		; 80 A1
	lda $80BF00.l,X		; BF 00 BF 80
	sbc $E477C8.l,X		; FF C8 77 E4
	inx		; E8
	clc		; 18
	jmp $02FE3C.l		; 5C 3C FE 02
	ora $03.b		; 05 03
	rti		; 40

	rti		; 40

	rti		; 40

	cpy #$C800.w		; C0 00 C8
	php		; 08
	cpx $FF07.w		; EC 07 FF
	ora $7F.b,S		; 03 7F
	ora ($FF.b,X)		; 01 FF
	brk $07.b		; 00 07
	sbc $18FF18.l,X		; FF 18 FF 18
	sbc $18FF18.l,X		; FF 18 FF 18
	adc $187F18.l,X		; 7F 18 7F 18
	adc $186F18.l		; 6F 18 6F 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	tya		; 98
	tya		; 98
	tya		; 98
	tya		; 98
	tya		; 98
	tya		; 98
	tya		; 98
	tya		; 98
	xce		; FB
	asl $FF.b		; 06 FF
	asl $FF.b		; 06 FF
	asl $FD.b		; 06 FD
	asl $F6.b		; 06 F6
	tsb $8C7E.w		; 0C 7E 8C
	ror $7B8C.w,X		; 7E 8C 7B
	sta $0707.w		; 8D 07 07
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	asl $0D0E.w		; 0E 0E 0D
	ora $8D0D.w		; 0D 0D 8D
	ora $1C8D.w		; 0D 8D 1C
	sta $02E3.w,X		; 9D E3 02
	sbc #$D308.w		; E9 08 D3
	ora $6020BF.l,X		; 1F BF 20 60
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	cpy #$8040.w		; C0 40 80
	trb $161F.w		; 1C 1F 16
	ora $403F20.l,X		; 1F 20 3F 40
	adc $80E080.l,X		; 7F 80 E0 80
	cpy #$E000.w		; C0 00 E0
	brk $C0.b		; 00 C0
	clc		; 18
	clc		; 18
	clc		; 18
	php		; 08
	jsr ($F408.w,X)		; FC 08 F4
	tya		; 98
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plx		; FA
	trb $F5.b		; 14 F5
	lsr A		; 4A
	eor $224F02.l,X		; 5F 02 4F 22
	eor $102830.l,X		; 5F 30 28 10
	php		; 08
	bpl  16.b		; 10 10
	brk $10.b		; 00 10
	stx $08.b,Y		; 96 08
	wai		; CB
	jsr $1063.w		; 20 63 10
	adc ($00.b,S),Y		; 73 00
	adc $003800.l,X		; 7F 00 38 00
	clc		; 18
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($0C.b)		; 32 0C
	asl A		; 0A
	ora [$16.b]		; 07 16
	tsb $304D.w		; 0C 4D 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	brk $0F.b		; 00 0F
	ora ($1F.b,X)		; 01 1F
	brk $7D.b		; 00 7D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	lda ($C0.b),Y		; B1 C0
	rol $0031.w,X		; 3E 31 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sbc ($C0.b),Y		; F1 C0
	sbc $000000.l,X		; FF 00 00 00
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	rti		; 40

	bpl -96.b		; 10 A0
	sec		; 38
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $E0.b		; 00 E0
	rti		; 40

	beq -64.b		; F0 C0
	sed		; F8
	phb		; 8B
	asl $5F.b,X		; 16 5F
	bit $0939.w,X		; 3C 39 09
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $9E.b		; 00 9E
	brk $7C.b		; 00 7C
	asl $3F.b		; 06 3F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	adc ($20.b),Y		; 71 20
	cmp ($61.b)		; D2 61
	lda [$C1.b]		; A7 C1
	dec A		; 3A
	dec $B0.b		; C6 B0
	bvs 124.b		; 70 7C
	tsb $06.b		; 04 06
	cop $05.b		; 02 05
	ora $00.b,S		; 03 00
	adc ($00.b),Y		; 71 00
	sbc ($00.b,S),Y		; F3 00
	sbc [$01.b]		; E7 01
	sbc $03FF0F.l,X		; FF 0F FF 03
	adc $000701.l,X		; 7F 01 07 00
	ora [$FE.b]		; 07 FE
	and ($FA.b)		; 32 FA
	jsl $FF26FE.l		; 22 FE 26 FF
	and $E76FBD.l		; 2F BD 6F E7
	eor #$51FA.w		; 49 FA 51
	sbc $3150.w,Y		; F9 50 31
	and ($35.b,S),Y		; 33 35
	and [$21.b],Y		; 37 21
	and [$60.b]		; 27 60
	adc $506F60.l		; 6F 60 6F 50
	eor $405B40.l,X		; 5F 40 5B 40
	eor $31D9.w,Y		; 59 D9 31
	plx		; FA
	and ($E9.b,S),Y		; 33 E9
	and ($FA.b)		; 32 FA
	and $F1.b,S		; 23 F1
	and ($77.b,X)		; 21 77
	bit $2874.w		; 2C 74 28
	ply		; 7A
	bit $3736.w		; 2C 36 37
	bit $37.b,X		; 34 37
	bit $37.b,X		; 34 37
	bit $37.b,X		; 34 37
	rol $A02F.w		; 2E 2F A0
	lda $A0ACA0.l		; AF A0 AC A0
	ldx $0080.w		; AE 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	jsr $8000.w		; 20 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	asl $1B05.w		; 0E 05 1B
	php		; 08
	ora $021F0A.l,X		; 1F 0A 1F 02
	ora $02.b,S		; 03 02
	ora ($02.b,X)		; 01 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora ($0D.b,X)		; 01 0D
	tsb $1C.b		; 04 1C
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	cpx #$4080.w		; E0 80 40
	ldy #$20F0.w		; A0 F0 20
	cpx #$D870.w		; E0 70 D8
	bmi  48.b		; 30 30
	php		; 08
	tsb $0000.w		; 0C 00 00
	brk $80.b		; 00 80
	ldy #$A080.w		; A0 80 A0
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	brk $38.b		; 00 38
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	ora $04.b,S		; 03 04
	trb $00.b		; 14 00
	bmi   0.b		; 30 00
	bmi  32.b		; 30 20
	bvs  32.b		; 70 20
	rti		; 40

	jsr $40A0.w		; 20 A0 40
	sbc $0040.w,Y		; F9 40 00
	ora [$00.b]		; 07 00
	trb $00.b		; 14 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bvs   0.b		; 70 00
	rts		; 60

	brk $E0.b		; 00 E0
	brk $F9.b		; 00 F9
	adc $48BF88.l,X		; 7F 88 BF 48
	sbc $48FF48.l,X		; FF 48 FF 48
	lda $982E08.l,X		; BF 08 2E 98
	ldx $BF98.w		; AE 98 BF
	sta ($18.b,X)		; 81 18
	tya		; 98
	php		; 08
	iny		; C8
	php		; 08
	iny		; C8
	php		; 08
	iny		; C8
	cli		; 58
	cld		; D8
	eor $59D9.w,Y		; 59 D9 59
	cmp $C140.w,Y		; D9 40 C1
	inc $7D99.w		; EE 99 7D
	sta $98F4.w,Y		; 99 F4 98
	jsr ($5D90.w,X)		; FC 90 5D
	and ($DC.b),Y		; 31 DC
	lda ($FF.b),Y		; B1 FF
	.db $82, $DB, $32		; 82 DB 32
	trb $1A9D.w		; 1C 9D 1A
	txy		; 9B
	tas		; 1B
	txy		; 9B
	tsa		; 3B
	tyx		; BB
	lda ($B3.b)		; B2 B3
	and ($B3.b)		; 32 B3
	brk $83.b		; 00 83
	bit $37.b,X		; 34 37
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bvs -128.b		; 70 80
	bit $38.b,X		; 34 38
	jmp ($8C9C.w,X)		; 7C 9C 8C
	tsb $0C.b		; 04 0C
	tsb $1C.b		; 04 1C
	php		; 08
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	cpy #$00FC.w		; C0 FC 00
	jsr ($8C00.w,X)		; FC 00 8C
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ror $24.b,X		; 76 24
	eor $26.b,X		; 55 26
	adc ($03.b,S),Y		; 73 03
	bne  32.b		; D0 20
	sbc ($61.b),Y		; F1 61
	sbc $FE6A.w,Y		; F9 6A FE
	bit $94FA.w		; 2C FA 94
	tay		; A8
	ldx $AFA8.w		; AE A8 AF
	sty $2F8F.w		; 8C 8F 2F
	and $646F6E.l		; 2F 6E 6F 64
	adc $302E20.l		; 6F 20 2E 30
	ldx $00.b,Y		; B6 00
	ora ($01.b,X)		; 01 01
	ora [$05.b]		; 07 05
	tsb $180B.w		; 0C 0B 18
	ora ($38.b),Y		; 11 38
	asl A		; 0A
	sec		; 38
	jsr $0161.w		; 20 61 01
	eor [$00.b],Y		; 57 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora [$1E.b]		; 07 1E
	asl $3838.w,X		; 1E 38 38
	brk $C0.b		; 00 C0
	rti		; 40

	jmp ($0604.w,X)		; 7C 04 06
	ldy $0401.w,X		; BC 01 04
	bvc   6.b		; 50 06
	lda [$10.b]		; A7 10
	eor $00FF40.l,X		; 5F 40 FF 00
	brk $80.b		; 00 80
	bra  -8.b		; 80 F8
	sed		; F8
	inc $FFFE.w,X		; FE FE FF
	sbc $A15858.l,X		; FF 58 58 A1
	lda ($05.b,X)		; A1 05
	ora $2A.b		; 05 2A
	ora [$3E.b],Y		; 17 3E
	ora [$15.b]		; 07 15
	asl $061D.w		; 0E 1D 06
	asl $0301.w		; 0E 01 03
	ora $0E01.w		; 0D 01 0E
	ora $0F.b,S		; 03 0F
	ora [$00.b],Y		; 17 00
	ora [$00.b]		; 07 00
	asl $0600.w		; 0E 00 06
	brk $01.b		; 00 01
	brk $05.b		; 00 05
	tsb $06.b		; 04 06
	asl $04.b		; 06 04
	tsb $9D.b		; 04 9D
	eor $CD.b,X		; 55 CD
	eor $29.b,X		; 55 29
	lda ($A9.b),Y		; B1 A9
	lda ($59.b),Y		; B1 59
	adc #$6959.w		; 69 59 69
	sbc ($01.b),Y		; F1 01
	cmp $2255E0.l,X		; DF E0 55 22
	eor $22.b,X		; 55 22
	lda ($46.b),Y		; B1 46
	lda ($46.b),Y		; B1 46
	adc #$6986.w		; 69 86 69
	stx $01.b		; 86 01
	asl $2020.w		; 0E 20 20
	ora $0C.b		; 05 0C
	ora $08.b,S		; 03 08
	asl A		; 0A
	clc		; 18
	ora [$11.b]		; 07 11
	trb $31.b		; 14 31
	asl A		; 0A
	and $24.b,S		; 23 24
	adc [$0C.b]		; 67 0C
	rti		; 40

	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $0F00.w		; 0E 00 0F
	ora ($1C.b,X)		; 01 1C
	brk $18.b		; 00 18
	brk $3F.b		; 00 3F
	brk $56.b		; 00 56
	adc $0EDF95.l,X		; 7F 95 DF 0E
	cmp $058704.l		; CF 04 87 05
	sta [$03.b]		; 87 03
	ora $3E.b,S		; 03 3E
	sta $7B.b,S		; 83 7B
	sty $0E92.w		; 8C 92 0E
	bpl  12.b		; 10 0C
	stx $0480.w		; 8E 80 04
	ora $04.b,S		; 03 04
	ora $02.b,S		; 03 02
	ora ($02.b,X)		; 01 02
	ora ($0C.b,X)		; 01 0C
	brk $80.b		; 00 80
	ldy $3610.w,X		; BC 10 36
	asl A		; 0A
	cmp $FB.b,S		; C3 FB
	sbc $FFFD.w,X		; FD FD FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $43FFFF.l,X		; FF FF FF 43
	tad		; 5B
	cmp ($DD.b,X)		; C1 DD
	cop $3C.b		; 02 3C
	adc ($FE.b),Y		; 71 FE
	sbc $F9FE.w,Y		; F9 FE F9
	inc $FEFD.w,X		; FE FD FE
	adc $80FE.w,X		; 7D FE 80
	cpx #$E040.w		; E0 40 E0
	and $30.b,S		; 23 30
	ora $1A.b		; 05 1A
	sta [$92.b]		; 87 92
	eor [$C2.b]		; 47 C2
	trb $037B.w		; 1C 7B 03
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	cpy #$E200.w		; C0 00 E2
	brk $7A.b		; 00 7A
	bpl  58.b		; 10 3A
	brk $23.b		; 00 23
	jsr $0000.w		; 20 00 00
	bpl  28.b		; 10 1C
	php		; 08
	tsb $0C08.w		; 0C 08 0C
	php		; 08
	tsb $0C08.w		; 0C 08 0C
	php		; 08
	tsb $0C08.w		; 0C 08 0C
	php		; 08
	tsb $08E8.w		; 0C E8 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cop $06.b		; 02 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($0B.b,X)		; E1 0B
	cpx #$E00B.w		; E0 0B E0
	phd		; 0B
	cpx #$F009.w		; E0 09 F0
	ora $19F0.w,Y		; 19 F0 19
	cpx #$E019.w		; E0 19 E0
	bpl -16.b		; 10 F0
	brk $F1.b		; 00 F1
	ora ($F1.b,X)		; 01 F1
	ora ($F0.b,X)		; 01 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $08.b		; 00 08
	tsb $0C08.w		; 0C 08 0C
	dey		; 88
	sty $8C88.w		; 8C 88 8C
	dey		; 88
	sty $8400.w		; 8C 00 84
	brk $84.b		; 00 84
	brk $84.b		; 00 84
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	sed		; F8
	bra  -8.b		; 80 F8
	bra 120.b		; 80 78
	brk $38.b		; 00 38
	adc $3C.b,S		; 63 3C
	ror $1C.b		; 66 1C
	lsr $30.b		; 46 30
	lsr $30.b		; 46 30
	cpy $38.b		; C4 38
	cpy $CC70.w		; CC 70 CC
	rts		; 60

	iny		; C8
	asl $1802.w,X		; 1E 02 18
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $78.b		; 04 78
	rti		; 40

	bvs  64.b		; 70 40
	sec		; 38
	php		; 08
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc #$FD56.w		; E9 56 FD
	ror A		; 6A
	dec $4C.b,X		; D6 4C
	dec $4C.b,X		; D6 4C
	dec $C850.w,X		; DE 50 C8
	mvp $04,$F8		; 44 F8 04
	cpx #$567C.w		; E0 7C 56
	brk $6A.b		; 00 6A
	brk $4C.b		; 00 4C
	jsr $204C.w		; 20 4C 20
	bvc  32.b		; 50 20
	rti		; 40

	bmi   0.b		; 30 00
	brk $18.b		; 00 18
	clc		; 18
	sec		; 38
	sec		; 38
	inc $BFFE.w,X		; FE FE BF
	cmp $BFFFDF.l,X		; DF DF FF BF
	eor $8A7FFF.l		; 4F FF 7F 8A
	asl $0C0C.w		; 0E 0C 0C
	sec		; 38
	brk $FE.b		; 00 FE
	bmi  23.b		; 30 17
	cpx $EA17.w		; EC 17 EA
	phd		; 0B
	pea $027D.w		; F4 7D 02
	asl A		; 0A
	tsb $0C.b		; 04 0C
	brk $07.b		; 00 07
	adc #$6807.w		; 69 07 68
	ora ($34.b,S),Y		; 13 34
	php		; 08
	asl $0F02.w,X		; 1E 02 0F
	ora $07.b,S		; 03 07
	asl A		; 0A
	asl $35.b		; 06 35
	phd		; 0B
	rol $30.b,X		; 36 30
	and [$30.b],Y		; 37 30
	phd		; 0B
	php		; 08
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	phd		; 0B
	brk $9C.b		; 00 9C
	adc $FC12E0.l		; 6F E0 12 FC
	asl $F0.b		; 06 F0
	trb $1C60.w		; 1C 60 1C
	brk $C8.b		; 00 C8
	bra  -8.b		; 80 F8
	bcs -64.b		; B0 C0
	tay		; A8
	rti		; 40

	cpx $18.b		; E4 18
	sed		; F8
	brk $E8.b		; 00 E8
	php		; 08
	sed		; F8
	clc		; 18
	bvs  64.b		; 70 40
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	asl $0E.b		; 06 0E
	tsb $0C.b		; 04 0C
	ora $0C.b		; 05 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora $06.b,S		; 03 06
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	and ($3F.b),Y		; 31 3F
	asl A		; 0A
	asl $0ECA.w		; 0E CA 0E
	iny		; C8
	asl $0EE0.w		; 0E E0 0E
	sbc ($0F.b,X)		; E1 0F
	sbc ($0F.b,X)		; E1 0F
	sbc ($0B.b,X)		; E1 0B
	dex		; CA
	asl A		; 0A
	sbc ($00.b),Y		; F1 00
	sbc ($00.b),Y		; F1 00
	sbc ($02.b,S),Y		; F3 02
	xce		; FB
	asl A		; 0A
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	and ($70.b,S),Y		; 33 70
	asl $3E.b		; 06 3E
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000100.l		; 0F 00 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $BB07.w,X		; 5D 07 BB
	ora $F15FFF.l,X		; 1F FF 5F F1
	ora $250F3F.l,X		; 1F 3F 0F 25
	tas		; 1B
	lsr A		; 4A
	and [$4E.b],Y		; 37 4E
	and [$84.b],Y		; 37 84
	and $03.b,S		; 23 03
	jmp $101F4F.l		; 5C 4F 1F 10
	ora $1B000F.l		; 0F 0F 00 1B
	brk $37.b		; 00 37
	brk $37.b		; 00 37
	brk $FF.b		; 00 FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	cmp $FFFFFD.l,X		; DF FD FF FF
	sbc $AFFB77.l,X		; FF 77 FB AF
	adc $EB.b,X		; 75 EB
	adc ($FD.b)		; 72 FD
	asl $F62D.w		; 0E 2D F6
	cmp $7DFA.w,X		; DD FA 7D
	tax		; AA
	lda $42BB50.l,X		; BF 50 BB 42
	adc $01.b,X		; 75 01
	adc ($04.b)		; 72 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra -32.b		; 80 E0
	bra -48.b		; 80 D0
	ldy #$50A8.w		; A0 A8 50
	pei ($A8.b)		; D4 A8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	ldy #$5080.w		; A0 80 50
	brk $A8.b		; 00 A8
	brk $0B.b		; 00 0B
	tsb $0F.b		; 04 0F
	ora [$1E.b]		; 07 1E
	ora ($27.b,X)		; 01 27
	tsb $3F.b		; 04 3F
	cop $5E.b		; 02 5E
	clc		; 18
	sei		; 78
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	clc		; 18
	cop $00.b		; 02 00
	clc		; 18
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	ora [$30.b]		; 07 30
	asl $30.b,X		; 16 30
	ora $0C21.w		; 0D 21 0C
	adc ($3A.b,X)		; 61 3A
	adc $18.b,S		; 63 18
	eor $1C.b,S		; 43 1C
	dec $34.b		; C6 34
	dec $1F.b		; C6 1F
	bpl  15.b		; 10 0F
	brk $1E.b		; 00 1E
	brk $3F.b		; 00 3F
	and ($1C.b,X)		; 21 1C
	brk $3E.b		; 00 3E
	cop $78.b		; 02 78
	rti		; 40

	sei		; 78
	rti		; 40

	rti		; 40

	dec $00.b		; C6 00
	dec $24.b		; C6 24
	ror $04.b		; 66 04
	ror $10.b		; 66 10
	and ($10.b)		; 32 10
	and ($0A.b,S),Y		; 33 0A
	tsa		; 3B
	asl A		; 0A
	tas		; 1B
	bit $7C04.w,X		; 3C 04 7C
	mvp $00,$18		; 44 18 00
	sec		; 38
	jsr $000C.w		; 20 0C 00
	asl $1402.w		; 0E 02 14
	bpl   4.b		; 10 04
	brk $00.b		; 00 00
	stz $72.b		; 64 72
	tsb $5E.b		; 04 5E
	bmi  93.b		; 30 5D
	rol $385F.w,X		; 3E 5F 38
	tda		; 7B
	cop $3F.b		; 02 3F
	clc		; 18
	and $3806.w,Y		; 39 06 38
	jsr $040C.w		; 20 0C 04
	bmi   0.b		; 30 00
	rol $3800.w,X		; 3E 00 38
	brk $02.b		; 00 02
	tsb $18.b		; 04 18
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	and ($06.b,X)		; 21 06
	adc $20.b,S		; 63 20
	adc $10.b,S		; 63 10
.INDEX 16
	rep #$5C		; C2 5C
	dec $38.b		; C6 38
	stx $B0.b		; 86 B0
	sty $68.b		; 84 68
	tsb $001E.w		; 0C 1E 00
	bit $1E20.w,X		; 3C 20 1E
	cop $7C.b		; 02 7C
	rti		; 40

	sec		; 38
	brk $FC.b		; 00 FC
	sty $78.b		; 84 78
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	bra -80.b		; 80 B0
	rts		; 60

	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3B.b		; 00 3B
	ora ($37.b)		; 12 37
	php		; 08
	ror $6624.w		; 6E 24 66
	tsb $5E.b		; 04 5E
	jsr $3C7A.w		; 20 7A 3C
	pea $3C08.w		; F4 08 3C
	jsr $0412.w		; 20 12 04
	php		; 08
	brk $24.b		; 00 24
	bpl   4.b		; 10 04
	clc		; 18
	jsr $3C00.w		; 20 00 3C
	brk $08.b		; 00 08
	brk $20.b		; 00 20
	cpy #$307E.w		; C0 7E 30
	tda		; 7B
	asl A		; 0A
	and $1F2610.l		; 2F 10 26 1F
	and $1706.w,Y		; 39 06 17
	ora ($13.b,X)		; 01 13
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $0A.b		; 00 0A
	tsb $10.b		; 04 10
	brk $1F.b		; 00 1F
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	ora ($1E.b,X)		; 01 1E
	cop $17.b		; 02 17
	trb $3F3F.w		; 1C 3F 3F
	rol $3F3F.w		; 2E 3F 3F
	and $176F2D.l,X		; 3F 2D 6F 17
	eor [$01.b]		; 47 01
	asl $02.b		; 06 02
	ora ($14.b,X)		; 01 14
	tsb $033E.w		; 0C 3E 03
	rol $1D.b		; 26 1D
	tsa		; 3B
	asl $15.b		; 06 15
	cop $3B.b		; 02 3B
	brk $E5.b		; 00 E5
	ldx #$497B.w		; A2 7B 49
	cmp $3C.b		; C5 3C
	cmp $96A6.w,Y		; D9 A6 96
	cpx $DB.b		; E4 DB
	sbc ($E5.b,X)		; E1 E5
	ror $62.b,X		; 76 62
	sbc $45009A.l,X		; FF 9A 00 45
	bra   2.b		; 80 02
	brk $98.b		; 00 98
	cli		; 58
	tya		; 98
	eor $5C9D.w,Y		; 59 9D 5C
	plp		; 28
	inx		; E8
	jsr $C0E0.w		; 20 E0 C0
	brk $B0.b		; 00 B0
	cpy #$B840.w		; C0 40 B8
	bcc 104.b		; 90 68
	rts		; 60

	tay		; A8
	bvc   8.b		; 50 08
	bra 108.b		; 80 6C
	jsr $00BC.w		; 20 BC 00
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bcc  48.b		; 90 30
	bcs  16.b		; B0 10
	bpl  64.b		; 10 40
	rti		; 40

	tsb $11.b		; 04 11
	asl $13.b		; 06 13
	pld		; 2B
	clc		; 18
	and $5D02.w,X		; 3D 02 5D
	rol $2E5D.w,X		; 3E 5D 2E
	ror A		; 6A
	tsb $46.b		; 04 46
	brk $0E.b		; 00 0E
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $3E.b		; 00 3E
	brk $2E.b		; 00 2E
	brk $04.b		; 00 04
	bpl   0.b		; 10 00
	sec		; 38
	jsr $2462.w		; 20 62 24
	ror $24.b		; 66 24
	ror $24.b		; 66 24
	ror $08.b		; 66 08
	lsr $CE08.w		; 4E 08 CE
	tsb $44CE.w		; 0C CE 44
	cmp [$1C.b]		; C7 1C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $34.b		; 00 34
	tsb $74.b		; 04 74
	mvp $40,$70		; 44 70 40
	dec A		; 3A
	cop $44.b		; 02 44
	cmp [$00.b]		; C7 00
	cmp $22.b,S		; C3 22
	sbc $22.b,S		; E3 22
	adc $02.b,S		; 63 02
	adc $00.b,S		; 63 00
	adc ($00.b,X)		; 61 00
	and ($10.b,X)		; 21 10
	and ($3A.b),Y		; 31 3A
	cop $7E.b		; 02 7E
	.db $42, $5C		; 42 5C
	rti		; 40

	trb $3C00.w		; 1C 00 3C
	jsr $203E.w		; 20 3E 20
	asl $0F00.w,X		; 1E 00 0F
	ora ($17.b,X)		; 01 17
	bmi   7.b		; 30 07
	bmi  11.b		; 30 0B
	clc		; 18
	ora $18.b,S		; 03 18
	ora $08.b,S		; 03 08
	ora $0C.b		; 05 0C
	ora ($0C.b,X)		; 01 0C
	brk $04.b		; 00 04
	ora $101F00.l		; 0F 00 1F 10
	ora [$00.b]		; 07 00
	ora $000708.l		; 0F 08 07 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	iny		; C8
	sei		; 78
	cpy $847C.w		; CC 7C 84
	bit $3E82.w,X		; 3C 82 3E
.ACCU 8
.INDEX 8
	sep #$36		; E2 36
	sbc ($37.b,X)		; E1 37
	cpy #$13.b		; C0 13
	cpy #$11.b		; C0 11
	sta [$10.b],Y		; 97 10
	sta ($10.b,S),Y		; 93 10
	wai		; CB
	php		; 08
	sbc $24.b		; E5 24
	cmp ($00.b,X)		; C1 00
	rep #$02		; C2 02
	sbc ($01.b,X)		; E1 01
	cpx #$00.b		; E0 00
	jsr ($D8C0.w,X)		; FC C0 D8
	xce		; FB
	.db $82, $BC, $7C		; 82 BC 7C
	adc $E7616D.l,X		; 7F 6D 61 E7
	cpx #$A9.b		; E0 A9
	sed		; F8
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	cpy #$00.b		; C0 00
	clv		; B8
	cpy $1B.b		; C4 1B
	sbc $50.b,S		; E3 50
	cpx #$7E.b		; E0 7E
	cpy #$BF.b		; C0 BF
	rti		; 40

	lda [$50.b],Y		; B7 50
	sbc $04.b		; E5 04
	ora $00.b,S		; 03 00
	asl $02.b		; 06 02
	lsr $B0.b		; 46 B0
	sbc $4C.b		; E5 4C
	ora $7CF9.w		; 0D F9 7C
	adc ($FA.b),Y		; 71 FA
	ora $34.b,S		; 03 34
	ora [$00.b]		; 07 00
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	ora ($52.b,X)		; 01 52
	bpl   6.b		; 10 06
	brk $8E.b		; 00 8E
	brk $FC.b		; 00 FC
	brk $F9.b		; 00 F9
	ora ($E0.b,X)		; 01 E0
	cpx #$C0.b		; E0 C0
	rti		; 40

	rti		; 40

	brk $C0.b		; 00 C0
	bra -128.b		; 80 80
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	sta ($82.b,X)		; 81 82
	sbc $A0.b		; E5 A0
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	ora $3F1F1F.l		; 0F 1F 1F 3F
	rol $7F76.w,X		; 3E 76 7F
	sbc [$FF.b],Y		; F7 FF
	sed		; F8
	sei		; 78
	inx		; E8
	clv		; B8
	ora $00.b,S		; 03 00
	asl $1E01.w		; 0E 01 1E
	ora $1936.w		; 0D 36 19
	bvc  63.b		; 50 3F
	lda [$78.b],Y		; B7 78
	pla		; 68
	bvs -120.b		; 70 88
	bmi -49.b		; 30 CF
	adc ($AD.b,S),Y		; 73 AD
	adc ($6F.b,S),Y		; 73 6F
	bmi  74.b		; 30 4A
	and $FB.b,X		; 35 FB
	ora $B3.b		; 05 B3
	adc $6DD3.w		; 6D D3 6D
	adc ($0D.b,S),Y		; 73 0D
	adc ($00.b,S),Y		; 73 00
	bvs   7.b		; 70 07
	bmi   0.b		; 30 00
	and $00.b,X		; 35 00
	ora $00.b		; 05 00
	adc $6D00.w		; 6D 00 6D
	brk $0D.b		; 00 0D
	brk $BD.b		; 00 BD
	inc $FEFF.w,X		; FE FF FE
	sbc $0CFFFE.l,X		; FF FE FF 0C
	adc $7EA3.w,X		; 7D A3 7E
	lda $965F.w		; AD 5F 96
	eor $9C95.w,X		; 5D 95 9C
	ply		; 7A
	pea $3E8A.w		; F4 8A 3E
	sbc ($0C.b)		; F2 0C
	tsb $00A3.w		; 0C A3 00
	lda $9600.w		; AD 00 96
	jsr $2295.w		; 20 95 22
	ora $70107F.l,X		; 1F 7F 10 70
	ora ($30.b,S),Y		; 13 30
	ora [$30.b],Y		; 17 30
	ora $180B38.l		; 0F 38 0B 18
	ora $18.b,S		; 03 18
	ora $0C.b		; 05 0C
	jsr $2F20.w		; 20 20 2F
	jsr $000F.w		; 20 0F 00
	ora $101700.l		; 0F 00 17 10
	ora [$00.b]		; 07 00
	ora $000308.l		; 0F 08 03 00
	brk $30.b		; 00 30
	jsr $0030.w		; 20 30 00
	clc		; 18
	brk $18.b		; 00 18
	bpl  24.b		; 10 18
	brk $0C.b		; 00 0C
	dey		; 88
	sty $8480.w		; 8C 80 84
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	sed		; F8
	php		; 08
	bvs   0.b		; 70 00
	sei		; 78
	brk $40.b		; 00 40
	dec $4C.b		; C6 4C
	dec $CE4C.w		; CE 4C CE
	tsb $86.b		; 04 86
	tsb $86.b		; 04 86
	brk $82.b		; 00 82
	brk $82.b		; 00 82
	rti		; 40

	cmp $BC.b,S		; C3 BC
	sty $30.b		; 84 30
	brk $30.b		; 00 30
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	cop $2F.b		; 02 2F
	adc ($1C.b,X)		; 61 1C
	eor ($1E.b,X)		; 41 1E
	cmp $78.b,S		; C3 78
	cmp $3C.b,S		; C3 3C
	stx $30.b		; 86 30
	stx $78.b		; 86 78
	sty $8CE0.w		; 8C E0 8C
	asl $3F00.w,X		; 1E 00 3F
	ora ($7C.b,X)		; 01 7C
	rti		; 40

	rol $7802.w,X		; 3E 02 78
	brk $7C.b		; 00 7C
	tsb $F0.b		; 04 F0
	bra 120.b		; 80 78
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
	rti		; 40

	cmp $42.b,S		; C3 42
	cmp $02.b,S		; C3 02
	cmp $02.b,S		; C3 02
	cmp $20.b,S		; C3 20
	adc ($20.b,X)		; 61 20
	adc ($00.b,X)		; 61 00
	adc ($00.b,X)		; 61 00
	adc ($3E.b,X)		; 61 3E
	cop $3C.b		; 02 3C
	brk $7C.b		; 00 7C
	rti		; 40

	jmp ($1E40.w,X)		; 7C 40 1E
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	jsr $203E.w		; 20 3E 20
	lsr $7C20.w,X		; 5E 20 7C
	sec		; 38
	stz $18.b,X		; 74 18
	stz $F800.w		; 9C 00 F8
	bpl -80.b		; 10 B0
	jsr $00E0.w		; 20 E0 00
	brk $00.b		; 00 00
	jsr $3800.w		; 20 00 38
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	rts		; 60

	bpl   0.b		; 10 00
	jsr $0040.w		; 20 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs  16.b		; 70 10
	tya		; 98
	pla		; 68
	asl $1332.w		; 0E 32 13
	.db $42, $A7		; 42 A7
	cop $AF.b		; 02 AF
	php		; 08
	adc $000000.l,X		; 7F 00 00 00
	brk $60.b		; 00 60
	rts		; 60

	beq -16.b		; F0 F0
	cpx $F8EC.w		; EC EC F8
	sed		; F8
	bvc  80.b		; 50 50
	ldx #$A2.b		; A2 A2
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	cop $0E.b		; 02 0E
	tsb $1C.b		; 04 1C
	ora #$18.b		; 09 18
	ora $30.b,S		; 03 30
	ora [$30.b],Y		; 17 30
	asl $0160.w		; 0E 60 01
	brk $01.b		; 00 01
	brk $05.b		; 00 05
	tsb $0B.b		; 04 0B
	php		; 08
	ora [$00.b]		; 07 00
	ora $000F10.l,X		; 1F 10 0F 00
	and $11C020.l,X		; 3F 20 C0 11
	cpx #$30.b		; E0 30
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	rti		; 40

	rts		; 60

	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bvs  -1.b		; 70 FF
	ldx $DF7F.w,Y		; BE 7F DF
	lda $197F67.l,X		; BF 67 7F 19
	ora $7E0F0D.l,X		; 1F 0D 0F 7E
	ora $7B.b,S		; 03 7B
	rol $F820.w,X		; 3E 20 F8
	bit $80FF.w,X		; 3C FF 80
	adc $181867.l,X		; 7F 67 18 18
	ora [$0C.b]		; 07 0C
	ora $02.b,S		; 03 02
	ora ($3E.b,X)		; 01 3E
	ora ($48.b,X)		; 01 48
	cmp $48FC01.l		; CF 01 FC 48
	stz $FF1C.w,X		; 9E 1C FF
	sbc $FDFF.w,X		; FD FF FD
	sbc $7DFFFD.l,X		; FF FD FF 7D
	sbc $0384B4.l,X		; FF B4 84 03
	ora $61.b,S		; 03 61
	adc $9C08.w		; 6D 08 9C
	adc $FDFE.w,Y		; 79 FE FD
	inc $FE7D.w,X		; FE 7D FE
	and $47FE.w,X		; 3D FE 47
	ror $8101.w,X		; 7E 01 81
	.db $42, $C3		; 42 C3
	trb $F7.b		; 14 F7
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$20.b		; A0 20
	ror $3D00.w,X		; 7E 00 3D
	ora ($2A.b,X)		; 01 2A
	jsl $000000.l		; 22 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bne -32.b		; D0 E0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $35.b		; 00 35
	phd		; 0B
	and $1B.b		; 25 1B
	and [$1B.b]		; 27 1B
	and [$1B.b]		; 27 1B
	and [$1B.b]		; 27 1B
	and $080703.l,X		; 3F 03 07 08
	ora $0F.b,S		; 03 0F
	phd		; 0B
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $4E.b		; 04 4E
	txa		; 8A
	lsr $4E8A.w		; 4E 8A 4E
	txa		; 8A
	eor [$85.b]		; 47 85
	eor [$85.b]		; 47 85
	eor [$85.b]		; 47 85
	cmp $877808.l		; CF 08 78 87
	txa		; 8A
	and ($8A.b),Y		; 31 8A
	and ($8A.b),Y		; 31 8A
	and ($85.b),Y		; 31 85
	sec		; 38
	sta $38.b		; 85 38
	sta $38.b		; 85 38
	php		; 08
	bmi -122.b		; 30 86
	stx $AC.b		; 86 AC
	inc $3C.b,X		; F6 3C
	dec $F0.b		; C6 F0
	tsb $F0.b		; 04 F0
	asl $F8.b		; 06 F8
	asl $18.b		; 06 18
	.db $82, $80, $FE		; 82 80 FE
	bcc -104.b		; 90 98
	bmi   8.b		; 30 08
	cli		; 58
	jsr $00F8.w		; 20 F8 00
	sed		; F8
	brk $FC.b		; 00 FC
	tsb $FC.b		; 04 FC
	bra  96.b		; 80 60
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$60.b		; C0 60
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	cpx #$60.b		; E0 60
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra  96.b		; 80 60
	cpy #$E0.b		; C0 E0
	rti		; 40

	cpx #$40.b		; E0 40
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $42, $20		; 42 20
	.db $62, $00, $62		; 62 00 62
	brk $23.b		; 00 23
	bpl  51.b		; 10 33
	cop $33.b		; 02 33
	cop $13.b		; 02 13
	ora $12.b,S		; 03 12
	bit $1C00.w,X		; 3C 00 1C
	brk $3C.b		; 00 3C
	jsr $021E.w		; 20 1E 02
	asl $1C02.w		; 0E 02 1C
	bpl  12.b		; 10 0C
	brk $0C.b		; 00 0C
	brk $C8.b		; 00 C8
	sed		; F8
	plp		; 28
	sec		; 38
	ldy $3C.b		; A4 3C
	cpy $1C.b		; C4 1C
	cpy $1C.b		; C4 1C
	cpy $1C.b		; C4 1C
	inc $1E.b		; E6 1E
	inc $1E.b,X		; F6 1E
	and [$20.b]		; 27 20
	cmp [$00.b]		; C7 00
	wai		; CB
	php		; 08
	xba		; EB
	php		; 08
	sbc ($10.b,S),Y		; F3 10
	sbc ($10.b,S),Y		; F3 10
	sbc ($10.b),Y		; F1 10
	sbc ($00.b,X)		; E1 00
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $60.b		; 00 60
	rti		; 40

	rts		; 60

	brk $30.b		; 00 30
	jsr $0030.w		; 20 30 00
	clc		; 18
	bpl  24.b		; 10 18
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	tsb $0C.b		; 04 0C
	asl $0618.w		; 0E 18 06
	bpl  26.b		; 10 1A
	and ($04.b),Y		; 31 04
	and ($09.b,X)		; 21 09
	pld		; 2B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora $0E0E0F.l		; 0F 0F 0E 0E
	asl $141E.w,X		; 1E 1E 14
	trb $00.b		; 14 00
	eor ($53.b)		; 52 53
	pea $6C09.w		; F4 09 6C
	tsb $2F.b		; 04 2F
	trb $3F.b		; 14 3F
	asl $1F.b		; 06 1F
	brk $0F.b		; 00 0F
	ora $03.b,S		; 03 03
	and $0B2C.w		; 2D 2C 0B
	php		; 08
	ora ($10.b,S),Y		; 13 10
	clc		; 18
	clc		; 18
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$03.b]		; 07 03
	phd		; 0B
	ora [$1B.b]		; 07 1B
	ora [$1A.b]		; 07 1A
	ora [$3B.b]		; 07 3B
	ora [$29.b],Y		; 17 29
	asl $7F.b		; 06 7F
	bmi  57.b		; 30 39
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora ($06.b,X)		; 01 06
	ora ($06.b,X)		; 01 06
	ora ($17.b,X)		; 01 17
	brk $06.b		; 00 06
	bpl  48.b		; 10 30
	brk $00.b		; 00 00
	brk $7B.b		; 00 7B
	jsl $5C1866.l		; 22 66 18 5C
	brk $EC.b		; 00 EC
	plp		; 28
	ldy $F840.w,X		; BC 40 F8
	bvs -24.b		; 70 E8
	bmi  56.b		; 30 38
	brk $22.b		; 00 22
	tsb $18.b		; 04 18
	brk $00.b		; 00 00
	jsr $1028.w		; 20 28 10
	rti		; 40

	brk $70.b		; 00 70
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	cpy #$38.b		; C0 38
	sec		; 38
	ror $7D7E.w,X		; 7E 7E 7D
	adc $FF7F7D.l,X		; 7F 7D 7F FF
	lda $FBFB.w,X		; BD FB FB
	sed		; F8
	sec		; 38
	bcs -112.b		; B0 90
	sec		; 38
	brk $56.b		; 00 56
	sec		; 38
	adc $793E.w,X		; 7D 3E 79
	rol $7AB5.w,X		; 3E B5 7A
	tyx		; BB
	bvs  40.b		; 70 28
	bmi -112.b		; 30 90
	rti		; 40

	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	clv		; B8
	rti		; 40

	ror $98.b		; 66 98
	lda ($6C.b)		; B2 6C
	phx		; DA
	ldy $6F.b,X		; B4 6F
	cld		; D8
	sbc [$6E.b],Y		; F7 6E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $98.b		; 00 98
	brk $6C.b		; 00 6C
	brk $B4.b		; 00 B4
	brk $D8.b		; 00 D8
	brk $6E.b		; 00 6E
	brk $BB.b		; 00 BB
	ror $5F.b,X		; 76 5F
	sec		; 38
	ror $2E5C.w		; 6E 5C 2E
	clc		; 18
	clc		; 18
	brk $20.b		; 00 20
	bpl -32.b		; 10 E0
	sec		; 38
	bne -40.b		; D0 D8
	ror $00.b,X		; 76 00
	sec		; 38
	bra  92.b		; 80 5C
	bra  24.b		; 80 18
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpy #$10.b		; C0 10
	bpl  32.b		; 10 20
	brk $04.b		; 00 04
	ora #$06.b		; 09 06
	tas		; 1B
	bit $311B.w		; 2C 1B 31
	cop $3F.b		; 02 3F
	bpl  93.b		; 10 5D
	rol $047A.w,X		; 3E 7A 04
	ror $20.b		; 66 20
	ora [$01.b]		; 07 01
	tsb $0608.w		; 0C 08 06
	cop $0C.b		; 02 0C
	brk $10.b		; 00 10
	brk $3E.b		; 00 3E
	brk $04.b		; 00 04
	brk $20.b		; 00 20
	clc		; 18
	trb $F490.w		; 1C 90 F4
	php		; 08
	stx $78.b		; 86 78
	sta $187B66.l,X		; 9F 66 7B 18
	ror $7130.w,X		; 7E 30 71
	asl $003F.w		; 0E 3F 00
	rts		; 60

	brk $08.b		; 00 08
	brk $78.b		; 00 78
	brk $66.b		; 00 66
	brk $18.b		; 00 18
	tsb $30.b		; 04 30
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	and ($1C.b),Y		; 31 1C
	and ($0E.b),Y		; 31 0E
	and $18.b,S		; 23 18
	and $1C.b,S		; 23 1C
	ror $30.b		; 66 30
	ror $18.b		; 66 18
	jmp $4C20.w		; 4C 20 4C
	asl $0F10.w,X		; 1E 10 0F
	ora ($1C.b,X)		; 01 1C
	brk $1E.b		; 00 1E
	cop $38.b		; 02 38
	jsr $041C.w		; 20 1C 04
	bmi   0.b		; 30 00
	sec		; 38
	php		; 08
	tda		; 7B
	dec A		; 3A
	ror $2701.w,X		; 7E 01 27
	ora $171F21.l,X		; 1F 21 1F 17
	php		; 08
	trb $08.b		; 14 08
	tsb $0C00.w		; 0C 00 0C
	brk $3A.b		; 00 3A
	tsb $01.b		; 04 01
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	bra  -1.b		; 80 FF
	ldy #$D6.b		; A0 D6
	sty $A07C.w		; 8C 7C A0
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	ldy #$00.b		; A0 00
	sty $A020.w		; 8C 20 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	trb $3011.w		; 1C 11 30
	ora $38.b,S		; 03 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $0F0F0F.l		; 0F 0F 0F 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	jsr $0030.w		; 20 30 00
	php		; 08
	bmi   4.b		; 30 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	beq -16.b		; F0 F0
	sed		; F8
	sed		; F8
	cop $06.b		; 02 06
	ora $0C.b		; 05 0C
	asl A		; 0A
	clc		; 18
	ora $2431.w,X		; 1D 31 24
	adc [$42.b]		; 67 42
	jmp.w [$C650]		; DC 50 C6
	and $000164.l		; 2F 64 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $1800.w		; 0E 00 18
	brk $30.b		; 00 30
	bpl  60.b		; 10 3C
	tsb $18.b		; 04 18
	brk $BF.b		; 00 BF
	and $AE7F4E.l,X		; 3F 4E 7F AE
	sbc $9EFF6E.l,X		; FF 6E FF 9E
	sbc $B9FFAC.l,X		; FF AC FF B9
	sbc $DCFFBE.l,X		; FF BE FF DC
	ora $8A.b,S		; 03 8A
	asl $24.b		; 06 24
	asl $1E64.w,X		; 1E 64 1E
	bcc 110.b		; 90 6E
	sty $9070.w		; 8C 70 90
	jmp ($7E9C.w,X)		; 7C 9C 7E
	brk $BF.b		; 00 BF
	xba		; EB
	trb $9C.b		; 14 9C
	jsl $0808DD.l		; 22 DD 08 08
	adc [$42.b],Y		; 77 42
	stp		; DB
	mvp $B0,$39		; 44 39 B0
	ror $4040.w,X		; 7E 40 40
	sbc $E3.b,S		; E3 E3
	sbc $EB.b,S		; E3 EB
	xba		; EB
	sbc $80.b,S		; E3 80
	bra  36.b		; 80 24
	bit $C6.b		; 24 C6
	dec $B0.b,X		; D6 B0
	bra  16.b		; 80 10
	bvs -96.b		; 70 A0
	bvs  96.b		; 70 60
	beq   0.b		; F0 00
	tya		; 98
	bcc -104.b		; 90 98
	brk $88.b		; 00 88
	rti		; 40

	cpy $CE09.w		; CC 09 CE
	bcc -96.b		; 90 A0
	ldy #$80.b		; A0 80
	rti		; 40

	brk $70.b		; 00 70
	bpl  96.b		; 10 60
	brk $F0.b		; 00 F0
	bra  56.b		; 80 38
	php		; 08
	bvs  64.b		; 70 40
	lsr $1EC0.w,X		; 5E C0 1E
	cpy #$2E.b		; C0 2E
	rts		; 60

	ora $301760.l		; 0F 60 17 30
	ora [$30.b]		; 07 30
	ora [$10.b]		; 07 10
	phd		; 0B
	clc		; 18
	and $407F00.l,X		; 3F 00 7F 40
	ora $203F00.l,X		; 1F 00 3F 20
	ora $101F00.l		; 0F 00 1F 10
	ora $000700.l		; 0F 00 07 00
	bmi -16.b		; 30 F0
	bpl -16.b		; 10 F0
	dey		; 88
	sed		; F8
	sty $DC.b		; 84 DC
	tsb $4C.b		; 04 4C
	cop $6E.b		; 02 6E
	sta ($67.b,X)		; 81 67
	cpy #$63.b		; C0 63
	sta $A0AF80.l		; 8F 80 AF A0
	ora [$10.b],Y		; 17 10
	phd		; 0B
	php		; 08
	sta $00.b,S		; 83 00
	cmp $44.b		; C5 44
	rep #$42		; C2 42
	sta ($01.b,X)		; 81 01
	eor $2E.b,X		; 55 2E
	sta $5CAA6D.l,X		; 9F 6D AA 5C
	ror $5E1A.w,X		; 7E 1A 5E
	dec A		; 3A
	stz $38.b,X		; 74 38
	bit $1C14.w		; 2C 14 1C
	tsb $2E.b		; 04 2E
	brk $6D.b		; 00 6D
	brk $5C.b		; 00 5C
	ora ($1A.b,X)		; 01 1A
	ora ($3A.b,X)		; 01 3A
	ora ($38.b,X)		; 01 38
	ora $14.b,S		; 03 14
	ora $04.b,S		; 03 04
	ora $77.b,S		; 03 77
	eor ($77.b),Y		; 51 77
	eor $77.b,X		; 55 77
	eor $73.b,X		; 55 73
	eor ($73.b)		; 52 73
	eor ($73.b)		; 52 73
	eor ($71.b)		; 52 71
	eor ($71.b),Y		; 51 71
	eor ($51.b),Y		; 51 51
	dey		; 88
	eor $88.b,X		; 55 88
	eor $88.b,X		; 55 88
	eor ($8C.b)		; 52 8C
	eor ($8C.b)		; 52 8C
	eor ($8C.b)		; 52 8C
	eor ($8E.b),Y		; 51 8E
	eor ($8E.b),Y		; 51 8E
	ora $311C31.l		; 0F 31 1C 31
	asl $1823.w		; 0E 23 18
	adc $1C.b,S		; 63 1C
	ror $30.b		; 66 30
	ror $18.b		; 66 18
	jmp $4C20.w		; 4C 20 4C
	asl $0F10.w,X		; 1E 10 0F
	ora ($1C.b,X)		; 01 1C
	brk $3E.b		; 00 3E
	jsl $1C2038.l		; 22 38 20 1C
	tsb $30.b		; 04 30
	brk $38.b		; 00 38
	php		; 08
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $60.b		; 00 60
	bra -80.b		; 80 B0
	rts		; 60

	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BA.b		; 00 BA
	jmp ($70BE.w,X)		; 7C BE 70
	inc $04.b,X		; F6 04
	ror $7230.w,X		; 7E 30 72
	tsb $307E.w		; 0C 7E 30
	tda		; 7B
	asl A		; 0A
	and $007C10.l		; 2F 10 7C 00
	bvs   0.b		; 70 00
	tsb $08.b		; 04 08
	bmi   0.b		; 30 00
	tsb $3000.w		; 0C 00 30
	brk $0A.b		; 00 0A
	tsb $10.b		; 04 10
	brk $2E.b		; 00 2E
	adc $18.b,S		; 63 18
	cmp $7C.b,S		; C3 7C
	dec $30.b		; C6 30
	stx $78.b		; 86 78
	sty $8CE0.w		; 8C E0 8C
	bvs  24.b		; 70 18
	cpy #$18.b		; C0 18
	trb $7E00.w		; 1C 00 7E
	.db $42, $38		; 42 38
	brk $7C.b		; 00 7C
	tsb $F0.b		; 04 F0
	bra 120.b		; 80 78
	php		; 08
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	brk $C3.b		; 00 C3
	cop $43.b		; 02 43
	jsl $610063.l		; 22 63 00 61
	bpl  49.b		; 10 31
	brk $31.b		; 00 31
	ora #$19.b		; 09 19
	ora ($19.b,X)		; 01 19
	ror $3C42.w,X		; 7E 42 3C
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	jsr $010F.w		; 20 0F 01
	ora $000611.l,X		; 1F 11 06 00
	asl $0008.w		; 0E 08 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	ora [$07.b]		; 07 07
	ora $161B0B.l		; 0F 0B 1B 16
	and ($00.b,S),Y		; 33 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	cop $05.b		; 02 05
	ora $06.b,S		; 03 06
	ora ($0E.b,X)		; 01 0E
	ora ($07.b,X)		; 01 07
	rts		; 60

	asl A		; 0A
	rti		; 40

	brk $51.b		; 00 51
	ora ($A3.b,X)		; 01 A3
	.db $42, $EE		; 42 EE
	rol $2CF3.w		; 2E F3 2C
	sbc ($07.b),Y		; F1 07
	bvs  31.b		; 70 1F
	ora $3F3F3F.l,X		; 1F 3F 3F 3F
	and $115C5C.l,X		; 3F 5C 5C 11
	ora ($0D.b),Y		; 11 0D
	ora ($0F.b,X)		; 01 0F
	brk $0F.b		; 00 0F
	brk $98.b		; 00 98
	cop $0C.b		; 02 0C
	ora [$1A.b]		; 07 1A
	and $225F12.l		; 2F 12 5F 22
	lda $D0FE94.l,X		; BF 94 FE D0
	jmp $FC10C0.l		; 5C C0 10 FC
	jsr ($F8F8.w,X)		; FC F8 F8
	beq -16.b		; F0 F0
	cpx #$E0.b		; E0 E0
	mvp $00,$44		; 44 44 00
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	bra  30.b		; 80 1E
	dec A		; 3A
	ora $0F14.w		; 0D 14 0F
	ora $0D.b		; 05 0D
	ora $07.b,S		; 03 07
	ora ($05.b,X)		; 01 05
	cop $0A.b		; 02 0A
	ora $13.b		; 05 13
	ora $0102.w		; 0D 02 01
	tsb $02.b		; 04 02
	tsb $01.b		; 04 01
	brk $03.b		; 00 03
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	ora $FF00.w		; 0D 00 FF
	and $EFFFBF.l,X		; 3F BF FF EF
	sbc $7FFFFE.l,X		; FF FE FF 7F
	sbc $BFFFE5.l,X		; FF E5 FF BF
	cmp [$FF.b],Y		; D7 FF
	lda ($3E.b),Y		; B1 3E
	and $CFCE3F.l,X		; 3F 3F CE CF
	sbc ($72.b),Y		; F1 72
	sbc $E5FE27.l,X		; FF 27 FE E5
	tas		; 1B
	cmp [$00.b],Y		; D7 00
	bcs   1.b		; B0 01
	bvc -16.b		; 50 F0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	rts		; 60

	cpx #$A0.b		; E0 A0
	cpx #$F8.b		; E0 F8
	cpx #$F6.b		; E0 F6
	iny		; C8
	cmp $10B6.w,Y		; D9 B6 10
	rts		; 60

	cpx #$00.b		; E0 00
	ldy #$C0.b		; A0 C0
	rts		; 60

	bra -96.b		; 80 A0
	cpy #$E0.b		; C0 E0
	rti		; 40

	iny		; C8
	brk $B6.b		; 00 B6
	bra  33.b		; 80 21
	ror $03.b		; 66 03
	adc [$10.b]		; 67 10
	bmi   9.b		; 30 09
	and $1F04.w,Y		; 39 04 1F
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc A		; 1A
	cop $3C.b		; 02 3C
	bit $0F.b		; 24 0F
	brk $16.b		; 00 16
	bpl   8.b		; 10 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $18.b,S		; 03 18
	ora $08.b,S		; 03 08
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	tsb $0C.b		; 04 0C
	php		; 08
	clc		; 18
	ora ($31.b,X)		; 01 31
	trb $0F71.w		; 1C 71 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $2F10.w,X		; 1E 10 2F
	and ($C0.b,X)		; 21 C0
	adc ($C0.b,X)		; 61 C0
	adc ($80.b,X)		; 61 80
	adc ($00.b,X)		; 61 00
	rts		; 60

	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0110.w		; 0E 10 01
	asl $0F03.w,X		; 1E 03 0F
	cop $0E.b		; 02 0E
	cop $06.b		; 02 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	asl $040E.w		; 0E 0E 04
	tsb $05.b		; 04 05
	tsb $01.b		; 04 01
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	cop $00.b		; 02 00
	brk $71.b		; 00 71
	eor ($F1.b),Y		; 51 F1
	bpl  -1.b		; 10 FF
	cmp ($19.b,X)		; C1 19
	ora $F50765.l,X		; 1F 65 07 F5
	ora [$F4.b]		; 07 F4
	ora [$70.b]		; 07 70
	ora $51.b,S		; 03 51
	stx $0E10.w		; 8E 10 0E
	brk $00.b		; 00 00
	cpx $04.b		; E4 04
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F9.b		; 00 F9
	ora ($FD.b,X)		; 01 FD
	ora ($1B.b,X)		; 01 1B
	ora [$EA.b]		; 07 EA
	asl $FB.b,X		; 16 FB
	adc [$D7.b],Y		; 77 D7
	txy		; 9B
	inc $F7AA.w		; EE AA F7
	cmp $FF.b,X		; D5 FF
	inc $A9.b		; E6 A9
	inc $00.b,X		; F6 00
	brk $15.b		; 00 15
	brk $77.b		; 00 77
	brk $19.b		; 00 19
	ldy #$A9.b		; A0 A9
	bcc -44.b		; 90 D4
	pha		; 48
	ldx $40.b		; A6 40
	ldy #$50.b		; A0 50
	jmp ($2081.w,X)		; 7C 81 20
	stx $CC90.w		; 8E 90 CC
	bra  -4.b		; 80 FC
	bit $5E58.w		; 2C 58 5E
	dec A		; 3A
	sbc $73B3.w,X		; FD B3 73
	lda $FC80FE.l		; AF FE 80 FC
	sty $0838.w		; 8C 38 08
	cpy #$00.b		; C0 00
	tya		; 98
	brk $BA.b		; 00 BA
	brk $31.b		; 00 31
	asl $21.b		; 06 21
	cop $28.b		; 02 28
	jmp ($6400.w)		; 6C 00 64
	brk $24.b		; 00 24
	bpl  54.b		; 10 36
	and $182F04.l,X		; 3F 04 2F 18
	rol $2F1F.w		; 2E 1F 2F
	trb $0010.w		; 1C 10 00
	sec		; 38
	jsr $0018.w		; 20 18 00
	tsb $0004.w		; 0C 04 00
	brk $18.b		; 00 18
	brk $1F.b		; 00 1F
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	rts		; 60

	rti		; 40

	rts		; 60

	brk $30.b		; 00 30
	jsr $2030.w		; 20 30 20
	bmi   0.b		; 30 00
	clc		; 18
	bpl  24.b		; 10 18
	brk $08.b		; 00 08
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	bra -116.b		; 80 8C
	iny		; C8
	cpy $C440.w		; CC 40 C4
	rti		; 40

	dec $00.b		; C6 00
	stx $04.b		; 86 04
	stx $44.b		; 86 44
	dec $40.b		; C6 40
	cmp $78.b,S		; C3 78
	php		; 08
	bmi   0.b		; 30 00
	clv		; B8
	bra  60.b		; 80 3C
	tsb $7C.b		; 04 7C
	tsb $78.b		; 04 78
	brk $38.b		; 00 38
	brk $3E.b		; 00 3E
	cop $3E.b		; 02 3E
	ora [$2D.b]		; 07 2D
	cop $47.b		; 02 47
	brk $76.b		; 00 76
	bit $6E.b		; 24 6E
	bpl -34.b		; 10 DE
	jmp $08CC.w		; 4C CC 08
	ldy $0740.w,X		; BC 40 07
	brk $02.b		; 00 02
	bpl   0.b		; 10 00
	sec		; 38
	bit $08.b		; 24 08
	bpl   0.b		; 10 00
	jmp $0820.w		; 4C 20 08
	bmi  64.b		; 30 40
	brk $9A.b		; 00 9A
	jmp ($18E5.w,X)		; 7C E5 18
	eor $4E06.w,X		; 5D 06 4E
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	brk $18.b		; 00 18
	cop $06.b		; 02 06
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	sec		; 38
	jsr ($FEFC.w,X)		; FC FC FE
	inc $6E76.w,X		; FE 76 6E
	rol A		; 2A
	rol $26.b,X		; 36 26
	rol $3C7C.w		; 2E 7C 3C
	pea $383C.w		; F4 3C 38
	brk $F4.b		; 00 F4
	clc		; 18
	inc $5C.b,X		; F6 5C
	ror $1C.b		; 66 1C
	jsl $18261C.l		; 22 1C 26 18
	bit $18.b,X		; 34 18
	trb $38.b		; 14 38
	sed		; F8
	clv		; B8
	sei		; 78
	cld		; D8
	bcs  96.b		; B0 60
	cpx #$80.b		; E0 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tya		; 98
	bmi -56.b		; 30 C8
	bpl  96.b		; 10 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $19.b		; 00 19
	ora ($17.b,X)		; 01 17
	php		; 08
	asl $3D0F.w,X		; 1E 0F 3D
	cop $4F.b		; 02 4F
	php		; 08
	ror $BC04.w,X		; 7E 04 BC
	bmi -16.b		; 30 F0
	brk $01.b		; 00 01
	asl $08.b		; 06 08
	brk $0F.b		; 00 0F
	brk $02.b		; 00 02
	brk $08.b		; 00 08
	bmi   4.b		; 30 04
	brk $30.b		; 00 30
	rti		; 40

	brk $00.b		; 00 00
	ldy $68.b,X		; B4 68
	stz $A8.b,X		; 74 A8
	jmp.w [$28B0]		; DC B0 28
	bvc 120.b		; 50 78
	rti		; 40

	bcc -96.b		; 90 A0
	bcs  32.b		; B0 20
	cpx #$50.b		; E0 50
	pla		; 68
	brk $A8.b		; 00 A8
	brk $B0.b		; 00 B0
	brk $50.b		; 00 50
	bra  64.b		; 80 40
	bra -96.b		; 80 A0
	rti		; 40

	jsr $4040.w		; 20 40 40
	brk $E0.b		; 00 E0
	sec		; 38
	beq 120.b		; F0 78
	cpy #$CC.b		; C0 CC
	php		; 08
	tsb $0600.w		; 0C 00 06
	tsb $06.b		; 04 06
	bra -125.b		; 80 83
	.db $82, $83, $10		; 82 83 10
	bpl   0.b		; 10 00
	brk $38.b		; 00 38
	php		; 08
	beq   0.b		; F0 00
	jsr ($F804.w,X)		; FC 04 F8
	brk $7E.b		; 00 7E
	cop $7C.b		; 02 7C
	brk $40.b		; 00 40
	dec $00.b		; C6 00
	dec $24.b		; C6 24
	ror $04.b		; 66 04
	ror $00.b		; 66 00
	jsl $003310.l		; 22 10 33 00
	and ($02.b,S),Y		; 33 02
	ora ($3C.b,S),Y		; 13 3C
	tsb $7C.b		; 04 7C
	mvp $00,$18		; 44 18 00
	sec		; 38
	jsr $001C.w		; 20 1C 00
	asl $1E02.w		; 0E 02 1E
	ora ($0C.b)		; 12 0C
	brk $06.b		; 00 06
	tas		; 1B
	tsb $201B.w		; 0C 1B 20
	ora ($4E.b)		; 12 4E
	sec		; 38
	ply		; 7A
	tsb $BA.b		; 04 BA
	jmp ($1CFA.w,X)		; 7C FA 1C
	ldy $08.b,X		; B4 08
	tsb $0608.w		; 0C 08 06
	cop $0C.b		; 02 0C
	brk $10.b		; 00 10
	bpl   4.b		; 10 04
	brk $7C.b		; 00 7C
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	asl $0F.b		; 06 0F
	phd		; 0B
	xce		; FB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	asl $01.b		; 06 01
	asl $01.b		; 06 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $E900.w,X		; 7E 00 E9
	rol $D6F5.w		; 2E F5 D6
	cmp $E6.b,X		; D5 E6
	tyx		; BB
	tax		; AA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $9610.w		; 2E 10 96
	pha		; 48
	dec $48.b		; C6 48
	txa		; 8A
	cpx $FF.b		; E4 FF
	and $FE5F7F.l,X		; 3F 7F 5F FE
	ora $FDFFFF.l,X		; 1F FF FF FD
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $1EF5DF.l,X		; FF DF F5 1E
	and $1E9F5E.l,X		; 3F 5E 9F 1E
	ora $D9DE3D.l,X		; 1F 3D DE D9
	inc $F04F.w		; EE 4F F0
	stx $D57F.w		; 8E 7F D5
	and $649C12.l,X		; 3F 12 9C 64
	sta $00EB82.l,X		; 9F 82 EB 00
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	ora ($C0.b,X)		; 01 C0
	sta ($B0.b,X)		; 81 B0
	cpy #$61.b		; C0 61
	adc ($60.b,X)		; 61 60
	rts		; 60

	sty $04.b		; 84 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $06.b		; 02 06
	brk $1F.b		; 00 1F
	ora ($30.b,S),Y		; 13 30
	ora ($78.b,X)		; 01 78
	ora [$40.b]		; 07 40
	rts		; 60

	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora $1F1F0F.l		; 0F 0F 1F 1F
	and $07073F.l,X		; 3F 3F 07 07
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	rts		; 60

	sei		; 78
	brk $08.b		; 00 08
	cpx #$08.b		; E0 08
	bra   4.b		; 80 04
	cpy #$04.b		; C0 04
	trb $06.b		; 14 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sbc $A2.b,S		; E3 A2
	sbc $22.b,S		; E3 22
	sbc $7F7C80.l,X		; FF 80 7C 7F
	tsb $07.b		; 04 07
	lda ($83.b)		; B2 83
	tsx		; BA
	sta $18.b,S		; 83 18
	sta ($A2.b,X)		; 81 A2
	trb $1C22.w		; 1C 22 1C
	brk $00.b		; 00 00
	.db $82, $02, $FA		; 82 02 FA
	cop $7C.b		; 02 7C
	brk $7C.b		; 00 7C
	brk $FF.b		; 00 FF
	sta ($F8.b,X)		; 81 F8
	ldx $46C4.w,Y		; BE C4 46
	rti		; 40

	cmp $82.b,S		; C3 82
	sta $81.b,S		; 83 81
	sta ($40.b,X)		; 81 40
	cpy #$40.b		; C0 40
	cpy #$20.b		; C0 20
	cpx #$84.b		; E0 84
	tsb $38.b		; 04 38
	brk $BE.b		; 00 BE
	.db $82, $7D, $01		; 82 7D 01
	ror $BF00.w,X		; 7E 00 BF
	bra -65.b		; 80 BF
	bra  95.b		; 80 5F
	rti		; 40

	brk $07.b		; 00 07
	tsb $1C.b		; 04 1C
	ora $10.b,S		; 03 10
	asl $13.b		; 06 13
	ora $2219.w		; 0D 19 22
	clc		; 18
	rol $1C.b		; 26 1C
	and ($1D.b,X)		; 21 1D
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $010D00.l		; 0F 00 0D 01
	asl $00.b		; 06 00
	ora [$00.b],Y		; 17 00
	ora ($00.b,S),Y		; 13 00
	inc A		; 1A
	brk $47.b		; 00 47
	sec		; 38
	lsr $3A.b		; 46 3A
	adc $4F01.w,X		; 7D 01 4F
	bmi -101.b		; 30 9B
	adc [$93.b]		; 67 93
	adc $0B75.w		; 6D 75 0B
	and $1A.b		; 25 1A
	sec		; 38
	brk $3A.b		; 00 3A
	ora ($01.b,X)		; 01 01
	cop $30.b		; 02 30
	brk $66.b		; 00 66
	ora ($6D.b,X)		; 01 6D
	brk $0B.b		; 00 0B
	brk $1A.b		; 00 1A
	brk $27.b		; 00 27
	inc A		; 1A
	phk		; 4B
	rol $4F.b,X		; 36 4F
	rol $4D.b,X		; 36 4D
	rol $35.b,X		; 36 35
	asl $0D1F.w		; 0E 1F 0D
	ora $0D1B0D.l,X		; 1F 0D 1B 0D
	inc A		; 1A
	brk $36.b		; 00 36
	brk $36.b		; 00 36
	brk $36.b		; 00 36
	brk $0E.b		; 00 0E
	brk $0D.b		; 00 0D
	brk $0D.b		; 00 0D
	brk $0D.b		; 00 0D
	brk $58.b		; 00 58
	bmi -72.b		; 30 B8
	pla		; 68
	tya		; 98
	sec		; 38
	cld		; D8
	clv		; B8
	bmi 120.b		; 30 78
	brk $98.b		; 00 98
	bra -112.b		; 80 90
	brk $10.b		; 00 10
	bcs   0.b		; B0 00
	plp		; 28
	brk $48.b		; 00 48
	bvc  88.b		; 50 58
	rti		; 40

	ldy #$80.b		; A0 80
	bvs  16.b		; 70 10
	rts		; 60

	brk $E0.b		; 00 E0
	brk $20.b		; 00 20
	bmi -121.b		; 30 87
	bcs  21.b		; B0 15
	txs		; 9A
	ora $F57F86.l		; 0F 86 7F F5
	asl A		; 0A
	adc $0F.b,X		; 75 0F
	ora ($00.b),Y		; 11 00
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	jsr $80E2.w		; 20 E2 80
	ror $00.b,X		; 76 00
	tsb $01.b		; 04 01
	trb $11.b		; 14 11
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $FE1E.w,X		; 1E 1E FE
	inc $FFFF.w,X		; FE FF FF
	xba		; EB
	sbc $8FFF77.l,X		; FF 77 FF 8F
	sta $000303.l		; 8F 03 03 00
	brk $1E.b		; 00 1E
	brk $FE.b		; 00 FE
	trb $F26D.w		; 1C 6D F2
	wai		; CB
	sbc $75.b,X		; F5 75
	txa		; 8A
	sta $000301.l		; 8F 01 03 00
	cpy $38.b		; C4 38
	ldy $B240.w,X		; BC 40 B2
	stz $FE.b,X		; 74 FE
	brk $45.b		; 00 45
	rol $3F4E.w,X		; 3E 4E 3F
	and #$16.b		; 29 16
	and $3812.w		; 2D 12 38
	brk $40.b		; 00 40
	brk $74.b		; 00 74
	php		; 08
	brk $00.b		; 00 00
	rol $3F00.w,X		; 3E 00 3F
	brk $16.b		; 00 16
	brk $12.b		; 00 12
	brk $80.b		; 00 80
	sty $8C00.w		; 8C 00 8C
	pha		; 48
	cpy $CE08.w		; CC 08 CE
	jsr $0466.w		; 20 66 04
	ror $14.b		; 66 14
	rol $00.b,X		; 36 00
	and ($78.b,S),Y		; 33 78
	php		; 08
	sed		; F8
	dey		; 88
	bmi   0.b		; 30 00
	stz $44.b,X		; 74 44
	trb $3804.w		; 1C 04 38
	jsr $0008.w		; 20 08 00
	asl $9D12.w,X		; 1E 12 9D
	sta ($FB.b,X)		; 81 FB
	ora $91.b,S		; 03 91
	ora $35FD06.l,X		; 1F 06 FD 35
	lda $5EBF2B.l		; AF 2B BF 5E
	sbc $7FFF9F.l,X		; FF 9F FF 7F
	brk $FD.b		; 00 FD
	brk $E9.b		; 00 E9
	php		; 08
	tsb $03.b		; 04 03
	bit $1B.b		; 24 1B
	jsl $3D421D.l		; 22 1D 42 3D
	ora #$3E.b		; 09 3E
	stp		; DB
	sbc ($7B.b)		; F2 7B
	sbc ($D3.b)		; F2 D3
	inc $FAF5.w		; EE F5 FA
	sbc $CBF2.w		; ED F2 CB
	inx		; E8
	cmp $E3.b		; C5 E3
	ora [$FA.b]		; 07 FA
	eor ($A4.b)		; 52 A4
	adc ($84.b)		; 72 84
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	tsb $F4.b		; 04 F4
	cpx $D4EC.w		; EC EC D4
	pei ($1B.b)		; D4 1B
	cld		; D8
	cop $00.b		; 02 00
	and $F5.b,X		; 35 F5
	lda $5577DF.l,X		; BF DF 77 55
	adc [$55.b],Y		; 77 55
	and ($22.b,S),Y		; 33 22
	and ($22.b,S),Y		; 33 22
	and $3929.w,Y		; 39 29 39
	and #$1FE1.w		; 29 E1 1F
	cmp $885500.l,X		; DF 00 55 88
	eor $88.b,X		; 55 88
	jsl $CC22CC.l		; 22 CC 22 CC
	and #$29C6.w		; 29 C6 29
	dec $4C.b		; C6 4C
	bcs -12.b		; B0 F4
	pha		; 48
	jsr ($7CB0.w,X)		; FC B0 7C
	cli		; 58
	ldy $B8A8.w,X		; BC A8 B8
	ldx $DC.b,Y		; B6 DC
	lsr $CC.b,X		; 56 CC
	eor [$B0.b]		; 47 B0
	brk $48.b		; 00 48
	brk $B0.b		; 00 B0
	brk $58.b		; 00 58
	bra -88.b		; 80 A8
	rti		; 40

	ldy $44.b,X		; B4 44
	bvc  32.b		; 50 20
	.db $42, $32		; 42 32
	php		; 08
	sed		; F8
	bmi -113.b		; 30 8F
	bit $8C.b,X		; 34 8C
	clv		; B8
	cmp $59.b,S		; C3 59
	sbc $80.b,S		; E3 80
	plb		; AB
	lda ($DD.b,X)		; A1 DD
	bne  47.b		; D0 2F
	ora [$07.b]		; 07 07
	adc ($01.b),Y		; 71 01
	tda		; 7B
	phd		; 0B
	ply		; 7A
	lsr $BA.b		; 46 BA
	bit $DD.b		; 24 DD
	asl A		; 0A
	dex		; CA
	php		; 08
	ldy #$1800.w		; A0 00 18
	cop $38.b		; 02 38
	cop $70.b		; 02 70
	cop $0C.b		; 02 0C
	dec $9E04.w		; CE 04 9E
	php		; 08
	ldy $F840.w,X		; BC 40 F8
	brk $70.b		; 00 70
	jsr ($FCFC.w,X)		; FC FC FC
	jsr ($FCFC.w,X)		; FC FC FC
	beq -16.b		; F0 F0
	bvs 112.b		; 70 70
	rti		; 40

	rti		; 40

	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	jmp $C11DC1.l		; 5C C1 1D C1
	and $600E61.l		; 2F 61 0E 60
	asl $30.b,X		; 16 30
	ora [$30.b]		; 07 30
	phd		; 0B
	clc		; 18
	ora $18.b,S		; 03 18
	and $407E01.l,X		; 3F 01 7E 40
	asl $3F00.w,X		; 1E 00 3F
	jsr $000F.w		; 20 0F 00
	ora $000710.l,X		; 1F 10 07 00
	ora $E02008.l		; 0F 08 20 E0
	bpl -16.b		; 10 F0
	php		; 08
	clv		; B8
	tsb $DC.b		; 04 DC
	.db $82, $CE, $81		; 82 CE 81
	cmp [$00.b]		; C7 00
	eor $80.b,S		; 43 80
	adc ($5F.b,X)		; 61 5F
	rti		; 40

	and $101720.l		; 2F 20 17 10
	phb		; 8B
	dey		; 88
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	sta ($01.b,X)		; 81 01
	cpy #$3D40.w		; C0 40 3D
	asl $265D.w,X		; 1E 5D 26
	adc $02.b		; 65 02
	adc $20.b,S		; 63 20
	adc $186626.l,X		; 7F 26 66 18
	ror $6624.w,X		; 7E 24 66
	brk $1E.b		; 00 1E
	brk $26.b		; 00 26
	brk $02.b		; 00 02
	clc		; 18
	jsr $261C.w		; 20 1C 26
	brk $18.b		; 00 18
	brk $24.b		; 00 24
	brk $00.b		; 00 00
	clc		; 18
	rol $75F0.w		; 2E F0 75
	plx		; FA
	phk		; 4B
	ldx $6D.b,Y		; B6 6D
	stx $DE.b,Y		; 96 DE
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $FA.b		; 00 FA
	brk $B6.b		; 00 B6
	brk $96.b		; 00 96
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	cpy #$00E0.w		; C0 E0 00
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
	brk $3C.b		; 00 3C
	tsb $0F.b		; 04 0F
	brk $01.b		; 00 01
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($04.b,X)		; 01 04
	ora $00.b,S		; 03 00
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $3D.b		; 00 3D
	ora ($3D.b)		; 12 3D
	asl $3C5A.w,X		; 1E 5A 3C
	ply		; 7A
	tsb $4C.b		; 04 4C
	php		; 08
	jsr ($F808.w,X)		; FC 08 F8
	bvs -16.b		; 70 F0
	brk $12.b		; 00 12
	brk $1E.b		; 00 1E
	brk $3C.b		; 00 3C
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	bmi   8.b		; 30 08
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C080.w		; C0 80 C0
	brk $60.b		; 00 60
	rti		; 40

	bvs  32.b		; 70 20
	bmi   0.b		; 30 00
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$A040.w		; C0 40 A0
	jsr $00C0.w		; 20 C0 00
	beq  16.b		; F0 10
	bpl  24.b		; 10 18
	brk $0C.b		; 00 0C
	php		; 08
	tsb $8680.w		; 0C 80 86
	mvp $20,$C6		; 44 C6 20
	sbc $12.b,S		; E3 12
	adc ($18.b,S),Y		; 73 18
	and $00E0.w,Y		; 39 E0 00
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	jmp ($B804.w,X)		; 7C 04 B8
	bra  94.b		; 80 5E
	.db $42, $2C		; 42 2C
	jsr $0107.w		; 20 07 01
	trb $46.b		; 14 46
	bpl  70.b		; 10 46
	bpl  70.b		; 10 46
	bpl  68.b		; 10 44
	clc		; 18
	jmp $4C88.w		; 4C 88 4C
	cpy $08.b		; C4 08
	ldy $3840.w,X		; BC 40 38
	brk $3C.b		; 00 3C
	tsb $3C.b		; 04 3C
	tsb $38.b		; 04 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	php		; 08
	rti		; 40

	brk $00.b		; 00 00
	tya		; 98
	sty $18.b,X		; 94 18
	jsr ($9A00.w,X)		; FC 00 9A
	jmp ($304F.w,X)		; 7C 4F 30
	tsa		; 3B
	asl A		; 0A
	and [$18.b]		; 27 18
	sec		; 38
	ora [$70.b]		; 07 70
	bpl  96.b		; 10 60
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	brk $30.b		; 00 30
	brk $0A.b		; 00 0A
	tsb $18.b		; 04 18
	brk $07.b		; 00 07
	brk $3A.b		; 00 3A
	adc $38.b,S		; 63 38
	sbc $18.b,S		; E3 18
.INDEX 16
	rep #$5C		; C2 5C
	dec $74.b		; C6 74
	dec $30.b		; C6 30
	stx $30.b		; 86 30
	stx $38.b		; 86 38
	sty $001C.w		; 8C 1C 00
	lsr $7C42.w,X		; 5E 42 7C
	rti		; 40

	sec		; 38
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	tsb $7C.b		; 04 7C
	tsb $70.b		; 04 70
	brk $60.b		; 00 60
	inc $60.b		; E6 60
	inc $44.b		; E6 44
	dec $44.b		; C6 44
	cmp [$40.b]		; C7 40
	cmp $02.b,S		; C3 02
	cmp $02.b,S		; C3 02
	eor $20.b,S		; 43 20
	adc ($1C.b,X)		; 61 1C
	tsb $1C.b		; 04 1C
	tsb $38.b		; 04 38
	brk $3A.b		; 00 3A
	cop $3E.b		; 02 3E
	cop $7C.b		; 02 7C
	rti		; 40

	bit $1F00.w,X		; 3C 00 1F
	ora ($0E.b,X)		; 01 0E
	eor $0C.b,S		; 43 0C
	eor ($00.b,X)		; 41 00
	eor ($02.b,X)		; 41 02
	eor $18.b,S		; 43 18
	eor $18.b,S		; 43 18
.INDEX 16
	rep #$18		; C2 18
.ACCU 16
.INDEX 16
	rep #$74		; C2 74
	dec $3C.b		; C6 3C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	cop $7C.b		; 02 7C
	rti		; 40

	jmp ($3840.w,X)		; 7C 40 38
	brk $40.b		; 00 40
	cmp $00.b,S		; C3 00
	cmp $22.b,S		; C3 22
	adc $02.b,S		; 63 02
	adc $10.b,S		; 63 10
	and ($00.b),Y		; 31 00
	and ($09.b),Y		; 31 09
	ora $1901.w,Y		; 19 01 19
	rol $7E02.w,X		; 3E 02 7E
	.db $42, $1C		; 42 1C
	brk $3C.b		; 00 3C
	jsr $010F.w		; 20 0F 01
	ora $000611.l,X		; 1F 11 06 00
	asl $0008.w		; 0E 08 00
	brk $C0.b		; 00 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpx #$70E0.w		; E0 E0 70
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	beq  96.b		; F0 60
	rts		; 60

	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	bra -96.b		; 80 A0
	rti		; 40

	bvs -96.b		; 70 A0
	bcs  64.b		; B0 40
	beq  32.b		; F0 20
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$04.b]		; 07 04
	tsb $180E.w		; 0C 0E 18
	asl $10.b		; 06 10
	inc A		; 1A
	and ($04.b),Y		; 31 04
	and ($00.b,X)		; 21 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	ora [$0F.b]		; 07 0F
	ora $1E0E0E.l		; 0F 0E 0E 1E
	asl $E000.w,X		; 1E 00 E0
	bpl -104.b		; 10 98
	pla		; 68
	asl $1332.w		; 0E 32 13
	.db $42, $A7		; 42 A7
	cop $AF.b		; 02 AF
	php		; 08
	adc $00F6AC.l,X		; 7F AC F6 00
	brk $60.b		; 00 60
	rts		; 60

	beq -16.b		; F0 F0
	cpx $F8EC.w		; EC EC F8
	sed		; F8
	bvc  80.b		; 50 50
	ldx #$30A2.w		; A2 A2 30
	php		; 08
	ora ($01.b,X)		; 01 01
	ora ($81.b,X)		; 01 81
	ora ($C1.b,X)		; 01 C1
	sta ($E1.b,X)		; 81 E1
	ora $A1.b,S		; 03 A1
	ora [$32.b]		; 07 32
	ora $3B.b		; 05 3B
	ora ($BD.b)		; 12 BD
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	sta ($80.b,X)		; 81 80
	ora ($00.b,X)		; 01 00
	eor ($40.b,X)		; 41 40
	rep #$C0		; C2 C0
	cmp ($D0.b,S),Y		; D3 D0
	eor ($40.b,X)		; 41 40
	jsr ($FEAC.w,X)		; FC AC FE
	phx		; DA
	inc $F4EE.w,X		; FE EE F4
	pea $F0F0.w		; F4 F0 F0
	cpx #$C060.w		; E0 60 C0
	brk $CF.b		; 00 CF
	sta $DA58AC.l		; 8F AC 58 DA
	ldy $B4CE.w		; AC CE B4
	pea $50E0.w		; F4 E0 50
	cpx #$4020.w		; E0 20 40
	brk $00.b		; 00 00
	sta $007E00.l		; 8F 00 7E 00
	sbc ($0D.b)		; F2 0D
	tsa		; 3B
	sbc $01FF.w,X		; FD FF 01
	ply		; 7A
	jsr ($7A9E.w,X)		; FC 9E 7A
	inc $9A.b		; E6 9A
	and $0025.w,X		; 3D 25 00
	brk $0C.b		; 00 0C
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	brk $79.b		; 00 79
	brk $99.b		; 00 99
	brk $22.b		; 00 22
	cpy #$7E00.w		; C0 00 7E
	bit $E7.b		; 24 E7
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	jsr $0120.w		; 20 20 01
	and ($40.b,X)		; 21 40
	adc ($80.b,X)		; 61 80
	sbc ($00.b,X)		; E1 00
	brk $5A.b		; 00 5A
	.db $42, $FF		; 42 FF
	ora ($FE.b,X)		; 01 FE
	brk $DF.b		; 00 DF
	brk $FE.b		; 00 FE
	jsr $019F.w		; 20 9F 01
	rol $0F20.w,X		; 3E 20 0F
	asl $19.b		; 06 19
	ora #$003E.w		; 09 3E 00
	and $3F6F1E.l,X		; 3F 1E 6F 3F
	tda		; 7B
	ora $5B3C54.l,X		; 1F 54 3C 5B
	plp		; 28
	asl $00.b		; 06 00
	ora #$0006.w		; 09 06 00
	ora ($16.b,X)		; 01 16
	php		; 08
	rol $1317.w		; 2E 17 13
	tsb $0837.w		; 0C 37 08
	and $A09E00.l		; 2F 00 9E A0
	cmp $6B16.w,Y		; D9 16 6B
	lsr $FF.b		; 46 FF
	rol A		; 2A
	lda $EA85D2.l		; AF D2 85 EA
	sta $E4.b,S		; 83 E4
	sta [$E0.b]		; 87 E0
	rts		; 60

	brk $26.b		; 00 26
	brk $56.b		; 00 56
	bra  34.b		; 80 22
	brk $82.b		; 00 82
	rti		; 40

	sta ($50.b)		; 92 50
	clc		; 18
	clc		; 18
	clc		; 18
	inc A		; 1A
	ror $19.b		; 66 19
	adc $42BD10.l		; 6F 10 BD 42
	sta $6A.b,X		; 95 6A
	adc #$4916.w		; 69 16 49
	rol $6D.b,X		; 36 6D
	rol $AD.b,X		; 36 AD
	ror $18.b,X		; 76 18
	ora $10.b,S		; 03 10
	ora ($42.b,X)		; 01 42
	brk $6A.b		; 00 6A
	brk $16.b		; 00 16
	brk $36.b		; 00 36
	brk $36.b		; 00 36
	brk $76.b		; 00 76
	brk $03.b		; 00 03
	jsr ($FE7D.w,X)		; FC 7D FE
	sbc $E2FF1E.l,X		; FF 1E FF E2
	lda $AABBAC.l,X		; BF AC BB AA
	sta $9C95.w,X		; 9D 95 9C
	sty $00.b,X		; 94 00
	brk $3C.b		; 00 3C
	sbc ($1C.b)		; F2 1C
	asl $02E0.w,X		; 1E E0 02
	ldy $AA40.w		; AC 40 AA
	mvp $62,$95		; 44 95 62
	sty $63.b,X		; 94 63
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$6000.w		; C0 00 60
	cpy #$00F0.w		; C0 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $F6.b		; 00 F6
	tsb $AE.b		; 04 AE
	bvs -70.b		; 70 BA
	jmp ($7EBD.w,X)		; 7C BD 7E
	ldx $4C.b,Y		; B6 4C
	adc $004702.l		; 6F 02 47 00
	brk $00.b		; 00 00
	tsb $08.b		; 04 08
	bvs   0.b		; 70 00
	jmp ($7E00.w,X)		; 7C 00 7E
	brk $4C.b		; 00 4C
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4F.b		; 00 4F
	cpy #$F013.w		; C0 13 F0
	ora $FC.b		; 05 FC
	jsl $00FC3E.l		; 22 3E FC 00
	sbc $07E600.l,X		; FF 00 E6 07
	brk $FF.b		; 00 FF
	lda $202F80.l,X		; BF 80 2F 20
	wai		; CB
	iny		; C8
	cmp $14.b,X		; D5 14
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $0001.w,Y		; F9 01 00
	brk $50.b		; 00 50
	stz $8C.b,X		; 74 8C
	bmi -22.b		; 30 EA
	bit $D6.b,X		; 34 D6
	clc		; 18
	ora ($1C.b)		; 12 1C
	bit $38.b		; 24 38
	tsb $F8.b		; 04 F8
	jsr ($8860.w,X)		; FC 60 88
	brk $E0.b		; 00 E0
	jsr $00C4.w		; 20 C4 00
	cpx #$E400.w		; E0 00 E4
	brk $D0.b		; 00 D0
	bpl   8.b		; 10 08
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $3D.b		; 00 3D
	ora $0B.b,S		; 03 0B
	ora [$0B.b]		; 07 0B
	ora [$16.b]		; 07 16
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $7F.b		; 00 7F
	ora $FD.b,S		; 03 FD
	pld		; 2B
	cmp ($81.b,S),Y		; D3 81
	rol A		; 2A
	sta ($AF.b),Y		; 91 AF
	asl $FF.b,X		; 16 FF
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	pld		; 2B
	brk $81.b		; 00 81
	bit $4491.w		; 2C 91 44
	asl $40.b,X		; 16 40
	rti		; 40

	brk $09.b		; 00 09
	pld		; 2B
	brk $52.b		; 00 52
	eor ($F4.b,S),Y		; 53 F4
	ora #$046C.w		; 09 6C 04
	and $043F14.l		; 2F 14 3F 04
	ora $140403.l,X		; 1F 03 04 14
	trb $2D.b		; 14 2D
	bit $080B.w		; 2C 0B 08
	ora ($10.b,S),Y		; 13 10
	clc		; 18
	clc		; 18
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	bit $F0C6.w,X		; 3C C6 F0
	tsb $F0.b		; 04 F0
	asl $F8.b		; 06 F8
	asl $18.b		; 06 18
	.db $82, $80, $FE		; 82 80 FE
	bcc -104.b		; 90 98
	pla		; 68
	beq  88.b		; F0 58
	jsr $00F8.w		; 20 F8 00
	sed		; F8
	brk $FC.b		; 00 FC
	tsb $FC.b		; 04 FC
	bra  96.b		; 80 60
	rts		; 60

	rts		; 60

	brk $F0.b		; 00 F0
	brk $25.b		; 00 25
	jmp ($2909.w)		; 6C 09 29
	cop $A3.b		; 02 A3
	lda $C7.b,X		; B5 C7
	and $276FD7.l,X		; 3F D7 6F 27
	cmp $07DF97.l,X		; DF 97 DF 07
	sta ($80.b)		; 92 80
	dec $C0.b,X		; D6 C0
	jmp $008940.l		; 5C 40 89 00
	asl $01.b,X		; 16 01
	lda [$17.b]		; A7 17
	bpl  39.b		; 10 27
	ora [$20.b]		; 07 20
	cmp $BE3E1F.l,X		; DF 1F 3E BE
	adc $FFFF7D.l,X		; 7F 7D FF FF
	sbc $FCFCDF.l,X		; FF DF FC FC
	cld		; D8
	cld		; D8
	bra -128.b		; 80 80
	ora $18260E.l,X		; 1F 0E 26 18
	eor $AF3E.w		; 4D 3E AF
	adc ($CF.b)		; 72 CF
	sed		; F8
	ldy $58C8.w,X		; BC C8 58
	bra -128.b		; 80 80
	brk $12.b		; 00 12
	ora $F85F70.l		; 0F 70 5F F8
	rol $C6C4.w,X		; 3E C4 C6
	ply		; 7A
	ora $FD.b,S		; 03 FD
	ora ($FE.b,X)		; 01 FE
	brk $3E.b		; 00 3E
	brk $0D.b		; 00 0D
	sbc $8646.w		; ED 46 86
	brk $00.b		; 00 00
	sec		; 38
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $22.b		; 00 22
	sbc $02.b,S		; E3 02
	cmp $00.b,S		; C3 00
	eor $00.b,S		; 43 00
	.db $42, $04		; 42 04
	lsr $04.b		; 46 04
	dec $20.b		; C6 20
	inc $A0.b		; E6 A0
	cpx $9C.b		; E4 9C
	bra  60.b		; 80 3C
	brk $3E.b		; 00 3E
	cop $3C.b		; 02 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $9C.b		; 00 9C
	sty $18.b		; 84 18
	brk $55.b		; 00 55
	bit $0C71.w		; 2C 71 0C
	asl A		; 0A
	asl $0E08.w		; 0E 08 0E
	php		; 08
	asl $073D.w		; 0E 3D 07
	bit $1F.b,X		; 34 1F
	rol $1B.b,X		; 36 1B
	and $00.b,S		; 23 00
	ora [$04.b]		; 07 04
	ora #$0B00.w		; 09 00 0B
	cop $09.b		; 02 09
	tsb $04.b		; 04 04
	brk $1C.b		; 00 1C
	cop $1A.b		; 02 1A
	brk $27.b		; 00 27
	adc ($43.b)		; 72 43
	jmp ($79D0.w,X)		; 7C D0 79
	sta ($33.b,X)		; 81 33
	sta $3F.b,S		; 83 3F
	jmp ($1F7F.w,X)		; 7C 7F 1F
	brk $80.b		; 00 80
	bra -118.b		; 80 8A
	plp		; 28
	bra  16.b		; 80 10
	stx $16.b		; 86 16
	cpy $E20D.w		; CC 0D E2
	and $80.b,S		; 23 80
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $B5.b		; 00 B5
	ror $6EB5.w		; 6E B5 6E
	eor $3D2E.w,X		; 5D 2E 3D
	asl $0E1D.w		; 0E 1D 0E
	ora $000100.l,X		; 1F 00 01 00
	brk $00.b		; 00 00
	ror $6E00.w		; 6E 00 6E
	brk $2E.b		; 00 2E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8E.b		; 00 8E
	txa		; 8A
	stx $878A.w		; 8E 8A 87
	sta $83.b		; 85 83
	.db $82, $83, $80		; 82 83 80
	sta $1EEE83.l,X		; 9F 83 EE 1E
	asl $3E.b		; 06 3E
	txa		; 8A
	adc ($8A.b),Y		; 71 8A
	adc ($85.b),Y		; 71 85
	sei		; 78
	.db $82, $7C, $80		; 82 7C 80
	jmp ($6080.w,X)		; 7C 80 60
	ora ($10.b),Y		; 11 10
	ora #$0108.w		; 09 08 01
	ora $000300.l		; 0F 00 03 00
	ora ($00.b,X)		; 01 00
	ora [$02.b]		; 07 02
	rol $7093.w,X		; 3E 93 70
	sta $00FF00.l,X		; 9F 00 FF 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $04.b		; 05 04
	and $007F20.l		; 2F 20 7F 00
	adc $7FF000.l,X		; 7F 00 F0 7F
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $000C.w		; 0C 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bvs  -8.b		; 70 F8
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	inx		; E8
	bmi   0.b		; 30 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B6.b		; 00 B6
	sei		; 78
	jmp ($5430.w)		; 6C 30 54
	jsr $103C.w		; 20 3C 10
	dec A		; 3A
	php		; 08
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	sei		; 78
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	php		; 08
	bpl   0.b		; 10 00
	php		; 08
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $1000.w		; 0C 00 10
	asl $38.b,X		; 16 38
	ora [$30.b]		; 07 30
	pld		; 2B
	rts		; 60

	asl $40.b		; 06 40
	tsb $4041.w		; 0C 41 40
	cmp ($03.b)		; D2 03
	ora $0F.b,S		; 03 0F
	ora $0F0707.l		; 0F 07 07 0F
	ora $3F1F1F.l		; 0F 1F 1F 3F
	and $3D3F3F.l,X		; 3F 3F 3F 3D
	and $0C08.w,X		; 3D 08 0C
	tsb $06.b		; 04 06
	.db $62, $03, $31		; 62 03 31
	ora ($10.b,X)		; 01 10
	brk $10.b		; 00 10
	ora #$2901.w		; 09 01 29
	bpl  92.b		; 10 5C
	beq -16.b		; F0 F0
	sed		; F8
	sed		; F8
	jsr ($FEFC.w,X)		; FC FC FE
	inc $FFFF.w,X		; FE FF FF
	sbc $F6F6FF.l,X		; FF FF F6 F6
	lda $A3.b,S		; A3 A3
	and ($01.b,X)		; 21 01
	adc $3C5F00.l,X		; 7F 00 5F 3C
	adc $7F477F.l,X		; 7F 7F 47 7F
	adc $7F7F7F.l,X		; 7F 7F 7F 7F
	cop $23.b		; 02 23
	ora ($1E.b,X)		; 01 1E
	brk $00.b		; 00 00
	tsb $7D3D.w		; 0C 3D 7D
	cop $47.b		; 02 47
	sec		; 38
	eor $7F3E.w		; 4D 3E 7F
	brk $1C.b		; 00 1C
	brk $DD.b		; 00 DD
	eor ($CD.b)		; 52 CD
	tay		; A8
	ldx $2F51.w		; AE 51 2F
	dex		; CA
	dec $ED.b,X		; D6 ED
.ACCU 8
.INDEX 8
	sep #$F7		; E2 F7
	adc ($FE.b)		; 72 FE
	sei		; 78
	jsr ($0121.w,X)		; FC 21 01
	sta ($03.b,S),Y		; 93 03
	and ($25.b,X)		; 21 25
	and ($B0.b)		; 32 B0
	clc		; 18
	cld		; D8
	pha		; 48
	inx		; E8
	and ($F1.b,X)		; 21 F1
	and ($FB.b,S),Y		; 33 FB
	ora $3C43F0.l		; 0F F0 43 3C
	lsr $39.b		; 46 39
	rol $1711.w		; 2E 11 17
	php		; 08
	and $1A.b		; 25 1A
	and $1A.b		; 25 1A
	bit $0003.w,X		; 3C 03 00
	brk $3C.b		; 00 3C
	brk $39.b		; 00 39
	brk $11.b		; 00 11
	brk $08.b		; 00 08
	brk $1A.b		; 00 1A
	brk $1A.b		; 00 1A
	brk $03.b		; 00 03
	brk $3F.b		; 00 3F
	sbc $FF00FF.l,X		; FF FF 00 FF
	adc $CF44CC.l		; 6F CC 44 CF
	phb		; 8B
	sbc [$A4.b]		; E7 A4
	lda ($D1.b),Y		; B1 D1
	cld		; D8
	pla		; 68
	asl $00FF.w		; 0E FF 00
	brk $6F.b		; 00 6F
	brk $44.b		; 00 44
	and ($8B.b,S),Y		; 33 8B
	bmi -92.b		; 30 A4
	clc		; 18
	cmp ($0E.b),Y		; D1 0E
	pla		; 68
	ora [$FF.b]		; 07 FF
	brk $BF.b		; 00 BF
	ror $0EF1.w,X		; 7E F1 0E
	ora $0612.w,X		; 1D 12 06
	ora $86.b		; 05 86
	sta $F6.b		; 85 F6
	ora ($7C.b,S),Y		; 13 7C
	mvp $00,$00		; 44 00 00
	ror $0E00.w,X		; 7E 00 0E
	brk $12.b		; 00 12
	cpx #$05.b		; E0 05
	sbc $7884.w,Y		; F9 84 78
	ora ($09.b),Y		; 11 09
	eor $80.b,S		; 43 80
	brk $FF.b		; 00 FF
	jmp ($80FF.w,X)		; 7C FF 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	cpy #$60.b		; C0 60
	cpx #$18.b		; E0 18
	sed		; F8
	.db $82, $FE, $00		; 82 FE 00
	brk $83.b		; 00 83
	sta $7F.b,S		; 83 7F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $9F.b		; 00 9F
	bra  39.b		; 80 27
	jsr $4445.w		; 20 45 44
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	rti		; 40

	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra  64.b		; 80 40
	brk $90.b		; 00 90
	eor $404080.l,X		; 5F 80 40 40
	jsr $3848.w		; 20 48 38
	brk $DF.b		; 00 DF
	brk $88.b		; 00 88
	brk $F0.b		; 00 F0
	rti		; 40

	cpy #$A8.b		; C0 A8
	dey		; 88
	lda $C0DF80.l,X		; BF 80 DF C0
	cmp [$D0.b],Y		; D7 D0
	jsr $7020.w		; 20 20 70
	bvs   0.b		; 70 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	cpy #$70.b		; C0 70
	beq  -8.b		; F0 F8
	sed		; F8
	sed		; F8
	inx		; E8
	sed		; F8
	sed		; F8
	sed		; F8
	beq -41.b		; F0 D7
	sed		; F8
	sbc $0040FB.l,X		; FF FB 40 00
	bvs   0.b		; 70 00
	cli		; 58
	ldy #$E8.b		; A0 E8
	bvc  -8.b		; 50 F8
	beq -32.b		; F0 E0
	beq  16.b		; F0 10
	inx		; E8
	sbc ($08.b,S),Y		; F3 08
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	asl $07.b		; 06 07
	ora [$07.b]		; 07 07
	ora $0B1E07.l,X		; 1F 07 1E 0B
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $02.b		; 05 02
	ora [$02.b]		; 07 02
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	cop $07.b		; 02 07
	php		; 08
	ora $00.b,S		; 03 00
	brk $C0.b		; 00 C0
	cpy #$E0.b		; C0 E0
	cpx #$E0.b		; E0 E0
	rts		; 60

	beq -16.b		; F0 F0
	bvs -16.b		; 70 F0
	bvs -16.b		; 70 F0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$80.b		; E0 80
	rts		; 60

	cpy #$B0.b		; C0 B0
	rts		; 60

	bvs -96.b		; 70 A0
	bvs -128.b		; 70 80
	bra   0.b		; 80 00
	trb $1F0B.w		; 1C 0B 1F
	and $642E.w		; 2D 2E 64
	asl $10C8.w		; 0E C8 10
	clc		; 18
	jsr $4038.w		; 20 38 40
	bvs   0.b		; 70 00
	cpx #$08.b		; E0 08
	ora $0D.b,S		; 03 0D
	brk $14.b		; 00 14
	brk $70.b		; 00 70
	rti		; 40

	cpx #$00.b		; E0 00
	bne  16.b		; D0 10
	ldy #$20.b		; A0 20
	brk $00.b		; 00 00
	php		; 08
	tsb $8684.w		; 0C 84 86
	rti		; 40

	cmp $01.b,S		; C3 01
	cmp ($10.b,X)		; C1 10
	bvs   8.b		; 70 08
	sec		; 38
	cop $1E.b		; 02 1E
	brk $07.b		; 00 07
	beq   0.b		; F0 00
	sei		; 78
	brk $3E.b		; 00 3E
	cop $7E.b		; 02 7E
	rti		; 40

	and $101720.l		; 2F 20 17 10
	ora $04.b		; 05 04
	ora ($01.b,X)		; 01 01
	bmi 100.b		; 30 64
	sec		; 38
	jmp ($0CEA.w)		; 6C EA 0C
	ldx $BA60.w,Y		; BE 60 BA
	jmp ($3CFA.w,X)		; 7C FA 3C
	inc $E640.w,X		; FE 40 E6
	bit $18.b		; 24 18
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $60.b		; 00 60
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $40.b		; 00 40
	brk $24.b		; 00 24
	clc		; 18
	brk $6D.b		; 00 6D
	and #$73.b		; 29 73
	asl $0530.w		; 0E 30 05
	tsb $0E02.w		; 0C 02 0E
	ora #$07.b		; 09 07
	inc A		; 1A
	ora [$3F.b]		; 07 3F
	clc		; 18
	ora ($12.b)		; 12 12
	tsb $0E00.w		; 0C 00 0E
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	brk $18.b		; 00 18
	brk $09.b		; 00 09
	lda $EFAA.w,X		; BD AA EF
	pla		; 68
	sta [$E0.b]		; 87 E0
	php		; 08
	bra 112.b		; 80 70
	ora $ED1EF5.l		; 0F F5 1E ED
	inc A		; 1A
	sbc ($42.b,X)		; E1 42
	.db $42, $10		; 42 10
	brk $A0.b		; 00 A0
	bpl -16.b		; 10 F0
	brk $E0.b		; 00 E0
	rts		; 60

	sbc $E0.b		; E5 E0
	cpy $00C1.w		; CC C1 00
	tsb $0A.b		; 04 0A
	and $18.b,S		; 23 18
	and ($1C.b),Y		; 31 1C
	and ($06.b),Y		; 31 06
	ora ($00.b,S),Y		; 13 00
	ora ($0F.b,S),Y		; 13 0F
	clc		; 18
	ora ($08.b,X)		; 01 08
	ora $0D.b		; 05 0D
	trb $0E00.w		; 1C 00 0E
	brk $0E.b		; 00 0E
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	cop $07.b		; 02 07
	brk $07.b		; 00 07
	brk $02.b		; 00 02
	brk $70.b		; 00 70
	sbc [$14.b],Y		; F7 14
	sbc $9FEFFF.l,X		; FF FF EF 9F
	sbc $37C33F.l,X		; FF 3F C3 37
	ora ($F7.b,S),Y		; 13 F7
	ora ($AF.b,S),Y		; 13 AF
	wai		; CB
	jsr $10F8.w		; 20 F8 10
	inc $1FE7.w		; EE E7 1F
	stx $037F.w		; 8E 7F 03
	brk $D3.b		; 00 D3
	phd		; 0B
	bne  11.b		; D0 0B
	phd		; 0B
	bpl   2.b		; 10 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
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
	brk $F8.b		; 00 F8
	bvs  -4.b		; 70 FC
	stz $7E.b,X		; 74 7E
	tsx		; BA
	adc $33FCB8.l,X		; 7F B8 FC 33
	sec		; 38
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	ora [$74.b]		; 07 74
	ora $BA.b,S		; 03 BA
	ora ($B8.b,X)		; 01 B8
	brk $33.b		; 00 33
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $33.b		; 00 33
	bpl 119.b		; 10 77
	bmi -81.b		; 30 AF
	rts		; 60

	eor $C0C7C0.l,X		; 5F C0 C7 C0
	clc		; 18
	sed		; F8
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	ora $800FC0.l		; 0F C0 0F 80
	eor $80BF40.l,X		; 5F 40 BF 80
	and $606700.l,X		; 3F 00 67 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne  31.b		; D0 1F
	cpx $07.b		; E4 07
	sed		; F8
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $0F.b		; 00 0F
	brk $0C.b		; 00 0C
	jsr ($3F00.w,X)		; FC 00 3F
	sbc #$09.b		; E9 09
	plx		; FA
	cop $FF.b		; 02 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $33.b		; 00 33
	bmi   1.b		; 30 01
	ora ($FE.b,X)		; 01 FE
	brk $FE.b		; 00 FE
	mvn $64,$FE		; 54 FE 64
	stz $20.b		; 64 20
	jmp ($5C00.w,X)		; 7C 00 5C
	sec		; 38
	jmp $387C38.l		; 5C 38 7C 38
	brk $00.b		; 00 00
	mvn $64,$00		; 54 00 64
	brk $20.b		; 00 20
	clc		; 18
	brk $00.b		; 00 00
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	brk $64.b		; 00 64
	jsr $003C.w		; 20 3C 00
	bit $10.b,X		; 34 10
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	clc		; 18
	brk $00.b		; 00 00
	bpl   8.b		; 10 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bvs   3.b		; 70 03
	clc		; 18
	asl $4F0B.w		; 0E 0B 4F
	cmp [$17.b]		; C7 17
	inc $0C32.w		; EE 32 0C
	ora $000703.l,X		; 1F 03 07 00
	bra   0.b		; 80 00
	beq  16.b		; F0 10
	sbc ($00.b,S),Y		; F3 00
	lda [$80.b],Y		; B7 80
	rol $0C20.w		; 2E 20 0C
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	rti		; 40

	cpy $F3B0.w		; CC B0 F3
	tsb $6E.b		; 04 6E
	xba		; EB
	sbc $1F6707.l,X		; FF 07 67 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bra -80.b		; 80 B0
	brk $04.b		; 00 04
	php		; 08
	xba		; EB
	bpl   7.b		; 10 07
	brk $1F.b		; 00 1F
	brk $10.b		; 00 10
	adc ($1C.b),Y		; 71 1C
	adc ($2E.b),Y		; 71 2E
	adc $2E.b,S		; 63 2E
	adc $1C.b,S		; 63 1C
	cmp $18.b,S		; C3 18
	cmp $5C.b,S		; C3 5C
	dec $7C.b		; C6 7C
	dec $2E.b		; C6 2E
	jsr $202E.w		; 20 2E 20
	trb $1C00.w		; 1C 00 1C
	brk $7E.b		; 00 7E
	.db $42, $7E		; 42 7E
	.db $42, $38		; 42 38
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	dec $30.b		; C6 30
	stx $30.b		; 86 30
	sty $38.b		; 84 38
	sty $8C38.w		; 8C 38 8C
	bmi -116.b		; 30 8C
	jsr $6088.w		; 20 88 60
	iny		; C8
	bit $7C04.w,X		; 3C 04 7C
	tsb $78.b		; 04 78
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	php		; 08
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	bit $E7.b		; 24 E7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	dey		; 88
	bvs -24.b		; 70 E8
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
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
	sed		; F8
	cpy #$FF.b		; C0 FF
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	sec		; 38
	jsr ($FF00.w,X)		; FC 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F8.b		; 00 F8
	sbc $80FE00.l,X		; FF 00 FE 80
	cpx #$40.b		; E0 40
	bvs -96.b		; 70 A0
	sec		; 38
	cpx #$0C.b		; E0 0C
	inx		; E8
	tsb $8480.w		; 0C 80 84
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	ldy #$20.b		; A0 20
	bne  16.b		; D0 10
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	sei		; 78
	brk $00.b		; 00 00
	cpx #$80.b		; E0 80
	sed		; F8
	bmi  60.b		; 30 3C
	tsb $06.b		; 04 06
	cop $03.b		; 02 03
	sbc ($E1.b,X)		; E1 E1
	bpl -16.b		; 10 F0
	php		; 08
	sec		; 38
	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	iny		; C8
	php		; 08
	sed		; F8
	brk $FC.b		; 00 FC
	brk $1E.b		; 00 1E
	brk $2F.b		; 00 2F
	jsr $0007.w		; 20 07 00
	tya		; 98
	jsr $5876.w		; 20 76 58
	sbc $3F3E.w,X		; FD 3E 3F
	inc $729D.w,X		; FE 9D 72
	rtl		; 6B

	bpl  24.b		; 10 18
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	rti		; 40

	cli		; 58
	bra  62.b		; 80 3E
	brk $FE.b		; 00 FE
	brk $72.b		; 00 72
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $58.b		; 00 58
	bmi -16.b		; 30 F0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	cpx #$40.b		; E0 40
	bvs   0.b		; 70 00
	clc		; 18
	php		; 08
	asl $C340.w		; 0E 40 C3
	and ($E1.b,X)		; 21 E1
	ora #$78.b		; 09 78
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	ldy #$20.b		; A0 20
	beq  16.b		; F0 10
	beq   0.b		; F0 00
	ldx $5E82.w,Y		; BE 82 5E
	rti		; 40

	asl $10.b,X		; 16 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $FF.b,S		; 03 FF
	bra -128.b		; 80 80
	brk $F0.b		; 00 F0
	ldy #$BE.b		; A0 BE
	tsb $07.b		; 04 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $7F0C.w		; 0C 0C 7F
	brk $0F.b		; 00 0F
	brk $51.b		; 00 51
	bpl  -6.b		; 10 FA
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	and $00FE00.l,X		; 3F 00 FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $C6.b		; 00 C6
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $2310.w		; 1C 10 23
	ora ($3F.b,X)		; 01 3F
	jsr $7057.w		; 20 57 70
	sta $00.b,S		; 83 00
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $001C.w		; 1C 1C 00
	brk $38.b		; 00 38
	sec		; 38
	jmp ($017C.w,X)		; 7C 7C 01
	ora ($07.b,X)		; 01 07
	brk $02.b		; 00 02
	asl $02.b		; 06 02
	asl $02.b		; 06 02
	inc $7230.w,X		; FE 30 72
	brk $C0.b		; 00 C0
	bvc -33.b		; 50 DF
	sec		; 38
	sed		; F8
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	sta $003F82.l		; 8F 82 3F 00
	pla		; 68
	php		; 08
	sec		; 38
	rti		; 40

	ora #$0C.b		; 09 0C
	eor ($14.b,X)		; 41 14
	rts		; 60

	phd		; 0B
	adc [$0C.b]		; 67 0C
	and $230C.w,Y		; 39 0C 23
	mvp $C4,$83		; 44 83 C4
	brk $D3.b		; 00 D3
	sbc ($F3.b)		; F2 F3
	sed		; F8
	plx		; FA
	sbc [$F4.b],Y		; F7 F4
	sbc ($F2.b),Y		; F1 F2
	sbc ($F0.b,S),Y		; F3 F0
	xce		; FB
	sed		; F8
	tsa		; 3B
	sec		; 38
	bit $803C.w,X		; 3C 3C 80
	sec		; 38
	cpy #$1C.b		; C0 1C
	inx		; E8
	tsb $04F0.w		; 0C F0 04
	sbc ($0E.b,X)		; E1 0E
	dec $151C.w		; CE 1C 15
	bvs 127.b		; 70 7F
	pea $2060.w		; F4 60 20
	sed		; F8
	clc		; 18
	beq   0.b		; F0 00
	sed		; F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	ora ($E8.b,X)		; 01 E8
	.db $62, $04, $01		; 62 04 01
	ldx $BD00.w,Y		; BE 00 BD
	ora ($DA.b,X)		; 01 DA
	sta $E4.b,S		; 83 E4
	lda [$F8.b]		; A7 F8
	asl $DC60.w,X		; 1E 60 DC
	cpx #$D8.b		; E0 D8
	ldy #$D0.b		; A0 D0
	adc $007E00.l,X		; 7F 00 7E 00
	lda $9A01.w,X		; BD 01 9A
	cop $04.b		; 02 04
	tsb $D8.b		; 04 D8
	clc		; 18
	bne  16.b		; D0 10
	cpy #$00.b		; C0 00
	cpx #$10.b		; E0 10
	cpy #$A0.b		; C0 A0
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
	rti		; 40

	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	sbc ($07.b)		; F2 07
	cop $07.b		; 02 07
	cop $7F.b		; 02 7F
	adc [$0F.b],Y		; 77 0F
	sbc [$0F.b],Y		; F7 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $FA.b		; 00 FA
	brk $FA.b		; 00 FA
	brk $87.b		; 00 87
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	bra  -1.b		; 80 FF
	ldy #$FF.b		; A0 FF
	plb		; AB
	sbc $5BFF4B.l,X		; FF 4B FF 5B
	sbc $003C14.l,X		; FF 14 3C 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	ldy #$00.b		; A0 00
	plb		; AB
	brk $4B.b		; 00 4B
	brk $5B.b		; 00 5B
	brk $14.b		; 00 14
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $FE.b		; 00 FE
	tsb $FE.b		; 04 FE
	pei ($FC.b)		; D4 FC
	cld		; D8
	sed		; F8
	cpx #$F0.b		; E0 F0
	cpy #$E0.b		; C0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $D4.b		; 00 D4
	brk $D8.b		; 00 D8
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	sty $C0.b		; 84 C0
	stx $C0.b		; 86 C0
	stx $8FC5.w		; 8E C5 8F
	dec $9B.b		; C6 9B
	dex		; CA
	and ($92.b,S),Y		; 33 92
	eor [$34.b],Y		; 57 34
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	asl A		; 0A
	tsb $12.b		; 04 12
	tsb $0834.w		; 0C 34 08
	lda $DC6B.w		; AD 6B DC
	sty $F8.b,X		; 94 F8
	iny		; C8
	cmp ($F1.b),Y		; D1 F1
	sbc $E7FBF8.l,X		; FF F8 FB E7
	sbc $7CB39F.l		; EF 9F B3 7C
	rtl		; 6B

	bpl -108.b		; 10 94
	and $C8.b,S		; 23 C8
	and [$D1.b]		; 27 D1
	ror $70D8.w,X		; 7E D8 70
	sbc [$E0.b]		; E7 E0
	ora $007C80.l,X		; 1F 80 7C 00
	eor [$1F.b],Y		; 57 1F
	tay		; A8
	sty $C754.w		; 8C 54 C7
	and $1167.w		; 2D 67 11
	bmi  11.b		; 30 0B
	clc		; 18
	tsb $0C.b		; 04 0C
	brk $07.b		; 00 07
	sbc [$00.b]		; E7 00
	bvs   0.b		; 70 00
	sec		; 38
	brk $1A.b		; 00 1A
	cop $0F.b		; 02 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $DF.b		; 00 DF
	stx $256E.w		; 8E 6E 25
	adc [$D0.b],Y		; 77 D0
	eor $27B808.l,X		; 5F 08 B8 27
	eor [$6F.b],Y		; 57 6F
	sta $8000C0.l,X		; 9F C0 00 80
	sty TMW.w		; 8C 2E 21
	trb $10.b		; 14 10
	php		; 08
	inx		; E8
	brk $C7.b		; 00 C7
	brk $8F.b		; 00 8F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	ora $3F.b,S		; 03 3F
	sbc $8000FF.l,X		; FF FF 00 80
	adc $4800FF.l,X		; 7F FF 00 48
	bcs -48.b		; B0 D0
	jsr $0020.w		; 20 20 00
	ora $00.b,S		; 03 00
	sbc $000000.l,X		; FF 00 00 00
	adc $000000.l,X		; 7F 00 00 00
	bcs   0.b		; B0 00
	jsr $0000.w		; 20 00 00
	brk $8D.b		; 00 8D
	ora ($8F.b,X)		; 01 8F
	brk $63.b		; 00 63
	rts		; 60

	php		; 08
	sed		; F8
	ora ($1F.b,X)		; 01 1F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FF00.w,X		; FE 00 FF
	brk $9F.b		; 00 9F
	brk $17.b		; 00 17
	bpl   2.b		; 10 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  32.b		; F0 20
	and $FF03F2.l,X		; 3F F2 03 FF
	brk $1F.b		; 00 1F
	brk $18.b		; 00 18
	sed		; F8
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bne  16.b		; D0 10
	sbc $FF01.w,X		; FD 01 FF
	brk $FF.b		; 00 FF
	brk $27.b		; 00 27
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	lda ($7E.b)		; B2 7E
	sei		; 78
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $BDFFFF.l,X		; FF FF FF BD
	sbc $A27F5D.l,X		; FF 5D 7F A2
	and $38F901.l,X		; 3F 01 F9 38
	sed		; F8
	jmp ($7DFB.w,X)		; 7C FB 7D
	xce		; FB
	lda $847B.w,X		; BD 7B 84
	tsa		; 3B
	sty $1B.b		; 84 1B
	rep #$0D		; C2 0D
	and [$7E.b]		; 27 7E
	and $FFFFFF.l,X		; 3F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF9FF.l,X		; FF FF F9 FF
	rol $86DF.w,X		; 3E DF 86
	clv		; B8
	cop $3D.b		; 02 3D
	adc $F9FFFC.l,X		; 7F FC FF F9
	sbc $EBFDF5.l,X		; FF F5 FD EB
	clc		; 18
	sbc [$14.b]		; E7 14
	cmp $096820.l		; CF 20 68 09
	and $0F00.w,X		; 3D 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$17.b],Y		; 17 17
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stx $2FF9.w		; 8E F9 2F
	cmp [$3F.b],Y		; D7 3F
	ora $2F3F37.l		; 0F 37 3F 2F
	and $0B1E1E.l,X		; 3F 1E 1E 0B
	ora $080706.l		; 0F 06 07 08
	ora ($15.b,X)		; 01 15
	asl $0B.b		; 06 0B
	tsb $1B26.w		; 0C 26 1B
	and $1B16.w		; 2D 16 1B
	tsb $0A.b		; 04 0A
	tsb $06.b		; 04 06
	brk $0F.b		; 00 0F
	cpx #$8F.b		; E0 8F
	rol $FF.b,X		; 36 FF
	asl $1F.b,X		; 16 1F
	asl $DE3F.w		; 0E 3F DE
	and $021F0E.l,X		; 3F 0E 1F 02
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	inc $20.b		; E6 20
	inc $00.b		; E6 00
	inc $1E00.w		; EE 00 1E
	brk $0E.b		; 00 0E
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $081F02.l		; 0F 02 1F 08
	adc $0BFE02.l,X		; 7F 02 FE 0B
	sed		; F8
	ora $C05EE0.l		; 0F E0 5E C0
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	tsb $110C.w		; 0C 0C 11
	ora ($65.b),Y		; 11 65
	stz $D7.b		; 64 D7
	bne  63.b		; D0 3F
	jsr $80BF.w		; 20 BF 80
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $F403.w,X		; 7E 03 F4
	ora [$E8.b]		; 07 E8
	tsb $18D0.w		; 0C D0 18
	ldy #$30.b		; A0 30
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	sbc $F801.w,X		; FD 01 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	sed		; F8
	bra  -1.b		; 80 FF
	tay		; A8
	sbc $9BFFAB.l,X		; FF AB FF 9B
	sbc $07FFB7.l,X		; FF B7 FF 07
	ora $000003.l		; 0F 03 00 00
	bra   0.b		; 80 00
	tay		; A8
	brk $AB.b		; 00 AB
	brk $9B.b		; 00 9B
	brk $B7.b		; 00 B7
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $011F00.l		; 0F 00 1F 01
	adc $03FC05.l,X		; 7F 05 FC 03
	beq  47.b		; F0 2F
	cpx #$9F.b		; E0 9F
	bra   0.b		; 80 00
	brk $03.b		; 00 03
	ora $0C.b,S		; 03 0C
	tsb $1212.w		; 0C 12 12
	rtl		; 6B

	pla		; 68
	sta $405F90.l,X		; 9F 90 5F 40
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $3E1E.w,X		; 1E 1E 3E
	rol $7C7C.w,X		; 3E 7C 7C
	adc $7F7F7F.l,X		; 7F 7F 7F 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $3A00.w,X		; 1E 00 3A
	trb $3854.w		; 1C 54 38
	adc [$38.b],Y		; 77 38
	eor $3A.b,X		; 55 3A
	ply		; 7A
	ror $7E46.w,X		; 7E 46 7E
	dec A		; 3A
	rol $1E1E.w,X		; 3E 1E 1E
	asl $1F1E.w,X		; 1E 1E 1F
	brk $3F.b		; 00 3F
	asl $1E23.w,X		; 1E 23 1E
	adc ($3C.b)		; 72 3C
	lsr $38.b		; 46 38
	jsl $0C1A1C.l		; 22 1C 1A 0C
	inc A		; 1A
	tsb $0000.w		; 0C 00 00
	asl $1E00.w,X		; 1E 00 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	tsb $05.b		; 04 05
	tsb $0802.w		; 0C 02 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D8.b		; 00 D8
	tya		; 98
	ldy $3C88.w,X		; BC 88 3C
	iny		; C8
	stz $5E00.w		; 9C 00 5E
	asl $5F.b		; 06 5F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bne -48.b		; D0 D0
	rts		; 60

	rts		; 60

	cpx #$E0.b		; E0 E0
	tay		; A8
	tay		; A8
	sed		; F8
	cpy #$FF.b		; C0 FF
	sed		; F8
	sbc $FDFFFD.l,X		; FF FD FF FD
	sbc $20F0C0.l,X		; FF C0 F0 20
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	sed		; F8
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	rts		; 60

	cpx #$00.b		; E0 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	bra 104.b		; 80 68
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $30.b		; 00 30
	bra   0.b		; 80 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	rep #$0A		; C2 0A
	mvp $48,$15		; 44 15 48
	asl $7EF5.w		; 0E F5 7E
	sbc $ABBF.w		; ED BF AB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	sty $01.b		; 84 01
	dey		; 88
	cop $84.b		; 02 84
	sta ($2C.b,X)		; 81 2C
	ora ($6B.b,X)		; 01 6B
	brk $00.b		; 00 00
	adc $725B89.l,X		; 7F 89 5B 72
	sta [$02.b]		; 87 02
	inc $FF04.w,X		; FE 04 FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $0000FF.l,X		; FF FF 00 00
	and $34.b,X		; 35 34
	sei		; 78
	sei		; 78
	ora ($01.b,X)		; 01 01
	brk $FC.b		; 00 FC
	cop $FD.b		; 02 FD
	adc $7DBEFD.l,X		; 7F FD BE 7D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	ora $83.b,S		; 03 83
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
	ora ($00.b,X)		; 01 00
	asl $01.b		; 06 01
	clc		; 18
	ora [$FF.b]		; 07 FF
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $80.b		; 00 80
	brk $08.b		; 00 08
	tsb $0604.w		; 0C 04 06
	.db $82, $83, $41		; 82 83 41
	cmp ($20.b,X)		; C1 20
	cpx #$08.b		; E0 08
	sei		; 78
	cop $1E.b		; 02 1E
	ora ($07.b,X)		; 01 07
	beq   0.b		; F0 00
	sed		; F8
	brk $7C.b		; 00 7C
	brk $BE.b		; 00 BE
	bra  95.b		; 80 5F
	rti		; 40

	ora [$10.b],Y		; 17 10
	ora $04.b		; 05 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	lsr $60.b		; 46 60
	and #$36.b		; 29 36
	ora $0016.w,X		; 1D 16 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C6.b		; 00 C6
	brk $E6.b		; 00 E6
	brk $80.b		; 00 80
	bra   1.b		; 80 01
	ora ($04.b,X)		; 01 04
	ora [$08.b]		; 07 08
	asl $1C10.w		; 0E 10 1C
	rts		; 60

	sei		; 78
	bra -16.b		; 80 F0
	brk $C0.b		; 00 C0
	adc $00FE00.l,X		; 7F 00 FE 00
	plx		; FA
	cop $F4.b		; 02 F4
	tsb $E8.b		; 04 E8
	php		; 08
	bcc  16.b		; 90 10
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	.db $82, $FE, $01		; 82 FE 01
	cmp [$00.b]		; C7 00
	sta $00.b,S		; 83 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $45.b		; 00 45
	mvp $82,$82		; 44 82 82
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
	brk $7B.b		; 00 7B
	.db $62, $86, $00		; 62 86 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $79.b		; 00 79
	adc $000C.w,Y		; 79 0C 00
	bit $00.b,X		; 34 00
	sed		; F8
	bpl -72.b		; 10 B8
	brk $F0.b		; 00 F0
	rts		; 60

	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	bpl   0.b		; 10 00
	brk $40.b		; 00 40
	rts		; 60

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	ora $1002.w,Y		; 19 02 10
	ora $080218.l		; 0F 18 02 08
	tsb $0C.b		; 04 0C
	cop $07.b		; 02 07
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	ora [$07.b]		; 07 07
	ora $07070F.l		; 0F 0F 07 07
	ora [$07.b]		; 07 07
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	sty $3C.b		; 84 3C
	bvs -112.b		; 70 90
	beq  80.b		; F0 50
	bcs -112.b		; B0 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	phd		; 0B
	php		; 08
	sta $004F00.l		; 8F 00 4F 00
	sta $081840.l		; 8F 40 18 08
	sbc $0FF0EF.l,X		; FF EF F0 0F
	jsr ($18EF.w,X)		; FC EF 18
	php		; 08
	tas		; 1B
	php		; 08
	sbc $FEF8.w,Y		; F9 F8 FE
	inc $E007.w,X		; FE 07 E0
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	sbc $03.b,S		; E3 03
	ora [$E0.b]		; 07 E0
	ora [$E0.b]		; 07 E0
	sbc $F87700.l,X		; FF 00 77 F8
	sbc [$FB.b],Y		; F7 FB
	bpl  31.b		; 10 1F
	cop $FE.b		; 02 FE
	ora [$00.b]		; 07 00
	and $5001.w,Y		; 39 01 50
	cmp $03F902.l,X		; DF 02 F9 03
	brk $F3.b		; 00 F3
	php		; 08
	bpl   8.b		; 10 08
	ora $04.b		; 05 04
	sbc $00FE00.l,X		; FF 00 FE 00
	tay		; A8
	dey		; 88
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	dec $2FA0.w,X		; DE A0 2F
	pei ($3A.b)		; D4 3A
	ora ($FB.b),Y		; 11 FB
	and ($7F.b),Y		; 31 7F
	bit $8F.b,X		; 34 8F
	stz $FF.b,X		; 74 FF
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $14.b		; 00 14
	brk $D1.b		; 00 D1
	tsb $B1.b		; 04 B1
	tsb $B4.b		; 04 B4
	brk $74.b		; 00 74
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	php		; 08
	sbc [$18.b]		; E7 18
	jsr ($BF43.w,X)		; FC 43 BF
	ora $DD1F3F.l,X		; 1F 3F 1F DD
	ldx $3FC0.w,Y		; BE C0 3F
	and $000800.l,X		; 3F 00 08 00
	clc		; 18
	brk $43.b		; 00 43
	brk $1F.b		; 00 1F
	rti		; 40

	ora $00BEC0.l,X		; 1F C0 BE 00
	and $000000.l,X		; 3F 00 00 00
	sbc [$DB.b],Y		; F7 DB
	and $172BD7.l,X		; 3F D7 2B 17
	and $071E17.l		; 2F 17 1E 07
	asl $0307.w		; 0E 07 03
	ora $00.b,S		; 03 00
	brk $19.b		; 00 19
	cop $17.b		; 02 17
	ora $13.b		; 05 13
	ora $16.b		; 05 16
	ora $04.b,S		; 03 04
	ora $06.b,S		; 03 06
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $5F.b		; 00 5F
	sbc $90FFC2.l,X		; FF C2 FF 90
	sta $DF83FA.l,X		; 9F FA 83 DF
	cpy #$84.b		; C0 84
	jsr ($0F00.w,X)		; FC 00 0F
	brk $00.b		; 00 00
	.db $42, $BD		; 42 BD
	.db $42, $85		; 42 85
	inx		; E8
	php		; 08
	sbc $BF01.w,X		; FD 01 BF
	brk $8B.b		; 00 8B
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $63FF.w,X		; FD FF 63
	sbc $FFFF7F.l,X		; FF 7F FF FF
	inc $FDFE.w,X		; FE FE FD
	inc $FFFD.w,X		; FE FD FF
	sed		; F8
	jsr ($FCFB.w,X)		; FC FB FC
	ora $03.b,S		; 03 03
	jmp ($7B47.w,X)		; 7C 47 7B
	ror $EDF6.w,X		; 7E F6 ED
	pea $ECF9.w		; F4 F9 EC
	beq -24.b		; F0 E8
	cmp ($E8.b,S),Y		; D3 E8
	cpy #$00.b		; C0 00
	sbc $78FF87.l,X		; FF 87 FF 78
	sbc $23.b,S		; E3 23
	sec		; 38
	iny		; C8
	dec $73F2.w		; CE F2 73
	sbc $3FDE.w,X		; FD DE 3F
	brk $3F.b		; 00 3F
	sta [$80.b]		; 87 80
	sei		; 78
	brk $23.b		; 00 23
	trb $07C8.w		; 1C C8 07
	sbc ($01.b)		; F2 01
	sbc $3E00.w,X		; FD 00 3E
	ora ($00.b,X)		; 01 00
	sta ($00.b,X)		; 81 00
	sbc $FF0766.l,X		; FF 66 07 FF
	brk $3F.b		; 00 3F
	brk $31.b		; 00 31
	beq   3.b		; F0 03
	adc $000F00.l,X		; 7F 00 0F 00
	brk $80.b		; 00 80
	bra  -7.b		; 80 F9
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $4F.b		; 00 4F
	rti		; 40

	tsb $000C.w		; 0C 0C 00
	brk $7F.b		; 00 7F
	sbc $DC26.w		; ED 26 DC
	ora ($FF.b,X)		; 01 FF
	cpy $FE0F.w		; CC 0F FE
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	inc $808D.w,X		; FE 8D 80
	trb $8101.w		; 1C 01 81
	bra -14.b		; 80 F2
	cop $FF.b		; 02 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FF0000.l,X		; FF 00 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $06.b		; 00 06
	ora [$E0.b]		; 07 E0
	sbc $80F800.l,X		; FF 00 F8 80
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F9.b		; 00 F9
	ora ($18.b,X)		; 01 18
	clc		; 18
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	asl $FC0F.w		; 0E 0F FC
	brk $F8.b		; 00 F8
	brk $CE.b		; 00 CE
	asl $FF00.w		; 0E 00 FF
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($01.b),Y		; F1 01
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc ($00.b),Y		; F1 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $834F87.l,X		; 7F 87 4F 83
	adc [$23.b]		; 67 23
	ldx $11.b,Y		; B6 11
	ora $1CE6.w,Y		; 19 E6 1C
	sbc $13.b,S		; E3 13
	cpx #$F0.b		; E0 F0
	brk $83.b		; 00 83
	ora [$00.b]		; 07 00
	and ($A3.b,S),Y		; 33 A3
	clc		; 18
	cmp ($08.b),Y		; D1 08
	stx $80.b		; 86 80
	adc $00.b,S		; 63 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	sbc $FF6FFF.l,X		; FF FF 6F FF
	sbc $3BFF.w,X		; FD FF 3B
	cmp $400EEE.l,X		; DF EE 0E 40
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	inc $9E65.w,X		; FE 65 9E
	sbc $D306.w,Y		; F9 06 D3
	tsb $000E.w		; 0C 0E 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E0.b		; C0 E0
	brk $F0.b		; 00 F0
	bra  -4.b		; 80 FC
	sty $F7.b,X		; 94 F7
	bit $6B.b		; 24 6B
	lsr $0F63.w,X		; 5E 63 0F
	bcs  63.b		; B0 3F
	rts		; 60

	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	plp		; 28
	jsr $938F.w		; 20 8F 93
	sta $89.b		; 85 89
	eor $908F40.l,X		; 5F 40 8F 90
	asl $3CA0.w,X		; 1E A0 3C
	adc ($9D.b),Y		; 71 9D
	and $18.b,S		; 23 18
	and [$82.b]		; 27 82
	txy		; 9B
	tsb $A6.b		; 04 A6
	rti		; 40

	jmp.w [$7800]		; DC 00 78
	eor $818F40.l,X		; 5F 40 8F 81
	dec $D8C2.w,X		; DE C2 D8
	cpy #$64.b		; C0 64
	stz $78.b		; 64 78
	sei		; 78
	sec		; 38
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	cop $1E.b		; 02 1E
	php		; 08
	sei		; 78
	jsr $00E0.w		; 20 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($05.b,X)		; 01 05
	tsb $17.b		; 04 17
	bpl  95.b		; 10 5F
	rti		; 40

	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	trb $217F.w		; 1C 7F 21
	sbc ($80.b,X)		; E1 80
	bra   0.b		; 80 00
	brk $08.b		; 00 08
	php		; 08
	bit $3C.b		; 24 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lsr $7F40.w,X		; 5E 40 7F
	brk $FF.b		; 00 FF
	brk $F7.b		; 00 F7
	brk $DB.b		; 00 DB
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	rts		; 60

	jsr $1030.w		; 20 30 10
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	brk $0B.b		; 00 0B
	cop $13.b		; 02 13
	asl $0833.w,X		; 1E 33 08
	and ($09.b,X)		; 21 09
	and $08.b		; 25 08
	jsl $000000.l		; 22 00 00 00
	brk $05.b		; 00 05
	ora $0C.b		; 05 0C
	tsb $0C0C.w		; 0C 0C 0C
	asl $1E1E.w,X		; 1E 1E 1E
	asl $1D1D.w,X		; 1E 1D 1D
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	sec		; 38
	inc $0704.w,X		; FE 04 07
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	bmi  48.b		; 30 30
	pha		; 48
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvp $FA,$44		; 44 44 FA
	cop $FD.b		; 02 FD
	ora ($FE.b,X)		; 01 FE
	brk $CF.b		; 00 CF
	brk $87.b		; 00 87
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpx #$40.b		; E0 40
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	ldy #$20.b		; A0 20
	ora $06.b,S		; 03 06
	ora ($0C.b,X)		; 01 0C
	ora [$0C.b]		; 07 0C
	cop $18.b		; 02 18
	ora $310419.l		; 0F 19 04 31
	inc A		; 1A
	and ($04.b,S),Y		; 33 04
	ror $01.b		; 66 01
	brk $07.b		; 00 07
	tsb $03.b		; 04 03
	brk $0F.b		; 00 0F
	php		; 08
	asl $00.b		; 06 00
	asl $0C10.w,X		; 1E 10 0C
	brk $38.b		; 00 38
	jsr $7F7E.w		; 20 7E 7F
	rol $7F.b,X		; 36 7F
	ldx $2EFF.w		; AE FF 2E
	sbc $36BF3E.l,X		; FF 3E BF 36
	and $1B1F17.l		; 2F 17 1F 1B
	ora [$AA.b],Y		; 17 AA
	asl $F6.b,X		; 16 F6
	lsr $1E26.w		; 4E 26 1E
	ldx $9E.b		; A6 9E
	rol $2000.w,X		; 3E 00 20
	asl $0F12.w,X		; 1E 12 0F
	ora ($0F.b),Y		; 11 0F
	trb $1C08.w		; 1C 08 1C
	php		; 08
	php		; 08
	ora [$00.b],Y		; 17 00
	jmp ($9E04.w)		; 6C 04 9E
	trb $1F3F.w		; 1C 3F 1F
	inc $FEFD.w,X		; FE FD FE
	sbc $E3.b,S		; E3 E3
	sbc $E3.b,S		; E3 E3
	cpx #$E0.b		; E0 E0
	sta ($93.b,S),Y		; 93 93
	adc $69.b		; 65 69
	pei ($D8.b)		; D4 D8
	asl $18.b,X		; 16 18
	pea $00FA.w		; F4 FA 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra  12.b		; 80 0C
	sta $3D.b,S		; 83 3D
	phb		; 8B
	ror $22.b		; 66 22
	cpy $40.b		; C4 40
	sty $0088.w		; 8C 88 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	cop $21.b		; 02 21
	clc		; 18
	eor $38.b,S		; 43 38
	phb		; 8B
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $111808.l		; 0F 08 18 11
	bmi   7.b		; 30 07
	jmp ($4006.w,X)		; 7C 06 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $0B0B0F.l		; 0F 0F 0B 0B
	and $00003F.l,X		; 3F 3F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	rts		; 60

	brk $18.b		; 00 18
	clv		; B8
	asl $0714.w		; 0E 14 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$E0.b		; E0 E0
	beq -16.b		; F0 F0
	plx		; FA
	plx		; FA
	brk $03.b		; 00 03
	ora ($1F.b,X)		; 01 1F
	php		; 08
	sed		; F8
	rti		; 40

	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora $00.b,S		; 03 00
	brk $02.b		; 00 02
	cop $17.b		; 02 17
	bpl -65.b		; 10 BF
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	ora ($08.b,X)		; 01 08
	ora $C03C30.l		; 0F 30 3C C0
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	sed		; F8
	pea $C004.w		; F4 04 C0
	brk $20.b		; 00 20
	jsr $8080.w		; 20 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	ora $030F08.l,X		; 1F 08 0F 03
	ora $07.b		; 05 07
	ora $03.b,S		; 03 03
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	php		; 08
	brk $01.b		; 00 01
	ora $05.b,S		; 03 05
	ora $02.b,S		; 03 02
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $DA.b		; 00 DA
	ldy $CCFA.w		; AC FA CC
	sbc ($FC.b)		; F2 FC
	sta $FEFBFD.l,X		; 9F FD FB FE
	ror $FEFE.w,X		; 7E FE FE
	inc $FEFE.w,X		; FE FE FE
	bit $CC81.w		; 2C 81 CC
	sta ($BC.b,X)		; 81 BC
	cmp ($1D.b,X)		; C1 1D
	cpx #$7A.b		; E0 7A
	jsr ($D47E.w,X)		; FC 7E D4
	tax		; AA
	mvn $00,$FE		; 54 FE 00
	sbc [$A3.b]		; E7 A3
	ldy $F9D4.w,X		; BC D4 F9
	iny		; C8
	cpy $81BC.w		; CC BC 81
	adc $000700.l,X		; 7F 00 07 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	clc		; 18
	cmp ($00.b,S),Y		; D3 00
	cmp [$00.b]		; C7 00
	lda ($30.b,S),Y		; B3 30
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $00FF00.l,X		; 3F 00 FF 00
	sbc $000700.l,X		; FF 00 07 00
	cpx #$E0.b		; E0 E0
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($1C.b,S),Y		; D3 1C
	sbc $FA07.w,X		; FD 07 FA
	ora $FA.b,S		; 03 FA
	ora $09.b,S		; 03 09
	asl $FC00.w		; 0E 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inx		; E8
	php		; 08
	sbc $FC00.w,Y		; F9 00 FC
	brk $FC.b		; 00 FC
	brk $F4.b		; 00 F4
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora $07.b,S		; 03 07
	ora [$05.b]		; 07 05
	ora $010F06.l		; 0F 06 0F 01
	ora $0000.w,Y		; 19 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	ora [$00.b]		; 07 00
	tsb $03.b		; 04 03
	cop $01.b		; 02 01
	ora $CC8408.l		; 0F 08 84 CC
	cop $86.b		; 02 86
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $1038.w		; 20 38 10
	trb $0E08.w		; 1C 08 0E
	sty $87.b		; 84 87
	.db $42, $C3		; 42 C3
	ora ($F1.b),Y		; 11 F1
	ora $3C.b		; 05 3C
	ora [$09.b]		; 07 09
	bne  16.b		; D0 10
	inx		; E8
	php		; 08
	pea $7A04.w		; F4 04 7A
	cop $BD.b		; 02 BD
	sta ($2E.b,X)		; 81 2E
	jsr $080A.w		; 20 0A 08
	ora ($00.b,X)		; 01 00
	plp		; 28
	jmp ($C450.w)		; 6C 50 C4
	bvc -58.b		; 50 C6
	trb $0846.w		; 1C 46 08
	jsl $093017.l		; 22 17 30 09
	ora ($13.b),Y		; 11 13
	cop $10.b		; 02 10
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $38.b		; 04 38
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	asl $02.b		; 06 02
	tsb $0F7F.w		; 0C 7F 0F
	adc #$37.b		; 69 37
	adc $354B30.l,X		; 7F 30 4B 35
	phk		; 4B
	and $73.b,X		; 35 73
	ora $6D93.w		; 0D 93 6D
	txy		; 9B
	adc $000F.w		; 6D 0F 00
	bmi   7.b		; 30 07
	bmi   0.b		; 30 00
	and $00.b,X		; 35 00
	and $00.b,X		; 35 00
	ora $6D00.w		; 0D 00 6D
	brk $6D.b		; 00 6D
	brk $F7.b		; 00 F7
	inc $FEFF.w,X		; FE FF FE
	sbc $20BF1E.l,X		; FF 1E BF 20
	jmp.w [$4E54]		; DC 54 4E
	txa		; 8A
	cmp [$85.b]		; C7 85
	sbc $A0.b,S		; E3 A0
	pea $3C0A.w		; F4 0A 3C
	sbc ($0E.b)		; F2 0E
	asl $4020.w,X		; 1E 20 40
	mvn $8A,$23		; 54 23 8A
	and ($85.b),Y		; 31 85
	sec		; 38
	ldy #$1C.b		; A0 1C
	inc $F7F2.w,X		; FE F2 F7
	phd		; 0B
	adc $FB1FFB.l,X		; 7F FB 1F FB
	cpy $3B.b		; C4 3B
	rol $7000.w,X		; 3E 00 70
	ora $F141C1.l		; 0F C1 41 F1
	brk $08.b		; 00 08
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $3A.b		; 00 3A
	cop $00.b		; 02 00
	cpy #$0C.b		; C0 0C
	sty $003E.w		; 8C 3E 00
	jsr $44A1.w		; 20 A1 44
	inc $02.b		; E6 02
	cmp $5FA11B.l,X		; DF 1B A1 5F
	cpx #$07.b		; E0 07
	bvc -93.b		; 50 A3
	sei		; 78
	eor #$BC.b		; 49 BC
	eor $39395F.l,X		; 5F 5F 39 39
	rts		; 60

	rts		; 60

	eor $001F41.l,X		; 5F 41 1F 00
	and $080F20.l		; 2F 20 0F 08
	sta [$04.b]		; 87 04
	jsl $BF2243.l		; 22 43 22 BF
	bra  -2.b		; 80 FE
	beq -68.b		; F0 BC
	rti		; 40

	cld		; D8
	cpy #$10.b		; C0 10
	jsr $0070.w		; 20 70 00
	cpx #$FC.b		; E0 FC
	jsr ($4040.w,X)		; FC 40 40
	trb $14.b		; 14 14
	bra   0.b		; 80 00
	rts		; 60

	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$C0.b		; C0 C0
	adc $1B.b		; 65 1B
	jsr ($CB7B.w,X)		; FC 7B CB
	eor $05E7.w		; 4D E7 05
	tda		; 7B
.ACCU 8
.INDEX 8
	sep #$FD		; E2 FD
	sbc ($F0.b),Y		; F1 F0
	sbc $18FCE8.l,X		; FF E8 FC 18
	brk $79.b		; 00 79
	brk $4C.b		; 00 4C
	bmi   4.b		; 30 04
	tya		; 98
	jsl $6AB1C4.l		; 22 C4 B1 6A
	bne -88.b		; D0 A8
	adc $9B.b,S		; 63 9B
	.db $82, $E6, $87		; 82 E6 87
	tyx		; BB
	cmp $1B3FEB.l,X		; DF EB 3F 1B
	ldx $B89A.w,Y		; BE 9A B8
	asl $9AF0.w,X		; 1E F0 9A
	jsr $5AD2.w		; 20 D2 5A
	rti		; 40

	sbc ($22.b,X)		; E1 22
	wai		; CB
	brk $D9.b		; 00 D9
	cop $5A.b		; 02 5A
	brk $58.b		; 00 58
	brk $94.b		; 00 94
	tsb $0C.b		; 04 0C
	tsb $80C0.w		; 0C C0 80
	cpx #$80.b		; E0 80
	bcc  96.b		; 90 60
	sed		; F8
	bpl -114.b		; 10 8E
	bcc 117.b		; 90 75
	stx $3FDF.w		; 8E DF 3F
	phk		; 4B
	and [$80.b],Y		; 37 80
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	brk $10.b		; 00 10
	brk $90.b		; 00 90
	rts		; 60

	stx $3F00.w		; 8E 00 3F
	brk $37.b		; 00 37
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $AC.b		; 00 AC
	clc		; 18
	sed		; F8
	rti		; 40

	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EB.b		; 00 EB
	trb $7EBF.w		; 1C BF 7E
	sta [$6E.b],Y		; 97 6E
	adc $001C10.l		; 6F 10 1C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $7E00.w		; 1C 00 7E
	brk $6E.b		; 00 6E
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $26.b		; 00 26
	sec		; 38
	ora $5F16.w,Y		; 19 16 5F
	cmp $997D.w		; CD 7D 99
	cmp $38.b,X		; D5 38
	and $1B16.w		; 2D 16 1B
	ora $06.b		; 05 06
	ora ($D0.b,X)		; 01 D0
	bpl -26.b		; 10 E6
	brk $AD.b		; 00 AD
	bra  25.b		; 80 19
	cop $38.b		; 02 38
	cop $16.b		; 02 16
	brk $05.b		; 00 05
	brk $01.b		; 00 01
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
	brk $C0.b		; 00 C0
	brk $78.b		; 00 78
	brk $DC.b		; 00 DC
	dey		; 88
	phy		; 5A
	dey		; 88
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -120.b		; 80 88
	jsr $2488.w		; 20 88 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $3E3700.l		; 0F 00 37 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  14.b		; 30 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $3200.w		; 0E 00 32
	ora $30CF.w		; 0D CF 30
	ora $00FFFF.l,X		; 1F FF FF 00
	sbc $0000FF.l,X		; FF FF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $3000.w		; 0C 00 30
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $D03CC4.l		; 0F C4 3C D0
	bcs -16.b		; B0 F0
	ora $18EFFC.l		; 0F FC EF 18
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phd		; 0B
	php		; 08
	lda $000020.l		; AF 20 00 00
	sbc $03.b,S		; E3 03
	ora [$E0.b]		; 07 E0
	brk $0F.b		; 00 0F
	tsb $FC.b		; 04 FC
	rti		; 40

	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	sbc $007F70.l,X		; FF 70 7F 00
	brk $0B.b		; 00 0B
	php		; 08
	lda $00FF80.l,X		; BF 80 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	ora ($01.b,X)		; 01 01
	sty $010C.w		; 8C 0C 01
	ldy $F481.w,X		; BC 81 F4
	sta $FB06.w,Y		; 99 06 FB
	asl $F1.b		; 06 F1
	tsb $71.b		; 04 71
	sty $77.b		; 84 77
	stx $8EB1.w		; 8E B1 8E
	brk $00.b		; 00 00
	clc		; 18
	bpl  -8.b		; 10 F8
	brk $F8.b		; 00 F8
	brk $7E.b		; 00 7E
	sty $FE.b		; 84 FE
	tsb $78.b		; 04 78
	php		; 08
	bvs   0.b		; 70 00
	ora $3F7FFF.l,X		; 1F FF 7F 3F
	adc $BFFF3F.l,X		; 7F 3F FF BF
	sbc $BF7EBF.l,X		; FF BF 7E BF
	sbc $7CFF7F.l,X		; FF 7F FF 7C
	ora $BF0F3F.l		; 0F 3F 0F BF
	ora $3F9FBF.l,X		; 1F BF 9F 3F
	ldy $9A03.w,X		; BC 03 9A
	bit $5874.w		; 2C 74 58
	pld		; 2B
	bvc  -3.b		; 50 FD
	sbc $A7FEDB.l,X		; FF DB FE A7
	inc $FCDD.w,X		; FE DD FC
	sta $31E8.w,Y		; 99 E8 31
	bne  32.b		; D0 20
	cpx #$40.b		; E0 40
	bvs  81.b		; 70 51
	ldx $BCC2.w,Y		; BE C2 BC
	ldx $D8.b		; A6 D8
	stz $08E0.w		; 9C E0 08
	beq  16.b		; F0 10
	rts		; 60

	jsr $8000.w		; 20 00 80
	brk $CF.b		; 00 CF
	and ($EA.b,S),Y		; 33 EA
	ora $EE15.w,X		; 1D 15 EE
	inc A		; 1A
	sbc [$15.b]		; E7 15
	xba		; EB
	inc $09.b,X		; F6 09
	ora $0000.w,Y		; 19 00 00
	brk $33.b		; 00 33
	bra  29.b		; 80 1D
	brk $EE.b		; 00 EE
	brk $E7.b		; 00 E7
	brk $EB.b		; 00 EB
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $21.b		; 00 21
	and $00F180.l,X		; 3F 80 F1 00
	cpy #$00.b		; C0 00
	cpx #$C0.b		; E0 C0
	inc $07C4.w,X		; FE C4 07
	sbc $FC01.w,X		; FD 01 FC
	brk $D0.b		; 00 D0
	bpl  64.b		; 10 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $FA20.w		; 20 20 FA
	cop $FE.b		; 02 FE
	brk $FF.b		; 00 FF
	brk $38.b		; 00 38
	sec		; 38
	tsb $FC.b		; 04 FC
	cop $06.b		; 02 06
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp [$00.b]		; C7 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	ldy #$40.b		; A0 40
	sed		; F8
	ldy #$D4.b		; A0 D4
	dey		; 88
	ldx $28.b,Y		; B6 28
	sbc $D1F246.l,X		; FF 46 F2 D1
	sbc $000033.l,X		; FF 33 00 00
	rti		; 40

	brk $A0.b		; 00 A0
	brk $88.b		; 00 88
	jsr $4028.w		; 20 28 40
	lsr $00.b		; 46 00
	cmp ($0C.b),Y		; D1 0C
	and ($00.b,S),Y		; 33 00
	adc [$0F.b],Y		; 77 0F
	and [$1F.b]		; 27 1F
	tya		; 98
	ora [$C6.b]		; 07 C6
	ora ($61.b,X)		; 01 61
	bra  80.b		; 80 50
	bra -104.b		; 80 98
	bpl  54.b		; 10 36
	php		; 08
	ora $001F00.l		; 0F 00 1F 00
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	bra   0.b		; 80 00
	bra  32.b		; 80 20
	bpl  96.b		; 10 60
	php		; 08
	cpy #$FD.b		; C0 FD
	rol $7FBF.w,X		; 3E BF 7F
	eor $1B253F.l,X		; 5F 3F 25 1B
	tas		; 1B
	tsb $06.b		; 04 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $1B.b		; 00 1B
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpx #$40.b		; E0 40
	bvs  32.b		; 70 20
	sec		; 38
	bcc -100.b		; 90 9C
	pha		; 48
	dec $E625.w		; CE 25 E6
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	ldy #$20.b		; A0 20
	bne  16.b		; D0 10
	pla		; 68
	php		; 08
	ldy $84.b,X		; B4 84
	inc A		; 1A
	cop $0B.b		; 02 0B
	and $1B07.w,Y		; 39 07 1B
	phd		; 0B
	ora [$06.b]		; 07 06
	sta ($81.b,X)		; 81 81
	cpy #$40.b		; C0 40
	rts		; 60

	ldx $5B30.w		; AE 30 5B
	trb $15.b		; 14 15
	bpl   3.b		; 10 03
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E4.b		; 00 E4
	brk $5F.b		; 00 5F
	cmp $D93D.w		; CD 3D D9
	eor $2938.w,X		; 5D 38 29
	bpl  31.b		; 10 1F
	tsb $0F.b		; 04 0F
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $AD.b		; 00 AD
	bra  25.b		; 80 19
	cop $38.b		; 02 38
	cop $10.b		; 02 10
	asl $04.b		; 06 04
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DF.b		; 00 DF
	jsr ($FD7F.w,X)		; FC 7F FD
	inc $FFFA.w,X		; FE FA FF
	sbc $F6F9.w,Y		; F9 F9 F6
	inc $FDF7.w,X		; FE F7 FD
	sbc ($EA.b,S),Y		; F3 EA
	sbc $CC.b,X		; F5 CC
	bit $19.b,X		; 34 19
	cpx $E97A.w		; EC 7A E9
	sbc ($D8.b),Y		; F1 D8
	inc $D0.b,X		; F6 D0
	sbc [$D0.b]		; E7 D0
	sbc $D0.b,S		; E3 D0
	lda $D0.b		; A5 D0
	bra -128.b		; 80 80
	jsr ($7F0C.w,X)		; FC 0C 7F
	bvs   7.b		; 70 07
	ora [$C0.b]		; 07 C0
	rti		; 40

	bvs -112.b		; 70 90
	stz $E7E4.w		; 9C E4 E7
	sbc $7F80.w,Y		; F9 80 7F
	tsb $7003.w		; 0C 03 70
	bra   7.b		; 80 07
	sed		; F8
	rti		; 40

	and $E40F90.l,X		; 3F 90 0F E4
	ora $F9.b,S		; 03 F9
	brk $17.b		; 00 17
	brk $93.b		; 00 93
	bra -13.b		; 80 F3
	jsr $C8F9.w		; 20 F9 C8
	bit $2F2C.w,X		; 3C 2C 2F
	ora $E01F20.l,X		; 1F 20 1F E0
	jmp $8FE00F.l		; 5C 0F E0 8F
	rts		; 60

	and $00C700.l		; 2F 00 C7 00
	and $C0.b,S		; 23 C0
	bpl -48.b		; 10 D0
	trb $40DC.w		; 1C DC 40
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	sbc $00F800.l,X		; FF 00 F8 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $18.b		; 00 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsl $3E0ECE.l		; 22 CE 0E 3E
	bcc -98.b		; 90 9E
	bit $66.b		; 24 66
	brk $BC.b		; 00 BC
	jsr $0070.w		; 20 70 00
	jsr $0000.w		; 20 00 00
	bit $04.b,X		; 34 04
	cpy #$C0.b		; C0 C0
	pla		; 68
	pla		; 68
	tya		; 98
	tya		; 98
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $6A7C.w		; AD 7C 6A
	ror $3F38.w,X		; 7E 38 3F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pld		; 2B
	bvc 109.b		; 50 6D
	trb $39.b		; 14 39
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	asl $0774.w,X		; 1E 74 07
	sta $2181.w,X		; 9D 81 21
	cpx #$05.b		; E0 05
	bit $0F01.w,X		; 3C 01 0F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	plx		; FA
	cop $7E.b		; 02 7E
	brk $1F.b		; 00 1F
	brk $0B.b		; 00 0B
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($FE.b,X)		; 01 FE
	sbc ($E0.b,X)		; E1 E0
	sbc $03F200.l,X		; FF 00 F2 03
	bpl  30.b		; 10 1E
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $FE00.w,X		; 1E 00 FE
	brk $FC.b		; 00 FC
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$40.b		; C0 40
	rts		; 60

	jsr $1038.w		; 20 38 10
	trb $0E08.w		; 1C 08 0E
	tsb $87.b		; 04 87
	.db $42, $C3		; 42 C3
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	inx		; E8
	php		; 08
	pea $FA04.w		; F4 04 FA
	.db $82, $3D, $01		; 82 3D 01
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	asl $08.b		; 06 08
	php		; 08
	ora ($00.b,S),Y		; 13 00
	ora $0E0A02.l,X		; 1F 02 0A 0E
	ora ($08.b),Y		; 11 08
	ora [$00.b],Y		; 17 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0C.b]		; 07 0C
	tsb $0000.w		; 0C 00 00
	ora $05.b		; 05 05
	asl $080E.w		; 0E 0E 08
	ora #$00.b		; 09 00
	brk $07.b		; 00 07
	sbc $07CF43.l,X		; FF 43 CF 07
	sbc $23DF07.l,X		; FF 07 DF 23
	adc [$13.b]		; 67 13
	sbc [$C3.b],Y		; F7 C3
	sbc $070000.l,X		; FF 00 00 07
	brk $30.b		; 00 30
	and [$03.b],Y		; 37 03
	ora $9B2727.l		; 0F 27 27 9B
	txy		; 9B
	phd		; 0B
	phd		; 0B
	ora $E3.b,S		; 03 E3
	and ($E1.b,X)		; 21 E1
	bpl 112.b		; 10 70
	php		; 08
	sec		; 38
	cop $DE.b		; 02 DE
	rti		; 40

	adc [$20.b]		; 67 20
	and ($D0.b),Y		; 31 D0
	clc		; 18
	inx		; E8
	tsb $405E.w		; 0C 5E 40
	and $101720.l		; 2F 20 17 10
	ora $04.b		; 05 04
	sta ($01.b,X)		; 81 01
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	stz $06.b,X		; 74 06
	tsx		; BA
	sta $5D.b,S		; 83 5D
	cmp ($2E.b,X)		; C1 2E
	cpx #$17.b		; E0 17
	bvs   5.b		; 70 05
	bit $0F01.w,X		; 3C 01 0F
	brk $03.b		; 00 03
	sed		; F8
	brk $7C.b		; 00 7C
	brk $BE.b		; 00 BE
	bra  95.b		; 80 5F
	rti		; 40

	and $080B20.l		; 2F 20 0B 08
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cmp $00.b,S		; C3 00
	lda $E2F5C3.l,X		; BF C3 F5 E2
	dec $7CE8.w,X		; DE E8 7C
	bra -128.b		; 80 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C3.b		; 00 C3
	brk $E2.b		; 00 E2
	php		; 08
	inx		; E8
	brk $80.b		; 00 80
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
	brk $00.b		; 00 00
	asl $3F1C.w,X		; 1E 1C 3F
	ora ($2F.b,X)		; 01 2F
	and $66.b,S		; 23 66
	bvc -45.b		; 50 D3
	and ($8F.b),Y		; 31 8F
	plp		; 28
	sta $01.b,S		; 83 01
	eor $0000.w		; 4D 00 00
	cop $02.b		; 02 02
	bpl  16.b		; 10 10
	clc		; 18
	ora $2C2D.w,Y		; 19 2D 2C
	tda		; 7B
	ply		; 7A
	jmp ($3A7C.w,X)		; 7C 7C 3A
	dec A		; 3A
	jsr $0E63.w		; 20 63 0E
	jsr $301D.w		; 20 1D 30
	asl A		; 0A
	clc		; 18
	cop $0E.b		; 02 0E
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $1F1C.w		; 1C 1C 1F
	ora $070F0F.l,X		; 1F 0F 0F 07
	ora [$01.b]		; 07 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$F8.b		; E0 F8
	sed		; F8
	jsr ($BCFC.w,X)		; FC FC BC
	jsr ($FCF4.w,X)		; FC F4 FC
	jmp ($387C.w)		; 6C 7C 38
	sec		; 38
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	cld		; D8
	cpx #$F4.b		; E0 F4
	sed		; F8
	sty $78.b,X		; 94 78
	cpx $18.b		; E4 18
	jmp $3830.w		; 4C 30 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	bra  -4.b		; 80 FC
	ldy #$DA.b		; A0 DA
	dey		; 88
	inc $28.b,X		; F6 28
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $A0.b		; 00 A0
	brk $88.b		; 00 88
	bit $28.b		; 24 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $F312.w,X		; 1E 12 F3
	rti		; 40

	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $BF.b		; 00 BF
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $F9.b		; 00 F9
	brk $CF.b		; 00 CF
	sbc ($FA.b)		; F2 FA
	jsr ($FC7E.w,X)		; FC 7E FC
	jmp.w [$2438]		; DC 38 24
	cld		; D8
	sed		; F8
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $F2.b		; 00 F2
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $38.b		; 00 38
	brk $D8.b		; 00 D8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F7.b		; 00 F7
	ora [$FB.b]		; 07 FB
	adc $FDDFFF.l		; 6F FF DF FD
	cmp $C0DFFF.l,X		; DF FF DF C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $69.b		; 00 69
	ora [$DF.b]		; 07 DF
	ora $DF1ED1.l,X		; 1F D1 1E DF
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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B0.b		; 00 B0
	rti		; 40

	cli		; 58
	bmi  46.b		; 30 2E
	clc		; 18
	ora $0000.w,Y		; 19 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	sei		; 78
	brk $3E.b		; 00 3E
	asl $1F.b		; 06 1F
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
	brk $01.b		; 00 01
	eor $6300.w,Y		; 59 00 63
	and ($32.b,X)		; 21 32
	ora ($13.b),Y		; 11 13
	brk $1B.b		; 00 1B
	php		; 08
	clc		; 18
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	bpl  38.b		; 10 26
	ror $7D1D.w,X		; 7E 1D 7D
	ora $0C3D.w		; 0D 3D 0C
	trb $1C04.w		; 1C 04 1C
	ora [$1F.b]		; 07 1F
	ora $3F0F1F.l		; 0F 1F 0F 3F
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	cop $00.b		; 02 00
	jsl $023600.l		; 22 00 36 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($23.b,X)		; 01 23
	ora ($37.b,X)		; 01 37
	sta $008F80.l,X		; 9F 80 8F 00
	sta $808700.l		; 8F 00 87 80
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	sta [$80.b]		; 87 80
	rts		; 60

	cpx #$70.b		; E0 70
	beq 112.b		; F0 70
	beq 120.b		; F0 78
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sei		; 78
	sed		; F8
	adc $7FBFC7.l,X		; 7F C7 BF 7F
	sbc $33EE07.l,X		; FF 07 EE 33
	lda $70EF70.l,X		; BF 70 EF 70
	sbc $E07F60.l,X		; FF 60 7F E0
	sbc [$E7.b]		; E7 E7
	adc $07077F.l,X		; 7F 7F 07 07
	adc ($73.b,S),Y		; 73 73
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	cpx #$E0.b		; E0 E0
	xce		; FB
	trb $F0EF.w		; 1C EF F0
	adc $00FE80.l,X		; 7F 80 FE 00
	ldy $EC70.w		; AC 70 EC
	bvs 124.b		; 70 7C
	cpx #$DB.b		; E0 DB
.ACCU 8
.INDEX 8
	sep #$3C		; E2 3C
	bit $F8F8.w,X		; 3C F8 F8
	bra -128.b		; 80 80
	ora ($01.b,X)		; 01 01
	adc ($73.b,S),Y		; 73 73
	adc ($73.b,S),Y		; 73 73
	sbc ($F3.b,S),Y		; F3 F3
	cpx $E7.b		; E4 E7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$01.b]		; 07 01
	phd		; 0B
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora $0E0002.l		; 0F 02 00 0E
	brk $18.b		; 00 18
	php		; 08
	ora $040D02.l		; 0F 02 0D 04
	sta $D308.w,Y		; 99 08 D3
	bra 114.b		; 80 72
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora $001F07.l		; 0F 07 1F 00
	asl $0E02.w		; 0E 02 0E
	asl $9E.b		; 06 9E
	tsb $8DDC.w		; 0C DC 8D
	sbc $0000.w,X		; FD 00 00
	ora $0E00.w,Y		; 19 00 0E
	brk $06.b		; 00 06
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0F01.w,Y		; 19 01 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	sta $068B07.l,X		; 9F 07 8B 06
	adc $01C762.l		; 6F 62 C7 01
	adc $21.b,S		; 63 21
	eor $20.b,S		; 43 20
	bit $04.b		; 24 04
	inc $6702.w		; EE 02 67
	sbc [$76.b]		; E7 76
	inc $92.b,X		; F6 92
	sbc ($39.b)		; F2 39
	sbc $7D1D.w,Y		; F9 1D 7D
	trb $1B7C.w		; 1C 7C 1B
	and $36FF11.l,X		; 3F 11 FF 36
	clc		; 18
	adc $62.b,S		; 63 62
	sta $03.b		; 85 03
	stx $CD09.w		; 8E 09 CD
	php		; 08
	lsr $80.b		; 46 80
	sbc $82.b,S		; E3 82
	sbc ($80.b),Y		; F1 80
	cpy #$FE.b		; C0 FE
	stz $78FF.w		; 9C FF 78
	adc $307F70.l,X		; 7F 70 7F 30
	and $BEB8.w,X		; 3D B8 BE
	jmp.w [$8EDF]		; DC DF 8E
	sta $C00000.l		; 8F 00 00 C0
	brk $80.b		; 00 80
	brk $8C.b		; 00 8C
	brk $18.b		; 00 18
	brk $28.b		; 00 28
	bpl  40.b		; 10 28
	bpl -100.b		; 10 9C
	php		; 08
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $8C.b		; 00 8C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $9C.b		; 00 9C
	stz $3310.w		; 9C 10 33
	and ($23.b,X)		; 21 23
	brk $20.b		; 00 20
	brk $1C.b		; 00 1C
	brk $0B.b		; 00 0B
	tsb $1991.w		; 0C 91 19
	cpy #$00.b		; C0 00
	adc $7F.b,S		; 63 7F
	cpy #$F3.b		; C0 F3
	cpy #$E3.b		; C0 E3
	cpy #$E0.b		; C0 E0
	cpx #$FC.b		; E0 FC
	beq  -1.b		; F0 FF
	ror $7F.b		; 66 7F
	and $80C03F.l,X		; 3F 3F C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bcc   0.b		; 90 00
	pla		; 68
	bpl   0.b		; 10 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bcc -128.b		; 90 80
	sed		; F8
	brk $00.b		; 00 00
	tsb $1600.w		; 0C 00 16
	tsb $0B.b		; 04 0B
	cop $08.b		; 02 08
	brk $0C.b		; 00 0C
	tsb $0C.b		; 04 0C
	brk $1D.b		; 00 1D
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	tsb $1E08.w		; 0C 08 1E
	tsb $0F.b		; 04 0F
	ora [$0F.b]		; 07 0F
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	cop $1E.b		; 02 1E
	trb $3F00.w		; 1C 00 3F
	asl $20EE.w,X		; 1E EE 20
	phb		; 8B
	stx $3838.w		; 8E 38 38
	brk $00.b		; 00 00
	ora $00BF00.l		; 0F 00 BF 00
	ora $1F.b,S		; 03 1F
	brk $3F.b		; 00 3F
	bpl  -2.b		; 10 FE
	bvs  -1.b		; 70 FF
	cmp [$FF.b]		; C7 FF
	sbc $F0F0FF.l,X		; FF FF F0 F0
	rti		; 40

	rti		; 40

	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $71EF0D.l		; 6F 0D EF 71
	adc ($81.b)		; 72 81
	cmp ($00.b,X)		; C1 00
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl 127.b		; 10 7F
	brk $FF.b		; 00 FF
	brk $F3.b		; 00 F3
	brk $C1.b		; 00 C1
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $3511.w		; 2D 11 35
	clc		; 18
	ora $0B0C.w,X		; 1D 0C 0B
	cop $0A.b		; 02 0A
	brk $04.b		; 00 04
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	and $023F02.l,X		; 3F 02 3F 02
	ora $040F04.l,X		; 1F 04 0F 04
	asl $0400.w		; 0E 00 04
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora [$80.b]		; 07 80
	ora [$80.b]		; 07 80
	cmp [$40.b]		; C7 40
	lsr $01.b		; 46 01
	eor [$01.b]		; 47 01
	eor [$01.b]		; 47 01
	cmp $A36D01.l		; CF 01 6D A3
	sei		; 78
	sed		; F8
	sei		; 78
	sed		; F8
	sec		; 38
	sed		; F8
	and $3979.w,Y		; 39 79 39
	adc $7939.w,Y		; 79 39 79
	and ($F1.b),Y		; 31 F1
	ora ($F3.b,S),Y		; 13 F3
	cmp $C1FEE0.l,X		; DF E0 FE C1
	sbc $C3BDC1.l,X		; FF C1 BD C3
	sbc $87FA83.l,X		; FF 83 FA 87
	adc $0EF586.l,X		; 7F 86 F5 0E
	sbc ($E1.b,X)		; E1 E1
	sbc ($E1.b,X)		; E1 E1
	cmp ($C1.b,X)		; C1 C1
	cmp $C3.b,S		; C3 C3
	cmp $C3.b,S		; C3 C3
	sta [$87.b]		; 87 87
	stx $86.b		; 86 86
	stx $F98E.w		; 8E 8E F9
	cpy #$B1.b		; C0 B1
	cpy #$F3.b		; C0 F3
	.db $82, $62, $80		; 82 62 80
	sep #$00		; E2 00
	dec $04.b		; C6 04
	cmp $02.b,S		; C3 02
	cmp #$08.b		; C9 08
	inc $E7.b		; E6 E7
	dec $8CCF.w		; CE CF 8C
	sta $1C9E9C.l		; 8F 9C 9E 1C
	asl $3E38.w,X		; 1E 38 3E
	bit $363F.w,X		; 3C 3F 36
	and $11000F.l,X		; 3F 0F 00 11
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $41.b		; 00 41
	brk $43.b		; 00 43
	brk $66.b		; 00 66
	cop $E4.b		; 02 E4
	rti		; 40

	brk $0F.b		; 00 0F
	brk $11.b		; 00 11
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $41.b		; 00 41
	brk $43.b		; 00 43
	ora ($67.b,X)		; 01 67
	ora $E7.b,S		; 03 E7
	and $33.b		; 25 33
	ora [$13.b],Y		; 17 13
	stx $9D87.w		; 8E 87 9D
	stx $3F.b		; 86 3F
	php		; 08
	phy		; 5A
	bit $70AC.w		; 2C AC 70
	sbc $79.b,X		; F5 79
	wai		; CB
	xce		; FB
	xba		; EB
	xce		; FB
	adc [$F7.b],Y		; 77 F7
	ror $E6.b		; 66 E6
	cld		; D8
	cld		; D8
	lda $73AD.w		; AD AD 73
	adc ($7A.b,S),Y		; 73 7A
	tda		; 7B
	ora [$00.b]		; 07 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plb		; AB
	cmp ($E9.b,X)		; C1 E9
	rts		; 60

	eor $3010.w,Y		; 59 10 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	xce		; FB
	bpl  -7.b		; 10 F9
	jsr $0079.w		; 20 79 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D8.b		; 00 D8
	jsr $60FC.w		; 20 FC 60
	sbc $E601.w,X		; FD 01 E6
	clc		; 18
	tad		; 5B
	bit $1E6D.w,X		; 3C 6D 1E
	and $0F160E.l,X		; 3F 0E 16 0F
	and [$27.b]		; 27 27
	sbc $E3.b,S		; E3 E3
	.db $42, $43		; 42 43
	ora $BC19.w,Y		; 19 19 BC
	ldy $9E9E.w,X		; BC 9E 9E
	dec $EFCE.w		; CE CE EF
	sbc $1C88FC.l		; EF FC 88 1C
	php		; 08
	jsr ($FC38.w,X)		; FC 38 FC
	dey		; 88
	jmp $6000.w		; 4C 00 60
	rti		; 40

	bcs  32.b		; B0 20
	stz $0000.w,X		; 9E 00 00
	jsr ($FCE0.w,X)		; FC E0 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	bra -52.b		; 80 CC
	bra -32.b		; 80 E0
	rti		; 40

	bvs  96.b		; 70 60
	ror $03E3.w,X		; 7E E3 03
	sbc ($00.b),Y		; F1 00
	adc $BD80.w,Y		; 79 80 BD
	cpy #$DD.b		; C0 DD
	sbc ($6E.b,X)		; E1 6E
	beq -66.b		; F0 BE
	bvs -42.b		; 70 D6
	sec		; 38
	trb $0E1F.w		; 1C 1F 0E
	ora $C28786.l		; 0F 86 87 C2
	cmp $E2.b,S		; C3 E2
	sbc $F1.b,S		; E3 F1
	sbc ($79.b),Y		; F1 79
	adc $3939.w,Y		; 79 39 39
	inx		; E8
	bvc -80.b		; 50 B0
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra  88.b		; 80 58
	brk $00.b		; 00 00
	sed		; F8
	brk $F0.b		; 00 F0
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -40.b		; 80 D8
	ora $40CF03.l		; 0F 03 CF 40
	ora $8B02.w		; 0D 02 8B
	sta [$1B.b]		; 87 1B
	ora [$1F.b]		; 07 1F
	brk $35.b		; 00 35
	asl $0C77.w		; 0E 77 0C
	sbc ($F3.b,S),Y		; F3 F3
	bmi -16.b		; 30 F0
	inc $F6.b,X		; F6 F6
	adc [$F7.b],Y		; 77 F7
	sbc [$E7.b]		; E7 E7
	cpx #$E0.b		; E0 E0
	dec $8ECE.w		; CE CE 8E
	stx $0CFF.w		; 8E FF 0C
	sbc $1CEB0C.l,X		; FF 0C EB 1C
	sbc $00FF18.l		; EF 18 FF 00
	inc $DB18.w,X		; FE 18 DB
	bit $18EF.w,X		; 3C EF 18
	asl $0C0E.w		; 0E 0E 0C
	tsb $1C1C.w		; 0C 1C 1C
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	and $3C3D.w,X		; 3D 3D 3C
	bit $1818.w,X		; 3C 18 18
	ldy $14.b,X		; B4 14
	sty $00.b,X		; 94 00
	asl $00.b,X		; 16 00
	adc $003F1D.l,X		; 7F 1D 3F 00
	sta ($00.b,X)		; 81 00
	cmp ($80.b,X)		; C1 80
	eor ($80.b,X)		; 41 80
	phd		; 0B
	lda $099F0B.l,X		; BF 0B 9F 09
	ora $007F00.l,X		; 1F 00 7F 00
	and $008100.l,X		; 3F 00 81 00
	cmp ($00.b,X)		; C1 00
	cmp ($FB.b,X)		; C1 FB
	trb $0C7F.w		; 1C 7F 0C
	and $071A06.l,X		; 3F 06 1A 07
	ora $818703.l		; 0F 03 87 81
	.db $82, $81, $DB		; 82 81 DB
	tya		; 98
	trb $9E1C.w		; 1C 1C 9E
	stz $CECE.w,X		; 9E CE CE
	sbc [$E7.b]		; E7 E7
	sbc ($F3.b,S),Y		; F3 F3
	tda		; 7B
	xce		; FB
	adc $24FD.w,X		; 7D FD 24
	jsr ($0000.w,X)		; FC 00 00
	and $3C4C00.l,X		; 3F 00 4C 3C
	rol $4240.w,X		; 3E 40 42
	brk $82.b		; 00 82
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $017F03.l,X		; 3F 03 7F 01
	adc $014301.l,X		; 7F 01 43 01
	sta $01.b,S		; 83 01
	ora $00.b,S		; 03 00
	ora ($33.b,X)		; 01 33
	bpl  35.b		; 10 23
	brk $B7.b		; 00 B7
	bpl -73.b		; 10 B7
	bpl -25.b		; 10 E7
	jsr $40C7.w		; 20 C7 40
	lda ($B0.b,S),Y		; B3 B0
	sbc ($50.b,S),Y		; F3 50
	tsb $1C3C.w		; 0C 3C 1C
	bit $B808.w,X		; 3C 08 B8
	php		; 08
	clv		; B8
	clc		; 18
	sed		; F8
	sec		; 38
	sed		; F8
	jmp $0CFC.w		; 4C FC 0C
	jsr ($00FF.w,X)		; FC FF 00
	sbc $BF1E.w		; ED 1E BF
	adc $7F7FFF.l,X		; 7F FF 7F 7F
	sbc $FF8CFF.l,X		; FF FF 8C FF
	stz $8CFF.w,X		; 9E FF 8C
	brk $00.b		; 00 00
	asl $7F1E.w,X		; 1E 1E 7F
	adc $FF7F7F.l,X		; 7F 7F 7F FF
	sbc $BF8C8C.l,X		; FF 8C 8C BF
	lda $E48C8C.l,X		; BF 8C 8C E4
	brk $E4.b		; 00 E4
	brk $72.b		; 00 72
	bra -15.b		; 80 F1
	bra -79.b		; 80 B1
	cmp ($F0.b,X)		; C1 F0
	rti		; 40

	beq  64.b		; F0 40
	beq  64.b		; F0 40
	clc		; 18
	trb $1C18.w		; 1C 18 1C
	sty $8E8E.w		; 8C 8E 8E
	sta $4FCFCE.l		; 8F CE CF 4F
	eor $4F4F4F.l		; 4F 4F 4F 4F
	eor $2E1537.l		; 4F 37 15 2E
	ora $001C.w,Y		; 19 1C 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $02.b		; 05 02
	php		; 08
	and $033F00.l,X		; 3F 00 3F 03
	ora $000300.l,X		; 1F 00 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora [$1D.b]		; 07 1D
	phd		; 0B
	stx $8B.b,Y		; 96 8B
	tas		; 1B
	asl $15.b		; 06 15
	asl $8C9B.w		; 0E 9B 8C
	cmp $004F40.l,X		; DF 40 4F 00
	eor [$00.b]		; 47 00
	sbc $EB6BEF.l		; EF EF 6B EB
	inc $EEEE.w		; EE EE EE
	inc $EC6C.w		; EE 6C EC
	jsr $30E0.w		; 20 E0 30
	bvs  56.b		; 70 38
	sei		; 78
	adc $BF.b,S		; 63 BF
	sbc $16FF1C.l,X		; FF 1C FF 16
	sbc $EB.b,X		; F5 EB
	sbc [$0C.b],Y		; F7 0C
	sbc $06FB00.l,X		; FF 00 FB 06
	sbc $BF06.w,Y		; F9 06 BF
	lda $161C1C.l,X		; BF 1C 1C 16
	asl $EB.b,X		; 16 EB
	xba		; EB
	tsb $000C.w		; 0C 0C 00
	brk $06.b		; 00 06
	asl $06.b		; 06 06
	asl $D6.b		; 06 D6
	clv		; B8
	inc $18.b,X		; F6 18
	ldx $E458.w		; AE 58 E4
	tya		; 98
	jsr ($F800.w,X)		; FC 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $BD.b		; 00 BD
	lda $1919.w,X		; BD 19 19
	eor $9B59.w,Y		; 59 59 9B
	txy		; 9B
	tas		; 1B
	tas		; 1B
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $000800.l,X		; 1F 00 08 00
	ora [$01.b]		; 07 01
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $1F.b		; 00 1F
	ora [$0F.b]		; 07 0F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	rts		; 60

	bra -27.b		; 80 E5
	ora $D9.b		; 05 D9
	trb $95.b		; 14 95
	brk $35.b		; 00 35
	jsr $042D.w		; 20 2D 04
	pld		; 2B
	ora [$27.b]		; 07 27
	brk $9F.b		; 00 9F
	sta $229F9A.l,X		; 9F 9A 9F 22
	and $C27762.l,X		; 3F 62 77 C2
	sbc [$C2.b],Y		; F7 C2
	sbc $C0EFC0.l		; EF C0 EF C0
	sbc [$FD.b]		; E7 FD
	beq  -5.b		; F0 FB
	adc ($FA.b)		; 72 FA
	bvc -14.b		; 50 F2
	ldy #$F2.b		; A0 F2
	rti		; 40

	cpx $00.b		; E4 00
	cpy $00.b		; C4 00
	tsb $10.b		; 04 10
	sbc ($F3.b)		; F2 F3
	stz $77.b,X		; 74 77
	mvn $AC,$56		; 54 56 AC
	ldx $4E4C.w		; AE 4C 4E
	clc		; 18
	trb $3C38.w		; 1C 38 3C
	inx		; E8
	jsr ($A0B0.w,X)		; FC B0 A0
	bne   0.b		; D0 00
	bvs  32.b		; 70 20
	bvc  32.b		; 50 20
	rts		; 60

	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	beq  32.b		; F0 20
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	rts		; 60

	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rtl		; 6B

	trb $18FF.w		; 1C FF 18
	dec $38.b,X		; D6 38
	inc $AC30.w,X		; FE 30 AC
	bvs  -4.b		; 70 FC
	rts		; 60

	cld		; D8
	cpx #$B0.b		; E0 B0
	cpy #$9C.b		; C0 9C
	stz $1C1C.w		; 9C 1C 1C
	and $7939.w,Y		; 39 39 79
	adc $7373.w,Y		; 79 73 73
	sbc ($F3.b,S),Y		; F3 F3
	sbc [$E7.b]		; E7 E7
	cmp $027DCF.l		; CF CF 7D 02
	ror $0F.b,X		; 76 0F
	tsa		; 3B
	ora [$1D.b]		; 07 1D
	ora $8E.b,S		; 03 8E
	sta ($87.b,X)		; 81 87
	bra -61.b		; 80 C3
	brk $A1.b		; 00 A1
	brk $82.b		; 00 82
	.db $82, $8F, $8F		; 82 8F 8F
	cmp [$C7.b]		; C7 C7
	sbc $E3.b,S		; E3 E3
	adc ($F1.b),Y		; 71 F1
	sei		; 78
	sed		; F8
	bit $1EFC.w,X		; 3C FC 1E
	ldx $00C1.w,Y		; BE C1 00
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C1.b		; 00 C1
	brk $81.b		; 00 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $4988.w,Y		; 79 88 49
	bra -56.b		; 80 C8
	brk $C4.b		; 00 C4
	brk $63.b		; 00 63
	brk $21.b		; 00 21
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	inc $CE06.w,X		; FE 06 CE
	ora [$CF.b]		; 07 CF
	ora $C7.b,S		; 03 C7
	brk $63.b		; 00 63
	brk $21.b		; 00 21
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	asl $0303.w		; 0E 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $000300.l		; 0F 00 03 00
	ora ($69.b,X)		; 01 69
	clc		; 18
	ora ($00.b),Y		; 11 00
	ora ($00.b),Y		; 11 00
	bpl   0.b		; 10 00
	tya		; 98
	php		; 08
	stz $9C.b		; 64 9C
	ora ($00.b,X)		; 01 00
	sta [$80.b]		; 87 80
	asl $7E.b		; 06 7E
	asl $0E1E.w		; 0E 1E 0E
	asl $1F0F.w,X		; 1E 0F 1F
	ora [$9F.b]		; 07 9F
	ora $FF.b,S		; 03 FF
	inc $78FE.w,X		; FE FE 78
	sed		; F8
	adc $5EEDFF.l,X		; 7F FF ED 5E
	lda $21DE40.l,X		; BF 40 DE 21
	sbc $007F1E.l,X		; FF 1E 7F 00
	lda [$7A.b],Y		; B7 7A
	sbc $FF6A.w,X		; FD 6A FF
	sbc $405E5E.l,X		; FF 5E 5E 40
	rti		; 40

	and ($21.b,X)		; 21 21
	asl $801E.w,X		; 1E 1E 80
	bra 122.b		; 80 7A
	ply		; 7A
	ror A		; 6A
	ror A		; 6A
	lda ($C1.b),Y		; B1 C1
	sbc [$84.b],Y		; F7 84
	adc $80.b,S		; 63 80
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	jsr ($6E00.w,X)		; FC 00 6E
	beq  -5.b		; F0 FB
	ldy $CE.b,X		; B4 CE
	cmp $9C8F88.l		; CF 88 8F 9C
	sta $3F3F3F.l,X		; 9F 3F 3F 3F
	and $F10303.l,X		; 3F 03 03 F1
	sbc ($B4.b),Y		; F1 B4
	ldy $07.b,X		; B4 07
	cop $3F.b		; 02 3F
	cop $6F.b		; 02 6F
	inc A		; 1A
	ora $0500.w,Y		; 19 00 05
	ora ($04.b,X)		; 01 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	and $067F00.l,X		; 3F 00 7F 06
	ora $030702.l,X		; 1F 02 07 03
	ora [$03.b]		; 07 03
	ora [$03.b]		; 07 03
	ora [$47.b]		; 07 47
	brk $8F.b		; 00 8F
	brk $9F.b		; 00 9F
	brk $9F.b		; 00 9F
	brk $BE.b		; 00 BE
	ora ($BD.b,X)		; 01 BD
	sta $7F.b,S		; 83 7F
	ora $7F.b,S		; 03 7F
	ora $38.b,S		; 03 38
	sei		; 78
	bvs -16.b		; 70 F0
	rts		; 60

	cpx #$60.b		; E0 60
	cpx #$41.b		; E0 41
	cmp ($43.b,X)		; C1 43
	cmp $83.b,S		; C3 83
	sta $83.b,S		; 83 83
	sta $FF.b,S		; 83 FF
	brk $FB.b		; 00 FB
	asl $F9.b		; 06 F9
	asl $6E.b		; 06 6E
	sbc ($FF.b),Y		; F1 FF
	sbc $FF9CFF.l,X		; FF FF 9C FF
	trb $1CFF.w		; 1C FF 1C
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	sbc ($F1.b),Y		; F1 F1
	sbc $9C9CFF.l,X		; FF FF 9C 9C
	trb $1C1C.w		; 1C 1C 1C
	trb $00F8.w		; 1C F8 00
	jsr ($FC00.w,X)		; FC 00 FC
	brk $FE.b		; 00 FE
	cpy #$FE.b		; C0 FE
	cpx #$EF.b		; E0 EF
	beq  -1.b		; F0 FF
	bvs  -1.b		; 70 FF
	bvs   7.b		; 70 07
	ora [$03.b]		; 07 03
	ora $03.b,S		; 03 03
	ora $C1.b,S		; 03 C1
	cmp ($E1.b,X)		; C1 E1
	sbc ($F0.b,X)		; E1 F0
	beq 112.b		; F0 70
	bvs 112.b		; 70 70
	bvs  56.b		; 70 38
	jsr $0028.w		; 20 28 00
	rts		; 60

	rti		; 40

	rti		; 40

	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	sei		; 78
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	sed		; F8
	cpy #$E8.b		; C0 E8
	bra -32.b		; 80 E0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	cmp $88D914.l,X		; DF 14 D9 88
	cmp $90.b,X		; D5 90
	cmp $02DF02.l		; CF 02 DF 02
	sta $02.b,X		; 95 02
	and $22.b,X		; 35 22
	jsl $3F2000.l		; 22 00 20 3F
	ldx $BF.b		; A6 BF
	tax		; AA
	lda $203F30.l,X		; BF 30 3F 20
	and $C07760.l,X		; 3F 60 77 C0
	sbc [$C0.b],Y		; F7 C0
.ACCU 8
	sep #$22		; E2 22
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $A0.b		; 00 A0
	brk $E0.b		; 00 E0
	rti		; 40

	bvs  32.b		; 70 20
	sec		; 38
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	sep #$C0		; E2 C0
	cpx #$C0.b		; E0 C0
	cpx #$40.b		; E0 40
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	bvs   0.b		; 70 00
	sec		; 38
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
	ora $00.b,S		; 03 00
	ora $01.b		; 05 01
	txy		; 9B
	cop $F3.b		; 02 F3
	sta ($07.b,S),Y		; 93 07
	tsb $06.b		; 04 06
	tsb $E2.b		; 04 E2
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	sta $F8FF0C.l,X		; 9F 0C FF F8
	sbc $1CFEF8.l,X		; FF F8 FE 1C
	asl $0080.w,X		; 1E 80 00
	brk $00.b		; 00 00
	bcc   0.b		; 90 00
	tya		; 98
	brk $D8.b		; 00 D8
	bra -72.b		; 80 B8
	bpl -104.b		; 10 98
	bpl  88.b		; 10 58
	bpl   0.b		; 10 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bcc   0.b		; 90 00
	tya		; 98
	brk $D8.b		; 00 D8
	rti		; 40

	sed		; F8
	rts		; 60

	sed		; F8
	jsr $5078.w		; 20 78 50
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B8.b		; 00 B8
	brk $C4.b		; 00 C4
	clc		; 18
	ldx $20.b,Y		; B6 20
	.db $62, $40, $20		; 62 40 20
	bvs   0.b		; 70 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $B8.b		; 00 B8
	jsr $40FC.w		; 20 FC 40
	inc $80.b,X		; F6 80
	sep #$40		; E2 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $C1.b		; 00 C1
	brk $67.b		; 00 67
	rti		; 40

	rol $20.b,X		; 36 20
	inc A		; 1A
	trb $2E.b		; 14 2E
	bit $00.b		; 24 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cmp ($80.b,X)		; C1 80
	sbc [$C0.b]		; E7 C0
	inc $E0.b,X		; F6 E0
	inc $FED0.w,X		; FE D0 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	iny		; C8
	bmi -83.b		; 30 AD
	clc		; 18
	asl $1C08.w,X		; 1E 08 1C
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	brk $BD.b		; 00 BD
	ora ($1F.b,X)		; 01 1F
	ora $1F.b,S		; 03 1F
	cmp $009F40.l		; CF 40 9F 00
	txy		; 9B
	asl $D7.b		; 06 D7
	lsr $0E97.w		; 4E 97 0E
	ora $061D06.l,X		; 1F 06 1D 06
	sta $3086.w		; 8D 86 30
	beq  96.b		; F0 60
	cpx #$66.b		; E0 66
	inc $2E.b		; E6 2E
	inc $EE6E.w		; EE 6E EE
	inc $E6.b		; E6 E6
	inc $E6.b		; E6 E6
	ror $F6.b,X		; 76 F6
	lda $B24F60.l,X		; BF 60 4F B2
	sbc $B7DF86.l,X		; FF 86 DF B7
	adc $66BFB6.l		; 6F B6 BF 66
	cmp ($6F.b),Y		; D1 6F
	adc $6060CE.l,X		; 7F CE 60 60
	lda ($B2.b)		; B2 B2
	stx $86.b		; 86 86
	lda [$B7.b],Y		; B7 B7
	ldx $B6.b,Y		; B6 B6
	ror $66.b		; 66 66
	adc $CECE6F.l		; 6F 6F CE CE
	sbc $9F36.w		; ED 36 9F
	ror $FF.b		; 66 FF
	stx $2B.b		; 86 2B
	ldx $1F.b,Y		; B6 1F
	lda ($B7.b)		; B2 B7
	phx		; DA
	sbc $1A.b,X		; F5 1A
	sbc $363618.l		; EF 18 36 36
	ror $66.b		; 66 66
	stx $86.b		; 86 86
	ror $36.b,X		; 76 36
	ror $36.b,X		; 76 36
	stz $1A9E.w,X		; 9E 9E 1A
	inc A		; 1A
	inc A		; 1A
	inc A		; 1A
	rol $3C18.w,X		; 3E 18 3C
	php		; 08
	ldy $A400.w		; AC 00 A4
	brk $B0.b		; 00 B0
	jsr $10B8.w		; 20 B8 10
	ldy #$00.b		; A0 00
	jsr $C000.w		; 20 00 C0
	inc $FCC0.w,X		; FE C0 FC
	rti		; 40

	jmp ($6440.w)		; 6C 40 64
	rti		; 40

	bvs  64.b		; 70 40
	sei		; 78
	rti		; 40

	rts		; 60

	cpy #$E0.b		; C0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	cpy $00.b		; C4 00
	sty $00.b		; 84 00
	tsb $3808.w		; 0C 08 38
	jsr $80E0.w		; 20 E0 80
	rts		; 60

	rti		; 40

	beq  32.b		; F0 20
	bcs   0.b		; B0 00
	sec		; 38
	bit $7C78.w,X		; 3C 78 7C
	beq  -4.b		; F0 FC
	cpy #$F8.b		; C0 F8
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	brk $F0.b		; 00 F0
	brk $B0.b		; 00 B0
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $18.b		; 00 18
	brk $F0.b		; 00 F0
	brk $60.b		; 00 60
	cpy #$00.b		; C0 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $18.b		; 00 18
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	rti		; 40

	brk $60.b		; 00 60
	rti		; 40

	jsr $F000.w		; 20 00 F0
	ldy #$68.b		; A0 68
	bpl  88.b		; 10 58
	brk $48.b		; 00 48
	brk $41.b		; 00 41
	brk $80.b		; 00 80
	cpy #$80.b		; C0 80
	cpx #$C0.b		; E0 C0
	cpx #$00.b		; E0 00
	beq -128.b		; F0 80
	sed		; F8
	bra -40.b		; 80 D8
	bra -56.b		; 80 C8
	bra -63.b		; 80 C1
	cmp ($80.b,X)		; C1 80
	sbc ($00.b,S),Y		; F3 00
	ror $60.b,X		; 76 60
	asl $0114.w,X		; 1E 14 01
	cop $4D.b		; 02 4D
	jmp ($233D.w,X)		; 7C 3D 23
	sta ($00.b,S),Y		; 93 00
	brk $C1.b		; 00 C1
	brk $F3.b		; 00 F3
	bra -10.b		; 80 F6
	cpx #$FE.b		; E0 FE
	jsr ($82FF.w,X)		; FC FF 82
	sbc $60FFC0.l,X		; FF C0 FF 60
	adc ($41.b,S),Y		; 73 41
	sta [$A3.b],Y		; 97 A3
	cmp $EAEFD3.l		; CF D3 EF EA
	inc $78.b,X		; F6 78
	jsr ($7DB8.w,X)		; FC B8 7D
	ora $0CFD.w,X		; 1D FD 0C
	and $00E3.w,X		; 3D E3 00
	sbc ($00.b,S),Y		; F3 00
	sbc ($00.b,S),Y		; F3 00
	plx		; FA
	ora ($F8.b,X)		; 01 F8
	ora $F9.b,S		; 03 F9
	cop $3D.b		; 02 3D
	cop $1D.b		; 02 1D
	cop $86.b		; 02 86
	stx $69.b		; 86 69
	adc $AC7B37.l		; 6F 37 7B AC
	sbc ($9F.b,S),Y		; F3 9F
	cpx #$10.b		; E0 10
	cpx #$1C.b		; E0 1C
	stz $3FAF.w		; 9C AF 3F
	stx $79.b		; 86 79
	adc $807F90.l		; 6F 90 7F 80
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00E300.l,X		; FF 00 E3 00
	cpy #$00.b		; C0 00
	tya		; 98
	stz $54.b,X		; 74 54
	tsx		; BA
	plp		; 28
	eor $0B2F14.l,X		; 5F 14 2F 0B
	ora [$02.b],Y		; 17 02
	ora $011F06.l,X		; 1F 06 1F 01
	ora $7C00F8.l		; 0F F8 00 7C
	brk $3C.b		; 00 3C
	brk $1D.b		; 00 1D
	brk $0B.b		; 00 0B
	brk $02.b		; 00 02
	brk $0E.b		; 00 0E
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$80.b		; C0 80
	cpx #$80.b		; E0 80
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $0B.b		; 04 0B
	ora $090C.w		; 0D 0C 09
	ora #$0D.b		; 09 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb $1B.b		; 04 1B
	ora $300F30.l		; 0F 30 0F 30
	asl $0010.w		; 0E 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	ldy #$60.b		; A0 60
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	ldy #$40.b		; A0 40
	cpx #$18.b		; E0 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $85.b		; 85 85
	bit $E5.b		; 24 E5
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $87.b		; 00 87
	brk $EF.b		; 00 EF
	sta $7A.b		; 85 7A
	sbc $1A.b		; E5 1A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $6020.w		; 20 20 60
	cpx #$A0.b		; E0 A0
	cpx #$20.b		; E0 20
	cpx #$B0.b		; E0 B0
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	jsr $F000.w		; 20 00 F0
	jsr $E0D8.w		; 20 D8 E0
	bpl -32.b		; 10 E0
	bpl -32.b		; 10 E0
	bpl -16.b		; 10 F0
	php		; 08
	adc #$88.b		; 69 88
	lsr A		; 4A
	inc A		; 1A
	eor $3C017E.l		; 4F 7E 01 3C
	ora $AE7D.w		; 0D 7D AE
	jsr ($ED2D.w,X)		; FC 2D ED
	cop $E3.b		; 02 E3
	sbc [$00.b],Y		; F7 00
	sbc $00.b		; E5 00
	sta ($00.b,X)		; 81 00
	cmp $00.b,S		; C3 00
	sta $00.b,S		; 83 00
	cop $01.b		; 02 01
	ora $02.b,X		; 15 02
	tas		; 1B
	tsb $40.b		; 04 40
	cpy #$A0.b		; C0 A0
	rts		; 60

	rts		; 60

	cpx #$C0.b		; E0 C0
	cpy #$80.b		; C0 80
	bra  16.b		; 80 10
	bpl  96.b		; 10 60
	beq  16.b		; F0 10
	beq -64.b		; F0 C0
	bmi -32.b		; 30 E0
	clc		; 18
	cpx #$1C.b		; E0 1C
	cpy #$38.b		; C0 38
	bra 112.b		; 80 70
	bpl -24.b		; 10 E8
	beq  12.b		; F0 0C
	beq  12.b		; F0 0C
	lda $FA3FFF.l,X		; BF FF 3F FA
	asl $50F5.w,X		; 1E F5 50
	lda ($40.b,X)		; A1 40
	ldy #$A0.b		; A0 A0
	cpy $80.b		; C4 80
	cpx #$60.b		; E0 60
	cmp ($BF.b),Y		; D1 BF
	brk $7F.b		; 00 7F
	brk $7E.b		; 00 7E
	brk $70.b		; 00 70
	asl $1F60.w		; 0E 60 1F
	jsr $C01B.w		; 20 1B C0
	ora $F80EE1.l,X		; 1F E1 0E F8
	ror $AFDD.w,X		; 7E DD AF
	sty $0176.w		; 8C 76 01
	cmp [$00.b]		; C7 00
	.db $82, $01, $93		; 82 01 93
	ora ($83.b,X)		; 01 83
	ora ($C7.b,X)		; 01 C7
	sbc $DC00.w,X		; FD 00 DC
	brk $8D.b		; 00 8D
	brk $05.b		; 00 05
	sec		; 38
	brk $7D.b		; 00 7D
	sta ($6C.b,X)		; 81 6C
	sta ($7C.b,X)		; 81 7C
	cmp $38.b,S		; C3 38
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	asl $010F.w		; 0E 0F 01
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	asl $0F.b		; 06 0F
	bpl   3.b		; 10 03
	tsb $0601.w		; 0C 01 06
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($E0.b),Y		; 11 E0
	jmp $8E6E9C.l		; 5C 9C 6E 8E
	sta ($1F.b,S),Y		; 93 1F
	sei		; 78
	sbc $B09F1C.l,X		; FF 1C 9F B0
	sbc $FF5F18.l,X		; FF 18 5F FF
	brk $E3.b		; 00 E3
	brk $F1.b		; 00 F1
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	bra -128.b		; 80 80
	ldx $5D40.w,Y		; BE 40 5D
	brk $7E.b		; 00 7E
	brk $9E.b		; 00 9E
	bra  78.b		; 80 4E
	brk $CC.b		; 00 CC
	brk $DD.b		; 00 DD
	ora ($18.b,X)		; 01 18
	eor ($00.b,X)		; 41 00
	rts		; 60

	.db $82, $82, $01		; 82 82 01
	.db $82, $61, $CA		; 82 61 CA
	and ($48.b),Y		; 31 48
	and ($45.b,S),Y		; 33 45
	jsl $00E609.l		; 22 09 E6 00
	.db $42, $00		; 42 00
	.db $42, $00		; 42 00
	cpx $25C1.w		; EC C1 25
	sbc ($14.b,X)		; E1 14
	cmp ($2D.b,X)		; C1 2D
	ldy #$4C.b		; A0 4C
	cop $82.b		; 02 82
	eor ($BC.b,X)		; 41 BC
	bra  61.b		; 80 3D
	jsr $E113.w		; 20 13 E1
	inc A		; 1A
	sbc ($0A.b),Y		; F1 0A
	iny		; C8
	ora ($A8.b)		; 12 A8
	ora ($02.b,S),Y		; 13 02
	adc $1708.w,X		; 7D 08 17
	brk $0F.b		; 00 0F
	ora ($06.b,X)		; 01 06
	cop $05.b		; 02 05
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0000.w		; 0E 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	lda $05FF83.l,X		; BF 83 FF 05
	jsr ($7DCC.w,X)		; FC CC 7D
	dec A		; 3A
	sbc $F50A.w,Y		; F9 0A F5
	and ($46.b,X)		; 21 46
	tsb $37.b		; 04 37
	rti		; 40

	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $83.b		; 00 83
	brk $87.b		; 00 87
	brk $3B.b		; 00 3B
	brk $25.b		; 00 25
	clc		; 18
	asl $08.b,X		; 16 08
	ora ($0F.b,X)		; 01 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	sed		; F8
	rti		; 40

	sed		; F8
	bpl -12.b		; 10 F4
	bpl  -4.b		; 10 FC
	clc		; 18
	ply		; 7A
	clc		; 18
	ror $3E1C.w,X		; 7E 1C 3E
	php		; 08
	and $D00060.l,X		; 3F 60 00 D0
	brk $D8.b		; 00 D8
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	ora $1D11.w,Y		; 19 11 1D
	and $170E23.l,X		; 3F 23 0E 17
	bit $3F.b		; 24 3F
	cop $7D.b		; 02 7D
	sta $DFBFF7.l		; 8F F7 BF DF
	asl $1E00.w,X		; 1E 00 1E
	rts		; 60

	bit $1840.w,X		; 3C 40 18
	jsr $0038.w		; 20 38 00
	eor ($00.b,S),Y		; 53 00
	sta $00BF00.l		; 8F 00 BF 00
	tay		; A8
	cld		; D8
	mvn $72,$8C		; 54 8C 72
	inc $E43C.w		; EE 3C E4
	inc A		; 1A
	inc $A2.b,X		; F6 A2
	dec $F5CA.w,X		; DE CA F5
	sbc ($FE.b,S),Y		; F3 FE
	sei		; 78
	asl $7C.b		; 06 7C
	ora $1E.b,S		; 03 1E
	ora ($1C.b,X)		; 01 1C
	ora $0E.b,S		; 03 0E
	ora ($E6.b,X)		; 01 E6
	ora ($FB.b,X)		; 01 FB
	brk $F9.b		; 00 F9
	brk $C4.b		; 00 C4
	eor [$6D.b]		; 47 6D
	ror $ECA9.w		; 6E A9 EC
	rol $78.b		; 26 78
	tsb $A970.w		; 0C 70 A9
	bne -66.b		; D0 BE
	cmp $2D.b		; C5 2D
	cpy $38C7.w		; CC C7 38
	sbc $10EF10.l		; EF 10 EF 10
	adc $807F80.l,X		; 7F 80 7F 80
	sbc $00FB00.l,X		; FF 00 FB 00
	sbc ($00.b,S),Y		; F3 00
	bcs 112.b		; B0 70
	bcc 112.b		; 90 70
	ldy #$60.b		; A0 60
	cpx #$60.b		; E0 60
	rti		; 40

	cpy #$40.b		; C0 40
	cpy #$C0.b		; C0 C0
	cpy #$40.b		; C0 40
	cpy #$F0.b		; C0 F0
	php		; 08
	beq   8.b		; F0 08
	cpx #$18.b		; E0 18
	cpx #$10.b		; E0 10
	cpy #$38.b		; C0 38
	cpy #$30.b		; C0 30
	cpy #$20.b		; C0 20
	cpy #$30.b		; C0 30
	bpl  55.b		; 10 37
	phb		; 8B
	sty $AD.b,X		; 94 AD
	cpy #$43.b		; C0 43
	.db $82, $7C, $7D		; 82 7C 7D
	txa		; 8A
	sed		; F8
	sec		; 38
	sed		; F8
	ora $03.b,S		; 03 03
	eor [$88.b]		; 47 88
	sta $00FF60.l,X		; 9F 60 FF 00
	sbc $8300.w,X		; FD 00 83
	brk $06.b		; 00 06
	ora ($00.b,X)		; 01 00
	ora [$03.b]		; 07 03
	jsr ($20E0.w,X)		; FC E0 20
	tya		; 98
	sei		; 78
	cpy #$30.b		; C0 30
	cpy #$40.b		; C0 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$1C.b		; E0 1C
	sed		; F8
	tsb $F0.b		; 04 F0
	php		; 08
	cpy #$30.b		; C0 30
	bra  96.b		; 80 60
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	bcc 126.b		; 90 7E
	mvp $6A,$3B		; 44 3B 6A
	ora $0E31.w,X		; 1D 31 0E
	beq  -1.b		; F0 FF
	ora ($FE.b,X)		; 01 FE
	brk $FA.b		; 00 FA
	tsb $FC.b		; 04 FC
	sbc [$00.b]		; E7 00
	inc $00.b,X		; F6 00
	sbc ($00.b)		; F2 00
	sbc ($00.b),Y		; F1 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b		; 05 00
	cop $01.b		; 02 01
	ora $BE.b		; 05 BE
	cmp $EE.b,X		; D5 EE
	sbc $C4DE.w		; ED DE C4
	and [$84.b]		; 27 84
	asl $A8.b		; 06 A8
	bit $3B32.w		; 2C 32 3B
	trb $17.b		; 14 17
	adc ($00.b,S),Y		; 73 00
	and [$00.b],Y		; 37 00
	and [$00.b]		; 27 00
	cmp [$18.b]		; C7 18
	cmp [$38.b]		; C7 38
	lda $C03C50.l		; AF 50 3C C0
	clc		; 18
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	bmi  48.b		; 30 30
	plp		; 28
	sec		; 38
	brk $03.b		; 00 03
	ora $04.b,S		; 03 04
	ora ($06.b,X)		; 01 06
	brk $C7.b		; 00 C7
	brk $41.b		; 00 41
	rti		; 40

	sec		; 38
	bmi -52.b		; 30 CC
	sec		; 38
	eor $11.b		; 45 11
	eor $D15E9D.l,X		; 5F 9D 5E D1
	ora ($7C.b)		; 12 7C
	sta $00.b,S		; 83 00
	ora $0404.w,Y		; 19 04 04
	ror $66.b		; 66 66
	phy		; 5A
	ror $8060.w,X		; 7E 60 80
	sbc ($00.b,X)		; E1 00
	sbc $FC00.w		; ED 00 FC
	brk $18.b		; 00 18
	inc $04.b		; E6 04
	xce		; FB
	ror $99.b		; 66 99
	ror $8281.w,X		; 7E 81 82
	sta ($E0.b),Y		; 91 E0
	cpx #$50.b		; E0 50
	beq  40.b		; F0 28
	clc		; 18
	adc #$61.b		; 69 61
	cmp $02F9.w,Y		; D9 F9 02
	sbc ($04.b,S),Y		; F3 04
	sbc [$92.b],Y		; F7 92
	jmp ($1FE0.w)		; 6C E0 1F
	beq  15.b		; F0 0F
	sed		; F8
	ora [$99.b]		; 07 99
	asl $01.b		; 06 01
	asl $03.b		; 06 03
	tsb $0807.w		; 0C 07 08
	mvp $45,$46		; 44 46 45
	eor [$9A.b]		; 47 9A
	cmp $F8B5.w,X		; DD B5 F8
	bit $F8.b		; 24 F8
	phy		; 5A
	ldx #$93.b		; A2 93
	and $8E.b,S		; 23 8E
	ora $47B946.l		; 0F 46 B9 47
	clv		; B8
	cmp $00FF20.l,X		; DF 20 FF 00
	sbc $00FD00.l,X		; FF 00 FD 00
	jsr ($F000.w,X)		; FC 00 F0
	brk $1A.b		; 00 1A
	asl $BBBF.w,X		; 1E BF BB
	sbc [$F8.b]		; E7 F8
	rti		; 40

	beq -67.b		; F0 BD
	jmp $1A1A.w		; 4C 1A 1A
	stz $FF9E.w,X		; 9E 9E FF
	inc $E11E.w,X		; FE 1E E1
	lda $00FF40.l,X		; BF 40 FF 00
	sbc $00F300.l,X		; FF 00 F3 00
	sbc $00.b		; E5 00
	adc ($00.b,X)		; 61 00
	ora ($00.b,X)		; 01 00
	trb $981C.w		; 1C 1C 98
	sed		; F8
	bmi -16.b		; 30 F0
	sei		; 78
	sei		; 78
	iny		; C8
	sed		; F8
	jmp.w [$103C]		; DC 3C 10
	beq -32.b		; F0 E0
	rts		; 60

	trb $F8E2.w		; 1C E2 F8
	ora [$F0.b]		; 07 F0
	asl $04F8.w		; 0E F8 04
	sed		; F8
	tsb $FC.b		; 04 FC
	cop $F0.b		; 02 F0
	asl $10E0.w		; 0E E0 10
	stz $FB.b		; 64 FB
	sta $F162.w,X		; 9D 62 F1
	tsb $23.b		; 04 23
	brk $B8.b		; 00 B8
	lda $E1E2.w,Y		; B9 E2 E1
	eor [$C0.b]		; 47 C0
	sty $93.b,X		; 94 93
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	eor [$00.b]		; 47 00
	ora $003F00.l,X		; 1F 00 3F 00
	adc $A04000.l		; 6F 00 40 A0
	bcs 112.b		; B0 70
	bmi -16.b		; 30 F0
	rts		; 60

	cpx #$60.b		; E0 60
	cpx #$D0.b		; E0 D0
	bmi -96.b		; 30 A0
	rts		; 60

	bra -128.b		; 80 80
	cpx #$18.b		; E0 18
	beq   8.b		; F0 08
	beq   8.b		; F0 08
	cpx #$10.b		; E0 10
	cpx #$10.b		; E0 10
	beq   8.b		; F0 08
	cpx #$10.b		; E0 10
	bra 112.b		; 80 70
	and $3D.b		; 25 3D
	and $181430.l		; 2F 30 14 18
	inc A		; 1A
	trb $0C0A.w		; 1C 0A 0C
	ora $0E0C1C.l,X		; 1F 1C 0C 0E
	brk $06.b		; 00 06
	and $3FC2.w,X		; 3D C2 3F
	rti		; 40

	ora $001F60.l,X		; 1F 60 1F 00
	ora $201F10.l		; 0F 10 1F 20
	ora $180710.l		; 0F 10 07 18
	sta [$FB.b],Y		; 97 FB
	plp		; 28
	cmp ($55.b,S),Y		; D3 55
	tsb $FE.b		; 04 FE
	inc $7F5B.w,X		; FE 5B 7F
	and $143F.w		; 2D 3F 14
	ora $FF2FE0.l,X		; 1F E0 2F FF
	brk $FF.b		; 00 FF
	brk $FB.b		; 00 FB
	brk $01.b		; 00 01
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $D0.b		; 00 D0
	brk $00.b		; 00 00
	inc $01.b,X		; F6 01
	stx $15.b		; 86 15
	asl $60.b,X		; 16 60
	.db $62, $F2, $F2		; 62 F2 F2
	lda ($F1.b),Y		; B1 F1
	lda ($F1.b),Y		; B1 F1
	and $E5.b		; 25 E5
	ora [$08.b]		; 07 08
	ora [$78.b]		; 07 78
	ora [$E8.b],Y		; 17 E8
	adc $9C.b,S		; 63 9C
	sbc ($0C.b,S),Y		; F3 0C
	sbc ($0E.b),Y		; F1 0E
	sbc ($0E.b),Y		; F1 0E
	sbc $1A.b		; E5 1A
	jsr ($687F.w,X)		; FC 7F 68
	adc $7C60.w,X		; 7D 60 7C
	.db $82, $FA, $92		; 82 FA 92
	plx		; FA
	sta ($F3.b,S),Y		; 93 F3
	eor $F7.b,X		; 55 F7
	cmp $67.b		; C5 67
	bra   0.b		; 80 00
	bra   2.b		; 80 02
	bra   3.b		; 80 03
	cop $05.b		; 02 05
	ora ($05.b)		; 12 05
	ora ($0C.b,S),Y		; 13 0C
	sta [$08.b],Y		; 97 08
	sta [$18.b]		; 87 18
	ora $0E0D0C.l		; 0F 0C 0D 0E
	ora [$06.b]		; 07 06
	ora [$07.b]		; 07 07
	brk $01.b		; 00 01
	ora $03.b,S		; 03 03
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora $300F10.l		; 0F 10 0F 30
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora ($02.b,X)		; 01 02
	ora $04.b,S		; 03 04
	ora ($0E.b,X)		; 01 0E
	ora ($02.b,X)		; 01 02
	jmp ($3300.w,X)		; 7C 00 33
	ora $89.b,S		; 03 89
	ora #$8C.b		; 09 8C
	tsb $07C5.w		; 0C C5 07
	ror $6E8F.w		; 6E 8F 6E
	sta $FFCF08.l		; 8F 08 CF FF
	brk $FC.b		; 00 FC
	brk $F6.b		; 00 F6
	brk $F3.b		; 00 F3
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
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
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $68.b		; 00 68
	sei		; 78
	iny		; C8
	sed		; F8
	pla		; 68
	tya		; 98
	jmp.w [$D43C]		; DC 3C D4
	trb $1888.w		; 1C 88 18
	bne -48.b		; D0 D0
	bcc -80.b		; 90 B0
	sei		; 78
	stx $F8.b		; 86 F8
	ora [$F8.b]		; 07 F8
	asl $FC.b		; 06 FC
	ora $FC.b,S		; 03 FC
	cop $F8.b		; 02 F8
	tsb $30.b		; 04 30
	php		; 08
	bvs   8.b		; 70 08
	bne -80.b		; D0 B0
	bvc  48.b		; 50 30
	bcc 112.b		; 90 70
	bra -32.b		; 80 E0
	bne -24.b		; D0 E8
	bne -24.b		; D0 E8
	plp		; 28
	ldy $B0.b,X		; B4 B0
	jmp ($0E70.w,X)		; 7C 70 0E
	beq  12.b		; F0 0C
	beq  12.b		; F0 0C
	cpx #$10.b		; E0 10
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	clv		; B8
	rti		; 40

	sed		; F8
	brk $0A.b		; 00 0A
	and $3F08.w,X		; 3D 08 3F
	brk $3E.b		; 00 3E
	bpl  62.b		; 10 3E
	brk $3C.b		; 00 3C
	bpl  60.b		; 10 3C
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	asl $1C00.w,X		; 1E 00 1C
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tas		; 1B
	brk $1B.b		; 00 1B
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	php		; 08
	tsb $02.b		; 04 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5F.b		; 00 5F
	lda $037F07.l,X		; BF 07 7F 03
	ora $010B05.l,X		; 1F 05 0B 01
	asl $00.b		; 06 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E6.b		; 00 E6
	inc $FE8F.w,X		; FE 8F FE
	tsb $FD.b		; 04 FD
	php		; 08
	sed		; F8
	clc		; 18
	clc		; 18
	ora [$07.b]		; 07 07
	sty $F88F.w		; 8C 8F F8
	sbc $010001.l,X		; FF 01 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	ora $00.b,S		; 03 00
	sbc [$07.b]		; E7 07
	sed		; F8
	sta $00FF70.l		; 8F 70 FF 00
	rti		; 40

	cpy #$80.b		; C0 80
	bra -128.b		; 80 80
	bra  32.b		; 80 20
	jsr $7474.w		; 20 74 74
	jsr ($68FC.w,X)		; FC FC 68
	sed		; F8
	iny		; C8
	sed		; F8
	cpy #$20.b		; C0 20
	bra  96.b		; 80 60
	bra 100.b		; 80 64
	jsr $74DE.w		; 20 DE 74
	phb		; 8B
	jsr ($F803.w,X)		; FC 03 F8
	asl $F8.b		; 06 F8
	tsb $B1.b		; 04 B1
	lda $D7677B.l		; AF 7B 67 D7
	cmp $C088B0.l		; CF B0 88 C0
	sec		; 38
	brk $80.b		; 00 80
	jsr $C020.w		; 20 20 C0
	cpy #$5F.b		; C0 5F
	brk $9F.b		; 00 9F
	brk $3F.b		; 00 3F
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $80.b		; 00 80
	sei		; 78
	jsr $C0DC.w		; 20 DC C0
	bmi -128.b		; 30 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rts		; 60

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $06.b		; 05 06
	asl $07.b		; 06 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $DD19.w,Y		; 19 19 DD
	cmp $B7F57B.l,X		; DF 7B F5 B7
	sei		; 78
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	brk $0F.b		; 00 0F
	brk $BF.b		; 00 BF
	ora $DFE6.w,Y		; 19 E6 DF
	jsr $00FF.w		; 20 FF 00
	sbc $1F9800.l,X		; FF 00 98 1F
	jmp.w [$DE1F]		; DC 1F DE
	dec $4040.w,X		; DE 40 40
	ora ($11.b),Y		; 11 11
	lda ($B3.b,S),Y		; B3 B3
	sbc $FF4FFF.l		; EF FF 4F FF
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$01.b		; E0 01
	rti		; 40

	lda $B3EE11.l,X		; BF 11 EE B3
	jmp $00FF.w		; 4C FF 00
	sbc $65A500.l,X		; FF 00 A5 65
	ldy $F86D.w		; AC 6D F8
	adc $FA69.w,Y		; 79 69 FA
	jmp $10FC.w		; 4C FC 10
	beq -32.b		; F0 E0
	bmi -79.b		; 30 B1
	adc ($E5.b,X)		; 61 E5
	inc A		; 1A
	sbc $F912.w		; ED 12 F9
	asl $FB.b		; 06 FB
	tsb $FC.b		; 04 FC
	ora $F0.b,S		; 03 F0
	ora $F10FF0.l		; 0F F0 0F F1
	asl $2D8F.w		; 0E 8F 2D
	txs		; 9A
	ora $1C09.w,X		; 1D 09 1C
	bit $38.b		; 24 38
	txa		; 8A
	lda ($63.b)		; B2 63
	cmp ($55.b,S),Y		; D3 55
	cmp [$08.b]		; C7 08
	cmp $DF10CF.l		; CF CF 10 DF
	jsr $E01F.w		; 20 1F E0
	and $40BDC0.l,X		; 3F C0 BD 40
	jsr ($F800.w,X)		; FC 00 F8
	brk $F0.b		; 00 F0
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
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
	brk $AC.b		; 00 AC
	sbc $7BBF78.l		; EF 78 BF 7B
	sta $0C7E1B.l,X		; 9F 1B 7E 0C
	and $3100.w		; 2D 00 31
	ora ($2B.b)		; 12 2B
	phd		; 0B
	ora [$D0.b],Y		; 17 D0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $61.b		; 00 61
	brk $33.b		; 00 33
	brk $1F.b		; 00 1F
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	and $070F0F.l,X		; 3F 0F 0F 07
	ora [$03.b]		; 07 03
	ora $01.b,S		; 03 01
	ora ($03.b,X)		; 01 03
	ora $39.b,S		; 03 39
	and $663F2C.l,X		; 3F 2C 3F 66
	adc $100F.w,Y		; 79 0F 10
	ora [$18.b]		; 07 18
	ora $0C.b,S		; 03 0C
	ora ($06.b,X)		; 01 06
	ora $FC.b,S		; 03 FC
	and $C03F40.l,X		; 3F 40 3F C0
	adc $000080.l,X		; 7F 80 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	clc		; 18
	ora $090C0B.l,X		; 1F 0B 0C 09
	asl $0000.w		; 0E 00 00
	brk $0C.b		; 00 0C
	brk $1E.b		; 00 1E
	brk $0F.b		; 00 0F
	ora [$38.b]		; 07 38
	ora $700F20.l,X		; 1F 20 0F 70
	ora $0F6430.l		; 0F 30 64 0F
	ora $04.b,S		; 03 04
	cpx $E0.b		; E4 E0
	lda $F4.b,X		; B5 F4
	sta $13FC.w,X		; 9D FC 13
	inc $FE07.w,X		; FE 07 FE
	rol $FE.b,X		; 36 FE
	sbc $00FF00.l,X		; FF 00 FF 00
	ora $000B00.l,X		; 1F 00 0B 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	sbc $DA9C.w,X		; FD 9C DA
	ldx $6E97.w		; AE 97 6E
	bit $CD.b		; 24 CD
	lsr $9F.b		; 46 9F
	bra   9.b		; 80 09
	ora ($E7.b),Y		; 11 E7
	inx		; E8
	sbc ($63.b)		; F2 63
	brk $71.b		; 00 71
	brk $F1.b		; 00 F1
	brk $F3.b		; 00 F3
	brk $E1.b		; 00 E1
	brk $F7.b		; 00 F7
	brk $FB.b		; 00 FB
	brk $FC.b		; 00 FC
	brk $B1.b		; 00 B1
	adc #$60.b		; 69 60
	cmp #$C0.b		; C9 C0
	cmp $B9A8.w,Y		; D9 A8 B9
	lda #$B9.b		; A9 B9
	brk $30.b		; 00 30
	mvn $1C,$74		; 54 74 1C
	jmp ($06F9.w,X)		; 7C F9 06
	sbc $F906.w,Y		; F9 06 F9
	asl $99.b		; 06 99
	asl $99.b		; 06 99
	asl $50.b		; 06 50
	ora $3C0B34.l		; 0F 34 0B 3C
	ora $10.b,S		; 03 10
	cmp $82BF61.l,X		; DF 61 BF 82
	and $887F41.l,X		; 3F 41 7F 88
	rol $E304.w,X		; 3E 04 E3
	brk $00.b		; 00 00
	and $23.b,S		; 23 23
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	cmp ($00.b,X)		; C1 00
	sbc [$18.b]		; E7 18
	brk $FF.b		; 00 FF
	and $DC.b,S		; 23 DC
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	asl $091E.w,X		; 1E 1E 09
	ora $060704.l		; 0F 04 07 06
	ora [$02.b]		; 07 02
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	sed		; F8
	bmi  79.b		; 30 4F
	asl $0F21.w,X		; 1E 21 0F
	bmi   7.b		; 30 07
	sei		; 78
	ora [$38.b]		; 07 38
	ora $1C.b,S		; 03 1C
	ora $0C.b,S		; 03 0C
	rol $3B.b,X		; 36 3B
	phd		; 0B
	ora $0200.w		; 0D 00 02
	sta $85.b		; 85 85
	dec $C7.b		; C6 C7
	cpx #$63.b		; E0 63
	ldy #$60.b		; A0 60
	bne  48.b		; D0 30
	bit $0E40.w,X		; 3C 40 0E
	beq   2.b		; F0 02
	sbc $7A85.w,X		; FD 85 7A
	cmp [$38.b]		; C7 38
	sbc $1C.b,S		; E3 1C
	sbc $1C.b,S		; E3 1C
	sbc ($0E.b),Y		; F1 0E
	brk $FC.b		; 00 FC
	bra -100.b		; 80 9C
	plp		; 28
	and $B7.b,X		; 35 B7
	sed		; F8
	sec		; 38
	sbc $E62300.l		; EF 00 23 E6
	inc $FFF1.w,X		; FE F1 FF
	tsb $0C03.w		; 0C 03 0C
	adc $2D.b,S		; 63 2D
.ACCU 16
	rep #$E7		; C2 E7
	brk $F0.b		; 00 F0
	brk $FF.b		; 00 FF
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	inc $6082.w,X		; FE 82 60
	rti		; 40

	cpy #$1B.b		; C0 1B
	txy		; 9B
	inc $FF.b		; E6 FF
	ror A		; 6A
	sta $8BF5.w,X		; 9D F5 8B
	dex		; CA
	dec $0081.w		; CE 81 00
	.db $82, $1D, $00		; 82 1D 00
	and $7F641B.l,X		; 3F 1B 64 7F
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $32.b		; 00 32
	ora ($0B.b,X)		; 01 0B
	inx		; E8
	ora $3310.w,X		; 1D 10 33
	bmi  37.b		; 30 25
	jsr $DFF9.w		; 20 F9 DF
	.db $82, $BE, $07		; 82 BE 07
	rol $5B5D.w,X		; 3E 5D 5B
	sbc $E01F10.l		; EF 10 1F E0
	and $C03FC0.l,X		; 3F C0 3F C0
	cpx #$00.b		; E0 00
	sta ($40.b,X)		; 81 40
	ora ($C0.b,X)		; 01 C0
	eor [$A0.b]		; 47 A0
	rts		; 60

	cpx #$F0.b		; E0 F0
	beq -128.b		; F0 80
	rti		; 40

	rts		; 60

	cpx #$00.b		; E0 00
	cpy #$A0.b		; C0 A0
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$1C.b		; E0 1C
	beq  12.b		; F0 0C
	cpy #$30.b		; C0 30
	cpx #$10.b		; E0 10
	cpy #$38.b		; C0 38
	cpx #$18.b		; E0 18
	bra 112.b		; 80 70
	brk $C0.b		; 00 C0
	bvc -97.b		; 50 9F
	clv		; B8
	dec $EA9D.w,X		; DE 9D EA
	adc $CE.b		; 65 CE
	dec $CF.b,X		; D6 CF
	lsr $AF.b,X		; 56 AF
	ora #$2535.w		; 09 35 25
	tyx		; BB
	cpx #$00.b		; E0 00
	sbc ($00.b,X)		; E1 00
	sbc [$00.b],Y		; F7 00
	sbc $003F00.l,X		; FF 00 3F 00
	cmp $C22D00.l,X		; DF 00 2D C2
	lda [$40.b],Y		; B7 40
	phx		; DA
	rep #$CE		; C2 CE
	dec $60.b		; C6 60
	jmp ($4CD4.w)		; 6C D4 4C
	sty $4C.b		; 84 4C
	bra  72.b		; 80 48
	cli		; 58
	ldy #$80.b		; A0 80
	beq  58.b		; F0 3A
	tsb $3E.b		; 04 3E
	brk $9C.b		; 00 9C
	cop $BC.b		; 02 BC
	cop $BC.b		; 02 BC
	brk $B8.b		; 00 B8
	asl $D8.b		; 06 D8
	tsb $D0.b		; 04 D0
	tsb $3838.w		; 0C 38 38
	ora [$1F.b],Y		; 17 1F
	ora ($1F.b)		; 12 1F
	ora $3A0A.w		; 0D 0A 3A
	bit $1C10.w,X		; 3C 10 1C
	ora [$19.b],Y		; 17 19
	asl A		; 0A
	tsb $C738.w		; 0C 38 C7
	ora $201F60.l,X		; 1F 60 1F 20
	ora $403FB0.l		; 0F B0 3F 40
	ora $201E60.l,X		; 1F 60 1E 20
	ora $3C3430.l		; 0F 30 34 3C
	beq -24.b		; F0 E8
	cli		; 58
	tay		; A8
	cmp $13.b,X		; D5 13
	asl $411F.w		; 0E 1F 41
	ror $FB87.w,X		; 7E 87 FB
	sta $C23CEF.l,X		; 9F EF 3C C2
	sed		; F8
	asl $F8.b		; 06 F8
	ora [$EF.b]		; 07 EF
	brk $E0.b		; 00 E0
	brk $81.b		; 00 81
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $1A.b		; 00 1A
	ora $714B.w,X		; 1D 4B 71
	lda ($C1.b,S),Y		; B3 C1
	cmp $83.b		; C5 83
	ora $F3.b		; 05 F3
	bvc -17.b		; 50 EF
	cpx $FB.b		; E4 FB
	sbc $1FFE.w,Y		; F9 FE 1F
	rts		; 60

	adc $00FF80.l,X		; 7F 80 FF 00
	sbc $000F00.l,X		; FF 00 0F 00
	sbc ($00.b,S),Y		; F3 00
	sbc $FD00.w,X		; FD 00 FD
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $1C.b		; 04 1C
	trb $F8F8.w		; 1C F8 F8
	jsr $48F0.w		; 20 F0 48
	clv		; B8
	brk $C0.b		; 00 C0
	brk $C1.b		; 00 C1
	brk $8F.b		; 00 8F
	tsb $9A.b		; 04 9A
	trb $F8E2.w		; 1C E2 F8
	asl $F0.b		; 06 F0
	tsb $06F8.w		; 0C F8 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	ora ($1F.b),Y		; 11 1F
	phd		; 0B
	tsb $0C0A.w		; 0C 0A 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $07.b		; 00 07
	tsb $1B.b		; 04 1B
	ora $700F20.l,X		; 1F 20 0F 70
	ora $201E70.l		; 0F 70 1E 20
	ora [$08.b]		; 07 08
	php		; 08
	brk $00.b		; 00 00
	brk $B0.b		; 00 B0
	bcs  88.b		; B0 58
	sei		; 78
	cpx $17DC.w		; EC DC 17
	ora $0F403F.l		; 0F 3F 40 0F
	bmi  15.b		; 30 0F
	bvs   1.b		; 70 01
	inc $4FB0.w,X		; FE B0 4F
	sei		; 78
	sta [$FC.b]		; 87 FC
	ora $FF.b,S		; 03 FF
	brk $A0.b		; 00 A0
	inc $7B44.w,X		; FE 44 7B
	jsl $7E613D.l		; 22 3D 61 7E
	brk $0A.b		; 00 0A
	ldy #$A4.b		; A0 A4
	rts		; 60

.ACCU 8
	sep #$A0		; E2 A0
	adc ($07.b,X)		; 61 07
	brk $86.b		; 00 86
	brk $C2.b		; 00 C2
	brk $81.b		; 00 81
	brk $00.b		; 00 00
	sbc $A0.b,X		; F5 A0
	tad		; 5B
	sbc ($1C.b,X)		; E1 1C
	cpx #$1E.b		; E0 1E
	tsb $BC.b		; 04 BC
	bne -21.b		; D0 EB
	inx		; E8
	phx		; DA
	dec $26.b		; C6 26
	ora ($14.b,S),Y		; 13 14
	sbc $CF63.w,X		; FD 63 CF
	cmp $7D.b,S		; C3 7D
	sbc $330370.l,X		; FF 70 03 33
	tsb $23.b		; 04 23
	tsb $C7.b		; 04 C7
	clc		; 18
	ora [$E8.b],Y		; 17 E8
	inc $BC00.w,X		; FE 00 BC
	brk $80.b		; 00 80
	brk $06.b		; 00 06
	ora [$05.b]		; 07 05
	asl $04.b		; 06 04
	asl $02.b		; 06 02
	tsb $03.b		; 04 03
	tsb $11.b		; 04 11
	asl $0B.b,X		; 16 0B
	ora $0D0F.w		; 0D 0F 0D
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora [$18.b]		; 07 18
	ora [$18.b]		; 07 18
	ora [$28.b],Y		; 17 28
	asl $0E30.w		; 0E 30 0E
	bpl  10.b		; 10 0A
	dec A		; 3A
	ldx $C49E.w		; AE 9E C4
	dec $5CCA.w,X		; DE CA 5C
	inc $68.b,X		; F6 68
	lda $B3B9.w,Y		; B9 B9 B3
	ldy $BEB1.w,X		; BC B1 BE
	plx		; FA
	ora $7E.b		; 05 7E
	ora ($3E.b,X)		; 01 3E
	ora ($BE.b,X)		; 01 BE
	ora ($9E.b,X)		; 01 9E
	ora ($47.b,X)		; 01 47
	brk $43.b		; 00 43
	brk $41.b		; 00 41
	brk $58.b		; 00 58
	sbc $007F20.l,X		; FF 20 7F 00
	and $D05F50.l,X		; 3F 50 5F D0
	cmp $4DCF5E.l,X		; DF 5E CF 4D
	cmp ($81.b),Y		; D1 81
	sty $0080.w		; 8C 80 00
	rti		; 40

	bra  32.b		; 80 20
	cpy #$40.b		; C0 40
	ldy #$C0.b		; A0 C0
	jsr $20D0.w		; 20 D0 20
	dec $8F20.w,X		; DE 20 8F
	bvs  94.b		; 70 5E
	phx		; DA
	iny		; C8
	cpy $94.b		; C4 94
	sty $C5DD.w		; 8C DD C5
	and $C217.w		; 2D 17 C2
	and ($42.b,S),Y		; 33 42
	and ($38.b,S),Y		; 33 38
	eor #$26.b		; 49 26
	ora ($3C.b,X)		; 01 3C
	ora $7C.b,S		; 03 7C
	ora $3D.b,S		; 03 3D
	cop $FF.b		; 02 FF
	brk $FB.b		; 00 FB
	tsb $FB.b		; 04 FB
	tsb $F1.b		; 04 F1
	asl $73.b		; 06 73
	adc $D3FCF4.l,X		; 7F F4 FC D3
	sbc $08F789.l,X		; FF 89 F7 08
	sbc [$9E.b],Y		; F7 9E
	sbc ($1E.b,X)		; E1 1E
	sbc ($BF.b,X)		; E1 BF
	rti		; 40

	adc $03FC80.l,X		; 7F 80 FC 03
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	bra  96.b		; 80 60
	cpy #$20.b		; C0 20
	cpy #$30.b		; C0 30
	cpy #$38.b		; C0 38
	rol A		; 2A
	sbc $21.b,X		; F5 21
	inc $F900.w,X		; FE 00 F9
	rti		; 40

	sed		; F8
	brk $F0.b		; 00 F0
	rti		; 40

	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	cpy #$7B.b		; C0 7B
	brk $71.b		; 00 71
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	bne  80.b		; D0 50
	inx		; E8
	ldy #$7C.b		; A0 7C
	bvc -66.b		; 50 BE
	bit $0A5E.w		; 2C 5E 0A
	adc $067F1A.l,X		; 7F 1A 7F 06
	and $F008E0.l,X		; 3F E0 08 F0
	brk $F0.b		; 00 F0
	brk $74.b		; 00 74
	brk $2C.b		; 00 2C
	brk $0A.b		; 00 0A
	brk $3A.b		; 00 3A
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	php		; 08
	ora $0D.b,S		; 03 0D
	ora #$0D.b		; 09 0D
	php		; 08
	asl $0E0C.w		; 0E 0C 0E
	eor #$4E.b		; 49 4E
	tsa		; 3B
	bit $3824.w,X		; 3C 24 38
	ora $100E30.l		; 0F 30 0E 10
	asl $0F10.w		; 0E 10 0F
	bra  15.b		; 80 0F
	cpy #$4F.b		; C0 4F
	bcs  63.b		; B0 3F
	cpy #$3F.b		; C0 3F
	rti		; 40

	sta $FD9FFF.l,X		; 9F FF 9F FD
	ora $D028FA.l		; 0F FA 28 D0
	ldy #$D0.b		; A0 D0
	bcc -30.b		; 90 E2
	rti		; 40

	bvs -32.b		; 70 E0
	sed		; F8
	ora $003F00.l,X		; 1F 00 3F 00
	and $073800.l,X		; 3F 00 38 07
	bmi  15.b		; 30 0F
	bpl  13.b		; 10 0D
	bra  15.b		; 80 0F
	brk $07.b		; 00 07
	jsr ($EEBF.w,X)		; FC BF EE
	eor [$46.b],Y		; 57 46
	tyx		; BB
	brk $E3.b		; 00 E3
	brk $41.b		; 00 41
	brk $49.b		; 00 49
	brk $41.b		; 00 41
	brk $E2.b		; 00 E2
	inc $EE00.w,X		; FE 00 EE
	brk $46.b		; 00 46
	brk $02.b		; 00 02
	trb $BE00.w		; 1C 00 BE
	rti		; 40

	ldx $40.b,Y		; B6 40
	ldx $1DE0.w,Y		; BE E0 1D
	cld		; D8
	sec		; 38
	ora ($71.b),Y		; 11 71
	and [$47.b]		; 27 47
	adc $27.b,S		; 63 27
	ora $0C0B.w		; 0D 0B 0C
	phb		; 8B
	mvn $6C,$5A		; 54 5A 6C
	adc ($F8.b)		; 72 F8
	ora [$F1.b]		; 07 F1
	asl $18E7.w		; 0E E7 18
	sbc [$18.b]		; E7 18
	sta $708F70.l		; 8F 70 8F 70
	lsr $7EA1.w,X		; 5E A1 7E
	sta ($09.b,X)		; 81 09
	asl $0E08.w		; 0E 08 0E
	ora $020E.w		; 0D 0E 02
	ora $02.b,S		; 03 02
	ora $03.b,S		; 03 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $0F.b		; 00 0F
	bpl  15.b		; 10 0F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	tsb $03.b		; 04 03
	brk $01.b		; 00 01
	asl $00.b		; 06 00
	ora $22.b,S		; 03 22
	and $7C.b,S		; 23 7C
	sei		; 78
	eor [$7F.b]		; 47 7F
	rts		; 60

	adc $003F80.l,X		; 7F 80 3F 00
	sta $AC9F50.l,X		; 9F 50 9F AC
	cmp $8700DF.l		; CF DF 00 87
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $9D.b		; 00 9D
	adc $D0BDC8.l,X		; 7F C8 BD D0
	ldx $D2AC.w,Y		; BE AC D2
	sec		; 38
	dec $48.b		; C6 48
	ldy $00.b,X		; B4 00
	sbc $B841.w,X		; FD 41 B8
	jsr ($7800.w,X)		; FC 00 78
	cop $7A.b		; 02 7A
	ora ($3E.b,X)		; 01 3E
	ora ($3A.b,X)		; 01 3A
	ora ($78.b,X)		; 01 78
	ora $65.b,S		; 03 65
	cop $69.b		; 02 69
	asl $11.b		; 06 11
	sbc $00FF03.l,X		; FF 03 FF 00
	sbc $8D7F87.l,X		; FF 87 7F 8D
	jmp ($F809.w,X)		; 7C 09 F8
	asl $FD.b		; 06 FD
	lsr A		; 4A
	sbc $0000.w,Y		; F9 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sta $00.b,S		; 83 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	cpy $A484.w		; CC 84 A4
	ldy $CCD4.w		; AC D4 CC
	pla		; 68
	jmp $9EC6CA.l		; 5C CA C6 9E
	stx $F3.b		; 86 F3
	cmp $FC8182.l		; CF 82 81 FC
	ora $5C.b,S		; 03 5C
	cop $3C.b		; 02 3C
	cop $BC.b		; 02 BC
	ora $3E.b,S		; 03 3E
	ora ($7E.b,X)		; 01 7E
	ora ($3F.b,X)		; 01 3F
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $B0.b		; 00 B0
	brk $F0.b		; 00 F0
	rti		; 40

	ldy #$C0.b		; A0 C0
	jsr $6080.w		; 20 80 60
	tsb $08.b		; 04 08
	phd		; 0B
	bit $7E19.w,X		; 3C 19 7E
	lda $FE7DFE.l,X		; BF FE 7D FE
	dec A		; 3A
	jsr ($BF58.w,X)		; FC 58 BF
	and $201F5F.l		; 2F 5F 1F 20
	ora $003F00.l,X		; 1F 00 3F 00
	adc $007F00.l,X		; 7F 00 7F 00
	adc $007F00.l,X		; 7F 00 7F 00
	and $716200.l,X		; 3F 00 62 71
	and #$1B.b		; 29 1B
	eor $3B.b,X		; 55 3B
	phb		; 8B
	and [$10.b]		; 27 10
	jmp ($2000.w)		; 6C 00 20
	eor ($91.b,X)		; 41 91
	ldy #$C9.b		; A0 C9
	sta $00E700.l		; 8F 00 E7 00
	cmp [$00.b]		; C7 00
	cmp $009C00.l,X		; DF 00 9C 00
	cmp ($00.b,X)		; C1 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sta $3E9FBE.l,X		; 9F BE 9F 3E
	lsr $B83E.w,X		; 5E 3E B8
	sed		; F8
	clv		; B8
	sed		; F8
	jsr $E9E0.w		; 20 E0 E9
	adc #$6D.b		; 69 6D
	sbc $00FF.w		; ED FF 00
	sbc $01FE00.l,X		; FF 00 FE 01
	sei		; 78
	ora [$78.b]		; 07 78
	ora [$60.b]		; 07 60
	ora $ED16E9.l,X		; 1F E9 16 ED
	ora ($D8.b)		; 12 D8
	tas		; 1B
	.db $82, $03, $41		; 82 03 41
	.db $42, $C7		; 42 C7
	dec $AB.b		; C6 AB
	cpx $B8D5.w		; EC D5 B8
	nop		; EA
	sta ($39.b),Y		; 91 39
	txa		; 8A
	stp		; DB
	bit $83.b		; 24 83
	jmp ($BC43.w,X)		; 7C 43 BC
	cmp [$38.b]		; C7 38
	sbc $00FF10.l		; EF 10 FF 00
	sbc $00F700.l,X		; FF 00 F7 00
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
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $BF.b,S		; 43 BF
	ora $7F.b		; 05 7F
	asl A		; 0A
	and $16.b,X		; 35 16
	pld		; 2B
	ora ($1F.b,X)		; 01 1F
	brk $07.b		; 00 07
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	adc [$00.b],Y		; 77 00
	ora $00.b,S		; 03 00
	tas		; 1B
	brk $1C.b		; 00 1C
	brk $04.b		; 00 04
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	and $001F01.l,X		; 3F 01 1F 00
	ora $000300.l		; 0F 00 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $1D.b		; 00 1D
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	tsb $25.b		; 04 25
	rol $1A.b		; 26 1A
	tas		; 1B
	asl $1F.b,X		; 16 1F
	ora #$0E.b		; 09 0E
	ora $06.b		; 05 06
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	ora [$38.b]		; 07 38
	and [$D8.b]		; 27 D8
	tas		; 1B
	stz $1F.b		; 64 1F
	jsr $100F.w		; 20 0F 10
	ora [$08.b]		; 07 08
	ora $04.b,S		; 03 04
	ora ($06.b,X)		; 01 06
	bit $C87E.w,X		; 3C 7E C8
	ror $7FC1.w,X		; 7E C1 7F
	ldy #$3F.b		; A0 3F
	bcs  63.b		; B0 3F
	cmp ($3F.b,X)		; C1 3F
	bmi -97.b		; 30 9F
	inx		; E8
	ora $810081.l		; 0F 81 00 81
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $90.b		; 00 90
	eor $52.b,X		; 55 52
	ora [$12.b],Y		; 17 12
	and [$24.b],Y		; 37 24
	ora $14.b,S		; 03 14
	and ($C0.b,S),Y		; 33 C0
	cmp ($00.b,S),Y		; D3 00
	sta ($A8.b,S),Y		; 93 A8
	txy		; 9B
	cmp [$28.b],Y		; D7 28
	cmp $28.b,X		; D5 28
	sbc $08.b,X		; F5 08
	sbc $18.b		; E5 18
	sbc $08.b,X		; F5 08
	bit $08.b,X		; 34 08
	adc $08.b,X		; 75 08
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
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $36.b		; 00 36
	brk $7E.b		; 00 7E
	clc		; 18
	cpx $00.b		; E4 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $08.b		; 02 08
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	cop $0D.b		; 02 0D
	asl $9871.w		; 0E 71 98
	adc #$11.b		; 69 11
	sbc $ED11.w		; ED 11 ED
	and ($CD.b),Y		; 31 CD
	and ($CD.b),Y		; 31 CD
	ora $0FF1.w		; 0D F1 0F
	sbc ($EF.b,S),Y		; F3 EF
	sbc ($F1.b,S),Y		; F3 F1
	asl $F5.b		; 06 F5
	cop $F5.b		; 02 F5
	cop $F5.b		; 02 F5
	cop $F1.b		; 02 F1
	cop $0D.b		; 02 0D
	cop $FF.b		; 02 FF
	brk $FF.b		; 00 FF
	brk $CC.b		; 00 CC
	cmp $C5.b,S		; C3 C5
	cmp $39.b,S		; C3 39
	sta [$4C.b]		; 87 4C
	bit $7090.w,X		; 3C 90 70
	brk $80.b		; 00 80
	cli		; 58
	cld		; D8
	rol $3F36.w,X		; 3E 36 3F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $FC.b		; 00 FC
	ora $F0.b,S		; 03 F0
	tsb $7880.w		; 0C 80 78
	cld		; D8
	and [$3E.b]		; 27 3E
	cmp ($80.b,X)		; C1 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rts		; 60

	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	ora [$2F.b],Y		; 17 2F
	ora ($1F.b,X)		; 01 1F
	brk $07.b		; 00 07
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000700.l,X		; 1F 00 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne -27.b		; D0 E5
	inx		; E8
	sbc ($F4.b,S),Y		; F3 F4
	xce		; FB
	ply		; 7A
	sbc $BF5E.w,X		; FD 5E BF
	rol $065F.w		; 2E 5F 06
	and $F80F03.l,X		; 3F 03 0F F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $7E.b		; 00 7E
	brk $3E.b		; 00 3E
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	brk $6B.b		; 00 6B
	sbc $CDF770.l		; EF 70 F7 CD
	inc $FFE2.w,X		; FE E2 FF
	cpx $75F3.w		; EC F3 75
	sed		; F8
	sbc $79.b,X		; F5 79
	dec A		; 3A
	jsr ($10EF.w,X)		; FC EF 10
	sbc [$08.b],Y		; F7 08
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $7F00.w,X		; FE 00 7F
	brk $0A.b		; 00 0A
	bit #$2E.b		; 89 2E
	lda $BD7E.w,Y		; B9 7E BD
	lda $7FED3D.l		; AF 3D ED 7F
	and $36.b		; 25 36
	php		; 08
	sec		; 38
	cpy $FC.b		; C4 FC
	sbc [$00.b],Y		; F7 00
	cmp [$00.b]		; C7 00
	cmp $00.b,S		; C3 00
	cmp $00.b,S		; C3 00
	sta $00.b,S		; 83 00
	wai		; CB
	brk $C7.b		; 00 C7
	brk $03.b		; 00 03
	brk $FD.b		; 00 FD
	brk $75.b		; 00 75
	bra  98.b		; 80 62
	sta ($F4.b),Y		; 91 F4
	bpl -23.b		; 10 E9
	ora ($F2.b,X)		; 01 F2
	and $45.b,S		; 23 45
	dec $6A.b		; C6 6A
	adc $00FF.w		; 6D FF 00
	sbc $00EF00.l,X		; FF 00 EF 00
	cpx $F903.w		; EC 03 F9
	asl $D3.b		; 06 D3
	tsb $1827.w		; 0C 27 18
	sbc $408010.l		; EF 10 80 40
	bcc  16.b		; 90 10
	bmi  48.b		; 30 30
	rts		; 60

	rts		; 60

	rts		; 60

	cpx #$40.b		; E0 40
	cpy #$00.b		; C0 00
	bra -64.b		; 80 C0
	cpy #$C0.b		; C0 C0
	rol $6E90.w,X		; 3E 90 6E
	bmi -52.b		; 30 CC
	rts		; 60

	bcc -32.b		; 90 E0
	bpl -64.b		; 10 C0
	bmi -128.b		; 30 80
	sei		; 78
	cpy #$38.b		; C0 38
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	rti		; 40

	bne  64.b		; D0 40
	beq  96.b		; F0 60
	inx		; E8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $F0.b		; 00 F0
	brk $60.b		; 00 60
	sed		; F8
	bvs  -8.b		; 70 F8
	jsr $00FC.w		; 20 FC 00
	jmp ($6C00.w)		; 6C 00 6C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	rts		; 60

	brk $08.b		; 00 08
	bpl  32.b		; 10 20
	bpl   8.b		; 10 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $D8.b		; 00 D8
	clv		; B8
	ora ($F2.b)		; 12 F2
	sty $386C.w		; 8C 6C 38
	sed		; F8
	bvs -16.b		; 70 F0
	rts		; 60

	cpx #$A0.b		; E0 A0
	cpx #$60.b		; E0 60
	cpx #$F8.b		; E0 F8
	ora [$F2.b]		; 07 F2
	tsb $12EC.w		; 0C EC 12
	sed		; F8
	asl $F0.b		; 06 F0
	php		; 08
	cpx #$10.b		; E0 10
	cpx #$10.b		; E0 10
	cpx #$10.b		; E0 10
	rti		; 40

	cpy #$C0.b		; C0 C0
	cpy #$B0.b		; C0 B0
	bcs -112.b		; B0 90
	beq  64.b		; F0 40
	ldy #$E0.b		; A0 E0
	jsr $2060.w		; 20 60 20
	cpy #$00.b		; C0 00
	cpy #$30.b		; C0 30
	cpy #$38.b		; C0 38
	bcs  78.b		; B0 4E
	beq  12.b		; F0 0C
	cpx #$18.b		; E0 18
	cpx #$10.b		; E0 10
	cpx #$18.b		; E0 18
	cpy #$38.b		; C0 38
	brk $00.b		; 00 00
	cpy #$07.b		; C0 07
	cmp $BF.b,S		; C3 BF
	tya		; 98
	sei		; 78
	ldy #$60.b		; A0 60
	brk $FF.b		; 00 FF
	sed		; F8
	sed		; F8
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	sty $04.b		; 84 04
	and [$20.b]		; 27 20
	eor $000040.l,X		; 5F 40 00 00
	ora [$00.b]		; 07 00
	sbc $7C0000.l,X		; FF 00 00 7C
	sec		; 38
	inc $0302.w,X		; FE 02 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	php		; 08
	sed		; F8
	trb $1C.b		; 14 1C
	inx		; E8
	tsb $0000.w		; 0C 00 00
	mvp $FC,$44		; 44 44 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $07.b		; 00 07
	brk $E3.b		; 00 E3
	brk $F3.b		; 00 F3
	brk $00.b		; 00 00
	ora $2F7C05.l		; 0F 05 7C 2F
	cpx #$01.b		; E0 01
	sta ($50.b,X)		; 81 50
	cmp [$1C.b]		; C7 1C
	lsr $38.b		; 46 38
	.db $62, $08, $22		; 62 08 22
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $007E00.l,X		; 1F 00 7E 00
	bit $3804.w,X		; 3C 04 38
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $9F.b		; 00 9F
	sta $2E1FFF.l,X		; 9F FF 1F 2E
	and $3FFF0B.l,X		; 3F 0B FF 3F
	lda $2F3F2F.l,X		; BF 2F 3F 2F
	and $772E34.l,X		; 3F 34 2E 77
	ora $05EE.w		; 0D EE 05
	phx		; DA
	ora $8B.b,X		; 15 8B
	sty $3C.b		; 84 3C
	ora $27.b,S		; 03 27
	ora $201F27.l,X		; 1F 27 1F 20
	ora $A898E0.l,X		; 1F E0 98 A8
	cmp $C8.b,X		; D5 C8
	sbc ($E4.b,S),Y		; F3 E4
	sbc ($E4.b),Y		; F1 E4
	xce		; FB
	pea $E0F9.w		; F4 F9 E0
	xce		; FB
	inx		; E8
	sbc $0080.w,X		; FD 80 00
	dey		; 88
	pla		; 68
	sty $4E6C.w		; 8C 6C 4E
	inc $F6E6.w		; EE E6 F6
	inc $F6.b		; E6 F6
	cpx $E4.b		; E4 E4
	sep #$02		; E2 02
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FFFE.w,X		; FE FE FF
	cop $F7.b		; 02 F7
	stz $D9.b		; 64 D9
	eor #$D8.b		; 49 D8
	bvc 108.b		; 50 6C
	ldy $6F.b		; A4 6F
	plb		; AB
	sbc [$A4.b]		; E7 A4
	ply		; 7A
	jsr ($0200.w,X)		; FC 00 02
	stz $08.b		; 64 08
	eor #$26.b		; 49 26
	bvc  39.b		; 50 27
	ldy $13.b		; A4 13
	plb		; AB
	bpl -92.b		; 10 A4
	clc		; 18
	dec $FF3C.w		; CE 3C FF
	brk $38.b		; 00 38
	sed		; F8
	sbc $040701.l,X		; FF 01 07 04
	tsb $03.b		; 04 03
	sta [$83.b]		; 87 83
	jsr ($3C78.w,X)		; FC 78 3C
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	ora [$01.b]		; 07 01
	brk $04.b		; 00 04
	sed		; F8
	brk $F8.b		; 00 F8
	bra 120.b		; 80 78
	tda		; 7B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($08.b,X)		; 01 08
	sec		; 38
	jsr $0760.w		; 20 60 07
	beq -98.b		; F0 9E
	bra   8.b		; 80 08
	eor ($08.b,X)		; 41 08
	stx $3D04.w		; 8E 04 3D
	and $47.b,X		; 35 47
	ora [$07.b]		; 07 07
	ora $1F1F1F.l,X		; 1F 1F 1F 1F
	adc $FFFF7F.l,X		; 7F 7F FF FF
	adc ($71.b),Y		; 71 71
	rep #$C2		; C2 C2
	tsx		; BA
	.db $82, $00, $06		; 82 00 06
	sty $86.b		; 84 86
	.db $42, $C3		; 42 C3
	jsr $11E1.w		; 20 E1 11
	adc ($08.b),Y		; 71 08
	sec		; 38
	tsb $1C.b		; 04 1C
	cop $0E.b		; 02 0E
	jsr ($7804.w,X)		; FC 04 78
	brk $BC.b		; 00 BC
	bra  95.b		; 80 5F
	eor ($2E.b,X)		; 41 2E
	jsr $1017.w		; 20 17 10
	phd		; 0B
	php		; 08
	ora $04.b		; 05 04
	ora $03.b,S		; 03 03
	ora $07.b		; 05 07
	ora $171F0F.l		; 0F 0F 1F 17
	ora $1F1F17.l,X		; 1F 17 1F 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora $03.b		; 05 03
	ora $1703.w		; 0D 03 17
	phd		; 0B
	bpl  15.b		; 10 0F
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	cpy $CFF3.w		; CC F3 CF
	beq  -3.b		; F0 FD
	cmp $CD.b,S		; C3 CD
	sbc ($D5.b,S),Y		; F3 D5
	rtl		; 6B

	sta $EB.b,X		; 95 EB
	sta $6B.b,X		; 95 6B
	sta $F06B.w,X		; 9D 6B F0
	sta $F0.b,S		; 83 F0
	bra -61.b		; 80 C3
	bra 115.b		; 80 73
	bra 107.b		; 80 6B
	bra -21.b		; 80 EB
	brk $6B.b		; 00 6B
	brk $6B.b		; 00 6B
	brk $7D.b		; 00 7D
	phd		; 0B
	trb $1C0A.w		; 1C 0A 1C
	asl A		; 0A
	inc A		; 1A
	tsb $001E.w		; 0C 1E 00
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	phd		; 0B
	brk $0A.b		; 00 0A
	ora ($0A.b,X)		; 01 0A
	ora ($0C.b,X)		; 01 0C
	ora ($00.b,X)		; 01 00
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
	rol $0000.w,X		; 3E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $7F1E.w		; 2D 1E 7F
	brk $63.b		; 00 63
	jsl $D2007E.l		; 22 7E 00 D2
	jmp $00CC.w		; 4C CC 00
	stz $C0.b		; 64 C0
	jmp ($1EE8.w,X)		; 7C E8 1E
	brk $00.b		; 00 00
	brk $22.b		; 00 22
	trb $0000.w		; 1C 00 00
	jmp $0020.w		; 4C 20 00
	bmi -64.b		; 30 C0
	clc		; 18
	inx		; E8
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $E1.b		; 00 E1
	ora ($08.b,X)		; 01 08
	ora $017F40.l		; 0F 40 7F 01
	sbc $00.b,S		; E3 00
	asl $02.b		; 06 02
	asl $FF.b		; 06 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $F4.b		; 00 F4
	tsb $A1.b		; 04 A1
	and ($00.b,X)		; 21 00
	brk $03.b		; 00 03
	cop $01.b		; 02 01
	brk $C2.b		; 00 C2
	asl $08.b		; 06 08
	asl $8FA1.w		; 0E A1 8F
	ldy #$8B.b		; A0 8B
	rts		; 60

	ora #$70.b		; 09 70
	ora $18C0.w,Y		; 19 C0 18
	cpy #$10.b		; C0 10
	sbc $F300.w,Y		; F9 00 F3
	cop $78.b		; 02 78
	php		; 08
	adc ($01.b),Y		; 71 01
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	ora [$30.b],Y		; 17 30
	ora $1700.w,Y		; 19 00 17
	tsb $1F.b		; 04 1F
	ora ($0B.b,X)		; 01 0B
	ora $050707.l		; 0F 07 07 05
	ora [$03.b]		; 07 03
	ora $08.b,S		; 03 08
	brk $00.b		; 00 00
	asl $04.b		; 06 04
	php		; 08
	brk $01.b		; 00 01
	ora #$07.b		; 09 07
	ora $03.b		; 05 03
	ora $03.b		; 05 03
	ora $01.b,S		; 03 01
	ora $1B1C.w,X		; 1D 1C 1B
	ora [$9B.b],Y		; 17 9B
	ora [$9F.b],Y		; 17 9F
	sta [$8F.b],Y		; 97 8F
	sta $DFCF6B.l		; 8F 6B CF DF
	sbc $1CE7DB.l		; EF DB E7 1C
	ora $10.b,S		; 03 10
	ora $930F11.l		; 0F 11 0F 93
	ora $4B078B.l		; 0F 8B 07 4B
	sta [$6E.b]		; 87 6E
	sta ($E1.b,X)		; 81 E1
	stx $F364.w		; 8E 64 F3
	sbc ($FE.b)		; F2 FE
	plx		; FA
	inc $FAFE.w,X		; FE FE FA
	jsr ($F4FC.w,X)		; FC FC F4
	jsr ($F4FC.w,X)		; FC FC F4
	jsr ($0CFC.w,X)		; FC FC 0C
	cpx $F0E2.w		; EC E2 F0
	sbc ($FC.b)		; F2 FC
	sbc ($FC.b)		; F2 FC
	pea $F4F8.w		; F4 F8 F4
	sed		; F8
	cpx $F8.b		; E4 F8
	jsr ($0000.w,X)		; FC 00 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $8000.w,X		; 3E 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B0.b		; 00 B0
	bne -80.b		; D0 B0
	bne -16.b		; D0 F0
	bne -40.b		; D0 D8
	inx		; E8
	cld		; D8
	inx		; E8
	sbc $EEE4.w,X		; FD E4 EE
	ora ($00.b),Y		; 11 00
	and $D00FD0.l,X		; 3F D0 0F D0
	ora $E80FD0.l		; 0F D0 0F E8
	ora [$E8.b]		; 07 E8
	ora [$E4.b]		; 07 E4
	cop $11.b		; 02 11
	ora ($00.b),Y		; 11 00
	brk $FB.b		; 00 FB
	bra  63.b		; 80 3F
	plp		; 28
	and [$10.b],Y		; 37 10
	adc [$20.b]		; 67 20
	cpx #$60.b		; E0 60
	sed		; F8
	sbc $00FE00.l,X		; FF 00 FE 00
	bra -121.b		; 80 87
	brk $27.b		; 00 27
	cpy #$0F.b		; C0 0F
	cpy #$1F.b		; C0 1F
	bra  31.b		; 80 1F
	brk $06.b		; 00 06
	asl $80.b		; 06 80
	bra   0.b		; 80 00
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	brk $0D.b		; 00 0D
	ora $1F.b,S		; 03 1F
	trb $FF0F.w		; 1C 0F FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	bpl  12.b		; 10 0C
	asl $3D05.w		; 0E 05 3D
	.db $42, $9F		; 42 9F
	cpy #$5F.b		; C0 5F
	cpx #$4E.b		; E0 4E
	cpx #$66.b		; E0 66
	sbc ($C2.b),Y		; F1 C2
	tsa		; 3B
	bmi  15.b		; 30 0F
	cld		; D8
	bpl -66.b		; 10 BE
	bra  63.b		; 80 3F
	brk $3F.b		; 00 3F
	jsr $203F.w		; 20 3F 20
	ora $010501.l		; 0F 01 05 01
	brk $C0.b		; 00 C0
	bpl  32.b		; 10 20
	php		; 08
	and $08.b,S		; 23 08
	jsl $0C260C.l		; 22 0C 26 0C
	rol $40.b		; 26 40
	rol $60.b		; 26 60
	tsb $58.b		; 04 58
	bit $305C.w		; 2C 5C 30
	asl $1C02.w,X		; 1E 02 1C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	tsb $18.b		; 04 18
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	brk $D0.b		; 00 D0
	jsr $E0F8.w		; 20 F8 E0
	jsr ($5CD0.w,X)		; FC D0 5C
	bcc -14.b		; 90 F2
	jmp ($40BF.w)		; 6C BF 40
	tda		; 7B
	dec A		; 3A
	and $002000.l,X		; 3F 00 20 00
	cpx #$00.b		; E0 00
	bne   0.b		; D0 00
	bcc  32.b		; 90 20
	jmp ($4000.w)		; 6C 00 40
	brk $3A.b		; 00 3A
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	clc		; 18
	bpl  24.b		; 10 18
	dey		; 88
	sty $C640.w		; 8C 40 C6
	jsr $12E3.w		; 20 E3 12
	adc ($08.b,S),Y		; 73 08
	and $1D05.w,Y		; 39 05 1D
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	bvs   0.b		; 70 00
	ldy $5E84.w,X		; BC 84 5E
	.db $42, $2C		; 42 2C
	jsr $1117.w		; 20 17 11
	asl A		; 0A
	php		; 08
	asl $1C43.w,X		; 1E 43 1C
	cmp $58.b,S		; C3 58
.ACCU 16
.INDEX 16
	rep #$78		; C2 78
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	stx $30.b		; 86 30
	stx $30.b		; 86 30
	sty $28.b		; 84 28
	sty $003C.w		; 8C 3C 00
	ror $3C42.w,X		; 7E 42 3C
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	tsb $78.b		; 04 78
	brk $70.b		; 00 70
	brk $FE.b		; 00 FE
	brk $BD.b		; 00 BD
	ror $3F5E.w,X		; 7E 5E 3F
	and $132D1F.l		; 2F 1F 2D 13
	ora [$08.b],Y		; 17 08
	tsb $0400.w		; 0C 00 04
	brk $00.b		; 00 00
	brk $7E.b		; 00 7E
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $13.b		; 00 13
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	bra -72.b		; 80 B8
	jsr $D0F6.w		; 20 F6 D0
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	rti		; 40

	bne   8.b		; D0 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $2F18.w		; 2C 18 2F
	ora $1E2F.w,X		; 1D 2F 1E
	eor $5E3E.w		; 4D 3E 5E
	bit $0CF6.w		; 2C F6 0C
	stz $1A00.w,X		; 9E 00 1A
	php		; 08
	clc		; 18
	ora $1D.b,S		; 03 1D
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	brk $2C.b		; 00 2C
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	tsb $1E.b		; 04 1E
	brk $0E.b		; 00 0E
	tsb $0A.b		; 04 0A
	brk $06.b		; 00 06
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
	brk $90.b		; 00 90
	tya		; 98
	rti		; 40

	cpy $EC2B.w		; CC 2B EC
	ora $3F72.w,X		; 1D 72 3F
	asl $1D2F.w		; 0E 2F 1D
	ora $09.b,X		; 15 09
	ora $006006.l,X		; 1F 06 60 00
	clv		; B8
	dey		; 88
	bvc  64.b		; 50 40
	jsl $000E20.l		; 22 20 0E 00
	ora $0900.w,X		; 1D 00 09
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$6000.w		; C0 00 60
	brk $20.b		; 00 20
	jsr $1030.w		; 20 30 10
	clc		; 18
	brk $0C.b		; 00 0C
	php		; 08
	tsb $0000.w		; 0C 00 00
	bra -128.b		; 80 80
	cpy #$C040.w		; C0 40 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	bra -32.b		; 80 E0
	jsr $4030.w		; 20 30 40
	php		; 08
	bmi   4.b		; 30 04
	trb $9016.w		; 1C 16 90
	sep #$00		; E2 00
	sty $7E04.w		; 8C 04 7E
	brk $00.b		; 00 00
	cpy #$F0C0.w		; C0 C0 F0
	beq  -8.b		; F0 F8
	sed		; F8
	inx		; E8
	inx		; E8
	bit $703C.w,X		; 3C 3C 70
	bvs -120.b		; 70 88
	dey		; 88
	trb $C07E.w		; 1C 7E C0
	jmp ($6040.w,X)		; 7C 40 60
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	cpy #$0000.w		; C0 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	ora $0C.b		; 05 0C
	asl A		; 0A
	clc		; 18
	ora $31.b,X		; 15 31
	bit $4067.w		; 2C 67 40
	cpy $54.b		; C4 54
	dec $29.b		; C6 29
	.db $62, $01, $00		; 62 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $1800.w		; 0E 00 18
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $AF.b		; 00 AF
	tsa		; 3B
	eor $DFA76F.l,X		; 5F 6F A7 DF
	adc $BFDFFF.l		; 6F FF DF BF
	sta [$FF.b],Y		; 97 FF
	lda $7FBFFF.l,X		; BF FF BF 7F
	dex		; CA
	ora $8D.b		; 05 8D
	ora ($03.b,S),Y		; 13 03
	and $9B1F67.l,X		; 3F 67 1F 9B
	adc [$87.b]		; 67 87
	sei		; 78
	stz $1F7F.w		; 9C 7F 1F
	adc $AFC8B7.l,X		; 7F B7 C8 AF
	iny		; C8
	lda [$C2.b],Y		; B7 C2
	.db $82, $CC, $08		; 82 CC 08
	sbc $08CD41.l,X		; FF 41 CD 08
	ldx $FB18.w,Y		; BE 18 FB
	bmi -80.b		; 30 B0
	bcs -78.b		; B0 B2
	tsx		; BA
	clv		; B8
	and ($B1.b),Y		; 31 B1
	brk $00.b		; 00 00
	and ($32.b)		; 32 32
	eor #$1441.w		; 49 41 14
	jsr $C000.w		; 20 00 C0
	rti		; 40

	jsr $6080.w		; 20 80 60
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	sed		; F8
	clc		; 18
	brk $00.b		; 00 00
	cpy #$80C0.w		; C0 C0 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $9F.b		; 00 9F
	sbc $6EAFEB.l,X		; FF EB AF 6E
	tax		; AA
	lsr $CE8A.w		; 4E 8A CE
	lsr A		; 4A
	dec $8E4A.w		; CE 4A 8E
	asl A		; 0A
	stx $DA0A.w		; 8E 0A DA
	and $AB.b		; 25 AB
	trb $AA.b		; 14 AA
	ora ($8A.b),Y		; 11 8A
	and ($4A.b),Y		; 31 4A
	and ($4A.b),Y		; 31 4A
	and ($0A.b),Y		; 31 0A
	adc ($0A.b),Y		; 71 0A
	adc ($D3.b),Y		; 71 D3
	and ($AE.b)		; 32 AE
	eor $ADD7.w,X		; 5D D7 AD
	ror $7E12.w		; 6E 12 7E
	lsr $34.b,X		; 56 34
	tsb $1F23.w		; 0C 23 1F
	cpx #$323F.w		; E0 3F 32
	tsb $015D.w		; 0C 5D 01
	ldy $1100.w		; AC 00 11
	bra  81.b		; 80 51
	bra  11.b		; 80 0B
	iny		; C8
	tsb $17CC.w		; 0C CC 17
	ora [$00.b],Y		; 17 00
	cpx #$FCC0.w		; E0 C0 FC
	php		; 08
	ora $000302.l		; 0F 02 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	beq   0.b		; F0 00
	brk $20.b		; 00 20
	jsr $04F4.w		; 20 F4 04
	sbc $FF01.w,X		; FD 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E080.w		; C0 80 E0
	rti		; 40

	bvs  32.b		; 70 20
	bmi  32.b		; 30 20
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	ldy #$C020.w		; A0 20 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $263010.l,X		; 1F 10 30 26
	rts		; 60

	eor $A016C0.l		; 4F C0 16 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1F1F0F.l		; 0F 0F 1F 1F
	and $7F7F3F.l,X		; 3F 3F 7F 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	sei		; 78
	php		; 08
	tsb $0634.w		; 0C 34 06
	eor ($07.b)		; 52 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	beq -16.b		; F0 F0
	sed		; F8
	sed		; F8
	jsr ($2AFC.w,X)		; FC FC 2A
	ora $1D33.w,X		; 1D 33 1D
	ora [$0B.b],Y		; 17 0B
	phd		; 0B
	ora [$0E.b]		; 07 0E
	ora [$06.b]		; 07 06
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $1D.b		; 00 1D
	brk $1D.b		; 00 1D
	brk $0B.b		; 00 0B
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $1E.b,S		; 03 1E
	tsb $6F.b		; 04 6F
	trb $9A.b		; 14 9A
	adc ($BA.b),Y		; 71 BA
	adc ($7F.b),Y		; 71 7F
	tsx		; BA
	inc $5438.w,X		; FE 38 54
	sec		; 38
	ora $00.b,S		; 03 00
	tsb $01.b		; 04 01
	trb $00.b		; 14 00
	adc ($04.b),Y		; 71 04
	adc ($04.b),Y		; 71 04
	tsx		; BA
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $5C.b		; 00 5C
	jsr $0064.w		; 20 64 00
	jmp ($3A30.w,X)		; 7C 30 3A
	php		; 08
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	clc		; 18
	bmi   0.b		; 30 00
	php		; 08
	tsb $00.b		; 04 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$E0E0.w		; C0 E0 E0
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	cpy #$6090.w		; C0 90 60
	beq  32.b		; F0 20
	bcs  64.b		; B0 40
	cpy #$0000.w		; C0 00 00
	brk $58.b		; 00 58
	rol $5F.b		; 26 5F
	sec		; 38
	eor $7F3E.w,X		; 5D 3E 7F
	brk $7B.b		; 00 7B
	dec A		; 3A
	adc $247A00.l,X		; 7F 00 7A 24
	adc $042418.l,X		; 7F 18 24 04
	sec		; 38
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $3A.b		; 00 3A
	tsb $00.b		; 04 00
	brk $24.b		; 00 24
	brk $18.b		; 00 18
	brk $0E.b		; 00 0E
	and $0B14.w,Y		; 39 14 0B
	ora $3F06.w,Y		; 19 06 3F
	ora ($22.b,X)		; 01 22
	ora $0B14.w,X		; 1D 14 0B
	ora #$1506.w		; 09 06 15
	asl $0005.w		; 0E 05 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	brk $01.b		; 00 01
	ora $0B00.w,X		; 1D 00 0B
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	brk $BF.b		; 00 BF
	adc $FF7FFE.l,X		; 7F FE 7F FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	adc $7F7FFF.l,X		; 7F FF 7F 7F
	inc $BF.b,X		; F6 BF
	cmp $5E7F1E.l,X		; DF 1E 7F 5E
	and $DDDE3D.l,X		; 3F 3D DE DD
.ACCU 8
.INDEX 8
	sep #$76		; E2 76
	sbc $3D5F.w,Y		; F9 5F 3D
	inc $1E.b,X		; F6 1E
	cmp $EC6515.l		; CF 15 65 EC
	sta [$8E.b]		; 87 8E
	eor ($86.b,X)		; 41 86
	cmp ($80.b,X)		; C1 80
	beq   0.b		; F0 00
	lsr $72B0.w		; 4E B0 72
	cpy $70AF.w		; CC AF 70
	.db $62, $80, $80		; 62 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $B0.b		; 00 B0
	brk $CC.b		; 00 CC
	brk $70.b		; 00 70
	brk $77.b		; 00 77
	cmp $7BBFFF.l,X		; DF FF BF 7B
	lda $073EF9.l,X		; BF F9 3E 07
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C7.b		; 00 C7
	clc		; 18
	sta $3C8B3E.l,X		; 9F 3E 8B 3C
	sec		; 38
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $07.b		; 00 07
	and $031E06.l,X		; 3F 06 1E 03
	ora $000701.l		; 0F 01 07 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	ora #$08.b		; 09 08
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  -1.b		; F0 FF
	php		; 08
	tsb $0670.w		; 0C 70 06
	bit $07.b,X		; 34 07
	tsx		; BA
	sta $DD.b,S		; 83 DD
	cmp ($2E.b,X)		; C1 2E
	cpx #$17.b		; E0 17
	bvs   0.b		; 70 00
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	tsb $FA.b		; 04 FA
	cop $7C.b		; 02 7C
	brk $3E.b		; 00 3E
	brk $5F.b		; 00 5F
	rti		; 40

	and $FF0320.l		; 2F 20 03 FF
	asl $0E.b		; 06 0E
	tsb $1C.b		; 04 1C
	brk $18.b		; 00 18
	php		; 08
	clc		; 18
	php		; 08
	tya		; 98
	bra -48.b		; 80 D0
	brk $70.b		; 00 70
	tsb $04.b		; 04 04
	ora ($00.b,X)		; 01 00
	phd		; 0B
	php		; 08
	ora $000708.l		; 0F 08 07 00
	ora [$00.b]		; 07 00
	ora $40CF00.l		; 0F 00 CF 40
	brk $30.b		; 00 30
	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	cpx #$20.b		; E0 20
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $C0.b		; A4 C0
	rti		; 40

	cmp ($89.b,X)		; C1 89
	plb		; AB
	sta ($DF.b,S),Y		; 93 DF
	ora $4FD0.w		; 0D D0 4F
	bne  67.b		; D0 43
	sed		; F8
	ora $3F7C.w,Y		; 19 7C 3F
	and $743E3E.l,X		; 3F 3E 3E 74
	stz $21.b,X		; 74 21
	and ($6F.b,X)		; 21 6F
	rts		; 60

	and $080F20.l		; 2F 20 0F 08
	ora [$04.b]		; 07 04
	asl $AF.b,X		; 16 AF
	trb $5E.b		; 14 5E
	rti		; 40

	jsr ($B860.w,X)		; FC 60 B8
	jsr $90F0.w		; 20 F0 90
	clc		; 18
	cpy #$10.b		; C0 10
	bra  96.b		; 80 60
	beq -16.b		; F0 F0
	ldy #$A0.b		; A0 A0
	php		; 08
	php		; 08
	bra   0.b		; 80 00
	rti		; 40

	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	rti		; 40

	tda		; 7B
	cop $5E.b		; 02 5E
	sec		; 38
	eor $5D3E.w,X		; 5D 3E 5D
	rol $205E.w		; 2E 5E 20
	and [$03.b],Y		; 37 03
	and ($00.b,S),Y		; 33 00
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	sec		; 38
	brk $3E.b		; 00 3E
	brk $2E.b		; 00 2E
	brk $20.b		; 00 20
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	bra -80.b		; 80 B0
	rts		; 60

	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($05.b,X)		; 01 05
	cop $07.b		; 02 07
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora $0B1C05.l		; 0F 05 1C 0B
	sec		; 38
	asl $0060.w		; 0E 60 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $0B.b		; 02 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	and $C35E20.l,X		; 3F 20 5E C3
	and $11E1.w		; 2D E1 11
	sbc ($48.b),Y		; F1 48
	cmp ($7A.b,X)		; C1 7A
	ora $E8.b,S		; 03 E8
	asl $3CA0.w		; 0E A0 3C
	bra -16.b		; 80 F0
	ldy $5E80.w,X		; BC 80 5E
	rti		; 40

	rol $BF20.w		; 2E 20 BF
	sta ($FC.b,X)		; 81 FC
	brk $F4.b		; 00 F4
	tsb $D0.b		; 04 D0
	bpl  64.b		; 10 40
	rti		; 40

	brk $86.b		; 00 86
	rti		; 40

	dec $40.b		; C6 40
	cpy $00.b		; C4 00
	cpy $00.b		; C4 00
	cpy $00.b		; C4 00
	mvp $6C,$28		; 44 28 6C
	inx		; E8
	bit $047C.w		; 2C 7C 04
	bit $3804.w,X		; 3C 04 38
	brk $78.b		; 00 78
	rti		; 40

	sei		; 78
	rti		; 40

	sec		; 38
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $05.b,S		; 03 05
	ora [$05.b]		; 07 05
	ora $151B0A.l		; 0F 0A 1B 15
	and ($00.b),Y		; 31 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	ora $05.b,S		; 03 05
	ora $06.b,S		; 03 06
	ora ($0F.b,X)		; 01 0F
	brk $0E.b		; 00 0E
	ora ($3D.b,X)		; 01 3D
	asl $26E5.w		; 0E E5 26
	sbc ($92.b,S),Y		; F3 92
	xce		; FB
	nop		; EA
	sbc $FFF4.w,X		; FD F4 FF
	sbc ($50.b,S),Y		; F3 50
	sbc $0E0001.l,X		; FF 01 00 0E
	brk $26.b		; 00 26
	clc		; 18
	sta ($4C.b)		; 92 4C
	tax		; AA
	mvp $62,$B4		; 44 B4 62
	sbc ($A8.b,S),Y		; F3 A8
	bvc -88.b		; 50 A8
	cpx #$F9.b		; E0 F9
	bra  -2.b		; 80 FE
	cli		; 58
	cpx #$54.b		; E0 54
	pla		; 68
	sty $A8.b,X		; 94 A8
	ldy $98.b,X		; B4 98
	clv		; B8
	trb $F8.b		; 14 F8
	mvn $18,$9E		; 54 9E 18
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	iny		; C8
	brk $48.b		; 00 48
	brk $58.b		; 00 58
	brk $50.b		; 00 50
	brk $10.b		; 00 10
	brk $07.b		; 00 07
	ora ($1C.b,X)		; 01 1C
	cop $66.b		; 02 66
	trb $6DFE.w		; 1C FE 6D
	cmp $92F586.l		; CF 86 F5 92
	eor $205C2C.l,X		; 5F 2C 5C 20
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $6D00.w,X		; 1D 00 6D
	ora ($86.b,X)		; 01 86
	bmi -110.b		; 30 92
	php		; 08
	bit $2080.w		; 2C 80 20
	bra 104.b		; 80 68
	ora $803CA0.l		; 0F A0 3C 80
	beq   0.b		; F0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F4.b		; 00 F4
	tsb $D0.b		; 04 D0
	bpl  64.b		; 10 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	tsb $0C.b		; 04 0C
	ora #$18.b		; 09 18
	ora ($30.b,S),Y		; 13 30
	ora $28.b		; 05 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora $1F1F0F.l		; 0F 0F 1F 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$F0.b		; C0 F0
	bpl  30.b		; 10 1E
	.db $82, $03, $CD		; 82 03 CD
	ora ($94.b,X)		; 01 94
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$FC.b		; E0 FC
	jsr ($FEFE.w,X)		; FC FE FE
	sbc $0C05FF.l,X		; FF FF 05 0C
	asl A		; 0A
	clc		; 18
	ora $31.b,X		; 15 31
	jsl $CE4863.l		; 22 63 48 CE
	mvn $2A,$C6		; 54 C6 2A
	adc $17.b,S		; 63 17
	and ($03.b)		; 32 03
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $4F.b		; 00 4F
	adc $6FEF97.l,X		; 7F 97 EF 6F
	lda $B7BFDF.l,X		; BF DF BF B7
	sbc $FFFFBE.l,X		; FF BE FF FF
	sbc $AD7FBF.l,X		; FF BF 7F AD
	and $03.b,S		; 23 03
	ora $9A5F27.l,X		; 1F 27 5F 9A
	adc [$87.b]		; 67 87
	sei		; 78
	stz $EE7F.w		; 9C 7F EE
	ora $0E671B.l,X		; 1F 1B 67 0E
	cmp $65.b,X		; D5 65
	txa		; 8A
	lsr $2E91.w		; 4E 91 2E
	sty $04.b		; 84 04
	xce		; FB
	eor ($DD.b),Y		; 51 DD
	php		; 08
	ldx $EB34.w,Y		; BE 34 EB
	jsr $71A0.w		; 20 A0 71
	adc ($71.b),Y		; 71 71
	adc $75.b,X		; 75 75
	adc ($00.b),Y		; 71 00
	brk $22.b		; 00 22
	jsl $28414D.l		; 22 4D 41 28
	cop $00.b		; 02 00
	rti		; 40

	bra  64.b		; 80 40
	bra  64.b		; 80 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	sec		; 38
	clv		; B8
	jmp ($A1FF.w,X)		; 7C FF A1
	adc $808080.l,X		; 7F 80 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $38.b		; 00 38
	brk $54.b		; 00 54
	sec		; 38
	jsl $780BE2.l		; 22 E2 0B 78
	phd		; 0B
	sec		; 38
	ora $1C.b		; 05 1C
	ora $0E.b,S		; 03 0E
	brk $06.b		; 00 06
	ora ($FB.b,X)		; 01 FB
	rts		; 60

	adc $3703F2.l,X		; 7F F2 03 37
	bmi  23.b		; 30 17
	bpl  11.b		; 10 0B
	php		; 08
	ora $04.b		; 05 04
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	tya		; 98
	clc		; 18
	sbc $E201.w,X		; FD 01 E2
	and ($C3.b),Y		; 31 C3
	clc		; 18
	sbc [$19.b],Y		; F7 19
	sbc $0C.b,S		; E3 0C
	xce		; FB
	asl $0771.w		; 0E 71 07
	lda $5887.w,X		; BD 87 58
	cmp $C1.b,S		; C3 C1
	brk $F0.b		; 00 F0
	bpl -31.b		; 10 E1
	brk $F8.b		; 00 F8
	php		; 08
	sbc ($00.b)		; F2 00
	sbc $7904.w,X		; FD 04 79
	brk $3E.b		; 00 3E
	cop $25.b		; 02 25
	tas		; 1B
	ora $060A03.l,X		; 1F 03 0A 06
	asl $0706.w		; 0E 06 07
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1B.b		; 00 1B
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	ora ($06.b,X)		; 01 06
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BD.b		; 00 BD
	jmp.w [$D0B1]		; DC B1 D0
	lda ($D0.b),Y		; B1 D0
	and ($D1.b),Y		; 31 D1
	adc ($A1.b,X)		; 61 A1
	cpx #$20.b		; E0 20
	rts		; 60

	jsr $003F.w		; 20 3F 00
	jmp.w [$D002]		; DC 02 D0
	asl $0ED0.w		; 0E D0 0E
	cmp ($0E.b),Y		; D1 0E
	lda ($1E.b,X)		; A1 1E
	jsr $201F.w		; 20 1F 20
	ora $B20000.l,X		; 1F 00 00 B2
	lda $939C.w		; AD 9C 93
	sty $C88B.w		; 8C 8B C8
	lsr $F8.b		; 46 F8
	lsr $37F4.w		; 4E F4 37
	nop		; EA
	adc $5C.b,S		; 63 5C
	cmp ($AD.b,X)		; C1 AD
	eor ($93.b,X)		; 41 93
	adc $8A.b,S		; 63 8A
	adc ($40.b)		; 72 40
	bmi  68.b		; 30 44
	tsb $0A.b		; 04 0A
	cop $1C.b		; 02 1C
	brk $BF.b		; 00 BF
	sta ($80.b,X)		; 81 80
	jsr ($EC04.w,X)		; FC 04 EC
	tsb $8C.b		; 04 8C
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	clc		; 18
	brk $17.b		; 00 17
	ora #$17.b		; 09 17
	stx $6467.w		; 8E 67 64
	sta $80.b,S		; 83 80
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	php		; 08
	brk $0E.b		; 00 0E
	brk $F0.b		; 00 F0
	rti		; 40

	inx		; E8
	jsr $003C.w		; 20 3C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $20.b		; 00 20
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  32.b		; F0 20
	sec		; 38
	bpl  24.b		; 10 18
	brk $08.b		; 00 08
	bpl  24.b		; 10 18
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne  16.b		; D0 10
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	jsr $0030.w		; 20 30 00
	bmi   0.b		; 30 00
	jsr $6040.w		; 20 40 60
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	ora ($00.b,X)		; 01 00
	asl $07.b		; 06 07
	phd		; 0B
	ora $0B0F05.l		; 0F 05 0F 0B
	tas		; 1B
	ora $31.b,X		; 15 31
	pld		; 2B
	adc $55.b,S		; 63 55
	cmp [$00.b]		; C7 00
	brk $06.b		; 00 06
	ora ($0B.b,X)		; 01 0B
	asl $05.b		; 06 05
	ora $06.b,S		; 03 06
	ora ($0F.b,X)		; 01 0F
	brk $1D.b		; 00 1D
	brk $3B.b		; 00 3B
	cop $29.b		; 02 29
	bvs  16.b		; 70 10
	bvs  34.b		; 70 22
	ror A		; 6A
	bit $77.b		; 24 77
	ora $34.b,S		; 03 34
	ora ($34.b,S),Y		; 13 34
	bpl  62.b		; 10 3E
	inc $1F.b		; E6 1F
	ora $0F0F0F.l		; 0F 0F 0F 0F
	ora $081D.w,X		; 1D 1D 08
	php		; 08
	tas		; 1B
	clc		; 18
	phd		; 0B
	php		; 08
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	ora $2B.b		; 05 2B
	ora $57.b		; 05 57
	bvc  -1.b		; 50 FF
	cld		; D8
	inc $3C48.w		; EE 48 3C
	cpx $06.b		; E4 06
	beq   4.b		; F0 04
	rts		; 60

	clc		; 18
	jsr ($A8FC.w,X)		; FC FC A8
	tay		; A8
	cop $02.b		; 02 02
	rts		; 60

	rti		; 40

	bne  32.b		; D0 20
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	bpl  15.b		; 10 0F
	ora $0A16.w,X		; 1D 16 0A
	and $19.b		; 25 19
	and [$18.b]		; 27 18
	ora $1107.w,Y		; 19 07 11
	asl $1D2A.w		; 0E 2A 1D
	and ($1D.b,S),Y		; 33 1D
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $1802.w,Y		; 19 02 18
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	brk $1D.b		; 00 1D
	brk $1D.b		; 00 1D
	brk $FF.b		; 00 FF
	sta $FF4F7F.l,X		; 9F 7F 4F FF
	and ($FF.b),Y		; 31 FF
	inc $FFCF.w,X		; FE CF FF
	xce		; FB
	xce		; FB
	adc [$EF.b]		; 67 EF
	lda $F4.b,X		; B5 F4
	stx $4719.w		; 8E 19 47
	stx $0131.w		; 8E 31 01
	lsr $4FE0.w,X		; 5E E0 4F
	inc $7E99.w,X		; FE 99 7E
	cmp $3C.b,S		; C3 3C
	cpx $1A.b		; E4 1A
	lda $8F77E0.l		; AF E0 77 8F
	jmp.w [$CFBF]		; DC BF CF
	bcs  -7.b		; B0 F9
	asl $AF.b		; 06 AF
	bvs -47.b		; 70 D1
	ldx $DEED.w,Y		; BE ED DE
	ldy #$40.b		; A0 40
	ora $803F80.l		; 0F 80 3F 80
	bmi -128.b		; 30 80
	asl $00.b		; 06 00
	bvs   0.b		; 70 00
	ldx $DE00.w,Y		; BE 00 DE
	brk $88.b		; 00 88
	sei		; 78
	cpy #$40.b		; C0 40
	sta ($01.b,X)		; 81 01
	sta ($03.b,X)		; 81 03
	sta ($87.b,X)		; 81 87
	dey		; 88
	stx $9E92.w		; 8E 92 9E
	cpx #$FC.b		; E0 FC
	ora [$10.b],Y		; 17 10
	and $007E00.l,X		; 3F 00 7E 00
	ror $7C02.w,X		; 7E 02 7C
	tsb $73.b		; 04 73
	cop $69.b		; 02 69
	php		; 08
	ora [$14.b],Y		; 17 14
	ldx $1380.w,Y		; BE 80 13
	beq   4.b		; F0 04
	bit $0F00.w,X		; 3C 00 0F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $202F00.l,X		; 7F 00 2F 20
	phd		; 0B
	php		; 08
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldx $8CE3.w,Y		; BE E3 8C
	ora ($E2.b,X)		; 01 E2
	ora $84.b,S		; 03 84
	sta [$18.b]		; 87 18
	inc $3C00.w,X		; FE 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp $00FE40.l		; 5C 40 FE 00
	jsr ($7A00.w,X)		; FC 00 7A
	cop $24.b		; 02 24
	bit $00.b		; 24 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E4.b		; 00 E4
	tas		; 1B
	wai		; CB
	eor $95F7.w		; 4D F7 95
	xce		; FB
	sbc #$EB.b		; E9 EB
	sbc ($F5.b)		; F2 F5
	sed		; F8
	cmp [$FA.b],Y		; D7 FA
	adc ($FC.b,S),Y		; 73 FC
	ora $4C00.w,Y		; 19 00 4C
	bmi  20.b		; 30 14
	dey		; 88
	inx		; E8
	mvp $54,$A2		; 44 A2 54
	cpx #$9A.b		; E0 9A
	.db $42, $B0		; 42 B0
	rti		; 40

	bcs -32.b		; B0 E0
	sbc $F688.w,Y		; F9 88 F6
	tay		; A8
	bne  40.b		; D0 28
	bvc  72.b		; 50 48
	bmi -16.b		; 30 F0
	jsr $20F0.w		; 20 F0 20
	rts		; 60

	clc		; 18
	stz $C018.w,X		; 9E 18 C0
	brk $10.b		; 00 10
	brk $D0.b		; 00 D0
	rti		; 40

	bcs   0.b		; B0 00
	ldy #$00.b		; A0 00
	ldy #$00.b		; A0 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
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
	jsr ($FE00.w,X)		; FC 00 FE
	ldy $0D56.w		; AC 56 0D
	ldx $AA44.w		; AE 44 AA
	mvp $1B,$FC		; 44 FC 1B
	trb $0001.w		; 1C 01 00
	brk $00.b		; 00 00
	brk $AC.b		; 00 AC
	brk $0C.b		; 00 0C
	ldy #$45.b		; A0 45
	bpl  69.b		; 10 45
	bpl  25.b		; 10 19
	ora ($00.b,X)		; 01 00
	brk $1F.b		; 00 1F
	brk $7F.b		; 00 7F
	asl $1D.b		; 06 1D
	asl $1C2E.w		; 0E 2E 1C
	phy		; 5A
	bit $3D5B.w,X		; 3C 5B 3D
	and [$18.b],Y		; 37 18
	rol A		; 2A
	bpl   0.b		; 10 00
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	ora ($3C.b,X)		; 01 3C
	ora ($3D.b,X)		; 01 3D
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	tsb $00.b		; 04 00
	bpl -32.b		; 10 E0
	bmi -16.b		; 30 F0
	cpy #$E8.b		; C0 E8
	beq  -8.b		; F0 F8
	brk $D8.b		; 00 D8
	bne -16.b		; D0 F0
	brk $10.b		; 00 10
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	jsr $0000.w		; 20 00 00
	cpx #$00.b		; E0 00
	bne  32.b		; D0 20
	rts		; 60

	rti		; 40

	cpx #$00.b		; E0 00
	ldy #$C0.b		; A0 C0
	bne -32.b		; D0 E0
	jmp ($F6C0.w)		; 6C C0 F6
	bit $007F.w		; 2C 7F 00
	jsr $4000.w		; 20 00 40
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	bpl  44.b		; 10 2C
	brk $00.b		; 00 00
	brk $FA.b		; 00 FA
	inc $FEFA.w,X		; FE FA FE
	lda $FFFE.w,X		; BD FE FF
	inc $FEFF.w,X		; FE FF FE
	sbc $A37D0C.l,X		; FF 0C 7D A3
	ror $FAAD.w,X		; 7E AD FA
	jsr ($FC7A.w,X)		; FC 7A FC
	stz $F47A.w		; 9C 7A F4
	txa		; 8A
	rol $0CF2.w,X		; 3E F2 0C
	tsb $00A3.w		; 0C A3 00
	lda $0000.w		; AD 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $B8.b		; 00 B8
	rti		; 40

	ror $98.b		; 66 98
	lda ($6C.b)		; B2 6C
	phx		; DA
	ldy $00.b,X		; B4 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $98.b		; 00 98
	brk $6C.b		; 00 6C
	brk $B4.b		; 00 B4
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	ora $02.b		; 05 02
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	ora $02.b		; 05 02
	ora [$00.b]		; 07 00
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $01.b		; 02 01
	ora ($03.b,X)		; 01 03
	ora $02.b,S		; 03 02
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	ora ($3D.b,X)		; 01 3D
	cpx #$30.b		; E0 30
	brk $01.b		; 00 01
	asl A		; 0A
	and ($35.b,X)		; 21 35
	trb $FF.b		; 14 FF
	cmp $06FA0D.l,X		; DF 0D FA 06
	rol $5F80.w,X		; 3E 80 5F
	eor $FFFFFF.l,X		; 5F FF FF FF
	sbc $00CACA.l,X		; FF CA CA 00
	brk $FC.b		; 00 FC
	php		; 08
	xce		; FB
	tsb $7F.b		; 04 7F
	brk $1F.b		; 00 1F
	jsr $3E07.w		; 20 07 3E
	php		; 08
	sec		; 38
	phd		; 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	ora $18.b,S		; 03 18
	ora $18.b,S		; 03 18
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	ora [$10.b],Y		; 17 10
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $080F08.l		; 0F 08 0F 08
	and $1EE220.l,X		; 3F 20 E2 1E
	cpy $FC.b		; C4 FC
	bit $3C.b		; 24 3C
	ldy $3C.b		; A4 3C
	cpx #$3C.b		; E0 3C
.ACCU 8
.INDEX 8
	sep #$36		; E2 36
	cpy #$16.b		; C0 16
	jsr $0DC0.w		; 20 C0 0D
	tsb $282B.w		; 0C 2B 28
	wai		; CB
	php		; 08
	cmp $00.b,S		; C3 00
	cmp [$04.b]		; C7 04
	cmp ($00.b,X)		; C1 00
	sbc $02.b,S		; E3 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpx #$00.b		; E0 00
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
	brk $0C.b		; 00 0C
	tsb STAT78.w		; 0C 3F 21
	adc ($44.b,X)		; 61 44
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	asl $3F3F.w,X		; 1E 3F 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	lda ($39.b,X)		; A1 39
	sta ($19.b),Y		; 91 19
	ora ($29.b,X)		; 01 29
	trb $3BFC.w		; 1C FC 3B
	sbc $3EFFBE.l,X		; FF BE FF 3E
	sbc $D1BE3F.l,X		; FF 3F BE D1
	bne -31.b		; D0 E1
	cpx #$D1.b		; E0 D1
	bne  28.b		; D0 1C
	brk $AB.b		; 00 AB
	stz $1F3E.w		; 9C 3E 1F
	bit $3A1F.w,X		; 3C 1F 3A
	ora $FD5D.w,X		; 1D 5D FD
	stz $0C.b,X		; 74 0C
	jmp ($F424.w)		; 6C 24 F4
	bpl -68.b		; 10 BC
	adc $99.b,S		; 63 99
	cmp $C450.w		; CD 50 C4
	sbc ($C6.b)		; F2 C6
	eor $0438.w,X		; 5D 38 04
	php		; 08
	bit $10.b		; 24 10
	bpl   8.b		; 10 08
	brk $00.b		; 00 00
	lda ($00.b)		; B2 00
	tsa		; 3B
	brk $39.b		; 00 39
	brk $77.b		; 00 77
	and $FE0D53.l		; 2F 53 0D FE
	adc ($73.b,X)		; 61 73
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2F.b		; 00 2F
	brk $0D.b		; 00 0D
	jsr $0160.w		; 20 60 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($F0.b,S),Y		; 53 F0
	cpy $FC.b		; C4 FC
	cpx #$FF.b		; E0 FF
	jmp ($BEFF.w,X)		; 7C FF BE
	adc $33FFCE.l,X		; 7F CE FF 33
	and $6F1F1B.l,X		; 3F 1B 1F 6F
	ldy #$CB.b		; A0 CB
	php		; 08
	eor ($F1.b,X)		; 41 F1
	sei		; 78
	inc $FE00.w,X		; FE 00 FE
	dec $3031.w		; CE 31 30
	ora $F00719.l		; 0F 19 07 F0
	ora [$68.b]		; 07 68
	tsb $9E90.w		; 0C 90 9E
	cop $F9.b		; 02 F9
	bcc  61.b		; 90 3D
	sec		; 38
	sbc $FAFEFA.l,X		; FF FA FE FA
	inc $00F8.w,X		; FE F8 00
	beq   0.b		; F0 00
	pla		; 68
	php		; 08
	asl $06.b		; 06 06
.INDEX 16
	rep #$DA		; C2 DA
	bpl  56.b		; 10 38
	sbc ($FC.b)		; F2 FC
	plx		; FA
	jsr ($07FD.w,X)		; FC FD 07
	inc $7D.b,X		; F6 7D
	cmp $73AD73.l		; CF 73 AD 73
	adc $354A30.l		; 6F 30 4A 35
	xce		; FB
	ora $B3.b		; 05 B3
	adc $0304.w		; 6D 04 03
	jmp ($7303.w,X)		; 7C 03 73
	brk $70.b		; 00 70
	ora [$30.b]		; 07 30
	brk $35.b		; 00 35
	brk $05.b		; 00 05
	brk $6D.b		; 00 6D
	brk $D3.b		; 00 D3
	adc $0D73.w		; 6D 73 0D
	and $0B.b,X		; 35 0B
	and $1B.b		; 25 1B
	and [$1B.b]		; 27 1B
	and [$1B.b]		; 27 1B
	and [$1B.b]		; 27 1B
	and $006D03.l,X		; 3F 03 6D 00
	ora $0B00.w		; 0D 00 0B
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $03.b		; 00 03
	brk $5F.b		; 00 5F
	stx $5D.b,Y		; 96 5D
	sta $4E.b,X		; 95 4E
	txa		; 8A
	lsr $4E8A.w		; 4E 8A 4E
	txa		; 8A
	eor [$85.b]		; 47 85
	eor [$85.b]		; 47 85
	eor [$85.b]		; 47 85
	stx $20.b,Y		; 96 20
	sta $22.b,X		; 95 22
	txa		; 8A
	and ($8A.b),Y		; 31 8A
	and ($8A.b),Y		; 31 8A
	and ($85.b),Y		; 31 85
	sec		; 38
	sta $38.b		; 85 38
	sta $38.b		; 85 38
	adc $6EF7D8.l		; 6F D8 F7 6E
	tyx		; BB
	ror $5F.b,X		; 76 5F
	sec		; 38
	ror $2E5C.w		; 6E 5C 2E
	clc		; 18
	clc		; 18
	brk $20.b		; 00 20
	trb $00D8.w		; 1C D8 00
	ror $7600.w		; 6E 00 76
	brk $38.b		; 00 38
	bra  92.b		; 80 5C
	bra  24.b		; 80 18
	cpy #$E000.w		; C0 00 E0
	clc		; 18
	cld		; D8
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora [$07.b]		; 07 07
	ora $0E1607.l		; 0F 07 16 0E
	rol $0E.b,X		; 36 0E
	and $0F.b,X		; 35 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$01.b]		; 07 01
	asl $03.b		; 06 03
	asl $0C03.w		; 0E 03 0C
	ora $0D.b,S		; 03 0D
	cop $1C.b		; 02 1C
	cpy #$E748.w		; C0 48 E7
	sed		; F8
	.db $82, $B1, $F6		; 82 B1 F6
	tsb $79.b		; 04 79
	sbc $DAFE.w,Y		; F9 FE DA
	cmp $CE.b,S		; C3 CE
	cpy #$407F.w		; C0 7F 40
	rol $8426.w,X		; 3E 26 84
	brk $70.b		; 00 70
	dey		; 88
	rol $C6.b,X		; 36 C6
	ldy #$FCC0.w		; A0 C0 FC
	bra 127.b		; 80 7F
	bra   3.b		; 80 03
	php		; 08
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cmp ($13.b,X)		; C1 13
	cpy #$C013.w		; C0 13 C0
	ora ($C0.b),Y		; 11 C0
	ora ($C0.b),Y		; 11 C0
	bpl -64.b		; 10 C0
	bpl -32.b		; 10 E0
	bmi -32.b		; 30 E0
	bmi -32.b		; 30 E0
	brk $E1.b		; 00 E1
	ora ($E0.b,X)		; 01 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $06.b		; 00 06
	bmi  23.b		; 30 17
	and ($1C.b),Y		; 31 1C
	and ($0E.b),Y		; 31 0E
	and $18.b,S		; 23 18
	adc $3C.b,S		; 63 3C
	ror $10.b		; 66 10
	lsr $18.b		; 46 18
	jmp $101F.w		; 4C 1F 10
	asl $0F00.w		; 0E 00 0F
	ora ($1C.b,X)		; 01 1C
	brk $3E.b		; 00 3E
	jsl $3C0018.l		; 22 18 00 3C
	tsb $30.b		; 04 30
	brk $80.b		; 00 80
	sty $8C80.w		; 8C 80 8C
	pha		; 48
	cpy $CC48.w		; CC 48 CC
	brk $C6.b		; 00 C6
	bit $66.b		; 24 66
	tsb $66.b		; 04 66
	bpl  50.b		; 10 32
	sei		; 78
	php		; 08
	sei		; 78
	php		; 08
	bcs -128.b		; B0 80
	bmi   0.b		; 30 00
	jmp ($1844.w,X)		; 7C 44 18
	brk $38.b		; 00 38
	jsr $000C.w		; 20 0C 00
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	bne -16.b		; D0 F0
	inx		; E8
	sed		; F8
	sed		; F8
	sed		; F8
	jmp $DCFCFC.l		; 5C FC FC DC
	bit $003C.w,X		; 3C 3C 00
	brk $F0.b		; 00 F0
	brk $50.b		; 00 50
	cpx #$F0E8.w		; E0 E8 F0
	plp		; 28
	beq  68.b		; F0 44
	clv		; B8
	cpy $3C38.w		; CC 38 3C
	clc		; 18
	tsx		; BA
	ldx $BEBE.w,Y		; BE BE BE
	ldx $AE80.w,Y		; BE 80 AE
	stz $003E.w		; 9C 3E 00
	trb $043E.w		; 1C 3E 04
	rol $00.b,X		; 36 00
	lda ($BA.b)		; B2 BA
	trb $1CAA.w		; 1C AA 1C
	bra   0.b		; 80 00
	stz $0000.w		; 9C 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	bpl  28.b		; 10 1C
	bpl   8.b		; 10 08
	xce		; FB
	plp		; 28
	tsa		; 3B
	asl A		; 0A
	phd		; 0B
	.db $42, $C3		; 42 C3
	asl $FF.b		; 06 FF
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stx $82.b		; 86 82
	dec $12.b,X		; D6 12
	pea $BC00.w		; F4 00 BC
	bra   8.b		; 80 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $9A40.w,X		; BC 40 9A
	jmp ($18E5.w,X)		; 7C E5 18
	eor $4E06.w,X		; 5D 06 4E
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $7C.b		; 00 7C
	brk $18.b		; 00 18
	cop $06.b		; 02 06
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	beq  32.b		; F0 20
	bmi  32.b		; 30 20
	sec		; 38
	brk $18.b		; 00 18
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	jsr $C020.w		; 20 20 C0
	brk $D0.b		; 00 D0
	bpl -16.b		; 10 F0
	bpl -32.b		; 10 E0
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	php		; 08
	sed		; F8
	php		; 08
	php		; 08
	tsb $0C08.w		; 0C 08 0C
	bra -122.b		; 80 86
	tsb $86.b		; 04 86
	rti		; 40

	rep #$00		; C2 00
	cmp $22.b,S		; C3 22
	adc $10.b,S		; 63 10
	adc ($F0.b),Y		; 71 F0
	brk $F0.b		; 00 F0
	brk $7C.b		; 00 7C
	tsb $F8.b		; 04 F8
	bra  60.b		; 80 3C
	brk $7E.b		; 00 7E
	.db $42, $1C		; 42 1C
	brk $2E.b		; 00 2E
	jsr $CC00.w		; 20 00 CC
	plp		; 28
	jmp ($6C08.w)		; 6C 08 6C
	cop $24.b		; 02 24
	rol $14.b,X		; 36 14
	and $182F00.l,X		; 3F 00 2F 18
	rol $781F.w		; 2E 1F 78
	pha		; 48
	bpl   0.b		; 10 00
	bmi  32.b		; 30 20
	trb $0804.w		; 1C 04 08
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	bmi  21.b		; 30 15
	adc ($2E.b),Y		; 71 2E
	adc $18.b,S		; 63 18
	cmp $5C.b,S		; C3 5C
	dec $30.b		; C6 30
	stx $B8.b		; 86 B8
	sty $8CE0.w		; 8C E0 8C
	ora $202E10.l,X		; 1F 10 2E 20
	trb $7E00.w		; 1C 00 7E
	.db $42, $38		; 42 38
	brk $FC.b		; 00 FC
	sty $70.b		; 84 70
	brk $78.b		; 00 78
	php		; 08
	rti		; 40

	cpy $20.b		; C4 20
	inc $24.b		; E6 24
	ror $3C.b		; 66 3C
	ror $7634.w,X		; 7E 34 76
	jsr $2063.w		; 20 63 20
	adc $02.b,S		; 63 02
	adc $38.b,S		; 63 38
	brk $5C.b		; 00 5C
	mvp $00,$18		; 44 18 00
	brk $00.b		; 00 00
	php		; 08
	brk $1E.b		; 00 1E
	cop $1E.b		; 02 1E
	cop $3C.b		; 02 3C
	jsr $2E5D.w		; 20 5D 2E
	rtl		; 6B

	tsb $46.b		; 04 46
	brk $76.b		; 00 76
	bit $6E.b		; 24 6E
	bpl -34.b		; 10 DE
	jmp $08CC.w		; 4C CC 08
	ldy $2E40.w,X		; BC 40 2E
	brk $04.b		; 00 04
	bpl   0.b		; 10 00
	sec		; 38
	bit $08.b		; 24 08
	bpl   0.b		; 10 00
	jmp $0820.w		; 4C 20 08
	bmi  64.b		; 30 40
	brk $F4.b		; 00 F4
	sei		; 78
	pea $E408.w		; F4 08 E4
	jsr $007C.w		; 20 7C 00
	ply		; 7A
	clc		; 18
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	brk $08.b		; 00 08
	brk $20.b		; 00 20
	clc		; 18
	brk $00.b		; 00 00
	clc		; 18
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	sbc $22.b,S		; E3 22
	adc $22.b,S		; 63 22
	adc $10.b,S		; 63 10
	adc ($10.b),Y		; 71 10
	and ($09.b),Y		; 31 09
	and $1909.w,Y		; 39 09 19
	brk $18.b		; 00 18
	lsr $1C42.w,X		; 5E 42 1C
	brk $1C.b		; 00 1C
	brk $2F.b		; 00 2F
	and ($0F.b,X)		; 21 0F
	ora ($16.b,X)		; 01 16
	bpl   6.b		; 10 06
	brk $0F.b		; 00 0F
	php		; 08
	tsb $19.b		; 04 19
	asl $041B.w		; 0E 1B 04
	ora ($00.b,S),Y		; 13 00
	ora ($14.b)		; 12 14
	rol $56.b,X		; 36 56
	bmi 122.b		; 30 7A
	tsb $7A.b		; 04 7A
	bit $090F.w,X		; 3C 0F 09
	tsb $00.b		; 04 00
	asl $0C02.w		; 0E 02 0C
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $3C.b		; 00 3C
	brk $74.b		; 00 74
	sed		; F8
	ldy $F670.w,X		; BC 70 F6
	tsb $FE.b		; 04 FE
	bmi 114.b		; 30 72
	tsb $307E.w		; 0C 7E 30
	tda		; 7B
	asl A		; 0A
	and $00F810.l		; 2F 10 F8 00
	bvs   0.b		; 70 00
	tsb $08.b		; 04 08
	bmi   0.b		; 30 00
	tsb $3000.w		; 0C 00 30
	brk $0A.b		; 00 0A
	tsb $10.b		; 04 10
	brk $3E.b		; 00 3E
	adc $3C.b,S		; 63 3C
	adc $3C.b,S		; 63 3C
	adc $28.b,S		; 63 28
	sep #$44		; E2 44
	dec $00.b		; C6 00
	stx $A8.b		; 86 A8
	sty $1870.w		; 8C 70 18
	trb $1E00.w		; 1C 00 1E
	cop $1E.b		; 02 1E
	cop $5C.b		; 02 5C
	rti		; 40

	sec		; 38
	brk $FC.b		; 00 FC
	sty $70.b		; 84 70
	brk $E0.b		; 00 E0
	brk $17.b		; 00 17
	beq  23.b		; F0 17
	bvs  11.b		; 70 0B
	sec		; 38
	ora [$1C.b]		; 07 1C
	ora ($0C.b,X)		; 01 0C
	cop $F6.b		; 02 F6
	cmp ($FF.b,X)		; C1 FF
	cpx $07.b		; E4 07
	adc $202F60.l		; 6F 60 2F 20
	ora [$10.b],Y		; 17 10
	phd		; 0B
	php		; 08
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	bmi  48.b		; 30 30
	plx		; FA
	cop $C5.b		; 02 C5
	adc $87.b,S		; 63 87
	bmi -17.b		; 30 EF
	and ($C7.b,S),Y		; 33 C7
	clc		; 18
	inc $1D.b,X		; F6 1D
	sbc $0E.b,S		; E3 0E
	ply		; 7A
	asl $86B1.w		; 0E B1 86
	sta $00.b,S		; 83 00
	cpx #$C320.w		; E0 20 C3
	brk $F0.b		; 00 F0
	bpl -27.b		; 10 E5
	brk $FA.b		; 00 FA
	php		; 08
	sbc ($01.b)		; F2 01
	jmp ($0504.w,X)		; 7C 04 05
	tsb $180A.w		; 0C 0A 18
	ora $31.b,X		; 15 31
	rol A		; 2A
	adc $48.b,S		; 63 48
	dec $C35A.w		; CE 5A C3
	rol $70.b,X		; 36 70
	tsb $3C.b		; 04 3C
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $1C00.w		; 0E 00 1C
	brk $30.b		; 00 30
	brk $3C.b		; 00 3C
	brk $0F.b		; 00 0F
	brk $0B.b		; 00 0B
	php		; 08
	adc [$7F.b]		; 67 7F
	phb		; 8B
	sbc [$37.b],Y		; F7 37
	sbc $2B2F3F.l,X		; FF 3F 2F 2B
	and $7F9F6F.l,X		; 3F 6F 9F 7F
	lda $860F9D.l		; AF 9D 0F 86
	ora ($41.b,X)		; 01 41
	eor $2C0F33.l		; 4F 33 0F 2C
	ora ($23.b,S),Y		; 13 23
	trb $1F07.w		; 1C 07 1F
	plb		; AB
	sty $0D.b		; 84 0D
	adc $86.b,S		; 63 86
	sbc #$B3.b		; E9 B3
	cpy $A7.b		; C4 A7
	dex		; CA
	wai		; CB
	cpx #$FFC0.w		; E0 C0 FF
	pea $F0F6.w		; F4 F6 F0
	jsr ($B8F8.w,X)		; FC F8 B8
	bcc -48.b		; 90 D0
	clv		; B8
	tsx		; BA
	tsx		; BA
	clv		; B8
	stz $C0DC.w		; 9C DC C0
	brk $E8.b		; 00 E8
	php		; 08
	beq -64.b		; F0 C0
	clv		; B8
	cpx #$20C0.w		; E0 C0 20
	rti		; 40

	ldy #$2000.w		; A0 00 20
	brk $E0.b		; 00 E0
	rti		; 40

	rts		; 60

	brk $A0.b		; 00 A0
	brk $40.b		; 00 40
	brk $07.b		; 00 07
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($0F.b,X)		; 01 0F
	brk $04.b		; 00 04
	cop $06.b		; 02 06
	tsb $0D.b		; 04 0D
	tsb $0E.b		; 04 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $38.b		; 00 38
	sec		; 38
	ror $C342.w,X		; 7E 42 C3
	stz $00.b		; 64 00
	sbc ($00.b,S),Y		; F3 00
	and ($00.b,S),Y		; 33 00
	.db $62, $00, $04		; 62 00 04
	ora #$00.b		; 09 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	bit $FFFF.w,X		; 3C FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	jmp ($ECF4.w)		; 6C F4 EC
	pea $B4AC.w		; F4 AC B4
	sty $D8B4.w		; 8C B4 D8
	pla		; 68
	sei		; 78
	php		; 08
	clc		; 18
	php		; 08
	ora $03F400.l		; 0F 00 F4 03
	pea $B403.w		; F4 03 B4
	eor $B4.b,S		; 43 B4
	eor $68.b,S		; 43 68
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora [$00.b]		; 07 00
	brk $EC.b		; 00 EC
	plb		; AB
	adc [$24.b]		; 67 24
	adc $22.b,S		; 63 22
	adc ($51.b)		; 72 51
	ror $3D53.w,X		; 7E 53 3D
	ora $183A.w		; 0D 3A 18
	cmp [$30.b],Y		; D7 30
	plb		; AB
	bpl  36.b		; 10 24
	tya		; 98
	jsl $8C509C.l		; 22 9C 50 8C
	eor ($81.b),Y		; 51 81
	cop $C0.b		; 02 C0
	ora [$C0.b]		; 07 C0
	and $7FA020.l		; 2F 20 A0 7F
	ora ($FB.b,X)		; 01 FB
	ora ($E3.b,X)		; 01 E3
	brk $82.b		; 00 82
	brk $82.b		; 00 82
	asl $C0.b		; 06 C0
	sta $C2.b		; 85 C2
	ora $63.b		; 05 63
	eor $E059.w,Y		; 59 59 E0
	cpx #$8080.w		; E0 80 80
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	sta ($80.b,X)		; 81 80
	cop $00.b		; 02 00
	cmp $40.b,S		; C3 40
	brk $00.b		; 00 00
	and $0DFF00.l,X		; 3F 00 FF 0D
	dec A		; 3A
	trb $385D.w		; 1C 5D 38
	lda $78.b,X		; B5 78
	lda [$7A.b],Y		; B7 7A
	ror $0030.w		; 6E 30 00
	brk $00.b		; 00 00
	brk $0D.b		; 00 0D
	brk $1C.b		; 00 1C
	ora ($38.b,X)		; 01 38
	cop $78.b		; 02 78
	cop $7A.b		; 02 7A
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	cli		; 58
	ldy $5C1B.w		; AC 1B 5C
	dey		; 88
	eor $88.b,X		; 55 88
	sbc $3837.w,Y		; F9 37 38
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $58.b		; 00 58
	brk $18.b		; 00 18
	rti		; 40

	phb		; 8B
	jsr $208B.w		; 20 8B 20
	and ($02.b)		; 32 02
	brk $00.b		; 00 00
	mvn $3C,$20		; 54 20 3C
	bpl  58.b		; 10 3A
	php		; 08
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $1008.w		; 20 08 10
	brk $08.b		; 00 08
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($CE48.w,X)		; FC 48 CE
	tsb $06.b		; 04 06
	brk $02.b		; 00 02
	mvp $40,$46		; 44 46 40
	dec $40.b		; C6 40
	cpy $00.b		; C4 00
	brk $00.b		; 00 00
	brk $B4.b		; 00 B4
	sty $F8.b		; 84 F8
	brk $FC.b		; 00 FC
	brk $B8.b		; 00 B8
	brk $BC.b		; 00 BC
	sty $38.b		; 84 38
	brk $08.b		; 00 08
	sty $8C80.w		; 8C 80 8C
	brk $08.b		; 00 08
	bpl  24.b		; 10 18
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	jsr $0030.w		; 20 30 00
	bmi -16.b		; 30 F0
	bra 120.b		; 80 78
	php		; 08
	beq   0.b		; F0 00
	cpx #$F000.w		; E0 00 F0
	bpl -32.b		; 10 E0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $017D.w		; 20 7D 01
	and [$E0.b]		; 27 E0
	ora #$78.b		; 09 78
	ora ($1F.b,X)		; 01 1F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $5F00.w,X		; FE 00 5F
	rti		; 40

	ora [$10.b],Y		; 17 10
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $19C7.w,X		; 7D C7 19
	ora $C4.b,S		; 03 C4
	ora [$09.b]		; 07 09
	asl $FC30.w		; 0E 30 FC
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $FD80.w,Y		; B9 80 FD
	brk $F9.b		; 00 F9
	brk $F4.b		; 00 F4
	tsb $48.b		; 04 48
	pha		; 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($0F.b,X)		; 01 0F
	ora [$00.b]		; 07 00
	php		; 08
	ora [$09.b]		; 07 09
	asl $06.b		; 06 06
	ora ($04.b,X)		; 01 04
	ora $0A.b,S		; 03 0A
	ora [$0C.b]		; 07 0C
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $AF.b		; 00 AF
	ora $FEDFFF.l,X		; 1F FF DF FE
	ora $DB27.w,X		; 1D 27 DB
	lsr $BA.b,X		; 56 BA
	ror $BA.b,X		; 76 BA
	ldy $78.b,X		; B4 78
	cpx $0F74.w		; EC 74 0F
	eor $1C1FC3.l,X		; 5F C3 1F 1C
	ora $DB.b,S		; 03 DB
	brk $BA.b		; 00 BA
	ora ($BA.b,X)		; 01 BA
	ora ($78.b,X)		; 01 78
	ora $74.b,S		; 03 74
	ora $FB.b,S		; 03 FB
	sed		; F8
	sbc $F7E3.w,X		; FD E3 F7
	sbc $FEACF3.l		; EF F3 AC FE
	sta ($EB.b,X)		; 81 EB
	stz $AFF4.w		; 9C F4 AF
	xce		; FB
	lda [$D8.b],Y		; B7 D8
	ldy #$40A3.w		; A0 A3 40
	eor $208CA0.l		; 4F A0 8C 20
	sta ($00.b,X)		; 81 00
	stz $AF00.w		; 9C 00 AF
	brk $B7.b		; 00 B7
	brk $E2.b		; 00 E2
	asl $D0F0.w,X		; 1E F0 D0
	jsr $E0C0.w		; 20 C0 E0
	brk $60.b		; 00 60
	lda ($E2.b,X)		; A1 E2
	and $64.b,S		; 23 64
	lda [$78.b]		; A7 78
	lda $CF0405.l,X		; BF 05 04 CF
	brk $DF.b		; 00 DF
	brk $1F.b		; 00 1F
	brk $9F.b		; 00 9F
	ora ($1C.b,X)		; 01 1C
	brk $9A.b		; 00 9A
	cop $85.b		; 02 85
	ora $02.b		; 05 02
	asl $0F03.w		; 0E 03 0F
	tsb $0F.b		; 04 0F
	ora $0E.b		; 05 0E
	ora $0E.b		; 05 0E
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	ora $0103.w		; 0D 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	lsr $48.b,X		; 56 48
	sbc $61964B.l		; EF 4B 96 61
	eor ($DC.b)		; 52 DC
	and $FC.b,S		; 23 FC
	ora ($20.b,X)		; 01 20
	sta $C299.w		; 8D 99 C2
	sbc #$E9.b		; E9 E9
	ora ($12.b)		; 12 12
	sty $B4.b,X		; 94 B4
	dec $CE40.w,X		; DE 40 CE
	and ($FE.b,X)		; 21 FE
	brk $FE.b		; 00 FE
	sty $407C.w		; 8C 7C 40
	brk $20.b		; 00 20
	cpy #$E060.w		; C0 60 E0
	bra -48.b		; 80 D0
	cpx #$00F0.w		; E0 F0 00
	bcs -96.b		; B0 A0
	cpx #$2000.w		; E0 00 20
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$0000.w		; E0 00 00
	brk $A0.b		; 00 A0
	rti		; 40

	brk $00.b		; 00 00
	cpy #$A000.w		; C0 00 A0
	rti		; 40

	cpy #$C080.w		; C0 80 C0
	brk $40.b		; 00 40
	bra -96.b		; 80 A0
	cpy #$80D8.w		; C0 D8 80
	cpx $FE58.w		; EC 58 FE
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	jsr $0058.w		; 20 58 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	ldy #$D0C0.w		; A0 C0 D0
	jsr $E010.w		; 20 10 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	bra  64.b		; 80 40
	bra  32.b		; 80 20
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	bcc -32.b		; 90 E0
	sec		; 38
	bvc -40.b		; 50 D8
	brk $CC.b		; 00 CC
	php		; 08
	jmp $2620.w		; 4C 20 26
	mvp $00,$C6		; 44 C6 00
	inc $0080.w,X		; FE 80 00
	bpl  16.b		; 10 10
	jsr $7800.w		; 20 00 78
	pha		; 48
	beq  64.b		; F0 40
	jmp.w [$B804]		; DC 04 B8
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	ora $01.b,S		; 03 01
	ora $02.b,S		; 03 02
	asl $05.b		; 06 05
	tsb $180A.w		; 0C 0A 18
	trb $30.b		; 14 30
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $060900.l		; 0F 00 09 06
	ora [$00.b]		; 07 00
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	rti		; 40

	jmp ($7E58.w,X)		; 7C 58 7E
	ldx $00ED.w,Y		; BE ED 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$809C.w		; C0 9C 80
	tsx		; BA
	stz $3E4D.w		; 9C 4D 3E
	asl $0ED7.w,X		; 1E D7 0E
	sbc $FB05.w		; ED 05 FB
	ora $C7.b,S		; 03 C7
	ora ($83.b,X)		; 01 83
	ora ($03.b,X)		; 01 03
	ora $80.b,S		; 03 80
	cop $E1.b		; 02 E1
	eor [$3E.b]		; 47 3E
	rts		; 60

	ora $054758.l,X		; 1F 58 47 05
	ora $03.b,S		; 03 03
	ora ($02.b,X)		; 01 02
	ora ($80.b,X)		; 01 80
	brk $E1.b		; 00 E1
	brk $72.b		; 00 72
	ora $D2B3.w		; 0D B3 D2
	sbc $7EE5.w,X		; FD E5 7E
	plx		; FA
	plx		; FA
	jsr ($7E79.w,X)		; FC 79 7E
	jmp ($AE7F.w,X)		; 7C 7F AE
	sbc $92010D.l,X		; FF 0D 01 92
	jmp $A2C5.w		; 4C C5 A2
	ply		; 7A
	cmp ($A8.b),Y		; D1 A8
	eor $F8.b,X		; 55 F8
	rol $D8.b		; 26 D8
	rol $28.b		; 26 28
	asl $D1.b,X		; 16 D1
	inc $41.b,X		; F6 41
	inc $6EF1.w,X		; FE F1 6E
	cmp $4E.b,X		; D5 4E
	inc $7E95.w		; EE 95 7E
	ora $EC.b,X		; 15 EC
	eor $78.b,S		; 43 78
	sta $0A.b,X		; 95 0A
	brk $E6.b		; 00 E6
	jsr $006E.w		; 20 6E 00
	rol $B500.w		; 2E 00 B5
	bpl  37.b		; 10 25
	bra  80.b		; 80 50
	brk $02.b		; 00 02
	cop $41.b		; 02 41
	sed		; F8
	bvc  -1.b		; 50 FF
	.db $42, $E3		; 42 E3
	brk $C0.b		; 00 C0
	sty $007C.w		; 8C 7C 00
	sbc $000000.l,X		; FF 00 00 00
	brk $A0.b		; 00 A0
	rti		; 40

	inx		; E8
	pha		; 48
	lda $7F41.w,X		; BD 41 7F
	bra 115.b		; 80 73
	bcs -128.b		; B0 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora $0B.b		; 05 0B
	asl $1F17.w		; 0E 17 1F
	ora $1F1E1F.l,X		; 1F 1F 1E 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	asl A		; 0A
	tsb $17.b		; 04 17
	asl A		; 0A
	ora [$0D.b],Y		; 17 0D
	asl $0405.w,X		; 1E 05 04
	ora $CB0739.l		; 0F 39 07 CB
	and [$79.b],Y		; 37 79
	adc [$95.b],Y		; 77 95
	sta $08CD.w,Y		; 99 CD 08
	sbc $F48E8A.l,X		; FF 8A 8E F4
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	adc ($80.b,S),Y		; 73 80
	txy		; 9B
	rts		; 60

	phd		; 0B
	bmi -119.b		; 30 89
	rti		; 40

	sta $40.b		; 85 40
	phx		; DA
	eor $F7.b,X		; 55 F7
	ora #$7D.b		; 09 7D
	tda		; 7B
	eor $3F3A7F.l,X		; 5F 7F 3A 3F
	and $1F1F3F.l		; 2F 3F 1F 1F
	ora $20551D.l,X		; 1F 1D 55 20
	ora ($08.b,X)		; 01 08
	eor $38.b,S		; 43 38
	eor [$38.b],Y		; 57 38
	pld		; 2B
	trb $1C2B.w		; 1C 2B 1C
	ora $0E150F.l,X		; 1F 0F 15 0E
	lda [$C5.b]		; A7 C5
	sbc [$A5.b]		; E7 A5
	eor [$85.b]		; 47 85
	eor [$85.b]		; 47 85
	cmp [$45.b]		; C7 45
	sta [$05.b]		; 87 05
	sta [$85.b]		; 87 85
	sta [$85.b]		; 87 85
	cmp $18.b		; C5 18
	lda $18.b		; A5 18
	sta $38.b		; 85 38
	sta $38.b		; 85 38
	eor $38.b		; 45 38
	ora $78.b		; 05 78
	sta $78.b		; 85 78
	sta $78.b		; 85 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	php		; 08
	clc		; 18
	ora ($30.b),Y		; 11 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $00000F.l		; 0F 0F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	rts		; 60

	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$C2E0.w		; E0 E0 C2
	adc [$98.b],Y		; 77 98
	eor [$48.b]		; 47 48
	lda [$58.b]		; A7 58
	rol $80.b		; 26 80
	ror $BE24.w,X		; 7E 24 BE
	sty $DE.b,X		; 94 DE
	cpy $F6.b		; C4 F6
	phk		; 4B
	asl A		; 0A
	and $3B3A.w,Y		; 39 3A 3B
	clv		; B8
	clc		; 18
	tya		; 98
	mvp $48,$44		; 44 44 48
	pha		; 48
	ldy #$4820.w		; A0 20 48
	bra  87.b		; 80 57
	tay		; A8
	wai		; CB
	lda $57.b,X		; B5 57
	sec		; 38
	adc $5B6D5B.l		; 6F 5B 6D 5B
	tsa		; 3B
	and $33.b		; 25 33
	and $A81F72.l		; 2F 72 1F A8
	brk $B5.b		; 00 B5
	brk $38.b		; 00 38
	bra  88.b		; 80 58
	sta $58.b,S		; 83 58
	sta $20.b,S		; 83 20
	cmp $2A.b,S		; C3 2A
	cmp #$0A.b		; C9 0A
	bit #$91.b		; 89 91
	ora $0D09.w,X		; 1D 09 0D
	php		; 08
	asl $0600.w		; 0E 00 06
	tsb $06.b		; 04 06
	tsb $06.b		; 04 06
	tsb $07.b		; 04 07
	bra -125.b		; 80 83
	adc #$08.b		; 69 08
	sbc ($00.b),Y		; F1 00
	pea $FC04.w		; F4 04 FC
	tsb $F8.b		; 04 F8
	brk $F8.b		; 00 F8
	brk $FA.b		; 00 FA
	cop $7E.b		; 02 7E
	cop $06.b		; 02 06
	bmi   6.b		; 30 06
	bmi  31.b		; 30 1F
	and ($1C.b),Y		; 31 1C
	adc ($0E.b),Y		; 71 0E
	adc $38.b,S		; 63 38
	adc $3C.b,S		; 63 3C
	ror $18.b		; 66 18
	dec $1F.b		; C6 1F
	bpl  31.b		; 10 1F
	bpl  14.b		; 10 0E
	brk $2F.b		; 00 2F
	and ($3C.b,X)		; 21 3C
	jsr $021E.w		; 20 1E 02
	clc		; 18
	brk $7C.b		; 00 7C
	mvp $C0,$C0		; 44 C0 C0
	ldy #$F0E0.w		; A0 E0 F0
	beq -24.b		; F0 E8
	sed		; F8
	pea $F4BC.w		; F4 BC F4
	jsr ($D8E8.w,X)		; FC E8 D8
	sei		; 78
	sei		; 78
	rti		; 40

	bra -96.b		; 80 A0
	cpy #$C0B0.w		; C0 B0 C0
	inx		; E8
	beq -108.b		; F0 94
	sed		; F8
	cpx $58.b		; E4 58
	iny		; C8
	bmi 120.b		; 30 78
	brk $44.b		; 00 44
	dec $24.b		; C6 24
	inc $20.b		; E6 20
	adc $38.b,S		; 63 38
	tda		; 7B
	bmi 115.b		; 30 73
	jsl $430263.l		; 22 63 02 43
	cop $43.b		; 02 43
	sec		; 38
	brk $58.b		; 00 58
	rti		; 40

	asl $0602.w,X		; 1E 02 06
	cop $0E.b		; 02 0E
	cop $1C.b		; 02 1C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $02.b		; 00 02
	eor $02.b,S		; 43 02
	eor $20.b,S		; 43 20
	adc ($20.b,X)		; 61 20
	adc ($00.b,X)		; 61 00
	adc ($00.b,X)		; 61 00
	adc ($10.b,X)		; 61 10
	and ($10.b),Y		; 31 10
	and ($3C.b),Y		; 31 3C
	brk $3C.b		; 00 3C
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	jsr $203E.w		; 20 3E 20
	asl $0F00.w		; 0E 00 0F
	ora ($64.b,X)		; 01 64
	asl $9C20.w		; 0E 20 9C
	brk $C8.b		; 00 C8
	brk $70.b		; 00 70
	jmp $54B0.w		; 4C B0 54
	dec A		; 3A
	jmp ($A037.w,X)		; 7C 37 A0
	adc $F808F8.l,X		; 7F F8 08 F8
	tya		; 98
	bcs -128.b		; B0 80
	cpy #$B040.w		; C0 40 B0
	brk $BA.b		; 00 BA
	brk $B3.b		; 00 B3
	tsb $77.b		; 04 77
	brk $05.b		; 00 05
	and ($2E.b),Y		; 31 2E
	adc $1A.b,S		; 63 1A
	cmp $58.b,S		; C3 58
	cmp $34.b,S		; C3 34
	stx $30.b		; 86 30
	stx $F8.b		; 86 F8
	sty $8CE0.w		; 8C E0 8C
	asl $1D10.w,X		; 1E 10 1D
	ora ($7C.b,X)		; 01 7C
	rti		; 40

	rol $F802.w,X		; 3E 02 F8
	bra  -4.b		; 80 FC
	sty $70.b		; 84 70
	brk $78.b		; 00 78
	php		; 08
	pld		; 2B
	clc		; 18
	and $3D02.w,X		; 3D 02 3D
	asl $2E5D.w,X		; 1E 5D 2E
	rtl		; 6B

	tsb $46.b		; 04 46
	brk $76.b		; 00 76
	bit $6E.b		; 24 6E
	bpl   4.b		; 10 04
	brk $02.b		; 00 02
	brk $1E.b		; 00 1E
	brk $2E.b		; 00 2E
	brk $04.b		; 00 04
	bpl   0.b		; 10 00
	sec		; 38
	bit $08.b		; 24 08
	bpl   0.b		; 10 00
	ora $1D1F.w		; 0D 1F 1D
	and $282707.l,X		; 3F 07 27 28
	adc $14.b,S		; 63 14
	eor [$1B.b]		; 47 1B
	eor $31CF62.l		; 4F 62 CF 31
	sta $0609.w,Y		; 99 09 06
	ora $02.b		; 05 02
	tas		; 1B
	brk $1C.b		; 00 1C
	ora ($38.b,X)		; 01 38
	ora ($33.b,X)		; 01 33
	brk $3A.b		; 00 3A
	ora #$61.b		; 09 61
	brk $C3.b		; 00 C3
	sbc $E259.w		; ED 59 E2
	eor ($E4.b)		; 52 E4
	stp		; DB
	sbc $C1.b		; E5 C1
	inc $7FA4.w,X		; FE A4 7F
	cmp ($F3.b),Y		; D1 F3
	sbc $F7.b,S		; E3 F7
	bcc  80.b		; 90 50
	jmp $DD5CDC.l		; 5C DC 5C DD
	eor $40D8.w,Y		; 59 D8 40
	cpy #$E908.w		; C0 08 E9
	cmp $6B0C.w		; CD 0C 6B
	xba		; EB
	ora [$1F.b],Y		; 17 1F
	tas		; 1B
	ora [$0D.b],Y		; 17 0D
	ora $020703.l		; 0F 03 07 02
	asl $02.b		; 06 02
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $13.b		; 06 13
	asl $0F10.w		; 0E 10 0F
	ora $0302.w		; 0D 02 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	cop $FF.b		; 02 FF
	bra -30.b		; 80 E2
	inc $1E12.w,X		; FE 12 1E
	iny		; C8
	asl $0FE9.w		; 0E E9 0F
	sbc $F80F.w,Y		; F9 0F F8
	ora $8007F0.l		; 0F F0 07 80
	brk $99.b		; 00 99
	clc		; 18
	sbc #$08.b		; E9 08
	sbc ($02.b,S),Y		; F3 02
	sbc ($02.b)		; F2 02
	beq   0.b		; F0 00
	sbc ($01.b),Y		; F1 01
	sbc $0701.w,Y		; F9 01 07
	jmp ($4006.w,X)		; 7C 06 40
	jsr $44A1.w		; 20 A1 44
	inc $02.b		; E6 02
	cmp $5FA11B.l,X		; DF 1B A1 5F
	cpx #$5007.w		; E0 07 50
	phd		; 0B
	phd		; 0B
	and $5F5F3F.l,X		; 3F 3F 5F 5F
	and $6039.w,Y		; 39 39 60
	rts		; 60

	eor $001F41.l,X		; 5F 41 1F 00
	and $0EB820.l		; 2F 20 B8 0E
	trb $07.b		; 14 07
	jsl $BF2243.l		; 22 43 22 BF
	bra  -2.b		; 80 FE
	beq -68.b		; F0 BC
	rti		; 40

	cld		; D8
	cpy #$F010.w		; C0 10 F0
	beq  -6.b		; F0 FA
	plx		; FA
	jsr ($40FC.w,X)		; FC FC 40
	rti		; 40

	trb $14.b		; 14 14
	bra   0.b		; 80 00
	rts		; 60

	bra -32.b		; 80 E0
	brk $DC.b		; 00 DC
	pha		; 48
	cpy $BC08.w		; CC 08 BC
	rti		; 40

	pea $E878.w		; F4 78 E8
	bpl 120.b		; 10 78
	rti		; 40

	beq  32.b		; F0 20
	cpx #$4880.w		; E0 80 48
	jsr $3008.w		; 20 08 30
	rti		; 40

	brk $78.b		; 00 78
	brk $10.b		; 00 10
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	brk $80.b		; 00 80
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $0B.b		; 00 0B
	ora $0F.b,S		; 03 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $03.b		; 00 03
	tsb $00.b		; 04 00
	brk $40.b		; 00 40
	dec $00.b		; C6 00
	dec $20.b		; C6 20
	inc $24.b		; E6 24
	ror $04.b		; 66 04
	ror $00.b		; 66 00
	.db $62, $10, $32		; 62 10 32
	bpl  50.b		; 10 32
	bit $7C04.w,X		; 3C 04 7C
	mvp $44,$5C		; 44 5C 44
	clc		; 18
	brk $38.b		; 00 38
	jsr $203C.w		; 20 3C 20
	tsb $0C00.w		; 0C 00 0C
	brk $3C.b		; 00 3C
	sta ($7C.b,X)		; 81 7C
	cmp ($7C.b,X)		; C1 7C
	cmp ($1C.b,X)		; C1 1C
	cmp ($1C.b,X)		; C1 1C
	cmp ($1C.b,X)		; C1 1C
	eor ($1E.b,X)		; 41 1E
	eor $1E.b,S		; 43 1E
	eor $7E.b,S		; 43 7E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $7E.b		; 00 7E
	rti		; 40

	ror $3E40.w,X		; 7E 40 3E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $20.b		; 00 20
	rts		; 60

	brk $60.b		; 00 60
	bpl  48.b		; 10 30
	brk $30.b		; 00 30
	php		; 08
	clc		; 18
	brk $18.b		; 00 18
	tsb $0C.b		; 04 0C
	brk $0C.b		; 00 0C
	ora $203F00.l,X		; 1F 00 3F 20
	ora $101F00.l		; 0F 00 1F 10
	ora [$00.b]		; 07 00
	ora $000308.l		; 0F 08 03 00
	ora [$04.b]		; 07 04
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C040.w		; C0 40 C0
	rti		; 40

	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpx #$E020.w		; E0 20 E0
	jsr $633E.w		; 20 3E 63
	bit $3C63.w,X		; 3C 63 3C
	adc $28.b,S		; 63 28
	.db $62, $24, $E6		; 62 24 E6
	pha		; 48
	dec $8C28.w		; CE 28 8C
	bvs  28.b		; 70 1C
	trb $1E00.w		; 1C 00 1E
	cop $1E.b		; 02 1E
	cop $1C.b		; 02 1C
	brk $58.b		; 00 58
	rti		; 40

	bit $04.b,X		; 34 04
	beq -128.b		; F0 80
	inx		; E8
	php		; 08
	cop $64.b		; 02 64
	adc ($04.b)		; 72 04
	lsr $5D30.w,X		; 5E 30 5D
	rol $385F.w,X		; 3E 5F 38
	tda		; 7B
	cop $3F.b		; 02 3F
	clc		; 18
	and $3806.w,Y		; 39 06 38
	jsr $040C.w		; 20 0C 04
	bmi   0.b		; 30 00
	rol $3800.w,X		; 3E 00 38
	brk $02.b		; 00 02
	tsb $18.b		; 04 18
	brk $06.b		; 00 06
	brk $3F.b		; 00 3F
	clc		; 18
	and $1705.w,X		; 3D 05 17
	php		; 08
	ora ($0F.b,S),Y		; 13 0F
	trb $0B03.w		; 1C 03 0B
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $05.b		; 00 05
	cop $08.b		; 02 08
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -96.b		; 80 A0
	brk $B0.b		; 00 B0
	cpy #$30D8.w		; C0 D8 30
	jmp ($0000.w,X)		; 7C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rti		; 40

	cpy #$3000.w		; C0 00 30
	brk $00.b		; 00 00
	brk $32.b		; 00 32
	jmp $CA67.w		; 4C 67 CA
	asl $8B.b		; 06 8B
	and $8A.b		; 25 8A
	.db $62, $CD, $19		; 62 CD 19
	lsr $4512.w		; 4E 12 45
	bit $3843.w,X		; 3C 43 38
	php		; 08
	and ($00.b)		; 32 00
	adc ($00.b,S),Y		; 73 00
	adc ($00.b)		; 72 00
	and $00.b,X		; 35 00
	and ($00.b)		; 32 00
	and $0300.w,Y		; 39 00 03
	brk $BB.b		; 00 BB
	sbc $7FFFBF.l,X		; FF BF FF 7F
	sbc $DFFF7F.l,X		; FF 7F FF DF
	and $4F8F7E.l,X		; 3F 7E 8F 4F
	lda ($BB.b,S),Y		; B3 BB
	adc #$BB.b		; 69 BB
	tda		; 7B
	sta $9F6F7F.l,X		; 9F 7F 6F 9F
	tsa		; 3B
	sbc [$0C.b]		; E7 0C
	tsa		; 3B
	stx $0D.b		; 86 0D
	lda ($02.b,S),Y		; B3 02
	adc #$05.b		; 69 05
.ACCU 8
.INDEX 8
	sep #$F3		; E2 F3
	ldy #$F1.b		; A0 F1
	inx		; E8
	cmp $E950.w,Y		; D9 50 E9
	bne -23.b		; D0 E9
	beq -55.b		; F0 C9
	sbc #$95.b		; E9 95
	dec $2A.b,X		; D6 2A
	ldy $AEC0.w		; AC C0 AE
	cpy #$46.b		; C0 46
	bra  78.b		; 80 4E
	tay		; A8
	stx $60.b		; 86 60
	sta [$41.b]		; 87 41
	stx $84.b,Y		; 96 84
	and #$00.b		; 29 00
	sec		; 38
	ror $10.b		; 66 10
	lsr $38.b		; 46 38
	cpy $CC20.w		; CC 20 CC
	rts		; 60

	iny		; C8
	cli		; 58
	cpy #$E8.b		; C0 E8
	bpl -24.b		; 10 E8
	beq  28.b		; F0 1C
	tsb $3C.b		; 04 3C
	tsb $70.b		; 04 70
	rti		; 40

	sei		; 78
	pha		; 48
	bmi   0.b		; 30 00
	jsr $1000.w		; 20 00 10
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $A0.b		; 00 A0
	cpx #$E0.b		; E0 E0
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	cpy #$20.b		; C0 20
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	asl $0B.b		; 06 0B
	ora $0E0F.w		; 0D 0F 0E
	ora [$1F.b],Y		; 17 1F
	asl $0F1F.w,X		; 1E 1F 0F
	ora $000000.l,X		; 1F 00 00 00
	brk $06.b		; 00 06
	brk $09.b		; 00 09
	tsb $0A.b		; 04 0A
	asl $15.b		; 06 15
	phd		; 0B
	asl $0D.b,X		; 16 0D
	phd		; 0B
	asl $00.b		; 06 00
	asl A		; 0A
	bit $0F.b,X		; 34 0F
	cmp #$37.b		; C9 37
	phk		; 4B
	adc [$B8.b],Y		; 77 B8
	ldx $D5.b,Y		; B6 D5
	ora $88CD.w,Y		; 19 CD 88
	lda $0405CA.l,X		; BF CA 05 04
	ora ($01.b,X)		; 01 01
	bmi   0.b		; 30 00
	bvs -128.b		; 70 80
	lda ($40.b,S),Y		; B3 40
	tas		; 1B
	jsr $708B.w		; 20 8B 70
	bit #$40.b		; 89 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	php		; 08
	clc		; 18
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cmp $7F6FBC.l,X		; DF BC 6F 7F
	clc		; 18
	sei		; 78
	asl $30.b,X		; 16 30
	ora [$30.b],Y		; 17 30
	ora [$30.b],Y		; 17 30
	ora [$30.b]		; 07 30
	ora [$30.b]		; 07 30
	sty $78.b		; 84 78
	pla		; 68
	bpl  63.b		; 10 3F
	jsr $000F.w		; 20 0F 00
	ora $000F00.l		; 0F 00 0F 00
	ora $101F10.l,X		; 1F 10 1F 10
	jsr ($1000.w,X)		; FC 00 10
	beq -112.b		; F0 90
	beq  64.b		; F0 40
	bvs  72.b		; 70 48
	sei		; 78
	iny		; C8
	sei		; 78
	cpy #$78.b		; C0 78
	sty $3C.b		; 84 3C
	ora $00.b,S		; 03 00
	cmp $404FC0.l		; CF C0 4F 40
	sta $109710.l,X		; 9F 10 97 10
	sta [$00.b]		; 87 00
	sta $08CB08.l		; 8F 08 CB 08
	ror $C8.b		; 66 C8
	ora [$8A.b]		; 07 8A
	rol $8B.b		; 26 8B
	adc ($CE.b,X)		; 61 CE
	ora ($45.b)		; 12 45
	ora $3C46.w,Y		; 19 46 3C
	eor $6C.b,S		; 43 6C
	pld		; 2B
	bmi   0.b		; 30 00
	adc ($00.b)		; 72 00
	adc ($00.b,S),Y		; 73 00
	dec A		; 3A
	php		; 08
	and $3A00.w,Y		; 39 00 3A
	brk $03.b		; 00 03
	brk $2B.b		; 00 2B
	bpl -79.b		; 10 B1
	xce		; FB
	tyx		; BB
	sbc $7FFF7F.l,X		; FF 7F FF 7F
	sbc $7E3FDF.l,X		; FF DF 3F 7E
	sta $BBB34F.l		; 8F 4F B3 BB
	adc #$B5.b		; 69 B5
	adc $9B.b,X		; 75 9B
	tda		; 7B
	adc $E73B9F.l		; 6F 9F 3B E7
	tsb $863B.w		; 0C 3B 86
	ora $02B3.w		; 0D B3 02
	adc #$05.b		; 69 05
	mvp $24,$C6		; 44 C6 24
	inc $20.b		; E6 20
	adc $38.b,S		; 63 38
	tda		; 7B
	bmi 115.b		; 30 73
	jsl $430263.l		; 22 63 02 43
	cop $43.b		; 02 43
	sec		; 38
	brk $58.b		; 00 58
	rti		; 40

	asl $0602.w,X		; 1E 02 06
	cop $0E.b		; 02 0E
	cop $1C.b		; 02 1C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $F8.b		; 00 F8
	cop $64.b		; 02 64
	asl $9C20.w		; 0E 20 9C
	brk $D8.b		; 00 D8
	dey		; 88
	inc $46.b,X		; F6 46
	tyx		; BB
	mvn $7A,$3B		; 54 3B 7A
	and [$FC.b],Y		; 37 FC
	brk $F8.b		; 00 F8
	php		; 08
	sed		; F8
	tya		; 98
	bcs -112.b		; B0 90
	lsr $40.b		; 46 40
	lda $BB02.w,Y		; B9 02 BB
	brk $B7.b		; 00 B7
	cop $A4.b		; 02 A4
	tda		; 7B
	cpy #$77.b		; C0 77
	tya		; 98
	lsr $48.b		; 46 48
	ldx $58.b		; A6 58
	rol $80.b		; 26 80
	ror $BE24.w,X		; 7E 24 BE
	sty $DE.b,X		; 94 DE
	adc ($06.b),Y		; 71 06
	phk		; 4B
	php		; 08
	sec		; 38
	sec		; 38
	sec		; 38
	clv		; B8
	clc		; 18
	tya		; 98
	mvp $48,$44		; 44 44 48
	pha		; 48
	ldy #$20.b		; A0 20
	sta $7747ED.l		; 8F ED 47 77
	eor [$76.b]		; 47 76
	ora $33.b,S		; 03 33
	jsr $2030.w		; 20 30 20
	bmi  32.b		; 30 20
	sec		; 38
	brk $18.b		; 00 18
	jmp $8747.w		; 4C 47 87
	cop $A6.b		; 02 A6
	and ($E3.b,X)		; 21 E3
	jsr $00C0.w		; 20 C0 00
	cpy #$00.b		; C0 00
	bne  16.b		; D0 10
	beq  16.b		; F0 10
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	php		; 08
	tsb $0C08.w		; 0C 08 0C
	bra -122.b		; 80 86
	brk $86.b		; 00 86
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	jmp ($FC04.w,X)		; 7C 04 FC
	sty $05.b		; 84 05
	and ($2E.b),Y		; 31 2E
	adc $1A.b,S		; 63 1A
	cmp $58.b,S		; C3 58
	cmp $34.b,S		; C3 34
	stx $30.b		; 86 30
	stx $F8.b		; 86 F8
	sty $8CE0.w		; 8C E0 8C
	asl $1D10.w,X		; 1E 10 1D
	ora ($7C.b,X)		; 01 7C
	rti		; 40

	rol $F802.w,X		; 3E 02 F8
	bra  -4.b		; 80 FC
	sty $70.b		; 84 70
	brk $78.b		; 00 78
	php		; 08
	tsb $86.b		; 04 86
	tsb $86.b		; 04 86
	rti		; 40

	rep #$40		; C2 40
	rep #$00		; C2 00
	rep #$00		; C2 00
.ACCU 16
	rep #$20		; C2 20
	.db $62, $20, $63		; 62 20 63
	sei		; 78
	brk $78.b		; 00 78
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	rti		; 40

	jmp ($1C40.w,X)		; 7C 40 1C
	brk $1E.b		; 00 1E
	cop $3D.b		; 02 3D
	cop $3D.b		; 02 3D
	asl $2E5D.w,X		; 1E 5D 2E
	rtl		; 6B

	tsb $46.b		; 04 46
	brk $76.b		; 00 76
	bit $6E.b		; 24 6E
	bpl -36.b		; 10 DC
	pha		; 48
	cop $00.b		; 02 00
	asl $2E00.w,X		; 1E 00 2E
	brk $04.b		; 00 04
	bpl   0.b		; 10 00
	sec		; 38
	bit $08.b		; 24 08
	bpl   0.b		; 10 00
	pha		; 48
	jsr $1F0D.w		; 20 0D 1F
	ora [$37.b],Y		; 17 37
	asl A		; 0A
	and $3D.b,S		; 23 3D
	adc [$10.b]		; 67 10
	eor [$3B.b]		; 47 3B
	eor $718B22.l		; 4F 22 8B 71
	sta $0205.w,Y		; 99 05 02
	phd		; 0B
	brk $1C.b		; 00 1C
	brk $19.b		; 00 19
	brk $3C.b		; 00 3C
	ora $33.b		; 05 33
	brk $72.b		; 00 72
	ora ($61.b,X)		; 01 61
	brk $CE.b		; 00 CE
	pea $ED43.w		; F4 43 ED
	eor $D2E2.w,Y		; 59 E2 D2
	cpx $DB.b		; E4 DB
	sbc $81.b		; E5 81
	ror $FFE4.w,X		; 7E E4 FF
	cmp ($F3.b),Y		; D1 F3
	sta $40.b		; 85 40
	bvc -48.b		; 50 D0
	jmp $DD5CDC.l		; 5C DC 5C DD
	eor $00D8.w,Y		; 59 D8 00
	cpy #$C8.b		; C0 C8
	and #$CC4D.w		; 29 4D CC
	ora ($30.b),Y		; 11 30
	ora [$7C.b]		; 07 7C
	asl $40.b		; 06 40
	jsr $44A1.w		; 20 A1 44
	inc $02.b		; E6 02
	cmp $5FA11B.l,X		; DF 1B A1 5F
	cpx #$0F.b		; E0 0F
	ora $3F0B0B.l		; 0F 0B 0B 3F
	and $395F5F.l,X		; 3F 5F 5F 39
	and $6060.w,Y		; 39 60 60
	eor $001F41.l,X		; 5F 41 1F 00
	brk $18.b		; 00 18
	clv		; B8
	asl $0714.w		; 0E 14 07
	jsl $BF2243.l		; 22 43 22 BF
	bra  -2.b		; 80 FE
	beq -68.b		; F0 BC
	rti		; 40

	cld		; D8
	cpx #$E0.b		; E0 E0
	beq -16.b		; F0 F0
	plx		; FA
	plx		; FA
	jsr ($40FC.w,X)		; FC FC 40
	rti		; 40

	trb $14.b		; 14 14
	bra   0.b		; 80 00
	rts		; 60

	bra   7.b		; 80 07
	bpl  15.b		; 10 0F
	clc		; 18
	ora $180318.l		; 0F 18 03 18
	ora $18.b,S		; 03 18
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $000700.l		; 0F 00 07 00
	ora [$00.b]		; 07 00
	ora $080F08.l		; 0F 08 0F 08
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	sty $2C.b		; 84 2C
	bra  44.b		; 80 2C
	.db $82, $26, $80		; 82 26 80
	rol $81.b		; 26 81
	and $80.b,S		; 23 80
	and $C0.b,S		; 23 C0
	adc ($C0.b,X)		; 61 C0
	adc ($C3.b,X)		; 61 C3
	brk $C7.b		; 00 C7
	tsb $C1.b		; 04 C1
	brk $C3.b		; 00 C3
	cop $C0.b		; 02 C0
	brk $C1.b		; 00 C1
	ora ($80.b,X)		; 01 80
	brk $80.b		; 00 80
	brk $7B.b		; 00 7B
	tsb $3F.b		; 04 3F
	bit $3F2E.w,X		; 3C 2E 3F
	ora $171F.w,X		; 1D 1F 17
	ora $0F0F0F.l,X		; 1F 0F 0F 0F
	asl $0F0B.w		; 0E 0B 0F
	brk $04.b		; 00 04
	jsr $2B1C.w		; 20 1C 2B
	trb $0E15.w		; 1C 15 0E
	ora $0E.b,X		; 15 0E
	ora $070A07.l		; 0F 07 0A 07
	ora #$5307.w		; 09 07 53
.ACCU 8
.INDEX 8
	sep #$F3		; E2 F3
	cmp ($A3.b)		; D2 A3
.ACCU 16
	rep #$A3		; C2 A3
.ACCU 16
	rep #$E3		; C2 E3
	ldx #$C3.b		; A2 C3
	rep #$C3		; C2 C3
	rep #$C3		; C2 C3
.ACCU 16
	rep #$E2		; C2 E2
	tsb $0CD2.w		; 0C D2 0C
.INDEX 16
	rep #$1C		; C2 1C
.INDEX 16
	rep #$1C		; C2 1C
	ldx #$C21C.w		; A2 1C C2
	ldy $3CC2.w,X		; BC C2 3C
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora $01.b		; 05 01
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	cpy $BC08.w		; CC 08 BC
	rti		; 40

	pea $E878.w		; F4 78 E8
	bpl 120.b		; 10 78
	rti		; 40

	beq  32.b		; F0 20
	cpx #$8080.w		; E0 80 80
	brk $08.b		; 00 08
	bmi  64.b		; 30 40
	brk $78.b		; 00 78
	brk $10.b		; 00 10
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dec $20.b		; C6 20
	inc $24.b		; E6 24
	ror $04.b		; 66 04
	ror $00.b		; 66 00
	.db $62, $10, $32		; 62 10 32
	bpl  50.b		; 10 32
	ora ($32.b,X)		; 01 32
	jmp ($5C44.w,X)		; 7C 44 5C
	mvp $00,$18		; 44 18 00
	sec		; 38
	jsr $203C.w		; 20 3C 20
	tsb $0C00.w		; 0C 00 0C
	brk $1C.b		; 00 1C
	bpl  62.b		; 10 3E
	adc $3C.b,S		; 63 3C
	adc $3C.b,S		; 63 3C
	adc $28.b,S		; 63 28
	.db $62, $24, $E6		; 62 24 E6
	pha		; 48
	dec $8C28.w		; CE 28 8C
	bvs  28.b		; 70 1C
	trb $1E00.w		; 1C 00 1E
	cop $1E.b		; 02 1E
	cop $1C.b		; 02 1C
	brk $58.b		; 00 58
	rti		; 40

	bit $04.b,X		; 34 04
	beq -128.b		; F0 80
	inx		; E8
	php		; 08
	trb $0833.w		; 1C 33 08
	and $1C.b,S		; 23 1C
	ror $10.b		; 66 10
	ror $30.b		; 66 30
	stz $AC.b		; 64 AC
	rts		; 60

	pea $F408.w		; F4 08 F4
	sei		; 78
	asl $1E02.w		; 0E 02 1E
	cop $38.b		; 02 38
	jsr $243C.w		; 20 3C 24
	clc		; 18
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $78.b		; 00 78
	brk $06.b		; 00 06
	bmi   6.b		; 30 06
	bmi  31.b		; 30 1F
	and ($1C.b),Y		; 31 1C
	adc ($0E.b),Y		; 71 0E
	adc $38.b,S		; 63 38
	adc $3C.b,S		; 63 3C
	ror $18.b		; 66 18
	dec $1F.b		; C6 1F
	bpl  31.b		; 10 1F
	bpl  14.b		; 10 0E
	brk $2F.b		; 00 2F
	and ($3C.b,X)		; 21 3C
	jsr $021E.w		; 20 1E 02
	clc		; 18
	brk $7C.b		; 00 7C
	mvp $FB,$E2		; 44 E2 FB
	inx		; E8
	sbc $D9E0.w,Y		; F9 E0 D9
	bvc -23.b		; 50 E9
	bne -23.b		; D0 E9
	sbc ($CD.b),Y		; F1 CD
	nop		; EA
	stx $D7.b,Y		; 96 D7
	plp		; 28
	ldy $C0.b		; A4 C0
	ldx $C0.b		; A6 C0
	lsr $4688.w		; 4E 88 46
	ldy #$6187.w		; A0 87 61
	stx $44.b		; 86 44
	sta ($80.b),Y		; 91 80
	plp		; 28
	brk $AB.b		; 00 AB
	pei ($E5.b)		; D4 E5
	phx		; DA
	plb		; AB
	stz $ADB6.w		; 9C B6 AD
	lda [$AC.b],Y		; B7 AC
	sta $9993.w,X		; 9D 93 99
	sta [$B8.b],Y		; 97 B8
	stx $00D4.w		; 8E D4 00
	phx		; DA
	brk $9C.b		; 00 9C
	rti		; 40

	ldy $AC41.w		; AC 41 AC
	eor ($91.b,X)		; 41 91
	rts		; 60

	sta $64.b,X		; 95 64
	sty $44.b		; 84 44
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	cpy #$C000.w		; C0 00 C0
	bra -32.b		; 80 E0
	brk $A0.b		; 00 A0
	cpx #$E0E0.w		; E0 E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	jsr $20C0.w		; 20 C0 20
	cpy #$F0F0.w		; C0 F0 F0
	bne -16.b		; D0 F0
	sei		; 78
	sed		; F8
	pea $FAFC.w		; F4 FC FA
	dec $7E7A.w,X		; DE 7A 7E
	stz $6C.b,X		; 74 6C
	bit $303C.w,X		; 3C 3C 30
	cpy #$E050.w		; C0 50 E0
	cli		; 58
	cpx #$78F4.w		; E0 F4 78
	dex		; CA
	jmp ($2C72.w,X)		; 7C 72 2C
	stz $18.b		; 64 18
	bit $0400.w,X		; 3C 00 04
	iny		; C8
	cpx $08.b		; E4 08
	ldy $BA60.w,X		; BC 60 BA
	jmp ($70BE.w,X)		; 7C BE 70
	inc $04.b,X		; F6 04
	ror $7230.w,X		; 7E 30 72
	tsb $4070.w		; 0C 70 40
	clc		; 18
	php		; 08
	rts		; 60

	brk $7C.b		; 00 7C
	brk $70.b		; 00 70
	brk $04.b		; 00 04
	php		; 08
	bmi   0.b		; 30 00
	tsb $7E00.w		; 0C 00 7E
	bmi 123.b		; 30 7B
	asl A		; 0A
	and $1F2610.l		; 2F 10 26 1F
	and $1706.w,Y		; 39 06 17
	ora ($13.b,X)		; 01 13
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $0A.b		; 00 0A
	tsb $10.b		; 04 10
	brk $1F.b		; 00 1F
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	bra -80.b		; 80 B0
	rts		; 60

	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $05.b		; 05 05
	ora $1802.w		; 0D 02 18
	ora $1619.w		; 0D 19 16
	and ($08.b,S),Y		; 33 08
	and $34.b,S		; 23 34
	ror $00.b		; 66 00
	jmp $0003.w		; 4C 03 00
	cop $00.b		; 02 00
	ora $000608.l		; 0F 08 06 00
	ora $1E01.w		; 0D 01 1E
	cop $18.b		; 02 18
	brk $38.b		; 00 38
	php		; 08
	rtl		; 6B

	jsr ($FCA8.w,X)		; FC A8 FC
	cpx $3AFF.w		; EC FF 3A
	inc $9A2C.w		; EE 2C 9A
	asl $0717.w		; 0E 17 07
	ora $2B0F03.l,X		; 1F 03 0F 2B
	stp		; DB
	plb		; AB
	tad		; 5B
	pla		; 68
	trb $99A1.w		; 1C A1 99
	ora $1605.w,Y		; 19 05 16
	php		; 08
	ora ($0F.b,S),Y		; 13 0F
	ora #$6B07.w		; 09 07 6B
	jsr $CC30.w		; 20 30 CC
	bra -73.b		; 80 B7
	and ($6B.b,S),Y		; 33 6B
	sei		; 78
	sbc $FC.b,X		; F5 FC
	inc $FAFE.w		; EE FE FA
	jsr ($A7FC.w,X)		; FC FC A7
	sta [$03.b],Y		; 97 03
	ora $4C.b,S		; 03 4C
	jmp $B484.w		; 4C 84 B4
	and ($4A.b)		; 32 4A
	cpy $E230.w		; CC 30 E2
	jsr ($F8F4.w,X)		; FC F4 F8
	phd		; 0B
	cmp $17E723.l		; CF 23 E7 17
	sbc ($0F.b,S),Y		; F3 0F
	clv		; B8
	ora $1B.b		; 05 1B
	ora $0C.b,S		; 03 0C
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	adc [$43.b],Y		; 77 43
	eor $2843.w,X		; 5D 43 28
	and $10.b,S		; 23 10
	bpl  11.b		; 10 0B
	php		; 08
	tsb $04.b		; 04 04
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	php		; 08
	clc		; 18
	ora ($30.b),Y		; 11 30
	ora [$7C.b]		; 07 7C
	asl $40.b		; 06 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $0B0B0F.l		; 0F 0F 0B 0B
	and $00003F.l,X		; 3F 3F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	rts		; 60

	brk $18.b		; 00 18
	clv		; B8
	asl $0714.w		; 0E 14 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$F0E0.w		; E0 E0 F0
	beq  -6.b		; F0 FA
	plx		; FA
	sbc $7B6FC9.l		; EF C9 6F 7B
	adc $7C35.w,Y		; 79 35 7C
	ora $32.b		; 05 32
	phd		; 0B
	inc A		; 1A
	phd		; 0B
	ora $0706.w,X		; 1D 06 07
	clc		; 18
	bit #$4B70.w		; 89 70 4B
	bmi  53.b		; 30 35
	cop $05.b		; 02 05
	cop $0B.b		; 02 0B
	tsb $0B.b		; 04 0B
	tsb $06.b		; 04 06
	brk $08.b		; 00 08
	php		; 08
	eor $945D96.l,X		; 5F 96 5D 94
	cmp $DC55.w,X		; DD 55 DC
	mvn $04,$8C		; 54 8C 04
	stx $8E0A.w		; 8E 0A 8E
	txa		; 8A
	sta $20968A.l		; 8F 8A 96 20
	sty $22.b,X		; 94 22
	eor $22.b,X		; 55 22
	mvn $04,$23		; 54 23 04
	adc ($0A.b,S),Y		; 73 0A
	adc ($8A.b),Y		; 71 8A
	adc ($8A.b),Y		; 71 8A
	bvs   4.b		; 70 04
	bmi  23.b		; 30 17
	and ($0E.b),Y		; 31 0E
	adc ($2C.b,X)		; 61 2C
	adc ($1A.b,X)		; 61 1A
	eor $18.b,S		; 43 18
	cmp $7C.b,S		; C3 7C
	dec $70.b		; C6 70
	dec $1F.b		; C6 1F
	bpl  14.b		; 10 0E
	brk $3F.b		; 00 3F
	and ($1E.b,X)		; 21 1E
	brk $3C.b		; 00 3C
	brk $7E.b		; 00 7E
	.db $42, $38		; 42 38
	brk $3C.b		; 00 3C
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	ora $06.b,S		; 03 06
	asl $05.b		; 06 05
	ora [$03.b]		; 07 03
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	ora $05.b,S		; 03 05
	ora $06.b,S		; 03 06
	ora $05.b		; 05 05
	ora $1D.b,S		; 03 1D
	ora $EE.b,S		; 03 EE
	ora $8DCE.w,X		; 1D CE 8D
	sbc ($C2.b,S),Y		; F3 C2
	sbc ($EF.b),Y		; F1 EF
	ror $79.b		; 66 79
	bit $79.b,X		; 34 79
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $8D00.w,X		; 1D 00 8D
	and ($42.b),Y		; 31 42
	sty $90E1.w		; 8C E1 90
	rol $D6.b		; 26 D6
	and [$D7.b]		; 27 D7
	jsr $48C8.w		; 20 C8 48
	bvs -42.b		; 70 D6
	sbc #$AE95.w		; E9 95 AE
	ldx $F89D.w		; AE 9D F8
	eor [$66.b],Y		; 57 66
	sta $2992.w,Y		; 99 92 29
	bcs -128.b		; B0 80
	bra   0.b		; 80 00
	sbc #$4E00.w		; E9 00 4E
	brk $5D.b		; 00 5D
	brk $10.b		; 00 10
	brk $06.b		; 00 06
	asl $0E.b		; 06 0E
	ror $0600.w		; 6E 00 06
	tsb $1F.b		; 04 1F
	ora [$BB.b],Y		; 17 BB
	sta ($F4.b,S),Y		; 93 F4
	eor [$FB.b],Y		; 57 FB
	txa		; 8A
	sbc $FF24.w,X		; FD 24 FF
	asl $9F.b		; 06 9F
	asl $00.b		; 06 00
	ora $17B904.l,X		; 1F 04 B9 17
	bvs -97.b		; 70 9F
	lda ($5F.b,X)		; A1 5F
	sbc ($8E.b),Y		; F1 8E
	cmp $4E.b,X		; D5 4E
	sbc $043A06.l		; EF 06 3A 04
	lsr $7C10.w,X		; 5E 10 7C
	php		; 08
	stz $B810.w		; 9C 10 B8
	jsr $00E0.w		; 20 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	bpl  32.b		; 10 20
	php		; 08
	brk $10.b		; 00 10
	rts		; 60

	jsr $0040.w		; 20 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	iny		; C8
	tsb $48.b		; 04 48
	jmp ($7E28.w)		; 6C 28 7E
	brk $5A.b		; 00 5A
	bit $305F.w,X		; 3C 5F 30
	tsa		; 3B
	asl A		; 0A
	and $407018.l,X		; 3F 18 70 40
	sec		; 38
	php		; 08
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	bit $3000.w,X		; 3C 00 30
	brk $0A.b		; 00 0A
	tsb $18.b		; 04 18
	brk $40.b		; 00 40
	cpy $00.b		; C4 00
	dec $24.b		; C6 24
	ror $10.b		; 66 10
	adc ($1E.b,S),Y		; 73 1E
	and $093918.l,X		; 3F 18 39 09
	and $1808.w,Y		; 39 08 18
	sec		; 38
	brk $7C.b		; 00 7C
	mvp $00,$18		; 44 18 00
	rol $0022.w		; 2E 22 00
	brk $07.b		; 00 07
	ora ($16.b,X)		; 01 16
	bpl   7.b		; 10 07
	brk $30.b		; 00 30
	sty $5E.b		; 84 5E
	iny		; C8
	and $291B64.l		; 2F 64 1B 29
	ora $03.b,X		; 15 03
	tas		; 1B
	ora [$0D.b]		; 07 0D
	ora $780303.l		; 0F 03 03 78
	brk $30.b		; 00 30
	brk $14.b		; 00 14
	brk $09.b		; 00 09
	tsb $00.b		; 04 00
	phd		; 0B
	ora ($07.b,X)		; 01 07
	ora $0302.w		; 0D 02 03
	brk $E3.b		; 00 E3
	ora $C77FE7.l		; 0F E7 7F C7
	adc $F747BB.l,X		; 7F BB 47 F7
	sbc $F8FB.w,Y		; F9 FB F8
	dec $EC99.w,X		; DE 99 EC
	xce		; FB
	ora #$7D07.w		; 09 07 7D
	ora $73.b,S		; 03 73
	tsb $0740.w		; 0C 40 07
	sed		; F8
	ora ($E8.b,X)		; 01 E8
	stz $99.b,X		; 74 99
	cpx #$F0CB.w		; E0 CB F0
	jsr ($FEFC.w,X)		; FC FC FE
	inc $FCF7.w,X		; FE F7 FC
	sbc $FE.b,X		; F5 FE
	dec $FAFD.w,X		; DE FD FA
	sbc $3AFD.w,X		; FD FD 3A
	jsr ($F453.w,X)		; FC 53 F4
	sed		; F8
	inc $F8.b,X		; F6 F8
	pea $B4FA.w		; F4 FA B4
	ply		; 7A
	cmp #$71B4.w		; C9 B4 71
	cpy $283A.w		; CC 3A 28
	eor ($10.b,S),Y		; 53 10
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra  32.b		; 80 20
	cpy #$6090.w		; C0 90 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$6000.w		; C0 00 60
	brk $20.b		; 00 20
	lda ($44.b,X)		; A1 44
	inc $02.b		; E6 02
	cmp $5FA11B.l,X		; DF 1B A1 5F
	cpx #$5007.w		; E0 07 50
	and $78.b,S		; 23 78
	ora #$5F3C.w		; 09 3C 5F
	eor $603939.l,X		; 5F 39 39 60
	rts		; 60

	eor $001F41.l,X		; 5F 41 1F 00
	and $080F20.l		; 2F 20 0F 08
	ora [$04.b]		; 07 04
	jsl $BF2243.l		; 22 43 22 BF
	bra  -2.b		; 80 FE
	beq -68.b		; F0 BC
	rti		; 40

	cld		; D8
	cpy #$C010.w		; C0 10 C0
	bpl   0.b		; 10 00
	cpx #$FCFC.w		; E0 FC FC
	rti		; 40

	rti		; 40

	trb $14.b		; 14 14
	bra   0.b		; 80 00
	rts		; 60

	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	cpy #$1E05.w		; C0 05 1E
	ora $1D.b		; 05 1D
	tsb $1C.b		; 04 1C
	ora $0C.b		; 05 0C
	ora $0C.b		; 05 0C
	ora $0C.b		; 05 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	php		; 08
	phd		; 0B
	php		; 08
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	inc $C101.w,X		; FE 01 C1
	sbc $903E20.l,X		; FF 20 3E 90
	asl $1BD1.w,X		; 1E D1 1B
	sbc ($1B.b),Y		; F1 1B
	beq  27.b		; F0 1B
	cpx #$0109.w		; E0 09 01
	ora ($32.b,X)		; 01 32
	and ($D3.b)		; 32 D3
	ora ($E3.b)		; 12 E3
	cop $E0.b		; 02 E0
	brk $E0.b		; 00 E0
	brk $E1.b		; 00 E1
	ora ($F0.b,X)		; 01 F0
	brk $37.b		; 00 37
	php		; 08
	ror $6624.w		; 6E 24 66
	tsb $5E.b		; 04 5E
	jsr $3C7A.w		; 20 7A 3C
	stz $08.b,X		; 74 08
	ldy $F820.w,X		; BC 20 F8
	bpl   8.b		; 10 08
	brk $24.b		; 00 24
	bpl   4.b		; 10 04
	clc		; 18
	jsr $3C00.w		; 20 00 3C
	brk $08.b		; 00 08
	brk $20.b		; 00 20
	rti		; 40

	bpl   0.b		; 10 00
	cpx $18.b		; E4 18
	ror $7620.w,X		; 7E 20 76
	bit $3F.b,X		; 34 3F
	brk $2D.b		; 00 2D
	asl $0E37.w,X		; 1E 37 0E
	tas		; 1B
	asl $1A.b		; 06 1A
	tsb $18.b		; 04 18
	brk $20.b		; 00 20
	brk $34.b		; 00 34
	php		; 08
	brk $00.b		; 00 00
	asl $0E00.w,X		; 1E 00 0E
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	ora ($0C.b,X)		; 01 0C
	ora $182B.w,Y		; 19 2B 18
	and $5D02.w,X		; 3D 02 5D
	rol $2E5D.w,X		; 3E 5D 2E
	ror A		; 6A
	tsb $46.b		; 04 46
	brk $76.b		; 00 76
	bit $06.b		; 24 06
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $3E.b		; 00 3E
	brk $2E.b		; 00 2E
	brk $04.b		; 00 04
	bpl   0.b		; 10 00
	sec		; 38
	bit $08.b		; 24 08
	bit $7C81.w,X		; 3C 81 7C
	cmp ($7C.b,X)		; C1 7C
	cmp ($1C.b,X)		; C1 1C
	cmp ($1C.b,X)		; C1 1C
	cmp ($1C.b,X)		; C1 1C
	eor ($1E.b,X)		; 41 1E
	eor $1E.b,S		; 43 1E
	eor $7E.b,S		; 43 7E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $7E.b		; 00 7E
	rti		; 40

	ror $3E40.w,X		; 7E 40 3E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $10.b		; 00 10
	bmi   0.b		; 30 00
	bmi   8.b		; 30 08
	clc		; 18
	brk $18.b		; 00 18
	tsb $0C.b		; 04 0C
	brk $0C.b		; 00 0C
	cop $06.b		; 02 06
	brk $06.b		; 00 06
	ora $101F00.l		; 0F 00 1F 10
	ora [$00.b]		; 07 00
	ora $000308.l		; 0F 08 03 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	brk $60.b		; 00 60
	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	jsr $0030.w		; 20 30 00
	bpl -64.b		; 10 C0
	rti		; 40

	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	cpx #$3E00.w		; E0 00 3E
	adc $3C.b,S		; 63 3C
	adc $3C.b,S		; 63 3C
	adc $28.b,S		; 63 28
	.db $62, $24, $E6		; 62 24 E6
	rti		; 40

	dec $20.b		; C6 20
	sty $B8.b		; 84 B8
	sty $001C.w		; 8C 1C 00
	asl $1E02.w,X		; 1E 02 1E
	cop $1C.b		; 02 1C
	brk $58.b		; 00 58
	rti		; 40

	bit $F804.w,X		; 3C 04 F8
	bra 112.b		; 80 70
	brk $80.b		; 00 80
	cpy #$4080.w		; C0 80 40
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	brk $C0.b		; 00 C0
	cpy #$4080.w		; C0 80 40
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	bra -64.b		; 80 C0
	cpy $CC48.w		; CC 48 CC
	rti		; 40

	dec $44.b		; C6 44
	dec $00.b		; C6 00
	rep #$00		; C2 00
	eor $20.b,S		; 43 20
	adc $02.b,S		; 63 02
	adc $38.b,S		; 63 38
	php		; 08
	bcs -128.b		; B0 80
	bit $3804.w,X		; 3C 04 38
	brk $7C.b		; 00 7C
	rti		; 40

	rol $1E02.w,X		; 3E 02 1E
	cop $3C.b		; 02 3C
	jsr $70B8.w		; 20 B8 70
	jmp.w [$D430]		; DC 30 D4
	jsr $14BA.w		; 20 BA 14
	and $0E.b,X		; 35 0E
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	jsr $1408.w		; 20 08 14
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	cpy $00.b		; C4 00
	dec $04.b		; C6 04
	lsr $24.b		; 46 24
	ror $00.b		; 66 00
	.db $62, $10, $32		; 62 10 32
	brk $33.b		; 00 33
	asl A		; 0A
	tas		; 1B
	sec		; 38
	brk $7C.b		; 00 7C
	mvp $00,$38		; 44 38 00
	clc		; 18
	brk $3C.b		; 00 3C
	jsr $000C.w		; 20 0C 00
	asl $0412.w,X		; 1E 12 04
	brk $0E.b		; 00 0E
	adc $18.b,S		; 63 18
	adc $38.b,S		; 63 38
	.db $62, $3C, $66		; 62 3C 66
	bpl  70.b		; 10 46
	bmi  68.b		; 30 44
	sec		; 38
	cpy $CC20.w		; CC 20 CC
	bit $3E20.w,X		; 3C 20 3E
	jsl $18001C.l		; 22 1C 00 18
	brk $3C.b		; 00 3C
	tsb $38.b		; 04 38
	brk $70.b		; 00 70
	rti		; 40

	sei		; 78
	pha		; 48
	jsr $E0C0.w		; 20 C0 E0
	brk $A0.b		; 00 A0
	cpy #$20C0.w		; C0 C0 20
	rti		; 40

	rts		; 60

	brk $20.b		; 00 20
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	ldy $D8.b		; A4 D8
	jmp $70E8E0.l		; 5C E0 E8 70
	clv		; B8
	bvs -48.b		; 70 D0
	tay		; A8
	rts		; 60

	clc		; 18
	rti		; 40

	bit $7CF0.w,X		; 3C F0 7C
	cld		; D8
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $A0.b		; 00 A0
	brk $10.b		; 00 10
	bcc  48.b		; 90 30
	bcs   8.b		; B0 08
	php		; 08
	dey		; 88
	sty $0C08.w		; 8C 08 0C
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	tsb $06.b		; 04 06
	tsb $06.b		; 04 06
	brk $02.b		; 00 02
	bra -125.b		; 80 83
	bvs   0.b		; 70 00
	beq   0.b		; F0 00
	jsr ($FC04.w,X)		; FC 04 FC
	tsb $F8.b		; 04 F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $7E.b		; 00 7E
	cop $02.b		; 02 02
	clc		; 18
	ora $1619.w		; 0D 19 16
	and ($08.b,S),Y		; 33 08
	and $34.b,S		; 23 34
	ror $00.b		; 66 00
	jmp $8430.w		; 4C 30 84
	lsr $0FC8.w,X		; 5E C8 0F
	php		; 08
	asl $00.b		; 06 00
	ora $1E01.w		; 0D 01 1E
	cop $18.b		; 02 18
	brk $38.b		; 00 38
	php		; 08
	sei		; 78
	brk $30.b		; 00 30
	brk $EC.b		; 00 EC
	sbc $2CEE3A.l,X		; FF 3A EE 2C
	txs		; 9A
	asl $0717.w		; 0E 17 07
	ora $E30F03.l,X		; 1F 03 0F E3
	ora $687FE7.l		; 0F E7 7F 68
	trb $99A1.w		; 1C A1 99
	ora $1605.w,Y		; 19 05 16
	php		; 08
	ora ($0F.b,S),Y		; 13 0F
	ora #$0907.w		; 09 07 09
	ora [$7D.b]		; 07 7D
	ora $80.b,S		; 03 80
	lda [$33.b],Y		; B7 33
	rtl		; 6B

	sei		; 78
	sbc $FC.b,X		; F5 FC
	inc $FAFE.w		; EE FE FA
	jsr ($FCFC.w,X)		; FC FC FC
	jsr ($FEFE.w,X)		; FC FE FE
	jmp $844C.w		; 4C 4C 84
	ldy $32.b,X		; B4 32
	lsr A		; 4A
	cpy $E230.w		; CC 30 E2
	jsr ($F8F4.w,X)		; FC F4 F8
	pea $F6F8.w		; F4 F8 F6
	sed		; F8
	ora [$F3.b],Y		; 17 F3
	ora $1B05B8.l		; 0F B8 05 1B
	ora $0C.b,S		; 03 0C
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	plp		; 28
	and $10.b,S		; 23 10
	bpl  11.b		; 10 0B
	php		; 08
	tsb $04.b		; 04 04
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($EF.b,X)		; 41 EF
	ora $2FD0.w		; 0D D0 2F
	bvs   3.b		; 70 03
	pla		; 68
	ora ($3C.b),Y		; 11 3C
	tsb $1E.b		; 04 1E
	trb $0F.b		; 14 0F
	adc $0D.b,X		; 75 0D
	bmi  48.b		; 30 30
	adc $000F60.l		; 6F 60 0F 00
	and [$30.b],Y		; 37 30
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	eor ($FF.b,X)		; 41 FF
	sed		; F8
	cmp $E06CA0.l,X		; DF A0 6C E0
	php		; 08
	cpx #$8008.w		; E0 08 80
	bvs -128.b		; 70 80
	jsr $C020.w		; 20 20 C0
	asl A		; 0A
	asl A		; 0A
	cpy #$B080.w		; C0 80 B0
	rti		; 40

	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$C060.w		; E0 60 C0
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	cop $27.b		; 02 27
	tsb $2E.b		; 04 2E
	php		; 08
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	clc		; 18
	php		; 08
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	bmi  23.b		; 30 17
	and ($0C.b),Y		; 31 0C
	and ($0E.b,X)		; 21 0E
	adc $3C.b,S		; 63 3C
	adc $38.b,S		; 63 38
	.db $62, $1C, $46		; 62 1C 46
	bmi -60.b		; 30 C4
	ora $000E10.l,X		; 1F 10 0E 00
	ora $203C01.l,X		; 1F 01 3C 20
	asl $1C02.w,X		; 1E 02 1C
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	rti		; 40

	rti		; 40

	cpy $CC00.w		; CC 00 CC
	php		; 08
	jmp $480C.w		; 4C 0C 48
	ror $7E28.w		; 6E 28 7E
	brk $59.b		; 00 59
	rol $103F.w,X		; 3E 3F 10
	sec		; 38
	php		; 08
	sei		; 78
	pha		; 48
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	rol $1000.w,X		; 3E 00 10
	brk $21.b		; 00 21
	adc ($2E.b,X)		; 61 2E
	rts		; 60

	rol $0E60.w		; 2E 60 0E
	rts		; 60

	ora $301730.l,X		; 1F 30 17 30
	ora [$30.b]		; 07 30
	ora $001E38.l		; 0F 38 1E 00
	ora $001F00.l,X		; 1F 00 1F 00
	and $000F20.l,X		; 3F 20 0F 00
	ora $101F00.l		; 0F 00 1F 10
	ora [$10.b],Y		; 17 10
	php		; 08
	cld		; D8
	sty $DC.b		; 84 DC
	sty $CC.b		; 84 CC
	.db $82, $CE, $80		; 82 CE 80
	dec $01.b		; C6 01
	eor $00.b,S		; 43 00
	eor $00.b,S		; 43 00
	eor ($87.b,X)		; 41 87
	bra  11.b		; 80 0B
	php		; 08
	ora $00.b,S		; 03 00
	ora $04.b		; 05 04
	ora $02.b,S		; 03 02
	bra   0.b		; 80 00
	sta ($01.b,X)		; 81 01
	bra   0.b		; 80 00
	bpl  24.b		; 10 18
	brk $0C.b		; 00 0C
	php		; 08
	tsb $0400.w		; 0C 00 04
	brk $06.b		; 00 06
	tsb $06.b		; 04 06
	bra -126.b		; 80 82
	brk $83.b		; 00 83
	cpx #$F800.w		; E0 00 F8
	php		; 08
	beq   0.b		; F0 00
	sed		; F8
	brk $FC.b		; 00 FC
	tsb $F8.b		; 04 F8
	brk $7C.b		; 00 7C
	brk $FE.b		; 00 FE
	.db $82, $00, $18		; 82 00 18
	bpl 124.b		; 10 7C
	jmp $D24CEE.l		; 5C EE 4C D2
	jmp $F428EE.l		; 5C EE 28 F4
	bcc  -4.b		; 90 FC
	clc		; 18
	jmp ($0018.w,X)		; 7C 18 00
	jmp ($E610.w,X)		; 7C 10 E6
	jmp $867CC2.l		; 5C C2 7C 86
	jmp ($38C4.w,X)		; 7C C4 38
	mvn $BC,$38		; 54 38 BC
	clc		; 18
	jmp $3E187A.l		; 5C 7A 18 3E
	lda $7F9E.w,Y		; B9 9E 7F
	cpy #$DE2D.w		; C0 2D DE
	asl $0261.w,X		; 1E 61 02
	and ($08.b,S),Y		; 33 08
	ora $1CBA.w,Y		; 19 BA 1C
	nop		; EA
	trb $1C42.w		; 1C 42 1C
	bra -128.b		; 80 80
	lsr $2040.w,X		; 5E 40 20
	jsr $000C.w		; 20 0C 00
	asl $00.b		; 06 00
	ora $00.b,S		; 03 00
	ora [$06.b]		; 07 06
	phd		; 0B
	ora $151B1B.l		; 0F 1B 1B 15
	ora $3D0C.w,X		; 1D 0C 3D
	phd		; 0B
	and $006F2D.l		; 2F 2D 6F 00
	brk $06.b		; 00 06
	brk $09.b		; 00 09
	asl $13.b		; 06 13
	asl $0F14.w		; 0E 14 0F
	clc		; 18
	ora [$19.b],Y		; 17 19
	asl $15.b		; 06 15
	cop $80.b		; 02 80
	cpx #$C000.w		; E0 00 C0
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
	and $291B64.l		; 2F 64 1B 29
	ora $03.b,X		; 15 03
	tas		; 1B
	ora [$0D.b]		; 07 0D
	ora $010303.l		; 0F 03 03 01
	ora ($01.b,X)		; 01 01
	brk $14.b		; 00 14
	brk $09.b		; 00 09
	tsb $00.b		; 04 00
	phd		; 0B
	ora ($07.b,X)		; 01 07
	ora $0302.w		; 0D 02 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $C7.b		; 00 C7
	adc $F747BB.l,X		; 7F BB 47 F7
	sbc $F8FB.w,Y		; F9 FB F8
	dec $EC99.w,X		; DE 99 EC
	xce		; FB
	phx		; DA
	sta [$DF.b],Y		; 97 DF
	inc $73.b,X		; F6 73
	tsb $0740.w		; 0C 40 07
	sed		; F8
	ora ($E8.b,X)		; 01 E8
	stz $99.b,X		; 74 99
	cpx #$F0CB.w		; E0 CB F0
	ora [$E0.b],Y		; 17 E0
	stx $60.b,Y		; 96 60
	sbc [$FC.b],Y		; F7 FC
	sbc $FE.b,X		; F5 FE
	dec $FAFD.w,X		; DE FD FA
	sbc $3AFD.w,X		; FD FD 3A
	jsr ($BF53.w,X)		; FC 53 BF
	and $A9BA.w		; 2D BA A9
	pea $B4FA.w		; F4 FA B4
	ply		; 7A
	cmp #$71B4.w		; C9 B4 71
	cpy $283A.w		; CC 3A 28
	eor ($10.b,S),Y		; 53 10
	and $A940.w		; 2D 40 A9
	mvp $00,$00		; 44 00 00
	brk $00.b		; 00 00
	cpy #$3800.w		; C0 00 38
	cpy #$70B8.w		; C0 B8 70
	inx		; E8
	bpl -72.b		; 10 B8
	cpy #$F0E8.w		; C0 E8 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$7000.w		; C0 00 70
	brk $10.b		; 00 10
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $BB.b		; 00 BB
	adc [$3A.b],Y		; 77 3A
	rol $CE.b,X		; 36 CE
	asl A		; 0A
	cmp [$BD.b]		; C7 BD
	sta $D2E6.w,Y		; 99 E6 D2
	cpx $5B.b		; E4 5B
	sbc ($41.b,X)		; E1 41
	inc $77.b		; E6 77
	brk $35.b		; 00 35
	cpy $09.b		; C4 09
	bmi -124.b		; 30 84
	rti		; 40

	tya		; 98
	cli		; 58
	stz $5D5D.w		; 9C 5D 5D
	jmp.w [$D858]		; DC 58 D8
	cli		; 58
	ldx $56.b		; A6 56
	tyx		; BB
	lda $E277.w,Y		; B9 77 E2
	eor $486798.l,X		; 5F 98 67 48
	ldx $58.b		; A6 58
	asl $81.b		; 06 81
	adc [$A6.b]		; 67 A6
	brk $39.b		; 00 39
	cop $76.b		; 02 76
	ora ($43.b,X)		; 01 43
	cop $1B.b		; 02 1B
	ora $B83B.w,Y		; 19 3B B8
	tsa		; 3B
	tsx		; BA
	inc A		; 1A
	inc A		; 1A
	ror $04.b		; 66 04
	lsr $7A20.w,X		; 5E 20 7A
	bit $0874.w,X		; 3C 74 08
	ldy $F820.w,X		; BC 20 F8
	bpl  56.b		; 10 38
	jsr $4070.w		; 20 70 40
	tsb $18.b		; 04 18
	jsr $3C00.w		; 20 00 3C
	brk $08.b		; 00 08
	brk $20.b		; 00 20
	rti		; 40

	bpl   0.b		; 10 00
	jsr $40C0.w		; 20 C0 40
	bra -20.b		; 80 EC
	plp		; 28
	jsr ($6260.w,X)		; FC 60 62
	trb $207E.w		; 1C 7E 20
	ror $34.b,X		; 76 34
	and $1E2D00.l,X		; 3F 00 2D 1E
	and [$0E.b],Y		; 37 0E
	plp		; 28
	bpl  96.b		; 10 60
	brk $1C.b		; 00 1C
	brk $20.b		; 00 20
	brk $34.b		; 00 34
	php		; 08
	brk $00.b		; 00 00
	asl $0E00.w,X		; 1E 00 0E
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $111808.l		; 0F 08 18 11
	bmi   7.b		; 30 07
	jmp ($C006.w,X)		; 7C 06 C0
	jsr $04A1.w		; 20 A1 04
	dec $00.b		; C6 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $7F0B0B.l		; 0F 0B 0B 7F
	adc $795F5F.l,X		; 7F 5F 5F 79
	adc $613C.w,Y		; 79 3C 61
	asl $0F61.w		; 0E 61 0F
	adc ($0F.b,X)		; 61 0F
	and ($0F.b,X)		; 21 0F
	and ($1F.b,X)		; 21 1F
	and ($1E.b),Y		; 31 1E
	and ($1E.b),Y		; 31 1E
	and ($1F.b),Y		; 31 1F
	ora ($3F.b,X)		; 01 3F
	and ($3E.b,X)		; 21 3E
	jsr $001E.w		; 20 1E 00
	asl $0E00.w,X		; 1E 00 0E
	brk $0F.b		; 00 0F
	ora ($0F.b,X)		; 01 0F
	ora ($01.b,X)		; 01 01
	sta $00.b,S		; 83 00
	sta $00.b,S		; 83 00
	sta ($00.b,X)		; 81 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	tsb $8680.w		; 0C 80 86
	tsb $86.b		; 04 86
	rti		; 40

.ACCU 16
	rep #$60		; C2 60
	sbc $20.b,S		; E3 20
	adc $12.b,S		; 63 12
	adc ($12.b,S),Y		; 73 12
	adc ($F0.b,S),Y		; 73 F0
	brk $7C.b		; 00 7C
	tsb $F8.b		; 04 F8
	bra  60.b		; 80 3C
	brk $1E.b		; 00 1E
	cop $1E.b		; 02 1E
	cop $2C.b		; 02 2C
	jsr $202C.w		; 20 2C 20
	trb $31.b		; 14 31
	ora ($73.b)		; 12 73
	jsr $1063.w		; 20 63 10
.INDEX 16
	rep #$5C		; C2 5C
	dec $30.b		; C6 30
	stx $B8.b		; 86 B8
	sty $0C60.w		; 8C 60 0C
	asl $2C00.w		; 0E 00 2C
	jsr $021E.w		; 20 1E 02
	jmp ($3840.w,X)		; 7C 40 38
	brk $FC.b		; 00 FC
	sty $70.b		; 84 70
	brk $F8.b		; 00 F8
	php		; 08
	brk $C0.b		; 00 C0
	rti		; 40

	rts		; 60

	brk $1C.b		; 00 1C
	ldy $120F.w,X		; BC 0F 12
	ora $22.b,S		; 03 22
	eor $22.b,S		; 43 22
	lda $00FF82.l,X		; BF 82 FF 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	cpx #$F0F0.w		; E0 F0 F0
	jsr ($FCFC.w,X)		; FC FC FC
	jsr ($4040.w,X)		; FC 40 40
	trb $14.b		; 14 14
	rol $2F01.w,X		; 3E 01 2F
	asl $0E3F.w,X		; 1E 3F 0E
	and #$4606.w		; 29 06 46
	brk $76.b		; 00 76
	bit $6E.b		; 24 6E
	bpl  86.b		; 10 56
	tsb $01.b		; 04 01
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	bpl   0.b		; 10 00
	sec		; 38
	bit $08.b		; 24 08
	bpl   0.b		; 10 00
	tsb $28.b		; 04 28
	rts		; 60

	cpx $60.b		; E4 60
	inc $44.b		; E6 44
	dec $04.b		; C6 04
	dec $00.b		; C6 00
.ACCU 16
	rep #$20		; C2 20
	sbc $20.b,S		; E3 20
	adc $02.b,S		; 63 02
	adc $18.b,S		; 63 18
	brk $1C.b		; 00 1C
	tsb $38.b		; 04 38
	brk $78.b		; 00 78
	rti		; 40

	jmp ($5E40.w,X)		; 7C 40 5E
	.db $42, $1E		; 42 1E
	cop $3C.b		; 02 3C
	jsr $3318.w		; 20 18 33
	clc		; 18
	and ($0C.b)		; 32 0C
	rol $10.b		; 26 10
	ror $30.b		; 66 30
	stz $0C.b		; 64 0C
	pha		; 48
	stz $F440.w		; 9C 40 F4
	php		; 08
	asl $0C02.w		; 0E 02 0C
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	bit $18.b		; 24 18
	brk $30.b		; 00 30
	brk $60.b		; 00 60
	rti		; 40

	php		; 08
	brk $DC.b		; 00 DC
	bmi -44.b		; 30 D4
	jsr $14BA.w		; 20 BA 14
	and $0E.b,X		; 35 0E
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	jsr $1408.w		; 20 08 14
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	and $74.b,X		; 35 74
	ora $1A2B.w		; 0D 2B 1A
	ora $06.b,X		; 15 06
	ora $0706.w,X		; 1D 06 07
	clc		; 18
	tsb $1F.b		; 04 1F
	ora $1D.b		; 05 1D
	and $02.b,X		; 35 02
	ora $1A02.w		; 0D 02 1A
	tsb $06.b		; 04 06
	php		; 08
	asl $00.b		; 06 00
	php		; 08
	php		; 08
	phd		; 0B
	phd		; 0B
	asl A		; 0A
	php		; 08
	cmp $9C55.w,X		; DD 55 9C
	trb $8C.b		; 14 8C
	sty $8E.b		; 84 8E
	txa		; 8A
	asl $0F0A.w		; 0E 0A 0F
	php		; 08
	jsr ($C103.w,X)		; FC 03 C1
	sbc $142255.l,X		; FF 55 22 14
	adc $84.b,S		; 63 84
	adc ($8A.b,S),Y		; 73 8A
	adc ($0A.b),Y		; 71 0A
	sbc ($08.b),Y		; F1 08
	beq   3.b		; F0 03
	ora $32.b,S		; 03 32
	and ($B8.b)		; 32 B8
	bvs -40.b		; 70 D8
	bcs 112.b		; B0 70
	pha		; 48
	jsr $581C.w		; 20 1C 58
	bit $6EE8.w,X		; 3C E8 6E
	sty $86.b		; 84 86
	brk $03.b		; 00 03
	bvs   0.b		; 70 00
	bcs   0.b		; B0 00
	rti		; 40

	bra  24.b		; 80 18
	cld		; D8
	jsr $14A0.w		; 20 A0 14
	tsb $78.b		; 04 78
	brk $FE.b		; 00 FE
	cop $24.b		; 02 24
	inc $20.b		; E6 20
	.db $62, $00, $63		; 62 00 63
	bpl  51.b		; 10 33
	ora ($33.b)		; 12 33
	cop $33.b		; 02 33
	brk $11.b		; 00 11
	php		; 08
	ora $4058.w,Y		; 19 58 40
	trb $3E00.w		; 1C 00 3E
	jsl $0C020E.l		; 22 0E 02 0C
	brk $1C.b		; 00 1C
	bpl  14.b		; 10 0E
	brk $07.b		; 00 07
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	asl $0B.b		; 06 0B
	ora $151B1B.l		; 0F 1B 1B 15
	ora $3D0C.w,X		; 1D 0C 3D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora #$1306.w		; 09 06 13
	asl $0F14.w		; 0E 14 0F
	clc		; 18
	ora [$14.b],Y		; 17 14
	ora $BB0D75.l		; 0F 75 0D BB
	adc [$3A.b],Y		; 77 3A
	rol $CE.b,X		; 36 CE
	asl A		; 0A
	cmp [$BD.b]		; C7 BD
	sta $D2E6.w,Y		; 99 E6 D2
	cpx $02.b		; E4 02
	cop $02.b		; 02 02
	brk $77.b		; 00 77
	brk $35.b		; 00 35
	cpy $09.b		; C4 09
	bmi -124.b		; 30 84
	rti		; 40

	tya		; 98
	cli		; 58
	stz $805D.w		; 9C 5D 80
	jsr $C020.w		; 20 20 C0
	cli		; 58
	ldx $56.b		; A6 56
	tyx		; BB
	lda $E277.w,Y		; B9 77 E2
	eor $486798.l,X		; 5F 98 67 48
	ldx $C0.b		; A6 C0
	brk $00.b		; 00 00
	brk $A6.b		; 00 A6
	brk $39.b		; 00 39
	cop $76.b		; 02 76
	ora ($43.b,X)		; 01 43
	cop $1B.b		; 02 1B
	ora $B83B.w,Y		; 19 3B B8
	brk $18.b		; 00 18
	bpl 124.b		; 10 7C
	jmp $D24CEE.l		; 5C EE 4C D2
	jmp $F428EE.l		; 5C EE 28 F4
	bcc  -4.b		; 90 FC
	clc		; 18
	jmp ($0018.w,X)		; 7C 18 00
	jmp ($E610.w,X)		; 7C 10 E6
	jmp $867CC2.l		; 5C C2 7C 86
	jmp ($38C4.w,X)		; 7C C4 38
	mvn $BC,$38		; 54 38 BC
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	php		; 08
	clc		; 18
	ora ($30.b),Y		; 11 30
	ora [$7C.b]		; 07 7C
	asl $40.b		; 06 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $0B0B0F.l		; 0F 0F 0B 0B
	and $00003F.l,X		; 3F 3F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	rts		; 60

	brk $18.b		; 00 18
	clv		; B8
	asl $0714.w		; 0E 14 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$F0E0.w		; E0 E0 F0
	beq  -6.b		; F0 FA
	plx		; FA
	dec A		; 3A
	and ($1B.b,S),Y		; 33 1B
	asl $0E0D.w,X		; 1E 0D 0E
	asl A		; 0A
	ora $0F.b		; 05 0F
	ora ($04.b,X)		; 01 04
	cop $06.b		; 02 06
	brk $01.b		; 00 01
	asl $23.b		; 06 23
	trb $0C12.w		; 1C 12 0C
	asl $0500.w		; 0E 00 05
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $DF.b		; 00 DF
	adc $E557.w		; 6D 57 E5
	cmp [$E5.b],Y		; D7 E5
	adc [$55.b],Y		; 77 55
	and ($51.b,S),Y		; 33 51
	lda $C2.b,S		; A3 C2
	lda $C2.b,S		; A3 C2
	sbc $02.b,S		; E3 02
	adc $E500.w		; 6D 00 E5
	php		; 08
	sbc $08.b		; E5 08
	eor $88.b,X		; 55 88
	eor ($8C.b),Y		; 51 8C
.INDEX 16
	rep #$1C		; C2 1C
.INDEX 16
	rep #$1C		; C2 1C
	cop $1C.b		; 02 1C
	clc		; 18
	cmp $18.b,S		; C3 18
.INDEX 16
	rep #$5C		; C2 5C
	dec $7C.b		; C6 7C
	dec $70.b		; C6 70
	dec $30.b		; C6 30
	sty $38.b		; 84 38
	sty $8C38.w		; 8C 38 8C
	ror $7C42.w,X		; 7E 42 7C
	rti		; 40

	sec		; 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $78.b		; 04 78
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $18.b		; 00 18
	and ($55.b)		; 32 55
	rol $7F.b,X		; 36 7F
	brk $7B.b		; 00 7B
	bit $0C7A.w,X		; 3C 7A 0C
	dec $E640.w		; CE 40 E6
	tsb $5E.b		; 04 5E
	jsr $000C.w		; 20 0C 00
	php		; 08
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	brk $0C.b		; 00 0C
	brk $40.b		; 00 40
	bmi   4.b		; 30 04
	clc		; 18
	jsr $A800.w		; 20 00 A8
	jmp ($1CFA.w)		; 6C FA 1C
	stz $9A60.w,X		; 9E 60 9A
	jmp ($3C5A.w,X)		; 7C 5A 3C
	lsr $7630.w		; 4E 30 76
	tsb $7E.b		; 04 7E
	sec		; 38
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	rts		; 60

	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $30.b		; 00 30
	brk $04.b		; 00 04
	php		; 08
	sec		; 38
	brk $87.b		; 00 87
	jsr $43F7.w		; 20 F7 43
	ror $DD23.w,X		; 7E 23 DD
	lsr A		; 4A
	lda $3FDF1F.l		; AF 1F DF 3F
	ror $1F7C.w		; 6E 7C 1F
	ora $8300C0.l,X		; 1F C0 00 83
	brk $A3.b		; 00 A3
	brk $4A.b		; 00 4A
	jsr $5807.w		; 20 07 58
	ora $176C3B.l		; 0F 3B 6C 17
	asl $1F07.w,X		; 1E 07 1F
	adc $3FFF3F.l,X		; 7F 3F FF 3F
	sbc $BE3FDF.l,X		; FF DF 3F BE
	cmp $D7C7DF.l		; CF DF C7 D7
	sbc #$DA67.w		; E9 67 DA
	eor $1FEF3F.l		; 4F 3F EF 1F
	sta $3B0567.l,X		; 9F 67 05 3B
	dec $0D.b		; C6 0D
	eor $A6.b,S		; 43 A6
	sbc #$5A01.w		; E9 01 5A
	bra -32.b		; 80 E0
	cpx #$F0F0.w		; E0 F0 F0
	clv		; B8
	cpx #$F0A8.w		; E0 A8 F0
	pea $D2E8.w		; F4 E8 D2
	cpx $D6E9.w		; EC E9 D6
	sbc $9A.b		; E5 9A
	ldy #$B0C0.w		; A0 C0 B0
	cpy #$D0A0.w		; C0 A0 D0
	ldy #$48D0.w		; A0 D0 48
	ldy #$608C.w		; A0 8C 60
	dec $40.b,X		; D6 40
	txs		; 9A
	bra   4.b		; 80 04
	ora $000600.l		; 0F 00 06 00
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
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	tsb $02.b		; 04 02
	asl $01.b		; 06 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0B.b		; 00 0B
	and $176F2D.l		; 2F 2D 6F 17
	cmp [$69.b]		; C7 69
	cmp $409CB1.l		; CF B1 9C 40
	clc		; 18
	ldy #$0030.w		; A0 30 00
	rts		; 60

	ora $1506.w,Y		; 19 06 15
	cop $7B.b		; 02 7B
	rti		; 40

	and $04.b,X		; 35 04
	pla		; 68
	php		; 08
	beq  16.b		; F0 10
	cpy #$C000.w		; C0 00 C0
	rti		; 40

	tad		; 5B
	sbc ($41.b,X)		; E1 41
	inc $64.b		; E6 64
	sbc $73D1.w,X		; FD D1 73
	adc $D7.b,S		; 63 D7
	adc [$BF.b],Y		; 77 BF
	and $7F1FFF.l,X		; 3F FF 1F 7F
	eor $58DC.w,X		; 5D DC 58
	cld		; D8
	.db $42, $E2		; 42 E2
	tsb $C9CD.w		; 0C CD C9
	rol A		; 2A
	ldx $41.b,Y		; B6 41
	sta $3F4F7F.l,X		; 9F 7F 4F 3F
	cli		; 58
	asl $81.b		; 06 81
	adc [$00.b]		; 67 00
	lda $C05D98.l,X		; BF 98 5D C0
	tay		; A8
	rts		; 60

	beq -80.b		; F0 B0
	bne -32.b		; D0 E0
	cpx #$BA3B.w		; E0 3B BA
	inc A		; 1A
	inc A		; 1A
	adc ($61.b,X)		; 61 61
	jsr $90A0.w		; 20 A0 90
	bvc  96.b		; 50 60
	bra  16.b		; 80 10
	cpx #$C0A0.w		; E0 A0 C0
	jmp $3E187A.l		; 5C 7A 18 3E
	lda $7F9E.w,Y		; B9 9E 7F
	cpy #$DE2D.w		; C0 2D DE
	asl $0261.w,X		; 1E 61 02
	and ($08.b,S),Y		; 33 08
	ora $1CBA.w,Y		; 19 BA 1C
	nop		; EA
	trb $1C42.w		; 1C 42 1C
	bra -128.b		; 80 80
	lsr $2040.w,X		; 5E 40 20
	jsr $000C.w		; 20 0C 00
	asl $00.b		; 06 00
	jsr $44A1.w		; 20 A1 44
	inc $02.b		; E6 02
	cmp $5FA11B.l,X		; DF 1B A1 5F
	cpx #$5007.w		; E0 07 50
	and $78.b,S		; 23 78
	ora #$5F3C.w		; 09 3C 5F
	eor $603939.l,X		; 5F 39 39 60
	rts		; 60

	eor $001F41.l,X		; 5F 41 1F 00
	and $080F20.l		; 2F 20 0F 08
	ora [$04.b]		; 07 04
	jsl $BF2A43.l		; 22 43 2A BF
	bra  -2.b		; 80 FE
	beq -68.b		; F0 BC
	cpy #$C058.w		; C0 58 C0
	bpl -64.b		; 10 C0
	bpl   0.b		; 10 00
	cpx #$FCFC.w		; E0 FC FC
	rti		; 40

	rti		; 40

	trb $14.b		; 14 14
	bra   0.b		; 80 00
	rts		; 60

	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	cpy #$0701.w		; C0 01 07
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $3F30C0.l,X		; FF C0 30 3F
	ora #$650F.w		; 09 0F 65
	ora [$75.b]		; 07 75
	ora [$74.b]		; 07 74
	ora [$74.b]		; 07 74
	ora [$74.b]		; 07 74
	ora [$00.b]		; 07 00
	brk $CD.b		; 00 CD
	ora $04F4.w		; 0D F4 04
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F9.b		; 00 F9
	ora ($F9.b,X)		; 01 F9
	ora ($F8.b,X)		; 01 F8
	brk $27.b		; 00 27
	tsb $3E.b		; 04 3E
	tsb $2C.b		; 04 2C
	php		; 08
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	clc		; 18
	tsb $00.b		; 04 00
	php		; 08
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	adc ($0E.b,X)		; 61 0E
	adc $0E.b,S		; 63 0E
	adc $20.b,S		; 63 20
	adc $20.b,S		; 63 20
	.db $62, $10, $C2		; 62 10 C2
	cli		; 58
.ACCU 16
.INDEX 16
	rep #$7C		; C2 7C
	dec $3E.b		; C6 3E
	jsr $203C.w		; 20 3C 20
	bit $1E20.w,X		; 3C 20 1E
	cop $1C.b		; 02 1C
	brk $7C.b		; 00 7C
	rti		; 40

	bit $3800.w,X		; 3C 00 38
	brk $18.b		; 00 18
	and $18.b,S		; 23 18
	jsl $1C261C.l		; 22 1C 26 1C
	ror $18.b		; 66 18
	ror $38.b		; 66 38
	ror $30.b		; 66 30
	stz $30.b		; 64 30
	stz $1E.b		; 64 1E
	cop $1C.b		; 02 1C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	jsr $243C.w		; 20 3C 24
	trb $1804.w		; 1C 04 18
	brk $18.b		; 00 18
	brk $30.b		; 00 30
	cpx #$40B0.w		; E0 B0 40
	cld		; D8
	bpl  88.b		; 10 58
	jsr $1864.w		; 20 64 18
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $10.b		; 00 10
	jsr $0020.w		; 20 20 00
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F2.b		; 00 F2
	tsb $307E.w		; 0C 7E 30
	ror $14.b,X		; 76 14
	lsr $4D20.w,X		; 5E 20 4D
	rol $2E55.w,X		; 3E 55 2E
	and ($0E.b,S),Y		; 33 0E
	pld		; 2B
	tsb $0C.b		; 04 0C
	brk $30.b		; 00 30
	brk $14.b		; 00 14
	php		; 08
	jsr $3E00.w		; 20 00 3E
	brk $2E.b		; 00 2E
	brk $0E.b		; 00 0E
	brk $04.b		; 00 04
	brk $F2.b		; 00 F2
	ldy $345A.w		; AC 5A 34
	lsr $38.b,X		; 56 38
	ror A		; 6A
	jmp $B81824.l		; 5C 24 18 B8
	ldy $90.b		; A4 90
	sty $9CE0.w		; 8C E0 9C
	ldy $3400.w		; AC 00 34
	bra  56.b		; 80 38
	bra  92.b		; 80 5C
	bra  24.b		; 80 18
	cpy #$40A0.w		; C0 A0 40
	dey		; 88
	pla		; 68
	tya		; 98
	clc		; 18
	clv		; B8
	jmp ($CEC8.w,X)		; 7C C8 CE
	bra -122.b		; 80 86
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	tsb $06.b		; 04 06
	sty $86.b		; 84 86
	sty $86.b		; 84 86
	rti		; 40

	rti		; 40

	bit $04.b,X		; 34 04
	jmp ($FC04.w,X)		; 7C 04 FC
	tsb $FC.b		; 04 FC
	tsb $F8.b		; 04 F8
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
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
	brk $7C.b		; 00 7C
	ora [$FC.b]		; 07 FC
	sta [$F8.b]		; 87 F8
	sta $38.b,S		; 83 38
	.db $82, $38, $82		; 82 38 82
	sec		; 38
	.db $82, $78, $C2		; 82 78 C2
	cli		; 58
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	bra 124.b		; 80 7C
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $80.b		; 00 80
	.db $82, $40, $C2		; 82 40 C2
	rti		; 40

	rep #$40		; C2 40
	rep #$00		; C2 00
	cmp $00.b,S		; C3 00
	cmp $22.b,S		; C3 22
	adc $22.b,S		; 63 22
	adc $7C.b,S		; 63 7C
	brk $BC.b		; 00 BC
	bra -68.b		; 80 BC
	bra  60.b		; 80 3C
	brk $7E.b		; 00 7E
	.db $42, $7E		; 42 7E
	.db $42, $1C		; 42 1C
	brk $1C.b		; 00 1C
	brk $04.b		; 00 04
	dec $00.b		; C6 00
	.db $42, $20		; 42 20
	.db $62, $20, $62		; 62 20 62
	jsr $2062.w		; 20 62 20
	.db $62, $20, $63		; 62 20 63
	brk $43.b		; 00 43
	sei		; 78
	rti		; 40

	bit $1C00.w,X		; 3C 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	cop $3E.b		; 02 3E
	cop $02.b		; 02 02
	eor $02.b,S		; 43 02
	eor $02.b,S		; 43 02
	eor $20.b,S		; 43 20
	adc ($20.b,X)		; 61 20
	adc ($20.b,X)		; 61 20
	adc ($00.b,X)		; 61 00
	adc ($00.b,X)		; 61 00
	adc ($3C.b,X)		; 61 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	jsr $203E.w		; 20 3E 20
	brk $21.b		; 00 21
	ora ($33.b)		; 12 33
	ora ($33.b)		; 12 33
	cop $33.b		; 02 33
	cop $33.b		; 02 33
	cop $13.b		; 02 13
	cop $13.b		; 02 13
	asl A		; 0A
	tas		; 1B
	asl $0C00.w,X		; 1E 00 0C
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	bpl  28.b		; 10 1C
	bpl  12.b		; 10 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $7B.b		; 00 7B
	cop $63.b		; 02 63
	jsr $007E.w		; 20 7E 00
	phy		; 5A
	bit $387E.w,X		; 3C 7E 38
	ldy $78.b,X		; B4 78
	inx		; E8
	bpl  56.b		; 10 38
	jsr $0402.w		; 20 02 04
	jsr $001C.w		; 20 1C 00
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $06.b		; 02 06
	ora $0C.b		; 05 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $3903.w,X		; 1D 03 39
	and ($5E.b),Y		; 31 5E
	sei		; 78
	dec $ACDD.w,X		; DE DD AC
	sbc $5AEFE6.l		; EF E6 EF 5A
	adc $037F6A.l,X		; 7F 6A 7F 03
	brk $31.b		; 00 31
	asl $48.b		; 06 48
	and ($9C.b),Y		; 31 9C
	adc ($A4.b)		; 72 A4
	ply		; 7A
	mvp $CA,$3A		; 44 3A CA
	rol $AA.b,X		; 36 AA
	asl $DA.b,X		; 16 DA
	lda $B5D2.w,X		; BD D2 B5
	adc $53.b,X		; 75 53
	and $33CCEA.l,X		; 3F EA CC 33
	sta ($25.b)		; 92 25
	phx		; DA
	php		; 08
	tsb $BD33.w		; 0C 33 BD
	brk $A9.b		; 00 A9
	jsr $804B.w		; 20 4B 80
	jsl $C0C000.l		; 22 00 C0 C0
	sbc ($ED.b,X)		; E1 ED
	sbc #$C0E5.w		; E9 E5 C0
	cpy #$20E0.w		; C0 E0 20
	bcs -48.b		; B0 D0
	cld		; D8
	clv		; B8
	clc		; 18
	sed		; F8
	iny		; C8
	sec		; 38
	cli		; 58
	bit $36D4.w,X		; 3C D4 36
	ora ($33.b)		; 12 33
	jsr $D000.w		; 20 00 D0
	brk $A8.b		; 00 A8
	bpl  24.b		; 10 18
	bpl -56.b		; 10 C8
	bne -48.b		; D0 D0
	cpy #$C0D8.w		; C0 D8 C0
	cpy $57C0.w		; CC C0 57
	and $2B5D.w		; 2D 5D 2B
	ror $3E1A.w		; 6E 1A 3E
	inc A		; 1A
	and $0C05.w,Y		; 39 05 0C
	ora $0E.b,X		; 15 0E
	ora ($03.b),Y		; 11 03
	asl $002D.w,X		; 1E 2D 00
	pld		; 2B
	brk $1A.b		; 00 1A
	ora ($1A.b,X)		; 01 1A
	ora ($05.b,X)		; 01 05
	cop $05.b		; 02 05
	cop $01.b		; 02 01
	brk $0C.b		; 00 0C
	tsb $A5E7.w		; 0C E7 A5
	sbc [$A5.b]		; E7 A5
	eor [$85.b]		; 47 85
	eor [$85.b]		; 47 85
	cmp [$45.b]		; C7 45
	cmp [$45.b]		; C7 45
	sta [$05.b]		; 87 05
	sta [$04.b]		; 87 04
	lda $18.b		; A5 18
	lda $18.b		; A5 18
	sta $38.b		; 85 38
	sta $38.b		; 85 38
	eor $38.b		; 45 38
	eor $38.b		; 45 38
	ora $78.b		; 05 78
	tsb $78.b		; 04 78
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	tsb $0C.b		; 04 0C
	php		; 08
	clc		; 18
	ora $3E.b,S		; 03 3E
	ora $20.b,S		; 03 20
	bpl  80.b		; 10 50
	jsl $000073.l		; 22 73 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora $05.b		; 05 05
	ora $2F2F1F.l,X		; 1F 1F 2F 2F
	trb $001C.w		; 1C 1C 00
	bra -128.b		; 80 80
	cpx #$3020.w		; E0 20 30
	bra  12.b		; 80 0C
	jmp.w [$0A07]		; DC 07 0A
	ora $11.b,S		; 03 11
	lda ($11.b,X)		; A1 11
	eor $000000.l,X		; 5F 00 00 00
	brk $C0.b		; 00 C0
	cpy #$F0F0.w		; C0 F0 F0
	sed		; F8
	sed		; F8
	sbc $FEFD.w,X		; FD FD FE
	inc $A0A0.w,X		; FE A0 A0
	sbc $1F775F.l,X		; FF 5F 77 1F
	ora $07050F.l		; 0F 0F 05 07
	phd		; 0B
	ora $0F.b		; 05 0F
	ora [$1F.b]		; 07 1F
	asl $0B15.w		; 0E 15 0B
	eor $121E.w		; 4D 1E 12
	ora $05030D.l		; 0F 0D 03 05
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	asl $0E.b		; 06 0E
	brk $0B.b		; 00 0B
	brk $3F.b		; 00 3F
	sbc $BEBFDF.l,X		; FF DF BF BE
	cmp $CFD7EF.l		; CF EF D7 CF
	lda ($EF.b),Y		; B1 EF
	ldx $AD.b,Y		; B6 AD
	adc $F9.b,X		; 75 F9
	adc #$679F.w		; 69 9F 67
	sta $3B.b		; 85 3B
	dec $0D.b		; C6 0D
	cmp ($06.b,S),Y		; D3 06
	lda ($01.b),Y		; B1 01
	ldx $00.b,Y		; B6 00
	adc $02.b,X		; 75 02
	adc #$F006.w		; 69 06 F0
	cpy #$E0D0.w		; C0 D0 E0
	sed		; F8
	cpx #$C8F4.w		; E0 F4 C8
	plx		; FA
	pei ($FA.b)		; D4 FA
	sty $FD.b,X		; 94 FD
	ror A		; 6A
	jmp.w [$404B]		; DC 4B 40
	ldy #$A040.w		; A0 40 A0
	rti		; 40

	ldy #$4088.w		; A0 88 40
	pei ($40.b)		; D4 40
	sty $80.b,X		; 94 80
	ror A		; 6A
	brk $4B.b		; 00 4B
	jsr $011E.w		; 20 1E 01
	and [$04.b]		; 27 04
	and $185E02.l,X		; 3F 02 5E 18
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	clc		; 18
	cop $00.b		; 02 00
	clc		; 18
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	and [$37.b],Y		; 37 37
	and $00003F.l,X		; 3F 3F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	and $02.b,X		; 35 02
	and $3B3B14.l,X		; 3F 14 3B 3B
	and $3B3337.l,X		; 3F 37 33 3B
	inc $FE.b,X		; F6 FE
	pla		; 68
	sed		; F8
	beq -16.b		; F0 F0
	cpx #$C060.w		; E0 60 C0
	rti		; 40

	and $2716.w,Y		; 39 16 27
	trb $1E23.w		; 1C 23 1E
	dec $38.b		; C6 38
	plp		; 28
	beq -48.b		; F0 D0
	cpx #$4020.w		; E0 20 40
	rti		; 40

	brk $01.b		; 00 01
	sta ($8E.b,X)		; 81 8E
	cmp $4F.b,S		; C3 4F
	adc $3F.b,X		; 75 3F
	ror $8D.b,X		; 76 8D
	txa		; 8A
	lsr $F8.b		; 46 F8
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	sta $01.b		; 85 01
	dec $40.b		; C6 40
	adc ($00.b)		; 72 00
	ldy #$00A0.w		; A0 A0 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	adc $1A.b,S		; 63 1A
	adc $38.b,S		; 63 38
	adc $3C.b,S		; 63 3C
	ror $1C.b		; 66 1C
	lsr $30.b		; 46 30
	lsr $30.b		; 46 30
	cpy $38.b		; C4 38
	cpy $203C.w		; CC 3C 20
	bit $1E20.w,X		; 3C 20 1E
	cop $18.b		; 02 18
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $78.b		; 04 78
	rti		; 40

	bvs  64.b		; 70 40
	asl A		; 0A
	clc		; 18
	ora $31.b,X		; 15 31
	rol A		; 2A
	adc $48.b,S		; 63 48
	cmp $17C35A.l		; CF 5A C3 17
	bvs   5.b		; 70 05
	trb $0601.w		; 1C 01 06
	ora [$00.b]		; 07 00
	asl $1D00.w		; 0E 00 1D
	ora ($34.b,X)		; 01 34
	tsb $3D.b		; 04 3D
	ora ($0F.b,X)		; 01 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $9B.b		; 00 9B
	sbc $03CB0E.l,X		; FF 0E CB 03
	sta [$03.b]		; 87 03
	ora $00.b		; 05 00
	sta $EE.b,S		; 83 EE
	sta ($B8.b,X)		; 81 B8
	and [$7E.b]		; 27 7E
	eor [$5A.b],Y		; 57 5A
	eor [$88.b]		; 47 88
	stx $06.b		; 86 06
	ora ($05.b,X)		; 01 05
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $27.b		; 00 27
	rti		; 40

	eor [$98.b]		; 47 98
	jsr $88ED.w		; 20 ED 88
	stz $BF1C.w,X		; 9E 1C BF
	tyx		; BB
	sbc $7EFFFE.l,X		; FF FE FF 7E
	sbc $7FFF7F.l,X		; FF 7F FF 7F
	sbc $611313.l,X		; FF 13 13 61
	adc $524C.w		; 6D 4C 52
	lda ($0C.b,S),Y		; B3 0C
	jmp ($3EFF.w,X)		; 7C FF 3E
	sbc $DEFF3E.l,X		; FF 3E FF DE
	and $C4F909.l,X		; 3F 09 F9 C4
	jsr ($4E02.w,X)		; FC 02 4E
	ora ($87.b,X)		; 01 87
	bra -125.b		; 80 83
	bra -127.b		; 80 81
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	asl $10.b,X		; 16 10
	phd		; 0B
	php		; 08
	sta $84.b		; 85 84
	cop $02.b		; 02 02
	sta ($01.b,X)		; 81 01
	bra   0.b		; 80 00
	rti		; 40

	bra  64.b		; 80 40
	bra   7.b		; 80 07
	ora $081C0C.l,X		; 1F 0C 1C 08
	clc		; 18
	ora #$0918.w		; 09 18 09
	clc		; 18
	phd		; 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	php		; 08
	php		; 08
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	sbc $FEE201.l,X		; FF 01 E2 FE
	trb $1C.b		; 14 1C
	sty $1C.b		; 84 1C
	cpy #$E01C.w		; C0 1C E0
	bit $36E2.w,X		; 3C E2 36
	.db $82, $36, $00		; 82 36 00
	brk $15.b		; 00 15
	trb $E3.b		; 14 E3
	brk $F3.b		; 00 F3
	bpl -25.b		; 10 E7
	tsb $C7.b		; 04 C7
	tsb $C1.b		; 04 C1
	brk $E1.b		; 00 E1
	jsr $6F01.w		; 20 01 6F
	ora $2F50.w		; 0D 50 2F
	bvs   3.b		; 70 03
	plp		; 28
	ora ($3C.b),Y		; 11 3C
	tsb $1E.b		; 04 1E
	trb $0F.b		; 14 0F
	adc $0D.b,X		; 75 0D
	bmi  48.b		; 30 30
	and $000F20.l		; 2F 20 0F 00
	ora [$10.b],Y		; 17 10
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	rti		; 40

	sbc $A0DEF8.l,X		; FF F8 DE A0
	jmp ($08E0.w)		; 6C E0 08
	cpx #$8008.w		; E0 08 80
	bvs -128.b		; 70 80
	jsr $C020.w		; 20 20 C0
	asl A		; 0A
	asl A		; 0A
	cpy #$B080.w		; C0 80 B0
	rti		; 40

	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$C060.w		; E0 60 C0
	brk $00.b		; 00 00
	brk $42.b		; 00 42
	cmp $42.b,S		; C3 42
	cmp $02.b,S		; C3 02
	cmp $02.b,S		; C3 02
	cmp $22.b,S		; C3 22
	adc $22.b,S		; 63 22
	adc $00.b,S		; 63 00
	adc ($00.b,X)		; 61 00
	adc ($3C.b,X)		; 61 3C
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	rti		; 40

	jmp ($1C40.w,X)		; 7C 40 1C
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	jsr $203E.w		; 20 3E 20
	asl $2C61.w		; 0E 61 2C
	adc ($1A.b,X)		; 61 1A
	eor $18.b,S		; 43 18
	cmp $74.b,S		; C3 74
	dec $30.b		; C6 30
	stx $38.b		; 86 38
	sty $8C68.w		; 8C 68 8C
	and $001E21.l,X		; 3F 21 1E 00
	bit $7E00.w,X		; 3C 00 7E
	.db $42, $38		; 42 38
	brk $7C.b		; 00 7C
	tsb $F0.b		; 04 F0
	bra -16.b		; 80 F0
	bra  64.b		; 80 40
	dec $00.b		; C6 00
	dec $00.b		; C6 00
	lsr $24.b		; 46 24
	ror $04.b		; 66 04
	ror $04.b		; 66 04
	rol $10.b		; 26 10
	and ($00.b)		; 32 00
	and ($3C.b)		; 32 3C
	tsb $7C.b		; 04 7C
	mvp $04,$3C		; 44 3C 04
	clc		; 18
	brk $38.b		; 00 38
	jsr $0018.w		; 20 18 00
	tsb $1C00.w		; 0C 00 1C
	bpl   0.b		; 10 00
	and ($10.b,X)		; 21 10
	and ($12.b),Y		; 31 12
	and ($12.b,S),Y		; 33 12
	and ($12.b,S),Y		; 33 12
	and ($14.b,S),Y		; 33 14
	adc [$04.b],Y		; 77 04
	adc [$24.b]		; 67 24
	adc [$1E.b]		; 67 1E
	brk $0E.b		; 00 0E
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $2A.b		; 00 2A
	jsl $1A223A.l		; 22 3A 22 1A
	cop $72.b		; 02 72
	bit $347A.w		; 2C 7A 34
	jmp ($3C50.w,X)		; 7C 50 3C
	clc		; 18
	sec		; 38
	jsr $2830.w		; 20 30 28
	jsr $C018.w		; 20 18 C0
	sec		; 38
	bit $3480.w		; 2C 80 34
	bra  80.b		; 80 50
	bra  24.b		; 80 18
	cpy #$C020.w		; C0 20 C0
	jsr $10C0.w		; 20 C0 10
	bne  48.b		; D0 30
	bmi -32.b		; 30 E0
	sed		; F8
	jsr $1038.w		; 20 38 10
	clc		; 18
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	bpl  16.b		; 10 10
	bne  16.b		; D0 10
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $3B.b		; 00 3B
	ora ($37.b)		; 12 37
	php		; 08
	ror $6624.w		; 6E 24 66
	tsb $5E.b		; 04 5E
	jsr $3C7A.w		; 20 7A 3C
	pea $3C08.w		; F4 08 3C
	jsr $0412.w		; 20 12 04
	php		; 08
	brk $24.b		; 00 24
	bpl   4.b		; 10 04
	clc		; 18
	jsr $3C00.w		; 20 00 3C
	brk $08.b		; 00 08
	brk $20.b		; 00 20
	cpy #$210E.w		; C0 0E 21
	tsb $0621.w		; 0C 21 06
	adc $20.b,S		; 63 20
	adc $10.b,S		; 63 10
.INDEX 16
	rep #$5C		; C2 5C
	dec $38.b		; C6 38
	stx $B0.b		; 86 B0
	sty $1E.b		; 84 1E
	brk $1E.b		; 00 1E
	brk $3C.b		; 00 3C
	jsr $021E.w		; 20 1E 02
	jmp ($3840.w,X)		; 7C 40 38
	brk $FC.b		; 00 FC
	sty $78.b		; 84 78
	brk $00.b		; 00 00
	jmp $08E4.w		; 4C E4 08
	ldy $BA60.w,X		; BC 60 BA
	jmp ($70BE.w,X)		; 7C BE 70
	inc $04.b,X		; F6 04
	ror $7230.w,X		; 7E 30 72
	tsb $0838.w		; 0C 38 08
	clc		; 18
	php		; 08
	rts		; 60

	brk $7C.b		; 00 7C
	brk $70.b		; 00 70
	brk $04.b		; 00 04
	php		; 08
	bmi   0.b		; 30 00
	tsb $0600.w		; 0C 00 06
	ora ($2B.b,S),Y		; 13 2B
	clc		; 18
	and $5D02.w,X		; 3D 02 5D
	rol $2E5D.w,X		; 3E 5D 2E
	ror A		; 6A
	tsb $46.b		; 04 46
	brk $76.b		; 00 76
	bit $0C.b		; 24 0C
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $3E.b		; 00 3E
	brk $2E.b		; 00 2E
	brk $04.b		; 00 04
	bpl   0.b		; 10 00
	sec		; 38
	bit $08.b		; 24 08
	jsr ($F660.w,X)		; FC 60 F6
	trb $5E.b		; 14 5E
	jsr $3E4D.w		; 20 4D 3E
	adc ($0C.b)		; 72 0C
	rol $2703.w		; 2E 03 27
	brk $01.b		; 00 01
	brk $60.b		; 00 60
	brk $14.b		; 00 14
	php		; 08
	jsr $3E00.w		; 20 00 3E
	brk $0C.b		; 00 0C
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	cpy #$00F0.w		; C0 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$0000.w		; C0 00 00
	brk $5C.b		; 00 5C
	cmp ($5E.b,X)		; C1 5E
	cmp $5E.b,S		; C3 5E
	cmp $58.b,S		; C3 58
	cmp $58.b,S		; C3 58
.INDEX 16
	rep #$5C		; C2 5C
	dec $7C.b		; C6 7C
	dec $78.b		; C6 78
	dec $3E.b		; C6 3E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	cop $3C.b		; 02 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $22.b		; 04 22
	adc $02.b,S		; 63 02
	eor $02.b,S		; 43 02
	eor $22.b,S		; 43 22
	adc $20.b,S		; 63 20
	adc ($00.b,X)		; 61 00
	adc ($00.b,X)		; 61 00
	adc ($00.b,X)		; 61 00
	and ($1C.b,X)		; 21 1C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	jsr $203E.w		; 20 3E 20
	asl $1800.w,X		; 1E 00 18
	.db $62, $1C, $66		; 62 1C 66
	sec		; 38
	ror $30.b		; 66 30
	stz $10.b		; 64 10
	mvp $4C,$18		; 44 18 4C
	ldy $F460.w		; AC 60 F4
	php		; 08
	bit $3820.w,X		; 3C 20 38
	jsr $041C.w		; 20 1C 04
	clc		; 18
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$05.b]		; 07 05
	ora $3010.w,X		; 1D 10 30
	jsl $701760.l		; 22 60 17 70
	tsb $20C0.w		; 0C C0 20
	lda $00.b		; A5 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $0F.b		; 02 0F
	ora $0F1F1F.l		; 0F 1F 1F 0F
	ora $5F3F3F.l		; 0F 3F 3F 5F
	eor $000000.l,X		; 5F 00 00 00
	brk $00.b		; 00 00
	cpy #$6040.w		; C0 40 60
	brk $10.b		; 00 10
	bmi  12.b		; 30 0C
	trb $06.b		; 14 06
	brk $22.b		; 00 22
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$F0E0.w		; E0 E0 F0
	beq  -8.b		; F0 F8
	sed		; F8
	jmp.w [$00DC]		; DC DC 00
	brk $F0.b		; 00 F0
	bmi -72.b		; 30 B8
	cld		; D8
	cld		; D8
	ldy $FE1C.w,X		; BC 1C FE
	dex		; CA
	tsa		; 3B
	eor $D839.w,Y		; 59 39 D8
	sec		; 38
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	cld		; D8
	brk $A8.b		; 00 A8
	bpl  24.b		; 10 18
	bpl -52.b		; 10 CC
	bne -42.b		; D0 D6
	cpy #$C0D7.w		; C0 D7 C0
	ora $001F0F.l		; 0F 0F 1F 00
	ora $1706.w,X		; 1D 06 17
	php		; 08
	ora $0F06.w,X		; 1D 06 0F
	clc		; 18
	brk $B2.b		; 00 B2
	sty $F6.b,X		; 94 F6
	phd		; 0B
	asl $00.b		; 06 00
	brk $06.b		; 00 06
	brk $08.b		; 00 08
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	bpl   8.b		; 10 08
	brk $03.b		; 00 03
	brk $1D.b		; 00 1D
	ora $39.b,S		; 03 39
	and ($5E.b),Y		; 31 5E
	sei		; 78
	dec $ACDD.w,X		; DE DD AC
	sbc $5AEFE6.l		; EF E6 EF 5A
	adc $030000.l,X		; 7F 00 00 03
	brk $31.b		; 00 31
	asl $48.b		; 06 48
	and ($9C.b),Y		; 31 9C
	adc ($A4.b)		; 72 A4
	ply		; 7A
	mvp $CA,$3A		; 44 3A CA
	rol $91.b,X		; 36 91
	lsr $BDDA.w,X		; 5E DA BD
	cmp ($B5.b)		; D2 B5
	adc $53.b,X		; 75 53
	and $33CCEA.l,X		; 3F EA CC 33
	sta ($25.b)		; 92 25
	phx		; DA
	php		; 08
	jsr $BD00.w		; 20 00 BD
	brk $A9.b		; 00 A9
	jsr $804B.w		; 20 4B 80
	jsl $C0C000.l		; 22 00 C0 C0
	sbc ($ED.b,X)		; E1 ED
	sbc #$7EE5.w		; E9 E5 7E
	eor [$FE.b],Y		; 57 FE
	lda $1F3FEF.l,X		; BF EF 3F 1F
	ora $170F0B.l,X		; 1F 0B 0F 17
	phd		; 0B
	ora $1C3F0F.l,X		; 1F 0F 3F 1C
	eor [$98.b]		; 47 98
	txy		; 9B
	bit $1E25.w,X		; 3C 25 1E
	tas		; 1B
	asl $0B.b		; 06 0B
	asl $03.b		; 06 03
	asl $0C07.w		; 0E 07 0C
	trb $7F00.w		; 1C 00 7F
	sbc $BFFF7F.l,X		; FF 7F FF BF
	adc $DF9F7D.l,X		; 7F 7D 9F DF
	lda $DF639F.l		; AF 9F 63 DF
	adc $EA5B.w		; 6D 5B EA
	dec $3E3F.w,X		; DE 3F 3E
	cmp $8C770A.l		; CF 0A 77 8C
	tas		; 1B
	lda [$0C.b]		; A7 0C
	adc $02.b,S		; 63 02
	adc $EA01.w		; 6D 01 EA
	tsb $0E.b		; 04 0E
	adc $1A.b,S		; 63 1A
	adc $38.b,S		; 63 38
	adc $3C.b,S		; 63 3C
	ror $1C.b		; 66 1C
	lsr $30.b		; 46 30
	lsr $30.b		; 46 30
	cpy $38.b		; C4 38
	cpy $203C.w		; CC 3C 20
	bit $1E20.w,X		; 3C 20 1E
	cop $18.b		; 02 18
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $78.b		; 04 78
	rti		; 40

	bvs  64.b		; 70 40
	brk $42.b		; 00 42
	jsr $2462.w		; 20 62 24
	ror $24.b		; 66 24
	ror $24.b		; 66 24
	ror $28.b		; 66 28
	inc $CE08.w		; EE 08 CE
	pha		; 48
	dec $003C.w		; CE 3C 00
	trb $1800.w		; 1C 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $54.b		; 00 54
	mvp $44,$74		; 44 74 44
	bit $04.b,X		; 34 04
	mvp $04,$C6		; 44 C6 04
	stx $04.b		; 86 04
	stx $44.b		; 86 44
	dec $40.b		; C6 40
	rep #$00		; C2 00
	rep #$00		; C2 00
	rep #$00		; C2 00
	.db $42, $38		; 42 38
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	rti		; 40

	jmp ($3C40.w,X)		; 7C 40 3C
	brk $20.b		; 00 20
	adc $00.b,S		; 63 00
	adc $00.b,S		; 63 00
	and $12.b,S		; 23 12
	and ($02.b,S),Y		; 33 02
	and ($02.b,S),Y		; 33 02
	ora ($08.b,S),Y		; 13 08
	ora $1900.w,Y		; 19 00 19
	asl $3E02.w,X		; 1E 02 3E
	jsl $0C021E.l		; 22 1E 02 0C
	brk $1C.b		; 00 1C
	bpl  12.b		; 10 0C
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	php		; 08
	ora $1701.w,Y		; 19 01 17
	php		; 08
	asl $3D0F.w,X		; 1E 0F 3D
	cop $4F.b		; 02 4F
	php		; 08
	ror $BC04.w,X		; 7E 04 BC
	bmi -16.b		; 30 F0
	brk $01.b		; 00 01
	asl $08.b		; 06 08
	brk $0F.b		; 00 0F
	brk $02.b		; 00 02
	brk $08.b		; 00 08
	bmi   4.b		; 30 04
	brk $30.b		; 00 30
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $06.b		; 02 06
	ora $0C.b		; 05 0C
	asl A		; 0A
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $31.b,X		; 15 31
	rol A		; 2A
	adc $48.b,S		; 63 48
	cmp $17C35A.l		; CF 5A C3 17
	bvs   5.b		; 70 05
	trb $0601.w		; 1C 01 06
	ora ($00.b,X)		; 01 00
	asl $1D00.w		; 0E 00 1D
	ora ($34.b,X)		; 01 34
	tsb $3D.b		; 04 3D
	ora ($0F.b,X)		; 01 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	adc ($2C.b,X)		; 61 2C
	adc ($1A.b,X)		; 61 1A
	eor $18.b,S		; 43 18
	cmp $74.b,S		; C3 74
	dec $30.b		; C6 30
	stx $38.b		; 86 38
	sty $8C68.w		; 8C 68 8C
	and $001E21.l,X		; 3F 21 1E 00
	bit $7E00.w,X		; 3C 00 7E
	.db $42, $38		; 42 38
	brk $7C.b		; 00 7C
	tsb $F0.b		; 04 F0
	bra -16.b		; 80 F0
	bra  80.b		; 80 50
	phx		; DA
	asl A		; 0A
	cmp $5DA617.l,X		; DF 17 A6 5D
	sbc $0F.b,S		; E3 0F
	bvs  38.b		; 70 26
	bvs  11.b		; 70 0B
	and $1C21.w,Y		; 39 21 1C
	and $25.b		; 25 25
	rts		; 60

	rts		; 60

	lsr $1D44.w,X		; 5E 44 1D
	cop $1F.b		; 02 1F
	bpl  15.b		; 10 0F
	brk $06.b		; 00 06
	brk $0B.b		; 00 0B
	php		; 08
	sty $FE.b		; 84 FE
	rts		; 60

	inc $1C30.w,X		; FE 30 1C
	bcs  40.b		; B0 28
	ldy #$E030.w		; A0 30 E0
	bmi   0.b		; 30 00
	cpx #$4000.w		; E0 00 40
	jsr $1420.w		; 20 20 14
	trb $D0.b		; 14 D0
	brk $E0.b		; 00 E0
	bpl -64.b		; 10 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	cpy #$0080.w		; C0 80 00
	trb $3C.b		; 14 3C
	cop $EE.b		; 02 EE
	cpy #$00E3.w		; C0 E3 00
	eor ($00.b,X)		; 41 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	rti		; 40

	stp		; DB
	iny		; C8
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	bra  68.b		; 80 44
	ror $20.b		; 66 20
	rol $80.b		; 26 80
	stx $28.b		; 86 28
	cpx $7C10.w		; EC 10 7C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clv		; B8
	jsr $04DC.w		; 20 DC 04
	jmp ($5004.w,X)		; 7C 04 50
	rti		; 40

	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror A		; 6A
	adc $0EFF9B.l,X		; 7F 9B FF 0E
	wai		; CB
	ora $87.b,S		; 03 87
	ora $05.b,S		; 03 05
	brk $83.b		; 00 83
	inc $B881.w		; EE 81 B8
	and [$AA.b]		; 27 AA
	asl $5A.b,X		; 16 5A
	eor [$88.b]		; 47 88
	stx $06.b		; 86 06
	ora ($05.b,X)		; 01 05
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $27.b		; 00 27
	rti		; 40

	tsb $2033.w		; 0C 33 20
	sbc $9E88.w		; ED 88 9E
	trb $BBBF.w		; 1C BF BB
	sbc $7EFFFE.l,X		; FF FE FF 7E
	sbc $C0FF7F.l,X		; FF 7F FF C0
	cpy #$1313.w		; C0 13 13
	adc ($6D.b,X)		; 61 6D
	jmp $B352.w		; 4C 52 B3
	tsb $FF7C.w		; 0C 7C FF
	rol $3EFF.w,X		; 3E FF 3E
	sbc $2E162B.l,X		; FF 2B 16 2E
	ora $37.b,X		; 15 37
	ora $0D1F.w		; 0D 1F 0D
	trb $0602.w		; 1C 02 06
	asl A		; 0A
	ora [$08.b]		; 07 08
	ora ($0F.b,X)		; 01 0F
	asl $00.b,X		; 16 00
	ora $00.b,X		; 15 00
	ora $0D00.w		; 0D 00 0D
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	brk $06.b		; 00 06
	asl $F3.b		; 06 F3
	cmp ($F3.b)		; D2 F3
	cmp ($23.b)		; D2 23
	.db $42, $23		; 42 23
	.db $42, $E3		; 42 E3
	ldx #$A263.w		; A2 63 A2
	eor $82.b,S		; 43 82
	cmp $02.b,S		; C3 02
	cmp ($0C.b)		; D2 0C
	cmp ($0C.b)		; D2 0C
	.db $42, $9C		; 42 9C
	.db $42, $9C		; 42 9C
	ldx #$A21C.w		; A2 1C A2
	trb $3C82.w		; 1C 82 3C
	cop $3C.b		; 02 3C
	asl $06.b		; 06 06
	ora $7F7F0F.l		; 0F 0F 7F 7F
	adc $3E3579.l,X		; 7F 79 35 3E
	asl $070F.w		; 0E 0F 07
	ora [$02.b]		; 07 02
	ora $06.b,S		; 03 06
	brk $0F.b		; 00 0F
	tsb $7B.b		; 04 7B
	ora $70.b		; 05 70
	and $0C0F30.l,X		; 3F 30 0F 0C
	ora $04.b,S		; 03 04
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	cpx #$60E0.w		; E0 E0 60
	cpx #$4060.w		; E0 60 40
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$00C0.w		; C0 C0 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	cpy #$C020.w		; C0 20 C0
	rti		; 40

	bra  64.b		; 80 40
	bra -64.b		; 80 C0
	bra  66.b		; 80 42
	cmp $42.b,S		; C3 42
	cmp $02.b,S		; C3 02
	cmp $02.b,S		; C3 02
	cmp $22.b,S		; C3 22
	adc $22.b,S		; 63 22
	adc $00.b,S		; 63 00
	adc ($00.b,X)		; 61 00
	adc ($3C.b,X)		; 61 3C
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	rti		; 40

	jmp ($1C40.w,X)		; 7C 40 1C
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	jsr $203E.w		; 20 3E 20
	rti		; 40

	rti		; 40

	cpx #$A080.w		; E0 80 A0
	cpy #$C0F0.w		; C0 F0 C0
	inx		; E8
	bcc -12.b		; 90 F4
	tay		; A8
	pea $FA28.w		; F4 28 FA
	pei ($40.b)		; D4 40
	bra -128.b		; 80 80
	rti		; 40

	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bpl -128.b		; 10 80
	tay		; A8
	bra  40.b		; 80 28
	brk $D4.b		; 00 D4
	brk $B9.b		; 00 B9
	stx $BD.b,Y		; 96 BD
	txs		; 9A
	ldx $9EA8.w,Y		; BE A8 9E
	sty $909C.w		; 8C 9C 90
	tya		; 98
	sty $90.b,X		; 94 90
	sty $1CE0.w		; 8C E0 1C
	stx $40.b,Y		; 96 40
	txs		; 9A
	rti		; 40

	tay		; A8
	rti		; 40

	sty $9060.w		; 8C 60 90
	rts		; 60

	bcc  96.b		; 90 60
	dey		; 88
	pla		; 68
	clc		; 18
	clc		; 18
	ora $0F.b,S		; 03 0F
	asl $0E.b		; 06 0E
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	ora $0C.b		; 05 0C
	ora $0C.b		; 05 0C
	ora $0C.b		; 05 0C
	tsb $04.b		; 04 04
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc $7F7180.l,X		; FF 80 71 7F
	asl A		; 0A
	asl $0EC2.w		; 0E C2 0E
	cpx #$F00E.w		; E0 0E F0
	asl $1BF1.w,X		; 1E F1 1B
	cmp ($1B.b,X)		; C1 1B
	brk $00.b		; 00 00
	txa		; 8A
	asl A		; 0A
	sbc ($00.b),Y		; F1 00
	sbc $F308.w,Y		; F9 08 F3
	cop $E3.b		; 02 E3
	cop $E0.b		; 02 E0
	brk $F0.b		; 00 F0
	bpl -16.b		; 10 F0
	jsr ($1C10.w,X)		; FC 10 1C
	php		; 08
	tsb $0C08.w		; 0C 08 0C
	php		; 08
	tsb $0C08.w		; 0C 08 0C
	php		; 08
	tsb $0C08.w		; 0C 08 0C
	php		; 08
	php		; 08
	inx		; E8
	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	brk $26.b		; 00 26
	adc ($04.b)		; 72 04
	lsr $5D30.w,X		; 5E 30 5D
	rol $385F.w,X		; 3E 5F 38
	tda		; 7B
	cop $3F.b		; 02 3F
	clc		; 18
	and $1C06.w,Y		; 39 06 1C
	tsb $0C.b		; 04 0C
	tsb $30.b		; 04 30
	brk $3E.b		; 00 3E
	brk $38.b		; 00 38
	brk $02.b		; 00 02
	tsb $18.b		; 04 18
	brk $06.b		; 00 06
	brk $3F.b		; 00 3F
	clc		; 18
	and $1705.w,X		; 3D 05 17
	php		; 08
	ora ($0F.b,S),Y		; 13 0F
	trb $0B03.w		; 1C 03 0B
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $05.b		; 00 05
	cop $08.b		; 02 08
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -96.b		; 80 A0
	brk $B0.b		; 00 B0
	cpy #$30D8.w		; C0 D8 30
	jmp ($0000.w,X)		; 7C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rti		; 40

	cpy #$3000.w		; C0 00 30
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	and ($0C.b,X)		; 21 0C
	and ($06.b,X)		; 21 06
	adc $20.b,S		; 63 20
	adc $10.b,S		; 63 10
.INDEX 16
	rep #$5C		; C2 5C
	dec $38.b		; C6 38
	stx $B0.b		; 86 B0
	sty $1E.b		; 84 1E
	brk $1E.b		; 00 1E
	brk $3C.b		; 00 3C
	jsr $021E.w		; 20 1E 02
	jmp ($3840.w,X)		; 7C 40 38
	brk $FC.b		; 00 FC
	sty $78.b		; 84 78
	brk $6A.b		; 00 6A
	tsb $46.b		; 04 46
	brk $76.b		; 00 76
	bit $6E.b		; 24 6E
	bpl -36.b		; 10 DC
	pha		; 48
	cpy $BC08.w		; CC 08 BC
	rti		; 40

	pea $0478.w		; F4 78 04
	bpl   0.b		; 10 00
	sec		; 38
	bit $08.b		; 24 08
	bpl   0.b		; 10 00
	pha		; 48
	jsr $3008.w		; 20 08 30
	rti		; 40

	brk $78.b		; 00 78
	brk $1C.b		; 00 1C
	and ($18.b,S),Y		; 33 18
	and ($08.b)		; 32 08
	jsl $56260C.l		; 22 0C 26 56
	bmi 122.b		; 30 7A
	tsb $BA.b		; 04 BA
	jmp ($5CBA.w,X)		; 7C BA 5C
	asl $0C02.w		; 0E 02 0C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $7C.b		; 00 7C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	cmp ($5E.b,X)		; C1 5E
	cmp $5E.b,S		; C3 5E
	cmp $58.b,S		; C3 58
	cmp $58.b,S		; C3 58
.INDEX 16
	rep #$5C		; C2 5C
	dec $7C.b		; C6 7C
	dec $78.b		; C6 78
	dec $3E.b		; C6 3E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	cop $3C.b		; 02 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $DD.b		; 04 DD
	and #$77FD.w		; 29 FD 77
	sta $64D76F.l,X		; 9F 6F D7 64
	eor [$E5.b],Y		; 57 E5
	cmp [$E5.b],Y		; D7 E5
	lda [$D5.b],Y		; B7 D5
	lda [$D5.b],Y		; B7 D5
	ora ($7E.b,X)		; 01 7E
	adc ($0E.b),Y		; 71 0E
	ror $6401.w		; 6E 01 64
	php		; 08
	sbc $08.b		; E5 08
	sbc $08.b		; E5 08
	cmp $08.b,X		; D5 08
	cmp $08.b,X		; D5 08
	sed		; F8
	bne -24.b		; D0 E8
	beq -24.b		; F0 E8
	beq -12.b		; F0 F4
	inx		; E8
	pea $D448.w		; F4 48 D4
	tay		; A8
	lsr A		; 4A
	bit $5A.b,X		; 34 5A
	bit $D0.b,X		; 34 D0
	cpx #$D020.w		; E0 20 D0
	cpy #$C830.w		; C0 30 C8
	ldy #$4048.w		; A0 48 40
	tay		; A8
	brk $34.b		; 00 34
	bra  52.b		; 80 34
	bra  16.b		; 80 10
	bvs  19.b		; 70 13
	bmi  11.b		; 30 0B
	sec		; 38
	phd		; 0B
	sec		; 38
	ora [$1C.b]		; 07 1C
	ora $1C.b		; 05 1C
	ora ($1C.b,X)		; 01 1C
	cop $1E.b		; 02 1E
	and $000F20.l		; 2F 20 0F 00
	ora [$10.b],Y		; 17 10
	ora [$00.b]		; 07 00
	phd		; 0B
	php		; 08
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora #$4008.w		; 09 08 40
	sei		; 78
	ldy #$C030.w		; A0 30 C0
	bpl -32.b		; 10 E0
	bpl -32.b		; 10 E0
	clc		; 18
	beq  24.b		; F0 18
	cpx #$F008.w		; E0 08 F0
	tsb $20A0.w		; 0C A0 20
	cpy #$E000.w		; C0 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	ora $03.b,S		; 03 03
	ora $07.b		; 05 07
	ora $0A0D.w		; 0D 0D 0A
	asl $1E06.w		; 0E 06 1E
	ora $17.b		; 05 17
	asl $37.b,X		; 16 37
	phd		; 0B
	adc $03.b,S		; 63 03
	brk $04.b		; 00 04
	ora $09.b,S		; 03 09
	ora [$0A.b]		; 07 0A
	ora [$0C.b]		; 07 0C
	phd		; 0B
	tsb $0A03.w		; 0C 03 0A
	ora ($3D.b,X)		; 01 3D
	jsr $1B9F.w		; 20 9F 1B
	wai		; CB
	sta $D5F7.w		; 8D F7 D5
	sbc ($C1.b,S),Y		; F3 C1
	eor $FE.b,S		; 43 FE
	cmp ($F2.b,X)		; C1 F2
	ldy $E9F0.w		; AC F0 E9
	sbc ($19.b)		; F2 19
	rts		; 60

	sty $5430.w		; 8C 30 54
	dey		; 88
	rti		; 40

	ldy $A042.w		; AC 42 A0
	cpy $8F2C.w		; CC 2C 8F
	adc $E46EAE.l		; 6F AE 6E E4
	tsx		; BA
	inc $BB.b,X		; F6 BB
	adc $3B.b,X		; 75 3B
	ror A		; 6A
	and [$60.b],Y		; 37 60
	and $C8A6D8.l,X		; 3F D8 A6 C8
	asl $21.b		; 06 21
	eor [$BA.b],Y		; 57 BA
	brk $39.b		; 00 39
	cop $BA.b		; 02 BA
	ora ($B7.b,X)		; 01 B7
	cop $A3.b		; 02 A3
	ora ($1B.b,X)		; 01 1B
	clc		; 18
	tsa		; 3B
	dec A		; 3A
	inc A		; 1A
	phx		; DA
	jmp $D24CEE.l		; 5C EE 4C D2
	jmp $F428EE.l		; 5C EE 28 F4
	bcc  -4.b		; 90 FC
	clc		; 18
	jmp ($7A5C.w,X)		; 7C 5C 7A
	clc		; 18
	rol $5CE6.w,X		; 3E E6 5C
.ACCU 16
.INDEX 16
	rep #$7C		; C2 7C
	stx $7C.b		; 86 7C
	cpy $38.b		; C4 38
	mvn $BC,$38		; 54 38 BC
	clc		; 18
	tsx		; BA
	trb $1CEA.w		; 1C EA 1C
	brk $0D.b		; 00 0D
	ora ($0A.b,X)		; 01 0A
	ora $0E.b		; 05 0E
	brk $05.b		; 00 05
	cop $07.b		; 02 07
	brk $03.b		; 00 03
	asl $3D01.w		; 0E 01 3D
	asl $0606.w		; 0E 06 06
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $2800.w		; 0E 00 28
	sbc $F41BBF.l,X		; FF BF 1B F4
	ora $017C.w		; 0D 7C 01
	bit $9081.w,X		; 3C 81 90
	dec $E490.w		; CE 90 E4
	inc $F8.b		; E6 F8
	ora ($01.b,X)		; 01 01
	sed		; F8
	bpl -10.b		; 10 F6
	php		; 08
	inc $FE00.w,X		; FE 00 FE
	bra 124.b		; 80 7C
	jmp $4058.w		; 4C 58 40
	cpy #$0000.w		; C0 00 00
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	tsb $1F.b		; 04 1F
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora $311104.l,X		; 1F 04 11 31
	ora ($31.b,X)		; 01 31
	brk $31.b		; 00 31
	ora ($73.b)		; 12 73
	bit $E7.b		; 24 E7
	mvp $08,$C6		; 44 C6 08
	stx $8C88.w		; 8E 88 8C
	asl $1E00.w		; 0E 00 1E
	bpl  31.b		; 10 1F
	ora ($2C.b),Y		; 11 2C
	jsr $425A.w		; 20 5A 42
	sec		; 38
	brk $F4.b		; 00 F4
	sty $70.b		; 84 70
	brk $18.b		; 00 18
	rep #$00		; C2 00
	rep #$00		; C2 00
	cmp $18.b,S		; C3 18
	cmp $1A.b,S		; C3 1A
	cmp $1E.b,S		; C3 1E
	eor $1C.b,S		; 43 1C
	eor ($3C.b,X)		; 41 3C
	adc ($7C.b,X)		; 61 7C
	rti		; 40

	jmp ($3E40.w,X)		; 7C 40 3E
	cop $3E.b		; 02 3E
	cop $3C.b		; 02 3C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $0A.b		; 00 0A
	tas		; 1B
	brk $13.b		; 00 13
	bvs   2.b		; 70 02
	jmp $1C7A32.l		; 5C 32 7A 1C
	dec $E640.w,X		; DE 40 E6
	bit $BC.b		; 24 BC
	bra   4.b		; 80 04
	brk $0E.b		; 00 0E
	cop $0C.b		; 02 0C
	brk $30.b		; 00 30
	brk $1C.b		; 00 1C
	brk $40.b		; 00 40
	jsr $1824.w		; 20 24 18
	bra  64.b		; 80 40
	clc		; 18
	cmp $1C.b,S		; C3 1C
	eor $3E.b,S		; 43 3E
	adc $0E.b,S		; 63 0E
	adc $0C.b,S		; 63 0C
	and ($1C.b,X)		; 21 1C
	and ($0C.b),Y		; 31 0C
	and ($06.b),Y		; 31 06
	ora ($7E.b),Y		; 11 7E
	.db $42, $3E		; 42 3E
	cop $1C.b		; 02 1C
	brk $3C.b		; 00 3C
	jsr $001E.w		; 20 1E 00
	asl $1E00.w		; 0E 00 1E
	bpl  14.b		; 10 0E
	brk $D0.b		; 00 D0
	cpx #$70E8.w		; E0 E8 70
	clv		; B8
	rti		; 40

	jmp ($3620.w)		; 6C 20 36
	tsb $000F.w		; 0C 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$7000.w		; E0 00 70
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	bpl  12.b		; 10 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A7.b		; 00 A7
	cmp $A7.b		; C5 A7
	cmp $E7.b		; C5 E7
	lda $E7.b		; A5 E7
	and $47.b		; 25 47
	sta $3F.b		; 85 3F
	cmp ($0F.b,X)		; C1 0F
	jmp ($7B1B.w,X)		; 7C 1B 7B
	cmp $18.b		; C5 18
	cmp $18.b		; C5 18
	lda $18.b		; A5 18
	and $18.b		; 25 18
	ora $38.b		; 05 38
	eor ($40.b,X)		; 41 40
	bmi  48.b		; 30 30
	bit $20.b		; 24 20
	ply		; 7A
	mvn $18,$36		; 54 36 18
	rol $3E18.w		; 2E 18 3E
	plp		; 28
	trb $1C08.w		; 1C 08 1C
	brk $F0.b		; 00 F0
	php		; 08
	bra  -8.b		; 80 F8
	mvn $18,$80		; 54 80 18
	cpy #$C018.w		; C0 18 C0
	plp		; 28
	cpy #$E008.w		; C0 08 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	php		; 08
	asl $1F09.w,X		; 1E 09 1F
	tsb $0C1F.w		; 0C 1F 0C
	ora $0A1B0A.l,X		; 1F 0A 1B 0A
	tas		; 1B
	ora #$0819.w		; 09 19 08
	clc		; 18
	ora $02.b,S		; 03 02
	tsb $04.b		; 04 04
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	tsb $00.b		; 04 00
	ora $01.b		; 05 01
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	sed		; F8
	tsb $0470.w		; 0C 70 04
	sei		; 78
	tsb $B8.b		; 04 B8
	stx $3C.b		; 86 3C
	stx $58.b		; 86 58
.INDEX 16
	rep #$1C		; C2 1C
	cmp $3E.b,S		; C3 3E
	sbc $F0.b,S		; E3 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	tsb $F8.b		; 04 F8
	bra  60.b		; 80 3C
	brk $7E.b		; 00 7E
	.db $42, $9C		; 42 9C
	bra  52.b		; 80 34
	adc [$59.b]		; 67 59
	dec $8E23.w		; CE 23 8E
	cmp ($9E.b,S),Y		; D3 9E
	ora $09DB30.l		; 0F 30 DB 09
	adc [$03.b],Y		; 77 03
	eor $C3.b,X		; 55 C3
	inc A		; 1A
	cop $34.b		; 02 34
	ora $7A.b		; 05 7A
	ora #$0166.w		; 09 66 01
	cpx #$E921.w		; E0 21 E9
	tsb $E0.b		; 04 E0
	phd		; 0B
	jsr $E90B.w		; 20 0B E9
	beq -96.b		; F0 A0
	sbc [$F4.b],Y		; F7 F4
	jmp ($F340.w,X)		; 7C 40 F3
	tda		; 7B
	sbc $6FBFFF.l,X		; FF FF BF 6F
	cmp $6E7FF6.l		; CF F6 7F 6E
	inc $6888.w		; EE 88 68
	adc ($83.b,S),Y		; 73 83
	tsb $7FEC.w		; 0C EC 7F
	sta $B6.b,S		; 83 B6
	tda		; 7B
	lsr $66F3.w		; 4E F3 66
	xce		; FB
	tay		; A8
	sta [$C0.b]		; 87 C0
	and $30.b,X		; 35 30
	sed		; F8
	rti		; 40

	inx		; E8
	rti		; 40

	sed		; F8
	cpy #$8040.w		; C0 40 80
	bra -128.b		; 80 80
	bra -103.b		; 80 99
	eor $0808.w,Y		; 59 08 08
	brk $00.b		; 00 00
	bvc -112.b		; 50 90
	rti		; 40

	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $B9.b		; 00 B9
	stz $C07F.w,X		; 9E 7F C0
	and $1EDE.w		; 2D DE 1E
	adc ($02.b,X)		; 61 02
	and ($08.b,S),Y		; 33 08
	ora $0F04.w,Y		; 19 04 0F
	brk $06.b		; 00 06
	.db $42, $1C		; 42 1C
	bra -128.b		; 80 80
	lsr $2040.w,X		; 5E 40 20
	jsr $000C.w		; 20 0C 00
	asl $00.b		; 06 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	inc A		; 1A
	and ($01.b,S),Y		; 33 01
	rol $1B.b		; 26 1B
	eor ($2E.b,X)		; 41 2E
	rts		; 60

	asl A		; 0A
	sec		; 38
	ora $0D.b,S		; 03 0D
	phd		; 0B
	tsb $12.b		; 04 12
	ora $000C.w		; 0D 0C 00
	trb $3D04.w		; 1C 04 3D
	brk $1C.b		; 00 1C
	ora ($04.b,X)		; 01 04
	ora ($01.b,X)		; 01 01
	brk $04.b		; 00 04
	brk $0D.b		; 00 0D
	brk $14.b		; 00 14
	phd		; 0B
	ora $0502.w,X		; 1D 02 05
	cop $09.b		; 02 09
	asl $0A.b		; 06 0A
	ora $07.b		; 05 07
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	brk $0B.b		; 00 0B
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $05.b		; 00 05
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	and ($10.b),Y		; 31 10
	and ($02.b),Y		; 31 02
	and $00.b,S		; 23 00
	and $04.b,S		; 23 04
	ror $20.b		; 66 20
	ror $08.b		; 66 08
	jmp $CC00.w		; 4C 00 CC
	asl $0F10.w,X		; 1E 10 0F
	ora ($1C.b,X)		; 01 1C
	brk $1E.b		; 00 1E
	cop $38.b		; 02 38
	jsr $041C.w		; 20 1C 04
	bmi   0.b		; 30 00
	sei		; 78
	pha		; 48
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	php		; 08
	clc		; 18
	ora ($30.b),Y		; 11 30
	ora [$7C.b]		; 07 7C
	asl $40.b		; 06 40
	jsr $44A1.w		; 20 A1 44
	inc $00.b		; E6 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F0B0B.l		; 0F 0B 0B 3F
	and $395F5F.l,X		; 3F 5F 5F 39
	and $0000.w,Y		; 39 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	rts		; 60

	brk $18.b		; 00 18
	clv		; B8
	asl $0714.w		; 0E 14 07
	jsl $BF2243.l		; 22 43 22 BF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$F0E0.w		; E0 E0 F0
	beq  -6.b		; F0 FA
	plx		; FA
	jsr ($40FC.w,X)		; FC FC 40
	rti		; 40

	bmi -120.b		; 30 88
	bvs -52.b		; 70 CC
	bpl -52.b		; 10 CC
	clc		; 18
	jmp $4C18.w		; 4C 18 4C
	bmi 100.b		; 30 64
	brk $64.b		; 00 64
	inc $7000.w,X		; FE 00 70
	brk $38.b		; 00 38
	php		; 08
	sei		; 78
	pha		; 48
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	clc		; 18
	brk $38.b		; 00 38
	jsr $0000.w		; 20 00 00
	tsx		; BA
	jmp ($7CBA.w,X)		; 7C BA 7C
	ldx $7A70.w,Y		; BE 70 7A
	php		; 08
	adc [$20.b]		; 67 20
	adc $6706.w,Y		; 79 06 67
	jsr $0A7B.w		; 20 7B 0A
	jmp ($7C00.w,X)		; 7C 00 7C
	brk $70.b		; 00 70
	brk $08.b		; 00 08
	tsb $20.b		; 04 20
	clc		; 18
	asl $00.b		; 06 00
	jsr $0A18.w		; 20 18 0A
	tsb $5F.b		; 04 5F
	bmi  94.b		; 30 5E
	and $371F2F.l,X		; 3F 2F 1F 37
	asl $042A.w		; 0E 2A 04
	and [$01.b]		; 27 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	and $001F00.l,X		; 3F 00 1F 00
	asl $0400.w		; 0E 00 04
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra  96.b		; 80 60
	brk $D0.b		; 00 D0
	rti		; 40

	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	adc $127520.l		; 6F 20 75 12
	tad		; 5B
	plp		; 28
	dec $DE34.w,X		; DE 34 DE
	sec		; 38
	plx		; FA
	trb $1CBA.w		; 1C BA 1C
	ora $200E.w,X		; 1D 0E 20
	bpl  18.b		; 10 12
	php		; 08
	plp		; 28
	tsb $34.b		; 04 34
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $11.b		; 00 11
	and ($02.b),Y		; 31 02
	adc $22.b,S		; 63 22
	adc $00.b,S		; 63 00
	cmp $44.b,S		; C3 44
	dec $00.b		; C6 00
	stx $08.b		; 86 08
	sty $8C80.w		; 8C 80 8C
	asl $3D00.w		; 0E 00 3D
	and ($1C.b,X)		; 21 1C
	brk $7E.b		; 00 7E
	.db $42, $38		; 42 38
	brk $7C.b		; 00 7C
	tsb $F0.b		; 04 F0
	bra 120.b		; 80 78
	php		; 08
	cmp $FD29.w,X		; DD 29 FD
	adc [$9F.b],Y		; 77 9F
	adc $D764D7.l		; 6F D7 64 D7
	adc $57.b		; 65 57
	sbc $B7.b		; E5 B7
	cmp $B7.b,X		; D5 B7
	cmp $01.b,X		; D5 01
	ror $0E71.w,X		; 7E 71 0E
	ror $6401.w		; 6E 01 64
	php		; 08
	adc $08.b		; 65 08
	sbc $08.b		; E5 08
	cmp $08.b,X		; D5 08
	cmp $08.b,X		; D5 08
	sed		; F8
	bne -24.b		; D0 E8
	beq -20.b		; F0 EC
	beq  -4.b		; F0 FC
	cpx #$48F4.w		; E0 F4 48
	dec $A8.b,X		; D6 A8
	lsr $28.b,X		; 56 28
	eor ($2C.b)		; 52 2C
	bne -32.b		; D0 E0
	jsr $C0D0.w		; 20 D0 C0
	bmi -64.b		; 30 C0
	ldy #$4048.w		; A0 48 40
	tay		; A8
	brk $28.b		; 00 28
	bra  44.b		; 80 2C
	bra  76.b		; 80 4C
	cpy #$C05E.w		; C0 5E C0
	lsr $1EC0.w,X		; 5E C0 1E
	cpy #$C01E.w		; C0 1E C0
	ora $603F40.l,X		; 1F 40 3F 60
	and $003F60.l		; 2F 60 3F 00
	and $003F00.l,X		; 3F 00 3F 00
	adc $407F40.l,X		; 7F 40 7F 40
	and $001F00.l,X		; 3F 00 1F 00
	ora $FC9000.l,X		; 1F 00 90 FC
	bcs  -4.b		; B0 FC
	bcs  -4.b		; B0 FC
	tay		; A8
	cpx $ECA8.w		; EC A8 EC
	tay		; A8
	cpx $ECA8.w		; EC A8 EC
	dey		; 88
	cpy $2828.w		; CC 28 28
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bmi   0.b		; 30 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	cop $07.b		; 02 07
	ora ($0D.b,X)		; 01 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	asl $04.b		; 06 04
	bit $BC87.w,X		; 3C 87 BC
	sta [$FC.b]		; 87 FC
	stx $F8.b		; 86 F8
	stx $78.b		; 86 78
	stx $70.b		; 86 70
	stx $70.b		; 86 70
	sty $30.b		; 84 30
	sty $F8.b		; 84 F8
	bra 120.b		; 80 78
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	tsb $FC.b		; 04 FC
	sty $FC.b		; 84 FC
	sty $78.b		; 84 78
	brk $78.b		; 00 78
	brk $03.b		; 00 03
	ora $05.b,S		; 03 05
	ora [$0D.b]		; 07 0D
	ora $0E0A.w		; 0D 0A 0E
	asl $1E.b		; 06 1E
	ora $17.b		; 05 17
	asl $37.b,X		; 16 37
	phd		; 0B
	adc $03.b,S		; 63 03
	brk $04.b		; 00 04
	ora $09.b,S		; 03 09
	ora [$0A.b]		; 07 0A
	ora [$0C.b]		; 07 0C
	phd		; 0B
	tsb $0A03.w		; 0C 03 0A
	ora ($3D.b,X)		; 01 3D
	jsr $1B9F.w		; 20 9F 1B
	wai		; CB
	sta $D5F7.w		; 8D F7 D5
	sbc ($C1.b,S),Y		; F3 C1
	eor $FE.b,S		; 43 FE
	cmp ($F2.b,X)		; C1 F2
	ldy $E9F0.w		; AC F0 E9
	sbc ($19.b)		; F2 19
	rts		; 60

	sty $5430.w		; 8C 30 54
	dey		; 88
	rti		; 40

	ldy $A042.w		; AC 42 A0
	cpy $8F2C.w		; CC 2C 8F
	adc $E46EAE.l		; 6F AE 6E E4
	tsx		; BA
	inc $BB.b,X		; F6 BB
	adc $3B.b,X		; 75 3B
	ror A		; 6A
	and [$60.b],Y		; 37 60
	and $C8A6D8.l,X		; 3F D8 A6 C8
	asl $21.b		; 06 21
	eor [$BA.b],Y		; 57 BA
	brk $39.b		; 00 39
	cop $BA.b		; 02 BA
	ora ($B7.b,X)		; 01 B7
	cop $A3.b		; 02 A3
	ora ($1B.b,X)		; 01 1B
	clc		; 18
	tsa		; 3B
	dec A		; 3A
	inc A		; 1A
	phx		; DA
	jmp $D24CEE.l		; 5C EE 4C D2
	jmp $F428EE.l		; 5C EE 28 F4
	bcc  -4.b		; 90 FC
	clc		; 18
	jmp ($7A5C.w,X)		; 7C 5C 7A
	clc		; 18
	rol $5CE6.w,X		; 3E E6 5C
.ACCU 16
.INDEX 16
	rep #$7C		; C2 7C
	stx $7C.b		; 86 7C
	cpy $38.b		; C4 38
	mvn $BC,$38		; 54 38 BC
	clc		; 18
	tsx		; BA
	trb $1CEA.w		; 1C EA 1C
	ora ($0D.b)		; 12 0D
	trb $0503.w		; 1C 03 05
	cop $09.b		; 02 09
	asl $09.b		; 06 09
	asl $06.b		; 06 06
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	brk $0D.b		; 00 0D
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	brk $01.b		; 00 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	brk $BA.b		; 00 BA
	jmp ($7CBA.w,X)		; 7C BA 7C
	ldx $7A70.w,Y		; BE 70 7A
	php		; 08
	adc [$20.b]		; 67 20
	adc $6706.w,Y		; 79 06 67
	jsr $0000.w		; 20 00 00
	jmp ($7C00.w,X)		; 7C 00 7C
	brk $70.b		; 00 70
	brk $08.b		; 00 08
	tsb $20.b		; 04 20
	clc		; 18
	asl $00.b		; 06 00
	jsr $7B18.w		; 20 18 7B
	asl A		; 0A
	eor $3F5E30.l,X		; 5F 30 5E 3F
	and $0E371F.l		; 2F 1F 37 0E
	rol A		; 2A
	tsb $27.b		; 04 27
	ora ($01.b,X)		; 01 01
	brk $0A.b		; 00 0A
	tsb $30.b		; 04 30
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $0E.b		; 00 0E
	brk $04.b		; 00 04
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra  96.b		; 80 60
	brk $D0.b		; 00 D0
	rti		; 40

	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	jsr $0000.w		; 20 00 00
	ora $180F18.l		; 0F 18 0F 18
	ora $180818.l		; 0F 18 08 18
	brk $30.b		; 00 30
	ora ($71.b),Y		; 11 71
	plp		; 28
	adc ($1C.b,X)		; 61 1C
	cmp ($07.b,X)		; C1 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	bpl  46.b		; 10 2E
	jsr $011F.w		; 20 1F 01
	ror $A740.w,X		; 7E 40 A7
	cmp $A7.b		; C5 A7
	cmp $E7.b		; C5 E7
	lda $E7.b		; A5 E7
	and $C7.b		; 25 C7
	ora $3F.b		; 05 3F
	cmp ($7F.b,X)		; C1 7F
	jsr ($C141.w,X)		; FC 41 C1
	cmp $18.b		; C5 18
	cmp $18.b		; C5 18
	lda $18.b		; A5 18
	and $18.b		; 25 18
	ora $38.b		; 05 38
	eor ($40.b,X)		; 41 40
	brk $00.b		; 00 00
	rol $4F00.w,X		; 3E 00 4F
	bit $59.b,X		; 34 59
	rol $7B.b,X		; 36 7B
	lsr $36.b,X		; 56 36
	clc		; 18
	bit $3C18.w		; 2C 18 3C
	brk $E0.b		; 00 E0
	trb $FC00.w		; 1C 00 FC
	bit $80.b,X		; 34 80
	rol $80.b,X		; 36 80
	lsr $80.b,X		; 56 80
	clc		; 18
	cpy #$C018.w		; C0 18 C0
	brk $C0.b		; 00 C0
	clc		; 18
	clc		; 18
	clv		; B8
	clv		; B8
	ora $600F60.l		; 0F 60 0F 60
	ora $301F20.l		; 0F 20 1F 30
	ora $300730.l,X		; 1F 30 07 30
	ora [$10.b]		; 07 10
	ora [$10.b]		; 07 10
	and $203F20.l,X		; 3F 20 3F 20
	ora $000F00.l,X		; 1F 00 0F 00
	ora $101F00.l		; 0F 00 1F 10
	ora $000F00.l		; 0F 00 0F 00
	dey		; 88
	cpy $CC88.w		; CC 88 CC
	dey		; 88
	cpy $CC88.w		; CC 88 CC
	dey		; 88
	cpy $CC88.w		; CC 88 CC
	php		; 08
	cpy $CC08.w		; CC 08 CC
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bcs -128.b		; B0 80
	bcs -128.b		; B0 80
	ora $0D.b		; 05 0D
	bmi   9.b		; 30 09
	phy		; 5A
	and ($FC.b,S),Y		; 33 FC
	tad		; 5B
	plx		; FA
	jmp ($A4EA.w)		; 6C EA A4
	pea $F890.w		; F4 90 F8
	cpy #$0002.w		; C0 02 00
	ora $003409.l		; 0F 09 34 00
	phy		; 5A
	cop $6C.b		; 02 6C
	brk $A4.b		; 00 A4
	bpl -112.b		; 10 90
	php		; 08
	cpy #$3000.w		; C0 00 30
	sty $70.b		; 84 70
	cpy $50.b		; C4 50
	cpy $10.b		; C4 10
	cpy $18.b		; C4 18
	jmp $4C18.w		; 4C 18 4C
	clc		; 18
	jmp $6C28.w		; 4C 28 6C
	sei		; 78
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	rti		; 40

	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	bit $67.b,X		; 34 67
	eor $23CE.w,Y		; 59 CE 23
	stx $9ED3.w		; 8E D3 9E
	ora $09DB30.l		; 0F 30 DB 09
	adc [$03.b],Y		; 77 03
	eor $C3.b,X		; 55 C3
	inc A		; 1A
	cop $34.b		; 02 34
	ora $7A.b		; 05 7A
	ora #$0166.w		; 09 66 01
	cpx #$E921.w		; E0 21 E9
	tsb $E0.b		; 04 E0
	phd		; 0B
	jsr $E90B.w		; 20 0B E9
	beq -96.b		; F0 A0
	sbc [$F4.b],Y		; F7 F4
	jmp ($F340.w,X)		; 7C 40 F3
	tda		; 7B
	sbc $6FBFFF.l,X		; FF FF BF 6F
	cmp $6E7FF6.l		; CF F6 7F 6E
	inc $6888.w		; EE 88 68
	adc ($83.b,S),Y		; 73 83
	tsb $7FEC.w		; 0C EC 7F
	sta $B6.b,S		; 83 B6
	tda		; 7B
	lsr $66F3.w		; 4E F3 66
	xce		; FB
	tay		; A8
	sta [$C0.b]		; 87 C0
	and $30.b,X		; 35 30
	sed		; F8
	rti		; 40

	inx		; E8
	rti		; 40

	sed		; F8
	cpy #$8040.w		; C0 40 80
	bra -128.b		; 80 80
	bra -103.b		; 80 99
	eor $0808.w,Y		; 59 08 08
	brk $00.b		; 00 00
	bvc -112.b		; 50 90
	rti		; 40

	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $B9.b		; 00 B9
	stz $C07F.w,X		; 9E 7F C0
	and $1EDE.w		; 2D DE 1E
	adc ($02.b,X)		; 61 02
	and ($08.b,S),Y		; 33 08
	ora $0F04.w,Y		; 19 04 0F
	brk $06.b		; 00 06
	.db $42, $1C		; 42 1C
	bra -128.b		; 80 80
	lsr $2040.w,X		; 5E 40 20
	jsr $000C.w		; 20 0C 00
	asl $00.b		; 06 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $1B.b		; 00 1B
	ora $14.b,S		; 03 14
	phd		; 0B
	trb $0A00.w		; 1C 00 0A
	tsb $0F.b		; 04 0F
	ora ($07.b,X)		; 01 07
	ora $7B03.w,X		; 1D 03 7B
	ora $0C0C.w,X		; 1D 0C 0C
	phd		; 0B
	php		; 08
	ora $00.b,S		; 03 00
	ora $04.b		; 05 04
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $5000.w,X		; 1D 00 50
	sbc $E8377E.l,X		; FF 7E 37 E8
	tas		; 1B
	sed		; F8
	cop $78.b		; 02 78
	cop $20.b		; 02 20
	stz $C820.w		; 9C 20 C8
	cpy $02F0.w		; CC F0 02
	cop $F0.b		; 02 F0
	jsr $10EC.w		; 20 EC 10
	jsr ($FC00.w,X)		; FC 00 FC
	brk $F8.b		; 00 F8
	tya		; 98
	bcs -128.b		; B0 80
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	php		; 08
	rol $8080.w,X		; 3E 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $3E00.w		; 0C 00 3E
	php		; 08
	pha		; 48
	cpy $8C00.w		; CC 00 8C
	bpl -104.b		; 10 98
	jsr $40B8.w		; 20 B8 40
	beq   0.b		; F0 00
	cpx #$C000.w		; E0 00 C0
	brk $C0.b		; 00 C0
	bmi   0.b		; 30 00
	sei		; 78
	php		; 08
	rts		; 60

	brk $50.b		; 00 50
	bpl  32.b		; 10 20
	jsr $4040.w		; 20 40 40
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	inc A		; 1A
	and ($01.b,S),Y		; 33 01
	rol $1B.b		; 26 1B
	eor ($2E.b,X)		; 41 2E
	rts		; 60

	asl A		; 0A
	sec		; 38
	ora $0D.b,S		; 03 0D
	ora #$1206.w		; 09 06 12
	ora $000C.w		; 0D 0C 00
	trb $3D04.w		; 1C 04 3D
	brk $1C.b		; 00 1C
	ora ($04.b,X)		; 01 04
	ora ($01.b,X)		; 01 01
	brk $06.b		; 00 06
	brk $0D.b		; 00 0D
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $111808.l		; 0F 08 18 11
	bmi   7.b		; 30 07
	jmp ($4006.w,X)		; 7C 06 40
	jsr $44A1.w		; 20 A1 44
	inc $00.b		; E6 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F0B0B.l		; 0F 0B 0B 3F
	and $395F5F.l,X		; 3F 5F 5F 39
	and $0000.w,Y		; 39 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	rts		; 60

	brk $18.b		; 00 18
	clv		; B8
	asl $0714.w		; 0E 14 07
	jsl $BF2243.l		; 22 43 22 BF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$F0E0.w		; E0 E0 F0
	beq  -6.b		; F0 FA
	plx		; FA
	jsr ($40FC.w,X)		; FC FC 40
	rti		; 40

	asl $3F0A.w,X		; 1E 0A 3F
	ora #$0C3F.w		; 09 3F 0C
	lsr A		; 4A
	and ($5D.b),Y		; 31 5D
	bit $EF.b,X		; 34 EF
	inc A		; 1A
	lda $1E2D1C.l		; AF 1C 2D 1E
	asl A		; 0A
	ora ($09.b,X)		; 01 09
	brk $0C.b		; 00 0C
	brk $31.b		; 00 31
	tsb $34.b		; 04 34
	cop $1A.b		; 02 1A
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $B4.b		; 00 B4
	sei		; 78
	jmp $107420.l		; 5C 20 74 10
	dec A		; 3A
	trb $1E.b		; 14 1E
	tsb $07.b		; 04 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	php		; 08
	trb $00.b		; 14 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx $BA.b		; E4 BA
	inc $BB.b,X		; F6 BB
	adc $3B.b,X		; 75 3B
	ror A		; 6A
	and [$60.b],Y		; 37 60
	and $C8A6D8.l,X		; 3F D8 A6 C8
	asl $21.b		; 06 21
	eor [$BA.b],Y		; 57 BA
	brk $39.b		; 00 39
	cop $BA.b		; 02 BA
	ora ($B7.b,X)		; 01 B7
	cop $A3.b		; 02 A3
	ora ($1B.b,X)		; 01 1B
	clc		; 18
	tsa		; 3B
	dec A		; 3A
	inc A		; 1A
	phx		; DA
	jmp $D24CEE.l		; 5C EE 4C D2
	jmp $F428EE.l		; 5C EE 28 F4
	bcc  -4.b		; 90 FC
	clc		; 18
	jmp ($7A5C.w,X)		; 7C 5C 7A
	clc		; 18
	rol $5CE6.w,X		; 3E E6 5C
.ACCU 16
.INDEX 16
	rep #$7C		; C2 7C
	stx $7C.b		; 86 7C
	cpy $38.b		; C4 38
	mvn $BC,$38		; 54 38 BC
	clc		; 18
	tsx		; BA
	trb $1CEA.w		; 1C EA 1C
	ora $03.b,S		; 03 03
	ora $07.b		; 05 07
	ora $0A0D.w		; 0D 0D 0A
	asl $1E06.w		; 0E 06 1E
	ora $17.b		; 05 17
	asl $37.b,X		; 16 37
	phd		; 0B
	adc $03.b,S		; 63 03
	brk $04.b		; 00 04
	ora $09.b,S		; 03 09
	ora [$0A.b]		; 07 0A
	ora [$0C.b]		; 07 0C
	phd		; 0B
	tsb $0A03.w		; 0C 03 0A
	ora ($3D.b,X)		; 01 3D
	jsr $1B9F.w		; 20 9F 1B
	wai		; CB
	sta $D5F7.w		; 8D F7 D5
	sbc ($C1.b,S),Y		; F3 C1
	eor $FE.b,S		; 43 FE
	cmp ($F2.b,X)		; C1 F2
	ldy $E9F0.w		; AC F0 E9
	sbc ($19.b)		; F2 19
	rts		; 60

	sty $5430.w		; 8C 30 54
	dey		; 88
	rti		; 40

	ldy $A042.w		; AC 42 A0
	cpy $8F2C.w		; CC 2C 8F
	adc $F06EAE.l		; 6F AE 6E F0
	asl $F9.b		; 06 F9
	ora $F90FF9.l		; 0F F9 0F F9
	ora $F00FF8.l		; 0F F8 0F F0
	ora $0DE0.w		; 0D E0 0D
	cpx #$FB0C.w		; E0 0C FB
	cop $F2.b		; 02 F2
	cop $F2.b		; 02 F2
	cop $F0.b		; 02 F0
	brk $F1.b		; 00 F1
	ora ($F8.b,X)		; 01 F8
	php		; 08
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	brk $0C.b		; 00 0C
	php		; 08
	tsb $0C08.w		; 0C 08 0C
	brk $06.b		; 00 06
	sty $86.b		; 84 86
	bra -126.b		; 80 82
	brk $82.b		; 00 82
	rti		; 40

	cmp $F8.b,S		; C3 F8
	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	jsr ($7804.w,X)		; FC 04 78
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	bra  62.b		; 80 3E
	cop $F6.b		; 02 F6
	tsb $9E.b		; 04 9E
	bvs 125.b		; 70 7D
	asl $1E6D.w,X		; 1E 6D 1E
	eor [$0C.b],Y		; 57 0C
	ora $09.b,X		; 15 09
	ora $010606.l		; 0F 06 06 01
	tsb $08.b		; 04 08
	bvs   0.b		; 70 00
	asl $1E00.w,X		; 1E 00 1E
	brk $0C.b		; 00 0C
	brk $09.b		; 00 09
	cop $06.b		; 02 06
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -32.b		; 80 E0
	cpy #$00E0.w		; C0 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$0000.w		; C0 00 00
	brk $F0.b		; 00 F0
	tsb $FE08.w		; 0C 08 FE
	bcc -10.b		; 90 F6
	ldy $E6.b		; A4 E6
	ldy $E7.b		; A4 E7
	brk $C3.b		; 00 C3
	cop $C3.b		; 02 C3
	cop $C3.b		; 02 C3
	php		; 08
	php		; 08
	ldy $B4.b,X		; B4 B4
	bit $1824.w		; 2C 24 18
	brk $1A.b		; 00 1A
	cop $BE.b		; 02 BE
	.db $82, $BC, $80		; 82 BC 80
	ldy $0080.w,X		; BC 80 00
	ora $0A01.w		; 0D 01 0A
	ora $0E.b		; 05 0E
	brk $05.b		; 00 05
	cop $07.b		; 02 07
	brk $03.b		; 00 03
	asl $3D01.w		; 0E 01 3D
	asl $0606.w		; 0E 06 06
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $2800.w		; 0E 00 28
	sbc $F41BBF.l,X		; FF BF 1B F4
	ora $017C.w		; 0D 7C 01
	bit $9081.w,X		; 3C 81 90
	dec $E490.w		; CE 90 E4
	inc $F8.b		; E6 F8
	ora ($01.b,X)		; 01 01
	sed		; F8
	bpl -10.b		; 10 F6
	php		; 08
	inc $FE00.w,X		; FE 00 FE
	bra 124.b		; 80 7C
	jmp $4058.w		; 4C 58 40
	cpy #$0000.w		; C0 00 00
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	tsb $1F.b		; 04 1F
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora $331A04.l,X		; 1F 04 1A 33
	clc		; 18
	and ($18.b,S),Y		; 33 18
	and ($08.b)		; 32 08
	jsl $7F2604.l		; 22 04 26 7F
	brk $5D.b		; 00 5D
	rol $3E5D.w,X		; 3E 5D 3E
	tsb $0E00.w		; 0C 00 0E
	cop $0C.b		; 02 0C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $9E.b		; 00 9E
	rts		; 60

	inc $14.b,X		; F6 14
	dec $F240.w		; CE 40 F2
	tsb $40CE.w		; 0C CE 40
	inc $14.b,X		; F6 14
	ldx $BD60.w,Y		; BE 60 BD
	ror $0060.w,X		; 7E 60 00
	trb $08.b		; 14 08
	rti		; 40

	bmi  12.b		; 30 0C
	brk $40.b		; 00 40
	bmi  20.b		; 30 14
	php		; 08
	rts		; 60

	brk $7E.b		; 00 7E
	brk $5F.b		; 00 5F
	rol $1D6F.w,X		; 3E 6F 1D
	mvn $4F,$08		; 54 08 4F
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	brk $1D.b		; 00 1D
	brk $08.b		; 00 08
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	bra -16.b		; 80 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tay		; A8
	sta [$C0.b]		; 87 C0
	and $30.b,X		; 35 30
	sed		; F8
	rti		; 40

	inx		; E8
	rti		; 40

	sed		; F8
	cpy #$8040.w		; C0 40 80
	bra -128.b		; 80 80
	bra -103.b		; 80 99
	eor $0808.w,Y		; 59 08 08
	brk $00.b		; 00 00
	bvc -112.b		; 50 90
	rti		; 40

	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $B9.b		; 00 B9
	stz $C07F.w,X		; 9E 7F C0
	and $1EDE.w		; 2D DE 1E
	adc ($02.b,X)		; 61 02
	and ($08.b,S),Y		; 33 08
	ora $0F04.w,Y		; 19 04 0F
	brk $06.b		; 00 06
	.db $42, $1C		; 42 1C
	bra -128.b		; 80 80
	lsr $2040.w,X		; 5E 40 20
	jsr $000C.w		; 20 0C 00
	asl $00.b		; 06 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	bit $67.b,X		; 34 67
	eor $23CE.w,Y		; 59 CE 23
	stx $9ED3.w		; 8E D3 9E
	ora $09DB30.l		; 0F 30 DB 09
	adc [$03.b],Y		; 77 03
	eor $C3.b,X		; 55 C3
	inc A		; 1A
	cop $34.b		; 02 34
	ora $7A.b		; 05 7A
	ora #$0166.w		; 09 66 01
	cpx #$E921.w		; E0 21 E9
	tsb $E0.b		; 04 E0
	phd		; 0B
	jsr $E90B.w		; 20 0B E9
	beq -96.b		; F0 A0
	sbc [$F4.b],Y		; F7 F4
	jmp ($F340.w,X)		; 7C 40 F3
	tda		; 7B
	sbc $6FBFFF.l,X		; FF FF BF 6F
	cmp $6E7FF6.l		; CF F6 7F 6E
	inc $6888.w		; EE 88 68
	adc ($83.b,S),Y		; 73 83
	tsb $7FEC.w		; 0C EC 7F
	sta $B6.b,S		; 83 B6
	tda		; 7B
	lsr $66F3.w		; 4E F3 66
	xce		; FB
	cpx #$F008.w		; E0 08 F0
	clc		; 18
	beq  24.b		; F0 18
	cpx #$C018.w		; E0 18 C0
	bpl  96.b		; 10 60
	bmi   0.b		; 30 00
	and ($40.b),Y		; 31 40
	adc ($F0.b,X)		; 61 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	cop $C3.b		; 02 C3
	jsr $2061.w		; 20 61 20
	adc ($22.b,X)		; 61 22
	adc $24.b,S		; 63 24
	sbc [$64.b]		; E7 64
	inc $40.b		; E6 40
	dec $00.b		; C6 00
	stx $7C.b		; 86 7C
	rti		; 40

	asl $1E00.w,X		; 1E 00 1E
	brk $1C.b		; 00 1C
	brk $5A.b		; 00 5A
	.db $42, $18		; 42 18
	brk $BC.b		; 00 BC
	sty $FC.b		; 84 FC
	sty $10.b		; 84 10
	adc ($00.b),Y		; 71 00
	adc ($20.b,X)		; 61 20
	adc ($22.b,X)		; 61 22
	sbc $00.b,S		; E3 00
	cmp $00.b,S		; C3 00
	rep #$40		; C2 40
	rep #$44		; C2 44
	dec $2F.b		; C6 2F
	and ($3F.b,X)		; 21 3F
	and ($1E.b,X)		; 21 1E
	brk $5C.b		; 00 5C
	rti		; 40

	ror $7C42.w,X		; 7E 42 7C
	rti		; 40

	bit $3800.w,X		; 3C 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $03.b,S		; 03 03
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	cpy #$C04C.w		; C0 4C C0
	lsr $5EC0.w,X		; 5E C0 5E
	cpy #$C05E.w		; C0 5E C0
	lsr $5EC0.w,X		; 5E C0 5E
	cpy #$C11F.w		; C0 1F C1
	and $003F00.l,X		; 3F 00 3F 00
	and $003F00.l,X		; 3F 00 3F 00
	and $003F00.l,X		; 3F 00 3F 00
	and $407E00.l,X		; 3F 00 7E 40
	jsr $2063.w		; 20 63 20
	.db $62, $24, $66		; 62 24 66
	brk $46.b		; 00 46
	brk $44.b		; 00 44
	brk $44.b		; 00 44
	brk $44.b		; 00 44
	php		; 08
	jmp $021E.w		; 4C 1E 02
	trb $1800.w		; 1C 00 18
	brk $3C.b		; 00 3C
	tsb $38.b		; 04 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $1E.b		; 00 1E
	adc #$639F.w		; 69 9F 63
	sty $6B.b,X		; 94 6B
	inc $1B.b		; E6 1B
	rol A		; 2A
	ora [$4D.b],Y		; 17 4D
	rol $4D.b,X		; 36 4D
	rol $55.b,X		; 36 55
	rol $0308.w		; 2E 08 03
	adc $00.b,S		; 63 00
	rtl		; 6B

	brk $1B.b		; 00 1B
	brk $17.b		; 00 17
	brk $36.b		; 00 36
	brk $36.b		; 00 36
	brk $2E.b		; 00 2E
	brk $EF.b		; 00 EF
	lsr $BFEF.w		; 4E EF BF
	sbc $27BF7F.l,X		; FF 7F BF 27
	lda $A5B62A.l,X		; BF 2A B6 A5
	rol $25.b,X		; 36 25
	rol $25.b,X		; 36 25
	asl $89F7.w		; 0E F7 89
	ror $76.b,X		; 76 76
	ora #$4526.w		; 09 26 45
	rol A		; 2A
	.db $42, $A5		; 42 A5
	pha		; 48
	and $C8.b		; 25 C8
	and $C8.b		; 25 C8
	cpy #$4080.w		; C0 80 40
	bra  96.b		; 80 60
	bra -32.b		; 80 E0
	brk $B0.b		; 00 B0
	rti		; 40

	bcs  64.b		; B0 40
	clv		; B8
	rts		; 60

	clv		; B8
	rts		; 60

	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rti		; 40

	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $0C.b		; 00 0C
	adc ($1C.b,X)		; 61 1C
	adc ($3A.b,X)		; 61 3A
	adc $38.b,S		; 63 38
	adc $18.b,S		; 63 18
	.db $42, $14		; 42 14
	dec $30.b		; C6 30
	dec $30.b		; C6 30
	cpy $3F.b		; C4 3F
	and ($3E.b,X)		; 21 3E
	jsr $001C.w		; 20 1C 00
	asl $3C02.w,X		; 1E 02 3C
	brk $78.b		; 00 78
	rti		; 40

	jmp ($7844.w,X)		; 7C 44 78
	rti		; 40

	sed		; F8
	tsb $70BE.w		; 0C BE 70
	tsx		; BA
	jmp ($00FE.w,X)		; 7C FE 00
	inc $64.b		; E6 64
	inc $FE00.w,X		; FE 00 FE
	stz $EE.b		; 64 EE
	plp		; 28
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	jmp ($0000.w,X)		; 7C 00 00
	brk $64.b		; 00 64
	clc		; 18
	brk $00.b		; 00 00
	stz $00.b		; 64 00
	plp		; 28
	bpl 118.b		; 10 76
	inc A		; 1A
	ror $1A.b,X		; 76 1A
	bit $0C00.w,X		; 3C 00 0C
	trb $0C.b		; 14 0C
	bpl   3.b		; 10 03
	trb $1F03.w		; 1C 03 1F
	tsb $0C.b		; 04 0C
	inc A		; 1A
	ora ($1A.b,X)		; 01 1A
	ora ($00.b,X)		; 01 00
	ora $04.b,S		; 03 04
	ora $00.b,S		; 03 00
	ora $04.b,S		; 03 04
	tsb $04.b		; 04 04
	tsb $03.b		; 04 03
	brk $EC.b		; 00 EC
	plb		; AB
	sbc $CDAB.w		; ED AB CD
	phb		; 8B
	cmp $CD8B.w		; CD 8B CD
	phb		; 8B
	cmp $FF0B.w		; CD 0B FF
	bra 112.b		; 80 70
	adc $AB10AB.l,X		; 7F AB 10 AB
	bpl -117.b		; 10 8B
	bmi -117.b		; 30 8B
	bmi -117.b		; 30 8B
	bmi  11.b		; 30 0B
	bmi   0.b		; 30 00
	brk $8B.b		; 00 8B
	phd		; 0B
	bvs -64.b		; 70 C0
	bvs -64.b		; 70 C0
	bcs  64.b		; B0 40
	bcs  96.b		; B0 60
	bcs  96.b		; B0 60
	rts		; 60

	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $111808.l		; 0F 08 18 11
	bmi   7.b		; 30 07
	jmp ($4006.w,X)		; 7C 06 40
	jsr $44A1.w		; 20 A1 44
	inc $00.b		; E6 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F0B0B.l		; 0F 0B 0B 3F
	and $395F5F.l,X		; 3F 5F 5F 39
	and $0000.w,Y		; 39 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	rts		; 60

	brk $18.b		; 00 18
	clv		; B8
	asl $0714.w		; 0E 14 07
	jsl $BF2243.l		; 22 43 22 BF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$F0E0.w		; E0 E0 F0
	beq  -6.b		; F0 FA
	plx		; FA
	jsr ($40FC.w,X)		; FC FC 40
	rti		; 40

	asl $78C3.w,X		; 1E C3 78
	cmp $3C.b,S		; C3 3C
	stx $30.b		; 86 30
	stx $70.b		; 86 70
	sty $E8.b		; 84 E8
	sty $8CE0.w		; 8C E0 8C
	rts		; 60

	php		; 08
	jmp ($3E40.w,X)		; 7C 40 3E
	cop $78.b		; 02 78
	brk $FC.b		; 00 FC
	sty $F8.b		; 84 F8
	bra 112.b		; 80 70
	brk $78.b		; 00 78
	php		; 08
	beq   0.b		; F0 00
	ora $180F18.l		; 0F 18 0F 18
	asl $0B18.w		; 0E 18 0B
	ora $3100.w,Y		; 19 00 31
	ora ($73.b)		; 12 73
	jsr $58E3.w		; 20 E3 58
	rep #$07		; C2 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	brk $1F.b		; 00 1F
	ora ($2C.b),Y		; 11 2C
	jsr $425E.w		; 20 5E 42
	bit $0000.w,X		; 3C 00 00
	tas		; 1B
	ora $14.b,S		; 03 14
	phd		; 0B
	trb $0A00.w		; 1C 00 0A
	tsb $0F.b		; 04 0F
	ora ($07.b,X)		; 01 07
	ora $7B03.w,X		; 1D 03 7B
	ora $0C0C.w,X		; 1D 0C 0C
	phd		; 0B
	php		; 08
	ora $00.b,S		; 03 00
	ora $04.b		; 05 04
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $5000.w,X		; 1D 00 50
	sbc $E8377E.l,X		; FF 7E 37 E8
	tas		; 1B
	sed		; F8
	cop $78.b		; 02 78
	cop $20.b		; 02 20
	stz $C820.w		; 9C 20 C8
	cpy $02F0.w		; CC F0 02
	cop $F0.b		; 02 F0
	jsr $10EC.w		; 20 EC 10
	jsr ($FC00.w,X)		; FC 00 FC
	brk $F8.b		; 00 F8
	tya		; 98
	bcs -128.b		; B0 80
	bra   0.b		; 80 00
	and $BFD2.w,X		; 3D D2 BF
	eor [$C9.b]		; 47 C9
	rol $55.b,X		; 36 55
	rol $6D9B.w		; 2E 9B 6D
	tax		; AA
	jmp $D658B6.l		; 5C B6 58 D6
	dec A		; 3A
	bpl   7.b		; 10 07
	eor [$00.b]		; 47 00
	rol $00.b,X		; 36 00
	rol $6D00.w		; 2E 00 6D
	brk $5C.b		; 00 5C
	ora ($58.b,X)		; 01 58
	ora ($3A.b,X)		; 01 3A
	ora ($DF.b,X)		; 01 DF
	sta $7FDE.w,X		; 9D DE 7F
	inc $7FFF.w,X		; FE FF 7F
	lsr $547F.w		; 4E 7F 54
	adc $6D4A.w		; 6D 4A 6D
	lsr A		; 4A
	cpx $1DAB.w		; EC AB 1D
	inc $ED12.w		; EE 12 ED
	cpx $4C13.w		; EC 13 4C
	txa		; 8A
	mvn $4A,$84		; 54 84 4A
	bcc  74.b		; 90 4A
	bcc -85.b		; 90 AB
	bpl  92.b		; 10 5C
	cpy #$C05E.w		; C0 5E C0
	lsr $5EC0.w,X		; 5E C0 5E
	cpy #$C15F.w		; C0 5F C1
	eor $C15DC1.l,X		; 5F C1 5D C1
	jmp $003FC1.l		; 5C C1 3F 00
	and $003F00.l,X		; 3F 00 3F 00
	and $003E00.l,X		; 3F 00 3E 00
	rol $3E00.w,X		; 3E 00 3E
	brk $3F.b		; 00 3F
	ora ($32.b,X)		; 01 32
	sbc ($22.b,S),Y		; F3 22
	sbc $20.b,S		; E3 20
	sbc ($00.b,X)		; E1 00
	cmp ($00.b,X)		; C1 00
	cmp ($01.b,X)		; C1 01
	cmp ($21.b,X)		; C1 21
	sbc ($20.b,X)		; E1 20
	cpx #$808C.w		; E0 8C 80
	stz $9E80.w		; 9C 80 9E
	bra 127.b		; 80 7F
	eor ($7F.b,X)		; 41 7F
	eor ($7E.b,X)		; 41 7E
	rti		; 40

	lsr $5F40.w,X		; 5E 40 5F
	rti		; 40

	ror A		; 6A
	and ($30.b,X)		; 21 30
	cmp $3E0C.w		; CD 0C 3E
	bpl  -6.b		; 10 FA
	bne  -2.b		; D0 FE
	beq -48.b		; F0 D0
	cpx #$A0E0.w		; E0 E0 A0
	cpx #$96A6.w		; E0 A6 96
	cop $02.b		; 02 02
	cpy #$14C0.w		; C0 C0 14
	bit $D0.b		; 24 D0
	cpx #$E090.w		; E0 90 E0
	ldy #$A0C0.w		; A0 C0 A0
	cpy #$E72E.w		; C0 2E E7
	ora $370B70.l,X		; 1F 70 0B 37
	ora [$18.b]		; 07 18
	brk $0C.b		; 00 0C
	cop $06.b		; 02 06
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	bvc  71.b		; 50 47
	jsr $1720.w		; 20 20 17
	bpl   8.b		; 10 08
	php		; 08
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	rti		; 40

	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $03.b		; 02 03
	asl $06.b		; 06 06
	ora $07.b		; 05 07
	ora $0F.b,S		; 03 0F
	cop $0B.b		; 02 0B
	phd		; 0B
	tas		; 1B
	ora $31.b		; 05 31
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	ora $03.b		; 05 03
	asl $05.b		; 06 05
	asl $01.b		; 06 01
	ora $00.b		; 05 00
	asl $0610.w,X		; 1E 10 06
	bmi  30.b		; 30 1E
	bmi  29.b		; 30 1D
	and ($0C.b),Y		; 31 0C
	adc ($3A.b,X)		; 61 3A
	adc $38.b,S		; 63 38
	adc $14.b,S		; 63 14
	lsr $30.b		; 46 30
	dec $1F.b		; C6 1F
	bpl  15.b		; 10 0F
	brk $0E.b		; 00 0E
	brk $3F.b		; 00 3F
	and ($1C.b,X)		; 21 1C
	brk $1E.b		; 00 1E
	cop $38.b		; 02 38
	brk $7C.b		; 00 7C
	mvp $C0,$00		; 44 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	php		; 08
	rol $8080.w,X		; 3E 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $3E00.w		; 0C 00 3E
	php		; 08
	rol $2677.w		; 2E 77 26
	sbc #$F7AE.w		; E9 AE F7
	trb $FA.b		; 14 FA
	pha		; 48
	inc $3E0C.w,X		; FE 0C 3E
	rol $8C3D.w		; 2E 3D 8C
	sta $E12E73.l,X		; 9F 73 2E E1
	rol $BE43.w,X		; 3E 43 BE
.INDEX 8
	sep #$1C		; E2 1C
	tax		; AA
	stz $0CDE.w		; 9C DE 0C
	cmp $750E.w,X		; DD 0E 75
	asl $C640.w		; 0E 40 C6
	mvp $44,$C6		; 44 C6 44
	dec $40.b		; C6 40
	dec $00.b		; C6 00
	stx $04.b		; 86 04
	sta [$04.b]		; 87 04
	sta [$00.b]		; 87 00
	sta $3C.b,S		; 83 3C
	tsb $38.b		; 04 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $7C.b		; 04 7C
	tsb $7A.b		; 04 7A
	cop $7A.b		; 02 7A
	cop $7E.b		; 02 7E
	cop $42.b		; 02 42
	cmp $02.b,S		; C3 02
	cmp $02.b,S		; C3 02
	eor $20.b,S		; 43 20
	adc ($20.b,X)		; 61 20
	adc ($00.b,X)		; 61 00
	adc ($00.b,X)		; 61 00
	and ($10.b,X)		; 21 10
	and ($3C.b),Y		; 31 3C
	brk $7C.b		; 00 7C
	rti		; 40

	bit $1E00.w,X		; 3C 00 1E
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	jsr $001E.w		; 20 1E 00
	asl $3000.w		; 0E 00 30
	adc ($1A.b),Y		; 71 1A
	eor $1A.b,S		; 43 1A
	cmp $78.b,S		; C3 78
	cmp $34.b,S		; C3 34
	stx $F0.b		; 86 F0
	stx $E8.b		; 86 E8
	sty $0C60.w		; 8C 60 0C
	ora $003C01.l		; 0F 01 3C 00
	jmp ($3E40.w,X)		; 7C 40 3E
	cop $F8.b		; 02 F8
	bra 124.b		; 80 7C
	tsb $70.b		; 04 70
	brk $F8.b		; 00 F8
	php		; 08
	cmp $C6E58D.l		; CF 8D E5 C6
	xce		; FB
	nop		; EA
	adc $2160.w,Y		; 79 60 21
	adc $56F9E0.l,X		; 7F E0 F9 56
	sed		; F8
	pea $8CF9.w		; F4 F9 8C
	bmi  70.b		; 30 46
	tya		; 98
	tax		; AA
	cpy $20.b		; C4 20
	dec $21.b,X		; D6 21
	bne 102.b		; D0 66
	stx $47.b,Y		; 96 47
	lda [$D7.b],Y		; B7 D7
	and [$F2.b],Y		; 37 F2
	cmp $DDFB.w,X		; DD FB DD
	tsx		; BA
	sta $9BB5.w,X		; 9D B5 9B
	bcs  31.b		; B0 1F
	cpx $6453.w		; EC 53 64
	ora $90.b,S		; 03 90
	pld		; 2B
	cmp $1C00.w,X		; DD 00 1C
	ora ($5D.b,X)		; 01 5D
	brk $5B.b		; 00 5B
	ora ($51.b,X)		; 01 51
	brk $0D.b		; 00 0D
	tsb $9D9D.w		; 0C 9D 9D
	ora $746D.w		; 0D 6D 74
	sec		; 38
	jmp ($3814.w,X)		; 7C 14 38
	brk $09.b		; 00 09
	ora ($0D.b),Y		; 11 0D
	ora ($03.b),Y		; 11 03
	trb $1F07.w		; 1C 07 1F
	php		; 08
	clc		; 18
	sec		; 38
	ora $14.b,S		; 03 14
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	asl $01.b		; 06 01
	cop $0C.b		; 02 0C
	tsb $0808.w		; 0C 08 08
	ora [$00.b]		; 07 00
	sbc $CDAB.w		; ED AB CD
	phb		; 8B
	cmp $CD8B.w		; CD 8B CD
	phk		; 4B
	cmp $8D4B.w		; CD 4B 8D
	phd		; 0B
	sbc $7F6300.l,X		; FF 00 63 7F
	plb		; AB
	bpl -117.b		; 10 8B
	bmi -117.b		; 30 8B
	bmi  75.b		; 30 4B
	bmi  75.b		; 30 4B
	bmi  11.b		; 30 0B
	bvs   0.b		; 70 00
	brk $94.b		; 00 94
	trb $5C.b		; 14 5C
	cmp ($5E.b,X)		; C1 5E
	cmp $5E.b,S		; C3 5E
	cmp $58.b,S		; C3 58
	cmp $78.b,S		; C3 78
.ACCU 16
.INDEX 16
	rep #$78		; C2 78
.ACCU 16
.INDEX 16
	rep #$7C		; C2 7C
	dec $78.b		; C6 78
	dec $3F.b		; C6 3F
	ora ($3C.b,X)		; 01 3C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	cop $3C.b		; 02 3C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $20.b		; 04 20
	cpx #$6000.w		; E0 00 60
	bpl 112.b		; 10 70
	bpl  48.b		; 10 30
	brk $30.b		; 00 30
	php		; 08
	clc		; 18
	php		; 08
	clc		; 18
	tsb $1C.b		; 04 1C
	ora $203F00.l,X		; 1F 00 3F 20
	and $000F20.l		; 2F 20 0F 00
	ora $000710.l,X		; 1F 10 07 00
	ora [$00.b]		; 07 00
	phd		; 0B
	php		; 08
	jmp $1C7B32.l		; 5C 32 7B 1C
	cmp $24E640.l,X		; DF 40 E6 24
	ldx $D480.w,Y		; BE 80 D4
	pha		; 48
	jmp ($FCA0.w)		; 6C A0 FC
	bne  48.b		; D0 30
	brk $1C.b		; 00 1C
	brk $40.b		; 00 40
	jsr $1824.w		; 20 24 18
	bra  64.b		; 80 40
	pha		; 48
	jsr $10A0.w		; 20 A0 10
	bne   0.b		; D0 00
	jsr $0062.w		; 20 62 00
	.db $62, $00, $62		; 62 00 62
	tsb $26.b		; 04 26
	tsb $26.b		; 04 26
	trb $36.b		; 14 36
	adc $3E5D00.l,X		; 7F 00 5D 3E
	trb $3C00.w		; 1C 00 3C
	jsr $203C.w		; 20 3C 20
	clc		; 18
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	brk $2F.b		; 00 2F
	ora $1A0F17.l,X		; 1F 17 0F 1A
	ora [$15.b]		; 07 15
	cop $13.b		; 02 13
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	bra -32.b		; 80 E0
	rti		; 40

	bmi   0.b		; 30 00
	cld		; D8
	bcs  -4.b		; B0 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	cpy #$00B0.w		; C0 B0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1619.w		; 0D 19 16
	and ($08.b,S),Y		; 33 08
	and $34.b,S		; 23 34
	adc [$03.b]		; 67 03
	jmp $8236.w		; 4C 36 82
	eor $15C0.w,X		; 5D C0 15
	bvs   6.b		; 70 06
	brk $0D.b		; 00 0D
	ora ($1E.b,X)		; 01 1E
	cop $19.b		; 02 19
	brk $38.b		; 00 38
	php		; 08
	ply		; 7A
	ora ($38.b,X)		; 01 38
	cop $08.b		; 02 08
	cop $80.b		; 02 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	rti		; 40

	rts		; 60

	bra  80.b		; 80 50
	ldy #$C030.w		; A0 30 C0
	inx		; E8
	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	brk $50.b		; 00 50
	brk $E8.b		; 00 E8
	bvc -72.b		; 50 B8
	rts		; 60

	bvs -96.b		; 70 A0
	cpx #$C080.w		; E0 80 C0
	ldy #$20C0.w		; A0 C0 20
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bvc   0.b		; 50 00
	rts		; 60

	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	rti		; 40

	beq -64.b		; F0 C0
	bne -32.b		; D0 E0
	bvs -32.b		; 70 E0
	inx		; E8
	bvs -72.b		; 70 B8
	rti		; 40

	jmp $3A00.w		; 4C 00 3A
	php		; 08
	ora $00C000.l		; 0F 00 C0 00
	cpx #$E000.w		; E0 00 E0
	brk $70.b		; 00 70
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	bmi   8.b		; 30 08
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $111808.l		; 0F 08 18 11
	bmi   7.b		; 30 07
	jmp ($4006.w,X)		; 7C 06 40
	jsr $44A1.w		; 20 A1 44
	inc $00.b		; E6 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F0B0B.l		; 0F 0B 0B 3F
	and $395F5F.l,X		; 3F 5F 5F 39
	and $0000.w,Y		; 39 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	rts		; 60

	brk $18.b		; 00 18
	clv		; B8
	asl $0714.w		; 0E 14 07
	jsl $BF2243.l		; 22 43 22 BF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$F0E0.w		; E0 E0 F0
	beq  -6.b		; F0 FA
	plx		; FA
	jsr ($40FC.w,X)		; FC FC 40
	rti		; 40

	trb $0E31.w		; 1C 31 0E
	adc $20.b,S		; 63 20
	adc $24.b,S		; 63 24
	inc $C0.b		; E6 C0
	dec $68.b		; C6 68
	tsb $0C68.w		; 0C 68 0C
	cpx #$0E0C.w		; E0 0C 0E
	brk $3C.b		; 00 3C
	jsr $021E.w		; 20 1E 02
	cli		; 58
	rti		; 40

	bit $F004.w,X		; 3C 04 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	tsx		; BA
	jmp ($70AE.w,X)		; 7C AE 70
	ply		; 7A
	php		; 08
	adc [$30.b],Y		; 77 30
	adc $7706.w,Y		; 79 06 77
	bmi 123.b		; 30 7B
	asl A		; 0A
	eor $007C30.l		; 4F 30 7C 00
	bvs   0.b		; 70 00
	php		; 08
	tsb $30.b		; 04 30
	php		; 08
	asl $00.b		; 06 00
	bmi   8.b		; 30 08
	asl A		; 0A
	tsb $30.b		; 04 30
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	ora ($07.b,X)		; 01 07
	ora ($06.b,X)		; 01 06
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	brk $04.b		; 00 04
	brk $01.b		; 00 01
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
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	and ($1A.b),Y		; 31 1A
	and ($18.b,S),Y		; 33 18
	and ($0C.b,S),Y		; 33 0C
	rol $10.b		; 26 10
	ror $38.b		; 66 38
	jmp ($4C10.w)		; 6C 10 4C
	cpy #$1F08.w		; C0 08 1F
	ora ($0C.b),Y		; 11 0C
	brk $0E.b		; 00 0E
	cop $18.b		; 02 18
	brk $3C.b		; 00 3C
	bit $10.b		; 24 10
	brk $38.b		; 00 38
	php		; 08
	bmi   0.b		; 30 00
	dec A		; 3A
	jsr ($BD68.w,X)		; FC 68 BD
	sbc $D09F.w,X		; FD 9F D0
	ldy $3FDE.w,X		; BC DE 3F
	sbc $F3DB6F.l,X		; FF 6F DB F3
	adc $9BDF.w,X		; 7D DF 9B
	tyx		; BB
	jsl $609C5A.l		; 22 5A 9C 60
	sta $7B.b,S		; 83 7B
	ora $1E6D60.l,X		; 1F 60 6D 1E
	ora ($FC.b,S),Y		; 13 FC
	ora $00FE.w,Y		; 19 FE 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$1F40.w		; C0 40 1F
	bmi  23.b		; 30 17
	bmi   7.b		; 30 07
	bmi   7.b		; 30 07
	bpl  15.b		; 10 0F
	clc		; 18
	ora [$18.b]		; 07 18
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora $000F00.l		; 0F 00 0F 00
	ora $000F10.l,X		; 1F 10 0F 00
	ora [$00.b]		; 07 00
	ora $000708.l		; 0F 08 07 00
	ora [$00.b]		; 07 00
	bcc -40.b		; 90 D8
	bcc -40.b		; 90 D8
	bcc -40.b		; 90 D8
	bcc -40.b		; 90 D8
	bpl  88.b		; 10 58
	bpl  88.b		; 10 58
	bpl  88.b		; 10 58
	brk $48.b		; 00 48
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $B0.b		; 00 B0
	brk $6E.b		; 00 6E
	tax		; AA
	ror $CCAA.w		; 6E AA CC
	php		; 08
	cpy $CC48.w		; CC 48 CC
	php		; 08
	bit $7FC0.w,X		; 3C C0 7F
	sed		; F8
	eor $C3.b,S		; 43 C3
	tax		; AA
	ora ($AA.b),Y		; 11 AA
	ora ($08.b),Y		; 11 08
	and ($48.b,S),Y		; 33 48
	and ($08.b,S),Y		; 33 08
	and ($C0.b,S),Y		; 33 C0
	cmp $80.b,S		; C3 80
	bra  60.b		; 80 3C
	brk $CB.b		; 00 CB
	ldy $DB.b,X		; B4 DB
	ldx $DB.b,Y		; B6 DB
	ldx $D6.b,Y		; B6 D6
	clv		; B8
	jmp.w [$DCB8]		; DC B8 DC
	bcs -16.b		; B0 F0
	php		; 08
	brk $F8.b		; 00 F8
	ldy $00.b,X		; B4 00
	ldx $00.b,Y		; B6 00
	ldx $00.b,Y		; B6 00
	clv		; B8
	brk $B8.b		; 00 B8
	brk $B0.b		; 00 B0
	brk $00.b		; 00 00
	brk $B0.b		; 00 B0
	bcs -99.b		; B0 9D
	inc $DE34.w,X		; FE 34 DE
	ror $68CF.w,X		; 7E CF 68
	dec $1FEF.w,X		; DE EF 1F
	adc $79ED37.l,X		; 7F 37 ED 79
	ldx $4D6F.w,Y		; BE 6F 4D
	eor $AD91.w,X		; 5D 91 AD
	lsr $C130.w		; 4E 30 C1
	and $300F.w,X		; 3D 0F 30
	rol $8F.b,X		; 36 8F
	ora #$0C7E.w		; 09 7E 0C
	adc $181035.l,X		; 7F 35 10 18
	inc $86.b		; E6 86
	sta $687D08.l,X		; 9F 08 7D 68
	sbc $F0E8F8.l,X		; FF F8 E8 F0
	beq -48.b		; F0 D0
	beq -45.b		; F0 D3
	wai		; CB
	ora ($01.b,X)		; 01 01
	rts		; 60

	rts		; 60

	txa		; 8A
	sta ($E8.b)		; 92 E8
	bvs -56.b		; 70 C8
	bvs -48.b		; 70 D0
	rts		; 60

	bne  96.b		; D0 60
	brk $37.b		; 00 37
	asl $28.b		; 06 28
	ora [$38.b],Y		; 17 38
	ora ($14.b,X)		; 01 14
	php		; 08
	asl $0F02.w,X		; 1E 02 0F
	dec A		; 3A
	ora [$F7.b]		; 07 F7
	tsa		; 3B
	clc		; 18
	clc		; 18
	ora [$10.b],Y		; 17 10
	ora [$00.b]		; 07 00
	phd		; 0B
	php		; 08
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	tsa		; 3B
	brk $A0.b		; 00 A0
	sbc $D06FFC.l,X		; FF FC 6F D0
	rol $F0.b,X		; 36 F0
	tsb $F0.b		; 04 F0
	tsb $40.b		; 04 40
	sec		; 38
	rti		; 40

	bcc -104.b		; 90 98
	cpx #$0505.w		; E0 05 05
	cpx #$D840.w		; E0 40 D8
	jsr $00F8.w		; 20 F8 00
	sed		; F8
	brk $F0.b		; 00 F0
	bmi  96.b		; 30 60
	brk $00.b		; 00 00
	brk $17.b		; 00 17
	sbc ($0F.b,S),Y		; F3 0F
	clv		; B8
	ora $1B.b		; 05 1B
	ora $0C.b,S		; 03 0C
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	plp		; 28
	and $10.b,S		; 23 10
	bpl  11.b		; 10 0B
	php		; 08
	tsb $04.b		; 04 04
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0C.b		; 06 0C
	phd		; 0B
	ora $1104.w,Y		; 19 04 11
	inc A		; 1A
	and ($01.b,S),Y		; 33 01
	rol $1B.b		; 26 1B
	eor ($2E.b,X)		; 41 2E
	rts		; 60

	asl A		; 0A
	sec		; 38
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	ora $000C01.l		; 0F 01 0C 00
	trb $3D04.w		; 1C 04 3D
	brk $1C.b		; 00 1C
	ora ($04.b,X)		; 01 04
	ora ($03.b,X)		; 01 03
	ora $0C13.w		; 0D 13 0C
	ora ($0D.b)		; 12 0D
	trb $0503.w		; 1C 03 05
	cop $09.b		; 02 09
	asl $09.b		; 06 09
	asl $0A.b		; 06 0A
	ora $01.b		; 05 01
	brk $0C.b		; 00 0C
	brk $0D.b		; 00 0D
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $05.b		; 00 05
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $05.b,S		; 03 05
	ora [$0D.b]		; 07 0D
	ora $0E0A.w		; 0D 0A 0E
	asl $1E.b		; 06 1E
	ora $17.b		; 05 17
	asl $37.b,X		; 16 37
	phd		; 0B
	adc $03.b,S		; 63 03
	brk $04.b		; 00 04
	ora $09.b,S		; 03 09
	ora [$0A.b]		; 07 0A
	ora [$0C.b]		; 07 0C
	phd		; 0B
	tsb $0A03.w		; 0C 03 0A
	ora ($3D.b,X)		; 01 3D
	jsr $C020.w		; 20 20 C0
	cpx #$A000.w		; E0 00 A0
	cpy #$20C0.w		; C0 C0 20
	rti		; 40

	rts		; 60

	brk $20.b		; 00 20
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	bpl 124.b		; 10 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $7C.b		; 00 7C
	bpl  92.b		; 10 5C
	inc $D24C.w		; EE 4C D2
	jmp $F428EE.l		; 5C EE 28 F4
	bcc  -4.b		; 90 FC
	clc		; 18
	jmp ($7A5C.w,X)		; 7C 5C 7A
	clc		; 18
	rol $5CE6.w,X		; 3E E6 5C
.ACCU 16
.INDEX 16
	rep #$7C		; C2 7C
	stx $7C.b		; 86 7C
	cpy $38.b		; C4 38
	mvn $BC,$38		; 54 38 BC
	clc		; 18
	tsx		; BA
	trb $1CEA.w		; 1C EA 1C
	ora $08.b,S		; 03 08
	cop $18.b		; 02 18
	ora ($31.b),Y		; 11 31
	plp		; 28
	adc ($5A.b,X)		; 61 5A
	cmp $3C.b,S		; C3 3C
	sta [$F0.b]		; 87 F0
	sta [$69.b]		; 87 69
	ora $0F0007.l		; 0F 07 00 0F
	php		; 08
	asl $1F00.w		; 0E 00 1F
	ora ($3C.b,X)		; 01 3C
	brk $FA.b		; 00 FA
	.db $82, $7D, $05		; 82 7D 05
	sbc ($02.b)		; F2 02
	bra -56.b		; 80 C8
	brk $C8.b		; 00 C8
	brk $C8.b		; 00 C8
	bvc -40.b		; 50 D8
	bpl -104.b		; 10 98
	ldy #$20B8.w		; A0 B8 20
	sec		; 38
	jsr $3030.w		; 20 30 30
	brk $B0.b		; 00 B0
	bra 112.b		; 80 70
	rti		; 40

	jsr $E000.w		; 20 00 E0
	bra  80.b		; 80 50
	bpl -48.b		; 10 D0
	bpl -64.b		; 10 C0
	brk $5D.b		; 00 5D
	cmp ($1E.b,X)		; C1 1E
	cpy #$C01E.w		; C0 1E C0
	rol $2E60.w,X		; 3E 60 2E
	rts		; 60

	asl $0F60.w		; 0E 60 0F
	rts		; 60

	ora $003E20.l		; 0F 20 3E 00
	adc $407F40.l,X		; 7F 40 7F 40
	ora $001F00.l,X		; 1F 00 1F 00
	and $203F20.l,X		; 3F 20 3F 20
	ora $F82000.l,X		; 1F 00 20 F8
	ldy #$A0F8.w		; A0 F8 A0
	sed		; F8
	ldy #$B0F8.w		; A0 F8 B0
	sed		; F8
	bcs  -8.b		; B0 F8
	bcs  -8.b		; B0 F8
	bcs  -8.b		; B0 F8
	bcc -112.b		; 90 90
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $FD29.w,X		; DD 29 FD
	adc [$9F.b],Y		; 77 9F
	adc $5764D7.l		; 6F D7 64 57
	sbc $B6.b		; E5 B6
	pei ($A6.b)		; D4 A6
	cpy $A6.b		; C4 A6
	cpy $01.b		; C4 01
	ror $0E71.w,X		; 7E 71 0E
	ror $6401.w		; 6E 01 64
	php		; 08
	sbc $08.b		; E5 08
	pei ($09.b)		; D4 09
	cpy $19.b		; C4 19
	cpy $19.b		; C4 19
	sed		; F8
	bne -24.b		; D0 E8
	beq -20.b		; F0 EC
	beq  -4.b		; F0 FC
	cpx #$48F6.w		; E0 F6 48
	dec $A8.b,X		; D6 A8
	cmp [$AC.b],Y		; D7 AC
	cmp [$AC.b],Y		; D7 AC
	bne -32.b		; D0 E0
	jsr $C0D0.w		; 20 D0 C0
	bmi -64.b		; 30 C0
	ldy #$4048.w		; A0 48 40
	tay		; A8
	brk $AC.b		; 00 AC
	brk $AC.b		; 00 AC
	brk $9F.b		; 00 9F
	tas		; 1B
	wai		; CB
	sta $D5F7.w		; 8D F7 D5
	sbc ($C1.b,S),Y		; F3 C1
	eor $FE.b,S		; 43 FE
	cmp ($F2.b,X)		; C1 F2
	ldy $E9F0.w		; AC F0 E9
	sbc ($19.b)		; F2 19
	rts		; 60

	sty $5430.w		; 8C 30 54
	dey		; 88
	rti		; 40

	ldy $A042.w		; AC 42 A0
	cpy $8F2C.w		; CC 2C 8F
	adc $E46EAE.l		; 6F AE 6E E4
	tsx		; BA
	inc $BB.b,X		; F6 BB
	adc $3B.b,X		; 75 3B
	ror A		; 6A
	and [$60.b],Y		; 37 60
	and $C8A6D8.l,X		; 3F D8 A6 C8
	asl $21.b		; 06 21
	eor [$BA.b],Y		; 57 BA
	brk $39.b		; 00 39
	cop $BA.b		; 02 BA
	ora ($B7.b,X)		; 01 B7
	cop $A3.b		; 02 A3
	ora ($1B.b,X)		; 01 1B
	clc		; 18
	tsa		; 3B
	dec A		; 3A
	inc A		; 1A
	phx		; DA
	asl A		; 0A
	and $18.b,S		; 23 18
	adc $34.b,S		; 63 34
	ror $10.b		; 66 10
	lsr $28.b		; 46 28
	cpy $D870.w		; CC 70 D8
	brk $98.b		; 00 98
	jsr $1CB0.w		; 20 B0 1C
	brk $3E.b		; 00 3E
	jsl $3C0018.l		; 22 18 00 3C
	tsb $70.b		; 04 70
	rti		; 40

	jsr $7000.w		; 20 00 70
	bpl -64.b		; 10 C0
	bra  30.b		; 80 1E
	asl A		; 0A
	and [$01.b],Y		; 37 01
	and [$04.b],Y		; 37 04
	phy		; 5A
	and ($5D.b),Y		; 31 5D
	bit $FF.b,X		; 34 FF
	inc A		; 1A
	lda $1E2D1C.l,X		; BF 1C 2D 1E
	asl A		; 0A
	ora ($01.b,X)		; 01 01
	php		; 08
	tsb $08.b		; 04 08
	and ($04.b),Y		; 31 04
	bit $02.b,X		; 34 02
	inc A		; 1A
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $02.b		; 00 02
	sbc $22.b,S		; E3 22
	sbc $22.b,S		; E3 22
	adc $20.b,S		; 63 20
	adc $20.b,S		; 63 20
	.db $62, $00, $62		; 62 00 62
	brk $62.b		; 00 62
	brk $22.b		; 00 22
	ldy $1CA0.w,X		; BC A0 1C
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	cop $1C.b		; 02 1C
	brk $3C.b		; 00 3C
	jsr $203C.w		; 20 3C 20
	trb $0000.w		; 1C 00 00
	jsl $002200.l		; 22 00 22 00
	jsl $102200.l		; 22 00 22 10
	and ($10.b)		; 32 10
	and ($14.b)		; 32 14
	rol $7E.b,X		; 36 7E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $5A.b		; 00 5A
	bit $3C5A.w,X		; 3C 5A 3C
	lsr $7A30.w,X		; 5E 30 7A
	php		; 08
	adc [$30.b],Y		; 77 30
	adc $7706.w,Y		; 79 06 77
	bmi 123.b		; 30 7B
	asl A		; 0A
	bit $3C00.w,X		; 3C 00 3C
	brk $30.b		; 00 30
	brk $08.b		; 00 08
	tsb $30.b		; 04 30
	php		; 08
	asl $00.b		; 06 00
	bmi   8.b		; 30 08
	asl A		; 0A
	tsb $5F.b		; 04 5F
	bmi  76.b		; 30 4C
	and $371F2E.l,X		; 3F 2E 1F 37
	asl $052B.w		; 0E 2B 05
	and [$01.b]		; 27 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	and $001F00.l,X		; 3F 00 1F 00
	asl $0500.w		; 0E 00 05
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra  96.b		; 80 60
	brk $B0.b		; 00 B0
	rts		; 60

	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra  96.b		; 80 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $111808.l		; 0F 08 18 11
	bmi   7.b		; 30 07
	jmp ($4006.w,X)		; 7C 06 40
	jsr $44A1.w		; 20 A1 44
	inc $00.b		; E6 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F0B0B.l		; 0F 0B 0B 3F
	and $395F5F.l,X		; 3F 5F 5F 39
	and $0000.w,Y		; 39 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	rts		; 60

	brk $18.b		; 00 18
	clv		; B8
	asl $0714.w		; 0E 14 07
	jsl $BF2243.l		; 22 43 22 BF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$F0E0.w		; E0 E0 F0
	beq  -6.b		; F0 FA
	plx		; FA
	jsr ($40FC.w,X)		; FC FC 40
	rti		; 40

	ora [$30.b]		; 07 30
	asl $0D30.w,X		; 1E 30 0D
	adc ($38.b,X)		; 61 38
	adc ($1A.b,X)		; 61 1A
	eor $30.b,S		; 43 30
.ACCU 16
.INDEX 16
	rep #$74		; C2 74
	dec $28.b		; C6 28
	sty $101F.w		; 8C 1F 10
	ora $203E00.l		; 0F 00 3E 20
	ora $003C01.l,X		; 1F 01 3C 00
	jmp ($3840.w,X)		; 7C 40 38
	brk $70.b		; 00 70
	brk $B4.b		; 00 B4
	sei		; 78
	jmp $107420.l		; 5C 20 74 10
	rol $1A04.w		; 2E 04 1A
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	php		; 08
	tsb $10.b		; 04 10
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($0B.b)		; 32 0B
	jmp $5AFC33.l		; 5C 33 FC 5A
	phx		; DA
	jmp $A4EA.w		; 4C EA A4
	stz $10.b,X		; 74 10
	sei		; 78
	rti		; 40

	tay		; A8
	bpl  12.b		; 10 0C
	php		; 08
	and ($02.b)		; 32 02
	cli		; 58
	brk $4C.b		; 00 4C
	jsr $10A4.w		; 20 A4 10
	bpl -120.b		; 10 88
	rti		; 40

	bra  16.b		; 80 10
	rti		; 40

	ora $3F0030.l		; 0F 30 00 3F
	brk $3F.b		; 00 3F
	tsb $1F.b		; 04 1F
	asl $1F.b		; 06 1F
	ora [$1F.b]		; 07 1F
	asl $0E.b		; 06 0E
	brk $0C.b		; 00 0C
	bpl  16.b		; 10 10
	tas		; 1B
	tas		; 1B
	ora $0A1D.w,X		; 1D 1D 0A
	asl A		; 0A
	ora #$0809.w		; 09 09 08
	php		; 08
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	sbc $0FFF20.l		; EF 20 FF 0F
	beq -16.b		; F0 F0
	adc $E027E0.l		; 6F E0 27 E0
	sta [$F0.b],Y		; 97 F0
	phk		; 4B
	sei		; 78
	bit $3C.b		; 24 3C
	jsr $0010.w		; 20 10 00
	brk $0F.b		; 00 0F
	brk $9F.b		; 00 9F
	bra  95.b		; 80 5F
	rti		; 40

	and $109720.l		; 2F 20 97 10
	wai		; CB
	php		; 08
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	php		; 08
	clc		; 18
	ora ($30.b),Y		; 11 30
	ora [$7C.b]		; 07 7C
	asl $40.b		; 06 40
	jsr $00A1.w		; 20 A1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F0B0B.l		; 0F 0B 0B 3F
	and $005F5F.l,X		; 3F 5F 5F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$6040.w		; C0 40 60
	brk $18.b		; 00 18
	clv		; B8
	asl $0714.w		; 0E 14 07
	jsl $000043.l		; 22 43 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$F0E0.w		; E0 E0 F0
	beq  -6.b		; F0 FA
	plx		; FA
	jsr ($00FC.w,X)		; FC FC 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	cop $0C.b		; 02 0C
	brk $0F.b		; 00 0F
	tsb $17.b		; 04 17
	asl A		; 0A
	ora $08.b,X		; 15 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $03.b		; 00 03
	tsb $00.b		; 04 00
	asl A		; 0A
	brk $08.b		; 00 08
	cop $B4.b		; 02 B4
	lsr $68.b		; 46 68
	cpy $E870.w		; CC 70 E8
	ldy $E470.w,X		; BC 70 E4
	tya		; 98
	sec		; 38
	bit $F0.b		; 24 F0
	tsb $DC20.w		; 0C 20 DC
	cli		; 58
	brk $D0.b		; 00 D0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $98.b		; 00 98
	brk $20.b		; 00 20
	cpy #$0808.w		; C0 08 08
	cld		; D8
	clc		; 18
	cop $01.b		; 02 01
	ora $03.b		; 05 03
	phd		; 0B
	ora [$13.b]		; 07 13
	ora $270E17.l		; 0F 17 0E 27
	ora $1D2F.w,X		; 1D 2F 1D
	jmp $013B.w		; 4C 3B 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	brk $1D.b		; 00 1D
	brk $1D.b		; 00 1D
	brk $38.b		; 00 38
	ora $90.b,S		; 03 90
	lsr $BCF8.w,X		; 5E F8 BC
	jsr ($FC7C.w,X)		; FC 7C FC
	adc $F7F9F9.l,X		; 7F F9 F9 F7
	beq 120.b		; F0 78
	sed		; F8
	bne  -1.b		; D0 FF
	pla		; 68
	php		; 08
	clv		; B8
	brk $34.b		; 00 34
	cli		; 58
	pla		; 68
	bmi 118.b		; 30 76
	ldy #$A05F.w		; A0 5F A0
	eor [$A0.b],Y		; 57 A0
	bne  32.b		; D0 20
	ora $0E170D.l,X		; 1F 0D 17 0E
	ora ($0C.b,S),Y		; 13 0C
	and ($0C.b,S),Y		; 33 0C
	ror $4621.w,X		; 7E 21 46
	and $132C.w,Y		; 39 2C 13
	asl $0B.b,X		; 16 0B
	ora $0E00.w		; 0D 00 0E
	brk $0C.b		; 00 0C
	ora ($0C.b,X)		; 01 0C
	brk $21.b		; 00 21
	brk $39.b		; 00 39
	brk $13.b		; 00 13
	brk $0B.b		; 00 0B
	brk $7F.b		; 00 7F
	sbc $7EFFFF.l,X		; FF FF FF 7E
	sbc $FE3FDE.l,X		; FF DE 3F FE
	eor [$FF.b]		; 47 FF
	tad		; 5B
	lda [$11.b],Y		; B7 11
	lda [$12.b],Y		; B7 12
	rol $EEFF.w,X		; 3E FF EE
	ora $0EE71E.l,X		; 1F 1E E7 0E
	tsa		; 3B
	lsr $05.b		; 46 05
	eor $1002.w,Y		; 59 02 10
	eor #$4812.w		; 49 12 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $3F3E.w,X		; 3E 3E 3F
	and $7F7F7F.l,X		; 3F 7F 7F 7F
	adc $00FDC9.l,X		; 7F C9 FD 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	brk $2F.b		; 00 2F
	trb $3E5D.w		; 1C 5D 3E
	eor $893A.w,X		; 5D 3A 89
	ror $00.b,X		; 76 00
	cpy #$C080.w		; C0 80 C0
	brk $60.b		; 00 60
	rti		; 40

	rts		; 60

	bra  48.b		; 80 30
	cpx #$C030.w		; E0 30 C0
	clc		; 18
	beq  24.b		; F0 18
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$8040.w		; C0 40 80
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	beq  16.b		; F0 10
	cpx #$5000.w		; E0 00 50
	cpx #$60F0.w		; E0 F0 60
	bcs  64.b		; B0 40
	inx		; E8
	jsr $2078.w		; 20 78 20
	bit $1C18.w		; 2C 18 1C
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	bpl  32.b		; 10 20
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	and ($10.b,S),Y		; 33 10
	rol $11.b,X		; 36 11
	jmp ($7813.w,X)		; 7C 13 78
	and [$78.b]		; 27 78
	rol $F0.b		; 26 F0
	ora $4AF1.w		; 0D F1 4A
	lda $0C.b,S		; A3 0C
	brk $0B.b		; 00 0B
	cop $27.b		; 02 27
	bit $27.b		; 24 27
	jsr $080F.w		; 20 0F 08
	eor $505E40.l		; 4F 40 5E 50
	bit $7420.w,X		; 3C 20 74
	ora [$E8.b]		; 07 E8
	tsb $18D0.w		; 0C D0 18
	ldy #$4030.w		; A0 30 40
	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	sed		; F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	tsb $0C78.w		; 0C 78 0C
	bmi   4.b		; 30 04
	ldy $5886.w,X		; BC 86 58
	rep #$C0		; C2 C0
.ACCU 16
	rep #$64		; C2 64
	asl $D0.b		; 06 D0
	trb $08F8.w		; 1C F8 08
	beq   0.b		; F0 00
	sed		; F8
	brk $78.b		; 00 78
	brk $BC.b		; 00 BC
	bra  60.b		; 80 3C
	brk $F8.b		; 00 F8
	brk $E8.b		; 00 E8
	php		; 08
	brk $0C.b		; 00 0C
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($1E.b)		; 12 1E
	ora ($1F.b),Y		; 11 1F
	bpl  27.b		; 10 1B
	bpl  25.b		; 10 19
	bpl  25.b		; 10 19
	bpl  27.b		; 10 1B
	ora ($1E.b)		; 12 1E
	ora $1C.b,X		; 15 1C
	sbc $04.b		; E5 04
	sep #$02		; E2 02
	sbc ($01.b,X)		; E1 01
	cpx #$E000.w		; E0 00 E0
	brk $E1.b		; 00 E1
	ora ($E1.b,X)		; 01 E1
	brk $E3.b		; 00 E3
	brk $44.b		; 00 44
	inc $02.b		; E6 02
	cmp $5FA11B.l,X		; DF 1B A1 5F
	cpx #$5007.w		; E0 07 50
	and $78.b,S		; 23 78
	ora #$D83C.w		; 09 3C D8
	rol $3939.w,X		; 3E 39 39
	rts		; 60

	rts		; 60

	eor $001F41.l,X		; 5F 41 1F 00
	and $080F20.l		; 2F 20 0F 08
	ora [$04.b]		; 07 04
	ora $04.b		; 05 04
	jsl $FE80BF.l		; 22 BF 80 FE
	beq -68.b		; F0 BC
	rti		; 40

	cld		; D8
	cpy #$2010.w		; C0 10 20
	bvs   0.b		; 70 00
	cpx #$C000.w		; E0 00 C0
	rti		; 40

	rti		; 40

	trb $14.b		; 14 14
	bra   0.b		; 80 00
	rts		; 60

	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$80C0.w		; C0 C0 80
	bra  45.b		; 80 2D
	ora $1C2E.w,Y		; 19 2E 1C
	adc $5D0E.w,X		; 7D 0E 5D
	asl $0E1D.w		; 0E 1D 0E
	asl $1A01.w,X		; 1E 01 1A
	ora #$010E.w		; 09 0E 01
	ora $1C02.w,Y		; 19 02 1C
	ora ($0E.b,X)		; 01 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	tsb $00.b		; 04 00
	brk $D0.b		; 00 D0
	sec		; 38
	bne  88.b		; D0 58
	brk $98.b		; 00 98
	bra -104.b		; 80 98
	bra -112.b		; 80 90
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	jsr $2020.w		; 20 20 20
	brk $F0.b		; 00 F0
	bcc 112.b		; 90 70
	bpl  96.b		; 10 60
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $7B.b		; 00 7B
	ora [$0B.b]		; 07 0B
	ora $050707.l		; 0F 07 07 05
	ora [$05.b]		; 07 05
	ora [$02.b]		; 07 02
	ora $01.b,S		; 03 01
	ora ($1D.b,X)		; 01 1D
	ora ($00.b,X)		; 01 00
	ora [$09.b]		; 07 09
	ora [$05.b]		; 07 05
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $79.b		; 00 79
	inc $FEF9.w,X		; FE F9 FE
	sbc $FCFE.w,X		; FD FE FC
	inc $FFDC.w,X		; FE DC FF
	cpx $3EFE.w		; EC FE 3E
	sbc $79FF7E.l,X		; FF 7E FF 79
	sta $F1.b		; 85 F1
	sbc $FDF9.w,X		; FD F9 FD
	sbc $9CFD.w,Y		; F9 FD 9C
	cpx #$1DE1.w		; E0 E1 1D
	asl $3EFE.w,X		; 1E FE 3E
	sbc $5B1A27.l,X		; FF 27 1A 5B
	rol $AF.b,X		; 36 AF
	ror $ED.b,X		; 76 ED
	ror $55.b,X		; 76 55
	rol $0E3D.w		; 2E 3D 0E
	ora $0F0E.w,X		; 1D 0E 0F
	brk $1A.b		; 00 1A
	brk $36.b		; 00 36
	brk $76.b		; 00 76
	brk $76.b		; 00 76
	brk $2E.b		; 00 2E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $B7.b		; 00 B7
	sta $BA.b,X		; 95 BA
	lda #$AABB.w		; A9 BB AA
	sta $9988.w,Y		; 99 88 99
	bit #$949C.w		; 89 9C 94
	stz $8C94.w		; 9C 94 8C
	sty $95.b		; 84 95
	pha		; 48
	lda #$AA44.w		; A9 44 AA
	mvp $66,$88		; 44 88 66
	bit #$9466.w		; 89 66 94
	adc $94.b,S		; 63 94
	adc $84.b,S		; 63 84
	adc ($E2.b,S),Y		; 73 E2
	eor ($BA.b,S),Y		; 53 BA
	ora $6F.b,S		; 03 6F
	clc		; 18
	and $7F1E.w		; 2D 1E 7F
	brk $73.b		; 00 73
	and ($7F.b)		; 32 7F
	brk $72.b		; 00 72
	bit $004C.w		; 2C 4C 00
	tsb $40.b		; 04 40
	clc		; 18
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $32.b		; 00 32
	tsb $0000.w		; 0C 00 00
	bit $7E00.w		; 2C 00 7E
	bmi -10.b		; 30 F6
	trb $BC.b		; 14 BC
	pla		; 68
	ldy $D470.w,X		; BC 70 D4
	sec		; 38
	jsr ($AC18.w,X)		; FC 18 AC
	bpl  58.b		; 10 3A
	php		; 08
	bmi   0.b		; 30 00
	trb $08.b		; 14 08
	pla		; 68
	brk $70.b		; 00 70
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	beq -80.b		; F0 B0
	and $4302FA.l,X		; 3F FA 02 43
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$FD00.w		; C0 00 FD
	brk $BF.b		; 00 BF
	bra   6.b		; 80 06
	inc $5F20.w,X		; FE 20 5F
	ldy #$00D0.w		; A0 D0 00
	bne -128.b		; D0 80
	cpx #$D000.w		; E0 00 D0
	sta ($B1.b,X)		; 81 B1
	sbc ($83.b,S),Y		; F3 83
	ora #$A008.w		; 09 08 A0
	ldy #$2020.w		; A0 20 20
	jsr $0020.w		; 20 20 00
	brk $20.b		; 00 20
	jsr $0081.w		; 20 81 00
	.db $82, $01, $BF		; 82 01 BF
	and $FB1FBF.l		; 2F BF 1F FB
	eor $9FFF.w,X		; 5D FF 9F
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	bit $1E43.w		; 2C 43 1E
	eor $9F1E41.l,X		; 5F 41 1E 9F
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -96.b		; 80 A0
	cpy #$C060.w		; C0 60 C0
	bne  96.b		; D0 60
	bcs  96.b		; B0 60
	sed		; F8
	bcs  88.b		; B0 58
	jsr $0000.w		; 20 00 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $B0.b		; 00 B0
	brk $20.b		; 00 20
	bra  61.b		; 80 3D
	ora [$7E.b]		; 07 7E
	asl $2E.b,X		; 16 2E
	phx		; DA
	ldy $D498.w		; AC 98 D4
	php		; 08
	clv		; B8
	jsr $6040.w		; 20 40 60
	brk $C0.b		; 00 C0
	ora $06.b		; 05 06
	ora ($04.b)		; 12 04
	inc A		; 1A
	brk $58.b		; 00 58
	brk $E8.b		; 00 E8
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$E0E0.w		; C0 E0 E0
	beq 112.b		; F0 70
	sed		; F8
	cld		; D8
	sed		; F8
	sed		; F8
	bvs 112.b		; 70 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	cpy #$E070.w		; C0 70 E0
	cld		; D8
	bvs -88.b		; 70 A8
	bvc 112.b		; 50 70
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	asl $05.b		; 06 05
	tsb $1803.w		; 0C 03 18
	ora [$10.b]		; 07 10
	asl $30.b,X		; 16 30
	bit $0061.w		; 2C 61 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	php		; 08
	ora $000F00.l		; 0F 00 0F 00
	ora $C04C01.l,X		; 1F 01 4C C0
	dec A		; 3A
	ora $F4.b,S		; 03 F4
	ora [$C8.b]		; 07 C8
	ora $483EA0.l		; 0F A0 3E 48
	ror $FC90.w,X		; 7E 90 FC
	bvs -100.b		; 70 9C
	lda $01FD80.l,X		; BF 80 FD 01
	sed		; F8
	brk $F2.b		; 00 F2
	cop $D4.b		; 02 D4
	trb $84.b		; 14 84
	tsb $28.b		; 04 28
	plp		; 28
	php		; 08
	php		; 08
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	php		; 08
	clc		; 18
	ora ($30.b),Y		; 11 30
	ora [$7C.b]		; 07 7C
	asl $40.b		; 06 40
	jsr $44A1.w		; 20 A1 44
	inc $00.b		; E6 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F0B0B.l		; 0F 0B 0B 3F
	and $395F5F.l,X		; 3F 5F 5F 39
	and $0000.w,Y		; 39 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	rts		; 60

	brk $18.b		; 00 18
	clv		; B8
	asl $0714.w		; 0E 14 07
	jsl $BF2243.l		; 22 43 22 BF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$F0E0.w		; E0 E0 F0
	beq  -6.b		; F0 FA
	plx		; FA
	jsr ($40FC.w,X)		; FC FC 40
	rti		; 40

	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $FC.b		; 05 FC
	and ($FE.b,S),Y		; 33 FE
	ldy $87.b,X		; B4 87
	eor $26C1.w,X		; 5D C1 26
	cpx #$F889.w		; E0 89 F8
	cmp ($BE.b,X)		; C1 BE
	sbc ($6D.b,S),Y		; F3 6D
	wai		; CB
	php		; 08
	ora ($00.b,X)		; 01 00
	sei		; 78
	brk $BE.b		; 00 BE
	bra  95.b		; 80 5F
	rti		; 40

	stx $00.b		; 86 00
	bra 112.b		; 80 70
	adc ($9C.b,X)		; 61 9C
	bit $1418.w		; 2C 18 14
	php		; 08
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	cmp $40BF7F.l,X		; DF 7F BF 40
	bra -48.b		; 80 D0
	bmi -124.b		; 30 84
	jsr ($3F20.w,X)		; FC 20 3F
	iny		; C8
	ora $C00000.l		; 0F 00 00 C0
	brk $80.b		; 00 80
	brk $BF.b		; 00 BF
	brk $2F.b		; 00 2F
	jsr $484B.w		; 20 4B 48
	cmp ($13.b,S),Y		; D3 13
	pea $0004.w		; F4 04 00
	brk $00.b		; 00 00
	jsr ($FEF0.w,X)		; FC F0 FE
	tsb $07.b		; 04 07
	brk $03.b		; 00 03
	tsb $06.b		; 04 06
	cpy #$48C6.w		; C0 C6 48
	cpy $0000.w		; CC 00 00
	brk $00.b		; 00 00
	tsb $FA0C.w		; 0C 0C FA
	cop $FE.b		; 02 FE
	cop $F8.b		; 02 F8
	brk $3C.b		; 00 3C
	tsb $B0.b		; 04 B0
	bra   0.b		; 80 00
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	ora $0D.b,S		; 03 0D
	ora $3B.b,S		; 03 3B
	ora #$147D.w		; 09 7D 14
	ldx $6B52.w,Y		; BE 52 6B
	cmp $00.b		; C5 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $09.b		; 00 09
	tsb $14.b		; 04 14
	cop $52.b		; 02 52
	ora ($C5.b,X)		; 01 C5
	bpl   1.b		; 10 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($05.b,X)		; 01 05
	ora $06.b,S		; 03 06
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $0F.b		; 00 0F
	brk $30.b		; 00 30
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $6F.b		; 00 6F
	sty $EF.b,X		; 94 EF
	asl $AF.b,X		; 16 AF
	lsr $6D.b,X		; 56 6D
	ldy $6D.b,X		; B4 6D
	ldy $6D.b,X		; B4 6D
	lda $AC.b,X		; B5 AC
	stz $EC.b,X		; 74 EC
	stz $94.b,X		; 74 94
	brk $16.b		; 00 16
	brk $56.b		; 00 56
	brk $B4.b		; 00 B4
	cop $B4.b		; 02 B4
	cop $B5.b		; 02 B5
	cop $74.b		; 02 74
	ora $74.b,S		; 03 74
	ora $AC.b,S		; 03 AC
	bpl -48.b		; 10 D0
	rti		; 40

	rts		; 60

	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $10.b		; 00 10
	rti		; 40

	rti		; 40

	jsr $0080.w		; 20 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F0E0.w		; E0 E0 F0
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	beq  32.b		; F0 20
	cpx #$C0C0.w		; E0 C0 C0
	brk $00.b		; 00 00
	cpx #$5000.w		; E0 00 50
	cpx #$E0F0.w		; E0 F0 E0
	beq -32.b		; F0 E0
	bcc  96.b		; 90 60
	jsr $C0C0.w		; 20 C0 C0
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	cop $0B.b		; 02 0B
	asl $17.b		; 06 17
	asl $1E27.w		; 0E 27 1E
	rol $6E07.w,X		; 3E 07 6E
	ora [$4E.b]		; 07 4E
	ora [$00.b]		; 07 00
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	brk $1E.b		; 00 1E
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $14.b		; 00 14
	cmp [$E9.b]		; C7 E9
	jmp $1891.w		; 4C 91 18
	sbc $B1.b,S		; E3 B1
	sbc $C0.b,S		; E3 C0
	ldx $42.b		; A6 42
	sbc [$81.b]		; E7 81
	cmp #$7806.w		; C9 06 78
	rti		; 40

	bmi   0.b		; 30 00
	rts		; 60

	brk $81.b		; 00 81
	brk $C0.b		; 00 C0
	brk $42.b		; 00 42
	ora ($81.b,X)		; 01 81
	brk $06.b		; 00 06
	brk $58.b		; 00 58
	cpx #$F874.w		; E0 74 F8
	jsr ($9800.w,X)		; FC 00 98
	bcc  -8.b		; 90 F8
	brk $90.b		; 00 90
	rts		; 60

	bvs   0.b		; 70 00
	cpx #$E0C0.w		; E0 C0 E0
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	rts		; 60

	brk $00.b		; 00 00
	rts		; 60

	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	brk $02.b		; 00 02
	cmp $5FA11B.l,X		; DF 1B A1 5F
	cpx #$5007.w		; E0 07 50
	and $78.b,S		; 23 78
	ora #$F83C.w		; 09 3C F8
	inc $FF5C.w,X		; FE 5C FF
	rts		; 60

	rts		; 60

	eor $001F41.l,X		; 5F 41 1F 00
	and $080F20.l		; 2F 20 0F 08
	ora [$04.b]		; 07 04
	sbc $04.b,X		; F5 04
	phy		; 5A
	and ($80.b)		; 32 80
	inc $BCF0.w,X		; FE F0 BC
	rti		; 40

	cld		; D8
	cpy #$2010.w		; C0 10 20
	bvs   0.b		; 70 00
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	trb $14.b		; 14 14
	bra   0.b		; 80 00
	rts		; 60

	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$80C0.w		; C0 C0 80
	bra   0.b		; 80 00
	brk $39.b		; 00 39
	ora ($3D.b,X)		; 01 3D
	ora $1C3B.w,Y		; 19 3B 1C
	rol $261D.w		; 2E 1D 26
	tas		; 1B
	adc [$1B.b]		; 67 1B
	lda $8F43.w,X		; BD 43 8F
	bvs   1.b		; 70 01
	brk $19.b		; 00 19
	brk $1C.b		; 00 1C
	ora ($1C.b,X)		; 01 1C
	ora ($1A.b,X)		; 01 1A
	ora ($1B.b,X)		; 01 1B
	brk $40.b		; 00 40
	ora [$70.b]		; 07 70
	brk $1D.b		; 00 1D
	plx		; FA
	adc $FFFFFF.l,X		; 7F FF FF FF
	inc $FFFF.w,X		; FE FF FF
	inc $FFFD.w,X		; FE FD FF
	inc $7EFF.w,X		; FE FF 7E
	sbc $0FE618.l,X		; FF 18 E6 0F
	sed		; F8
	rol $7EFF.w,X		; 3E FF 7E
	sbc $BDFF7C.l,X		; FF 7C FF BD
	ror $9D6A.w,X		; 7E 6A 9D
	dec A		; 3A
	sbc $17.b		; E5 17
	asl $0E17.w		; 0E 17 0E
	ora $081900.l,X		; 1F 00 19 08
	ora $040D00.l		; 0F 00 0D 04
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	asl $0E00.w		; 0E 00 0E
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	asl $00.b		; 06 00
	brk $04.b		; 00 04
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $5F.b		; 00 5F
	sec		; 38
	tsx		; BA
	jmp ($3CDA.w,X)		; 7C DA 3C
	phx		; DA
	bit $1CAA.w,X		; 3C AA 1C
	ldx $1A00.w,Y		; BE 00 1A
	php		; 08
	asl $3808.w,X		; 1E 08 38
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	tsb $08.b		; 04 08
	brk $FE.b		; 00 FE
	ror $98F8.w,X		; 7E F8 98
	sbc $AFBFC0.l,X		; FF C0 BF AF
	stz $C693.w		; 9C 93 C6
	eor $C3.b		; 45 C3
	.db $42, $E3		; 42 E3
	lda ($7E.b,X)		; A1 7E
	rts		; 60

	tya		; 98
	bpl -64.b		; 10 C0
	brk $AF.b		; 00 AF
	rti		; 40

	sta ($60.b,S),Y		; 93 60
	eor $38.b		; 45 38
	.db $42, $3C		; 42 3C
	ldy #$F01C.w		; A0 1C F0
	inx		; E8
	sed		; F8
	bvs -36.b		; 70 DC
	beq  -4.b		; F0 FC
	bmi -88.b		; 30 A8
	asl $B0.b,X		; 16 B0
	txa		; 8A
	adc $3E7D5F.l,X		; 7F 5F 7D 3E
	ldy #$D060.w		; A0 60 D0
	jsr $2050.w		; 20 50 20
	bmi   0.b		; 30 00
	brk $50.b		; 00 50
	sty $44.b		; 84 44
	eor $BF3890.l		; 4F 90 38 BF
	sbc $FF773F.l,X		; FF 3F 77 FF
	eor $A101DF.l		; 4F DF 01 A1
	bra -64.b		; 80 C0
	rti		; 40

	cpy #$C040.w		; C0 40 C0
	cpy #$0CC0.w		; C0 C0 0C
	and $2F0F30.l,X		; 3F 30 0F 2F
	jsr $4041.w		; 20 41 40
	bra   0.b		; 80 00
	rti		; 40

	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra -106.b		; 80 96
	phy		; 5A
	dec $5A.b,X		; D6 5A
	inc $3A.b,X		; F6 3A
	rol $0702.w,X		; 3E 02 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5A.b		; 00 5A
	and ($5A.b,X)		; 21 5A
	and ($3A.b,X)		; 21 3A
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3B.b		; 00 3B
	and #$021E.w		; 29 1E 02
	and $5904.w,X		; 3D 04 59
	sec		; 38
	sty $007C.w		; 8C 7C 00
	sbc $000700.l,X		; FF 00 07 00
	brk $28.b		; 00 28
	cpy $01.b		; C4 01
	cpx #$C003.w		; E0 03 C0
	and [$A0.b]		; 27 A0
	adc ($70.b,S),Y		; 73 70
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  31.b		; 10 1F
	stz $07.b		; 64 07
	sbc $FF01.w,Y		; F9 01 FF
	brk $3F.b		; 00 3F
	brk $F3.b		; 00 F3
	beq   2.b		; F0 02
	inc $0F01.w,X		; FE 01 0F
	sbc #$FA09.w		; E9 09 FA
	cop $FE.b		; 02 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $0F.b		; 00 0F
	brk $0D.b		; 00 0D
	tsb $0202.w		; 0C 02 02
	php		; 08
	inc $7E40.w,X		; FE 40 7E
	bne  28.b		; D0 1C
	beq   6.b		; F0 06
	stz $06.b,X		; 74 06
	sty $86.b		; 84 86
	iny		; C8
	tsb $38A0.w		; 0C A0 38
	sty $94.b,X		; 94 94
	ldy #$E820.w		; A0 20 E8
	php		; 08
	jsr ($F804.w,X)		; FC 04 F8
	brk $78.b		; 00 78
	brk $F0.b		; 00 F0
	brk $D0.b		; 00 D0
	bpl   0.b		; 10 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora [$02.b]		; 07 02
	ora [$07.b]		; 07 07
	ora $071B0B.l		; 0F 0B 1B 07
	ora [$00.b],Y		; 17 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($06.b,X)		; 01 06
	ora ($0C.b,X)		; 01 0C
	ora $3C.b,S		; 03 3C
	ora $FE.b,S		; 03 FE
	sbc $FD7F.w,Y		; F9 7F FD
	inc $DBDC.w,X		; FE DC DB
	phx		; DA
	sbc ($FF.b),Y		; F1 FF
	cpx $F9.b		; E4 F9
	inc $F8.b,X		; F6 F8
	ora ($00.b,X)		; 01 00
	sed		; F8
	brk $6C.b		; 00 6C
	beq  93.b		; F0 5D
	beq -54.b		; F0 CA
	pea $C0B1.w		; F4 B1 C0
	inc $96.b		; E6 96
	eor [$B7.b]		; 47 B7
.ACCU 8
.INDEX 8
	sep #$FB		; E2 FB
	bra  -2.b		; 80 FE
	tad		; 5B
	adc $1DBB.w		; 6D BB 1D
	lda [$1B.b],Y		; B7 1B
	lda [$1B.b],Y		; B7 1B
	beq  47.b		; F0 2F
	ror $9C91.w		; 6E 91 9C
	clc		; 18
	cpx #$20.b		; E0 20
	cmp $DD00.w		; CD 00 DD
	brk $DB.b		; 00 DB
	cop $59.b		; 02 59
	cop $20.b		; 02 20
	brk $0E.b		; 00 0E
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	jsr ($CFC8.w,X)		; FC C8 CF
	dec $C3C0.w,X		; DE C0 C3
	cpy #$51.b		; C0 51
	sbc ($00.b),Y		; F1 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra 116.b		; 80 74
	sty $FF.b		; 84 FF
	bra 127.b		; 80 7F
	bra 110.b		; 80 6E
	ldy #$1E.b		; A0 1E
	ora ($26.b,X)		; 01 26
	ora $364B.w,Y		; 19 4B 36
	eor $2E.b,X		; 55 2E
	sta $5CBA6D.l,X		; 9F 6D BA 5C
	ror $942A.w		; 6E 2A 94
	cli		; 58
	brk $03.b		; 00 03
	clc		; 18
	ora ($36.b,X)		; 01 36
	brk $2E.b		; 00 2E
	brk $6D.b		; 00 6D
	brk $5C.b		; 00 5C
	ora ($2A.b,X)		; 01 2A
	ora ($58.b),Y		; 11 58
	and $FF.b,S		; 23 FF
	sbc $FFFF.w,X		; FD FF FF
	plx		; FA
	adc $7F9FFE.l,X		; 7F FE 9F 7F
	lsr $547F.w		; 4E 7F 54
	adc $4A6E4B.l		; 6F 4B 6E 4A
	cmp $6B3E.w,Y		; D9 3E 6B
	jmp.w [$6D3A]		; DC 3A 6D
	stz $4C13.w		; 9C 13 4C
	txa		; 8A
	mvn $4B,$84		; 54 84 4B
	bcc  74.b		; 90 4A
	sta ($10.b),Y		; 91 10
	beq -128.b		; F0 80
	ora ($C4.b,X)		; 01 C4
	sta [$E0.b]		; 87 E0
	ldy $20C0.w,X		; BC C0 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $017F20.l		; 2F 20 7F 01
	clv		; B8
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
	cpy #$40.b		; C0 40
	ror $0FCC.w,X		; 7E CC 0F
	sty $FC.b		; 84 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sbc ($02.b)		; F2 02
	phk		; 4B
	pha		; 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	rti		; 40

	bra  32.b		; 80 20
	cpy #$90.b		; C0 90
	rts		; 60

	dey		; 88
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $C8.b		; 00 C8
	bcs  72.b		; B0 48
	bmi 104.b		; 30 68
	bvc  48.b		; 50 30
	php		; 08
	bmi  24.b		; 30 18
	beq  60.b		; F0 3C
	iny		; C8
	cpy $8C88.w		; CC 88 8C
	bcs   0.b		; B0 00
	bmi -128.b		; 30 80
	bvc -128.b		; 50 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	php		; 08
	php		; 08
	bmi   0.b		; 30 00
	bvs   0.b		; 70 00
	eor ($E0.b)		; 52 E0
	jsr $44E0.w		; 20 E0 44
	cmp $49.b,X		; D5 49
	sbc $276806.l		; EF 06 68 27
	pla		; 68
	and ($7C.b,X)		; 21 7C
	tsb $1F3E.w		; 0C 3E 1F
	ora $3A1F1F.l,X		; 1F 1F 1F 3A
	dec A		; 3A
	bpl  16.b		; 10 10
	and [$30.b],Y		; 37 30
	ora [$10.b],Y		; 17 10
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	phd		; 0B
	eor [$0A.b],Y		; 57 0A
	lda $B0FEA0.l		; AF A0 FE B0
	jmp.w [$7890]		; DC 90 78
	iny		; C8
	tsb $38E0.w		; 0C E0 38
	cpy #$30.b		; C0 30
	sed		; F8
	sed		; F8
	bvc  80.b		; 50 50
	tsb $04.b		; 04 04
	cpy #$80.b		; C0 80
	ldy #$40.b		; A0 40
	beq   0.b		; F0 00
	bne  16.b		; D0 10
	cpx #$20.b		; E0 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$1F.b]		; 07 1F
	bpl  48.b		; 10 30
	rol $60.b		; 26 60
	eor $A016C0.l		; 4F C0 16 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1F1F0F.l		; 0F 0F 1F 1F
	and $7F7F3F.l,X		; 3F 3F 7F 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	sei		; 78
	php		; 08
	tsb $0634.w		; 0C 34 06
	eor ($07.b)		; 52 07
	asl $AF.b,X		; 16 AF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	beq -16.b		; F0 F0
	sed		; F8
	sed		; F8
	jsr ($F0FC.w,X)		; FC FC F0
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
	brk $1F.b		; 00 1F
	and $1B.b,S		; 23 1B
	adc #$29.b		; 69 29
	rts		; 60

	eor $06C4.w		; 4D C4 06
	bra  80.b		; 80 50
	jmp.w [$7000]		; DC 00 70
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	php		; 08
	ora $10.b		; 05 10
	asl $34.b		; 06 34
	cop $78.b		; 02 78
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F4.b		; 00 F4
	sbc $F8F0.w,Y		; F9 F0 F8
	sed		; F8
	sbc $B43FF9.l,X		; FF F9 3F B4
	jsr ($F9B0.w,X)		; FC B0 F9
	sbc $FFFF.w,Y		; F9 FF FF
	sbc $B77797.l,X		; FF 97 77 B7
	adc [$D0.b],Y		; 77 D0
	sec		; 38
	sec		; 38
	cpy #$83.b		; C0 83
	adc ($B6.b,S),Y		; 73 B6
	ror $B8.b,X		; 76 B8
	adc $3FDE.w,Y		; 79 DE 3F
	sta ($29.b)		; 92 29
	cmp ($41.b)		; D2 41
	adc ($9D.b,X)		; 61 9D
	ora $616F.w		; 0D 6F 61
	lda ($E1.b),Y		; B1 E1
	lda $40A1E1.l,X		; BF E1 A1 40
	cpy #$0E.b		; C0 0E
	ror $2E4E.w		; 6E 4E 2E
	ora $02.b,S		; 03 02
	sta ($90.b),Y		; 91 90
	and $C0214E.l		; 2F 4E 21 C0
	and ($C0.b,X)		; 21 C0
	rti		; 40

	bra -121.b		; 80 87
	sed		; F8
	sbc $FDDFFB.l,X		; FF FB DF FD
	sbc $FEEFFE.l,X		; FF FE EF FE
	clv		; B8
	sed		; F8
	bvs -16.b		; 70 F0
	cpx #$E0.b		; E0 E0
	bra   0.b		; 80 00
	xce		; FB
	brk $CD.b		; 00 CD
	bit $FE60.w,X		; 3C 60 FE
	inc $38F0.w		; EE F0 38
	cpy #$10.b		; C0 10
	cpx #$E0.b		; E0 E0
	brk $CC.b		; 00 CC
	mvn $28,$B8		; 54 B8 28
	cli		; 58
	plp		; 28
	bmi  16.b		; 30 10
	bmi  16.b		; 30 10
	clc		; 18
	brk $07.b		; 00 07
	clc		; 18
	ora [$1F.b]		; 07 1F
	mvn $28,$23		; 54 23 28
	eor [$28.b]		; 47 28
	ora [$10.b]		; 07 10
	ora $000F10.l		; 0F 10 0F 00
	ora [$08.b]		; 07 08
	php		; 08
	php		; 08
	php		; 08
	ror $22.b		; 66 22
	inc $A2.b		; E6 A2
	sbc [$A5.b]		; E7 A5
	cmp [$85.b]		; C7 85
	cmp [$45.b]		; C7 45
	cmp [$45.b]		; C7 45
	sta [$04.b]		; 87 04
	sbc $992201.l,X		; FF 01 22 99
	ldx #$19.b		; A2 19
	lda $18.b		; A5 18
	sta $38.b		; 85 38
	eor $38.b		; 45 38
	eor $38.b		; 45 38
	tsb $78.b		; 04 78
	brk $00.b		; 00 00
	asl $2601.w,X		; 1E 01 26
	ora $364B.w,Y		; 19 4B 36
	eor $2E.b,X		; 55 2E
	sta $5CBA6D.l,X		; 9F 6D BA 5C
	ror $942A.w		; 6E 2A 94
	cli		; 58
	brk $03.b		; 00 03
	clc		; 18
	ora ($36.b,X)		; 01 36
	brk $2E.b		; 00 2E
	brk $6D.b		; 00 6D
	brk $5C.b		; 00 5C
	ora ($2A.b,X)		; 01 2A
	ora ($58.b),Y		; 11 58
	and $FF.b,S		; 23 FF
	sbc $FFFF.w,X		; FD FF FF
	plx		; FA
	adc $7F9FFE.l,X		; 7F FE 9F 7F
	lsr $547F.w		; 4E 7F 54
	adc $4A6E4B.l		; 6F 4B 6E 4A
	cmp $6B3E.w,Y		; D9 3E 6B
	jmp.w [$6D3A]		; DC 3A 6D
	stz $4C13.w		; 9C 13 4C
	txa		; 8A
	mvn $4B,$84		; 54 84 4B
	bcc  74.b		; 90 4A
	sta ($00.b),Y		; 91 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora $03.b,S		; 03 03
	ora [$05.b]		; 07 05
	ora $0B03.w		; 0D 03 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	asl $01.b		; 06 01
	bit $FE03.w,X		; 3C 03 FE
	sbc $FEBF.w,Y		; F9 BF FE
	sbc $ED6DEE.l,X		; FF EE 6D ED
	sed		; F8
	sbc $FBFCFA.l,X		; FF FA FC FB
	jsr ($0001.w,X)		; FC 01 00
	sed		; F8
	brk $B6.b		; 00 B6
	sei		; 78
	ldx $6578.w		; AE 78 65
	plx		; FA
	cli		; 58
	cpx #$73.b		; E0 73
	wai		; CB
	and $DB.b,S		; 23 DB
.ACCU 8
.INDEX 8
	sep #$FB		; E2 FB
	bra  -2.b		; 80 FE
	sbc $7DF6.w		; ED F6 7D
	rol $0DDB.w		; 2E DB 0D
	stp		; DB
	sta $9778.w		; 8D 78 97
	and [$48.b],Y		; 37 48
	stz $E018.w		; 9C 18 E0
	jsr $0066.w		; 20 66 00
	dec $6D00.w		; CE 00 6D
	ora ($AC.b,X)		; 01 AC
	ora ($10.b,X)		; 01 10
	brk $87.b		; 00 87
	sta [$05.b]		; 87 05
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora [$C3.b]		; 07 C3
	cmp $E1.b,S		; C3 E1
	sbc ($E1.b,X)		; E1 E1
	sbc ($21.b,X)		; E1 21
	sbc ($63.b),Y		; F1 63
	sbc ($05.b,S),Y		; F3 05
	cop $07.b		; 02 07
	cop $06.b		; 02 06
	ora ($C3.b,X)		; 01 C3
	ora ($A1.b,X)		; 01 A1
	rti		; 40

	sbc ($40.b,X)		; E1 40
	and ($40.b,X)		; 21 40
	.db $42, $01		; 42 01
	bpl  24.b		; 10 18
	brk $98.b		; 00 98
	rts		; 60

	beq   0.b		; F0 00
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	beq -112.b		; F0 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($E0.b)		; 52 E0
	jsr $44E0.w		; 20 E0 44
	cmp $49.b,X		; D5 49
	sbc $276806.l		; EF 06 68 27
	pla		; 68
	and ($7C.b,X)		; 21 7C
	tsb $1F3E.w		; 0C 3E 1F
	ora $3A1F1F.l,X		; 1F 1F 1F 3A
	dec A		; 3A
	bpl  16.b		; 10 10
	and [$30.b],Y		; 37 30
	ora [$10.b],Y		; 17 10
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	rti		; 40

	bra  32.b		; 80 20
	cpy #$90.b		; C0 90
	rts		; 60

	dey		; 88
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $C8.b		; 00 C8
	bcs  72.b		; B0 48
	bmi 104.b		; 30 68
	bvc  48.b		; 50 30
	php		; 08
	bmi  24.b		; 30 18
	beq  60.b		; F0 3C
	iny		; C8
	cpy $8C88.w		; CC 88 8C
	bcs   0.b		; B0 00
	bmi -128.b		; 30 80
	bvc -128.b		; 50 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	php		; 08
	php		; 08
	bmi   0.b		; 30 00
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$1F.b]		; 07 1F
	bpl  48.b		; 10 30
	rol $60.b		; 26 60
	eor $A016C0.l		; 4F C0 16 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1F1F0F.l		; 0F 0F 1F 1F
	and $7F7F3F.l,X		; 3F 3F 7F 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	sei		; 78
	php		; 08
	tsb $0634.w		; 0C 34 06
	eor ($07.b)		; 52 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	beq -16.b		; F0 F0
	sed		; F8
	sed		; F8
	jsr ($0BFC.w,X)		; FC FC 0B
	eor [$0A.b],Y		; 57 0A
	lda $B0FEA0.l		; AF A0 FE B0
	jmp.w [$7890]		; DC 90 78
	iny		; C8
	tsb $38E0.w		; 0C E0 38
	cpy #$30.b		; C0 30
	sed		; F8
	sed		; F8
	bvc  80.b		; 50 50
	tsb $04.b		; 04 04
	cpy #$80.b		; C0 80
	ldy #$40.b		; A0 40
	beq   0.b		; F0 00
	bne  16.b		; D0 10
	cpx #$20.b		; E0 20
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $003C.w,X		; 3C 3C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	brk $E0.b		; 00 E0
	ldy #$F0.b		; A0 F0
	bcs -16.b		; B0 F0
	bcs -16.b		; B0 F0
	beq -16.b		; F0 F0
	beq -112.b		; F0 90
	beq -32.b		; F0 E0
	cpx #$E0.b		; E0 E0
	cpx #$A0.b		; E0 A0
	cpy #$30.b		; C0 30
	cpx #$90.b		; E0 90
	rts		; 60

	bvs -128.b		; 70 80
	bne -32.b		; D0 E0
	bpl -32.b		; 10 E0
	jsr $E0C0.w		; 20 C0 E0
	cpy #$E0.b		; C0 E0
	cpx #$E0.b		; E0 E0
	brk $E0.b		; 00 E0
	cpy #$E0.b		; C0 E0
	brk $80.b		; 00 80
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra -32.b		; 80 E0
	cpy #$00.b		; C0 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $CC.b		; 00 CC
	mvn $28,$B8		; 54 B8 28
	cli		; 58
	plp		; 28
	bmi  16.b		; 30 10
	bmi  16.b		; 30 10
	clc		; 18
	brk $07.b		; 00 07
	clc		; 18
	ora [$1F.b]		; 07 1F
	mvn $28,$23		; 54 23 28
	eor [$28.b]		; 47 28
	ora [$10.b]		; 07 10
	ora $000F10.l		; 0F 10 0F 00
	ora [$08.b]		; 07 08
	php		; 08
	php		; 08
	php		; 08
	ror $22.b		; 66 22
	inc $A2.b		; E6 A2
	sbc [$A5.b]		; E7 A5
	cmp [$85.b]		; C7 85
	cmp [$45.b]		; C7 45
	cmp [$45.b]		; C7 45
	sta [$04.b]		; 87 04
	sbc $992201.l,X		; FF 01 22 99
	ldx #$19.b		; A2 19
	lda $18.b		; A5 18
	sta $38.b		; 85 38
	eor $38.b		; 45 38
	eor $38.b		; 45 38
	tsb $78.b		; 04 78
	brk $00.b		; 00 00
	ora $340D11.l		; 0F 11 0D 34
	trb $30.b		; 14 30
	rol $62.b		; 26 62
	ora $40.b,S		; 03 40
	plp		; 28
	ror $3800.w		; 6E 00 38
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	tsb $02.b		; 04 02
	php		; 08
	ora $1A.b,S		; 03 1A
	ora ($3C.b,X)		; 01 3C
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DA.b		; 00 DA
	jsr ($FCF8.w,X)		; FC F8 FC
	jsr ($DC7F.w,X)		; FC 7F DC
	and $387E5A.l,X		; 3F 5A 7E 38
	bit $3F38.w,X		; 3C 38 3F
	and $BB4B3F.l,X		; 3F 3F 4B BB
	tad		; 5B
	tyx		; BB
	pla		; 68
	trb $601C.w		; 1C 1C 60
	eor ($39.b,X)		; 41 39
	pld		; 2B
	tas		; 1B
	plp		; 28
	clc		; 18
	and [$0F.b],Y		; 37 0F
	eor #$94.b		; 49 94
	adc #$20.b		; 69 20
	bmi -50.b		; 30 CE
	stx $B7.b		; 86 B7
	bpl 104.b		; 10 68
	sei		; 78
	sbc $D0F0F0.l		; EF F0 F0 D0
	beq -121.b		; F0 87
	lda [$A7.b],Y		; B7 A7
	sta [$01.b],Y		; 97 01
	ora ($48.b,X)		; 01 48
	pha		; 48
	sta [$B7.b]		; 87 B7
	php		; 08
	bvs -112.b		; 70 90
	cpx #$90.b		; E0 90
	cpx #$43.b		; E0 43
	cld		; D8
	ora $9B.b,X		; 15 9B
	lsr $C9.b		; 46 C9
	ora ($CE.b,X)		; 01 CE
	plp		; 28
	cpx $EC08.w		; EC 08 EC
	trb $3C.b		; 14 3C
	php		; 08
	sec		; 38
	bvs  16.b		; 70 10
	adc $00.b,S		; 63 00
	and ($00.b),Y		; 31 00
	ply		; 7A
	lsr A		; 4A
	ora ($00.b,S),Y		; 13 00
	and [$24.b],Y		; 37 24
	phd		; 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	ora $0D.b		; 05 0D
	ora $0B.b,S		; 03 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	asl $01.b		; 06 01
	asl $FF01.w,X		; 1E 01 FF
	jsr ($FEBF.w,X)		; FC BF FE
	sbc $ED6DEE.l,X		; FF EE 6D ED
	sed		; F8
	sbc $FBFCF2.l,X		; FF F2 FC FB
	jsr ($0000.w,X)		; FC 00 00
	jsr ($B600.w,X)		; FC 00 B6
	sei		; 78
	ldx $6578.w		; AE 78 65
	plx		; FA
	cli		; 58
	cpx #$73.b		; E0 73
	wai		; CB
	and $DB.b,S		; 23 DB
	adc ($FD.b),Y		; 71 FD
	rti		; 40

	sbc $5DB6AD.l,X		; FF AD B6 5D
	asl $0DDB.w		; 0E DB 0D
	stp		; DB
	sta $9778.w		; 8D 78 97
	and [$48.b],Y		; 37 48
	dec $700C.w		; CE 0C 70
	bpl 102.b		; 10 66
	brk $EE.b		; 00 EE
	brk $6D.b		; 00 6D
	ora ($AC.b,X)		; 01 AC
	ora ($10.b,X)		; 01 10
	brk $87.b		; 00 87
	sta [$00.b]		; 87 00
	bra   0.b		; 80 00
	brk $E0.b		; 00 E0
	sbc $E0F8BB.l,X		; FF BB F8 E0
	cpx #$F8.b		; E0 F8
	sed		; F8
	rts		; 60

	sbc $00FF20.l,X		; FF 20 FF 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $A7.b		; 00 A7
	rti		; 40

	lda $40E740.l,X		; BF 40 E7 40
	and $40205F.l,X		; 3F 5F 20 40
	ora [$00.b]		; 07 00
	phd		; 0B
	tsb $13.b		; 04 13
	ora $1B26.w		; 0D 26 1B
	eor $324936.l		; 4F 36 49 32
	tda		; 7B
	ora #$36.b		; 09 36
	trb $00.b		; 14 00
	ora ($04.b,X)		; 01 04
	brk $0D.b		; 00 0D
	brk $1B.b		; 00 1B
	brk $36.b		; 00 36
	brk $32.b		; 00 32
	tsb $09.b		; 04 09
	tsb $14.b		; 04 14
	ora #$7F.b		; 09 7F
	inc $FF7F.w,X		; FE 7F FF
	sbc $FF3F.w,X		; FD 3F FF
	eor $3FA7BF.l		; 4F BF A7 3F
	rol A		; 2A
	and [$25.b],Y		; 37 25
	and [$25.b],Y		; 37 25
	jmp ($359F.w)		; 6C 9F 35
	inc $361D.w		; EE 1D 36
	lsr $A609.w		; 4E 09 A6
	eor $2A.b		; 45 2A
.ACCU 16
	rep #$25		; C2 25
	iny		; C8
	and $C8.b		; 25 C8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$1F.b]		; 07 1F
	bpl  48.b		; 10 30
	rol $60.b		; 26 60
	eor $A016C0.l		; 4F C0 16 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1F1F0F.l		; 0F 0F 1F 1F
	and $7F7F3F.l,X		; 3F 3F 7F 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	sei		; 78
	php		; 08
	tsb $0634.w		; 0C 34 06
	eor ($07.b)		; 52 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	beq -16.b		; F0 F0
	sed		; F8
	sed		; F8
	jsr ($00FC.w,X)		; FC FC 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $F00FC9.l,X		; FF C9 0F F0
	brk $71.b		; 00 71
	adc $00FF00.l,X		; 7F 00 FF 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F6.b		; 00 F6
	asl $FF.b		; 06 FF
	brk $8E.b		; 00 8E
	asl $C0C0.w		; 0E C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	adc ($03.b,S),Y		; 73 03
	ora $C3C300.l,X		; 1F 00 C3 C3
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($FF00.w,X)		; FC 00 FF
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7E.b		; 00 7E
	stx $AE7E.w		; 8E 7E AE
	ldy $DE6E.w,X		; BC 6E DE
	ror $00F0.w		; 6E F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $AE00.w		; 0E 00 AE
	stx $0E60.w		; 8E 60 0E
	ror $0000.w		; 6E 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	bra  96.b		; 80 60
	bra -96.b		; 80 A0
	rti		; 40

	bcc  96.b		; 90 60
	iny		; C8
	bcs  68.b		; B0 44
	sec		; 38
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	rti		; 40

	brk $60.b		; 00 60
	brk $B0.b		; 00 B0
	brk $38.b		; 00 38
	bra  98.b		; 80 62
	jmp $B42C12.l		; 5C 12 2C B4
	tay		; A8
	php		; 08
	sty $98.b,X		; 94 98
	trb $F8.b		; 14 F8
	lsr $26E4.w		; 4E E4 26
	cpy $C6.b		; C4 C6
	jmp $C02C80.l		; 5C 80 2C C0
	tay		; A8
	rti		; 40

	bcc  96.b		; 90 60
	bpl  96.b		; 10 60
	mvp $18,$04		; 44 04 18
	brk $38.b		; 00 38
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	inc $FFBF.w,X		; FE BF FF
	tda		; 7B
	xce		; FB
	sbc ($F3.b),Y		; F1 F3
	and $0F0F3F.l,X		; 3F 3F 0F 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $0D00.w,X		; FE 00 0D
	inc $FE33.w,X		; FE 33 FE
	sbc ($3E.b,X)		; E1 3E
	tsa		; 3B
	tsb $000F.w		; 0C 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $340D11.l		; 0F 11 0D 34
	trb $30.b		; 14 30
	rol $62.b		; 26 62
	ora $40.b,S		; 03 40
	plp		; 28
	ror $3800.w		; 6E 00 38
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	tsb $02.b		; 04 02
	php		; 08
	ora $1A.b,S		; 03 1A
	ora ($3C.b,X)		; 01 3C
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DA.b		; 00 DA
	jsr ($FCF8.w,X)		; FC F8 FC
	jsr ($FC7F.w,X)		; FC 7F FC
	ora $587E5A.l,X		; 1F 5A 7E 58
	jmp ($7F7C.w,X)		; 7C 7C 7F
	adc $BB4B7F.l,X		; 7F 7F 4B BB
	tad		; 5B
	tyx		; BB
	pla		; 68
	trb $601C.w		; 1C 1C 60
	eor ($39.b,X)		; 41 39
	tad		; 5B
	tsa		; 3B
	jmp $1F6F3C.l		; 5C 3C 6F 1F
	eor #$6994.w		; 49 94 69
	jsr $CE30.w		; 20 30 CE
	stx $B7.b		; 86 B7
	bpl 104.b		; 10 68
	bvc  -1.b		; 50 FF
	beq -48.b		; F0 D0
	ldy #$E0.b		; A0 E0
	sta [$B7.b]		; 87 B7
	lda [$97.b]		; A7 97
	ora ($01.b,X)		; 01 01
	pha		; 48
	pha		; 48
	sta [$B7.b]		; 87 B7
	bpl  96.b		; 10 60
	bpl -32.b		; 10 E0
	jsr $40C0.w		; 20 C0 40
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $62.b		; 00 62
	bit $6E.b		; 24 6E
	rol A		; 2A
	bit $18.b,X		; 34 18
	bit $1C14.w		; 2C 14 1C
	tsb $0C.b		; 04 0C
	brk $03.b		; 00 03
	tsb $0F03.w		; 0C 03 0F
	bit $19.b		; 24 19
	rol A		; 2A
	ora ($18.b),Y		; 11 18
	ora $14.b,S		; 03 14
	ora $04.b,S		; 03 04
	ora $00.b,S		; 03 00
	ora $04.b,S		; 03 04
	tsb $04.b		; 04 04
	tsb $32.b		; 04 32
	and ($33.b,X)		; 21 33
	jsl $735273.l		; 22 73 52 73
	eor ($61.b)		; 52 61
	eor ($61.b,X)		; 41 61
	eor ($E1.b,X)		; 41 E1
	ora ($FF.b,X)		; 01 FF
	cpy #$21.b		; C0 21
	cpy $CC22.w		; CC 22 CC
	eor ($8C.b)		; 52 8C
	eor ($8C.b)		; 52 8C
	eor ($9E.b,X)		; 41 9E
	eor ($9E.b,X)		; 41 9E
	ora ($1E.b,X)		; 01 1E
	brk $00.b		; 00 00
	ldy $C0.b		; A4 C0
	rti		; 40

	cmp ($89.b,X)		; C1 89
	plb		; AB
	sta ($DF.b,S),Y		; 93 DF
	ora $4FD0.w		; 0D D0 4F
	bne  67.b		; D0 43
	sed		; F8
	ora $3F7C.w,Y		; 19 7C 3F
	and $743E3E.l,X		; 3F 3E 3E 74
	stz $21.b,X		; 74 21
	and ($6F.b,X)		; 21 6F
	rts		; 60

	and $080F20.l		; 2F 20 0F 08
	ora [$04.b]		; 07 04
	asl $AF.b,X		; 16 AF
	trb $5E.b		; 14 5E
	rti		; 40

	jsr ($B860.w,X)		; FC 60 B8
	jsr $90F0.w		; 20 F0 90
	clc		; 18
	cpy #$70.b		; C0 70
	bra  96.b		; 80 60
	beq -16.b		; F0 F0
	ldy #$A0.b		; A0 A0
	php		; 08
	php		; 08
	bra   0.b		; 80 00
	rti		; 40

	bra -32.b		; 80 E0
	brk $A0.b		; 00 A0
	jsr $40C0.w		; 20 C0 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $40.b		; 00 40
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
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	php		; 08
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bra   0.b		; 80 00
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
	brk $02.b		; 00 02
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
	bra   0.b		; 80 00
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0008.w		; 20 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $40.b		; 00 40
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
	brk $28.b		; 00 28
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cop $00.b		; 02 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	bmi  32.b		; 30 20
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
	php		; 08
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $08.b		; 00 08
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
	jsr $0000.w		; 20 00 00
	ora ($02.b,X)		; 01 02
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
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bpl   0.b		; 10 00
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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	ora ($00.b)		; 12 00
	bpl   0.b		; 10 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $10.b		; 00 10
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $02.b		; 00 02
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	jsr $0004.w		; 20 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	.db $00		; Opcode 00 overrunning bank boundry at 14FFFE. Skipping.
	.db $00		; Opcode 00 overrunning bank boundry at 14FFFF. Skipping.
.ENDS
