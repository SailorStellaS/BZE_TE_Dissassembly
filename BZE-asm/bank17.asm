.BANK 17 SLOT 0
.ORG $0000

.SECTION "Bank17" FORCE

	ora $010600.l,X		; 1F 00 06 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc [$FF.b],Y		; 77 FF
	sbc [$08.b],Y		; F7 08
	rol $FCC1.w,X		; 3E C1 FC
	sbc $740704.l,X		; FF 04 07 74
	ora [$F4.b]		; 07 F4
	ora [$F1.b]		; 07 F1
	ora [$FF.b]		; 07 FF
	brk $3E.b		; 00 3E
	rol $C1.b,X		; 36 C1
	cmp ($02.b,X)		; C1 02
	cop $FA.b		; 02 FA
	cop $FA.b		; 02 FA
	cop $FA.b		; 02 FA
	cop $FC.b		; 02 FC
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3D.b		; 00 3D
	brk $DB.b		; 00 DB
	bit $FF1C.w,X		; 3C 1C FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $24.b		; 24 24
	.db $62, $62, $00		; 62 62 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $C7.b		; 00 C7
	brk $49.b		; 00 49
	sta [$30.b]		; 87 30
	cmp $00FF10.l		; CF 10 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $86.b		; 00 86
	stx $8C.b		; 86 8C
	sty $E8E8.w		; 8C E8 E8
	bra   0.b		; 80 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $304F00.l,X		; 7F 00 4F 30
	and $84ADC1.l,X		; 3F C1 AD 84
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $00010F.l,X		; 3F 0F 01 00
	bvs   6.b		; 70 06
	stx $69.b,Y		; 96 69
	phy		; 5A
	rol $59.b		; 26 59
	bit $30.b		; 24 30
	tsb $06FA.w		; 0C FA 06
	inc $FF01.w,X		; FE 01 FF
	bra  -1.b		; 80 FF
	adc $092121.l,X		; 7F 21 21 09
	brk $0F.b		; 00 0F
	tsb $07.b		; 04 07
	tsb $05.b		; 04 05
	tsb $F9.b		; 04 F9
	sbc $7EFE.w,Y		; F9 FE 7E
	sbc $18A680.l,X		; FF 80 A6 18
	stz $D8.b,X		; 74 D8
	cpy #$F04C.w		; C0 4C F0
	clc		; 18
	brk $30.b		; 00 30
	bra -96.b		; 80 A0
	sed		; F8
	brk $FC.b		; 00 FC
	pld		; 2B
	php		; 08
	pha		; 48
	brk $40.b		; 00 40
	cld		; D8
	pla		; 68
	cpx #$E000.w		; E0 00 E0
	jsr $2060.w		; 20 60 20
	brk $00.b		; 00 00
	bra -88.b		; 80 A8
	ora $050200.l		; 0F 00 02 05
	ora ($04.b,X)		; 01 04
	ora $08.b		; 05 08
	ora $3702.w		; 0D 02 37
	php		; 08
	and [$00.b],Y		; 37 00
	pld		; 2B
	tsb $00.b		; 04 00
	cop $01.b		; 02 01
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	asl $02.b		; 06 02
	asl $08.b		; 06 08
	ora #$1908.w		; 09 08 19
	trb $11.b		; 14 11
	eor $8F5F8F.l,X		; 5F 8F 5F 8F
	sta $4F2F2F.l,X		; 9F 2F 2F 4F
	sbc ($13.b,S),Y		; F3 13
	adc $6E0D.w,X		; 7D 0D 6E
	sta ($FE.b)		; 92 FE
	eor ($2F.b,X)		; 41 2F
	adc $6F6F2F.l		; 6F 2F 6F 6F
	sbc $01DFC3.l		; EF C3 DF 01
	ora $90AFAC.l,X		; 1F AC AF 90
	sta $54.b,S		; 83 54
	ora $07.b,X		; 15 07
	and ($0D.b),Y		; 31 0D
	and ($3A.b,X)		; 21 3A
	adc $1C.b,S		; 63 1C
	eor [$74.b]		; 47 74
	cmp [$28.b]		; C7 28
	stx $8CE0.w		; 8E E0 8C
	bvc  28.b		; 50 1C
	asl $1E10.w,X		; 1E 10 1E
	brk $1D.b		; 00 1D
	ora ($3A.b,X)		; 01 3A
	cop $3A.b		; 02 3A
	cop $74.b		; 02 74
	tsb $78.b		; 04 78
	php		; 08
	inx		; E8
	php		; 08
	asl $1D05.w,X		; 1E 05 1D
	asl A		; 0A
	and $5A0A.w,X		; 3D 0A 5A
	bit $FE.b,X		; 34 FE
	bpl -12.b		; 10 F4
	plp		; 28
	jmp ($A820.w,X)		; 7C 20 A8
	bvs  15.b		; 70 0F
	asl A		; 0A
	asl $1E04.w		; 0E 04 1E
	trb $3C.b		; 14 3C
	php		; 08
	sec		; 38
	plp		; 28
	sec		; 38
	bpl  48.b		; 10 30
	bpl 112.b		; 10 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($04.b,X)		; 01 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $48.b,S		; 03 48
	ora [$31.b]		; 07 31
	asl $0C13.w		; 0E 13 0C
	asl $0000.w		; 0E 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($31.b,X)		; 01 31
	inc A		; 1A
	and ($38.b,S),Y		; 33 38
	adc $54.b,S		; 63 54
	cmp [$38.b]		; C7 38
	stx $0E68.w		; 8E 68 0E
	bne  28.b		; D0 1C
	cpx #$1E38.w		; E0 38 1E
	bpl  13.b		; 10 0D
	ora ($1F.b,X)		; 01 1F
	ora $3A.b,S		; 03 3A
	cop $F4.b		; 02 F4
	sty $F4.b		; 84 F4
	tsb $E8.b		; 04 E8
	php		; 08
	bne  16.b		; D0 10
	ora [$00.b]		; 07 00
	ora [$F8.b]		; 07 F8
	ora [$05.b]		; 07 05
	xce		; FB
	ora ($07.b,X)		; 01 07
	tsb $02.b		; 04 02
	sbc $807F.w,X		; FD 7F 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	sbc $FD00.w,Y		; F9 00 FD
	brk $F9.b		; 00 F9
	ora ($FD.b,X)		; 01 FD
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	ora ($06.b,X)		; 01 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora ($04.b,X)		; 01 04
	ora ($0C.b,X)		; 01 0C
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	sbc #$E90F.w		; E9 0F E9
	ora $D10FE1.l		; 0F E1 0F D1
	ora $E01FD1.l,X		; 1F D1 1F E0
	tsa		; 3B
	ldy #$803B.w		; A0 3B 80
	and ($F4.b),Y		; 31 F4
	tsb $F4.b		; 04 F4
	tsb $FA.b		; 04 FA
	asl A		; 0A
	nop		; EA
	asl A		; 0A
	sep #$02		; E2 02
	cmp ($11.b),Y		; D1 11
	cmp ($11.b),Y		; D1 11
	cpx #$0E20.w		; E0 20 0E
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $78DF20.l,X		; FF 20 DF 78
	sta [$7C.b]		; 87 7C
	sta $C7.b,S		; 83 C7
	brk $83.b		; 00 83
	brk $F1.b		; 00 F1
	sbc ($E1.b),Y		; F1 E1
	sbc ($8E.b,X)		; E1 8E
	stx $8383.w		; 8E 83 83
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $C0FF.w		; 20 FF C0
	sbc $E3FE01.l,X		; FF 01 FE E3
	jsr ($F00F.w,X)		; FC 0F F0
	trb $F8E0.w		; 1C E0 F8
	brk $E0.b		; 00 E0
	brk $54.b		; 00 54
	mvn $08,$08		; 54 08 08
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$1E04.w		; 09 04 1E
	cop $1F.b		; 02 1F
	ora $1F.b		; 05 1F
	brk $1F.b		; 00 1F
	brk $19.b		; 00 19
	ora [$0B.b]		; 07 0B
	ora [$07.b]		; 07 07
	brk $07.b		; 00 07
	tsb $09.b		; 04 09
	php		; 08
	tsb $00.b		; 04 00
	asl A		; 0A
	asl A		; 0A
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	brk $00.b		; 00 00
	cmp $CB15.w,X		; DD 15 CB
	sbc ($07.b,S),Y		; F3 07
	sbc [$07.b],Y		; F7 07
	cmp [$80.b]		; C7 80
	php		; 08
	sbc [$07.b]		; E7 07
	ora [$CF.b],Y		; 17 CF
	lda $07E0C7.l		; AF C7 E0 07
	and ($37.b),Y		; 31 37
	cmp $CF.b,S		; C3 CF
	ora $0F.b,S		; 03 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	and $AF.b,S		; 23 AF
	sta [$B7.b],Y		; 97 B7
	sbc $A3FF38.l,X		; FF 38 FF A3
	sbc $FFFFCF.l,X		; FF CF FF FF
	adc $9F9F7F.l,X		; 7F 7F 9F 9F
	inx		; E8
	sbc $7CF4F1.l		; EF F1 F4 7C
	mvp $93,$31		; 44 31 93
	sta $CF.b,S		; 83 CF
	cmp $FF1EFF.l		; CF FF 1E FF
	php		; 08
	sbc $E0FF80.l,X		; FF 80 FF E0
	inc $5AD6.w,X		; FE D6 5A
	eor $505854.l,X		; 5F 54 58 50
	bit $C857.w		; 2C 57 C8
	lda [$7C.b]		; A7 7C
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	bra  81.b		; 80 51
	sei		; 78
	eor ($F0.b,S),Y		; 53 F0
	ora [$F0.b]		; 07 F0
	ora $D3.b,S		; 03 D3
	tsb $B4.b		; 04 B4
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	ora [$08.b],Y		; 17 08
	adc $FD12.w		; 6D 12 FD
	ora $FF.b,S		; 03 FF
	ora ($FF.b,X)		; 01 FF
	ora $FF.b,S		; 03 FF
	asl $7E.b		; 06 7E
	ora [$7F.b]		; 07 7F
	brk $08.b		; 00 08
	brk $17.b		; 00 17
	ora $6F.b		; 05 6F
	jmp ($1A1B.w)		; 6C 1B 1A
	ora [$14.b],Y		; 17 14
	ora $000709.l		; 0F 09 07 00
	cop $02.b		; 02 02
	cmp $DDB630.l,X		; DF 30 B6 DD
	lda $DE.b,X		; B5 DE
	adc [$BC.b],Y		; 77 BC
	adc [$AC.b],Y		; 77 AC
	adc $7EEFF4.l		; 6F F4 EF 7E
	sbc $C4F47E.l		; EF 7E F4 C4
	sbc $FE20.w,X		; FD 20 FE
	jsr $42FE.w		; 20 FE 42
	inc $FF52.w,X		; FE 52 FF
	phd		; 0B
	sbc $81FF81.l,X		; FF 81 FF 81
	bra   0.b		; 80 00
	cpy #$6E00.w		; C0 00 6E
	cmp $FFDF7F.l,X		; DF 7F DF FF
	ora $FF5FAC.l,X		; 1F AC 5F FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	lda $CF1FC0.l,X		; BF C0 1F CF
	ora $405F4E.l,X		; 1F 4E 5F 40
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  -1.b		; 80 FF
	sbc $F1FFC7.l,X		; FF C7 FF F1
	brk $09.b		; 00 09
	asl $06.b		; 06 06
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sbc $03FFFF.l,X		; FF FF FF 03
	sbc $000E00.l,X		; FF 00 0E 00
	asl $00.b		; 06 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C040.w		; C0 40 C0
	cpy #$00C0.w		; C0 C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$C0E0.w		; C0 E0 C0
	cpx #$6000.w		; E0 00 60
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0E1504.l		; 0F 04 15 0E
	ora $1A0A.w,X		; 1D 0A 1A
	tsb $0C1A.w		; 0C 1A 0C
	asl $08.b,X		; 16 08
	asl $0000.w		; 0E 00 00
	brk $06.b		; 00 06
	cop $0E.b		; 02 0E
	brk $0E.b		; 00 0E
	tsb $0C.b		; 04 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	adc $1A.b,S		; 63 1A
	eor $18.b,S		; 43 18
	eor $14.b,S		; 43 14
	cmp [$58.b]		; C7 58
	dec $8E08.w		; CE 08 8E
	bne -100.b		; D0 9C
	cpy #$1D1C.w		; C0 1C 1D
	ora ($3C.b,X)		; 01 3C
	brk $3E.b		; 00 3E
	cop $7A.b		; 02 7A
	.db $42, $34		; 42 34
	tsb $F4.b		; 04 F4
	sty $68.b		; 84 68
	php		; 08
	sed		; F8
	clc		; 18
	ora ($87.b,X)		; 01 87
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  24.b		; F0 18
	rts		; 60

	tsb $8CB8.w		; 0C B8 8C
	bvs -58.b		; 70 C6
	mvp $34,$C6		; 44 C6 34
	inc $14.b,X		; F6 14
	inc $14.b,X		; F6 14
	inc $E0.b,X		; F6 E0
	brk $F8.b		; 00 F8
	php		; 08
	bvs   0.b		; 70 00
	ldy $B884.w,X		; BC 84 B8
	bra  72.b		; 80 48
	rti		; 40

	pla		; 68
	rts		; 60

	pla		; 68
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$A000.w		; C0 00 A0
	cpy #$E050.w		; C0 50 E0
	bpl -32.b		; 10 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	jsr $2020.w		; 20 20 20
	jsr $8077.w		; 20 77 80
	sed		; F8
	eor [$E7.b],Y		; 57 E7
	tas		; 1B
	sbc $3FD317.l		; EF 17 D3 3F
	.db $82, $7F, $80		; 82 7F 80
	adc $007689.l,X		; 7F 89 76 00
	brk $77.b		; 00 77
	ora [$6C.b]		; 07 6C
	pla		; 68
	clc		; 18
	bpl  12.b		; 10 0C
	tsb $3939.w		; 0C 39 39
	and ($32.b)		; 32 32
	jsr $8820.w		; 20 20 88
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
	ror $98.b		; 66 98
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne  16.b		; D0 10
	bit $24.b		; 24 24
	mvp $02,$44		; 44 44 02
	cop $20.b		; 02 20
	jsr $9898.w		; 20 98 98
	beq   0.b		; F0 00
	cpy #$0000.w		; C0 00 00
	cpy #$C080.w		; C0 80 C0
	bra -32.b		; 80 E0
	rti		; 40

	rts		; 60

	brk $30.b		; 00 30
	rts		; 60

	bmi -64.b		; 30 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	cpx #$C020.w		; E0 20 C0
	brk $40.b		; 00 40
	clc		; 18
	bvs  24.b		; 70 18
	rts		; 60

	tsb $0C78.w		; 0C 78 0C
	bvs   6.b		; 70 06
	ldy $B886.w,X		; BC 86 B8
	.db $82, $5C, $C3		; 82 5C C3
	beq  16.b		; F0 10
	cpx #$F800.w		; E0 00 F8
	php		; 08
	beq   0.b		; F0 00
	jsr ($7804.w,X)		; FC 04 78
	brk $7C.b		; 00 7C
	brk $BE.b		; 00 BE
	.db $82, $B8, $50		; 82 B8 50
	sed		; F8
	bpl -40.b		; 10 D8
	bmi  -4.b		; 30 FC
	brk $EA.b		; 00 EA
	trb $06DF.w		; 1C DF 06
	ora $000000.l		; 0F 00 00 00
	bvs  32.b		; 70 20
	bmi  32.b		; 30 20
	bmi   0.b		; 30 00
	clc		; 18
	clc		; 18
	trb $0E00.w		; 1C 00 0E
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $F2.b		; E5 F2
	nop		; EA
	beq -34.b		; F0 DE
	cpx #$C0A0.w		; E0 A0 C0
	cpy #$4080.w		; C0 80 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $E2.b		; 00 E2
	plx		; FA
	cpy $F4.b		; C4 F4
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	bra  96.b		; 80 60
	bra -112.b		; 80 90
	rts		; 60

	bcc  96.b		; 90 60
	bvc -96.b		; 50 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rts		; 60

	brk $60.b		; 00 60
	brk $A0.b		; 00 A0
	brk $1C.b		; 00 1C
	and ($0A.b),Y		; 31 0A
	and $74.b,S		; 23 74
	ora [$E8.b]		; 07 E8
	asl $20FE.w		; 0E FE 20
	pea $E848.w		; F4 48 E8
	bvc -48.b		; 50 D0
	ldy #$010F.w		; A0 0F 01
	ora $1A01.w,X		; 1D 01 1A
	cop $14.b		; 02 14
	tsb $60.b		; 04 60
	rti		; 40

	sei		; 78
	bmi -16.b		; 30 F0
	ldy #$40E0.w		; A0 E0 40
	php		; 08
	tda		; 7B
	php		; 08
	tda		; 7B
	bpl 115.b		; 10 73
	bpl 115.b		; 10 73
	bpl 114.b		; 10 72
	bpl 114.b		; 10 72
	bpl 114.b		; 10 72
	bpl 114.b		; 10 72
	rol $32.b,X		; 36 32
	rol $32.b,X		; 36 32
	bit $2C20.w		; 2C 20 2C
	jsr $202C.w		; 20 2C 20
	bit $2C20.w		; 2C 20 2C
	jsr $202C.w		; 20 2C 20
	bpl  50.b		; 10 32
	brk $32.b		; 00 32
	php		; 08
	dec A		; 3A
	php		; 08
	dec A		; 3A
	rol $3E00.w,X		; 3E 00 3E
	tsb $142E.w		; 0C 2E 14
	rol $0C14.w		; 2E 14 0C
	brk $1C.b		; 00 1C
	bpl  20.b		; 10 14
	bpl  20.b		; 10 14
	bpl   0.b		; 10 00
	brk $1C.b		; 00 1C
	bpl  28.b		; 10 1C
	php		; 08
	trb $2E08.w		; 1C 08 2E
	trb $2E.b		; 14 2E
	trb $2E.b		; 14 2E
	trb $2E.b		; 14 2E
	trb $3E.b		; 14 3E
	tsb $36.b		; 04 36
	tsb $003F.w		; 0C 3F 00
	dec A		; 3A
	ora [$1C.b]		; 07 1C
	php		; 08
	trb $1C08.w		; 1C 08 1C
	php		; 08
	trb $0C08.w		; 1C 08 0C
	php		; 08
	tsb $0600.w		; 0C 00 06
	asl $07.b		; 06 07
	brk $02.b		; 00 02
	ora #$020C.w		; 09 0C 02
	asl $09.b,X		; 16 09
	rtl		; 6B

	tsb $6A.b		; 04 6A
	ora $75.b		; 05 75
	asl A		; 0A
	pld		; 2B
	trb $CB.b		; 14 CB
	bit $04.b,X		; 34 04
	ora $00.b		; 05 00
	ora $08.b,S		; 03 08
	ora #$1014.w		; 09 14 10
	ora $30.b,X		; 15 30
	asl A		; 0A
	jsr $0216.w		; 20 16 02
	and $01.b,X		; 35 01
	rol $7EC1.w,X		; 3E C1 7E
	ror $B9B9.w,X		; 7E B9 B9
	cmp [$56.b],Y		; D7 56
	inc $3B29.w		; EE 29 3B
	pei ($FB.b)		; D4 FB
	tsb $FD.b		; 04 FD
	asl A		; 0A
	brk $C1.b		; 00 C1
	brk $FF.b		; 00 FF
	bpl  -1.b		; 10 FF
	lsr $7E.b		; 46 7E
	and #$D538.w		; 29 38 D5
	ora ($AD.b),Y		; 11 AD
	lda #$A5AF.w		; A9 AF A5
	inc A		; 1A
	adc $3A.b,S		; 63 3A
	adc $18.b,S		; 63 18
	eor $3C.b,S		; 43 3C
	cmp [$34.b]		; C7 34
	dec $74.b		; C6 74
	dec $78.b		; C6 78
	dec $8C00.w		; CE 00 8C
	and $1D21.w,X		; 3D 21 1D
	ora ($3E.b,X)		; 01 3E
	cop $7A.b		; 02 7A
	.db $42, $78		; 42 78
	rti		; 40

	sec		; 38
	brk $34.b		; 00 34
	tsb $F8.b		; 04 F8
	dey		; 88
	rol $7AC3.w,X		; 3E C3 7A
	cmp $78.b,S		; C3 78
	cmp $3C.b,S		; C3 3C
	sta [$3C.b]		; 87 3C
	stx $38.b		; 86 38
	stx $38.b		; 86 38
	stx $30.b		; 86 30
	sty $7C.b		; 84 7C
	rti		; 40

	bit $3E00.w,X		; 3C 00 3E
	cop $7A.b		; 02 7A
	cop $78.b		; 02 78
	brk $7C.b		; 00 7C
	tsb $7C.b		; 04 7C
	tsb $78.b		; 04 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($03.b,X)		; 01 03
	ora ($13.b,X)		; 01 13
	ora ($35.b,X)		; 01 35
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $F8.b		; 00 F8
	brk $0E.b		; 00 0E
	beq  31.b		; F0 1F
	cpx $AE.b		; E4 AE
	cmp ($33.b),Y		; D1 33
	cmp $2FCA37.l		; CF 37 CA 2F
	cmp ($00.b),Y		; D1 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	dec $50C8.w		; CE C8 50
	rti		; 40

	sty $84.b		; 84 84
	sta $8E88.w		; 8D 88 8E
	bra  27.b		; 80 1B
	ora #$180A.w		; 09 0A 18
	phd		; 0B
	clc		; 18
	ora $156F1A.l		; 0F 1A 6F 15
	and $452B51.l		; 2F 51 2B 45
	rol $49.b,X		; 36 49
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	ora $01.b		; 05 01
	ora $25.b		; 05 25
	trb $31.b		; 14 31
	brk $29.b		; 00 29
	ror $88.b		; 66 88
	ora $F492.w		; 0D 92 F4
	brk $DF.b		; 00 DF
	cpx #$FEFF.w		; E0 FF FE
	sbc $FEFFFE.l,X		; FF FE FF FE
	cmp $7919F0.l		; CF F0 19 79
	adc ($72.b)		; 72 72
	phd		; 0B
	phd		; 0B
	brk $E0.b		; 00 E0
	cpx #$FEFE.w		; E0 FE FE
	inc $FEC0.w,X		; FE C0 FE
	brk $F0.b		; 00 F0
	sed		; F8
	asl $80.b		; 06 80
	ora ($83.b,X)		; 01 83
	ora [$BF.b]		; 07 BF
	and $49AF2E.l,X		; 3F 2E AF 49
	tya		; 98
	inx		; E8
	inx		; E8
	sed		; F8
	php		; 08
	asl $87.b		; 06 87
	brk $07.b		; 00 07
	ora $3F.b,S		; 03 3F
	rol A		; 2A
	adc $08FF28.l,X		; 7F 28 FF 08
	ldx $FC28.w,Y		; BE 28 FC
	brk $0C.b		; 00 0C
	adc $C342F8.l,X		; 7F F8 42 C3
	ply		; 7A
	cmp $7A.b,S		; C3 7A
	cmp $38.b,S		; C3 38
	sta $38.b,S		; 83 38
	sta $3C.b,S		; 83 3C
	sta [$34.b]		; 87 34
	sta [$00.b]		; 87 00
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $7E.b		; 00 7E
	cop $7E.b		; 02 7E
	cop $7A.b		; 02 7A
	cop $78.b		; 02 78
	brk $F0.b		; 00 F0
	ora ($58.b,S),Y		; 13 58
	cmp $FC.b,S		; C3 FC
	sta [$7C.b]		; 87 7C
	asl $74.b		; 06 74
	asl $74.b		; 06 74
	asl $70.b		; 06 70
	asl $70.b		; 06 70
	asl $0E.b		; 06 0E
	cop $BE.b		; 02 BE
	.db $82, $7A, $02		; 82 7A 02
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	tsb $FC.b		; 04 FC
	tsb $20.b		; 04 20
	cpx $EC28.w		; EC 28 EC
	plp		; 28
	cpx $EC28.w		; EC 28 EC
	sec		; 38
	jsr ($7C18.w,X)		; FC 18 7C
	bpl 124.b		; 10 7C
	tsb $5870.w		; 0C 70 58
	pha		; 48
	bvc  64.b		; 50 40
	bvc  64.b		; 50 40
	bvc  64.b		; 50 40
	rti		; 40

	rti		; 40

	jsr $2820.w		; 20 20 28
	plp		; 28
	bmi  48.b		; 30 30
	jmp ($7C08.w,X)		; 7C 08 7C
	clc		; 18
	jmp $285C28.l		; 5C 28 5C 28
	bit $3C08.w,X		; 3C 08 3C
	php		; 08
	dec A		; 3A
	tsb $0C3A.w		; 0C 3A 0C
	php		; 08
	brk $38.b		; 00 38
	jsr $1038.w		; 20 38 10
	sec		; 38
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	bpl  28.b		; 10 1C
	bpl  28.b		; 10 1C
	bpl   0.b		; 10 00
	beq -92.b		; F0 A4
	sec		; 38
	asl $6604.w		; 0E 04 66
	sei		; 78
	inc $FAF8.w,X		; FE F8 FA
	jsr ($F8F4.w,X)		; FC F4 F8
	sed		; F8
	brk $80.b		; 00 80
	bra -48.b		; 80 D0
	bpl -124.b		; 10 84
	bvs   0.b		; 70 00
	sed		; F8
	bvs  -8.b		; 70 F8
	beq  -4.b		; F0 FC
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	phd		; 0B
	tas		; 1B
	ora ($33.b)		; 12 33
	bit $67.b		; 24 67
	trb $47.b		; 14 47
	bvs -57.b		; 70 C7
	sed		; F8
	stx $0C60.w		; 8E 60 0C
	ora [$04.b]		; 07 04
	tsb $00.b		; 04 00
	ora $1B01.w		; 0D 01 1B
	ora $3B.b,S		; 03 3B
	ora $3E.b,S		; 03 3E
	asl $74.b		; 06 74
	tsb $F8.b		; 04 F8
	php		; 08
	bne  28.b		; D0 1C
	bra  48.b		; 80 30
	cpy #$8060.w		; C0 60 80
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	inx		; E8
	php		; 08
	cpx #$8020.w		; E0 20 80
	brk $40.b		; 00 40
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta [$69.b],Y		; 97 69
	lda $23DF51.l		; AF 51 DF 23
	ror $3E03.w,X		; 7E 03 3E
	ora [$1E.b]		; 07 1E
	ora $07061D.l		; 0F 1D 06 07
	clc		; 18
	adc $5B04.w		; 6D 04 5B
	asl A		; 0A
	tsa		; 3B
	clc		; 18
	and [$34.b],Y		; 37 34
	ora $000F08.l		; 0F 08 0F 00
	ora [$01.b]		; 07 01
	php		; 08
	php		; 08
	lda $6D4B.w,X		; BD 4B 6D
	stp		; DB
	adc $EEDB.w		; 6D DB EE
	eor $DCEF.w,X		; 5D EF DC
	cmp $EEDFEE.l,X		; DF EE DF EE
	inc $EFCD.w,X		; FE CD EF
	ldy $FF.b		; A4 FF
	bit $FF.b		; 24 FF
	bit $FF.b		; 24 FF
	ldx #$22FE.w		; A2 FE 22
	inc $FE10.w,X		; FE 10 FE
	bpl -35.b		; 10 DD
	ora ($70.b),Y		; 11 70
	jmp ($7840.w,X)		; 7C 40 78
	bra  -8.b		; 80 F8
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	dey		; 88
	php		; 08
	bcs  48.b		; B0 30
	bvs 112.b		; 70 70
	rts		; 60

	rts		; 60

	cpy #$80C0.w		; C0 C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	cpy $30.b		; C4 30
	pea $FC08.w		; F4 08 FC
	php		; 08
	jsr ($FE08.w,X)		; FC 08 FE
	tsb $0C7E.w		; 0C 7E 0C
	ror $7B08.w,X		; 7E 08 7B
	sec		; 38
	brk $48.b		; 00 48
	rti		; 40

	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	stz $74.b,X		; 74 74
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	rol $32.b,X		; 36 32
	rol A		; 2A
	ora [$24.b],Y		; 17 24
	ora $181F20.l,X		; 1F 20 1F 18
	ora [$60.b]		; 07 60
	ora $407FB0.l,X		; 1F B0 7F 40
	sbc $01FF40.l,X		; FF 40 FF 01
	ora ($0B.b,X)		; 01 0B
	phd		; 0B
	ora $05.b		; 05 05
	ora $03.b,S		; 03 03
	asl $0E0E.w		; 0E 0E 0E
	asl $3939.w		; 0E 39 39
	ldx #$6EA2.w		; A2 A2 6E
	txy		; 9B
	jmp ($699F.w)		; 6C 9F 69
	stz $9C63.w,X		; 9E 63 9C
	adc [$9A.b]		; 67 9A
	tsa		; 3B
	cmp $31.b		; C5 31
	cmp $5A.b		; C5 5A
	stx $1115.w		; 8E 15 11
	ora ($12.b)		; 12 12
	trb $14.b		; 14 14
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	tsb $05.b		; 04 05
	phd		; 0B
	ora ($01.b,X)		; 01 01
	brk $74.b		; 00 74
	clc		; 18
	ply		; 7A
	trb $385E.w		; 1C 5E 38
	ror $3A18.w,X		; 7E 18 3A
	trb $1E.b		; 14 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	jsr $203C.w		; 20 3C 20
	bit $1C04.w,X		; 3C 04 1C
	tsb $1C.b		; 04 1C
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	asl $02.b		; 06 02
	ora #$0E07.w		; 09 07 0E
	ora ($17.b,X)		; 01 17
	tsb $061D.w		; 0C 1D 06
	rol $3A18.w		; 2E 18 3A
	tsb $305C.w		; 0C 5C 30
	ora ($00.b,X)		; 01 00
	asl $02.b		; 06 02
	ora $05.b		; 05 05
	asl $0E02.w		; 0E 02 0E
	php		; 08
	trb $1C04.w		; 1C 04 1C
	bpl  56.b		; 10 38
	php		; 08
	stz $18.b,X		; 74 18
	clv		; B8
	rts		; 60

	sed		; F8
	jsr $70E8.w		; 20 E8 70
	beq  64.b		; F0 40
	beq  64.b		; F0 40
	bne  96.b		; D0 60
	rts		; 60

	brk $38.b		; 00 38
	jsr $1070.w		; 20 70 10
	bvs  80.b		; 70 50
	bvs   0.b		; 70 00
	rts		; 60

	jsr $2060.w		; 20 60 20
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	bra  96.b		; 80 60
	bvc -32.b		; 50 E0
	ldx $4774.w		; AE 74 47
	lsr $3040.w		; 4E 40 30
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$8090.w		; C0 90 80
	dec A		; 3A
	.db $82, $3F, $80		; 82 3F 80
	dec $9DC1.w		; CE C1 9D
	asl $008E.w		; 0E 8E 00
	rti		; 40

	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	rti		; 40

	ldy #$0040.w		; A0 40 00
	asl $0000.w		; 0E 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $24.b		; 00 24
	cpy #$E41A.w		; C0 1A E4
	sbc ($FC.b)		; F2 FC
	adc ($FE.b,X)		; 61 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$08C0.w		; C0 C0 08
	php		; 08
	stx $96.b,Y		; 96 96
	eor $B9E6.w,Y		; 59 E6 B9
	lsr $CD.b,X		; 56 CD
	tax		; AA
	xce		; FB
	ldy $CA.b		; A4 CA
	stz $98.b,X		; 74 98
	trb $F8.b		; 14 F8
	tsb $0C90.w		; 0C 90 0C
	cop $02.b		; 02 02
	.db $42, $42		; 42 42
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bvs  16.b		; 70 10
	bvs   0.b		; 70 00
	sed		; F8
	php		; 08
	brk $FF.b		; 00 FF
	php		; 08
	sbc [$88.b],Y		; F7 88
	adc [$89.b],Y		; 77 89
	ror $09.b,X		; 76 09
	inc $0A.b,X		; F6 0A
	pea $E814.w		; F4 14 E8
	sec		; 38
	cpy #$E4E4.w		; C0 E4 E4
	stz $64.b		; 64 64
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	cpy #$80C0.w		; C0 C0 80
	bra   0.b		; 80 00
	brk $8D.b		; 00 8D
	ora $8A.b,S		; 03 8A
	ora $B7.b		; 05 B7
	php		; 08
	eor $017F36.l		; 4F 36 7F 01
	tyx		; BB
	sec		; 38
	jsr ($AE45.w,X)		; FC 45 AE
	phk		; 4B
	cop $02.b		; 02 02
	tsb $00.b		; 04 00
	asl $3F06.w		; 0E 06 3F
	ora #$0203.w		; 09 03 02
	clc		; 18
	jmp ($4604.w,X)		; 7C 04 46
	bpl  66.b		; 10 42
	ora ($7C.b,S),Y		; 13 7C
	ora $FE.b,S		; 03 FE
	ora [$EA.b],Y		; 17 EA
	lda $20FE25.l,X		; BF 25 FE 20
	xce		; FB
	brk $BB.b		; 00 BB
	trb $BB.b		; 14 BB
	bvc -28.b		; 50 E4
	rts		; 60

	sbc $040EE1.l		; EF E1 0E 04
	eor $8809.w		; 4D 09 88
	bit #$0604.w		; 89 04 06
	mvn $54,$D6		; 54 D6 54
	dec $00.b		; C6 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
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
	brk $68.b		; 00 68
	bne 104.b		; D0 68
	bne  84.b		; D0 54
	inx		; E8
	ldy $48.b,X		; B4 48
	sed		; F8
	jsr $A8F0.w		; 20 F0 A8
	cpx #$B098.w		; E0 98 B0
	sei		; 78
	bne   0.b		; D0 00
	bne   0.b		; D0 00
	inx		; E8
	brk $E8.b		; 00 E8
	ldy #$90B0.w		; A0 B0 90
	ldy #$9000.w		; A0 00 90
	bpl  64.b		; 10 40
	rti		; 40

	php		; 08
	ora [$10.b]		; 07 10
	ora $110F10.l		; 0F 10 0F 11
	asl $0E51.w		; 0E 51 0E
	.db $62, $1C, $3C		; 62 1C 3C
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $06.b,S		; 03 06
	asl $04.b		; 06 04
	tsb $04.b		; 04 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	cop $07.b		; 02 07
	brk $06.b		; 00 06
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	asl $03.b		; 06 03
	asl $01.b		; 06 01
	tsb $03.b		; 04 03
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	cop $01.b		; 02 01
	brk $03.b		; 00 03
	brk $F6.b		; 00 F6
	and $EE77EE.l		; 2F EE 77 EE
	eor [$6E.b],Y		; 57 6E
	sta $91605F.l,X		; 9F 5F 60 91
	ora $D11ED2.l,X		; 1F D2 1E D1
	trb $507F.w		; 1C 7F 50
	sbc $287F88.l,X		; FF 88 7F 28
	sta $20A080.l,X		; 9F 80 A0 20
	nop		; EA
	asl A		; 0A
	sbc #$EB08.w		; E9 08 EB
	php		; 08
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora $1A00.w		; 0D 00 1A
	ora $10.b		; 05 10
	ora $080F10.l		; 0F 10 0F 08
	ora [$14.b]		; 07 14
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	ora [$01.b]		; 07 01
	ora ($03.b,X)		; 01 03
	ora $0A.b,S		; 03 0A
	asl A		; 0A
	lda ($7E.b,X)		; A1 7E
	cmp $E45F70.l		; CF 70 5F E4
	ora [$E8.b],Y		; 17 E8
	sec		; 38
	cmp [$4C.b]		; C7 4C
	lda $BDAB5F.l,X		; BF 5F AB BD
	eor [$1C.b]		; 47 1C
	trb $2020.w		; 1C 20 20
	asl $C808.w		; 0E 08 C8
	cpy #$8080.w		; C0 80 80
	sta ($93.b,S),Y		; 93 93
	bit $20.b,X		; 34 20
	dec A		; 3A
	cop $10.b		; 02 10
	ora $310F10.l		; 0F 10 0F 31
	asl $3C63.w,X		; 1E 63 3C
	sta [$78.b]		; 87 78
	sta $384470.l		; 8F 70 44 38
	bit $18.b		; 24 18
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	pea $F80D.w		; F4 0D F8
	eor [$FC.b]		; 47 FC
	eor ($FD.b,S),Y		; 53 FD
	pha		; 48
	sbc $003F22.l,X		; FF 22 3F 00
	lsr $5721.w,X		; 5E 21 57
	rol A		; 2A
	phd		; 0B
	ora #$5313.w		; 09 13 53
	cli		; 58
	pha		; 48
	inc A		; 1A
	bvc   8.b		; 50 08
	plp		; 28
	ora $05.b		; 05 05
	brk $18.b		; 00 18
	asl A		; 0A
	inc A		; 1A
	eor $FE1FFC.l		; 4F FC 1F FE
	rol $79D9.w,X		; 3E D9 79
	ldy #$4EFF.w		; A0 FF 4E
	lda ($41.b,X)		; A1 41
	ora $21D1DE.l		; 0F DE D1 21
	stz $BF82.w,X		; 9E 82 BF
	sta ($79.b,X)		; 81 79
	jsr $56F0.w		; 20 F0 56
	inc $AE.b		; E6 AE
	cpy #$069F.w		; C0 9F 06
	rol $CF00.w,X		; 3E 00 CF
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$6000.w		; C0 00 60
	bra -96.b		; 80 A0
	rti		; 40

	beq   0.b		; F0 00
	bcs   0.b		; B0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$4040.w		; C0 40 40
	brk $20.b		; 00 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	rol $F3.b,X		; 36 F3
	asl $71.b,X		; 16 71
	asl A		; 0A
	sec		; 38
	ora $1C.b		; 05 1C
	ora $0E.b,S		; 03 0E
	brk $06.b		; 00 06
	ora ($07.b,X)		; 01 07
	cop $01.b		; 02 01
	jmp $2F40.w		; 4C 40 2F
	and ($17.b,X)		; 21 17
	bpl  11.b		; 10 0B
	php		; 08
	ora $04.b		; 05 04
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	cpy #$B060.w		; C0 60 B0
	brk $F0.b		; 00 F0
	ldy #$0000.w		; A0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$2000.w		; C0 00 20
	brk $7A.b		; 00 7A
	trb $067D.w		; 1C 7D 06
	and $0B1614.l		; 2F 14 16 0B
	phd		; 0B
	ora $05.b		; 05 05
	ora $05.b,S		; 03 05
	cop $02.b		; 02 02
	ora ($1C.b,X)		; 01 1C
	brk $3E.b		; 00 3E
	sec		; 38
	asl $0F0A.w,X		; 1E 0A 0F
	tsb $07.b		; 04 07
	cop $03.b		; 02 03
	brk $03.b		; 00 03
	ora ($01.b,X)		; 01 01
	brk $FE.b		; 00 FE
	iny		; C8
	jsr ($E8C0.w,X)		; FC C0 E8
	pea $0CF0.w		; F4 F0 0C
	rts		; 60

	sed		; F8
	jsr $A038.w		; 20 38 A0
	sec		; 38
	ldy #$EC38.w		; A0 38 EC
	bit $E8.b		; 24 E8
	plp		; 28
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	bcc -112.b		; 90 90
	bne  16.b		; D0 10
	bne  16.b		; D0 10
	bne  16.b		; D0 10
	ldy #$8030.w		; A0 30 80
	bmi -128.b		; 30 80
	bmi -128.b		; 30 80
	bmi -64.b		; 30 C0
	rts		; 60

	rti		; 40

	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	cpy #$E000.w		; C0 00 E0
	jsr $20E0.w		; 20 E0 20
	cpx #$8020.w		; E0 20 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$0A40.w		; C0 40 0A
	adc $24.b,S		; 63 24
	adc [$3C.b]		; 67 3C
	ror $7E3C.w,X		; 7E 3C 7E
	tsb $0C7F.w		; 0C 7F 0C
	adc $0A7B0A.l,X		; 7F 0A 7B 0A
	tsa		; 3B
	bit $1A20.w,X		; 3C 20 1A
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $32.b		; 00 32
	and ($32.b)		; 32 32
	and ($34.b)		; 32 34
	bmi  21.b		; 30 15
	ora ($07.b),Y		; 11 07
	php		; 08
	ora $08.b,S		; 03 08
	tsb $0C.b		; 04 0C
	ora $0F.b,S		; 03 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $81.b		; 00 81
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	tsb $04.b		; 04 04
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	rti		; 40

	rts		; 60

	ldy #$B0B0.w		; A0 B0 B0
	tya		; 98
	clv		; B8
	sty $C658.w		; 8C 58 C6
	bit $C0E6.w		; 2C E6 C0
	rti		; 40

	cpy #$8040.w		; C0 40 80
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $BC.b		; 00 BC
	sty $D8.b		; 84 D8
	cpy #$0C01.w		; C0 01 0C
	ora [$0C.b]		; 07 0C
	ora $18.b,S		; 03 18
	ora $100618.l		; 0F 18 06 10
	asl $1D30.w		; 0E 30 1D
	and ($0C.b),Y		; 31 0C
	and ($07.b,X)		; 21 07
	tsb $03.b		; 04 03
	brk $0F.b		; 00 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora $101F00.l		; 0F 00 1F 10
	asl $1F00.w		; 0E 00 1F
	ora ($A1.b,X)		; 01 A1
	bit $34A3.w,X		; 3C A3 34
	eor $7C.b,S		; 43 7C
	eor [$6C.b]		; 47 6C
	sta [$EC.b]		; 87 EC
	sta $C8.b,S		; 83 C8
	ora $C8.b,S		; 03 C8
	ora [$88.b]		; 07 88
	cmp ($10.b,S),Y		; D3 10
	cmp $00.b,S		; C3 00
	lda [$24.b]		; A7 24
	sta $00.b,S		; 83 00
	eor $40.b,S		; 43 40
	ora [$00.b]		; 07 00
	sta [$80.b]		; 87 80
	ora [$00.b]		; 07 00
	plp		; 28
	ora $501F38.l,X		; 1F 38 1F 50
	and $413E51.l,X		; 3F 51 3E 41
	rol $3E41.w,X		; 3E 41 3E
	and ($1E.b,X)		; 21 1E
	jsr $141F.w		; 20 1F 14
	trb $01.b		; 14 01
	ora ($0A.b,X)		; 01 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	inc A		; 1A
	inc A		; 1A
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	lda $B26F.w,Y		; B9 6F B2
	adc $7AA7.w,X		; 7D A7 7A
	sta $699F72.l		; 8F 72 9F 69
	tax		; AA
	mvn $94,$47		; 54 47 94
	ror A		; 6A
	clv		; B8
	mvn $49,$44		; 54 44 49
	eor #$5050.w		; 49 50 50
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	ora ($14.b),Y		; 11 14
	and $0704.w		; 2D 04 07
	brk $28.b		; 00 28
	bpl -56.b		; 10 C8
	bmi 112.b		; 30 70
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $17.b		; 00 17
	asl $33.b		; 06 33
	tas		; 1B
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $0E.b		; 00 0E
	cop $1F.b		; 02 1F
	ora $3F.b,S		; 03 3F
	eor $106320.l,X		; 5F 20 63 10
	sei		; 78
	ora [$31.b]		; 07 31
	rts		; 60

	ror $E4F0.w,X		; 7E F0 E4
	sed		; F8
	cld		; D8
	rts		; 60

	cpx #$0280.w		; E0 80 02
	inc A		; 1A
	bit $032C.w		; 2C 2C 03
	ora $0E.b,S		; 03 0E
	inc $F420.w		; EE 20 F4
	rti		; 40

	sed		; F8
	brk $60.b		; 00 60
	brk $80.b		; 00 80
	ora [$F2.b]		; 07 F2
	cli		; 58
	and ($88.b,S),Y		; 33 88
	adc $4C.b,S		; 63 4C
	lda [$B1.b]		; A7 B1
	adc [$11.b]		; 67 11
	eor [$1A.b]		; 47 1A
	dec $0DA1.w		; CE A1 0D
	jmp.w [$8ED0]		; DC D0 8E
.INDEX 16
	rep #$5E		; C2 5E
	.db $42, $3A		; 42 3A
	ldx #$051D.w		; A2 1D 05
	bit $7005.w,X		; 3C 05 70
	eor $78.b,S		; 43 78
	phd		; 0B
	beq   0.b		; F0 00
	ldy #$C010.w		; A0 10 C0
	bcc -48.b		; 90 D0
	dey		; 88
	bne -120.b		; D0 88
	plp		; 28
	bcc  52.b		; 90 34
	pha		; 48
	cmp ($A0.b)		; D2 A0
	brk $00.b		; 00 00
	rti		; 40

	rts		; 60

	jsr $20A0.w		; 20 A0 20
	bcs  32.b		; B0 20
	bcs  16.b		; B0 10
	bne   8.b		; D0 08
	iny		; C8
	bit $008C.w		; 2C 8C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	brk $5A.b		; 00 5A
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra  32.b		; 80 20
	cpy #$80E0.w		; C0 E0 80
	ldy #$00C0.w		; A0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	cop $1E.b		; 02 1E
	ora [$1F.b]		; 07 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E8.b		; 00 E8
	bvc -56.b		; 50 C8
	bcs -88.b		; B0 A8
	bne -72.b		; D0 B8
	rti		; 40

	cli		; 58
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	ldy #$40F0.w		; A0 F0 40
	bne   0.b		; D0 00
	cpy #$8080.w		; C0 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	brk $68.b		; 00 68
	bcc -56.b		; 90 C8
	beq -124.b		; F0 84
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $5820.w		; 20 20 58
	cli		; 58
	stz $98.b		; 64 98
	cpx $58.b		; E4 58
	ldy $28.b,X		; B4 28
	cpx $2890.w		; EC 90 28
	bne  96.b		; D0 60
	bvc -24.b		; 50 E8
	bmi  78.b		; 30 4E
	bmi   8.b		; 30 08
	php		; 08
	php		; 08
	php		; 08
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	cpy #$C040.w		; C0 40 C0
	brk $E8.b		; 00 E8
	plp		; 28
	tsa		; 3B
	tas		; 1B
	and [$17.b]		; 27 17
	trb $0B0B.w		; 1C 0B 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0B.b		; 00 0B
	ora $081F07.l,X		; 1F 07 1F 08
	phd		; 0B
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($E0.b,X)		; C1 E0
	inc $3FFF.w,X		; FE FF 3F
	adc $181FE7.l,X		; 7F E7 1F 18
	ora [$07.b]		; 07 07
	brk $02.b		; 00 02
	ora ($05.b,X)		; 01 05
	cop $80.b		; 02 80
	inc $FF3E.w,X		; FE 3E FF
	asl $00FF.w		; 0E FF 00
	ora $000700.l,X		; 1F 00 07 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($E3.b,X)		; 01 E3
	rol $58E7.w		; 2E E7 58
	inc $EF21.w,X		; FE 21 EF
	bvc  95.b		; 50 5F
	lda ($FF.b,X)		; A1 FF
	ora $FF.b		; 05 FF
	ora $FF.b		; 05 FF
	eor $8A98.w		; 4D 98 8A
	bvc  16.b		; 50 10
	and $02.b,S		; 23 02
	eor ($03.b,S),Y		; 53 03
	and $0D8C.w		; 2D 8C 0D
	php		; 08
	adc $6D68.w		; 6D 68 6D
	jsr $20D3.w		; 20 D3 20
	ldx $E450.w		; AE 50 E4
	clc		; 18
	ldy $48.b,X		; B4 48
	sbc ($0C.b)		; F2 0C
	plx		; FA
	bit $FA.b		; 24 FA
	ldy $FC.b		; A4 FC
	bcc  44.b		; 90 2C
	asl $84D0.w		; 0E D0 84
	cli		; 58
	rti		; 40

	pla		; 68
	jsr $A0AC.w		; 20 AC A0
	ldy $90.b,X		; B4 90
	ldy $10.b,X		; B4 10
	tya		; 98
	php		; 08
	jsr $2CE6.w		; 20 E6 2C
	inc $2C.b		; E6 2C
	ror $28.b		; 66 28
	.db $62, $38, $72		; 62 38 72
	clc		; 18
	adc ($18.b)		; 72 18
	and ($10.b)		; 32 10
	and ($5C.b,S),Y		; 33 5C
	mvp $40,$58		; 44 58 40
	clc		; 18
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $2C.b		; 00 2C
	jsr $000C.w		; 20 0C 00
	asl $0402.w		; 0E 02 04
	.db $62, $7E, $00		; 62 7E 00
	ror $3A18.w,X		; 7E 18 3A
	tsb $0C3A.w		; 0C 3A 0C
	dec A		; 3A
	tsb $0C3A.w		; 0C 3A 0C
	and $380E.w,Y		; 39 0E 38
	jsr $0404.w		; 20 04 04
	bit $1C24.w,X		; 3C 24 1C
	bpl  28.b		; 10 1C
	bpl  28.b		; 10 1C
	bpl  28.b		; 10 1C
	bpl  30.b		; 10 1E
	bpl  92.b		; 10 5C
	bmi  92.b		; 30 5C
	plp		; 28
	bit $3C08.w,X		; 3C 08 3C
	php		; 08
	bit $3810.w,X		; 3C 10 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	php		; 08
	sec		; 38
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $3F37.w		; EE 37 3F
	dec $3F.b		; C6 3F
	sed		; F8
	.db $42, $C3		; 42 C3
	ply		; 7A
	cmp $7A.b,S		; C3 7A
	cmp $78.b,S		; C3 78
	cmp $38.b,S		; C3 38
	sta $3F.b,S		; 83 3F
	php		; 08
	lsr $40.b		; 46 40
	rti		; 40

	rti		; 40

	and $3D01.w,X		; 3D 01 3D
	ora ($3D.b,X)		; 01 3D
	ora ($3E.b,X)		; 01 3E
	cop $7E.b		; 02 7E
	cop $FC.b		; 02 FC
	adc ($F6.b,S),Y		; 73 F6
	adc $4213F2.l		; 6F F2 13 42
	cmp $5A.b,S		; C3 5A
	cmp $5A.b,S		; C3 5A
	cmp $5A.b,S		; C3 5A
	cmp $58.b,S		; C3 58
	cmp $F2.b,S		; C3 F2
	.db $82, $E8, $88		; 82 E8 88
	tsb $3C00.w		; 0C 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	cop $28.b		; 02 28
	ora $100F10.l,X		; 1F 10 0F 10
	ora $200F10.l		; 0F 10 0F 20
	ora $513F48.l,X		; 1F 48 3F 51
	rol $3E51.w,X		; 3E 51 3E
	ora $15.b,X		; 15 15
	ora $000D.w		; 0D 0D 00
	brk $04.b		; 00 04
	tsb $0C.b		; 04 0C
	tsb $1010.w		; 0C 10 10
	plp		; 28
	plp		; 28
	plp		; 28
	plp		; 28
	clc		; 18
.ACCU 8
	sep #$2D		; E2 2D
	cmp [$26.b]		; C7 26
	cmp ($65.b,X)		; C1 65
	.db $82, $DB, $04		; 82 DB 04
	lda [$1B.b]		; A7 1B
	sbc $1CDD00.l,X		; FF 00 DD 1C
	sta $80.b		; 85 80
	bra -128.b		; 80 80
	sta ($81.b,X)		; 81 81
	cop $00.b		; 02 00
	ora [$03.b]		; 07 03
	ora $010104.l,X		; 1F 04 01 01
	tsb $FC3E.w		; 0C 3E FC
	stx $48.b		; 86 48
	asl $89.b		; 06 89
	ldx $FF01.w,Y		; BE 01 FF
	phb		; 8B
	adc $DF.b,X		; 75 DF
	ora ($FF.b)		; 12 FF
	bcc  -3.b		; 90 FD
	brk $B8.b		; 00 B8
	bra  -4.b		; 80 FC
	tsb $72.b		; 04 72
	bmi 119.b		; 30 77
	bvs   7.b		; 70 07
	cop $A6.b		; 02 A6
	sty $C4.b		; 84 C4
	mvp $03,$02		; 44 02 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	rti		; 40

	ldy #$6080.w		; A0 80 60
	cpy #$20C0.w		; C0 C0 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	ora $03.b		; 05 03
	and $03.b		; 25 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	pha		; 48
	beq -100.b		; F0 9C
	cpx #$C83F.w		; E0 3F C8
	jmp $9F66A3.l		; 5C A3 66 9F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$40A0.w		; A0 A0 40
	rti		; 40

	stz $A090.w		; 9C 90 A0
	bra   9.b		; 80 09
	ora #$09.b		; 09 09
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
	brk $F0.b		; 00 F0
	stz $1800.w		; 9C 00 18
	cpx #$80F8.w		; E0 F8 80
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	pla		; 68
	php		; 08
	beq  16.b		; F0 10
	bpl  16.b		; 10 10
	rts		; 60

	rts		; 60

	cpx #$C0E0.w		; E0 E0 C0
	cpy #$8080.w		; C0 80 80
	brk $00.b		; 00 00
	trb $1CC6.w		; 1C C6 1C
	dec $1C.b		; C6 1C
	dec $00.b		; C6 00
.ACCU 16
.INDEX 16
	rep #$32		; C2 32
	adc ($08.b,S),Y		; 73 08
	adc $3901.w,Y		; 79 01 39
	tsb $3C.b		; 04 3C
	sei		; 78
	rti		; 40

	sei		; 78
	rti		; 40

	sei		; 78
	rti		; 40

	jmp ($0C40.w,X)		; 7C 40 0C
	brk $36.b		; 00 36
	bmi  30.b		; 30 1E
	clc		; 18
	tas		; 1B
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	tsb $0C.b		; 04 0C
	ora #$0519.w		; 09 19 05
	ora ($1C.b),Y		; 11 1C
	and ($3E.b),Y		; 31 3E
	adc $18.b,S		; 63 18
	eor $74.b,S		; 43 74
	cmp [$38.b]		; C7 38
	stx $0003.w		; 8E 03 00
	asl $00.b		; 06 00
	asl $0F00.w		; 0E 00 0F
	ora ($1D.b,X)		; 01 1D
	ora ($3E.b,X)		; 01 3E
	cop $3A.b		; 02 3A
	cop $74.b		; 02 74
	tsb $00.b		; 04 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora ($04.b,X)		; 01 04
	ora $07.b,S		; 03 07
	brk $0B.b		; 00 0B
	asl $0E.b		; 06 0E
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	cop $07.b		; 02 07
	ora ($07.b,X)		; 01 07
	tsb $F0.b		; 04 F0
	stz $98C0.w		; 9C C0 98
	rts		; 60

	bmi  64.b		; 30 40
	bvs -128.b		; 70 80
	cpx #$C000.w		; E0 00 C0
	cpy #$8000.w		; C0 00 80
	brk $68.b		; 00 68
	php		; 08
	bvs  16.b		; 70 10
	cpy #$A000.w		; C0 00 A0
	jsr $4040.w		; 20 40 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$0C.b],Y		; 17 0C
	ora $2E06.w,X		; 1D 06 2E
	clc		; 18
	dec A		; 3A
	tsb $305C.w		; 0C 5C 30
	jmp ($7410.w,X)		; 7C 10 74
	sec		; 38
	sei		; 78
	jsr $020E.w		; 20 0E 02
	asl $1C08.w		; 0E 08 1C
	tsb $1C.b		; 04 1C
	bpl  56.b		; 10 38
	php		; 08
	sec		; 38
	plp		; 28
	sec		; 38
	brk $30.b		; 00 30
	bpl  60.b		; 10 3C
	sta [$34.b]		; 87 34
	stx $34.b		; 86 34
	stx $30.b		; 86 30
	stx $30.b		; 86 30
	stx $78.b		; 86 78
	stx $8C68.w		; 8E 68 8C
	inx		; E8
	sty $027A.w		; 8C 7A 02
	sei		; 78
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	tsb $7C.b		; 04 7C
	tsb $F4.b		; 04 F4
	sty $F0.b		; 84 F0
	bra 112.b		; 80 70
	brk $58.b		; 00 58
	cmp $58.b,S		; C3 58
.INDEX 16
	rep #$58		; C2 58
.INDEX 16
	rep #$5C		; C2 5C
	dec $5C.b		; C6 5C
	dec $1C.b		; C6 1C
	dec $1C.b		; C6 1C
	dec $1C.b		; C6 1C
	dec $3E.b		; C6 3E
	cop $3C.b		; 02 3C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	rti		; 40

	sei		; 78
	rti		; 40

	sei		; 78
	rti		; 40

	bmi  15.b		; 30 0F
	php		; 08
	ora [$04.b]		; 07 04
	ora $04.b,S		; 03 04
	ora $08.b,S		; 03 08
	ora [$11.b]		; 07 11
	asl $0C12.w		; 0E 12 0C
	ora $0C0C00.l		; 0F 00 0C 0C
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $5B22.w,X		; FE 22 5B
	lda #$9376.w		; A9 76 93
	ldy $11.b,X		; B4 11
	ldy $11.b		; A4 11
	rol A		; 2A
	tas		; 1B
	rol $3911.w		; 2E 11 39
	asl $02.b		; 06 02
	and $04.b,S		; 23 04
	and ($0C.b,X)		; 21 0C
	brk $0E.b		; 00 0E
	brk $1E.b		; 00 1E
	bpl  20.b		; 10 14
	bpl  16.b		; 10 10
	bpl  14.b		; 10 0E
	php		; 08
	eor $5D8A.w,X		; 5D 8A 5D
	tay		; A8
	cmp $1B10.w		; CD 10 1B
	jsr $09FC.w		; 20 FC 09
	asl $09.b,X		; 16 09
	adc $FF9E.w,Y		; 79 9E FF
	bit $6B2A.w,X		; 3C 2A 6B
	rol A		; 2A
	adc $32.b,S		; 63 32
	sbc ($E4.b,S),Y		; F3 E4
	cpx $02.b		; E4 02
	asl A		; 0A
	cpx #$80EA.w		; E0 EA 80
	jmp.w [$3C18]		; DC 18 3C
	bra  96.b		; 80 60
	cpy #$8060.w		; C0 60 80
	jsr $2080.w		; 20 80 20
	bra  32.b		; 80 20
	brk $20.b		; 00 20
	cpy #$C060.w		; C0 60 C0
	ldy #$4040.w		; A0 40 40
	brk $00.b		; 00 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $6A.b		; 00 6A
	ora [$50.b]		; 07 50
	and $847F80.l		; 2F 80 7F 84
	adc $501F68.l,X		; 7F 68 1F 50
	and $A07FB0.l,X		; 3F B0 7F A0
	adc $070101.l,X		; 7F 01 01 07
	ora [$3E.b]		; 07 3E
	rol $0A0A.w,X		; 3E 0A 0A
	ora $15.b,X		; 15 15
	and #$0229.w		; 29 29 02
	cop $52.b		; 02 52
	eor ($6F.b)		; 52 6F
	sta $5E.b,X		; 95 5E
	lda $5C.b,S		; A3 5C
	lda [$59.b],Y		; B7 59
	ldx $BD53.w,Y		; BE 53 BD
	eor [$B9.b]		; 47 B9
	eor $CA37B4.l		; 4F B4 37 CA
	inc A		; 1A
	bpl  29.b		; 10 1D
	ora ($2A.b,X)		; 01 2A
	jsl $282424.l		; 22 24 24 28
	plp		; 28
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	php		; 08
	asl A		; 0A
	sei		; 78
	jsr $3068.w		; 20 68 30
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  16.b		; 30 10
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $01.b		; 06 01
	asl $01.b		; 06 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	eor ($58.b),Y		; 51 58
	sta ($34.b,S),Y		; 93 34
	cmp [$D0.b],Y		; D7 D0
	inc $15.b,X		; F6 15
	dec $EEE5.w,X		; DE E5 EE
	ora $EE.b,X		; 15 EE
	adc $FEED.w,X		; 7D ED FE
	bvc  -2.b		; 50 FE
	asl $7A.b,X		; 16 7A
	lsr $FE.b,X		; 56 FE
	ora [$1A.b]		; 07 1A
	ora $0A1FEA.l		; 0F EA 1F 0A
	sbc $01FF82.l,X		; FF 82 FF 01
	pea $DC08.w		; F4 08 DC
	jsr $A4DA.w		; 20 DA A4
	phx		; DA
	ldy $D5.b,X		; B4 D5
	tsx		; BA
	sbc $FED2.w		; ED D2 FE
	iny		; C8
	jsr ($A8EA.w,X)		; FC EA A8
	ldy #$D0F0.w		; A0 F0 D0
	pea $F450.w		; F4 50 F4
	rti		; 40

	plx		; FA
	rti		; 40

	plx		; FA
	plp		; 28
	cpx $E824.w		; EC 24 E8
	brk $08.b		; 00 08
	cpy $E420.w		; CC 20 E4
	plp		; 28
	cpx $2C.b		; E4 2C
	inc $18.b		; E6 18
	adc ($14.b)		; 72 14
	adc ($06.b)		; 72 06
	and ($08.b,S),Y		; 33 08
	and $C0F0.w,Y		; 39 F0 C0
	cld		; D8
	cpy #$4058.w		; C0 58 40
	cli		; 58
	rti		; 40

	bit $2C20.w		; 2C 20 2C
	jsr $101C.w		; 20 1C 10
	asl $10.b,X		; 16 10
	xce		; FB
	sta [$A3.b]		; 87 A3
	adc [$F7.b],Y		; 77 F7
	tda		; 7B
	sbc [$7B.b],Y		; F7 7B
	ldy $FD7A.w,X		; BC 7A FD
	and $2363.w,Y		; 39 63 23
	eor $07819F.l,X		; 5F 9F 81 07
	ora ($7F.b,X)		; 01 7F
	and ($7B.b,X)		; 21 7B
	bmi 123.b		; 30 7B
	bmi 123.b		; 30 7B
	bpl  59.b		; 10 3B
	sta ($BF.b,X)		; 81 BF
	sty $BF.b,X		; 94 BF
	sbc $849FC8.l,X		; FF C8 9F 84
	lda $7C7AB8.l,X		; BF B8 7A 7C
	sbc ($F8.b)		; F2 F8
	cpx $F0.b		; E4 F0
	txa		; 8A
	cpx $16.b		; E4 16
	dey		; 88
	phx		; DA
	cmp ($84.b)		; D2 84
	cpx #$FA82.w		; E0 82 FA
	bmi  -4.b		; 30 FC
	rts		; 60

	jsr ($F8C0.w,X)		; FC C0 F8
	tsb $F0.b		; 04 F0
	php		; 08
	cpx #$C800.w		; E0 00 C8
	plp		; 28
	cpx $701C.w		; EC 1C 70
	jmp ($7C08.w,X)		; 7C 08 7C
	clc		; 18
	dec A		; 3A
	tsb $182E.w		; 0C 2E 18
	rol $7018.w		; 2E 18 70
	rti		; 40

	bvc  64.b		; 50 40
	jsr $0820.w		; 20 20 08
	brk $38.b		; 00 38
	jsr $101C.w		; 20 1C 10
	trb $1C04.w		; 1C 04 1C
	tsb $74.b		; 04 74
	clc		; 18
	jmp $305C30.l		; 5C 30 5C 30
	dec A		; 3A
	trb $3E.b		; 14 3E
	tsb $0C3F.w		; 0C 3F 0C
	ora $0F0E.w,X		; 1D 0E 0F
	brk $38.b		; 00 38
	jsr $0838.w		; 20 38 08
	sec		; 38
	php		; 08
	trb $1C08.w		; 1C 08 1C
	bpl  30.b		; 10 1E
	ora ($0E.b)		; 12 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $48.b		; 00 48
	bra  52.b		; 80 34
	iny		; C8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx $F8.b		; E4 F8
.ACCU 16
.INDEX 16
	rep #$FC		; C2 FC
	lda ($CC.b)		; B2 CC
	adc ($AC.b)		; 72 AC
	phx		; DA
	trb $F6.b		; 14 F6
	pha		; 48
	sty $E8.b,X		; 94 E8
	bmi  40.b		; 30 28
	bpl  16.b		; 10 10
	bit $042C.w		; 2C 2C 04
	tsb $84.b		; 04 84
	sty $20.b		; 84 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $20E0.w		; 20 E0 20
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	php		; 08
	ora [$10.b]		; 07 10
	ora $010F10.l		; 0F 10 0F 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $06.b,S		; 03 06
	asl $04.b		; 06 04
	tsb $01.b		; 04 01
	inc $DC22.w,X		; FE 22 DC
	and $DC.b,S		; 23 DC
	and ($CC.b,S),Y		; 33 CC
	and ($CC.b,S),Y		; 33 CC
	adc [$98.b]		; 67 98
	lsr $E7A1.w,X		; 5E A1 E7
	brk $98.b		; 00 98
	tya		; 98
	tya		; 98
	tya		; 98
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	ply		; 7A
	asl A		; 0A
	lda #$EB49.w		; A9 49 EB
	pld		; 2B
	inc $2D.b		; E6 2D
	adc $B6.b,S		; 63 B6
	bcs  88.b		; B0 58
	sta ($63.b),Y		; 91 63
	lda $0C017F.l,X		; BF 7F 01 0C
	lsr A		; 4A
	trb $BC88.w		; 1C 88 BC
	lda $BD.b		; A5 BD
	bra  62.b		; 80 3E
	brk $5F.b		; 00 5F
	brk $6F.b		; 00 6F
	brk $7F.b		; 00 7F
	tax		; AA
	rol $C9.b,X		; 36 C9
	sbc $1C.b,X		; F5 1C
	xba		; EB
	rol $9ED5.w,X		; 3E D5 9E
	php		; 08
	clc		; 18
	ldx #$8A5C.w		; A2 5C 8A
	jmp ($D58A.w,X)		; 7C 8A D5
	trb $26.b		; 14 26
	bit $C3.b		; 24 C3
	wai		; CB
	brk $14.b		; 00 14
	rts		; 60

	pla		; 68
	stz $64.b		; 64 64
	plp		; 28
	pla		; 68
	php		; 08
	rts		; 60

	and $02FE.w,X		; 3D FE 02
	cmp $1D.b,S		; C3 1D
	cmp ($5D.b,X)		; C1 5D
	cmp ($5D.b,X)		; C1 5D
	cmp ($5E.b,X)		; C1 5E
	cmp $5E.b,S		; C3 5E
	cmp $5E.b,S		; C3 5E
	cmp $42.b,S		; C3 42
	.db $42, $7D		; 42 7D
	eor ($7E.b,X)		; 41 7E
	rti		; 40

	rol $3E00.w,X		; 3E 00 3E
	brk $3D.b		; 00 3D
	ora ($3D.b,X)		; 01 3D
	ora ($3C.b,X)		; 01 3C
	brk $FF.b		; 00 FF
	rts		; 60

	ldx $7C40.w,Y		; BE 40 7C
	bra  56.b		; 80 38
	jsr ($C440.w,X)		; FC 40 C4
	bvs -60.b		; 70 C4
	bvs -60.b		; 70 C4
	bvs -60.b		; 70 C4
	cpx $688C.w		; EC 8C 68
	plp		; 28
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $B8.b		; 00 B8
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $0D.b		; 00 0D
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
	brk $42.b		; 00 42
	bit $7887.w,X		; 3C 87 78
	lda $75CA76.l		; AF 76 CA 75
	cpy $4973.w		; CC 73 49
	sbc [$00.b],Y		; F7 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	and ($30.b)		; 32 30
	lsr $50.b,X		; 56 50
	bit $20.b		; 24 20
	and ($21.b,X)		; 21 21
	ldx #$00A2.w		; A2 A2 00
	brk $80.b		; 00 80
	brk $F1.b		; 00 F1
	brk $0E.b		; 00 0E
	sbc ($E8.b),Y		; F1 E8
	sbc $1CFBA4.l,X		; FF A4 FB 1C
	sbc $34.b,S		; E3 34
	cmp ($00.b,S),Y		; D3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$1111.w		; E0 11 11
	lsr A		; 4A
	lsr A		; 4A
	lda ($A1.b,X)		; A1 A1
	bit #$0081.w		; 89 81 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $87.b,S		; 03 87
	ora [$8F.b]		; 07 8F
	ora $AF1F9E.l		; 0F 9E 1F AF
	asl $2EF5.w,X		; 1E F5 2E
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	cop $0F.b		; 02 0F
	asl $1F.b		; 06 1F
	tsb $043F.w		; 0C 3F 04
	asl $0E20.w,X		; 1E 20 0E
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	ora $010C00.l		; 0F 00 0C 01
	ora $0A00.w		; 0D 00 0A
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	ora [$02.b]		; 07 02
	asl $05.b		; 06 05
	tsb $27.b		; 04 27
	ora $235F2F.l		; 0F 2F 5F 23
	eor $4C.b,S		; 43 4C
	ldy $03FF.w,X		; BC FF 03
	lda $817E50.l		; AF 50 7E 81
	inc $0D.b,X		; F6 0D
	cmp $DF.b,S		; C3 DF
	cmp $DF.b,S		; C3 DF
	cpy #$84DF.w		; C0 DF 84
	lda $580301.l,X		; BF 01 03 58
	php		; 08
	cmp [$56.b],Y		; D7 56
	lda $0003B2.l,X		; BF B2 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$0E.b],Y		; 17 0E
	rol $5D15.w		; 2E 15 5D
	rol A		; 2A
	plx		; FA
	trb $F4.b		; 14 F4
	plp		; 28
	ldy $68.b,X		; B4 68
	inx		; E8
	bmi 112.b		; 30 70
	cpy #$010F.w		; C0 0F 01
	ora $143E0A.l,X		; 1F 0A 3E 14
	trb $3808.w		; 1C 08 38
	bpl 120.b		; 10 78
	bpl 112.b		; 10 70
	rti		; 40

	cpx #$3120.w		; E0 20 31
	sta [$31.b]		; 87 31
	sta [$88.b]		; 87 88
	stx $7E70.w		; 8E 70 7E
	.db $42, $7E		; 42 7E
	sta $F7.b,S		; 83 F7
	ora $E7.b,S		; 03 E7
	ora $87.b,S		; 03 87
	jmp ($FC04.w,X)		; 7C 04 FC
	sty $73.b		; 84 73
	cop $8B.b		; 02 8B
	asl A		; 0A
	lda ($30.b),Y		; B1 30
	rts		; 60

	rts		; 60

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	rti		; 40

	clc		; 18
	rti		; 40

	bpl -32.b		; 10 E0
	bmi -32.b		; 30 E0
	bmi   0.b		; 30 00
	bmi -64.b		; 30 C0
	beq   0.b		; F0 00
	cpx #$E000.w		; E0 00 E0
	beq  16.b		; F0 10
	cpx #$C000.w		; E0 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $2020.w		; 20 20 20
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$0E11.w		; C0 11 0E
	ora #$4906.w		; 09 06 49
	asl $32.b		; 06 32
	tsb $001C.w		; 0C 1C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta [$00.b]		; 87 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora $04.b,S		; 03 04
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ldx $BF7F.w,Y		; BE 7F BF
	rol $0E0D.w,X		; 3E 0D 0E
	ora ($30.b,X)		; 01 30
	ora $3F1F3F.l,X		; 1F 3F 1F 3F
	ora $3F1F3F.l,X		; 1F 3F 1F 3F
	trb $0C7E.w		; 1C 7E 0C
	ror $7E00.w,X		; 7E 00 7E
	brk $7E.b		; 00 7E
	brk $7F.b		; 00 7F
	asl $0F7F.w		; 0E 7F 0F
	adc $187F0F.l,X		; 7F 0F 7F 18
.INDEX 8
	sep #$14		; E2 14
	rol A		; 2A
	sty $D030.w		; 8C 30 D0
	bit $F8.b		; 24 F8
	stz $F8.b		; 64 F8
	cpx $C0.b		; E4 C0
	cpy #$C0.b		; C0 C0
	cpy #$84.b		; C0 84
	sty $E8.b		; 84 E8
	cpx $D050.w		; EC 50 D0
	php		; 08
	tay		; A8
	brk $68.b		; 00 68
	rti		; 40

	cpx #$C0.b		; E0 C0
	cpx #$80.b		; E0 80
	cpx #$5A.b		; E0 5A
	cmp $78.b,S		; C3 78
	cmp $78.b,S		; C3 78
	cmp $7C.b,S		; C3 7C
	cmp [$7C.b]		; C7 7C
	cmp [$7C.b]		; C7 7C
	cmp [$34.b]		; C7 34
	sta [$30.b]		; 87 30
	sta [$3C.b]		; 87 3C
	brk $3E.b		; 00 3E
	cop $3E.b		; 02 3E
	cop $3A.b		; 02 3A
	cop $3A.b		; 02 3A
	cop $39.b		; 02 39
	ora ($79.b,X)		; 01 79
	ora ($7D.b,X)		; 01 7D
	ora $78.b		; 05 78
	cpy $CC78.w		; CC 78 CC
	bmi -116.b		; 30 8C
	jsr $208C.w		; 20 8C 20
	dey		; 88
	beq -104.b		; F0 98
	beq -104.b		; F0 98
	cpx #$98.b		; E0 98
	bcs -128.b		; B0 80
	bcs -128.b		; B0 80
	sed		; F8
	dey		; 88
	sed		; F8
	dey		; 88
	beq -128.b		; F0 80
	rts		; 60

	brk $60.b		; 00 60
	brk $70.b		; 00 70
	bpl  10.b		; 10 0A
	ora $09.b		; 05 09
	ora [$08.b]		; 07 08
	ora [$06.b]		; 07 06
	ora ($04.b,X)		; 01 04
	ora $1B.b,S		; 03 1B
	ora [$2C.b]		; 07 2C
	ora $003F50.l,X		; 1F 50 3F 00
	brk $02.b		; 00 02
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($04.b,X)		; 01 04
	tsb $12.b		; 04 12
	ora ($08.b)		; 12 08
	php		; 08
	sta ($EE.b,S),Y		; 93 EE
	ora [$EE.b],Y		; 17 EE
	ora ($EE.b,S),Y		; 13 EE
	ora ($EE.b),Y		; 11 EE
	asl $E9.b,X		; 16 E9
	clc		; 18
	sbc $18.b		; E5 18
	sbc $0C.b		; E5 0C
	sbc ($44.b,S),Y		; F3 44
	mvp $C8,$C8		; 44 C8 C8
	pha		; 48
	pha		; 48
	dex		; CA
	dex		; CA
	bra -128.b		; 80 80
	sta $81.b,S		; 83 81
	eor $41.b,S		; 43 41
	cpy #$C0.b		; C0 C0
	ror $8D.b,X		; 76 8D
	plx		; FA
	lda #$2379.w		; A9 79 23
	adc $A204.w,Y		; 79 04 A2
	tya		; 98
	lda $51.b,X		; B5 51
	tax		; AA
	lda $9C.b,S		; A3 9C
	sta $040808.l,X		; 9F 08 08 04
	jsr $20EC.w		; 20 EC 20
	xce		; FB
	brk $67.b		; 00 67
	brk $4E.b		; 00 4E
	rti		; 40

	ora $A2C1.w,X		; 1D C1 A2
.ACCU 16
.INDEX 16
	rep #$FB		; C2 FB
	eor $FE.b,X		; 55 FE
	lda ($FF.b,X)		; A1 FF
	rti		; 40

	eor $FA8B64.l,X		; 5F 64 8B FA
	trb $F7.b		; 14 F7
	tay		; A8
	ror $5C90.w		; 6E 90 5C
	bvc   5.b		; 50 05
	plp		; 28
	ora #$1292.w		; 09 92 12
	lda ($21.b,X)		; A1 21
	mvn $AA,$50		; 54 50 AA
	ldx #$4454.w		; A2 54 44
	pla		; 68
	pha		; 48
	ora $02.b		; 05 02
	phd		; 0B
	tsb $7F.b		; 04 7F
	brk $5F.b		; 00 5F
	and ($7F.b,X)		; 21 7F
	ora [$3F.b]		; 07 3F
	brk $39.b		; 00 39
	asl $38.b		; 06 38
	ora [$03.b]		; 07 03
	ora ($06.b,X)		; 01 06
	cop $0D.b		; 02 0D
	ora $1233.w		; 0D 33 12
	ora $010108.l		; 0F 08 01 01
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	sbc $ED36.w		; ED 36 ED
	lsr $EFDD.w,X		; 5E DD EF
	stp		; DB
	lda $7FBB.w,X		; BD BB 7F
	adc [$FB.b],Y		; 77 FB
	sbc $8F7777.l		; EF 77 77 8F
	adc $A1FF49.l,X		; 7F 49 FF A1
	sbc $42FF10.l,X		; FF 10 FF 42
	sbc $04FF80.l,X		; FF 80 FF 04
	adc $808F08.l,X		; 7F 08 8F 80
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora $1C.b		; 05 1C
	ora [$30.b],Y		; 17 30
	rol $7A60.w		; 2E 60 7A
	cmp $F4.b,S		; C3 F4
	sta [$C8.b]		; 87 C8
	asl $0000.w		; 0E 00 00
	cop $02.b		; 02 02
	ora $00.b,S		; 03 00
	ora $001F00.l		; 0F 00 1F 00
	and $7A01.w,X		; 3D 01 7A
	cop $F4.b		; 02 F4
	tsb $03.b		; 04 03
	asl $06.b		; 06 06
	tsb $0119.w		; 0C 19 01
	rol $7F17.w,X		; 3E 17 7F
	clc		; 18
	inc $7430.w,X		; FE 30 74
	inx		; E8
	inx		; E8
	bvc   1.b		; 50 01
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	brk $11.b		; 00 11
	ora ($38.b,X)		; 01 38
	jsr $4C7C.w		; 20 7C 4C
	sed		; F8
	bpl -16.b		; 10 F0
	ldy #$030E.w		; A0 0E 03
	ora [$0C.b],Y		; 17 0C
	ora $0E.b,X		; 15 0E
	asl $0C.b,X		; 16 0C
	asl $0E04.w,X		; 1E 04 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	tsb $0E.b		; 04 0E
	cop $0E.b		; 02 0E
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	cpy #$C0E0.w		; C0 E0 C0
	cpx #$A0C0.w		; E0 C0 A0
	cpy #$00C0.w		; C0 C0 00
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $3D30.w,X		; 1E 30 3D
	adc ($72.b,X)		; 61 72
	cmp $E8.b,S		; C3 E8
	sta $401E90.l		; 8F 90 1E 40
	sei		; 78
	bra -16.b		; 80 F0
	cpy #$0F00.w		; C0 00 0F
	brk $1E.b		; 00 1E
	brk $3D.b		; 00 3D
	ora ($76.b,X)		; 01 76
	asl $E8.b		; 06 E8
	php		; 08
	bcs  48.b		; B0 30
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	ora $1C0A0E.l		; 0F 0E 0A 1C
	inc A		; 1A
	clc		; 18
	rol $38.b,X		; 36 38
	ply		; 7A
	stz $EA.b,X		; 74 EA
	pea $E8F4.w		; F4 F4 E8
	jmp.w [$00E8]		; DC E8 00
	rol $3D00.w,X		; 3E 00 3D
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	jsr $40F4.w		; 20 F4 40
	pea $E8C0.w		; F4 C0 E8
	bra -24.b		; 80 E8
	clc		; 18
	and $087F18.l,X		; 3F 18 7F 08
	adc $146634.l		; 6F 34 66 14
	lsr $34.b		; 46 34
	lsr $30.b		; 46 30
	lsr $30.b		; 46 30
	lsr $06.b		; 46 06
	asl $26.b		; 06 26
	rol $34.b		; 26 34
	bit $18.b		; 24 18
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $3C.b		; 04 3C
	tsb $30.b		; 04 30
	lsr $10.b		; 46 10
	mvp $44,$10		; 44 10 44
	bmi 100.b		; 30 64
	sec		; 38
	jmp ($6C28.w)		; 6C 28 6C
	jmp ($7C00.w,X)		; 7C 00 7C
	clc		; 18
	bit $3804.w,X		; 3C 04 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	jsr $305C.w		; 20 5C 30
	jmp $305C30.l		; 5C 30 5C 30
	jmp $305C30.l		; 5C 30 5C 30
	jmp $2C5A30.l		; 5C 30 5A 2C
	ror $3808.w,X		; 7E 08 38
	php		; 08
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
	bit $1C10.w,X		; 3C 10 1C
	trb $6E.b		; 14 6E
	trb $76.b		; 14 76
	tsb $0C77.w		; 0C 77 0C
	ora $070B02.l		; 0F 02 0B 07
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $0C08.w		; 1C 08 0C
	brk $0E.b		; 00 0E
	cop $06.b		; 02 06
	tsb $07.b		; 04 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	clc		; 18
	plp		; 28
	bit $3632.w		; 2C 32 36
	phy		; 5A
	phy		; 5A
	sec		; 38
	bit $7C7A.w,X		; 3C 7A 7C
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	php		; 08
	ror $FF02.w,X		; 7E 02 FF
	bvc  -1.b		; 50 FF
	clc		; 18
	inc $FC08.w,X		; FE 08 FC
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$6060.w		; E0 60 60
	bra -96.b		; 80 A0
	bne  64.b		; D0 40
	beq  32.b		; F0 20
	cpx #$E0F8.w		; E0 F8 E0
	sed		; F8
	cpy #$40F0.w		; C0 F0 40
	beq   0.b		; F0 00
	beq -128.b		; F0 80
	beq  64.b		; F0 40
	rts		; 60

	ldy #$F0A0.w		; A0 A0 F0
	bra -48.b		; 80 D0
	ldy #$A0D0.w		; A0 D0 A0
	bne  32.b		; D0 20
	bcs  64.b		; B0 40
	inx		; E8
	bpl -24.b		; 10 E8
	bpl  -8.b		; 10 F8
	brk $80.b		; 00 80
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	bra  64.b		; 80 40
	brk $50.b		; 00 50
	rti		; 40

	bvc  64.b		; 50 40
	bvc  80.b		; 50 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	phd		; 0B
	ora $07.b		; 05 07
	brk $05.b		; 00 05
	ora $7016.w,X		; 1D 16 70
	tas		; 1B
	sta $EC.b,S		; 83 EC
	ora $E1BFF0.l		; 0F F0 BF E1
	jmp $000100.l		; 5C 00 01 00
	brk $02.b		; 00 02
	brk $0F.b		; 00 0F
	brk $7C.b		; 00 7C
	brk $73.b		; 00 73
	ora $8C.b,S		; 03 8C
	tsb $1050.w		; 0C 50 10
	lda $D15EA2.l,X		; BF A2 5E D1
	cmp [$51.b],Y		; D7 51
	cmp [$54.b]		; C7 54
	ora [$A8.b]		; 07 A8
	asl $1FD8.w		; 0E D8 1F
	sei		; 78
	ror $AEF9.w,X		; 7E F9 AE
	cpx $F657.w		; EC 57 F6
	eor $7A.b,S		; 43 7A
	brk $7C.b		; 00 7C
	bra  -8.b		; 80 F8
	ora ($3B.b,X)		; 01 3B
	php		; 08
	xce		; FB
	and $90FB.w,Y		; 39 FB 90
	jsr $20D8.w		; 20 D8 20
	jsr ($FC00.w,X)		; FC 00 FC
	bra -34.b		; 80 DE
	brk $F4.b		; 00 F4
	cop $7C.b		; 02 7C
	jsl $C08A74.l		; 22 74 8A C0
	bra  80.b		; 80 50
	bvc  88.b		; 50 58
	clc		; 18
	tay		; A8
	php		; 08
	jsr $0800.w		; 20 00 08
	php		; 08
	ldy #$A8A8.w		; A0 A8 A8
	tay		; A8
	sbc $756E.w		; ED 6E 75
	sty $BB.b,X		; 94 BB
	lsr A		; 4A
	dec $DFA5.w,X		; DE A5 DF
	bcs -33.b		; B0 DF
	bcs -17.b		; B0 EF
	cld		; D8
	sbc $7E24DE.l		; EF DE 24 7E
	bcc  30.b		; 90 1E
	cpy #$F18E.w		; C0 8E F1
	mvn $4A,$FA		; 54 FA 4A
	plx		; FA
	lsr A		; 4A
	sbc $FE25.w,X		; FD 25 FE
	jsr $0205.w		; 20 05 02
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	bra -32.b		; 80 E0
	brk $F0.b		; 00 F0
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	rti		; 40

	jsr $0320.w		; 20 20 03
	brk $05.b		; 00 05
	ora $06.b,S		; 03 06
	ora $08.b,S		; 03 08
	ora [$08.b]		; 07 08
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$14.b]		; 07 14
	ora $020000.l		; 0F 00 00 02
	cop $00.b		; 02 00
	brk $06.b		; 00 06
	asl $04.b		; 06 04
	tsb $00.b		; 04 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $E0.b		; 02 E0
	brk $3F.b		; 00 3F
	cpy #$57F8.w		; C0 F8 57
	sbc $8F7F16.l		; EF 16 7F 8F
	lsr $BF.b		; 46 BF
	cpy #$C33F.w		; C0 3F C3
	bit $0000.w,X		; 3C 00 00
	bra -128.b		; 80 80
	ror $06.b,X		; 76 06
	adc #$1060.w		; 69 60 10
	brk $19.b		; 00 19
	ora $3434.w,Y		; 19 34 34
	jsr $5420.w		; 20 20 54
	sec		; 38
	sty $78.b,X		; 94 78
	ldy $BC50.w,X		; BC 50 BC
	pha		; 48
	cpx $1E18.w		; EC 18 1E
	tsb $17.b		; 04 17
	asl A		; 0A
	ora $003800.l		; 0F 00 38 00
	sei		; 78
	brk $58.b		; 00 58
	php		; 08
	cli		; 58
	bpl  24.b		; 10 18
	brk $0C.b		; 00 0C
	php		; 08
	asl $0004.w		; 0E 04 00
	brk $1C.b		; 00 1C
	and [$1C.b]		; 27 1C
	adc [$34.b]		; 67 34
	ror $30.b		; 66 30
	ror $18.b		; 66 18
	lsr $4C18.w		; 4E 18 4C
	bpl  76.b		; 10 4C
	rts		; 60

	ldy $021A.w		; AC 1A 02
	dec A		; 3A
	jsl $1C0018.l		; 22 18 00 1C
	tsb $34.b		; 04 34
	tsb $30.b		; 04 30
	brk $38.b		; 00 38
	php		; 08
	clc		; 18
	php		; 08
	asl $0E0C.w		; 0E 0C 0E
	trb $1C09.w		; 1C 09 1C
	ora $0F091F.l		; 0F 1F 09 0F
	ora #$0F0F.w		; 09 0F 0F
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	trb $3C00.w		; 1C 00 3C
	brk $3E.b		; 00 3E
	ora $1F003F.l		; 0F 3F 00 1F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0A3510.l		; 0F 10 35 0A
	cmp $BF02.w,X		; DD 02 BF
	brk $D6.b		; 00 D6
	ora #$03BE.w		; 09 BE 03
	ror $6E13.w		; 6E 13 6E
	ora ($00.b,S),Y		; 13 00
	brk $0A.b		; 00 0A
	php		; 08
	jsl $624230.l		; 22 30 42 62
	pld		; 2B
	jsl $17080B.l		; 22 0B 08 17
	tsb $37.b		; 04 37
	bit $6E.b		; 24 6E
	ora $5D.b,X		; 15 5D
	rol $3F.b		; 26 3F
	ora $041F.w		; 0D 1F 04
	ora $000100.l		; 0F 00 01 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	and [$22.b],Y		; 37 22
	and $101D09.l		; 2F 09 1D 10
	ora $0009.w		; 0D 09 00
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
	ora ($07.b,X)		; 01 07
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $32.b		; 00 32
	sbc $EB2D.w,X		; FD 2D EB
	and $503FE4.l,X		; 3F E4 3F 50
	bit $7360.w,X		; 3C 60 73
	cmp $CC.b,S		; C3 CC
	sta $4C3C33.l		; 8F 33 3C 4C
	jmp $4252.w		; 4C 52 42
	eor $40.b,S		; 43 40
	ora $001F00.l		; 0F 00 1F 00
	bit $7300.w,X		; 3C 00 73
	ora $CC.b,S		; 03 CC
	tsb $E33A.w		; 0C 3A E3
	tsb $07.b		; 04 07
	cld		; D8
	asl $7C60.w,X		; 1E 60 7C
	bra  -8.b		; 80 F8
	brk $F0.b		; 00 F0
	bra  64.b		; 80 40
	brk $C0.b		; 00 C0
	jmp $02FA40.l		; 5C 40 FA 02
	cpx $04.b		; E4 04
	tya		; 98
	clc		; 18
	bvs 112.b		; 70 70
	cpy #$00C0.w		; C0 C0 00
	brk $80.b		; 00 80
	bra   7.b		; 80 07
	brk $0A.b		; 00 0A
	ora [$0F.b]		; 07 0F
	ora [$07.b]		; 07 07
	ora $0E0F0F.l		; 0F 0F 0F 0E
	ora $0D0E0F.l		; 0F 0F 0E 0D
	asl $0000.w		; 0E 00 00
	brk $07.b		; 00 07
	cop $07.b		; 02 07
	asl $1F.b		; 06 1F
	asl $1F.b		; 06 1F
	tsb $1F.b		; 04 1F
	tsb $1E.b		; 04 1E
	tsb $F11E.w		; 0C 1E F1
	bra -30.b		; 80 E2
	ora ($5E.b,X)		; 01 5E
	sta ($4A.b,X)		; 81 4A
	sta $8A.b,X		; 95 8A
	ora ($8A.b),Y		; 11 8A
	ora ($0A.b),Y		; 11 0A
	trb $04.b		; 14 04
	ora ($A0.b,S),Y		; 13 A0
	jsr $4140.w		; 20 40 41
	brk $81.b		; 00 81
	tsb $8D.b		; 04 8D
	tsb $0D.b		; 04 0D
	tsb $0D.b		; 04 0D
	tsb $0D.b		; 04 0D
	php		; 08
	phd		; 0B
	adc $800C78.l,X		; 7F 78 0C 80
	xce		; FB
	cpx #$F0FC.w		; E0 FC F0
	sbc $FDFEF8.l,X		; FF F8 FE FD
	ror $9F7F.w,X		; 7E 7F 9F
	stz $FB18.w,X		; 9E 18 FB
	ora $F3.b,S		; 03 F3
	tsb $EC.b		; 04 EC
	adc $F7.b,S		; 63 F7
	bvs  -6.b		; 70 FA
	sei		; 78
	sbc $FF1C.w,X		; FD 1C FF
	tsb $6EFE.w		; 0C FE 6E
	ora $EC.b,S		; 03 EC
	ora ($5B.b,X)		; 01 5B
	lda ($CA.b,X)		; A1 CA
	brk $6D.b		; 00 6D
	sty $B3.b		; 84 B3
	ora $0A87.w		; 0D 87 0A
	ora $989000.l		; 0F 00 90 98
	ora ($18.b)		; 12 18
	ldx $A0.b		; A6 A0
	and [$30.b],Y		; 37 30
	ora ($B0.b)		; 12 B0
	ora $04.b		; 05 04
	cop $00.b		; 02 00
	cop $02.b		; 02 02
	sbc $EFF3F0.l,X		; FF F0 F3 EF
	xba		; EB
	tya		; 98
	cmp [$30.b],Y		; D7 30
	and ($F0.b,S),Y		; 33 F0
	stx $617E.w		; 8E 7E 61
	sta $F0E31C.l,X		; 9F 1C E3 F0
	brk $EC.b		; 00 EC
	tsb $50D7.w		; 0C D7 50
	and $C0CF20.l		; 2F 20 CF C0
	adc ($70.b),Y		; 71 70
	stz $E39E.w,X		; 9E 9E E3
	sbc $E8.b,S		; E3 E8
	bpl -56.b		; 10 C8
	beq -48.b		; F0 D0
	clc		; 18
	inx		; E8
	tsb $06F4.w		; 0C F4 06
	sei		; 78
	cop $B8.b		; 02 B8
	sta $5A.b,S		; 83 5A
	cmp $10.b,S		; C3 10
	brk $20.b		; 00 20
	jsr $00E0.w		; 20 E0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $7E.b		; 00 7E
	cop $BC.b		; 02 BC
	bra  80.b		; 80 50
	ora $401F68.l		; 0F 68 1F 40
	and $600F30.l,X		; 3F 30 0F 60
	ora $463E41.l,X		; 1F 41 3E 46
	and $324D.w,Y		; 39 4D 32
	asl $160E.w		; 0E 0E 16
	asl $36.b,X		; 16 36
	rol $0C.b,X		; 36 0C
	tsb $1818.w		; 0C 18 18
	clc		; 18
	clc		; 18
	and ($30.b),Y		; 31 30
	bmi  50.b		; 30 32
	cmp $2A.b,X		; D5 2A
	dec $7534.w		; CE 34 75
	phb		; 8B
	adc ($81.b,S),Y		; 73 81
	plb		; AB
	clc		; 18
	sbc $1C.b		; E5 1C
	pld		; 2B
	cmp $22E714.l,X		; DF 14 E7 22
	jsl $140100.l		; 22 00 01 14
	ora ($1F.b,X)		; 01 1F
	ora ($07.b,X)		; 01 07
	brk $0B.b		; 00 0B
	php		; 08
	pei ($14.b)		; D4 14
	inx		; E8
	brk $03.b		; 00 03
	sta $80.b,S		; 83 80
	asl $C7.b		; 06 C7
	ora $F37077.l		; 0F 77 70 F3
	jsr ($F0EC.w,X)		; FC EC F0
	bvc -32.b		; 50 E0
	cpx #$0100.w		; E0 00 01
	ora [$00.b]		; 07 00
	ora $30BF83.l		; 0F 83 BF 30
	sed		; F8
	rts		; 60

	jsr ($F040.w,X)		; FC 40 F0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	ora $1A02.w,X		; 1D 02 1A
	tsb $0C1A.w		; 0C 1A 0C
	trb $1C00.w		; 1C 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	tsb $000C.w		; 0C 0C 00
	tsb $0800.w		; 0C 00 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $37.b		; 14 37
	brk $67.b		; 00 67
	jsr $1867.w		; 20 67 18
	cmp $78CE78.l		; CF 78 CE 78
	dec $8E28.w		; CE 28 8E
	plp		; 28
	sty $020A.w		; 8C 0A 02
	rol $1E26.w,X		; 3E 26 1E
	asl $76.b		; 06 76
	lsr $34.b		; 46 34
	tsb $34.b		; 04 34
	tsb $74.b		; 04 74
	tsb $70.b		; 04 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	trb $3404.w		; 1C 04 34
	tsa		; 3B
	ply		; 7A
	lda $9A82.w,Y		; B9 82 9A
	cpx $64.b		; E4 64
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	trb $3E08.w		; 1C 08 3E
	tsb $7E.b		; 04 7E
	clc		; 18
	inc $C680.w,X		; FE 80 C6
	brk $E4.b		; 00 E4
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$01.b]		; 07 01
	ora $152E02.l,X		; 1F 02 2E 15
	and $3A0A.w,X		; 3D 0A 3A
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora $1F.b		; 05 1F
	asl A		; 0A
	asl $1C04.w		; 0E 04 1C
	php		; 08
	ror $F917.w,X		; 7E 17 F9
	rol $F6.b,X		; 36 F6
	pha		; 48
	cpy $B0B0.w		; CC B0 B0
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $31.b		; 00 31
	and ($76.b,X)		; 21 76
	lsr $F8.b		; 46 F8
	bcs -16.b		; B0 F0
	rti		; 40

	cpy #$8080.w		; C0 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6C.b		; 00 6C
	stz $76B4.w,X		; 9E B4 76
	tsb $C6.b		; 04 C6
	bit $E6.b		; 24 E6
	bit $E6.b		; 24 E6
	bit $E6.b		; 24 E6
	jsr $08E6.w		; 20 E6 08
	dec $9090.w		; CE 90 90
	pha		; 48
	rti		; 40

	sei		; 78
	rti		; 40

	cli		; 58
	rti		; 40

	cli		; 58
	rti		; 40

	cli		; 58
	rti		; 40

	jmp $447444.l		; 5C 44 74 44
	and $1C2E00.l,X		; 3F 00 2E 1C
	rol $2E18.w		; 2E 18 2E
	clc		; 18
	rol A		; 2A
	trb $285C.w		; 1C 5C 28
	jmp $305C28.l		; 5C 28 5C 30
	bpl  16.b		; 10 10
	trb $1C00.w		; 1C 00 1C
	tsb $1C.b		; 04 1C
	tsb $1C.b		; 04 1C
	brk $38.b		; 00 38
	bpl  56.b		; 10 38
	bpl  56.b		; 10 38
	php		; 08
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	inx		; E8
	bpl -56.b		; 10 C8
	bvs   4.b		; 70 04
	sed		; F8
	.db $62, $9C, $D2		; 62 9C D2
	bit $A876.w		; 2C 76 A8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$8820.w		; A0 20 88
	dey		; 88
	php		; 08
	php		; 08
	jsr $8020.w		; 20 20 80
	bra -20.b		; 80 EC
	bvs -68.b		; 70 BC
	rts		; 60

	tya		; 98
	jsr $B020.w		; 20 20 B0
	cpy #$2010.w		; C0 10 20
	beq  64.b		; F0 40
	rts		; 60

	brk $C0.b		; 00 C0
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	rts		; 60

	jsr $00C0.w		; 20 C0 00
	cpx #$C000.w		; E0 00 C0
	cpy #$0080.w		; C0 80 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	asl $01.b		; 06 01
	ora #$0A07.w		; 09 07 0A
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $05.b		; 02 05
	ora $07.b		; 05 07
	ora [$06.b]		; 07 06
	asl $21.b		; 06 21
	ora $C01F22.l,X		; 1F 22 1F C0
	and $80FF00.l,X		; 3F 00 FF 80
	sbc $1DF807.l,X		; FF 07 F8 1D
.ACCU 8
.INDEX 8
	sep #$33		; E2 33
	cpy $0E0E.w		; CC 0E 0E
	ora $1F0D.w		; 0D 0D 1F
	ora $4CF7F7.l,X		; 1F F7 F7 4C
	jmp $B0B0.w		; 4C B0 B0
	eor $41.b,S		; 43 41
	ora $F20D03.l		; 0F 03 0D F2
	ora $E01FF1.l		; 0F F1 1F E0
	and $807FC0.l,X		; 3F C0 7F 80
	sbc $01FF01.l,X		; FF 01 FF 01
	sbc $C0C003.l,X		; FF 03 C0 C0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	adc $FEFF7E.l,X		; 7F 7E FF FE
	sbc $8000FC.l,X		; FF FC 00 80
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	bne -112.b		; D0 90
	inx		; E8
	tay		; A8
	inx		; E8
	plp		; 28
	pla		; 68
	tax		; AA
	clv		; B8
	rol A		; 2A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$D0.b		; C0 D0
	bra  56.b		; 80 38
	ldy #$3C.b		; A0 3C
	tay		; A8
	ldy $3CA8.w,X		; BC A8 3C
	brk $6C.b		; 00 6C
	asl $08.b,X		; 16 08
	tsa		; 3B
	tsb $6D.b		; 04 6D
	bpl 127.b		; 10 7F
	tsb $7D.b		; 04 7D
	ora $3B197F.l		; 0F 7F 19 3B
	ora [$17.b]		; 07 17
	phd		; 0B
	ora ($07.b,X)		; 01 07
	trb $17.b		; 14 17
	and ($22.b)		; 32 22
	and $1F29.w		; 2D 29 1F
	bpl  59.b		; 10 3B
	jsl $0F1017.l		; 22 17 10 0F
	tsb $71.b		; 04 71
	php		; 08
	xba		; EB
	bvc -36.b		; 50 DC
	pla		; 68
	dec $DFE9.w,X		; DE E9 DF
	ldy $BDDE.w,X		; BC DE BD
	ldx $FFDD.w,Y		; BE DD FF
	stz $AFAE.w		; 9C AE AF
	stz $27.b,X		; 74 27
	xce		; FB
	sta ($FD.b,S),Y		; 93 FD
	ora $FE.b,X		; 15 FE
	.db $42, $FF		; 42 FF
	.db $42, $FF		; 42 FF
	jsl $0022BE.l		; 22 BE 22 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	ora $4A.b,S		; 03 4A
	ora [$CF.b]		; 07 CF
	ora [$B9.b]		; 07 B9
	eor $007F81.l		; 4F 81 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $06.b		; 00 06
	asl $3E.b		; 06 3E
	rol $0000.w,X		; 3E 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	bpl -32.b		; 10 E0
	trb $92E0.w		; 1C E0 92
	cpx $EE91.w		; EC 91 EE
	and $DA.b		; 25 DA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	pha		; 48
	pha		; 48
	tsb $9A0C.w		; 0C 0C 9A
	txs		; 9A
	ora $053F.w		; 0D 3F 05
	ora $051F05.l,X		; 1F 05 1F 05
	ora $000F01.l		; 0F 01 0F 00
	asl $0E00.w		; 0E 00 0E
	brk $1E.b		; 00 1E
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	ora $04.b		; 05 04
	ora $04.b		; 05 04
	phd		; 0B
	asl A		; 0A
	inx		; E8
	tsb $0CE0.w		; 0C E0 0C
	beq  28.b		; F0 1C
	beq  24.b		; F0 18
	bne  24.b		; D0 18
	cpy #$18.b		; C0 18
	cpy #$18.b		; C0 18
	cpx #$30.b		; E0 30
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	inx		; E8
	php		; 08
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	and $3167.w,X		; 3D 67 31
	adc [$10.b]		; 67 10
	eor [$78.b]		; 47 78
	ora $7C3578.l		; 0F 78 35 7C
	ora ($74.b),Y		; 11 74
	ora $1974.w,Y		; 19 74 19
	clc		; 18
	brk $1C.b		; 00 1C
	tsb $3D.b		; 04 3D
	ora $05.b		; 05 05
	ora $30.b		; 05 30
	brk $38.b		; 00 38
	plp		; 28
	sec		; 38
	jsr $2038.w		; 20 38 20
	cpx #$18.b		; E0 18
	beq  24.b		; F0 18
	bvs  24.b		; 70 18
	rts		; 60

	php		; 08
	rts		; 60

	php		; 08
	bvc  24.b		; 50 18
	bne -104.b		; D0 98
	bne -104.b		; D0 98
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	rts		; 60

	brk $60.b		; 00 60
	brk $0F.b		; 00 0F
	ora $1B033F.l		; 0F 3F 03 1B
	bit $1A.b		; 24 1A
	jsr $211A.w		; 20 1A 21
	ora ($25.b)		; 12 25
	sbc $46A100.l,X		; FF 00 A1 46
	ora [$1F.b]		; 07 1F
	ora $03.b,S		; 03 03
	tsb $1C.b		; 04 1C
	ora $1D.b		; 05 1D
	ora $1D.b		; 05 1D
	ora $001D.w		; 0D 1D 00
	brk $5C.b		; 00 5C
	jmp ($FCFA.w,X)		; 7C FA FC
	inc $DEC0.w,X		; FE C0 DE
	brk $BD.b		; 00 BD
	cop $BF.b		; 02 BF
	brk $9D.b		; 00 9D
	.db $42, $E5		; 42 E5
	ora ($1F.b)		; 12 1F
	cpx #$F0.b		; E0 F0
	jsr ($C0C0.w,X)		; FC C0 C0
	jsr $4038.w		; 20 38 40
	ply		; 7A
	rti		; 40

	sei		; 78
	.db $62, $78, $1A		; 62 78 1A
	clc		; 18
	.db $62, $62, $00		; 62 62 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	ora $05.b,S		; 03 05
	ora $05.b,S		; 03 05
	ora $04.b,S		; 03 04
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $02.b		; 02 02
	cop $01.b		; 02 01
	ora ($D0.b,X)		; 01 D0
	jsr $2050.w		; 20 50 20
	beq   0.b		; F0 00
	inx		; E8
	bpl -88.b		; 10 A8
	bne -12.b		; D0 F4
	dey		; 88
	pea $D488.w		; F4 88 D4
	tay		; A8
	jsr $A080.w		; 20 80 A0
	bra  32.b		; 80 20
	jsr $2030.w		; 20 30 20
	bne   0.b		; D0 00
	cld		; D8
	bvc -40.b		; 50 D8
	bvc -24.b		; 50 E8
	rti		; 40

	tsb $03.b		; 04 03
	bit $03.b		; 24 03
	clc		; 18
	ora [$0F.b]		; 07 0F
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
	brk $23.b		; 00 23
	jmp.w [$9967]		; DC 67 99
	sbc $BE12.w		; ED 12 BE
	ora ($05.b,X)		; 01 05
	ora $02.b,S		; 03 02
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($1F.b,X)		; 01 1F
	ora $1F.b,S		; 03 1F
	asl $1E.b		; 06 1E
	tsb $0100.w		; 0C 00 01
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	sbc $FFFE0E.l,X		; FF 0E FE FF
	sbc $E11E16.l		; EF 16 1E E1
	sbc $0000FF.l,X		; FF FF 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFF1.l,X		; FF F1 FF 00
	asl $0008.w,X		; 1E 08 00
	sbc ($00.b,X)		; E1 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $D0FFFE.l,X		; FF FE FF D0
	jsl $A05EAC.l		; 22 AC 5E A0
	jmp $40C0A0.l		; 5C A0 C0 40
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra   4.b		; 80 04
	plp		; 28
	bpl  80.b		; 10 50
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	ora $040300.l		; 0F 00 03 04
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	sbc $2EDF1E.l,X		; FF 1E DF 2E
	sbc $3C24C0.l,X		; FF C0 24 3C
	and $38.b,S		; 23 38
	lda $B8.b,S		; A3 B8
	sta $98.b,S		; 83 98
	eor [$D8.b]		; 47 D8
	ldx $3FA0.w,Y		; BE A0 3F
	ora ($00.b),Y		; 11 00
	brk $CB.b		; 00 CB
	php		; 08
	cmp $084F08.l		; CF 08 4F 08
	adc $88AF08.l		; 6F 08 AF 88
	rti		; 40

	and $D01F20.l,X		; 3F 20 1F D0
	and $C4FF20.l,X		; 3F 20 FF C4
	sbc $98FF88.l,X		; FF 88 FF 98
	sbc $0FFF98.l,X		; FF 98 FF 0F
	ora $2E1F1F.l		; 0F 1F 1F 2E
	rol $5E5E.w		; 2E 5E 5E
	dec A		; 3A
	dec A		; 3A
	ror $76.b,X		; 76 76
	stz $64.b		; 64 64
	stz $64.b		; 64 64
	and ($DC.b,S),Y		; 33 DC
	tad		; 5B
	ldy $BC43.w,X		; BC 43 BC
	.db $82, $7C, $84		; 82 7C 84
	ply		; 7A
	sty $8C76.w		; 8C 76 8C
	ror $C8.b,X		; 76 C8
	bit $08.b,X		; 34 08
	php		; 08
	bit $24.b		; 24 24
	bit $34.b,X		; 34 34
	bmi  48.b		; 30 30
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	asl $3E08.w,X		; 1E 08 3E
	brk $36.b		; 00 36
	ora ($37.b),Y		; 11 37
	ora #$27.b		; 09 27
	ora #$27.b		; 09 27
	clc		; 18
	jsl $03661C.l		; 22 1C 66 03
	cop $13.b		; 02 13
	ora ($1B.b)		; 12 1B
	ora ($0A.b)		; 12 0A
	cop $1A.b		; 02 1A
	cop $1A.b		; 02 1A
	cop $1D.b		; 02 1D
	brk $39.b		; 00 39
	jsr $30E0.w		; 20 E0 30
	ldy #$30.b		; A0 30
	brk $30.b		; 00 30
	cpy #$F0.b		; C0 F0
	cpy #$F0.b		; C0 F0
	brk $30.b		; 00 30
	ldy #$30.b		; A0 30
	cpy #$18.b		; C0 18
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	jsr $2020.w		; 20 20 20
	jsr $20E0.w		; 20 E0 20
	cpy #$00.b		; C0 00
	beq  16.b		; F0 10
	stz $19.b,X		; 74 19
	ldy $59.b,X		; B4 59
	ldy $69.b,X		; B4 69
	ldy $ED71.w		; AC 71 ED
	bpl -99.b		; 10 9D
	rts		; 60

	adc $4D00.w,X		; 7D 00 4D
	bmi  56.b		; 30 38
	jsr $2078.w		; 20 78 20
	sei		; 78
	bpl 112.b		; 10 70
	brk $10.b		; 00 10
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $C0.b		; 00 C0
	tya		; 98
	ldy #$B8.b		; A0 B8
	ldy #$B0.b		; A0 B0
	rti		; 40

	beq -64.b		; F0 C0
	bmi -32.b		; 30 E0
	bvc 112.b		; 50 70
	cpx #$70.b		; E0 70
	cpy #$70.b		; C0 70
	bpl  80.b		; 10 50
	bpl  64.b		; 10 40
	brk $A0.b		; 00 A0
	ldy #$20.b		; A0 20
	jsr $80C0.w		; 20 C0 80
	cpx #$00.b		; E0 00
	cpx #$20.b		; E0 20
	sed		; F8
	brk $E0.b		; 00 E0
	bpl   0.b		; 10 00
	beq  64.b		; F0 40
	bvs  64.b		; 70 40
	bvs  64.b		; 70 40
	bvs  64.b		; 70 40
	rts		; 60

	rti		; 40

	rts		; 60

	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	cpx #$E0.b		; E0 E0
	ldy #$20.b		; A0 20
	ldy #$20.b		; A0 20
	ldy #$20.b		; A0 20
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	ora ($0C.b)		; 12 0C
	asl $1E00.w,X		; 1E 00 1E
	brk $12.b		; 00 12
	tsb $001E.w		; 0C 1E 00
	rol $3E10.w		; 2E 10 3E
	brk $3C.b		; 00 3C
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	tsb $0C1C.w		; 0C 1C 0C
	trb $001C.w		; 1C 1C 00
	brk $4D.b		; 00 4D
	bmi  77.b		; 30 4D
	bmi 117.b		; 30 75
	php		; 08
	adc $3C00.w,X		; 7D 00 3C
	clc		; 18
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	bmi  56.b		; 30 38
	sec		; 38
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	cpy #$70.b		; C0 70
	cpy #$70.b		; C0 70
	cpy #$70.b		; C0 70
	cpy #$F0.b		; C0 F0
	rti		; 40

	beq  64.b		; F0 40
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	rts		; 60

	jsr $2060.w		; 20 60 20
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $03.b		; 05 03
	and [$03.b]		; 27 03
	jmp $3F4027.l		; 5C 27 40 3F
	rti		; 40

	and $000000.l,X		; 3F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $2E.b,S		; 03 2E
	rol $1E1E.w		; 2E 1E 1E
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	php		; 08
	beq  15.b		; F0 0F
	beq -66.b		; F0 BE
	cmp $39.b,X		; D5 39
	dec $1B.b		; C6 1B
	sbc $14.b		; E5 14
	sbc $000000.l		; EF 00 00 00
	brk $C0.b		; 00 C0
	cpy #$E0.b		; C0 E0
	cpx #$5D.b		; E0 5D
	eor ($1B.b,X)		; 41 1B
	inc A		; 1A
	ror $64.b		; 66 64
	sta $83.b,S		; 83 83
	pld		; 2B
	eor $2B.b,S		; 43 2B
	mvn $00,$7F		; 54 7F 00
	sta $6D12.w		; 8D 12 6D
	ora ($B7.b)		; 12 B7
	php		; 08
	eor [$08.b],Y		; 57 08
	rol $09.b,X		; 36 09
	bpl  55.b		; 10 37
	bpl  52.b		; 10 34
	brk $00.b		; 00 00
	adc ($70.b)		; 72 70
	sta ($F0.b)		; 92 F0
	lsr A		; 4A
	.db $62, $2A, $22		; 62 2A 22
	phd		; 0B
	cop $EC.b		; 02 EC
	inx		; E8
	cpx $10.b		; E4 10
	ora $A15FE0.l,X		; 1F E0 5F A1
	cmp $DF72.w,X		; DD 72 DF
	pla		; 68
	sbc $77EF5E.l		; EF 5E EF 77
	cpy #$F8.b		; C0 F8
	brk $18.b		; 00 18
	cpx #$00.b		; E0 00
	sbc [$56.b],Y		; F7 56
	xce		; FB
	bit #$FC.b		; 89 FC
	sty $FF.b,X		; 94 FF
	lda ($FF.b,X)		; A1 FF
	dey		; 88
	adc ($96.b)		; 72 96
	dex		; CA
	lsr A		; 4A
	adc ($02.b)		; 72 02
	bcc  26.b		; 90 1A
	cpy #$F8.b		; C0 F8
	ora [$FF.b]		; 07 FF
	and $1F2F1F.l		; 2F 1F 2F 1F
	cop $0F.b		; 02 0F
	and ($07.b)		; 32 07
	sed		; F8
	ora [$E8.b]		; 07 E8
	ora $003730.l		; 0F 30 37 00
	ora $071F07.l		; 0F 07 1F 07
	ora $F88EE2.l,X		; 1F E2 8E F8
	sta $7C90F8.l		; 8F F8 90 7C
	bcc  94.b		; 90 5E
	rts		; 60

	inc $FAF0.w,X		; FE F0 FA
	sbc ($EA.b),Y		; F1 EA
	sbc ($9D.b),Y		; F1 9D
	sty $A0A0.w		; 8C A0 A0
	bmi -96.b		; 30 A0
	bpl -128.b		; 10 80
	brk $E4.b		; 00 E4
	rts		; 60

	pea $F4E4.w		; F4 E4 F4
	cpy $F4.b		; C4 F4
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	cmp [$5C.b]		; C7 5C
	dec $1C.b		; C6 1C
	dec $1C.b		; C6 1C
	dec $18.b		; C6 18
	dec $10.b		; C6 10
	dec $50.b		; C6 50
	dec $08.b		; C6 08
	sty $023A.w		; 8C 3A 02
	sec		; 38
	brk $78.b		; 00 78
	rti		; 40

	sei		; 78
	rti		; 40

	jmp ($7C44.w,X)		; 7C 44 7C
	mvp $04,$3C		; 44 3C 04
	bvs   0.b		; 70 00
	ora [$0E.b],Y		; 17 0E
	ora [$0C.b],Y		; 17 0C
	ora [$0C.b],Y		; 17 0C
	ora $1D06.w,X		; 1D 06 1D
	asl $2E.b		; 06 2E
	trb $2E.b		; 14 2E
	clc		; 18
	rol $0E18.w		; 2E 18 0E
	brk $0E.b		; 00 0E
	cop $0E.b		; 02 0E
	cop $0E.b		; 02 0E
	php		; 08
	asl $1C08.w		; 0E 08 1C
	php		; 08
	trb $1C04.w		; 1C 04 1C
	tsb $3A.b		; 04 3A
	tsb $2C5A.w		; 0C 5A 2C
	lsr $7E28.w,X		; 5E 28 7E
	php		; 08
	inc A		; 1A
	tsb $12.b		; 04 12
	tsb $0E17.w		; 0C 17 0E
	ora $101C00.l		; 0F 00 1C 10
	bit $2810.w,X		; 3C 10 28
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	php		; 08
	tsb $0E00.w		; 0C 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E2.b		; 00 E2
	brk $1D.b		; 00 1D
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	cmp $E6FF70.l		; CF 70 FF E6
	sbc $F18E.w,Y		; F9 8E F1
	and [$CA.b],Y		; 37 CA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	bit $04.b,X		; 34 04
	bit #$89.b		; 89 89
	ora ($11.b),Y		; 11 11
	rti		; 40

	rti		; 40

	dey		; 88
	dey		; 88
	brk $01.b		; 00 01
	sed		; F8
	ora [$39.b]		; 07 39
	cpy $FF.b		; C4 FF
	pea $70FB.w		; F4 FB 70
	tsa		; 3B
	cpy #$F0.b		; C0 F0
	php		; 08
	sbc ($89.b),Y		; F1 89
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	sbc [$34.b],Y		; F7 34
	sbc ($00.b,S),Y		; F3 00
	sbc [$80.b],Y		; F7 80
	sbc [$30.b],Y		; F7 30
	ora $68EE08.l		; 0F 08 EE 68
	inc $E8EF.w,X		; FE EF E8
	cmp $C01EE0.l,X		; DF E0 1E C0
	sec		; 38
	bra  96.b		; 80 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($01.b,X)		; E1 01
	dec $16.b,X		; D6 16
	cld		; D8
	cld		; D8
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F2.b		; 00 F2
	jsr ($F0EC.w,X)		; FC EC F0
	bne -32.b		; D0 E0
	rts		; 60

	bra -128.b		; 80 80
	ora ($00.b,X)		; 01 00
	ora $BEF80B.l,X		; 1F 0B F8 BE
	bra -32.b		; 80 E0
	jsr ($F0C0.w,X)		; FC C0 F0
	bra -32.b		; 80 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$10.b],Y		; 17 10
	adc $01F900.l,X		; 7F 00 F9 01
	sbc ($03.b)		; F2 03
	cpx $900F.w		; EC 0F 90
	asl $7C60.w,X		; 1E 60 7C
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	inc $FD00.w,X		; FE 00 FD
	ora ($F2.b,X)		; 01 F2
	cop $EC.b		; 02 EC
	tsb $1090.w		; 0C 90 10
	rts		; 60

	rts		; 60

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $FC.b,S		; 03 FC
	xba		; EB
	ora $03FF.w		; 0D FF 03
	sbc [$02.b],Y		; F7 02
	rol $39.b,X		; 36 39
	ora [$F8.b]		; 07 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $04.b,X		; F5 04
	xce		; FB
	brk $FB.b		; 00 FB
	ora ($CB.b,X)		; 01 CB
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  15.b		; 30 0F
	pla		; 68
	ora $607F90.l,X		; 1F 90 7F 60
	sbc $C0FFC0.l,X		; FF C0 FF C0
	sbc $01FF40.l,X		; FF 40 FF 01
	inc $0404.w,X		; FE 04 04
	ora $15.b,X		; 15 15
	and #$29.b		; 29 29
	sta ($93.b,S),Y		; 93 93
	rol $36.b,X		; 36 36
	bit $24.b		; 24 24
	tay		; A8
	tay		; A8
	pla		; 68
	pla		; 68
	bmi -49.b		; 30 CF
	bmi -49.b		; 30 CF
	adc ($8D.b)		; 72 8D
	adc $8A.b,X		; 75 8A
	phy		; 5A
	sta $8A.b		; 85 8A
	ora $F8.b		; 05 F8
	ora [$D6.b]		; 07 D6
	eor ($8E.b,S),Y		; 53 8E
	stx $0C0C.w		; 8E 0C 0C
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	ora ($79.b,X)		; 01 79
	ora $021F00.l,X		; 1F 00 1F 02
	pld		; 2B
	asl $3B.b,X		; 16 3B
	asl $3F.b		; 06 3F
	cop $3F.b		; 02 3F
	ora $0F.b,S		; 03 0F
	ora $07.b,S		; 03 07
	brk $0B.b		; 00 0B
	phd		; 0B
	phd		; 0B
	ora #$17.b		; 09 17
	ora ($17.b,X)		; 01 17
	ora ($17.b),Y		; 11 17
	ora $07.b,X		; 15 07
	tsb $07.b		; 04 07
	tsb $00.b		; 04 00
	brk $77.b		; 00 77
	xba		; EB
	tda		; 7B
	ldy $7F.b,X		; B4 7F
	clv		; B8
	lda $1EFF5E.l,X		; BF 5E FF 1E
	inc $FC09.w,X		; FE 09 FC
	ora $E0.b,S		; 03 E0
	ora $FF14FF.l,X		; 1F FF 14 FF
	phk		; 4B
	jsr ($FF44.w,X)		; FC 44 FF
	lda ($BE.b,X)		; A1 BE
	ldy #$D8.b		; A0 D8
	bne -30.b		; D0 E2
.INDEX 8
	sep #$1E		; E2 1E
	asl $1F2F.w,X		; 1E 2F 1F
	sec		; 38
	brk $2F.b		; 00 2F
	ora $FF1F3F.l,X		; 1F 3F 1F FF
	ora $4FBF5F.l,X		; 1F 5F BF 4F
	and $000040.l,X		; 3F 40 00 00
	ora $000700.l,X		; 1F 00 07 00
	ora $0F1F0F.l,X		; 1F 0F 1F 0F
	ora $80BF8F.l,X		; 1F 8F BF 80
	lda $FABF80.l,X		; BF 80 BF FA
	cpy #$35.b		; C0 35
	pha		; 48
	ldx $82.b,Y		; B6 82
	cmp $EBE3.w,X		; DD E3 EB
	pea $E4DB.w		; F4 DB E4
	dec $E0.b,X		; D6 E0
	cpx #$C0.b		; E0 C0
	ora $C4.b		; 05 C4
	phd		; 0B
	cld		; D8
	ora #$D8.b		; 09 D8
	.db $82, $EA, $C4		; 82 EA C4
	pea $E4C4.w		; F4 C4 E4
	cpy #$E0.b		; C0 E0
	rti		; 40

	cpy #$00.b		; C0 00
	brk $F0.b		; 00 F0
	brk $CF.b		; 00 CF
	bmi  -1.b		; 30 FF
	jsr ($1FE0.w,X)		; FC E0 1F
	inc $0101.w,X		; FE 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	cpy #$FF.b		; C0 FF
	ora $FF.b,S		; 03 FF
	cpx #$01.b		; E0 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $FC.b		; 00 FC
	rti		; 40

	inc $58.b		; E6 58
	adc [$8A.b],Y		; 77 8A
	sbc $000702.l,X		; FF 02 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $5C.b		; 00 5C
	tsb $8E.b		; 04 8E
	tsb $06.b		; 04 06
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	ora [$02.b]		; 07 02
	inc $80BF.w,X		; FE BF 80
	and $E0E000.l,X		; 3F 00 E0 E0
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora $04.b		; 05 04
	adc $00FF00.l,X		; 7F 00 FF 00
	ora $FEFE00.l,X		; 1F 00 FE FE
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
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
	brk $C0.b		; 00 C0
	and $EF41.w,Y		; 39 41 EF
	ora $FE5FFF.l,X		; 1F FF 5F FE
	ora $FC1CEB.l,X		; 1F EB 1C FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($C0.b,X)		; 01 C0
	eor [$87.b]		; 47 87
	ora $8C1F4E.l,X		; 1F 4E 1F 8C
	sta $005C40.l,X		; 9F 40 5C 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	and $1C.b,S		; 23 1C
	adc [$3C.b]		; 67 3C
	ror $30.b		; 66 30
	ror $10.b		; 66 10
	lsr $18.b		; 46 18
	jmp $0C58.w		; 4C 58 0C
	jsr ($1E00.w,X)		; FC 00 1E
	cop $3A.b		; 02 3A
	jsl $1C0018.l		; 22 18 00 1C
	tsb $3C.b		; 04 3C
	tsb $30.b		; 04 30
	brk $30.b		; 00 30
	brk $40.b		; 00 40
	rti		; 40

	eor $46A9A6.l,X		; 5F A6 A9 46
	sta $70B6.w,X		; 9D B6 70
	ora ($3C.b)		; 12 3C
	asl $80.b		; 06 80
	sty $EC20.w		; 8C 20 EC
	bra  -8.b		; 80 F8
	jsr $4420.w		; 20 20 44
	mvn $10,$40		; 54 40 10
	inc $1A.b,X		; F6 1A
	sed		; F8
	brk $78.b		; 00 78
	php		; 08
	cld		; D8
	iny		; C8
	brk $00.b		; 00 00
	ora $2607.w,Y		; 19 07 26
	ora $2C1F2C.l,X		; 1F 2C 1F 2C
	ora $101F24.l,X		; 1F 24 1F 10
	ora $630F10.l		; 0F 10 0F 63
	trb $0202.w		; 1C 02 02
	ora #$09.b		; 09 09
	ora ($13.b,S),Y		; 13 13
	ora ($12.b)		; 12 12
	asl A		; 0A
	asl A		; 0A
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	tsb $8E0C.w		; 0C 0C 8E
	adc ($13.b)		; 72 13
	inx		; E8
	and $3ED1.w,X		; 3D D1 3E
	phb		; 8B
	and $787670.l		; 2F 70 76 78
	pea $E8F8.w		; F4 F8 E8
	beq  49.b		; F0 31
	bmi  79.b		; 30 4F
	pha		; 48
	asl $00.b,X		; 16 00
	ora #$41.b		; 09 41
	tsb $F4.b		; 04 F4
	rts		; 60

	sed		; F8
	rts		; 60

	sed		; F8
	cpy #$F0.b		; C0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	trb $3E0C.w		; 1C 0C 3E
	and $3E.b,X		; 35 3E
	ora [$42.b]		; 07 42
	plb		; AB
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $3E18.w		; 1C 18 3E
	tsb $7F.b		; 04 7F
	bit $7E.b,X		; 34 7E
	brk $FA.b		; 00 FA
	brk $F0.b		; 00 F0
	bne -32.b		; D0 E0
	lda $C0.b,S		; A3 C0
	eor $80.b,S		; 43 80
	sta $00.b,S		; 83 00
	ora ($82.b,X)		; 01 82
	cmp ($C2.b,X)		; C1 C2
	cmp ($02.b,X)		; C1 02
	ora ($02.b,X)		; 01 02
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $81.b		; 00 81
	brk $01.b		; 00 01
	brk $E1.b		; 00 E1
	cpy #$E1.b		; C0 E1
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $07.b,S		; 03 07
	ora $2D290F.l		; 0F 0F 29 2D
	pld		; 2B
	plp		; 28
	ldy $F040.w		; AC 40 F0
	brk $01.b		; 00 01
	ora [$02.b]		; 07 02
	ora [$00.b]		; 07 00
	ora $283F03.l		; 0F 03 3F 28
	adc $007C28.l,X		; 7F 28 7C 00
	bvc   0.b		; 50 00
	brk $03.b		; 00 03
	and ($10.b,S),Y		; 33 10
	and ($0C.b,S),Y		; 33 0C
	adc [$30.b]		; 67 30
	adc [$10.b]		; 67 10
	cmp [$78.b]		; C7 78
	dec $CE78.w		; CE 78 CE
	jsr $1C8C.w		; 20 8C 1C
	bpl  15.b		; 10 0F
	ora $3B.b,S		; 03 3B
	and $1E.b,S		; 23 1E
	asl $7E.b		; 06 7E
	lsr $34.b		; 46 34
	tsb $34.b		; 04 34
	tsb $78.b		; 04 78
	php		; 08
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
	ora $71117F.l,X		; 1F 7F 11 71
	asl $0E60.w		; 0E 60 0E
	jsr $200E.w		; 20 0E 20
	asl $0E20.w		; 0E 20 0E
	jsr $200E.w		; 20 0E 20
	jsr $2E20.w		; 20 20 2E
	jsr $203F.w		; 20 3F 20
	ora $001F00.l,X		; 1F 00 1F 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $C00000.l,X		; 1F 00 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	tad		; 5B
	tsb $5B.b		; 04 5B
	asl $37.b		; 06 37
	cop $07.b		; 02 07
	ora ($07.b,X)		; 01 07
	ora ($05.b,X)		; 01 05
	ora $05.b,S		; 03 05
	cop $06.b		; 02 06
	ora ($26.b,X)		; 01 26
	jsl $032127.l		; 22 27 21 03
	ora ($03.b,X)		; 01 03
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	ora ($FF.b,X)		; 01 FF
	ror $B87F.w,X		; 7E 7F B8
	adc $40BF90.l,X		; 7F 90 BF 40
	cmp $C5FA20.l,X		; DF 20 FA C5
	sbc $1C.b,S		; E3 1C
	sed		; F8
	inc $81FF.w,X		; FE FF 81
	inc $FC46.w,X		; FE 46 FC
	jmp ($B8F8.w)		; 6C F8 B8
	beq -48.b		; F0 D0
	cpx #$21.b		; E0 21
	clc		; 18
	clc		; 18
	tsb $04.b		; 04 04
	sbc $F2FD00.l,X		; FF 00 FD F2
	bra 127.b		; 80 7F
	sta $7C.b		; 85 7C
	ror $10.b,X		; 76 10
	sbc $FE21.w,Y		; F9 21 FE
	eor [$FC.b],Y		; 57 FC
	and $00.b,S		; 23 00
	brk $FE.b		; 00 FE
	tsb $0078.w		; 0C 78 00
	eor $00.b,S		; 43 00
	ora $002E00.l		; 0F 00 2E 00
	cmp ($81.b),Y		; D1 81
	plp		; 28
	php		; 08
	bit $0F02.w,X		; 3C 02 0F
	pea $8AAF.w		; F4 AF 8A
	sbc [$02.b],Y		; F7 02
	and $C33A.w,X		; 3D 3A C3
	jsr ($F20D.w,X)		; FC 0D F2
	and $03FE.w,X		; 3D FE 03
	cop $05.b		; 02 05
	tsb $72.b		; 04 72
	cop $F8.b		; 02 F8
	cop $C0.b		; 02 C0
	cop $30.b		; 02 30
	bmi -128.b		; 30 80
	.db $82, $00, $7E		; 82 00 7E
	bvs   0.b		; 70 00
	ldy #$40.b		; A0 40
	jsr $1FC0.w		; 20 C0 1F
	cpx #$06.b		; E0 06
	sbc $007F8F.l,X		; FF 8F 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	rti		; 40

	and $1039.w,Y		; 39 39 10
	bpl  -1.b		; 10 FF
	sbc $008080.l,X		; FF 80 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	cpy #$90.b		; C0 90
	cpx #$50.b		; E0 50
	cpx #$30.b		; E0 30
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	ldy #$A0.b		; A0 A0
	rti		; 40

	rti		; 40

	ora [$70.b],Y		; 17 70
	lsr $B9C0.w,X		; 5E C0 B9
	sta ($1C.b,X)		; 81 1C
	ora $80FFE0.l,X		; 1F E0 FF 80
	jsr ($F000.w,X)		; FC 00 F0
	brk $C0.b		; 00 C0
	ora $003F00.l		; 0F 00 3F 00
	ror $E300.w,X		; 7E 00 E3
	ora $1C.b,S		; 03 1C
	trb $7070.w		; 1C 70 70
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	rol $2E1C.w		; 2E 1C 2E
	clc		; 18
	rol $3A18.w		; 2E 18 3A
	tsb $0C3A.w		; 0C 3A 0C
	jmp $305C28.l		; 5C 28 5C 30
	jmp $001C30.l		; 5C 30 1C 00
	trb $1C04.w		; 1C 04 1C
	tsb $1C.b		; 04 1C
	bpl  28.b		; 10 1C
	bpl  56.b		; 10 38
	bpl  56.b		; 10 38
	php		; 08
	sec		; 38
	php		; 08
	rol $2E63.w,X		; 3E 63 2E
	adc $0E.b,S		; 63 0E
	adc $0E.b,S		; 63 0E
	adc $0C.b,S		; 63 0C
	adc $08.b,S		; 63 08
	adc $28.b,S		; 63 28
	adc $04.b,S		; 63 04
	lsr $1D.b		; 46 1D
	ora ($1C.b,X)		; 01 1C
	brk $3C.b		; 00 3C
	jsr $203C.w		; 20 3C 20
	rol $3E22.w,X		; 3E 22 3E
	jsl $38021E.l		; 22 1E 02 38
	brk $07.b		; 00 07
	brk $3F.b		; 00 3F
	ora $FE.b,S		; 03 FE
	ora $66F9.w,X		; 1D F9 66
	inc $88.b,X		; F6 88
	dey		; 88
	bvs 112.b		; 70 70
	bra -64.b		; 80 C0
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	tsb $3F.b		; 04 3F
	jsl $F898FE.l		; 22 FE 98 F8
	bvs -16.b		; 70 F0
	bra -64.b		; 80 C0
	rti		; 40

	brk $00.b		; 00 00
	sta ($EC.b)		; 92 EC
	nop		; EA
	sty $6C.b,X		; 94 6C
	bvc  72.b		; 50 48
	bvs  64.b		; 70 40
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $64.b		; 00 64
	stz $10.b		; 64 10
	bpl -112.b		; 10 90
	bpl -128.b		; 10 80
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	ora ($89.b,X)		; 01 89
	ora [$B9.b]		; 07 B9
	tsb $FF.b		; 04 FF
	tsb $CB.b		; 04 CB
	bmi  59.b		; 30 3B
	iny		; C8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	and ($30.b,S),Y		; 33 30
	sbc [$C0.b],Y		; F7 C0
	sbc [$20.b]		; E7 20
	ror A		; 6A
	sta ($7B.b),Y		; 91 7B
	sty $5F.b		; 84 5F
	bra -38.b		; 80 DA
	ora ($D7.b,X)		; 01 D7
	plp		; 28
	sbc [$00.b],Y		; F7 00
	stz $DD21.w,X		; 9E 21 DD
	cop $04.b		; 02 04
	eor $6C04.w		; 4D 04 6C
	jsr $2568.w		; 20 68 25
	stz $29.b		; 64 29
	adc $0D09.w		; 6D 09 0D
	adc ($68.b,X)		; 61 68
	rol $64.b		; 26 64
	cmp #$B6.b		; C9 B6
	lda [$49.b],Y		; B7 49
	tay		; A8
	eor [$BF.b],Y		; 57 BF
	eor ($5F.b,S),Y		; 53 5F
	lda $E1D0AF.l		; AF AF D0 E1
	dec $63FC.w,X		; DE FC 63
	and [$81.b],Y		; 37 81
	eor $207706.l		; 4F 06 77 20
	adc $10BF2C.l,X		; 7F 2C BF 10
	cmp $21FF0F.l,X		; DF 0F FF 21
	sbc $08F89C.l,X		; FF 9C F8 08
	xce		; FB
	wai		; CB
	trb $E0EF.w		; 1C EF E0
	cmp $E0DEE0.l,X		; DF E0 DE E0
	clc		; 18
	cpy #$30.b		; C0 30
	rti		; 40

	bra -25.b		; 80 E7
	cpx #$E4.b		; E0 E4
	jsr $03E3.w		; 20 E3 03
	dec $D81E.w,X		; DE 1E D8
	clc		; 18
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	trb $F49C.w		; 1C 9C F4
	pea $F07E.w		; F4 7E F0
	dec $3C3C.w,X		; DE 3C 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $FE1C.w		; 1C 1C FE
	jsr $00FF.w		; 20 FF 00
	sbc ($0C.b),Y		; F1 0C
	and $0000.w,X		; 3D 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $86.b		; 84 86
	stz $06.b,X		; 74 06
	stz $06.b,X		; 74 06
	stz $06.b,X		; 74 06
	bvs   6.b		; 70 06
	bvs   6.b		; 70 06
	bvs   6.b		; 70 06
	bvs   6.b		; 70 06
	sei		; 78
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	tsb $FC.b		; 04 FC
	tsb $FC.b		; 04 FC
	tsb $FC.b		; 04 FC
	tsb $BC.b		; 04 BC
	cmp $D8.b,S		; C3 D8
	cpx #$D3.b		; E0 D3
	sbc [$A7.b]		; E7 A7
	cmp [$5F.b]		; C7 5F
	sta $4F.b,S		; 83 4F
	sta ($8A.b,S),Y		; 93 8A
	ora $CA.b,X		; 15 CA
	ora ($08.b),Y		; 11 08
	wai		; CB
	bra -25.b		; 80 E7
	bra -17.b		; 80 EF
	ora $CF.b,S		; 03 CF
	ora $83.b,S		; 03 83
	ora ($8B.b,X)		; 01 8B
	tsb $0D.b		; 04 0D
	ora $0C.b		; 05 0C
	sbc $0C0FFE.l,X		; FF FE 0F 0C
	sbc $F0.b,S		; E3 F0
	pea $FCFA.w		; F4 FA FC
	plx		; FA
	sbc $EFFA.w,X		; FD FA EF
	beq  54.b		; F0 36
	cmp #$3C.b		; C9 3C
	inc $FD04.w,X		; FE 04 FD
	brk $FD.b		; 00 FD
	sbc $FB.b,S		; E3 FB
	sbc ($FB.b,S),Y		; F3 FB
.ACCU 8
.INDEX 8
	sep #$FA		; E2 FA
	ora ($F1.b,X)		; 01 F1
	cmp $FF0006.l		; CF 06 00 FF
	brk $FF.b		; 00 FF
	trb $3FE3.w		; 1C E3 3F
	cpy #$7E.b		; C0 7E
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $3E.b		; 00 3E
	rol $E1E1.w,X		; 3E E1 E1
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $8F70A0.l,X		; 7F A0 70 8F
	adc [$9C.b]		; 67 9C
	cpy $803F.w		; CC 3F 80
	adc $987F80.l,X		; 7F 80 7F 98
	adc [$AF.b]		; 67 AF
	bvc  48.b		; 50 30
	brk $A6.b		; 00 A6
	ldx $0B.b		; A6 0B
	php		; 08
	ora ($13.b,S),Y		; 13 13
	rol $393E.w,X		; 3E 3E 39
	and $0303.w,Y		; 39 03 03
	clc		; 18
	bpl -125.b		; 10 83
	jmp ($7887.w,X)		; 7C 87 78
	stx $8870.w		; 8E 70 88
	bvs -120.b		; 70 88
	bvs  69.b		; 70 45
	sec		; 38
	and $08.b,X		; 35 08
	tsb $2001.w		; 0C 01 20
	jsr $4040.w		; 20 40 40
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	ora #$03.b		; 09 03
	phd		; 0B
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora [$06.b]		; 07 06
	ora [$07.b]		; 07 07
	asl $0E0D.w		; 0E 0D 0E
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	ora $07.b,S		; 03 07
	ora $0F.b,S		; 03 0F
	cop $0F.b		; 02 0F
	cop $0F.b		; 02 0F
	tsb $1E.b		; 04 1E
	tsb $1E.b		; 04 1E
	asl $3A0C.w		; 0E 0C 3A
	trb $3874.w		; 1C 74 38
	stz $38.b,X		; 74 38
	jmp $186C38.l		; 5C 38 6C 18
	jmp $3838.w		; 4C 38 38
	brk $00.b		; 00 00
	trb $1C10.w		; 1C 10 1C
	bpl  56.b		; 10 38
	bmi  56.b		; 30 38
	bpl  56.b		; 10 38
	php		; 08
	clc		; 18
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($0F.b,X)		; 01 0F
	php		; 08
	sec		; 38
	and $3DE1.w		; 2D E1 3D
	ora ($FA.b,X)		; 01 FA
	ora $E4.b,S		; 03 E4
	ora [$D8.b]		; 07 D8
	ora $020000.l,X		; 1F 00 00 02
	cop $07.b		; 02 07
	brk $1E.b		; 00 1E
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	ora ($FB.b,X)		; 01 FB
	ora $E4.b,S		; 03 E4
	tsb $20.b		; 04 20
	bit $F8C0.w,X		; 3C C0 F8
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cld		; D8
	clc		; 18
	jsr $C020.w		; 20 20 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $28.b		; 00 28
	cpy #$1C.b		; C0 1C
	cpx #$54.b		; E0 54
	inx		; E8
	dex		; CA
	ldy $3CCA.w,X		; BC CA 3C
.INDEX 8
	sep #$DC		; E2 DC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	tay		; A8
	tay		; A8
	jsr $1020.w		; 20 20 10
	bpl  24.b		; 10 18
	clc		; 18
	dec A		; 3A
	tsb $2C5A.w		; 0C 5A 2C
	lsr $7E28.w,X		; 5E 28 7E
	php		; 08
	inc A		; 1A
	tsb $12.b		; 04 12
	tsb $0E17.w		; 0C 17 0E
	ora $101C00.l		; 0F 00 1C 10
	bit $2810.w,X		; 3C 10 28
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	php		; 08
	tsb $0E00.w		; 0C 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	brk $30.b		; 00 30
	ora $803F4E.l		; 0F 4E 3F 80
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $11.b,S		; 03 11
	ora ($3C.b),Y		; 11 3C
	bit $7F80.w,X		; 3C 80 7F
	bra 127.b		; 80 7F
	rti		; 40

	and $201F20.l,X		; 3F 20 1F 20
	ora $401F20.l,X		; 1F 20 1F 40
	and $317E81.l,X		; 3F 81 7E 31
	and ($33.b),Y		; 31 33
	and ($13.b,S),Y		; 33 13
	ora ($0B.b,S),Y		; 13 0B
	phd		; 0B
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	and $C83F06.l,X		; 3F 06 3F C8
	cli		; 58
	ora [$F7.b]		; 07 F7
	php		; 08
	stz $4810.w		; 9C 10 48
	bvs -128.b		; 70 80
	cpx #$00.b		; E0 00
	cpy #$0F.b		; C0 0F
	ora #$1F.b		; 09 1F
	ora [$EF.b],Y		; 17 EF
	php		; 08
	cpx $E004.w		; EC 04 E0
	brk $A0.b		; 00 A0
	jsr $4040.w		; 20 40 40
	brk $00.b		; 00 00
	php		; 08
	and $1C.b,S		; 23 1C
	adc [$3C.b]		; 67 3C
	ror $30.b		; 66 30
	ror $10.b		; 66 10
	lsr $18.b		; 46 18
	jmp $0C58.w		; 4C 58 0C
	jsr ($1E00.w,X)		; FC 00 1E
	cop $3A.b		; 02 3A
	jsl $1C0018.l		; 22 18 00 1C
	tsb $3C.b		; 04 3C
	tsb $30.b		; 04 30
	brk $30.b		; 00 30
	brk $40.b		; 00 40
	rti		; 40

	brk $03.b		; 00 03
	cop $0E.b		; 02 0E
	phd		; 0B
	sec		; 38
	rol $BDE0.w		; 2E E0 BD
	sta ($F2.b,X)		; 81 F2
	ora $CC.b,S		; 03 CC
	ora $00FEE0.l		; 0F E0 FE 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $7E.b		; 00 7E
	brk $FD.b		; 00 FD
	ora ($F2.b,X)		; 01 F2
	cop $18.b		; 02 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $FC.b		; 00 FC
	php		; 08
	jmp ($7888.w,X)		; 7C 88 78
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	bmi  -8.b		; 30 F8
	bvs -64.b		; 70 C0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	asl $7301.w		; 0E 01 73
	tsb $13EC.w		; 0C EC 13
	sbc $86E2.w,X		; FD E2 86
	sei		; 78
	jmp ($0080.w,X)		; 7C 80 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0C.b		; 00 0C
	brk $73.b		; 00 73
	rts		; 60

	sbc ($10.b)		; F2 10
	sed		; F8
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	adc [$20.b]		; 67 20
	adc [$18.b]		; 67 18
	cmp $20CE60.l		; CF 60 CE 20
	stx $9CF0.w		; 8E F0 9C
	beq -100.b		; F0 9C
	rti		; 40

	clc		; 18
	sec		; 38
	jsr $061E.w		; 20 1E 06
	ror $46.b,X		; 76 46
	bit $FC0C.w,X		; 3C 0C FC
	sty $0868.w		; 8C 68 08
	pla		; 68
	php		; 08
	beq  16.b		; F0 10
	brk $00.b		; 00 00
	jsr ($E800.w,X)		; FC 00 E8
	ora [$B4.b],Y		; 17 B4
	jmp $887F.w		; 4C 7F 88
	cmp [$20.b],Y		; D7 20
	beq -64.b		; F0 C0
	sbc $D3.b,S		; E3 D3
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -32.b		; F0 E0
	rtl		; 6B

	plp		; 28
	sta [$00.b]		; 87 00
	sbc $20EFC0.l		; EF C0 EF 20
	jmp.w [$0010]		; DC 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FE01FD.l,X		; FF FD 01 FE
	brk $C3.b		; 00 C3
	brk $1D.b		; 00 1D
	trb $FEC3.w		; 1C C3 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FF00.w,X		; FE 00 FF
	brk $FF.b		; 00 FF
	brk $E3.b		; 00 E3
	brk $39.b		; 00 39
	sec		; 38
	bvc -120.b		; 50 88
	pld		; 2B
	eor [$2F.b]		; 47 2F
	rti		; 40

	tsa		; 3B
	tsb $0B.b		; 04 0B
	mvn $44,$0B		; 54 0B 44
	and [$88.b],Y		; 37 88
	and [$89.b],Y		; 37 89
	jsr $106F.w		; 20 6F 10
	and [$10.b],Y		; 37 10
	bmi   5.b		; 30 05
	ora ($35.b,X)		; 01 35
	and ($35.b),Y		; 31 35
	and ($4D.b),Y		; 31 4D
	adc $4D.b		; 65 4D
	stz $03.b		; 64 03
	tsb $FB.b		; 04 FB
	jsr ($01FE.w,X)		; FC FE 01
	sbc $770E.w,X		; FD 0E 77
	ldx $EBB7.w		; AE B7 EB
	tyx		; BB
	sbc [$BB.b],Y		; F7 BB
	sbc $00.b,X		; F5 00
	jsr ($FD79.w,X)		; FC 79 FD
	ora ($00.b,X)		; 01 00
	ror $FF60.w		; 6E 60 FF
	eor ($FF.b),Y		; 51 FF
	trb $FF.b		; 14 FF
	php		; 08
	sbc $00000A.l,X		; FF 0A 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
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
	ora $0F1000.l		; 0F 00 10 0F
	plp		; 28
	ora $E11E3D.l,X		; 1F 3D 1E E1
	rol $FF00.w,X		; 3E 00 FF
	brk $FF.b		; 00 FF
	sta ($7E.b,X)		; 81 7E
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	ora [$07.b]		; 07 07
	cop $02.b		; 02 02
	trb $7B1C.w		; 1C 1C 7B
	tda		; 7B
	pea $34F4.w		; F4 F4 34
	bit $80.b,X		; 34 80
	brk $40.b		; 00 40
	bra 110.b		; 80 6E
	bra -15.b		; 80 F1
	ldx $0CFF.w		; AE FF 0C
	inc $CC1F.w,X		; FE 1F CC
	adc $00FE01.l,X		; 7F 01 FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EC.b		; 00 EC
	tsb $C0D3.w		; 0C D3 C0
	and ($01.b,X)		; 21 01
	and ($32.b)		; 32 32
	pla		; 68
	pla		; 68
	brk $00.b		; 00 00
	dec A		; 3A
	bit $74F2.w,X		; 3C F2 74
	ldy $B878.w,X		; BC 78 B8
	sec		; 38
	bvc -72.b		; 50 B8
	cld		; D8
	clc		; 18
	clv		; B8
	cli		; 58
	brk $3C.b		; 00 3C
	bmi 124.b		; 30 7C
	bmi 124.b		; 30 7C
	bpl 120.b		; 10 78
	bpl 124.b		; 10 7C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	pha		; 48
	jmp $200FF8.l		; 5C F8 0F 20
	ora $5FA8A8.l		; 0F A8 A8 5F
	bvc -48.b		; 50 D0
	bvc -49.b		; 50 CF
	eor $EEAF40.l,X		; 5F 40 AF EE
	trb $0101.w		; 1C 01 01
	brk $D0.b		; 00 D0
	sta [$F0.b]		; 87 F0
	eor $604FE0.l		; 4F E0 4F 60
	bpl 112.b		; 10 70
	brk $B0.b		; 00 B0
	ora ($1D.b,X)		; 01 1D
	sei		; 78
	stx $7E.b		; 86 7E
	tay		; A8
	ror $9F51.w,X		; 7E 51 9F
	and ($6C.b,X)		; 21 6C
	bvs   6.b		; 70 06
	sed		; F8
	tas		; 1B
	sbc ($3A.b,X)		; E1 3A
	eor $00.b		; 45 00
	ora [$28.b]		; 07 28
	ora ($94.b,X)		; 01 94
	tsb $E8.b		; 04 E8
	plp		; 28
	sta ($10.b,S),Y		; 93 10
	sbc ($E0.b,X)		; E1 E0
	tsb $04.b		; 04 04
	cpy $C4.b		; C4 C4
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora $D73F87.l,X		; 1F 87 3F D7
	tda		; 7B
	eor [$3C.b],Y		; 57 3C
	ora $BB.b,S		; 03 BB
	cpy $3C.b		; C4 3C
	cpy #$00.b		; C0 00
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora [$92.b]		; 07 92
	sta [$90.b]		; 87 90
	ora [$D8.b]		; 07 D8
	tas		; 1B
	mvn $00,$50		; 54 50 00
	brk $08.b		; 00 08
	brk $3C.b		; 00 3C
	sec		; 38
	rol $563C.w,X		; 3E 3C 56
	mvn $6C,$4A		; 54 4A 6C
	inc A		; 1A
	trb $181C.w		; 1C 1C 18
	trb $0018.w		; 1C 18 00
	bmi  56.b		; 30 38
	sei		; 78
	tsb $407C.w		; 0C 7C 40
	jsr ($FC00.w,X)		; FC 00 FC
	clc		; 18
	jmp ($3800.w,X)		; 7C 00 38
	bpl  56.b		; 10 38
	bit $38.b,X		; 34 38
	bit $38.b,X		; 34 38
	sei		; 78
	bvs -24.b		; 70 E8
	beq -24.b		; F0 E8
	beq -48.b		; F0 D0
	cpx #$D0.b		; E0 D0
	cpx #$20.b		; E0 20
	cpy #$10.b		; C0 10
	sei		; 78
	jsr $2078.w		; 20 78 20
	beq  96.b		; F0 60
	beq -64.b		; F0 C0
	beq -128.b		; F0 80
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$80.b		; C0 80
	bmi  96.b		; 30 60
	bmi -88.b		; 30 A8
	bra  92.b		; 80 5C
	iny		; C8
	dec A		; 3A
	mvn $08,$7E		; 54 7E 08
	and $0B1614.l		; 2F 14 16 0B
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	bvs   0.b		; 70 00
	plp		; 28
	brk $1C.b		; 00 1C
	php		; 08
	bit $1E34.w,X		; 3C 34 1E
	asl A		; 0A
	ora $C0E004.l		; 0F 04 E0 C0
	beq  64.b		; F0 40
	sed		; F8
	jsr $30DC.w		; 20 DC 30
	rol $1E1C.w		; 2E 1C 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	ldy #$70.b		; A0 70
	bvc  56.b		; 50 38
	php		; 08
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	adc $3C.b,S		; 63 3C
	ror $10.b		; 66 10
	lsr $B8.b		; 46 B8
	jmp $0CC0.w		; 4C C0 0C
	sed		; F8
	rti		; 40

	sei		; 78
	cpx #$F0.b		; E0 F0
	rti		; 40

	rol $1822.w,X		; 3E 22 18
	brk $3C.b		; 00 3C
	tsb $70.b		; 04 70
	rti		; 40

	sec		; 38
	php		; 08
	rti		; 40

	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	ldy #$FC.b		; A0 FC
	sta $80BFC0.l,X		; 9F C0 BF 80
	adc $00FF0E.l,X		; 7F 0E FF 00
	sbc $00F800.l,X		; FF 00 F8 00
	brk $00.b		; 00 00
	brk $C3.b		; 00 C3
	eor $BC.b,S		; 43 BC
	bit $4343.w,X		; 3C 43 43
	and ($31.b),Y		; 31 31
	sed		; F8
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $FE.b		; 02 FE
	tsb $FC.b		; 04 FC
	nop		; EA
	sed		; F8
	ora [$F1.b]		; 07 F1
	ora $0CF1.w,X		; 1D F1 0C
	adc ($3A.b,X)		; 61 3A
	adc $1C.b,S		; 63 1C
	lsr $C5.b		; 46 C5
	cpy $2B.b		; C4 2B
	plp		; 28
	ora [$00.b]		; 07 00
	dec $0ED0.w,X		; DE D0 0E
	brk $3F.b		; 00 3F
	and ($1C.b,X)		; 21 1C
	brk $38.b		; 00 38
	brk $D7.b		; 00 D7
	ora #$2F.b		; 09 2F
	ora ($2F.b),Y		; 11 2F
	ora ($2F.b),Y		; 11 2F
	ora ($3B.b),Y		; 11 3B
	ora $07.b		; 05 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2D.b		; 00 2D
	bit $1D.b		; 24 1D
	tsb $0C1D.w		; 0C 1D 0C
	ora $050C.w,X		; 1D 0C 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BD.b		; 00 BD
	stp		; DB
	lda $BCDFDC.l,X		; BF DC DF BC
	dec $F4B9.w,X		; DE B9 F4
	phb		; 8B
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	bit $FD.b		; 24 FD
	and ($FE.b,X)		; 21 FE
	.db $42, $FC		; 42 FC
	mvp $50,$D8		; 44 D8 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	tsb $1303.w		; 0C 03 13
	ora $160F16.l		; 0F 16 0F 16
	ora $080F12.l		; 0F 12 0F 08
	ora [$08.b]		; 07 08
	ora [$00.b]		; 07 00
	brk $01.b		; 00 01
	ora ($04.b,X)		; 01 04
	tsb $09.b		; 04 09
	ora #$09.b		; 09 09
	ora #$05.b		; 09 05
	ora $03.b		; 05 03
	ora $02.b,S		; 03 02
	cop $43.b		; 02 43
	jsr ($FD82.w,X)		; FC 82 FD
	cop $FD.b		; 02 FD
	ora $F8.b		; 05 F8
	ora $F8.b		; 05 F8
	clc		; 18
	cpx #$30.b		; E0 30
	cpy #$60.b		; C0 60
	bra -88.b		; 80 A8
	tay		; A8
	pla		; 68
	pla		; 68
	bne -48.b		; D0 D0
	bcc -112.b		; 90 90
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	sbc $D42B.w,Y		; F9 2B D4
	eor $ABA8.w,X		; 5D A8 AB
	eor ($A6.b)		; 52 A6
	eor $D7.b,S		; 43 D7
	bmi  74.b		; 30 4A
	and $3E16.w,Y		; 39 16 3E
	cmp ($C1.b,X)		; C1 C1
	sty $84.b		; 84 84
	bra -126.b		; 80 82
	plp		; 28
	asl $3F.b		; 06 3F
	cop $0F.b		; 02 0F
	brk $17.b		; 00 17
	ora ($09.b),Y		; 11 09
	php		; 08
	sed		; F8
	cli		; 58
	sed		; F8
	jmp.w [$DC7C]		; DC 7C DC
	bit $7C5C.w,X		; 3C 5C 7C
	jmp $7C1EBC.l		; 5C BC 1E 7C
	dec $DEAC.w,X		; DE AC DE
	php		; 08
	trb $1E08.w		; 1C 08 1E
	php		; 08
	asl $5EC8.w,X		; 1E C8 5E
	sty $CC1E.w		; 8C 1E CC
	ora $009F8C.l,X		; 1F 8C 9F 00
	ora $BEFC3F.l,X		; 1F 3F FC BE
	jmp ($7091.w,X)		; 7C 91 70
	eor $3F5F0F.l		; 4F 0F 5F 3F
	and $1FEF1F.l		; 2F 1F EF 1F
	eor [$8F.b],Y		; 57 8F
	clc		; 18
	jsr ($7D11.w,X)		; FC 11 7D
	brk $7E.b		; 00 7E
	brk $3F.b		; 00 3F
	asl $073F.w		; 0E 3F 07
	ora $201F07.l,X		; 1F 07 1F 20
	adc $3028D6.l		; 6F D6 28 30
	tsb $D8.b		; 04 D8
	bit $EC.b		; 24 EC
	rts		; 60

	cpx #$E0.b		; E0 E0
	cpx #$F0.b		; E0 F0
	beq -16.b		; F0 F0
	inc $F8.b,X		; F6 F8
	plp		; 28
	plp		; 28
	iny		; C8
	iny		; C8
	brk $A8.b		; 00 A8
	brk $70.b		; 00 70
	rti		; 40

	beq -32.b		; F0 E0
	sed		; F8
	cpx #$F8.b		; E0 F8
	brk $F8.b		; 00 F8
	bmi  15.b		; 30 0F
	rti		; 40

	and $9C7C83.l,X		; 3F 83 7C 9C
	rts		; 60

	bcs  64.b		; B0 40
	rts		; 60

	brk $60.b		; 00 60
	brk $30.b		; 00 30
	brk $06.b		; 00 06
	asl $18.b		; 06 18
	clc		; 18
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bra -127.b		; 80 81
	brk $02.b		; 00 02
	brk $05.b		; 00 05
	ora ($0D.b,X)		; 01 0D
	ora ($0F.b,X)		; 01 0F
	ora $1E.b		; 05 1E
	brk $1F.b		; 00 1F
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $07.b		; 05 07
	tsb $01.b		; 04 01
	php		; 08
	ora #$08.b		; 09 08
	brk $2F.b		; 00 2F
	clc		; 18
	and $000300.l,X		; 3F 00 03 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$00.b		; C0 00
	rts		; 60

	cpy #$60.b		; C0 60
	bra  32.b		; 80 20
	rti		; 40

	rts		; 60

	bra -16.b		; 80 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	rti		; 40

	rti		; 40

	jsr $10F8.w		; 20 F8 10
	cld		; D8
	plp		; 28
	sty $8630.w		; 8C 30 86
	jmp ($18C6.w,X)		; 7C C6 18
	cmp $2E.b,S		; C3 2E
	adc $15.b,S		; 63 15
	adc ($90.b),Y		; 71 90
	bcc -96.b		; 90 A0
	bra 112.b		; 80 70
	brk $7C.b		; 00 7C
	tsb $B8.b		; 04 B8
	bra 126.b		; 80 7E
	.db $42, $1C		; 42 1C
	brk $2E.b		; 00 2E
	jsr $182E.w		; 20 2E 18
	ror $6A18.w		; 6E 18 6A
	trb $1C6A.w		; 1C 6A 1C
	asl $1F08.w,X		; 1E 08 1F
	asl $0F.b		; 06 0F
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	tsb $1C.b		; 04 1C
	tsb $1C.b		; 04 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	tsb $0E.b		; 04 0E
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clv		; B8
	sty $C654.w		; 8C 54 C6
	clc		; 18
.ACCU 16
	rep #$2E		; C2 2E
	adc $14.b,S		; 63 14
	and ($0B.b),Y		; 31 0B
	ora $0C05.w,Y		; 19 05 0C
	cop $06.b		; 02 06
	bvs   0.b		; 70 00
	clv		; B8
	bra 124.b		; 80 7C
	rti		; 40

	trb $0F00.w		; 1C 00 0F
	ora ($06.b,X)		; 01 06
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $0C.b		; 00 0C
	brk $0F.b		; 00 0F
	tsb $17.b		; 04 17
	asl $041F.w		; 0E 1F 04
	ora $2E0A.w,X		; 1D 0A 2E
	clc		; 18
	dec A		; 3A
	tsb $345A.w		; 0C 5A 34
	ora $00.b,S		; 03 00
	tsb $00.b		; 04 00
	ora $0A0E01.l		; 0F 01 0E 0A
	asl $1C04.w		; 0E 04 1C
	tsb $1C.b		; 04 1C
	bpl  60.b		; 10 3C
	php		; 08
	pla		; 68
	bcs -72.b		; B0 B8
	rts		; 60

	jmp ($5A10.w,X)		; 7C 10 5A
	bit $1C2E.w		; 2C 2E 1C
	and $021F04.l,X		; 3F 04 1F 02
	ora $F003.w,X		; 1D 03 F0
	rti		; 40

	bvs  16.b		; 70 10
	sec		; 38
	plp		; 28
	bit $1C10.w,X		; 3C 10 1C
	brk $0E.b		; 00 0E
	asl A		; 0A
	ora [$05.b]		; 07 05
	ora $00.b,S		; 03 00
	cop $08.b		; 02 08
	asl $08.b		; 06 08
	ora [$19.b]		; 07 19
	tsb $0419.w		; 0C 19 04
	ora ($06.b),Y		; 11 06
	ora ($30.b,S),Y		; 13 30
	ora $34.b,S		; 03 34
	ora [$07.b]		; 07 07
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	php		; 08
	ora [$01.b]		; 07 01
	ora $000C01.l		; 0F 01 0C 00
	asl $0A02.w		; 0E 02 0A
	cop $88.b		; 02 88
	sbc $08.b,S		; E3 08
	sbc $08.b,S		; E3 08
	sbc $08.b,S		; E3 08
	sep #$08		; E2 08
	ldx #$08.b		; A2 08
	jsl $182208.l		; 22 08 22 18
	and ($3E.b)		; 32 3E
	jsl $BEA2BE.l		; 22 BE A2 BE
	ldx #$3C.b		; A2 3C
	jsr $001C.w		; 20 1C 00
	trb $1C00.w		; 1C 00 1C
	brk $0C.b		; 00 0C
	brk $03.b		; 00 03
	clc		; 18
	ora $18.b,S		; 03 18
	ora [$1C.b]		; 07 1C
	ora [$1C.b]		; 07 1C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora $080F08.l		; 0F 08 0F 08
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $44.b		; 00 44
	brk $44.b		; 00 44
	brk $44.b		; 00 44
	brk $44.b		; 00 44
	brk $44.b		; 00 44
	php		; 08
	jmp $4C08.w		; 4C 08 4C
	php		; 08
	jmp $00B8.w		; 4C B8 00
	clv		; B8
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	brk $B0.b		; 00 B0
	brk $B0.b		; 00 B0
	brk $B0.b		; 00 B0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $2E0A.w,X		; 1D 0A 2E
	clc		; 18
	rol $3A08.w,X		; 3E 08 3A
	trb $3A.b		; 14 3A
	trb $3C.b		; 14 3C
	clc		; 18
	bit $08.b,X		; 34 08
	sec		; 38
	brk $0E.b		; 00 0E
	tsb $1C.b		; 04 1C
	tsb $1C.b		; 04 1C
	trb $1C.b		; 14 1C
	php		; 08
	trb $1808.w		; 1C 08 18
	brk $18.b		; 00 18
	bpl   0.b		; 10 00
	brk $3E.b		; 00 3E
	php		; 08
	and $3F16.w		; 2D 16 3F
	tsb $3E.b		; 04 3E
	ora $3B.b,S		; 03 3B
	tsb $35.b		; 04 35
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	trb $1E.b		; 14 1E
	php		; 08
	asl $070A.w		; 0E 0A 07
	tsb $07.b		; 04 07
	ora $03.b,S		; 03 03
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	brk $7E.b		; 00 7E
	clc		; 18
	ply		; 7A
	trb $74.b		; 14 74
	clc		; 18
	stz $38.b,X		; 74 38
	sei		; 78
	jsr $60B8.w		; 20 B8 60
	inx		; E8
	bmi  16.b		; 30 10
	bpl  60.b		; 10 3C
	bit $3C.b		; 24 3C
	plp		; 28
	sec		; 38
	jsr $0038.w		; 20 38 00
	bmi  16.b		; 30 10
	bvs  16.b		; 70 10
	bvs  64.b		; 70 40
	tsb $36.b		; 04 36
	rol $3E00.w,X		; 3E 00 3E
	trb $083E.w		; 1C 3E 08
	rol $3E08.w,X		; 3E 08 3E
	php		; 08
	rol $3E08.w,X		; 3E 08 3E
	php		; 08
	clc		; 18
	bpl   0.b		; 10 00
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	trb $1C.b		; 14 1C
	trb $1C.b		; 14 1C
	trb $1C.b		; 14 1C
	trb $1C.b		; 14 1C
	trb $04.b		; 14 04
	tsb $1F07.w		; 0C 07 1F
	asl $1F.b		; 06 1F
	tsb $041F.w		; 0C 1F 04
	and [$14.b],Y		; 37 14
	and [$04.b],Y		; 37 04
	adc [$34.b]		; 67 34
	adc [$03.b]		; 67 03
	brk $08.b		; 00 08
	php		; 08
	ora #$0309.w		; 09 09 03
	ora $1B.b,S		; 03 1B
	ora ($0A.b,S),Y		; 13 0A
	cop $3A.b		; 02 3A
	jsl $B0021A.l		; 22 1A 02 B0
	jsr ($FC20.w,X)		; FC 20 FC
	jsr $60FC.w		; 20 FC 60
	jsr ($BC20.w,X)		; FC 20 BC
	jsr $20B8.w		; 20 B8 20
	clv		; B8
	cpx #$B8.b		; E0 B8
	php		; 08
	php		; 08
	tya		; 98
	tya		; 98
	tya		; 98
	tya		; 98
	clc		; 18
	clc		; 18
	cli		; 58
	clc		; 18
	bne -112.b		; D0 90
	bne -112.b		; D0 90
	bvc  16.b		; 50 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	eor $4FB000.l		; 4F 00 B0 4F
	sta $00007F.l		; 8F 7F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	bpl -32.b		; 10 E0
	inx		; E8
	bvc -24.b		; 50 E8
	bvc 104.b		; 50 68
	bcc -92.b		; 90 A4
	cld		; D8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	cpy #$00.b		; C0 00
	bvc  16.b		; 50 10
	bpl  16.b		; 10 10
	pha		; 48
	pha		; 48
	rol $0260.w		; 2E 60 02
	ror $08.b		; 66 08
	and $0F14.w,Y		; 39 14 0F
	plx		; FA
	ora $7D6FF6.l		; 0F F6 6F 7D
	ldx $BD.b,Y		; B6 BD
	pha		; 48
	ora $243D00.l,X		; 1F 00 3D 24
	ora [$11.b],Y		; 17 11
	asl A		; 0A
	asl A		; 0A
	ora $89E904.l		; 0F 04 E9 89
	sbc ($42.b)		; F2 42
	ply		; 7A
	bmi -110.b		; 30 92
	cpx $DC22.w		; EC 22 DC
	.db $42, $BC		; 42 BC
	.db $82, $7C, $FC		; 82 7C FC
	brk $F4.b		; 00 F4
	pla		; 68
	ror $DED4.w		; 6E D4 DE
	tay		; A8
	jsr $8020.w		; 20 20 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	bpl -16.b		; 10 F0
	bit $E0.b		; 24 E0
	pha		; 48
	and $7FBF1F.l,X		; 3F 1F BF 7F
	lda $7FBF7F.l,X		; BF 7F BF 7F
	adc $3F9F3F.l,X		; 7F 3F 9F 3F
	cmp $2FEF5F.l,X		; DF 5F EF 2F
	ora $7F1FDF.l		; 0F DF 1F 7F
	ora $7F1F7F.l,X		; 1F 7F 1F 7F
	ora $7F1FBF.l,X		; 1F BF 1F 7F
	ora $3F077F.l		; 0F 7F 07 3F
	sbc ($C7.b),Y		; F1 C7
	cld		; D8
.INDEX 8
	sep #$D9		; E2 D9
	cpx #$EE.b		; E0 EE
	cmp $EA.b,S		; C3 EA
	cmp $B8.b,S		; C3 B8
	wai		; CB
	sta $9EC5.w,X		; 9D C5 9E
	lda ($82.b,X)		; A1 82
	rep #$80		; C2 80
	sbc ($80.b,X)		; E1 80
.INDEX 8
	sep #$92		; E2 92
	cmp ($92.b,S),Y		; D3 92
	cmp [$80.b],Y		; D7 80
	cmp $00E780.l		; CF 80 E7 00
	sbc ($DD.b,X)		; E1 DD
	sbc $FFEFDD.l		; EF DD EF FF
	ora $857F.w,X		; 1D 7F 85
	sbc $3926E0.l,X		; FF E0 26 39
	dec $19.b,X		; D6 19
	bne  25.b		; D0 19
	sbc $10FF10.l,X		; FF 10 FF 10
	eor $9D40.w,X		; 5D 40 9D
	tya		; 98
	brk $00.b		; 00 00
	bne  16.b		; D0 10
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	phx		; DA
	ldy $DC.b,X		; B4 DC
	bcs  -8.b		; B0 F8
	cpy $E0.b		; C4 E0
	trb $7EB8.w		; 1C B8 7E
	cpy #$C6.b		; C0 C6
	ldy $3C86.w,X		; BC 86 3C
	stx $FC.b		; 86 FC
	pha		; 48
	sed		; F8
	pha		; 48
	cpy #$00.b		; C0 00
	tya		; 98
	tya		; 98
	mvp $3C,$44		; 44 44 3C
	tsb $78.b		; 04 78
	brk $F8.b		; 00 F8
	bra   8.b		; 80 08
	adc $3C.b,S		; 63 3C
	adc [$14.b]		; 67 14
	lsr $30.b		; 46 30
	lsr $38.b		; 46 38
	lsr $4C28.w		; 4E 28 4C
	jsr $E0CC.w		; 20 CC E0
	jmp $223E.w		; 4C 3E 22
	inc A		; 1A
	cop $38.b		; 02 38
	brk $3C.b		; 00 3C
	tsb $34.b		; 04 34
	tsb $30.b		; 04 30
	brk $78.b		; 00 78
	pha		; 48
	sec		; 38
	php		; 08
	rol $3CE3.w,X		; 3E E3 3C
	sbc ($3C.b,X)		; E1 3C
	adc ($3C.b,X)		; 61 3C
	adc ($2C.b,X)		; 61 2C
	adc ($1C.b,X)		; 61 1C
	adc ($10.b),Y		; 71 10
	and ($0E.b),Y		; 31 0E
	and $5E405C.l,X		; 3F 5C 40 5E
	rti		; 40

	asl $1E00.w,X		; 1E 00 1E
	brk $1E.b		; 00 1E
	brk $2E.b		; 00 2E
	jsr $000E.w		; 20 0E 00
	bpl  16.b		; 10 10
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
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
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora [$02.b]		; 07 02
	ora $000005.l		; 0F 05 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $02.b		; 00 02
	ora ($05.b,X)		; 01 05
	ora [$0A.b]		; 07 0A
	ora [$0D.b]		; 07 0D
	ora $13061A.l		; 0F 1A 06 13
	clc		; 18
	and ($08.b,S),Y		; 33 08
	and $34.b,S		; 23 34
	adc [$19.b]		; 67 19
	lsr $0202.w		; 4E 02 02
	brk $01.b		; 00 01
	tsb $00.b		; 04 00
	tsb $0E00.w		; 0C 00 0E
	cop $1C.b		; 02 1C
	ora ($18.b,X)		; 01 18
	ora ($34.b,X)		; 01 34
	tsb $01.b		; 04 01
	jsr ($807D.w,X)		; FC 7D 80
	inc $F218.w,X		; FE 18 F2
	bmi -89.b		; 30 A7
	jmp ($5CB5.w)		; 6C B5 5C
	adc ($3D.b),Y		; 71 3D
	rtl		; 6B

	dec A		; 3A
	sei		; 78
	rti		; 40

	jsr $5920.w		; 20 20 59
	eor $3D11.w,Y		; 59 11 3D
	tsb $7C.b		; 04 7C
	trb $5E.b		; 14 5E
	bmi  63.b		; 30 3F
	brk $3E.b		; 00 3E
	rol $19.b,X		; 36 19
	ora $020500.l,X		; 1F 00 05 02
	asl A		; 0A
	ora $0A.b		; 05 0A
	ora $15.b		; 05 15
	asl A		; 0A
	ora $0A.b,X		; 15 0A
	phd		; 0B
	tsb $01.b		; 04 01
	clc		; 18
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	phd		; 0B
	ora ($0B.b,X)		; 01 0B
	ora ($06.b,X)		; 01 06
	cop $05.b		; 02 05
	cop $02.b		; 02 02
	ora $01.b		; 05 01
	asl $03.b		; 06 03
	ora [$02.b]		; 07 02
	asl $02.b		; 06 02
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	asl $02.b		; 06 02
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $46.b		; 00 46
	sbc $39CF32.l,X		; FF 32 CF 39
	dec $AD.b		; C6 AD
	phy		; 5A
	sbc $10.b,S		; E3 10
	lda ($4A.b),Y		; B1 4A
	cmp $2E.b,X		; D5 2E
	tsa		; 3B
	ror A		; 6A
	lda $C5B9.w,Y		; B9 B9 C5
	cmp $46.b		; C5 46
	lsr $12.b		; 46 12
	ora ($1C.b)		; 12 1C
	bpl  68.b		; 10 44
	rti		; 40

	brk $2A.b		; 00 2A
	bit $2A.b		; 24 2A
	pei ($E8.b)		; D4 E8
	mvn $0C,$E8		; 54 E8 0C
	beq -116.b		; F0 8C
	bvs  77.b		; 70 4D
	bcs 107.b		; B0 6B
	pei ($72.b)		; D4 72
	sty $E8B4.w		; 8C B4 E8
	php		; 08
	php		; 08
	ldy #$A0.b		; A0 A0
	rts		; 60

	rts		; 60

	jsr $8020.w		; 20 20 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra  -1.b		; 80 FF
	.db $82, $FF, $00		; 82 FF 00
	cmp [$18.b]		; C7 18
	sbc $00.b,X		; F5 00
	dex		; CA
	ora $F7.b		; 05 F7
	cop $88.b		; 02 88
	brk $57.b		; 00 57
	sta $008808.l		; 8F 08 88 00
	bvs  56.b		; 70 38
	ply		; 7A
	asl A		; 0A
	ply		; 7A
	and $75.b,X		; 35 75
	php		; 08
	asl A		; 0A
	bvs 119.b		; 70 77
	jsr $FEAF.w		; 20 AF FE
	tsb $F6.b		; 04 F6
	phd		; 0B
	trb $CD.b		; 14 CD
	adc [$0D.b],Y		; 77 0D
	stx $0C.b,Y		; 96 0C
	adc $8B04.w,Y		; 79 04 8B
	asl $50.b		; 06 50
	stx $84.b		; 86 84
	sty $00.b		; 84 00
	bvs -30.b		; 70 E2
	beq -126.b		; F0 82
	beq  99.b		; F0 63
	bvs -121.b		; 70 87
	sty $75.b		; 84 75
	stz $23.b,X		; 74 23
	ldx #$B7.b		; A2 B7
	eor [$7A.b],Y		; 57 7A
	txa		; 8A
	adc $FFB5.w		; 6D B5 FF
	jsl $EF75AF.l		; 22 AF 75 EF
	adc $ED.b,X		; 75 ED
	adc $52FF6D.l,X		; 7F 6D FF 52
	ora $B52FA8.l,X		; 1F A8 2F B5
	ora [$AA.b]		; 07 AA
	txa		; 8A
	adc $7D08.w,X		; 7D 08 7D
	php		; 08
	adc $00FF00.l,X		; 7F 00 FF 00
	rtl		; 6B

	mvn $94,$E8		; 54 E8 94
	ldy $48.b,X		; B4 48
	jsr ($B200.w,X)		; FC 00 B2
	jmp ($60BE.w)		; 6C BE 60
	lda $B5E6.w,Y		; B9 E6 B5
	phx		; DA
	bpl -64.b		; 10 C0
	bcc -128.b		; 90 80
	pla		; 68
	jsr $A8A8.w		; 20 A8 A8
	cpx $F480.w		; EC 80 F4
	sty $F6.b,X		; 94 F6
	bpl  -6.b		; 10 FA
	jsr $19C0.w		; 20 C0 19
	cpy #$19.b		; C0 19
	cpx #$39.b		; E0 39
	cpx #$30.b		; E0 30
	ldy #$30.b		; A0 30
	ldy #$30.b		; A0 30
	bra  48.b		; 80 30
	bra  48.b		; 80 30
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	bne  16.b		; D0 10
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	bit $3886.w,X		; 3C 86 38
	.db $82, $78, $C2		; 82 78 C2
	sei		; 78
.INDEX 16
	rep #$58		; C2 58
.INDEX 16
	rep #$58		; C2 58
	cmp $18.b,S		; C3 18
	cmp $1E.b,S		; C3 1E
	cmp $F8.b,S		; C3 F8
	bra  -4.b		; 80 FC
	bra -68.b		; 80 BC
	bra  60.b		; 80 3C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	cop $7E.b		; 02 7E
	.db $42, $7C		; 42 7C
	rti		; 40

	ora $06.b,S		; 03 06
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora [$0C.b]		; 07 0C
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	bra -48.b		; 80 D0
	cpx #$6050.w		; E0 50 60
	bne -96.b		; D0 A0
	beq -64.b		; F0 C0
	bvs -64.b		; 70 C0
	cpx #$C080.w		; E0 80 C0
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	cpy #$E000.w		; C0 00 E0
	bra -96.b		; 80 A0
	cpy #$00C0.w		; C0 C0 00
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	jsr $20F8.w		; 20 F8 20
	sed		; F8
	jsr $70BC.w		; 20 BC 70
	jmp ($7E10.w,X)		; 7C 10 7E
	php		; 08
	adc $000F0C.l,X		; 7F 0C 0F 00
	bvs  80.b		; 70 50
	bvs  80.b		; 70 50
	bvs  80.b		; 70 50
	sei		; 78
	php		; 08
	sec		; 38
	plp		; 28
	trb $0E14.w		; 1C 14 0E
	cop $00.b		; 02 00
	brk $1C.b		; 00 1C
	and $387F18.l,X		; 3F 18 7F 38
	adc $084E08.l,X		; 7F 08 4E 08
	dec $CE48.w		; CE 48 CE
	php		; 08
	stx $8C28.w		; 8E 28 8C
	cop $02.b		; 02 02
	rol $26.b		; 26 26
	asl $06.b		; 06 06
	bit $04.b,X		; 34 04
	stz $44.b,X		; 74 44
	bit $04.b,X		; 34 04
	stz $04.b,X		; 74 04
	bvs   0.b		; 70 00
	clc		; 18
	inc $FE1C.w,X		; FE 1C FE
	bpl 114.b		; 10 72
	bpl 115.b		; 10 73
	ora ($73.b)		; 12 73
	bpl 113.b		; 10 71
	trb $31.b		; 14 31
	tsb $31.b		; 04 31
	stz $64.b		; 64 64
	rts		; 60

	rts		; 60

	bit $2E20.w		; 2C 20 2E
	jsl $2E202C.l		; 22 2C 20 2E
	jsr $000E.w		; 20 0E 00
	ora $C37811.l,X		; 1F 11 78 C3
	jmp ($3CC7.w,X)		; 7C C7 3C
	sta [$3C.b]		; 87 3C
	stx $3C.b		; 86 3C
	stx $34.b		; 86 34
	stx $38.b		; 86 38
	stx $8C08.w		; 8E 08 8C
	rol $3A02.w,X		; 3E 02 3A
	cop $7A.b		; 02 7A
	cop $78.b		; 02 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $74.b		; 00 74
	tsb $70.b		; 04 70
	brk $10.b		; 00 10
	dec $3C.b		; C6 3C
	inc $28.b		; E6 28
	.db $62, $0C, $62		; 62 0C 62
	trb $1472.w		; 1C 72 14
	and ($04.b)		; 32 04
	and ($06.b,S),Y		; 33 06
	and ($7C.b,S),Y		; 33 7C
	mvp $40,$58		; 44 58 40
	trb $3C00.w		; 1C 00 3C
	jsr $202C.w		; 20 2C 20
	tsb $1E00.w		; 0C 00 1E
	ora ($1C.b)		; 12 1C
	bpl  44.b		; 10 2C
	asl $20.b		; 06 20
	asl $7E.b		; 06 7E
	jsr $1C7A.w		; 20 7A 1C
	jmp ($7C10.w,X)		; 7C 10 7C
	bpl 116.b		; 10 74
	clc		; 18
	sei		; 78
	bmi  24.b		; 30 18
	brk $1C.b		; 00 1C
	tsb $20.b		; 04 20
	brk $3C.b		; 00 3C
	jsr $2838.w		; 20 38 28
	sec		; 38
	plp		; 28
	sec		; 38
	jsr $0030.w		; 20 30 00
	bmi 100.b		; 30 64
	tsb $60.b		; 04 60
	ror $5E04.w,X		; 7E 04 5E
	sec		; 38
	rol $3E08.w,X		; 3E 08 3E
	php		; 08
	rol $1E18.w		; 2E 18 1E
	tsb $0018.w		; 0C 18 00
	sec		; 38
	jsr $0004.w		; 20 04 00
	bit $1C04.w,X		; 3C 04 1C
	trb $1C.b		; 14 1C
	trb $1C.b		; 14 1C
	tsb $0C.b		; 04 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	cop $06.b		; 02 06
	ora $1B.b		; 05 1B
	asl A		; 0A
	ora $0004.w,X		; 1D 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($05.b,X)		; 01 05
	tsb $0E08.w		; 0C 08 0E
	brk $06.b		; 00 06
	tsb $CD.b		; 04 CD
	bpl 115.b		; 10 73
	and ($1E.b,X)		; 21 1E
	beq  15.b		; F0 0F
	sbc ($EE.b),Y		; F1 EE
	sbc [$6D.b],Y		; F7 6D
	adc $14FFB5.l,X		; 7F B5 FF 14
	tda		; 7B
	eor #$222E.w		; 49 2E 22
	trb $101C.w		; 1C 1C 10
	bpl -18.b		; 10 EE
	asl $88E9.w		; 0E E9 88
	sbc ($40.b),Y		; F1 40
	bpl   0.b		; 10 00
	jmp ($7CB0.w,X)		; 7C B0 7C
	clv		; B8
	adc $78.b,X		; 75 78
	bit #$7270.w		; 89 70 72
	ora ($03.b,X)		; 01 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	cop $30.b		; 02 30
	bcs  48.b		; B0 30
	clv		; B8
	brk $F8.b		; 00 F8
	brk $70.b		; 00 70
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	and $7F3F7F.l,X		; 3F 7F 3F 7F
	ora $64E49F.l,X		; 1F 9F E4 64
	xce		; FB
	tas		; 1B
	sbc $4AFF04.l,X		; FF 04 FF 4A
	tyx		; BB
	dec $FF1F.w,X		; DE 1F FF
	ora $FF0EFF.l,X		; 1F FF 0E FF
	brk $7F.b		; 00 7F
	tas		; 1B
	ora $DB4444.l,X		; 1F 44 44 DB
	sta ($DF.b),Y		; 91 DF
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $27.b		; 00 27
	brk $58.b		; 00 58
	and [$47.b]		; 27 47
	and $007FA3.l,X		; 3F A3 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $08.b,S		; 03 08
	php		; 08
	jmp $00005C.l		; 5C 5C 00 00
	beq   0.b		; F0 00
	php		; 08
	beq -12.b		; F0 F4
	tay		; A8
	pea $3428.w		; F4 28 34
	iny		; C8
	cmp ($EC.b)		; D2 EC
	ror A		; 6A
	pea $0000.w		; F4 00 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	cpx #$2800.w		; E0 00 28
	php		; 08
	dey		; 88
	dey		; 88
	bit $24.b		; 24 24
	sty $84.b		; 84 84
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	bcs -128.b		; B0 80
	bvs -96.b		; 70 A0
	sed		; F8
	bvs  -4.b		; 70 FC
	bpl 124.b		; 10 7C
	php		; 08
	dec A		; 3A
	tsb $0080.w		; 0C 80 00
	cpy #$4000.w		; C0 00 40
	brk $A0.b		; 00 A0
	bra 112.b		; 80 70
	brk $78.b		; 00 78
	pla		; 68
	sec		; 38
	bmi  28.b		; 30 1C
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $06.b,S		; 03 06
	ora $07.b,S		; 03 07
	ora $05.b,S		; 03 05
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	bra  96.b		; 80 60
	bra -96.b		; 80 A0
	rti		; 40

	jsr $C0C0.w		; 20 C0 C0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	inc A		; 1A
	and ($74.b,S),Y		; 33 74
	and [$68.b]		; 27 68
	and $E41CF3.l		; 2F F3 1C E4
	cli		; 58
	sed		; F8
	cpy #$A0D0.w		; C0 D0 A0
	ldy #$0D40.w		; A0 40 0D
	ora ($1B.b,X)		; 01 1B
	ora $17.b,S		; 03 17
	ora [$4C.b]		; 07 4C
	jmp $98D8.w		; 4C D8 98
	cpx #$E020.w		; E0 20 E0
	rti		; 40

	cpy #$0080.w		; C0 80 00
	beq   0.b		; F0 00
	cpx #$4080.w		; E0 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C0E0.w		; E0 E0 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvp $84,$B8		; 44 B8 84
	sei		; 78
	tsb $F8.b		; 04 F8
	pea $E808.w		; F4 08 E8
	bne -40.b		; D0 D8
	tay		; A8
	ldx $54.b,Y		; B6 54
	inc $0008.w,X		; FE 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	jsr $4CE8.w		; 20 E8 4C
	cpy $9C.b		; C4 9C
	brk $08.b		; 00 08
	cpx $F816.w		; EC 16 F8
	phd		; 0B
	inc $03.b,X		; F6 03
	bit $01.b,X		; 34 01
	dex		; CA
	ora #$0800.w		; 09 00 08
	sbc [$07.b],Y		; F7 07
	cpx #$0007.w		; E0 07 00
	bne   6.b		; D0 06
	rep #$0C		; C2 0C
	cpy #$C0CE.w		; C0 CE C0
	and [$31.b]		; 27 31
	inx		; E8
	sbc $00CF03.l,X		; FF 03 CF 00
	ora $23C3A3.l		; 0F A3 C3 23
	cmp $13.b,S		; C3 13
	jsr $C1F2.w		; 20 F2 C1
	sbc #$D810.w		; E9 10 D8
	ldy #$48F4.w		; A0 F4 48
	jsr ($0060.w,X)		; FC 60 00
	cmp [$00.b]		; C7 00
	cmp [$00.b]		; C7 00
	cpx #$C100.w		; E0 00 C1
	bpl   0.b		; 10 00
	cpx #$6840.w		; E0 40 68
	jsr $1070.w		; 20 70 10
	ror $86B0.w,X		; 7E B0 86
	sei		; 78
	and [$84.b],Y		; 37 84
	adc $7E02.w,Y		; 79 02 7E
	ora $82.b,S		; 03 82
	sta $78.b,S		; 83 78
	xce		; FB
	php		; 08
	sbc $08B8.w,Y		; F9 B8 08
	brk $00.b		; 00 00
	sei		; 78
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $86.b		; 00 86
	.db $82, $F6, $F0		; 82 F6 F0
	ora $060F02.l		; 0F 02 0F 06
	asl $1D05.w,X		; 1E 05 1D
	asl A		; 0A
	dec A		; 3A
	tsb $3E.b		; 04 3E
	bpl  53.b		; 10 35
	asl A		; 0A
	ora $040600.l,X		; 1F 00 06 04
	ora [$01.b]		; 07 01
	ora $040E0A.l		; 0F 0A 0E 04
	trb $1018.w		; 1C 18 10
	brk $1E.b		; 00 1E
	trb $00.b		; 14 00
	brk $07.b		; 00 07
	clc		; 18
	ora [$14.b]		; 07 14
	tas		; 1B
	bmi  10.b		; 30 0A
	jsr $640F.w		; 20 0F 64
	ply		; 7A
	tsb $B4BB.w		; 0C BB B4
	and $0880.w,X		; 3D 80 08
	ora #$0108.w		; 09 08 01
	tsb $1D01.w		; 0C 01 1D
	ora ($38.b,X)		; 01 38
	jsr $8505.w		; 20 05 85
	bcs -63.b		; B0 C1
	php		; 08
	iny		; C8
	cmp $8800.w,X		; DD 00 88
	adc $2A00DD.l,X		; 7F DD 00 2A
	trb $DF.b		; 14 DF
	php		; 08
	cop $00.b		; 02 00
	cmp $7FBF3E.l,X		; DF 3E BF 7F
	jsl $EB7FE3.l		; 22 E3 7F EB
	rol A		; 2A
	xba		; EB
	cmp $D5.b,X		; D5 D5
	jsr $C128.w		; 20 28 C1
	sbc $BE0C.w,X		; FD 0C BE
	asl $0F7F.w,X		; 1E 7F 0F
	ora $14.b		; 05 14
	phd		; 0B
	ora $1304.w,X		; 1D 04 13
	php		; 08
	ora $180818.l		; 0F 18 08 18
	ora $1B.b,S		; 03 1B
	ora ($33.b)		; 12 33
	ora $00.b		; 05 00
	php		; 08
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0C.b		; 00 0C
	php		; 08
	ora $FB01.w		; 0D 01 FB
	lda $9FDF37.l,X		; BF 37 DF 9F
	jsr $1BD5.w		; 20 D5 1B
	cmp $1B.b,X		; D5 1B
	bit $3B.b		; 24 3B
	dec $0EF1.w		; CE F1 0E
	sbc ($BF.b),Y		; F1 BF
	brk $1F.b		; 00 1F
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $D1.b		; 00 D1
	ora ($20.b),Y		; 11 20
	jsr $E0E0.w		; 20 E0 E0
	ora $1CE7.w,Y		; 19 E7 1C
	sbc $56.b,S		; E3 56
	lda $8871.w		; AD 71 88
	cld		; D8
	and $6A.b		; 25 6A
	ora [$1D.b],Y		; 17 1D
	and $17.b,X		; 35 17
	bmi  98.b		; 30 62
	.db $62, $A3, $A3		; 62 A3 A3
	bit #$0E89.w		; 89 89 0E
	php		; 08
	jsl $150020.l		; 22 20 00 15
	ora ($15.b)		; 12 15
	ora $F42A00.l		; 0F 00 2A F4
	stx $78.b		; 86 78
	dec $38.b		; C6 38
	ldx $58.b		; A6 58
	lda $6A.b,X		; B5 6A
	lda $DA46.w,Y		; B9 46 DA
	stz $49.b,X		; 74 49
	ror $D0.b,X		; 76 D0
	bne  48.b		; D0 30
	bmi  16.b		; 30 10
	bpl  64.b		; 10 40
	rti		; 40

	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	bcc  16.b		; 90 10
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
	ora $021F02.l,X		; 1F 02 1F 02
	and $1A.b		; 25 1A
	rol $0000.w,X		; 3E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	tsb $0002.w		; 0C 02 00
	asl $0004.w,X		; 1E 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ror $3F01.w,X		; 7E 01 3F
	php		; 08
	ora [$06.b],Y		; 17 06
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3D.b		; 00 3D
	bit $1E1E.w,X		; 3C 1E 1E
	ora [$07.b]		; 07 07
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sta $AB7CE0.l,X		; 9F E0 7C AB
	adc [$8B.b],Y		; 77 8B
	and $DF33D7.l		; 2F D7 33 DF
	rti		; 40

	lda $00BE41.l,X		; BF 41 BE 00
	brk $40.b		; 00 40
	rti		; 40

	tsa		; 3B
	ora $34.b,S		; 03 34
	bmi  72.b		; 30 48
	rti		; 40

	tsb $9A0C.w		; 0C 0C 9A
	txs		; 9A
	bmi  48.b		; 30 30
	tad		; 5B
	bit $2D.b		; 24 2D
	ora ($17.b)		; 12 17
	ora #$030D.w		; 09 0D 03
	ora [$00.b]		; 07 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $1B09.w		; 2D 09 1B
	ora #$020B.w		; 09 0B 02
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $EDDEAC.l,X		; DF AC DE ED
	sbc $F9D3.w		; ED D3 F9
	cpx $EB.b		; E4 EB
	clc		; 18
	ora ($F0.b,S),Y		; 13 F0
	asl $7E.b		; 06 7E
	ora ($1F.b,X)		; 01 1F
	inc $FD52.w,X		; FE 52 FD
	ora ($FA.b),Y		; 11 FA
	rol A		; 2A
	sbc [$04.b]		; E7 04
	ora [$10.b],Y		; 17 10
	adc $181960.l		; 6F 60 19 18
	asl $06.b		; 06 06
	eor $F033C0.l		; 4F C0 33 F0
	sty $A1FC.w		; 8C FC A1
	and $FC0FE8.l,X		; 3F E8 0F FC
	ora [$7E.b]		; 07 7E
	ora $9F.b,S		; 03 9F
	sta ($3F.b,X)		; 81 3F
	brk $0F.b		; 00 0F
	brk $43.b		; 00 43
	rti		; 40

	dec $16.b,X		; D6 16
	sbc ($01.b),Y		; F1 01
	sed		; F8
	brk $FC.b		; 00 FC
	brk $7E.b		; 00 7E
	brk $A0.b		; 00 A0
	sec		; 38
	beq  28.b		; F0 1C
	beq   6.b		; F0 06
	tya		; 98
	sta $66.b,S		; 83 66
	sbc $12.b,S		; E3 12
	sbc ($0C.b,S),Y		; F3 0C
	sbc $C0FF38.l,X		; FF 38 FF C0
	brk $E8.b		; 00 E8
	php		; 08
	jsr ($7E04.w,X)		; FC 04 7E
	cop $9C.b		; 02 9C
	bra 108.b		; 80 6C
	rts		; 60

	ora ($12.b)		; 12 12
	lsr $46.b		; 46 46
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
	eor ($76.b,S),Y		; 53 76
	stx $F7.b		; 86 F7
	ldx $5ECF.w,Y		; BE CF 5E
	lda $27BE5C.l,X		; BF 5C BE 27
	sbc ($53.b,S),Y		; F3 53
	adc $3CA1.w,Y		; 79 A1 3C
	bra  30.b		; 80 1E
	.db $42, $5E		; 42 5E
	asl $0E.b		; 06 0E
	asl $0D3E.w		; 0E 3E 0D
	and $087F.w,X		; 3D 7F 08
	ror $F810.w,X		; 7E 10 F8
	jsr $50E8.w		; 20 E8 50
	bne  96.b		; D0 60
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $3816.w,X		; 1E 16 38
	plp		; 28
	bvs  80.b		; 70 50
	bvs  32.b		; 70 20
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F3.b		; 00 F3
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	rti		; 40

	rti		; 40

	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	bpl   6.b		; 10 06
	and #$0C.b		; 29 0C
	eor $8F.b,S		; 43 8F
	bpl -41.b		; 10 D7
	php		; 08
	eor [$08.b],Y		; 57 08
	pld		; 2B
	trb $2F.b		; 14 2F
	bpl   0.b		; 10 00
	brk $19.b		; 00 19
	clc		; 18
	and ($30.b,S),Y		; 33 30
	adc ($72.b)		; 72 72
	rol A		; 2A
	.db $62, $2A, $22		; 62 2A 22
	asl $02.b,X		; 16 02
	asl $06.b,X		; 16 06
	brk $00.b		; 00 00
	iny		; C8
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

	sbc $FF0C.w,X		; FD 0C FF
	cop $FB.b		; 02 FB
	tsb $7A.b		; 04 7A
	sta $57.b		; 85 57
	lda #$DD.b		; A9 DD
	ror A		; 6A
	cmp $EE6A.w,X		; DD 6A EE
	eor $0C.b,X		; 55 0C
	asl $4240.w		; 0E 40 42
	mvn $D7,$50		; 54 50 D7
	eor ($FB.b)		; 52 FB
	eor ($FB.b)		; 52 FB
	sta ($FF.b),Y		; 91 FF
	sta $FF.b,X		; 95 FF
	tax		; AA
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$F800.w		; E0 00 F8
	brk $58.b		; 00 58
	ldx $F4.b		; A6 F4
	sta $D7D9E9.l		; 8F E9 D9 D7
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  96.b		; 80 60
	rts		; 60

	bcs  16.b		; B0 10
	dex		; CA
	lsr A		; 4A
	dec $10.b,X		; D6 10
	lda $0728A0.l		; AF A0 28 07
	bit $0F.b,X		; 34 0F
	jsr $181F.w		; 20 1F 18
	ora [$10.b]		; 07 10
	ora $130F10.l		; 0F 10 0F 13
	tsb $0906.w		; 0C 06 09
	ora [$07.b]		; 07 07
	phd		; 0B
	phd		; 0B
	ora $021D.w,X		; 1D 1D 02
	cop $04.b		; 02 04
	tsb $0C.b		; 04 0C
	tsb $0C0C.w		; 0C 0C 0C
	brk $01.b		; 00 01
	lsr A		; 4A
	lda $57.b,X		; B5 57
	tax		; AA
	rol A		; 2A
	cmp $29.b,X		; D5 29
	bne  85.b		; D0 55
	sty $0ED2.w		; 8C D2 0E
	sbc $0F.b,X		; F5 0F
	stx $2173.w		; 8E 73 21
	and ($20.b,X)		; 21 20
	jsr $000A.w		; 20 0A 00
	ora $000300.l		; 0F 00 03 00
	ora $04.b		; 05 04
	asl A		; 0A
	asl A		; 0A
	stz $04.b,X		; 74 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	and $33CF00.l,X		; 3F 00 CF 33
	lda $00004C.l,X		; BF 4C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	and $135F0C.l,X		; 3F 0C 5F 13
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	ora ($1F.b,X)		; 01 1F
	wai		; CB
	sec		; 38
	cmp $81F100.l,X		; DF 00 F1 81
	inx		; E8
	lda $0119E7.l		; AF E7 19 01
	ora ($00.b,X)		; 01 00
	brk $02.b		; 00 02
	cop $17.b		; 02 17
	bpl -65.b		; 10 BF
	bra -66.b		; 80 BE
	brk $96.b		; 00 96
	asl $C1.b		; 06 C1
	cpy #$C046.w		; C0 46 C0
	bmi -16.b		; 30 F0
	ora $73.b,S		; 03 73
	pea $9807.w		; F4 07 98
	ora $0CFFC0.l,X		; 1F C0 FF 0C
	beq -80.b		; F0 B0
	rti		; 40

	lda $404F80.l,X		; BF 80 4F 40
	stz $FB10.w		; 9C 10 FB
	ora $E7.b,S		; 03 E7
	ora [$30.b]		; 07 30
	bmi   0.b		; 30 00
	brk $C0.b		; 00 C0
	bra  24.b		; 80 18
	dec $FC20.w,X		; DE 20 FC
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $84.b		; A4 84
	bcc -112.b		; 90 90
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $7E43.w,X		; 3C 43 7E
	plp		; 28
	sbc $0FF410.l,X		; FF 10 F4 0F
	lda $1F5F5F.l		; AF 5F 5F 1F
	and [$0F.b],Y		; 37 0F
	ora $000000.l		; 0F 00 00 00
	bit $5004.w		; 2C 04 50
	rti		; 40

	jsr $472F.w		; 20 2F 47
	ora $003F07.l,X		; 1F 07 3F 00
	ora $8F0000.l		; 0F 00 00 8F
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
	ora $FF8000.l,X		; 1F 00 80 FF
	sbc $FEFEFC.l,X		; FF FC FE FE
	asl $030E.w		; 0E 0E 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FF0CFF.l,X		; FF FF 0C FF
	asl $0F.b		; 06 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $C0.b		; 00 C0
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
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	rti		; 40

	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -96.b		; 80 A0
	jsr $00FC.w		; 20 FC 00
	jmp.w [$FC80]		; DC 80 FC
	pha		; 48
	sbc $013C08.l,X		; FF 08 3C 01
	dec $9C09.w,X		; DE 09 9C
	adc ($DA.b,X)		; 61 DA
	ora ($60.b,X)		; 01 60
	rts		; 60

	tay		; A8
	php		; 08
	iny		; C8
	bra  40.b		; 80 28
	jsr $C2C2.w		; 20 C2 C2
	plp		; 28
	nop		; EA
	ror A		; 6A
	nop		; EA
	bit $E6.b		; 24 E6
	cld		; D8
	and $D7.b		; 25 D7
	iny		; C8
	ora ($C8.b,S),Y		; 13 C8
	sta [$C0.b],Y		; 97 C0
	ldx $C0.b,Y		; B6 C0
	tsb $C080.w		; 0C 80 C0
	brk $20.b		; 00 20
	rti		; 40

	rol $26.b		; 26 26
	dey		; 88
	inx		; E8
	tsb $88EE.w		; 0C EE 88
	cpx $CC88.w		; EC 88 CC
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	phd		; 0B
	bit $0A.b,X		; 34 0A
	adc $15.b		; 65 15
	txa		; 8A
	sta $AE06.w,Y		; 99 06 AE
	ora ($6E.b),Y		; 11 6E
	ora ($6F.b),Y		; 11 6F
	bpl  87.b		; 10 57
	plp		; 28
	trb $10.b		; 14 10
	and $30.b,X		; 35 30
	ror A		; 6A
	rts		; 60

	ror $E0.b		; 66 E0
	eor $44.b,X		; 55 44
	ora $04.b,X		; 15 04
	ora $05.b,X		; 15 05
	and $8905.w		; 2D 05 89
	php		; 08
	sbc [$34.b],Y		; F7 34
	sbc $FB0A.w,X		; FD 0A FB
	tsb $F5.b		; 04 F5
	asl A		; 0A
	ldx $BB53.w		; AE 53 BB
	cmp $BB.b,X		; D5 BB
	cmp $00.b,X		; D5 00
	ror $3C00.w,X		; 7E 00 3C
	txa		; 8A
	dey		; 88
	lda $A1.b		; A5 A1
	ldx $F7A4.w		; AE A4 F7
	ldy $F7.b		; A4 F7
	jsl $002AFF.l		; 22 FF 2A 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	ora ($04.b,X)		; 01 04
	ora $04.b,S		; 03 04
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	ora $02.b,S		; 03 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $9F.b		; 00 9F
	cpx #$AB7C.w		; E0 7C AB
	adc [$8B.b],Y		; 77 8B
	and $DF33D7.l		; 2F D7 33 DF
	rti		; 40

	lda $000000.l,X		; BF 00 00 00
	brk $40.b		; 00 40
	rti		; 40

	tsa		; 3B
	ora $34.b,S		; 03 34
	bmi  72.b		; 30 48
	rti		; 40

	tsb $9A0C.w		; 0C 0C 9A
	txs		; 9A
	tsb $02.b		; 04 02
	inc A		; 1A
	phd		; 0B
	ora $35.b,X		; 15 35
	and [$65.b]		; 27 65
	eor ($C2.b)		; 52 C2
	tax		; AA
	txa		; 8A
	eor ($1D.b),Y		; 51 1D
	lda ($3B.b,X)		; A1 3B
	brk $0B.b		; 00 0B
	cop $0F.b		; 02 0F
	ora $0F.b		; 05 0F
	trb $0D.b		; 14 0D
	sec		; 38
	ora [$70.b]		; 07 70
	ora [$E8.b]		; 07 E8
	phd		; 0B
	bne  23.b		; D0 17
	ldx $5F43.w,Y		; BE 43 5F
	plp		; 28
	and $5650.w		; 2D 50 56
	jmp ($C0FE.w)		; 6C FE C0
	sbc $C4.b,S		; E3 C4
	inc $F3C1.w,X		; FE C1 F3
	cmp $74.b		; C5 74
	bit $3B.b,X		; 34 3B
	sta ($1B.b,S),Y		; 93 1B
	cmp #$0D.b		; C9 0D
	cpx #$C041.w		; E0 41 C0
	jmp $DCC1DC.l		; 5C DC C1 DC
	cmp $67DD.w		; CD DD 67
	ora $265F.w,Y		; 19 5F 26
	adc $107E08.l,X		; 7F 08 7E 10
	sed		; F8
	jsr $50E8.w		; 20 E8 50
	bne  96.b		; D0 60
	bvs   0.b		; 70 00
	ora $092F06.l,X		; 1F 06 2F 09
	asl $3816.w,X		; 1E 16 38
	plp		; 28
	bvs  80.b		; 70 50
	bvs  32.b		; 70 20
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $B0.b		; 00 B0
	jmp $1FE8.w		; 4C E8 1F
	cmp ($B3.b)		; D2 B3
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$60C0.w		; C0 C0 60
	jsr $9494.w		; 20 94 94
	lda $AE21.w		; AD 21 AE
	rts		; 60

	eor $F033C0.l		; 4F C0 33 F0
	sty $A1FC.w		; 8C FC A1
	and $FC0FE8.l,X		; 3F E8 0F FC
	ora [$7E.b]		; 07 7E
	ora $5F.b,S		; 03 5F
	rti		; 40

	and $000F00.l,X		; 3F 00 0F 00
	eor $40.b,S		; 43 40
	dec $16.b,X		; D6 16
	sbc ($01.b),Y		; F1 01
	sed		; F8
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $01.b,S		; 03 01
	ora $000700.l,X		; 1F 00 07 00
	ora $00.b,S		; 03 00
	ora $CF3803.l		; 0F 03 38 CF
	jsr $00DC.w		; 20 DC 00
	cpx $87.b		; E4 87
	asl $06.b		; 06 06
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $203F08.l		; 0F 08 3F 20
	lda $03BB80.l,X		; BF 80 BB 03
	sta $C04681.l,X		; 9F 81 46 C0
	bmi -16.b		; 30 F0
	sta $F3.b,S		; 83 F3
	pea $9807.w		; F4 07 98
	ora $04FFE0.l,X		; 1F E0 FF 04
	sed		; F8
	ror $BF00.w,X		; 7E 00 BF
	bra  79.b		; 80 4F
	rti		; 40

	trb $FB10.w		; 1C 10 FB
	ora $E7.b,S		; 03 E7
	ora [$18.b]		; 07 18
	clc		; 18
	cpy #$00C0.w		; C0 C0 00
	cpy #$E080.w		; C0 80 E0
	ldy #$F038.w		; A0 38 F0
	trb $06F0.w		; 1C F0 06
	tya		; 98
	sta $66.b,S		; 83 66
	sbc $12.b,S		; E3 12
	sbc ($00.b,S),Y		; F3 00
	brk $40.b		; 00 40
	rti		; 40

	cpy #$E800.w		; C0 00 E8
	php		; 08
	jsr ($7E04.w,X)		; FC 04 7E
	cop $9C.b		; 02 9C
	bra 108.b		; 80 6C
	rts		; 60

	tsb $38FF.w		; 0C FF 38
	sbc $20DE18.l,X		; FF 18 DE 20
	jsr ($F000.w,X)		; FC 00 F0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora ($12.b)		; 12 12
	lsr $46.b		; 46 46
	ldy $84.b		; A4 84
	bcc -112.b		; 90 90
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F8C0.w		; C0 C0 F8
	sed		; F8
	pha		; 48
	inx		; E8
	tay		; A8
	pla		; 68
	pla		; 68
	bmi  56.b		; 30 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F880.w		; C0 80 F8
	bvs  -4.b		; 70 FC
	rti		; 40

	jsr ($7C20.w,X)		; FC 20 7C
	brk $34.b		; 00 34
	brk $04.b		; 00 04
	beq -33.b		; F0 DF
	sbc ($0D.b,S),Y		; F3 0D
	sbc $00.b,S		; E3 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cpy $E10C.w		; CC 0C E1
	cpx #$0101.w		; E0 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $245B20.l,X		; 5F 20 5B 24
	and $1712.w		; 2D 12 17
	ora #$0D.b		; 09 0D
	ora $07.b,S		; 03 07
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $2D.b		; 00 2D
	ora $092D.w		; 0D 2D 09
	tas		; 1B
	ora #$0B.b		; 09 0B
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DD.b		; 00 DD
	tax		; AA
	cmp $EDDEAC.l,X		; DF AC DE ED
	sbc $F9D3.w		; ED D3 F9
	cpx $EB.b		; E4 EB
	clc		; 18
	ora ($F0.b,S),Y		; 13 F0
	asl $7E.b		; 06 7E
	sbc $52FE55.l,X		; FF 55 FE 52
	sbc $FA11.w,X		; FD 11 FA
	rol A		; 2A
	sbc [$04.b]		; E7 04
	ora [$10.b],Y		; 17 10
	adc $181960.l		; 6F 60 19 18
	asl $03.b		; 06 03
	plp		; 28
	ora [$34.b]		; 07 34
	ora $181F20.l		; 0F 20 1F 18
	ora [$10.b]		; 07 10
	ora $1F0F10.l		; 0F 10 0F 1F
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	ora [$0B.b]		; 07 0B
	phd		; 0B
	ora $021D.w,X		; 1D 1D 02
	cop $04.b		; 02 04
	tsb $0C.b		; 04 0C
	tsb $0000.w		; 0C 00 00
	eor ($BE.b,X)		; 41 BE
	lsr A		; 4A
	lda $57.b,X		; B5 57
	tax		; AA
	rol A		; 2A
	cmp $29.b,X		; D5 29
	bne  85.b		; D0 55
	sty $0ED2.w		; 8C D2 0E
	and $CF.b,X		; 35 CF
	bmi  48.b		; 30 30
	and ($21.b,X)		; 21 21
	jsr $0A20.w		; 20 20 0A
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	tsb $CA.b		; 04 CA
	asl A		; 0A
	rti		; 40

	adc ($88.b),Y		; 71 88
	ror $0B.b		; 66 0B
	stx $C7.b		; 86 C7
	cmp ($F3.b,X)		; C1 F3
	sbc $3EFFFB.l,X		; FF FB FF 3E
	sbc $A007C1.l,X		; FF C1 07 A0
	and [$40.b]		; 27 40
	eor [$00.b]		; 47 00
	dec $80.b		; C6 80
	sbc $FFE1.w,Y		; F9 E1 FF
	sbc ($FF.b,S),Y		; F3 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	sbc $0265C0.l,X		; FF C0 65 02
	cmp $C5E200.l,X		; DF 00 E2 C5
	inc $AEE0.w,X		; FE E0 AE
	ldy $CCCB.w		; AC CB CC
	stz $01D8.w		; 9C D8 01
	cmp $9E1A.w,X		; DD 1A 9E
	jsr $9D20.w		; 20 20 9D
	cmp $E1C1.w,X		; DD C1 E1
	lda #$FD.b		; A9 FD
	dey		; 88
	jsr ($F810.w,X)		; FC 10 F8
	sed		; F8
	brk $A0.b		; 00 A0
	rti		; 40

	rti		; 40

	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C8.b		; 00 C8
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
	bpl -69.b		; 10 BB
	mvn $38,$F6		; 54 F6 38
	asl $CC70.w,X		; 1E 70 CC
	bcc -48.b		; 90 D0
	tya		; 98
	cpx #$9008.w		; E0 08 90
	sei		; 78
	ldy #$40B0.w		; A0 B0 40
	rti		; 40

	php		; 08
	php		; 08
	brk $C0.b		; 00 C0
	bmi -112.b		; 30 90
	ldy #$F080.w		; A0 80 F0
	brk $E0.b		; 00 E0
	rts		; 60

	rti		; 40

	brk $00.b		; 00 00
	cpx #$00E0.w		; E0 E0 00
	bne  32.b		; D0 20
	beq  64.b		; F0 40
	cld		; D8
	rts		; 60

	cpx #$8010.w		; E0 10 80
	bpl -24.b		; 10 E8
	clc		; 18
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	rts		; 60

	rti		; 40

	rts		; 60

	jsr $0060.w		; 20 60 00
	brk $00.b		; 00 00
	rts		; 60

	pla		; 68
	brk $6C.b		; 00 6C
	sty $2F5C.w		; 8C 5C 2F
	sta $EDCF17.l,X		; 9F 17 CF ED
	ora $C3.b,S		; 03 C3
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $68.b		; 00 68
	adc $E1EFC6.l		; 6F C6 EF E1
	sbc $000300.l		; EF 00 03 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $06.b,S		; 03 06
	brk $0F.b		; 00 0F
	cop $0F.b		; 02 0F
	bpl  27.b		; 10 1B
	ora [$17.b]		; 07 17
	ora $000F17.l		; 0F 17 0F 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	tsb $18.b		; 04 18
	php		; 08
	brk $07.b		; 00 07
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	phd		; 0B
	ora [$06.b]		; 07 06
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $06.b		; 02 06
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora ($F0.b,X)		; 01 F0
	bra  -9.b		; 80 F7
	cmp $90EF30.l		; CF 30 EF 90
	ldy #$80A0.w		; A0 A0 80
	dec $80.b		; C6 80
	sta ($04.b,X)		; 81 04
	ora ($04.b,X)		; 01 04
	lda $C808A0.l		; AF A0 08 C8
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	sbc $AB.b		; E5 AB
	sbc [$A5.b]		; E7 A5
	adc $985CAC.l		; 6F AC 5C 98
	lda $319A38.l,X		; BF 38 9A 31
	eor $F0E9C0.l		; 4F C0 E9 F0
	and $38.b,S		; 23 38
	ora ($3C.b,X)		; 01 3C
	bra -68.b		; 80 BC
	phd		; 0B
	tsa		; 3B
	bpl 123.b		; 10 7B
	ora $77.b		; 05 77
	brk $F7.b		; 00 F7
	ror $F7.b		; 66 F7
	cmp $DF02.w		; CD 02 DF
	asl $DE.b,X		; 16 DE
	sta $FD.b,X		; 95 FD
	rol A		; 2A
	tda		; 7B
	ora $3F.b		; 05 3F
	bra 116.b		; 80 74
	ldy #$08F3.w		; A0 F3 08
	tsx		; BA
	dey		; 88
	lda [$81.b]		; A7 81
	lda [$02.b]		; A7 02
	asl $8C04.w		; 0E 04 8C
	bit #$C0.b		; 89 C0
	cpy #$AFAB.w		; C0 AB AF
	bit $802F.w		; 2C 2F 80
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	rti		; 40

	ldy #$50A0.w		; A0 A0 50
	cli		; 58
	bcs -76.b		; B0 B4
	cld		; D8
	.db $42, $AE		; 42 AE
	adc ($00.b,X)		; 61 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	rti		; 40

	brk $F0.b		; 00 F0
	rti		; 40

	cpx #$C088.w		; E0 88 C0
	bit $5E00.w,X		; 3C 00 5E
	rti		; 40

	cmp ($2C.b,S),Y		; D3 2C
	cmp $9D22.w,X		; DD 22 9D
	.db $62, $9F, $61		; 62 9F 61
	lda $41BF51.l		; AF 51 BF 41
	adc [$09.b],Y		; 77 09
	tsa		; 3B
	ora $2D.b		; 05 2D
	ora ($2B.b,X)		; 01 2B
	ora #$6B.b		; 09 6B
	ora #$6B.b		; 09 6B
	asl A		; 0A
	tad		; 5B
	asl A		; 0A
	tad		; 5B
	inc A		; 1A
	tas		; 1B
	ora ($17.b)		; 12 17
	ora ($FF.b)		; 12 FF
	jsr $14EB.w		; 20 EB 14
	eor $77A6.w,X		; 5D A6 77
	tax		; AA
	adc [$AB.b],Y		; 77 AB
	tyx		; BB
	mvn $59,$BE		; 54 BE 59
	ldx $2AD9.w,Y		; BE D9 2A
	rol A		; 2A
	eor $EE49.w,X		; 5D 49 EE
	pha		; 48
	sbc $54FF45.l		; EF 45 FF 54
	inc $FCAA.w,X		; FE AA FC
	ldy $F8.b		; A4 F8
	jsr $0080.w		; 20 80 00
	cpx #$6000.w		; E0 00 60
	tya		; 98
	bne  62.b		; D0 3E
	ldy $67.b		; A4 67
	eor $9FC1.w,X		; 5D C1 9F
	bra 103.b		; 80 67
	cpx #$0000.w		; E0 00 00
	bra -128.b		; 80 80
	cpy #$2840.w		; C0 40 28
	plp		; 28
	phy		; 5A
	.db $42, $BE		; 42 BE
	bra 127.b		; 80 7F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$7040.w		; C0 40 70
	cpx #$0038.w		; E0 38 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	brk $D0.b		; 00 D0
	bpl  64.b		; 10 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra -64.b		; 80 C0
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
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($1F.b,X)		; 01 1F
	ora ($67.b,X)		; 01 67
	inc A		; 1A
	lsr $7F25.w,X		; 5E 25 7F
	php		; 08
	jmp ($F810.w,X)		; 7C 10 F8
	jsr $0000.w		; 20 00 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $0A2F05.l,X		; 1F 05 2F 0A
	trb $3814.w		; 1C 14 38
	plp		; 28
	bvs  80.b		; 70 50
	inx		; E8
	bvc -48.b		; 50 D0
	rts		; 60

	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs  32.b		; 70 20
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora ($0E.b,X)		; 01 0E
	ora [$1B.b]		; 07 1B
	ora $1A0F1A.l		; 0F 1A 0F 1A
	ora $0F010F.l		; 0F 0F 01 0F
	asl $07.b		; 06 07
	brk $00.b		; 00 00
	ora ($06.b,X)		; 01 06
	ora [$0B.b]		; 07 0B
	ora $000F0A.l		; 0F 0A 0F 00
	ora $000100.l		; 0F 00 01 00
	asl $00.b		; 06 00
	brk $40.b		; 00 40
	bra -32.b		; 80 E0
	brk $F0.b		; 00 F0
	rti		; 40

	sed		; F8
	jsr $4CF8.w		; 20 F8 4C
	ldy $6E5E.w,X		; BC 5E 6E
	ora $000F27.l,X		; 1F 27 0F 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $B0.b		; 00 B0
	sty $60.b,X		; 94 60
	rol $1F4C.w		; 2E 4C 1F
	asl $1F.b		; 06 1F
	ora $1F.b,S		; 03 1F
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	php		; 08
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora [$50.b]		; 07 50
	ora $010000.l		; 0F 00 00 01
	ora ($03.b,X)		; 01 03
	ora $02.b,S		; 03 02
	cop $04.b		; 02 04
	tsb $04.b		; 04 04
	tsb $05.b		; 04 05
	ora $0F.b		; 05 0F
	ora $1F00E0.l		; 0F E0 00 1F
	cpx #$AB7C.w		; E0 7C AB
	adc [$8B.b],Y		; 77 8B
	and $DF33D7.l		; 2F D7 33 DF
	rti		; 40

	lda $00BE41.l,X		; BF 41 BE 00
	brk $C0.b		; 00 C0
	cpy #$033B.w		; C0 3B 03
	bit $30.b,X		; 34 30
	php		; 08
	brk $8C.b		; 00 8C
	sty $1A1A.w		; 8C 1A 1A
	bmi  48.b		; 30 30
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

	asl $09.b		; 06 09
	ora [$09.b]		; 07 09
	tsb $0A.b		; 04 0A
	trb $0B02.w		; 1C 02 0B
	and $1B.b		; 25 1B
	mvp $09,$D6		; 44 D6 09
	cmp $0A.b,X		; D5 0A
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	trb $11.b		; 14 11
	bit $20.b		; 24 20
	and #$60.b		; 29 60
	rol A		; 2A
	rts		; 60

	sbc [$E0.b],Y		; F7 E0
	sbc $FFE0.w,X		; FD E0 FF
	sbc ($FF.b),Y		; F1 FF
	sbc $BC7F7E.l,X		; FF 7E 7F BC
	ldx $50D2.w,Y		; BE D2 50
	sbc $E8E828.l		; EF 28 E8 E8
.ACCU 8
	sep #$EE		; E2 EE
	sbc ($F1.b),Y		; F1 F1
	ror $3CFF.w,X		; 7E FF 3C
	sbc $00FF18.l,X		; FF 18 FF 00
	jmp ($B8A8.w,X)		; 7C A8 B8
	adc ($8C.b,X)		; 61 8C
	sbc [$10.b]		; E7 10
	cmp ($8C.b)		; D2 8C
	jmp ($7880.w)		; 6C 80 78
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $9E.b		; 00 9E
	stz $1E18.w,X		; 9E 18 1E
	bit $10AC.w		; 2C AC 10
	bcs   0.b		; B0 00
	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $17.b		; 00 17
	beq   6.b		; F0 06
	rol $0F01.w,X		; 3E 01 0F
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $080920.l		; 2F 20 09 08
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000F03.l,X		; 1F 03 0F 00
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stp		; DB
	lda [$E8.b]		; A7 E8
	clc		; 18
	adc [$E0.b]		; 67 E0
	adc $F013E0.l		; 6F E0 13 F0
	tsb $037C.w		; 0C 7C 03
	ora $E40700.l,X		; 1F 00 07 E4
	mvp $10,$17		; 44 17 10
	sta $809F80.l,X		; 9F 80 9F 80
	adc $101360.l		; 6F 60 13 10
	tsb $04.b		; 04 04
	ora $03.b,S		; 03 03
	ora $83F8.w,Y		; 19 F8 83
	sbc $D07F40.l,X		; FF 40 7F D0
	ora $FC0FF8.l,X		; 1F F8 0F FC
	ora [$3E.b]		; 07 3E
	ora $8C.b,S		; 03 8C
	sta ($87.b,X)		; 81 87
	bra  76.b		; 80 4C
	jmp $23A3.w		; 4C A3 23
	cpx #$F000.w		; E0 00 F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $7F.b		; 00 7F
	ora ($E0.b,X)		; 01 E0
	tsb $0E38.w		; 0C 38 0E
	cpy $24C6.w		; CC C6 24
	inc $18.b		; E6 18
	inc $FE70.w,X		; FE 70 FE
	bmi -68.b		; 30 BC
	rti		; 40

	sed		; F8
	sed		; F8
	php		; 08
	pea $3804.w		; F4 04 38
	brk $D8.b		; 00 D8
	cpy #$2424.w		; C0 24 24
	sty $C88C.w		; 8C 8C C8
	dey		; 88
	jsr $9320.w		; 20 20 93
	pla		; 68
	sbc $00.b,S		; E3 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($81.b,X)		; E1 81
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clv		; B8
	jmp ($3E9C.w,X)		; 7C 9C 3E
	ror $0F.b		; 66 0F
	tas		; 1B
	ora $06.b,S		; 03 06
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	ror $7F0C.w,X		; 7E 0C 7F
	asl $1F.b		; 06 1F
	ora $07.b,S		; 03 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	clv		; B8
	jsr ($7E7C.w,X)		; FC 7C 7E
	lda ($3A.b,S),Y		; B3 3A
	cli		; 58
	trb $0020.w		; 1C 20 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $FC.b		; 00 FC
	sec		; 38
	inc $FF3C.w,X		; FE 3C FF
	ora ($7E.b)		; 12 7E
	brk $3E.b		; 00 3E
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	asl $3D02.w		; 0E 02 3D
	brk $5D.b		; 00 5D
	and #$FC.b		; 29 FC
	and ($00.b,S),Y		; 33 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	brk $0B.b		; 00 0B
	php		; 08
	dec A		; 3A
	bpl 123.b		; 10 7B
	phk		; 4B
	ora $1F.b,S		; 03 1F
	brk $7F.b		; 00 7F
	and $81B9E0.l		; 2F E0 B9 81
	inc $07.b		; E6 07
	bmi  63.b		; 30 3F
	bra  -4.b		; 80 FC
	pla		; 68
	bcc   4.b		; 90 04
	tsb $19.b		; 04 19
	ora $405F.w,Y		; 19 5F 40
	ror $F900.w,X		; 7E 00 F9
	ora ($CC.b,X)		; 01 CC
	tsb $6060.w		; 0C 60 60
	bpl   0.b		; 10 00
	brk $0F.b		; 00 0F
	bmi  60.b		; 30 3C
	rti		; 40

	jmp ($F880.w,X)		; 7C 80 F8
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	php		; 08
	iny		; C8
	php		; 08
	clv		; B8
	sec		; 38
	bvs 112.b		; 70 70
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	bvs  12.b		; 70 0C
	tsa		; 3B
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $17.b		; 00 17
	cpy #$0F30.w		; C0 30 0F
	jsr $181F.w		; 20 1F 18
	ora [$10.b]		; 07 10
	ora $3A1E21.l		; 0F 21 1E 3A
	cmp $76.b		; C5 76
	eor $F5.b,X		; 55 F5
	asl $0F.b,X		; 16 0F
	ora $061A1A.l		; 0F 1A 1A 06
	asl $04.b		; 06 04
	tsb $08.b		; 04 08
	php		; 08
	ora ($04.b,X)		; 01 04
	sta $1C.b,X		; 95 1C
	pei ($1E.b)		; D4 1E
	and $DA.b		; 25 DA
	pld		; 2B
	cmp $35.b,X		; D5 35
	dex		; CA
	bit $C8.b,X		; 34 C8
	nop		; EA
	asl $A1.b,X		; 16 A1
	eor ($BA.b,S),Y		; 53 BA
	eor $DE.b,S		; 43 DE
	and ($10.b,X)		; 21 10
	bpl  16.b		; 10 10
	bpl   5.b		; 10 05
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $DE.b		; 00 DE
	sta ($CD.b)		; 92 CD
	bit #$EE.b		; 89 EE
	dec $9C7B.w		; CE 7B 9C
	sta $C86638.l		; 8F 38 66 C8
	inx		; E8
	jmp $04F0.w		; 4C F0 04
	pha		; 48
	bit $D8D0.w,X		; 3C D0 D8
	brk $F0.b		; 00 F0
	sty $84.b		; 84 84
	brk $60.b		; 00 60
	clc		; 18
	pha		; 48
	bne  64.b		; D0 40
	sed		; F8
	brk $F0.b		; 00 F0
	bmi  32.b		; 30 20
	brk $20.b		; 00 20
	jsr $0003.w		; 20 03 00
	ora $03.b		; 05 03
	asl $03.b		; 06 03
	php		; 08
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
	cop $C0.b		; 02 C0
	brk $3F.b		; 00 3F
	cpy #$57F8.w		; C0 F8 57
	sbc $AF5F16.l		; EF 16 5F AF
	ror $BF.b		; 66 BF
	bra 127.b		; 80 7F
	sta $7C.b,S		; 83 7C
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	ror $06.b,X		; 76 06
	adc #$60.b		; 69 60
	bcc -128.b		; 90 80
	ora $3419.w,Y		; 19 19 34
	bit $60.b,X		; 34 60
	rts		; 60

	ora [$68.b]		; 07 68
	and $68.b,X		; 35 68
	asl $DF40.w,X		; 1E 40 DF
	brk $EF.b		; 00 EF
	php		; 08
	lda ($8D.b)		; B2 8D
	bcs -116.b		; B0 8C
	bne -88.b		; D0 A8
	bmi  39.b		; 30 27
	ora ($06.b)		; 12 06
	and ($01.b),Y		; 31 01
	bmi   7.b		; 30 07
	bvc  66.b		; 50 42
	tay		; A8
	sbc #$88.b		; E9 88
	cmp #$00.b		; C9 00
	lda ($77.b,X)		; A1 77
	brk $FD.b		; 00 FD
	jsr $0053.w		; 20 53 00
	sbc $F8FF70.l,X		; FF 70 FF F8
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $8F88FF.l,X		; FF FF 88 8F
	cop $23.b		; 02 23
	sty $20AC.w		; 8C AC 20
	adc [$70.b],Y		; 77 70
	plx		; FA
	sei		; 78
	sbc $FF7E.w,X		; FD 7E FF
	ror $1FFF.w,X		; 7E FF 1F
	sei		; 78
	eor $C6.b,X		; 55 C6
	ror $FD03.w,X		; 7E 03 FD
	ora ($F9.b,X)		; 01 F9
	ora ($32.b,X)		; 01 32
	ora $C4.b,S		; 03 C4
	cmp [$28.b]		; C7 28
	sbc $3A2121.l		; EF 21 21 3A
	cop $FD.b		; 02 FD
	ora ($FE.b,X)		; 01 FE
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	ora ($3A.b,X)		; 01 3A
	cop $D5.b		; 02 D5
	cmp $89.b		; C5 89
	sei		; 78
	sta $867C.w		; 8D 7C 86
	ror $9E62.w,X		; 7E 62 9E
	and ($CE.b)		; 32 CE
	and $3CC7.w,Y		; 39 C7 3C
	sta $00.b,S		; 83 00
	sta $B7.b,S		; 83 B7
	bcs  51.b		; B0 33
	bmi  89.b		; 30 59
	clc		; 18
	sta $CD9C.w,X		; 9D 9C CD
	cpy $8282.w		; CC 82 82
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	cpx $BC70.w		; EC 70 BC
	rts		; 60

	tya		; 98
	jsr $B020.w		; 20 20 B0
	cpy #$2010.w		; C0 10 20
	beq  64.b		; F0 40
	rts		; 60

	brk $C0.b		; 00 C0
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	rts		; 60

	jsr $00C0.w		; 20 C0 00
	cpx #$C000.w		; E0 00 C0
	cpy #$0080.w		; C0 80 00
	bra -128.b		; 80 80
	cpy #$6000.w		; C0 00 60
	brk $C0.b		; 00 C0
	rts		; 60

	cpx #$E0E0.w		; E0 E0 E0
	cpx #$E0C0.w		; E0 C0 E0
	brk $C0.b		; 00 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bvs  64.b		; 70 40
	beq -64.b		; F0 C0
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$0000.w		; E0 00 00
	bit $2C18.w		; 2C 18 2C
	bpl  44.b		; 10 2C
	bpl  56.b		; 10 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	php		; 08
	clc		; 18
	php		; 08
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$8820.w		; A0 20 88
	dey		; 88
	php		; 08
	php		; 08
	jsr $8020.w		; 20 20 80
	bra  92.b		; 80 5C
	ldy $DC3D.w,X		; BC 3D DC
	ldy $BC5E.w,X		; BC 5E BC
	eor $598741.l,X		; 5F 41 87 59
	sta ($56.b,X)		; 81 56
	sta ($51.b,X)		; 81 51
	bra  29.b		; 80 1D
	rol $5E1C.w,X		; 3E 1C 5E
	trb $1C5F.w		; 1C 5F 1C
	eor $20BF00.l,X		; 5F 00 BF 20
	lda [$20.b]		; A7 20
	lda ($20.b,X)		; A1 20
	ldy #$2050.w		; A0 50 20
	bcs -64.b		; B0 C0
	sed		; F8
	brk $64.b		; 00 64
	tya		; 98
	lda ($C0.b)		; B2 C0
	cmp $9A60.w,X		; DD 60 9A
	jsr $30EC.w		; 20 EC 30
	jsr $00A0.w		; 20 A0 00
	cpy #$0000.w		; C0 00 00
	cli		; 58
	cli		; 58
	bit $922C.w		; 2C 2C 92
	asl $D4.b,X		; 16 D4
	trb $C8.b		; 14 C8
	php		; 08
	tsb $AE10.w		; 0C 10 AE
	bvs -50.b		; 70 CE
	bmi -18.b		; 30 EE
	bmi  68.b		; 30 44
	clc		; 18
	bvs  24.b		; 70 18
	ldy #$7088.w		; A0 88 70
	cpy $08E8.w		; CC E8 08
	cpy $44.b		; C4 44
	cpy #$C000.w		; C0 00 C0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $70.b		; 00 70
	brk $B8.b		; 00 B8
	dey		; 88
	trb $1AC8.w		; 1C C8 1A
	pea $087E.w		; F4 7E 08
	lsr $2E28.w,X		; 5E 28 2E
	trb $2D.b		; 14 2D
	asl $1F.b,X		; 16 1F
	tsb $17.b		; 04 17
	tsb $4070.w		; 0C 70 40
	bit $20.b		; 24 20
	tsb $3C04.w		; 0C 04 3C
	trb $1C.b		; 14 1C
	php		; 08
	asl $0E08.w,X		; 1E 08 0E
	asl A		; 0A
	asl $0102.w		; 0E 02 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	cop $06.b		; 02 06
	asl $07.b		; 06 07
	asl $0C.b		; 06 0C
	asl $07.b		; 06 07
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora [$02.b]		; 07 02
	ora $000E04.l		; 0F 04 0E 00
	ora [$00.b]		; 07 00
	brk $CC.b		; 00 CC
	and $1F.b,S		; 23 1F
	sta [$3B.b]		; 87 3B
	ora $6F.b,X		; 15 6F
	and #$7F.b		; 29 7F
	brk $09.b		; 00 09
	bvs  46.b		; 70 2E
	bvs   8.b		; 70 08
	eor ($03.b,S),Y		; 53 03
	brk $0F.b		; 00 0F
	php		; 08
	ora [$12.b]		; 07 12
	phd		; 0B
	dec A		; 3A
	ora ($01.b,X)		; 01 01
	rol $2E.b		; 26 2E
	ora ($0F.b,X)		; 01 0F
	and [$0F.b]		; 27 0F
	bvc  15.b		; 50 0F
	pla		; 68
	ora $303F40.l,X		; 1F 40 3F 30
	ora $211F20.l		; 0F 20 1F 21
	asl $1B24.w,X		; 1E 24 1B
	and $0E0E10.l		; 2F 10 0E 0E
	asl $16.b,X		; 16 16
	dec A		; 3A
	dec A		; 3A
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	clc		; 18
	clc		; 18
	tas		; 1B
	tas		; 1B
	brk $00.b		; 00 00
	sta $6A.b,X		; 95 6A
	ldx $5554.w		; AE 54 55
	plb		; AB
	eor ($A1.b,S),Y		; 53 A1
	xba		; EB
	clc		; 18
	sbc $1C.b		; E5 1C
	xba		; EB
	ora $4213E0.l,X		; 1F E0 13 42
	.db $42, $40		; 42 40
	eor ($14.b,X)		; 41 14
	ora ($1F.b,X)		; 01 1F
	ora ($07.b,X)		; 01 07
	brk $0B.b		; 00 0B
	php		; 08
	tsb $04.b		; 04 04
	tsb $F000.w		; 0C 00 F0
	plp		; 28
	sep #$C1		; E2 C1
	cmp $00.b,S		; C3 00
	tsb $03.b		; 04 03
	ora $02.b		; 05 02
	tas		; 1B
	tsb $6F.b		; 04 6F
	bpl 126.b		; 10 7E
	ora ($00.b,X)		; 01 00
	and ($00.b,X)		; 21 00
	cmp ($00.b,X)		; C1 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora $1E.b,S		; 03 1E
	asl $0405.w		; 0E 05 04
	sbc $7E7EFF.l,X		; FF FF 7E 7E
	lda $D0BD.w,X		; BD BD D0
	eor $8738E8.l,X		; 5F E8 38 87
	bvs  19.b		; 70 13
	beq -101.b		; F0 9B
	sei		; 78
	ror $3CFF.w,X		; 7E FF 3C
	sbc $40FF19.l,X		; FF 19 FF 40
	bvs  39.b		; 70 27
	jsr $105F.w		; 20 5F 10
	lda $A0A720.l		; AF 20 A7 A0
	ora $19F9.w,Y		; 19 F9 19
	sbc $FF06.w,Y		; F9 06 FF
	ora ($3E.b,X)		; 01 3E
	cop $05.b		; 02 05
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	inc $E0.b		; E6 E0
	inc $E0.b		; E6 E0
	and $0639.w,Y		; 39 39 06
	asl $01.b		; 06 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	sta ($A0.b,X)		; 81 A0
	rti		; 40

	cpx #$D000.w		; E0 00 D0
	cpx #$50E8.w		; E0 E8 50
	sei		; 78
	ldy #$A070.w		; A0 70 A0
	bcs  96.b		; B0 60
	bra -128.b		; 80 80
	rti		; 40

	brk $40.b		; 00 40
	rti		; 40

	cpx #$F000.w		; E0 00 F0
	ldy #$40E0.w		; A0 E0 40
	cpx #$6040.w		; E0 40 60
	brk $EF.b		; 00 EF
	bpl -65.b		; 10 BF
	tsb $FD.b		; 04 FD
	asl A		; 0A
	plx		; FA
	ora $11BE.w		; 0D BE 11
	sbc ($01.b)		; F2 01
	inc $E241.w		; EE 41 E2
	ora $6070.w,Y		; 19 70 60
	adc $046E0B.l		; 6F 0B 6E 04
	jmp $005011.l		; 5C 11 50 00
	tsb $500E.w		; 0C 0E 50
	lsr $5E5C.w,X		; 5E 5C 5E
	bra   0.b		; 80 00
	rti		; 40

	bra -64.b		; 80 C0
	rti		; 40

	bcs -96.b		; B0 A0
	bvc  88.b		; 50 58
	tay		; A8
	ldy $8614.w		; AC 14 86
	rep #$03		; C2 03
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $60.b		; 00 60
	bra -32.b		; 80 E0
	rti		; 40

	cpx #$C010.w		; E0 10 C0
	sec		; 38
	cpy #$3804.w		; C0 04 38
	brk $02.b		; 00 02
	ora ($06.b,X)		; 01 06
	ora $06.b,S		; 03 06
	brk $04.b		; 00 04
	ora $07.b,S		; 03 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	jmp $285C28.l		; 5C 28 5C 28
	bit $3C08.w,X		; 3C 08 3C
	php		; 08
	bit $2C10.w		; 2C 10 2C
	bpl  56.b		; 10 38
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	bpl  56.b		; 10 38
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	php		; 08
	clc		; 18
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $1A677D.l,X		; BF 7D 67 1A
	ora $000700.l,X		; 1F 00 07 00
	ora ($00.b,X)		; 01 00
	jsr $7800.w		; 20 00 78
	sec		; 38
	sbc $7C0D2F.l		; EF 2F 0D 7C
	cop $18.b		; 02 18
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	sec		; 38
	and $CF3F06.l,X		; 3F 06 3F CF
	adc $FFBFDF.l,X		; 7F DF BF FF
	and $797EFE.l,X		; 3F FE 7E 79
	sbc $37B7.w,Y		; F9 B7 37
	cmp [$54.b],Y		; D7 54
	ldx $2669.w		; AE 69 26
	and $BC1F8E.l		; 2F 8E 1F BC
	lda $317F38.l,X		; BF 38 7F 31
	sbc $047F12.l,X		; FF 12 7F 04
	jmp ($7A0B.w,X)		; 7C 0B 7A
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $0E.b,S		; 03 0E
	ora $18.b,S		; 03 18
	ora $603F30.l,X		; 1F 30 3F 60
	lsr $5DC0.w,X		; 5E C0 5D
	cmp ($00.b,X)		; C1 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	php		; 08
	ora $001F00.l		; 0F 00 1F 00
	and $003E00.l,X		; 3F 00 3E 00
	rtl		; 6B

	cmp $02FB.w		; CD FB 02
	sed		; F8
	brk $F3.b		; 00 F3
	ora $CC.b,S		; 03 CC
	ora $403FB0.l		; 0F B0 3F 40
	ror $FF80.w,X		; 7E 80 FF
	lda $84.b,X		; B5 84
	jsr ($FF00.w,X)		; FC 00 FF
	brk $FC.b		; 00 FC
	brk $F3.b		; 00 F3
	ora $CC.b,S		; 03 CC
	tsb $30B0.w		; 0C B0 30
	lsr $46.b		; 46 46
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	asl A		; 0A
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($F8.b,X)		; 01 F8
	brk $7F.b		; 00 7F
	ldy #$8F70.w		; A0 70 8F
	adc $BF4E99.l		; 6F 99 4E BF
	jmp $7E99BF.l		; 5C BF 99 7E
	stx $79.b,Y		; 96 79
	brk $00.b		; 00 00
	bcs -128.b		; B0 80
	ldx $16AE.w		; AE AE 16
	bpl  17.b		; 10 11
	ora ($22.b),Y		; 11 22
	jsl $416464.l		; 22 64 64 41
	eor ($F8.b,X)		; 41 F8
	brk $F7.b		; 00 F7
	php		; 08
	adc $80FF3F.l,X		; 7F 3F FF 80
	eor ($BE.b,X)		; 41 BE
	adc $000080.l,X		; 7F 80 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	bvs -65.b		; 70 BF
	brk $3F.b		; 00 3F
	and $0081BF.l,X		; 3F BF 81 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $98.b		; 00 98
	rts		; 60

	pea $FEE8.w		; F4 E8 FE
	clc		; 18
	cmp $023F34.l		; CF 34 3F 02
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F880.w		; E0 80 F8
	bpl  -4.b		; 10 FC
	cpx $3E.b		; E4 3E
	asl A		; 0A
	asl $04.b		; 06 04
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	adc $7F83B2.l,X		; 7F B2 83 7F
	brk $7F.b		; 00 7F
	brk $1F.b		; 00 1F
	brk $F8.b		; 00 F8
	sed		; F8
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	bpl  16.b		; 10 10
	adc $FF01.w,X		; 7D 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $07.b		; 00 07
	brk $FE.b		; 00 FE
	inc $0000.w,X		; FE 00 00
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	jsr ($0FC8.w,X)		; FC C8 0F
	sbc $FF01.w,X		; FD 01 FF
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	sbc $00FF00.l,X		; FF 00 FF 00
	ora $F44040.l,X		; 1F 40 40 F4
	tsb $FE.b		; 04 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $80.b		; 00 80
	bra  31.b		; 80 1F
	ora $000000.l,X		; 1F 00 00 00
	ora [$02.b]		; 07 02
	inc $E027.w,X		; FE 27 E0
	brk $00.b		; 00 00
	adc $FFC07F.l,X		; 7F 7F C0 FF
	brk $FF.b		; 00 FF
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	ora $04.b		; 05 04
	cmp $00FFC0.l,X		; DF C0 FF 00
	bra   0.b		; 80 00
	and $C0C03F.l,X		; 3F 3F C0 C0
	brk $00.b		; 00 00
	cmp $1CFFBE.l,X		; DF BE FF 1C
	lda $F000C0.l,X		; BF C0 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($FE00.w,X)		; FC 00 FE
	rti		; 40

	asl $4002.w,X		; 1E 02 40
	rti		; 40

	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E3.b		; 00 E3
	jmp $9F79FE.l		; 5C FE 79 9F
	ror $FB.b		; 66 FB
	ora $05.b		; 05 05
	cop $02.b		; 02 02
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	brk $7C.b		; 00 7C
	jsr $067F.w		; 20 7F 06
	sbc $020799.l,X		; FF 99 07 02
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	adc $3D7A0E.l,X		; 7F 0E 7A 3D
	adc $0B02.w,X		; 7D 02 0B
	tsb $17.b		; 04 17
	php		; 08
	and $087710.l		; 2F 10 77 08
	and $8E00F1.l		; 2F F1 00 8E
	and ($BC.b),Y		; 31 BC
	ora $01.b,S		; 03 01
	asl $02.b		; 06 02
	asl $1D06.w		; 0E 06 1D
	ora $050D.w		; 0D 0D 05
	ora ($12.b,S),Y		; 13 12
	sbc $A95F10.l,X		; FF 10 5F A9
	sbc $FD0B.w,X		; FD 0B FD
	phk		; 4B
	cmp $DD6E.w,X		; DD 6E DD
	inc $ADDE.w		; EE DE AD
	dec $13BD.w,X		; DE BD 13
	ora ($AB.b,S),Y		; 13 AB
	cop $5F.b		; 02 5F
	mvn $94,$DF		; 54 DF 94
	sbc $11FF91.l,X		; FF 91 FF 11
	sbc $42FF52.l,X		; FF 52 FF 42
	rtl		; 6B

	sbc $14.b,S		; E3 14
	sbc [$08.b],Y		; F7 08
	sed		; F8
	ora [$7F.b]		; 07 7F
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $6B00.w		; 1C 00 6B
	adc $77.b,S		; 63 77
	bvs  56.b		; 70 38
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $FD.b		; 05 FD
.ACCU 8
	sep #$E3		; E2 E3
	adc $037E.w,Y		; 79 7E 03
	jsr ($C000.w,X)		; FC 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	txs		; 9A
	tya		; 98
	ora $8601.w,X		; 1D 01 86
	asl $C0.b		; 06 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0803.w		; 0C 03 08
	ora [$0C.b]		; 07 0C
	ora $0C.b,S		; 03 0C
	ora [$1C.b]		; 07 1C
	ora $100F10.l		; 0F 10 0F 10
	ora $030700.l		; 0F 00 07 03
	ora $07.b,S		; 03 07
	ora [$01.b]		; 07 01
	ora ($03.b,X)		; 01 03
	ora $02.b,S		; 03 02
	cop $0C.b		; 02 0C
	tsb $0C0C.w		; 0C 0C 0C
	brk $38.b		; 00 38
	plb		; AB
	mvn $4A,$BD		; 54 BD 4A
	cmp $16.b,S		; C3 16
	eor [$92.b]		; 47 92
	phk		; 4B
	clv		; B8
	.db $62, $99, $70		; 62 99 70
	sty $0EE5.w		; 8C E5 0E
	trb $14.b		; 14 14
	brk $02.b		; 00 02
	bit $3F16.w,X		; 3C 16 3F
	ora ($07.b,S),Y		; 13 07
	brk $0F.b		; 00 0F
	ora #$0F.b		; 09 0F
	tsb $0202.w		; 0C 02 02
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	clv		; B8
	brk $D8.b		; 00 D8
	brk $B8.b		; 00 B8
	brk $98.b		; 00 98
	rti		; 40

	sty $0040.w		; 8C 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	bmi  64.b		; 30 40
	bvs  96.b		; 70 60
	bvs 112.b		; 70 70
	bvs  83.b		; 70 53
	bit $D0A3.w		; 2C A3 D0
	sbc $877800.l,X		; FF 00 78 87
	sbc $E07F40.l,X		; FF 40 7F E0
	lda $BDDF78.l,X		; BF 78 DF BD
	bit $1CAC.w		; 2C AC 1C
	cmp $DF2020.l,X		; DF 20 20 DF
	cli		; 58
	adc [$27.b]		; 67 27
	sed		; F8
	clc		; 18
	inc $FC86.w,X		; FE 86 FC
	rti		; 40

	cmp $DBEFED.l,X		; DF ED EF DB
	jsr ($F8E3.w,X)		; FC E3 F8
	sbc [$FF.b]		; E7 FF
	rts		; 60

	inc $F800.w,X		; FE 00 F8
	brk $C0.b		; 00 C0
	brk $FC.b		; 00 FC
	bpl  -8.b		; 10 F8
	jsr $0BEB.w		; 20 EB 0B
	cpx #$E000.w		; E0 00 E0
	bra -64.b		; 80 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	ora ($FE.b,X)		; 01 FE
	sbc ($03.b)		; F2 03
	sbc $030300.l,X		; FF 00 03 03
	jsr ($00FF.w,X)		; FC FF 00
	sbc $008000.l,X		; FF 00 80 00
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	ora ($FF.b,X)		; 01 FF
	brk $FC.b		; 00 FC
	brk $03.b		; 00 03
	ora $80.b,S		; 03 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	brk $68.b		; 00 68
	bcc  36.b		; 90 24
	cld		; D8
	sty $F8.b		; 84 F8
	cop $FC.b		; 02 FC
	jsl $2CD2DC.l		; 22 DC D2 2C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	pha		; 48
	pha		; 48
	tya		; 98
	tya		; 98
	php		; 08
	php		; 08
	jsr $DC20.w		; 20 20 DC
	rts		; 60

	jmp ($D8D0.w)		; 6C D0 D8
	rts		; 60

	cpy #$0070.w		; C0 70 00
	bmi 124.b		; 30 7C
	cpy #$3CFE.w		; C0 FE 3C
	lda $202062.l,X		; BF 62 20 20
	bra -128.b		; 80 80
	bra  32.b		; 80 20
	ldy #$E020.w		; A0 20 E0
	jsr $8080.w		; 20 80 80
	tsb $003C.w		; 0C 3C 00
	.db $62, $38, $3B		; 62 38 3B
	ply		; 7A
	adc $7952.w,Y		; 79 52 79
	adc ($58.b,S),Y		; 73 58
	jmp ($271E.w)		; 6C 1E 27
	ora $06071B.l,X		; 1F 1B 07 06
	ora ($38.b,X)		; 01 38
	jmp ($FC30.w,X)		; 7C 30 FC
	rti		; 40

	jsr ($DC00.w,X)		; FC 00 DC
	brk $1F.b		; 00 1F
	cop $1F.b		; 02 1F
	ora ($07.b,X)		; 01 07
	brk $01.b		; 00 01
	cmp $09.b,S		; C3 09
	sta [$08.b]		; 87 08
	sta $002D00.l,X		; 9F 00 2D 00
	rol A		; 2A
	ora ($85.b,X)		; 01 85
	cmp $F6.b,S		; C3 F6
	sed		; F8
	sbc $0005FA.l,X		; FF FA 05 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	ora ($16.b)		; 12 16
	trb $D4.b		; 14 D4
	brk $F8.b		; 00 F8
	cmp ($F8.b,X)		; C1 F8
	ply		; 7A
	sed		; F8
	xba		; EB
	jmp $CE19.w		; 4C 19 CE
	cmp #$4E.b		; C9 4E
	and $8E.b,S		; 23 8E
	cmp ($9E.b,S),Y		; D3 9E
	eor $1E.b		; 45 1E
	lda ($3C.b,X)		; A1 3C
	eor $72.b,S		; 43 72
	trb $44.b		; 14 44
	bit $84.b,X		; 34 84
	bit $04.b,X		; 34 04
	sei		; 78
	asl A		; 0A
	pla		; 68
	asl A		; 0A
	beq  22.b		; F0 16
	bne  22.b		; D0 16
	ldy #$F82E.w		; A0 2E F8
	lda ($29.b),Y		; B1 29
	adc ($68.b),Y		; 71 68
	adc ($98.b),Y		; 71 98
	bpl -72.b		; 10 B8
	bvs -67.b		; 70 BD
	adc $78BF.w,Y		; 79 BF 78
	tda		; 7B
	bit $B390.w,X		; 3C 90 B3
	ora ($F3.b,X)		; 01 F3
	brk $F3.b		; 00 F3
	brk $71.b		; 00 71
	bpl 113.b		; 10 71
	bpl 121.b		; 10 79
	php		; 08
	sei		; 78
	brk $3D.b		; 00 3D
	mvp $D0,$CD		; 44 CD D0
	cmp ($49.b,S),Y		; D3 49
	lsr $E4C3.w,X		; 5E C3 E4
	sbc ($F9.b)		; F2 F9
	adc $BD7C.w,X		; 7D 7C BD
	adc $3C5D.w,X		; 7D 5D 3C
	tad		; 5B
	sbc #$8E.b		; E9 8E
.INDEX 8
	sep #$14		; E2 14
	pea $F901.w		; F4 01 F9
	jsr $38FC.w		; 20 FC 38
	inc $7E1D.w,X		; FE 1D 7E
	bit #$BF.b		; 89 BF
	cpx #$C0.b		; E0 C0
	eor ($E0.b,S),Y		; 53 E0
	ldy $80F3.w		; AC F3 80
	sbc $00FF40.l,X		; FF 40 FF 00
	sbc $03FE01.l,X		; FF 01 FE 03
	jsr ($0000.w,X)		; FC 00 00
	ldy #$A0.b		; A0 A0
	eor ($51.b),Y		; 51 51
	adc $BCBC7F.l,X		; 7F 7F BC BC
	sed		; F8
	sed		; F8
	rts		; 60

	rts		; 60

	bpl  16.b		; 10 10
	beq   0.b		; F0 00
	php		; 08
	beq 100.b		; F0 64
	sed		; F8
	pea $34F8.w		; F4 F8 34
	sed		; F8
	plp		; 28
	beq   8.b		; F0 08
	beq   8.b		; F0 08
	beq   0.b		; F0 00
	brk $60.b		; 00 60
	rts		; 60

	bcc -112.b		; 90 90
	php		; 08
	php		; 08
	rti		; 40

	rti		; 40

	bpl  16.b		; 10 10
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	phd		; 0B
	tsb $0D.b		; 04 0D
	cop $15.b		; 02 15
	asl A		; 0A
	asl $09.b,X		; 16 09
	rol A		; 2A
	ora [$CD.b],Y		; 17 CD
	and ($BD.b)		; 32 BD
	lsr $EB.b		; 46 EB
	ora $0004.w,X		; 1D 04 00
	cop $00.b		; 02 00
	asl A		; 0A
	brk $0B.b		; 00 0B
	cop $17.b		; 02 17
	brk $37.b		; 00 37
	ora $6F.b		; 05 6F
	and #$5F.b		; 29 5F
	.db $42, $BB		; 42 BB
	ldy $FD.b		; A4 FD
	.db $42, $F7		; 42 F7
	clc		; 18
	tyx		; BB
	dec $BB.b,X		; D6 BB
	dec $BB.b,X		; D6 BB
	cmp $DBBD.w,X		; DD BD DB
	lda $05FE.w,X		; BD FE 05
	sbc ($16.b,X)		; E1 16
	mvn $A6,$BE		; 54 BE A6
	sbc $29FF29.l,X		; FF 29 FF 29
	sbc $24FF22.l,X		; FF 22 FF 24
	sbc $863001.l,X		; FF 01 30 86
	and ($86.b,S),Y		; 33 86
	adc ($C4.b),Y		; 71 C4
	adc $7BCC.w,Y		; 79 CC 7B
	cpy $CC73.w		; CC 73 CC
	eor ($CC.b,S),Y		; 53 CC
	ora [$CC.b],Y		; 17 CC
	tda		; 7B
	cop $79.b		; 02 79
	brk $3B.b		; 00 3B
	brk $33.b		; 00 33
	brk $33.b		; 00 33
	brk $3B.b		; 00 3B
	php		; 08
	and [$04.b],Y		; 37 04
	adc ($40.b,S),Y		; 73 40
	bne  28.b		; D0 1C
	bne  28.b		; D0 1C
	cpx #$38.b		; E0 38
	ldy #$38.b		; A0 38
	bra  48.b		; 80 30
	cpy #$70.b		; C0 70
	cpy #$60.b		; C0 60
	brk $60.b		; 00 60
	inx		; E8
	php		; 08
	inx		; E8
	php		; 08
	bne  16.b		; D0 10
	bne  16.b		; D0 10
	cpx #$20.b		; E0 20
	ldy #$20.b		; A0 20
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	and $38FF.w,Y		; 39 FF 38
	adc $247F38.l,X		; 7F 38 7F 24
	adc [$24.b]		; 67 24
	adc [$24.b]		; 67 24
	ror $24.b		; 66 24
	ror $24.b		; 66 24
	ror $42.b		; 66 42
	.db $42, $05		; 42 05
	ora $05.b		; 05 05
	ora $18.b		; 05 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $40.b		; 00 40
	bpl 112.b		; 10 70
	clc		; 18
	rts		; 60

	php		; 08
	ldy #$88.b		; A0 88
	bmi -120.b		; 30 88
	sei		; 78
	cpy $C410.w		; CC 10 C4
	trb $40.b		; 14 40
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	beq -128.b		; F0 80
	bmi   0.b		; 30 00
	sei		; 78
	rti		; 40

	sec		; 38
	brk $12.b		; 00 12
	bit $3E.b,X		; 34 3E
	brk $3E.b		; 00 3E
	tsb $182E.w		; 0C 2E 18
	rol $2E18.w		; 2E 18 2E
	clc		; 18
	rol A		; 2A
	trb $0C3A.w		; 1C 3A 0C
	tsb $0004.w		; 0C 04 00
	brk $1C.b		; 00 1C
	bpl  28.b		; 10 1C
	tsb $1C.b		; 04 1C
	tsb $1C.b		; 04 1C
	tsb $1C.b		; 04 1C
	brk $1C.b		; 00 1C
	bpl  29.b		; 10 1D
	asl $15.b		; 06 15
	asl $0E15.w		; 0E 15 0E
	ora [$0C.b],Y		; 17 0C
	ora $041E04.l,X		; 1F 04 1E 04
	rol $3A04.w,X		; 3E 04 3A
	trb $080E.w		; 1C 0E 08
	asl $0E00.w		; 0E 00 0E
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	php		; 08
	tsb $1C08.w		; 0C 08 1C
	clc		; 18
	trb $C900.w		; 1C 00 C9
	and $B61BE4.l,X		; 3F E4 1B B6
	adc #$CD.b		; 69 CD
	.db $42, $45		; 42 45
	plb		; AB
	adc $2A.b		; 65 2A
	ldx $BAAB.w		; AE AB BA
	sta $16.b,S		; 83 16
	asl $19.b,X		; 16 19
	ora $4848.w,Y		; 19 48 48
	and ($02.b)		; 32 02
	bmi  32.b		; 30 20
	bpl -118.b		; 10 8A
	ora ($CA.b)		; 12 CA
	bit $43C0.w,X		; 3C C0 43
	ldy $DF20.w,X		; BC 20 DF
	and $DF.b		; 25 DF
	and $DF.b,S		; 23 DF
	ldx #$5F.b		; A2 5F
	sbc $1F.b,S		; E3 1F
	sbc ($9F.b,X)		; E1 9F
	rts		; 60

	sta $8F9898.l,X		; 9F 98 98 8F
	sta $048A8A.l		; 8F 8A 8A 04
	tsb $05.b		; 04 05
	ora $04.b		; 05 04
	tsb $02.b		; 04 02
	cop $83.b		; 02 83
	sta $68.b,S		; 83 68
	sta [$C8.b]		; 87 C8
	ora [$F8.b]		; 07 F8
	ora [$EC.b]		; 07 EC
	lda ($56.b,S),Y		; B3 56
	sbc $184D.w,Y		; F9 4D 18
	sty $AA18.w		; 8C 18 AA
	bit $00.b,X		; 34 00
	brk $02.b		; 00 02
	cop $01.b		; 02 01
	ora ($80.b,X)		; 01 80
	bmi  16.b		; 30 10
	clc		; 18
	inx		; E8
	php		; 08
	rts		; 60

	php		; 08
	mvp $2C,$00		; 44 00 2C
	cpy #$A8.b		; C0 A8
	mvn $AC,$50		; 54 50 AC
	ldy $D250.w		; AC 50 D2
	bit $16E9.w		; 2C E9 16
	sbc [$88.b],Y		; F7 88
	inc $D080.w,X		; FE 80 D0
	bpl -48.b		; 10 D0
	tya		; 98
	inx		; E8
	pha		; 48
	bvs  32.b		; 70 20
	ldy $DE90.w,X		; BC 90 DE
	iny		; C8
	inx		; E8
	rts		; 60

	beq 112.b		; F0 70
	lsr $38.b		; 46 38
	ply		; 7A
	tsb $34.b		; 04 34
	phd		; 0B
	ora $000400.l,X		; 1F 00 04 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora ($39.b,X)		; 01 39
	ora $01.b		; 05 01
	tas		; 1B
	ora ($00.b,S),Y		; 13 00
	brk $03.b		; 00 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $6A.b,S		; 03 6A
	sta $207F.w,X		; 9D 7F 20
	clv		; B8
	eor [$37.b]		; 47 37
	iny		; C8
	sei		; 78
	bmi -115.b		; 30 8D
	php		; 08
	adc ($F1.b)		; 72 F1
	inc $81FE.w,X		; FE FE 81
	stz $80A0.w		; 9C A0 80
	eor [$47.b]		; 47 47
	iny		; C8
	iny		; C8
	sta [$B7.b],Y		; 97 B7
	cop $7A.b		; 02 7A
	brk $FD.b		; 00 FD
	sed		; F8
	sbc $11F00D.l,X		; FF 0D F0 11
	cpx #$E0.b		; E0 E0
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
	brk $06.b		; 00 06
	sed		; F8
	ora ($FE.b,X)		; 01 FE
	cmp [$38.b]		; C7 38
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bmi  24.b		; 30 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tad		; 5B
	and $7F.b		; 25 7F
	ora $3F.b,S		; 03 3F
	ora [$0F.b]		; 07 0F
	bpl   3.b		; 10 03
	trb $1F0E.w		; 1C 0E 1F
	ora #$19.b		; 09 19
	asl $10.b		; 06 10
	and $34371A.l,X		; 3F 1A 37 34
	ora $030308.l		; 0F 08 03 03
	tsb $010C.w		; 0C 0C 01
	ora ($06.b,X)		; 01 06
	brk $0F.b		; 00 0F
	brk $BF.b		; 00 BF
	jsr ($7EBF.w,X)		; FC BF 7E
	adc $877FB0.l,X		; 7F B0 7F 87
	inx		; E8
	clc		; 18
	lsr $A0.b		; 46 A0
	and $1DE1.w,X		; 3D E1 1D
	cmp ($FE.b,X)		; C1 FE
	cop $FF.b		; 02 FF
	sta ($F8.b,X)		; 81 F8
	pha		; 48
	cpx #$60.b		; E0 60
	ora [$10.b],Y		; 17 10
	lda $809EA0.l,X		; BF A0 9E 80
	ldx $1780.w,Y		; BE 80 17
	cpy $CC14.w		; CC 14 CC
	bit $6C.b,X		; 34 6C
	bit $6C.b,X		; 34 6C
	and $6F.b,S		; 23 6F
	bpl 127.b		; 10 7F
	clc		; 18
	adc $737F18.l,X		; 7F 18 7F 73
	rti		; 40

	adc ($40.b,S),Y		; 73 40
	ora ($00.b,S),Y		; 13 00
	ora ($00.b,S),Y		; 13 00
	trb $04.b		; 14 04
	pld		; 2B
	pld		; 2B
	and $23.b,S		; 23 23
	and $25.b		; 25 25
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	rti		; 40

	rts		; 60

	jsr $8030.w		; 20 30 80
	bcc -112.b		; 90 90
	tya		; 98
	ldy #$88.b		; A0 88
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	rts		; 60

	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $04.b		; 00 04
	ror $04.b		; 66 04
	ror $04.b		; 66 04
	ror $14.b		; 66 14
	rol $14.b,X		; 36 14
	rol $14.b,X		; 36 14
	rol $14.b,X		; 36 14
	rol $14.b,X		; 36 14
	rol $38.b,X		; 36 38
	jsr $2038.w		; 20 38 20
	sec		; 38
	jsr $0008.w		; 20 08 00
	php		; 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $26.b		; 00 26
	rts		; 60

	lsr $7E28.w		; 4E 28 7E
	tsb $3E.b		; 04 3E
	tsb $043E.w		; 0C 3E 04
	rol $2E14.w		; 2E 14 2E
	trb $1E.b		; 14 1E
	tsb $18.b		; 04 18
	brk $30.b		; 00 30
	jsr $0004.w		; 20 04 00
	trb $1C10.w		; 1C 10 1C
	clc		; 18
	trb $1C08.w		; 1C 08 1C
	php		; 08
	tsb $3E08.w		; 0C 08 3E
	php		; 08
	rol $3E08.w,X		; 3E 08 3E
	php		; 08
	jmp $305C30.l		; 5C 30 5C 30
	jmp ($5410.w,X)		; 7C 10 54
	plp		; 28
	sec		; 38
	brk $18.b		; 00 18
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	bpl  56.b		; 10 38
	php		; 08
	sec		; 38
	php		; 08
	sec		; 38
	plp		; 28
	sec		; 38
	bpl   0.b		; 10 00
	brk $24.b		; 00 24
	clc		; 18
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DE.b		; 00 DE
	jsr $00FC.w		; 20 FC 00
	bcc  96.b		; 90 60
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	cpx #$C0.b		; E0 C0
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	ora $00.b,S		; 03 00
	ora [$03.b]		; 07 03
	asl $01.b		; 06 01
	ora [$03.b]		; 07 03
	asl A		; 0A
	tsb $0E.b		; 04 0E
	asl $07.b		; 06 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $00.b,S		; 03 00
	ora ($03.b,X)		; 01 03
	ora $00.b,S		; 03 00
	ora $02.b		; 05 02
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $CE.b		; 00 CE
	bvs -114.b		; 70 8E
	bvs -42.b		; 70 D6
	jmp ($6CD6.w)		; 6C D6 6C
	dec $E664.w,X		; DE 64 E6
	cpy #$20.b		; C0 20
	cpy #$40.b		; C0 40
	brk $24.b		; 00 24
	bit $04.b		; 24 04
	trb $0C.b		; 14 0C
	rts		; 60

	tsb $0460.w		; 0C 60 04
	rts		; 60

	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,S),Y		; 13 00
	bit $2313.w		; 2C 13 23
	ora $003F51.l,X		; 1F 51 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($04.b,X)		; 01 04
	tsb $2E.b		; 04 2E
	rol $0000.w		; 2E 00 00
	sei		; 78
	brk $94.b		; 00 94
	pla		; 68
	plx		; FA
	mvn $14,$FA		; 54 FA 14
	ora $E8E6.w,Y		; 19 E6 E8
	sbc [$B4.b],Y		; F7 B4
	xce		; FB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	bvs   0.b		; 70 00
	trb $04.b		; 14 04
	cpy $C4.b		; C4 C4
	ora ($12.b)		; 12 12
	eor ($41.b,X)		; 41 41
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
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	ora $00.b,S		; 03 00
	tsb $00.b		; 04 00
	cmp $44CF47.l		; CF 47 CF 44
	tda		; 7B
	sbc $03.b,S		; E3 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $43.b,S		; C3 43
	adc [$40.b]		; 67 40
	stz $23.b		; 64 23
	sbc [$20.b]		; E7 20
	brk $30.b		; 00 30
	brk $D0.b		; 00 D0
	jsr $E010.w		; 20 10 E0
	bmi -64.b		; 30 C0
	php		; 08
	beq  84.b		; F0 54
	sed		; F8
	bit $00F8.w,X		; 3C F8 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $C0C0.w		; 20 C0 C0
	bra -128.b		; 80 80
	beq -16.b		; F0 F0
	tay		; A8
	tay		; A8
	rti		; 40

	rti		; 40

	adc $7F3F7F.l,X		; 7F 7F 3F 7F
	lda $7FBF7F.l,X		; BF 7F BF 7F
	lda $3FBF7F.l,X		; BF 7F BF 3F
	jmp.w [$EB5C]		; DC 5C EB
	pld		; 2B
	and $FF1FFF.l,X		; 3F FF 1F FF
	ora $7F1F7F.l,X		; 1F 7F 1F 7F
	ora $7F1C7F.l,X		; 1F 7F 1C 7F
	php		; 08
	adc $F63F01.l,X		; 7F 01 3F F6
	cpx #$FC.b		; E0 FC
.ACCU 8
.INDEX 8
	sep #$F4		; E2 F4
.ACCU 8
.INDEX 8
	sep #$F4		; E2 F4
.INDEX 8
	sep #$D4		; E2 D4
	dex		; CA
	plp		; 28
	and ($FC.b)		; 32 FC
.ACCU 16
	rep #$EA		; C2 EA
	trb $80.b		; 14 80
	cpx #$C0.b		; E0 C0
	cpx $C8.b		; E4 C8
	cpx $ECC8.w		; EC C8 EC
	php		; 08
	cpx $F404.w		; EC 04 F4
	cpy #$C0.b		; C0 C0
	bit $24.b,X		; 34 24
	clc		; 18
	ora [$30.b]		; 07 30
	ora $843F43.l		; 0F 43 3F 84
	adc $907F90.l,X		; 7F 90 7F 90
	adc $487F90.l,X		; 7F 90 7F 48
	and $070303.l,X		; 3F 03 03 07
	ora [$0C.b]		; 07 0C
	tsb $3B3B.w		; 0C 3B 3B
	bit $292C.w		; 2C 2C 29
	and #$2929.w		; 29 29 29
	bpl  16.b		; 10 10
	eor #$DAF7.w		; 49 F7 DA
	sbc $1A.b		; E5 1A
	sbc $33.b		; E5 33
	cpy $C037.w		; CC 37 C0
	adc $83.b,X		; 75 83
	cpx #$02.b		; E0 02
	cmp ($00.b,X)		; C1 00
	ldx $A6.b		; A6 A6
	ora $05.b		; 05 05
	cpy $C4.b		; C4 C4
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	adc $32FD90.l		; 6F 90 FD 32
	lda ($4C.b)		; B2 4C
	cmp ($A9.b)		; D2 A9
	lda $E1.b,X		; B5 E1
	rol $51A0.w		; 2E A0 51
	cmp $106FA0.l		; CF A0 6F 10
	bpl   2.b		; 10 02
	cop $4C.b		; 02 4C
	eor OAMDATA.w		; 4D 04 21
	tsb $EF23.w		; 0C 23 EF
	bcs -66.b		; B0 BE
	stx $4E5E.w		; 8E 5E 4E
	lsr $F3BF.w,X		; 5E BF F3
	ora $8203CD.l		; 0F CD 03 82
	brk $01.b		; 00 01
	stx $35.b		; 86 35
	sty $9072.w		; 8C 72 90
	sbc $15.b,X		; F5 15
	trb $013F.w		; 1C 3F 01
	ora $000300.l		; 0F 00 03 00
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	clc		; 18
	eor ($58.b)		; 52 58
	eor $1F2F3F.l,X		; 5F 3F 2F 1F
	bpl   0.b		; 10 00
	and [$04.b],Y		; 37 04
	eor $045B10.l		; 4F 10 5B 04
	adc $22DD10.l		; 6F 10 DD 22
	ora $1F003F.l		; 0F 3F 00 1F
	brk $0F.b		; 00 0F
	brk $0C.b		; 00 0C
	and ($31.b),Y		; 31 31
	and $21.b		; 25 21
	ora $05.b,X		; 15 05
	rol $14.b,X		; 36 14
	dec $BED7.w,X		; DE D7 BE
	lda ($FA.b,X)		; A1 FA
	ora $1DFE.w		; 0D FE 1D
	dec $F6B5.w		; CE B5 F6
	sbc #$E6F9.w		; E9 F9 E6
	sbc #$8659.w		; E9 59 86
	beq   5.b		; F0 05
	sbc $1D.b		; E5 1D
	ora ($BD.b),Y		; 11 BD
	lda ($FC.b,X)		; A1 FC
	pha		; 48
	sed		; F8
	bpl -32.b		; 10 E0
	brk $D6.b		; 00 D6
	bcc -112.b		; 90 90
	tya		; 98
	sei		; 78
	tsb $0278.w		; 0C 78 02
	stz $2C83.w,X		; 9E 83 2C
	sbc ($17.b,X)		; E1 17
	sbc ($97.b),Y		; F1 97
	bvs 107.b		; 70 6B
	tya		; 98
	rts		; 60

	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $DF.b		; 00 DF
	cmp ($2E.b,X)		; C1 2E
	jsr $202F.w		; 20 2F 20
	sta [$90.b],Y		; 97 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra  96.b		; 80 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	xce		; FB
	jsr ($FDFF.w,X)		; FC FF FD
	tda		; 7B
	sbc $38C3.w,X		; FD C3 38
	lda $7C4200.l,X		; BF 00 42 7C
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	sed		; F8
	jsr ($FC79.w,X)		; FC 79 FC
	ora ($FC.b,X)		; 01 FC
	ora ($3D.b,X)		; 01 3D
	rep #$02		; C2 02
	bcs  48.b		; B0 30
	cpy #$C0.b		; C0 C0
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
	bpl   0.b		; 10 00
	and ($00.b),Y		; 31 00
	rol $2011.w		; 2E 11 20
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl   9.b		; 10 09
	ora #$003C.w		; 09 3C 00
	.db $42, $3C		; 42 3C
	eor $BE32.w		; 4D 32 BE
	adc #$63BD.w		; 69 BD 63
	and $6BE6.w,Y		; 39 E6 6B
	sbc [$53.b],Y		; F7 53
	sbc $1C0000.l		; EF 00 00 1C
	trb $3232.w		; 1C 32 32
	tsb $4A00.w		; 0C 00 4A
	lsr A		; 4A
	eor $42.b,S		; 43 42
	sty $84.b		; 84 84
	ldy $A4.b		; A4 A4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sep #$00		; E2 00
	ora $E4E2.w,X		; 1D E2 E4
	tsa		; 3B
	bne  -1.b		; D0 FF
	bra  -1.b		; 80 FF
	bit $DB.b		; 24 DB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne  16.b		; D0 10
	and #$5329.w		; 29 29 53
	eor ($81.b,S),Y		; 53 81
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $98.b		; 00 98
	clc		; 18
	clv		; B8
	jmp ($3810.w,X)		; 7C 10 38
	jmp $005E.w		; 4C 5E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $7C.b		; 00 7C
	clc		; 18
	ror $FE00.w,X		; 7E 00 FE
	mvp $13,$FF		; 44 FF 13
	adc ($09.b)		; 72 09
	and $1E07.w,Y		; 39 07 1E
	phd		; 0B
	tsb $05.b		; 04 05
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $2C.b		; 00 2C
	jsr $1016.w		; 20 16 10
	php		; 08
	php		; 08
	ora $05.b		; 05 05
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	ldy #$C0.b		; A0 C0
	cpx #$40.b		; E0 40
	beq  64.b		; F0 40
	sei		; 78
	ldy #$BC.b		; A0 BC
	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	ldy #$F0.b		; A0 F0
	bvc 120.b		; 50 78
	plp		; 28
	jsr $401F.w		; 20 1F 40
	and $537EA1.l,X		; 3F A1 7E 53
	bit $1C23.w,X		; 3C 23 1C
	ora ($0C.b,S),Y		; 13 0C
	ora ($0E.b),Y		; 11 0E
	and ($1E.b,X)		; 21 1E
	tsb $380C.w		; 0C 0C 38
	sec		; 38
	bpl  16.b		; 10 10
	jsr $1020.w		; 20 20 10
	bpl   8.b		; 10 08
	php		; 08
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cmp ($00.b,X)		; C1 00
	sta $00.b,S		; 83 00
	ora $02.b		; 05 02
	ora $01.b		; 05 01
	cop $02.b		; 02 02
	ora $05.b,S		; 03 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	brk $07.b		; 00 07
	ora ($01.b,X)		; 01 01
	eor ($3E.b,X)		; 41 3E
	adc $1D.b,S		; 63 1D
	xce		; FB
	ora $E8FB.w,Y		; 19 FB E8
	adc $708EB4.l,X		; 7F B4 8E 70
	sbc [$82.b],Y		; F7 82
	adc [$18.b]		; 67 18
	ora $011D.w,X		; 1D 1D 01
	brk $45.b		; 00 45
	rti		; 40

	sbc $01.b		; E5 01
	beq  64.b		; F0 40
	ora ($01.b,X)		; 01 01
	asl A		; 0A
	tsx		; BA
	inc A		; 1A
	tsx		; BA
	cpx $FECB.w		; EC CB FE
	sta $ED.b,X		; 95 ED
	asl A		; 0A
	stx $00.b,Y		; 96 00
	ply		; 7A
	tsb $DC2A.w		; 0C 2A DC
	ror A		; 6A
	stz $041A.w		; 9C 1A 04
	cmp $1B.b,S		; C3 1B
	bne  84.b		; D0 54
	bra -102.b		; 80 9A
	rts		; 60

	pla		; 68
	bra -20.b		; 80 EC
	cpy #$EC.b		; C0 EC
	bra -20.b		; 80 EC
	cpx #$E4.b		; E0 E4
	lda [$4C.b],Y		; B7 4C
	lda $04FF44.l,X		; BF 44 FF 04
	adc $0C3F14.l		; 6F 14 3F 0C
	and $001C0C.l,X		; 3F 0C 1C 00
	brk $00.b		; 00 00
	ror $6E22.w		; 6E 22 6E
	rol A		; 2A
	adc $0B1F6B.l		; 6F 6B 1F 0B
	asl $1C12.w,X		; 1E 12 1C
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $CF.b		; 00 CF
	jsr $00DF.w		; 20 DF 00
	cmp $60E140.l,X		; DF 40 E1 60
	ora $7F80FF.l		; 0F FF 80 7F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	lda $80BFA0.l,X		; BF A0 BF 80
	and $001F00.l,X		; 3F 00 1F 00
	beq -16.b		; F0 F0
	ora $00001F.l,X		; 1F 1F 00 00
	brk $00.b		; 00 00
	eor $6C.b,X		; 55 6C
.INDEX 16
	rep #$1E		; C2 1E
	sbc ($0F.b,X)		; E1 0F
	tya		; 98
	ora $74FFF8.l,X		; 1F F8 FF 74
	inc $32.b,X		; F6 32
	sbc ($14.b,S),Y		; F3 14
	sbc ($AB.b),Y		; F1 AB
	plp		; 28
	sbc $14.b,X		; F5 14
	plx		; FA
	asl A		; 0A
	sbc ($01.b,X)		; E1 01
	tsb $04.b		; 04 04
	dey		; 88
	bra  76.b		; 80 4C
	rti		; 40

	rol $8020.w		; 2E 20 80
	jsr $30E0.w		; 20 E0 30
	rti		; 40

	bpl -112.b		; 10 90
	tya		; 98
	jmp $3AC8.w		; 4C C8 3A
	pea $285E.w		; F4 5E 28
	and $00C014.l		; 2F 14 C0 00
	cpy #$E000.w		; C0 00 E0
	brk $60.b		; 00 60
	brk $B0.b		; 00 B0
	bra  68.b		; 80 44
	rti		; 40

	bit $1E24.w		; 2C 24 1E
	asl A		; 0A
	ora $10071A.l		; 0F 1A 07 10
	tsb $11.b		; 04 11
	inc A		; 1A
	and ($08.b,S),Y		; 33 08
	and $0C.b,S		; 23 0C
	and [$34.b]		; 27 34
	ror $E0.b		; 66 E0
	asl $00.b,X		; 16 00
	cop $0C.b		; 02 0C
	brk $0F.b		; 00 0F
	ora ($0C.b,X)		; 01 0C
	brk $1E.b		; 00 1E
	cop $1A.b		; 02 1A
	cop $18.b		; 02 18
	brk $1C.b		; 00 1C
	trb $CF.b		; 14 CF
	bpl -44.b		; 10 D4
	asl A		; 0A
	lda $478F14.l		; AF 14 8F 47
	adc $0F7F07.l,X		; 7F 07 7F 0F
	and $0F171F.l		; 2F 1F 17 0F
	bmi -16.b		; 30 F0
	pld		; 2B
	rtl		; 6B

	bvc  84.b		; 50 54
	bmi  55.b		; 30 37
	ora $37.b,S		; 03 37
	ora [$0F.b]		; 07 0F
	ora [$1F.b]		; 07 1F
	ora $0F.b,S		; 03 0F
	ldx $3A10.w,Y		; BE 10 3A
	bpl  -6.b		; 10 FA
	bpl  -6.b		; 10 FA
	bpl  -5.b		; 10 FB
	pea $F8F7.w		; F4 F7 F8
	sbc $F7FA.w,Y		; F9 FA F7
	pea $5040.w		; F4 40 50
	cpy $D4.b		; C4 D4
	tsb $D4.b		; 04 D4
	tsb $14.b		; 04 14
	cpx $F4.b		; E4 F4
	cpx #$F0F8.w		; E0 F8 F0
	inc $FCE0.w,X		; FE E0 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $FE00.w,X		; 9E 00 FE
	trb $A07F.w		; 1C 7F A0
	sbc $1C.b,S		; E3 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $E000.w		; 1C 00 E0
	rti		; 40

	clc		; 18
	clc		; 18
	ldy $58.b,X		; B4 58
	lsr $28.b,X		; 56 28
	rol $1E18.w		; 2E 18 1E
	tsb $16.b		; 04 16
	php		; 08
	asl $0E00.w		; 0E 00 0E
	brk $0C.b		; 00 0C
	brk $78.b		; 00 78
	jsr $1038.w		; 20 38 10
	clc		; 18
	brk $0C.b		; 00 0C
	php		; 08
	tsb $0404.w		; 0C 04 04
	tsb $04.b		; 04 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	ora $FF332F.l,X		; 1F 2F 33 FF
	and $C040BF.l		; 2F BF 40 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $213F00.l,X		; 1F 00 3F 21
	adc ($2E.b,S),Y		; 73 2E
	and $004000.l		; 2F 00 40 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $09.b		; 00 09
	trb $FE3F.w		; 1C 3F FE
	inc $1CFF.w,X		; FE FF 1C
	inc $00FF.w,X		; FE FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $FE.b		; 00 FE
	trb $7CFE.w		; 1C FE 7C
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	clv		; B8
	cpx #$D050.w		; E0 50 D0
	ldy #$00E0.w		; A0 E0 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	bpl  64.b		; 10 40
	brk $A0.b		; 00 A0
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra -32.b		; 80 E0
	bra -16.b		; 80 F0
	rti		; 40

	sei		; 78
	ldy #$50BC.w		; A0 BC 50
	sbc $001F0C.l,X		; FF 0C 1F 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E040.w		; C0 40 E0
	ldy #$50F0.w		; A0 F0 50
	sei		; 78
	plp		; 28
	trb $0010.w		; 1C 10 00
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
	brk $46.b		; 00 46
	sec		; 38
	clv		; B8
	rti		; 40

	cpy #$C000.w		; C0 00 C0
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
	brk $17.b		; 00 17
	adc ($16.b),Y		; 71 16
	bvs  11.b		; 70 0B
	sec		; 38
	phd		; 0B
	sec		; 38
	ora $1C.b		; 05 1C
	ora ($0C.b,X)		; 01 0C
	cop $0E.b		; 02 0E
	ora ($07.b,X)		; 01 07
	rol $2F20.w		; 2E 20 2F
	jsr $1017.w		; 20 17 10
	ora [$10.b],Y		; 17 10
	phd		; 0B
	php		; 08
	ora [$04.b]		; 07 04
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	asl $8B.b,X		; 16 8B
	phd		; 0B
	sta $85.b		; 85 85
	rep #$02		; C2 02
	eor ($C1.b,X)		; 41 C1
	rts		; 60

	sta ($20.b,X)		; 81 20
	cpx #$4030.w		; E0 30 40
	bpl  15.b		; 10 0F
	tsb $07.b		; 04 07
	cop $03.b		; 02 03
	ora ($81.b,X)		; 01 81
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($22.b,X)		; 01 22
	ora ($34.b,X)		; 01 34
	ora $28.b,S		; 03 28
	ora [$20.b],Y		; 17 20
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($13.b,X)		; 01 13
	ora ($1F.b,S),Y		; 13 1F
	ora $F80000.l,X		; 1F 00 00 F8
	brk $34.b		; 00 34
	sed		; F8
	sty $F8.b		; 84 F8
	and [$C8.b],Y		; 37 C8
	sei		; 78
	lda [$77.b]		; A7 77
	sty $9B67.w		; 8C 67 9B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	sei		; 78
	sei		; 78
	iny		; C8
	iny		; C8
	bcs -128.b		; B0 80
	pld		; 2B
	plp		; 28
	tsb $6008.w		; 0C 08 60
	ora $100F10.l,X		; 1F 10 0F 10
	ora $200F10.l		; 0F 10 0F 20
	ora $201F20.l,X		; 1F 20 1F 20
	ora $1B0718.l,X		; 1F 18 07 1B
	tas		; 1B
	ora #$0D09.w		; 09 09 0D
	ora $0C0C.w		; 0D 0C 0C
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	eor $AC.b		; 45 AC
	ply		; 7A
	stx $64.b		; 86 64
	sta $63.b,S		; 83 63
	bra -28.b		; 80 E4
	ora $E3.b,S		; 03 E3
	ora ($E7.b,X)		; 01 E7
	tsb $E3.b		; 04 E3
	brk $1B.b		; 00 1B
	php		; 08
	ora $04.b		; 05 04
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($04.b,X)		; 01 04
	ora $0D.b		; 05 0D
	brk $0C.b		; 00 0C
	ora [$F9.b],Y		; 17 F9
	ora $EC1FF4.l		; 0F F4 1F EC
	and $00CCEC.l,X		; 3F EC CC 00
	stp		; DB
	bra -15.b		; 80 F1
	dec $FB.b		; C6 FB
	trb $E4.b		; 14 E4
	sbc $EE.b		; E5 EE
	nop		; EA
	dec $0CC2.w		; CE C2 0C
	brk $B3.b		; 00 B3
	sta $B4.b,S		; 83 B4
	ora [$CE.b]		; 07 CE
	ora $E01714.l		; 0F 14 17 E0
	cli		; 58
	bne -96.b		; D0 A0
	adc ($00.b)		; 72 00
	adc $E0.b		; 65 E0
	inc $F970.w,X		; FE 70 F9
	bvs 100.b		; 70 64
	txa		; 8A
	phy		; 5A
	ora $5010.w		; 0D 10 50
	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
	cop $F2.b		; 02 F2
	adc ($73.b,X)		; 61 73
	rol $77.b		; 26 77
	ora $1B.b,S		; 03 1B
	lda ($AD.b,X)		; A1 AD
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	bpl  31.b		; 10 1F
	rep #$C3		; C2 C3
	ror $33E0.w		; 6E E0 33
	beq   6.b		; F0 06
	inc $FF80.w,X		; FE 80 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inx		; E8
	php		; 08
	and $9F01.w,X		; 3D 01 9F
	bra -49.b		; 80 CF
	cpy #$3839.w		; C0 39 38
	eor [$47.b]		; 47 47
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	ldy $6730.w		; AC 30 67
	php		; 08
	dec $C3.b		; C6 C3
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	cpy #$F800.w		; C0 00 F8
	php		; 08
	tsa		; 3B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	brk $74.b		; 00 74
	dey		; 88
	sta ($EC.b)		; 92 EC
	eor ($FE.b,X)		; 41 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	ldy $A4.b		; A4 A4
	ora ($FE.b,X)		; 01 FE
	sta ($6E.b),Y		; 91 6E
	tda		; 7B
	sty $EE.b		; 84 EE
	bcc -106.b		; 90 96
	rts		; 60

	sty $48.b,X		; 94 48
	plb		; AB
	tsb $0473.w		; 0C 73 04
	jmp $044C.w		; 4C 4C 04
	tsb $80.b		; 04 80
	bra  16.b		; 80 10
	bpl  96.b		; 10 60
	pla		; 68
	jsr $6009.w		; 20 09 60
	clc		; 18
	ply		; 7A
	.db $82, $47, $27		; 82 47 27
	and $003F18.l		; 2F 18 3F 00
	rol $5E11.w		; 2E 11 5E
	and ($5E.b,X)		; 21 5E
	and $9E.b		; 25 9E
	adc $BD.b		; 65 BD
	lsr $00.b		; 46 00
	and $051800.l,X		; 3F 00 18 05
	ora $17.b		; 05 17
	asl $37.b		; 06 37
	asl $37.b,X		; 16 37
	ora ($77.b)		; 12 77
	ora ($6F.b)		; 12 6F
	and #$06FD.w		; 29 FD 06
	and $000F00.l,X		; 3F 00 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $0D0D29.l		; 2F 29 0D 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F810.w		; E0 10 F8
	ldy #$40F8.w		; A0 F8 40
	bvs   0.b		; 70 00
	ldy #$00C0.w		; A0 C0 00
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	ldy #$5000.w		; A0 00 50
	bpl -96.b		; 10 A0
	jsr $4040.w		; 20 40 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plp		; 28
	ror $680E.w		; 6E 0E 68
	ply		; 7A
	tsb $7E.b		; 04 7E
	bmi 122.b		; 30 7A
	tsb $36.b		; 04 36
	sei		; 78
	bmi 120.b		; 30 78
	bvs 120.b		; 70 78
	trb $04.b		; 14 04
	bmi  32.b		; 30 20
	tsb $00.b		; 04 00
	sec		; 38
	php		; 08
	tsb $00.b		; 04 00
	brk $F8.b		; 00 F8
	jsr $20FC.w		; 20 FC 20
	jsr ($0000.w,X)		; FC 00 00
	sty $7400.w		; 8C 00 74
	brk $AA.b		; 00 AA
	brk $47.b		; 00 47
	jsr $01FE.w		; 20 FE 01
	tyx		; BB
	mvp $80,$7F		; 44 7F 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
	dey		; 88
	mvn $B8,$DC		; 54 DC B8
	ldy $0001.w,X		; BC 01 00
	trb $0758.w		; 1C 58 07
	sta [$7E.b]		; 87 7E
	sta ($BF.b,X)		; 81 BF
	sei		; 78
	sbc $0BF70E.l,X		; FF 0E F7 0B
	xce		; FB
	and $BD.b,X		; 35 BD
	phy		; 5A
	lda $AEDF5C.l,X		; BF 5C DF AE
	and $7EB8.w,Y		; 39 B8 7E
	asl $1F.b		; 06 1F
	ora ($6F.b),Y		; 11 6F
	stz $7F.b		; 64 7F
	lsr A		; 4A
	adc $227E25.l,X		; 7F 25 7E 22
	sbc $0F3051.l,X		; FF 51 30 0F
	trb $0F.b		; 14 0F
	bit $5C1F.w		; 2C 1F 5C
	and $A07FB4.l,X		; 3F B4 7F A0
	adc $407F80.l,X		; 7F 80 7F 40
	and $0A0707.l,X		; 3F 07 07 0A
	asl A		; 0A
	bpl  16.b		; 10 10
	jsr $0820.w		; 20 20 08
	php		; 08
	asl $3F1E.w,X		; 1E 1E 3F
	and $2E1B1B.l,X		; 3F 1B 1B 2E
	cmp $4BBF4C.l,X		; DF 4C BF 4B
	ldy $29D7.w,X		; BC D7 29
	cmp $2A.b,X		; D5 2A
	dec $FD25.w,X		; DE 25 FD
	ora [$69.b]		; 07 69
	sta $1111.w,X		; 9D 11 11
	ora ($12.b)		; 12 12
	bmi  48.b		; 30 30
	plp		; 28
	plp		; 28
	jsl $010022.l		; 22 22 00 01
	brk $01.b		; 00 01
	ora [$05.b]		; 07 05
	tsb $03.b		; 04 03
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora $000800.l		; 0F 00 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc [$06.b]		; E7 06
	adc $80.b		; 65 80
	eor $83.b		; 45 83
	cpy #$8003.w		; C0 03 80
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $02.b		; 00 02
	asl $0200.w		; 0E 00 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp.w [$8F00]		; DC 00 8F
	bmi -21.b		; 30 EB
	asl $D4.b		; 06 D4
	ora #$81E3.w		; 09 E3 81
	ror $3E91.w		; 6E 91 3E
	sta ($71.b,X)		; 81 71
	jmp.w [$EB2B]		; DC 2B EB
	bvs -16.b		; 70 F0
	bpl 118.b		; 10 76
	plp		; 28
	rtl		; 6B

	trb $D01D.w		; 1C 1D D0
	sta $81E0.w,X		; 9D E0 81
	plp		; 28
	php		; 08
	eor $9E0E.w,X		; 5D 0E 9E
	eor $FE0E3E.l		; 4F 3E 0E FE
	asl $FDFD.w		; 0E FD FD
	sbc $7DFD.w,X		; FD FD 7D
	sbc $79B9.w,X		; FD B9 79
	tay		; A8
	ldx $6F6C.w		; AE 6C 6F
	cpy $0CEF.w		; CC EF 0C
	ora $79FFF8.l		; 0F F8 FF 79
	sbc $01FF39.l,X		; FF 39 FF 01
	adc $0CFFE0.l,X		; 7F E0 FF 0C
	sbc $00FF00.l,X		; FF 00 FF 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	sbc ($F3.b,S),Y		; F3 F3
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $E51BFB.l,X		; 1F FB 1B E5
	dec $0FF1.w		; CE F1 0F
	beq  23.b		; F0 17
	adc #$030C.w		; 69 0C 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	sbc $E0.b,S		; E3 E0
	ora [$02.b]		; 07 02
	and ($30.b),Y		; 31 30
	ror $76.b,X		; 76 76
	ora $000306.l		; 0F 06 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $DDEFEE.l,X		; DF EE EF DD
	inc $F9E2.w,X		; FE E2 F9
	cpx $E4.b		; E4 E4
	stz $0FF7.w		; 9C F7 0F
	sty $0303.w		; 8C 03 03
	brk $FE.b		; 00 FE
	bpl  -4.b		; 10 FC
	jsr $08E9.w		; 20 E9 08
	sbc [$04.b]		; E7 04
	phb		; 8B
	php		; 08
	php		; 08
	php		; 08
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	cpy #$B800.w		; C0 00 B8
	rti		; 40

	sbc [$E8.b],Y		; F7 E8
	inc $DF3D.w,X		; FE 3D DF
	and $F9.b,S		; 23 F9
	stx $E6.b		; 86 E6
	eor $D03F.w,Y		; 59 3F D0
	brk $00.b		; 00 00
	cpy #$F880.w		; C0 80 F8
	bpl  -1.b		; 10 FF
.ACCU 16
.INDEX 16
	rep #$3F		; C2 3F
	trb $41C7.w		; 1C C7 41
	sbc $F8A0.w,Y		; F9 A0 F8
	plp		; 28
	phx		; DA
	bit $102E.w		; 2C 2E 10
	ora $0A.b,X		; 15 0A
	phd		; 0B
	tsb $05.b		; 04 05
	cop $03.b		; 02 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	bpl  28.b		; 10 1C
	tsb $040E.w		; 0C 0E 04
	asl $02.b		; 06 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($02.b,X)		; 01 02
	cop $06.b		; 02 06
	ora $1C.b		; 05 1C
	asl $10.b,X		; 16 10
	phy		; 5A
	eor $54.b,S		; 43 54
	eor [$A8.b],Y		; 57 A8
	ldx $0000.w		; AE 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $E11D60.l		; 0F 60 1D E1
	lsr A		; 4A
.ACCU 8
	sep #$A4		; E2 A4
	pea $0000.w		; F4 00 00
	brk $00.b		; 00 00
	cpx #$2000.w		; E0 00 20
	cpy #$00E0.w		; C0 E0 00
	ldy #$E040.w		; A0 40 E0
	brk $A0.b		; 00 A0
	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	cpy #$0040.w		; C0 40 00
	bne  60.b		; D0 3C
	cpx $A6.b		; E4 A6
	phx		; DA
	sta $DE.b,S		; 83 DE
	bra  -1.b		; 80 FF
	jsr $60AF.w		; 20 AF 60
	sta ($70.b),Y		; 91 70
	ror $9E.b		; 66 9E
	ldy #$98A0.w		; A0 A0 98
	brk $BC.b		; 00 BC
	brk $BF.b		; 00 BF
	brk $9F.b		; 00 9F
	bra  95.b		; 80 5F
	rti		; 40

	adc $989960.l		; 6F 60 99 98
	cli		; 58
	adc [$D0.b]		; 67 D0
	ora $82033A.l,X		; 1F 3A 03 82
	bra 120.b		; 80 78
	sed		; F8
	cmp [$3F.b]		; C7 3F
	brk $3F.b		; 00 3F
	brk $03.b		; 00 03
	lda [$27.b]		; A7 27
	inx		; E8
	php		; 08
	sbc $7F01.w,X		; FD 01 7F
	brk $87.b		; 00 87
	bra  56.b		; 80 38
	sec		; 38
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	bra -16.b		; 80 F0
	cpy #$A078.w		; C0 78 A0
	clv		; B8
	bvc  88.b		; 50 58
	jsr $0038.w		; 20 38 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E040.w		; C0 40 E0
	jsr $50F0.w		; 20 F0 50
	bvs  32.b		; 70 20
	bmi  16.b		; 30 10
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	rts		; 60

	cpy #$E818.w		; C0 18 E8
	tsb $0734.w		; 0C 34 07
	cmp $30C1.w		; CD C1 30
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $3E.b		; 00 3E
	brk $CF.b		; 00 CF
	cpy #$FF0F.w		; C0 0F FF
	bra  -1.b		; 80 FF
	bmi  63.b		; 30 3F
	cpx $3FEF.w		; EC EF 3F
	sbc $00FF03.l,X		; FF 03 FF 00
	and $300100.l,X		; 3F 00 01 30
	bmi  79.b		; 30 4F
	eor $1201C1.l		; 4F C1 01 12
	cop $C0.b		; 02 C0
	cpy #$3C3C.w		; C0 3C 3C
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora $07.b,S		; 03 07
	asl $2D1F.w,X		; 1E 1F 2D
	and ($FF.b,S),Y		; 33 FF
	rol $40BE.w		; 2E BE 40
	cpy #$0100.w		; C0 00 01
	ora [$01.b]		; 07 01
	ora [$00.b]		; 07 00
	ora $203F00.l,X		; 1F 00 3F 20
	adc ($28.b,S),Y		; 73 28
	rol $4000.w		; 2E 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	sec		; 38
	jmp ($3810.w,X)		; 7C 10 38
	jmp $BC5C.w		; 4C 5C BC
	ror $1E60.w,X		; 7E 60 1E
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $7C.b		; 00 7C
	clc		; 18
	inc $FE00.w,X		; FE 00 FE
	mvp $38,$FE		; 44 FE 38
	adc $0E1F00.l,X		; 7F 00 1F 0E
	asl $0E0E.w		; 0E 0E 0E
	asl $0E0E.w		; 0E 0E 0E
	asl $0E0E.w		; 0E 0E 0E
	asl $0E1E.w		; 0E 1E 0E
	asl $1E26.w,X		; 1E 26 1E
	tsb $1F.b		; 04 1F
	tsb $1F.b		; 04 1F
	tsb $1F.b		; 04 1F
	tsb $1F.b		; 04 1F
	tsb $1F.b		; 04 1F
	tsb $3F.b		; 04 3F
	tsb $3F.b		; 04 3F
	tsb $1F.b		; 04 1F
	trb $181C.w		; 1C 1C 18
	trb $3818.w		; 1C 18 38
	sec		; 38
	sec		; 38
	bmi 120.b		; 30 78
	inx		; E8
	beq -40.b		; F0 D8
	bmi -16.b		; 30 F0
	cpx #$3E08.w		; E0 08 3E
	clc		; 18
	rol $7C18.w,X		; 3E 18 7C
	bpl 124.b		; 10 7C
	brk $FC.b		; 00 FC
	brk $F0.b		; 00 F0
	brk $30.b		; 00 30
	bra -32.b		; 80 E0
	ora #$10.b		; 09 10
	ora ($00.b,X)		; 01 00
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	ora $06.b,S		; 03 06
	ora ($0C.b,X)		; 01 0C
	asl $0C.b		; 06 0C
	ora $000001.l,X		; 1F 01 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	adc $15FEEB.l,X		; 7F EB FE 15
	ora $2B9F2A.l,X		; 1F 2A 9F 2B
	eor ($68.b,S),Y		; 53 68
	jmp $FE9D66.l		; 5C 66 9D FE
	and $28FE.w,X		; 3D FE 28
	cpx #$1014.w		; E0 14 10
	nop		; EA
	plp		; 28
	sbc $28.b,S		; E3 28
	ldy #$812C.w		; A0 2C 81
	ora $48.b		; 05 48
	eor $BD98.w,X		; 5D 98 BD
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $03.b		; 05 03
	asl $03.b		; 06 03
	php		; 08
	ora [$08.b]		; 07 08
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $06.b		; 00 06
	asl $04.b		; 06 04
	tsb $00.b		; 04 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $E0.b		; 00 E0
	brk $3F.b		; 00 3F
	cpy #$57F8.w		; C0 F8 57
	sbc [$1B.b]		; E7 1B
	adc $5397.w		; 6D 97 53
	lda $003FC2.l,X		; BF C2 3F 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra 119.b		; 80 77
	ora [$6C.b]		; 07 6C
	pla		; 68
	inc A		; 1A
	ora ($0C.b)		; 12 0C
	tsb $3939.w		; 0C 39 39
	asl A		; 0A
	ora $07.b		; 05 07
	php		; 08
	ora $14.b,S		; 03 14
	asl $29.b		; 06 29
	eor [$08.b]		; 47 08
	rtl		; 6B

	tsb $2B.b		; 04 2B
	tsb $15.b		; 04 15
	asl A		; 0A
	tsb $05.b		; 04 05
	brk $00.b		; 00 00
	tsb $190C.w		; 0C 0C 19
	clc		; 18
	and $1539.w,Y		; 39 39 15
	and ($15.b),Y		; 31 15
	ora ($0B.b),Y		; 11 0B
	ora ($78.b,X)		; 01 78
	sbc $06FE.w,Y		; F9 FE 06
	adc $827D81.l,X		; 7F 81 7D 82
	lda $AB42.w,X		; BD 42 AB
	mvn $35,$EE		; 54 EE 35
	inc $0035.w		; EE 35 00
	sbc $A00706.l,X		; FF 06 07 A0
	and ($AA.b,X)		; 21 AA
	plp		; 28
	rtl		; 6B

	and #$7D.b		; 29 7D
	and #$7D.b		; 29 7D
	pha		; 48
	adc $48B64A.l,X		; 7F 4A B6 48
	sbc $FE09.w,X		; FD 09 FE
	tas		; 1B
	inc $7C03.w,X		; FE 03 7C
	sta $FC.b,S		; 83 FC
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	stz $F8.b,X		; 74 F8
	bmi 107.b		; 30 6B
	jsr $505A.w		; 20 5A 50
	and $7921.w,Y		; 39 21 79
	adc $0282.w,Y		; 79 82 02
	sed		; F8
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
	brk $00.b		; 00 00
	beq  96.b		; F0 60
	php		; 08
	sed		; F8
	tsb $0490.w		; 0C 90 04
	bvc  68.b		; 50 44
	bcs -60.b		; B0 C4
	sei		; 78
	cpy $8C30.w		; CC 30 8C
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $B8.b		; 00 B8
	brk $78.b		; 00 78
	rti		; 40

	bcs -128.b		; B0 80
	sei		; 78
	php		; 08
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
	cmp $662A.w,X		; DD 2A 66
	tya		; 98
	ldx $18.b		; A6 18
	stz $D8.b,X		; 74 D8
	cpy #$F048.w		; C0 48 F0
	clc		; 18
	brk $30.b		; 00 30
	bra -80.b		; 80 B0
	jsr $8820.w		; 20 20 88
	dey		; 88
	bpl  80.b		; 10 50
	brk $40.b		; 00 40
	cld		; D8
	pla		; 68
	cpx #$E000.w		; E0 00 E0
	jsr $2060.w		; 20 60 20
	rts		; 60

	ora $3F077F.l,X		; 1F 7F 07 3F
	tsb $347B.w		; 0C 7B 34
	stz $28.b,X		; 74 28
	pla		; 68
	bmi 116.b		; 30 74
	php		; 08
	bit $1F00.w,X		; 3C 00 1F
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	ora ($3C.b,S),Y		; 13 3C
	php		; 08
	sec		; 38
	bpl  48.b		; 10 30
	brk $38.b		; 00 38
	bmi   0.b		; 30 00
	brk $F8.b		; 00 F8
	ora [$F8.b],Y		; 17 F8
	inx		; E8
	xce		; FB
	plp		; 28
	sbc [$0F.b],Y		; F7 0F
	sec		; 38
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	cpx #$00E7.w		; E0 E7 00
	sbc [$C0.b]		; E7 C0
	plp		; 28
	plp		; 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $FC.b		; 05 FC
	.db $42, $7E		; 42 7E
	beq   3.b		; F0 03
	asl $1900.w,X		; 1E 00 19
	sed		; F8
	ora ($FF.b,X)		; 01 FF
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	tas		; 1B
	clc		; 18
	lda ($20.b,X)		; A1 20
	sbc $FF01.w,X		; FD 01 FF
	brk $E7.b		; 00 E7
	cpx #$0E0E.w		; E0 0E 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $18.b,X		; F6 18
	.db $62, $0C, $81		; 62 0C 81
	stx $9C93.w		; 8E 93 9C
	lda $3E.b,S		; A3 3E
	cmp [$F9.b]		; C7 F9
	phd		; 0B
	beq   1.b		; F0 01
	brk $E4.b		; 00 E4
	tsb $F8.b		; 04 F8
	php		; 08
	ply		; 7A
	php		; 08
	ror A		; 6A
	asl A		; 0A
	stp		; DB
	ora $3233.w,Y		; 19 33 32
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$F000.w		; C0 00 F0
	cpy #$00F0.w		; C0 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$0000.w		; C0 00 00
	brk $1F.b		; 00 1F
	asl A		; 0A
	rol $3D05.w,X		; 3E 05 3D
	ora $2B.b,S		; 03 2B
	ora [$38.b],Y		; 17 38
	ora [$27.b]		; 07 27
	clc		; 18
	and $0B.b		; 25 0B
	bit $08.b		; 24 08
	asl A		; 0A
	brk $14.b		; 00 14
	ora ($08.b),Y		; 11 08
	phd		; 0B
	ora ($07.b),Y		; 11 07
	brk $07.b		; 00 07
	bpl  16.b		; 10 10
	clc		; 18
	tas		; 1B
	clc		; 18
	tas		; 1B
	sbc $C01A.w,X		; FD 1A C0
	cpx #$FFFF.w		; E0 FF FF
	sbc $F8E7FF.l,X		; FF FF E7 F8
	inc $FC04.w,X		; FE 04 FC
	sed		; F8
	ora $0218.w,X		; 1D 18 02
	tas		; 1B
	brk $FF.b		; 00 FF
	sbc $FFF0FF.l,X		; FF FF F0 FF
	brk $F8.b		; 00 F8
	brk $04.b		; 00 04
	bpl  -8.b		; 10 F8
	brk $F8.b		; 00 F8
	tsb $5007.w		; 0C 07 50
	ora $401F68.l		; 0F 68 1F 40
	and $200F30.l,X		; 3F 30 0F 20
	ora $491E21.l,X		; 1F 21 1E 49
	bmi   2.b		; 30 02
	cop $0E.b		; 02 0E
	asl $1616.w		; 0E 16 16
	dec A		; 3A
	dec A		; 3A
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	clc		; 18
	clc		; 18
	bmi  48.b		; 30 30
	cpy #$C93F.w		; C0 3F C9
	rol $D6.b,X		; 36 D6
	and #$966A.w		; 29 6A 96
	adc #$D094.w		; 69 94 D0
	bit $3E8A.w		; 2C 8A 3E
	ldy $07.b,X		; B4 07
	and ($32.b)		; 32 32
	jsr $0120.w		; 20 20 01
	ora ($09.b,X)		; 01 09
	brk $0F.b		; 00 0F
	tsb $07.b		; 04 07
	tsb $15.b		; 04 15
	trb $0B.b		; 14 0B
	eor $17.b,S		; 43 17
	php		; 08
	asl $09.b,X		; 16 09
	ora $000300.l		; 0F 00 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $030B00.l,X		; 7F 00 0B 03
	phd		; 0B
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F7.b		; 00 F7
	rol A		; 2A
	sbc [$2B.b],Y		; F7 2B
	adc [$BB.b],Y		; 77 BB
	xce		; FB
	stz $FE.b,X		; 74 FE
	ora ($03.b,X)		; 01 03
	and $E01F01.l,X		; 3F 01 1F E0
	ora [$7F.b]		; 07 7F
	eor $7F.b,X		; 55 7F
	mvn $44,$FF		; 54 FF 44
	inc $018A.w,X		; FE 8A 01
	ora ($0C.b,X)		; 01 0C
	tsb $0606.w		; 0C 06 06
	ora ($01.b,X)		; 01 01
	bvs -128.b		; 70 80
	bcc  96.b		; 90 60
	cpx #$A898.w		; E0 98 A8
	jmp ($82B8.w)		; 6C B8 82
	jmp ($BE01.w,X)		; 7C 01 BE
	bra  79.b		; 80 4F
	cpy #$60E0.w		; C0 E0 60
	cpx #$9080.w		; E0 80 90
	bpl  80.b		; 10 50
	rti		; 40

	jmp ($FE00.w,X)		; 7C 00 FE
	brk $7F.b		; 00 7F
	brk $BF.b		; 00 BF
	bra  56.b		; 80 38
	cpx $EC38.w		; EC 38 EC
	cpx #$F82C.w		; E0 2C F8
	brk $B8.b		; 00 B8
	bvs -72.b		; 70 B8
	rts		; 60

	sec		; 38
	cpx #$6038.w		; E0 38 60
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
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$4000.w		; C0 00 40
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra  60.b		; 80 3C
	adc $F4E4.w,X		; 7D E4 F4
	sbc [$CC.b],Y		; F7 CC
	cmp $187E30.l		; CF 30 7E 18
	lda $7C41.w,X		; BD 41 7C
	sta ($80.b),Y		; 91 80
	jsr ($FE1C.w,X)		; FC 1C FE
	ora ($FE.b,X)		; 01 FE
	ora ($CC.b,X)		; 01 CC
	ora ($30.b,X)		; 01 30
	ora $18.b,S		; 03 18
	.db $42, $00		; 42 00
	cmp $013E41.l		; CF 41 3E 01
	and $003F1C.l,X		; 3F 1C 3F 00
	ora $041300.l,X		; 1F 00 13 04
	inc A		; 1A
	brk $1A.b		; 00 1A
	ora ($32.b,X)		; 01 32
	ora $01.b		; 05 01
	ora ($1E.b,X)		; 01 1E
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $0C.b		; 00 0C
	tsb $0D05.w		; 0C 05 0D
	ora $0D.b		; 05 0D
	ora $7F1D.w		; 0D 1D 7F
	lda $FF7FFF.l,X		; BF FF 7F FF
	adc $CFC3FF.l,X		; 7F FF C3 CF
	ora $BF.b,S		; 03 BF
	ora $BB.b,S		; 03 BB
	ora $9C.b,S		; 03 9C
	eor $1F.b		; 45 1F
	and $3F7F3F.l,X		; 3F 3F 7F 3F
	adc $32C343.l,X		; 7F 43 C3 32
	tsa		; 3B
	.db $42, $7B		; 42 7B
	rti		; 40

	adc [$60.b],Y		; 77 60
	adc [$F4.b],Y		; 77 F4
	sed		; F8
	inx		; E8
	sbc ($D2.b,S),Y		; F3 D2
	inc $A5.b		; E6 A5
	jmp.w [$D8AF]		; DC AF D8
	adc $107E80.l		; 6F 80 7E 10
	lda $C041.w,X		; BD 41 C0
	sed		; F8
	bra -16.b		; 80 F0
	ora ($E0.b,X)		; 01 E0
	ora $C0.b,S		; 03 C0
	ora [$D0.b],Y		; 17 D0
	ora $800F80.l,X		; 1F 80 0F 80
	lsr $0000.w		; 4E 00 00
	sed		; F8
	bvs   4.b		; 70 04
	jsr ($C806.w,X)		; FC 06 C8
	cop $A8.b		; 02 A8
	jsl $BC6258.l		; 22 58 62 BC
	inc $10.b		; E6 10
	dec $00.b		; C6 00
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $DC.b		; 00 DC
	brk $BC.b		; 00 BC
	jsr $4058.w		; 20 58 40
	ldy $0084.w,X		; BC 84 00
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
	brk $00.b		; 00 00
	brk $B7.b		; 00 B7
	eor #$057B.w		; 49 7B 05
	ora $000703.l,X		; 1F 03 07 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	rol $C100.w,X		; 3E 00 C1
	rol $125B.w,X		; 3E 5B 12
	ora [$12.b],Y		; 17 12
	ora [$04.b]		; 07 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $BC00.w,X		; 3E 00 BC
	tad		; 5B
	lda $A3DDDC.l,X		; BF DC DD A3
	sbc $0C.b,X		; F5 0C
	tas		; 1B
	sed		; F8
	ora $067C.w		; 0D 7C 06
	rol $FF01.w,X		; 3E 01 FF
	sbc $20FCA4.l,X		; FF A4 FC 20
	sbc ($52.b)		; F2 52
	phd		; 0B
	php		; 08
	adc [$60.b]		; 67 60
	and ($30.b,S),Y		; 33 30
	ora #$0608.w		; 09 08 06
	asl $80.b		; 06 80
	cop $01.b		; 02 01
	cmp [$47.b]		; C7 47
	adc ($C7.b,X)		; 61 C7
	bpl -27.b		; 10 E5
	phd		; 0B
	sbc ($07.b),Y		; F1 07
	sbc $BE03.w,Y		; F9 03 BE
	sta $01.b,S		; 83 01
	brk $82.b		; 00 82
	.db $82, $80, $00		; 82 80 00
	sep #$02		; E2 02
	sbc ($00.b,S),Y		; F3 00
	xce		; FB
	brk $FD.b		; 00 FD
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $06.b		; 00 06
	ora ($04.b,X)		; 01 04
	ora $03.b,S		; 03 03
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($04.b,X)		; 01 04
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $CC.b,S		; 03 CC
	adc ($0C.b,S),Y		; 73 0C
	sbc ($8D.b,S),Y		; F3 8D
	sbc ($06.b)		; F2 06
	sbc $F906.w,Y		; F9 06 F9
	ora $18F2.w		; 0D F2 18
	sbc $3F.b,S		; E3 3F
	brk $23.b		; 00 23
	and $E2.b,S		; 23 E2
.ACCU 8
	sep #$60		; E2 60
	rts		; 60

	ldy #$40A0.w		; A0 A0 40
	rti		; 40

	bra -128.b		; 80 80
	sta ($81.b,X)		; 81 81
	brk $00.b		; 00 00
	ora $96F2.w		; 0D F2 96
	adc #$6A.b		; 69 6A
	sta ($A7.b),Y		; 91 A7
	adc $449C.w		; 6D 9C 44
	ora $01FEC1.l		; 0F C1 FE 01
	tya		; 98
	ror A		; 6A
	jsl $080822.l		; 22 22 08 08
	ora ($15.b),Y		; 11 15
	bcc   4.b		; 90 04
	sbc $7E46.w,X		; FD 46 7E
	rti		; 40

	brk $00.b		; 00 00
	cpx #$D08F.w		; E0 8F D0
	ldy #$8060.w		; A0 60 80
	rts		; 60

	bra  64.b		; 80 40
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	adc $800000.l,X		; 7F 00 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $0A.b		; 00 0A
	ora [$0D.b]		; 07 0D
	asl $11.b		; 06 11
	asl $0F10.w		; 0E 10 0F
	clc		; 18
	ora $000E19.l		; 0F 19 0E 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	ora $00.b		; 05 00
	brk $0C.b		; 00 0C
	tsb $0808.w		; 0C 08 08
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	bra  32.b		; 80 20
	cpy #$0060.w		; C0 60 00
	rts		; 60

	cpx #$A000.w		; E0 00 A0
	cpy #$00C0.w		; C0 C0 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	rti		; 40

	brk $00.b		; 00 00
	cpy #$8000.w		; C0 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	cpy #$8060.w		; C0 60 80
	beq  64.b		; F0 40
	sed		; F8
	jsr $187E.w		; 20 7E 18
	rol $8000.w,X		; 3E 00 80
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	rti		; 40

	rts		; 60

	jsr $5070.w		; 20 70 50
	sec		; 38
	jsr $0000.w		; 20 00 00
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
	and [$08.b]		; 27 08
	eor $4326.w,Y		; 59 26 43
	bit $36.b		; 24 36
	ora ($2E.b,X)		; 01 2E
	ora ($3F.b,X)		; 01 3F
	brk $57.b		; 00 57
	plp		; 28
	eor $181820.l,X		; 5F 20 18 18
	bit $24.b		; 24 24
	bit $093C.w,X		; 3C 3C 09
	clc		; 18
	ora $14.b,X		; 15 14
	ora $05.b		; 05 05
	and $2D05.w		; 2D 05 2D
	ora $22CE.w		; 0D CE 22
	and [$C0.b],Y		; 37 C0
	ora $02BD80.l,X		; 1F 80 BD 02
	cmp $D5BB03.l,X		; DF 03 BB D5
	tyx		; BB
	pei ($DD.b)		; D4 DD
	tax		; AA
	bmi  51.b		; 30 33
	iny		; C8
	iny		; C8
	sbc ($F9.b,X)		; E1 F9
	lsr $74.b		; 46 74
	lda [$A4.b]		; A7 A4
	cmp [$02.b],Y		; D7 02
	sbc $55FF2B.l,X		; FF 2B FF 55
	plx		; FA
	and $F4.b,S		; 23 F4
	adc [$F8.b]		; 67 F8
	ora $F00DF0.l		; 0F F0 0D F0
	ora #$E0.b		; 09 E0
	cmp ($E0.b,X)		; C1 E0
	cmp ($C0.b,X)		; C1 C0
	ora ($2D.b,X)		; 01 2D
	ora ($6A.b,X)		; 01 6A
	cop $E4.b		; 02 E4
	cpx $08.b		; E4 08
	php		; 08
	cpx #$C0E0.w		; E0 E0 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bra 112.b		; 80 70
	cpy $28.b		; C4 28
	sty $8C20.w		; 8C 20 8C
	beq -100.b		; F0 9C
	beq -104.b		; F0 98
	bvs  24.b		; 70 18
	rts		; 60

	clc		; 18
	rti		; 40

	bpl  56.b		; 10 38
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	dey		; 88
	pla		; 68
	php		; 08
	rts		; 60

	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $0C.b		; 00 0C
	ora $0F.b,S		; 03 0F
	brk $07.b		; 00 07
	ora $0F.b,S		; 03 0F
	tsb $0F.b		; 04 0F
	tsb $0D.b		; 04 0D
	asl $0E.b		; 06 0E
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $07.b		; 00 07
	ora $06.b,S		; 03 06
	cop $06.b		; 02 06
	brk $07.b		; 00 07
	asl $00.b		; 06 00
	brk $3F.b		; 00 3F
	cmp $FF.b		; C5 FF
	sbc $85FF.w,X		; FD FF 85
	inc $0001.w,X		; FE 01 00
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $FC.b		; 00 FC
	sec		; 38
	jsr ($FC00.w,X)		; FC 00 FC
	sei		; 78
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  63.b		; 30 3F
	sei		; 78
	brk $0F.b		; 00 0F
	brk $38.b		; 00 38
	sed		; F8
	ora ($FF.b,X)		; 01 FF
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	iny		; C8
	php		; 08
	sbc $00FF00.l,X		; FF 00 FF 00
	cmp [$C0.b]		; C7 C0
	asl $000E.w		; 0E 0E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5C.b		; 00 5C
	cmp ($30.b,X)		; C1 30
	sbc ($82.b),Y		; F1 82
	and ($74.b,S),Y		; 33 74
	ora [$F8.b]		; 07 F8
	sbc $03FF00.l,X		; FF 00 FF 03
	bit $0000.w,X		; 3C 00 00
	ldx $4F80.w,Y		; BE 80 4F
	eor ($FD.b,X)		; 41 FD
	and ($FB.b),Y		; 31 FB
	ora $06.b,S		; 03 06
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	ora $02.b,S		; 03 02
	ora $3005.w		; 0D 05 30
	pld		; 2B
	.db $62, $35, $86		; 62 35 86
	phk		; 4B
	ora $0000.w		; 0D 00 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	asl $1C00.w		; 0E 00 1C
	brk $7A.b		; 00 7A
	cop $F4.b		; 02 F4
	ora $FF.b		; 05 FF
	tsb $71FE.w		; 0C FE 71
	sbc $FFC2.w,X		; FD C2 FF
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	jsr ($FFFF.w,X)		; FC FF FF
	sbc $333FFF.l,X		; FF FF 3F 33
	sbc $3DFF8E.l,X		; FF 8E FF 3D
	sbc $0000FF.l,X		; FF FF 00 00
	brk $FF.b		; 00 FF
	jmp ($FEFF.w,X)		; 7C FF FE
	sbc $EBD535.l,X		; FF 35 D5 EB
	rol A		; 2A
	xba		; EB
	ror A		; 6A
	sbc $6A.b		; E5 6A
	xce		; FB
	pea $F0FC.w		; F4 FC F0
	pla		; 68
	bvs -112.b		; 70 90
	ldy #$1FC5.w		; A0 C5 1F
	txa		; 8A
	ldx $7E20.w,Y		; BE 20 7E
	rts		; 60

	ply		; 7A
	cpx #$60F4.w		; E0 F4 60
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$40C0.w		; E0 C0 40
	adc $8F8F00.l,X		; 7F 00 8F 8F
	sei		; 78
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $70.b		; 00 70
	brk $87.b		; 00 87
	sta [$00.b]		; 87 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $7F.b		; 00 7F
	bra -16.b		; 80 F0
	lda $DB36CF.l		; AF CF 36 DB
	and $847FA7.l		; 2F A7 7F 84
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $EE.b		; 00 EE
	asl $D0D9.w		; 0E D9 D0
	bit $24.b,X		; 34 24
	clc		; 18
	clc		; 18
	adc ($72.b)		; 72 72
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	inx		; E8
	bpl -60.b		; 10 C4
	sei		; 78
	sty $F8.b		; 84 F8
	and ($CC.b)		; 32 CC
	adc ($8C.b)		; 72 8C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$4820.w		; A0 20 48
	pha		; 48
	dey		; 88
	dey		; 88
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	jmp ($FD80.w,X)		; 7C 80 FD
	plb		; AB
	adc $83FF2B.l,X		; 7F 2B FF 83
	jmp ($FF83.w,X)		; 7C 83 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $28.b,S		; 03 28
	ora $A9.b,S		; 03 A9
	ora $28.b,S		; 03 28
	pld		; 2B
	tay		; A8
	plb		; AB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FC.b,S		; C3 FC
	jmp ($8080.w,X)		; 7C 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $E0FFFF.l,X		; FF FF FF E0
	sbc $00FC00.l,X		; FF 00 FC 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	inc $FAF0.w,X		; FE F0 FA
	txy		; 9B
	ror $67.b		; 66 67
	clc		; 18
	rol $0E0C.w,X		; 3E 0C 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FFFE.w,X		; FE FE FF
	brk $FF.b		; 00 FF
	brk $66.b		; 00 66
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	adc [$18.b]		; 67 18
	tyx		; BB
	and $DD.b		; 25 DD
	eor ($6E.b)		; 52 6E
	and #$B7.b		; 29 B7
	ora ($E7.b)		; 12 E7
	eor [$4F.b],Y		; 57 4F
	adc $1EDFAF.l		; 6F AF DF 1E
	asl $07.b		; 06 07
	.db $62, $53, $71		; 62 53 71
	lda ($38.b,X)		; A1 38
	cpy #$821A.w		; C0 1A 82
	ora $4E1F86.l,X		; 1F 86 1F 4E
	eor $F03DED.l,X		; 5F ED 3D F0
	ora $F7A0EF.l		; 0F EF A0 F7
	.db $42, $FF		; 42 FF
	jsl $6F8076.l		; 22 76 80 6F
	sty $6F.b		; 84 6F
	bra -46.b		; 80 D2
	bne 114.b		; D0 72
	adc ($96.b)		; 72 96
	asl $DA.b		; 06 DA
	bra 106.b		; 80 6A
	rti		; 40

	ora #$01.b		; 09 01
	trb $75.b		; 14 75
	trb $75.b		; 14 75
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	rti		; 40

	cpx #$B020.w		; E0 20 B0
	bvc -104.b		; 50 98
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $60.b		; 00 60
	brk $01.b		; 00 01
	brk $01.b		; 00 01
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
	brk $00.b		; 00 00
	brk $7E.b		; 00 7E
	sta $6E.b,S		; 83 6E
	sta ($F7.b,S),Y		; 93 F7
	asl A		; 0A
	and $000F06.l,X		; 3F 06 0F 00
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	sed		; F8
	brk $B7.b		; 00 B7
	bit $B7.b,X		; 34 B7
	bit $2F.b		; 24 2F
	and $0F.b		; 25 0F
	ora #$00.b		; 09 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $EF.b		; 00 EF
	eor ($F5.b)		; 52 F5
	ror A		; 6A
	ror $6EB1.w,X		; 7E B1 6E
	sta ($FB.b)		; 92 FB
	php		; 08
	adc $F037E0.l		; 6F E0 37 F0
	tas		; 1B
	sed		; F8
	sbc $94FEAD.l,X		; FF AD FE 94
	sed		; F8
	pha		; 48
	sbc ($60.b),Y		; F1 60
	ora [$00.b]		; 07 00
	sta $C0CF80.l,X		; 9F 80 CF C0
	and [$20.b]		; 27 20
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	cpy #$E010.w		; C0 10 E0
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	ora ($04.b,X)		; 01 04
	ora $04.b,S		; 03 04
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	ora $02.b,S		; 03 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $98.b		; 00 98
	cpx #$C03F.w		; E0 3F C0
	jmp ($77AB.w,X)		; 7C AB 77
	phb		; 8B
	and $DF33D7.l		; 2F D7 33 DF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsa		; 3B
	ora $34.b,S		; 03 34
	bmi   8.b		; 30 08
	brk $8C.b		; 00 8C
	sty $0703.w		; 8C 03 07
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc [$F0.b]		; E7 F0
	sbc $7FBFFF.l,X		; FF FF BF 7F
	eor $5F9D.w		; 4D 9D 5F
	ora $007F.w,X		; 1D 7F 00
	eor $2A.b,X		; 55 2A
	lda $F8C051.l		; AF 51 C0 F8
	and ($FF.b,S),Y		; 33 FF
	ora $BF857F.l		; 0F 7F 85 BF
	bra -67.b		; 80 BD
	bra -128.b		; 80 80
	plb		; AB
	sta ($5B.b,X)		; 81 5B
	asl A		; 0A
	ora [$10.b]		; 07 10
	sbc $10FF68.l		; EF 68 FF 10
	lda $10EF41.l,X		; BF 41 EF 10
	adc $A65F98.l		; 6F 98 5F A6
	adc $F901B3.l		; 6F B3 01 F9
	.db $62, $7A, $01		; 62 7A 01
	ora ($47.b),Y		; 11 47
	asl $59.b		; 06 59
	eor #$DE.b		; 49 DE
	lsr $EF.b		; 46 EF
	eor #$FF.b		; 49 FF
	jmp $00FF.w		; 4C FF 00
	jsr ($E200.w,X)		; FC 00 E2
	eor $E4.b,S		; 43 E4
	cmp [$F0.b]		; C7 F0
	ora $C05CA0.l,X		; 1F A0 5C C0
	bmi -64.b		; 30 C0
	bra -97.b		; 80 9F
	bra  95.b		; 80 5F
	rti		; 40

	cmp $DB81.w,X		; DD 81 DB
	ora $CC.b,S		; 03 CC
	cpy $1050.w		; CC 50 10
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	and $3E.b,S		; 23 3E
	.db $82, $FE, $01		; 82 FE 01
	sbc [$01.b]		; E7 01
	sta [$00.b]		; 87 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $D9.b		; 00 D9
	clc		; 18
	adc $64.b		; 65 64
	.db $82, $82, $02		; 82 82 02
	cop $01.b		; 02 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$4000.w		; C0 00 40
	bra  64.b		; 80 40
	cpy #$8060.w		; C0 60 80
	jsr $20C0.w		; 20 C0 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $05.b		; 00 05
	ora ($1E.b),Y		; 11 1E
	and $3F.b,S		; 23 3F
	bpl 127.b		; 10 7F
	php		; 08
	ply		; 7A
	asl $57.b		; 06 57
	and $170F2F.l		; 2F 2F 0F 17
	ora $01000E.l		; 0F 0E 00 01
	ora ($14.b,X)		; 01 14
	tsb $28.b		; 04 28
	jsr $1710.w		; 20 10 17
	rol $0F.b		; 26 0F
	ora [$1F.b]		; 07 1F
	ora $0F.b,S		; 03 0F
	rol $47DF.w		; 2E DF 47
	ldx $3053.w		; AE 53 30
	lsr $DF3C.w,X		; 5E 3C DF
	bit $1E1F.w,X		; 3C 1F 1E
	sta $CFCF9F.l,X		; 9F 9F CF CF
	stx $9E.b		; 86 9E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	ora ($3D.b,X)		; 01 3D
	php		; 08
	and $FE48.w,X		; 3D 48 FE
	ora $FF87FF.l		; 0F FF 87 FF
	eor $6C30.w		; 4D 30 6C
	cop $FA.b		; 02 FA
	ora $1B.b		; 05 1B
	jsr $10FB.w		; 20 FB 10
	plx		; FA
	bit $EC.b,X		; 34 EC
	beq -27.b		; F0 E5
	beq -78.b		; F0 B2
	sbc ($93.b,S),Y		; F3 93
	sbc ($04.b,S),Y		; F3 04
	tsb $E4.b		; 04 E4
	inc $04.b		; E6 04
	dec $24.b,X		; D6 24
	bit $C0.b,X		; 34 C0
	beq -64.b		; F0 C0
	sed		; F8
	and ($84.b,X)		; 21 84
	eor $A7C3.w,Y		; 59 C3 A7
	adc ($0B.b,X)		; 61 0B
	adc $1F04.w,Y		; 79 04 1F
	cop $0E.b		; 02 0E
	rtl		; 6B

	clc		; 18
	sbc $007800.l		; EF 00 78 00
	bit $5D01.w,X		; 3C 01 5D
	eor ($14.b,X)		; 41 14
	ora ($08.b),Y		; 11 08
	php		; 08
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	eor $071840.l,X		; 5F 40 18 07
	ora $030F01.l,X		; 1F 01 0F 03
	asl $1D0D.w,X		; 1E 0D 1D
	asl A		; 0A
	inc A		; 1A
	tsb $021D.w		; 0C 1D 02
	ora $000700.l		; 0F 00 07 00
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $040E02.l		; 0F 02 0E 04
	tsb $0E00.w		; 0C 00 0E
	tsb $0000.w		; 0C 00 00
	rol $FFC1.w,X		; 3E C1 FF
	sbc $0AFE.w,X		; FD FE 0A
	inc $8C02.w,X		; FE 02 8C
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	sec		; 38
	jsr ($F900.w,X)		; FC 00 F9
	beq   9.b		; F0 09
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $FC.b		; 04 FC
	sta ($FF.b,X)		; 81 FF
	bpl  31.b		; 10 1F
	sbc $4F01.w,X		; FD 01 4F
	cpy #$7E06.w		; C0 06 7E
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	tas		; 1B
	clc		; 18
	asl $06.b		; 06 06
	inx		; E8
	php		; 08
	inc $3F00.w,X		; FE 00 3F
	brk $19.b		; 00 19
	clc		; 18
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	beq   4.b		; F0 04
	jmp ($9806.w,X)		; 7C 06 98
	sta $00.b,S		; 83 00
	cmp $A4.b,S		; C3 A4
	and [$68.b]		; 27 68
	ora $00FE70.l		; 0F 70 FE 00
	jsr ($00F8.w,X)		; FC F8 00
	sed		; F8
	brk $7E.b		; 00 7E
	cop $7E.b		; 02 7E
	.db $42, $DA		; 42 DA
	cop $F6.b		; 02 F6
	asl $8C.b		; 06 8C
	sty $0000.w		; 8C 00 00
	asl $03.b		; 06 03
	plp		; 28
	ora [$34.b]		; 07 34
	ora $181F20.l		; 0F 20 1F 18
	ora [$10.b]		; 07 10
	ora $170F10.l		; 0F 10 0F 17
	php		; 08
	ora ($01.b,X)		; 01 01
	ora [$07.b]		; 07 07
	phd		; 0B
	phd		; 0B
	ora $021D.w,X		; 1D 1D 02
	cop $04.b		; 02 04
	tsb $0C.b		; 04 0C
	tsb $0808.w		; 0C 08 08
	rti		; 40

	lda $4ABE41.l,X		; BF 41 BE 4A
	lda $57.b,X		; B5 57
	tax		; AA
	rol A		; 2A
	pei ($A9.b)		; D4 A9
	bvc -11.b		; 50 F5
	tsb $DE2A.w		; 0C 2A DE
	inc A		; 1A
	inc A		; 1A
	bmi  48.b		; 30 30
	and ($21.b,X)		; 21 21
	jsr $0A20.w		; 20 20 0A
	ora ($0F.b,X)		; 01 0F
	brk $03.b		; 00 03
	brk $C5.b		; 00 C5
	tsb $60.b		; 04 60
	bmi -64.b		; 30 C0
	bcc -64.b		; 90 C0
	bcc 120.b		; 90 78
	bne   8.b		; D0 08
	cpy #$00FC.w		; C0 FC 00
	jmp $083E28.l		; 5C 28 3E 08
	cpy #$6000.w		; C0 00 60
	brk $60.b		; 00 60
	brk $A0.b		; 00 A0
	bra 112.b		; 80 70
	rti		; 40

	php		; 08
	php		; 08
	sec		; 38
	bpl  28.b		; 10 1C
	trb $E0.b		; 14 E0
	bra -16.b		; 80 F0
	rti		; 40

	sei		; 78
	ldy #$50BC.w		; A0 BC 50
	ror $3E0C.w,X		; 7E 0C 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	cpx #$F0A0.w		; E0 A0 F0
	bvc 120.b		; 50 78
	plp		; 28
	trb $0010.w		; 1C 10 00
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
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs  32.b		; 70 20
	ldy $20F8.w,X		; BC F8 20
	clv		; B8
	bvc 124.b		; 50 7C
	bpl  90.b		; 10 5A
	bit $182E.w		; 2C 2E 18
	and $0A1714.l		; 2F 14 17 0A
	tas		; 1B
	ora $70.b		; 05 70
	bvc 112.b		; 50 70
	jsr $2838.w		; 20 38 28
	bit $1C10.w,X		; 3C 10 1C
	tsb $1E.b		; 04 1E
	asl A		; 0A
	ora $020705.l		; 0F 05 07 02
	bit $BCBC.w		; 2C BC BC
	tsb $7EA0.w		; 0C A0 7E
	ora ($F3.b)		; 12 F3
	sta $FE81.w,X		; 9D 81 FE
	brk $F3.b		; 00 F3
	brk $CD.b		; 00 CD
	tsb $FE2C.w		; 0C 2C FE
	brk $4E.b		; 00 4E
	jsr $0C60.w		; 20 60 0C
	brk $7E.b		; 00 7E
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F3.b		; 00 F3
	brk $00.b		; 00 00
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

	ora $00.b,S		; 03 00
	ora $05.b,S		; 03 05
	ora $19.b,S		; 03 19
	ora $02B362.l		; 0F 62 B3 02
	cmp $F00E.w		; CD 0E F0
	ora $001CE0.l,X		; 1F E0 1C 00
	brk $00.b		; 00 00
	ora ($05.b,X)		; 01 05
	ora ($1C.b,X)		; 01 1C
	brk $7C.b		; 00 7C
	brk $B2.b		; 00 B2
	.db $82, $4C, $4C		; 82 4C 4C
	bcc -112.b		; 90 90
	adc $4C7F40.l,X		; 7F 40 7F 4C
	adc $8BB756.l		; 6F 56 B7 8B
	tyx		; BB
	sta $7D.b,X		; 95 7D
	tsx		; BA
	sbc $307B30.l,X		; FF 30 7B 30
	ora $5EDD.w,X		; 1D DD 5E
	cmp ($5F.b)		; D2 5F
	cmp #$8F.b		; C9 8F
	cpy $07.b		; C4 07
	cmp ($13.b)		; D2 13
	lda $3010.w,Y		; B9 10 30
	trb $37.b		; 14 37
	txs		; 9A
	tyx		; BB
	cmp ($1E.b,X)		; C1 1E
	inc $DF07.w,X		; FE 07 DF
	tsb $0EFD.w		; 0C FD 0E
	cmp $00FD88.l,X		; DF 88 FD 00
	adc [$20.b],Y		; 77 20
	mvp $E5,$00		; 44 00 E5
	cmp $6F.b		; C5 6F
	pla		; 68
	ror $AE02.w		; 6E 02 AE
	bra -84.b		; 80 AC
	tsb $02.b		; 04 02
	cop $A8.b		; 02 A8
	ldx $8040.w		; AE 40 80
	cpx #$D040.w		; E0 40 D0
	rti		; 40

	and ($A8.b,X)		; 21 A8
	cmp #$4C.b		; C9 4C
	trb $86.b		; 14 86
	bit $0A61.w		; 2C 61 0A
	sed		; F8
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	rti		; 40

	rts		; 60

	jsr $50F0.w		; 20 F0 50
	rts		; 60

	sec		; 38
	cpy #$C05E.w		; C0 5E C0
	and [$30.b],Y		; 37 30
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
	cpx #$9800.w		; E0 00 98
	cpx #$C03F.w		; E0 3F C0
	jmp ($77AB.w,X)		; 7C AB 77
	phb		; 8B
	and $DF33D7.l		; 2F D7 33 DF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsa		; 3B
	ora $34.b,S		; 03 34
	bmi   8.b		; 30 08
	brk $8C.b		; 00 8C
	sty $0000.w		; 8C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	bvs -48.b		; 70 D0
	trb $07F4.w		; 1C F4 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	ldy #$E820.w		; A0 20 E8
	php		; 08
	sed		; F8
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
	brk $FF.b		; 00 FF
	asl $3EFF.w		; 0E FF 3E
	adc $81FF80.l,X		; 7F 80 FF 81
	sbc $3DFF71.l,X		; FF 71 FF 3D
	adc $47B893.l,X		; 7F 93 B8 47
	rol $7E30.w,X		; 3E 30 7E
	rti		; 40

	stz $E01E.w,X		; 9E 1E E0
	rts		; 60

	jsr ($FC8C.w,X)		; FC 8C FC
	cpy #$68F8.w		; C0 F8 68
	sbc ($B1.b),Y		; F1 B1
	brk $E0.b		; 00 E0
	cpy #$90F8.w		; C0 F8 90
	stz $83BA.w,X		; 9E BA 83
	ldx $DF80.w,Y		; BE 80 DF
	cpy #$E0E7.w		; C0 E7 E0
	sbc $00F8.w,Y		; F9 F8 00
	brk $20.b		; 00 20
	jsr $0868.w		; 20 68 08
	jmp ($7F00.w,X)		; 7C 00 7F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $8D.b		; 00 8D
	.db $82, $96, $89		; 82 96 89
	inc $81.b		; E6 81
	lda $001F00.l,X		; BF 00 1F 00
	ora $0A.b,X		; 15 0A
	ora [$08.b],Y		; 17 08
	phd		; 0B
	tsb $82.b		; 04 82
	cpy #$C889.w		; C0 89 C8
	sta $0598.w,Y		; 99 98 05
	ora $05.b,X		; 15 05
	ora $0B.b		; 05 0B
	ora ($0B.b,X)		; 01 0B
	ora $06.b,S		; 03 06
	cop $FB.b		; 02 FB
	inc A		; 1A
	ldx $B745.w,Y		; BE 45 B7
	pha		; 48
	lda $35EE40.l,X		; BF 40 EE 35
	inc $F735.w		; EE 35 F7
	rol $AF77.w		; 2E 77 AF
	asl A		; 0A
	asl $2465.w,X		; 1E 65 24
	adc #$21.b		; 69 21
	adc $7F2D.w		; 6D 2D 7F
	lsr A		; 4A
	adc $517F4A.l,X		; 7F 4A 7F 51
	sbc $000050.l,X		; FF 50 00 00
	rts		; 60

	rts		; 60

	cli		; 58
	sei		; 78
	sei		; 78
	clc		; 18
	mvp $F4,$C0		; 44 C0 F4
	sec		; 38
	dec A		; 3A
	tsb $9E.b		; 04 9E
	bit $E000.w,X		; 3C 00 E0
	rti		; 40

	sed		; F8
	cli		; 58
	jsr ($9C00.w,X)		; FC 00 9C
	rti		; 40

	sed		; F8
	brk $38.b		; 00 38
	brk $44.b		; 00 44
	php		; 08
	jmp ($0000.w,X)		; 7C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
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

	stz $DA7C.w,X		; 9E 7C DA
	ldy $18E4.w,X		; BC E4 18
	sei		; 78
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	jmp ($3C88.w,X)		; 7C 88 3C
	rti		; 40

	cli		; 58
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$8050.w		; A0 50 80
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$E0C0.w		; C0 C0 E0
	cpx #$70E0.w		; E0 E0 70
	sed		; F8
	brk $40.b		; 00 40
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	cpy #$C0E0.w		; C0 E0 C0
	cpx #$F860.w		; E0 60 F8
	jsr $5AFC.w		; 20 FC 5A
	and ($2B.b),Y		; 31 2B
	bpl  63.b		; 10 3F
	brk $50.b		; 00 50
	ora ($5F.b,X)		; 01 5F
	brk $57.b		; 00 57
	ora ($50.b,X)		; 01 50
	php		; 08
	tad		; 5B
	ora [$05.b]		; 07 05
	and [$04.b],Y		; 37 04
	ora [$00.b],Y		; 17 00
	brk $2F.b		; 00 2F
	and $202620.l		; 2F 20 26 20
	and #$20.b		; 29 20
	and $732720.l		; 2F 20 27 73
	dey		; 88
	and $50.b,S		; 23 50
	sbc $50E100.l,X		; FF 00 E1 50
	inc $FFE0.w,X		; FE E0 FF
	beq -15.b		; F0 F1
	sbc ($2F.b)		; F2 2F
	bit $AEAC.w		; 2C AC AE
	jmp.w [$00DE]		; DC DE 00
	brk $1E.b		; 00 1E
	lsr $EC40.w,X		; 5E 40 EC
	cpx #$20F0.w		; E0 F0 20
	inc $FC08.w,X		; FE 08 FC
	ora $3C.b		; 05 3C
	ora $0E.b,S		; 03 0E
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	bit $FC00.w,X		; 3C 00 FC
	php		; 08
	sed		; F8
	tsb $FC.b		; 04 FC
	php		; 08
	asl A		; 0A
	php		; 08
	tsb $04.b		; 04 04
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	bmi -64.b		; 30 C0
	cpy #$3038.w		; C0 38 30
	asl $03.b		; 06 03
	plp		; 28
	ora [$34.b]		; 07 34
	ora $181F20.l		; 0F 20 1F 18
	ora [$10.b]		; 07 10
	ora $170F10.l		; 0F 10 0F 17
	php		; 08
	ora ($01.b,X)		; 01 01
	ora [$07.b]		; 07 07
	phd		; 0B
	phd		; 0B
	ora $021D.w,X		; 1D 1D 02
	cop $04.b		; 02 04
	tsb $0C.b		; 04 0C
	tsb $0808.w		; 0C 08 08
	rti		; 40

	lda $4ABE41.l,X		; BF 41 BE 4A
	lda $57.b,X		; B5 57
	tax		; AA
	rol A		; 2A
	pei ($A9.b)		; D4 A9
	bvc -11.b		; 50 F5
	tsb $DE2A.w		; 0C 2A DE
	inc A		; 1A
	inc A		; 1A
	bmi  48.b		; 30 30
	and ($21.b,X)		; 21 21
	jsr $0A20.w		; 20 20 0A
	ora ($0F.b,X)		; 01 0F
	brk $03.b		; 00 03
	brk $C1.b		; 00 C1
	brk $7C.b		; 00 7C
	brk $87.b		; 00 87
	bra  19.b		; 80 13
	beq   1.b		; F0 01
	ora $000300.l,X		; 1F 00 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $2F.b		; 00 2F
	jsr $0202.w		; 20 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -16.b		; 80 F0
	bne  28.b		; D0 1C
	sed		; F8
	ora $7E.b,S		; 03 7E
	brk $2F.b		; 00 2F
	cpx #$7C05.w		; E0 05 7C
	ora ($0F.b,X)		; 01 0F
	brk $01.b		; 00 01
	rti		; 40

	rti		; 40

	inx		; E8
	php		; 08
	inc $FF02.w,X		; FE 02 FF
	brk $5F.b		; 00 5F
	rti		; 40

	phd		; 0B
	php		; 08
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	beq -127.b		; F0 81
	cpy #$2030.w		; C0 30 20
	bmi -64.b		; 30 C0
	clc		; 18
	beq  24.b		; F0 18
	cpx #$F808.w		; E0 08 F8
	tsb $04F0.w		; 0C F0 04
	cpy #$0040.w		; C0 40 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	sed		; F8
	brk $1E.b		; 00 1E
	inc $1F01.w,X		; FE 01 1F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($20.b,X)		; 21 20
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora #$06.b		; 09 06
	asl $09.b,X		; 16 09
	ora [$0B.b],Y		; 17 0B
	and $00021D.l		; 2F 1D 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora $040F06.l		; 0F 06 0F 04
	ora $AB7702.l,X		; 1F 02 77 AB
	adc [$B8.b],Y		; 77 B8
	sbc $30C300.l,X		; FF 00 C3 30
	wai		; CB
	sec		; 38
	and [$DC.b]		; 27 DC
	sbc ($1C.b,X)		; E1 1C
	sbc $AE.b,S		; E3 AE
	sbc $47FF54.l,X		; FF 54 FF 47
	brk $00.b		; 00 00
	ora $000710.l,X		; 1F 10 07 00
	wai		; CB
	php		; 08
	cmp [$D4.b],Y		; D7 D4
	sta $F00C.w,X		; 9D 0C F0
	cpy #$C0FC.w		; C0 FC C0
	adc $26DFBC.l,X		; 7F BC DF 26
	and [$0F.b],Y		; 37 0F
	ora $0302.w		; 0D 02 03
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	bmi  -4.b		; 30 FC
	rti		; 40

	and $000F19.l,X		; 3F 19 0F 00
	ora $01.b,S		; 03 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$E800.w		; E0 00 E8
	beq  -8.b		; F0 F8
	jmp ($4CB8.w,X)		; 7C B8 4C
	jmp ($0000.w,X)		; 7C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	bra 124.b		; 80 7C
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $5F.b		; 00 5F
	sec		; 38
	bit $7CC0.w,X		; 3C C0 7C
	tya		; 98
	ldy $7840.w,X		; BC 40 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	tsb $F0.b		; 04 F0
	bmi  -8.b		; 30 F8
	rts		; 60

	sei		; 78
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cld		; D8
	ldx $C4.b,Y		; B6 C4
	and ($12.b,S),Y		; 33 12
	ora #$09.b		; 09 09
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $AB.b		; 00 AB
	jsl $0E111D.l		; 22 1D 11 0E
	php		; 08
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	asl $7C.b		; 06 7C
	asl $38.b		; 06 38
	.db $82, $7E, $C3		; 82 7E C3
	stz $4E41.w		; 9C 41 4E
	and ($9E.b,X)		; 21 9E
	eor ($28.b),Y		; 51 28
	inc A		; 1A
	jsr ($F804.w,X)		; FC 04 F8
	brk $FE.b		; 00 FE
	.db $82, $3C, $00		; 82 3C 00
	inc $FF40.w,X		; FE 40 FF
	and ($6E.b,X)		; 21 6E
	rti		; 40

	trb $10.b		; 14 10
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	cpx $3D30.w		; EC 30 3D
	asl A		; 0A
	ora $370FEF.l,X		; 1F EF 0F 37
	ora $0002.w,X		; 1D 02 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	cpy #$EE00.w		; C0 00 EE
	tsb $2F.b		; 04 2F
	jsr $081F.w		; 20 1F 08
	ora $01.b,S		; 03 01
	rol $00.b,X		; 36 00
	adc $FE21.w,Y		; 79 21 FE
	ora $FC.b,S		; 03 FC
	and $F4.b,S		; 23 F4
	asl A		; 0A
	beq 120.b		; F0 78
	clv		; B8
	sei		; 78
	clv		; B8
	sei		; 78
	ora $103600.l		; 0F 00 36 10
	ora #$09.b		; 09 09
	adc ($52.b)		; 72 52
	brk $08.b		; 00 08
	bmi 124.b		; 30 7C
	bmi 124.b		; 30 7C
	bmi 124.b		; 30 7C
	sec		; 38
	sec		; 38
	cli		; 58
	bit $1C1C.w,X		; 3C 1C 1C
	rol $071F.w		; 2E 1F 07
	ora $0E0717.l		; 0F 17 07 0E
	ora [$07.b]		; 07 07
	brk $18.b		; 00 18
	jmp ($3C18.w,X)		; 7C 18 3C
	tsb $043F.w		; 0C 3F 04
	ora $021F07.l,X		; 1F 07 1F 02
	ora $000700.l		; 0F 00 07 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
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
	ora ($91.b,X)		; 01 91
	asl $1DA3.w		; 0E A3 1D
	eor $BC.b,S		; 43 BC
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	sta $7C.b,S		; 83 7C
	and [$F8.b]		; 27 F8
	sbc [$F8.b]		; E7 F8
	tsb $0D0C.w		; 0C 0C 0D
	tsb $9999.w		; 0C 99 99
	sed		; F8
	sed		; F8
	cli		; 58
	cli		; 58
	bmi  48.b		; 30 30
	cpy #$00C0.w		; C0 C0 00
	brk $FE.b		; 00 FE
	brk $E1.b		; 00 E1
	lsr $6C9F.w,X		; 5E 9F 6C
	lda [$5F.b],Y		; B7 5F
	lsr $08FF.w		; 4E FF 08
	sbc $25FC03.l,X		; FF 03 FC 25
	phx		; DA
	brk $00.b		; 00 00
	jmp.w [$B31C]		; DC 1C B3
	ldy #$4868.w		; A0 68 48
	and ($31.b),Y		; 31 31
	stz $64.b		; 64 64
	pha		; 48
	pha		; 48
	cop $02.b		; 02 02
	jsr $D000.w		; 20 00 D0
	jsr $F088.w		; 20 88 F0
	php		; 08
	beq 100.b		; F0 64
	tya		; 98
	cpx $18.b		; E4 18
	stz $A8.b,X		; 74 A8
	tya		; 98
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bcc -112.b		; 90 90
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	bra -128.b		; 80 80
	jsr $B920.w		; 20 20 B9
	eor $669F.w,Y		; 59 9F 66
	stx $71.b,Y		; 96 71
	eor $0926.w		; 4D 26 09
	jsl $092209.l		; 22 09 22 09
	jsl $082209.l		; 22 09 22 08
	ora $080604.l,X		; 1F 04 06 08
	ora ($1A.b,X)		; 01 1A
	cop $1E.b		; 02 1E
	cop $1E.b		; 02 1E
	cop $1E.b		; 02 1E
	cop $1E.b		; 02 1E
	cop $BF.b		; 02 BF
	lsr A		; 4A
	adc $619B80.l,X		; 7F 80 9B 61
	cmp ($65.b,S),Y		; D3 65
	cmp $E3E0.w,X		; DD E0 E3
	cpy $5D.b		; C4 5D
	.db $82, $63, $01		; 82 63 01
	sei		; 78
	bmi   0.b		; 30 00
	bra   5.b		; 80 05
	eor $5C4D.w,X		; 5D 4D 5C
	.db $42, $DE		; 42 DE
	trb $22DC.w		; 1C DC 22
	ldx #$BD1C.w		; A2 1C BD
	asl $60.b,X		; 16 60
	bvc  96.b		; 50 60
	pha		; 48
	beq -24.b		; F0 E8
	sbc ($E8.b),Y		; F1 E8
	inc $D1.b,X		; F6 D1
	cpx $30C7.w		; EC C7 30
	ora $E000E0.l		; 0F E0 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	rti		; 40

	beq  65.b		; F0 41
	beq  71.b		; F0 47
	cpx $0F.b		; E4 0F
	brk $BF.b		; 00 BF
	jsr $0000.w		; 20 00 00
	brk $3C.b		; 00 3C
	sec		; 38
	inc $C358.w,X		; FE 58 C3
	plx		; FA
	ora $E3.b,S		; 03 E3
	ora $9E.b,S		; 03 9E
	asl $7E66.w,X		; 1E 66 7E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	ldx $FD82.w,Y		; BE 82 FD
	ora ($FC.b,X)		; 01 FC
	brk $E1.b		; 00 E1
	brk $99.b		; 00 99
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $07.b		; 05 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora ($0F.b,X)		; 01 0F
	brk $0F.b		; 00 0F
	cmp $02FF08.l,X		; DF 08 FF 02
	lda ($40.b,S),Y		; B3 40
	sta $46BB08.l,X		; 9F 08 BB 46
	eor $8A.b,X		; 55 8A
	tyx		; BB
	ora $BF.b		; 05 BF
	ora $A0.b,S		; 03 A0
	ldy #$600A.w		; A0 0A 60
	eor $6261.w		; 4D 61 62
	.db $62, $46, $40		; 62 46 40
	lda $6A4FA5.l		; AF A5 4F 6A
	eor [$54.b],Y		; 57 54
	sbc $D706.w,X		; FD 06 D7
	tay		; A8
	cmp $827EB0.l		; CF B0 7E 82
	lda $FB44.w,X		; BD 44 FB
	inx		; E8
	pla		; 68
	tya		; 98
	cmp $080E3F.l		; CF 3F 0E 08
	and $3491.w,Y		; 39 91 34
	sty $09.b		; 84 09
	dey		; 88
	adc ($30.b,S),Y		; 73 30
	sbc [$00.b]		; E7 00
	cmp [$50.b],Y		; D7 50
	bmi  48.b		; 30 30
	eor $1D1E.w,X		; 5D 1E 1D
	asl $1E1D.w,X		; 1E 1D 1E
	asl $1E1C.w,X		; 1E 1C 1E
	trb $1C1A.w		; 1C 1A 1C
	inc A		; 1A
	bit $381C.w,X		; 3C 1C 38
	php		; 08
	rol $3E08.w,X		; 3E 08 3E
	clc		; 18
	rol $3C18.w,X		; 3E 18 3C
	clc		; 18
	bit $3C18.w,X		; 3C 18 3C
	clc		; 18
	jmp ($7810.w,X)		; 7C 10 78
	lda $205F51.l		; AF 51 5F 20
	and [$18.b]		; 27 18
	ora $0606.w,Y		; 19 06 06
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $77.b		; 00 77
	rol $39.b		; 26 39
	ora $061E.w,Y		; 19 1E 06
	ora [$01.b]		; 07 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0BF.w		; C0 BF C0
	lda $E000F0.l,X		; BF F0 00 E0
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BF.b		; 00 BF
	and $000080.l,X		; 3F 80 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	sec		; 38
	clc		; 18
	jmp ($7C6A.w,X)		; 7C 6A 7C
	asl $0004.w		; 0E 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	bmi 124.b		; 30 7C
	php		; 08
	inc $FC68.w,X		; FE 68 FC
	brk $F4.b		; 00 F4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	ror $FE80.w,X		; 7E 80 FE
	sed		; F8
	plx		; FA
	cpy $FC.b		; C4 FC
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $FC.b		; 00 FC
	tsb $FC.b		; 04 FC
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b		; 05 03
	ora $03.b		; 05 03
	tsb $03.b		; 04 03
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $F8.b		; A5 F8
	asl $F8.b		; 06 F8
	cop $FC.b		; 02 FC
	ora $FC.b,S		; 03 FC
	stx $79.b		; 86 79
	phk		; 4B
	bit $5E.b,X		; 34 5E
	and #$67.b		; 29 67
	asl $40.b		; 06 40
	rti		; 40

	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	bne -48.b		; D0 D0
	adc ($60.b,X)		; 61 60
	and [$23.b]		; 27 23
	ora ($08.b,X)		; 01 08
	asl $1E.b		; 06 1E
	phy		; 5A
	ldy $A9.b		; A4 A9
	tad		; 5B
	lda [$51.b]		; A7 51
	cmp $30.b,S		; C3 30
	inx		; E8
	sec		; 38
	sbc ($9E.b)		; F2 9E
	beq  71.b		; F0 47
	adc $04A6.w,X		; 7D A6 04
	ora $24.b		; 05 24
	ora ($3F.b,X)		; 01 3F
	ora ($1F.b),Y		; 11 1F
	bpl -105.b		; 10 97
	bcc -51.b		; 90 CD
	jmp $A0E8.w		; 4C E8 A0
	beq  80.b		; F0 50
	tya		; 98
	rts		; 60

	bne  96.b		; D0 60
	bpl  32.b		; 10 20
	cpy #$0060.w		; C0 60 00
	cpy #$C000.w		; C0 00 C0
	rti		; 40

	ldy #$88F0.w		; A0 F0 88
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	rts		; 60

	ldy #$0080.w		; A0 80 00
	bra -128.b		; 80 80
	bra -127.b		; 80 81
	brk $01.b		; 00 01
	cpy #$0941.w		; C0 41 09
	jsl $152209.l		; 22 09 22 15
	rol $3D.b,X		; 36 3D
	cop $7F.b		; 02 7F
	clc		; 18
	adc $187F00.l,X		; 7F 00 7F 18
	adc $1E00.w,X		; 7D 00 1E
	cop $1E.b		; 02 1E
	cop $0A.b		; 02 0A
	cop $02.b		; 02 02
	cop $3C.b		; 02 3C
	bit $02.b		; 24 02
	cop $3C.b		; 02 3C
	bit $00.b		; 24 00
	cop $7F.b		; 02 7F
	cmp $7E.b,S		; C3 7E
	ror $0E.b		; 66 0E
	asl $E020.w,X		; 1E 20 E0
	sbc $20DF1F.l,X		; FF 1F DF 20
	ldx $49.b,Y		; B6 49
	sta $DB0262.l,X		; 9F 62 02 DB
	asl $E7.b		; 06 E7
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora [$1F.b]		; 07 1F
	jsr $5900.w		; 20 00 59
	bpl 110.b		; 10 6E
	tsb $00BE.w		; 0C BE 00
	lda $B601.w,Y		; B9 01 B6
	eor [$C8.b]		; 47 C8
	sta $C03EF0.l		; 8F F0 3E C0
	sec		; 38
	cpx #$031F.w		; E0 1F 03
	ora $7F.b,S		; 03 7F
	brk $7E.b		; 00 7E
	brk $79.b		; 00 79
	eor ($B6.b,X)		; 41 B6
	asl $88.b		; 06 88
	dey		; 88
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	jsr ($8300.w,X)		; FC 00 83
	sbc $00EF01.l,X		; FF 01 EF 00
	sta [$00.b]		; 87 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E080.w		; C0 80 E0
	stz $64.b		; 64 64
	stx $86.b		; 86 86
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bit $3438.w,X		; 3C 38 34
	sec		; 38
	sec		; 38
	bmi  56.b		; 30 38
	bmi 120.b		; 30 78
	bvs -56.b		; 70 C8
	bne -72.b		; D0 B8
	bcs  48.b		; B0 30
	brk $10.b		; 00 10
	sei		; 78
	bpl 120.b		; 10 78
	jsr $2070.w		; 20 70 20
	bvs  96.b		; 70 60
	beq -128.b		; F0 80
	beq  32.b		; F0 20
	beq   0.b		; F0 00
	cpy #$00FF.w		; C0 FF 00
	sbc $00F000.l,X		; FF 00 F0 00
	and $FF003F.l,X		; 3F 3F 00 FF
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00C000.l,X		; FF 00 C0 00
	jsr ($00FC.w,X)		; FC FC 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	bmi -81.b		; 30 AF
	bmi  47.b		; 30 2F
	rol $F20D.w,X		; 3E 0D F2
	rol $00C0.w,X		; 3E C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $CF.b		; 00 CF
	ora ($DE.b,X)		; 01 DE
	cpy $0000.w		; CC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	cpy #$6810.w		; C0 10 68
	brk $36.b		; 00 36
	brk $4F.b		; 00 4F
	cpy #$F61F.w		; C0 1F F6
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $BA.b		; 00 BA
	.db $82, $27, $21		; 82 27 21
	and [$0B.b],Y		; 37 0B
	phd		; 0B
	ora $07.b		; 05 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	tsb $07.b		; 04 07
	cop $01.b		; 02 01
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
	brk $3E.b		; 00 3E
	brk $4D.b		; 00 4D
	rol $7EA1.w,X		; 3E A1 7E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	asl $0F1E.w,X		; 1E 1E 0F
	brk $30.b		; 00 30
	ora $803F4E.l		; 0F 4E 3F 80
	adc $807F80.l,X		; 7F 80 7F 80
	adc $203F40.l,X		; 7F 40 3F 20
	ora $030000.l,X		; 1F 00 00 03
	ora $11.b,S		; 03 11
	ora ($3C.b),Y		; 11 3C
	bit $3131.w,X		; 3C 31 31
	and ($33.b,S),Y		; 33 33
	ora ($13.b,S),Y		; 13 13
	phd		; 0B
	phd		; 0B
	sta $FF007F.l		; 8F 7F 00 FF
	ora ($FE.b,X)		; 01 FE
	ora $FD.b,S		; 03 FD
	ora $FC.b,S		; 03 FC
	ora $3FE2.w,X		; 1D E2 3F
	cpy #$807F.w		; C0 7F 80
	bpl  16.b		; 10 10
	sbc $8080FF.l,X		; FF FF 80 80
	and $E13C.w,X		; 3D 3C E1
	sbc ($80.b,X)		; E1 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	cpy #$C0A0.w		; C0 A0 C0
	sbc $5EE100.l,X		; FF 00 E1 5E
	sta $5FB76C.l,X		; 9F 6C B7 5F
	dec $087F.w		; CE 7F 08
	sbc $408080.l,X		; FF 80 80 40
	rti		; 40

	brk $00.b		; 00 00
	jmp.w [$B31C]		; DC 1C B3
	ldy #$4868.w		; A0 68 48
	and ($31.b),Y		; 31 31
	stz $64.b		; 64 64
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $D000.w		; 20 00 D0
	jsr $F088.w		; 20 88 F0
	php		; 08
	beq 100.b		; F0 64
	tya		; 98
	cpx $18.b		; E4 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bcc -112.b		; 90 90
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	sta $079C00.l		; 8F 00 9C 07
	xce		; FB
	ora $1BF7.w		; 0D F7 1B
	sbc $4BBC14.l		; EF 14 BC 4B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	ora $121F08.l		; 0F 08 1F 12
	and $2B3F24.l,X		; 3F 24 3F 2B
	ora $030054.l,X		; 1F 54 00 03
	cop $0E.b		; 02 0E
	phb		; 8B
	sec		; 38
	cmp $80EE30.l,X		; DF 30 EE 80
	sbc $1211.w,X		; FD 11 12
	sbc $F8.b,S		; E3 F8
	ora $010000.l		; 0F 00 00 01
	brk $07.b		; 00 07
	brk $AF.b		; 00 AF
	ldy #$40DF.w		; A0 DF 40
	dec $EDC0.w		; CE C0 ED
	ora ($E6.b,X)		; 01 E6
	inc $01.b		; E6 01
	brk $03.b		; 00 03
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	asl $01.b		; 06 01
	tsb $01.b		; 04 01
	tsb $02.b		; 04 02
	tsb $0C06.w		; 0C 06 0C
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	sbc $7F82.w,X		; FD 82 7F
	eor $A6BF.w		; 4D BF A6
	cmp $286753.l,X		; DF 53 67 28
	and ($40.b,S),Y		; 33 40
	phb		; 8B
	cpx #$C087.w		; E0 87 C0
	dec A		; 3A
	tsx		; BA
	jmp $E8AED0.l		; 5C D0 AE E8
	eor [$74.b]		; 47 74
	sta $3B.b,S		; 83 3B
	cpy #$444C.w		; C0 4C 44
	eor [$00.b]		; 47 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	asl $380B.w		; 0E 0B 38
	rol $0060.w		; 2E 60 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	ora $F015.w,X		; 1D 15 F0
	lda ($82.b,S),Y		; B3 82
	cmp #$0E.b		; C9 0E
	jsr $C03C.w		; 20 3C C0
	sed		; F8
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $04.b		; 05 04
	asl $7C00.w		; 0E 00 7C
	brk $F4.b		; 00 F4
	tsb $D8.b		; 04 D8
	clc		; 18
	jsr $B020.w		; 20 20 B0
	rol $7840.w,X		; 3E 40 78
	bra -16.b		; 80 F0
	brk $C1.b		; 00 C1
	ora ($87.b,X)		; 01 87
	ora $1C.b		; 05 1C
	ora [$F0.b],Y		; 17 F0
	lsr $C8C0.w,X		; 5E C0 C8
	php		; 08
	bcs  48.b		; B0 30
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $80BF00.l		; 0F 00 BF 80
	ora ($07.b,X)		; 01 07
	ora $1C.b		; 05 1C
	tas		; 1B
	sei		; 78
	eor [$C7.b]		; 47 C7
	ror $C80F.w		; 6E 0F C8
	ora $C03E20.l		; 0F 20 3E C0
	sed		; F8
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	sec		; 38
	brk $F1.b		; 00 F1
	ora ($F6.b,X)		; 01 F6
	asl $D8.b		; 06 D8
	clc		; 18
	jsr $0020.w		; 20 20 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($1F.b,X)		; 01 1F
	cop $7E.b		; 02 7E
	ora $FD.b		; 05 FD
	inc A		; 1A
	inc $68.b,X		; F6 68
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$05.b]		; 07 05
	ora $647E1A.l,X		; 1F 1A 7E 64
	sed		; F8
	bcc 112.b		; 90 70
	brk $F0.b		; 00 F0
	brk $D0.b		; 00 D0
	ldy #$40A0.w		; A0 A0 40
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	cpx #$C040.w		; E0 40 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	jsl $5290EF.l		; 22 EF 90 52
	lda $B6C9.w		; AD C9 B6
	sbc $1A.b		; E5 1A
	ora $8782.w,X		; 1D 82 87
	bra -128.b		; 80 80
	bra   3.b		; 80 03
	and ($9C.b,X)		; 21 9C
	tsb $02AF.w		; 0C AF 02
	lda [$01.b],Y		; B7 01
	tas		; 1B
	ora ($03.b,X)		; 01 03
	cmp ($00.b,X)		; C1 00
	cpy #$C000.w		; C0 00 C0
	sbc $937C39.l,X		; FF 39 7C 93
	ldy $5843.w,X		; BC 43 58
	ldy $B0.b		; A4 B0
	rti		; 40

	cpx #$C000.w		; E0 00 C0
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	cpy $FB.b		; C4 FB
	rtl		; 6B

	sei		; 78
	sec		; 38
	bcs  16.b		; B0 10
	cpy #$C080.w		; C0 80 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	jsr $201F.w		; 20 1F 20
	ora $813F40.l,X		; 1F 40 3F 81
	ror $F807.w,X		; 7E 07 F8
	asl $18F0.w		; 0E F0 18
	cpx #$E010.w		; E0 10 E0
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	sbc ($00.b),Y		; F1 00
	sbc ($00.b,X)		; E1 00
	cmp ($00.b,X)		; C1 00
	cmp ($00.b,X)		; C1 00
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
	ora $FC.b,S		; 03 FC
	and [$D8.b]		; 27 D8
	and $D328C2.l,X		; 3F C2 28 D3
	cmp $2B.b		; C5 2B
	tad		; 5B
	plp		; 28
	adc ($18.b,X)		; 61 18
	sbc ($0F.b,S),Y		; F3 0F
	pha		; 48
	pha		; 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $01.b		; 04 01
	ora $00170B.l,X		; 1F 0B 17 00
	ora $646408.l		; 0F 08 64 64
	mvn $9F,$A8		; 54 A8 9F
	cpx #$679F.w		; E0 9F 67
	tya		; 98
	pla		; 68
	cmp $382F47.l,X		; DF 47 2F 38
	phy		; 5A
	ror $82.b		; 66 82
	sed		; F8
	ldy #$40A0.w		; A0 A0 40
	rti		; 40

	asl $07.b		; 06 07
	rts		; 60

	adc $400726.l		; 6F 26 07 40
	dey		; 88
	sta $04.b		; 85 04
	eor $4CB348.l		; 4F 48 B3 4C
	adc $CC7FD3.l		; 6F D3 7F CC
	adc $E31CC0.l,X		; 7F C0 1C E3
	and ($EC.b,S),Y		; 33 EC
	lda $EEB1E3.l,X		; BF E3 B1 EE
	ora $4C1F53.l,X		; 1F 53 1F 4C
	ora $5F5F53.l,X		; 1F 53 5F 5F
	sta $A0.b,S		; 83 A0
	sta $2C2FA3.l		; 8F A3 2F 2C
	ora $E6F821.l		; 0F 21 F8 E6
	sed		; F8
	pea $03FC.w		; F4 FC 03
	inc $0D02.w,X		; FE 02 0D
	beq -13.b		; F0 F3
	tsb $F8FF.w		; 0C FF F8
	inc $F478.w,X		; FE 78 F4
	trb $F0.b		; 14 F0
	brk $F8.b		; 00 F8
	sed		; F8
	sbc $FBF8.w,Y		; F9 F8 FB
	php		; 08
	sbc $FDF0.w,X		; FD F0 FD
	tsb $FD.b		; 04 FD
	sty $02.b		; 84 02
	php		; 08
	ora $1D01.w,X		; 1D 01 1D
	ora #$36.b		; 09 36
	ora $083F.w		; 0D 3F 08
	adc $383704.l,X		; 7F 04 37 38
	dec A		; 3A
	bit $0007.w,X		; 3C 07 00
	asl $00.b		; 06 00
	asl A		; 0A
	brk $0D.b		; 00 0D
	ora ($1A.b,X)		; 01 1A
	ora ($04.b)		; 12 04
	brk $12.b		; 00 12
	ply		; 7A
	bpl 124.b		; 10 7C
	cop $C0.b		; 02 C0
	ora ($C0.b,X)		; 01 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($81.b,X)		; 81 81
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $6681.w,Y		; 39 81 66
	ora [$18.b]		; 07 18
	ora $C0FEE0.l,X		; 1F E0 FE C0
	sed		; F8
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $01.b		; 00 01
	ror $F900.w,X		; 7E 00 F9
	ora ($E6.b,X)		; 01 E6
	asl $18.b		; 06 18
	clc		; 18
	jsr $C020.w		; 20 20 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $0E.b		; 02 0E
	phd		; 0B
	sei		; 78
	jmp $C0C0C0.l		; 5C C0 C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	and $01F900.l,X		; 3F 00 F9 01
	inc $07.b,X		; F6 07
	iny		; C8
	ora $C03E30.l		; 0F 30 3E C0
	sed		; F8
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	inc $F900.w,X		; FE 00 F9
	ora ($F6.b,X)		; 01 F6
	asl $C8.b		; 06 C8
	php		; 08
	bmi  48.b		; 30 30
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C000.w		; E0 00 C0
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
	brk $D8.b		; 00 D8
	ldy #$40A0.w		; A0 A0 40
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	ora ($E0.b,X)		; 01 E0
	rti		; 40

	cpy #$0080.w		; C0 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	asl $0F.b		; 06 0F
	brk $1F.b		; 00 1F
	tsb $3F.b		; 04 3F
	php		; 08
	ror $FC10.w,X		; 7E 10 FC
	jsr $40F8.w		; 20 F8 40
	beq -128.b		; F0 80
	ldy #$0640.w		; A0 40 06
	asl $0E.b		; 06 0E
	asl A		; 0A
	asl $3C16.w,X		; 1E 16 3C
	bit $5878.w		; 2C 78 58
	beq -80.b		; F0 B0
	cpx #$C060.w		; E0 60 C0
	bra   0.b		; 80 00
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
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	ora $7B5B.w		; 0D 5B 7B
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	adc $00FF12.l,X		; 7F 12 FF 00
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl -32.b		; 10 E0
	dey		; 88
	bvs 104.b		; 70 68
	bpl  24.b		; 10 18
	brk $18.b		; 00 18
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
	brk $22.b		; 00 22
	cld		; D8
	.db $62, $38, $E7		; 62 38 E7
	ldy $0CA5.w,X		; BC A5 0C
	sbc $0C.b		; E5 0C
	sbc $6C.b,X		; F5 6C
	sbc $1C.b		; E5 1C
	sta ($4E.b)		; 92 4E
	and $08AF28.l		; 2F 28 AF 08
	pld		; 2B
	php		; 08
	eor ($10.b,S),Y		; 53 10
	sta ($90.b,S),Y		; 93 90
	adc $40.b,S		; 63 40
	ora ($90.b,S),Y		; 13 90
	adc $64.b		; 65 64
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $0E.b		; 02 0E
	php		; 08
	sec		; 38
	and $BDE1.w		; 2D E1 BD
	sta ($F2.b,X)		; 81 F2
	ora $CC.b,S		; 03 CC
	ora $000000.l		; 0F 00 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $1E.b		; 00 1E
	brk $7E.b		; 00 7E
	brk $FD.b		; 00 FD
	ora ($F2.b,X)		; 01 F2
	cop $72.b		; 02 72
	ora $CC.b,S		; 03 CC
	ora $C03E30.l		; 0F 30 3E C0
	jsr ($F000.w,X)		; FC 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $F201.w,X		; FD 01 F2
	cop $CC.b		; 02 CC
	tsb $3030.w		; 0C 30 30
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $EF.b		; 00 EF
	ora $CC.b,S		; 03 CC
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	brk $0B.b		; 00 0B
	ora [$0B.b]		; 07 0B
	ora [$0B.b]		; 07 0B
	ora [$80.b]		; 07 80
	cpx #$C407.w		; E0 07 C4
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $E52E2E.l,X		; 1F 2E 2E E5
	plb		; AB
	sty $A4.b		; 84 A4
	sec		; 38
	rti		; 40

	bvs -128.b		; 70 80
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	ora $021701.l		; 0F 01 17 02
	stz $00.b,X		; 74 00
	bne  16.b		; D0 10
	ldy #$4020.w		; A0 20 40
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	rti		; 40

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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $0A.b		; 00 0A
	tsb $12.b		; 04 12
	tsb $0E11.w		; 0C 11 0E
	bpl  15.b		; 10 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $64.b		; 00 64
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc -112.b		; 90 90
	clv		; B8
	sei		; 78
	sei		; 78
	sec		; 38
	sei		; 78
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
	bmi 124.b		; 30 7C
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	bpl  60.b		; 10 3C
	brk $1C.b		; 00 1C
	php		; 08
	trb $1C1A.w		; 1C 1A 1C
	bit $7438.w,X		; 3C 38 74
	sei		; 78
	iny		; C8
	bne -72.b		; D0 B8
	bcs  48.b		; B0 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	bit $7810.w,X		; 3C 10 78
	jsr $80F8.w		; 20 F8 80
	beq  32.b		; F0 20
	beq   0.b		; F0 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	ora $1E1D0E.l		; 0F 0E 1D 1E
	asl $1A1C.w,X		; 1E 1C 1A
	trb $181C.w		; 1C 1C 18
	bit $38.b,X		; 34 38
	sec		; 38
	bmi 120.b		; 30 78
	bvs   8.b		; 70 08
	asl $3E08.w,X		; 1E 08 3E
	php		; 08
	bit $3C10.w,X		; 3C 10 3C
	bpl  56.b		; 10 38
	bpl 120.b		; 10 78
	brk $70.b		; 00 70
	jsr $01F0.w		; 20 F0 01
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
	brk $C0.b		; 00 C0
	cpy #$C0C0.w		; C0 C0 C0
	rts		; 60

	cpx #$B030.w		; E0 30 B0
	phx		; DA
	dec $00C0.w,X		; DE C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	cpx #$E040.w		; E0 40 E0
	rts		; 60

	beq  16.b		; F0 10
	inc $FF48.w,X		; FE 48 FF
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phd		; 0B
	clc		; 18
	ora $18.b,S		; 03 18
	ora [$1C.b]		; 07 1C
	ora $0C.b		; 05 0C
	ora ($0C.b,X)		; 01 0C
	ora $0E.b,S		; 03 0E
	ora $06.b,S		; 03 06
	brk $06.b		; 00 06
	ora [$00.b]		; 07 00
	ora $080B08.l		; 0F 08 0B 08
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	phb		; 8B
	sei		; 78
	sta $7C.b		; 85 7C
	cmp $7C.b		; C5 7C
	.db $82, $2E, $82		; 82 2E 82
	rol $3781.w		; 2E 81 37
	cmp ($37.b,X)		; C1 37
	cpx #$D733.w		; E0 33 D7
	bvc -53.b		; 50 CB
	pha		; 48
	phb		; 8B
	php		; 08
	cmp $04.b		; C5 04
	cmp $04.b		; C5 04
.ACCU 8
	sep #$22		; E2 22
.ACCU 8
	sep #$22		; E2 22
	cmp ($01.b,X)		; C1 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($04.b,X)		; 01 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	cop $03.b		; 02 03
	cmp $7165.w,X		; DD 65 71
	ora #$68.b		; 09 68
	ora $1E6E.w,X		; 1D 6E 1E
	and $2F8F1F.l		; 2F 1F 8F 2F
	and [$37.b],Y		; 37 37
	and $61B9.w,Y		; 39 B9 61
	ora [$00.b]		; 07 00
	ora $041F00.l		; 0F 00 1F 04
	ora $071F06.l,X		; 1F 06 1F 07
	adc $90FF83.l,X		; 7F 83 FF 90
	sbc $6B9913.l,X		; FF 13 99 6B
	eor $4755.w		; 4D 55 47
	rol A		; 2A
	sbc $17.b,S		; E3 17
	adc ($85.b),Y		; 71 85
	bit $1F83.w,X		; 3C 83 1F
	inx		; E8
	ora [$25.b]		; 07 25
	cpy #$8031.w		; C0 31 80
	and $5C80.w,Y		; 39 80 5C
	rti		; 40

	rol $4BA0.w		; 2E A0 4B
	pha		; 48
	stz $74.b,X		; 74 74
	ora ($71.b),Y		; 11 71
	cpx #$F000.w		; E0 00 F0
	jsr $50D8.w		; 20 D8 50
	clv		; B8
	asl $78.b		; 06 78
	bra  -5.b		; 80 FB
	eor [$FF.b],Y		; 57 FF
	eor [$FF.b],Y		; 57 FF
	ora [$80.b]		; 07 80
	bra -128.b		; 80 80
	ldy #$7040.w		; A0 40 70
	brk $40.b		; 00 40
	plp		; 28
	and $530751.l		; 2F 51 07 53
	ora [$50.b]		; 07 50
	eor [$05.b],Y		; 57 05
	ora $06.b,S		; 03 06
	ora $08.b,S		; 03 08
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
	adc #$60.b		; 69 60
	bpl   0.b		; 10 00
	ora $3419.w,Y		; 19 19 34
	bit $60.b,X		; 34 60
	rts		; 60

	.db $42, $42		; 42 42
	rol A		; 2A
	ora $5E.b,X		; 15 5E
	and $56.b,S		; 23 56
	and #$BD.b		; 29 BD
	lsr $AD.b		; 46 AD
	lsr $5D.b,X		; 56 5D
	rol A		; 2A
	tsa		; 3B
	tsb $011F.w		; 0C 1F 01
	ora [$02.b],Y		; 17 02
	and [$14.b],Y		; 37 14
	and $296F06.l		; 2F 06 6F 29
	eor $153F09.l,X		; 5F 09 3F 15
	ora $0A0B13.l,X		; 1F 13 0B 0A
	sbc $69D604.l,X		; FF 04 D6 69
	jmp.w [$DE63]		; DC 63 DE
	adc ($DA.b,X)		; 61 DA
	sbc $EADD.w		; ED DD EA
	cmp $EDEA.w,X		; DD EA ED
	phx		; DA
	bne -44.b		; D0 D4
	sbc $FB90.w,Y		; F9 90 FB
	tya		; 98
	xce		; FB
	txs		; 9A
	sbc $15FF12.l,X		; FF 12 FF 15
	sbc $25FF15.l,X		; FF 15 FF 25
	and $2E16.w		; 2D 16 2E
	clc		; 18
	rol $3A18.w		; 2E 18 3A
	tsb $103C.w		; 0C 3C 10
	bit $3C10.w,X		; 3C 10 3C
	bpl  28.b		; 10 1C
	brk $1E.b		; 00 1E
	php		; 08
	trb $1C04.w		; 1C 04 1C
	tsb $1C.b		; 04 1C
	bpl  24.b		; 10 18
	php		; 08
	clc		; 18
	php		; 08
	clc		; 18
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($0000.w,X)		; 7C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	cpy #$8060.w		; C0 60 80
	bmi -32.b		; 30 E0
	bmi -32.b		; 30 E0
	bmi  64.b		; 30 40
	clc		; 18
	bvs  24.b		; 70 18
	bcs -104.b		; B0 98
	cpy #$8040.w		; C0 40 80
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	cpy #$F000.w		; C0 00 F0
	bpl -32.b		; 10 E0
	brk $60.b		; 00 60
	brk $10.b		; 00 10
	brk $E8.b		; 00 E8
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
	cpy #$2010.w		; C0 10 20
	beq  64.b		; F0 40
	rts		; 60

	brk $C0.b		; 00 C0
	cpy #$0000.w		; C0 00 00
	brk $60.b		; 00 60
	jsr $00C0.w		; 20 C0 00
	cpx #$C000.w		; E0 00 C0
	cpy #$0080.w		; C0 80 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	sbc $FFF1FF.l,X		; FF FF F1 FF
	cmp [$F0.b]		; C7 F0
	adc $8080.w,Y		; 79 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $E0FFF1.l,X		; FF F1 FF E0
	sbc $00F800.l,X		; FF 00 F8 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	asl $01.b		; 06 01
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	asl $0C04.w		; 0E 04 0C
	ora #$19.b		; 09 19
	ora $31.b		; 05 31
	tsb $0321.w		; 0C 21 03
	cop $00.b		; 02 00
	brk $02.b		; 00 02
	cop $05.b		; 02 05
	tsb $03.b		; 04 03
	brk $06.b		; 00 06
	brk $1E.b		; 00 1E
	bpl  31.b		; 10 1F
	ora ($E0.b,X)		; 01 E0
	and ($E0.b,S),Y		; 33 E0
	and ($20.b),Y		; 31 20
	and ($40.b),Y		; 31 40
	adc ($80.b),Y		; 71 80
	sbc $00.b,S		; E3 00
	sbc $01.b,S		; E3 01
	cmp $01.b,S		; C3 01
	sta $C1.b,S		; 83 C1
	ora ($C0.b,X)		; 01 C0
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	jsr $4141.w		; 20 41 41
	cmp ($C1.b,X)		; C1 C1
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	asl $01.b		; 06 01
	cop $1D.b		; 02 1D
	ora #$62.b		; 09 62
	phy		; 5A
	ora ($2D.b,X)		; 01 2D
	cop $1B.b		; 02 1B
	tsb $0E.b		; 04 0E
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora $05.b,S		; 03 05
	ora $16.b		; 05 16
	asl $3C25.w,X		; 1E 25 3C
	ora ($18.b)		; 12 18
	asl $02.b		; 06 02
	ora $04.b		; 05 04
	and $7E7F7E.l,X		; 3F 7E 7F 7E
	and $9F1F7E.l,X		; 3F 7E 1F 9F
	lda $97766F.l		; AF 6F 76 97
	cld		; D8
	rol A		; 2A
	lda $1845.w,X		; BD 45 18
	inc $FE3E.w,X		; FE 3E FE
	asl $0EFE.w,X		; 1E FE 0E
	sbc $807F04.l,X		; FF 04 7F 80
	ora $E48FA8.l,X		; 1F A8 8F E4
	lda [$FE.b]		; A7 FE
	ora ($09.b,X)		; 01 09
	ror $9D.b,X		; 76 9D
	brk $E7.b		; 00 E7
	brk $43.b		; 00 43
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $F6.b		; 00 F6
	inc $62.b,X		; F6 62
	inc $00.b		; E6 00
	.db $42, $00		; 42 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BC.b		; 00 BC
	eor $FF.b,S		; 43 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $68.b		; 00 68
	pld		; 2B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pla		; 68
	ora $303F40.l,X		; 1F 40 3F 30
	ora $471F20.l		; 0F 20 1F 47
	sec		; 38
	tad		; 5B
	bit $75.b		; 24 75
	phd		; 0B
	ror $1632.w		; 6E 32 16
	asl $3A.b,X		; 16 3A
	dec A		; 3A
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	clc		; 18
	clc		; 18
	bit $20.b		; 24 20
	ora $3213.w,Y		; 19 13 32
	ora $AE.b,S		; 03 AE
	mvn $A9,$55		; 54 55 A9
	eor ($A1.b,S),Y		; 53 A1
	xba		; EB
	clc		; 18
	cmp $3C.b		; C5 3C
	phk		; 4B
	lda $9E0734.l		; AF 34 07 9E
	cmp ($40.b,X)		; C1 40
	eor ($14.b,X)		; 41 14
	ora $1F.b,S		; 03 1F
	ora ($07.b,X)		; 01 07
	brk $1B.b		; 00 1B
	clc		; 18
	bit $A4.b,X		; 34 A4
	clc		; 18
	bne -115.b		; D0 8D
	cpx $010F.w		; EC 0F 01
	ora $04.b,S		; 03 04
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FED5.w		; EE D5 FE
	eor [$FF.b]		; 47 FF
	asl $CF.b		; 06 CF
	beq -104.b		; F0 98
	sta $3887B4.l,X		; 9F B4 87 38
	sta $78.b,S		; 83 78
	cmp $FF.b,S		; C3 FF
	rol A		; 2A
	sbc $080EA8.l		; EF A8 0E 08
	bmi  48.b		; 30 30
	adc $05.b		; 65 05
	adc $FD01.w,Y		; 79 01 FD
	sta ($BC.b,X)		; 81 BC
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
	bit $34D4.w,X		; 3C D4 34
	trb $16.b		; 14 16
	dex		; CA
.ACCU 8
	sep #$E7		; E2 E7
	sbc ($F3.b)		; F2 F3
	bpl  48.b		; 10 30
	bne -64.b		; D0 C0
	jsr $0030.w		; 20 30 00
	brk $3E.b		; 00 3E
	trb $FF.b		; 14 FF
	bra  -9.b		; 80 F7
.ACCU 16
.INDEX 16
	rep #$FA		; C2 FA
	brk $18.b		; 00 18
	brk $D8.b		; 00 D8
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	rol $03.b,X		; 36 03
	bit $3E13.w,X		; 3C 13 3E
	php		; 08
	dec A		; 3A
	trb $74.b		; 14 74
	clc		; 18
	stz $28.b,X		; 74 28
	clv		; B8
	rts		; 60

	tay		; A8
	bvs  12.b		; 70 0C
	brk $12.b		; 00 12
	cop $1C.b		; 02 1C
	trb $1C.b		; 14 1C
	php		; 08
	sec		; 38
	jsr $1038.w		; 20 38 10
	bvs  16.b		; 70 10
	bvs   0.b		; 70 00
	bcc -104.b		; 90 98
	jsr $40B8.w		; 20 B8 40
	sed		; F8
	cpy #$C0F8.w		; C0 F8 C0
	sed		; F8
	rti		; 40

	sei		; 78
	jsr $A038.w		; 20 38 A0
	sec		; 38
	rts		; 60

	brk $D0.b		; 00 D0
	bcc -80.b		; 90 B0
	bcs  48.b		; B0 30
	bmi  48.b		; 30 30
	bmi -80.b		; 30 B0
	bmi -48.b		; 30 D0
	bpl -48.b		; 10 D0
	bpl   0.b		; 10 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	bra -96.b		; 80 A0
	rti		; 40

	rts		; 60

	bra -48.b		; 80 D0
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	brk $80.b		; 00 80
	brk $A0.b		; 00 A0
	bra -80.b		; 80 B0
	rti		; 40

	cpy #$A030.w		; C0 30 A0
	sei		; 78
	bvc -40.b		; 50 D8
	ldy #$B88C.w		; A0 8C B8
	sty $86B0.w		; 8C B0 86
	jmp $80C0C6.l		; 5C C6 C0 80
	ldy #$50A0.w		; A0 A0 50
	bvc -96.b		; 50 A0
	bra 120.b		; 80 78
	php		; 08
	bvs   0.b		; 70 00
	jmp ($B804.w,X)		; 7C 04 B8
	bra   3.b		; 80 03
	asl $01.b		; 06 01
	tsb $07.b		; 04 07
	tsb $0802.w		; 0C 02 08
	ora $110419.l		; 0F 19 04 11
	asl $33.b		; 06 33
	clc		; 18
	and ($01.b,S),Y		; 33 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	brk $0F.b		; 00 0F
	ora ($1D.b,X)		; 01 1D
	ora ($0E.b),Y		; 11 0E
	cop $A0.b		; 02 A0
	sec		; 38
	cpy #$4070.w		; C0 70 40
	rts		; 60

	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bne  16.b		; D0 10
	ldy #$8020.w		; A0 20 80
	brk $40.b		; 00 40
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1E33.w,X		; 1E 33 1E
	and ($06.b,S),Y		; 33 06
	and ($06.b,S),Y		; 33 06
	and ($06.b,S),Y		; 33 06
	and ($0A.b,S),Y		; 33 0A
	tas		; 1B
	asl A		; 0A
	tas		; 1B
	asl A		; 0A
	tas		; 1B
	tsb $0C00.w		; 0C 00 0C
	brk $1C.b		; 00 1C
	bpl  28.b		; 10 1C
	bpl  28.b		; 10 1C
	bpl   4.b		; 10 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $0A.b		; 00 0A
	tas		; 1B
	asl A		; 0A
	tas		; 1B
	ora $061F00.l,X		; 1F 00 1F 06
	ora [$0C.b],Y		; 17 0C
	ora [$0C.b],Y		; 17 0C
	ora [$0C.b],Y		; 17 0C
	ora [$0C.b],Y		; 17 0C
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	asl $0E08.w		; 0E 08 0E
	cop $0E.b		; 02 0E
	cop $0E.b		; 02 0E
	cop $0E.b		; 02 0E
	cop $17.b		; 02 17
	tsb $0C17.w		; 0C 17 0C
	ora [$0C.b],Y		; 17 0C
	asl $0B.b,X		; 16 0B
	tas		; 1B
	tsb $1F.b		; 04 1F
	ora ($1B.b,X)		; 01 1B
	brk $01.b		; 00 01
	brk $0E.b		; 00 0E
	cop $0E.b		; 02 0E
	cop $0E.b		; 02 0E
	cop $0F.b		; 02 0F
	tsb $07.b		; 04 07
	ora $03.b,S		; 03 03
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	cpy #$00F0.w		; C0 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$0000.w		; C0 00 00
	brk $0C.b		; 00 0C
	ora [$0C.b]		; 07 0C
	ora [$4E.b]		; 07 4E
	ora [$72.b]		; 07 72
	ora $303F40.l		; 0F 40 3F 30
	ora $A13F40.l		; 0F 40 3F A1
	ror $0303.w,X		; 7E 03 03
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	tsb $1A0C.w		; 0C 0C 1A
	inc A		; 1A
	asl $06.b		; 06 06
	trb $581C.w		; 1C 1C 58
	cli		; 58
	eor ($BC.b,S),Y		; 53 BC
	eor [$BA.b]		; 47 BA
	lsr A		; 4A
	ldy $59.b,X		; B4 59
	lda ($55.b,X)		; A1 55
	lda $71.b		; A5 71
	sty $FA.b		; 84 FA
	asl $DD.b		; 06 DD
	ora $08.b,S		; 03 08
	php		; 08
	clc		; 18
	clc		; 18
	tsb $05.b		; 04 05
	sty $83.b		; 84 83
	phb		; 8B
	sta ($0F.b,X)		; 81 0F
	tsb $05.b		; 04 05
	tsb $02.b		; 04 02
	cop $DA.b		; 02 DA
	ldy $AA.b		; A4 AA
	tsb $94.b		; 04 94
	rti		; 40

	stz $4D08.w		; 9C 08 4D
	ora $BF.b,S		; 03 BF
	ora $7F.b,S		; 03 7F
	phb		; 8B
	jmp ($24AB.w,X)		; 7C AB 24
	bit $50.b		; 24 50
	brk $20.b		; 00 20
	php		; 08
	rts		; 60

	phd		; 0B
	adc ($93.b,X)		; 61 93
	cmp #$A80B.w		; C9 0B A8
	lda $28.b,S		; A3 28
	ora $30.b,S		; 03 30
	and ($0B.b,S),Y		; 33 0B
	phd		; 0B
	bit $FA3E.w,X		; 3C 3E FA
	jsr ($F0E4.w,X)		; FC E4 F0
	cld		; D8
	cpx #$9C3C.w		; E0 3C 9C
	jsr ($201C.w,X)		; FC 1C 20
	adc $187F00.l,X		; 7F 00 7F 18
	sbc $C0FC70.l,X		; FF 70 FC C0
	sed		; F8
	brk $E4.b		; 00 E4
	php		; 08
	dec $1E08.w,X		; DE 08 1E
	rol $0EC7.w,X		; 3E C7 0E
	sbc ($3B.b),Y		; F1 3B
	jsr ($C302.w,X)		; FC 02 C3
	ply		; 7A
	cmp $7A.b,S		; C3 7A
	cmp $7A.b,S		; C3 7A
	cmp $78.b,S		; C3 78
	cmp $4F.b,S		; C3 4F
	pha		; 48
	adc ($72.b,S),Y		; 73 72
	mvp $7D,$44		; 44 44 7D
	eor ($3D.b,X)		; 41 3D
	ora ($3D.b,X)		; 01 3D
	ora ($3D.b,X)		; 01 3D
	ora ($3E.b,X)		; 01 3E
	cop $FF.b		; 02 FF
	rts		; 60

	inc $F661.w,X		; FE 61 F6
	ora $2CF130.l		; 0F 30 F1 2C
	sbc ($2C.b,X)		; E1 2C
	sbc ($2E.b,X)		; E1 2E
	sbc ($0E.b,X)		; E1 0E
	adc ($F6.b,X)		; 61 F6
	stx $F0.b,Y		; 96 F0
	bcc   8.b		; 90 08
	php		; 08
	lsr $5E40.w		; 4E 40 5E
	rti		; 40

	lsr $5F40.w,X		; 5E 40 5F
	eor ($3F.b,X)		; 41 3F
	and ($38.b,X)		; 21 38
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	asl $000A.w		; 0E 0A 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $07.b		; 05 07
	sta [$6F.b]		; 87 6F
	sta [$2F.b]		; 87 2F
	sta $27.b,S		; 83 27
	lda #$3E19.w		; A9 19 3E
	lsr $D7.b		; 46 D7
	and #$A45B.w		; 29 5B A4
	tax		; AA
	eor $DF43.w,X		; 5D 43 DF
	adc $FF.b,S		; 63 FF
	adc ($FF.b,X)		; 61 FF
	rti		; 40

	cmp $29C7C2.l,X		; DF C2 C7 29
	ora ($AE.b,X)		; 01 AE
	txa		; 8A
	eor $201E02.l,X		; 5F 02 1E 20
	sta $7A.b		; 85 7A
	tsb $FD00.w		; 0C 00 FD
	asl $9FFC.w		; 0E FC 9F
	inc $FEFE.w,X		; FE FE FE
	inc $FEFE.w,X		; FE FE FE
	sbc ($E1.b,X)		; E1 E1
	inc A		; 1A
	inc A		; 1A
	sbc ($F3.b,S),Y		; F3 F3
	brk $6D.b		; 00 6D
	tsb $1C9E.w		; 0C 9E 1C
	sbc $FCFFFC.l,X		; FF FC FF FC
	sbc $806080.l,X		; FF 80 60 80
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
	brk $0C.b		; 00 0C
	and ($0E.b,X)		; 21 0E
	and $0C.b,S		; 23 0C
	adc $28.b,S		; 63 28
	adc $04.b,S		; 63 04
	dec $08.b		; C6 08
	stx $9C10.w		; 8E 10 9C
	jsr $1E3C.w		; 20 3C 1E
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	jsl $78021E.l		; 22 1E 02 78
	rti		; 40

	stz $04.b,X		; 74 04
	inx		; E8
	dey		; 88
	cld		; D8
	clc		; 18
	and $083E1C.l		; 2F 1C 3E 08
	rol $3A08.w,X		; 3E 08 3A
	tsb $305C.w		; 0C 5C 30
	jmp $187430.l		; 5C 30 74 18
	clv		; B8
	rts		; 60

	asl $1C02.w,X		; 1E 02 1C
	trb $1C.b		; 14 1C
	trb $1C.b		; 14 1C
	bpl  56.b		; 10 38
	php		; 08
	sec		; 38
	php		; 08
	sec		; 38
	jsr $1070.w		; 20 70 10
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $23.b		; 02 23
	tsb $67.b		; 04 67
	php		; 08
	eor $48CE08.l		; 4F 08 CE 48
	dec $8C28.w		; CE 28 8C
	jsr $208C.w		; 20 8C 20
	dey		; 88
	ora $3A01.w,X		; 1D 01 3A
	jsl $740636.l		; 22 36 06 74
	mvp $04,$34		; 44 34 04
	bvs   0.b		; 70 00
	sei		; 78
	php		; 08
	beq -128.b		; F0 80
	rol $3A18.w		; 2E 18 3A
	tsb $143A.w		; 0C 3A 14
	bit $3410.w,X		; 3C 10 34
	clc		; 18
	bit $08.b,X		; 34 08
	trb $0000.w		; 1C 00 00
	brk $1C.b		; 00 1C
	tsb $1C.b		; 04 1C
	bpl  28.b		; 10 1C
	php		; 08
	clc		; 18
	php		; 08
	clc		; 18
	brk $18.b		; 00 18
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	brk $F3.b		; 00 F3
	jmp ($F867.w,X)		; 7C 67 F8
	ora [$F8.b]		; 07 F8
	asl $F8.b		; 06 F8
	.db $82, $7C, $42		; 82 7C 42
	bit $3847.w,X		; 3C 47 38
	sta $78.b		; 85 78
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$40E0.w		; E0 E0 40
	rti		; 40

	bmi  48.b		; 30 30
	php		; 08
	php		; 08
	sec		; 38
	sec		; 38
	bvs 112.b		; 70 70
	cpy $9403.w		; CC 03 94
	asl A		; 0A
	and $5B14.w,X		; 3D 14 5B
	bpl -35.b		; 10 DD
	eor $DA.b,X		; 55 DA
	eor [$E4.b],Y		; 57 E4
	pld		; 2B
	lda [$50.b]		; A7 50
	brk $00.b		; 00 00
	ora $0A.b,S		; 03 0A
	ora $10.b,S		; 03 10
	ora [$30.b],Y		; 17 30
	ora ($70.b)		; 12 70
	ora $75.b		; 05 75
	brk $38.b		; 00 38
	brk $59.b		; 00 59
	lda $20DC90.l,X		; BF 90 DC 20
	lda $695E34.l		; AF 34 5E 69
	lda $C81FC0.l,X		; BF C0 1F C8
	ora $CF6A.w,X		; 1D 6A CF
	bpl  84.b		; 10 54
	tsb $E8.b		; 04 E8
	plp		; 28
	pei ($10.b)		; D4 10
	ldy $4025.w		; AC 25 40
	rti		; 40

	plp		; 28
	rol A		; 2A
	nop		; EA
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	sbc ($2E.b)		; F2 2E
	asl $1E2E.w,X		; 1E 2E 1E
	and $B31E.w		; 2D 1E B3
	jmp $80BF.w		; 4C BF 80
	and $E0DE0C.l,X		; 3F 0C DE E0
	clc		; 18
	cpx #$04.b		; E0 04
	ora $001F04.l,X		; 1F 04 1F 00
	asl $0C00.w,X		; 1E 00 0C
	eor ($12.b)		; 52 12
	dec $2812.w,X		; DE 12 28
	plp		; 28
	cpy #$C0.b		; C0 C0
	sei		; 78
	cmp $3C.b,S		; C3 3C
	sta [$3C.b]		; 87 3C
	sta [$3C.b]		; 87 3C
	sta [$3C.b]		; 87 3C
	stx $30.b		; 86 30
	stx $30.b		; 86 30
	stx $30.b		; 86 30
	stx $3E.b		; 86 3E
	cop $7A.b		; 02 7A
	cop $7A.b		; 02 7A
	cop $7A.b		; 02 7A
	cop $78.b		; 02 78
	brk $7C.b		; 00 7C
	tsb $7C.b		; 04 7C
	tsb $7C.b		; 04 7C
	tsb $1F.b		; 04 1F
	adc ($17.b),Y		; 71 17
	adc ($16.b),Y		; 71 16
	bvs  22.b		; 70 16
	bmi   6.b		; 30 06
	bmi  15.b		; 30 0F
	sec		; 38
	phd		; 0B
	sec		; 38
	phd		; 0B
	clc		; 18
	rol $2E20.w		; 2E 20 2E
	jsr $202F.w		; 20 2F 20
	ora $101F00.l		; 0F 00 1F 10
	ora [$10.b],Y		; 17 10
	ora [$10.b],Y		; 17 10
	ora [$00.b]		; 07 00
	phd		; 0B
	tsb $05.b		; 04 05
	cop $02.b		; 02 02
	ora ($02.b,X)		; 01 02
	ora ($05.b,X)		; 01 05
	cop $05.b		; 02 05
	cop $03.b		; 02 03
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	asl $02.b		; 06 02
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $77.b		; 00 77
	dey		; 88
	eor [$BC.b],Y		; 57 BC
	inc $1D.b,X		; F6 1D
	ldx $6D.b,Y		; B6 6D
	inc $6E35.w		; EE 35 6E
	lda $5DEE.w,X		; BD EE 5D
	cmp $DE2E.w,X		; DD 2E DE
	lsr $BE.b,X		; 56 BE
	cop $BF.b		; 02 BF
	ldx #$7F.b		; A2 7F
	ora ($7F.b)		; 12 7F
	lsr A		; 4A
	sbc $A2FF42.l,X		; FF 42 FF A2
	adc $7C8351.l,X		; 7F 51 83 7C
	sta $7C.b,S		; 83 7C
	adc ($1E.b,X)		; 61 1E
	ora $0506.w,Y		; 19 06 05
	cop $09.b		; 02 09
	asl $0A.b		; 06 0A
	tsb $0A.b		; 04 0A
	tsb $30.b		; 04 30
	bmi  48.b		; 30 30
	bmi  24.b		; 30 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $31.b		; 04 31
	asl $0833.w,X		; 1E 33 08
	and $08.b,S		; 23 08
	jsl $746614.l		; 22 14 66 74
	rol $F0.b		; 26 F0
	bit $FC.b		; 24 FC
	brk $1E.b		; 00 1E
	bpl  12.b		; 10 0C
	brk $1E.b		; 00 1E
	cop $1C.b		; 02 1C
	brk $38.b		; 00 38
	jsr $0018.w		; 20 18 00
	clc		; 18
	brk $40.b		; 00 40
	rti		; 40

	cmp $3ED932.l		; CF 32 D9 3E
	lda $DFAEDE.l,X		; BF DE AE DF
	sbc $0D.b		; E5 0D
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora $8023.w,Y		; 19 23 80
	lda ($80.b)		; B2 80
	ldy $1ECC.w,X		; BC CC 1E
	dec $1F.b		; C6 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	cpx #$F0.b		; E0 F0
	jmp ($8468.w)		; 6C 68 84
	tay		; A8
	jmp.w [$F450]		; DC 50 F4
	plp		; 28
	cpx #$F8.b		; E0 F8
	cpx #$F8.b		; E0 F8
	cpx #$F8.b		; E0 F8
	rts		; 60

	sed		; F8
	brk $F8.b		; 00 F8
	bra  -8.b		; 80 F8
	rti		; 40

	bvs   8.b		; 70 08
	jsr $50AE.w		; 20 AE 50
	plx		; FA
	tsb $FA.b		; 04 FA
	tsb $F7.b		; 04 F7
	dey		; 88
	sbc [$98.b]		; E7 98
	sbc $90EF90.l		; EF 90 EF 90
	sbc $D4D2.w		; ED D2 D4
	sty $D4.b		; 84 D4
	bne -44.b		; D0 D4
	bne -38.b		; D0 DA
	eor ($FA.b)		; 52 FA
	.db $62, $FA, $6A		; 62 FA 6A
	plx		; FA
	ror A		; 6A
	plx		; FA
	plp		; 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1100.w		; 0E 00 11
	asl $1A2F.w		; 0E 2F 1A
	and [$18.b]		; 27 18
	eor $3C.b,S		; 43 3C
	eor ($3E.b,X)		; 41 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	tas		; 1B
	tas		; 1B
	bpl  16.b		; 10 10
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldx $C100.w,Y		; BE 00 C1
	ldx $4FBE.w,Y		; BE BE 4F
	bvs -65.b		; 70 BF
	lsr $F9.b		; 46 F9
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $711C.w		; 9C 1C 71
	eor ($49.b,X)		; 41 49
	ora #$B1.b		; 09 B1
	lda ($00.b),Y		; B1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	rti		; 40

	bvc -32.b		; 50 E0
	bvs -32.b		; 70 E0
	adc ($A1.b),Y		; 71 A1
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	jsr $8020.w		; 20 20 80
	sta ($80.b,X)		; 81 80
	sta $00.b,S		; 83 00
	brk $06.b		; 00 06
	asl $19.b		; 06 19
	inc A		; 1A
	ora $1A191E.l,X		; 1F 1E 19 1A
	sta $98829E.l,X		; 9F 9E 82 98
	jmp $060058.l		; 5C 58 00 06
	tsb $1F.b		; 04 1F
	brk $3E.b		; 00 3E
	asl $3E.b,X		; 16 3E
	brk $BE.b		; 00 BE
	bra  -2.b		; 80 FE
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	cli		; 58
	cpy $58.b		; C4 58
	cpy $18.b		; C4 18
	dec $38.b		; C6 38
	inc $2C.b		; E6 2C
	ror $24.b		; 66 24
	ror $38.b		; 66 38
	ror $7E30.w,X		; 7E 30 7E
	clv		; B8
	bra  56.b		; 80 38
	brk $7C.b		; 00 7C
	mvp $44,$5C		; 44 5C 44
	clc		; 18
	brk $18.b		; 00 18
	brk $04.b		; 00 04
	tsb $0C.b		; 04 0C
	tsb $7E30.w		; 0C 30 7E
	bmi  -2.b		; 30 FE
	bpl -34.b		; 10 DE
	pha		; 48
	dec $CE68.w		; CE 68 CE
	sei		; 78
	dec $CC38.w		; CE 38 CC
	clc		; 18
	cpy $0C0C.w		; CC 0C 0C
	jmp $6C4C.w		; 4C 4C 6C
	jmp $0434.w		; 4C 34 04
	bit $04.b,X		; 34 04
	bit $04.b,X		; 34 04
	bvs  64.b		; 70 40
	bvs  64.b		; 70 40
	clc		; 18
	cpy $6C38.w		; CC 38 6C
	sec		; 38
	jmp ($6C28.w)		; 6C 28 6C
	plp		; 28
	jmp ($6C28.w)		; 6C 28 6C
	plp		; 28
	jmp ($007C.w)		; 6C 7C 00
	bvs  64.b		; 70 40
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	jmp ($5C18.w,X)		; 7C 18 5C
	bmi  92.b		; 30 5C
	bmi  92.b		; 30 5C
	bmi  92.b		; 30 5C
	bmi  92.b		; 30 5C
	bmi  92.b		; 30 5C
	bmi  92.b		; 30 5C
	bmi  56.b		; 30 38
	jsr $0838.w		; 20 38 08
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
	sec		; 38
	php		; 08
	phy		; 5A
	bit $106E.w		; 2C 6E 10
	adc $036F04.l,X		; 7F 04 6F 03
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $1C10.w,X		; 3C 10 1C
	tsb $0A0E.w		; 0C 0E 0A
	ora [$04.b]		; 07 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sep #$05		; E2 05
	cop $04.b		; 02 04
	cop $04.b		; 02 04
	cop $04.b		; 02 04
	brk $05.b		; 00 05
	ora $0C.b,S		; 03 0C
	ora ($3A.b,X)		; 01 3A
	rol A		; 2A
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $03.b,S		; 03 03
	ora $00.b,S		; 03 00
	brk $0E.b		; 00 0E
	asl $1C15.w		; 0E 15 1C
	ora $BF1FBF.l,X		; 1F BF 1F BF
	ora $67A79F.l		; 0F 9F A7 67
	sbc $5E19.w,Y		; F9 19 5E
	ldx $6F.b		; A6 6F
	sta ($AB.b),Y		; 91 AB
	stz $0F.b,X		; 74 0F
	adc $87FF8F.l,X		; 7F 8F FF 87
	sbc $087F01.l,X		; FF 01 7F 08
	ora $B907A6.l,X		; 1F A6 07 B9
	and #$7C.b		; 29 7C
	php		; 08
	ora ($06.b,X)		; 01 06
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	brk $06.b		; 00 06
	ora ($06.b,X)		; 01 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	sbc [$3B.b],Y		; F7 3B
	adc [$8B.b],Y		; 77 8B
	cmp $1B15E0.l,X		; DF E0 15 1B
	cmp $1B.b,X		; D5 1B
	cmp ($1F.b),Y		; D1 1F
	cmp ($1F.b),Y		; D1 1F
	bne  27.b		; D0 1B
	adc $949F44.l,X		; 7F 44 9F 94
	jsr $EA20.w		; 20 20 EA
	asl A		; 0A
	nop		; EA
	asl A		; 0A
	nop		; EA
	asl A		; 0A
	sep #$02		; E2 02
	sbc ($01.b,X)		; E1 01
	asl $2C0F.w,X		; 1E 0F 2C
	ora $201F20.l,X		; 1F 20 1F 20
	ora $080F10.l,X		; 1F 10 0F 08
	ora [$08.b]		; 07 08
	ora [$10.b]		; 07 10
	ora $100000.l		; 0F 00 00 10
	bpl  28.b		; 10 1C
	trb $0808.w		; 1C 08 08
	asl $06.b		; 06 06
	ora ($01.b,X)		; 01 01
	ora [$07.b]		; 07 07
	asl $7A0E.w		; 0E 0E 7A
	sta ($F3.b,X)		; 81 F3
	ora ($E7.b,X)		; 01 E7
	ora $C6.b		; 05 C6
	ora $5B.b		; 05 5B
	txa		; 8A
	eor $FF8B.w,Y		; 59 8B FF
	tsb $B4.b		; 04 B4
	phd		; 0B
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	ora $0D.b		; 05 0D
	php		; 08
	asl $0F00.w		; 0E 00 0F
	brk $04.b		; 00 04
	brk $0B.b		; 00 0B
	eor ($1C.b)		; 52 1C
	lda ($3E.b,X)		; A1 3E
	eor $E19B78.l		; 4F 78 9B E1
	sbc $817B00.l,X		; FF 00 7B 81
	sbc $0D.b,S		; E3 0D
	adc $E882.w,Y		; 79 82 E8
	php		; 08
	dec $10.b,X		; D6 10
	lda $23.b,S		; A3 23
	eor $50.b,X		; 55 50
	brk $00.b		; 00 00
	ora $BD.b		; 05 BD
	ora $063C.w,X		; 1D 3C 06
	ldx $0700.w,Y		; BE 00 07
	sbc ($0E.b,S),Y		; F3 0E
	inc $F9A8.w,X		; FE A8 F9
	and ($F4.b,X)		; 21 F4
	ora [$F0.b]		; 07 F0
	asl $5CA0.w,X		; 1E A0 5C
	beq   0.b		; F0 00
	ora ($00.b,X)		; 01 00
	tsb $04.b		; 04 04
	sta [$20.b]		; 87 20
	ldx $0AA0.w		; AE A0 0A
	cop $0C.b		; 02 0C
	jmp $5050.w		; 4C 50 50
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $2700.w		; 1C 00 27
	clc		; 18
	eor $304F35.l,X		; 5F 35 4F 30
	stx $79.b		; 86 79
	.db $82, $7D, $00		; 82 7D 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $36.b		; 00 36
	rol $20.b,X		; 36 20
	jsr $6161.w		; 20 61 61
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($8300.w,X)		; 7C 00 83
	jmp ($9F7C.w,X)		; 7C 7C 9F
	cpx #$7F.b		; E0 7F
	sty $00F3.w		; 8C F3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	sec		; 38
	sep #$82		; E2 82
	sta ($13.b,S),Y		; 93 13
	adc $63.b,S		; 63 63
	clc		; 18
	dec $38.b		; C6 38
	inc $2C.b		; E6 2C
	ror $24.b		; 66 24
	ror $38.b		; 66 38
	ror $7E30.w,X		; 7E 30 7E
	bmi  -2.b		; 30 FE
	bmi  -2.b		; 30 FE
	jmp ($5C44.w,X)		; 7C 44 5C
	mvp $00,$18		; 44 18 00
	clc		; 18
	brk $04.b		; 00 04
	tsb $0C.b		; 04 0C
	tsb $4C4C.w		; 0C 4C 4C
	jmp $7C4C.w		; 4C 4C 7C
	bpl 124.b		; 10 7C
	bpl 116.b		; 10 74
	clc		; 18
	stz $18.b,X		; 74 18
	cli		; 58
	jsr $2058.w		; 20 58 20
	pha		; 48
	bmi  56.b		; 30 38
	brk $18.b		; 00 18
	php		; 08
	sec		; 38
	plp		; 28
	sec		; 38
	jsr $2038.w		; 20 38 20
	bmi  16.b		; 30 10
	bmi  16.b		; 30 10
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	asl $6E0F.w		; 0E 0F 6E
	ora $390E75.l		; 0F 75 0E 39
	dec $FE.b,X		; D6 FE
	dey		; 88
	ldy $5810.w,X		; BC 10 58
	rts		; 60

	brk $E0.b		; 00 E0
	asl $1F.b		; 06 1F
	tsb $1F.b		; 04 1F
	jsr $502E.w		; 20 2E 50
	asl $28.b		; 06 28
	jsr $00D0.w		; 20 D0 00
	ldy #$20.b		; A0 20
	bra -128.b		; 80 80
	plp		; 28
	adc $30C610.l		; 6F 10 C6 30
	dec $70.b		; C6 70
	dec $70.b		; C6 70
	dec $78.b		; C6 78
	cpy $CC78.w		; CC 78 CC
	bpl -52.b		; 10 CC
	asl $06.b,X		; 16 06
	jmp ($7C44.w,X)		; 7C 44 7C
	mvp $04,$3C		; 44 3C 04
	bit $3004.w,X		; 3C 04 30
	brk $30.b		; 00 30
	brk $78.b		; 00 78
	pha		; 48
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	bra -64.b		; 80 C0
	bcs -96.b		; B0 A0
	bpl -96.b		; 10 A0
	bvs  64.b		; 70 40
	bne -96.b		; D0 A0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	jsr $B880.w		; 20 80 B8
	rti		; 40

	inx		; E8
	bpl -24.b		; 10 E8
	bpl -36.b		; 10 DC
	jsr $609C.w		; 20 9C 60
	ldy $BC40.w,X		; BC 40 BC
	rti		; 40

	ldy $48.b,X		; B4 48
	bvc  16.b		; 50 10
	bvc  64.b		; 50 40
	bvc  64.b		; 50 40
	pla		; 68
	pha		; 48
	inx		; E8
	dey		; 88
	inx		; E8
	tay		; A8
	inx		; E8
	tay		; A8
	inx		; E8
	ldy #$2D.b		; A0 2D
	ora ($15.b)		; 12 15
	asl A		; 0A
	phd		; 0B
	tsb $0A.b		; 04 0A
	ora $17.b		; 05 17
	php		; 08
	ora $0A.b,X		; 15 0A
	ora $000701.l		; 0F 01 07 00
	ora ($19.b,S),Y		; 13 19
	asl A		; 0A
	php		; 08
	asl $02.b		; 06 02
	ora $00.b		; 05 00
	ora $0B05.w		; 0D 05 0B
	ora ($03.b,X)		; 01 03
	cop $01.b		; 02 01
	ora ($DE.b,X)		; 01 DE
	and ($5F.b,X)		; 21 5F
	beq -37.b		; F0 DB
	stz $DB.b,X		; 74 DB
	ldx $BB.b,Y		; B6 BB
	dec $BB.b,X		; D6 BB
	inc $BB.b,X		; F6 BB
	ror $77.b,X		; 76 77
	tyx		; BB
	tda		; 7B
	phy		; 5A
	xce		; FB
	phd		; 0B
	sbc $49FF8B.l,X		; FF 8B FF 49
	sbc $09FF29.l,X		; FF 29 FF 09
	sbc $44FF89.l,X		; FF 89 FF 44
	ora $06.b,S		; 03 06
	ora ($06.b,X)		; 01 06
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	bne  27.b		; D0 1B
	bne  27.b		; D0 1B
	bne  27.b		; D0 1B
	bne  25.b		; D0 19
	cpy #$19.b		; C0 19
	cpy #$19.b		; C0 19
	cpy #$19.b		; C0 19
	cpy #$10.b		; C0 10
	sbc ($01.b,X)		; E1 01
	sbc ($01.b,X)		; E1 01
	sbc ($01.b,X)		; E1 01
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	jsr $201F.w		; 20 1F 20
	ora $060718.l,X		; 1F 18 07 06
	ora ($01.b,X)		; 01 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($0C.b,X)		; 01 0C
	tsb $0C0C.w		; 0C 0C 0C
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp [$2C.b],Y		; D7 2C
	sbc [$0F.b],Y		; F7 0F
	rtl		; 6B

	sta [$6B.b],Y		; 97 6B
	lda [$79.b],Y		; B7 79
	sta $60.b,S		; 83 60
	bra -128.b		; 80 80
	brk $86.b		; 00 86
	php		; 08
	jsr $200C.w		; 20 0C 20
	and $312733.l		; 2F 33 27 31
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($C7.b,X)		; 01 C7
	php		; 08
	sbc ($9E.b,X)		; E1 9E
	cmp $80.b,S		; C3 80
	lda $677F83.l,X		; BF 83 7F 67
	adc $FF7FFF.l,X		; 7F FF 7F FF
	adc $3838FF.l,X		; 7F FF 38 38
	asl $86.b		; 06 86
	bit $00BC.w,X		; 3C BC 00
	stp		; DB
	ora $E7.b,S		; 03 E7
	ora [$FF.b]		; 07 FF
	and $FF3FFF.l,X		; 3F FF 3F FF
	ldy #$00.b		; A0 00
	rts		; 60

	bra  32.b		; 80 20
	brk $60.b		; 00 60
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	rti		; 40

	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	sed		; F8
	brk $F0.b		; 00 F0
	php		; 08
	bcs 120.b		; B0 78
	bra -120.b		; 80 88
	rts		; 60

	php		; 08
	rts		; 60

	php		; 08
	bvs  12.b		; 70 0C
	bvs  12.b		; 70 0C
	bcs -80.b		; B0 B0
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	bvs   0.b		; 70 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	sed		; F8
	sty $8CB8.w		; 8C B8 8C
	bcs -124.b		; B0 84
	bcs -124.b		; B0 84
	bmi -124.b		; 30 84
	sei		; 78
	cpy $58.b		; C4 58
	cpy $58.b		; C4 58
	cpy $70.b		; C4 70
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	bra -72.b		; 80 B8
	bra -72.b		; 80 B8
	bra  56.b		; 80 38
	brk $07.b		; 00 07
	asl $0D.b		; 06 0D
	asl $0E0D.w		; 0E 0D 0E
	ora $1E1E.w,X		; 1D 1E 1E
	trb $3C3A.w		; 1C 3A 3C
	tsx		; BA
	bit $38D4.w,X		; 3C D4 38
	tsb $0E.b		; 04 0E
	tsb $1E.b		; 04 1E
	php		; 08
	asl $3E08.w,X		; 1E 08 3E
	clc		; 18
	bit $7C18.w,X		; 3C 18 7C
	bpl 124.b		; 10 7C
	bra -72.b		; 80 B8
	ora $061F04.l		; 0F 04 1F 06
	asl $1D05.w,X		; 1E 05 1D
	asl A		; 0A
	and $3A0A.w,X		; 3D 0A 3A
	tsb $7C.b		; 04 7C
	bpl -12.b		; 10 F4
	clc		; 18
	tsb $00.b		; 04 00
	ora $0A0F09.l		; 0F 09 0F 0A
	asl $1E04.w		; 0E 04 1E
	trb $1C.b		; 14 1C
	clc		; 18
	sec		; 38
	plp		; 28
	sec		; 38
	jsr $0680.w		; 20 80 06
	eor $8E.b,S		; 43 8E
	sta $BADE.w,X		; 9D DE BA
	ldy $787C.w,X		; BC 7C 78
	pea $E8F8.w		; F4 F8 E8
	beq -48.b		; F0 D0
	cpx #$00.b		; E0 00
	ora $409E80.l		; 0F 80 9E 40
	ror $7C10.w,X		; 7E 10 7C
	bmi  -8.b		; 30 F8
	rts		; 60

	sed		; F8
	cpy #$F0.b		; C0 F0
	brk $E0.b		; 00 E0
	php		; 08
	clc		; 18
	ora $31.b,X		; 15 31
	asl $3863.w		; 0E 63 38
	adc $14.b,S		; 63 14
	cmp [$38.b]		; C7 38
	stx $8E68.w		; 8E 68 8E
	bvc  28.b		; 50 1C
	ora [$00.b]		; 07 00
	asl $3D00.w		; 0E 00 3D
	and ($1F.b,X)		; 21 1F
	ora $7A.b,S		; 03 7A
	.db $42, $74		; 42 74
	tsb $74.b		; 04 74
	tsb $E8.b		; 04 E8
	php		; 08
	brk $00.b		; 00 00
	tsb $320C.w		; 0C 0C 32
	bit $3E.b,X		; 34 3E
	bit $3432.w,X		; 3C 32 34
	asl $043C.w,X		; 1E 3C 04
	bmi  24.b		; 30 18
	bvs   0.b		; 70 00
	tsb $3E08.w		; 0C 08 3E
	brk $7C.b		; 00 7C
	bit $007C.w		; 2C 7C 00
	jmp ($7C08.w,X)		; 7C 08 7C
	brk $78.b		; 00 78
	brk $F0.b		; 00 F0
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $0C.b		; 05 0C
	tas		; 1B
	asl $2C1D.w,X		; 1E 1D 2C
	ply		; 7A
	trb $1834.w		; 1C 34 18
	trb $38.b		; 14 38
	brk $02.b		; 00 02
	brk $0E.b		; 00 0E
	tsb $3E.b		; 04 3E
	asl A		; 0A
	rol $6E04.w,X		; 3E 04 6E
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $78.b		; 00 78
	tsb $0C07.w		; 0C 07 0C
	ora [$4E.b]		; 07 4E
	ora [$72.b]		; 07 72
	ora $303F40.l		; 0F 40 3F 30
	ora $A13F40.l		; 0F 40 3F A1
	ror $0202.w,X		; 7E 02 02
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	tsb $1A0C.w		; 0C 0C 1A
	inc A		; 1A
	asl $06.b		; 06 06
	trb $581C.w		; 1C 1C 58
	cli		; 58
	eor ($BC.b,S),Y		; 53 BC
	eor [$BA.b]		; 47 BA
	lsr A		; 4A
	ldy $59.b,X		; B4 59
	lda ($54.b,X)		; A1 54
	lda $71.b		; A5 71
	sta [$F8.b]		; 87 F8
	asl $D1.b		; 06 D1
	tsb $0808.w		; 0C 08 08
	clc		; 18
	clc		; 18
	tsb $05.b		; 04 05
	sty $83.b		; 84 83
	txa		; 8A
	bra  12.b		; 80 0C
	tsb $03.b		; 04 03
	cop $07.b		; 02 07
	tsb $CF.b		; 04 CF
	lda $FD1FBE.l		; AF BE 1F FD
	rol $54FA.w		; 2E FA 54
	jsr ($7808.w,X)		; FC 08 78
	bpl -80.b		; 10 B0
	brk $40.b		; 00 40
	bvs  38.b		; 70 26
	and $201F4C.l,X		; 3F 4C 1F 20
	asl $0450.w		; 0E 50 04
	pla		; 68
	rts		; 60

	bcs  32.b		; B0 20
	cpy #$00.b		; C0 00
	ldy #$20.b		; A0 20
	tsb $0C31.w		; 0C 31 0C
	and ($1A.b),Y		; 31 1A
	adc ($44.b,S),Y		; 73 44
	cmp [$88.b]		; C7 88
	stx $1E50.w		; 8E 50 1E
	cpx #$3C.b		; E0 3C
	bra  56.b		; 80 38
	asl $1E10.w,X		; 1E 10 1E
	bpl  44.b		; 10 2C
	jsr $023A.w		; 20 3A 02
	stz $04.b,X		; 74 04
	inx		; E8
	php		; 08
	bne  16.b		; D0 10
	beq  48.b		; F0 30
	asl A		; 0A
	and $1C.b,S		; 23 1C
	and [$74.b]		; 27 74
	and [$D8.b]		; 27 D8
	asl $0CE0.w		; 0E E0 0C
	pea $F848.w		; F4 48 F8
	rts		; 60

	inx		; E8
	bvc  29.b		; 50 1D
	ora ($1A.b,X)		; 01 1A
	cop $1A.b		; 02 1A
	cop $34.b		; 02 34
	tsb $38.b		; 04 38
	php		; 08
	pha		; 48
	php		; 08
	beq -112.b		; F0 90
	beq -96.b		; F0 A0
	rol $2E18.w		; 2E 18 2E
	clc		; 18
	rol $2E18.w		; 2E 18 2E
	clc		; 18
	rol $2E18.w		; 2E 18 2E
	clc		; 18
	and $3716.w		; 2D 16 37
	php		; 08
	trb $1C04.w		; 1C 04 1C
	tsb $1C.b		; 04 1C
	tsb $1C.b		; 04 1C
	tsb $1C.b		; 04 1C
	tsb $1C.b		; 04 1C
	tsb $1E.b		; 04 1E
	php		; 08
	asl $3F06.w		; 0E 06 3F
	cop $37.b		; 02 37
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $03.b		; 05 03
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
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
	brk $08.b		; 00 08
	ror $00.b		; 66 00
	ror $10.b		; 66 10
	stz $10.b,X		; 74 10
	stz $70.b,X		; 74 70
	trb $5C.b		; 14 5C
	jsr $187C.w		; 20 7C 18
	jmp $243C30.l		; 5C 30 3C 24
	bit $2824.w,X		; 3C 24 28
	jsr $2028.w		; 20 28 20
	php		; 08
	brk $20.b		; 00 20
	brk $38.b		; 00 38
	jsr $0838.w		; 20 38 08
	sbc ($01.b,X)		; E1 01
	cmp ($01.b,X)		; C1 01
	plx		; FA
	cop $F2.b		; 02 F2
	.db $82, $28, $CD		; 82 28 CD
	cpx $DE0E.w		; EC 0E DE
	ora $001F5F.l,X		; 1F 5F 1F 00
	ora $01.b,S		; 03 01
	ora [$00.b]		; 07 00
	ora [$E2.b]		; 07 E2
	adc $001FC0.l		; 6F C0 1F 00
	ora $0E3F0C.l,X		; 1F 0C 3F 0E
	and $601F13.l,X		; 3F 13 1F 60
	jmp ($9CA5.w,X)		; 7C A5 9C
	lda [$DC.b]		; A7 DC
	ldx $0D.b,Y		; B6 0D
	stz $21.b,X		; 74 21
	ror $7FA1.w,X		; 7E A1 7F
	.db $82, $68, $88		; 82 68 88
	ora [$94.b],Y		; 17 94
	phb		; 8B
	iny		; C8
	tas		; 1B
	cld		; D8
	tas		; 1B
	eor $812B.w,Y		; 59 2B 81
	plp		; 28
	php		; 08
	asl A		; 0A
	rti		; 40

	tda		; 7B
	phb		; 8B
	lda $D645.w,X		; BD 45 D6
	rol A		; 2A
	tda		; 7B
	sta $7B.b		; 85 7B
	sty $EF.b		; 84 EF
	bmi -19.b		; 30 ED
	dec A		; 3A
	sbc $813A.w		; ED 3A 81
	sta $2A0740.l		; 8F 40 07 2A
	ora $AD.b,S		; 03 AD
	and #$AC.b		; 29 AC
	plp		; 28
	adc $7F4D.w,X		; 7D 4D 7F
	eor $7F.b		; 45 7F
	eor $92.b		; 45 92
	cpx #$A1.b		; E0 A1
	cpy #$20.b		; C0 20
	bra  32.b		; 80 20
	rti		; 40

	sbc $58A780.l,X		; FF 80 A7 58
	eor $BFA6.w,Y		; 59 A6 BF
	cpy #$01.b		; C0 01
	sbc ($00.b,X)		; E1 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra  94.b		; 80 5E
	asl $A6.b		; 06 A6
	brk $D8.b		; 00 D8
	clc		; 18
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora $1F6000.l,X		; 1F 00 60 1F
	stz $007F.w		; 9C 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$23.b]		; 07 23
	and $78.b,S		; 23 78
	sei		; 78
	adc $63.b,S		; 63 63
	adc [$67.b]		; 67 67
	and $FF0CC0.l,X		; 3F C0 0C FF
	asl $03FF.w,X		; 1E FF 03
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $01FE01.l,X		; FF 01 FE 01
	inc $8080.w,X		; FE 80 80
	adc ($72.b)		; 72 72
	and ($21.b,X)		; 21 21
	jsr ($03FC.w,X)		; FC FC 03
	ora $7D.b,S		; 03 7D
	adc $C4C4.w,X		; 7D C4 C4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0C.b		; 04 0C
	inc A		; 1A
	inc A		; 1A
	bit $34.b		; 24 34
	bit $34.b,X		; 34 34
	sec		; 38
	sec		; 38
	bmi  56.b		; 30 38
	bmi  48.b		; 30 30
	brk $0C.b		; 00 0C
	brk $1E.b		; 00 1E
	inc A		; 1A
	and $207F04.l,X		; 3F 04 7F 20
	ror $7C30.w,X		; 7E 30 7C
	bpl 124.b		; 10 7C
	brk $78.b		; 00 78
	clc		; 18
	brk $3C.b		; 00 3C
	clc		; 18
	adc ($1C.b)		; 72 1C
	and $2A2B2E.l,X		; 3F 2E 2B 2A
	and ($36.b,X)		; 21 36
	inc A		; 1A
	trb $1814.w		; 1C 14 18
	brk $00.b		; 00 00
	php		; 08
	clc		; 18
	brk $1C.b		; 00 1C
	rol A		; 2A
	ror $7E00.w		; 6E 00 7E
	brk $7E.b		; 00 7E
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	asl $01.b		; 06 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	php		; 08
	ora [$10.b]		; 07 10
	ora $100F10.l		; 0F 10 0F 10
	ora $090E11.l		; 0F 11 0E 09
	asl $0B.b		; 06 0B
	ora $92.b		; 05 92
	ora $0303.w		; 0D 03 03
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	adc [$18.b]		; 67 18
	bit $0000.w,X		; 3C 00 00
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	cop $01.b		; 02 01
	cop $02.b		; 02 02
	tsb $02.b		; 04 02
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora $1C.b,S		; 03 1C
	sbc $40DE50.l,X		; FF 50 DE 40
	jmp $A04050.l		; 5C 50 40 A0
	rti		; 40

	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	.db $82, $82, $0C		; 82 82 0C
	jmp ($F050.w)		; 6C 50 F0
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $09.b		; 04 09
	ora ($0A.b,X)		; 01 0A
	asl $79.b		; 06 79
	phk		; 4B
	tsb $5D.b		; 04 5D
	cop $26.b		; 02 26
	ora ($2B.b,X)		; 01 2B
	trb $13.b		; 14 13
	tsb $0703.w		; 0C 03 07
	asl $06.b		; 06 06
	brk $01.b		; 00 01
	bit $3C.b,X		; 34 3C
	jsl $181938.l		; 22 38 19 18
	ora $11.b,X		; 15 11
	ora $0A01.w		; 0D 01 0A
	adc $1C.b,S		; 63 1C
	adc [$3C.b]		; 67 3C
	adc [$10.b]		; 67 10
	lsr $10.b		; 46 10
	dec $38.b		; C6 38
	cpy $CC70.w		; CC 70 CC
	cpy #$4C.b		; C0 4C
	and $3A21.w,X		; 3D 21 3A
	jsl $3C021A.l		; 22 1A 02 3C
	tsb $7C.b		; 04 7C
	mvp $40,$70		; 44 70 40
	sec		; 38
	php		; 08
	sec		; 38
	php		; 08
	jmp $E238C6.l		; 5C C6 38 E2
	rol $1263.w		; 2E 63 12
	adc ($1C.b,S),Y		; 73 1C
	adc $387F38.l,X		; 7F 38 7F 38
	inc $CE48.w,X		; FE 48 CE
	clv		; B8
	bra  92.b		; 80 5C
	rti		; 40

	trb $2C00.w		; 1C 00 2C
	jsr $2222.w		; 20 22 22
	asl $06.b		; 06 06
	mvp $34,$44		; 44 44 34
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $28.b		; 00 28
	bpl  72.b		; 10 48
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl  30.b		; 10 1E
	ora $352FAE.l,X		; 1F AE 2F 35
	ldx $7E.b,Y		; B6 7E
	sei		; 78
	adc $7C78.w,X		; 7D 78 7C
	ply		; 7A
	adc $BEBF7C.l,X		; 7F 7C BF BE
	asl $063E.w		; 0E 3E 06
	ror $FDA0.w,X		; 7E A0 FD
	and ($F9.b),Y		; 31 F9
	dec A		; 3A
	plx		; FA
	tda		; 7B
	xce		; FB
	sec		; 38
	sbc $FE18.w,X		; FD 18 FE
	sbc $419F00.l,X		; FF 00 9F 41
	dec $1E29.w,X		; DE 29 1E
	plp		; 28
	sed		; F8
	ora $58.b		; 05 58
	ora ($B4.b)		; 12 B4
	pha		; 48
	mvn $0A,$80		; 54 80 0A
.ACCU 8
	sep #$60		; E2 60
	sbc ($28.b),Y		; F1 28
	nop		; EA
	sbc #$E3.b		; E9 E3
	asl $06.b		; 06 06
	sty $B4.b		; 84 B4
	php		; 08
	pha		; 48
	php		; 08
	dey		; 88
	cmp $DE6A.w,X		; DD 6A DE
	adc $6DDE.w		; 6D DE 6D
	inc $BF0D.w,X		; FE 0D BF
	lsr $8E7F.w		; 4E 7F 8E
	ora $FF3EF0.l		; 0F F0 3E FF
	sbc $92FF95.l,X		; FF 95 FF 92
	sbc $D2DF92.l,X		; FF 92 DF D2
	eor $010F11.l,X		; 5F 11 0F 01
	bvs 112.b		; 70 70
	eor ($41.b,X)		; 41 41
	sbc $C4FF9E.l		; EF 9E FF C4
	inc $F460.w,X		; FE 60 F4
	ror A		; 6A
	sei		; 78
	stx $EE.b		; 86 EE
	ora $2F31D0.l,X		; 1F D0 31 2F
	sbc ($DE.b,X)		; E1 DE
	rti		; 40

	inc $F42A.w		; EE 2A F4
	sty $F8.b,X		; 94 F8
	bcc -28.b		; 90 E4
	stz $50.b		; 64 50
	bvc  46.b		; 50 2E
	jsr $405E.w		; 20 5E 40
	bra 127.b		; 80 7F
	cpy #$3F.b		; C0 3F
	cmp ($3E.b,X)		; C1 3E
	cmp ($3E.b,X)		; C1 3E
	ora $FC.b,S		; 03 FC
	ora $FC.b,S		; 03 FC
	and $807EC0.l,X		; 3F C0 7E 80
	rol $26.b		; 26 26
	asl $16.b,X		; 16 16
	trb $14.b		; 14 14
	bit $24.b		; 24 24
	iny		; C8
	iny		; C8
	bcs -80.b		; B0 B0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tda		; 7B
	sty $FF.b		; 84 FF
	brk $FF.b		; 00 FF
	ora ($CB.b,X)		; 01 CB
	brk $96.b		; 00 96
	ora $1D.b,S		; 03 1D
	and ($2A.b),Y		; 31 2A
	and $15.b,S		; 23 15
	asl $01.b		; 06 01
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	cop $04.b		; 02 04
	brk $0D.b		; 00 0D
	ora ($0E.b,X)		; 01 0E
	brk $1D.b		; 00 1D
	eor ($3A.b,X)		; 41 3A
	rep #$00		; C2 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$00.b		; C0 00
	rti		; 40

	cpy #$60.b		; C0 60
	bra  32.b		; 80 20
	cpx #$30.b		; E0 30
	cpy #$10.b		; C0 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	and $7A0A.w,X		; 3D 0A 7A
	trb $76.b		; 14 76
	php		; 08
	stz $08.b,X		; 74 08
	bit $08.b,X		; 34 08
	bit $2E00.w,X		; 3C 00 2E
	bpl  30.b		; 10 1E
	brk $1E.b		; 00 1E
	trb $3C.b		; 14 3C
	plp		; 28
	clc		; 18
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	clc		; 18
	trb $000C.w		; 1C 0C 00
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
	ora ($00.b,X)		; 01 00
	ora $03.b,S		; 03 03
	asl $180F.w		; 0E 0F 18
	asl $3930.w,X		; 1E 30 39
	adc ($76.b,X)		; 61 76
	cmp [$C8.b]		; C7 C8
	sta $010000.l		; 8F 00 00 01
	ora ($01.b,X)		; 01 01
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	brk $39.b		; 00 39
	ora ($74.b,X)		; 01 74
	tsb $21.b		; 04 21
	sbc ($2F.b,X)		; E1 2F
	sbc ($2F.b,X)		; E1 2F
	adc ($0E.b,X)		; 61 0E
	rts		; 60

	asl $1E70.w,X		; 1E 70 1E
	bvs  22.b		; 70 16
	bvs  22.b		; 70 16
	bmi  94.b		; 30 5E
	rti		; 40

	lsr $1E40.w,X		; 5E 40 1E
	brk $3F.b		; 00 3F
	jsr $202F.w		; 20 2F 20
	and $202F20.l		; 2F 20 2F 20
	ora $E02600.l		; 0F 00 26 E0
	ora [$F0.b],Y		; 17 F0
	ora ($F0.b,S),Y		; 13 F0
	phd		; 0B
	clv		; B8
	ora $9C.b		; 05 9C
	ora $8C.b		; 05 8C
	cop $8E.b		; 02 8E
	ora ($87.b,X)		; 01 87
	eor $202F40.l,X		; 5F 40 2F 20
	and $101720.l		; 2F 20 17 10
	phd		; 0B
	php		; 08
	ora $00.b,S		; 03 00
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	cop $01.b		; 02 01
	ora $02.b		; 05 02
	ora $02.b		; 05 02
	phd		; 0B
	tsb $0B.b		; 04 0B
	tsb $06.b		; 04 06
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($06.b,X)		; 01 06
	cop $06.b		; 02 06
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $2C.b		; 00 2C
	adc ($0C.b,X)		; 61 0C
	adc ($0C.b,X)		; 61 0C
	adc ($1C.b,X)		; 61 1C
	adc ($1C.b),Y		; 71 1C
	and ($1C.b),Y		; 31 1C
	and ($1C.b),Y		; 31 1C
	and ($0C.b),Y		; 31 0C
	and ($1E.b),Y		; 31 1E
	brk $3E.b		; 00 3E
	jsr $203E.w		; 20 3E 20
	rol $0E20.w		; 2E 20 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $1E.b		; 00 1E
	bpl  29.b		; 10 1D
	and ($72.b),Y		; 31 72
	and $88.b,S		; 23 88
	eor $E07EA0.l		; 4F A0 7E E0
	tya		; 98
	sed		; F8
	brk $30.b		; 00 30
	cpy #$40.b		; C0 40
	bra  14.b		; 80 0E
	brk $1D.b		; 00 1D
	ora ($76.b,X)		; 01 76
	lsr $58.b		; 46 58
	cli		; 58
	bcc  16.b		; 90 10
	cpx #$E0.b		; E0 E0
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	trb $18.b		; 14 18
	jmp $38FC38.l		; 5C 38 FC 38
	jmp ($B4B8.w,X)		; 7C B8 B4
	sei		; 78
	pea $F478.w		; F4 78 F4
	sei		; 78
	sed		; F8
	beq   0.b		; F0 00
	sec		; 38
	bpl  56.b		; 10 38
	bpl  56.b		; 10 38
	bcc -72.b		; 90 B8
	bmi 120.b		; 30 78
	jsr $2078.w		; 20 78 20
	sei		; 78
	rts		; 60

	beq 104.b		; F0 68
	beq -88.b		; F0 A8
	bvs -40.b		; 70 D8
	ldy #$F4.b		; A0 F4
	pha		; 48
	phx		; DA
	ldy $1CEE.w		; AC EE 1C
	adc $D59E.w		; 6D 9E D5
	rol $F020.w		; 2E 20 F0
	brk $70.b		; 00 70
	bra  32.b		; 80 20
	pha		; 48
	php		; 08
	ldy $04.b		; A4 04
	bvc  80.b		; 50 50
	ora ($12.b)		; 12 12
	rol A		; 2A
	rol A		; 2A
	ldy $4B.b,X		; B4 4B
	stz $4EE1.w,X		; 9E E1 4E
	adc $1AF5.w,Y		; 79 F5 1A
	inc $19.b,X		; F6 19
	phd		; 0B
	cmp [$0E.b]		; C7 0E
	sbc $4BEF28.l,X		; FF 28 EF 4B
	phk		; 4B
	ora ($21.b,X)		; 01 21
	beq  64.b		; F0 40
	iny		; C8
	php		; 08
	sbc ($01.b,X)		; E1 01
	pea $C1C4.w		; F4 C4 C1
	cmp ($06.b,X)		; C1 06
	rol $18.b,X		; 36 18
	.db $62, $28, $E2		; 62 28 E2
	tsb $86.b		; 04 86
	cld		; D8
	asl $3CA0.w,X		; 1E A0 3C
	brk $38.b		; 00 38
	bra -16.b		; 80 F0
	brk $C0.b		; 00 C0
	bit $5C20.w,X		; 3C 20 5C
	rti		; 40

	sed		; F8
	bra -28.b		; 80 E4
	tsb $D8.b		; 04 D8
	clc		; 18
	beq  48.b		; F0 30
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	bit $16.b,X		; 34 16
	sec		; 38
	asl $003E.w		; 0E 3E 00
	rol $4E1C.w		; 2E 1C 4E
	sec		; 38
	jmp $305C28.l		; 5C 28 5C 30
	jmp $000830.l		; 5C 30 08 00
	tsb $04.b		; 04 04
	bpl  16.b		; 10 10
	trb $3C00.w		; 1C 00 3C
	tsb $38.b		; 04 38
	bpl  56.b		; 10 38
	php		; 08
	sec		; 38
	php		; 08
	jmp $305C30.l		; 5C 30 5C 30
	jmp $0C7A30.l		; 5C 30 7A 0C
	ror $7F10.w		; 6E 10 7F
	tsb $6F.b		; 04 6F
	ora $07.b,S		; 03 07
	brk $38.b		; 00 38
	php		; 08
	sec		; 38
	php		; 08
	sec		; 38
	php		; 08
	trb $1C10.w		; 1C 10 1C
	tsb $0A0E.w		; 0C 0E 0A
	ora [$04.b]		; 07 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cop $01.b		; 02 01
	asl $01.b		; 06 01
	ora $041F02.l		; 0F 02 1F 04
	bit $790B.w,X		; 3C 0B 79
	asl $F6.b,X		; 16 F6
	plp		; 28
	inx		; E8
	bvc   1.b		; 50 01
	ora ($01.b,X)		; 01 01
	ora ($06.b,X)		; 01 06
	tsb $0F.b		; 04 0F
	phd		; 0B
	ora $283E14.l,X		; 1F 14 3E 28
	sei		; 78
	bvc -16.b		; 50 F0
	ldy #$0C.b		; A0 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0C0C.w		; 0C 0C 0C
	trb $1C0C.w		; 1C 0C 1C
	trb $5C1C.w		; 1C 1C 5C
	bit $0C74.w,X		; 3C 74 0C
	php		; 08
	asl $1E08.w,X		; 1E 08 1E
	php		; 08
	asl $3E08.w,X		; 1E 08 3E
	php		; 08
	rol $3E08.w,X		; 3E 08 3E
	brk $3E.b		; 00 3E
	brk $0E.b		; 00 0E
	sed		; F8
	bit $7C.b,X		; 34 7C
	bra 124.b		; 80 7C
	ldy #$74.b		; A0 74
	dey		; 88
	tay		; A8
	bvs  64.b		; 70 40
	beq -128.b		; F0 80
	cpx #$00.b		; E0 00
	cpy #$30.b		; C0 30
	asl $88.b		; 06 88
	txa		; 8A
	bcs -112.b		; B0 90
	php		; 08
	brk $50.b		; 00 50
	bvc -96.b		; 50 A0
	ldy #$40.b		; A0 40
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($0E.b,X)		; 01 0E
	ora $C03330.l		; 0F 30 33 C0
	cmp ($00.b,X)		; C1 00
.INDEX 16
	rep #$1C		; C2 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	tsb $3E3E.w		; 0C 3E 3E
	inc $3D3C.w,X		; FE 3C 3D
	ora $00.b,S		; 03 00
	ora $073F00.l,X		; 1F 00 3F 07
	ora $006701.l		; 0F 01 67 00
	sta ($06.b,X)		; 81 06
	asl $7C3F.w,X		; 1E 3F 7C
	jmp ($0000.w,X)		; 7C 00 00
	ora $03.b,S		; 03 03
	ora $020308.l		; 0F 08 03 02
	ora ($01.b,X)		; 01 01
	rti		; 40

	ror $FF80.w,X		; 7E 80 FF
	sec		; 38
	sbc $FE0080.l,X		; FF 80 00 FE
	brk $F2.b		; 00 F2
	sty $C6F9.w		; 8C F9 C6
	plx		; FA
	cmp $FC.b		; C5 FC
	adc $F8.b,S		; 63 F8
	and [$79.b]		; 27 79
	ora [$00.b]		; 07 00
	brk $80.b		; 00 80
	bra  -4.b		; 80 FC
	bvs  -2.b		; 70 FE
	sec		; 38
	jsr ($F938.w,X)		; FC 38 F9
	sta $5373.w,Y		; 99 73 53
	and ($B2.b)		; 32 B2
	jsr $201F.w		; 20 1F 20
	ora $FE1F20.l,X		; 1F 20 1F FE
	ora ($19.b,X)		; 01 19
	inc $17.b		; E6 17
	inc $F0EE.w		; EE EE F0
	sbc ($FE.b),Y		; F1 FE
	tsb $040C.w		; 0C 0C 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $EE.b		; 00 EE
	cpx #$1010.w		; E0 10 10
	tsb $F80C.w		; 0C 0C F8
	phd		; 0B
	adc ($AA.b),Y		; 71 AA
	ror A		; 6A
	cmp $ED.b,X		; D5 ED
	eor ($DE.b)		; 52 DE
	sbc ($DF.b,X)		; E1 DF
	inx		; E8
	cmp $ECDFE8.l,X		; DF E8 DF EC
	ldy #$E0AF.w		; A0 AF E0
	lsr $24F1.w		; 4E F1 24
	plx		; FA
	tay		; A8
	xce		; FB
	inc A		; 1A
	sbc $FD15.w,X		; FD 15 FD
	ora $FE.b,X		; 15 FE
	ora ($08.b)		; 12 08
	ora $F8.b		; 05 F8
	brk $0F.b		; 00 0F
	beq -37.b		; F0 DB
	plp		; 28
	adc $40AC80.l,X		; 7F 80 AC 40
	sbc $23.b,S		; E3 23
	jsr ($073F.w,X)		; FC 3F 07
	sbc [$07.b]		; E7 07
	ora [$F0.b]		; 07 F0
	brk $67.b		; 00 67
	rti		; 40

	sta $80DF00.l		; 8F 00 DF 80
	stz $8380.w		; 9C 80 83
	sta $30.b,S		; 83 30
	sbc [$2C.b]		; E7 2C
	sbc [$9A.b]		; E7 9A
	adc ($93.b,S),Y		; 73 93
	stz $0F.b,X		; 74 0F
	tsa		; 3B
	sbc $E23FF4.l		; EF F4 3F E2
	ora $4058C4.l		; 0F C4 58 40
	cli		; 58
	rti		; 40

	bit $AC20.w		; 2C 20 AC
	bit $D3.b		; 24 D3
	bpl   4.b		; 10 04
	brk $CB.b		; 00 CB
	cmp #$36.b		; C9 36
	cop $3A.b		; 02 3A
	pei ($5C.b)		; D4 5C
	cpy #$E02E.w		; C0 2E E0
	ora $04BF6A.l,X		; 1F 6A BF 04
	cmp $DB03.w,X		; DD 03 DB
	ora [$4B.b]		; 07 4B
	cmp [$20.b]		; C7 20
	brk $B0.b		; 00 B0
	bra  80.b		; 80 50
	rti		; 40

	rol A		; 2A
	jsr $1014.w		; 20 14 10
	dey		; 88
	phb		; 8B
	ora ($07.b,X)		; 01 07
	ora ($E7.b,X)		; 01 E7
	ora [$70.b],Y		; 17 70
	ora $380B38.l		; 0F 38 0B 38
	ora $18.b,S		; 03 18
	ora [$1C.b]		; 07 1C
	ora [$0C.b]		; 07 0C
	ora ($0C.b,X)		; 01 0C
	ora ($FC.b,X)		; 01 FC
	and $101720.l		; 2F 20 17 10
	ora [$10.b],Y		; 17 10
	ora $080B08.l		; 0F 08 0B 08
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	brk $C6.b		; 00 C6
	sta [$C1.b]		; 87 C1
	ora [$40.b]		; 07 40
	ora $43.b		; 05 43
	sta $43.b		; 85 43
	phb		; 8B
	adc $CB.b		; 65 CB
	adc $8B.b		; 65 8B
	rol $83.b		; 26 83
	.db $82, $00, $00		; 82 00 00
	.db $82, $02, $83		; 82 02 83
	brk $83.b		; 00 83
	brk $C7.b		; 00 C7
	.db $42, $87		; 42 87
	cop $C7.b		; 02 C7
	ora ($40.b,X)		; 01 40
	rts		; 60

	brk $60.b		; 00 60
	cpy #$C000.w		; C0 00 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	rti		; 40

	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $1C1C.w		; 2C 1C 1C
	tsb $0E1C.w		; 0C 1C 0E
	asl $160E.w,X		; 1E 0E 16
	asl $063E.w		; 0E 3E 06
	and [$16.b]		; 27 16
	asl $0C.b,X		; 16 0C
	php		; 08
	asl $0E04.w,X		; 1E 04 0E
	tsb $0F.b		; 04 0F
	tsb $0F.b		; 04 0F
	asl $0F.b		; 06 0F
	cop $07.b		; 02 07
	cop $1E.b		; 02 1E
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $000000.l,X		; 3F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $1F1F.w		; 20 1F 1F
	ora [$3F.b]		; 07 3F
	tsb $347B.w		; 0C 7B 34
	stz $28.b,X		; 74 28
	pla		; 68
	bmi 116.b		; 30 74
	php		; 08
	bit $1F00.w,X		; 3C 00 1F
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	ora ($3C.b,S),Y		; 13 3C
	php		; 08
	sec		; 38
	bpl  48.b		; 10 30
	brk $38.b		; 00 38
	bmi   0.b		; 30 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C0C0.w		; C0 C0 C0
	cpx #$E0E0.w		; E0 E0 E0
	beq 112.b		; F0 70
	beq -72.b		; F0 B8
	sei		; 78
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	cpy #$60F0.w		; C0 F0 60
	sed		; F8
	jsr $10F8.w		; 20 F8 10
	jmp ($3C5C.w,X)		; 7C 5C 3C
	rol $1F1C.w		; 2E 1C 1F
	asl $0F1A.w		; 0E 1A 0F
	ora $0A1F0A.l,X		; 1F 0A 1F 0A
	ora #$06.b		; 09 06
	ora $0800.w		; 0D 00 08
	rol $1C04.w,X		; 3E 04 1C
	asl $0A0E.w		; 0E 0E 0A
	ora $000A02.l		; 0F 02 0A 00
	asl A		; 0A
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	and $37D3.w		; 2D D3 37
	eor $EF2FDF.l		; 4F DF 2F EF
	and $F72FEF.l		; 2F EF 2F F7
	ora [$F7.b],Y		; 17 F7
	ora [$F3.b],Y		; 17 F3
	ora [$10.b],Y		; 17 10
	ora ($C0.b,S),Y		; 13 C0
	cmp $872F06.l		; CF 06 2F 87
	lda $933F07.l,X		; BF 07 3F 93
	sta $C05F43.l,X		; 9F 43 5F C0
	cmp $747B7B.l,X		; DF 7B 7B 74
	ror $71.b,X		; 76 71
	adc $BB.b,X		; 75 BB
	tyx		; BB
	tsx		; BA
	tyx		; BB
	cld		; D8
	cmp $04DFCC.l,X		; DF CC DF 04
	sbc ($71.b,X)		; E1 71
	sbc $30FF70.l,X		; FF 70 FF 30
	sbc $10FF31.l,X		; FF 31 FF 10
	inc $FD81.w,X		; FE 81 FD
	brk $FE.b		; 00 FE
	brk $FA.b		; 00 FA
	sed		; F8
	cmp [$3E.b]		; C7 3E
	ora ($F5.b,X)		; 01 F5
	inx		; E8
	ora $840A.w,X		; 1D 0A 84
	sta $9DB7.w,X		; 9D B7 9D
	adc ($CC.b,X)		; 61 CC
	cli		; 58
	cmp $00D393.l		; CF 93 D3 00
	cpy #$E8CE.w		; C0 CE E8
	tsb $E0.b		; 04 E0
	adc ($11.b,S),Y		; 73 11
	.db $62, $00, $B7		; 62 00 B7
	sty $B3.b		; 84 B3
	sta $3C.b,S		; 83 3C
	sbc $0AFF0C.l,X		; FF 0C FF 0A
	sbc $427F92.l,X		; FF 92 7F 42
	lda $880EF1.l,X		; BF F1 0E 88
	sbc [$79.b],Y		; F7 79
	lsr $C2.b		; 46 C2
.ACCU 16
.INDEX 16
	rep #$72		; C2 72
	adc ($94.b)		; 72 94
	sty $6D.b,X		; 94 6D
	adc $2525.w		; 6D 25 25
	asl A		; 0A
	asl A		; 0A
	.db $62, $62, $84		; 62 62 84
	tsb $DF.b		; 04 DF
	cpx $CAFD.w		; EC FD CA
	inc $7E01.w,X		; FE 01 7E
	sbc $2EE160.l,X		; FF 60 E1 2E
	sbc ($2F.b,X)		; E1 2F
	sbc ($16.b,X)		; E1 16
	bvs  -1.b		; 70 FF
	ora ($DE.b,S),Y		; 13 DE
	trb $00.b		; 14 00
	brk $80.b		; 00 80
	bra -97.b		; 80 9F
	sta ($5F.b,X)		; 81 5F
	eor ($5E.b,X)		; 41 5E
	rti		; 40

	and $7FA020.l		; 2F 20 A0 7F
	brk $FC.b		; 00 FC
	brk $E1.b		; 00 E1
	brk $01.b		; 00 01
	brk $83.b		; 00 83
	brk $83.b		; 00 83
	ora ($83.b,X)		; 01 83
	ora ($83.b,X)		; 01 83
	jmp $E0E05C.l		; 5C 5C E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $CB6DC1.l		; 2F C1 6D CB
	pld		; 2B
	sta $9DD2.w		; 8D D2 9D
	eor ($1C.b),Y		; 51 1C
	ldy #$A038.w		; A0 38 A0
	sec		; 38
	brk $30.b		; 00 30
	stz $45.b,X		; 74 45
	and ($03.b),Y		; 31 03
	pea $6885.w		; F4 85 68
	ora #$08E8.w		; 09 E8 08
	bne  16.b		; D0 10
	bne  16.b		; D0 10
	cpx #$C520.w		; E0 20 C5
	cmp $E2.b,S		; C3 E2
	sbc ($E1.b,X)		; E1 E1
	cpx #$F0F0.w		; E0 F0 F0
	bvs -16.b		; 70 F0
	beq 112.b		; F0 70
	sei		; 78
	sec		; 38
	sec		; 38
	clc		; 18
	cpy #$C0E3.w		; C0 E3 C0
	sbc ($E0.b),Y		; F1 E0
	beq  96.b		; F0 60
	sed		; F8
	jsr $10F8.w		; 20 F8 10
	sei		; 78
	bpl  60.b		; 10 3C
	php		; 08
	trb $0E0B.w		; 1C 0B 0E
	sbc ($02.b,S),Y		; F3 02
	and $F0F000.l,X		; 3F 00 F0 F0
	ora $FF.b,S		; 03 FF
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $04.b,X		; F5 04
	sbc $FF00.w,X		; FD 00 FF
	brk $0F.b		; 00 0F
	brk $3C.b		; 00 3C
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phb		; 8B
	rol $8B.b		; 26 8B
	rol $CB.b		; 26 CB
	ror $8F.b		; 66 8F
	sbc ($0D.b,X)		; E1 0D
	rep #$0F		; C2 0F
	bra  13.b		; 80 0D
	brk $00.b		; 00 00
	brk $C7.b		; 00 C7
	ora ($C7.b,X)		; 01 C7
	ora ($87.b,X)		; 01 87
	ora ($43.b,X)		; 01 43
	.db $42, $83		; 42 83
	sta ($01.b,X)		; 81 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $E0.b		; 00 E0
	bra  -8.b		; 80 F8
	rts		; 60

	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	cpx #$0080.w		; E0 80 00
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
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $08.b		; 00 08
	ora [$0E.b]		; 07 0E
	ora ($0C.b,X)		; 01 0C
	brk $09.b		; 00 09
	cop $0E.b		; 02 0E
	ora ($1B.b,X)		; 01 1B
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora [$03.b]		; 07 03
	ora [$06.b]		; 07 06
	asl $01.b		; 06 01
	brk $06.b		; 00 06
	cop $26.b		; 02 26
	ora $043B.w,Y		; 19 3B 04
	rol $5D07.w,X		; 3E 07 5D
	and $773D7B.l		; 2F 7B 3D 77
	tsa		; 3B
	ror $3E07.w,X		; 7E 07 3E
	ora [$19.b]		; 07 19
	brk $17.b		; 00 17
	ora ($0F.b,S),Y		; 13 0F
	php		; 08
	and $023F10.l,X		; 3F 10 3F 02
	and $282F04.l,X		; 3F 04 2F 28
	ora $0E3D18.l,X		; 1F 18 3D 0E
	ora $0B0A.w,X		; 1D 0A 0B
	ora $07.b		; 05 07
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($1F.b,X)		; 01 1F
	ora ($0F.b),Y		; 11 0F
	ora $07.b		; 05 07
	cop $03.b		; 02 03
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	inc $C03E.w,X		; FE 3E C0
	.db $42, $BC		; 42 BC
	ora ($FE.b,X)		; 01 FE
	ora $63E2.w,X		; 1D E2 63
	bra -125.b		; 80 83
	brk $06.b		; 00 06
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $3C.b		; 00 3C
	bit $4242.w,X		; 3C 42 42
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
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	ldy #$6000.w		; A0 00 60
	bra  32.b		; 80 20
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($FF03.w,X)		; FC 03 FF
	phd		; 0B
	xce		; FB
	beq  -4.b		; F0 FC
	trb $F8.b		; 14 F8
	ora [$18.b]		; 07 18
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	beq  -9.b		; F0 F7
	brk $F3.b		; 00 F3
	cpx #$1717.w		; E0 17 17
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $03.b		; 04 03
	phd		; 0B
	ora [$17.b]		; 07 17
	ora $2E1F2E.l		; 0F 2E 1F 2E
	ora $403F44.l,X		; 1F 44 3F 40
	and $003F40.l,X		; 3F 40 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $18.b		; 00 18
	clc		; 18
	ora $1C1D.w,X		; 1D 1D 1C
	trb $0080.w		; 1C 80 00
	cmp [$00.b]		; C7 00
	clv		; B8
	eor [$80.b]		; 47 80
	adc $3C3F40.l,X		; 7F 40 3F 3C
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	bra  24.b		; 80 18
	cpx #$F804.w		; E0 04 F8
	tsb $F8.b		; 04 F8
	ora ($FC.b)		; 12 FC
	txs		; 9A
	jmp ($7E99.w,X)		; 7C 99 7E
	sta $007E.w,Y		; 99 7E 00
	brk $80.b		; 00 80
	bra 112.b		; 80 70
	bvs  56.b		; 70 38
	sec		; 38
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	sed		; F8
	brk $07.b		; 00 07
	sed		; F8
	brk $FF.b		; 00 FF
	beq  -1.b		; F0 FF
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($0FFC.w,X)		; FC FC 0F
	ora $037878.l		; 0F 78 78 03
	ora $70.b,S		; 03 70
	bvs -128.b		; 70 80
	bra -119.b		; 80 89
	ror $FE01.w,X		; 7E 01 FE
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	cop $FC.b		; 02 FC
	cop $FC.b		; 02 FC
	tsb $F0F0.w		; 0C F0 F0
	brk $14.b		; 00 14
	trb $1C.b		; 14 1C
	trb $3838.w		; 1C 38 38
	sec		; 38
	sec		; 38
	beq -16.b		; F0 F0
	cpx #$00E0.w		; E0 E0 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	asl A		; 0A
	trb $1C0A.w		; 1C 0A 1C
	asl A		; 0A
	ldy $1A.b		; A4 1A
	pei ($3A.b)		; D4 3A
	stx $7A.b		; 86 7A
	adc [$1A.b]		; 67 1A
	eor [$3A.b]		; 47 3A
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	tas		; 1B
	inc A		; 1A
	pld		; 2B
	rol A		; 2A
	adc ($70.b),Y		; 71 70
	ora #$1108.w		; 09 08 11
	bpl -10.b		; 10 F6
	bit #$5768.w		; 89 68 57
	sta [$3D.b],Y		; 97 3D
	sty $26.b		; 84 26
	sta [$20.b]		; 87 20
	inc $51.b,X		; F6 51
	inx		; E8
	eor $59A8.w,Y		; 59 A8 59
	php		; 08
	php		; 08
	sta ($15.b,S),Y		; 93 15
	cpy #$DF04.w		; C0 04 DF
	tsb $DF.b		; 04 DF
	brk $8F.b		; 00 8F
	ora ($97.b,X)		; 01 97
	ora ($C6.b),Y		; 11 C6
	rti		; 40

	dec A		; 3A
	ora $314E.w		; 0D 4E 31
	eor ($3E.b,X)		; 41 3E
	eor ($3E.b,X)		; 41 3E
	jsr $181F.w		; 20 1F 18
	ora [$04.b]		; 07 04
	ora $07.b,S		; 03 07
	brk $0C.b		; 00 0C
	ora ($10.b,X)		; 01 10
	ora ($18.b),Y		; 11 18
	clc		; 18
	clc		; 18
	clc		; 18
	tsb $020C.w		; 0C 0C 02
	cop $03.b		; 02 03
	ora $00.b,S		; 03 00
	brk $FE.b		; 00 FE
	cpx #$E2F1.w		; E0 F1 E2
	sei		; 78
	sbc [$70.b]		; E7 70
	cpx #$108F.w		; E0 8F 10
	lda $BF5F79.l,X		; BF 79 5F BF
	eor $EF41BF.l,X		; 5F BF 41 EF
	lsr $61EE.w		; 4E EE 61
	sbc ($0F.b,X)		; E1 0F
	sbc $007600.l		; EF 00 76 00
	adc $3F0F.w,Y		; 79 0F 3F
	ora $E11E3F.l		; 0F 3F 1E E1
	stz $64E8.w,X		; 9E E8 64
	lsr $A0.b,X		; 56 A0
	lsr $58.b,X		; 56 58
	rol $EC58.w		; 2E 58 EC
	rti		; 40

	cpx $FC30.w		; EC 30 FC
	cpy $C4.b		; C4 C4
	rti		; 40

	brk $D8.b		; 00 D8
	bpl -36.b		; 10 DC
	mvn $04,$D4		; 54 D4 04
	bcc -128.b		; 90 80
	tya		; 98
	dey		; 88
	dey		; 88
	dey		; 88
	jsr $F0D8.w		; 20 D8 F0
	plp		; 28
	cld		; D8
	bpl -24.b		; 10 E8
	ldy #$D0B8.w		; A0 B8 D0
	sed		; F8
	brk $F8.b		; 00 F8
	rti		; 40

	inx		; E8
	bvc  16.b		; 50 10
	bpl   0.b		; 10 00
	jsr $B090.w		; 20 90 B0
	bra  48.b		; 80 30
	cpy #$0010.w		; C0 10 00
	brk $40.b		; 00 40
	bvc  80.b		; 50 50
	bpl 120.b		; 10 78
	bra -24.b		; 80 E8
	brk $58.b		; 00 58
	ldy #$00C8.w		; A0 C8 00
	clv		; B8
	cpy #$E0D8.w		; C0 D8 E0
	cpy #$C0E0.w		; C0 E0 C0
	cpy #$9080.w		; C0 80 90
	bpl  16.b		; 10 10
	ldy #$30A0.w		; A0 A0 30
	bmi   0.b		; 30 00
	bne -128.b		; D0 80
	cpx #$F080.w		; E0 80 F0
	bra -32.b		; 80 E0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bcc -96.b		; 90 A0
	bcc -96.b		; 90 A0
	bvs  64.b		; 70 40
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	and $0A1510.l		; 2F 10 15 0A
	phd		; 0B
	tsb $16.b		; 04 16
	ora #$0916.w		; 09 16 09
	phd		; 0B
	tsb $07.b		; 04 07
	ora ($03.b,X)		; 01 03
	ora $11.b		; 05 11
	ora $080A.w,Y		; 19 0A 08
	asl $02.b		; 06 02
	ora $0D04.w		; 0D 04 0D
	tsb $05.b		; 04 05
	ora ($03.b,X)		; 01 03
	cop $01.b		; 02 01
	brk $FF.b		; 00 FF
	tsb $6D.b		; 04 6D
	stz $6FDD.w,X		; 9E DD 6F
	cmp $DB6B.w,X		; DD 6B DB
	lda $BFDB.w,X		; BD DB BF
	tyx		; BB
	cmp $6ED7BB.l,X		; DF BB D7 6E
	ror A		; 6A
	sbc $90FF61.l,X		; FF 61 FF 90
	sbc $42FF94.l,X		; FF 94 FF 42
	sbc $20FF40.l,X		; FF 40 FF 20
	sbc $90E828.l,X		; FF 28 E8 90
	sed		; F8
	brk $58.b		; 00 58
	cpx #$C078.w		; E0 78 C0
	stz $88.b,X		; 74 88
	ldy $AC60.w,X		; BC 60 AC
	bvs -68.b		; 70 BC
	rts		; 60

	bcc -128.b		; 90 80
	bvc  80.b		; 50 50
	cpx #$E000.w		; E0 00 E0
	jsr $60E8.w		; 20 E8 60
	inx		; E8
	dey		; 88
	beq -128.b		; F0 80
	beq -112.b		; F0 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	sec		; 38
	bpl  56.b		; 10 38
	bpl  59.b		; 10 3B
	bpl  79.b		; 10 4F
	and ($00.b)		; 32 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   2.b		; 10 02
	and ($0F.b)		; 32 0F
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	brk $2F.b		; 00 2F
	ora $57.b,X		; 15 57
	rol A		; 2A
	eor [$2D.b],Y		; 57 2D
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora $10.b,X		; 15 10
	rol A		; 2A
	plp		; 28
	and #$C028.w		; 29 28 C0
	bra -128.b		; 80 80
	cpy #$C070.w		; C0 70 C0
	ora $FFFE3F.l,X		; 1F 3F FE FF
	sbc ($7E.b),Y		; F1 7E
	dec $F331.w		; CE 31 F3
	tsb $8080.w		; 0C 80 80
	brk $F0.b		; 00 F0
	brk $CF.b		; 00 CF
	ora $FF78FF.l		; 0F FF 78 FF
	brk $7E.b		; 00 7E
	bra -79.b		; 80 B1
	tsb $F60C.w		; 0C 0C F6
	jmp ($78FC.w,X)		; 7C FC 78
	cpx $E8F0.w		; EC F0 E8
	beq  56.b		; F0 38
	cpy #$28DC.w		; C0 DC 28
	jmp.w [$1CE8]		; DC E8 1C
	cpy #$7C70.w		; C0 70 7C
	rts		; 60

	sei		; 78
	rti		; 40

	beq -128.b		; F0 80
	beq   0.b		; F0 00
	cpy #$2008.w		; C0 08 20
	php		; 08
	cpx #$E808.w		; E0 08 E8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $00.b,X		; 36 00
	ror $7A24.w,X		; 7E 24 7A
	bit $3E.b		; 24 3E
	bpl 118.b		; 10 76
	trb $2C5E.w		; 1C 5E 2C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $10.b		; 00 10
	tsb $1C.b		; 04 1C
	tsb $2C.b		; 04 2C
	stx $7A.b		; 86 7A
	ldx $79.b		; A6 79
	sbc $8F72.w		; ED 72 8F
	adc ($8C.b),Y		; 71 8C
	adc ($57.b)		; 72 57
	and #$023C.w		; 29 3C 02
	and $310B.w,X		; 3D 0B 31
	bmi  65.b		; 30 41
	eor ($00.b,X)		; 41 00
	cop $60.b		; 02 60
	adc ($30.b,X)		; 61 30
	and ($08.b,S),Y		; 33 08
	ora ($08.b,X)		; 01 08
	phd		; 0B
	php		; 08
	ora $2B.b,S		; 03 2B
	eor $F59E69.l,X		; 5F 69 9E F5
	lsr $90BD.w		; 4E BD 90
	eor $80BF68.l,X		; 5F 68 BF 80
	lsr $D840.w,X		; 5E 40 D8
	sbc $C4.b,S		; E3 C4
	mvp $80,$80		; 44 80 80
	asl A		; 0A
	lsr A		; 4A
	sta ($C0.b)		; 92 C0
	tsb $80E4.w		; 0C E4 80
	cpy #$EF01.w		; C0 01 EF
	eor [$EF.b]		; 47 EF
	asl $01.b		; 06 01
	asl $0E00.w,X		; 1E 00 0E
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	ora ($07.b,X)		; 01 07
	php		; 08
	ora ($3A.b,X)		; 01 3A
	rol A		; 2A
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $03.b,S		; 03 03
	ora $00.b,S		; 03 00
	brk $0E.b		; 00 0E
	asl $1C15.w		; 0E 15 1C
	cmp $BF5F3F.l,X		; DF 3F 5F BF
	sta $0F8F7F.l,X		; 9F 7F 8F 0F
	sta ($73.b,S),Y		; 93 73
	sbc $4E0D.w,X		; FD 0D 4E
	lda ($AF.b)		; B2 AF
	eor ($0F.b),Y		; 51 0F
	and $0FBF8F.l,X		; 3F 8F BF 0F
	adc $017F03.l,X		; 7F 03 7F 01
	adc $B20F04.l,X		; 7F 04 0F B2
	ora $75.b,S		; 03 75
	and $3E.b		; 25 3E
	cmp [$1E.b]		; C7 1E
	sbc [$26.b]		; E7 26
	sbc $DE19.w,Y		; F9 19 DE
	asl $C7.b		; 06 C7
	phy		; 5A
	cmp $5A.b,S		; C3 5A
	cmp $5A.b,S		; C3 5A
	cmp $57.b,S		; C3 57
	bvc 103.b		; 50 67
	rts		; 60

	eor $6658.w,Y		; 59 58 66
	lsr $79.b		; 46 79
	eor ($3D.b,X)		; 41 3D
	ora ($3D.b,X)		; 01 3D
	ora ($3C.b,X)		; 01 3C
	brk $F7.b		; 00 F7
	ror $E1FE.w		; 6E FE E1
	jsr ($F4E3.w,X)		; FC E3 F4
	ora $2EF332.l		; 0F 32 F3 2E
	sbc $2E.b,S		; E3 2E
	sbc $2E.b,S		; E3 2E
	sbc $FE.b,S		; E3 FE
	bcc -12.b		; 90 F4
	trb $F2.b		; 14 F2
	ora ($0A.b)		; 12 0A
	asl A		; 0A
	jmp $5C40.w		; 4C 40 5C
	rti		; 40

	jmp $405C40.l		; 5C 40 5C 40
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	tsb $03.b		; 04 03
	asl A		; 0A
	ora [$0D.b]		; 07 0D
	asl $55.b		; 06 55
	asl $1F68.w		; 0E 68 1F
	rti		; 40

	and $000000.l,X		; 3F 00 00 00
	brk $03.b		; 00 03
	ora $05.b,S		; 03 05
	ora $02.b		; 05 02
	cop $02.b		; 02 02
	cop $06.b		; 02 06
	asl $3E.b		; 06 3E
	rol $0000.w,X		; 3E 00 00
	cpy #$2000.w		; C0 00 20
	cpy #$00EE.w		; C0 EE 00
	sbc ($AE.b),Y		; F1 AE
	cmp $5FBE2C.l,X		; DF 2C BE 5F
	cpy $007F.w		; CC 7F 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $EC.b		; 00 EC
	tsb $C0D3.w		; 0C D3 C0
	and ($01.b,X)		; 21 01
	and ($32.b)		; 32 32
	ora $0D02.w		; 0D 02 0D
	brk $0D.b		; 00 0D
	brk $0D.b		; 00 0D
	brk $09.b		; 00 09
	cop $0F.b		; 02 0F
	bpl   2.b		; 10 02
	adc $55.b,X		; 75 55
	cop $02.b		; 02 02
	asl $02.b		; 06 02
	asl $02.b		; 06 02
	asl $02.b		; 06 02
	asl $06.b		; 06 06
	asl $00.b		; 06 00
	brk $1D.b		; 00 1D
	trb $382A.w		; 1C 2A 38
	adc $FF7FFF.l,X		; 7F FF 7F FF
	adc $1F1FFF.l,X		; 7F FF 1F 1F
	and [$E7.b]		; 27 E7
	xce		; FB
	tas		; 1B
	sta $5E65.w,X		; 9D 65 5E
	ldx #$FF3E.w		; A2 3E FF
	rol $3EFF.w,X		; 3E FF 3E
	sbc $02FF06.l,X		; FF 06 FF 02
	sbc $641F08.l,X		; FF 08 1F 64
	ora [$EA.b]		; 07 EA
	phk		; 4B
	php		; 08
	ora [$12.b]		; 07 12
	ora $2C1F2C.l		; 0F 2C 1F 2C
	ora $111E21.l,X		; 1F 21 1E 11
	asl $0609.w		; 0E 09 06
	ora #$0306.w		; 09 06 03
	ora $0D.b,S		; 03 0D
	ora $1212.w		; 0D 12 12
	bpl  16.b		; 10 10
	tsb $040C.w		; 0C 0C 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $10.b		; 04 10
	sbc [$1F.b]		; E7 1F
	sbc ($6F.b,X)		; E1 6F
	bcc -65.b		; 90 BF
	ror $57.b		; 66 57
	cmp $A2AD.w,Y		; D9 AD A2
	eor $F45E.w		; 4D 5E F4
	eor ($81.b),Y		; 51 81
	sta ($00.b,X)		; 81 00
	brk $1E.b		; 00 1E
	asl $6127.w		; 0E 27 61
	eor $FA.b,S		; 43 FA
	jsl $F050F0.l		; 22 F0 50 F0
	asl $D040.w		; 0E 40 D0
	cld		; D8
	brk $F0.b		; 00 F0
	sed		; F8
	brk $B6.b		; 00 B6
	php		; 08
	sbc $91FF02.l,X		; FF 02 FF 91
	sbc $D07F92.l,X		; FF 92 7F D0
	jsr $A000.w		; 20 00 A0
	ldy #$C0C0.w		; A0 C0 C0
	cli		; 58
	bpl   8.b		; 10 08
	asl A		; 0A
	bra -111.b		; 80 91
	sta ($92.b)		; 92 92
	bpl -48.b		; 10 D0
	brk $00.b		; 00 00
	jsr $7000.w		; 20 00 70
	jsr $2070.w		; 20 70 20
	ror $20.b,X		; 76 20
	stz $EC64.w,X		; 9E 64 EC
	sed		; F8
	sed		; F8
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $64.b		; 00 64
	rts		; 60

	sed		; F8
	rti		; 40

	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra  32.b		; 80 20
	rti		; 40

	jsr $E040.w		; 20 40 E0
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bne  32.b		; D0 20
	beq   0.b		; F0 00
	bcs -64.b		; B0 C0
	beq -128.b		; F0 80
	inx		; E8
	bpl 120.b		; 10 78
	cpy #$E058.w		; C0 58 E0
	sei		; 78
	cpy #$0020.w		; C0 20 00
	ldy #$C0A0.w		; A0 A0 C0
	brk $C0.b		; 00 C0
	rti		; 40

	bne -64.b		; D0 C0
	bne  16.b		; D0 10
	cpx #$E000.w		; E0 00 E0
	jsr $C73E.w		; 20 3E C7
	asl $26E7.w,X		; 1E E7 26
	sbc $DE19.w,Y		; F9 19 DE
	.db $42, $C3		; 42 C3
	phy		; 5A
	cmp $5A.b,S		; C3 5A
	cmp $00.b,S		; C3 00
	brk $57.b		; 00 57
	bvc 103.b		; 50 67
	rts		; 60

	eor $6658.w,Y		; 59 58 66
	lsr $3D.b		; 46 3D
	ora ($3D.b,X)		; 01 3D
	ora ($3C.b,X)		; 01 3C
	brk $00.b		; 00 00
	brk $F7.b		; 00 F7
	ror $E1FE.w		; 6E FE E1
	jsr ($F4E3.w,X)		; FC E3 F4
	ora $2EF332.l		; 0F 32 F3 2E
	sbc $2E.b,S		; E3 2E
	sbc $00.b,S		; E3 00
	brk $FE.b		; 00 FE
	bcc -12.b		; 90 F4
	trb $F2.b		; 14 F2
	ora ($0A.b)		; 12 0A
	asl A		; 0A
	jmp $5C40.w		; 4C 40 5C
	rti		; 40

	jmp $000040.l		; 5C 40 00 00
	ldy $58.b		; A4 58
	cpx $D850.w		; EC 50 D8
	cpx #$C078.w		; E0 78 C0
	bmi  64.b		; 30 40
	rti		; 40

	rts		; 60

	bra  32.b		; 80 20
	rti		; 40

	cpx #$4040.w		; E0 40 40
	brk $00.b		; 00 00
	jsr $0020.w		; 20 20 00
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	cpy #$8000.w		; C0 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	jsr $E090.w		; 20 90 E0
	php		; 08
	beq -60.b		; F0 C4
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc ($0E.b),Y		; 71 0E
	eor ($3E.b,X)		; 41 3E
	lda ($7E.b),Y		; B1 7E
	lda $807E.w,Y		; B9 7E 80
	adc $203F40.l,X		; 7F 40 3F 20
	ora $0C1F20.l,X		; 1F 20 1F 0C
	tsb $1C1C.w		; 0C 1C 1C
	pha		; 48
	pha		; 48
	rti		; 40

	rti		; 40

	sec		; 38
	sec		; 38
	clc		; 18
	clc		; 18
	tsb $0C0C.w		; 0C 0C 0C
	tsb $FE01.w		; 0C 01 FE
	asl $F9.b		; 06 F9
	pld		; 2B
	pei ($5D.b)		; D4 5D
	tay		; A8
	plb		; AB
	eor ($A6.b)		; 52 A6
	eor ($D7.b,S),Y		; 53 D7
	bmi -118.b		; 30 8A
	and $6868.w,Y		; 39 68 68
	cmp ($C1.b,X)		; C1 C1
	sty $84.b		; 84 84
	bra -126.b		; 80 82
	plp		; 28
	asl $3F.b		; 06 3F
	ora ($0F.b)		; 12 0F
	brk $17.b		; 00 17
	ora ($5F.b),Y		; 11 5F
	jsr $152A.w		; 20 2A 15
	ora [$08.b],Y		; 17 08
	and $2D12.w		; 2D 12 2D
	ora ($17.b,S),Y		; 13 17
	ora #$030F.w		; 09 0F 03
	ora [$0B.b]		; 07 0B
	jsl $101532.l		; 22 32 15 10
	ora $1B05.w		; 0D 05 1B
	ora #$081B.w		; 09 1B 08
	phd		; 0B
	cop $07.b		; 02 07
	tsb $03.b		; 04 03
	brk $FF.b		; 00 FF
	ora #$3CDB.w		; 09 DB 3C
	tsx		; BA
	cmp $B6D7BA.l,X		; DF BA D7 B6
	tda		; 7B
	lda [$7E.b],Y		; B7 7E
	adc [$BE.b],Y		; 77 BE
	adc [$AE.b],Y		; 77 AE
	cmp $FED5.w,X		; DD D5 FE
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	jsr $28FF.w		; 20 FF 28
	sbc $81FF84.l,X		; FF 84 FF 81
	sbc $51FF41.l,X		; FF 41 FF 51
	ora ($0E.b),Y		; 11 0E
	and ($1E.b,X)		; 21 1E
	and ($1E.b,X)		; 21 1E
	ora $0506.w,Y		; 19 06 05
	cop $06.b		; 02 06
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	clc		; 18
	clc		; 18
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phk		; 4B
	lda $7CE5.w,Y		; B9 E5 7C
	lda ($7E.b)		; B2 7E
	eor $583F.w,Y		; 59 3F 58
	tsa		; 3B
	and $06.b,S		; 23 06
	and $0FE71F.l		; 2F 1F E7 0F
	asl $90.b,X		; 16 90
	phd		; 0B
	pla		; 68
	ora $74.b		; 05 74
	ora ($3A.b)		; 12 3A
	ora ($3D.b,X)		; 01 3D
	brk $1E.b		; 00 1E
	ora $1F.b,S		; 03 1F
	ora $1F.b,S		; 03 1F
	asl $F1.b,X		; 16 F1
	lda $6FDFE3.l		; AF E3 DF 6F
	adc $D7BE17.l,X		; 7F 17 BE D7
	adc $FBA6.w,X		; 7D A6 FB
	tsb $FC.b		; 04 FC
	bra   0.b		; 80 00
	adc $3301.w,Y		; 79 01 33
	sta [$0F.b]		; 87 0F
	dec $07.b,X		; D6 07
	mvn $A0,$47		; 54 47 A0
	stx $50.b		; 86 50
	mvn $80,$80		; 54 80 80
	cld		; D8
	cpx #$C0F0.w		; E0 F0 C0
	sei		; 78
	bra -68.b		; 80 BC
	rts		; 60

	jsr ($F470.w,X)		; FC 70 F4
	beq  96.b		; F0 60
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	cpx #$C000.w		; E0 00 C0
	bpl -112.b		; 10 90
	brk $60.b		; 00 60
	rts		; 60

	bvs  96.b		; 70 60
	sed		; F8
	jsr $00F8.w		; 20 F8 00
	brk $5C.b		; 00 5C
	cmp ($1C.b,X)		; C1 1C
	cmp ($2E.b,X)		; C1 2E
	sbc ($2E.b,X)		; E1 2E
	adc ($1E.b,X)		; 61 1E
	adc ($1F.b),Y		; 71 1F
	adc ($07.b),Y		; 71 07
	and ($06.b),Y		; 31 06
	bmi  62.b		; 30 3E
	brk $7E.b		; 00 7E
	rti		; 40

	lsr $1E40.w,X		; 5E 40 1E
	brk $2F.b		; 00 2F
	and ($2E.b,X)		; 21 2E
	jsr $101E.w		; 20 1E 10
	ora $98F010.l,X		; 1F 10 F0 98
	cpx #$E088.w		; E0 88 E0
	dey		; 88
	rts		; 60

	dey		; 88
	rts		; 60

	dey		; 88
	jsr $2088.w		; 20 88 20
	dey		; 88
	jsr $6088.w		; 20 88 60
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	bra 112.b		; 80 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($05.b,X)		; 01 05
	ora $05.b,S		; 03 05
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $03.b		; 02 03
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	ora ($47.b,X)		; 01 47
	and $801FE6.l,X		; 3F E6 1F 80
	sbc $81FFC0.l,X		; FF C0 FF 81
	inc $FE81.w,X		; FE 81 FE
	cop $FD.b		; 02 FD
	cop $FD.b		; 02 FD
	clc		; 18
	clc		; 18
	ora #$6609.w		; 09 09 66
	ror $3C.b		; 66 3C
	bit $7C7C.w,X		; 3C 7C 7C
	mvp $80,$44		; 44 44 80
	bra -127.b		; 80 81
	sta ($3C.b,X)		; 81 3C
	cpy #$A07C.w		; C0 7C A0
	ror $E180.w,X		; 7E 80 E1
	asl $FF30.w,X		; 1E 30 FF
	sei		; 78
	sbc $02FF36.l,X		; FF 36 FF 02
	sbc $388080.l,X		; FF 80 80 38
	php		; 08
	jsr $0220.w		; 20 20 02
	cop $49.b		; 02 49
	eor #$8686.w		; 49 86 86
	cmp #$74C9.w		; C9 C9 74
	stz $00.b,X		; 74 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $50.b		; 00 50
	ldy #$E010.w		; A0 10 E0
	bpl -32.b		; 10 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$47C0.w		; C0 C0 47
	sec		; 38
	sta $78.b		; 85 78
	tya		; 98
	rts		; 60

	ldy #$7040.w		; A0 40 70
	brk $10.b		; 00 10
	brk $0E.b		; 00 0E
	brk $0C.b		; 00 0C
	cop $30.b		; 02 30
	bmi  96.b		; 30 60
	rts		; 60

	rti		; 40

	eor ($00.b,X)		; 41 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($02.b,X)		; 01 02
	ora [$AD.b]		; 07 AD
	ldx #$5E4D.w		; A2 4D 5E
	pea $4B51.w		; F4 51 4B
	lda $7C45.w,Y		; B9 45 7C
	and ($7E.b)		; 32 7E
	bit #$F097.w		; 89 97 F0
	sbc [$22.b]		; E7 22
	beq  80.b		; F0 50
	beq  14.b		; F0 0E
	rti		; 40

	asl $90.b,X		; 16 90
	phd		; 0B
	inx		; E8
	ora $F4.b		; 05 F4
	cop $F2.b		; 02 F2
	ora $FFED.w		; 0D ED FF
	sta ($F9.b),Y		; 91 F9
	sty $79.b,X		; 94 79
	bne  22.b		; D0 16
	sbc ($AF.b),Y		; F1 AF
	sbc $DF.b,S		; E3 DF
	adc $BE177F.l		; 6F 7F 17 BE
	cmp [$80.b],Y		; D7 80
	sta ($92.b),Y		; 91 92
	sta ($16.b)		; 92 16
	dec $00.b,X		; D6 00
	adc $3301.w,Y		; 79 01 33
	sta [$0F.b]		; 87 0F
	dec $07.b,X		; D6 07
	mvn $9E,$47		; 54 47 9E
	stz $EC.b		; 64 EC
	sed		; F8
	sed		; F8
	beq -40.b		; F0 D8
	cpx #$C0F0.w		; E0 F0 C0
	sei		; 78
	bra -72.b		; 80 B8
	rts		; 60

	sed		; F8
	bvs   0.b		; 70 00
	stz $60.b		; 64 60
	sed		; F8
	rti		; 40

	beq   0.b		; F0 00
	cpx #$C000.w		; E0 00 C0
	bpl -112.b		; 10 90
	brk $60.b		; 00 60
	rts		; 60

	bvs 119.b		; 70 77
	sty $56AD.w		; 8C AD 56
	sbc $DD3F.w		; ED 3F DD
	and $DDEF5D.l		; 2F 5D EF DD
	tda		; 7B
	cmp $7B7B.w,X		; DD 7B 7B
	sta $32BE.w,X		; 9D BE 32
	adc $407F29.l,X		; 7F 29 7F 40
	adc $10FF50.l,X		; 7F 50 FF 10
	sbc $84FF84.l,X		; FF 84 FF 84
	lda $80F822.l,X		; BF 22 F8 80
	pea $BA08.w		; F4 08 BA
	stz $AE.b		; 64 AE
	bvc -67.b		; 50 BD
	cmp ($D5.b)		; D2 D5
	tax		; AA
	dec $DEA8.w,X		; DE A8 DE
	inx		; E8
	bpl -112.b		; 10 90
	plp		; 28
	jsr $88EC.w		; 20 EC 88
	pea $F6A4.w		; F4 A4 F6
	bit $FA.b		; 24 FA
	bvc  -8.b		; 50 F8
	bvc  -4.b		; 50 FC
	trb $00.b		; 14 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	asl $03.b		; 06 03
	asl $00.b		; 06 00
	tsb $0D07.w		; 0C 07 0D
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	cop $00.b		; 02 00
	inx		; E8
	stx $1C70.w		; 8E 70 1C
	cpy #$A018.w		; C0 18 A0
	sec		; 38
	rti		; 40

	bvs  64.b		; 70 40
	bvs -128.b		; 70 80
	cpx #$C000.w		; E0 00 C0
	stz $04.b,X		; 74 04
	inx		; E8
	php		; 08
	beq  16.b		; F0 10
	bne  16.b		; D0 10
	ldy #$A020.w		; A0 20 A0
	jsr $4040.w		; 20 40 40
	bra -128.b		; 80 80
	tsb $48.b		; 04 48
	bit $7C60.w		; 2C 60 7C
	php		; 08
	jmp ($5430.w,X)		; 7C 30 54
	sec		; 38
	jmp $083C30.l		; 5C 30 3C 08
	bit $3818.w		; 2C 18 38
	php		; 08
	bpl   0.b		; 10 00
	php		; 08
	brk $38.b		; 00 38
	php		; 08
	sec		; 38
	brk $38.b		; 00 38
	php		; 08
	clc		; 18
	bpl  24.b		; 10 18
	brk $1D.b		; 00 1D
	asl $2E.b		; 06 2E
	clc		; 18
	dec A		; 3A
	tsb $305E.w		; 0C 5E 30
	stz $18.b,X		; 74 18
	ldy $E860.w,X		; BC 60 E8
	bmi -16.b		; 30 F0
	brk $0E.b		; 00 0E
	php		; 08
	trb $1C04.w		; 1C 04 1C
	bpl  56.b		; 10 38
	php		; 08
	sec		; 38
	jsr $1070.w		; 20 70 10
	bvs  64.b		; 70 40
	brk $00.b		; 00 00
	asl $0E18.w		; 0E 18 0E
	clc		; 18
	brk $30.b		; 00 30
	ora ($31.b),Y		; 11 31
	rol $486F.w		; 2E 6F 48
	cmp $709EB0.l		; CF B0 9E 70
	asl $0007.w,X		; 1E 07 00
	ora [$00.b]		; 07 00
	ora $000E10.l,X		; 1F 10 0E 00
	ora ($01.b),Y		; 11 01
	rol $06.b,X		; 36 06
	jmp ($EC0C.w)		; 6C 0C EC
	tsb $C860.w		; 0C 60 C8
	bvc -40.b		; 50 D8
	bmi  -8.b		; 30 F8
	bpl  -4.b		; 10 FC
	clc		; 18
	jsr ($EE28.w,X)		; FC 28 EE
	jsr $2CE6.w		; 20 E6 2C
	inc $30.b		; E6 30
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	rti		; 40

	pla		; 68
	pla		; 68
	rts		; 60

	rts		; 60

	pei ($C4.b)		; D4 C4
	jmp $405844.l		; 5C 44 58 40
	cop $01.b		; 02 01
	tsb $1203.w		; 0C 03 12
	ora $581F2C.l		; 0F 2C 1F 58
	and $473C43.l,X		; 3F 43 3C 47
	sec		; 38
	and [$18.b]		; 27 18
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora $05.b		; 05 05
	ora ($13.b,S),Y		; 13 13
	bit $24.b		; 24 24
	sec		; 38
	sec		; 38
	ora ($11.b),Y		; 11 11
	ora ($12.b)		; 12 12
	cop $FD.b		; 02 FD
	asl $0FF1.w		; 0E F1 0F
	beq  62.b		; F0 3E
	cpy #$3CC2.w		; C0 C2 3C
	sbc $63BE10.l		; EF 10 BE 63
	eor [$D9.b],Y		; 57 D9
	sta ($81.b,X)		; 81 81
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	and $1E00.w,X		; 3D 00 1E
	asl $6427.w		; 0E 27 64
	eor $FA.b,S		; 43 FA
	ora #$3DF6.w		; 09 F6 3D
	dex		; CA
	tda		; 7B
	lda $EA.b		; A5 EA
	eor [$5E.b],Y		; 57 5E
	sbc ($54.b,S),Y		; F3 54
	cmp #$61A0.w		; C9 A0 61
	cmp $6226.w,X		; DD 26 62
	.db $62, $00, $00		; 62 00 00
	tsb $04.b		; 04 04
	ora ($11.b,X)		; 01 11
	ldy $B0.b,X		; B4 B0
	rol $5E00.w,X		; 3E 00 5E
	rti		; 40

	jsr $1020.w		; 20 20 10
	cpx #$6090.w		; E0 90 60
	ldy #$4040.w		; A0 40 40
	bra -32.b		; 80 E0
	brk $70.b		; 00 70
	jsr $2070.w		; 20 70 20
	inc $20.b,X		; F6 20
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	tsb $0C00.w		; 0C 00 0C
	brk $0C.b		; 00 0C
	brk $0A.b		; 00 0A
	ora ($0F.b,X)		; 01 0F
	bpl   5.b		; 10 05
	adc ($55.b)		; 72 55
	cop $5A.b		; 02 5A
	and $02.b		; 25 02
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$04.b]		; 07 04
	ora $00.b		; 05 00
	brk $1A.b		; 00 1A
	clc		; 18
	rol A		; 2A
	sec		; 38
	and $30.b		; 25 30
	sbc $FEE0.w,X		; FD E0 FE
	sbc ($7E.b,X)		; E1 7E
	sbc $DE3F3E.l,X		; FF 3E 3F DE
	cmp $B42EEC.l,X		; DF EC 2E B4
	eor $FB.b,X		; 55 FB
	asl A		; 0A
	.db $62, $EE, $60		; 62 EE 60
	sbc ($3C.b,X)		; E1 3C
	sbc $4CFF1C.l,X		; FF 1C FF 4C
	sbc $D03F24.l,X		; FF 24 3F D0
	sta $7DAEA8.l,X		; 9F A8 AE 7D
	ldx $FB.b		; A6 FB
	tsb $7C.b		; 04 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	bra -96.b		; 80 A0
	stx $50.b		; 86 50
	mvn $80,$00		; 54 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	beq -16.b		; F0 F0
	rts		; 60

	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	sed		; F8
	jsr $00F8.w		; 20 F8 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FB.b		; 00 FB
	and $077B.w,X		; 3D 7B 07
	ora $711170.l		; 0F 70 11 71
	ora [$70.b],Y		; 17 70
	ora [$30.b],Y		; 17 30
	ora [$30.b]		; 07 30
	phd		; 0B
	sec		; 38
	and $080F02.l,X		; 3F 02 0F 08
	bmi  48.b		; 30 30
	rol $2F20.w		; 2E 20 2F
	jsr $000F.w		; 20 0F 00
	ora $101710.l,X		; 1F 10 17 10
	inc $FAC0.w,X		; FE C0 FA
	cpy $E0.b		; C4 E0
	asl $F614.w,X		; 1E 14 F6
	dey		; 88
	sep #$08		; E2 08
	adc $88.b,S		; 63 88
	adc $CE.b,S		; 63 CE
	adc $E8.b,S		; 63 E8
	plp		; 28
	cpx #$1C20.w		; E0 20 1C
	trb $A0A8.w		; 1C A8 A0
	bit $DE20.w,X		; 3C 20 DE
	.db $42, $DE		; 42 DE
	.db $42, $9C		; 42 9C
	brk $03.b		; 00 03
	ora #$0118.w		; 09 18 01
	asl $2F09.w,X		; 1E 09 2F
	trb $083E.w		; 1C 3E 08
	jmp $187430.l		; 5C 30 74 18
	clv		; B8
	rts		; 60

	asl $00.b		; 06 00
	ora [$01.b]		; 07 01
	php		; 08
	brk $1E.b		; 00 1E
	cop $1C.b		; 02 1C
	trb $38.b		; 14 38
	php		; 08
	sec		; 38
	jsr $1070.w		; 20 70 10
	brk $C0.b		; 00 C0
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
	mvn $5C,$38		; 54 38 5C
	bmi  60.b		; 30 3C
	php		; 08
	rol A		; 2A
	trb $083E.w		; 1C 3E 08
	and $060F04.l,X		; 3F 04 0F 06
	ora $003800.l		; 0F 00 38 00
	sec		; 38
	php		; 08
	clc		; 18
	bpl  28.b		; 10 1C
	brk $0C.b		; 00 0C
	tsb $0E.b		; 04 0E
	asl A		; 0A
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	cop $01.b		; 02 01
	ora [$00.b]		; 07 00
	ora $02.b		; 05 02
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	php		; 08
	.db $62, $1C, $73		; 62 1C 73
	trb $33.b		; 14 33
	asl $33.b		; 06 33
	asl $33.b		; 06 33
	asl $0A1B.w		; 0E 1B 0A
	tas		; 1B
	brk $19.b		; 00 19
	bit $2E20.w,X		; 3C 20 2E
	jsl $1C020E.l		; 22 0E 02 1C
	bpl  28.b		; 10 1C
	bpl   4.b		; 10 04
	brk $04.b		; 00 04
	brk $0E.b		; 00 0E
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	rts		; 60

	brk $5E.b		; 00 5E
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
	brk $78.b		; 00 78
	brk $84.b		; 00 84
	sei		; 78
	.db $42, $FC		; 42 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	sec		; 38
	ldy $00AC.w		; AC AC 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
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
	brk $03.b		; 00 03
	brk $ED.b		; 00 ED
	ora $12.b,S		; 03 12
	sbc $25EF18.l		; EF 18 EF 25
	phx		; DA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $E5.b		; E5 E5
	.db $82, $82, $08		; 82 82 08
	php		; 08
	beq  15.b		; F0 0F
	cmp $8FCDB0.l		; CF B0 CD 8F
	inc $2642.w,X		; FE 42 26
	cpx #$3CCC.w		; E0 CC 3C
	and ($0E.b,S),Y		; 33 0E
	lsr $0E31.w		; 4E 31 0E
	asl $20A0.w		; 0E A0 20
	bcs   1.b		; B0 01
	bit $DE01.w,X		; 3C 01 DE
	cmp ($32.b,X)		; C1 32
	and ($0C.b),Y		; 31 0C
	tsb M7Y.w		; 0C 20 21
	plp		; 28
	cmp [$FD.b]		; C7 FD
	ora $BF.b,S		; 03 BF
	eor $ACDF.w,Y		; 59 DF AC
	lda $A8B792.l		; AF 92 B7 A8
	lda $58BEA0.l		; AF A0 BE 58
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	jmp ($BE24.w,X)		; 7C 24 BE
	sta ($9F.b)		; 92 9F
	cmp $E008.w		; CD 08 E0
	brk $F3.b		; 00 F3
	ora ($5B.b,X)		; 01 5B
	and ($00.b,X)		; 21 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($02.b,X)		; 01 02
	brk $0E.b		; 00 0E
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $05.b,S		; 03 05
	ora [$AF.b]		; 07 AF
	eor $AF1FAF.l,X		; 5F AF 1F AF
	ora $2403A3.l,X		; 1F A3 03 24
	jmp $5303FF.l		; 5C FF 03 53
	ldy $54AB.w		; AC AB 54
	eor [$DF.b]		; 47 DF
	eor [$DF.b]		; 47 DF
	eor [$DF.b]		; 47 DF
	rti		; 40

	cmp $01DFC0.l,X		; DF C0 DF 01
	ora $AC.b,S		; 03 AC
	bra  93.b		; 80 5D
	ora #$0000.w		; 09 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $F4.b		; 00 F4
	php		; 08
	.db $82, $FC, $21		; 82 FC 21
	dec $A659.w,X		; DE 59 A6
	lda $006A.w,X		; BD 6A 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	trb $14.b		; 14 14
	jsl $424222.l		; 22 22 42 42
	cmp [$3C.b]		; C7 3C
	ora ($FC.b,S),Y		; 13 FC
	sbc $C896A8.l		; EF A8 96 C8
	inx		; E8
	tsb $C8.b		; 04 C8
	bit $3C08.w,X		; 3C 08 3C
	brk $3C.b		; 00 3C
	clc		; 18
	clc		; 18
	pla		; 68
	ldy #$8018.w		; A0 18 80
	sed		; F8
	dey		; 88
	sed		; F8
	brk $F0.b		; 00 F0
	bmi -16.b		; 30 F0
	bmi -40.b		; 30 D8
	clc		; 18
	ora [$07.b]		; 07 07
	dec $FD1F.w,X		; DE 1F FD
	ldx $DC7A.w,Y		; BE 7A DC
	bit $58.b,X		; 34 58
	tay		; A8
	bne  48.b		; D0 30
	cpy #$8040.w		; C0 40 80
	brk $1F.b		; 00 1F
	tsb $B83F.w		; 0C 3F B8
	rol $1C50.w,X		; 3E 50 1C
	bra  24.b		; 80 18
	brk $10.b		; 00 10
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	rol $1EC7.w,X		; 3E C7 1E
	sbc [$26.b]		; E7 26
	sbc $DE19.w,Y		; F9 19 DE
	asl $C7.b		; 06 C7
	phy		; 5A
	cmp $5A.b,S		; C3 5A
	cmp $5A.b,S		; C3 5A
	cmp $57.b,S		; C3 57
	bvc 103.b		; 50 67
	rts		; 60

	eor $6658.w,Y		; 59 58 66
	lsr $79.b		; 46 79
	eor ($3D.b,X)		; 41 3D
	ora ($3D.b,X)		; 01 3D
	ora ($3C.b,X)		; 01 3C
	brk $F7.b		; 00 F7
	ror $E1FE.w		; 6E FE E1
	jsr ($F4E3.w,X)		; FC E3 F4
	ora $2EF332.l		; 0F 32 F3 2E
	sbc $2E.b,S		; E3 2E
	sbc $2E.b,S		; E3 2E
	sbc $FE.b,S		; E3 FE
	bcc -12.b		; 90 F4
	trb $F2.b		; 14 F2
	ora ($0A.b)		; 12 0A
	asl A		; 0A
	jmp $5C40.w		; 4C 40 5C
	rti		; 40

	jmp $405C40.l		; 5C 40 5C 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dec $00.b		; C6 00
	ror $6E44.w		; 6E 44 6E
	mvp $48,$7C		; 44 7C 48
	jmp ($7778.w,X)		; 7C 78 77
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C4.b		; 00 C4
	brk $C4.b		; 00 C4
	brk $C8.b		; 00 C8
	bvs  -8.b		; 70 F8
	bvs  -8.b		; 70 F8
	cpy #$03F0.w		; C0 F0 03
	cpx #$E3DC.w		; E0 DC E3
	dec $BF38.w,X		; DE 38 BF
	ora ($F7.b)		; 12 F7
	asl A		; 0A
	lda $D43B10.l,X		; BF 10 3B D4
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $D9.b		; 00 D9
	cpy #$0A58.w		; C0 58 0A
	php		; 08
	cop $50.b		; 02 50
	pei ($D4.b)		; D4 D4
	cpy $9E.b		; C4 9E
	and ($7A.b,X)		; 21 7A
	bra  22.b		; 80 16
	inx		; E8
	and ($00.b)		; 32 00
	inc $38.b,X		; F6 38
	sbc ($7C.b)		; F2 7C
	beq  -8.b		; F0 F8
	beq -16.b		; F0 F0
	rts		; 60

	cpx $84.b		; E4 84
	sty $68.b		; 84 68
	pla		; 68
	cpy $00CC.w		; CC CC 00
	ldy $20.b,X		; B4 20
	sei		; 78
	rts		; 60

	jsr ($F8E0.w,X)		; FC E0 F8
	cpx #$E040.w		; E0 40 E0
	cpy #$C0B8.w		; C0 B8 C0
	sed		; F8
	beq 112.b		; F0 70
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	cpy #$00F0.w		; C0 F0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $82.b		; 00 82
	cop $FE.b		; 02 FE
	.db $42, $7C		; 42 7C
	asl $1A3A.w,X		; 1E 3A 1A
	dec A		; 3A
	asl $3E.b		; 06 3E
	ora $00071B.l,X		; 1F 1B 07 00
	ora [$00.b]		; 07 00
	eor [$00.b]		; 47 00
	eor $18.b,S		; 43 18
	ora $001F18.l,X		; 1F 18 1F 00
	ora [$0E.b]		; 07 0E
	ora $030700.l,X		; 1F 00 07 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($14.b,X)		; 01 14
	ora $1A.b,S		; 03 1A
	ora [$10.b]		; 07 10
	ora $08030C.l		; 0F 0C 03 08
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $05.b,S		; 03 05
	ora $0E.b		; 05 0E
	asl $0101.w		; 0E 01 01
	ora $03.b,S		; 03 03
	rol $D9.b,X		; 36 D9
	and $36D2.w		; 2D D2 36
	wai		; CB
	plp		; 28
	jmp.w [$DC28]		; DC 28 DC
	inc A		; 1A
	inc $EF11.w		; EE 11 EF
	trb $01E3.w		; 1C E3 01
	ora ($12.b,X)		; 01 12
	ora ($00.b)		; 12 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	tsb $85.b		; 04 85
	sty $82.b		; 84 82
	.db $82, $81, $81		; 82 81 81
	sta [$7A.b]		; 87 7A
	sta $7C.b,S		; 83 7C
	stx $4470.w		; 8E 70 44
	sec		; 38
	and ($0C.b)		; 32 0C
	asl A		; 0A
	tsb $0A.b		; 04 0A
	tsb $1C.b		; 04 1C
	brk $72.b		; 00 72
	bvs  96.b		; 70 60
	rts		; 60

	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $78BC38.l,X		; 5F 38 BC 78
	lsr $5C39.w,X		; 5E 39 5C
	sec		; 38
	and $04.b,S		; 23 04
	and $1F2F1E.l		; 2F 1E 2F 1F
	adc [$0F.b]		; 67 0F
	php		; 08
	tyx		; BB
	phd		; 0B
	tda		; 7B
	php		; 08
	sec		; 38
	ora $3B.b,S		; 03 3B
	brk $1D.b		; 00 1D
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	ora $1F.b,S		; 03 1F
	phd		; 0B
	tsb $05.b		; 04 05
	cop $02.b		; 02 02
	ora ($05.b,X)		; 01 05
	cop $05.b		; 02 05
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($04.b,X)		; 01 04
	asl $02.b		; 06 02
	cop $01.b		; 02 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	ora ($5B.b,X)		; 01 5B
	lda [$F7.b]		; A7 F7
	tas		; 1B
	lda [$5A.b],Y		; B7 5A
	ldx $6F.b,Y		; B6 6F
	inc $2F.b,X		; F6 2F
	inc $EE77.w		; EE 77 EE
	adc $5B.b,X		; 75 5B
	phy		; 5A
	lda $A4BF18.l,X		; BF 18 BF A4
	adc $107F25.l,X		; 7F 25 7F 10
	adc $88FF50.l,X		; 7F 50 FF 88
	adc $D0D00A.l,X		; 7F 0A D0 D0
	bne  48.b		; D0 30
	beq  -8.b		; F0 F8
	jmp.w [$3F3E]		; DC 3E 3F
	ora $05070F.l		; 0F 0F 07 05
	ora $02.b,S		; 03 02
	ora ($C0.b,X)		; 01 C0
	sed		; F8
	brk $38.b		; 00 38
	bvs  -2.b		; 70 FE
	brk $3F.b		; 00 3F
	ora [$0F.b]		; 07 0F
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$E0F0.w		; E0 F0 E0
	beq 100.b		; F0 64
	pla		; 68
	ldy $A8.b		; A4 A8
	jmp.w [$C050]		; DC 50 C0
	beq -64.b		; F0 C0
	beq -64.b		; F0 C0
	beq -64.b		; F0 C0
	sed		; F8
	rti		; 40

	sed		; F8
	brk $F8.b		; 00 F8
	bra  -8.b		; 80 F8
	rti		; 40

	bvs  -6.b		; 70 FA
	bit $7E.b		; 24 7E
	bra  86.b		; 80 56
	sed		; F8
	lsr $DDF0.w,X		; 5E F0 DD
	.db $62, $EF, $D8		; 62 EF D8
	xba		; EB
	jmp.w [$D8EF]		; DC EF D8
	ldy $A0.b		; A4 A0
	pei ($54.b)		; D4 54
	sed		; F8
	brk $F8.b		; 00 F8
	php		; 08
	plx		; FA
	tya		; 98
	plx		; FA
	jsl $FC20FC.l		; 22 FC 20 FC
	bit $00.b		; 24 00
	bra -28.b		; 80 E4
	beq  -1.b		; F0 FF
	beq 127.b		; F0 7F
	sbc $9F.b,X		; F5 9F
	adc ($67.b,X)		; 61 67
	clc		; 18
	inc A		; 1A
	ora $07.b		; 05 07
	brk $00.b		; 00 00
	beq -64.b		; F0 C0
	sed		; F8
	stz $F4.b		; 64 F4
	ora $F0.b		; 05 F0
	ora $64.b		; 05 64
	inc A		; 1A
	cop $05.b		; 02 05
	ora ($00.b,X)		; 01 00
	brk $FF.b		; 00 FF
	tsb $0E7D.w		; 0C 7D 0E
	eor $3D3E.w,X		; 5D 3E 3D
	tas		; 1B
	tsa		; 3B
	ora $011F.w,X		; 1D 1F 01
	ora $1C0313.l		; 0F 13 03 1C
	ror $1F62.w		; 6E 62 1F
	ora ($3F.b),Y		; 11 3F
	ora ($1F.b,X)		; 01 1F
	tsb $1F.b		; 04 1F
	cop $0B.b		; 02 0B
	asl A		; 0A
	ora $00.b,S		; 03 00
	tsb $D70C.w		; 0C 0C D7
	ldx $BAD7.w,Y		; BE D7 BA
	stp		; DB
	ldx $BB.b,Y		; B6 BB
	cmp $BFDFBB.l,X		; DF BB DF BF
	cld		; D8
	sbc $37CB98.l,X		; FF 98 CB 37
	inc $FF40.w,X		; FE 40 FF
	eor $FF.b		; 45 FF
	eor #$20FF.w		; 49 FF 20
	sbc $23FB20.l,X		; FF 20 FB 23
	clv		; B8
	jsr $0434.w		; 20 34 04
	inx		; E8
	bpl  -8.b		; 10 F8
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	jsr $E000.w		; 20 00 E0
	bra -32.b		; 80 E0
	bne -64.b		; D0 C0
	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	ldy #$8020.w		; A0 20 80
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	cpy #$4040.w		; C0 40 40
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -64.b		; 80 C0
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

	brk $00.b		; 00 00
	trb $3447.w		; 1C 47 34
	cmp [$74.b]		; C7 74
	cmp [$70.b]		; C7 70
	dec $30.b		; C6 30
	stx $30.b		; 86 30
	stx $78.b		; 86 78
	sty $8C78.w		; 8C 78 8C
	dec A		; 3A
	cop $7A.b		; 02 7A
	.db $42, $3A		; 42 3A
	cop $3C.b		; 02 3C
	tsb $7C.b		; 04 7C
	tsb $7C.b		; 04 7C
	tsb $70.b		; 04 70
	brk $70.b		; 00 70
	brk $34.b		; 00 34
	ror $34.b		; 66 34
	ror $34.b		; 66 34
	ror $10.b		; 66 10
	lsr $10.b		; 46 10
	lsr $10.b		; 46 10
	lsr $10.b		; 46 10
	lsr $18.b		; 46 18
	mvp $00,$18		; 44 18 00
	clc		; 18
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	tsb $3C.b		; 04 3C
	tsb $3C.b		; 04 3C
	tsb $3C.b		; 04 3C
	tsb $38.b		; 04 38
	brk $58.b		; 00 58
	tsb $7C.b		; 04 7C
	brk $7C.b		; 00 7C
	sec		; 38
	jmp ($7C10.w,X)		; 7C 10 7C
	bpl 124.b		; 10 7C
	bpl  92.b		; 10 5C
	bmi  92.b		; 30 5C
	bmi  56.b		; 30 38
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	plp		; 28
	sec		; 38
	plp		; 28
	sec		; 38
	plp		; 28
	sec		; 38
	php		; 08
	sec		; 38
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	and $3D1A.w		; 2D 1A 3D
	asl A		; 0A
	dec A		; 3A
	trb $7E.b		; 14 7E
	bpl 118.b		; 10 76
	plp		; 28
	inc $F020.w,X		; FE 20 F0
	cpy #$00E0.w		; C0 E0 00
	asl $1E04.w,X		; 1E 04 1E
	trb $1C.b		; 14 1C
	php		; 08
	sec		; 38
	plp		; 28
	sec		; 38
	bpl 112.b		; 10 70
	bvc -32.b		; 50 E0
	jsr $0000.w		; 20 00 00
	inc A		; 1A
	eor $1A.b,S		; 43 1A
	eor $1A.b,S		; 43 1A
	eor $18.b,S		; 43 18
	eor $18.b,S		; 43 18
	eor $1C.b,S		; 43 1C
	eor [$1C.b]		; 47 1C
	lsr $1C.b		; 46 1C
	lsr $3C.b		; 46 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	cop $3E.b		; 02 3E
	cop $3A.b		; 02 3A
	cop $38.b		; 02 38
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	lsr $04.b		; 46 04
	lsr $38.b		; 46 38
	ror $7E30.w,X		; 7E 30 7E
	bmi 126.b		; 30 7E
	bpl -34.b		; 10 DE
	bpl -36.b		; 10 DC
	pla		; 68
	cpy $0038.w		; CC 38 00
	sec		; 38
	brk $04.b		; 00 04
	tsb $0C.b		; 04 0C
	tsb $0C0C.w		; 0C 0C 0C
	jmp ($684C.w)		; 6C 4C 68
	pha		; 48
	bmi   0.b		; 30 00
	clv		; B8
	rts		; 60

	clv		; B8
	rts		; 60

	sed		; F8
	jsr $10F8.w		; 20 F8 10
	pei ($38.b)		; D4 38
	cpx $DF10.w		; EC 10 DF
	tsb $000F.w		; 0C 0F 00
	bvs  16.b		; 70 10
	bvs  16.b		; 70 10
	bmi  16.b		; 30 10
	bmi  32.b		; 30 20
	sec		; 38
	brk $18.b		; 00 18
	php		; 08
	tsb $0000.w		; 0C 00 00
	brk $33.b		; 00 33
	cop $3D.b		; 02 3D
	ora ($3E.b)		; 12 3E
	clc		; 18
	dec A		; 3A
	trb $5A.b		; 14 5A
	bit $7A.b,X		; 34 7A
	trb $7C.b		; 14 7C
	bpl 116.b		; 10 74
	plp		; 28
	tsb $1200.w		; 0C 00 12
	cop $1C.b		; 02 1C
	tsb $1C.b		; 04 1C
	php		; 08
	bit $3C08.w,X		; 3C 08 3C
	plp		; 28
	sec		; 38
	plp		; 28
	sec		; 38
	bpl  52.b		; 10 34
	adc [$14.b]		; 67 14
	lsr $10.b		; 46 10
	lsr $38.b		; 46 38
	lsr $CC38.w		; 4E 38 CC
	bvs -52.b		; 70 CC
	jsr $308C.w		; 20 8C 30
	stz $021A.w		; 9C 1A 02
	sec		; 38
	brk $3C.b		; 00 3C
	tsb $34.b		; 04 34
	tsb $70.b		; 04 70
	rti		; 40

	sec		; 38
	php		; 08
	sei		; 78
	php		; 08
	pla		; 68
	php		; 08
	clc		; 18
	and $04.b,S		; 23 04
	and [$18.b]		; 27 18
	adc $287F38.l,X		; 7F 38 7F 28
	ror $4E08.w		; 6E 08 4E
	php		; 08
	dec $CE48.w		; CE 48 CE
	asl $1A02.w,X		; 1E 02 1A
	cop $26.b		; 02 26
	rol $06.b		; 26 06
	asl $14.b		; 06 14
	tsb $34.b		; 04 34
	tsb $74.b		; 04 74
	mvp $04,$34		; 44 34 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	clc		; 18
	asl $30.b		; 06 30
	asl $1E30.w		; 0E 30 1E
	bmi  30.b		; 30 1E
	bmi  13.b		; 30 0D
	and ($0D.b,X)		; 21 0D
	and ($0D.b,X)		; 21 0D
	and ($07.b,X)		; 21 07
	brk $1F.b		; 00 1F
	bpl  31.b		; 10 1F
	bpl  15.b		; 10 0F
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $B4.b		; 00 B4
	cpy $D0A6.w		; CC A6 D0
	ldx $D0.b		; A6 D0
	ldx $D0.b		; A6 D0
	asl $D0.b		; 06 D0
	asl $D0.b		; 06 D0
	asl $D0.b		; 06 D0
	asl $D0.b		; 06 D0
	phk		; 4B
	pha		; 48
	eor $404F40.l		; 4F 40 4F 40
	eor $808F40.l		; 4F 40 8F 80
	sta $808F80.l		; 8F 80 8F 80
	sta $050A80.l		; 8F 80 0A 05
	phd		; 0B
	ora $07.b		; 05 07
	brk $00.b		; 00 00
	asl $03.b		; 06 03
	asl $01.b		; 06 01
	tsb $2B.b		; 04 2B
	trb $1E.b		; 14 1E
	tsb $04.b		; 04 04
	ora $00.b		; 05 00
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	cop $01.b		; 02 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	tsb $03.b		; 04 03
	brk $3F.b		; 00 3F
	ldx #$D2DF.w		; A2 DF D2
	sbc [$29.b]		; E7 29
	adc #$8FA0.w		; 69 A0 8F
	beq  14.b		; F0 0E
	adc ($0F.b,X)		; 61 0F
	bvs -68.b		; 70 BC
	beq  46.b		; F0 2E
	cpx $F4C6.w		; EC C6 F4
	ora ($38.b,X)		; 01 38
	stx $B6.b		; 86 B6
	rti		; 40

	eor [$C1.b],Y		; 57 C1
	eor [$C0.b],Y		; 57 C0
	eor [$03.b],Y		; 57 03
	and [$FF.b],Y		; 37 FF
	and ($FF.b,X)		; 21 FF
	ora $FF.b,S		; 03 FF
	cop $C7.b		; 02 C7
	sec		; 38
	eor $39093E.l		; 4F 3E 09 39
	phd		; 0B
	sec		; 38
	phd		; 0B
	sec		; 38
	adc [$56.b],Y		; 77 56
	and $05072C.l		; 2F 2C 07 05
	clc		; 18
	clc		; 18
	bpl  16.b		; 10 10
	asl $10.b,X		; 16 10
	ora [$10.b],Y		; 17 10
	ora [$10.b],Y		; 17 10
	adc $6DA2.w,X		; 7D A2 6D
	lda ($7F.b)		; B2 7F
	cpx #$E0FF.w		; E0 FF E0
	sbc $1AEF6A.l,X		; FF 6A EF 1A
	lda $4738C8.l,X		; BF C8 38 47
	inc $54.b,X		; F6 54
	inc $44.b,X		; F6 44
	nop		; EA
	asl A		; 0A
	nop		; EA
	asl A		; 0A
	nop		; EA
	bra  26.b		; 80 1A
	brk $58.b		; 00 58
	bvc -58.b		; 50 C6
	lsr $01.b		; 46 01
	tsb $0C01.w		; 0C 01 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora $1C.b		; 05 1C
	brk $18.b		; 00 18
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	phd		; 0B
	php		; 08
	ora $218C08.l		; 0F 08 8C 21
	sty $8C21.w		; 8C 21 8C
	and ($8C.b,X)		; 21 8C
	and ($CC.b,X)		; 21 CC
	adc ($CC.b,X)		; 61 CC
	adc ($8C.b,X)		; 61 8C
	adc ($8C.b,X)		; 61 8C
	sbc ($DE.b,X)		; E1 DE
	brk $DE.b		; 00 DE
	brk $DE.b		; 00 DE
	brk $DE.b		; 00 DE
	brk $9E.b		; 00 9E
	brk $9E.b		; 00 9E
	brk $DE.b		; 00 DE
	rti		; 40

	rol $0720.w,X		; 3E 20 07
	brk $0A.b		; 00 0A
	ora [$0D.b]		; 07 0D
	asl $11.b		; 06 11
	asl $0F10.w		; 0E 10 0F
	bpl  15.b		; 10 0F
	ora $190E.w,Y		; 19 0E 19
	asl $0000.w		; 0E 00 00
	ora $05.b		; 05 05
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	cpy #$2F00.w		; C0 00 2F
	cpy #$AFF0.w		; C0 F0 AF
	cmp $5FBE2C.l,X		; DF 2C BE 5F
	cpy $017F.w		; CC 7F 01
	inc $F906.w,X		; FE 06 F9
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx $D30C.w		; EC 0C D3
	cpy #$0121.w		; C0 21 01
	and ($32.b)		; 32 32
	pla		; 68
	pla		; 68
	cmp ($C1.b,X)		; C1 C1
	jmp $187C38.l		; 5C 38 7C 18
	jmp ($7C08.w,X)		; 7C 08 7C
	php		; 08
	jmp ($3C08.w,X)		; 7C 08 3C
	php		; 08
	bit $2C08.w,X		; 3C 08 2C
	bpl  56.b		; 10 38
	brk $38.b		; 00 38
	jsr $3038.w		; 20 38 30
	clc		; 18
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	php		; 08
	sei		; 78
	bpl  60.b		; 10 3C
	bpl -76.b		; 10 B4
	php		; 08
	sed		; F8
	brk $7C.b		; 00 7C
	brk $74.b		; 00 74
	ldx #$027C.w		; A2 7C 02
	cpx $02.b		; E4 02
	bcc   0.b		; 90 00
	cld		; D8
	php		; 08
	cli		; 58
	bpl   0.b		; 10 00
	asl $80.b		; 06 80
	txs		; 9A
	tay		; A8
	tay		; A8
	ldy #$18A8.w		; A0 A8 18
	clc		; 18
	jmp $43E6A2.l		; 5C A2 E6 43
	bit $BC01.w,X		; 3C 01 BC
	cmp ($DA.b,X)		; C1 DA
	cmp #$D883.w		; C9 83 D8
	sta [$9D.b]		; 87 9D
	asl $09.b		; 06 09
	ldy #$18A0.w		; A0 A0 18
	cli		; 58
	cop $D8.b		; 02 D8
	asl $D0.b		; 06 D0
	sta [$E1.b]		; 87 E1
	asl $09E8.w		; 0E E8 09
	iny		; C8
	ora $E2.b,S		; 03 E2
	eor [$0F.b],Y		; 57 0F
	wai		; CB
	ora [$66.b],Y		; 17 66
	ora ($3B.b,X)		; 01 3B
	tsb $F9.b		; 04 F9
	asl $E7.b		; 06 E7
	clc		; 18
	xce		; FB
	ora $5F.b		; 05 5F
	rol $2F23.w		; 2E 23 2F
	bmi 119.b		; 30 77
	clc		; 18
	and $0004.w,Y		; 39 04 00
	asl $7918.w,X		; 1E 18 79
	adc ($47.b,X)		; 61 47
	.db $42, $3F		; 42 3F
	ora ($F0.b),Y		; 11 F0
	sbc ($FF.b),Y		; F1 FF
	sbc $F8FF7F.l,X		; FF 7F FF F8
	asl $F6.b		; 06 F6
	pha		; 48
	sbc $BD82.w,X		; FD 82 BD
	eor ($77.b)		; 52 77
	stz $FFE0.w		; 9C E0 FF
	sbc $FF07FF.l,X		; FF FF 07 FF
	brk $07.b		; 00 07
	pla		; 68
	and ($D6.b,X)		; 21 D6
	mvn $A4,$F6		; 54 F6 A4
	inc $EB62.w,X		; FE 62 EB
	sbc $E6.b		; E5 E6
	sbc ($E1.b,X)		; E1 E1
	cpx #$E0C0.w		; E0 C0 E0
	jsr $C0C0.w		; 20 C0 C0
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $25.b		; 00 25
	beq -63.b		; F0 C1
	beq -128.b		; F0 80
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpy #$0000.w		; C0 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	ora ($03.b,X)		; 01 03
	cmp $3FFF0F.l		; CF 0F FF 3F
	jsr ($FB7F.w,X)		; FC 7F FB
	jmp ($78F4.w,X)		; 7C F4 78
	tya		; 98
	rts		; 60

	cpx #$0000.w		; E0 00 00
	ora $9C3F03.l		; 0F 03 3F 9C
	lda $307F38.l,X		; BF 38 7F 30
	jmp ($7800.w,X)		; 7C 00 78
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	ror A		; 6A
	trb $0C7A.w		; 1C 7A 0C
	bit $3C08.w,X		; 3C 08 3C
	php		; 08
	bit $1C00.w,X		; 3C 00 1C
	brk $14.b		; 00 14
	php		; 08
	tsb $1C00.w		; 0C 00 1C
	brk $1C.b		; 00 1C
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	clc		; 18
	php		; 08
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	brk $0B.b		; 00 0B
	ora ($04.b,X)		; 01 04
	ora $100F.w,X		; 1D 0F 10
	ora $041F02.l,X		; 1F 02 1F 04
	ora [$0B.b],Y		; 17 0B
	and $000707.l,X		; 3F 07 07 00
	asl $00.b		; 06 00
	phd		; 0B
	ora #$0000.w		; 09 00 00
	phd		; 0B
	ora #$0004.w		; 09 04 00
	php		; 08
	ora $03.b,S		; 03 03
	ora [$37.b]		; 07 37
	cpx #$E010.w		; E0 10 E0
	ora $F93FC0.l		; 0F C0 3F F9
	lda $7FFF7F.l,X		; BF 7F FF 7F
	and $CECEBF.l,X		; 3F BF CE CE
	dey		; 88
	tay		; A8
	sta $7600AF.l		; 8F AF 00 76
	brk $79.b		; 00 79
	ora $7F1F7F.l,X		; 1F 7F 1F 7F
	ora $FF8EFF.l,X		; 1F FF 8E FF
	phd		; 0B
	sec		; 38
	ora $18.b,S		; 03 18
	ora $18.b,S		; 03 18
	ora [$1C.b]		; 07 1C
	ora [$1C.b]		; 07 1C
	ora [$1C.b]		; 07 1C
	ora $0C.b		; 05 0C
	ora ($0C.b,X)		; 01 0C
	ora [$10.b],Y		; 17 10
	ora $080F08.l		; 0F 08 0F 08
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	jmp $D27F.w		; 4C 7F D2
	adc ($CE.b,S),Y		; 73 CE
	adc $8E.b,S		; 63 8E
	and $8E.b,S		; 23 8E
	and $8C.b,S		; 23 8C
	and ($8C.b,X)		; 21 8C
	and ($8C.b,X)		; 21 8C
	and ($92.b,X)		; 21 92
	ora ($8C.b)		; 12 8C
	brk $9C.b		; 00 9C
	brk $DC.b		; 00 DC
	brk $DC.b		; 00 DC
	brk $DE.b		; 00 DE
	brk $DE.b		; 00 DE
	brk $DE.b		; 00 DE
	brk $13.b		; 00 13
	and ($1C.b,S),Y		; 33 1C
	eor [$34.b]		; 47 34
	sta [$E8.b]		; 87 E8
	sta $A01E50.l		; 8F 50 1E A0
	bit $79C0.w,X		; 3C C0 79
	rti		; 40

	adc ($0C.b),Y		; 71 0C
	brk $3B.b		; 00 3B
	ora $7B.b,S		; 03 7B
	ora $76.b,S		; 03 76
	asl $EC.b		; 06 EC
	tsb $18D8.w		; 0C D8 18
	bcs  48.b		; B0 30
	ldy #$0220.w		; A0 20 02
	sbc $0C.b,S		; E3 0C
	sbc $08EF28.l		; EF 28 EF 08
	lsr $CE60.w		; 4E 60 CE
	jsr $308E.w		; 20 8E 30
	stz $9CD0.w		; 9C D0 9C
	ldy $B2A0.w,X		; BC A0 B2
	ldx #$0616.w		; A2 16 06
	bit $04.b,X		; 34 04
	bit $7C0C.w,X		; 3C 0C 7C
	tsb $88E8.w		; 0C E8 88
	pla		; 68
	php		; 08
	ora $A10E.w,Y		; 19 0E A1
	asl $3FD0.w,X		; 1E D0 3F
	bra 127.b		; 80 7F
	adc ($1E.b,X)		; 61 1E
	eor $3C.b,S		; 43 3C
	sty $9F73.w		; 8C 73 9F
	jmp ($0404.w)		; 6C 04 04
	trb $2C1C.w		; 1C 1C 2C
	bit $7070.w		; 2C 70 70
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	and ($30.b,S),Y		; 33 30
	adc $6D.b		; 65 6D
	pld		; 2B
	pei ($5D.b)		; D4 5D
	tay		; A8
	plb		; AB
	eor ($A7.b)		; 52 A7
	.db $42, $57		; 42 57
	bmi -54.b		; 30 CA
	and $8E46.w,Y		; 39 46 8E
	cpx #$8447.w		; E0 47 84
	sty $80.b		; 84 80
	.db $82, $28, $06		; 82 28 06
	and $000F03.l,X		; 3F 03 0F 00
	ora [$11.b],Y		; 17 11
	lda $D908.w,Y		; B9 08 D9
	sta ($40.b,X)		; 81 40
	bvs -128.b		; 70 80
	cpx #$C000.w		; E0 00 C0
	cpy #$8001.w		; C0 01 80
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($A0.b,X)		; 01 A0
	jsr $4040.w		; 20 40 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $308C.w		; 20 8C 30
	stz $9C70.w		; 9C 70 9C
	bvc -104.b		; 50 98
	cpy #$6098.w		; C0 98 60
	sec		; 38
	rts		; 60

	bmi -128.b		; 30 80
	bmi 120.b		; 30 78
	php		; 08
	pla		; 68
	php		; 08
	pla		; 68
	php		; 08
	cpx #$7080.w		; E0 80 70
	bpl -48.b		; 10 D0
	bpl -64.b		; 10 C0
	brk $E0.b		; 00 E0
	jsr $020F.w		; 20 0F 02
	ora $051F06.l		; 0F 06 1F 05
	bit $391B.w		; 2C 1B 39
	asl $345A.w		; 0E 5A 34
	ply		; 7A
	trb $F4.b		; 14 F4
	clc		; 18
	asl $04.b		; 06 04
	asl $00.b		; 06 00
	ora $041F0A.l		; 0F 0A 1F 04
	asl $3C10.w,X		; 1E 10 3C
	php		; 08
	bit $5828.w,X		; 3C 28 58
	rti		; 40

	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
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
	trb $0C00.w		; 1C 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $0E0C.w		; 0C 0C 0E
	asl $3636.w		; 0E 36 36
	rol $26.b		; 26 26
	dec A		; 3A
	ply		; 7A
	cpx $E0FC.w		; EC FC E0
	beq   0.b		; F0 00
	tsb $1E04.w		; 0C 04 1E
	tsb $3F.b		; 04 3F
	bit $7F.b,X		; 34 7F
	cop $7F.b		; 02 7F
	brk $FF.b		; 00 FF
	rts		; 60

	inc $FC80.w,X		; FE 80 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	asl $02.b		; 06 02
	ora $020E02.l		; 0F 02 0E 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	bit $0F.b,X		; 34 0F
	bit $3E02.w,X		; 3C 02 3E
	tsb $083E.w		; 0C 3E 08
	bit $7C08.w,X		; 3C 08 7C
	bpl 116.b		; 10 74
	clc		; 18
	stz $18.b,X		; 74 18
	asl A		; 0A
	asl A		; 0A
	bpl  16.b		; 10 10
	trb $1C10.w		; 1C 10 1C
	trb $18.b		; 14 18
	bpl  56.b		; 10 38
	plp		; 28
	sec		; 38
	jsr $2038.w		; 20 38 20
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
	brk $B5.b		; 00 B5
	lsr $16ED.w,X		; 5E ED 16
	adc $EDB6.w		; 6D B6 ED
	rol $5DEE.w,X		; 3E EE 5D
	dec $FE6D.w,X		; DE 6D FE
	eor $7F0EFF.l		; 4F FF 0E 7F
	and ($7F.b,X)		; 21 7F
	adc #$49FF.w		; 69 FF 49
	sbc $A2FFC1.l,X		; FF C1 FF A2
	sbc $90DF92.l,X		; FF 92 DF 90
	asl $F810.w,X		; 1E 10 F8
	bra  -4.b		; 80 FC
	bra  -4.b		; 80 FC
	bra  -4.b		; 80 FC
	cpy #$C0FC.w		; C0 FC C0
	jsr ($FCC0.w,X)		; FC C0 FC
	cpx #$E0FC.w		; E0 FC E0
	ldy #$A820.w		; A0 20 A8
	plp		; 28
	bne  80.b		; D0 50
	bne  16.b		; D0 10
	inx		; E8
	plp		; 28
	inx		; E8
	plp		; 28
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	jsr ($BF78.w,X)		; FC 78 BF
	jmp ($7EBF.w,X)		; 7C BF 7E
	clv		; B8
	sec		; 38
	sta [$27.b]		; 87 27
	ora $1F0F1F.l		; 0F 1F 0F 1F
	sta $7B031F.l		; 8F 1F 03 7B
	clc		; 18
	adc $7E18.w,X		; 7D 18 7E
	brk $7F.b		; 00 7F
	ora ($7F.b,X)		; 01 7F
	ora [$3F.b]		; 07 3F
	ora [$3F.b]		; 07 3F
	ora [$3F.b]		; 07 3F
	adc $F102.w,X		; 7D 02 F1
	pla		; 68
	stz $6490.w,X		; 9E 90 64
	rts		; 60

	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	.db $82, $82, $0E		; 82 82 0E
	ror $F400.w		; 6E 00 F4
	brk $F8.b		; 00 F8
	cpx #$E0F8.w		; E0 F8 E0
	sed		; F8
	cpx #$E0F8.w		; E0 F8 E0
	sed		; F8
	and ($FF.b),Y		; 31 FF
	sec		; 38
	sbc $80FF18.l,X		; FF 18 FF 80
	sbc $7D07E4.l,X		; FF E4 07 7D
	ora ($CF.b,X)		; 01 CF
	cpy #$F819.w		; C0 19 F8
	lsr $46.b		; 46 46
	eor $43.b,S		; 43 43
	and $25.b		; 25 25
	rti		; 40

	rti		; 40

	plx		; FA
	cop $FE.b		; 02 FE
	brk $3F.b		; 00 3F
	brk $67.b		; 00 67
	rts		; 60

	pla		; 68
	tsb $0470.w		; 0C 70 04
	bcs -124.b		; B0 84
	sei		; 78
	dec $7C.b		; C6 7C
	dec $58.b		; C6 58
.INDEX 16
	rep #$1C		; C2 1C
	.db $42, $DC		; 42 DC
	.db $42, $F0		; 42 F0
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	brk $BC.b		; 00 BC
	sty $B8.b		; 84 B8
	bra  60.b		; 80 3C
	brk $FC.b		; 00 FC
	rti		; 40

	ldy $0000.w,X		; BC 00 00
	brk $3E.b		; 00 3E
	bit $7476.w,X		; 3C 76 74
	adc ($74.b)		; 72 74
	jmp ($3C78.w,X)		; 7C 78 3C
	sei		; 78
	bit $1C38.w,X		; 3C 38 1C
	sec		; 38
	brk $3C.b		; 00 3C
	bmi 124.b		; 30 7C
	bvs  -4.b		; 70 FC
	bvc  -4.b		; 50 FC
	bpl  -8.b		; 10 F8
	php		; 08
	sed		; F8
	brk $78.b		; 00 78
	bpl 120.b		; 10 78
	brk $00.b		; 00 00
	sec		; 38
	clc		; 18
	asl $340E.w		; 0E 0E 34
	rol $22.b,X		; 36 22
	and ($3E.b)		; 32 3E
	rol $1E1E.w,X		; 3E 1E 1E
	clc		; 18
	asl $00.b		; 06 00
	clc		; 18
	clc		; 18
	asl $7F0C.w,X		; 1E 0C 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	trb $0C7F.w		; 1C 7F 0C
	and $FE0700.l,X		; 3F 00 07 FE
	sei		; 78
	ldx $78.b,Y		; B6 78
	inc $6400.w,X		; FE 00 64
	phx		; DA
	jsr ($C882.w,X)		; FC 82 C8
	and ($7E.b)		; 32 7E
	ora $4A.b		; 05 4A
	jmp ($7830.w,X)		; 7C 30 78
	brk $78.b		; 00 78
	bra -128.b		; 80 80
	sed		; F8
	jsr $0084.w		; 20 84 00
	stz $40.b,X		; 74 40
	dey		; 88
	brk $A1.b		; 00 A1
	jsr $1E0F.w		; 20 0F 1E
	and $0E351E.l		; 2F 1E 35 0E
	and $0A7D00.l,X		; 3F 00 7D 0A
	rol $BE90.w,X		; 3E 90 BE
	bra  80.b		; 80 50
	trb $3E04.w		; 1C 04 3E
	tsb $1E.b		; 04 1E
	brk $0E.b		; 00 0E
	bpl  16.b		; 10 10
	rol $5024.w		; 2E 24 50
	brk $60.b		; 00 60
	brk $E8.b		; 00 E8
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	asl $03.b		; 06 03
	php		; 08
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($06.b,X)		; 01 06
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $EC.b		; 00 EC
	ora $73.b,S		; 03 73
	stx $AD7F.w		; 8E 7F AD
	inc $001F.w		; EE 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($0D.b,X)		; 01 0D
	tsb $0062.w		; 0C 62 00
	adc ($61.b,X)		; 61 61
	asl $01.b		; 06 01
	ora $02.b		; 05 02
	ora [$00.b]		; 07 00
	phd		; 0B
	tsb $0F.b		; 04 0F
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	asl $01.b		; 06 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $37.b		; 00 37
	asl A		; 0A
	and $030F03.l,X		; 3F 03 0F 03
	ora $0B1C04.l,X		; 1F 04 1C 0B
	tsa		; 3B
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $03.b		; 05 03
	brk $07.b		; 00 07
	tsb $0F.b		; 04 0F
	phd		; 0B
	ora $181C04.l		; 0F 04 1C 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FD01.w,X		; FE 01 FD
	xce		; FB
	sbc $0E00.w,X		; FD 00 0E
	sbc ($FC.b)		; F2 FC
	ora $04.b,S		; 03 04
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FA.b		; 00 FA
	cop $FB.b		; 02 FB
	sed		; F8
	sbc $0308.w,Y		; F9 08 03
	ora $00.b,S		; 03 00
	brk $34.b		; 00 34
	php		; 08
	plp		; 28
	bpl  40.b		; 10 28
	bpl  48.b		; 10 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	bpl  16.b		; 10 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	rts		; 60

	ora [$38.b]		; 07 38
	cop $3E.b		; 02 3E
	ora ($3F.b,X)		; 01 3F
	ora ($3F.b,X)		; 01 3F
	brk $1F.b		; 00 1F
	tsb $1F.b		; 04 1F
	asl $1F.b		; 06 1F
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	ora $14.b,X		; 15 14
	asl $16.b,X		; 16 16
	inc A		; 1A
	inc A		; 1A
	phd		; 0B
	phd		; 0B
	ora #$0809.w		; 09 09 08
	php		; 08
	jsr ($F000.w,X)		; FC 00 F0
	bit $0C08.w,X		; 3C 08 0C
	bvs   6.b		; 70 06
	jmp ($B806.w,X)		; 7C 06 B8
	.db $82, $BA, $83		; 82 BA 83
	lsr $C0C3.w,X		; 5E C3 C0
	cpy #$0808.w		; C0 08 08
	beq   0.b		; F0 00
	jsr ($F804.w,X)		; FC 04 F8
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $BC.b		; 00 BC
	bra  79.b		; 80 4F
	ora $035F0F.l,X		; 1F 0F 5F 03
	eor $4C.b,S		; 43 4C
	bit $43BF.w,X		; 3C BF 43
	sbc $807F00.l,X		; FF 00 7F 80
	cmp $BF8734.l,X		; DF 34 87 BF
	cmp $FF.b,S		; C3 FF
	cpy #$84FF.w		; C0 FF 84
	lda $580343.l,X		; BF 43 03 58
	cli		; 58
	sta $15.b,X		; 95 15
	lda $81.b,X		; B5 81
	cpx #$E0F0.w		; E0 F0 E0
	beq -32.b		; F0 E0
	beq -32.b		; F0 E0
	cpx #$5050.w		; E0 50 50
	clv		; B8
	ldy #$40F8.w		; A0 F8 40
	sed		; F8
	brk $E0.b		; 00 E0
	sed		; F8
	cpx #$E0F8.w		; E0 F8 E0
	sed		; F8
	rti		; 40

	sed		; F8
	brk $F8.b		; 00 F8
	ldy #$50E0.w		; A0 E0 50
	bvc -112.b		; 50 90
	bcc   2.b		; 90 02
	ror $7F00.w,X		; 7E 00 7F
	trb $3E7F.w		; 1C 7F 3E
	adc $227F3E.l,X		; 7F 3E 7F 22
	adc $00.b,S		; 63 00
	cmp $4C.b,S		; C3 4C
	dec $0C0D.w		; CE 0D 0C
	and ($31.b),Y		; 31 31
	jsl $000022.l		; 22 22 00 00
	brk $00.b		; 00 00
	trb $7E00.w		; 1C 00 7E
	.db $42, $30		; 42 30
	brk $18.b		; 00 18
	cop $64.b		; 02 64
	inc $00.b		; E6 00
	jsr ($3800.w,X)		; FC 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($9800.w,X)		; FC 00 98
	bra  56.b		; 80 38
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	sec		; 38
	clc		; 18
	sec		; 38
	sec		; 38
	sec		; 38
	clv		; B8
	sec		; 38
	bvs -72.b		; 70 B8
	bcs 120.b		; B0 78
	inc $78.b,X		; F6 78
	inc $1078.w,X		; FE 78 10
	jmp ($7C10.w,X)		; 7C 10 7C
	bpl 124.b		; 10 7C
	bpl 124.b		; 10 7C
	bcc -68.b		; 90 BC
	bmi 124.b		; 30 7C
	bmi 120.b		; 30 78
	bmi 120.b		; 30 78
	ora ($0E.b)		; 12 0E
	asl $0E.b,X		; 16 0E
	asl $0E.b		; 06 0E
	asl $0E.b		; 06 0E
	asl $0E.b		; 06 0E
	asl $0F0E.w		; 0E 0E 0F
	asl $1E0F.w		; 0E 0F 1E
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	tsb $1F.b		; 04 1F
	tsb $1F.b		; 04 1F
	tsb $1F.b		; 04 1F
	tsb $1E.b		; 04 1E
	tsb $3E.b		; 04 3E
	sta [$F8.b]		; 87 F8
	asl $1FF4.w		; 0E F4 1F
	cpx #$2059.w		; E0 59 20
	and [$00.b],Y		; 37 00
	and $3F54.w,Y		; 39 54 3F
	bpl -47.b		; 10 D1
	bit $5051.w		; 2C 51 50
	lda ($A4.b,X)		; A1 A4
	pla		; 68
	pla		; 68
	ldx $A6.b		; A6 A6
	iny		; C8
	dec $D6D6.w		; CE D6 D6
	bne -58.b		; D0 C6
	rol $A02E.w		; 2E 2E A0
	sec		; 38
	rti		; 40

	bvs -128.b		; 70 80
	cpx #$00C0.w		; E0 C0 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bne  16.b		; D0 10
	ldy #$4020.w		; A0 20 40
	rti		; 40

	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora [$06.b]		; 07 06
	ora $06.b,S		; 03 06
	ora $07.b,S		; 03 07
	ora $04.b,S		; 03 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $06.b		; 04 06
	asl $02.b		; 06 02
	cop $01.b		; 02 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $56.b		; 00 56
	lda $41BE61.l		; AF 61 BE 41
	ldx $B44B.w,Y		; BE 4B B4
	eor $D12FB0.l		; 4F B0 2F D1
	ora ($EC.b),Y		; 11 EC
	ora ($E8.b,S),Y		; 13 E8
	clc		; 18
	php		; 08
	asl $16.b,X		; 16 16
	bpl  16.b		; 10 10
	lda ($B1.b),Y		; B1 B1
	ldy #$90A0.w		; A0 A0 90
	bcc -125.b		; 90 83
	bra  15.b		; 80 0F
	php		; 08
	asl A		; 0A
	tsa		; 3B
	bpl  51.b		; 10 33
	php		; 08
	and $1C.b,S		; 23 1C
	adc [$3C.b]		; 67 3C
	adc [$14.b]		; 67 14
	lsr $38.b		; 46 38
	lsr $CE38.w		; 4E 38 CE
	ora $11.b,X		; 15 11
	ora $031F03.l		; 0F 03 1F 03
	dec A		; 3A
	jsl $38021A.l		; 22 1A 02 38
	brk $34.b		; 00 34
	tsb $74.b		; 04 74
	mvp $10,$FC		; 44 FC 10
	ldy $BC50.w,X		; BC 50 BC
	pha		; 48
	plx		; FA
	tsb $081E.w		; 0C 1E 08
	asl $0F04.w,X		; 1E 04 0F
	asl $07.b		; 06 07
	brk $78.b		; 00 78
	pla		; 68
	cli		; 58
	php		; 08
	cli		; 58
	bpl  28.b		; 10 1C
	bpl  12.b		; 10 0C
	tsb $0C.b		; 04 0C
	php		; 08
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	dec A		; 3A
	trb $7C.b		; 14 7C
	bpl 116.b		; 10 74
	clc		; 18
	stz $28.b,X		; 74 28
	stz $28.b,X		; 74 28
	sed		; F8
	jsr $70E8.w		; 20 E8 70
	inx		; E8
	bvs  28.b		; 70 1C
	php		; 08
	sec		; 38
	plp		; 28
	sec		; 38
	jsr $1038.w		; 20 38 10
	sec		; 38
	bpl 112.b		; 10 70
	bvc 112.b		; 50 70
	brk $70.b		; 00 70
	brk $34.b		; 00 34
	ror $10.b		; 66 10
	lsr $38.b		; 46 38
	lsr $CC68.w		; 4E 68 CC
	jsr $D08C.w		; 20 8C D0
	trb $48F0.w		; 1C F0 48
	inx		; E8
	bvs  24.b		; 70 18
	brk $3C.b		; 00 3C
	tsb $34.b		; 04 34
	tsb $30.b		; 04 30
	brk $78.b		; 00 78
	php		; 08
	plp		; 28
	php		; 08
	rti		; 40

	brk $70.b		; 00 70
	brk $00.b		; 00 00
	cpy #$8000.w		; C0 00 80
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
	lsr $3B.b		; 46 3B
	lsr $3B.b		; 46 3B
	rol $1B.b		; 26 1B
	ora [$0A.b],Y		; 17 0A
	ora ($0C.b,S),Y		; 13 0C
	ora ($0E.b),Y		; 11 0E
	jsl $38C71C.l		; 22 1C C7 38
	ora ($10.b,S),Y		; 13 10
	ora ($10.b,S),Y		; 13 10
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $3920.w		; 20 20 39
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	cop $07.b		; 02 07
	brk $08.b		; 00 08
	ora $19.b,S		; 03 19
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $07.b		; 00 07
	ora [$06.b]		; 07 06
	asl $0600.w		; 0E 00 06
	rol $3007.w		; 2E 07 30
	ora $090718.l		; 0F 18 07 09
	asl $11.b		; 06 11
	asl $0F10.w		; 0E 10 0F
	pld		; 2B
	trb $1D23.w		; 1C 23 1D
	ora ($01.b,X)		; 01 01
	asl $000E.w		; 0E 0E 00
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $0D.b		; 04 0D
	tsb $1111.w		; 0C 11 11
	ora $4618.w,Y		; 19 18 46
	bcc -67.b		; 90 BD
	and ($B2.b,X)		; 21 B2
	and $9C.b,S		; 23 9C
	and [$CD.b],Y		; 37 CD
	phy		; 5A
	lda $24.b,S		; A3 24
	sta $5A.b,X		; 95 5A
	ldy $63.b		; A4 63
	ora $600E20.l		; 0F 20 0E 60
	and $1261.w		; 2D 61 12
	adc ($00.b)		; 72 00
	sei		; 78
	jsr $027C.w		; 20 7C 02
	ply		; 7A
	ora $7B.b,S		; 03 7B
	brk $00.b		; 00 00
	asl $0501.w		; 0E 01 05
	php		; 08
	ora $08.b		; 05 08
	ora $08.b		; 05 08
	ora $08.b		; 05 08
	asl $2301.w,X		; 1E 01 23
	tsb $0300.w		; 0C 00 03
	brk $01.b		; 00 01
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	brk $01.b		; 00 01
	trb $0F1C.w		; 1C 1C 0F
	adc $7FFF7F.l,X		; 7F 7F FF 7F
	sbc $7FFF7F.l,X		; FF 7F FF 7F
	sbc $1FFF7F.l,X		; FF 7F FF 1F
	ora $0FE727.l,X		; 1F 27 E7 0F
	cmp $3FFF3F.l		; CF 3F FF 3F
	sbc $3FFF3F.l,X		; FF 3F FF 3F
	sbc $07FF1F.l,X		; FF 1F FF 07
	sbc $F0FF02.l,X		; FF 02 FF F0
	bra -72.b		; 80 B8
	rti		; 40

	sbc $2EDF10.l,X		; FF 10 DF 2E
	sbc $EB76D8.l		; EF D8 76 EB
	lda $F671.w,Y		; B9 71 F6
	bra -96.b		; 80 A0
	ldy #$3070.w		; A0 70 30
	clv		; B8
	tay		; A8
	sbc $24FCD1.l,X		; FF D1 FC 24
	sed		; F8
	bpl -10.b		; 10 F6
	bra -49.b		; 80 CF
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	sta $03.b,S		; 83 03
	adc [$87.b],Y		; 77 87
	ora [$F7.b]		; 07 F7
	cmp [$37.b]		; C7 37
	ora $EFEFEF.l		; 0F EF EF EF
	asl $01EF.w		; 0E EF 01
	ora [$01.b]		; 07 01
	ora [$03.b]		; 07 03
	ora $067F72.l		; 0F 72 7F 06
	ora $067F66.l		; 0F 66 7F 06
	ora $41FFEC.l,X		; 1F EC FF 41
	bra -127.b		; 80 81
	brk $81.b		; 00 81
	brk $81.b		; 00 81
	brk $C1.b		; 00 C1
	brk $A1.b		; 00 A1
	rti		; 40

	sta ($60.b),Y		; 91 60
	cmp $800020.l,X		; DF 20 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	phd		; 0B
	and $180A.w,Y		; 39 0A 18
	ora [$1E.b]		; 07 1E
	tsb $1E.b		; 04 1E
	tsb $0F.b		; 04 0F
	ora #$0F06.w		; 09 06 0F
	ora ($0E.b,X)		; 01 0E
	asl $16.b		; 06 16
	bpl   7.b		; 10 07
	brk $09.b		; 00 09
	php		; 08
	phd		; 0B
	asl A		; 0A
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	ora ($01.b,X)		; 01 01
	brk $07.b		; 00 07
	stx $24.b,Y		; 96 24
	stx $6F44.w		; 8E 44 6F
	jsr $33D4.w		; 20 D4 33
	lda $B80D.w,X		; BD 0D B8
	sta [$5F.b]		; 87 5F
	rti		; 40

	stz $51C0.w		; 9C C0 51
	tsb $447D.w		; 0C 7D 44
	sta $23AF00.l,X		; 9F 00 AF 23
	cop $40.b		; 02 40
	sta ($D2.b)		; 92 D2
	clc		; 18
	sed		; F8
	sta $E0.b,S		; 83 E0
	cmp $89FFBC.l,X		; DF BC FF 89
	jsr ($C9C4.w,X)		; FC C4 C9
	sec		; 38
	bit $DC.b		; 24 DC
	adc $9F.b,S		; 63 9F
	clv		; B8
	eor $FE3F4C.l,X		; 5F 4C 3F FE
	.db $42, $D8		; 42 D8
	bvc -61.b		; 50 C3
	brk $17.b		; 00 17
	bpl -53.b		; 10 CB
	php		; 08
	pei ($54.b)		; D4 54
	eor $03.b,S		; 43 03
	bpl  16.b		; 10 10
	ora $1F.b,S		; 03 1F
	ora ($0F.b,X)		; 01 0F
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $020C.w		; 0C 0C 02
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $17.b		; 00 17
	beq -117.b		; F0 8B
	sed		; F8
	sbc $FC.b		; E5 FC
	dec A		; 3A
	inc $FF0D.w,X		; FE 0D FF
	ora $3F.b,S		; 03 3F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	adc $101760.l		; 6F 60 17 10
	ora $00.b,S		; 03 00
	cmp ($C0.b,X)		; C1 C0
	and ($32.b)		; 32 32
	tsb $030C.w		; 0C 0C 03
	ora $00.b,S		; 03 00
	brk $5E.b		; 00 5E
	adc ($A6.b,S),Y		; 73 A6
	and ($CA.b,S),Y		; 33 CA
	tas		; 1B
	ldy $3F.b		; A4 3F
	rts		; 60

	adc $00FEC0.l,X		; 7F C0 FE 00
	jsr ($E000.w,X)		; FC 00 E0
	sty $CC00.w		; 8C 00 CC
	brk $E4.b		; 00 E4
	brk $D2.b		; 00 D2
	ora ($96.b)		; 12 96
	asl $34.b,X		; 16 34
	bit $E0.b,X		; 34 E0
	cpx #$0000.w		; E0 00 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	php		; 08
	tsb $10.b		; 04 10
	php		; 08
	jsr $2018.w		; 20 18 20
	clc		; 18
	sec		; 38
	asl $172C.w		; 0E 2C 17
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	and $0E1116.l		; 2F 16 11 0E
	ora ($0E.b),Y		; 11 0E
	jsl $305C1C.l		; 22 1C 5C 30
	jmp ($9230.w)		; 6C 30 92
	jmp ($6E91.w)		; 6C 91 6E
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	jsr $0020.w		; 20 20 00
	brk $60.b		; 00 60
	rts		; 60

	rts		; 60

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
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	ora $3A3B1E.l,X		; 1F 1E 3B 3A
	and $3E3A.w,Y		; 39 3A 3E
	bit $3C1E.w,X		; 3C 1E 3C
	asl $0A1C.w		; 0E 1C 0A
	trb $1E00.w		; 1C 00 1E
	clc		; 18
	rol $7E38.w,X		; 3E 38 7E
	plp		; 28
	ror $7C08.w,X		; 7E 08 7C
	tsb $7C.b		; 04 7C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	adc $02.b		; 65 02
	and $001F00.l,X		; 3F 00 1F 00
	asl $0E01.w		; 0E 01 0E
	ora ($16.b,X)		; 01 16
	ora #$0817.w		; 09 17 08
	ora $0A.b,X		; 15 0A
	inc A		; 1A
	sec		; 38
	cop $1A.b		; 02 1A
	cop $0A.b		; 02 0A
	ora $04.b		; 05 04
	ora $04.b		; 05 04
	ora $0D04.w		; 0D 04 0D
	ora $0B.b		; 05 0B
	ora ($FA.b,X)		; 01 FA
	inc A		; 1A
	cmp $DF25.w,X		; DD 25 DF
	jsl $B61CF7.l		; 22 F7 1C B6
	stp		; DB
	tyx		; BB
	inc $BB.b,X		; F6 BB
	sbc [$BD.b],Y		; F7 BD
	stp		; DB
	clc		; 18
	ora $B287A5.l,X		; 1F A5 87 B2
	sta ($BD.b)		; 92 BD
	lda ($FF.b,X)		; A1 FF
	bit $FF.b		; 24 FF
	ora #$08FF.w		; 09 FF 08
	sbc $38CB24.l,X		; FF 24 CB 38
	and $3C.b		; 25 3C
	sbc ($1E.b)		; F2 1E
	sed		; F8
	asl $07FD.w		; 0E FD 07
	rol $9F03.w,X		; 3E 03 9F
	sta ($6F.b,X)		; 81 6F
	cpx #$1017.w		; E0 17 10
	wai		; CB
	php		; 08
	sbc $04.b		; E5 04
	sbc ($02.b,S),Y		; F3 02
	sed		; F8
	brk $FC.b		; 00 FC
	brk $7E.b		; 00 7E
	brk $9F.b		; 00 9F
	bra  64.b		; 80 40
	rts		; 60

	bra  32.b		; 80 20
	cpx #$F030.w		; E0 30 F0
	clc		; 18
	pla		; 68
	tsb $84B0.w		; 0C B0 84
	jmp $E2A8C6.l		; 5C C6 A8 E2
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $1F.b		; 00 1F
	dec $C23F.w,X		; DE 3F C2
	eor $0CF3AC.l,X		; 5F AC F3 0C
	eor $423F2C.l,X		; 5F 2C 3F 42
	ora $30.b,X		; 15 30
	ora [$30.b]		; 07 30
	cpy $00FE.w		; CC FE 00
	cop $3C.b		; 02 3C
	bpl  14.b		; 10 0E
	cop $3C.b		; 02 3C
	bpl   0.b		; 10 00
	brk $0E.b		; 00 0E
	brk $1E.b		; 00 1E
	bpl -31.b		; 10 E1
	lsr $59BF.w,X		; 5E BF 59
	jmp ($89BF.w)		; 6C BF 89
	inc $FC03.w,X		; FE 03 FC
	ora $57F2.w		; 0D F2 57
	lda #$D33A.w		; A9 3A D3
	cld		; D8
	clc		; 18
	ldx $80.b		; A6 80
	eor ($12.b)		; 52 12
	stz $64.b		; 64 64
	bne -48.b		; D0 D0
	.db $82, $82, $08		; 82 82 08
	php		; 08
	brk $06.b		; 00 06
	ora $1001.w,X		; 1D 01 10
	asl A		; 0A
	trb $1D01.w		; 1C 01 1D
	phd		; 0B
	tas		; 1B
	ora $081E.w		; 0D 1E 08
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $08.b,S		; 03 08
	ora [$08.b]		; 07 08
	phd		; 0B
	php		; 08
	ora $0C.b,S		; 03 0C
	ora ($08.b,X)		; 01 08
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $13.b		; 00 13
	ldy #$605D.w		; A0 5D 60
	sbc #$EDF6.w		; E9 F6 ED
	beq -13.b		; F0 F3
	cpx #$D0ED.w		; E0 ED D0
	eor ($E2.b,X)		; 41 E2
	and $0C73.w		; 2D 73 0C
	jmp.w [$DE02]		; DC 02 DE
	ror $EE.b		; 66 EE
.ACCU 8
	sep #$EE		; E2 EE
	jmp ($12EC.w)		; 6C EC 12
	cmp ($1E.b)		; D2 1E
	dec $ED00.w,X		; DE 00 ED
	asl $340E.w		; 0E 0E 34
	rol $22.b,X		; 36 22
	jsl $1E3E36.l		; 22 36 3E 1E
	asl $0E10.w,X		; 1E 10 0E
	ora ($0E.b)		; 12 0E
	asl $0C06.w		; 0E 06 0C
	and $007F10.l,X		; 3F 10 7F 00
	adc $0C7F14.l,X		; 7F 14 7F 0C
	and $000F00.l,X		; 3F 00 0F 00
	ora $070702.l		; 0F 02 07 07
	cop $06.b		; 02 06
	ora ($0D.b,X)		; 01 0D
	cop $0A.b		; 02 0A
	tsb $0C.b		; 04 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	cop $06.b		; 02 06
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra  96.b		; 80 60
	rti		; 40

	rts		; 60

	rti		; 40

	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	sbc $20DF00.l,X		; FF 00 DF 20
	adc [$18.b]		; 67 18
	sbc $C326.w,Y		; F9 26 C3
	ldy $41BE.w,X		; BC BE 41
	eor ($80.b,X)		; 41 80
	bra   0.b		; 80 00
	phd		; 0B
	phd		; 0B
	and $03.b,S		; 23 03
	clc		; 18
	brk $3E.b		; 00 3E
	clc		; 18
	sbc $80C143.l,X		; FF 43 C1 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cpy #$C0C0.w		; C0 C0 C0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$F0E0.w		; E0 E0 F0
	bvs -16.b		; 70 F0
	bvs -128.b		; 70 80
	rti		; 40

	cpx #$F040.w		; E0 40 F0
	rti		; 40

	beq  64.b		; F0 40
	beq  64.b		; F0 40
	beq  96.b		; F0 60
	sed		; F8
	jsr $00F8.w		; 20 F8 00
	dey		; 88
	clv		; B8
	bvc  60.b		; 50 3C
	iny		; C8
	trb $8CE0.w		; 1C E0 8C
	bvs  72.b		; 70 48
	ldy $D8.b,X		; B4 D8
	ldy $CCA8.w		; AC A8 CC
	cpx #$108C.w		; E0 8C 10
	brk $88.b		; 00 88
	bra  40.b		; 80 28
	plp		; 28
	jsr $8020.w		; 20 20 80
	bra   0.b		; 80 00
	brk $50.b		; 00 50
	rti		; 40

	sec		; 38
	php		; 08
	rts		; 60

	sty $D890.w		; 8C 90 D8
	jsr $B858.w		; 20 58 B8
	cpx #$9070.w		; E0 70 90
	sed		; F8
	jsr $00E8.w		; 20 E8 00
	cld		; D8
	brk $B8.b		; 00 B8
	dey		; 88
	jsr $9000.w		; 20 00 90
	bpl  32.b		; 10 20
	jsr $1800.w		; 20 00 18
	bra -96.b		; 80 A0
	bne -48.b		; D0 D0
	jsr $F030.w		; 20 30 F0
	php		; 08
	tya		; 98
	cpx #$00C8.w		; E0 C8 00
	ldy $48.b,X		; B4 48
	sty $00.b		; 84 00
	jmp ($3880.w,X)		; 7C 80 38
	brk $90.b		; 00 90
	cpy #$3000.w		; C0 00 30
	ldy #$B0B0.w		; A0 B0 B0
	bcs   8.b		; B0 08
	php		; 08
	sei		; 78
	sei		; 78
	brk $B8.b		; 00 B8
	brk $D0.b		; 00 D0
	brk $E0.b		; 00 E0
	jsl $1E291D.l		; 22 1D 29 1E
	plp		; 28
	ora $181F25.l,X		; 1F 25 1F 18
	ora [$2E.b]		; 07 2E
	ora ($10.b,X)		; 01 10
	ora $18000F.l		; 0F 0F 00 18
	clc		; 18
	bpl  16.b		; 10 10
	tsb $04.b		; 04 04
	asl A		; 0A
	asl A		; 0A
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0B01.w,X		; 1E 01 0B
	bpl   9.b		; 10 09
	ora ($09.b)		; 12 09
	ora ($01.b)		; 12 01
	asl A		; 0A
	brk $0B.b		; 00 0B
	ora $180700.l		; 0F 00 07 18
	brk $01.b		; 00 01
	tsb $0C.b		; 04 0C
	asl $0E.b		; 06 0E
	asl $0E.b		; 06 0E
	asl $06.b		; 06 06
	asl $07.b		; 06 07
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	asl $7DE1.w,X		; 1E E1 7D
	inc $FF7E.w,X		; FE 7E FF
	ror $02FF.w,X		; 7E FF 02
	ora [$78.b]		; 07 78
	sbc $06FF.w,Y		; F9 FF 06
	adc $E10081.l,X		; 7F 81 00 E1
	brk $FE.b		; 00 FE
	bit $3CFF.w,X		; 3C FF 3C
	sbc $38FF00.l,X		; FF 00 FF 38
	sbc $A80604.l,X		; FF 04 06 A8
	and #$3F.b		; 29 3F
	cop $1F.b		; 02 1F
	asl $0F.b		; 06 0F
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $0F.b		; 00 0F
	ora $090F.w		; 0D 0F 09
	ora $01.b,S		; 03 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tda		; 7B
	lda $B97F.w,X		; BD 7F B9
	sbc $1CE300.l,X		; FF 00 E3 1C
	ora $FF.b,S		; 03 FF
	and [$EF.b]		; 27 EF
	jsl $E72BEE.l		; 22 EE 2B E7
	sbc $44FD42.l,X		; FF 42 FD 44
	adc ($61.b,X)		; 61 61
	tsb $EC0C.w		; 0C 0C EC
	cpx $C0D0.w		; EC D0 C0
	cmp $C4.b,X		; D5 C4
	cli		; 58
	rti		; 40

	ora $00.b,S		; 03 00
	tsb $03.b		; 04 03
	ora #$07.b		; 09 07
	php		; 08
	ora [$10.b]		; 07 10
	ora $120F10.l		; 0F 10 0F 12
	ora $000F12.l		; 0F 12 0F 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $07.b		; 02 07
	ora [$06.b]		; 07 06
	asl $0E.b		; 06 0E
	asl $0C0C.w		; 0E 0C 0C
	ora $05.b		; 05 05
	cpy #$2000.w		; C0 00 20
	cpy #$E090.w		; C0 90 E0
	bpl -32.b		; 10 E0
	bit $3FC0.w,X		; 3C C0 3F
	cpy $2E.b		; C4 2E
	cmp ($1C.b),Y		; D1 1C
	sbc $00.b,S		; E3 00
	brk $80.b		; 00 80
	bra  96.b		; 80 60
	rts		; 60

	jsr $0020.w		; 20 20 00
	brk $1C.b		; 00 1C
	bpl  29.b		; 10 1D
	ora $0303.w		; 0D 03 03
	tsb $03.b		; 04 03
	tsb $7203.w		; 0C 03 72
	ora $0EF1.w		; 0D F1 0E
	sbc $000700.l,X		; FF 00 07 00
	cop $0E.b		; 02 0E
	ora $010100.l,X		; 1F 00 01 01
	ora ($01.b,X)		; 01 01
	tsb $7E00.w		; 0C 00 7E
	bvs   7.b		; 70 07
	ora [$00.b]		; 07 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	sbc $08FF00.l,X		; FF 00 FF 08
	sbc [$07.b],Y		; F7 07
	sed		; F8
	cpy #$BF3F.w		; C0 3F BF
	cpy #$3A89.w		; C0 89 3A
	ror $9D7B.w		; 6E 7B 9D
	sta $CFCF.w,X		; 9D CF CF
	adc $63.b,S		; 63 63
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	cpx #$802E.w		; E0 2E 80
	phd		; 0B
	lda [$00.b]		; A7 00
	cpx #$6000.w		; E0 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	rti		; 40

	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bra -32.b		; 80 E0
	brk $9C.b		; 00 9C
	rts		; 60

	jmp.w [$FE28]		; DC 28 FE
	bra 126.b		; 80 7E
	beq -66.b		; F0 BE
	bvs -36.b		; 70 DC
	ldy #$8000.w		; A0 00 80
	brk $00.b		; 00 00
	rts		; 60

	brk $B8.b		; 00 B8
	bcc -56.b		; 90 C8
	pha		; 48
	beq   0.b		; F0 00
	beq -128.b		; F0 80
	beq  80.b		; F0 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $07FF00.l,X		; FF 00 FF 07
	adc $0F7000.l,X		; 7F 00 70 0F
	cmp $40B830.l		; CF 30 B8 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $0F0F78.l,X		; 7F 78 0F 0F
	and $407030.l,X		; 3F 30 70 40
	cpy #$A580.w		; C0 80 A5
	ror $365D.w		; 6E 5D 36
	and $1B1A.w		; 2D 1A 1B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	ror $3604.w,X		; 7E 04 36
	brk $1A.b		; 00 1A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs -64.b		; B0 C0
	cpy #$A030.w		; C0 30 A0
	bvs   0.b		; 70 00
	tya		; 98
	bcs -104.b		; B0 98
	jsr $3808.w		; 20 08 38
	tsb $0430.w		; 0C 30 04
	cpy #$A000.w		; C0 00 A0
	ldy #$4040.w		; A0 40 40
	beq -112.b		; F0 90
	rts		; 60

	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $98.b		; 00 98
	sty $9C.b		; 84 9C
	stx $48.b		; 86 48
.ACCU 16
	rep #$24		; C2 24
.INDEX 8
	sep #$14		; E2 14
	sbc ($F8.b,S),Y		; F3 F8
	ora $FC.b,S		; 03 FC
	sbc $78FE00.l,X		; FF 00 FE 78
	brk $78.b		; 00 78
	brk $BC.b		; 00 BC
	bra  92.b		; 80 5C
	rti		; 40

	ldx $FEA2.w		; AE A2 FE
	cop $02.b		; 02 02
	cop $FC.b		; 02 FC
	jsr ($630C.w,X)		; FC 0C 63
	tsb $0C63.w		; 0C 63 0C
	adc $0C.b,S		; 63 0C
	adc $00.b,S		; 63 00
	adc $2C.b,S		; 63 2C
	adc $50DE18.l		; 6F 18 DE 50
	dec $203C.w,X		; DE 3C 20
	rol $3E22.w,X		; 3E 22 3E
	jsl $3E223E.l		; 22 3E 22 3E
	jsl $640212.l		; 22 12 02 64
	mvp $0C,$2C		; 44 2C 0C
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
	eor $2A.b		; 45 2A
	eor [$00.b],Y		; 57 00
	tad		; 5B
	tsb $2F.b		; 04 2F
	brk $15.b		; 00 15
	asl A		; 0A
	and $112F11.l		; 2F 11 2F 11
	pld		; 2B
	ora $1A.b,X		; 15 1A
	clc		; 18
	rol A		; 2A
	dec A		; 3A
	and $31.b		; 25 31
	ora $15.b,X		; 15 15
	phd		; 0B
	ora ($1B.b,X)		; 01 1B
	asl A		; 0A
	tas		; 1B
	asl A		; 0A
	ora [$02.b],Y		; 17 02
	sbc $72AD10.l		; EF 10 AD 72
	lda $EA.b,X		; B5 EA
	ldx $F9.b,Y		; B6 F9
	ldx $DB.b,Y		; B6 DB
	tyx		; BB
	dec $BB.b,X		; D6 BB
	cmp $DBBD.w,X		; DD BD DB
	tsx		; BA
	tax		; AA
	sbc $15FF8D.l,X		; FF 8D FF 15
	sbc $24FF06.l,X		; FF 06 FF 24
	sbc $22FF29.l,X		; FF 29 FF 22
	sbc $000024.l,X		; FF 24 00 00
	and $01FE00.l,X		; 3F 00 FE 01
	sed		; F8
	sbc [$FF.b],Y		; F7 FF
	ora [$08.b]		; 07 08
	sbc [$F8.b],Y		; F7 F8
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	sec		; 38
	sbc [$07.b],Y		; F7 07
	beq -16.b		; F0 F0
	sbc [$07.b],Y		; F7 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and #$2CE7.w		; 29 E7 2C
	sbc $00.b,S		; E3 00
	sbc ($00.b),Y		; F1 00
	sbc $798F8E.l,X		; FF 8E 8F 79
	cpx #$03.b		; E0 03
	sbc $5A7F00.l,X		; FF 00 7F 5A
	.db $42, $5D		; 42 5D
	eor ($1E.b,X)		; 41 1E
	bpl -16.b		; 10 F0
	beq 113.b		; F0 71
	ora ($9F.b,X)		; 01 9F
	bra  60.b		; 80 3C
	bit $0303.w,X		; 3C 03 03
	ora ($0F.b)		; 12 0F
	and #$3107.w		; 29 07 31
	ora $201F20.l		; 0F 20 1F 20
	ora $080718.l,X		; 1F 18 07 08
	ora [$04.b]		; 07 04
	ora $05.b,S		; 03 05
	ora $06.b		; 05 06
	asl $06.b		; 06 06
	asl $07.b		; 06 07
	ora [$1B.b]		; 07 1B
	tas		; 1B
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $09E7.w,Y		; 19 E7 09
	sbc [$84.b],Y		; F7 84
	xce		; FB
	adc ($FD.b)		; 72 FD
	dec A		; 3A
	sbc $FE1D.w,X		; FD 1D FE
	ora $0CFE.w		; 0D FE 0C
	sbc $E28282.l,X		; FF 82 82 E2
.ACCU 8
.INDEX 8
	sep #$71		; E2 71
	adc ($89.b),Y		; 71 89
	bit #$C4.b		; 89 C4
	cpy $E0.b		; C4 E0
	cpx #$72.b		; E0 72
	adc ($32.b)		; 72 32
	and ($2F.b)		; 32 2F
	bpl  57.b		; 10 39
	asl $77.b,X		; 16 77
	and $772F7F.l		; 2F 7F 2F 77
	ora $0F0733.l		; 0F 33 07 0F
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	php		; 08
	bpl   6.b		; 10 06
	jsr $270F.w		; 20 0F 27
	ora $002F27.l		; 0F 27 2F 00
	ora $000000.l		; 0F 00 00 00
	brk $87.b		; 00 87
	xce		; FB
	sta $8F1F77.l		; 8F 77 1F 8F
	cmp [$E7.b]		; C7 E7
	beq  -8.b		; F0 F8
	sbc $FF3FFF.l,X		; FF FF 3F FF
	inc $6301.w,X		; FE 01 63
	rtl		; 6B

	eor $57.b,S		; 43 57
	ora $EF.b,S		; 03 EF
	bra  -1.b		; 80 FF
	cpx #$FF.b		; E0 FF
	sbc $FF03FF.l,X		; FF FF 03 FF
	brk $01.b		; 00 01
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	bcc -32.b		; 90 E0
	sec		; 38
	cpy #$C8.b		; C0 C8
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
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpy #$60.b		; C0 60
	cpx #$F0.b		; E0 F0
	sed		; F8
	jsr ($7F87.w,X)		; FC 87 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  32.b		; 80 20
	brk $70.b		; 00 70
	cpy #$FC.b		; C0 FC
	bmi  -1.b		; 30 FF
	ora $7F.b,S		; 03 7F
	clc		; 18
	eor $384E18.l		; 4F 18 4E 38
	dec $CE38.w		; CE 38 CE
	pla		; 68
	cpy $CC68.w		; CC 68 CC
	rts		; 60

	cpy $8C20.w		; CC 20 8C
	rol $06.b,X		; 36 06
	bit $04.b,X		; 34 04
	stz $44.b,X		; 74 44
	stz $44.b,X		; 74 44
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	sec		; 38
	php		; 08
	sei		; 78
	php		; 08
	bpl  70.b		; 10 46
	bpl  68.b		; 10 44
	bpl  68.b		; 10 44
	bpl  68.b		; 10 44
	clc		; 18
	jmp $4C08.w		; 4C 08 4C
	rts		; 60

	tsb $24F8.w		; 0C F8 24
	bit $3804.w,X		; 3C 04 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	php		; 08
	rts		; 60

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx $00.b		; E4 00
	inc A		; 1A
	cpx $CD.b		; E4 CD
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bmi  48.b		; 30 30
	tya		; 98
	sbc $2DFB14.l,X		; FF 14 FB 2D
	cmp ($7F.b)		; D2 7F
	sty $66B9.w		; 8C B9 66
	tax		; AA
	eor ($9A.b),Y		; 51 9A
	ora [$D0.b],Y		; 17 D0
	phk		; 4B
	ror $66.b		; 66 66
	dex		; CA
	dex		; CA
	bcc -112.b		; 90 90
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	eor $51.b		; 45 51
	eor $35.b,X		; 55 35
	rol $690A.w		; 2E 0A 69
	stz $FC02.w,X		; 9E 02 FC
	tsb $F6F0.w		; 0C F0 F6
	php		; 08
	php		; 08
	beq -16.b		; F0 F0
	brk $E0.b		; 00 E0
	rti		; 40

	bne   0.b		; D0 00
	trb $14.b		; 14 14
	sed		; F8
	sed		; F8
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	jsr $DE20.w		; 20 20 DE
	bra -33.b		; 80 DF
	bra -39.b		; 80 D9
	bra  -7.b		; 80 F9
	asl $75.b		; 06 75
	sed		; F8
	sbc $AEF8.w		; ED F8 AE
	lda #$E7.b		; A9 E7
	pla		; 68
	jsr $A0B0.w		; 20 B0 A0
	ldx $A6.b,Y		; B6 A6
	ldx $06.b,Y		; B6 06
	asl $12.b		; 06 12
	plx		; FA
.ACCU 8
.INDEX 8
	sep #$FA		; E2 FA
	ldy #$F9.b		; A0 F9
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	bvc -32.b		; 50 E0
	bne  96.b		; D0 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	rti		; 40

	rts		; 60

	and $182E1C.l		; 2F 1C 2E 18
	rol $3E18.w		; 2E 18 3E
	php		; 08
	rol $3E08.w,X		; 3E 08 3E
	php		; 08
	ror $6E18.w		; 6E 18 6E
	clc		; 18
	asl $1C02.w,X		; 1E 02 1C
	tsb $1C.b		; 04 1C
	tsb $1C.b		; 04 1C
	trb $1C.b		; 14 1C
	trb $1C.b		; 14 1C
	trb $1C.b		; 14 1C
	tsb $1C.b		; 04 1C
	tsb $6E.b		; 04 6E
	trb $7E.b		; 14 7E
	tsb $1F.b		; 04 1F
	tsb $17.b		; 04 17
	asl A		; 0A
	phd		; 0B
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	php		; 08
	tsb $0E08.w		; 0C 08 0E
	asl A		; 0A
	asl $0704.w		; 0E 04 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0C.b		; 00 0C
	ora $1B.b,S		; 03 1B
	tsb $16.b		; 04 16
	php		; 08
	trb $08.b		; 14 08
	clc		; 18
	brk $07.b		; 00 07
	ora [$00.b]		; 07 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	tsb $0C.b		; 04 0C
	php		; 08
	php		; 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	asl $1B.b		; 06 1B
	ora [$1B.b],Y		; 17 1B
	ora $390F19.l		; 0F 19 0F 39
	ora [$35.b],Y		; 17 35
	phd		; 0B
	adc $1B.b		; 65 1B
	jmp $0133.w		; 4C 33 01
	bpl   0.b		; 10 00
	bmi   8.b		; 30 08
	jsr $220A.w		; 20 0A 22
	ora ($02.b)		; 12 02
	php		; 08
	brk $18.b		; 00 18
	brk $31.b		; 00 31
	ora ($6B.b,X)		; 01 6B
	dec A		; 3A
	asl $3F15.w		; 0E 15 3F
	bpl  43.b		; 10 2B
	tsb $8F.b		; 04 8F
	bra -97.b		; 80 9F
	sta ($87.b),Y		; 91 87
	sta $F9E7.w,Y		; 99 E7 F9
	rep #$0E		; C2 0E
	sbc $14.b,X		; F5 14
	sep #$02		; E2 02
	inc $02.b,X		; F6 02
	adc ($01.b),Y		; 71 01
	adc [$06.b]		; 67 06
	adc ($12.b,S),Y		; 73 12
	ora $0A.b,S		; 03 0A
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $021F06.l		; 0F 06 1F 02
	ora $021F02.l,X		; 1F 02 1F 02
	and $0D3202.l,X		; 3F 02 32 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $0E0C.w		; 0E 0C 0E
	tsb $0C0E.w		; 0C 0E 0C
	asl $0C0C.w		; 0E 0C 0C
	brk $E0.b		; 00 E0
	brk $12.b		; 00 12
	cpx #$09.b		; E0 09
	beq 105.b		; F0 69
	beq  54.b		; F0 36
	sbc $8F78.w,Y		; F9 78 8F
	cmp $07F824.l,X		; DF 24 F8 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$E0.b		; E0 E0
	bcc -112.b		; 90 90
	iny		; C8
	iny		; C8
	asl $06.b		; 06 06
	bvs  64.b		; 70 40
	asl $06.b		; 06 06
	sbc $FB22.w,X		; FD 22 FB
	ror $7A.b		; 66 7A
	ldx $70.b		; A6 70
	dec $CB40.w		; CE 40 CB
	bpl -119.b		; 10 89
	ora ($88.b),Y		; 11 88
	ora [$88.b],Y		; 17 88
	bvs  82.b		; 70 52
	adc ($12.b)		; 72 12
	and ($10.b),Y		; 31 10
	ora $02.b,S		; 03 02
	and ($01.b),Y		; 31 01
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	eor ($ED.b)		; 52 ED
	tyx		; BB
	ldx $0EE9.w		; AE E9 0E
	cop $EC.b		; 02 EC
	tsb $58.b		; 04 58
	ora $ACBFF0.l		; 0F F0 BF AC
	lda $A80019.l,X		; BF 19 00 A8
	pha		; 48
	tay		; A8
	sbc ($02.b)		; F2 02
	sed		; F8
	inx		; E8
	beq  80.b		; F0 50
	cpx #$E0.b		; E0 E0
	lsr $5D02.w		; 4E 02 5D
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $0F.b		; 00 0F
	brk $F0.b		; 00 F0
	ora $00FFC0.l		; 0F C0 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $003030.l		; 0F 30 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	bra -112.b		; 80 90
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	tsb $14F3.w		; 0C F3 14
	sbc $E4.b,S		; E3 E4
	ora $05.b,S		; 03 05
	cop $C5.b		; 02 C5
	cop $F3.b		; 02 F3
	cpy #$31.b		; C0 31
	bcs  64.b		; B0 40
	jmp $0303.w		; 4C 03 03
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	jsr $40F8.w		; 20 F8 40
	beq -56.b		; F0 C8
	beq  16.b		; F0 10
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $8080.w		; 20 80 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $1CC6.w		; 1C C6 1C
	dec $1C.b		; C6 1C
	dec $1C.b		; C6 1C
	lsr $20.b		; 46 20
	ror $38.b		; 66 38
	ror $7E38.w,X		; 7E 38 7E
	plp		; 28
	ror $4078.w		; 6E 78 40
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $14.b		; 04 14
	tsb $28.b		; 04 28
	adc $346724.l		; 6F 24 67 34
	adc [$34.b]		; 67 34
	adc [$34.b]		; 67 34
	adc [$34.b]		; 67 34
	adc [$34.b]		; 67 34
	adc [$30.b]		; 67 30
	ror $16.b		; 66 16
	asl $1A.b		; 06 1A
	cop $1A.b		; 02 1A
	cop $1A.b		; 02 1A
	cop $1A.b		; 02 1A
	cop $1A.b		; 02 1A
	cop $1A.b		; 02 1A
	cop $1C.b		; 02 1C
	tsb $30.b		; 04 30
	ror $30.b		; 66 30
	ror $30.b		; 66 30
	ror $38.b		; 66 38
	ror $6C38.w		; 6E 38 6C
	php		; 08
	jmp $4C08.w		; 4C 08 4C
	brk $4C.b		; 00 4C
	trb $1C04.w		; 1C 04 1C
	tsb $1C.b		; 04 1C
	tsb $14.b		; 04 14
	tsb $10.b		; 04 10
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	php		; 08
	stz $38.b,X		; 74 38
	jmp ($7C00.w,X)		; 7C 00 7C
	sec		; 38
	jmp ($7410.w,X)		; 7C 10 74
	clc		; 18
	stz $18.b,X		; 74 18
	stz $18.b,X		; 74 18
	mvn $00,$38		; 54 38 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	plp		; 28
	sec		; 38
	jsr $2038.w		; 20 38 20
	sec		; 38
	jsr $0038.w		; 20 38 00
	mvn $54,$38		; 54 38 54
	sec		; 38
	mvn $B4,$38		; 54 38 B4
	cli		; 58
	ldy $58.b,X		; B4 58
	clv		; B8
	bvc -24.b		; 50 E8
	bvs -16.b		; 70 F0
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	jsr $2078.w		; 20 78 20
	bvs  32.b		; 70 20
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	rol $09.b,X		; 36 09
	ora ($0C.b,S),Y		; 13 0C
	ora ($0C.b,S),Y		; 13 0C
	asl $0201.w,X		; 1E 01 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	sed		; F8
	tas		; 1B
	jsr ($7CBB.w,X)		; FC BB 7C
	cpy #$3F.b		; C0 3F
	adc [$9F.b]		; 67 9F
	inx		; E8
	clc		; 18
	rtl		; 6B

	clc		; 18
	phd		; 0B
	clc		; 18
	sbc $EB.b,S		; E3 EB
	brk $1C.b		; 00 1C
	brk $78.b		; 00 78
	ora [$37.b]		; 07 37
	dey		; 88
	php		; 08
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	and $0B3C10.l		; 2F 10 3C 0B
	bit $5D03.w,X		; 3C 03 5D
	jsl $760A75.l		; 22 75 0A 76
	and #$BE.b		; 29 BE
	adc ($BB.b,X)		; 61 BB
	stz $10.b		; 64 10
	brk $19.b		; 00 19
	ora ($1B.b),Y		; 11 1B
	tas		; 1B
	jsl $303802.l		; 22 02 38 30
	and $7111.w,Y		; 39 11 71
	ora ($74.b),Y		; 11 74
	trb $0C.b		; 14 0C
	sbc ($FA.b,S),Y		; F3 FA
	sbc $FE6D.w,X		; FD 6D FE
	bit $FF.b		; 24 FF
	sta ($6F.b)		; 92 6F
	cld		; D8
	lda [$74.b]		; A7 74
	phk		; 4B
	asl $AD.b,X		; 16 AD
	adc $63.b,S		; 63 63
	tsb $04.b		; 04 04
	bcc -112.b		; 90 90
	lsr A		; 4A
	lsr A		; 4A
	adc $65.b		; 65 65
	and $23.b,S		; 23 23
	bit #$09.b		; 89 09
	rti		; 40

	brk $17.b		; 00 17
	phb		; 8B
	ora ($8C.b,S),Y		; 13 8C
	lsr A		; 4A
	cpy $CC4B.w		; CC 4B CC
	ora #$CC.b		; 09 CC
	asl A		; 0A
	cmp $ED2A.w		; CD 2A ED
	tsa		; 3B
	jsr ($0073.w,X)		; FC 73 00
	sei		; 78
	php		; 08
	and ($03.b),Y		; 31 03
	bmi   2.b		; 30 02
	adc ($42.b)		; 72 42
	adc ($41.b),Y		; 71 41
	eor ($41.b),Y		; 51 41
	rti		; 40

	rti		; 40

	sbc $00D041.l,X		; FF 41 D0 00
	ldx $1E.b,Y		; B6 1E
	dex		; CA
	stz $9BCB.w,X		; 9E CB 9B
	plb		; AB
	phk		; 4B
	sta $CF43.w,Y		; 99 43 CF
	bra  16.b		; 80 10
	ora ($20.b),Y		; 11 20
	and $8A5F46.l		; 2F 46 5F 8A
	lda $423F82.l,X		; BF 82 3F 42
	eor $306760.l,X		; 5F 60 67 30
	clv		; B8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra 127.b		; 80 7F
	bra 127.b		; 80 7F
	sta ($7F.b,X)		; 81 7F
	bra 127.b		; 80 7F
	sta ($7E.b,X)		; 81 7E
	.db $82, $7D, $E0		; 82 7D E0
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $03.b		; 06 03
	ora $00.b,S		; 03 00
	brk $01.b		; 00 01
	ora ($48.b,X)		; 01 48
	beq  40.b		; F0 28
	beq  56.b		; F0 38
	beq  88.b		; F0 58
	beq -104.b		; F0 98
	beq  24.b		; F0 18
	beq  56.b		; F0 38
	beq 104.b		; F0 68
	beq  32.b		; F0 20
	jsr $5050.w		; 20 50 50
	rti		; 40

	rti		; 40

	ldy #$A0.b		; A0 A0
	rts		; 60

	rts		; 60

	ldy #$A0.b		; A0 A0
	rti		; 40

	rti		; 40

	bcc -112.b		; 90 90
	sty $A7.b,X		; 94 A7
	plb		; AB
	ldy #$10.b		; A0 10
	lda ($07.b,S),Y		; B3 07
	ora $FFFFFF.l		; 0F FF FF FF
	sbc $BF3FCF.l,X		; FF CF 3F BF
	brk $38.b		; 00 38
	cpx #$1C.b		; E0 1C
	cpy #$20.b		; C0 20
	sbc $7FFF01.l		; EF 01 FF 7F
	sbc $00FF7F.l,X		; FF 7F FF 00
	and $000000.l,X		; 3F 00 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	ldy #$A0.b		; A0 A0
	cpy #$E0.b		; C0 E0
	cpy #$A0.b		; C0 A0
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $A8.b		; 00 A8
	bvc -24.b		; 50 E8
	trb $7C.b		; 14 7C
	bra -36.b		; 80 DC
	ldx #$BD.b		; A2 BD
	cpy #$BE.b		; C0 BE
	bne -66.b		; D0 BE
	bvs 125.b		; 70 7D
	lda ($50.b)		; B2 50
	brk $50.b		; 00 50
	rti		; 40

	bne  80.b		; D0 50
	beq  80.b		; F0 50
	sbc ($32.b)		; F2 32
	pea $F424.w		; F4 24 F4
	sty $F6.b		; 84 F6
	mvp $32,$FD		; 44 FD 32
	sbc $7D72.w,X		; FD 72 7D
	lda ($FF.b)		; B2 FF
	bpl -72.b		; 10 B8
	cpy #$40.b		; C0 40
	bvs -64.b		; 70 C0
	bvs -64.b		; 70 C0
	bvs 118.b		; 70 76
	mvp $84,$F6		; 44 F6 84
	inc $44.b,X		; F6 44
	bmi  32.b		; 30 20
	rti		; 40

	rti		; 40

	ldy #$20.b		; A0 20
	ldy #$20.b		; A0 20
	ldy #$20.b		; A0 20
	ora ($7D.b,S),Y		; 13 7D
	ora ($7F.b,X)		; 01 7F
	ora $7F.b		; 05 7F
	trb $1A7F.w		; 1C 7F 1A
	tda		; 7B
	bpl 113.b		; 10 71
	bpl 113.b		; 10 71
	ora ($71.b)		; 12 71
	bit $3C2D.w		; 2C 2D 3C
	and $3938.w,X		; 3D 38 39
	jsl $202422.l		; 22 22 24 20
	rol $2E20.w		; 2E 20 2E
	jsr $A12F.w		; 20 2F A1
	jsr ($FEC7.w,X)		; FC C7 FE
	sbc $FDFEFD.l		; EF FD FE FD
	inc $FEFD.w,X		; FE FD FE
	adc $B27C.w,X		; 7D 7C B2
	lda ($4F.b,S),Y		; B3 4F
	cpy $D780.w		; CC 80 D7
	cpy #$EF.b		; C0 EF
	inx		; E8
	inc $FEF8.w,X		; FE F8 FE
	sei		; 78
	inc $FE30.w,X		; FE 30 FE
	brk $FF.b		; 00 FF
	php		; 08
	jmp ($00BF.w,X)		; 7C BF 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phy		; 5A
	cmp $5A.b,S		; C3 5A
	cmp $18.b,S		; C3 18
	cmp $18.b,S		; C3 18
	cmp $1C.b,S		; C3 1C
	cmp [$1C.b]		; C7 1C
	cmp [$1C.b]		; C7 1C
	dec $1C.b		; C6 1C
	dec $3D.b		; C6 3D
	ora ($3D.b,X)		; 01 3D
	ora ($7E.b,X)		; 01 7E
	.db $42, $7E		; 42 7E
	.db $42, $7A		; 42 7A
	.db $42, $7A		; 42 7A
	.db $42, $78		; 42 78
	rti		; 40

	sei		; 78
	rti		; 40

	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	asl A		; 0A
	ora [$0A.b]		; 07 0A
	ora [$08.b]		; 07 08
	ora [$4C.b]		; 07 4C
	ora [$4C.b]		; 07 4C
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($04.b,X)		; 01 04
	tsb $06.b		; 04 06
	asl $02.b		; 06 02
	cop $03.b		; 02 03
	ora $F8.b,S		; 03 F8
	brk $C4.b		; 00 C4
	sed		; F8
	cop $FC.b		; 02 FC
	cop $FC.b		; 02 FC
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	ora $EA1FF0.l		; 0F F0 1F EA
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	jsr ($0CFC.w,X)		; FC FC 0C
	tsb $0606.w		; 0C 06 06
	asl $06.b		; 06 06
	bra -128.b		; 80 80
	lsr $0040.w		; 4E 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F1.b		; 00 F1
	brk $0E.b		; 00 0E
	sbc ($00.b),Y		; F1 00
	brk $00.b		; 00 00
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
	brk $82.b		; 00 82
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $47.b		; 00 47
	jsr $005F.w		; 20 5F 00
	lsr $3601.w		; 4E 01 36
	ora #$2E.b		; 09 2E
	ora ($2A.b,S),Y		; 13 2A
	ora [$3E.b],Y		; 17 3E
	ora $16.b,S		; 03 16
	ora $201A1A.l		; 0F 1A 1A 20
	sec		; 38
	and $34.b,X		; 35 34
	phd		; 0B
	cop $1B.b		; 02 1B
	php		; 08
	ora [$00.b],Y		; 17 00
	ora [$14.b],Y		; 17 14
	ora $08F700.l		; 0F 00 F7 08
	lda $F0AF40.l,X		; BF 40 AF F0
	lda [$EB.b],Y		; B7 EB
	lda [$F9.b],Y		; B7 F9
	lda $DFD6.w,Y		; B9 D6 DF
	ldx $CEFF.w,Y		; BE FF CE
	tay		; A8
	ldy #$EA.b		; A0 EA
	tax		; AA
	sbc $FF0D.w,X		; FD 0D FF
	trb $FF.b		; 14 FF
	asl $FE.b		; 06 FE
	plp		; 28
	inc $DE40.w,X		; FE 40 DE
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$0B.b]		; 07 0B
	asl $1C.b		; 06 1C
	asl A		; 0A
	rol $3F15.w,X		; 3E 15 3F
	php		; 08
	ora $000030.l,X		; 1F 30 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $04.b		; 05 04
	phd		; 0B
	cop $15.b		; 02 15
	ora ($0A.b,X)		; 01 0A
	cop $04.b		; 02 04
	stz $12.b,X		; 74 12
	ply		; 7A
	eor $0573CA.l		; 4F CA 73 05
	phx		; DA
	ora $7867.w,X		; 1D 67 78
	sta [$F7.b]		; 87 F7
	ora $C3.b,S		; 03 C3
	brk $04.b		; 00 04
	asl A		; 0A
	ora $FC0230.l		; 0F 30 02 FC
	ora $E4.b		; 05 E4
	ora $90.b		; 05 90
	bpl  67.b		; 10 43
	eor $000F00.l		; 4F 00 0F 00
	ora $8F88BF.l		; 0F BF 88 8F
	bcs -121.b		; B0 87
	pha		; 48
	lda [$42.b],Y		; B7 42
	and [$CA.b]		; 27 CA
	ldx $C1.b,Y		; B6 C1
	plx		; FA
	sty $45.b		; 84 45
	cop $82.b		; 02 82
	rep #$02		; C2 02
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	bmi  10.b		; 30 0A
	dec A		; 3A
	inc A		; 1A
	clv		; B8
	bit #$05B9.w		; 89 B9 05
	sta $3A.b		; 85 3A
	tsx		; BA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($80.b,X)		; 01 80
	eor $20.b,S		; 43 20
	eor $825A12.l		; 4F 12 5A 82
	adc $F52B.w,Y		; 79 2B F5
	tsb $8000.w		; 0C 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	ldx #$A282.w		; A2 82 A2
	sta [$81.b]		; 87 81
	sta $310E00.l		; 8F 00 0E 31
	asl $001E.w		; 0E 1E 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora #$3F06.w		; 09 06 3F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($FC.b,X)		; 01 FC
	cop $08.b		; 02 08
	asl $E1.b		; 06 E1
	ora $EA09F4.l		; 0F F4 09 EA
	pei ($B8.b)		; D4 B8
	adc ($ED.b,S),Y		; 73 ED
	bpl -66.b		; 10 BE
	ldy #$0207.w		; A0 07 02
	ora $02.b,S		; 03 02
	tsb $04.b		; 04 04
	sbc $22F7E5.l		; EF E5 F7 22
	adc [$00.b],Y		; 77 00
	tas		; 1B
	ora #$E405.w		; 09 05 E4
.ACCU 8
	sep #$25		; E2 25
	jmp ($030B.w,X)		; 7C 0B 03
	clc		; 18
	rti		; 40

	cld		; D8
	cpy #$8030.w		; C0 30 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $EC.b		; 00 EC
	bit $F0.b,X		; 34 F0
	brk $F0.b		; 00 F0
	bpl -80.b		; 10 B0
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	bra  64.b		; 80 40
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
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora $01.b		; 05 01
	tsb $02.b		; 04 02
	php		; 08
	ora $11.b		; 05 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora [$00.b]		; 07 00
	asl $7A00.w		; 0E 00 7A
	trb $F4.b		; 14 F4
	plp		; 28
	inx		; E8
	bvc -48.b		; 50 D0
	cpx #$C0A0.w		; E0 A0 C0
	ldy #$C0C0.w		; A0 C0 C0
	brk $80.b		; 00 80
	brk $3C.b		; 00 3C
	plp		; 28
	sei		; 78
	bvc -16.b		; 50 F0
	ldy #$00E0.w		; A0 E0 00
	cpy #$C000.w		; C0 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	ora $101F20.l		; 0F 20 1F 10
	ora $241F20.l		; 0F 20 1F 24
	tas		; 1B
	plp		; 28
	ora [$28.b],Y		; 17 28
	ora [$18.b],Y		; 17 18
	ora [$07.b]		; 07 07
	ora [$0F.b]		; 07 0F
	ora $080606.l		; 0F 06 06 08
	php		; 08
	ora ($11.b),Y		; 11 11
	ora ($11.b),Y		; 11 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $0DE3.w		; 1C E3 0D
	sbc ($0A.b)		; F2 0A
	sbc [$08.b],Y		; F7 08
	sbc [$08.b],Y		; F7 08
	sbc [$09.b],Y		; F7 09
	inc $0A.b,X		; F6 0A
	sbc $05.b,X		; F5 05
	plx		; FA
	eor $434D.w		; 4D 4D 43
	.db $42, $41		; 42 41
	eor ($87.b,X)		; 41 87
	sta [$06.b]		; 87 06
	asl $04.b		; 06 04
	tsb $C0.b		; 04 C0
	cpy #$0001.w		; C0 01 00
	jsr ($B867.w,X)		; FC 67 B8
	sbc $47FC73.l,X		; FF 73 FC 47
	sed		; F8
	tas		; 1B
	sbc $2C.b		; E5 2C
	cmp ($D4.b,S),Y		; D3 D4
	and $4E.b,S		; 23 4E
	stp		; DB
	txs		; 9A
	cop $44.b		; 02 44
	mvp $88,$88		; 44 88 88
	jsr $4420.w		; 20 20 44
	mvp $11,$11		; 44 11 11
	jsl $08202A.l		; 22 2A 20 08
	eor $80.b,S		; 43 80
	eor $2182.w,X		; 5D 82 21
	dec $DF20.w,X		; DE 20 DF
	ldy #$C75F.w		; A0 5F C7
	sec		; 38
	dey		; 88
	bvs -120.b		; 70 88
	bvs   0.b		; 70 00
	brk $80.b		; 00 80
	bra -100.b		; 80 9C
	stz $5050.w		; 9C 50 50
	ora ($11.b),Y		; 11 11
	jsr $4020.w		; 20 20 40
	rti		; 40

	brk $00.b		; 00 00
	asl $0E07.w,X		; 1E 07 0E
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	php		; 08
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $69F646.l,X		; FF 46 F6 69
	jmp ($FFE3.w,X)		; 7C E3 FF
	brk $07.b		; 00 07
	adc $097C0C.l,X		; 7F 0C 7C 09
	sei		; 78
	phd		; 0B
	sec		; 38
	inc $EDA8.w		; EE A8 ED
	sta $F0.b		; 85 F0
	bpl   0.b		; 10 00
	brk $38.b		; 00 38
	sec		; 38
	and ($30.b,S),Y		; 33 30
	and [$30.b],Y		; 37 30
	ora [$10.b],Y		; 17 10
	rol $3A38.w,X		; 3E 38 3A
	jmp ($7834.w,X)		; 7C 34 78
	bit $78.b,X		; 34 78
	pla		; 68
	bvs 104.b		; 70 68
	bvs 104.b		; 70 68
	bvs 112.b		; 70 70
	rts		; 60

	bpl 120.b		; 10 78
	bmi  -4.b		; 30 FC
	jsr $20F8.w		; 20 F8 20
	sed		; F8
	jsr $20F0.w		; 20 F0 20
	beq  32.b		; F0 20
	beq  64.b		; F0 40
	cpx #$0703.w		; E0 03 07
	adc ($07.b,S),Y		; 73 07
	and $57.b,S		; 23 57
	and $47.b,S		; 23 47
	plp		; 28
	rti		; 40

	pld		; 2B
	eor [$3F.b]		; 47 3F
	rti		; 40

	ply		; 7A
	sta $00.b		; 85 00
	ora $110F01.l		; 0F 01 0F 11
	and $103F10.l,X		; 3F 10 3F 10
	and [$11.b],Y		; 37 11
	and [$00.b],Y		; 37 00
	jsr $0005.w		; 20 05 00
	inc $80.b,X		; F6 80
	sbc $ECFBC4.l		; EF C4 FB EC
	jsr ($74F8.w,X)		; FC F8 74
	sed		; F8
	sec		; 38
	bmi -56.b		; 30 C8
	bne -21.b		; D0 EB
	jsr $B909.w		; 20 09 B9
	bcc -43.b		; 90 D5
	cpy #$60EC.w		; C0 EC 60
	sed		; F8
	jsr $00F8.w		; 20 F8 00
	beq -128.b		; F0 80
	beq   0.b		; F0 00
	bmi  -6.b		; 30 FA
	ora $BE.b		; 05 BE
	ora ($81.b,X)		; 01 81
	ora $02.b,S		; 03 02
	asl $03.b		; 06 03
	php		; 08
	asl $10.b		; 06 10
	ora $419D21.l		; 0F 21 9D 41
	bmi  52.b		; 30 34
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora $001E00.l		; 0F 00 1E 00
	rol $0A00.w,X		; 3E 00 0A
	tsb $0C0A.w		; 0C 0A 0C
	bit $3C18.w,X		; 3C 18 3C
	clc		; 18
	jsr ($FC18.w,X)		; FC 18 FC
	cli		; 58
	sty $7878.w		; 8C 78 78
	brk $08.b		; 00 08
	trb $1C08.w		; 1C 08 1C
	php		; 08
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	cli		; 58
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	rti		; 40

	bvs   0.b		; 70 00
	rts		; 60

	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$C020.w		; A0 20 C0
	rti		; 40

	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra  32.b		; 80 20
	cpy #$40A0.w		; C0 A0 40
	rts		; 60

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$4040.w		; C0 40 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $50FE18.l		; EF 18 FE 50
	cpx $E9C0.w		; EC C0 E9
	cmp ($E2.b,X)		; C1 E2
	lda $E4.b,S		; A3 E4
	and [$B9.b]		; 27 B9
	ror $7CE3.w,X		; 7E E3 7C
	eor [$40.b]		; 47 40
	cmp $00DF80.l		; CF 80 DF 00
	dec $9D00.w,X		; DE 00 9D
	ora ($1A.b,X)		; 01 1A
	cop $44.b		; 02 44
	mvp $18,$18		; 44 18 18
	lsr $F8.b		; 46 F8
	php		; 08
	beq  96.b		; F0 60
	bra -128.b		; 80 80
	rti		; 40

	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	bcs -80.b		; B0 B0
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $5C.b		; 00 5C
	sec		; 38
	jmp $305C30.l		; 5C 30 5C 30
	stz $18.b,X		; 74 18
	stz $18.b,X		; 74 18
	stz $18.b,X		; 74 18
	mvn $D4,$38		; 54 38 D4
	sec		; 38
	sec		; 38
	brk $38.b		; 00 38
	php		; 08
	sec		; 38
	php		; 08
	sec		; 38
	jsr $2038.w		; 20 38 20
	sec		; 38
	jsr $0038.w		; 20 38 00
	sec		; 38
	brk $DC.b		; 00 DC
	bmi -36.b		; 30 DC
	bmi  -4.b		; 30 FC
	bpl  60.b		; 10 3C
	php		; 08
	bit $3C18.w		; 2C 18 3C
	brk $16.b		; 00 16
	php		; 08
	asl $3800.w		; 0E 00 38
	php		; 08
	sec		; 38
	php		; 08
	clc		; 18
	php		; 08
	clc		; 18
	bpl  24.b		; 10 18
	brk $08.b		; 00 08
	php		; 08
	tsb $0004.w		; 0C 04 00
	brk $2C.b		; 00 2C
	sbc ($2C.b,X)		; E1 2C
	sbc ($2C.b,X)		; E1 2C
	sbc ($2C.b,X)		; E1 2C
	sbc ($2C.b,X)		; E1 2C
	sbc ($2E.b,X)		; E1 2E
	adc $2E.b,S		; 63 2E
	adc $2E.b,S		; 63 2E
	adc $5E.b,S		; 63 5E
	rti		; 40

	lsr $5E40.w,X		; 5E 40 5E
	rti		; 40

	lsr $5E40.w,X		; 5E 40 5E
	rti		; 40

	trb $1C00.w		; 1C 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	adc $0C.b,S		; 63 0C
	adc $0C.b,S		; 63 0C
	adc $0C.b,S		; 63 0C
	adc $00.b,S		; 63 00
	adc $2C.b,S		; 63 2C
	adc $08CE08.l		; 6F 08 CE 08
	dec $223E.w		; CE 3E 22
	rol $3E22.w,X		; 3E 22 3E
	jsl $3E223E.l		; 22 3E 22 3E
	jsl $740212.l		; 22 12 02 74
	mvp $44,$74		; 44 74 44
	php		; 08
	dec $DE58.w		; CE 58 DE
	bvs -34.b		; 70 DE
	bvs -36.b		; 70 DC
	bvs -36.b		; 70 DC
	jsr $208C.w		; 20 8C 20
	sty $8C20.w		; 8C 20 8C
	stz $44.b,X		; 74 44
	bit $04.b		; 24 04
	bit $280C.w		; 2C 0C 28
	php		; 08
	plp		; 28
	php		; 08
	sei		; 78
	php		; 08
	sei		; 78
	php		; 08
	sei		; 78
	php		; 08
	jsr $2088.w		; 20 88 20
	dey		; 88
	jsr $2088.w		; 20 88 20
	dey		; 88
	jsr $3088.w		; 20 88 30
	tya		; 98
	cpy #$F818.w		; C0 18 F8
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $30.b		; 00 30
	bpl  64.b		; 10 40
	rti		; 40

	rts		; 60

	tsb $18D0.w		; 0C D0 18
	cpx #$8038.w		; E0 38 80
	bmi  64.b		; 30 40
	rts		; 60

	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	sed		; F8
	php		; 08
	cpx #$D000.w		; E0 00 D0
	bpl -32.b		; 10 E0
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
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora [$00.b]		; 07 00
	ora $040F04.l		; 0F 04 0F 04
	ora $061D04.l		; 0F 04 1D 06
	asl $3B08.w,X		; 1E 08 3B
	tsb $103F.w		; 0C 3F 10
	cop $02.b		; 02 02
	asl $02.b		; 06 02
	asl $02.b		; 06 02
	asl $02.b		; 06 02
	asl $0C08.w		; 0E 08 0C
	tsb $1C.b		; 04 1C
	bpl  24.b		; 10 18
	php		; 08
	brk $01.b		; 00 01
	cmp ($03.b,X)		; C1 03
	cmp $86.b,S		; C3 86
	sbc [$8C.b]		; E7 8C
	lda $30DEB8.l		; AF B8 DE 30
	and $5A61.w,X		; 3D 61 5A
	cmp $00.b,S		; C3 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	bra -125.b		; 80 83
	bra  39.b		; 80 27
	cpx #$000F.w		; E0 0F 00
	asl $3D80.w,X		; 1E 80 3D
	ora ($34.b,X)		; 01 34
	sta [$E8.b]		; 87 E8
	stx $1C10.w		; 8E 10 1C
	cpx #$0078.w		; E0 78 00
	bvs -128.b		; 70 80
	cpx #$C000.w		; E0 00 C0
	brk $C0.b		; 00 C0
	plx		; FA
	.db $82, $74, $04		; 82 74 04
	inx		; E8
	php		; 08
	bcc  16.b		; 90 10
	cpx #$4060.w		; E0 60 40
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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	and $385800.l,X		; 3F 00 58 38
	sta [$47.b]		; 87 47
	rts		; 60

	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $27.b		; 00 27
	jsr $4078.w		; 20 78 40
	sta $000F9F.l,X		; 9F 9F 0F 00
	rol $0F.b,X		; 36 0F
	cmp #$39.b		; C9 39
	xce		; FB
	xce		; FB
	and [$E7.b]		; 27 E7
	trb $E01F.w		; 1C 1F E0
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $09.b		; 00 09
	ora #$16.b		; 09 16
	bpl   4.b		; 10 04
	brk $18.b		; 00 18
	brk $E3.b		; 00 E3
	ora $1F.b,S		; 03 1F
	ora $00FCFC.l,X		; 1F FC FC 00
	brk $80.b		; 00 80
	brk $58.b		; 00 58
	bra  92.b		; 80 5C
	bra  62.b		; 80 3E
	cpy $C43E.w		; CC 3E C4
	and $A857C2.l,X		; 3F C2 57 A8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	dey		; 88
	dey		; 88
	sty $8C80.w		; 8C 80 8C
	dey		; 88
	asl $0E0C.w		; 0E 0C 0E
	asl $01.b		; 06 01
	cop $02.b		; 02 02
	ora ($07.b,X)		; 01 07
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1A.b		; 00 1A
	ora $1F.b		; 05 1F
	ora #$0B.b		; 09 0B
	tsb $00.b		; 04 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $09.b		; 06 09
	ora #$07.b		; 09 07
	cop $0D.b		; 02 0D
	tsb $04.b		; 04 04
	brk $94.b		; 00 94
	asl A		; 0A
	inc $18.b,X		; F6 18
	adc $7DDB38.l		; 6F 38 DB 7D
	tsa		; 3B
	sbc $F7.b,X		; F5 F7
	ror A		; 6A
	sbc $4EFFD6.l		; EF D6 FF 4E
	rtl		; 6B

	sbc $1D.b,S		; E3 1D
	cmp $BE.b		; C5 BE
	stx $7F.b		; 86 7F
	cop $FF.b		; 02 FF
	asl A		; 0A
	sbc $29FF95.l,X		; FF 95 FF 29
	cmp $047B91.l,X		; DF 91 7B 04
	phx		; DA
	tsb $36.b		; 04 36
	php		; 08
	lda $34EB50.l		; AF 50 EB 34
	adc [$A8.b],Y		; 77 A8
	adc $A07FA0.l,X		; 7F A0 7F A0
	sty $E0.b		; 84 E0
	bit $E0.b		; 24 E0
	iny		; C8
	cpy #$4858.w		; C0 58 48
	ldy $FC88.w,X		; BC 88 FC
	mvn $54,$F4		; 54 F4 54
	pea $6054.w		; F4 54 60
	cpx #$60E0.w		; E0 E0 60
	beq 112.b		; F0 70
	bvs  48.b		; 70 30
	sei		; 78
	sec		; 38
	jmp ($233C.w,X)		; 7C 3C 23
	asl $021D.w,X		; 1E 1D 02
	rts		; 60

	beq  32.b		; F0 20
	bvs  32.b		; 70 20
	sei		; 78
	bmi  56.b		; 30 38
	bmi  60.b		; 30 3C
	trb $003E.w		; 1C 3E 00
	asl $0200.w,X		; 1E 00 02
	sta ($7E.b,X)		; 81 7E
	ror $1810.w		; 6E 10 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $82.b		; 00 82
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($07.b,X)		; 01 07
	brk $3F.b		; 00 3F
	ora $FF.b,S		; 03 FF
	ora $F0C0FF.l,X		; 1F FF C0 F0
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	tsb $3F.b		; 04 3F
	jsr $20E0.w		; 20 E0 20
	brk $0F.b		; 00 0F
	ora [$F8.b]		; 07 F8
	cmp $7D31.w		; CD 31 7D
	cmp $FF.b		; C5 FF
	brk $FF.b		; 00 FF
	cpy $FF.b		; C4 FF
	sty $39FF.w		; 8C FF 39
	lda $0052.w,X		; BD 52 00
	brk $02.b		; 00 02
	brk $82.b		; 00 82
	bra  56.b		; 80 38
	sec		; 38
	inc $FE3A.w,X		; FE 3A FE
	adc ($FC.b)		; 72 FC
	cmp $78.b		; C5 78
	rol A		; 2A
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	cpy #$6000.w		; C0 00 60
	rti		; 40

	bcs -96.b		; B0 A0
	cpy #$C050.w		; C0 50 C0
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E080.w		; C0 80 E0
	rti		; 40

	rts		; 60

	jsr $1480.w		; 20 80 14
	lsr $10.b		; 46 10
	lsr $10.b		; 46 10
	lsr $10.b		; 46 10
	mvp $4C,$08		; 44 08 4C
	php		; 08
	jmp $6C20.w		; 4C 20 6C
	bvs  12.b		; 70 0C
	sec		; 38
	brk $3C.b		; 00 3C
	tsb $3C.b		; 04 3C
	tsb $38.b		; 04 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	php		; 08
	php		; 08
	php		; 08
	jmp ($7C30.w,X)		; 7C 30 7C
	plp		; 28
	stz $28.b,X		; 74 28
	stz $28.b,X		; 74 28
	stz $28.b,X		; 74 28
	stz $28.b,X		; 74 28
	stz $28.b,X		; 74 28
	stz $28.b,X		; 74 28
	bmi   0.b		; 30 00
	sec		; 38
	bpl  56.b		; 10 38
	bpl  56.b		; 10 38
	bpl  56.b		; 10 38
	bpl  56.b		; 10 38
	bpl  56.b		; 10 38
	bpl  56.b		; 10 38
	bpl 116.b		; 10 74
	plp		; 28
	stz $28.b,X		; 74 28
	stz $28.b,X		; 74 28
	stz $28.b,X		; 74 28
	bit $08.b,X		; 34 08
	bit $3E00.w,X		; 3C 00 3E
	brk $1E.b		; 00 1E
	brk $38.b		; 00 38
	bpl  56.b		; 10 38
	bpl  40.b		; 10 28
	brk $28.b		; 00 28
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	php		; 08
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	jmp ($FC80.w,X)		; 7C 80 FC
	bpl  -4.b		; 10 FC
	brk $B8.b		; 00 B8
	bvc 120.b		; 50 78
	php		; 08
	sed		; F8
	bit $3CDC.w,X		; 3C DC 3C
	jmp $08089C.l		; 5C 9C 08 08
	bvs  96.b		; 70 60
	php		; 08
	php		; 08
	bvs  36.b		; 70 24
	php		; 08
	tsb $3E18.w		; 0C 18 3E
	php		; 08
	rol $3E88.w,X		; 3E 88 3E
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	rti		; 40

	sbc $00FF80.l,X		; FF 80 FF 00
	sbc $0FFF00.l,X		; FF 00 FF 0F
	beq  12.b		; F0 0C
	beq 127.b		; F0 7F
	adc $00F0F0.l,X		; 7F F0 F0 00
	brk $40.b		; 00 40
	rti		; 40

	stx $86.b		; 86 86
	clv		; B8
	clv		; B8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora $FC.b,S		; 03 FC
	tsb $F0F3.w		; 0C F3 F0
	ora $0C0F10.l		; 0F 10 0F 0C
	ora $C0.b,S		; 03 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora $03.b,S		; 03 03
	eor #$B6.b		; 49 B6
	sta $7A.b,X		; 95 7A
	lda $7A.b,X		; B5 7A
	ora ($FC.b,S),Y		; 13 FC
	ora $FC.b,S		; 03 FC
	ora $FC.b,S		; 03 FC
	ora $FA.b		; 05 FA
	ora #$F6.b		; 09 F6
	rol $20.b		; 26 20
	jsl $484A20.l		; 22 20 4A 48
	pla		; 68
	pla		; 68
	sed		; F8
	sed		; F8
	cld		; D8
	cld		; D8
	cmp ($D0.b)		; D2 D0
	lsr $40.b		; 46 40
	ora [$00.b]		; 07 00
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
	sbc $22DF06.l,X		; FF 06 DF 22
	and $7E0140.l,X		; 3F 40 01 7E
	ora $70107F.l,X		; 1F 7F 10 70
	asl $70.b,X		; 16 70
	asl $70.b,X		; 16 70
	eor $002249.l		; 4F 49 22 00
	brk $00.b		; 00 00
	rol $203E.w,X		; 3E 3E 20
	jsr $202F.w		; 20 2F 20
	and $202F20.l		; 2F 20 2F 20
	tda		; 7B
	ldy $FE.b		; A4 FE
	rts		; 60

	sed		; F8
	rts		; 60

	cpx #$8000.w		; E0 00 80
	cpy #$C080.w		; C0 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	pea $F050.w		; F4 50 F0
	bcc -32.b		; 90 E0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $12.b		; 00 12
	tsb $0C.b		; 04 0C
	brk $00.b		; 00 00
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
	ora ($00.b,X)		; 01 00
	ora ($03.b,X)		; 01 03
	ora $06.b,S		; 03 06
	ora [$0C.b]		; 07 0C
	asl $1D00.w,X		; 1E 00 1D
	ora ($1F.b,X)		; 01 1F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0A.b		; 00 0A
	php		; 08
	tsb $000C.w		; 0C 0C 00
	brk $D0.b		; 00 D0
	lda $B74F77.l		; AF 77 4F B7
	and $976F57.l		; 2F 57 6F 97
	sbc $F9F608.l		; EF 08 F6 F9
	eor ($C1.b,X)		; 41 C1
	ora $00.b,S		; 03 00
	and $C30F80.l		; 2F 80 0F C3
	ora $432FA3.l		; 0F A3 2F 43
	eor $00B780.l		; 4F 80 B7 00
	eor [$00.b]		; 47 00
	ora [$7A.b]		; 07 7A
	sta $FD.b		; 85 FD
	inc $FEFC.w,X		; FE FC FE
	jsr ($FCFE.w,X)		; FC FE FC
	inc $0200.w,X		; FE 00 02
	jsr ($FCFC.w,X)		; FC FC FC
	inc $8500.w,X		; FE 00 85
	brk $FE.b		; 00 FE
	sed		; F8
	sbc $F8FFF8.l,X		; FF F8 FF F8
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $E0FFF8.l,X		; FF F8 FF E0
	cli		; 58
	bmi -104.b		; 30 98
	jsr $2088.w		; 20 88 20
	dey		; 88
	bmi -116.b		; 30 8C
	sec		; 38
	sty $C470.w		; 8C 70 C4
	trb $40.b		; 14 40
	bmi  16.b		; 30 10
	cpx #$F080.w		; E0 80 F0
	bra 112.b		; 80 70
	brk $78.b		; 00 78
	php		; 08
	bvs   0.b		; 70 00
	sec		; 38
	brk $38.b		; 00 38
	brk $3B.b		; 00 3B
	ora [$17.b]		; 07 17
	and $1B.b,S		; 23 1B
	bit $1A.b		; 24 1A
	jsr $211A.w		; 20 1A 21
	ora ($25.b)		; 12 25
	adc $462100.l,X		; 7F 00 21 46
	ora ($07.b,X)		; 01 07
	phd		; 0B
	tas		; 1B
	tsb $1C.b		; 04 1C
	ora $1D.b		; 05 1D
	ora $1D.b		; 05 1D
	ora $001D.w		; 0D 1D 00
	brk $1C.b		; 00 1C
	bit $7016.w,X		; 3C 16 70
	asl $30.b		; 06 30
	asl $30.b		; 06 30
	asl $30.b		; 06 30
	asl $30.b		; 06 30
	asl $10.b		; 06 10
	asl $10.b		; 06 10
	asl $10.b		; 06 10
	and $101F20.l		; 2F 20 1F 10
	ora $101F10.l,X		; 1F 10 1F 10
	ora $000F10.l,X		; 1F 10 0F 00
	ora $000F00.l		; 0F 00 0F 00
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	tsb $0C21.w		; 0C 21 0C
	and ($1A.b,X)		; 21 1A
	and ($12.b,S),Y		; 33 12
	and ($1E.b,S),Y		; 33 1E
	and $1C3F1C.l,X		; 3F 1C 3F 1C
	adc $1E6E0C.l,X		; 7F 0C 6E 1E
	brk $1E.b		; 00 1E
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $22.b		; 02 22
	jsl $F82030.l		; 22 30 20 F8
	jsr ($C0FC.w,X)		; FC FC C0
	jmp.w [$BE00]		; DC 00 BE
	brk $BF.b		; 00 BF
	brk $9E.b		; 00 9E
	eor ($E5.b,X)		; 41 E5
	ora ($9F.b)		; 12 9F
	rts		; 60

	beq  -2.b		; F0 FE
	cpy #$20C2.w		; C0 C2 20
	dec A		; 3A
	rti		; 40

	sei		; 78
	rti		; 40

	sei		; 78
	adc ($78.b,X)		; 61 78
	clc		; 18
	inc A		; 1A
	brk $00.b		; 00 00
	asl $37.b,X		; 16 37
	asl A		; 0A
	and $0A.b,S		; 23 0A
	adc $1A.b,S		; 63 1A
	adc $38.b,S		; 63 38
	adc $38.b,S		; 63 38
	adc $38.b,S		; 63 38
	.db $62, $14, $46		; 62 14 46
	php		; 08
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	jsr $203C.w		; 20 3C 20
	asl $1E02.w,X		; 1E 02 1E
	cop $1C.b		; 02 1C
	brk $38.b		; 00 38
	brk $5E.b		; 00 5E
	plp		; 28
	and $0E1714.l		; 2F 14 17 0E
	phd		; 0B
	ora [$0B.b]		; 07 0B
	asl $06.b		; 06 06
	brk $03.b		; 00 03
	ora ($00.b,X)		; 01 00
	ora $3C.b,S		; 03 3C
	trb $1E.b		; 14 1E
	asl A		; 0A
	ora $000701.l		; 0F 01 07 00
	asl $00.b		; 06 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra  64.b		; 80 40
	brk $60.b		; 00 60
	bra  32.b		; 80 20
	rti		; 40

	bpl  96.b		; 10 60
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	brk $B8.b		; 00 B8
	cmp [$2F.b]		; C7 2F
	bvc  24.b		; 50 18
	rts		; 60

	sta $833CE0.l,X		; 9F E0 3C 83
	adc $07FF1C.l,X		; 7F 1C FF 07
	sbc [$0B.b],Y		; F7 0B
	jsr $E000.w		; 20 00 E0
	rti		; 40

	cpy #$2040.w		; C0 40 20
	jsr $9CDF.w		; 20 DF 9C
	lda $787F23.l,X		; BF 23 7F 78
	ora $806004.l		; 0F 04 60 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cpy #$3800.w		; C0 00 38
	cpy #$00FC.w		; C0 FC 00
	jsr ($FCE0.w,X)		; FC E0 FC
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F800.w		; C0 00 F8
	sed		; F8
	cpx #$C000.w		; E0 00 C0
	brk $3F.b		; 00 3F
	and $3F7F3F.l,X		; 3F 3F 7F 3F
	rol $3D3E.w,X		; 3E 3E 3D
	rol $B23C.w,X		; 3E 3C B2
	bmi -82.b		; 30 AE
	bit $519E.w		; 2C 9E 51
	ora $FF3EFF.l		; 0F FF 3E FF
	asl $1D7E.w,X		; 1E 7E 1D
	adc $7D11.w,X		; 7D 11 7D
	ora ($7D.b,X)		; 01 7D
	ora $017D.w		; 0D 7D 01
	adc ($BC.b),Y		; 71 BC
	bra -32.b		; 80 E0
	trb $20D8.w		; 1C D8 20
	beq   8.b		; F0 08
	bcc 104.b		; 90 68
	bcc  72.b		; 90 48
	bcs  72.b		; B0 48
	bne   8.b		; D0 08
	brk $C2.b		; 00 C2
	brk $1E.b		; 00 1E
	brk $A4.b		; 00 A4
	brk $94.b		; 00 94
	jsr $20B0.w		; 20 B0 20
	bcs   0.b		; B0 00
	bcs  32.b		; B0 20
	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$60C1.w		; C0 C1 60
	lda ($30.b,X)		; A1 30
	cmp ($18.b,X)		; C1 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$F000.w		; C0 00 F0
	bpl   3.b		; 10 03
	brk $01.b		; 00 01
	ora $0601.w		; 0D 01 06
	ora $3C.b		; 05 3C
	dec $30.b,X		; D6 30
	plx		; FA
	lda $C8.b,S		; A3 C8
	lda $009E60.l		; AF 60 9E 00
	brk $00.b		; 00 00
	ora $08.b,S		; 03 08
	sec		; 38
	ora $60.b,S		; 03 60
	ora $019D00.l		; 0F 00 9D 01
	ldx $26.b,Y		; B6 26
	cld		; D8
	eor $0000.w,Y		; 59 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $02.b		; 05 02
	jmp ($8203.w,X)		; 7C 03 82
	adc $0000.w,X		; 7D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $007D.w,X		; 7D 7D 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	ora $08.b,S		; 03 08
	ora [$10.b]		; 07 10
	ora $3C07F8.l		; 0F F8 07 3C
	cmp $00.b,S		; C3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $04.b,S		; 03 04
	tsb $00.b		; 04 00
	brk $18.b		; 00 18
	php		; 08
	bmi -58.b		; 30 C6
	bmi -58.b		; 30 C6
	bmi -58.b		; 30 C6
	bmi -58.b		; 30 C6
	brk $C6.b		; 00 C6
	bit $F6.b,X		; 34 F6
	bpl 115.b		; 10 73
	bpl 115.b		; 10 73
	jmp ($7C44.w,X)		; 7C 44 7C
	mvp $44,$7C		; 44 7C 44
	jmp ($7C44.w,X)		; 7C 44 7C
	mvp $40,$48		; 44 48 40
	rol $2E22.w		; 2E 22 2E
	jsl $1A7310.l		; 22 10 73 1A
	tda		; 7B
	asl $0E7B.w		; 0E 7B 0E
	tsa		; 3B
	asl $043B.w		; 0E 3B 04
	and ($04.b),Y		; 31 04
	and ($04.b),Y		; 31 04
	and ($2E.b),Y		; 31 2E
	jsl $342024.l		; 22 24 20 34
	bmi  20.b		; 30 14
	bpl  20.b		; 10 14
	bpl  30.b		; 10 1E
	bpl  30.b		; 10 1E
	bpl  30.b		; 10 1E
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $20.b		; 02 20
	dey		; 88
	jsr $2088.w		; 20 88 20
	dey		; 88
	jsr $2088.w		; 20 88 20
	dey		; 88
	rts		; 60

	iny		; C8
	clc		; 18
	cpy #$00F8.w		; C0 F8 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	rts		; 60

	rti		; 40

	bpl  16.b		; 10 10
	inx		; E8
	bvs -24.b		; 70 E8
	bmi -24.b		; 30 E8
	bmi -72.b		; 30 B8
	rts		; 60

	clv		; B8
	rts		; 60

	clv		; B8
	rts		; 60

	tay		; A8
	bvs -84.b		; 70 AC
	bvs 112.b		; 70 70
	brk $70.b		; 00 70
	rti		; 40

	bvs  64.b		; 70 40
	bvs  16.b		; 70 10
	bvs  16.b		; 70 10
	bvs  16.b		; 70 10
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	beq  32.b		; F0 20
	beq  32.b		; F0 20
	beq  32.b		; F0 20
	clv		; B8
	rts		; 60

	sei		; 78
	bpl -36.b		; 10 DC
	bmi  -4.b		; 30 FC
	php		; 08
	lsr $6028.w,X		; 5E 28 60
	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	rti		; 40

	bvs  16.b		; 70 10
	bmi  32.b		; 30 20
	sec		; 38
	php		; 08
	clc		; 18
	bpl  60.b		; 10 3C
	trb $00.b		; 14 00
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
	brk $B8.b		; 00 B8
	sty $C67C.w		; 8C 7C C6
	asl $2FC3.w,X		; 1E C3 2F
	adc ($17.b,X)		; 61 17
	bvs  11.b		; 70 0B
	sec		; 38
	ora $1C.b		; 05 1C
	cop $0E.b		; 02 0E
	bvs   0.b		; 70 00
	clv		; B8
	bra 124.b		; 80 7C
	rti		; 40

	asl $2F00.w,X		; 1E 00 2F
	jsr $1017.w		; 20 17 10
	phd		; 0B
	php		; 08
	ora $04.b		; 05 04
	phk		; 4B
	eor $A7.b,X		; 55 A7
	tay		; A8
	cmp [$54.b],Y		; D7 54
	adc [$A7.b]		; 67 A7
	cmp $DF1FAF.l		; CF AF 1F DF
	jsr $0F70.w		; 20 70 0F
	cmp $A3F207.l		; CF 07 F2 A3
	xce		; FB
	rti		; 40

	jmp ($BF86.w,X)		; 7C 86 BF
	asl $3F.b		; 06 3F
	stx $00BF.w		; 8E BF 00
	sbc $C0FF00.l,X		; FF 00 FF C0
	ldy #$30E0.w		; A0 E0 30
	bne  88.b		; D0 58
	dey		; 88
	sty $AEA8.w		; 8C A8 AE
	bcc -66.b		; 90 BE
	sec		; 38
	ora [$AE.b]		; 07 AE
	sta [$80.b],Y		; 97 80
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	cpy #$C414.w		; C0 14 C4
	asl $07C0.w		; 0E C0 07
	cpy #$C81F.w		; C0 1F C8
	lda $49FE20.l,X		; BF 20 FE 49
	inc $DA09.w,X		; FE 09 DA
	bit $D43A.w		; 2C 3A D4
	sbc [$7A.b],Y		; F7 7A
	inc $ED.b,X		; F6 ED
	inc $0CD5.w		; EE D5 0C
	jmp ($450D.w)		; 6C 0D 45
	and $FD25.w		; 2D 25 FD
	cmp ($FD.b),Y		; D1 FD
	and #$FE.b		; 29 FE
	sty $FF.b		; 84 FF
	ora ($FF.b)		; 12 FF
	rol A		; 2A
	rti		; 40

	plp		; 28
	sed		; F8
	brk $44.b		; 00 44
	bmi -58.b		; 30 C6
	jsr $00EC.w		; 20 EC 00
	pla		; 68
	brk $B0.b		; 00 B0
	rti		; 40

	ldy #$B040.w		; A0 40 B0
	bcs   0.b		; B0 00
	brk $B8.b		; 00 B8
	clv		; B8
	sec		; 38
	ldy $9810.w,X		; BC 10 98
	bcc -112.b		; 90 90
	rti		; 40

	brk $C0.b		; 00 C0
	bra 112.b		; 80 70
	clc		; 18
	dey		; 88
	sty $E674.w		; 8C 74 E6
	tsb $16E1.w		; 0C E1 16
	bvs  15.b		; 70 0F
	sec		; 38
	phd		; 0B
	sec		; 38
	ora $1C.b		; 05 1C
	cpx #$7000.w		; E0 00 70
	brk $98.b		; 00 98
	bra 126.b		; 80 7E
	rts		; 60

	and $101720.l		; 2F 20 17 10
	ora [$10.b],Y		; 17 10
	phd		; 0B
	php		; 08
	beq  77.b		; F0 4D
	rts		; 60

	ora #$00.b		; 09 00
	ora $00.b		; 05 00
	ora $00.b,S		; 03 00
	bra   0.b		; 80 00
	rti		; 40

	tya		; 98
	jsr $20FF.w		; 20 FF 20
	.db $62, $22, $06		; 62 22 06
	asl $02.b		; 06 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C8.b		; 00 C8
	php		; 08
	sbc $1F.b		; E5 1F
	ora ($EF.b,S),Y		; 13 EF
	ora $68E7.w,Y		; 19 E7 68
	sta [$74.b],Y		; 97 74
	phb		; 8B
	inc $9B51.w		; EE 51 9B
	stz $95.b		; 64 95
	.db $62, $0A, $0A		; 62 0A 0A
	bit $24.b		; 24 24
	stx $86.b		; 86 86
	sta $83.b,S		; 83 83
	ora ($01.b,X)		; 01 01
	bpl  16.b		; 10 10
	mvp $22,$44		; 44 44 22
	rol A		; 2A
	ora $C6E2.w,X		; 1D E2 C6
	sbc $FFF8.w,Y		; F9 F8 FF
	cpy #$60FF.w		; C0 FF 60
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $C03FC0.l,X		; FF C0 3F C0
	cpy #$2020.w		; C0 20 20
	ora [$07.b]		; 07 07
	and $9C9C3F.l,X		; 3F 3F 9C 9C
	ror $3F7E.w,X		; 7E 7E 3F
	and $5C0000.l,X		; 3F 00 00 5C
	rol $07.b,X		; 36 07
	stz $1E.b		; 64 1E
	bmi   0.b		; 30 00
	clc		; 18
	cop $1B.b		; 02 1B
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora ($04.b,X)		; 01 04
	and [$2C.b],Y		; 37 2C
	ora $080F00.l		; 0F 00 0F 08
	ora $0109.w		; 0D 09 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	tsb $0E02.w		; 0C 02 0E
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $7F09.w,X		; FE 09 7F
	tsb $3F.b		; 04 3F
	brk $BF.b		; 00 BF
	sta $3CCC7F.l,X		; 9F 7F CC 3C
	sbc $0F.b,S		; E3 0F
	adc ($0F.b),Y		; 71 0F
	and [$DD.b],Y		; 37 DD
	trb $DE.b		; 14 DE
	inc A		; 1A
	cpy #$5F00.w		; C0 00 5F
	brk $9F.b		; 00 9F
	sta ($43.b,S),Y		; 93 43
	rti		; 40

	and [$36.b],Y		; 37 36
	ora [$10.b],Y		; 17 10
	ora [$1B.b]		; 07 1B
	asl $09.b		; 06 09
	ora $00.b,S		; 03 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $FFED.w,X		; 9E ED FF
	sec		; 38
	sbc $03FC78.l,X		; FF 78 FC 03
	sbc ($FC.b,S),Y		; F3 FC
	clc		; 18
	ora $680F48.l,X		; 1F 48 0F 68
	asl $12FF.w		; 0E FF 12
	adc $FD45.w,X		; 7D 45 FD
	sta $03.b		; 85 03
	brk $0C.b		; 00 0C
	tsb $06E6.w		; 0C E6 06
	inc $06.b,X		; F6 06
	pea $A004.w		; F4 04 A0
	rti		; 40

	ldy #$A040.w		; A0 40 A0
	rti		; 40

	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $76.b		; 00 76
	clc		; 18
	ror $18.b,X		; 76 18
	ror $7810.w,X		; 7E 10 78
	jsr $3068.w		; 20 68 30
	pla		; 68
	bpl -48.b		; 10 D0
	jsr $00F0.w		; 20 F0 00
	sec		; 38
	jsr $2038.w		; 20 38 20
	bmi  32.b		; 30 20
	bmi  16.b		; 30 10
	bmi   0.b		; 30 00
	bmi  32.b		; 30 20
	rts		; 60

	rti		; 40

	brk $00.b		; 00 00
	bit $87.b,X		; 34 87
	bit $87.b,X		; 34 87
	bit $87.b,X		; 34 87
	bit $87.b,X		; 34 87
	bit $87.b,X		; 34 87
	stz $C6.b,X		; 74 C6
	stz $C6.b,X		; 74 C6
	stz $C6.b,X		; 74 C6
	ply		; 7A
	cop $7A.b		; 02 7A
	cop $7A.b		; 02 7A
	cop $7A.b		; 02 7A
	cop $7A.b		; 02 7A
	cop $38.b		; 02 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $CC.b		; 00 CC
	brk $34.b		; 00 34
	iny		; C8
	tsb $1CF0.w		; 0C F0 1C
	cpx #$FC32.w		; E0 32 FC
	eor $00BE.w,Y		; 59 BE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -16.b		; 80 F0
	beq  96.b		; F0 60
	rts		; 60

	php		; 08
	php		; 08
	bit $24.b		; 24 24
	sta $397E.w,Y		; 99 7E 39
	inc $FEF1.w,X		; FE F1 FE
	ora ($FE.b,X)		; 01 FE
	cop $FC.b		; 02 FC
	jmp ($1080.w,X)		; 7C 80 10
	cpx #$C020.w		; E0 20 C0
	rol $26.b		; 26 26
	dec $C6.b		; C6 C6
	asl $FC0E.w		; 0E 0E FC
	jsr ($F8F8.w,X)		; FC F8 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl -13.b		; 10 F3
	bvc -13.b		; 50 F3
	brk $73.b		; 00 73
	asl A		; 0A
	tda		; 7B
	asl A		; 0A
	tsa		; 3B
	asl A		; 0A
	tsa		; 3B
	cop $33.b		; 02 33
	ora ($33.b)		; 12 33
	rol $0E22.w		; 2E 22 0E
	cop $1E.b		; 02 1E
	ora ($14.b)		; 12 14
	bpl  20.b		; 10 14
	bpl  20.b		; 10 14
	bpl  28.b		; 10 1C
	bpl  12.b		; 10 0C
	brk $D2.b		; 00 D2
	php		; 08
	ora $DC.b		; 05 DC
	asl A		; 0A
	ldx $1A.b,Y		; B6 1A
	inc $7D.b		; E6 7D
	tad		; 5B
	jmp ($FD30.w,X)		; 7C 30 FD
	eor $CE.b,S		; 43 CE
	ora ($EF.b,X)		; 01 EF
	php		; 08
	sbc ($D0.b,S),Y		; F3 D0
	sbc $A4.b		; E5 A4
	ora ($00.b,X)		; 01 00
	txs		; 9A
	cop $B8.b		; 02 B8
	phd		; 0B
	rti		; 40

	ora $30.b,S		; 03 30
	and $0103.w,Y		; 39 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $06.b,S		; 03 06
	cop $06.b		; 02 06
	ora ($04.b,X)		; 01 04
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	cmp $3A.b,X		; D5 3A
	lda $BA5A.w,X		; BD 5A BA
	eor $5DBF.w,X		; 5D BF 5D
	lda $CF5E.w		; AD 5E CF
	rol $6E5F.w,X		; 3E 5F 6E
	stz $802F.w,X		; 9E 2F 80
	clv		; B8
.INDEX 16
	rep #$9A		; C2 9A
	cmp #$9D.b		; C9 9D
	iny		; C8
	stz $9ECC.w		; 9C CC 9E
	tsb $1E.b		; 04 1E
	stx $0E.b		; 86 0E
	dec $0F.b		; C6 0F
	jsr $3000.w		; 20 00 30
	brk $D0.b		; 00 D0
	jsr $E010.w		; 20 10 E0
	sbc ($80.b,X)		; E1 80
	asl $18E1.w,X		; 1E E1 18
	sbc $003FC0.l,X		; FF C0 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$0000.w		; C0 00 00
	cmp ($C1.b,X)		; C1 C1
	ror $66.b		; 66 66
	trb $001C.w		; 1C 1C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $0C.b		; 00 0C
	beq  18.b		; F0 12
	jsr ($FE09.w,X)		; FC 09 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$08E0.w		; E0 E0 08
	php		; 08
	tsb $04.b		; 04 04
	and $18.b,S		; 23 18
	and $18.b,S		; 23 18
	adc $2C.b,X		; 75 2C
	adc ($0C.b),Y		; 71 0C
	dex		; CA
	rol $99.b,X		; 36 99
	adc [$6C.b]		; 67 6C
	ora ($26.b,S),Y		; 13 26
	ora $080F.w,Y		; 19 0F 08
	ora $002308.l		; 0F 08 23 00
	ora [$04.b]		; 07 04
	and $04.b,X		; 35 04
	.db $62, $02, $11		; 62 02 11
	ora ($18.b,X)		; 01 18
	brk $AE.b		; 00 AE
	and ($97.b),Y		; 31 97
	ora #$9F.b		; 09 9F
	ora ($9F.b,X)		; 01 9F
	ora $2F.b,S		; 03 2F
	and ($CE.b)		; 32 CE
	sbc ($1F.b,S),Y		; F3 1F
	beq  55.b		; F0 37
	sed		; F8
	cmp $04.b		; C5 04
	sbc $E304.w		; ED 04 E3
	cop $EF.b		; 02 EF
	tsb $05C7.w		; 0C C7 05
	ora [$14.b]		; 07 14
	dec $D6.b		; C6 D6
	ora ($39.b,X)		; 01 39
	rts		; 60

	cpy $DC70.w		; CC 70 DC
	bvs -40.b		; 70 D8
	bpl -104.b		; 10 98
	bpl -104.b		; 10 98
	brk $98.b		; 00 98
	inx		; E8
	bvs  -8.b		; 70 F8
	brk $38.b		; 00 38
	php		; 08
	plp		; 28
	php		; 08
	jsr $6000.w		; 20 00 60
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	bvs  -8.b		; 70 F8
	jsr $30E8.w		; 20 E8 30
	inx		; E8
	bmi -24.b		; 30 E8
	bmi -24.b		; 30 E8
	bmi -24.b		; 30 E8
	bmi -88.b		; 30 A8
	bvs 112.b		; 70 70
	brk $70.b		; 00 70
	bvc 112.b		; 50 70
	rti		; 40

	bvs  64.b		; 70 40
	bvs  64.b		; 70 40
	bvs  64.b		; 70 40
	bvs  64.b		; 70 40
	bvs   0.b		; 70 00
	ora ($0C.b,S),Y		; 13 0C
	ora $011F02.l,X		; 1F 02 1F 01
	asl $2507.w,X		; 1E 07 25
	ora $172F.w,Y		; 19 2F 17
	and $3F09.w,X		; 3D 09 3F
	phd		; 0B
	tsb $0A00.w		; 0C 00 0A
	asl A		; 0A
	ora #$09.b		; 09 09
	asl $07.b		; 06 07
	ora $1703.w,Y		; 19 03 17
	ora [$19.b]		; 07 19
	ora ($18.b,S),Y		; 13 18
	ora ($68.b,S),Y		; 13 68
	sta [$E9.b]		; 87 E9
	stx $1A.b		; 86 1A
	bit $BA.b		; 24 BA
	ldy $56.b		; A4 56
	rti		; 40

	lda ($A0.b)		; B2 A0
	bvc  64.b		; 50 40
	ldy #$8780.w		; A0 80 87
	sta [$04.b]		; 87 04
	tsb $84.b		; 04 84
	stz $00.b		; 64 00
	rts		; 60

	rti		; 40

	cpx #$E0A0.w		; E0 A0 E0
	rti		; 40

	cpx #$C000.w		; E0 00 C0
	ldy #$A040.w		; A0 40 A0
	cpy #$8040.w		; C0 40 80
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $1C61.w		; 2C 61 1C
	eor ($1C.b,X)		; 41 1C
	cmp ($1C.b,X)		; C1 1C
	cmp ($5C.b,X)		; C1 5C
	cmp ($5D.b,X)		; C1 5D
	cmp ($5D.b,X)		; C1 5D
	cmp ($5D.b,X)		; C1 5D
	cmp ($1E.b,X)		; C1 1E
	brk $3E.b		; 00 3E
	brk $7F.b		; 00 7F
	eor ($7F.b,X)		; 41 7F
	eor ($3F.b,X)		; 41 3F
	ora ($3E.b,X)		; 01 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $FB.b		; 00 FB
	jsr ($FDFA.w,X)		; FC FA FD
	ply		; 7A
	jsr ($F87A.w,X)		; FC 7A F8
	adc $E6.b		; 65 E6
	ora $A53A98.l,X		; 1F 98 3A A5
	adc $FC5090.l		; 6F 90 50 FC
	adc ($FD.b),Y		; 71 FD
	adc ($7D.b),Y		; 71 7D
	adc ($7D.b,X)		; 61 7D
	brk $7E.b		; 00 7E
	bpl 120.b		; 10 78
	and $60.b		; 25 60
	ora $05.b,X		; 15 05
	cpy #$8000.w		; C0 00 80
	rti		; 40

	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	cpy #$8000.w		; C0 00 80
	jsr $0000.w		; 20 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bpl  49.b		; 10 31
	trb $31.b		; 14 31
	trb $31.b		; 14 31
	tsb $0C21.w		; 0C 21 0C
	adc ($2C.b,X)		; 61 2C
	adc ($2C.b,X)		; 61 2C
	adc ($2C.b,X)		; 61 2C
	adc ($0E.b,X)		; 61 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	jsr $001E.w		; 20 1E 00
	asl $1E00.w,X		; 1E 00 1E
	brk $BF.b		; 00 BF
	cop $8F.b		; 02 8F
	adc $BF.b,S		; 63 BF
	ora $CF.b,S		; 03 CF
	ora [$3E.b]		; 07 3E
	sta [$99.b]		; 87 99
	brk $FD.b		; 00 FD
	stx $DEFD.w		; 8E FD DE
	rti		; 40

	ply		; 7A
	adc ($7B.b)		; 72 7B
	.db $42, $7B		; 42 7B
	rol $37.b,X		; 36 37
	cpy #$60C7.w		; C0 C7 60
	ror $00.b,X		; 76 00
	ldx $DE00.w		; AE 00 DE
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora #$0C.b		; 09 0C
	ora #$0C.b		; 09 0C
	tas		; 1B
	asl $1A.b		; 06 1A
	asl $08.b		; 06 08
	asl $0803.w,X		; 1E 03 08
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $18.b,S		; 03 18
	ora $18.b,S		; 03 18
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	sta [$2F.b],Y		; 97 2F
	sta $36.b,S		; 83 36
	phb		; 8B
	and ($9F.b),Y		; 31 9F
	bmi -113.b		; 30 8F
	plp		; 28
	sta $32.b		; 85 32
	txa		; 8A
	and $3596.w,X		; 3D 96 35
	dec $0F.b		; C6 0F
	cpy #$D10E.w		; C0 0E D1
	trb $C2.b		; 14 C2
	cop $D1.b		; 02 D1
	ora ($CA.b,X)		; 01 CA
	brk $C1.b		; 00 C1
	ora $C8.b,X		; 15 C8
	trb $E0.b		; 14 E0
	ora $B0AFD0.l,X		; 1F D0 AF B0
	eor $908FF0.l		; 4F F0 8F 90
	and $48AF70.l		; 2F 70 AF 48
	ora [$A9.b],Y		; 17 A9
	stx $00.b		; 86 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	jsr $80C0.w		; 20 C0 80
	beq  16.b		; F0 10
	bvs   0.b		; 70 00
	ora $FE.b		; 05 FE
	ora [$FE.b]		; 07 FE
	phd		; 0B
	inc $FE33.w,X		; FE 33 FE
	ora $FE.b,S		; 03 FE
	and [$DE.b]		; 27 DE
	eor $99BE.w		; 4D BE 99
	ror $0A0A.w,X		; 7E 0A 0A
	php		; 08
	php		; 08
	trb $14.b		; 14 14
	cpy $74CC.w		; CC CC 74
	stz $08.b,X		; 74 08
	php		; 08
	and ($32.b)		; 32 32
	stz $64.b		; 64 64
	and [$18.b]		; 27 18
	and $0402.w,X		; 3D 02 04
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $76.b		; 00 76
	sbc $7E81.w,Y		; F9 81 7E
	cmp $30D03F.l		; CF 3F D0 30
	cmp [$30.b],Y		; D7 30
	ora [$30.b],Y		; 17 30
	asl $30.b,X		; 16 30
	asl $30.b,X		; 16 30
	ora ($F0.b,X)		; 01 F0
	asl $106E.w		; 0E 6E 10
	bpl  15.b		; 10 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	asl $003E.w		; 0E 3E 00
	rol $08.b,X		; 36 08
	jmp ($0030.w,X)		; 7C 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	trb $0008.w		; 1C 08 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra 100.b		; 80 64
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra  32.b		; 80 20
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	dec $CE68.w		; CE 68 CE
	pla		; 68
	dec $CE68.w		; CE 68 CE
	pla		; 68
	dec $CC60.w		; CE 60 CC
	rts		; 60

	cpy $CC60.w		; CC 60 CC
	bit $04.b,X		; 34 04
	bit $04.b,X		; 34 04
	bit $04.b,X		; 34 04
	bit $04.b,X		; 34 04
	bit $04.b,X		; 34 04
	sec		; 38
	php		; 08
	sec		; 38
	php		; 08
	sec		; 38
	php		; 08
	sed		; F8
	tsb $BC.b		; 04 BC
	.db $42, $79		; 42 79
	bra 126.b		; 80 7E
	ldy #$E07C.w		; A0 7C E0
	plx		; FA
	stz $FA.b		; 64 FA
	stz $FA.b		; 64 FA
	cpx $A0.b		; E4 A0
	ldy #$A4E0.w		; A0 E0 A4
	inc $66.b		; E6 66
	inx		; E8
	pha		; 48
	inx		; E8
	php		; 08
	cpx $EC88.w		; EC 88 EC
	dey		; 88
	cpx $FA08.w		; EC 08 FA
	stz $FE.b		; 64 FE
	jsr $8070.w		; 20 70 80
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	cpx $6088.w		; EC 88 60
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

	clc		; 18
	cmp $18.b,S		; C3 18
	cmp $1C.b,S		; C3 1C
	cmp [$1C.b]		; C7 1C
	cmp [$1C.b]		; C7 1C
	dec $1C.b		; C6 1C
	dec $1C.b		; C6 1C
	dec $1C.b		; C6 1C
	dec $7E.b		; C6 7E
	.db $42, $7E		; 42 7E
	.db $42, $7A		; 42 7A
	.db $42, $7A		; 42 7A
	.db $42, $78		; 42 78
	rti		; 40

	sei		; 78
	rti		; 40

	sei		; 78
	rti		; 40

	sec		; 38
	brk $1C.b		; 00 1C
	dec $1C.b		; C6 1C
	lsr $20.b		; 46 20
	ror $38.b		; 66 38
	ror $7E38.w,X		; 7E 38 7E
	plp		; 28
	ror $6F28.w		; 6E 28 6F
	bit $67.b		; 24 67
	sec		; 38
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $14.b		; 04 14
	tsb $16.b		; 04 16
	asl $1A.b		; 06 1A
	cop $54.b		; 02 54
	sec		; 38
	mvn $74,$38		; 54 38 74
	clc		; 18
	jmp ($7C10.w,X)		; 7C 10 7C
	bmi 120.b		; 30 78
	jsr $70E8.w		; 20 E8 70
	beq   0.b		; F0 00
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	jsr $2030.w		; 20 30 20
	bmi   0.b		; 30 00
	bmi  16.b		; 30 10
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0F1600.l		; 0F 00 16 0F
	ora $290D.w,X		; 1D 0D 29
	ora $1F2B.w,Y		; 19 2B 1F
	and $1D.b		; 25 1D
	asl $001F.w		; 0E 1F 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	ora #$02.b		; 09 02
	brk $16.b		; 00 16
	bpl  20.b		; 10 14
	trb $12.b		; 14 12
	bpl   1.b		; 10 01
	ora ($44.b,X)		; 01 44
	ora $65.b,S		; 03 65
	ora $D8.b,S		; 03 D8
	and [$A1.b]		; 27 A1
	cmp $F8FFC6.l,X		; DF C6 FF F8
	sbc $00FFC0.l,X		; FF C0 FF 00
	sbc $020101.l,X		; FF 01 01 02
	cop $07.b		; 02 07
	ora [$4E.b]		; 07 4E
	lsr $3939.w		; 4E 39 39
	ora [$07.b]		; 07 07
	rol $F83E.w,X		; 3E 3E F8
	sed		; F8
	inx		; E8
	beq 116.b		; F0 74
	sed		; F8
	pea $14F8.w		; F4 F8 14
	sed		; F8
	trb $36E0.w		; 1C E0 36
	cpy $D03F.w		; CC 3F D0
	bvs -113.b		; 70 8F
	bpl  16.b		; 10 10
	dey		; 88
	dey		; 88
	php		; 08
	php		; 08
	inx		; E8
	inx		; E8
	cpy #$1CC0.w		; C0 C0 1C
	brk $10.b		; 00 10
	brk $03.b		; 00 03
	ora $0D.b,S		; 03 0D
	tsb $0E07.w		; 0C 07 0E
	ora $0E.b		; 05 0E
	ora $0D0D.w		; 0D 0D 0D
	ora $0D0D.w		; 0D 0D 0D
	cmp $2D0E.w		; CD 0E 2D
	dec $1E04.w		; CE 04 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	tsb $1E.b		; 04 1E
	tsb $1E.b		; 04 1E
	tsb $1E.b		; 04 1E
	tsb $0C1E.w		; 0C 1E 0C
	asl $070B.w,X		; 1E 0B 07
	phd		; 0B
	ora [$0B.b]		; 07 0B
	ora [$0B.b]		; 07 0B
	ora [$0B.b]		; 07 0B
	ora [$07.b]		; 07 07
	ora $05.b,S		; 03 05
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($D5.b,X)		; 01 D5
	ror A		; 6A
	nop		; EA
	stz $FCFE.w		; 9C FE FC
	inc $FFFC.w,X		; FE FC FF
	jsr ($F3F4.w,X)		; FC F4 F3
	sty $7C89.w		; 8C 89 7C
	adc $6A42.w,Y		; 79 42 6A
	ora ($9D.b,X)		; 01 9D
	bit #$FD.b		; 89 FD
	sbc $F0FD.w,Y		; F9 FD F0
	jsr ($FA82.w,X)		; FC 82 FA
	cop $FA.b		; 02 FA
	cop $FA.b		; 02 FA
	lda $089700.l,X		; BF 00 97 08
	adc $225F12.l		; 6F 12 5F 22
	adc $0B7602.l,X		; 7F 02 76 0B
	rol $3E07.w,X		; 3E 07 3E
	ora [$42.b]		; 07 42
	adc ($6A.b)		; 72 6A
	.db $62, $16, $04		; 62 16 04
	rol $14.b,X		; 36 14
	rol $34.b,X		; 36 34
	and $080F24.l		; 2F 24 0F 08
	ora $0AF708.l		; 0F 08 F7 0A
	sbc $D7BFA6.l,X		; FF A6 BF D7
	lda $EFDFDF.l,X		; BF DF DF EF
	sbc ($5E.b,X)		; E1 5E
	sbc $7EFF72.l,X		; FF 72 FF 7E
	plb		; AB
	lda ($B7.b,X)		; A1 B7
	ora ($FF.b),Y		; 11 FF
	plp		; 28
	sbc $10FF20.l,X		; FF 20 FF 10
	inc $FFA0.w,X		; FE A0 FF
	sta $80FE.w		; 8D FE 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $041F00.l,X		; 1F 00 1F 04
	ora [$02.b]		; 07 02
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $02.b		; 06 02
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$D800.w		; C0 00 D8
	brk $A8.b		; 00 A8
	bne  -8.b		; D0 F8
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bne   0.b		; D0 00
	bne -112.b		; D0 90
	rol $94D4.w		; 2E D4 94
	adc $0E7C.w		; 6D 7C 0E
	sbc $D410.w,Y		; F9 10 D4
	stz $E5.b		; 64 E5
	sta $AB.b,X		; 95 AB
	asl A		; 0A
	sta $000369.l		; 8F 69 03 00
	asl A		; 0A
	php		; 08
	ora ($00.b,X)		; 01 00
	and ($24.b,S),Y		; 33 24
	sbc ($8E.b,X)		; E1 8E
	sty $1E.b		; 84 1E
	cop $5E.b		; 02 5E
	php		; 08
	adc $C11E.w,Y		; 79 1E C1
	and #$8F.b		; 29 8F
	bne  30.b		; D0 1E
	jsl $F6C23E.l		; 22 3E C2 F6
	bra -28.b		; 80 E4
	bra  68.b		; 80 44
	sbc ($04.b,X)		; E1 04
	adc ($41.b),Y		; 71 41
	pea $EB84.w		; F4 84 EB
	asl A		; 0A
	cmp ($10.b),Y		; D1 10
	and ($20.b,X)		; 21 20
	eor $40.b,S		; 43 40
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ldy #$8030.w		; A0 30 80
	bmi   0.b		; 30 00
	bmi  64.b		; 30 40
	rts		; 60

	brk $60.b		; 00 60
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	cpy #$E000.w		; C0 00 E0
	jsr $20E0.w		; 20 E0 20
	bra   0.b		; 80 00
	cpy #$4040.w		; C0 40 40
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	jmp $305C38.l		; 5C 38 5C 30
	jmp $187430.l		; 5C 30 74 18
	stz $18.b,X		; 74 18
	stz $18.b,X		; 74 18
	mvn $D4,$38		; 54 38 D4
	sec		; 38
	sec		; 38
	brk $38.b		; 00 38
	php		; 08
	sec		; 38
	php		; 08
	sec		; 38
	jsr $2038.w		; 20 38 20
	sec		; 38
	jsr $0038.w		; 20 38 00
	sec		; 38
	brk $DC.b		; 00 DC
	bmi -36.b		; 30 DC
	bmi  -4.b		; 30 FC
	bpl  60.b		; 10 3C
	php		; 08
	bit $2C18.w		; 2C 18 2C
	bpl  22.b		; 10 16
	php		; 08
	asl $3800.w,X		; 1E 00 38
	php		; 08
	sec		; 38
	php		; 08
	clc		; 18
	php		; 08
	clc		; 18
	bpl  24.b		; 10 18
	brk $18.b		; 00 18
	php		; 08
	tsb $0004.w		; 0C 04 00
	brk $2C.b		; 00 2C
	sbc ($2C.b,X)		; E1 2C
	sbc ($2C.b,X)		; E1 2C
	sbc ($2C.b,X)		; E1 2C
	sbc ($2E.b,X)		; E1 2E
	adc $2E.b,S		; 63 2E
	adc $2E.b,S		; 63 2E
	adc $0E.b,S		; 63 0E
	adc $5E.b,S		; 63 5E
	rti		; 40

	lsr $5E40.w,X		; 5E 40 5E
	rti		; 40

	lsr $1C40.w,X		; 5E 40 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	jsr $0F18.w		; 20 18 0F
	bpl  15.b		; 10 0F
	bpl  15.b		; 10 0F
	bpl  15.b		; 10 0F
	php		; 08
	ora [$08.b]		; 07 08
	ora [$03.b]		; 07 03
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0C.b]		; 07 0C
	tsb $0808.w		; 0C 08 08
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($FE.b,X)		; 01 FE
	ror $3080.w,X		; 7E 80 30
	cpy #$F008.w		; C0 08 F0
	asl $F8.b		; 06 F8
	ora ($FE.b,X)		; 01 FE
	brk $FF.b		; 00 FF
	bra 127.b		; 80 7F
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	clc		; 18
	clc		; 18
	cmp ($3F.b,X)		; C1 3F
	.db $42, $3B		; 42 3B
	bcc 119.b		; 90 77
	ldx #$8C7D.w		; A2 7D 8C
	adc ($91.b,S),Y		; 73 91
	ror A		; 6A
	eor $4BAA.w,Y		; 59 AA 4B
	bcs  14.b		; B0 0E
	asl $191D.w		; 0E 1D 19
	bit $0924.w		; 2C 24 09
	ora #$62.b		; 09 62
	.db $62, $4C, $48		; 62 4C 48
	ora $00.b		; 05 00
	ora [$00.b]		; 07 00
	ora $EE0FEE.l		; 0F EE 0F EE
	ora $CE3FEE.l		; 0F EE 3F CE
	and $AC57C0.l,X		; 3F C0 57 AC
	lda $AE5150.l		; AF 50 51 AE
	cpy $CCDE.w		; CC DE CC
	dec $9E8C.w,X		; DE 8C 9E
	tsb $900E.w		; 0C 0E 90
	bcc  46.b		; 90 2E
	cop $50.b		; 02 50
	brk $8E.b		; 00 8E
	brk $1E.b		; 00 1E
	ora ($0A.b,X)		; 01 0A
	ora $0A.b,X		; 15 0A
	ora ($0A.b),Y		; 11 0A
	ora ($0A.b),Y		; 11 0A
	bpl  10.b		; 10 0A
	ora $1F.b,X		; 15 1F
	jsr $4A85.w		; 20 85 4A
	brk $01.b		; 00 01
	tsb $0D.b		; 04 0D
	tsb $0D.b		; 04 0D
	tsb $0D.b		; 04 0D
	tsb $0D.b		; 04 0D
	tsb $0D.b		; 04 0D
	brk $00.b		; 00 00
	dec A		; 3A
	sec		; 38
	plx		; FA
	sbc $FDFE.w,X		; FD FE FD
	jsr ($FEFF.w,X)		; FC FF FE
	sbc $0D0B.w,X		; FD 0B 0D
	and [$F2.b],Y		; 37 F2
	sbc $A25F0A.l,X		; FF 0A 5F A2
	bvs  -4.b		; 70 FC
	sei		; 78
	jsr ($FE78.w,X)		; FC 78 FE
	ora #$FD.b		; 09 FD
	brk $FC.b		; 00 FC
	cop $F8.b		; 02 F8
	cop $08.b		; 02 08
	ldx #$1F00.w		; A2 00 1F
	asl $0F.b		; 06 0F
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora #$03.b		; 09 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	bit $19FE.w,X		; 3C FE 19
	jsr ($F803.w,X)		; FC 03 F8
	ora [$1E.b]		; 07 1E
	sbc $2CE120.l,X		; FF 20 E1 2C
	sbc ($2C.b,X)		; E1 2C
	sbc ($7E.b,X)		; E1 7E
	.db $42, $7C		; 42 7C
	stz $B8.b		; 64 B8
	clv		; B8
	asl $06.b		; 06 06
	cpx #$DEE0.w		; E0 E0 DE
	cpy #$405E.w		; C0 5E 40
	lsr $0140.w,X		; 5E 40 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	ora ($05.b,X)		; 01 05
	ora ($07.b,X)		; 01 07
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora $D8.b,S		; 03 D8
	rts		; 60

	pla		; 68
	bcs -24.b		; B0 E8
	bmi -16.b		; 30 F0
	ldy #$20F0.w		; A0 F0 20
	beq -64.b		; F0 C0
	bvc   0.b		; 50 00
	beq -64.b		; F0 C0
	beq -112.b		; F0 90
	beq  64.b		; F0 40
	bvs  64.b		; 70 40
	ldy #$2080.w		; A0 80 20
	brk $C0.b		; 00 C0
	cpy #$A000.w		; C0 00 A0
	cpy #$0EC0.w		; C0 C0 0E
	adc $0C.b,S		; 63 0C
	adc $0C.b,S		; 63 0C
	adc $00.b,S		; 63 00
	adc $2C.b,S		; 63 2C
	adc $08CE08.l		; 6F 08 CE 08
	dec $CE08.w		; CE 08 CE
	bit $3E20.w,X		; 3C 20 3E
	jsl $3E223E.l		; 22 3E 22 3E
	jsl $740212.l		; 22 12 02 74
	mvp $44,$74		; 44 74 44
	stz $44.b,X		; 74 44
	cli		; 58
	dec $DE70.w,X		; DE 70 DE
	bvs -36.b		; 70 DC
	bvs -36.b		; 70 DC
	jsr $208C.w		; 20 8C 20
	sty $8C20.w		; 8C 20 8C
	jsr $2488.w		; 20 88 24
	tsb $2C.b		; 04 2C
	tsb $0828.w		; 0C 28 08
	plp		; 28
	php		; 08
	sei		; 78
	php		; 08
	sei		; 78
	php		; 08
	sei		; 78
	php		; 08
	bvs   0.b		; 70 00
	jsr $2088.w		; 20 88 20
	dey		; 88
	jsr $2088.w		; 20 88 20
	dey		; 88
	jsr $3088.w		; 20 88 30
	tya		; 98
	cpy #$F818.w		; C0 18 F8
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $30.b		; 00 30
	bpl  64.b		; 10 40
	rti		; 40

	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	rti		; 40

	rts		; 60

	brk $20.b		; 00 20
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$8040.w		; C0 40 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	jsr $3080.w		; 20 80 30
	cpx #$C030.w		; E0 30 C0
	bpl -64.b		; 10 C0
	bpl -64.b		; 10 C0
	bpl -32.b		; 10 E0
	bmi -32.b		; 30 E0
	bmi -64.b		; 30 C0
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $9C.b		; 00 9C
	lsr $4EBC.w		; 4E BC 4E
	ldy $46.b,X		; B4 46
	bit $C6.b,X		; 34 C6
	stz $C6.b,X		; 74 C6
	stz $C6.b,X		; 74 C6
	stz $C6.b,X		; 74 C6
	bmi -122.b		; 30 86
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	sei		; 78
	rti		; 40

	sei		; 78
	rti		; 40

	sec		; 38
	brk $B8.b		; 00 B8
	bra -72.b		; 80 B8
	bra  -4.b		; 80 FC
	sty $B0.b		; 84 B0
	stx $B8.b		; 86 B8
	stx $8EE8.w		; 8E E8 8E
	inx		; E8
	stx $0C68.w		; 8E 68 0C
	pla		; 68
	tsb $0C40.w		; 0C 40 0C
	bne -100.b		; D0 9C
	jmp ($7404.w,X)		; 7C 04 74
	tsb $74.b		; 04 74
	tsb $74.b		; 04 74
	tsb $F0.b		; 04 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	pla		; 68
	php		; 08
	bcc  28.b		; 90 1C
	ldy $38.b		; A4 38
	cpx $78.b		; E4 78
.ACCU 16
.INDEX 16
	rep #$7C		; C2 7C
	.db $82, $7C, $82		; 82 7C 82
	jmp ($748A.w,X)		; 7C 8A 74
	tsb $F8.b		; 04 F8
	pla		; 68
	php		; 08
	bvc  16.b		; 50 10
	bpl  16.b		; 10 10
	bit $30.b,X		; 34 30
	jmp ($6C60.w)		; 6C 60 6C
	rts		; 60

	mvn $B8,$40		; 54 40 B8
	bra  44.b		; 80 2C
	bne  16.b		; D0 10
	cpx #$C030.w		; E0 30 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
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
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7E.b		; 00 7E
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	ora ($1B.b,X)		; 01 1B
	ora $27.b		; 05 27
	inc A		; 1A
	ror $0004.w,X		; 7E 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	cop $1E.b		; 02 1E
	tsb $0C.b		; 04 0C
	php		; 08
	tda		; 7B
	lda $FF.b,X		; B5 FF
	adc ($BF.b),Y		; 71 BF
	rti		; 40

	adc $FF3F80.l,X		; 7F 80 3F FF
	and ($E1.b,X)		; 21 E1
	and $2DE1.w		; 2D E1 2D
	sbc ($FF.b,X)		; E1 FF
	lsr A		; 4A
	tda		; 7B
	asl A		; 0A
	tda		; 7B
	tsa		; 3B
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	lsr $5E40.w,X		; 5E 40 5E
	rti		; 40

	lsr $F840.w,X		; 5E 40 F8
	cpy #$E0D0.w		; C0 D0 E0
	cpx #$8000.w		; E0 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -32.b		; 80 E0
	jsr $00E0.w		; 20 E0 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $78FFFF.l,X		; FF FF FF 78
	tda		; 7B
	bra  87.b		; 80 57
	brk $57.b		; 00 57
	jsr $A853.w		; 20 53 A8
	jsr ($3302.w,X)		; FC 02 33
	cpy $FF7C.w		; CC 7C FF
	sei		; 78
	sei		; 78
	sty $87.b		; 84 87
	tay		; A8
	lda $ACAFA8.l		; AF A8 AF AC
	lda $800303.l		; AF 03 03 80
	bra  80.b		; 80 50
	ldx $F4.b,Y		; B6 F4
	rol $DC.b,X		; 36 DC
	rol $0EF4.w,X		; 3E F4 0E
	ldy $FC06.w,X		; BC 06 FC
	.db $42, $FE		; 42 FE
	brk $F2.b		; 00 F2
	tsb $A42C.w		; 0C 2C A4
	php		; 08
	brk $20.b		; 00 20
	jsr $0808.w		; 20 08 08
	bpl  80.b		; 10 50
	clc		; 18
	cli		; 58
	trb $2C1C.w		; 1C 1C 2C
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $112100.l,X		; 1F 00 21 11
	tad		; 5B
	and $403F60.l,X		; 3F 60 3F 40
	and $000000.l,X		; 3F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	bpl  36.b		; 10 24
	bit $1F.b		; 24 1F
	ora $203F3F.l,X		; 1F 3F 3F 20
	brk $41.b		; 00 41
	brk $5E.b		; 00 5E
	and ($59.b,X)		; 21 59
	and $801FE7.l,X		; 3F E7 1F 80
	bra 127.b		; 80 7F
	sbc $00FF1C.l,X		; FF 1C FF 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $00.b		; 02 00
	brk $7F.b		; 00 7F
	brk $80.b		; 00 80
	bra -29.b		; 80 E3
	sbc $1D.b,S		; E3 1D
	asl $1DFE.w		; 0E FE 1D
	stp		; DB
	sbc $322C.w		; ED 2C 32
	ror $E672.w		; 6E 72 E6
	plx		; FA
	stx $FA.b		; 86 FA
	ora $FB.b		; 05 FB
	tsb $0E.b		; 04 0E
	ora #$201D.w		; 09 1D 20
	bit $12D3.w		; 2C D3 12
	sta ($10.b),Y		; 91 10
	ora ($10.b),Y		; 11 10
	adc ($70.b),Y		; 71 70
.ACCU 8
	sep #$E2		; E2 E2
	inx		; E8
	beq -24.b		; F0 E8
	bvs -96.b		; 70 A0
	bvs 112.b		; 70 70
	bcs -16.b		; B0 F0
	bcs 120.b		; B0 78
	sec		; 38
	sei		; 78
	sec		; 38
	sei		; 78
	bit $F040.w,X		; 3C 40 F0
	rti		; 40

	bvs   0.b		; 70 00
	sei		; 78
	ldy #$30B8.w		; A0 B8 30
	sec		; 38
	bcc  60.b		; 90 3C
	bcc  60.b		; 90 3C
	tya		; 98
	rol $001F.w,X		; 3E 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	ora $033F01.l		; 0F 01 3F 03
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	ora ($05.b,X)		; 01 05
	ora $02.b,S		; 03 02
	ora $7E810C.l		; 0F 0C 81 7E
	sta ($7E.b,X)		; 81 7E
	sbc ($0D.b,S),Y		; F3 0D
	adc [$A1.b]		; 67 A1
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FDFA.w,X		; FD FA FD
	sbc ($68.b)		; F2 68
	pla		; 68
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	bra   0.b		; 80 00
	brk $FE.b		; 00 FE
	inc $04FE.w,X		; FE FE 04
	inc $E80C.w,X		; FE 0C E8
	cmp $4C.b,S		; C3 4C
	adc [$14.b]		; 67 14
	lsr $30.b		; 46 30
	asl $F8.b		; 06 F8
	inc $1498.w		; EE 98 14
	beq -20.b		; F0 EC
	cld		; D8
	bmi  30.b		; 30 1E
	cop $9A.b		; 02 9A
	cop $B8.b		; 02 B8
	brk $1C.b		; 00 1C
	cpy $64.b		; C4 64
	cpx $00.b		; E4 00
	bvs  96.b		; 70 60
	inx		; E8
	brk $30.b		; 00 30
	sed		; F8
	rts		; 60

	sed		; F8
	bvc -24.b		; 50 E8
	bvc -24.b		; 50 E8
	bvc -24.b		; 50 E8
	bvc -24.b		; 50 E8
	bvc -24.b		; 50 E8
	bvc -24.b		; 50 E8
	bvc  96.b		; 50 60
	brk $70.b		; 00 70
	jsr $2070.w		; 20 70 20
	bvs  32.b		; 70 20
	bvs  32.b		; 70 20
	bvs  32.b		; 70 20
	bvs  32.b		; 70 20
	bvs  32.b		; 70 20
	inx		; E8
	bvc -24.b		; 50 E8
	bvc -24.b		; 50 E8
	bvc -24.b		; 50 E8
	bvc 104.b		; 50 68
	bpl 120.b		; 10 78
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $70.b		; 00 70
	jsr $2070.w		; 20 70 20
	bvc   0.b		; 50 00
	bvc   0.b		; 50 00
	bpl   0.b		; 10 00
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	brk $7C.b		; 00 7C
	sec		; 38
	bit $3F08.w,X		; 3C 08 3F
	brk $2F.b		; 00 2F
	trb $1F.b		; 14 1F
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	bpl  24.b		; 10 18
	clc		; 18
	trb $0C08.w		; 1C 08 0C
	php		; 08
	ora $001F00.l,X		; 1F 00 1F 00
	asl $3F00.w,X		; 1E 00 3F
	brk $77.b		; 00 77
	and #$7F.b		; 29 7F
	and ($BF.b,X)		; 21 BF
	adc #$FF.b		; 69 FF
	adc [$0C.b],Y		; 77 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $252C.w		; 0C 2C 25
	and $25.b		; 25 25
	and #$69.b		; 29 69
	rol $77.b,X		; 36 77
	and $0CE1.w		; 2D E1 0C
	adc ($0C.b,X)		; 61 0C
	adc ($0C.b,X)		; 61 0C
	adc ($0C.b,X)		; 61 0C
	adc ($0C.b,X)		; 61 0C
	and ($0C.b,X)		; 21 0C
	and ($0C.b,X)		; 21 0C
	and ($5E.b,X)		; 21 5E
	rti		; 40

	and $213F21.l,X		; 3F 21 3F 21
	and $213F21.l,X		; 3F 21 3F 21
	ora $011F01.l,X		; 1F 01 1F 01
	ora $800001.l,X		; 1F 01 00 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($28.b),Y		; 51 28
	tyx		; BB
	rti		; 40

	jsr ($FE00.w,X)		; FC 00 FE
	ora ($DF.b,X)		; 01 DF
	ldx #$D3BF.w		; A2 BF D3
	tyx		; BB
	sbc $BB.b,X		; F5 BB
	adc $AE.b,X		; 75 AE
	sta $6B2764.l		; 8F 64 27 6B
	rtl		; 6B

	cmp $FAD9.w,Y		; D9 D9 FA
	cli		; 58
	xce		; FB
	plp		; 28
	sbc $8AFF0A.l,X		; FF 0A FF 8A
	cmp $7F22.w,X		; DD 22 7F
	brk $F7.b		; 00 F7
	pha		; 48
	sbc $BF26.w,Y		; F9 26 BF
	bvs -67.b		; 70 BD
	dec $BCDE.w,X		; DE DE BC
	jsr ($3288.w,X)		; FC 88 32
	bcc -98.b		; 90 9E
	stz $266E.w,X		; 9E 6E 26
	ror $50.b,X		; 76 50
	sed		; F8
	dey		; 88
	inc $FC20.w,X		; FE 20 FC
	rti		; 40

	cld		; D8
	bvc -32.b		; 50 E0
	adc $80FF80.l,X		; 7F 80 FF 80
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $437C83.l,X		; FF 83 7C 43
	bit $1F20.w,X		; 3C 20 1F
	bpl  16.b		; 10 10
	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	stx $998E.w		; 8E 8E 99
	sta $0000.w,Y		; 99 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc ($0E.b),Y		; F1 0E
	asl $C201.w		; 0E 01 C2
	ora ($7F.b,X)		; 01 7F
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	sbc $09.b,X		; F5 09
	inc $12.b,X		; F6 12
	sbc $62EF16.l		; EF 16 EF 62
	sta $007F80.l,X		; 9F 80 7F 00
	sbc $81FF00.l,X		; FF 00 FF 81
	sta ($04.b,X)		; 81 04
	tsb $04.b		; 04 04
	tsb $09.b		; 04 09
	ora #$0D.b		; 09 0D
	ora $1F1F.w		; 0D 1F 1F
	xce		; FB
	xce		; FB
	plx		; FA
	plx		; FA
	jmp.w [$5CBC]		; DC BC 5C
	ldy $3EDC.w,X		; BC DC 3E
	dec $7F20.w,X		; DE 20 7F
	sty $807F.w		; 8C 7F 80
	adc $40BF96.l		; 6F 96 BF 40
	clc		; 18
	rol $BE98.w,X		; 3E 98 BE
	trb $003F.w		; 1C 3F 00
	and ($1E.b,X)		; 21 1E
	ora ($00.b)		; 12 00
	brk $1E.b		; 00 1E
	php		; 08
	rti		; 40

	rti		; 40

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
	sbc $00FF0F.l,X		; FF 0F FF 00
	sta [$00.b]		; 87 00
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	and $010130.l,X		; 3F 30 01 01
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	sbc $FDF2.w,X		; FD F2 FD
	sbc ($FF.b)		; F2 FF
	ora $C1FF.w,Y		; 19 FF C1
	sbc $0100FF.l,X		; FF FF 00 01
	jmp ($FEFE.w,X)		; 7C FE FE
	sbc $FE0CFE.l,X		; FF FE 0C FE
	tsb $253D.w		; 0C 3D 25
	cmp ($C1.b,X)		; C1 C1
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $FF.b		; 00 FF
	sed		; F8
	sbc $D0D068.l,X		; FF 68 D0 D0
	cpx #$E0D0.w		; E0 D0 E0
	ldy #$B0D8.w		; A0 D8 B0
	cld		; D8
	bvc -72.b		; 50 B8
	rts		; 60

	plp		; 28
	rts		; 60

	ldy $D000.w		; AC 00 D0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bpl -48.b		; 10 D0
	brk $C0.b		; 00 C0
	jsr $10A0.w		; 20 A0 10
	bra  24.b		; 80 18
	dey		; 88
	ora [$00.b]		; 07 00
	cop $04.b		; 02 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	cop $04.b		; 02 04
	ora $080400.l		; 0F 00 04 08
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	ora $07.b,S		; 03 07
	asl $08.b		; 06 08
	phd		; 0B
	tsb $1D.b		; 04 1D
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	ora $0F.b,S		; 03 0F
	ora [$0F.b]		; 07 0F
	ora $01.b,S		; 03 01
	ora [$00.b]		; 07 00
	ora $0A.b,S		; 03 0A
	asl A		; 0A
	tsb $0D0C.w		; 0C 0C 0D
	ora $0003.w		; 0D 03 00
	ora [$00.b]		; 07 00
	ora [$04.b]		; 07 04
	ora [$01.b]		; 07 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
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
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  12.b		; 80 0C
	and ($0C.b,X)		; 21 0C
	and ($1A.b,X)		; 21 1A
	and ($12.b,S),Y		; 33 12
	and ($1E.b,S),Y		; 33 1E
	and $1C3F1C.l,X		; 3F 1C 3F 1C
	adc $1E6E0C.l,X		; 7F 0C 6E 1E
	brk $1E.b		; 00 1E
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $22.b		; 02 22
	jsl $2C2030.l		; 22 30 20 2C
	ror $4614.w		; 6E 14 46
	trb $C6.b		; 14 C6
	bit $C6.b,X		; 34 C6
	bvs -58.b		; 70 C6
	bvs -58.b		; 70 C6
	bvs -60.b		; 70 C4
	plp		; 28
	sty $0010.w		; 8C 10 00
	sec		; 38
	brk $78.b		; 00 78
	rti		; 40

	sei		; 78
	rti		; 40

	bit $3C04.w,X		; 3C 04 3C
	tsb $38.b		; 04 38
	brk $70.b		; 00 70
	brk $28.b		; 00 28
	sty $8C20.w		; 8C 20 8C
	jsr $208C.w		; 20 8C 20
	dey		; 88
	bpl -104.b		; 10 98
	bpl -104.b		; 10 98
	rti		; 40

	cld		; D8
	cpx #$7018.w		; E0 18 70
	brk $78.b		; 00 78
	php		; 08
	sei		; 78
	php		; 08
	bvs   0.b		; 70 00
	rts		; 60

	brk $60.b		; 00 60
	brk $30.b		; 00 30
	bpl  16.b		; 10 10
	bpl   4.b		; 10 04
	cop $03.b		; 02 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	brk $0B.b		; 00 0B
	ora $15.b		; 05 15
	ora #$29.b		; 09 29
	ora $01.b,X		; 15 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($04.b,X)		; 01 04
	ora ($09.b,X)		; 01 09
	ora $11.b,S		; 03 11
	ora [$36.b]		; 07 36
	sta ($D9.b,S),Y		; 93 D9
	eor ($12.b,X)		; 41 12
	cmp $A0EF20.l		; CF 20 EF A0
	asl $5057.w,X		; 1E 57 50
	lsr $5340.w		; 4E 40 53
	eor ($F4.b,S),Y		; 53 F4
	sta $013E.w,Y		; 99 3E 01
	adc $5E4D.w,X		; 7D 4D 5E
	lsr $4001.w		; 4E 01 40
	ora $E05FE0.l		; 0F E0 5F E0
	jmp $02E0.w		; 4C E0 02
	tsb $07.b		; 04 07
	brk $06.b		; 00 06
	ora ($1B.b,X)		; 01 1B
	tsb $7E.b		; 04 7E
	ora ($7B.b,X)		; 01 7B
	tsb $77.b		; 04 77
	ora #$3F.b		; 09 3F
	ora [$01.b]		; 07 01
	ora $00.b,S		; 03 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora $1F.b,S		; 03 1F
	asl $181C.w,X		; 1E 1C 18
	tas		; 1B
	ora ($07.b)		; 12 07
	brk $FF.b		; 00 FF
	ora $57.b,S		; 03 57
	tay		; A8
	lda [$58.b]		; A7 58
	tad		; 5B
	ldy $AE.b		; A4 AE
	eor ($FE.b),Y		; 51 FE
	ora $ED.b		; 05 ED
	stz $4EBD.w,X		; 9E BD 4E
	cop $03.b		; 02 03
	inx		; E8
	rti		; 40

	phx		; DA
	.db $82, $B6, $12		; 82 B6 12
	adc [$26.b],Y		; 77 26
	sbc $41DFEA.l		; EF EA DF 41
	cmp $0E0291.l,X		; DF 91 02 0E
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $1C.b		; E5 1C
.INDEX 8
	sep #$1E		; E2 1E
	adc ($1E.b)		; 72 1E
	adc ($0F.b,X)		; 61 0F
	sbc ($8F.b,X)		; E1 8F
	cpx #$8B.b		; E0 8B
	cpx #$8B.b		; E0 8B
	bra -119.b		; 80 89
	xba		; EB
	php		; 08
	sbc $14.b,X		; F5 14
	sbc $04.b		; E5 04
	sbc ($02.b)		; F2 02
	adc ($02.b)		; 72 02
	adc ($01.b),Y		; 71 01
	adc ($01.b),Y		; 71 01
	bvs   0.b		; 70 00
	sed		; F8
	brk $C4.b		; 00 C4
	sed		; F8
	sbc ($FC.b)		; F2 FC
	asl A		; 0A
	jsr ($E01F.w,X)		; FC 1F E0
	ora [$E8.b],Y		; 17 E8
	ora $F708E0.l,X		; 1F E0 08 F7
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	php		; 08
	php		; 08
	pea $00F4.w		; F4 F4 00
	brk $CE.b		; 00 CE
	cpy $28.b		; C4 28
	plp		; 28
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	bpl -32.b		; 10 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	asl $01.b		; 06 01
	ora #$07.b		; 09 07
	bpl  15.b		; 10 0F
	bpl  15.b		; 10 0F
	bpl  15.b		; 10 0F
	php		; 08
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $07.b		; 02 07
	ora [$06.b]		; 07 06
	asl $06.b		; 06 06
	asl $02.b		; 06 02
	cop $20.b		; 02 20
	ora $000FF1.l,X		; 1F F1 0F 00
	sbc $00FFC0.l,X		; FF C0 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $07FC03.l,X		; FF 03 FC 07
	ora [$02.b]		; 07 02
	cop $7F.b		; 02 7F
	adc $873030.l,X		; 7F 30 30 87
	sta [$3C.b]		; 87 3C
	bit $7070.w,X		; 3C 70 70
	rts		; 60

	rts		; 60

	sbc $FF7FFF.l,X		; FF FF 7F FF
	adc $7FBFFF.l,X		; 7F FF BF 7F
	lda $BF5F7F.l,X		; BF 7F 5F BF
	eor ($81.b,X)		; 41 81
	lsr $7FBE.w,X		; 5E BE 7F
	sbc $3FFF3F.l,X		; FF 3F FF 3F
	sbc $1F7F1F.l,X		; FF 1F 7F 1F
	adc $80BF81.l,X		; 7F 81 BF 80
	lda $A0BF86.l,X		; BF 86 BF A0
	ldy #$B0.b		; A0 B0
	clv		; B8
	lda $BF9FBF.l,X		; BF BF 9F BF
	lda $C08080.l,X		; BF 80 80 C0
	cpy #$C0.b		; C0 C0
	rts		; 60

	rti		; 40

	brk $F8.b		; 00 F8
	jsr $1FFF.w		; 20 FF 1F
	sbc $00FF00.l,X		; FF 00 FF 00
	cpy #$80.b		; C0 80
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$38.b		; C0 38
	inc $38.b		; E6 38
	inc $0C.b		; E6 0C
	ror $18.b		; 66 18
	adc ($1C.b)		; 72 1C
	and ($1C.b)		; 32 1C
	and ($04.b)		; 32 04
	and ($04.b)		; 32 04
	ora ($5C.b,S),Y		; 13 5C
	mvp $44,$5C		; 44 5C 44
	sec		; 38
	jsr $202C.w		; 20 2C 20
	tsb $0C00.w		; 0C 00 0C
	brk $1C.b		; 00 1C
	bpl  14.b		; 10 0E
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	sed		; F8
	inx		; E8
	iny		; C8
	cld		; D8
	inx		; E8
	inx		; E8
	bmi  56.b		; 30 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	beq  -4.b		; F0 FC
	cpy #$DC.b		; C0 DC
	rti		; 40

	cpx $3400.w		; EC 00 34
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	ora $83.b		; 05 83
	asl $1FA5.w,X		; 1E A5 1F
	iny		; C8
	sbc $05CA00.l		; EF 00 CA 05
	adc [$78.b]		; 67 78
	brk $F8.b		; 00 F8
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	tsb $01.b		; 04 01
	rol A		; 2A
	cop $F5.b		; 02 F5
	ora $F5.b		; 05 F5
	brk $98.b		; 00 98
	clc		; 18
	cpy #$C0.b		; C0 C0
	cpx #$40.b		; E0 40
	cpx #$80.b		; E0 80
	cpx #$00.b		; E0 00
	bvc -96.b		; 50 A0
	bne  32.b		; D0 20
	bne  32.b		; D0 20
	sed		; F8
	bra  -8.b		; 80 F8
	bra   0.b		; 80 00
	rti		; 40

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ldy #$00.b		; A0 00
	ldy #$80.b		; A0 80
	ldy #$80.b		; A0 80
	ldy #$20.b		; A0 20
	ldy #$20.b		; A0 20
	tsa		; 3B
	ora $59.b		; 05 59
	rol $78.b,X		; 36 78
	ora [$BD.b]		; 07 BD
	adc $BD.b,S		; 63 BD
	adc $E4.b,S		; 63 E4
	ora $02.b,S		; 03 02
	brk $02.b		; 00 02
	ora ($10.b,X)		; 01 10
	ora $30.b,X		; 15 30
	asl $20.b		; 06 20
	and [$60.b]		; 27 60
	ora $60.b,S		; 03 60
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($E8.b,X)		; 01 E8
	eor $ECA35C.l,X		; 5F 5C A3 EC
	clc		; 18
	inc $FFF8.w,X		; FE F8 FF
	sed		; F8
	php		; 08
	brk $7F.b		; 00 7F
	beq  -1.b		; F0 FF
	sbc $5616.w,Y		; F9 16 56
	ora ($A1.b,X)		; 01 A1
	ora $1B.b,S		; 03 1B
	ora ($FB.b,X)		; 01 FB
	beq  -8.b		; F0 F8
	ora [$F7.b]		; 07 F7
	brk $F6.b		; 00 F6
	sei		; 78
	sbc $061F.w,Y		; F9 1F 06
	asl $0701.w		; 0E 01 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7D.b		; 00 7D
	txy		; 9B
	xce		; FB
	and $77FB.w,X		; 3D FB 77
	sbc [$3B.b],Y		; F7 3B
	sbc [$08.b],Y		; F7 08
	and $7010C7.l,X		; 3F C7 10 70
	ora [$70.b],Y		; 17 70
	lda $427F24.l,X		; BF 24 7F 42
	sbc $C4FF88.l,X		; FF 88 FF C4
	sec		; 38
	bmi   0.b		; 30 00
	brk $2F.b		; 00 2F
	jsr $202F.w		; 20 2F 20
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	ora ($06.b,X)		; 01 06
	ora $06.b,S		; 03 06
	ora ($0C.b,X)		; 01 0C
	ora [$0C.b]		; 07 0C
	ora $08.b,S		; 03 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	beq  -7.b		; F0 F9
	rti		; 40

	adc $7940.w,Y		; 79 40 79
	rti		; 40

	bvs  64.b		; 70 40
	bvs  64.b		; 70 40
	bvs   0.b		; 70 00
	rts		; 60

	brk $60.b		; 00 60
	brk $00.b		; 00 00
	bcs  48.b		; B0 30
	bcs  48.b		; B0 30
	ldy #$20.b		; A0 20
	ldy #$20.b		; A0 20
	ldy #$20.b		; A0 20
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	sbc ($0F.b,S),Y		; F3 0F
	sbc [$1F.b]		; E7 1F
	.db $62, $1F, $41		; 62 1F 41
	rol $3E41.w,X		; 3E 41 3E
	eor ($2D.b)		; 52 2D
	eor $152022.l,X		; 5F 22 20 15
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	trb $161C.w		; 1C 1C 16
	asl $34.b,X		; 16 34
	bit $25.b,X		; 34 25
	and $00.b		; 25 00
	brk $0F.b		; 00 0F
	ora $CE.b		; 05 CE
	beq   1.b		; F0 01
	inc $DE21.w,X		; FE 21 DE
	eor $AA.b,X		; 55 AA
	lda $DD62.w,X		; BD 62 DD
	rol A		; 2A
	eor $F2B2.w,X		; 5D B2 F2
	sty $30.b,X		; 94 30
	bmi -10.b		; 30 F6
	inc $8A.b,X		; F6 8A
	txa		; 8A
	jsl $424222.l		; 22 22 42 42
	brk $00.b		; 00 00
	jsr $24A0.w		; 20 A0 24
	sty $0304.w		; 8C 04 03
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	php		; 08
	ora [$10.b]		; 07 10
	ora $411F20.l		; 0F 20 1F 41
	rol $3E41.w,X		; 3E 41 3E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	ora [$F8.b]		; 07 F8
	asl $0CF0.w		; 0E F0 0C
	beq  12.b		; F0 0C
	beq  12.b		; F0 0C
	beq  24.b		; F0 18
	cpx #$F0.b		; E0 F0
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	rts		; 60

	jsr $2020.w		; 20 20 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($EC00.w,X)		; FC 00 EC
	bmi  -2.b		; 30 FE
	jsr $807E.w		; 20 7E 80
	inc $3A00.w,X		; FE 00 3A
	jsr ($F694.w,X)		; FC 94 F6
	clc		; 18
	adc ($A8.b,S),Y		; 73 A8
	tay		; A8
	bcs -128.b		; B0 80
	ldy $94.b,X		; B4 94
	ldy $34.b,X		; B4 34
	brk $00.b		; 00 00
	sty $84.b		; 84 84
	plp		; 28
	jsr $42CE.w		; 20 CE 42
	ora [$70.b],Y		; 17 70
	ora [$30.b]		; 07 30
	phd		; 0B
	sec		; 38
	phd		; 0B
	sec		; 38
	ora $18.b,S		; 03 18
	ora $1C.b		; 05 1C
	ora $0C.b		; 05 0C
	cop $0E.b		; 02 0E
	and $101F20.l		; 2F 20 1F 10
	ora [$10.b],Y		; 17 10
	ora [$10.b],Y		; 17 10
	ora $080B08.l		; 0F 08 0B 08
	ora $00.b,S		; 03 00
	ora $04.b		; 05 04
	dec $8C73.w,X		; DE 73 8C
	and ($87.b),Y		; 31 87
	and ($CE.b),Y		; 31 CE
	sec		; 38
	wai		; CB
	sec		; 38
	xba		; EB
	sec		; 38
	cmp [$1C.b]		; C7 1C
	cmp $1C.b		; C5 1C
	sty $DF00.w		; 8C 00 DF
	ora ($DE.b),Y		; 11 DE
	bpl -41.b		; 10 D7
	bpl -25.b		; 10 E7
	jsr $00C7.w		; 20 C7 00
	xba		; EB
	php		; 08
	xba		; EB
	php		; 08
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	bra  96.b		; 80 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	cpy #$60.b		; C0 60
	bra  32.b		; 80 20
	cpy #$30.b		; C0 30
	rts		; 60

	bmi  64.b		; 30 40
	bpl -32.b		; 10 E0
	tya		; 98
	bcc -104.b		; 90 98
	bvs  -8.b		; 70 F8
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	bvs  16.b		; 70 10
	rts		; 60

	brk $80.b		; 00 80
	bra  48.b		; 80 30
	jsr ($FC30.w,X)		; FC 30 FC
	plp		; 28
	cpx $C450.w		; EC 50 C4
	bvc -60.b		; 50 C4
	bvc -60.b		; 50 C4
	cli		; 58
	cpy $38.b		; C4 38
	inc $C8.b		; E6 C8
	iny		; C8
	pha		; 48
	pha		; 48
	bvc  64.b		; 50 40
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $5C.b		; 00 5C
	mvp $06,$24		; 44 24 06
	sec		; 38
	asl $103E.w		; 0E 3E 10
	dec A		; 3A
	tsb $083C.w		; 0C 3C 08
	jmp $305C28.l		; 5C 28 5C 30
	mvn $18,$38		; 54 38 18
	brk $04.b		; 00 04
	tsb $10.b		; 04 10
	brk $1C.b		; 00 1C
	bpl  24.b		; 10 18
	bpl  56.b		; 10 38
	bpl  56.b		; 10 38
	php		; 08
	sec		; 38
	brk $54.b		; 00 54
	sec		; 38
	pei ($38.b)		; D4 38
	pea $FC18.w		; F4 18 FC
	bpl  60.b		; 10 3C
	php		; 08
	rol $1D18.w		; 2E 18 1D
	asl $0F.b		; 06 0F
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	php		; 08
	clc		; 18
	bpl  28.b		; 10 1C
	tsb $0E.b		; 04 0E
	php		; 08
	brk $00.b		; 00 00
	asl A		; 0A
	ora [$0B.b]		; 07 0B
	asl $0B.b		; 06 0B
	ora $0D.b		; 05 0D
	cop $0E.b		; 02 0E
	ora ($0D.b,X)		; 01 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $E0.b		; 00 E0
	bra 120.b		; 80 78
	cpx #$F8.b		; E0 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0E1500.l		; 0F 00 15 0E
	dec A		; 3A
	trb $1C3E.w		; 1C 3E 1C
	rol $2A1C.w,X		; 3E 1C 2A
	trb $1C1A.w		; 1C 1A 1C
	bit $0038.w,X		; 3C 38 00
	brk $00.b		; 00 00
	asl $1C18.w		; 0E 18 1C
	clc		; 18
	trb $1C08.w		; 1C 08 1C
	php		; 08
	trb $3C00.w		; 1C 00 3C
	bpl 120.b		; 10 78
	asl $0A23.w		; 0E 23 0A
	and $18.b,S		; 23 18
	and $1C.b,S		; 23 1C
	ror $3C.b		; 66 3C
	ror $38.b		; 66 38
	ror $30.b		; 66 30
	stz $30.b		; 64 30
	stz $1C.b		; 64 1C
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	cop $38.b		; 02 38
	jsr $0018.w		; 20 18 00
	trb $1804.w		; 1C 04 18
	brk $18.b		; 00 18
	brk $60.b		; 00 60
	bit $007C.w		; 2C 7C 00
	jmp ($3C18.w,X)		; 7C 18 3C
	php		; 08
	dec A		; 3A
	tsb $182E.w		; 0C 2E 18
	rol $2E14.w		; 2E 14 2E
	trb $18.b		; 14 18
	php		; 08
	brk $00.b		; 00 00
	sec		; 38
	jsr $1018.w		; 20 18 10
	trb $1C10.w		; 1C 10 1C
	tsb $1C.b		; 04 1C
	php		; 08
	trb $2008.w		; 1C 08 20
	cpy #$E0.b		; C0 E0
	rti		; 40

	cpx #$00.b		; E0 00
	bvc -96.b		; 50 A0
	bne   0.b		; D0 00
	beq   0.b		; F0 00
	bvc   0.b		; 50 00
	jsr $0080.w		; 20 80 00
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	rti		; 40

	ldy #$A0.b		; A0 A0
	jsr $0020.w		; 20 20 00
	jsr $A020.w		; 20 20 A0
	brk $C0.b		; 00 C0
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	cop $04.b		; 02 04
	cop $04.b		; 02 04
	cop $04.b		; 02 04
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	sta [$78.b]		; 87 78
	mvp $48,$38		; 44 38 48
	bmi  72.b		; 30 48
	bmi -112.b		; 30 90
	rts		; 60

	ldy #$40.b		; A0 40
	rts		; 60

	brk $30.b		; 00 30
	brk $10.b		; 00 10
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
	brk $38.b		; 00 38
	brk $50.b		; 00 50
	jsr $6090.w		; 20 90 60
	sta $000070.l		; 8F 70 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $2020.w		; 20 20 20
	jsr $0E0F.w		; 20 0F 0E
	ora $7A1E.w,X		; 1D 1E 7A
	jmp ($F8F4.w,X)		; 7C F4 F8
	pla		; 68
	beq -112.b		; F0 90
	rts		; 60

	cpx #$00.b		; E0 00
	rti		; 40

	bra   4.b		; 80 04
	asl $7E08.w,X		; 1E 08 7E
	bmi  -4.b		; 30 FC
	rts		; 60

	sed		; F8
	brk $F0.b		; 00 F0
	brk $60.b		; 00 60
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	inx		; E8
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	rts		; 60

	inc $7D91.w		; EE 91 7D
	.db $62, $93, $9C		; 62 93 9C
.ACCU 8
	sep #$E1		; E2 E1
	sbc ($FC.b,S),Y		; F3 FC
	sbc ($FD.b)		; F2 FD
	pea $F4FB.w		; F4 FB F4
	xce		; FB
	sta $84.b,X		; 95 84
	eor $E1.b,S		; 43 E1
	brk $FC.b		; 00 FC
	sta ($FD.b,X)		; 81 FD
	cpx #$FC.b		; E0 FC
	sbc ($FD.b,X)		; E1 FD
	sbc $FB.b,S		; E3 FB
	cmp $FB.b,S		; C3 FB
	iny		; C8
	jsr $4094.w		; 20 94 40
	bit $1080.w		; 2C 80 10
	jsr $8060.w		; 20 60 80
	cpy #$00.b		; C0 00
	rts		; 60

	brk $60.b		; 00 60
	brk $B0.b		; 00 B0
	bcs 104.b		; B0 68
	sei		; 78
	bne -16.b		; D0 F0
	cpx #$E0.b		; E0 E0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	ora $3E06.w,X		; 1D 06 3E
	trb $3E.b		; 14 3E
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($06.b,X)		; 01 06
	brk $15.b		; 00 15
	brk $15.b		; 00 15
	tsb $E0.b		; 04 E0
	brk $F0.b		; 00 F0
	ldy #$E0.b		; A0 E0
	trb $8678.w		; 1C 78 86
	sty $7B.b		; 84 7B
	sta $F160.w,X		; 9D 60 F1
	stx $87.b		; 86 87
	bmi   0.b		; 30 00
	brk $A0.b		; 00 A0
	brk $50.b		; 00 50
	bvc -124.b		; 50 84
	tsb $3A.b		; 04 3A
	dec A		; 3A
	.db $62, $60, $18		; 62 60 18
	brk $DC.b		; 00 DC
	ora ($01.b),Y		; 11 01
	tsb $03.b		; 04 03
	php		; 08
	asl $0718.w		; 0E 18 07
	ora ($1D.b),Y		; 11 1D
	and ($0C.b),Y		; 31 0C
	adc ($3A.b,X)		; 61 3A
	adc $1C.b,S		; 63 1C
	cmp [$03.b]		; C7 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $3F.b		; 00 3F
	and ($1D.b,X)		; 21 1D
	ora ($7A.b,X)		; 01 7A
	.db $42, $00		; 42 00
	sei		; 78
	jsr $8070.w		; 20 70 80
	beq   0.b		; F0 00
	sbc $00.b,S		; E3 00
	cmp $17FC05.l,X		; DF 05 FC 17
	beq  95.b		; F0 5F
	cpy #$D0.b		; C0 D0
	bvc -128.b		; 50 80
	brk $20.b		; 00 20
	jsr $8080.w		; 20 80 80
	ora ($01.b,X)		; 01 01
	phk		; 4B
	pha		; 48
	and $80BF20.l		; 2F 20 BF 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	ldy $87.b,X		; B4 87
	xce		; FB
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ply		; 7A
	cop $FC.b		; 02 FC
	brk $E2.b		; 00 E2
	cop $DE.b		; 02 DE
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -32.b		; 80 E0
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $19.b		; 00 19
	ora ($3B.b,X)		; 01 3B
	ora $2B.b,S		; 03 2B
	ora $EF.b,S		; 03 EF
	ora [$D7.b]		; 07 D7
	ora [$D7.b]		; 07 D7
	and [$77.b]		; 27 77
	ora [$00.b],Y		; 17 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora [$11.b],Y		; 17 11
	ora [$13.b],Y		; 17 13
	and [$23.b],Y		; 37 23
	lda $93AF23.l		; AF 23 AF 93
	sta $FBBB7B.l,X		; 9F 7B BB FB
	tda		; 7B
	adc $BE7D.w,X		; 7D 7D BE
	ldx $9F9F.w,Y		; BE 9F 9F
	lda $AFAEAF.l		; AF AF AE AF
	lda #$AE.b		; A9 AE
	sta ($BF.b,S),Y		; 93 BF
	and $787F.w,Y		; 39 7F 78
	sbc $0EFF1C.l,X		; FF 1C FF 0E
	sbc $A0FF84.l,X		; FF 84 FF A0
	sbc $83FE20.l,X		; FF 20 FE 83
	adc [$83.b],Y		; 77 83
	tda		; 7B
	bit #$7B.b		; 89 7B
	eor ($3D.b,X)		; 41 3D
	sec		; 38
	ora $04.b		; 05 04
	cop $04.b		; 02 04
	cop $0F.b		; 02 0F
	brk $63.b		; 00 63
	adc $317F79.l		; 6F 79 7F 31
	and [$0C.b],Y		; 37 0C
	ora $000300.l		; 0F 00 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $38.b		; 00 38
	sta [$8C.b]		; 87 8C
	lda ($83.b,S),Y		; B3 83
	ldy $BF80.w,X		; BC 80 BF
	cpy #$C7.b		; C0 C7
	sed		; F8
	xce		; FB
	xba		; EB
	inx		; E8
	jsr ($0200.w,X)		; FC 00 02
	rep #$00		; C2 00
	cpy #$80.b		; C0 80
	cpy #$87.b		; C0 87
	cmp [$81.b]		; C7 81
	sbc $FC70.w,Y		; F9 70 FC
	plp		; 28
	jsr ($0000.w,X)		; FC 00 00
	dec $50.b,X		; D6 50
	tay		; A8
	bvc  -4.b		; 50 FC
	brk $1C.b		; 00 1C
	cpx #$3E.b		; E0 3E
	cpy #$C6.b		; C0 C6
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	brk $50.b		; 00 50
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$80.b		; C0 80
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $03.b,S		; 03 03
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	cop $74.b		; 02 74
	dey		; 88
	inc $88.b,X		; F6 88
	sbc $F6C990.l		; EF 90 C9 F6
	phx		; DA
	ldy $94.b		; A4 94
	inx		; E8
	ldy $48.b,X		; B4 48
	tay		; A8
	bvc -104.b		; 50 98
	bpl -120.b		; 10 88
	brk $D6.b		; 00 D6
	lsr $F6.b		; 46 F6
	brk $EC.b		; 00 EC
	pha		; 48
	inx		; E8
	brk $D8.b		; 00 D8
	bcc -48.b		; 90 D0
	bra -28.b		; 80 E4
	plx		; FA
	nop		; EA
	beq -55.b		; F0 C9
	beq -112.b		; F0 90
	cpx #$10.b		; E0 10
	rts		; 60

	rts		; 60

	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $C3.b		; 00 C3
	xce		; FB
	sta ($F1.b,X)		; 81 F1
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rts		; 60

	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	brk $3B.b		; 00 3B
	ora $1E.b		; 05 1E
	ora ($0E.b,X)		; 01 0E
	ora $2F0F0E.l,X		; 1F 0E 0F 2F
	ora $872F47.l		; 0F 47 2F 87
	adc [$15.b],Y		; 77 15
	trb $14.b		; 14 14
	bpl   1.b		; 10 01
	and ($04.b,X)		; 21 04
	rol $1F06.w,X		; 3E 06 1F
	asl $1F.b		; 06 1F
	asl $1F.b		; 06 1F
	and $2F.b,S		; 23 2F
.INDEX 16
	rep #$18		; C2 18
	.db $62, $0D, $B5		; 62 0D B5
	stx $4D.b		; 86 4D
	cpy #$F232.w		; C0 32 F2
	php		; 08
	ror $5E24.w,X		; 7E 24 5E
	and ($4E.b),Y		; 31 4E
	sbc $01.b		; E5 01
	sbc $7809.w,Y		; F9 09 78
	brk $BE.b		; 00 BE
	bra  76.b		; 80 4C
	eor ($36.b,X)		; 41 36
	lda [$4A.b],Y		; B7 4A
	wai		; CB
	asl $86.b		; 06 86
	bvs -57.b		; 70 C7
	and $8E.b,S		; 23 8E
	tsa		; 3B
	tya		; 98
	jmp $E121C0.l		; 5C C0 21 E1
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	and $7905.w,X		; 3D 05 79
	php		; 08
	adc [$00.b]		; 67 00
	and $405E00.l,X		; 3F 00 5E 40
	and $00003F.l,X		; 3F 3F 00 00
	brk $00.b		; 00 00
	jsr ($F280.w,X)		; FC 80 F2
	ora $8D.b,S		; 03 8D
	asl $3D33.w		; 0E 33 3D
	cmp [$FA.b]		; C7 FA
	ora $C000F0.l		; 0F F0 00 C0
	brk $00.b		; 00 00
	adc $01FD00.l,X		; 7F 00 FD 01
	sbc ($02.b)		; F2 02
	cmp $3B0C.w		; CD 0C 3B
	and $C0C0.w,Y		; 39 C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $EE9F.w		; EE 9F EE
	adc [$F7.b],Y		; 77 F7
	rol $DEB7.w		; 2E B7 DE
	sbc [$0A.b],Y		; F7 0A
	cmp $017E22.l,X		; DF 22 7E 01
	ora $203F08.l,X		; 1F 08 3F 20
	adc $517F08.l,X		; 7F 08 7F 51
	sbc $D5DF21.l,X		; FF 21 DF D5
	rtl		; 6B

	eor #$03.b		; 49 03
	cop $02.b		; 02 02
	asl A		; 0A
	sbc $7AF770.l,X		; FF 70 F7 7A
	adc [$EF.b],Y		; 77 EF
	adc $DC6FF6.l		; 6F F6 6F DC
	eor $12FDE8.l,X		; 5F E8 FD 12
	stp		; DB
	bit $F8.b		; 24 F8
	dey		; 88
	plx		; FA
	bra  -1.b		; 80 FF
	bpl  -1.b		; 10 FF
	ora #$FE.b		; 09 FE
	jsl $DB15FD.l		; 22 FD 15 DB
	cmp #$B6.b		; C9 B6
	sta ($07.b)		; 92 07
	ora ($0F.b,X)		; 01 0F
	cop $0F.b		; 02 0F
	cop $1E.b		; 02 1E
	ora $1E.b		; 05 1E
	ora ($0B.b,X)		; 01 0B
	bit $2209.w,X		; 3C 09 22
	and $020365.l,X		; 3F 65 03 02
	ora [$05.b]		; 07 05
	ora [$05.b]		; 07 05
	ora $02030A.l		; 0F 0A 03 02
	trb $14.b		; 14 14
	asl $1802.w,X		; 1E 02 18
	brk $68.b		; 00 68
	bcc  80.b		; 90 50
	ldy #$20D0.w		; A0 D0 20
	ldy #$E040.w		; A0 40 E0
	brk $80.b		; 00 80
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	bcs  32.b		; B0 20
	ldy #$6000.w		; A0 00 60
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $1D.b		; 00 1D
	dec $DC1F.w,X		; DE 1F DC
	txs		; 9A
	eor $3B94.w,X		; 5D 94 3B
	clv		; B8
	and [$A8.b],Y		; 37 A8
	and [$70.b],Y		; 37 70
	adc $486F70.l		; 6F 70 6F 48
	ror $7C48.w,X		; 7E 48 7C
	bvc 124.b		; 50 7C
	ora ($7B.b,S),Y		; 13 7B
	ora [$77.b]		; 07 77
	jsr $2170.w		; 20 70 21
	sbc ($4E.b,X)		; E1 4E
	inc $0000.w		; EE 00 00
	bra   0.b		; 80 00
	cpx #$1000.w		; E0 00 10
	cpx #$F008.w		; E0 08 F0
	tsb $06F0.w		; 0C F0 06
	sed		; F8
	ora $FC.b,S		; 03 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00C0.w		; C0 C0 00
	brk $C0.b		; 00 C0
	cpy #$2020.w		; C0 20 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$07.b]		; 07 07
	cmp $00001F.l,X		; DF 1F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora ($1F.b,X)		; 01 1F
	asl $013F.w		; 0E 3F 01
	brk $06.b		; 00 06
	ora ($1B.b,X)		; 01 1B
	tsb $6F.b		; 04 6F
	ora ($FF.b),Y		; 11 FF
	ora [$FE.b]		; 07 FE
	sta $5F61.w,X		; 9D 61 5F
	adc $00004F.l,X		; 7F 4F 00 00
	ora ($00.b,X)		; 01 00
	asl $02.b		; 06 02
	ora $4708.w,Y		; 19 08 47
	rti		; 40

	and $C05FA2.l,X		; 3F A2 5F C0
	eor $0F00D0.l,X		; 5F D0 00 0F
	tsb $3C.b		; 04 3C
	and $0078E0.l		; 2F E0 78 00
	cmp [$07.b]		; C7 07
	sec		; 38
	and $08FFC0.l,X		; 3F C0 FF 08
	sed		; F8
	brk $00.b		; 00 00
	phd		; 0B
	php		; 08
	ora $00FF00.l,X		; 1F 00 FF 00
	sed		; F8
	brk $C7.b		; 00 C7
	ora [$30.b]		; 07 30
	bmi -121.b		; 30 87
	bra   0.b		; 80 00
	cpy #$E080.w		; C0 80 E0
	cpy #$6010.w		; C0 10 60
	php		; 08
	bcs -124.b		; B0 84
	cli		; 58
	cmp $14.b,S		; C3 14
	sbc ($4A.b),Y		; F1 4A
	sei		; 78
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	cpx #$F000.w		; E0 00 F0
	brk $78.b		; 00 78
	brk $BC.b		; 00 BC
	bra  47.b		; 80 2F
	and ($87.b,X)		; 21 87
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $FF.b		; 00 FF
	rts		; 60

	sbc $F70F98.l,X		; FF 98 0F F7
	sbc ($0D.b,S),Y		; F3 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bvs  16.b		; 70 10
	jsr ($FF64.w,X)		; FC 64 FF
	php		; 08
	ora $000002.l		; 0F 02 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $F8.b		; 00 F8
	brk $E8.b		; 00 E8
	bpl -16.b		; 10 F0
	brk $EF.b		; 00 EF
	bne   0.b		; D0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bmi -16.b		; 30 F0
	cpx #$0000.w		; E0 00 00
	beq  32.b		; F0 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	clc		; 18
	ora [$21.b]		; 07 21
	asl $3947.w,X		; 1E 47 39
	and [$18.b]		; 27 18
	and ($1D.b)		; 32 1D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	tsb $000C.w		; 0C 0C 00
	brk $10.b		; 00 10
	bpl   9.b		; 10 09
	ora #$00.b		; 09 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bpl   0.b		; 10 00
	sed		; F8
	plp		; 28
	inc $07E8.w		; EE E8 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc -112.b		; 90 90
	bvc  64.b		; 50 40
	asl $0C16.w		; 0E 16 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	brk $9C.b		; 00 9C
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tyx		; BB
	ldy $D894.w,X		; BC 94 D8
	iny		; C8
	bne -48.b		; D0 D0
	cpy #$C0A0.w		; C0 A0 C0
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	jsr ($F880.w,X)		; FC 80 F8
	bra -16.b		; 80 F0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	txy		; 9B
	stz $45.b		; 64 45
	dec A		; 3A
	jsl $0A151D.l		; 22 1D 15 0A
	ora $0A.b,X		; 15 0A
	asl A		; 0A
	ora $0B.b		; 05 0B
	tsb $06.b		; 04 06
	brk $67.b		; 00 67
	ora $3B.b,S		; 03 3B
	ora ($1D.b,X)		; 01 1D
	brk $0E.b		; 00 0E
	tsb $0E.b		; 04 0E
	tsb $07.b		; 04 07
	cop $06.b		; 02 06
	cop $00.b		; 02 00
	brk $20.b		; 00 20
	cpy #$C020.w		; C0 20 C0
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
	ora ($01.b,X)		; 01 01
	ora [$05.b]		; 07 05
	bit $60AF.w,X		; 3C AF 60
	jmp.w [$D340]		; DC 40 D3
	ora $EC.b,S		; 03 EC
	lda $009FF1.l		; AF F1 9F 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3C.b		; 00 3C
	brk $92.b		; 00 92
	cop $C0.b		; 02 C0
	rti		; 40

	adc #$76.b		; 69 76
	stz $6C78.w,X		; 9E 78 6C
	clc		; 18
	trb $1C08.w		; 1C 08 1C
	php		; 08
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $44.b		; 00 44
	pea $7808.w		; F4 08 78
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$203F.w		; C0 3F 20
	ora $0F0F10.l,X		; 1F 10 0F 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FE3E.w,X		; FE 3E FE
	ror $1EFE.w,X		; 7E FE 1E
	rol $7D1E.w,X		; 3E 1E 7D
	ora $3DFD.w,X		; 1D FD 3D
	jsr ($7C7D.w,X)		; FC 7D 7C
	adc $BF3E.w,X		; 7D 3E BF
	jmp ($1C7F.w,X)		; 7C 7F 1C
	ora $9CDFDC.l,X		; 1F DC DF 9C
	cmp $78BF38.l,X		; DF 38 BF 78
	adc $DFFF38.l,X		; 7F 38 FF DF
	lda ($F3.b,X)		; A1 F3
	sty $83FC.w		; 8C FC 83
	cmp $1BE7AF.l,X		; DF AF E7 1B
	cmp $9B22.w,X		; DD 22 9B
	stz $E6.b		; 64 E6
	ora $9EBF.w,Y		; 19 BF 9E
	sta $BC3F83.l		; 8F 83 3F BC
	and $041F90.l,X		; 3F 90 1F 04
	adc $41.b,S		; 63 41
	jmp ($1F18.w,X)		; 7C 18 1F
	asl $4F.b		; 06 4F
	cpy #$007F.w		; C0 7F 00
	sed		; F8
	brk $EF.b		; 00 EF
	ora $403FB0.l		; 0F B0 3F 40
	jmp ($F080.w,X)		; 7C 80 F0
	brk $C0.b		; 00 C0
	and $00FF00.l,X		; 3F 00 FF 00
	sbc $00F000.l,X		; FF 00 F0 00
	cpy $B00C.w		; CC 0C B0
	bmi  64.b		; 30 40
	rti		; 40

	bra -128.b		; 80 80
	cmp ($1C.b),Y		; D1 1C
	sbc $07.b,X		; F5 07
	ply		; 7A
	ora $8E.b,S		; 03 8E
	bra  39.b		; 80 27
	cpx #$FC0D.w		; E0 0D FC
	ora $3F.b,S		; 03 3F
	brk $0F.b		; 00 0F
	sbc $00.b,S		; E3 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $7F.b		; 00 7F
	brk $DF.b		; 00 DF
	cpy #$3033.w		; C0 33 30
	tsb $010C.w		; 0C 0C 01
	ora ($2C.b,X)		; 01 2C
	ora ($13.b,S),Y		; 13 13
	tsb $000D.w		; 0C 0D 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,S),Y		; 13 00
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	jmp ($827D.w,X)		; 7C 7D 82
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	.db $82, $BE, $3C		; 82 BE 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $5D0E.w,Y		; 39 0E 5D
	rol $3F5C.w		; 2E 5C 3F
	lsr $3F.b,X		; 56 3F
	cli		; 58
	and $641768.l		; 2F 68 17 64
	and $1404FB.l,X		; 3F FB 04 14
	tsb $10.b		; 04 10
	brk $22.b		; 00 22
	jsl $342929.l		; 22 29 29 34
	bit $1E.b		; 24 1E
	asl $2B.b,X		; 16 2B
	phd		; 0B
	bmi  16.b		; 30 10
	clv		; B8
	and ($5A.b),Y		; 31 5A
	lda $90.b,S		; A3 90
	eor $64.b,S		; 43 64
	ldx $40.b		; A6 40
	lda $4EB0.w,X		; BD B0 4E
	sty $7C.b		; 84 7C
	and $701EE0.l		; 2F E0 1E 70
	stz $7E80.w		; 9C 80 7E
	.db $42, $1B		; 42 1B
	cop $1F.b		; 02 1F
	ora $0130.w,X		; 1D 30 01
	phd		; 0B
	php		; 08
	cmp $DC25C0.l,X		; DF C0 25 DC
	sbc [$D0.b],Y		; F7 D0
	sbc $E0FEE0.l,X		; FF E0 FE E0
	sbc $7621.w,Y		; F9 21 76
	sta [$B8.b]		; 87 B8
	eor $CBCEF0.l		; 4F F0 CE CB
	php		; 08
	cmp $00EF00.l		; CF 00 EF 00
	sbc $C0EE00.l		; EF 00 EE C0
	sbc #$61.b		; E9 61
	dec $86.b		; C6 86
	inx		; E8
	plp		; 28
	beq -24.b		; F0 E8
	bvs -96.b		; 70 A0
	bcs  64.b		; B0 40
	bvs -128.b		; 70 80
	ldy #$A040.w		; A0 40 A0
	rti		; 40

	ldy #$4040.w		; A0 40 40
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	rti		; 40

	rts		; 60

	jsr $20A0.w		; 20 A0 20
	cpy #$C080.w		; C0 80 C0
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	ora $05.b,S		; 03 05
	ora $05.b,S		; 03 05
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	ora $24.b,S		; 03 24
	ora $38.b,S		; 03 38
	ora [$20.b]		; 07 20
	ora $0F0E11.l,X		; 1F 11 0E 0F
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	cop $03.b		; 02 03
	ora $02.b,S		; 03 02
	cop $0C.b		; 02 0C
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	bvs  96.b		; 70 60
	sed		; F8
	bcc  -4.b		; 90 FC
	lda $3C.b,S		; A3 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	ldy #$1020.w		; A0 20 10
	bpl   8.b		; 10 08
	php		; 08
	cpy $04.b		; C4 04
	cmp ($1E.b),Y		; D1 1E
	bit $07.b,X		; 34 07
	ror $E0.b		; 66 E0
	ora $FD.b		; 05 FD
	ora ($1E.b,X)		; 01 1E
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inx		; E8
	php		; 08
	plx		; FA
	cop $9F.b		; 02 9F
	bra  26.b		; 80 1A
	clc		; 18
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	trb $7F01.w		; 1C 01 7F
	bpl  90.b		; 10 5A
	and $22.b		; 25 22
	trb $49.b		; 14 49
	ora ($6D.b)		; 12 6D
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $18.b,S		; 03 18
	clc		; 18
	and $25.b		; 25 25
	ora $361D.w,X		; 1D 1D 36
	rol $3E12.w,X		; 3E 12 3E
	adc $8F7F01.l,X		; 7F 01 7F 8F
	sbc $7FFFBF.l,X		; FF BF FF 7F
	ora $D7D70F.l		; 0F 0F D7 D7
	pld		; 2B
	rtl		; 6B

	plp		; 28
	pld		; 2B
	brk $31.b		; 00 31
	ora [$0F.b]		; 07 0F
	ora $7F3F3F.l		; 0F 3F 3F 7F
	ora [$FF.b]		; 07 FF
	eor ($FF.b,S),Y		; 53 FF
	plp		; 28
	sbc $7F7FA0.l,X		; FF A0 7F 7F
	lda ($BF.b,X)		; A1 BF
	dec $05.b		; C6 05
	xba		; EB
	ora $DE0FEC.l		; 0F EC 0F DE
	asl $1DDF.w,X		; 1E DF 1D
	dec $BC1E.w,X		; DE 1E BC
	lda ($90.b),Y		; B1 90
	lsr $40.b		; 46 40
	sta $98.b,S		; 83 98
	sta ($9D.b,X)		; 81 9D
	sty $8CBE.w		; 8C BE 8C
	lda $98BE98.l,X		; BF 98 BE 98
	jsr ($40FC.w,X)		; FC FC 40
	cpy $E38F.w		; CC 8F E3
	bit $40BC.w,X		; 3C BC 40
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $B3.b		; 00 B3
	ora $1C.b,S		; 03 1C
	trb $0040.w		; 1C 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $A8.b,S		; A3 A8
	bit $F8A0.w,X		; 3C A0 F8
	brk $58.b		; 00 58
	jsr $2058.w		; 20 58 20
	cli		; 58
	bmi  56.b		; 30 38
	bpl  56.b		; 10 38
	bpl   0.b		; 10 00
	jmp ($E080.w,X)		; 7C 80 E0
	brk $00.b		; 00 00
	bmi  16.b		; 30 10
	bmi  16.b		; 30 10
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $320C.w,X		; 1D 0C 32
	asl $0E.b		; 06 0E
	asl $1E0E.w,X		; 1E 0E 1E
	asl $000E.w		; 0E 0E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $0E00.w		; 1C 00 0E
	cop $0F.b		; 02 0F
	asl $083F.w		; 0E 3F 08
	and $001F00.l,X		; 3F 00 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1B.b		; 00 1B
	ora $24.b,S		; 03 24
	asl $37.b,X		; 16 37
	ora [$F7.b],Y		; 17 F7
	ora [$07.b]		; 07 07
	sbc [$00.b],Y		; F7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora $010F17.l		; 0F 17 0F 01
	ora $077F70.l		; 0F 70 7F 07
	ora $05.b,S		; 03 05
	ora $03.b,S		; 03 03
	tsb $07.b		; 04 07
	tsb $180B.w		; 0C 0B 18
	ora $5A31.w,X		; 1D 31 5A
	and $54.b,S		; 23 54
	and [$01.b]		; 27 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $01.b		; 00 01
	ora ($06.b,X)		; 01 06
	brk $0E.b		; 00 0E
	brk $1D.b		; 00 1D
	ora ($1A.b,X)		; 01 1A
	cop $F7.b		; 02 F7
	txa		; 8A
	sbc $FA42.w,X		; FD 42 FA
	lda $46F5.w		; AD F5 46
	nop		; EA
	and $96.b,S		; 23 96
	bvs  75.b		; 70 4B
	clv		; B8
	inc $1E.b		; E6 1E
	brk $88.b		; 00 88
	.db $42, $02		; 42 02
	ldy #$5800.w		; A0 00 58
	brk $9C.b		; 00 9C
	bra  47.b		; 80 2F
	jsr $1017.w		; 20 17 10
	ora #$08.b		; 09 08
	ora $070B03.l		; 0F 03 0B 07
	tas		; 1B
	ora [$07.b]		; 07 07
	ora ($07.b,S),Y		; 13 07
	ora ($07.b,S),Y		; 13 07
	ora ($05.b,S),Y		; 13 05
	tas		; 1B
	and $0103.w,Y		; 39 03 01
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	ora $09.b,S		; 03 09
	phd		; 0B
	ora #$0B.b		; 09 0B
	ora #$0B.b		; 09 0B
	ora ($07.b,X)		; 01 07
	jsr ($FDF8.w,X)		; FC F8 FD
	inc $FEFD.w,X		; FE FD FE
	sbc $FDFE.w,X		; FD FE FD
	inc $FCFE.w,X		; FE FE FC
	sbc $FAFC.w,Y		; F9 FC FA
	xce		; FB
	beq  -5.b		; F0 FB
	sed		; F8
	inc $FEF8.w,X		; FE F8 FE
	sed		; F8
	inc $FEF8.w,X		; FE F8 FE
	sed		; F8
	sbc $FEF8.w,X		; FD F8 FE
	beq  -1.b		; F0 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$0000.w		; C0 00 00
	bra   0.b		; 80 00
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	rti		; 40

	brk $40.b		; 00 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra -48.b		; 80 D0
	brk $B0.b		; 00 B0
	rti		; 40

	bcc  96.b		; 90 60
	bpl -32.b		; 10 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	jsr $20C0.w		; 20 C0 20
	cpy #$C020.w		; C0 20 C0
	jsr $C0C0.w		; 20 C0 C0
	brk $40.b		; 00 40
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	rti		; 40

	ldy #$4080.w		; A0 80 40
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cpy #$0000.w		; C0 00 00
	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	jsr $A040.w		; 20 40 A0
	cpy #$A020.w		; C0 20 A0
	rti		; 40

	bvc -96.b		; 50 A0
	bvc -96.b		; 50 A0
	tay		; A8
	bvc -88.b		; 50 A8
	bvc  64.b		; 50 40
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	rti		; 40

	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $D0.b		; 00 D0
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	asl $061B.w		; 0E 1B 06
	rol $2F17.w		; 2E 17 2F
	ora [$2B.b],Y		; 17 2B
	ora [$2B.b],Y		; 17 2B
	ora [$1F.b],Y		; 17 1F
	ora $0F.b,S		; 03 0F
	ora $00.b,S		; 03 00
	asl $0602.w,X		; 1E 02 06
	cop $07.b		; 02 07
	ora ($17.b)		; 12 17
	ora ($17.b)		; 12 17
	ora $07.b,S		; 03 07
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	inc $75F7.w,X		; FE F7 75
	inc $6EBF.w		; EE BF 6E
	lda $5E5E.w		; AD 5E 5E
	lda $BD5E.w,X		; BD 5E BD
	tyx		; BB
	jmp.w [$DABD]		; DC BD DA
	brk $07.b		; 00 07
	sty $8E.b		; 84 8E
	mvp $44,$4E		; 44 4E 44
	lsr $BC08.w,X		; 5E 08 BC
	php		; 08
	ldy $DC10.w,X		; BC 10 DC
	brk $D8.b		; 00 D8
	eor ($3E.b),Y		; 51 3E
	ror $5220.w,X		; 7E 20 52
	ora $0024.w,Y		; 19 24 00
	ora $1E00.w,Y		; 19 00 1E
	brk $11.b		; 00 11
	brk $0A.b		; 00 0A
	ora ($0C.b,X)		; 01 0C
	tsb OBJSEL.w		; 0C 01 21
	ora ($3D.b,X)		; 01 3D
	ora $1B.b,S		; 03 1B
	asl $06.b		; 06 06
	ora ($01.b,X)		; 01 01
	asl $040E.w		; 0E 0E 04
	ora $F2.b		; 05 F2
	ora $E707E8.l		; 0F E8 07 E7
	clc		; 18
	ldx $5300.w		; AE 00 53
	ldy #$40EF.w		; A0 EF 40
	ora ($00.b),Y		; 11 00
	nop		; EA
	sbc ($05.b),Y		; F1 05
	ora $13.b		; 05 13
	ora ($18.b,S),Y		; 13 18
	cli		; 58
	bvc  93.b		; 50 5D
	ldy $10AE.w		; AC AE 10
	bvc  14.b		; 50 0E
	inc $F504.w		; EE 04 F5
	ora #$25.b		; 09 25
	asl $2A.b,X		; 16 2A
	ora [$29.b],Y		; 17 29
	and $3F12.w		; 2D 12 3F
	brk $4D.b		; 00 4D
	rol $7D.b,X		; 36 7D
	asl $9D.b		; 06 9D
	adc [$10.b]		; 67 10
	ora [$08.b],Y		; 17 08
	ora $09.b,S		; 03 09
	ora ($16.b,X)		; 01 16
	tsb $15.b		; 04 15
	ora $37.b,X		; 15 37
	ora ($2F.b,X)		; 01 2F
	and #$6F.b		; 29 6F
	php		; 08
	sbc [$F4.b],Y		; F7 F4
	sbc $5EEA.w		; ED EA 5E
	eor ($B6.b),Y		; 51 B6
	lda $44FF.w		; AD FF 44
	sbc $AE.b,X		; F5 AE
	sbc [$AE.b],Y		; F7 AE
	lda [$FE.b],Y		; B7 FE
	cpx #$4AFC.w		; E0 FC 4A
	sed		; F8
	ora $F4.b,X		; 15 F4
	lda $55E0.w		; AD E0 55
	eor ($BE.b),Y		; 51 BE
	bpl -66.b		; 10 BE
	bpl  -2.b		; 10 FE
	brk $2A.b		; 00 2A
	ora $2E.b,X		; 15 2E
	ora ($2E.b),Y		; 11 2E
	ora ($16.b),Y		; 11 16
	ora #$0F.b		; 09 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($17.b,X)		; 01 17
	cop $17.b		; 02 17
	asl $17.b		; 06 17
	asl $0F.b		; 06 0F
	asl $01.b		; 06 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $EF.b		; 00 EF
	eor ($EF.b),Y		; 51 EF
	eor $59EF.w,Y		; 59 EF 59
	xba		; EB
	cmp $F8EF.w,X		; DD EF F8
	sbc $807F3C.l		; EF 3C 7F 80
	bit $FDFF.w,X		; 3C FF FD
	ldy $A4FD.w		; AC FD A4
	sbc $FDA4.w,X		; FD A4 FD
	jsr $05FD.w		; 20 FD 05
	ror $8042.w,X		; 7E 42 80
	bra -62.b		; 80 C2
.ACCU 16
	rep #$AB		; C2 AB
	mvn $54,$AE		; 54 AE 54
	ldx $5E54.w		; AE 54 5E
	ldy $DD.b		; A4 DD
	bit $B9.b		; 24 B9
	lsr $74.b		; 46 74
	tsx		; BA
	sbc $4000.w,X		; FD 00 40
	trb $40.b		; 14 40
	ora $40.b,X		; 15 40
	ora $A0.b,X		; 15 A0
	ora $A0.b		; 05 A0
	stx $C0.b		; 86 C0
	stx $80.b		; 86 80
	tsa		; 3B
	brk $02.b		; 00 02
	cli		; 58
	brk $D4.b		; 00 D4
	jsr $20D4.w		; 20 D4 20
	pei ($20.b)		; D4 20
	lsr A		; 4A
	jsr $004A.w		; 20 4A 00
	inc $00.b		; E6 00
	inx		; E8
	brk $00.b		; 00 00
	ldy #$2800.w		; A0 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $B4.b		; 00 B4
	brk $B4.b		; 00 B4
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	cop $3E.b		; 02 3E
	php		; 08
	rol $1F05.w,X		; 3E 05 1F
	brk $1F.b		; 00 1F
	ora ($1F.b,X)		; 01 1F
	tsb $1C.b		; 04 1C
	asl $30.b		; 06 30
	and $1561.w		; 2D 61 15
	trb $13.b		; 14 13
	ora ($08.b)		; 12 08
	php		; 08
	ora $020D.w		; 0D 0D 02
	cop $0B.b		; 02 0B
	php		; 08
	ora $001E10.l,X		; 1F 10 1E 00
	sbc [$3F.b]		; E7 3F
	cmp $1F.b,S		; C3 1F
	sbc $1F.b,S		; E3 1F
	adc ($1F.b,S),Y		; 73 1F
	adc ($1B.b),Y		; 71 1B
	ora ($1F.b,X)		; 01 1F
	cpy #$18FF.w		; C0 FF 18
	sbc $F00FC0.l,X		; FF C0 0F F0
	ora [$F0.b],Y		; 17 F0
	ora [$E0.b],Y		; 17 E0
	ora [$E0.b]		; 07 E0
	ora [$F0.b]		; 07 F0
	ora [$20.b],Y		; 17 20
	and $00DFC0.l		; 2F C0 DF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$15.b]		; 07 15
	tsb $083A.w		; 0C 3A 08
	adc $7C09.w,Y		; 79 09 7C
	ora [$00.b],Y		; 17 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $26.b		; 00 26
	jsr $0313.w		; 20 13 03
	asl $2B01.w,X		; 1E 01 2B
	lsr A		; 4A
	rol A		; 2A
	txa		; 8A
	pha		; 48
	asl A		; 0A
	ldy $2A.b,X		; B4 2A
	pha		; 48
	adc $0D.b,X		; 75 0D
	sbc ($07.b,S),Y		; F3 07
	xce		; FB
	ora ($00.b,X)		; 01 00
	asl A		; 0A
	asl $1F68.w,X		; 1E 68 1F
	cpx #$C01F.w		; E0 1F C0
	phd		; 0B
	bcs  55.b		; B0 37
	cpy #$01C3.w		; C0 C3 01
	tsa		; 3B
	sbc ($2B.b)		; F2 2B
	adc $50B990.l,X		; 7F 90 B9 50
	sbc $DF98.w		; ED 98 DF
	cpx #$E0DD.w		; E0 DD E0
	cmp $9DE6.w,Y		; D9 E6 9D
	cpx #$C8EC.w		; E0 EC C8
	inc $66.b,X		; F6 66
	ror $20.b,X		; 76 20
	inc A		; 1A
	bra   0.b		; 80 00
	cpy #$DE82.w		; C0 82 DE
	stx $DE.b		; 86 DE
	.db $82, $DE, $00		; 82 DE 00
	sbc [$C6.b],Y		; F7 C6
	clc		; 18
	sbc $9A.b		; E5 9A
	inc $9B.b		; E6 9B
	inc $0B.b,X		; F6 0B
	lda $D602.w,X		; BD 02 D6
	bit #$02F7.w		; 89 F7 02
	rti		; 40

	eor $C0B980.l,X		; 5F 80 B9 C0
	phy		; 5A
	cpy #$805B.w		; C0 5B 80
	phb		; 8B
	rti		; 40

	.db $62, $A0, $A9		; 62 A0 A9
	.db $82, $AA, $00		; 82 AA 00
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
	brk $07.b		; 00 07
	brk $0A.b		; 00 0A
	ora [$14.b]		; 07 14
	ora $130D13.l		; 0F 13 0D 13
	tsb $1E21.w		; 0C 21 1E
	and ($1E.b),Y		; 31 1E
.ACCU 8
.INDEX 8
	sep #$3D		; E2 3D
	brk $00.b		; 00 00
	ora $05.b		; 05 05
	brk $00.b		; 00 00
	ora #$08.b		; 09 08
	ora #$09.b		; 09 09
	bpl  16.b		; 10 10
	tsb $04.b		; 04 04
	clc		; 18
	clc		; 18
	cpy #$00.b		; C0 00
	and $00FFC0.l,X		; 3F C0 FF 00
	sbc $5C.b,S		; E3 5C
	lda $BF7C59.l,X		; BF 59 7C BF
	sta $03FE.w,Y		; 99 FE 03
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cld		; D8
	clc		; 18
	ldx $80.b		; A6 80
	.db $42, $02		; 42 02
	stz $64.b		; 64 64
	bne -48.b		; D0 D0
	brk $00.b		; 00 00
	sed		; F8
	brk $DC.b		; 00 DC
	brk $BF.b		; 00 BF
	rti		; 40

	and $EC19C0.l,X		; 3F C0 19 EC
	sta $B04F70.l		; 8F 70 4F B0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	jsr $202E.w		; 20 2E 20
	jsr $8080.w		; 20 80 80
	and $7B0A.w,X		; 3D 0A 7B
	trb $D7.b		; 14 D7
	sec		; 38
	sbc $306B20.l,X		; FF 20 6B 30
	lda #$70.b		; A9 70
	tsx		; BA
	rts		; 60

	lda ($40.b)		; B2 40
	asl $3C14.w,X		; 1E 14 3C
	plp		; 28
	sec		; 38
	brk $30.b		; 00 30
	bpl  48.b		; 10 30
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	ora ($60.b,X)		; 01 60
	and ($C8.b,X)		; 21 C8
	and $7BAE.w,Y		; 39 AE 7B
	lsr $F3.b		; 46 F3
	cli		; 58
	adc ($98.b,S),Y		; 73 98
	sbc ($99.b,S),Y		; F3 99
	lda ($A5.b)		; B2 A5
	stx $FF.b,Y		; 96 FF
	bra   7.b		; 80 07
	and ($04.b,X)		; 21 04
	rts		; 60

	trb $0ED0.w		; 1C D0 0E
	rep #$0E		; C2 0E
	rep #$0C		; C2 0C
	cpy #$18.b		; C0 18
	bne   0.b		; D0 00
	bra   0.b		; 80 00
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
	brk $21.b		; 00 21
	sbc ($16.b,X)		; E1 16
	beq  23.b		; F0 17
	beq  11.b		; F0 0B
	sed		; F8
	phd		; 0B
	sei		; 78
	ora $7C.b		; 05 7C
	cop $3E.b		; 02 3E
	cop $3E.b		; 02 3E
	lsr $6F40.w,X		; 5E 40 6F
	rts		; 60

	and $505720.l		; 2F 20 57 50
	ora [$10.b],Y		; 17 10
	pld		; 2B
	plp		; 28
	ora $14.b,X		; 15 14
	ora $14.b,X		; 15 14
	asl $F0.b		; 06 F0
	.db $82, $FC, $19		; 82 FC 19
	ror $7EDD.w,X		; 7E DD 7E
	stx $EE3F.w		; 8E 3F EE
	and $F31FC7.l,X		; 3F C7 1F F3
	ora $007900.l,X		; 1F 00 79 00
	and $3E80.w,X		; 3D 80 3E
	bra  30.b		; 80 1E
	cpy #$1F.b		; C0 1F
	cpy #$0F.b		; C0 0F
	cpx #$0F.b		; E0 0F
	cpx #$07.b		; E0 07
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	php		; 08
	cpy #$08.b		; C0 08
	cpx #$84.b		; E0 84
	bvs -124.b		; 70 84
	bvs  66.b		; 70 42
	clv		; B8
	.db $42, $98		; 42 98
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $BC.b		; 00 BC
	brk $BC.b		; 00 BC
	phy		; 5A
	cmp $34.b,S		; C3 34
	sta [$50.b]		; 87 50
	ora $443FA0.l,X		; 1F A0 3F 44
	adc $14F794.l,X		; 7F 94 F7 14
	inc $05.b,X		; F6 05
	inc $3D.b		; E6 3D
	ora ($FB.b,X)		; 01 FB
	sta $EC.b,S		; 83 EC
	tsb $1ADA.w		; 0C DA 1A
	ldx #$22.b		; A2 22
	lsr A		; 4A
	.db $42, $A8		; 42 A8
	lda ($38.b,X)		; A1 38
	jsr $FC30.w		; 20 30 FC
	adc ($F8.b,X)		; 61 F8
.ACCU 16
.INDEX 16
	rep #$F0		; C2 F0
	tsb $14C0.w		; 0C C0 14
	bra 103.b		; 80 67
	bpl -124.b		; 10 84
	bvs   8.b		; 70 08
	bvs -128.b		; 70 80
	lda $007E00.l,X		; BF 00 7E 00
	sbc $F300.w,X		; FD 00 F3
	brk $EB.b		; 00 EB
	brk $98.b		; 00 98
	brk $7B.b		; 00 7B
	brk $F7.b		; 00 F7
	ror $6901.w,X		; 7E 01 69
	trb $3E5C.w		; 1C 5C 3E
	bit $2E1E.w,X		; 3C 1E 2E
	asl $1E2E.w,X		; 1E 2E 1E
	asl $160E.w,X		; 1E 0E 16
	asl $2020.w		; 0E 20 20
	brk $1E.b		; 00 1E
	php		; 08
	and $0C1F0C.l,X		; 3F 0C 1F 0C
	ora $041F04.l,X		; 1F 04 1F 04
	ora $E50F02.l		; 0F 02 0F E5
	eor ($7C.b,S),Y		; 53 7C
	sta ($A4.b,X)		; 81 A4
	adc ($7D.b)		; 72 7D
	sbc $ED.b,S		; E3 ED
	adc ($AD.b,S),Y		; 73 AD
	adc ($95.b,S),Y		; 73 95
	rtl		; 6B

	mvn $00,$28		; 54 28 00
	tad		; 5B
	brk $83.b		; 00 83
	brk $7B.b		; 00 7B
	jsr $20E3.w		; 20 E3 20
	rtl		; 6B

	jsr $086B.w		; 20 6B 08
	tad		; 5B
	php		; 08
	tas		; 1B
	cmp ($26.b,X)		; C1 26
	sta ($3E.b,X)		; 81 3E
	eor $00.b,S		; 43 00
	sbc $FF80.w,X		; FD 80 FF
	dec $FEFE.w		; CE FE FE
	inc $FCFE.w,X		; FE FE FC
	sbc $1C1C.w,X		; FD 1C 1C
	.db $62, $62, $3C		; 62 62 3C
	ldy $B200.w,X		; BC 00 B2
	bra -50.b		; 80 CE
	jsr ($FCFF.w,X)		; FC FF FC
	sbc $95FF38.l,X		; FF 38 FF 95
	lsr A		; 4A
	ror $3580.w,X		; 7E 80 35
	brk $CC.b		; 00 CC
	and ($F7.b,S),Y		; 33 F7
	.db $42, $FE		; 42 FE
	and $D83B.w,Y		; 39 3B D8
	cpy #$60E3.w		; C0 E3 60
	ror A		; 6A
	bra -127.b		; 80 81
	cpy #$00CA.w		; C0 CA 00
	lda ($00.b,S),Y		; B3 00
	lsr A		; 4A
	brk $39.b		; 00 39
	bpl -36.b		; 10 DC
	brk $FF.b		; 00 FF
	ora ($00.b,X)		; 01 00
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
	cop $FD.b		; 02 FD
	.db $82, $7D, $82		; 82 7D 82
	adc $F807.w,X		; 7D 07 F8
	ora $F00EF0.l		; 0F F0 0E F0
	ora $639CE0.l,X		; 1F E0 9C 63
	adc $1179.w,Y		; 79 79 11
	ora ($31.b),Y		; 11 31
	and ($60.b),Y		; 31 60
	rts		; 60

	cpy #$C0C0.w		; C0 C0 C0
	cmp ($C0.b,X)		; C1 C0
	cpy #$4043.w		; C0 43 40
	ora $57F2.w		; 0D F2 57
	lda #$51BA.w		; A9 BA 51
	lsr $A4.b,X		; 56 A4
	jmp $AF86.w		; 4C 86 AF
	rts		; 60

	sty $73.b,X		; 94 73
	lda $827D.w		; AD 7D 82
	.db $82, $08, $08		; 82 08 08
	brk $04.b		; 00 04
	eor ($0C.b),Y		; 51 0C
	adc $001F04.l,X		; 7F 04 1F 00
	and $101223.l		; 2F 23 12 10
	cmp $B5A0.w,X		; DD A0 B5
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	stx $6D.b		; 86 6D
	.db $82, $99, $D4		; 82 99 D4
	and ($76.b),Y		; 31 76
	lda $11FE.w,X		; BD FE 11
	sbc ($00.b)		; F2 00
	cop $40.b		; 02 40
	lsr A		; 4A
	brk $07.b		; 00 07
	bra -110.b		; 80 92
	brk $36.b		; 00 36
	bcc  62.b		; 90 3E
	brk $3E.b		; 00 3E
	brk $7E.b		; 00 7E
	lda ($40.b)		; B2 40
	eor ($20.b)		; 52 20
	and ($00.b),Y		; 31 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	and ($20.b,X)		; 21 20
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7E.b		; 00 7E
	dey		; 88
	phy		; 5A
	ldy $2C5B.w		; AC 5B 2C
	cmp $107D30.l,X		; DF 30 7D 10
	adc $18.b,X		; 75 18
	adc $18.b,X		; 75 18
	cmp $38.b,X		; D5 38
	trb $3C94.w		; 1C 94 3C
	bcc  60.b		; 90 3C
	bcc  56.b		; 90 38
	php		; 08
	sec		; 38
	plp		; 28
	sec		; 38
	jsr $2038.w		; 20 38 20
	sec		; 38
	brk $42.b		; 00 42
	stz $3842.w		; 9C 42 38
	lsr $38.b,X		; 56 38
	sty $38.b,X		; 94 38
	ldy $71.b		; A4 71
	ldy $71.b		; A4 71
	ldy $8C71.w		; AC 71 8C
	bmi   0.b		; 30 00
	and $BD00.w,X		; 3D 00 BD
	brk $B9.b		; 00 B9
	brk $7B.b		; 00 7B
	brk $7B.b		; 00 7B
	brk $7B.b		; 00 7B
	brk $73.b		; 00 73
	brk $73.b		; 00 73
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	jsr $2080.w		; 20 80 20
	bra  32.b		; 80 20
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	cpx #$E000.w		; E0 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	inc $7284.w		; EE 84 72
	sty $EE.b		; 84 EE
	brk $E4.b		; 00 E4
	clc		; 18
	clv		; B8
	bpl  48.b		; 10 30
	cpy #$C098.w		; C0 98 C0
	sty $40.b		; 84 40
	brk $94.b		; 00 94
	brk $8C.b		; 00 8C
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $50.b		; 00 50
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $78.b		; 00 78
	adc ($38.b,S),Y		; 73 38
	eor $1F3F3F.l,X		; 5F 3F 3F 1F
	ora [$07.b],Y		; 17 07
	ora ($0D.b,S),Y		; 13 0D
	ora $0302.w		; 0D 02 03
	brk $02.b		; 00 02
	ora ($10.b,X)		; 01 10
	bit $3F1F.w,X		; 3C 1F 3F
	ora [$1F.b]		; 07 1F
	ora [$0F.b]		; 07 0F
	brk $0D.b		; 00 0D
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	eor ($19.b,X)		; 41 19
	inc $2F06.w,X		; FE 06 2F
	eor ($B7.b),Y		; 51 B7
	pha		; 48
	dec $2D.b,X		; D6 2D
	ror $AE95.w		; 6E 95 AE
	eor $EE.b,X		; 55 EE
	ora $BF80.w,X		; 1D 80 BF
	brk $07.b		; 00 07
	eor ($81.b),Y		; 51 81
	lsr $3F16.w,X		; 5E 16 3F
	ora ($BF.b)		; 12 BF
	rol A		; 2A
	adc $627F2A.l,X		; 7F 2A 7F 62
	sbc [$EF.b]		; E7 EF
	cmp ($E7.b,S),Y		; D3 E7
	eor $A5BD40.l,X		; 5F 40 BD A5
	inc $4A.b,X		; F6 4A
	xba		; EB
	ora ($D9.b),Y		; 11 D9
	jsl $C302F9.l		; 22 F9 02 C3
	sbc $00EF40.l,X		; FF 40 EF 00
	cpx #$E784.w		; E0 84 E7
	cop $4B.b		; 02 4B
	bcc -123.b		; 90 85
	ldy #$A086.w		; A0 86 A0
	ldx $80.b		; A6 80
	cpy #$FFFF.w		; C0 FF FF
	adc $F9F9.w,Y		; 79 F9 F9
	ora $86FD.w,X		; 1D FD 86
	cmp [$08.b],Y		; D7 08
	lda $6B00.w		; AD 00 6B
	brk $80.b		; 00 80
	sbc $18FF7E.l,X		; FF 7E FF 18
	sbc $001F08.l,X		; FF 08 1F 00
	stx $00.b		; 86 00
	plp		; 28
	brk $52.b		; 00 52
	brk $94.b		; 00 94
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	adc $657D.w,X		; 7D 7D 65
	adc $65.b		; 65 65
	adc $75.b,X		; 75 75
	clc		; 18
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $FF.b		; 00 FF
	sei		; 78
	sbc $20FF60.l,X		; FF 60 FF 20
	sbc $009A00.l,X		; FF 00 9A 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpx #$2000.w		; E0 00 20
	brk $20.b		; 00 20
	jsr $E080.w		; 20 80 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F000.w		; E0 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $D0.b		; 00 D0
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	and $3F06.w,X		; 3D 06 3F
	tsb $3F.b		; 04 3F
	cop $0B.b		; 02 0B
	asl $07.b		; 06 07
	ora ($05.b,X)		; 01 05
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	cop $06.b		; 02 06
	tsb $06.b		; 04 06
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $D6.b		; 00 D6
	bpl  -9.b		; 10 F7
	bpl  -9.b		; 10 F7
	clc		; 18
	sbc $08AF18.l		; EF 18 AF 08
	dec $0C.b,X		; D6 0C
	cmp ($06.b),Y		; D1 06
	ora $390000.l		; 0F 00 00 39
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	bra -116.b		; 80 8C
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	jsr $2080.w		; 20 80 20
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	rti		; 40

	bmi  64.b		; 30 40
	bcc  32.b		; 90 20
	dey		; 88
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	sty $00.b		; 84 00
	php		; 08
	brk $10.b		; 00 10
	brk $60.b		; 00 60
	brk $A0.b		; 00 A0
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	sei		; 78
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $01.b		; 02 01
	asl $02.b		; 06 02
	ora $1F00.w		; 0D 00 1F
	phd		; 0B
	and $127D0D.l,X		; 3F 0D 7D 12
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	php		; 08
	brk $1C.b		; 00 1C
	bpl  62.b		; 10 3E
	bit $0000.w		; 2C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
	brk $FC.b		; 00 FC
	brk $8C.b		; 00 8C
	rti		; 40

	ply		; 7A
	brk $7B.b		; 00 7B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	sty $00.b		; 84 00
	sty $EF.b		; 84 EF
	brk $EF.b		; 00 EF
	brk $C6.b		; 00 C6
	brk $EE.b		; 00 EE
	brk $CC.b		; 00 CC
	brk $88.b		; 00 88
	bra   8.b		; 80 08
	cpx #$8008.w		; E0 08 80
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $38.b		; 00 38
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	sbc $71AC00.l,X		; FF 00 AC 71
	plp		; 28
	adc ($28.b,X)		; 61 28
	adc ($58.b,X)		; 61 58
	.db $62, $58, $E2		; 62 58 E2
	cli		; 58
.INDEX 16
	rep #$58		; C2 58
	rep #$00		; C2 00
	brk $00.b		; 00 00
	adc ($00.b,S),Y		; 73 00
	sbc [$00.b],Y		; F7 00
	sbc [$00.b],Y		; F7 00
	sbc [$00.b]		; E7 00
	sbc [$00.b]		; E7 00
	sbc [$00.b]		; E7 00
	sbc [$C0.b]		; E7 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $42.b		; 00 42
	clv		; B8
	.db $42, $98		; 42 98
	and ($98.b,X)		; 21 98
	lda ($9C.b,X)		; A1 9C
	lda ($CC.b,X)		; A1 CC
	lda ($CC.b,X)		; A1 CC
	and ($80.b,X)		; 21 80
	.db $42, $00		; 42 00
	brk $BC.b		; 00 BC
	brk $BC.b		; 00 BC
	brk $DE.b		; 00 DE
	brk $DE.b		; 00 DE
	brk $DE.b		; 00 DE
	brk $DE.b		; 00 DE
	brk $DE.b		; 00 DE
	brk $BC.b		; 00 BC
	.db $42, $80		; 42 80
	ldy $00.b,X		; B4 00
	plp		; 28
	brk $A4.b		; 00 A4
	bpl -92.b		; 10 A4
	bpl -18.b		; 10 EE
	brk $F6.b		; 00 F6
	sty $947A.w		; 8C 7A 94
	brk $BC.b		; 00 BC
	brk $48.b		; 00 48
	brk $D0.b		; 00 D0
	brk $58.b		; 00 58
	brk $58.b		; 00 58
	brk $10.b		; 00 10
	brk $8C.b		; 00 8C
	brk $94.b		; 00 94
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	asl $03.b		; 06 03
	brk $00.b		; 00 00
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
	sta $AB7CE0.l,X		; 9F E0 7C AB
	adc [$8B.b],Y		; 77 8B
	and $DF33D7.l		; 2F D7 33 DF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	tsa		; 3B
	ora $34.b,S		; 03 34
	bmi  72.b		; 30 48
	rti		; 40

	tsb $000C.w		; 0C 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C8.b		; 00 C8
	brk $74.b		; 00 74
	dey		; 88
	sbc [$38.b]		; E7 38
	.db $82, $FC, $31		; 82 FC 31
	dec $0000.w		; CE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne  16.b		; D0 10
	mvp $84,$45		; 44 45 84
	sty $00.b		; 84 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F4.b		; 00 F4
	brk $7F.b		; 00 7F
	brk $66.b		; 00 66
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sbc $51AF.w,Y		; F9 AF 51
	lda $49B741.l,X		; BF 41 B7 49
	tad		; 5B
	and $2F.b		; 25 2F
	ora ($1B.b,S),Y		; 13 1B
	ora [$0F.b]		; 07 0F
	brk $00.b		; 00 00
	ora $5B.b,S		; 03 5B
	asl A		; 0A
	tad		; 5B
	inc A		; 1A
	tad		; 5B
	ora ($37.b)		; 12 37
	ora ($17.b)		; 12 17
	tsb $07.b		; 04 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $77.b		; 00 77
	plb		; AB
	tyx		; BB
	mvn $59,$BE		; 54 BE 59
	ldy $DBDB.w,X		; BC DB DB
	lda [$F3.b]		; A7 F3
	iny		; C8
	cmp [$30.b],Y		; D7 30
	and [$E0.b]		; 27 E0
	sbc $AAFE54.l,X		; FF 54 FE AA
	jsr ($FAA4.w,X)		; FC A4 FA
	jsl $CF54F4.l		; 22 F4 54 CF
	php		; 08
	and $C0DF20.l		; 2F 20 DF C0
	ldy $67.b		; A4 67
	eor $9FC1.w,X		; 5D C1 9F
	bra 103.b		; 80 67
	cpx #$F819.w		; E0 19 F8
	eor $7F.b,S		; 43 7F
	bne  31.b		; D0 1F
	sed		; F8
	ora $BE425A.l		; 0F 5A 42 BE
	bra 127.b		; 80 7F
	brk $1F.b		; 00 1F
	brk $87.b		; 00 87
	bra -84.b		; 80 AC
	bit $03E3.w		; 2C E3 03
	beq   0.b		; F0 00
	asl $23A0.w,X		; 1E A0 23
	iny		; C8
	rti		; 40

	ror $3FE6.w,X		; 7E E6 3F
	sbc $0F.b,S		; E3 0F
	and ($07.b),Y		; 31 07
	cpy $24C7.w		; CC C7 24
	sbc [$00.b]		; E7 00
	adc ($80.b,X)		; 61 80
	stz $0F80.w		; 9C 80 0F
	bne  23.b		; D0 17
	sed		; F8
	phd		; 0B
	jsr ($3805.w,X)		; FC 05 38
	ora ($D8.b,X)		; 01 D8
	cmp ($60.b,X)		; C1 60
	brk $38.b		; 00 38
	brk $C6.b		; 00 C6
	brk $21.b		; 00 21
	bra -104.b		; 80 98
	cpx $E4.b		; E4 E4
	sbc ($F2.b,S),Y		; F3 F2
	sbc $FC19.w,Y		; F9 19 FC
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $38.b		; 00 38
	brk $DE.b		; 00 DE
	brk $E7.b		; 00 E7
	brk $FB.b		; 00 FB
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $30.b		; 00 30
	brk $08.b		; 00 08
	cpy #$E004.w		; C0 04 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	and $30FFCE.l,X		; 3F CE FF 30
	sbc $80F140.l,X		; FF 40 F1 80
	cmp ($00.b,X)		; C1 00
	eor ($80.b,X)		; 41 80
	.db $82, $01, $83		; 82 01 83
	ora ($FE.b,X)		; 01 FE
	bmi 127.b		; 30 7F
	eor $C0B0F0.l		; 4F F0 B0 C0
	rti		; 40

	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ldy #$9EBF.w		; A0 BF 9E
	adc $9D.b		; 65 9D
	asl A		; 0A
	phy		; 5A
	and $BB.b		; 25 BB
	stz $5B.b		; 64 5B
	cpx $BA.b		; E4 BA
	cpy $2E.b		; C4 2E
	sta ($58.b,X)		; 81 58
	clc		; 18
	ora [$02.b]		; 07 02
	asl $0C64.w		; 0E 64 0C
	lda #$680C.w		; A9 0C 68
	tsb $0CE8.w		; 0C E8 0C
	cmp #$C100.w		; C9 00 C1
	and $3FE0CF.l,X		; 3F CF E0 3F
	sta $70.b,S		; 83 70
	ror $CC83.w,X		; 7E 83 CC
	rol $09.b,X		; 36 09
	mvp $84,$39		; 44 39 84
	eor #$0004.w		; 49 04 00
	ora $003F00.l		; 0F 00 3F 00
	jmp ($8300.w,X)		; 7C 00 83
	brk $37.b		; 00 37
	brk $F6.b		; 00 F6
	brk $C6.b		; 00 C6
	brk $86.b		; 00 86
	ora ($F0.b,X)		; 01 F0
	asl $F880.w,X		; 1E 80 F8
	brk $67.b		; 00 67
	brk $F8.b		; 00 F8
	tsb $91.b		; 04 91
	php		; 08
	ora ($00.b)		; 12 00
	ora ($00.b)		; 12 00
	brk $FE.b		; 00 FE
	brk $E1.b		; 00 E1
	brk $07.b		; 00 07
	brk $98.b		; 00 98
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	ora $11.b		; 05 11
	asl A		; 0A
	and $3C.b,S		; 23 3C
	eor $7E.b,S		; 43 7E
	plp		; 28
	sbc $0FF410.l,X		; FF 10 F4 0F
	lda $1F5F5F.l		; AF 5F 5F 1F
	asl $1D00.w		; 0E 00 1D
	ora ($00.b,X)		; 01 00
	brk $2C.b		; 00 2C
	tsb $50.b		; 04 50
	rti		; 40

	jsr $472F.w		; 20 2F 47
	ora $5E3F07.l,X		; 1F 07 3F 5E
	lda $8FBE5C.l,X		; BF 5C BE 8F
	jmp $B363A5.l		; 5C A5 63 B3
	adc ($0B.b,S),Y		; 73 0B
	ora $F8FFFB.l		; 0F FB FF F8
	sbc $0D3E0E.l,X		; FF 0E 3E 0D
	and $7C00.w,X		; 3D 00 7C
	ora ($7B.b,X)		; 01 7B
	ora ($7F.b,X)		; 01 7F
	ora ($FF.b,X)		; 01 FF
	sbc $E0FF.w,Y		; F9 FF E0
	sbc $060306.l,X		; FF 06 03 06
	ora $28.b,S		; 03 28
	ora [$34.b]		; 07 34
	ora $181F20.l		; 0F 20 1F 18
	ora [$10.b]		; 07 10
	ora $000F10.l		; 0F 10 0F 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	ora [$0B.b]		; 07 0B
	phd		; 0B
	ora $021D.w,X		; 1D 1D 02
	cop $04.b		; 02 04
	tsb $0C.b		; 04 0C
	tsb $BF40.w		; 0C 40 BF
	eor ($BE.b,X)		; 41 BE
	lsr A		; 4A
	lda $57.b,X		; B5 57
	tax		; AA
	rol A		; 2A
	cmp $29.b,X		; D5 29
	bne  85.b		; D0 55
	sty $0ED2.w		; 8C D2 0E
	txs		; 9A
	txs		; 9A
	bmi  48.b		; 30 30
	and ($21.b,X)		; 21 21
	jsr $0A20.w		; 20 20 0A
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	tsb $69.b		; 04 69
	stx $BB.b,Y		; 96 BB
	mvn $38,$F6		; 54 F6 38
	eor $90CF30.l,X		; 5F 30 CF 90
	stx $D9.b,Y		; 96 D9
	sbc [$0D.b]		; E7 0D
	sty $7F.b,X		; 94 7F
	bpl  16.b		; 10 10
	rti		; 40

	rti		; 40

	php		; 08
	ora #$8000.w		; 09 00 80
	bmi -112.b		; 30 90
	cpx #$F081.w		; E0 81 F0
	ora $E0.b		; 05 E0
	adc [$1D.b]		; 67 1D
	cpy #$803D.w		; C0 3D 80
	sbc [$00.b],Y		; F7 00
	cmp [$08.b],Y		; D7 08
	adc $18.b,S		; 63 18
	lda [$08.b],Y		; B7 08
	sbc [$50.b]		; E7 50
	cmp $DA.b		; C5 DA
	brk $E2.b		; 00 E2
	brk $C2.b		; 00 C2
	brk $08.b		; 00 08
	brk $28.b		; 00 28
	brk $9C.b		; 00 9C
	brk $48.b		; 00 48
	brk $58.b		; 00 58
	rti		; 40

	plx		; FA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $017F00.l		; 0F 00 7F 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$06.b]		; 07 06
	tsb $03FC.w		; 0C FC 03
	and $000F00.l,X		; 3F 00 0F 00
	ora [$02.b]		; 07 02
	rol $7097.w,X		; 3E 97 70
	lda $03E300.l,X		; BF 00 E3 03
	and ($30.b,S),Y		; 33 30
	tsb $030C.w		; 0C 0C 03
	ora $00.b,S		; 03 00
	brk $05.b		; 00 05
	tsb $2F.b		; 04 2F
	jsr $007F.w		; 20 7F 00
	jmp ($FC00.w,X)		; 7C 00 FC
	ora [$3E.b]		; 07 3E
	ora $8C.b,S		; 03 8C
	sta ($60.b,X)		; 81 60
	sbc ($06.b,X)		; E1 06
	sbc [$E8.b]		; E7 E8
	ora $813F30.l		; 0F 30 3F 81
	sbc $FC00F8.l,X		; FF F8 00 FC
	brk $7F.b		; 00 7F
	ora ($9F.b,X)		; 01 9F
	sta ($39.b,X)		; 81 39
	and ($F7.b,X)		; 21 F7
	ora [$CE.b]		; 07 CE
	asl $6160.w		; 0E 60 61
	clc		; 18
	inc $FE71.w,X		; FE 71 FE
	and ($BE.b),Y		; 31 BE
	lsr $FF.b		; 46 FF
	asl $FF.b		; 06 FF
	brk $BF.b		; 00 BF
	rts		; 60

	sta $24FCF0.l		; 8F F0 FC 24
	and $8C.b		; 25 8C
	sty $0A48.w		; 8C 48 0A
	jsr $0027.w		; 20 27 00
	ora $007F00.l,X		; 1F 00 7F 00
	sta $05FF00.l,X		; 9F 00 FF 05
	ror $1E81.w,X		; 7E 81 1E
	sbc ($0C.b,X)		; E1 0C
	sta ($38.b,X)		; 81 38
	eor $38.b,S		; 43 38
	jmp $7020.w		; 4C 20 70
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	inc $7E00.w,X		; FE 00 7E
	brk $1E.b		; 00 1E
	brk $7E.b		; 00 7E
	brk $BC.b		; 00 BC
	brk $B3.b		; 00 B3
	brk $8F.b		; 00 8F
	brk $BF.b		; 00 BF
	cop $30.b		; 02 30
	cop $08.b		; 02 08
	cop $00.b		; 02 00
	rep #$00		; C2 00
	cop $00.b		; 02 00
	sty $00.b		; 84 00
	tya		; 98
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	jsr ($FC00.w,X)		; FC 00 FC
	brk $FC.b		; 00 FC
	brk $3C.b		; 00 3C
	brk $FC.b		; 00 FC
	brk $78.b		; 00 78
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvp $C4,$02		; 44 02 C4
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $00.b,S		; 83 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $49.b		; 00 49
	tsb $87.b		; 04 87
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stx $00.b		; 86 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $12.b		; 00 12
	brk $12.b		; 00 12
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0C00.w		; 0C 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and [$0F.b],Y		; 37 0F
	ora $020100.l		; 0F 00 01 02
	brk $05.b		; 00 05
	ora ($08.b,X)		; 01 08
	ora ($02.b),Y		; 11 02
	inc A		; 1A
	ora ($0A.b,X)		; 01 0A
	ora ($00.b,X)		; 01 00
	ora $000000.l		; 0F 00 00 00
	brk $03.b		; 00 03
	ora $06.b,S		; 03 06
	asl $0E.b		; 06 0E
	asl $0C05.w		; 0E 05 0C
	ora $04.b		; 05 04
	sta $1EFEE0.l,X		; 9F E0 FE 1E
	sbc $20DF01.l,X		; FF 01 DF 20
	sta $10EF60.l,X		; 9F 60 EF 10
	nop		; EA
	ora $FB.b,X		; 15 FB
	ora $E000.w		; 0D 00 E0
	brk $1F.b		; 00 1F
	ora ($01.b,X)		; 01 01
	plp		; 28
	php		; 08
	ror A		; 6A
	asl A		; 0A
	phy		; 5A
	lsr A		; 4A
	eor $525F4A.l,X		; 5F 4A 5F 52
	stz $DA61.w		; 9C 61 DA
	ora ($D8.b,X)		; 01 D8
	and $D7.b		; 25 D7
	iny		; C8
	ora ($C8.b,S),Y		; 13 C8
	sta [$C0.b],Y		; 97 C0
	lda [$C1.b],Y		; B7 C1
	ora $6A83.w		; 0D 83 6A
	nop		; EA
	bit $E6.b		; 24 E6
	rol $26.b		; 26 26
	dey		; 88
	inx		; E8
	tsb $88EE.w		; 0C EE 88
	cpx $CD88.w		; EC 88 CD
	brk $F3.b		; 00 F3
	stz $6F61.w,X		; 9E 61 6F
	adc $00.b,X		; 75 00
	bra  -1.b		; 80 FF
	sbc $FEFEFC.l,X		; FF FC FE FE
	asl $E38E.w		; 0E 8E E3
	wai		; CB
	cpx $00.b		; E4 00
	adc ($04.b,X)		; 61 04
	sbc $00.b,X		; F5 00
	sbc $0CFFFF.l,X		; FF FF FF 0C
	sbc $800F06.l,X		; FF 06 0F 80
	sbc ($C0.b,S),Y		; F3 C0
	pea $0000.w		; F4 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	iny		; C8
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	cpy #$00BA.w		; C0 BA 00
	xce		; FB
	brk $EF.b		; 00 EF
	brk $AF.b		; 00 AF
	brk $C6.b		; 00 C6
	brk $6E.b		; 00 6E
	brk $4C.b		; 00 4C
	bra   0.b		; 80 00
	beq   0.b		; F0 00
	mvp $04,$00		; 44 00 04
	brk $10.b		; 00 10
	brk $50.b		; 00 50
	brk $38.b		; 00 38
	brk $90.b		; 00 90
	brk $B0.b		; 00 B0
	ora ($0C.b,S),Y		; 13 0C
	asl $09.b		; 06 09
	ora $0E05.w		; 0D 05 0E
	cop $07.b		; 02 07
	ora ($0A.b),Y		; 11 0A
	and $34.b,S		; 23 34
	adc [$15.b]		; 67 15
	lsr $0C.b		; 46 0C
	tsb $0100.w		; 0C 00 01
	ora ($07.b,X)		; 01 07
	cop $03.b		; 02 03
	ora $1C01.w		; 0D 01 1C
	brk $1A.b		; 00 1A
	cop $38.b		; 02 38
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	cop $06.b		; 02 06
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $03.b		; 02 03
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cpy #$0002.w		; C0 02 00
	bit $F000.w,X		; 3C 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FC00.w,X		; FE 00 FC
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $0F.b,X		; F5 0F
	stx $5F73.w		; 8E 73 5F
	ldy #$D4AE.w		; A0 AE D4
	ora [$4A.b],Y		; 17 4A
	sta $B831B0.l,X		; 9F B0 31 B8
	inc $78.b,X		; F6 78
	asl A		; 0A
	asl A		; 0A
	stz $04.b,X		; 74 04
	tsa		; 3B
	txy		; 9B
	sta $0EC8.w,X		; 9D C8 0E
	cpx $01.b		; E4 01
	sbc ($16.b),Y		; F1 16
	inc $31.b,X		; F6 31
	adc [$AC.b],Y		; 77 AC
	lda ($1C.b,S),Y		; B3 1C
	sbc ($F8.b,X)		; E1 F8
	cop $E4.b		; 02 E4
	ora $E2.b,S		; 03 E2
	eor $46FB.w		; 4D FB 46
	sbc ($0B.b,X)		; E1 0B
	sbc [$48.b],Y		; F7 48
	rti		; 40

	ora $40.b,S		; 03 40
	eor $00.b,S		; 43 00
	ora [$40.b]		; 07 40
	tad		; 5B
	rti		; 40

	ora $0640.w,X		; 1D 40 06
	bpl  23.b		; 10 17
	rti		; 40

	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$5F5F.w		; C0 5F 5F
	jmp $565C.w		; 4C 5C 56
	stx $02CC.w		; 8E CC 02
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $AF.b		; 00 AF
	brk $23.b		; 00 23
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	pea $44F9.w		; F4 F9 44
	cmp #$F008.w		; C9 08 F0
	bne   0.b		; D0 00
	adc $5480.w,Y		; 79 80 54
	ldy #$24F2.w		; A0 F2 24
	adc $00A2.w,X		; 7D A2 00
	xce		; FB
	brk $FB.b		; 00 FB
	brk $F7.b		; 00 F7
	brk $2F.b		; 00 2F
	brk $86.b		; 00 86
	brk $AB.b		; 00 AB
	brk $2D.b		; 00 2D
	brk $A2.b		; 00 A2
	dey		; 88
	bra   8.b		; 80 08
	cpx #$8008.w		; E0 08 80
	bpl   0.b		; 10 00
	ldy #$E000.w		; A0 00 E0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	rti		; 40

	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	cmp [$08.b],Y		; D7 08
	lda $1D00.w,X		; BD 00 1D
	lsr A		; 4A
	sta $80.b,X		; 95 80
	bra -128.b		; 80 80
	lda $3FBEBF.l,X		; BF BF BE 3F
	lda $280007.l,X		; BF 07 00 28
	brk $42.b		; 00 42
	brk $EA.b		; 00 EA
	brk $EA.b		; 00 EA
	brk $FF.b		; 00 FF
	and $7F06FF.l,X		; 3F FF 06 7F
	ora $47.b,S		; 03 47
	sta [$81.b],Y		; 97 81
	lda ($84.b,S),Y		; B3 84
	tsb $C000.w		; 0C 00 C0
	brk $20.b		; 00 20
	brk $A0.b		; 00 A0
	bra -80.b		; 80 B0
	rti		; 40

	cpx $0000.w		; EC 00 00
	sbc #$CC00.w		; E9 00 CC
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
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
	sbc $3C3F.w,X		; FD 3F 3C
	eor $FF90AF.l,X		; 5F AF 90 FF
	eor $5F807F.l		; 4F 7F 80 5F
	ldy #$34EB.w		; A0 EB 34
	ldx $3C51.w,Y		; BE 51 3C
	and $80DF10.l,X		; 3F 10 DF 80
	bne   0.b		; D0 00
	eor $EC1090.l		; 4F 90 10 EC
	jmp $4276.w		; 4C 76 42
	adc $DB29.w,Y		; 79 29 DB
	inc $1F.b		; E6 1F
	cmp $18E0.w,Y		; D9 E0 18
	ora $CED020.l,X		; 1F 20 D0 CE
	sbc $C83721.l,X		; FF 21 37 C8
	bit #$C0F6.w		; 89 F6 C0
	inc $00.b		; E6 00
	sbc $1F00.w,Y		; F9 00 1F
	brk $E0.b		; 00 E0
	cpy #$00EF.w		; C0 EF 00
	and ($00.b,X)		; 21 00
	php		; 08
	rti		; 40

	lsr $09.b		; 46 09
	bpl  14.b		; 10 0E
	bpl  29.b		; 10 1D
	ora $07.b,S		; 03 07
	clc		; 18
	asl A		; 0A
	and $0A.b		; 25 0A
	eor $8D.b		; 45 8D
	ora ($D5.b)		; 12 D5
	asl A		; 0A
	tsb $0E.b		; 04 0E
	brk $09.b		; 00 09
	brk $03.b		; 00 03
	php		; 08
	php		; 08
	ora $10.b,X		; 15 10
	and $30.b,X		; 35 30
	adc ($71.b,S),Y		; 73 71
	pld		; 2B
	adc ($B3.b,X)		; 61 B3
	tda		; 7B
	dec $87.b		; C6 87
	rol $DD3E.w,X		; 3E 3E DD
	jmp.w [$2AEB]		; DC EB 2A
	inc $15.b,X		; F6 15
	sbc $42FF08.l,X		; FF 08 FF 42
	cop $7F.b		; 02 7F
	tsb $BF.b		; 04 BF
	trb $48FF.w		; 1C FF 48
	inc $3E22.w,X		; FE 22 3E
	sta $9C.b,X		; 95 9C
	eor #$5649.w		; 49 49 56
	trb $13.b		; 14 13
	tsb $000F.w		; 0C 0F 00
	ora $011E00.l		; 0F 00 1E 01
	sbc $FC13.w,X		; FD 13 FC
	.db $62, $7C, $02		; 62 7C 02
	tas		; 1B
	asl $04.b		; 06 04
	tsb $03.b		; 04 03
	ora $04.b,S		; 03 04
	tsb $08.b		; 04 08
	php		; 08
	bpl   0.b		; 10 00
	adc ($00.b,X)		; 61 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	txa		; 8A
	stz $3E.b,X		; 74 3E
	and ($CF.b),Y		; 31 CF
	iny		; C8
	sbc [$32.b],Y		; F7 32
	adc $29975B.l		; 6F 5B 97 29
	stx $4630.w		; 8E 30 46
	jmp ($82F7.w,X)		; 7C F7 82
	ora ($F1.b),Y		; 11 F1
	.db $42, $FA		; 42 FA
	and $39.b,S		; 23 39
	sta $18.b,S		; 83 18
	sbc $2A.b,S		; E3 2A
.ACCU 8
	sep #$23		; E2 23
	ldy #$002D.w		; A0 2D 00
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	ora $06.b,S		; 03 06
	ora $08.b,S		; 03 08
	ora [$08.b]		; 07 08
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $06.b		; 00 06
	asl $04.b		; 06 04
	tsb $00.b		; 04 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $E0.b		; 00 E0
	brk $3F.b		; 00 3F
	cpy #$57F8.w		; C0 F8 57
	sbc [$1B.b]		; E7 1B
	adc $5397.w		; 6D 97 53
	lda $003FC2.l,X		; BF C2 3F 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra 119.b		; 80 77
	ora [$6C.b]		; 07 6C
	pla		; 68
	inc A		; 1A
	ora ($0C.b)		; 12 0C
	tsb $3939.w		; 0C 39 39
	and ($61.b,X)		; 21 61
	rol $0E60.w		; 2E 60 0E
	rts		; 60

	asl $0E60.w		; 0E 60 0E
	rts		; 60

	asl $1E30.w,X		; 1E 30 1E
	bmi  30.b		; 30 1E
	bmi  30.b		; 30 1E
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	jsr $203F.w		; 20 3F 20
	and $000F20.l,X		; 3F 20 0F 00
	ora $000F00.l		; 0F 00 0F 00
	cop $CE.b		; 02 CE
	sta ($C7.b,X)		; 81 C7
	bra -61.b		; 80 C3
	bra -63.b		; 80 C1
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	sta $84.b		; 85 84
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $0B3701.l		; 0F 01 37 0B
	adc $000014.l		; 6F 14 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $0B1F04.l		; 0F 04 1F 0B
	cop $0E.b		; 02 0E
	phd		; 0B
	clc		; 18
	ora $43DB60.l		; 0F 60 DB 43
	sty $E00F.w		; 8C 0F E0
	adc $E07880.l,X		; 7F 80 78 E0
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $3C.b		; 00 3C
	brk $73.b		; 00 73
	ora $18.b,S		; 03 18
	clc		; 18
	rts		; 60

	rts		; 60

	bra -128.b		; 80 80
	bne  32.b		; D0 20
	inx		; E8
	bpl  -8.b		; 10 F8
	bra -48.b		; 80 D0
	cli		; 58
	tay		; A8
	sty $0674.w		; 8C 74 06
	sei		; 78
	ora $BA.b,S		; 03 BA
	sta $60.b,S		; 83 60
	rti		; 40

	bcs -96.b		; B0 A0
	bra   0.b		; 80 00
	jsr $7000.w		; 20 00 70
	brk $F8.b		; 00 F8
	brk $FE.b		; 00 FE
	cop $7C.b		; 02 7C
	brk $B8.b		; 00 B8
	bvc  -8.b		; 50 F8
	brk $DC.b		; 00 DC
	jsr $08FC.w		; 20 FC 08
	inc $DF00.w,X		; FE 00 DF
	cop $0F.b		; 02 0F
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	jsr $3030.w		; 20 30 30
	sec		; 38
	clc		; 18
	clc		; 18
	bpl  28.b		; 10 1C
	trb $0C0E.w		; 1C 0E 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	rti		; 40

	bra -80.b		; 80 B0
	bmi  96.b		; 30 60
	bvs 124.b		; 70 7C
	sei		; 78
	jmp ($F4F8.w,X)		; 7C F8 F4
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	jsr $6078.w		; 20 78 60
	sed		; F8
	bpl  -8.b		; 10 F8
	php		; 08
	sed		; F8
	brk $F8.b		; 00 F8
	cld		; D8
	cpx #$C0A0.w		; E0 A0 C0
	rts		; 60

	bra -96.b		; 80 A0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	rti		; 40

	rti		; 40

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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $26.b		; 04 26
	pla		; 68
	asl $007E.w		; 0E 7E 00
	ror $7C18.w,X		; 7E 18 7C
	bpl 124.b		; 10 7C
	bpl 124.b		; 10 7C
	bpl -72.b		; 10 B8
	bvc  24.b		; 50 18
	brk $14.b		; 00 14
	tsb $20.b		; 04 20
	jsr $243C.w		; 20 3C 24
	sec		; 38
	plp		; 28
	sec		; 38
	plp		; 28
	sec		; 38
	plp		; 28
	bvs  32.b		; 70 20
	eor [$08.b],Y		; 57 08
	and [$18.b]		; 27 18
	rol A		; 2A
	ora $4A.b,X		; 15 4A
	and $4E.b,X		; 35 4E
	and ($36.b),Y		; 31 36
	ora #$1D.b		; 09 1D
	cop $07.b		; 02 07
	php		; 08
	pld		; 2B
	and $1B.b,S		; 23 1B
	ora $17.b,S		; 03 17
	cop $37.b		; 02 37
	cop $37.b		; 02 37
	asl $0F.b		; 06 0F
	asl $06.b		; 06 06
	tsb $00.b		; 04 00
	brk $5B.b		; 00 5B
	inc $5B.b,X		; F6 5B
	sbc $ED6BDD.l,X		; FF DD 6B ED
	lsr $7CEF.w,X		; 5E EF 7C
	sbc $61FF7E.l		; EF 7E FF 61
	jsr ($FF03.w,X)		; FC 03 FF
	ora #$FF.b		; 09 FF
	brk $FF.b		; 00 FF
	sty $FF.b,X		; 94 FF
	lda ($FE.b,X)		; A1 FE
	.db $82, $FE, $80		; 82 FE 80
	pea $0194.w		; F4 94 01
	ora ($01.b,X)		; 01 01
	tsb $05.b		; 04 05
	tsb $0803.w		; 0C 03 08
	sbc $09.b,S		; E3 09
	eor $914EA2.l,X		; 5F A2 4E 91
	eor $854B81.l		; 4F 81 4B 85
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	ora $00.b		; 05 00
	jsl $753460.l		; 22 60 34 75
	bit $75.b,X		; 34 75
	bit $71.b,X		; 34 71
	eor $F3837D.l		; 4F 7D 83 F3
	cmp [$0F.b]		; C7 0F
	dec $7D3F.w,X		; DE 3F 7D
	inc $FCFB.w,X		; FE FB FC
	sbc [$FA.b],Y		; F7 FA
	sbc $80F6.w		; ED F6 80
	ora $5F41.w,X		; 1D 41 5F
	cop $3F.b		; 02 3F
	tsb $383F.w		; 0C 3F 38
	inc $FCF0.w,X		; FE F0 FC
	cpx #$C0FA.w		; E0 FA C0
	inc $0C.b,X		; F6 0C
	ora [$50.b]		; 07 50
	ora $401F68.l		; 0F 68 1F 40
	and $200F30.l,X		; 3F 30 0F 20
	ora $211E21.l,X		; 1F 21 1E 21
	asl $0202.w,X		; 1E 02 02
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
	cpy #$C93F.w		; C0 3F C9
	rol $D6.b,X		; 36 D6
	and #$6A.b		; 29 6A
	stx $69.b,Y		; 96 69
	sty $B0.b,X		; 94 B0
	jmp $4EBA.w		; 4C BA 4E
	cpx #$321B.w		; E0 1B 32
	and ($20.b)		; 32 20
	jsr $0101.w		; 20 01 01
	ora #$00.b		; 09 00
	ora $040704.l		; 0F 04 07 04
	ora $04.b		; 05 04
	ora $301603.l,X		; 1F 03 16 30
	asl $30.b		; 06 30
	asl $30.b		; 06 30
	asl $30.b		; 06 30
	asl $30.b		; 06 30
	asl $30.b,X		; 16 30
	asl $F0.b,X		; 16 F0
	sta [$81.b]		; 87 81
	ora $101F00.l		; 0F 00 1F 10
	ora $101F10.l,X		; 1F 10 1F 10
	ora $000F10.l,X		; 1F 10 0F 00
	and $007E20.l		; 2F 20 7E 00
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $81.b		; 00 81
	brk $81.b		; 00 81
	brk $81.b		; 00 81
	brk $81.b		; 00 81
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $FA4A.w,X		; BD 4A FA
	tsb $7C.b		; 04 7C
	jsr $70A8.w		; 20 A8 70
	tay		; A8
	bvs -72.b		; 70 B8
	rts		; 60

	cli		; 58
	jsr $0078.w		; 20 78 00
	lsr $3C14.w,X		; 5E 14 3C
	sec		; 38
	bmi  16.b		; 30 10
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bvs  16.b		; 70 10
	bmi  16.b		; 30 10
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
	cmp $662A.w,X		; DD 2A 66
	tya		; 98
	ldx $18.b		; A6 18
	stz $D8.b,X		; 74 D8
	cpy #$F048.w		; C0 48 F0
	clc		; 18
	brk $30.b		; 00 30
	bra -80.b		; 80 B0
	jsr $8820.w		; 20 20 88
	dey		; 88
	bpl  80.b		; 10 50
	brk $40.b		; 00 40
	cld		; D8
	pla		; 68
	cpx #$E000.w		; E0 00 E0
	jsr $2060.w		; 20 60 20
	inx		; E8
	tsb $0670.w		; 0C 70 06
	ldy $5886.w,X		; BC 86 58
	cmp $38.b,S		; C3 38
	sbc $04.b,S		; E3 04
	adc [$28.b]		; 67 28
	adc $F0CE08.l		; 6F 08 CE F0
	brk $FC.b		; 00 FC
	tsb $78.b		; 04 78
	brk $BE.b		; 00 BE
	.db $82, $5E, $42		; 82 5E 42
	dec A		; 3A
	jsl $740616.l		; 22 16 06 74
	mvp $CE,$78		; 44 78 CE
	plp		; 28
	sty $8C60.w		; 8C 60 8C
	bvs -100.b		; 70 9C
	bvs -100.b		; 70 9C
	bne -104.b		; D0 98
	rti		; 40

	clc		; 18
	rts		; 60

	sec		; 38
	bit $04.b,X		; 34 04
	bvs   0.b		; 70 00
	sei		; 78
	php		; 08
	pla		; 68
	php		; 08
	inx		; E8
	dey		; 88
	rts		; 60

	brk $F0.b		; 00 F0
	bpl -48.b		; 10 D0
	bpl -128.b		; 10 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -96.b		; 80 A0
	rti		; 40

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$0080.w		; C0 80 00
	asl $60.b		; 06 60
	jmp ($F880.w,X)		; 7C 80 F8
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($9804.w,X)		; FC 04 98
	clc		; 18
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc [$BA.b],Y		; 77 BA
	adc [$FA.b],Y		; 77 FA
	sbc [$7A.b],Y		; F7 7A
	sbc [$6A.b],Y		; F7 6A
	sbc $00FF63.l,X		; FF 63 FF 00
	sta $FF9EF0.l		; 8F F0 9E FF
	inc $FE44.w,X		; FE 44 FE
	tsb $FF.b		; 04 FF
	sta $FF.b		; 85 FF
	sta $F7.b,X		; 95 F7
	sty $07.b,X		; 94 07
	ora [$60.b]		; 07 60
	rts		; 60

	eor ($41.b,X)		; 41 41
	bvc -96.b		; 50 A0
	bvc -96.b		; 50 A0
	beq   0.b		; F0 00
	bcs  64.b		; B0 40
	bcs  64.b		; B0 40
	ldy #$C040.w		; A0 40 C0
	brk $80.b		; 00 80
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	asl $02.b		; 06 02
	asl $00.b		; 06 00
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	plp		; 28
	stx $8E68.w		; 8E 68 8E
	bne -100.b		; D0 9C
	bvc  28.b		; 50 1C
	cpx #$A038.w		; E0 38 A0
	sec		; 38
	rti		; 40

	bvs -64.b		; 70 C0
	beq 116.b		; F0 74
	tsb $F4.b		; 04 F4
	sty $68.b		; 84 68
	php		; 08
	inx		; E8
	php		; 08
	bne  16.b		; D0 10
	bne  16.b		; D0 10
	ldy #$2020.w		; A0 20 20
	jsr $0F30.w		; 20 30 0F
	pla		; 68
	ora $607F90.l,X		; 1F 90 7F 60
	sbc $C1FFC0.l,X		; FF C0 FF C1
	inc $FC42.w,X		; FE 42 FC
	ora $FC.b,S		; 03 FC
	tsb $04.b		; 04 04
	ora $15.b,X		; 15 15
	and #$9329.w		; 29 29 93
	sta ($2E.b,S),Y		; 93 2E
	rol $2C2C.w		; 2E 2C 2C
	clv		; B8
	clv		; B8
	bvs 112.b		; 70 70
	bpl -17.b		; 10 EF
	jsr $21DF.w		; 20 DF 21
	dec $5EA1.w,X		; DE A1 5E
	eor $15AF80.l,X		; 5F 80 AF 15
	cmp $5DBF2C.l,X		; DF 2C BF 5D
	sta $9E8D.w		; 8D 8D 9E
	stz $8E8E.w,X		; 9E 8E 8E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   5.b		; 10 05
	bit $0C.b		; 24 0C
	cpy $9D.b		; C4 9D
	ora [$02.b]		; 07 02
	ora $0A0501.l		; 0F 01 05 0A
	tsb $09.b		; 04 09
	tsb $09.b		; 04 09
	tsb $08.b		; 04 08
	brk $0A.b		; 00 0A
	asl $0201.w,X		; 1E 01 02
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	asl $03.b		; 06 03
	ora [$03.b]		; 07 03
	ora [$02.b]		; 07 02
	ora [$06.b]		; 07 06
	ora [$00.b]		; 07 00
	ora ($3F.b,X)		; 01 3F
	and $BF3FBF.l,X		; 3F BF 3F BF
	adc $FF7FBF.l,X		; 7F BF 7F FF
	adc $7EFF7F.l,X		; 7F 7F FF 7E
	sbc $9F3F3E.l,X		; FF 3E 3F 9F
	adc $1F7F1F.l,X		; 7F 1F 7F 1F
	adc $3E7F1F.l,X		; 7F 1F 7F 3E
	adc $3CFF3E.l,X		; 7F 3E FF 3C
	sbc $00FF0C.l,X		; FF 0C FF 00
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
	brk $0E.b		; 00 0E
	asl $0E0E.w		; 0E 0E 0E
	asl $0E1E.w		; 0E 1E 0E
	asl $023C.w,X		; 1E 3C 02
	and $023F1C.l,X		; 3F 1C 3F 02
	and $1F061C.l,X		; 3F 1C 06 1F
	asl $1F.b		; 06 1F
	asl $3F.b		; 06 3F
	tsb $3F.b		; 04 3F
	brk $03.b		; 00 03
	trb $0200.w		; 1C 00 02
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	bmi  14.b		; 30 0E
	jsr $611D.w		; 20 1D 61
	and $1A61.w,X		; 3D 61 1A
	eor $3A.b,S		; 43 3A
	eor $34.b,S		; 43 34
	cmp [$74.b]		; C7 74
	cmp [$0F.b]		; C7 0F
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	jsr $001E.w		; 20 1E 00
	and $3D01.w,X		; 3D 01 3D
	ora ($7A.b,X)		; 01 7A
	.db $42, $3A		; 42 3A
	cop $18.b		; 02 18
	cmp $18.b,S		; C3 18
	cmp $18.b,S		; C3 18
.INDEX 16
	rep #$5C		; C2 5C
	dec $5C.b		; C6 5C
	dec $58.b		; C6 58
	dec $58.b		; C6 58
	cpy $58.b		; C4 58
	cpy $7E.b		; C4 7E
	.db $42, $7E		; 42 7E
	.db $42, $7C		; 42 7C
	rti		; 40

	sec		; 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $38.b		; 04 38
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	sty $18.b		; 84 18
	stz $BCA0.w		; 9C A0 BC
	jsr $A038.w		; 20 38 A0
	sec		; 38
	ldy #$C038.w		; A0 38 C0
	bvs  64.b		; 70 40
	bvs 120.b		; 70 78
	brk $E0.b		; 00 E0
	bra  88.b		; 80 58
	clc		; 18
	bne  16.b		; D0 10
	bne  16.b		; D0 10
	bne  16.b		; D0 10
	ldy #$A020.w		; A0 20 A0
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora [$01.b]		; 07 01
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	tsb $02.b		; 04 02
	ora ($34.b,S),Y		; 13 34
	ora [$3F.b]		; 07 3F
	brk $3F.b		; 00 3F
	tsb $083E.w		; 0C 3E 08
	rol $3E08.w,X		; 3E 08 3E
	php		; 08
	jmp $000C28.l		; 5C 28 0C 00
	asl A		; 0A
	cop $10.b		; 02 10
	bpl  30.b		; 10 1E
	ora ($1C.b)		; 12 1C
	trb $1C.b		; 14 1C
	trb $1C.b		; 14 1C
	trb $38.b		; 14 38
	bpl  92.b		; 10 5C
	plp		; 28
	jmp $186C28.l		; 5C 28 6C 18
	jmp ($6A18.w)		; 6C 18 6A
	trb $081E.w		; 1C 1E 08
	ora [$0E.b],Y		; 17 0E
	ora $103800.l		; 0F 00 38 10
	sec		; 38
	bpl  24.b		; 10 18
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	tsb $0E.b		; 04 0E
	brk $00.b		; 00 00
	brk $92.b		; 00 92
	sbc ($8E.b,S),Y		; F3 8E
	sbc $2E.b,S		; E3 2E
	sbc $2E.b,S		; E3 2E
	sbc $2E.b,S		; E3 2E
	sbc $3E.b,S		; E3 3E
	sbc $3A.b,S		; E3 3A
	sbc $18.b,S		; E3 18
	cmp $4D.b,S		; C3 4D
	eor ($5D.b,X)		; 41 5D
	eor ($9D.b,X)		; 41 9D
	sta ($9C.b,X)		; 81 9C
	bra  92.b		; 80 5C
	rti		; 40

	jmp $405C40.l		; 5C 40 5C 40
	ror $0042.w,X		; 7E 42 00
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
	brk $09.b		; 00 09
	ora $3115.w,Y		; 19 15 31
	rol $1A63.w		; 2E 63 1A
	eor $74.b,S		; 43 74
	cmp [$B8.b]		; C7 B8
	stx $1C70.w		; 8E 70 1C
	bne  28.b		; D0 1C
	asl $00.b		; 06 00
	asl $1D00.w		; 0E 00 1D
	ora ($3D.b,X)		; 01 3D
	ora ($3A.b,X)		; 01 3A
	cop $74.b		; 02 74
	tsb $E8.b		; 04 E8
	php		; 08
	inx		; E8
	php		; 08
	brk $E0.b		; 00 E0
	brk $E1.b		; 00 E1
	brk $C1.b		; 00 C1
	brk $83.b		; 00 83
	ora ($03.b,X)		; 01 03
	brk $06.b		; 00 06
	ora $06.b,S		; 03 06
	ora ($04.b,X)		; 01 04
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$8080.w		; C0 80 80
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$FA.b]		; 07 FA
	ora [$F8.b]		; 07 F8
	ora [$F8.b]		; 07 F8
	phd		; 0B
	beq 114.b		; F0 72
	sta ($01.b,X)		; 81 01
	brk $01.b		; 00 01
	ora $07.b,S		; 03 07
	ora ($63.b,X)		; 01 63
	adc ($60.b,X)		; 61 60
	rts		; 60

	cpy #$00C0.w		; C0 C0 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DF.b		; 00 DF
	asl $1FDF.w,X		; 1E DF 1F
	cmp $9F5F1F.l,X		; DF 1F 5F 9F
	eor $81419F.l,X		; 5F 9F 41 81
	dec $5F1E.w,X		; DE 1E 5F
	and $0E3E0C.l,X		; 3F 0C 3E 0E
	and $8F3F0F.l,X		; 3F 0F 3F 8F
	and $803F81.l,X		; 3F 81 3F 80
	and $9E3F00.l,X		; 3F 00 3F 9E
	and $0512E5.l,X		; 3F E5 12 05
	txa		; 8A
	ror A		; 6A
	sta $33.b		; 85 33
	jmp $1A65.w		; 4C 65 1A
	phk		; 4B
	bit $4A.b,X		; 34 4A
	and $96.b,X		; 35 96
	rtl		; 6B

	inc A		; 1A
	clc		; 18
	ply		; 7A
	sei		; 78
	ora $70.b,X		; 15 70
	ora $1B21.w		; 0D 21 1B
	ora ($37.b,X)		; 01 37
	ora $37.b,S		; 03 37
	cop $6F.b		; 02 6F
	tsb $CD.b		; 04 CD
	dec $35F4.w		; CE F4 35
	xce		; FB
	asl A		; 0A
	inc $ED05.w,X		; FE 05 ED
	and ($6F.b)		; 32 6F
	ldy $EF.b,X		; B4 EF
	stz $EF.b,X		; 74 EF
	stz $40.b,X		; 74 40
	inc $3F30.w,X		; FE 30 3F
	dey		; 88
	stx $6461.w		; 8E 61 64
	ply		; 7A
	pha		; 48
	sbc $FD49.w,X		; FD 49 FD
	bit #$89FD.w		; 89 FD 89
	ora $02.b		; 05 02
	inc $1801.w,X		; FE 01 18
	sbc $14EF16.l		; EF 16 EF 14
	sbc $14EF14.l		; EF 14 EF 14
	sbc $00EF18.l		; EF 18 EF 00
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	sty $C9.b		; 84 C9
	cmp #$CBCB.w		; C9 CB CB
	phd		; 0B
	phd		; 0B
	wai		; CB
	wai		; CB
	asl $06.b		; 06 06
	adc $13F800.l,X		; 7F 00 F8 13
	iny		; C8
	jsl $54A674.l		; 22 74 A6 54
	stx $58.b		; 86 58
	stx $4EE8.w		; 8E E8 4E
	ldy #$000C.w		; A0 0C 00
	brk $0E.b		; 00 0E
	cop $1C.b		; 02 1C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $34.b		; 00 34
	tsb $34.b		; 04 34
	tsb $78.b		; 04 78
	php		; 08
	iny		; C8
	lsr $0EA8.w		; 4E A8 0E
	plp		; 28
	tsb $9C90.w		; 0C 90 9C
	mvp $34,$C8		; 44 C8 34
	bvs -104.b		; 70 98
	bra -24.b		; 80 E8
	bvs  52.b		; 70 34
	tsb $74.b		; 04 74
	tsb $70.b		; 04 70
	bra  40.b		; 80 28
	iny		; C8
	php		; 08
	sed		; F8
	jsr $00F8.w		; 20 F8 00
	cpx #$7040.w		; E0 40 70
	xce		; FB
	bra  -1.b		; 80 FF
	bpl  -1.b		; 10 FF
	sed		; F8
	sbc $FDF8.w,X		; FD F8 FD
	sed		; F8
	sbc $FA.b,X		; F5 FA
	ror $9270.w		; 6E 70 92
	sty $00.b		; 84 00
	bra   0.b		; 80 00
	ora ($10.b)		; 12 10
	plx		; FA
	sbc ($FA.b)		; F2 FA
	sbc ($FA.b)		; F2 FA
	.db $62, $FA, $00		; 62 FA 00
	beq  12.b		; F0 0C
	cpx $E0D4.w		; EC D4 E0
	cpx $C0.b		; E4 C0
	ldy $C0.b,X		; B4 C0
	cpy $4080.w		; CC 80 40
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $88.b		; 00 88
	inx		; E8
	tya		; 98
	cld		; D8
	php		; 08
	iny		; C8
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	ora [$10.b]		; 07 10
	ora $120E11.l		; 0F 11 0E 12
	tsb $0814.w		; 0C 14 08
	asl $0600.w		; 0E 00 06
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	ora $04.b,S		; 03 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	ora $0A.b,S		; 03 0A
	ora [$4F.b]		; 07 4F
	ora [$BE.b]		; 07 BE
	eor $807F84.l		; 4F 84 7F 80
	adc $000000.l,X		; 7F 00 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($58.b,X)		; 01 58
	cli		; 58
	and $4B3D.w,X		; 3D 3D 4B
	and $37.b,X		; 35 37
	asl A		; 0A
	asl $0B.b,X		; 16 0B
	ora $180700.l		; 0F 00 07 18
	asl $001F.w		; 0E 1F 00
	bpl  14.b		; 10 0E
	bmi  55.b		; 30 37
	cop $0F.b		; 02 0F
	ora $0F.b		; 05 0F
	tsb $06.b		; 04 06
	asl $08.b		; 06 08
	php		; 08
	ora ($01.b,X)		; 01 01
	ora $101F00.l		; 0F 00 1F 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $0E1C.w		; 1C 1C 0E
	asl $3E3E.w,X		; 1E 3E 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	tsb $0E3F.w		; 0C 3F 0E
	and $3E7F1E.l,X		; 3F 1E 7F 3E
	rol $1E1E.w,X		; 3E 1E 1E
	tsb $0C0E.w		; 0C 0E 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0C1C.w		; 0C 1C 0C
	trb $1C0C.w		; 1C 0C 1C
	asl $0C7F.w,X		; 1E 7F 0C
	and $0C1F0C.l,X		; 3F 0C 1F 0C
	asl $1E0C.w,X		; 1E 0C 1E
	tsb $0C3E.w		; 0C 3E 0C
	rol $3E0C.w,X		; 3E 0C 3E
	clc		; 18
	adc $3C.b,S		; 63 3C
	adc [$14.b]		; 67 14
	lsr $10.b		; 46 10
	lsr $30.b		; 46 30
	lsr $28.b		; 46 28
	cpy $CC68.w		; CC 68 CC
	bmi -100.b		; 30 9C
	rol $1A22.w,X		; 3E 22 1A
	cop $38.b		; 02 38
	brk $3C.b		; 00 3C
	tsb $3C.b		; 04 3C
	tsb $70.b		; 04 70
	rti		; 40

	bmi   0.b		; 30 00
	pla		; 68
	php		; 08
	plx		; FA
	trb $10FC.w		; 1C FC 10
	jmp $187430.l		; 5C 30 74 18
	sei		; 78
	bpl 120.b		; 10 78
	bpl 120.b		; 10 78
	bmi  56.b		; 30 38
	brk $5C.b		; 00 5C
	rti		; 40

	clc		; 18
	php		; 08
	sec		; 38
	php		; 08
	sec		; 38
	jsr $2030.w		; 20 30 20
	bmi  32.b		; 30 20
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	inx		; E8
	lsr $1C90.w		; 4E 90 1C
	cpx #$C078.w		; E0 78 C0
	bcs -32.b		; B0 E0
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $34.b		; 00 34
	tsb $68.b		; 04 68
	php		; 08
	bpl  16.b		; 10 10
	ldy #$C020.w		; A0 20 C0
	cpy #$0080.w		; C0 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora $02.b		; 05 02
	phd		; 0B
	ora $17.b		; 05 17
	asl A		; 0A
	asl $3D05.w,X		; 1E 05 3D
	asl A		; 0A
	ply		; 7A
	trb $FC.b		; 14 FC
	bmi   1.b		; 30 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	cop $0F.b		; 02 0F
	ora $0F.b		; 05 0F
	asl A		; 0A
	asl $3C14.w,X		; 1E 14 3C
	plp		; 28
	sei		; 78
	pha		; 48
	clc		; 18
	eor $1C.b,S		; 43 1C
	eor [$1C.b]		; 47 1C
	eor [$1C.b]		; 47 1C
	lsr $1C.b		; 46 1C
	lsr $1C.b		; 46 1C
	lsr $28.b		; 46 28
	ror $7E38.w		; 6E 38 7E
	rol $3A02.w,X		; 3E 02 3A
	cop $3A.b		; 02 3A
	cop $38.b		; 02 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $14.b		; 00 14
	tsb $04.b		; 04 04
	tsb $7B.b		; 04 7B
.ACCU 16
.INDEX 16
	rep #$78		; C2 78
	cmp $38.b,S		; C3 38
	sta $3C.b,S		; 83 3C
	sta [$3C.b]		; 87 3C
	stx $34.b		; 86 34
	stx $34.b		; 86 34
	stx $30.b		; 86 30
	stx $3C.b		; 86 3C
	brk $3E.b		; 00 3E
	cop $7E.b		; 02 7E
	cop $7A.b		; 02 7A
	cop $78.b		; 02 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	tsb $0E.b		; 04 0E
	ora $1F.b		; 05 1F
	tsb $1D.b		; 04 1D
	asl $3D.b		; 06 3D
	asl A		; 0A
	tsa		; 3B
	tsb $107F.w		; 0C 7F 10
	xce		; FB
	rts		; 60

	beq   0.b		; F0 00
	ora [$02.b]		; 07 02
	asl $0E0A.w		; 0E 0A 0E
	php		; 08
	asl $1C14.w,X		; 1E 14 1C
	bpl  56.b		; 10 38
	plp		; 28
	bvs  16.b		; 70 10
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
	asl A		; 0A
	ora $05.b		; 05 05
	cop $03.b		; 02 03
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $05.b,S		; 03 05
	brk $03.b		; 00 03
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $DB.b		; 00 DB
	lda $BBDFBB.l,X		; BF BB DF BB
	cmp $7F3BFF.l,X		; DF FF 3B 7F
	txa		; 8A
	sbc $3835E0.l,X		; FF E0 35 38
	sbc $FF08.w		; ED 08 FF
	rti		; 40

	sbc $20FF20.l,X		; FF 20 FF 20
	tsa		; 3B
	brk $9B.b		; 00 9B
	sta ($00.b),Y		; 91 00
	brk $C8.b		; 00 C8
	php		; 08
	beq   0.b		; F0 00
	adc $BAF2.w		; 6D F2 BA
	stz $B4.b,X		; 74 B4
	ply		; 7A
	sed		; F8
	stx $E0.b		; 86 E0
	asl $7EF8.w,X		; 1E F8 7E
	mvp $BC,$C6		; 44 C6 BC
	stx $F6.b		; 86 F6
	tsb $F4.b		; 04 F4
	bra  -8.b		; 80 F8
	bra -92.b		; 80 A4
	bit $9C.b		; 24 9C
	stz $0404.w		; 9C 04 04
	clv		; B8
	bra 120.b		; 80 78
	brk $08.b		; 00 08
	inc $7E08.w,X		; FE 08 7E
	tsb $187E.w		; 0C 7E 18
	ply		; 7A
	clc		; 18
	tda		; 7B
	bpl 115.b		; 10 73
	asl $33.b,X		; 16 33
	asl $33.b,X		; 16 33
	bit $34.b,X		; 34 34
	bit $34.b,X		; 34 34
	bmi  48.b		; 30 30
	bit $20.b		; 24 20
	rol $22.b		; 26 22
	rol $0C22.w		; 2E 22 0C
	brk $0C.b		; 00 0C
	brk $3C.b		; 00 3C
	asl $28.b,X		; 16 28
	asl $3C.b		; 06 3C
	cop $3E.b		; 02 3E
	trb $103C.w		; 1C 3C 10
	jmp $187430.l		; 5C 30 74 18
	stz $28.b,X		; 74 28
	php		; 08
	brk $1C.b		; 00 1C
	tsb $00.b		; 04 00
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	php		; 08
	sec		; 38
	php		; 08
	sec		; 38
	jsr $1038.w		; 20 38 10
	bit $0866.w		; 2C 66 08
	.db $62, $08, $62		; 62 08 62
	trb $1C72.w		; 1C 72 1C
	and ($0C.b)		; 32 0C
	and ($04.b)		; 32 04
	and ($05.b,S),Y		; 33 05
	and ($18.b)		; 32 18
	brk $3C.b		; 00 3C
	jsr $203C.w		; 20 3C 20
	bit $0C20.w		; 2C 20 0C
	brk $1C.b		; 00 1C
	bpl  30.b		; 10 1E
	ora ($1E.b)		; 12 1E
	ora ($1E.b)		; 12 1E
	bit $0A.b,X		; 34 0A
	bmi  30.b		; 30 1E
	jsr $0C3E.w		; 20 3E 0C
	asl $1D04.w,X		; 1E 04 1D
	asl $17.b		; 06 17
	tsb $0A17.w		; 0C 17 0A
	php		; 08
	brk $1C.b		; 00 1C
	bpl   0.b		; 10 00
	brk $1C.b		; 00 1C
	bpl  12.b		; 10 0C
	php		; 08
	asl $0E08.w		; 0E 08 0E
	cop $0E.b		; 02 0E
	tsb $01.b		; 04 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $E8.b		; 00 E8
	ora $F00FE0.l		; 0F E0 0F F0
	ora $D01DF0.l,X		; 1F F0 1D D0
	ora $19D0.w,X		; 1D D0 19
	cpy #$C019.w		; C0 19 C0
	clc		; 18
	sbc ($01.b),Y		; F1 01
	sbc $E909.w,Y		; F9 09 E9
	ora #$08E8.w		; 09 E8 08
	inx		; E8
	php		; 08
	cpx #$F000.w		; E0 00 F0
	bpl -16.b		; 10 F0
	bpl -72.b		; 10 B8
	sty $84B0.w		; 8C B0 84
	bcs -122.b		; B0 86
	bcs -122.b		; B0 86
	bmi -122.b		; 30 86
	sec		; 38
	stx $7C.b		; 86 7C
	dec $7C.b		; C6 7C
	dec $70.b		; C6 70
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	tsb $7C.b		; 04 7C
	tsb $FC.b		; 04 FC
	sty $FC.b		; 84 FC
	sty $B8.b		; 84 B8
	bra  56.b		; 80 38
	brk $58.b		; 00 58
.INDEX 16
	rep #$18		; C2 18
.INDEX 16
	rep #$18		; C2 18
.INDEX 16
	rep #$18		; C2 18
.ACCU 16
	rep #$20		; C2 20
	.db $62, $18, $7A		; 62 18 7A
	tsb $0C7E.w		; 0C 7E 0C
	ror $003C.w,X		; 7E 3C 00
	jmp ($7C40.w,X)		; 7C 40 7C
	rti		; 40

	jmp ($1C40.w,X)		; 7C 40 1C
	brk $24.b		; 00 24
	jsr $3030.w		; 20 30 30
	bmi  48.b		; 30 30
	asl A		; 0A
	tas		; 1B
	cop $33.b		; 02 33
	php		; 08
	and $1C.b,S		; 23 1C
	adc [$34.b]		; 67 34
	adc [$14.b]		; 67 14
	eor [$38.b]		; 47 38
	dec $CE68.w		; CE 68 CE
	ora $01.b		; 05 01
	ora $1F11.w,X		; 1D 11 1F
	ora $3A.b,S		; 03 3A
	jsl $3A021A.l		; 22 1A 02 3A
	cop $74.b		; 02 74
	mvp $04,$34		; 44 34 04
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
	clc		; 18
	jsr ($FE18.w,X)		; FC 18 FE
	bit $E6.b		; 24 E6
	bit $66.b		; 24 66
	plp		; 28
	.db $62, $08, $63		; 62 08 63
	tsb $0E63.w		; 0C 63 0E
	adc $60.b,S		; 63 60
	rts		; 60

	stz $64.b		; 64 64
	cli		; 58
	rti		; 40

	clc		; 18
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	jsl $3C223E.l		; 22 3E 22 3C
	jsr $331E.w		; 20 1E 33
	asl $33.b,X		; 16 33
	tsb $31.b		; 04 31
	tsb $31.b		; 04 31
	tsb $11.b		; 04 11
	tsb $0C19.w		; 0C 19 0C
	ora $1906.w,Y		; 19 06 19
	tsb $0C00.w		; 0C 00 0C
	brk $1E.b		; 00 1E
	bpl  30.b		; 10 1E
	bpl  14.b		; 10 0E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	php		; 08
	tsb $1C66.w		; 0C 66 1C
	ror $3E.b,X		; 76 3E
	brk $3E.b		; 00 3E
	trb $083E.w		; 1C 3E 08
	rol $2E18.w		; 2E 18 2E
	clc		; 18
	asl $3804.w,X		; 1E 04 38
	jsr $2028.w		; 20 28 20
	brk $00.b		; 00 00
	trb $1C00.w		; 1C 00 1C
	trb $1C.b		; 14 1C
	tsb $1C.b		; 04 1C
	tsb $0C.b		; 04 0C
	php		; 08
	ora $1F06.w,X		; 1D 06 1F
	tsb $1F.b		; 04 1F
	tsb $17.b		; 04 17
	asl A		; 0A
	tas		; 1B
	asl $1D.b		; 06 1D
	ora $1B.b,S		; 03 1B
	brk $01.b		; 00 01
	brk $0E.b		; 00 0E
	php		; 08
	asl $0E0A.w		; 0E 0A 0E
	asl A		; 0A
	asl $0704.w		; 0E 04 07
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	cpy #$00F0.w		; C0 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$0000.w		; C0 00 00
	brk $3C.b		; 00 3C
	bpl  60.b		; 10 3C
	bpl  92.b		; 10 5C
	bmi 116.b		; 30 74
	clc		; 18
	stz $18.b,X		; 74 18
	sed		; F8
	brk $E8.b		; 00 E8
	bvs -16.b		; 70 F0
	brk $18.b		; 00 18
	php		; 08
	clc		; 18
	php		; 08
	sec		; 38
	php		; 08
	sec		; 38
	jsr $2038.w		; 20 38 20
	bvs 112.b		; 70 70
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	bit $17.b		; 24 17
	sec		; 38
	asl $103E.w		; 0E 3E 10
	lsr $5C38.w,X		; 5E 38 5C
	bmi 124.b		; 30 7C
	bpl 116.b		; 10 74
	clc		; 18
	stz $18.b,X		; 74 18
	inc A		; 1A
	ora ($04.b)		; 12 04
	tsb $10.b		; 04 10
	brk $3C.b		; 00 3C
	tsb $38.b		; 04 38
	php		; 08
	sec		; 38
	plp		; 28
	sec		; 38
	jsr $2038.w		; 20 38 20
	php		; 08
	and $14.b,S		; 23 14
	and [$14.b]		; 27 14
	adc [$30.b]		; 67 30
	ror $18.b		; 66 18
	lsr $4E28.w		; 4E 28 4E
	jsr $B04C.w		; 20 4C B0
	jmp $1A021E.l		; 5C 1E 02 1A
	cop $3A.b		; 02 3A
	jsl $34041C.l		; 22 1C 04 34
	tsb $34.b		; 04 34
	tsb $38.b		; 04 38
	php		; 08
	pla		; 68
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
	ora ($06.b,X)		; 01 06
	ora ($06.b,X)		; 01 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	cop $06.b		; 02 06
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $0F.b,S		; 03 0F
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	cpx #$E038.w		; E0 38 E0
	sec		; 38
	bra  48.b		; 80 30
	bra  48.b		; 80 30
	brk $30.b		; 00 30
	cpy #$00F0.w		; C0 F0 00
	cpx #$E000.w		; E0 00 E0
	bne  16.b		; D0 10
	bne  16.b		; D0 10
	cpx #$E020.w		; E0 20 E0
	jsr $20E0.w		; 20 E0 20
	jsr $C020.w		; 20 20 C0
	cpy #$C0C0.w		; C0 C0 C0
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	plp		; 28
	ora [$01.b]		; 07 01
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	ora $02.b,S		; 03 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	ora [$9B.b]		; 07 9B
	cpx #$AB7C.w		; E0 7C AB
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
	ora [$00.b]		; 07 00
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	ora $05.b,S		; 03 05
	ora ($04.b,X)		; 01 04
	cop $0C.b		; 02 0C
	ora [$0C.b]		; 07 0C
	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	ora [$04.b]		; 07 04
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	adc $F7F0.w,X		; 7D F0 F7
	ora ($FF.b,X)		; 01 FF
	and $B7.b		; 25 B7
	.db $62, $DE, $40		; 62 DE 40
	cmp $CB5C40.l,X		; DF 40 5C CB
	cmp $D8.b,X		; D5 D8
	inc $00.b,X		; F6 00
	eor $2940.w		; 4D 40 29
	jsr $600A.w		; 20 0A 60
	eor ($61.b,X)		; 41 61
	rti		; 40

	adc $43.b,S		; 63 43
	xba		; EB
.ACCU 16
.INDEX 16
	rep #$FB		; C2 FB
	clv		; B8
	bvs 113.b		; 70 71
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($05.b,X)		; 01 05
	cop $0B.b		; 02 0B
	tsb $17.b		; 04 17
	php		; 08
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	asl $02.b		; 06 02
	ora $BF05.w		; 0D 05 BF
	bit $DD5F.w,X		; 3C 5F DD
	sbc $54B52E.l		; EF 2E B5 54
	sbc [$08.b],Y		; F7 08
	sbc $D3FE45.l,X		; FF 45 FE D3
	sbc $7C1CD4.l,X		; FF D4 1C 7C
	ora $04FD.w		; 0D FD 04
	rol $1E40.w,X		; 3E 40 1E
	rti		; 40

	pha		; 48
	cmp ($95.b),Y		; D1 95
	cmp ($03.b)		; D2 03
	pei ($04.b)		; D4 04
	jsr ($EEE0.w,X)		; FC E0 EE
	sty $BB.b,X		; 94 BB
	lsr A		; 4A
	cmp [$14.b],Y		; D7 14
	adc $FE09.w		; 6D 09 FE
	trb $7D.b		; 14 7D
	trb $E9.b		; 14 E9
	trb $E0.b		; 14 E0
	brk $F0.b		; 00 F0
	stz $C8.b		; 64 C8
	stx $3C04.w		; 8E 04 3C
	.db $82, $D8, $03		; 82 D8 03
	bne -125.b		; D0 83
	bne   7.b		; D0 07
	pei ($00.b)		; D4 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$4000.w		; C0 00 40
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
	jmp ($0000.w,X)		; 7C 00 00
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
	tyx		; BB
	mvn $38,$F6		; 54 F6 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne  16.b		; D0 10
	mvp $84,$44		; 44 44 84
	sty $10.b		; 84 10
	bpl  64.b		; 10 40
	rti		; 40

	php		; 08
	php		; 08
	lsr $CC30.w,X		; 5E 30 CC
	bcc -112.b		; 90 90
	cld		; D8
	cpx #$9008.w		; E0 08 90
	sei		; 78
	ldy #$00B0.w		; A0 B0 00
	cpx #$00E0.w		; E0 E0 00
	brk $80.b		; 00 80
	bmi -112.b		; 30 90
	cpx #$F080.w		; E0 80 F0
	brk $E0.b		; 00 E0
	rts		; 60

	rti		; 40

	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	sbc $F723.w		; ED 23 F7
	cmp $7FFF7F.l		; CF 7F FF 7F
	sbc $77C3BC.l,X		; FF BC C3 77
	dey		; 88
	plx		; FA
	tsb $FD.b		; 04 FD
	rep #$00		; C2 00
	and ($C3.b,S),Y		; 33 C3
	cmp $60FF7F.l		; CF 7F FF 60
	sbc $08C380.l,X		; FF 80 C3 08
	bra  84.b		; 80 54
	bvc -38.b		; 50 DA
	clc		; 18
	sed		; F8
	bra -72.b		; 80 B8
	cpy #$C0F8.w		; C0 F8 C0
	beq -64.b		; F0 C0
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bcs -112.b		; B0 90
	bne -112.b		; D0 90
	bne   0.b		; D0 00
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFC2.w,X		; FD C2 FF
	rti		; 40

	ror $6EC0.w,X		; 7E C0 6E
	beq 124.b		; F0 7C
	cpx #$04F8.w		; E0 F8 04
	cpx #$701C.w		; E0 1C 70
	jsr ($18DA.w,X)		; FC DA 18
	cpx $ECAC.w		; EC AC EC
	bit $04F4.w		; 2C F4 04
	beq  16.b		; F0 10
	rts		; 60

	rts		; 60

	clc		; 18
	clc		; 18
	dey		; 88
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $0F.b,X		; 34 0F
	jsr $181F.w		; 20 1F 18
	ora [$10.b]		; 07 10
	ora $100F10.l		; 0F 10 0F 10
	ora $050708.l		; 0F 08 07 05
	cop $0B.b		; 02 0B
	phd		; 0B
	ora $021D.w,X		; 1D 1D 02
	cop $04.b		; 02 04
	tsb $0C.b		; 04 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	eor [$AA.b],Y		; 57 AA
	rol A		; 2A
	pei ($29.b)		; D4 29
	bne 117.b		; D0 75
	sty $0EF2.w		; 8C F2 0E
	sbc $0F.b		; E5 0F
	sep #$0B		; E2 0B
	inc $2001.w,X		; FE 01 20
	jsr $010A.w		; 20 0A 01
	ora $000300.l		; 0F 00 03 00
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	tsb $00.b		; 04 00
	ora [$06.b]		; 07 06
	ora $0119.w		; 0D 19 01
	ora ($16.b,S),Y		; 13 16
	and [$0E.b],Y		; 37 0E
	asl $3E3D.w		; 0E 3D 3E
	ror $FA7C.w,X		; 7E 7C FA
	jmp ($78F4.w,X)		; 7C F4 78
	tsb $03.b		; 04 03
	php		; 08
	ora [$00.b]		; 07 00
	ora $1C3F04.l		; 0F 04 3F 1C
	ror $FC38.w,X		; 7E 38 FC
	bmi 124.b		; 30 7C
	brk $78.b		; 00 78
	dec $9DD0.w		; CE D0 9D
	iny		; C8
	.db $62, $80, $DF		; 62 80 DF
	asl $3F7F.w,X		; 1E 7F 3F
	and $3F3F3F.l,X		; 3F 3F 3F 3F
	and $F1813F.l,X		; 3F 3F 81 F1
	cop $EA.b		; 02 EA
	ora ($9D.b,X)		; 01 9D
	brk $7E.b		; 00 7E
	asl $1F3F.w,X		; 1E 3F 1F
	adc $1F7F1F.l,X		; 7F 1F 7F 1F
	adc $0F011F.l,X		; 7F 1F 01 0F
	ora ($0B.b,X)		; 01 0B
	ora [$07.b]		; 07 07
	ora $07.b,S		; 03 07
	ora $03.b,S		; 03 03
	tsb $01.b		; 04 01
	asl $02.b		; 06 02
	asl $0D.b		; 06 0D
	tsb $0203.w		; 0C 03 02
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	inc $BA91.w,X		; FE 91 BA
	cmp [$BB.b],Y		; D7 BB
	dec $B7.b,X		; D6 B7
	tda		; 7B
	adc [$BB.b],Y		; 77 BB
	sbc [$3B.b],Y		; F7 3B
	sbc $067973.l,X		; FF 73 79 06
	stp		; DB
	lsr A		; 4A
	sbc $29FF28.l,X		; FF 28 FF 29
	sbc $44FF84.l,X		; FF 84 FF 44
	adc $047744.l,X		; 7F 44 77 04
	stx $00.b		; 86 00
	jsl $1EFA0E.l		; 22 0E FA 1E
	and ($1F.b,X)		; 21 1F
	cmp ($07.b,X)		; C1 07
	inx		; E8
	adc ($E8.b,S),Y		; 73 E8
	sbc ($F1.b,S),Y		; F3 F1
.ACCU 8
.INDEX 8
	sep #$F3		; E2 F3
	cpx #$C5.b		; E0 C5
	pei ($01.b)		; D4 01
	clc		; 18
.INDEX 16
	rep #$DA		; C2 DA
	cop $BA.b		; 02 BA
	eor ($71.b,X)		; 41 71
	cmp ($F1.b,X)		; C1 F1
	cpy #$C0E0.w		; C0 E0 C0
	cpx #$4080.w		; E0 80 40
	bra  64.b		; 80 40
	cpy #$0060.w		; C0 60 00
	jsr $2040.w		; 20 40 20
	cpx #$E0B0.w		; E0 B0 E0
	bpl -16.b		; 10 F0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	asl A		; 0A
	ora [$0D.b]		; 07 0D
	asl $11.b		; 06 11
	asl $0F10.w		; 0E 10 0F
	clc		; 18
	ora $190E19.l		; 0F 19 0E 19
	asl $1EA1.w		; 0E A1 1E
	ora $05.b		; 05 05
	brk $00.b		; 00 00
	tsb $080C.w		; 0C 0C 08
	php		; 08
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	trb $6E1C.w		; 1C 1C 6E
	bra -15.b		; 80 F1
	ldx $2CDF.w		; AE DF 2C
	ldx $CC5F.w,Y		; BE 5F CC
	adc $06FE01.l,X		; 7F 01 FE 06
	sbc $D42B.w,Y		; F9 2B D4
	brk $00.b		; 00 00
	cpx $D30C.w		; EC 0C D3
	cpy #$0121.w		; C0 21 01
	and ($32.b)		; 32 32
	pla		; 68
	pla		; 68
	cmp ($C1.b,X)		; C1 C1
	sty $84.b		; 84 84
	ora #$40.b		; 09 40
	ror $78C0.w		; 6E C0 78
	cmp ($17.b),Y		; D1 17
	tya		; 98
	sbc $39.b,S		; E3 39
	sbc ($09.b,S),Y		; F3 09
	tad		; 5B
	sbc ($F7.b,X)		; E1 F7
	sed		; F8
	rol $06.b,X		; 36 06
	and ($01.b),Y		; 31 01
	and [$07.b]		; 27 07
	pla		; 68
	asl A		; 0A
	bpl  17.b		; 10 11
	brk $01.b		; 00 01
	brk $E1.b		; 00 E1
	cpx #$F1F8.w		; E0 F8 F1
	rti		; 40

	sbc $001140.l		; EF 40 11 00
	inc $FF90.w,X		; FE 90 FF
	tad		; 5B
	sbc $5FFD40.l,X		; FF 40 FD 5F
	sbc $4E0EDF.l,X		; FF DF 0E 4E
	bpl  80.b		; 10 50
	asl $00EE.w		; 0E EE 00
	sta $52.b,X		; 95 52
	tad		; 5B
	rti		; 40

	rti		; 40

	cli		; 58
	eor $78DF5F.l,X		; 5F 5F DF 78
	cpy #$4030.w		; C0 30 40
	rti		; 40

	rts		; 60

	bra  32.b		; 80 20
	rti		; 40

	cpx #$C080.w		; E0 80 C0
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cpy #$8040.w		; C0 40 80
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1D.b		; 00 1D
	ora $0F.b,S		; 03 0F
	tsb $1F.b		; 04 1F
	php		; 08
	ora $180C14.l		; 0F 14 0C 18
	ora [$10.b]		; 07 10
	asl $0F31.w,X		; 1E 31 0F
	jsr $0003.w		; 20 03 00
	ora $05.b		; 05 05
	ora ($09.b,X)		; 01 09
	brk $04.b		; 00 04
	ora $03.b,S		; 03 03
	php		; 08
	ora $09.b,S		; 03 09
	ora $18.b,S		; 03 18
	ora $F7.b,S		; 03 F7
	cmp $DF.b,S		; C3 DF
	stx $FE.b		; 86 FE
	sta $DF.b,X		; 95 DF
	php		; 08
	sbc $FF00.w,Y		; F9 00 FF
	jsr $8C71.w		; 20 71 8C
	and [$50.b]		; 27 50
	stp		; DB
	brk $B7.b		; 00 B7
	ora ($A7.b,X)		; 01 A7
	cop $A8.b		; 02 A8
	bra   6.b		; 80 06
	ora [$20.b]		; 07 20
	lda $D8AFAE.l		; AF AE AF D8
	cmp $B880F0.l,X		; DF F0 80 B8
	bvc -20.b		; 50 EC
	plp		; 28
	jmp $26B050.l		; 5C 50 B0 26
	cpx $F846.w		; EC 46 F8
	eor ($B4.b)		; 52 B4
	eor ($80.b,S),Y		; 53 80
	brk $C0.b		; 00 C0
	bcc  32.b		; 90 20
	sec		; 38
	bpl -16.b		; 10 F0
	tsb $1864.w		; 0C 64 18
	rti		; 40

	tsb $0E40.w		; 0C 40 0E
	.db $42, $20		; 42 20
	brk $D0.b		; 00 D0
	jsr $E090.w		; 20 90 E0
	php		; 08
	beq -60.b		; F0 C4
	sec		; 38
	ldy $58.b		; A4 58
	cpx $D850.w		; EC 50 D8
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	jsr $0C20.w		; 20 20 0C
	ror $88.b		; 66 88
.INDEX 8
	sep #$58		; E2 58
	sbc ($14.b)		; F2 14
	and ($44.b)		; 32 44
	and ($FE.b,S),Y		; 33 FE
	ora $FE.b,S		; 03 FE
	sbc $F7.b,X		; F5 F7
	plx		; FA
	sec		; 38
	ldy #$3C.b		; A0 3C
	ldy #$0C.b		; A0 0C
	cpy #$0C.b		; C0 0C
	cpy #$1E.b		; C0 1E
	sta ($00.b)		; 92 00
	brk $E4.b		; 00 E4
	beq -14.b		; F0 F2
	sed		; F8
	sbc $F83EF8.l,X		; FF F8 3E F8
	cpy $38.b		; C4 38
	sed		; F8
	brk $B0.b		; 00 B0
	rti		; 40

	bvc -96.b		; 50 A0
	bne  32.b		; D0 20
	inx		; E8
	bpl  50.b		; 10 32
	plx		; FA
	brk $F8.b		; 00 F8
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	rti		; 40

	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	bra -48.b		; 80 D0
	cpy #$FF.b		; C0 FF
	tsb $0E7D.w		; 0C 7D 0E
	eor $3D3E.w,X		; 5D 3E 3D
	tas		; 1B
	tsa		; 3B
	ora $211F.w,X		; 1D 1F 21
	ora $301333.l		; 0F 33 13 30
	ror $1F62.w		; 6E 62 1F
	ora ($3F.b),Y		; 11 3F
	ora ($1F.b,X)		; 01 1F
	tsb $1F.b		; 04 1F
	cop $0B.b		; 02 0B
	asl A		; 0A
	ora ($10.b,S),Y		; 13 10
	tsb $D700.w		; 0C 00 D7
	ldx $BAD7.w,Y		; BE D7 BA
	stp		; DB
	ldx $BB.b,Y		; B6 BB
	cmp $BFDFBB.l,X		; DF BB DF BF
	cld		; D8
	sbc $37CB98.l,X		; FF 98 CB 37
	inc $FF40.w,X		; FE 40 FF
	eor $FF.b		; 45 FF
	eor #$FF.b		; 49 FF
	jsr $20FF.w		; 20 FF 20
	xce		; FB
	and $B8.b,S		; 23 B8
	jsr $0434.w		; 20 34 04
	inx		; E8
	bpl  -8.b		; 10 F8
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	jsr $E000.w		; 20 00 E0
	bra -32.b		; 80 E0
	bne -64.b		; D0 C0
	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	ldy #$20.b		; A0 20
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	rti		; 40

	rti		; 40

	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	rol $0000.w,X		; 3E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D1.b		; 00 D1
	rol $7F80.w,X		; 3E 80 7F
	rts		; 60

	ora $433E41.l,X		; 1F 41 3E 43
	bit $3C43.w,X		; 3C 43 3C
	and $1C.b,S		; 23 1C
	ora [$08.b],Y		; 17 08
	bit $742C.w		; 2C 2C 74
	stz $08.b,X		; 74 08
	php		; 08
	bpl  16.b		; 10 10
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	eor $ABA8.w,X		; 5D A8 AB
	eor ($A6.b)		; 52 A6
	eor $D7.b,S		; 43 D7
	bmi -54.b		; 30 CA
	and $3E96.w,Y		; 39 96 3E
	dey		; 88
	and $8004FB.l		; 2F FB 04 80
	.db $82, $28, $06		; 82 28 06
	and $000F02.l,X		; 3F 02 0F 00
	ora [$11.b],Y		; 17 11
	ora #$08.b		; 09 08
	ora ($01.b),Y		; 11 01
	trb $FF18.w		; 1C 18 FF
	sbc $87FFFF.l,X		; FF FF FF 87
	adc $17007F.l,X		; 7F 7F 00 17
	php		; 08
	and $265F12.l		; 2F 12 5F 26
	lda $FFF846.l,X		; BF 46 F8 FF
	adc $7F00FF.l,X		; 7F FF 00 7F
	brk $00.b		; 00 00
	asl A		; 0A
	cop $16.b		; 02 16
	tsb $36.b		; 04 36
	bpl 110.b		; 10 6E
	plp		; 28
	jsr ($FFBF.w,X)		; FC BF FF
	bcs  -1.b		; B0 FF
	lda $FF.b,S		; A3 FF
	bit $A05F.w		; 2C 5F A0
	adc $CEF580.l,X		; 7F 80 F5 CE
	cmp [$FC.b],Y		; D7 FC
	tya		; 98
	lda $20B0A0.l,X		; BF A0 B0 20
	lda $00.b,S		; A3 00
	bit $2181.w		; 2C 81 21
	sta $05.b		; 85 05
	dec $FE10.w,X		; DE 10 FE
	cop $05.b		; 02 05
	ora $06.b,S		; 03 06
	ora $08.b,S		; 03 08
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
	adc #$60.b		; 69 60
	bpl   0.b		; 10 00
	ora $3419.w,Y		; 19 19 34
	bit $60.b,X		; 34 60
	rts		; 60

	.db $42, $42		; 42 42
	ora $0F03.w,X		; 1D 03 0F
	tsb $1F.b		; 04 1F
	php		; 08
	ora $180C14.l		; 0F 14 0C 18
	ora [$30.b],Y		; 17 30
	asl $1721.w		; 0E 21 17
	jsr $0003.w		; 20 03 00
	ora $05.b		; 05 05
	ora ($09.b,X)		; 01 09
	brk $04.b		; 00 04
	ora $03.b,S		; 03 03
	php		; 08
	ora $19.b,S		; 03 19
	ora $18.b,S		; 03 18
	ora $F7.b,S		; 03 F7
	cmp $DF.b,S		; C3 DF
	stx $FE.b		; 86 FE
	sta $D7.b,X		; 95 D7
	php		; 08
	sbc $F206.w,X		; FD 06 F2
	and $71.b,S		; 23 71
	sta $4139.w		; 8D 39 41
	stp		; DB
	brk $B7.b		; 00 B7
	ora ($A7.b,X)		; 01 A7
	cop $A8.b		; 02 A8
	bra   4.b		; 80 04
	asl $2A.b		; 06 2A
	lda $C5AFAC.l		; AF AC AF C5
	cmp [$6A.b]		; C7 6A
	beq  -3.b		; F0 FD
	sbc ($FB.b,S),Y		; F3 FB
	pea $F97E.w		; F4 7E F9
	lda $3C4F78.l,X		; BF 78 4F 3C
	and [$0F.b],Y		; 37 0F
	tad		; 5B
	and [$00.b]		; 27 00
	sbc ($60.b),Y		; F1 60
	sbc ($64.b,S),Y		; F3 64
	beq  49.b		; F0 31
	sed		; F8
	ora #$79.b		; 09 79
	tsb $3C.b		; 04 3C
	ora ($0F.b,X)		; 01 0F
	and ($17.b),Y		; 31 17
	sbc $7E7FFF.l,X		; FF FF 7F 7E
	lda $D7B9.w,Y		; B9 B9 D7
	lsr $EF.b,X		; 56 EF
	php		; 08
	sbc $077AD0.l,X		; FF D0 7A 07
	xba		; EB
	rol $FF7E.w,X		; 3E 7E FF
	sec		; 38
	inc $FF11.w,X		; FE 11 FF
	asl $7E.b		; 06 7E
	php		; 08
	clc		; 18
.INDEX 16
	rep #$D2		; C2 D2
	ora $013F88.l		; 0F 88 3F 01
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
	cpy #$2010.w		; C0 10 20
	beq  64.b		; F0 40
	rts		; 60

	brk $C0.b		; 00 C0
	cpy #$0000.w		; C0 00 00
	brk $60.b		; 00 60
	jsr $00C0.w		; 20 C0 00
	cpx #$C000.w		; E0 00 C0
	cpy #$0080.w		; C0 80 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	beq -128.b		; F0 80
	clv		; B8
	bvc -20.b		; 50 EC
	plp		; 28
	jmp $2CB850.l		; 5C 50 B8 2C
	beq  86.b		; F0 56
	jsr ($9856.w,X)		; FC 56 98
	adc ($80.b)		; 72 80
	brk $C0.b		; 00 C0
	bcc  32.b		; 90 20
	sec		; 38
	bpl -16.b		; 10 F0
	brk $60.b		; 00 60
	tsb $0844.w		; 0C 44 08
	rti		; 40

	tsb $9840.w		; 0C 40 98
	and ($98.b)		; 32 98
	adc ($D4.b)		; 72 D4
	lda ($E4.b)		; B2 E4
	cmp ($DE.b)		; D2 DE
	xba		; EB
	ror $B8F3.w,X		; 7E F3 B8
	tda		; 7B
	lda $0C7C.w,X		; BD 7C 0C
	rti		; 40

	tsb $0C40.w		; 0C 40 0C
	bra  28.b		; 80 1C
	bne   4.b		; D0 04
	cpx #$F004.w		; E0 04 F0
	ora ($7E.b)		; 12 7E
	trb $DD7E.w		; 1C 7E DD
	ldy $1CFE.w,X		; BC FE 1C
	jsr ($E080.w,X)		; FC 80 E0
	brk $D0.b		; 00 D0
	jsr $50A8.w		; 20 A8 50
	inx		; E8
	bpl -12.b		; 10 F4
	php		; 08
	tsb $00BE.w		; 0C BE 00
	trb $8000.w		; 1C 00 80
	brk $00.b		; 00 00
	ldy #$D080.w		; A0 80 D0
	bra  80.b		; 80 50
	rti		; 40

	pla		; 68
	rts		; 60

	pea $FC08.w		; F4 08 FC
	brk $F8.b		; 00 F8
	brk $B8.b		; 00 B8
	cpy #$80F0.w		; C0 F0 80
	cpx #$8010.w		; E0 10 80
	bvs -64.b		; 70 C0
	beq 104.b		; F0 68
	rts		; 60

	bcs -80.b		; B0 B0
	bcs -80.b		; B0 B0
	bne  16.b		; D0 10
	cpy #$8040.w		; C0 40 80
	bra  96.b		; 80 60
	rts		; 60

	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	lda #$53.b		; A9 53
	lda ($EB.b,X)		; A1 EB
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
	tsb $6014.w		; 0C 14 60
	tsa		; 3B
	jmp ($4C08.w)		; 6C 08 4C
	pld		; 2B
	cpy $DC71.w		; CC 71 DC
	bne  28.b		; D0 1C
	beq -56.b		; F0 C8
	plx		; FA
	brk $3B.b		; 00 3B
	and $10.b,S		; 23 10
	brk $33.b		; 00 33
	ora $70.b,S		; 03 70
	eor ($28.b,X)		; 41 28
	php		; 08
	plp		; 28
	ora #$C0.b		; 09 C0
	ora ($00.b,X)		; 01 00
	ora ($DD.b,X)		; 01 DD
	and #$75.b		; 29 75
	and $8509.w		; 2D 09 85
	sbc $FE79.w,X		; FD 79 FE
	jsr ($FEFF.w,X)		; FC FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	ora ($2B.b,X)		; 01 2B
	sta ($AF.b,X)		; 81 AF
	sta ($F7.b,X)		; 81 F7
	bmi 123.b		; 30 7B
	sei		; 78
	sbc $FE7E.w,X		; FD 7E FE
	ror $7EFF.w,X		; 7E FF 7E
	sbc $3E037D.l,X		; FF 7D 03 3E
	ora $2F.b		; 05 2F
	asl $0D1E.w,X		; 1E 1E 0D
	ora $0F0E.w,X		; 1D 0E 0F
	bpl   7.b		; 10 07
	ora $1809.w,Y		; 19 09 18
	bmi  51.b		; 30 33
	tsb $1E09.w		; 0C 09 1E
	brk $0F.b		; 00 0F
	cop $0F.b		; 02 0F
	ora ($05.b,X)		; 01 05
	ora $09.b		; 05 09
	php		; 08
	asl $00.b		; 06 00
	rtl		; 6B

	sta $AD8D7B.l,X		; 9F 7B 8D AD
	cmp ($FD.b,S),Y		; D3 FD
	eor [$FD.b]		; 47 FD
	sta $FFECDF.l		; 8F DF EC FF
	cpy $1BE5.w		; CC E5 1B
	and $820FA0.l,X		; 3F A0 0F 82
	ora [$D4.b]		; 07 D4
	eor [$40.b]		; 47 40
	sta $11FD10.l,X		; 9F 10 FD 11
	jmp.w [$1A10]		; DC 10 1A
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
	cop $00.b		; 02 00
	brk $48.b		; 00 48
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bne   0.b		; D0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	bra -120.b		; 80 88
	brk $40.b		; 00 40
	bra -62.b		; 80 C2
	php		; 08
	sty $11.b		; 84 11
	brk $80.b		; 00 80
	cmp ($83.b,X)		; C1 83
	bra -128.b		; 80 80
	eor $0A.b		; 45 0A
	bpl  80.b		; 10 50
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
	brk $28.b		; 00 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	tsb $1C.b		; 04 1C
	ora ($0C.b,X)		; 01 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($84.b,X)		; 01 84
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	bpl  24.b		; 10 18
	.db $82, $84, $42		; 82 84 42
	jsr $0000.w		; 20 00 00
	brk $24.b		; 00 24
	bra -104.b		; 80 98
	brk $03.b		; 00 03
	rti		; 40

	cop $90.b		; 02 90
	jmp $86A2.w		; 4C A2 86
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $34.b		; 00 34
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	ldy #$006C.w		; A0 6C 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $84.b		; 00 84
	brk $00.b		; 00 00
	bpl  32.b		; 10 20
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	adc $0000.w,X		; 7D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	jsr $1010.w		; 20 10 10
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	bit $02.b,X		; 34 02
	and ($00.b,X)		; 21 00
	rti		; 40

	ora ($22.b)		; 12 22
	mvp $0C,$40		; 44 40 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tay		; A8
	.db $D6		; Opcode D6 overrunning bank boundry at 11FFFE. Skipping.
	.db $D7		; Opcode D7 overrunning bank boundry at 11FFFF. Skipping.
.ENDS
