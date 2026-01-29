.BANK 32 SLOT 0
.ORG $0000

.SECTION "Bank32" FORCE

	inc $21.b		; E6 21
	cpx #$00.b		; E0 00
	bvc   1.b		; 50 01
	rol $31.b		; 26 31
	cpx #$00.b		; E0 00
	bpl   1.b		; 10 01
	brk $0B.b		; 00 0B
	sep #$00		; E2 00
	jmp ($0001.w,X)		; 7C 01 00
	brk $DD.b		; 00 DD
	brk $00.b		; 00 00
	bpl  80.b		; 10 50
	asl $00DD.w		; 0E DD 00
	brk $10.b		; 00 10
	bcc  21.b		; 90 15
	cmp $0000.w,X		; DD 00 00
	bpl 112.b		; 10 70
	ora $0000DD.l,X		; 1F DD 00 00
	bpl -64.b		; 10 C0
	plp		; 28
	cmp $0000.w,X		; DD 00 00
	bpl  80.b		; 10 50
	and $DD.b,X		; 35 DD
	brk $00.b		; 00 00
	bpl -48.b		; 10 D0
	eor $DD.b,S		; 43 DD
	brk $00.b		; 00 00
	bpl -16.b		; 10 F0
	mvn $00,$DD		; 54 DD 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	dec $0000.w,X		; DE 00 00
	bpl  96.b		; 10 60
	ora ($DE.b)		; 12 DE
	brk $00.b		; 00 00
	bpl -128.b		; 10 80
	and $DE.b		; 25 DE
	brk $00.b		; 00 00
	bpl  64.b		; 10 40
	bit $DE.b,X		; 34 DE
	brk $00.b		; 00 00
	bpl  96.b		; 10 60
	eor $DE.b		; 45 DE
	brk $00.b		; 00 00
	bpl -128.b		; 10 80
	eor $00DE.w,Y		; 59 DE 00
	brk $10.b		; 00 10
	rti		; 40

	rtl		; 6B

	dec $0000.w,X		; DE 00 00
	bpl  96.b		; 10 60
	sta ($DE.b,X)		; 81 DE
	brk $00.b		; 00 00
	bpl  64.b		; 10 40
	adc $2000E2.l		; 6F E2 00 20
	ora ($40.b,X)		; 01 40
	adc $0000E2.l		; 6F E2 00 00
	ora ($40.b,X)		; 01 40
	adc $0800E2.l		; 6F E2 00 08
	ora ($40.b,X)		; 01 40
	adc $2000E2.l		; 6F E2 00 20
	ora ($40.b,X)		; 01 40
	adc $0000E2.l		; 6F E2 00 00
	ora ($40.b,X)		; 01 40
	adc $0800E2.l		; 6F E2 00 08
	ora ($40.b,X)		; 01 40
	adc $6000E2.l		; 6F E2 00 60
	ora ($40.b,X)		; 01 40
	adc $2000E2.l		; 6F E2 00 20
	ora ($40.b,X)		; 01 40
	adc $0000E2.l		; 6F E2 00 00
	ora ($40.b,X)		; 01 40
	adc $0800E2.l		; 6F E2 00 08
	ora ($40.b,X)		; 01 40
	adc $6000E2.l		; 6F E2 00 60
	ora ($00.b,X)		; 01 00
	inc $20.b		; E6 20
	cpx #$00.b		; E0 00
	ora ($00.b,X)		; 01 00
	ldx $10.b		; A6 10
	cpx #$00.b		; E0 00
	ora ($80.b,X)		; 01 80
	ldx $11.b		; A6 11
	cpx #$00.b		; E0 00
	ora ($00.b,X)		; 01 00
	ldx $13.b		; A6 13
	cpx #$00.b		; E0 00
	ora ($00.b,X)		; 01 00
	inc $21.b		; E6 21
	cpx #$00.b		; E0 00
	ora ($80.b,X)		; 01 80
	ldx $12.b		; A6 12
	cpx #$00.b		; E0 00
	ora ($80.b,X)		; 01 80
	inc $1F.b		; E6 1F
	cpx #$00.b		; E0 00
	ora ($00.b,X)		; 01 00
	ldx $14.b		; A6 14
	cpx #$00.b		; E0 00
	ora ($30.b,X)		; 01 30
	ldx $15.b		; A6 15
	cpx #$20.b		; E0 20
	brk $30.b		; 00 30
	dec $15.b		; C6 15
	cpx #$20.b		; E0 20
	brk $30.b		; 00 30
	inc $15.b		; E6 15
	cpx #$20.b		; E0 20
	brk $30.b		; 00 30
	asl $16.b		; 06 16
	cpx #$20.b		; E0 20
	brk $30.b		; 00 30
	rol $16.b		; 26 16
	cpx #$20.b		; E0 20
	brk $30.b		; 00 30
	lsr $16.b		; 46 16
	cpx #$20.b		; E0 20
	brk $30.b		; 00 30
	lsr $16.b		; 46 16
	cpx #$20.b		; E0 20
	brk $00.b		; 00 00
	ror $16.b		; 66 16
	cpx #$00.b		; E0 00
	ora ($00.b,X)		; 01 00
	ror $17.b		; 66 17
	cpx #$00.b		; E0 00
	ora ($10.b,X)		; 01 10
	ror $18.b		; 66 18
	cpx #$20.b		; E0 20
	brk $10.b		; 00 10
	stx $18.b		; 86 18
	cpx #$20.b		; E0 20
	brk $10.b		; 00 10
	ldx $18.b		; A6 18
	cpx #$20.b		; E0 20
	brk $10.b		; 00 10
	dec $18.b		; C6 18
	cpx #$20.b		; E0 20
	brk $10.b		; 00 10
	inc $18.b		; E6 18
	cpx #$20.b		; E0 20
	brk $10.b		; 00 10
	asl $19.b		; 06 19
	cpx #$20.b		; E0 20
	brk $10.b		; 00 10
	rol $19.b		; 26 19
	cpx #$20.b		; E0 20
	brk $10.b		; 00 10
	lsr $19.b		; 46 19
	cpx #$20.b		; E0 20
	brk $10.b		; 00 10
	ror $19.b		; 66 19
	cpx #$20.b		; E0 20
	brk $00.b		; 00 00
	stx $19.b		; 86 19
	cpx #$00.b		; E0 00
	ora ($00.b,X)		; 01 00
	stx $1A.b		; 86 1A
	cpx #$60.b		; E0 60
	brk $00.b		; 00 00
	inc $1A.b		; E6 1A
	cpx #$00.b		; E0 00
	ora ($00.b,X)		; 01 00
	inc $1B.b		; E6 1B
	cpx #$00.b		; E0 00
	ora ($00.b,X)		; 01 00
	inc $1D.b		; E6 1D
	cpx #$00.b		; E0 00
	ora ($80.b,X)		; 01 80
	inc $1E.b		; E6 1E
	cpx #$00.b		; E0 00
	ora ($00.b,X)		; 01 00
	inc $1C.b		; E6 1C
	cpx #$00.b		; E0 00
	ora ($8E.b,X)		; 01 8E
	ora ($9D.b,X)		; 01 9D
	ora ($AC.b,X)		; 01 AC
	ora ($BB.b,X)		; 01 BB
	ora ($CA.b,X)		; 01 CA
	ora ($D7.b,X)		; 01 D7
	ora ($E4.b,X)		; 01 E4
	ora ($F1.b,X)		; 01 F1
	ora ($00.b,X)		; 01 00
	cop $0D.b		; 02 0D
	cop $04.b		; 02 04
	brk $01.b		; 00 01
	cop $FF.b		; 02 FF
	ora ($0B.b,X)		; 01 0B
	sbc $030100.l,X		; FF 00 01 03
	sbc $121850.l,X		; FF 50 18 12
	tsb $03.b		; 04 03
	tsb $05.b		; 04 05
	sbc $FF0C02.l,X		; FF 02 0C FF
	brk $00.b		; 00 00
	cop $FF.b		; 02 FF
	ldy #$18.b		; A0 18
	asl A		; 0A
	tsb $06.b		; 04 06
	ora [$08.b]		; 07 08
	sbc $FF0D03.l,X		; FF 03 0D FF
	brk $01.b		; 00 01
	ora $FF.b,S		; 03 FF
	bvc  16.b		; 50 10
	ora $0A0904.l		; 0F 04 09 0A
	phd		; 0B
	sbc $FF0E04.l,X		; FF 04 0E FF
	brk $00.b		; 00 00
	cop $FF.b		; 02 FF
	ldy #$18.b		; A0 18
	ora ($04.b),Y		; 11 04
	tsb $0E0D.w		; 0C 0D 0E
	sbc $FF0F05.l,X		; FF 05 0F FF
	ora $FF.b,S		; 03 FF
	brk $18.b		; 00 18
	phd		; 0B
	tsb $0F.b		; 04 0F
	bpl  17.b		; 10 11
	sbc $FF1006.l,X		; FF 06 10 FF
	brk $FF.b		; 00 FF
	brk $18.b		; 00 18
	ora $1204.w		; 0D 04 12
	ora ($14.b,S),Y		; 13 14
	sbc $FF1107.l,X		; FF 07 11 FF
	brk $FF.b		; 00 FF
	brk $18.b		; 00 18
	tsb $1504.w		; 0C 04 15
	asl $17.b,X		; 16 17
	sbc $FF1208.l,X		; FF 08 12 FF
	brk $01.b		; 00 01
	ora $FF.b,S		; 03 FF
	bvc  24.b		; 50 18
	asl $1804.w		; 0E 04 18
	ora $FF1A.w,Y		; 19 1A FF
	ora #$13.b		; 09 13
	sbc $00FF03.l,X		; FF 03 FF 00
	clc		; 18
	bpl   4.b		; 10 04
	tas		; 1B
	trb $FF1D.w		; 1C 1D FF
	asl A		; 0A
	trb $FF.b		; 14 FF
	brk $FF.b		; 00 FF
	brk $18.b		; 00 18
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	rti		; 40

	adc $70D0E2.l		; 6F E2 D0 70
.ACCU 8
.INDEX 8
	sep #$70		; E2 70
	adc ($E2.b)		; 72 E2
	bpl 116.b		; 10 74
.INDEX 8
	sep #$10		; E2 10
	ror $E2.b,X		; 76 E2
	bcc 119.b		; 90 77
.ACCU 8
	sep #$E0		; E2 E0
	sei		; 78
.ACCU 8
	sep #$20		; E2 20
	ply		; 7A
.ACCU 8
	sep #$60		; E2 60
	tda		; 7B
	sep #$00		; E2 00
	brk $4C.b		; 00 4C
	cop $5C.b		; 02 5C
	cop $6C.b		; 02 6C
	cop $7C.b		; 02 7C
	cop $8C.b		; 02 8C
	cop $9C.b		; 02 9C
	cop $AC.b		; 02 AC
	cop $BC.b		; 02 BC
	cop $CC.b		; 02 CC
	cop $00.b		; 02 00
	ror $E005.w,X		; 7E 05 E0
	stz $E005.w,X		; 9E 05 E0
	dec $E008.w,X		; DE 08 E0
	ldx $E007.w,Y		; BE 07 E0
	bvs  15.b		; 70 0F
	sep #$00		; E2 00
	ldx $E005.w,Y		; BE 05 E0
	dec $E005.w,X		; DE 05 E0
	inc $08.b		; E6 08
	cpx #$DE.b		; E0 DE
	ora [$E0.b]		; 07 E0
	rts		; 60

	asl $E2.b,X		; 16 E2
	brk $FE.b		; 00 FE
	ora $E0.b		; 05 E0
	asl $E006.w,X		; 1E 06 E0
	inc $E008.w		; EE 08 E0
	inc $E007.w,X		; FE 07 E0
	ldy #$23.b		; A0 23
	sep #$01		; E2 01
	rol $E006.w,X		; 3E 06 E0
	lsr $E006.w,X		; 5E 06 E0
	inc $08.b,X		; F6 08
	cpx #$1E.b		; E0 1E
	php		; 08
	cpx #$C0.b		; E0 C0
	rol $00E2.w		; 2E E2 00
	ror $E006.w,X		; 7E 06 E0
	stz $E006.w,X		; 9E 06 E0
	inc $E008.w,X		; FE 08 E0
	rol $E008.w,X		; 3E 08 E0
	bcc  58.b		; 90 3A
	sep #$00		; E2 00
	ldx $E006.w,Y		; BE 06 E0
	dec $E006.w,X		; DE 06 E0
	asl $09.b		; 06 09
	cpx #$5E.b		; E0 5E
	php		; 08
	cpx #$C0.b		; E0 C0
	mvp $02,$E2		; 44 E2 02
	inc $E006.w,X		; FE 06 E0
	asl $E007.w,X		; 1E 07 E0
	asl $E009.w		; 0E 09 E0
	ror $E008.w,X		; 7E 08 E0
	ldy #$50.b		; A0 50
	sep #$00		; E2 00
	rol $E007.w,X		; 3E 07 E0
	lsr $E007.w,X		; 5E 07 E0
	asl $09.b,X		; 16 09
	cpx #$9E.b		; E0 9E
	php		; 08
	cpx #$10.b		; E0 10
	tad		; 5B
	sep #$00		; E2 00
	ror $E007.w,X		; 7E 07 E0
	stz $E007.w,X		; 9E 07 E0
	asl $E009.w,X		; 1E 09 E0
	ldx $E008.w,Y		; BE 08 E0
	bcc 101.b		; 90 65
.INDEX 8
	sep #$96		; E2 96
	and ($E0.b),Y		; 31 E0
	brk $20.b		; 00 20
	ora ($66.b,X)		; 01 66
	adc #$E0.b		; 69 E0
	brk $00.b		; 00 00
	ora ($16.b,X)		; 01 16
	adc $00E0.w		; 6D E0 00
	php		; 08
	ora ($56.b,X)		; 01 56
	bvs -32.b		; 70 E0
	brk $20.b		; 00 20
	ora ($66.b,X)		; 01 66
	tay		; A8
	cpx #$00.b		; E0 00
	brk $01.b		; 00 01
	asl $AD.b		; 06 AD
	cpx #$00.b		; E0 00
	php		; 08
	ora ($56.b,X)		; 01 56
	bvs -32.b		; 70 E0
	brk $20.b		; 00 20
	ora ($56.b,X)		; 01 56
	lda $0000E0.l		; AF E0 00 00
	ora ($E6.b,X)		; 01 E6
	lda ($E0.b),Y		; B1 E0
	brk $08.b		; 00 08
	ora ($36.b,X)		; 01 36
	lda $E0.b,X		; B5 E0
	brk $20.b		; 00 20
	ora ($E6.b,X)		; 01 E6
	dec $00E0.w,X		; DE E0 00
	brk $01.b		; 00 01
	dec $E2.b		; C6 E2
	cpx #$00.b		; E0 00
	php		; 08
	ora ($00.b,X)		; 01 00
	brk $E1.b		; 00 E1
	brk $20.b		; 00 20
	ora ($90.b,X)		; 01 90
	and ($E1.b,S),Y		; 33 E1
	brk $00.b		; 00 00
	ora ($10.b,X)		; 01 10
	and $00E1.w,X		; 3D E1 00
	php		; 08
	ora ($A0.b,X)		; 01 A0
	rti		; 40

	sbc ($00.b,X)		; E1 00
	jsr $9001.w		; 20 01 90
	adc [$E1.b],Y		; 77 E1
	brk $00.b		; 00 00
	ora ($80.b,X)		; 01 80
	adc $0800E1.l,X		; 7F E1 00 08
	ora ($20.b,X)		; 01 20
	sta ($E1.b,X)		; 81 E1
	brk $20.b		; 00 20
	ora ($30.b,X)		; 01 30
	ldx $00E1.w		; AE E1 00
	brk $01.b		; 00 01
	bra -81.b		; 80 AF
	sbc ($00.b,X)		; E1 00
	php		; 08
	ora ($96.b,X)		; 01 96
	and ($E0.b),Y		; 31 E0
	brk $20.b		; 00 20
	ora ($D0.b,X)		; 01 D0
	lda [$E1.b],Y		; B7 E1
	brk $00.b		; 00 00
	ora ($80.b,X)		; 01 80
	tyx		; BB
	sbc ($00.b,X)		; E1 00
	php		; 08
	ora ($00.b,X)		; 01 00
	brk $E1.b		; 00 E1
	brk $20.b		; 00 20
	ora ($90.b,X)		; 01 90
	and ($E1.b,S),Y		; 33 E1
	brk $00.b		; 00 00
	ora ($10.b,X)		; 01 10
	and $00E1.w,X		; 3D E1 00
	php		; 08
	ora ($B0.b,X)		; 01 B0
	ldx $00E1.w,Y		; BE E1 00
	jsr $0001.w		; 20 01 00
	brk $E2.b		; 00 E2
	brk $00.b		; 00 00
	ora ($D0.b,X)		; 01 D0
	cop $E2.b		; 02 E2
	brk $08.b		; 00 08
	ora ($00.b,X)		; 01 00
	asl $E004.w		; 0E 04 E0
	bmi   0.b		; 30 00
	jsr $0926.w		; 20 26 09
	cpx #$C0.b		; E0 C0
	brk $20.b		; 00 20
	inc $09.b		; E6 09
	cpx #$C0.b		; E0 C0
	brk $20.b		; 00 20
	ldx $0A.b		; A6 0A
	cpx #$C0.b		; E0 C0
	brk $20.b		; 00 20
	ror $0B.b		; 66 0B
	cpx #$C0.b		; E0 C0
	brk $20.b		; 00 20
	rol $0C.b		; 26 0C
	cpx #$C0.b		; E0 C0
	brk $20.b		; 00 20
	inc $0C.b		; E6 0C
	cpx #$C0.b		; E0 C0
	brk $20.b		; 00 20
	ldx $0D.b		; A6 0D
	cpx #$C0.b		; E0 C0
	brk $20.b		; 00 20
	ror $0E.b		; 66 0E
	cpx #$C0.b		; E0 C0
	brk $20.b		; 00 20
	rol $0F.b		; 26 0F
	cpx #$C0.b		; E0 C0
	brk $20.b		; 00 20
	inc $0F.b		; E6 0F
	cpx #$C0.b		; E0 C0
	brk $C0.b		; 00 C0
	rol $E004.w,X		; 3E 04 E0
	jsr $C000.w		; 20 00 C0
	lsr $E004.w,X		; 5E 04 E0
	jsr $C000.w		; 20 00 C0
	ror $E004.w,X		; 7E 04 E0
	jsr $C000.w		; 20 00 C0
	stz $E004.w,X		; 9E 04 E0
	jsr $C000.w		; 20 00 C0
	ldx $E004.w,Y		; BE 04 E0
	jsr $C000.w		; 20 00 C0
	dec $E004.w,X		; DE 04 E0
	jsr $C000.w		; 20 00 C0
	inc $E004.w,X		; FE 04 E0
	jsr $C000.w		; 20 00 C0
	asl $E005.w,X		; 1E 05 E0
	jsr $C000.w		; 20 00 C0
	rol $E005.w,X		; 3E 05 E0
	jsr $C000.w		; 20 00 C0
	lsr $E005.w,X		; 5E 05 E0
	jsr $0000.w		; 20 00 00
	brk $1F.b		; 00 1F
	brk $5F.b		; 00 5F
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $5F.b		; 00 5F
	ora $44.b,S		; 03 44
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	and $420AD9.l		; 2F D9 0A 42
	php		; 08
	brk $00.b		; 00 00
	sbc $62937F.l,X		; FF 7F 93 62
	cpy $34.b		; C4 34
	brk $00.b		; 00 00
	sta $1D7F73.l,X		; 9F 73 7F 1D
	mvp $00,$08		; 44 08 00
	brk $FF.b		; 00 FF
	adc $C45A51.l,X		; 7F 51 5A C4
	bit $AD.b,X		; 34 AD
	and $C4.b,X		; 35 C4
	php		; 08
	bit $906A.w		; 2C 6A 90
	ror $76F5.w		; 6E F5 76
	phy		; 5A
	adc $B77FFF.l,X		; 7F FF 7F B7
	and $38.b		; 25 38
	rol $BA.b,X		; 36 BA
	lsr $3F.b		; 46 3F
	cop $DF.b		; 02 DF
	cop $FF.b		; 02 FF
	ora ($CD.b,S),Y		; 13 CD
	ror $7F56.w,X		; 7E 56 7F
	sbc $35AD7F.l,X		; FF 7F AD 35
	sta $1C.b,S		; 83 1C
	bit $906A.w		; 2C 6A 90
	ror $76F5.w		; 6E F5 76
	phy		; 5A
	adc $B37FFF.l,X		; 7F FF 7F B3
	ror $4E.b		; 66 4E
	phy		; 5A
	ora #$52.b		; 09 52
	and $02DF02.l,X		; 3F 02 DF 02
	sbc $7ECD13.l,X		; FF 13 CD 7E
	lsr $7F.b,X		; 56 7F
	sbc $35AD7F.l,X		; FF 7F AD 35
	sta $1C.b,S		; 83 1C
	bit $906A.w		; 2C 6A 90
	ror $76F5.w		; 6E F5 76
	phy		; 5A
	adc $187FFF.l,X		; 7F FF 7F 18
	adc [$51.b]		; 67 51
	eor ($8A.b)		; 52 8A
	and $023F.w,X		; 3D 3F 02
	cmp $13FF02.l,X		; DF 02 FF 13
	cmp $567E.w		; CD 7E 56
	adc $AD7FFF.l,X		; 7F FF 7F AD
	and $42.b,X		; 35 42
	php		; 08
	bit $906A.w		; 2C 6A 90
	ror $76F5.w		; 6E F5 76
	phy		; 5A
	adc $D67FFF.l,X		; 7F FF 7F D6
	phy		; 5A
	and ($46.b),Y		; 31 46
	sty $3F31.w		; 8C 31 3F
	cop $DF.b		; 02 DF
	cop $FF.b		; 02 FF
	ora ($CD.b,S),Y		; 13 CD
	ror $7F56.w,X		; 7E 56 7F
	sbc $35AD7F.l,X		; FF 7F AD 35
	.db $42, $08		; 42 08
	bit $906A.w		; 2C 6A 90
	ror $76F5.w		; 6E F5 76
	phy		; 5A
	adc $D67FFF.l,X		; 7F FF 7F D6
	.db $62, $31, $4E		; 62 31 4E
	sty $3F39.w		; 8C 39 3F
	cop $DF.b		; 02 DF
	cop $FF.b		; 02 FF
	ora ($CD.b,S),Y		; 13 CD
	ror $7F56.w,X		; 7E 56 7F
	sbc $35AD7F.l,X		; FF 7F AD 35
	sty $18.b		; 84 18
	bit $906A.w		; 2C 6A 90
	ror $76F5.w		; 6E F5 76
	phy		; 5A
	adc $CB7FFF.l,X		; 7F FF 7F CB
	eor #$4F.b		; 49 4F
	lsr $D3.b,X		; 56 D3
	ror $3F.b		; 66 3F
	cop $DF.b		; 02 DF
	cop $FF.b		; 02 FF
	ora ($CD.b,S),Y		; 13 CD
	ror $7F56.w,X		; 7E 56 7F
	sbc $35AD7F.l,X		; FF 7F AD 35
	sty $14.b		; 84 14
	bit $906A.w		; 2C 6A 90
	ror $76F5.w		; 6E F5 76
	phy		; 5A
	adc $CE7FFF.l,X		; 7F FF 7F CE
	eor ($52.b,X)		; 41 52
	eor ($D6.b)		; 52 D6
	.db $62, $3F, $02		; 62 3F 02
	cmp $13FF02.l,X		; DF 02 FF 13
	cmp $567E.w		; CD 7E 56
	adc $AD7FFF.l,X		; 7F FF 7F AD
	and $A2.b,X		; 35 A2
	php		; 08
	bit $906A.w		; 2C 6A 90
	ror $76F5.w		; 6E F5 76
	phy		; 5A
	adc $B77FFF.l,X		; 7F FF 7F B7
	and $38.b		; 25 38
	rol $BA.b,X		; 36 BA
	lsr $3F.b		; 46 3F
	cop $DF.b		; 02 DF
	cop $FF.b		; 02 FF
	ora ($CD.b,S),Y		; 13 CD
	ror $7F56.w,X		; 7E 56 7F
	sbc $35AD7F.l,X		; FF 7F AD 35
	.db $42, $08		; 42 08
	bit $906A.w		; 2C 6A 90
	ror $76F5.w		; 6E F5 76
	phy		; 5A
	adc $0F7FFF.l,X		; 7F FF 7F 0F
	lsr $45CC.w		; 4E CC 45
	tax		; AA
	and $023F.w,X		; 3D 3F 02
	cmp $13FF02.l,X		; DF 02 FF 13
	cmp $567E.w		; CD 7E 56
	adc $AD7FFF.l,X		; 7F FF 7F AD
	and $42.b,X		; 35 42
	php		; 08
	bit $906A.w		; 2C 6A 90
	ror $76F5.w		; 6E F5 76
	phy		; 5A
	adc $6A7FFF.l,X		; 7F FF 7F 6A
	and $3128.w,X		; 3D 28 31
	inc $28.b		; E6 28
	and $02DF02.l,X		; 3F 02 DF 02
	sbc $7ECD13.l,X		; FF 13 CD 7E
	lsr $7F.b,X		; 56 7F
	sbc $42107F.l,X		; FF 7F 10 42
	lda $14.b		; A5 14
	sta $FC00.w		; 8D 00 FC
	and #$7F.b		; 29 7F
	rol $631F.w,X		; 3E 1F 63
	lda $035F01.l,X		; BF 01 5F 03
	brk $44.b		; 00 44
	tsb $69.b		; 04 69
	lda $3669.w		; AD 69 36
	ror $001A.w,X		; 7E 1A 00
	ora $197835.l,X		; 1F 35 78 19
	sbc $42107F.l,X		; FF 7F 10 42
	sty $10.b		; 84 10
	sta $FC00.w		; 8D 00 FC
	and #$7F.b		; 29 7F
	rol $631F.w,X		; 3E 1F 63
	lda $035F01.l,X		; BF 01 5F 03
	lsr $7904.w		; 4E 04 79
	tsb $5E.b		; 04 5E
	ora $361F.w,X		; 1D 1F 36
	eor ($00.b),Y		; 51 00
	eor $7804.w,Y		; 59 04 78
	ora $7FFF.w,Y		; 19 FF 7F
	lda $6335.w		; AD 35 63
	tsb $008D.w		; 0C 8D 00
	jsr ($7F29.w,X)		; FC 29 7F
	rol $631F.w,X		; 3E 1F 63
	sei		; 78
	ora $4620.w,Y		; 19 20 46
	sty $58.b		; 84 58
	php		; 08
	adc #$AD.b		; 69 AD
	adc #$36.b		; 69 36
	ror $1096.w,X		; 7E 96 10
	ora $340035.l,X		; 1F 35 00 34
	sbc $35AD7F.l,X		; FF 7F AD 35
	brk $00.b		; 00 00
	sta $FC00.w		; 8D 00 FC
	and #$7F.b		; 29 7F
	rol $631F.w,X		; 3E 1F 63
	sei		; 78
	ora $4620.w,Y		; 19 20 46
	sty $10.b		; 84 10
	php		; 08
	and #$CE.b		; 29 CE
	eor $52.b		; 45 52
	.db $62, $96, $10		; 62 96 10
	ora $340035.l,X		; 1F 35 00 34
	sbc $35AD7F.l,X		; FF 7F AD 35
	sty $10.b		; 84 10
	sta $FC00.w		; 8D 00 FC
	and #$7F.b		; 29 7F
	rol $631F.w,X		; 3E 1F 63
	phd		; 0B
	sec		; 38
	lsr A		; 4A
	tsb $28.b		; 04 28
	bit $AE.b,X		; 34 AE
	cli		; 58
	cmp $69.b,X		; D5 69
	sbc $187E.w,X		; FD 7E 18
	bpl  -1.b		; 10 FF
	trb $1978.w		; 1C 78 19
	sbc $36CD7F.l,X		; FF 7F CD 36
	stz $14.b		; 64 14
	sta $FC00.w		; 8D 00 FC
	and #$7F.b		; 29 7F
	rol $631F.w,X		; 3E 1F 63
	phd		; 0B
	sec		; 38
	sbc $44.b		; E5 44
	plp		; 28
	bit $AE.b,X		; 34 AE
	cli		; 58
	cmp $69.b,X		; D5 69
	sbc $087E.w,X		; FD 7E 08
	ply		; 7A
	cmp $19787E.l		; CF 7E 78 19
	sbc $35AD7F.l,X		; FF 7F AD 35
	sty $10.b		; 84 10
	sta $FC00.w		; 8D 00 FC
	and #$7F.b		; 29 7F
	rol $631F.w,X		; 3E 1F 63
	eor $05.b,S		; 43 05
	pla		; 68
	asl $5884.w		; 0E 84 58
	and $69AD7E.l,X		; 3F 7E AD 69
	rol $7E.b,X		; 36 7E
	eor $01C469.l,X		; 5F 69 C4 01
	sei		; 78
	ora $7FFF.w,Y		; 19 FF 7F
	brk $00.b		; 00 00
	stz $10.b		; 64 10
	sta $FC00.w		; 8D 00 FC
	and #$7F.b		; 29 7F
	rol $631F.w,X		; 3E 1F 63
	stx $48.b		; 86 48
	stx $847D.w		; 8E 7D 84
	cli		; 58
	eor $69AD13.l,X		; 5F 13 AD 69
	rol $7E.b,X		; 36 7E
	ora $694C0E.l,X		; 1F 0E 4C 69
	sei		; 78
	ora $7FFF.w,Y		; 19 FF 7F
	lda $8435.w		; AD 35 84
	bpl -115.b		; 10 8D
	brk $FC.b		; 00 FC
	and #$7F.b		; 29 7F
	rol $631F.w,X		; 3E 1F 63
	lda $035F01.l,X		; BF 01 5F 03
	brk $44.b		; 00 44
	tsb $69.b		; 04 69
	lda $3669.w		; AD 69 36
	ror $001A.w,X		; 7E 1A 00
	and $197802.l,X		; 3F 02 78 19
	sbc $35AD7F.l,X		; FF 7F AD 35
	sty $10.b		; 84 10
	sta $FC00.w		; 8D 00 FC
	and #$7F.b		; 29 7F
	rol $631F.w,X		; 3E 1F 63
	lda $035F01.l,X		; BF 01 5F 03
	sta ($04.b)		; 92 04
	cld		; D8
	jsr $399D.w		; 20 9D 39
	eor $395F52.l,X		; 5F 52 5F 39
	and $197802.l,X		; 3F 02 78 19
	sbc $35AD7F.l,X		; FF 7F AD 35
	sty $10.b		; 84 10
	sta $FC00.w		; 8D 00 FC
	and #$7F.b		; 29 7F
	rol $631F.w,X		; 3E 1F 63
	eor ($40.b,X)		; 41 40
	sta ($54.b,X)		; 81 54
	and [$5D.b]		; 27 5D
	sbc $B369.w		; ED 69 B3
	adc ($79.b)		; 72 79
	adc $5F36DF.l,X		; 7F DF 36 5F
	tsa		; 3B
	sei		; 78
	ora $7FFF.w,Y		; 19 FF 7F
	phd		; 0B
	sec		; 38
	.db $42, $08		; 42 08
	sta $FC00.w		; 8D 00 FC
	and #$7F.b		; 29 7F
	rol $631F.w,X		; 3E 1F 63
	sty $10.b		; 84 10
	sbc [$1C.b]		; E7 1C
	lsr A		; 4A
	and #$AD.b		; 29 AD
	and $94.b,X		; 35 94
	eor ($39.b)		; 52 39
	adc [$DF.b]		; 67 DF
	rol $5F.b,X		; 36 5F
	tsa		; 3B
	sei		; 78
	ora $7FFF.w,Y		; 19 FF 7F
	lda $8435.w		; AD 35 84
	bpl -115.b		; 10 8D
	brk $FC.b		; 00 FC
	and #$7F.b		; 29 7F
	rol $631F.w,X		; 3E 1F 63
	jsr $E029.w		; 20 29 E0
	and $5884.w,X		; 3D 84 58
	php		; 08
	adc #$AD.b		; 69 AD
	adc #$36.b		; 69 36
	ror $001A.w,X		; 7E 1A 00
	cpy #$34.b		; C0 34
	sei		; 78
	ora $7FFF.w,Y		; 19 FF 7F
	lda $0035.w		; AD 35 00
	tsb $8D.b		; 04 8D
	brk $FC.b		; 00 FC
	and #$7F.b		; 29 7F
	rol $631F.w,X		; 3E 1F 63
	jsr $E029.w		; 20 29 E0
	and $1926.w,X		; 3D 26 19
	wai		; CB
	and $4270.w		; 2D 70 42
	eor [$5F.b],Y		; 57 5F
	inc A		; 1A
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	ora $7FFF.w,Y		; 19 FF 7F
	bpl  66.b		; 10 42
	brk $00.b		; 00 00
	sta $FC00.w		; 8D 00 FC
	and #$7F.b		; 29 7F
	rol $631F.w,X		; 3E 1F 63
	bra   0.b		; 80 00
	rti		; 40

	cop $84.b		; 02 84
	bmi   8.b		; 30 08
	eor #$AD.b		; 49 AD
	adc #$36.b		; 69 36
	ror $001A.w,X		; 7E 1A 00
	dec $18.b		; C6 18
	asl $11.b,X		; 16 11
	sbc $35AD7F.l,X		; FF 7F AD 35
	stz $20.b		; 64 20
	sta $FC00.w		; 8D 00 FC
	and #$7F.b		; 29 7F
	rol $631F.w,X		; 3E 1F 63
	rts		; 60

	tsb $00.b		; 04 00
	asl A		; 0A
	pla		; 68
	bit $EE.b,X		; 34 EE
	pha		; 48
	and [$6E.b],Y		; 37 6E
	tas		; 1B
	adc $AA001A.l,X		; 7F 1A 00 AA
	mvp $19,$78		; 44 78 19
	sbc $35AD7F.l,X		; FF 7F AD 35
	txa		; 8A
	php		; 08
	sta $FC00.w		; 8D 00 FC
	and #$7F.b		; 29 7F
	rol $631F.w,X		; 3E 1F 63
	jmp ($DF1C.w,X)		; 7C 1C DF
	eor $6ABF.w		; 4D BF 6A
	cmp ($40.b,X)		; C1 40
	bvc 114.b		; 50 72
	cli		; 58
	adc $9F7B5F.l,X		; 7F 5F 7B 9F
	.db $62, $78, $19		; 62 78 19
	sbc $35AD7F.l,X		; FF 7F AD 35
	sbc $008D08.l		; EF 08 8D 00
	jsr ($7F29.w,X)		; FC 29 7F
	rol $631F.w,X		; 3E 1F 63
	adc $2B5F1A.l,X		; 7F 1A 5F 2B
	sbc $40C153.l,X		; FF 53 C1 40
	bvc 114.b		; 50 72
	cli		; 58
	adc $9F7B5F.l,X		; 7F 5F 7B 9F
	.db $62, $78, $19		; 62 78 19
	sbc $39CE7F.l,X		; FF 7F CE 39
	ora $02DF02.l,X		; 1F 02 DF 02
	lda $4FDF1B.l,X		; BF 1B DF 4F
	sbc $7F767F.l,X		; FF 7F 76 7F
	sbc ($7E.b)		; F2 7E
	sty $067E.w		; 8C 7E 06
	ror $7DA0.w,X		; 7E A0 7D
	cmp $4E3F41.l,X		; DF 41 3F 4E
	sta $66FF5A.l,X		; 9F 5A FF 66
	adc $39CE77.l,X		; 7F 77 CE 39
	sbc ($75.b,S),Y		; F3 75
	cli		; 58
	ror $58.b,X		; 76 58
	pla		; 68
	beq  86.b		; F0 56
	adc ($2F.b)		; 72 2F
	cmp ($0B.b,S),Y		; D3 0B
	sta ($68.b,X)		; 81 68
	and $71.b,S		; 23 71
	ldx $75.b		; A6 75
	rol A		; 2A
	ply		; 7A
	cmp $317E.w		; CD 7E 31
	adc $BA7F75.l,X		; 7F 75 7F BA
	adc $AD7FFF.l,X		; 7F FF 7F AD
	and $16.b,X		; 35 16
	brk $9A.b		; 00 9A
	brk $7E.b		; 00 7E
	ora #$5F.b		; 09 5F
	ora ($3F.b)		; 12 3F
	tas		; 1B
	sbc $7FFF4B.l,X		; FF 4B FF 7F
	ora ($00.b)		; 12 00
	asl $0A00.w		; 0E 00 0A
	brk $1F.b		; 00 1F
	jmp ($341F.w,X)		; 7C 1F 34
	php		; 08
	and ($31.b,X)		; 21 31
	lsr $FF.b		; 46 FF
	adc $C235AD.l,X		; 7F AD 35 C2
	and ($44.b),Y		; 31 44
	.db $42, $21		; 42 21
	clc		; 18
	and ($28.b,X)		; 21 28
	eor ($38.b,X)		; 41 38
	.db $62, $48, $82		; 62 48 82
	cli		; 58
	ldx #$68.b		; A2 68
	lsr $71.b		; 46 71
	sbc [$79.b]		; E7 79
	ror A		; 6A
	ror $7EEF.w,X		; 7E EF 7E
	sta [$7F.b],Y		; 97 7F
	stp		; DB
	adc $AD7FFF.l,X		; 7F FF 7F AD
	and $9E.b,X		; 35 9E
	ora ($1E.b,X)		; 01 1E
	cop $9F.b		; 02 9F
	cop $5F.b		; 02 5F
	ora $DF.b,S		; 03 DF
	tas		; 1B
	sbc $7FFF53.l,X		; FF 53 FF 7F
	ora $1801.w,X		; 1D 01 18
	brk $16.b		; 00 16
	sec		; 38
	ora $341F7C.l,X		; 1F 7C 1F 34
	php		; 08
	and ($31.b,X)		; 21 31
	lsr $FF.b		; 46 FF
	adc $4A35AD.l,X		; 7F AD 35 4A
	and ($E7.b,X)		; 21 E7
	bpl -124.b		; 10 84
	brk $54.b		; 00 54
	brk $BA.b		; 00 BA
	brk $1D.b		; 00 1D
	ora ($BF.b,X)		; 01 BF
	ora ($1F.b,X)		; 01 1F
	cop $7F.b		; 02 7F
	cop $DF.b		; 02 DF
	cop $3F.b		; 02 3F
	ora $9F.b,S		; 03 9F
	ora $FF.b,S		; 03 FF
	tas		; 1B
	sbc $7FFF53.l,X		; FF 53 FF 7F
	sty $4131.w		; 8C 31 41
	pha		; 48
	sta ($60.b,X)		; 81 60
.ACCU 16
.INDEX 16
	rep #$78		; C2 78
	lda $7D.b		; A5 7D
	lsr A		; 4A
	ror $7ECE.w,X		; 7E CE 7E
	eor ($7F.b)		; 52 7F
	dec $7F.b,X		; D6 7F
	plx		; FA
	adc $C60000.l,X		; 7F 00 00 C6
	clc		; 18
	sty $5231.w		; 8C 31 52
	lsr A		; 4A
	clc		; 18
	adc $FF.b,S		; 63 FF
	adc $1F39CE.l,X		; 7F CE 39 1F
	brk $BF.b		; 00 BF
	ora ($FF.b,X)		; 01 FF
	ora $ED.b,S		; 03 ED
	ora $E0.b,S		; 03 E0
	ora $E0.b,S		; 03 E0
	and [$E0.b],Y		; 37 E0
	adc $096086.l,X		; 7F 86 60 09
	adc ($8D.b),Y		; 71 8D
	adc $7E11.w,Y		; 79 11 7E
	sta $7E.b,X		; 95 7E
	clc		; 18
	adc $FF7F9C.l,X		; 7F 9C 7F FF
	adc $4235AD.l,X		; 7F AD 35 42
	clc		; 18
	bcc   8.b		; 90 08
	cmp ($40.b,X)		; C1 40
	pha		; 48
	eor $7250.w,X		; 5D 50 72
	cli		; 58
	adc $DF6F3F.l,X		; 7F 3F 6F DF
	.db $62, $7F, $56		; 62 7F 56
	ora $3DBF4A.l,X		; 1F 4A BF 3D
	eor $20DC31.l,X		; 5F 31 DC 20
	lsr $10.b,X		; 56 10
	sbc $35AD7F.l,X		; FF 7F AD 35
	sbc $16797B.l,X		; FF 7B 79 16
	lda $35AD37.l,X		; BF 37 AD 35
	sbc $6A7F.w,X		; FD 7F 6A
	ror $73.b,X		; 76 73
	adc $DF35AD.l,X		; 7F AD 35 DF
	adc [$BD.b],Y		; 77 BD
	ora $4F1F.w,X		; 1D 1F 4F
	lda $FC35.w		; AD 35 FC
	adc $F51A6D.l,X		; 7F 6D 1A F5
	phk		; 4B
	lda $FE35.w		; AD 35 FE
	adc $9F09FC.l,X		; 7F FC 09 9F
	and $FD35AD.l,X		; 3F AD 35 FD
	adc $79616F.l,X		; 7F 6F 61 79
	eor $AD.b,S		; 43 AD
	and $BC.b,X		; 35 BC
	tda		; 7B
	sbc ($63.b,S),Y		; F3 63
	tsb $AD53.w		; 0C 53 AD
	and $BD.b,X		; 35 BD
	adc $B5396B.l,X		; 7F 6B 39 B5
	lsr $35AD.w,X		; 5E AD 35
	sbc $65BA7F.l,X		; FF 7F BA 65
	ora $411077.l,X		; 1F 77 10 41
	rep #$08		; C2 08
	tsb $09.b		; 04 09
	ror $09.b		; 66 09
	inx		; E8
	ora #$0A8A.w		; 09 8A 0A
	eor $0BDE13.l		; 4F 13 DE 0B
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7BDE7C.l,X		; 1F 7C DE 7B
	bpl  65.b		; 10 41
	sta $DE29.w,X		; 9D 29 DE
	and $321E.w		; 2D 1E 32
	lsr $9E36.w,X		; 5E 36 9E
	dec A		; 3A
	dec $1E3E.w,X		; DE 3E 1E
	eor $5E.b,S		; 43 5E
	eor [$9E.b]		; 47 9E
	phk		; 4B
	dec $E053.w,X		; DE 53 E0
	ora $1C.b,S		; 03 1C
	rol $F9.b,X		; 36 F9
	and $39D5.w,Y		; 39 D5 39
	lda ($39.b)		; B2 39
	bpl  65.b		; 10 41
	.db $42, $10		; 42 10
	dec $20.b		; C6 20
	lsr A		; 4A
	and ($CE.b),Y		; 31 CE
	eor ($52.b,X)		; 41 52
	eor ($D6.b)		; 52 D6
	.db $62, $8C, $39		; 62 8C 39
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	lda $28.b,S		; A3 28
	sta $24.b,S		; 83 24
	.db $62, $20, $42		; 62 20 42
	trb $1842.w		; 1C 42 18
	.db $42, $14		; 42 14
	bpl  65.b		; 10 41
	sta $5D29.w,X		; 9D 29 5D
	rol $1D.b,X		; 36 1D
	eor $1F.b,S		; 43 1F
	jmp ($7C1F.w,X)		; 7C 1F 7C
	dec $DE53.w,X		; DE 53 DE
	eor ($DE.b,S),Y		; 53 DE
	eor ($DE.b,S),Y		; 53 DE
	eor ($DE.b,S),Y		; 53 DE
	eor ($DE.b,S),Y		; 53 DE
	eor ($DE.b,S),Y		; 53 DE
	eor ($DE.b,S),Y		; 53 DE
	eor ($DE.b,S),Y		; 53 DE
	eor ($DE.b,S),Y		; 53 DE
	eor ($10.b,S),Y		; 53 10
	eor ($E0.b,X)		; 41 E0
	ora $E0.b,S		; 03 E0
	ora $E0.b,S		; 03 E0
	ora $E0.b,S		; 03 E0
	ora $E0.b,S		; 03 E0
	ora $E0.b,S		; 03 E0
	ora $E0.b,S		; 03 E0
	ora $E0.b,S		; 03 E0
	ora $E0.b,S		; 03 E0
	ora $E0.b,S		; 03 E0
	ora $E0.b,S		; 03 E0
	ora $E0.b,S		; 03 E0
	ora $E0.b,S		; 03 E0
	ora $E0.b,S		; 03 E0
	ora $E0.b,S		; 03 E0
	ora $10.b,S		; 03 10
	eor ($94.b,X)		; 41 94
	and $3972.w,Y		; 39 72 39
	bvc  57.b		; 50 39
	rol $5E39.w		; 2E 39 5E
	adc ($DE.b,S),Y		; 73 DE
	.db $62, $5E, $52		; 62 5E 52
	dec $9C41.w,X		; DE 41 9C
	and $435E.w,Y		; 39 5E 43
	dec $9C41.w,X		; DE 41 9C
	and $315A.w,Y		; 39 5A 31
	clc		; 18
	and #$20D6.w		; 29 D6 20
	bpl  65.b		; 10 41
	lda $20.b		; A5 20
	dec $2C.b		; C6 2C
	php		; 08
	and $456B.w,Y		; 39 6B 45
	dec $3151.w		; CE 51 31
	lsr $6AB5.w,X		; 5E B5 6A
	and $9C7B.w,Y		; 39 7B 9C
	tda		; 7B
	tay		; A8
	bit $492C.w,X		; 3C 2C 49
	sta $08E755.l		; 8F 55 E7 08
	ora ($0A.b)		; 12 0A
	tsa		; 3B
	phd		; 0B
	bpl  65.b		; 10 41
	phy		; 5A
	tda		; 7B
	clc		; 18
	tda		; 7B
	dec $72.b,X		; D6 72
	sty $6A.b,X		; 94 6A
	eor ($62.b)		; 52 62
	bpl  90.b		; 10 5A
	dec $8C51.w		; CE 51 8C
	eor #$414A.w		; 49 4A 41
	php		; 08
	and $30E7.w,Y		; 39 E7 30
	dec $2C.b		; C6 2C
	lda $28.b		; A5 28
	sty $24.b		; 84 24
	ora $41107C.l,X		; 1F 7C 10 41
	stz $5A7B.w		; 9C 7B 5A
	tda		; 7B
	clc		; 18
	tda		; 7B
	dec $72.b,X		; D6 72
	sty $6A.b,X		; 94 6A
	eor ($62.b)		; 52 62
	bpl  90.b		; 10 5A
	dec $8C51.w		; CE 51 8C
	eor #$414A.w		; 49 4A 41
	php		; 08
	and $4DCE.w,Y		; 39 CE 4D
	eor ($5A.b)		; 52 5A
	dec $62.b,X		; D6 62
	clc		; 18
	adc $10.b,S		; 63 10
	eor ($42.b,X)		; 41 42
	clc		; 18
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	asl $4E.b,X		; 16 4E
	mvn $D0,$29		; 54 29 D0
	jsr $188C.w		; 20 8C 18
	pha		; 48
	bpl  66.b		; 10 42
	clc		; 18
	eor $28.b,S		; 43 28
	stx $48.b		; 86 48
	asl A		; 0A
	eor $79D0.w,Y		; 59 D0 79
	cld		; D8
	ply		; 7A
	stz $107B.w		; 9C 7B 10
	eor ($42.b,X)		; 41 42
	tsb $1842.w		; 0C 42 18
	adc $1C.b,S		; 63 1C
	sty $20.b		; 84 20
	lda $24.b		; A5 24
	dec $28.b		; C6 28
	sbc [$2C.b]		; E7 2C
	php		; 08
	and ($4A.b),Y		; 31 4A
	and $418C.w,Y		; 39 8C 41
	dec $1049.w		; CE 49 10
	eor ($52.b)		; 52 52
	phy		; 5A
	sty $62.b,X		; 94 62
	dec $6A.b,X		; D6 6A
	bpl  65.b		; 10 41
	.db $42, $18		; 42 18
	.db $42, $18		; 42 18
	.db $42, $18		; 42 18
	.db $42, $20		; 42 20
	adc $28.b,S		; 63 28
	lda $30.b		; A5 30
	sbc [$3C.b]		; E7 3C
	lsr A		; 4A
	eor #$59AD.w		; 49 AD 59
	and ($6A.b),Y		; 31 6A
	lda $7A.b,X		; B5 7A
	clc		; 18
	tda		; 7B
	phy		; 5A
	tda		; 7B
	stz $DE7B.w		; 9C 7B DE
	tda		; 7B
	bpl  65.b		; 10 41
	lda $20.b		; A5 20
	dec $2C.b		; C6 2C
	php		; 08
	and $456B.w,Y		; 39 6B 45
	dec $3151.w		; CE 51 31
	lsr $6AB5.w,X		; 5E B5 6A
	and $9C7B.w,Y		; 39 7B 9C
	tda		; 7B
	tay		; A8
	bit $492C.w,X		; 3C 2C 49
	sta $08E755.l		; 8F 55 E7 08
	ora ($0A.b)		; 12 0A
	tsa		; 3B
	phd		; 0B
	bpl  65.b		; 10 41
	phy		; 5A
	tda		; 7B
	clc		; 18
	tda		; 7B
	dec $72.b,X		; D6 72
	sty $6A.b,X		; 94 6A
	eor ($62.b)		; 52 62
	bpl  90.b		; 10 5A
	dec $8C51.w		; CE 51 8C
	eor #$414A.w		; 49 4A 41
	php		; 08
	and $30E7.w,Y		; 39 E7 30
	dec $2C.b		; C6 2C
	lda $28.b		; A5 28
	sty $24.b		; 84 24
	ora $41107C.l,X		; 1F 7C 10 41
	stz $5A7B.w		; 9C 7B 5A
	tda		; 7B
	clc		; 18
	tda		; 7B
	dec $72.b,X		; D6 72
	sty $6A.b,X		; 94 6A
	eor ($62.b)		; 52 62
	bpl  90.b		; 10 5A
	dec $8C51.w		; CE 51 8C
	eor #$414A.w		; 49 4A 41
	php		; 08
	and $4DCE.w,Y		; 39 CE 4D
	eor ($5A.b)		; 52 5A
	dec $62.b,X		; D6 62
	clc		; 18
	adc $10.b,S		; 63 10
	eor ($42.b,X)		; 41 42
	clc		; 18
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	asl $4E.b,X		; 16 4E
	mvn $D0,$29		; 54 29 D0
	jsr $188C.w		; 20 8C 18
	pha		; 48
	bpl  66.b		; 10 42
	clc		; 18
	eor $28.b,S		; 43 28
	stx $48.b		; 86 48
	asl A		; 0A
	eor $79D0.w,Y		; 59 D0 79
	cld		; D8
	ply		; 7A
	stz $107B.w		; 9C 7B 10
	eor ($42.b,X)		; 41 42
	tsb $1842.w		; 0C 42 18
	adc $1C.b,S		; 63 1C
	sty $20.b		; 84 20
	lda $24.b		; A5 24
	dec $28.b		; C6 28
	sbc [$2C.b]		; E7 2C
	php		; 08
	and ($4A.b),Y		; 31 4A
	and $418C.w,Y		; 39 8C 41
	dec $1049.w		; CE 49 10
	eor ($52.b)		; 52 52
	phy		; 5A
	sty $62.b,X		; 94 62
	dec $6A.b,X		; D6 6A
	bpl  65.b		; 10 41
	mvp $45,$20		; 44 20 45
	bit $66.b		; 24 66
	plp		; 28
	sta [$2C.b]		; 87 2C
	tay		; A8
	bmi -55.b		; 30 C9
	bit $EA.b,X		; 34 EA
	sec		; 38
	cmp #$A834.w		; C9 34 A8
	bmi -121.b		; 30 87
	bit $2866.w		; 2C 66 28
	eor $24.b		; 45 24
	mvp $43,$1C		; 44 1C 43
	trb $42.b		; 14 42
	tsb $4110.w		; 0C 10 41
	sty $10.b		; 84 10
	dec $18.b		; C6 18
	php		; 08
	and ($4A.b,X)		; 21 4A
	and #$318C.w		; 29 8C 31
	dec $1039.w		; CE 39 10
	.db $42, $52		; 42 52
	lsr A		; 4A
	sty $52.b,X		; 94 52
	dec $5A.b,X		; D6 5A
	clc		; 18
	adc $48.b,S		; 63 48
	dec A		; 3A
	cpy $904A.w		; CC 4A 90
	eor ($D6.b,S),Y		; 53 D6
	rtl		; 6B

	bpl  65.b		; 10 41
	eor $4F41.w		; 4D 41 4F
	eor ($51.b,X)		; 41 51
	eor ($53.b,X)		; 41 53
	eor $55.b		; 45 55
	eor $57.b		; 45 57
	eor $79.b		; 45 79
	eor #$499B.w		; 49 9B 49
	lda $1D4D.w,X		; BD 4D 1D
	lsr $727E.w,X		; 5E 7E 72
	phd		; 0B
	and $30C9.w,Y		; 39 C9 30
	stx $28.b		; 86 28
	.db $42, $20		; 42 20
	cop $09.b		; 02 09
	cpx #$4203.w		; E0 03 42
	jsr $2863.w		; 20 63 28
	sta $30.b		; 85 30
	iny		; C8
	sec		; 38
	bit $B141.w		; 2C 41 B1
	eor #$5257.w		; 49 57 52
	asl $DE5B.w,X		; 1E 5B DE
	adc $5E.b,S		; 63 5E
	rti		; 40

	cpx #$CC03.w		; E0 03 CC
	lsr A		; 4A
	bcc  83.b		; 90 53
	dec $6B.b,X		; D6 6B
	bpl  65.b		; 10 41
	asl A		; 0A
	eor ($2B.b),Y		; 51 2B
	eor $614C.w,Y		; 59 4C 61
	adc $8F69.w		; 6D 69 8F
	adc ($B1.b),Y		; 71 B1
	adc ($D3.b),Y		; 71 D3
	adc ($F5.b),Y		; 71 F5
	adc ($17.b),Y		; 71 17
	adc ($39.b)		; 72 39
	adc ($5B.b)		; 72 5B
	adc ($7D.b)		; 72 7D
	adc ($9F.b)		; 72 9F
	adc ($FF.b)		; 72 FF
	adc ($1F.b)		; 72 1F
	adc ($10.b,S),Y		; 73 10
	eor ($8F.b,X)		; 41 8F
	adc ($B1.b),Y		; 71 B1
	adc ($D3.b),Y		; 71 D3
	adc ($F5.b),Y		; 71 F5
	adc ($17.b),Y		; 71 17
	adc ($39.b)		; 72 39
	adc ($5B.b)		; 72 5B
	adc ($7D.b)		; 72 7D
	adc ($9F.b)		; 72 9F
	adc ($DF.b)		; 72 DF
	adc ($1F.b)		; 72 1F
	adc ($5F.b,S),Y		; 73 5F
	adc ($9F.b,S),Y		; 73 9F
	adc ($1F.b,S),Y		; 73 1F
	jmp ($0AFD.w,X)		; 7C FD 0A
	bpl  65.b		; 10 41
	ror $9145.w		; 6E 45 91
	eor #$4DD4.w		; 49 D4 4D
	cli		; 58
	eor ($3A.b)		; 52 3A
	and $4E.b		; 25 4E
	.db $42, $CE		; 42 CE
	.db $42, $9F		; 42 9F
	adc ($5F.b,S),Y		; 73 5F
	adc $DF6B1F.l		; 6F 1F 6B DF
	ror $9F.b		; 66 9F
	.db $62, $7F, $5E		; 62 7F 5E
	lsr $E05A.w,X		; 5E 5A E0
	ora $00.b,S		; 03 00
	brk $08.b		; 00 08
	and $20A7.w,Y		; 39 A7 20
	lsr $08.b		; 46 08
	sty $2B49.w		; 8C 49 2B
	and ($CA.b),Y		; 31 CA
	clc		; 18
	bpl  90.b		; 10 5A
	lda $294E41.l		; AF 41 4E 29
	php		; 08
	adc $7929.w,Y		; 79 29 79
	lda $7EBA51.l		; AF 51 BA 7E
	tya		; 98
	ror $7E76.w,X		; 7E 76 7E
	brk $00.b		; 00 00
	and #$4A79.w		; 29 79 4A
	adc $798C.w,Y		; 79 8C 79
	sbc $7A5279.l		; EF 79 52 7A
	lda $7A.b,X		; B5 7A
	clc		; 18
	tda		; 7B
	lsr $7549.w		; 4E 49 75
	and ($4E.b)		; 32 4E
	and ($4C.b),Y		; 31 4C
	eor ($AF.b),Y		; 51 AF
	eor ($12.b),Y		; 51 12
	eor ($75.b)		; 52 75
	eor ($D8.b)		; 52 D8
	eor ($00.b)		; 52 00
	brk $AF.b		; 00 AF
	eor ($1F.b),Y		; 51 1F
	jmp ($7C1F.w,X)		; 7C 1F 7C
	mvp $86,$0C		; 44 0C 86
	trb $C8.b		; 14 C8
	trb $250A.w		; 1C 0A 25
	jmp $8E2D.w		; 4C 2D 8E
	and $D0.b,X		; 35 D0
	and $4612.w,X		; 3D 12 46
	mvn $96,$4E		; 54 4E 96
	lsr $D8.b,X		; 56 D8
	lsr $671A.w,X		; 5E 1A 67
	brk $00.b		; 00 00
	bvc   8.b		; 50 08
	plb		; AB
	trb $0E.b		; 14 0E
	and ($71.b,X)		; 21 71
	and $39D4.w		; 2D D4 39
	and [$46.b],Y		; 37 46
	txs		; 9A
	eor ($10.b)		; 52 10
	rti		; 40

	adc #$CC24.w		; 69 24 CC
	bmi  47.b		; 30 2F
	and $4992.w,X		; 3D 92 49
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	dec $007B.w,X		; DE 7B 00
	brk $02.b		; 00 02
	asl A		; 0A
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	pld		; 2B
	rol $3A8E.w		; 2E 8E 3A
	sbc ($46.b),Y		; F1 46
	mvn $50,$53		; 54 53 50
	php		; 08
	plb		; AB
	trb $0E.b		; 14 0E
	and ($71.b,X)		; 21 71
	and $39D4.w		; 2D D4 39
	and [$46.b],Y		; 37 46
	txs		; 9A
	eor ($1F.b)		; 52 1F
	jmp ($0000.w,X)		; 7C 00 00
	ora $0D297C.l,X		; 1F 7C 29 0D
	sty $EF19.w		; 8C 19 EF
	and $52.b		; 25 52
	and ($B5.b)		; 32 B5
	rol $4B18.w,X		; 3E 18 4B
	cop $0A.b		; 02 0A
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	pld		; 2B
	rol $3A8E.w		; 2E 8E 3A
	sbc ($46.b),Y		; F1 46
	mvn $DE,$53		; 54 53 DE
	tda		; 7B
	bpl  65.b		; 10 41
	tda		; 7B
	rtl		; 6B

	ora ($12.b)		; 12 12
	cld		; D8
	rol A		; 2A
	dec $C643.w,X		; DE 43 C6
	jsr $314A.w		; 20 4A 31
	dec $523D.w		; CE 3D 52
	lsr $D6.b		; 46 D6
	lsr $5A.b,X		; 56 5A
	adc [$48.b]		; 67 48
	php		; 08
	bvc   8.b		; 50 08
	cli		; 58
	php		; 08
	asl $DE31.w,X		; 1E 31 DE
	tda		; 7B
	bpl  65.b		; 10 41
	stx $40.b		; 86 40
	bpl  66.b		; 10 42
	clc		; 18
	adc $DE.b,S		; 63 DE
	adc $48.b,S		; 63 48
	php		; 08
	bvc   8.b		; 50 08
	cli		; 58
	php		; 08
	asl $E931.w,X		; 1E 31 E9
	jmp $594C.w		; 4C 4C 59
	lda $721265.l		; AF 65 12 72
	adc $7E.b,X		; 75 7E
	cld		; D8
	ror $7FFF.w,X		; 7E FF 7F
	bpl  65.b		; 10 41
	stx $40.b		; 86 40
	pld		; 2B
	eor $D0.b,X		; 55 D0
	adc #$7E75.w		; 69 75 7E
	inc A		; 1A
	adc $5043DE.l,X		; 7F DE 43 50
	php		; 08
	cli		; 58
	jsr $58DE.w		; 20 DE 58
	bpl  82.b		; 10 52
	dec $DE63.w,X		; DE 63 DE
	tda		; 7B
	bvc   8.b		; 50 08
	ora $639C12.l,X		; 1F 12 9C 63
	bpl  65.b		; 10 41
	sty $10.b		; 84 10
	stx $1A10.w		; 8E 10 1A
	ora $3A1F.w,Y		; 19 1F 3A
	eor $11846B.l,X		; 5F 6B 84 11
	dec $1A.b		; C6 1A
	ora $1A1F1B.l,X		; 1F 1B 1F 1A
	jmp.w [$8618]		; DC 18 86
	rti		; 40

	asl A		; 0A
	adc ($D0.b),Y		; 71 D0
	adc $7E96.w,X		; 7D 96 7E
	dec $107B.w,X		; DE 7B 10
	eor ($84.b,X)		; 41 84
	bpl -114.b		; 10 8E
	bpl  26.b		; 10 1A
	ora $3A1F.w,Y		; 19 1F 3A
	eor $11846B.l,X		; 5F 6B 84 11
	dec $1A.b		; C6 1A
	dex		; CA
	bpl -112.b		; 10 90
	ora $3258.w,Y		; 19 58 32
	stx $40.b		; 86 40
	asl A		; 0A
	adc ($D0.b),Y		; 71 D0
	adc $7F18.w,X		; 7D 18 7F
	dec $107B.w,X		; DE 7B 10
	eor ($95.b,X)		; 41 95
	phy		; 5A
	ora $3A6B.w,Y		; 19 6B 3A
	adc $12735B.l		; 6F 5B 73 12
	lsr $3D8E.w		; 4E 8E 3D
	lsr A		; 4A
	php		; 08
	jmp $8E10.w		; 4C 10 8E
	clc		; 18
	bne  32.b		; D0 20
	ora ($29.b)		; 12 29
	mvn $96,$31		; 54 31 96
	and $41D8.w,Y		; 39 D8 41
	inc A		; 1A
	lsr A		; 4A
	bpl  65.b		; 10 41
	sty $10.b		; 84 10
	iny		; C8
	bpl  10.b		; 10 0A
	ora ($8E.b),Y		; 11 8E
	and ($86.b,X)		; 21 86
	and #$3A54.w		; 29 54 3A
	ora $1D.b		; 05 1D
	inc A		; 1A
	eor ($0A.b,S),Y		; 53 0A
	lsr A		; 4A
	jmp $8E52.w		; 4C 52 8E
	phy		; 5A
	stx $29.b		; 86 29
	bne  98.b		; D0 62
	ora ($6B.b)		; 12 6B
	ora ($7B.b)		; 12 7B
	bpl  65.b		; 10 41
	sty $10.b		; 84 10
	bne  37.b		; D0 25
	and ($4E.b),Y		; 31 4E
	eor ($52.b)		; 52 52
	adc ($56.b,S),Y		; 73 56
	sty $5A.b,X		; 94 5A
	lda $5E.b,X		; B5 5E
	dec $62.b,X		; D6 62
	sbc [$66.b],Y		; F7 66
	clc		; 18
	rtl		; 6B

	and $5A6F.w,Y		; 39 6F 5A
	adc ($7B.b,S),Y		; 73 7B
	adc [$9C.b],Y		; 77 9C
	tda		; 7B
	stx $1021.w		; 8E 21 10
	eor ($84.b,X)		; 41 84
	bpl -56.b		; 10 C8
	bpl  10.b		; 10 0A
	ora ($8E.b),Y		; 11 8E
	and ($D0.b,X)		; 21 D0
	and $54.b		; 25 54
	dec A		; 3A
	stx $3E.b,Y		; 96 3E
	inc A		; 1A
	eor ($05.b,S),Y		; 53 05
	ora $2986.w,X		; 1D 86 29
	php		; 08
	brk $D6.b		; 00 D6
	plp		; 28
	dec $D639.w		; CE 39 D6
	phy		; 5A
	dec $107B.w,X		; DE 7B 10
	eor ($32.b,X)		; 41 32
	dec A		; 3A
	eor ($3E.b,S),Y		; 53 3E
	stz $42.b,X		; 74 42
	sta $46.b,X		; 95 46
	ldx $4A.b,Y		; B6 4A
	cmp [$4E.b],Y		; D7 4E
	sty $5A.b,X		; 94 5A
	lda $5E.b,X		; B5 5E
	dec $62.b,X		; D6 62
	sbc [$66.b],Y		; F7 66
	clc		; 18
	rtl		; 6B

	and $5A6F.w,Y		; 39 6F 5A
	adc ($7B.b,S),Y		; 73 7B
	adc [$F8.b],Y		; 77 F8
	eor ($10.b)		; 52 10
	eor ($84.b,X)		; 41 84
	bpl -56.b		; 10 C8
	bpl  10.b		; 10 0A
	ora ($8E.b),Y		; 11 8E
	and ($D0.b,X)		; 21 D0
	and $54.b		; 25 54
	dec A		; 3A
	stx $3E.b,Y		; 96 3E
	inc A		; 1A
	eor ($12.b,S),Y		; 53 12
	tda		; 7B
	asl A		; 0A
	lsr A		; 4A
	jmp $8E52.w		; 4C 52 8E
	phy		; 5A
	ora $1D.b		; 05 1D
	stx $29.b		; 86 29
	pha		; 48
	rol A		; 2A
	bpl  65.b		; 10 41
	dec $18.b		; C6 18
	cmp ($18.b)		; D2 18
	bit $1F1D.w,X		; 3C 1D 1F
	dec A		; 3A
	cmp $18EA5A.l,X		; DF 5A EA 18
	ror $5521.w		; 6E 21 55
	rol $533C.w,X		; 3E 3C 53
	sbc [$40.b]		; E7 40
	lsr A		; 4A
	eor ($CE.b),Y		; 51 CE
	adc ($73.b,X)		; 61 73
	ply		; 7A
	clc		; 18
	tda		; 7B
	dec $107B.w,X		; DE 7B 10
	eor ($42.b,X)		; 41 42
	clc		; 18
	.db $82, $18, $C3		; 82 18 C3
	clc		; 18
	tsb $19.b		; 04 19
	eor $19.b		; 45 19
	stx $19.b		; 86 19
	cmp [$19.b]		; C7 19
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7BDE7C.l,X		; 1F 7C DE 7B
	bpl  65.b		; 10 41
	.db $42, $10		; 42 10
	.db $42, $10		; 42 10
	.db $42, $10		; 42 10
	.db $42, $10		; 42 10
	.db $42, $10		; 42 10
	adc $14.b,S		; 63 14
	sty $18.b		; 84 18
	lda $1C.b		; A5 1C
	dec $20.b		; C6 20
	lsr A		; 4A
	and ($E0.b),Y		; 31 E0
	ora $63.b,S		; 03 63
	trb $42.b		; 14 42
	bpl  66.b		; 10 42
	tsb $0842.w		; 0C 42 08
	bpl  65.b		; 10 41
	.db $42, $10		; 42 10
	dec $20.b		; C6 20
	lsr A		; 4A
	and ($CE.b),Y		; 31 CE
	eor ($52.b,X)		; 41 52
	eor ($D6.b)		; 52 D6
	.db $62, $8C, $39		; 62 8C 39
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	lda $28.b,S		; A3 28
	sta $24.b,S		; 83 24
	.db $62, $20, $42		; 62 20 42
	trb $1842.w		; 1C 42 18
	.db $42, $14		; 42 14
	bpl  65.b		; 10 41
	.db $42, $10		; 42 10
	dec $20.b		; C6 20
	lsr A		; 4A
	and ($1F.b),Y		; 31 1F
	jmp ($7C1F.w,X)		; 7C 1F 7C
	lsr A		; 4A
	and ($8C.b),Y		; 31 8C
	and $41CE.w,Y		; 39 CE 41
	bpl  74.b		; 10 4A
	eor ($52.b)		; 52 52
	sty $5A.b,X		; 94 5A
	dec $62.b,X		; D6 62
	clc		; 18
	rtl		; 6B

	phy		; 5A
	adc ($BC.b,S),Y		; 73 BC
	tda		; 7B
	bpl  65.b		; 10 41
	sty $10.b		; 84 10
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7FFF7C.l,X		; 1F 7C FF 7F
	bpl  65.b		; 10 41
	ldx #$0428.w		; A2 28 04
	and $5188.w,Y		; 39 88 51
	lsr $A26A.w		; 4E 6A A2
	plp		; 28
	tsb $39.b		; 04 39
	dey		; 88
	eor ($4E.b),Y		; 51 4E
	ror A		; 6A
	tya		; 98
	tda		; 7B
	tya		; 98
	tda		; 7B
	ldx #$0428.w		; A2 28 04
	and $5188.w,Y		; 39 88 51
	lsr $566A.w		; 4E 6A 56
	tda		; 7B
	bpl  65.b		; 10 41
	sty $18.b		; 84 18
	stz $10.b		; 64 10
	mvp $C6,$08		; 44 08 C6
	jsr $18A6.w		; 20 A6 18
	stx $10.b		; 86 10
	php		; 08
	and #$20E8.w		; 29 E8 20
	iny		; C8
	clc		; 18
	.db $42, $60		; 42 60
	.db $42, $50		; 42 50
	.db $42, $14		; 42 14
	.db $42, $38		; 42 38
	.db $42, $2C		; 42 2C
	.db $42, $20		; 42 20
	bpl  65.b		; 10 41
	.db $42, $60		; 42 60
	.db $42, $50		; 42 50
	.db $42, $44		; 42 44
	.db $42, $38		; 42 38
	.db $42, $2C		; 42 2C
	.db $42, $20		; 42 20
	.db $42, $14		; 42 14
	lsr $29.b		; 46 29
.ACCU 16
.INDEX 16
	rep #$32		; C2 32
	asl $4222.w		; 0E 22 42
	php		; 08
	.db $42, $08		; 42 08
	adc $18.b,S		; 63 18
	sty $28.b		; 84 28
	lda $38.b		; A5 38
	bpl  65.b		; 10 41
	.db $42, $08		; 42 08
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	eor $08.b,S		; 43 08
	mvp $65,$0C		; 44 0C 65
	bpl -122.b		; 10 86
	trb $A7.b		; 14 A7
	clc		; 18
	iny		; C8
	trb $20E9.w		; 1C E9 20
	asl A		; 0A
	and $4C.b		; 25 4C
	and $358E.w		; 2D 8E 35
	bne  61.b		; D0 3D
	ora ($46.b)		; 12 46
	bpl  65.b		; 10 41
	bvc   8.b		; 50 08
	plb		; AB
	trb $0E.b		; 14 0E
	and ($71.b,X)		; 21 71
	and $39D4.w		; 2D D4 39
	and [$46.b],Y		; 37 46
	txs		; 9A
	eor ($10.b)		; 52 10
	rti		; 40

	adc #$CC24.w		; 69 24 CC
	bmi  47.b		; 30 2F
	and $4992.w,X		; 3D 92 49
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	dec $107B.w,X		; DE 7B 10
	eor ($02.b,X)		; 41 02
	asl A		; 0A
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	pld		; 2B
	rol $3A8E.w		; 2E 8E 3A
	sbc ($46.b),Y		; F1 46
	mvn $50,$53		; 54 53 50
	php		; 08
	plb		; AB
	trb $0E.b		; 14 0E
	and ($71.b,X)		; 21 71
	and $39D4.w		; 2D D4 39
	and [$46.b],Y		; 37 46
	txs		; 9A
	eor ($1F.b)		; 52 1F
	jmp ($4110.w,X)		; 7C 10 41
	ora $0D297C.l,X		; 1F 7C 29 0D
	sty $EF19.w		; 8C 19 EF
	and $52.b		; 25 52
	and ($B5.b)		; 32 B5
	rol $4B18.w,X		; 3E 18 4B
	cop $0A.b		; 02 0A
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	pld		; 2B
	rol $3A8E.w		; 2E 8E 3A
	sbc ($46.b),Y		; F1 46
	mvn $DE,$53		; 54 53 DE
	tda		; 7B
	php		; 08
	.db $42, $6B		; 42 6B
	and #$39EF.w		; 29 EF 39
	and ($42.b),Y		; 31 42
	adc ($4A.b,S),Y		; 73 4A
	lsr $32.b,X		; 56 32
	phx		; DA
	.db $42, $48		; 42 48
	and ($C8.b,X)		; 21 C8
	and #$1D07.w		; 29 07 1D
	ror A		; 6A
	and #$35CD.w		; 29 CD 35
	bmi  66.b		; 30 42
	sta ($4E.b,S),Y		; 93 4E
	inc $5A.b,X		; F6 5A
	eor $0867.w,Y		; 59 67 08
	.db $42, $39		; 42 39
	tad		; 5B
	phy		; 5A
	eor $9C637B.l,X		; 5F 7B 63 9C
	adc [$BD.b]		; 67 BD
	rtl		; 6B

	dec $EF6F.w,X		; DE 6F EF
	and $4210.w,X		; 3D 10 42
	and ($46.b),Y		; 31 46
	eor ($4A.b)		; 52 4A
	adc ($4E.b,S),Y		; 73 4E
	sty $52.b,X		; 94 52
	lda $56.b,X		; B5 56
	dec $5A.b,X		; D6 5A
	sbc [$5E.b],Y		; F7 5E
	php		; 08
	.db $42, $07		; 42 07
	ora $296A.w,X		; 1D 6A 29
	cmp $3035.w		; CD 35 30
	.db $42, $93		; 42 93
	lsr $5AF6.w		; 4E F6 5A
	sbc $42103D.l		; EF 3D 10 42
	and ($46.b),Y		; 31 46
	eor ($4A.b)		; 52 4A
	adc ($4E.b,S),Y		; 73 4E
	sty $52.b,X		; 94 52
	and $5A5B.w,Y		; 39 5B 5A
	eor $08637B.l,X		; 5F 7B 63 08
	.db $42, $6B		; 42 6B
	and #$39EF.w		; 29 EF 39
	and ($42.b),Y		; 31 42
	adc ($4A.b,S),Y		; 73 4A
	ora $42DA21.l,X		; 1F 21 DA 42
	ror A		; 6A
	eor ($EE.b),Y		; 51 EE
	adc ($07.b,X)		; 61 07
	ora $296A.w,X		; 1D 6A 29
	cmp $3035.w		; CD 35 30
	.db $42, $93		; 42 93
	lsr $5AF6.w		; 4E F6 5A
	eor $0867.w,Y		; 59 67 08
	.db $42, $C6		; 42 C6
	clc		; 18
	cmp ($18.b)		; D2 18
	bit $1F1D.w,X		; 3C 1D 1F
	dec A		; 3A
	cmp $190D5A.l,X		; DF 5A 0D 19
	pea $0A25.w		; F4 25 0A
	and ($D0.b),Y		; 31 D0
	eor #$6AD8.w		; 49 D8 6A
	asl $19.b		; 06 19
	txa		; 8A
	and #$5A54.w		; 29 54 5A
	ora $7BDE7C.l,X		; 1F 7C DE 7B
	php		; 08
	.db $42, $C6		; 42 C6
	clc		; 18
	cmp ($18.b)		; D2 18
	bit $1F1D.w,X		; 3C 1D 1F
	dec A		; 3A
	cmp $190D5A.l,X		; DF 5A 0D 19
	pea $0A25.w		; F4 25 0A
	and ($D0.b),Y		; 31 D0
	eor #$6AD8.w		; 49 D8 6A
	cmp [$28.b]		; C7 28
	lsr A		; 4A
	eor ($10.b),Y		; 51 10
	ror A		; 6A
	clc		; 18
	adc $007BDE.l,X		; 7F DE 7B 00
	brk $86.b		; 00 86
	rti		; 40

	lsr A		; 4A
	adc $79AD.w,X		; 7D AD 79
	bpl 122.b		; 10 7A
	adc ($7A.b,S),Y		; 73 7A
	dec $7A.b,X		; D6 7A
	and $9C7B.w,Y		; 39 7B 9C
	tda		; 7B
	dec $7A.b,X		; D6 7A
	bpl 122.b		; 10 7A
	lsr A		; 4A
	adc $001C.w,X		; 7D 1C 00
	ora $1E00.w,X		; 1D 00 1E
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	bpl  80.b		; 10 50
	php		; 08
	tsx		; BA
	and ($7F.b,X)		; 21 7F
	lsr $5F.b		; 46 5F
	adc [$11.b]		; 67 11
	tsb $1858.w		; 0C 58 18
	cmp $480E20.l,X		; DF 20 0E 48
	mvn $3F,$61		; 54 61 3F
	pld		; 2B
	cpy $38.b		; C4 38
	ora $5872.w		; 0D 72 58
	adc $007FFF.l,X		; 7F FF 7F 00
	brk $84.b		; 00 84
	bpl  80.b		; 10 50
	php		; 08
	tsx		; BA
	and ($7F.b,X)		; 21 7F
	lsr $5F.b		; 46 5F
	adc [$7F.b]		; 67 7F
	asl A		; 0A
	ora $43FF13.l,X		; 1F 13 FF 43
	ldy $DF04.w,X		; BC 04 DF
	and $7DF0.w		; 2D F0 7D
	mvp $2A,$50		; 44 50 2A
	adc $7EF8.w,X		; 7D F8 7E
	sbc $00007F.l,X		; FF 7F 00 00
	sty $10.b		; 84 10
	bvc   8.b		; 50 08
	tsx		; BA
	and ($7F.b,X)		; 21 7F
	lsr $5F.b		; 46 5F
	adc [$80.b]		; 67 80
	and #$3A04.w		; 29 04 3A
	dey		; 88
	lsr A		; 4A
	and $39412B.l,X		; 3F 2B 41 39
	and $6A.b		; 25 6A
	.db $82, $51, $8B		; 82 51 8B
	adc ($95.b)		; 72 95
	adc $007FFF.l,X		; 7F FF 7F 00
	brk $84.b		; 00 84
	bpl  80.b		; 10 50
	php		; 08
	tsx		; BA
	and ($7F.b,X)		; 21 7F
	lsr $5F.b		; 46 5F
	adc [$1E.b]		; 67 1E
	ora $FF.b		; 05 FF
	ora $22FF.w		; 0D FF 22
	adc $081C4B.l,X		; 7F 4B 1C 08
	pha		; 48
	adc ($C4.b),Y		; 71 C4
	mvp $72,$0D		; 44 0D 72
	cli		; 58
	adc $007FFF.l,X		; 7F FF 7F 00
	brk $84.b		; 00 84
	bpl  80.b		; 10 50
	php		; 08
	tsx		; BA
	and ($7F.b,X)		; 21 7F
	lsr $5F.b		; 46 5F
	adc [$11.b]		; 67 11
	tsb $1858.w		; 0C 58 18
	cmp $0A7F20.l,X		; DF 20 7F 0A
	ora $7EB813.l,X		; 1F 13 B8 7E
	cpy $38.b		; C4 38
	ora $5872.w		; 0D 72 58
	adc $007FFF.l,X		; 7F FF 7F 00
	brk $84.b		; 00 84
	bpl  80.b		; 10 50
	php		; 08
	tsx		; BA
	and ($7F.b,X)		; 21 7F
	lsr $5F.b		; 46 5F
	adc [$80.b]		; 67 80
	ora #$0A42.w		; 09 42 0A
	cpx $0A.b		; E4 0A
	sbc $2B3F49.l,X		; FF 49 3F 2B
	sbc $38C428.l,X		; FF 28 C4 38
	ora $5872.w		; 0D 72 58
	adc $007FFF.l,X		; 7F FF 7F 00
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
	adc $000000.l,X		; 7F 00 00 00
	bpl -33.b		; 10 DF
	ror A		; 6A
	sbc $6F3F6A.l,X		; FF 6A 3F 6F
	eor $779F73.l,X		; 5F 73 9F 77
	lda $7FFF7B.l,X		; BF 7B FF 7F
	lda $6ADF7B.l,X		; BF 7B DF 6A
	and $45BF5A.l,X		; 3F 5A BF 45
	ora $349F45.l,X		; 1F 45 9F 34
	ora $000034.l,X		; 1F 34 00 00
	brk $10.b		; 00 10
	sbc ($7F.b),Y		; F1 7F
	sbc ($7F.b,S),Y		; F3 7F
	sbc $7F.b,X		; F5 7F
	sbc [$7F.b],Y		; F7 7F
	plx		; FA
	adc $FF7FFC.l,X		; 7F FC 7F FF
	adc $F67FFC.l,X		; 7F FC 7F F6
	adc $ED7FF1.l,X		; 7F F1 7F ED
	adc $E47FE8.l,X		; 7F E8 7F E4
	adc $007FE0.l,X		; 7F E0 7F 00
	brk $84.b		; 00 84
	bpl -111.b		; 10 91
	bpl -70.b		; 10 BA
	and ($7F.b,X)		; 21 7F
	lsr $5F.b		; 46 5F
	adc [$1A.b]		; 67 1A
	trb $5F.b		; 14 5F
	ora $A7.b,S		; 03 A7
	plp		; 28
	sbc #$6D34.w		; E9 34 6D
	eor #$7E2E.w		; 49 2E 7E
	sbc $7E.b,X		; F5 7E
	tsb $11.b		; 04 11
	asl $1A.b		; 06 1A
	sbc $00007F.l,X		; FF 7F 00 00
	sty $10.b		; 84 10
	cmp ($18.b),Y		; D1 18
	tsx		; BA
	and ($7F.b,X)		; 21 7F
	lsr $5F.b		; 46 5F
	adc [$BF.b]		; 67 BF
	ora ($5F.b,X)		; 01 5F
	ora $C6.b,S		; 03 C6
	pha		; 48
	dec $D669.w		; CE 69 D6
	ror $2904.w,X		; 7E 04 29
	cpy $31.b		; C4 31
	sty $3A.b		; 84 3A
	eor ($6B.b),Y		; 51 6B
	sbc $00007F.l,X		; FF 7F 00 00
	sty $10.b		; 84 10
	bcc  16.b		; 90 10
	tsx		; BA
	and ($7F.b,X)		; 21 7F
	lsr $5F.b		; 46 5F
	adc [$BF.b]		; 67 BF
	ora #$0B5F.w		; 09 5F 0B
	sty $28.b		; 84 28
	dec $48.b		; C6 48
	dec $D669.w		; CE 69 D6
	ror $11AE.w,X		; 7E AE 11
	stz $2A.b,X		; 74 2A
	jmp $7FFF53.l		; 5C 53 FF 7F
	brk $00.b		; 00 00
	sty $10.b		; 84 10
	bcc  16.b		; 90 10
	tsx		; BA
	and ($7F.b,X)		; 21 7F
	lsr $5F.b		; 46 5F
	adc [$BF.b]		; 67 BF
	ora ($5F.b,X)		; 01 5F
	ora $84.b,S		; 03 84
	plp		; 28
	dec $48.b		; C6 48
	dec $D669.w		; CE 69 D6
	ror $1096.w,X		; 7E 96 10
	stz $DF58.w,X		; 9E 58 DF
	ror $7FFF.w,X		; 7E FF 7F
	brk $00.b		; 00 00
	mvp $9F,$28		; 44 28 9F
	tad		; 5B
	ora $66DF5B.l,X		; 1F 5B DF 66
	cmp $7EDF72.l,X		; DF 72 DF 7E
	jmp.w [$D97E]		; DC 7E D9
	ror $7ED6.w,X		; 7E D6 7E
	rol $73.b,X		; 36 73
	stx $67.b,Y		; 96 67
	inc $5B.b,X		; F6 5B
	sbc $FC5B.w,Y		; F9 5B FC
	tad		; 5B
	sbc $00005B.l,X		; FF 5B 00 00
	.db $42, $08		; 42 08
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7FFF7C.l,X		; 1F 7C FF 7F
	lda $3C.b		; A5 3C
	ora $109C1D.l		; 0F 1D 9C 10
	adc $511F05.l,X		; 7F 05 1F 51
	eor $37FF72.l,X		; 5F 72 FF 37
	cmp $3CE302.l,X		; DF 02 E3 3C
	sty $5279.w		; 8C 79 52
	ror $7F99.w,X		; 7E 99 7F
	rti		; 40

	cop $40.b		; 02 40
	ora $00.b,S		; 03 00
	brk $FF.b		; 00 FF
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EF.b		; 00 EF
	and $7FFF.w,X		; 3D FF 7F
	dec $0439.w		; CE 39 04
	trb $4DB0.w		; 1C B0 4D
	jmp ($CE7F.w,X)		; 7C 7F CE
	and $00A2.w,Y		; 39 A2 00
	bvc  58.b		; 50 3A
	inc $CE73.w,X		; FE 73 CE
	and $1860.w,Y		; 39 60 18
	asl A		; 0A
	lsr A		; 4A
	cmp $7F.b,X		; D5 7F
	brk $00.b		; 00 00
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
	brk $44.b		; 00 44
	bmi -122.b		; 30 86
	bmi -56.b		; 30 C8
	bmi  42.b		; 30 2A
	and ($8C.b),Y		; 31 8C
	and ($CE.b),Y		; 31 CE
	and $10.b,X		; 35 10
	dec A		; 3A
	eor ($3E.b)		; 52 3E
	sty $46.b,X		; 94 46
	dec $4E.b,X		; D6 4E
	clc		; 18
	eor [$5A.b],Y		; 57 5A
	eor $DE679C.l,X		; 5F 9C 67 DE
	adc $0077DE.l		; 6F DE 77 00
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
	trb $5F00.w		; 1C 00 5F
	eor ($FF.b,X)		; 41 FF
	adc $840000.l,X		; 7F 00 00 84
	bpl -59.b		; 10 C5
	trb $2507.w		; 1C 07 25
	ror A		; 6A
	and ($EE.b),Y		; 31 EE
	eor ($72.b,X)		; 41 72
	eor ($F6.b)		; 52 F6
	.db $62, $7A, $73		; 62 7A 73
	jsr $4067.w		; 20 67 40
	rtl		; 6B

	rts		; 60

	adc $A07380.l		; 6F 80 73 A0
	adc [$C0.b],Y		; 77 C0
	tda		; 7B
	cpx #$007F.w		; E0 7F 00
	brk $50.b		; 00 50
	and $95.b,S		; 23 95
	and [$DA.b]		; 27 DA
	pld		; 2B
	sta $5B1F7A.l,X		; 9F 7A 1F 5B
	sta $7D904F.l,X		; 9F 4F 90 7D
	mvn $39,$6A		; 54 6A 39
	eor [$FF.b],Y		; 57 FF
	eor $1F.b,S		; 43 1F
	jmp ($7FBA.w,X)		; 7C BA 7F
	ora $40F020.l,X		; 1F 20 F0 40
	dec $18.b		; C6 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $5249.w		; 8C 49 52
	phy		; 5A
	clc		; 18
	rtl		; 6B

	dec $1F7B.w,X		; DE 7B 1F
	jmp ($7C1F.w,X)		; 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	brk $00.b		; 00 00
	tya		; 98
	ora ($1C.b,X)		; 01 1C
	cop $9F.b		; 02 9F
	jsl $9F431F.l		; 22 1F 43 9F
	adc $00.b,S		; 63 00
	brk $42.b		; 00 42
	tsb $1442.w		; 0C 42 14
	.db $42, $24		; 42 24
	mvp $86,$30		; 44 30 86
	sec		; 38
	iny		; C8
	rti		; 40

	asl A		; 0A
	eor #$514C.w		; 49 4C 51
	stx $D059.w		; 8E 59 D0
	adc ($12.b,X)		; 61 12
	ror A		; 6A
	mvn $96,$72		; 54 72 96
	ply		; 7A
	cld		; D8
	ror $7F1A.w,X		; 7E 1A 7F
	brk $00.b		; 00 00
	sty $70.b		; 84 70
	dec $BD7F.w,X		; DE 7F BD
	adc $FF0000.l,X		; 7F 00 00 FF
	adc $E07084.l,X		; 7F 84 70 E0
	adc $397F18.l,X		; 7F 18 7F 39
	adc $7B7F5A.l,X		; 7F 5A 7F 7B
	adc $BD7F9C.l,X		; 7F 9C 7F BD
	adc $FF7FDE.l,X		; 7F DE 7F FF
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
	ror $7C1F.w,X		; 7E 1F 7C
	inc A		; 1A
	brk $1F.b		; 00 1F
	and $FF.b,X		; 35 FF
	adc $880000.l,X		; 7F 00 00 88
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
	cmp [$14.b]		; C7 14
	xce		; FB
	trb $0000.w		; 1C 00 00
	asl $01.b,X		; 16 01
	and $13FF02.l,X		; 3F 02 FF 13
	ora $2BDF10.l,X		; 1F 10 DF 2B
	sta $0A7720.l,X		; 9F 20 77 0A
	lda $5A3F45.l,X		; BF 45 3F 5A
	cmp $6B5F6A.l,X		; DF 6A 5F 6B
	sbc $00007F.l,X		; FF 7F 00 00
	dey		; 88
	brk $FB.b		; 00 FB
	trb $0000.w		; 1C 00 00
	asl $01.b,X		; 16 01
	and $13FF02.l,X		; 3F 02 FF 13
	ora $523F10.l,X		; 1F 10 3F 52
	sta $351F20.l,X		; 9F 20 1F 35
	lda $5A3F45.l,X		; BF 45 3F 5A
	cmp $6B5F6A.l,X		; DF 6A 5F 6B
	sbc $00007F.l,X		; FF 7F 00 00
	ldy $18.b		; A4 18
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
	brk $10.b		; 00 10
	bra  32.b		; 80 20
	bra  52.b		; 80 34
	brk $35.b		; 00 35
	dec A		; 3A
	cop $11.b		; 02 11
	ora ($1F.b,X)		; 01 1F
	jsr $209F.w		; 20 9F 20
	lda $690445.l,X		; BF 45 04 69
	tay		; A8
	adc #$7E31.w		; 69 31 7E
	dec $7E.b,X		; D6 7E
	phy		; 5A
	adc $007FFF.l,X		; 7F FF 7F 00
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
	trb $5F00.w		; 1C 00 5F
	eor ($FF.b,X)		; 41 FF
	adc $000000.l,X		; 7F 00 00 00
	brk $10.b		; 00 10
	brk $DA.b		; 00 DA
	and $4A7F.w		; 2D 7F 4A
	sta $015F73.l,X		; 9F 73 5F 01
	ora $304203.l,X		; 1F 03 42 30
	php		; 08
	eor #$6A10.w		; 49 10 6A
	clc		; 18
	adc $C02920.l,X		; 7F 20 29 C0
	eor #$6ACA.w		; 49 CA 6A
	sbc $00007F.l,X		; FF 7F 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	phx		; DA
	and $4A9F.w		; 2D 9F 4A
	sta $015F73.l,X		; 9F 73 5F 01
	ora $001F03.l,X		; 1F 03 1F 00
	ora $69AD61.l,X		; 1F 61 AD 69
	dec $7E.b,X		; D6 7E
	ora $20047C.l,X		; 1F 7C 04 20
	bcc  80.b		; 90 50
	sbc $00007F.l,X		; FF 7F 00 00
	brk $00.b		; 00 00
	asl $DA00.w		; 0E 00 DA
	and $4A9F.w		; 2D 9F 4A
	sta $015F73.l,X		; 9F 73 5F 01
	ora $509F03.l,X		; 1F 03 9F 50
	dec $1879.w		; CE 79 18
	adc $000100.l,X		; 7F 00 01 00
	cop $C6.b		; 02 C6
	inc A		; 1A
	ora $7FFF7E.l,X		; 1F 7E FF 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	phx		; DA
	and $4A9F.w		; 2D 9F 4A
	sta $015F73.l,X		; 9F 73 5F 01
	ora $508403.l,X		; 1F 03 84 50
	sty $1879.w		; 8C 79 18
	adc $5C0190.l,X		; 7F 90 01 5C
	rol A		; 2A
	sbc $001E4F.l,X		; FF 4F 1E 00
	sbc $00007F.l,X		; FF 7F 00 00
	jsl $001000.l		; 22 00 10 00
	phx		; DA
	and $4A9F.w		; 2D 9F 4A
	sta $015F73.l,X		; 9F 73 5F 01
	ora $304203.l,X		; 1F 03 42 30
	php		; 08
	eor #$6A10.w		; 49 10 6A
	clc		; 18
	adc $FE2CB5.l,X		; 7F B5 2C FE
	bvc  63.b		; 50 3F
	tda		; 7B
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $42, $0C		; 42 0C
	sty $18.b		; 84 18
	dec $20.b		; C6 20
	php		; 08
	and ($4A.b,X)		; 21 4A
	and #$2D8C.w		; 29 8C 2D
	dec $EF35.w		; CE 35 EF
	and $3E10.w,Y		; 39 10 3E
	eor ($46.b)		; 52 46
	sty $4E.b,X		; 94 4E
	dec $56.b,X		; D6 56
	clc		; 18
	eor $9C675A.l,X		; 5F 5A 67 9C
	adc $430000.l		; 6F 00 00 43
	ora #$7EAD.w		; 09 AD 7E
	beq 126.b		; F0 7E
	bit $7F.b,X		; 34 7F
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $1862.w		; 0C 62 18
	.db $82, $20, $C4		; 82 20 C4
	plp		; 28
	asl $31.b		; 06 31
	pha		; 48
	and $418A.w,Y		; 39 8A 41
	cpy $0E49.w		; CC 49 0E
	eor ($50.b)		; 52 50
	phy		; 5A
	sta ($62.b)		; 92 62
	pei ($6A.b)		; D4 6A
	asl $73.b,X		; 16 73
	cli		; 58
	tda		; 7B
	txs		; 9A
	tda		; 7B
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
	adc $84358D.l,X		; 7F 8D 35 84
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
	adc $84358D.l,X		; 7F 8D 35 84
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
	sta $8435.w		; 8D 35 84
	bpl -112.b		; 10 90
	bpl -42.b		; 10 D6
	and #$425F.w		; 29 5F 42
	eor $01BF6B.l,X		; 5F 6B BF 01
	eor $308403.l,X		; 5F 03 84 30
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
	adc $84358D.l,X		; 7F 8D 35 84
	bpl -112.b		; 10 90
	bpl -10.b		; 10 F6
	and ($5F.b,X)		; 21 5F
	.db $42, $5F		; 42 5F
	rtl		; 6B

	lda $0B5F09.l,X		; BF 09 5F 0B
	sty $34.b		; 84 34
	dec $48.b		; C6 48
	dec $D669.w		; CE 69 D6
	ror $11AE.w,X		; 7E AE 11
	ora [$36.b],Y		; 17 36
	lda $7FFF4F.l,X		; BF 4F FF 7F
	sta $8435.w		; 8D 35 84
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
	bvc   8.b		; 50 08
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
	adc $84358D.l,X		; 7F 8D 35 84
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
	rol $7F5E.w,X		; 3E 5E 7F
	adc $007FFF.l,X		; 7F FF 7F 00
	brk $45.b		; 00 45
	brk $95.b		; 00 95
	ora $5FFF.w,Y		; 19 FF 5F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $18.b		; 84 18
	bpl   0.b		; 10 00
	inc A		; 1A
	ora $3A1F.w,Y		; 19 1F 3A
	ora $01BF63.l,X		; 1F 63 BF 01
	eor $452903.l,X		; 5F 03 29 45
	dec $40.b		; C6 40
	dec $D67D.w		; CE 7D D6
	ror $1096.w,X		; 7E 96 10
	stz $DF58.w,X		; 9E 58 DF
	ror $7FFF.w,X		; 7E FF 7F
	brk $00.b		; 00 00
	sty $10.b		; 84 10
	wai		; CB
	tsb $1F.b		; 04 1F
	jmp ($7C1F.w,X)		; 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $425F7C.l,X		; 1F 7C 5F 42
	eor $01BF6B.l,X		; 5F 6B BF 01
	eor $308403.l,X		; 5F 03 84 30
	dec $1879.w		; CE 79 18
	adc $480902.l,X		; 7F 02 09 48
	jsl $1F43D0.l		; 22 D0 43 1F
	and $FF.b,X		; 35 FF
	adc $844010.l,X		; 7F 10 40 84
	bpl -112.b		; 10 90
	bpl  90.b		; 10 5A
	and ($5F.b,X)		; 21 5F
	.db $42, $5F		; 42 5F
	rtl		; 6B

	cmp $035F01.l,X		; DF 01 5F 03
	dec $50.b		; C6 50
	dec $1879.w		; CE 79 18
	adc $D6098C.l,X		; 7F 8C 09 D6
	rol A		; 2A
	dec $1E4B.w,X		; DE 4B 1E
	brk $FF.b		; 00 FF
	adc $842110.l,X		; 7F 10 21 84
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
	stz $DF58.w,X		; 9E 58 DF
	ror $7FFF.w,X		; 7E FF 7F
	php		; 08
	jsl $501084.l		; 22 84 10 50
	php		; 08
	phy		; 5A
	and ($5F.b,X)		; 21 5F
	.db $42, $5F		; 42 5F
	rtl		; 6B

	lda $035F01.l,X		; BF 01 5F 03
	clc		; 18
	brk $85.b		; 00 85
	plp		; 28
	sta ($79.b)		; 92 79
	cld		; D8
	ror $1104.w,X		; 7E 04 11
	asl $1A.b		; 06 1A
	cpy $FF32.w		; CC 32 FF
	adc $1F0000.l,X		; 7F 00 00 1F
	adc ($12.b,S),Y		; 73 12
	brk $FF.b		; 00 FF
	adc $3F0000.l,X		; 7F 00 00 3F
	tsa		; 3B
	dey		; 88
	php		; 08
	sbc $39F06B.l,X		; FF 6B F0 39
	and ($42.b)		; 32 42
	stz $4A.b,X		; 74 4A
	ldx $52.b,Y		; B6 52
	sed		; F8
	phy		; 5A
	dec A		; 3A
	adc $7C.b,S		; 63 7C
	rtl		; 6B

	ldx $6373.w,Y		; BE 73 63
	clc		; 18
	.db $42, $2C		; 42 2C
	cop $20.b		; 02 20
	ora #$8B2C.w		; 09 2C 8B
	bit $510B.w,X		; 3C 0B 51
	phk		; 4B
	jsr $212B.w		; 20 2B 21
	brk $34.b		; 00 34
	brk $40.b		; 00 40
	adc $5C.b,S		; 63 5C
	sbc [$5C.b]		; E7 5C
	ora [$28.b]		; 07 28
	phd		; 0B
	jmp $5CEB.w		; 4C EB 5C
	rtl		; 6B

	eor $4000.w,X		; 5D 00 40
	sty $10.b		; 84 10
	adc $18.b,S		; 63 18
	sbc $425F7F.l,X		; FF 7F 5F 42
	eor $01BF6B.l,X		; 5F 6B BF 01
	eor $30A503.l,X		; 5F 03 A5 30
	dec $48.b		; C6 48
	dec $D669.w		; CE 69 D6
	ror $3144.w,X		; 7E 44 31
	tsb $4A.b		; 04 4A
	asl A		; 0A
	rtl		; 6B

	sbc $00007F.l,X		; FF 7F 00 00
	tsb $1C.b		; 04 1C
	bcs  77.b		; B0 4D
	jmp ($B97F.w,X)		; 7C 7F B9
	eor $51F9.w		; 4D F9 51
	inc A		; 1A
	lsr $5A.b,X		; 56 5A
	phy		; 5A
	ply		; 7A
	lsr $62BB.w,X		; 5E BB 62
	stp		; DB
	ror $1C.b		; 66 1C
	rtl		; 6B

	bit $7D6F.w,X		; 3C 6F 7D
	adc ($9D.b,S),Y		; 73 9D
	adc [$DE.b],Y		; 77 DE
	tda		; 7B
	brk $00.b		; 00 00
	adc $0C.b,S		; 63 0C
	bvc   8.b		; 50 08
	phy		; 5A
	and ($5F.b,X)		; 21 5F
	.db $42, $5F		; 42 5F
	rtl		; 6B

	dey		; 88
	plp		; 28
	eor $001803.l,X		; 5F 03 18 00
	sta $28.b		; 85 28
	lsr $D661.w		; 4E 61 D6
	ror $1104.w,X		; 7E 04 11
	asl $1A.b		; 06 1A
	cpy $FF32.w		; CC 32 FF
	adc $630000.l,X		; 7F 00 00 63
	tsb $0850.w		; 0C 50 08
	phy		; 5A
	and ($5F.b,X)		; 21 5F
	.db $42, $5F		; 42 5F
	rtl		; 6B

	lda $0B5F09.l,X		; BF 09 5F 0B
	lda $28.b		; A5 28
	dec $48.b		; C6 48
	dec $D669.w		; CE 69 D6
	ror $11AE.w,X		; 7E AE 11
	stz $2A.b,X		; 74 2A
	jmp $7FFF53.l		; 5C 53 FF 7F
	brk $00.b		; 00 00
	adc $0C.b,S		; 63 0C
	bvc   8.b		; 50 08
	phy		; 5A
	and ($5F.b,X)		; 21 5F
	.db $42, $5F		; 42 5F
	rtl		; 6B

	lda $035F01.l,X		; BF 01 5F 03
	dec $48.b		; C6 48
	dec $D669.w		; CE 69 D6
	ror $2904.w,X		; 7E 04 29
	lda $2D.b,S		; A3 2D
	sty $3A.b		; 84 3A
	eor ($6B.b),Y		; 51 6B
	sbc $00007F.l,X		; FF 7F 00 00
	brk $00.b		; 00 00
	rti		; 40

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
	cpx #$007F.w		; E0 7F 00
	brk $11.b		; 00 11
	mvp $48,$12		; 44 12 48
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
	ora $00107C.l,X		; 1F 7C 10 00
	mvp $E0,$20		; 44 20 E0
	adc $007F80.l,X		; 7F 80 7F 00
	adc $447FFF.l,X		; 7F FF 7F 44
	jsr $7FE0.w		; 20 E0 7F
	bra 127.b		; 80 7F
	brk $7F.b		; 00 7F
	beq 127.b		; F0 7F
	mvp $80,$20		; 44 20 80
	adc $807F00.l,X		; 7F 00 7F 80
	ror $7FE0.w,X		; 7E E0 7F
	brk $02.b		; 00 02
	mvp $80,$20		; 44 20 80
	adc $FF7F00.l,X		; 7F 00 7F FF
	adc $447FE0.l,X		; 7F E0 7F 44
	jsr $7F80.w		; 20 80 7F
	brk $7F.b		; 00 7F
	beq 127.b		; F0 7F
	cpx #$447F.w		; E0 7F 44
	jsr $7F00.w		; 20 00 7F
	bra 126.b		; 80 7E
	cpx #$807F.w		; E0 7F 80
	adc $6339CE.l,X		; 7F CE 39 63
	bit $63.b,X		; 34 63
	bit $FF.b,X		; 34 FF
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
	adc $880000.l,X		; 7F 00 00 88
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
	stx $40.b		; 86 40
	lsr A		; 4A
	adc $79AD.w,X		; 7D AD 79
	bpl 122.b		; 10 7A
	adc ($7A.b,S),Y		; 73 7A
	dec $7A.b,X		; D6 7A
	and $9C7B.w,Y		; 39 7B 9C
	tda		; 7B
	dec $7A.b,X		; D6 7A
	bpl 122.b		; 10 7A
	lsr A		; 4A
	adc $001C.w,X		; 7D 1C 00
	ora $1E00.w,X		; 1D 00 1E
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $41.b		; 00 41
	bpl -125.b		; 10 83
	clc		; 18
	cmp $20.b		; C5 20
	ora [$29.b]		; 07 29
	eor #$8D31.w		; 49 31 8D
	php		; 08
	ora [$19.b],Y		; 17 19
	inc $9F35.w,X		; FE 35 9F
	lsr A		; 4A
	cmp $137F16.l,X		; DF 16 7F 13
	lsr $F376.w		; 4E 76 F3
	ror $7F58.w,X		; 7E 58 7F
	sbc $00007F.l,X		; FF 7F 00 00
	ldy $18.b		; A4 18
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
	eor ($10.b,X)		; 41 10
	sta $18.b,S		; 83 18
	cmp $20.b		; C5 20
	ora [$29.b]		; 07 29
	eor #$8D31.w		; 49 31 8D
	php		; 08
	ora [$19.b],Y		; 17 19
	inc $9F35.w,X		; FE 35 9F
	lsr A		; 4A
	cmp $137F16.l,X		; DF 16 7F 13
	lsr $F376.w		; 4E 76 F3
	ror $7F58.w,X		; 7E 58 7F
	sbc $39CE7F.l,X		; FF 7F CE 39
	adc $34.b,S		; 63 34
	adc $34.b,S		; 63 34
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
	sty $10.b		; 84 10
	bcc  16.b		; 90 10
	phy		; 5A
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
	adc $880000.l,X		; 7F 00 00 88
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
	stx $40.b		; 86 40
	lsr A		; 4A
	adc $79AD.w,X		; 7D AD 79
	bpl 122.b		; 10 7A
	adc ($7A.b,S),Y		; 73 7A
	dec $7A.b,X		; D6 7A
	and $9C7B.w,Y		; 39 7B 9C
	tda		; 7B
	dec $7A.b,X		; D6 7A
	bpl 122.b		; 10 7A
	lsr A		; 4A
	adc $001C.w,X		; 7D 1C 00
	ora $1E00.w,X		; 1D 00 1E
	brk $1F.b		; 00 1F
	brk $10.b		; 00 10
	.db $42, $66		; 42 66
	jsr $2D3B.w		; 20 3B 2D
	lda $1E3D.w,X		; BD 3D 1E
	lsr A		; 4A
	adc $66FF56.l,X		; 7F 56 FF 66
	sbc $0FBF0E.l,X		; FF 0E BF 0F
	nop		; EA
	bmi  78.b		; 30 4E
	eor ($B2.b,X)		; 41 B2
	eor ($35.b),Y		; 51 35
	ror $7AD9.w		; 6E D9 7A
	eor $FF7F.w,X		; 5D 7F FF
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
	eor ($10.b,X)		; 41 10
	sta $18.b,S		; 83 18
	cmp $20.b		; C5 20
	ora [$29.b]		; 07 29
	eor #$8D31.w		; 49 31 8D
	php		; 08
	ora [$19.b],Y		; 17 19
	inc $9F35.w,X		; FE 35 9F
	lsr A		; 4A
	cmp $137F16.l,X		; DF 16 7F 13
	lsr $F376.w		; 4E 76 F3
	ror $7F58.w,X		; 7E 58 7F
	sbc $00007F.l,X		; FF 7F 00 00
	brk $00.b		; 00 00
	sta $5C.b		; 85 5C
	sbc $35AD7F.l,X		; FF 7F AD 35
	lda $AD35.w		; AD 35 AD
	and $AD.b,X		; 35 AD
	and $AD.b,X		; 35 AD
	and $AD.b,X		; 35 AD
	and $AD.b,X		; 35 AD
	and $AD.b,X		; 35 AD
	and $AD.b,X		; 35 AD
	and $AD.b,X		; 35 AD
	and $AD.b,X		; 35 AD
	and $FF.b,X		; 35 FF
	adc $1F0000.l,X		; 7F 00 00 1F
	brk $1F.b		; 00 1F
	adc $7FFF.w,X		; 7D FF 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	stx $40.b		; 86 40
	lsr A		; 4A
	adc $79AD.w,X		; 7D AD 79
	bpl 122.b		; 10 7A
	adc ($7A.b,S),Y		; 73 7A
	dec $7A.b,X		; D6 7A
	and $9C7B.w,Y		; 39 7B 9C
	tda		; 7B
	dec $7A.b,X		; D6 7A
	bpl 122.b		; 10 7A
	lsr A		; 4A
	adc $001C.w,X		; 7D 1C 00
	ora $1E00.w,X		; 1D 00 1E
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $7D.b		; 00 7D
	tsb M7B.w		; 0C 1C 21
	jmp ($DC2D.w,X)		; 7C 2D DC
	and $463C.w,Y		; 39 3C 46
	lda $1D56.w,X		; BD 56 1D
	adc $9E.b,S		; 63 9E
	adc ($1D.b,S),Y		; 73 1D
	adc $9C.b,S		; 63 9C
	eor ($1C.b)		; 52 1C
	.db $42, $31		; 42 31
	lsr $31.b		; 46 31
	lsr $31.b		; 46 31
	lsr $FF.b		; 46 FF
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
	brk $1C.b		; 00 1C
	adc $DA7EFB.l,X		; 7F FB 7E DA
	ror $7ED9.w,X		; 7E D9 7E
	lda $B87E.w,Y		; B9 7E B8
	ror $7E97.w,X		; 7E 97 7E
	sta [$7E.b],Y		; 97 7E
	ora $733F73.l,X		; 1F 73 3F 73
	eor $777F77.l,X		; 5F 77 7F 77
	sta $7BBF7B.l,X		; 9F 7B BF 7B
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phy		; 5A
	adc [$42.b],Y		; 77 42
	php		; 08
	asl $1A00.w		; 0E 00 1A
	ora $425F.w,Y		; 19 5F 42
	eor $00186B.l,X		; 5F 6B 18 00
	eor $404203.l,X		; 5F 03 42 40
	lsr A		; 4A
	adc #$7ED6.w		; 69 D6 7E
	cmp $090801.l,X		; DF 01 08 09
	mvn $FF,$22		; 54 22 FF
	and ($FF.b,S),Y		; 33 FF
	adc $A50000.l,X		; 7F 00 00 A5
	trb $0E.b		; 14 0E
	brk $1A.b		; 00 1A
	ora $425F.w,Y		; 19 5F 42
	eor $00186B.l,X		; 5F 6B 18 00
	eor $404203.l,X		; 5F 03 42 40
	lsr A		; 4A
	adc #$7ED6.w		; 69 D6 7E
	cpx #$4003.w		; E0 03 40
	and $5A46.w,Y		; 39 46 5A
	lsr $FF7B.w		; 4E 7B FF
	adc $420000.l,X		; 7F 00 00 42
	php		; 08
	asl $1A00.w		; 0E 00 1A
	ora $425F.w,Y		; 19 5F 42
	eor $00186B.l,X		; 5F 6B 18 00
	eor $404203.l,X		; 5F 03 42 40
	lsr A		; 4A
	adc #$7ED6.w		; 69 D6 7E
	lda $41107D.l,X		; BF 7D 10 41
	php		; 08
	ora ($A0.b,S),Y		; 13 A0
	ora ($FF.b,X)		; 01 FF
	adc $000000.l,X		; 7F 00 00 00
	brk $84.b		; 00 84
	clc		; 18
	lsr A		; 4A
	and ($10.b),Y		; 31 10
	lsr A		; 4A
	eor ($19.b)		; 52 19
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $20187C.l,X		; 1F 7C 18 20
	asl A		; 0A
	ora #$19D0.w		; 09 D0 19
	stx $32.b,Y		; 96 32
	jmp $63FF4B.l		; 5C 4B FF 63
	sbc $00007F.l,X		; FF 7F 00 00
	adc $1C0C.w,X		; 7D 0C 1C
	and ($7C.b,X)		; 21 7C
	and $39DC.w		; 2D DC 39
	bit $BD46.w,X		; 3C 46 BD
	lsr $1D.b,X		; 56 1D
	adc $9E.b,S		; 63 9E
	adc ($1D.b,S),Y		; 73 1D
	adc $9C.b,S		; 63 9C
	eor ($1C.b)		; 52 1C
	.db $42, $31		; 42 31
	lsr $31.b		; 46 31
	lsr $31.b		; 46 31
	lsr $FF.b		; 46 FF
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
	brk $1C.b		; 00 1C
	adc $DA7EFB.l,X		; 7F FB 7E DA
	ror $7ED9.w,X		; 7E D9 7E
	lda $B87E.w,Y		; B9 7E B8
	ror $7E97.w,X		; 7E 97 7E
	sta [$7E.b],Y		; 97 7E
	ora $733F73.l,X		; 1F 73 3F 73
	eor $777F77.l,X		; 5F 77 7F 77
	sta $7BBF7B.l,X		; 9F 7B BF 7B
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc A		; 1A
	and $3F.b,X		; 35 3F
	ror A		; 6A
	eor $7C007F.l,X		; 5F 7F 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	sbc $00007F.l,X		; FF 7F 00 00
	ora $01BF00.l,X		; 1F 00 BF 01
	sbc $03ED03.l,X		; FF 03 ED 03
	cpx #$E003.w		; E0 03 E0
	and [$E0.b],Y		; 37 E0
	adc $007DA0.l,X		; 7F A0 7D 00
	jmp ($7C0D.w,X)		; 7C 0D 7C
	ora $341F7C.l,X		; 1F 7C 1F 34
	php		; 08
	and ($31.b,X)		; 21 31
	lsr $FF.b		; 46 FF
	adc $1F0000.l,X		; 7F 00 00 1F
	brk $BF.b		; 00 BF
	ora ($FF.b,X)		; 01 FF
	ora $ED.b,S		; 03 ED
	ora $E0.b,S		; 03 E0
	ora $E0.b,S		; 03 E0
	and [$E0.b],Y		; 37 E0
	adc $007DA0.l,X		; 7F A0 7D 00
	jmp ($7C0D.w,X)		; 7C 0D 7C
	ora $341F7C.l,X		; 1F 7C 1F 34
	php		; 08
	and ($31.b,X)		; 21 31
	lsr $FF.b		; 46 FF
	adc $1F0000.l,X		; 7F 00 00 1F
	brk $BF.b		; 00 BF
	ora ($FF.b,X)		; 01 FF
	ora $ED.b,S		; 03 ED
	ora $E0.b,S		; 03 E0
	ora $E0.b,S		; 03 E0
	and [$E0.b],Y		; 37 E0
	adc $007DA0.l,X		; 7F A0 7D 00
	jmp ($7C0D.w,X)		; 7C 0D 7C
	ora $341F7C.l,X		; 1F 7C 1F 34
	php		; 08
	and ($31.b,X)		; 21 31
	lsr $FF.b		; 46 FF
	adc $1F0000.l,X		; 7F 00 00 1F
	brk $BF.b		; 00 BF
	ora ($FF.b,X)		; 01 FF
	ora $ED.b,S		; 03 ED
	ora $E0.b,S		; 03 E0
	ora $E0.b,S		; 03 E0
	and [$E0.b],Y		; 37 E0
	adc $007DA0.l,X		; 7F A0 7D 00
	jmp ($7C0D.w,X)		; 7C 0D 7C
	ora $341F7C.l,X		; 1F 7C 1F 34
	php		; 08
	and ($31.b,X)		; 21 31
	lsr $FF.b		; 46 FF
	adc $1F0000.l,X		; 7F 00 00 1F
	brk $BF.b		; 00 BF
	ora ($FF.b,X)		; 01 FF
	ora $ED.b,S		; 03 ED
	ora $E0.b,S		; 03 E0
	ora $E0.b,S		; 03 E0
	and [$E0.b],Y		; 37 E0
	adc $007DA0.l,X		; 7F A0 7D 00
	jmp ($7C0D.w,X)		; 7C 0D 7C
	ora $341F7C.l,X		; 1F 7C 1F 34
	php		; 08
	and ($31.b,X)		; 21 31
	lsr $FF.b		; 46 FF
	adc $1F0000.l,X		; 7F 00 00 1F
	brk $BF.b		; 00 BF
	ora ($FF.b,X)		; 01 FF
	ora $ED.b,S		; 03 ED
	ora $E0.b,S		; 03 E0
	ora $E0.b,S		; 03 E0
	and [$E0.b],Y		; 37 E0
	adc $007DA0.l,X		; 7F A0 7D 00
	jmp ($7C0D.w,X)		; 7C 0D 7C
	ora $341F7C.l,X		; 1F 7C 1F 34
	php		; 08
	and ($31.b,X)		; 21 31
	lsr $FF.b		; 46 FF
	adc $1F0000.l,X		; 7F 00 00 1F
	brk $BF.b		; 00 BF
	ora ($FF.b,X)		; 01 FF
	ora $ED.b,S		; 03 ED
	ora $E0.b,S		; 03 E0
	ora $E0.b,S		; 03 E0
	and [$E0.b],Y		; 37 E0
	adc $007DA0.l,X		; 7F A0 7D 00
	jmp ($7C0D.w,X)		; 7C 0D 7C
	ora $341F7C.l,X		; 1F 7C 1F 34
	php		; 08
	and ($31.b,X)		; 21 31
	lsr $FF.b		; 46 FF
	adc $590000.l,X		; 7F 00 00 59
	php		; 08
	lda $7FFF5A.l,X		; BF 5A FF 7F
	cmp $0E1F01.l,X		; DF 01 1F 0E
	eor $2E9F1E.l,X		; 5F 1E 9F 2E
	sbc $4F3F3E.l,X		; FF 3E 3F 4F
	sta $73FF5F.l,X		; 9F 5F FF 73
	sty $10.b		; 84 10
	cmp ($2C.b,X)		; C1 2C
	ora $69E624.l,X		; 1F 24 E6 69
	brk $00.b		; 00 00
	sty $10.b		; 84 10
	sta $FC00.w,Y		; 99 00 FC
	brk $5F.b		; 00 5F
	ora ($BF.b,X)		; 01 BF
	ora #$1A1F.w		; 09 1F 1A
	adc $3ADF2A.l,X		; 7F 2A DF 3A
	and $5B9F4B.l,X		; 3F 4B 9F 5B
	sbc $7FBA6B.l,X		; FF 6B BA 7F
	ora $40F020.l,X		; 1F 20 F0 40
	ora $00007C.l,X		; 1F 7C 00 00
	.db $42, $0C		; 42 0C
	sty $18.b		; 84 18
	dec $20.b		; C6 20
	php		; 08
	and ($4A.b,X)		; 21 4A
	and #$2D8C.w		; 29 8C 2D
	dec $EF35.w		; CE 35 EF
	and $3E10.w,Y		; 39 10 3E
	eor ($46.b)		; 52 46
	sty $4E.b,X		; 94 4E
	dec $56.b,X		; D6 56
	clc		; 18
	eor $9C675A.l,X		; 5F 5A 67 9C
	adc $840000.l		; 6F 00 00 84
	bpl -107.b		; 10 95
	and [$FF.b]		; 27 FF
	eor $1F.b,S		; 43 1F
	ror A		; 6A
	tsx		; BA
	adc $F0201F.l,X		; 7F 1F 20 F0
	rti		; 40

	sta $5F3F4F.l,X		; 9F 4F 3F 5F
	cmp $7A9F6A.l,X		; DF 6A 9F 7A
	tyx		; BB
	adc ($F7.b)		; 72 F7
	ror A		; 6A
	ora ($47.b,S),Y		; 13 47
	bvc  35.b		; 50 23
	brk $00.b		; 00 00
	sty $10.b		; 84 10
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $6BFF7C.l,X		; 1F 7C FF 6B
	ora $2A7F1A.l,X		; 1F 1A 7F 2A
	cmp $4B3F3A.l,X		; DF 3A 3F 4B
	sta $7A9F5B.l,X		; 9F 5B 9F 7A
	tyx		; BB
	adc ($1F.b)		; 72 1F
	jmp ($4713.w,X)		; 7C 13 47
	ora $00007C.l,X		; 1F 7C 00 00
	sty $10.b		; 84 10
	sta $27.b,X		; 95 27
	tsx		; BA
	pld		; 2B
	jmp.w [$FF37]		; DC 37 FF
	eor $FF.b,S		; 43 FF
	eor $BF.b,S		; 43 BF
	eor [$9F.b]		; 47 9F
	eor $FF5F3F.l		; 4F 3F 5F FF
	eor $1F.b,S		; 43 1F
	ror A		; 6A
	tsx		; BA
	adc $F0201F.l,X		; 7F 1F 20 F0
	rti		; 40

	bvc  35.b		; 50 23
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $5249.w		; 8C 49 52
	phy		; 5A
	clc		; 18
	rtl		; 6B

	dec $1F7B.w,X		; DE 7B 1F
	jmp ($7C1F.w,X)		; 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	brk $00.b		; 00 00
	tya		; 98
	ora ($1C.b,X)		; 01 1C
	cop $9F.b		; 02 9F
	jsl $9F431F.l		; 22 1F 43 9F
	adc $00.b,S		; 63 00
	brk $42.b		; 00 42
	tsb $1862.w		; 0C 62 18
	.db $82, $20, $C4		; 82 20 C4
	plp		; 28
	asl $31.b		; 06 31
	pha		; 48
	and $418A.w,Y		; 39 8A 41
	cpy $0E49.w		; CC 49 0E
	eor ($50.b)		; 52 50
	phy		; 5A
	sta ($62.b)		; 92 62
	pei ($6A.b)		; D4 6A
	asl $73.b,X		; 16 73
	cli		; 58
	tda		; 7B
	txs		; 9A
	tda		; 7B
	ora $00E0.w		; 0D E0 00
	sbc $FF18F8.l,X		; FF F8 18 FF
	sbc $F8F0FC.l,X		; FF FC F0 F8
	tsb $E0FE.w		; 0C FE E0
	cpx #$FE01.w		; E0 01 FE
	beq  -8.b		; F0 F8
	phd		; 0B
	jsr ($FE03.w,X)		; FC 03 FE
	beq  -8.b		; F0 F8
	phd		; 0B
	sed		; F8
	cpx #$07E0.w		; E0 E0 07
	inc $F8F0.w,X		; FE F0 F8
	phd		; 0B
	beq  15.b		; F0 0F
	inc $F8F0.w,X		; FE F0 F8
	phd		; 0B
	cpx #$E0E0.w		; E0 E0 E0
	ora $F8F0FE.l,X		; 1F FE F0 F8
	phd		; 0B
	cpy #$FE3F.w		; C0 3F FE
	beq  -8.b		; F0 F8
	phd		; 0B
	bra  32.b		; 80 20
	inc $FE7F.w,X		; FE 7F FE
	beq  -8.b		; F0 F8
	phd		; 0B
	sta ($FF.b,X)		; 81 FF
	asl $2D1E.w,X		; 1E 1E 2D
	and ($F8.b,S),Y		; 33 F8
	ora $24FE2C.l		; 0F 2C FE 24
	tsa		; 3B
	rol $39.b		; 26 39
	inc $F9.b		; E6 F9
.ACCU 8
.INDEX 8
	sep #$FD		; E2 FD
	adc $E1F0E0.l,X		; 7F E0 F0 E1
	sbc $C279C6.l,X		; FF C6 79 C2
	adc $D280.w,X		; 7D 80 D2
	inc $861F.w,X		; FE 1F 86
	sei		; 78
	sei		; 78
	sta [$FF.b]		; 87 FF
	tsa		; 3B
	dec $FE.b		; C6 FE
	ora $FEE3.w,X		; 1D E3 FE
	tsa		; 3B
	tax		; AA
	ora $01F3.w		; 0D F3 01
	eor $000BF8.l		; 4F F8 0B 00
	ora ($FF.b,X)		; 01 FF
	jsr $19F8.w		; 20 F8 19
	asl A		; 0A
	sed		; F8
	asl $48.b,X		; 16 48
	ora ($FE.b)		; 12 FE
	sed		; F8
	phd		; 0B
	lda ($0C.b)		; B2 0C
	inc $F0FE.w,X		; FE FE F0
	eor #$24.b		; 49 24
	tsb $FEFE.w		; 0C FE FE
	beq  12.b		; F0 0C
	inc $91FE.w,X		; FE FE 91
	mvp $0C,$F0		; 44 F0 0C
	inc $F0FE.w,X		; FE FE F0
	ora ($49.b)		; 12 49
	tsb $FEFE.w		; 0C FE FE
	beq  12.b		; F0 0C
	inc $24FE.w,X		; FE FE 24
	bit #$F0.b		; 89 F0
	tsb $FEFE.w		; 0C FE FE
	beq -127.b		; F0 81
	sed		; F8
	tsb $FFC7.w		; 0C C7 FF
	beq -77.b		; F0 B3
	jsr ($FE93.w,X)		; FC 93 FE
	cmp $CEFF.w,Y		; D9 FF CE
	sbc $27BFAC.l,X		; FF AC BF 27
	and $20FE10.l,X		; 3F 10 FE 20
	dex		; CA
	adc $3FE0FE.l,X		; 7F FE E0 3F
	beq -33.b		; F0 DF
	sed		; F8
	adc $E4F87F.l,X		; 7F 7F F8 E4
	lda [$C2.b]		; A7 C2
	eor $81.b,S		; 43 81
	sta ($03.b,X)		; 81 03
	inc $07FE.w,X		; FE FE 07
	jsr ($FB0F.w,X)		; FC 0F FB
	ora $FE1F48.l,X		; 1F 48 1F FE
	and $C243ED.l		; 2F ED 43 C2
	beq  12.b		; F0 0C
	sbc $85FFFE.l,X		; FF FE FF 85
	asl $25F8.w		; 0E F8 25
	bit $7E3C.w,X		; 3C 3C 7E
	.db $42, $FF		; 42 FF
	sta ($FF.b,X)		; 81 FF
	sta $FCFE.w,Y		; 99 FE FC
	beq 127.b		; F0 7F
	clc		; 18
	clc		; 18
	clc		; 18
	bit $7C24.w,X		; 3C 24 7C
	mvp $84,$FC		; 44 FC 84
	inc $647C.w,X		; FE 7C 64
	jmp ($F6E1.w,X)		; 7C E1 F6
	cpx #$F8.b		; E0 F8
	phd		; 0B
	adc $111F69.l		; 6F 69 1F 11
	beq  -8.b		; F0 F8
	ora #$F2.b		; 09 F2
	ora $186109.l		; 0F 09 61 18
	asl $F012.w,X		; 1E 12 F0
	tsb $FA0C.w		; 0C 0C FA
	rol $0022.w,X		; 3E 22 00
	stx $FE.b		; 86 FE
	nop		; EA
	inc $92FE.w,X		; FE FE 92
	beq -15.b		; F0 F1
	ora $E27E7E.l		; 0F 7E 7E E2
	sta ($FE.b,X)		; 81 FE
	stz $9CFC.w,X		; 9E FC 9C
	inc $AA82.w,X		; FE 82 AA
	tsb $F8.b		; 04 F8
	bne  -8.b		; D0 F8
	ora #$EE.b		; 09 EE
	jsr ($FEE0.w,X)		; FC E0 FE
	bcs  -8.b		; B0 F8
	ora ($FE.b),Y		; 11 FE
	rol $F6F8.w,X		; 3E F8 F6
	bvs  -8.b		; 70 F8
	ora $121F11.l		; 0F 11 1F 12
	asl $4E9E.w,X		; 1E 9E 4E
	sed		; F8
	ora $0303.w		; 0D 03 03
	tsb INIDSP.w		; 0C 00 21
	ora $448DE8.l		; 0F E8 8D 44
	eor $FD7C.w,Y		; 59 7C FD
	brk $F0.b		; 00 F0
.ACCU 8
	sep #$E2		; E2 E2
	asl $F6.b,X		; 16 F6
	dex		; CA
	inc $E0F0.w,X		; FE F0 E0
	ora $E0FED6.l		; 0F D6 FE E0
	sed		; F8
	ora ($C0.b,S),Y		; 13 C0
	cpy #$30.b		; C0 30
	beq -120.b		; F0 88
	sed		; F8
	tya		; 98
	stx $F4.b		; 86 F4
	tad		; 5B
	rol $1CF0.w,X		; 3E F0 1C
	trb $15F8.w		; 1C F8 15
	ora $41.b,S		; 03 41
	adc $98FCFE.l,X		; 7F FE FC 98
	inc $81FE.w,X		; FE FE 81
	dey		; 88
	bra  19.b		; 80 13
	sty $0E.b		; 84 0E
	inc $7EFC.w,X		; FE FC 7E
	ror $5A.b		; 66 5A
	bcc  11.b		; 90 0B
	mvn $F0,$24		; 54 24 F0
	sbc ($7E.b)		; F2 7E
	lsr $FEF0.w		; 4E F0 FE
	brk $02.b		; 00 02
	asl A		; 0A
	inc $D046.w,X		; FE 46 D0
	inc $700E.w,X		; FE 0E 70
	tsb $E6FE.w		; 0C FE E6
	adc ($83.b)		; 72 83
	ora ($AA.b)		; 12 AA
	rti		; 40

	lsr $E8.b,X		; 56 E8
	pea $F8E0.w		; F4 E0 F8
	ora #$36.b		; 09 36
	sed		; F8
	ora #$F0.b		; 09 F0
	jsr ($440E.w,X)		; FC 0E 44
	lda $D8.b,S		; A3 D8
	ldy $18FE.w		; AC FE 18
	clc		; 18
	trb $00.b		; 14 00
	xba		; EB
	cpx #$F8.b		; E0 F8
	tsb $6BFA.w		; 0C FA 6B
	and $F8C039.l,X		; 3F 39 C0 F8
	ora #$52.b		; 09 52
	beq  15.b		; F0 0F
	bra -127.b		; 80 81
	sbc $35F8F8.l,X		; FF F8 F8 35
	inc $D8A8.w,X		; FE A8 D8
	cld		; D8
	tay		; A8
	sty $FC.b		; 84 FC
	ora $0E0A7E.l,X		; 1F 7E 0A 0E
	asl $060A.w		; 0E 0A 06
	asl $E8.b		; 06 E8
	rol $363E.w,X		; 3E 3E 36
	rol A		; 2A
	inc A		; 1A
	asl $00.b,X		; 16 00
	adc ($A5.b,X)		; 61 A5
	sbc [$E0.b]		; E7 E0
	sed		; F8
	phd		; 0B
	sbc $1F11.w,Y		; F9 11 1F
	beq -11.b		; F0 F5
	stx $FCFE.w		; 8E FE FC
	ora $1B.b,X		; 15 1B
	tas		; 1B
	ora $EA.b,X		; 15 EA
	sbc ($54.b)		; F2 54
	sbc ($1C.b)		; F2 1C
	trb $61.b		; 14 61
	ora $14.b,X		; 15 14
	trb $08FC.w		; 1C FC 08
	php		; 08
.ACCU 8
	sep #$E0		; E2 E0
	and $81F8FF.l		; 2F FF F8 81
	bit $E0F2.w		; 2C F2 E0
	asl A		; 0A
	and $0F0C38.l,X		; 3F 38 0C 0F
	ora $84.b,S		; 03 84
	stp		; DB
	tsb $BFF2.w		; 0C F2 BF
.ACCU 16
.INDEX 16
	rep #$F0		; C2 F0
	phx		; DA
	inc $EE2A.w,X		; FE 2A EE
	dec $E0CE.w		; CE CE E0
	sed		; F8
	ora ($0C.b,S),Y		; 13 0C
	sbc ($EE.b)		; F2 EE
	dey		; 88
	and $30F880.l		; 2F 80 F8 30
	beq -64.b		; F0 C0
	cpy #$F004.w		; C0 04 F0
	phd		; 0B
	plx		; FA
	inc $A4.b,X		; F6 A4
	pld		; 2B
	inc $13E0.w,X		; FE E0 13
	beq  -2.b		; F0 FE
	cpx #$E00B.w		; E0 0B E0
	sed		; F8
	ora $696F.w		; 0D 6F 69
	beq  -8.b		; F0 F8
	phd		; 0B
	asl $F2.b,X		; 16 F2
	lda #$F082.w		; A9 82 F0
	inc $00E4.w,X		; FE E4 00
	inc $E0FE.w		; EE FE E0
	ora $F8D0.w		; 0D D0 F8
	phd		; 0B
	inc $FEAE.w		; EE AE FE
	beq  -4.b		; F0 FC
	inc $09E0.w,X		; FE E0 09
	adc $F88071.l,X		; 7F 71 80 F8
	ora ($F0.b,S),Y		; 13 F0
	sed		; F8
	ora $FCD0.w,Y		; 19 D0 FC
	php		; 08
	php		; 08
	rol A		; 2A
	rol $5F.b,X		; 36 5F
	and $76610D.l,X		; 3F 0D 61 76
	eor #$DCAB.w		; 49 AB DC
	lda $10F0DC.l,X		; BF DC F0 10
	bpl  -1.b		; 10 FF
	rol A		; 2A
	asl $C6BA.w,X		; 1E BA C6
	inc $D592.w		; EE 92 D5
	xce		; FB
	adc $10FB.w,X		; 7D FB 10
	cld		; D8
	bmi   0.b		; 30 00
	inx		; E8
	asl $EA50.w,X		; 1E 50 EA
	ldy $248A.w,X		; BC 8A 24
	jmp ($FE44.w,X)		; 7C 44 FE
	stx $EE00.w		; 8E 00 EE
	inc $00E2.w,X		; FE E2 00
	inx		; E8
	inc A		; 1A
	sta $AA.b,S		; 83 AA
	cli		; 58
	adc $00FE79.l,X		; 7F 79 FE 00
	inx		; E8
	and #$E7FE.w		; 29 FE E7
	brk $E8.b		; 00 E8
	trb $D6.b		; 14 D6
	sed		; F8
	ora #$EFFF.w		; 09 FF EF
	plx		; FA
	jsr ($9EFD.w,X)		; FC FD 9E
	lda $DFAADE.l,X		; BF DE AA DF
	adc [$49.b],Y		; 77 49
	eor $2263.w,X		; 5D 63 22
	rol $EA40.w,X		; 3E 40 EA
	sbc $792FFF.l,X		; FF FF 2F 79
	lda $D57B.w,X		; BD 7B D5
	tsa		; 3B
	ror $BA92.w		; 6E 92 BA
	dec $44.b		; C6 44
	jmp ($1010.w,X)		; 7C 10 10
	bcs -24.b		; B0 E8
	and ($C0.b),Y		; 31 C0
	sbc $34.b,S		; E3 34
	ror $293F.w		; 6E 3F 29
	adc [$51.b],Y		; 77 51
	cli		; 58
	lda $E187.w,Y		; B9 87 E1
	sbc [$A1.b]		; E7 A1
	cmp $C3.b,S		; C3 C3
	sty $597F.w		; 8C 7F 59
	inc $86FE.w,X		; FE FE 86
	sbc ($E1.b,X)		; E1 E1
	inc $FEB2.w,X		; FE B2 FE
	jsr ($7884.w,X)		; FC 84 78
	sei		; 78
	bra 127.b		; 80 7F
	eor $0987.w		; 4D 87 09
	sbc [$95.b],Y		; F7 95
	sbc ($93.b,S),Y		; F3 93
	inc $9DFF.w,X		; FE FF 9D
	bvs  -1.b		; 70 FF
	adc ($E0.b),Y		; 71 E0
	eor $4173.w		; 4D 73 41
	sbc ($91.b,S),Y		; F3 91
	sbc [$91.b],Y		; F7 91
	inc $E0.b,X		; F6 E0
	sec		; 38
	sec		; 38
	lda $E9B561.l,X		; BF 61 B5 E9
	eor $4E7E.w		; 4D 7E 4E
	inc $1482.w,X		; FE 82 14
	sbc ($9A.b),Y		; F1 9A
	plx		; FA
	jmp ($017C.w,X)		; 7C 7C 01
	stx $F0.b		; 86 F0
	jsr ($F0DA.w,X)		; FC DA F0
	beq -112.b		; F0 90
	inc $41E9.w,X		; FE E9 41
	rts		; 60

	rts		; 60

	cpy #$9FFF.w		; C0 FF 9F
	sbc $22C291.l,X		; FF 91 C2 22
	phx		; DA
	sed		; F8
	sbc ($C0.b),Y		; F1 C0
	tsa		; 3B
	rol A		; 2A
	and $5C7F2C.l,X		; 3F 2C 7F 5C
	phx		; DA
	eor $8FEF.w,Y		; 59 EF 8F
	bit $EEA9.w,X		; 3C A9 EE
	tax		; AA
	mvp $EC,$44		; 44 44 EC
	jsr $4878.w		; 20 78 48
	bne  -5.b		; D0 FB
	inc $3F90.w,X		; FE 90 3F
	jsr $1B1F.w		; 20 1F 1B
	dec $7CF2.w,X		; DE F2 7C
	stz $FC.b		; 64 FC
	cmp $F8A47F.l		; CF 7F A4 F8
	dey		; 88
	bvs 112.b		; 70 70
	bne  81.b		; D0 51
	adc $467E43.l,X		; 7F 43 7E 46
	inc $FA92.w,X		; FE 92 FA
	ora $425ED0.l,X		; 1F D0 5E 42
	rol $1C36.w,X		; 3E 36 1C
	trb $3C.b		; 14 3C
	bit $7A.b,X		; 34 7A
	lsr A		; 4A
	ora $81A83F.l		; 0F 3F A8 81
	adc $7FE07F.l,X		; 7F 7F E0 7F
	jmp $487F.w		; 4C 7F 48
	adc $FC0054.l,X		; 7F 54 00 FC
	ldx #$FEB0.w		; A2 B0 FE
	lsr $46.b		; 46 46
	adc ($51.b,S),Y		; 73 51
	tda		; 7B
	beq  64.b		; F0 40
	eor #$7FFE.w		; 49 FE 7F
	eor $FF.b		; 45 FF
	lda ($40.b,X)		; A1 40
	ora ($0C.b)		; 12 0C
	bne  64.b		; D0 40
	jsr ($F0E2.w,X)		; FC E2 F0
	jmp ($0044.w,X)		; 7C 44 00
	plp		; 28
	bvc  92.b		; 50 5C
	beq  94.b		; F0 5E
	rts		; 60

	sed		; F8
	tsb $601E.w		; 0C 1E 60
	cpx #$FF89.w		; E0 89 FF
	lda ($E0.b),Y		; B1 E0
	dex		; CA
	tsa		; 3B
	tsa		; 3B
	jsl $E02070.l		; 22 70 20 E0
	and ($6C.b)		; 32 6C
	sbc ($67.b)		; F2 67
	adc [$1A.b]		; 67 1A
	asl $E0.b		; 06 E0
	tda		; 7B
	phk		; 4B
	rts		; 60

	dec $E0D2.w,X		; DE D2 E0
	beq  36.b		; F0 24
	jmp ($F330.w,X)		; 7C 30 F3
	lda $7E.b		; A5 7E
	ror $52.b		; 66 52
	cpy #$01FC.w		; C0 FC 01
	jsl $04C0D2.l		; 22 D2 C0 04
	inc $0839.w,X		; FE 39 08
	ldy #$FCF4.w		; A0 F4 FC
	jsr ($FE94.w,X)		; FC 94 FE
	jmp ($D3DA.w,X)		; 7C DA D3
	rts		; 60

	rti		; 40

	sbc $FEFEB5.l,X		; FF B5 FE FE
	tax		; AA
	inc $E1B0.w,X		; FE B0 E1
	ldy $18.b		; A4 18
	dec $20.b,X		; D6 20
	adc ($52.b,S),Y		; 73 52
	bne  62.b		; D0 3E
	rol A		; 2A
	jmp ($FEDA.w,X)		; 7C DA FE
	sbc ($01.b)		; F2 01
	asl $C7.b		; 06 C7
	cmp [$D0.b]		; C7 D0
	inc $4A7E.w,X		; FE 7E 4A
	inc $44B7.w,X		; FE B7 44
	inc $30F4.w,X		; FE F4 30
	bmi   0.b		; 30 00
	sbc $A81C.w,Y		; F9 1C A8
	dex		; CA
	beq -126.b		; F0 82
	.db $82, $20, $58		; 82 20 58
	inc $E6.b,X		; F6 E6
	cpx #$AEFC.w		; E0 FC AE
	cld		; D8
	eor ($4C.b),Y		; 51 4C
	pha		; 48
	stx $20.b		; 86 20
	cmp ($0E.b,S),Y		; D3 0E
	inc $C12E.w,X		; FE 2E C1
	sed		; F8
	lsr $39.b,X		; 56 39
	bcc  -2.b		; 90 FE
	.db $82, $F2, $82		; 82 F2 82
	inc $E0.b,X		; F6 E0
	sbc $20.b,S		; E3 20
	cop $E9.b		; 02 E9
	.db $82, $EE, $F0		; 82 EE F0
	pea $0E94.w		; F4 94 0E
	cpx #$0CF8.w		; E0 F8 0C
	ora [$E8.b]		; 07 E8
	bne  -2.b		; D0 FE
	sbc $F29EF2.l,X		; FF F2 9E F2
	sbc ($FC.b)		; F2 FC
	bit $65.b		; 24 65
	stz $F0D0.w		; 9C D0 F0
	sed		; F8
	ora $C07EC0.l		; 0F C0 7E C0
	cmp $92.b,S		; C3 92
	inx		; E8
	sbc ($9C.b),Y		; F1 9C
	beq -26.b		; F0 E6
	inc $C4.b		; E6 C4
	inc $929E.w,X		; FE 9E 92
	ora ($F2.b,X)		; 01 F2
	phx		; DA
	jsr ($FEEE.w,X)		; FC EE FE
	beq  -8.b		; F0 F8
	ora ($F0.b),Y		; 11 F0
	sbc $B402B5.l,X		; FF B5 02 B4
	inc $C0FE.w,X		; FE FE C0
	sbc $7E8A.w,X		; FD 8A 7E
	inc $F8B0.w,X		; FE B0 F8
	asl A		; 0A
	cpx $2AC8.w		; EC C8 2A
	inc $D980.w,X		; FE 80 D9
	bvc -98.b		; 50 9E
	sbc $F2FD50.l,X		; FF 50 FD F2
	sbc $E489.w,X		; FD 89 E4
	bvs -16.b		; 70 F0
	sed		; F8
	phd		; 0B
	tsx		; BA
	inc $FDF2.w,X		; FE F2 FD
	inc $0228.w		; EE 28 02
	inc $F242.w		; EE 42 F2
	inc $D604.w,X		; FE 04 D6
	brk $2B.b		; 00 2B
	beq  12.b		; F0 0C
	inc $24.b		; E6 24
	nop		; EA
	jsl $20AAF1.l		; 22 F1 AA 20
	cpx #$FFC6.w		; E0 C6 FF
	cpx #$B8FC.w		; E0 FC B8
	cpx $24FE.w		; EC FE 24
	phx		; DA
	iny		; C8
	lda ($07.b),Y		; B1 07
	beq  -8.b		; F0 F8
	ora #$F0FE.w		; 09 FE F0
	bne -110.b		; D0 92
	eor $D3.b,X		; 55 D3
	cpy #$7EFC.w		; C0 FC 7E
	cpy #$0FF8.w		; C0 F8 0F
	bcc  -3.b		; 90 FD
	asl $F8.b,X		; 16 F8
	ora #$D9F6.w		; 09 F6 D9
	ror $FCF0.w,X		; 7E F0 FC
	sta ($2A.b,S),Y		; 93 2A
	cpx $FC.b		; E4 FC
	ldy $FE.b		; A4 FE
	ora ($F4.b)		; 12 F4
	ldy $FE.b,X		; B4 FE
	ldy #$C0FE.w		; A0 FE C0
	sed		; F8
	phd		; 0B
	tay		; A8
	ldx $A006.w		; AE 06 A0
	inc $F8F0.w,X		; FE F0 F8
	asl A		; 0A
	sbc ($FF.b)		; F2 FF
	bcc  -4.b		; 90 FC
	sed		; F8
	tya		; 98
	bvs  -8.b		; 70 F8
	ora $3EAE.w		; 0D AE 3E
	rol A		; 2A
	cmp ($DE.b)		; D2 DE
	inc $F6F6.w,X		; FE F6 F6
	brk $F4.b		; 00 F4
	bne -15.b		; D0 F1
	ldy $E1.b		; A4 E1
	inc $96.b,X		; F6 96
	sei		; 78
	php		; 08
	tay		; A8
	rol A		; 2A
	inc $08.b,X		; F6 08
	plb		; AB
	trb $80EB.w		; 1C EB 80
	inc $50.b,X		; F6 50
	beq  12.b		; F0 0C
	bcc -16.b		; 90 F0
	phd		; 0B
	beq  -8.b		; F0 F8
	bpl   0.b		; 10 00
	ldy $FE1A.w		; AC 1A FE
	beq 100.b		; F0 64
	stz $72.b		; 64 72
	pea $FEA4.w		; F4 A4 FE
	rol $DA.b		; 26 DA
	bcs  70.b		; B0 46
	jmp.w [$F030]		; DC 30 F0
	ora #$F8FF.w		; 09 FF F8
	sta $203C.w		; 8D 3C 20
	jmp.w [$F6D2]		; DC D2 F6
	lda $D6BA2A.l		; AF 2A BA D6
	tsx		; BA
	inc $D092.w		; EE 92 D0
	pea $F854.w		; F4 54 F8
	phd		; 0B
	.db $82, $BA, $B0		; 82 BA B0
	beq  15.b		; F0 0F
	pea $0CFC.w		; F4 FC 0C
	ldy $26.b		; A4 26
	sei		; 78
	mvp $F0,$E0		; 44 E0 F0
	inc $E9.b		; E6 E9
	brk $41.b		; 00 41
	stz $EA.b,X		; 74 EA
	inc $9AFA.w,X		; FE FA 9A
	asl $C0.b		; 06 C0
	sed		; F8
	ora $A930.w		; 0D 30 A9
	asl $A2.b		; 06 A2
	sbc ($28.b),Y		; F1 28
	inc $E042.w,X		; FE 42 E0
	eor $F8FF.w,Y		; 59 FF F8
	jsr ($7FFE.w,X)		; FC FE 7F
	sbc $D442F8.l,X		; FF F8 42 D4
	lda ($07.b,X)		; A1 07
	ora [$0F.b],Y		; 17 0F
	and $335F19.l		; 2F 19 5F 33
	ror $BE77.w,X		; 7E 77 BE
	sbc $7FEFBE.l,X		; FF BE EF 7F
	sei		; 78
	pei ($A2.b)		; D4 A2
	iny		; C8
	sed		; F8
	pea $02FC.w		; F4 FC 02
	inc $01FE.w,X		; FE FE 01
	sbc $FAFF05.l,X		; FF 05 FF FA
	and $0F1CE0.l,X		; 3F E0 1C 0F
	rol $4F19.w		; 2E 19 4F
	and ($4E.b,S),Y		; 33 4E
	adc [$8C.b],Y		; 77 8C
	sbc $0FFF9C.l,X		; FF 9C FF 0F
	cpx #$F838.w		; E0 38 F8
	bit $FC.b,X		; 34 FC
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	adc ($FE.b)		; 72 FE
	and ($FF.b),Y		; 31 FF
	pea $FE7F.w		; F4 7F FE
	cpx #$10.b		; E0 10
	ora $4C1926.l		; 0F 26 19 4C
	and ($48.b,S),Y		; 33 48
	adc [$8E.b],Y		; 77 8E
	sbc $3FFE9F.l,X		; FF 9F FE 3F
	cpx #$08.b		; E0 08
	sed		; F8
	jmp ($3AFC.w,X)		; 7C FC 3A
	inc $FE7A.w,X		; FE 7A FE
	sbc #$FF.b		; E9 FF
	cmp ($1F.b,X)		; C1 1F
	lda $0F12E0.l,X		; BF E0 12 0F
	and [$C0.b]		; 27 C0
	phk		; 4B
	adc [$83.b],Y		; 77 83
	sbc $830F97.l,X		; FF 97 0F 83
	cpx #$FD.b		; E0 FD
	tsb $FC.b		; 04 FC
	.db $62, $FE, $FE		; 62 FE FE
	adc ($FF.b,X)		; 61 FF
	inc $E47F.w,X		; FE 7F E4
	mvn $13,$A2		; 54 A2 13
	ora $4C3927.l,X		; 1F 27 39 4C
	adc ($4C.b,S),Y		; 73 4C
	ldy #$E0.b		; A0 E0
	and $C8E040.l,X		; 3F 40 E0 C8
	beq -28.b		; F0 E4
	sed		; F8
	and ($FC.b)		; 32 FC
	inc $E1A2.w,X		; FE A2 E1
	sei		; 78
	sty $E0.b		; 84 E0
	brk $0C.b		; 00 0C
	ora $11.b,S		; 03 11
	rts		; 60

	cpy #$FF.b		; C0 FF
	adc $89374F.l,X		; 7F 4F 37 89
	adc $C06F93.l,X		; 7F 93 6F C0
	brk $30.b		; 00 30
	cpy #$88.b		; C0 88
	beq -108.b		; F0 94
	sed		; F8
	sbc ($FC.b)		; F2 FC
	sei		; 78
	sbc $FE91FE.l,X		; FF FE 91 FE
	cmp ($FE.b,X)		; C1 FE
	bra  -4.b		; 80 FC
	and $335D19.l,X		; 3F 19 5D 33
	eor $BB77.w,Y		; 59 77 BB
	bcc -103.b		; 90 99
	sbc $FDA09D.l,X		; FF 9D A0 FD
	stz $59FC.w		; 9C FC 59
	nop		; EA
	beq -71.b		; F0 B9
	and $90.b,S		; 23 90
	bra  31.b		; 80 1F
	cpy #$60.b		; C0 60
	ldy #$17.b		; A0 17
	cpx #$60.b		; E0 60
	jsr ($F888.w,X)		; FC 88 F8
	cpy $80.b		; C4 80
	sbc $0E60.w,X		; FD 60 0E
	lda $1061FF.l,X		; BF FF 61 10
	eor $2FFE7F.l,X		; 5F 7F FE 2F
	and $AACC7A.l,X		; 3F 7A CC AA
	inc $0E01.w,X		; FE 01 0E
	ora $FEFE.w,X		; 1D FE FE
	jsr ($FCFA.w,X)		; FC FA FC
	pea $7AF8.w		; F4 F8 7A
	cpx #$7F.b		; E0 7F
	ror $D2.b,X		; 76 D2
	stz $87EF.w,X		; 9E EF 87
	sbc $477F41.l,X		; FF 41 7F 47
	adc $833F27.l,X		; 7F 27 3F 83
	ora $AC.b,S		; 03 AC
	ldy $6C71.w		; AC 71 6C
	ora $D9.b		; 05 D9
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	lsr $1FD0.w,X		; 5E D0 1F
	ply		; 7A
	cpx #$98.b		; E0 98
	sbc $58FF98.l		; EF 98 FF 58
	adc $38734F.l,X		; 7F 4F 73 38
	cpx #$10.b		; E0 10
	cpx #$81.b		; E0 81
	ldy $C2FE.w		; AC FE C2
	jsr ($E19C.w,X)		; FC 9C E1
	inc $F884.w,X		; FE 84 F8
	php		; 08
	cpx #$8E.b		; E0 8E
	sta $07A1FF.l		; 8F FF A1 07
	rti		; 40

	adc $E020FE.l,X		; 7F FE 20 E0
	sbc $FFF9.w,X		; FD F9 FF
	sbc $7886.w,Y		; F9 86 78
	asl $FC82.w,X		; 1E 82 FC
	stz $F8.b		; 64 F8
	pla		; 68
	cpx #$93.b		; E0 93
	sbc $CE9200.l		; EF 00 92 CE
.ACCU 16
.INDEX 16
	rep #$FE		; C2 FE
	and ($A0.b,X)		; 21 A0
	brk $03.b		; 00 03
	eor $6EA9.w		; 4D A9 6E
	beq -14.b		; F0 F2
	inc $A024.w,X		; FE 24 A0
	sbc $4DA0C0.l,X		; FF C0 A0 4D
	lda #$6F97.w		; A9 97 6F
	stx $4C7F.w		; 8E 7F 4C
	and $F04F4E.l,X		; 3F 4E 4F F0
	and $131F27.l,X		; 3F 27 1F 13
	ora $7182E0.l		; 0F E0 82 71
	inc $1132.w,X		; FE 32 11
	ora ($FC.b),Y		; 11 FC
	adc ($80.b)		; 72 80
	rts		; 60

	cpx #$9A08.w		; E0 08 9A
	ldy #$4060.w		; A0 60 40
	and $F1FD60.l,X		; 3F 60 FD F1
	lda ($00.b,X)		; A1 00
	rts		; 60

	rti		; 40

	jsr ($FD60.w,X)		; FC 60 FD
	cpx #$3C11.w		; E0 11 3C
	asl A		; 0A
	jmp $20A0.w		; 4C A0 20
	rts		; 60

	inc $FE01.w,X		; FE 01 FE
	cop $EB.b		; 02 EB
	asl $60E0.w,X		; 1E E0 60
	jsr ($AC72.w,X)		; FC 72 AC
	adc $B1F879.l,X		; 7F 79 F8 B1
	ora $293F.w,Y		; 19 3F 29
	cpx #$FE75.w		; E0 75 FE
	beq   2.b		; F0 02
	cop $07.b		; 02 07
	ora $EA.b		; 05 EA
	lda ($2E.b)		; B2 2E
	tax		; AA
	inc $95B2.w,X		; FE B2 95
	stz $40.b,X		; 74 40
	jmp.w [$ABF2]		; DC F2 AB
	brk $AF.b		; 00 AF
	dec $D0E0.w		; CE E0 D0
	ora #$AA02.w		; 09 02 AA
	ror $C172.w,X		; 7E 72 C1
	cmp [$FE.b]		; C7 FE
	ldy $72CC.w		; AC CC 72
	tax		; AA
	sec		; 38
	plp		; 28
	ror $AC6E.w,X		; 7E 6E AC
	bcs   4.b		; B0 04
	adc #$7FB2.w		; 69 B2 7F
	eor #$F8C0.w		; 49 C0 F8
	ora #$F0CE.w		; 09 CE F0
	dec $FC.b,X		; D6 FC
	beq  32.b		; F0 20
	jsr $5E7E.w		; 20 7E 5E
	sta $93.b		; 85 93
	eor $BA6A.w,Y		; 59 6A BA
	rol $C6.b		; 26 C6
	cmp ($41.b,X)		; C1 41
	ror $EE4E.w,X		; 7E 4E EE
	cpy #$7CA6.w		; C0 A6 7C
	jmp ($B03D.w,X)		; 7C 3D B0
	ldy $109F.w		; AC 9F 10
	ldy #$2C8A.w		; A0 8A 2C
	bit $527E.w		; 2C 7E 52
	inc $DDBE.w,X		; FE BE DD
	plb		; AB
	plx		; FA
	and ($92.b)		; 32 92
	inc $A6.b		; E6 A6
	stz $49A9.w		; 9C A9 49
	sbc $F121E9.l,X		; FF E9 21 F1
	cpx #$44A1.w		; E0 A1 44
	txs		; 9A
	cmp ($F8.b)		; D2 F8
	phd		; 0B
	bne -80.b		; D0 B0
	eor ($92.b)		; 52 92
	sec		; 38
	tyx		; BB
	lsr A		; 4A
	asl $15.b,X		; 16 15
	bcs  70.b		; B0 46
	lsr $E4.b		; 46 E4
	lda ($CC.b)		; B2 CC
	rol $B1.b		; 26 B1
	bra  -1.b		; 80 FF
	lda ($86.b),Y		; B1 86
	pea $91BC.w		; F4 BC 91
	stz $BA.b,X		; 74 BA
	rol $D9.b,X		; 36 D9
	plp		; 28
	cpy $5587.w		; CC 87 55
	bvs  80.b		; 70 50
	cpx #$A4A0.w		; E0 A0 A4
	dec $B6D2.w,X		; DE D2 B6
	inc $AC30.w,X		; FE 30 AC
	ora ($92.b)		; 12 92
	sbc [$52.b],Y		; F7 52
	sbc ($F2.b)		; F2 F2
	ora $A1FA13.l,X		; 1F 13 FA A1
	jmp $7070.w		; 4C 70 70
	bvc -56.b		; 50 C8
	asl A		; 0A
	bit $C17E.w		; 2C 7E C1
	ora $06.b,S		; 03 06
	stx $7666.w		; 8E 66 76
	cmp #$CEB2.w		; C9 B2 CE
	dec $A3AC.w		; CE AC A3
	cmp [$A6.b],Y		; D7 A6
	inc $A110.w,X		; FE 10 A1
	lda ($CC.b)		; B2 CC
	cpy $A6E6.w		; CC E6 A6
	clv		; B8
	jsr ($F261.w,X)		; FC 61 F2
	asl $780E.w		; 0E 0E 78
	eor $D4F649.l		; 4F 49 F6 D4
	sbc ($32.b),Y		; F1 32
	jmp ($8013.w,X)		; 7C 13 80
	mvp $78,$78		; 44 78 78
	dex		; CA
	inc $828A.w,X		; FE 8A 82
	jsr $B12C.w		; 20 2C B1
	asl $A0B9.w		; 0E B9 A0
	sty $F8.b		; 84 F8
	ora #$B0C8.w		; 09 C8 B0
	tax		; AA
	brk $09.b		; 00 09
	tay		; A8
	cld		; D8
	sbc ($E0.b)		; F2 E0
	inc $9B4F.w,X		; FE 4F 9B
	ldy #$293F.w		; A0 3F 29
	ora $7FBE19.l,X		; 1F 19 BE 7F
	adc ($17.b),Y		; 71 17
	sbc ($FC.b),Y		; F1 FC
	brk $FF.b		; 00 FF
	cpx $E6.b		; E4 E6
	jmp ($774A.w,X)		; 7C 4A 77
	eor ($E7.b),Y		; 51 E7
	lda $C3.b		; A5 C3
	jsr $C3EC.w		; 20 EC C3
	jmp $FEF2B2.l		; 5C B2 F2 FE
	tda		; 7B
	phk		; 4B
	tya		; 98
	lda ($22.b),Y		; B1 22
	eor [$D0.b],Y		; 57 D0
	trb $3F1C.w		; 1C 1C 3F
	and $FC92.w,Y		; 39 92 FC
	ldx $C0B4.w		; AE B4 C0
	bra  -4.b		; 80 FC
	beq  -8.b		; F0 F8
	ora #$5FA7.w		; 09 A7 5F
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	jsr $637F.w		; 20 7F 63
	sbc $FD85.w,X		; FD 85 FD
	sbc $60.b		; E5 60
	sbc ($78.b)		; F2 78
	pld		; 2B
	sbc $FF5656.l,X		; FF 56 56 FF
	lda #$FCFE.w		; A9 FE FC
	eor $10F1D0.l,X		; 5F D0 F1 10
	sbc $AA.b,X		; F5 AA
	rol A		; 2A
	sbc $50F23C.l,X		; FF 3C F2 50
	inc $FE.b,X		; F6 FE
	jsr ($C820.w,X)		; FC 20 C8
	ora #$F61E.w		; 09 1E F6
	rti		; 40

	inc $28.b,X		; F6 28
	brk $FC.b		; 00 FC
	stz $09D8.w		; 9C D8 09
	stz $FEEE.w,X		; 9E EE FE
	sty $4D.b		; 84 4D
	tax		; AA
	bne  28.b		; D0 1C
	tsb $D2.b		; 04 D2
	sty $00EB.w		; 8C EB 00
	sta ($C0.b,X)		; 81 C0
	nop		; EA
	ldx $FEC2.w,Y		; BE C2 FE
	inc $EAC0.w,X		; FE C0 EA
	jsr $7C20.w		; 20 20 7C
	jmp $10F40E.l		; 5C 0E F4 10
	pea $60FF.w		; F4 FF 60
	tyx		; BB
	rol A		; 2A
	rts		; 60

	sbc ($93.b,S),Y		; F3 93
	bit $FEAA.w,X		; 3C AA FE
	sta ($40.b)		; 92 40
	tsx		; BA
	bcs  -8.b		; B0 F8
	phd		; 0B
	bra -108.b		; 80 94
	stx $2DEA.w		; 8E EA 2D
	rts		; 60

	stz $FC.b,X		; 74 FC
	sty $50.b,X		; 94 50
	inx		; E8
	phd		; 0B
	jsr ($A5FA.w,X)		; FC FA A5
	sbc $D207.w,X		; FD 07 D2
	sed		; F8
	ora $FCD0.w		; 0D D0 FC
	sei		; 78
	sei		; 78
	ror $3F46.w,X		; 7E 46 3F
	and ($0F.b),Y		; 31 0F
	ora $9550F8.l		; 0F F8 50 95
	cpy $FC4A.w		; CC 4A FC
	brk $F0.b		; 00 F0
	ora #$FED8.w		; 09 D8 FE
	rts		; 60

	inc $12.b,X		; F6 12
	inc $DE.b,X		; F6 DE
	tyx		; BB
	dec $90F0.w,X		; DE F0 90
	cpx #$E0E0.w		; E0 E0 E0
	lda ($49.b,X)		; A1 49
	adc $FE004F.l,X		; 7F 4F 00 FE
	bmi  48.b		; 30 30
	ldy #$E060.w		; A0 60 E0
	sed		; F8
	ora $0E56.w		; 0D 56 0E
	sed		; F8
	ora #$F2CC.w		; 09 CC F2
	inc $88.b,X		; F6 88
	lda ($92.b,X)		; A1 92
	bmi  76.b		; 30 4C
	cpy $AB10.w		; CC 10 AB
	eor #$633C.w		; 49 3C 63
	adc $5E.b,S		; 63 5E
	sbc $1C.b,X		; F5 1C
	.db $62, $A1, $A7		; 62 A1 A7
	jsr ($2AE4.w,X)		; FC E4 2A
	tya		; 98
	ora #$AC04.w		; 09 04 AC
	bra  -4.b		; 80 FC
	php		; 08
	sbc $FE5A.w,X		; FD 5A FE
	plb		; AB
	lda $A5E79A.l		; AF 9A E7 A5
	bmi -14.b		; 30 F2
	and $FEE1.w,Y		; 39 E1 FE
	lda [$7F.b],Y		; B7 7F
	eor ($3E.b,X)		; 41 3E
	rol $F446.w,X		; 3E 46 F4
	jsr ($44C3.w,X)		; FC C3 44
	sbc ($D0.b,S),Y		; F3 D0
	inc $CEAA.w		; EE AA CE
	dex		; CA
	asl $500A.w		; 0E 0A 50
	ora [$34.b]		; 07 34
	php		; 08
	ora $FE.b		; 05 FE
	ora $03.b,S		; 03 03
	asl $F8FE.w		; 0E FE F8
	ora #$3830.w		; 09 30 38
	rol $A0.b		; 26 A0
	adc $1CB469.l		; 6F 69 B4 1C
	nop		; EA
	trb $0814.w		; 1C 14 08
	xba		; EB
	iny		; C8
	dec $7A.b,X		; D6 7A
	rol A		; 2A
	asl $AC0E.w		; 0E 0E AC
	tax		; AA
	bmi -110.b		; 30 92
	adc $71C2D5.l,X		; 7F D5 C2 71
	ora $606160.l		; 0F 60 61 60
	clv		; B8
	ora #$F1BC.w		; 09 BC F1
	jmp $ECF0.w		; 4C F0 EC
	inc $56CF.w,X		; FE CF 56
	adc $A2C9.w,X		; 7D C9 A2
	sbc ($91.b,X)		; E1 91
	bvs 114.b		; 70 72
	bra -116.b		; 80 8C
	ldy $50F6.w		; AC F6 50
	cpx #$FF0B.w		; E0 0B FF
	sta $4D7F.w		; 8D 7F 4D
	cop $15.b		; 02 15
	cpx #$4C6A.w		; E0 6A 4C
	sta ($D8.b)		; 92 D8
	cpx $F0.b		; E4 F0
	sed		; F8
	ora $5754.w		; 0D 54 57
	plx		; FA
.ACCU 16
	rep #$E8		; C2 E8
	phd		; 0B
	ply		; 7A
	sbc ($E0.b)		; F2 E0
	lda [$C0.b],Y		; B7 C0
	lda [$58.b],Y		; B7 58
	cli		; 58
	bpl -76.b		; 10 B4
	inc $B5FC.w,X		; FE FC B5
	stz $12.b		; 64 12
	sbc ($10.b)		; F2 10
	tay		; A8
	ora $F3B4.w		; 0D B4 F3
	sta $9AD8.w,X		; 9D D8 9A
	inc $FDF0.w,X		; FE F0 FD
	lda $F555.w,Y		; B9 55 F5
	rol $36E2.w		; 2E E2 36
	nop		; EA
	jsr $8EF6.w		; 20 F6 8E
	bit #$FDA0.w		; 89 A0 FD
	cpx #$D8DE.w		; E0 DE D8
	sbc $0F.b		; E5 0F
	ora $152AFB.l,X		; 1F FB 2A 15
	and $D8703F.l,X		; 3F 3F 70 D8
	ora #$1F1F.w		; 09 1F 1F
	and $D1D135.l,X		; 3F 35 D1 D1
	bra -33.b		; 80 DF
	sty $9A.b		; 84 9A
	dey		; 88
	lda [$F8.b],Y		; B7 F8
	ldx #$AAEA.w		; A2 EA AA
	sta $7373.w		; 8D 73 73
	lsr $F1.b,X		; 56 F1
	and ($EB.b)		; 32 EB
	ora $52.b,S		; 03 52
	pea $5577.w		; F4 77 55
	bra -14.b		; 80 F2
	cpx $F6.b		; E4 F6
	rol $3F26.w,X		; 3E 26 3F
	and $22.b		; 25 22
	brk $B9.b		; 00 B9
	lda ($E8.b)		; B2 E8
	dec $E69A.w		; CE 9A E6
	bmi  48.b		; 30 30
	lsr A		; 4A
	tax		; AA
	pha		; 48
	inc $DEF0.w		; EE F0 DE
	asl $FE.b		; 06 FE
	tsb $50.b		; 04 50
	sbc ($B0.b)		; F2 B0
	inc $D1B0.w		; EE B0 D1
.ACCU 8
	sep #$2B		; E2 2B
	bcs -23.b		; B0 E9
	bra -111.b		; 80 91
	tsb $6A6E.w		; 0C 6E 6A
	asl $1E0A.w		; 0E 0A 1E
	sta ($E0.b)		; 92 E0
	sta ($04.b)		; 92 04
	ora $52FE0E.l		; 0F 0E FE 52
	eor ($F2.b)		; 52 F2
	lda ($FE.b,X)		; A1 FE
	ldx #$17AB.w		; A2 AB 17
	pea $5858.w		; F4 58 58
	asl $EA.b,X		; 16 EA
	trb $EB.b		; 14 EB
	ldy #$98A2.w		; A0 A2 98
	rts		; 60

	rts		; 60

	php		; 08
	inc $0693.w,X		; FE 93 06
	cpx $A09D.w		; EC 9D A0
	.db $62, $EE, $40		; 62 EE 40
	sbc $58.b,S		; E3 58
	cpx #$AEF1.w		; E0 F1 AE
	beq  -8.b		; F0 F8
	ora #$B0.b		; 09 B0
	tya		; 98
	cpx #$90E0.w		; E0 E0 90
	sed		; F8
	ora #$7E.b		; 09 7E
	.db $62, $B0, $8A		; 62 B0 8A
	stx $0B.b		; 86 0B
	bvs -40.b		; 70 D8
	ora $0FD880.l		; 0F 80 D8 0F
	ora $7F15FF.l,X		; 1F FF 15 7F
	adc $09D0BE.l,X		; 7F BE D0 09
	and $DFF1BC.l		; 2F BC F1 DF
	cmp $FF.b,X		; D5 FF
	lda $09D0A0.l,X		; BF A0 D0 09
	beq 127.b		; F0 7F
	adc $FF.b,X		; 75 FF
	sta $A0AAAA.l,X		; 9F AA AA A0
	bne   9.b		; D0 09
	cpy #$C0F7.w		; C0 F7 C0
	cmp $C0.b,X		; D5 C0
	jsr ($D8E0.w,X)		; FC E0 D8
	ora #$E0.b		; 09 E0
	jsr ($D8E0.w,X)		; FC E0 D8
	ora #$F0.b		; 09 F0
	jsr ($A4AA.w,X)		; FC AA A4
	bmi -32.b		; 30 E0
	ora #$D0.b		; 09 D0
	jsr ($E030.w,X)		; FC 30 E0
	ora #$C0.b		; 09 C0
	inc $E65E.w,X		; FE 5E E6
	beq  80.b		; F0 50
	sbc ($78.b),Y		; F1 78
	cmp $40.b		; C5 40
	sbc [$C0.b]		; E7 C0
	and ($7F.b),Y		; 31 7F
	eor $FE.b,X		; 55 FE
	sta ($BC.b,X)		; 81 BC
	sbc $58E0.w,X		; FD E0 58
	ora $6E11.w,Y		; 19 11 6E
	sta ($AC.b),Y		; 91 AC
	sta ($C0.b,X)		; 81 C0
	inc $D4F0.w,X		; FE F0 D4
	ora [$BC.b]		; 07 BC
	cpy #$0FF8.w		; C0 F8 0F
	bvc -52.b		; 50 CC
	jsl $657DEA.l		; 22 EA 7D 65
	sbc $78FC82.l,X		; FF 82 FC 78
	eor $253DF8.l,X		; 5F F8 3D 25
	and $EAA226.l,X		; 3F 26 A2 EA
	sed		; F8
	tya		; 98
	jsr ($E804.w,X)		; FC 04 E8
	txs		; 9A
	plb		; AB
	tax		; AA
	jmp $0281.w		; 4C 81 02
	bcc -48.b		; 90 D0
	ora $1FD0A0.l		; 0F A0 D0 1F
	cpy #$0FD0.w		; C0 D0 0F
	cpx #$1FD8.w		; E0 D8 1F
	bmi -32.b		; 30 E0
	and $0FE040.l		; 2F 40 E0 0F
	asl $C0FB.w		; 0E FB C0
	sed		; F8
	and $0FC850.l		; 2F 50 C8 0F
	and $7D0C23.l,X		; 3F 23 0C 7D
	eor $36.b		; 45 36
	ror A		; 6A
	and $FF7F27.l,X		; 3F 27 7F FF
	inc $3B44.w,X		; FE 44 3B
	tsa		; 3B
	inc $DEF2.w,X		; FE F2 DE
	eor ($FC.b)		; 52 FC
	bit $A1.b		; 24 A1
	tsx		; BA
	jsr ($FE04.w,X)		; FC 04 FE
	adc ($8E.b)		; 72 8E
	tax		; AA
	lsr $608E.w,X		; 5E 8E 60
	tay		; A8
	sta $0BE8F0.l,X		; 9F F0 E8 0B
	stz $A4E2.w		; 9C E2 A4
	dex		; CA
	jmp $0A68.w		; 4C 68 0A
	sta $1C1C.w,Y		; 99 1C 1C
	eor ($E4.b)		; 52 E4
	ora $90.b,X		; 15 90
	sbc ($71.b)		; F2 71
	cpx #$E0E2.w		; E0 E2 E0
	jsr ($F4F6.w,X)		; FC F6 F4
	cpx #$FAFF.w		; E0 FF FA
	pea $0101.w		; F4 01 01
	ora $02.b,S		; 03 02
	and $427F3E.l,X		; 3F 3E 7F 42
	and $DFE932.l,X		; 3F 32 E9 DF
	ora $80FE12.l,X		; 1F 12 FE 80
	bra -62.b		; 80 C2
	.db $42, $C7		; 42 C7
	eor $CF.b		; 45 CF
	eor #$FA.b		; 49 FA
	sbc ($FF.b)		; F2 FF
	eor [$F8.b],Y		; 57 F8
	clc		; 18
	cpx #$0620.w		; E0 20 06
	asl $1F.b		; 06 1F
	ora $617F.w,Y		; 19 7F 61
	inc $7086.w,X		; FE 86 70
	dec $24.b,X		; D6 24
	clv		; B8
	ora #$47.b		; 09 47
	lda $36E430.l		; AF 30 E4 36
	rol $A4.b,X		; 36 A4
	asl $DA.b,X		; 16 DA
	adc $3E.b		; 65 3E
	rol $50.b		; 26 50
	cmp ($5A.b,S),Y		; D3 5A
	ora $F4.b		; 05 F4
	cmp ($6E.b),Y		; D1 6E
	rep #$CC		; C2 CC
	adc $2864.w,Y		; 79 64 28
	cld		; D8
	ora #$0A.b		; 09 0A
.ACCU 8
.INDEX 8
	sep #$7E		; E2 7E
	phx		; DA
	sbc ($D7.b)		; F2 D7
	sbc $C4.b,X		; F5 C4
	cpy $5F.b		; C4 5F
	eor ($B0.b),Y		; 51 B0
	sbc #$80.b		; E9 80
	sbc ($F8.b,X)		; E1 F8
	sed		; F8
	cop $DC.b		; 02 DC
	pea $0EC0.w		; F4 C0 0E
	adc $3F.b		; 65 3F
	ldx $2555.w,Y		; BE 55 25
	tax		; AA
	jmp $3838.w		; 4C 38 38
	tsb $C40C.w		; 0C 0C C4
	lda ($62.b,S),Y		; B3 62
	ldx $60BB.w,Y		; BE BB 60
	sbc ($60.b,X)		; E1 60
	rts		; 60

	bpl 117.b		; 10 75
	adc ($C0.b)		; 72 C0
	clv		; B8
	asl $DBE6.w		; 0E E6 DB
	stz $6087.w		; 9C 87 60
	rts		; 60

	eor ($D2.b)		; 52 D2
	cpx $677F.w		; EC 7F 67
	.db $82, $FD, $96		; 82 FD 96
	lsr $FF.b,X		; 56 FF
	bit #$C4.b		; 89 C4
	phx		; DA
	plx		; FA
	txa		; 8A
	sbc $E1A785.l,X		; FF 85 A7 E1
	sbc $6E6E91.l,X		; FF 91 6E 6E
	tsb $263F.w		; 0C 3F 26
	inc $4A7B.w,X		; FE 7B 4A
	sbc $5273FF.l,X		; FF FF 73 52
	adc $62.b,S		; 63 62
	ora ($01.b,X)		; 01 01
	beq  80.b		; F0 50
	sed		; F8
	pha		; 48
	sed		; F8
	pla		; 68
	jsr ($DE64.w,X)		; FC 64 DE
	eor ($1F.b)		; 52 1F
	inc $49CF.w,X		; FE CF 49
	cmp [$47.b]		; C7 47
	bra -128.b		; 80 80
	inc $0302.w		; EE 02 03
	rol $5F3F.w,X		; 3E 3F 5F
	rts		; 60

	sbc $5EAD.w,X		; FD AD 5E
	adc [$FE.b]		; 67 FE
	jsr ($E0E0.w,X)		; FC E0 E0
	beq  16.b		; F0 10
	jsr ($031C.w,X)		; FC 1C 03
	lda ($1A.b,X)		; A1 1A
	inc $FFFC.w,X		; FE FC FF
	brk $DC.b		; 00 DC
	stz $0D0E.w		; 9C 0E 0D
	asl $19.b,X		; 16 19
	tsa		; 3B
	bit $3D.b		; 24 3D
	and $5B.b,S		; 23 5B
	lda ($43.b,X)		; A1 43
	stx $BE70.w		; 8E 70 BE
	iny		; C8
	cpy $E9.b		; C4 E9
	cop $7C.b		; 02 7C
	jsl $8170C8.l		; 22 C8 70 81
	pea $FCE0.w		; F4 E0 FC
	tsb $07.b		; 04 07
	inc $FDFC.w,X		; FE FC FD
	jsr $F030.w		; 20 30 F0
	ldy $BB10.w,X		; BC 10 BB
	inc $FFD0.w,X		; FE D0 FF
	sbc $02F0.w,X		; FD F0 02
	cop $05.b		; 02 05
	ora [$08.b]		; 07 08
	ora $201F10.l		; 0F 10 1F 20
	lda $BF.b		; A5 BF
	and $436011.l,X		; 3F 11 60 43
	sbc $5C8888.l,X		; FF 88 88 5C
	pei ($FC.b)		; D4 FC
	bit $B4.b		; 24 B4
	rol $90F8.w,X		; 3E F8 90
	cmp #$54.b		; C9 54
	rol $3F.b,X		; 36 3F
	and $FE7D42.l,X		; 3F 42 7D FE
	sbc ($FC.b)		; F2 FC
	cpy #$C0.b		; C0 C0
	ldy #$5F.b		; A0 5F
	sbc ($60.b,X)		; E1 60
	bcs  80.b		; B0 50
	clv		; B8
	pha		; 48
	ldy $B9A0.w,X		; BC A0 B9
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	phy		; 5A
	ora $02.b,S		; 03 02
	xba		; EB
	beq  15.b		; F0 0F
	asl $AE17.w		; 0E 17 AE
	bit #$FA.b		; 89 FA
	eor $80.b,S		; 43 80
	rti		; 40

	cmp $F040.w,X		; DD 40 F0
	bvs  -8.b		; 70 F8
	tad		; 5B
	inx		; E8
	beq 127.b		; F0 7F
	adc $73FF80.l,X		; 7F 80 FF 73
	adc $13E43B.l,X		; 7F 3B E4 13
	ldy #$29.b		; A0 29
	cop $77.b		; 02 77
	cpx $FC.b		; E4 FC
	cld		; D8
	jsr ($ACAC.w,X)		; FC AC AC
	lda ($F0.b)		; B2 F0
	ora $5C5C.w		; 0D 5C 5C
	ora ($06.b,X)		; 01 06
	ldy #$F0.b		; A0 F0
	ora $3E040E.l		; 0F 0E 04 3E
	and $6F01A2.l,X		; 3F A2 01 6F
	inc $98FC.w,X		; FE FC 98
	tsb $FC02.w		; 0C 02 FC
	trb $FD41.w		; 1C 41 FD
	bpl -83.b		; 10 AD
	asl $E230.w,X		; 1E 30 E2
	and $B2.b,S		; 23 B2
	and ($86.b,X)		; 21 86
	and ($C0.b),Y		; 31 C0
	ldy $1E.b		; A4 1E
	rep #$40		; C2 40
	rti		; 40

	ldy #$0B.b		; A0 0B
	cmp $1E.b,S		; C3 1E
	php		; 08
	ldy $EC4B.w		; AC 4B EC
	ora $0FE610.l,X		; 1F 10 E6 0F
	brk $7E.b		; 00 7E
	php		; 08
	asl $C1.b		; 06 C1
	stx $1832.w		; 8E 32 18
	sed		; F8
	jsr ($0404.w,X)		; FC 04 04
	and ($C0.b,X)		; 21 C0
	lda $A2.b,S		; A3 A2
	cpy $20.b		; C4 20
	lsr $0B78.w,X		; 5E 78 0B
	ora $DC.b,S		; 03 DC
	tsb $0506.w		; 0C 06 05
	inc $E2.b		; E6 E2
	asl $0709.w		; 0E 09 07
	cpx $23.b		; E4 23
	sta [$61.b]		; 87 61
	jmp ($DC94.w)		; 6C 94 DC
	bit $2A.b		; 24 2A
	jmp ($DA84.w,X)		; 7C 84 DA
	jsr ($22FC.w,X)		; FC FC 22
	brk $F0.b		; 00 F0
	tsb $04FE.w		; 0C FE 04
	ora [$80.b]		; 07 80
	eor ($36.b)		; 52 36
	ldx $E242.w,Y		; BE 42 E2
	php		; 08
	tsb $05.b		; 04 05
	brk $A0.b		; 00 A0
	rts		; 60

	bvc  76.b		; 50 4C
	asl $C00A.w		; 0E 0A C0
	ora ($00.b)		; 12 00
	ror $E0.b		; 66 E0
	jsr ($0A0E.w,X)		; FC 0E 0A
	jsr ($A8E9.w,X)		; FC E9 A8
	asl $09F8.w,X		; 1E F8 09
	ora ($1F.b)		; 12 1F
	eor $B2FF52.l,X		; 5F 52 FF B2
	inc $FF82.w,X		; FE 82 FF
	sbc $7D4500.l,X		; FF 00 45 7D
	sec		; 38
	sec		; 38
	eor ($FE.b)		; 52 FE
	sbc $EEFF51.l,X		; FF 51 FF EE
	sbc ($C3.b,X)		; E1 C3
	inc $F653.w,X		; FE 53 F6
	and ($FE.b)		; 32 FE
	cpx $A2EC.w		; EC EC A2
	beq  37.b		; F0 25
	adc $E1.b,X		; 75 E1
	sbc $CAA4A5.l,X		; FF A5 A4 CA
	lda ($C2.b,X)		; A1 C2
	cli		; 58
	cli		; 58
	stz $11E0.w,X		; 9E E0 11
	pla		; 68
	clc		; 18
	ora $2E4187.l,X		; 1F 87 41 2E
	and $FE715F.l,X		; 3F 5F 71 FE
	sta $D2FEF1.l,X		; 9F F1 FE D2
	bit $F8.b,X		; 34 F8
	xce		; FB
	dec A		; 3A
	bit $7CEC.w,X		; 3C EC 7C
	cpy $9EF2.w		; CC F2 9E
.INDEX 8
	sep #$D0		; E2 D0
	and ($0F.b,S),Y		; 33 0F
	ora $F83F30.l		; 0F 30 3F F8
	and $5F7F4F.l,X		; 3F 4F 7F 5F
	bvs -97.b		; 70 9F
	sbc ($FE.b,S),Y		; F3 FE
	rts		; 60

	inc $20.b,X		; F6 20
	cpx #$A0.b		; E0 A0
	sta $A1.b,S		; 83 A1
	cpx #$D0.b		; E0 D0
	bvs  -2.b		; 70 FE
	cpy #$FC.b		; C0 FC
	and $FF70C0.l		; 2F C0 70 FF
	cpx #$C0.b		; E0 C0
	sed		; F8
	phd		; 0B
	inx		; E8
	sed		; F8
	pea $FC1C.w		; F4 1C FC
	sty $CE7A.w		; 8C 7A CE
	inc $FCC0.w,X		; FE C0 FC
	sec		; 38
	sbc $7D3F0E.l,X		; FF 0E 3F 7D
	adc [$7F.b]		; 67 7F
	ror $BF.b		; 66 BF
	cpx $BF.b		; E4 BF
	sbc ($C0.b,X)		; E1 C0
	inc $60E0.w,X		; FE E0 60
	lda $3B.b		; A5 3B
	inc $9D90.w,X		; FE 90 9D
	sbc ($F2.b),Y		; F1 F2
	jsr $5F20.w		; 20 20 5F
	dec $5891.w,X		; DE 91 58
	adc $FDDFF6.l,X		; 7F F6 DF FD
	pha		; 48
	asl A		; 0A
	inc $D1.b		; E6 D1
	cmp $FFFFB1.l,X		; DF B1 FF FF
	sta ($FE.b),Y		; 91 FE
.INDEX 16
	rep #$5A		; C2 5A
	inc $0ED7.w,X		; FE D7 0E
	trb $231C.w		; 1C 1C 23
	and $F0A22E.l,X		; 3F 2E A2 F0
	inc $80F0.w,X		; FE F0 80
	sbc ($FC.b),Y		; F1 FC
	bit $01.b,X		; 34 01
	bra  -2.b		; 80 FE
	and $63C5EA.l,X		; 3F EA C5 63
	plp		; 28
	ldy $FAFC.w,X		; BC FC FA
	adc $08F8E8.l,X		; 7F E8 F8 08
	jsr ($10F4.w,X)		; FC F4 10
	xce		; FB
	ldx #$FCF1.w		; A2 F1 FC
	pea $FCF6.w		; F4 F6 FC
	brk $C1.b		; 00 C1
	bpl -49.b		; 10 CF
	cpy $FFE1.w		; CC E1 FF
	sbc [$B4.b],Y		; F7 B4
	ldx $3F.b		; A6 3F
	and ($DF.b),Y		; 31 DF
	cmp ($FF.b,S),Y		; D3 FF
	ldy #$8080.w		; A0 80 80
	cpy $FF4C.w		; CC 4C FF
	ora $FF54DC.l,X		; 1F DC 54 FF
	lda [$FF.b]		; A7 FF
	sta $497F.w,X		; 9D 7F 49
	inc $FEE6.w,X		; FE E6 FE
	cop $9F.b		; 02 9F
	beq -45.b		; F0 D3
	brk $FE.b		; 00 FE
	sbc ($02.b),Y		; F1 02
	rol $383F.w		; 2E 3F 38
	ora $0C.b,S		; 03 0C
	bit $C2.b,X		; 34 C2
	ror $0AFE.w,X		; 7E FE 0A
	pea $C59C.w		; F4 9C C5
	lda $203802.l,X		; BF 02 38 20
	sbc ($E2.b,S),Y		; F3 E2
	sbc ($5E.b,S),Y		; F3 5E
	adc ($5C.b,S),Y		; 73 5C
	adc $403F30.l,X		; 7F 30 3F 40
	brk $D4.b		; 00 D4
	lda ($FF.b)		; B2 FF
	jmp $0204.w		; 4C 04 02
	plx		; FA
	inc $F462.w,X		; FE 62 F4
	sbc $F8C00C.l,X		; FF 0C C0 F8
	tsb $8EFA.w		; 0C FA 8E
	sbc ($03.b)		; F2 03
	php		; 08
	asl $FEE2.w,X		; 1E E2 FE
	sta ($FE.b,X)		; 81 FE
	cpx #$00EC.w		; E0 EC 00
	ora $0E.b		; 05 0E
	asl A		; 0A
	asl $59.b		; 06 59
	cpy #$C2FF.w		; C0 FF C2
	rti		; 40

	sbc $C004BE.l,X		; FF BE 04 C0
	sbc $EF90FF.l,X		; FF FF 90 EF
	tay		; A8
	cmp #$CF.b		; C9 CF
	sbc $3F31F0.l		; EF F0 31 3F
	eor $7F.b,S		; 43 7F
	adc $EB04.w,X		; 7D 04 EB
	ldx $FEA2.w,Y		; BE A2 FE
	.db $42, $7E		; 42 7E
	bit #$4F.b		; 89 4F
	tsb $FF.b		; 04 FF
	and $F7.b,X		; 35 F7
	cmp $C3.b,S		; C3 C3
	beq  12.b		; F0 0C
	jsr $FDC6.w		; 20 C6 FD
	tsb $52.b		; 04 52
	rol $342C.w,X		; 3E 2C 34
	ora #$AB.b		; 09 AB
	inc $E8FC.w,X		; FE FC E8
	inx		; E8
	beq  -4.b		; F0 FC
	ora ($D8.b)		; 12 D8
	ora $D802.w		; 0D 02 D8
	ora $3F4A70.l		; 0F 70 4A 3F
	and $101F.w,Y		; 39 1F 10
	adc $69FDF6.l		; 6F F6 FD 69
	eor ($C1.b)		; 52 C1
	eor ($F0.b,X)		; 41 F0
	txs		; 9A
	sbc $DBFBDD.l,X		; FF DD FB DB
	cop $C9.b		; 02 C9
	cld		; D8
	ror $56.b,X		; 76 56
	ror $B6C3.w,X		; 7E C3 B6
	lsr A		; 4A
	rol $F026.w,X		; 3E 26 F0
	asl $C00E.w		; 0E 0E C0
	cmp ($71.b,X)		; C1 71
	sta $11.b		; 85 11
	adc ($FD.b),Y		; 71 FD
	sta [$B8.b]		; 87 B8
	cmp ($47.b,S),Y		; D3 47
	sty $E2.b,X		; 94 E2
	sbc [$E6.b]		; E7 E6
	sbc $E8EF18.l,X		; FF 18 EF E8
	ora $E1FE08.l		; 0F 08 FE E1
	ora $58C8CF.l,X		; 1F CF C8 58
	cpy #$FE40.w		; C0 40 FE
	inc $01FF.w,X		; FE FF 01
	sbc $8F57FD.l,X		; FF FD 57 8F
	inc $FF85.w,X		; FE 85 FF
	bra -79.b		; 80 B1
	dex		; CA
	ldx #$81EF.w		; A2 EF 81
	rts		; 60

	sbc $7F0A83.l,X		; FF 83 0A 7F
	jsr ($2120.w,X)		; FC 20 21
	inc $D6EA.w,X		; FE EA D6
	sta $949F90.l,X		; 9F 90 9F 94
	sbc $E1BF64.l,X		; FF 64 BF E1
	adc $46E390.l,X		; 7F 90 E3 46
	sbc [$24.b]		; E7 24
	sbc [$14.b],Y		; F7 14
	sbc [$54.b],Y		; F7 54
	sbc $6CFF4C.l,X		; FF 4C FF 6C
	sbc $AAB2CF.l,X		; FF CF B2 AA
	sbc $19FFF0.l,X		; FF F0 FF 19
	sbc $40FF59.l,X		; FF 59 FF 40
	sbc $82FF5C.l,X		; FF 5C FF 82
	plx		; FA
	dec A		; 3A
	mvp $FC,$EA		; 44 EA FC
.ACCU 8
	sep #$E2		; E2 E2
	dec A		; 3A
	inc $7820.w		; EE 20 78
	tad		; 5B
	ora [$04.b]		; 07 04
	ora $180FDE.l,X		; 1F DE 0F 18
	ldy $49B9.w,X		; BC B9 49
	adc $E13B79.l,X		; 7F 79 3B E1
	and #$10.b		; 29 10
	bpl -72.b		; 10 B8
	tay		; A8
	tda		; 7B
	php		; 08
	inc $6C7C.w,X		; FE 7C 6C
	cld		; D8
	sbc ($E9.b),Y		; F1 E9
	sbc $7FFE69.l,X		; FF 69 FE 7F
	ora [$E1.b]		; 07 E1
	ror A		; 6A
	lda $FE.b,S		; A3 FE
	sep #$06		; E2 06
	cld		; D8
	cmp ($E2.b,X)		; C1 E2
	and $1C.b,S		; 23 1C
	and $EF1C0E.l		; 2F 0E 1C EF
	plp		; 28
	sbc $FDFEA8.l		; EF A8 FE FD
	inc $47.b,X		; F6 47
	eor [$88.b]		; 47 88
	and $08FE0E.l,X		; 3F 0E FE 08
	sbc $8587ED.l		; EF ED 87 85
	sta $06D089.l		; 8F 89 D0 06
	and ($BA.b)		; 32 BA
	adc $E9035F.l,X		; 7F 5F 03 E9
	ldy #$0FFA.w		; A0 FA 0F
	bmi  84.b		; 30 54
	eor #$1F.b		; 49 1F
	and $1A0C2C.l,X		; 3F 2C 0C 1A
	sbc $C0BCEC.l,X		; FF EC BC C0
	sed		; F8
	and $919F24.l,X		; 3F 24 9F 91
	rts		; 60

	cmp ($F4.b),Y		; D1 F4
	cmp $D2.b,S		; C3 D2
	inc $D4F7.w,X		; FE F7 D4
	inc $A3E3.w,X		; FE E3 A3
	bmi -63.b		; 30 C1
	asl A		; 0A
	mvn $57,$E1		; 54 E1 57
	sbc $E7FA14.l,X		; FF 14 FA E7
	stz $8F.b		; 64 8F
	dey		; 88
	ora $FC0A0F.l		; 0F 0F 0A FC
	sbc $EF09FE.l,X		; FF FE 09 EF
	cpy #$61C0.w		; C0 C0 61
	tsb $1958.w		; 0C 58 19
	ora $C95E10.l,X		; 1F 10 5E C9
	rti		; 40

	lda ($F1.b),Y		; B1 F1
	and $490C3F.l,X		; 3F 3F 0C 49
	stz $F1.b,X		; 74 F1
	cmp $99FE.w,Y		; D9 FE 99
	inc $000B.w,X		; FE 0B 00
	and ($EC.b)		; 32 EC
	cpx $F000.w		; EC 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DB.b		; 00 DB
	xce		; FB
	brk $20.b		; 00 20
	inc $60F8.w,X		; FE F8 60
	rts		; 60

	cpy #$5DF8.w		; C0 F8 5D
	ora $0920.w		; 0D 20 09
	inc $16F8.w,X		; FE F8 16
	asl A		; 0A
	plp		; 28
	phd		; 0B
	adc $0C30BE.l		; 6F BE 30 0C
	bmi  10.b		; 30 0A
	pla		; 68
	cpx #$17F8.w		; E0 F8 17
	ora $1DA6.w		; 0D A6 1D
	jsr $FF19.w		; 20 19 FF
	asl $FE.b,X		; 16 FE
	sed		; F8
	asl $1A.b,X		; 16 1A
	plp		; 28
	tas		; 1B
	bmi  28.b		; 30 1C
	bmi  26.b		; 30 1A
	pla		; 68
	cpx #$17F8.w		; E0 F8 17
	ora $FE66.w,X		; 1D 66 FE
	jmp ($F8D8.w,X)		; 7C D8 F8
	inc $14F8.w,X		; FE F8 14
	rol A		; 2A
	plp		; 28
	txa		; 8A
	rts		; 60

	inc $682A.w,X		; FE 2A 68
	tsb $F8.b		; 04 F8
	and $AAA8.w,Y		; 39 A8 AA
	txa		; 8A
	inc $F05E.w,X		; FE 5E F0
	.db $62, $FE, $F8		; 62 FE F8
	jsr ($F8FE.w,X)		; FC FE F8
	jsr ($F8FE.w,X)		; FC FE F8
	jsr ($F8FE.w,X)		; FC FE F8
	jsr ($002A.w,X)		; FC 2A 00
	inc $FCF8.w,X		; FE F8 FC
	inc $FCF8.w,X		; FE F8 FC
	inc $0CF8.w,X		; FE F8 0C
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $0093.w		; ED 93 00
	sbc $FF1EF8.l,X		; FF F8 1E FF
	inc $F6FD.w,X		; FE FD F6
	asl $C75F.w		; 0E 5F C7
	sed		; F8
	sbc [$7F.b],Y		; F7 7F
	sbc $0001FE.l,X		; FF FE 01 00
	and $FCFFE0.l,X		; 3F E0 FF FC
	ora $AF.b,S		; 03 AF
	adc $FF.b,S		; 63 FF
	bit $C1F1.w,X		; 3C F1 C1
	sbc $A46323.l		; EF 23 63 A4
	cpx #$1FFE.w		; E0 FE 1F
	nop		; EA
	inc $E0FA.w,X		; FE FA E0
	sbc $06FA27.l,X		; FF 27 FA 06
	sta $F0FF8C.l,X		; 9F 8C FF F0
	adc $F8F940.l,X		; 7F 40 F9 F8
	sbc $F8E080.l,X		; FF 80 E0 F8
	ora $037CC6.l,X		; 1F C6 7C 03
	sbc ($0C.b,S),Y		; F3 0C
	lda $00073F.l,X		; BF 3F 07 00
	bra 127.b		; 80 7F
	stx $E1.b		; 86 E1
	sbc ($5F.b)		; F2 5F
	cpy #$F7EC.w		; C0 EC F7
	tsb $E2.b		; 04 E2
	sbc $1F8703.l,X		; FF 03 87 1F
	sbc $1CFF60.l,X		; FF 60 FF 1C
	pea $0738.w		; F4 38 07
	cmp [$38.b]		; C7 38
	tsa		; 3B
	cmp $7E.b,S		; C3 7E
	sei		; 78
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	jsr ($1FE0.w,X)		; FC E0 1F
	ora $BCE0E0.l,X		; 1F E0 E0 BC
	and $F7.b,S		; 23 F7
	asl $80.b		; 06 80
	ora $3FF4BB.l,X		; 1F BB F4 3F
	jsr $0FFF.w		; 20 FF 0F
	sbc $C23E70.l,X		; FF 70 3E C2
	cpx #$DF.b		; E0 DF
	ora $FF01F9.l,X		; 1F F9 01 FF
	sbc $130FF8.l,X		; FF F8 0F 13
	bpl -16.b		; 10 F0
	beq  15.b		; F0 0F
	sta $C47BE4.l,X		; 9F E4 7B C4
	eor #$FD.b		; 49 FD
	beq  -7.b		; F0 F9
	cpy $E43C.w		; CC 3C E4
	sbc $012CFD.l,X		; FF FD 2C 01
	cpx $03.b		; E4 03
	and $FCFDFF.l,X		; 3F FF FD FC
	lsr A		; 4A
	ldx #$D5.b		; A2 D5
	sbc ($F8.b,X)		; E1 F8
	asl A		; 0A
	nop		; EA
	cpx #$F8.b		; E0 F8
	ora $177A.w		; 0D 7A 17
	tsb $C1.b		; 04 C1
	sed		; F8
	phd		; 0B
	brk $03.b		; 00 03
	jsr ($F8E0.w,X)		; FC E0 F8
	tsb $C06B.w		; 0C 6B C0
	sed		; F8
	tsb $0708.w		; 0C 08 07
	eor $0EF8C0.l,X		; 5F C0 F8 0E
	and $E032FF.l,X		; 3F FF 32 E0
	sed		; F8
	asl A		; 0A
	and $3FC0C0.l,X		; 3F C0 C0 3F
	lda $AA4AF7.l,X		; BF F7 4A AA
	cmp $80.b,X		; D5 80
	sta $F85E.w		; 8D 5E F8
	ora $F8FE.w		; 0D FE F8
	ora #$A2.b		; 09 A2
	pea $F6B2.w		; F4 B2 F6
	cpx #$F8.b		; E0 F8
	tas		; 1B
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	asl $FEDE.w		; 0E DE FE
	sed		; F8
	ora $0FF8FF.l		; 0F FF F8 0F
	ora $1FFDDC.l		; 0F DC FD 1F
	sbc $FE2DF5.l,X		; FF F5 2D FE
	ora ($E0.b,X)		; 01 E0
	sed		; F8
	trb $A1.b		; 14 A1
	sbc $E6E020.l,X		; FF 20 E0 E6
	asl $F8DE.w,X		; 1E DE F8
	phd		; 0B
	ora $02F156.l,X		; 1F 56 F1 02
	ora $E02C8E.l		; 0F 8E 2C E0
	ora [$F8.b]		; 07 F8
	ora [$59.b]		; 07 59
	dec $007E.w,X		; DE 7E 00
	sbc $B9.b,S		; E3 B9
	cpx $E8.b		; E4 E8
	tsb $FAFA.w		; 0C FA FA
	sbc ($0F.b),Y		; F1 0F
	dec $FCBE.w,X		; DE BE FC
	and $1E9F30.l,X		; 3F 30 9F 1E
	cmp $CF0AF8.l,X		; DF F8 0A CF
	ora $F8627F.l		; 0F 7F 62 F8
	ora $C20B.w		; 0D 0B C2
	cop $9F.b		; 02 9F
	bvs -124.b		; 70 84
	sed		; F8
	phd		; 0B
	ldy #$82.b		; A0 82
	sbc $0F0CFE.l,X		; FF FE 0C 0F
	asl $98F8.w,X		; 1E F8 98
	sta $00.b,S		; 83 00
	jsr ($FFFD.w,X)		; FC FD FF
	sbc $0003.w,X		; FD 03 00
	adc [$EE.b]		; 67 EE
	adc $FF67A8.l,X		; 7F A8 67 FF
	adc $0DE9E2.l,X		; 7F E2 E9 0D
	xba		; EB
	inc A		; 1A
	cmp $F83C.w		; CD 3C F8
	xce		; FB
	sei		; 78
	and [$11.b],Y		; 37 11
.INDEX 16
	rep #$D0		; C2 D0
	sbc #$A2.b		; E9 A2
	inc $07.b		; E6 07
	inc $1703.w,X		; FE 03 17
	ror $078F.w,X		; 7E 8F 07
	sbc $F0FE8F.l,X		; FF 8F FE F0
	phd		; 0B
	jsl $FA03FD.l		; 22 FD 03 FA
	asl $F4.b		; 06 F4
	tsb $FFE1.w		; 0C E1 FF
	and $F8.b,S		; 23 F8
	tsb $039F.w		; 0C 9F 03
	jsr ($F603.w,X)		; FC 03 F6
	asl $31D0.w		; 0E D0 31
	eor ($C7.b,X)		; 41 C7
	ldx $F3BF.w,Y		; BE BF F3
	sta ($6D.b,X)		; 81 6D
	cop $8A.b		; 02 8A
	tsb $2D.b		; 04 2D
	ora ($89.b),Y		; 11 89
	sbc $003F.w,X		; FD 3F 00
	adc $01.b		; 65 01
	bcs 127.b		; B0 7F
	inc $63BF.w,X		; FE BF 63
	trb $F249.w		; 1C 49 F2
	sec		; 38
	cmp [$38.b]		; C7 38
	ora [$DC.b]		; 07 DC
	cmp $27.b,S		; C3 27
	cmp $8EFF.w,X		; DD FF 8E
	sbc #$6D.b		; E9 6D
	sed		; F8
	ora #$C0.b		; 09 C0
	and $C0E988.l,X		; 3F 88 E9 C0
	adc $CC2B70.l		; 6F 70 2B CC
	nop		; EA
	sbc ($1B.b,S),Y		; F3 1B
	and $E4FD42.l,X		; 3F 42 FD E4
	sbc $DE5A.w,X		; FD 5A DE
	asl $E6.b		; 06 E6
	cpx #$F01C.w		; E0 1C F0
	bra -17.b		; 80 EF
	eor [$8F.b],Y		; 57 8F
	cop $FF.b		; 02 FF
	and ($FF.b,X)		; 21 FF
	ora $FF80.w,Y		; 19 80 FF
	adc $806BBF.l,X		; 7F BF 6B 80
	lda $E05FC0.l,X		; BF C0 5F E0
	adc $F88030.l		; 6F 30 80 F8
	tsb $8080.w		; 0C 80 80
	jsl $FE60E9.l		; 22 E9 60 FE
	sbc [$54.b]		; E7 54
	sty $98.b		; 84 98
.ACCU 16
.INDEX 16
	rep #$F0		; C2 F0
	phd		; 0B
	stz $E9.b		; 64 E9
	sbc $1FE160.l,X		; FF 60 E1 1F
	sbc $1E07.w,Y		; F9 07 1E
	inc $711A.w		; EE 1A 71
	sbc ($EF.b),Y		; F1 EF
	inx		; E8
	inc $FC32.w,X		; FE 32 FC
	sbc $DA.b,S		; E3 DA
	inc $FC.b		; E6 FC
	asl $01.b		; 06 01
	ora ($0E.b),Y		; 11 0E
	sbc $F2CE10.l		; EF 10 CE F2
	cmp $FF7C2F.l		; CF 2F 7C FF
	cmp $2600.w,Y		; D9 00 26
	tsb $A9.b		; 04 A9
	sbc ($B6.b),Y		; F1 B6
	ora $7F3838.l		; 0F 38 38 7F
	sbc ($78.b),Y		; F1 78
	ora $D9E4.w		; 0D E4 D9
	rol $27.b		; 26 27
	cmp $F2E8.w,Y		; D9 E8 F2
	pei ($E1.b)		; D4 E1
	cmp [$3F.b]		; C7 3F
	cpx #$E737.w		; E0 37 E7
	rti		; 40

	bcs  15.b		; B0 0F
	bra 127.b		; 80 7F
	cmp [$DE.b],Y		; D7 DE
	cpx #$091F.w		; E0 1F 09
	adc $63.b,S		; 63 63
	stz $FF94.w		; 9C 94 FF
	ora $61FFE4.l,X		; 1F E4 FF 61
	eor ($DE.b,S),Y		; 53 DE
	sbc ($9C.b),Y		; F1 9C
	adc $C4.b,S		; 63 C4
	inx		; E8
	ora #$25E3.w		; 09 E3 25
	cmp $FFD3.w		; CD D3 FF
	cpy $E8.b		; C4 E8
	asl A		; 0A
	trb $F8E8.w		; 1C E8 F8
	php		; 08
	sbc ($10.b,X)		; E1 10
	beq  16.b		; F0 10
	iny		; C8
	jsr $BFEA.w		; 20 EA BF
	brk $20.b		; 00 20
	cpx #$8020.w		; E0 20 80
	rti		; 40

	dey		; 88
	rti		; 40

	lda $F1.b,S		; A3 F1
	plb		; AB
	and $FEFC.w,Y		; 39 FC FE
	ora $FE3FFE.l,X		; 1F FE 3F FE
.ACCU 16
	rep #$23		; C2 23
	eor #$160F.w		; 49 0F 16
	adc $C916F8.l,X		; 7F F8 16 C9
	ora #$0036.w		; 09 36 00
	lda $7B76.w		; AD 76 7B
	ora ($A0.b,X)		; 01 A0
	ora $FC.b,S		; 03 FC
	ora $F0FFEF.l		; 0F EF FF F0
	asl $E9.b,X		; 16 E9
	ora #$A8F6.w		; 09 F6 A8
	jsr ($5FA0.w,X)		; FC A0 5F
	ora ($F0.b)		; 12 F0
	php		; 08
	sed		; F8
	sty $54F8.w		; 8C F8 54
	sbc $A1F10F.l,X		; FF 0F F1 A1
	lda $0F.b,S		; A3 0F
	ora [$5C.b]		; 07 5C
	tsb $A1.b		; 04 A1
	cli		; 58
	beq  15.b		; F0 0F
	sed		; F8
	ora [$00.b]		; 07 00
	inc $FAFE.w,X		; FE FE FA
	inc $E7.b		; E6 E7
	nop		; EA
	ora [$FF.b]		; 07 FF
	sta $3079.w,Y		; 99 79 30
	sbc $49CC1F.l,X		; FF 1F CC 49
	sta $44.b		; 85 44
	sta ($47.b,X)		; 81 47
	sta $22.b,S		; 83 22
	cmp ($A3.b,X)		; C1 A3
	cpy #$E0C2.w		; C0 C2 E0
	asl $A3.b		; 06 A3
	sbc $FE02EA.l,X		; FF EA 02 FE
	stz $7FF6.w		; 9C F6 7F
	bvc  23.b		; 50 17
	php		; 08
	ora $FF8398.l,X		; 1F 98 83 FF
	sbc $A44744.l,X		; FF 44 47 A4
	sbc $FA199C.l		; EF 9C 19 FA
	cmp $32.b,X		; D5 32
	bra -32.b		; 80 E0
	cpx #$60F0.w		; E0 F0 60
	beq  48.b		; F0 30
	cmp $3F.b,S		; C3 3F
	sed		; F8
	bpl  -8.b		; 10 F8
	adc $00.b		; 65 00
	jsr ($FC08.w,X)		; FC 08 FC
	cmp $EB41.w,Y		; D9 41 EB
	eor ($FD.b,S),Y		; 53 FD
	lda $5BE6FE.l,X		; BF FE E6 5B
	sbc #$E65D.w		; E9 5D E6
	jmp $015EE5.l		; 5C E5 5E 01
	rol $3C03.w,X		; 3E 03 3C
	rti		; 40

	sbc $F6FCFE.l,X		; FF FE FC F6
	rts		; 60

	cpx $A0.b		; E4 A0
	xce		; FB
	sbc ($73.b),Y		; F1 73
	adc ($A9.b),Y		; 71 A9
	sbc $62E9F0.l,X		; FF F0 E9 62
	cpx #$80B1.w		; E0 B1 80
	pha		; 48
	bmi -106.b		; 30 96
	sei		; 78
	dey		; 88
	sbc ($0E.b),Y		; F1 0E
	adc ($EF.b),Y		; 71 EF
	sbc $16E98E.l,X		; FF 8E E9 16
	cpx #$D21F.w		; E0 1F D2
	xba		; EB
	sbc $567C9C.l,X		; FF 9C 7C 56
	asl $6D.b		; 06 6D
	jsr $2060.w		; 20 60 20
	adc $36D628.l,X		; 7F 28 D6 36
	asl $2129.w		; 0E 29 21
	clc		; 18
	pld		; 2B
	brk $82.b		; 00 82
	and $F1DD.w,Y		; 39 DD F1
	stz $FEFF.w		; 9C FF FE
	ora #$10FF.w		; 09 FF 10
	bra 109.b		; 80 6D
	adc ($A5.b)		; 72 A5
	asl $32.b		; 06 32
	ora $FF.b,S		; 03 FF
	sbc $1601F9.l,X		; FF F9 01 16
	cop $C8.b		; 02 C8
	cmp ($81.b,X)		; C1 81
	sta $82.b,S		; 83 82
	.db $82, $80, $FF		; 82 80 FF
	sed		; F8
	sbc $FFFFFC.l,X		; FF FC FF FF
	sbc $FDFFFE.l,X		; FF FE FF FD
	sbc $7CFF3E.l,X		; FF 3E FF 7C
	sbc $23FF7D.l,X		; FF 7D FF 23
	asl $1F.b,X		; 16 1F
	stx $8A9B.w		; 8E 9B 8A
	sbc $8ADB01.l,X		; FF 01 DB 8A
	cmp $9E6F8E.l,X		; DF 8E 6F 9E
	phb		; 8B
	inc $7E6B.w,X		; FE 6B 7E
	ror $F8A2.w		; 6E A2 F8
	ror A		; 6A
	tsb $FE.b		; 04 FE
	inc $FEE9.w,X		; FE E9 FE
	bra  -4.b		; 80 FC
	stx $87FF.w		; 8E FF 87
	eor $F45D8D.l,X		; 5F 8D 5D F4
	bit $2AE0.w		; 2C E0 2A
	dec $FC27.w		; CE 27 FC
	ora $E4.b,X		; 15 E4
	phk		; 4B
	beq -61.b		; F0 C3
	php		; 08
	ror $3F02.w		; 6E 02 3F
	ora $1F.b,S		; 03 1F
	ora [$1F.b]		; 07 1F
	jsr ($F803.w,X)		; FC 03 F8
	sbc $07FE0F.l,X		; FF 0F FE 07
	jmp $EAF6.w		; 4C F6 EA
	jsr ($601E.w,X)		; FC 1E 60
	eor [$60.b],Y		; 57 60
	tas		; 1B
	pld		; 2B
	lda $39A8FE.l,X		; BF FE A8 39
	asl $9B.b,X		; 16 9B
	pha		; 48
	asl $A808.w		; 0E 08 A8
	nop		; EA
	sbc [$D1.b],Y		; F7 D1
	dex		; CA
	sbc $C8.b,X		; F5 C8
	sbc [$E0.b],Y		; F7 E0
	sbc $F1FF7F.l,X		; FF 7F FF F1
	sbc $200004.l,X		; FF 04 00 20
	brk $98.b		; 00 98
	rts		; 60

	adc $C0.b,S		; 63 C0
	sta $21C7.w,X		; 9D C7 21
	cmp $FC280B.l,X		; DF 0B 28 FC
	dey		; 88
	pea $E0CF.w		; F4 CF E0
	ora $06EE.w		; 0D EE 06
	stx $9C.b		; 86 9C
	jmp $87FF94.l		; 5C 94 FF 87
	mvn $C7,$47		; 54 47 C7
	ora ($13.b,S),Y		; 13 13
	jsl $006002.l		; 22 02 60 00
	ora ($81.b,X)		; 01 81
	adc $1F6E.w,Y		; 79 6E 1F
	ora ($FF.b,X)		; 01 FF
	pld		; 2B
	sbc $ECFF38.l,X		; FF 38 FF EC
	lsr $3EFF.w,X		; 5E FF 3E
	jsr ($5D58.w,X)		; FC 58 5D
	ply		; 7A
	lda #$F7EA.w		; A9 EA F7
	eor $B4B3F4.l		; 4F F4 B3 B4
	ora $E08718.l		; 0F 18 87 E0
	cmp [$C8.b],Y		; D7 C8
	ora $106E30.l,X		; 1F 30 6E 10
	pla		; 68
	cpy $F1.b		; C4 F1
	rti		; 40

	sbc $E0F8AF.l,X		; FF AF F8 E0
	beq  32.b		; F0 20
	beq -64.b		; F0 C0
	cpx #$0DF7.w		; E0 F7 0D
	xce		; FB
	asl $FD.b		; 06 FD
	ora $04.b,S		; 03 04
	cpx $F5.b		; E4 F5
	sbc $03E322.l,X		; FF 22 E3 03
	and #$FFE3.w		; 29 E3 FF
	sed		; F8
	asl A		; 0A
	cmp ($D0.b),Y		; D1 D0
	ora $14.b,X		; 15 14
	iny		; C8
	bit #$D84A.w		; 89 4A D8
	dec $36.b,X		; D6 36
	sbc $F63F.w,X		; FD 3F F6
	asl $D92E.w		; 0E 2E D9
	sbc $6BFF2F.l,X		; FF 2F FF 6B
	sbc $077F37.l,X		; FF 37 7F 07
	and $FD0F01.l,X		; 3F 01 0F FD
	ora $3048D6.l		; 0F D6 48 30
	ldy $2760.w,X		; BC 60 27
	sed		; F8
	pha		; 48
	bcs  10.b		; B0 0A
	ora $1B.b		; 05 1B
	sbc $C342F4.l,X		; FF F4 42 C3
	sta $D8.b,S		; 83 D8
	ora $B13C.w		; 0D 3C B1
	ora ($01.b),Y		; 11 01
	sep #$02		; E2 02
	ora $FF0D.w		; 0D 0D FF
	sbc $1F1D.w,X		; FD 1D 1F
	and ($3F.b)		; 32 3F
	phd		; 0B
	bit $706F.w		; 2C 6F 70
	and $F2C6C0.l,X		; 3F C0 C6 F2
	sbc ($FF.b)		; F2 FF
	cpx #$37FE.w		; E0 FE 37
	jmp ($FCC0.w,X)		; 7C C0 FC
	cpy #$6BF0.w		; C0 F0 6B
	sbc #$EC00.w		; E9 00 EC
	cmp $C0BFE0.l,X		; DF E0 BF C0
	adc $067C9D.l,X		; 7F 9D 7C 06
	cmp ($FE.b),Y		; D1 FE
	jsr ($C080.w,X)		; FC 80 C0
	nop		; EA
	sbc $AA09F8.l,X		; FF F8 09 AA
	eor $55.b,X		; 55 55
	tax		; AA
	adc ($F8.b)		; 72 F8
	jsr ($D83F.w,X)		; FC 3F D8
	ora [$FA.b],Y		; 17 FA
	sbc $07EEA4.l		; EF A4 EE 07
	sbc ($03.b,S),Y		; F3 03
	sta $02FB00.l		; 8F 00 FB 02
	sbc ($01.b),Y		; F1 01
	sbc $07ABE1.l		; EF E1 AB 07
	sbc ($27.b),Y		; F1 27
	jsr ($FEF0.w,X)		; FC F0 FE
	asl $F25B.w		; 0E 5B F2
	sbc $ECFFAA.l,X		; FF AA FF EC
	inc $FC55.w,X		; FE 55 FC
	sbc $17CB.w		; ED CB 17
	cmp $24.b,S		; C3 24
	sed		; F8
	asl A		; 0A
	cpx #$D800.w		; E0 00 D8
	cpx #$AAF2.w		; E0 F2 AA
	ror $E0FC.w,X		; 7E FC E0
	sed		; F8
	asl A		; 0A
	asl A		; 0A
	dec $20.b,X		; D6 20
	iny		; C8
	trb $99.b		; 14 99
	bne   9.b		; D0 09
	sbc $EE0DF8.l,X		; FF F8 0D EE
	asl $02E7.w		; 0E E7 02
	cmp $F438.w,Y		; D9 38 F4
	ply		; 7A
	cop $FD.b		; 02 FD
	brk $FE.b		; 00 FE
	xce		; FB
	tsx		; BA
	sbc ($F0.b)		; F2 F0
	sbc $F80007.l,X		; FF 07 00 F8
	sbc $FEFE.w,X		; FD FE FE
	tas		; 1B
	.db $82, $FE, $00		; 82 FE 00
	jsr ($A47C.w,X)		; FC 7C A4
	eor $2A.b,S		; 43 2A
	rol A		; 2A
	cmp $15.b,X		; D5 15
	beq -61.b		; F0 C3
	ldy #$4027.w		; A0 27 40
	beq -96.b		; F0 A0
	sta $5510.w,Y		; 99 10 55
	rol $7F00.w		; 2E 00 7F
	cpy $00D5.w		; CC D5 00
	nop		; EA
	brk $BF.b		; 00 BF
	rti		; 40

	cmp $E0D220.l,X		; DF 20 D2 E0
	plp		; 28
	bpl  35.b		; 10 23
	jsr ($FC92.w,X)		; FC 92 FC
	ora $E0.b,S		; 03 E0
	and #$FCE8.w		; 29 E8 FC
	bcc  -2.b		; 90 FE
	cpx #$0DF8.w		; E0 F8 0D
	sbc $0FF8E0.l,X		; FF E0 F8 0F
	inc $09F8.w,X		; FE F8 09
	lda $800F07.l,X		; BF 07 0F 80
	eor $ACBF40.l,X		; 5F 40 BF AC
	sbc $7F09F8.l,X		; FF F8 09 7F
	sbc $F45FBF.l,X		; FF BF 5F F4
	tsb $09EF.w		; 0C EF 09
	sbc [$06.b],Y		; F7 06
	sbc $F8D8.w,Y		; F9 D8 F8
	phd		; 0B
	rts		; 60

	rti		; 40

	sed		; F8
	phd		; 0B
	nop		; EA
	beq  23.b		; F0 17
	sta [$33.b],Y		; 97 33
	trb $C7.b		; 14 C7
	ora [$39.b]		; 07 39
	cmp $C8F7FE.l		; CF FE F7 C8
	dec $0BF8.w,X		; DE F8 0B
	and $C09254.l,X		; 3F 54 92 C0
	sbc $78.b		; E5 78
	dec $2207.w		; CE 07 22
	sbc ($B8.b),Y		; F1 B8
	sed		; F8
	ora $F39E.w		; 0D 9E F3
	sbc ($57.b,X)		; E1 57
	adc ($FC.b)		; 72 FC
	jsr ($0FF7.w,X)		; FC F7 0F
	stz $6BF8.w		; 9C F8 6B
	beq  43.b		; F0 2B
	sbc ($FE.b,X)		; E1 FE
	sed		; F8
	ora #$50FB.w		; 09 FB 50
	and ($E2.b,X)		; 21 E2
	lda $BFFEE0.l,X		; BF E0 FE BF
	cpy #$7CFB.w		; C0 FB 7C
	ldy $98F3.w,X		; BC F3 98
	sbc $FE5A0E.l		; EF 0E 5A FE
	cpx #$E096.w		; E0 96 E0
	inc $FCEE.w,X		; FE EE FC
	and $F5D7F0.l,X		; 3F F0 D7 F5
	adc $E0FF00.l		; 6F 00 FF E0
	sed		; F8
	tsb $F8FE.w		; 0C FE F8
	ora ($9F.b),Y		; 11 9F
	jsr $00BF.w		; 20 BF 00
	eor $E600.w,Y		; 59 00 E6
	inc $09F8.w		; EE F8 09
	cmp $FEDFEC.l,X		; DF EC DF FE
	inc $FE.b		; E6 FE
	cpy #$7F0D.w		; C0 0D 7F
	brk $DF.b		; 00 DF
	brk $A4.b		; 00 A4
	brk $DB.b		; 00 DB
	rti		; 40

	beq  11.b		; F0 0B
	sbc $FF3C07.l		; EF 07 3C FF
	stp		; DB
	sbc $C0DEE7.l,X		; FF E7 DE C0
	ora $0037.w		; 0D 37 00
	inx		; E8
	brk $F9.b		; 00 F9
	lsr $3A3F.w		; 4E 3F 3A
	sbc $FF3FFE.l,X		; FF FE 3F FF
	cmp $1AF7FF.l		; CF FF F7 1A
	sty $F8.b,X		; 94 F8
	asl A		; 0A
	and $C5A800.l,X		; 3F 00 A8 C5
	sbc ($A0.b),Y		; F1 A0
	cpy #$7F1B.w		; C0 1B 7F
	cpy #$E012.w		; C0 12 E0
	sed		; F8
	tsb $E01C.w		; 0C 1C E0
	sed		; F8
	ora $786AEC.l		; 0F EC 6A 78
	sbc $F8C0.w,X		; FD C0 F8
	ora $FFEB4A.l		; 0F 4A EB FF
	sbc $EC78.w,X		; FD 78 EC
	sbc ($F5.b)		; F2 F5
	xba		; EB
	ora $85.b,S		; 03 85
	xba		; EB
	jmp.w [$30FE]		; DC FE 30
	lda $086D.w,Y		; B9 6D 08
	xce		; FB
	pea $FFDC.w		; F4 DC FF
	cpx #$55F2.w		; E0 F2 55
	lda $AAD5EA.l,X		; BF EA D5 AA
	jmp ($8BFF.w,X)		; 7C FF 8B
	ora [$FE.b]		; 07 FE
	txy		; 9B
	ldx $F662.w,Y		; BE 62 F6
	cpx #$C1FF.w		; E0 FF C1
	nop		; EA
	sta $0F.b		; 85 0F
	rol A		; 2A
	plx		; FA
	jmp ($F87C.w,X)		; 7C 7C F8
	brk $C9.b		; 00 C9
	cpx #$B6FF.w		; E0 FF B6
	cmp ($E0.b,X)		; C1 E0
	sed		; F8
	phd		; 0B
	ldy $FC2E.w,X		; BC 2E FC
	jsr $473F.w		; 20 3F 47
	eor [$9A.b]		; 47 9A
	ldx $F476.w,Y		; BE 76 F4
	cmp [$B8.b]		; C7 B8
	cpx #$0BF8.w		; E0 F8 0B
	mvn $F5,$FD		; 54 FD F5
	jsr ($BF7A.w,X)		; FC 7A BF
	rts		; 60

	beq  12.b		; F0 0C
	rts		; 60

	cpx #$5A0E.w		; E0 0E 5A
	beq  21.b		; F0 15
	eor $00CF00.l,X		; 5F 00 CF 00
	adc $806DAC.l		; 6F AC 6D 80
	ora ($E1.b,S),Y		; 13 E1
	tsb $A6.b		; 04 A6
	inc $FCBF.w		; EE BF FC
	sbc ($E0.b,S),Y		; F3 E0
.ACCU 8
.INDEX 8
	sep #$BF		; E2 BF
	inc $F8DC.w,X		; FE DC F8
	ora #$CF.b		; 09 CF
	cpy #$B7.b		; C0 B7
	jsr $805B.w		; 20 5B 80
	cop $F8.b		; 02 F8
	asl A		; 0A
	ror $E7F2.w,X		; 7E F2 E7
	plx		; FA
	ora [$F5.b]		; 07 F5
	ora [$FF.b]		; 07 FF
	asl A		; 0A
	plx		; FA
	ora $DF.b,S		; 03 DF
	ora ($A5.b,X)		; 01 A5
	clc		; 18
	sta ($3E.b,X)		; 81 3E
	bra 106.b		; 80 6A
	cmp ($40.b,X)		; C1 40
	xba		; EB
	sbc $7F.b,X		; F5 7F
	iny		; C8
	cpx #$FC.b		; E0 FC
	inc $40.b,X		; F6 40
	cpx $54.b		; E4 54
	jsr ($FAFB.w,X)		; FC FB FA
	sbc [$64.b]		; E7 64
	adc $40B707.l,X		; 7F 07 B7 40
	adc $FD22E8.l,X		; 7F E8 22 FD
	ora $FB.b,S		; 03 FB
	tsb $E7.b		; 04 E7
	clc		; 18
	sed		; F8
	lda ($FB.b)		; B2 FB
	cpx #$FC.b		; E0 FC
	and $BF.b,X		; 35 BF
	ror $C73F.w,X		; 7E 3F C7
	eor [$3B.b]		; 47 3B
	phd		; 0B
	cmp $5E05.w		; CD 05 5E
	sbc $22.b,S		; E3 22
	jsr ($FB38.w,X)		; FC 38 FB
	cpy $FD.b		; C4 FD
	sbc ($F0.b)		; F2 F0
	lda $E600B6.l		; AF B6 00 E6
	jsr ($F0FC.w,X)		; FC FC F0
	beq -17.b		; F0 EF
	cpy #$9F.b		; C0 9F
	sei		; 78
	cmp $1670F5.l,X		; DF F5 70 16
	cmp $D407.w,Y		; D9 07 D4
.ACCU 16
	rep #$E0		; C2 E0
	inc $3F3F.w,X		; FE 3F 3F
	eor $AF1FFF.l,X		; 5F FF 1F AF
	and $E0F57F.l		; 2F 7F F5 E0
	beq   9.b		; F0 09
	cmp $A0DF20.l,X		; DF 20 DF A0
	sbc $D8C0D0.l		; EF D0 C0 D8
	ora $10B090.l		; 0F 90 B0 10
	cmp ($D8.b,X)		; C1 D8
	ora $16FF.w,X		; 1D FF 16
	stp		; DB
	ora [$E0.b]		; 07 E0
	ora $F8.b		; 05 F8
	cpx #$F8.b		; E0 F8
	tsb $E0F9.w		; 0C F9 E0
	sed		; F8
	ora $F803.w		; 0D 03 F8
	ora ($FC.b,X)		; 01 FC
	inc $41F5.w,X		; FE F5 41
	cmp ($A1.b,S),Y		; D3 A1
	cpy #$F8.b		; C0 F8
	asl $E4.b,X		; 16 E4
	nop		; EA
	cmp $0B00.w		; CD 00 0B
	and ($BA.b),Y		; 31 BA
	stz $AC.b,X		; 74 AC
	lda $F8.b,X		; B5 F8
	inx		; E8
	sbc ($A6.b,S),Y		; F3 A6
	sbc ($E0.b)		; F2 E0
	sbc $BF.b,X		; F5 BF
	and [$BB.b],Y		; 37 BB
	jsr ($DF80.w,X)		; FC 80 DF
	brk $97.b		; 00 97
	ldy #$6F.b		; A0 6F
	bra  47.b		; 80 2F
	cpy #$EA.b		; C0 EA
	stp		; DB
	sbc $FFEF24.l,X		; FF 24 EF FF
	cmp ($20.b,X)		; C1 20
	sbc #$F2F7.w		; E9 F7 F2
	ora ($99.b)		; 12 99
	ora #$003A.w		; 09 3A 00
	sbc $B801.w,X		; FD 01 B8
	sta $5FFC.w,X		; 9D FC 5F
	sbc $CDF2.w,X		; FD F2 CD
	sbc $FEC6.w,Y		; F9 C6 FE
	lda $DB42.w,X		; BD 42 DB
	ldy #$F4.b		; A0 F4
	ora $4959F3.l,X		; 1F F3 59 49
	sta $FAFA01.l		; 8F 01 FA FA
	ora ($C9.b,X)		; 01 C9
	cmp #$F610.w		; C9 10 F6
	eor $BFA6.w,Y		; 59 A6 BF
	bvs -96.b		; 70 A0
	cmp $60.b,X		; D5 60
	cmp $76C8C8.l,X		; DF C8 C8 76
	xce		; FB
	plx		; FA
	and ($1B.b)		; 32 1B
	ora ($F0.b,X)		; 01 F0
	inx		; E8
	ora #$37C8.w		; 09 C8 37
	inc $A089.w,X		; FE 89 A0
	sbc ($E0.b),Y		; F1 E0
	sbc $687070.l,X		; FF 70 70 68
	xce		; FB
	xba		; EB
	clc		; 18
	dey		; 88
	php		; 08
	cpx #$F8.b		; E0 F8
	ora #$8F70.w		; 09 70 8F
	sei		; 78
	sta [$F8.b]		; 87 F8
	adc [$20.b],Y		; 77 20
	cld		; D8
	ora $0FE8B0.l		; 0F B0 E8 0F
	and [$F0.b]		; 27 F0
	ora $C0.b,X		; 15 C0
	pha		; 48
	ror $80.b,X		; 76 80
	ora $0FE0.w,Y		; 19 E0 0F
	eor ($A2.b,X)		; 41 A2
	brk $FC.b		; 00 FC
	jsr ($48BF.w,X)		; FC BF 48
	ldy $0EE0.w,X		; BC E0 0E
	adc [$00.b]		; 67 00
	stz $1700.w		; 9C 00 17
	cpx #$05.b		; E0 05
	sbc ($09.b,S),Y		; F3 09
	beq   6.b		; F0 06
	eor $F8.b,X		; 55 F8
	ldy #$EC.b		; A0 EC
	ora $D8DAA6.l		; 0F A6 DA D8
	xba		; EB
	bvs -11.b		; 70 F5
	sbc $807FBE.l,X		; FF BE 7F 80
	bra -41.b		; 80 D7
	sta $40.b,S		; 83 40
	cpy #$50.b		; C0 50
	bmi -92.b		; 30 A4
	sbc $C099A2.l		; EF A2 99 C0
	and $A8D6F0.l,X		; 3F F0 D6 A8
	lda $FDE0.w,X		; BD E0 FD
	sbc $FFD410.l		; EF 10 D4 FF
	jsr ($46E1.w,X)		; FC E1 46
	inc $F4.b,X		; F6 F4
	brk $FB.b		; 00 FB
	cpx #$EC.b		; E0 EC
.ACCU 8
	sep #$A2		; E2 A2
	tsb $E0.b		; 04 E0
	sbc $FBFC.w,X		; FD FC FB
	tax		; AA
	sty $A0.b		; 84 A0
	ora #$00.b		; 09 00
	lda $612B.w,X		; BD 2B 61
	and ($4B.b,X)		; 21 4B
	lda $7E00.w,Y		; B9 00 7E
	sta ($CF.b,X)		; 81 CF
	dec $9EE1.w		; CE E1 9E
	.db $82, $E3, $E0		; 82 E3 E0
	sbc $8AAABC.l,X		; FF BC AA 8A
	bit $0E1C.w,X		; 3C 1C 0E
	ora ($E7.b,X)		; 01 E7
	lda [$CA.b]		; A7 CA
	lda #$84.b		; A9 84
	sbc ($A8.b,X)		; E1 A8
	cmp $AABB.w,Y		; D9 BB AA
	bmi -56.b		; 30 C8
	phd		; 0B
	sec		; 38
	sed		; F8
	sta $F80DC8.l		; 8F C8 0D F8
	ora [$4F.b]		; 07 4F
	ldy #$18.b		; A0 18
	sbc [$D0.b],Y		; F7 D0
	ora [$E4.b],Y		; 17 E4
	inx		; E8
	ora ($7E.b)		; 12 7E
	lda $AA.b,S		; A3 AA
	eor $E0.b,X		; 55 E0
	sed		; F8
	ora $F8DB.w		; 0D DB F8
	tsb $F8E0.w		; 0C E0 F8
	bpl  50.b		; 10 32
	ldx #$FF.b		; A2 FF
	sed		; F8
	tsb $E0C0.w		; 0C C0 E0
	sed		; F8
	ora $10F89E.l		; 0F 9E F8 10
	lsr $0F98.w,X		; 5E 98 0F
	eor [$B7.b],Y		; 57 B7
	sbc $D51BD0.l,X		; FF D0 1B D5
	rol A		; 2A
	cpx #$F8.b		; E0 F8
	ora $F89E.w,X		; 1D 9E F8
	trb $FE.b		; 14 FE
	sed		; F8
	tsb $AA55.w		; 0C 55 AA
	cpx #$F8.b		; E0 F8
	ora $3501.w,Y		; 19 01 35
.ACCU 16
.INDEX 16
	rep #$3B		; C2 3B
	lda $0B03.w,Y		; B9 03 0B
	tsx		; BA
	sbc $FFFEFF.l,X		; FF FF FE FF
	inx		; E8
	sei		; 78
	sbc $E08783.l,X		; FF 83 87 E0
	ora $C05FE0.l,X		; 1F E0 5F C0
	lda $80FF80.l,X		; BF 80 FF 80
	adc $FAA3FE.l,X		; 7F FE A3 FA
	nop		; EA
	sbc $BF.b		; E5 BF
	adc $FDBFFF.l,X		; 7F FF BF FD
	trb $06D3.w		; 1C D3 06
	cmp ($FB.b),Y		; D1 FB
	sbc $6A4134.l,X		; FF 34 41 6A
	sbc $CBF50A.l,X		; FF 0A F5 CB
	txa		; 8A
	sbc $D96E07.l,X		; FF 07 6E D9
	sbc $5E1D.w,X		; FD 1D 5E
	bne -38.b		; D0 DA
	asl $9F9B.w,X		; 1E 9B 9F
	cpx #$FCCB.w		; E0 CB FC
	cmp $D432FF.l		; CF FF 32 D4
	ldy $5F.b		; A4 5F
	tax		; AA
	mvn $30,$C4		; 54 C4 30
	brk $CE.b		; 00 CE
	cmp ($7D.b,X)		; C1 7D
	sed		; F8
	asl A		; 0A
	inc $33.b,X		; F6 33
	plb		; AB
	pea $AAB7.w		; F4 B7 AA
	ldy $EE.b,X		; B4 EE
	bit $E0C0.w,X		; 3C C0 E0
	pei ($DA.b)		; D4 DA
	sbc ($E0.b,S),Y		; F3 E0
	inc $CA20.w,X		; FE 20 CA
	stz $09F8.w,X		; 9E F8 09
	adc $0DE9.w,Y		; 79 E9 0D
	and #$F190.w		; 29 90 F1
	jsr ($D1A7.w,X)		; FC A7 D1
	ora $A60157.l,X		; 1F 57 01 A6
	sbc ($92.b,S),Y		; F3 92
	bpl -27.b		; 10 E5
	dec $BC59.w,X		; DE 59 BC
	sbc $BFFAF0.l		; EF F0 FA BF
	stz $D5.b		; 64 D5
	sta $1BF3.w,X		; 9D F3 1B
	and $FA0FF5.l,X		; 3F F5 0F FA
	sed		; F8
	and $2A0AF7.l		; 2F F7 0A 2A
	brk $FF.b		; 00 FF
	ldy $31F1.w,X		; BC F1 31
	jsr ($000E.w,X)		; FC 0E 00
	ora $01.b		; 05 01
	cmp [$C7.b],Y		; D7 C7
	sbc $7E1F.w,X		; FD 1F 7E
	trb $50FF.w		; 1C FF 50
	lda $0581AA.l		; AF AA 81 05
	sty $F2FF.w		; 8C FF F2
	and $F878CF.l,X		; 3F CF 78 F8
.ACCU 16
	rep #$60		; C2 60
	bcs -81.b		; B0 AF
	lda $360555.l		; AF 55 05 36
.ACCU 8
.INDEX 8
	sep #$B7		; E2 B7
	sbc ($EF.b),Y		; F1 EF
	jsl $97A7F0.l		; 22 F0 A7 97
	eor ($0E.b,X)		; 41 0E
	xba		; EB
	sbc ($A0.b),Y		; F1 A0
	sbc $A1B97E.l,X		; FF 7E B9 A1
	trb $841E.w		; 1C 1E 84
	cmp $FF.b,S		; C3 FF
	php		; 08
	ldy $5F5F.w		; AC 5F 5F
	tax		; AA
	tax		; AA
	cpx #$DF.b		; E0 DF
	plb		; AB
	dec $19E6.w,X		; DE E6 19
	php		; 08
	bit $17.b,X		; 34 17
	sbc [$A8.b]		; E7 A8
	eor [$6A.b],Y		; 57 6A
	sbc ($BD.b)		; F2 BD
	lda $88A7BF.l,X		; BF BF A7 88
	cmp $F0CE.w,Y		; D9 CE F0
	sta $58F6E0.l		; 8F E0 F6 58
	brk $E7.b		; 00 E7
	brk $31.b		; 00 31
	and ($FF.b),Y		; 31 FF
	tsa		; 3B
	dec $07F2.w,X		; DE F2 07
	sed		; F8
	eor $12FFA5.l,X		; 5F A5 FF 12
	beq -81.b		; F0 AF
	cpx #$5F.b		; E0 5F
	bne -92.b		; D0 A4
	sbc $F57CFE.l,X		; FF FE 7C F5
	adc $E1ED.w,Y		; 79 ED E1
	eor $D6BF1F.l,X		; 5F 1F BF D6
	sbc $F2AC.w		; ED AC F2
	jmp ($1BE8.w,X)		; 7C E8 1B
	pea $4B43.w		; F4 43 4B
	xce		; FB
	cld		; D8
	sta [$60.b]		; 87 60
	sty $A5.b,X		; 94 A5
	inc $0F3F.w,X		; FE 3F 0F
	stz $0DE8.w		; 9C E8 0D
	sta [$06.b]		; 87 06
	and $C11E0F.l		; 2F 0F 1E C1
	ora $02F0.w		; 0D F0 02
	jsr ($E03D.w,X)		; FC 3D E0
	jsr ($F8F9.w,X)		; FC F9 F8
	inc $07EC.w,X		; FE EC 07
	tsb $C0FC.w		; 0C FC C0
	asl A		; 0A
	cpy #$EE.b		; C0 EE
	tsx		; BA
	tya		; 98
	and $08F707.l,X		; 3F 07 F7 08
	dec $FDC5.w,X		; DE C5 FD
	jsr ($CEDA.w,X)		; FC DA CE
	sta ($FF.b,X)		; 81 FF
	sed		; F8
	cld		; D8
	tsx		; BA
	inc $1C1F.w,X		; FE 1F 1C
	sbc $F7EF63.l		; EF 63 EF F7
	inc $F310.w,X		; FE 10 F3
	jsr $40EF.w		; 20 EF 40
	cmp $00F5.w,Y		; D9 F5 00
	cpx #$07.b		; E0 07
	ora $0F8111.l,X		; 1F 11 81 0F
	ora ($F0.b,X)		; 01 F0
	sbc $1F.b,X		; F5 1F
	txs		; 9A
	ora $FDFDFE.l,X		; 1F FE FD FD
	plx		; FA
	cpy #$D1.b		; C0 D1
	beq -87.b		; F0 A9
	rol $01.b		; 26 01
	sbc $0196FF.l,X		; FF FF 96 01
	.db $42, $08		; 42 08
	and ($0E.b,X)		; 21 0E
	jsr $0013.w		; 20 13 00
	sbc $FCFF.w,X		; FD FF FC
	sbc $E707.w,Y		; F9 07 E7
	stp		; DB
	sta $EBDFFE.l,X		; 9F FE DF EB
	cmp $DE3FBD.l,X		; DF BD 3F DE
	cpy #$72.b		; C0 72
	brk $81.b		; 00 81
	rts		; 60

	php		; 08
	cpy #$2F.b		; C0 2F
	cpy #$20.b		; C0 20
	cmp [$90.b]		; C7 90
	eor $8103C0.l		; 4F C0 03 81
	stz $F1CA.w		; 9C CA F1
	lda $EFFEFF.l,X		; BF FF FE EF
	sbc [$EF.b],Y		; F7 EF
	cmp $9EEFDF.l,X		; DF DF EF 9E
	jsr ($3C03.w,X)		; FC 03 3C
	brk $3E.b		; 00 3E
	bra 121.b		; 80 79
	brk $F0.b		; 00 F0
	lda $1AE477.l		; AF 77 E4 1A
	cpx #$5C.b		; E0 5C
	tya		; 98
	lda ($20.b,S),Y		; B3 20
	and $F1EBFC.l,X		; 3F FC EB F1
	beq -31.b		; F0 E1
	phx		; DA
	pea $E3B4.w		; F4 B4 E3
	sbc $0728CF.l,X		; FF CF 28 07
	jsl $BF815A.l		; 22 5A 81 BF
	dec $19.b		; C6 19
	cpy #$2C.b		; C0 2C
	cmp $B8.b,S		; C3 B8
	ora [$D0.b]		; 07 D0
	stx $91.b,Y		; 96 91
	.db $82, $B9, $BF		; 82 B9 BF
	inc $AF6A.w,X		; FE 6A AF
	sbc [$78.b]		; E7 78
	tyx		; BB
	and $ED4892.l		; 2F 92 48 ED
	ora $C2.b,X		; 15 C2
	cmp ($7F.b),Y		; D1 7F
	adc $C28A83.l,X		; 7F 83 8A C2
	cmp $FEFFB5.l,X		; DF B5 FF FE
	ora [$7F.b]		; 07 7F
	bra -125.b		; 80 83
	jmp ($B3D7.w,X)		; 7C D7 B3
	jsr ($0C70.w,X)		; FC 70 0C
	lda #$84.b		; A9 84
	ply		; 7A
	bra  10.b		; 80 0A
	cmp [$00.b]		; C7 00
	iny		; C8
	phd		; 0B
	inc A		; 1A
	sbc ($C8.b),Y		; F1 C8
	pea $F80C.w		; F4 0C F8
	ora [$0F.b]		; 07 0F
	jsr $186B.w		; 20 6B 18
	sed		; F8
	sed		; F8
	cmp [$90.b]		; C7 90
	nop		; EA
	sbc $EA01FE.l,X		; FF FE 01 EA
	dec $38.b		; C6 38
	lda $FA4CEB.l,X		; BF EB 4C FA
	brk $F0.b		; 00 F0
	ora [$C0.b],Y		; 17 C0
	ora ($9A.b,S),Y		; 13 9A
	beq -64.b		; F0 C0
	rtl		; 6B

	sta $F15E.w,Y		; 99 5E F1
	sed		; F8
	pld		; 2B
	jsr ($F7FF.w,X)		; FC FF F7
	inx		; E8
	bit $D1.b		; 24 D1
	sed		; F8
	cmp ($A9.b)		; D2 A9
	adc $000730.l,X		; 7F 30 07 00
	tsa		; 3B
	ora $1E80DA.l,X		; 1F DA 80 1E
	adc ($00.b,S),Y		; 73 00
	cpx $B301.w		; EC 01 B3
	cmp [$8C.b]		; C7 8C
	nop		; EA
	cmp $C2ABE4.l		; CF E4 AB C2
	sbc ($8C.b,X)		; E1 8C
	phx		; DA
	cmp #$FF.b		; C9 FF
	sec		; 38
	trb $82E0.w		; 1C E0 82
	ora $C080C3.l,X		; 1F C3 80 C0
	adc $BC8196.l		; 6F 96 81 BC
	sty $FF.b,X		; 94 FF
	cpy #$86.b		; C0 86
	sta $C1C11C.l,X		; 9F 1C C1 C1
	brk $6E.b		; 00 6E
	eor ($58.b,X)		; 41 58
	sta ($61.b,X)		; 81 61
	eor [$C3.b]		; 47 C3
	adc #$78.b		; 69 78
	asl $E6.b,X		; 16 E6
	ora ($04.b,X)		; 01 04
	cmp $E6.b,X		; D5 E6
	jsl $09F03E.l		; 22 3E F0 09
	ldy $73.b		; A4 73
	inc $0BE8.w,X		; FE E8 0B
	ror $1978.w,X		; 7E 78 19
	tsx		; BA
	cmp $E7.b		; C5 E7
	sbc $31D1.w,X		; FD D1 31
	cld		; D8
	ora ($3F.b),Y		; 11 3F
	sbc ($38.b),Y		; F1 38
	lda $7C.b,X		; B5 7C
	bcc -63.b		; 90 C1
	sed		; F8
	phx		; DA
	ora $020E.w		; 0D 0E 02
	sta $FCFCD4.l		; 8F D4 FC FC
	tax		; AA
	adc #$FC.b		; 69 FC
	ora $BE.b,S		; 03 BE
	sbc ($3C.b,X)		; E1 3C
	.db $82, $85, $22		; 82 85 22
	clv		; B8
	sep #$0F		; E2 0F
	ror A		; 6A
	adc $E3B80F.l,X		; 7F 0F B8 E3
	and $5CAF.w,Y		; 39 AF 5C
	ora $F3ECFC.l		; 0F FC EC F3
	beq -23.b		; F0 E9
	nop		; EA
.ACCU 16
.INDEX 16
	rep #$F1		; C2 F1
.INDEX 8
	sep #$1C		; E2 1C
	cpy #$69.b		; C0 69
	adc ($E8.b,X)		; 61 E8
	stz $EC.b		; 64 EC
	pea $E078.w		; F4 78 E0
	tsb $E433.w		; 0C 33 E4
	sbc ($FC.b),Y		; F1 FC
	cmp ($AA.b,X)		; C1 AA
	brk $E0.b		; 00 E0
	eor ($C0.b,X)		; 41 C0
	adc #$C018.w		; 69 18 C0
	adc #$F3FE.w		; 69 FE F3
	inx		; E8
	adc #$0BD7.w		; 69 D7 0B
	cpy #$6A.b		; C0 6A
	stz $F103.w		; 9C 03 F1
	jmp.w [$CA6B]		; DC 6B CA
	sbc #$F00F.w		; E9 0F F0
	bvs -46.b		; 70 D2
	sbc ($2A.b,X)		; E1 2A
	tay		; A8
	php		; 08
	sbc $BB71.w		; ED 71 BB
	wai		; CB
	cpy #$68.b		; C0 68
	asl $ECBE.w		; 0E BE EC
	cmp $C065.w,Y		; D9 65 C0
	tsb $AA92.w		; 0C 92 AA
	adc $80BE74.l		; 6F 74 BE 80
	ora #$05D3.w		; 09 D3 05
	sed		; F8
	ora $691E.w		; 0D 1E 69
	cpx #$F8.b		; E0 F8
	ora $F0E5.w		; 0D E5 F0
	asl $AEA4.w		; 0E A4 AE
	cpx #$68.b		; E0 68
	tsb $A4E0.w		; 0C E0 A4
	cpy $D761.w		; CC 61 D7
	cpx #$FE.b		; E0 FE
	and $FE40C0.l,X		; 3F C0 40 FE
	tay		; A8
	sta ($E1.b)		; 92 E1
	inx		; E8
	asl A		; 0A
	rti		; 40

	cpx #$FE.b		; E0 FE
	rti		; 40

	inc $6860.w,X		; FE 60 68
	phd		; 0B
	rti		; 40

	bit $4A.b		; 24 4A
	ldy #$F8.b		; A0 F8
	phd		; 0B
	rti		; 40

	ldy #$E8.b		; A0 E8
	tsb $4640.w		; 0C 40 46
	beq   9.b		; F0 09
	lda $BA.b,X		; B5 BA
	.db $82, $7F, $D0		; 82 7F D0
	sbc ($60.b),Y		; F1 60
	sed		; F8
	phd		; 0B
	adc $DE79CB.l,X		; 7F CB 79 DE
	dec $EC.b		; C6 EC
	ldy $87.b,X		; B4 87
	ror $41FA.w,X		; 7E FA 41
	.db $42, $F0		; 42 F0
	ora $611A.w		; 0D 1A 61
	asl $F5F5.w,X		; 1E F5 F5
	asl A		; 0A
	txa		; 8A
	adc $0B425F.l,X		; 7F 5F 42 0B
	stz $FF.b		; 64 FF
	cmp $3C.b,S		; C3 3C
	beq  10.b		; F0 0A
	sbc $7FAAC0.l,X		; FF C0 AA 7F
	inc $E201.w,X		; FE 01 E2
	ora $C7D857.l,X		; 1F 57 D8 C7
	pld		; 2B
	adc $78FF.w,Y		; 79 FF 78
	sbc $3D.b,S		; E3 3D
	lda ($06.b),Y		; B1 06
	sbc [$E2.b],Y		; F7 E2
	cpx $ABE9.w		; EC E9 AB
	sbc $5AF85F.l,X		; FF 5F F8 5A
	stx $E6.b,Y		; 96 E6
	sbc $F319.w,X		; FD 19 F3
	cpx #$F3.b		; E0 F3
	stz $E0.b		; 64 E0
	eor $7802.w,X		; 5D 02 78
	sbc $AB.b,X		; F5 AB
	bpl -26.b		; 10 E6
	adc ($1F.b),Y		; 71 1F
	eor [$AA.b]		; 47 AA
	sbc ($C0.b),Y		; F1 C0
	asl A		; 0A
	eor $600B88.l,X		; 5F 88 0B 60
	and $8A2064.l,X		; 3F 64 20 8A
	stz $E06E.w,X		; 9E 6E E0
	txa		; 8A
	asl $57.b,X		; 16 57
	pei ($7C.b)		; D4 7C
	cmp [$E0.b],Y		; D7 E0
	sbc $66.b,S		; E3 66
	pei ($FE.b)		; D4 FE
	sbc $89A6.w,X		; FD A6 89
	phy		; 5A
	sbc $5754FF.l,X		; FF FF 54 57
	sta $EA.b,S		; 83 EA
	inc $6256.w,X		; FE 56 62
	dec $E76A.w,X		; DE 6A E7
	asl $EA08.w,X		; 1E 08 EA
	ldy #$F8.b		; A0 F8
	ora #$FE19.w		; 09 19 FE
	dex		; CA
	cmp ($5A.b),Y		; D1 5A
	sbc $0FF1.w,X		; FD F1 0F
	eor $27BFCA.l		; 4F CA BF 27
	sbc ($93.b)		; F2 93
	cpx #$C0.b		; E0 C0
	pea $0DE4.w		; F4 E4 0D
	bmi -65.b		; 30 BF
	rti		; 40

	rti		; 40

	sbc $D1B648.l,X		; FF 48 B6 D1
	inc $DF.b		; E6 DF
	sta ($B1.b),Y		; 91 B1
	brk $AF.b		; 00 AF
	brk $DF.b		; 00 DF
	jsl $E1507F.l		; 22 7F 50 E1
	sbc [$19.b]		; E7 19
	eor $4FBF20.l,X		; 5F 20 BF 4F
	lda $E2D829.l,X		; BF 29 D8 E2
	sbc $D0.b,S		; E3 D0
	asl A		; 0A
	tay		; A8
	stz $9E.b,X		; 74 9E
	cmp [$E0.b]		; C7 E0
	beq  12.b		; F0 0C
	and ($C0.b),Y		; 31 C0
	ora #$D580.w		; 09 80 D5
	pld		; 2B
	pld		; 2B
	bvc  -3.b		; 50 FD
	adc [$01.b],Y		; 77 01
	inc $FDFF.w		; EE FF FD
	pla		; 68
	.db $82, $64, $83		; 82 64 83
	sbc $63B3.w,X		; FD B3 63
	jmp ($7FEF.w)		; 6C EF 7F
	iny		; C8
	stp		; DB
	bpl  23.b		; 10 17
	bpl  73.b		; 10 49
	adc $1300.w		; 6D 00 13
	tsb $132F.w		; 0C 2F 13
	cmp $EF1F27.l,X		; DF 27 1F EF
	sed		; F8
	and $E77CE4.l		; 2F E4 7C E7
	sbc $87CE7B.l,X		; FF 7B CE 87
	tyx		; BB
	sta ($7B.b,X)		; 81 7B
	cmp $F5A9.w,Y		; D9 A9 F5
	inc $1866.w,X		; FE 66 18
	sta [$7A.b]		; 87 7A
	bmi  -2.b		; 30 FE
	jmp ($ECB4.w,X)		; 7C B4 EC
	ora $76F1.w,Y		; 19 F1 76
	cpx #$6B.b		; E0 6B
	lda $E7C0FF.l,X		; BF FF C0 E7
	ldy #$DB.b		; A0 DB
	bvc  61.b		; 50 3D
	jsr $A21F.w		; 20 1F A2
	ora #$1706.w		; 09 06 17
	ora #$172F.w		; 09 2F 17
	adc $1F5AEF.l		; 6F EF 5A 1F
	cmp $C33F24.l,X		; DF 24 3F C3
	inc $AA.b,X		; F6 AA
	lda $AC0C00.l,X		; BF 00 0C AC
	sbc [$EF.b],Y		; F7 EF
	adc $55DD22.l,X		; 7F 22 DD 55
	tsx		; BA
	brk $96.b		; 00 96
	bvs -77.b		; 70 B3
	adc $E3.b		; 65 E3
	bvs -72.b		; 70 B8
	trb $E0.b		; 14 E0
	tay		; A8
	eor [$FF.b],Y		; 57 FF
	tax		; AA
	eor $62.b,X		; 55 62
	lda $E0.b,X		; B5 E0
	inc $CE1E.w,X		; FE 1E CE
	cpx #$FC.b		; E0 FC
	lsr $FFF1.w,X		; 5E F1 FF
	sta $240978.l,X		; 9F 78 09 24
	cpx #$09.b		; E0 09
	cpx #$FC.b		; E0 FC
	cmp $AF.b,X		; D5 AF
	ldy $D9E1.w		; AC E1 D9
.ACCU 8
.INDEX 8
	sep #$FB		; E2 FB
	bcc  11.b		; 90 0B
	ldy $0AC0.w,X		; BC C0 0A
	ora $1CFCFE.l		; 0F FE FC 1C
	ora $2A.b,S		; 03 2A
	xba		; EB
	lsr $56.b,X		; 56 56
	inc A		; 1A
	cmp $D4.b		; C5 D4
	sbc ($03.b),Y		; F1 03
	dec $FFC1.w		; CE C1 FF
	inc $AAE2.w,X		; FE E2 AA
	eor ($E0.b,S),Y		; 53 E0
	jsr ($D5AD.w,X)		; FC AD D5
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	sei		; 78
	pha		; 48
	asl A		; 0A
	ora ($97.b,X)		; 01 97
	ply		; 7A
	cpy #$F8.b		; C0 F8
	asl A		; 0A
	inc $E9D2.w,X		; FE D2 E9
	inx		; E8
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	sbc $A341.w,X		; FD 41 A3
	sbc [$C0.b]		; E7 C0
	asl $B2.b		; 06 B2
	cmp $D840.w,Y		; D9 40 D8
	ora #$1F.b		; 09 1F
	cmp $AA.b,X		; D5 AA
	tax		; AA
	.db $62, $B2, $60		; 62 B2 60
	beq  11.b		; F0 0B
	trb $E4.b		; 14 E4
	jsr $09D8.w		; 20 D8 09
	stz $0AE8.w,X		; 9E E8 0A
	phb		; 8B
	jsr ($B8FB.w,X)		; FC FB B8
	phd		; 0B
	tyx		; BB
	sei		; 78
	ora $D5EA.w		; 0D EA D5
	sbc #$90.b		; E9 90
	ora $11F8E0.l		; 0F E0 F8 11
	sbc $E052.w		; ED 52 E0
	jsr ($FD03.w,X)		; FC 03 FD
	ora [$4E.b]		; 07 4E
	cmp #$E0.b		; C9 E0
	sed		; F8
	ora #$36.b		; 09 36
	phy		; 5A
	sbc $F4AEFE.l,X		; FF FE AE F4
	adc $CDC4.w,X		; 7D C4 CD
	iny		; C8
	lda [$80.b]		; A7 80
	eor $EFE9A2.l,X		; 5F A2 E9 EF
	rti		; 40

	sbc [$E0.b],Y		; F7 E0
	ora $01DF7F.l		; 0F 7F DF 01
	and $334F03.l,X		; 3F 03 4F 33
	lda $7A7F5F.l,X		; BF 5F 7F 7A
	cmp ($BF.b),Y		; D1 BF
	ora $C00F1F.l,X		; 1F 1F 0F C0
	lda $BE.b		; A5 BE
	sbc $6454.w,Y		; F9 54 64
	cmp $1803.w,Y		; D9 03 18
	php		; 08
	phk		; 4B
	cmp ($85.b)		; D2 85
	plb		; AB
	sta ($FB.b,S),Y		; 93 FB
	ora [$FF.b]		; 07 FF
	lda $8F37CF.l,X		; BF CF 37 8F
	sta [$1D.b]		; 87 1D
	clc		; 18
	and [$20.b],Y		; 37 20
	cmp $40DF40.l		; CF 40 DF 40
	sta $46F780.l		; 8F 80 F7 46
	sbc $A6F418.l,X		; FF 18 F4 A6
.ACCU 8
.INDEX 8
	sep #$3F		; E2 3F
	inc $F318.w,X		; FE 18 F3
	tax		; AA
	rol A		; 2A
	sbc $9AF5.w,X		; FD F5 9A
	ora $EFD5EB.l		; 0F EB D5 EF
	ora [$F8.b]		; 07 F8
	jsr ($7D99.w,X)		; FC 99 7D
.INDEX 16
	rep #$D5		; C2 D5
	brk $FA.b		; 00 FA
	dec A		; 3A
	phx		; DA
	rol $20AA.w,X		; 3E AA 20
	ldy #$1109.w		; A0 09 11
	stz $E30A.w,X		; 9E 0A E3
	ora $81C758.l		; 0F 58 C7 81
	sbc $3DCA7E.l,X		; FF 7E CA 3D
	ldy #$28F5.w		; A0 F5 28
	sbc $4D.b,S		; E3 4D
	bra -128.b		; 80 80
	sbc $2815.w,X		; FD 15 28
	plp		; 28
	jmp.w [$8053]		; DC 53 80
	phx		; DA
	iny		; C8
	cmp #$80.b		; C9 80
	sbc $00EA.w,X		; FD EA 00
	cmp [$80.b],Y		; D7 80
	ora $F8.b		; 05 F8
	sbc $80.b,S		; E3 80
	lda [$90.b],Y		; B7 90
	adc $A0F750.l,X		; 7F 50 F7 A0
	adc $F4EF80.l		; 6F 80 EF F4
	jsr $EC80.w		; 20 80 EC
	adc $07BF0F.l,X		; 7F 0F BF 07
	jsr ($F19A.w,X)		; FC 9A F1
	inx		; E8
	rep #$80		; C2 80
	ror $C09A.w,X		; 7E 9A C0
	tda		; 7B
	plb		; AB
	ora ($20.b,X)		; 01 20
	bra  25.b		; 80 19
	cpx #$0F50.w		; E0 50 0F
	cmp $888E00.l,X		; DF 00 8E 88
	lsr $620E.w,X		; 5E 0E 62
	xce		; FB
	ply		; 7A
	sbc $0EF101.l,X		; FF 01 F1 0E
	cmp $F8FB.w,Y		; D9 FB F8
	beq  15.b		; F0 0F
	sta $FD4118.l		; 8F 18 41 FD
	cop $FB.b		; 02 FB
	tsb $E0.b		; 04 E0
	ora [$F7.b]		; 07 F7
	rts		; 60

	lda $5D.b,S		; A3 5D
	adc [$40.b]		; 67 40
	ora $9A182A.l,X		; 1F 2A 18 9A
	cmp $0FEA36.l,X		; DF 36 EA 0F
	adc $B2CC44.l,X		; 7F 44 CC B2
	sed		; F8
	jsr ($E180.w,X)		; FC 80 E1
	cld		; D8
	ldy #$22E4.w		; A0 E4 22
	sbc ($02.b,S),Y		; F3 02
	sbc [$EB.b],Y		; F7 EB
	sbc $ED05.w,X		; FD 05 ED
	php		; 08
	asl A		; 0A
	sty $7A.b		; 84 7A
	adc #$FA.b		; 69 FA
	xce		; FB
	jsr ($99DE.w,X)		; FC DE 99
	sbc ($7B.b,S),Y		; F3 7B
	bvs 125.b		; 70 7D
	wai		; CB
	sed		; F8
	pha		; 48
	ora $71C600.l		; 0F 00 C6 71
	ldy $87D4.w,X		; BC D4 87
	sbc $5A8083.l,X		; FF 83 80 5A
	lda $BCFDC3.l,X		; BF C3 FD BC
	jsr ($9870.w,X)		; FC 70 98
	ora $7606.w		; 0D 06 76
	cld		; D8
	asl A		; 0A
	ora $2EEF.w		; 0D EF 2E
	cpx $E0.b		; E4 E0
	inc $8701.w,X		; FE 01 87
	dec $A0BB.w		; CE BB A0
	adc $E4.b		; 65 E4
	sed		; F8
	asl A		; 0A
	cmp $30B7EF.l		; CF EF B7 30
	lda $9B7F47.l,X		; BF 47 7F 9B
	cpx #$F9FE.w		; E0 FE F9
	lda $E10F1E.l,X		; BF 1E 0F E1
	bit $F8.b		; 24 F8
	ora $C340.w		; 0D 40 C3
	lda $A87298.l		; AF 98 72 A8
	eor [$9B.b],Y		; 57 9B
	lda ($5F.b,X)		; A1 5F
	eor [$BE.b]		; 47 BE
	and ($A0.b)		; 32 A0
.INDEX 16
	rep #$DB		; C2 DB
	sbc $32A1.w,X		; FD A1 32
	bvs   9.b		; 70 09
	eor $C15656.l		; 4F 56 56 C1
	brk $0A.b		; 00 0A
	jsr ($F895.w,X)		; FC 95 F8
	clc		; 18
	adc $E4A80A.l		; 6F 0A A8 E4
	inc $D26E.w,X		; FE 6E D2
	bit $18EA.w,X		; 3C EA 18
	sbc $AAC12E.l,X		; FF 2E C1 AA
	jsr ($33B2.w,X)		; FC B2 33
	inc $40FF.w,X		; FE FF 40
	nop		; EA
	rol $0BE0.w,X		; 3E E0 0B
	iny		; C8
	lda $01FE.w,Y		; B9 FE 01
	lsr $0B81.w,X		; 5E 81 0B
	adc $EB02F4.l,X		; 7F F4 02 EB
	jsr $09D0.w		; 20 D0 09
	rol $3C.b,X		; 36 3C
	sbc $F7FFC9.l,X		; FF C9 FF F7
	eor $7C2860.l,X		; 5F 60 28 7C
	dey		; 88
	lda $A2B13B.l,X		; BF 3B B1 A2
	phk		; 4B
	brk $97.b		; 00 97
	brk $BE.b		; 00 BE
	plp		; 28
	pla		; 68
	and $E68F.w,Y		; 39 8F E6
	xba		; EB
	inc $B9BB.w,X		; FE BB B9
	rts		; 60

	sbc ($CF.b),Y		; F1 CF
	inc $DA.b,X		; F6 DA
	inc A		; 1A
	jsr $00D2.w		; 20 D2 00
	tsx		; BA
	ora ($F6.b,X)		; 01 F6
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	sbc $D2FC.w,X		; FD FC D2
	lda ($C2.b,X)		; A1 C2
	eor $47.b,X		; 55 47
	ldy #$2AFC.w		; A0 FC 2A
	sta ($0C.b)		; 92 0C
	rti		; 40

	eor $FF.b		; 45 FF
	stx $6D.b		; 86 6D
	cpy #$09D8.w		; C0 D8 09
	cmp $55.b,X		; D5 55
	cpx #$0B80.w		; E0 80 0B
	ror $D0.b,X		; 76 D0
	tsb $F520.w		; 0C 20 F5
	cpx #$FEFE.w		; E0 FE FE
	inc $EAAE.w,X		; FE AE EA
	and $E00CA0.l		; 2F A0 0C E0
	sed		; F8
	asl A		; 0A
	eor $BC.b,X		; 55 BC
	and [$A1.b],Y		; 37 A1
	adc $E2C4.w,Y		; 79 C4 E2
	sed		; F8
	asl A		; 0A
	rti		; 40

	jmp ($BFE0.w,X)		; 7C E0 BF
	dec $F1.b		; C6 F1
	asl A		; 0A
	cmp [$40.b],Y		; D7 40
	dec $FEE0.w,X		; DE E0 FE
	cpy $CD.b		; C4 CD
	inc $E1A1.w,X		; FE A1 E1
	cmp [$24.b],Y		; D7 24
	sbc ($81.b),Y		; F1 81
	cpx #$5709.w		; E0 09 57
	eor $E1.b,X		; 55 E1
	asl $2FDF.w,X		; 1E DF 2F
	rts		; 60

	sbc $BDF298.l,X		; FF 98 F2 BD
	bcc  15.b		; 90 0F
	cpy $F0.b		; C4 F0
	tsb $F8FE.w		; 0C FE F8
	ora $E9BA.w		; 0D BA E9
	eor $55.b,X		; 55 55
	rts		; 60

	cpy #$EA0B.w		; C0 0B EA
	cmp $DFE9.w,Y		; D9 E9 DF
	ldy $CE.b		; A4 CE
	sbc $C00FB0.l,X		; FF B0 0F C0
	sed		; F8
	asl $BEA4.w		; 0E A4 BE
	cpx #$0DF8.w		; E0 F8 0D
	clv		; B8
	plx		; FA
	bit $FB.b		; 24 FB
	brk $65.b		; 00 65
	rts		; 60

	pla		; 68
	asl $84.b,X		; 16 84
	sbc ($3E.b)		; F2 3E
	pea $01F0.w		; F4 F0 01
	inc $F5.b		; E6 F5
	lda $F6EC01.l		; AF 01 EC F6
	cmp ($DE.b)		; D2 DE
	pla		; 68
	phd		; 0B
	cmp $E00778.l,X		; DF 78 07 E0
	ora $7A3FC0.l,X		; 1F C0 3F 7A
	ldy #$FA09.w		; A0 09 FA
	sbc $80B546.l		; EF 46 B5 80
	beq   9.b		; F0 09
	adc $0101ED.l,X		; 7F ED 01 01
	cop $02.b		; 02 02
	asl $04.b		; 06 04
	ora $04.b		; 05 04
	bvc -17.b		; 50 EF
	inc $BFDF.w,X		; FE DF BF
	ora $FC.b,S		; 03 FC
	ora [$F9.b]		; 07 F9
	ora [$FB.b]		; 07 FB
	cpx #$F0FE.w		; E0 FE F0
	beq  12.b		; F0 0C
	tsb $02F6.w		; 0C F6 02
	sbc $F83F.w,Y		; F9 3F F8
	bmi -17.b		; 30 EF
	beq  15.b		; F0 0F
	jsr ($FEE3.w,X)		; FC E3 FE
	sbc $E094.w,Y		; F9 94 E0
	jsr ($5157.w,X)		; FC 57 51
	and $0EBFBF.l		; 2F BF BF 0E
	jmp $203310.l		; 5C 10 33 20
	cmp $FCE080.l,X		; DF 80 E0 FC
	eor $D02FA8.l,X		; 5F A8 2F D0
	eor $DFFDA3.l,X		; 5F A3 FD DF
	clv		; B8
	lda ($3F.b),Y		; B1 3F
	cpx #$D5FC.w		; E0 FC D5
	cmp $C0.b,X		; D5 C0
	rti		; 40

	sbc ($30.b),Y		; F1 30
	inc $EDE0.w,X		; FE E0 ED
	cop $E0.b		; 02 E0
	jsr ($E1E1.w,X)		; FC E1 E1
	cmp $2A.b,X		; D5 2A
	jmp ($0EF1.w)		; 6C F1 0E
	ora $BF6001.l,X		; 1F 01 60 BF
	ldy #$DEDF.w		; A0 DF DE
	eor $809F40.l		; 4F 40 9F 80
	tda		; 7B
	brk $40.b		; 00 40
	adc ($7C.b),Y		; 71 7C
	sec		; 38
	ply		; 7A
	lda $835F4F.l,X		; BF 4F 5F 83
	sta ($3E.b)		; 92 3E
	tay		; A8
	sta [$5A.b]		; 87 5A
	inc $0FD0.w,X		; FE D0 0F
	ldy #$FE1F.w		; A0 1F FE
	sta ($C8.b,X)		; 81 C8
	ora #$889E.w		; 09 9E 88
	ora ($BF.b)		; 12 BF
	lda $0EFDFF.l,X		; BF FF FD 0E
	asl $1816.w		; 0E 16 18
	ora ($10.b),Y		; 11 10
	lda ($F0.b),Y		; B1 F0
	ora #$F10E.w		; 09 0E F1
	asl $1FE1.w,X		; 1E E1 1F
	inc $DF5F.w		; EE 5F DF
	cpx #$09F8.w		; E0 F8 09
	ora ($13.b,S),Y		; 13 13
	ror $D84C.w		; 6E 4C D8
	lda ($D3.b,S),Y		; B3 D3
	inc $13FC.w,X		; FE FC 13
	cpx $917F.w		; EC 7F 91
	bvs -66.b		; 70 BE
	ora [$7D.b]		; 07 7D
	clc		; 18
	bpl -15.b		; 10 F1
	bra -27.b		; 80 E5
	rts		; 60

	sbc ($E4.b)		; F2 E4
	jsr ($E718.w,X)		; FC 18 E7
	sbc $BF0E.w,X		; FD 0E BF
	plx		; FA
	ror $0FFC.w,X		; 7E FC 0F
	php		; 08
	adc $DC70.w,Y		; 79 70 DC
	inc $D8E1.w,X		; FE E1 D8
	stz $C8.b,X		; 74 C8
	sta ($F3.b),Y		; 91 F3
	adc $6DFD83.l,X		; 7F 83 FD 6D
	sbc $C0FA3D.l,X		; FF 3D FA C0
	ora #$8959.w		; 09 59 89
	rol $C0.b,X		; 36 C0
	ora $F8.b		; 05 F8
	rts		; 60

	tya		; 98
	asl A		; 0A
	inc $5E.b		; E6 5E
	bvs  13.b		; 70 0D
	lda ($DC.b)		; B2 DC
	eor [$2B.b],Y		; 57 2B
	.db $82, $7C, $82		; 82 7C 82
	sbc ($3F.b),Y		; F1 3F
	bpl -49.b		; 10 CF
	php		; 08
	sta $614CD1.l,X		; 9F D1 4C 61
	sbc $6017.w,X		; FD 17 60
	beq  11.b		; F0 0B
	rol $A0A1.w		; 2E A1 A0
	rts		; 60

	bvc  48.b		; 50 30
	sta $2A04.w,X		; 9D 04 2A
	cmp ($C0.b,X)		; C1 C0
	jsr ($BF56.w,X)		; FC 56 BF
	dec $E0.b,X		; D6 E0
	ora $D6B1AC.l,X		; 1F AC B1 D6
	eor [$60.b]		; 47 60
	jsr ($0890.w,X)		; FC 90 08
	and $C3.b		; 25 C3
	ora #$0BD7.w		; 09 D7 0B
	ldy $09C0.w,X		; BC C0 09
	sbc $A0C7F8.l,X		; FF F8 C7 A0
	eor ($00.b,S),Y		; 53 00
	sed		; F8
	tsb $0132.w		; 0C 32 01
	tsb $D6.b		; 04 D6
	pla		; 68
	ora $AD56.w		; 0D 56 AD
	stx $50.b,Y		; 96 50
	pha		; 48
	bpl  69.b		; 10 45
	and ($BB.b),Y		; 31 BB
	rts		; 60

	and $E8C936.l		; 2F 36 C9 E8
	jsr ($6F0C.w,X)		; FC 0C 6F
	cpy #$FE09.w		; C0 09 FE
	tsx		; BA
	sbc ($E4.b,X)		; E1 E4
	sty $FF.b,X		; 94 FF
	bmi -64.b		; 30 C0
	jsr $18C4.w		; 20 C4 18
	sbc ($01.b,X)		; E1 01
	cmp ($AA.b),Y		; D1 AA
	inc $FCFC.w,X		; FE FC FC
	inc $6857.w		; EE 57 68
	stz $FF.b		; 64 FF
	sbc $3ECE.w,X		; FD CE 3E
	dex		; CA
	tax		; AA
	php		; 08
	trb $C021.w		; 1C 21 C0
	ora ($41.b)		; 12 41
	stp		; DB
	cli		; 58
	txa		; 8A
	wai		; CB
	lda $80991A.l,X		; BF 1A 99 80
.INDEX 16
	rep #$9B		; C2 9B
	bra  24.b		; 80 18
	clc		; 18
	ora ($82.b)		; 12 82
	jsr $AE1C.w		; 20 1C AE
	cmp $A4F6E0.l,X		; DF E0 F6 A4
	sbc ($FE.b)		; F2 FE
	and $4900.w,Y		; 39 00 49
	jsr $0BF8.w		; 20 F8 0B
	trb $0C.b		; 14 0C
	rti		; 40

	ora ($7E.b,X)		; 01 7E
	pla		; 68
	sed		; F8
	ora #$D7F7.w		; 09 F7 D7
	trb $7FE3.w		; 1C E3 7F
	stz $F8E0.w,X		; 9E E0 F8
	ora #$0707.w		; 09 07 07
	bit $7038.w,X		; 3C 38 70
	bra -96.b		; 80 A0
	ror $2D.b,X		; 76 2D
	cmp ($EB.b),Y		; D1 EB
	tyx		; BB
	sed		; F8
	and $C35EC1.l,X		; 3F C1 5E C3
	beq -67.b		; F0 BD
	inc $E4.b		; E6 E4
	eor $A030.w,Y		; 59 30 A0
	bvs  11.b		; 70 0B
	sbc [$19.b]		; E7 19
	lsr $D6B0.w,X		; 5E B0 D6
	sta $A7E6.w,Y		; 99 E6 A7
	rol $DF20.w		; 2E 20 DF
	iny		; C8
	cmp $A041.w,Y		; D9 41 A0
	ror $3F.b,X		; 76 3F
	tsx		; BA
	dec $8A.b,X		; D6 8A
	sta ($E0.b,S),Y		; 93 E0
	sed		; F8
	ora #$F42A.w		; 09 2A F4
	bvs   0.b		; 70 00
	cmp $89BE.w		; CD BE 89
	sbc $E08F.w,X		; FD 8F E0
	inc $2562.w,X		; FE 62 25
	sbc ($D5.b,X)		; E1 D5
	brk $7D.b		; 00 7D
	and [$01.b]		; 27 01
	cop $03.b		; 02 03
	asl A		; 0A
	iny		; C8
	txy		; 9B
	cpy #$DEFC.w		; C0 FC DE
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	eor $7BE40F.l,X		; 5F 0F E4 7B
	sbc ($00.b)		; F2 00
	cmp $E800.w,Y		; D9 00 E8
	ora [$A0.b]		; 07 A0
	cmp $600F90.l		; CF 90 0F 60
	ldx #$D2.b		; A2 D2
	cmp $0A.b,X		; D5 0A
	ora $DBB3.w,X		; 1D B3 DB
	pld		; 2B
	eor $F30920.l		; 4F 20 09 F3
	adc $844C.w,Y		; 79 4C 84
	inx		; E8
	asl A		; 0A
	ldx $69.b		; A6 69
	cmp ($FF.b)		; D2 FF
	stz $EBF8.w,X		; 9E F8 EB
	sbc $89.b,S		; E3 89
	bit #$9A.b		; 89 9A
	inc A		; 1A
	cmp $56ADB5.l,X		; DF B5 AD 56
	ora ($F3.b),Y		; 11 F3
	inc $CEFE.w,X		; FE FE CE
	stz $F0.b		; 64 F0
	brk $9A.b		; 00 9A
	cmp ($B0.b),Y		; D1 B0
	asl A		; 0A
	tsb $04.b		; 04 04
	and #$29.b		; 29 29
	and $F8FF.w,Y		; 39 FF F8
	and $7F4A.w,Y		; 39 4A 7F
	lda $5BDA.w		; AD DA 5B
	lda $66.b		; A5 66
	cmp $00F0.w,X		; DD F0 00
	and #$00.b		; 29 00
	inc $39FF.w,X		; FE FF 39
	sbc $0202E7.l		; EF E7 02 02
	jsl $6E6E22.l		; 22 22 6E 6E
	eor $FF.b,X		; 55 FF
	sta $FF.b,X		; 95 FF
	ldx #$DD.b		; A2 DD
	ror $7F.b,X		; 76 7F
	sbc $3BC5D9.l,X		; FF D9 C5 3B
	cop $00.b		; 02 00
	jsl $1B6E00.l		; 22 00 6E 1B
	beq  10.b		; F0 0A
	rti		; 40

	rti		; 40

	ldx #$A2.b		; A2 A2
	adc ($D2.b)		; 72 D2
	sbc $D5A68F.l,X		; FF 8F A6 D5
	and $B1DA.w		; 2D DA B1
	stp		; DB
	cmp #$B7.b		; C9 B7
	eor ($AD.b)		; 52 AD
	rti		; 40

	brk $A2.b		; 00 A2
	plx		; FA
	sbc $C21650.l,X		; FF 50 16 C2
	inc $2AFC.w,X		; FE FC 2A
	cmp $FB.b,X		; D5 FB
	eor ($AA.b),Y		; 51 AA
	cmp ($55.b)		; D2 55
	ldy $AA.b		; A4 AA
	mvp $EF,$24		; 44 24 EF
	sbc $65526A.l,X		; FF 6A 52 65
	sta $61.b,X		; 95 61
	bit $0FD8.w		; 2C D8 0F
	stp		; DB
	jmp ($6A9C.w)		; 6C 9C 6A
	plb		; AB
	ora ($5F.b)		; 12 5F
	bmi 117.b		; 30 75
	eor $05A2FF.l,X		; 5F FF A2 05
	sty $9C.b,X		; 94 9C
	lda #$2C.b		; A9 2C
	sta [$20.b]		; 87 20
	ora #$FE.b		; 09 FE
	sbc $A7BD.w,X		; FD BD A7
	lda $5AA6.w		; AD A6 5A
	ldy $FF.b		; A4 FF
	sbc $4994.w,X		; FD 94 49
	lda $4B.b		; A5 4B
	adc $AF.b,X		; 75 AF
	phy		; 5A
	eor #$02.b		; 49 02
	dey		; 88
	cpx #$F8.b		; E0 F8
	ora $55F52E.l		; 0F 2E F5 55
	sbc #$FF.b		; E9 FF
	sbc [$55.b],Y		; F7 55
	tsx		; BA
	lda [$2C.b],Y		; B7 2C
	lda $EE48.w,X		; BD 48 EE
	eor ($AC.b),Y		; 51 AC
	eor [$7C.b],Y		; 57 7C
	bit #$E0.b		; 89 E0
	sed		; F8
	ora $FF8974.l		; 0F 74 89 FF
	lda $A29042.l		; AF 42 90 A2
	eor #$A8.b		; 49 A8
	cmp $C5.b		; C5 C5
	trb $46.b		; 14 46
	trb $12.b		; 14 12
	bit $0D.b		; 24 0D
	tsb $FF3A.w		; 0C 3A FF
	sbc $0BA892.l,X		; FF 92 A8 0B
	brk $88.b		; 00 88
	ora ($8A.b)		; 12 8A
	jsr $4520.w		; 20 20 45
	ora $7654.w,Y		; 19 54 76
	jsl $858421.l		; 22 21 84 85
	bit $FEB2.w		; 2C B2 FE
	lsr $01.b,X		; 56 01
	rol A		; 2A
	inc $5A28.w,X		; FE 28 5A
	stx $62.b		; 86 62
.ACCU 8
	sep #$28		; E2 28
	rti		; 40

	sta ($44.b)		; 92 44
	sbc $BB163B.l,X		; FF 3B 16 BB
	bcc  54.b		; 90 36
	trb $E1.b		; 14 E1
	lda $00.b		; A5 00
	eor #$41.b		; 49 41
	txa		; 8A
	plp		; 28
	tyx		; BB
	brk $6F.b		; 00 6F
	plx		; FA
	sbc $FCBCFC.l,X		; FF FC BC FC
	eor ($A8.b)		; 52 A8
	phx		; DA
	ldy #$D6.b		; A0 D6
	tsb $A9.b		; 04 A9
	mvp $91,$AC		; 44 AC 91
	eor ($2F.b),Y		; 51 2F
	inc $2522.w,X		; FE 22 25
	eor $AB.b,S		; 43 AB
	mvp $C0,$62		; 44 62 C0
	tsb $68FC.w		; 0C FC 68
	asl A		; 0A
	lda $01.b		; A5 01
	ldx #$FF.b		; A2 FF
	cmp [$28.b]		; C7 28
	ora ($11.b,X)		; 01 11
	jmp $4619.w		; 4C 19 46
	tsb $4E.b		; 04 4E
	dec $31.b		; C6 31
	jsl $62EAF7.l		; 22 F7 EA 62
	jsr ($1ADF.w,X)		; FC DF 1A
	dec A		; 3A
	ldx $F6B9.w,Y		; BE B9 F6
	cpx $50.b		; E4 50
	and $FF18.w		; 2D 18 FF
	cmp $0986AD.l		; CF AD 86 09
	tsb $22.b		; 04 22
	ora ($52.b)		; 12 52
	adc ($12.b)		; 72 12
	tas		; 1B
	lsr $53.b		; 46 53
	lda $E6F874.l,X		; BF 74 F8 E6
	bra -83.b		; 80 AD
	brk $ED.b		; 00 ED
	cop $00.b		; 02 00
	lda #$03.b		; A9 03
	plb		; AB
	sbc $90810F.l,X		; FF 0F 81 90
	ldy $35.b,X		; B4 35
	eor $1A72.w,X		; 5D 72 1A
	asl A		; 0A
	txa		; 8A
	dey		; 88
	rol A		; 2A
	stx $D4.b,Y		; 96 D4
	sbc ($08.b),Y		; F1 08
.ACCU 16
.INDEX 16
	rep #$7E		; C2 7E
	.db $82, $EB, $00		; 82 EB 00
	sbc $FFFFD8.l		; EF D8 FF FF
	inc $006B.w,X		; FE 6B 00
	sta ($44.b),Y		; 91 44
	ora $85.b		; 05 85
	eor [$D5.b]		; 47 D5
	mvp $A9,$50		; 44 50 A9
	ora $88AA.w,X		; 1D AA 88
	txa		; 8A
	cmp $6D.b,S		; C3 6D
	dex		; CA
	txs		; 9A
	wai		; CB
	dec $FA.b		; C6 FA
	brk $BA.b		; 00 BA
	tax		; AA
	cmp #$CDF6.w		; C9 F6 CD
	adc $FC75.w,Y		; 79 75 FC
	sta [$FE.b]		; 87 FE
	ora ($46.b,S),Y		; 13 46
	and ($14.b,X)		; 21 14
	eor $E0.b		; 45 E0
	stx $FFAA.w		; 8E AA FF
	sta $545100.l,X		; 9F 00 51 54
	eor ($5A.b,S),Y		; 53 5A
.ACCU 16
	rep #$EA		; C2 EA
	plp		; 28
	sep #$0A		; E2 0A
	sbc $D055E8.l,X		; FF E8 55 D0
	sta $3D9E.w,Y		; 99 9E 3D
	brk $2B.b		; 00 2B
	adc ($41.b)		; 72 41
	cmp ($55.b),Y		; D1 55
	sbc $ADC11F.l,X		; FF 1F C1 AD
	phd		; 0B
	phb		; 8B
	and $AAE6.w		; 2D E6 AA
	ldx #$5AEA.w		; A2 EA 5A
	dex		; CA
	cmp $BE00.w,X		; DD 00 BE
	ora ($E2.b,X)		; 01 E2
	inc $FEC2.w,X		; FE C2 FE
	eor $B5FE.w,X		; 5D FE B5
	sbc $1500FF.l,X		; FF FF 00 15
	rti		; 40

	lda $2C.b,X		; B5 2C
	ldy $35.b		; A4 35
	jmp ($7B69.w)		; 6C 69 7B
	ror $6AEF.w,X		; 7E EF 6A
	dex		; CA
	and #$E281.w		; 29 81 E2
	eor [$4B.b]		; 47 4B
	lsr $FEF1.w		; 4E F1 FE
	sta [$00.b],Y		; 97 00
	sta $00.b		; 85 00
	sta $80.b,X		; 95 80
	sed		; F8
	sbc $B59072.l,X		; FF 72 90 B5
	ora $9D.b,X		; 15 9D
	bit $2C.b		; 24 2C
	bit $01.b		; 24 01
	cpy $81.b		; C4 81
	sbc $B1.b		; E5 B1
	sta [$FE.b]		; 87 FE
	jmp.w [$1EFD]		; DC FD 1E
	ply		; 7A
	stz $EA.b		; 64 EA
	ldx $CB.b,Y		; B6 CB
	adc $005E00.l,X		; 7F 00 5E 00
	and $FF.b,S		; 23 FF
	sbc $00A500.l,X		; FF 00 A5 00
	tax		; AA
	dex		; CA
	xba		; EB
	tsx		; BA
	cmp $F5BE.w,X		; DD BE F5
	jmp ($ABF2.w)		; 6C F2 AB
	and #$297B.w		; 29 7B 29
	eor $BF.b,S		; 43 BF
	dec A		; 3A
	cmp $45863D.l,X		; DF 3D 86 45
	adc ($41.b)		; 72 41
	sbc ($00.b,S),Y		; F3 00
	pei ($00.b)		; D4 00
	stx $FF.b		; 86 FF
	sbc $C679F2.l,X		; FF F2 79 C6
	brk $59.b		; 00 59
	cmp #$BDED.w		; C9 ED BD
	lsr A		; 4A
	lda $646EA1.l,X		; BF A1 6E 64
	txs		; 9A
	phd		; 0B
	adc $FF99.w,X		; 7D 99 FF
	and ($7D.b),Y		; 31 7D
	asl $DA.b,X		; 16 DA
	ldx $00.b,Y		; B6 00
	eor ($00.b)		; 52 00
	eor ($00.b),Y		; 51 00
	sta ($A4.b,S),Y		; 93 A4
	ldx $C2.b		; A6 C2
	sbc $8B5EFE.l,X		; FF FE 5E 8B
	eor $DDCF.w,Y		; 59 CF DD
	tad		; 5B
	eor $68BFA6.l,X		; 5F A6 BF 68
	and $43DFFC.l,X		; 3F FC DF 43
	inc $EB4C.w,X		; FE 4C EB
	ldx $7B.b		; A6 7B
	pla		; 68
	and ($00.b)		; 32 00
	ldy #$4800.w		; A0 00 48
	sbc $3100FF.l,X		; FF FF 00 31
	brk $11.b		; 00 11
	brk $14.b		; 00 14
	brk $84.b		; 00 84
	brk $EE.b		; 00 EE
	ldx $BF.b,Y		; B6 BF
	and $F7.b,X		; 35 F7
	adc $FF24.w,X		; 7D 24 FF
	sbc $FB83F4.l,X		; FF F4 83 FB
	lda [$8E.b]		; A7 8E
	sta [$ED.b]		; 87 ED
	ldx $49D9.w,Y		; BE D9 49
	brk $CA.b		; 00 CA
	brk $8A.b		; 00 8A
	brk $9B.b		; 00 9B
	sbc $2500FF.l,X		; FF FF 00 25
	brk $73.b		; 00 73
	brk $76.b		; 00 76
	brk $AE.b		; 00 AE
	brk $1F.b		; 00 1F
	stp		; DB
	stz $7C6D.w		; 9C 6D 7C
	sbc $FDFF3B.l,X		; FF 3B FF FD
	sbc $FEEF.w,X		; FD EF FE
	cmp $FE.b,S		; C3 FE
	ora $FE51F6.l,X		; 1F F6 51 FE
	bit $F1E0.w		; 2C E0 F1
	bcc   0.b		; 90 00
	asl $00.b,X		; 16 00
	phd		; 0B
	sbc $2100F1.l,X		; FF F1 00 21
	clc		; 18
	sbc #$B5FC.w		; E9 FC B5
	jmp $4E7F42.l		; 5C 42 7F 4E
	ror $FF88.w,X		; 7E 88 FF
	lda $61FE.w,X		; BD FE 61
	lda $50BF5A.l,X		; BF 5A BF 50
	lda [$D2.b],Y		; B7 D2
	adc $A944AB.l,X		; 7F AB 44 A9
	cmp $00.b		; C5 00
	sta $FFFF.w		; 8D FF FF
	stx $42E1.w		; 8E E1 42
	brk $6C.b		; 00 6C
	brk $A9.b		; 00 A9
	brk $67.b		; 00 67
	sta $BD52.w,X		; 9D 52 BD
	adc $E0F7.w,Y		; 79 F7 E0
	sbc [$36.b],Y		; F7 36
	sbc $34EDC7.l,X		; FF C7 ED 34
	adc $FBD6.w,Y		; 79 D6 FB
	cpx $DB.b		; E4 DB
	sbc $00.b,S		; E3 00
	eor $9C3A00.l		; 4F 00 3A 9C
	sed		; F8
	sbc $446212.l,X		; FF 12 62 44
	brk $64.b		; 00 64
	brk $27.b		; 00 27
	jmp.w [$F22C]		; DC 2C F2
	dey		; 88
	sbc $47FF0D.l,X		; FF 0D FF 47
	cmp $51AF1A.l,X		; DF 1A AF 51
	lda $6DDF33.l,X		; BF 33 DF 6D
	ldx $2B.b,Y		; B6 2B
	brk $1D.b		; 00 1D
	ror $E8.b		; 66 E8
	beq  92.b		; F0 5C
	stz $64.b,X		; 74 64
	sbc ($24.b),Y		; F1 24
	brk $72.b		; 00 72
	inc $FD17.w		; EE 17 FD
	tyx		; BB
	lda [$02.b],Y		; B7 02
	sbc $AAD420.l,X		; FF 20 D4 AA
	xce		; FB
	brk $8E.b		; 00 8E
	and ($02.b,X)		; 21 02
	ora [$07.b]		; 07 07
	sbc [$D6.b],Y		; F7 D6
	tsb $1F.b		; 04 1F
	.db $82, $80, $9C		; 82 80 9C
	sbc $7B17EF.l,X		; FF EF 17 7B
	sty $E2.b		; 84 E2
	adc [$BB.b],Y		; 77 BB
	bcs -38.b		; B0 DA
	stz $E9.b		; 64 E9
	pei ($BF.b)		; D4 BF
	lda $09F8DE.l,X		; BF DE F8 09
	cpx #$38FC.w		; E0 FC 38
	adc ($02.b),Y		; 71 02
	mvn $87,$22		; 54 22 87
	ldx $817E.w		; AE 7E 81
	sbc $FEE010.l		; EF 10 E0 FE
	rol A		; 2A
	sbc ($0B.b,X)		; E1 0B
	phd		; 0B
	lsr A		; 4A
.INDEX 8
	sep #$DF		; E2 DF
	sbc $22FCE0.l,X		; FF E0 FC 22
	cmp $FE01.w,X		; DD 01 FE
	inx		; E8
	stx $A9.b,Y		; 96 A9
	inc $FF0F.w,X		; FE 0F FF
	ora [$D6.b]		; 07 D6
	and #$41FF.w		; 29 FF 41
	sbc ($A7.b,X)		; E1 A7
	sbc [$F7.b],Y		; F7 F7
	ldx $FDFD.w,Y		; BE FD FD
	and [$37.b],Y		; 37 37
	eor $B84D.w		; 4D 4D B8
	sbc $0101FF.l,X		; FF FF 01 01
	tay		; A8
	.db $42, $75		; 42 75
	sta ($B7.b,X)		; 81 B7
	eor ($17.b,X)		; 41 17
	inx		; E8
	tax		; AA
	pei ($37.b)		; D4 37
	inx		; E8
	plb		; AB
	pei ($E1.b)		; D4 E1
	cmp $45.b,S		; C3 45
	plx		; FA
	cpx $7E.b		; E4 7E
	adc $DFF6FE.l,X		; 7F FE F6 DF
	ldy $FDFE.w		; AC FE FD
	sbc $BDD7D7.l,X		; FF D7 D7 BD
	adc #$BEFD.w		; 69 FD BE
	sbc $AF5F5B.l,X		; FF 5B 5F AF
	lda $8A0D0D.l,X		; BF 0D 0D 8A
	phd		; 0B
	adc $FF.b		; 65 FF
	sbc $02AA25.l,X		; FF 25 AA 02
	cmp $80.b,X		; D5 80
	brk $BE.b		; 00 BE
	ldy #$FB.b		; A0 FB
	rti		; 40

	sbc $F4F7F2.l		; EF F2 F7 F4
	inc $70DA.w,X		; FE DA 70
	sta [$DF.b]		; 87 DF
.ACCU 8
.INDEX 8
	sep #$7F		; E2 7F
	adc $CB77EF.l,X		; 7F EF 77 CB
	lda $AABD.w,X		; BD BD AA
	cmp $5757F0.l,X		; DF F0 57 57
	jsl $414523.l		; 22 23 45 41
	sta [$E9.b]		; 87 E9
	tda		; 7B
	jsr ($BD42.w,X)		; FC 42 BD
	rti		; 40

	sbc $A8F7FF.l,X		; FF FF F7 A8
	sbc $BEFEDC.l,X		; FF DC FE BE
	lda $C0A080.l		; AF 80 A0 C0
	iny		; C8
	rti		; 40

	cpy #$E0.b		; C0 E0
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	sbc ($FF.b),Y		; F1 FF
	sed		; F8
	dec $5566.w,X		; DE 66 55
	eor $5F.b,X		; 55 5F
	cmp $3FF737.l,X		; DF 37 F7 3F
	adc $0BFD1D.l,X		; 7F 1D FD 0B
	sbc $01FF07.l,X		; FF 07 FF 01
	sta ($A1.b),Y		; 91 A1
	.db $42, $53		; 42 53
	rol $8E73.w		; 2E 73 8E
	ora #$17.b		; 09 17
	ora $3FFF.w,Y		; 19 FF 3F
	sta [$09.b]		; 87 09
	and [$88.b]		; 27 88
	sta [$8C.b]		; 87 8C
	sta $94.b,S		; 83 94
	sta ($DE.b,S),Y		; 93 DE
	dec $7E7E.w,X		; DE 7E 7E
	sbc $F00CEF.l		; EF EF 0C F0
	tay		; A8
	stp		; DB
	stp		; DB
	sed		; F8
	ldx $6F.b		; A6 6F
	sbc $BB0BBF.l,X		; FF BF 0B BB
	rti		; 40

	sbc $F212.w		; ED 12 F2
	sbc ($02.b,X)		; E1 02
	cmp [$EE.b]		; C7 EE
	cmp $1DE1.w		; CD E1 1D
	sep #$0F		; E2 0F
	cpx $2A.b		; E4 2A
	jsr ($8080.w,X)		; FC 80 80
	cmp [$C7.b]		; C7 C7
	phx		; DA
	rol $50.b,X		; 36 50
	sbc $80.b		; E5 80
	sbc ($AE.b,X)		; E1 AE
	sbc [$EC.b],Y		; F7 EC
	ora $F17F83.l,X		; 1F 83 7F F1
	clv		; B8
	cmp $77E4E4.l		; CF E4 E4 77
	eor ($A8.b,X)		; 41 A8
	lda $4276.w		; AD 76 42
	sep #$C4		; E2 C4
	sbc ($6A.b),Y		; F1 6A
	sep #$04		; E2 04
	nop		; EA
	cmp #$A0.b		; C9 A0
	cpy $F0.b		; C4 F0
	phd		; 0B
	sta $AE.b		; 85 AE
	tsb $C9.b		; 04 C9
	ldy #$E6.b		; A0 E6
	jsr ($F79A.w,X)		; FC 9A F7
	rol $E3.b		; 26 E3
	tyx		; BB
	mvp $88,$00		; 44 00 88
	ora ($2A.b,S),Y		; 13 2A
	sta ($62.b,X)		; 81 62
	sbc ($FE.b)		; F2 FE
	asl A		; 0A
	lsr $F1.b,X		; 56 F1
	ora ($48.b),Y		; 11 48
	trb $E8.b		; 14 E8
	inc $9020.w,X		; FE 20 90
	jmp ($F6F2.w,X)		; 7C F2 F6
	sbc ($40.b),Y		; F1 40
	ora $DE9E.w,Y		; 19 9E DE
	txy		; 9B
	tyx		; BB
	cpx #$F8.b		; E0 F8
	ora ($F6.b,S),Y		; 13 F6
	ora #$A0.b		; 09 A0
	adc #$60.b		; 69 60
	tsx		; BA
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	ora $6060.w		; 0D 60 60
	asl $B6.b,X		; 16 B6
	ply		; 7A
	lda ($98.b,X)		; A1 98
	lda #$F7.b		; A9 F7
	bvs  17.b		; 70 11
	plx		; FA
	inc $C011.w		; EE 11 C0
	inc $A508.w,X		; FE 08 A5
	lda $C0.b,S		; A3 C0
	sed		; F8
	asl A		; 0A
	inc $78.b,X		; F6 78
	plb		; AB
	rts		; 60

	sbc $80FF10.l		; EF 10 FF 80
	tsb $76.b		; 04 76
	cpx $F8.b		; E4 F8
	ora #$FF.b		; 09 FF
	txa		; 8A
	rts		; 60

	sta ($04.b,X)		; 81 04
	ldx $EA.b		; A6 EA
	lda [$48.b],Y		; B7 48
	sbc $7F.b,X		; F5 7F
	stz $E1.b		; 64 E1
	nop		; EA
	sbc $FEFF.w		; ED FF FE
	jsr $2200.w		; 20 00 22
	sbc $FFD4.w,X		; FD D4 FF
	tax		; AA
	adc $181FF5.l,X		; 7F F5 1F 18
	sbc $847BC4.l,X		; FF C4 7B 84
	dec $20.b,X		; D6 20
	adc $FDFD6F.l		; 6F 6F FD FD
	and $3FBFFB.l,X		; 3F FB BF 3F
	ora [$17.b],Y		; 17 17
	dec $BBFE.w,X		; DE FE BB
	eor ($57.b,X)		; 41 57
	tay		; A8
	txa		; 8A
	sbc $14.b,X		; F5 14
	sbc $F73FEE.l,X		; FF EE 3F F7
	sbc $F4FE.w,X		; FD FE F4
	ldx $F7BE.w,Y		; BE BE F7
	lsr $61.b		; 46 61
	lda $2FBD.w,X		; BD BD 2F
	and $00ED80.l		; 2F 80 ED 00
	lda $AD40.w,X		; BD 40 AD
	sbc $5552F5.l,X		; FF F5 52 55
	tax		; AA
	cop $FD.b		; 02 FD
	cmp ($FE.b),Y		; D1 FE
	iny		; C8
	and $6160F1.l,X		; 3F F1 60 61
	ror A		; 6A
	sbc ($DF.b)		; F2 DF
	cmp $7FF861.l,X		; DF 61 F8 7F
	adc $1E1ED8.l,X		; 7F D8 1E 1E
	ldx $42.b,Y		; B6 42
	lsr $41.b,X		; 56 41
	ora $FF.b,S		; 03 FF
	sbc $D410B8.l,X		; FF B8 10 D4
	.db $82, $E8, $00		; 82 E8 00
	stz $A1.b,X		; 74 A1
	clv		; B8
	rti		; 40

	adc $81.b,X		; 75 81
	lda #$AB.b		; A9 AB
	jsr ($87FD.w,X)		; FC FD 87
	inc $EFEF.w,X		; FE EF EF
	adc $D87D.w,X		; 7D 7D D8
	dec $5920.w,X		; DE 20 59
	inc $F7FE.w,X		; FE FE F7
	beq  89.b		; F0 59
	beq  -3.b		; F0 FD
	cli		; 58
	lda ($5C.b)		; B2 5C
	jmp $5FBFBD.l		; 5C BD BF 5F
	sta [$B1.b]		; 87 B1
	eor [$57.b],Y		; 57 57
	ora $E30FEF.l		; 0F EF 0F E3
	lda [$FF.b]		; A7 FF
	.db $42, $7E		; 42 7E
	lda $09.b,S		; A3 09
	cmp $05A0.w,X		; DD A0 05
	tay		; A8
	bpl  -9.b		; 10 F7
	inc $F568.w		; EE 68 F5
	bit $2501.w		; 2C 01 25
	and $A9.b,X		; 35 A9
	ora #$C7.b		; 09 C7
	plx		; FA
	sbc $F22CC7.l		; EF C7 2C F2
	tsb $FFF1.w		; 0C F1 FF
	phx		; DA
	stp		; DB
	jsr ($F6FF.w,X)		; FC FF F6
	inc $38.b,X		; F6 38
	sbc $A1.b,S		; E3 A1
	clv		; B8
	sbc $0E07FF.l,X		; FF FF 07 0E
	ora ($02.b,X)		; 01 02
	ora $E3.b		; 05 E3
	beq -15.b		; F0 F1
	beq -47.b		; F0 D1
	bne  -7.b		; D0 F9
	sed		; F8
	phx		; DA
	sbc $30FB.w,Y		; F9 FB 30
	jsr ($E2BB.w,X)		; FC BB E2
	xce		; FB
	xce		; FB
	tsx		; BA
	ora $DF2FFF.l		; 0F FF 2F DF
	ora [$FF.b]		; 07 FF
	sbc $DF07FD.l,X		; FF FD 07 DF
	sbc $E877E0.l,X		; FF E0 77 E8
	and $F11EE0.l,X		; 3F E0 1E F1
	lda $70AF70.l,X		; BF 70 AF 70
	and $F03C3F.l,X		; 3F 3F 3C F0
	rol $E0F1.w,X		; 3E F1 E0
	cpx #$60.b		; E0 60
	rts		; 60

	jsr ($D0D0.w,X)		; FC D0 D0
	beq -16.b		; F0 F0
	bra  32.b		; 80 20
	plx		; FA
	jsr ($4940.w,X)		; FC 40 49
	lda $D50C.w,X		; BD 0C D5
	ldx $F8A0.w		; AE A0 F8
	ora ($FF.b,X)		; 01 FF
	cmp $F0.b,S		; C3 F0
	ora $F3A0.w		; 0D A0 F3
	php		; 08
	jsr $A8F4.w		; 20 F4 A8
	plb		; AB
	ldx #$F1.b		; A2 F1
	pea $F020.w		; F4 20 F0
	ora $3E.b,X		; 15 3E
	sbc ($BD.b)		; F2 BD
	.db $42, $F1		; 42 F1
	bmi  25.b		; 30 19
	ldx $FEFC.w,Y		; BE FC FE
	adc $E0EADC.l,X		; 7F DC EA E0
	sed		; F8
	bpl  48.b		; 10 30
	sbc $1CF738.l,X		; FF 38 F7 1C
	xce		; FB
	asl $4FB9.w		; 0E B9 4F
	jsr ($FE03.w,X)		; FC 03 FE
	phd		; 0B
	sed		; F8
	ora $30307E.l,X		; 1F 7E 30 30
	plp		; 28
	plp		; 28
	trb $061C.w		; 1C 1C 06
	asl $0E.b		; 06 0E
	asl $43AE.w		; 0E AE 43
	asl $0202.w		; 0E 02 02
	ora ($69.b,X)		; 01 69
	adc $EA44.w,X		; 7D 44 EA
	ora $81DFF0.l,X		; 1F F0 DF 81
	adc $FF9FAD.l,X		; 7F AD 9F FF
	bra -128.b		; 80 80
	bcs -80.b		; B0 B0
	plx		; FA
	plx		; FA
	cli		; 58
	sbc ($A0.b,X)		; E1 A0
	sbc $7801EF.l		; EF EF 01 78
	asl $BF62.w		; 0E 62 BF
	adc $73.b,X		; 75 73
	inc $ED.b		; E6 ED
	plx		; FA
	sta ($80.b,X)		; 81 80
	inx		; E8
	ora $F6.b,X		; 15 F6
	ora ($BF.b,X)		; 01 BF
	rti		; 40

	sbc $20.b,X		; F5 20
	tax		; AA
	tsb $E9.b		; 04 E9
	plx		; FA
	lsr $D6C9.w		; 4E C9 D6
	sbc $EC3BF2.l,X		; FF F2 3B EC
	dex		; CA
	xba		; EB
	cmp $EC.b,X		; D5 EC
	inx		; E8
	sep #$88		; E2 88
	nop		; EA
	bit $F740.w,X		; 3C 40 F7
	ldx $D9.b		; A6 D9
	ldx $0C60.w,Y		; BE 60 0C
	ora $FF.b,S		; 03 FF
	sbc $F51FE8.l,X		; FF E8 1F F5
	asl $1DEA.w,X		; 1E EA 1D
	sbc $3A.b,X		; F5 3A
	lda $7C.b,S		; A3 7C
	sta $7E.b,S		; 83 7E
	sta $EC.b,S		; 83 EC
	ora $3FF2.w		; 0D F2 3F
	nop		; EA
	tas		; 1B
	tas		; 1B
	ora [$17.b],Y		; 17 17
	ora $FF3F1F.l,X		; 1F 1F 3F FF
	trb $54F1.w		; 1C F1 54
	sbc ($28.b),Y		; F1 28
	sbc $51C8FF.l,X		; FF FF C8 51
	sta ($A0.b,X)		; 81 A0
	brk $D4.b		; 00 D4
	asl $AA.b,X		; 16 AA
	rol A		; 2A
	eor ($51.b),Y		; 51 51
	ldx #$02.b		; A2 02
	cpy #$00.b		; C0 00
	adc [$FE.b],Y		; 77 FE
	inc $5E77.w,X		; FE 77 5E
	phx		; DA
	sbc #$FD.b		; E9 FD
	cmp $FF.b,X		; D5 FF
	ldx $37BB.w		; AE BB 37
	sbc ($EE.b),Y		; F1 EE
	pld		; 2B
	rtl		; 6B

	ora $05.b		; 05 05
	sta [$01.b]		; 87 01
	bpl  16.b		; 10 10
	sta $85.b		; 85 85
	ldy $55.b,X		; B4 55
	eor $30.b,X		; 55 30
	inc $FC7E.w		; EE 7E FC
	sty $BF.b,X		; 94 BF
	plx		; FA
	trb $7AF1.w		; 1C F1 7A
	tda		; 7B
	ror $92.b		; 66 92
	ora $BD.b		; 05 BD
	tax		; AA
	sbc [$ED.b],Y		; F7 ED
	sbc [$F5.b],Y		; F7 F5
	ora $779B.w		; 0D 9B 77
	adc $B7EAE0.l,X		; 7F E0 EA B7
	sta [$B0.b],Y		; 97 B0
	bra  11.b		; 80 0B
	cmp #$11.b		; C9 11
	sbc $40.b,S		; E3 40
	sbc $FFFB.w,X		; FD FB FF
	ldy #$FB.b		; A0 FB
	pla		; 68
	cld		; D8
	cmp $B0B1.w,Y		; D9 B1 B0
	jsr ($EBF0.w,X)		; FC F0 EB
	cpx $FC.b		; E4 FC
	sbc $F9.b,S		; E3 F9
	sbc [$FB.b]		; E7 FB
	sbc $CBF6FF.l,X		; FF FF F6 CB
	cmp [$41.b]		; C7 41
	eor [$4F.b]		; 47 4F
	lda $1BFF0F.l,X		; BF 0F FF 1B
	xba		; EB
	ora $FF1FBF.l,X		; 1F BF 1F FF
	asl $FFFD.w		; 0E FD FF
	ror $743F.w		; 6E 3F 74
	sbc #$9F.b		; E9 9F
	bvs 111.b		; 70 6F
	clc		; 18
	sta $EC1718.l		; 8F 18 17 EC
	cmp [$FC.b]		; C7 FC
	xce		; FB
	asl $1C3F.w,X		; 1E 3F 1C
	sbc $83FF06.l,X		; FF 06 FF 83
	beq -16.b		; F0 F0
	sed		; F8
	sbc $FCFCB8.l,X		; FF B8 FC FC
	lsr $FBB5.w,X		; 5E B5 FB
	asl $061E.w,X		; 1E 1E 06
	asl $10.b		; 06 10
	eor #$48.b		; 49 48
.ACCU 8
	sep #$24		; E2 24
	sbc $40.b		; E5 40
	beq  22.b		; F0 16
	bcc  42.b		; 90 2A
	ldy $E640.w		; AC 40 E6
	dec $EA.b,X		; D6 EA
	sbc $C80FF8.l,X		; FF F8 0F C8
	jmp.w [$DDBE]		; DC BE DD
	jsl $AAECBC.l		; 22 BC EC AA
	inc $D8C0.w,X		; FE C0 D8
	ora $42.b,X		; 15 42
	sep #$C0		; E2 C0
	cld		; D8
	asl $DA.b,X		; 16 DA
	ply		; 7A
.INDEX 16
	rep #$DD		; C2 DD
	bra  -8.b		; 80 F8
	ora ($FE.b,S),Y		; 13 FE
	ora [$FE.b]		; 07 FE
	ora ($FB.b,X)		; 01 FB
	tax		; AA
	dec $1A05.w,X		; DE 05 1A
	beq   9.b		; F0 09
	cpx $15EA.w		; EC EA 15
	ora $F8C0.w,Y		; 19 C0 F8
	ora #$C9.b		; 09 C9
	bit $AFE0.w		; 2C E0 AF
	sed		; F8
	ldx $FC.b,Y		; B6 FC
	php		; 08
	and $EAFF80.l		; 2F 80 FF EA
	cpx #$D8E0.w		; E0 E0 D8
	cld		; D8
	rts		; 60

	inc $AA49.w,X		; FE 49 AA
	txa		; 8A
	jsr ($54EC.w,X)		; FC EC 54
	rts		; 60

	sed		; F8
	ora ($28.b),Y		; 11 28
	nop		; EA
	cmp ($7E.b)		; D2 7E
	pld		; 2B
	tsb $F8E0.w		; 0C E0 F8
	ora ($03.b)		; 12 03
	sbc $E04168.l,X		; FF 68 41 E0
	inc $36.b,X		; F6 36
	ora $03.b,S		; 03 03
	asl $82D6.w		; 0E D6 82
	xce		; FB
	cpx #$0E0B.w		; E0 0B 0E
	sbc ($25.b),Y		; F1 25
	txs		; 9A
	phy		; 5A
	sbc $E9B8.w,X		; FD B8 E9
	inc $1B83.w		; EE 83 1B
	sty $FF.b		; 84 FF
	adc $51137F.l,X		; 7F 7F 13 51
	brk $D9.b		; 00 D9
	ldx #$FCCA.w		; A2 CA FC
	sbc $C47EFF.l,X		; FF FF 7E C4
	and $56D0.w		; 2D D0 56
	sed		; F8
	plb		; AB
	pea $78C6.w		; F4 C6 78
	lda ($FC.b,S),Y		; B3 FC
	cmp ($7C.b,S),Y		; D3 7C
	sbc ($BC.b,X)		; E1 BC
	tax		; AA
	sbc $E160BB.l,X		; FF BB 60 E1
	pla		; 68
	cmp ($C6.b)		; D2 C6
	cmp #$42.b		; C9 42
	sbc ($BF.b),Y		; F1 BF
	lda $2E2E.w,X		; BD 2E 2E
	ora [$17.b],Y		; 17 17
	sbc $6FFFFF.l		; EF FF FF 6F
	ora [$1F.b],Y		; 17 1F
	sta $41410F.l		; 8F 0F 41 41
	lda $03.b,S		; A3 03
	eor ($01.b,X)		; 41 01
	cmp ($FF.b),Y		; D1 FF
	inx		; E8
	sbc $FFBF90.l,X		; FF 90 BF FF
	lda $F0F6E0.l,X		; BF E0 F6 F0
	sbc $DBBBBE.l,X		; FF BE BB DB
	ora #$FB.b		; 09 FB
	txy		; 9B
	bra  15.b		; 80 0F
	ora ($E0.b,X)		; 01 E0
	cpx $DB.b		; E4 DB
	inc $D0D0.w,X		; FE D0 D0
	inx		; E8
	tsa		; 3B
	cmp #$F7.b		; C9 F7
	eor $7FA9.w		; 4D A9 7F
	cpy $1BD9.w		; CC D9 1B
	stp		; DB
	and $FE17FF.l		; 2F FF 17 FE
	sbc $DB.b,S		; E3 DB
	lda $F7B9.w,X		; BD B9 F7
	brk $BE.b		; 00 BE
	inc $05.b,X		; F6 05
	ora $780320.l,X		; 1F 20 03 78
	phk		; 4B
	lda $554BFE.l		; AF FE 4B 55
	eor $BE.b,X		; 55 BE
	ldx $E204.w,Y		; BE 04 E2
	cpx $ECE1.w		; EC E1 EC
	cmp ($B4.b,X)		; C1 B4
	tsx		; BA
	tax		; AA
	sbc $C3FF41.l,X		; FF 41 FF C3
	lda $FFEB00.l,X		; BF 00 EB FF
	sbc ($9F.b,X)		; E1 9F
	sbc $1C1F63.l,X		; FF 63 1F 1C
	ora ($DC.b,S),Y		; 13 DC
	rti		; 40

	lda $2841F4.l,X		; BF F4 41 28
	tay		; A8
	pei ($D4.b)		; D4 D4
	sbc ($E1.b,X)		; E1 E1
	dex		; CA
	rol A		; 2A
	ror $FEBE.w,X		; 7E BE FE
	eor [$F6.b],Y		; 57 F6
	adc $592E7F.l,X		; 7F 7F 2E 59
	sta ($BE.b,X)		; 81 BE
	sbc ($E0.b),Y		; F1 E0
	adc $7CBFF0.l,X		; 7F F0 BF 7C
	cmp $3E5F3C.l,X		; DF 3C 5F 3E
	and $FC.b,S		; 23 FC
	cmp $808046.l,X		; DF 46 80 80
	cpy #$F0C0.w		; C0 C0 F0
	beq -68.b		; F0 BC
	ldy $FCFC.w,X		; BC FC FC
	lsr $EA.b,X		; 56 EA
	cmp [$2A.b],Y		; D7 2A
	sbc $01FE40.l,X		; FF 40 FE 01
	dec $A4F1.w,X		; DE F1 A4
	sbc ($01.b)		; F2 01
	sed		; F8
	dex		; CA
	rts		; 60

	beq  16.b		; F0 10
	lsr $BAE3.w,X		; 5E E3 BA
	tax		; AA
	tsb $3C.b		; 04 3C
	cmp $DF.b,S		; C3 DF
	and ($A0.b,X)		; 21 A0
	beq  17.b		; F0 11
	dec $98ED.w,X		; DE ED 98
	sbc $E0.b,X		; F5 E0
	inx		; E8
	ora ($26.b,S),Y		; 13 26
	lda [$48.b],Y		; B7 48
.ACCU 16
	rep #$64		; C2 64
	cmp ($26.b),Y		; D1 26
	inc $E0.b,X		; F6 E0
	sed		; F8
	ora ($DE.b),Y		; 11 DE
	and ($BC.b,X)		; 21 BC
	sbc $A208.w,X		; FD 08 A2
	.db $82, $9C, $EA		; 82 9C EA
	cpy #$12F8.w		; C0 F8 12
	tay		; A8
	.db $42, $E1		; 42 E1
	jmp.w [$DEEB]		; DC EB DE
	tax		; AA
	ldx #$F8A0.w		; A2 A0 F8
	ora ($82.b,S),Y		; 13 82
	cpx $F880.w		; EC 80 F8
	ora $E4.b,X		; 15 E4
	jsr ($EC80.w,X)		; FC 80 EC
	brk $F0.b		; 00 F0
	trb $E8.b		; 14 E8
	eor $000B.w,Y		; 59 0B 00
.ACCU 8
.INDEX 8
	sep #$BF		; E2 BF
	clc		; 18
	ldx #$91.b		; A2 91
	sbc $F840FD.l,X		; FF FD 40 F8
	sbc $FFAA.w,X		; FD AA FF
	asl $E5E2.w		; 0E E2 E5
	clc		; 18
	cmp $EE64.w,X		; DD 64 EE
	lda [$D6.b],Y		; B7 D6
	cmp ($7E.b),Y		; D1 7E
	inx		; E8
	sbc $FE7FD4.l,X		; FF D4 7F FE
	inc $2F0B.w,X		; FE 0B 2F
	tsx		; BA
	cpy $B7.b		; C4 B7
	pha		; 48
	adc $FBFB7F.l,X		; 7F 7F FB FB
	eor $CEC25F.l,X		; 5F 5F C2 CE
	cmp $A3FF1F.l,X		; DF 1F FF A3
	ora $D1.b,S		; 03 D1
	ora ($E8.b,X)		; 01 E8
	dec $4719.w		; CE 19 47
	sed		; F8
	inc $FB0F.w,X		; FE 0F FB
	ora [$14.b]		; 07 14
	dec $B2.b,X		; D6 B2
	phb		; 8B
	sbc ($3C.b,S),Y		; F3 3C
	sbc ($D8.b),Y		; F1 D8
	ora $EA940F.l		; 0F 0F 94 EA
	dec $EA.b,X		; D6 EA
	sbc $3F3FF7.l,X		; FF F7 3F 3F
	php		; 08
	php		; 08
	lda ($45.b),Y		; B1 45
	sei		; 78
	ldy #$BC.b		; A0 BC
	cpy #$AF.b		; C0 AF
	cmp ($0F.b),Y		; D1 0F
	sbc #$F7.b		; E9 F7
	cpy #$EF.b		; C0 EF
.ACCU 16
.INDEX 16
	rep #$FE		; C2 FE
	sbc [$F7.b],Y		; F7 F7
	tsx		; BA
	tsx		; BA
	clc		; 18
	sbc ($EE.b)		; F2 EE
	inc $BA01.w		; EE 01 BA
	sbc $ECF07D.l,X		; FF 7D F0 EC
	adc $55DA.w,X		; 7D DA 55
	adc $2A.b,X		; 75 2A
	rol A		; 2A
	ora $82A1C1.l		; 0F C1 A1 82
	ora $80BDFF.l,X		; 1F FF BD 80
	sbc $D5DF8A.l,X		; FF 8A DF D5
	inc $DA.b		; E6 DA
	phx		; DA
	jsr ($EAFD.w,X)		; FC FD EA
	plx		; FA
	sbc $F5F5FF.l,X		; FF FF F5 F5
	xba		; EB
	xba		; EB
	eor [$57.b],Y		; 57 57
	ldy #$12A0.w		; A0 A0 12
	ora ($25.b)		; 12 25
	cmp $05FE02.l,X		; DF 02 FE 05
	adc $0AFFFF.l		; 6F FF FF 0A
	sbc $A86F14.l,X		; FF 14 6F A8
	sbc $FF5F.w,X		; FD 5F FF
	sbc $11F7.w		; ED F7 11
	and $E6030D.l		; 2F 0D 03 E6
	sbc ($FF.b,X)		; E1 FF
	sbc $5152.w,X		; FD 52 51
	sbc ($F1.b,S),Y		; F3 F1
	stp		; DB
	sed		; F8
	adc $6978.w,Y		; 79 78 69
	sei		; 78
	asl A		; 0A
	tsx		; BA
	ora $FFAFBF.l,X		; 1F BF AF FF
	sbc ($FD.b,X)		; E1 FD
	asl $73FE.w		; 0E FE 73
	sta [$FF.b]		; 87 FF
	sta [$EF.b]		; 87 EF
.INDEX 8
	sep #$DA		; E2 DA
	inc $89.b,X		; F6 89
	sbc $F1ADC0.l,X		; FF C0 AD F1
	xce		; FB
	cpy $DA.b		; C4 DA
	sbc #$95F8.w		; E9 F8 95
	ora ($9E.b),Y		; 11 9E
	sbc $C0.b,S		; E3 C0
	sbc $AAE0E0.l,X		; FF E0 E0 AA
	bcs  -8.b		; B0 F8
	cpx #$61.b		; E0 61
	.db $82, $F2, $00		; 82 F2 00
	cmp ($9E.b,S),Y		; D3 9E
	sbc ($42.b,X)		; E1 42
	sbc $0A.b,X		; F5 0A
	tsx		; BA
	pld		; 2B
	brk $D0.b		; 00 D0
	trb $9E.b		; 14 9E
	sbc [$A0.b]		; E7 A0
	iny		; C8
	ora ($FE.b),Y		; 11 FE
	ora ($24.b,X)		; 01 24
	sbc ($DB.b)		; F2 DB
	bit $E0.b		; 24 E0
	cld		; D8
	ora [$88.b],Y		; 17 88
	sbc $56.b,S		; E3 56
	eor [$C0.b],Y		; 57 C0
	sbc $80F17C.l		; EF 7C F1 80
	inx		; E8
	ora ($E2.b,S),Y		; 13 E2
	jsr ($24DF.w,X)		; FC DF 24
	inc $A9.b		; E6 A9
	rol $F1.b,X		; 36 F1
	bmi   1.b		; 30 01
	dec $E860.w,X		; DE 60 E8
	ora ($80.b)		; 12 80
	stz $82E2.w,X		; 9E E2 82
	phy		; 5A
	inc $F8.b,X		; F6 F8
	rti		; 40

	iny		; C8
	ora ($7E.b,S),Y		; 13 7E
	cmp $D8E0.w,X		; DD E0 D8
	asl $20.b,X		; 16 20
	mvn $AB,$95		; 54 95 AB
	lda $00.b,X		; B5 00
	sbc ($7F.b),Y		; F1 7F
	dec $A0B9.w,X		; DE B9 A0
	clv		; B8
	ora $41E9EC.l		; 0F EC E9 41
	tsb $F5.b		; 04 F5
	brk $C9.b		; 00 C9
	sbc $E411.w,X		; FD 11 E4
	.db $62, $B8, $0E		; 62 B8 0E
	cop $80.b		; 02 80
	stx $20.b		; 86 20
	nop		; EA
	.db $62, $A0, $A8		; 62 A0 A8
	ora $54.b		; 05 54
	cpy #$E0.b		; C0 E0
	ora ($66.b,S),Y		; 13 66
	tsx		; BA
	cpy $18.b		; C4 18
	lda ($FF.b),Y		; B1 FF
	plb		; AB
	bra  -8.b		; 80 F8
	ora ($DF.b),Y		; 11 DF
	cpx $C7.b		; E4 C7
	sei		; 78
	sbc ($7E.b,X)		; E1 7E
	beq  63.b		; F0 3F
	sbc $EC560C.l,X		; FF 0C 56 EC
.ACCU 16
	rep #$EA		; C2 EA
	tyx		; BB
	lda $0CEAEE.l,X		; BF EE EA 0C
	tsb $C5F8.w		; 0C F8 C5
	ora ($F4.b,X)		; 01 F4
	cpy $F1.b		; C4 F1
	ora ($FE.b,X)		; 01 FE
	jsr ($FF1F.w,X)		; FC 1F FF
	ora $6F.b,S		; 03 6F
	lda $B218.w,X		; BD 18 B2
	inc $DBFE.w,X		; FE FE DB
	stp		; DB
	ora [$23.b]		; 07 23
	ora $A0B9CE.l,X		; 1F CE B9 A0
	eor $10.b,S		; 43 10
	bpl  -8.b		; 10 F8
	sbc $9978E5.l,X		; FF E5 78 99
	ora $FCC3F0.l		; 0F F0 C3 FC
	sbc [$1C.b],Y		; F7 1C
	adc ($9C.b,S),Y		; 73 9C
	inc $ACEA.w,X		; FE EA AC
	sbc $1BFFE1.l,X		; FF E1 FF 1B
	tas		; 1B
	phx		; DA
	tsa		; 3B
	and $787B.w,Y		; 39 7B 78
	xce		; FB
	sed		; F8
	adc ($70.b),Y		; 71 70
	and ($31.b),Y		; 31 31
	sbc ($FF.b,X)		; E1 FF
	rol $AA3E.w,X		; 3E 3E AA
	ora $FEC60F.l		; 0F 0F C6 FE
	sta [$FF.b]		; 87 FF
	ora [$77.b]		; 07 77
	sta $FB7FFF.l		; 8F FF 7F FB
	dec $C1BE.w		; CE BE C1
	sbc $F0FEC0.l		; EF C0 FE F0
	sbc $923245.l		; EF 45 32 92
	sta $81.b,S		; 83 81
	cop $01.b		; 02 01
	ora $D0BA.w		; 0D BA D0
	tsb $DDEE.w		; 0C EE DD
	ldx $F3FD.w,Y		; BE FD F3
	xce		; FB
	sbc $D1.b		; E5 D1
	inc $80.b,X		; F6 80
	cpx $E9.b		; E4 E9
	inc $E42E.w,X		; FE 2E E4
	ldx $7FDA.w,Y		; BE DA 7F
	inc $7FBF.w,X		; FE BF 7F
	sbc $E47F.w,X		; FD 7F E4
	nop		; EA
	cpx #$E0.b		; E0 E0
	ldx $89DA.w,Y		; BE DA 89
	eor $D4.b,X		; 55 D4
	inx		; E8
	lda ($4A.b,X)		; A1 4A
	sbc $3EC9BE.l		; EF BE C9 3E
	sbc $4B.b,S		; E3 4B
	eor $4155.w,Y		; 59 55 41
	cpy $F0.b		; C4 F0
	tsb $DA57.w		; 0C 57 DA
	.db $82, $BE, $C0		; 82 BE C0
	sbc $C0.b		; E5 C0
	clv		; B8
	ora $DA.b,X		; 15 DA
	rts		; 60

	iny		; C8
	inc A		; 1A
	eor $07.b		; 45 07
	php		; 08
	sbc $A0.b,S		; E3 A0
	clv		; B8
	ora [$A0.b],Y		; 17 A0
	jsr $EFF5.w		; 20 F5 EF
	bpl  58.b		; 10 3A
	eor $AD.b,X		; 55 AD
	rti		; 40

	clv		; B8
	ora ($E6.b),Y		; 11 E6
	dex		; CA
	bit $A0DC.w,X		; 3C DC A0
	sed		; F8
	inc A		; 1A
	lsr A		; 4A
	dey		; 88
	asl A		; 0A
	cpx #$B0.b		; E0 B0
	ora ($81.b)		; 12 81
	sta $5EAAE1.l		; 8F E1 AA 5E
	rti		; 40

	txy		; 9B
	brk $DE.b		; 00 DE
	tda		; 7B
	jsr ($EC75.w,X)		; FC 75 EC
	txa		; 8A
	jmp.w [$FD1A]		; DC 1A FD
	sty $FD.b		; 84 FD
	ora ($C0.b)		; 12 C0
	sed		; F8
	ora $2255C7.l		; 0F C7 55 22
	ldx #$6F.b		; A2 6F
	bcc -64.b		; 90 C0
	rti		; 40

	sbc $E0BB9A.l,X		; FF 9A BB E0
	sed		; F8
	ora ($22.b,S),Y		; 13 22
	cmp $FF52.w,Y		; D9 52 FF
	bit $E3F6.w,X		; 3C F6 E3
	sbc $F8.b		; E5 F8
	asl A		; 0A
	pei ($F2.b)		; D4 F2
	bpl -25.b		; 10 E7
	sec		; 38
	sta [$F8.b]		; 87 F8
	sta [$3F.b],Y		; 97 3F
	inc $C3FC.w		; EE FC C3
	jmp ($3FF8.w,X)		; 7C F8 3F
	lda $447C43.l,X		; BF 43 7C 44
	and $EB790C.l,X		; 3F 0C 79 EB
	inc A		; 1A
	inc $DEEB.w,X		; FE EB DE
	nop		; EA
	brk $F3.b		; 00 F3
	rti		; 40

	sbc $E00484.l,X		; FF 84 04 E0
	brk $E0.b		; 00 E0
	ora ($FD.b,X)		; 01 FD
	ora $3F.b,X		; 15 3F
	bne -91.b		; D0 A5
	asl A		; 0A
	sbc $BFBF01.l,X		; FF 01 BF BF
	xce		; FB
	xce		; FB
	dey		; 88
	tax		; AA
	bit $DEF2.w,X		; 3C F2 DE
	sbc ($DC.b,X)		; E1 DC
	ora ($01.b,X)		; 01 01
	bit $D43C.w,X		; 3C 3C D4
	nop		; EA
	ora [$1F.b],Y		; 17 1F
	inc $30.b,X		; F6 30
	cmp ($61.b,X)		; C1 61
	sed		; F8
	trb $B4E0.w		; 1C E0 B4
	cmp $FD.b,S		; C3 FD
	and $E0FFE0.l		; 2F E0 FF E0
	sbc [$08.b],Y		; F7 08
	inc $DCFE.w,X		; FE FE DC
	pei ($01.b)		; D4 01
	cmp ($3F.b),Y		; D1 3F
	bcc -113.b		; 90 8F
	cmp $C0.b,S		; C3 C0
	adc [$88.b],Y		; 77 88
	lda $E2.b		; A5 E2
	beq -16.b		; F0 F0
	bit $0FBA.w		; 2C BA 0F
	eor $DF7FEA.l		; 4F EA 7F DF
	sbc $BD1DB9.l,X		; FF B9 1D BD
	ora $E0C0FF.l		; 0F FF C0 E0
	sbc #$BFB0.w		; E9 B0 BF
	ora $10C0F0.l		; 0F F0 C0 10
	stz $011E.w,X		; 9E 1E 01
	ldy #$1F.b		; A0 1F
	eor $ADD3E4.l,X		; 5F E4 D3 AD
	sbc ($F0.b,S),Y		; F3 F0
	asl $8A.b		; 06 8A
	adc #$E1A6.w		; 69 A6 E1
	sbc $0BBEA0.l,X		; FF A0 BE 0B
	adc ($BB.b),Y		; 71 BB
	ora $55.b,S		; 03 55
	eor $51.b,X		; 55 51
	adc ($A0.b),Y		; 71 A0
	cmp [$3E.b]		; C7 3E
	pea $F8FF.w		; F4 FF F8
	ora $D8F646.l		; 0F 46 F6 D8
	dec $F020.w		; CE 20 F0
	ora $7C.b,X		; 15 7C
	wai		; CB
	eor $55.b,X		; 55 55
	brk $F0.b		; 00 F0
	inc A		; 1A
	asl $60C6.w,X		; 1E C6 60
	clv		; B8
	clc		; 18
	jsr $1DF0.w		; 20 F0 1D
	cop $BF.b		; 02 BF
	cpx #$F8.b		; E0 F8
	ora $26.b,X		; 15 26
	sbc ($E0.b)		; F2 E0
	sed		; F8
	phd		; 0B
	cmp $9BDD.w,Y		; D9 DD 9B
	cld		; D8
	phd		; 0B
	nop		; EA
	bra -117.b		; 80 8B
	sbc $C006.w,Y		; F9 06 C0
	sed		; F8
	ora ($BB.b,S),Y		; 13 BB
	mvp $BB,$EA		; 44 EA BB
	plb		; AB
	tax		; AA
	php		; 08
	xce		; FB
	tsb $DA.b		; 04 DA
	sbc #$C8A0.w		; E9 A0 C8
	tsb $ECDA.w		; 0C DA EC
.ACCU 8
	sep #$EB		; E2 EB
	jsr ($58F1.w,X)		; FC F1 58
	sbc $2A82.w,X		; FD 82 2A
	brk $C8.b		; 00 C8
	ora ($62.b)		; 12 62
	sbc #$04.b		; E9 04
	lsr $B4EC.w,X		; 5E EC B4
	sbc ($25.b,X)		; E1 25
	lda $CF78.w		; AD 78 CF
	ldy #$CA.b		; A0 CA
	sty $06.b		; 84 06
	php		; 08
	sta $A638.w,Y		; 99 38 A6
	nop		; EA
	cpx $01EC.w		; EC EC 01
	plx		; FA
	sta $7FE161.l,X		; 9F 61 E1 7F
	sed		; F8
	sta $D375C0.l,X		; 9F C0 75 D3
	asl $B340.w,X		; 1E 40 B3
	txa		; 8A
	tsx		; BA
	tas		; 1B
	txy		; 9B
	phy		; 5A
	wai		; CB
	php		; 08
	dec $FD80.w,X		; DE 80 FD
	lda ($10.b),Y		; B1 10
	mvp $59,$6C		; 44 6C 59
	cpx #$FF.b		; E0 FF
	jsr ($FF0F.w,X)		; FC 0F FF
	sta ($B8.b,X)		; 81 B8
	tsb $3E.b		; 04 3E
	ldx $EAE8.w,Y		; BE E8 EA
	stz $0F9A.w,X		; 9E 9A 0F
	ora $B88101.l		; 0F 01 81 B8
	tsb $40.b		; 04 40
	mvn $AD,$C0		; 54 C0 AD
	sbc $C962.w		; ED 62 C9
	ora $55.b,S		; 03 55
	adc ($D0.b),Y		; 71 D0
	bcs  65.b		; B0 41
	sbc ($09.b)		; F2 09
	plb		; AB
	jmp $DFE1.w		; 4C E1 DF
	rti		; 40

	txs		; 9A
	cmp [$42.b],Y		; D7 42
	sbc $DC9ED7.l,X		; FF D7 9E DC
	xce		; FB
	ora $7F09D4.l		; 0F D4 09 7F
	jsr $387F.w		; 20 7F 38
	adc $EBFA3E.l,X		; 7F 3E FA EB
	adc $F05130.l,X		; 7F 30 51 F0
	jsr ($205F.w,X)		; FC 5F 20
	eor [$38.b]		; 47 38
	eor ($3E.b,X)		; 41 3E
	dey		; 88
	and $2968.w,Y		; 39 68 29
	cpy #$3F.b		; C0 3F
	jmp $E080.w		; 4C 80 E0
	cpy #$F0.b		; C0 F0
	rts		; 60

	beq 112.b		; F0 70
	inc $B0B0.w,X		; FE B0 B0
	sbc $40F030.l,X		; FF 30 F0 40
	bra  32.b		; 80 20
	cpy #$90.b		; C0 90
	rts		; 60

	bra 112.b		; 80 70
	inc $F040.w,X		; FE 40 F0
	inx		; E8
	ora [$CE.b]		; 07 CE
	inc $27FC.w,X		; FE FC 27
	lda $FD7D.w,Y		; B9 7D FD
	adc $CE75F7.l,X		; 7F F7 75 CE
	sta $FCFE83.l		; 8F 83 FE FC
	bra 127.b		; 80 7F
	.db $82, $FE, $8A		; 82 FE 8A
	adc $0047CE.l,X		; 7F CE 47 00
	sbc $B8B8FC.l,X		; FF FC B8 B8
	sed		; F8
	inc $CEFD.w,X		; FE FD CE
	sta ($D5.b,X)		; 81 D5
	inc $F6FD.w,X		; FE FD F6
	inc $08F6.w,X		; FE F6 08
	ora #$FE.b		; 09 FE
	jsr ($F8F0.w,X)		; FC F0 F8
	ora $FD70BF.l		; 0F BF 70 FD
	adc [$F7.b],Y		; 77 F7
	ror $72FA.w,X		; 7E FA 72
	sta ($28.b,X)		; 81 28
	eor [$AE.b]		; 47 AE
	phb		; 8B
	adc $1FFD8F.l,X		; 7F 8F FD 1F
	rep #$49		; C2 49
	and $68A8F6.l		; 2F F6 A8 68
	sec		; 38
	pla		; 68
	clv		; B8
	pla		; 68
	cpy #$D0.b		; C0 D0
	ldy $86FC.w,X		; BC FC 86
	ora #$FE.b		; 09 FE
	sty $FCCC.w		; 8C CC FC
	bne  -8.b		; D0 F8
	inc $6886.w,X		; FE 86 68
	sbc $FEFC40.l,X		; FF 40 FC FE
	bvs  -4.b		; 70 FC
	lda $4440FF.l		; AF FF 40 44
	and ($49.b,X)		; 21 49
	mvp $F8,$F1		; 44 F1 F8
	asl A		; 0A
	plp		; 28
	rti		; 40

	clv		; B8
	stx $FE.b,Y		; 96 FE
	tya		; 98
	inc $0103.w,X		; FE 03 01
	inc $F0FC.w,X		; FE FC F0
	inc $CE02.w,X		; FE 02 CE
	cmp ($84.b),Y		; D1 84
	eor #$FE.b		; 49 FE
	lda ($F2.b)		; B2 F2
	sbc $FAD1F7.l,X		; FF F7 D1 FA
	cmp $F1.b		; C5 F1
	and ($D3.b,X)		; 21 D3
	and $FEE3.w,Y		; 39 E3 FE
	rol $80FA.w		; 2E FA 80
	bit $30F4.w,X		; 3C F4 30
	jmp ($9CFE.w,X)		; 7C FE 9C
	jmp $FE5E9E.l		; 5C 9E 5E FE
	asl $4CDE.w,X		; 1E DE 4C
	lda ($FE.b,X)		; A1 FE
	cpy #$FC.b		; C0 FC
	inc $FEE0.w,X		; FE E0 FE
	inc $551A.w,X		; FE 1A 55
	inc $B4FC.w,X		; FE FC B4
	inc $F8A0.w,X		; FE A0 F8
	phd		; 0B
	ora $FE.b,S		; 03 FE
	ldy #$FE.b		; A0 FE
	adc ($C2.b)		; 72 C2
	bvs -60.b		; 70 C4
	ora ($D7.b),Y		; 11 D7
	sbc $FE6DFC.l,X		; FF FC 6D FE
	jsr $FEE0.w		; 20 E0 FE
	inc $FEC6.w,X		; FE C6 FE
	adc $FB.b,X		; 75 FB
	ora [$03.b]		; 07 03
	inc $C8FC.w,X		; FE FC C8
	inc $0304.w,X		; FE 04 03
	inc $AFFC.w,X		; FE FC AF
	dec $D7AA.w		; CE AA D7
	cmp $FB7FDF.l		; CF DF 7F FB
	dec $96DE.w		; CE DE 96
	stx $D6.b		; 86 D6
	dec $F7.b		; C6 F7
	inc $35.b		; E6 35
	phx		; DA
	plp		; 28
	rtl		; 6B

	sta ($31.b),Y		; 91 31
	sbc $F04F79.l,X		; FF 79 4F F0
	sbc $19FF39.l,X		; FF 39 FF 19
	sbc $06FE6C.l,X		; FF 6C FE 06
	dec $17.b		; C6 17
	sta ($55.b,S),Y		; 93 55
	cmp [$1F.b],Y		; D7 1F
	cmp [$FC.b],Y		; D7 FC
	ror A		; 6A
	jsr ($ACF8.w,X)		; FC F8 AC
	adc ($FE.b),Y		; 71 FE
	jsr ($FE68.w,X)		; FC 68 FE
	cmp $BC.b,X		; D5 BC
	inc $A0FE.w,X		; FE FE A0
	inc $FEFE.w,X		; FE FE FE
	pla		; 68
	inc $FFE0.w,X		; FE E0 FF
	rts		; 60

	rts		; 60

	sbc [$42.b]		; E7 42
	ror A		; 6A
	jsr ($F030.w,X)		; FC 30 F0
	bpl  -2.b		; 10 FE
	bcc   0.b		; 90 00
	phk		; 4B
	ply		; 7A
	ora $90.b		; 05 90
	inx		; E8
	bvs -86.b		; 70 AA
	sbc ($FE.b,X)		; E1 FE
	sbc $820007.l,X		; FF 07 00 82
	asl $5206.w,X		; 1E 06 52
	sbc $40FE.w,X		; FD FE 40
	lsr $DB.b,X		; 56 DB
	ora #$0C.b		; 09 0C
	sei		; 78
	jmp ($E0FC.w,X)		; 7C FC E0
	inc $5731.w,X		; FE 31 57
	cpy #$FC.b		; C0 FC
	beq -124.b		; F0 84
	sed		; F8
	inc $F16D.w,X		; FE 6D F1
	bra  56.b		; 80 38
	tsb $FE40.w		; 0C 40 FE
	rts		; 60

	cpy #$FE.b		; C0 FE
	bvs -32.b		; 70 E0
	cop $0C.b		; 02 0C
	inc $F25C.w,X		; FE 5C F2
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	ldy #$40.b		; A0 40
	ora $78.b,S		; 03 78
	inc $6090.w,X		; FE 90 60
	inc $B8AE.w,X		; FE AE B8
	jsr ($070F.w,X)		; FC 0F 07
	asl A		; 0A
	tsb $F0.b		; 04 F0
	jsr ($F6FE.w,X)		; FC FE F6
	php		; 08
	jsr ($0708.w,X)		; FC 08 07
	ora ($FE.b,X)		; 01 FE
	tsb $FC07.w		; 0C 07 FC
	inc $38D5.w,X		; FE D5 38
	sbc $F7E6FE.l		; EF FE E6 F7
	cmp $A1.b,S		; C3 A1
	ldx $B7.b		; A6 B7
	ldx $F7FE.w		; AE FE F7
	ldx $BF.b,Y		; B6 BF
	inc $10FF.w,X		; FE FF 10
	ora $D179.w,X		; 1D 79 D1
	asl A		; 0A
	eor $FAFE.w,Y		; 59 FE FA
	jsr ($C70F.w,X)		; FC 0F C7
	ldx $E1.b		; A6 E1
	inc $478F.w,X		; FE 8F 47
	inc $57AA.w,X		; FE AA 57
	jsr ($438B.w,X)		; FC 8B 43
	asl A		; 0A
	bvc  -8.b		; 50 F8
	bit $FEC9.w,X		; 3C C9 FE
	jsr ($FC04.w,X)		; FC 04 FC
	jsr ($FB00.w,X)		; FC 00 FB
	eor [$FB.b],Y		; 57 FB
	eor $818082.l,X		; 5F 82 80 81
	inc $54FC.w,X		; FE FC 54
	pea $F15A.w		; F4 5A F1
	bra  -2.b		; 80 FE
	jsr ($6070.w,X)		; FC 70 60
	bcs  -1.b		; B0 FF
	cmp [$20.b]		; C7 20
	bvs -96.b		; 70 A0
	pla		; 68
	ldy #$D8.b		; A0 D8
	bne 104.b		; D0 68
	brk $B8.b		; 00 B8
	bmi  -8.b		; 30 F8
	asl $5F78.w		; 0E 78 5F
	bne  -2.b		; D0 FE
	cld		; D8
	sed		; F8
	plp		; 28
	stz $C8E9.w		; 9C E9 C8
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	inc $7695.w,X		; FE 95 76
	inc $08FE.w,X		; FE FE 08
	inc $FEFE.w,X		; FE FE FE
	tsb $7E7C.w		; 0C 7C 7E
	inc $5EFE.w,X		; FE FE 5E
	eor $0C63DA.l,X		; 5F DA 63 0C
	.db $82, $FC, $FE		; 82 FC FE
	inc $FEA1.w,X		; FE A1 FE
	cop $FF.b		; 02 FF
	ora $A6.b,S		; 03 A6
	ora ($FE.b,X)		; 01 FE
	sbc $740606.l,X		; FF 06 06 74
	mvp $FE,$AC		; 44 AC FE
	cpx #$EA.b		; E0 EA
	inc $0578.w,X		; FE 78 05
	cpy #$F6.b		; C0 F6
	ldy $F60E.w		; AC 0E F6
	phx		; DA
	inc $F8F0.w,X		; FE F0 F8
	clc		; 18
	lda $F10EE0.l,X		; BF E0 0E F1
	inc $F078.w,X		; FE 78 F0
	cmp $F0.b,S		; C3 F0
	inc $F87C.w,X		; FE 7C F8
	inc $FCFE.w,X		; FE FE FC
	inc $EAEB.w,X		; FE EB EA
	xce		; FB
	cmp $30.b,S		; C3 30
	nop		; EA
	dey		; 88
	bvs  -2.b		; 70 FE
	sty $78.b		; 84 78
	inc $FC02.w,X		; FE 02 FC
	tsb $FEC2.w		; 0C C2 FE
	ora $FE.b,X		; 15 FE
	inc $F2AC.w,X		; FE AC F2
	inc $2B0D.w,X		; FE 0D 2B
	sbc $1F07.w		; ED 07 1F
	ora $ACFCFE.l		; 0F FE FC AC
	sbc ($FE.b)		; F2 FE
	bpl  15.b		; 10 0F
	inc $B8FC.w,X		; FE FC B8
	sbc $F4B1FF.l,X		; FF FF B1 F4
	sbc $FC.b,X		; F5 FC
	sbc $FF54.w,X		; FD 54 FF
	inc $DEFD.w,X		; FE FD DE
	sbc $FEAD.w,X		; FD AD FE
	sbc $5FFE.w		; ED FE 5F
	ora [$FE.b],Y		; 17 FE
	sbc $13FF1B.l,X		; FF 1B FF 13
	stz $FCF1.w		; 9C F1 FC
	and ($DF.b,S),Y		; 33 DF
	eor ($BF.b,S),Y		; 53 BF
	sta ($7F.b,S),Y		; 93 7F
	lda ($57.b,X)		; A1 57
	pld		; 2B
	eor $FE.b,S		; 43 FE
	rtl		; 6B

	inc $67FF.w,X		; FE FF 67
	eor $FC.b,S		; 43 FC
	ldy $FEF1.w		; AC F1 FE
	sed		; F8
	phd		; 0B
	cmp [$9D.b],Y		; D7 9D
	tay		; A8
	inc $C0.b,X		; F6 C0
	cmp ($FE.b,X)		; C1 FE
	jsr ($F6A8.w,X)		; FC A8 F6
	ora ($C0.b,X)		; 01 C0
	inc $F8FC.w,X		; FE FC F8
	beq  -2.b		; F0 FE
	phk		; 4B
	inc $C0C8.w,X		; FE C8 C0
	bit $F430.w,X		; 3C 30 F4
	beq -92.b		; F0 A4
	beq  -4.b		; F0 FC
	ldx $1FF1.w		; AE F1 1F
	sta $FE.b,S		; 83 FE
	sec		; 38
	sed		; F8
	cpy $0CFC.w		; CC FC 0C
	inc $FE04.w,X		; FE 04 FE
	nop		; EA
	sbc $0BF0A2.l,X		; FF A2 F0 0B
	txs		; 9A
	sbc #$A4.b		; E9 A4
	beq  11.b		; F0 0B
	txs		; 9A
	nop		; EA
	ror $5E5F.w,X		; 7E 5F 5E
	adc $F65756.l,X		; 7F 56 57 F6
	eor [$7D.b],Y		; 57 7D
	ora $FE0143.l		; 0F 43 01 FE
	ror $7EAA.w,X		; 7E AA 7E
	jsr ($FEA1.w,X)		; FC A1 FE
	inc $2CA9.w,X		; FE A9 2C
	sbc $FE.b,X		; F5 FE
	inc $D1F1.w,X		; FE F1 D1
	inc $FF06.w,X		; FE 06 FF
	sed		; F8
	asl A		; 0A
	ora $770D.w		; 0D 0D 77
	bvc  15.b		; 50 0F
	ora $0305.w		; 0D 05 03
	inc $09F8.w,X		; FE F8 09
	asl A		; 0A
	ora [$FE.b]		; 07 FE
	cmp [$F7.b],Y		; D7 F7
	inc $FFFD.w,X		; FE FD FF
	and $0EF8F1.l,X		; 3F F1 F8 0E
	brk $EB.b		; 00 EB
	nop		; EA
	lda $BEFBAA.l,X		; BF AA FB BE
	lda $8A9F94.l		; AF 94 9F 8A
	plx		; FA
	xce		; FB
	jmp ($FEFC.w,X)		; 7C FC FE
	xce		; FB
	xba		; EB
	ora $FE.b,X		; 15 FE
	eor $FE.b,X		; 55 FE
	adc $FE75FE.l,X		; 7F FE 75 FE
	clv		; B8
	adc ($05.b,X)		; 61 05
	inc $FF14.w,X		; FE 14 FF
	cpy $1EF2.w		; CC F2 1E
	inc $AE0E.w,X		; FE 0E AE
	jsr ($FEF9.w,X)		; FC F9 FE
	rol A		; 2A
	txa		; 8A
	ldx $119E.w,Y		; BE 9E 11
	asl $0FFE.w		; 0E FE 0F
	lda ($F0.b),Y		; B1 F0
	cmp ($1F.b,S),Y		; D3 1F
	inc $1FB5.w,X		; FE B5 1F
	lda ($1F.b,X)		; A1 1F
	cmp $FEDE.w		; CD DE FE
	sbc $5BFF.w		; ED FF 5B
	dec $FAC8.w,X		; DE C8 FA
	bvc  50.b		; 50 32
	inx		; E8
	phx		; DA
	cpx $33DA.w		; EC DA 33
	sbc $37FCFE.l,X		; FF FE FC 37
	ldy $D9.b,X		; B4 D9
	bra 127.b		; 80 7F
	jsr ($65FE.w,X)		; FC FE 65
	eor ($75.b,X)		; 41 75
	eor ($70.b,X)		; 41 70
	mvp $45,$71		; 44 71 45
	eor [$1D.b],Y		; 57 1D
	inc $41FC.w,X		; FE FC 41
	eor $48.b		; 45 48
	cmp ($7D.b,X)		; C1 7D
	tas		; 1B
	inc $CCFE.w,X		; FE FE CC
	sbc ($40.b)		; F2 40
	eor ($04.b,X)		; 41 04
	adc $FC.b,S		; 63 FC
	bra -28.b		; 80 E4
	sbc $81F2CC.l,X		; FF CC F2 81
	jsr ($6900.w,X)		; FC 00 69
	sed		; F8
	xba		; EB
	lda $FCFE.w,Y		; B9 FE FC
	sed		; F8
	inc $D8DC.w,X		; FE DC D8
	dec $7FD8.w,X		; DE D8 7F
	sbc $5AD85E.l,X		; FF 5E D8 5A
	cld		; D8
	eor ($D0.b)		; 52 D0
	ror A		; 6A
	dey		; 88
	dec $FCF1.w		; CE F1 FC
	bit $FC.b		; 24 FC
	rol $FE.b		; 26 FE
	ldx $F0.b		; A6 F0
	inc $FE7E.w,X		; FE 7E FE
	ldx $F67E.w		; AE 7E F6
	ror $70B2.w,X		; 7E B2 70
	ora #$10.b		; 09 10
	php		; 08
	clc		; 18
	tsb $FE1C.w		; 0C 1C FE
	ror A		; 6A
	asl $F8F0.w		; 0E F0 F8
	ora #$18.b		; 09 18
	brk $14.b		; 00 14
	php		; 08
	ora ($0C.b)		; 12 0C
	lsr $9DE1.w		; 4E E1 9D
	beq  12.b		; F0 0C
	rti		; 40

	inx		; E8
	ora $2FFF54.l		; 0F 54 FF 2F
	eor $7F8A.w		; 4D 8A 7F
	sbc [$77.b],Y		; F7 77
	sbc $FF5777.l,X		; FF 77 57 FF
	xce		; FB
	adc ($F6.b,S),Y		; 73 F6
	ply		; 7A
	adc ($A1.b),Y		; 71 A1
	dec $AF.b		; C6 AF
	inc $FE88.w,X		; FE 88 FE
	brk $FF.b		; 00 FF
	sty $8DFF.w		; 8C FF 8D
	eor $0EAA82.l		; 4F 82 AA 0E
	eor ($E2.b,X)		; 41 E2
	lda ($D1.b,S),Y		; B3 D1
	lda ($D1.b),Y		; B1 D1
	phk		; 4B
	sbc ($D2.b,X)		; E1 D2
	dex		; CA
	inc $E0FE.w,X		; FE FE E0
	cpy #$97.b		; C0 97
	ror $09FE.w,X		; 7E FE 09
	asl A		; 0A
	ora $FFF18A.l		; 0F 8A F1 FF
	ora $1A181D.l,X		; 1F 1D 18 1A
	ora $FD19.w,X		; 1D 19 FD
	eor ($38.b),Y		; 51 38
	sbc ($FE.b,X)		; E1 FE
	sbc $0F12.w,X		; FD 12 0F
	ora [$0F.b],Y		; 17 0F
	asl $0F.b,X		; 16 0F
	cmp [$D0.b]		; C7 D0
	sbc $FEF559.l,X		; FF 59 F5 FE
	jsr ($FEB1.w,X)		; FC B1 FE
	sbc $0ED861.l,X		; FF 61 D8 0E
	brk $DF.b		; 00 DF
	inc $EFFE.w,X		; FE FE EF
	xce		; FB
	ora [$F8.b]		; 07 F8
	cmp $EBFFDB.l,X		; DF DB FF EB
	plx		; FA
	jsr ($F7E3.w,X)		; FC E3 F7
	sta ($95.b,X)		; 81 95
	ora $0D31E8.l,X		; 1F E8 31 0D
	trb $FF.b		; 14 FF
	bit $FF.b,X		; 34 FF
	jsr ($1CFE.w,X)		; FC FE 1C
	sbc $7E0FFE.l,X		; FF FE 0F 7E
	cpy #$F1.b		; C0 F1
	ldx $7E9E.w,Y		; BE 9E 7E
	lsr $5E7F.w,X		; 5E 7F 5E
	tyx		; BB
	inc A		; 1A
	xce		; FB
	txa		; 8A
	sbc $61FEF0.l,X		; FF F0 FE 61
	asl A		; 0A
	adc #$08.b		; 69 08
	lda ($1F.b,X)		; A1 1F
	and ($DF.b,X)		; 21 DF
	inc $DF65.w,X		; FE 65 DF
	adc $F0.b,X		; 75 F0
	ora $FEBF.w,X		; 1D BF FE
	sbc $BF.b,X		; F5 BF
	sbc [$BF.b],Y		; F7 BF
	cpx $F16C.w		; EC 6C F1
	dex		; CA
	jmp.w [$6BE2]		; DC E2 6B
	inc $FECE.w,X		; FE CE FE
	lsr $E6FC.w		; 4E FC E6
	pea $F26C.w		; F4 6C F2
	inc $17FE.w,X		; FE FE 17
	sbc $79E71F.l,X		; FF 1F E7 79
	eor $4575.w		; 4D 75 45
	eor $5F.b		; 45 5F
	adc $5E.b		; 65 5E
	stz $5D.b		; 64 5D
	ror $4D.b		; 66 4D
	ror $56.b,X		; 76 56
	sbc $774EFE.l,X		; FF FE 4E 77
	ror A		; 6A
	pea $F8FF.w		; F4 FF F8
	ora #$68.b		; 09 68
	inc $30.b,X		; F6 30
	bpl  80.b		; 10 50
	bmi -80.b		; 30 B0
	bvc -35.b		; 50 DD
	adc $6890F0.l,X		; 7F F0 90 68
	inc $E0.b,X		; F6 E0
	beq  -2.b		; F0 FE
	jsr ($DC5E.w,X)		; FC 5E DC
	lsr $C4.b		; 46 C4
	ror $2AFC.w,X		; 7E FC 2A
	jsr ($7E38.w,X)		; FC 38 7E
	jsr ($FD56.w,X)		; FC 56 FD
	jmp ($A2FE.w,X)		; 7C FE A2
	ror $7EBA.w,X		; 7E BA 7E
	.db $82, $9E, $BC		; 82 9E BC
	inc $7F83.w,X		; FE 83 7F
	inc $B8B0.w,X		; FE B0 B8
	phd		; 0B
	bmi   0.b		; 30 00
	sec		; 38
	stz $E9.b,X		; 74 E9
	cpy #$B8.b		; C0 B8
	asl A		; 0A
	beq  40.b		; F0 28
	bpl  30.b		; 10 1E
	pla		; 68
	sbc $FE.b		; E5 FE
	ora $170D.w,X		; 1D 0D 17
	ldx #$1F.b		; A2 1F
	ora $0E11.w		; 0D 11 0E
	ror $E6.b		; 66 E6
	inc $FE12.w,X		; FE 12 FE
	eor $E4.b,S		; 43 E4
	jmp $84F1.w		; 4C F1 84
	bra  -2.b		; 80 FE
	sta [$FC.b]		; 87 FC
	inc $FFDF.w,X		; FE DF FF
	ora [$03.b]		; 07 03
	sta [$03.b]		; 87 03
	eor [$C3.b]		; 47 C3
	inc $09F8.w,X		; FE F8 09
	nop		; EA
	rol A		; 2A
	ldx $D832.w,Y		; BE 32 D8
	php		; 08
	cmp ($2E.b),Y		; D1 2E
	sbc $646873.l,X		; FF 73 68 64
	adc ($7A.b,S),Y		; 73 7A
	adc [$76.b],Y		; 77 76
	ror $DD76.w,X		; 7E 76 DD
	sbc $9F48CD.l,X		; FF CD 48 9F
	sbc $F0.b,S		; E3 F0
	mvp $89,$F1		; 44 F1 89
	inc $6080.w,X		; FE 80 60
	inc $6040.w,X		; FE 40 60
	cpy #$C3.b		; C0 C3
	plb		; AB
	bvc -96.b		; 50 A0
	bne  -2.b		; D0 FE
	cpy #$B0.b		; C0 B0
	bra -80.b		; 80 B0
	jmp $12F2.w		; 4C F2 12
	cmp ($EE.b,X)		; C1 EE
	sbc $FED176.l,X		; FF 76 D1 FE
	jsr ($1B1F.w,X)		; FC 1F 1B
	inc $3FFC.w,X		; FE FC 3F
	tsa		; 3B
	and $36333A.l,X		; 3F 3A 33 36
	rol A		; 2A
	bit $14.b		; 24 14
	inc $0FB7.w,X		; FE B7 0F
	inc $24FC.w,X		; FE FC 24
	ora $2D1F25.l,X		; 1F 25 1F 2D
	ora $011F3F.l,X		; 1F 3F 1F 01
	eor [$DC.b],Y		; 57 DC
	ora $83.b,S		; 03 83
	ora $73.b		; 05 73
	sep #$02		; E2 02
	asl $72.b		; 06 72
	pla		; 68
	inc $05.b,X		; F6 05
	jmp $F8FCD1.l		; 5C D1 FC F8
	sbc $F5F172.l,X		; FF 72 F1 F5
	ora $55.b,S		; 03 55
	xce		; FB
	sbc $FE.b,X		; F5 FE
	pea $747E.w		; F4 7E 74
	stx $7F84.w		; 8E 84 7F
	tay		; A8
	and $1EE504.l,X		; 3F 04 E5 1E
	asl $AEFF.w		; 0E FF AE
	sbc $DF0FFC.l,X		; FF FC 0F DF
	ora $0F0F.w,Y		; 19 0F 0F
	sbc $1D680C.l,X		; FF 0C 68 1D
	cmp $FE18.w,Y		; D9 18 FE
	cmp $5D18.w,X		; DD 18 5D
	tya		; 98
	adc $DDFED3.l,X		; 7F D3 FE DD
	tya		; 98
	cpy $E289.w		; CC 89 E2
	lda $FCFEE7.l,X		; BF E7 FE FC
	adc $FFF7FE.l,X		; 7F FE F7 FF
	sbc $F4A67F.l,X		; FF 7F A6 F4
	adc $77.b		; 65 77
	ldy $B5.b		; A4 B5
	cmp $D5.b		; C5 D5
	cpx $CDD5.w		; EC D5 CD
	sty $AD.b,X		; 94 AD
	bit $4D.b,X		; 34 4D
	lda ($FE.b),Y		; B1 FE
	mvn $46,$1F		; 54 1F 46
	eor $8FA93E.l,X		; 5F 3E A9 8F
	tsx		; BA
	cmp $FFBFFF.l,X		; DF FF BF FF
	eor [$FF.b]		; 47 FF
	brk $7F.b		; 00 7F
	sbc ($FF.b,S),Y		; F3 FF
	eor $FD.b,S		; 43 FD
	cmp [$FA.b]		; C7 FA
	lsr $FE76.w		; 4E 76 FE
	cpy #$1F.b		; C0 1F
	pea $ABFE.w		; F4 FE AB
	sbc $FAFD.w,X		; FD FD FA
	sbc $E2F7.w,Y		; F9 F7 E2
	pea $F8FE.w		; F4 FE F8
	inc $9070.w,X		; FE 70 90
	inc $D0B0.w,X		; FE B0 D0
	iny		; C8
	lda $F868FE.l,X		; BF FE 68 F8
	plp		; 28
	pla		; 68
	clc		; 18
	sei		; 78
	php		; 08
	pla		; 68
	inc $E9.b,X		; F6 E9
	cmp ($38.b),Y		; D1 38
	beq -104.b		; F0 98
	beq -120.b		; F0 88
	phk		; 4B
	sbc ($4C.b,X)		; E1 4C
	cmp ($7E.b,X)		; C1 7E
	cld		; D8
	sbc #$FE.b		; E9 FE
	ror $93.b,X		; 76 93
	plx		; FA
	tsa		; 3B
	sbc [$7F.b],Y		; F7 7F
	ply		; 7A
	lda $FE817F.l,X		; BF 7F 81 FE
	sbc $7F89.w,X		; FD 89 7F
	sta $7F.b		; 85 7F
	eor $3F.b		; 45 3F
	trb $1E38.w		; 1C 38 1E
	ldx $FFD8.w,Y		; BE D8 FF
	inc $FE5E.w,X		; FE 5E FE
	lda $D9.b		; A5 D9
	ldx $9E4A.w,Y		; BE 4A 9E
	adc $18248F.l		; 6F 8F 24 18
	ldy #$18.b		; A0 18
	inc $FE9E.w,X		; FE 9E FE
	dec $E0FE.w,X		; DE FE E0
	dec $FEC0.w,X		; DE C0 FE
	bne  -1.b		; D0 FF
	sbc $0A10E1.l,X		; FF E1 10 0A
	and $1D3D1D.l,X		; 3F 1D 3D 1D
	and $1F.b,X		; 35 1F
	tsa		; 3B
	tas		; 1B
	inc $1939.w,X		; FE 39 19
	ora $1B3F8E.l,X		; 1F 8E 3F 1B
	ora $0F.b,X		; 15 0F
	jsl $20FE1F.l		; 22 1F FE 20
	ora $585124.l,X		; 1F 24 51 58
	inc $FC26.w,X		; FE 26 FC
	.db $62, $F2, $FF		; 62 F2 FF
	tsb $C4.b		; 04 C4
	sbc $1EF7FE.l,X		; FF FE F7 1E
	ror A		; 6A
	pea $E327.w		; F4 27 E3
	inc $EBFE.w,X		; FE FE EB
	ror A		; 6A
	adc $F7F16A.l,X		; 7F 6A F1 F7
	ror $F6.b,X		; 76 F6
	lda $FDFCFE.l,X		; BF FE FC FD
	jmp ($78FA.w,X)		; 7C FA 78
	sta $6A.b,X		; 95 6A
	sbc ($FE.b,S),Y		; F3 FE
	jsr ($FF83.w,X)		; FC 83 FF
	sta [$FF.b]		; 87 FF
	bcs -16.b		; B0 F0
	beq -104.b		; F0 98
	inc $D8F0.w,X		; FE F0 D8
	cpx #$C8.b		; E0 C8
	inc $CCE8.w,X		; FE E8 CC
	cli		; 58
	ora $D84C11.l		; 0F 11 4C D8
	cpy $F068.w		; CC 68 F0
	inc $4528.w,X		; FE 28 45
	asl $FE1E.w,X		; 1E 1E FE
	bit $F8.b,X		; 34 F8
	ldy $F8.b,X		; B4 F8
	jsr ($3B37.w,X)		; FC 37 3B
	and $8631.w,Y		; 39 31 86
	sbc $757FFE.l,X		; FF FE 7F 75
	inc $7D75.w,X		; FE 75 7D
	rtl		; 6B

	jmp $2C6A67.l		; 5C 67 6A 2C
	ora $2EBD38.l,X		; 1F 38 BD 2E
	inc $3F4A.w,X		; FE 4A 3F
	inc $3F7F.w,X		; FE 7F 3F
	eor $563F.w,X		; 5D 3F 56
	sbc $AA.b		; E5 AA
	sbc [$5F.b]		; E7 5F
	sbc ($40.b,X)		; E1 40
	ldx #$E0.b		; A2 E0
	asl A		; 0A
	sty $E6.b,X		; 94 E6
	eor ($A8.b)		; 52 A8
	ora $3065.w		; 0D 65 30
	tsb $F7F0.w		; 0C F0 F7
	lda $020401.l,X		; BF 01 04 02
	ora $EB.b		; 05 EB
	cmp $0403.w,Y		; D9 03 04
	brk $0F.b		; 00 0F
	ora $F5FF1F.l,X		; 1F 1F FF F5
	sbc $EA8700.l,X		; FF 00 87 EA
	jmp.w [$E5FD]		; DC FD E5
	trb $E003.w		; 1C 03 E0
	jsl $FF7FF7.l		; 22 F7 7F FF
	sta $7E.b		; 85 7E
	bit $D11A.w,X		; 3C 1A D1
	txa		; 8A
	sta ($7F.b,X)		; 81 7F
	ror $9FFF.w,X		; 7E FF 9F
	xce		; FB
	sbc $60.b,S		; E3 60
	inc $2F.b		; E6 2F
	jmp.w [$1601]		; DC 01 16
	ora ($FF.b,X)		; 01 FF
	rts		; 60

	ror $CEE1.w,X		; 7E E1 CE
	eor [$00.b]		; 47 00
	ror $AA.b		; 66 AA
	sta ($FF.b,X)		; 81 FF
	lda ($9B.b)		; B2 9B
	adc ($CD.b,X)		; 61 CD
	sbc ($EA.b)		; F2 EA
	lda $E2.b,X		; B5 E2
	cmp $B3F1.w,X		; DD F1 B3
	phx		; DA
	inc $FFFD.w,X		; FE FD FF
	nop		; EA
	eor ($3F.b)		; 52 3F
	sed		; F8
	sbc #$8D.b		; E9 8D
	ldy $05.b,X		; B4 05
	jmp $45BD26.l		; 5C 26 BD 45
	jmp $4A9DA6.l		; 5C A6 9D 4A
	and $8527.w,X		; 3D 27 85
	tay		; A8
	adc $E67DCA.l,X		; 7F CA 7D E6
	plp		; 28
	sbc ($37.b)		; F2 37
	pea $3FFF.w		; F4 FF 3F
	inc $6F57.w,X		; FE 57 6F
	adc [$5F.b]		; 67 5F
	rti		; 40

	sbc $CD5F.w,X		; FD 5F CD
	sbc $477F.w		; ED 7F 47
	sbc [$D7.b],Y		; F7 D7
	asl $86.b,X		; 16 86
	adc [$2C.b]		; 67 2C
	sbc ($FA.b)		; F2 FA
	rol $F3.b		; 26 F3
	inc $FFF0.w,X		; FE F0 FF
	inc $FFFF.w,X		; FE FF FF
	clv		; B8
	bra -88.b		; 80 A8
	ldy #$B8.b		; A0 B8
	bne -80.b		; D0 B0
	tya		; 98
	ldy $9C.b,X		; B4 9C
	bit $9C.b,X		; 34 9C
	sty $0CAC.w		; 8C AC 0C
	bit $F86B.w		; 2C 6B F8
	sei		; 78
	cpy #$58.b		; C0 58
	cpx #$F1.b		; E0 F1
	phx		; DA
	sbc ($F4.b),Y		; F1 F4
	inc $F478.w,X		; FE 78 F4
	sed		; F8
	pea $0FE3.w		; F4 E3 0F
	ora $FE1E5E.l,X		; 1F 5E 1E FE
	bit $3F43.w		; 2C 43 3F
	eor $4F7F1F.l,X		; 5F 1F 7F 4F
	bne  -2.b		; D0 FE
	and $3F617F.l,X		; 3F 7F 61 3F
	inc $60F7.w,X		; FE F7 60
	inc $F3FD.w,X		; FE FD F3
	lda $BFDF35.l,X		; BF 35 DF BF
	inc $DF75.w,X		; FE 75 DF
	eor $6FCFEF.l		; 4F EF CF 6F
	cmp $126F.w,X		; DD 6F 12
	jsr ($91C4.w,X)		; FC C4 91
	inc $A2FD.w,X		; FE FD A2
	inc $1B3F.w,X		; FE 3F 1B
	and ($14.b,S),Y		; 33 14
	and $1A787F.l,X		; 3F 7F 78 1A
	dec A		; 3A
	ora $221733.l,X		; 1F 33 17 22
	ora [$3B.b],Y		; 17 3B
	inc $2477.w,X		; FE 77 24
	ora $BE3F2F.l,X		; 1F 2F 3F BE
	asl $E9.b		; 06 E9
	jsr $2C1F.w		; 20 1F 2C
	ora $4CFC28.l,X		; 1F 28 FC 4C
	and $1FC4C4.l,X		; 3F C4 C4 1F
	cpx #$23.b		; E0 23
	sbc ($84.b)		; F2 84
	cpy $E4.b		; C4 E4
	cpx $A4.b		; E4 A4
	sbc $E7FF.w,X		; FD FF E7
	and [$DD.b]		; 27 DD
	ora $28E7E3.l,X		; 1F E3 E7 28
	sbc ($17.b,S),Y		; F3 17
	sbc ($FE.b,S),Y		; F3 FE
	jsr ($77F5.w,X)		; FC F5 77
	sbc $6CEA6B.l		; EF 6B EA 6C
	cpx #$F0.b		; E0 F0
	jsr ($EEFE.w,X)		; FC FE EE
	rtl		; 6B

	adc $8A8BFE.l		; 6F FE 8B 8A
	sbc $94FFA3.l,X		; FF A3 FF 94
	sbc $FEFC97.l,X		; FF 97 FC FE
	jsr ($FFF4.w,X)		; FC F4 FF
	cld		; D8
	cpy $F4E0.w		; CC E0 F4
	pea $FFF1.w		; F4 F1 FF
	inc $EC.b,X		; F6 EC
	inc $EEB4.w,X		; FE B4 EE
	pea $E6EE.w		; F4 EE E6
	sbc $1CF834.l		; EF 34 F8 1C
	sed		; F8
	sbc $1ADF.w,X		; FD DF 1A
	jsr ($FEFE.w,X)		; FC FE FE
	ora $6EFE.w,Y		; 19 FE 6E
	adc ($4A.b)		; 72 4A
	eor ($C2.b)		; 52 C2
	cmp ($E6.b)		; D2 E6
	dec $EB.b,X		; D6 EB
	sbc ($C3.b),Y		; F1 C3
	adc $FEDEDF.l,X		; 7F DF DE FE
	inc $3F5D.w,X		; FE 5D 3F
	adc $BD3F.w,X		; 7D 3F BD
	adc $B07FB9.l,X		; 7F B9 7F B0
	sty $FE4F.w		; 8C 4F FE
	lda ($FE.b),Y		; B1 FE
	cmp ($80.b,X)		; C1 80
	rep #$82		; C2 82
	php		; 08
	adc $FE7DFE.l,X		; 7F FE 7D FE
	sta [$C8.b]		; 87 C8
	dey		; 88
	eor ($80.b,X)		; 41 80
	eor $81.b,S		; 43 81
	inc A		; 1A
	inc $47FE.w,X		; FE FE 47
	sta $FE.b,S		; 83 FE
	mvp $4F,$83		; 44 83 4F
	sta [$80.b]		; 87 80
	brk $FF.b		; 00 FF
	ora $9C0070.l,X		; 1F 70 00 9C
	bra -25.b		; 80 E7
	cpx #$F9.b		; E0 F9
	sed		; F8
	inc $6FFE.w,X		; FE FE 6F
	adc $7EEFFF.l		; 6F FF EF 7E
	adc $F0F0.w		; 6D F0 F0
	bra 124.b		; 80 7C
	cpx #$1F.b		; E0 1F
	sed		; F8
	adc #$51.b		; 69 51
	sbc [$49.b]		; E7 49
	bpl  48.b		; 10 30
	sbc ($06.b),Y		; F1 06
	sbc $F132C1.l,X		; FF C1 32 F1
	stx $04.b		; 86 04
	sbc ($02.b,X)		; E1 02
	sei		; 78
	ora [$FD.b]		; 07 FD
	sta $09.b,S		; 83 09
	ldx #$B4.b		; A2 B4
	ora [$FD.b],Y		; 17 FD
	sta [$03.b]		; 87 03
	sbc $07.b,S		; E3 07
	adc ($29.b),Y		; 71 29
	cld		; D8
	sec		; 38
	eor #$FE.b		; 49 FE
	sed		; F8
	sed		; F8
	ora ($FF.b,X)		; 01 FF
	.db $42, $AA		; 42 AA
	inc $1801.w		; EE 01 18
	sbc [$63.b]		; E7 63
	and $FB6FAF.l,X		; 3F AF 6F FB
	sta ($E5.b)		; 92 E5
	eor $C3.b,X		; 55 C3
	cmp $64.b,S		; C3 64
	sbc ($3F.b,S),Y		; F3 3F
	lda ($1E.b),Y		; B1 1E
	stx $81.b		; 86 81
	and $0B0FAE.l,X		; 3F AE 0F 0B
	plx		; FA
	bra 127.b		; 80 7F
	ora $F7F44E.l,X		; 1F 4E F4 F7
	cpx $D0.b		; E4 D0
	asl A		; 0A
	ldy $3D6A.w		; AC 6A 3D
	tyx		; BB
	adc $EDD7FB.l		; 6F FB D7 ED
	ora $CC2BFB.l,X		; 1F FB 2B CC
	rep #$C1		; C2 C1
	xce		; FB
	brk $C7.b		; 00 C7
	sbc $E9D0F3.l,X		; FF F3 D0 E9
	sbc $7FF0FC.l,X		; FF FC F0 7F
	cmp $BF.b,S		; C3 BF
	tsb $0D.b		; 04 0D
	sbc $F9C9.w,Y		; F9 C9 F9
	xba		; EB
	sbc $BBFD.w,Y		; F9 FD BB
	tsa		; 3B
	cmp $BE8578.l,X		; DF 78 85 BE
	xba		; EB
	sbc ($DF.b,S),Y		; F3 DF
	and $BAFCE6.l		; 2F E6 FC BA
	jsr ($FFD8.w,X)		; FC D8 FF
	sbc $751FF0.l,X		; FF F0 1F 75
	eor $67.b		; 45 67
	eor $C7.b,X		; 55 C7
	adc [$57.b],Y		; 77 57
	sbc [$F6.b],Y		; F7 F6
	inc $F4.b,X		; F6 F4
	pea $D4DA.w		; F4 DA D4
	ora [$A3.b]		; 07 A3
	inx		; E8
	xce		; FB
	sbc ($FF.b)		; F2 FF
	inc $F268.w,X		; FE 68 F2
	sbc ($B8.b),Y		; F1 B8
	sbc $D25EF0.l,X		; FF F0 5E D2
	sty $B42C.w		; 8C 2C B4
	ldy $34.b		; A4 34
	bit $36.b		; 24 36
	rol $FE.b		; 26 FE
	jsr $2E20.w		; 20 20 2E
	adc $A02008.l,X		; 7F 08 20 A0
	rol $F4F8.w		; 2E F8 F4
	bvs  -4.b		; 70 FC
	beq  -2.b		; F0 FE
	inc $FFD9.w,X		; FE D9 FF
	inc $FEEE.w,X		; FE EE FE
	adc $9A.b,S		; 63 9A
	and [$67.b]		; 27 67
	and ($61.b,X)		; 21 61
	sec		; 38
	rts		; 60

	rol $F760.w,X		; 3E 60 F7
	plx		; FA
	and [$78.b]		; 27 78
	adc ($7E.b,X)		; 61 7E
	tsb $78F2.w		; 0C F2 78
	and $9D4A7E.l,X		; 3F 7E 4A 9D
	pha		; 48
	sta $676F.w,Y		; 99 6F 67
	adc [$FF.b],Y		; 77 FF
	ora [$A7.b]		; 07 A7
	sbc [$BF.b],Y		; F7 BF
	sbc [$3B.b],Y		; F7 3B
	adc ($31.b,S),Y		; 73 31
	adc $78B4.w,Y		; 79 B4 78
	ldx $78.b,Y		; B6 78
	ldx $88.b		; A6 88
	sbc ($0D.b)		; F2 0D
	sei		; 78
	inc $5144.w,X		; FE 44 51
	jmp ($F0B7.w,X)		; 7C B7 F0
	ora $FEFB.w,X		; 1D FB FE
	lda $F9.b,X		; B5 F9
	lda ($F9.b),Y		; B1 F9
	bcs -110.b		; B0 92
	sbc ($37.b,X)		; E1 37
	sei		; 78
	stx $18.b		; 86 18
	inc $BF4C.w,X		; FE 4C BF
	inc $FE4E.w,X		; FE 4E FE
	eor $FEC3E3.l		; 4F E3 C3 FE
	cmp $E4F4FE.l		; CF FE F4 E4
	jsr ($FEEC.w,X)		; FC EC FE
	beq  95.b		; F0 5F
	eor $E0.b,S		; 43 E0
	inx		; E8
	cpx #$68.b		; E0 68
	rts		; 60

	clc		; 18
	stx $89.b,Y		; 96 89
	tsb $FBF1.w		; 0C F1 FB
	inc $071B.w,X		; FE 1B 07
	cli		; 58
	phx		; DA
	lda ($9B.b),Y		; B1 9B
	sbc $19FE09.l,X		; FF 09 FE 19
	ora $10F206.l		; 0F 06 F2 10
	and $F104FC.l		; 2F FC 04 F1
	inc $2B2F.w,X		; FE 2F 2B
	pea $F704.w		; F4 04 F7
	sbc $FE3F.w,X		; FD 3F FE
	pei ($FF.b)		; D4 FF
	lsr $EF.b		; 46 EF
.ACCU 8
	sep #$EB		; E2 EB
	ldx #$FB.b		; A2 FB
	inc $FB.b,X		; F6 FB
	sbc [$FB.b],Y		; F7 FB
	jsr ($FDC7.w,X)		; FC C7 FD
	stp		; DB
	cmp [$7B.b],Y		; D7 7B
	eor [$19.b],Y		; 57 19
	inc $FE1D.w,X		; FE 1D FE
	ora $E1FE.w		; 0D FE E1
	cpy #$0C.b		; C0 0C
	sbc $FF2CFE.l,X		; FF FE 2C FF
	ldy $FF7A.w		; AC 7A FF
	cmp $A8A839.l,X		; DF 39 A8 A8
	and ($20.b,X)		; 21 20
	adc $67BB20.l		; 6F 20 BB 67
	adc $7FB1FF.l,X		; 7F FF B1 7F
	and ($24.b),Y		; 31 24
	lda ($FE.b,X)		; A1 FE
	sbc $F69E77.l,X		; FF 77 9E F6
	jsr ($88C8.w,X)		; FC C8 88
	php		; 08
	lsr $5010.w		; 4E 10 50
	bne  80.b		; D0 50
	jsr ($7073.w,X)		; FC 73 70
	bne  -1.b		; D0 FF
	lda ($FE.b),Y		; B1 FE
	cmp ($3F.b,X)		; C1 3F
	cpy #$4F.b		; C0 4F
	sta [$C9.b]		; 87 C9
	sta [$DF.b]		; 87 DF
	sta $FFAFFE.l		; 8F FE AF FF
	sbc $00731B.l,X		; FF 1B 73 00
	plb		; AB
	tyx		; BB
	ldx $F9AA.w		; AE AA F9
	ldy $F5A2.w		; AC A2 F5
	bvs  -1.b		; 70 FF
	txa		; 8A
	cmp $07.b,X		; D5 07
	sbc $1CFD5B.l,X		; FF 5B FD 1C
	jsr ($4454.w,X)		; FC 54 44
	sbc ($57.b),Y		; F1 57
	ldx $9CD1.w,Y		; BE D1 9C
	pea $314C.w		; F4 4C 31
	sbc $8081.w,Y		; F9 81 80
	ora $0065F7.l,X		; 1F F7 65 00
	cpx #$1F.b		; E0 1F
	ora $BA8B.w,X		; 1D 8B BA
	sed		; F8
	adc $E00710.l,X		; 7F 10 07 E0
	adc $0CFF.w,Y		; 79 FF 0C
	sbc $E9FFF2.l,X		; FF F2 FF E9
	cpx #$47.b		; E0 47
	dec $8F.b		; C6 8F
	php		; 08
	and $8FFFF0.l,X		; 3F F0 FF 8F
	sbc $05FAC0.l,X		; FF C0 FA 05
	sbc [$10.b]		; E7 10
	dex		; CA
	bit $9D.b		; 24 9D
	.db $42, $C7		; 42 C7
	sec		; 38
	sta $F2BF00.l		; 8F 00 BF F2
	tay		; A8
	beq  -9.b		; F0 F7
	php		; 08
	sbc $23DF17.l		; EF 17 DF 23
	sbc $92FB17.l,X		; FF 17 FB 92
	eor $AB.b,X		; 55 AB
	sbc $5FAA07.l,X		; FF 07 AA 5F
	cmp $DEDE5F.l,X		; DF 5F DE DE
	ora $FE41B6.l		; 0F B6 41 FE
	xce		; FB
	inc $AB54.w,X		; FE 54 AB
	sed		; F8
	ora [$A0.b]		; 07 A0
	eor $217FA0.l,X		; 5F A0 7F 21
	cli		; 58
	sbc ($FA.b),Y		; F1 FA
	ora $FFF2.w,Y		; 19 F2 FF
	cmp $75.b,S		; C3 75
	lsr $F2E5.w		; 4E E5 F2
	sbc $FA.b,X		; F5 FA
	sbc $F5F6.w,X		; FD F6 F5
	ldx $1D.b		; A6 1D
	jsr ($7FE7.w,X)		; FC E7 7F
	pea $8F1C.w		; F4 1C 8F
	jmp ($FC1F.w,X)		; 7C 1F FC
	ora $FC07FC.l		; 0F FC 07 FC
	phk		; 4B
	bit #$FC.b		; 89 FC
	ora $E7FFFF.l,X		; 1F FF FF E7
	and [$DD.b]		; 27 DD
	plp		; 28
	cmp ($3F.b)		; D2 3F
	iny		; C8
	sec		; 38
	cmp $3FC73C.l		; CF 3C C7 3F
	dec $3E.b		; C6 3E
	cmp ($F8.b,X)		; C1 F8
	and $DA1FFC.l,X		; 3F FC 1F DA
	ora $CF0FDF.l		; 0F DF 0F CF
	ora [$FE.b]		; 07 FE
	cmp [$03.b]		; C7 03
	cmp [$02.b]		; C7 02
	cmp $FF.b,S		; C3 FF
	lda $E702.w,X		; BD 02 E7
	sbc [$F7.b],Y		; F7 F7
	lda $FD0B1B.l		; AF 1B 0B FD
	ora #$7E.b		; 09 7E
	cpx #$7D.b		; E0 7D
	clc		; 18
	sbc $FFFF58.l,X		; FF 58 FF FF
	stz $F2.b		; 64 F2
	cmp $E793FF.l		; CF FF 93 E7
	tsb $E1.b		; 04 E1
	ora ($E0.b,X)		; 01 E0
	brk $2E.b		; 00 2E
	ldx $A0AF.w		; AE AF A0
	inc $FFA1.w,X		; FE A1 FF
	sta [$FF.b]		; 87 FF
	ldy #$F7.b		; A0 F7
	tay		; A8
	clv		; B8
	cpx $26F5.w		; EC F5 26
	plx		; FA
	ora $EE.b,S		; 03 EE
	inc $C708.w,X		; FE 08 C7
	eor $EFF1EF.l,X		; 5F EF F1 EF
	beq  -2.b		; F0 FE
	sbc ($E7.b,S),Y		; F3 E7
	sec		; 38
	adc ($4C.b,S),Y		; 73 4C
	sec		; 38
	trb $00F2.w		; 1C F2 00
	adc ($FE.b,X)		; 61 FE
	ora $3C.b		; 05 3C
	adc ($FE.b),Y		; 71 FE
	sta [$20.b],Y		; 97 20
	bvc  -8.b		; 50 F8
	sbc ($DD.b),Y		; F1 DD
	sta $EA45.w,Y		; 99 45 EA
	inc $FFE0.w		; EE E0 FF
	bmi -17.b		; 30 EF
	sbc [$AF.b],Y		; F7 AF
	pla		; 68
	tsa		; 3B
	jsr ($CD38.w,X)		; FC 38 CD
	cpy $F7FF.w		; CC FF F7
	ora [$FC.b],Y		; 17 FC
	ora ($FA.b,X)		; 01 FA
	cop $03.b		; 02 03
	jsr ($FE10.w,X)		; FC 10 FE
	stz $01EA.w,X		; 9E EA 01
	inc $0732.w,X		; FE 32 07
	lda [$68.b]		; A7 68
	sta [$48.b]		; 87 48
	sty $1E.b,X		; 94 1E
	cop $4B.b		; 02 4B
	sei		; 78
	cmp $FDFE.w,Y		; D9 FE FD
	jsr ($0329.w,X)		; FC 29 03
	tsx		; BA
	ldy #$C1.b		; A0 C1
	cmp ($FE.b,X)		; C1 FE
	plx		; FA
	sep #$03		; E2 03
	sbc $F5.b,S		; E3 F5
	lda $F03F.w,Y		; B9 3F F0
	cld		; D8
	ora $78.b,S		; 03 78
	sta $67.b,S		; 83 67
	txy		; 9B
	sbc [$69.b]		; E7 69
	.db $62, $F5, $7E		; 62 F5 7E
	sbc $F10C0A.l,X		; FF 0A 0C F1
	cmp $FF9FFB.l,X		; DF FB 9F FF
	bra  -7.b		; 80 F9
	lda $8F0A.w,X		; BD 0A 8F
	phd		; 0B
	eor $2589.w		; 4D 89 25
	sbc $CDC15F.l,X		; FF 5F C1 CD
	and ($E2.b),Y		; 31 E2
	trb $1EF0.w		; 1C F0 1E
	sbc $7F0E.w,Y		; F9 0E 7F
	sta $F6FFF4.l		; 8F F4 FF F6
	ldx $ECBA.w,Y		; BE BA EC
	sbc $C23F6A.l,X		; FF 6A 3F C2
	cmp ($1F.b,X)		; C1 1F
	sta $5357F3.l		; 8F F3 57 53
	sbc [$E1.b],Y		; F7 E1
	eor $01.b		; 45 01
	and $5BA5C4.l,X		; 3F C4 A5 5B
	lda $DB.b		; A5 DB
	lda $9F.b		; A5 9F
	sbc $98.b,S		; E3 98
	ldy $BEFE.w		; AC FE BE
	ldx #$BE.b		; A2 BE
	brk $B0.b		; 00 B0
	asl A		; 0A
	cmp $7F7FF0.l		; CF F0 7F 7F
	cli		; 58
	eor ($92.b,S),Y		; 53 92
	adc $4C.b,S		; 63 4C
	tay		; A8
	adc ($EE.b,X)		; 61 EE
	adc $E733.w,Y		; 79 33 E7
	tsb $D1A0.w		; 0C A0 D1
	sbc [$FD.b]		; E7 FD
	sbc $5D387F.l,X		; FF 7F 38 5D
	adc ($FD.b,S),Y		; 73 FD
	cmp ($3F.b,X)		; C1 3F
	cmp ($83.b)		; D2 83
	adc $596DFE.l,X		; 7F FE 6D 59
	iny		; C8
	cpx $FF.b		; E4 FF
	cop $FC.b		; 02 FC
	plx		; FA
	php		; 08
	ror $DCFA.w,X		; 7E FA DC
	sta $EA6055.l		; 8F 55 60 EA
	rts		; 60

	sei		; 78
	bpl  16.b		; 10 10
	beq  31.b		; F0 1F
	beq  16.b		; F0 10
	adc ($18.b,X)		; 61 18
	lda [$1F.b],Y		; B7 1F
	ora ($FE.b)		; 12 FE
	asl $1FFE.w,X		; 1E FE 1F
	brk $CC.b		; 00 CC
	tsa		; 3B
	inc $BCA2.w,X		; FE A2 BC
	ora ($FE.b),Y		; 11 FE
	rol $9581.w,X		; 3E 81 95
	.db $82, $77, $F8		; 82 77 F8
	sbc $FE2F.w,X		; FD 2F FE
	lda $9B.b,S		; A3 9B
	sbc [$F8.b],Y		; F7 F8
	tyx		; BB
	eor ($79.b,X)		; 41 79
	bra  -8.b		; 80 F8
	brk $BA.b		; 00 BA
	txs		; 9A
	cpy $FF.b		; C4 FF
	inc $FCFC.w,X		; FE FC FC
	ora $5FFE.w,Y		; 19 FE 5F
	sta $BEDF3F.l,X		; 9F 3F DF BE
	eor $7F.b,X		; 55 7F
	nop		; EA
	lda $5CBC5F.l,X		; BF 5F BC 5C
	adc $46F6CF.l		; 6F CF F6 46
	eor $41E0.w,X		; 5D E0 41
	adc #$60.b		; 69 60
	sbc $633FFF.l,X		; FF FF 3F 63
	and $793F70.l,X		; 3F 70 3F 79
	and $E5C6A5.l,X		; 3F A5 C6 E5
	sbc [$E4.b]		; E7 E4
	inc $BC.b		; E6 BC
	asl $F4.b		; 06 F4
	and $9DEE3C.l,X		; 3F 3C EE 9D
	ror $9EA4.w,X		; 7E A4 9E
	cpy #$3E.b		; C0 3E
	lsr $1E.b,X		; 56 1E
	sbc $FD1F.w,X		; FD 1F FD
	bvc   8.b		; 50 08
	plx		; FA
	jsr ($FC7F.w,X)		; FC 7F FC
	cmp ($DF.b,X)		; C1 DF
	sta [$A4.b]		; 87 A4
	and $C0BFC0.l,X		; 3F C0 BF C0
	rti		; 40

	sbc ($F1.b),Y		; F1 F1
	cpy #$00.b		; C0 00
	adc $4A.b,X		; 75 4A
	inc $FEDF.w,X		; FE DF FE
	rep #$C3		; C2 C3
	cmp ($01.b,X)		; C1 01
	eor ($81.b,X)		; 41 81
	sbc $5DFF82.l		; EF 82 FF 5D
	wai		; CB
	eor $E01F6F.l		; 4F 6F 1F E0
	txs		; 9A
	sbc $DFE577.l,X		; FF 77 E5 DF
	rts		; 60

	nop		; EA
	adc $F0.b,X		; 75 F0
	adc $C70383.l,X		; 7F 83 03 C7
	clc		; 18
	bvs -90.b		; 70 A6
	sbc ($05.b)		; F2 05
	cpx #$08.b		; E0 08
	sbc ($FA.b),Y		; F1 FA
	sta $FC.b		; 85 FC
	stz $FFF9.w		; 9C F9 FF
	beq  -1.b		; F0 FF
	lda $AC07FB.l,X		; BF FB 07 AC
	mvn $06,$FD		; 54 FD 06
	lda $F955.w		; AD 55 F9
	ora ($81.b,X)		; 01 81
	sbc $03FB.w,Y		; F9 FB 03
	ora $42807B.l		; 0F 7B 80 42
	cmp $5307.w,Y		; D9 07 53
	rol A		; 2A
	cmp $0253.w,Y		; D9 53 02
	ora [$FE.b]		; 07 FE
	sbc $FF.b,X		; F5 FF
	sec		; 38
	sec		; 38
	sbc [$F8.b]		; E7 F8
	sbc [$5F.b]		; E7 5F
	adc [$DF.b]		; 67 DF
	adc [$F8.b]		; 67 F8
	bcs -45.b		; B0 D3
	cpy $FC7C.w		; CC 7C FC
	.db $62, $E7, $E0		; 62 E7 E0
	and [$E0.b]		; 27 E0
	lda [$FE.b]		; A7 FE
	jsr $20E7.w		; 20 E7 20
	sbc $2C2FFE.l		; EF FE 2F 2C
	cmp $03E1.w,X		; DD E1 03
	plx		; FA
	ora [$FA.b]		; 07 FA
	sbc [$F4.b],Y		; F7 F4
	sbc $040FF4.l,X		; FF F4 0F 04
	ldy #$71.b		; A0 71
	ldy $20.b,X		; B4 20
	inc $2BF8.w,X		; FE F8 2B
	sbc ($06.b),Y		; F1 06
	sta $9A.b		; 85 9A
	sbc $9A78.w,X		; FD 78 9A
	pea $FFFF.w		; F4 FF FF
	ora [$6C.b]		; 07 6C
	eor #$37.b		; 49 37
	iny		; C8
	stx $79.b		; 86 79
	cmp $35FA70.l		; CF 70 FA 35
	sbc $BFFD20.l,X		; FF 20 FD BF
	sbc ($00.b),Y		; F1 00
	pld		; 2B
	txy		; 9B
	sed		; F8
	ror $7F79.w,X		; 7E 79 7F
	bvs  58.b		; 70 3A
	and $3F.b,X		; 35 3F
	jsr $0F1F.w		; 20 1F 0F
	beq  31.b		; F0 1F
	inc $E2.b,X		; F6 E2
	jsr ($4AB5.w,X)		; FC B5 4A
	cmp $6F9020.l,X		; DF 20 90 6F
	iny		; C8
	and $F8E82F.l,X		; 3F 2F E8 F8
	tsb $62.b		; 04 62
	brk $A0.b		; 00 A0
	lsr A		; 4A
	jsr ($F840.w,X)		; FC 40 F8
	clc		; 18
	sbc $DCFC10.l		; EF 10 FC DC
	beq   0.b		; F0 00
	ldx $710A.w,Y		; BE 0A 71
	eor $DAA6.w,Y		; 59 A6 DA
	cop $84.b		; 02 84
	lda $7094.w		; AD 94 70
	sbc ($CE.b),Y		; F1 CE
	ora $893A47.l		; 0F 47 3A 89
	lda $BC.b,S		; A3 BC
	cmp ($FF.b,X)		; C1 FF
	sbc $00B1C9.l,X		; FF C9 B1 00
	ora ($7F.b,X)		; 01 7F
	adc $861E1E.l,X		; 7F 1E 1E 86
	asl $E3.b		; 06 E3
	cop $7B.b		; 02 7B
	.db $82, $1E, $E3		; 82 1E E3
	stx $5F.b		; 86 5F
	eor $FFE1FB.l,X		; 5F FB E1 FF
	.db $82, $FF, $E3		; 82 FF E3
	dex		; CA
	cmp $F8FF.w,Y		; D9 FF F8
	asl A		; 0A
	adc $9F40C0.l,X		; 7F C0 40 9F
	ora #$59.b		; 09 59
	sbc $C2CB4A.l,X		; FF 4A CB C2
	cop $9F.b		; 02 9F
	tsa		; 3B
	.db $82, $80, $7F		; 82 80 7F
	lda $CBC3BF.l,X		; BF BF C3 CB
	jsl $F80403.l		; 22 03 04 F8
	inc $1AFB.w,X		; FE FB 1A
	stp		; DB
	bit $0CFC.w,X		; 3C FC 0C
	adc $68.b,S		; 63 68
	adc $0604FC.l,X		; 7F FC 04 06
	stz $94FC.w		; 9C FC 94
	inc $F8FF.w,X		; FE FF F8
	txs		; 9A
	sbc $F70CF3.l,X		; FF F3 0C F7
	php		; 08
	sta $E1E1F0.l		; 8F F0 E1 E1
	adc $DC60F0.l		; 6F F0 60 DC
	and $FE43FC.l,X		; 3F FC 43 FE
	ora $8C6300.l		; 0F 00 63 8C
	phd		; 0B
	brk $13.b		; 00 13
	inc $FE23.w,X		; FE 23 FE
	eor $FA.b,S		; 43 FA
	eor $FE.b,S		; 43 FE
	sbc $04C9.w,X		; FD C9 04
	sbc ($7F.b),Y		; F1 7F
	sta $E00FEF.l,X		; 9F EF 0F E0
	asl A		; 0A
	jmp $BDE8.w		; 4C E8 BD
	sbc $0289F8.l,X		; FF F8 89 02
	pea $1F00.w		; F4 00 1F
	ora $8B.b		; 05 8B
	plb		; AB
	ora $0D.b		; 05 0D
	sbc [$F8.b],Y		; F7 F8
	lda [$B8.b],Y		; B7 B8
	sta ($FF.b,S),Y		; 93 FF
	sbc $8E859C.l,X		; FF 9C 85 8E
	.db $82, $8B, $01		; 82 8B 01
	ora #$07.b		; 09 07
	php		; 08
	ply		; 7A
	beq -120.b		; F0 88
	bvs -56.b		; 70 C8
	bvs -24.b		; 70 E8
	sbc $707F.w		; ED 7F 70
	sed		; F8
	cop $F1.b		; 02 F1
	ror $B1BB.w,X		; 7E BB B1
	eor $40CFF7.l,X		; 5F F7 CF 40
	sbc $CC4B.w,X		; FD 4B CC
	sei		; 78
	inc $E1FC.w,X		; FE FC E1
	inc $C87F.w,X		; FE 7F C8
	cmp [$70.b]		; C7 70
	adc $77FE37.l,X		; 7F 37 FE 77
	dec A		; 3A
	sta [$7F.b]		; 87 7F
	stz $3B.b,X		; 74 3B
	adc ($39.b)		; 72 39
	inc $0871.w,X		; FE 71 08
	adc $9C08.w,Y		; 79 08 9C
.INDEX 8
	sep #$1C		; E2 1C
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	sbc $E2DCFC.l,X		; FF FC DC E2
	jmp ($3C62.w,X)		; 7C 62 3C
	jsl $DE920E.l		; 22 0E 92 DE
	.db $42, $E3		; 42 E3
	sta ($E9.b,X)		; 81 E9
	sbc $FE01E3.l,X		; FF E3 01 FE
	adc $81.b,S		; 63 81
	and $C1.b,S		; 23 C1
	sta $61.b,S		; 83 61
	eor $21.b,S		; 43 21
	adc $F04A.w,X		; 7D 4A F0
	ora $56EC75.l,X		; 1F 75 EC 56
	eor ($74.b),Y		; 51 74
	dec $07.b		; C6 07
	jmp ($7D43.w,X)		; 7C 43 7D
	.db $42, $8E		; 42 8E
	and [$FE.b],Y		; 37 FE
	bra -64.b		; 80 C0
	dey		; 88
	inc $C08A.w,X		; FE 8A C0
	sbc $991A.w,Y		; F9 1A 99
	.db $82, $FE, $0F		; 82 FE 0F
	inc $07E7.w,X		; FE E7 07
	beq  31.b		; F0 1F
	sbc $03.b,S		; E3 03
	jsr ($C000.w,X)		; FC 00 C0
	lda $5A87DF.l,X		; BF DF 87 5A
	and ($C0.b,X)		; 21 C0
	and $5258C0.l,X		; 3F C0 58 52
	lda #$5C.b		; A9 5C
	rts		; 60

	adc $C3FE40.l,X		; 7F 40 FE C3
	sbc $20203F.l,X		; FF 3F 20 20
	sbc $3A3F.w,X		; FD 3F 3A
	cpy #$17.b		; C0 17
	inx		; E8
	sbc $34DA.w,X		; FD DA 34
	ora ($FF.b,S),Y		; 13 FF
	sbc $FF9376.l,X		; FF 76 93 FF
	sta $EF10F8.l,X		; 9F F8 10 EF
	php		; 08
	ora ($05.b),Y		; 11 05
	bpl   4.b		; 10 04
	jsr $E814.w		; 20 14 E8
	trb $BF.b		; 14 BF
	sbc $CC14C8.l,X		; FF C8 14 CC
	bpl -128.b		; 10 80
	ora $E1E290.l,X		; 1F 90 E2 E1
	eor $FF.b,X		; 55 FF
	lda $0FCF3F.l,X		; BF 3F CF 0F
	adc $FBBF.w,Y		; 79 BF FB
	bra  48.b		; 80 30
	cmp $FE2738.l		; CF 38 27 FE
	and ($79.b,X)		; 21 79
	adc $7F.b,S		; 63 7F
	bmi -123.b		; 30 85
	sbc ($0F.b,X)		; E1 0F
	ora $FFC327.l		; 0F 27 C3 FF
	sbc [$3F.b]		; E7 3F
	cpx #$22.b		; E0 22
	adc $C6D9F0.l		; 6F F0 D9 C6
	adc ($0D.b)		; 72 0D
	lda $5C.b,S		; A3 5C
	eor $31.b,S		; 43 31
	jmp ($C3FC.w,X)		; 7C FC C3
	inc $FE1C.w,X		; FE 1C FE
	sed		; F8
	rol $FDF2.w,X		; 3E F2 FD
	sbc ($E1.b,X)		; E1 E1
	cmp $FE7339.l,X		; DF 39 73 FE
	rti		; 40

	cmp $1FEF3F.l		; CF 3F EF 1F
	sbc [$0F.b],Y		; F7 0F
	sbc $24.b,X		; F5 24
	and ($FF.b),Y		; 31 FF
	sta [$3B.b]		; 87 3B
	sbc $3FC23E.l,X		; FF 3E C2 3F
	cmp $F0.b,S		; C3 F0
	ora $C80FD0.l		; 0F D0 0F C8
	ora [$FE.b]		; 07 FE
	sbc ($FF.b,X)		; E1 FF
	cpy $03.b		; C4 03
	inc $01C3.w,X		; FE C3 01
	rep #$01		; C2 01
	sbc $CBDBEF.l,X		; FF EF DB CB
	cmp $F7C9.w		; CD C9 F7
	eor $FBC87E.l,X		; 5F 7E C8 FB
	cpy $D96C.w		; CC 6C D9
	ora $3ACFFF.l		; 0F FF CF 3A
	dec $FF1D.w,X		; DE 1D FF
	asl $F2AD.w,X		; 1E AD F2
	ldy $FEBF.w,X		; BC BF FE
	cmp $7A18FF.l,X		; DF FF 18 7A
	eor ($1F.b),Y		; 51 1F
	brk $90.b		; 00 90
	bra -48.b		; 80 D0
	dex		; CA
	lda $79B8BF.l,X		; BF BF B8 79
	rol A		; 2A
	bcc -32.b		; 90 E0
	bne -32.b		; D0 E0
	brk $F6.b		; 00 F6
	phy		; 5A
	sta $BFCF75.l		; 8F 75 CF BF
	sbc $FC30F5.l		; EF F5 30 FC
	eor [$D9.b],Y		; 57 D9
	lda $F9.b,S		; A3 F9
	adc $000FF0.l,X		; 7F F0 0F 00
	asl $0EA1.w		; 0E A1 0E
	mvn $01,$78		; 54 78 01
	jsr ($900F.w,X)		; FC 0F 90
	adc #$F0.b		; 69 F0
	sbc ($F0.b),Y		; F1 F0
	eor ($F0.b),Y		; 51 F0
	sbc ($87.b,X)		; E1 87
	jsr ($FEFC.w,X)		; FC FC FE
	ora $007F88.l		; 0F 88 7F 00
	and $FDEC50.l		; 2F 50 EC FD
	cmp $DE28D7.l,X		; DF D7 28 DE
	eor $70.b,X		; 55 70
	sta [$80.b]		; 87 80
	sta $D0.b,S		; 83 D0
	sta $80.b,S		; 83 80
	sta ($A8.b,X)		; 81 A8
	sta ($C8.b,X)		; 81 C8
	ror A		; 6A
	and $FC000C.l,X		; 3F 0C 00 FC
	ora [$84.b]		; 07 84
	adc $FE3EC6.l,X		; 7F C6 3E FE
	sbc $3F1C.w,X		; FD 1C 3F
	dec $FE.b		; C6 FE
	sed		; F8
	phd		; 0B
	xce		; FB
	php		; 08
	jsr ($FE7C.w,X)		; FC 7C FE
	and $30FE.w,X		; 3D FE 30
	tsb $FE1E.w		; 0C 1E FE
	sed		; F8
	tsb $ECFE.w		; 0C FE EC
	sta ($FF.b,S),Y		; 93 FF
	and $53ACFE.l,X		; 3F FE AC 53
	jsr ($EC53.w,X)		; FC 53 EC
	eor ($BC.b,S),Y		; 53 BC
	ora ($E0.b,S),Y		; 13 E0
	sbc $FC.b,S		; E3 FC
	ora $83.b,S		; 03 83
	brk $58.b		; 00 58
	sed		; F8
	inc $7CA0.w,X		; FE A0 7C
	eor $16.b,S		; 43 16
	sbc ($FA.b,X)		; E1 FA
	and $CF20C0.l		; 2F C0 20 CF
	ora [$EE.b],Y		; 17 EE
	cmp $ECD3E0.l,X		; DF E0 D3 EC
	lda $F1.b,X		; B5 F1
	beq  32.b		; F0 20
	dec A		; 3A
	and $95.b		; 25 95
	sta $FB1C.w,X		; 9D 1C FB
	inc $10CC.w,X		; FE CC 10
	beq  64.b		; F0 40
	phx		; DA
	ora $07.b		; 05 07
	php		; 08
	and $FEE1E8.l,X		; 3F E8 E1 FE
	ora #$C4.b		; 09 C4
	and ($87.b,S),Y		; 33 87
	sbc $9F71FF.l		; EF FF 71 9F
	bvs -81.b		; 70 AF
	bvs -80.b		; 70 B0
	adc $F8C0.w,Y		; 79 C0 F8
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	php		; 08
	ror $08.b,X		; 76 08
	ora $007BFE.l,X		; 1F FE 7B 00
	adc ($00.b,S),Y		; 73 00
	sta [$30.b]		; 87 30
	inc $B007.w,X		; FE 07 B0
	ora [$B0.b],Y		; 17 B0
	beq -73.b		; F0 B7
	tyx		; BB
	sbc $48A7E7.l,X		; FF E7 A7 48
	eor $29.b		; 45 29
	sec		; 38
	pha		; 48
	inc $28FE.w,X		; FE FE 28
	cli		; 58
	sta $788878.l		; 8F 78 88 78
	inc $FFFF.w		; EE FF FF
	eor ($E6.b)		; 52 E6
	phy		; 5A
	sbc ($3E.b)		; F2 3E
	plx		; FA
	rol $AE6F.w,X		; 3E 6F AE
	sbc $94.b,X		; F5 94
	bmi  81.b		; 30 51
	sta ($71.b)		; 92 71
	cmp $30.b,S		; C3 30
	jsr ($FE21.w,X)		; FC 21 FE
	adc $01.b,S		; 63 01
	inc $0173.w,X		; FE 73 01
	eor $DD03.w,Y		; 59 03 DD
	sbc $5D03FF.l,X		; FF FF 03 5D
	ora $33.b,S		; 03 33
	tsb $3C03.w		; 0C 03 3C
	asl $39.b		; 06 39
	.db $82, $0D, $E5		; 82 0D E5
	and [$2B.b],Y		; 37 2B
	sbc ($2D.b,S),Y		; F3 2D
	ora $9EF1E1.l		; 0F E1 F1 9E
	bne -60.b		; D0 C4
	cpy #$FE.b		; C0 FE
	iny		; C8
	stz $D8C0.w,X		; 9E C0 D8
	sbc $D4C0FF.l,X		; FF FF C0 D4
	cpy #$D2.b		; C0 D2
	cpy #$F1.b		; C0 F1
	cpy #$E7.b		; C0 E7
	cld		; D8
	sbc ($DC.b,S),Y		; F3 DC
	xce		; FB
	cpx $0C1F.w		; EC 1F 0C
	dec $FF.b,X		; D6 FF
	beq -59.b		; F0 C5
	sta ($81.b,S),Y		; 93 81
	bpl   2.b		; 10 02
	ora ($02.b),Y		; 11 02
	and ($20.b,X)		; 21 20
	inc $1012.w,X		; FE 12 10
	sbc ($FF.b)		; F2 FF
	sbc $103A10.l,X		; FF 10 3A 10
	ror $FF10.w,X		; 7E 10 FF
	bpl  -2.b		; 10 FE
	bpl -17.b		; 10 EF
	tsb $ED.b		; 04 ED
	brk $E6.b		; 00 E6
	php		; 08
	sbc $FF.b,S		; E3 FF
	ora $EE090C.l,X		; 1F 0C 09 EE
	cpx $16EF.w		; EC EF 16
	ora [$F3.b]		; 07 F3
	cop $10.b		; 02 10
	trb $12.b		; 14 12
	ora ($11.b)		; 12 11
	sep #$C3		; E2 C3
	sbc $11FC15.l,X		; FF 15 FC 11
	sbc $1D11.w,Y		; F9 11 1D
	jmp.w [$FF3E]		; DC 3E FF
	sbc $2F32FF.l,X		; FF FF 32 2F
	cpx #$AF.b		; E0 AF
	cpx #$F3.b		; E0 F3
	cpx $8EF1.w		; EC F1 8E
	sbc $F50E.w,Y		; F9 0E F5
	asl $3E20.w		; 0E 20 3E
	sta $322CF0.l		; 8F F0 2C 32
	and $FE3E30.l,X		; 3F 30 3E FE
	cpy #$DE.b		; C0 DE
	brk $CE.b		; 00 CE
	sbc $E300FF.l,X		; FF FF 00 E3
	jmp ($7CF3.w,X)		; 7C F3 7C
	cli		; 58
	cmp $F70FC8.l,X		; DF C8 0F F7
	ora [$FF.b]		; 07 FF
	ora $F8.b,S		; 03 F8
	tsb $5C.b		; 04 5C
	cmp $DF.b,S		; C3 DF
	ldy $7C.b		; A4 7C
	rti		; 40

	inc $605C.w,X		; FE 5C 60
	cpy $3430.w		; CC 30 34
	php		; 08
	tsb $A902.w		; 0C 02 A9
	sbc $A007E3.l,X		; FF E3 07 A0
	sbc $DAEBCE.l,X		; FF CE EB DA
	pld		; 2B
	clc		; 18
	and $FEA718.l		; 2F 18 A7 FE
	ora $D08C3B.l,X		; 1F 3B 8C D0
	cmp $C26010.l,X		; DF 10 60 C2
	eor $1FFEFC.l,X		; 5F FC FE 1F
	sei		; 78
	and ($FC.b,X)		; 21 FC
	inc $FE30.w,X		; FE 30 FE
	beq 124.b		; F0 7C
	brk $F4.b		; 00 F4
	asl A		; 0A
	sbc $DFFD00.l,X		; FF 00 FD DF
	xba		; EB
	trb $7A.b		; 14 7A
	and $E10F.w,X		; 3D 0F E1
	ora ($C1.b,X)		; 01 C1
	phd		; 0B
	cmp ($01.b,X)		; C1 01
	sta ($15.b,X)		; 81 15
	sta ($18.b,X)		; 81 18
	ora #$FB.b		; 09 FB
	lda $3E0003.l,X		; BF 03 00 3E
	lsr $51.b		; 46 51
	xce		; FB
	tsb $C7.b		; 04 C7
	sec		; 38
	ora $EC13F0.l		; 0F F0 13 EC
	and $DC.b,S		; 23 DC
	tad		; 5B
	phd		; 0B
	bit $F2.b		; 24 F2
	sbc ($F0.b,S),Y		; F3 F0
	eor [$AB.b]		; 47 AB
	cpx #$BA.b		; E0 BA
	cmp ($2E.b,X)		; C1 2E
	sbc ($BF.b),Y		; F1 BF
	cop $D9.b		; 02 D9
	cmp $6F.b,S		; C3 6F
	inc $D5AA.w,X		; FE AA D5
	jsr ($EAD5.w,X)		; FC D5 EA
	cmp $6343E0.l,X		; DF E0 43 63
	rts		; 60

	lda $95.b		; A5 95
	eor $519CFF.l,X		; 5F FF 9C 51
	dex		; CA
	jsr $BCC0.w		; 20 C0 BC
	stx $C1.b,Y		; 96 C1
	jsr $E13C.w		; 20 3C E1
	asl $8261.w,X		; 1E 61 82
	cpx #$03.b		; E0 03
	xce		; FB
	sbc ($81.b,X)		; E1 81
.ACCU 8
.INDEX 8
	sep #$78		; E2 78
	sty $F1.b		; 84 F1
	bit $3C01.w,X		; 3C 01 3C
	brk $1E.b		; 00 1E
	inc $1E9C.w,X		; FE 9C 1E
	bmi  12.b		; 30 0C
	trb $FCFE.w		; 1C FE FC
	ora $FE.b,S		; 03 FE
	ldx $C353.w		; AE 53 C3
	sta $44.b		; 85 44
	eor [$AB.b],Y		; 57 AB
	jsr ($F333.w,X)		; FC 33 F3
	sbc $9271.w,X		; FD 71 92
	inc $3FD8.w,X		; FE D8 3F
	bvc  -4.b		; 50 FC
	tay		; A8
	sec		; 38
	eor ($01.b)		; 52 01
	cop $3F.b		; 02 3F
	cpy #$F0.b		; C0 F0
	ora $FFC0CF.l		; 0F CF C0 FF
	xce		; FB
	cli		; 58
	bmi -26.b		; 30 E6
	jsr $1AC7.w		; 20 C7 1A
	xce		; FB
	adc [$F0.b]		; 67 F0
	brk $0B.b		; 00 0B
	sbc ($30.b,X)		; E1 30
	ora $30.b		; 05 30
	jsr $FE51.w		; 20 51 FE
	and $602234.l		; 2F 34 22 60
	sta $FF.b,S		; 83 FF
	ora $DF.b,S		; 03 DF
	rts		; 60

	sbc $B3.b,S		; E3 B3
	phx		; DA
	inc $D781.w,X		; FE 81 D7
	lda #$02.b		; A9 02
	jmp ($1583.w,X)		; 7C 83 15
	sbc $E8637C.l,X		; FF 7C 63 E8
	sbc #$DC.b		; E9 DC
	nop		; EA
	inc $0228.w,X		; FE 28 02
	sta ($82.b,X)		; 81 82
	and #$D8.b		; 29 D8
	tyx		; BB
	sbc ($07.b),Y		; F1 07
	sed		; F8
	ora [$8F.b]		; 07 8F
	cmp #$07.b		; C9 07
	tsb $BE.b		; 04 BE
	adc #$01.b		; 69 01
	stz $C8.b,X		; 74 C8
	sec		; 38
	lda $87.b,X		; B5 87
	inx		; E8
	clc		; 18
	sbc [$D1.b]		; E7 D1
	ldy $01CB.w		; AC CB 01
	tax		; AA
	eor #$13.b		; 49 13
	jmp.w [$4040]		; DC 40 40
	sbc $FF9FFF.l,X		; FF FF 9F FF
	lda $7927F8.l		; AF F8 27 79
	lda [$66.b]		; A7 66
	tsx		; BA
	inc $3A.b		; E6 3A
	eor $007F20.l,X		; 5F 20 7F 00
	jsr $C387.w		; 20 87 C3
	rti		; 40

	bvs  32.b		; 70 20
	clv		; B8
	inc $B921.w,X		; FE 21 B9
	jsl $C3BFFE.l		; 22 FE BF C3
	sbc $101F70.l,X		; FF 70 1F 10
	bpl -21.b		; 10 EB
	cpx #$8D.b		; E0 8D
	rts		; 60

	dec $0920.w		; CE 20 09
	inc $0F.b		; E6 0F
	brk $FF.b		; 00 FF
	cpx #$80.b		; E0 80
	inc $0018.w,X		; FE 18 00
	tsb $10.b		; 04 10
	.db $82, $10, $C1		; 82 10 C1
	adc $E0106B.l,X		; 7F 6B 10 E0
	asl $E0.b,X		; 16 E0
	bpl  19.b		; 10 13
	cpx #$17.b		; E0 17
	sta ($A3.b),Y		; 91 A3
	jsr $A163.w		; 20 63 A1
	inc A		; 1A
	cmp $6000.w,Y		; D9 00 60
	asl $D2.b		; 06 D2
	inc $69A0.w,X		; FE A0 69
	sed		; F8
	xce		; FB
	xce		; FB
	lda $C1BEC0.l,X		; BF C0 BE C1
	clv		; B8
	cmp [$81.b]		; C7 81
	ora ($09.b)		; 12 09
	lda $3BC0.w,X		; BD C0 3B
	sbc $3344FF.l		; EF FF 44 33
	jmp $8043.w		; 4C 43 80
	inc $42FC.w,X		; FE FC 42
	sta ($40.b,X)		; 81 40
	sta $C0.b,S		; 83 C0
	sta $C3.b,S		; 83 C3
	bra  31.b		; 80 1F
	sbc $0F205F.l,X		; FF 5F 20 0F
	bmi -89.b		; 30 A7
	sec		; 38
	cmp ($1E.b),Y		; D1 1E
	sei		; 78
	sta $83CF2E.l,X		; 9F 2E CF 83
	sbc $F0.b,S		; E3 F0
	eor $29.b		; 45 29
	adc ($07.b),Y		; 71 07
	rti		; 40

	sty $F0F6.w		; 8C F6 F0
	cpx $B9FA.w		; EC FA B9
	cpx #$03.b		; E0 03
	inc $7D5F.w,X		; FE 5F 7D
	eor $C1.b,X		; 55 C1
	ora $7E.b,S		; 03 7E
	.db $82, $00, $6A		; 82 00 6A
	eor ($CE.b),Y		; 51 CE
	sbc ($FE.b)		; F2 FE
	jsr ($1C1F.w,X)		; FC 1F 1C
	ora $F81E.w,X		; 1D 1E F8
	sbc $1EFDFE.l,X		; FF FE FD 1E
	jsr ($3C00.w,X)		; FC 00 3C
	cpy #$0C.b		; C0 0C
	beq -62.b		; F0 C2
	jsr ($FCF3.w,X)		; FC F3 FC
	eor [$B8.b],Y		; 57 B8
	and $0C0F3C.l,X		; 3F 3C 0F 0C
	sta ($61.b),Y		; 91 61
	sta $65.b,S		; 83 65
	inc $03C0.w,X		; FE C0 03
	beq  -1.b		; F0 FF
	sbc $73F1A4.l,X		; FF A4 F1 73
	phd		; 0B
	cpx #$18.b		; E0 18
	cpy $9F30.w		; CC 30 9F
	bvs  35.b		; 70 23
	jsr ($DF40.w,X)		; FC 40 DF
	ldy $BF.b,X		; B4 BF
	and $3FDB1F.l,X		; 3F 1F DB 3F
	tsb $87.b		; 04 87
	ora [$07.b]		; 07 07
	ora $421FFF.l		; 0F FF 1F 42
	cmp ($75.b,X)		; C1 75
	ldx $B9.b		; A6 B9
	sbc $BEFCF5.l,X		; FF F5 FC BE
	trb $033E.w		; 1C 3E 03
	ora ($FB.b)		; 12 FB
	asl A		; 0A
	sbc $1904.w,X		; FD 04 19
	sta $A9CD.w,Y		; 99 CD A9
	eor $81.b,S		; 43 81
	sbc $C1E30B.l,X		; FF 0B E3 C1
	sbc $F1FFE1.l,X		; FF E1 FF F1
	sbc $FDFB.w,X		; FD FB FD
	sbc $E13356.l,X		; FF 56 33 E1
	cmp $43D25F.l,X		; DF 5F D2 43
	ora $D9.b,S		; 03 D9
	ora ($DC.b,X)		; 01 DC
	plx		; FA
	cmp #$27.b		; C9 27
	cld		; D8
	eor $FC.b,S		; 43 FC
	eor $8C7E.w,Y		; 59 7E 8C
	phy		; 5A
	sta $78C0FE.l		; 8F FE C0 78
	ora #$7F.b		; 09 7F
	sbc $72FEA7.l,X		; FF A7 FE 72
	phy		; 5A
	sei		; 78
	adc $A72027.l,X		; 7F 27 20 A7
	sta $FF2061.l		; 8F 61 20 FF
	jsr $A478.w		; 20 78 A4
	inc $FEA0.w,X		; FE A0 FE
	sed		; F8
	ldy #$C4.b		; A0 C4
	sbc $00FEFD.l,X		; FF FD FE 00
	sbc $F9EC03.l		; EF 03 EC F9
	inc $EFFC.w		; EE FC EF
	sbc $E7F65D.l,X		; FF 5D F6 E7
	ora $13.b,S		; 03 13
	ora ($11.b,X)		; 01 11
	cpx #$10.b		; E0 10
	beq  23.b		; F0 17
	sta $54.b		; 85 54
	sed		; F8
	bpl -81.b		; 10 AF
	lda $FFFF.w,Y		; B9 FF FF
	eor $C1.b		; 45 C1
	and $708F50.l		; 2F 50 8F 70
	cmp $F05F70.l		; CF 70 5F F0
	bvs  -1.b		; 70 FF
	ldy #$AF.b		; A0 AF
	sta $85DB8F.l		; 8F 8F DB 85
	cpy #$80.b		; C0 80
	cmp $9FFFFE.l		; CF FE FF 9F
	tay		; A8
	sbc #$B0.b		; E9 B0
	cmp $4FC717.l		; CF 17 C7 4F
	stp		; DB
	tsx		; BA
	jsr $403F.w		; 20 3F 40
	cpy #$20.b		; C0 20
	ora #$1F.b		; 09 1F
	ldy #$79.b		; A0 79
	rti		; 40

	beq  64.b		; F0 40
	phd		; 0B
	tay		; A8
	cmp ($F0.b,X)		; C1 F0
	brk $D2.b		; 00 D2
	ora $71.b,X		; 15 71
	eor [$D2.b]		; 47 D2
	bit #$F0.b		; 89 F0
	sei		; 78
	brk $03.b		; 00 03
	sta $EF51.w,Y		; 99 51 EF
	dex		; CA
	asl $C28C.w,X		; 1E 8C C2
	trb $7C3F.w		; 1C 3F 7C
	eor $FE.b,S		; 43 FE
	cpy #$C8.b		; C0 C8
	ora $944308.l		; 0F 08 43 94
	inc $080C.w,X		; FE 0C 08
	inc $FE0E.w,X		; FE 0E FE
	cmp $59.b,S		; C3 59
	sta [$78.b]		; 87 78
	beq   4.b		; F0 04
	php		; 08
	inc $FE02.w,X		; FE 02 FE
	ora ($08.b,X)		; 01 08
	ora #$55.b		; 09 55
	ora $10B5.w,X		; 1D B5 10
	ora #$A4.b		; 09 A4
	.db $62, $E7, $79		; 62 E7 79
	rts		; 60

	cli		; 58
	phd		; 0B
	trb $5A.b		; 14 5A
	sei		; 78
	.db $42, $20		; 42 20
	cpy #$86.b		; C0 86
	and [$FE.b]		; 27 FE
	bcs  64.b		; B0 40
	inc $40B8.w,X		; FE B8 40
	tya		; 98
	rts		; 60

	beq -93.b		; F0 A3
	brk $C6.b		; 00 C6
	lda ($70.b)		; B2 70
	inc $EA14.w,X		; FE 14 EA
	sei		; 78
	sbc $7CF8C2.l,X		; FF C2 F8 7C
	brk $7F.b		; 00 7F
	tsb $007F.w		; 0C 7F 00
	sbc [$30.b],Y		; F7 30
	trb $12.b		; 14 12
	beq -80.b		; F0 B0
	sbc $8C80B0.l,X		; FF B0 80 8C
	bra -125.b		; 80 83
	sty $8083.w		; 8C 83 80
	sta $83FCB8.l		; 8F B8 FC 83
	sty $87.b		; 84 87
	and $02E19C.l,X		; 3F 9C E1 02
	ora [$04.b]		; 07 04
	stx $1F.b		; 86 1F
	bpl  57.b		; 10 39
	rol $7D.b		; 26 7D
	lsr $FF.b		; 46 FF
	rts		; 60

	ldy $ACF0.w		; AC F0 AC
	tsb $7C.b		; 04 7C
	bpl  32.b		; 10 20
	sbc $9F85.w,X		; FD 85 9F
	clv		; B8
	nop		; EA
	tax		; AA
	tsb $B9.b		; 04 B9
	cpy #$19.b		; C0 19
	ror $5D.b		; 66 5D
	ror $7F.b		; 66 7F
	mvp $F9,$6B		; 44 6B F9
	sta $55.b,S		; 83 55
.INDEX 16
	rep #$51		; C2 51
	sbc $35FCFD.l,X		; FF FD FC 35
	lda ($FE.b)		; B2 FE
	sta $050761.l,X		; 9F 61 07 05
	cmp $41FF61.l,X		; DF 61 FF 41
	sty $E4.b,X		; 94 E4
.ACCU 8
.INDEX 8
	sep #$FA		; E2 FA
	lda ($16.b)		; B2 16
	bvc  45.b		; 50 2D
	inc $86F0.w,X		; FE F0 86
	cpx $E034.w		; EC 34 E0
	cmp ($F0.b)		; D2 F0
	inc $620C.w,X		; FE 0C 62
	adc ($0C.b),Y		; 71 0C
	cpx #$9E.b		; E0 9E
	jsr $F405.w		; 20 05 F4
	sed		; F8
	bit $C0EA.w		; 2C EA C0
	pld		; 2B
	lda $8630.w		; AD 30 86
	bvs -32.b		; 70 E0
	cmp ($F0.b)		; D2 F0
	jsr ($7642.w,X)		; FC 42 76
	brk $E0.b		; 00 E0
	cmp ($0C.b)		; D2 0C
	brk $BC.b		; 00 BC
	cmp $FDFE.w,Y		; D9 FE FD
	sbc $6A7841.l,X		; FF 41 78 6A
	sta $F8FF66.l		; 8F 66 FF F8
	asl A		; 0A
	lsr A		; 4A
	dey		; 88
	php		; 08
	sta ($00.b,X)		; 81 00
	php		; 08
	sbc $FEC1FE.l,X		; FF FE C1 FE
	cop $41.b		; 02 41
	.db $82, $C5, $82		; 82 C5 82
	ora $42.b		; 05 42
	sbc ($87.b,X)		; E1 87
	sta $F242.w,X		; 9D 42 F2
	sta $02.b,S		; 83 02
	eor $02.b,S		; 43 02
	eor $04.b		; 45 04
	inc $FFDF.w,X		; FE DF FF
	eor #$08.b		; 49 08
	cmp #$08.b		; C9 08
	eor ($10.b),Y		; 51 10
	adc ($92.b),Y		; 71 92
	asl $09.b		; 06 09
	cop $0D.b		; 02 0D
	ora $17.b		; 05 17
	phd		; 0B
	ora ($57.b,S),Y		; 13 57
	sbc $1E110D.l,X		; FF 0D 11 1E
	bpl  91.b		; 10 5B
	.db $62, $9C, $F2		; 62 9C F2
	.db $42, $61		; 42 61
	brk $12.b		; 00 12
	brk $11.b		; 00 11
	brk $9C.b		; 00 9C
	beq  -1.b		; F0 FF
	rts		; 60

	inc $609E.w,X		; FE 9E 60
	stx $8D70.w		; 8E 70 8D
	bvs -119.b		; 70 89
	adc ($01.b)		; 72 01
	inc $81.b,X		; F6 81
	brk $11.b		; 00 11
	inc $FE40.w		; EE 40 FE
	ror $BCFE.w,X		; 7E FE BC
	sbc $FCFE10.l,X		; FF 10 FE FC
	xce		; FB
	clc		; 18
	cmp $EBB980.l		; CF 80 B9 EB
	trb $7F.b		; 14 7F
	cpy #$57.b		; C0 57
	inx		; E8
	and $B0FDBF.l,X		; 3F BF FD B0
	ora $879A.w,X		; 1D 9A 87
	stz $FCBF.w		; 9C BF FC
	iny		; C8
	sbc ($94.b),Y		; F1 94
	cmp $E1.b,S		; C3 E1
	inx		; E8
	cmp $F0.b,S		; C3 F0
	sbc $5B.b,S		; E3 5B
	cmp [$F8.b],Y		; D7 F8
	tax		; AA
	tyx		; BB
	ldx #$20.b		; A2 20
	tsb $DFFF.w		; 0C FF DF
	pea $101E.w		; F4 1E 10
	ora #$AA.b		; 09 AA
	tsa		; 3B
	ldx $5AF6.w,Y		; BE F6 5A
	bit $16.b		; 24 16
	asl $C9C4.w,X		; 1E C4 C9
	pea $F9D5.w		; F4 D5 F9
	jsr ($A2E0.w,X)		; FC E0 A2
	lda $A403FE.l,X		; BF FE 03 A4
	tad		; 5B
	inc $DA7E.w,X		; FE 7E DA
	inc $01FD.w,X		; FE FD 01
	eor $59.b,S		; 43 59
	stz $51.b		; 64 51
	eor ($64.b),Y		; 51 64
	adc $F5.b,X		; 75 F5
	sta ($A9.b,X)		; 81 A9
	cli		; 58
	eor $DC29.w		; 4D 29 DC
	cpy #$60.b		; C0 60
	beq  -2.b		; F0 FE
	trb $1A42.w		; 1C 42 1A
	.db $42, $C8		; 42 C8
	ora [$AE.b]		; 07 AE
	adc $D8A0E8.l,X		; 7F E8 A0 D8
	ora $E808.w		; 0D 08 E8
	sta [$B2.b]		; 87 B2
	ldy #$DF.b		; A0 DF
	ora $7DC2.w,X		; 1D C2 7D
.ACCU 16
.INDEX 16
	rep #$BD		; C2 BD
	.db $82, $FD, $E8		; 82 FD E8
	sbc $FE02FE.l,X		; FF FE 02 FE
	jsr ($3051.w,X)		; FC 51 30
	adc ($20.b,X)		; 61 20
	and ($60.b,X)		; 21 60
	eor ($40.b,X)		; 41 40
	cmp ($C2.b,X)		; C1 C2
	sbc $4AA940.l,X		; FF 40 A9 4A
	dec $5E19.w		; CE 19 5E
	txy		; 9B
	asl $5EDD.w,X		; 1E DD 5E
	cmp ($56.b),Y		; D1 56
	cmp #$0C3F.w		; C9 3F 0C
	lsr $5DD2.w		; 4E D2 5D
	eor ($5D.b,S),Y		; 53 5D
	sta ($1C.b)		; 92 1C
	dex		; CA
	eor $7FFF20.l,X		; 5F 20 FF 7F
	inc $2857.w,X		; FE 57 28
	eor $205E30.l		; 4F 30 5E 20
	dec $1F20.w,X		; DE 20 1F
	rts		; 60

	ora ($01.b,X)		; 01 01
	and ($03.b)		; 32 03
	adc $08F0FD.l,X		; 7F FD F0 08
	and #$D9A6.w		; 29 A6 D9
	cpx #$EFE0.w		; E0 E0 EF
	brk $0F.b		; 00 0F
	dec $0032.w		; CE 32 00
	jmp $00FFED.l		; 5C ED FF 00
	sta $1FF31E.l,X		; 9F 1E F3 1F
	ldx $4CC9.w,Y		; BE C9 4C
	sta $B387E6.l		; 8F E6 87 B3
	cmp $99.b,S		; C3 99
	sbc ($CC.b,X)		; E1 CC
	lda $30E1.w,X		; BD E1 30
	inc $07.b,X		; F6 07
	phk		; 4B
	sbc ($FC.b,S),Y		; F3 FC
	xce		; FB
	ldx $B1.b,Y		; B6 B1
	sbc $3F73.w,X		; FD 73 3F
	jsr ($AFD6.w,X)		; FC D6 AF
	ora $FBE168.l		; 0F 68 E1 FB
	nop		; EA
	pea $A383.w		; F4 83 A3
	inc $1A0F.w,X		; FE 0F 1A
	sta $F6E65E.l		; 8F 5E E6 F6
	sbc $313E87.l,X		; FF 87 3E 31
	brk $F2.b		; 00 F2
	php		; 08
	sbc ($0C.b)		; F2 0C
	eor $AA.b,X		; 55 AA
	sbc $FE8080.l,X		; FF 80 80 FE
	inc $1870.w,X		; FE 70 18
	cmp $F37CCA.l		; CF CA 7C F3
	stz $FE.b,X		; 74 FE
	bra -86.b		; 80 AA
	sep #$0F		; E2 0F
	sbc ($81.b),Y		; F1 81
	sbc $1202F2.l,X		; FF F2 02 12
	.db $62, $1C, $64		; 62 1C 64
	asl $FE43.w,X		; 1E 43 FE
	trb $82D1.w		; 1C D1 82
	sbc $0EFE06.l,X		; FF 06 FE 0E
	inc $C3E7.w,X		; FE E7 C3
	cmp ($18.b),Y		; D1 18
	lda ($7F.b),Y		; B1 7F
	jmp $0182.w		; 4C 82 01
	asl $FE.b		; 06 FE
	ora $515AC1.l		; 0F C1 5A 51
	ora $D97E.w,Y		; 19 7E D9
	ora #$6039.w		; 09 39 60
	sta $64.b,X		; 95 64
	lda ($B1.b,S),Y		; B3 B1
	inc $3E08.w,X		; FE 08 3E
	bne 127.b		; D0 7F
	inc $A49C.w,X		; FE 9C A4
	bra -34.b		; 80 DE
	jsl $DF40FD.l		; 22 FD 40 DF
	lda $BE.b,X		; B5 BE
	and $FF3E.w,X		; 3D 3E FF
	sbc $1EDF80.l,X		; FF 80 DF 1E
	and $3C761E.l,X		; 3F 1E 76 3C
	inc $FC3C.w,X		; FE 3C FC
	ldx $3E5C.w,Y		; BE 5C 3E
	and $D2.b,S		; 23 D2
	tsa		; 3B
	sbc $BDCAF6.l,X		; FF F6 CA BD
	mvp $4D,$B0		; 44 B0 4D
	clv		; B8
	lsr $9F.b		; 46 9F
	adc [$80.b]		; 67 80
	cmp $3281.w,Y		; D9 81 32
	sbc #$7D11.w		; E9 11 7D
	lda $7D0B43.l,X		; BF 43 0B 7D
	ora $7F077E.l		; 0F 7E 07 7F
	ora [$C8.b]		; 07 C8
	inc $F5.b,X		; F6 F5
	asl A		; 0A
	inc $68D5.w,X		; FE D5 68
	jsr ($2ABB.w,X)		; FC BB 2A
	bit $48.b		; 24 48
	phd		; 0B
	ora #$D3FC.w		; 09 FC D3
	cli		; 58
	cmp ($52.b),Y		; D1 52
	sbc $43C0FF.l,X		; FF FF C0 43
	ldx $3F03.w,Y		; BE 03 3F
	sta $41.b,S		; 83 41
	lda $BCC0.w,X		; BD C0 BC
	inc $5EBC.w,X		; FE BC 5E
	bit $5E.b		; 24 5E
	bit $E387.w		; 2C 87 E3
	lsr $3E3C.w,X		; 5E 3C 3E
	jmp ($3CFE.w,X)		; 7C FE 3C
	ror $FE3D.w,X		; 7E 3D FE
	sbc ($FF.b,X)		; E1 FF
	sbc $0CF30E.l,X		; FF 0E F3 0C
	adc [$88.b],Y		; 77 88
	ora $F58AE0.l,X		; 1F E0 8A F5
	cpx #$6FFF.w		; E0 FF 6F
	adc $1F1010.l,X		; 7F 10 10 1F
	sbc $1E11D0.l,X		; FF D0 11 1E
	ora ($1C.b)		; 12 1C
	trb $18.b		; 14 18
	clc		; 18
	cop $17.b		; 02 17
	pea $C090.w		; F4 90 C0
	sbc ($0E.b),Y		; F1 0E
	bvs   3.b		; 70 03
	ldy #$EFA9.w		; A0 A9 EF
	bpl  -2.b		; 10 FE
	dec $FF1C.w,X		; DE 1C FF
	jmp ($FC3D.w,X)		; 7C 3D FC
	lda $A170B1.l,X		; BF B1 70 A1
	beq -13.b		; F0 F3
	cpx #$A3FE.w		; E0 FE A3
	cpy #$C0E3.w		; C0 E3 C0
	cmp $00.b,S		; C3 00
	sbc $0AFE80.l,X		; FF 80 FE 0A
	sbc ($02.b,S),Y		; F3 02
	sbc ($C2.b,S),Y		; F3 C2
	sbc $FFAF02.l,X		; FF 02 AF FF
	sta $22EF42.l		; 8F 42 EF 22
	cmp ($DE.b,S),Y		; D3 DE
	and $1E.b,S		; 23 1E
	cop $7C.b		; 02 7C
	asl $0E1C.w		; 0E 1C 0E
	jmp.w [$87C3]		; DC C3 87
	jsr ($0E5C.w,X)		; FC 5C 0E
	txs		; 9A
	cpx $ECFE.w		; EC FE EC
	sta [$18.b],Y		; 97 18
	inc $30E8.w,X		; FE E8 30
	sta $9262C0.l		; 8F C0 62 92
	lda $78FE41.l,X		; BF 41 FE 78
	pla		; 68
	cpy $18.b		; C4 18
	inc $FF70.w,X		; FE 70 FF
	rts		; 60

	sbc $FF8741.l,X		; FF 41 87 FF
	sbc $FE00F9.l,X		; FF F9 00 FE
	stz $8E69.w		; 9C 69 8E
	adc $F9CE.w,Y		; 79 CE F9
	sbc $C30EF9.l		; EF F9 0E C3
	sbc $3F710D.l,X		; FF 0D 71 3F
	rol $FE.b,X		; 36 FE
	adc [$7A.b],Y		; 77 7A
	inc $F0F3.w,X		; FE F3 F0
	ror $FEF8.w,X		; 7E F8 FE
	sbc ($F8.b),Y		; F1 F8
	sbc $25F8.w,Y		; F9 F8 25
	and $787C.w,Y		; 39 7C 78
	jsr ($FE7C.w,X)		; FC 7C FE
	sei		; 78
	bpl  -2.b		; 10 FE
	trb $7A9E.w		; 1C 9E 7A
	sed		; F8
	inc $3A24.w,X		; FE 24 3A
	stx $87.b		; 86 87
	inc $7C82.w,X		; FE 82 7C
	inc $7CE2.w,X		; FE E2 7C
	stx $7E.b		; 86 7E
	inc $E1FA.w,X		; FE FA E1
	sta $A0.b,S		; 83 A0
	cpx #$B80E.w		; E0 0E B8
	ora ($02.b),Y		; 11 02
	adc $047D02.l,X		; 7F 02 7D 04
	inc $0879.w,X		; FE 79 08
	ora $08F9FE.l,X		; 1F FE F9 08
	adc ($10.b),Y		; 71 10
	tsa		; 3B
	bit $36FE.w,X		; 3C FE 36
	and $3D32.w,Y		; 39 32 3D
	and $37.b		; 25 37
	adc $332B18.l,X		; 7F 18 2B 33
	and $3E31.w		; 2D 31 3E
	bmi  -4.b		; 30 FC
	sec		; 38
	inc $30F8.w,X		; FE F8 30
	sbc $20FEE3.l,X		; FF E3 FE 20
	pea $F220.w		; F4 20 F2
	jsr $20F1.w		; 20 F1 20
	sta $61FE63.l,X		; 9F 63 FE 61
	sbc $8FE8.w		; ED E8 8F
	adc ($A0.b),Y		; 71 A0
	inc $7F.b		; E6 7F
	lda ($E9.b)		; B2 E9
	adc $A0FE01.l,X		; 7F 01 FE A0
	sbc $59.b		; E5 59
	nop		; EA
	brk $7E.b		; 00 7E
	inc $0DF8.w,X		; FE F8 0D
	jsr $FE6E.w		; 20 6E FE
	inc $22D5.w,X		; FE D5 22
	jmp $8C70C3.l		; 5C C3 70 8C
	sbc #$FC16.w		; E9 16 FC
	cmp $2A.b,X		; D5 2A
	jsr ($06F9.w,X)		; FC F9 06
	ora #$F621.w		; 09 21 F6
	ldy $FE62.w		; AC 62 FE
	trb $FC.b		; 14 FC
	plp		; 28
	jmp ($60F2.w,X)		; 7C F2 60
	bcc  -9.b		; 90 F7
	sbc $C050A0.l,X		; FF A0 50 C0
	bmi  40.b		; 30 28
	cmp ($08.b),Y		; D1 08
	iny		; C8
	bit $C4.b,X		; 34 C4
	dec A		; 3A
	sbc $709F00.l,X		; FF 00 9F 70
	cmp $3036DA.l,X		; DF DA 36 30
	jmp ($6EA1.w)		; 6C A1 6E
	sbc [$8F.b]		; E7 8F
	brk $B0.b		; 00 B0
	asl $007F.w		; 0E 7F 00
	bcs  14.b		; B0 0E
	bcc 122.b		; 90 7A
	sbc ($D0.b),Y		; F1 D0
	dec $7B.b		; C6 7B
	inc $FEF1.w,X		; FE F1 FE
	beq   3.b		; F0 03
	sbc ($30.b,S),Y		; F3 30
	ldx #$FE10.w		; A2 10 FE
	ora ($18.b),Y		; 11 18
	stx $FE.b		; 86 FE
	jsr ($FE12.w,X)		; FC 12 FE
	sed		; F8
	tsb $FE.b		; 04 FE
	sbc $2316.w,Y		; F9 16 23
	asl $1CFE.w,X		; 1E FE 1C
	and $DC4010.l		; 2F 10 40 DC
	inc $F18C.w,X		; FE 8C F1
	ldx $FE75.w,Y		; BE 75 FE
	sbc $E0FCEC.l,X		; FF EC FC E0
	beq -42.b		; F0 D6
	rep #$C5		; C2 C5
	sty $02F2.w		; 8C F2 02
	phx		; DA
	cmp $8FF031.l		; CF 31 F0 8F
	trb $DA40.w		; 1C 40 DA
	eor ($41.b,X)		; 41 41
	adc ($41.b),Y		; 71 41
	sbc ($01.b),Y		; F1 01
	adc ($5B.b),Y		; 71 5B
	cop $FE.b		; 02 FE
	adc [$01.b],Y		; 77 01
	rti		; 40

	phx		; DA
	sbc [$52.b],Y		; F7 52
	lda $FDFE.w,Y		; B9 FE FD
	sei		; 78
	ora $F8FF.w		; 0D FF F8
	beq  -1.b		; F0 FF
	bvs -19.b		; 70 ED
	sta ($FF.b),Y		; 91 FF
	sbc $18DFFF.l,X		; FF FF DF 18
	sbc $7A78.w,X		; FD 78 7A
	sed		; F8
	eor ($D0.b)		; 52 D0
	dey		; 88
	sbc ($7B.b)		; F2 7B
	inc $EBFB.w,X		; FE FB EB
	ldx $86FE.w,Y		; BE FE 86
	txa		; 8A
	and $F288.w,Y		; 39 88 F2
	sta [$7F.b]		; 87 7F
	inc $59FC.w,X		; FE FC 59
	adc $BF4F7A.l,X		; 7F 7A 4F BF
	asl $E080.w		; 0E 80 E0
	phd		; 0B
	adc $CC7EFE.l,X		; 7F FE 7E CC
	jmp $E08080.l		; 5C 80 80 E0
	ora #$12B8.w		; 09 B8 12
	sbc $4FFD.w,X		; FD FD 4F
	asl $C137.w		; 0E 37 C1
	beq -51.b		; F0 CD
	bmi  30.b		; 30 1E
	cpx #$FE14.w		; E0 14 FE
	ora ($0F.b,X)		; 01 0F
	lda $013EFE.l		; AF FE 3E 01
	ora $F8F680.l		; 0F 80 F6 F8
	and [$F8.b],Y		; 37 F8
	ora [$E0.b],Y		; 17 E0
	cld		; D8
	phd		; 0B
	.db $42, $3F		; 42 3F
	sbc $29.b		; E5 29
	bra -72.b		; 80 B8
	tsb $F38E.w		; 0C 8E F3
	stx $F0EA.w		; 8E EA F0
	stp		; DB
	bne -45.b		; D0 D3
	iny		; C8
	tsb $F4B9.w		; 0C B9 F4
	sbc $8F8EFC.l,X		; FF FC 8E 8F
	inc $F0AF.w,X		; FE AF F0
	lsr $91D8.w,X		; 5E D8 91
	pea $7F83.w		; F4 83 7F
	eor [$A8.b],Y		; 57 A8
	pha		; 48
	jmp.w [$FD02]		; DC 02 FD
	sta ($A5.b,X)		; 81 A5
	ldx #$DD68.w		; A2 68 DD
	sbc $E53FA8.l,X		; FF A8 3F E5
	jmp $DB20.w		; 4C 20 DB
	bmi -108.b		; 30 94
	jsr ($7597.w,X)		; FC 97 75
	adc ($DF.b,X)		; 61 DF
	ora ($F7.b)		; 12 F7
	jsr ($F4F7.w,X)		; FC F7 F4
	cmp $446AC0.l		; CF C0 6A 44
	xba		; EB
	txs		; 9A
	ora #$A8FE.w		; 09 FE A8
.ACCU 16
.INDEX 16
	rep #$BC		; C2 BC
	.db $42, $DD		; 42 DD
	inc $09F8.w,X		; FE F8 09
	sbc $C00EF8.l,X		; FF F8 0E C0
	jsr ($F5C6.w,X)		; FC C6 F5
	lda $DDF474.l,X		; BF 74 F4 DD
	pei ($DD.b)		; D4 DD
	jmp.w [$D4FD]		; DC FD D4
	cpy #$C4FC.w		; C0 FC C4
	plb		; AB
	adc $D054A3.l,X		; 7F A3 54 D0
	jsr ($FEC8.w,X)		; FC C8 FE
	bpl -36.b		; 10 DC
	inc $FEC8.w,X		; FE C8 FE
	tay		; A8
	asl $2B.b,X		; 16 2B
	ora $E8E3.w,X		; 1D E3 E8
	sbc $BAEF.w,X		; FD EF BA
	ldx #$FC79.w		; A2 79 FC
	tyx		; BB
	clv		; B8
	sta $C25825.l,X		; 9F 25 58 C2
	.db $82, $4A, $FA		; 82 4A FA
	jsr ($7FC7.w,X)		; FC C7 7F
	iny		; C8
	inc $DE35.w,X		; FE 35 DE
	inc $FFFF.w,X		; FE FF FF
	sed		; F8
	asl $0EB0.w		; 0E B0 0E
	sta [$FE.b]		; 87 FE
	ora $C0CFC0.l		; 0F C0 CF C0
	pea $0C30.w		; F4 30 0C
	bra  -2.b		; 80 FE
	ora [$40.b]		; 07 40
	inc $200F.w,X		; FE 0F 20
	inc $FEFF.w		; EE FF FE
	rts		; 60

	tay		; A8
	ora $600EFE.l		; 0F FE 0E 60
	tay		; A8
	ora $82CD.w		; 0D CD 82
	txy		; 9B
	cpx $77.b		; E4 77
	php		; 08
	ora $DEBF70.l,X		; 1F 70 BF DE
	sbc $91E960.l,X		; FF 60 E9 91
	bra  59.b		; 80 3B
	sed		; F8
	sbc [$41.b],Y		; F7 41
	jmp ($F87F.w,X)		; 7C 7F F8
	adc $E07FF0.l,X		; 7F F0 7F E0
	ror $09DF.w,X		; 7E DF 09
	cpy #$80FC.w		; C0 FC 80
	cpy $BC.b		; C4 BC
	sed		; F8
	cpx $F0B9.w		; EC B9 F0
	php		; 08
	inc $DF0C.w,X		; FE 0C DF
	clv		; B8
	sta ($F1.b),Y		; 91 F1
	ora ($F2.b,X)		; 01 F2
	inx		; E8
	brk $C8.b		; 00 C8
	brk $88.b		; 00 88
	ror $EBC9.w,X		; 7E C9 EB
	cmp [$1E.b]		; C7 1E
	brk $3A.b		; 00 3A
	cpx #$40E9.w		; E0 E9 40
	ldx $22.b,Y		; B6 22
	ora $387F.w,X		; 1D 7F 38
	sta $EBFBA0.l		; 8F A0 FB EB
	ora ($10.b,S),Y		; 13 10
	ora [$40.b],Y		; 17 40
	lda [$8F.b],Y		; B7 8F
	bvs  30.b		; 70 1E
	cpx #$06FB.w		; E0 FB 06
	stz $3269.w		; 9C 69 32
	sbc ($07.b),Y		; F1 07
	ora $FBF9D7.l		; 0F D7 F9 FB
	ora $FC.b		; 05 FC
	cop $F8.b		; 02 F8
	dec $00.b		; C6 00
.ACCU 16
.INDEX 16
	rep #$70		; C2 70
.ACCU 8
	sep #$2A		; E2 2A
	sbc ($0B.b,X)		; E1 0B
	sta [$05.b]		; 87 05
	brk $02.b		; 00 02
	sta ($21.b)		; 92 21
	sep #$0F		; E2 0F
	beq -13.b		; F0 F3
	xce		; FB
	sbc $0F0C1F.l,X		; FF 1F 0C 0F
	sty $8467.w		; 8C 67 84
	lda $58.b,S		; A3 58
	sta $000F66.l,X		; 9F 66 0F 00
	tsb $0CA0.w		; 0C A0 0C
	beq -21.b		; F0 EB
	nop		; EA
	inc $08F4.w,X		; FE F4 08
	cli		; 58
	tsb $46.b		; 04 46
	txa		; 8A
	cpy $5957.w		; CC 57 59
	sbc [$BF.b],Y		; F7 BF
	and $11F618.l,X		; 3F 18 F6 11
	sbc [$10.b],Y		; F7 10
	sbc ($07.b,X)		; E1 07
	php		; 08
	lda #$00.b		; A9 00
	bit $2C90.w		; 2C 90 2C
	bpl  72.b		; 10 48
	jmp ($FEA0.w,X)		; 7C A0 FE
	ora $1888.w,Y		; 19 88 18
	tya		; 98
	clc		; 18
	lsr $8FFE.w		; 4E FE 8F
	inc $38.b,X		; F6 38
	xce		; FB
	clv		; B8
	xce		; FB
	tyx		; BB
	inc $99C2.w,X		; FE C2 99
	ldy $F8FE.w,X		; BC FE F8
	phd		; 0B
	sbc $FFFFBC.l,X		; FF BC FF FF
	adc $E16EE0.l		; 6F E0 6E E1
	adc $EC62E1.l		; 6F E1 62 EC
	adc $EC.b,S		; 63 EC
	adc $ED6EEC.l		; 6F EC 6E ED
	sta ($80.b,S),Y		; 93 80
	lda #$CB.b		; A9 CB
	sta ($70.b)		; 92 70
	inc $FE93.w,X		; FE 93 FE
	sbc $71FF.w,X		; FD FF 71
	ply		; 7A
	lda $7F.b,S		; A3 7F
	rti		; 40

	inc $86F9.w,X		; FE F9 86
	xce		; FB
	stx $FF.b		; 86 FF
	.db $82, $3E, $0A		; 82 3E 0A
	sty $C6.b		; 84 C6
	sbc $E0FE0A.l,X		; FF 0A FE E0
	brk $CE.b		; 00 CE
	bmi -57.b		; 30 C7
	sec		; 38
	adc $9C.b,S		; 63 9C
	sbc $BE49AF.l,X		; FF AF 49 BE
	ldy $EF.b		; A4 EF
	cmp ($CB.b)		; D2 CB
	lda $8D.b,X		; B5 8D
	jmp ($200C.w,X)		; 7C 0C 20
	ora ($20.b,X)		; 01 20
	ldy $22.b,X		; B4 22
	sbc $C180FF.l,X		; FF FF 80 C1
	bit $4E00.w		; 2C 00 4E
	tsb $8F.b		; 04 8F
	tsb $BF.b		; 04 BF
	brk $BD.b		; 00 BD
	cop $B3.b		; 02 B3
	tsb $5C83.w		; 0C 83 5C
	stx $1FDF.w		; 8E DF 1F
	eor $4DAF.w,X		; 5D AF 4D
	ldy #$B942.w		; A0 42 B9
	adc #$A9.b		; 69 A9
	cmp ($40.b,X)		; C1 40
	rep #$40		; C2 40
	ldx #$FE20.w		; A2 20 FE
	and ($FE.b,X)		; 21 FE
	sta ($10.b)		; 92 10
	sta $088E10.l,X		; 9F 10 8E 08
	sbc [$00.b]		; E7 00
	inc $FEEF.w,X		; FE EF FE
	sbc [$FE.b],Y		; F7 FE
	asl $E0E1.w		; 0E E1 E0
	sbc $F90F17.l		; EF 17 0F F9
	php		; 08
	clc		; 18
	sbc $F80AF8.l,X		; FF F8 0A F8
	clc		; 18
	bpl  -2.b		; 10 FE
	ora $9204FC.l,X		; 1F FC 04 92
	sbc $708F10.l		; EF 10 8F 70
	ora ($FC.b,S),Y		; 13 FC
	ora $00.b,X		; 15 00
	adc ($9E.b),Y		; 71 9E
	rts		; 60

	txs		; 9A
	asl $09.b,X		; 16 09
	inc $77D2.w,X		; FE D2 77
	clc		; 18
	inc $006E.w,X		; FE 6E 00
	rts		; 60

	txs		; 9A
	cmp [$C0.b]		; C7 C0
	inc $C3C4.w,X		; FE C4 C3
	inc $FE42.w,X		; FE 42 FE
	cmp [$C3.b]		; C7 C3
	tyx		; BB
	sta [$80.b]		; 87 80
	ldy $FEFC.w,X		; BC FC FE
	sed		; F8
	asl A		; 0A
	sbc $1CBF.w,X		; FD BF 1C
	stx $FE.b		; 86 FE
	cmp $F3C230.l		; CF 30 C2 F3
	tsb $FFFE.w		; 0C FE FF
	sta $3A04FB.l		; 8F FB 04 3A
	sbc $C33F.w,X		; FD 3F C3
	rol $F2C2.w,X		; 3E C2 F2
	brk $D2.b		; 00 D2
	brk $CA.b		; 00 CA
	sbc $FE05.w,X		; FD 05 FE
	cmp [$96.b]		; C7 96
	sbc ($C3.b,S),Y		; F3 C3
	brk $1B.b		; 00 1B
	inx		; E8
	ora $F060E8.l,X		; 1F E8 60 F0
	phd		; 0B
	stx $82D4.w		; 8E D4 82
	inc $F060.w,X		; FE 60 F0
	asl A		; 0A
	lda ($FD.b)		; B2 FD
	bit $790C.w,X		; 3C 0C 79
	tsb $EF04.w		; 0C 04 EF
	brk $99.b		; 00 99
	ldy $FFFE.w		; AC FE FF
	bit $0C3F.w,X		; 3C 3F 0C
	cop $BA.b		; 02 BA
	ora [$F0.b]		; 07 F0
	adc $9FCCA0.l,X		; 7F A0 CC 9F
	brk $39.b		; 00 39
	stx $71.b		; 86 71
	stx $9F63.w		; 8E 63 9F
	cmp [$BF.b]		; C7 BF
	sta $D75555.l		; 8F 55 55 D7
	adc $8AA0.w,Y		; 79 A0 8A
	sbc ($32.b,S),Y		; F3 32
	and ($DC.b,X)		; 21 DC
	ora ($50.b)		; 12 50
	tsb $F8FF.w		; 0C FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($5555.w,X)		; FC 55 55
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($0005.w,X)		; FC 05 00
	sbc $0055F8.l,X		; FF F8 55 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F5.b		; 00 F5
	lda $FF00.w,X		; BD 00 FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	lda [$94.b]		; A7 94
	ora $1D95.w,X		; 1D 95 1D
	cpy #$3BF8.w		; C0 F8 3B
	stx $1D.b,Y		; 96 1D
	sta [$1F.b],Y		; 97 1F
	xce		; FB
	cpy #$3AF8.w		; C0 F8 3A
	tya		; 98
	ora $1D99.w,X		; 1D 99 1D
	txs		; 9A
	cpy #$BC9B.w		; C0 9B BC
	sed		; F8
	rol $9C.b,X		; 36 9C
	ora $DF9D.w,X		; 1D 9D DF
	sbc $1D9E1D.l,X		; FF 1D 9E 1D
	sta $C0A01D.l,X		; 9F 1D A0 C0
	sed		; F8
	rol $A1.b,X		; 36 A1
	ora $1DA2.w,X		; 1D A2 1D
	lda $1D.b,S		; A3 1D
	ldy $1D.b		; A4 1D
	jmp ($A5DC.w,X)		; 7C DC A5
	cpy #$1DA6.w		; C0 A6 1D
	lda [$F8.b]		; A7 F8
	adc [$1E.b]		; 67 1E
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	and [$FF.b]		; 27 FF
	sbc ($A8.b,S),Y		; F3 A8
	ora $1DA9.w,X		; 1D A9 1D
	tax		; AA
	ora $1DAB.w,X		; 1D AB 1D
	ldy $AD1D.w		; AC 1D AD
	cpy #$B1AE.w		; C0 AE B1
	sbc [$1D.b]		; E7 1D
	lda $C070F8.l		; AF F8 70 C0
	sed		; F8
	asl $1DB0.w,X		; 1E B0 1D
	lda ($D2.b),Y		; B1 D2
	sbc $1DB2CF.l,X		; FF CF B2 1D
	lda ($1D.b,S),Y		; B3 1D
	ldy $1D.b,X		; B4 1D
	lda $1D.b,X		; B5 1D
	ldx $1D.b,Y		; B6 1D
	lda [$1D.b],Y		; B7 1D
	clv		; B8
	adc $B9EE43.l,X		; 7F 43 EE B9
	ora $1DBA.w,X		; 1D BA 1D
	lda ($5D.b)		; B2 5D
	ply		; 7A
	cpy #$1EF8.w		; C0 F8 1E
	tyx		; BB
	bvc  93.b		; 50 5D
	plx		; FA
	sbc $1DBCF8.l,X		; FF F8 BC 1D
	lda $BE1D.w,X		; BD 1D BE
	ora $1DBF.w,X		; 1D BF 1D
	cpy #$C11D.w		; C0 1D C1
	ora $DFF8.w,X		; 1D F8 DF
	rep #$C0		; C2 C0
	cmp $1D.b,S		; C3 1D
	cpy $1D.b		; C4 1D
	cmp $1D.b		; C5 1D
	dec $1D.b		; C6 1D
	stx $C0.b		; 86 C0
	sed		; F8
	asl $FFF3.w,X		; 1E F3 FF
	cmp [$1D.b]		; C7 1D
	iny		; C8
	sta ($C9.b)		; 92 C9
	ora $1DCA.w,X		; 1D CA 1D
	wai		; CB
	ora $1DCC.w,X		; 1D CC 1D
	cmp $7FFF.w		; CD FF 7F
	ora $1DCE.w,X		; 1D CE 1D
	cmp $1DD01D.l		; CF 1D D0 1D
	cmp ($1D.b),Y		; D1 1D
	cmp ($1D.b)		; D2 1D
	cmp ($1D.b,S),Y		; D3 1D
	pei ($1D.b)		; D4 1D
	txa		; 8A
	eor $FA.b,S		; 43 FA
	cpy #$1EF8.w		; C0 F8 1E
	cmp $C0.b,X		; D5 C0
	sta $D6F8.w,X		; 9D F8 D6
	ora $1DD7.w,X		; 1D D7 1D
	sbc $1DD8FF.l,X		; FF FF D8 1D
	cmp $DA1D.w,Y		; D9 1D DA
	ora $1DDB.w,X		; 1D DB 1D
	jmp.w [$DD1D]		; DC 1D DD
	ora $1DDE.w,X		; 1D DE 1D
	cmp $7FBF1D.l,X		; DF 1D BF 7F
	cpx #$E11D.w		; E0 1D E1
	ora $1E8C.w,X		; 1D 8C 1E
	sta $F8BE.w		; 8D BE F8
	clc		; 18
	eor ($1E.b,S),Y		; 53 1E
	mvn $E2,$1E		; 54 1E E2
	ora $FCE3.w,X		; 1D E3 FC
	sbc $1DE480.l,X		; FF 80 E4 1D
	sbc $1D.b		; E5 1D
	inc $1D.b		; E6 1D
	sbc [$1D.b]		; E7 1D
	inx		; E8
	ora $1DE9.w,X		; 1D E9 1D
	sbc $1DEAFF.l,X		; FF FF EA 1D
	xba		; EB
	ora $1DEC.w,X		; 1D EC 1D
	sbc $EE1D.w		; ED 1D EE
	ora $1DEF.w,X		; 1D EF 1D
	beq  29.b		; F0 1D
	stx $9C1E.w		; 8E 1E 9C
	sbc $8F.b,S		; E3 8F
	cpy #$FA55.w		; C0 55 FA
	lsr $FA.b,X		; 56 FA
	eor [$F1.b],Y		; 57 F1
	sbc $FA581E.l,X		; FF 1E 58 FA
	eor $5A1E.w,Y		; 59 1E 5A
	asl $1E5B.w,X		; 1E 5B 1E
	jmp $1DF11E.l		; 5C 1E F1 1D
	sbc $1DF2FF.l,X		; FF FF F2 1D
	sbc ($1D.b,S),Y		; F3 1D
	pea $F51D.w		; F4 1D F5
	ora $1DF6.w,X		; 1D F6 1D
	sbc [$1D.b],Y		; F7 1D
	sed		; F8
	ora $1DF9.w,X		; 1D F9 1D
	sbc $1DFAC3.l,X		; FF C3 FA 1D
	xce		; FB
	ora $1DFC.w,X		; 1D FC 1D
	sbc $FE1D.w,X		; FD 1D FE
	ora $A6FF.w,X		; 1D FF A6
	asl $FFE3.w,X		; 1E E3 FF
	bcc  30.b		; 90 1E
	sta ($D2.b),Y		; 91 D2
	cli		; 58
	lsr $1E33.w,X		; 5E 33 1E
	eor $5E1E.w,X		; 5D 1E 5E
	asl $1F5F.w,X		; 1E 5F 1F
	sbc $1E601E.l,X		; FF 1E 60 1E
	adc ($1E.b,X)		; 61 1E
	.db $62, $EE, $63		; 62 EE 63
	asl $1E64.w,X		; 1E 64 1E
	adc $1E.b		; 65 1E
	sbc $1E66FF.l,X		; FF FF 66 1E
	ora ($1E.b,X)		; 01 1E
	cop $1E.b		; 02 1E
	ora $1E.b,S		; 03 1E
	tsb $1E.b		; 04 1E
	ora $1E.b		; 05 1E
	asl $1E.b		; 06 1E
	ora [$1E.b]		; 07 1E
	sbc $1E08FF.l,X		; FF FF 08 1E
	ora #$0A1E.w		; 09 1E 0A
	asl $1E0B.w,X		; 1E 0B 1E
	tsb $0D1E.w		; 0C 1E 0D
	asl $1E0E.w,X		; 1E 0E 1E
	ora $FF8F1E.l		; 0F 1E 8F FF
	bpl  30.b		; 10 1E
	sty $1E.b,X		; 94 1E
	sta $D2.b,X		; 95 D2
	.db $62, $5E, $42		; 62 5E 42
	asl $1E43.w,X		; 1E 43 1E
	mvp $FF,$FF		; 44 FF FF
	asl $1E68.w,X		; 1E 68 1E
	adc #$471E.w		; 69 1E 47
	asl $1E6A.w,X		; 1E 6A 1E
	rtl		; 6B

	asl $1E6C.w,X		; 1E 6C 1E
	adc $6E1E.w		; 6D 1E 6E
	sbc $6F1EFF.l,X		; FF FF 1E 6F
	asl $1E11.w,X		; 1E 11 1E
	ora ($1E.b)		; 12 1E
	ora ($1E.b,S),Y		; 13 1E
	trb $1E.b		; 14 1E
	ora $1E.b,X		; 15 1E
	asl $1E.b,X		; 16 1E
	ora [$FF.b],Y		; 17 FF
	ora $1E181E.l		; 0F 1E 18 1E
	ora $1A1E.w,Y		; 19 1E 1A
	asl $1E1B.w,X		; 1E 1B 1E
	trb $1D1E.w		; 1C 1E 1D
	asl $F87F.w,X		; 1E 7F F8
	sbc $201E1F.l,X		; FF 1F 1E 20
	asl $1E9A.w,X		; 1E 9A 1E
	txy		; 9B
	cmp ($5E.b)		; D2 5E
	ror A		; 6A
	lsr $FF4C.w,X		; 5E 4C FF
	sbc $1E711E.l,X		; FF 1E 71 1E
	adc ($1E.b)		; 72 1E
	eor $1E731E.l		; 4F 1E 73 1E
	eor ($1E.b),Y		; 51 1E
	stz $1E.b,X		; 74 1E
	adc $1E.b,X		; 75 1E
	ror $FF.b,X		; 76 FF
	sbc $1E771E.l,X		; FF 1E 77 1E
	sei		; 78
	asl $1E79.w,X		; 1E 79 1E
	and ($1E.b,X)		; 21 1E
	jsl $1E231E.l		; 22 1E 23 1E
	bit $1E.b		; 24 1E
	and $FF.b		; 25 FF
	sbc $1E261E.l,X		; FF 1E 26 1E
	and [$1E.b]		; 27 1E
	plp		; 28
	asl $1E29.w,X		; 1E 29 1E
	rol A		; 2A
	asl $1E2B.w,X		; 1E 2B 1E
	bit $2D1E.w		; 2C 1E 2D
	sbc $2E1EE1.l,X		; FF E1 1E 2E
	asl $1E2F.w,X		; 1E 2F 1E
	bmi  30.b		; 30 1E
	lda ($1E.b,X)		; A1 1E
	ldx #$5ED2.w		; A2 D2 5E
	stz $FF.b,X		; 74 FF
	sbc $1E7B5E.l,X		; FF 5E 7B 1E
	jmp ($7D1E.w,X)		; 7C 1E 7D
	asl $1E7E.w,X		; 1E 7E 1E
	adc $1E801E.l,X		; 7F 1E 80 1E
	sta ($1E.b,X)		; 81 1E
	.db $82, $F0, $1F		; 82 F0 1F
	asl $8330.w,X		; 1E 30 83
	asl $1E84.w,X		; 1E 84 1E
	sta $1E.b		; 85 1E
	and ($1E.b),Y		; 31 1E
	and ($FF.b)		; 32 FF
	sbc $1E34F4.l,X		; FF F4 34 1E
	and $1E.b,X		; 35 1E
	rol $1E.b,X		; 36 1E
	and [$1E.b],Y		; 37 1E
	sec		; 38
	asl $1E39.w,X		; 1E 39 1E
	dec A		; 3A
	asl $3FC3.w,X		; 1E C3 3F
	tsa		; 3B
	asl $EC3C.w,X		; 1E 3C EC
	lsr $1E3D.w,X		; 5E 3D 1E
	rol $3F1E.w,X		; 3E 1E 3F
	asl $BEA4.w,X		; 1E A4 BE
	sbc $5E82F6.l,X		; FF F6 82 5E
	sta ($5E.b,X)		; 81 5E
	pha		; 48
	jsr ($1E87.w,X)		; FC 87 1E
	dey		; 88
	asl $5E49.w,X		; 1E 49 5E
	rti		; 40

	tyx		; BB
	cmp [$1E.b]		; C7 1E
	eor ($1E.b,X)		; 41 1E
	bmi  -4.b		; 30 FC
	bit #$F41E.w		; 89 1E F4
	sed		; F8
	ora #$1E45.w		; 09 45 1E
	lsr $DC.b		; 46 DC
	cmp $30.b,S		; C3 30
	lsr $5E.b		; 46 5E
	pha		; 48
	pea $435E.w		; F4 5E 43
	bpl  94.b		; 10 5E
	eor ($0C.b,X)		; 41 0C
	plx		; FA
	cld		; D8
	lsr $E649.w,X		; 5E 49 E6
	inc $FD.b,X		; F6 FD
	pha		; 48
	inc $1E8B.w,X		; FE 8B 1E
	eor ($0F.b)		; 52 0F
	eor [$5E.b]		; 47 5E
	lsr A		; 4A
	asl $1E4B.w,X		; 1E 4B 1E
	bmi  77.b		; 30 4D
	asl $304E.w,X		; 1E 4E 30
	sbc $1F.b,S		; E3 1F
	pea $0BF8.w		; F4 F8 0B
	bvc -36.b		; 50 DC
	bvc  94.b		; 50 5E
	eor $5E4E5E.l		; 4F 5E 4E 5E
	eor $C186.w		; 4D 86 C1
	bpl  94.b		; 10 5E
	phk		; 4B
	cld		; D8
	lsr $E652.w,X		; 5E 52 E6
	inc $FD.b,X		; F6 FD
	sbc $9E73FF.l,X		; FF FF 73 9E
	eor ($9E.b),Y		; 51 9E
	stz $9E.b,X		; 74 9E
	adc $9E.b,X		; 75 9E
	phb		; 8B
	stz $DE52.w,X		; 9E 52 DE
	lsr A		; 4A
	stz $9E4B.w,X		; 9E 4B 9E
	adc $9E4CE3.l,X		; 7F E3 4C 9E
	eor $4E9E.w		; 4D 9E 4E
	stz $9E4F.w,X		; 9E 4F 9E
	pea $0BF8.w		; F4 F8 0B
	bvc -36.b		; 50 DC
	bvc  -1.b		; 50 FF
	adc ($DE.b,X)		; 61 DE
	eor $DE4EDE.l		; 4F DE 4E DE
	eor $4CDE.w		; 4D DE 4C
	dec $D84B.w,X		; DE 4B D8
	dec $5052.w,X		; DE 52 50
	eor $E6.b,X		; 55 E6
	inc $FD.b,X		; F6 FD
	bra  -8.b		; 80 F8
	adc $FCC8E9.l,X		; 7F E9 C8 FC
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($945D.w,X)		; FC 5D 94
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	stx $5E57.w		; 8E 57 5E
	cop $C1.b		; 02 C1
	jsr ($B9F6.w,X)		; FC F6 B9
	sbc $FAE1.w,X		; FD E1 FA
	sbc $612FF8.l,X		; FF F8 2F 61
	lsr $5E60.w,X		; 5E 60 5E
	eor $5DFF5E.l,X		; 5F 5E FF 5D
	lsr $FFAF.w,X		; 5E AF FF
	and ($5E.b,S),Y		; 33 5E
	sta ($1E.b)		; 92 1E
	sta ($2A.b,S),Y		; 93 2A
	bcs  40.b		; B0 28
	sbc $5E47FE.l,X		; FF FE 47 5E
	adc #$965E.w		; 69 5E 96
	asl $7F97.w,X		; 1E 97 7F
	sbc $1E981E.l,X		; FF 1E 98 1E
	.db $42, $5E		; 42 5E
	sta $401E.w,Y		; 99 1E 40
	jmp ($30F8.w,X)		; 7C F8 30
	eor ($5E.b),Y		; 51 5E
	adc ($5E.b,S),Y		; 73 5E
	stz $FF1E.w		; 9C 1E FF
	inc $5E5B.w,X		; FE 5B 5E
	sta $9E1E.w,X		; 9D 1E 9E
	asl $1E9F.w,X		; 1E 9F 1E
	ldy #$F880.w		; A0 80 F8
	bmi -128.b		; 30 80
	lsr $5E7F.w,X		; 5E 7F 5E
	ror $53.b		; 66 53
	pea $655E.w		; F4 5E 65
	lsr $A378.w,X		; 5E 78 A3
	sei		; 78
	cpy #$2FF8.w		; C0 F8 2F
	eor #$5F1E.w		; 49 1E 5F
	sbc $6F5E88.l,X		; FF 88 5E 6F
	lsr $5E6E.w,X		; 5E 6E 5E
	sei		; 78
	inc $F8C0.w,X		; FE C0 F8
	and $8B1E52.l		; 2F 52 1E 8B
	lsr $1EA5.w,X		; 5E A5 1E
	sbc $FF.b,X		; F5 FF
	sei		; 78
	lsr $FE78.w,X		; 5E 78 FE
	cpy #$30F8.w		; C0 F8 30
	stz $DE8B.w,X		; 9E 8B DE
	lda $9E.b		; A5 9E
	sei		; 78
	dec $DE80.w,X		; DE 80 DE
	adc $DE1557.l,X		; 7F 57 15 DE
	ror $DE.b		; 66 DE
	adc $B0.b		; 65 B0
	cpy #$8030.w		; C0 30 80
	sed		; F8
	adc $FCF8FF.l,X		; 7F FF F8 FC
	sbc $0042F8.l,X		; FF F8 42 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $010C0E.l,X		; FF 0E 0C 01
	tsb $0C02.w		; 0C 02 0C
	ora $0C.b,S		; 03 0C
	tsb $0C.b		; 04 0C
	ora $0C.b		; 05 0C
	asl $0C.b		; 06 0C
	ora [$C7.b]		; 07 C7
	lda [$0C.b]		; A7 0C
	php		; 08
	tsb $FA09.w		; 0C 09 FA
	asl A		; 0A
	tsb $0C0B.w		; 0C 0B 0C
	sbc $0DFFFF.l,X		; FF FF FF 0D
	tsb $0C6D.w		; 0C 6D 0C
	ror $6F0C.w		; 6E 0C 6F
	tsb $0C70.w		; 0C 70 0C
	adc ($0C.b),Y		; 71 0C
	adc ($0C.b)		; 72 0C
	adc ($0C.b,S),Y		; 73 0C
	and $0C740A.l,X		; 3F 0A 74 0C
	phy		; 5A
	tsb $0C75.w		; 0C 75 0C
	ror $FA.b,X		; 76 FA
	inc $FEFE.w,X		; FE FE FE
	sbc $F8FEC0.l,X		; FF C0 FE F8
	ora $0F.b,X		; 15 0F
	tsb $0C10.w		; 0C 10 0C
	ora ($0C.b),Y		; 11 0C
	ora ($0C.b)		; 12 0C
	adc [$0C.b],Y		; 77 0C
	sei		; 78
	tsb $FF79.w		; 0C 79 FF
	adc $0C7A0C.l,X		; 7F 0C 7A 0C
	tda		; 7B
	tsb $0C7C.w		; 0C 7C 0C
	adc $7E0C.w,X		; 7D 0C 7E
	tsb $0C7F.w		; 0C 7F 0C
	bra  12.b		; 80 0C
	sta ($E1.b,X)		; 81 E1
	sbc $22F8C0.l,X		; FF C0 F8 22
	inc $0C13.w,X		; FE 13 0C
	trb $0C.b		; 14 0C
	ora $0C.b,X		; 15 0C
	.db $82, $0C, $83		; 82 0C 83
	tsb $EBFF.w		; 0C FF EB
	sty $0C.b		; 84 0C
	sta $0C.b		; 85 0C
	stx $0C.b		; 86 0C
	sta [$0C.b]		; 87 0C
	dey		; 88
	tsb $C689.w		; 0C 89 C6
	sed		; F8
	asl A		; 0A
	cpy #$0DF8.w		; C0 F8 0D
	asl $FF.b,X		; 16 FF
	pea $1714.w		; F4 14 17
	trb $18.b		; 14 18
	trb $19.b		; 14 19
	trb $1A.b		; 14 1A
	trb $F2.b		; 14 F2
	tas		; 1B
	tsb $FF1C.w		; 0C 1C FF
	sbc $0C1D0C.l,X		; FF 0C 1D 0C
	asl $1F0C.w,X		; 1E 0C 1F
	tsb $0C8A.w		; 0C 8A 0C
	phb		; 8B
	tsb $0C8C.w		; 0C 8C 0C
	sta $8E0C.w		; 8D 0C 8E
	cmp $8F0CFF.l,X		; DF FF 0C 8F
	tsb $0C90.w		; 0C 90 0C
	sta ($C0.b),Y		; 91 C0
	sed		; F8
	clc		; 18
	jsr $2114.w		; 20 14 21
	trb $22.b		; 14 22
	trb $23.b		; 14 23
	trb $EC.b		; 14 EC
	sbc $FEC024.l,X		; FF 24 C0 FE
	sed		; F8
	ora $0C92.w		; 0D 92 0C
	sta ($0C.b,S),Y		; 93 0C
	sty $0C.b,X		; 94 0C
	sta $0C.b,X		; 95 0C
	stx $FF.b,Y		; 96 FF
	sbc $0C970C.l,X		; FF 0C 97 0C
	tya		; 98
	tsb $0C99.w		; 0C 99 0C
	txs		; 9A
	tsb $0C9B.w		; 0C 9B 0C
	stz $9D0C.w		; 9C 0C 9D
	tsb $FD9E.w		; 0C 9E FD
	lda $DC9F0C.l		; AF 0C 9F DC
	sbc $261425.l,X		; FF 25 14 26
	trb $27.b		; 14 27
	trb $28.b		; 14 28
	trb $29.b		; 14 29
	cpy #$12F8.w		; C0 F8 12
	adc $F8FEFF.l,X		; 7F FF FE F8
	ora ($A0.b,S),Y		; 13 A0
	tsb $0CA1.w		; 0C A1 0C
	ldx #$A30C.w		; A2 0C A3
	beq  -1.b		; F0 FF
	rol A		; 2A
	trb $2B.b		; 14 2B
	trb $2C.b		; 14 2C
	trb $FB.b		; 14 FB
	adc $2E142D.l,X		; 7F 2D 14 2E
	cpy #$22F8.w		; C0 F8 22
	ldy $0C.b		; A4 0C
	lda $0C.b		; A5 0C
	ldx $0C.b		; A6 0C
	lda [$0C.b]		; A7 0C
	tay		; A8
	tsb $FFA9.w		; 0C A9 FF
	xce		; FB
	cpx $2FFF.w		; EC FF 2F
	trb $30.b		; 14 30
	trb $31.b		; 14 31
	trb $32.b		; 14 32
	trb $33.b		; 14 33
	cpy #$20F8.w		; C0 F8 20
	tax		; AA
	tsb $FFAB.w		; 0C AB FF
	sbc [$0C.b],Y		; F7 0C
	ldy $AD0C.w		; AC 0C AD
	tsb $0CAE.w		; 0C AE 0C
	lda $0C380C.l		; AF 0C 38 0C
	bit $FE.b,X		; 34 FE
	sed		; F8
	rol $B0.b		; 26 B0
	tsb $FFFF.w		; 0C FF FF
	lda ($0C.b),Y		; B1 0C
	lda ($0C.b)		; B2 0C
	lda ($0C.b,S),Y		; B3 0C
	ldy $0C.b,X		; B4 0C
	lda $0C.b,X		; B5 0C
	ldx $0C.b,Y		; B6 0C
	lda [$0C.b],Y		; B7 0C
	clv		; B8
	tsb $1BFF.w		; 0C FF 1B
	lda $BA0C.w,Y		; B9 0C BA
	tsb $0CBB.w		; 0C BB 0C
	and $0C.b,X		; 35 0C
	rol $0C.b,X		; 36 0C
	and [$FE.b],Y		; 37 FE
	sed		; F8
	sec		; 38
	ldy $FEFF.w,X		; BC FF FE
	ror $0C39.w,X		; 7E 39 0C
	dec A		; 3A
	tsb $0C3B.w		; 0C 3B 0C
	bit $F8FE.w,X		; 3C FE F8
	rol A		; 2A
	lda $BE0C.w,X		; BD 0C BE
	tsb $7FBF.w		; 0C BF 7F
	jsr ($C00C.w,X)		; FC 0C C0
	tsb $0CC1.w		; 0C C1 0C
	rep #$0C		; C2 0C
	and $3EBE.w,X		; 3D BE 3E
	tsb $0C3F.w		; 0C 3F 0C
	sbc $0C407E.l,X		; FF 7E 40 0C
	eor ($0C.b,X)		; 41 0C
	.db $42, $0C		; 42 0C
	eor $0C.b,S		; 43 0C
	mvp $F8,$FE		; 44 FE F8
	asl $0CC3.w,X		; 1E C3 0C
	cpy $0C.b		; C4 0C
	cmp $84.b		; C5 84
	sbc $CC.b,S		; E3 CC
	inc $0CC6.w,X		; FE C6 0C
	cmp [$FA.b]		; C7 FA
	eor $FF.b		; 45 FF
	sbc $0C460C.l,X		; FF 0C 46 0C
	eor [$0C.b]		; 47 0C
	pha		; 48
	tsb $0C49.w		; 0C 49 0C
	lsr A		; 4A
	tsb $0C4B.w		; 0C 4B 0C
	jmp $4D0C.w		; 4C 0C 4D
	adc $4E0CFF.l,X		; 7F FF 0C 4E
	tsb $0C4F.w		; 0C 4F 0C
	bvc  12.b		; 50 0C
	eor ($FE.b),Y		; 51 FE
	sed		; F8
	asl $0CC8.w		; 0E C8 0C
	cmp #$CA0C.w		; C9 0C CA
	tsb $FF8F.w		; 0C 8F FF
	wai		; CB
	tsb $0CCC.w		; 0C CC 0C
	cmp $3DCA.w		; CD CA 3D
	jmp $0CCE.w		; 4C CE 0C
	cmp $FFD00C.l		; CF 0C D0 FF
	sbc $0CD10C.l,X		; FF 0C D1 0C
	eor ($0C.b)		; 52 0C
	eor ($0C.b,S),Y		; 53 0C
	mvn $55,$0C		; 54 0C 55
	tsb $0C56.w		; 0C 56 0C
	eor [$0C.b],Y		; 57 0C
	cli		; 58
	sbc $0CFF.w,X		; FD FF 0C
	eor $F8FE.w,Y		; 59 FE F8
	bpl -46.b		; 10 D2
	tsb $0CD3.w		; 0C D3 0C
	pei ($0C.b)		; D4 0C
	cmp $0C.b,X		; D5 0C
	dec $0C.b,X		; D6 0C
	cmp [$0C.b],Y		; D7 0C
	ora $0CD8C3.l		; 0F C3 D8 0C
	cmp $DA0C.w,Y		; D9 0C DA
	sta ($4C.b)		; 92 4C
	stp		; DB
	txa		; 8A
	jmp $FF1B.w		; 4C 1B FF
	jmp.w [$DD0C]		; DC 0C DD
	ror $5BED.w,X		; 7E ED 5B
	jsr ($0C5C.w,X)		; FC 5C 0C
	eor $5E0C.w,X		; 5D 0C 5E
	tsb $FEFF.w		; 0C FF FE
	eor $0C600C.l,X		; 5F 0C 60 0C
	adc ($0C.b,X)		; 61 0C
	.db $62, $0C, $63		; 62 0C 63
	inc $14F8.w,X		; FE F8 14
	dec $DF0C.w,X		; DE 0C DF
	tsb $87E0.w		; 0C E0 87
	sbc [$0C.b],Y		; F7 0C
	sbc ($0C.b,X)		; E1 0C
	sep #$8E		; E2 8E
	jmp $4C52.w		; 4C 52 4C
	sbc $36.b,S		; E3 36
	inx		; E8
	bpl 100.b		; 10 64
	tsb $BFFF.w		; 0C FF BF
	adc $0C.b		; 65 0C
	ror $0C.b		; 66 0C
	adc [$0C.b]		; 67 0C
	pla		; 68
	tsb $0C69.w		; 0C 69 0C
	ror A		; 6A
	tsb $0C6B.w		; 0C 6B 0C
	jmp ($F87F.w)		; 6C 7F F8
	inc $E4FF.w,X		; FE FF E4
	tsb $0CE5.w		; 0C E5 0C
	inc $0C.b		; E6 0C
	sbc [$9E.b]		; E7 9E
	jmp $4C5D.w		; 4C 5D 4C
	jmp $4CFE88.l		; 5C 88 FE 4C
	stx $FEFC.w		; 8E FC FE
	sed		; F8
	ora $E8.b,X		; 15 E8
	tsb $0CE9.w		; 0C E9 0C
	nop		; EA
	sta $EB0CFF.l,X		; 9F FF 0C EB
	tsb $0CEC.w		; 0C EC 0C
	sbc $EEC6.w		; ED C6 EE
	tsb $0CF3.w		; 0C F3 0C
	pea $3F0C.w		; F4 0C 3F
	inx		; E8
	sbc $0C.b,X		; F5 0C
	inc $0C.b,X		; F6 0C
	sbc [$0C.b],Y		; F7 0C
	sed		; F8
	stz $F8C8.w,X		; 9E C8 F8
	clc		; 18
	inc $11F8.w,X		; FE F8 11
	sbc $0CF87F.l		; EF 7F F8 0C
	beq  12.b		; F0 0C
	sbc ($0C.b),Y		; F1 0C
	sbc ($0C.b)		; F2 0C
	sbc $4CB2.w,Y		; F9 B2 4C
	nop		; EA
	jmp $B5E9.w		; 4C E9 B5
	sbc $C4E84C.l,X		; FF 4C E8 C4
	sed		; F8
	rol A		; 2A
	inc $ABF8.w,X		; FE F8 AB
	brk $FF.b		; 00 FF
	sed		; F8
	ror $28FA.w,X		; 7E FA 28
	xce		; FB
	plp		; 28
	jsr ($FD28.w,X)		; FC 28 FD
	inc $28FB.w,X		; FE FB 28
	sed		; F8
	sed		; F8
	and [$FE.b],Y		; 37 FE
	plp		; 28
	sbc $290028.l,X		; FF 28 00 29
	ora ($29.b,X)		; 01 29
	sed		; F8
	sed		; F8
	and [$02.b],Y		; 37 02
	and #$F703.w		; 29 03 F7
	sbc $290429.l		; EF 29 04 29
	ora $F8.b		; 05 F8
	sed		; F8
	sec		; 38
	asl $29.b		; 06 29
	ora [$29.b]		; 07 29
	php		; 08
	and #$F809.w		; 29 09 F8
	sed		; F8
	sec		; 38
	asl A		; 0A
	cmp $0B29BF.l,X		; DF BF 29 0B
	and #$290C.w		; 29 0C 29
	ora $F8F8.w		; 0D F8 F8
	sec		; 38
	asl $0F29.w		; 0E 29 0F
	and #$2910.w		; 29 10 29
	ora ($7F.b),Y		; 11 7F
	eor $F8.b,X		; 55 F8
	sed		; F8
	sec		; 38
	ora ($29.b)		; 12 29
	ora ($29.b,S),Y		; 13 29
	trb $29.b		; 14 29
	ora $F8.b,X		; 15 F8
	sed		; F8
	sei		; 78
	rti		; 40

	sed		; F8
	and $7FE840.l,X		; 3F 40 E8 7F
	sbc $55FCF8.l,X		; FF F8 FC 55
	eor $FF.b,X		; 55 FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($C000.w,X)		; FC 00 C0
	ror $F8C0.w		; 6E C0 F8
	ora $1FC020.l,X		; 1F 20 C0 1F
	cpy #$1FF8.w		; C0 F8 1F
	eor $55.b,X		; 55 55
	jsr $1FC0.w		; 20 C0 1F
	cpy #$1FF8.w		; C0 F8 1F
	jsr $1FC0.w		; 20 C0 1F
	cpy #$1FF8.w		; C0 F8 1F
	jsr $1FC0.w		; 20 C0 1F
	cpy #$1FF8.w		; C0 F8 1F
	cpx #$3FC0.w		; E0 C0 3F
	rts		; 60

	cpy #$151F.w		; C0 1F 15
	brk $C0.b		; 00 C0
	sed		; F8
	eor $3FC020.l,X		; 5F 20 C0 3F
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $00FF.w		; 8D FF 00
	sbc $FF1EF8.l,X		; FF F8 1E FF
	inc $00CE.w,X		; FE CE 00
	ora $8301.w,Y		; 19 01 83
	sta $FF.b,S		; 83 FF
	ora [$BE.b]		; 07 BE
	sbc $55FFAA.l,X		; FF AA FF 55
	xce		; FB
	inc $00FE.w		; EE FE 00
	jmp ($ED0F.w,X)		; 7C 0F ED
	cpx #$0AF8.w		; E0 F8 0A
	sta ($00.b,S),Y		; 93 00
	ldy $A4.b		; A4 A4
	sbc [$5F.b]		; E7 5F
	cpx #$0AF8.w		; E0 F8 0A
	tad		; 5B
	cpy #$0CF8.w		; C0 F8 0C
	cmp $00F42F.l		; CF 2F F4 00
	ora ($00.b,X)		; 01 00
	lsr $C05E.w,X		; 5E 5E C0
	sed		; F8
	phd		; 0B
	inc $E0A1.w,X		; FE A1 E0
	sed		; F8
	asl A		; 0A
	eor [$00.b],Y		; 57 00
	adc $0079E1.l,X		; 7F E1 79 00
	asl A		; 0A
	brk $C0.b		; 00 C0
	cpy #$C7C7.w		; C0 C7 C7
	cpx #$09F8.w		; E0 F8 09
	inc $003F.w,X		; FE 3F 00
	cmp ($83.b)		; D2 83
	sec		; 38
	cpx #$90FD.w		; E0 FD 90
	rts		; 60

	brk $04.b		; 00 04
	tsb $E3.b		; 04 E3
	sta $7C.b		; 85 7C
	cpx #$0BF8.w		; E0 F8 0B
	xce		; FB
	cpy #$FEFF.w		; C0 FF FE
	ora $F4.b,X		; 15 F4
	cmp #$57C9.w		; C9 C9 57
	lda ($10.b,X)		; A1 10
	cpx #$0AF8.w		; E0 F8 0A
	inc $E036.w,X		; FE 36 E0
	sbc $6107FE.l,X		; FF FE 07 61
	lda ($D0.b,X)		; A1 D0
	ply		; 7A
	jsr ($E0FC.w,X)		; FC FC E0
	sed		; F8
	phd		; 0B
	inc $5003.w,X		; FE 03 50
	tda		; 7B
	sbc ($F8.b)		; F2 F8
	tsb $2A78.w		; 0C 78 2A
	beq  -8.b		; F0 F8
	tsb $F8FE.w		; 0C FE F8
	ora ($EA.b),Y		; 11 EA
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	trb $00F5.w		; 1C F5 00
	tax		; AA
	and $F8E2C1.l		; 2F C1 E2 F8
	inc A		; 1A
	inc $5500.w		; EE 00 55
	cpx #$F8.b		; E0 F8
	inc A		; 1A
	cpy $FF.b		; C4 FF
	asl A		; 0A
	asl A		; 0A
	adc ($0A.b),Y		; 71 0A
	nop		; EA
	sed		; F8
	ora $C4FEF6.l		; 0F F6 FE C4
	tay		; A8
	cpx #$AA.b		; E0 AA
	tax		; AA
	cmp ($F8.b,X)		; C1 F8
	cpx #$F8.b		; E0 F8
	ora $F6EA.w		; 0D EA F6
	inc $E256.w,X		; FE 56 E2
	eor [$57.b],Y		; 57 57
	lda $BFFF42.l,X		; BF 42 FF BF
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	phd		; 0B
	dec $F640.w		; CE 40 F6
	sbc $00F0.w,X		; FD F0 00
	stx $3000.w		; 8E 00 30
	bmi 123.b		; 30 7B
	sta $FFA5A5.l		; 8F A5 A5 FF
	cpx #$F0.b		; E0 F0
	asl A		; 0A
	cmp $E05A00.l		; CF 00 5A E0
	sbc $95.b,X		; F5 95
	brk $3E.b		; 00 3E
	stp		; DB
	clc		; 18
	inc $9D.b,X		; F6 9D
	sta $F0A0.w,X		; 9D A0 F0
	ora $AC62.w		; 0D 62 AC
	sbc ($80.b,S),Y		; F3 80
	sbc $02.b,X		; F5 02
	plb		; AB
	.db $42, $FC		; 42 FC
	ldy #$E9.b		; A0 E9
	inc $E8DF.w,X		; FE DF E8
	ora ($6B.b)		; 12 6B
	sed		; F8
	tsb $F8E0.w		; 0C E0 F8
	bpl -84.b		; 10 AC
	plb		; AB
	bit $A1.b,X		; 34 A1
	jsr ($F8E0.w,X)		; FC E0 F8
	ora [$2A.b],Y		; 17 2A
	sty $C2FC.w		; 8C FC C2
	cmp [$07.b]		; C7 07
	sbc $0EF8FF.l,X		; FF FF F8 0E
	ldy $C7.b		; A4 C7
	cmp [$F8.b]		; C7 F8
	sed		; F8
	eor [$9C.b],Y		; 57 9C
	dec $1F.b,X		; D6 1F
	ora $E0.b		; 05 E0
	sbc $3438.w,X		; FD 38 34
	sbc ($FF.b),Y		; F1 FF
	sed		; F8
	ora #$FC.b		; 09 FC
	jsr ($0002.w,X)		; FC 02 00
	cmp #$C8.b		; C9 C8
	rti		; 40

	rtl		; 6B

	plx		; FA
	ora [$9C.b]		; 07 9C
	jsr ($F22E.w,X)		; FC 2E F2
	and [$28.b],Y		; 37 28
	sbc ($FF.b),Y		; F1 FF
	inc $8301.w,X		; FE 01 83
	stz $A8.b		; 64 A8
	sbc ($15.b),Y		; F1 15
	cpx $EB84.w		; EC 84 EB
	cpx #$9B.b		; E0 9B
	sed		; F8
	ora $604B5F.l		; 0F 5F 4B 60
	ldy $E9.b		; A4 E9
	eor $84.b,X		; 55 84
	sbc #$7C.b		; E9 7C
	stz $E0.b,X		; 74 E0
	inc $233F.w,X		; FE 3F 23
	jmp ($F821.w)		; 6C 21 F8
	asl A		; 0A
	plb		; AB
	cpx #$FF.b		; E0 FF
	jmp ($407C.w,X)		; 7C 7C 40
	inx		; E8
	ora $8583.w		; 0D 83 85
	lda [$E0.b],Y		; B7 E0
	sbc $F27E.w,X		; FD 7E F2
	jsr ($000A.w,X)		; FC 0A 00
	stx $96.b,Y		; 96 96
	cpx #$F8.b		; E0 F8
	ora $1769.w		; 0D 69 17
	bvc -32.b		; 50 E0
	sbc $0054.w,X		; FD 54 00
	cpx #$D4.b		; E0 D4
	sbc ($7C.b,X)		; E1 7C
	cld		; D8
	cpx #$F8.b		; E0 F8
	tsb $01FF.w		; 0C FF 01
	jmp ($15FE.w,X)		; 7C FE 15
	ora $35.b,X		; 15 35
	and $A15757.l,X		; 3F 57 57 A1
	ora ($D8.b,X)		; 01 D8
	tsb $E482.w		; 0C 82 E4
	clv		; B8
	sbc ($EA.b)		; F2 EA
	stz $48.b,X		; 74 48
	sbc ($6C.b),Y		; F1 6C
	cmp $B0.b,S		; C3 B0
	cpx #$FE.b		; E0 FE
	adc $EAE87F.l,X		; 7F 7F E8 EA
	sbc $AAAADE.l,X		; FF DE AA AA
	adc [$20.b]		; 67 20
	ldy #$E2.b		; A0 E2
	trb $FF.b		; 14 FF
	bra -22.b		; 80 EA
	dec $8A6C.w,X		; DE 6C 8A
	bmi  -1.b		; 30 FF
	plx		; FA
	ldy $D5E8.w		; AC E8 D5
	sbc $F8A469.l,X		; FF 69 A4 F8
	jmp $F0C0F3.l		; 5C F3 C0 F0
	bpl  84.b		; 10 54
	nop		; EA
	jmp.w [$AB52]		; DC 52 AB
	bvc -96.b		; 50 A0
	beq  22.b		; F0 16
	nop		; EA
	rti		; 40

	bit $AAF5.w,X		; 3C F5 AA
	lda #$FE.b		; A9 FE
	sbc $410DD8.l,X		; FF D8 0D 41
	phy		; 5A
	cpx $FD.b		; E4 FD
	eor $7B.b,X		; 55 7B
	cpx #$F8.b		; E0 F8
	clc		; 18
	cpx $57.b		; E4 57
	tay		; A8
	ora ($F0.b,X)		; 01 F0
	ora ($9A.b),Y		; 11 9A
	.db $82, $E4, $01		; 82 E4 01
	inc $BFC4.w,X		; FE C4 BF
	txy		; 9B
	asl A		; 0A
	sta $E1.b,S		; 83 E1
	inx		; E8
	ora ($C4.b)		; 12 C4
	inc $E8C1.w,X		; FE C1 E8
	ora [$ED.b],Y		; 17 ED
	rol A		; 2A
	cmp $E0.b,X		; D5 E0
	ror A		; 6A
	cmp $A1.b,X		; D5 A1
	inx		; E8
	ora $FC68.w,Y		; 19 68 FC
	cpx #$F8.b		; E0 F8
	tas		; 1B
	ldy #$FC.b		; A0 FC
	sbc $9F.b,X		; F5 9F
	sbc $F840.w		; ED 40 F8
	ora $BC.b,X		; 15 BC
	sed		; F8
	ora #$E0.b		; 09 E0
	sed		; F8
	ora ($69.b,S),Y		; 13 69
	lda [$05.b]		; A7 05
	plx		; FA
	cpx #$EA.b		; E0 EA
	ora $E0.b,X		; 15 E0
	sed		; F8
	ora $02.b,X		; 15 02
	sbc $95A0.w,X		; FD A0 95
	asl $50.b		; 06 50
	lda $FFFCBC.l		; AF BC FC FF
	sed		; F8
	ora $A05FC4.l		; 0F C4 5F A0
	jsr ($1498.w,X)		; FC 98 14
	sed		; F8
	bra 127.b		; 80 7F
	ldy $F8E0.w,X		; BC E0 F8
	ora $60F4E8.l		; 0F E8 F4 60
	and $FC.b		; 25 FC
	sed		; F8
	asl A		; 0A
	sbc $A0.b,X		; F5 A0
	beq  19.b		; F0 13
	pla		; 68
	inc $D1E4.w,X		; FE E4 D1
	sta [$E0.b]		; 87 E0
	sed		; F8
	ora $EC.b,X		; 15 EC
	ldx $8FE1.w,Y		; BE E1 8F
	sta $F20C0C.l		; 8F 0C 0C F2
	and $903E.w,X		; 3D 3E 90
	bcc -24.b		; 90 E8
	inc $0070.w,X		; FE 70 00
	sbc ($CA.b,S),Y		; F3 CA
	adc $807F00.l		; 6F 00 7F 80
	adc $C837.w,X		; 7D 37 C8
	dex		; CA
	sbc $95.b,X		; F5 95
	nop		; EA
	pld		; 2B
	pld		; 2B
	sbc #$C1.b		; E9 C1
	cmp ($C6.b,X)		; C1 C6
	sed		; F8
	ora #$C0.b		; 09 C0
	dec $D2.b		; C6 D2
	cpx #$3E.b		; E0 3E
	jsr ($E7AF.w,X)		; FC AF E7
	sbc #$80.b		; E9 80
	ora $FFF16F.l,X		; 1F 6F F1 FF
	jsr ($2CFF.w,X)		; FC FF 2C
	bit $F8A2.w		; 2C A2 F8
	ora $96D3.w		; 0D D3 96
	cld		; D8
	ora #$60.b		; 09 60
	sbc $FF.b,S		; E3 FF
	and $AD5C.w		; 2D 5C AD
	lda $F8E0.w		; AD E0 F8
	ora $0752.w		; 0D 52 07
	cpx #$0A.b		; E0 0A
	tya		; 98
	sta $FA.b		; 85 FA
	ldy $FF.b,X		; B4 FF
	beq  16.b		; F0 10
	lda $D852DD.l		; AF DD 52 D8
	tsb $2AAA.w		; 0C AA 2A
	cmp $E0.b,X		; D5 E0
	sed		; F8
	tas		; 1B
	sty $E1.b,X		; 94 E1
	mvn $F8,$E0		; 54 E0 F8
	ora $05FA.w,X		; 1D FA 05
	cpx #$F8.b		; E0 F8
	ora $BC57.w,Y		; 19 57 BC
	inc $F501.w,X		; FE 01 F5
	asl A		; 0A
	cpx #$F0.b		; E0 F0
	ora ($B6.b),Y		; 11 B6
	cmp [$E4.b],Y		; D7 E4
	eor $BF.b,S		; 43 BF
	bit $00.b,X		; 34 00
	cmp $16F860.l,X		; DF 60 F8 16
	cpy $64.b		; C4 64
	.db $82, $7F, $9E		; 82 7F 9E
	inc $E0A1.w,X		; FE A1 E0
	sed		; F8
	tsb $DFD2.w		; 0C D2 DF
	ora ($E0.b,X)		; 01 E0
	sbc $05C4.w,X		; FD C4 05
	sbc $50FFBF.l,X		; FF BF FF 50
	bvc -105.b		; 50 97
	cpx #$F8.b		; E0 F8
	tsb $3F4C.w		; 0C 4C 3F
	lda $A6C4E0.l		; AF E0 C4 A6
	eor $B5FF5A.l,X		; 5F 5A FF B5
	lda $6C.b,X		; B5 6C
	cpx $B3F2.w		; EC F2 B3
	lda ($E2.b,S),Y		; B3 E2
	sed		; F8
	ora #$4A.b		; 09 4A
	cpx $4C.b		; E4 4C
	inx		; E8
	sbc ($50.b,S),Y		; F3 50
	cmp $3FBF05.l,X		; DF 05 BF 3F
	sbc $15EAEA.l,X		; FF EA EA 15
	tsb $F1.b		; 04 F1
	jsl $FEE222.l		; 22 22 E2 FE
	sbc ($1F.b,S),Y		; F3 1F
	inc $CAB4.w,X		; FE B4 CA
	cmp $D500.w,X		; DD 00 D5
	rol A		; 2A
	cpx #$41.b		; E0 41
	ldx $FF1A.w,Y		; BE 1A FF
	tax		; AA
	tax		; AA
	adc ($C7.b,X)		; 61 C7
	rti		; 40

	rti		; 40

	nop		; EA
	sta [$87.b]		; 87 87
	plp		; 28
	sbc [$00.b],Y		; F7 00
	lda $DF7EE0.l,X		; BF E0 7E DF
	sei		; 78
	jsr $4EF3.w		; 20 F3 4E
	lda $A8FF9F.l,X		; BF 9F FF A8
	ora ($D1.b,X)		; 01 D1
	jsr $B220.w		; 20 20 B2
	lda ($E0.b)		; B2 E0
	inc $D078.w,X		; FE 78 D0
	eor [$E2.b],Y		; 57 E2
	cmp $824D00.l,X		; DF 00 4D 82
	jsr $00EB.w		; 20 EB 00
	inx		; E8
	ora $68D6.w,Y		; 19 D6 68
	lda $5FE924.l		; AF 24 E9 5F
	eor $D7.b,S		; 43 D7
	cpx #$F8.b		; E0 F8
	ora ($2A.b),Y		; 11 2A
	cpx #$41.b		; E0 41
	bne  27.b		; D0 1B
	stz $755B.w,X		; 9E 5B 75
	cpx #$F8.b		; E0 F8
	asl $E0AB.w,X		; 1E AB E0
	sed		; F8
	asl $E0E0.w,X		; 1E E0 E0
	sed		; F8
	asl $F844.w,X		; 1E 44 F8
	phd		; 0B
	ldy $F2.b,X		; B4 F2
	cpx #$F8.b		; E0 F8
	ora $578A75.l		; 0F 75 8A 57
	cmp $E2.b,X		; D5 E2
	sed		; F8
	ora #$FD.b		; 09 FD
	cop $E0.b		; 02 E0
	cpx #$19.b		; E0 19
	jmp $E0E0EE.l		; 5C EE E0 E0
	ora ($E0.b,S),Y		; 13 E0
	inc $E278.w,X		; FE 78 E2
	cpx #$F8.b		; E0 F8
	ora $54DF05.l		; 0F 05 DF 54
	plb		; AB
	cpx #$E2.b		; E0 E2
	dey		; 88
	rts		; 60

	sed		; F8
	ora [$46.b],Y		; 17 46
	lda $6057A8.l,X		; BF A8 57 60
	cld		; D8
	tas		; 1B
	sta $FA.b,X		; 95 FA
	ror $F6.b,X		; 76 F6
	bra -14.b		; 80 F2
	bit $DC.b		; 24 DC
	inc $E009.w,X		; FE 09 E0
	sed		; F8
	asl $FF92.w		; 0E 92 FF
	txa		; 8A
	lsr $758F.w,X		; 5E 8F 75
	rts		; 60

	beq  27.b		; F0 1B
	sbc $FF.b,X		; F5 FF
	tax		; AA
	inx		; E8
	cmp $F8E0.w,Y		; D9 E0 F8
	ora $FFDF.w,Y		; 19 DF FF
	tay		; A8
	eor $F5.b,X		; 55 F5
	ldy #$AB.b		; A0 AB
	tsa		; 3B
	cmp ($81.b)		; D2 81
	cpy #$17.b		; C0 17
	cpx #$D8.b		; E0 D8
	trb $FCE4.w		; 1C E4 FC
	cpx #$F8.b		; E0 F8
	tas		; 1B
	bra -23.b		; 80 E9
	lda $8756EA.l,X		; BF EA 56 87
	ora $A0.b,X		; 15 A0
	cld		; D8
	ora $7E82.w,Y		; 19 82 7E
	cmp #$FC.b		; C9 FC
	pea $F8E0.w		; F4 E0 F8
	ora ($51.b,S),Y		; 13 51
	lda $1DBAA3.l		; AF A3 BA 1D
	eor $C0C1C6.l,X		; 5F C6 C1 C0
	sed		; F8
	clc		; 18
	sbc $D962AF.l,X		; FF AF 62 D9
	inc $F8E0.w,X		; FE E0 F8
	clc		; 18
	eor ($FE.b,X)		; 41 FE
	nop		; EA
	plx		; FA
	cpy #$F5.b		; C0 F5
	jmp $F880D5.l		; 5C D5 80 F8
	ora $A2.b,X		; 15 A2
	sbc $F283.w,X		; FD 83 F2
	rti		; 40

	sed		; F8
	tas		; 1B
	ora ($FE.b,X)		; 01 FE
	rol A		; 2A
	plb		; AB
	eor $D5.b		; 45 D5
	eor [$A8.b],Y		; 57 A8
	brk $F8.b		; 00 F8
	ora $F6DC.w,X		; 1D DC F6
	cpx #$F8.b		; E0 F8
	ora ($7F.b,S),Y		; 13 7F
	tas		; 1B
	tsx		; BA
	clv		; B8
	cmp $3A.b,X		; D5 3A
	ldy #$D0.b		; A0 D0
	ora [$9C.b],Y		; 17 9C
	pei ($7F.b)		; D4 7F
	beq  21.b		; F0 15
	cpx #$F8.b		; E0 F8
	phd		; 0B
	ora ($3A.b,X)		; 01 3A
	tsx		; BA
	cpx #$F8.b		; E0 F8
	trb $A0.b		; 14 A0
	eor $E45EFC.l,X		; 5F FC 5E E4
	rol A		; 2A
	sbc $A5F859.l,X		; FF 59 F8 A5
	cpx #$E4.b		; E0 E4
	sed		; F8
	phd		; 0B
	ora [$00.b]		; 07 00
	ora $ABFDE0.l,X		; 1F E0 FD AB
	cpx #$DA.b		; E0 DA
	lda ($AB.b,S),Y		; B3 AB
	cmp ($DA.b)		; D2 DA
	ror $E8.b		; 66 E8
	asl A		; 0A
	plp		; 28
	beq  10.b		; F0 0A
	jsr $C25E.w		; 20 5E C2
	sbc $EA.b,X		; F5 EA
	stp		; DB
	sbc $42DFC1.l,X		; FF C1 DF 42
	sbc $0BF880.l,X		; FF 80 F8 0B
	mvn $5A,$FF		; 54 FF 5A
	eor $0DF8E0.l,X		; 5F E0 F8 0D
	ldy #$E0.b		; A0 E0
	sbc $56B5.w,X		; FD B5 56
	bra 127.b		; 80 7F
	clc		; 18
	cmp $F860.w		; CD 60 F8
	trb $40.b		; 14 40
	sta $DA.b,X		; 95 DA
	cpx #$F8.b		; E0 F8
	inc A		; 1A
	ora ($71.b,X)		; 01 71
	tsx		; BA
	cpx #$F8.b		; E0 F8
	inc A		; 1A
	sbc $1F.b,X		; F5 1F
	cpx #$F0.b		; E0 F0
	ora #$B7.b		; 09 B7
	sbc ($9F.b),Y		; F1 9F
	beq  18.b		; F0 12
	ora $FF.b,X		; 15 FF
	lda $5FFC.w		; AD FC 5F
	rti		; 40

	tax		; AA
	plx		; FA
	ldy $F8E1.w		; AC E1 F8
	cpy #$FE.b		; C0 FE
	ora $22.b,S		; 03 22
	cmp $D435.w,Y		; D9 35 D4
	ora $EC.b		; 05 EC
	inc $F057.w,X		; FE 57 F0
	phx		; DA
	bne  97.b		; D0 61
	rep #$02		; C2 02
	lda [$F7.b],Y		; B7 F7
	inc $8AB3.w,X		; FE B3 8A
	cmp ($2F.b),Y		; D1 2F
	trb $E2.b		; 14 E2
	and $00BC.w,X		; 3D BC 00
	php		; 08
	clc		; 18
	jmp.w [$B5FF]		; DC FF B5
	bmi -14.b		; 30 F2
	sta ($00.b),Y		; 91 00
	bit $24.b		; 24 24
	sty $9B.b,X		; 94 9B
.ACCU 16
.INDEX 16
	rep #$B2		; C2 B2
	cpx #$95CF.w		; E0 CF 95
	stp		; DB
	lda ($FD.b,X)		; A1 FD
	ora ($5F.b,S),Y		; 13 5F
	xce		; FB
	sbc ($E5.b)		; F2 E5
	brk $CC.b		; 00 CC
	tsb $9C7E.w		; 0C 7E 9C
	eor $F3F6.w,Y		; 59 F6 F3
	sta ($FF.b,X)		; 81 FF
	plx		; FA
	brk $C4.b		; 00 C4
	lda $900017.l		; AF 17 00 90
	bpl -21.b		; 10 EB
	xba		; EB
	asl $E0B2.w,X		; 1E B2 E0
	inc $00EF.w,X		; FE EF 00
	trb $E0.b		; 14 E0
	sbc $17E0.w,X		; FD E0 17
	and $76.b		; 25 76
	eor ($00.b,S),Y		; 53 00
	and $7A00.w		; 2D 00 7A
	ply		; 7A
	cpx #$0BF8.w		; E0 F8 0B
	phx		; DA
	sta [$FE.b],Y		; 97 FE
	sta $60.b		; 85 60
	sbc [$69.b]		; E7 69
	cpx $D9.b		; E4 D9
	sta ($10.b)		; 92 10
	adc $966D.w		; 6D 6D 96
	ldy $A8.b,X		; B4 A8
	sbc ($CE.b),Y		; F1 CE
	cpy #$2092.w		; C0 92 20
	sbc $95EE33.l		; EF 33 EE 95
	sta $22.b		; 85 22
	sbc $75.b,X		; F5 75
	jsl $C2E0B4.l		; 22 B4 E0 C2
	ply		; 7A
	brk $E8.b		; 00 E8
	asl A		; 0A
	adc $63277F.l,X		; 7F 7F 27 63
	cmp ($00.b,S),Y		; D3 00
	dec $C4CF.w		; CE CF C4
	cpy #$80FC.w		; C0 FC 80
	cpx #$7F30.w		; E0 30 7F
	lda ($E0.b,X)		; A1 E0
	sed		; F8
	asl A		; 0A
	inc $E7FF.w,X		; FE FF E7
	ora [$A0.b]		; 07 A0
	ldy #$F8E0.w		; A0 E0 F8
	ora #$F8FF.w		; 09 FF F8
	dec A		; 3A
	ora $6A.b		; 05 6A
	lda #$EFFA.w		; A9 FA EF
	jsl $6767B3.l		; 22 B3 67 67
	cpx $57.b		; E4 57
	pei ($E0.b)		; D4 E0
	asl A		; 0A
	sta $FF.b,X		; 95 FF
	tya		; 98
	lsr $09C8.w,X		; 5E C8 09
	iny		; C8
	sbc $2B5F.w,X		; FD 5F 2B
	jsr ($FFBF.w,X)		; FC BF FF
	sbc $F5.b,X		; F5 F5
	tax		; AA
	tyx		; BB
	txs		; 9A
	sbc $DA0AFF.l,X		; FF FF 0A DA
	tax		; AA
	jmp ($A9F1.w)		; 6C F1 A9
	ldy $9ABC.w		; AC BC 9A
	lda $57.b,S		; A3 57
	sbc ($04.b),Y		; F1 04
	bcs  12.b		; B0 0C
	cpx #$EA48.w		; E0 48 EA
	bcs -96.b		; B0 A0
	ldy $56FC.w,X		; BC FC 56
	plb		; AB
	plb		; AB
	cpx #$0BF8.w		; E0 F8 0B
	lsr $71.b,X		; 56 71
	cmp ($96.b,X)		; C1 96
	pei ($C2.b)		; D4 C2
	lda $FCFC.w		; AD FC FC
	plx		; FA
	jsr $14F0.w		; 20 F0 14
	cpx $02.b		; E4 02
	sty $E0.b,X		; 94 E0
	inx		; E8
	ora ($E8.b)		; 12 E8
	sbc $CB67.w,X		; FD 67 CB
	sbc $2AFF.w,X		; FD FF 2A
	rol A		; 2A
	bcc  -1.b		; 90 FF
	sbc $EC20D5.l,X		; FF D5 20 EC
	ora ($B6.b),Y		; 11 B6
	cpx #$62BB.w		; E0 BB 62
	sbc $8102A2.l,X		; FF A2 02 81
	cpx #$FD0D.w		; E0 0D FD
	phy		; 5A
	ora $E0.b,X		; 15 E0
	sbc $C0EA04.l,X		; FF 04 EA C0
	lda ($AA.b,X)		; A1 AA
	cmp $A4C1.w,X		; DD C1 A4
	sed		; F8
	phd		; 0B
	cpx #$0AF8.w		; E0 F8 0A
	asl $91.b		; 06 91
	eor [$73.b],Y		; 57 73
	cpx #$1111.w		; E0 11 11
	cpx #$0DF8.w		; E0 F8 0D
	sty $E091.w		; 8C 91 E0
	sbc $E077.w,X		; FD 77 E0
	eor $35.b,X		; 55 35
	phd		; 0B
	sta $700CF8.l,X		; 9F F8 0C 70
	sta ($62.b)		; 92 62
	stz $80EF.w		; 9C EF 80
	cpx #$13F8.w		; E0 F8 13
	phd		; 0B
	tax		; AA
	plp		; 28
	plx		; FA
	plx		; FA
	cpy $F2.b		; C4 F2
	sbc $5CF2A2.l,X		; FF A2 F2 5C
.ACCU 16
.INDEX 16
	rep #$7D		; C2 7D
	ldx $0541.w,Y		; BE 41 05
	ldx #$BFF2.w		; A2 F2 BF
	jsr ($F1AC.w,X)		; FC AC F1
	rol $A2.b		; 26 A2
	ldx #$D0F4.w		; A2 F4 D0
	sbc $6E.b,X		; F5 6E
	trb $09F8.w		; 1C F8 09
	tsb $C0A3.w		; 0C A3 C0
	sbc #$AFAF.w		; E9 AF AF
	cmp $E0.b,X		; D5 E0
	sbc $A2A2.w,X		; FD A2 A2
	sta ($F2.b,X)		; 81 F2
	bvc  11.b		; 50 0B
	eor [$E0.b],Y		; 57 E0
	sbc $F8405D.l,X		; FF 5D 40 F8
	asl A		; 0A
	sbc $455454.l,X		; FF 54 54 45
	jsr ($A68B.w,X)		; FC 8B A6
	cmp [$01.b]		; C7 01
	trb $E0.b		; 14 E0
	beq  10.b		; F0 0A
	jsr ($347A.w,X)		; FC 7A 34
	sbc ($E0.b,X)		; E1 E0
	sed		; F8
	asl A		; 0A
	ldy $7AAA.w		; AC AA 7A
	cli		; 58
	cpx $047F.w		; EC 7F 04
	sbc $26.b,X		; F5 26
	sbc ($E0.b)		; F2 E0
	sed		; F8
	phd		; 0B
	eor $C9A0DE.l		; 4F DE A0 C9
	ora $B1.b		; 05 B1
	tsb $F3.b		; 04 F3
	phy		; 5A
	ora ($91.b,S),Y		; 13 91
	cpx $EDC1.w		; EC C1 ED
	sbc $555CA5.l,X		; FF A5 5C 55
	iny		; C8
	dec $EAE0.w		; CE E0 EA
	tsb $F1.b		; 04 F1
	stx $C0DA.w		; 8E DA C0
	sed		; F8
	ora #$EA5A.w		; 09 5A EA
	bra  -8.b		; 80 F8
	phd		; 0B
	clv		; B8
	and $FF.b		; 25 FF
	ldy $B4.b,X		; B4 B4
	ora $60.b,X		; 15 60
	sed		; F8
	tsb $E04B.w		; 0C 4B E0
	sed		; F8
	asl A		; 0A
	ldy #$4280.w		; A0 80 42
	ror $FD26.w		; 6E 26 FD
	ldy #$10F8.w		; A0 F8 10
	dec $6140.w		; CE 40 61
	ldy $894A.w		; AC 4A 89
	tsb $80.b		; 04 80
	bra -126.b		; 80 82
	ora ($4A.b,X)		; 01 4A
	tsx		; BA
	ldy #$D0DE.w		; A0 DE D0
	sta ($EA.b)		; 92 EA
	adc $DA5EDD.l		; 6F DD 5E DA
	iny		; C8
	sbc ($45.b),Y		; F1 45
	rti		; 40

	phd		; 0B
	ldx $D9.b,Y		; B6 D9
	and [$C5.b]		; 27 C5
	ldx $7B51.w		; AE 51 7B
	sty $CE.b		; 84 CE
	tsb $BC.b		; 04 BC
	cpy #$C4FD.w		; C0 FD C4
	cmp #$82A9.w		; C9 A9 82
	.db $82, $46, $9A		; 82 46 9A
	phx		; DA
	eor $7DC4A0.l,X		; 5F A0 C4 7D
	cmp ($79.b,S),Y		; D3 79
	dec $0AB8.w		; CE B8 0A
	lda $04C0AF.l		; AF AF C0 04
	tsb $B2.b		; 04 B2
	cpy #$44BB.w		; C0 BB 44
	ldy #$7C22.w		; A0 22 7C
	cpy #$DEFB.w		; C0 FB DE
	sed		; F8
	ora #$9C26.w		; 09 26 9C
	phd		; 0B
	cpx #$1515.w		; E0 15 15
	dey		; 88
	cpy #$C17E.w		; C0 7E C1
	sta ($A0.b),Y		; 91 A0
	asl $E0FD.w		; 0E FD E0
	sec		; 38
	bra   9.b		; 80 09
	.db $42, $F2		; 42 F2
	stz $F2.b		; 64 F2
	asl A		; 0A
	asl A		; 0A
	plb		; AB
	inc $B576.w,X		; FE 76 B5
	rti		; 40

	stz $64F2.w		; 9C F2 64
	pea $8686.w		; F4 86 86
	cpx #$D5FC.w		; E0 FC D5
	cmp $A0.b,X		; D5 A0
	ldy #$5A01.w		; A0 01 5A
	tsx		; BA
	ora ($46.b,X)		; 01 46
	sbc ($E0.b)		; F2 E0
	jsr ($C82A.w,X)		; FC 2A C8
	phb		; 8B
	cpx #$8888.w		; E0 88 88
	sbc $64.b,X		; F5 64
	sta $65.b,X		; 95 65
	sbc #$FCC0.w		; E9 C0 FC
	jsr ($E877.w,X)		; FC 77 E8
	sbc #$FCC0.w		; E9 C0 FC
	jsr ($20FC.w,X)		; FC FC 20
	cmp ($EC.b)		; D2 EC
	cpx #$C550.w		; E0 50 C5
	cli		; 58
	eor ($16.b,X)		; 41 16
	.db $42, $41		; 42 41
	clc		; 18
	sty $AF.b		; 84 AF
	inc $F3.b		; E6 F3
	ldy $BE.b,X		; B4 BE
	adc ($80.b)		; 72 80
	eor $D3C190.l		; 4F 90 C1 D3
	eor $02.b,X		; 55 02
	cop $F8.b		; 02 F8
	cld		; D8
	adc $E8C321.l,X		; 7F 21 C3 E8
	jsr ($F8FD.w,X)		; FC FD F8
	cld		; D8
	tay		; A8
.INDEX 16
	rep #$50		; C2 50
	tay		; A8
	stz $FFEC.w,X		; 9E EC FF
	adc $75.b,X		; 75 75
	pea $0802.w		; F4 02 08
	lda ($FB.b),Y		; B1 FB
	eor $8AEE9E.l		; 4F 9E EE 8A
	jsr ($C1AB.w,X)		; FC AB C1
	brk $54.b		; 00 54
	mvn $EA,$EA		; 54 EA EA
	sbc $3AFD.w,X		; FD FD 3A
	bcc -60.b		; 90 C4
	trb $8A.b		; 14 8A
	bvc -118.b		; 50 8A
	ora $00.b,X		; 15 00
	cld		; D8
	cpy $A0.b		; C4 A0
	ldy #$F494.w		; A0 94 F4
	tsb $80.b		; 04 80
	pea $EA50.w		; F4 50 EA
	bcc  60.b		; 90 3C
	ply		; 7A
	ldy #$802F.w		; A0 2F 80
	beq  11.b		; F0 0B
	pea $FC80.w		; F4 80 FC
	ldx $05E9.w		; AE E9 05
	.db $42, $02		; 42 02
	tay		; A8
	pla		; 68
	sbc $0915.w,X		; FD 15 09
	clv		; B8
	plx		; FA
	bra -28.b		; 80 E4
	ldy #$0C80.w		; A0 80 0C
	inc A		; 1A
	stz $E940.w		; 9C 40 E9
	ldy #$F0DC.w		; A0 DC F0
	stx $F4.b		; 86 F4
	nop		; EA
	eor $DCB2AB.l,X		; 5F AB B2 DC
	lsr $58.b,X		; 56 58
	cmp ($FE.b),Y		; D1 FE
	sbc $FD.b,S		; E3 FD
	sta ($96.b)		; 92 96
	.db $82, $CC, $C2		; 82 CC C2
	sta ($D8.b)		; 92 D8
	sbc ($80.b)		; F2 80
	jsr ($408A.w,X)		; FC 8A 40
	rti		; 40

	tay		; A8
	cpx #$A809.w		; E0 09 A8
	tax		; AA
	nop		; EA
	cpy $F8E1.w		; CC E1 F8
	bvs  10.b		; 70 0A
	sbc ($F2.b)		; F2 F2
	tay		; A8
	cpx $AC.b		; E4 AC
	jsr ($FCC0.w,X)		; FC C0 FC
	brk $F0.b		; 00 F0
	asl A		; 0A
	stz $EA.b,X		; 74 EA
	bra -58.b		; 80 C6
	ldx #$1701.w		; A2 01 17
	cmp $102A.w,Y		; D9 2A 10
	sbc $7A75.w,X		; FD 75 7A
	mvp $BC,$42		; 44 42 BC
	adc $75CACF.l		; 6F CF CA 75
	ldy #$6805.w		; A0 05 68
	tay		; A8
	eor [$0A.b],Y		; 57 0A
	plx		; FA
	brk $40.b		; 00 40
	cmp ($78.b,S),Y		; D3 78
	bvs  11.b		; 70 0B
	sta $A8A89A.l		; 8F 9A A8 A8
	.db $42, $40		; 42 40
	ldy $3067.w		; AC 67 30
	adc ($2A.b,X)		; 61 2A
	sbc $B8E0DF.l,X		; FF DF E0 B8
	ldy #$09F8.w		; A0 F8 09
	bvc -46.b		; 50 D2
	nop		; EA
	tay		; A8
	bvs -110.b		; 70 92
	adc $DA3C.w		; 6D 3C DA
	cpx #$0B70.w		; E0 70 0B
	inc $2AFC.w,X		; FE FC 2A
	ldx $2A15.w,Y		; BE 15 2A
	bne -22.b		; D0 EA
	ldy $A503.w		; AC 03 A5
	eor $FFF37B.l,X		; 5F 7B F3 FF
	lsr A		; 4A
	jmp.w [$F8FE]		; DC FE F8
	ora #$D560.w		; 09 60 D5
	stz $A0.b		; 64 A0
	adc #$FC16.w		; 69 16 FC
	cmp ($FF.b)		; D2 FF
	jsr ($F6A8.w,X)		; FC A8 F6
	cmp ($B8.b),Y		; D1 B8
	ora #$E857.w		; 09 57 E8
	lsr $00.b,X		; 56 00
	lsr A		; 4A
	lda $E0.b,X		; B5 E0
	sed		; F8
	ora #$F8A0.w		; 09 A0 F8
	ora $828248.l		; 0F 48 82 82
	sta ($54.b),Y		; 91 54
	cmp $6E.b,X		; D5 6E
	plb		; AB
	lsr A		; 4A
	asl $E0DB.w,X		; 1E DB E0
	sed		; F8
	ora ($B8.b),Y		; 11 B8
	sbc ($5F.b)		; F2 5F
	stz $B9.b		; 64 B9
	lda ($FE.b,X)		; A1 FE
	dec $CA.b,X		; D6 CA
	sbc $BFFF.w,X		; FD FF BF
	cpx #$10F8.w		; E0 F8 10
	eor [$28.b],Y		; 57 28
	nop		; EA
	ora $D5.b,X		; 15 D5
	rol A		; 2A
	lda $AA5550.l		; AF 50 55 AA
	sta ($FD.b)		; 92 FD
	plx		; FA
	bvs  -4.b		; 70 FC
	cpx #$12F8.w		; E0 F8 12
	inc $40BA.w,X		; FE BA 40
	pea $7C20.w		; F4 20 7C
	bra -82.b		; 80 AE
	bvc -37.b		; 50 DB
.INDEX 16
	rep #$15		; C2 15
	nop		; EA
	eor ($E0.b,S),Y		; 53 E0
	sed		; F8
	bpl 117.b		; 10 75
	ldx $85F3.w,Y		; BE F3 85
	pld		; 2B
	cmp $DFF8.w,Y		; D9 F8 DF
	pld		; 2B
	jmp $EC5300.l		; 5C 00 53 EC
	tya		; 98
	sta $E0.b,X		; 95 E0
	beq  10.b		; F0 0A
	cpx $2A.b		; E4 2A
	rol A		; 2A
	mvn $C9,$F7		; 54 F7 C9
	sta $6A.b		; 85 6A
	inx		; E8
	nop		; EA
	ldx $B2.b,Y		; B6 B2
	cpx $D5.b		; E4 D5
	stz $DD.b		; 64 DD
	jsr $C0FC.w		; 20 FC C0
	nop		; EA
	ora $41.b		; 05 41
	eor ($EB.b)		; 52 EB
	cmp ($D4.b,S),Y		; D3 D4
	tay		; A8
.INDEX 8
	sep #$D8		; E2 D8
	cpy #$F8.b		; C0 F8
	ora #$D39C.w		; 09 9C D3
	ora [$40.b],Y		; 17 40
	plx		; FA
	sty $AF.b,X		; 94 AF
	lda $12F820.l,X		; BF 20 F8 12
	.db $42, $20		; 42 20
	sec		; 38
	nop		; EA
	phd		; 0B
	bvc 122.b		; 50 7A
	tsx		; BA
	beq -32.b		; F0 E0
	sed		; F8
	ora ($E8.b)		; 12 E8
	jsl $E98AFA.l		; 22 FA 8A E9
	lda ($C3.b,X)		; A1 C3
	ldx $F182.w,Y		; BE 82 F1
	and $F8E0.w,X		; 3D E0 F8
	bpl  21.b		; 10 15
	sbc $AAA0C8.l,X		; FF C8 A0 AA
	.db $42, $5F		; 42 5F
	lsr $3A92.w,X		; 5E 92 3A
	ldy $F820.w,X		; BC 20 F8
	bpl -90.b		; 10 A6
	rtl		; 6B

	.db $62, $84, $F8		; 62 84 F8
	asl $3B.b,X		; 16 3B
	cmp $C0.b,X		; D5 C0
	sed		; F8
	ora ($88.b)		; 12 88
	rol $1581.w,X		; 3E 81 15
	nop		; EA
	cpx #$02.b		; E0 02
	cpx #$ED.b		; E0 ED
	brk $F0.b		; 00 F0
	tsb $1FB5.w		; 0C B5 1F
	sbc $7B7E58.l,X		; FF 58 7E 7B
	plx		; FA
	lda ($BE.b)		; B2 BE
	rts		; 60

	sed		; F8
	ora ($9F.b)		; 12 9F
	sbc $09FF64.l,X		; FF 64 FF 09
	lda #$7CBE.w		; A9 BE 7C
	cpy #$A2.b		; C0 A2
	sta ($F1.b,X)		; 81 F1
	asl A		; 0A
	rts		; 60

	bpl  -1.b		; 10 FF
	iny		; C8
	sbc $BF5020.l,X		; FF 20 50 BF
	ldx $FC7D.w,Y		; BE 7D FC
	eor ($51.b),Y		; 51 51
	sta ($FE.b)		; 92 FE
	sed		; F8
	tsb $FFB7.w		; 0C B7 FF
	tad		; 5B
	sbc $BBEBA1.l,X		; FF A1 EB BB
	wai		; CB
	sbc #$5DA2.w		; E9 A2 5D
	ldx $B4.b,Y		; B6 B4
	cpx #$F8.b		; E0 F8
	ora ($52.b),Y		; 11 52
	sbc $60FF04.l,X		; FF 04 FF 60
	jsr ($7788.w,X)		; FC 88 77
	lda ($D7.b),Y		; B1 D7
	cpx #$F8.b		; E0 F8
	ora ($46.b),Y		; 11 46
	xce		; FB
	cpy #$E2.b		; C0 E2
	lda $54.b,S		; A3 54
	plb		; AB
	ora ($F6.b,X)		; 01 F6
	dey		; 88
	tsb $FCFE.w		; 0C FE FC
	and [$0C.b],Y		; 37 0C
	sty $13FF.w		; 8C FF 13
	sbc $B57CA6.l,X		; FF A6 7C B5
	sty $FF.b		; 84 FF
	eor ($FE.b,X)		; 41 FE
	ora ($3D.b)		; 12 3D
	cpx #$F8.b		; E0 F8
	asl $FF90.w		; 0E 90 FF
	and #$B6F6.w		; 29 F6 B6
	eor #$8286.w		; 49 86 82
	rti		; 40

	inx		; E8
	eor ($BC.b)		; 52 BC
	cpx #$F8.b		; E0 F8
	ora $EFA286.l		; 0F 86 A2 EF
	bpl  48.b		; 10 30
	sbc ($BC.b)		; F2 BC
	ora $07.b		; 05 07
	eor $F820.w,X		; 5D 20 F8
	bpl  45.b		; 10 2D
	bne -28.b		; D0 E4
	trb $3CF2.w		; 1C F2 3C
	sbc ($FC.b)		; F2 FC
	ora $9A.b,S		; 03 9A
	cmp ($AB.b,X)		; C1 AB
	lda $E0.b		; A5 E0
	sed		; F8
	asl $465E.w		; 0E 5E 46
	lda $64.b		; A5 64
	adc $C0.b,S		; 63 C0
	beq  18.b		; F0 12
	inc $82.b,X		; F6 82
	adc $F3.b,X		; 75 F3
	asl A		; 0A
	phy		; 5A
	ror A		; 6A
	txs		; 9A
	cmp $E8E2.w,Y		; D9 E2 E8
	ora $FC0424.l		; 0F 24 04 FC
	tsx		; BA
	tax		; AA
	lda $7E.b,X		; B5 7E
	cmp ($B5.b,X)		; C1 B5
	sta ($E2.b)		; 92 E2
	bvc  12.b		; 50 0C
	bpl -126.b		; 10 82
	ldy #$FF.b		; A0 FF
	adc ($7E.b,S),Y		; 73 7E
	cmp $90.b,S		; C3 90
	sei		; 78
	ora $D0E0.w		; 0D E0 D0
	.db $42, $64		; 42 64
	pea $48F8.w		; F4 F8 48
	cpy #$E1.b		; C0 E1
	plb		; AB
	jsr $0EF8.w		; 20 F8 0E
	asl A		; 0A
	tax		; AA
	sta $846A.w		; 8D 6A 84
	sbc ($80.b),Y		; F1 80
	inc $DED5.w,X		; FE D5 DE
	bra -24.b		; 80 E8
	bpl  66.b		; 10 42
	rtl		; 6B

	inc $14A4.w,X		; FE A4 14
	lda $7A.b,X		; B5 7A
	cpx #$A8.b		; E0 A8
	asl A		; 0A
	cpx #$F8.b		; E0 F8
	ora #$F484.w		; 09 84 F4
	cop $7C.b		; 02 7C
	cmp ($B8.b,X)		; C1 B8
	lda ($C0.b)		; B2 C0
	beq  19.b		; F0 13
	ldy #$5F.b		; A0 5F
	ora $F5.b		; 05 F5
	lda $A0DBA4.l		; AF A4 DB A0
	tay		; A8
	phd		; 0B
	inc $02FE.w,X		; FE FE 02
	sbc $AF50.w,X		; FD 50 AF
	asl A		; 0A
	sbc $DCC4B7.l,X		; FF B7 C4 DC
	ora $58.b,S		; 03 58
	cpx #$F8.b		; E0 F8
	ora ($A8.b)		; 12 A8
	eor [$C4.b],Y		; 57 C4
	phk		; 4B
	sbc $A0FAFE.l,X		; FF FE FA A0
	sed		; F8
	ora ($D2.b,S),Y		; 13 D2
	eor $4A.b,X		; 55 4A
	sbc $F8C0FD.l,X		; FF FD C0 F8
	ora ($0A.b),Y		; 11 0A
	sbc $C6.b,X		; F5 C6
	txs		; 9A
	adc [$EA.b]		; 67 EA
	mvp $2F,$D9		; 44 D9 2F
	pld		; 2B
	rti		; 40

	sed		; F8
	ora ($55.b,S),Y		; 13 55
	ora $EA.b,X		; 15 EA
	php		; 08
	sbc ($A4.b),Y		; F1 A4
	rts		; 60

	sed		; F8
	ora ($22.b,S),Y		; 13 22
	ldx $68.b		; A6 68
	lda $BE.b,X		; B5 BE
	ldx $E05A.w,Y		; BE 5A E0
	sed		; F8
	ora ($0D.b),Y		; 11 0D
	bra -11.b		; 80 F5
	ldx $E05C.w,Y		; BE 5C E0
	sed		; F8
	ora ($5D.b),Y		; 11 5D
	lda $BDE0AE.l		; AF AE E0 BD
	and $05.b		; 25 05
	cmp $6B5620.l,X		; DF 20 56 6B
	php		; 08
	dec $DDDD.w,X		; DE DD DD
	sbc $80FD.w,X		; FD FD 80
	lda ($0F.b)		; B2 0F
	nop		; EA
	ldx $D8C2.w,Y		; BE C2 D8
	jsr $54AB.w		; 20 AB 54
	stz $1E.b,X		; 74 1E
	pei ($44.b)		; D4 44
	sbc ($E0.b)		; F2 E0
	jsr ($8B75.w,X)		; FC 75 8B
	cmp $FE75.w,X		; DD 75 FE
	inc $B37C.w,X		; FE 7C B3
	sta $5688.w,Y		; 99 88 56
	sta ($75.b),Y		; 91 75
	txa		; 8A
	mvn $15,$82		; 54 82 15
	lda $8C05FA.l		; AF FA 05 8C
	stz $B580.w,X		; 9E 80 B5
	adc $A0A0.w,X		; 7D A0 A0
	ora $88.b		; 05 88
	cmp $6AAA.w,Y		; D9 AA 6A
	mvn $8C,$84		; 54 84 8C
	sty $E0.b,X		; 94 E0
	jsr ($B426.w,X)		; FC 26 B4
	bvc -76.b		; 50 B4
	stz $D9.b,X		; 74 D9
	dec $30EB.w,X		; DE EB 30
	bcc   9.b		; 90 09
	eor $675555.l,X		; 5F 55 55 67
	sbc ($C8.b),Y		; F1 C8
	ldy $88.b		; A4 88
	ldy $72D4.w,X		; BC D4 72
	tay		; A8
	cpx $BDC1.w		; EC C1 BD
	iny		; C8
	ldy #$0A.b		; A0 0A
	xba		; EB
	inc $5495.w,X		; FE 95 54
	beq -120.b		; F0 88
	phd		; 0B
	tay		; A8
	ldy #$0B.b		; A0 0B
	cpx #$F8.b		; E0 F8
	ora [$80.b],Y		; 17 80
	rol $08CA.w,X		; 3E CA 08
	iny		; C8
	ora #$90AC.w		; 09 AC 90
	ora #$5561.w		; 09 61 55
	sty $B2.b		; 84 B2
	sbc $DEABAB.l,X		; FF AB AB DE
	cpy $A8.b		; C4 A8
	dec $72.b,X		; D6 72
.ACCU 8
	sep #$E0		; E2 E0
	inc $A861.w,X		; FE 61 A8
	dey		; 88
	cpy $2AE0.w		; CC E0 2A
	rol A		; 2A
	rol $587E.w,X		; 3E 7E 58
	adc $B46AC2.l,X		; 7F C2 6A B4
	adc $E0.b,S		; 63 E0
	sed		; F8
	tsb $F59C.w		; 0C 9C F5
	brk $7E.b		; 00 7E
	eor ($7C.b)		; 52 7C
	sed		; F8
	ora $F8E0.w		; 0D E0 F8
	phd		; 0B
	rti		; 40

	sbc $C8D5.w,X		; FD D5 C8
	sbc ($E0.b),Y		; F1 E0
	sed		; F8
	ora $8080.w,Y		; 19 80 80
	tsx		; BA
	ora $80.b		; 05 80
	adc $09F8E0.l,X		; 7F E0 F8 09
	cpy $E08C.w		; CC 8C E0
	jsr ($177F.w,X)		; FC 7F 17
	nop		; EA
	nop		; EA
	lsr A		; 4A
	rti		; 40

	sta [$00.b],Y		; 97 00
	.db $42, $BD		; 42 BD
	rti		; 40

	inc $EA.b,X		; F6 EA
	ora $CC.b,X		; 15 CC
	stx $BC72.w		; 8E 72 BC
	cpx #$AE.b		; E0 AE
	jsr $CEF8.w		; 20 F8 CE
	txa		; 8A
	adc $05.b,X		; 75 05
	tax		; AA
	lsr A		; 4A
	cmp $F0A099.l,X		; DF 99 A0 F0
	ora $896A.w		; 0D 6A 89
	stz $3A71.w,X		; 9E 71 3A
	adc ($A8.b)		; 72 A8
	ldy $3805.w,X		; BC 05 38
	ora ($FA.b),Y		; 11 FA
	lda $827E76.l		; AF 76 7E 82
	cpx #$F8.b		; E0 F8
	ora $84.b,X		; 15 84
	tda		; 7B
	eor ($AE.b),Y		; 51 AE
	ldx $FD51.w		; AE 51 FD
	cop $08.b		; 02 08
	ldy $7F0E.w,X		; BC 0E 7F
	adc ($99.b,X)		; 61 99
	cpx #$F8.b		; E0 F8
	asl $42BD.w		; 0E BD 42
	jsr ($2FD0.w,X)		; FC D0 2F
	sta $7A.b		; 85 7A
	ror $AE81.w,X		; 7E 81 AE
	jmp $F6E0E8.l		; 5C E8 E0 F6
	ora #$E0.b		; 09 E0
	sed		; F8
	ora $F304A6.l		; 0F A6 04 F3
	lda #$4C.b		; A9 4C
	cmp [$E1.b],Y		; D7 E1
	lda ($B2.b,S),Y		; B3 B2
	eor $40AF.w		; 4D AF 40
	wai		; CB
	.db $82, $F8, $11		; 82 F8 11
	tsx		; BA
	eor $DE.b		; 45 DE
	ora #$F6.b		; 09 F6
	eor $B718.w,X		; 5D 18 B7
	pha		; 48
	inx		; E8
	lda ($5E.b)		; B2 5E
	ldy #$62.b		; A0 62
	sed		; F8
	ora ($FC.b,S),Y		; 13 FC
	stp		; DB
	bit $6A.b		; 24 6A
	lda ($E4.b,X)		; A1 E4
	sta $E0BB44.l,X		; 9F 44 BB E0
	sed		; F8
	ora $AF.b,X		; 15 AF
	pha		; 48
	lda ($F3.b),Y		; B1 F3
	sbc [$AA.b],Y		; F7 AA
	tax		; AA
	bvs -29.b		; 70 E3
	inc $0DF8.w,X		; FE F8 0D
	jmp $A06A.w		; 4C 6A A0
	ror $B304.w		; 6E 04 B3
	cpx #$F8.b		; E0 F8
	asl $6200.w		; 0E 00 62
	ror $F6DA.w,X		; 7E DA F6
	phy		; 5A
	pei ($C6.b)		; D4 C6
	cpx #$F8.b		; E0 F8
	ora $B24D41.l		; 0F 41 4D B2
	sbc $826A95.l,X		; FF 95 6A 82
	lsr A		; 4A
	cpx #$F8.b		; E0 F8
	ora ($02.b,S),Y		; 13 02
	tad		; 5B
	lda ($1D.b),Y		; B1 1D
	sty $20.b,X		; 94 20
	pei ($E0.b)		; D4 E0
	sed		; F8
	ora $50.b,X		; 15 50
	lda $CCA822.l		; AF 22 A8 CC
	cpy #$F0.b		; C0 F0
	ora $56.b,X		; 15 56
	lda $AB3E.w		; AD 3E AB
	mvn $EA,$C8		; 54 C8 EA
	cli		; 58
	cpy $60.b		; C4 60
	beq  21.b		; F0 15
	cpy $61.b		; C4 61
	jsr $ACC8.w		; 20 C8 AC
	ldx $E0AA.w		; AE AA E0
	sed		; F8
	ora ($A0.b),Y		; 11 A0
	cmp ($D7.b)		; D2 D7
	plp		; 28
	rti		; 40

	beq  23.b		; F0 17
	tsb $A6EE.w		; 0C EE A6
	nop		; EA
	ldx $78.b,Y		; B6 78
	phd		; 0B
	cpx #$F8.b		; E0 F8
	ora #$03.b		; 09 03
	lda $EAB7.w		; AD B7 EA
	cmp $2A.b,X		; D5 2A
	and ($5C.b,X)		; 21 5C
	eor ($AD.b)		; 52 AD
	cpx #$F8.b		; E0 F8
	ora $7275CE.l		; 0F CE 75 72
.ACCU 8
	sep #$62		; E2 62
	adc #$AF.b		; 69 AF
	tyx		; BB
	cpx #$5A.b		; E0 5A
	eor [$B0.b]		; 47 B0
	ora #$FE.b		; 09 FE
	sbc $16E9.w,X		; FD E9 16
	xce		; FB
	lda [$BE.b],Y		; B7 BE
	adc $637F.w,Y		; 79 7F 63
	and ($FF.b),Y		; 31 FF
	eor ($BF.b,X)		; 41 BF
	rol $E6.b		; 26 E6
	bit #$88.b		; 89 88
	cpx $F8.b		; E4 F8
	phd		; 0B
	ora $37FA.w,Y		; 19 FA 37
	asl A		; 0A
	sta ($5E.b),Y		; 91 5E
	nop		; EA
	ora ($5A.b,X)		; 01 5A
	sbc $7EFF.w,Y		; F9 FF 7E
	sbc $977474.l,X		; FF 74 74 97
	rts		; 60

	sed		; F8
	tsb $6E8B.w		; 0C 8B 6E
	adc $D42BCA.l		; 6F CA 2B D4
	cmp $2AE2.w		; CD E2 2A
	rts		; 60

	cmp ($DD.b),Y		; D1 DD
	jmp.w [$0093]		; DC 93 00
	sed		; F8
	tsb $0B23.w		; 0C 23 0B
	lda [$E8.b],Y		; B7 E8
	sbc $FD.b,S		; E3 FD
	cpy $85EB.w		; CC EB 85
	cmp [$DF.b],Y		; D7 DF
	and #$20.b		; 29 20
	beq  12.b		; F0 0C
	jsr $D61E.w		; 20 1E D6
	stx $B4D5.w		; 8E D5 B4
	txs		; 9A
	sta ($6D.b)		; 92 6D
	iny		; C8
	clv		; B8
	pld		; 2B
	lsr $F275.w		; 4E 75 F2
	cpx #$FF.b		; E0 FF
	lsr $F8.b		; 46 F8
	pei ($8C.b)		; D4 8C
	cmp $5F.b,X		; D5 5F
	rti		; 40

	tsb $5A.b		; 04 5A
	sbc $A06A6A.l,X		; FF 6A 6A A0
	and $A0.b		; 25 A0
	inc $FA.b,X		; F6 FA
	sbc #$E0.b		; E9 E0
	inc $EA95.w,X		; FE 95 EA
	adc $A0.b,S		; 63 A0
	sta $B24457.l		; 8F 57 44 B2
	dey		; 88
	sbc $15F4A2.l,X		; FF A2 F4 15
	ora $F4.b,X		; 15 F4
	rts		; 60

	sed		; F8
	tsb $DAE6.w		; 0C E6 DA
	cmp $9B100B.l,X		; DF 0B 10 9B
	bra -85.b		; 80 AB
	mvn $42,$80		; 54 80 42
	cmp ($7A.b),Y		; D1 7A
	adc $184F03.l,X		; 7F 03 4F 18
	tsb $0FB1.w		; 0C B1 0F
	cpx $E0FC.w		; EC FC E0
	plb		; AB
	bit $A3.b,X		; 34 A3
	jsl $FA05DD.l		; 22 DD 05 FA
	ldy #$0A.b		; A0 0A
	bne -116.b		; D0 8C
	cpx #$F0.b		; E0 F0
	ora $D7A25C.l		; 0F 5C A2 D7
	phx		; DA
	asl $1542.w,X		; 1E 42 15
	asl $F9.b		; 06 F9
	dec $E0.b,X		; D6 E0
	sed		; F8
	bpl   8.b		; 10 08
	inc $FE.b,X		; F6 FE
	jmp $F5FBA3.l		; 5C A3 FB F5
	lda ($01.b,X)		; A1 01
	lda $40.b,X		; B5 40
	inx		; E8
	phd		; 0B
	cpx #$FD.b		; E0 FD
	cmp $2A.b,X		; D5 2A
	ora $FC.b,S		; 03 FC
	sbc $AAA4.w,Y		; F9 A4 AA
	sbc $11E8E2.l,X		; FF E2 E8 11
	cpx #$FD.b		; E0 FD
	rol $82E2.w,X		; 3E E2 82
	eor ($E0.b),Y		; 51 E0
	sed		; F8
	bpl  20.b		; 10 14
	sbc $BE9797.l,X		; FF 97 97 BE
	bra -57.b		; 80 C7
	ror A		; 6A
	tda		; 7B
	cmp [$1C.b]		; C7 1C
	cmp $299A.w,Y		; D9 9A 29
	ora ($BA.b,X)		; 01 BA
	pla		; 68
	clc		; 18
	cmp #$38.b		; C9 38
	cpx #$FF.b		; E0 FF
	inc A		; 1A
	plx		; FA
	and $5E9584.l		; 2F 84 95 5E
	sbc $C5D7D7.l,X		; FF D7 D7 C5
	jmp.w [$B99E]		; DC 9E B9
	sbc $FF.b		; E5 FF
	sbc $FEE9AF.l,X		; FF AF E9 FE
	ror $60.b		; 66 60
	cmp $003100.l,X		; DF 00 31 00
	.db $42, $00		; 42 00
	sta $2D2D2D.l		; 8F 2D 2D 2D
	xce		; FB
	xce		; FB
	eor [$F0.b],Y		; 57 F0
	sta $D2FDE0.l,X		; 9F E0 FD D2
	nop		; EA
	lda ($B5.b),Y		; B1 B5
	eor $E0.b,S		; 43 E0
	tsa		; 3B
	adc ($73.b)		; 72 73
	ora ($9A.b)		; 12 9A
	sta $F2F2.w,Y		; 99 F2 F2
	nop		; EA
	php		; 08
	adc $C7F61F.l		; 6F 1F F6 C7
	lda $100DFF.l,X		; BF FF 0D 10
	and [$02.b]		; 27 02
	txs		; 9A
	bit #$08.b		; 89 08
	php		; 08
	stz $7A9E.w,X		; 9E 9E 7A
	sbc $E00FF3.l,X		; FF F3 0F E0
	sbc $61FFF7.l,X		; FF F7 FF 61
	cpx #$FD.b		; E0 FD
	inc $00.b		; E6 00
	tsx		; BA
	brk $20.b		; 00 20
	brk $17.b		; 00 17
	plb		; AB
	eor [$47.b]		; 47 47
	lda $E3AD.w		; AD AD E3
	sbc $88B8FF.l,X		; FF FF B8 88
	lda ($E0.b),Y		; B1 E0
	jsr ($50BF.w,X)		; FC BF 50
	bvc -102.b		; 50 9A
	bit $00.b		; 24 00
	ora ($01.b,X)		; 01 01
	inc $F6.b,X		; F6 F6
	cpx #$F8.b		; E0 F8
	phd		; 0B
	rol $09.b,X		; 36 09
	cpx #$FD.b		; E0 FD
	dey		; 88
	rol $3382.w		; 2E 82 33
	ldx #$A0.b		; A2 A0
	cmp ($7D.b)		; D2 7D
	adc $28C676.l,X		; 7F 76 C6 28
	lda $A2.b,X		; B5 A2
	asl A		; 0A
	dex		; CA
	lda #$5A.b		; A9 5A
	cpy #$25.b		; C0 25
	phx		; DA
	lda $B9.b,S		; A3 B9
	inc A		; 1A
	jsr ($C4E0.w,X)		; FC E0 C4
	lsr $C7.b,X		; 56 C7
	jsr $F9FC.w		; 20 FC F9
	asl $66.b		; 06 66
	cmp #$81.b		; C9 81
	bra  88.b		; 80 58
	cli		; 58
	ply		; 7A
	ldy $77.b		; A4 77
	lda ($E9.b,X)		; A1 E9
	cpx #$FE.b		; E0 FE
	adc $34A7FF.l,X		; 7F FF A7 34
	cpx #$18.b		; E0 18
	dec $A0A8.w,X		; DE A8 A0
	jmp.w [$0480]		; DC 80 04
	rol A		; 2A
	and $F8C0C0.l		; 2F C0 C0 F8
	asl A		; 0A
	xce		; FB
	adc $D0FFFB.l		; 6F FB FF D0
	cpy #$F6.b		; C0 F6
	inc A		; 1A
	stx $00.b,Y		; 96 00
	lda $00.b,X		; B5 00
	ldy $A4.b		; A4 A4
	lda ($11.b,S),Y		; B3 11
	and ($01.b),Y		; 31 01
	cpy $E6F7.w		; CC F7 E6
	sbc $E0.b		; E5 E0
	tad		; 5B
	sbc $FDE00C.l,X		; FF 0C E0 FD
	eor $68874F.l		; 4F 4F 87 68
	bne   0.b		; D0 00
	eor $2201.w		; 4D 01 22
	pei ($E2.b)		; D4 E2
	cpy #$6A.b		; C0 6A
	bcs   6.b		; B0 06
	cmp ($44.b,X)		; C1 44
	jsl $ECFCE2.l		; 22 E2 FC EC
	eor #$19.b		; 49 19
	eor $A7.b,S		; 43 A7
	sbc $FC1212.l,X		; FF 12 12 FC
	lda $5E.b		; A5 5E
	tyx		; BB
	txy		; 9B
	txy		; 9B
	nop		; EA
	dec $27.b		; C6 27
	sbc $F762.w		; ED 62 F7
	stz $D4.b		; 64 D4
	ora ($13.b,S),Y		; 13 13
	jmp.w [$6EDC]		; DC DC 6E
	cop $0B.b		; 02 0B
	sbc $EADCB2.l,X		; FF B2 DC EA
	and $E0.b,S		; 23 E0
	sbc $B21D6A.l,X		; FF 6A 1D B2
	wai		; CB
	sbc ($80.b)		; F2 80
	txa		; 8A
	and ($98.b,X)		; 21 98
	phd		; 0B
	ora $CE.b,X		; 15 CE
	phd		; 0B
	cpy #$C6.b		; C0 C6
	phy		; 5A
	phy		; 5A
	inc $F907.w,X		; FE 07 F9
	and $DC.b,S		; 23 DC
	cpx #$1F.b		; E0 1F
	lda ($4E.b),Y		; B1 4E
	phk		; 4B
	ldy $F6.b,X		; B4 F6
	php		; 08
	inc $BDBD.w		; EE BD BD
	tda		; 7B
	asl A		; 0A
	sbc $6D0BF8.l,X		; FF F8 0B 6D
	adc $8483.w		; 6D 83 84
	sbc #$01.b		; E9 01
	sbc $E9.b		; E5 E9
	cmp #$00.b		; C9 00
	bpl -11.b		; 10 F5
	sta [$00.b]		; 87 00
	sbc #$92.b		; E9 92
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	tsb $92EA.w		; 0C EA 92
	lda ($03.b,S),Y		; B3 03
	dec $38.b		; C6 38
	ora $E0E6.w,Y		; 19 E6 E0
	stp		; DB
	inc $0063.w,X		; FE 63 00
	dec $E0.b,X		; D6 E0
	sbc $FC.b,S		; E3 FC
	cpx #$F8.b		; E0 F8
	asl A		; 0A
	ora $DA.b		; 05 DA
	sbc ($67.b,X)		; E1 67
	adc [$94.b]		; 67 94
	brk $37.b		; 00 37
	sta $84C84B.l,X		; 9F 4B C8 84
	tda		; 7B
	and $E07300.l,X		; 3F 00 73 E0
	tya		; 98
	cpx #$F8.b		; E0 F8
	asl A		; 0A
	ora $8E7ECF.l,X		; 1F CF 7E 8E
	stx $5151.w		; 8E 51 51
	cmp [$E7.b],Y		; D7 E7
	adc [$80.b],Y		; 77 80
	cpy #$F5.b		; C0 F5
	sbc $4C71E0.l		; EF E0 71 4C
	wai		; CB
	sbc $FF1FFC.l,X		; FF FC 1F FF
	sed		; F8
	sed		; F8
	cmp $D4.b,X		; D5 D4
	asl $5E.b,X		; 16 5E
	sbc ($F6.b),Y		; F1 F6
	lda $007F.w,X		; BD 7F 00
	tad		; 5B
	bmi 107.b		; 30 6B
	ora [$FF.b]		; 07 FF
	pld		; 2B
	cpy #$F8.b		; C0 F8
	asl A		; 0A
	adc $0E0E7F.l,X		; 7F 7F 0E 0E
	ldx #$02.b		; A2 02
	jmp $EE75E3.l		; 5C E3 75 EE
	adc ($6D.b,S),Y		; 73 6D
	adc ($80.b,X)		; 61 80
	sbc $E526F1.l,X		; FF F1 26 E5
	dec $09F8.w,X		; DE F8 09
	sbc $F8EC.w		; ED EC F8
	ora #$E8.b		; 09 E8
	tsb $04.b		; 04 04
	ora $02021F.l,X		; 1F 1F 02 02
	cpy #$9A.b		; C0 9A
	eor $13DE.w,X		; 5D DE 13
	lsr $E0F3.w,X		; 5E F3 E0
	cld		; D8
	bit $A8B1.w		; 2C B1 A8
	adc $0089DA.l		; 6F DA 89 00
	dey		; 88
	phx		; DA
	pea $12FA.w		; F4 FA 12
	.db $82, $F6, $E0		; 82 F6 E0
	lsr $6A.b,X		; 56 6A
	sbc ($E4.b,S),Y		; F3 E4
	nop		; EA
	ldy $D5F4.w		; AC F4 D5
	nop		; EA
	phx		; DA
	brk $FB.b		; 00 FB
	lda $F1FB1D.l		; AF 1D FB F1
	beq  43.b		; F0 2B
	tsb $7B.b		; 04 7B
	adc ($32.b),Y		; 71 32
	lda $04.b,X		; B5 04
	mvn $05,$EF		; 54 EF 05
	ora $1E.b		; 05 1E
	lsr $82.b,X		; 56 82
	ora ($00.b,X)		; 01 00
	bcs -80.b		; B0 B0
	cpx $63.b		; E4 63
	stz $3921.w		; 9C 21 39
	jsr ($1DAA.w,X)		; FC AA 1D
	ldy #$76.b		; A0 76
	sbc ($80.b)		; F2 80
	sbc $EB5252.l,X		; FF 52 52 EB
	asl $8F.b		; 06 8F
	cmp ($43.b),Y		; D1 43
	sta ($F3.b),Y		; 91 F3
	lda #$E0.b		; A9 E0
	and $0CE8.w,Y		; 39 E8 0C
	sbc $8AF0F0.l,X		; FF F0 F0 8A
	stp		; DB
	sbc $E9BC41.l,X		; FF 41 BC E9
	sbc $9002.w,X		; FD 02 90
	adc $2F06F9.l		; 6F F9 06 2F
	brk $AA.b		; 00 AA
	txa		; 8A
	jsr ($FE17.w,X)		; FC 17 FE
	cpx #$F7.b		; E0 F7
	brk $34.b		; 00 34
	lsr $F989.w,X		; 5E 89 F9
	plp		; 28
	cmp [$04.b],Y		; D7 04
	xce		; FB
	adc ($9E.b,X)		; 61 9E
	cmp $1F.b		; C5 1F
	cmp #$36.b		; C9 36
	adc $F0.b,S		; 63 F0
	asl $8BE0.w		; 0E E0 8B
	ora $33.b,S		; 03 33
	brk $BC.b		; 00 BC
	eor $5A.b,S		; 43 5A
	sbc ($E0.b,X)		; E1 E0
	lsr $3F.b		; 46 3F
	sbc #$92.b		; E9 92
	lda ($F1.b),Y		; B1 F1
	.db $82, $F0, $0B		; 82 F0 0B
	sbc $1FDFDF.l,X		; FF DF DF 1F
	inc $4D4D.w,X		; FE 4D 4D
	cmp [$28.b],Y		; D7 28
	jsr $64DF.w		; 20 DF 64
	jmp.w [$3323]		; DC 23 33
	tsb $CE.b		; 04 CE
	ora ($6B.b,X)		; 01 6B
	cmp [$20.b],Y		; D7 20
	sbc $F8C0B2.l,X		; FF B2 C0 F8
	asl $FCFF.w		; 0E FF FC
	eor $14.b,S		; 43 14
	and #$6C.b		; 29 6C
	sta ($5E.b,S),Y		; 93 5E
	nop		; EA
	sbc $BF0DF8.l,X		; FF F8 0D BF
	tad		; 5B
	tsb $00.b		; 04 00
	eor ($51.b),Y		; 51 51
	tax		; AA
	tax		; AA
	cop $5C.b		; 02 5C
	cmp $5FA0.w,Y		; D9 A0 5F
	.db $42, $E4		; 42 E4
	ldx $80D4.w		; AE D4 80
	ora #$06.b		; 09 06
	sbc $C0E0C0.l,X		; FF C0 E0 C0
	adc ($50.b)		; 72 50
	brk $6D.b		; 00 6D
	bcc -62.b		; 90 C2
	sbc $DA0C.w,X		; FD 0C DA
	bmi -32.b		; 30 E0
	tda		; 7B
	ldy $FF3A.w		; AC 3A FF
	jsr ($6648.w,X)		; FC 48 66
	sbc ($0F.b,X)		; E1 0F
	and $17BFBF.l		; 2F BF BF 17
	ora [$1C.b],Y		; 17 1C
	dec A		; 3A
	plp		; 28
	sta ($7C.b,S),Y		; 93 7C
	adc #$C3.b		; 69 C3
	sbc ($DC.b),Y		; F1 DC
	ora $40FD.w,X		; 1D FD 40
	sbc $FFE0E8.l,X		; FF E8 E0 FF
	asl A		; 0A
	asl A		; 0A
	asl $88B2.w,X		; 1E B2 88
	dey		; 88
	ldx $9EEA.w,Y		; BE EA 9E
	and $CB02.w		; 2D 02 CB
	and [$33.b],Y		; 37 33
	bcs -23.b		; B0 E9
	sbc ($CA.b)		; F2 CA
	sbc ($5A.b)		; F2 5A
	sbc $1F80FC.l,X		; FF FC 80 1F
	inc $F180.w,X		; FE 80 F1
	beq -88.b		; F0 A8
	tay		; A8
	sec		; 38
	bra  40.b		; 80 28
	phd		; 0B
	pea $FBC4.w		; F4 C4 FB
	lda #$55.b		; A9 55
	sbc $887FF7.l,X		; FF F7 7F 88
	sbc ($5E.b),Y		; F1 5E
	sbc ($C0.b)		; F2 C0
	sbc $127B32.l,X		; FF 32 7B 12
	brk $AD.b		; 00 AD
	ora ($41.b)		; 12 41
	lda $15AFDA.l,X		; BF DA AF 15
	tay		; A8
	sbc ($FF.b,X)		; E1 FF
	sed		; F8
	ora $1196AE.l		; 0F AE 96 11
	ora $D402.w		; 0D 02 D4
	pld		; 2B
	and $FAC9A0.l,X		; 3F A0 C9 FA
	cmp [$78.b],Y		; D7 78
	ldy #$09.b		; A0 09
	sbc $CF09F8.l,X		; FF F8 09 CF
	ora ($40.b)		; 12 40
	bra -75.b		; 80 B5
	rti		; 40

	tas		; 1B
	cpx $74.b		; E4 74
	stx $5B.b,Y		; 96 5B
	sbc $FA0FF8.l,X		; FF F8 0F FA
	phb		; 8B
	tax		; AA
	stz $5C52.w		; 9C 52 5C
	ply		; 7A
	brk $7E.b		; 00 7E
	bra -48.b		; 80 D0
	sbc $F0A303.l,X		; FF 03 A3 F0
	ora $82FD.w		; 0D FD 82
	sbc $5716A0.l,X		; FF A0 16 57
	eor $00.b		; 45 00
	inx		; E8
	ora [$5A.b],Y		; 17 5A
	cmp $E0.b,S		; C3 E0
	ora $B17F6E.l		; 0F 6E 7F B1
	lda ($1D.b)		; B2 1D
	lda ($0C.b)		; B2 0C
	ldy $5F.b		; A4 5F
	ora $7F3CFF.l,X		; 1F FF 3C 7F
	sed		; F8
	ora ($C6.b),Y		; 11 C6
	rol $7EDF.w,X		; 3E DF 7E
	rol $AB.b		; 26 AB
	phk		; 4B
	ldy $20.b,X		; B4 20
	sbc $F8E045.l,X		; FF 45 E0 F8
	ora ($A9.b)		; 12 A9
.INDEX 8
	sep #$D1		; E2 D1
	ror $ED00.w,X		; 7E 00 ED
	brk $56.b		; 00 56
	tay		; A8
	sbc $FFF7.w,Y		; F9 F7 FF
	cpx #$79.b		; E0 79
	sbc $310EF8.l,X		; FF F8 0E 31
	ldy #$90.b		; A0 90
	brk $2F.b		; 00 2F
	eor $49.b		; 45 49
	ldx $0D.b,Y		; B6 0D
	sbc $E806EE.l,X		; FF EE 06 E8
	asl $19FF.w		; 0E FF 19
.ACCU 16
.INDEX 16
	rep #$7F		; C2 7F
	plb		; AB
	tsb $83.b		; 04 83
	jsr $C03A.w		; 20 3A C0
	ora $FA.b		; 05 FA
	rti		; 40

	cpx #$10F8.w		; E0 F8 10
	cmp $EC.b,S		; C3 EC
	beq  18.b		; F0 12
	sbc $562BF8.l,X		; FF F8 2B 56
	adc $7B2C.w		; 6D 2C 7B
	sbc $DC1AF8.l,X		; FF F8 1A DC
	rol $C1.b		; 26 C1
	sbc $121BF8.l,X		; FF F8 1B 12
	inx		; E8
	ora $F8FF.w		; 0D FF F8
	ora ($5A.b),Y		; 11 5A
	cpx #$1EF8.w		; E0 F8 1E
	sbc $ECDAD5.l		; EF D5 DA EC
	ply		; 7A
	sbc $221AF8.l,X		; FF F8 1A 22
	stz $F8FF.w		; 9C FF F8
	ora $3AB1.w,Y		; 19 B1 3A
	cmp $FF.b,S		; C3 FF
	sed		; F8
	ora $807B.w,Y		; 19 7B 80
	sed		; F8
	asl $555A.w,X		; 1E 5A 55
	ror A		; 6A
	cpx $8D.b		; E4 8D
	sbc $A117F8.l,X		; FF F8 17 A1
	sty $C9.b,X		; 94 C9
	.db $42, $4C		; 42 4C
	sbc $7016F8.l,X		; FF F8 16 70
	pla		; 68
	bpl -64.b		; 10 C0
	clc		; 18
	trb $55.b		; 14 55
	lda $CC93.w		; AD 93 CC
	cpx #$09F8.w		; E0 F8 09
	sta $31.b,S		; 83 31
	and ($DB.b)		; 32 DB
	tsb $84AB.w		; 0C AB 84
	ora ($10.b,S),Y		; 13 10
	cpx #$D5FE.w		; E0 FE D5
	lsr A		; 4A
	mvn $02,$64		; 54 64 02
	and $D9.b,X		; 35 D9
	cpy #$04FD.w		; C0 FD 04
	ora $73FB.w,Y		; 19 FB 73
	cmp ($FC.b,X)		; C1 FC
	trb $58.b		; 14 58
	cmp #$FCDF.w		; C9 DF FC
	tsb $F8.b		; 04 F8
	sbc $BD57.w,X		; FD 57 BD
	cpx #$1122.w		; E0 22 11
	ror $A8.b		; 66 A8
	sta ($A0.b,X)		; 81 A0
	sbc $E080.w,X		; FD 80 E0
	sbc $FCE081.l,X		; FF 81 E0 FC
	tax		; AA
	and #$5352.w		; 29 52 53
	ldx $9E14.w,Y		; BE 14 9E
	cmp ($B4.b),Y		; D1 B4
	cmp ($C2.b)		; D2 C2
	inc $8A00.w,X		; FE 00 8A
	.db $82, $0B, $58		; 82 0B 58
	.db $62, $5C, $23		; 62 5C 23
	inc $EC.b,X		; F6 EC
	.db $82, $E5, $2B		; 82 E5 2B
	ora #$8875.w		; 09 75 88
	adc ($58.b,X)		; 61 58
	tax		; AA
	stx $A5.b		; 86 A5
	ror $C1.b,X		; 76 C1
	bpl  -3.b		; 10 FD
	ldy $A0.b,X		; B4 A0
	jmp $9296.w		; 4C 96 92
	php		; 08
	cmp $2C.b,S		; C3 2C
	lda ($77.b)		; B2 77
	dex		; CA
	cpy #$73A4.w		; C0 A4 73
	cpy $7CC0.w		; CC C0 7C
	eor $7C.b		; 45 7C
	sed		; F8
	phd		; 0B
	phd		; 0B
	sbc $0882.w,X		; FD 82 08
	ora $06FA.w		; 0D FA 06
	sbc $F0.b,S		; E3 F0
	tsb $07B5.w		; 0C B5 07
	bcs  47.b		; B0 2F
	ora $9371B6.l		; 0F B6 71 93
	tyx		; BB
	ldx #$6A8F.w		; A2 8F 6A
	ora $0FFFE4.l,X		; 1F E4 FF 0F
	ora $A0D22D.l		; 0F 2D D2 A0
	sbc ($06.b,S),Y		; F3 06
	iny		; C8
	ldy #$FC9C.w		; A0 9C FC
	eor ($FF.b)		; 52 FF
	mvp $FC,$9C		; 44 9C FC
	ldy $318B.w		; AC 8B 31
	dex		; CA
	jsl $09A849.l		; 22 49 A8 09
	jsl $4040FC.l		; 22 FC 40 40
	ldx #$A0F4.w		; A2 F4 A0
	tsb $C6E0.w		; 0C E0 C6
	cpy #$3AF2.w		; C0 F2 3A
	tyx		; BB
	cpx #$9548.w		; E0 48 95
	inx		; E8
	asl $DC.b		; 06 DC
	bpl -12.b		; 10 F4
	sbc ($AA.b,S),Y		; F3 AA
	jsr ($C154.w,X)		; FC 54 C1
	bit $56.b		; 24 56
	trb $FCAA.w		; 1C AA FC
	plx		; FA
	sbc $04F1EA.l,X		; FF EA F1 04
	.db $82, $0E, $8C		; 82 0E 8C
	rol $A0DF.w		; 2E DF A0
	tsb $D9.b		; 04 D9
	and $20.b,X		; 35 20
	jsr $F820.w		; 20 20 F8
	phd		; 0B
	pld		; 2B
	sta ($DA.b)		; 92 DA
	dey		; 88
	pea $FE5A.w		; F4 5A FE
	sta [$0A.b],Y		; 97 0A
	eor $7D.b,X		; 55 7D
.ACCU 8
.INDEX 8
	sep #$F2		; E2 F2
	sbc [$FE.b],Y		; F7 FE
	sbc $2CAB.w		; ED AB 2C
.ACCU 8
.INDEX 8
	sep #$F1		; E2 F1
	ldx $E0F4.w,Y		; BE F4 E0
	beq  11.b		; F0 0B
	ora ($FC.b,X)		; 01 FC
	cop $F9.b		; 02 F9
	sbc $F8C0FF.l,X		; FF FF C0 F8
	phd		; 0B
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$F7.b]		; 07 F7
	tsb $13E5.w		; 0C E5 13
	xba		; EB
	and [$DA.b]		; 27 DA
	eor $5FFFA9.l		; 4F A9 FF 5F
	sta $D91D66.l,X		; 9F 66 1D D9
	ror $F826.w		; 6E 26 F8
	ora $0F.b,S		; 03 0F
	ora $3F1F1F.l		; 0F 1F 1F 3F
	and $FCF4E4.l,X		; 3F E4 F4 FC
	sbc $FE21FF.l,X		; FF FF 21 FE
	eor ($F8.b)		; 52 F8
	sta $F1.b		; 85 F1
	tsx		; BA
.INDEX 16
	rep #$55		; C2 55
	ldy $B6.b		; A4 B6
	adc $B7.b		; 65 B7
	bvs 107.b		; 70 6B
	php		; 08
	stx $C499.w		; 8E 99 C4
	ldy $FD.b,X		; B4 FD
	cpx #$FEC1.w		; E0 C1 FE
	sbc [$FF.b],Y		; F7 FF
	adc [$57.b]		; 67 57
	lsr $C0.b		; 46 C0
	sbc ($DF.b),Y		; F1 DF
	jsr $FCA0.w		; 20 A0 FC
.ACCU 16
	rep #$A2		; C2 A2
	bra  74.b		; 80 4A
	eor ($4A.b,X)		; 41 4A
.ACCU 8
.INDEX 8
	sep #$F2		; E2 F2
	jsr ($F2FE.w,X)		; FC FE F2
	cpx $F2BB.w		; EC BB F2
	tax		; AA
	plx		; FA
	ora ($B4.b),Y		; 11 B4
	sta [$44.b]		; 87 44
	mvp $EC,$9E		; 44 9E EC
	ror $EA.b,X		; 76 EA
	ldx $F3.b		; A6 F3
	phy		; 5A
	eor $E4.b,X		; 55 E4
	sbc $F2D6.w,X		; FD D6 F2
	.db $62, $EB, $04		; 62 EB 04
	ror A		; 6A
	eor ($80.b)		; 52 80
	inc $A0.b,X		; F6 A0
	sbc ($E0.b),Y		; F1 E0
	inc $EE60.w,X		; FE 60 EE
	eor #$15.b		; 49 15
	dec A		; 3A
	sbc $E0DA.w,X		; FD DA E0
	beq  12.b		; F0 0C
	ror $C3.b,X		; 76 C3
	cpx #$F0.b		; E0 F0
	asl A		; 0A
	inc $F1.b,X		; F6 F1
	inc $207F.w,X		; FE 7F 20
	plx		; FA
	ora #$EA.b		; 09 EA
	ora $10F1.w,Y		; 19 F1 10
	cmp $34.b,X		; D5 34
	nop		; EA
	rol $2FF9.w		; 2E F9 2F
	sty $46.b,X		; 94 46
	php		; 08
	sbc ($20.b,X)		; E1 20
	ora [$FE.b]		; 07 FE
	ora $3F0B1C.l,X		; 1F 1C 0B 3F
	sbc $3F11FF.l,X		; FF FF 11 3F
	bpl  63.b		; 10 3F
	and $637F.w,Y		; 39 7F 63
	cmp $45B8.w,X		; DD B8 45
	eor $2CB1.w		; 4D B1 2C
	bne  74.b		; D0 4A
	lda ($1F.b)		; B2 1F
	pha		; 48
	tsx		; BA
	.db $42, $90		; 42 90
	stz $C7.b		; 64 C7
	and ($24.b),Y		; 31 24
	inc $A128.w,X		; FE 28 A1
	sbc ($FF.b,X)		; E1 FF
	pha		; 48
	stp		; DB
	inc $22.b,X		; F6 22
	lda $C857.w		; AD 57 C8
	lda $B583.w,Y		; B9 83 B5
	cmp ($48.b)		; D2 48
	ora $FF.b,X		; 15 FF
	ldx $AE.b,Y		; B6 AE
	and $69C0.w,Y		; 39 C0 69
	ora ($60.b,S),Y		; 13 60
	eor $6C3FFF.l,X		; 5F FF 3F 6C
	cmp $4C6F.w,Y		; D9 6F 4C
	sbc ($CF.b,X)		; E1 CF
	jsr $3489.w		; 20 89 34
	lda #$FE.b		; A9 FE
	lsr $EC.b		; 46 EC
	inc $F138.w,X		; FE 38 F1
	lsr A		; 4A
	ldy $46FA.w		; AC FA 46
	sbc $F338.w		; ED 38 F3
	bit $66.b,X		; 34 66
	asl A		; 0A
	stx $AB.b		; 86 AB
	tax		; AA
	ldy #$ED.b		; A0 ED
	rti		; 40

	eor ($DD.b,X)		; 41 DD
	sbc $F5E0.w,X		; FD E0 F5
	.db $82, $EB, $60		; 82 EB 60
	sbc [$1E.b]		; E7 1E
	sbc $ECE0.w		; ED E0 EC
	plx		; FA
	sbc $0BF0E2.l,X		; FF E2 F0 0B
	cpx #$FE.b		; E0 FE
	bit $0BF0.w,X		; 3C F0 0B
	brk $91.b		; 00 91
	lsr A		; 4A
	cmp $4E.b,X		; D5 4E
	cpx #$57.b		; E0 57
	jsl $AF0396.l		; 22 96 03 AF
	adc $9EB080.l,X		; 7F 80 B0 9E
	lda $87.b,S		; A3 87
	tay		; A8
	sta $7F3D.w		; 8D 3D 7F
	bit $0BFE.w		; 2C FE 0B
	inc $FF79.w,X		; FE 79 FF
	bvs -32.b		; 70 E0
	lda ($FA.b,X)		; A1 FA
	ldy $BB61.w		; AC 61 BB
	eor ($BE.b),Y		; 51 BE
	plb		; AB
	sty $05FF.w		; 8C FF 05
	ora ($9F.b),Y		; 11 9F
	eor $6213.w,X		; 5D 13 62
	and ($98.b),Y		; 31 98
	and ($36.b),Y		; 31 36
	inc $CC1C.w,X		; FE 1C CC
	.db $42, $82		; 42 82
	sbc $8DFE40.l,X		; FF 40 FE 8D
	sbc $85E485.l,X		; FF 85 E4 85
	ldy $57.b		; A4 57
	pea $FBFF.w		; F4 FF FB
	lda #$32.b		; A9 32
	eor [$96.b],Y		; 57 96
	and ($C3.b,S),Y		; 33 C3
	sta $22E1.w		; 8D E1 22
	jmp.w [$DC1B]		; DC 1B DC
	cmp ($88.b,X)		; C1 88
	jsr ($57CC.w,X)		; FC CC 57
	plb		; AB
	inc $FEE8.w,X		; FE E8 FE
	jsr ($F3F8.w,X)		; FC F8 F3
	stz $99.b		; 64 99
	bra  -3.b		; 80 FD
	sbc [$3E.b],Y		; F7 3E
	sbc $8C.b,S		; E3 8C
	sbc ($B3.b),Y		; F1 B3
	rol A		; 2A
	bra  -3.b		; 80 FD
	php		; 08
	dey		; 88
	rts		; 60

	rol $FC7F.w		; 2E 7F FC
	jmp.w [$EB82]		; DC 82 EB
	lsr $0AE8.w,X		; 5E E8 0A
	jsr ($6BFF.w,X)		; FC FF 6B
	lda $9A8791.l		; AF 91 87 9A
	ora $1DBE.w,Y		; 19 BE 1D
	lda $54E8.w,X		; BD E8 54
	iny		; C8
	eor $E598.w,X		; 5D 98 E5
	sbc $C27F49.l,X		; FF 49 7F C2
	sbc ($FE.b),Y		; F1 FE
	sbc $7C3F.w,X		; FD 3F 7C
	and $793F7D.l,X		; 3F 7D 3F 79
	dex		; CA
	sbc $D678E1.l,X		; FF E1 78 D6
	adc $3429.w		; 6D 29 34
	eor $35.b,X		; 55 35
	plp		; 28
	ldx $A53A.w,Y		; BE 3A A5
	bit #$11.b		; 89 11
	sbc $87B0C2.l,X		; FF C2 B0 87
	sbc $C3EF83.l,X		; FF 83 EF C3
	sbc [$F4.b],Y		; F7 F4
	phb		; 8B
	sty $D9.b,X		; 94 D9
	bcc -119.b		; 90 89
	sbc $B1FFFF.l,X		; FF FF FF B1
	asl $A13F.w,X		; 1E 3F A1
	ora $CC1966.l,X		; 1F 66 19 CC
	cmp $91.b,S		; C3 91
	bcc -52.b		; 90 CC
	ora $ED1B04.l		; 0F 04 1B ED
	lda [$3A.b],Y		; B7 3A
	cmp $EC6A.w		; CD 6A EC
	and $F0F17E.l,X		; 3F 7E F1 F0
	sbc $C01BE0.l,X		; FF E0 1B C0
	stp		; DB
	txy		; 9B
	cmp $DEFFAE.l,X		; DF AE FF DE
	dec $F5C0.w,X		; DE C0 F5
	jsr $DE22.w		; 20 22 DE
	cmp $F2E0.w,X		; DD E0 F2
	jmp $2CF1.w		; 4C F1 2C
	sbc ($2F.b,X)		; E1 2F
	dex		; CA
	and $7F.b		; 25 7F
	sei		; 78
	jsr ($E116.w,X)		; FC 16 E1
	asl $FC.b,X		; 16 FC
	phd		; 0B
	sbc ($09.b)		; F2 09
	txa		; 8A
	ora $3F1F3C.l,X		; 1F 3C 1F 3F
	sei		; 78
	sbc $1E0FFE.l,X		; FF FE 0F 1E
	ora $E9F61F.l		; 0F 1F F6 E9
	ora $8872AC.l		; 0F AC 72 88
	ror $1C.b,X		; 76 1C
	sbc $85830F.l,X		; FF 0F 83 85
	wai		; CB
	cop $2F.b		; 02 2F
	ora ($71.b)		; 12 71
	ldy #$7D.b		; A0 7D
	eor ($B9.b),Y		; 51 B9
	inc $D871.w,X		; FE 71 D8
	cmp $FE.b,S		; C3 FE
	ldx $C0.b,Y		; B6 C0
	cmp $FF1089.l,X		; DF 89 10 FF
	sty $CFF8.w		; 8C F8 CF
	sbc $DBF4FF.l,X		; FF FF F4 DB
	pea $F4DF.w		; F4 DF F4
	lda $1DB2.w		; AD B2 1D
	txs		; 9A
	sta [$DD.b],Y		; 97 DD
	sbc $E1.b,S		; E3 E1
	and $F4F0FC.l,X		; 3F FC F0 F4
	eor $B0FE04.l,X		; 5F 04 FE B0
	.db $42, $98		; 42 98
	.db $62, $DC, $21		; 62 DC 21
	cpx #$1D.b		; E0 1D
	jsr ($716E.w,X)		; FC 6E 71
	adc $0EFF.w,X		; 7D FF 0E
	adc #$FC.b		; 69 FC
	beq  10.b		; F0 0A
	ora $07.b,S		; 03 07
	ora ($03.b,X)		; 01 03
	jsr ($0BF0.w,X)		; FC F0 0B
	tax		; AA
	.db $42, $77		; 42 77
	bra -115.b		; 80 8D
	eor ($0F.b,X)		; 41 0F
	sbc $F590D2.l,X		; FF D2 90 F5
	mvn $78,$EE		; 54 EE 78
	ora ($F1.b),Y		; 11 F1
	php		; 08
	sbc ($F5.b)		; F2 F5
	sed		; F8
	sed		; F8
	sed		; F8
	sbc ($FE.b),Y		; F1 FE
	.db $42, $2B		; 42 2B
	adc $0E3F13.l,X		; 7F 13 3F 0E
	ror $DC8C.w,X		; 7E 8C DC
	sbc $3E327F.l,X		; FF 7F 32 3E
	ror $534F.w		; 6E 4F 53
	adc $24.b,S		; 63 24
	sec		; 38
	sta $5B9A.w,X		; 9D 9A 5B
	rts		; 60

	and ($22.b)		; 32 22
	jsr ($F803.w,X)		; FC 03 F8
	sbc $D08F06.l,X		; FF 06 8F D0
	sta $EC.b,S		; 83 EC
	cpy #$FB.b		; C0 FB
	rts		; 60

	plx		; FA
	ldy $CDFC.w,X		; BC FC CD
	sbc $DEFF7F.l		; EF 7F FF DE
	adc ($97.b,X)		; 61 97
	tya		; 98
	lda ($73.b,S),Y		; B3 73
	sbc ($0F.b,S),Y		; F3 0F
	bvc  63.b		; 50 3F
	sbc ($60.b,X)		; E1 60
	sed		; F8
	tsb $007F.w		; 0C 7F 00
	inc $0FAF.w,X		; FE AF 0F
	brk $D0.b		; 00 D0
	ora $FF3C.w		; 0D 3C FF
	bit $9200.w,X		; 3C 00 92
	sbc $FF63.w		; ED 63 FF
	sta $EF.b,X		; 95 EF
	sbc #$FE.b		; E9 FE
	sbc $C8C0EE.l,X		; FF EE C0 C8
	ora $4DF0CF.l		; 0F CF F0 4D
	stx $C925.w		; 8E 25 C9
	eor ($96.b,S),Y		; 53 96
	adc [$FF.b]		; 67 FF
	beq -16.b		; F0 F0
	pea $EFE9.w		; F4 E9 EF
	sbc $CBF7FF.l,X		; FF FF F7 CB
	trb $9CA2.w		; 1C A2 9C
	lsr $38.b		; 46 38
	cpx $70.b		; E4 70
	dec $18EA.w,X		; DE EA 18
	cmp ($35.b,S),Y		; D3 35
	pea $F66D.w		; F4 6D F6
	sbc $C68EB6.l,X		; FF B6 8E C6
	sbc $D8.b,X		; F5 D8
	sta $FECA.w,Y		; 99 CA FE
	iny		; C8
	inc $59D4.w,X		; FE D4 59
	tay		; A8
	ldy $8E01.w		; AC 01 8E
	sbc $929AFF.l,X		; FF FF 9A 92
	bne -37.b		; D0 DB
	and $7D.b,S		; 23 7D
	ror $FA.b		; 66 FA
	adc $9F72.w,Y		; 79 72 9F
	sbc ($2F.b,X)		; E1 2F
	bne  15.b		; D0 0F
	sbc ($FF.b)		; F2 FF
	sbc $DF609F.l,X		; FF 9F 60 DF
	and ($7F.b,X)		; 21 7F
	sta ($FF.b,X)		; 81 FF
	cop $7F.b		; 02 7F
	.db $82, $0F, $90		; 82 0F 90
	sta [$18.b],Y		; 97 18
	cmp $FFFF2C.l		; CF 2C FF FF
	tad		; 5B
	ror $2D.b		; 66 2D
	adc ($32.b,S),Y		; 73 32
	adc $71DC.w,Y		; 79 DC 71
	sei		; 78
	ldx $C0.b		; A6 C0
	bcs -16.b		; B0 F0
	php		; 08
	sed		; F8
	tsb $7D.b		; 04 7D
	cmp $6A02FC.l,X		; DF FC 02 6A
	phx		; DA
	sta $60C770.l		; 8F 70 C7 60
	ora ($88.b),Y		; 11 88
	phd		; 0B
	lda $E05FC0.l,X		; BF C0 5F E0
	adc ($08.b,X)		; 61 08
	phd		; 0B
	sbc $4080FF.l,X		; FF FF 80 40
	cpy #$20.b		; C0 20
	sta ($32.b),Y		; 91 32
	dey		; 88
	and $BD22.w,X		; 3D 22 BD
	cmp ($94.b,X)		; C1 94
	eor ($99.b)		; 52 99
	bit $CB.b		; 24 CB
	sbc $84F3FF.l,X		; FF FF F3 84
	ora $CCC0.w,X		; 1D C0 CC
	inc $FFC2.w,X		; FE C2 FF
	cpy #$FD.b		; C0 FD
	nop		; EA
	inc $FFE6.w,X		; FE E6 FF
	beq  -5.b		; F0 FB
	sbc ($FF.b,X)		; E1 FF
	sed		; F8
	jsr ($475D.w,X)		; FC 5D 47
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$73		; E2 73
	bit $88C2.w		; 2C C2 88
	phk		; 4B
	lsr $FFF1.w		; 4E F1 FF
	sbc $8A8A04.l,X		; FF 04 8A 8A
	ror $E0.b,X		; 76 E0
	ora ($7F.b),Y		; 11 7F
	sta [$7F.b],Y		; 97 7F
	cop $4E.b		; 02 4E
	sta ($34.b),Y		; 91 34
	adc $FFFD0C.l,X		; 7F 0C FD FF
	sbc $01FB71.l,X		; FF 71 FB 01
	adc [$0E.b],Y		; 77 0E
	ora $3BD847.l,X		; 1F 47 D8 3B
	bit $E56A.w,X		; 3C 6A E5
	ror A		; 6A
	tda		; 7B
	ldy $E3.b		; A4 E3
	sbc $A793BF.l,X		; FF BF 93 A7
.ACCU 8
	sep #$EA		; E2 EA
	eor ($C7.b,S),Y		; 53 C7
	ldy #$78.b		; A0 78
	rti		; 40

	jsr ($F510.w,X)		; FC 10 F5
	sty $FF.b		; 84 FF
	trb $FFFD.w		; 1C FD FF
	php		; 08
	eor ($15.b,X)		; 41 15
	cli		; 58
	bit #$0F.b		; 89 0F
	bvc -33.b		; 50 DF
	bmi   7.b		; 30 07
	php		; 08
	cmp $84B388.l		; CF 88 B3 84
	and $1FFF04.l,X		; 3F 04 FF 1F
	eor $1A2134.l		; 4F 34 21 1A
	cpy #$30.b		; C0 30
	rts		; 60

	bpl -16.b		; 10 F0
	sed		; F8
	bvs  -8.b		; 70 F8
	sei		; 78
	jsr ($FE00.w,X)		; FC 00 FE
	ldx #$FE.b		; A2 FE
	sta $5B6E03.l,X		; 9F 03 6E 5B
	and $FF6D1D.l		; 2F 1D 6D FF
	ror $7A.b,X		; 76 7A
	txy		; 9B
	eor $BE.b		; 45 BE
	cmp ($3F.b),Y		; D1 3F
	bit $C8F6.w		; 2C F6 C8
.INDEX 8
	sep #$99		; E2 99
	beq  62.b		; F0 3E
	sta $9F04.w,Y		; 99 04 9F
	sbc [$FF.b],Y		; F7 FF
	sta $21.b,X		; 95 21
	and $E12301.l,X		; 3F 01 23 E1
	bra  50.b		; 80 32
	tad		; 5B
	rol $08.b		; 26 08
	sbc $46B5.w,Y		; F9 B5 46
	eor [$F9.b]		; 47 F9
	cmp $710EFF.l,X		; DF FF 0E 71
	cmp [$B9.b],Y		; D7 B9
	lsr $E8A1.w,X		; 5E A1 E8
	phx		; DA
	asl $FF.b		; 06 FF
	php		; 08
	lsr $F900.w		; 4E 00 F9
	bra -15.b		; 80 F1
	sbc $B900FF.l,X		; FF FF 00 B9
	brk $A1.b		; 00 A1
	sta [$3B.b],Y		; 97 3B
	ora $3D.b		; 05 3D
	dec $30.b,X		; D6 30
	ldx $B566.w		; AE 66 B5
	tay		; A8
	cmp [$88.b],Y		; D7 88
	ora $0D12BE.l,X		; 1F BE 12 0D
	cpy $C3.b		; C4 C3
	cpy #$FB.b		; C0 FB
	rti		; 40

	ora $7F193F.l		; 0F 3F 19 7F
	eor $B8FFFF.l,X		; 5F FF FF B8
	sbc ($3F.b,S),Y		; F3 3F
	sbc $4B8A91.l,X		; FF 91 8A 4B
	ora ($67.b)		; 12 67
	inc A		; 1A
	sty $2871.w		; 8C 71 28
	cmp ($A1.b,X)		; C1 A1
	ora ($D1.b,X)		; 01 D1
	ora $950128.l		; 0F 28 01 95
	ora ($7C.b,X)		; 01 7C
	inc $298C.w,X		; FE 8C 29
	txs		; 9A
	stp		; DB
	sbc $FE7F.w,X		; FD 7F FE
	txy		; 9B
	trb $D736.w		; 1C 36 D7
	tad		; 5B
	lda $A9.b,S		; A3 A9
	eor ($F6.b),Y		; 51 F6
	brk $79.b		; 00 79
	brk $5E.b		; 00 5E
	lda $D14BFF.l		; AF FF 4B D1
	cpx #$FC.b		; E0 FC
	inx		; E8
	lsr $76A1.w,X		; 5E A1 76
	tay		; A8
	ora #$EF.b		; 09 EF
	bmi 113.b		; 30 71
	stz $4E5D.w,X		; 9E 5D 4E
	cmp $FF.b,S		; C3 FF
	sbc $5D6AAF.l,X		; FF AF 6A 5D
	sta ($3C.b)		; 92 3C
	ora $EA1D.w,X		; 1D 1D EA
	nop		; EA
	brk $30.b		; 00 30
	jsr $B0BE.w		; 20 BE B0
	inc $1F10.w,X		; FE 10 1F
	sbc ($BF.b,X)		; E1 BF
	bra -35.b		; 80 DD
	cmp ($FD.b,X)		; C1 FD
.INDEX 8
	sep #$1E		; E2 1E
	and [$B8.b],Y		; 37 B8
	adc $C3DFFF.l,X		; 7F FF DF C3
	bit $9F6C.w,X		; 3C 6C 9F
	lsr $B9.b,X		; 56 B9
	lda $4679.w,Y		; B9 79 46
	lsr $6C.b,X		; 56 6C
	tsb $7F07.w		; 0C 07 7F
	lda ($79.b),Y		; B1 79
	inc $3CFF.w,X		; FE FF 3C
	ora ($69.b,S),Y		; 13 69
	lda $7F06.w,Y		; B9 06 7F
	lda #$FF.b		; A9 FF
	sbc ($FF.b,S),Y		; F3 FF
	eor $D9.b		; 45 D9
	cmp $A1.b,X		; D5 A1
	and #$91.b		; 29 91
	sbc $C1C80B.l,X		; FF 0B C8 C1
	ldy $B1.b,X		; B4 B1
	adc $2A5302.l		; 6F 02 53 2A
	sbc ($1A.b),Y		; F1 1A
	rol $A918.w,X		; 3E 18 A9
	bpl  -8.b		; 10 F8
	inc $4EFA.w,X		; FE FA 4E
	txs		; 9A
	ror $6B.b,X		; 76 6B
	sbc $BD7E1F.l		; EF 1F 7E BD
	ply		; 7A
	lda [$78.b]		; A7 78
	adc $BBFE80.l,X		; 7F 80 FE BB
	eor [$EC.b]		; 47 EC
	ora $79.b,X		; 15 79
	stx $2F.b		; 86 2F
	jsr ($D979.w,X)		; FC 79 D9
	ply		; 7A
	brk $78.b		; 00 78
	cpy $E1.b		; C4 E1
	inc $0247.w,X		; FE 47 02
	ora [$00.b],Y		; 17 00
	stx $FF.b		; 86 FF
	sbc $EDDE5E.l,X		; FF 5E DE ED
	bit $32DF.w		; 2C DF 32
	adc $97.b,X		; 75 97
	txa		; 8A
	tda		; 7B
	eor $0FF0A0.l,X		; 5F A0 F0 0F
	inc $0C.b,X		; F6 0C
	adc $FF21FF.l,X		; 7F FF 21 FF
	ora ($3F.b,S),Y		; 13 3F
	ora ($33.b,X)		; 01 33
	php		; 08
	sta $A09915.l,X		; 9F 15 99 A0
	brk $0F.b		; 00 0F
	ora $0F.b,S		; 03 0F
	tsx		; BA
	sbc $42187F.l,X		; FF 7F 18 42
	bra -124.b		; 80 84
	rts		; 60

	and [$46.b],Y		; 37 46
	bit $98.b		; 24 98
	sbc #$06.b		; E9 06
	xce		; FB
	php		; 08
	ora $E768.w,Y		; 19 68 E7
	stx $4AFD.w		; 8E FD 4A
	sbc $1F02.w,Y		; F9 02 1F
	jsl $EF87E9.l		; 22 E9 87 EF
	and #$F2.b		; 29 F2
	sbc $64FF70.l,X		; FF 70 FF 64
	ora $64B374.l		; 0F 74 B3 64
	lda $274768.l,X		; BF 68 47 27
	bvc  15.b		; 50 0F
	bne  16.b		; D0 10
	stx $8E.b		; 86 8E
	dey		; 88
	sbc ($FE.b)		; F2 FE
	beq  -8.b		; F0 F8
	inc $FFE1.w,X		; FE E1 FF
	cpx #$F0.b		; E0 F0
	inc $9DE7.w,X		; FE E7 9D
	cmp $FF68.w,Y		; D9 68 FF
	dey		; 88
	jmp.w [$A9C2]		; DC C2 A9
	cld		; D8
	sta $FF.b		; 85 FF
	adc ($76.b),Y		; 71 76
	brk $C9.b		; 00 C9
	txa		; 8A
	sta $6E06.w,X		; 9D 06 6E
	bra   8.b		; 80 08
	cmp ($23.b,X)		; C1 23
	xce		; FB
	xce		; FB
	sbc $8E7007.l,X		; FF 07 70 8E
	ldx $C9.b,Y		; B6 C9
	bra  -3.b		; 80 FD
	ora $C2.b,S		; 03 C2
	and $4F32.w,X		; 3D 32 4F
	cmp $07.b		; C5 07
	cmp $FFE0.w,Y		; D9 E0 FF
	sta $A6.b,S		; 83 A6
	sta $C759.w,Y		; 99 59 C7
	iny		; C8
	eor [$00.b]		; 47 00
	ora $00.b,S		; 03 00
	and $0AB0.w,X		; 3D B0 0A
	sbc ($FF.b,X)		; E1 FF
	inc $AB.b		; E6 AB
	and $C47FFE.l,X		; 3F FE 7F C4
	lda $9B.b,S		; A3 9B
	lda ($1E.b,X)		; A1 1E
	ora $45.b,S		; 03 45
	and ($AB.b,S),Y		; 33 AB
	lda $977612.l,X		; BF 12 76 97
	cpx $A7.b		; E4 A7
	iny		; C8
	eor $DAA490.l		; 4F 90 A4 DA
	pha		; 48
	cmp ($98.b)		; D2 98
	lda $9EBC.w		; AD BC 9E
	ora $C9E8A0.l,X		; 1F A0 E8 C9
	sty $BC.b		; 84 BC
	inc $E0C0.w,X		; FE C0 E0
	sbc ($5F.b)		; F2 5F
	tyx		; BB
	bit #$A2.b		; 89 A2
	cpy $7FFF.w		; CC FF 7F
	tsb $AA.b		; 04 AA
	stz $5C.b		; 64 5C
	sta $3C.b,S		; 83 3C
	ldx $97E1.w,Y		; BE E1 97
	sbc $84E5A0.l,X		; FF A0 E5 84
	ora $FFBEE9.l,X		; 1F E9 BE FF
	lda $D962.w		; AD 62 D9
	cmp $6D.b		; C5 6D
	stx $DF85.w		; 8E 85 DF
	cmp $FEC0F0.l		; CF F0 C0 FE
.ACCU 8
.INDEX 8
	sep #$3E		; E2 3E
	sbc $00FEF0.l,X		; FF F0 FE 00
	beq 127.b		; F0 7F
	bcs   9.b		; B0 09
	inc $B0A0.w,X		; FE A0 B0
	adc $AA81.w		; 6D 81 AA
	sbc $4AFF11.l,X		; FF 11 FF 4A
	lda $E2.b,X		; B5 E2
	cmp [$19.b],Y		; D7 19
	sep #$C7		; E2 C7
	rol $91.b		; 26 91
	.db $62, $70, $0A		; 62 70 0A
	jsr ($ACAC.w,X)		; FC AC AC
	adc [$77.b],Y		; 77 77
	sta $217D.w,X		; 9D 7D 21
	dec $34.b,X		; D6 34
	wai		; CB
	sbc ($CB.b,S),Y		; F3 CB
	sbc $4E53.w		; ED 53 4E
	and #$E0.b		; 29 E0
	sed		; F8
	phd		; 0B
	adc $232388.l		; 6F 88 23 23
	inc $93FE.w,X		; FE FE 93
	tay		; A8
	adc ($97.b)		; 72 97
	xce		; FB
	sta [$A5.b],Y		; 97 A5
	and ($ED.b,X)		; 21 ED
	jmp.w [$D8B1]		; DC B1 D8
	asl A		; 0A
	cpx #$49.b		; E0 49
	eor #$FA.b		; 49 FA
	jmp $B10E.w		; 4C 0E B1
	sed		; F8
	jmp $FBB3.w		; 4C B3 FB
	lda ($ED.b,S),Y		; B3 ED
	ldx $BF.b,Y		; B6 BF
	bvc -96.b		; 50 A0
	sed		; F8
	asl $FF83.w		; 0E 83 FF
	bvs -17.b		; 70 EF
	rol A		; 2A
	cmp $09F880.l		; CF 80 F8 09
	sbc $3C1F.w,X		; FD 1F 3C
	sbc #$5F.b		; E9 5F
	inx		; E8
	cpx #$F8.b		; E0 F8
	ora #$41.b		; 09 41
	rol $1F9F.w,X		; 3E 9F 1F
	bra  -8.b		; 80 F8
	phd		; 0B
	sbc $F860E0.l,X		; FF E0 60 F8
	ora ($8E.b)		; 12 8E
	and $72F180.l		; 2F 80 F1 72
	stx $60A6.w		; 8E A6 60
	rts		; 60

	sed		; F8
	phd		; 0B
	ply		; 7A
	clv		; B8
	sbc $FC60AB.l,X		; FF AB 60 FC
	sed		; F8
	sbc $6EFC85.l,X		; FF 85 FC 6E
	cpx #$EC.b		; E0 EC
	ora $60F0CF.l		; 0F CF F0 60
	jsr ($2AF6.w,X)		; FC F6 2A
	pea $9CC3.w		; F4 C3 9C
	jsr ($29E0.w,X)		; FC E0 29
	plp		; 28
	cmp ($CC.b)		; D2 CC
	ldy $A04F.w		; AC 4F A0
	cpy $77D6.w		; CC D6 77
	and ($60.b,S),Y		; 33 60
	jsr ($68D7.w,X)		; FC D7 68
	sbc ($80.b),Y		; F1 80
	sed		; F8
	ora #$65.b		; 09 65
	txs		; 9A
	txs		; 9A
	adc $82.b		; 65 82
	lda ($00.b),Y		; B1 00
	rol $1F6B.w		; 2E 6B 1F
	cmp $F1.b,X		; D5 F1
	tad		; 5B
	sta ($91.b,X)		; 81 91
	adc $5B0BB8.l		; 6F B8 0B 5B
	adc ($69.b),Y		; 71 69
	sta ($7E.b,X)		; 81 7E
	rtl		; 6B

	sty $8E.b,X		; 94 8E
	tyx		; BB
	plx		; FA
	ldx $5100.w		; AE 00 51
	cpx #$06.b		; E0 06
	asl $E0.b		; 06 E0
	sed		; F8
	ora $F906.w		; 0D 06 F9
	cmp [$EB.b],Y		; D7 EB
	cpy #$32.b		; C0 32
	eor [$B8.b]		; 47 B8
	sbc $719C.w,X		; FD 9C 71
	inc $81.b		; E6 81
	brk $C9.b		; 00 C9
	cmp #$E0.b		; C9 E0
	sed		; F8
	ora $8912.w		; 0D 12 89
	brk $B7.b		; 00 B7
	inc $8165.w		; EE 65 81
	rol A		; 2A
	and $A0.b,X		; 35 A0
	sed		; F8
	phd		; 0B
	rol $D145.w,X		; 3E 45 D1
	ldy #$F8.b		; A0 F8
	phd		; 0B
	ora ($FE.b,X)		; 01 FE
	ldy #$F8.b		; A0 F8
	ora $1ECA.w,X		; 1D CA 1E
	adc [$35.b],Y		; 77 35
	inx		; E8
	sbc ($6D.b)		; F2 6D
	brk $D2.b		; 00 D2
	cpx #$A9.b		; E0 A9
	lda #$E0.b		; A9 E0
	sed		; F8
	ora $56A9.w		; 0D A9 56
	cmp $F880F7.l,X		; DF F7 80 F8
	ora $C7C7.w		; 0D C7 C7
	plx		; FA
	sbc $F8E0.w,Y		; F9 E0 F8
	phd		; 0B
	cmp [$38.b]		; C7 38
	sed		; F8
	ora [$C0.b]		; 07 C0
	jsr ($006E.w,X)		; FC 6E 00
	adc $00D1D7.l,X		; 7F D7 D1 00
	wai		; CB
	cmp [$5A.b]		; C7 5A
	bit $E7D7.w,X		; 3C D7 E7
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	ora #$C0.b		; 09 C0
	and $577974.l,X		; 3F 74 79 57
	sbc #$6E.b		; E9 6E
	sbc [$5B.b],Y		; F7 5B
	.db $82, $69, $82		; 82 69 82
	.db $82, $F6, $92		; 82 F6 92
	cmp $FFE4.w		; CD E4 FF
	.db $82, $7D, $7D		; 82 7D 7D
	beq   9.b		; F0 09
	ldy $00.b,X		; B4 00
	sbc $004A2E.l,X		; FF 2E 4A 00
	adc ($61.b,X)		; 61 61
	dec $A7FE.w,X		; DE FE A7
	sbc $FFEB1A.l,X		; FF 1A EB FF
	adc ($9E.b,X)		; 61 9E
	stx $FD4C.w		; 8E 4C FD
	cmp [$E0.b],Y		; D7 E0
	sta $00.b,X		; 95 00
	pla		; 68
	brk $64.b		; 00 64
	stz $BB.b		; 64 BB
	tyx		; BB
	ldy $F166.w		; AC 66 F1
	plp		; 28
	adc [$FB.b],Y		; 77 FB
	ora $44BB9B.l		; 0F 9B BB 44
	cpx #$FE.b		; E0 FE
	adc $00.b,X		; 75 00
	dey		; 88
	brk $63.b		; 00 63
	adc $BD.b,S		; 63 BD
	lda $BBE8.w,X		; BD E8 BB
	adc $FE17.w,Y		; 79 17 FE
	sbc $9C63.w,X		; FD 63 9C
	lda $E042.w,X		; BD 42 E0
	inc $E0DB.w,X		; FE DB E0
	ora ($FC.b,S),Y		; 13 FC
	bra  -8.b		; 80 F8
	tas		; 1B
	stx $79.b		; 86 79
	rti		; 40

	inc $FFDD.w,X		; FE DD FF
	jsl $EB1CFF.l		; 22 FF 1C EB
	sta $E3.b		; 85 E3
	rol $6AC1.w,X		; 3E C1 6A
	rol $FEE0.w		; 2E E0 FE
	bpl -17.b		; 10 EF
	lda $00.b		; A5 00
	adc ($FE.b),Y		; 71 FE
	ldx $3730.w,Y		; BE 30 37
	adc ($C1.b,S),Y		; 73 C1
	sta ($6D.b)		; 92 6D
	sbc ($1E.b,X)		; E1 1E
	cpx #$F8.b		; E0 F8
	ora $E41B1A.l		; 0F 1A 1B E4
	sbc $F8FA.w,X		; FD FA F8
	stp		; DB
	sbc $31FF24.l,X		; FF 24 FF 31
	dec $F26E.w		; CE 6E F2
	cpx #$F8.b		; E0 F8
	ora $AD52.w		; 0D 52 AD
	and $74.b		; 25 74
	cmp [$DA.b],Y		; D7 DA
	sed		; F8
	rtl		; 6B

	sbc $117890.l,X		; FF 90 78 11
	sta $6A.b,X		; 95 6A
	cpx #$F8.b		; E0 F8
	ora $0BF880.l		; 0F 80 F8 0B
	adc [$FF.b],Y		; 77 FF
	asl $2AE1.w,X		; 1E E1 2A
	dec $E0.b		; C6 E0
	sed		; F8
	ora $01FE.w		; 0D FE 01
	bra  -2.b		; 80 FE
	and ($FE.b)		; 32 FE
	eor [$B0.b],Y		; 57 B0
	ldy $87.b,X		; B4 87
	sta $DF.b		; 85 DF
	lda ($3E.b,X)		; A1 3E
	cpx #$FE.b		; E0 FE
	inc $F0.b		; E6 F0
	ora $3F7887.l		; 0F 87 78 3F
	cpy #$80.b		; C0 80
	sbc $1F7EBB.l,X		; FF BB 7E 1F
	mvp $80,$7F		; 44 7F 80
	sed		; F8
	phd		; 0B
	ora $5A2EE0.l,X		; 1F E0 2E 5A
	ror $A2.b		; 66 A2
	ror $00.b		; 66 00
	ora $2600.w,Y		; 19 00 26
	ldy $FCDE.w,X		; BC DE FC
	ldy $A4.b		; A4 A4
	eor ($E1.b,S),Y		; 53 E1
	.db $82, $5F, $F7		; 82 5F F7
	tad		; 5B
	brk $AC.b		; 00 AC
	bit $3FF1.w		; 2C F1 3F
	ldx $29D6.w,Y		; BE D6 29
	lda $005D00.l,X		; BF 00 5D 00
	ldx $F6.b		; A6 F6
	sta ($92.b)		; 92 92
	adc $65.b		; 65 65
	cmp [$3F.b]		; C7 3F
	cpx #$F8.b		; E0 F8
	phd		; 0B
	adc $9A00.w		; 6D 00 9A
	nop		; EA
	ror $89.b,X		; 76 89
	sbc $9600.w,X		; FD 00 96
	brk $69.b		; 00 69
	ldx $F6C7.w,Y		; BE C7 F6
	txs		; 9A
	txs		; 9A
	stz $64.b		; 64 64
	cpx #$F8.b		; E0 F8
	phd		; 0B
	adc $00.b		; 65 00
	txy		; 9B
	nop		; EA
	beq  95.b		; F0 5F
	rtl		; 6B

	and #$00.b		; 29 00
	stz $6100.w,X		; 9E 00 61
	brk $0C.b		; 00 0C
	tsb $D2D2.w		; 0C D2 D2
	cop $19.b		; 02 19
	lda $FFE0DF.l		; AF DF E0 FF
	sbc ($00.b,S),Y		; F3 00
	and $812A.w		; 2D 2A 81
	cop $79.b		; 02 79
	and ($96.b),Y		; 31 96
	tya		; 98
	sta $80E0.w,Y		; 99 E0 80
	sed		; F8
	ora #$EB.b		; 09 EB
	nop		; EA
	sbc ($0E.b),Y		; F1 0E
	sta $80C5EC.l,X		; 9F EC C5 80
	jsr ($A956.w,X)		; FC 56 A9
	bra  -8.b		; 80 F8
	ora $F140.w,X		; 1D 40 F1
	asl $0171.w,X		; 1E 71 01
	adc $98001B.l,X		; 7F 1B 00 98
	tya		; 98
	sbc $93ED.w		; ED ED 93
	sta ($EE.b,S),Y		; 93 EE
	bra  15.b		; 80 0F
	adc [$2C.b]		; 67 2C
	adc $A16C.w,Y		; 79 6C A1
	sbc $E0E8.w,X		; FD E8 E0
	ror $88.b,X		; 76 88
	adc ($22.b,X)		; 61 22
	stx $6B99.w		; 8E 99 6B
	rtl		; 6B

	cmp ($D3.b,S),Y		; D3 D3
	sta $EB.b		; 85 EB
	ror $E07E.w,X		; 7E 7E E0
	inc $9408.w,X		; FE 08 94
	brk $2C.b		; 00 2C
	eor $EAE091.l,X		; 5F 91 E0 EA
	dex		; CA
	sbc $3000FB.l,X		; FF FB 00 30
	brk $C2.b		; 00 C2
.INDEX 16
	rep #$9D		; C2 9D
	sta $7676.w,X		; 9D 76 76
	xba		; EB
	xba		; EB
	cpx #$3DFE.w		; E0 FE 3D
	brk $62.b		; 00 62
	cmp [$08.b]		; C7 08
	brk $89.b		; 00 89
	brk $14.b		; 00 14
	cpx #$206B.w		; E0 6B 20
	adc $16FF5B.l,X		; 7F 5B FF 16
	asl $AB.b,X		; 16 AB
	plb		; AB
	eor $775D.w,X		; 5D 5D 77
	cpy #$E92F.w		; C0 2F E9
	plp		; 28
	adc $D7A2.w,Y		; 79 A2 D7
	cmp ($95.b),Y		; D1 95
	jsr ($F880.w,X)		; FC 80 F8
	asl $FF60.w		; 0E 60 FF
	bra  -4.b		; 80 FC
	rts		; 60

	bra  -2.b		; 80 FE
	phy		; 5A
	eor $E6E9.w,Y		; 59 E9 E6
	sbc $A6F4.w,X		; FD F4 A6
	txs		; 9A
	bra  -8.b		; 80 F8
	ora #$A7.b		; 09 A7
	brk $1F.b		; 00 1F
	brk $7D.b		; 00 7D
	bra   3.b		; 80 03
	cmp $0E.b,X		; D5 0E
	sbc $38545D.l		; EF 5D 54 38
	sta ($62.b)		; 92 62
	eor $F880.w,X		; 5D 80 F8
	tsb $00FD.w		; 0C FD 00
	sep #$80		; E2 80
	sbc $804B.w,X		; FD 4B 80
	.db $42, $62		; 42 62
	sbc $F8806F.l		; EF 6F 80 F8
	ora [$DB.b],Y		; 17 DB
	sbc $59DC34.l,X		; FF 34 DC 59
	ora ($FF.b,X)		; 01 FF
	lda $5A.b		; A5 5A
	phk		; 4B
	ldy $02.b,X		; B4 02
	dey		; 88
	ora ($F5.b,S),Y		; 13 F5
	sbc $716AE8.l,X		; FF E8 6A 71
	tsb $FF.b		; 04 FF
	jsr $9ADF.w		; 20 DF 9A
	adc $65.b		; 65 65
	sty $E0.b		; 84 E0
	sed		; F8
	ora ($BF.b),Y		; 11 BF
	cmp ($55.b,S),Y		; D3 55
	lda $6BFF55.l,X		; BF 55 FF 6B
	cpx $1B.b		; E4 1B
	lda ($BB.b,S),Y		; B3 BB
	cmp ($69.b),Y		; D1 69
	stx $F8E0.w		; 8E E0 F8
	ora #$80.b		; 09 80
	ldx $A96F.w,Y		; BE 6F A9
	bvc -52.b		; 50 CC
	cmp $EE11.w,Y		; D9 11 EE
	ror $7E91.w		; 6E 91 7E
	cmp [$C0.b],Y		; D7 C0
	sed		; F8
	ora ($E0.b,S),Y		; 13 E0
	sbc $926FEF.l,X		; FF EF 6F 92
	sbc $A309.w,Y		; F9 09 A3
	dey		; 88
	tsb $0600.w		; 0C 00 06
	php		; 08
	xba		; EB
	lda $A9.b		; A5 A9
	adc $5BF05B.l,X		; 7F 5B F0 5B
	cmp $69.b,S		; C3 69
	asl $34AB.w		; 0E AB 34
	ora $03BB22.l,X		; 1F 22 BB 03
	adc $B1.b,S		; 63 B1
	bit $C9DF.w,X		; 3C DF C9
	adc $54B3.w,X		; 7D B3 54
	eor $2AEC.w,Y		; 59 EC 2A
	and [$AB.b]		; 27 AB
	and $F86084.l,X		; 3F 84 60 F8
	asl A		; 0A
	sed		; F8
	inx		; E8
	lsr $A0FD.w,X		; 5E FD A0
	sed		; F8
	ora #$07.b		; 09 07
	lda ($E0.b,X)		; A1 E0
	adc $C8C07F.l,X		; 7F 7F C0 C8
	phd		; 0B
	bit $E069.w		; 2C 69 E0
	iny		; C8
	ora ($01.b)		; 12 01
	inc $936D.w,X		; FE 6D 93
	sbc $FDFF.w		; ED FF FD
	tsb $E0.b		; 04 E0
	iny		; C8
	ora $E003.w		; 0D 03 E0
	cpy $E44F.w		; CC 4F E4
	sbc $F610.w,X		; FD 10 F6
	jmp $1B74C7.l		; 5C C7 74 1B
	sta $DF8D.w		; 8D 8D DF
	rts		; 60

	bra -46.b		; 80 D2
	bcs -24.b		; B0 E8
	ora $E0B906.l		; 0F 06 B9 E0
	pea $B896.w		; F4 96 B8
	cpx #$6808.w		; E0 08 68
	and $F8A0BF.l,X		; 3F BF A0 F8
	phd		; 0B
	sbc [$DE.b],Y		; F7 DE
	bne  10.b		; D0 0A
	stx $0E.b		; 86 0E
	cpx #$4848.w		; E0 48 48
	ldy #$914C.w		; A0 4C 91
	cmp $B24C.w,Y		; D9 4C B2
	and ($12.b),Y		; 31 12
	lda [$B0.b]		; A7 B0
	sbc $A0B7.w		; ED B7 A0
	stz $BFF9.w,X		; 9E F9 BF
	jsr ($D240.w,X)		; FC 40 D2
	stz $CA61.w,X		; 9E 61 CA
	asl $2D.b		; 06 2D
	asl $F06E.w,X		; 1E 6E F0
	rti		; 40

	bra  -6.b		; 80 FA
	tad		; 5B
	rti		; 40

	dec $80.b,X		; D6 80
	inc $D2A0.w,X		; FE A0 D2
	sta $71.b,X		; 95 71
	phb		; 8B
	sty $605F.w		; 8C 5F 60
	ldy #$09D0.w		; A0 D0 09
	asl $9986.w		; 0E 86 99
	eor $40E1.w,X		; 5D E1 40
	inc $D2A0.w,X		; FE A0 D2
	plp		; 28
	cmp [$40.b],Y		; D7 40
	bne  29.b		; D0 1D
	ldy #$83D2.w		; A0 D2 83
	cld		; D8
	cop $0F.b		; 02 0F
	plx		; FA
	ldx #$0E07.w		; A2 07 0E
	tsb $DD.b		; 04 DD
	cpx #$5219.w		; E0 19 52
	stz $C1FF.w,X		; 9E FF C1
	rol $FFC7.w,X		; 3E C7 FF
	lsr $38.b,X		; 56 38
	txs		; 9A
	eor $34.b,X		; 55 34
	plb		; AB
	adc $806D40.l,X		; 7F 40 6D 80
	rts		; 60

	dec $20.b,X		; D6 20
	txy		; 9B
	sta $FEA0.w,Y		; 99 A0 FE
	adc $60DB.w,X		; 7D DB 60
	cmp ($E0.b)		; D2 E0
	bne  11.b		; D0 0B
	eor ($FF.b),Y		; 51 FF
	ora $E0E4.w,Y		; 19 E4 E0
	bne  13.b		; D0 0D
	jsr ($F1DD.w,X)		; FC DD F1
	stz $FE.b,X		; 74 FE
	eor ($FF.b),Y		; 51 FF
	plx		; FA
	ror $917D.w		; 6E 7D 91
	inc $47.b,X		; F6 47
	stp		; DB
	stz $0F.b		; 64 0F
	ldy #$D16C.w		; A0 6C D1
	iny		; C8
	sbc ($FC.b),Y		; F1 FC
	jmp ($7F83.w,X)		; 7C 83 7F
	eor $C30FF0.l,X		; 5F F0 0F C3
	bit $F00F.w,X		; 3C 0F F0
	and $5116C0.l,X		; 3F C0 16 51
	jmp.w [$70AC]		; DC AC 70
	.db $42, $E0		; 42 E0
	bne  10.b		; D0 0A
	xce		; FB
	adc $02D248.l,X		; 7F 48 D2 02
	adc [$30.b],Y		; 77 30
	ora #$FF.b		; 09 FF
	adc $01.b,X		; 75 01
	dey		; 88
	ora ($62.b,X)		; 01 62
	adc $BC.b,S		; 63 BC
	lda $FECB.w,X		; BD CB FE
	ora $D0A048.l,X		; 1F 48 A0 D0
	ora #$62.b		; 09 62
	sta $43BC.w,X		; 9D BC 43
	lsr A		; 4A
	inc $DA60.w,X		; FE 60 DA
	sbc $54FA.w,X		; FD FA 54
	cmp ($E0.b)		; D2 E0
	bne  23.b		; D0 17
	inc $BA18.w		; EE 18 BA
	adc $E7.b,S		; 63 E7
	lda $D6E0C1.l		; AF C1 E0 D6
	sed		; F8
	ora [$E3.b]		; 07 E3
	tyx		; BB
	inc $8F1C.w,X		; FE 1C 8F
	bvs -32.b		; 70 E0
	sed		; F8
	ora #$D2.b		; 09 D2
	lda $DC20.w		; AD 20 DC
	cpx #$1FD0.w		; E0 D0 1F
	dec $2CFC.w,X		; DE FC 2C
	sbc $0B1C.w,Y		; F9 1C 0B
	sbc $E92EF7.l,X		; FF F7 2E E9
	cpx #$26FE.w		; E0 FE 26
	sbc $F706.w,Y		; F9 06 F7
	php		; 08
	sbc $AA5310.l		; EF 10 53 AA
	sbc ($AC.b,X)		; E1 AC
	ldy #$0DD0.w		; A0 D0 0D
	ror A		; 6A
	jsr ($F8C0.w,X)		; FC C0 F8
	ora #$60.b		; 09 60
	phx		; DA
	sta $080240.l,X		; 9F 40 02 08
	lda $D40D7F.l,X		; BF 7F 0D D4
	dec $FAEE.w,X		; DE EE FA
	cmp $D6A8F7.l,X		; DF F7 A8 D6
	sbc $02.b,X		; F5 02
	and $001D00.l		; 2F 00 1D 00
	sec		; 38
	sed		; F8
	xce		; FB
	pla		; 68
	bvc -122.b		; 50 86
	ldy #$4019.w		; A0 19 40
	rol $80.b		; 26 80
	rts		; 60

	dec $20DF.w,X		; DE DF 20
	lda $4061EA.l,X		; BF EA 61 40
	dec $D4.b		; C6 D4
	rts		; 60

	jmp.w [$D9E0]		; DC E0 D9
	ora ($97.b,X)		; 01 97
	ora ($FF.b,X)		; 01 FF
	ora [$17.b],Y		; 17 17
	adc $E060FF.l		; 6F FF 60 E0
	ora $A30055.l		; 0F 55 00 A3
	ldy #$EAD9.w		; A0 D9 EA
	cpx #$51E1.w		; E0 E1 51
	sbc $10FFC1.l,X		; FF C1 FF 10
	sbc $6ED551.l		; EF 51 D5 6E
	sta ($88.b),Y		; 91 88
	eor $71.b,S		; 43 71
	inc $0BF8.w,X		; FE F8 0B
	ldx $94E7.w		; AE E7 94
	adc $79EF.w,Y		; 79 EF 79
	sta $FF.b		; 85 FF
	ora [$0A.b]		; 07 0A
	pha		; 48
	sta $02E6.w,X		; 9D E6 02
	ora ($05.b,X)		; 01 05
	ora [$08.b]		; 07 08
	ora $FF1A10.l		; 0F 10 1A FF
	sbc $1C1010.l,X		; FF 10 10 1C
	jmp ($9602.w,X)		; 7C 02 96
	eor ($53.b,X)		; 41 53
	bit $65.b,X		; 34 65
	eor ($EB.b)		; 52 EB
	eor ($EB.b),Y		; 51 EB
	phx		; DA
	adc $FF.b,S		; 63 FF
	adc $6C0010.l,X		; 7F 10 00 6C
	bpl -18.b		; 10 EE
	sei		; 78
	lda $EE8BEC.l		; AF EC 8B EE
	ora $EE.b		; 05 EE
	tsb $67.b		; 04 67
	tsb $47.b		; 04 47
	sta [$05.b]		; 87 05
	lda $0209F8.l,X		; BF F8 09 02
	ora $FE.b,S		; 03 FE
	tsb $07.b		; 04 07
	sta ($E0.b,X)		; 81 E0
	asl A		; 0A
	ldx $FFF8.w		; AE F8 FF
	inc $1107.w,X		; FE 07 11
	asl $7C73.w,X		; 1E 73 7C
	sbc [$E8.b],Y		; F7 E8
	cmp [$E8.b],Y		; D7 E8
	adc $C3AFD0.l		; 6F D0 AF C3
	lda $90EFD0.l		; AF D0 EF 90
	lsr $20.b		; 46 20
	bit $00.b,X		; 34 00
	stz $00.b,X		; 74 00
	inx		; E8
	txy		; 9B
	sbc ($0E.b,X)		; E1 0E
	eor $1A.b,S		; 43 1A
	lda ($18.b)		; B2 18
	lda ($B8.b),Y		; B1 B8
	eor $FE.b		; 45 FE
	ror $FE83.w,X		; 7E 83 FE
	adc $7E1C.w,X		; 7D 1C 7E
	inc $817F.w,X		; FE 7F 81
	inc $4602.w,X		; FE 02 46
	cop $42.b		; 02 42
	brk $83.b		; 00 83
	asl $FC.b		; 06 FC
	inc $5D43.w,X		; FE 43 5D
	asl $05.b		; 06 05
	asl $1F0D.w		; 0E 0D 1F
	inc $0E09.w,X		; FE 09 0E
	ora $171E.w,Y		; 19 1E 17
	clc		; 18
	inc $303F.w,X		; FE 3F 30
	and $050030.l		; 2F 30 00 05
	and ($02.b),Y		; 31 02
	brk $0C.b		; 00 0C
	inc $FE18.w,X		; FE 18 FE
	adc $54.b,X		; 75 54
	eor #$F2.b		; 49 F2
	bmi -46.b		; 30 D2
	pea $F8FE.w		; F4 FE F8
	ora #$DE.b		; 09 DE
	cld		; D8
	ora $FCE6AC.l		; 0F AC E6 FC
	lda $E8.b,X		; B5 E8
	ror $F5.b		; 66 F5
	ora $FE.b		; 05 FE
	sbc $D104FD.l,X		; FF FD 04 D1
	.db $82, $FB, $EE		; 82 FB EE
	adc #$04.b		; 69 04
	stz $84.b		; 64 84
	asl $FEFB.w		; 0E FB FE
	sed		; F8
	asl A		; 0A
	asl $8EFC.w		; 0E FC 8E
	sbc $203F5F.l,X		; FF 5F 3F 20
	adc $605F60.l,X		; 7F 60 5F 60
	eor [$68.b],Y		; 57 68
	adc [$48.b],Y		; 77 48
	adc $5C.b,S		; 63 5C
	eor $A90C70.l		; 4F 70 0C A9
	dey		; 88
	cmp [$FE.b]		; C7 FE
	rts		; 60

	inc $0040.w,X		; FE 40 00
	pha		; 48
	inc $122A.w,X		; FE 2A 12
	bvc -90.b		; 50 A6
	sed		; F8
	ora #$00.b		; 09 00
	rts		; 60

	ora $A6.b,X		; 15 A6
	jsr ($F6A5.w,X)		; FC A5 F6
	rol A		; 2A
	cpy #$A6AF.w		; C0 AF A6
	sed		; F8
	ora #$FA.b		; 09 FA
	jsr ($9EA6.w,X)		; FC A6 9E
	ora [$0F.b],Y		; 17 0F
	cmp $08.b		; C5 08
	ora [$00.b]		; 07 00
	ora $04.b,S		; 03 04
	inc $BF05.w,X		; FE 05 BF
	sbc ($A6.b),Y		; F1 A6
	lda $41.b		; A5 41
	bmi  16.b		; 30 10
	tad		; 5B
	adc $0CFE.w,Y		; 79 FE 0C
	tsb $FE.b		; 04 FE
	ldy $F8.b		; A4 F8
	phd		; 0B
	sta $DD.b,X		; 95 DD
	jmp $7D8A69.l		; 5C 69 8A 7D
	adc $7B.b,S		; 63 7B
	sbc $0DF8E2.l,X		; FF E2 F8 0D
	cmp ($3E.b),Y		; D1 3E
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	phd		; 0B
	plp		; 28
	pld		; 2B
	sec		; 38
	sbc $D8F1DA.l,X		; FF DA F1 D8
	and ($7C.b),Y		; 31 7C
	cmp ($F8.b,X)		; C1 F8
	ora #$A9.b		; 09 A9
	sbc $F8F0F4.l,X		; FF F4 F0 F8
	phd		; 0B
	sbc $A913F8.l,X		; FF F8 13 A9
	sbc #$01.b		; E9 01
	cop $06.b		; 02 06
	ora $0D.b		; 05 0D
	trb $FF1D.w		; 1C 1D FF
	sbc $423F01.l,X		; FF 01 3F 42
	ror $4739.w,X		; 7E 39 47
	bcs -49.b		; B0 CF
	.db $62, $9F, $0E		; 62 9F 0E
	php		; 08
	ora ($1E.b,S),Y		; 13 1E
	and $3E.b,S		; 23 3E
	cmp $6340FE.l,X		; DF FE 40 63
	sta ($E7.b,X)		; 81 E7
	bra -61.b		; 80 C3
	jmp $D78BF1.l		; 5C F1 8B D7
	sta $6020E0.l		; 8F E0 20 60
	bcc -80.b		; 90 B0
	and $107C.w,X		; 3D 7C 10
	bvs  39.b		; 70 27
	sty $C0.b		; 84 C0
	brk $E0.b		; 00 E0
	inc $7080.w,X		; FE 80 70
	cpy #$F0.b		; C0 F0
	bra  49.b		; 80 31
	inc $E9ED.w,X		; FE ED E9
	inc $FE0F.w,X		; FE 0F FE
	ora $0906.w		; 0D 06 09
	asl $0A.b		; 06 0A
	bit $3C.b		; 24 3C
	ora [$2C.b]		; 07 2C
	inc $0BF8.w,X		; FE F8 0B
	jmp $38D7.w		; 4C D7 38
	sbc $A4A238.l,X		; FF 38 A2 A4
	jsr ($7C42.w,X)		; FC 42 7C
	.db $62, $4C, $FF		; 62 4C FF
	jsr ($FFFF.w,X)		; FC FF FF
	jsr $D5FC.w		; 20 FC D5
	dec A		; 3A
	sbc $B97E.w,X		; FD 7E B9
	ror $3AFF.w,X		; 7E FF 3A
	sbc $6E913A.l		; EF 3A 91 6E
	plb		; AB
	lsr $D7.b,X		; 56 D7
	sbc $2E90.w		; ED 90 2E
	jmp ($F8FF.w,X)		; 7C FF F8
	asl A		; 0A
	jmp ($C91F.w)		; 6C 1F C9
	sec		; 38
	plp		; 28
	tsa		; 3B
	plp		; 28
	inc $1C44.w,X		; FE 44 1C
	plp		; 28
	jsr $5808.w		; 20 08 58
	trb $50.b		; 14 50
	trb $2C.b		; 14 2C
	brk $A0.b		; 00 A0
	phd		; 0B
	jsr ($E1FE.w,X)		; FC FE E1
	ror $03C1.w,X		; 7E C1 03
	brk $12.b		; 00 12
	sbc ($03.b,S),Y		; F3 03
	cop $37.b		; 02 37
	inc $F878.w,X		; FE 78 F8
	sei		; 78
	adc ($5A.b)		; 72 5A
	nop		; EA
	cop $02.b		; 02 02
	tsb $06.b		; 04 06
	inc $0804.w,X		; FE 04 08
	tsb $81F8.w		; 0C F8 81
	inc $8F70.w,X		; FE 70 8F
	sed		; F8
	ora [$E0.b]		; 07 E0
	asl $06FC.w,X		; 1E FC 06
	lda ($FA.b,X)		; A1 FA
	jsr ($FA03.w,X)		; FC 03 FA
	jmp $CDE9.w		; 4C E9 CD
	ora $88.b		; 05 88
	sbc $FAEAE0.l,X		; FF E0 EA FA
	sbc $489888.l,X		; FF 88 98 48
	iny		; C8
	dey		; 88
	dey		; 88
	sty $FF.b		; 84 FF
	sbc $CC44AC.l,X		; FF AC 44 CC
	sty $8C.b		; 84 8C
	.db $42, $D6		; 42 D6
	jsl $E078EE.l		; 22 EE 78 E0
	sec		; 38
	beq 120.b		; F0 78
	beq 124.b		; F0 7C
	sbc ($FF.b,X)		; E1 FF
	bne  60.b		; D0 3C
	jsr ($3EF0.w,X)		; FC F0 3E
	inx		; E8
	asl $0EF0.w,X		; 1E F0 0E
	ora $0E.b,S		; 03 0E
	ora [$02.b]		; 07 02
	sbc $070983.l,X		; FF 83 09 07
	ora #$05.b		; 09 05
	ora #$01.b		; 09 01
	asl $190C.w		; 0E 0C 19
	ora $0C.b,S		; 03 0C
	rol $E8D8.w		; 2E D8 E8
	pha		; 48
	sbc ($FE.b),Y		; F1 FE
	asl $C99A.w		; 0E 9A C9
	asl $EA78.w,X		; 1E 78 EA
	phy		; 5A
	sbc $6DDF.w,X		; FD DF 6D
	cop $B0.b		; 02 B0
	eor $378484.l		; 4F 84 84 37
	rtl		; 6B

	ora ($5E.b),Y		; 11 5E
	lda ($A4.b,X)		; A1 A4
	inc $7B.b,X		; F6 7B
	tya		; 98
	cmp $FF0E.w		; CD 0E FF
	sbc $3DD9D6.l		; EF D6 D9 3D
	sbc $F878.w,X		; FD 78 F8
	.db $62, $1F, $FA		; 62 1F FA
	asl $F7.b		; 06 F7
	and $5E60.w,X		; 3D 60 5E
	wai		; CB
	cop $20.b		; 02 20
	bit $7900.w,X		; 3C 00 79
	tay		; A8
	dec A		; 3A
	sed		; F8
	ora $2ABC00.l,X		; 1F 00 BC 2A
	brk $D0.b		; 00 D0
	inc $1B2A.w,X		; FE 2A 1B
	inc $3038.w,X		; FE 38 30
	brk $10.b		; 00 10
	inc $00C6.w,X		; FE C6 00
	inc $012A.w,X		; FE 2A 01
	adc $FE22.w,Y		; 79 22 FE
	cpx $E28D.w		; EC 8D E2
	ora $860708.l		; 0F 08 07 86
	bra  -2.b		; 80 FE
	sed		; F8
	phd		; 0B
	.db $82, $23, $20		; 82 23 20
	sbc $FE1810.l,X		; FF 10 18 FE
	sbc $EF0CFA.l,X		; FF FA 0C EF
	stz $E2.b,X		; 74 E2
	ora $0FF0A0.l,X		; 1F A0 F0 0F
	stx $7F.b		; 86 7F
	phy		; 5A
	cpx $8286.w		; EC 86 82
	beq 126.b		; F0 7E
	ror $7B.b		; 66 7B
	trb $5598.w		; 1C 98 55
	stz $2622.w		; 9C 22 26
	lsr $FF.b		; 46 FF
	and $A7A3D6.l,X		; 3F D6 A3 A7
	ora ($4F.b,X)		; 01 4F
	eor $DF.b		; 45 DF
	xba		; EB
	tas		; 1B
	sbc $1F.b		; E5 1F
	asl A		; 0A
	ply		; 7A
	dec $FCF8.w,X		; DE F8 FC
	cmp $2A.b,S		; C3 2A
	eor $B0FFF8.l,X		; 5F F8 FF B0
	and $0C07E0.l,X		; 3F E0 07 0C
	and ($86.b)		; 32 86
	cmp $3F.b,S		; C3 3F
	jmp $28070F.l		; 5C 0F 07 28
	ora $0119.w		; 0D 19 01
	ora #$09.b		; 09 09
	tsb $01.b		; 04 01
	ora $5000.w		; 0D 00 50
	inc $AEFF.w,X		; FE FF AE
	plp		; 28
	asl $FD.b,X		; 16 FD
	sbc $FE11AC.l,X		; FF AC 11 FE
	jsr ($8C8C.w,X)		; FC 8C 8C
	pld		; 2B
	bit $7E.b,X		; 34 7E
	sta ($7D.b,X)		; 81 7D
	.db $82, $9A, $65		; 82 9A 65
	cmp $6F77.w		; CD 77 6F
	sbc $3673D9.l,X		; FF D9 73 36
	tsx		; BA
	adc ($C0.b,S),Y		; 73 C0
	cpy #$0A.b		; C0 0A
	tsb $AC.b		; 04 AC
	and ($CB.b),Y		; 31 CB
	and $E20EF2.l,X		; 3F F2 0E E2
	sbc ($FF.b,X)		; E1 FF
	ora #$F8.b		; 09 F8
	.db $42, $50		; 42 50
	sta $B0.b,X		; 95 B0
	stp		; DB
	rts		; 60

	lsr $80.b,X		; 56 80
	bit $A028.w		; 2C 28 A0
	sta $83.b		; 85 83
	jmp $022E.w		; 4C 2E 02
	lda $7AB9.w,Y		; B9 B9 7A
	lda ($2E.b),Y		; B1 2E
	sbc $1028C1.l,X		; FF C1 28 10
	pha		; 48
	tsb $B4.b		; 04 B4
	jsl $702A9C.l		; 22 9C 2A 70
	bit $F6.b		; 24 F6
	bit $63FC.w		; 2C FC 63
	stx $7C.b		; 86 7C
	brk $CE.b		; 00 CE
	inc A		; 1A
	jmp $29F4.w		; 4C F4 29
	rep #$06		; C2 06
	ora $0D.b		; 05 0D
	sbc ($83.b,X)		; E1 83
	ora [$03.b]		; 07 03
	cmp ($49.b,S),Y		; D3 49
	ora $FF.b,S		; 03 FF
	php		; 08
	bmi -128.b		; 30 80
	asl $C2.b		; 06 C2
	inc $01.b,X		; F6 01
	ora $C3.b		; 05 C3
	cmp $FC.b,S		; C3 FC
	inc $9769.w,X		; FE 69 97
	cmp ($2E.b,S),Y		; D3 2E
	trb $FFDD.w		; 1C DD FF
	bvs  55.b		; 70 37
	cmp [$3B.b],Y		; D7 3B
	cmp ($3F.b),Y		; D1 3F
	stp		; DB
	and [$D9.b],Y		; 37 D9
	and [$8A.b],Y		; 37 8A
	ora ($11.b),Y		; 11 11
	and ($FF.b),Y		; 31 FF
	ora $0AF8FF.l,X		; 1F FF F8 0A
	lda ($96.b)		; B2 96
	pei ($CC.b)		; D4 CC
	pei ($4C.b)		; D4 4C
	rti		; 40

	jmp.w [$DC54]		; DC 54 DC
	bit $FE94.w,X		; 3C 94 FE
	and #$FC.b		; 29 FC
	and [$9F.b],Y		; 37 9F
	ror $3C18.w		; 6E 18 3C
	brk $BC.b		; 00 BC
	bcc  -2.b		; 90 FE
	jsr ($E83E.w,X)		; FC 3E E8
	jsr ($90FF.w,X)		; FC FF 90
	asl $FE0C.w		; 0E 0C FE
	cpx $EA.b		; E4 EA
	ora [$E9.b],Y		; 17 E9
	ora $1F.b,S		; 03 1F
	bit $02.b		; 24 02
	ora [$FF.b]		; 07 FF
	sbc $FE000B.l,X		; FF 0B 00 FE
	lda ($F4.b)		; B2 F4
	inc $FFF8.w,X		; FE F8 FF
	eor ($21.b)		; 52 21
	ldy $8CC9.w		; AC C9 8C
	phx		; DA
	bit #$A0.b		; 89 A0
	cmp ($65.b)		; D2 65
	eor $4B.b,X		; 55 4B
	sei		; 78
	sbc $3090F7.l,X		; FF F7 90 30
	sbc $0057E0.l,X		; FF E0 57 00
	adc [$00.b],Y		; 77 00
	adc ($04.b,S),Y		; 73 04
	tda		; 7B
	tsb $EA.b		; 04 EA
	.db $42, $BF		; 42 BF
	rti		; 40

	sbc $00F01F.l,X		; FF 1F F0 00
	sta $3D5C.w,X		; 9D 5C 3D
	sty $5C.b		; 84 5C
	eor $FC.b,X		; 55 FC
	lda $9D.b,X		; B5 9D
	sta $FB.b,X		; 95 FB
	ora ($E0.b,X)		; 01 E0
	lda $E3FC5D.l,X		; BF 5D FC E3
	ora ($C3.b,X)		; 01 C3
	ora ($A3.b,X)		; 01 A3
	ora ($43.b,X)		; 01 43
	ora ($63.b,X)		; 01 63
	pla		; 68
	asl $C25B.w,X		; 1E 5B C2
	jmp $54F456.l		; 5C 56 F4 54
	inc $287C.w,X		; FE 7C 28
	trb $0A.b		; 14 0A
	jsr ($F436.w,X)		; FC 36 F4
	ror $EA.b		; 66 EA
	inc $6044.w,X		; FE 44 60
	xba		; EB
	ora $09.b,S		; 03 09
	rol A		; 2A
	cop $03.b		; 02 03
	asl $4EFB.w,X		; 1E FB 4E
	lda $110C.w,Y		; B9 0C 11
	adc $FA2A.w,X		; 7D 2A FA
	tsb $18.b		; 04 18
	cpx #$FF.b		; E0 FF
	inc $D3E8.w,X		; FE E8 D3
	and $E637C8.l,X		; 3F C8 37 E6
	tas		; 1B
	sbc ($0F.b),Y		; F1 0F
	beq  15.b		; F0 0F
	eor $E0E085.l,X		; 5F 85 E0 E0
	sbc $F317.w,Y		; F9 17 F3
	asl $FC2A.w		; 0E 2A FC
	ldx #$F2.b		; A2 F2
	and $14F2.w,X		; 3D F2 14
	sbc $9E33FF.l,X		; FF FF 33 9E
	and [$BE.b],Y		; 37 BE
	sta $CFF716.l		; 8F 16 F7 CF
	sta ($8F.b)		; 92 8F
	rtl		; 6B

	inc A		; 1A
	.db $82, $8F, $C7		; 82 8F C7
	dec $5FE3.w		; CE E3 5F
	sbc $DC90.w,X		; FD 90 DC
	rol $3C.b		; 26 3C
	bpl 125.b		; 10 7D
	brk $F9.b		; 00 F9
	tsb $7C.b		; 04 7C
	tsx		; BA
	lda #$0F.b		; A9 0F
	dec $0A2B.w,X		; DE 2B 0A
	eor $00.b,X		; 55 00
	eor $FD.b,X		; 55 FD
	ora $22.b,X		; 15 22
	sbc $5E29A5.l,X		; FF A5 29 5E
	phx		; DA
	inx		; E8
	sbc $54FEAA.l,X		; FF AA FE 54
	jmp.w [$00DE]		; DC DE 00
	sbc $84CD02.l		; EF 02 CD 84
	eor $037F05.l		; 4F 05 7F 03
	jsr ($3047.w,X)		; FC 47 30
	cmp $78FCF0.l		; CF F0 FC 78
	pha		; 48
	sbc $00.b,X		; F5 00
	and ($8B.b,S),Y		; 33 8B
	sbc $00B200.l,X		; FF 00 B2 00
	tya		; 98
	lda $30FE.w,Y		; B9 FE 30
	brk $B7.b		; 00 B7
	brk $BB.b		; 00 BB
	sta ($DB.b),Y		; 91 DB
	sbc $EBC1FF.l		; EF FF C1 EB
	sbc ($FF.b,X)		; E1 FF
	beq -42.b		; F0 D6
	sta ($00.b),Y		; 91 00
	tsb $5AE1.w		; 0C E1 5A
	asl $67.b		; 06 67
	ora ($37.b,X)		; 01 37
	ora ($C0.b,X)		; 01 C0
	ora ($17.b,X)		; 01 17
	rts		; 60

	cpx #$1E.b		; E0 1E
	stz $19F1.w		; 9C F1 19
	bit $282A.w		; 2C 2A 28
	sec		; 38
	jmp ($FE10.w)		; 6C 10 FE
	cpy #$01.b		; C0 01
	inc $2C.b,X		; F6 2C
	inc $0DF8.w,X		; FE F8 0D
	ora [$02.b]		; 07 02
	ora $4190.w,X		; 1D 90 41
	asl $FC2E.w,X		; 1E 2E FC
	sbc $87F448.l,X		; FF 48 F4 87
	adc ($40.b),Y		; 71 40
	beq   9.b		; F0 09
	inx		; E8
	ora [$1E.b],Y		; 17 1E
	cmp $FC37.w,X		; DD 37 FC
	and ($DF.b,S),Y		; 33 DF
	eor ($FA.b,X)		; 41 FA
	bit $FCF1.w,X		; 3C F1 FC
	mvp $0B,$F0		; 44 F0 0B
	sbc $0A4FF7.l,X		; FF F7 4F 0A
	stx $FF.b,Y		; 96 FF
	ora $779E13.l,X		; 1F 13 9E 77
	dec $971E.w,X		; DE 1E 97
	eor [$DE.b],Y		; 57 DE
	rol $52B7.w,X		; 3E B7 52
	dec $90BC.w,X		; DE BC 90
	jsr $1E03.w		; 20 03 1E
	inc $FCBD.w,X		; FE BD FC
	asl $7C.b,X		; 16 7C
	eor #$FC.b		; 49 FC
	eor ($10.b)		; 52 10
	jmp $6E6701.l		; 5C 01 67 6E
	cmp $F9.b		; C5 F9
	inc A		; 1A
	mvp $DF,$E1		; 44 E1 DF
	stz $D6.b,X		; 74 D6
	jsr ($4CD9.w,X)		; FC D9 4C
	cmp $6E4A.w,Y		; D9 4A 6E
	pha		; 48
	clv		; B8
	php		; 08
	jsr $81FC.w		; 20 FC 81
	ldy $10.b		; A4 10
	pla		; 68
	rol $EAFE.w		; 2E FE EA
	jmp $FF20.w		; 4C 20 FF
	sbc ($33.b,X)		; E1 33
	php		; 08
	ldx $6408.w		; AE 08 64
	ora ($6D.b),Y		; 11 6D
	ora ($60.b),Y		; 11 60
	sta $8F60F0.l,X		; 9F F0 60 8F
	ora ($C0.b,X)		; 01 C0
	eor $FEE690.l		; 4F 90 E6 FE
	ldy $FCBA.w,X		; BC BA FC
	sbc $007087.l,X		; FF 87 70 00
	adc $866A00.l		; 6F 00 6A 86
	sei		; 78
	php		; 08
	txa		; 8A
	ldy $24.b		; A4 24
	eor ($FE.b)		; 52 FE
	lda #$C7.b		; A9 C7
	php		; 08
	bit $F4.b		; 24 F4
	inc $E92A.w,X		; FE 2A E9
	lsr $8E00.w,X		; 5E 00 8E
	inc $382A.w,X		; FE 2A 38
	jmp $5A31E6.l		; 5C E6 31 5A
	sbc ($60.b),Y		; F1 60
	sbc #$1C.b		; E9 1C
	eor [$41.b],Y		; 57 41
	asl $0F.b		; 06 0F
	ldy #$A8.b		; A0 A8
	rol $30F8.w		; 2E F8 30
	sbc ($2A.b),Y		; F1 2A
	adc $FF52.w,X		; 7D 52 FF
	bmi  28.b		; 30 1C
	pei ($E0.b)		; D4 E0
	ora $F002FF.l,X		; 1F FF 02 F0
	ora $FC13EF.l		; 0F EF 13 FC
	inc $9E.b		; E6 9E
	cmp ($D2.b,X)		; C1 D2
	sed		; F8
	rol $1111.w		; 2E 11 11
	sty $E6.b		; 84 E6
	sbc $3FFFAF.l,X		; FF AF FF 3F
	ora ($D7.b)		; 12 D7
	dec $869F.w		; CE 9F 86
	cmp ($CE.b,S),Y		; D3 CE
	stx $6683.w		; 8E 83 66
	ora $D2868B.l,X		; 1F 8B 86 D2
	cmp $28117C.l		; CF 7C 11 28
	and $7D10.w,X		; 3D 10 7D
	bpl  61.b		; 10 3D
	ror $A2.b		; 66 A2
	jsr ($FFC2.w,X)		; FC C2 FF
	sed		; F8
	adc $BF263E.l,X		; 7F 3E 26 BF
	jmp ($CA77.w,X)		; 7C 77 CA
	sbc $187E81.l,X		; FF 81 7E 18
	xce		; FB
	jsr $7C1A.w		; 20 1A 7C
	clc		; 18
	cpy #$9B.b		; C0 9B
	cmp $00.b,S		; C3 00
	lda $F200.w,X		; BD 00 F2
	adc ($19.b,S),Y		; 73 19
	inc $FEFF.w,X		; FE FF FE
	sty $78.b		; 84 78
	lda ($58.b,X)		; A1 58
	plx		; FA
	pha		; 48
	cmp $6F68.w,X		; DD 68 6F
	cld		; D8
	ora ($A0.b,S),Y		; 13 A0
	sty $4B.b		; 84 4B
	inc $2433.w,X		; FE 33 24
	lda ($20.b,S),Y		; B3 20
	jsr ($FCFE.w,X)		; FC FE FC
	pea $A05F.w		; F4 5F A0
	tad		; 5B
	lda [$D7.b]		; A7 D7
	bit $1C.b,X		; 34 1C
	sta $0F57FE.l		; 8F FE 57 0F
	inc $5F07.w,X		; FE 07 5F
	eor $FDD166.l,X		; 5F 66 D1 FD
	ora $7BFE7F.l		; 0F 7F FE 7B
	lda #$FE.b		; A9 FE
	ora ($D9.b,S),Y		; 13 D9
	tax		; AA
	plb		; AB
	asl $DC.b		; 06 DC
	cmp ($81.b),Y		; D1 81
	sbc #$E7.b		; E9 E7
	cmp ($09.b)		; D2 09
	cmp ($0E.b,X)		; C1 0E
	ora [$8B.b]		; 07 8B
	cmp ($45.b,X)		; C1 45
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	adc $52FCFE.l,X		; 7F FE FC 52
	eor ($42.b)		; 52 42
	brk $54.b		; 00 54
	mvn $FF,$B6		; 54 B6 FF
	sty $6B.b,X		; 94 6B
	and $8AD2.w		; 2D D2 8A
	brk $71.b		; 00 71
	adc ($FF.b,X)		; 61 FF
	bne -119.b		; D0 89
	ldy $AB54.w		; AC 54 AB
	stz $09F0.w		; 9C F0 09
	lda $A5.b		; A5 A5
	tay		; A8
	brk $2A.b		; 00 2A
	rol A		; 2A
	sbc ($00.b,X)		; E1 00
	jmp $E8FF.w		; 4C FF E8
	lda [$58.b]		; A7 58
	lda $EEE2.w		; AD E2 EE
	sbc $B1D2F0.l,X		; FF F0 D2 B1
	rol A		; 2A
	cmp $E0.b,X		; D5 E0
	sed		; F8
	ora #$7344.w		; 09 44 73
	lda $B7A801.l		; AF 01 A8 B7
	lsr $E0.b,X		; 56 E0
	sta $FF.b,X		; 95 FF
	cmp [$61.b],Y		; D7 61
	adc #$529F.w		; 69 9F 52
	bit $94.b		; 24 94
	ora [$70.b]		; 07 70
	bra  -2.b		; 80 FE
	brk $B0.b		; 00 B0
	cpx $5DD1.w		; EC D1 5D
	adc ($1A.b)		; 72 1A
	inc $92FB.w,X		; FE FB 92
	lda ($EC.b,X)		; A1 EC
	and #$FC86.w		; 29 86 FC
	lsr A		; 4A
	ldx $CCB5.w,Y		; BE B5 CC
	jmp ($5783.w,X)		; 7C 83 57
	sbc ($D5.b,X)		; E1 D5
	cpx $C7B9.w		; EC B9 C7
	inx		; E8
	pea $BAC3.w		; F4 C3 BA
	eor $FFDA.w,Y		; 59 DA FF
	eor ($C1.b)		; 52 C1
	sbc $1F675F.l,X		; FF 5F 67 1F
	cmp ($C3.b,S),Y		; D3 C3
	lda $5411.w		; AD 11 54
	plp		; 28
	rol $06.b		; 26 06
	dex		; CA
	and ($2C.b)		; 32 2C
	tsb $AADF.w		; 0C DF AA
	.db $82, $FE, $FC		; 82 FE FC
	cpy $5CF9.w		; CC F9 5C
	sta $00F3.w,Y		; 99 F3 00
	inc A		; 1A
	ror $DFDB.w,X		; 7E DB DF
	lda [$7E.b],Y		; B7 7E
	cmp $3D7C.w,Y		; D9 7C 3D
	sta ($3C.b,X)		; 81 3C
	cmp ($B9.b),Y		; D1 B9
	rol $EB22.w,X		; 3E 22 EB
	stz $F2EC.w		; 9C EC F2
	sbc $CFED.w,X		; FD ED CF
	ply		; 7A
	bit #$F47E.w		; 89 7E F4
	and ($C1.b,X)		; 21 C1
	lsr A		; 4A
	sta ($B7.b)		; 92 B7
	sbc $5EB7.w,X		; FD B7 5E
	ora [$BD.b],Y		; 17 BD
	bcs -62.b		; B0 C2
	cpx #$8718.w		; E0 18 87
	sty $EC.b		; 84 EC
	pea $FCE0.w		; F4 E0 FC
	jmp ($3F78.w,X)		; 7C 78 3F
	tsb $5700.w		; 0C 00 57
	eor $A75FF7.l,X		; 5F F7 5F A7
	ora $013DE0.l		; 0F E0 3D 01
	sbc $F0E02B.l		; EF 2B E0 F0
	bpl  92.b		; 10 5C
	cpx $EC.b		; E4 EC
	sbc ($AF.b)		; F2 AF
	eor $C201FF.l,X		; 5F FF 01 C2
	eor ($16.b),Y		; 51 16
	cmp $B8E8.w,Y		; D9 E8 B8
	ror $FC24.w,X		; 7E 24 FC
	cpx $A1.b		; E4 A1
	rol $B5.b,X		; 36 B5
	lda ($3F.b)		; B2 3F
	jsr $BB0A.w		; 20 0A BB
	bit $F8.b		; 24 F8
	phd		; 0B
	ldx #$E481.w		; A2 81 E4
	sbc $E6.b,X		; F5 E6
	and $DA.b		; 25 DA
	inc $FCA2.w,X		; FE A2 FC
	tsb $FE.b		; 04 FE
	sbc $0BF0E4.l,X		; FF E4 F0 0B
	sta ($49.b)		; 92 49
	brk $9A.b		; 00 9A
	sty $51.b,X		; 94 51
	lda $A2.b		; A5 A2
	lsr $08.b,X		; 56 08
	asl $30C2.w		; 0E C2 30
	ldy $7F0E.w,X		; BC 0E 7F
	brk $0A.b		; 00 0A
	tsb $203E.w		; 0C 3E 20
	txy		; 9B
	rts		; 60

	sbc $0802.w,Y		; F9 02 08
	pha		; 48
	and ($EE.b,X)		; 21 EE
	ror $FE8A.w,X		; 7E 8A FE
	cmp $CC.b,S		; C3 CC
	eor ($AC.b,S),Y		; 53 AC
	ldx $FC.b		; A6 FC
	and $CEAF.w		; 2D AF CE
	ora $331F36.l,X		; 1F 36 1F 33
	ora $09F8A6.l,X		; 1F A6 F8 09
	inc $FEFC.w,X		; FE FC FE
	sbc ($AD.b),Y		; F1 AD
	pea $FD5F.w		; F4 5F FD
	ldx $D4.b		; A6 D4
	sed		; F8
	ldy $94F8.w,X		; BC F8 94
	ply		; 7A
	sbc ($A6.b,X)		; E1 A6
	inc $FCFE.w,X		; FE FE FC
	ora ($00.b,X)		; 01 00
	ror A		; 6A
	sty $AA.b,X		; 94 AA
	sbc $F1CDD5.l,X		; FF D5 CD F1
	cpx #$0BF8.w		; E0 F8 0B
	stz $DA.b		; 64 DA
	cpx #$55FE.w		; E0 FE 55
	jmp ($DB64.w,X)		; 7C 64 DB
	rol A		; 2A
	dec A		; 3A
	and $FF.b		; 25 FF
	and ($AC.b),Y		; 31 AC
	txs		; 9A
	cmp $68CB.w,Y		; D9 CB 68
	sty $11.b		; 84 11
	dec $830E.w		; CE 0E 83
	ldy $C5.b,X		; B4 C5
	cpx $8CFF.w		; EC FF 8C
	brk $27.b		; 00 27
	bit $69.b,X		; 34 69
	inc $F100.w		; EE 00 F1
	brk $95.b		; 00 95
	adc $49.b		; 65 49
	iny		; C8
	lda ($FF.b),Y		; B1 FF
	ora $204050.l,X		; 1F 50 40 20
	inc $69.b,X		; F6 69
	nop		; EA
	ldy #$2060.w		; A0 60 20
	jsr ($FA34.w,X)		; FC 34 FA
	brk $B6.b		; 00 B6
	tas		; 1B
	lda ($E8.b,X)		; A1 E8
	cmp $5F595F.l,X		; DF 5F 59 5F
	plx		; FA
	rts		; 60

	ldx $BF0A.w,Y		; BE 0A BF
	stx $2B.b,Y		; 96 2B
	brk $F8.b		; 00 F8
	ora #$284A.w		; 09 4A 28
	ora $CD60.w		; 0D 60 CD
	phk		; 4B
	phk		; 4B
	sta [$CF.b]		; 87 CF
	sta [$A2.b]		; 87 A2
	ora [$00.b],Y		; 17 00
	sed		; F8
	ora #$B16D.w		; 09 6D B1
	inc $F85A.w,X		; FE 5A F8
	ora #$FAF6.w		; 09 F6 FA
	plx		; FA
	and $CE59.w,Y		; 39 59 CE
	plx		; FA
	inc $5A.b		; E6 5A
	lda $6F.b		; A5 6F
	cpy #$AE88.w		; C0 88 AE
	cpy #$AAFE.w		; C0 FE AA
	sta $5FFF7F.l,X		; 9F 7F FF 5F
	eor $B71F2B.l,X		; 5F 2B 1F B7
	sta $BA5F75.l,X		; 9F 75 5F BA
	sta $62DFE9.l,X		; 9F E9 DF 62
	cmp $BBC240.l,X		; DF 40 C2 BB
	sbc ($FF.b)		; F2 FF
	plx		; FA
	inc $8C.b,X		; F6 8C
	jsr ($A4F8.w,X)		; FC F8 A4
	sed		; F8
	ror $FA.b,X		; 76 FA
	jmp $ADF8.w		; 4C F8 AD
	sbc $FD5F.w,Y		; F9 5F FD
	dec $FA.b,X		; D6 FA
	ora $FB07FB.l		; 0F FB 07 FB
	tsb $53FC.w		; 0C FC 53
	lda #$E5C0.w		; A9 C0 E5
	ldx $98.b		; A6 98
	ror $58.b,X		; 76 58
	sbc $18242F.l,X		; FF 2F 24 18
	ldx $7F90.w,Y		; BE 90 7F
	eor ($B4.b),Y		; 51 B4
	tya		; 98
	sbc $D9.b		; E5 D9
	adc $43D1.w		; 6D D1 43
	rtl		; 6B

	lda $F440.w,Y		; B9 40 F4
	lsr A		; 4A
	plx		; FA
	.db $82, $FC, $31		; 82 FC 31
	sbc #$5500.w		; E9 00 55
	sbc $FFF9BF.l,X		; FF BF F9 FF
	xce		; FB
	cmp $F9.b,X		; D5 F9
	sbc $AEF9.w		; ED F9 AE
	xce		; FB
	eor $96F9.w,X		; 5D F9 96
	xce		; FB
	lsr $FB.b		; 46 FB
	cpx $FF.b		; E4 FF
	eor $32.b		; 45 32
	inx		; E8
	eor $A11E.w,Y		; 59 1E A1
	brk $54.b		; 00 54
	bpl -95.b		; 10 A1
	and ($88.b,X)		; 21 88
	php		; 08
	eor ($43.b)		; 52 43
	tda		; 7B
	eor ($AD.b)		; 52 AD
	and $7615.w		; 2D 15 76
	cpy #$EFA1.w		; C0 A1 EF
	nop		; EA
	cmp ($F7.b),Y		; D1 F7
	brk $AD.b		; 00 AD
	sbc $8E23.w,X		; FD 23 8E
	adc #$AA5F.w		; 69 5F AA
	eor $29.b,X		; 55 29
	ldx $74AA.w,Y		; BE AA 74
	plp		; 28
	eor $FCFA.w,X		; 5D FA FC
	sta ($FC.b),Y		; 91 FC
	sta [$AB.b],Y		; 97 AB
	ldx $8B.b,Y		; B6 8B
	rep #$00		; C2 00
	eor ($A0.b,X)		; 41 A0
	brk $E0.b		; 00 E0
	plx		; FA
	jsr ($FE5E.w,X)		; FC 5E FE
	ldy $CB.b,X		; B4 CB
	adc $CAF5FD.l,X		; 7F FD F5 CA
	dec A		; 3A
	cmp $7D.b		; C5 7D
.ACCU 16
.INDEX 16
	rep #$BF		; C2 BF
	rti		; 40

	rts		; 60

	ora [$FF.b],Y		; 17 FF
	sed		; F8
	tsb $53AF.w		; 0C AF 53
	asl $EB.b,X		; 16 EB
	eor $33CCFF.l,X		; 5F FF CC 33
	lda $4A.b,X		; B5 4A
	inc $7801.w,X		; FE 01 78
	and $F8E0.w,Y		; 39 E0 F8
	ora ($BD.b)		; 12 BD
	cmp ($FC.b,X)		; C1 FC
	cmp ($3E.b,X)		; C1 3E
	cmp $9F.b,S		; C3 9F
	pea $C27F.w		; F4 7F C2
	lda $BF42.w,X		; BD 42 BF
	.db $42, $DE		; 42 DE
	stz $FC.b		; 64 FC
	sbc $2C09F8.l,X		; FF F8 09 2C
	cmp ($27.b,S),Y		; D3 27
	sbc $5D52AF.l		; EF AF 52 5D
	ldx #$C0E4.w		; A2 E4 C0
	sed		; F8
	ora $EF.b,X		; 15 EF
	sbc $99F139.l,X		; FF 39 F1 99
	lsr $AF.b,X		; 56 AF
	inc $A939.w,X		; FE 39 A9
	dec $CE.b,X		; D6 CE
	lda ($E8.b),Y		; B1 E8
	txs		; 9A
	lda #$BF34.w		; A9 34 BF
	bvc   9.b		; 50 09
	eor $9FE3.w,X		; 5D E3 9F
	lda $7C.b,S		; A3 7C
	ora $A9.b,S		; 03 A9
	cmp $BE.b,S		; C3 BE
	sta $5E.b,S		; 83 5E
	jmp $9A869E.l		; 5C 9E 86 9A
	bra  13.b		; 80 0D
	lda $B53C5F.l		; AF 5F 3C B5
	rti		; 40

	jsr $50A0.w		; 20 A0 50
	iny		; C8
	eor [$7A.b],Y		; 57 7A
	sbc ($80.b),Y		; F1 80
	cpx #$B040.w		; E0 40 B0
	rti		; 40

	pha		; 48
	plb		; AB
	eor $F5.b,X		; 55 F5
.ACCU 8
	sep #$A0		; E2 A0
	ora #$DE.b		; 09 DE
	ldy #$200A.w		; A0 0A 20
	jmp.w [$A011]		; DC 11 A0
	ora #$85.b		; 09 85
	ldy #$C40D.w		; A0 0D C4
	tax		; AA
	ldy $1B.b,X		; B4 1B
	sec		; 38
	php		; 08
	xce		; FB
	eor $020106.l,X		; 5F 06 01 02
	sta $8501C3.l,X		; 9F C3 01 85
	cop $38.b		; 02 38
	dec $7C.b		; C6 7C
	jmp ($0E0E.w,X)		; 7C 0E 0E
	sbc $FEC9.w,Y		; F9 C9 FE
	sbc $8787FF.l,X		; FF FF 87 87
	inc $88FE.w,X		; FE FE 88
	cld		; D8
	bit $F4.b		; 24 F4
	cop $DA.b		; 02 DA
	inc A		; 1A
	cmp $41FFFF.l,X		; DF FF FF 41
	lda $AE44.w		; AD 44 AE
	plp		; 28
	dec $D722.w		; CE 22 D7
	sei		; 78
	ldy #$A85C.w		; A0 5C A8
	rol $2774.w		; 2E 74 27
	sec		; 38
	adc $3217FD.l,X		; 7F FD 17 32
	ora ($1D.b,S),Y		; 13 1D
	ora ($19.b,S),Y		; 13 19
	ora #$9A.b		; 09 9A
	stx $FC.b		; 86 FC
	cpy $A2.b		; C4 A2
	sty $84.b		; 84 84
	stx $C6.b		; 86 C6
	sta $1F.b		; 85 1F
	eor #$C5.b		; 49 C5
	stx $FE.b		; 86 FE
	jsr ($0084.w,X)		; FC 84 00
	dex		; CA
	php		; 08
	cmp ($16.b,S),Y		; D3 16
	jmp ($A00F.w,X)		; 7C 0F A0
	ora $B2.b,S		; 03 B2
	brk $18.b		; 00 18
	php		; 08
	clc		; 18
	stx $41.b		; 86 41
	bmi   8.b		; 30 08
	bpl  -6.b		; 10 FA
	sbc $AE26A0.l,X		; FF A0 26 AE
	cmp $389A.w,X		; DD 9A 38
	brk $20.b		; 00 20
	cmp [$14.b],Y		; D7 14
	sbc [$99.b]		; E7 99
	xba		; EB
	bcc -21.b		; 90 EB
	txa		; 8A
	sbc $8CF3F0.l,X		; FF F0 F3 8C
	sbc $88.b,X		; F5 88
	sbc $89.b,X		; F5 89
	sbc $09.b,X		; F5 09
	sty $04FE.w		; 8C FE 04
	sta $FFFF04.l		; 8F 04 FF FF
	stx $8604.w		; 8E 04 86
	cop $87.b		; 02 87
	cop $C7.b		; 02 C7
	cop $C3.b		; 02 C3
	cli		; 58
	eor ($38.b,X)		; 41 38
	stz $3B.b		; 64 3B
	lda [$1E.b]		; A7 1E
	sbc $19B7FF.l,X		; FF FF B7 19
	sta [$1C.b],Y		; 97 1C
	eor ($AA.b,S),Y		; 53 AA
	sbc $E7CB0C.l,X		; FF 0C CB E7
	ldx $E3.b		; A6 E3
	sta [$E0.b]		; 87 E0
	eor $F1.b,S		; 43 F1
	sbc $F0467A.l,X		; FF 7A 46 F0
	adc $F0.b,S		; 63 F0
	lda ($58.b,X)		; A1 58
	lda $78.b,S		; A3 78
	lda ($24.b),Y		; B1 24
	tax		; AA
	inc $F1.b		; E6 F1
	rts		; 60

	jsr $AF20.w		; 20 20 AF
	bne  34.b		; D0 22
	lda #$50.b		; A9 50
	dey		; 88
	tya		; 98
	.db $62, $EA, $E6		; 62 EA E6
	sbc ($FE.b),Y		; F1 FE
	cpy #$A922.w		; C0 22 A9
	eor $0D.b,S		; 43 0D
	ldy #$E078.w		; A0 78 E0
	stx $5510.w		; 8E 10 55
	lda ($94.b,X)		; A1 94
	lda ($20.b)		; B2 20
	asl A		; 0A
	asl $6C76.w,X		; 1E 76 6C
	sta $B066.w,Y		; 99 66 B0
	ora #$E9.b		; 09 E9
	adc $A9.b		; 65 A9
	brk $85.b		; 00 85
	sbc $4080.w,Y		; F9 80 40
	txa		; 8A
	jsr ($85FE.w,X)		; FC FE 85
	rti		; 40

	sbc ($D0.b)		; F2 D0
	sbc $FFFE8E.l,X		; FF 8E FE FF
	and ($DA.b,X)		; 21 DA
	brk $1E.b		; 00 1E
	cmp $FF59.w,Y		; D9 59 FF
	asl $FD.b,X		; 16 FD
	ora [$FF.b],Y		; 17 FF
	sbc $FF1CF4.l,X		; FF F4 1C FF
	asl $87FD.w,X		; 1E FD 87
	stz $C5.b		; 64 C5
	and $28B068.l		; 2F 68 B0 28
	eor ($2C.b,S),Y		; 53 2C
	bvc  44.b		; 50 2C
	sbc $2498FF.l,X		; FF FF 98 24
	txy		; 9B
	bit $98.b		; 24 98
	bit $1C18.w,X		; 3C 18 1C
	ora ($48.b,S),Y		; 13 48
	cld		; D8
	clc		; 18
	tya		; 98
	mvp $24,$DC		; 44 DC 24
	sbc ($87.b),Y		; F1 87
	cpx $FC9C.w		; EC 9C FC
	and ($F6.b)		; 32 F6
	eor ($DE.b)		; 52 DE
	sec		; 38
	cpx #$FF8C.w		; E0 8C FF
	xce		; FB
	bit $1CE0.w,X		; 3C E0 1C
	bvs  44.b		; 70 2C
	beq  28.b		; F0 1C
	beq  14.b		; F0 0E
	sei		; 78
	rol $5137.w		; 2E 37 51
	lda $FF7440.l,X		; BF 40 74 FF
	cmp ($8B.b,X)		; C1 8B
	sbc ($0D.b)		; F2 0D
	eor $BF.b		; 45 BF
	cmp $BB492D.l,X		; DF 2D 49 BB
	phx		; DA
	sta $E0.b		; 85 E0
	tya		; 98
	asl A		; 0A
	sbc $1014FE.l,X		; FF FE 14 10
	ora $10.b,X		; 15 10
	sbc [$34.b]		; E7 34
	sta $AD2878.l,X		; 9F 78 28 AD
	adc $A09F.w,Y		; 79 9F A0
	trb $5F23.w		; 1C 23 5F
	sbc $B8203E.l,X		; FF 3E 20 B8
	adc [$0C.b]		; 67 0C
	sec		; 38
	php		; 08
	bmi  16.b		; 30 10
	adc $3D.b,S		; 63 3D
	txs		; 9A
	cpx #$E001.w		; E0 01 E0
	rti		; 40

	jsr ($16FF.w,X)		; FC FF 16
	rol $F6.b,X		; 36 F6
	ora ($F6.b)		; 12 F6
	stx $DE.b,Y		; 96 DE
	and ($F7.b),Y		; 31 F7
	sta $097B.w,Y		; 99 7B 09
	stp		; DB
	and $03.b,X		; 35 03
	sbc $9BFF.w,X		; FD FF 9B
	stp		; DB
	ldy $0FAA.w		; AC AA 0F
	sei		; 78
	ora [$3C.b]		; 07 3C
	and [$C3.b]		; 27 C3
	sbc $700FFC.l,X		; FF FC 0F 70
	jsr ($967C.w,X)		; FC 7C 96
	pei ($BE.b)		; D4 BE
	adc $51BA.w,Y		; 79 BA 51
	dec A		; 3A
	sed		; F8
	sbc $D59370.l,X		; FF 70 93 D5
	sta ($60.b)		; 92 60
	ora ($36.b,S),Y		; 13 36
	eor $39.b,S		; 43 39
	sec		; 38
	inc $383D.w,X		; FE 3D 38
	lda $FE3C.w,X		; BD 3C FE
	jsr ($103D.w,X)		; FC 3D 10
	lda $BEFE.w,X		; BD FE BE
	adc ($DF.b,X)		; 61 DF
	rts		; 60

	sbc $608FC3.l,X		; FF C3 8F 60
	dec $FC46.w,X		; DE 46 FC
	cmp $9E47.w,Y		; D9 47 9E
	eor $B6.b,S		; 43 B6
	rtl		; 6B

	sec		; 38
	jsr ($FEAC.w,X)		; FC AC FE
	cmp ($60.b,X)		; C1 60
	jsr ($60C0.w,X)		; FC C0 60
	iny		; C8
	pla		; 68
	inx		; E8
	sbc $2148FF.l,X		; FF FF 48 21
	sbc $813BC9.l		; EF C9 3B 81
	adc $1E06.w,X		; 7D 06 1E
	inc $AC0E.w,X		; FE 0E AC
	sty $D4.b,X		; 94 D4
	cpy $FBBC.w		; CC BC FB
	xce		; FB
	tsb $1F.b		; 04 1F
	beq -88.b		; F0 A8
	lda #$0E.b		; A9 0E
.INDEX 8
	sep #$1C		; E2 1C
	and ($0C.b)		; 32 0C
	jmp ($717A.w,X)		; 7C 7A 71
	jsr ($0080.w,X)		; FC 80 00
	phd		; 0B
	pla		; 68
	jsr $2070.w		; 20 70 20
	plb		; AB
	cmp $F9FC.w,Y		; D9 FC F9
	lda $F1.b,X		; B5 F1
	pla		; 68
	bcc  -2.b		; 90 FE
	pea $949D.w		; F4 9D 94
	plx		; FA
	bvs  96.b		; 70 60
	tya		; 98
	beq -125.b		; F0 83
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	lda $644578.l,X		; BF 78 45 64
	adc ($FF.b,X)		; 61 FF
	ora ($BC.b,X)		; 01 BC
	sbc $956EB6.l,X		; FF B6 6E 95
	txa		; 8A
	eor $02.b,X		; 55 02
	and $FFDD.w,X		; 3D DD FF
	dec A		; 3A
	ora ($9F.b),Y		; 11 9F
	cpy $DB.b		; C4 DB
	stz $0401.w,X		; 9E 01 04
	ora $FD00.w,Y		; 19 00 FD
	pld		; 2B
	jmp.w [$990B]		; DC 0B 99
	eor $0FFFBA.l		; 4F BA FF 0F
	adc $CDDA.w		; 6D DA CD
	ora ($0F.b),Y		; 11 0F
	eor $CB.b		; 45 CB
	cmp ($2F.b),Y		; D1 2F
	cpx $CC4C.w		; EC 4C CC
	bit $FFC3.w		; 2C C3 FF
	inc $0CEC.w,X		; FE EC 0C
	jsr ($EC0C.w,X)		; FC 0C EC
	cpy $F03C.w		; CC 3C F0
	brk $14.b		; 00 14
	sty $1FA0.w		; 8C A0 1F
	lda $DCD49C.l,X		; BF 9C D4 DC
	jmp.w [$B0D4]		; DC D4 B0
	plx		; FA
	tsb $3494.w		; 0C 94 34
	tsb $A2FC.w		; 0C FC A2
	inc $B308.w,X		; FE 08 B3
	cop $B4.b		; 02 B4
	pea $8D46.w		; F4 46 8D
	jsr ($06C1.w,X)		; FC C1 06
	phd		; 0B
	tsb $0807.w		; 0C 07 08
	sbc #$17F7.w		; E9 F7 17
	clc		; 18
	sbc ($04.b)		; F2 04
	asl $08.b		; 06 08
	asl $0C08.w		; 0E 08 0C
	bit $30F3.w		; 2C F3 30
	trb $FF.b		; 14 FF
	sbc $EA2AF4.l,X		; FF F4 2A EA
	sta $7F.b,X		; 95 7F
	bit $E5.b		; 24 E5
	dey		; 88
	adc $3ECA.w,Y		; 79 CA 3E
	bpl -12.b		; 10 F4
	cmp $0C3D.w		; CD 3D 0C
	sbc $1698DF.l,X		; FF DF 98 16
	bit $1C03.w,X		; 3C 03 1C
	tas		; 1B
	ror $1E07.w,X		; 7E 07 1E
	ora ($0F.b,X)		; 01 0F
	ora $B8023B.l		; 0F 3B 02 B8
	lda $A8.b		; A5 A8
	ply		; 7A
	bra  -1.b		; 80 FF
	cld		; D8
	xba		; EB
	cpy #$C625.w		; C0 25 C6
	phx		; DA
	cld		; D8
	xba		; EB
	brk $A4.b		; 00 A4
	lda [$F8.b]		; A7 F8
	sbc $A71848.l,X		; FF 48 18 A7
	jsr $1265.w		; 20 65 12
	ldy $04.b		; A4 04
	dec $04.b,X		; D6 04
	ror $3602.w		; 6E 02 36
	sta ($20.b,X)		; 81 20
	lda [$58.b]		; A7 58
	pha		; 48
	.db $42, $44		; 42 44
	and $38FFFE.l,X		; 3F FE FF 38
	cmp $FE6600.l		; CF 00 66 FE
	clc		; 18
	ora [$4C.b]		; 07 4C
	cmp $1E.b,S		; C3 1E
	sbc ($5D.b,X)		; E1 5D
	sta $D3.b,S		; 83 D3
	ora $D28F0E.l,X		; 1F 0E 8F D2
	stx $1B4D.w		; 8E 4D 1B
	sbc ($C3.b,X)		; E1 C3
	cpx #$30C0.w		; E0 C0 30
	cmp $FF.b,S		; C3 FF
	pha		; 48
	iny		; C8
	plp		; 28
	inc $28C9.w,X		; FE C9 28
	jmp $68AC.w		; 4C AC 68
	trb $8EB6.w		; 1C B6 8E
	jmp.w [$43FF]		; DC FF 43
	cpy #$84B8.w		; C0 B8 84
	beq  12.b		; F0 0C
	mvp $24,$9C		; 44 9C 24
	stz $9CA4.w		; 9C A4 9C
	lsr $277E.w		; 4E 7E 27
	inc A		; 1A
	iny		; C8
	sbc ($7C.b),Y		; F1 7C
	brk $38.b		; 00 38
	inc $100F.w,X		; FE 0F 10
	stx $FEF0.w		; 8E F0 FE
	and $FE1F20.l,X		; 3F 20 1F FE
	bcs 127.b		; B0 7F
	rti		; 40

	bit $88F0.w,X		; 3C F0 88
	eor $4E.b,S		; 43 4E
	jsr $4020.w		; 20 20 40
	rts		; 60

	inc $1FE1.w,X		; FE E1 1F
	sbc $C07F80.l,X		; FF 80 7F C0
	dec $3E.b		; C6 3E
	brk $F5.b		; 00 F5
	inc $1E.b		; E6 1E
	cmp $FE.b		; C5 FE
	cld		; D8
	cmp $E4F4.w,X		; DD F4 E4
	asl $7F85.w,X		; 1E 85 7F
	sec		; 38
	plx		; FA
	lsr A		; 4A
	rol A		; 2A
	eor ($B1.b,X)		; 41 B1
	sbc $FB.b,S		; E3 FB
	ora [$0F.b]		; 07 0F
	tda		; 7B
	plx		; FA
	ora $A0FD07.l,X		; 1F 07 FD A0
	pha		; 48
	sta ($10.b),Y		; 91 10
	beq -112.b		; F0 90
	sbc $90B085.l,X		; FF 85 B0 90
	bcc  16.b		; 90 10
	bcc  88.b		; 90 58
	sei		; 78
	pha		; 48
	cli		; 58
	rts		; 60

	bit $E9.b		; 24 E9
	.db $82, $3F, $FC		; 82 3F FC
	bvs -64.b		; 70 C0
	bvs -32.b		; 70 E0
	beq  96.b		; F0 60
	clv		; B8
	dey		; 88
	cpx #$3AB8.w		; E0 B8 3A
	ldy $3F21.w,X		; BC 21 3F
.ACCU 16
.INDEX 16
	rep #$3A		; C2 3A
	tax		; AA
	and $A9B9AD.l,X		; 3F AD B9 A9
	cmp $C7FCB1.l,X		; DF B1 FC C7
	sbc $C380E2.l,X		; FF E2 80 C3
	bra -59.b		; 80 C5
	bra -62.b		; 80 C2
	bra -58.b		; 80 C6
	bra  25.b		; 80 19
	adc ($D4.b),Y		; 71 D4
	eor $1FFF.w,X		; 5D FF 1F
	tas		; 1B
	lsr $5F0A.w		; 4E 0A 5F
	txy		; 9B
	tsb $AF48.w		; 0C 48 AF
	tax		; AA
	cmp $18.b,X		; D5 18
	asl $F709.w		; 0E 09 F7
	inc $3487.w,X		; FE 87 34
	ldy $AC5D.w		; AC 5D AC
	cpy $DF2C.w		; CC 2C DF
	bit $0C7D.w		; 2C 7D 0C
	sbc $F87FFE.l,X		; FF FE 7F F8
	tsb $0F.b		; 04 0F
	brk $D4.b		; 00 D4
	ldy $9CB4.w,X		; BC B4 9C
	bne  -4.b		; D0 FC
	jmp.w [$BCDC]		; DC DC BC
	cld		; D8
	and $00B8BC.l		; 2F BC B8 00
	beq  -1.b		; F0 FF
	sbc $FEFE48.l,X		; FF 48 FE FE
	sed		; F8
	sty $F0.b,X		; 94 F0
	stz $7FE9.w		; 9C E9 7F
	bit $C1.b,X		; 34 C1
	rti		; 40

	inc $635C.w,X		; FE 5C 63
	ora $3C.b,S		; 03 3C
	rol $2F01.w		; 2E 01 2F
	brk $E7.b		; 00 E7
	iny		; C8
	sbc #$B67F.w		; E9 7F B6
	sbc ($48.b)		; F2 48
	rti		; 40

	pla		; 68
	bmi   0.b		; 30 00
	sec		; 38
	php		; 08
	sbc $8409.w,Y		; F9 09 84
	jmp ($BFFF.w,X)		; 7C FF BF
	jmp.w [$0069]		; DC 69 00
	and $4DFA.w,Y		; 39 FA 4D
	ldy $769E.w,X		; BC 9E 76
	asl $FE.b,X		; 16 FE
	ror $BA.b		; 66 BA
	ora $1F.b,S		; 03 1F
	asl $97FE.w,X		; 1E FE 97
	phx		; DA
	and $0091.w,Y		; 39 91 00
	bit #$FE88.w		; 89 88 FE
	sta $488C.w		; 8D 8C 48
	sed		; F8
	tya		; 98
	clv		; B8
	sta [$E1.b]		; 87 E1
	php		; 08
	cld		; D8
	plp		; 28
	sed		; F8
	rol $60A0.w,X		; 3E A0 60
	inc $E000.w,X		; FE 00 E0
	adc $00F810.l,X		; 7F 10 F8 00
	sei		; 78
	cpy #$6038.w		; C0 38 60
	clc		; 18
	rts		; 60

	rol $8A7E.w,X		; 3E 7E 8A
	inc $FE87.w,X		; FE 87 FE
	sbc [$58.b],Y		; F7 58
	dec $FE49.w		; CE 49 FE
	eor $D9DE.w,Y		; 59 DE D9
	lsr $F6C9.w		; 4E C9 F6
	sbc $D95638.l,X		; FF 38 56 D9
	sbc $09A940.l		; EF 40 A9 09
	and $2909.w,Y		; 39 09 29
	inc $09B9.w,X		; FE B9 09
	tsb $F6FF.w		; 0C FF F6
	plp		; 28
	php		; 08
	cmp $BE.b		; C5 BE
	phx		; DA
	bit #$DAFC.w		; 89 FC DA
	ldx $FFC9.w,Y		; BE C9 FF
	bmi -68.b		; 30 BC
	sta $45FC.w,Y		; 99 FC 45
	lda $54BC.w,Y		; B9 BC 54
	sta $8FAEFE.l		; 8F FE AE 8F
	sty $C3C1.w		; 8C C1 C3
	jsr ($8EFE.w,X)		; FC FE 8E
	sty $888B.w		; 8C 8B 88
	sta $20.b,X		; 95 20
	ora [$04.b]		; 07 04
	cpx #$A0E0.w		; E0 E0 A0
	ldy #$B5FD.w		; A0 FD B5
	inc $98.b,X		; F6 98
	jsr ($809F.w,X)		; FC 9F 80
	rts		; 60

	ldy $F8FE.w		; AC FE F8
	phd		; 0B
	cmp $507FD0.l,X		; DF D0 7F 50
	adc ($F8.b,X)		; 61 F8
	cmp $77A440.l		; CF 40 A4 77
	cld		; D8
	tya		; 98
	ror $6ED9.w,X		; 7E D9 6E
	eor #$0023.w		; 49 23 00
	jsr $A800.w		; 20 00 A8
	tax		; AA
	ldy $FE.b		; A4 FE
	bvc  -4.b		; 50 FC
	stz $CC9A.w,X		; 9E 9A CC
	pha		; 48
	eor $BA.b,S		; 43 BA
	trb $F8.b		; 14 F8
	adc $B8EC9A.l,X		; 7F 9A EC B8
	txy		; 9B
	inc $9CE8.w,X		; FE E8 9C
	plx		; FA
	ldx $8D48.w,Y		; BE 48 8D
	dey		; 88
	tsb $A0C1.w		; 0C C1 A0
	stx $FC.b,Y		; 96 FC
	jsr $20AE.w		; 20 AE 20
	tax		; AA
	rep #$81		; C2 81
	ora ($F5.b,X)		; 01 F5
	cpx #$A2C0.w		; E0 C0 A2
	tya		; 98
	lsr A		; 4A
	jsr ($F8FE.w,X)		; FC FE F8
	ora #$1E81.w		; 09 81 1E
	sbc $1A247F.l,X		; FF 7F 24 1A
	eor $17BA12.l,X		; 5F 12 BA 17
	inc $1B.b,X		; F6 1B
	adc #$8104.w		; 69 04 81
	jmp ($CD24.w)		; 6C 24 CD
	sbc $3500.w		; ED 00 35
	php		; 08
	inc $BEFE.w,X		; FE FE BE
	cpy $E0.b		; C4 E0
	tay		; A8
	phd		; 0B
	clc		; 18
	sbc $A8E0.w,X		; FD E0 A8
	bpl  -1.b		; 10 FF
	cmp $04.b,S		; C3 04
	sbc [$48.b]		; E7 48
	sbc $58DF50.l,X		; FF 50 DF 58
	adc $8C7FF0.l,X		; 7F F0 7F 8C
	sed		; F8
	eor $D82D04.l,X		; 5F 04 2D D8
	pla		; 68
	lsr $60A0.w,X		; 5E A0 60
	sbc #$DFF0.w		; E9 F0 DF
	ora $3FFC.w,Y		; 19 FC 3F
	inc $DDB9.w,X		; FE B9 DD
	ror $BA.b,X		; 76 BA
	sta $7E74.w		; 8D 74 7E
	stz $7C84.w,X		; 9E 84 7C
	and ($F0.b,S),Y		; 33 F0
	brk $00.b		; 00 00
	jsr ($0AF8.w,X)		; FC F8 0A
	jmp ($8829.w)		; 6C 29 88
	php		; 08
	phx		; DA
	eor ($96.b)		; 52 96
.ACCU 16
	rep #$6D		; C2 6D
	inc $8EF1.w,X		; FE F1 8E
	asl A		; 0A
	lsr $7969.w,X		; 5E 69 79
	beq  64.b		; F0 40
	sed		; F8
	pla		; 68
	sbc $8120.w,X		; FD 20 81
	pea $C01F.w		; F4 1F C0
	plx		; FA
	nop		; EA
	plx		; FA
	sbc $F1E4FA.l		; EF FA E4 F1
	lda $BC81.w,X		; BD 81 BC
	jmp.w [$565F]		; DC 5F 56
	sei		; 78
	bit #$273A.w		; 89 3A 27
	lda $29.b		; A5 29
	beq -11.b		; F0 F5
	plx		; FA
	sbc $C0FE80.l,X		; FF 80 FE C0
	lda ($7F.b),Y		; B1 7F
	eor $49529C.l,X		; 5F 9C 52 49
	sbc $EDBF.w		; ED BF ED
	xce		; FB
	sbc #$B480.w		; E9 80 B4
	bra -128.b		; 80 80
	sbc ($21.b,X)		; E1 21
	sty $4B.b		; 84 4B
	sta $BB.b		; 85 BB
	rol A		; 2A
	adc $B280.w,Y		; 79 80 B2
	mvp $00,$1E		; 44 1E 00
	cli		; 58
	rti		; 40

	lda ($1B.b),Y		; B1 1B
	ldx $A04F.w,Y		; BE 4F A0
	cpx #$7CFC.w		; E0 FC 7C
	mvp $39,$D7		; 44 D7 39
	jmp $E030.w		; 4C 30 E0
	jsr ($FFFF.w,X)		; FC FF FF
	mvn $67,$BA		; 54 BA 67
	sed		; F8
	sbc $F8C78C.l,X		; FF 8C C7 F8
	lda ($85.b)		; B2 85
	and $4B0E.w		; 2D 0E 4B
	jmp ($6756.w,X)		; 7C 56 67
	and $04.b		; 25 04
	sta [$3E.b]		; 87 3E
	pha		; 48
	jsr ($00F8.w,X)		; FC F8 00
	bvs -77.b		; 70 B3
	sbc ($FF.b),Y		; F1 FF
	brk $98.b		; 00 98
	ldy #$0EF2.w		; A0 F2 0E
	cmp ($30.b,S),Y		; D3 30
	inc $0E.b,X		; F6 0E
	eor $F0.b,X		; 55 F0
	tax		; AA
	adc ($1F.b,X)		; 61 1F
	bra -31.b		; 80 E1
	clc		; 18
	ldx $C961.w		; AE 61 C9
	sec		; 38
	lsr $A448.w		; 4E 48 A4
	sbc $8A9CFC.l,X		; FF FC 9C 8A
	jsr ($0E92.w,X)		; FC 92 0E
	and $F0.b,X		; 35 F0
	sta $0D.b,X		; 95 0D
	ror A		; 6A
	sta [$7F.b]		; 87 7F
	cmp $A9.b,X		; D5 A9
	lsr $26.b		; 46 26
	and #$845A.w		; 29 5A 84
	adc #$F870.w		; 69 70 F8
	.db $82, $B6, $C4		; 82 B6 C4
	and ($19.b)		; 32 19
	ror $FFE1.w,X		; 7E E1 FF
	sbc $9BB3A2.l,X		; FF A2 B3 9B
	asl $0189.w,X		; 1E 89 01
	ora ($0D.b,X)		; 01 0D
	mvn $2E,$A6		; 54 A6 2E
	phd		; 0B
	tsb $7E08.w		; 0C 08 7E
	cli		; 58
	asl $FB.b		; 06 FB
	jmp $D1E6.w		; 4C E6 D1
	ror $AA.b,X		; 76 AA
	rol $99.b		; 26 99
	pea $B9FA.w		; F4 FA B9
	sta [$00.b]		; 87 00
	ldy $3FFF.w		; AC FF 3F
	sbc $22.b,S		; E3 22
	dec $D255.w,X		; DE 55 D2
	rol A		; 2A
	adc ($D7.b,X)		; 61 D7
	wai		; CB
	eor $892345.l,X		; 5F 45 23 89
	adc [$71.b],Y		; 77 71
	jmp $05AC88.l		; 5C 88 AC 05
	brk $2F.b		; 00 2F
	ldx $5039.w		; AE 39 50
	tsx		; BA
	cmp $8ED87F.l,X		; DF 7F D8 8E
	brk $5D.b		; 00 5D
	plp		; 28
	ply		; 7A
.ACCU 8
.INDEX 8
	sep #$B9		; E2 B9
	jmp ($F228.w,X)		; 7C 28 F2
	tax		; AA
	adc $D329.w,X		; 7D 29 D3
	plb		; AB
	brk $88.b		; 00 88
	inc $FECE.w,X		; FE CE FE
	stx $00.b		; 86 00
	inc $DAFC.w,X		; FE FC DA
	plx		; FA
	mvn $0A,$CA		; 54 CA 0A
	ora ($A5.b,X)		; 01 A5
	sta $0B.b		; 85 0B
	sbc $4209B7.l,X		; FF B7 09 42
	eor ($95.b,X)		; 41 95
	sta $6A.b,X		; 95 6A
	adc #$FC.b		; 69 FC
	sbc $FCB5.w,X		; FD B5 FC
	inc $1141.w,X		; FE 41 11
	inc $F5.b,X		; F6 F5
	sbc $6A0943.l,X		; FF 43 09 6A
	rol A		; 2A
	eor ($14.b,X)		; 41 14
.ACCU 16
.INDEX 16
	rep #$F7		; C2 F7
	sta $7C8379.l		; 8F 79 83 7C
	sta [$FA.b]		; 87 FA
	ora ($7D.b,X)		; 01 7D
	stx $55.b		; 86 55
	sbc $E805FE.l,X		; FF FE 05 E8
	sbc ($CA.b)		; F2 CA
	.db $82, $FC, $FC		; 82 FC FC
	sbc $FF7AFC.l,X		; FF FC 7A FF
	cpy $03FD.w		; CC FD 03
	inc $F49F.w,X		; FE 9F F4
	lda $CC.b,X		; B5 CC
	phk		; 4B
	ldx $73.b,Y		; B6 73
	stx $4848.w		; 8E 48 48
	ldy $B8DC.w,X		; BC DC B8
	ora #$1905.w		; 09 05 19
	sbc ($FF.b,X)		; E1 FF
	asl A		; 0A
	ora ($FC.b,S),Y		; 13 FC
	ora $26.b,X		; 15 26
	ora $10073F.l,X		; 1F 3F 07 10
	phd		; 0B
	clc		; 18
	asl $10.b		; 06 10
	sta [$FA.b]		; 87 FA
	ora ($1E.b,X)		; 01 1E
	ora $1C.b,S		; 03 1C
	jsr ($0707.w,X)		; FC 07 07
	cmp #$E122.w		; C9 22 E1
	bpl   8.b		; 10 08
	ora [$87.b],Y		; 17 87
.INDEX 16
	rep #$9B		; C2 9B
	sbc $0C95.w,Y		; F9 95 0C
	jsr ($060A.w,X)		; FC 0A 06
	eor ($86.b),Y		; 51 86
	ora $E2B0.w		; 0D B0 E2
	sbc ($86.b),Y		; F1 86
	sed		; F8
	ora [$1A.b]		; 07 1A
	ply		; 7A
	cld		; D8
	adc $EE.b,S		; 63 EE
	ora ($FF.b,X)		; 01 FF
	sbc $AFFAFE.l,X		; FF FE FA AF
	jmp.w [$FF8F]		; DC 8F FF
	ldy #$2FF9.w		; A0 F9 2F
	cmp $A2F588.l,X		; DF 88 F5 A2
	inc $DCAB.w,X		; FE AB DC
	and $2F8BFC.l,X		; 3F FC 8B 2F
	bne  15.b		; D0 0F
	beq  32.b		; F0 20
	cmp $7708FA.l,X		; DF FA 08 77
	and $DC.b,S		; 23 DC
	pld		; 2B
	eor $0BD47F.l,X		; 5F 7F D4 0B
	pea $FF24.w		; F4 24 FF
	lsr A		; 4A
	ora ($B1.b,X)		; 01 B1
	sta [$22.b]		; 87 22
	.db $42, $FF		; 42 FF
	bra  91.b		; 80 5B
	brk $BD.b		; 00 BD
	sbc #$020F.w		; E9 0F 02
	lsr $C3FC.w,X		; 5E FC C3
	bit $7E89.w,X		; 3C 89 7E
	dec A		; 3A
	cpy $5C.b		; C4 5C
	sbc $00C81F.l,X		; FF 1F C8 00
	tax		; AA
	cpy $FC.b		; C4 FC
	cop $2E.b		; 02 2E
	bne 122.b		; D0 7A
	sty $AA.b		; 84 AA
	mvn $09,$F6		; 54 F6 09
	stx $27.b		; 86 27
	inc $F906.w,X		; FE 06 F9
	jsr ($E916.w,X)		; FC 16 E9
	dec $29.b,X		; D6 29
	inc $21FF.w,X		; FE FF 21
	cpy #$1DF8.w		; C0 F8 1D
	sta ($7E.b,X)		; 81 7E
	ora $0E10.w		; 0D 10 0E
	bpl   5.b		; 10 05
	ora ($48.b)		; 12 48
	tsb $8004.w		; 0C 04 80
	plx		; FA
	ora $F2F6.w,Y		; 19 F6 F2
	cmp [$01.b]		; C7 01
	rts		; 60

	asl A		; 0A
	ora $FE.b,X		; 15 FE
	pha		; 48
	sed		; F8
	phd		; 0B
	trb $80.b		; 14 80
	sbc $6BFAF8.l,X		; FF F8 FA 6B
	bcc   7.b		; 90 07
	rts		; 60

	txs		; 9A
	pea $0096.w		; F4 96 00
	ora [$F8.b]		; 07 F8
	adc $00.b,S		; 63 00
	txs		; 9A
	adc #$F2F6.w		; 69 F6 F2
	sta $6566.w,Y		; 99 66 65
	txs		; 9A
	sta [$01.b]		; 87 01
	sbc $0A.b,X		; F5 0A
	sta ($6E.b),Y		; 91 6E
	sta $926D.w,Y		; 99 6D 92
	inc $30.b,X		; F6 30
	cpy #$4AF2.w		; C0 F2 4A
	lda #$FA4A.w		; A9 4A FA
	dec $BF.b,X		; D6 BF
	beq -127.b		; F0 81
	sbc $AFF8A8.l,X		; FF A8 F8 AF
	cmp $FC4A80.l,X		; DF 80 4A FC
	plx		; FA
	ora $FC.b,S		; 03 FC
	plp		; 28
	cpx #$D73F.w		; E0 3F D7
	dec A		; 3A
	lsr $49.b,X		; 56 49
	sbc $80EF10.l		; EF 10 EF 80
	lda $DB01.w,X		; BD 01 DB
	.db $42, $C6		; 42 C6
	adc ($86.b,X)		; 61 86
	phy		; 5A
	sty $7E9D.w		; 8C 9D 7E
	inc $7E99.w,X		; FE 99 7E
	beq  -1.b		; F0 FF
	stx $7A.b		; 86 7A
	inc $D22C.w,X		; FE 2C D2
	ror $BC80.w,X		; 7E 80 BC
	.db $42, $2A		; 42 2A
	pei ($3E.b)		; D4 3E
	cpy #$0907.w		; C0 07 09
	plx		; FA
	tsb $0C.b		; 04 0C
	sbc ($36.b)		; F2 36
	lsr A		; 4A
	jsr ($E8FE.w,X)		; FC FE E8
	sbc [$3E.b],Y		; F7 3E
	rol $05.b,X		; 36 05
	xce		; FB
	php		; 08
	sbc [$90.b],Y		; F7 90
	lda $F8C0.w		; AD C0 F8
	ora #$7E85.w		; 09 85 7E
	ldx #$8DC7.w		; A2 C7 8D
	cpy #$0CF8.w		; C0 F8 0C
	.db $42, $8A		; 42 8A
	sbc ($0D.b),Y		; F1 0D
	ora ($04.b),Y		; 11 04
	sec		; 38
	bcc   0.b		; 90 00
	ora $1838.w		; 0D 38 18
	lsr $48.b		; 46 48
	brk $E8.b		; 00 E8
	mvp $F6,$FA		; 44 FA F6
	rol $F7.b,X		; 36 F7
	brk $BF.b		; 00 BF
	and $06916A.l,X		; 3F 6A 91 06
	rts		; 60

	txy		; 9B
	pla		; 68
	.db $62, $90, $A1		; 62 90 A1
	txy		; 9B
	pea $6106.w		; F4 06 61
	ora ($FE.b,X)		; 01 FE
	ora ($00.b,X)		; 01 00
	rol $4044.w,X		; 3E 44 40
	bit $6080.w,X		; 3C 80 60
	sec		; 38
	inc $80.b,X		; F6 80
	sbc $46.b,X		; F5 46
	bra -16.b		; 80 F0
	ora $0C2BF7.l		; 0F F7 2B 0C
	bra -16.b		; 80 F0
	ora ($10.b,S),Y		; 13 10
	.db $82, $91, $C0		; 82 91 C0
	beq  11.b		; F0 0B
	ror $0D.b,X		; 76 0D
	bpl  -1.b		; 10 FF
	bmi -126.b		; 30 82
	asl $11.b		; 06 11
	ora [$10.b]		; 07 10
	ora ($30.b,S),Y		; 13 30
	ora $18FC20.l		; 0F 20 FC 18
	sei		; 78
	and $880C.w,X		; 3D 0C 88
	ora $1F0010.l		; 0F 10 00 1F
	sbc ($00.b)		; F2 00
	and $FC50FF.l,X		; 3F FF 50 FC
	ora [$40.b]		; 07 40
	rtl		; 6B

	bcc -10.b		; 90 F6
	brk $06.b		; 00 06
	sed		; F8
	plp		; 28
	jsr ($4292.w,X)		; FC 92 42
	ora ($04.b,X)		; 01 04
	trb $C9.b		; 14 C9
	.db $82, $7E, $BE		; 82 7E BE
	sed		; F8
	ora #$FFE8.w		; 09 E8 FF
	rol $C0.b,X		; 36 C0
	sbc [$C1.b],Y		; F7 C1
	adc $EFF868.l,X		; 7F 68 F8 EF
	sta $F7C0C0.l,X		; 9F C0 C0 F7
	jmp ($F1C0.w,X)		; 7C C0 F1
	bvc  12.b		; 50 0C
	asl $21BC.w		; 0E BC 21
	cmp $F0C072.l,X		; DF 72 C0 F0
	phd		; 0B
	lda $FE7E.w,X		; BD 7E FE
	.db $82, $FE, $00		; 82 FE 00
	sed		; F8
	phd		; 0B
	ora ($FB.b,X)		; 01 FB
	tsb $FB.b		; 04 FB
	dey		; 88
	lda $E0.b		; A5 E0
	beq  11.b		; F0 0B
	inc $FFF0.w,X		; FE F0 FF
	cpx #$0BF8.w		; E0 F8 0B
	sbc $0109.w,X		; FD 09 01
	bpl   9.b		; 10 09
	and $15.b,X		; 35 15
	plp		; 28
	ora $1039.w,Y		; 19 39 10
	ora $ED.b,X		; 15 ED
	and $900E0A.l,X		; 3F 0A 0E 90
	rep #$0E		; C2 0E
	lda #$2049.w		; A9 49 20
	ora $22.b,X		; 15 22
	asl $0E21.w,X		; 1E 21 0E
	ora ($00.b),Y		; 11 00
	jsr ($F4FF.w,X)		; FC FF F4
	brk $CF.b		; 00 CF
	bra  44.b		; 80 2C
	mvp $A1,$B8		; 44 B8 A1
	jmp.w [$CA70]		; DC 70 CA
	dec $B8.b,X		; D6 B8
	bit $F0.b		; 24 F0
	sbc $0F4AE8.l,X		; FF E8 4A 0F
	bra  72.b		; 80 48
	cpy #$652B.w		; C0 2B 65
	inc A		; 1A
	ldx $09.b,Y		; B6 09
	lda [$08.b],Y		; B7 08
	cmp ($FE.b,X)		; C1 FE
	eor $8A.b,X		; 55 8A
	inc $8CF0.w,X		; FE F0 8C
	cop $53.b		; 02 53
	cmp #$091D.w		; C9 1D 09
	adc [$25.b],Y		; 77 25
	phy		; 5A
	plx		; FA
	sbc $AC951A.l,X		; FF 1A 95 AC
	tad		; 5B
	rep #$0E		; C2 0E
	bpl  58.b		; 10 3A
	rti		; 40

	adc $80.b		; 65 80
	ror $2A26.w,X		; 7E 26 2A
	ldx $0D.b,Y		; B6 0D
	sbc $DA45FF.l,X		; FF FF 45 DA
	sep #$8E		; E2 8E
	.db $82, $2F, $43		; 82 2F 43
	txa		; 8A
	asl $CA.b		; 06 CA
	stx $53.b		; 86 53
	dey		; 88
	cmp ($08.b,S),Y		; D3 08
	sbc $FF.b,S		; E3 FF
	cpx #$2718.w		; E0 18 27
	clc		; 18
	eor [$28.b]		; 47 28
	cmp [$28.b]		; C7 28
	sta [$48.b]		; 87 48
	inc $B0F0.w,X		; FE F0 B0
	ora #$EF0A.w		; 09 0A EF
	sbc [$03.b],Y		; F7 03
	phy		; 5A
	ora ($99.b,S),Y		; 13 99
	jmp ($F8F0.w,X)		; 7C F0 F8
	ora #$0C03.w		; 09 03 0C
	ora $D76760.l,X		; 1F 60 67 D7
	lda $0D.b,S		; A3 0D
	asl $FF.b		; 06 FF
	sbc #$122F.w		; E9 2F 12
	sbc $4AE82D.l,X		; FF 2D E8 4A
	bit $13.b,X		; 34 13
	tyx		; BB
	lda $07F0.w,X		; BD F0 07
	php		; 08
	sbc $201DFF.l,X		; FF FF 1D 20
	and ($C0.b)		; 32 C0
	sbc [$00.b],Y		; F7 00
	lda $42A540.l		; AF 40 A5 42
	phd		; 0B
	ora $AD.b,S		; 03 AD
	bmi  97.b		; 30 61
	pld		; 2B
	sta [$87.b]		; 87 87
	cmp $D6.b,S		; C3 D6
	and $88.b,S		; 23 88
	lda $BA.b		; A5 BA
	ldx $380A.w		; AE 0A 38
	dex		; CA
	sbc $C23DFF.l		; EF FF 3D C2
	phx		; DA
	tsb $35.b		; 04 35
	rol $41.b		; 26 41
	cmp $41BE20.l,X		; DF 20 BE 41
	sec		; 38
	cmp [$AB.b]		; C7 AB
	and #$7FF3.w		; 29 F3 7F
	sbc $4CDED6.l,X		; FF D6 DE 4C
	mvn $68,$30		; 54 30 68
	cpx #$82A0.w		; E0 A0 82
	lda ($66.b,X)		; A1 66
	sei		; 78
	cmp [$00.b],Y		; D7 00
	rol $7F01.w		; 2E 01 7F
	sed		; F8
	ldy $F002.w,X		; BC 02 F0
	tsb $18E0.w		; 0C E0 18
	bra  96.b		; 80 60
	cop $7F.b		; 02 7F
	bra -72.b		; 80 B8
	brk $E1.b		; 00 E1
	sta [$36.b]		; 87 36
	ora ($F7.b),Y		; 11 F7
	dex		; CA
	rti		; 40

	lda $00.b,X		; B5 00
	cmp [$3C.b],Y		; D7 3C
	sta ($D0.b,S),Y		; 93 D0
	ora $64.b,S		; 03 64
	lda $BF.b,S		; A3 BF
	ror $F1.b		; 66 F1
	adc $E6803F.l,X		; 7F 3F 80 E6
	inx		; E8
	cmp $FE.b,X		; D5 FE
	dec $BEF3.w,X		; DE F3 BE
	ldy #$070A.w		; A0 0A 07
	cop $0E.b		; 02 0E
	sty $EF5B.w		; 8C 5B EF
	inc $6124.w,X		; FE 24 61
	inc $08EF.w,X		; FE EF 08
	bne -108.b		; D0 94
	ora $01.b		; 05 01
	bit $0A08.w		; 2C 08 0A
	eor ($A9.b,X)		; 41 A9
	ora $9896.w,Y		; 19 96 98
	.db $42, $4C		; 42 4C
	ora ($C3.b,X)		; 01 C3
	sbc $300F06.l,X		; FF 06 0F 30
	cpy #$06F9.w		; C0 F9 06
	sta $AF2960.l,X		; 9F 60 29 AF
	lda $CC.b		; A5 CC
	plx		; FA
	sbc $496C7F.l,X		; FF 7F 6C 49
	bra -86.b		; 80 AA
	clc		; 18
	sta ($9C.b,S),Y		; 93 9C
	ror $80.b,X		; 76 80
	phx		; DA
	asl $DF.b		; 06 DF
	brk $EC.b		; 00 EC
	ora ($6F.b,S),Y		; 13 6F
	sbc [$FF.b],Y		; F7 FF
	ldy $F839.w		; AC 39 F8
	ora [$38.b]		; 07 38
	inc A		; 1A
	inc $4201.w,X		; FE 01 42
	clc		; 18
	lda #$9630.w		; A9 30 96
	ora ($59.b,X)		; 01 59
	cmp ($FF.b,X)		; C1 FF
	eor $E0DB.w,X		; 5D DB E0
	adc $DB00.w		; 6D 00 DB
	sec		; 38
	jsr ($1800.w,X)		; FC 00 18
	sbc [$AC.b]		; E7 AC
	and ($00.b),Y		; 31 00
	cmp ($58.b,X)		; C1 58
	ora ($FF.b,S),Y		; 13 FF
	adc ($12.b),Y		; 71 12
	eor $D9FF.w,Y		; 59 FF D9
	cpx #$0126.w		; E0 26 01
	cld		; D8
	cpy #$E29B.w		; C0 9B E2
	and ($F0.b,S),Y		; 33 F0
	tay		; A8
	bit $E2.b,X		; 34 E2
	cmp $CCA9B0.l		; CF B0 A9 CC
	asl A		; 0A
	plx		; FA
	beq  15.b		; F0 0F
	sta $DF.b		; 85 DF
	rts		; 60

	eor $2C.b		; 45 2C
	cpx #$F8C6.w		; E0 C6 F8
	tad		; 5B
	brk $87.b		; 00 87
	inc $91.b		; E6 91
	plb		; AB
	sbc $9CF8E7.l,X		; FF E7 F8 9C
	ror $D1.b		; 66 D1
	rol $FC79.w		; 2E 79 FC
	and [$FC.b],Y		; 37 FC
	ora $99.b,S		; 03 99
	sei		; 78
	and ($3E.b),Y		; 31 3E
	phx		; DA
	adc $B00004.l,X		; 7F 04 00 B0
	ora $1C8087.l		; 0F 87 80 1C
	ora $ACE6E3.l,X		; 1F E3 E6 AC
	cop $98.b		; 02 98
	ldy #$21FE.w		; A0 FE 21
	ora $7FFEE0.l,X		; 1F E0 FE 7F
	jmp.w [$0E1A]		; DC 1A 0E
	ora $1B06.w,X		; 1D 06 1B
	tsb $0E12.w		; 0C 12 0E
	asl $0D08.w,X		; 1E 08 0D
	asl $0A.b		; 06 0A
	asl $F8.b		; 06 F8
	adc ($8F.b,X)		; 61 8F
	asl $0711.w		; 0E 11 07
	clc		; 18
	ora $08FA10.l		; 0F 10 FA 08
	ora [$18.b],Y		; 17 18
	inc $0624.w,X		; FE 24 06
	ora #$6B0D.w		; 09 0D 6B
	bra -75.b		; 80 B5
	tsb $C05E.w		; 0C 5E C0
	sbc $0CEB09.l,X		; FF 09 EB 0C
	lda $CC.b,X		; B5 CC
	ldx $EA60.w		; AE 60 EA
	ora $55.b,S		; 03 55
	adc ($AC.b),Y		; 71 AC
	.db $42, $F8		; 42 F8
	bra  15.b		; 80 0F
	stz $03.b,X		; 74 03
	tya		; 98
	ora $FC.b,S		; 03 FC
	adc ($8E.b),Y		; 71 8E
	ora $C05FFE.l,X		; 1F FE 5F C0
	sbc #$BA0E.w		; E9 0E BA
	dec $FA.b		; C6 FA
	pea $EA07.w		; F4 07 EA
	sbc $55.b,S		; E3 55
	lda ($09.b),Y		; B1 09
	cpx #$58AA.w		; E0 AA 58
	cpx $2A.b		; E4 2A
	plx		; FA
	ora [$F8.b]		; 07 F8
	sta [$E9.b]		; 87 E9
	sbc $1C.b,S		; E3 1C
	sbc ($0E.b),Y		; F1 0E
	sta ($27.b)		; 92 27
	sec		; 38
	rol A		; 2A
	rol A		; 2A
	ora $207F.w		; 0D 7F 20
	lda ($66.b),Y		; B1 66
	stx $7965.w		; 8E 65 79
	sta ($26.b)		; 92 26
	cmp ($82.b,S),Y		; D3 82
	rol A		; 2A
	php		; 08
	ora [$DC.b]		; 07 DC
	sbc [$17.b]		; E7 17
	clc		; 18
	sbc ($0C.b,S),Y		; F3 0C
	inc $7FFA.w,X		; FE FA 7F
	rol A		; 2A
	eor $1B.b,X		; 55 1B
	lda ($9D.b)		; B2 9D
	adc $CA.b		; 65 CA
	sta $724E.w,Y		; 99 4E 72
	lda $89.b		; A5 89
	ror $82.b		; 66 82
	ora [$2A.b]		; 07 2A
	ror $9F.b		; 66 9F
	rts		; 60

	cmp $82FE30.l		; CF 30 FE 82
	sbc $7290DC.l,X		; FF DC 90 72
	bit $3769.w,X		; 3C 69 37
	dex		; CA
	sta $B4.b,X		; 95 B4
	tas		; 1B
	ora $CE6106.l,X		; 1F 06 61 CE
	txs		; 9A
	eor $6ABD.w		; 4D BD 6A
.ACCU 8
.INDEX 8
	sep #$3E		; E2 3E
	cmp ($BC.b,X)		; C1 BC
	beq  -1.b		; F0 FF
	cpx #$DE.b		; E0 DE
	jsr ($10EF.w,X)		; FC EF 10
	txy		; 9B
	asl $7EC3.w,X		; 1E C3 7E
	lda $0A.b,X		; B5 0A
	sta $FF26.w,Y		; 99 26 FF
	ora [$4B.b]		; 07 4B
	bit $62.b,X		; 34 62
	bit $B2EC.w,X		; 3C EC B2
	wai		; CB
	sta $1E.b,X		; 95 1E
	sbc ($7E.b,X)		; E1 7E
	sta ($DE.b,X)		; 81 DE
	sta [$5A.b]		; 87 5A
	inc $BEFC.w,X		; FE FC BE
	eor ($DA.b,X)		; 41 DA
	tsb $C7.b		; 04 C7
	and ($08.b),Y		; 31 08
	tya		; 98
	tsb $4906.w		; 0C 06 49
	tda		; 7B
	sbc $FFFFBF.l,X		; FF BF FF FF
	rol A		; 2A
	cld		; D8
	ora $C4E4.w,Y		; 19 E4 C4
	dec A		; 3A
	rol A		; 2A
	ora $17.b,X		; 15 17
	php		; 08
	ora #$06.b		; 09 06
	tsb $C2.b		; 04 C2
	ora $8069E1.l,X		; 1F E1 69 80
	cmp ($C6.b)		; D2 C6
	ora $100F20.l,X		; 1F 20 0F 10
	ora [$08.b]		; 07 08
	ora $FE.b,S		; 03 FE
	sbc $9502C3.l,X		; FF C3 02 95
	cpx $566B.w		; EC 6B 56
	sty $7532.w		; 8C 32 75
	pld		; 2B
	sta $9F.b,S		; 83 9F
	adc [$D0.b],Y		; 77 D0
	tsx		; BA
	ora $D1.b,S		; 03 D1
	sta $CD.b,S		; 83 CD
	ora ($E2.b),Y		; 11 E2
	ldy #$7E.b		; A0 7E
	bne  -1.b		; D0 FF
	sbc $7C832F.l		; EF 2F 83 7C
	asl $DDE0.w,X		; 1E E0 DD
	tay		; A8
	jsl $2DD659.l		; 22 59 D6 2D
	txy		; 9B
	sei		; 78
	stz $35D1.w		; 9C D1 35
	sbc $08AD07.l,X		; FF 07 AD 08
	eor ($52.b,X)		; 41 52
	sbc $7906.w,Y		; F9 06 79
	stx $7D.b		; 86 7D
	.db $82, $78, $87		; 82 78 87
	cli		; 58
	inx		; E8
	ora $F4F7DC.l		; 0F DC F7 F4
	lda ($AF.b,X)		; A1 AF
	mvp $B3,$58		; 44 58 B3
	lda $FF70.w,Y		; B9 70 FF
	mvp $4C,$E2		; 44 E2 4C
	adc ($5B.b)		; 72 5B
	eor ($A4.b,X)		; 41 A4
	sta ($9C.b)		; 92 9C
	jmp ($170A.w,X)		; 7C 0A 17
	inc $7F1C.w		; EE 1C 7F
	bra -66.b		; 80 BE
	ldy #$C1.b		; A0 C1
	lda ($52.b)		; B2 52
	lda $B4.b		; A5 B4
	stx $21.b,Y		; 96 21
	stz $5F.b		; 64 5F
	tya		; 98
	ply		; 7A
	stp		; DB
	ora ($26.b,X)		; 01 26
	bit $8E.b,X		; 34 8E
.ACCU 8
.INDEX 8
	sep #$B9		; E2 B9
	cpx #$E4.b		; E0 E4
	tas		; 1B
	ldy #$30.b		; A0 30
	sep #$CE		; E2 CE
	stp		; DB
.ACCU 8
	sep #$E9		; E2 E9
	inc $57.b,X		; F6 57
	bit #$FC.b		; 89 FC
	ora $99DA.w,X		; 1D DA 99
	asl $48A4.w,X		; 1E A4 48
	phy		; 5A
	ora ($A5.b)		; 12 A5
	bcs -95.b		; B0 A1
	stz $841F.w		; 9C 1F 84
	sta ($88.b)		; 92 88
	cpx #$F2.b		; E0 F2
	cld		; D8
	sbc $D9E4.w		; ED E4 D9
	inc $FE.b,X		; F6 FE
	sbc $0E30D1.l,X		; FF D1 30 0E
	cpy #$30.b		; C0 30
	bpl -118.b		; 10 8A
	cpx #$25.b		; E0 25
	sta $AB.b,S		; 83 AB
	cli		; 58
	ror A		; 6A
	lda $98.b,S		; A3 98
	brk $AE.b		; 00 AE
	tsb $BB15.w		; 0C 15 BB
	adc $4B2559.l,X		; 7F 59 25 4B
	tay		; A8
	cpx $1CE3.w		; EC E3 1C
	jmp ($1EF2.w,X)		; 7C F2 1E
	rts		; 60

	ora $789970.l		; 0F 70 99 78
	ror $5FFC.w,X		; 7E FC 5F
	ldy #$12.b		; A0 12
	cpx $F0F0.w		; EC F0 F0
	cmp $D3.b,X		; D5 D3
	nop		; EA
	pla		; 68
	txs		; 9A
	sbc $F262.w,X		; FD 62 F2
	.db $82, $FB, $A0		; 82 FB A0
	jmp $96002F.l		; 5C 2F 00 96
	inc $A3.b,X		; F6 A3
	dec A		; 3A
	and $FF25.w,X		; 3D 25 FF
	sta ($D2.b,S),Y		; 93 D2
	phy		; 5A
	lda ($CF.b,X)		; A1 CF
	cpy #$71.b		; C0 71
	php		; 08
	sta ($BA.b,X)		; 81 BA
	cmp ($BA.b)		; D2 BA
	plp		; 28
	bmi  -4.b		; 30 FC
	jmp ($FBEC.w,X)		; 7C EC FB
	txa		; 8A
	adc $72.b,X		; 75 72
	trb $CB1F.w		; 1C 1F CB
	bit $5A.b,X		; 34 5A
	sbc $81C9.w,X		; FD C9 81
	lda $9DE9A6.l		; AF A6 E9 9D
	and ($36.b)		; 32 36
	tay		; A8
	dec A		; 3A
	ora ($C4.b,S),Y		; 13 C4
	.db $82, $EC, $E1		; 82 EC E1
	sbc $B4C13E.l,X		; FF 3E C1 B4
	and ($CC.b,S),Y		; 33 CC
	lda $7A40.w		; AD 40 7A
	brk $97.b		; 00 97
	ora $7F001F.l		; 0F 1F 00 7F
	ora [$E6.b]		; 07 E6
	ora [$20.b]		; 07 20
	and $97FC8C.l,X		; 3F 8C FC 97
	stx $E2.b		; 86 E2
	inc $F807.w,X		; FE 07 F8
	clv		; B8
	sed		; F8
	sbc $798702.l,X		; FF 02 87 79
	ora $26.b,X		; 15 26
	asl A		; 0A
	asl $1303.w,X		; 1E 03 13
	ora $0E.b		; 05 0E
	cop $08.b		; 02 08
	sbc $07AB.w,X		; FD AB 07
	asl A		; 0A
	sbc ($B9.b),Y		; F1 B9
	ora $07.b		; 05 07
	sec		; 38
	ora $1C0310.l		; 0F 10 03 1C
	sty $F1.b		; 84 F1
	jsl $FFFF49.l		; 22 49 FF FF
	bra -15.b		; 80 F1
	asl $6A.b		; 06 6A
	ror $D5.b		; 66 D5
	eor ($9C.b,S),Y		; 53 9C
	inc $A7AA.w,X		; FE AA A7
	mvn $6A,$51		; 54 51 6A
	and $74.b		; 25 74
	adc [$EF.b]		; 67 EF
	sbc $9E4BD0.l,X		; FF D0 4B 9E
	ora ($AF.b,X)		; 01 AF
	inx		; E8
	sbc ($5E.b),Y		; F1 5E
	ora ($AC.b,X)		; 01 AC
	ora $DC.b,S		; 03 DC
	ora $9C.b,S		; 03 9C
	ora $B8.b,S		; 03 B8
	sbc $8C07FF.l,X		; FF FF 07 8C
	jmp ($0E88.w,X)		; 7C 88 0E
	bcc  53.b		; 90 35
	sbc ($02.b,X)		; E1 02
	dex		; CA
	and ($86.b,X)		; 21 86
	phd		; 0B
	lda $FD63.w,Y		; B9 63 FD
	ora $3256FF.l		; 0F FF 56 32
	cmp ($12.b,X)		; C1 12
	sbc ($A6.b,X)		; E1 A6
	ora ($ED.b)		; 12 ED
	and #$D6.b		; 29 D6
	pld		; 2B
	pei ($73.b)		; D4 73
	sbc $768CFF.l,X		; FF FF 8C 76
	bit #$B8.b		; 89 B8
	lsr $1853.w		; 4E 53 18
	cmp [$71.b]		; C7 71
	lda $7CE7.w,Y		; B9 E7 7C
	cmp $CE9FFE.l		; CF FE 9F CE
	sbc $E73FDF.l,X		; FF DF 3F E7
	adc $1831CE.l,X		; 7F CE 31 18
	sbc [$73.b]		; E7 73
	sta $DF1FE7.l		; 8F E7 1F DF
	and $73C6BF.l,X		; 3F BF C6 73
	and $0FF2C7.l,X		; 3F C7 F2 0F
	stx $EE7F.w		; 8E 7F EE
	sbc $76FEE6.l,X		; FF E6 FE 76
	inc $DF7A.w,X		; FE 7A DF
	and $FF0ABF.l,X		; 3F BF 0A FF
	sed		; F8
	asl A		; 0A
	cop $04.b		; 02 04
	ora [$32.b]		; 07 32
	and #$0F.b		; 29 0F
	ora ($0E.b,S),Y		; 13 0E
	ora $D1D9.w,Y		; 19 D9 D1
	cmp $0F.b,S		; C3 0F
	clc		; 18
	cop $11.b		; 02 11
	jmp $0B0A05.l		; 5C 05 0A 0B
	trb $08.b		; 14 08
	trb $40.b		; 14 40
	sbc $FC5AFC.l,X		; FF FC 5A FC
	sty $F3.b,X		; 94 F3
	ror $00F3.w		; 6E F3 00
	sbc ($FF.b),Y		; F1 FF
	sbc $589CFF.l,X		; FF FF 9C 58
	bne -89.b		; D0 A7
	sta $B876.w,Y		; 99 76 B8
	cmp $F0D1.w,Y		; D9 D1 F0
	ora $9D059A.l		; 0F 9A 05 9D
	cop $91.b		; 02 91
	ora $BC02FF.l		; 0F FF 02 BC
	ora $FD.b,S		; 03 FD
	cop $5E.b		; 02 5E
	lda $D902.w,X		; BD 02 D9
	bit $09E2.w		; 2C E2 09
	and $D9FFFF.l		; 2F FF FF D9
	and $F3.b		; 25 F3
	sta $F6D9B3.l		; 8F B3 D9 F6
	sta $C7B4E0.l		; 8F E0 B4 C7
	jmp ($4993.w)		; 6C 93 49
	lda [$5B.b],Y		; B7 5B
	sbc $33A7FF.l,X		; FF FF A7 33
	cmp $77CF37.l		; CF 37 CF 77
	sta $079F60.l		; 8F 60 9F 07
	sed		; F8
	sbc ($FF.b,S),Y		; F3 FF
	adc $1CFF.w,Y		; 79 FF 1C
	sbc $C4FF5B.l,X		; FF 5B FF C4
	sbc $B9E09B.l,X		; FF 9B E0 B9
	sta ($21.b,X)		; 81 21
	and $88E027.l,X		; 3F 27 E0 88
	inc $CFF8.w,X		; FE F8 CF
	lda #$F8.b		; A9 F8
	xce		; FB
	sec		; 38
	cpx #$1F.b		; E0 1F
	and ($FF.b)		; 32 FF
	lda ($FF.b)		; B2 FF
	sta ($F0.b)		; 92 F0
	sbc #$FA.b		; E9 FA
	ora $80.b,S		; 03 80
	sta [$2A.b],Y		; 97 2A
	sbc $E6809F.l,X		; FF 9F 80 E6
	inc $FF41.w,X		; FE 41 FF
	beq 124.b		; F0 7C
	ora ($3C.b),Y		; 11 3C
	sep #$C0		; E2 C0
	and ($C0.b),Y		; 31 C0
	jmp ($1007.w)		; 6C 07 10
	asl A		; 0A
	stz $0D.b		; 64 0D
.ACCU 16
.INDEX 16
	rep #$FA		; C2 FA
	stz $FC.b		; 64 FC
	asl $11.b		; 06 11
	pla		; 68
	inc $FEFC.w,X		; FE FC FE
	ldx $98.b		; A6 98
	eor $1FFF.w,X		; 5D FF 1F
	cmp ($EA.b),Y		; D1 EA
	bcs  21.b		; B0 15
	sta $B9B7.w,Y		; 99 B7 B9
	lsr $B4D0.w		; 4E D0 B4
	tya		; 98
	tad		; 5B
	sta ($FC.b),Y		; 91 FC
	ora ($22.b,X)		; 01 22
	jmp ($6468.w)		; 6C 68 64
	cmp $C05E.w,X		; DD 5E C0
	sbc $A2F8F4.l,X		; FF F4 F8 A2
	ldx $E0AF.w,Y		; BE AF E0
	ldx $C6.b,Y		; B6 C6
	lda $FFB6A0.l		; AF A0 B6 FF
	beq -57.b		; F0 C7
	lda $BE.b		; A5 BE
	lda $C0B8C0.l,X		; BF C0 B8 C0
	rol $6AC1.w,X		; 3E C1 6A
	asl $F9.b		; 06 F9
	jsr $FF0A.w		; 20 0A FF
	cmp $78F260.l,X		; DF 60 F2 78
	nop		; EA
	dey		; 88
	eor [$70.b],Y		; 57 70
	sbc $2A01.w,Y		; F9 01 2A
	and $EBF542.l,X		; 3F 42 F5 EB
	sbc $08AD.w,X		; FD AD 08
	sbc ($6A.b),Y		; F1 6A
	cmp ($FC.b),Y		; D1 FC
	bvs -113.b		; 70 8F
	ora ($FE.b,X)		; 01 FE
	jsr ($9EEC.w,X)		; FC EC 9E
	phx		; DA
	eor $C0C7F0.l,X		; 5F F0 C7 C0
	jmp ($EA95.w)		; 6C 95 EA
	pld		; 2B
	pei ($D5.b)		; D4 D5
	brk $2A.b		; 00 2A
	inc $00F5.w		; EE F5 00
	trb $061E.w		; 1C 1E 06
.ACCU 8
	sep #$20		; E2 20
	eor [$FF.b],Y		; 57 FF
	cpx #$6C01.w		; E0 01 6C
	brk $12.b		; 00 12
	stz $6A.b		; 64 6A
	jsr ($F6C0.w,X)		; FC C0 F6
	jmp ($2FF9.w)		; 6C F9 2F
	inc $FE60.w,X		; FE 60 FE
	ldy $B8.b,X		; B4 B8
	rol $B8.b		; 26 B8
	cmp $AF91.w,Y		; D9 91 AF
	lda ($C0.b),Y		; B1 C0
	inc $E8.b,X		; F6 E8
	lda [$64.b],Y		; B7 64
	.db $62, $FE, $C0		; 62 FE C0
	pea $BFFA.w		; F4 FA BF
	pei ($9F.b)		; D4 9F
	lda $B5C380.l,X		; BF 80 C3 B5
	cmp $FE.b,S		; C3 FE
	bra -63.b		; 80 C1
	stz $868B.w		; 9C 8B 86
	ora $C080E0.l,X		; 1F E0 80 C0
	phd		; 0B
	rol $54D2.w		; 2E D2 54
	tay		; A8
	plx		; FA
	tda		; 7B
	ora $AE04.w		; 0D 04 AE
	cpy #$BC20.w		; C0 20 BC
	ldx $FC50.w		; AE 50 FC
	bpl  33.b		; 10 21
	jsr $0BB8.w		; 20 B8 0B
	sbc $DE.b,X		; F5 DE
	plx		; FA
	ora $96C3C0.l,X		; 1F C0 C3 96
	sta ($BF.b,X)		; 81 BF
	bra -71.b		; 80 B9
	sta $10B880.l,X		; 9F 80 B8 10
	cpy #$04F4.w		; C0 F4 04
	ora ($03.b,S),Y		; 13 03
	bmi  -8.b		; 30 F8
	ora $0A74.w,Y		; 19 74 0A
	ora ($FE.b,S),Y		; 13 FE
	pla		; 68
	inc $1E01.w,X		; FE 01 1E
	brk $E4.b		; 00 E4
	and $C0581F.l,X		; 3F 1F 58 C0
	pea $0C02.w		; F4 02 0C
	jsr ($9D09.w,X)		; FC 09 9D
	sta ($95.b,S),Y		; 93 95
	tsb $03F8.w		; 0C F8 03
	inc $F4C0.w,X		; FE C0 F4
	jmp ($6893.w)		; 6C 93 68
	sta [$90.b],Y		; 97 90
	adc $87FCF4.l		; 6F F4 FC 87
	inc $1905.w,X		; FE 05 19
	ora $0916.w		; 0D 16 09
	ora ($0B.b)		; 12 0B
	ora ($09.b,S),Y		; 13 09
	dec $6F.b		; C6 6F
	sbc $0C11.w,X		; FD 11 0C
	ora ($09.b),Y		; 11 09
	trb $24.b		; 14 24
	lda ($18.b),Y		; B1 18
	and [$A9.b]		; 27 A9
	inc $9BFF.w,X		; FE FF 9B
	sbc $666B.w,Y		; F9 6B 66
	sbc $6429FF.l,X		; FF FF 29 64
	cmp $395C.w,X		; DD 5C 39
	stz $B8DD.w		; 9C DD B8
	and ($78.b,S),Y		; 33 78
	sbc #$72.b		; E9 72
	sed		; F8
	ora [$9E.b]		; 07 9E
	ora ($03.b,X)		; 01 03
	plx		; FA
	ldy #$801F.w		; A0 1F 80
	and $6DFE.w,Y		; 39 FE 6D
	adc #$BF.b		; 69 BF
	ora $007F15.l		; 0F 15 7F 00
	ora $0E17.w		; 0D 17 0E
	asl $0F.b,X		; 16 0F
	asl $0D.b,X		; 16 0D
	ora ($FC.b),Y		; 11 FC
	sed		; F8
	brk $02.b		; 00 02
	pea $86C0.w		; F4 C0 86
	inc $1FFF.w,X		; FE FF 1F
	plx		; FA
	inc $22B7.w,X		; FE B7 22
	eor ($26.b,S),Y		; 53 26
	cmp $AEC7A6.l		; CF A6 C7 AE
	phd		; 0B
	sed		; F8
	sta [$EE.b]		; 87 EE
	lsr $20.b,X		; 56 20
	sed		; F8
	eor [$E6.b],Y		; 57 E6
	lda [$F2.b]		; A7 F2
	adc $CA.b,S		; 63 CA
	clv		; B8
	ldx $8850.w,Y		; BE 50 88
	clv		; B8
	rti		; 40

	bcs  14.b		; B0 0E
	bra -72.b		; 80 B8
	bpl -32.b		; 10 E0
	eor ($79.b)		; 52 79
	ora ($F6.b,X)		; 01 F6
	sta $E0.b,X		; 95 E0
	ora ($DA.b,X)		; 01 DA
	cpx #$11A8.w		; E0 A8 11
	bra   0.b		; 80 00
	bpl  76.b		; 10 4C
	pha		; 48
	mvp $82,$40		; 44 40 82
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	ora ($34.b)		; 12 34
	dey		; 88
	jsr ($FEFE.w,X)		; FC FE FE
	bit $37.b,X		; 34 37
	sbc $ABE20F.l,X		; FF 0F E2 AB
	lda ($59.b)		; B2 59
	sbc ($F5.b)		; F2 F5
	clv		; B8
	lda $6DFC.w,Y		; B9 FC 6D
	stz $6469.w		; 9C 69 64
	bmi  56.b		; 30 38
	bit $8E.b,X		; 34 8E
	cpx #$4A1F.w		; E0 1F 4A
	ora $9F60F4.l,X		; 1F F4 60 9F
	ldy $ED.b,X		; B4 ED
	bit $01.b,X		; 34 01
	adc $808041.l		; 6F 41 80 80
	bcs  10.b		; B0 0A
	sta $B080.w		; 8D 80 B0
	asl $2090.w		; 0E 90 20
	lda ($01.b),Y		; B1 01
	ora $E1.b		; 05 E1
	lda $2080.w,X		; BD 80 20
	bcs  12.b		; B0 0C
	txa		; 8A
	cpx #$09F8.w		; E0 F8 09
	jsr ($50AF.w,X)		; FC AF 50
	sbc $EA15BD.l,X		; FF BD 15 EA
	.db $42, $FD		; 42 FD
	inx		; E8
	sbc $268F8D.l,X		; FF 8D 8F 26
	rol $66.b		; 26 66
	bne  11.b		; D0 0B
	bvs   0.b		; 70 00
	cmp $9BFF.w,Y		; D9 FF 9B
	sei		; 78
	eor $1454AB.l,X		; 5F AB 54 14
	xba		; EB
	jsr $87DF.w		; 20 DF 87
	sbc $EA7A6A.l,X		; FF 6A 7A EA
	rts		; 60

	ora $E185.w		; 0D 85 E1
	adc $56BEE2.l,X		; 7F E2 BE 56
	lda #$FE01.w		; A9 01 FE
	xba		; EB
	sbc $B31F1C.l,X		; FF 1C 1F B3
	and ($EF.b,S),Y		; 33 EF
	sbc $0BF8E2.l,X		; FF E2 F8 0B
	cpx #$CC00.w		; E0 00 CC
	cpy #$D5FD.w		; C0 FD D5
	rol A		; 2A
	rol A		; 2A
	cmp $54.b,X		; D5 54
	sbc $8CFFFB.l,X		; FF FB FF 8C
	inc $A1.b		; E6 A1
	sty $F8C0.w		; 8C C0 F8
	ora $E273.w		; 0D 73 E2
	sbc $0A.b,X		; F5 0A
	ldy $8E.b		; A4 8E
	adc $E1AA85.l		; 6F 85 AA E1
	eor ($52.b)		; 52 52
	ldy #$E2A0.w		; A0 A0 E2
	sed		; F8
	phd		; 0B
	lda $519C.w		; AD 9C 51
	bpl -54.b		; 10 CA
	rol $96FF.w,X		; 3E FF 96
	ora [$FF.b]		; 07 FF
	sbc $FCFCFF.l		; EF FF FC FC
	jsr $0C20.w		; 20 20 0C
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	asl A		; 0A
	ora $5E.b,S		; 03 5E
	txy		; 9B
	cpx #$AF.b		; E0 AF
	stz $A6.b		; 64 A6
	lda #$AF.b		; A9 AF
	eor ($51.b),Y		; 51 51
	ldx $A6.b		; A6 A6
	bra 100.b		; 80 64
	eor ($DF.b),Y		; 51 DF
	and ($FF.b,X)		; 21 FF
	jsr ($0050.w,X)		; FC 50 00
	ldx $5900.w		; AE 00 59
	sty $FD.b		; 84 FD
	lsr A		; 4A
	lda $FB.b,X		; B5 FB
	ldx $7E.b		; A6 7E
	eor $ACAC84.l		; 4F 84 AC AC
	asl $4D1E.w,X		; 1E 1E 4D
	cpy #$F8.b		; C0 F8
	asl A		; 0A
	eor ($00.b,S),Y		; 53 00
	sbc ($07.b,X)		; E1 07
	sec		; 38
	ror $00.b		; 66 00
	ldx $DE40.w,Y		; BE 40 DE
	.db $42, $CB		; 42 CB
	sbc $DD2A34.l,X		; FF 34 2A DD
	cmp ($21.b,S),Y		; D3 21
	sbc ($62.b,X)		; E1 62
	pha		; 48
	asl A		; 0A
	inc $1C1C.w,X		; FE 1C 1C
	ldx $D8.b		; A6 D8
	cmp #$30.b		; C9 30
	sty $95.b		; 84 95
	ora [$87.b]		; 07 87
	eor ($1E.b),Y		; 51 1E
	sbc $FF7E95.l		; EF 95 7E FF
	sbc $90.b,S		; E3 90
	php		; 08
	tsb $AB54.w		; 0C 54 AB
	ora ($01.b,X)		; 01 01
	eor ($9E.b)		; 52 9E
	adc #$47.b		; 69 47
	clv		; B8
	stz $29E1.w,X		; 9E E1 29
	inc $6B.b,X		; F6 6B
	sbc $FDFF5A.l,X		; FF 5A FF FD
	cpy $C099.w		; CC 99 C0
	sed		; F8
	ora $B451.w		; 0D 51 B4
	and #$F7.b		; 29 F7
	brk $9A.b		; 00 9A
	adc $FD.b		; 65 FD
	cop $6F.b		; 02 6F
	jsr ($12ED.w,X)		; FC ED 12
	and $A015C0.l,X		; 3F C0 15 A0
	sed		; F8
	bpl  21.b		; 10 15
	cpx #$B4.b		; E0 B4
	phk		; 4B
	ora $FFBFE0.l,X		; 1F E0 BF FF
	inc $09.b,X		; F6 09
	and $50D2.w		; 2D D2 50
	lda $F8E093.l		; AF 93 E0 F8
	bpl  91.b		; 10 5B
	brk $FA.b		; 00 FA
	ora $A2.b		; 05 A2
	eor $7F7FD5.l,X		; 5F D5 7F 7F
	and $B1916E.l,X		; 3F 6E 91 B1
	eor $2BFF06.l		; 4F 06 FF 2B
	cpx #$F8.b		; E0 F8
	bpl 101.b		; 10 65
	txs		; 9A
	sty $7F.b,X		; 94 7F
	tad		; 5B
	stp		; DB
	sed		; F8
	phd		; 0B
	tsb $4A.b		; 04 4A
	sbc $F2FFA5.l,X		; FF A5 FF F2
	sbc $5A98.w,X		; FD 98 5A
	and ($EF.b),Y		; 31 EF
	sbc $24DBFE.l,X		; FF FE DB 24
	ldx $59.b		; A6 59
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	sta $00FB60.l,X		; 9F 60 FB 00
	lda [$58.b]		; A7 58
	jsl $0FF1FD.l		; 22 FD F1 0F
	phx		; DA
	sbc $55FF8A.l,X		; FF 8A FF 55
	tax		; AA
	ldx $1A.b,Y		; B6 1A
	and ($FE.b)		; 32 FE
	sed		; F8
	ora $A699.w		; 0D 99 A6
	sbc ($FF.b),Y		; F1 FF
	xce		; FB
	eor $F4F55F.l,X		; 5F 5F F5 F4
	stx $80.b,Y		; 96 80
	adc ($61.b,X)		; 61 61
	asl $00.b		; 06 00
	ora ($EC.b),Y		; 11 EC
	and $F4.b,X		; 35 F4
	phd		; 0B
	bra -45.b		; 80 D3
	cmp $9E617F.l,X		; DF 7F 61 9E
	sbc ($BF.b,S),Y		; F3 BF
	lda $A4FBFB.l,X		; BF FB FB A4
	ldy $12.b		; A4 12
	ror $71.b,X		; 76 71
	phd		; 0B
	ora [$A4.b]		; 07 A4
	lda $49.b,S		; A3 49
	plp		; 28
	ora $FB14.w,Y		; 19 14 FB
	tsb $A4.b		; 04 A4
	rtl		; 6B

	cpx $E6FF.w		; EC FF E6
	ldy #$63.b		; A0 63
	sbc ($FF.b)		; F2 FF
	dex		; CA
	dex		; CA
	adc $65.b		; 65 65
	sta ($92.b)		; 92 92
	ldy #$00.b		; A0 00
	sbc $806361.l,X		; FF 61 63 80
	and #$D6.b		; 29 D6
	sbc $1A.b		; E5 1A
	ldy $CA40.w		; AC 40 CA
	and $6E.b,X		; 35 6E
	sta ($6D.b)		; 92 6D
	sbc $F89FFB.l,X		; FF FB 9F F8
	ora #$EA.b		; 09 EA
	sbc $E63F3F.l,X		; FF 3F 3F E6
	inc $09.b		; E6 09
	ora #$EA.b		; 09 EA
	inc $7E41.w,X		; FE 41 7E
	sta ($91.b,X)		; 81 91
	ror $0EFB.w,X		; 7E FB 0E
	rol $C079.w		; 2E 79 C0
	inc $19.b		; E6 19
	ora #$F6.b		; 09 F6
	cpx #$FE.b		; E0 FE
	jmp ($F108.w)		; 6C 08 F1
	sta $3F479F.l,X		; 9F 9F 47 3F
	clv		; B8
	eor [$A4.b]		; 47 A4
	ldy #$63.b		; A0 63
	brk $92.b		; 00 92
	jmp ($4A1A.w)		; 6C 1A 4A
	jsr ($B847.w,X)		; FC 47 B8
	cpx #$BF.b		; E0 BF
	ldx #$FC.b		; A2 FC
	inc $89E8.w,X		; FE E8 89
	pla		; 68
	sbc $F1.b,X		; F5 F1
	ora $B00C.w		; 0D 0C B0
	brk $4D.b		; 00 4D
	sbc $CB.b,S		; E3 CB
	adc ($81.b)		; 72 81
	stz $F160.w		; 9C 60 F1
	sta [$F1.b],Y		; 97 F1
	asl $DF0C.w		; 0E 0C DF
	dec A		; 3A
	ora $65FEFF.l		; 0F FF FE 65
	adc [$9B.b]		; 67 9B
	txy		; 9B
	ldx $2C2C.w,Y		; BE 2C 2C
	cmp ($00.b,S),Y		; D3 00
	bit $00.b		; 24 00
	inc A		; 1A
	and $CB01A0.l,X		; 3F A0 01 CB
	bit $67.b,X		; 34 67
	tya		; 98
	txy		; 9B
	stz $E9.b		; 64 E9
	sbc ($3F.b),Y		; F1 3F
	jsr ($FDE0.w,X)		; FC E0 FD
	sta $FF.b		; 85 FF
	rtl		; 6B

	adc $9EFEFE.l,X		; 7F FE FE 9E
	ora ($01.b,X)		; 01 01
	adc ($03.b,S),Y		; 73 03
	tya		; 98
	cpx #$E1.b		; E0 E1
	rts		; 60

	jmp L8081AA.l		; 5C AA 81 80
	inc $9E01.w,X		; FE 01 9E
	ora ($FE.b,X)		; 01 FE
	inc $030F.w,X		; FE 0F 03
	ora $FFA2.w		; 0D A2 FF
	ror $00.b		; 66 00
	trb $00.b		; 14 00
	cmp #$06.b		; C9 06
	iny		; C8
	sbc [$AD.b],Y		; F7 AD
	lda $EA5677.l		; AF 77 56 EA
	sei		; 78
	sei		; 78
	cpy #$8C.b		; C0 8C
	cmp ($FE.b),Y		; D1 FE
	inc $FF15.w,X		; FE 15 FF
	sta [$72.b]		; 87 72
	cmp #$24.b		; C9 24
	tas		; 1B
	sed		; F8
	ora $10EF92.l,X		; 1F 92 EF 10
	asl $E9.b,X		; 16 E9
	rti		; 40

	sbc $6DFFB3.l,X		; FF B3 FF 6D
	adc $3887FC.l,X		; 7F FC 87 38
	cmp $F0.b,S		; C3 F0
	phd		; 0B
	bra  -1.b		; 80 FF
	inc $FF.b,X		; F6 FF
	cmp $A220.w,Y		; D9 20 A2
	eor $FFAE.w,X		; 5D AE FF
	rol $6B94.w		; 2E 94 6B
	rtl		; 6B

	sbc $F01A1A.l,X		; FF 1A 1A F0
	beq  11.b		; F0 0B
	ora $40.b		; 05 40
	ora #$FF.b		; 09 FF
	sbc $D5.b		; E5 D5
	and ($F4.b),Y		; 31 F4
	sbc $8008FF.l,X		; FF FF 08 80
	sbc ($5A.b),Y		; F1 5A
	ldy #$86.b		; A0 86
	adc $FEA9.w,Y		; 79 A9 FE
	sty $97.b,X		; 94 97
	ldy $8D00.w		; AC 00 8D
	sbc $E00555.l,X		; FF 55 05 E0
	sed		; F8
	ora #$68.b		; 09 68
.ACCU 8
.INDEX 8
	sep #$FA		; E2 FA
	sbc $5700AF.l,X		; FF AF 00 57
	brk $21.b		; 00 21
	sbc $8A00C6.l,X		; FF C6 00 8A
	brk $35.b		; 00 35
	dex		; CA
	cpx #$1F.b		; E0 1F
	lda $BD.b,X		; B5 BD
	adc $F0.b,S		; 63 F0
	ora $FC42.w		; 0D 42 FC
	inc $CFDF.w,X		; FE DF CF
	sty $19.b,X		; 94 19
	eor $00.b		; 45 00
	sta $6502.w		; 8D 02 65
	sta $D0D0.w,X		; 9D D0 D0
	and $562D.w		; 2D 2D 56
	cpx $FF.b		; E4 FF
	sta $FF02FD.l		; 8F FD 02 FF
	and $F8D2FF.l		; 2F FF D2 F8
	and $4B.b,X		; 35 4B
	cmp ($AA.b,X)		; C1 AA
	ora $BBB959.l,X		; 1F 59 B9 BB
	lda [$A2.b],Y		; B7 A2
	ldx #$55.b		; A2 55
	inc $D4C9.w,X		; FE C9 D4
	pei ($E2.b)		; D4 E2
	jsr ($FF06.w,X)		; FC 06 FF
	eor $CB58.w,X		; 5D 58 CB
	pld		; 2B
	sbc $E970BF.l,X		; FF BF 70 E9
	and ($CC.b,S),Y		; 33 CC
	jmp ($2693.w)		; 6C 93 26
	and $3409C9.l,X		; 3F C9 09 34
	brk $C8.b		; 00 C8
	brk $23.b		; 00 23
	and $91.b,S		; 23 91
	plx		; FA
	cpx #$FC.b		; E0 FC
	cpy #$46.b		; C0 46
	sbc $D9FDDC.l,X		; FF DC FD D9
	rol $1D00.w		; 2E 00 1D
	eor [$E8.b],Y		; 57 E8
	brk $7B.b		; 00 7B
	sty $A1.b		; 84 A1
	pld		; 2B
	ora #$FF.b		; 09 FF
	sed		; F8
	ora ($E0.b,S),Y		; 13 E0
	cmp ($9E.b,X)		; C1 9E
	sbc ($95.b,X)		; E1 95
	sta $FF.b		; 85 FF
	sbc $F8E25F.l,X		; FF 5F E2 F8
	trb $FF.b		; 14 FF
	phy		; 5A
	ora ($AD.b,X)		; 01 AD
	eor ($21.b)		; 52 21
	sbc $EBFF9A.l,X		; FF 9A FF EB
	beq 100.b		; F0 64
	sbc $FDAC9D.l,X		; FF 9D AC FD
	sbc $A20DF8.l,X		; FF F8 0D A2
	cop $02.b		; 02 02
	phk		; 4B
	pea $1F12.w		; F4 12 1F
	tas		; 1B
	cpx #$A9.b		; E0 A9
	bvc  20.b		; 50 14
	xce		; FB
	ldx $F0.b,Y		; B6 F0
	sbc $F8E0.w,X		; FD E0 F8
	asl $FE98.w		; 0E 98 FE
	cmp $2B5C.w,X		; DD 5C 2B
	cpy #$00.b		; C0 00
	trb $08.b		; 14 08
	lsr A		; 4A
	and $D9.b,X		; 35 D9
	bcc  -4.b		; 90 FC
	sbc $F8E0D4.l,X		; FF D4 E0 F8
	tsb $9FF8.w		; 0C F8 9F
	ora #$86.b		; 09 86
	bit $24.b		; 24 24
	bpl   0.b		; 10 00
	lda $7C12.w		; AD 12 7C
	sbc $FFA184.l,X		; FF 84 A1 FF
	cpx #$FE.b		; E0 FE
	stp		; DB
	cpx #$F8.b		; E0 F8
	asl A		; 0A
	and $D2D2FF.l,X		; 3F FF D2 D2
	lda ($A0.b,X)		; A1 A0
	asl $3F.b		; 06 3F
	sbc $00.b,X		; F5 00
	ora $5B00.w		; 0D 00 5B
	lda $23.b		; A5 23
	cmp $542DE0.l,X		; DF E0 2D 54
	sed		; F8
	tsb $4A4A.w		; 0C 4A 4A
	xce		; FB
	clv		; B8
	bmi   0.b		; 30 00
	lsr $7110.w		; 4E 10 71
	lsr $F0A1.w,X		; 5E A1 F0
	sbc $B5FFE1.l,X		; FF E1 FF B5
	lsr $6D.b		; 46 6D
	jsr $10F8.w		; 20 F8 10
	phk		; 4B
	ldy $16.b,X		; B4 16
	plx		; FA
	brk $EA.b		; 00 EA
	sbc $0B0BFD.l,X		; FF FD 0B 0B
	sbc ($92.b,X)		; E1 92
	xce		; FB
	wai		; CB
	and ($19.b,X)		; 21 19
	lda ($F1.b,S),Y		; B3 F1
	jsr ($0012.w,X)		; FC 12 00
	wai		; CB
	brk $04.b		; 00 04
	ora $00.b,S		; 03 00
	nop		; EA
	bvs -81.b		; 70 AF
	sbc $0096F7.l,X		; FF F7 96 00
	xba		; EB
	eor [$F1.b]		; 47 F1
	sbc #$00.b		; E9 00
	lsr $EF.b,X		; 56 EF
	jsr ($17F7.w,X)		; FC F7 17
	brk $EA.b		; 00 EA
	ora #$D6.b		; 09 D6
	sbc ($00.b,X)		; E1 00
	sbc #$00.b		; E9 00
	and $00.b,X		; 35 00
	inc A		; 1A
	brk $6D.b		; 00 6D
	adc [$D9.b],Y		; 77 D9
	txs		; 9A
	jsr ($DFE0.w,X)		; FC E0 DF
	and $E2EE21.l,X		; 3F 21 EE E2
	and $006A52.l,X		; 3F 52 6A 00
	and $D2.b		; 25 D2
	xce		; FB
	ora [$5E.b],Y		; 17 5E
	sta ($81.b,X)		; 81 81
	ora $20C092.l,X		; 1F 92 C0 20
	ora #$00.b		; 09 00
	dec $00.b,X		; D6 00
	rtl		; 6B

	sbc #$D9.b		; E9 D9
	phy		; 5A
	sbc $AFDE.w,Y		; F9 DE AF
	sta $3E04FE.l		; 8F FE 04 3E
	sta ($00.b,X)		; 81 00
	nop		; EA
	sbc ($60.b,S),Y		; F3 60
	brk $A3.b		; 00 A3
	rol A		; 2A
	clv		; B8
	brk $55.b		; 00 55
	ldx $DAB3.w,Y		; BE B3 DA
	rts		; 60

	sbc $EAFA.w,X		; FD FA EA
	brk $EA.b		; 00 EA
	eor $0AD5A8.l,X		; 5F A8 D5 0A
	brk $D1.b		; 00 D1
	lda ($71.b,X)		; A1 71
	dec $1DAA.w,X		; DE AA 1D
	and ($AD.b,X)		; 21 AD
	eor ($FF.b),Y		; 51 FF
	sbc $2FD2.w,X		; FD D2 2F
	adc $0010.w,Y		; 79 10 00
	sbc #$23.b		; E9 23
	cmp $069EDE.l,X		; DF DE 9E 06
	cmp $C2BD.w,Y		; D9 BD C2
	pei ($D5.b)		; D4 D5
	sty $51A1.w		; 8C A1 51
	ora ($88.b,X)		; 01 88
	brk $E9.b		; 00 E9
	dec $95.b		; C6 95
	clv		; B8
	tax		; AA
	eor [$15.b],Y		; 57 15
	ora ($54.b,X)		; 01 54
	brk $EA.b		; 00 EA
	brk $D1.b		; 00 D1
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	sty $00.b		; 84 00
	beq   0.b		; F0 00
	sbc $9553FF.l,X		; FF FF 53 95
	lsr $15.b		; 46 15
	bmi  21.b		; 30 15
	and ($15.b),Y		; 31 15
	and ($15.b)		; 32 15
	and ($15.b,S),Y		; 33 15
	bit $15.b,X		; 34 15
	and $0F.b,X		; 35 0F
	sbc ($15.b),Y		; F1 15
	rol $15.b,X		; 36 15
	and [$15.b],Y		; 37 15
	inc $EC3F.w		; EE 3F EC
	and $8C3F15.l		; 2F 15 3F 8C
	sec		; 38
	ora $39.b,X		; 15 39
	ora $60.b,X		; 15 60
	ora $61.b,X		; 15 61
	sed		; F8
	eor $44.b,X		; 55 44
	ora ($C0.b,S),Y		; 13 C0
	inx		; E8
	eor $95.b		; 45 95
	cpx $CEFE.w		; EC FE CE
	mvp $C5,$30		; 44 30 C5
	eor $D4.b,X		; 55 D4
	eor $55.b		; 45 55
	dec $F04E.w		; CE 4E F0
	sbc $153A18.l,X		; FF 18 3A 15
	tsa		; 3B
	ora $3C.b,X		; 15 3C
	ora $3D.b,X		; 15 3D
	ora $3E.b,X		; 15 3E
	dex		; CA
	rti		; 40

	and ($FF.b,X)		; 21 FF
	beq  -8.b		; F0 F8
	eor $1541D8.l		; 4F D8 41 15
	.db $42, $15		; 42 15
	eor $7F.b,S		; 43 7F
	bit $6215.w,X		; 3C 15 62
	ora $63.b,X		; 15 63
	ora $64.b,X		; 15 64
	ora $65.b,X		; 15 65
	beq  68.b		; F0 44
	cmp $4D.b,X		; D5 4D
	sta ($04.b)		; 92 04
	dec $D4E6.w,X		; DE E6 D4
	jsr ($10CA.w,X)		; FC CA 10
	cmp $45A6F8.l		; CF F8 A6 45
	bcc  71.b		; 90 47
	ora $48.b,X		; 15 48
	jsr $E6FD.w		; 20 FD E6
	inc $FCC4.w,X		; FE C4 FC
	inc $1549.w,X		; FE 49 15
	lsr A		; 4A
	ora $4B.b,X		; 15 4B
	adc $661504.l,X		; 7F 04 15 66
	ora $67.b,X		; 15 67
	ora $68.b,X		; 15 68
	ora $69.b,X		; 15 69
	beq -50.b		; F0 CE
	sei		; 78
	brk $88.b		; 00 88
	eor $4095.w		; 4D 95 40
	eor $F6.b,X		; 55 F6
	pei ($00.b)		; D4 00
	brk $DA.b		; 00 DA
	bra -54.b		; 80 CA
	inc $4818.w,X		; FE 18 48
	cpy $4C.b		; C4 4C
	ora $AA.b,X		; 15 AA
	ply		; 7A
	iny		; C8
	jsr ($FFF2.w,X)		; FC F2 FF
	bra  -8.b		; 80 F8
	inc $1550.w,X		; FE 50 15
	eor ($15.b),Y		; 51 15
	eor ($15.b)		; 52 15
	ror A		; 6A
	ora $6B.b,X		; 15 6B
	ora $0B.b,X		; 15 0B
	brk $6C.b		; 00 6C
	ora $6D.b,X		; 15 6D
	inx		; E8
	sbc $22D4.w,X		; FD D4 22
	sta ($80.b),Y		; 91 80
	cmp ($53.b)		; D2 53
	dex		; CA
	sbc ($B0.b)		; F2 B0
	cmp [$FF.b],Y		; D7 FF
	bmi  21.b		; 30 15
	mvn $FF,$8C		; 54 8C FF
	inc $0BF8.w,X		; FE F8 0B
	eor $15.b,X		; 55 15
	lsr $15.b,X		; 56 15
	eor [$15.b],Y		; 57 15
	ror $6F15.w		; 6E 15 6F
	trb $6F.b		; 14 6F
	ora $70.b,X		; 15 70
	ora $71.b,X		; 15 71
	inx		; E8
	sed		; F8
	asl A		; 0A
	mvn $CC,$CA		; 54 CA CC
	inc $FEA0.w,X		; FE A0 FE
	rol $58FC.w,X		; 3E FC 58
	sty $0AF8.w		; 8C F8 0A
	inc $0BF8.w,X		; FE F8 0B
	eor $5A15.w,Y		; 59 15 5A
	ora $5B.b,X		; 15 5B
	adc $721515.l,X		; 7F 15 15 72
	ora $73.b,X		; 15 73
	ora $74.b,X		; 15 74
	ora $75.b,X		; 15 75
	nop		; EA
	sbc $CAF4FE.l,X		; FF FE F4 CA
	jsr ($FFF4.w,X)		; FC F4 FF
	ror $CC.b,X		; 76 CC
	sed		; F8
	ora $0BF8FE.l		; 0F FE F8 0B
	jmp $155D15.l		; 5C 15 5D 15
	lsr $7615.w,X		; 5E 15 76
	ora $77.b,X		; 15 77
	ora $4B.b,X		; 15 4B
	sbc $78.b,X		; F5 78
	ora $79.b,X		; 15 79
	cpx #$F8.b		; E0 F8
	ora ($7E.b)		; 12 7E
	rol $C0.b,X		; 36 C0
	sed		; F8
	inc A		; 1A
	rti		; 40

	sbc ($95.b),Y		; F1 95
	eor $15FE87.l,X		; 5F 87 FE 15
	ply		; 7A
	ora $7B.b,X		; 15 7B
	sed		; F8
	cmp $DC.b,X		; D5 DC
	sed		; F8
	ora $1C73.w,Y		; 19 73 1C
	stz $1C.b,X		; 74 1C
	adc $FF.b,X		; 75 FF
	sbc $1C761C.l,X		; FF 1C 76 1C
	adc [$1C.b],Y		; 77 1C
	sei		; 78
	trb $1C79.w		; 1C 79 1C
	ply		; 7A
	trb $1C7B.w		; 1C 7B 1C
	jmp ($7D1C.w,X)		; 7C 1C 7D
	sbc $7E1CFB.l,X		; FF FB 1C 7E
	trb $1C7F.w		; 1C 7F 1C
	bra  28.b		; 80 1C
	sta ($1C.b,X)		; 81 1C
	.db $82, $1C, $E0		; 82 1C E0
	sed		; F8
	ora $841C83.l,X		; 1F 83 1C 84
	sbc $851CFF.l,X		; FF FF 1C 85
	trb $1C86.w		; 1C 86 1C
	sta [$1C.b]		; 87 1C
	dey		; 88
	trb $1C89.w		; 1C 89 1C
	txa		; 8A
	trb $1C8B.w		; 1C 8B 1C
	sty $F7FF.w		; 8C FF F7
	trb $1C8D.w		; 1C 8D 1C
	stx $8F1C.w		; 8E 1C 8F
	trb $1C90.w		; 1C 90 1C
	sta ($1C.b),Y		; 91 1C
	sta ($E0.b)		; 92 E0
	sed		; F8
	jsr $1C93.w		; 20 93 1C
	sbc $1C94FF.l,X		; FF FF 94 1C
	sta $1C.b,X		; 95 1C
	stx $1C.b,Y		; 96 1C
	sta [$1C.b],Y		; 97 1C
	tya		; 98
	trb $1C99.w		; 1C 99 1C
	txs		; 9A
	trb $1C9B.w		; 1C 9B 1C
	sbc $1C9CEF.l,X		; FF EF 9C 1C
	sta $9E1C.w,X		; 9D 1C 9E
	trb $1C9F.w		; 1C 9F 1C
	ldy #$1C.b		; A0 1C
	lda ($1C.b,X)		; A1 1C
	ldx #$E0.b		; A2 E0
	sed		; F8
	jsr $FFA3.w		; 20 A3 FF
	sbc $1CA41C.l,X		; FF 1C A4 1C
	lda $1C.b		; A5 1C
	ldx $1C.b		; A6 1C
	lda [$1C.b]		; A7 1C
	tay		; A8
	trb $1CA9.w		; 1C A9 1C
	tax		; AA
	trb $FFAB.w		; 1C AB FF
	cmp $1CAC1C.l,X		; DF 1C AC 1C
	lda $AE1C.w		; AD 1C AE
	trb $1CAF.w		; 1C AF 1C
	bcs  28.b		; B0 1C
	lda ($1C.b),Y		; B1 1C
	lda ($E0.b)		; B2 E0
	sed		; F8
	jsr $FFFF.w		; 20 FF FF
	lda ($1C.b,S),Y		; B3 1C
	ldy $1C.b,X		; B4 1C
	lda $1C.b,X		; B5 1C
	ldx $1C.b,Y		; B6 1C
	lda [$1C.b],Y		; B7 1C
	clv		; B8
	trb $1CB9.w		; 1C B9 1C
	tsx		; BA
	trb $BFFF.w		; 1C FF BF
	tyx		; BB
	trb $1CBC.w		; 1C BC 1C
	lda $BE1C.w,X		; BD 1C BE
	trb $1CBF.w		; 1C BF 1C
	cpy #$1C.b		; C0 1C
	cmp ($1C.b,X)		; C1 1C
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	sbc $20F8E0.l,X		; FF E0 F8 20
	cmp $1C.b,S		; C3 1C
	cpy $1C.b		; C4 1C
	cmp $1C.b		; C5 1C
	dec $1C.b		; C6 1C
	cmp [$1C.b]		; C7 1C
	iny		; C8
	trb $1CC9.w		; 1C C9 1C
	dex		; CA
	sbc $CB1C7F.l,X		; FF 7F 1C CB
	trb $1CCC.w		; 1C CC 1C
	cmp $CE1C.w		; CD 1C CE
	trb $1CCF.w		; 1C CF 1C
	bne  28.b		; D0 1C
	cmp ($1C.b),Y		; D1 1C
	cmp ($FF.b)		; D2 FF
	sbc $20F8E0.l,X		; FF E0 F8 20
	cmp ($1C.b,S),Y		; D3 1C
	pei ($1C.b)		; D4 1C
	cmp $1C.b,X		; D5 1C
	dec $1C.b,X		; D6 1C
	cmp [$1C.b],Y		; D7 1C
	cld		; D8
	trb $1CD9.w		; 1C D9 1C
	sbc $1CDAFF.l,X		; FF FF DA 1C
	stp		; DB
	trb $1CDC.w		; 1C DC 1C
	cmp $DE1C.w,X		; DD 1C DE
	trb $1CDF.w		; 1C DF 1C
	cpx #$E11C.w		; E0 1C E1
	trb $FFFE.w		; 1C FE FF
.ACCU 8
	sep #$E0		; E2 E0
	sed		; F8
	jsr $1CE3.w		; 20 E3 1C
	cpx $1C.b		; E4 1C
	sbc $1C.b		; E5 1C
	inc $1C.b		; E6 1C
	sbc [$1C.b]		; E7 1C
	inx		; E8
	trb $FFE9.w		; 1C E9 FF
	sbc $1CEA1C.l,X		; FF 1C EA 1C
	xba		; EB
	trb $1CEC.w		; 1C EC 1C
	sbc $EE1C.w		; ED 1C EE
	trb $1CEF.w		; 1C EF 1C
	beq  28.b		; F0 1C
	sbc ($FD.b),Y		; F1 FD
	sbc $E0F21C.l,X		; FF 1C F2 E0
	sed		; F8
	jsr $1CF3.w		; 20 F3 1C
	pea $F51C.w		; F4 1C F5
	trb $1CF6.w		; 1C F6 1C
	sbc [$1C.b],Y		; F7 1C
	sed		; F8
	trb $FFFF.w		; 1C FF FF
	sbc $FA1C.w,Y		; F9 1C FA
	trb $1CFB.w		; 1C FB 1C
	jsr ($FD1C.w,X)		; FC 1C FD
	trb $1CFE.w		; 1C FE 1C
	sbc $1D001C.l,X		; FF 1C 00 1D
	sbc [$FF.b],Y		; F7 FF
	ora ($1D.b,X)		; 01 1D
	cop $1D.b		; 02 1D
	cpx #$1FF8.w		; E0 F8 1F
	ora $1D.b,S		; 03 1D
	tsb $1D.b		; 04 1D
	ora $1D.b		; 05 1D
	asl $1D.b		; 06 1D
	ora [$1D.b]		; 07 1D
	sbc $1D08FF.l,X		; FF FF 08 1D
	ora #$1D.b		; 09 1D
	asl A		; 0A
	ora $1D0B.w,X		; 1D 0B 1D
	tsb $0D1D.w		; 0C 1D 0D
	ora $1D0E.w,X		; 1D 0E 1D
	ora $FFEF1D.l		; 0F 1D EF FF
	bpl  29.b		; 10 1D
	ora ($1D.b),Y		; 11 1D
	ora ($E0.b)		; 12 E0
	sed		; F8
	jsr $1D13.w		; 20 13 1D
	trb $1D.b		; 14 1D
	ora $1D.b,X		; 15 1D
	asl $1D.b,X		; 16 1D
	ora [$FF.b],Y		; 17 FF
	cmp $1D.b,S		; C3 1D
	clc		; 18
	ora $1D19.w,X		; 1D 19 1D
	inc A		; 1A
	ora $1D1B.w,X		; 1D 1B 1D
	trb $FF1D.w		; 1C 1D FF
	asl $FB7F.w,X		; 1E 7F FB
	ora $1D1F.w,X		; 1D 1F 1D
	jsr $211D.w		; 20 1D 21
	ora $E022.w,X		; 1D 22 E0
	sed		; F8
	jsr $FF00.w		; 20 00 FF
	sed		; F8
	ror $2D80.w,X		; 7E 80 2D
	sta ($FF.b,X)		; 81 FF
	adc $2D7E2D.l,X		; 7F 2D 7E 2D
	adc $2D7C2D.l,X		; 7F 2D 7C 2D
	.db $82, $2D, $83		; 82 2D 83
	and $2D84.w		; 2D 84 2D
	ldx $7D2D.w		; AE 2D 7D
	sbc ($0B.b,X)		; E1 0B
	beq  -3.b		; F0 FD
	sed		; F8
	lda $2DB02D.l		; AF 2D B0 2D
	lda ($F0.b),Y		; B1 F0
	sed		; F8
	asl A		; 0A
	sbc ($9F.b,X)		; E1 9F
	sed		; F8
	lda ($FE.b)		; B2 FE
	adc $6D7E.w		; 6D 7E 6D
	adc $7C6D.w,X		; 7D 6D 7C
	adc $FF7F.w		; 6D 7F FF
	sbc $6DB1F8.l,X		; FF F8 B1 6D
	dey		; 88
	and $2D89.w		; 2D 89 2D
	sta [$2D.b]		; 87 2D
	txa		; 8A
	and $2D85.w		; 2D 85 2D
	stx $2D.b		; 86 2D
	sbc $2D8B7A.l,X		; FF 7A 8B 2D
	sty $B32D.w		; 8C 2D B3
	and $2DB4.w		; 2D B4 2D
	lda $F0.b,X		; B5 F0
	sbc $FEE8.w,X		; FD E8 FE
	ldx $2D.b,Y		; B6 2D
	lda [$FF.b],Y		; B7 FF
	cmp $8AFFF0.l		; CF F0 FF 8A
	adc $6D87.w		; 6D 87 6D
	stx $6D.b		; 86 6D
	sta $6D.b		; 85 6D
	lda [$6D.b],Y		; B7 6D
	ldx $FF.b,Y		; B6 FF
	sbc $91F8.w,X		; FD F8 91
	and $2D8E.w		; 2D 8E 2D
	sta $2D902D.l		; 8F 2D 90 2D
	sta $F8F8.w		; 8D F8 F8
	asl A		; 0A
	clv		; B8
	and $2DB9.w		; 2D B9 2D
	.db $42, $F8		; 42 F8
	tsx		; BA
	inx		; E8
	sed		; F8
	ora ($F8.b)		; 12 F8
	tyx		; BB
	inc $8F6D.w,X		; FE 6D 8F
	adc $F78E.w		; 6D 8E F7
	sbc $6D8D6D.l,X		; FF 6D 8D 6D
	bcc  -8.b		; 90 F8
	sbc $2D96.w,X		; FD 96 2D
	sta [$2D.b],Y		; 97 2D
	tya		; 98
	and $2D95.w		; 2D 95 2D
	sta ($2D.b)		; 92 2D
	sbc ($B7.b,S),Y		; F3 B7
	sta ($2D.b,S),Y		; 93 2D
	sty $F8.b,X		; 94 F8
	ldy $BD2D.w,X		; BC 2D BD
	and $F0BE.w		; 2D BE F0
	sbc $FE14BF.l,X		; FF BF 14 FE
	inx		; E8
	sbc $FEC0F8.l,X		; FF F8 C0 FE
	adc $6D94.w		; 6D 94 6D
	sta ($6D.b,S),Y		; 93 6D
	sta ($F9.b)		; 92 F9
	sbc $F8956D.l,X		; FF 6D 95 F8
	lda $2D9D6D.l,X		; BF 6D 9D 2D
	stz $9B2D.w,X		; 9E 2D 9B
	and $2D9C.w		; 2D 9C 2D
	tda		; 7B
	sbc $9A2D99.l,X		; FF 99 2D 9A
	sed		; F8
	sed		; F8
	ora ($C1.b)		; 12 C1
	and $E8C2.w		; 2D C2 E8
	sed		; F8
	asl $6D9C.w		; 0E 9C 6D
	txy		; 9B
	adc $6D9A.w		; 6D 9A 6D
	sbc $99FF.w,X		; FD FF 99
	adc $FCF8.w		; 6D F8 FC
.ACCU 16
	rep #$6D		; C2 6D
	sta $2DA02D.l,X		; 9F 2D A0 2D
	lda ($2D.b,X)		; A1 2D
	ldx #$A32D.w		; A2 2D A3
	and $C35F.w		; 2D 5F C3
	ldy $2D.b		; A4 2D
	lda $2D.b		; A5 2D
	ldx $2D.b		; A6 2D
	beq  -2.b		; F0 FE
	sed		; F8
	sed		; F8
	ora $C3.b,X		; 15 C3
	inc $C36D.w,X		; FE 6D C3
	inc $6DA1.w,X		; FE A1 6D
	ldy #$6DCA.w		; A0 CA 6D
	ldx #$FDF8.w		; A2 F8 FD
	lda [$2D.b]		; A7 2D
	tay		; A8
	and $1FA9.w		; 2D A9 1F
	cmp [$2D.b],Y		; D7 2D
	plb		; AB
	and $2DAC.w		; 2D AC 2D
	lda $AAF8.w		; AD F8 AA
	and $FCF0.w		; 2D F0 FC
	sed		; F8
	sed		; F8
	ora [$F0.b],Y		; 17 F0
	bcs -60.b		; B0 C4
	inc $A96D.w,X		; FE 6D A9
	adc $CAA8.w		; 6D A8 CA
	adc $AAAA.w		; 6D AA AA
	nop		; EA
	sed		; F8
	sbc $E8C0.w,X		; FD C0 E8
	adc $FCF8FF.l,X		; 7F FF F8 FC
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	dec $FDB0.w		; CE B0 FD
	tda		; 7B
	adc $30AF.w		; 6D AF 30
	cpy #$AE0A.w		; C0 0A AE
	adc $6D84.w		; 6D 84 6D
	sta $6D.b,S		; 83 6D
	.db $82, $F0, $FD		; 82 F0 FD
	sta ($6D.b,X)		; 81 6D
	bra -123.b		; 80 85
	sbc $20C8A0.l,X		; FF A0 C8 20
	bmi -58.b		; 30 C6
	sed		; F8
	lda $6D.b,X		; B5 6D
	ldy $6D.b,X		; B4 6D
	lda ($6D.b,S),Y		; B3 6D
	sty $C26D.w		; 8C 6D C2
	sbc $8B.b,X		; F5 8B
	beq  -3.b		; F0 FD
	inx		; E8
	bit #$886D.w		; 89 6D 88
	cpy #$20F8.w		; C0 F8 20
	sec		; 38
	cpy $BA.b		; C4 BA
	adc $FD6B.w		; 6D 6B FD
	lda $B86D.w,Y		; B9 6D B8
	plp		; 28
	cpy #$F80C.w		; C0 0C F8
	jsr ($C091.w,X)		; FC 91 C0
	sed		; F8
	jsr $C438.w		; 20 38 C4
	sta ($6D.b)		; 92 6D
	ldx $4B6D.w,Y		; BE 6D 4B
	cmp $BC6DBD.l,X		; DF BD 6D BC
	plp		; 28
	cmp [$F8.b]		; C7 F8
	tya		; 98
	adc $6D97.w		; 6D 97 6D
	stx $C0.b,Y		; 96 C0
	sed		; F8
	jsr $F57A.w		; 20 7A F5
	cmp ($30.b,X)		; C1 30
	cpy #$F80C.w		; C0 0C F8
	sed		; F8
	ora $6D9E.w		; 0D 9E 6D
	sta $F8C0.w,X		; 9D C0 F8
	jsr $C638.w		; 20 38 C6
	sed		; F8
	inc $6DA6.w,X		; FE A6 6D
	lda $6DA5FA.l		; AF FA A5 6D
	ldy $6D.b		; A4 6D
	lda $F0.b,S		; A3 F0
	sbc $1FF8C0.l,X		; FF C0 F8 1F
	sec		; 38
	dec $F8.b		; C6 F8
	sed		; F8
	phd		; 0B
	lda $AC6D.w		; AD 6D AC
	eor $00.b,X		; 55 00
	adc $20AB.w		; 6D AB 20
	cpy #$FFFC.w		; C0 FC FF
	sed		; F8
	and #$F000.w		; 29 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7D.b		; 00 7D
	lda [$00.b],Y		; B7 00
	sbc $279EF8.l,X		; FF F8 9E 27
	rol A		; 2A
	plp		; 28
	rol A		; 2A
	lda $083CF8.l,X		; BF F8 3C 08
	pld		; 2B
	cpy #$3EF8.w		; C0 F8 3E
	and $C083FD.l		; 2F FD 83 C0
	sed		; F8
	ora $FE08.w,X		; 1D 08 FE
	sed		; F8
	ora $29C5.w,X		; 1D C5 29
	dec $29.b		; C6 29
	and $2A.b		; 25 2A
	rol $BC.b		; 26 BC
	inc $D883.w,X		; FE 83 D8
	sed		; F8
	asl $F8FE.w,X		; 1E FE F8
	ora $C7.b,X		; 15 C7
	and #$29C8.w		; 29 C8 29
	cmp #$2929.w		; C9 29 29
	rol A		; 2A
	sbc $C077FF.l,X		; FF FF 77 C0
	sed		; F8
	and $CA.b,X		; 35 CA
	and #$29CB.w		; 29 CB 29
	cpy $2C29.w		; CC 29 2C
	rol A		; 2A
	and $2E2A.w		; 2D 2A 2E
	ldx $30F8.w,Y		; BE F8 30
	cmp $F829.w		; CD 29 F8
	lda $29CEFC.l,X		; BF FC CE 29
	cmp $292F29.l		; CF 29 2F 29
	bmi  42.b		; 30 2A
	and ($2A.b),Y		; 31 2A
	and ($F1.b)		; 32 F1
	sbc $30F8C0.l,X		; FF C0 F8 30
	bne -64.b		; D0 C0
	cmp ($29.b),Y		; D1 29
	cmp ($29.b)		; D2 29
	cmp ($29.b,S),Y		; D3 29
	and ($2A.b,S),Y		; 33 2A
	bit $2A.b,X		; 34 2A
	clv		; B8
	sbc ($35.b),Y		; F1 35
	cpy #$69CD.w		; C0 CD 69
	dec $F8.b		; C6 F8
	and $D4.b		; 25 D4
	dec $D5.b		; C6 D5
	and #$3FFF.w		; 29 FF 3F
	dec $29.b,X		; D6 29
	cmp [$29.b],Y		; D7 29
	cld		; D8
	and #$29D9.w		; 29 D9 29
	phx		; DA
	and #$2A36.w		; 29 36 2A
	and [$2A.b],Y		; 37 2A
	sec		; 38
	ror $32.b		; 66 32
	cpy #$7C39.w		; C0 39 7C
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	sed		; F8
	ora $FEDB.w,X		; 1D DB FE
	sbc $29DCDE.l,X		; FF DE DC 29
	cmp $DE29.w,X		; DD 29 DE
	and #$DF.b		; 29 DF
	and #$E0.b		; 29 E0
	and #$E1.b		; 29 E1
	and #$3A.b		; 29 3A
	sbc $3B2A91.l,X		; FF 91 2A 3B
	rol A		; 2A
	bit $3D2A.w,X		; 3C 2A 3D
	rol A		; 2A
	rol $3F2A.w,X		; 3E 2A 3F
	ldx $FF8C.w,Y		; BE 8C FF
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	sed		; F8
	ora $DEE2.w,X		; 1D E2 DE
	sbc $29.b,S		; E3 29
	cpx $29.b		; E4 29
	sbc $29.b		; E5 29
	inc $FF.b		; E6 FF
	adc $29E729.l,X		; 7F 29 E7 29
	inx		; E8
	and #$40.b		; 29 40
	rol A		; 2A
	eor ($2A.b,X)		; 41 2A
	.db $42, $2A		; 42 2A
	eor $2A.b,S		; 43 2A
	mvp $45,$2A		; 44 2A 45
	bit $E3.b		; 24 E3
	cpy #$E2.b		; C0 E2
	inc $1DF8.w,X		; FE F8 1D
	sbc #$DE.b		; E9 DE
	nop		; EA
	sbc $EB29FF.l,X		; FF FF 29 EB
	and #$EC.b		; 29 EC
	and #$ED.b		; 29 ED
	and #$EE.b		; 29 EE
	and #$EF.b		; 29 EF
	and #$46.b		; 29 46
	rol A		; 2A
	eor [$2A.b]		; 47 2A
	pha		; 48
	ora $492AC9.l,X		; 1F C9 2A 49
	rol A		; 2A
	lsr A		; 4A
	rol A		; 2A
	phk		; 4B
	cpy #$E2.b		; C0 E2
	inc $1DF8.w,X		; FE F8 1D
	sed		; F8
	adc $F1DEF0.l,X		; 7F F0 DE F1
	and #$F2.b		; 29 F2
	and #$F3.b		; 29 F3
	and #$F4.b		; 29 F4
	and #$F5.b		; 29 F5
	and #$F6.b		; 29 F6
	sed		; F8
	ora $F569FE.l,X		; 1F FE 69 F5
	adc #$F4.b		; 69 F4
	adc #$4C.b		; 69 4C
	rol A		; 2A
	eor $4E2A.w		; 4D 2A 4E
	cmp #$F8.b		; C9 F8
	cpy #$E2.b		; C0 E2
	inc $1DF8.w,X		; FE F8 1D
	sbc [$DE.b],Y		; F7 DE
	sed		; F8
	and #$F9.b		; 29 F9
	adc $FA29F8.l,X		; 7F F8 29 FA
	and #$FB.b		; 29 FB
	and #$FC.b		; 29 FC
	and #$FD.b		; 29 FD
	inc $FC69.w,X		; FE 69 FC
	adc #$FB.b		; 69 FB
	ora $4F69C9.l,X		; 1F C9 69 4F
	rol A		; 2A
	bvc  42.b		; 50 2A
	eor ($C0.b),Y		; 51 C0
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	sed		; F8
	ora $FE18.w,X		; 1D 18 FE
	inc $FFDE.w,X		; FE DE FF
	jsr ($012A.w,X)		; FC 2A 01
	rol A		; 2A
	cop $2A.b		; 02 2A
	ora $E1.b,S		; 03 E1
	adc $FE042A.l,X		; 7F 2A 04 FE
	ror A		; 6A
	eor ($2A.b)		; 52 2A
	eor ($2A.b,S),Y		; 53 2A
	mvn $55,$2A		; 54 2A 55
	rol A		; 2A
	lsr $24.b,X		; 56 24
	and $FEE2C0.l,X		; 3F C0 E2 FE
	sed		; F8
	ora $2A05.w,Y		; 19 05 2A
	asl $2A.b		; 06 2A
	ora [$FE.b]		; 07 FE
	sbc $2A08FC.l,X		; FF FC 08 2A
	ora #$2A.b		; 09 2A
	asl A		; 0A
	rol A		; 2A
	phd		; 0B
	rol A		; 2A
	tsb $0D2A.w		; 0C 2A 0D
	rol A		; 2A
	eor [$FF.b],Y		; 57 FF
	sbc ($2A.b,X)		; E1 2A
	cli		; 58
	rol A		; 2A
	eor $5A2A.w,Y		; 59 2A 5A
	rol A		; 2A
	tad		; 5B
	rol A		; 2A
	jmp $076AE6.l		; 5C E6 6A 07
	bcs -121.b		; B0 87
	ror A		; 6A
	jsr ($6A05.w,X)		; FC 05 6A
	bne  -2.b		; D0 FE
	ora $FE0E6A.l		; 0F 6A 0E FE
	xce		; FB
	sbc ($2A.b),Y		; F1 2A
	ora $FEFC2A.l		; 0F 2A FC FE
	bpl  42.b		; 10 2A
	ora ($2A.b),Y		; 11 2A
	ora ($FC.b)		; 12 FC
	ora ($2A.b,S),Y		; 13 2A
	sbc $2A14F0.l,X		; FF F0 14 2A
	ora $2A.b,X		; 15 2A
	asl $2A.b,X		; 16 2A
	ora [$2A.b],Y		; 17 2A
	clc		; 18
	inc $176A.w,X		; FE 6A 17
	ror A		; 6A
	ora $6A168F.l		; 0F 8F 16 6A
	eor $5E2A.w,X		; 5D 2A 5E
	nop		; EA
	ror A		; 6A
	ora ($6A.b),Y		; 11 6A
	ora ($13.b)		; 12 13
	ora $10FC.w,X		; 1D FC 10
	ror A		; 6A
	iny		; C8
	jsr ($6A1A.w,X)		; FC 1A 6A
	ora $3F6E.w,Y		; 19 6E 3F
	inc $1A2A.w,X		; FE 2A 1A
	rol A		; 2A
	jsr ($1BFE.w,X)		; FC FE 1B
	inc $FD.b,X		; F6 FD
	trb $1D2A.w		; 1C 2A 1D
	rol A		; 2A
	asl $B7A0.w,X		; 1E A0 B7
	inc $E2.b,X		; F6 E2
	jsr ($5FFE.w,X)		; FC FE 5F
	rol A		; 2A
	rts		; 60

	beq  -1.b		; F0 FF
	tas		; 1B
	sta [$DB.b]		; 87 DB
	nop		; EA
	sbc $1F6A20.l,X		; FF 20 6A 1F
	inc $202A.w,X		; FE 2A 20
	rol A		; 2A
	jsr ($21FE.w,X)		; FC FE 21
	inc $FD.b,X		; F6 FD
	ora $2A22E8.l		; 0F E8 22 2A
	and $2A.b,S		; 23 2A
	bit $F6.b		; 24 F6
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	inc $9961.w,X		; FE 61 99
	lda $622A.w		; AD 2A 62
	beq -38.b		; F0 DA
	nop		; EA
	sbc $E1E02F.l,X		; FF 2F E0 E1
	tax		; AA
	tax		; AA
	inc $FCF8.w,X		; FE F8 FC
	inc $3EF8.w,X		; FE F8 3E
	bra -56.b		; 80 C8
	sta $FCF8FF.l,X		; 9F FF F8 FC
	sbc $E0FCF8.l,X		; FF F8 FC E0
	clv		; B8
	and [$FE.b]		; 27 FE
	sbc $F8C0.w,X		; FD C0 F8
	jsr ($AAAA.w,X)		; FC AA AA
	cpy #$F8.b		; C0 F8
	jsr ($F8C0.w,X)		; FC C0 F8
	jsr ($F8C0.w,X)		; FC C0 F8
	and $C0C638.l,X		; 3F 38 C6 C0
	sed		; F8
	and [$38.b],Y		; 37 38
	dec $C0.b		; C6 C0
	sed		; F8
	and [$38.b],Y		; 37 38
	dec $AA.b		; C6 AA
	cop $C0.b		; 02 C0
	sed		; F8
	and [$38.b],Y		; 37 38
	iny		; C8
	and $FCF8C0.l,X		; 3F C0 F8 FC
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	sta $00.b		; 85 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7B.b		; 00 7B
	clv		; B8
	brk $10.b		; 00 10
	inc $69F8.w,X		; FE F8 69
	sei		; 78
	ora ($79.b)		; 12 79
	inc $7852.w,X		; FE 52 78
	eor ($87.b)		; 52 87
	sbc $F8C0.w,X		; FD C0 F8
	and [$7A.b],Y		; 37 7A
	ora ($7B.b)		; 12 7B
	inc $7A52.w,X		; FE 52 7A
	cpy #$F8.b		; C0 F8
	and ($7C.b)		; 32 7C
	ora ($7D.b)		; 12 7D
	ora ($0F.b)		; 12 0F
	sbc $7F127E.l,X		; FF 7E 12 7F
	ora ($80.b)		; 12 80
	inc $7F52.w,X		; FE 52 7F
	eor ($7E.b)		; 52 7E
	eor ($7D.b)		; 52 7D
	eor ($FE.b)		; 52 FE
	adc $F8BA7C.l,X		; 7F 7C BA F8
	plp		; 28
	sta ($12.b,X)		; 81 12
	.db $82, $12, $83		; 82 12 83
	ora ($84.b)		; 12 84
	ora ($85.b)		; 12 85
	ora ($86.b)		; 12 86
	ora ($87.b)		; 12 87
	sed		; F8
	adc $8652FE.l,X		; 7F FE 52 86
	eor ($85.b)		; 52 85
	eor ($84.b)		; 52 84
	eor ($83.b)		; 52 83
	eor ($82.b)		; 52 82
	eor ($81.b)		; 52 81
	sbc $F8BC3F.l,X		; FF 3F BC F8
	bit $88.b		; 24 88
	ora ($89.b)		; 12 89
	ora ($8A.b)		; 12 8A
	ora ($8B.b)		; 12 8B
	ora ($8C.b)		; 12 8C
	ora ($8D.b)		; 12 8D
	ora ($8E.b)		; 12 8E
	jsr ($FEBF.w,X)		; FC BF FE
	eor ($8D.b)		; 52 8D
	eor ($8C.b)		; 52 8C
	eor ($8B.b)		; 52 8B
	eor ($8A.b)		; 52 8A
	eor ($89.b)		; 52 89
	eor ($88.b)		; 52 88
	sbc $F8C01F.l,X		; FF 1F C0 F8
	bit $8F.b		; 24 8F
	ora ($90.b)		; 12 90
	ora ($91.b)		; 12 91
	ora ($92.b)		; 12 92
	ora ($93.b)		; 12 93
	ora ($94.b)		; 12 94
	ora ($95.b)		; 12 95
	inc $FEDF.w,X		; FE DF FE
	eor ($94.b)		; 52 94
	eor ($93.b)		; 52 93
	eor ($92.b)		; 52 92
	eor ($91.b)		; 52 91
	eor ($90.b)		; 52 90
	eor ($8F.b)		; 52 8F
	bit $26F8.w,X		; 3C F8 26
	sbc $1296C3.l,X		; FF C3 96 12
	sta [$12.b],Y		; 97 12
	tya		; 98
	ora ($99.b)		; 12 99
	ora ($9A.b)		; 12 9A
	ora ($9B.b)		; 12 9B
	inc $FF52.w,X		; FE 52 FF
	inc $529A.w,X		; FE 9A 52
	sta $9852.w,Y		; 99 52 98
	eor ($97.b)		; 52 97
	eor ($96.b)		; 52 96
	clv		; B8
	beq  42.b		; F0 2A
	stz $9D12.w		; 9C 12 9D
	ora ($9E.b)		; 12 9E
	sta [$7F.b]		; 87 7F
	ora ($9F.b)		; 12 9F
	ora ($A0.b)		; 12 A0
	inc $9F52.w,X		; FE 52 9F
	eor ($9E.b)		; 52 9E
	eor ($9D.b)		; 52 9D
	eor ($9C.b)		; 52 9C
	sbc $F07AC3.l,X		; FF C3 7A F0
	bit $12A1.w		; 2C A1 12
	ldx #$12.b		; A2 12
	lda $12.b,S		; A3 12
	ldy $12.b		; A4 12
	lda $FE.b		; A5 FE
	eor ($BF.b)		; 52 BF
	sbc $A352A4.l,X		; FF A4 52 A3
	eor ($A2.b)		; 52 A2
	eor ($A1.b)		; 52 A1
	cpy #$F8.b		; C0 F8
	bit $12A6.w		; 2C A6 12
	lda [$12.b]		; A7 12
	tay		; A8
	ora ($A9.b)		; 12 A9
	sbc ($DF.b,X)		; E1 DF
	ora ($AA.b)		; 12 AA
	inc $A952.w,X		; FE 52 A9
	eor ($A8.b)		; 52 A8
	eor ($A7.b)		; 52 A7
	eor ($A6.b)		; 52 A6
	cpy #$F8.b		; C0 F8
	bit $30FF.w		; 2C FF 30
	plb		; AB
	ora ($AC.b)		; 12 AC
	ora ($AD.b)		; 12 AD
	ora ($68.b)		; 12 68
	ora ($AE.b)		; 12 AE
	inc $7252.w,X		; FE 52 72
	ldy $F61F.w,X		; BC 1F F6
	eor ($AC.b)		; 52 AC
	eor ($AB.b)		; 52 AB
	bra  -8.b		; 80 F8
	bmi -81.b		; 30 AF
	ora ($77.b)		; 12 77
	ora ($6D.b)		; 12 6D
	asl $3F.b		; 06 3F
	inc $7652.w,X		; FE 52 76
	inc $80.b,X		; F6 80
	sed		; F8
	bmi -80.b		; 30 B0
	ora ($B1.b)		; 12 B1
	ora ($71.b)		; 12 71
	stx $E1.b		; 86 E1
	bra 103.b		; 80 67
	inc $6652.w,X		; FE 52 66
	inc $52.b,X		; F6 52
	lda ($FD.b),Y		; B1 FD
	adc ($52.b,S),Y		; 73 52
	bcs -64.b		; B0 C0
	sed		; F8
	bit $12B2.w		; 2C B2 12
	lda ($12.b,S),Y		; B3 12
	rtl		; 6B

	ora ($6E.b)		; 12 6E
	bra 108.b		; 80 6C
	sei		; 78
	sta $B352F6.l		; 8F F6 52 B3
	eor ($B2.b)		; 52 B2
	cpy #$F8.b		; C0 F8
	bit $12B4.w		; 2C B4 12
	lda $39.b,X		; B5 39
	dec $B680.w,X		; DE 80 B6
	bra -73.b		; 80 B7
	bra -75.b		; 80 B5
	eor ($B4.b)		; 52 B4
	cpy #$F8.b		; C0 F8
	bit $8E63.w		; 2C 63 8E
	clv		; B8
	ora ($B9.b)		; 12 B9
	bra -70.b		; 80 BA
	bra -69.b		; 80 BB
	sbc [$07.b],Y		; F7 07
	bra -71.b		; 80 B9
	eor ($B8.b)		; 52 B8
	cpy #$F8.b		; C0 F8
	bit $1263.w		; 2C 63 12
	stz $12.b		; 64 12
	adc $12.b		; 65 12
	asl $0A.b		; 06 0A
	sbc $F66880.l		; EF 80 68 F6
	eor ($64.b)		; 52 64
	eor ($63.b)		; 52 63
	cpy #$F8.b		; C0 F8
	bit $1169.w		; 2C 69 11
	plp		; 28
	ora ($6A.b)		; 12 6A
	bra   6.b		; 80 06
	bra 110.b		; 80 6E
	dec $80DB.w,X		; DE DB 80
	ror A		; 6A
	eor ($69.b)		; 52 69
	cpy #$F8.b		; C0 F8
	bit $126F.w		; 2C 6F 12
	bvs   0.b		; 70 00
	sbc $8072.w,Y		; F9 72 80
	sbc $9FEF.w,X		; FD EF 9F
	adc ($52.b),Y		; 71 52
	bvs  82.b		; 70 52
	adc $2CF8C0.l		; 6F C0 F8 2C
	adc ($12.b,S),Y		; 73 12
	stz $12.b,X		; 74 12
	adc $12.b,X		; 75 12
	ror $C3.b,X		; 76 C3
	xce		; FB
	bra 119.b		; 80 77
	inc $52.b,X		; F6 52
	stz $52.b,X		; 74 52
	adc ($C0.b,S),Y		; 73 C0
	sbc $1ABC.w,X		; FD BC 1A
	lda $EFFF.w,X		; BD FF EF
	inc A		; 1A
	ldx $BF1A.w,Y		; BE 1A BF
	inc A		; 1A
	cpy #$1A.b		; C0 1A
	cmp ($1A.b,X)		; C1 1A
.INDEX 16
	rep #$1A		; C2 1A
	cmp $1A.b,S		; C3 1A
	beq  -8.b		; F0 F8
	and $DFFFC4.l		; 2F C4 FF DF
	inc A		; 1A
	cmp $1A.b		; C5 1A
	dec $1A.b		; C6 1A
	cmp [$1A.b]		; C7 1A
	iny		; C8
	inc A		; 1A
	cmp #$1A.b		; C9 1A
	dex		; CA
	inc A		; 1A
	wai		; CB
	beq  -8.b		; F0 F8
	bmi  -1.b		; 30 FF
	lda $CD1ACC.l,X		; BF CC 1A CD
	inc A		; 1A
	dec $CF1A.w		; CE 1A CF
	inc A		; 1A
	bne  26.b		; D0 1A
	cmp ($1A.b),Y		; D1 1A
	cmp ($1A.b)		; D2 1A
	cmp ($FF.b,S),Y		; D3 FF
	adc $30F8F0.l,X		; 7F F0 F8 30
	pei ($1A.b)		; D4 1A
	cmp $1A.b,X		; D5 1A
	dec $1A.b,X		; D6 1A
	cmp [$1A.b],Y		; D7 1A
	cld		; D8
	inc A		; 1A
	cmp $DA1A.w,Y		; D9 1A DA
	inc A		; 1A
	stp		; DB
	sbc $F8F0FF.l,X		; FF FF F0 F8
	bmi -36.b		; 30 DC
	inc A		; 1A
	cmp $DE1A.w,X		; DD 1A DE
	inc A		; 1A
	cmp $1AE01A.l,X		; DF 1A E0 1A
	sbc ($1A.b,X)		; E1 1A
.INDEX 8
	sep #$1A		; E2 1A
	inc $E3BF.w,X		; FE BF E3
	beq  -8.b		; F0 F8
	bmi -32.b		; 30 E0
	txs		; 9A
	sbc ($9A.b,X)		; E1 9A
.INDEX 8
	sep #$9A		; E2 9A
	sbc $9A.b,S		; E3 9A
	dec $DF9A.w,X		; DE 9A DF
	txs		; 9A
	sta ($AC.b),Y		; 91 AC
	pea $25F8.w		; F4 F8 25
	jmp.w [$FAFE]		; DC FE FA
	inc $FC.b,X		; F6 FC
	brk $FF.b		; 00 FF
	sed		; F8
	jsr ($AAAA.w,X)		; FC AA AA
	sbc $0442F8.l,X		; FF F8 42 04
	inx		; E8
	ora $FCF8C0.l,X		; 1F C0 F8 FC
	cpy #$F8.b		; C0 F8
	jsr ($F8C0.w,X)		; FC C0 F8
	jsr ($F8C0.w,X)		; FC C0 F8
	jsr ($F8C0.w,X)		; FC C0 F8
	jsr ($F8C0.w,X)		; FC C0 F8
	and $AAAA.w		; 2D AA AA
	jsr $1FC0.w		; 20 C0 1F
	cpy #$F8.b		; C0 F8
	ora $1FC020.l,X		; 1F 20 C0 1F
	cpy #$F8.b		; C0 F8
	ora $1FC020.l,X		; 1F 20 C0 1F
	cpy #$F8.b		; C0 F8
	ora $1FC020.l,X		; 1F 20 C0 1F
	cpy #$F8.b		; C0 F8
	ora $20ADAA.l,X		; 1F AA AD 20
	cpy #$1F.b		; C0 1F
	cpy #$F8.b		; C0 F8
	ora $FEC43A.l,X		; 1F 3A C4 FE
	jsr ($C024.w,X)		; FC 24 C0
	phd		; 0B
	cmp $DDC112.l,X		; DF 12 C1 DD
	jsr $FCC0.w		; 20 C0 FC
	cop $00.b		; 02 00
	sbc $0065F8.l,X		; FF F8 65 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FB.b		; 00 FB
	sbc $FE1C09.l,X		; FF 09 1C FE
	sed		; F8
	and $0B1C0A.l,X		; 3F 0A 1C 0B
	trb $1C0C.w		; 1C 0C 1C
	ora $0E1C.w		; 0D 1C 0E
	trb $FF0F.w		; 1C 0F FF
	sbc $1C101C.l,X		; FF 1C 10 1C
	ora ($1C.b,X)		; 01 1C
	cop $1C.b		; 02 1C
	ora $1C.b,S		; 03 1C
	tsb $1C.b		; 04 1C
	ora $1C.b		; 05 1C
	asl $1C.b		; 06 1C
	ora [$FD.b]		; 07 FD
	sbc ($1C.b,X)		; E1 1C
	php		; 08
	cpx #$F8.b		; E0 F8
	jsr $1C19.w		; 20 19 1C
	inc A		; 1A
	trb $1C1B.w		; 1C 1B 1C
	sbc $FF1C1D.l,X		; FF 1D 1C FF
	sbc $1F1C1E.l,X		; FF 1E 1C 1F
	trb $1C20.w		; 1C 20 1C
	ora ($1C.b),Y		; 11 1C
	ora ($1C.b)		; 12 1C
	ora ($1C.b,S),Y		; 13 1C
	trb $1C.b		; 14 1C
	ora $1C.b,X		; 15 1C
	sbc $1C16FF.l		; EF FF 16 1C
	ora [$1C.b],Y		; 17 1C
	clc		; 18
	cpx #$F8.b		; E0 F8
	jsr $1C24.w		; 20 24 1C
	and [$1C.b]		; 27 1C
	plp		; 28
	trb $1C29.w		; 1C 29 1C
	rol A		; 2A
	sbc $2B1CC7.l,X		; FF C7 1C 2B
	trb $1C2C.w		; 1C 2C 1C
	and $211C.w		; 2D 1C 21
	trb $1C22.w		; 1C 22 1C
	and $EA.b,S		; 23 EA
	lda ($FF.b,S),Y		; B3 FF
	and $1C.b		; 25 1C
	rol $FE.b		; 26 FE
	cpx #$F8.b		; E0 F8
	ora $371C36.l,X		; 1F 36 1C 37
	trb $1C38.w		; 1C 38 1C
	and $FFFF.w,Y		; 39 FF FF
	trb $1C3A.w		; 1C 3A 1C
	tsa		; 3B
	trb $1C3C.w		; 1C 3C 1C
	and $2E1C.w,X		; 3D 1C 2E
	trb $1C2F.w		; 1C 2F 1C
	bmi  28.b		; 30 1C
	and ($7F.b),Y		; 31 7F
	sbc $1C321C.l,X		; FF 1C 32 1C
	and ($1C.b,S),Y		; 33 1C
	bit $1C.b,X		; 34 1C
	and $E0.b,X		; 35 E0
	sed		; F8
	jsr $1C46.w		; 20 46 1C
	eor [$1C.b]		; 47 1C
	pha		; 48
	trb $FFFF.w		; 1C FF FF
	eor #$1C.b		; 49 1C
	lsr A		; 4A
	trb $1C4B.w		; 1C 4B 1C
	jmp $4D1C.w		; 4C 1C 4D
	trb $1C3E.w		; 1C 3E 1C
	and $1C401C.l,X		; 3F 1C 40 1C
	sbc $1C41FE.l,X		; FF FE 41 1C
	.db $42, $1C		; 42 1C
	eor $1C.b,S		; 43 1C
	mvp $45,$1C		; 44 1C 45
	cpx #$F8.b		; E0 F8
	jsr $1C53.w		; 20 53 1C
	mvn $55,$1C		; 54 1C 55
	adc $561CFF.l,X		; 7F FF 1C 56
	trb $1C57.w		; 1C 57 1C
	cli		; 58
	trb $FE4E.w		; 1C 4E FE
	sed		; F8
	asl A		; 0A
	eor $1C501C.l		; 4F 1C 50 1C
	eor ($1C.b),Y		; 51 1C
	inc $52FD.w,X		; FE FD 52
	cpx #$F8.b		; E0 F8
	jsr $1C60.w		; 20 60 1C
	adc ($1C.b,X)		; 61 1C
	.db $62, $1C, $59		; 62 1C 59
	inc $0CF8.w,X		; FE F8 0C
	phy		; 5A
	trb $1C5B.w		; 1C 5B 1C
	lda $1C5CFF.l,X		; BF FF 5C 1C
	eor $5E1C.w,X		; 5D 1C 5E
	trb $E05F.w		; 1C 5F E0
	sed		; F8
	jsr $1C6B.w		; 20 6B 1C
	jmp ($6D1C.w)		; 6C 1C 6D
	trb $FF6E.w		; 1C 6E FF
	sbc $1C6F1C.l,X		; FF 1C 6F 1C
	bvs  28.b		; 70 1C
	adc ($1C.b),Y		; 71 1C
	adc ($1C.b)		; 72 1C
	adc $1C.b,S		; 63 1C
	stz $1C.b		; 64 1C
	adc $1C.b		; 65 1C
	ror $7F.b		; 66 7F
	sbc $1C671C.l,X		; FF 1C 67 1C
	pla		; 68
	trb $1C69.w		; 1C 69 1C
	ror A		; 6A
	cpx #$F8.b		; E0 F8
	jsr $1C7B.w		; 20 7B 1C
	jmp ($7D1C.w,X)		; 7C 1C 7D
	trb $FFFF.w		; 1C FF FF
	ror $7F1C.w,X		; 7E 1C 7F
	trb $1C80.w		; 1C 80 1C
	sta ($1C.b,X)		; 81 1C
	.db $82, $1C, $73		; 82 1C 73
	trb $1C74.w		; 1C 74 1C
	adc $1C.b,X		; 75 1C
	sbc $1C76FE.l,X		; FF FE 76 1C
	adc [$1C.b],Y		; 77 1C
	sei		; 78
	trb $1C79.w		; 1C 79 1C
	ply		; 7A
	cpx #$F8.b		; E0 F8
	jsr $1C8B.w		; 20 8B 1C
	sty $8D1C.w		; 8C 1C 8D
	sbc $8E1CFF.l,X		; FF FF 1C 8E
	trb $1C8F.w		; 1C 8F 1C
	bcc  28.b		; 90 1C
	sta ($1C.b),Y		; 91 1C
	sta ($1C.b)		; 92 1C
	sta $1C.b,S		; 83 1C
	sty $1C.b		; 84 1C
	sta $FF.b		; 85 FF
	sbc $861C.w,X		; FD 1C 86
	trb $1C87.w		; 1C 87 1C
	dey		; 88
	trb $1C89.w		; 1C 89 1C
	txa		; 8A
	cpx #$F8.b		; E0 F8
	jsr $1C9B.w		; 20 9B 1C
	stz $FF1C.w		; 9C 1C FF
	sbc $9E1C9D.l,X		; FF 9D 1C 9E
	trb $1C9F.w		; 1C 9F 1C
	ldy #$1C.b		; A0 1C
	lda ($1C.b,X)		; A1 1C
	ldx #$1C.b		; A2 1C
	sta ($1C.b,S),Y		; 93 1C
	sty $1C.b,X		; 94 1C
	sbc $1C95FB.l,X		; FF FB 95 1C
	stx $1C.b,Y		; 96 1C
	sta [$1C.b],Y		; 97 1C
	tya		; 98
	trb $1C99.w		; 1C 99 1C
	txs		; 9A
	cpx #$F8.b		; E0 F8
	jsr $1CAB.w		; 20 AB 1C
	ldy $FFFF.w		; AC FF FF
	trb $1CAD.w		; 1C AD 1C
	ldx $AF1C.w		; AE 1C AF
	trb $1CB0.w		; 1C B0 1C
	lda ($1C.b),Y		; B1 1C
	lda ($1C.b)		; B2 1C
	lda $1C.b,S		; A3 1C
	ldy $FF.b		; A4 FF
	sbc [$1C.b],Y		; F7 1C
	lda $1C.b		; A5 1C
	ldx $1C.b		; A6 1C
	lda [$1C.b]		; A7 1C
	tay		; A8
	trb $1CA9.w		; 1C A9 1C
	tax		; AA
	cpx #$F8.b		; E0 F8
	jsr $1CBB.w		; 20 BB 1C
	sbc $1CBCFF.l,X		; FF FF BC 1C
	lda $BE1C.w,X		; BD 1C BE
	trb $1CBF.w		; 1C BF 1C
	cpy #$1C.b		; C0 1C
	cmp ($1C.b,X)		; C1 1C
.INDEX 16
	rep #$1C		; C2 1C
	lda ($1C.b,S),Y		; B3 1C
	sbc $1CB4EF.l,X		; FF EF B4 1C
	lda $1C.b,X		; B5 1C
	ldx $1C.b,Y		; B6 1C
	lda [$1C.b],Y		; B7 1C
	clv		; B8
	trb $1CB9.w		; 1C B9 1C
	tsx		; BA
	cpx #$20F8.w		; E0 F8 20
	wai		; CB
	sbc $CC1CFF.l,X		; FF FF 1C CC
	trb $1CCD.w		; 1C CD 1C
	dec $CF1C.w		; CE 1C CF
	trb $1CD0.w		; 1C D0 1C
	cmp ($1C.b),Y		; D1 1C
	cmp ($1C.b)		; D2 1C
	cmp $FF.b,S		; C3 FF
	cmp $1CC41C.l,X		; DF 1C C4 1C
	cmp $1C.b		; C5 1C
	dec $1C.b		; C6 1C
	cmp [$1C.b]		; C7 1C
	iny		; C8
	trb $1CC9.w		; 1C C9 1C
	dex		; CA
	cpx #$20F8.w		; E0 F8 20
	sbc $1CDBFF.l,X		; FF FF DB 1C
	jmp.w [$DD1C]		; DC 1C DD
	trb $1CDE.w		; 1C DE 1C
	cmp $1CE01C.l,X		; DF 1C E0 1C
	sbc ($1C.b,X)		; E1 1C
.INDEX 8
	sep #$1C		; E2 1C
	sbc $1CD3BF.l,X		; FF BF D3 1C
	pei ($1C.b)		; D4 1C
	cmp $1C.b,X		; D5 1C
	dec $1C.b,X		; D6 1C
	cmp [$1C.b],Y		; D7 1C
	cld		; D8
	trb $1CD9.w		; 1C D9 1C
	phx		; DA
	sbc $F8E0FF.l,X		; FF FF E0 F8
	jsr $1CEB.w		; 20 EB 1C
	cpx $ED1C.w		; EC 1C ED
	trb $1CEE.w		; 1C EE 1C
	sbc $1CF01C.l		; EF 1C F0 1C
	sbc ($1C.b),Y		; F1 1C
	sbc ($FF.b)		; F2 FF
	adc $1CE31C.l,X		; 7F 1C E3 1C
	cpx $1C.b		; E4 1C
	sbc $1C.b		; E5 1C
	inc $1C.b		; E6 1C
	sbc [$1C.b]		; E7 1C
	inx		; E8
	trb $1CE9.w		; 1C E9 1C
	nop		; EA
	sbc $F8E0FF.l,X		; FF FF E0 F8
	jsr $1CFB.w		; 20 FB 1C
	jsr ($FD1C.w,X)		; FC 1C FD
	trb $1CFE.w		; 1C FE 1C
	sbc $1D001C.l,X		; FF 1C 00 1D
	ora ($1D.b,X)		; 01 1D
	sbc $1D02FF.l,X		; FF FF 02 1D
	sbc ($1C.b,S),Y		; F3 1C
	pea $F51C.w		; F4 1C F5
	trb $1CF6.w		; 1C F6 1C
	sbc [$1C.b],Y		; F7 1C
	sed		; F8
	trb $1CF9.w		; 1C F9 1C
	inc $FAFF.w,X		; FE FF FA
	cpx #$F8.b		; E0 F8
	jsr $1D0B.w		; 20 0B 1D
	tsb $0D1D.w		; 0C 1D 0D
	ora $1D0E.w,X		; 1D 0E 1D
	ora $1D101D.l		; 0F 1D 10 1D
	ora ($FF.b),Y		; 11 FF
	sbc $1D121D.l,X		; FF 1D 12 1D
	ora $1D.b,S		; 03 1D
	tsb $1D.b		; 04 1D
	ora $1D.b		; 05 1D
	asl $1D.b		; 06 1D
	ora [$1D.b]		; 07 1D
	php		; 08
	ora $FB09.w,X		; 1D 09 FB
	beq  29.b		; F0 1D
	asl A		; 0A
	ora $F8E0.w,X		; 1D E0 F8
	ora $1C1D1B.l,X		; 1F 1B 1D 1C
	ora $1EFF.w,X		; 1D FF 1E
	ora $FF1F.w,X		; 1D 1F FF
	sbc $1D201D.l,X		; FF 1D 20 1D
	and ($1D.b,X)		; 21 1D
	jsl $1D131D.l		; 22 1D 13 1D
	trb $1D.b		; 14 1D
	ora $1D.b,X		; 15 1D
	asl $1D.b,X		; 16 1D
	ora [$DF.b],Y		; 17 DF
	sbc $1D181D.l,X		; FF 1D 18 1D
	ora $1A1D.w,Y		; 19 1D 1A
	cpx #$F8.b		; E0 F8
	jsr $5D27.w		; 20 27 5D
	rol A		; 2A
	ora $1D2B.w,X		; 1D 2B 1D
	bit $E31D.w		; 2C 1D E3
	sbc ($2D.b),Y		; F1 2D
	ora $F424.w,X		; 1D 24 F4
	rol $231D.w		; 2E 1D 23
	sed		; F8
	and $1D.b		; 25 1D
	beq -84.b		; F0 AC
	rol $F4.b		; 26 F4
	ora $1D28.w,X		; 1D 28 1D
	and #$EC.b		; 29 EC
	cpx #$F8.b		; E0 F8
	ora $FFFB.w,X		; 1D FB FF
	inc $3FF8.w,X		; FE F8 3F
	and $F8FE19.l		; 2F 19 FE F8
	adc $3AE4.w,X		; 7D E4 3A
	sbc $3A.b		; E5 3A
	inc $3A.b		; E6 3A
	sbc [$3A.b]		; E7 3A
	inx		; E8
	dec A		; 3A
	sbc #$EF.b		; E9 EF
	sbc $3AEA3A.l,X		; FF 3A EA 3A
	xba		; EB
	dec A		; 3A
	beq  -8.b		; F0 F8
	and $D53AD4.l		; 2F D4 3A D5
	dec A		; 3A
	dec $3A.b,X		; D6 3A
	cmp [$3A.b],Y		; D7 3A
	cld		; D8
	cmp $D93AFF.l,X		; DF FF 3A D9
	dec A		; 3A
	phx		; DA
	dec A		; 3A
	stp		; DB
	beq  -8.b		; F0 F8
	bmi -36.b		; 30 DC
	dec A		; 3A
	cmp $DE3A.w,X		; DD 3A DE
	dec A		; 3A
	cmp $55BF3A.l,X		; DF 3A BF 55
	cpx #$3A.b		; E0 3A
	sbc ($3A.b,X)		; E1 3A
.ACCU 8
.INDEX 8
	sep #$3A		; E2 3A
	sbc $F0.b,S		; E3 F0
	sed		; F8
	bmi   0.b		; 30 00
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	eor ($00.b,X)		; 41 00
	cpy #$FC.b		; C0 FC
	eor $55.b,X		; 55 55
	brk $C0.b		; 00 C0
	jsr ($C000.w,X)		; FC 00 C0
	jsr ($C000.w,X)		; FC 00 C0
	jsr ($C000.w,X)		; FC 00 C0
	jsr ($C000.w,X)		; FC 00 C0
	jsr ($C000.w,X)		; FC 00 C0
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	ora [$01.b],Y		; 17 01
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	brk $FD.b		; 00 FD
	sbc $F8FF00.l,X		; FF 00 FF F8
	asl $00FF.w,X		; 1E FF 00
	ldx $7D41.w,Y		; BE 41 7D
	.db $82, $7C, $83		; 82 7C 83
	rol $BFC1.w,X		; 3E C1 BF
	rti		; 40

	cmp [$87.b],Y		; D7 87
	cmp $18E720.l,X		; DF 20 E7 18
	cpx #$F8.b		; E0 F8
	ora ($FE.b),Y		; 11 FE
	jsr ($817E.w,X)		; FC 7E 81
	and $85DEC0.l,X		; 3F C0 DE 85
	ora ($8F.b,X)		; 01 8F
	bvs -32.b		; 70 E0
	sed		; F8
	ora [$FE.b],Y		; 17 FE
	adc $FCFE80.l,X		; 7F 80 FE FC
	sbc $F8E0DE.l,X		; FF DE E0 F8
	ora $698D74.l		; 0F 74 8D 69
	txy		; 9B
	lda $57.b		; A5 57
	dex		; CA
	tda		; 7B
	eor ($D0.b)		; 52 D0
	lda #$68.b		; A9 68
	sbc $34D5F8.l,X		; FF F8 D5 34
	plb		; AB
	pla		; 68
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	php		; 08
	jsr ($002F.w,X)		; FC 2F 00
	ora [$F1.b],Y		; 17 F1
	sbc $FC0B00.l,X		; FF 00 0B FC
	ldx $6DC1.w,Y		; BE C1 6D
	sta ($6E.b)		; 92 6E
	sta ($B6.b),Y		; 91 B6
	cmp #$AA.b		; C9 AA
	lda $F85F.w,X		; BD 5F F8
	eor $5E.b,X		; 55 5E
	tax		; AA
	ora $55.b,S		; 03 55
	sta [$C8.b]		; 87 C8
	inc $A0B7.w,X		; FE B7 A0
	brk $FC.b		; 00 FC
	brk $08.b		; 00 08
	xce		; FB
	sed		; F8
	tax		; AA
	ldx $FE.b		; A6 FE
	ora ($A0.b,X)		; 01 A0
	jsr ($609F.w,X)		; FC 9F 60
	lda $C0D50A.l,X		; BF 0A D5 C0
	bra  -8.b		; 80 F8
	ora $84.b,X		; 15 84
	jsr ($7F5E.w,X)		; FC 5E 7F
	cpx #$F8.b		; E0 F8
	asl $FE.b,X		; 16 FE
	sed		; F8
	ora #$E0.b		; 09 E0
	sed		; F8
	ora ($E1.b,S),Y		; 13 E1
	adc ($FD.b,X)		; 61 FD
	cop $9E.b		; 02 9E
	sbc $08F710.l		; EF 10 F7 08
	inc $11EE.w,X		; FE EE 11
	sbc $F8E0FF.l,X		; FF FF E0 F8
	ora $3A4B85.l		; 0F 85 4B 3A
	sbc $AD.b		; E5 AD
	adc $49.b,S		; 63 49
	lda [$A6.b]		; A7 A6
	cmp ($6A.b),Y		; D1 6A
	cmp $D3A5.w,Y		; D9 A5 D3
	cmp $D7BB47.l		; CF 47 BB D7
	and $FE1F00.l,X		; 3F 00 1F FE
	ora $FC0700.l		; 0F 00 07 FC
	sed		; F8
	sbc $1EB9FE.l,X		; FF FE B9 1E
	cpy $528F.w		; CC 8F 52
	sta $AD.b,S		; 83 AD
	cmp $D2.b		; C5 D2
	sbc $AB.b,S		; E3 AB
	sbc ($3F.b,S),Y		; F3 3F
	lsr $D6.b		; 46 D6
	sbc $EB.b,S		; E3 EB
	sbc ($E0.b),Y		; F1 E0
	brk $F0.b		; 00 F0
	pha		; 48
	plx		; FA
	jsr ($E0AA.w,X)		; FC AA E0
	inc $60FE.w,X		; FE FE 60
	sbc $FEFC5C.l,X		; FF 5C FC FE
	ldy #$F8.b		; A0 F8
	ora $7130F2.l		; 0F F2 30 71
	ora $FA82.w		; 0D 82 FA
	ora $7E.b		; 05 7E
	dec $01.b,X		; D6 01
	ora ($1E.b,X)		; 01 1E
	rts		; 60

	sed		; F8
	ora ($26.b,S),Y		; 13 26
	iny		; C8
	tda		; 7B
	sty $B7.b		; 84 B7
	iny		; C8
	asl A		; 0A
	sbc $804FFE.l,X		; FF FE 4F 80
	beq  14.b		; F0 0E
	lda ($51.b),Y		; B1 51
	inc $EFD6.w		; EE D6 EF
	phk		; 4B
	tda		; 7B
	bit $FF.b		; 24 FF
	pea $DB3C.w		; F4 3C DB
	clc		; 18
	sbc [$C3.b]		; E7 C3
	bit $AD34.w,X		; 3C 34 AD
	tsb $84EA.w		; 0C EA 84
	brk $C3.b		; 00 C3
	sbc ($FF.b),Y		; F1 FF
	brk $E7.b		; 00 E7
	iny		; C8
	bit $0CC3.w,X		; 3C C3 0C
	sbc ($B3.b,S),Y		; F3 B3
	jmp ($E659.w,X)		; 7C 59 E6
	lda $BA.b		; A5 BA
	sbc $1877A5.l,X		; FF A5 77 18
	txs		; 9A
	adc $F76D.w		; 6D 6D F7
	lda $AA.b,X		; B5 AA
	and $A43D.w		; 2D 3D A4
	pea $385A.w		; F4 5A 38
	bit $A8F8.w,X		; 3C F8 A8
	and $FCC2.w,X		; 3D C2 FC
	ora $20DFE0.l,X		; 1F E0 DF 20
	jsr ($021B.w,X)		; FC 1B 02
	sta $7A.b,X		; 95 7A
	dex		; CA
	sbc $25.b,X		; F5 25
	dec A		; 3A
	bvc -97.b		; 50 9F
	ldx #$F8.b		; A2 F8
	phd		; 0B
	cpy #$FF.b		; C0 FF
	sbc $34D5D8.l,X		; FF D8 D5 34
	inx		; E8
	clc		; 18
	cmp $E627.w,Y		; D9 27 E6
	inc A		; 1A
	eor ($AF.b),Y		; 51 AF
	plb		; AB
	eor [$54.b],Y		; 57 54
	xce		; FB
	and $F8.b,S		; 23 F8
	tax		; AA
	sbc $080B.w,X		; FD 0B 08
	sbc $09F859.l,X		; FF 59 F8 09
	tax		; AA
	eor $55.b,S		; 43 55
	sbc $AA296F.l,X		; FF 6F 29 AA
	brk $55.b		; 00 55
	eor $AA.b		; 45 AA
	ora $D5.b,S		; 03 D5
	cmp $FA.b,X		; D5 FA
	xce		; FB
	lda $0CFD.w,X		; BD FD 0C
	jsr ($ECBA.w,X)		; FC BA EC
	sbc $1A2A04.l,X		; FF 04 2A 1A
	sbc ($02.b),Y		; F1 02
	brk $DF.b		; 00 DF
	cpx #$47.b		; E0 47
	sed		; F8
	tax		; AA
	lda $55.b,X		; B5 55
	sbc $8A7A0A.l,X		; FF 0A 7A 8A
	sbc $FE49.w,X		; FD 49 FE
	bcc  -1.b		; 90 FF
	ror A		; 6A
	adc $F9FC80.l,X		; 7F 80 FC F9
	inc $FF.b,X		; F6 FF
	adc $70CFF8.l,X		; 7F F8 CF 70
	tyx		; BB
	jmp ($0CF7.w,X)		; 7C F7 0C
	eor [$AC.b],Y		; 57 AC
	plb		; AB
	jmp $1AB857.l		; 5C 57 B8 1A
	sbc $5005.w,X		; FD 05 50
	sbc $F040C3.l,X		; FF C3 40 F0
	asl $DC.b,X		; 16 DC
	pea $F0C0.w		; F4 C0 F0
	ora ($F4.b),Y		; 11 F4
	asl A		; 0A
	nop		; EA
	trb $F4.b		; 14 F4
	phd		; 0B
	sta [$07.b]		; 87 07
	nop		; EA
	ora $D5.b,X		; 15 D5
	rol A		; 2A
	jsr ($07F8.w,X)		; FC F8 07
	jmp ($6683.w,X)		; 7C 83 66
	sbc $F0BDFF.l,X		; FF FF BD F0
	ora $FD75.w		; 0D 75 FD
	lda $ED.b		; A5 ED
	rtl		; 6B

	adc [$02.b]		; 67 02
	sta ($65.b),Y		; 91 65
	ldy $6EAA.w		; AC AA 6E
	ora $F7.b		; 05 F7
	ora $FF03BE.l,X		; 1F BE 03 FF
	ora $1D02.w		; 0D 02 1D
	cop $1B.b		; 02 1B
	adc $001300.l		; 6F 00 13 00
	ora ($F0.b),Y		; 11 F0
	sbc $FFE978.l,X		; FF 78 E9 FF
	eor [$78.b],Y		; 57 78
	plb		; AB
	lda $B75F56.l,X		; BF 56 5F B7
	lda $91CC4C.l,X		; BF 4C CC 91
	sbc $6C51F0.l		; EF F0 51 6C
	bit $DCF4.w		; 2C F4 DC
	clv		; B8
	nop		; EA
	eor $CCFCA0.l,X		; 5F A0 FC CC
	and ($D1.b,S),Y		; 33 D1
	ora $EC2EFF.l		; 0F FF 2E EC
	ora ($3C.b,S),Y		; 13 3C
	ora $40.b,S		; 03 40
	and $1CDF30.l		; 2F 30 DF 1C
	and [$C6.b]		; 27 C6
	sta ($BF.b,S),Y		; 93 BF
	and $E2.b		; 25 E2
	and [$C4.b],Y		; 37 C4
	ldx $9DC3.w		; AE C3 9D
	inc $EA.b		; E6 EA
	pea $64F8.w		; F4 F8 64
	xba		; EB
	jsr ($F4FD.w,X)		; FC FD F4
	ldx #$E8.b		; A2 E8
	ora $F860.w		; 0D 60 F8
	ora ($FD.b),Y		; 11 FD
	ora $FC.b,S		; 03 FC
	cop $FF.b		; 02 FF
	inc $FF04.w,X		; FE 04 FF
	asl $20.b		; 06 20
	adc $FF.b,X		; 75 FF
	sta ($C4.b,X)		; 81 C4
	sbc ($FE.b,S),Y		; F3 FE
	cop $58.b		; 02 58
	sbc $60DF.w,X		; FD DF 60
	sbc ($1F.b,X)		; E1 1F
	pha		; 48
	nop		; EA
	inx		; E8
	eor $AA.b,X		; 55 AA
	tax		; AA
	eor $80.b,X		; 55 80
	adc $489FE0.l,X		; 7F E0 9F 48
	plp		; 28
	lda $FCB9BD.l,X		; BF BD B9 FC
	plx		; FA
	rts		; 60

	ldx $FF.b		; A6 FF
	ora $E0FC.w,Y		; 19 FC E0
	and $E313E8.l,X		; 3F E8 13 E3
	inc $96.b		; E6 96
	sbc ($E6.b),Y		; F1 E6
	inc $B3.b		; E6 B3
	sbc [$DF.b],Y		; F7 DF
	sbc [$55.b],Y		; F7 55
	sbc $F55FA0.l,X		; FF A0 5F F5
	asl A		; 0A
	cmp ($FC.b),Y		; D1 FC
	inc $19.b		; E6 19
	sbc [$08.b],Y		; F7 08
	iny		; C8
	jsr ($08CA.w,X)		; FC CA 08
	sbc $FF.b,S		; E3 FF
	plx		; FA
	brk $BF.b		; 00 BF
	jmp.w [$80AA]		; DC AA 80
	eor ($C1.b,X)		; 41 C1
	bit $09EF.w		; 2C EF 09
	inc $C208.w,X		; FE 08 C2
	cmp $F7.b,S		; C3 F7
	dec $94FC.w,X		; DE FC 94
	cmp ($3E.b,X)		; C1 3E
	sbc $A9F710.l		; EF 10 F7 A9
	sbc $54CFFF.l,X		; FF FF CF 54
	adc [$BA.b]		; 67 BA
	and $2F2B.w		; 2D 2B 2F
	sta $CD4D16.l,X		; 9F 16 4D CD
	asl $F0.b,X		; 16 F0
	eor $BC.b		; 45 BC
	beq  15.b		; F0 0F
	sbc $807800.l,X		; FF 00 78 80
	bmi -64.b		; 30 C0
	inc $E019.w,X		; FE 19 E0
	cmp $F032.w		; CD 32 F0
	ora $FFFFFC.l		; 0F FC FF FF
	ora $55.b,S		; 03 55
	sbc $F5F74A.l		; EF 4A F7 F5
	plx		; FA
	txa		; 8A
	sta $27FD.w		; 8D FD 27
	eor [$5A.b],Y		; 57 5A
	tay		; A8
	and [$DF.b],Y		; 37 DF
	dec $E1.b		; C6 E1
	ora $FC8A.w,X		; 1D 8A FC
	bvs   6.b		; 70 06
	eor $48A0.w,X		; 5D A0 48
	ora $FFE2.w,X		; 1D E2 FF
	sbc $A5FA2A.l,X		; FF 2A FA A5
	cmp $BE4E.w,X		; DD 4E BE
	lda $5D.b		; A5 5D
	adc ($FE.b)		; 72 FE
	cmp $F2CD.w		; CD CD F2
	adc ($5B.b)		; 72 5B
	ldy $4C.b		; A4 4C
	cmp [$05.b]		; C7 05
	rol $FC.b		; 26 FC
	and ($00.b)		; 32 00
	sta $FF97.w		; 8D 97 FF
	sbc $4BB7B5.l,X		; FF B5 B7 4B
	phk		; 4B
	adc $7D.b,X		; 75 7D
	iny		; C8
	cmp $32A7A5.l		; CF A5 A7 32
	ora $DD.b,S		; 03 DD
	ora ($27.b,X)		; 01 27
	asl $FEFF.w,X		; 1E FF FE
	pha		; 48
	brk $B4.b		; 00 B4
	brk $82.b		; 00 82
	brk $30.b		; 00 30
	brk $58.b		; 00 58
.ACCU 8
	sep #$E5		; E2 E5
	lsr $FF.b,X		; 56 FF
	nop		; EA
	sbc $01FF3F.l,X		; FF 3F FF 01
	rol $D7D7.w,X		; 3E D7 D7
	tax		; AA
	txa		; 8A
	cmp ($C1.b),Y		; D1 C1
	jsr $D4E0.w		; 20 E0 D4
	sta ($FF.b,X)		; 81 FF
	inc $C1FF.w,X		; FE FF C1
	brk $28.b		; 00 28
	brk $75.b		; 00 75
	brk $3E.b		; 00 3E
	txs		; 9A
	sbc $FE.b,S		; E3 FE
	ora ($7E.b,X)		; 01 7E
	sta ($9F.b,X)		; 81 9F
	and $E7E080.l,X		; 3F 80 E0 E7
	sec		; 38
	tay		; A8
	sta $A44159.l		; 8F 59 41 A4
	and ($90.b,X)		; 21 90
	sbc ($66.b,X)		; E1 66
	inc $BE7E.w		; EE 7E BE
	and [$E0.b],Y		; 37 E0
	sbc ($0C.b,S),Y		; F3 0C
	sbc $9C6B0B.l,X		; FF 0B 6B 9C
	bit $DF.b		; 24 DF
	ora ($ED.b),Y		; 11 ED
	.db $82, $AA, $10		; 82 AA 10
	brk $88.b		; 00 88
	inx		; E8
	sbc [$FE.b],Y		; F7 FE
	adc $F4D17E.l,X		; 7F 7E D1 F4
	eor $FF.b,X		; 55 FF
	rol A		; 2A
	sbc $DF7FBF.l,X		; FF BF 7F DF
	and $CAF515.l,X		; 3F 15 F5 CA
	plx		; FA
	beq  16.b		; F0 10
	jsr $FF89.w		; 20 89 FF
	sbc $CFB2B6.l,X		; FF B6 B2 CF
	inc $E03F.w,X		; FE 3F E0
	ror $E2.b,X		; 76 E2
	sty $C2.b,X		; 94 C2
.ACCU 8
	sep #$E1		; E2 E1
	nop		; EA
	sbc ($57.b,X)		; E1 57
	bvc -86.b		; 50 AA
	ldy #$C0.b		; A0 C0
	tda		; 7B
	inc $1EFF.w		; EE FF 1E
	ora ($3E.b,X)		; 01 3E
	ora ($20.b,X)		; 01 20
.ACCU 8
	sep #$AF		; E2 AF
	brk $5F.b		; 00 5F
	inc $C0FF.w,X		; FE FF C0
	ply		; 7A
	eor $BFE8.w,X		; 5D E8 BF
	eor $9E.b,X		; 55 9E
	tax		; AA
	wai		; CB
	ora $EBE1.w,Y		; 19 E1 EB
	and $DF.b,X		; 35 DF
	inx		; E8
	ora $7A.b,X		; 15 7A
	and $0E.b,X		; 35 0E
	rts		; 60

	bra   0.b		; 80 00
	sbc ($F4.b)		; F2 F4
	mvp $E4,$24		; 44 24 E4
	sta $60BFFF.l,X		; 9F FF BF 60
	sbc $A05F10.l		; EF 10 5F A0
	adc $9C.b,S		; 63 9C
	lda $FEFE.w,Y		; B9 FE FE
	eor [$A7.b]		; 47 A7
	eor $FDAB.w,Y		; 59 AB FD
	cmp $F7.b,X		; D5 F7
	stz $09F8.w,X		; 9E F8 09
	clv		; B8
	jmp.w [$22FF]		; DC FF 22
	sbc $44.b,S		; E3 44
	sbc #$1F.b		; E9 1F
	cpx #$67.b		; E0 67
	sed		; F8
	rti		; 40

	beq  15.b		; F0 0F
	ply		; 7A
	sbc $DD7F0F.l		; EF 0F 7F DD
	and [$BF.b],Y		; 37 BF
	adc $31FA3F.l		; 6F 3F FA 31
	inc $FF9C.w		; EE 9C FF
	ror $BF.b		; 66 BF
	txs		; 9A
	clc		; 18
	cpx #$3C.b		; E0 3C
	php		; 08
	brk $FC.b		; 00 FC
	inc $000E.w,X		; FE 0E 00
	adc $0003A0.l,X		; 7F A0 03 00
	ora $7D00.w,Y		; 19 00 7D
	brk $AA.b		; 00 AA
	sbc $2AFF3E.l,X		; FF 3E FF 2A
	sbc $E9FF55.l,X		; FF 55 FF E9
	lda $E8.b,S		; A3 E8
	phd		; 0B
	sty $A4E1.w		; 8C E1 A4
	dec A		; 3A
	ora $0D.b		; 05 0D
	cop $86.b		; 02 86
	sbc $4B812B.l,X		; FF 2B 81 4B
	rti		; 40

	sta [$80.b]		; 87 80
	wai		; CB
	cpy #$A6.b		; C0 A6
	lda ($D5.b,X)		; A1 D5
	cmp ($7A.b)		; D2 7A
	xba		; EB
	asl $C4F1.w		; 0E F1 C4
	sbc $3E3FFC.l,X		; FF FC 3F 3E
	and $7CA300.l		; 2F 00 A3 7C
	ora $FA.b,X		; 15 FA
	txy		; 9B
	jmp ($C0FF.w,X)		; 7C FF C0
	eor $B6.b		; 45 B6
	tya		; 98
	tda		; 7B
	wai		; CB
	tsa		; 3B
	ldy $5C.b		; A4 5C
	ora $B7.b,S		; 03 B7
	ora $F7CAFD.l		; 0F FD CA F7
	php		; 08
	xce		; FB
	tsb $FE.b		; 04 FE
	jsr ($E970.w,X)		; FC 70 E9
	nop		; EA
	ora $0CF5.w,Y		; 19 F5 0C
	sbc $1EE20E.l,X		; FF 0E E2 1E
	pea $BA0B.w		; F4 0B BA
	eor $15.b		; 45 15
	nop		; EA
	bra  96.b		; 80 60
	sbc ($F8.b,X)		; E1 F8
	ora [$FA.b]		; 07 FA
	sbc $DD74EA.l,X		; FF EA 74 DD
	bmi -21.b		; 30 EB
	sta [$64.b],Y		; 97 64
	adc $F691.w		; 6D 91 F6
	and [$C6.b]		; 27 C6
	sbc $D42B.w,Y		; F9 2B D4
	ora [$0F.b]		; 07 0F
	sbc $FC53F8.l		; EF F8 53 FC
	tay		; A8
	lda $FE01C9.l,X		; BF C9 01 FE
	and [$D8.b]		; 27 D8
	cpx #$FE.b		; E0 FE
	lda $40BFFF.l,X		; BF FF BF 40
	and ($3F.b)		; 32 3F
	lda $C2D607.l		; AF 07 D6 C2
	ora ($F0.b),Y		; 11 F0
	stx $D57F.w		; 8E 7F D5
	rol A		; 2A
	ror $F081.w,X		; 7E 81 F0
	inc $EA34.w,X		; FE 34 EA
	cld		; D8
.ACCU 16
.INDEX 16
	rep #$3D		; C2 3D
	beq  15.b		; F0 0F
	dec $BBFE.w,X		; DE FE BB
	tda		; 7B
	adc #$A2E1.w		; 69 E1 A2
	ora $B4800F.l		; 0F 0F 80 B4
	bit $AA.b,X		; 34 AA
	dec $A83F.w,X		; DE 3F A8
	eor [$52.b],Y		; 57 52
	lda $8AFFBF.l		; AF BF FF 8A
	sbc ($1E.b,X)		; E1 1E
	bra 127.b		; 80 7F
	bit $CB.b,X		; 34 CB
	stz $A3FE.w		; 9C FE A3
	jsr $80D0.w		; 20 D0 80
	lsr $D748.w		; 4E 48 D7
	ora $AA0510.l		; 0F 10 05 AA
	.db $82, $2B, $FF		; 82 2B FF
	sbc $DF12.w		; ED 12 DF
	sta [$45.b]		; 87 45
	cpx $B04F.w		; EC 4F B0
	ldy $7D82.w,X		; BC 82 7D
	php		; 08
	sbc $F816.w		; ED 16 F8
	lda $009F34.l		; AF 34 9F 00
	rol A		; 2A
	eor $F5.b,X		; 55 F5
	plx		; FA
	jmp $40A8FF.l		; 5C FF A8 40
	sbc $C952.w,X		; FD 52 C9
	ldx $E0D4.w		; AE D4 E0
	inc $AAF8.w,X		; FE F8 AA
	cmp $10F7F1.l,X		; DF F1 F7 10
	bne  15.b		; D0 0F
	adc $0D5B18.l,X		; 7F 18 5B 0D
	lda $1E.b		; A5 1E
	sbc ($0B.b,S),Y		; F3 0B
	sed		; F8
	tsb $84.b		; 04 84
	mvn $B2,$AB		; 54 AB B2
	inc $02F1.w,X		; FE F1 02
	cpx #$FC06.w		; E0 06 FC
	inc $45FC.w,X		; FE FC 45
	lsr $B5.b		; 46 B5
	sta ($52.b,X)		; 81 52
	adc $AD10F8.l,X		; 7F F8 10 AD
	bit $F85B.w,X		; 3C 5B F8
	ldy $17FC.w		; AC FC 17
	bra  -2.b		; 80 FE
	eor [$B8.b]		; 47 B8
	sta ($AF.b,X)		; 81 AF
	sbc $EF107E.l,X		; FF 7E 10 EF
	bit $F8C3.w,X		; 3C C3 F8
	sbc ($A2.b)		; F2 A2
	nop		; EA
	xce		; FB
	stz $46FD.w		; 9C FD 46
	sbc $9FEF.w,Y		; F9 EF 9F
	adc $7F16BB.l,X		; 7F BB 16 7F
	sei		; 78
	cmp $03731C.l,X		; DF 1C 73 03
	jmp ($E16E.w)		; 6C 6E E1
	sed		; F8
	cpy $D1.b		; C4 D1
	ora $C3E0.w,Y		; 19 E0 C3
	ora $03F232.l,X		; 1F 32 F2 03
	jsr ($BBBF.w,X)		; FC BF BB
	ror A		; 6A
	sbc $B619.w		; ED 19 B6
	jsr ($FAFF.w,X)		; FC FF FA
	sbc $DFD665.l,X		; FF 65 D6 DF
	cmp ($15.b),Y		; D1 15
	sta [$04.b],Y		; 97 04
	tas		; 1B
	tsb $05.b		; 04 05
	cop $02.b		; 02 02
	ora ($A3.b,X)		; 01 A3
	brk $1F.b		; 00 1F
	jsr $00F9.w		; 20 F9 00
	ldy $1650.w		; AC 50 16
	inx		; E8
	sec		; 38
	rtl		; 6B

	cmp $FA.b,X		; D5 FA
	phd		; 0B
	rti		; 40

	rti		; 40

.ACCU 8
	sep #$EA		; E2 EA
	ora $E0.b,X		; 15 E0
	sta $44CFF0.l,X		; 9F F0 CF 44
	sed		; F8
	phd		; 0B
	beq  -1.b		; F0 FF
	inx		; E8
	inc $E1E6.w,X		; FE E6 E1
	cmp ($D0.b,S),Y		; D3 D0
	inc $F3E9.w		; EE E9 F3
	beq -23.b		; F0 E9
	inx		; E8
	pea $1EDF.w		; F4 DF 1E
	pea $E8E8.w		; F4 E8 E8
	jsr ($1FFC.w,X)		; FC FC 1F
	inc $C3.b		; E6 C3
	ora $03C5E2.l		; 0F E2 C5 03
	brk $15.b		; 00 15
	rol $6CFC.w,X		; 3E FC 6C
	adc $733FC5.l,X		; 7F C5 3F 73
	sta $0B7472.l		; 8F 72 74 0B
	dec A		; 3A
	ora $5A.b		; 05 5A
	inc $2FFB.w,X		; FE FB 2F
	jsr $0FF8.w		; 20 F8 0F
	sta $9D.b,X		; 95 9D
	tax		; AA
	inc $FF7F.w		; EE 7F FF
	cmp $D5.b,X		; D5 D5
	sbc ($D9.b,X)		; E1 D9
	sbc $28.b,X		; F5 28
	inx		; E8
	ora $F515C6.l,X		; 1F C6 15 F5
	sta $EE62.w,X		; 9D 62 EE
	ora ($EA.b),Y		; 11 EA
	cmp $2A.b,X		; D5 2A
	sbc ($C3.b),Y		; F1 C3
	and $17E80A.l,X		; 3F 0A E8 17
	jsr ($5F55.w,X)		; FC 55 5F
	phx		; DA
	phx		; DA
	lda $A5.b		; A5 A5
	xce		; FB
	xce		; FB
	bit $E0FC.w,X		; 3C FC E0
	eor ($46.b),Y		; 51 46
	asl $B001.w		; 0E 01 B0
	eor $25DAA0.l,X		; 5F A0 DA 25
	lda $C3.b		; A5 C3
	tsb $5A.b		; 04 5A
	xce		; FB
	tsb $E0.b		; 04 E0
	rti		; 40

	lda $3FFFBF.l,X		; BF BF FF 3F
	beq -91.b		; F0 A5
	plx		; FA
	and ($3F.b),Y		; 31 3F
	jmp $A1A95F.l		; 5C 5F A9 A1
	bvc  32.b		; 50 20
	and $83D0.w		; 2D D0 83
	ror $FB0D.w,X		; 7E 0D FB
	ldy $C03F.w		; AC 3F C0
	nop		; EA
	lda ($5E.b,X)		; A1 5E
	sta $17E9FC.l,X		; 9F FC E9 17
	sbc ($FF.b)		; F2 FF
	sbc $07F90F.l		; EF 0F F9 07
	trb $EB.b		; 14 EB
	lsr A		; 4A
	sbc $95.b,X		; F5 95
	plx		; FA
	asl A		; 0A
	ora $9766.w		; 0D 66 97
	sty $F8.b		; 84 F8
	phd		; 0B
	ora $F0FFE0.l		; 0F E0 FF F0
	jsr $EA62.w		; 20 62 EA
	rtl		; 6B

	xba		; EB
	and $F5.b,X		; 35 F5
	tya		; 98
	sei		; 78
	bit $86FC.w		; 2C FC 86
	cmp ($20.b,S),Y		; D3 20
	ror $BF47.w,X		; 7E 47 BF
	inx		; E8
	xba		; EB
	trb $88.b		; 14 88
	clv		; B8
	inc $E1C4.w		; EE C4 E1
	cpx #$DEAA.w		; E0 AA DE
	eor $15805F.l,X		; 5F 5F 80 15
	ora $0A.b,X		; 15 0A
	bmi   0.b		; 30 00
	plp		; 28
	sbc ($C6.b,X)		; E1 C6
	jsr ($80A0.w,X)		; FC A0 80
	ora $EA.b,X		; 15 EA
	ora #$0B.b		; 09 0B
	sbc $E0.b,X		; F5 E0
	jsr ($BFFF.w,X)		; FC FF BF
	lda $0AEA1E.l,X		; BF 1E EA 0A
	ror $A6DC.w,X		; 7E DC A6
	inx		; E8
	ora #$0E.b		; 09 0E
	phx		; DA
	jmp.w [$FCE0]		; DC E0 FC
	sbc [$FF.b],Y		; F7 FF
	plx		; FA
	sbc $FEB8D4.l,X		; FF D4 B8 FE
	stz $FE.b,X		; 74 FE
	eor $7A.b,X		; 55 7A
	bcc -48.b		; 90 D0
	ora $55FEC0.l		; 0F C0 FE 55
	sbc $FEAA.w,X		; FD AA FE
	lsr $282B.w,X		; 5E 2B 28
	ldx $1CEC.w,Y		; BE EC 1C
	inc $FE.b		; E6 FE
	sty $FEE2.w		; 8C E2 FE
	rti		; 40

	cmp $FEE0.w,Y		; D9 E0 FE
	nop		; EA
	sta $C8B0B1.l		; 8F B1 B0 C8
	phd		; 0B
	bcs -42.b		; B0 D6
	eor $FEBEFF.l,X		; 5F FF BE FE
	sbc $F5.b,X		; F5 F5
	cop $30.b		; 02 30
	sbc ($E0.b,S),Y		; F3 E0
	sbc $F142CA.l,X		; FF CA 42 F1
	sbc $47E0FB.l,X		; FF FB E0 47
	rti		; 40

	ldx #$53A0.w		; A2 A0 53
	bvc -88.b		; 50 A8
	tay		; A8
	cpx #$40FE.w		; E0 FE 40
	lda $FFEFA0.l,X		; BF A0 EF FF
	eor $A8AF50.l,X		; 5F 50 AF A8
	eor [$E0.b],Y		; 57 E0
	inc $03E3.w,X		; FE E3 03
	sbc ($02.b)		; F2 02
	and $1700.w		; 2D 00 17
	ora ($05.b,X)		; 01 05
	sta ($FD.b,S),Y		; 93 FD
	ora $8A.b		; 05 8A
	txa		; 8A
	cpx #$D111.w		; E0 11 D1
	sbc $C139.w,X		; FD 39 C1
	inc $FA05.w,X		; FE 05 FA
	txa		; 8A
	pea $75EF.w		; F4 EF 75
	cpx #$2FAA.w		; E0 AA 2F
	sta $87.b		; 85 87
	lda $7F7F3F.l,X		; BF 3F 7F 7F
	cpy #$AFFE.w		; C0 FE AF
	phd		; 0B
	ror $8750.w,X		; 7E 50 87
	sei		; 78
	cli		; 58
	lda $C048.w,Y		; B9 48 C0
	sbc $FAFA.w,X		; FD FA FA
	jsr ($FEFC.w,X)		; FC FC FE
	stz $EB.b		; 64 EB
	sbc $F1FA5B.l,X		; FF 5B FA F1
	ora $0C.b		; 05 0C
	sbc ($3C.b),Y		; F1 3C
	iny		; C8
	ora #$40.b		; 09 40
	sbc $E600FF.l,X		; FF FF 00 E6
	asl $1D65.w,X		; 1E 65 1D
	ora ($0E.b)		; 12 0E
	bit #$07.b		; 89 07
	eor $C003.w		; 4D 03 C0
	cmp [$E2.b]		; C7 E2
	sbc ($F5.b,X)		; E1 F5
	ldy #$F23F.w		; A0 3F F2
	.db $62, $D4, $BE		; 62 D4 BE
	ror $BA.b,X		; 76 BA
	ora $FEA200.l		; 0F 00 A2 FE
	and [$07.b]		; 27 07
	jsr ($B70F.w,X)		; FC 0F B7
	ldx $DA80.w		; AE 80 DA
	cmp $6D.b		; C5 6D
.ACCU 8
	sep #$6E		; E2 6E
	sbc ($A5.b,X)		; E1 A5
	.db $62, $FD, $E9		; 62 FD E9
	cpx $07.b		; E4 07
	rtl		; 6B

	cmp #$80.b		; C9 80
	adc $E03FC0.l,X		; 7F C0 3F E0
	ora $8085FE.l,X		; 1F FE 85 80
	lda ($02.b,X)		; A1 02
	rep #$C0		; C2 C0
	cpx #$C0AF.w		; E0 AF C0
	cmp ($80.b,X)		; C1 80
	sep #$42		; E2 42
	adc $E6D7.w,Y		; 79 D7 E6
	lda $0BF0.w,X		; BD F0 0B
	eor $03.b,X		; 55 03
	tay		; A8
	cli		; 58
	sbc ($FC.b),Y		; F1 FC
	ora $C0.b,S		; 03 C0
	inc $FE.b		; E6 FE
	sed		; F8
	ora $1B17F0.l		; 0F F0 17 1B
	ldy $45FA.w		; AC FA 45
	eor $16F7B1.l,X		; 5F B1 F7 16
	sbc $60ECD0.l,X		; FF D0 EC 60
	sbc ($26.b),Y		; F1 26
	jsr ($FFA0.w,X)		; FC A0 FF
	lda $CD.b,S		; A3 CD
	inc $FEB2.w,X		; FE B2 FE
	sbc $071792.l,X		; FF 92 17 07
	rtl		; 6B

	sta $4A.b,S		; 83 4A
	jsr ($FDD2.w,X)		; FC D2 FD
	and #$13.b		; 29 13
	stp		; DB
	bra  58.b		; 80 3A
	php		; 08
	inx		; E8
.ACCU 8
	sep #$A0		; E2 A0
	sbc $97C962.l,X		; FF 62 C9 97
	bra -115.b		; 80 8D
	ldy #$0BF8.w		; A0 F8 0B
	inc $7C0F.w,X		; FE 0F 7C
	cpx #$09F8.w		; E0 F8 09
	mvp $A8,$00		; 44 00 A8
	brk $DA.b		; 00 DA
	jsr $10ED.w		; 20 ED 10
	ldx #$F55C.w		; A2 5C F5
	sbc $FE03E0.l,X		; FF E0 03 FE
	cmp $F880.w,Y		; D9 80 F8
	ora $D3502A.l		; 0F 2A 50 D3
	cpx #$B0A8.w		; E0 A8 B0
	cli		; 58
	bvc -74.b		; 50 B6
	ldy #$E15F.w		; A0 5F E1
	pla		; 68
	eor [$69.b]		; 47 69
	bcs -110.b		; B0 92
	stz $E2C4.w		; 9C C4 E2
	lsr $F6C4.w,X		; 5E C4 F6
	sec		; 38
	cmp [$FF.b]		; C7 FF
	inc $FF60.w,X		; FE 60 FF
	tax		; AA
	clc		; 18
	ora $0D.b,X		; 15 0D
	asl A		; 0A
	ora [$04.b]		; 07 04
	dec $61F1.w		; CE F1 61
	bra -112.b		; 80 90
	cpx #$EFEC.w		; E0 EC EF
	beq  48.b		; F0 30
	sed		; F8
	ora [$FD.b]		; 07 FD
	cop $C1.b		; 02 C1
	sed		; F8
	ora #$3F.b		; 09 3F
	cpy #$958B.w		; C0 8B 95
	bra  95.b		; 80 5F
	sbc $A7C0AB.l,X		; FF AB C0 A7
	rts		; 60

	adc $997AE0.l		; 6F E0 7A 99
	lda $1E20.w,X		; BD 20 1E
	tsb $F0E4.w		; 0C E4 F0
	ora #$5E.b		; 09 5E
	cpx $FABE.w		; EC BE FA
	clv		; B8
	dec $70.b,X		; D6 70
	sbc ($40.b)		; F2 40
	and $800F70.l,X		; 3F 70 0F 80
	sed		; F8
	ora $0BF8E0.l		; 0F E0 F8 0B
	cpx #$13F0.w		; E0 F0 13
	and $FFDE2F.l		; 2F 2F DE FF
	sbc $CDAD1E.l,X		; FF 1E AD CD
	lda $C1.b,S		; A3 C1
	eor $3362.w,X		; 5D 62 33
	and $F30010.l,X		; 3F 10 00 F3
	bmi -48.b		; 30 D0
	brk $E1.b		; 00 E1
	ora $80.b		; 05 80
	brk $F2.b		; 00 F2
	php		; 08
	cmp ($62.b),Y		; D1 62
	sty $E2.b		; 84 E2
	cmp $CF30FF.l,X		; DF FF 30 CF
	rep #$C0		; C2 C0
	cpx $E4.b		; E4 E4
	rol $F2.b		; 26 F2
	adc $1F9F7F.l,X		; 7F 7F 9F 1F
	sbc [$97.b],Y		; F7 97
	sbc $FB4D.w		; ED 4D FB
	sbc $1B003F.l,X		; FF 3F 00 1B
	bit $C5.b		; 24 C5
	cpx #$E800.w		; E0 00 E8
	brk $72.b		; 00 72
	bra  74.b		; 80 4A
	cmp ($D7.b,X)		; C1 D7
	and ($57.b),Y		; 31 57
	sbc $AA33C3.l,X		; FF C3 33 AA
	txy		; 9B
	stp		; DB
	cmp #$D4.b		; C9 D4
	cmp $98AB.w		; CD AB 98
	lda [$95.b]		; A7 95
	stz $F0.b		; 64 F0
	beq -61.b		; F0 C3
	ora $0778FE.l		; 0F FE 78 07
	sec		; 38
	ora [$3C.b]		; 07 3C
	ora $FA.b,S		; 03 FA
	adc [$3D.b],Y		; 77 3D
	jsr ($0508.w,X)		; FC 08 05
	rti		; 40

	cmp #$55.b		; C9 55
	sbc $FAFA3F.l,X		; FF 3F FA FA
	sbc $FA5D.w		; ED 5D FA
	ldx $85.b		; A6 85
	lda $BD.b,S		; A3 BD
	phd		; 0B
	dey		; 88
	inc $42E8.w,X		; FE E8 42
	lda $EA3CE1.l,X		; BF E1 3C EA
	tad		; 5B
	jsr $3EEE.w		; 20 EE 3E
	nop		; EA
	cmp $E80BB0.l		; CF B0 0B E8
	inc $E066.w,X		; FE 66 E0
	lda $E0FC.w,X		; BD FC E0
	sed		; F8
	phd		; 0B
	ora $FFBA7B.l,X		; 1F 7B BA FF
	sta $0AF8E0.l,X		; 9F E0 F8 0A
	plb		; AB
	cpy $39A5.w		; CC A5 39
	nop		; EA
	sty $F0F6.w		; 8C F6 F0
	lda #$A8.b		; A9 A8
	mvn $E0,$54		; 54 54 E0
	ora $C183E0.l		; 0F E0 83 C1
	inc $FF70.w,X		; FE 70 FF
	ora $FC57FF.l		; 0F FF 57 FC
	lda $62E0E6.l,X		; BF E6 E0 62
	ora ($35.b,X)		; 01 35
	xce		; FB
	cmp #$C8.b		; C9 C8
	ldx $E0.b		; A6 E0
	sta $7D.b		; 85 7D
	eor $FF.b,S		; 43 FF
	cpy #$09E0.w		; C0 E0 09
	iny		; C8
	and [$BA.b],Y		; 37 BA
	plx		; FA
	pla		; 68
	cmp $97AA.w		; CD AA 97
	adc $CF.b,X		; 75 CF
	phk		; 4B
	and $BFBFEA.l,X		; 3F EA BF BF
	ldy #$A0E7.w		; A0 E7 A0
	inc $CE48.w		; EE 48 CE
	lda ($03.b),Y		; B1 03
	phy		; 5A
	eor [$D4.b],Y		; 57 D4
	ora [$AB.b]		; 07 AB
	dec $DD.b,X		; D6 DD
	inc $E160.w,X		; FE 60 E1
	ror $D460.w,X		; 7E 60 D4
	cmp $EA5E20.l,X		; DF 20 5E EA
	cop $14.b		; 02 14
	sbc $C3.b,X		; F5 C3
	sty $68.b,X		; 94 68
	cmp $BD.b,S		; C3 BD
	sta [$5F.b]		; 87 5F
	sbc #$1E.b		; E9 1E
	tsb $EFA7.w		; 0C A7 EF
	ldy $49.b		; A4 49
	tad		; 5B
	rol $B6.b,X		; 36 B6
	inx		; E8
	inx		; E8
	tyx		; BB
	beq  -1.b		; F0 FF
	ply		; 7A
	ldy $A4EA.w,X		; BC EA A4
	sbc $E5FF49.l,X		; FF 49 FF E5
	ora [$B6.b],Y		; 17 B6
	eor #$4D.b		; 49 4D
	sbc ($FF.b)		; F2 FF
	ora $92.b		; 05 92
	sta $6794.w,X		; 9D 94 67
	sbc $BE81.w		; ED 81 BE
	bit $C26B.w		; 2C 6B C2
	jmp $FFB2.w		; 4C B2 FF
	adc ($F8.b,X)		; 61 F8
	ply		; 7A
	cmp ($DA.b)		; D2 DA
	and $3BDAC0.l,X		; 3F C0 DA 3B
	sed		; F8
	tax		; AA
	adc $2FFF.w,Y		; 79 FF 2F
	phy		; 5A
	lda $7C8C.w,Y		; B9 8C 7C
	eor ($FF.b,S),Y		; 53 FF
	rol $FE.b		; 26 FE
	and ($3F.b),Y		; 31 3F
	mvp $07,$A7		; 44 A7 07
	rts		; 60

	lda #$F4.b		; A9 F4
	sbc $9803FE.l,X		; FF FE 03 98
	lda ($C0.b,S),Y		; B3 C0
	brk $B8.b		; 00 B8
	rti		; 40

	lsr A		; 4A
	cpy #$8095.w		; C0 95 80
	lsr A		; 4A
	rti		; 40

	sbc $60B701.l,X		; FF 01 B7 60
	txy		; 9B
	bmi  76.b		; 30 4C
	bit $972B.w,X		; 3C 2B 97
	lsr $D1.b,X		; 56 D1
	.db $62, $DE, $AA		; 62 DE AA
	lsr $BF40.w,X		; 5E 40 BF
	cpx #$241F.w		; E0 1F 24
	tsx		; BA
	adc $20D194.l,X		; 7F 94 D1 20
	sbc ($27.b)		; F2 27
	nop		; EA
	eor $E10C58.l,X		; 5F 58 0C E1
	ora $50.b,X		; 15 50
	ora $229FA8.l		; 0F A8 9F 22
	beq  13.b		; F0 0D
	pei ($AA.b)		; D4 AA
	inc $C080.w		; EE 80 C0
	ora #$52.b		; 09 52
	lda $D1A386.l,X		; BF 86 A3 D1
	inx		; E8
	cpx $FE00.w		; EC 00 FE
	ldx $5859.w,Y		; BE 59 58
	inc $E6.b		; E6 E6
	cmp $F8E0BF.l,X		; DF BF E0 F8
	ora #$41.b		; 09 41
	sbc $19FFA7.l,X		; FF A7 FF 19
	cpx #$0AF8.w		; E0 F8 0A
	adc $99.b,X		; 75 99
	ldy $4DE1.w,X		; BC E1 4D
	phy		; 5A
	sed		; F8
	cmp $FFE0FF.l,X		; DF FF E0 FF
	asl $01E0.w,X		; 1E E0 01
	inc $E0A0.w,X		; FE A0 E0
	sed		; F8
	asl A		; 0A
	sta $A6F8.w,Y		; 99 F8 A6
	rol $97.b		; 26 97
	and ($D2.b,X)		; 21 D2
	bra -123.b		; 80 85
	tay		; A8
	lsr $5D.b,X		; 56 5D
	cpx #$44FC.w		; E0 FC 44
	cmp $9C28.w,Y		; D9 28 9C
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	pld		; 2B
	cpx #$FC.b		; E0 FC
	lsr $CF.b,X		; 56 CF
	lda #$67.b		; A9 67
	eor $B3.b,X		; 55 B3
	dec $C1.b		; C6 C1
	lda $E015.w		; AD 15 E0
	jsr ($EA44.w,X)		; FC 44 EA
	rti		; 40

	cmp $44.b,X		; D5 44
	plx		; FA
	cop $80.b		; 02 80
	inc $ED60.w,X		; FE 60 ED
	inc $FFFF.w,X		; FE FF FF
	sed		; F8
	asl $FFEA.w		; 0E EA FF
	bra -32.b		; 80 E0
	sed		; F8
	asl $90EF.w,X		; 1E EF 90
	trb $FE.b		; 14 FE
	sed		; F8
	asl A		; 0A
	stx $47.b		; 86 47
	tya		; 98
	adc #$B1.b		; 69 B1
	jmp $54AB.w		; 4C AB 54
	sbc #$FF.b		; E9 FF
	sbc $6C8A12.l,X		; FF 12 8A 6C
	lda #$54.b		; A9 54
	ldx $49.b,Y		; B6 49
	sed		; F8
	adc $BA0F96.l,X		; 7F 96 0F BA
	ora $FC17BC.l		; 0F BC 17 FC
	lda $F017EF.l,X		; BF EF 17 F0
	adc $BC17BE.l,X		; 7F BE 17 BC
	phd		; 0B
	cmp $F8.b		; C5 F8
	phd		; 0B
	trb $161C.w		; 1C 1C 16
	ora $F8C4.w,Y		; 19 C4 F8
	phd		; 0B
	ora $0D.b,S		; 03 0D
	tax		; AA
	jsr ($100E.w,X)		; FC 0E 10
	clv		; B8
	asl $7180.w		; 0E 80 71
	ldx #$F0.b		; A2 F0
	tsb $C1FF.w		; 0C FF C1
	bmi -72.b		; 30 B8
	asl $13FF.w		; 0E FF 13
	bra  -8.b		; 80 F8
	ora $CD6D93.l		; 0F 93 6D CD
	tsa		; 3B
	cmp [$29.b]		; C7 29
.ACCU 16
.INDEX 16
	rep #$3D		; C2 3D
	lda $F146.w,Y		; B9 46 F1
	jsr ($785F.w,X)		; FC 5F 78
	txs		; 9A
	ora $0B46.w		; 0D 46 0B
	lsr $11.b,X		; 56 11
	and $21.b,S		; 23 21
	eor $8740.w,Y		; 59 40 87
	asl $F5F1.w,X		; 1E F1 F5
	sbc $BCEC0D.l,X		; FF 0D EC BC
	sed		; F8
	phd		; 0B
	cpy #$0FF8.w		; C0 F8 0F
	adc $1F.b,S		; 63 1F
	ora $BB3E.w,Y		; 19 3E BB
	jmp $EC6DF2.l		; 5C F2 6D EC
	tda		; 7B
	ora $718A0E.l,X		; 1F 0E 8A 71
	ldy $4B.b,X		; B4 4B
	cpx #$EE1F.w		; E0 1F EE
	ora [$FE.b]		; 07 FE
	ora [$FF.b]		; 07 FF
	sbc $14FC68.l,X		; FF 68 FC 14
	sed		; F8
	ror $76F4.w,X		; 7E F4 76
.ACCU 16
	rep #$61		; C2 61
	sta ($38.b,X)		; 81 38
	and [$18.b],Y		; 37 18
	sbc [$10.b]		; E7 10
	sbc $1A0FFF.l		; EF FF 0F 1A
	sbc $19.b		; E5 19
	inc $10.b,X		; F6 10
	sbc $00E708.l,X		; FF 08 E7 00
	sbc $0810C8.l		; EF C8 10 08
	adc $18FE01.l		; 6F 01 FE 18
	asl $0914.w		; 0E 14 09
	tda		; 7B
	lda ($18.b),Y		; B1 18
	sei		; 78
	lda ($4E.b),Y		; B1 4E
	sep #$83		; E2 83
	sbc $ABFE81.l,X		; FF 81 FE AB
	brk $D5.b		; 00 D5
	bra  79.b		; 80 4F
	sty $2C.b		; 84 2C
	lda ($F1.b),Y		; B1 F1
	jmp $44FE.w		; 4C FE 44
	rti		; 40

	sbc $83FC.w,X		; FD FC 83
	sta $C7C0.w,Y		; 99 C0 C7
	bcc -105.b		; 90 97
	bcs  23.b		; B0 17
	bmi  55.b		; 30 37
	jsr ($E0FF.w,X)		; FC FF E0
	txa		; 8A
	jsr ($C038.w,X)		; FC 38 C0
	pla		; 68
	bra -88.b		; 80 A8
	beq -56.b		; F0 C8
	brk $FC.b		; 00 FC
	bcc -56.b		; 90 C8
	ora #$83FE.w		; 09 FE 83
	eor ($00.b,X)		; 41 00
	ror $FE80.w,X		; 7E 80 FE
	.db $62, $F8, $0C		; 62 F8 0C
	sta ($FE.b,X)		; 81 FE
	jsr $10A0.w		; 20 A0 10
	cmp $EF.b,S		; C3 EF
	inc $0EF8.w,X		; FE F8 0E
	jsr ($FCA1.w,X)		; FC A1 FC
	tay		; A8
	jsr ($FC01.w,X)		; FC 01 FC
	plb		; AB
	tay		; A8
	cmp #$BDA9.w		; C9 A9 BD
	ora $9C02FF.l,X		; 1F FF 02 9C
	cmp ($03.b)		; D2 03
	sed		; F8
	ora $FC.b,S		; 03 FC
	inc $0201.w,X		; FE 01 02
	adc $E0EF40.l,X		; 7F 40 EF E0
	bmi  65.b		; 30 41
	inc $F818.w,X		; FE 18 F8
	php		; 08
	eor ($F7.b,X)		; 41 F7
	brk $C0.b		; 00 C0
	sty $FE.b,X		; 94 FE
	pla		; 68
	bpl  31.b		; 10 1F
	inc $C217.w,X		; FE 17 C2
	and $FE0039.l,X		; 3F 39 00 FE
	and $0130.w,Y		; 39 30 01
	sed		; F8
	ora $05F0.w		; 0D F0 05
	sed		; F8
	brk $FD.b		; 00 FD
	ldx $FAFC.w,Y		; BE FC FA
	cpy #$0C3F.w		; C0 3F 0C
	ora $C0290C.l		; 0F 0C 29 C0
	ora [$04.b]		; 07 04
	inc $FE03.w,X		; FE 03 FE
	ldy $1BFF.w,X		; BC FF 1B
	sta ($01.b)		; 92 01
	plb		; AB
	eor $75.b,X		; 55 75
	sbc ($15.b,X)		; E1 15
	jsr ($F8AF.w,X)		; FC AF F8
	lsr $FD.b		; 46 FD
	sta [$C9.b]		; 87 C9
	sbc $14DA.w,Y		; F9 DA 14
	jsr ($DBF1.w,X)		; FC F1 DB
	adc $F8.b,X		; 75 F8
	asl A		; 0A
	sbc $00.b,S		; E3 00
	eor ($9E.b,X)		; 41 9E
	adc $8210.w,X		; 7D 10 82
	eor $F8EF.w,X		; 5D EF F8
	ora #$E31C.w		; 09 1C E3
	jsr $FEC3.w		; 20 C3 FE
	pld		; 2B
	phb		; 8B
	adc $85FE65.l,X		; 7F 65 FE 85
	ply		; 7A
	rol A		; 2A
	eor $57.b,X		; 55 57
	plp		; 28
	sbc ($F1.b),Y		; F1 F1
	and $FFFE9A.l,X		; 3F 9A FE FF
	eor $6FFDF9.l		; 4F F9 FD 6F
	bvc -65.b		; 50 BF
	brk $EF.b		; 00 EF
	bcs  95.b		; B0 5F
	rti		; 40

	lda $8D1FF0.l		; AF F0 1F 8D
	cpy $FE.b		; C4 FE
	bcc  44.b		; 90 2C
	cmp #$A810.w		; C9 10 A8
	jsr ($57C2.w,X)		; FC C2 57
	ldy #$F3AA.w		; A0 AA F3
	inc $AAD5.w,X		; FE D5 AA
	plb		; AB
	pei ($81.b)		; D4 81
	cmp $F6A8A2.l		; CF A2 A8 F6
	inc $FE87.w,X		; FE 87 FE
	ora ($7E.b,X)		; 01 7E
	pla		; 68
	adc $C85FF8.l,X		; 7F F8 5F C8
	sbc $0AE8FC.l,X		; FF FC E8 0A
	dey		; 88
	jsr ($EBCC.w,X)		; FC CC EB
	brk $A0.b		; 00 A0
	jmp.w [$FC99]		; DC 99 FC
	inc $FF0F.w,X		; FE 0F FF
	sbc $7EAAD4.l,X		; FF D4 AA 7E
	bra  -4.b		; 80 FC
	inc $5480.w,X		; FE 80 54
	pld		; 2B
	sbc $975581.l,X		; FF 81 55 97
	sbc ($2B.b)		; F2 2B
	ror $2A00.w,X		; 7E 00 2A
	ldy $FCF1.w		; AC F1 FC
	tax		; AA
	jsr ($D081.w,X)		; FC 81 D0
	lda [$80.b],Y		; B7 80
	sbc $54.b		; E5 54
	clc		; 18
	xba		; EB
	trb $15.b		; 14 15
	phd		; 0B
	wai		; CB
	lda [$99.b]		; A7 99
	cmp ($FC.b,X)		; C1 FC
	sbc ($40.b),Y		; F1 40
	cmp #$0AFE.w		; C9 FE 0A
	inc $3E14.w,X		; FE 14 3E
	asl $0AFE.w,X		; 1E FE 0A
	ora $050FF1.l		; 0F F1 0F 05
	sbc $05EEFF.l		; EF FF EE 05
	sbc $EB.b		; E5 EB
	xba		; EB
	ora ($E1.b,X)		; 01 E1
	sbc ($47.b)		; F2 47
	inc $E9DE.w,X		; FE DE E9
	inc $1E0A.w,X		; FE 0A 1E
	tsb $1E.b		; 04 1E
	asl $FFFE.w		; 0E FE FF
	ora [$58.b]		; 07 58
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	beq -80.b		; F0 B0
	and $A09F90.l,X		; 3F 90 9F A0
	lda $FE8F80.l		; AF 80 8F FE
	adc $FD02A4.l,X		; 7F A4 02 FD
	beq  32.b		; F0 20
	bvs  16.b		; 70 10
	bvs  48.b		; 70 30
	inc $F0E0.w,X		; FE E0 F0
	and $BFFF3F.l		; 2F 3F FF BF
	and $FE7FFF.l,X		; 3F FF 7F FE
	and $0F55BE.l,X		; 3F BE 55 0F
	sta [$F6.b]		; 87 F6
	and $F340FE.l,X		; 3F FE 40 F3
	adc ($A1.b)		; 72 A1
	sbc $FC07.w,Y		; F9 07 FC
	lda [$FD.b]		; A7 FD
	asl $FD.b		; 06 FD
	ora [$7E.b]		; 07 7E
	phk		; 4B
	jsr ($FD03.w,X)		; FC 03 FD
	cop $FD.b		; 02 FD
	inc $9E.b,X		; F6 9E
	sbc ($F1.b),Y		; F1 F1
	jsr ($E38D.w,X)		; FC 8D E3
	bmi  -2.b		; 30 FE
	cpy $CDF0.w		; CC F0 CD
	mvn $C7,$AB		; 54 AB C7
	mvn $04,$AA		; 54 AA 04
	trb $5557.w		; 1C 57 55
	sed		; F8
	cpy $01.b		; C4 01
	mvn $E2,$01		; 54 01 E2
	inc $FEF7.w,X		; FE F7 FE
	mvn $6F,$FE		; 54 FE 6F
	and ($C0.b,X)		; 21 C0
	clc		; 18
	sbc $FA98FE.l		; EF FE 98 FA
	inc $B0E7.w,X		; FE E7 B0
	asl $98.b,X		; 16 98
	inc $9867.w,X		; FE 67 98
	ldy $F0.b		; A4 F0
	ora #$FF.b		; 09 FF
	jsr ($E401.w,X)		; FC 01 E4
	sbc #$6E.b		; E9 6E
	sta ($AA.b)		; 92 AA
	ora ($FF.b,X)		; 01 FF
	rol A		; 2A
	sbc [$B9.b]		; E7 B9
	ror A		; 6A
	stx $2C.b		; 86 2C
	sbc ($A0.b),Y		; F1 A0
	dec $95FE.w,X		; DE FE 95
	cop $B6.b		; 02 B6
	cmp ($30.b),Y		; D1 30
	cmp ($CC.b),Y		; D1 CC
	cop $FE.b		; 02 FE
	sta ($9B.b,X)		; 81 9B
	plx		; FA
	bvs  -1.b		; 70 FF
	ora $C1C571.l,X		; 1F 71 C5 C1
	bmi -49.b		; 30 CF
	ora ($C0.b,X)		; 01 C0
	inc $C03C.w,X		; FE 3C C0
	brk $DA.b		; 00 DA
	ora $7C40FC.l		; 0F FC 40 7C
	and $9979C1.l		; 2F C1 79 99
	ldy #$5F.b		; A0 5F
	rts		; 60

	.db $42, $D4		; 42 D4
	jsl $CEFDFC.l		; 22 FC FD CE
	asl $5E.b		; 06 5E
	tya		; 98
	sta ($FC.b)		; 92 FC
	jsr ($EFFF.w,X)		; FC FF EF
	asl $D8.b		; 06 D8
	pea $108B.w		; F4 8B 10
	xba		; EB
	clc		; 18
	sbc ($1C.b,S),Y		; F3 1C
	sbc [$0D.b],Y		; F7 0D
	inc $0A.b		; E6 0A
	phx		; DA
	sbc ($21.b,X)		; E1 21
	cmp $00C6BE.l,X		; DF BE C6 00
	pea $1004.w		; F4 04 10
	ldy $E2.b		; A4 E2
	sbc ($B0.b,X)		; E1 B0
	bit $A0F1.w,X		; 3C F1 A0
	brk $3F.b		; 00 3F
	bmi 119.b		; 30 77
	adc $D971.w,Y		; 79 71 D9
	beq -22.b		; F0 EA
	tas		; 1B
	ldx $C2C2.w		; AE C2 C2
	ora $89ED.w,X		; 1D ED 89
	ror A		; 6A
	tsb $78.b		; 04 78
	sbc [$F3.b],Y		; F7 F3
	eor $60D1.w,X		; 5D D1 60
	jsr $F1FE.w		; 20 FE F1
	sbc [$18.b],Y		; F7 18
	inc $19.b,X		; F6 19
	inc $FE.b		; E6 FE
	cpx $6F.b		; E4 6F
	sta $1BE219.l		; 8F 19 E2 1B
	cpx $1F.b		; E4 1F
	ora $FE06D9.l,X		; 1F D9 06 FE
	jsr ($0402.w,X)		; FC 02 04
	tsb $FD.b		; 04 FD
	sta $9DD0D6.l		; 8F D6 D0 9D
	sbc $F011.w		; ED 11 F0
	ora ($FE.b),Y		; 11 FE
	bpl  -2.b		; 10 FE
	ora ($FF.b),Y		; 11 FF
	and $EF0F54.l		; 2F 54 0F EF
	sbc $F1E30E.l,X		; FF 0E E3 F1
	plx		; FA
	lda ($1F.b,S),Y		; B3 1F
	jsr $F0FF.w		; 20 FF F0
	bvs  -2.b		; 70 FE
	cpx #$18.b		; E0 18
	ora $A3FF08.l,X		; 1F 08 FF A3
	jsr $E0DF.w		; 20 DF E0
	adc $08F2.w,Y		; 79 F2 08
	sbc $3FF8.w,X		; FD F8 3F
	brk $E5.b		; 00 E5
	inc $EFFF.w,X		; FE FF EF
	bpl -83.b		; 10 AD
	lsr $20DF.w,X		; 5E DF 20
	and ($D8.b),Y		; 31 D8
	ora $E0F3.w,X		; 1D F3 E0
	adc ($E0.b,S),Y		; 73 E0
	sed		; F8
	ora ($80.b,S),Y		; 13 80
	sbc ($57.b,X)		; E1 57
	ora $FE.b		; 05 FE
	lsr $D1.b		; 46 D1
	lda $F8E0FD.l,X		; BF FD E0 F8
	ora $9255.w,Y		; 19 55 92
	adc $E22FEA.l,X		; 7F EA 2F E2
	sed		; F8
	ora $0010.w		; 0D 10 00
	sta ($AE.b),Y		; 91 AE
	adc ($D5.b),Y		; 71 D5
	dec A		; 3A
	adc $5EB1FD.l,X		; 7F FD B1 5E
	adc $60BFB0.l		; 6F B0 BF 60
	eor $FF61F0.l		; 4F F0 61 FF
	cpy #$F8.b		; C0 F8
	asl A		; 0A
	adc $0AF580.l,X		; 7F 80 F5 0A
	sbc $05FADD.l,X		; FF DD FA 05
	sbc $0E.b,X		; F5 0E
	tax		; AA
	eor $3FD0.w,X		; 5D D0 3F
	inx		; E8
	ora $0FF8E0.l,X		; 1F E0 F8 0F
	cmp $BA3230.l		; CF 30 32 BA
	eor #$55.b		; 49 55
	plb		; AB
	mvn $A4,$A0		; 54 A0 A4
	lda ($E0.b)		; B2 E0
	sed		; F8
	ora $0B9000.l		; 0F 00 90 0B
	trb $D8.b		; 14 D8
	ora $5E9B08.l		; 0F 08 9B 5E
	cmp ($E0.b,X)		; C1 E0
	inc $E0FE.w,X		; FE FE E0
	jsr ($AEC8.w,X)		; FC C8 AE
	sed		; F8
	cpx #$FE.b		; E0 FE
	sbc $F5B1FF.l,X		; FF FF B1 F5
	rtl		; 6B

	cpx #$D4.b		; E0 D4
	cmp ($A2.b,S),Y		; D3 A2
	lda ($45.b,X)		; A1 45
	.db $42, $35		; 42 35
	ora $5B.b,S		; 03 5B
	and $66.b		; 25 66
	txy		; 9B
	.db $42, $FD		; 42 FD
	asl A		; 0A
	and $E9.b,S		; 23 E9
	tsa		; 3B
	eor $F9C90C.l,X		; 5F 0C C9 F9
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	brk $58.b		; 00 58
	sta $01FF.w,X		; 9D FF 01
	cmp ($B2.b)		; D2 B2
	cmp $F77F.w		; CD 7F F7
	eor #$BE.b		; 49 BE
	cmp ($7D.b,X)		; C1 7D
	.db $82, $FE, $AE		; 82 FE AE
	plb		; AB
	stz $22.b,X		; 74 22
	brk $0D.b		; 00 0D
	sta $FFEB.w,X		; 9D EB FF
	inc $E05F.w,X		; FE 5F E0
	eor $50D1.w,Y		; 59 D1 50
	sta $FFFE.w,X		; 9D FE FF
	ldx $60A2.w		; AE A2 60
	sed		; F8
	ora $E737D6.l		; 0F D6 37 E7
	ora ($FF.b,S),Y		; 13 FF
	phd		; 0B
	sbc [$0D.b],Y		; F7 0D
	sbc [$11.b]		; E7 11
	adc ($88.b)		; 72 88
	asl A		; 0A
	cmp $BFE042.l,X		; DF 42 E0 BF
	inx		; E8
	php		; 08
	brk $0C.b		; 00 0C
	php		; 08
	adc ($0E.b,S),Y		; 73 0E
	ora [$F1.b],Y		; 17 F1
	stx $17.b,Y		; 96 17
	rol $607C.w,X		; 3E 7C 60
	plx		; FA
	sbc $5660FD.l,X		; FF FD 60 56
	tax		; AA
	plb		; AB
	sty $04.b		; 84 04
	txy		; 9B
	pei ($C1.b)		; D4 C1
	sed		; F8
	ora #$A8.b		; 09 A8
	bit $E9.b		; 24 E9
	xce		; FB
	rti		; 40

	asl $E9.b,X		; 16 E9
	brk $D8.b		; 00 D8
	phd		; 0B
	sbc $FF0FD0.l,X		; FF D0 0F FF
	adc $7D2784.l,X		; 7F 84 27 7D
	lda $D93BE6.l		; AF E6 3B D9
	rol $B854.w,X		; 3E 54 B8
	tax		; AA
	eor ($02.b,S),Y		; 53 02
	sbc $FA09.w,X		; FD 09 FA
	sbc $FF.b,X		; F5 FF
	.db $82, $92, $A1		; 82 92 A1
	ldy $BAD8.w		; AC D8 BA
	xce		; FB
	tsb $A7.b		; 04 A7
	cld		; D8
	eor [$78.b],Y		; 57 78
	sta [$98.b],Y		; 97 98
	adc $C2BE70.l		; 6F 70 BE C2
	sta $93916E.l,X		; 9F 6E 91 93
	jmp ($F655.w)		; 6C 55 F6
	dex		; CA
	stz $40.b,X		; 74 40
	inc $FD72.w,X		; FE 72 FD
	sbc $FA03BF.l,X		; FF BF 03 FA
	ora $E5.b		; 05 E5
	ora $2F7694.l,X		; 1F 94 76 2F
	inc $D67F.w		; EE 7F D6
	eor $6EA7C9.l,X		; 5F C9 A7 6E
	sbc $E8FF.w		; ED FF E8
	jsr ($0209.w,X)		; FC 09 02
	adc ($29.b),Y		; 71 29
	cmp ($E9.b,X)		; C1 E9
	asl $6E01.w,X		; 1E 01 6E
	stz $99.b		; 64 99
	stx $0D98.w		; 8E 98 0D
	ldy #$FF.b		; A0 FF
	sbc $6905.w,X		; FD 05 69
	rol A		; 2A
	phx		; DA
	eor $5FD8.w,X		; 5D D8 5F
	ldy $BF.b,X		; B4 BF
	sta $FDE147.l,X		; 9F 47 E1 FD
	cop $E5.b		; 02 E5
	inc A		; 1A
	sta [$F5.b]		; 87 F5
	xba		; EB
	trb $DF.b		; 14 DF
	jsr $BFFE.w		; 20 FE BF
	rti		; 40

	bra -16.b		; 80 F0
	ora $0FD050.l		; 0F 50 D0 0F
	ldx $F3.b,Y		; B6 F3
	sbc $E16DEF.l,X		; FF EF 6D E1
	dex		; CA
	cpy #$95.b		; C0 95
	sta ($52.b,X)		; 81 52
	rti		; 40

	lda $81.b		; A5 81
	asl A		; 0A
	ora $05.b,S		; 03 05
	adc ($79.b)		; 72 79
	sbc ($3F.b,X)		; E1 3F
	jsr ($C01E.w,X)		; FC 1E C0
	and $407E81.l,X		; 3F 81 7E 40
	lda $FC03FC.l,X		; BF FC 03 FC
	ora ($FE.b,X)		; 01 FE
	bit #$FF.b		; 89 FF
	and $DFB40E.l,X		; 3F 0E B4 DF
	tda		; 7B
	tyx		; BB
	eor $90.b,X		; 55 90
	ldx $21.b		; A6 21
	stp		; DB
	ora [$56.b]		; 07 56
	ldx $FE2B.w		; AE 2B FE
	jsr ($42FA.w,X)		; FC FA 42
	cpx #$00.b		; E0 00
	cpy $00.b		; C4 00
	sbc $8A1800.l		; EF 00 18 8A
	bcs -14.b		; B0 F2
	jmp ($F5E2.w)		; 6C E2 F5
	sbc $CE9F0F.l,X		; FF 0F 9F CE
	eor $B2AD.w		; 4D AD B2
	lda ($FC.b)		; B2 FC
	jmp $58F0.w		; 4C F0 58
	cpx #$B5.b		; E0 B5
	cpy #$B0.b		; C0 B0
	inc $806E.w,X		; FE 6E 80
	cpy $AE33.w		; CC 33 AE
	cmp ($97.b)		; D2 97
	jsr ($7FEA.w,X)		; FC EA 7F
	lda $3F.b,X		; B5 3F
	eor $9FC1DB.l,X		; 5F DB C1 9F
	lda $FC803F.l,X		; BF 3F 80 FC
	bvc -88.b		; 50 A8
	plb		; AB
	ora $80FCE0.l,X		; 1F E0 FC 80
	inc $D7FF.w,X		; FE FF D7
	tax		; AA
	tsb $53.b		; 04 53
	tsb $0EF5.w		; 0C F5 0E
	sed		; F8
	ora $55.b		; 05 55
	plb		; AB
	tay		; A8
	eor [$C9.b],Y		; 57 C9
	beq   9.b		; F0 09
	sbc $09A0.w,X		; FD A0 09
	sbc $89AABB.l,X		; FF BB AA 89
	phy		; 5A
	and [$25.b]		; 27 25
	sbc [$12.b]		; E7 12
	sta [$20.b],Y		; 97 20
	and $A340A0.l		; 2F A0 40 A3
	dey		; 88
	adc [$5F.b],Y		; 77 5F
	jsr ($E1B4.w,X)		; FC B4 E1
	sbc $D0FF68.l,X		; FF 68 FF D0
	sbc $FED9F2.l,X		; FF F2 D9 FE
	phx		; DA
	cpx #$AF.b		; E0 AF
	bne   7.b		; D0 07
	lda $17.b,X		; B5 17
	inx		; E8
	rol A		; 2A
	cmp $B0.b,X		; D5 B0
	pha		; 48
	txs		; 9A
	sta ($97.b,X)		; 81 97
	brk $A8.b		; 00 A8
	asl A		; 0A
	cmp $5B.b,X		; D5 5B
	eor #$10.b		; 49 10
	sed		; F8
	asl A		; 0A
	lsr $F9.b,X		; 56 F9
	cpx #$A0.b		; E0 A0
	ora $26A1.w,X		; 1D A1 26
	ldy #$0A.b		; A0 0A
	cld		; D8
	bcs  13.b		; B0 0D
	rti		; 40

	and $7E95E3.l		; 2F E3 95 7E
	inx		; E8
	sed		; F8
	asl A		; 0A
	phd		; 0B
	txs		; 9A
	cpx #$EC.b		; E0 EC
	cpx #$AB.b		; E0 AB
	plb		; AB
	eor $56.b,X		; 55 56
	bit $3B39.w,X		; 3C 39 3B
	cmp ($E0.b,X)		; C1 E0
	sed		; F8
	ora #$54.b		; 09 54
	ora ($81.b)		; 12 81
	cmp ($FE.b,X)		; C1 FE
	cpx #$F8.b		; E0 F8
	eor ($FF.b),Y		; 51 FF
	inc $85FE.w		; EE FE 85
	plx		; FA
	phy		; 5A
	ldx #$2D.b		; A2 2D
	asl $7887.w		; 0E 87 78
	trb $0AF8.w		; 1C F8 0A
	sbc $A20F.w,X		; FD 0F A2
	cmp ($AA.b,X)		; C1 AA
	sbc $10C26F.l,X		; FF 6F C2 10
	cmp [$A6.b],Y		; D7 A6
	and $605F.w,Y		; 39 5F 60
	rol $BDC1.w,X		; 3E C1 BD
	cmp $7A.b,S		; C3 7A
	sta [$0A.b]		; 87 0A
	cmp $D0FD.w,Y		; D9 FD D0
	sbc ($32.b,X)		; E1 32
	ldy #$92.b		; A0 92
	cmp $8AFE.w,Y		; D9 FE 8A
	lda $AFDFC0.l,X		; BF C0 DF AF
	sbc $E77FF5.l,X		; FF F5 7F E7
	adc $D5.b,X		; 75 D5
	phy		; 5A
	asl A		; 0A
	lsr $95C4.w		; 4E C4 95
	.db $62, $60, $AA		; 62 60 AA
	tya		; 98
	adc ($1F.b,X)		; 61 1F
	dex		; CA
	and $053FFD.l,X		; 3F FD 3F 05
	sbc $E13FC3.l,X		; FF C3 3F E1
	ora $00FA40.l,X		; 1F 40 FA 00
	sbc $00.b,X		; F5 00
	lsr $FEBF.w,X		; 5E BF FE
	ldy #$AD.b		; A0 AD
	eor ($0B.b),Y		; 51 0B
	sbc ($0F.b),Y		; F1 0F
	inc $A0.b,X		; F6 A0
	sed		; F8
	ora #$63.b		; 09 63
	sbc ($FE.b),Y		; F1 FE
	ora [$F8.b]		; 07 F8
	tya		; 98
	ora ($FF.b,S),Y		; 13 FF
	adc $BD0B5E.l,X		; 7F 5E 0B BD
	rol $72.b,X		; 36 72
	eor $DFF5.w		; 4D F5 DF
	ror $F53E.w,X		; 7E 3E F5
	eor $D5.b,S		; 43 D5
	sta $1C.b,S		; 83 1C
	cpx #$F8.b		; E0 F8
	adc $C038FE.l,X		; 7F FE 38 C0
	bvs -128.b		; 70 80
	cpx #$00.b		; E0 00
	eor ($80.b,X)		; 41 80
	lda $2FD000.l,X		; BF 00 D0 2F
	sbc $CA03DF.l,X		; FF DF 03 CA
	jsr ($1303.w,X)		; FC 03 13
	inc $7F45.w		; EE 45 7F
	cmp ($1E.b,S),Y		; D3 1E
	sbc $E5DA24.l,X		; FF 24 DA E5
	bra -26.b		; 80 E6
	cop $FC.b		; 02 FC
	bra  -8.b		; 80 F8
	sta $BA6C.w,Y		; 99 6C BA
	sbc $FB3410.l		; EF 10 34 FB
	xce		; FB
	adc $F5DFE9.l,X		; 7F E9 DF F5
	sta $EB56FF.l,X		; 9F FF 56 EB
	sta [$2A.b],Y		; 97 2A
	ora [$C9.b],Y		; 17 C9
.INDEX 8
	sep #$50		; E2 50
	jsr $FFF7.w		; 20 F7 FF
	ldy #$40.b		; A0 40
	cmp $1E20.w,Y		; D9 20 1E
	pea $B95A.w		; F4 5A B9
	lda #$77.b		; A9 77
	lsr $FE.b,X		; 56 FE
	sbc $9DAEDA.l		; EF DA AE 9D
	plx		; FA
	asl A		; 0A
	cmp $E0.b,X		; D5 E0
	sta ($AA.b,S),Y		; 93 AA
	lsr A		; 4A
	asl $3801.w		; 0E 01 38
	ora [$00.b]		; 07 00
	inc $80.b,X		; F6 80
	inx		; E8
	tsb $D7ED.w		; 0C ED D7
	lda #$16.b		; A9 16
	cpy #$F0.b		; C0 F0
	ora $E0E9.w		; 0D E9 E0
	sed		; F8
	asl A		; 0A
	plb		; AB
	plb		; AB
	tsb $9F.b		; 04 9F
	cop $1C.b		; 02 1C
	adc $F0C0.w,Y		; 79 C0 F0
	ora #$B8.b		; 09 B8
	eor $A9FC60.l,X		; 5F 60 FC A9
	sbc $FCE0.w,X		; FD E0 FC
	nop		; EA
	nop		; EA
	and $B5.b		; 25 B5
	sbc $48.b		; E5 48
	sta ($F1.b),Y		; 91 F1
	bit $DB9C.w,X		; 3C 9C DB
	inc $FF15.w,X		; FE 15 FF
	lsr A		; 4A
	sed		; F8
	sbc $F85F.w		; ED 5F F8
	ply		; 7A
	adc [$E0.b]		; 67 E0
	stz $BC14.w,X		; 9E 14 BC
	.db $82, $F6, $E2		; 82 F6 E2
	stx $9AE0.w		; 8E E0 9A
	eor $FF.b,S		; 43 FF
	ora #$8C.b		; 09 8C
	tad		; 5B
	sed		; F8
	xce		; FB
.INDEX 8
	sep #$57		; E2 57
	eor [$62.b],Y		; 57 62
	sbc ($55.b),Y		; F1 55
	lda $23C9.w		; AD C9 23
	bit $40.b		; 24 40
	sbc $A8.b,X		; F5 A8
	ldx $E0.b		; A6 E0
	sbc $4988.w,X		; FD 88 49
	and $42.b		; 25 42
	sbc ($FF.b,S),Y		; F3 FF
	jmp ($8F7A.w,X)		; 7C 7A 8F
	bne  11.b		; D0 0B
	pha		; 48
	txs		; 9A
	cpx #$95.b		; E0 95
	tda		; 7B
	tya		; 98
	txs		; 9A
	stz $AC84.w,X		; 9E 84 AC
	wai		; CB
	cpx $0A.b		; E4 0A
	bra -97.b		; 80 9F
	cmp $5D7F.w,Y		; D9 7F 5D
	beq -66.b		; F0 BE
	txy		; 9B
	cmp $800AE8.l		; CF E8 0A 80
	sbc $A860F6.l,X		; FF F6 60 A8
	tsb $C0D5.w		; 0C D5 C0
	nop		; EA
	cpx #$6E.b		; E0 6E
	adc $FE.b,S		; 63 FE
	eor $942E.w		; 4D 2E 94
	sbc $F8E01F.l,X		; FF 1F E0 F8
	tsb $1650.w		; 0C 50 16
	cmp $FC41.w,Y		; D9 41 FC
	cmp $55.b,X		; D5 55
	lda $6DF8.w		; AD F8 6D
	jsr $0FA8.w		; 20 A8 0F
	inc $D4.b,X		; F6 D4
	jsr ($E0FC.w,X)		; FC FC E0
	sed		; F8
	ora ($E4.b,S),Y		; 13 E4
	jsr ($A4AF.w,X)		; FC AF A4
	tax		; AA
	.db $82, $5E, $E0		; 82 5E E0
	sed		; F8
	trb $10.b		; 14 10
	cpx #$0D.b		; E0 0D
	lsr A		; 4A
	jsr $0FE8.w		; 20 E8 0F
	cpx #$F8.b		; E0 F8
	phd		; 0B
	ora ($FF.b,X)		; 01 FF
	eor $E1BC.w,X		; 5D BC E1
	cmp $EA.b,X		; D5 EA
	inc $0BF8.w,X		; FE F8 0B
	bcc 108.b		; 90 6C
	.db $62, $6A, $82		; 62 6A 82
	ror A		; 6A
	phy		; 5A
	phy		; 5A
	sbc ($E2.b),Y		; F1 E2
	cpx #$0F.b		; E0 0F
	jsr $0BF0.w		; 20 F0 0B
	asl $B83A.w		; 0E 3A B8
	asl $B320.w		; 0E 20 B3
	jsr $F1F7.w		; 20 F7 F1
	ora ($FF.b,X)		; 01 FF
	cpx #$F8.b		; E0 F8
	ora #$A0.b		; 09 A0
	ldy #$50.b		; A0 50
	sta $6F.b		; 85 6F
	iny		; C8
	phd		; 0B
	inx		; E8
	eor $E07CCE.l,X		; 5F CE 7C E0
	iny		; C8
	ora $0EE088.l		; 0F 88 E0 0E
	sbc $54B7DA.l,X		; FF DA B7 54
	sbc $F8E0B3.l,X		; FF B3 E0 F8
	ora #$AB.b		; 09 AB
	cpx #$F8.b		; E0 F8
	tsb $8282.w		; 0C 82 82
	ora $05.b		; 05 05
	cpx #$F8.b		; E0 F8
	phd		; 0B
	adc $5EAA.w,X		; 7D AA 5E
	bmi -15.b		; 30 F1
	jsr $0C98.w		; 20 98 0C
	pha		; 48
	sbc ($E0.b),Y		; F1 E0
	sed		; F8
	phd		; 0B
	pha		; 48
	sbc ($68.b)		; F2 68
	inx		; E8
	tsb $7FAB.w		; 0C AB 7F
	sta ($68.b,X)		; 81 68
	.db $42, $DB		; 42 DB
	lda $2AFE2D.l		; AF 2D FE 2A
	cpx #$C8.b		; E0 C8
	asl $1701.w		; 0E 01 17
	cmp $75AA.w,Y		; D9 AA 75
	eor $8A.b,X		; 55 8A
	sbc $C9D1B2.l,X		; FF B2 D1 C9
	sta $20A320.l		; 8F 20 A3 20
	inc $C059.w,X		; FE 59 C0
	ora #$E1.b		; 09 E1
	sbc $BAEF00.l		; EF 00 EF BA
	lsr $DF.b,X		; 56 DF
	lda $60.b,S		; A3 60
	and [$10.b],Y		; 37 10
	inc $AE.b		; E6 AE
	dec $589D.w		; CE 9D 58
	cmp $15AA.w,Y		; D9 AA 15
	eor $EA.b,X		; 55 EA
	cpx #$FF.b		; E0 FF
	phx		; DA
	lda $40.b,X		; B5 40
	tay		; A8
	ldy $FF.b,X		; B4 FF
	inc $5A2B.w,X		; FE 2B 5A
	sbc ($AB.b,X)		; E1 AB
	mvn $F8,$80		; 54 80 F8
	ora #$FF.b		; 09 FF
	sed		; F8
	ora $82B002.l		; 0F 02 B0 82
	adc $57E041.l,X		; 7F 41 E0 57
	tay		; A8
	cpx #$FE.b		; E0 FE
	and $210FC8.l,X		; 3F C8 0F 21
	ror A		; 6A
	eor $6DD27A.l,X		; 5F 7A D2 6D
	beq   9.b		; F0 09
	asl A		; 0A
	ldy $F8FF.w		; AC FF F8
	ora #$67.b		; 09 67
	sty $EFB1.w		; 8C B1 EF
	bpl 119.b		; 10 77
	dey		; 88
	ldy #$F8.b		; A0 F8
	ora [$55.b],Y		; 17 55
	ora $24D2BA.l,X		; 1F BA D2 24
	ply		; 7A
	cpx #$F8.b		; E0 F8
	ora [$AC.b],Y		; 17 AC
	lda ($E0.b)		; B2 E0
	sed		; F8
	tas		; 1B
	asl A		; 0A
	sbc $09.b,X		; F5 09
	inc $F6.b,X		; F6 F6
	adc ($60.b,X)		; 61 60
	eor $E0A2.w,X		; 5D A2 E0
	sed		; F8
	ora [$C2.b],Y		; 17 C2
	adc $7B84.w,X		; 7D 84 7B
	cpy #$D7.b		; C0 D7
	plp		; 28
	adc $E07D.w,X		; 7D 7D E0
	sed		; F8
	ora [$88.b],Y		; 17 88
	lda ($EA.b)		; B2 EA
	ora $F5.b,X		; 15 F5
	asl A		; 0A
	cpx #$F8.b		; E0 F8
	ora [$50.b],Y		; 17 50
	txa		; 8A
	lda $8A554F.l		; AF 4F 55 8A
	lda $90F0.w		; AD F0 90
	dex		; CA
	cpx #$FE.b		; E0 FE
	bpl -128.b		; 10 80
	sbc ($7E.b),Y		; F1 7E
	sbc [$E7.b],Y		; F7 E7
	cmp $A0D5CA.l,X		; DF CA D5 A0
	tax		; AA
	adc $60.b,X		; 75 60
	ldx $B5.b,Y		; B6 B5
	adc ($F3.b,X)		; 61 F3
	rti		; 40

	clv		; B8
	tsb $EA08.w		; 0C 08 EA
	lda ($E8.b)		; B2 E8
	ora #$0A.b		; 09 0A
	lda $BE.b,S		; A3 BE
	clc		; 18
	ora ($1B.b,S),Y		; 13 1B
	nop		; EA
	bit $B1.b,X		; 34 B1
	sbc $0104.w,X		; FD 04 01
	sbc $9571.w,Y		; F9 71 95
	cmp [$E6.b]		; C7 E6
	asl $0FFF.w		; 0E FF 0F
	ora $D4FEE0.l		; 0F E0 FE D4
	inc $F8E0.w,X		; FE E0 F8
	ora #$95.b		; 09 95
	rtl		; 6B

	beq  15.b		; F0 0F
	sty $87.b,X		; 94 87
	txs		; 9A
	sbc $F161FD.l,X		; FF FD 61 F1
	cpx #$FE.b		; E0 FE
	ora $84.b,S		; 03 84
	sbc ($FF.b,X)		; E1 FF
	plx		; FA
	cop $05.b		; 02 05
	tax		; AA
	tsb $02.b		; 04 02
	asl A		; 0A
	trb $00.b		; 14 00
	ldy $4651.w		; AC 51 46
	pea $FFAE.w		; F4 AE FF
	ora [$41.b]		; 07 41
	eor $B0E2FF.l,X		; 5F FF E2 B0
	cmp $FDFF.w		; CD FF FD
	and $3F40C0.l,X		; 3F C0 40 3F
.ACCU 16
.INDEX 16
	rep #$FC		; C2 FC
	pld		; 2B
	rtl		; 6B

	cld		; D8
	sta $C0.b,S		; 83 C0
	txa		; 8A
	stz $E0.b,X		; 74 E0
	sed		; F8
	ora #$E095.w		; 09 95 E0
	sbc $03FE98.l,X		; FF 98 FE 03
	bpl  72.b		; 10 48
	sta $FDFF.w		; 8D FF FD
	sbc [$F4.b],Y		; F7 F4
	stx $FE.b		; 86 FE
	sta ($95.b)		; 92 95
	sty $5A.b		; 84 5A
	sbc $F80E58.l,X		; FF 58 0E F8
	asl A		; 0A
	inc $F0.b,X		; F6 F0
	asl A		; 0A
	bmi -78.b		; 30 B2
	dec $41.b		; C6 41
	sbc $FF73.w,X		; FD 73 FF
	inc $C6BF.w,X		; FE BF C6
	sed		; F8
	ora #$FCBA.w		; 09 BA FC
	pha		; 48
	lda [$BD.b],Y		; B7 BD
	brk $94.b		; 00 94
	sty $6A.b,X		; 94 6A
	ror A		; 6A
	eor $02.b,X		; 55 02
	rol A		; 2A
	cmp $F7.b,X		; D5 F7
	sta [$B2.b]		; 87 B2
	dec $006B.w,X		; DE 6B 00
	sta $74.b,X		; 95 74
	sbc [$22.b],Y		; F7 22
	cmp $00BB.w,X		; DD BB 00
	sta ($91.b),Y		; 91 91
	cpx #$BFB7.w		; E0 B7 BF
	eor ($0C.b)		; 52 0C
	sta $7A.b		; 85 7A
	cpx #$6EFE.w		; E0 FE 6E
	cpx #$0AF8.w		; E0 F8 0A
	jsr $EDDF.w		; 20 DF ED
	brk $A4.b		; 00 A4
	ldy $FD.b		; A4 FD
	cmp [$C0.b],Y		; D7 C0
	sed		; F8
	ora $E05B.w		; 0D 5B E0
	sed		; F8
	asl A		; 0A
	sty $69.b,X		; 94 69
	jmp.w [$8901]		; DC 01 89
	dey		; 88
	ply		; 7A
	ply		; 7A
	cpy #$2EFF.w		; C0 FF 2E
	sta ($4B.b),Y		; 91 4B
	sbc $850177.l,X		; FF 77 01 85
	rol $FFEB.w		; 2E EB FF
	and ($9E.b,X)		; 21 9E
	dec A		; 3A
	bra -43.b		; 80 D5
	eor $22.b,X		; 55 22
	cmp $15027F.l		; CF 7F 02 15
	adc $07.b		; 65 07
	sed		; F8
	cpx #$FFC0.w		; E0 C0 FF
	bra -86.b		; 80 AA
	bra  -3.b		; 80 FD
	bra 105.b		; 80 69
	sed		; F8
	lda ($D2.b)		; B2 D2
	sbc $A0CB34.l,X		; FF 34 CB A0
	lda $B5.b,X		; B5 B5
	pha		; 48
	pha		; 48
	sbc [$FE.b],Y		; F7 FE
	lsr $20.b,X		; 56 20
	pla		; 68
	sta [$A0.b],Y		; 97 A0
	inc $004A.w,X		; FE 4A 00
	lda [$A0.b],Y		; B7 A0
	sbc $28909F.l,X		; FF 9F 90 28
	jsr $0FF8.w		; 20 F8 0F
	adc $104B04.l,X		; 7F 04 4B 10
	jmp ($8083.w,X)		; 7C 83 80
	stp		; DB
	rol $3A.b,X		; 36 3A
	cmp $D70060.l,X		; DF 60 00 D7
	adc $99A187.l		; 6F 87 A1 99
	sbc $7E00.w,X		; FD 00 7E
	bra  49.b		; 80 31
	cmp $C91C.w		; CD 1C C9
	inc $DE06.w,X		; FE 06 DE
	sbc $008CEF.l,X		; FF EF 8C 00
	asl $78.b		; 06 78
	eor ($8D.b)		; 52 8D
	cmp $7A.b		; C5 7A
	adc ($9E.b,X)		; 61 9E
	lda [$5B.b]		; A7 5B
	ora ($82.b,X)		; 01 82
	lda ($FB.b),Y		; B1 FB
	lda ($FE.b),Y		; B1 FE
	brk $85.b		; 00 85
	cpx #$188F.w		; E0 8F 18
	sta $B156.w,Y		; 99 56 B1
	cpx #$08F8.w		; E0 F8 08
	bcc   8.b		; 90 08
	sbc $07A0F6.l,X		; FF F6 A0 07
	ora ($E5.b)		; 12 E5
	ora [$F8.b],Y		; 17 F8
	lsr $E9.b,X		; 56 E9
	.db $82, $DF, $89		; 82 DF 89
	ora [$5A.b]		; 07 5A
	bit #$00F8.w		; 89 F8 00
	phb		; 8B
	sbc $870078.l,X		; FF 78 00 87
	bra -79.b		; 80 B1
	cpx #$C703.w		; E0 03 C7
	cpy $9E.b		; C4 9E
	ora ($9D.b,X)		; 01 9D
	rts		; 60

	adc $A4D288.l,X		; 7F 88 D2 A4
	ror $9D97.w		; 6E 97 9D
	ply		; 7A
	lda $DC.b,S		; A3 DC
	cpx #$1038.w		; E0 38 10
	ora ($E2.b,X)		; 01 E2
	jmp.w [$FA7B]		; DC 7B FA
	dec $F0F6.w,X		; DE F6 F0
	cmp ($97.b),Y		; D1 97
	bcc  -4.b		; 90 FC
	lda #$4900.w		; A9 00 49
	bpl -58.b		; 10 C6
	wai		; CB
	ldy $F9.b,X		; B4 F9
	eor [$5B.b]		; 47 5B
	asl $2B.b,X		; 16 2B
	cmp $2B6C68.l,X		; DF 68 6C 2B
	sbc ($80.b)		; F2 80
	bit $EFA9.w,X		; 3C A9 EF
	pea $F8A9.w		; F4 A9 F8
	sbc $1091F6.l,X		; FF F6 91 10
	ora #$BC80.w		; 09 80 BC
	rti		; 40

	ora ($CC.b,S),Y		; 13 CC
	sta $6A.b,X		; 95 6A
	ora $0221F0.l,X		; 1F F0 21 02
	and $6EE2DB.l		; 2F DB E2 6E
	sty $A6.b		; 84 A6
	cpy $F0.b		; C4 F0
	inc $7EDF.w,X		; FE DF 7E
	stz $94.b,X		; 74 94
	pea $080A.w		; F4 0A 08
	sbc $80192F.l,X		; FF 2F 19 80
	clc		; 18
	lda [$D5.b]		; A7 D5
	rts		; 60

	eor $7986B0.l		; 4F B0 86 79
	adc #$08FE.w		; 69 FE 08
	trb $C1.b		; 14 C1
	trb $C0.b		; 14 C0
	cpx #$0040.w		; E0 40 00
	lda #$C0E0.w		; A9 E0 C0
	eor ($81.b),Y		; 51 81
	sbc $C4031F.l,X		; FF 1F 03 C4
	cpy #$009B.w		; C0 9B 00
	stz $01.b		; 64 01
	dec $A0.b,X		; D6 A0
	rol $DF.b,X		; 36 DF
	cmp $3A.b		; C5 3A
	tsa		; 3B
	lda $31.b,S		; A3 31
	bra  59.b		; 80 3B
	jsl $A08A79.l		; 22 79 8A A0
	dec $FCE7.w,X		; DE E7 FC
	sbc $EAF9C0.l,X		; FF C0 F9 EA
	sbc $4CEB6A.l,X		; FF 6A EB 4C
	inc $7D55.w,X		; FE 55 7D
	lsr $47.b,X		; 56 47
	sbc $E363F7.l,X		; FF F7 63 E3
	lsr A		; 4A
	lsr A		; 4A
	dec $D5A6.w,X		; DE A6 D5
	dec $BB6B.w		; CE 6B BB
	jsr ($FF5A.w,X)		; FC 5A FF
	sbc $BFA7A5.l,X		; FF A5 A7 BF
	ldy $EF.b		; A4 EF
	bit #$A5BF.w		; 89 BF A5
	sbc $D2FC38.l,X		; FF 38 FC D2
	cmp ($E3.b)		; D2 E3
	sbc $46.b,S		; E3 46
	sbc $7F.b,X		; F5 7F
	lsr $53.b		; 46 53
	rol $B3.b		; 26 B3
	ora $6A.b,X		; 15 6A
	dec $29.b,X		; D6 29
	xba		; EB
	trb $56.b		; 14 56
	lda #$AE9F.w		; A9 9F AE
	bit $EF.b		; 24 EF
	sed		; F8
	and $FFD5BE.l,X		; 3F BE D5 FF
	ldy $A5BE.w		; AC BE A5
	sbc $E9.b		; E5 E9
	sbc #$D6DE.w		; E9 DE D6
	adc ($0A.b,S),Y		; 73 0A
	sbc $C29DE0.l,X		; FF E0 9D C2
	.db $42, $FB		; 42 FB
	brk $ED.b		; 00 ED
	ora ($DE.b)		; 12 DE
	and ($6D.b,X)		; 21 6D
	sbc $27B73F.l,X		; FF 3F B7 27
	sbc $A0F7B1.l,X		; FF B1 F7 A0
	lda $FEB4.w,Y		; B9 B4 FE
	eor #$F3CC.w		; 49 CC F3
	sbc ($92.b,S),Y		; F3 92
	sta ($40.b)		; 92 40
	inc $08E6.w,X		; FE E6 08
	cmp $30CF1E.l		; CF 1E CF 30
	sbc [$08.b],Y		; F7 08
	sbc $659AFF.l,X		; FF FF 9A 65
	and [$29.b]		; 27 29
	rol A		; 2A
	sbc $35FB53.l,X		; FF 53 FB 35
	sbc [$1B.b],Y		; F7 1B
	tsa		; 3B
	lda #$F6ED.w		; A9 ED F6
	inc $41.b,X		; F6 41
	clv		; B8
	jmp $068058.l		; 5C 58 80 06
	tax		; AA
	dec $00F7.w,X		; DE F7 00
	inc $FFFF.w		; EE FF FF
	lsr $5E09.w		; 4E 09 5E
	lda ($4F.b,X)		; A1 4F
	sbc [$2A.b],Y		; F7 2A
	rtl		; 6B

	php		; 08
	rol $FF24.w,X		; 3E 24 FF
	bit $F4.b,X		; 34 F4
	ldx $6F86.w		; AE 86 6F
	sta $E0.b,S		; 83 E0
	rtl		; 6B

	eor $54.b,X		; 55 54
	tax		; AA
	bvc -76.b		; 50 B4
	sed		; F8
	bit $570A.w		; 2C 0A 57
	sbc [$3F.b],Y		; F7 3F
	tay		; A8
	eor [$EE.b],Y		; 57 EE
	ora [$76.b],Y		; 17 76
.ACCU 16
.INDEX 16
	rep #$7F		; C2 7F
	lda $A2BF.w		; AD BF A2
	inc $D2.b		; E6 D2
	cpy #$1616.w		; C0 16 16
	plp		; 28
	jsr ($C2E8.w,X)		; FC E8 C2
	ldy $22.b		; A4 22
	bit $5B5C.w		; 2C 5C 5B
	sta ($E1.b,S),Y		; 93 E1
	sbc $D7FF49.l,X		; FF 49 FF D7
	adc $DBDF56.l,X		; 7F 56 DF DB
	stp		; DB
	wai		; CB
	dec $F7F7.w		; CE F7 F7
	ror A		; 6A
	asl A		; 0A
	sbc $2188.w		; ED 88 21
	eor $FFC781.l		; 4F 81 C7 FF
	brk $B5.b		; 00 B5
	brk $4F.b		; 00 4F
	bra  -6.b		; 80 FA
	ora $59.b		; 05 59
	ora ($58.b,X)		; 01 58
	cli		; 58
	sbc $15.b,X		; F5 15
	sbc $2A2AF8.l,X		; FF F8 2A 2A
	sbc $84.b,X		; F5 84
	eor [$01.b]		; 47 01
	eor $9049.w,Y		; 59 49 90
	cpy $8679.w		; CC 79 86
	sbc $FF.b,X		; F5 FF
	sbc $956A0A.l,X		; FF 0A 6A 95
	cpy $3B.b		; C4 3B
	eor ($BE.b,X)		; 41 BE
	cmp #$8036.w		; C9 36 80
	adc $4A4B4B.l,X		; 7F 4B 4B 4A
	asl A		; 0A
	bit $1F.b,X		; 34 1F
	inc $EB14.w,X		; FE 14 EB
	plb		; AB
	pla		; 68
	brk $A4.b		; 00 A4
	inc $1524.w,X		; FE 24 15
	sta ($5B.b,X)		; 81 5B
	ldy $EA.b		; A4 EA
	cmp $FF.b,S		; C3 FF
	ora $34.b,X		; 15 34
	wai		; CB
	asl $7C.b		; 06 7C
	sta $43.b,S		; 83 43
	ldy $5BA4.w,X		; BC A4 5B
	sta ($7E.b,X)		; 81 7E
	adc ($0F.b),Y		; 71 0F
	sbc $82AA61.l,X		; FF 61 AA 82
	ror A		; 6A
	pha		; 48
	dey		; 88
	cpx #$BFA0.w		; E0 A0 BF
	adc $AF.b		; 65 AF
	brk $54.b		; 00 54
	sbc $7140EF.l,X		; FF EF 40 71
	stx $41BE.w		; 8E BE 41
	rtl		; 6B

	sty $56.b,X		; 94 56
	lda #$1FE0.w		; A9 E0 1F
	sbc $1A.b		; E5 1A
	stz $B2.b,X		; 74 B2
	adc $FF.b,X		; 75 FF
	sbc $BA65.w,X		; FD 65 BA
	txs		; 9A
	sbc ($52.b)		; F2 52
	cpx $A4.b		; E4 A4
	ldx $02.b,Y		; B6 02
	.db $62, $2A, $89		; 62 2A 89
	lda ($00.b),Y		; B1 00
	adc $8A.b,X		; 75 8A
	sbc $45BAFD.l,X		; FF FD BA 45
	sbc ($0D.b)		; F2 0D
	cpx $1B.b		; E4 1B
	ror $8381.w,X		; 7E 81 83
	jmp ($A2FA.w,X)		; 7C FA A2
	lda $6969A7.l		; AF A7 69 69
	ora ($22.b,X)		; 01 22
	tsa		; 3B
	ora ($9B.b),Y		; 11 9B
	bra -57.b		; 80 C7
	bra  12.b		; 80 0C
	ora $2E.b,S		; 03 2E
	lda $3F8050.l		; AF 50 80 3F
	cpy #$0CBE.w		; C0 BE 0C
	beq -128.b		; F0 80
	cmp ($3E.b,X)		; C1 3E
	bra 114.b		; 80 72
	eor [$53.b],Y		; 57 53
	lda $F0.b,X		; B5 F0
	sta ($A0.b,S),Y		; 93 A0
	bra 107.b		; 80 6B
	pld		; 2B
	mvn $18,$14		; 54 14 18
	ldy $80.b		; A4 80
	mvn $E6,$FA		; 54 FA E6
	lsr A		; 4A
	bra  84.b		; 80 54
	ora $80C9.w,Y		; 19 C9 80
	.db $62, $60, $98		; 62 60 98
	bcc -121.b		; 90 87
	sta [$B8.b]		; 87 B8
	php		; 08
	ror $56.b,X		; 76 56
	bra  -1.b		; 80 FF
	and $D0.b		; 25 D0
	and $D87F80.l		; 2F 80 7F D8
	adc $9C.b,S		; 63 9C
	stz $F961.w,X		; 9E 61 F9
	asl $76.b		; 06 76
	bit #$A580.w		; 89 80 A5
	phy		; 5A
	pha		; 48
	adc ($FF.b),Y		; 71 FF
	ora $20AA3F.l		; 0F 3F AA 20
	txs		; 9A
	txs		; 9A
	sta $10.b,X		; 95 10
	stz $8A84.w		; 9C 84 8A
	asl A		; 0A
	lsr $FDA0.w,X		; 5E A0 FD
	ora [$80.b]		; 07 80
	ror $CC.b,X		; 76 CC
	sbc ($9A.b),Y		; F1 9A
	adc $D7.b		; 65 D7
	plp		; 28
	ldy $4A43.w,X		; BC 43 4A
	lda $B8.b,X		; B5 B8
	sed		; F8
	sbc $B84782.l		; EF 82 47 B8
	sbc [$00.b]		; E7 00
	adc $9A.b		; 65 9A
	cmp $01.b		; C5 01
	adc $ED.b,S		; 63 ED
	sta ($03.b),Y		; 91 03
	eor [$D3.b]		; 47 D3
	rti		; 40

	adc $2780.w,X		; 7D 80 27
	cpx $7149.w		; EC 49 71
	ror $4066.w,X		; 7E 66 40
	brk $FF.b		; 00 FF
	lda $8BFCC2.l,X		; BF C2 FC 8B
	ora $78.b,S		; 03 78
	plp		; 28
	lsr $B980.w		; 4E 80 B9
	sbc $000030.l,X		; FF 30 00 00
	eor [$AD.b]		; 47 AD
	bvc  31.b		; 50 1F
	rti		; 40

	sty $20.b		; 84 20
	lsr A		; 4A
	tay		; A8
	eor [$C1.b],Y		; 57 C1
	beq -30.b		; F0 E2
	dec $78.b		; C6 78
	sta [$E2.b]		; 87 E2
	jsr $0BDF.w		; 20 DF 0B
	sbc [$50.b],Y		; F7 50
	sty $12.b		; 84 12
	bra -91.b		; 80 A5
	tay		; A8
	cmp ($C0.b)		; D2 C0
	and $40.b		; 25 40
	sed		; F8
	eor $61D19A.l,X		; 5F 9A D1 61
	sed		; F8
	cpy $F8.b		; C4 F8
	ora #$27E2.w		; 09 E2 27
	cld		; D8
	cmp ($68.b,S),Y		; D3 68
	bra -105.b		; 80 97
	brk $FF.b		; 00 FF
	ora #$7807.w		; 09 07 78
	cpx $00.b		; E4 00
	phb		; 8B
	jsr $20D8.w		; 20 D8 20
	sbc $10.b		; E5 10
.ACCU 8
	sep #$26		; E2 26
	clc		; 18
	ldy $837C.w,X		; BC 7C 83
.INDEX 8
	sep #$5C		; E2 5C
	bpl -17.b		; 10 EF
	inc $807F.w,X		; FE 7F 80
	phx		; DA
	brk $85.b		; 00 85
	eor ($C2.b,X)		; 41 C2
	and ($AE.b,X)		; 21 AE
	brk $53.b		; 00 53
	brk $B5.b		; 00 B5
	php		; 08
	adc $8206.w,Y		; 79 06 82
	sta [$C4.b]		; 87 C4
	asl $21.b		; 06 21
	dec $D12E.w,X		; DE 2E D1
	cpx $0F.b		; E4 0F
	xce		; FB
	php		; 08
	sbc [$1E.b],Y		; F7 1E
	sbc ($8C.b,X)		; E1 8C
	bcs -48.b		; B0 D0
	stx $A9B2.w		; 8E B2 A9
	mvn $D9,$03		; 54 03 D9
	sbc $5C04FE.l,X		; FF FE 04 5C
	ora $A2.b,S		; 03 A2
	tsb $87.b		; 04 87
	sei		; 78
	sed		; F8
	ora [$20.b]		; 07 20
	phy		; 5A
	ora ($EC.b,S),Y		; 13 EC
	tsb $03F3.w		; 0C F3 03
	sbc $06FCFF.l,X		; FF FF FC 06
	sbc $B034.w,Y		; F9 34 B0
	lda ($00.b)		; B2 00
	rol $01.b,X		; 36 01
	cmp $3C.b,S		; C3 3C
	adc [$80.b]		; 67 80
	eor $4D20.w,X		; 5D 20 4D
	ora $7E8000.l		; 0F 00 80 7E
	brk $F0.b		; 00 F0
	ora $F0E4A8.l		; 0F A8 E4 F0
	brk $A0.b		; 00 A0
	cld		; D8
	sec		; 38
	cmp [$C8.b]		; C7 C8
	and [$E0.b],Y		; 37 E0
	adc $8F100B.l,X		; 7F 0B 10 8F
	rts		; 60

	txy		; 9B
	tsb $8B.b		; 04 8B
	bvs -92.b		; 70 A4
	brk $B9.b		; 00 B9
	and $3146.w,Y		; 39 46 31
	ora $67EAC2.l		; 0F C2 EA 67
	tya		; 98
	sta $FEDA70.l		; 8F 70 DA FE
	ldy $A0.b		; A4 A0
	dec $BFFF.w		; CE FF BF
	bmi -13.b		; 30 F3
	jsr $679B.w		; 20 9B 67
	sta $DC.b,S		; 83 DC
	dec $7E29.w,X		; DE 29 7E
	sta $E9.b		; 85 E9
	asl $6A.b,X		; 16 6A
	cmp $FE1F.w,X		; DD 1F FE
	and $DFC1.w,Y		; 39 C1 DF
	and [$C8.b],Y		; 37 C8
	cld		; D8
	and [$84.b]		; 27 84
	tsb $FB.b		; 04 FB
	cop $FD.b		; 02 FD
	cmp $FF22.w,X		; DD 22 FF
	sbc ($EA.b,X)		; E1 EA
	brk $C6.b		; 00 C6
	bmi 109.b		; 30 6D
	bcc -29.b		; 90 E3
	trb $649A.w		; 1C 9A 64
	dey		; 88
	pei ($2B.b)		; D4 2B
	ora ($08.b,X)		; 01 08
	tsa		; 3B
	cpy $E2.b		; C4 E2
	cpy $66.b		; C4 66
	sty $FF.b		; 84 FF
	sep #$02		; E2 02
	txs		; 9A
	eor ($1D.b)		; 52 1D
	jsr $8853.w		; 20 53 88
	lda ($0D.b)		; B2 0D
	rtl		; 6B

	asl $09FF.w,X		; 1E FF 09
	cmp $FB72.w		; CD 72 FB
	sty $0E.b		; 84 0E
	sbc ($7A.b),Y		; F1 7A
	cmp $18.b		; C5 18
	sbc [$E4.b]		; E7 E4
	inc $FF.b,X		; F6 FF
	inc $71.b,X		; F6 71
	stx $AA1E.w		; 8E 1E AA
	cpy #$3F.b		; C0 3F
	sbc $08.b,S		; E3 08
	ldy $03.b,X		; B4 03
	ror $03.b,X		; 76 03
	sbc ($1E.b,X)		; E1 1E
	adc $A85710.l,X		; 7F 10 57 A8
	adc #$D6.b		; 69 D6
	tax		; AA
	adc $7F84.w,X		; 7D 84 7F
	sep #$C0		; E2 C0
	rol $FF86.w,X		; 3E 86 FF
	cpx $39.b		; E4 39
	dec $F4.b		; C6 F4
	ora $20D3F0.l		; 0F F0 D3 20
	ldy $9843.w		; AC 43 98
	cmp [$7F.b]		; C7 7F
	beq -22.b		; F0 EA
	and $ED12.w,X		; 3D 12 ED
	tda		; 7B
	sty $97.b,X		; 94 97
	pla		; 68
	dec $CA.b,X		; D6 CA
	phk		; 4B
	bit $0F3C.w,X		; 3C 3C 0F
	and $9768C3.l,X		; 3F C3 68 97
	bcc 111.b		; 90 6F
	sta ($52.b)		; 92 52
	dey		; 88
	lsr $20.b,X		; 56 20
	sbc $0C80.w,X		; FD 80 0C
	sbc $609E48.l,X		; FF 48 9E 60
	bra -48.b		; 80 D0
	and $985CA3.l		; 2F A3 5C 98
	adc [$60.b]		; 67 60
.ACCU 16
.INDEX 16
	rep #$F0		; C2 F0
	sta $BAA4C4.l,X		; 9F C4 A4 BA
	ora $FA.b		; 05 FA
	sta ($04.b)		; 92 04
	and ($5C.b,X)		; 21 5C
	sbc $AE832F.l,X		; FF 2F 83 AE
	ora $7A05.w,Y		; 19 05 7A
	bit $7BC2.w,X		; 3C C2 7B
	sty $CE.b		; 84 CE
	sbc ($89.b),Y		; F1 89
	adc [$2C.b],Y		; 77 2C
	ldx #$FF08.w		; A2 08 FF
	nop		; EA
	jmp.w [$9EFC]		; DC FC 9E
	and ($CC.b,S),Y		; 33 CC
	phd		; 0B
	cpx #$8033.w		; E0 33 80
	adc $FF.b,X		; 75 FF
	ora $02.b,S		; 03 02
	cpx #$591F.w		; E0 1F 59
	ldx $769B.w		; AE 9B 76
	eor ($ED.b)		; 52 ED
	sta $7C.b,S		; 83 7C
	inc $01.b,X		; F6 01
	ldy $DAE6.w,X		; BC E6 DA
	lsr $CD32.w,X		; 5E 32 CD
	cmp ($3E.b,X)		; C1 3E
	sbc $91807F.l,X		; FF 7F 80 91
	sbc $29.b,X		; F5 29
	dec $3DC2.w,X		; DE C2 3D
	tas		; 1B
	sbc [$6F.b]		; E7 6F
	sta [$1A.b],Y		; 97 1A
	sbc $E21D.w,X		; FD 1D E2
	ror $40DB.w		; 6E DB 40
	sty $E0.b		; 84 E0
	ldy $BA24.w		; AC 24 BA
	sbc ($FF.b,X)		; E1 FF
	cld		; D8
	and [$82.b]		; 27 82
	rti		; 40

	lda $D3EA55.l,X		; BF 55 EA D3
	bit $FF24.w,X		; 3C 24 FF
	sta ($EF.b)		; 92 EF
	sta [$61.b]		; 87 61
	stx $E9.b,Y		; 96 E9
	trb $D2E3.w		; 1C E3 D2
	tad		; 5B
	ldx $30EE.w,Y		; BE EE 30
	cmp $640100.l		; CF 00 01 64
	rts		; 60

	cli		; 58
	sbc ($F6.b)		; F2 F6
	ror $32F8.w,X		; 7E F8 32
	jsr $70FF.w		; 20 FF 70
	lda $68E759.l,X		; BF 59 E7 68
	stx $F9.b		; 86 F9
	lda $877E.w		; AD 7E 87
	ora #$BFD9.w		; 09 D9 BF
	cpx $EC73.w		; EC 73 EC
	rol $A8C1.w,X		; 3E C1 A8
	dec $84FF.w,X		; DE FF 84
	sec		; 38
	cmp [$1F.b]		; C7 1F
	cpx #$BAE4.w		; E0 E4 BA
	ora $92F2.w		; 0D F2 92
	sbc $AEDB3A.l,X		; FF 3A DB AE
	adc $9F.b,X		; 75 9F
	rts		; 60

	rol $D6D9.w		; 2E D9 D6
	lda $7DF2.w,Y		; B9 F2 7D
	lsr $1C.b		; 46 1C
	inc A		; 1A
	sbc $00.b		; E5 00
	sed		; F8
	stz $20C4.w		; 9C C4 20
	bvs -113.b		; 70 8F
	dex		; CA
	sbc $FF.b,X		; F5 FF
	ora $C9FE81.l,X		; 1F 81 FE C9
	and $6AE719.l,X		; 3F 19 E7 6A
	sta [$C6.b],Y		; 97 C6
	and $CA35.w,X		; 3D 35 CA
	rol $D3.b		; 26 D3
	asl $C826.w,X		; 1E 26 C8
	bcs  79.b		; B0 4F
	ora $0260F0.l		; 0F F0 60 02
	sbc $18DE.w,X		; FD DE 18
	sbc $EA35D4.l,X		; FF D4 35 EA
	tsb $51E7.w		; 0C E7 51
	ldx $E916.w		; AE 16 E9
	eor $FA4F.w,X		; 5D 4F FA
	lda $32.b,S		; A3 32
	cmp $6CBE57.l		; CF 57 BE 6C
	brk $FC.b		; 00 FC
	jmp.w [$1CFC]		; DC FC 1C
	sbc $FFFF5E.l		; EF 5E FF FF
	lda ($B8.b),Y		; B1 B8
	adc [$E3.b]		; 67 E3
	jmp $65B9C6.l		; 5C C6 B9 65
	inc $BFC8.w,X		; FE C8 BF
	sta $0C73.w		; 8D 73 0C
	sbc ($10.b,S),Y		; F3 10
	asl $EF00.w		; 0E 00 EF
	jmp.w [$F0FC]		; DC FC F0
	ora $FFDC1C.l		; 0F 1C DC FF
	eor $80.b,S		; 43 80
	asl $7FF3.w		; 0E F3 7F
	stz $DF3C.w,X		; 9E 3C DF
	sty $6757.w		; 8C 57 67
	cmp $82DC.w,Y		; D9 DC 82
	tsb $80.b		; 04 80
	bra  36.b		; 80 24
	jmp.w [$671C]		; DC 1C 67
	cmp $41F906.l,X		; DF 06 F9 41
	ldx $FFB8.w,Y		; BE B8 FF
	sbc $FFF5F5.l,X		; FF F5 F5 FF
	cmp $0B787C.l,X		; DF 7C 78 0B
	plx		; FA
	lsr $0A.b,X		; 56 0A
	cld		; D8
	lda $5080.w,Y		; B9 80 50
	phd		; 0B
	sbc [$F7.b],Y		; F7 F7
	sbc $F8E07F.l,X		; FF 7F E0 F8
	phd		; 0B
	php		; 08
	jmp $F8E0D1.l		; 5C D1 E0 F8
	phd		; 0B
	adc $3B8F.w,X		; 7D 8F 3B
	and ($E0.b,X)		; 21 E0
	sed		; F8
	trb $DDDD.w		; 1C DD DD
	adc [$77.b],Y		; 77 77
	cpx #$0BF8.w		; E0 F8 0B
	jsl $868800.l		; 22 00 88 86
	sbc $B1C5E0.l,X		; FF E0 C5 B1
	ldx #$05F4.w		; A2 F4 05
	and $00.b,S		; 23 00
	rti		; 40

	bpl  17.b		; 10 11
	ror A		; 6A
	rti		; 40

	cmp ($EF.b,X)		; C1 EF
	eor $05.b,X		; 55 05
	cmp $09587D.l,X		; DF 7D 58 09
	adc $02FD80.l,X		; 7F 80 FD 02
	eor $E8.b,X		; 55 E8
	eor ($11.b,X)		; 41 11
	sbc ($61.b,X)		; E1 61
	cop $40.b		; 02 40
	lda $09.b,X		; B5 09
	brk $10.b		; 00 10
	nop		; EA
	cpx #$EA00.w		; E0 00 EA
	adc [$B8.b],Y		; 77 B8
	bpl  72.b		; 10 48
	asl A		; 0A
	xce		; FB
	tsb $68.b		; 04 68
	lda ($55.b,X)		; A1 55
	ldx $10E4.w		; AE E4 10
	cop $0A.b		; 02 0A
	eor $B90D8B.l,X		; 5F 8B 0D B9
	ora $E2.b,S		; 03 E2
	rti		; 40

	eor ($07.b)		; 52 07
	lda ($0A.b)		; B2 0A
	cpx #$F7FE.w		; E0 FE F7
	and $C329.w,Y		; 39 29 C3
	sbc ($A0.b,X)		; E1 A0
	txa		; 8A
	ora $C0.b		; 05 C0
	cpx #$0202.w		; E0 02 02
	dec $01AB.w,X		; DE AB 01
	eor ($E1.b,X)		; 41 E1
	tad		; 5B
	asl A		; 0A
	cpx #$2349.w		; E0 49 23
	ldx $F0FF.w,Y		; BE FF F0
	adc $24.b		; 65 24
	cmp $02AAC3.l,X		; DF C3 AA 02
	eor $EA0A.w,X		; 5D 0A EA
	cmp $AA.b,X		; D5 AA
	ora ($37.b),Y		; 11 37
	tda		; 7B
	mvp $E7,$FA		; 44 FA E7
	cop $C0.b		; 02 C0
	clc		; 18
	bne -82.b		; D0 AE
	cpy #$637E.w		; C0 7E 63
	lda $F1.b,X		; B5 F1
	sbc $8C28A0.l,X		; FF A0 28 8C
	cmp $35.b,X		; D5 35
	adc $81FFF0.l		; 6F F0 FF 81
	sta $46.b,X		; 95 46
	inc $09.b,X		; F6 09
	sta [$7E.b],Y		; 97 7E
	lda $837C40.l,X		; BF 40 7C 83
	bcs  58.b		; B0 3A
	dec $38C7.w,X		; DE C7 38
	plb		; AB
	plp		; 28
	mvn $18,$01		; 54 01 18
	inc $5B68.w,X		; FE 68 5B
	phd		; 0B
	pea $A8AF.w		; F4 AF A8
	sbc $FF05.w,X		; FD 05 FF
	sec		; 38
	cmp $EF4F.w,X		; DD 4F EF
	bpl 102.b		; 10 66
	inc $50AF.w,X		; FE AF 50
	lsr $2A.b,X		; 56 2A
	rol A		; 2A
	bcs -44.b		; B0 D4
	ldy $8A.b		; A4 8A
	adc $CC4C58.l,X		; 7F 58 4C CC
	sbc $487F33.l,X		; FF 33 7F 48
	jsr ($C204.w,X)		; FC 04 C2
	jsr ($D603.w,X)		; FC 03 D6
	ldy $82.b		; A4 82
	sbc $FDF420.l,X		; FF 20 F4 FD
	and ($F5.b,S),Y		; 33 F5
	bpl  -2.b		; 10 FE
	cmp ($55.b,X)		; C1 55
	and ($3F.b)		; 32 3F
	asl $3AB5.w		; 0E B5 3A
	dec $4B4E.w		; CE 4E 4B
	and ($08.b)		; 32 08
	ply		; 7A
	sbc ($0E.b),Y		; F1 0E
	sbc $10FCC3.l,X		; FF C3 FC 10
	sbc $CEC03F.l		; EF 3F C0 CE
	and ($03.b),Y		; 31 03
	jsr ($E31C.w,X)		; FC 1C E3
	sty $FFAF.w		; 8C AF FF
	adc $C5A670.l		; 6F 70 A6 C5
	lda $A852C0.l,X		; BF C0 52 A8
	lsr A		; 4A
	lda $EC32.w		; AD 32 EC
	adc $CC93.w,X		; 7D 93 CC
	adc ($7B.b,S),Y		; 73 7B
	sbc $C9BAFF.l,X		; FF FF BA C9
	ora [$0F.b]		; 07 0F
	beq -32.b		; F0 E0
	ora $FFE01F.l,X		; 1F 1F E0 FF
	cpy #$36D5.w		; C0 D5 36
	jsr ($D720.w,X)		; FC 20 D7
	sbc $D62824.l,X		; FF 24 28 D6
	plb		; AB
	ldx $D55D.w,Y		; BE 5D D5
	ldy $56A8.w		; AC A8 56
	lsr A		; 4A
	rts		; 60

	nop		; EA
	sta ($FE.b,X)		; 81 FE
	bit $E4A2.w,X		; 3C A2 E4
	lda #$A926.w		; A9 26 A9
	tay		; A8
	cld		; D8
	cmp $FFEA28.l,X		; DF 28 EA FF
	pea $FE65.w		; F4 65 FE
	eor $B37B.w		; 4D 7B B3
	lda $DA.b		; A5 DA
	sta $CFC470.l		; 8F 70 C4 CF
	bmi  96.b		; 30 60
	bmi  -4.b		; 30 FC
	sta $CC33FC.l,X		; 9F FC 33 CC
	inc $AB.b,X		; F6 AB
	stx $F5.b,Y		; 96 F5
	sbc ($BA.b)		; F2 BA
	sbc $4D7C2F.l,X		; FF 2F 7C 4D
	sta [$FE.b]		; 87 FE
	inc $CCED.w,X		; FE ED CC
	tsx		; BA
	adc $839CAA.l,X		; 7F AA 9C 83
	jmp ($DCE4.w,X)		; 7C E4 DC
	cpx $C0FF.w		; EC FF C0
	tsb $3EF3.w		; 0C F3 3E
	.db $42, $5A		; 42 5A
	cpy $5D.b		; C4 5D
	sty $C2.b,X		; 94 C2
	inc $E357.w,X		; FE 57 E3
	tax		; AA
	eor $557CD0.l,X		; 5F D0 7C 55
	inc $C7A8.w,X		; FE A8 C7
	sbc $49A0.w,X		; FD A0 49
	jmp ($69DA.w)		; 6C DA 69
	.db $42, $4E		; 42 4E
	sbc $9503FF.l,X		; FF FF 03 95
	cpx $CF30.w		; EC 30 CF
	tax		; AA
	adc ($C1.b,S),Y		; 73 C1
	sta $75FED6.l,X		; 9F D6 FE 75
	adc ($DA.b,S),Y		; 73 DA
	bit $342F.w,X		; 3C 2F 34
	rti		; 40

	cmp $FD028C.l		; CF 8C 02 FD
	pla		; 68
	jmp.w [$E170]		; DC 70 E1
	sbc $5C51B4.l,X		; FF B4 51 5C
	pld		; 2B
	cmp ($BF.b,S),Y		; D3 BF
	and $B5E6B6.l,X		; 3F B6 E6 B5
	sta $057CFA.l,X		; 9F FA 7C 05
	cli		; 58
	lda [$CF.b],Y		; B7 CF
	plx		; FA
	ora ($2C.b)		; 12 2C
	rol $06.b		; 26 06
	sbc $EC3E.w,Y		; F9 3E EC
	sbc ($57.b)		; F2 57
	jmp $AA5A42.l		; 5C 42 5A AA
	lsr $56.b,X		; 56 56
	tax		; AA
	plx		; FA
	ora $40.b		; 05 40
	lda $FF.b		; A5 FF
	jsr ($3D7F.w,X)		; FC 7F 3D
	iny		; C8
	inx		; E8
	asl A		; 0A
	rts		; 60

	rts		; 60

	ror $66.b		; 66 66
	ror $6466.w,X		; 7E 66 64
	sta ($9C.b),Y		; 91 9C
	ldy $9F.b		; A4 9F
	sta $BE9699.l,X		; 9F 99 96 BE
	sbc $E89A18.l,X		; FF 18 9A E8
	ora #$21FE.w		; 09 FE 21
	and [$09.b]		; 27 09
	sbc $FD5319.l		; EF 19 53 FD
	jsl $EFF7BB.l		; 22 BB F7 EF
	inc $80D8.w,X		; FE D8 80
	eor $03134C.l		; 4F 4C 13 03
	bpl   3.b		; 10 03
	bmi  -5.b		; 30 FB
	tas		; 1B
	and $00.b,S		; 23 00
	sbc $FC9600.l		; EF 00 96 FC
	ldy $BCEC.w,X		; BC EC BC
	cpy $781C.w		; CC 1C 78
	tya		; 98
	ora $377C.w		; 0D 7C 37
	sta $F3FF.w,Y		; 99 FF F3
	ora $838FE0.l		; 0F E0 8F 83
	sbc $0BF8E0.l,X		; FF E0 F8 0B
	php		; 08
	ora $97DC.w		; 0D DC 97
	cpx #$F7FD.w		; E0 FD F7
	inc $17FF.w,X		; FE FF 17
	pei ($A0.b)		; D4 A0
	ora $30AAAD.l		; 0F AD AA 30
	beq -93.b		; F0 A3
	dey		; 88
	ora $570F.w		; 0D 0F 57
	rol A		; 2A
	lda ($A0.b)		; B2 A0
	ora $8860.w		; 0D 60 88
	ora $808B88.l		; 0F 88 8B 80
	ldy #$AA1A.w		; A0 1A AA
	lsr $82.b,X		; 56 82
	sta $F8E0.w,Y		; 99 E0 F8
	tas		; 1B
	lsr $948A.w		; 4E 8A 94
	stx $E0.b		; 86 E0
	sed		; F8
	ora ($7E.b,S),Y		; 13 7E
	stz $AF.b,X		; 74 AF
	cpx #$18F8.w		; E0 F8 18
	cop $92.b		; 02 92
	eor $96.b,X		; 55 96
	ldy $FE.b		; A4 FE
	bcc  44.b		; 90 2C
	lsr $1058.w,X		; 5E 58 10
	lda $F8.b,S		; A3 F8
	ora #$6CBF.w		; 09 BF 6C
	bmi  13.b		; 30 0D
	mvn $E0,$52		; 54 52 E0
	ldx $E08C.w,Y		; BE 8C E0
	sed		; F8
	ora #$F8BC.w		; 09 BC F8
	phd		; 0B
	cmp ($A4.b)		; D2 A4
	txa		; 8A
	bcc -128.b		; 90 80
	phd		; 0B
	and $5D.b		; 25 5D
	sec		; 38
	and ($E0.b,S),Y		; 33 E0
	sbc $F8E0D2.l,X		; FF D2 E0 F8
	ora $F89C.w		; 0D 9C F8
	phd		; 0B
	eor ($AF.b),Y		; 51 AF
	cpx #$15FC.w		; E0 FC 15
	eor [$9C.b],Y		; 57 9C
	sbc $9CFDE0.l,X		; FF E0 FD 9C
	inc $0024.w,X		; FE 24 00
	ora $38.b		; 05 38
	sbc $8030.w,X		; FD 30 80
	phd		; 0B
	eor $15.b		; 45 15
	cpx #$09F8.w		; E0 F8 09
	adc [$7A.b]		; 67 7A
	stx $F8E0.w		; 8E E0 F8
	asl $34.b,X		; 16 34
	dey		; 88
	tsb $88C3.w		; 0C C3 88
	ora $F0ED55.l		; 0F 55 ED F0
	phk		; 4B
	lda $2C28.w,Y		; B9 28 2C
	eor $F8FA8F.l		; 4F 8F FA F8
	asl A		; 0A
	ldx $32.b,Y		; B6 32
	tsb $FCFE.w		; 0C FE FC
	inc A		; 1A
	lda $1C2EDC.l,X		; BF DC 2E 1C
	trb $FF.b		; 14 FF
	lda $4E56.w		; AD 56 4E
	cmp [$41.b]		; C7 41
	inc $D130.w,X		; FE 30 D1
	and ($57.b,X)		; 21 57
	cmp $10.b,X		; D5 10
	xba		; EB
	bpl  66.b		; 10 42
	ldx $3189.w,Y		; BE 89 31
	phb		; 8B
	sbc $0384.w		; ED 84 03
	phb		; 8B
	and ($8C.b,X)		; 21 8C
	tda		; 7B
	sty $3F.b,X		; 94 3F
	tya		; 98
	bpl   4.b		; 10 04
	tsb $0E.b		; 04 0E
	asl A		; 0A
	ora $15.b,X		; 15 15
	plx		; FA
	sbc $AA05FC.l,X		; FF FC 05 AA
	sbc $430435.l,X		; FF 35 04 43
	eor $F87F.w,Y		; 59 7F F8
	ora #$998E.w		; 09 8E 99
	ora $06.b		; 05 06
	phd		; 0B
	tsb $1D33.w		; 0C 33 1D
	tsa		; 3B
	ora $FB67FD.l		; 0F FD 67 FB
	cmp $EEDF3B.l		; CF 3B DF EE
	ora $86.b,S		; 03 86
	eor ($3E.b,S),Y		; 53 3E
	brk $7C.b		; 00 7C
	brk $FF.b		; 00 FF
	sta [$F4.b]		; 87 F4
	brk $E4.b		; 00 E4
	brk $A3.b		; 00 A3
	cmp [$9B.b]		; C7 9B
	eor $BF7BBF.l,X		; 5F BF 7B BF
	xce		; FB
	inc $9E3F.w,X		; FE 3F 9E
	sbc $BAFEBB.l,X		; FF BB FE BA
	sbc $FCB9.w,X		; FD B9 FC
	cpx $00C4.w		; EC C4 00
	mvp $CA,$AF		; 44 AF CA
	inc $0045.w,X		; FE 45 00
	lsr $DE.b		; 46 DE
	.db $82, $2A, $72		; 82 2A 72
	txy		; 9B
	sta ($80.b),Y		; 91 80
	sbc $F0A4A8.l,X		; FF A8 A4 F0
	txs		; 9A
	ora $FFFF4C.l,X		; 1F 4C FF FF
	ror $DA.b,X		; 76 DA
	jsr ($6AAA.w,X)		; FC AA 6A
	sbc $511BFE.l		; EF FE 1B 51
	jsr $FEFF.w		; 20 FF FE
	inc $FE20.w,X		; FE 20 FE
	inc $E6FE.w,X		; FE FE E6
	sbc $A2.b,S		; E3 A2
	sbc $2803.w,X		; FD 03 28
	xce		; FB
	mvn $6D,$06		; 54 06 6D
	sbc $A2.b,S		; E3 A2
	lsr $FC.b,X		; 56 FC
	cop $03.b		; 02 03
	ora $6FFF.w		; 0D FF 6F
	asl $0D.b		; 06 0D
	tas		; 1B
	and $4D33.w,Y		; 39 33 4D
	adc $4FDDAF.l,X		; 7F AF DD 4F
	sta $FD6F.w,X		; 9D 6F FD
	brk $6A.b		; 00 6A
	asl $7E3C.w,X		; 1E 3C 7E
	.db $42, $72		; 42 72
	brk $F2.b		; 00 F2
	inc $0092.w,X		; FE 92 00
	tyx		; BB
	adc $41F43F.l,X		; 7F 3F F4 41
	.db $42, $44		; 42 44
	jsr ($B3F7.w,X)		; FC F7 B3
	sbc $4244AB.l		; EF AB 44 42
	jsr ($FD2A.w,X)		; FC 2A FD
	mvp $52,$4C		; 44 4C 52
	sta ($EC.b,X)		; 81 EC
	cmp $3B7F9B.l,X		; DF 9B 7F 3B
	pea $C53F.w		; F4 3F C5
	bcs -25.b		; B0 E7
	ldy #$83DC.w		; A0 DC 83
	sbc [$98.b]		; E7 98
	cpx $DC64.w		; EC 64 DC
	ror A		; 6A
	brk $4F.b		; 00 4F
	asl $7BA9.w,X		; 1E A9 7B
	and ($A0.b),Y		; 31 A0
	cpx #$010B.w		; E0 0B 01
	sty $FD.b,X		; 94 FD
	sta $3F.b		; 85 3F
	eor $F0.b,S		; 43 F0
	phd		; 0B
	cmp [$32.b],Y		; D7 32
	sbc $3B000C.l,X		; FF 0C 00 3B
	ora $6F.b,S		; 03 6F
	ora $C03EEF.l		; 0F EF 3E C0
	inc $0FE8.w,X		; FE E8 0F
	ldx $3E.b		; A6 3E
	nop		; EA
	bra  60.b		; 80 3C
	lda $F0.b		; A5 F0
	brk $70.b		; 00 70
	ldx $99.b		; A6 99
	inc $76C1.w,X		; FE C1 76
	rol $FFE3.w,X		; 3E E3 FF
	tax		; AA
	and ($C1.b),Y		; 31 C1
	tad		; 5B
	and $2A53.w		; 2D 53 2A
	jsr $FF3C.w		; 20 3C FF
	sed		; F8
	phd		; 0B
	cpy #$E0FF.w		; C0 FF E0
	sta $40FF44.l,X		; 9F 44 FF 40
	cpy #$E180.w		; C0 80 E1
	adc ($78.b,X)		; 61 78
	phd		; 0B
	asl $AF.b		; 06 AF
	inc $F8FF.w,X		; FE FF F8
	asl A		; 0A
	brk $15.b		; 00 15
	ora $04.b,X		; 15 04
	bra  12.b		; 80 0C
	rol $F1.b,X		; 36 F1
	iny		; C8
	inc $17.b,X		; F6 17
	ora $0C0E14.l		; 0F 14 0E 0C
	lda $F7.b,X		; B5 F7
	asl $8A10.w		; 0E 10 8A
	cmp $FCFE.w,Y		; D9 FE FC
	ora ($15.b,S),Y		; 13 15
	adc ($1A.b,X)		; 61 1A
	brk $32.b		; 00 32
	bcc  -9.b		; 90 F7
	cpy #$41FF.w		; C0 FF 41
	sbc ($49.b,X)		; E1 49
	stp		; DB
	sbc $32F1CF.l,X		; FF CF F1 32
	dey		; 88
	ora #$DBF2.w		; 09 F2 DB
	ora [$FF.b]		; 07 FF
	sbc $040602.l,X		; FF 02 06 04
	ora #$030D.w		; 09 0D 03
	ora $030B07.l		; 0F 07 0B 03
	sbc $636B27.l		; EF 27 6B 63
	adc $0C4306.l		; 6F 06 43 0C
	asl A		; 0A
	ora [$08.b]		; 07 08
	tyx		; BB
	tsb $ECFE.w		; 0C FE EC
	adc $73FCF8.l,X		; 7F F8 FC 73
	tsb $2D72.w		; 0C 72 2D
	bpl 127.b		; 10 7F
	sbc $FEFE.w		; ED FE FE
	jmp ($69FB.w)		; 6C FB 69
	sbc $65F7FE.l,X		; FF FE F7 65
	cmp $2DBF4D.l,X		; DF 4D BF 2D
	sbc $AC926D.l,X		; FF 6D 92 AC
	sbc ($93.b),Y		; F1 93
	brk $96.b		; 00 96
	brk $9A.b		; 00 9A
	cmp [$FF.b]		; C7 FF
	brk $B2.b		; 00 B2
	jmp $F4D2.w		; 4C D2 F4
	cmp $3A7E9B.l,X		; DF 9B 7E 3A
	sbc $FEB8.w,X		; FD B8 FE
	lda $8FFF.w,Y		; B9 FF 8F
	pea $FCB3.w		; F4 B3 FC
	lda ($E4.b,S),Y		; B3 E4
	plb		; AB
	sbc $AA.b,X		; F5 AA
	stz $00.b		; 64 00
	cmp $00.b		; C5 00
	eor [$85.b]		; 47 85
	sbc $BE4FFE.l,X		; FF FE 4F BE
	sbc ($FE.b,S),Y		; F3 FE
	jmp $D733.w		; 4C 33 D7
	pld		; 2B
	adc $996D98.l		; 6F 98 6D 99
	sbc $06FFFF.l,X		; FF FF FF 06
	xba		; EB
	php		; 08
	sbc $405F30.l,X		; FF 30 5F 40
	sbc $1BFF0B.l,X		; FF 0B FF 1B
	sbc $38FE38.l,X		; FF 38 FE 38
	adc $A0F978.l		; 6F 78 F9 A0
	sbc [$80.b],Y		; F7 80
	cmp $0599D6.l		; CF D6 99 05
	adc $010006.l,X		; 7F 06 00 01
	ora #$83F8.w		; 09 F8 83
	bra   2.b		; 80 02
	ora ($02.b,X)		; 01 02
	ora $02.b		; 05 02
	ora ($16.b),Y		; 11 16
	eor $2CFFEA.l,X		; 5F EA FF 2C
	sbc ($1C.b),Y		; F1 1C
	sbc ($A1.b)		; F2 A1
	sbc ($9E.b),Y		; F1 9E
	ora $9413.w,Y		; 19 13 94
	beq  28.b		; F0 1C
	ldy #$605C.w		; A0 5C 60
	eor $DB0F60.l,X		; 5F 60 0F DB
	eor $5461.w,X		; 5D 61 54
	adc [$70.b]		; 67 70
	sbc $0F3F.w,Y		; F9 3F 0F
	bra -61.b		; 80 C3
	adc $DF11F6.l,X		; 7F F6 11 DF
	eor [$78.b]		; 47 78
	bra  96.b		; 80 60
	bra  64.b		; 80 40
	bra -82.b		; 80 AE
	sbc ($FF.b),Y		; F1 FF
	and $403F.w,Y		; 39 3F 40
	xba		; EB
	cmp [$32.b],Y		; D7 32
	lsr $79.b,X		; 56 79
	sbc $84441C.l		; EF 1C 44 84
	cmp ($E6.b,X)		; C1 E6
	bpl -36.b		; 10 DC
	lda $FEFF.w,Y		; B9 FF FE
	sbc $EF.b,X		; F5 EF
	cpy #$A282.w		; C0 82 A2
	sta [$A5.b]		; 87 A5
	jsr $0182.w		; 20 82 01
	adc ($FE.b),Y		; 71 FE
	sbc $0260.w,X		; FD 60 02
	cmp ($E1.b,X)		; C1 E1
	rts		; 60

	ora [$FE.b]		; 07 FE
	nop		; EA
	sbc $04.b,S		; E3 04
	ora [$79.b]		; 07 79
	cop $0C.b		; 02 0C
	and $0D05FC.l		; 2F FC 05 0D
	ora $3612.w,X		; 1D 12 36
	rol $F6.b		; 26 F6
	rtl		; 6B

	tsb $1801.w		; 0C 01 18
	ora ($30.b,X)		; 01 30
	sbc $7406FF.l,X		; FF FF 06 74
	bit $5CCC.w		; 2C CC 5C
	sta $9C.b,X		; 95 9C
	and $6D.b,X		; 35 6D
	eor [$4D.b],Y		; 57 4D
	sta [$8F.b],Y		; 97 8F
	asl $0B.b,X		; 16 0B
	ora [$FF.b],Y		; 17 FF
	cmp $04720E.l,X		; DF 0E 72 04
.INDEX 16
	rep #$18		; C2 18
	sta $10.b,S		; 83 10
	ora ($60.b,S),Y		; 13 60
	ora ($40.b,S),Y		; 13 40
	ora ($80.b,S),Y		; 13 80
	ora [$00.b],Y		; 17 00
	sta ($FF.b),Y		; 91 FF
	sbc $D077C2.l,X		; FF C2 77 D0
	sbc [$A0.b]		; E7 A0
	cpx #$B7FA.w		; E0 FA B7
	ora $EB9E.w,X		; 1D 9E EB
	adc ($16.b),Y		; 71 16
	and $8B.b		; 25 8B
	sbc $FEEF.w		; ED EF FE
	sbc [$07.b],Y		; F7 07
	sbc [$02.b],Y		; F7 02
	beq  96.b		; F0 60
	.db $42, $20		; 42 20
	ldx $598E.w,Y		; BE 8E 59
	adc ($00.b)		; 72 00
	and ($1D.b),Y		; 31 1D
	and [$FF.b],Y		; 37 FF
	eor $371B1B.l,X		; 5F 1B 1B 37
	sta [$3B.b],Y		; 97 3B
	lda $BBA7B3.l,X		; BF B3 A7 BB
	adc $BBE7B3.l,X		; 7F B3 E7 BB
	rol $E9E2.w,X		; 3E E2 E9
	tay		; A8
	xce		; FB
	inc $A2FC.w,X		; FE FC A2
	sbc ($FE.b,X)		; E1 FE
	jsr ($6DFF.w,X)		; FC FF 6D
	inc $6CFD.w,X		; FE FD 6C
	plx		; FA
	pla		; 68
	cmp [$FB.b],Y		; D7 FB
	sbc $44D563.l,X		; FF 63 D5 44
	ldy #$9CF2.w		; A0 F2 9C
	pea $0097.w		; F4 97 00
	stz $89DC.w		; 9C DC 89
	cmp [$99.b]		; C7 99
	nop		; EA
	adc $FF923F.l,X		; 7F 3F 92 FF
	sty $1057.w		; 8C 57 10
	sbc $5CBF60.l,X		; FF 60 BF 5C
	rtl		; 6B

	ror $7D00.w,X		; 7E 00 7D
	brk $73.b		; 00 73
	tax		; AA
	tax		; AA
	ldy #$3A98.w		; A0 98 3A
	stx $DB.b,Y		; 96 DB
	lsr $6F.b		; 46 6F
	cmp [$1E.b]		; C7 1E
	beq  -8.b		; F0 F8
	ora $D881.w		; 0D 81 D8
	tsb $C002.w		; 0C 02 C0
	bra -40.b		; 80 D8
	tsb $1AC2.w		; 0C C2 1A
	sbc $1307.w,X		; FD 07 13
	bit $F0.b		; 24 F0
	cmp $23.b,S		; C3 23
	ora ($40.b),Y		; 11 40
	eor [$89.b]		; 47 89
	asl $8E89.w		; 0E 89 8E
	inc $EF04.w,X		; FE 04 EF
	sta [$03.b]		; 87 03
	ora ($06.b,X)		; 01 06
	ora ($26.b,X)		; 01 26
	sta $F1.b		; 85 F1
	mvp $05,$8A		; 44 8A 05
	php		; 08
	ora [$FE.b]		; 07 FE
	sbc $FF61BE.l,X		; FF BE 61 FF
	adc $71.b,X		; 75 71
	eor $1D41.w,X		; 5D 41 1D
	adc ($5D.b,X)		; 61 5D
	inc $60FC.w,X		; FE FC 60
	bra   0.b		; 80 00
	stx $FFFE.w		; 8E FE FF
	lsr $81.b		; 46 81
	stz $0C.b,X		; 74 0C
	adc $827D80.l,X		; 7F 80 7D 82
	sta $FD.b,X		; 95 FD
	sta ($FE.b,S),Y		; 93 FE
	bra -25.b		; 80 E7
	sty $D8.b		; 84 D8
	bcc  23.b		; 90 17
	sbc $E0E0.w		; ED E0 E0
	bra  96.b		; 80 60
	php		; 08
	sbc #$C2B1.w		; E9 B1 C2
	cmp $783F.w,Y		; D9 3F 78
	sbc $FFFF47.l,X		; FF 47 FF FF
	cmp [$20.b]		; C7 20
	rts		; 60

	dec A		; 3A
	plx		; FA
	stz $8CB6.w		; 9C B6 8C
	phx		; DA
	phb		; 8B
	cmp ($2E.b,S),Y		; D3 2E
	bne  76.b		; D0 4C
	sbc ($20.b),Y		; F1 20
	sbc $8205F1.l,X		; FF F1 05 82
	brk $C0.b		; 00 C0
	clc		; 18
	rts		; 60

	tsb $0430.w		; 0C 30 04
	bit $2FDA.w,X		; 3C DA 2F
	brk $FF.b		; 00 FF
	sbc $0D6424.l,X		; FF 24 64 0D
	ora $1617.w,X		; 1D 17 16
	rol $28.b		; 26 28
	sty $97.b,X		; 94 97
	nop		; EA
	and ($53.b,S),Y		; 33 53
	sbc $A7.b,S		; E3 A7
	cmp [$FF.b]		; C7 FF
	xce		; FB
	rts		; 60

	tsb $00.b		; 04 00
	eor $5300.w,Y		; 59 00 53
	ora $807840.l,X		; 1F 40 78 80
	jsr ($F1DA.w,X)		; FC DA F1
	sed		; F8
	brk $1C.b		; 00 1C
	sbc $DF063F.l,X		; FF 3F 06 DF
	eor $AD79.w		; 4D 79 AD
	sta $DB3AFB.l,X		; 9F FB 3A DB
	rol $FF.b,X		; 36 FF
	inc $E5B7.w,X		; FE B7 E5
	sbc [$7C.b],Y		; F7 7C
	phd		; 0B
	ldy $1E.b		; A4 1E
	cpy #$E01E.w		; C0 1E E0
	trb $F1BC.w		; 1C BC F1
	sec		; 38
	jsr ($FF79.w,X)		; FC 79 FF
	sbc $3D57FE.l,X		; FF FE 57 3D
	xba		; EB
	eor $DD83.w,Y		; 59 83 DD
	lsr A		; 4A
	cmp ($13.b,X)		; C1 13
	cmp [$57.b],Y		; D7 57
	tas		; 1B
	sta $3FB79D.l		; 8F 9D B7 3F
	jsr ($E2DB.w,X)		; FC DB E2
	brk $A6.b		; 00 A6
	brk $3E.b		; 00 3E
	php		; 08
	inc $40E9.w,X		; FE E9 40
	inc $40.b		; E6 40
	ror $FFFF.w		; 6E FF FF
	brk $3D.b		; 00 3D
	brk $BF.b		; 00 BF
	sbc ($A6.b,S),Y		; F3 A6
	plx		; FA
	eor $E1DDF0.l		; 4F F0 DD E1
	sbc $E88BD6.l		; EF D6 8B E8
	sbc $B0D78D.l,X		; FF 8D D7 B0
	adc $7D194E.l,X		; 7F 4E 19 7D
	stz $7E.b		; 64 7E
	brk $79.b		; 00 79
	inc $8081.w,X		; FE 81 80
	nop		; EA
	adc $FFFD.w		; 6D FD FF
	clc		; 18
	cmp [$91.b],Y		; D7 91
	cpy #$F0CA.w		; C0 CA F0
	ora #$A0E7.w		; 09 E7 A0
	sta $FE.b		; 85 FE
	sed		; F8
	ora $F901FE.l		; 0F FE 01 F9
	asl $17.b		; 06 17
	sbc $C909F6.l,X		; FF F6 09 C9
	and [$EC.b],Y		; 37 EC
	sed		; F8
	tsb $FC60.w		; 0C 60 FC
	ora $F3.b,S		; 03 F3
	tsb $13EC.w		; 0C EC 13
	sbc $6F93F5.l,X		; FF F5 93 6F
	adc $6F979F.l		; 6F 9F 97 6F
	jmp ($F0EC.w,X)		; 7C EC F0
	sed		; F8
	ldx $2C.b		; A6 2C
	phy		; 5A
	and ($98.b)		; 32 98
	bpl  -6.b		; 10 FA
	tsa		; 3B
	ora ($F4.b,S),Y		; 13 F4
	cmp $F29C.w,Y		; D9 9C F2
	and [$06.b],Y		; 37 06
	phd		; 0B
	tsb $03.b		; 04 03
	cop $1E.b		; 02 1E
	sbc #$4D00.w		; E9 00 4D
	clc		; 18
	sbc $89E7.w,X		; FD E7 89
	sbc ($39.b),Y		; F1 39
	inx		; E8
	cpy $DA.b		; C4 DA
	ora ($02.b,X)		; 01 02
	sbc $E102.w,X		; FD 02 E1
	sbc $FE8681.l,X		; FF 81 86 FE
	lda #$8A86.w		; A9 86 8A
	sty $89.b		; 84 89
	sta $83.b		; 85 83
	stx $8887.w		; 8E 87 88
	adc ($FC.b),Y		; 71 FC
	phb		; 8B
	bra -27.b		; 80 E5
	ora $01FC60.l		; 0F 60 FC 01
	asl $0C03.w		; 0E 03 0C
	sbc ($FF.b,X)		; E1 FF
	cop $0D.b		; 02 0D
	inc $605B.w,X		; FE 5B 60
	and ($44.b,S),Y		; 33 44
	lda [$C8.b],Y		; B7 C8
	adc $30EF90.l,X		; 7F 90 EF 30
	xce		; FB
	rol $209F.w		; 2E 9F 20
	eor $7BE1F8.l,X		; 5F F8 E1 7B
	sty $77.b		; 84 77
	dey		; 88
	cli		; 58
	inc A		; 1A
	lda $3A5A40.l,X		; BF 40 5A 3A
	jmp ($FE84.w,X)		; 7C 84 FE
	lda $DD01.w,Y		; B9 01 DD
	ora ($EF.b,X)		; 01 EF
	.db $62, $78, $5F		; 62 78 5F
	xce		; FB
	beq  14.b		; F0 0E
	sbc $C815.w		; ED 15 C8
	and $6A.b,S		; 23 6A
	jsl $FDFC64.l		; 22 64 FC FD
	cpx #$0B23.w		; E0 23 0B
	tyx		; BB
	sta $5FFF.w		; 8D FF 5F
	inc $1A.b		; E6 1A
	cpy $B814.w		; CC 14 B8
	and #$D371.w		; 29 71 D3
	cmp ($5F.b,S),Y		; D3 5F
	lda $671E8F.l,X		; BF 8F 1E 67
	mvp $80,$23		; 44 23 80
	sed		; F8
	bpl -32.b		; 10 E0
	cpx $F15C.w		; EC 5C F1
	brk $4E.b		; 00 4E
	sbc $7E4EFF.l,X		; FF FF 4E 7E
	sbc $7A3D.w,X		; FD 3D 7A
	cmp $F3D7.w,Y		; D9 D7 F3
	sbc $9FEB.w		; ED EB 9F
	inc $3B.b,X		; F6 3B
	ldy $5E.b,X		; B4 5E
	lda ($FF.b),Y		; B1 FF
	sbc $008300.l,X		; FF 00 83 00
	cmp [$00.b]		; C7 00
	and $1B00.w		; 2D 00 1B
	brk $73.b		; 00 73
	jsr $40C7.w		; 20 C7 40
	sbc [$80.b]		; E7 80
	sbc $BFFF.w,X		; FD FF BF
	adc $FBEFC8.l		; 6F C8 EF FB
	cmp $FFDB9E.l,X		; DF 9E DB FF
	ldy $B8B4.w,X		; BC B4 B8
	tda		; 7B
	adc $A5.b,S		; 63 A5
	cpy $2D.b		; C4 2D
	cpy #$DA2A.w		; C0 2A DA
	sbc ($DA.b,X)		; E1 DA
	sbc ($CF.b),Y		; F1 CF
	cld		; D8
	sbc ($18.b),Y		; F1 18
	stz $7F69.w,X		; 9E 69 7F
	lda ($B1.b,X)		; A1 B1
	sbc ($C2.b)		; F2 C2
	adc $10978C.l		; 6F 8C 97 10
	adc $88EF60.l,X		; 7F 60 EF 88
	sbc ($5E.b,S),Y		; F3 5E
	.db $82, $60, $E8		; 82 60 E8
	trb $9F.b		; 14 9F
	ora #$F202.w		; 09 02 F2
	ora $E860.w		; 0D 60 E8
	ora $4654.w		; 0D 54 46
	sbc $04FB57.l,X		; FF 57 FB 04
	cpx $1B.b		; E4 1B
	txy		; 9B
	adc [$67.b]		; 67 67
	sta $5D7E9E.l,X		; 9F 9E 7E 5D
	ldy $FCE8.w,X		; BC E8 FC
	asl $F2.b		; 06 F2
	sed		; F8
	sbc $008162.l,X		; FF 62 81 00
	adc $40.b,S		; 63 40
	and [$CF.b],Y		; 37 CF
	cmp $DE2E3F.l		; CF 3F 2E DE
	sed		; F8
	cld		; D8
	adc $F0E0F8.l,X		; 7F F8 E0 F0
	bcc -112.b		; 90 90
	tya		; 98
	bcc -120.b		; 90 88
	bcc -126.b		; 90 82
	cpy #$3100.w		; C0 00 31
	jsr $FF8A.w		; 20 8A FF
	and [$9C.b]		; 27 9C
	sbc #$D162.w		; E9 62 D1
	inc $C8C8.w,X		; FE C8 C8
	jmp $C448.w		; 4C 48 C4
	pha		; 48
	pei ($B9.b)		; D4 B9
	rts		; 60

	pha		; 48
	dec $FE.b,X		; D6 FE
	stz $613D.w,X		; 9E 3D 61
	jsl $0BF8FE.l		; 22 FE F8 0B
	ora $FD.b,S		; 03 FD
	cmp #$D9B2.w		; C9 B2 D9
	lda [$59.b]		; A7 59
	cop $02.b		; 02 02
	tsb $01.b		; 04 01
	ora $01.b		; 05 01
	plx		; FA
	tya		; 98
	cmp $FA43.w,Y		; D9 43 FA
	ora ($06.b,X)		; 01 06
	ora $EF.b,S		; 03 EF
	ora $FC.b		; 05 FC
	tsb $03.b		; 04 03
	sta $FF8A.w		; 8D 8A FF
	sbc $B1B1B9.l,X		; FF B9 B1 B1
	lda $A5.b		; A5 A5
	bit #$90C6.w		; 89 C6 90
	stx $20.b,Y		; 96 20
	tsa		; 3B
	rti		; 40

	sbc $0F80.w,X		; FD 80 0F
	jsr $FF7F.w		; 20 7F FF
	and ($0C.b)		; 32 0C
	rol $18.b		; 26 18
	asl $1F30.w		; 0E 30 1F
	rts		; 60

	plx		; FA
	bit $30AF.w		; 2C AF 30
	cmp [$98.b],Y		; D7 98
	sbc #$FFCF.w		; E9 CF FF
	sbc $F6F6.w,X		; FD F6 F6
	sbc [$E9.b]		; E7 E9
	cmp $D6.b,S		; C3 D6
	ora $F8373C.l,X		; 1F 3C 37 F8
.ACCU 16
	rep #$21		; C2 21
	rts		; 60

	ora $FA1730.l		; 0F 30 17 FA
	lda [$08.b],Y		; B7 08
	trb $7AEA.w		; 1C EA 7A
	jsl $3D7BAA.l		; 22 AA 7B 3D
	sbc ($DE.b),Y		; F1 DE
	cpx #$CEBF.w		; E0 BF CE
	and $FFFEDC.l		; 2F DC FE FF
.ACCU 8
	sep #$E1		; E2 E1
	trb $0BF8.w		; 1C F8 0B
	and [$30.b],Y		; 37 30
	jmp ($B9F3.w,X)		; 7C F3 B9
	inc $53.b		; E6 53
	jmp ($3FAC.w,X)		; 7C AC 3F
	dec $1B.b,X		; D6 1B
	cpx $DFFF.w		; EC FF DF
	ora $CF01F9.l		; 0F F9 01 CF
	ora $0F.b,S		; 03 0F
	asl $1F.b		; 06 1F
	tsb $1E9F.w		; 0C 9F 1E
	cmp $D8E60E.l		; CF 0E E6 D8
	cmp $FFFF.w,Y		; D9 FF FF
	inc $7700.w,X		; FE 00 77
	sta $3667.w,Y		; 99 67 36
	phk		; 4B
	jmp ($5935.w)		; 6C 35 59
	adc $C8ABE6.l,X		; 7F E6 AB C8
	and $082F30.l,X		; 3F 30 2F 08
	lda $40E780.l,X		; BF 80 E7 40
	cmp $BCF1C4.l		; CF C4 F1 BC
	rts		; 60

	cpx $EBAF.w		; EC AF EB
	ldx $5F.b,Y		; B6 5F
	tya		; 98
	lda $D91D20.l		; AF 20 1D D9
	lda ($FD.b)		; B2 FD
	jsr ($6003.w,X)		; FC 03 60
	inx		; E8
	ora ($64.b,S),Y		; 13 64
	nop		; EA
	inc $F0.b		; E6 F0
	inc $B719.w,X		; FE 19 B7
	adc [$9F.b]		; 67 9F
	sta [$6E.b],Y		; 97 6E
	stz $E8.b		; 64 E8
	phd		; 0B
	cpx #$9900.w		; E0 00 99
	bpl -51.b		; 10 CD
	sbc $33DF.w,X		; FD DF 33
	and ($BE.b,S),Y		; 33 BE
	sbc ($2D.b),Y		; F1 2D
	cmp $D9FB.w,X		; DD FB D9
	sbc $F1.b,S		; E3 F1
	sta ($91.b,S),Y		; 93 91
	.db $82, $91, $64		; 82 91 64
	nop		; EA
	adc $00C0FC.l		; 6F FC C0 00
	and ($20.b)		; 32 20
	rol $DA.b		; 26 DA
	cmp ($7E.b,X)		; C1 7E
	inc $B0F1.w,X		; FE F1 B0
	cmp ($E0.b,X)		; C1 E0
	sbc $2021EF.l,X		; FF EF 21 20
	and ($20.b),Y		; 31 20
	ora ($20.b),Y		; 11 20
	eor ($20.b),Y		; 51 20
	eor $5820.w,Y		; 59 20 58
	jsr $A24F.w		; 20 4F A2
	sed		; F8
	asl $F1A8.w		; 0E A8 F1
	sta $FEAC90.l		; 8F 90 AC FE
	bit $3380.w,X		; 3C 80 33
	bra  15.b		; 80 0F
	bra  63.b		; 80 3F
	asl A		; 0A
	eor $F48A1C.l,X		; 5F 1C 8A F4
	inc $F0FE.w,X		; FE FE F0
	sta $8740.w,Y		; 99 40 87
	rti		; 40

	sta $55D281.l,X		; 9F 81 D2 55
	sbc $FDFE.w		; ED FE FD
	txa		; 8A
	pea $D880.w		; F4 80 D8
	ora ($81.b,S),Y		; 13 81
	phx		; DA
	cmp ($C0.b,X)		; C1 C0
	phd		; 0B
	inc $E2.b		; E6 E2
	brk $0E.b		; 00 0E
	ora $FF07.w,Y		; 19 07 FF
	sbc $616103.l		; EF 03 61 61
	rts		; 60

	pha		; 48
	eor $27971F.l		; 4F 1F 97 27
	tas		; 1B
	eor $AD.b,S		; 43 AD
	cpy #$F164.w		; C0 64 F1
	mvp $F8,$FF		; 44 FF F8
	adc ($06.b,X)		; 61 06
	jmp $1033.w		; 4C 33 10
	rts		; 60

	sec		; 38
	cpy #$907C.w		; C0 7C 90
	ror $7C81.w,X		; 7E 81 7C
	sbc $BA824F.l,X		; FF 4F 82 BA
	cmp [$D3.b]		; C7 D3
	sbc $CF3A25.l		; EF 25 3A CF
	tay		; A8
	lda ($5A.b),Y		; B1 5A
	tsa		; 3B
	inc $7E.b		; E6 7E
	sbc [$AC.b],Y		; F7 AC
	rol $EA.b		; 26 EA
	and [$C0.b],Y		; 37 C0
	eor $34BD00.l,X		; 5F 00 BD 34
	sbc ($AF.b,X)		; E1 AF
	bmi -12.b		; 30 F4
	sbc ($E0.b,X)		; E1 E0
	sta $60F55A.l,X		; 9F 5A F5 60
	rts		; 60

	jmp $9C06.w		; 4C 06 9C
	sta $F063BC.l,X		; 9F BC 63 F0
	sed		; F8
	ora #$FE.b		; 09 FE
	sed		; F8
	and ($BE.b,X)		; 21 BE
	pea $27D9.w		; F4 D9 27
	sbc $A5FF.w,X		; FD FF A5
	tad		; 5B
	jsl $E60DE0.l		; 22 E0 0D E6
	tsb $F3.b		; 04 F3
	tsb $33CC.w		; 0C CC 33
	lda ($4F.b,S),Y		; B3 4F
	phk		; 4B
	lda [$BE.b],Y		; B7 BE
	ror $DF.b,X		; 76 DF
	phd		; 0B
	sei		; 78
	jsr ($E4E4.w,X)		; FC E4 E4
	ldy #$22A4.w		; A0 A4 22
	cpx $CC.b		; E4 CC
	php		; 08
	bit #$DA.b		; 89 DA
	lda ($FF.b,S),Y		; B3 FF
	sbc $EC7D7C.l,X		; FF 7C 7D EC
	sbc ($F8.b),Y		; F1 F8
	cmp #$C8.b		; C9 C8
	eor ($48.b,X)		; 41 48
	cmp $48.b		; C5 48
	cmp $9C40.w,X		; DD 40 9C
	rti		; 40

	sta ($FA.b,S),Y		; 93 FA
	eor $E20C40.l,X		; 5F 40 0C E2
	jmp ($0BE8.w,X)		; 7C E8 0B
	txa		; 8A
	sta ($BA.b),Y		; 91 BA
	sta ($3A.b,X)		; 81 3A
	sta ($39.b,X)		; 81 39
	bra   7.b		; 80 07
.ACCU 16
.INDEX 16
	rep #$F3		; C2 F3
	eor #$E0A8.w		; 49 A8 E0
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
.ACCU 16
.INDEX 16
	rep #$F6		; C2 F6
	inc $3667.w,X		; FE 67 36
	xba		; EB
	lsr $7F.b,X		; 56 7F
	ror $F8.b		; 66 F8
	ora $F8FF.w,Y		; 19 FF F8
	ora $0006.w		; 0D 06 00
	tsx		; BA
	sbc $B8.b,S		; E3 B8
	asl A		; 0A
	sta ($D1.b)		; 92 D1
	ora ($19.b,X)		; 01 19
	ora $0412.w,Y		; 19 12 04
	adc [$F8.b]		; 67 F8
	sbc $95135E.l,X		; FF 5E 13 95
	and ($DE.b,X)		; 21 DE
	adc ($68.b,X)		; 61 68
	ror $01.b,X		; 76 01
	ora ($19.b)		; 12 19
	cop $06.b		; 02 06
	cmp $4859FF.l,X		; DF FF 59 48
	bmi  28.b		; 30 1C
	rts		; 60

	rol $DBE0.w,X		; 3E E0 DB
	bit $B3C3.w,X		; 3C C3 B3
	dec $724B.w		; CE 4B 72
	tsb $7F86.w		; 0C 86 7F
	adc ($EE.b,X)		; 61 EE
	lda ($B7.b),Y		; B1 B7
	stz $D3.b,X		; 74 D3
	inx		; E8
	lda $DAE8C0.l,X		; BF C0 E8 DA
	nop		; EA
	sta $FE2860.l,X		; 9F 60 28 FE
	lsr $BB.b		; 46 BB
	dey		; 88
	jsr ($7CDA.w,X)		; FC DA 7C
	ora $F8.b,S		; 03 F8
	sta [$70.b]		; 87 70
	sbc $0FF0.w		; ED F0 0F
	cpy #$E90F.w		; C0 0F E9
	rti		; 40

	rti		; 40

	plb		; AB
	inc $EE03.w,X		; FE 03 EE
	pea $E40B.w		; F4 0B E4
	ora $E41B0A.l		; 0F 0A 1B E4
	tad		; 5B
	cpx $DB.b		; E4 DB
	dec $DF.b,X		; D6 DF
	and $FDFE.w,Y		; 39 FE FD
	sta $E1.b,S		; 83 E1
	cmp $F020FF.l,X		; DF FF 20 F0
	inc $09F8.w,X		; FE F8 09
	lda $D920D1.l,X		; BF D1 20 D9
	sbc $A524DF.l,X		; FF DF 24 A5
	cop $93.b		; 02 93
	bit $15BA.w		; 2C BA 15
	dec $19.b		; C6 19
	cmp $0CC008.l,X		; DF 08 C0 0C
	sbc $86.b,S		; E3 86
	pea $FF7F.w		; F4 7F FF
	ora ($FF.b)		; 12 FF
	inc A		; 1A
	sbc $0FFF0E.l,X		; FF 0E FF 0F
	sbc $62895A.l,X		; FF 5A 89 62
	bit $AE.b		; 24 AE
	rts		; 60

	sty $8360.w		; 8C 60 83
	ply		; 7A
	sta $60.b,S		; 83 60
	ora $F46EC2.l		; 0F C2 6E F4
	inc $20FF.w,X		; FE FF 20
	jsr ($408F.w,X)		; FC 8F 40
	and $B7F6B5.l,X		; 3F B5 F6 B7
	tsb $E8C0.w		; 0C C0 E8
	asl A		; 0A
	sbc ($F0.b)		; F2 F0
	ora $BEE8.w,Y		; 19 E8 BE
	sta ($FE.b)		; 92 FE
	sed		; F8
	asl A		; 0A
	beq -76.b		; F0 B4
	tay		; A8
	ora #$0100.w		; 09 00 01
	sta $F7.b,S		; 83 F7
	asl $332B.w,X		; 1E 2B 33
	inc $FEF1.w,X		; FE F1 FE
	ora $0A.b		; 05 0A
	ora $04C396.l,X		; 1F 96 C3 04
	ora ($FF.b,X)		; 01 FF
	sbc $121319.l,X		; FF 19 13 12
	tsb $2B.b		; 04 2B
	tsb $1837.w		; 0C 37 18
	tya		; 98
	ora $13E506.l,X		; 1F 06 E5 13
	sbc #$1601.w		; E9 01 16
	sbc $0C1287.l,X		; FF 87 12 0C
	ora [$18.b]		; 07 18
	ora $A01F30.l		; 0F 30 1F A0
	cmp $182720.l,X		; DF 20 27 18
	jmp.w [$7FFF]		; DC FF 7F
	lda [$38.b],Y		; B7 38
.ACCU 16
.INDEX 16
	rep #$F6		; C2 F6
	dec $33F9.w,X		; DE F9 33
	ply		; 7A
	and #$DFB4.w		; 29 B4 DF
	rts		; 60

	inc $BA01.w,X		; FE 01 BA
	ora [$ED.b]		; 07 ED
	sbc $6AD1A8.l,X		; FF A8 D1 6A
	cmp #$81DD.w		; C9 DD 81
	rol $02.b		; 26 02
	ror $FA81.w,X		; 7E 81 FA
	sta [$72.b]		; 87 72
	ora $7F3FD2.l		; 0F D2 3F 7F
	sec		; 38
	sta ($7F.b)		; 92 7F
	sta ($FE.b,S),Y		; 93 FE
	sta ($FD.b)		; 92 FD
	sta $7FEEF2.l,X		; 9F F2 EE 7F
	asl $FF.b		; 06 FF
	jsr ($FEFF.w,X)		; FC FF FE
	asl $FF.b,X		; 16 FF
	rol $FF.b,X		; 36 FF
	ldx $FF.b,Y		; B6 FF
	ldy $FF.b,X		; B4 FF
	lda ($41.b)		; B2 41
	inc $F947.w,X		; FE 47 F9
	sbc $F749FF.l,X		; FF FF 49 F7
	jmp ($4FCB.w,X)		; 7C CB 4F
	clv		; B8
	sbc [$58.b]		; E7 58
	ror $3FC1.w,X		; 7E C1 3F
	cmp $E5.b,S		; C3 E5
	phx		; DA
	sbc [$D9.b]		; E7 D9
	adc $D3EFF7.l,X		; 7F F7 EF D3
	sbc $98FFCA.l,X		; FF CA FF 98
	sbc $B10750.l,X		; FF 50 07 B1
	sta $3F.b,S		; 83 3F
	stz $E9.b		; 64 E9
	jsr ($6D03.w,X)		; FC 03 6D
	sed		; F8
	sed		; F8
	ora [$E8.b]		; 07 E8
	adc $ABFF.w		; 6D FF AB
	ora ($40.b),Y		; 11 40
	tya		; 98
	plx		; FA
	ora $F2.b		; 05 F2
	ora $0E1F.w		; 0D 1F 0E
	cmp ($2D.b)		; D2 2D
	sta ($6D.b)		; 92 6D
	sta ($6D.b,S),Y		; 93 6D
	txs		; 9A
	ora $FA07F0.l		; 0F F0 07 FA
	bvc -31.b		; 50 E1
	inc $9EFF.w,X		; FE FF 9E
	sbc ($A0.b,X)		; E1 A0
	eor $FE4FB0.l,X		; 5F B0 4F FE
	clv		; B8
	inc $ABFC.w,X		; FE FC AB
	ora $0DF810.l		; 0F 10 F8 0D
	sbc $2896.w,X		; FD 96 28
	asl A		; 0A
	cpy #$F6D6.w		; C0 D6 F6
	inc $07F4.w,X		; FE F4 07
	ldy #$563E.w		; A0 3E 56
	sed		; F8
	sbc $F8E4.w,Y		; F9 E4 F8
	ora #$82F8.w		; 09 F8 82
	lda #$84B7.w		; A9 B7 84
	cpx $E8.b		; E4 E8
	ora $8FFC84.l		; 0F 84 FC 8F
	asl $CA56.w,X		; 1E 56 CA
	adc $DA0E.w,Y		; 79 0E DA
	bcc -56.b		; 90 C8
	pea $0003.w		; F4 03 00
	and $22AF82.l,X		; 3F 82 AF 22
	adc ($FE.b)		; 72 FE
	cpx $FC.b		; E4 FC
	rti		; 40

	cpy #$1017.w		; C0 17 10
	ldx $7A.b		; A6 7A
	tsb $D8C0.w		; 0C C0 D8
	rol A		; 2A
	cpx $DC.b		; E4 DC
	sbc ($DF.b)		; F2 DF
	sbc ($FE.b,X)		; E1 FE
	sta $FD.b		; 85 FD
	rti		; 40

	cmp ($43.b,X)		; C1 43
	jmp $03FDF1.l		; 5C F1 FD 03
	inc $E35D.w,X		; FE 5D E3
	ora $E35C31.l		; 0F 31 5C E3
	ora $01.b,S		; 03 01
	and $FE417C.l,X		; 3F 7C 41 FE
	rti		; 40

.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	inc $2BB6.w,X		; FE B6 2B
	and ($34.b,S),Y		; 33 34
	and [$04.b]		; 27 04
	clc		; 18
	phd		; 0B
	tsb $BF07.w		; 0C 07 BF
	sbc $3708.w,X		; FD 08 37
	inc A		; 1A
	tad		; 5B
	asl $7B.b,X		; 16 7B
	bit $68.b		; 24 68
.INDEX 16
	rep #$1F		; C2 1F
	tsa		; 3B
	dex		; CA
	ora ($1F.b)		; 12 1F
	rol $1F.b		; 26 1F
	sbc $3F6A0F.l,X		; FF 0F 6A 3F
	phx		; DA
	sty $0BFE.w		; 8C FE 0B
	jmp ($58B7.w)		; 6C B7 58
	and $C17EE0.l,X		; 3F E0 7E C1
	eor $F223F5.l,X		; 5F F5 23 F2
	ora $073BCE.l		; 0F CE 3B 07
	.db $62, $E1, $1E		; 62 E1 1E
	sbc ($04.b,S),Y		; F3 04
	cmp #$39.b		; C9 39
	ora ($2A.b),Y		; 11 2A
	plx		; FA
	sbc $EA0F2F.l,X		; FF 2F 0F EA
	ora $AB7FAA.l,X		; 1F AA 7F AB
	jsr ($F12E.w,X)		; FC 2E F1
	lda $2DE6.w,Y		; B9 E6 2D
	cmp ($AE.b)		; D2 AE
	adc ($E2.b),Y		; 71 E2
	sbc $A8FEEC.l,X		; FF EC FE A8
	adc $A2FFAA.l,X		; 7F AA FF A2
	sbc $20FF88.l,X		; FF 88 FF 20
	sbc $EE931F.l,X		; FF 1F 93 EE
	sbc $BF86.w,Y		; F9 86 BF
	bvc -50.b		; 50 CE
	and ($7A.b),Y		; 31 7A
	sta [$72.b]		; 87 72
	sta $FE7F92.l		; 8F 92 7F FE
	sbc [$FE.b],Y		; F7 FE
	sbc $94FFA6.l,X		; FF A6 FF 94
	sbc $A0FF30.l,X		; FF 30 FF A0
	sbc $F47C82.l,X		; FF 82 7C F4
	xce		; FB
	ora $CB7E1F.l		; 0F 1F 7E CB
	and $4B7FCB.l,X		; 3F CB 7F 4B
	sbc $FF4AFE.l,X		; FF FE 4A FF
	eor #$FE.b		; 49 FE
	eor $BFFBF0.l		; 4F F0 FB BF
	ldy #$DBAB.w		; A0 AB DB
	inc $DAFD.w,X		; FE FD DA
	sbc $FF09D8.l,X		; FF D8 09 FF
	eor $6DFF.w		; 4D FF 6D
	inc $DE67.w,X		; FE 67 DE
	eor $D148.w,X		; 5D 48 D1
	asl $FC.b		; 06 FC
	txy		; 9B
	adc $92DF.w		; 6D DF 92
	lda ($FF.b,S),Y		; B3 FF
	pla		; 68
	rti		; 40

	jsr ($F08F.w,X)		; FC 8F F0
	clc		; 18
	pei ($83.b)		; D4 83
	tax		; AA
	inc $DFFE.w,X		; FE FE DF
	ldx $AE.b		; A6 AE
	bcs  14.b		; B0 0E
	ldy #$0AF0.w		; A0 F0 0A
	sbc #$F1.b		; E9 F1
	ldy #$0BF0.w		; A0 F0 0B
	lsr $53BB.w,X		; 5E BB 53
	ldx #$0BA6.w		; A2 A6 0B
	ora $D0.b,S		; 03 D0
	ora $42FECB.l,X		; 1F CB FE 42
	cpy $5DE0.w		; CC E0 5D
	sbc [$E8.b]		; E7 E8
	ora $E3FD58.l		; 0F 58 FD E3
	bne  10.b		; D0 0A
	inc $25F0.w,X		; FE F0 25
	bcc   9.b		; 90 09
	sbc $0FD4.w,Y		; F9 D4 0F
	cpx #$001D.w		; E0 1D 00
	ply		; 7A
	and [$98.b]		; 27 98
	sbc [$3A.b],Y		; F7 3A
	sta [$27.b],Y		; 97 27
	cpx #$1706.w		; E0 06 17
	sbc [$FF.b],Y		; F7 FF
	sec		; 38
	adc $37C984.l,X		; 7F 84 C9 37
	bcs   9.b		; B0 09
	cmp [$38.b],Y		; D7 38
	ldy $FE0E.w,X		; BC 0E FE
	cmp [$38.b]		; C7 38
	mvp $B0,$38		; 44 38 B0
	php		; 08
	ora $1CFEFF.l		; 0F FF FE 1C
	sbc $AB.b,S		; E3 AB
	nop		; EA
	inc $E313.w,X		; FE 13 E3
	lda $FD60CF.l,X		; BF CF 60 FD
	sbc $F013F8.l,X		; FF F8 13 F0
	tax		; AA
	cmp $F10AA8.l,X		; DF A8 0A F1
	jsr ($FF01.w,X)		; FC 01 FF
	sbc $CF0CBB.l,X		; FF BB 0C CF
	bvs -18.b		; 70 EE
	eor ($9A.b),Y		; 51 9A
	adc [$E2.b]		; 67 E2
	ora $CF3C43.l,X		; 1F 43 3C CF
	bcs 127.b		; B0 7F
	bra  -1.b		; 80 FF
	sbc $F83F.w,X		; FD 3F F8
	adc $A27FA8.l,X		; 7F A8 7F A2
	adc $8A7F82.l,X		; 7F 82 7F 8A
	lsr $28F1.w,X		; 5E F1 28
	sbc $6FAF20.l,X		; FF 20 AF 6F
	eor [$78.b],Y		; 57 78
	lda [$F8.b]		; A7 F8
	sta $D9A8F0.l		; 8F F0 A8 D9
	ora ($1C.b,X)		; 01 1C
	nop		; EA
	cpy #$443F.w		; C0 3F 44
	sbc ($62.b)		; F2 62
	sbc ($7D.b),Y		; F1 7D
	sbc ($F1.b,X)		; E1 F1
	sbc ($20.b)		; F2 20
	sbc ($DE.b,S),Y		; F3 DE
	and ($FA.b,X)		; 21 FA
	ora [$1E.b]		; 07 1E
	sbc ($D3.b)		; F2 D3
	ldx $65FB.w		; AE FB 65
	trb $15.b		; 14 15
	nop		; EA
	stx $F1.b,Y		; 96 F1
	nop		; EA
	inc $0A45.w,X		; FE 45 0A
	sta [$DF.b]		; 87 DF
	dec $92.b,X		; D6 92
	sbc $FC93FE.l,X		; FF FE 93 FC
	txy		; 9B
	pea $E09F.w		; F4 9F E0
	eor $AAECFD.l,X		; 5F FD EC AA
	ldx $FE.b,Y		; B6 FE
	ply		; 7A
	sbc [$2F.b],Y		; F7 2F
	bne -102.b		; D0 9A
	cmp $E800.w,Y		; D9 00 E8
	phd		; 0B
	bra  41.b		; 80 29
	rol A		; 2A
	and $6A.b		; 25 6A
	beq  11.b		; F0 0B
	cmp $391ED0.l		; CF D0 1E 39
	inc $C986.w,X		; FE 86 C9
	inc $F503.w,X		; FE 03 F5
	cmp $85FF.w,X		; DD FF 85
	lda ($FE.b)		; B2 FE
	sbc $0201.w,X		; FD 01 02
	bit $D5AA.w,X		; 3C AA D5
	rol A		; 2A
	eor $AA.b,X		; 55 AA
	eor [$A8.b],Y		; 57 A8
	adc [$88.b],Y		; 77 88
	and $02.b		; 25 02
	eor $F399A1.l,X		; 5F A1 99 F3
	lsr $7C62.w,X		; 5E 62 7C
	sbc $C9E8FF.l		; EF FF E8 C9
	ora ($FE.b,X)		; 01 FE
	ora $0E.b,S		; 03 0E
	eor ($1E.b),Y		; 51 1E
	sbc ($77.b,X)		; E1 77
	sta $D57CBA.l		; 8F BA 7C D5
	cpx $2A.b		; E4 2A
	phx		; DA
	adc $FC4AA2.l,X		; 7F A2 4A FC
	jmp ($FBFC.w,X)		; 7C FC FB
	cld		; D8
	dec $DF00.w,X		; DE 00 DF
	cpx #$805E.w		; E0 5E 80
	pea $60E7.w		; F4 E7 60
	lda $16AA.w		; AD AA 16
	sbc ($62.b),Y		; F1 62
	sed		; F8
	ora #$18.b		; 09 18
	asl $F3.b,X		; 16 F3
	jmp $8F89.w		; 4C 89 8F
	lda $CA12.w,Y		; B9 12 CA
	inc $D2FD.w,X		; FE FD D2
	and $FEBA80.l		; 2F 80 BA FE
	sed		; F8
	asl A		; 0A
	bit $07E4.w,X		; 3C E4 07
	jsr $203F.w		; 20 3F 20
	adc $4AD1A3.l,X		; 7F A3 D1 4A
	ldy $FC.b,X		; B4 FC
	ldx $EE.b		; A6 EE
	cpy $FC.b		; C4 FC
	bvc  23.b		; 50 17
	ldy $A4.b,X		; B4 A4
	mvp $09,$F0		; 44 F0 09
	inc $8068.w,X		; FE 68 80
	sbc ($88.b,X)		; E1 88
	tsb $A631.w		; 0C 31 A6
	lda #$4A.b		; A9 4A
	eor ($FE.b),Y		; 51 FE
	jsr ($FCA0.w,X)		; FC A0 FC
	and ($F8.b,X)		; 21 F8
	ora #$A0.b		; 09 A0
	brk $AC.b		; 00 AC
	jsr ($0BF8.w,X)		; FC F8 0B
	eor $7D.b,X		; 55 7D
	tay		; A8
	inc $FEFC.w,X		; FE FC FE
	phx		; DA
	beq   9.b		; F0 09
	rts		; 60

	mvn $60,$E1		; 54 E1 60
	ora #$60.b		; 09 60
	mvn $7F,$FF		; 54 FF 7F
	lda $16417F.l,X		; BF 7F 41 16
	sbc $FD11.w,Y		; F9 11 FD
	sbc ($11.b,S),Y		; F3 11
	pea $F8FF.w		; F4 FF F8
	tsb $FFFD.w		; 0C FD FF
	sbc [$FF.b]		; E7 FF
	sed		; F8
	asl $5352.w,X		; 1E 52 53
	plb		; AB
	lda $0A.b,S		; A3 0A
	ora $05.b,S		; 03 05
	and $03.b,S		; 23 03
	pha		; 48
	ora ($13.b,S),Y		; 13 13
	lda $4E6340.l,X		; BF 40 63 4E
	eor $04.b,X		; 55 04
	ldy $5C00.w		; AC 00 5C
	bra -23.b		; 80 E9
	tsb $FF0F.w		; 0C 0F FF
	jsr ($807C.w,X)		; FC 7C 80
	jsr ($AE02.w,X)		; FC 02 AE
	ora [$FF.b]		; 07 FF
	ora ($ED.b)		; 12 ED
	rti		; 40

	and $00AF09.l,X		; 3F 09 AF 00
	inc $30.b,X		; F6 30
	ora $7C11AA.l		; 0F AA 11 7C
	adc ($FF.b,X)		; 61 FF
	sed		; F8
	ora ($9B.b)		; 12 9B
	sbc $00DC42.l,X		; FF 42 DC 00
	cmp $A2FC03.l,X		; DF 03 FC A2
	ora $55.b,X		; 15 55
	tay		; A8
	tya		; 98
	sed		; F8
	ora [$DC.b],Y		; 17 DC
	and [$B8.b]		; 27 B8
	bcs  66.b		; B0 42
	eor $51.b,X		; 55 51
	ldy #$F874.w		; A0 74 F8
	tas		; 1B
	jmp.w [$BF47]		; DC 47 BF
	sbc $F8ECFF.l,X		; FF FF EC F8
	ora $6702AB.l		; 0F AB 02 67
	rol $A8.b		; 26 A8
	cop $5C.b		; 02 5C
	asl A		; 0A
	nop		; EA
	pei ($FF.b)		; D4 FF
	ora ($D6.b,X)		; 01 D6
	rol $76.b,X		; 36 76
	bcs  -2.b		; B0 FE
	jmp $E697.w		; 4C 97 E6
	clc		; 18
	lda ($0A.b),Y		; B1 0A
	ora ($49.b,X)		; 01 49
	brk $F5.b		; 00 F5
	ora #$79.b		; 09 79
	sta ($FF.b,X)		; 81 FF
	asl $A2.b		; 06 A2
	trb $15.b		; 14 15
	asl A		; 0A
	plp		; 28
	mvn $2A,$D5		; 54 D5 2A
	cpx #$A3CC.w		; E0 CC A3
	cmp ($FA.b,S),Y		; D3 FA
	cmp $F80E6D.l,X		; DF 6D 0E F8
	tsb $EFEF.w		; 0C EF EF
	sta $44.b,S		; 83 44
	sta $69.b,S		; 83 69
	ora $50.b,X		; 15 50
	pei ($E9.b)		; D4 E9
	ora [$48.b]		; 07 48
	sbc ($C7.b),Y		; F1 C7
	lda $60801F.l,X		; BF 1F 80 60
	bpl -102.b		; 10 9A
	ora $70.b		; 05 70
	php		; 08
	txa		; 8A
	eor $003369.l,X		; 5F 69 33 00
	cpy $3700.w		; CC 00 37
	sta $EF.b		; 85 EF
	dec $F8E0.w,X		; DE E0 F8
	ora $82414C.l		; 0F 4C 41 82
	tay		; A8
	mvn $A5,$57		; 54 57 A5
	phx		; DA
	brk $7A.b		; 00 7A
	sty $E2.b		; 84 E2
	dey		; 88
	cmp ($4C.b)		; D2 4C
	sed		; F8
	bpl 103.b		; 10 67
	ora $80C02A.l,X		; 1F 2A C0 80
	.db $82, $20, $9F		; 82 20 9F
	iny		; C8
	lda $E280.w,Y		; B9 80 E2
	sed		; F8
	ora $2880.w		; 0D 80 28
	inc $0AC0.w,X		; FE C0 0A
	clv		; B8
	cli		; 58
	plx		; FA
	ora ($80.b,X)		; 01 80
	sed		; F8
	ora ($04.b),Y		; 11 04
	sed		; F8
	phd		; 0B
	phx		; DA
	sbc $49AADC.l,X		; FF DC AA 49
	cpx #$1CF0.w		; E0 F0 1C
	ora [$EB.b]		; 07 EB
	sed		; F8
	ora ($31.b),Y		; 11 31
	sbc $D0.b,X		; F5 D0
	sbc $3255DB.l,X		; FF DB 55 32
	lda [$FF.b],Y		; B7 FF
	sbc $54DE3A.l,X		; FF 3A DE 54
	phk		; 4B
	and ($0B.b)		; 32 0B
	pei ($FE.b)		; D4 FE
	brk $31.b		; 00 31
	asl $00E4.w		; 0E E4 00
	ora ($EE.b),Y		; 11 EE
	bit $DFFF.w,X		; 3C FF DF
	cpy #$21D9.w		; C0 D9 21
	brk $FC.b		; 00 FC
	ora $003EE0.l,X		; 1F E0 3E 00
	cmp $20F380.l,X		; DF 80 F3 20
	lda $0B09F0.l,X		; BF F0 09 0B
	sbc $4E00B7.l,X		; FF B7 00 4E
	cpx $89.b		; E4 89
	cmp $CC3F3F.l		; CF 3F 3F CC
	tsb $7F7F.w		; 0C 7F 7F
	sbc $500F.w,X		; FD 0F 50
	sbc $CFCF.w,X		; FD CF CF
	lda ($B1.b),Y		; B1 B1
	sed		; F8
	rol $ECE3.w		; 2E E3 EC
	lda ($88.b,X)		; A1 88
	eor $24.b		; 45 24
	adc $79F8.w,X		; 7D F8 79
	bvc -54.b		; 50 CA
	sbc $DE3858.l,X		; FF 58 38 DE
	cmp $C3.b,S		; C3 C3
	mvn $FC,$52		; 54 52 FC
	ora ($01.b,X)		; 01 01
	and [$F6.b]		; 27 F6
	tsa		; 3B
	cpx $70.b		; E4 70
	trb $A9.b		; 14 A9
	sta $00B300.l		; 8F 00 B3 00
	iny		; C8
	stz $DFF1.w		; 9C F1 DF
	cmp $DEF0C1.l,X		; DF C1 F0 DE
	cpy $70.b		; C4 70
	bvs  -4.b		; 70 FC
	and [$37.b],Y		; 37 37
	sed		; F8
	and [$46.b],Y		; 37 46
	sed		; F8
	dec $E500.w		; CE 00 E5
	nop		; EA
	sbc ($67.b),Y		; F1 67
	cpx #$C080.w		; E0 80 C0
	ora $E190FB.l		; 0F FB 90 E1
	sbc $FCFBFB.l,X		; FF FB FB FC
	tya		; 98
	tya		; 98
	sei		; 78
	sbc ($87.b)		; F2 87
	sta [$3E.b]		; 87 3E
	sta $3EF0.w		; 8D F0 3E
	ror $B9B6.w,X		; 7E B6 B9
	adc $C8.b,S		; 63 C8
	bra -25.b		; 80 E7
	brk $DE.b		; 00 DE
	adc $0080.w,Y		; 79 80 00
	inc $9CA0.w		; EE A0 9C
	stz $80FC.w		; 9C FC 80
	sta [$FA.b]		; 87 FA
	ora $E1E11F.l,X		; 1F 1F E1 E1
	jsr ($9F26.w,X)		; FC 26 9F
	cmp ($A0.b),Y		; D1 A0
	sed		; F8
	tas		; 1B
	tax		; AA
	eor $E5.b,X		; 55 E5
	sta ($2E.b)		; 92 2E
	cop $A0.b		; 02 A0
	sed		; F8
	ora $A0FF.w		; 0D FF A0
	sed		; F8
	ora #$C8.b		; 09 C8
	pea $027D.w		; F4 7D 02
	ldy #$0BF8.w		; A0 F8 0B
	and #$28.b		; 29 28
	sbc $A4FEA0.l,X		; FF A0 FE A4
	beq   9.b		; F0 09
	clv		; B8
	jsr $FFFE.w		; 20 FE FF
	sed		; F8
	ora #$D8.b		; 09 D8
	sbc $F08020.l,X		; FF 20 80 F0
	ora $8075.w		; 0D 75 80
	beq  16.b		; F0 10
	tax		; AA
	sty $F5.b,X		; 94 F5
	sbc ($BF.b)		; F2 BF
	ply		; 7A
	jmp $FFFF88.l		; 5C 88 FF FF
	sbc $CCECFA.l,X		; FF FA EC CC
	lda $A37C.w,Y		; B9 7C A3
	sta ($81.b),Y		; 91 81
	adc $0CF2.w,X		; 7D F2 0C
	tsb $13F0.w		; 0C F0 13
	sbc $FF.b,S		; E3 FF
	xce		; FB
	jsr ($0C00.w,X)		; FC 00 0C
	sbc ($01.b,S),Y		; F3 01
	inc $7C82.w,X		; FE 82 7C
	stz $C900.w,X		; 9E 00 C9
	dec A		; 3A
	lda $43F7.w,Y		; B9 F7 43
	inc $003F.w,X		; FE 3F 00
	plp		; 28
	sbc $80EF54.l,X		; FF 54 EF 80
	ora ($00.b,X)		; 01 00
	sty $EC6C.w		; 8C 6C EC
	ora $CA.b,S		; 03 CA
	php		; 08
	php		; 08
	jmp $1010E2.l		; 5C E2 10 10
	inc $8CFE.w,X		; FE FE 8C
	jsr ($2061.w,X)		; FC 61 20
	sbc $DE20.w,Y		; F9 20 DE
	bra  40.b		; 80 28
	brk $07.b		; 00 07
	cmp ($18.b),Y		; D1 18
	cpx #$01F0.w		; E0 F0 01
	ror $D1ED.w,X		; 7E ED D1
	asl $06.b		; 06 06
	and $00DC3F.l,X		; 3F 3F DC 00
.ACCU 8
	sep #$24		; E2 24
	jmp.w [$F860]		; DC 60 F8
	plp		; 28
	beq  15.b		; F0 0F
	asl $3FA0.w		; 0E A0 3F
	ora $FE.b,X		; 15 FE
	sei		; 78
	and ($2A.b),Y		; 31 2A
	sep #$07		; E2 07
	ora [$4F.b]		; 07 4F
	pei ($26.b)		; D4 26
	ora $C0C00F.l		; 0F 0F C0 C0
	cpy #$3D80.w		; C0 80 3D
	pha		; 48
	sbc #$FB.b		; E9 FB
	eor $CF38FE.l		; 4F FE 38 CF
	inx		; E8
	eor $C0E1.w,Y		; 59 E1 C0
	sbc $083E3A.l,X		; FF 3A 3E 08
	cmp $C3.b,S		; C3 C3
	cmp $30.b,S		; C3 30
	iny		; C8
	bmi  48.b		; 30 30
	inc $1E.b		; E6 1E
	asl $C1EC.w,X		; 1E EC C1
	cmp ($AC.b,X)		; C1 AC
	cmp ($4C.b)		; D2 4C
	ora $02.b		; 05 02
	cpx #$0BF8.w		; E0 F8 0B
	rol A		; 2A
	jsr ($F8E0.w,X)		; FC E0 F8
	ora #$28.b		; 09 28
	ror A		; 6A
	xba		; EB
	plx		; FA
	ora $F6.b,X		; 15 F6
	.db $42, $60		; 42 60
	inc $FC2A.w,X		; FE 2A FC
	ora #$09.b		; 09 09
	rts		; 60

	inc $FC04.w,X		; FE 04 FC
	sbc [$1F.b]		; E7 1F
	rol $9D01.w		; 2E 01 9D
	ora ($06.b,X)		; 01 06
	tya		; 98
	rts		; 60

	asl $F8.b		; 06 F8
	ora #$F9.b		; 09 F9
	sbc $A884.w,Y		; F9 84 A8
	rts		; 60

	cpx #$09F0.w		; E0 F0 09
	jmp.w [$CB0E]		; DC 0E CB
	bcs -40.b		; B0 D8
	ora $FFAAAA.l,X		; 1F AA AA FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($AAAA.w,X)		; FC AA AA
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($AAAA.w,X)		; FC AA AA
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($AAAA.w,X)		; FC AA AA
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($000A.w,X)		; FC 0A 00
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	cmp ($00.b)		; D2 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	cmp $0F.b,S		; C3 0F
	trb $10.b		; 14 10
	trb $11.b		; 14 11
	trb $12.b		; 14 12
	trb $13.b		; 14 13
	trb $FF.b		; 14 FF
	ora $FF.b,X		; 15 FF
	sbc $141614.l,X		; FF 14 16 14
	ora [$14.b],Y		; 17 14
	clc		; 18
	trb $19.b		; 14 19
	trb $1A.b		; 14 1A
	trb $1B.b		; 14 1B
	trb $1C.b		; 14 1C
	trb $1D.b		; 14 1D
	sbc $140F.w,X		; FD 0F 14
	asl $FDFE.w,X		; 1E FE FD
	sta $9A14.w,Y		; 99 14 9A
	trb $9B.b		; 14 9B
	trb $9C.b		; 14 9C
	trb $9D.b		; 14 9D
	sbc $54DEFF.l,X		; FF FF DE 54
	ora $54.b,X		; 15 54
	trb $54.b		; 14 54
	ora ($54.b,S),Y		; 13 54
	ora ($54.b)		; 12 54
	ora ($54.b),Y		; 11 54
	bpl  84.b		; 10 54
	ora $FFFF54.l		; 0F 54 FF FF
	ora $142014.l,X		; 1F 14 20 14
	and ($14.b,X)		; 21 14
	jsl $142314.l		; 22 14 23 14
	bit $14.b		; 24 14
	and $14.b		; 25 14
	rol $14.b		; 26 14
	sbc $1427FF.l,X		; FF FF 27 14
	plp		; 28
	trb $29.b		; 14 29
	trb $2A.b		; 14 2A
	trb $2B.b		; 14 2B
	trb $2C.b		; 14 2C
	trb $2D.b		; 14 2D
	trb $2E.b		; 14 2E
	trb $F8.b		; 14 F8
	adc $9FFE9E.l,X		; 7F 9E FE 9F
	trb $A0.b		; 14 A0
	trb $A1.b		; 14 A1
	trb $A2.b		; 14 A2
	trb $A3.b		; 14 A3
	trb $A4.b		; 14 A4
	sed		; F8
	adc $2554DE.l,X		; 7F DE 54 25
	mvn $54,$24		; 54 24 54
	and $54.b,S		; 23 54
	jsl $542154.l		; 22 54 21 54
	jsr $FFF8.w		; 20 F8 FF
.INDEX 16
	rep #$54		; C2 54
	and $143014.l		; 2F 14 30 14
	and ($14.b),Y		; 31 14
	and ($14.b)		; 32 14
	and ($14.b,S),Y		; 33 14
	bit $9F.b,X		; 34 9F
	sbc $143514.l,X		; FF 14 35 14
	rol $14.b,X		; 36 14
	and [$FE.b],Y		; 37 FE
	sec		; 38
	trb $39.b		; 14 39
	trb $3A.b		; 14 3A
	trb $43.b		; 14 43
	sed		; F8
	tsa		; 3B
	trb $3C.b		; 14 3C
	pea $FE54.w		; F4 54 FE
	lda $14.b		; A5 14
	ldx $14.b		; A6 14
	sta $14A7FF.l		; 8F FF A7 14
	tay		; A8
	trb $A9.b		; 14 A9
	sbc ($36.b)		; F2 36
	mvn $54,$35		; 54 35 54
	bit $54.b,X		; 34 54
	and ($1F.b,S),Y		; 33 1F
	inc $3254.w,X		; FE 54 32
	mvn $54,$31		; 54 31 54
	bmi -62.b		; 30 C2
	mvn $14,$3D		; 54 3D 14
	rol $3F14.w,X		; 3E 14 3F
	sbc $4014FF.l,X		; FF FF 14 40
	trb $41.b		; 14 41
	trb $42.b		; 14 42
	trb $43.b		; 14 43
	trb $44.b		; 14 44
	trb $45.b		; 14 45
	trb $46.b		; 14 46
	trb $47.b		; 14 47
	sbc $4814E7.l,X		; FF E7 14 48
	trb $49.b		; 14 49
	trb $4A.b		; 14 4A
	trb $4B.b		; 14 4B
	trb $4C.b		; 14 4C
	trb $AA.b		; 14 AA
	inc $FE3F.w,X		; FE 3F FE
	plb		; AB
	trb $AC.b		; 14 AC
	trb $AD.b		; 14 AD
	trb $AE.b		; 14 AE
	inc $44.b,X		; F6 44
	mvn $54,$43		; 54 43 54
	.db $42, $7F		; 42 7F
	sed		; F8
	mvn $54,$41		; 54 41 54
	rti		; 40

	mvn $54,$3F		; 54 3F 54
	rol $54C2.w,X		; 3E C2 54
	eor $4E14.w		; 4D 14 4E
	sbc $4F14E1.l,X		; FF E1 14 4F
	trb $50.b		; 14 50
	trb $51.b		; 14 51
	trb $52.b		; 14 52
	trb $53.b		; 14 53
	and [$14.b]		; 27 14
	eor $FF.b,X		; 55 FF
	sbc $5614.w,X		; FD 14 56
	trb $57.b		; 14 57
	trb $58.b		; 14 58
	trb $59.b		; 14 59
	trb $5A.b		; 14 5A
	inc $0AF8.w,X		; FE F8 0A
	lda $14B014.l		; AF 14 B0 14
	ora $14B1FF.l		; 0F FF B1 14
	lda ($14.b)		; B2 14
	lda ($DE.b,S),Y		; B3 DE
	mvn $54,$53		; 54 53 54
	eor ($54.b)		; 52 54
	eor ($54.b),Y		; 51 54
	ora $5450FF.l		; 0F FF 50 54
	eor $C24E54.l		; 4F 54 4E C2
	mvn $14,$5B		; 54 5B 14
	jmp $145D14.l		; 5C 14 5D 14
	xce		; FB
	sta [$5E.b]		; 87 5E
	trb $5F.b		; 14 5F
	inc $60FF.w,X		; FE FF 60
	trb $61.b		; 14 61
	trb $62.b		; 14 62
	trb $63.b		; 14 63
	inc $FE.b,X		; F6 FE
	sbc [$54.b],Y		; F7 54
	inc $09F8.w,X		; FE F8 09
	ldy $14.b,X		; B4 14
	lda $14.b,X		; B5 14
	ldx $14.b,Y		; B6 14
	lda [$14.b],Y		; B7 14
	clv		; B8
	nop		; EA
	sbc $C3545E.l,X		; FF 5E 54 C3
	sbc $5C545D.l,X		; FF 5D 54 5C
.INDEX 16
	rep #$54		; C2 54
	stz $18.b		; 64 18
	adc $18.b		; 65 18
	ror $18.b		; 66 18
	adc [$18.b]		; 67 18
	sbc $18687F.l		; EF 7F 68 18
	adc #$18.b		; 69 18
	phy		; 5A
	inc $18F8.w,X		; FE F8 18
	lda $BA18.w,Y		; B9 18 BA
	clc		; 18
	tyx		; BB
	clc		; 18
	ldy $BD18.w,X		; BC 18 BD
	php		; 08
	sbc $FE58F4.l,X		; FF F4 58 FE
	adc #$58.b		; 69 58
	pla		; 68
	cli		; 58
	adc [$58.b]		; 67 58
	ror $FF.b		; 66 FF
	sbc $586558.l,X		; FF 58 65 58
	stz $58.b		; 64 58
	eor $186A58.l,X		; 5F 58 6A 18
	rtl		; 6B

	clc		; 18
	jmp ($6D18.w)		; 6C 18 6D
	clc		; 18
	ror $FFE0.w		; 6E E0 FF
	clc		; 18
	pea $F8FE.w		; F4 FE F8
	ora ($BE.b,S),Y		; 13 BE
	clc		; 18
	lda $18C018.l,X		; BF 18 C0 18
	cmp ($18.b,X)		; C1 18
	rep #$07		; C2 07
	jsr ($C318.w,X)		; FC 18 C3
	clc		; 18
	cpy $DC.b		; C4 DC
	inc $586E.w,X		; FE 6E 58
	adc $0358.w		; 6D 58 03
	jmp ($586C.w)		; 6C 6C 58
	rtl		; 6B

	dec $E2.b		; C6 E2
	clc		; 18
	adc $16F8FE.l		; 6F FE F8 16
	bvs  -1.b		; 70 FF
	eor $F2.b,S		; 43 F2
	sed		; F8
	tsb $18C5.w		; 0C C5 18
	dec $18.b		; C6 18
	cmp [$18.b]		; C7 18
	iny		; C8
	clc		; 18
	cmp #$F4.b		; C9 F4
	cli		; 58
	and [$5F.b],Y		; 37 5F
	inc $0DF8.w,X		; FE F8 0D
	adc ($1C.b),Y		; 71 1C
	inc $11F8.w,X		; FE F8 11
	adc ($FA.b)		; 72 FA
	adc ($1C.b,S),Y		; 73 1C
	stz $E4.b,X		; 74 E4
	sed		; F8
	ora ($FB.b)		; 12 FB
	adc $0FF8FE.l,X		; 7F FE F8 0F
	adc $FE.b,X		; 75 FE
	sed		; F8
	ora ($76.b)		; 12 76
	trb $1C77.w		; 1C 77 1C
	sei		; 78
	trb $1C79.w		; 1C 79 1C
	ply		; 7A
	trb $BD7B.w		; 1C 7B BD
	sbc ($E0.b),Y		; F1 E0
	sed		; F8
	trb $FE.b		; 14 FE
	sed		; F8
	phd		; 0B
	jmp ($7D1C.w,X)		; 7C 1C 7D
	inc $7EFD.w,X		; FE FD 7E
	jsr ($1C7F.w,X)		; FC 7F 1C
	sed		; F8
	adc $81FA80.l,X		; 7F 80 FA 81
	trb $1C82.w		; 1C 82 1C
	sta $1C.b,S		; 83 1C
	sty $1C.b		; 84 1C
	sta $1C.b		; 85 1C
	stx $8D.b		; 86 8D
	sbc $FEFFE2.l,X		; FF E2 FF FE
	sed		; F8
	ora $CBFECA.l		; 0F CA FE CB
	trb $1CCC.w		; 1C CC 1C
	sta [$1C.b]		; 87 1C
	dey		; 88
	sbc $891CFF.l,X		; FF FF 1C 89
	trb $1C8A.w		; 1C 8A 1C
	phb		; 8B
	trb $1C8C.w		; 1C 8C 1C
	sta $8E1C.w		; 8D 1C 8E
	trb $1C8F.w		; 1C 8F 1C
	bcc  -1.b		; 90 FF
	sbc $1C911C.l,X		; FF 1C 91 1C
	sta ($1C.b)		; 92 1C
	sta ($1C.b,S),Y		; 93 1C
	sty $1C.b,X		; 94 1C
	sta $1C.b,X		; 95 1C
	stx $1C.b,Y		; 96 1C
	cmp $5F1C.w		; CD 1C 5F
	bcc  -3.b		; 90 FD
	jmp $FACEFE.l		; 5C FE CE FA
	inc $0BF8.w,X		; FE F8 0B
	cmp $1CD01C.l		; CF 1C D0 1C
	sbc $1CD1FF.l,X		; FF FF D1 1C
	cmp ($1C.b)		; D2 1C
	cmp ($1C.b,S),Y		; D3 1C
	pei ($1C.b)		; D4 1C
	cmp $1C.b,X		; D5 1C
	dec $1C.b,X		; D6 1C
	cmp [$1C.b],Y		; D7 1C
	cld		; D8
	trb $FFFF.w		; 1C FF FF
	cmp $DA1C.w,Y		; D9 1C DA
	trb $9C1E.w		; 1C 1E 9C
	stp		; DB
	trb $1CDC.w		; 1C DC 1C
	cmp $DE1C.w,X		; DD 1C DE
	trb $1CDF.w		; 1C DF 1C
	sbc $1CE0FF.l,X		; FF FF E0 1C
	sbc ($1C.b,X)		; E1 1C
	rol $1D.b,X		; 36 1D
	and [$1D.b],Y		; 37 1D
	sec		; 38
	ora $1D39.w,X		; 1D 39 1D
	dec A		; 3A
	ora $1D3B.w,X		; 1D 3B 1D
	tyx		; BB
	sbc $3D1D3C.l,X		; FF 3C 1D 3D
	inc $10F8.w,X		; FE F8 10
	sep #$0C		; E2 0C
	inc $25F8.w,X		; FE F8 25
	rol $3F0D.w,X		; 3E 0D 3F
	ora $0D40.w		; 0D 40 0D
	eor ($FF.b,X)		; 41 FF
	sbc $0D420D.l,X		; FF 0D 42 0D
	eor $0D.b,S		; 43 0D
	mvp $45,$0D		; 44 0D 45
	ora $0D46.w		; 0D 46 0D
	eor [$0D.b]		; 47 0D
	pha		; 48
	ora $3D49.w		; 0D 49 3D
	stx $0D.b		; 86 0D
	brk $FF.b		; 00 FF
	sed		; F8
	ror $28E3.w,X		; 7E E3 28
	cpx $FE.b		; E4 FE
	sbc $FE.b		; E5 FE
	ldy $7F.b,X		; B4 7F
	pla		; 68
	sed		; F8
	sbc $68.b,S		; E3 68
	beq  -8.b		; F0 F8
	and $E728E6.l		; 2F E6 28 E7
	plp		; 28
	inx		; E8
	plp		; 28
	sbc #$08.b		; E9 08
	cmp ($FE.b,X)		; C1 FE
	pla		; 68
	plx		; FA
	sbc [$F2.b]		; E7 F2
	beq  -8.b		; F0 F8
	bmi  41.b		; 30 29
	inx		; E8
	nop		; EA
	plp		; 28
	inc $FEEB.w,X		; FE EB FE
	inc $FD.b,X		; F6 FD
	beq  -8.b		; F0 F8
	and $D9FFEC.l		; 2F EC FF D9
	plp		; 28
	sbc $EE28.w		; ED 28 EE
	plp		; 28
	sbc $28F028.l		; EF 28 F0 28
	sbc ($F4.b),Y		; F1 F4
	beq  -8.b		; F0 F8
	and $F2BFFF.l		; 2F FF BF F2
	plp		; 28
	sbc ($28.b,S),Y		; F3 28
	pea $F528.w		; F4 28 F5
	plp		; 28
	inc $28.b,X		; F6 28
	sbc [$28.b],Y		; F7 28
	sed		; F8
	plp		; 28
	sbc $FFFF.w,Y		; F9 FF FF
	beq  -8.b		; F0 F8
	bmi  -6.b		; 30 FA
	plp		; 28
	xce		; FB
	plp		; 28
	jsr ($FD28.w,X)		; FC 28 FD
	plp		; 28
	inc $FF28.w,X		; FE 28 FF
	plp		; 28
	brk $29.b		; 00 29
	ora ($FE.b,X)		; 01 FE
	sbc $F8F029.l,X		; FF 29 F0 F8
	and $032902.l		; 2F 02 29 03
	and #$04.b		; 29 04
	and #$05.b		; 29 05
	and #$06.b		; 29 06
	and #$07.b		; 29 07
	and #$08.b		; 29 08
	sbc $29FF.w,X		; FD FF 29
	ora #$F0.b		; 09 F0
	sed		; F8
	bmi  10.b		; 30 0A
	and #$0B.b		; 29 0B
	and #$0C.b		; 29 0C
	and #$0D.b		; 29 0D
	and #$0E.b		; 29 0E
	and #$0F.b		; 29 0F
	and #$FB.b		; 29 FB
	sbc $112910.l,X		; FF 10 29 11
	beq  -8.b		; F0 F8
	bmi  18.b		; 30 12
	and #$13.b		; 29 13
	and #$14.b		; 29 14
	and #$15.b		; 29 15
	and #$16.b		; 29 16
	and #$17.b		; 29 17
	sbc [$FF.b],Y		; F7 FF
	and #$18.b		; 29 18
	and #$19.b		; 29 19
	beq  -8.b		; F0 F8
	bmi  26.b		; 30 1A
	and #$1B.b		; 29 1B
	and #$1C.b		; 29 1C
	and #$1D.b		; 29 1D
	and #$1E.b		; 29 1E
	and #$AF.b		; 29 AF
	tax		; AA
	ora $292029.l,X		; 1F 29 20 29
	and ($F0.b,X)		; 21 F0
	sed		; F8
	bmi   0.b		; 30 00
	inx		; E8
	adc $FCF8FF.l,X		; 7F FF F8 FC
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	jsr ($AAAA.w,X)		; FC AA AA
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	jsr ($C000.w,X)		; FC 00 C0
	rol $F8C0.w		; 2E C0 F8
	ora $1FC020.l,X		; 1F 20 C0 1F
	cpy #$1FF8.w		; C0 F8 1F
	jsr $1FC0.w		; 20 C0 1F
	cpy #$1FF8.w		; C0 F8 1F
	tax		; AA
	tax		; AA
	jsr $1FC0.w		; 20 C0 1F
	cpy #$1FF8.w		; C0 F8 1F
	jsr $1FC0.w		; 20 C0 1F
	cpy #$1FF8.w		; C0 F8 1F
	jsr $1FC0.w		; 20 C0 1F
	cpy #$1FF8.w		; C0 F8 1F
	jsr $1FC0.w		; 20 C0 1F
	cpy #$1FF8.w		; C0 F8 1F
	tax		; AA
	asl A		; 0A
	jsr $1FC0.w		; 20 C0 1F
	cpy #$1FF8.w		; C0 F8 1F
	jsr $1FC0.w		; 20 C0 1F
	cpy #$1FF8.w		; C0 F8 1F
	jsr $FCC0.w		; 20 C0 FC
	sbc $0082F8.l,X		; FF F8 82 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	sbc $008F.w		; ED 8F 00
	sbc $3027F8.l,X		; FF F8 27 30
	inc $0DF8.w,X		; FE F8 0D
	eor ($31.b),Y		; 51 31
	eor ($31.b)		; 52 31
	eor ($31.b,S),Y		; 53 31
	inc $F67F.w,X		; FE 7F F6
	cpy #$30F8.w		; C0 F8 30
	cli		; 58
	and ($59.b),Y		; 31 59
	and ($5A.b),Y		; 31 5A
	and ($5B.b),Y		; 31 5B
	and ($5C.b),Y		; 31 5C
	and ($5D.b),Y		; 31 5D
	and ($5E.b),Y		; 31 5E
	beq  -1.b		; F0 FF
	ldx $F8C0.w,Y		; BE C0 F8
	bmi  99.b		; 30 63
	and ($64.b),Y		; 31 64
	and ($65.b),Y		; 31 65
	and ($66.b),Y		; 31 66
	and ($67.b),Y		; 31 67
	and ($FB.b),Y		; 31 FB
	sbc $693168.l,X		; FF 68 31 69
	cpy #$30F8.w		; C0 F8 30
	ror $6F31.w		; 6E 31 6F
	and ($70.b),Y		; 31 70
	and ($71.b),Y		; 31 71
	and ($72.b),Y		; 31 72
	and ($73.b),Y		; 31 73
	sbc [$FF.b],Y		; F7 FF
	and ($74.b),Y		; 31 74
	and ($75.b),Y		; 31 75
	cpy #$30F8.w		; C0 F8 30
	ply		; 7A
	and ($7B.b),Y		; 31 7B
	and ($7C.b),Y		; 31 7C
	and ($7D.b),Y		; 31 7D
	and ($7E.b),Y		; 31 7E
	and ($EF.b),Y		; 31 EF
	sbc $80317F.l,X		; FF 7F 31 80
	and ($81.b),Y		; 31 81
	cpy #$30F8.w		; C0 F8 30
	stx $31.b		; 86 31
	sta [$31.b]		; 87 31
	dey		; 88
	and ($89.b),Y		; 31 89
	and ($8A.b),Y		; 31 8A
	cmp $8B31FF.l,X		; DF FF 31 8B
	and ($8C.b),Y		; 31 8C
	and ($8D.b),Y		; 31 8D
	cpy #$2EF8.w		; C0 F8 2E
	sta ($31.b)		; 92 31
	sta ($31.b,S),Y		; 93 31
	sty $31.b,X		; 94 31
	sta $31.b,X		; 95 31
	sed		; F8
	sbc $FE96.w,X		; FD 96 FE
	sta [$31.b],Y		; 97 31
	tya		; 98
	and ($99.b),Y		; 31 99
	cpy #$2CF8.w		; C0 F8 2C
	stz $9D31.w		; 9C 31 9D
	and ($CF.b),Y		; 31 CF
	cmp $9F319E.l,X		; DF 9E 31 9F
	and ($A0.b),Y		; 31 A0
	cpy #$31A1.w		; C0 A1 31
	ldx #$A331.w		; A2 31 A3
	cpy #$2AF8.w		; C0 F8 2A
	sbc $31A5CF.l,X		; FF CF A5 31
	ldx $31.b		; A6 31
	lda [$31.b]		; A7 31
	tay		; A8
	and ($A9.b),Y		; 31 A9
	and ($AA.b),Y		; 31 AA
	and ($AB.b),Y		; 31 AB
	bne  -1.b		; D0 FF
	ldx $ACFE.w,Y		; BE FE AC
	cpy #$2AF8.w		; C0 F8 2A
	lda ($31.b),Y		; B1 31
	lda ($31.b)		; B2 31
	lda ($31.b,S),Y		; B3 31
	ldy $31.b,X		; B4 31
	sta $31B5DF.l		; 8F DF B5 31
	ldx $31.b,Y		; B6 31
	lda [$C6.b],Y		; B7 C6
	clv		; B8
	and ($B9.b),Y		; 31 B9
	and ($BA.b),Y		; 31 BA
	cpy #$28F8.w		; C0 F8 28
	sbc $31BF9B.l,X		; FF 9B BF 31
	cpy #$C131.w		; C0 31 C1
	and ($C2.b),Y		; 31 C2
	and ($C3.b),Y		; 31 C3
	and ($C4.b),Y		; 31 C4
	dec $FD.b		; C6 FD
	cmp $FD.b		; C5 FD
	xba		; EB
	inc $F8C0.w,X		; FE C0 F8
	and [$C6.b]		; 27 C6
	and ($C7.b),Y		; 31 C7
	and ($C8.b),Y		; 31 C8
	and ($C9.b),Y		; 31 C9
	dec $F8.b		; C6 F8
	asl A		; 0A
	cpy #$2DF8.w		; C0 F8 2D
	dex		; CA
	cmp [$0B.b],Y		; D7 0B
	and ($CB.b),Y		; 31 CB
	and ($CC.b),Y		; 31 CC
	dec $F8.b		; C6 F8
	tsb $F8C0.w		; 0C C0 F8
	and $31CD.w		; 2D CD 31
	dec $F8C2.w		; CE C2 F8
	ora ($FF.b)		; 12 FF
	ldy $FE.b		; A4 FE
	bit $2D.b		; 24 2D
	and $2D.b		; 25 2D
	jsl $2D232D.l		; 22 2D 23 2D
	sed		; F8
	pea $0BF8.w		; F4 F8 0B
	cmp $F8F83F.l,X		; DF 3F F8 F8
	ora $D02DCF.l		; 0F CF 2D D0
	and $FED1.w		; 2D D1 FE
	sed		; F8
	ora ($28.b)		; 12 28
	and $2D29.w		; 2D 29 2D
	rol $2D.b		; 26 2D
	and [$EB.b]		; 27 EB
	adc $F8F4F8.l,X		; 7F F8 F4 F8
	phd		; 0B
	sed		; F8
	sed		; F8
	ora $D32DD2.l		; 0F D2 2D D3
	and $2DD4.w		; 2D D4 2D
	cmp $2D.b,X		; D5 2D
	dec $87.b,X		; D6 87
	lda ($C0.b,S),Y		; B3 C0
	sed		; F8
	asl $2D2C.w		; 0E 2C 2D
	sbc $2B2D2A.l,X		; FF 2A 2D 2B
	sed		; F8
	inc $F4FF.w,X		; FE FF F4
	sed		; F8
	phd		; 0B
	sed		; F8
	sed		; F8
	ora $D82DD7.l		; 0F D7 2D D8
	and $2DD9.w		; 2D D9 2D
	phx		; DA
	and $2DDB.w		; 2D DB 2D
	jmp.w [$DD2D]		; DC 2D DD
	sbc [$CF.b],Y		; F7 CF
	and $2DDE.w		; 2D DE 2D
	cmp $30FDC0.l,X		; DF C0 FD 30
	and $2D31.w		; 2D 31 2D
	rol $2F2D.w		; 2E 2D 2F
	plx		; FA
	adc $F8F4F8.l,X		; 7F F8 F4 F8
	phd		; 0B
	sed		; F8
	sed		; F8
	ora $E12DE0.l		; 0F E0 2D E1
	and $2DE2.w		; 2D E2 2D
	sbc $2D.b,S		; E3 2D
	cpx $2D.b		; E4 2D
	sbc $FC.b		; E5 FC
	sbc $2DE6F8.l,X		; FF F8 E6 2D
	sbc [$2D.b]		; E7 2D
	inx		; E8
	and $2DE9.w		; 2D E9 2D
	nop		; EA
	and $2D34.w		; 2D 34 2D
	cmp $2D35FA.l		; CF FA 35 2D
	and ($2D.b)		; 32 2D
	and ($F8.b,S),Y		; 33 F8
	pea $0BF8.w		; F4 F8 0B
	sed		; F8
	sed		; F8
	ora $EC2DEB.l		; 0F EB 2D EC
	cmp $ED2D7F.l,X		; DF 7F 2D ED
	and $2DEE.w		; 2D EE 2D
	sbc $0EF8F8.l		; EF F8 F8 0E
	and ($6D.b,S),Y		; 33 6D
	and ($6D.b)		; 32 6D
	and $6D.b,X		; 35 6D
	bit $6D.b,X		; 34 6D
	eor ($F8.b)		; 52 F8
	sed		; F8
	pea $0BF8.w		; F4 F8 0B
	sed		; F8
	sed		; F8
	ora $6DEFC0.l		; 0F C0 EF 6D
	inc $576D.w		; EE 6D 57
	sbc $ED.b,X		; F5 ED
	adc $6DEC.w		; 6D EC 6D
	sed		; F8
	sed		; F8
	ora $F880.w		; 0D 80 F8
	jsr ($F880.w,X)		; FC 80 F8
	jsr ($F880.w,X)		; FC 80 F8
	cmp $C0.b		; C5 C0
	sed		; F8
	and $AF3154.l,X		; 3F 54 31 AF
	adc $563155.l,X		; 7F 55 31 56
	and ($57.b),Y		; 31 57
	sec		; 38
	bne  41.b		; D0 29
	sbc $5F0EF8.l,X		; FF F8 0E 5F
	and ($60.b),Y		; 31 60
	and ($61.b),Y		; 31 61
	and ($62.b),Y		; 31 62
	sbc $F8C0FE.l,X		; FF FE C0 F8
	sec		; 38
	ror A		; 6A
	and ($6B.b),Y		; 31 6B
	and ($6C.b),Y		; 31 6C
	and ($6D.b),Y		; 31 6D
	cpy #$38F8.w		; C0 F8 38
	ror $31.b,X		; 76 31
	adc [$31.b],Y		; 77 31
	sei		; 78
	sbc $31FB.w,X		; FD FB 31
	adc $F8C0.w,Y		; 79 C0 F8
	sec		; 38
	.db $82, $31, $83		; 82 31 83
	and ($84.b),Y		; 31 84
	and ($85.b),Y		; 31 85
	cpy #$38F8.w		; C0 F8 38
	stx $8F31.w		; 8E 31 8F
	sbc [$6A.b],Y		; F7 6A
	and ($90.b),Y		; 31 90
	and ($91.b),Y		; 31 91
	cpy #$38F8.w		; C0 F8 38
	txs		; 9A
	and ($9B.b),Y		; 31 9B
	ldx $C3.b,Y		; B6 C3
	cpy #$37F8.w		; C0 F8 37
	sei		; 78
	cpy $A4.b		; C4 A4
	sbc $F8C0FE.l,X		; FF FE C0 F8
	sec		; 38
	lda $AE31.w		; AD 31 AE
	and ($AF.b),Y		; 31 AF
	and ($B0.b),Y		; 31 B0
	cpy #$38F8.w		; C0 F8 38
	tyx		; BB
	and ($BC.b),Y		; 31 BC
	and ($BD.b),Y		; 31 BD
	eor $D5.b,X		; 55 D5
	and ($BE.b),Y		; 31 BE
	cpy #$38F8.w		; C0 F8 38
	clv		; B8
	cpy #$C02F.w		; C0 2F C0
	sed		; F8
	cmp $C0C678.l		; CF 78 C6 C0
	sed		; F8
	lda [$B0.b],Y		; B7 B0
	ldx $F8C0.w,Y		; BE C0 F8
	and [$BF.b],Y		; 37 BF
	tax		; AA
	beq  45.b		; F0 2D
	sbc ($2D.b),Y		; F1 2D
	sbc ($2D.b)		; F2 2D
	sbc ($C0.b,S),Y		; F3 C0
	sed		; F8
	sec		; 38
	clv		; B8
	dec $C0.b,X		; D6 C0
	sed		; F8
	and [$F8.b],Y		; 37 F8
	dec $AA.b,X		; D6 AA
	brk $80.b		; 00 80
	sed		; F8
	jsr ($F880.w,X)		; FC 80 F8
	jsr ($F880.w,X)		; FC 80 F8
	lda $F8C0.w,X		; BD C0 F8
	and $00F000.l,X		; 3F 00 F0 00
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
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFF7FE.l,X		; FF FE F7 FF
	lda $A9FF.w,X		; BD FF A9
	sbc $E2FEFF.l,X		; FF FF FE E2
	lda $CA56AD.l,X		; BF AD 56 CA
	inc $FFDF.w		; EE DF FF
	dec $FFEF.w,X		; DE EF FF
	inc $BF.b,X		; F6 BF
	sbc #$7D.b		; E9 7D
	sbc [$6B.b],Y		; F7 6B
	ldx $9B7E.w,Y		; BE 7E 9B
	.db $62, $D7, $FF		; 62 D7 FF
	xce		; FB
	sbc $DBFDFF.l,X		; FF FF FD DB
	xba		; EB
	cpx $FFEF.w		; EC EF FF
	inx		; E8
	sei		; 78
	cmp $FFE4BF.l		; CF BF E4 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $6FFFFF.l,X		; FF FF FF 6F
	sbc $FFEFF7.l,X		; FF F7 EF FF
	eor $B37E.w,X		; 5D 7E B3
	sbc $5B720A.l		; EF 0A 72 5B
	sbc $DFFBFF.l,X		; FF FF FB DF
	sbc $FBFFDE.l,X		; FF DE FF FB
	cmp $F92FBF.l		; CF BF 2F F9
	dec $BAC6.w,X		; DE C6 BA
	phb		; 8B
	inc $FFFF.w,X		; FE FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc [$BF.b],Y		; F7 BF
	adc [$DF.b],Y		; 77 DF
	lda $AEA46F.l		; AF 6F A4 AE
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
	sbc [$FA.b],Y		; F7 FA
	xce		; FB
	sbc $EDFDE7.l,X		; FF E7 FD ED
	tad		; 5B
	iny		; C8
	sbc $FFFFFF.l,X		; FF FF FF FF
	and $FFFFFE.l,X		; 3F FE FF FF
	sbc [$FB.b],Y		; F7 FB
	inc $F6FD.w		; EE FD F6
	sbc $FFBBEA.l		; EF EA BB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	dec $7B7F.w,X		; DE 7F 7B
	xce		; FB
	inc $EE.b,X		; F6 EE
	xce		; FB
	ora $FF1ED7.l		; 0F D7 1E FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFEFDF.l,X		; FF DF EF FF
	sbc $EFF7.w,X		; FD F7 EF
	sbc $FFEFFF.l,X		; FF FF EF FF
	cmp $5F33CF.l,X		; DF CF 33 5F
	ora $CDF7CD.l,X		; 1F CD F7 CD
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFCC7.l		; EF C7 FC FF
	xce		; FB
	sbc [$F1.b],Y		; F7 F1
	dec A		; 3A
	xce		; FB
	cpx $99.b		; E4 99
	cpx $FFFF.w		; EC FF FF
	sbc $BF7D7F.l,X		; FF 7F 7D BF
	sbc $E79CFF.l,X		; FF FF 9C E7
	sbc $F911DD.l		; EF DD 11 F9
	adc $EB.b,X		; 75 EB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFBFF.l,X		; FF FF FB FF
	cmp $7F7FDF.l,X		; DF DF 7F 7F
	sbc $FFFEFF.l,X		; FF FF FE FF
	cmp $FFFFB7.l,X		; DF B7 FF FF
	and $7FBD.w		; 2D BD 7F
	plx		; FA
	cmp ($FF.b,S),Y		; D3 FF
	tsa		; 3B
	ora #$FF.b		; 09 FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $EFFB.w,Y		; F9 FB EF
	adc $FBF24F.l,X		; 7F 4F F2 FB
	jmp.w [$7B7C]		; DC 7C 7B
	cmp ($FF.b),Y		; D1 FF
	sbc $FDFFFD.l,X		; FF FD FF FD
	lda $CB7FFB.l,X		; BF FB 7F CB
	lda #$F7.b		; A9 F7
	sbc [$7F.b],Y		; F7 7F
	inc $9CBD.w,X		; FE BD 9C
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($00.b,X)		; 01 00
	tsb $22.b		; 04 22
	brk $00.b		; 00 00
	cop $4B.b		; 02 4B
	ora $04.b,S		; 03 04
	plp		; 28
	ldx #$7884.w		; A2 84 78
	brk $82.b		; 00 82
	brk $00.b		; 00 00
	brk $21.b		; 00 21
	brk $08.b		; 00 08
	bra  48.b		; 80 30
	ora ($20.b),Y		; 11 20
	bpl  24.b		; 10 18
	ora $60.b		; 05 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	sty $04.b		; 84 04
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	.db $82, $CB, $22		; 82 CB 22
	ora [$40.b]		; 07 40
	brk $9C.b		; 00 9C
	jsl $828C18.l		; 22 18 8C 82
	mvn $08,$25		; 54 25 08
	sbc ($AA.b)		; F2 AA
	stx $55.b		; 86 55
	eor $EA.b,X		; 55 EA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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

	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	and [$00.b]		; 27 00
	bcc  66.b		; 90 42
	lsr A		; 4A
	brk $84.b		; 00 84
	brk $10.b		; 00 10
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	tsb $42.b		; 04 42
	and $04.b		; 25 04
	ora ($44.b,X)		; 01 44
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $18.b		; 24 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $04.b		; 14 04
	and $19.b		; 25 19
	ora ($12.b,X)		; 01 12
	brk $0A.b		; 00 0A
	mvp $82,$34		; 44 34 82
	lsr $A0.b		; 46 A0
	brk $4B.b		; 00 4B
	dey		; 88
	cmp $9F.b		; C5 9F
	sep #$45		; E2 45
	pld		; 2B
	ldx $0000.w		; AE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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

	php		; 08
	brk $08.b		; 00 08
	tsb $40.b		; 04 40
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	bpl -126.b		; 10 82
	asl $00.b		; 06 00
	lsr $2055.w		; 4E 55 20
	php		; 08
	brk $00.b		; 00 00
	jsr $0012.w		; 20 12 00
	bpl -127.b		; 10 81
	ora ($01.b,X)		; 01 01
	tax		; AA
	eor $0316.w,Y		; 59 16 03
	adc $104008.l		; 6F 08 40 10
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   9.b		; 10 09
	adc #$40.b		; 69 40
	inx		; E8
	eor $10.b		; 45 10
	tsb $0040.w		; 0C 40 00
	bra  20.b		; 80 14
	trb $10.b		; 14 10
	pea $1087.w		; F4 87 10
	sbc $4746BA.l,X		; FF BA 46 47
	tda		; 7B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $40.b		; 00 40
	brk $46.b		; 00 46
	brk $20.b		; 00 20
	rti		; 40

	bit $00.b		; 24 00
	plp		; 28
	php		; 08
	cop $14.b		; 02 14
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $60.b		; 02 60
	sta ($2D.b,X)		; 81 2D
	lda ($C2.b,X)		; A1 C2
	sta ($81.b,X)		; 81 81
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	rti		; 40

	bmi   0.b		; 30 00
	tsb $82.b		; 04 82
	ora #$22.b		; 09 22
	eor ($C1.b,X)		; 41 C1
	brk $86.b		; 00 86
	bit $063A.w		; 2C 3A 06
	adc ($00.b,X)		; 61 00
	phd		; 0B
	adc $29.b,S		; 63 29
	asl A		; 0A
	tsx		; BA
	pla		; 68
	ldx #$E7A8.w		; A2 A8 E7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	php		; 08
	brk $00.b		; 00 00
	sta ($81.b),Y		; 91 81
	bra -48.b		; 80 D0
	brk $94.b		; 00 94
	stz $04.b		; 64 04
	bcc -109.b		; 90 93
	bra   1.b		; 80 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $9528.w		; 0D 28 95
	tsb $80.b		; 04 80
	inc A		; 1A
	trb $3880.w		; 1C 80 38
	phd		; 0B
	mvn $00,$00		; 54 00 00
	asl $1000.w		; 0E 00 10
	ora ($10.b,X)		; 01 10
	brk $20.b		; 00 20
	jsr $0450.w		; 20 50 04
	eor $08.b,S		; 43 08
	jsl $000199.l		; 22 99 01 00
	bpl  52.b		; 10 34
	bpl -24.b		; 10 E8
	cop $61.b		; 02 61
	bit $68.b		; 24 68
	bcs -74.b		; B0 B6
	stz $DD.b,X		; 74 DD
	lda $0086.w,X		; BD 86 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	and ($10.b)		; 32 10
	brk $30.b		; 00 30
	brk $80.b		; 00 80
	brk $84.b		; 00 84
	brk $00.b		; 00 00
	jsr $0850.w		; 20 50 08
	and #$00.b		; 29 00
	bpl  33.b		; 10 21
	rti		; 40

	eor $8009.w		; 4D 09 80
	ora $58.b,S		; 03 58
	phd		; 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   2.b		; 10 02
	php		; 08
	brk $41.b		; 00 41
	eor #$02.b		; 49 02
	jsr $4240.w		; 20 40 42
	ora $0074.w,X		; 1D 74 00
	sta ($00.b)		; 92 00
	brk $0E.b		; 00 0E
	jsr $0000.w		; 20 00 00
	bmi -102.b		; 30 9A
	asl $918A.w		; 0E 8A 91
	cop $59.b		; 02 59
	inx		; E8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   3.b		; 80 03
	rti		; 40

	jsr $8000.w		; 20 00 80
	ora ($40.b,X)		; 01 40
	brk $00.b		; 00 00
	ora ($84.b)		; 12 84
	bcc  18.b		; 90 12
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	bcc   0.b		; 90 00
	ora $04.b		; 05 04
	ora ($02.b,X)		; 01 02
	cpx #$5302.w		; E0 02 53
	bvs   0.b		; 70 00
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	brk $20.b		; 00 20
	ora $80.b,S		; 03 80
	bpl   9.b		; 10 09
	jsl $845496.l		; 22 96 54 84
	dey		; 88
	brk $00.b		; 00 00
	.db $42, $54		; 42 54
	ldy $60.b		; A4 60
	bpl  99.b		; 10 63
	asl $25.b,X		; 16 25
	sta $FE.b,S		; 83 FE
	bvs  45.b		; 70 2D
	tax		; AA
	rol $00.b,X		; 36 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	php		; 08
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $08.b		; 00 08
	tsb $A8.b		; 04 A8
	sta $44.b		; 85 44
	jsr $0041.w		; 20 41 00
	brk $08.b		; 00 08
	bpl   0.b		; 10 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   2.b		; 80 02
	php		; 08
	cop $03.b		; 02 03
	dey		; 88
	jsl $000110.l		; 22 10 01 00
	brk $22.b		; 00 22
	ora #$40.b		; 09 40
	brk $18.b		; 00 18
	ora ($42.b,X)		; 01 42
	brk $01.b		; 00 01
	bit $CC.b		; 24 CC
	lsr A		; 4A
	brk $81.b		; 00 81
	brk $84.b		; 00 84
	stx $00A1.w		; 8E A1 00
	tax		; AA
	inc $D2.b		; E6 D2
	dex		; CA
	ror A		; 6A
	jsl $74B9CE.l		; 22 CE B9 74
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cpy #$1004.w		; C0 04 10
	tsb $30.b		; 04 30
	ror $62.b,X		; 76 62
	mvp $00,$00		; 44 00 00
	php		; 08
	brk $00.b		; 00 00
	asl A		; 0A
	brk $40.b		; 00 40
	rts		; 60

	ora ($11.b)		; 12 11
	bvs   2.b		; 70 02
	inc $A650.w,X		; FE 50 A6
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($00.b,X)		; E1 00
	bra   0.b		; 80 00
	ora $00.b		; 05 00
	mvp $44,$80		; 44 80 44
	eor ($12.b,X)		; 41 12
	and ($81.b)		; 32 81
	php		; 08
	bra  80.b		; 80 50
	tay		; A8
	ora ($65.b)		; 12 65
	sta [$85.b]		; 87 85
	bpl -55.b		; 10 C9
	and $BFF8.w,Y		; 39 F8 BF
	lda ($56.b,S),Y		; B3 56
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $08.b		; 00 08
	tsb $0A.b		; 04 0A
	tsb $02.b		; 04 02
	php		; 08
	lda #$90.b		; A9 90
	eor $43.b,S		; 43 43
	sta $00.b		; 85 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	rti		; 40

	brk $01.b		; 00 01
	php		; 08
	brk $00.b		; 00 00
	ora $50.b		; 05 50
	and #$A7.b		; 29 A7
	jsl $021022.l		; 22 22 10 02
	rti		; 40

	bpl  16.b		; 10 10
	bra   2.b		; 80 02
	brk $61.b		; 00 61
	ora ($01.b,X)		; 01 01
	and ($1A.b)		; 32 1A
	brk $E2.b		; 00 E2
	rti		; 40

	sty $10.b		; 84 10
	bmi -125.b		; 30 83
	ora $54.b,S		; 03 54
	and ($F3.b,X)		; 21 F3
	.db $42, $2D		; 42 2D
	lda $DB.b,S		; A3 DB
	cmp $00CF9F.l,X		; DF 9F CF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	plp		; 28
	brk $40.b		; 00 40
	cop $20.b		; 02 20
	bpl -128.b		; 10 80
	.db $82, $80, $0A		; 82 80 0A
	lda [$01.b],Y		; B7 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	rti		; 40

	.db $82, $00, $00		; 82 00 00
	iny		; C8
	ora ($18.b,X)		; 01 18
	tsb $86.b		; 04 86
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	jsr $3220.w		; 20 20 32
	.db $82, $06, $8A		; 82 06 8A
	.db $62, $48, $8D		; 62 48 8D
	cpy #$8010.w		; C0 10 80
	eor ($12.b)		; 52 12
	brk $12.b		; 00 12
	rol A		; 2A
	and $0C.b,X		; 35 0C
	bit $D42E.w,X		; 3C 2E D4
	bcc -41.b		; 90 D7
	sbc $0000.w,Y		; F9 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $44.b		; 00 44
	.db $82, $00, $10		; 82 00 10
	and ($88.b),Y		; 31 88
	ora ($60.b,X)		; 01 60
	jsr $D181.w		; 20 81 D1
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	mvp $04,$00		; 44 00 04
	php		; 08
	ora ($44.b)		; 12 44
	bmi  11.b		; 30 0B
	eor ($00.b),Y		; 51 00
	cpx #$0008.w		; E0 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $5000.w		; 20 00 50
	brk $00.b		; 00 00
	cop $31.b		; 02 31
	adc ($B1.b,X)		; 61 B1
	brk $02.b		; 00 02
	brk $11.b		; 00 11
	brk $00.b		; 00 00
	bvc -64.b		; 50 C0
	and ($AB.b,X)		; 21 AB
	dec $49.b		; C6 49
	jsl $785357.l		; 22 57 53 78
	sbc [$E7.b],Y		; F7 E7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $61.b		; 04 61
	bpl  96.b		; 10 60
	sta $02.b		; 85 02
	bmi  41.b		; 30 29
	and #$E5.b		; 29 E5
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	bra  64.b		; 80 40
	rti		; 40

	sta ($00.b,X)		; 81 00
	ror A		; 6A
	jsr $C390.w		; 20 90 C3
	asl A		; 0A
	brk $40.b		; 00 40
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	php		; 08
	bvc   2.b		; 50 02
	lda $10.b		; A5 10
	brk $C0.b		; 00 C0
	sta $21.b		; 85 21
	dec $28.b,X		; D6 28
	iny		; C8
	eor $00.b,S		; 43 00
	jmp ($5C28.w,X)		; 7C 28 5C
	ora $B28652.l		; 0F 52 86 B2
	bit #$FC.b		; 89 FC
	lda $FEF7.w,X		; BD F7 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($84.b,X)		; 01 84
	rep #$00		; C2 00
	ora ($00.b,X)		; 01 00
	phd		; 0B
	php		; 08
	brk $80.b		; 00 80
	tsb $0C10.w		; 0C 10 0C
	cmp [$81.b]		; C7 81
	.db $82, $00, $00		; 82 00 00
	brk $02.b		; 00 02
	and ($00.b,X)		; 21 00
	dey		; 88
	ora ($02.b,X)		; 01 02
	pei ($00.b)		; D4 00
	brk $5A.b		; 00 5A
	bpl  16.b		; 10 10
	eor #$00.b		; 49 00
	cop $00.b		; 02 00
	brk $12.b		; 00 12
	brk $08.b		; 00 08
	ora ($00.b),Y		; 11 00
	cop $10.b		; 02 10
	cop $08.b		; 02 08
	iny		; C8
	cpy $4003.w		; CC 03 40
	pla		; 68
	eor [$80.b]		; 47 80
	brk $84.b		; 00 84
	rti		; 40

	sta ($3C.b,X)		; 81 3C
	and $0359A0.l		; 2F A0 59 03
	and [$F6.b],Y		; 37 F6
	adc $0000.w		; 6D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	php		; 08
	sec		; 38
	brk $1B.b		; 00 1B
	clc		; 18
	ldx #$0230.w		; A2 30 02
	iny		; C8
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	ora ($21.b),Y		; 11 21
	bra  32.b		; 80 20
	bmi  64.b		; 30 40
	bpl   0.b		; 10 00
	cpy $6A20.w		; CC 20 6A
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	tsb $40.b		; 04 40
	cop $03.b		; 02 03
	bit $07.b		; 24 07
	brk $08.b		; 00 08
	ora $05.b,S		; 03 05
	brk $4A.b		; 00 4A
	cop $88.b		; 02 88
	bmi  24.b		; 30 18
	lda ($28.b,X)		; A1 28
	sty $1B.b		; 84 1B
	sta $8124.w,X		; 9D 24 81
	inc $A7.b		; E6 A7
	sbc $0000.w,X		; FD 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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

	bra  18.b		; 80 12
	brk $40.b		; 00 40
	cop $00.b		; 02 00
	brk $41.b		; 00 41
	and ($16.b,X)		; 21 16
	dex		; CA
	bit #$10.b		; 89 10
	bmi  -6.b		; 30 FA
	bra  65.b		; 80 41
	rti		; 40

	bpl   0.b		; 10 00
	dey		; 88
	bpl  32.b		; 10 20
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	ora $55B9.w,X		; 1D B9 55
	ldy #$0001.w		; A0 01 00
	jsr $4802.w		; 20 02 48
	tsb $B0.b		; 04 B0
	bvc  64.b		; 50 40
	bra  36.b		; 80 24
	brk $58.b		; 00 58
	sbc ($31.b,X)		; E1 31
	adc $40.b,S		; 63 40
	bra   4.b		; 80 04
	ora ($39.b,X)		; 01 39
	ora $4A.b		; 05 4A
	trb $8F80.w		; 1C 80 8F
	jmp ($DA53.w)		; 6C 53 DA
	adc [$E4.b],Y		; 77 E4
	sta $FFFFFF.l,X		; 9F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $F7FFFD.l,X		; FF FD FF F7
	sbc $FBFFFE.l,X		; FF FE FF FB
	adc [$FF.b],Y		; 77 FF
	sbc $AEFFFF.l,X		; FF FF FF AE
	txy		; 9B
	lda $E6.b		; A5 E6
	cld		; D8
	sbc $BFFFFF.l,X		; FF FF FF BF
	cmp $FFFFBF.l,X		; DF BF FF FF
	sbc [$DE.b],Y		; F7 DE
	sbc ($F7.b)		; F2 F7
	and [$DB.b],Y		; 37 DB
	and ($01.b,S),Y		; 33 01
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DDDFFF.l,X		; FF FF DF DD
	adc [$DD.b]		; 67 DD
	clv		; B8
	sbc ($3B.b),Y		; F1 3B
	lda $FFF414.l		; AF 14 F4 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $9F7DFD.l,X		; FF FD 7D 9F
	inc $F4AF.w,X		; FE AF F4
	sbc $1EEE.w,X		; FD EE 1E
	eor $FF7F.w,X		; 5D 7F FF
	inc $FFFF.w,X		; FE FF FF
	xce		; FB
	sbc $CFFD7D.l,X		; FF 7D FD CF
	sbc $EE73FF.l,X		; FF FF 73 EE
	ror $BE.b		; 66 BE
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$BF.b],Y		; F7 BF
	tda		; 7B
	phk		; 4B
	cpx $AA.b		; E4 AA
	tay		; A8
	and $FFFFFF.l,X		; 3F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	inc $EFFF.w,X		; FE FF EF
	adc $EDEDED.l,X		; 7F ED ED ED
	cmp $D5B9E1.l		; CF E1 B9 D5
	ldx $FFF7.w,Y		; BE F7 FF
	sbc $FFFF.w		; ED FF FF
	sbc $FDFF.w,X		; FD FF FD
	sbc $FADD7D.l,X		; FF 7D DD FA
	lsr $571D.w,X		; 5E 1D 57
	cmp [$1D.b]		; C7 1D
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $7FFE.w,X		; FE FE 7F
	cmp $7E5FFF.l,X		; DF FF 5F 7E
	adc $AF4BCB.l,X		; 7F CB 4B AF
	eor $FFFFFF.l,X		; 5F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $7EFF.w,X		; FD FF 7E
	sbc $DEBFF7.l,X		; FF F7 BF DE
	stz $B7.b		; 64 B7
	and ($7F.b),Y		; 31 7F
	ldy $DD.b,X		; B4 DD
	sbc $77FFFF.l,X		; FF FF FF 77
	sbc $FBFF3F.l,X		; FF 3F FF FB
	adc $B4B1E2.l,X		; 7F E2 B1 B4
	cmp $CDF7F7.l,X		; DF F7 F7 CD
	lda $FFFFFF.l,X		; BF FF FF FF
	xce		; FB
	sbc $DFF8FD.l,X		; FF FD F8 DF
	cmp $2EECFF.l,X		; DF FF EC 2E
	ror $9E83.w,X		; 7E 83 9E
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $EF.b,X		; F6 EF
	inc $BFFF.w,X		; FE FF BF
	sbc $FFDDDF.l,X		; FF DF DD FF
	sbc $76FF7F.l,X		; FF 7F FF 76
	rol A		; 2A
	eor ($D6.b,S),Y		; 53 D6
	sbc $FBD7.w		; ED D7 FB
	sbc $DFFFFF.l		; EF FF FF DF
	sbc $FFDEFF.l,X		; FF FF DE FF
	lda $FFFFEB.l		; AF EB FF FF
	pea $90FD.w		; F4 FD 90
	lda $FFFFD3.l,X		; BF D3 FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $EED7EF.l,X		; FF EF D7 EE
	eor $775F.w		; 4D 5F 77
	sep #$CC		; E2 CC
	jsr ($FFFF.w,X)		; FC FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFF7F.l,X		; FF 7F FF DF
	sbc $FFBB5F.l,X		; FF 5F BB FF
	jsr ($FC7F.w,X)		; FC 7F FC
	sbc $93F7FF.l,X		; FF FF F7 93
	ldy $35F6.w,X		; BC F6 35
	nop		; EA
	ror A		; 6A
	beq  74.b		; F0 4A
	xba		; EB
	sbc $EFFFFD.l,X		; FF FD FF EF
	sbc $BBDADF.l,X		; FF DF DA BB
	sbc $DFF5.w,X		; FD F5 DF
	sbc $B3AD.w		; ED AD B3
	cmp ($7F.b,S),Y		; D3 7F
	sbc $EFFFFF.l,X		; FF FF FF EF
	inc $FB.b,X		; F6 FB
	xce		; FB
	sbc $4ED373.l,X		; FF 73 D3 4E
	sbc [$6F.b],Y		; F7 6F
	jsr ($FF8A.w,X)		; FC 8A FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFAF.l,X		; FF AF FF FF
	sbc $EF9FFF.l		; EF FF 9F EF
	inc $FFFF.w,X		; FE FF FF
	adc ($FB.b,S),Y		; 73 FB
	xba		; EB
	sbc $C3EF.w,X		; FD EF C3
	bcs -82.b		; B0 AE
	sbc $FEBFFF.l,X		; FF FF BF FE
	sbc $BFFFFF.l		; EF FF FF BF
	stz $BFFF.w		; 9C FF BF
	sbc ($EF.b,X)		; E1 EF
	and ($2B.b),Y		; 31 2B
	pea $FFFF.w		; F4 FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $E7B78F.l,X		; FF 8F B7 E7
	and $63F5BF.l		; 2F BF F5 63
	sbc [$D9.b]		; E7 D9
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $B3FFFF.l,X		; FF FF FF B3
	sbc $EFFBFD.l,X		; FF FD FB EF
	ora $FF.b		; 05 FF
	sbc $7D3F31.l		; EF 31 3F 7D
	plx		; FA
	eor [$FF.b]		; 47 FF
	adc $FFDFFF.l,X		; 7F FF DF FF
	sbc $DFFFEF.l,X		; FF EF FF DF
	sbc $FF7F.w		; ED 7F FF
	lsr $E957.w		; 4E 57 E9
	sta $FDFF.w,X		; 9D FF FD
	sbc $6FFFFF.l,X		; FF FF FF 6F
	inc $DFEC.w,X		; FE EC DF
	and [$7D.b],Y		; 37 7D
	stp		; DB
	and [$F7.b]		; 27 F7
	stx $FF03.w		; 8E 03 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $59CD6F.l,X		; FF 6F CD 59
	pea $FF7A.w		; F4 7A FF
	adc #$27.b		; 69 27
	ldy $FF29.w,X		; BC 29 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF.b,X		; F5 FF
	xba		; EB
	sbc [$77.b],Y		; F7 77
	sbc $DE63CC.l,X		; FF CC 63 DE
	sta $FFFF78.l		; 8F 78 FF FF
	sbc $7BF7FF.l,X		; FF FF F7 7B
	sbc $DFFFDD.l,X		; FF DD FF DF
	sbc $C6779E.l		; EF 9E 77 C6
	bit $76.b		; 24 76
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	adc $BFFBFF.l,X		; 7F FF FB BF
	sbc $EF7F7F.l,X		; FF 7F 7F EF
	cmp $E9EFFF.l,X		; DF FF EF E9
	sbc $A4B38A.l		; EF 8A B3 A4
	lda $BFFFF7.l,X		; BF F7 FF BF
	sbc $FFBEFF.l		; EF FF BE FF
	plx		; FA
	ldx $FF3C.w,Y		; BE 3C FF
	stz $DB.b,X		; 74 DB
	cmp $C73A.w		; CD 3A C7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $ADFE7F.l,X		; FF 7F FE AD
	lda $A757FB.l,X		; BF FB 57 A7
	adc ($77.b),Y		; 71 77
	cpx $FF.b		; E4 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFF3.l,X		; FF F3 FF FF
	sbc $F3BEFF.l,X		; FF FF BE F3
	phk		; 4B
	sbc [$FE.b],Y		; F7 FE
	xba		; EB
	and $6D5B.w,Y		; 39 5B 6D
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $BFBFD7.l,X		; FF D7 BF BF
	and [$D6.b],Y		; 37 D6
	eor $672C1B.l,X		; 5F 1B 2C 67
	ldx $5B.b,Y		; B6 5B
	adc [$AF.b],Y		; 77 AF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DB96FF.l,X		; FF FF 96 DB
.ACCU 16
	rep #$A7		; C2 A7
	lda $A7A7.w,X		; BD A7 A7
	and $FFFFFF.l,X		; 3F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $7DFFFF.l,X		; FF FF FF 7D
	sbc $E57FF5.l,X		; FF F5 7F E5
	lda $CFFF.w		; AD FF CF
	ply		; 7A
	ply		; 7A
	cmp $BFFFFF.l,X		; DF FF FF BF
	sbc $FFFCFB.l,X		; FF FB FC FF
	xce		; FB
	and $EC5BFB.l,X		; 3F FB 5B EC
	adc [$AF.b]		; 67 AF
	eor $FFEFEF.l		; 4F EF EF FF
	plx		; FA
	sbc $FBFFFF.l,X		; FF FF FF FB
	adc $7FFF.w		; 6D FF 7F
	eor $DFC973.l,X		; 5F 73 C9 DF
	sta $FFFF.w		; 8D FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFBF.l,X		; FF BF FF FB
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FDEEFF.l,X		; FF FF EE FD
	cmp [$76.b],Y		; D7 76
	and $AFB3D7.l,X		; 3F D7 B3 AF
	lda [$97.b]		; A7 97
	lda ($26.b,S),Y		; B3 26
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	tad		; 5B
	lda $D5F9.w,X		; BD F9 D5
	adc $14C3.w,Y		; 79 C3 14
	sta $FF.b		; 85 FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $EBDFFF.l,X		; FF FF DF EB
	sta $BF7EE5.l,X		; 9F E5 7E BF
	tya		; 98
	tas		; 1B
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
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F3FFFF.l,X		; FF FF FF F3
	adc $EFB8FE.l,X		; 7F FE B8 EF
	adc $BEEAFE.l		; 6F FE EA BE
	sbc $FFFDFD.l,X		; FF FD FD FF
	sbc $FFFFB7.l		; EF B7 FF FF
	sbc $C3F6FF.l,X		; FF FF F6 C3
	cmp [$EF.b],Y		; D7 EF
	adc $F7FFC9.l,X		; 7F C9 FF F7
	sbc $FFBBFF.l,X		; FF FF BB FF
	adc $F2FDFF.l,X		; 7F FF FD F2
	phx		; DA
	lda $7D.b		; A5 7D
	and $59FE.w		; 2D FE 59
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FBBFB.l,X		; FF FB BB 7F
	sbc $FFFEFF.l		; EF FF FE FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FF6EEF.l,X		; FF EF 6E FF
	dec $74DE.w		; CE DE 74
	eor $FFFFFF.l		; 4F FF FF FF
	sbc $7FFBFE.l,X		; FF FE FB 7F
	sbc $7EBD.w,Y		; F9 BD 7E
	jmp.w [$DBF7]		; DC F7 DB
	lda $6A.b,S		; A3 6A
	adc $FF.b,X		; 75 FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $36EE7F.l,X		; FF 7F EE 36
	cmp $EC18.w,X		; DD 18 EC
	lda $EFFD.w,Y		; B9 FD EF
	sta $FFFF.w		; 8D FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc [$FF.b],Y		; F7 FF
	dec $FF7F.w,X		; DE 7F FF
	sbc $FDFF.w,X		; FD FF FD
	sbc $B7DEF7.l,X		; FF F7 DE B7
	inc $EB.b,X		; F6 EB
	plx		; FA
	inc $5E.b		; E6 5E
	asl $FFFF.w		; 0E FF FF
	sbc $FEF7F7.l,X		; FF F7 F7 FE
	sbc $BEFFFF.l,X		; FF FF FF BE
	sbc $2F77EB.l,X		; FF EB 77 2F
	ldy $FEBF.w		; AC BF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $C5FFFF.l,X		; FF FF FF C5
	cmp $5FFF6D.l,X		; DF 6D FF 5F
	stx $FC.b		; 86 FC
	lsr $FF.b,X		; 56 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $10.b		; 00 10
	cop $00.b		; 02 00
	rts		; 60

	brk $00.b		; 00 00
	asl A		; 0A
	.db $82, $03, $02		; 82 03 02
	sta $00.b,S		; 83 00
	lda ($05.b,X)		; A1 05
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	php		; 08
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	bra   4.b		; 80 04
	asl $4248.w,X		; 1E 48 42
.INDEX 8
	sep #$51		; E2 51
	brk $00.b		; 00 00
	brk $62.b		; 00 62
	brk $44.b		; 00 44
	brk $80.b		; 00 80
	brk $16.b		; 00 16
	txa		; 8A
	bpl -106.b		; 10 96
	sec		; 38
	cmp $8E.b		; C5 8E
	brk $45.b		; 00 45
	dey		; 88
	bra   1.b		; 80 01
	sta ($20.b,X)		; 81 20
	rti		; 40

	phd		; 0B
	iny		; C8
	and [$8B.b],Y		; 37 8B
	eor $48.b,X		; 55 48
	sbc $0000AB.l,X		; FF AB 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bra   0.b		; 80 00
	iny		; C8
	ora $1000.w,Y		; 19 00 10
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	dey		; 88
	.db $42, $08		; 42 08
	brk $C0.b		; 00 C0
	bra   0.b		; 80 00
	ora [$08.b]		; 07 08
	dey		; 88
	rti		; 40

	brk $02.b		; 00 02
	tsb $10.b		; 04 10
	rti		; 40

	php		; 08
	brk $00.b		; 00 00
	php		; 08
	cmp ($00.b,X)		; C1 00
	bra -120.b		; 80 88
	asl $D9.b,X		; 16 D9
	rti		; 40

	clc		; 18
	brk $42.b		; 00 42
	brk $64.b		; 00 64
	bpl   4.b		; 10 04
	plp		; 28
	pea $4302.w		; F4 02 43
	stz $DA.b		; 64 DA
	dec $FE.b		; C6 FE
	rol A		; 2A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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

	brk $03.b		; 00 03
	php		; 08
	ora ($36.b,X)		; 01 36
	php		; 08
	bra -60.b		; 80 C4
	sty $40.b		; 84 40
	bra -71.b		; 80 B9
	rts		; 60

	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $02.b		; 00 02
	ora ($80.b,X)		; 01 80
	asl A		; 0A
	brk $80.b		; 00 80
	brk $88.b		; 00 88
	ldy #$60.b		; A0 60
	ror A		; 6A
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	cop $00.b		; 02 00
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	tya		; 98
	cop $32.b		; 02 32
	php		; 08
.ACCU 8
.INDEX 8
	sep #$78		; E2 78
	cpx #$08.b		; E0 08
	brk $42.b		; 00 42
	bmi  36.b		; 30 24
	bit #$11.b		; 89 11
	sta $42A2.w		; 8D A2 42
	and $9E8F.w,X		; 3D 8F 9E
	adc ($8F.b,X)		; 61 8F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($04.b,X)		; 01 04
	lda ($04.b),Y		; B1 04
	bra   5.b		; 80 05
	tad		; 5B
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($04.b,X)		; 41 04
	php		; 08
	rti		; 40

	brk $02.b		; 00 02
	brk $80.b		; 00 80
	lda $03.b		; A5 03
	txa		; 8A
	bra   0.b		; 80 00
	tsb $06.b		; 04 06
	brk $02.b		; 00 02
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	eor $2C.b,S		; 43 2C
	tsb $A1.b		; 04 A1
	sta ($38.b,X)		; 81 38
	jsr $5150.w		; 20 50 51
	clc		; 18
	brk $00.b		; 00 00
	rti		; 40

	xba		; EB
	cmp $0DA7.w,Y		; D9 A7 0D
	ora ($AC.b),Y		; 11 AC
	sbc [$AE.b]		; E7 AE
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
	bra   0.b		; 80 00
	brk $01.b		; 00 01
	tsb $20.b		; 04 20
	brk $01.b		; 00 01
	jsl $C01020.l		; 22 20 10 C0
	ora $004B.w,Y		; 19 4B 00
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	and #$22.b		; 29 22
	ora ($40.b,X)		; 01 40
	brk $06.b		; 00 06
	txa		; 8A
	stz $000B.w,X		; 9E 0B 00
	brk $10.b		; 00 10
	brk $60.b		; 00 60
	brk $04.b		; 00 04
	php		; 08
	lsr $88.b		; 46 88
	sta ($00.b,X)		; 81 00
	brk $04.b		; 00 04
	lda $12.b,S		; A3 12
	bpl  64.b		; 10 40
	sep #$0A		; E2 0A
	tsb $01.b		; 04 01
	sta ($80.b)		; 92 80
	and $1E7C31.l		; 2F 31 7C 1E
	pld		; 2B
	rol $C0.b		; 26 C0
	and $000000.l,X		; 3F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $64.b		; 00 64
	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	jsr $3008.w		; 20 08 30
	brk $20.b		; 00 20
	lda ($07.b,X)		; A1 07
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	phy		; 5A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	asl $0000.w		; 0E 00 00
	jsr $0000.w		; 20 00 00
	bit $00.b		; 24 00
	bpl   0.b		; 10 00
	ora ($20.b,X)		; 01 20
	rti		; 40

	ldy $2006.w,X		; BC 06 20
	sbc $60.b		; E5 60
	brk $40.b		; 00 40
	tay		; A8
	ora $00.b,S		; 03 00
	pha		; 48
	ldy $01.b		; A4 01
	mvn $3B,$95		; 54 95 3B
	ldy $68.b,X		; B4 68
	rol $1D.b,X		; 36 1D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	jsr $0000.w		; 20 00 00
	brk $28.b		; 00 28
	ora $2C.b,S		; 03 2C
	eor $1190E0.l,X		; 5F E0 90 11
	jmp $000000.l		; 5C 00 00 00
	php		; 08
	ora ($08.b,X)		; 01 08
	cop $81.b		; 02 81
	bpl -92.b		; 10 A4
	txa		; 8A
	lsr $20.b		; 46 20
	php		; 08
	adc ($06.b,S),Y		; 73 06
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	eor ($04.b,X)		; 41 04
	brk $35.b		; 00 35
	bit $80.b		; 24 80
	brk $49.b		; 00 49
	ora ($22.b,X)		; 01 22
	php		; 08
	jsr $1C0F.w		; 20 0F 1C
	and $00.b,S		; 23 00
	adc $6E00A5.l,X		; 7F A5 00 6E
	adc #$5F.b		; 69 5F
	sbc ($58.b)		; F2 58
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	jsl $083880.l		; 22 80 38 08
	.db $42, $02		; 42 02
	cpx #$C9.b		; E0 C9
	bit $D9.b		; 24 D9
	bra   0.b		; 80 00
	php		; 08
	brk $04.b		; 00 04
	bvc  16.b		; 50 10
	tsb $00.b		; 04 00
	bra   0.b		; 80 00
	ora ($80.b)		; 12 80
	jmp $0088.w		; 4C 88 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	eor ($01.b),Y		; 51 01
	lda ($06.b)		; B2 06
	jmp $454201.l		; 5C 01 42 45
	inc A		; 1A
	bcc -123.b		; 90 85
	sta $0071.w,X		; 9D 71 00
	brk $70.b		; 00 70
	php		; 08
	lda $90.b,S		; A3 90
	dex		; CA
	rol $31.b		; 26 31
	dey		; 88
	cmp $000000.l,X		; DF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$08.b		; C0 08
	brk $08.b		; 00 08
	brk $3C.b		; 00 3C
	jsr $A000.w		; 20 00 A0
	cop $50.b		; 02 50
	asl $21.b		; 06 21
	bit $1010.w		; 2C 10 10
	brk $02.b		; 00 02
	php		; 08
	brk $02.b		; 00 02
	sec		; 38
	tsb $04C0.w		; 0C C0 04
	sta ($44.b),Y		; 91 44
	eor ($01.b),Y		; 51 01
	cop $8A.b		; 02 8A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0008.w		; 20 08 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	tsb $0A98.w		; 0C 98 0A
	iny		; C8
	phk		; 4B
	ldy #$00.b		; A0 00
	plb		; AB
	ldx $00.b		; A6 00
	sta ($C3.b,X)		; 81 C3
	and $4C2611.l		; 2F 11 26 4C
	lda $EF.b,S		; A3 EF
	lda $DA95.w,X		; BD 95 DA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	inc A		; 1A
	jsr $9508.w		; 20 08 95
	brk $B1.b		; 00 B1
	and ($42.b,X)		; 21 42
	ora $007E.w,X		; 1D 7E 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	brk $28.b		; 00 28
	brk $00.b		; 00 00
	stx $02.b		; 86 02
	php		; 08
	sta ($2C.b,X)		; 81 2C
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	tsb $10.b		; 04 10
	jsr $0000.w		; 20 00 00
	brk $20.b		; 00 20
	tsb $0C.b		; 04 0C
	trb $41.b		; 14 41
	cpy #$4C.b		; C0 4C
	bra 104.b		; 80 68
	bcc -64.b		; 90 C0
	brk $88.b		; 00 88
	jsr $8B20.w		; 20 20 8B
	php		; 08
	sta $F183.w,Y		; 99 83 F1
	jmp $F1AED1.l		; 5C D1 AE F1
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0210.w		; 20 10 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($8A.b,X)		; 01 8A
	eor ($00.b),Y		; 51 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	tsb $41.b		; 04 41
	bra -96.b		; 80 A0
	rol $32.b,X		; 36 32
	lda #$14.b		; A9 14
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$08.b		; 09 08
	eor ($82.b)		; 52 82
	bpl   0.b		; 10 00
	php		; 08
	rol $A0.b		; 26 A0
	tay		; A8
	jsr $043C.w		; 20 3C 04
	php		; 08
	and ($04.b),Y		; 31 04
	lda ($1C.b),Y		; B1 1C
	beq  84.b		; F0 54
	mvp $C4,$F5		; 44 F5 C4
	eor ($61.b)		; 52 61
	xce		; FB
	ora ($F7.b,S),Y		; 13 F7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cop $00.b		; 02 00
	tsb $80.b		; 04 80
	and $10.b		; 25 10
	ora ($91.b,X)		; 01 91
	php		; 08
	ora ($20.b,X)		; 01 20
	.db $82, $02, $01		; 82 02 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	bpl  67.b		; 10 43
	.db $82, $08, $05		; 82 08 05
	ldx #$02.b		; A2 02
	brk $61.b		; 00 61
	adc ($00.b,X)		; 61 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($08.b,X)		; 01 08
	brk $08.b		; 00 08
	ora $2505.w,Y		; 19 05 25
	mvp $00,$10		; 44 10 00
	stx $22.b,Y		; 96 22
	pha		; 48
	.db $62, $00, $03		; 62 00 03
	asl $2C.b,X		; 16 2C
	cmp ($26.b),Y		; D1 26
	cmp $E5.b,X		; D5 E5
	dey		; 88
	cpx $873B.w		; EC 3B 87
	ldx $00.b		; A6 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cop $08.b		; 02 08
	bra   0.b		; 80 00
	brk $10.b		; 00 10
	plp		; 28
	rti		; 40

	sty $02.b		; 84 02
	ora ($F0.b,X)		; 01 F0
	ldx $0830.w		; AE 30 08
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bra  17.b		; 80 11
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	brk $EC.b		; 00 EC
	brk $0A.b		; 00 0A
	sbc ($00.b,X)		; E1 00
	rti		; 40

	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	jsr $2240.w		; 20 40 22
	ora #$04.b		; 09 04
	tay		; A8
	phb		; 8B
	tya		; 98
	.db $62, $AC, $CD		; 62 AC CD
	ora $00.b,S		; 03 00
	tsb $23.b		; 04 23
	bvc -128.b		; 50 80
	sta ($87.b,X)		; 81 87
	pei ($3D.b)		; D4 3D
	ora $37DA.w,Y		; 19 DA 37
	stz $A3EA.w,X		; 9E EA A3
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	.db $82, $00, $10		; 82 00 10
	brk $00.b		; 00 00
	cpy #$30.b		; C0 30
	wai		; CB
	inc A		; 1A
	txa		; 8A
	sta $0006.w		; 8D 06 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ldx #$54.b		; A2 54
	bpl   4.b		; 10 04
	bvc   0.b		; 50 00
	brk $0E.b		; 00 0E
	jsl $80A1E9.l		; 22 E9 A1 80
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	php		; 08
	brk $60.b		; 00 60
	cop $32.b		; 02 32
	rti		; 40

	brk $2D.b		; 00 2D
	cmp $00.b		; C5 00
	ora ($74.b,X)		; 01 74
	php		; 08
	brk $62.b		; 00 62
	nop		; EA
	jsl $A1AA5C.l		; 22 5C AA A1
	sbc $D3.b,S		; E3 D3
	rol $F9.b,X		; 36 F9
	cmp $15.b,X		; D5 15
	ror $0000.w,X		; 7E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($04.b,X)		; 01 04
	jsr $0400.w		; 20 00 04
	rti		; 40

	stz $2001.w		; 9C 01 20
	rti		; 40

	mvp $C0,$02		; 44 02 C0
	cmp $00.b,S		; C3 00
	trb $02.b		; 14 02
	jsr $4800.w		; 20 00 48
	brk $01.b		; 00 01
	clc		; 18
	bpl   4.b		; 10 04
	brk $04.b		; 00 04
	jsr $0012.w		; 20 12 00
	brk $44.b		; 00 44
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	ora ($30.b,X)		; 01 30
	.db $42, $08		; 42 08
	bra  64.b		; 80 40
	adc ($45.b,X)		; 61 45
	rts		; 60

	ora ($40.b)		; 12 40
	brk $D0.b		; 00 D0
	brk $11.b		; 00 11
	txa		; 8A
	brk $12.b		; 00 12
	bcc  47.b		; 90 2F
	sta ($B1.b),Y		; 91 B1
	txa		; 8A
	txy		; 9B
	stp		; DB
	cmp #$00.b		; C9 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($80.b,X)		; 01 80
	brk $01.b		; 00 01
	jsr $4460.w		; 20 60 44
	rol A		; 2A
	brk $24.b		; 00 24
	stp		; DB
	ora $00C2.w		; 0D C2 00
	trb $10.b		; 14 10
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	brk $08.b		; 00 08
	bra   0.b		; 80 00
	bvc   2.b		; 50 02
	and ($10.b,X)		; 21 10
	and ($00.b),Y		; 31 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	trb $06.b		; 14 06
	tsb $01.b		; 04 01
	dey		; 88
	bra  51.b		; 80 33
	brk $A2.b		; 00 A2
	ora $28D9.w,Y		; 19 D9 28
	ora ($08.b,X)		; 01 08
	jmp ($0096.w)		; 6C 96 00
	cli		; 58
	ora $08C463.l		; 0F 63 C4 08
	tsx		; BA
	and $DE.b		; 25 DE
	.db $F3		; Opcode F3 overrunning bank boundry at 20FFFE. Skipping.
	.db $6C		; Opcode 6C overrunning bank boundry at 20FFFF. Skipping.
.ENDS
