.BANK 14 SLOT 0
.ORG $0000

.SECTION "Bank14" FORCE

	cmp $7650.w,X		; DD 50 76
	jsr $00BE.w		; 20 BE 00
	and $8952.w		; 2D 52 89
	eor ($4B.b)		; 52 4B
	bcc  75.b		; 90 4B
	bcc  66.b		; 90 42
	sta $7250.w,Y		; 99 50 72
	jsr $00AB.w		; 20 AB 00
	tad		; 5B
	brk $DB.b		; 00 DB
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	eor [$0E.b],Y		; 57 0E
	ldx $EC0C.w,Y		; BE 0C EC
	brk $D8.b		; 00 D8
	brk $74.b		; 00 74
	brk $6C.b		; 00 6C
	brk $E8.b		; 00 E8
	brk $B0.b		; 00 B0
	brk $00.b		; 00 00
	ldx $4C00.w		; AE 00 4C
	brk $50.b		; 00 50
	brk $60.b		; 00 60
	brk $A8.b		; 00 A8
	brk $B0.b		; 00 B0
	brk $B0.b		; 00 B0
	brk $C0.b		; 00 C0
	jsl $7A057C.l		; 22 7C 05 7A
	rol $4A.b,X		; 36 4A
	inc A		; 1A
	rol $09.b		; 26 09
	ora [$7A.b],Y		; 17 7A
	ora $D8.b,S		; 03 D8
	brk $F8.b		; 00 F8
	sta $79.b		; 85 79
	cli		; 58
	adc $70.b,X		; 75 70
	eor $40.b		; 45 40
	and ($20.b,X)		; 21 20
	ora ($10.b)		; 12 10
	ora ($04.b,X)		; 01 04
	brk $37.b		; 00 37
	ora [$B0.b]		; 07 B0
	ldy $F41B.w		; AC 1B F4
	phy		; 5A
	iny		; C8
	jmp $04F0.w		; 4C F0 04
	pha		; 48
	bit $D8D0.w,X		; 3C D0 D8
	tsb $BEF0.w		; 0C F0 BE
	trb DMASRC0H.w		; 1C 03 43
	asl A		; 0A
	.db $42, $D0		; 42 D0
	rts		; 60

	sed		; F8
	brk $F0.b		; 00 F0
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $08.b		; 00 08
	jmp $AD03FA.l		; 5C FA 03 AD
	asl $7F.b		; 06 7F
	sta ($FF.b,X)		; 81 FF
	sbc $FFFF1C.l,X		; FF 1C FF FF
	brk $99.b		; 00 99
	eor $56D7.w,Y		; 59 D7 56
	ora $50.b		; 05 50
	cop $50.b		; 02 50
	ora ($81.b,X)		; 01 81
	adc $FF00FF.l,X		; 7F FF 00 FF
	brk $00.b		; 00 00
	ora ($7F.b),Y		; 11 7F
	asl $7E.b		; 06 7E
	jmp ($FC20.w,X)		; 7C 20 FC
	cpy #$FC.b		; C0 FC
	bvc  -4.b		; 50 FC
	jsr $C0FC.w		; 20 FC C0
	bne  40.b		; D0 28
	clv		; B8
	cpy $DA.b		; C4 DA
	asl $00.b		; 06 00
	inx		; E8
	cpy #$C8.b		; C0 C8
	bvc -48.b		; 50 D0
	jsr $00A8.w		; 20 A8 00
	cpy #$00.b		; C0 00
	bit $CE00.w		; 2C 00 CE
	brk $2F.b		; 00 2F
	adc $FFF6.w,Y		; 79 F6 FF
	sei		; 78
	adc $1F3F3E.l,X		; 7F 3E 3F 1F
	ora $071F0F.l,X		; 1F 0F 1F 07
	and $0A3511.l		; 2F 11 35 0A
	.db $62, $F0, $30		; 62 F0 30
	sei		; 78
	clc		; 18
	rol $1F0F.w,X		; 3E 0F 1F
	ora [$0F.b]		; 07 0F
	ora ($07.b,X)		; 01 07
	brk $11.b		; 00 11
	brk $0A.b		; 00 0A
	ora [$02.b]		; 07 02
	ora $020F05.l		; 0F 05 0F 02
	ora $010F0F.l,X		; 1F 0F 0F 01
	ora $03.b		; 05 03
	ora $03.b		; 05 03
	cop $01.b		; 02 01
	cop $02.b		; 02 02
	ora $05.b		; 05 05
	cop $03.b		; 02 03
	ora ($0F.b,X)		; 01 0F
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	dey		; 88
	jsr $2098.w		; 20 98 20
	pla		; 68
	bpl  68.b		; 10 44
	bpl  52.b		; 10 34
	php		; 08
	jsl $042A08.l		; 22 08 2A 04
	ora $00.b,X		; 15 00
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	ora [$00.b],Y		; 17 00
	ora $00.b,X		; 15 00
	ora $00.b,X		; 15 00
	asl $00.b,X		; 16 00
	asl $00.b,X		; 16 00
	jsl $003C00.l		; 22 00 3C 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	stz $FC68.w		; 9C 68 FC
	brk $FE.b		; 00 FE
	ora $1F7E60.l,X		; 1F 60 7E 1F
	jsr $1400.w		; 20 00 14
	ora $0A.b,S		; 03 0A
	ora ($60.b,X)		; 01 60
	brk $10.b		; 00 10
	brk $7C.b		; 00 7C
	brk $20.b		; 00 20
	brk $0C.b		; 00 0C
	ora $001F00.l,X		; 1F 00 1F 00
	ora $000700.l		; 0F 00 07 00
	ora [$07.b]		; 07 07
	ora $1F1F0F.l		; 0F 0F 1F 1F
	and $373F1F.l,X		; 3F 1F 3F 37
	adc $667F36.l,X		; 7F 36 7F 66
	sbc $0707.w,X		; FD 07 07
	ora $181F08.l		; 0F 08 1F 18
	and $203F2D.l,X		; 3F 2D 3F 20
	adc $497F48.l,X		; 7F 48 7F 49
	sbc $7698.w,X		; FD 98 76
	ora $3C0F53.l		; 0F 53 0F 3C
	ora $0F.b,S		; 03 0F
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	and $002F00.l		; 2F 00 2F 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $0B.b		; 02 0B
	brk $0D.b		; 00 0D
	brk $16.b		; 00 16
	brk $1A.b		; 00 1A
	brk $0B.b		; 00 0B
	brk $06.b		; 00 06
	ora #$02.b		; 09 02
	ora $0C03.w		; 0D 03 0C
	brk $05.b		; 00 05
	brk $03.b		; 00 03
	brk $0B.b		; 00 0B
	brk $07.b		; 00 07
	brk $05.b		; 00 05
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	tsb $00.b		; 04 00
	ora $1502.w		; 0D 02 15
	cop $12.b		; 02 12
	tsb $15.b		; 04 15
	php		; 08
	jsl $102C08.l		; 22 08 2C 10
	stz $00.b,X		; 74 00
	dey		; 88
	jsr $0700.w		; 20 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	dec A		; 3A
	cmp $38.b,S		; C3 38
	cmp $74.b,S		; C3 74
	cmp [$30.b]		; C7 30
	stx $70.b		; 86 70
	stx $68.b		; 86 68
	sty $8CE0.w		; 8C E0 8C
	rti		; 40

	tsb $003C.w		; 0C 3C 00
	ror $3A00.w,X		; 7E 00 3A
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $A2.b		; 00 A2
	ora $18A3.w,Y		; 19 A3 18
	sbc $C43C00.l,X		; FF 00 3C C4
	stx $86F8.w		; 8E F8 86
	beq -99.b		; F0 9D
	sbc ($8D.b),Y		; F1 8D
	sbc ($00.b,X)		; E1 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sec		; 38
	sta $00.b,S		; 83 00
	eor [$00.b]		; 47 00
	eor $000E00.l,X		; 5F 00 0E 00
	asl $E000.w,X		; 1E 00 E0
	bpl -64.b		; 10 C0
	bvs -64.b		; 70 C0
	beq -128.b		; F0 80
	cpx #$80.b		; E0 80
	cpx #$80.b		; E0 80
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra  32.b		; 80 20
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $E9.b		; 00 E9
	sty $E9.b,X		; 94 E9
	ora ($AA.b)		; 12 AA
	eor ($DD.b),Y		; 51 DD
	adc $F2.b,S		; 63 F2
	ora [$F9.b],Y		; 17 F9
	cmp [$F9.b]		; C7 F9
	cpy $C6.b		; C4 C6
	tay		; A8
	asl $B0.b		; 06 B0
	tsb $30.b		; 04 30
	tsb $51.b		; 04 51
	brk $63.b		; 00 63
	brk $1E.b		; 00 1E
	cpy #$C0.b		; C0 C0
	sta [$D0.b]		; 87 D0
	sta $B8.b,S		; 83 B8
	cmp $22.b,S		; C3 22
	jsr ($1D1C.w,X)		; FC 1C 1D
	.db $62, $6A, $CC		; 62 6A CC
	bne -100.b		; D0 9C
	ldy #$28.b		; A0 28
	lsr $9E50.w,X		; 5E 50 9E
	bne   0.b		; D0 00
	ldx $1F08.w,Y		; BE 08 1F
	jsr $3482.w		; 20 82 34
	brk $68.b		; 00 68
	brk $C0.b		; 00 C0
	bpl -112.b		; 10 90
	bmi  80.b		; 30 50
	bit $09.b,X		; 34 09
	asl $1706.w,X		; 1E 06 17
	ora ($31.b,X)		; 01 31
	ora $0D31.w,X		; 1D 31 0D
	and ($1D.b,X)		; 21 1D
	and ($1C.b,X)		; 21 1C
	and ($1C.b,X)		; 21 1C
	and ($04.b,X)		; 21 04
	brk $09.b		; 00 09
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	adc $3A.b,S		; 63 3A
	adc $18.b,S		; 63 18
	eor $38.b,S		; 43 38
	eor $3C.b,S		; 43 3C
	eor [$00.b]		; 47 00
	cmp [$38.b]		; C7 38
	sbc $FD08.w,X		; FD 08 FD
	bit $1C00.w,X		; 3C 00 1C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	brk $40.b		; 00 40
	brk $70.b		; 00 70
	brk $1C.b		; 00 1C
	tsb $13.b		; 04 13
	brk $2A.b		; 00 2A
	tsb $37.b		; 04 37
	php		; 08
	eor $08.b,X		; 55 08
	ror A		; 6A
	bpl -84.b		; 10 AC
	bpl -108.b		; 10 94
	jsr $0F00.w		; 20 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	bne -32.b		; D0 E0
	php		; 08
	brk $98.b		; 00 98
	rts		; 60

	mvn $AC,$20		; 54 20 AC
	bpl -94.b		; 10 A2
	clc		; 18
	lsr $08.b,X		; 56 08
	rol A		; 2A
	tsb $80.b		; 04 80
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $80.b		; 00 80
	bra  -8.b		; 80 F8
	sed		; F8
	inc $FEFC.w,X		; FE FC FE
	dec $86FF.w		; CE FF 86
	sbc $F0FF02.l,X		; FF 02 FF F0
	and $F88080.l,X		; 3F 80 80 F8
	sei		; 78
	inc $FE26.w,X		; FE 26 FE
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	and ($EF.b),Y		; 31 EF
	adc #$ADFF.w		; 69 FF AD
	ora $008007.l		; 0F 07 80 00
	cpy #$E080.w		; C0 80 E0
	rti		; 40

	beq -96.b		; F0 A0
	beq -32.b		; F0 E0
	sbc ($60.b),Y		; F1 60
	adc ($E0.b),Y		; 71 E0
	sei		; 78
	sbc ($00.b,S),Y		; F3 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	ldy #$40E0.w		; A0 E0 40
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	ora ($F0.b,X)		; 01 F0
	brk $3F.b		; 00 3F
	trb $7E23.w		; 1C 23 7E
	ora $24E6.w,X		; 1D E6 24
	txs		; 9A
	brk $54.b		; 00 54
	jsr $40BC.w		; 20 BC 40
	tay		; A8
	rti		; 40

	ora $000200.l,X		; 1F 00 02 00
	tsb $001C.w		; 0C 1C 00
	jmp ($7C00.w,X)		; 7C 00 7C
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	bit $4400.w		; 2C 00 44
	bpl  84.b		; 10 54
	jsr $2088.w		; 20 88 20
	tay		; A8
	rti		; 40

	bcs  64.b		; B0 40
	bcc   0.b		; 90 00
	bvs   0.b		; 70 00
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	asl $0C.b		; 06 0C
	ora $09.b,S		; 03 09
	tsb $0619.w		; 0C 19 06
	ora ($1F.b,S),Y		; 13 1F
	brk $3E.b		; 00 3E
	ora [$3F.b]		; 07 3F
	ora $031F2F.l		; 0F 2F 1F 03
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $0D.b		; 00 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$06.b],Y		; 17 06
	ora $BF1F07.l		; 0F 07 1F BF
	dec $FE0F.w		; CE 0F FE
	jsr $6F81.w		; 20 81 6F
	sta $6F5FAF.l,X		; 9F AF 5F 6F
	eor $BF8627.l,X		; 5F 27 86 BF
	sta ($06.b),Y		; 91 06
	asl $3E80.w		; 0E 80 3E
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	ora [$5F.b]		; 07 5F
	ora [$DF.b]		; 07 DF
	brk $DE.b		; 00 DE
	ora ($D1.b,X)		; 01 D1
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F1F1F.l		; 0F 1F 1F 3F
	ora $7F373F.l,X		; 1F 3F 37 7F
	rol $7F.b,X		; 36 7F
	ror $FD.b		; 66 FD
	ora [$07.b]		; 07 07
	ora $181F08.l		; 0F 08 1F 18
	and $203F2D.l,X		; 3F 2D 3F 20
	adc $497F48.l,X		; 7F 48 7F 49
	sbc $0098.w,X		; FD 98 00
	bra -128.b		; 80 80
	sed		; F8
	sed		; F8
	inc $FEFC.w,X		; FE FC FE
	dec $86FF.w		; CE FF 86
	sbc $F0FF02.l,X		; FF 02 FF F0
	and $F88080.l,X		; 3F 80 80 F8
	sei		; 78
	inc $FE26.w,X		; FE 26 FE
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	and ($EF.b),Y		; 31 EF
	adc #$ADFF.w		; 69 FF AD
	ora $301E07.l		; 0F 07 1E 30
	asl $0F20.w		; 0E 20 0F
	and ($0F.b,X)		; 21 0F
	and ($0D.b,X)		; 21 0D
	adc ($1C.b,X)		; 61 1C
	adc ($3C.b,X)		; 61 3C
	adc ($1E.b,X)		; 61 1E
	eor $0F.b,S		; 43 0F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $3D.b		; 00 3D
	brk $32.b		; 00 32
	sbc ($1A.b,S),Y		; F3 1A
	cmp $18.b,S		; C3 18
	cmp $38.b,S		; C3 38
	cmp $38.b,S		; C3 38
	cmp $3C.b,S		; C3 3C
	dec $7C.b		; C6 7C
	dec $30.b		; C6 30
	stx $8C.b		; 86 8C
	brk $BC.b		; 00 BC
	brk $BE.b		; 00 BE
	brk $BE.b		; 00 BE
	brk $7E.b		; 00 7E
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	bra -24.b		; 80 E8
	clc		; 18
	sed		; F8
	trb $3CDC.w		; 1C DC 3C
	jmp ($5CBC.w,X)		; 7C BC 5C
	bit $3C5C.w,X		; 3C 5C 3C
	bit $001C.w		; 2C 1C 00
	jsr $5C00.w		; 20 00 5C
	clc		; 18
	lsr $3E18.w,X		; 5E 18 3E
	clc		; 18
	rol $3E08.w,X		; 3E 08 3E
	php		; 08
	rol $1E0C.w,X		; 3E 0C 1E
	adc $E61990.l		; 6F 90 19 E6
	sbc [$5A.b]		; E7 5A
	ror $B8.b,X		; 76 B8
	sed		; F8
	beq  -8.b		; F0 F8
	beq  -8.b		; F0 F8
	bvs  -8.b		; 70 F8
	bvs   0.b		; 70 00
	bcc   0.b		; 90 00
	inc $00.b		; E6 00
	phy		; 5A
	brk $B8.b		; 00 B8
	cpx #$E0F0.w		; E0 F0 E0
	beq  96.b		; F0 60
	bvs  96.b		; 70 60
	bvs -24.b		; 70 E8
	bvs -72.b		; 70 B8
	ldy #$50CC.w		; A0 CC 50
	stz $20.b,X		; 74 20
	ldy $00.b,X		; B4 00
	ldy $00.b,X		; B4 00
	ply		; 7A
	bra  90.b		; 80 5A
	bra  32.b		; 80 20
	bvs   0.b		; 70 00
	cpx #$7040.w		; E0 40 70
	brk $A8.b		; 00 A8
	brk $C8.b		; 00 C8
	brk $C8.b		; 00 C8
	brk $D4.b		; 00 D4
	brk $F4.b		; 00 F4
	asl A		; 0A
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b		; 05 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D5.b		; 00 D5
	php		; 08
	sbc $18.b		; E5 18
	lda $18.b,S		; A3 18
	cmp $38.b,S		; C3 38
	plx		; FA
	ora ($1E.b,X)		; 01 1E
	sbc ($43.b,X)		; E1 43
	jsr ($9F98.w,X)		; FC 98 9F
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $1F.b		; 00 1F
	cpy #$B803.w		; C0 03 B8
	brk $65.b		; 00 65
	brk $5A.b		; 00 5A
	bra  89.b		; 80 59
	bra  93.b		; 80 5D
	bra  45.b		; 80 2D
	cpy #$C02A.w		; C0 2A C0
	bit $F8C0.w,X		; 3C C0 F8
	tsb $20.b		; 04 20
	jsr ($F400.w,X)		; FC 00 F4
	brk $F6.b		; 00 F6
	brk $FA.b		; 00 FA
	brk $FA.b		; 00 FA
	brk $FC.b		; 00 FC
	brk $E8.b		; 00 E8
	brk $00.b		; 00 00
	bne   0.b		; D0 00
	bcs  47.b		; B0 2F
	jmp $CD2E13.l		; 5C 13 2E CD
	eor ($A0.b)		; 52 A0
	cpy $3000.w		; CC 00 30
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	rts		; 60

	ora ($F0.b)		; 12 F0
	php		; 08
	jsr ($FC00.w,X)		; FC 00 FC
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $8E3F90.l		; 2F 90 3F 8E
	eor ($30.b),Y		; 51 30
	eor $A200.w		; 4D 00 A2
	clc		; 18
	tax		; AA
	bpl -44.b		; 10 D4
	jsr $20D4.w		; 20 D4 20
	bpl   0.b		; 10 00
	tsb $000E.w		; 0C 0E 00
	rol $3E00.w,X		; 3E 00 3E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	asl A		; 0A
	ora ($15.b,X)		; 01 15
	cop $23.b		; 02 23
	tsb $104C.w		; 0C 4C 10
	sta ($20.b,S),Y		; 93 20
	bit $0040.w		; 2C 40 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $001F00.l		; 0F 00 1F 00
	and $007C00.l,X		; 3F 00 7C 00
	beq   4.b		; F0 04
	ora $09.b,S		; 03 09
	cop $0A.b		; 02 0A
	tsb $15.b		; 04 15
	brk $15.b		; 00 15
	php		; 08
	ora ($08.b)		; 12 08
	inc A		; 1A
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $0E00.w		; 0E 00 0E
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	ora [$0F.b],Y		; 17 0F
	ora $0703.w		; 0D 03 07
	brk $06.b		; 00 06
	ora $05.b,S		; 03 05
	cop $03.b		; 02 03
	brk $02.b		; 00 02
	brk $05.b		; 00 05
	brk $03.b		; 00 03
	ora $000300.l		; 0F 00 03 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $F7.b		; 02 F7
	dec $FDFF.w		; CE FF FD
	adc $38DFDC.l		; 6F DC DF 38
	adc $00B606.l,X		; 7F 06 B6 00
	sbc #$7504.w		; E9 04 75
	php		; 08
	.db $82, $CE, $FC		; 82 CE FC
	sbc $FC0C.w,X		; FD 0C FC
	brk $38.b		; 00 38
	brk $86.b		; 00 86
	brk $69.b		; 00 69
	brk $5F.b		; 00 5F
	brk $DF.b		; 00 DF
	eor $F8.b		; 45 F8
	phd		; 0B
	pea $946D.w		; F4 6D 94
	and $4C.b,X		; 35 4C
	ora ($2E.b)		; 12 2E
	ora $0F.b,X		; 15 0F
	asl $F407.w,X		; 1E 07 F4
	ora #$B0F2.w		; 09 F2 B0
	nop		; EA
	cpx #$808B.w		; E0 8B 80
	eor $40.b,S		; 43 40
	and $20.b		; 25 20
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora $18.b,S		; 03 18
	cli		; 58
	rol $E8.b,X		; 36 E8
	ldy $90.b,X		; B4 90
	tya		; 98
	cpx #$9008.w		; E0 08 90
	sei		; 78
	ldy #$00B0.w		; A0 B0 00
	cpx #$8078.w		; E0 78 80
	asl $86.b		; 06 86
	trb $84.b		; 14 84
	ldy #$F0C0.w		; A0 C0 F0
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	eor $3A.b,S		; 43 3A
	cmp $38.b,S		; C3 38
	cmp $7C.b,S		; C3 7C
	cmp [$34.b]		; C7 34
	sta [$30.b]		; 87 30
	sta [$48.b]		; 87 48
	cmp $3CFF30.l		; CF 30 FF 3C
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	brk $3A.b		; 00 3A
	brk $78.b		; 00 78
	brk $FC.b		; 00 FC
	brk $B1.b		; 00 B1
	brk $C9.b		; 00 C9
	brk $30.b		; 00 30
	stx $70.b		; 86 70
	sty $78.b		; 84 78
	sty $8CF8.w		; 8C F8 8C
	cpx #$908C.w		; E0 8C 90
	tya		; 98
	cpx #$80F8.w		; E0 F8 80
	sed		; F8
	jsr ($F800.w,X)		; FC 00 F8
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	brk $60.b		; 00 60
	brk $10.b		; 00 10
	brk $70.b		; 00 70
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $07.b		; 00 07
	ora $03.b,S		; 03 03
	tsb $05.b		; 04 05
	ora $0903.w		; 0D 03 09
	ora $0619.w		; 0D 19 06
	ora ($00.b,S),Y		; 13 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $0D.b		; 00 0D
	brk $09.b		; 00 09
	cop $12.b		; 02 12
	tsb $65.b		; 04 65
	php		; 08
	txa		; 8A
	bpl -108.b		; 10 94
	rts		; 60

	plp		; 28
	rti		; 40

	bvc -128.b		; 50 80
	ldy #$0000.w		; A0 00 00
	ora [$00.b]		; 07 00
	ora $001E00.l		; 0F 00 1E 00
	jmp ($7800.w,X)		; 7C 00 78
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	txy		; 9B
	ora $FD.b		; 05 FD
	.db $82, $5F, $58		; 82 5F 58
	lda $4DDFAD.l		; AF AD DF 4D
	eor $AD5F8D.l,X		; 5F 8D 5F AD
	and $7C00D9.l,X		; 3F D9 00 7C
	brk $86.b		; 00 86
	rti		; 40

	sed		; F8
	dey		; 88
	sbc $6D0C.w,X		; FD 0C 6D
	sty $8C2D.w		; 8C 2D 8C
	and $5918.w		; 2D 18 59
	phy		; 5A
	dey		; 88
	xce		; FB
	txa		; 8A
	lda [$45.b],Y		; B7 45
	adc $D0FC88.l,X		; 7F 88 FC D0
	adc $CBFC93.l		; 6F 93 FC CB
	stz $9B.b		; 64 9B
	bra  44.b		; 80 2C
	php		; 08
	rol $0C44.w		; 2E 44 0C
	ora $88.b,S		; 03 88
	ora $D0.b,S		; 03 D0
	brk $D0.b		; 00 D0
	ora $C8.b,S		; 03 C8
	brk $98.b		; 00 98
	brk $C0.b		; 00 C0
	rti		; 40

	bvs -46.b		; 70 D2
	trb $083F.w		; 1C 3F 08
	dec $1FC1.w		; CE C1 1F
	sbc ($0D.b),Y		; F1 0D
	adc ($07.b,S),Y		; 73 07
	tas		; 1B
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$F000.w		; E0 00 F0
	cop $30.b		; 02 30
	ora $61.b		; 05 61
	ora $11.b		; 05 11
	ora $01.b,S		; 03 01
	ora $1E.b,S		; 03 1E
	asl $2E.b		; 06 2E
	asl $1E3F.w,X		; 1E 3F 1E
	adc $066F26.l,X		; 7F 26 6F 06
	ora $1A0E.w,X		; 1D 0E 1A
	tsb $04.b		; 04 04
	brk $02.b		; 00 02
	ora [$0A.b]		; 07 0A
	ora $221E12.l,X		; 1F 12 1E 22
	rol $00.b		; 26 00
	asl $04.b		; 06 04
	asl $0400.w		; 0E 00 04
	brk $00.b		; 00 00
	jsl $003A08.l		; 22 08 3A 00
	bit $5400.w,X		; 3C 00 54
	brk $54.b		; 00 54
	brk $F4.b		; 00 F4
	brk $F4.b		; 00 F4
	brk $54.b		; 00 54
	brk $00.b		; 00 00
	trb $1C00.w		; 1C 00 1C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	bit $2310.w		; 2C 10 23
	tsb $001F.w		; 0C 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $08.b,X		; 55 08
	lsr A		; 4A
	bpl 106.b		; 10 6A
	bpl 100.b		; 10 64
	bpl 100.b		; 10 64
	bpl  84.b		; 10 54
	jsr $2058.w		; 20 58 20
	dey		; 88
	jsr $3E00.w		; 20 00 3E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	asl $01.b		; 06 01
	tas		; 1B
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	asl $17.b		; 06 17
	ora ($1F.b,X)		; 01 1F
	brk $37.b		; 00 37
	brk $0F.b		; 00 0F
	bmi  11.b		; 30 0B
	bit $3615.w,X		; 3C 15 36
	tsb $1866.w		; 0C 66 18
	adc [$01.b]		; 67 01
	ora #$0200.w		; 09 00 02
	brk $0D.b		; 00 0D
	bpl   2.b		; 10 02
	trb $00.b		; 14 00
	asl A		; 0A
	brk $38.b		; 00 38
	brk $3D.b		; 00 3D
	ora ($A0.b,X)		; 01 A0
	cpy #$8040.w		; C0 40 80
	cpy #$8000.w		; C0 00 80
	asl $3F0E.w		; 0E 0E 3F
	and $FF7F7F.l,X		; 3F 7F 7F FF
	sbc $C000FF.l,X		; FF FF 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	asl $3F0E.w		; 0E 0E 3F
	and ($7F.b),Y		; 31 7F
	bvc  -1.b		; 50 FF
	lda $00FF.w,X		; BD FF 00
	sta $A950.w,Y		; 99 50 A9
	jsr $2089.w		; 20 89 20
	eor $5D18.w		; 4D 18 5D
	clc		; 18
	jmp $3C1E38.l		; 5C 38 1E 3C
	ora $77003C.l,X		; 1F 3C 00 77
	brk $77.b		; 00 77
	brk $77.b		; 00 77
	brk $3B.b		; 00 3B
	php		; 08
	tsa		; 3B
	php		; 08
	tsa		; 3B
	php		; 08
	adc $7C08.w,X		; 7D 08 7C
	sec		; 38
	ora [$86.b]		; 07 86
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $F7.b		; 00 F7
	brk $F7.b		; 00 F7
	brk $F3.b		; 00 F3
	brk $00.b		; 00 00
	cpy #$F800.w		; C0 00 F8
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	ply		; 7A
	and $3C7B.w,X		; 3D 7B 3C
	adc [$38.b],Y		; 77 38
	eor $00F320.l,X		; 5F 20 F3 00
	sbc [$78.b]		; E7 78
	lda $7A.b,X		; B5 7A
	jmp $0033.w		; 4C 33 00
	and $3D00.w,X		; 3D 00 3D
	brk $3D.b		; 00 3D
	brk $30.b		; 00 30
	brk $0C.b		; 00 0C
	brk $7D.b		; 00 7D
	brk $7B.b		; 00 7B
	brk $37.b		; 00 37
	bcs 112.b		; B0 70
	bcs 112.b		; B0 70
	bne  48.b		; D0 30
	jsr ($4800.w,X)		; FC 00 48
	sec		; 38
	tya		; 98
	sei		; 78
	inc $30.b,X		; F6 30
	lda $0010.w		; AD 10 00
	sei		; 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $B8.b		; 00 B8
	brk $D2.b		; 00 D2
	jmp $C258C6.l		; 5C C6 58 C2
	clc		; 18
.INDEX 16
	rep #$18		; C2 18
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
.ACCU 8
	sep #$2C		; E2 2C
	.db $62, $2C, $63		; 62 2C 63
	asl $3863.w		; 0E 63 38
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $5C.b		; 00 5C
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $3C.b		; 00 3C
	brk $5C.b		; 00 5C
	dec $18.b		; C6 18
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
.ACCU 8
	sep #$2E		; E2 2E
	adc $0B.b,S		; 63 0B
	rts		; 60

	ora [$33.b],Y		; 17 33
	tsb $1234.w		; 0C 34 12
	ora #$38.b		; 09 38
	brk $7C.b		; 00 7C
	brk $5C.b		; 00 5C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	brk $0A.b		; 00 0A
	ora $10.b,S		; 03 10
	ora [$00.b]		; 07 00
	ora $E00060.l		; 0F 60 00 E0
	rti		; 40

	cpy #$E080.w		; C0 80 E0
	bra -32.b		; 80 E0
	cpy #$80E0.w		; C0 E0 80
	cpy #$C080.w		; C0 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bcc  64.b		; 90 40
	pha		; 48
	jsr $10A4.w		; 20 A4 10
	eor ($08.b)		; 52 08
	lsr $2E00.w,X		; 5E 00 2E
	brk $2E.b		; 00 2E
	brk $2A.b		; 00 2A
	brk $00.b		; 00 00
	cpx #$F000.w		; E0 00 F0
	brk $78.b		; 00 78
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	inc A		; 1A
	brk $1A.b		; 00 1A
	brk $1E.b		; 00 1E
	brk $16.b		; 00 16
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0C00.w		; 0C 00 0C
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvp $64,$30		; 44 30 64
	bpl -92.b		; 10 A4
	bpl -86.b		; 10 AA
	bpl 106.b		; 10 6A
	bpl  82.b		; 10 52
	php		; 08
	eor ($08.b)		; 52 08
	and ($08.b)		; 32 08
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	and ($08.b)		; 32 08
	jsl $082608.l		; 22 08 26 08
	rol $08.b		; 26 08
	asl $08.b,X		; 16 08
	inc A		; 1A
	tsb $1A.b		; 04 1A
	tsb $19.b		; 04 19
	tsb $00.b		; 04 00
	trb $1C00.w		; 1C 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	ora $1904.w,Y		; 19 04 19
	tsb $29.b		; 04 29
	tsb $2D.b		; 04 2D
	brk $26.b		; 00 26
	brk $2C.b		; 00 2C
	brk $4C.b		; 00 4C
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	asl $0E00.w		; 0E 00 0E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$F0F0.w		; C0 F0 F0
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$F040.w		; C0 40 F0
	bcs  -8.b		; B0 F8
	php		; 08
	bcs  -8.b		; B0 F8
	bcs  -8.b		; B0 F8
	bmi -32.b		; 30 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	sed		; F8
	pha		; 48
	sed		; F8
	pha		; 48
	cpx #$E0C0.w		; E0 C0 E0
	cpx #$C0C0.w		; E0 C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($67.b),Y		; 31 67
	and ($67.b),Y		; 31 67
	clc		; 18
	cmp $1CCF00.l		; CF 00 CF 1C
	cmp $33.b,S		; C3 33
	bne 109.b		; D0 6D
	tay		; A8
	phy		; 5A
	bne  27.b		; D0 1B
	cop $1B.b		; 02 1B
	cop $73.b		; 02 73
	ora $7B.b,S		; 03 7B
	ora $63.b,S		; 03 63
	ora $50.b,S		; 03 50
	trb $3A28.w		; 1C 28 3A
	bpl 119.b		; 10 77
	sbc $F9FF.w,X		; FD FF F9
	sbc $00FF72.l,X		; FF 72 FF 00
	sbc $0BFD03.l,X		; FF 03 FD 0B
	sbc $F8.b,X		; F5 F8
	asl $73.b		; 06 73
	ora $FF02FF.l		; 0F FF 02 FF
	asl $FF.b		; 06 FF
	sta $FEFE.w		; 8D FE FE
	inc $F2FC.w,X		; FE FC F2
	beq   3.b		; F0 03
	brk $0C.b		; 00 0C
	bra  31.b		; 80 1F
	and $000F0F.l,X		; 3F 0F 0F 00
	bmi  31.b		; 30 1F
	and $1F3F1F.l,X		; 3F 1F 3F 1F
	and $77077F.l,X		; 3F 7F 07 77
	sec		; 38
	asl $007F.w		; 0E 7F 00
	adc $007F00.l,X		; 7F 00 7F 00
	adc $0F7F0F.l,X		; 7F 0F 7F 0F
	adc $000707.l,X		; 7F 07 07 00
	sec		; 38
	sbc ($C0.b),Y		; F1 C0
	sbc $7C7BF0.l,X		; FF F0 7B 7C
	cop $8D.b		; 02 8D
	cpx $F1.b		; E4 F1
	jsr ($D0C0.w,X)		; FC C0 D0
	bcs -16.b		; B0 F0
	bmi   0.b		; 30 00
	cmp $00F140.l		; CF 40 F1 00
	jsr ($FC01.w,X)		; FC 01 FC
	cpy #$C0F8.w		; C0 F8 C0
	cpy #$B880.w		; C0 80 B8
	brk $78.b		; 00 78
	ror $01.b,X		; 76 01
	inc $01.b,X		; F6 01
	tsx		; BA
	ora ($B2.b,X)		; 01 B2
	ora #$B7.b		; 09 B7
	php		; 08
	lda $07B800.l,X		; BF 00 B8 07
	dec $3F.b		; C6 3F
	brk $2F.b		; 00 2F
	brk $1F.b		; 00 1F
	brk $5F.b		; 00 5F
	brk $5F.b		; 00 5F
	brk $5B.b		; 00 5B
	brk $58.b		; 00 58
	ora [$40.b]		; 07 40
	and $3B00.w,Y		; 39 00 3B
	bra  86.b		; 80 56
	dey		; 88
	eor ($8C.b,S),Y		; 53 8C
	and $1EE1C0.l,X		; 3F C0 E1 1E
	trb $22FF.w		; 1C FF 22
	sbc $2C.b,S		; E3 2C
	sbc ($00.b,X)		; E1 00
	cpx $FD00.w		; EC 00 FD
	brk $FE.b		; 00 FE
	brk $E0.b		; 00 E0
	trb $6200.w		; 1C 00 62
	brk $5C.b		; 00 5C
	brk $5E.b		; 00 5E
	brk $1C.b		; 00 1C
	adc ($16.b),Y		; 71 16
	and ($39.b),Y		; 31 39
	ora ($3F.b,X)		; 01 3F
	clc		; 18
	and [$07.b]		; 27 07
	bpl   0.b		; 10 00
	trb $03.b		; 14 03
	asl $01.b,X		; 16 01
	rol $0F00.w		; 2E 00 0F
	brk $06.b		; 00 06
	brk $08.b		; 00 08
	clc		; 18
	asl $1F.b		; 06 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	ora #$00.b		; 09 00
	ora $80.b		; 05 80
	cop $80.b		; 02 80
	sta ($00.b,X)		; 81 00
	rti		; 40

	bra  64.b		; 80 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$E020.w		; C0 20 E0
	bmi -48.b		; 30 D0
	clc		; 18
	ldy #$5888.w		; A0 88 58
	cpy $E03A.w		; CC 3A E0
	jsl $0B77D4.l		; 22 D4 77 0B
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	rts		; 60

	brk $70.b		; 00 70
	brk $B0.b		; 00 B0
	brk $40.b		; 00 40
	tsb $00.b		; 04 00
	ora $2B00.w,X		; 1D 00 2B
	tda		; 7B
	ora [$37.b]		; 07 37
	ora $0C0F13.l		; 0F 13 0F 0C
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora [$03.b],Y		; 17 03
	ora $000F01.l		; 0F 01 0F 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($31.b),Y		; D1 31
	asl $70.b,X		; 16 70
	asl $70.b,X		; 16 70
	asl $70.b,X		; 16 70
	asl $30.b,X		; 16 30
	ora [$30.b]		; 07 30
	ora [$30.b]		; 07 30
	ora [$30.b]		; 07 30
	rol $2F00.w		; 2E 00 2F
	brk $2F.b		; 00 2F
	brk $2F.b		; 00 2F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $2C.b		; 00 2C
	sbc ($0E.b,X)		; E1 0E
	sbc ($1F.b,X)		; E1 1F
	sbc ($1F.b),Y		; F1 1F
	sbc ($16.b),Y		; F1 16
	beq  22.b		; F0 16
	beq -114.b		; F0 8E
	sed		; F8
	sta $009FF8.l		; 8F F8 9F 00
	lda $00AE00.l,X		; BF 00 AE 00
	ldx $AF00.w		; AE 00 AF
	brk $8F.b		; 00 8F
	brk $17.b		; 00 17
	brk $17.b		; 00 17
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	sta ($80.b,X)		; 81 80
	rep #$C1		; C2 C1
	sbc ($E3.b,X)		; E1 E3
	xce		; FB
	sbc $717F9F.l,X		; FF 9F 7F 71
	ora $00000F.l		; 0F 0F 00 00
	bra   0.b		; 80 00
	cpy #$E180.w		; C0 80 E1
	cpy #$71FF.w		; C0 FF 71
	sbc $007F0F.l,X		; FF 0F 7F 00
	ora $800000.l		; 0F 00 00 80
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	bra  80.b		; 80 50
	bra  48.b		; 80 30
	cpy #$40A8.w		; C0 A8 40
	cld		; D8
	jsr $1064.w		; 20 64 10
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	ldx $5600.w,Y		; BE 00 56
	php		; 08
	and #$04.b		; 29 04
	trb $02.b		; 14 02
	asl A		; 0A
	ora ($05.b,X)		; 01 05
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	sei		; 78
	brk $3C.b		; 00 3C
	brk $1E.b		; 00 1E
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	asl $3E1F.w,X		; 1E 1F 3E
	and $007EFD.l,X		; 3F FD 7E 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	ora $1C3F06.l,X		; 1F 06 3F 1C
	adc $FF7E38.l,X		; 7F 38 7E FF
	ror $7876.w,X		; 7E 76 78
	cld		; D8
	cpx #$C0A0.w		; E0 A0 C0
	rti		; 40

	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	ror $F850.w,X		; 7E 50 F8
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $3E00.w,X		; 1E 00 3E
	trb $7C.b		; 14 7C
	plp		; 28
	clv		; B8
	bvs -65.b		; 70 BF
	bvs  -1.b		; 70 FF
	ror $0000.w,X		; 7E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	jsr $1028.w		; 20 28 10
	bvs  32.b		; 70 20
	bvs  56.b		; 70 38
	ror $0000.w,X		; 7E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	ora ($0C.b),Y		; 11 0C
	ora $001B00.l		; 0F 00 1B 00
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $0E00.w,X		; 1D 00 0E
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	jsr $7000.w		; 20 00 70
	rts		; 60

	tya		; 98
	beq -10.b		; F0 F6
	ora #$FD.b		; 09 FD
	brk $FF.b		; 00 FF
	brk $EF.b		; 00 EF
	rol $2CEF.w		; 2E EF 2C
	brk $40.b		; 00 40
	brk $E0.b		; 00 E0
	brk $F1.b		; 00 F1
	brk $F9.b		; 00 F9
	brk $1B.b		; 00 1B
	brk $00.b		; 00 00
	brk $BE.b		; 00 BE
	bit $003D.w		; 2C 3D 00
	brk $68.b		; 00 68
	bvs  48.b		; 70 30
	cpy #$00C0.w		; C0 C0 00
	jsr ($E301.w,X)		; FC 01 E3
	brk $F9.b		; 00 F9
	asl $85.b		; 06 85
	sei		; 78
	brk $78.b		; 00 78
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $1C.b		; 00 1C
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $7F1F3F.l		; 0F 3F 1F 7F
	and $FF5FFF.l		; 2F FF 5F FF
	and ($DF.b,S),Y		; 33 DF
	ora [$FF.b]		; 07 FF
	brk $00.b		; 00 00
	ora $333F0F.l		; 0F 0F 3F 33
	adc $D1FF61.l,X		; 7F 61 FF D1
	sbc $CCDFA0.l,X		; FF A0 DF CC
	cmp $3049D8.l,X		; DF D8 49 30
	adc $3D10.w		; 6D 10 3D
	rti		; 40

	ora $0B30.w		; 0D 30 0B
	bit $3A0B.w,X		; 3C 0B 3A
	phd		; 0B
	sec		; 38
	phd		; 0B
	clc		; 18
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	bpl   3.b		; 10 03
	trb $01.b		; 14 01
	trb $00.b		; 14 00
	ora [$00.b],Y		; 17 00
	ora [$00.b]		; 07 00
	cli		; 58
	ora [$A2.b]		; 07 A2
	asl $0CA1.w		; 0E A1 0C
	lda ($0C.b,X)		; A1 0C
	cmp ($0C.b),Y		; D1 0C
	sbc ($0C.b),Y		; F1 0C
	sta ($FC.b,X)		; 81 FC
	sta ($DC.b,X)		; 81 DC
	brk $A0.b		; 00 A0
	ora $D0.b		; 05 D0
	ora [$D0.b]		; 07 D0
	ora [$D0.b]		; 07 D0
	ora [$E0.b]		; 07 E0
	ora [$00.b]		; 07 00
	ora [$00.b],Y		; 17 00
	ora [$00.b]		; 07 00
	sbc $7B0F90.l,X		; FF 90 0F 7B
	tsa		; 3B
	mvp $41,$3E		; 44 3E 41
	bra -29.b		; 80 E3
	bra -29.b		; 80 E3
	bra -15.b		; 80 F1
	ldy #$00F1.w		; A0 F1 00
	bpl -128.b		; 10 80
	tsa		; 3B
	bra  38.b		; 80 26
	bra   0.b		; 80 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	jsr $0000.w		; 20 00 00
	brk $E0.b		; 00 E0
	trb $6030.w		; 1C 30 60
	beq   0.b		; F0 00
	rti		; 40

	beq -96.b		; F0 A0
	bcs -96.b		; B0 A0
	bcs -96.b		; B0 A0
	bcs -96.b		; B0 A0
	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	cpx #$0000.w		; E0 00 00
	ldy #$4000.w		; A0 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $B1.b		; 00 B1
	ldy #$8090.w		; A0 90 80
	ldy #$A080.w		; A0 80 A0
	bra -96.b		; 80 A0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -96.b		; 80 A0
	bra -128.b		; 80 80
	cpx #$E080.w		; E0 80 E0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	beq 112.b		; F0 70
	beq 112.b		; F0 70
	beq 112.b		; F0 70
	cpx #$E070.w		; E0 70 E0
	rts		; 60

	ldy #$E060.w		; A0 60 E0
	jsr $20E0.w		; 20 E0 20
	jsr $20F8.w		; 20 F8 20
	sei		; 78
	jsr $2078.w		; 20 78 20
	sei		; 78
	jsr $2070.w		; 20 70 20
	bvs  32.b		; 70 20
	bvs  32.b		; 70 20
	bvs  39.b		; 70 27
	ora ($2E.b,X)		; 01 2E
	ora ($29.b,X)		; 01 29
	brk $2D.b		; 00 2D
	brk $5F.b		; 00 5F
	brk $55.b		; 00 55
	brk $7A.b		; 00 7A
	ora ($7B.b,X)		; 01 7B
	brk $00.b		; 00 00
	ora $1D00.w,X		; 1D 00 1D
	brk $1E.b		; 00 1E
	brk $1A.b		; 00 1A
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $31.b		; 00 31
	brk $30.b		; 00 30
	clv		; B8
	brk $B4.b		; 00 B4
	brk $94.b		; 00 94
	brk $FA.b		; 00 FA
	brk $1D.b		; 00 1D
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	sei		; 78
	brk $78.b		; 00 78
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	ldy #$F0F0.w		; A0 F0 F0
	sed		; F8
	sed		; F8
	jsr ($FEFC.w,X)		; FC FC FE
	jsr ($00FE.w,X)		; FC FE 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	rts		; 60

	beq 112.b		; F0 70
	sed		; F8
	clc		; 18
	jsr ($FE94.w,X)		; FC 94 FE
	rol A		; 2A
	inc $C002.w,X		; FE 02 C0
	and $3AC37C.l,X		; 3F 7C C3 3A
	bit $00C4.w,X		; 3C C4 00
	sec		; 38
	cpy #$8050.w		; C0 50 80
	ldy #$4000.w		; A0 00 40
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	cpy #$FC38.w		; C0 38 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	ora [$83.b]		; 07 83
	ora [$03.b]		; 07 03
	ora $030F03.l		; 0F 03 0F 03
	ora $1303.w		; 0D 03 13
	ora ($17.b,X)		; 01 17
	ora ($17.b,X)		; 01 17
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $0D01.w		; 0D 01 0D
	ora ($0D.b,X)		; 01 0D
	jmp.w [$9CFE]		; DC FE 9C
	inc $FE14.w,X		; FE 14 FE
	mvn $00,$FE		; 54 FE 00
	ror $D820.w,X		; 7E 20 D8
	rti		; 40

	bcc -128.b		; 90 80
	brk $FE.b		; 00 FE
	jsl $FE62FE.l		; 22 FE 62 FE
	nop		; EA
	ldx $BE2A.w,Y		; BE 2A BE
	rol $1898.w,X		; 3E 98 18
	bcc  16.b		; 90 10
	brk $00.b		; 00 00
	and $00.b,X		; 35 00
	pld		; 2B
	brk $36.b		; 00 36
	ora ($4D.b,X)		; 01 4D
	cop $5B.b		; 02 5B
	tsb $5A.b		; 04 5A
	tsb $32.b		; 04 32
	tsb $0C32.w		; 0C 32 0C
	brk $0E.b		; 00 0E
	brk $1D.b		; 00 1D
	brk $1B.b		; 00 1B
	brk $37.b		; 00 37
	brk $2F.b		; 00 2F
	brk $2F.b		; 00 2F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	cmp $5FDE5E.l,X		; DF 5E DE 5F
	cmp $2D625E.l		; CF 5E 62 2D
	cmp $11AE20.l,X		; DF 20 AE 11
	dec $08.b,X		; D6 08
	lsr $4E01.w,X		; 5E 01 4E
	ror $7F4C.w,X		; 7E 4C 7F
	brk $7F.b		; 00 7F
	brk $BD.b		; 00 BD
	brk $2C.b		; 00 2C
	brk $51.b		; 00 51
	brk $69.b		; 00 69
	brk $E5.b		; 00 E5
	sbc ($1C.b,X)		; E1 1C
	sbc ($8C.b,S),Y		; F3 8C
	lda $00F6C0.l,X		; BF C0 F6 00
	xce		; FB
	cpx #$1008.w		; E0 08 10
	inx		; E8
	cpx #$D02D.w		; E0 2D D0
	brk $3E.b		; 00 3E
	brk $DE.b		; 00 DE
	brk $EE.b		; 00 EE
	brk $0F.b		; 00 0F
	rti		; 40

	sbc [$00.b],Y		; F7 00
	sbc [$40.b],Y		; F7 40
	sbc [$00.b],Y		; F7 00
	ora ($21.b)		; 12 21
	sbc $84FF43.l,X		; FF 43 FF 84
	rtl		; 6B

	sta $21C16C.l		; 8F 6C C1 21
	sta $749A60.l		; 8F 60 9A 74
	iny		; C8
	lda $BF8ECF.l,X		; BF CF 8E BF
	sty $33.b		; 84 33
	ora $38.b,S		; 03 38
	tsb $0638.w		; 0C 38 06
	and $004F00.l,X		; 3F 00 4F 00
	and [$00.b]		; 27 00
	ora $18.b,S		; 03 18
	ora $18.b,S		; 03 18
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora [$0C.b]		; 07 0C
	tsb $0C.b		; 04 0C
	ora [$1F.b]		; 07 1F
	php		; 08
	adc $0F000F.l,X		; 7F 0F 00 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $08.b		; 00 08
	brk $17.b		; 00 17
	brk $02.b		; 00 02
	lsr $4806.w		; 4E 06 48
	ora $0C43.w		; 0D 43 0C
	rti		; 40

	ora $8E43.w		; 0D 43 8E
	cpy #$C305.w		; C0 05 C3
	ora [$83.b]		; 07 83
	sta $00.b		; 85 00
	bra   1.b		; 80 01
	bra   3.b		; 80 03
	bra   7.b		; 80 07
	bra   3.b		; 80 03
	brk $05.b		; 00 05
	bra   3.b		; 80 03
	ora ($03.b,X)		; 01 03
	bra  89.b		; 80 59
	bne  25.b		; D0 19
	cmp ($0C.b,X)		; C1 0C
	cmp #$0C.b		; C9 0C
	sbc #$2C.b		; E9 2C
	lda ($B8.b),Y		; B1 B8
	sta ($B8.b,X)		; 81 B8
	lda $3080.w,Y		; B9 80 30
	brk $20.b		; 00 20
	bra  56.b		; 80 38
	brk $30.b		; 00 30
	bra  16.b		; 80 10
	brk $00.b		; 00 00
	cpy #$C0B0.w		; C0 B0 C0
	bra -64.b		; 80 C0
	rti		; 40

	beq -48.b		; F0 D0
	brk $58.b		; 00 58
	jsr $0098.w		; 20 98 00
	cli		; 58
	jsr $00F8.w		; 20 F8 00
	tay		; A8
	bvs  -8.b		; 70 F8
	bvs -96.b		; 70 A0
	brk $00.b		; 00 00
	jsr $F000.w		; 20 00 F0
	brk $60.b		; 00 60
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	jsr $C0F0.w		; 20 F0 C0
	cpy #$E0C0.w		; C0 C0 E0
	beq -16.b		; F0 F0
	bvs -16.b		; 70 F0
	cpx #$6870.w		; E0 70 68
	bne -16.b		; D0 F0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpx #$F080.w		; E0 80 F0
	cpx #$50F8.w		; E0 F8 50
	sed		; F8
	brk $F8.b		; 00 F8
	brk $D0.b		; 00 D0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$E060.w		; E0 60 E0
	bvs -16.b		; 70 F0
	bvc  -8.b		; 50 F8
	pha		; 48
	inx		; E8
	pha		; 48
	pei ($08.b)		; D4 08
	trb $08.b		; 14 08
	tsb $2000.w		; 0C 00 20
	bvs  96.b		; 70 60
	sei		; 78
	bvc 120.b		; 50 78
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	asl A		; 0A
	ora ($0C.b,X)		; 01 0C
	ora $14.b,S		; 03 14
	ora $19.b,S		; 03 19
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	ora ($0A.b,X)		; 01 0A
	ora ($08.b,X)		; 01 08
	cop $14.b		; 02 14
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $54308A.l		; 0F 8A 30 54
	jsr $40A8.w		; 20 A8 40
	bvc -128.b		; 50 80
	ldy #$4000.w		; A0 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	jmp ($F800.w,X)		; 7C 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($04.b),Y		; 11 04
	ora ($04.b),Y		; 11 04
	ora ($04.b)		; 12 04
	asl $00.b,X		; 16 00
	ora ($00.b)		; 12 00
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0E00.w		; 0E 00 0E
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora $00.b		; 05 00
	ora [$00.b]		; 07 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	cpy #$B800.w		; C0 00 B8
	brk $34.b		; 00 34
	brk $F6.b		; 00 F6
	brk $DE.b		; 00 DE
	brk $BE.b		; 00 BE
	brk $7E.b		; 00 7E
	brk $AB.b		; 00 AB
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C800.w		; C0 00 C8
	brk $48.b		; 00 48
	brk $68.b		; 00 68
	brk $68.b		; 00 68
	brk $88.b		; 00 88
	brk $DC.b		; 00 DC
	rol $3B3D.w,X		; 3E 3D 3B
	and $393D.w,X		; 3D 3D 39
	and $3D39.w,X		; 3D 39 3D
	and $3935.w,Y		; 39 35 39
	and ($31.b),Y		; 31 31
	and ($31.b),Y		; 31 31
	clc		; 18
	adc $7D18.w,X		; 7D 18 7D
	clc		; 18
	tda		; 7B
	bpl 123.b		; 10 7B
	bpl 123.b		; 10 7B
	bpl 123.b		; 10 7B
	bpl 123.b		; 10 7B
	bpl 123.b		; 10 7B
	ldy #$C0C0.w		; A0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C080.w		; C0 80 C0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	adc $1E.b		; 65 1E
	ora $1B.b,S		; 03 1B
	ora $0419.w		; 0D 19 04
	ora ($04.b),Y		; 11 04
	ora ($06.b),Y		; 11 06
	ora ($06.b,S),Y		; 13 06
	ora ($1A.b,S),Y		; 13 1A
	and ($0A.b,S),Y		; 33 0A
	brk $0C.b		; 00 0C
	brk $06.b		; 00 06
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0D.b		; 00 0D
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $5F.b		; 00 5F
	lda $007F83.l,X		; BF 83 7F 00
	sbc $30FF1B.l,X		; FF 1B FF 30
	sbc $00CF49.l,X		; FF 49 CF 00
	sta $3F9BB4.l		; 8F B4 9B 3F
	ldy #$7C7F.w		; A0 7F 7C
	adc [$67.b]		; 67 67
	adc [$64.b]		; 67 64
	eor $063707.l		; 4F 07 37 06
	sbc [$03.b],Y		; F7 03
	adc ($19.b,S),Y		; 73 19
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	asl $01.b		; 06 01
	asl A		; 0A
	ora ($14.b,X)		; 01 14
	ora $10.b,S		; 03 10
	brk $2E.b		; 00 2E
	ora $000000.l,X		; 1F 00 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $040F00.l		; 0F 00 0F 04
	ora $B620CA.l,X		; 1F CA 20 B6
	rti		; 40

	and $C0.b,X		; 35 C0
	eor $6A80.w,X		; 5D 80 6A
	bra -78.b		; 80 B2
	brk $54.b		; 00 54
	brk $C4.b		; 00 C4
	brk $00.b		; 00 00
	sbc [$00.b],Y		; F7 00
	sbc $00EE00.l		; EF 00 EE 00
	inc $DC00.w		; EE 00 DC
	brk $DC.b		; 00 DC
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	cop $06.b		; 02 06
	ora ($04.b,X)		; 01 04
	ora ($0C.b,X)		; 01 0C
	ora [$0C.b]		; 07 0C
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $18.b,S		; 03 18
	phd		; 0B
	clc		; 18
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000700.l		; 0F 00 07 00
	bcc  52.b		; 90 34
	bne 116.b		; D0 74
	bne 116.b		; D0 74
	bne 116.b		; D0 74
	bne 116.b		; D0 74
	bvc 116.b		; 50 74
	cli		; 58
	jmp ($7C18.w,X)		; 7C 18 7C
	iny		; C8
	brk $88.b		; 00 88
	brk $88.b		; 00 88
	brk $88.b		; 00 88
	brk $88.b		; 00 88
	brk $88.b		; 00 88
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $C3.b,S		; 03 C3
	brk $6B.b		; 00 6B
	eor [$00.b]		; 47 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$01.b]		; 07 01
	ora [$00.b]		; 07 00
	ora [$01.b]		; 07 01
	cmp [$CD.b]		; C7 CD
	cmp $F5.b,S		; C3 F5
	xce		; FB
	sbc $FDFBF9.l,X		; FF F9 FB FD
	xce		; FB
	jsr ($00FA.w,X)		; FC FA 00
	sbc [$F8.b],Y		; F7 F8
	plx		; FA
	jsr ($F300.w,X)		; FC 00 F3
	rti		; 40

	xce		; FB
	beq  -5.b		; F0 FB
	beq  -3.b		; F0 FD
	beq  -4.b		; F0 FC
	brk $FC.b		; 00 FC
	bvs  -4.b		; 70 FC
	beq  -3.b		; F0 FD
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	plp		; 28
	brk $34.b		; 00 34
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	clc		; 18
	sed		; F8
	jsr ($FC70.w,X)		; FC 70 FC
	rol $F8.b,X		; 36 F8
	inx		; E8
	beq   8.b		; F0 08
	beq -56.b		; F0 C8
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	tsb $FC.b		; 04 FC
	sty $C8F8.w		; 8C F8 C8
	beq  16.b		; F0 10
	beq -16.b		; F0 F0
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $7A02.w		; 6D 02 7A
	tsb $5A.b		; 04 5A
	tsb $5F.b		; 04 5F
	brk $73.b		; 00 73
	php		; 08
	adc [$20.b],Y		; 77 20
	ora $6E0D50.l,X		; 1F 50 0D 6E
	brk $37.b		; 00 37
	brk $2F.b		; 00 2F
	brk $2F.b		; 00 2F
	brk $2D.b		; 00 2D
	brk $1D.b		; 00 1D
	brk $2A.b		; 00 2A
	bpl -16.b		; 10 F0
	php		; 08
	inc $205F.w,X		; FE 5F 20
	tay		; A8
	rti		; 40

	sbc [$20.b],Y		; F7 20
	phx		; DA
	ror $F4.b		; 66 F4
	jmp $8874.w		; 4C 74 88
	ldy $F050.w		; AC 50 F0
	pha		; 48
	brk $F8.b		; 00 F8
	brk $D7.b		; 00 D7
	brk $A8.b		; 00 A8
	brk $67.b		; 00 67
	brk $6E.b		; 00 6E
	brk $98.b		; 00 98
	brk $50.b		; 00 50
	brk $CC.b		; 00 CC
	phd		; 0B
	brk $08.b		; 00 08
	cop $16.b		; 02 16
	brk $19.b		; 00 19
	tsb $29.b		; 04 29
	tsb $56.b		; 04 56
	php		; 08
	adc ($08.b)		; 72 08
	lda $0010.w		; AD 10 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000E00.l		; 0F 00 0E 00
	asl $3D00.w,X		; 1E 00 3D
	brk $3D.b		; 00 3D
	brk $7B.b		; 00 7B
	rtl		; 6B

	brk $DD.b		; 00 DD
	brk $D6.b		; 00 D6
	brk $A8.b		; 00 A8
	brk $70.b		; 00 70
	brk $D0.b		; 00 D0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	stz $3E00.w		; 9C 00 3E
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	and ($31.b),Y		; 31 31
	and ($31.b),Y		; 31 31
	and ($31.b),Y		; 31 31
	and ($31.b),Y		; 31 31
	rol $1A39.w,X		; 3E 39 1A
	rol $0F1D.w,X		; 3E 1D 0F
	ora $7B1000.l		; 0F 00 10 7B
	bpl 123.b		; 10 7B
	bpl 123.b		; 10 7B
	bpl 123.b		; 10 7B
	clc		; 18
	adc $7F00.w,Y		; 79 00 7F
	ora $6F.b		; 05 6F
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$E8C0.w		; C0 C0 E8
	sed		; F8
	pea $3E3C.w		; F4 3C 3E
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	cpy #$C080.w		; C0 80 C0
	bra -64.b		; 80 C0
	cpy #$28F8.w		; C0 F8 28
	jsr ($3E14.w,X)		; FC 14 3E
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	clc		; 18
	and ($24.b,S),Y		; 33 24
	ora $6E.b,S		; 03 6E
	ora $0067.w,Y		; 19 67 00
	adc $007F18.l		; 6F 18 7F 00
	tad		; 5B
	trb $3C1F.w		; 1C 1F 3C
	asl $0200.w		; 0E 00 02
	clc		; 18
	brk $3C.b		; 00 3C
	brk $1A.b		; 00 1A
	brk $3C.b		; 00 3C
	brk $02.b		; 00 02
	brk $3C.b		; 00 3C
	clc		; 18
	jmp ($832C.w,X)		; 7C 2C 83
	ldy $67.b,X		; B4 67
	brk $EF.b		; 00 EF
	cpx #$A111.w		; E0 11 A1
	rti		; 40

	beq   0.b		; F0 00
	bcs  64.b		; B0 40
	beq   0.b		; F0 00
	sbc $13.b,S		; E3 13
	tad		; 5B
	ora ($91.b,X)		; 01 91
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	cpy #$2000.w		; C0 00 20
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	and $3F1C00.l,X		; 3F 00 1C 3F
	asl $27.b		; 06 27
	trb $67.b		; 14 67
	and ($67.b),Y		; 31 67
	ora ($47.b),Y		; 11 47
	ora ($C6.b)		; 12 C6
	ora ($C6.b)		; 12 C6
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	clc		; 18
	brk $39.b		; 00 39
	brk $1C.b		; 00 1C
	brk $3A.b		; 00 3A
	brk $79.b		; 00 79
	brk $79.b		; 00 79
	brk $88.b		; 00 88
	brk $50.b		; 00 50
	cpx #$00E0.w		; E0 E0 00
	rti		; 40

	cpx #$C080.w		; E0 80 C0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	clc		; 18
	ora [$1F.b]		; 07 1F
	and $013400.l,X		; 3F 00 34 01
	rol $01.b,X		; 36 01
	rol $01.b,X		; 36 01
	jmp ($6D03.w)		; 6C 03 6D
	cop $07.b		; 02 07
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tas		; 1B
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $37.b		; 00 37
	brk $37.b		; 00 37
	tya		; 98
	jsr ($FC10.w,X)		; FC 10 FC
	bcc 124.b		; 90 7C
	beq  12.b		; F0 0C
	pla		; 68
	sty $9E.b		; 84 9E
	brk $A0.b		; 00 A0
	trb $3847.w		; 1C 47 38
	rti		; 40

	brk $C8.b		; 00 C8
	brk $48.b		; 00 48
	brk $08.b		; 00 08
	bra   0.b		; 80 00
	bne   0.b		; D0 00
	sed		; F8
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	eor $6F5767.l,X		; 5F 67 57 6F
	eor [$6F.b],Y		; 57 6F
	cmp [$2E.b],Y		; D7 2E
	and ($0D.b,S),Y		; 33 0D
	rol $1530.w		; 2E 30 15
	tas		; 1B
	ora $E70310.l,X		; 1F 10 03 E7
	ora $EF.b,S		; 03 EF
	cop $EF.b		; 02 EF
	brk $2E.b		; 00 2E
	brk $4D.b		; 00 4D
	brk $71.b		; 00 71
	brk $3B.b		; 00 3B
	brk $38.b		; 00 38
	sbc $FAF8.w,X		; FD F8 FA
	beq -12.b		; F0 F4
	brk $F0.b		; 00 F0
	brk $D1.b		; 00 D1
	cpy #$2037.w		; C0 37 20
	cld		; D8
	cmp [$BB.b]		; C7 BB
	adc [$F0.b]		; 67 F0
	xce		; FB
	brk $F7.b		; 00 F7
	brk $EF.b		; 00 EF
	brk $0F.b		; 00 0F
	bra -18.b		; 80 EE
	brk $E8.b		; 00 E8
	sta [$E7.b]		; 87 E7
	ora [$64.b]		; 07 64
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
	beq  -8.b		; F0 F8
	beq  -8.b		; F0 F8
	beq  -4.b		; F0 FC
	beq  -4.b		; F0 FC
	sed		; F8
	jsr ($FCF8.w,X)		; FC F8 FC
	sei		; 78
	jsr ($FCF8.w,X)		; FC F8 FC
	sed		; F8
	pla		; 68
	sed		; F8
	pha		; 48
	jsr ($FC0C.w,X)		; FC 0C FC
	jmp $44FC.w		; 4C FC 44
	jsr ($FC24.w,X)		; FC 24 FC
	sty $FC.b		; 84 FC
	tsb $A0.b		; 04 A0
	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	jsr $C060.w		; 20 60 C0
	jsr $0030.w		; 20 30 00
	cpy #$6000.w		; C0 00 60
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00FF.w		; C0 FF 00
	asl $0C00.w,X		; 1E 00 0C
	brk $30.b		; 00 30
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	jsr ($E000.w,X)		; FC 00 E0
	brk $FC.b		; 00 FC
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	jsr ($002C.w,X)		; FC 2C 00
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
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $4B.b		; 00 4B
	jsr $20CD.w		; 20 CD 20
	cmp #$20.b		; C9 20
	ora $B560.w,X		; 1D 60 B5
	rti		; 40

	ror $80.b,X		; 76 80
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $72.b		; 00 72
	brk $76.b		; 00 76
	brk $E6.b		; 00 E6
	brk $EE.b		; 00 EE
	brk $EC.b		; 00 EC
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora $00.b		; 05 00
	asl $01.b		; 06 01
	asl A		; 0A
	ora ($0C.b,X)		; 01 0C
	ora $17.b,S		; 03 17
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $AB0F00.l		; 0F 00 0F AB
	rti		; 40

	and $36C0.w		; 2D C0 36
	cpy #$8056.w		; C0 56 80
	phy		; 5A
	bra 108.b		; 80 6C
	bra -92.b		; 80 A4
	brk $28.b		; 00 28
	brk $00.b		; 00 00
	inc $00.b,X		; F6 00
	inc $00.b,X		; F6 00
	cpx $EC00.w		; EC 00 EC
	brk $EC.b		; 00 EC
	brk $D8.b		; 00 D8
	brk $D8.b		; 00 D8
	brk $D0.b		; 00 D0
	trb $F700.w		; 1C 00 F7
	php		; 08
	sbc [$18.b]		; E7 18
	eor [$88.b],Y		; 57 88
	plb		; AB
	mvp $24,$53		; 44 53 24
	lda [$10.b]		; A7 10
	sbc ($00.b,S),Y		; F3 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $BD.b		; 00 BD
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$D000.w		; E0 00 D0
	brk $D0.b		; 00 D0
	brk $D0.b		; 00 D0
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	ldy #$A000.w		; A0 00 A0
	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	clc		; 18
	brk $CC.b		; 00 CC
	brk $38.b		; 00 38
	cpy #$E0C0.w		; C0 C0 E0
	cpy #$E0E0.w		; C0 E0 E0
	beq -32.b		; F0 E0
	beq -32.b		; F0 E0
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sec		; 38
	cpy #$E0C0.w		; C0 C0 E0
	ldy #$60E0.w		; A0 E0 60
	beq  80.b		; F0 50
	beq  16.b		; F0 10
	beq  48.b		; F0 30
	ror $6800.w,X		; 7E 00 68
	trb $1C7C.w		; 1C 7C 1C
	trb $0C1E.w		; 1C 1E 0C
	asl $1E0E.w,X		; 1E 0E 1E
	asl $0E.b		; 06 0E
	asl $0E.b,X		; 16 0E
	brk $20.b		; 00 20
	brk $1E.b		; 00 1E
	php		; 08
	rol $3F08.w,X		; 3E 08 3F
	tsb $3F.b		; 04 3F
	tsb $3F.b		; 04 3F
	tsb $1F.b		; 04 1F
	asl $0F.b		; 06 0F
	asl $0A06.w		; 0E 06 0A
	ora [$0A.b]		; 07 0A
	ora [$07.b]		; 07 07
	ora $07.b,S		; 03 07
	ora $05.b,S		; 03 05
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora [$02.b]		; 07 02
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	bra -95.b		; 80 A1
	cpx #$F0D0.w		; E0 D0 F0
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	ldy #$50F0.w		; A0 F0 50
	sed		; F8
	brk $00.b		; 00 00
	rol $39.b,X		; 36 39
	inx		; E8
	bvs -32.b		; 70 E0
	rts		; 60

	bcc -32.b		; 90 E0
	sed		; F8
	sed		; F8
	inc $3C.b,X		; F6 3C
	rol $0000.w,X		; 3E 00 00
	brk $01.b		; 00 01
	adc $7020.w,Y		; 79 20 70
	rti		; 40

	bvs   0.b		; 70 00
	inx		; E8
	tay		; A8
	jsr ($3C14.w,X)		; FC 14 3C
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
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0B1C04.l		; 0F 04 1C 0B
	tsb $2E.b		; 04 2E
	ora ($47.b)		; 12 47
	and ($76.b,X)		; 21 76
	ora $0000.w,Y		; 19 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phd		; 0B
	brk $07.b		; 00 07
	bmi   1.b		; 30 01
	sei		; 78
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	ldx $3F61.w,Y		; BE 61 3F
	pei ($DB.b)		; D4 DB
	nop		; EA
	cmp $D914.w,X		; DD 14 D9
	trb $7E.b		; 14 7E
	bvs  29.b		; 70 1D
	cpx #$E11E.w		; E0 1E E1
	brk $63.b		; 00 63
	brk $15.b		; 00 15
	plp		; 28
	asl $06E0.w		; 0E E0 06
	cpx #$8006.w		; E0 06 80
	ora $E0.b		; 05 E0
	asl A		; 0A
	brk $00.b		; 00 00
	cmp $8F5080.l		; CF 80 50 8F
	lda $3F5F1F.l		; AF 1F 5F 3F
	lda $7F9F7F.l,X		; BF 7F 9F 7F
	ora [$FF.b]		; 07 FF
	sta $B000FF.l		; 8F FF 00 B0
	ora $501FAF.l		; 0F AF 1F 50
	and $427FA5.l,X		; 3F A5 7F 42
	adc $3AFF62.l,X		; 7F 62 FF 3A
	and $FF3F31.l,X		; 3F 31 3F FF
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	ora ($06.b,X)		; 01 06
	ora ($08.b,X)		; 01 08
	ora $0D.b,S		; 03 0D
	cop $18.b		; 02 18
	asl $22.b		; 06 22
	tsb $0C33.w		; 0C 33 0C
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	asl $80.b,X		; 16 80
	ror A		; 6A
	bra -22.b		; 80 EA
	brk $52.b		; 00 52
	brk $AE.b		; 00 AE
	brk $A8.b		; 00 A8
	brk $D0.b		; 00 D0
	brk $50.b		; 00 50
	brk $00.b		; 00 00
	cpx $9C00.w		; EC 00 9C
	brk $9C.b		; 00 9C
	brk $BC.b		; 00 BC
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	and $003F1F.l		; 2F 1F 3F 00
	ora ($33.b)		; 12 33
	tsb $67.b		; 04 67
	plp		; 28
	adc $47DC15.l		; 6F 15 DC 47
	cpy #$C05C.w		; C0 5C C0
	asl $1F.b		; 06 1F
	brk $00.b		; 00 00
	ora $3A00.w		; 0D 00 3A
	brk $14.b		; 00 14
	brk $6B.b		; 00 6B
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $58.b		; 00 58
	ldy #$07F0.w		; A0 F0 07
	ora $FC.b		; 05 FC
	pld		; 2B
	cpx #$0074.w		; E0 74 00
	sbc #$06.b		; E9 06
	dec $5F11.w,X		; DE 11 5F
	rts		; 60

	brk $B0.b		; 00 B0
	brk $00.b		; 00 00
	.db $42, $00		; 42 00
	trb $F801.w		; 1C 01 F8
	ora $F0.b,S		; 03 F0
	ora [$E0.b]		; 07 E0
	ora [$A0.b]		; 07 A0
	ora [$D5.b]		; 07 D5
	rts		; 60

	sbc $E670.w		; ED 70 E6
	adc $017E.w,Y		; 79 7E 01
	ldx $B761.w,Y		; BE 61 B7
	sei		; 78
	sbc $7A.b,X		; F5 7A
	sbc $6A0072.l		; EF 72 00 6A
	brk $72.b		; 00 72
	brk $79.b		; 00 79
	brk $99.b		; 00 99
	brk $61.b		; 00 61
	brk $78.b		; 00 78
	brk $7A.b		; 00 7A
	brk $7A.b		; 00 7A
	cpy #$4000.w		; C0 00 40
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$E0C0.w		; C0 C0 E0
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	jsr $E000.w		; 20 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	clv		; B8
	cpy #$805F.w		; C0 5F 80
	bit $23C0.w,X		; 3C C0 23
	brk $26.b		; 00 26
	ora ($1B.b,X)		; 01 1B
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($40.b,X)		; 01 40
	ora [$80.b],Y		; 17 80
	and $000300.l,X		; 3F 00 03 00
	trb $1B00.w		; 1C 00 1B
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora $02.b,S		; 03 02
	ora $01.b,S		; 03 01
	ora $07.b,S		; 03 07
	ora [$07.b]		; 07 07
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	ora ($0F.b,X)		; 01 0F
	ora $0F.b,S		; 03 0F
	ora $1F.b,S		; 03 1F
	brk $1F.b		; 00 1F
	cmp $0CF160.l,X		; DF 60 F1 0C
	cop $00.b		; 02 00
	plx		; FA
	jsr ($FCFB.w,X)		; FC FB FC
	xce		; FB
	jsr ($F8FF.w,X)		; FC FF F8
	pea $00F8.w		; F4 F8 00
	bvs   0.b		; 70 00
	asl $FC00.w		; 0E 00 FC
	beq  -4.b		; F0 FC
	beq  -2.b		; F0 FE
	cpx #$E0FC.w		; E0 FC E0
	sed		; F8
	jsr $00FB.w		; 20 FB 00
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	bcs 127.b		; B0 7F
	iny		; C8
	eor $54CF51.l		; 4F 51 CF 54
	stp		; DB
	php		; 08
	adc ($08.b,S),Y		; 73 08
	and $0D081F.l,X		; 3F 1F 08 0D
	asl $0F.b		; 06 0F
	ora [$37.b]		; 07 37
	ora $37.b,S		; 03 37
	cop $33.b		; 02 33
	tas		; 1B
	and $17.b,S		; 23 17
	ora [$03.b],Y		; 17 03
	brk $00.b		; 00 00
	brk $17.b		; 00 17
	sed		; F8
	jsr ($FEFC.w,X)		; FC FC FE
	jsr ($78FE.w,X)		; FC FE 78
	inc $FEF8.w,X		; FE F8 FE
	jsr $60FF.w		; 20 FF 60
	sed		; F8
	bra 104.b		; 80 68
	jsr ($FE4C.w,X)		; FC 4C FE
	cop $FE.b		; 02 FE
	cop $FE.b		; 02 FE
	stx $FE.b		; 86 FE
	asl $FF.b		; 06 FF
	cmp $6898F8.l,X		; DF F8 98 68
	pla		; 68
	bmi 112.b		; 30 70
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	clc		; 18
	sec		; 38
	clc		; 18
	clc		; 18
	trb $1E1C.w		; 1C 1C 1E
	inc A		; 1A
	jsr $20F8.w		; 20 F8 20
	sei		; 78
	bpl 120.b		; 10 78
	bpl 120.b		; 10 78
	bpl 124.b		; 10 7C
	clc		; 18
	bit $3E18.w,X		; 3C 18 3E
	clc		; 18
	tsa		; 3B
	asl $0E0E.w		; 0E 0E 0E
	asl $0E0E.w		; 0E 0E 0E
	tsb $0C0E.w		; 0C 0E 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $1C0C.w		; 0C 0C 1C
	trb $1F04.w		; 1C 04 1F
	tsb $1F.b		; 04 1F
	tsb $1F.b		; 04 1F
	tsb $1F.b		; 04 1F
	tsb $1E.b		; 04 1E
	tsb $1E.b		; 04 1E
	php		; 08
	asl $3E08.w,X		; 1E 08 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	ora $06.b		; 05 06
	sbc $04.b,S		; E3 04
	sbc $08.b		; E5 08
	ora $0012.w		; 0D 12 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FA.b		; 00 FA
	brk $FC.b		; 00 FC
	ora ($F8.b,X)		; 01 F8
	cop $F0.b		; 02 F0
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $78.b		; 00 78
	sta [$96.b]		; 87 96
	adc ($0B.b,X)		; 61 0B
	beq -12.b		; F0 F4
	php		; 08
	sta $0000.w,X		; 9D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	adc $00FF00.l,X		; 7F 00 FF 00
	adc $00E600.l,X		; 7F 00 E6 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	ora ($DB.b,X)		; 01 DB
	tsb $49.b		; 04 49
	sty $4F.b		; 84 4F
	bra -53.b		; 80 CB
	brk $5E.b		; 00 5E
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($FE00.w,X)		; FC 00 FE
	brk $FD.b		; 00 FD
	brk $F7.b		; 00 F7
	brk $EB.b		; 00 EB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $80.b		; 00 80
	cmp $60BF40.l,X		; DF 40 BF 60
	cpx #$5820.w		; E0 20 58
	lda $000000.l,X		; BF 00 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $5F.b		; 00 5F
	brk $1F.b		; 00 1F
	bra  38.b		; 80 26
	bra  53.b		; 80 35
	dec A		; 3A
	and $372F30.l,X		; 3F 30 2F 37
	adc $3F7F0F.l,X		; 7F 0F 7F 3F
	rti		; 40

	brk $1F.b		; 00 1F
	and $007FBF.l,X		; 3F BF 7F 00
	ply		; 7A
	brk $78.b		; 00 78
	ora [$77.b]		; 07 77
	ora $3F1F0F.l		; 0F 0F 1F 3F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	ora $F0787F.l,X		; 1F 7F 78 F0
	clv		; B8
	bvs  -8.b		; 70 F8
	bra -32.b		; 80 E0
	beq -32.b		; F0 E0
	beq   0.b		; F0 00
	clc		; 18
	cpy #$F0E0.w		; C0 E0 F0
	inx		; E8
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $80.b		; 00 80
	cpy #$C0F8.w		; C0 F8 C0
	sed		; F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	cpy #$EFEC.w		; C0 EC EF
	sbc $EFFFE7.l,X		; FF E7 FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBB.l,X		; FF BB FF FF
	bcc  -1.b		; 90 FF
	sta $91FF.w,Y		; 99 FF 91
	sbc $42FF41.l,X		; FF 41 FF 42
	sbc $00FF81.l,X		; FF 81 FF 00
	sbc $E89244.l,X		; FF 44 92 E8
	stx $E4.b,Y		; 96 E4
	stz $80E2.w		; 9C E2 80
	inc $FECC.w,X		; FE CC FE
	inx		; E8
	phx		; DA
	tay		; A8
	phx		; DA
	pha		; 48
	tsx		; BA
	cpx #$E06C.w		; E0 6C E0
	jmp ($60E0.w)		; 6C E0 60
	cpx $E060.w		; EC 60 E0
	jsr $00C4.w		; 20 C4 00
	cpy $40.b		; C4 40
	sty $80.b,X		; 94 80
	ror $C100.w,X		; 7E 00 C1
	rti		; 40

	lda [$98.b]		; A7 98
	rti		; 40

	and $0F007E.l,X		; 3F 7E 00 0F
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $FF80.w,X		; 7E 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	sbc $FF0000.l,X		; FF 00 00 FF
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$7000.w		; E0 00 70
	brk $1C.b		; 00 1C
	cpx #$1826.w		; E0 26 18
	cmp [$00.b]		; C7 00
	and $0300.w,X		; 3D 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F000.w		; E0 00 F0
	brk $FC.b		; 00 FC
	brk $3E.b		; 00 3E
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	ora $1E0D00.l,X		; 1F 00 0D 1E
	asl $1E1E.w,X		; 1E 1E 1E
	asl $1E1E.w,X		; 1E 1E 1E
	trb $1C1C.w		; 1C 1C 1C
	trb $1C1C.w		; 1C 1C 1C
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	tsb $0C3F.w		; 0C 3F 0C
	and $0C3F0C.l,X		; 3F 0C 3F 0C
	rol $3E0C.w,X		; 3E 0C 3E
	php		; 08
	rol $0000.w,X		; 3E 00 00
	brk $00.b		; 00 00
	ora $00FF00.l		; 0F 00 FF 00
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	sed		; F8
	adc $EF80DC.l,X		; 7F DC 80 EF
	ldy #$5030.w		; A0 30 50
	sbc ($1F.b,X)		; E1 1F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	lda $801F80.l,X		; BF 80 1F 80
	ora $000EC0.l		; 0F C0 0E 00
	brk $00.b		; 00 00
	rol $2C38.w		; 2E 38 2C
	sec		; 38
	bit $1C18.w		; 2C 18 1C
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	sei		; 78
	php		; 08
	sei		; 78
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plp		; 28
	bit $1838.w,X		; 3C 38 18
	sec		; 38
	clc		; 18
	sei		; 78
	bmi 120.b		; 30 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	ror $1C10.w,X		; 7E 10 1C
	bpl  28.b		; 10 1C
	jsr $003C.w		; 20 3C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	sbc [$18.b],Y		; F7 18
	sbc [$1E.b]		; E7 1E
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $08.b		; 00 08
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $6E.b		; 00 6E
	bcc  94.b		; 90 5E
	tya		; 98
	lda ($3C.b,S),Y		; B3 3C
	lda $38.b		; A5 38
	adc $181700.l,X		; 7F 00 17 18
	stp		; DB
	trb $1D1A.w		; 1C 1A 1D
	brk $D3.b		; 00 D3
	brk $B9.b		; 00 B9
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	brk $80.b		; 00 80
	brk $FD.b		; 00 FD
	brk $3D.b		; 00 3D
	brk $3D.b		; 00 3D
	ldy $1B.b		; A4 1B
	stp		; DB
	bit $3CCE.w,X		; 3C CE 3C
	sta $08F400.l,X		; 9F 00 F4 08
	cmp $BE38.w,X		; DD 38 BE
	sei		; 78
	ldy $0078.w,X		; BC 78 00
	tad		; 5B
	brk $3D.b		; 00 3D
	brk $7D.b		; 00 7D
	brk $60.b		; 00 60
	brk $1B.b		; 00 1B
	brk $7A.b		; 00 7A
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	rti		; 40

	ldx $00E0.w,Y		; BE E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	bpl   0.b		; 10 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $03FC00.l,X		; FF 00 FC 03
	cmp [$00.b]		; C7 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $7F.b		; 00 7F
	rol $FFFF.w,X		; 3E FF FF
	sbc $000000.l,X		; FF 00 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $7FFF00.l,X		; FF 00 FF 7F
	sbc $FFC1FF.l,X		; FF FF C1 FF
	mvp $60,$F8		; 44 F8 60
	sei		; 78
	brk $14.b		; 00 14
	cpy #$6094.w		; C0 94 60
	ldy $AE40.w		; AC 40 AE
	mvp $C8,$12		; 44 12 C8
	and ($C4.b)		; 32 C4
	brk $64.b		; 00 64
	brk $84.b		; 00 84
	brk $E8.b		; 00 E8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F4.b		; 00 F4
	cpy #$C0EC.w		; C0 EC C0
	cpy $FF19.w		; CC 19 FF
	plp		; 28
	cmp $32DD22.l,X		; DF 22 DD 32
	cmp $05CA.w		; CD CA 05
	mvp $C0,$80		; 44 80 C0
	brk $C0.b		; 00 C0
	brk $FF.b		; 00 FF
	inc $DF.b		; E6 DF
	cmp [$DD.b],Y		; D7 DD
	cmp $4DCD.w,X		; DD CD 4D
	ora $05.b		; 05 05
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bvc -78.b		; 50 B2
	bvc -78.b		; 50 B2
	sty $36.b,X		; 94 36
	txa		; 8A
	bit $0065.w,X		; 3C 65 00
	adc $006518.l		; 6F 18 65 00
	ror $18.b,X		; 76 18
	sty $8C80.w		; 8C 80 8C
	bra   8.b		; 80 08
	brk $14.b		; 00 14
	brk $00.b		; 00 00
	inc A		; 1A
	brk $3C.b		; 00 3C
	brk $1A.b		; 00 1A
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	ror $8300.w,X		; 7E 00 83
	cop $E5.b		; 02 E5
	ora $FC02.w,Y		; 19 02 FC
	ror $C000.w,X		; 7E 00 C0
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $FF01.w,X		; 7E 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	ora $011BFE.l		; 0F FE 1B 01
	sbc $028405.l,X		; FF 05 84 02
	ora [$78.b]		; 07 78
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	sbc $F801.w,X		; FD 01 F8
	ora ($F8.b,X)		; 01 F8
	ora $E0.b,S		; 03 E0
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0A.b		; 00 0A
	brk $0A.b		; 00 0A
	brk $0C.b		; 00 0C
	ora ($0E.b,X)		; 01 0E
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	php		; 08
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	ora $030D05.l		; 0F 05 0D 03
	ora $0507.w		; 0D 07 05
	ora $04.b,S		; 03 04
	ora $05.b,S		; 03 05
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$01.b]		; 07 01
	tsb $03.b		; 04 03
	cop $03.b		; 02 03
	asl $03.b		; 06 03
	cop $03.b		; 02 03
	ora $03.b,S		; 03 03
	cop $03.b		; 02 03
	ora ($03.b,X)		; 01 03
	ora ($00.b,X)		; 01 00
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	ora [$04.b]		; 07 04
	ora $0B.b,S		; 03 0B
	brk $0F.b		; 00 0F
	ora ($0B.b,X)		; 01 0B
	brk $05.b		; 00 05
	ora $03.b,S		; 03 03
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora $00.b,S		; 03 00
	ora $00.b		; 05 00
	ora $7C.b,S		; 03 7C
	brk $50.b		; 00 50
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	bit $3C1C.w,X		; 3C 1C 3C
	trb $1C1C.w		; 1C 1C 1C
	trb $1C1C.w		; 1C 1C 1C
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	bpl 124.b		; 10 7C
	clc		; 18
	ror $7E18.w,X		; 7E 18 7E
	clc		; 18
	rol $3E08.w,X		; 3E 08 3E
	php		; 08
	rol $B04C.w,X		; 3E 4C B0
	xba		; EB
	sta [$B7.b],Y		; 97 B7
	dey		; 88
	sta ($0F.b,S),Y		; 93 0F
	cop $08.b		; 02 08
	asl $18.b		; 06 18
	ora $190C19.l		; 0F 19 0C 19
	brk $B3.b		; 00 B3
	ora ($B7.b,X)		; 01 B7
	brk $80.b		; 00 80
	tsb $00.b		; 04 00
	ora [$00.b]		; 07 00
	ora $000600.l		; 0F 00 06 00
	asl $00.b		; 06 00
	jmp ($FB43.w,X)		; 7C 43 FB
	sta [$A7.b]		; 87 A7
	eor $A09F63.l,X		; 5F 63 9F A0
	cmp $30DF00.l,X		; DF 00 DF 30
	sbc $E100.w,Y		; F9 00 E1
	ora $C3.b,S		; 03 C3
	ora [$84.b]		; 07 84
	ora $1C9F58.l,X		; 1F 58 9F 1C
	ora $3F5F1F.l,X		; 1F 1F 5F 3F
	ora $019F09.l		; 0F 09 9F 01
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	phd		; 0B
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$FE.b]		; 07 FE
	brk $C2.b		; 00 C2
	tsa		; 3B
	tda		; 7B
	cop $4B.b		; 02 4B
	cop $45.b		; 02 45
	cop $7B.b		; 02 7B
	ora $4D.b		; 05 4D
	ora $80.b,S		; 03 80
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	ldx $BE02.w,Y		; BE 02 BE
	brk $BE.b		; 00 BE
	brk $BE.b		; 00 BE
	brk $8C.b		; 00 8C
	cop $80.b		; 02 80
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C1.b		; 00 C1
	rti		; 40

	tda		; 7B
	adc #$0F.b		; 69 0F
	bit $07.b,X		; 34 07
	txa		; 8A
	sta $E6.b,S		; 83 E6
	sbc [$00.b]		; E7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	brk $F0.b		; 00 F0
	brk $FA.b		; 00 FA
	brk $7D.b		; 00 7D
	brk $19.b		; 00 19
	brk $3C.b		; 00 3C
	brk $F2.b		; 00 F2
	brk $0A.b		; 00 0A
	beq -54.b		; F0 CA
	beq -55.b		; F0 C9
	beq  17.b		; F0 11
	cpx #$C03D.w		; E0 3D C0
	cmp $180020.l,X		; DF 20 00 18
	brk $0C.b		; 00 0C
	rts		; 60

	tsb $30.b		; 04 30
	tsb $20.b		; 04 20
	asl $E0.b		; 06 E0
	asl $0200.w		; 0E 00 02
	brk $28.b		; 00 28
	rol $BEFF.w,X		; 3E FF BE
	adc $6C7FAE.l,X		; 7F AE 7F 6C
	stz $7E9C.w,X		; 9E 9C 7E
	tya		; 98
	jmp ($7C30.w,X)		; 7C 30 7C
	brk $F8.b		; 00 F8
	sbc $417FC1.l,X		; FF C1 7F 41
	adc $129E51.l,X		; 7F 51 9E 12
	ror $7C22.w,X		; 7E 22 7C
	stz $7C.b		; 64 7C
	jmp $F8F8.w		; 4C F8 F8
	sbc $7A3600.l,X		; FF 00 36 7A
	ror $7E7A.w,X		; 7E 7A 7E
	ply		; 7A
	rol $3E3A.w,X		; 3E 3A 3E
	dec A		; 3A
	rol $1E3A.w,X		; 3E 3A 1E
	dec A		; 3A
	brk $00.b		; 00 00
	brk $FB.b		; 00 FB
	bmi  -5.b		; 30 FB
	and ($FB.b)		; 32 FB
	ora ($7B.b)		; 12 7B
	ora ($7B.b)		; 12 7B
	inc A		; 1A
	tda		; 7B
	clc		; 18
	tda		; 7B
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	beq  -8.b		; F0 F8
	sed		; F8
	jsr ($FCF8.w,X)		; FC F8 FC
	jsr ($DCFE.w,X)		; FC FE DC
	inc $FE9C.w,X		; FE 9C FE
	asl $F0FF.w,X		; 1E FF F0
	beq  -8.b		; F0 F8
	inx		; E8
	jsr ($FC44.w,X)		; FC 44 FC
	trb $FE.b		; 14 FE
	asl A		; 0A
	inc $FE2A.w,X		; FE 2A FE
	.db $62, $FF, $E1		; 62 FF E1
	bit $3634.w,X		; 3C 34 36
	dec A		; 3A
	rol $3A.b,X		; 36 3A
	asl $1E3A.w,X		; 1E 3A 1E
	inc A		; 1A
	trb $0A1A.w		; 1C 1A 0A
	tsb $0D0F.w		; 0C 0F 0D
	bpl 118.b		; 10 76
	ora ($7B.b)		; 12 7B
	ora ($7B.b)		; 12 7B
	bpl 123.b		; 10 7B
	clc		; 18
	tsa		; 3B
	php		; 08
	tsa		; 3B
	php		; 08
	ora $1D08.w,X		; 1D 08 1D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	beq   0.b		; F0 00
	iny		; C8
	brk $28.b		; 00 28
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $30.b		; 00 30
	bra  16.b		; 80 10
	ora [$0F.b],Y		; 17 0F
	bne   0.b		; D0 00
	adc [$4F.b],Y		; 77 4F
	eor [$6F.b],Y		; 57 6F
	eor [$6F.b],Y		; 57 6F
	eor [$6F.b],Y		; 57 6F
	cmp [$2F.b],Y		; D7 2F
	and [$0E.b],Y		; 37 0E
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $CF.b		; 00 CF
	ora $EF.b,S		; 03 EF
	ora $EF.b,S		; 03 EF
	ora $EF.b,S		; 03 EF
	cop $2F.b		; 02 2F
	brk $4E.b		; 00 4E
	bcs -64.b		; B0 C0
	plp		; 28
	bmi  -8.b		; 30 F8
	beq  -9.b		; F0 F7
	sed		; F8
	sbc [$F8.b],Y		; F7 F8
	sbc ($8C.b,S),Y		; F3 8C
	plx		; FA
	tsb $7E.b		; 04 7E
	beq   0.b		; F0 00
	cpx #$F000.w		; E0 00 F0
	jsr $E0F0.w		; 20 F0 E0
	sed		; F8
	bra  -7.b		; 80 F9
	brk $FD.b		; 00 FD
	brk $0D.b		; 00 0D
	jsr $00F5.w		; 20 F5 00
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	brk $D0.b		; 00 D0
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $2000.w		; 20 00 20
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bmi -80.b		; 30 B0
	dec A		; 3A
	rol $7E.b,X		; 36 7E
	dec A		; 3A
	and $7E1A.w,X		; 3D 1A 7E
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $12.b		; 00 12
	adc [$10.b],Y		; 77 10
	tsa		; 3B
	bpl  26.b		; 10 1A
	jsr $0030.w		; 20 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ora ($0A.b),Y		; 11 0A
	and ($18.b,S),Y		; 33 18
	and ($14.b,S),Y		; 33 14
	and [$22.b],Y		; 37 22
	ora ($6B.b,X)		; 01 6B
	trb $0063.w		; 1C 63 00
	rtl		; 6B

	trb $000E.w		; 1C 0E 00
	trb $0D00.w		; 1C 00 0D
	brk $09.b		; 00 09
	brk $01.b		; 00 01
	trb $3E00.w		; 1C 00 3E
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	and $E3.b		; 25 E3
	adc $4BB6.w,X		; 7D B6 4B
	bcs  13.b		; B0 0D
	cmp $10CB.w,Y		; D9 CB 10
	mvp $C0,$80		; 44 80 C0
	brk $C0.b		; 00 C0
	brk $9C.b		; 00 9C
	brk $8C.b		; 00 8C
	asl $98.b		; 06 98
	tsb $96.b		; 04 96
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   8.b		; 80 08
	brk $08.b		; 00 08
	brk $05.b		; 00 05
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	ora $8E.b,S		; 03 8E
	ora ($0F.b,X)		; 01 0F
	brk $0F.b		; 00 0F
	brk $0D.b		; 00 0D
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($3B.b,X)		; 01 3B
	jsr ($F10C.w,X)		; FC 0C F1
	tsa		; 3B
	cpy #$12E8.w		; C0 E8 12
	tax		; AA
	bpl -59.b		; 10 C5
	bpl -43.b		; 10 D5
	brk $B6.b		; 00 B6
	ora ($C4.b,X)		; 01 C4
	brk $70.b		; 00 70
	ora $00.b,S		; 03 00
	ora $001F00.l		; 0F 00 1F 00
	sbc $00BE00.l,X		; FF 00 BE 00
	ldx $5D00.w,Y		; BE 00 5D
	pea $A800.w		; F4 00 A8
	rti		; 40

	beq   0.b		; F0 00
	bne   0.b		; D0 00
	inc $B440.w		; EE 40 B4
	cpy $98E8.w		; CC E8 98
	clv		; B8
	brk $00.b		; 00 00
	tay		; A8
	brk $50.b		; 00 50
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $40.b		; 00 40
	brk $CE.b		; 00 CE
	brk $DC.b		; 00 DC
	brk $50.b		; 00 50
	brk $04.b		; 00 04
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $AB10.w		; 6D 10 AB
	jmp ($73B2.w)		; 6C B2 73
	ldy $BF7C.w,X		; BC 7C BF
	adc $BF7FBF.l,X		; 7F BF 7F BF
	adc $007FBF.l,X		; 7F BF 7F 00
	ora ($00.b)		; 12 00
	jmp ($7F00.w,X)		; 7C 00 7F
	clc		; 18
	adc $1E7F1C.l,X		; 7F 1C 7F 1E
	adc $1C7F1E.l,X		; 7F 1E 7F 1C
	adc $FC106E.l,X		; 7F 6E 10 FC
	ora ($5A.b)		; 12 5A
	rol $D6.b,X		; 36 D6
	rol $76.b,X		; 36 76
	stx $B2.b,Y		; 96 B2
	asl $BC.b,X		; 16 BC
	cop $43.b		; 02 43
	bra   0.b		; 80 00
	sta ($00.b),Y		; 91 00
	and ($00.b,S),Y		; 33 00
	lda [$00.b],Y		; B7 00
	and $00BF00.l,X		; 3F 00 BF 00
	ora $000300.l,X		; 1F 00 03 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	sbc $FB0000.l,X		; FF 00 00 FB
	ora $EF.b,S		; 03 EF
	php		; 08
	phd		; 0B
	brk $0B.b		; 00 0B
	beq  28.b		; F0 1C
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FC00.l,X		; FF 00 FC 00
	beq   0.b		; F0 00
	beq   4.b		; F0 04
	bvs   4.b		; 70 04
	brk $07.b		; 00 07
	ora $C73800.l		; 0F 00 38 C7
	dec $A1.b,X		; D6 A1
	txa		; 8A
	adc ($8B.b),Y		; 71 8B
	bvs   5.b		; 70 05
	sed		; F8
	sbc $18.b		; E5 18
	plx		; FA
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	ora $003F00.l		; 0F 00 3F 00
	adc $007F00.l,X		; 7F 00 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	and $3D0FF0.l,X		; 3F F0 0F 3D
	cmp $3B.b,S		; C3 3B
	cpy $2B.b		; C4 2B
	cpy $2B.b		; C4 2B
	cpy $2B.b		; C4 2B
	cpy $26.b		; C4 26
	iny		; C8
	lda [$48.b]		; A7 48
	brk $00.b		; 00 00
	cop $E0.b		; 02 E0
	brk $EC.b		; 00 EC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FF.b		; 00 FF
	bra -128.b		; 80 80
	adc $80BF00.l,X		; 7F 00 BF 80
	cpy #$C040.w		; C0 40 C0
	and $F00CF0.l,X		; 3F F0 0C F0
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3C.b		; 00 3C
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	ora $0704.w		; 0D 04 07
	asl A		; 0A
	ora $08.b,S		; 03 08
	ora $0418.w		; 0D 18 04
	ora ($06.b),Y		; 11 06
	ora ($0A.b,S),Y		; 13 0A
	ora ($1C.b,S),Y		; 13 1C
	and [$00.b],Y		; 37 00
	asl $00.b		; 06 00
	cop $04.b		; 02 04
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0B.b		; 00 0B
	ora ($9F.b,X)		; 01 9F
	tsb $00ED.w		; 0C ED 00
	sty $A23E.w		; 8C 3E A2
	adc $9D.b,S		; 63 9D
	eor ($77.b,X)		; 41 77
	cmp #$22.b		; C9 22
	stz $DD63.w		; 9C 63 DD
	brk $E2.b		; 00 E2
	brk $9E.b		; 00 9E
	brk $41.b		; 00 41
	trb $7E00.w		; 1C 00 7E
	brk $BE.b		; 00 BE
	brk $FF.b		; 00 FF
	brk $3E.b		; 00 3E
	brk $7C.b		; 00 7C
	brk $C3.b		; 00 C3
	rti		; 40

	ldx $4090.w		; AE 90 40
	and $07007C.l,X		; 3F 7C 00 07
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($FF80.w,X)		; 7C 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	ora $FF0000.l		; 0F 00 00 FF
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$7000.w		; E0 00 70
	brk $1C.b		; 00 1C
	cpx #$1826.w		; E0 26 18
	cmp [$00.b]		; C7 00
	and $0300.w,X		; 3D 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F000.w		; E0 00 F0
	brk $FC.b		; 00 FC
	brk $3E.b		; 00 3E
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	ror $8300.w,X		; 7E 00 83
	cop $E5.b		; 02 E5
	ora $FC02.w,Y		; 19 02 FC
	ror $C000.w,X		; 7E 00 C0
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $FF01.w,X		; 7E 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	sed		; F8
	adc $EF80D8.l,X		; 7F D8 80 EF
	ldy #$5030.w		; A0 30 50
	sbc ($1F.b,X)		; E1 1F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	lda $801F80.l,X		; BF 80 1F 80
	ora $0006C0.l		; 0F C0 06 00
	brk $00.b		; 00 00
	ora $0E1F0E.l,X		; 1F 0E 1F 0E
	ora $0E1D0E.l,X		; 1F 0E 1D 0E
	asl $1E0C.w,X		; 1E 0C 1E
	tsb $0C1E.w		; 0C 1E 0C
	asl $040C.w,X		; 1E 0C 04
	asl $0E04.w		; 0E 04 0E
	tsb $0E.b		; 04 0E
	tsb $0E.b		; 04 0E
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0C0C.w		; 0C 0C 0C
	php		; 08
	tsb $2F7F.w		; 0C 7F 2F
	adc $1F4F2F.l,X		; 7F 2F 4F 1F
	ora $1F1F1F.l,X		; 1F 1F 1F 1F
	ora $07373F.l,X		; 1F 3F 37 07
	adc $0731.w,Y		; 79 31 07
	and $072F07.l		; 2F 07 2F 07
	and $0F3F0F.l,X		; 3F 0F 3F 0F
	and $037F0F.l,X		; 3F 0F 7F 03
	eor $FC3700.l		; 4F 00 37 FC
	beq  -4.b		; F0 FC
	beq -16.b		; F0 F0
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	beq  -8.b		; F0 F8
	jmp.w [$3CC0]		; DC C0 3C
	clc		; 18
	cpx #$E0F8.w		; E0 F8 E0
	sed		; F8
	beq  -4.b		; F0 FC
	beq  -4.b		; F0 FC
	beq  -4.b		; F0 FC
	cpx #$80FC.w		; E0 FC 80
	inc $00.b		; E6 00
	phx		; DA
	tas		; 1B
	nop		; EA
	sbc $E09F04.l,X		; FF 04 9F E0
	inc $DBF5.w		; EE F5 DB
	cpx $EE.b		; E4 EE
	sbc ($F7.b),Y		; F1 F7
	cop $AB.b		; 02 AB
	asl $00.b		; 06 00
	inc $1500.w		; EE 00 15
	brk $E0.b		; 00 E0
	brk $F5.b		; 00 F5
	brk $F5.b		; 00 F5
	brk $F1.b		; 00 F1
	brk $08.b		; 00 08
	tsb $70.b		; 04 70
	php		; 08
	beq  -8.b		; F0 F8
	brk $28.b		; 00 28
	cpx #$E0E8.w		; E0 E8 E0
	pla		; 68
	cpx #$E8EC.w		; E0 EC E8
	jsr ($7408.w,X)		; FC 08 74
	bpl   0.b		; 10 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	php		; 08
	brk $98.b		; 00 98
	ora $002300.l,X		; 1F 00 23 00
	and $003C00.l,X		; 3F 00 3C 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $1C.b		; 00 1C
	brk $1F.b		; 00 1F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda [$00.b],Y		; B7 00
	sta $F300.w		; 8D 00 F3
	ora ($6F.b,X)		; 01 6F
	cop $BE.b		; 02 BE
	ora $F9.b		; 05 F9
	tas		; 1B
	lda $67.b,S		; A3 67
	sbc $CE001F.l		; EF 1F 00 CE
	brk $72.b		; 00 72
	ora ($8D.b,X)		; 01 8D
	cop $F2.b		; 02 F2
	tsb $45.b		; 04 45
	php		; 08
	ora $037F01.l,X		; 1F 01 7F 03
	ora $FE409D.l,X		; 1F 9D 40 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra  -6.b		; 80 FA
	rti		; 40

	bit $8CA0.w,X		; 3C A0 8C
	bne -40.b		; D0 D8
	cpx #$FB00.w		; E0 00 FB
	brk $DB.b		; 00 DB
	brk $54.b		; 00 54
	bra -88.b		; 80 A8
	rti		; 40

	mvp $E0,$00		; 44 00 E0
	brk $F0.b		; 00 F0
	bra -32.b		; 80 E0
	rts		; 60

	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0227.w		; 0C 27 02
	and $3E.b		; 25 3E
	ora ($46.b,X)		; 01 46
	ora ($76.b,X)		; 01 76
	clc		; 18
	ror $7A00.w,X		; 7E 00 7A
	trb $1C3E.w		; 1C 3E 1C
	ora $1D01.w,Y		; 19 01 1D
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	and $1C00.w,Y		; 39 00 1C
	brk $20.b		; 00 20
	php		; 08
	trb $1C08.w		; 1C 08 1C
	ora ($DD.b,X)		; 01 DD
	sty $F7.b,X		; 94 F7
	cmp #$FF.b		; C9 FF
	and $FF.b		; 25 FF
	tsb $00FF.w		; 0C FF 00
	adc $5C00.w,X		; 7D 00 5C
	brk $08.b		; 00 08
	ror $AA00.w,X		; 7E 00 AA
	brk $C1.b		; 00 C1
	brk $F7.b		; 00 F7
	cmp ($FF.b)		; D2 FF
	sbc ($7D.b,S),Y		; F3 7D
	adc $5C5C.w,X		; 7D 5C 5C
	php		; 08
	php		; 08
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
	brk $04.b		; 00 04
	ora $07.b,S		; 03 07
	brk $05.b		; 00 05
	ora ($05.b,X)		; 01 05
	ora ($05.b,X)		; 01 05
	ora ($0D.b,X)		; 01 0D
	ora $0F.b		; 05 0F
	tsb $09.b		; 04 09
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	and $3BFE1F.l,X		; 3F 1F FE 3B
	ora ($F7.b,X)		; 01 F7
	ora $0C.b		; 05 0C
	asl A		; 0A
	sta [$F8.b]		; 87 F8
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $FD00.w		; 20 00 FD
	ora ($F8.b,X)		; 01 F8
	ora ($F0.b,X)		; 01 F0
	ora $70.b,S		; 03 70
	brk $00.b		; 00 00
	brk $58.b		; 00 58
	bpl 120.b		; 10 78
	jsr $58B0.w		; 20 B0 58
	cpx #$4808.w		; E0 08 48
	sty $CC18.w		; 8C 18 CC
	bpl -60.b		; 10 C4
	bmi -28.b		; 30 E4
	bpl -80.b		; 10 B0
	brk $A0.b		; 00 A0
	brk $40.b		; 00 40
	bpl   0.b		; 10 00
	bmi   0.b		; 30 00
	bvs   0.b		; 70 00
	clv		; B8
	brk $98.b		; 00 98
	brk $10.b		; 00 10
	cpx $F4.b		; E4 F4
	brk $5A.b		; 00 5A
	bcs  70.b		; B0 46
	bra 106.b		; 80 6A
	tya		; 98
	ror $7A00.w,X		; 7E 00 7A
	bit $387C.w,X		; 3C 7C 38
	sec		; 38
	brk $00.b		; 00 00
	php		; 08
	bra -68.b		; 80 BC
	bra -72.b		; 80 B8
	bra -68.b		; 80 BC
	brk $00.b		; 00 00
	bpl  60.b		; 10 3C
	bpl  56.b		; 10 38
	jmp ($7C38.w,X)		; 7C 38 7C
	sec		; 38
	dec A		; 3A
	trb $1C3E.w		; 1C 3E 1C
	rol $3E1C.w,X		; 3E 1C 3E
	trb $1C2E.w		; 1C 2E 1C
	asl $100C.w,X		; 1E 0C 10
	sec		; 38
	clc		; 18
	sec		; 38
	clc		; 18
	trb $1C08.w		; 1C 08 1C
	php		; 08
	trb $1C08.w		; 1C 08 1C
	php		; 08
	trb $0C0C.w		; 1C 0C 0C
	beq  96.b		; F0 60
	bcs  96.b		; B0 60
	jmp ($5E30.w,X)		; 7C 30 5E
	bit $1834.w,X		; 3C 34 18
	bit $3E18.w,X		; 3C 18 3E
	trb $0E1F.w		; 1C 1F 0E
	jsr $2060.w		; 20 60 20
	rts		; 60

	jsr $0C30.w		; 20 30 0C
	bit $1810.w,X		; 3C 10 18
	bpl  24.b		; 10 18
	bpl  28.b		; 10 1C
	tsb $0A0E.w		; 0C 0E 0A
	ora [$0F.b]		; 07 0F
	asl $1F.b		; 06 1F
	asl $1E35.w		; 0E 35 1E
	ror $3E2C.w,X		; 7E 2C 3E
	tsb $183C.w		; 0C 3C 18
	sec		; 38
	brk $02.b		; 00 02
	ora [$02.b]		; 07 02
	asl $04.b		; 06 04
	asl $1E10.w		; 0E 10 1E
	bit $2C.b		; 24 2C
	tsb $0C.b		; 04 0C
	php		; 08
	clc		; 18
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora $04.b,S		; 03 04
	ora $03.b		; 05 03
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$E0.b]		; 07 E0
	bit #$90.b		; 89 90
	tya		; 98
	cpx #$00F8.w		; E0 F8 00
	sed		; F8
	cpy #$F030.w		; C0 30 F0
	cpy #$2030.w		; C0 30 20
	ldy #$7000.w		; A0 00 70
	brk $60.b		; 00 60
	brk $10.b		; 00 10
	brk $F0.b		; 00 F0
	brk $20.b		; 00 20
	brk $C0.b		; 00 C0
	cpy #$E000.w		; C0 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $3F1F1F.l		; 0F 1F 1F 3F
	and $7F3F7F.l,X		; 3F 7F 3F 7F
	adc $FF6CFF.l		; 6F FF 6C FF
	brk $00.b		; 00 00
	ora $101F0F.l		; 0F 0F 1F 10
	and $5B7F30.l,X		; 3F 30 7F 5B
	adc $90FF40.l,X		; 7F 40 FF 90
	sbc $000093.l,X		; FF 93 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	beq  -4.b		; F0 FC
	sed		; F8
	jsr ($FE9C.w,X)		; FC 9C FE
	tsb $04FE.w		; 0C FE 04
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	jsr ($FC4C.w,X)		; FC 4C FC
	sty $FE.b		; 84 FE
	.db $62, $DE, $D2		; 62 DE D2
	inc $E05A.w,X		; FE 5A E0
	brk $B0.b		; 00 B0
	brk $B8.b		; 00 B8
	brk $F8.b		; 00 F8
	brk $E8.b		; 00 E8
	trb $F8.b		; 14 F8
	mvn $52,$28		; 54 28 52
	jmp.w [$0032]		; DC 32 00
	brk $00.b		; 00 00
	rti		; 40

	brk $50.b		; 00 50
	brk $40.b		; 00 40
	brk $10.b		; 00 10
	brk $50.b		; 00 50
	tsb $D0.b		; 04 D0
	tsb $30.b		; 04 30
	phd		; 0B
	asl $0E0D.w		; 0E 0D 0E
	asl $1C0C.w		; 0E 0C 1C
	clc		; 18
	trb $18.b		; 14 18
	trb $3830.w		; 1C 30 38
	bmi 120.b		; 30 78
	bvs   8.b		; 70 08
	asl $1E0C.w,X		; 1E 0C 1E
	php		; 08
	trb $3800.w		; 1C 00 38
	bpl  56.b		; 10 38
	bpl 120.b		; 10 78
	brk $70.b		; 00 70
	jsr $6FF0.w		; 20 F0 6F
	bit $5F.b,X		; 34 5F
	and $3E.b,X		; 35 3E
	trb $1C2E.w		; 1C 2E 1C
	tas		; 1B
	tsb $0C1F.w		; 0C 1F 0C
	asl $1F0C.w,X		; 1E 0C 1F
	asl $3400.w		; 0E 00 34
	bpl  61.b		; 10 3D
	tsb $051D.w		; 0C 1D 05
	trb $0C01.w		; 1C 01 0C
	ora ($0C.b,X)		; 01 0C
	ora $0C.b		; 05 0C
	tsb $0E.b		; 04 0E
	sta $F400.w,Y		; 99 00 F4
	ora #$EB.b		; 09 EB
	cmp $7E.b		; C5 7E
	and ($2D.b,X)		; 21 2D
	ldx $2F6E.w		; AE 6E 2F
	lda $AEEE.w		; AD EE AE
	sbc $036600.l		; EF 00 66 03
	sec		; 38
	bra -36.b		; 80 DC
	ora ($E0.b,X)		; 01 E0
	bra 126.b		; 80 7E
	ldy #$203F.w		; A0 3F 20
	and $073F20.l,X		; 3F 20 3F 07
	brk $03.b		; 00 03
	tsb $1815.w		; 0C 15 18
	ror $3C30.w,X		; 7E 30 3C
	bpl  22.b		; 10 16
	brk $1B.b		; 00 1B
	brk $2D.b		; 00 2D
	brk $00.b		; 00 00
	php		; 08
	brk $1C.b		; 00 1C
	brk $3A.b		; 00 3A
	brk $31.b		; 00 31
	brk $13.b		; 00 13
	brk $0B.b		; 00 0B
	brk $06.b		; 00 06
	brk $16.b		; 00 16
	inc $67.b		; E6 67
	ply		; 7A
	inc A		; 1A
	adc $7705.w,X		; 7D 05 77
	cop $FA.b		; 02 FA
	brk $CF.b		; 00 CF
	jsr $40AF.w		; 20 AF 40
	sty $49.b,X		; 94 49
	cop $7F.b		; 02 7F
	clc		; 18
	sta $02A705.l,X		; 9F 05 A7 02
	tax		; AA
	brk $6D.b		; 00 6D
	brk $7D.b		; 00 7D
	brk $FD.b		; 00 FD
	brk $FF.b		; 00 FF
	jsl $003A00.l		; 22 00 3A 00
	and ($08.b)		; 32 08
	jmp $106400.l		; 5C 00 64 10
	dey		; 88
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $1C00.w		; 1C 00 1C
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs -60.b		; 70 C4
	bvc -60.b		; 50 C4
	php		; 08
	cpy $FC38.w		; CC 38 FC
	jsr $0EFE.w		; 20 FE 0E
	beq  30.b		; F0 1E
	jmp ($5032.w)		; 6C 32 50
	clv		; B8
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $40.b		; 00 40
	brk $5C.b		; 00 5C
	brk $30.b		; 00 30
	brk $28.b		; 00 28
	tsb $1C00.w		; 0C 00 1C
	lsr A		; 4A
	jsr $0856.w		; 20 56 08
	lsr $08.b,X		; 56 08
	eor $08.b,X		; 55 08
	eor $08.b,X		; 55 08
	and $08.b		; 25 08
	and $08.b		; 25 08
	and $08.b		; 25 08
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	jmp ($7CC7.w,X)		; 7C C7 7C
	cmp [$7C.b]		; C7 7C
	cmp [$7C.b]		; C7 7C
	dec $78.b		; C6 78
	dec $70.b		; C6 70
	dec $70.b		; C6 70
	dec $70.b		; C6 70
	cpy $38.b		; C4 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	sty $30.b		; 84 30
	sty $78.b		; 84 78
	dec $78.b		; C6 78
	dec $5C.b		; C6 5C
	dec $1C.b		; C6 1C
	dec $1C.b		; C6 1C
	dec $38.b		; C6 38
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	brk $F8.b		; 00 F8
	brk $BC.b		; 00 BC
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $5C.b		; 00 5C
	brk $21.b		; 00 21
	tsb $0826.w		; 0C 26 08
	and ($08.b)		; 32 08
	and ($08.b)		; 32 08
	jmp $4410.w		; 4C 10 44
	bpl  68.b		; 10 44
	bpl 120.b		; 10 78
	brk $00.b		; 00 00
	asl $1C00.w,X		; 1E 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	asl A		; 0A
	ora ($08.b,X)		; 01 08
	ora $0C.b,S		; 03 0C
	ora $15.b,S		; 03 15
	cop $11.b		; 02 11
	asl $18.b		; 06 18
	asl $1A.b		; 06 1A
	tsb $19.b		; 04 19
	tsb $00.b		; 04 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $000F00.l		; 0F 00 0F 00
	asl $8020.w		; 0E 20 80
	ldy #$00.b		; A0 00
	rti		; 40

	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $CD.b		; 00 CD
	plx		; FA
	txa		; 8A
	beq  22.b		; F0 16
	sbc #$CB.b		; E9 CB
	and #$6B.b		; 29 6B
	tya		; 98
	and $5C.b		; 25 5C
	and $17.b,S		; 23 17
	rts		; 60

	ora $FA.b,S		; 03 FA
	bmi -28.b		; 30 E4
	adc ($D4.b,X)		; 61 D4
	cmp ($17.b,X)		; C1 17
	ora ($87.b,X)		; 01 87
	bra  75.b		; 80 4B
	rti		; 40

	tsb $0400.w		; 0C 00 04
	clc		; 18
	ldy #$7E.b		; A0 7E
	bra 124.b		; 80 7C
	bne 104.b		; D0 68
	ldy #$30.b		; A0 30
	cpy #$10.b		; C0 10
	jsr $80F0.w		; 20 F0 80
	cpx #$00.b		; E0 00
	cpy #$5E.b		; C0 5E
	asl $0C6C.w		; 0E 6C 0C
	plp		; 28
	php		; 08
	rti		; 40

	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $FC.b		; 00 FC
	sta ($4B.b,X)		; 81 4B
	lda ($7F.b)		; B2 7F
	bit $9A25.w		; 2C 25 9A
	ora [$88.b]		; 07 88
	asl $08.b		; 06 08
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	asl $80.b		; 06 80
	tsb $B0.b		; 04 B0
	brk $A0.b		; 00 A0
	php		; 08
	rep #$00		; C2 00
	rep #$00		; C2 00
	sta ($00.b,X)		; 81 00
	bra   0.b		; 80 00
	bra 120.b		; 80 78
	bvs -24.b		; 70 E8
	beq -16.b		; F0 F0
	cpx #$F0.b		; E0 F0
	cpx #$50.b		; E0 50
	cpx #$A0.b		; E0 A0
	rti		; 40

	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	rts		; 60

	beq  96.b		; F0 60
	beq -64.b		; F0 C0
	cpx #$40.b		; E0 40
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0E0F0E.l,X		; 1F 0E 0F 0E
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	asl $0F.b,X		; 16 0F
	tas		; 1B
	asl $17.b		; 06 17
	brk $0D.b		; 00 0D
	cop $04.b		; 02 04
	asl $1E06.w		; 0E 06 1E
	asl $1F.b		; 06 1F
	asl $1F.b		; 06 1F
	cop $0F.b		; 02 0F
	brk $06.b		; 00 06
	brk $09.b		; 00 09
	brk $06.b		; 00 06
	and $9E21E0.l,X		; 3F E0 21 9E
	ldx $FF6D.w,Y		; BE 6D FF
	adc ($FF.b,S),Y		; 73 FF
	adc $BF7FFF.l,X		; 7F FF 7F BF
	adc $809F1F.l,X		; 7F 1F 9F 80
	jsr $5E00.w		; 20 00 5E
	brk $6D.b		; 00 6D
	and ($73.b)		; 32 73
	rol $3E7F.w,X		; 3E 7F 3E
	adc $067F1E.l,X		; 7F 1E 7F 06
	sbc $130033.l,X		; FF 33 00 13
	brk $0E.b		; 00 0E
	ora ($03.b,X)		; 01 03
	tsb $01.b		; 04 01
	asl $01.b		; 06 01
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	ora $00.b,S		; 03 00
	ora $0D00.w		; 0D 00 0D
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	pei ($09.b)		; D4 09
	eor ($89.b)		; 52 89
	ldx #$19.b		; A2 19
.ACCU 16
.INDEX 16
	rep #$39		; C2 39
	sbc $C0FF00.l,X		; FF 00 FF C0
	ora ($1F.b),Y		; 11 1F
	sbc ($1E.b)		; F2 1E
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	brk $3B.b		; 00 3B
	brk $00.b		; 00 00
	nop		; EA
	brk $E1.b		; 00 E1
	brk $29.b		; 00 29
	tsb $19.b		; 04 19
	tsb $1D.b		; 04 1D
	brk $15.b		; 00 15
	brk $15.b		; 00 15
	brk $15.b		; 00 15
	brk $0B.b		; 00 0B
	brk $0B.b		; 00 0B
	brk $00.b		; 00 00
	asl $0E00.w,X		; 1E 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	rts		; 60

	brk $70.b		; 00 70
	jsr $2070.w		; 20 70 20
	jmp ($0130.w)		; 6C 30 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	jsr $2000.w		; 20 00 20
	jsr $8030.w		; 20 30 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	bne   0.b		; D0 00
	bne   0.b		; D0 00
	bne   0.b		; D0 00
	ldy #$C010.w		; A0 10 C0
	bmi -64.b		; 30 C0
	beq  32.b		; F0 20
	bmi -64.b		; 30 C0
	bpl   0.b		; 10 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	jsr $2000.w		; 20 00 20
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	php		; 08
	bit $7C08.w,X		; 3C 08 7C
	plp		; 28
	jmp ($2C28.w)		; 6C 28 2C
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	php		; 08
	php		; 08
	php		; 08
	plp		; 28
	php		; 08
	sec		; 38
	jsr $B078.w		; 20 78 B0
	brk $88.b		; 00 88
	jsr $2098.w		; 20 98 20
	tay		; A8
	bpl -124.b		; 10 84
	bpl -34.b		; 10 DE
	brk $31.b		; 00 31
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	rts		; 60

	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	brk $3C.b		; 00 3C
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	ora $07.b,S		; 03 07
	cop $07.b		; 02 07
	brk $07.b		; 00 07
	ora $00.b,S		; 03 00
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	ora [$05.b]		; 07 05
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $06FF.w		; 20 FF 06
	sbc $A748.w,Y		; F9 48 A7
	rol $8FA8.w		; 2E A8 8F
	rts		; 60

	bcc 115.b		; 90 73
	ora $C0DD.w		; 0D DD C0
	ora $B9D8FE.l		; 0F FE D8 B9
	ldy #$0055.w		; A0 55 00
	eor [$00.b],Y		; 57 00
	and $002F00.l,X		; 3F 00 2F 00
	lda ($80.b)		; B2 80
	clc		; 18
	jsr $0000.w		; 20 00 00
	brk $80.b		; 00 80
	bra  -8.b		; 80 F8
	sed		; F8
	inc $FEFC.w,X		; FE FC FE
	dec $86FF.w		; CE FF 86
	sbc $00FF02.l,X		; FF 02 FF 00
	brk $80.b		; 00 80
	bra  -8.b		; 80 F8
	sei		; 78
	inc $FE26.w,X		; FE 26 FE
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	and ($EF.b),Y		; 31 EF
	adc #$ADBF.w		; 69 BF AD
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F1F1F.l		; 0F 1F 1F 3F
	ora $7F373F.l,X		; 1F 3F 37 7F
	rol $7F.b,X		; 36 7F
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $181F08.l		; 0F 08 1F 18
	and $203F2D.l,X		; 3F 2D 3F 20
	adc $497F48.l,X		; 7F 48 7F 49
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	rti		; 40

	ldy #$C088.w		; A0 88 C0
	trb $FC50.w		; 1C 50 FC
	bcs  -4.b		; B0 FC
	bvs  -4.b		; 70 FC
	bvs  -8.b		; 70 F8
	sec		; 38
	bcs  48.b		; B0 30
	ldy #$0020.w		; A0 20 00
	bpl -128.b		; 10 80
	bmi  16.b		; 30 10
	bmi  32.b		; 30 20
	bvs  32.b		; 70 20
	bvs  -4.b		; 70 FC
	bvs -20.b		; 70 EC
	bvs  -4.b		; 70 FC
	rts		; 60

	cld		; D8
	rts		; 60

	cld		; D8
	cpx #$C0F8.w		; E0 F8 C0
	inx		; E8
	bne -24.b		; D0 E8
	bne  32.b		; D0 20
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	pla		; 68
	rti		; 40

	rts		; 60

	rti		; 40

	cpx #$D0C0.w		; E0 C0 D0
	bra -48.b		; 80 D0
	bra -48.b		; 80 D0
	tsb $0603.w		; 0C 03 06
	ora ($04.b,X)		; 01 04
	brk $3D.b		; 00 3D
	ora $17.b,S		; 03 17
	tas		; 1B
	ora [$1B.b],Y		; 17 1B
	trb $19.b		; 14 19
	trb $0112.w		; 1C 12 01
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	tsa		; 3B
	ora ($3B.b,X)		; 01 3B
	brk $3B.b		; 00 3B
	brk $3B.b		; 00 3B
	lda [$8B.b]		; A7 8B
	eor $F72BD3.l,X		; 5F D3 2B F7
	phb		; 8B
	sbc [$DC.b],Y		; F7 DC
	sbc $EF.b,S		; E3 EF
	beq  -2.b		; F0 FE
	sed		; F8
	jmp ($717C.w,X)		; 7C 7C 71
	ora $A3.b,S		; 03 A3
	ora [$43.b]		; 07 43
	ora [$20.b]		; 07 20
	sta [$C0.b]		; 87 C0
	wai		; CB
	cpx #$78E4.w		; E0 E4 78
	sed		; F8
	clc		; 18
	inc $D0A8.w,X		; FE A8 D0
	tay		; A8
	bne -40.b		; D0 D8
	ldy #$8078.w		; A0 78 80
	beq   0.b		; F0 00
	bcc   0.b		; 90 00
	rts		; 60

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bne   0.b		; D0 00
	bne   0.b		; D0 00
	bcs   0.b		; B0 00
	bcs   0.b		; B0 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	asl $1904.w		; 0E 04 19
	php		; 08
	ora [$07.b],Y		; 17 07
	bpl  11.b		; 10 0B
	ora ($04.b),Y		; 11 04
	ora ($0E.b)		; 12 0E
	ora #$0007.w		; 09 07 00
	brk $04.b		; 00 04
	ora $00.b		; 05 00
	asl $0F02.w		; 0E 02 0F
	brk $0C.b		; 00 0C
	ora $08.b,S		; 03 08
	ora ($08.b,X)		; 01 08
	cop $00.b		; 02 00
	rol $00.b		; 26 00
	cmp ($24.b,S),Y		; D3 24
	ldx $7B14.w		; AE 14 7B
	tsb $37.b		; 04 37
	clv		; B8
	tsa		; 3B
	jmp ($3997.w,X)		; 7C 97 39
	phk		; 4B
	ora $D800.w,X		; 1D 00 D8
	tsb $00E0.w		; 0C E0 00
	adc ($04.b),Y		; 71 04
	sta ($00.b,X)		; 81 00
	sei		; 78
	bra  60.b		; 80 3C
	cpy #$E11D.w		; C0 1D E1
	ora $0000.w		; 0D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $3F1F1F.l		; 0F 1F 1F 3F
	and $7F3F7F.l,X		; 3F 7F 3F 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $141F0F.l		; 0F 0F 1F 14
	and $437F2C.l,X		; 3F 2C 7F 43
	adc $000040.l,X		; 7F 40 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$E0E0.w		; C0 E0 E0
	beq -16.b		; F0 F0
	jsr ($FEFC.w,X)		; FC FC FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E0C0.w		; C0 C0 E0
	jsr $10F0.w		; 20 F0 10
	jsr ($FEDC.w,X)		; FC DC FE
	cop $93.b		; 02 93
	ora $D71368.l		; 0F 68 13 D7
	asl A		; 0A
	lda $1B82.w,X		; BD 82 1B
	jmp.w [$3E9D]		; DC 9D 3E
	rtl		; 6B

	bit $9ECD.w,X		; 3C CD 9E
	php		; 08
	rts		; 60

	brk $F4.b		; 00 F4
	brk $38.b		; 00 38
	cop $C0.b		; 02 C0
	brk $3C.b		; 00 3C
	cpy #$C01E.w		; C0 1E C0
	asl $0E60.w		; 0E 60 0E
	ror $7E38.w,X		; 7E 38 7E
	clv		; B8
	ror $38.b,X		; 76 38
	inc $FC30.w,X		; FE 30 FC
	bmi -20.b		; 30 EC
	bvs 124.b		; 70 7C
	cpx #$E8F4.w		; E0 F4 E8
	bcc  56.b		; 90 38
	bpl  56.b		; 10 38
	brk $B8.b		; 00 B8
	brk $B4.b		; 00 B4
	jsr $2030.w		; 20 30 20
	bvs  96.b		; 70 60
	inx		; E8
	rti		; 40

	inx		; E8
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
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
	ora $00.b,S		; 03 00
	ora [$02.b]		; 07 02
	tsb $0B04.w		; 0C 04 0B
	ora $08.b,S		; 03 08
	ora $08.b		; 05 08
	cop $09.b		; 02 09
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	ora [$01.b]		; 07 01
	ora [$00.b]		; 07 00
	asl $01.b		; 06 01
	tsb $00.b		; 04 00
	tsb $01.b		; 04 01
	brk $04.b		; 00 04
	ora $05.b,S		; 03 05
	ora $04.b,S		; 03 04
	brk $3D.b		; 00 3D
	ora $17.b,S		; 03 17
	tas		; 1B
	ora [$1B.b],Y		; 17 1B
	trb $19.b		; 14 19
	trb $12.b		; 14 12
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($3B.b,X)		; 01 3B
	ora ($3B.b,X)		; 01 3B
	brk $3B.b		; 00 3B
	brk $3B.b		; 00 3B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tda		; 7B
	sbc $C6FFE3.l,X		; FF E3 FF C6
	sbc $01EF10.l,X		; FF 10 EF 01
	inc $F90A.w		; EE 0A F9
	ora $78.b,S		; 03 78
	adc $1C.b		; 65 1C
	sbc $1CFF84.l,X		; FF 84 FF 1C
	sbc $C7D729.l		; EF 29 D7 C7
	dec $C0.b,X		; D6 C0
	sbc $E0.b		; E5 E0
	adc $001B60.l		; 6F 60 1B 00
	inc $86FF.w		; EE FF 86
	sbc $04FF06.l,X		; FF 06 FF 04
	inc $7084.w,X		; FE 84 70
	lsr $FEE8.w		; 4E E8 FE
	cli		; 58
	ror $FF38.w,X		; 7E 38 FF
	ora ($FF.b),Y		; 11 FF
	adc $E9FF.w,Y		; 79 FF E9
	inc $300A.w,X		; FE 0A 30
	php		; 08
	jsr $8818.w		; 20 18 88
	clc		; 18
	bcc  56.b		; 90 38
	jsl $CB4D8D.l		; 22 8D 4D CB
	and $95F3.w		; 2D F3 95
	xba		; EB
	cmp $EEE3.w,X		; DD E3 EE
	sbc ($FF.b),Y		; F1 FF
	sed		; F8
	ror $F07C.w,X		; 7E 7C F0
	ora $30.b		; 05 30
	ora $50.b,S		; 03 50
	ora $20.b,S		; 03 20
	phb		; 8B
	cpy #$E0CB.w		; C0 CB E0
	sbc $78.b		; E5 78
	sed		; F8
	clc		; 18
	jsr ($E0FC.w,X)		; FC FC E0
	cld		; D8
	cpx #$D0E8.w		; E0 E8 D0
	clv		; B8
	cpy #$8078.w		; C0 78 80
	bcs   0.b		; B0 00
	cpx #$0000.w		; E0 00 00
	brk $C0.b		; 00 C0
	inx		; E8
	cpy #$80E0.w		; C0 E0 80
	bne   0.b		; D0 00
	bne   0.b		; D0 00
	bcs   0.b		; B0 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0F.b		; 04 0F
	tsb $1F.b		; 04 1F
	ora $1F.b		; 05 1F
	ora $0C1F.w		; 0D 1F 0C
	rol $3E0C.w,X		; 3E 0C 3E
	tsb $183E.w		; 0C 3E 18
	rol $0002.w,X		; 3E 02 00
	ora #$0800.w		; 09 00 08
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	brk $11.b		; 00 11
	brk $11.b		; 00 11
	brk $05.b		; 00 05
	brk $68.b		; 00 68
	asl $0CE8.w		; 0E E8 0C
	beq  28.b		; F0 1C
	bne  28.b		; D0 1C
	cpy #$C018.w		; C0 18 C0
	clc		; 18
	cpy #$A010.w		; C0 10 A0
	bmi -12.b		; 30 F4
	brk $F0.b		; 00 F0
	brk $E8.b		; 00 E8
	brk $E8.b		; 00 E8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	ora $010EF1.l		; 0F F1 0E 01
	brk $00.b		; 00 00
	brk $F1.b		; 00 F1
	adc ($5F.b,X)		; 61 5F
	and $231F3F.l,X		; 3F 3F 1F 23
	trb $400E.w		; 1C 0E 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E1.b		; 00 E1
	rti		; 40

	adc $003F19.l,X		; 7F 19 3F 00
	ora $1F1C00.l,X		; 1F 00 1C 1F
	sbc #$A757.w		; E9 57 A7
	sbc $5FAFAF.l,X		; FF AF AF 5F
	ldx $DCDF.w		; AE DF DC
	cpx $CBB3.w		; EC B3 CB
	sbc [$04.b],Y		; F7 04
	brk $0F.b		; 00 0F
	ora $AF.b,S		; 03 AF
	ora [$AF.b]		; 07 AF
	ora [$5F.b]		; 07 5F
	tsb $DF.b		; 04 DF
	bra -17.b		; 80 EF
	cop $EF.b		; 02 EF
	brk $0C.b		; 00 0C
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
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	ora $00.b,X		; 15 00
	ora $00.b,X		; 15 00
	ora $00.b,X		; 15 00
	ora $00.b,X		; 15 00
	inc A		; 1A
	brk $1A.b		; 00 1A
	brk $2A.b		; 00 2A
	brk $2A.b		; 00 2A
	brk $00.b		; 00 00
	asl $0E00.w		; 0E 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	mvp $AC,$30		; 44 30 AC
	bpl  66.b		; 10 42
	clc		; 18
	lsr $08.b,X		; 56 08
	and #$1304.w		; 29 04 13
	tsb $08.b		; 04 08
	cop $0B.b		; 02 0B
	brk $00.b		; 00 00
	sed		; F8
	brk $78.b		; 00 78
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	asl A		; 0A
	adc $1A.b,X		; 75 1A
	sei		; 78
	phd		; 0B
	bit $1E.b		; 24 1E
	bmi   0.b		; 30 00
	clc		; 18
	cop $1B.b		; 02 1B
	brk $0F.b		; 00 0F
	ora ($00.b,X)		; 01 00
	eor ($44.b),Y		; 51 44
	eor #$394C.w		; 49 4C 39
	asl $0F.b		; 06 0F
	brk $0F.b		; 00 0F
	brk $0D.b		; 00 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $2C9EA0.l,X		; FF A0 9E 2C
	adc ($18.b)		; 72 18
	stz $90.b		; 64 90
	cpx $E01C.w		; EC 1C E0
	lda ($80.b)		; B2 80
	and $9F9F00.l		; 2F 00 9F 9F
	ror $C20E.w		; 6E 0E C2
	cop $C4.b		; 02 C4
	tsb $4C.b		; 04 4C
	tsb $00C0.w		; 0C C0 00
	brk $4C.b		; 00 4C
	brk $DE.b		; 00 DE
	and $08.b,X		; 35 08
	and $08.b,X		; 35 08
	and $08.b,X		; 35 08
	and $08.b,X		; 35 08
	and $08.b,X		; 35 08
	and $08.b,X		; 35 08
	rol $2A00.w		; 2E 00 2A
	brk $00.b		; 00 00
	asl $1E00.w,X		; 1E 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $01.b		; 00 01
	ora ($1F.b,X)		; 01 1F
	ora $7F3F7F.l		; 0F 7F 3F 7F
	adc $FF61FF.l		; 6F FF 61 FF
	jsr $06FF.w		; 20 FF 06
	adc $0101.w,Y		; 79 01 01
	ora $747F1E.l,X		; 1F 1E 7F 74
	adc $90FF43.l,X		; 7F 43 FF 90
	sbc $DBFF9E.l,X		; FF 9E FF DB
	adc ($60.b,X)		; 61 60
	sec		; 38
	brk $44.b		; 00 44
	jsr $58C8.w		; 20 C8 58
	sed		; F8
	bit $1C3C.w,X		; 3C 3C 1C
	trb $1C0C.w		; 1C 0C 1C
	asl $0F12.w		; 0E 12 0F
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	php		; 08
	rol $1E0C.w,X		; 3E 0C 1E
	tsb $000E.w		; 0C 0E 00
	ora $200F02.l		; 0F 02 0F 20
	bra  96.b		; 80 60
	bra  16.b		; 80 10
	rti		; 40

	bvs   0.b		; 70 00
	dey		; 88
	jsr $1064.w		; 20 64 10
	phy		; 5A
	brk $25.b		; 00 25
	php		; 08
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $1E.b		; 00 1E
	pha		; 48
	bit $0E2C.w,X		; 3C 2C 0E
	ora [$0F.b],Y		; 17 0F
	phd		; 0B
	ora [$05.b]		; 07 05
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	rol $1F04.w,X		; 3E 04 1F
	ora $0F.b,S		; 03 0F
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $D4C0.w,Y		; 99 C0 D4
	sbc #$D73D.w		; E9 3D D7
	ldx $FF50.w		; AE 50 FF
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E080.w		; C0 80 E0
	cpy #$00E8.w		; C0 E8 00
	jmp.w [$D401]		; DC 01 D4
	brk $54.b		; 00 54
	and $3E10.w		; 2D 10 3E
	ora ($BE.b,X)		; 01 BE
	cop $07.b		; 02 07
	sbc $E22F.w,X		; FD 2F E2
	lda ($81.b),Y		; B1 81
	cpy $600F.w		; CC 0F 60
	adc $000600.l,X		; 7F 00 06 00
	ora #$0300.w		; 09 00 03
	ora #$5C81.w		; 09 81 5C
	brk $7E.b		; 00 7E
	brk $F3.b		; 00 F3
	brk $98.b		; 00 98
	brk $18.b		; 00 18
	ror $7F19.w,X		; 7E 19 7F
	brk $7F.b		; 00 7F
	cpx #$F01D.w		; E0 1D F0
	adc $1498.w		; 6D 98 14
	cpx $08.b		; E4 08
	pei ($20.b)		; D4 20
	and $00.b		; 25 00
	bit $00.b		; 24 00
	and $0800.w,X		; 3D 00 08
	brk $20.b		; 00 20
	rts		; 60

	brk $70.b		; 00 70
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	ldy #$2030.w		; A0 30 20
	bmi -32.b		; 30 E0
	beq  48.b		; F0 30
	sed		; F8
	brk $FC.b		; 00 FC
	sed		; F8
	asl $FF.b		; 06 FF
	sei		; 78
	lsr $07.b		; 46 07
	cpy #$C000.w		; C0 00 C0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $78.b		; 00 78
	brk $04.b		; 00 04
	brk $30.b		; 00 30
	sei		; 78
	brk $3F.b		; 00 3F
	bit $3810.w,X		; 3C 10 38
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
	brk $1F.b		; 00 1F
	php		; 08
	and $3D12.w		; 2D 12 3D
	cop $35.b		; 02 35
	cop $26.b		; 02 26
	ora ($5E.b,X)		; 01 5E
	ora ($5B.b,X)		; 01 5B
	brk $5B.b		; 00 5B
	brk $00.b		; 00 00
	ora #$1600.w		; 09 00 16
	brk $17.b		; 00 17
	brk $0B.b		; 00 0B
	brk $1B.b		; 00 1B
	brk $2B.b		; 00 2B
	brk $2D.b		; 00 2D
	brk $2D.b		; 00 2D
	clv		; B8
	rti		; 40

	pei ($A0.b)		; D4 A0
	tax		; AA
	bne 117.b		; D0 75
	pha		; 48
	cmp $40A8A0.l,X		; DF A0 A8 40
	inx		; E8
	brk $C8.b		; 00 C8
	jsr $7000.w		; 20 00 70
	brk $B8.b		; 00 B8
	bra -36.b		; 80 DC
	brk $EE.b		; 00 EE
	brk $A0.b		; 00 A0
	brk $50.b		; 00 50
	brk $50.b		; 00 50
	brk $30.b		; 00 30
	brk $F0.b		; 00 F0
	cpx #$FC18.w		; E0 18 FC
	cpx #$1C1A.w		; E0 1A 1C
	ldx #$6500.w		; A2 00 65
	clc		; 18
	eor ($0C.b,S),Y		; 53 0C
	plp		; 28
	asl $E0.b		; 06 E0
	brk $10.b		; 00 10
	brk $C0.b		; 00 C0
	cpx #$FC00.w		; E0 00 FC
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1F.b		; 00 1F
	phd		; 0B
	brk $15.b		; 00 15
	brk $15.b		; 00 15
	brk $3A.b		; 00 3A
	brk $44.b		; 00 44
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $0E00.w		; 0E 00 0E
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $10.b		; 64 10
	mvn $24,$08		; 54 08 24
	php		; 08
	inc A		; 1A
	brk $16.b		; 00 16
	brk $0E.b		; 00 0E
	brk $0A.b		; 00 0A
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	sec		; 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$F0F0.w		; E0 F0 F0
	sed		; F8
	sed		; F8
	jsr ($FEF8.w,X)		; FC F8 FE
	jmp $FF4EFF.l		; 5C FF 4E FF
	ora [$FF.b]		; 07 FF
	cpx #$F0E0.w		; E0 E0 F0
	bpl  -8.b		; 10 F8
	clc		; 18
	jsr ($FEB4.w,X)		; FC B4 FE
	asl $FF.b		; 06 FF
	lda $FF.b,S		; A3 FF
	lda ($FF.b),Y		; B1 FF
	sed		; F8
	lda [$80.b]		; A7 80
	inc $FA82.w		; EE 82 FA
	stx $B2.b		; 86 B2
	dec $0E72.w		; CE 72 0E
	plx		; FA
	dec $FF.b		; C6 FF
	brk $F8.b		; 00 F8
	ora [$00.b]		; 07 00
	cpy #$8780.w		; C0 80 87
	bra -49.b		; 80 CF
	brk $CF.b		; 00 CF
	brk $8F.b		; 00 8F
	bra -17.b		; 80 EF
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	tad		; 5B
	ora [$2A.b]		; 07 2A
	sta $27.b,S		; 83 27
	rti		; 40

	txs		; 9A
	rts		; 60

	sta $2620.w		; 8D 20 26
	bcc  66.b		; 90 42
	tya		; 98
	and $C8.b		; 25 C8
	brk $A7.b		; 00 A7
	brk $D7.b		; 00 D7
	brk $DA.b		; 00 DA
	brk $6C.b		; 00 6C
	brk $F6.b		; 00 F6
	brk $FB.b		; 00 FB
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	eor $8D00.w,X		; 5D 00 8D
	brk $8E.b		; 00 8E
	brk $FE.b		; 00 FE
	brk $07.b		; 00 07
	sei		; 78
	ora [$7C.b]		; 07 7C
	and $F026F8.l		; 2F F8 26 F0
	brk $2E.b		; 00 2E
	brk $76.b		; 00 76
	brk $77.b		; 00 77
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	pld		; 2B
	brk $47.b		; 00 47
	brk $4F.b		; 00 4F
	brk $12.b		; 00 12
	cpx $748B.w		; EC 8B 74
	stz $7060.w,X		; 9E 60 70
	php		; 08
	cpx #$4010.w		; E0 10 40
	bvs  64.b		; 70 40
	bvs -128.b		; 70 80
	cpx #$EF00.w		; E0 00 EF
	brk $F6.b		; 00 F6
	brk $60.b		; 00 60
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ldy #$A000.w		; A0 00 A0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -128.b		; 80 80
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
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
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
	brk $07.b		; 00 07
	brk $09.b		; 00 09
	brk $11.b		; 00 11
	brk $11.b		; 00 11
	brk $11.b		; 00 11
	brk $11.b		; 00 11
	brk $22.b		; 00 22
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $0E00.w		; 0E 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	sec		; 38
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $22.b		; 00 22
	brk $22.b		; 00 22
	brk $22.b		; 00 22
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	ora $02.b,X		; 15 02
	ora ($04.b,S),Y		; 13 04
	inc A		; 1A
	tsb $1A.b		; 04 1A
	tsb $21.b		; 04 21
	brk $2F.b		; 00 2F
	brk $3F.b		; 00 3F
	php		; 08
	and $0012.w,X		; 3D 12 00
	ora $000F00.l		; 0F 00 0F 00
	ora $000F00.l		; 0F 00 0F 00
	asl $1100.w,X		; 1E 00 11
	php		; 08
	phd		; 0B
	brk $17.b		; 00 17
	rti		; 40

	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $FF.b		; 00 FF
	brk $62.b		; 00 62
	trb $1865.w		; 1C 65 18
	adc $18.b		; 65 18
	lda $18.b,S		; A3 18
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	lda $DFC3.w,X		; BD C3 DF
	sbc $B7.b,S		; E3 B7
	wai		; CB
	jsr ($7F83.w,X)		; FC 83 7F
	ldy $7EFF.w,X		; BC FF 7E
	sbc $0001FE.l,X		; FF FE 01 00
	brk $EB.b		; 00 EB
	brk $EB.b		; 00 EB
	brk $EB.b		; 00 EB
	brk $C3.b		; 00 C3
	brk $BC.b		; 00 BC
	bit $7C7E.w,X		; 3C 7E 7C
	inc $FE00.w,X		; FE 00 FE
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc [$FF.b],Y		; F7 FF
	sbc [$FF.b]		; E7 FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFF.w,X		; DD FF FF
	ora #$99FF.w		; 09 FF 99
	sbc $82FF89.l,X		; FF 89 FF 82
	sbc $81FF42.l,X		; FF 42 FF 81
	sbc $22FF00.l,X		; FF 00 FF 22
	sty $88.b,X		; 94 88
	ldy $D8.b		; A4 D8
	tya		; 98
	beq -88.b		; F0 A8
	beq  48.b		; F0 30
	cpx #$E090.w		; E0 90 E0
	jsr $60C0.w		; 20 C0 60
	cpy #$6880.w		; C0 80 68
	cpy #$C058.w		; C0 58 C0
	bvs -64.b		; 70 C0
	bvs -64.b		; 70 C0
	cpx #$60C0.w		; E0 C0 60
	cpy #$80C0.w		; C0 C0 80
	cpy #$1D0A.w		; C0 0A 1D
	ora $0E.b		; 05 0E
	ora [$0E.b]		; 07 0E
	asl $0F07.w		; 0E 07 0F
	ora [$0B.b]		; 07 0B
	ora [$0B.b]		; 07 0B
	ora [$07.b]		; 07 07
	ora $00.b,S		; 03 00
	rol $1F00.w,X		; 3E 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	cop $07.b		; 02 07
	cop $07.b		; 02 07
	ora $07.b,S		; 03 07
	ora ($03.b,X)		; 01 03
	adc $B9D3.w,Y		; 79 D3 B9
	eor ($E9.b,S),Y		; 53 E9
	ora [$99.b],Y		; 17 99
	ora [$83.b]		; 07 83
	ora [$87.b]		; 07 87
	ora $85.b,S		; 03 85
	ora $82.b,S		; 03 82
	ora ($13.b,X)		; 01 13
	lsr $03.b,X		; 56 03
	lsr $07.b,X		; 56 07
	asl $07.b,X		; 16 07
	asl $07.b		; 06 07
	tsb $03.b		; 04 03
	brk $03.b		; 00 03
	cop $01.b		; 02 01
	ora ($34.b,X)		; 01 34
	brk $32.b		; 00 32
	brk $22.b		; 00 22
	bpl  34.b		; 10 22
	bpl  74.b		; 10 4A
	bpl  74.b		; 10 4A
	bpl  74.b		; 10 4A
	bpl 106.b		; 10 6A
	bpl   0.b		; 10 00
	clc		; 18
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	jmp ($AC10.w)		; 6C 10 AC
	bpl -92.b		; 10 A4
	bpl -28.b		; 10 E4
	bpl -76.b		; 10 B4
	rti		; 40

	stz $2E60.w		; 9C 60 2E
	cpy #$845B.w		; C0 5B 84
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $18.b		; 00 18
	brk $E8.b		; 00 E8
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	lda [$18.b]		; A7 18
	sbc $F100.w,X		; FD 00 F1
	brk $9F.b		; 00 9F
	rts		; 60

	adc $F038F0.l		; 6F F0 38 F0
	sei		; 78
	brk $C0.b		; 00 C0
	jsr $FC00.w		; 20 00 FC
	brk $52.b		; 00 52
	brk $2E.b		; 00 2E
	brk $6E.b		; 00 6E
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	brk $70.b		; 00 70
	ora $01.b		; 05 01
	ora $01.b		; 05 01
	ora $05.b		; 05 05
	ora $05.b		; 05 05
	ora $05.b		; 05 05
	ora [$04.b]		; 07 04
	adc $206807.l,X		; 7F 07 68 20
	brk $0B.b		; 00 0B
	brk $0B.b		; 00 0B
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0C.b		; 00 0C
	brk $07.b		; 00 07
	brk $37.b		; 00 37
	brk $00.b		; 00 00
	bit $4800.w,X		; 3C 00 48
	ora [$56.b]		; 07 56
	brk $79.b		; 00 79
	php		; 08
	stz $1C.b		; 64 1C
	ora ($0F.b,S),Y		; 13 0F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	ora $000720.l		; 0F 20 07 00
	phd		; 0B
	brk $04.b		; 00 04
	bmi   1.b		; 30 01
	sec		; 38
	adc [$2F.b],Y		; 77 2F
	eor [$0E.b],Y		; 57 0E
	lsr $0C.b,X		; 56 0C
	and $103DD4.l,X		; 3F D4 3D 10
	nop		; EA
	jsr $216C.w		; 20 6C 21
	jsr ($01A3.w,X)		; FC A3 01
	and $002E00.l		; 2F 00 2E 00
	and $1500.w		; 2D 00 15
	bne  19.b		; D0 13
	ldy #$A137.w		; A0 37 A1
	and [$03.b],Y		; 37 03
	and [$22.b]		; 27 22
	brk $22.b		; 00 22
	brk $62.b		; 00 62
	brk $62.b		; 00 62
	brk $52.b		; 00 52
	brk $AC.b		; 00 AC
	brk $A8.b		; 00 A8
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	trb $1C00.w		; 1C 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $2C.b		; 00 2C
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	jsl $002200.l		; 22 00 22 00
	jsl $002600.l		; 22 00 26 00
	rol $00.b		; 26 00
	dec A		; 3A
	brk $1A.b		; 00 1A
	brk $1A.b		; 00 1A
	brk $00.b		; 00 00
	trb $1C00.w		; 1C 00 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	eor $5E26.w,Y		; 59 26 5E
	and ($37.b,X)		; 21 37
	rts		; 60

	and ($60.b),Y		; 31 60
	and $601E60.l,X		; 3F 60 1E 60
	asl A		; 0A
	bmi  15.b		; 30 0F
	bpl   0.b		; 10 00
	and $000700.l		; 2F 00 07 00
	ora #$0E00.w		; 09 00 0E
	brk $0E.b		; 00 0E
	jsr $1001.w		; 20 01 10
	ora $00.b		; 05 00
	brk $AA.b		; 00 AA
	ora ($AB.b),Y		; 11 AB
	bpl -33.b		; 10 DF
	brk $BF.b		; 00 BF
	rti		; 40

	adc $F0CF60.l,X		; 7F 60 CF F0
	stx $E0.b,Y		; 96 E0
	sbc $FF0000.l,X		; FF 00 00 FF
	brk $FF.b		; 00 FF
	brk $BB.b		; 00 BB
	brk $5A.b		; 00 5A
	brk $EA.b		; 00 EA
	brk $F1.b		; 00 F1
	brk $F9.b		; 00 F9
	brk $00.b		; 00 00
	sbc $00FFFF.l,X		; FF FF FF 00
	sbc $008100.l,X		; FF 00 81 00
	brk $38.b		; 00 38
	brk $FE.b		; 00 FE
	jmp ($FFFF.w,X)		; 7C FF FF
	sbc $00FFFE.l,X		; FF FE FF 00
	brk $00.b		; 00 00
	sbc $38FF00.l,X		; FF 00 FF 38
	sbc $FFFFFE.l,X		; FF FE FF FF
	sta $FF.b,S		; 83 FF
	jsl $9C0080.l		; 22 80 00 9C
	brk $FA.b		; 00 FA
	tsb $25.b		; 04 25
	.db $82, $9D, $40		; 82 9D 40
	sta $700660.l		; 8F 60 06 70
	rol A		; 2A
	cpy $00.b		; C4 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $18.b		; 04 18
	rep #$08		; C2 08
	sep #$04		; E2 04
	beq   0.b		; F0 00
	sed		; F8
	bra -12.b		; 80 F4
	tya		; 98
	sbc $44FB14.l,X		; FF 14 FB 44
	tyx		; BB
	sta $2F23.w,X		; 9D 23 2F
	tsb $0F.b		; 04 0F
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	adc [$FB.b]		; 67 FB
	xba		; EB
	tyx		; BB
	tyx		; BB
	jsl $040423.l		; 22 23 04 04
	asl $07.b		; 06 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $C0C0.w		; 20 C0 C0
	bra  64.b		; 80 40
	bra -32.b		; 80 E0
	brk $F8.b		; 00 F8
	cpx #$78FC.w		; E0 FC 78
	jsr ($0000.w,X)		; FC 00 00
	brk $80.b		; 00 80
	cpy #$8000.w		; C0 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpy #$30E0.w		; C0 E0 30
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b		; 05 03
	ora $03.b		; 05 03
	ora [$01.b]		; 07 01
	ora [$03.b]		; 07 03
	ora $3E3D0F.l		; 0F 0F 3D 3E
	and $000000.l,X		; 3F 00 00 00
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	ora $0B.b,S		; 03 0B
	tsb $303F.w		; 0C 3F 30
	ror $4000.w,X		; 7E 00 40
	brk $00.b		; 00 00
	rep #$81		; C2 81
	cpy #$C181.w		; C0 81 C1
	bra -32.b		; 80 E0
	cpy #$40E0.w		; C0 E0 40
	cpx #$C0C0.w		; E0 C0 C0
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	sta ($01.b,X)		; 81 01
	sta ($80.b,X)		; 81 80
	bra -128.b		; 80 80
	cpy #$4040.w		; C0 40 40
	rti		; 40

	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	rol A		; 2A
	brk $2A.b		; 00 2A
	brk $3A.b		; 00 3A
	brk $4A.b		; 00 4A
	bpl 100.b		; 10 64
	bpl  84.b		; 10 54
	jsr $2094.w		; 20 94 20
	pei ($20.b)		; D4 20
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $78.b		; 00 78
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
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	inc A		; 1A
	ora ($2C.b,X)		; 01 2C
	ora $58.b,S		; 03 58
	ora [$8D.b]		; 07 8D
	cop $F6.b		; 02 F6
	bvs 121.b		; 70 79
	dey		; 88
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	bmi 127.b		; 30 7F
	bra  14.b		; 80 0E
	ora $00.b,S		; 03 00
	and $0F00.w,X		; 3D 00 0F
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora [$07.b]		; 07 07
	ora $1E3F0F.l,X		; 1F 0F 3F 1E
	adc $000000.l,X		; 7F 00 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	asl $1F.b		; 06 1F
	inc A		; 1A
	ora $293F14.l,X		; 1F 14 3F 29
	cmp [$07.b]		; C7 07
	sbc $07BF0F.l		; EF 0F BF 07
	eor [$83.b],Y		; 57 83
	sbc ($C1.b,S),Y		; F3 C1
	sbc #$F5F0.w		; E9 F0 F5
	sed		; F8
	xce		; FB
	jsr ($0F03.w,X)		; FC 03 0F
	ora [$DF.b]		; 07 DF
	ora [$67.b]		; 07 67
	sta $BB.b,S		; 83 BB
	cmp ($0D.b,X)		; C1 0D
	beq  22.b		; F0 16
	sed		; F8
	asl A		; 0A
	jsr ($7F45.w,X)		; FC 45 7F
	ror $BEBF.w,X		; 7E BF BE
	cmp $EFEFDE.l,X		; DF DE EF EF
	sbc ($F3.b,S),Y		; F3 F3
	jsr ($FCFD.w,X)		; FC FD FC
	inc $7EF9.w,X		; FE F9 7E
	trb $9CFE.w		; 1C FE 9C
	inc $FECE.w,X		; FE CE FE
	sbc [$FF.b]		; E7 FF
	sbc ($FF.b)		; F2 FF
	sed		; F8
	sbc $60FFF0.l,X		; FF F0 FF 60
	ror $09F6.w,X		; 7E F6 09
	lsr $B1.b		; 46 B1
	ldx $AE50.w		; AE 50 AE
	bvc  -2.b		; 50 FE
	bra  -6.b		; 80 FA
	tsb $DA.b		; 04 DA
	tsb $5A.b		; 04 5A
	tsb $00.b		; 04 00
	sta $B900.w,Y		; 99 00 B9
	brk $D5.b		; 00 D5
	brk $54.b		; 00 54
	brk $8C.b		; 00 8C
	brk $0C.b		; 00 0C
	brk $2C.b		; 00 2C
	brk $AC.b		; 00 AC
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($01.b,X)		; 01 01
	ora [$07.b]		; 07 07
	sbc $00000F.l,X		; FF 0F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora $1F.b,S		; 03 1F
	ora [$0F.b]		; 07 0F
	ora $1C.b		; 05 1C
	ora [$70.b],Y		; 17 70
	and $C0CEE0.l		; 2F E0 CE C0
	tas		; 1B
	tas		; 1B
	cpx $E7.b		; E4 E7
	inc $F1.b,X		; F6 F1
	cpx #$0BF9.w		; E0 F9 0B
	brk $0F.b		; 00 0F
	brk $5F.b		; 00 5F
	brk $3F.b		; 00 3F
	brk $04.b		; 00 04
	cpx #$F802.w		; E0 02 F8
	cpy #$81F8.w		; C0 F8 81
	inc $1FD0.w,X		; FE D0 1F
	lda ($3F.b,X)		; A1 3F
	mvp $8B,$7C		; 44 7C 8B
	sed		; F8
	ora [$F0.b],Y		; 17 F0
	rol $5DE0.w		; 2E E0 5D
	cmp ($BA.b,X)		; C1 BA
	sta $E8.b,S		; 83 E8
	brk $D2.b		; 00 D2
	brk $A3.b		; 00 A3
	brk $47.b		; 00 47
	brk $8F.b		; 00 8F
	brk $5F.b		; 00 5F
	brk $BE.b		; 00 BE
	brk $7D.b		; 00 7D
	brk $03.b		; 00 03
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora [$0F.b]		; 07 0F
	ora $1D1F1E.l		; 0F 1E 1F 1D
	rol $3C3A.w,X		; 3E 3A 3C
	stz $78.b,X		; 74 78
	ora ($07.b,X)		; 01 07
	ora $0F.b,S		; 03 0F
	ora [$0F.b]		; 07 0F
	asl $1F.b		; 06 1F
	tsb $183F.w		; 0C 3F 18
	ror $7C30.w,X		; 7E 30 7C
	jsr $F8F8.w		; 20 F8 F8
	sbc ($D0.b,X)		; E1 D0
	sbc ($A0.b,X)		; E1 A0
	cpy #$8040.w		; C0 40 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($E1.b,X)		; C1 E1
	sta ($E1.b,X)		; 81 E1
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
	ora [$00.b]		; 07 00
	tsb $0E00.w		; 0C 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $9F.b		; 00 9F
	rts		; 60

	sbc $007D00.l,X		; FF 00 7D 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $E6.b		; 00 E6
	brk $8E.b		; 00 8E
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
	brk $40.b		; 00 40
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora ($0D.b,X)		; 01 0D
	asl $1C.b		; 06 1C
	ora $71.b,X		; 15 71
	and $BAE1.w		; 2D E1 BA
	sta $00.b,S		; 83 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $0B.b		; 00 0B
	brk $0E.b		; 00 0E
	brk $5E.b		; 00 5E
	brk $7D.b		; 00 7D
	brk $6A.b		; 00 6A
	pea $9897.w		; F4 97 98
	and $39.b,S		; 23 39
	sbc $F5.b,S		; E3 F5
	cmp ($EE.b,X)		; C1 EE
	stx $CE.b		; 86 CE
	tsb $DC.b		; 04 DC
	ora $90BD.w		; 0D BD 90
	tsb $68.b		; 04 68
	brk $D0.b		; 00 D0
	ora ($01.b,X)		; 01 01
	ora ($06.b,X)		; 01 06
	brk $01.b		; 00 01
	brk $8B.b		; 00 8B
	brk $12.b		; 00 12
	brk $5C.b		; 00 5C
	sbc $5FBF9F.l,X		; FF 9F BF 5F
	and $BF7FBF.l,X		; 3F BF 7F BF
	sbc $BF7FBF.l,X		; FF BF 7F BF
	adc $3F3F9F.l,X		; 7F 9F 3F 3F
	pld		; 2B
	adc $20FF28.l,X		; 7F 28 FF 20
	sbc $417F43.l,X		; FF 43 7F 41
	adc $C07F40.l,X		; 7F 40 7F C0
	and $FCFE20.l,X		; 3F 20 FE FC
	sbc $F9FE.w,X		; FD FE F9
	inc $FCF8.w,X		; FE F8 FC
	sbc ($F9.b),Y		; F1 F9
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	cmp $FC.b		; C5 FC
	phb		; 8B
	sbc $21FC.w,Y		; F9 FC 21
	inc $FE22.w,X		; FE 22 FE
	lsr $FC.b		; 46 FC
	sta [$F8.b]		; 87 F8
	ora $F319F8.l		; 0F F8 19 F3
	bmi -26.b		; 30 E6
	rts		; 60

	sbc ($3C.b,S),Y		; F3 3C
	sbc [$18.b],Y		; F7 18
	jmp $02FD03.l		; 5C 03 FD 02
	inc $D8.b		; E6 D8
	bit $E850.w		; 2C 50 E8
	bcc  24.b		; 90 18
	cpy #$00.b		; C0 00
	ldy $D800.w,X		; BC 00 D8
	brk $E3.b		; 00 E3
	brk $02.b		; 00 02
	bra -40.b		; 80 D8
	brk $D0.b		; 00 D0
	brk $10.b		; 00 10
	bra   0.b		; 80 00
	ply		; 7A
	tsb $EE.b		; 04 EE
	brk $FE.b		; 00 FE
	brk $3C.b		; 00 3C
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $3400.w		; AC 00 34
	brk $34.b		; 00 34
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  15.b		; 30 0F
	and $005D00.l,X		; 3F 00 5D 00
	eor $006B00.l		; 4F 00 6B 00
	adc ($01.b)		; 72 01
	tas		; 1B
	brk $0F.b		; 00 0F
	ora ($00.b,X)		; 01 00
	ora $000F00.l,X		; 1F 00 0F 00
	rol $3100.w		; 2E 00 31
	brk $34.b		; 00 34
	brk $0D.b		; 00 0D
	brk $0C.b		; 00 0C
	brk $11.b		; 00 11
	cmp $033F0F.l		; CF 0F 3F 03
	sbc [$19.b]		; E7 19
	phd		; 0B
	beq -12.b		; F0 F4
	ora $58.b,S		; 03 58
	sta [$FF.b]		; 87 FF
	brk $FF.b		; 00 FF
	beq   7.b		; F0 07
	sbc $00C303.l,X		; FF 03 C3 00
	and $FC00.w,X		; 3D 00 FC
	brk $3B.b		; 00 3B
	brk $A7.b		; 00 A7
	brk $01.b		; 00 01
	cpx #$F1.b		; E0 F1
	jsr ($FEFE.w,X)		; FC FE FE
	inc $FEFE.w,X		; FE FE FE
	inc $7E7E.w,X		; FE 7E 7E
	ldx $1DFD.w,Y		; BE FD 1D
	jmp ($9C0D.w,X)		; 7C 0D 9C
	and $FF78.w		; 2D 78 FF
	jsr ($FEFF.w,X)		; FC FF FE
	sbc $3C7F7E.l,X		; FF 7E 7F 3C
	lda $099E1C.l,X		; BF 1C 9E 09
	ldx $6E01.w		; AE 01 6E
	ldy $87.b,X		; B4 87
	tay		; A8
	stx $8C80.w		; 8E 80 8C
	ldy #$B8.b		; A0 B8
	cpy #$F0.b		; C0 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	ply		; 7A
	brk $74.b		; 00 74
	brk $78.b		; 00 78
	brk $50.b		; 00 50
	brk $20.b		; 00 20
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $68.b		; 00 68
	bvs -16.b		; 70 F0
	cpx #$E0.b		; E0 E0
	cpy #$A0.b		; C0 A0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	beq -64.b		; F0 C0
	cpx #$C0.b		; E0 C0
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora [$0E.b]		; 07 0E
	ora $001E1F.l		; 0F 1F 1E 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora $060F06.l		; 0F 06 0F 06
	ora $0B3E0C.l,X		; 1F 0C 3E 0B
	brk $10.b		; 00 10
	brk $6D.b		; 00 6D
	brk $BA.b		; 00 BA
	brk $55.b		; 00 55
	jsr $C02A.w		; 20 2A C0
	eor $80.b,X		; 55 80
	plb		; AB
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora $001E00.l		; 0F 00 1E 00
	jmp ($F800.w,X)		; 7C 00 F8
	brk $F1.b		; 00 F1
	brk $E3.b		; 00 E3
	brk $C7.b		; 00 C7
	ldx $C200.w		; AE 00 C2
	brk $74.b		; 00 74
	brk $DC.b		; 00 DC
	brk $38.b		; 00 38
	brk $90.b		; 00 90
	brk $A0.b		; 00 A0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	jmp $003C00.l		; 5C 00 3C 00
	sec		; 38
	brk $38.b		; 00 38
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	txa		; 8A
	bvs  21.b		; 70 15
	cpx #$2A.b		; E0 2A
	cpy #$55.b		; C0 55
	bra -86.b		; 80 AA
	ora ($55.b,X)		; 01 55
	cop $AB.b		; 02 AB
	tsb $56.b		; 04 56
	php		; 08
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F1.b		; 00 F1
	brk $E3.b		; 00 E3
	brk $C7.b		; 00 C7
	brk $8F.b		; 00 8F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	lda $18.b		; A5 18
	eor $5A30.w		; 4D 30 5A
	jsr $80B4.w		; 20 B4 80
	pei ($C0.b)		; D4 C0
	iny		; C8
	rti		; 40

	bcc  64.b		; 90 40
	rts		; 60

	bra   0.b		; 80 00
	ror $FE00.w,X		; 7E 00 FE
	brk $FC.b		; 00 FC
	bra  -8.b		; 80 F8
	rti		; 40

	sed		; F8
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	bra   0.b		; 80 00
	cpy $50CF.w		; CC CF 50
	asl $1C80.w,X		; 1E 80 1C
	jsr $4038.w		; 20 38 40
	bvs -128.b		; 70 80
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra  50.b		; 80 32
	brk $EC.b		; 00 EC
	brk $F8.b		; 00 F8
	brk $D0.b		; 00 D0
	brk $A0.b		; 00 A0
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $0E.b,S		; 03 0E
	brk $1F.b		; 00 1F
	brk $1A.b		; 00 1A
	ora $1D.b		; 05 1D
	inc A		; 1A
	and $00003C.l,X		; 3F 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $0E.b		; 00 0E
	brk $05.b		; 00 05
	brk $3A.b		; 00 3A
	clc		; 18
	adc $0737.w,X		; 7D 37 07
	adc $077C3F.l,X		; 7F 3F 7C 07
	ora $0D06.w		; 0D 06 0D
	tsb $0E.b		; 04 0E
	tsb $1C.b		; 04 1C
	php		; 08
	trb $0700.w		; 1C 00 07
	ora $043F1C.l		; 0F 1C 3F 04
	ora [$04.b]		; 07 04
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	php		; 08
	brk $00.b		; 00 00
	bcs -100.b		; B0 9C
	rts		; 60

	sec		; 38
	cpy #$70.b		; C0 70
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pla		; 68
	brk $D0.b		; 00 D0
	brk $A0.b		; 00 A0
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	ora ($0F.b,X)		; 01 0F
	asl $0D.b		; 06 0D
	tsb $1F.b		; 04 1F
	tsb $001C.w		; 0C 1C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $06.b		; 02 06
	tsb $06.b		; 04 06
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

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
	brk $D8.b		; 00 D8
	sbc $02FB91.l,X		; FF 91 FB 02
	ldx $1D.b,Y		; B6 1D
	tsb $2F.b		; 04 2F
	ora ($3A.b,X)		; 01 3A
	ora $6F.b		; 05 6F
	bpl  51.b		; 10 33
	pla		; 68
	inc $F826.w,X		; FE 26 F8
	pla		; 68
	lda ($B0.b),Y		; B1 B0
	ora $00.b,S		; 03 00
	cop $18.b		; 02 18
	ora ($14.b,X)		; 01 14
	brk $1A.b		; 00 1A
	brk $EC.b		; 00 EC
	ror $F670.w,X		; 7E 70 F6
	sed		; F8
	inx		; E8
	beq -48.b		; F0 D0
	cpx #$A0.b		; E0 A0
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	pea $F860.w		; F4 60 F8
	cpy #$F0.b		; C0 F0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b		; 05 00
	asl A		; 0A
	ora ($34.b,X)		; 01 34
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $7800B4.l		; 0F B4 00 78
	brk $A8.b		; 00 A8
	rti		; 40

	bvc -128.b		; 50 80
	ldy #$00.b		; A0 00
	rti		; 40

	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	sei		; 78
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $FFFF7F.l		; 0F 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $0000FF.l,X		; FF FF 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora ($7F.b,X)		; 01 7F
	ora $FFFFFF.l,X		; 1F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $07.b		; 00 07
	asl $FE7F.w		; 0E 7F FE
	sbc $FCFEFE.l,X		; FF FE FE FC
	inc $FEFC.w,X		; FE FC FE
	jsr ($FCFE.w,X)		; FC FE FC
	jsr ($0700.w,X)		; FC 00 07
	brk $7F.b		; 00 7F
	trb $FCFF.w		; 1C FF FC
	inc $FEFC.w,X		; FE FC FE
	sed		; F8
	inc $FEF8.w,X		; FE F8 FE
	sed		; F8
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($0F.b,X)		; 01 0F
	ora $0000FF.l,X		; 1F FF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $FF.b,S		; 03 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $FFFFFF.l		; 0F FF FF FF
	sbc $0000FF.l,X		; FF FF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora ($FF.b,X)		; 01 FF
	and $FFFFFF.l,X		; 3F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	plx		; FA
	sbc $F6FFFF.l,X		; FF FF FF F6
	sbc $DCFFFE.l,X		; FF FE FF DC
	sbc $B8FFBC.l,X		; FF BC FF B8
	sbc $E0FF78.l,X		; FF 78 FF E0
	beq -32.b		; F0 E0
	beq -32.b		; F0 E0
	beq -32.b		; F0 E0
	cpx #$C0.b		; E0 C0
	cpx #$C0.b		; E0 C0
	cpx #$C0.b		; E0 C0
	cpx #$C0.b		; E0 C0
	cpx #$E0.b		; E0 E0
	beq -64.b		; F0 C0
	beq -64.b		; F0 C0
	beq -64.b		; F0 C0
	cpx #$C0.b		; E0 C0
	cpx #$C0.b		; E0 C0
	cpx #$80.b		; E0 80
	cpx #$80.b		; E0 80
	cpx #$00.b		; E0 00
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
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	rti		; 40

	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$C0.b]		; 07 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	ora ($0F.b,X)		; 01 0F
	bit $FF.b		; 24 FF
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	jsr $0060.w		; 20 60 00
	sta $03.b,S		; 83 03
	ora $007F1F.l,X		; 1F 1F 7F 00
	ora $00FF00.l		; 0F 00 FF 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	rts		; 60

	brk $83.b		; 00 83
	brk $1F.b		; 00 1F
	ora [$7F.b]		; 07 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp ($FF.b,X)		; C1 FF
	phd		; 0B
	sbc $DDFF27.l,X		; FF 27 FF DD
	sbc $0FFFAF.l,X		; FF AF FF 0F
	sbc $8AFF77.l,X		; FF 77 FF 8A
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFD.l,X		; FF FD FF FE
	sbc $EBFFF7.l,X		; FF F7 FF EB
	sbc $AFFFDF.l,X		; FF DF FF AF
	sbc $BFFF5F.l,X		; FF 5F FF BF
	sbc $030000.l,X		; FF 00 00 03
	ora [$0C.b]		; 07 0C
	asl $1800.w,X		; 1E 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $1E.b		; 00 1E
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	jsr $0060.w		; 20 60 00
	brk $00.b		; 00 00
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	rts		; 60

	rts		; 60

	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $21.b		; 00 21
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $21.b		; 00 21
	brk $07.b		; 00 07
	bpl 127.b		; 10 7F
	brk $F0.b		; 00 F0
	brk $83.b		; 00 83
	ora ($0F.b,X)		; 01 0F
	asl $3F.b		; 06 3F
	bpl 127.b		; 10 7F
	rti		; 40

	sed		; F8
	brk $E3.b		; 00 E3
	brk $7F.b		; 00 7F
	brk $F0.b		; 00 F0
	brk $83.b		; 00 83
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sed		; F8
	jsr ($FCF8.w,X)		; FC F8 FC
	sed		; F8
	jsr ($F8F8.w,X)		; FC F8 F8
	beq  -8.b		; F0 F8
	beq  -8.b		; F0 F8
	beq  -8.b		; F0 F8
	beq -16.b		; F0 F0
	sed		; F8
	jsr ($FCF0.w,X)		; FC F0 FC
	beq  -4.b		; F0 FC
	beq  -8.b		; F0 F8
	beq  -8.b		; F0 F8
	cpx #$F8.b		; E0 F8
	cpx #$F8.b		; E0 F8
	cpx #$F0.b		; E0 F0
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $03.b		; 00 03
	ora $1F.b,S		; 03 1F
	ora $FF7F7F.l,X		; 1F 7F 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	bit $FF.b		; 24 FF
	brk $FF.b		; 00 FF
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	ora [$7F.b]		; 07 7F
	ora $FFFFFF.l,X		; 1F FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $02FFFF.l,X		; FF FF FF 02
	sbc $3EFF0F.l,X		; FF 0F FF 3E
	sbc $EFFFFB.l,X		; FF FB FF EF
	sbc $9FFFDF.l,X		; FF DF FF 9F
	sbc $F9FF7E.l,X		; FF 7E FF F9
	sbc $F1FFF9.l,X		; FF F9 FF F1
	xce		; FB
	sbc ($FB.b),Y		; F1 FB
	sbc ($FB.b),Y		; F1 FB
	sbc ($F3.b,X)		; E1 F3
	sbc ($F3.b,X)		; E1 F3
	cmp ($E3.b,X)		; C1 E3
	bvs  -1.b		; 70 FF
	beq  -1.b		; F0 FF
	sbc ($FB.b),Y		; F1 FB
	cpx #$FB.b		; E0 FB
	cpx #$FB.b		; E0 FB
	cmp ($F3.b,X)		; C1 F3
	cpy #$F3.b		; C0 F3
	cpy #$E3.b		; C0 E3
	cpy #$C0.b		; C0 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
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
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	ora ($3F.b)		; 12 3F
	brk $FE.b		; 00 FE
	brk $C0.b		; 00 C0
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	brk $FE.b		; 00 FE
	brk $C0.b		; 00 C0
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	ora $FF3F3F.l		; 0F 3F 3F FF
	cpx #$FF.b		; E0 FF
	brk $F0.b		; 00 F0
	brk $07.b		; 00 07
	ora $1F.b		; 05 1F
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	cop $3F.b		; 02 3F
	php		; 08
	sbc $00FF00.l,X		; FF 00 FF 00
	beq   0.b		; F0 00
	ora [$00.b]		; 07 00
	ora $FFFF7F.l,X		; 1F 7F FF FF
	sbc $03FFF8.l,X		; FF F8 FF 03
	sbc $3F7F0F.l,X		; FF 0F 7F 3F
	sbc $87FFF3.l,X		; FF F3 FF 87
	sbc $78FF1F.l,X		; FF 1F FF 78
	sbc $00FFC0.l,X		; FF C0 FF 00
	sbc $147F03.l,X		; FF 03 7F 14
	sbc $02FF00.l,X		; FF 00 FF 02
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $78FFB5.l,X		; FF B5 FF 78
	sbc $E9FFF5.l,X		; FF F5 FF E9
	sbc $37FF16.l,X		; FF 16 FF 37
	sbc $4DFFAE.l,X		; FF AE FF 4D
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F6FF7E.l,X		; FF 7E FF F6
	sbc $BAFF7C.l,X		; FF 7C FF BA
	sbc $54FF48.l,X		; FF 48 FF 54
	sbc $99FF49.l,X		; FF 49 FF 99
	sbc $000800.l,X		; FF 00 08 00
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
	php		; 08
	clc		; 18
	bmi 112.b		; 30 70
	brk $41.b		; 00 41
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $70.b		; 00 70
	brk $41.b		; 00 41
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $38.b		; 00 38
	brk $E0.b		; 00 E0
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cmp $0F0033.l,X		; DF 33 00 0F
	brk $38.b		; 00 38
	brk $E0.b		; 00 E0
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($33.b,X)		; 01 33
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	ora ($3E.b,X)		; 01 3E
	ora $70.b,S		; 03 70
	asl $C6.b		; 06 C6
	adc $FD7D.w,Y		; 79 7D FD
	jsr ($FFF8.w,X)		; FC F8 FF
	cop $01.b		; 02 01
	brk $07.b		; 00 07
	ora ($1E.b,X)		; 01 1E
	ora $F80130.l		; 0F 30 01 F8
	brk $FE.b		; 00 FE
	beq  -2.b		; F0 FE
	cpx #$FF.b		; E0 FF
	xce		; FB
	sbc $B3FFFB.l,X		; FF FB FF B3
	sbc $67FF37.l,X		; FF 37 FF 67
	sbc $47FF67.l,X		; FF 67 FF 47
	sbc $91EFC6.l,X		; FF C6 EF 91
	sbc $21FF11.l,X		; FF 11 FF 21
	sbc $23FF03.l,X		; FF 03 FF 23
	sbc $06FF02.l,X		; FF 02 FF 06
	sbc $C1EF04.l,X		; FF 04 EF C1
	sbc $C0.b,S		; E3 C0
	sbc $82.b,S		; E3 82
	cmp $80.b,S		; C3 80
	cmp $80.b,S		; C3 80
	dec $12.b		; C6 12
	stx $00.b,Y		; 96 00
	stx $00.b,Y		; 96 00
	rol $80.b		; 26 80
	sbc $80.b,S		; E3 80
	sbc $80.b,S		; E3 80
	cmp $00.b,S		; C3 00
	cmp $00.b,S		; C3 00
	dec $00.b		; C6 00
	stx $00.b,Y		; 96 00
	stx $00.b,Y		; 96 00
	rol $00.b		; 26 00
	sec		; 38
	jsr $0070.w		; 20 70 00
	bvs   0.b		; 70 00
	bvs  32.b		; 70 20
	adc ($00.b,X)		; 61 00
	rts		; 60

	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $61.b		; 00 61
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0020.w		; 20 20 00
	jsr $1800.w		; 20 00 18
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	sta ($E7.b,S),Y		; 93 E7
	adc [$8F.b]		; 67 8F
	dec $8C1F.w		; CE 1F 8C
	rol $FCD1.w,X		; 3E D1 FC
	jsl $F116F9.l		; 22 F9 16 F1
	and $18E3.w		; 2D E3 18
	sbc [$70.b]		; E7 70
	sta $C11FE0.l		; 8F E0 1F C1
	rol $3C03.w,X		; 3E 03 3C
	stx $79.b		; 86 79
	asl $1CE1.w		; 0E E1 1C
	cmp $FF.b,S		; C3 FF
	sbc $73FFBB.l,X		; FF BB FF 73
	sbc $47FF67.l,X		; FF 67 FF 47
	sbc $CCFFA6.l,X		; FF A6 FF CC
	sbc $19FF0C.l,X		; FF 0C FF 19
	sbc $20FF11.l,X		; FF 11 FF 20
	sbc $42FF00.l,X		; FF 00 FF 42
	sbc $24DF00.l,X		; FF 00 DF 24
	sta $009F40.l,X		; 9F 40 9F 00
	eor ($00.b,X)		; 41 00
	ora ($00.b,X)		; 01 00
	ora #$00.b		; 09 00
	ora $80.b,S		; 03 80
	.db $82, $00, $86		; 82 00 86
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $81.b		; 00 81
	brk $81.b		; 00 81
	brk $09.b		; 00 09
	brk $03.b		; 00 03
	brk $82.b		; 00 82
	brk $86.b		; 00 86
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $C4.b		; 00 C4
	brk $84.b		; 00 84
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	pha		; 48
	php		; 08
	clc		; 18
	brk $10.b		; 00 10
	brk $C4.b		; 00 C4
	brk $84.b		; 00 84
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $48.b		; 00 48
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	bpl  48.b		; 10 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	tsb $0F03.w		; 0C 03 0F
	brk $17.b		; 00 17
	brk $13.b		; 00 13
	bpl  26.b		; 10 1A
	jsr $001C.w		; 20 1C 00
	asl $00.b		; 06 00
	ora $00.b,S		; 03 00
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $0B.b		; 00 0B
	brk $1C.b		; 00 1C
	brk $2D.b		; 00 2D
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	ora ($E3.b,S),Y		; 13 E3
	cmp $067900.l		; CF 00 79 06
.ACCU 16
.INDEX 16
	rep #$3D		; C2 3D
	sbc $9600.w,X		; FD 00 96
	adc ($FF.b,X)		; 61 FF
	bpl  -1.b		; 10 FF
	jmp ($FF01.w,X)		; 7C 01 FF
	brk $F0.b		; 00 F0
	brk $8F.b		; 00 8F
	brk $7F.b		; 00 7F
	brk $0E.b		; 00 0E
	brk $69.b		; 00 69
	brk $10.b		; 00 10
	clc		; 18
	jmp ($FFFE.w,X)		; 7C FE FF
	sbc $7BFF.w,X		; FD FF 7B
	sbc $1F9F7F.l,X		; FF 7F 9F 1F
	sbc $DFC73F.l		; EF 3F C7 DF
	ora [$E3.b]		; 07 E3
	ora $DDFFDE.l		; 0F DE FF DD
	sbc $1FFF3B.l,X		; FF 3B FF 1F
	sta $05EF0F.l,X		; 9F 0F EF 05
	sbc [$02.b]		; E7 02
	adc $FC5F00.l		; 6F 00 5F FC
	beq -24.b		; F0 E8
	beq -48.b		; F0 D0
	cpx #$C0A0.w		; E0 A0 C0
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	beq -64.b		; F0 C0
	beq -128.b		; F0 80
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($48FF.w)		; 6C FF 48
	sbc $5B01.w,X		; FD 01 5B
	asl $1702.w		; 0E 02 17
	brk $1D.b		; 00 1D
	cop $37.b		; 02 37
	php		; 08
	ora $FF34.w,Y		; 19 34 FF
	sta ($FC.b,S),Y		; 93 FC
	ldy $58.b,X		; B4 58
	cli		; 58
	ora ($00.b,X)		; 01 00
	ora ($0C.b,X)		; 01 0C
	brk $0A.b		; 00 0A
	brk $0D.b		; 00 0D
	brk $76.b		; 00 76
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
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $001C.w		; 0C 1C 00
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stx $0EDF.w		; 8E DF 0E
	cmp $0CDE8C.l,X		; DF 8C DE 0C
	stz $BC08.w,X		; 9E 08 BC
	clc		; 18
	bit $3810.w,X		; 3C 10 38
	bpl  56.b		; 10 38
	brk $DF.b		; 00 DF
	tsb $DF.b		; 04 DF
	brk $DE.b		; 00 DE
	php		; 08
	stz $BC00.w,X		; 9E 00 BC
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $24.b		; 00 24
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	brk $24.b		; 00 24
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $40.b		; 00 40
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
	bit $A8A3.w		; 2C A3 A8
	lda [$80.b]		; A7 80
	lda [$A8.b]		; A7 A8
	ldx $BCB0.w		; AE B0 BC
	rti		; 40

	sei		; 78
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	trb $19C3.w		; 1C C3 19
	dec $98.b		; C6 98
	inc $90.b		; E6 90
	cpy $00.b		; C4 00
	cpy $8830.w		; CC 30 88
	rts		; 60

	bcc  64.b		; 90 40
	bcc   8.b		; 90 08
	sbc $BD10.w,X		; FD 10 BD
	bpl  57.b		; 10 39
	brk $79.b		; 00 79
	and ($73.b,X)		; 21 73
	brk $F3.b		; 00 F3
	rti		; 40

	sbc $00.b,S		; E3 00
	dec $80.b		; C6 80
	and $3D00.w,X		; 3D 00 3D
	brk $39.b		; 00 39
	brk $79.b		; 00 79
	brk $73.b		; 00 73
	brk $F3.b		; 00 F3
	brk $E3.b		; 00 E3
	brk $C6.b		; 00 C6
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	jsr $2030.w		; 20 30 20
	jsr $6000.w		; 20 00 60
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	rti		; 40

	rti		; 40

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	and $0F00.w,X		; 3D 00 0F
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora [$07.b]		; 07 07
	ora $1E3F0F.l,X		; 1F 0F 3F 1E
	adc $000000.l,X		; 7F 00 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	asl $1F.b		; 06 1F
	inc A		; 1A
	ora $293F14.l,X		; 1F 14 3F 29
	cmp [$07.b]		; C7 07
	sbc $07BF0F.l		; EF 0F BF 07
	eor [$83.b],Y		; 57 83
	sbc ($C5.b,S),Y		; F3 C5
	sbc #$F5F0.w		; E9 F0 F5
	sed		; F8
	xce		; FB
	jsr ($0F03.w,X)		; FC 03 0F
	ora [$DF.b]		; 07 DF
	ora [$67.b]		; 07 67
	sta $BB.b,S		; 83 BB
	cmp ($0D.b,X)		; C1 0D
	beq  22.b		; F0 16
	sed		; F8
	asl A		; 0A
	jsr ($3F45.w,X)		; FC 45 3F
	ror $BEBF.w,X		; 7E BF BE
	cmp $EFEFDE.l,X		; DF DE EF EF
	sbc ($F3.b,S),Y		; F3 F3
	jsr ($FCFD.w,X)		; FC FD FC
	sbc $1C7EF9.l,X		; FF F9 7E 1C
	inc $FE9C.w,X		; FE 9C FE
	dec $E7FE.w		; CE FE E7
	sbc $F8FFF2.l,X		; FF F2 FF F8
	sbc $60FFF0.l,X		; FF F0 FF 60
	ror $09F6.w,X		; 7E F6 09
	lsr $B1.b		; 46 B1
	ldx $AE50.w		; AE 50 AE
	bvc  -2.b		; 50 FE
	cpy #$85FA.w		; C0 FA 85
	phx		; DA
	ora $5A.b		; 05 5A
	tsb $00.b		; 04 00
	sta $B900.w,Y		; 99 00 B9
	brk $D5.b		; 00 D5
	brk $54.b		; 00 54
	brk $CC.b		; 00 CC
	brk $8D.b		; 00 8D
	brk $2D.b		; 00 2D
	brk $AC.b		; 00 AC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora $00000F.l		; 0F 0F 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora $07.b,S		; 03 07
	ora $0F.b,S		; 03 0F
	asl $1F.b		; 06 1F
	and $7C7B38.l,X		; 3F 38 7B 7C
	pea $E8F8.w		; F4 F8 E8
	beq -48.b		; F0 D0
	cpx #$C0A0.w		; E0 A0 C0
	rti		; 40

	bra -128.b		; 80 80
	brk $30.b		; 00 30
	ply		; 7A
	bmi  -4.b		; 30 FC
	rts		; 60

	sed		; F8
	cpy #$80F0.w		; C0 F0 80
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	asl $1F00.w		; 0E 00 1F
	brk $1A.b		; 00 1A
	ora $1D.b		; 05 1D
	inc A		; 1A
	and $00003C.l,X		; 3F 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $0E.b		; 00 0E
	brk $05.b		; 00 05
	brk $3A.b		; 00 3A
	clc		; 18
	adc $0000.w,X		; 7D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $01.b		; 00 01
	brk $01.b		; 00 01
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $FF3FFF.l,X		; 1F FF 3F FF
	sbc $C3FF.w,Y		; F9 FF C3
	sbc $0FFF07.l,X		; FF 07 FF 0F
	adc $63FF1D.l,X		; 7F 1D FF 63
	sbc $18FF06.l,X		; FF 06 FF 18
	sbc $01FF40.l,X		; FF 40 FF 01
	sbc $04FF03.l,X		; FF 03 FF 04
	ora $003F50.l,X		; 1F 50 3F 00
	sbc $9FFF5C.l,X		; FF 5C FF 9F
	lda $BF3F5F.l,X		; BF 5F 3F BF
	adc $BFFFBF.l,X		; 7F BF FF BF
	adc $9F7FBF.l,X		; 7F BF 7F 9F
	and $7F2B3F.l,X		; 3F 3F 2B 7F
	plp		; 28
	sbc $43FF20.l,X		; FF 20 FF 43
	adc $407F41.l,X		; 7F 41 7F 40
	adc $203FC0.l,X		; 7F C0 3F 20
	inc $FDFC.w,X		; FE FC FD
	inc $FEF9.w,X		; FE F9 FE
	sed		; F8
	jsr ($F9F1.w,X)		; FC F1 F9
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	cmp $FC.b		; C5 FC
	phb		; 8B
	sbc $21FC.w,Y		; F9 FC 21
	inc $FE22.w,X		; FE 22 FE
	lsr $FC.b		; 46 FC
	sta [$F8.b]		; 87 F8
	ora $F319F8.l		; 0F F8 19 F3
	bmi -26.b		; 30 E6
	rts		; 60

	sbc ($3C.b,S),Y		; F3 3C
	sbc [$18.b],Y		; F7 18
	jmp $FD13.w		; 4C 13 FD
	cop $E6.b		; 02 E6
	cld		; D8
	bit $E850.w		; 2C 50 E8
	bcc  24.b		; 90 18
	cpy #$00.b		; C0 00
	ldy $D800.w,X		; BC 00 D8
	brk $F3.b		; 00 F3
	brk $02.b		; 00 02
	bra -40.b		; 80 D8
	brk $D0.b		; 00 D0
	brk $10.b		; 00 10
	bra   0.b		; 80 00
	ply		; 7A
	tsb $EE.b		; 04 EE
	brk $FE.b		; 00 FE
	brk $3C.b		; 00 3C
	brk $18.b		; 00 18
	php		; 08
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $AC.b		; 00 AC
	brk $34.b		; 00 34
	brk $34.b		; 00 34
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cli		; 58
	dec $9CB0.w		; CE B0 9C
	rts		; 60

	sec		; 38
	cpy #$70.b		; C0 70
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bit $00.b,X		; 34 00
	pla		; 68
	brk $D0.b		; 00 D0
	brk $A0.b		; 00 A0
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $07.b		; 00 07
	ora $06.b,S		; 03 06
	cop $0F.b		; 02 0F
	asl $0E.b		; 06 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora $1F0E0F.l		; 0F 0F 0E 1F
	ora $3A1E.w,X		; 1D 1E 3A
	bit $0300.w,X		; 3C 00 03
	ora ($07.b,X)		; 01 07
	ora $07.b,S		; 03 07
	ora $0F.b,S		; 03 0F
	asl $1F.b		; 06 1F
	tsb $183F.w		; 0C 3F 18
	rol $7C10.w,X		; 3E 10 7C
	bit $38.b,X		; 34 38
	sei		; 78
	bvs -16.b		; 70 F0
	cpx #$D0.b		; E0 D0
	rti		; 40

	cpx #$40.b		; E0 40
	cpx #$40.b		; E0 40
	rti		; 40

	brk $00.b		; 00 00
	brk $20.b		; 00 20
	sei		; 78
	rts		; 60

	beq -32.b		; F0 E0
	cpx #$40.b		; E0 40
	rts		; 60

	rti		; 40

	rti		; 40

	brk $40.b		; 00 40
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $FE1E.w,X		; DD 1E FE
	jsr ($1CF2.w,X)		; FC F2 1C
	bit $18.b,X		; 34 18
	bit $10.b,X		; 34 10
	sec		; 38
	bpl 112.b		; 10 70
	jsr $0070.w		; 20 70 00
	trb $703E.w		; 1C 3E 70
	jsr ($1C10.w,X)		; FC 10 1C
	bpl  24.b		; 10 18
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	cop $03.b		; 02 03
	cop $86.b		; 02 86
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $86.b		; 00 86
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $3C00.w,X		; FE 00 3C
	ora ($5E.b,X)		; 01 5E
	bra -121.b		; 80 87
	sei		; 78
	sbc [$08.b],Y		; F7 08
	sbc $047D00.l,X		; FF 00 7D 04
	dec A		; 3A
	asl $00.b		; 06 00
	jsr ($F802.w,X)		; FC 02 F8
	ora $E0.b,S		; 03 E0
	ora $F8.b,S		; 03 F8
	ora $38.b,S		; 03 38
	ora $D8.b,S		; 03 D8
	ora $E0.b,S		; 03 E0
	ora $F0.b		; 05 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	cpy #$10.b		; C0 10
	cpx #$08.b		; E0 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	lda ($0C.b)		; B2 0C
	eor $B602.w		; 4D 02 B6
	ora ($F9.b,X)		; 01 F9
	brk $6E.b		; 00 6E
	brk $A9.b		; 00 A9
	brk $98.b		; 00 98
	brk $58.b		; 00 58
	brk $00.b		; 00 00
	adc $00BF00.l,X		; 7F 00 BF 00
	cmp $00E700.l		; CF 00 E7 00
	sbc ($00.b),Y		; F1 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bmi -128.b		; 30 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	bra -112.b		; 80 90
	rti		; 40

	jmp $AA20.w		; 4C 20 AA
	bpl  82.b		; 10 52
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $01.b		; 05 01
	asl A		; 0A
	cop $0E.b		; 02 0E
	ora $1E1F.w		; 0D 1F 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	tsb $1D.b		; 04 1D
	tsb $0B3E.w		; 0C 3E 0B
	and [$12.b]		; 27 12
	eor [$28.b]		; 47 28
	sta $A01F50.l		; 8F 50 1F A0
	and $B140.w,Y		; 39 40 B1
	ldy #$00.b		; A0 00
	rti		; 40

	brk $1F.b		; 00 1F
	tsb $3F.b		; 04 3F
	ora $77.b		; 05 77
	ora [$EB.b]		; 07 EB
	ora $51.b,S		; 03 51
	ora ($21.b,X)		; 01 21
	sta ($00.b,X)		; 81 00
	rti		; 40

	brk $80.b		; 00 80
	sbc $FFFEFF.l,X		; FF FF FE FF
	inc $FDFF.w,X		; FE FF FD
	sbc $B9FEF8.l,X		; FF F8 FE B9
	sbc $92FEB3.l,X		; FF B3 FE 92
	sbc $0CFF.w,X		; FD FF 0C
	sbc $20FE31.l,X		; FF 31 FE 20
	inc $FF02.w,X		; FE 02 FF
	asl $FC.b		; 06 FC
	mvp $4C,$FC		; 44 FC 4C
	jsr ($2B6C.w,X)		; FC 6C 2B
	cmp $1D.b,S		; C3 1D
	cpx $3A87.w		; EC 87 3A
	ora #$E7.b		; 09 E7
	clc		; 18
	eor $75.b,S		; 43 75
	dec $28.b		; C6 28
	stx $1C50.w		; 8E 50 1C
	cmp ($D7.b,X)		; C1 D7
	bit $2F.b		; 24 2F
	rep #$02		; C2 02
	trb $BC01.w		; 1C 01 BC
	ora ($3A.b,X)		; 01 3A
	brk $74.b		; 00 74
	brk $E8.b		; 00 E8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	brk $2E.b		; 00 2E
	bpl  89.b		; 10 59
	jsr $102C.w		; 20 2C 10
	trb $08.b		; 14 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	sbc $384600.l,X		; FF 00 46 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0F1E00.l,X		; 1F 00 1E 0F
	sbc ($0C.b,S),Y		; F3 0C
	sbc $33CEF0.l,X		; FF F0 CE 33
	lda $000000.l,X		; BF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	brk $F4.b		; 00 F4
	brk $3B.b		; 00 3B
	brk $40.b		; 00 40
	trb $1300.w		; 1C 00 13
	tsb $0CA3.w		; 0C A3 0C
	sbc [$08.b],Y		; F7 08
	adc $3BDC00.l,X		; 7F 00 DC 3B
	xce		; FB
	tsb $9C.b		; 04 9C
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	tsb $1F00.w		; 0C 00 1F
	brk $1E.b		; 00 1E
	brk $85.b		; 00 85
	brk $7B.b		; 00 7B
	brk $07.b		; 00 07
	brk $F3.b		; 00 F3
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora [$05.b]		; 07 05
	ora [$06.b]		; 07 06
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	ora $1F.b,S		; 03 1F
	ora $02.b,S		; 03 02
	ora $03.b,S		; 03 03
	ora [$05.b]		; 07 05
	ora [$06.b]		; 07 06
	ora $0A0F0A.l		; 0F 0A 0F 0A
	ora $0C0F09.l		; 0F 09 0F 0C
	brk $00.b		; 00 00
	sed		; F8
	brk $C8.b		; 00 C8
	bmi  24.b		; 30 18
	cpx #$78.b		; E0 78
	bra   4.b		; 80 04
	brk $C2.b		; 00 C2
	bit $E01E.w,X		; 3C 1E E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora $139F0F.l		; 0F 0F 9F 13
	sbc $02F762.l,X		; FF 62 F7 02
	asl $00.b		; 06 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	asl $0F.b		; 06 0F
	asl $121F.w		; 0E 1F 12
	adc $026262.l,X		; 7F 62 62 02
	cop $00.b		; 02 00
	brk $91.b		; 00 91
	ora [$F0.b]		; 07 F0
	ora $08.b,S		; 03 08
	adc $2F13.w,Y		; 79 13 2F
	ora $070900.l		; 0F 00 09 07
	asl $00.b		; 06 00
	ora ($00.b,X)		; 01 00
	asl A		; 0A
	rts		; 60

	ora $3600.w		; 0D 00 36
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	brk $70.b		; 00 70
	tsb $98.b		; 04 98
	.db $82, $4C, $C1		; 82 4C C1
	ora ($F1.b),Y		; 11 F1
	sbc [$9E.b]		; E7 9E
	adc $0EF001.l,X		; 7F 01 F0 0E
	sta $F800.w,X		; 9D 00 F8
	brk $7C.b		; 00 7C
	brk $BE.b		; 00 BE
	brk $6E.b		; 00 6E
	brk $18.b		; 00 18
	bra   0.b		; 80 00
	cmp ($00.b,X)		; C1 00
	sbc $587300.l		; EF 00 73 58
	brk $58.b		; 00 58
	brk $48.b		; 00 48
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2E.b		; 00 2E
	brk $16.b		; 00 16
	brk $11.b		; 00 11
	brk $09.b		; 00 09
	brk $09.b		; 00 09
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	trb $0C00.w		; 1C 00 0C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	rol $7B3F.w,X		; 3E 3F 7B
	jmp ($F0EC.w,X)		; 7C EC F0
	beq -64.b		; F0 C0
	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bpl 127.b		; 10 7F
	jsr $C0FC.w		; 20 FC C0
	beq -128.b		; F0 80
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	plx		; FA
	ora $020BF0.l		; 0F F0 0B 02
	trb $05.b		; 14 05
	ora $3E1A.w,X		; 1D 1A 3E
	bit $7E7D.w,X		; 3C 7D 7E
	ply		; 7A
	jmp ($F8FD.w,X)		; 7C FD F8
	sbc ($F0.b),Y		; F1 F0
	brk $06.b		; 00 06
	brk $0F.b		; 00 0F
	brk $3A.b		; 00 3A
	clc		; 18
	adc $FE38.w,X		; 7D 38 FE
	bvs  -4.b		; 70 FC
	ldy #$38.b		; A0 38
	rti		; 40

	bvs -128.b		; 70 80
	cpx #$80.b		; E0 80
	rti		; 40

	rti		; 40

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	brk $A0.b		; 00 A0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $12.b		; 00 12
	tsb $0E.b		; 04 0E
	brk $00.b		; 00 00
	ror $FF78.w,X		; 7E 78 FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sta $FFFFFF.l,X		; 9F FF FF FF
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	ror $FF7F.w,X		; 7E 7F FF
	sta [$FF.b]		; 87 FF
	sty $FF.b		; 84 FF
	bit $FF.b		; 24 FF
	stz $FF.b		; 64 FF
	php		; 08
	rol $2A10.w		; 2E 10 2A
	bpl -117.b		; 10 8B
	ora ($DB.b),Y		; 11 DB
	ora ($57.b,X)		; 01 57
	sta $97.b,S		; 83 97
	cmp $97.b,S		; C3 97
	cmp $B8.b,S		; C3 B8
	cpy #$00.b		; C0 00
	sbc $FD00.w,X		; FD 00 FD
	brk $7D.b		; 00 7D
	ora ($3D.b,X)		; 01 3D
	sta $BB.b,S		; 83 BB
	cmp $7B.b,S		; C3 7B
	cpy #$7B.b		; C0 7B
	cpy #$57.b		; C0 57
	tda		; 7B
	adc $FEFF.w,Y		; 79 FF FE
	and $DFDF3F.l,X		; 3F 3F DF DF
	sbc $F7F7EF.l		; EF EF F7 F7
	sbc [$F7.b],Y		; F7 F7
	sbc [$F7.b],Y		; F7 F7
	brk $FD.b		; 00 FD
	jmp ($1EFE.w,X)		; 7C FE 1E
	sbc $E7FFCE.l,X		; FF CE FF E7
	sbc $F6FFF7.l,X		; FF F7 FF F6
	sbc $F4FF70.l,X		; FF 70 FF F4
	cmp $CF.b,S		; C3 CF
	brk $7C.b		; 00 7C
	rti		; 40

	jmp ($BF43.w,X)		; 7C 43 BF
	ldy #$9F.b		; A0 9F
	ldy #$BB.b		; A0 BB
	bra 110.b		; 80 6E
	bra   0.b		; 80 00
	cmp $003F00.l		; CF 00 3F 00
	cmp $40.b,S		; C3 40
	cmp $00EF00.l,X		; DF 00 EF 00
	cpx #$00.b		; E0 00
	sbc [$00.b]		; E7 00
	sta $F8F4.w,Y		; 99 F4 F8
	inx		; E8
	beq -48.b		; F0 D0
	cpx #$A0.b		; E0 A0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	sed		; F8
	cpy #$F0.b		; C0 F0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $1700.w		; 6E 00 17
	brk $0B.b		; 00 0B
	brk $05.b		; 00 05
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0E00.w,X		; 1D 00 0E
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	and $3C7E0E.l,X		; 3F 0E 7E 3C
	dec $FE5C.w,X		; DE 5C FE
	trb $1C3D.w		; 1C 3D 1C
	ora $000202.l,X		; 1F 02 02 00
	cop $0F.b		; 02 0F
	tsb $0E.b		; 04 0E
	bit $583C.w,X		; 3C 3C 58
	jmp ($1C10.w,X)		; 7C 10 1C
	tsb $021E.w		; 0C 1E 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  96.b		; 80 60
	bra -48.b		; 80 D0
	rti		; 40

	tay		; A8
	bra  84.b		; 80 54
	jsr $708A.w		; 20 8A 70
	adc $18.b		; 65 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	rts		; 60

	bra -16.b		; 80 F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	stz $77.b,X		; 74 77
	lda ($B4.b,S),Y		; B3 B4
	bit $D3B3.w		; 2C B3 D3
	and $E3.b,S		; 23 E3
	trb $304C.w		; 1C 4C 30
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	jsr $00FF.w		; 20 FF 00
	jsr ($F300.w,X)		; FC 00 F3
	brk $2F.b		; 00 2F
	brk $1C.b		; 00 1C
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda [$00.b]		; A7 00
	lda [$00.b]		; A7 00
	cmp [$00.b],Y		; D7 00
	inc $C080.w,X		; FE 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lsr $5F00.w,X		; 5E 00 5F
	brk $2E.b		; 00 2E
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	trb $03.b		; 14 03
	ora ($06.b),Y		; 11 06
	clc		; 18
	asl $2A.b		; 06 2A
	tsb $23.b		; 04 23
	tsb $0C31.w		; 0C 31 0C
	and $08.b,X		; 35 08
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	adc $00.b		; 65 00
	eor $5200.w,X		; 5D 00 52
	php		; 08
	cmp ($08.b)		; D2 08
	cmp ($08.b)		; D2 08
	eor ($08.b)		; 52 08
	eor ($08.b)		; 52 08
	eor ($08.b)		; 52 08
	brk $9E.b		; 00 9E
	brk $BE.b		; 00 BE
	brk $BC.b		; 00 BC
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	phd		; 0B
	clc		; 18
	ora $180F18.l		; 0F 18 0F 18
	ora $180F18.l		; 0F 18 0F 18
	ora $180E18.l		; 0F 18 0E 18
	asl $0718.w		; 0E 18 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $90.b		; 00 90
	cpy $B0.b		; C4 B0
	cpy $B0.b		; C4 B0
	cpy $B0.b		; C4 B0
	cpy $B0.b		; C4 B0
	cpy $30.b		; C4 30
	cpy $38.b		; C4 38
	cpy $CC20.w		; CC 20 CC
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $B8.b		; 00 B8
	brk $B0.b		; 00 B0
	brk $B8.b		; 00 B8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($EE.b,X)		; 01 EE
	asl $37.b		; 06 37
	cmp ($57.b,X)		; C1 57
	bra -25.b		; 80 E7
	brk $CF.b		; 00 CF
	brk $6C.b		; 00 6C
	cop $BA.b		; 02 BA
	tsb $D9.b		; 04 D9
	tsb $00.b		; 04 00
	ora [$01.b],Y		; 17 01
	cmp #$00.b		; C9 00
	tax		; AA
	brk $1A.b		; 00 1A
	brk $36.b		; 00 36
	brk $B7.b		; 00 B7
	brk $6F.b		; 00 6F
	brk $6F.b		; 00 6F
	asl $2200.w,X		; 1E 00 22
	brk $3A.b		; 00 3A
	brk $32.b		; 00 32
	php		; 08
	jmp $106400.l		; 5C 00 64 10
	dey		; 88
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	tsb $1C00.w		; 0C 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	tsb $01.b		; 04 01
	tsb $01.b		; 04 01
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	bra -32.b		; 80 E0
	brk $30.b		; 00 30
	brk $CC.b		; 00 CC
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	bmi   0.b		; 30 00
	brk $68.b		; 00 68
	bvs -84.b		; 70 AC
	tay		; A8
	jmp.w [$7C50]		; DC 50 7C
	jsr $00AC.w		; 20 AC 00
	plx		; FA
	brk $FA.b		; 00 FA
	brk $4A.b		; 00 4A
	bcc  32.b		; 90 20
	beq -128.b		; F0 80
	sed		; F8
	bvc 112.b		; 50 70
	jsr $00A0.w		; 20 A0 00
	bne   0.b		; D0 00
	pei ($00.b)		; D4 00
	pei ($00.b)		; D4 00
	pea $904D.w		; F4 4D 90
	and $2D90.w		; 2D 90 2D
	bcc  42.b		; 90 2A
	bcc  -4.b		; 90 FC
	brk $F0.b		; 00 F0
	tsb $BCD8.w		; 0C D8 BC
	ldy #$E4.b		; A0 E4
	brk $F6.b		; 00 F6
	brk $F6.b		; 00 F6
	brk $F6.b		; 00 F6
	brk $F4.b		; 00 F4
	brk $B0.b		; 00 B0
	php		; 08
	brk $20.b		; 00 20
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	php		; 08
	.db $42, $18		; 42 18
	jmp $6410.w		; 4C 10 64
	bpl 100.b		; 10 64
	bpl -104.b		; 10 98
	jsr $2088.w		; 20 88 20
	dey		; 88
	jsr $1C00.w		; 20 00 1C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	mvn $54,$08		; 54 08 54
	php		; 08
	jmp $005C00.l		; 5C 00 5C 00
	bit $2C00.w		; 2C 00 2C
	brk $2C.b		; 00 2C
	brk $2C.b		; 00 2C
	brk $00.b		; 00 00
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	asl $0E18.w		; 0E 18 0E
	clc		; 18
	ora #$19.b		; 09 19
	asl $001F.w		; 0E 1F 00
	ora $3E330C.l,X		; 1F 0C 33 3E
	eor $3253.w		; 4D 53 32
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	ora ($00.b,X)		; 01 00
	ora $001300.l		; 0F 00 13 00
	tsb $000C.w		; 0C 0C 00
	rol $C860.w,X		; 3E 60 C8
	jsr $1088.w		; 20 88 10
	tya		; 98
	rts		; 60

	sed		; F8
	brk $F8.b		; 00 F8
	bmi -56.b		; 30 C8
	sed		; F8
	bmi -56.b		; 30 C8
	cpy #$30.b		; C0 30
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $10.b		; 00 10
	brk $70.b		; 00 70
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	bmi   0.b		; 30 00
	beq   3.b		; F0 03
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
	brk $3D.b		; 00 3D
	brk $35.b		; 00 35
	php		; 08
	nop		; EA
	ora ($3C.b),Y		; 11 3C
	ora $1F.b,S		; 03 1F
	jsr $3C0F.w		; 20 0F 3C
	php		; 08
	sec		; 38
	phd		; 0B
	sec		; 38
	brk $DF.b		; 00 DF
	brk $DF.b		; 00 DF
	brk $3F.b		; 00 3F
	brk $1B.b		; 00 1B
	brk $03.b		; 00 03
	bpl   0.b		; 10 00
	ora [$00.b],Y		; 17 00
	ora [$00.b],Y		; 17 00
	eor ($04.b,S),Y		; 53 04
	ply		; 7A
	ora $A8.b		; 05 A8
	ora $BA.b		; 05 BA
	ora ($52.b,X)		; 01 52
	ora #$70.b		; 09 70
	phd		; 0B
	jsr $345B.w		; 20 5B 34
	eor $00.b,S		; 43 00
	and $2D00.w		; 2D 00 2D
	brk $5F.b		; 00 5F
	brk $5F.b		; 00 5F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	nop		; EA
	brk $87.b		; 00 87
	plp		; 28
	sta $28.b		; 85 28
	sta $20.b,X		; 95 20
	sta ($24.b),Y		; 91 24
	.db $82, $34, $86		; 82 34 86
	bmi -118.b		; 30 8A
	bmi   0.b		; 30 00
	lda $FD00.w,X		; BD 00 FD
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora $02.b,X		; 15 02
	ora $02.b,X		; 15 02
	ora $02.b,X		; 15 02
	ora $02.b,X		; 15 02
	ora #$02.b		; 09 02
	ora #$02.b		; 09 02
	ora #$02.b		; 09 02
	ora #$02.b		; 09 02
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	php		; 08
	cop $08.b		; 02 08
	cop $09.b		; 02 09
	cop $09.b		; 02 09
	cop $0A.b		; 02 0A
	ora ($0C.b,X)		; 01 0C
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	bra  56.b		; 80 38
	rti		; 40

	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	brk $55.b		; 00 55
	php		; 08
	eor $08.b,X		; 55 08
	lsr A		; 4A
	bpl 106.b		; 10 6A
	bpl 106.b		; 10 6A
	bpl -86.b		; 10 AA
	bpl -108.b		; 10 94
	jsr $2094.w		; 20 94 20
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	and $0C.b,S		; 23 0C
	and $0C.b,S		; 23 0C
	and ($0C.b,X)		; 21 0C
	and ($0C.b,X)		; 21 0C
	and ($0C.b,X)		; 21 0C
	and ($0C.b,X)		; 21 0C
	and ($0C.b,X)		; 21 0C
	rol A		; 2A
	tsb $00.b		; 04 00
	asl $1E00.w,X		; 1E 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	cop $33.b		; 02 33
	asl $023F.w		; 0E 3F 02
	and $780F30.l,X		; 3F 30 0F 78
	and [$4C.b],Y		; 37 4C
	phd		; 0B
	ror $15.b		; 66 15
	ror A		; 6A
	bpl  28.b		; 10 1C
	brk $10.b		; 00 10
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $16.b		; 00 16
	bmi  10.b		; 30 0A
	sec		; 38
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	tsb $31.b		; 04 31
	cop $33.b		; 02 33
	asl $003F.w		; 0E 3F 00
	adc $1F7906.l,X		; 7F 06 79 1F
	ror $79.b		; 66 79
	clc		; 18
	adc $20.b		; 65 20
	asl $1C00.w,X		; 1E 00 1C
	brk $10.b		; 00 10
	brk $1E.b		; 00 1E
	brk $38.b		; 00 38
	brk $24.b		; 00 24
	asl $18.b		; 06 18
	asl $3E00.w,X		; 1E 00 3E
	asl $2A63.w		; 0E 63 2A
	adc $38.b,S		; 63 38
	adc $1C.b,S		; 63 1C
	eor [$1C.b]		; 47 1C
	eor [$10.b]		; 47 10
	lsr $10.b		; 46 10
	lsr $18.b		; 46 18
	dec $003D.w		; CE 3D 00
	ora $1E00.w,X		; 1D 00 1E
	brk $3A.b		; 00 3A
	brk $3A.b		; 00 3A
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $74.b		; 00 74
	brk $3C.b		; 00 3C
	sbc $38.b,S		; E3 38
.ACCU 8
.INDEX 8
	sep #$38		; E2 38
.ACCU 8
.INDEX 8
	sep #$38		; E2 38
.ACCU 8
.INDEX 8
	sep #$3C		; E2 3C
	inc $38.b		; E6 38
	inc $18.b		; E6 18
	dec $10.b		; C6 10
	cpy $5E.b		; C4 5E
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $5C.b		; 00 5C
	brk $58.b		; 00 58
	brk $5C.b		; 00 5C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $11.b		; 00 11
	tsb $1D.b		; 04 1D
	brk $1A.b		; 00 1A
	brk $22.b		; 00 22
	php		; 08
	dec A		; 3A
	brk $66.b		; 00 66
	bpl -88.b		; 10 A8
	rti		; 40

	beq   0.b		; F0 00
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6A.b		; 00 6A
	bpl 100.b		; 10 64
	bpl  84.b		; 10 54
	jsr $2088.w		; 20 88 20
	dey		; 88
	jsr $00E8.w		; 20 E8 00
	bcs  64.b		; B0 40
	bcc  64.b		; 90 40
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $60.b		; 00 60
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
	trb $2463.w		; 1C 63 24
	rtl		; 6B

	and [$64.b],Y		; 37 64
	rol $1D63.w,X		; 3E 63 1D
	eor ($1A.b,X)		; 41 1A
	eor $1A.b,S		; 43 1A
	eor $1A.b,S		; 43 1A
	cmp $20.b,S		; C3 20
	ora [$18.b]		; 07 18
	ora $18.b,S		; 03 18
	brk $1D.b		; 00 1D
	brk $3E.b		; 00 3E
	brk $3D.b		; 00 3D
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $8D.b		; 00 8D
	bmi -98.b		; 30 9E
	and ($F0.b,X)		; 21 F0
	ora $5862A0.l		; 0F A0 62 58
.INDEX 16
	rep #$5C		; C2 5C
	dec $5C.b		; C6 5C
	dec $78.b		; C6 78
	dec $00.b		; C6 00
	plx		; FA
	brk $F0.b		; 00 F0
	tsb $00.b		; 04 00
	jmp $003C00.l		; 5C 00 3C 00
	sec		; 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $57.b		; 00 57
	brk $7A.b		; 00 7A
	ora ($A2.b,X)		; 01 A2
	ora #$B2.b		; 09 B2
	ora #$40.b		; 09 40
	tas		; 1B
	stz $13.b		; 64 13
	bit $13.b		; 24 13
	bit $03.b,X		; 34 03
	brk $2D.b		; 00 2D
	brk $2F.b		; 00 2F
	brk $5F.b		; 00 5F
	brk $5F.b		; 00 5F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	inc $4A00.w		; EE 00 4A
	jsr $2847.w		; 20 47 28
	eor $28.b		; 45 28
	eor #$24.b		; 49 24
	eor ($24.b)		; 52 24
	.db $42, $34		; 42 34
	mvp $00,$32		; 44 32 00
	tda		; 7B
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora $1D31.w,X		; 1D 31 1D
	and ($1D.b),Y		; 31 1D
	and ($1C.b),Y		; 31 1C
	and ($1C.b),Y		; 31 1C
	and ($1C.b),Y		; 31 1C
	and ($1E.b),Y		; 31 1E
	and ($16.b,S),Y		; 33 16
	and ($0E.b,S),Y		; 33 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $2E.b		; 00 2E
	sbc $2E.b,S		; E3 2E
	sbc $2C.b,S		; E3 2C
	sbc $2C.b,S		; E3 2C
	sbc $28.b,S		; E3 28
.ACCU 8
	sep #$28		; E2 28
.ACCU 8
	sep #$2C		; E2 2C
	ror $0C.b		; 66 0C
	ror $1C.b		; 66 1C
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $22.b		; 00 22
	php		; 08
	dec A		; 3A
	brk $4A.b		; 00 4A
	bpl  68.b		; 10 44
	bpl  68.b		; 10 44
	bpl  84.b		; 10 54
	brk $58.b		; 00 58
	jsr $2048.w		; 20 48 20
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	cpy #$4040.w		; C0 40 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rts		; 60

	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $4A10.w		; 4D 10 4A
	bpl  74.b		; 10 4A
	bpl 106.b		; 10 6A
	bpl -102.b		; 10 9A
	jsr $2094.w		; 20 94 20
	sty $20.b,X		; 94 20
	sty $20.b,X		; 94 20
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	eor ($0C.b),Y		; 51 0C
	eor ($0C.b),Y		; 51 0C
	eor ($0C.b),Y		; 51 0C
	eor ($0C.b)		; 52 0C
	eor ($0C.b)		; 52 0C
	eor ($0C.b)		; 52 0C
	rol A		; 2A
	tsb $2A.b		; 04 2A
	tsb $00.b		; 04 00
	rol $3E00.w,X		; 3E 00 3E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	mvn $54,$08		; 54 08 54
	php		; 08
	mvn $54,$08		; 54 08 54
	php		; 08
	bit $08.b		; 24 08
	bit $08.b		; 24 08
	bit $08.b		; 24 08
	jsl $380008.l		; 22 08 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	jsl $082208.l		; 22 08 22 08
	jsl $082508.l		; 22 08 25 08
	and #$04.b		; 29 04
	bmi   6.b		; 30 06
	tsb $0301.w		; 0C 01 03
	brk $00.b		; 00 00
	trb $1C00.w		; 1C 00 1C
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$E000.w		; E0 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $15.b		; 00 15
	brk $15.b		; 00 15
	brk $16.b		; 00 16
	brk $22.b		; 00 22
	php		; 08
	dec A		; 3A
	brk $66.b		; 00 66
	bpl -88.b		; 10 A8
	rti		; 40

	beq   0.b		; F0 00
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $0E23.w		; 1C 23 0E
	and ($13.b),Y		; 31 13
	bmi  29.b		; 30 1D
	and ($1D.b),Y		; 31 1D
	and ($1D.b),Y		; 31 1D
	and ($1D.b),Y		; 31 1D
	and ($1D.b),Y		; 31 1D
	and ($00.b),Y		; 31 00
	ora [$00.b]		; 07 00
	ora $0C.b,S		; 03 0C
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $4F.b		; 00 4F
	bmi  78.b		; 30 4E
	and ($FC.b),Y		; 31 FC
	ora $2EE322.l		; 0F 22 E3 2E
	sbc $2E.b,S		; E3 2E
	sbc $2E.b,S		; E3 2E
	sbc $2E.b,S		; E3 2E
	sbc $00.b,S		; E3 00
	inc $00.b,X		; F6 00
	beq   2.b		; F0 02
	brk $9C.b		; 00 9C
	brk $9C.b		; 00 9C
	brk $9C.b		; 00 9C
	brk $9C.b		; 00 9C
	brk $1C.b		; 00 1C
	brk $1A.b		; 00 1A
	tsa		; 3B
	asl $063F.w,X		; 1E 3F 06
	and $780F30.l,X		; 3F 30 0F 78
	and [$4C.b],Y		; 37 4C
	phd		; 0B
	lsr $15.b		; 46 15
	eor #$12.b		; 49 12
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	clc		; 18
	brk $0E.b		; 00 0E
	brk $16.b		; 00 16
	bmi  10.b		; 30 0A
	sec		; 38
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	tsb $66.b		; 04 66
	trb $107E.w		; 1C 7E 10
	ror $7806.w,X		; 7E 06 78
	ora $1976.w		; 0D 76 19
	pla		; 68
	and $50.b,X		; 35 50
	adc ($2C.b,X)		; 61 2C
	sec		; 38
	brk $20.b		; 00 20
	brk $2C.b		; 00 2C
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	asl $28.b		; 06 28
	asl $1E10.w		; 0E 10 1E
	brk $3E.b		; 00 3E
	and [$10.b],Y		; 37 10
	and $370F00.l,X		; 3F 00 0F 37
	asl $0F37.w,X		; 1E 37 0F
	and [$0C.b]		; 27 0C
	and [$1F.b]		; 27 1F
	jsr $6314.w		; 20 14 63
	brk $1D.b		; 00 1D
	brk $00.b		; 00 00
	bpl   7.b		; 10 07
	brk $07.b		; 00 07
	bpl   7.b		; 10 07
	bpl   7.b		; 10 07
	bpl   0.b		; 10 00
	sec		; 38
	ora $6F.b,S		; 03 6F
	ldy #$30EF.w		; A0 EF 30
	adc [$8F.b],Y		; 77 8F
	plb		; AB
	and [$57.b]		; 27 57
	lda $7F07A9.l		; AF A9 07 7F
	ldy #$8748.w		; A0 48 87
	bpl -121.b		; 10 87
	bpl   0.b		; 10 00
	brk $8F.b		; 00 8F
	brk $FF.b		; 00 FF
	brk $AF.b		; 00 AF
	brk $57.b		; 00 57
	brk $A0.b		; 00 A0
	brk $B7.b		; 00 B7
	brk $0F.b		; 00 0F
	ora [$1F.b]		; 07 1F
	ora $7F3F3F.l,X		; 1F 3F 3F 7F
	and $FF7F7F.l,X		; 3F 7F 7F FF
	ror $74FF.w,X		; 7E FF 74
	sbc $1F0F0F.l,X		; FF 0F 0F 1F
	clc		; 18
	and $517F20.l,X		; 3F 20 7F 51
	adc $80FF76.l,X		; 7F 76 FF 80
	sbc $8BFF81.l,X		; FF 81 FF 8B
	brk $80.b		; 00 80
	bra  -8.b		; 80 F8
	cpx #$FCFC.w		; E0 FC FC
	inc $FE9C.w,X		; FE 9C FE
	tsb $08FE.w		; 0C FE 08
	jsr ($FC40.w,X)		; FC 40 FC
	bra -128.b		; 80 80
	sed		; F8
	sei		; 78
	jsr ($FE9C.w,X)		; FC 9C FE
	cop $FE.b		; 02 FE
	.db $62, $FE, $F2		; 62 FE F2
	jsr ($ACB4.w,X)		; FC B4 AC
	sty $6430.w		; 8C 30 64
	bne   4.b		; D0 04
	pha		; 48
	cpy $5CD0.w		; CC D0 5C
	stz $7440.w		; 9C 40 74
	brk $78.b		; 00 78
	bmi -72.b		; 30 B8
	bpl  24.b		; 10 18
	bra  24.b		; 80 18
	jsr $E010.w		; 20 10 E0
	php		; 08
	rts		; 60

	brk $60.b		; 00 60
	brk $88.b		; 00 88
	brk $B0.b		; 00 B0
	brk $D0.b		; 00 D0
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	clv		; B8
	bvc -24.b		; 50 E8
	jsr $5880.w		; 20 80 58
	bcc  88.b		; 90 58
	ldy #$9028.w		; A0 28 90
	jmp $4C98.w		; 4C 98 4C
	tya		; 98
	jmp $5000.w		; 4C 00 50
	jsr $1030.w		; 20 30 10
	rts		; 60

	brk $60.b		; 00 60
	bpl  64.b		; 10 40
	sec		; 38
	brk $30.b		; 00 30
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	adc ($15.b,X)		; 61 15
	rti		; 40

	and $65.b		; 25 65
	asl $7470.w,X		; 1E 70 74
	cop $5B.b		; 02 5B
	ora ($2D.b),Y		; 11 2D
	brk $1D.b		; 00 1D
	brk $18.b		; 00 18
	ora $30.b		; 05 30
	asl A		; 0A
	bpl  15.b		; 10 0F
	jsr $0003.w		; 20 03 00
	phd		; 0B
	brk $35.b		; 00 35
	brk $12.b		; 00 12
	brk $03.b		; 00 03
	lda $7A.b,X		; B5 7A
	plx		; FA
	jsr ($FEFC.w,X)		; FC FC FE
	sbc $F9FC.w,X		; FD FC F9
	plx		; FA
	ror $74.b,X		; 76 74
	lda $DDA8.w		; AD A8 DD
	bvc   0.b		; 50 00
	ply		; 7A
	brk $FD.b		; 00 FD
	sed		; F8
	sbc $70FF78.l,X		; FF 78 FF 70
	inc $FD20.w,X		; FE 20 FD
	brk $FA.b		; 00 FA
	bvc 114.b		; 50 72
	adc ($FF.b,X)		; 61 FF
	brk $FD.b		; 00 FD
	cop $F5.b		; 02 F5
	adc $1094.w		; 6D 94 10
	jmp ($0F35.w)		; 6C 35 0F
	cmp ($03.b)		; D2 03
	ldx $FE11.w		; AE 11 FE
	stz $F4F6.w,X		; 9E F6 F4
	sbc $808BE0.l		; EF E0 8B 80
	adc [$60.b]		; 67 60
	cop $00.b		; 02 00
	ora $28.b		; 05 28
	brk $76.b		; 00 76
	iny		; C8
	bmi -64.b		; 30 C0
	sec		; 38
	cpx #$D0A8.w		; E0 A8 D0
	clc		; 18
	ldy #$C030.w		; A0 30 C0
	beq -100.b		; F0 9C
	rts		; 60

	txa		; 8A
	tsb $00.b		; 04 00
	brk $30.b		; 00 30
	bra -112.b		; 80 90
	bra -96.b		; 80 A0
	rti		; 40

	cpy #$2000.w		; C0 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $0E.b,X		; 74 0E
	inc $6E06.w		; EE 06 6E
	ora $311170.l		; 0F 70 11 31
	asl $083F.w		; 0E 3F 08
	and $1F3F00.l,X		; 3F 00 3F 1F
	rts		; 60

	ror $1F.b		; 66 1F
	jsr $101F.w		; 20 1F 10
	brk $0E.b		; 00 0E
	brk $11.b		; 00 11
	brk $17.b		; 00 17
	brk $1E.b		; 00 1E
	brk $20.b		; 00 20
	brk $0B.b		; 00 0B
	inc $0E.b,X		; F6 0E
	adc ($0E.b),Y		; 71 0E
	adc $00BF08.l,X		; 7F 08 BF 00
	lda $3DB00F.l,X		; BF 0F B0 3D
	asl $1021.w		; 0E 21 10
	bvs   6.b		; 70 06
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	asl $00.b,X		; 16 00
	asl $1000.w,X		; 1E 00 10
	brk $00.b		; 00 00
	asl $1E00.w		; 0E 00 1E
	dec A		; 3A
	brk $3C.b		; 00 3C
	brk $34.b		; 00 34
	brk $44.b		; 00 44
	bpl 100.b		; 10 64
	bpl 122.b		; 10 7A
	brk $37.b		; 00 37
	php		; 08
	ora $1C0000.l,X		; 1F 00 00 1C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	and $08.b		; 25 08
	and $08.b,X		; 35 08
	dec A		; 3A
	brk $4A.b		; 00 4A
	bpl 100.b		; 10 64
	bpl 116.b		; 10 74
	brk $48.b		; 00 48
	jsr $00A8.w		; 20 A8 00
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	cli		; 58
	brk $54.b		; 00 54
	brk $5C.b		; 00 5C
	brk $4C.b		; 00 4C
	bpl  38.b		; 10 26
	php		; 08
	ora [$00.b],Y		; 17 00
	ora $000000.l,X		; 1F 00 00 00
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	tsb $01.b		; 04 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	rol A		; 2A
	brk $2A.b		; 00 2A
	brk $2A.b		; 00 2A
	brk $22.b		; 00 22
	brk $22.b		; 00 22
	brk $12.b		; 00 12
	brk $16.b		; 00 16
	brk $16.b		; 00 16
	brk $00.b		; 00 00
	trb $1C00.w		; 1C 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $E21E.w,X		; 7D 1E E2
	rts		; 60

	trb $00.b		; 14 00
	ldy $40.b,X		; B4 40
	tay		; A8
	rti		; 40

	plp		; 28
	cpy #$8050.w		; C0 50 80
	bvc -128.b		; 50 80
	clc		; 18
	asl $7C00.w,X		; 1E 00 7C
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	and #$04.b		; 29 04
	and #$04.b		; 29 04
	and #$04.b		; 29 04
	and $2D00.w		; 2D 00 2D
	brk $15.b		; 00 15
	brk $15.b		; 00 15
	brk $15.b		; 00 15
	brk $00.b		; 00 00
	asl $1E00.w,X		; 1E 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	ora $08.b,S		; 03 08
	ora $0C.b		; 05 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0D.b,X)		; 01 0D
	asl $0F.b		; 06 0F
	ora $1C.b,S		; 03 1C
	ora $0C1C13.l		; 0F 13 1C 0C
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	ora ($00.b,X)		; 01 00
	tsb $0300.w		; 0C 00 03
	ora $04.b,S		; 03 04
	ora $004000.l		; 0F 00 40 00
	rti		; 40

	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	cpy #$C000.w		; C0 00 C0
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -124.b		; 80 84
	adc ($94.b,S),Y		; 73 94
	adc $9C.b,S		; 63 9C
	adc $FF.b,S		; 63 FF
	brk $67.b		; 00 67
	sed		; F8
	.db $42, $C3		; 42 C3
	jmp $C11CC1.l		; 5C C1 1C C1
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F7.b		; 00 F7
	brk $07.b		; 00 07
	bcc   0.b		; 90 00
	ldy $3E00.w,X		; BC 00 3E
	brk $7F.b		; 00 7F
	brk $E0.b		; 00 E0
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	rti		; 40

	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	and $0C2408.l,X		; 3F 08 24 0C
	and ($0C.b,X)		; 21 0C
	and $0E.b,S		; 23 0E
	jsl $073906.l		; 22 06 39 07
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $08.b		; 00 08
	ora $10.b,S		; 03 10
	ora [$10.b]		; 07 10
	ora $10.b		; 05 10
	ora ($18.b,X)		; 01 18
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	ldx $6E4D.w,Y		; BE 4D 6E
	cmp $5D1E.w,X		; DD 1E 5D
	tas		; 1B
	jmp $7F3CDB.l		; 5C DB 3C 7F
	dec A		; 3A
	sbc $3AFD38.l,X		; FF 38 FD 3A
	brk $4D.b		; 00 4D
	php		; 08
	eor $3D88.w,X		; 5D 88 3D
	tya		; 98
	bit $3C98.w,X		; 3C 98 3C
	tya		; 98
	dec A		; 3A
	clc		; 18
	dec A		; 3A
	bpl  58.b		; 10 3A
	ora #$02.b		; 09 02
	php		; 08
	cop $0C.b		; 02 0C
	cop $0D.b		; 02 0D
	cop $0D.b		; 02 0D
	cop $0B.b		; 02 0B
	tsb $1B.b		; 04 1B
	tsb $29.b		; 04 29
	tsb $00.b		; 04 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $1E00.w		; 0E 00 1E
	rts		; 60

	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$E0C0.w		; C0 C0 E0
	beq -32.b		; F0 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	rti		; 40

	cpx #$F040.w		; E0 40 F0
	rti		; 40

	cpx #$E070.w		; E0 70 E0
	bvs -64.b		; 70 C0
	beq   0.b		; F0 00
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpx #$C000.w		; E0 00 C0
	brk $20.b		; 00 20
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	eor $2938.w,X		; 5D 38 29
	bpl  18.b		; 10 12
	brk $25.b		; 00 25
	brk $25.b		; 00 25
	brk $4B.b		; 00 4B
	brk $4B.b		; 00 4B
	brk $37.b		; 00 37
	brk $00.b		; 00 00
	dec A		; 3A
	brk $16.b		; 00 16
	brk $0D.b		; 00 0D
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $37.b		; 00 37
	brk $37.b		; 00 37
	brk $0F.b		; 00 0F
	ror $FF05.w,X		; 7E 05 FF
	cop $E7.b		; 02 E7
	bpl -91.b		; 10 A5
	ora ($45.b)		; 12 45
	and ($45.b)		; 32 45
	and ($45.b)		; 32 45
	and ($05.b)		; 32 05
	adc ($04.b)		; 72 04
	cmp [$00.b],Y		; D7 00
	lda ($00.b)		; B2 00
	lda $FE00.w,X		; BD 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	cpy #$C000.w		; C0 00 C0
	brk $A0.b		; 00 A0
	brk $D0.b		; 00 D0
	brk $D0.b		; 00 D0
	brk $D0.b		; 00 D0
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	asl $00.b,X		; 16 00
	ora $000700.l,X		; 1F 00 07 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $06.b		; 00 06
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bpl  42.b		; 10 2A
	tsb $51.b		; 04 51
	tsb $0855.w		; 0C 55 08
	eor $18.b,S		; 43 18
	adc $18.b,S		; 63 18
	ror A		; 6A
	bpl -122.b		; 10 86
	bmi   0.b		; 30 00
	ora $001F00.l,X		; 1F 00 1F 00
	rol $3E00.w,X		; 3E 00 3E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
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
	rol $2FE1.w,X		; 3E E1 2F
	sbc ($0F.b,X)		; E1 0F
	adc ($16.b,X)		; 61 16
	bvs   6.b		; 70 06
	bmi   7.b		; 30 07
	bmi  11.b		; 30 0B
	clc		; 18
	ora $18.b,S		; 03 18
	eor $005E00.l,X		; 5F 00 5E 00
	rol $2F00.w,X		; 3E 00 2F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	trb $0E03.w		; 1C 03 0E
	ora #$0B.b		; 09 0B
	tsb $0E09.w		; 0C 09 0E
	ora #$0E.b		; 09 0E
	phd		; 0B
	tsb $001F.w		; 0C 1F 00
	rol $18.b		; 26 18
	ora ($00.b,X)		; 01 00
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $1D.b		; 00 1D
	cmp [$3A.b],Y		; D7 3A
	sbc $877E16.l		; EF 16 7E 87
	adc $7F3F8F.l,X		; 7F 8F 3F 7F
	asl $720F.w		; 0E 0F 72
	sbc ($F8.b)		; F2 F8
	ora $3A00.w		; 0D 00 3A
	asl $56.b		; 06 56
	stx $27.b		; 86 27
	asl $0E0F.w		; 0E 0F 0E
	sbc $30FF06.l,X		; FF 06 FF 30
	sbc $290F08.l,X		; FF 08 0F 29
	tsb $2A.b		; 04 2A
	tsb $2A.b		; 04 2A
	tsb $1A.b		; 04 1A
	tsb $1A.b		; 04 1A
	tsb $1B.b		; 04 1B
	tsb $1E.b		; 04 1E
	brk $16.b		; 00 16
	brk $00.b		; 00 00
	asl $1D00.w,X		; 1E 00 1D
	brk $1D.b		; 00 1D
	brk $0D.b		; 00 0D
	brk $0D.b		; 00 0D
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $88.b		; 00 88
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $3F1F1F.l		; 0F 1F 1F 3F
	ora $7F373F.l,X		; 1F 3F 37 7F
	rol $7F.b,X		; 36 7F
	ror $FD.b		; 66 FD
	ora [$07.b]		; 07 07
	ora $181F08.l		; 0F 08 1F 18
	and $203F2D.l,X		; 3F 2D 3F 20
	adc $497F48.l,X		; 7F 48 7F 49
	sbc $0098.w,X		; FD 98 00
	cpy #$F8C0.w		; C0 C0 F8
	sed		; F8
	jsr ($FEFC.w,X)		; FC FC FE
	dec $86FF.w		; CE FF 86
	sbc $F0FF14.l,X		; FF 14 FF F0
	rol $C0C0.w,X		; 3E C0 C0
	sed		; F8
	sec		; 38
	jsr ($FE24.w,X)		; FC 24 FE
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	and ($EF.b),Y		; 31 EF
	adc #$ABEF.w		; 69 EF AB
	asl $1906.w		; 0E 06 19
	tsb $0D.b		; 04 0D
	brk $0F.b		; 00 0F
	brk $05.b		; 00 05
	asl $1901.w		; 0E 01 19
	php		; 08
	clc		; 18
	asl $10.b		; 06 10
	asl $0010.w		; 0E 10 00
	ora $000700.l		; 0F 00 07 00
	ora ($02.b,X)		; 01 02
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $10.b		; 00 10
	cmp $CC11.w		; CD 11 CC
	ora ($CC.b,S),Y		; 13 CC
	sta ($4C.b,S),Y		; 93 4C
	sbc $8203.w,X		; FD 03 82
	inc $E682.w		; EE 82 E6
	bra -58.b		; 80 C6
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	cop $00.b		; 02 00
	eor $00.b		; 45 00
	eor ($00.b,X)		; 41 00
	ora $00.b,S		; 03 00
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	and $311C.w,X		; 3D 1C 31
	trb $1D3F.w		; 1C 3F 1D
	and $031F1D.l		; 2F 1D 1F 03
	tsb $03.b		; 04 03
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	tsb $001F.w		; 0C 1F 00
	asl $1D01.w,X		; 1E 01 1D
	ora ($1D.b,X)		; 01 1D
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	tay		; A8
	and [$CD.b],Y		; 37 CD
	adc ($4B.b)		; 72 4B
	lda $F3.b,X		; B5 F3
	ora $FB.b,S		; 03 FB
	phb		; 8B
	xce		; FB
	wai		; CB
	tyx		; BB
	cmp $79.b,S		; C3 79
	sta $D0.b		; 85 D0
	ora [$20.b]		; 07 20
	cop $20.b		; 02 20
	sta $01.b		; 85 01
	eor $818F81.l		; 4F 81 8F 81
	cmp $00C701.l		; CF 01 C7 00
	sta [$91.b]		; 87 91
	asl $F5FA.w		; 0E FA F5
	sbc $FEFDF8.l,X		; FF F8 FD FE
	sbc $FDFE.w,X		; FD FE FD
	inc $FCFB.w,X		; FE FB FC
	sbc ($F3.b)		; F2 F3
	brk $6E.b		; 00 6E
	rts		; 60

	sbc $F0.b,X		; F5 F0
	sbc $FEF8.w,Y		; F9 F8 FE
	beq  -2.b		; F0 FE
	beq  -2.b		; F0 FE
	beq  -4.b		; F0 FC
	cpx #$00FF.w		; E0 FF 00
	jmp $6020.w		; 4C 20 60
	stz $865C.w,X		; 9E 5C 86
	jmp $9B9C9F.l		; 5C 9F 9C 9B
	stz $823D.w		; 9C 3D 82
	sbc ($0E.b),Y		; F1 0E
	sei		; 78
	bra  64.b		; 80 40
	stz $3C18.w		; 9C 18 3C
	brk $3C.b		; 00 3C
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $C2.b		; 00 C2
	brk $0E.b		; 00 0E
	asl $2063.w		; 0E 63 20
	adc $3C.b,S		; 63 3C
	ror $FE00.w,X		; 7E 00 FE
	bvs -116.b		; 70 8C
	sed		; F8
	stz $8C.b,X		; 74 8C
	dey		; 88
	pha		; 48
	jsr $003C.w		; 20 3C 00
	asl $0000.w,X		; 1E 00 00
	brk $7C.b		; 00 7C
	brk $08.b		; 00 08
	brk $30.b		; 00 30
	bvs   0.b		; 70 00
	sed		; F8
	brk $F0.b		; 00 F0
	sty $20.b,X		; 94 20
	stz $10.b		; 64 10
	jmp $3C10.w		; 4C 10 3C
	brk $22.b		; 00 22
	php		; 08
	inc A		; 1A
	brk $11.b		; 00 11
	tsb $15.b		; 04 15
	brk $00.b		; 00 00
	sei		; 78
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	ora ($00.b),Y		; 11 00
	ora $286F10.l,X		; 1F 10 6F 28
	adc $671E17.l		; 6F 17 1E 67
	ora $C36C57.l,X		; 1F 57 6C C3
	pld		; 2B
	sty $00.b		; 84 00
	ora $203710.l		; 0F 10 37 20
	sec		; 38
	brk $17.b		; 00 17
	jsr $2007.w		; 20 07 20
	ora [$30.b]		; 07 30
	ora $70.b,S		; 03 70
	tsb $7C.b		; 04 7C
	bra 107.b		; 80 6B
	ldy $CF.b		; A4 CF
	jsr $8F77.w		; 20 77 8F
	plb		; AB
	and [$57.b]		; 27 57
	lda $7F07A8.l		; AF A8 07 7F
	ldy #$B700.w		; A0 00 B7
	bpl -121.b		; 10 87
	bmi   0.b		; 30 00
	brk $8F.b		; 00 8F
	brk $FF.b		; 00 FF
	brk $AF.b		; 00 AF
	brk $57.b		; 00 57
	brk $A0.b		; 00 A0
	jsr $E000.w		; 20 00 E0
	jsr $50D8.w		; 20 D8 50
	cld		; D8
	jsr $58B0.w		; 20 B0 58
	cpx #$D82C.w		; E0 2C D8
	tsb $A470.w		; 0C 70 A4
	brk $C0.b		; 00 C0
	jsr $10B0.w		; 20 B0 10
	bvs   0.b		; 70 00
	jsr $4000.w		; 20 00 40
	clc		; 18
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	bra  13.b		; 80 0D
	brk $11.b		; 00 11
	tsb $1D.b		; 04 1D
	brk $23.b		; 00 23
	php		; 08
	rol A		; 2A
	bpl  68.b		; 10 44
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $0E00.w		; 0E 00 0E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$2000.w		; A0 00 20
	bra -64.b		; 80 C0
	jsr $6080.w		; 20 80 60
	rti		; 40

	bvs  32.b		; 70 20
	bmi -64.b		; 30 C0
	bpl -64.b		; 10 C0
	bpl   0.b		; 10 00
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	rti		; 40

	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	clc		; 18
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	rts		; 60

	php		; 08
	rts		; 60

	tsb $0C70.w		; 0C 70 0C
	clv		; B8
	sty $8430.w		; 8C 30 84
	beq   0.b		; F0 00
	cpx #$E000.w		; E0 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	brk $45.b		; 00 45
	sed		; F8
	phd		; 0B
	pea $1069.w		; F4 69 10
	and $4C.b,X		; 35 4C
	bpl  44.b		; 10 2C
	ora $0F.b,X		; 15 0F
	dec A		; 3A
	ora [$E5.b]		; 07 E5
	ora ($F2.b,X)		; 01 F2
	bcs -22.b		; B0 EA
	cpx #$000F.w		; E0 0F 00
	eor $40.b,S		; 43 40
	and [$20.b]		; 27 20
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	cop $18.b		; 02 18
	bvc  62.b		; 50 3E
	inx		; E8
	ldy $90.b,X		; B4 90
	tya		; 98
	cpx #$9008.w		; E0 08 90
	sei		; 78
	ldy #$00B0.w		; A0 B0 00
	cpx #$807C.w		; E0 7C 80
	asl $86.b		; 06 86
	trb $84.b		; 14 84
	ldy #$F0C0.w		; A0 C0 F0
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $0E.b		; 00 0E
	bmi  31.b		; 30 1F
	and ($1F.b),Y		; 31 1F
	and ($0C.b),Y		; 31 0C
	and ($0C.b,X)		; 21 0C
	adc ($1C.b,X)		; 61 1C
	adc ($3A.b,X)		; 61 3A
	adc $18.b,S		; 63 18
	eor $1F.b,S		; 43 1F
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	dec $01.b		; C6 01
	cmp $01.b,S		; C3 01
	sta $00.b,S		; 83 00
	sta $00.b,S		; 83 00
	sta $00.b,S		; 83 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($83.b,X)		; 01 83
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
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
	brk $F6.b		; 00 F6
	jsl $2B012B.l		; 22 2B 01 2B
	brk $2F.b		; 00 2F
	brk $51.b		; 00 51
	tsb $59.b		; 04 59
	tsb $60.b		; 04 60
	ora $0932.w		; 0D 32 09
	brk $2B.b		; 00 2B
	ora ($15.b,X)		; 01 15
	brk $14.b		; 00 14
	brk $15.b		; 00 15
	brk $2F.b		; 00 2F
	brk $2F.b		; 00 2F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	sbc $505FEC.l		; EF EC 5F 50
	lda $A0.b,X		; B5 A0
	sbc $50.b		; E5 50
	adc $94.b,S		; 63 94
	jsl $922494.l		; 22 94 24 92
	and #$4892.w		; 29 92 48
	jsr ($F110.w,X)		; FC 10 F1
	ldy #$40EE.w		; A0 EE 40
	lsr $BE00.w,X		; 5E 00 BE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	inc $7060.w,X		; FE 60 70
	jsr $2050.w		; 20 50 20
	ldy #$A000.w		; A0 00 A0
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	rts		; 60

	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	ora $11312E.l,X		; 1F 2E 31 11
	eor #$7504.w		; 49 04 75
	php		; 08
	ldx #$AA18.w		; A2 18 AA
	bpl -52.b		; 10 CC
	bmi  84.b		; 30 54
	jsr $0E06.w		; 20 06 0E
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	tax		; AA
	bpl 106.b		; 10 6A
	bpl  70.b		; 10 46
	clc		; 18
	rol $08.b,X		; 36 08
	and $08.b		; 25 08
	ora $1304.w,Y		; 19 04 13
	tsb $0F.b		; 04 0F
	brk $00.b		; 00 00
	jmp ($3C00.w,X)		; 7C 00 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	ora $2802.w,X		; 1D 02 28
	asl $2A.b		; 06 2A
	tsb $33.b		; 04 33
	tsb $0855.w		; 0C 55 08
	lsr $08.b,X		; 56 08
	.db $62, $18, $6C		; 62 18 6C
	bpl   0.b		; 10 00
	ora $001F00.l		; 0F 00 1F 00
	ora $001E00.l,X		; 1F 00 1E 00
	rol $3C00.w,X		; 3E 00 3C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	cli		; 58
	brk $44.b		; 00 44
	bpl  92.b		; 10 5C
	brk $42.b		; 00 42
	php		; 08
	dec A		; 3A
	tsb $11.b		; 04 11
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	sec		; 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $01.b		; 06 01
	ora $1A02.w		; 0D 02 1A
	tsb $35.b		; 04 35
	php		; 08
	rtl		; 6B

	bpl -45.b		; 10 D3
	jsr $2095.w		; 20 95 20
	lda $00.b		; A5 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	lda $00.b,X		; B5 00
	adc [$00.b]		; 67 00
	dec $AD01.w		; CE 01 AD
	cop $AA.b		; 02 AA
	tsb $2D.b		; 04 2D
	brk $49.b		; 00 49
	brk $5B.b		; 00 5B
	brk $00.b		; 00 00
	iny		; C8
	brk $99.b		; 00 99
	brk $33.b		; 00 33
	brk $77.b		; 00 77
	brk $77.b		; 00 77
	brk $F6.b		; 00 F6
	brk $F6.b		; 00 F6
	brk $ED.b		; 00 ED
	tax		; AA
	mvp $80,$5A		; 44 5A 80
	lda ($00.b,S),Y		; B3 00
	adc [$00.b]		; 67 00
	dec $00.b,X		; D6 00
	pei ($00.b)		; D4 00
	sty $00.b,X		; 94 00
	ldy $00.b		; A4 00
	brk $F5.b		; 00 F5
	brk $E5.b		; 00 E5
	brk $CC.b		; 00 CC
	brk $98.b		; 00 98
	brk $39.b		; 00 39
	brk $3B.b		; 00 3B
	brk $7B.b		; 00 7B
	brk $7B.b		; 00 7B
	bvc   0.b		; 50 00
	cpx #$A000.w		; E0 00 A0
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	ldy #$4000.w		; A0 00 40
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $083C00.l		; 0F 00 3C 08
	adc [$34.b],Y		; 77 34
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0B.b		; 00 0B
	trb $3D.b		; 14 3D
	ora $F0.b		; 05 F0
	and $42A6D2.l		; 2F D2 A6 42
	cmp [$30.b],Y		; D7 30
	eor ($31.b)		; 52 31
.ACCU 16
	rep #$2E		; C2 2E
	sed		; F8
	ora $D850B6.l		; 0F B6 50 D8
	cmp ($A8.b)		; D2 A8
	.db $82, $3E, $03		; 82 3E 03
	ora $000F00.l		; 0F 00 0F 00
	ora $0100.w,X		; 1D 00 01
	bcs   0.b		; B0 00
	cmp #$D06D.w		; C9 6D D0
	tsx		; BA
	cpy $5F.b		; C4 5F
	adc $93.b,X		; 75 93
	and $B9C77B.l,X		; 3F 7B C7 B9
	cmp [$71.b]		; C7 71
	dey		; 88
	adc $121000.l,X		; 7F 00 10 12
	rti		; 40

	ora $80.b		; 05 80
	ora $C1.b,X		; 15 C1
	ora $000F80.l,X		; 1F 80 0F 00
	ora $000F00.l		; 0F 00 0F 00
	jmp.w [$00ED]		; DC ED 00
	sed		; F8
	brk $DD.b		; 00 DD
	brk $39.b		; 00 39
	rti		; 40

	cmp $E0.b,X		; D5 E0
	and $1C.b,S		; 23 1C
	rts		; 60

	bcc  74.b		; 90 4A
	brk $00.b		; 00 00
	adc ($00.b)		; 72 00
	and [$00.b]		; 27 00
	.db $62, $00, $E6		; 62 00 E6
	brk $EE.b		; 00 EE
	brk $FE.b		; 00 FE
	brk $DE.b		; 00 DE
	brk $BC.b		; 00 BC
	sbc $1CE300.l,X		; FF 00 E3 1C
	sbc $84FE.w,Y		; F9 FE 84
	sta [$BA.b]		; 87 BA
	sta $5C.b,S		; 83 5C
	cmp ($2F.b,X)		; C1 2F
	sbc ($2E.b,X)		; E1 2E
	cpx #$A000.w		; E0 00 A0
	php		; 08
	brk $04.b		; 00 04
	brk $7A.b		; 00 7A
	brk $7C.b		; 00 7C
	brk $BF.b		; 00 BF
	brk $5E.b		; 00 5E
	brk $5F.b		; 00 5F
	brk $F7.b		; 00 F7
	php		; 08
	adc $00FB80.l,X		; 7F 80 FB 00
	adc $4200.w,X		; 7D 00 42
	bit $BE5D.w,X		; 3C 5D BE
	rol $179F.w		; 2E 9F 17
	cmp $003C00.l		; CF 00 3C 00
	bne   0.b		; D0 00
	tsb $00.b		; 04 00
	inc $FF00.w,X		; FE 00 FF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	bra  63.b		; 80 3F
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $2000.w		; 20 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	ora $1C.b		; 05 1C
	ror $F908.w,X		; 7E 08 F9
	and ($B4.b,X)		; 21 B4
	eor $FC.b,S		; 43 FC
	and ($B8.b)		; 32 B8
	jmp ($0000.w,X)		; 7C 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $70.b		; 06 70
	cop $48.b		; 02 48
	brk $30.b		; 00 30
	bpl 126.b		; 10 7E
	bit $03.b,X		; 34 03
	ora $070000.l		; 0F 00 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
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
	bcs   0.b		; B0 00
	beq   0.b		; F0 00
	pha		; 48
	brk $68.b		; 00 68
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $20.b		; 00 20
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $4E00.w		; 6E 00 4E
	brk $8C.b		; 00 8C
	brk $9C.b		; 00 9C
	brk $5C.b		; 00 5C
	brk $2C.b		; 00 2C
	brk $2E.b		; 00 2E
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	ora $3900.w,Y		; 19 00 39
	brk $7B.b		; 00 7B
	brk $7B.b		; 00 7B
	brk $3B.b		; 00 3B
	brk $1B.b		; 00 1B
	brk $19.b		; 00 19
	brk $09.b		; 00 09
	adc #$6900.w		; 69 00 69
	brk $49.b		; 00 49
	brk $29.b		; 00 29
	brk $29.b		; 00 29
	brk $19.b		; 00 19
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $53.b		; 00 53
	brk $54.b		; 00 54
	brk $56.b		; 00 56
	brk $56.b		; 00 56
	brk $76.b		; 00 76
	brk $75.b		; 00 75
	brk $6D.b		; 00 6D
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	sbc $EB00.w		; ED 00 EB
	brk $E9.b		; 00 E9
	brk $E9.b		; 00 E9
	brk $C9.b		; 00 C9
	brk $C8.b		; 00 C8
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	tay		; A8
	brk $A8.b		; 00 A8
	brk $A8.b		; 00 A8
	brk $A8.b		; 00 A8
	brk $A8.b		; 00 A8
	brk $B8.b		; 00 B8
	brk $B9.b		; 00 B9
	brk $B9.b		; 00 B9
	brk $00.b		; 00 00
	adc [$00.b],Y		; 77 00
	adc [$00.b],Y		; 77 00
	adc [$00.b],Y		; 77 00
	adc [$00.b],Y		; 77 00
	adc [$00.b],Y		; 77 00
	adc [$00.b]		; 67 00
	ror $00.b		; 66 00
	ror $40.b		; 66 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	brk $7B.b		; 00 7B
	phx		; DA
	tda		; 7B
	rol A		; 2A
	sta $560A.w,Y		; 99 0A 56
	adc #$E71B.w		; 69 1B E7
	adc ($97.b,S),Y		; 73 97
	eor ($27.b,S),Y		; 53 27
	adc $0A1B.w,Y		; 79 1B 0A
	asl $0EC8.w,X		; 1E C8 0E
	cpx #$A00E.w		; E0 0E A0
	ora #$0781.w		; 09 81 07
	ora ($3F.b,X)		; 01 3F
	ora ($2F.b,X)		; 01 2F
	brk $1F.b		; 00 1F
	eor $00FE28.l,X		; 5F 28 FE 00
	sta $BDBAB0.l		; 8F B0 BA BD
	lda ($BA.b,S),Y		; B3 BA
	lda $FEBA.w,X		; BD BA FE
	ora ($87.b,X)		; 01 87
	sei		; 78
	brk $E2.b		; 00 E2
	brk $03.b		; 00 03
	brk $FA.b		; 00 FA
	bra  -3.b		; 80 FD
	bra  -2.b		; 80 FE
	bra  -6.b		; 80 FA
	brk $71.b		; 00 71
	brk $78.b		; 00 78
	stp		; DB
	jsr $10AF.w		; 20 AF 10
	sbc $984700.l,X		; FF 00 47 98
	cmp $D99E.w,X		; DD 9E D9
	sta $9D5E.w,X		; 9D 5E 9D
	sbc $EC0000.l,X		; FF 00 00 EC
	brk $75.b		; 00 75
	brk $01.b		; 00 01
	brk $BD.b		; 00 BD
	brk $BE.b		; 00 BE
	brk $BF.b		; 00 BF
	brk $BD.b		; 00 BD
	brk $B8.b		; 00 B8
	bit $00.b,X		; 34 00
	bcs   0.b		; B0 00
	pla		; 68
	brk $E4.b		; 00 E4
	brk $2C.b		; 00 2C
	cpy #$40FE.w		; C0 FE 40
	nop		; EA
	mvn $C4,$3A		; 54 3A C4
	brk $C8.b		; 00 C8
	brk $40.b		; 00 40
	brk $90.b		; 00 90
	brk $18.b		; 00 18
	brk $D0.b		; 00 D0
	brk $4C.b		; 00 4C
	brk $54.b		; 00 54
	brk $D4.b		; 00 D4
	ora [$F0.b],Y		; 17 F0
	phd		; 0B
	sed		; F8
	ora [$FC.b]		; 07 FC
	ora ($7C.b,X)		; 01 7C
	ora $7E.b,S		; 03 7E
	brk $7E.b		; 00 7E
	cop $7E.b		; 02 7E
	ora $002F60.l,X		; 1F 60 2F 00
	eor [$00.b],Y		; 57 00
	pld		; 2B
	brk $37.b		; 00 37
	brk $39.b		; 00 39
	brk $1B.b		; 00 1B
	brk $15.b		; 00 15
	brk $00.b		; 00 00
	brk $97.b		; 00 97
	cmp $D5670B.l		; CF 0B 67 D5
	adc $8B.b,S		; 63 8B
	and ($E4.b),Y		; 31 E4
	and ($C3.b),Y		; 31 C3
	bpl  98.b		; 10 62
	bvs -59.b		; 70 C5
	beq   0.b		; F0 00
	and $801FC0.l,X		; 3F C0 1F 80
	ora $C007E0.l		; 0F E0 07 C0
	phd		; 0B
	cpx #$800D.w		; E0 0D 80
	ora $0B20.w		; 0D 20 0B
	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -22.b		; 80 EA
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $B8.b		; 00 B8
	brk $90.b		; 00 90
	brk $C8.b		; 00 C8
	brk $68.b		; 00 68
	brk $D4.b		; 00 D4
	jsr $1400.w		; 20 00 14
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $B0.b		; 00 B0
	brk $B8.b		; 00 B8
	bit $90.b		; 24 90
	nop		; EA
	bcc -110.b		; 90 92
	iny		; C8
	sbc $C8.b,X		; F5 C8
	cmp #$FAE4.w		; C9 E4 FA
	cpx $68.b		; E4 68
	inc $39.b,X		; F6 39
	dec $00.b		; C6 00
	cld		; D8
	brk $DC.b		; 00 DC
	brk $EC.b		; 00 EC
	brk $EE.b		; 00 EE
	brk $F6.b		; 00 F6
	brk $F7.b		; 00 F7
	brk $F7.b		; 00 F7
	brk $F7.b		; 00 F7
	sep #$00		; E2 00
	.db $62, $00, $72		; 62 00 72
	brk $F2.b		; 00 F2
	brk $9A.b		; 00 9A
	brk $D9.b		; 00 D9
	brk $7D.b		; 00 7D
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	jmp.w [$DC00]		; DC 00 DC
	brk $CC.b		; 00 CC
	brk $4C.b		; 00 4C
	brk $64.b		; 00 64
	brk $26.b		; 00 26
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	sed		; F8
	sei		; 78
	clv		; B8
	sei		; 78
	jmp $1E2C3C.l		; 5C 3C 2C 1E
	asl $0F.b,X		; 16 0F
	ora $070F07.l		; 0F 07 0F 07
	asl $3007.w		; 0E 07 30
	jmp ($7C18.w,X)		; 7C 18 7C
	php		; 08
	rol $1F04.w,X		; 3E 04 1F
	brk $0F.b		; 00 0F
	cop $07.b		; 02 07
	ora $07.b,S		; 03 07
	cop $07.b		; 02 07
	sbc $077B10.l,X		; FF 10 7B 07
	tad		; 5B
	and [$9B.b]		; 27 9B
	adc $78.b,S		; 63 78
	tsb $2F.b		; 04 2F
	cmp $BB.b,S		; C3 BB
	rts		; 60

	txs		; 9A
	ldy #$1310.w		; A0 10 13
	ora ($27.b,X)		; 01 27
	ora ($37.b,X)		; 01 37
	brk $77.b		; 00 77
	brk $AF.b		; 00 AF
	ora ($D3.b,X)		; 01 D3
	brk $E4.b		; 00 E4
	brk $E5.b		; 00 E5
	sbc $F56A.w,X		; FD 6A F5
	sta ($FB.b)		; 92 FB
	sbc $FBF1.w,Y		; F9 F1 FB
	pea $33F0.w		; F4 F0 33
	bit $C7.b,X		; 34 C7
	dec $E3.b,X		; D6 E3
	rol $00.b		; 26 00
	ror A		; 6A
	bcc -102.b		; 90 9A
	beq  -3.b		; F0 FD
	cpx #$60FF.w		; E0 FF 60
	xce		; FB
	brk $FC.b		; 00 FC
	cpy #$00FE.w		; C0 FE 00
	rol $7887.w,X		; 3E 87 78
	inc $FA35.w,X		; FE 35 FA
	cmp #$FCFD.w		; C9 FD FC
	adc $9B7D.w,Y		; 79 7D 9B
	sta $AA69.w,Y		; 99 69 AA
	adc $6B.b,S		; 63 6B
	brk $78.b		; 00 78
	brk $B5.b		; 00 B5
	iny		; C8
	cmp $FEF8.w		; CD F8 FE
	bvs  -1.b		; 70 FF
	bcc  -3.b		; 90 FD
	jsr $00BE.w		; 20 BE 00
	sbc $F400FC.l,X		; FF FC 00 F4
	brk $B8.b		; 00 B8
	rti		; 40

	clv		; B8
	bra -112.b		; 80 90
	cpy #$0000.w		; C0 00 00
	cpy #$B440.w		; C0 40 B4
	mvn $98,$00		; 54 00 98
	brk $08.b		; 00 08
	brk $50.b		; 00 50
	brk $D0.b		; 00 D0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	rti		; 40

	jmp ($5F10.w,X)		; 7C 10 5F
	ora ($00.b,S),Y		; 13 00
	and $00.b,S		; 23 00
	and [$00.b]		; 27 00
	ora [$00.b],Y		; 17 00
	phd		; 0B
	brk $0B.b		; 00 0B
	brk $0F.b		; 00 0F
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	asl $1E00.w		; 0E 00 1E
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	and $1E.b,X		; 35 1E
	tas		; 1B
	tsb $000D.w		; 0C 0D 00
	asl $00.b		; 06 00
	phd		; 0B
	brk $0B.b		; 00 0B
	brk $0D.b		; 00 0D
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	asl $0C00.w,X		; 1E 00 0C
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	ldx $2500.w,Y		; BE 00 25
	bpl  71.b		; 10 47
	bpl -30.b		; 10 E2
	bpl -23.b		; 10 E9
	ora ($6A.b)		; 12 6A
	ora ($A6.b),Y		; 11 A6
	ora $18A7.w,Y		; 19 A7 18
	brk $55.b		; 00 55
	brk $DE.b		; 00 DE
	brk $BE.b		; 00 BE
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $7B.b		; 00 7B
	brk $7B.b		; 00 7B
	ldy $4B.b,X		; B4 4B
	jmp ($F703.w,X)		; 7C 03 F7
	php		; 08
	sbc ($08.b,S),Y		; F3 08
	lda #$F400.w		; A9 00 F4
	ora ($5B.b,X)		; 01 5B
	bra 127.b		; 80 7F
	bra   0.b		; 80 00
	phk		; 4B
	brk $83.b		; 00 83
	brk $88.b		; 00 88
	brk $4F.b		; 00 4F
	brk $57.b		; 00 57
	brk $AB.b		; 00 AB
	brk $B5.b		; 00 B5
	brk $C1.b		; 00 C1
	dec $8C.b		; C6 8C
	phx		; DA
	and $B6.b		; 25 B6
	ora ($FB.b,X)		; 01 FB
	brk $7B.b		; 00 7B
	brk $D5.b		; 00 D5
	brk $7B.b		; 00 7B
	bra  45.b		; 80 2D
	cpy #$BD80.w		; C0 80 BD
	brk $25.b		; 00 25
	brk $49.b		; 00 49
	brk $44.b		; 00 44
	brk $A4.b		; 00 A4
	brk $AA.b		; 00 AA
	brk $D4.b		; 00 D4
	brk $DA.b		; 00 DA
	jmp.w [$60C4]		; DC C4 60
	cpy $847E.w		; CC 7E 84
	jsr ($3800.w,X)		; FC 00 38
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	inc $40.b,X		; F6 40
	dec $9C00.w,X		; DE 00 9C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	asl A		; 0A
	ora ($14.b,X)		; 01 14
	ora $19.b,S		; 03 19
	asl $2A.b		; 06 2A
	tsb $35.b		; 04 35
	php		; 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	jmp ($07FB.w,X)		; 7C FB 07
	tsb $95.b		; 04 95
	rts		; 60

	phy		; 5A
	bra -91.b		; 80 A5
	brk $4A.b		; 00 4A
	and ($AC.b,X)		; 21 AC
	eor $55.b,S		; 43 55
	.db $82, $32, $F8		; 82 32 F8
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $E1.b		; 00 E1
	brk $C3.b		; 00 C3
	brk $87.b		; 00 87
	rti		; 40

	ora [$00.b]		; 07 00
	sta $BE00FF.l		; 8F FF 00 BE
	jmp ($0203.w,X)		; 7C 03 02
	dex		; CA
	bmi  47.b		; 30 2F
	cpy #$805C.w		; C0 5C 80
	lda $5300.w,Y		; B9 00 53
	brk $00.b		; 00 00
	ora $18.b,S		; 03 18
	adc $FE00.w,X		; 7D 00 FE
	brk $FD.b		; 00 FD
	brk $F3.b		; 00 F3
	brk $EF.b		; 00 EF
	brk $CE.b		; 00 CE
	brk $AC.b		; 00 AC
	stz $00.b		; 64 00
	cpy $00.b		; C4 00
	tay		; A8
	cpy #$2010.w		; C0 10 20
	jsr $C000.w		; 20 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clv		; B8
	brk $38.b		; 00 38
	brk $D0.b		; 00 D0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	ora [$1F.b]		; 07 1F
	ora $7F053F.l,X		; 1F 3F 05 7F
	trb $107F.w		; 1C 7F 10
	adc $030101.l,X		; 7F 01 01 03
	cop $07.b		; 02 07
	ora [$1F.b]		; 07 1F
	ora $203F.w,Y		; 19 3F 20
	adc $637F7A.l,X		; 7F 7A 7F 63
	adc $F0006F.l,X		; 7F 6F 00 F0
	beq  -1.b		; F0 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc ($FF.b,S),Y		; F3 FF
	cpy #$00FF.w		; C0 FF 00
	sbc $F0CF3C.l,X		; FF 3C CF F0
	beq  -1.b		; F0 FF
	ora $FF18FF.l		; 0F FF 18 FF
	rts		; 60

	sbc $3BFB0C.l,X		; FF 0C FB 3B
	sbc $81C3EB.l,X		; FF EB C3 81
	brk $00.b		; 00 00
	sei		; 78
	bra   7.b		; 80 07
	bra  12.b		; 80 0C
	sty $F0B0.w		; 8C B0 F0
	stx $C0.b		; 86 C0
	ora $C035C0.l,X		; 1F C0 35 C0
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra  -8.b		; 80 F8
	sty $F0FF.w		; 8C FF F0
	adc $C079C0.l,X		; 7F C0 79 C0
	cpx #$CAC0.w		; E0 C0 CA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$7C00.w		; C0 00 7C
	brk $44.b		; 00 44
	brk $04.b		; 00 04
	brk $80.b		; 00 80
	brk $D8.b		; 00 D8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	clv		; B8
	brk $F8.b		; 00 F8
	brk $7E.b		; 00 7E
	brk $26.b		; 00 26
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	sei		; 78
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $78FFFC.l,X		; FF FC FF 78
	sbc $00FF60.l,X		; FF 60 FF 00
	brk $78.b		; 00 78
	sei		; 78
	sbc $82FF87.l,X		; FF 87 FF 82
	sbc $03FFDC.l,X		; FF DC FF 03
	inc $FF86.w,X		; FE 86 FF
	txs		; 9A
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora $06.b,S		; 03 06
	ora ($04.b,X)		; 01 04
	cop $0C.b		; 02 0C
	tsb $0C.b		; 04 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	dec $2F50.w,X		; DE 50 2F
	tay		; A8
	adc [$50.b],Y		; 77 50
	sty $2B.b,X		; 94 2B
	eor $6B1B63.l,X		; 5F 63 1B 6B
	txy		; 9B
	stp		; DB
	trb $F7.b		; 14 F7
	bvc 119.b		; 50 77
	ldy #$807B.w		; A0 7B 80
	clc		; 18
	cpx #$A00B.w		; E0 0B A0
	ora $C0.b,S		; 03 C0
	ora $803F08.l		; 0F 08 3F 80
	and $1D1827.l,X		; 3F 27 18 1D
	brk $0A.b		; 00 0A
	brk $0F.b		; 00 0F
	brk $16.b		; 00 16
	ora ($1D.b,X)		; 01 1D
	cop $1E.b		; 02 1E
	ora ($1E.b,X)		; 01 1E
	ora ($00.b,X)		; 01 00
	clc		; 18
	brk $0A.b		; 00 0A
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $0B.b		; 00 0B
	brk $0A.b		; 00 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $6F00.w,X		; 7D 00 6F
	bpl -82.b		; 10 AE
	bpl  73.b		; 10 49
	sta ($E2.b)		; 92 E2
	ora $01FC.w,Y		; 19 FC 01
	adc ($FC.b,S),Y		; 73 FC
	sty $87.b,X		; 94 87
	brk $D2.b		; 00 D2
	brk $D4.b		; 00 D4
	brk $D5.b		; 00 D5
	brk $B6.b		; 00 B6
	brk $BF.b		; 00 BF
	brk $03.b		; 00 03
	sty $7A00.w		; 8C 00 7A
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$E0C0.w		; E0 C0 E0
	cpx #$61F0.w		; E0 F0 61
	beq  33.b		; F0 21
	beq   2.b		; F0 02
	beq -126.b		; F0 82
	rts		; 60

	bra -128.b		; 80 80
	cpx #$E060.w		; E0 60 E0
	jsr $10F0.w		; 20 F0 10
	beq -112.b		; F0 90
	beq -48.b		; F0 D0
	beq 113.b		; F0 71
	rts		; 60

	adc ($00.b,X)		; 61 00
	brk $3C.b		; 00 3C
	brk $43.b		; 00 43
	brk $C1.b		; 00 C1
	eor ($6E.b,X)		; 41 6E
	ror $0001.w		; 6E 01 00
	eor $00.b,S		; 43 00
	eor $0000.w		; 4D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $7F41.w,X		; 3C 41 7F
	ror $00FF.w		; 6E FF 00
	inc $BC00.w,X		; FE 00 BC
	brk $B2.b		; 00 B2
	adc $149728.l		; 6F 28 97 14
	tyx		; BB
	pha		; 48
	lsr A		; 4A
	sbc $AF.b		; E5 AF
	cmp ($9D.b,X)		; C1 9D
	cmp $6D.b		; C5 6D
	sta $9B2A.w		; 8D 2A 9B
	plp		; 28
	tsa		; 3B
	bpl 125.b		; 10 7D
	brk $6C.b		; 00 6C
	brk $F5.b		; 00 F5
	brk $F1.b		; 00 F1
	brk $E7.b		; 00 E7
	tsb $DF.b		; 04 DF
	brk $DF.b		; 00 DF
	pha		; 48
	brk $BD.b		; 00 BD
	brk $EF.b		; 00 EF
	ora ($7F.b,X)		; 01 7F
	bra -39.b		; 80 D9
	inc $AF.b		; E6 AF
	dex		; CA
	cmp [$EA.b],Y		; D7 EA
	and $00C6.w,Y		; 39 C6 00
	bcs   0.b		; B0 00
	bne   0.b		; D0 00
	ora $00.b,X		; 15 00
	iny		; C8
	brk $E6.b		; 00 E6
	brk $FA.b		; 00 FA
	brk $EA.b		; 00 EA
	brk $C6.b		; 00 C6
	ldx $B700.w,Y		; BE 00 B7
	php		; 08
	eor [$08.b],Y		; 57 08
	ldy $49.b		; A4 49
	adc ($8C.b),Y		; 71 8C
	inc $3900.w,X		; FE 00 39
	bra -118.b		; 80 8A
	jsr ($6900.w,X)		; FC 00 69
	brk $6A.b		; 00 6A
	brk $EA.b		; 00 EA
	brk $DB.b		; 00 DB
	brk $DF.b		; 00 DF
	brk $01.b		; 00 01
	brk $7E.b		; 00 7E
	brk $3F.b		; 00 3F
	xce		; FB
	brk $BA.b		; 00 BA
	brk $5C.b		; 00 5C
	brk $FB.b		; 00 FB
	brk $76.b		; 00 76
	bra 111.b		; 80 6F
	bra -101.b		; 80 9B
	rts		; 60

	sbc ($06.b),Y		; F1 06
	brk $14.b		; 00 14
	brk $55.b		; 00 55
	brk $A3.b		; 00 A3
	brk $5C.b		; 00 5C
	brk $AF.b		; 00 AF
	brk $D0.b		; 00 D0
	brk $66.b		; 00 66
	brk $0F.b		; 00 0F
	cpy #$3100.w		; C0 00 31
	brk $12.b		; 00 12
	brk $8E.b		; 00 8E
	cop $CB.b		; 02 CB
	ora $68.b,S		; 03 68
	brk $BA.b		; 00 BA
	brk $F2.b		; 00 F2
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E100.w		; C0 00 E1
	brk $73.b		; 00 73
	brk $37.b		; 00 37
	brk $97.b		; 00 97
	brk $C5.b		; 00 C5
	brk $8D.b		; 00 8D
	brk $00.b		; 00 00
	cpx #$1E00.w		; E0 00 1E
	brk $09.b		; 00 09
	php		; 08
	bvs 112.b		; 70 70
	tsb $1E00.w		; 0C 00 1E
	brk $6B.b		; 00 6B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$FE00.w		; E0 00 FE
	brk $FF.b		; 00 FF
	brk $F3.b		; 00 F3
	brk $E1.b		; 00 E1
	brk $94.b		; 00 94
	.db $62, $40, $91		; 62 40 91
	ldy #$409F.w		; A0 9F 40
	adc $7100.w,X		; 7D 00 71
	asl $2CC2.w		; 0E C2 2C
	and ($6E.b,X)		; 21 6E
	sta $DD0050.l		; 8F 50 00 DD
	brk $EE.b		; 00 EE
	brk $60.b		; 00 60
	brk $AE.b		; 00 AE
	brk $8F.b		; 00 8F
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	rti		; 40

	brk $60.b		; 00 60
	brk $50.b		; 00 50
	brk $B8.b		; 00 B8
	brk $F8.b		; 00 F8
	brk $28.b		; 00 28
	bvc -24.b		; 50 E8
	bpl  -8.b		; 10 F8
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	ldy #$4000.w		; A0 00 40
	brk $30.b		; 00 30
	brk $D0.b		; 00 D0
	brk $50.b		; 00 50
	brk $30.b		; 00 30
	asl $0F.b		; 06 0F
	tsb $0F.b		; 04 0F
	brk $0F.b		; 00 0F
	asl $09.b		; 06 09
	ora $04.b,S		; 03 04
	ora [$00.b]		; 07 00
	and $7D00.w,Y		; 39 00 7D
	jsr $090F.w		; 20 0F 09
	ora $0E0E0B.l		; 0F 0B 0E 0E
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $2E.b		; 00 2E
	adc $8355D3.l		; 6F D3 55 83
	ldx $194B.w,Y		; BE 4B 19
	ora #$C05E.w		; 09 5E C0
	eor #$8AC7.w		; 49 C7 8A
	tsa		; 3B
	rts		; 60

	rol $80D0.w,X		; 3E D0 80
	jsr $A108.w		; 20 08 A1
	php		; 08
	plx		; FA
	tsb $003F.w		; 0C 3F 00
	ldx $7400.w,Y		; BE 00 74
	bra   4.b		; 80 04
	cpy #$010D.w		; C0 0D 01
	ora $031504.l,X		; 1F 04 15 03
	ora [$0B.b],Y		; 17 0B
	ora $0703.w		; 0D 03 07
	brk $0A.b		; 00 0A
	tsb $12.b		; 04 12
	tsb $0200.w		; 0C 00 02
	brk $0C.b		; 00 0C
	brk $0B.b		; 00 0B
	ora ($0B.b,X)		; 01 0B
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $0D.b		; 00 0D
	and $2F90B0.l,X		; 3F B0 90 2F
	cmp $F3C4.w		; CD C4 F3
	sbc ($FF.b,S),Y		; F3 FF
	sbc $F8FF0F.l,X		; FF 0F FF F8
	ora [$AF.b]		; 07 AF
	brk $10.b		; 00 10
	bvs   0.b		; 70 00
	adc $E1F680.l		; 6F 80 F6 E1
	sbc $03FF3F.l,X		; FF 3F FF 03
	sbc $000700.l,X		; FF 00 07 00
	bvc   2.b		; 50 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $20.b		; 00 20
	brk $38.b		; 00 38
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $5D1F00.l,X		; 1F 00 1F 5D
	cmp ($2F.b,X)		; C1 2F
	cpx #$7017.w		; E0 17 70
	ora #$0238.w		; 09 38 02
	asl $07F9.w,X		; 1E F9 07
	inc $01.b,X		; F6 01
	ora $BEE2.w,Y		; 19 E2 BE
	brk $5F.b		; 00 5F
	brk $2F.b		; 00 2F
	brk $17.b		; 00 17
	brk $05.b		; 00 05
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	sed		; F8
	brk $FE.b		; 00 FE
	sty $40.b		; 84 40
	ora $80.b		; 05 80
	ora [$80.b]		; 07 80
	ora [$80.b]		; 07 80
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	trb $3E00.w		; 1C 00 3E
	bpl  64.b		; 10 40
	eor $00.b,S		; 43 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$D7.b],Y		; 17 D7
	brk $EB.b		; 00 EB
	bpl  -1.b		; 10 FF
	mvn $7D,$8C		; 54 8C 7D
	sbc $1CA41F.l		; EF 1F A4 1C
	cmp $22.b		; C5 22
	lda $0000.w,X		; BD 00 00
	and #$1400.w		; 29 00 14
	brk $55.b		; 00 55
	tsb $7F.b		; 04 7F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $72.b		; 00 72
	cmp $170818.l,X		; DF 18 08 17
	dec $42.b		; C6 42
	lda ($51.b),Y		; B1 51
	sbc [$37.b],Y		; F7 37
	sta $639C77.l,X		; 9F 77 9C 63
	sbc [$00.b],Y		; F7 00
	php		; 08
	clv		; B8
	brk $F7.b		; 00 F7
	rti		; 40

	tda		; 7B
	bpl  95.b		; 10 5F
	ora [$3F.b]		; 07 3F
	ora ($77.b),Y		; 11 77
	brk $63.b		; 00 63
	brk $08.b		; 00 08
	sbc $A85500.l,X		; FF 00 55 A8
	inc $08.b,X		; F6 08
	dec $B4E0.w,X		; DE E0 B4
	cpx $9F.b		; E4 9F
	sbc $FCDF23.l		; EF 23 DF FC
	ora $00.b,S		; 03 00
	bpl   0.b		; 10 00
	tax		; AA
	brk $09.b		; 00 09
	cpy #$80E1.w		; C0 E1 80
	sbc $00EF87.l		; EF 87 EF 00
	cmp $0E0300.l,X		; DF 00 03 0E
	adc $CB3F87.l,X		; 7F 87 3F CB
	ora [$24.b],Y		; 17 24
	tsa		; 3B
	sbc $F8.b		; E5 F8
	asl $F8.b		; 06 F8
	phb		; 8B
	bvs 108.b		; 70 6C
	sta ($C0.b),Y		; 91 C0
	ora $E00FE0.l,X		; 1F E0 0F E0
	ora $1007D0.l		; 0F D0 07 10
	ora $E0.b,S		; 03 E0
	ora ($00.b,X)		; 01 00
	tsb $9F00.w		; 0C 00 9F
	nop		; EA
	ora [$97.b]		; 07 97
	cmp $C9.b,S		; C3 C9
	sbc $EE.b,S		; E3 EE
	sbc ($7D.b),Y		; F1 7D
	beq -70.b		; F0 BA
	sei		; 78
	ora $3C.b,S		; 03 3C
	cmp $9F0000.l,X		; DF 00 00 9F
	brk $EF.b		; 00 EF
	brk $F7.b		; 00 F7
	brk $F3.b		; 00 F3
	brk $FB.b		; 00 FB
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	brk $3C.b		; 00 3C
	ror $00.b		; 66 00
	sbc $827D00.l		; EF 00 7D 82
	sbc $009E00.l,X		; FF 00 9E 00
	trb $E500.w		; 1C 00 E5
	brk $44.b		; 00 44
	bra   0.b		; 80 00
	sta $9000.w,Y		; 99 00 90
	brk $82.b		; 00 82
	brk $83.b		; 00 83
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $1B.b		; 00 1B
	brk $BB.b		; 00 BB
	lda ($00.b),Y		; B1 00
	stp		; DB
	brk $53.b		; 00 53
	ldy #$60AA.w		; A0 AA 60
	stx $78.b		; 86 78
.ACCU 16
	rep #$20		; C2 20
	trb $00.b		; 14 00
	pla		; 68
	brk $00.b		; 00 00
	lsr $A400.w		; 4E 00 A4
	brk $AC.b		; 00 AC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $90.b		; 00 90
	adc $009FC0.l,X		; 7F C0 9F 00
	adc [$20.b]		; 67 20
	stp		; DB
	tax		; AA
	plx		; FA
	sta $B84F.w,Y		; 99 4F B8
	cmp $00FF30.l		; CF 30 FF 00
	brk $C0.b		; 00 C0
	brk $FD.b		; 00 FD
	jsr $88B8.w		; 20 B8 88
	lda $089F00.l		; AF 00 9F 08
	tyx		; BB
	brk $36.b		; 00 36
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $83.b		; 00 83
	and ($BF.b,X)		; 21 BF
	jmp ($1CE3.w,X)		; 7C E3 1C
	sbc $800000.l,X		; FF 00 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $03.b		; 00 03
	brk $7D.b		; 00 7D
	brk $7D.b		; 00 7D
	brk $FC.b		; 00 FC
	brk $1D.b		; 00 1D
	ldx $00.b,Y		; B6 00
	sbc $EA00.w		; ED 00 EA
	brk $ED.b		; 00 ED
	brk $E6.b		; 00 E6
	brk $F5.b		; 00 F5
	brk $CF.b		; 00 CF
	brk $67.b		; 00 67
	bra   0.b		; 80 00
	pha		; 48
	brk $52.b		; 00 52
	brk $55.b		; 00 55
	brk $5A.b		; 00 5A
	brk $7D.b		; 00 7D
	brk $0E.b		; 00 0E
	brk $B3.b		; 00 B3
	brk $D8.b		; 00 D8
	ora $000300.l,X		; 1F 00 03 00
	cpx #$1800.w		; E0 00 18
	brk $84.b		; 00 84
	brk $7C.b		; 00 7C
	brk $CC.b		; 00 CC
	brk $B4.b		; 00 B4
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$7800.w		; E0 00 78
	brk $80.b		; 00 80
	brk $30.b		; 00 30
	brk $78.b		; 00 78
	eor $B1.b,X		; 55 B1
	asl $8378.w		; 0E 78 83
	sec		; 38
	cmp $1C.b		; C5 1C
	sbc ($1E.b)		; F2 1E
	adc ($0F.b),Y		; 71 0F
	brk $87.b		; 00 87
	dec A		; 3A
	sbc $002E.w,X		; FD 2E 00
	cmp [$00.b],Y		; D7 00
	sbc $00E300.l		; EF 00 E3 00
	sbc $00.b		; E5 00
	plx		; FA
	brk $F9.b		; 00 F9
	brk $40.b		; 00 40
	brk $30.b		; 00 30
	brk $67.b		; 00 67
	brk $6C.b		; 00 6C
	brk $50.b		; 00 50
	brk $50.b		; 00 50
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $003800.l,X		; 1F 00 38 00
	bmi   0.b		; 30 00
	jsr $2000.w		; 20 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($E001.w,X)		; 7C 01 E0
	brk $1E.b		; 00 1E
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	sbc $001F00.l,X		; FF 00 1F 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $83.b		; 00 83
	jmp ($99E6.w,X)		; 7C E6 99
	ora $00FB60.l,X		; 1F 60 FB 00
	inc $00.b,X		; F6 00
	tay		; A8
	brk $28.b		; 00 28
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	cop $00.b		; 02 00
	sta ($00.b,X)		; 81 00
	cpx #$0400.w		; E0 00 04
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $10.b		; 00 10
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
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$0040.w		; C0 40 00
	cpy #$40E0.w		; C0 E0 40
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$6000.w		; C0 00 60
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldx $F000.w,Y		; BE 00 F0
	brk $0F.b		; 00 0F
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	adc $000F00.l,X		; 7F 00 0F 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $63.b		; 00 63
	bra 127.b		; 80 7F
	rti		; 40

	ora $00FF30.l		; 0F 30 FF 00
	bvs   0.b		; 70 00
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	sta $C000.w,X		; 9D 00 C0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc  64.b		; 90 40
	sei		; 78
	jsr $20DC.w		; 20 DC 20
	inc $B200.w,X		; FE 00 B2
	cpy $945F.w		; CC 5F 94
	lda $8D72D4.l		; AF D4 72 8D
	rti		; 40

	jsr $8000.w		; 20 00 80
	jsr $0008.w		; 20 08 00
	bcc   0.b		; 90 00
	cpy $F400.w		; CC 00 F4
	brk $D5.b		; 00 D5
	brk $8D.b		; 00 8D
	sbc $AE01.w,X		; FD 01 AE
	eor ($EE.b),Y		; 51 EE
	bpl -65.b		; 10 BF
.ACCU 16
	rep #$68		; C2 68
	iny		; C8
	and $BF47DF.l,X		; 3F DF 47 BF
	sed		; F8
	ora [$00.b]		; 07 00
	and $00.b,S		; 23 00
	eor ($00.b,S),Y		; 53 00
	ora ($80.b),Y		; 11 80
	dec $00.b		; C6 00
	cmp $00DF0F.l,X		; DF 0F DF 00
	lda $870700.l,X		; BF 00 07 87
	brk $49.b		; 00 49
	asl $BB.b		; 06 BB
	tsb $F6.b		; 04 F6
	brk $ED.b		; 00 ED
	brk $DF.b		; 00 DF
	brk $25.b		; 00 25
	dec $33C2.w,X		; DE C2 33
	brk $00.b		; 00 00
	brk $86.b		; 00 86
	brk $44.b		; 00 44
	brk $B9.b		; 00 B9
	brk $5E.b		; 00 5E
	brk $A0.b		; 00 A0
	php		; 08
	cpy #$001C.w		; C0 1C 00
	cmp [$00.b]		; C7 00
	sta ($02.b,X)		; 81 02
	adc $1700.w,Y		; 79 00 17
	brk $13.b		; 00 13
	brk $16.b		; 00 16
	brk $14.b		; 00 14
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	bit $7E00.w,X		; 3C 00 7E
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	ora [$00.b],Y		; 17 00
	sbc $00FE00.l,X		; FF 00 FE 00
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inx		; E8
	brk $06.b		; 00 06
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	txy		; 9B
	cpy #$E4CA.w		; C0 CA E4
	adc #$94F6.w		; 69 F6 94
	adc $74.b,S		; 63 74
	ora $8E.b,S		; 03 8E
	ora ($F9.b,X)		; 01 F9
	brk $3E.b		; 00 3E
	cpy #$EC00.w		; C0 00 EC
	brk $F7.b		; 00 F7
	brk $F7.b		; 00 F7
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $73.b		; 00 73
	brk $07.b		; 00 07
	brk $C9.b		; 00 C9
	rol A		; 2A
	bpl -123.b		; 10 85
	clc		; 18
	eor ($0C.b)		; 52 0C
	sbc #$2406.w		; E9 06 24
	sta $13.b,S		; 83 13
	cpy #$00F8.w		; C0 F8 00
	trb $0000.w		; 1C 00 00
	jsr ($7E00.w,X)		; FC 00 7E
	brk $BF.b		; 00 BF
	brk $9F.b		; 00 9F
	brk $DF.b		; 00 DF
	brk $EF.b		; 00 EF
	brk $E7.b		; 00 E7
	brk $E3.b		; 00 E3
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
	cli		; 58
.INDEX 16
	rep #$18		; C2 18
.INDEX 16
	rep #$1C		; C2 1C
.INDEX 16
	rep #$1C		; C2 1C
	cmp $3E.b,S		; C3 3E
	adc $3C.b,S		; 63 3C
	adc ($1C.b,X)		; 61 1C
	adc ($0E.b,X)		; 61 0E
	adc ($3C.b,X)		; 61 3C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $0D.b		; 00 0D
	cop $13.b		; 02 13
	tsb $19.b		; 04 19
	tsb $33.b		; 04 33
	php		; 08
	mvp $78,$00		; 44 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $0E00.w		; 0E 00 0E
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $2C42.w		; 1C 42 2C
	adc $0E.b,S		; 63 0E
	adc $12.b,S		; 63 12
	and ($0E.b,S),Y		; 33 0E
	and $031F0C.l,X		; 3F 0C 1F 03
	trb $0B07.w		; 1C 07 0B
	bit $1E00.w,X		; 3C 00 1E
	brk $3C.b		; 00 3C
	brk $0C.b		; 00 0C
	brk $11.b		; 00 11
	brk $03.b		; 00 03
	brk $0C.b		; 00 0C
	brk $03.b		; 00 03
	ora $1C.b,S		; 03 1C
	and $7E.b,S		; 23 7E
	ora $2243.w,X		; 1D 43 22
	txa		; 8A
	bpl -54.b		; 10 CA
	bmi  84.b		; 30 54
	jsr $6094.w		; 20 94 60
	tay		; A8
	rti		; 40

	ora ($00.b,X)		; 01 00
	tsb $001C.w		; 0C 1C 00
	rol $7C00.w,X		; 3E 00 7C
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	pha		; 48
	jsr $20C8.w		; 20 C8 20
	clv		; B8
	brk $68.b		; 00 68
	bpl  84.b		; 10 54
	brk $34.b		; 00 34
	brk $22.b		; 00 22
	brk $22.b		; 00 22
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	sec		; 38
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	asl $2C63.w		; 0E 63 2C
	adc $28.b,S		; 63 28
	.db $62, $24, $66		; 62 24 66
	sec		; 38
	inc $FC00.w,X		; FE 00 FC
	cpx #$F01C.w		; E0 1C F0
	inx		; E8
	bit $1E00.w,X		; 3C 00 1E
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $44.b		; 00 44
	brk $78.b		; 00 78
	brk $08.b		; 00 08
	brk $60.b		; 00 60
	cpx #$003A.w		; E0 3A 00
	bit $10.b		; 24 10
	mvn $68,$00		; 54 00 68
	brk $68.b		; 00 68
	brk $A8.b		; 00 A8
	brk $D0.b		; 00 D0
	jsr $4030.w		; 20 30 40
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	cpx #$C0F8.w		; E0 F8 C0
	sed		; F8
	sec		; 38
	cpy $7C.b		; C4 7C
	clv		; B8
	dec $44.b		; C6 44
	eor #$5510.w		; 49 10 55
	php		; 08
	and $0C.b,S		; 23 0C
	bpl   0.b		; 10 00
	bmi   0.b		; 30 00
	cpy #$3000.w		; C0 00 30
	sec		; 38
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	cli		; 58
	cmp $58.b,S		; C3 58
	cmp $78.b,S		; C3 78
.ACCU 16
.INDEX 16
	rep #$7C		; C2 7C
	dec $70.b		; C6 70
	dec $70.b		; C6 70
	dec $70.b		; C6 70
	cpy $70.b		; C4 70
	cpy $3E.b		; C4 3E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $10.b		; 00 10
	brk $A8.b		; 00 A8
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
	tsb $32.b		; 04 32
	tsb $0835.w		; 0C 35 08
	eor $18.b		; 45 18
	ror A		; 6A
	bpl 100.b		; 10 64
	bpl -108.b		; 10 94
	jsr $2088.w		; 20 88 20
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	rti		; 40

	bra -96.b		; 80 A0
	cpy #$6050.w		; C0 50 60
	bne  32.b		; D0 20
	inx		; E8
	bcc -41.b		; 90 D7
	dey		; 88
	adc $9F43.w		; 6D 43 9F
	ora [$00.b]		; 07 00
	cpy #$E000.w		; C0 00 E0
	bra -16.b		; 80 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $DF.b		; 00 DF
	bra -17.b		; 80 EF
	rts		; 60

	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $A0.b		; 00 A0
	cpy #$8040.w		; C0 40 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	sed		; F8
	cpx #$30FC.w		; E0 FC 30
	inc $7F10.w,X		; FE 10 7F
	dey		; 88
	sbc $F07F98.l		; EF 98 7F F0
	sbc $EC01.w,X		; FD 01 EC
	clc		; 18
	sbc [$F7.b],Y		; F7 F7
	lda ($B3.b,S),Y		; B3 B3
	sta $9899.w,Y		; 99 99 98
	tya		; 98
	tya		; 98
	tya		; 98
	sed		; F8
	sed		; F8
	cop $03.b		; 02 03
	tas		; 1B
	tas		; 1B
	cpy #$C080.w		; C0 80 C0
	bra -32.b		; 80 E0
	bra  80.b		; 80 50
	rts		; 60

	sty $18.b,X		; 94 18
	plp		; 28
	bmi -96.b		; 30 A0
	cpy #$4020.w		; C0 20 40
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	rts		; 60

	jmp ($F8C0.w,X)		; 7C C0 F8
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	tsx		; BA
	bvs 110.b		; 70 6E
	clc		; 18
	bpl   8.b		; 10 08
	asl A		; 0A
	asl $03.b		; 06 03
	asl $01.b		; 06 01
	asl $03.b		; 06 03
	tsb $0C.b		; 04 0C
	tsb $01.b		; 04 01
	xce		; FB
	ora ($7F.b,X)		; 01 7F
	ora [$1F.b]		; 07 1F
	ora ($0F.b,X)		; 01 0F
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	ora $0F.b,S		; 03 0F
	eor $337D3F.l,X		; 5F 3F 7D 33
	lda $61FF61.l,X		; BF 61 FF 61
	lda $3FDE71.l		; AF 71 DE 3F
	sbc $0C7B00.l,X		; FF 00 7B 0C
	lda $B3B3BF.l,X		; BF BF B3 B3
	adc ($61.b,X)		; 61 61
	adc ($61.b,X)		; 61 61
	adc ($71.b),Y		; 71 71
	adc $00007F.l,X		; 7F 7F 00 00
	sty $098C.w		; 8C 8C 09
	ora [$03.b]		; 07 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000300.l		; 0F 00 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8F.b		; 00 8F
	sta ($27.b,X)		; 81 27
	sbc ($66.b,X)		; E1 66
	ora ($13.b),Y		; 11 13
	php		; 08
	ora [$0C.b],Y		; 17 0C
	adc $BF1C.w		; 6D 1C BF
	ror $DE6F.w,X		; 7E 6F DE
	adc ($F1.b),Y		; 71 F1
	ora $09F9.w,Y		; 19 F9 09
	adc $1D05.w,Y		; 79 05 1D
	brk $1C.b		; 00 1C
	cop $7E.b		; 02 7E
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	eor $8FC6.w		; 4D C6 8F
	.db $42, $E6		; 42 E6
	sbc $F7.b,S		; E3 F7
	and ($9B.b),Y		; 31 9B
	sei		; 78
	sbc $0C.b,X		; F5 0C
	asl A		; 0A
	asl $34.b		; 06 34
	tsb $F636.w		; 0C 36 F6
	rol $F6.b,X		; 36 F6
	tas		; 1B
	xce		; FB
	phd		; 0B
	xce		; FB
	tsb $FC.b		; 04 FC
	cop $FE.b		; 02 FE
	ora ($0F.b,X)		; 01 0F
	ora $3F.b,S		; 03 3F
	asl A		; 0A
	mvp $04,$4A		; 44 4A 04
	txs		; 9A
	tsb $EB.b		; 04 EB
	jmp $3070FC.l		; 5C FC 70 30
	rti		; 40

	rti		; 40

	brk $40.b		; 00 40
	brk $80.b		; 00 80
	dec $CE80.w		; CE 80 CE
	rti		; 40

	lsr $7F00.w,X		; 5E 00 7F
	brk $7C.b		; 00 7C
	bra -16.b		; 80 F0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	sta $BF66.w,X		; 9D 66 BF
	mvp $CC,$77		; 44 77 CC
	tda		; 7B
	cpy $C87E.w		; CC 7E C8
	rol $3E98.w		; 2E 98 3E
	clc		; 18
	ldx $98.b,Y		; B6 98
	asl $E6.b		; 06 E6
	asl $0CCE.w		; 0E CE 0C
	cpy $CC0C.w		; CC 0C CC
	ora $59DD.w,X		; 1D DD 59
	cmp $D9D9.w,Y		; D9 D9 D9
	eor $BDD9.w,Y		; 59 D9 BD
	jsr $7CFB.w		; 20 FB 7C
	cli		; 58
	adc [$27.b]		; 67 27
	rti		; 40

	ldy #$F1C0.w		; A0 C0 F1
	cpy #$30C8.w		; C0 C8 30
	pla		; 68
	bmi  64.b		; 30 40
	adc $7F00.w,X		; 7D 00 7F
	bra  -1.b		; 80 FF
	bra -25.b		; 80 E7
	brk $E0.b		; 00 E0
	brk $F1.b		; 00 F1
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	asl $2C01.w,X		; 1E 01 2C
	trb $215E.w		; 1C 5E 21
	eor [$20.b]		; 47 20
	adc $23.b		; 65 23
	mvp $6A,$62		; 44 62 6A
	lsr $28.b		; 46 28
	pha		; 48
	brk $1F.b		; 00 1F
	ora $3F.b,S		; 03 3F
	brk $7F.b		; 00 7F
	brk $67.b		; 00 67
	brk $67.b		; 00 67
	ora ($67.b,X)		; 01 67
	ora ($6F.b,X)		; 01 6F
	ora [$6F.b]		; 07 6F
	ror $0071.w		; 6E 71 00
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $77.b		; 00 77
	ora $5F1F6F.l		; 0F 6F 1F 5F
	and ($FF.b,S),Y		; 33 FF
	and $80.b,S		; 23 80
	sbc $C0FFFF.l,X		; FF FF FF C0
	cpy #$8080.w		; C0 80 80
	sta $BFBF9F.l,X		; 9F 9F BF BF
	lda ($B3.b,S),Y		; B3 B3
	and $23.b,S		; 23 23
	ora $05.b		; 05 05
	sbc ($03.b)		; F2 03
	sbc $FC00.w,X		; FD 00 FC
	ora ($B9.b,X)		; 01 B9
	cmp ($DF.b,X)		; C1 DF
	sbc $EC.b,S		; E3 EC
	bmi  -4.b		; 30 FC
	bpl  -6.b		; 10 FA
	sbc $020F0C.l,X		; FF 0C 0F 02
	ora $02.b,S		; 03 02
	ora $E6.b,S		; 03 E6
	sbc [$F0.b]		; E7 F0
	sbc ($33.b,S),Y		; F3 33
	and ($13.b,S),Y		; 33 13
	ora ($80.b,S),Y		; 13 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $50.b		; 00 50
	ldy #$7844.w		; A0 44 78
	ldy #$E0C0.w		; A0 C0 E0
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	beq -128.b		; F0 80
	jsr ($E000.w,X)		; FC 00 E0
	brk $E0.b		; 00 E0
	cmp ($01.b,X)		; C1 01
	cpx #$F201.w		; E0 01 F2
	sta $FA.b,S		; 83 FA
	cmp $BD.b,S		; C3 BD
	adc ($D5.b,X)		; 61 D5
	and $0C7E.w,Y		; 39 7E 0C
	sbc $3F3E60.l,X		; FF 60 3E 3F
	asl $CC1F.w,X		; 1E 1F CC
	cmp $F2E7E4.l		; CF E4 E7 F2
	sbc ($7A.b,S),Y		; F3 7A
	tda		; 7B
	sta $009D.w,X		; 9D 9D 00
	cpx #$8040.w		; E0 40 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	mvp $B6,$80		; 44 80 B6
	cpy #$0023.w		; C0 23 00
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C4.b		; 00 C4
	brk $F6.b		; 00 F6
	cpy #$FEE3.w		; C0 E3 FE
	clc		; 18
	inc $EE18.w,X		; FE 18 EE
	clc		; 18
	inc $FE18.w		; EE 18 FE
	php		; 08
	sbc $09FF09.l,X		; FF 09 FF 09
	inc $1909.w,X		; FE 09 19
	ora $1919.w,Y		; 19 19 19
	ora $1919.w,Y		; 19 19 19
	ora $1919.w,Y		; 19 19 19
	php		; 08
	ora #$0908.w		; 09 08 09
	php		; 08
	ora #$6050.w		; 09 50 60
	pha		; 48
	bpl  36.b		; 10 24
	php		; 08
	trb $9C08.w		; 1C 08 9C
	php		; 08
	sed		; F8
	bpl -112.b		; 10 90
	cpx #$00E0.w		; E0 E0 00
	bra -16.b		; 80 F0
	ldy #$90F8.w		; A0 F8 90
	ldy $9C80.w,X		; BC 80 9C
	brk $9C.b		; 00 9C
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	and $7709.w,Y		; 39 09 77
	bmi  45.b		; 30 2D
	clc		; 18
	bpl  12.b		; 10 0C
	asl $0604.w		; 0E 04 06
	tsb $06.b		; 04 06
	cop $07.b		; 02 07
	cop $06.b		; 02 06
	and $007F08.l,X		; 3F 08 7F 00
	and $1C00.w,X		; 3D 00 1C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	and [$0C.b],Y		; 37 0C
	lda $7F86.w,X		; BD 86 7F
	dec $BB.b		; C6 BB
	ror $7F.b		; 66 7F
	jsl $7D237E.l		; 22 7E 23 7D
	and $9F.b,S		; 23 9F
	eor ($CE.b),Y		; 51 CE
	dec $CE4E.w		; CE 4E CE
	asl $C6.b		; 06 C6
	asl $E6.b		; 06 E6
	ora [$67.b]		; 07 67
	ora $63.b,S		; 03 63
	ora $63.b,S		; 03 63
	and $F3.b,S		; 23 F3
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $000007.l		; 0F 07 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	and $CC.b,X		; 35 CC
	cmp #$8D84.w		; C9 84 8D
	tsb $13.b		; 04 13
	php		; 08
	rtl		; 6B

	clc		; 18
	ldx $61.b		; A6 61
	eor [$A1.b]		; 47 A1
	sbc $0213.w		; ED 13 02
	inc $CE02.w,X		; FE 02 CE
	cop $8E.b		; 02 8E
	tsb $1C.b		; 04 1C
	ora $7D.b		; 05 7D
	ora $1BF9.w,Y		; 19 F9 1B
	xce		; FB
	ora $F3.b,S		; 03 F3
	cmp $1E39.w,Y		; D9 39 1E
	sbc ($E1.b,X)		; E1 E1
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc ($00.b,X)		; E1 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($7D91.w,X)		; 7C 91 7D
	bcc  93.b		; 90 5D
	bcs -24.b		; B0 E8
	bcs  -6.b		; B0 FA
	and $F9.b,S		; 23 F9
	cop $FD.b		; 02 FD
	asl $BD.b		; 06 BD
	ror $1A.b		; 66 1A
	txy		; 9B
	and ($B3.b)		; 32 B3
	and ($B3.b)		; 32 B3
	and [$B7.b],Y		; 37 B7
	bit $37.b,X		; 34 37
	bit $27.b		; 24 27
	brk $07.b		; 00 07
	rts		; 60

	adc [$24.b]		; 67 24
	clc		; 18
	tas		; 1B
	tsb $0FFE.w		; 0C FE 0F
	sbc [$F8.b],Y		; F7 F8
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $1F00.w,X		; 3C 00 1F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lsr A		; 4A
	rol $35.b		; 26 35
	and $25.b,S		; 23 25
	and ($24.b,S),Y		; 33 24
	ora ($05.b)		; 12 05
	ora $02.b,S		; 03 02
	ora ($05.b,X)		; 01 05
	ora $34.b,S		; 03 34
	tsb $6F01.w		; 0C 01 6F
	brk $37.b		; 00 37
	brk $37.b		; 00 37
	ora ($37.b,X)		; 01 37
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora $3F.b,S		; 03 3F
	xce		; FB
	and [$FF.b]		; 27 FF
	and $FF.b,S		; 23 FF
	ora $3F07FB.l,X		; 1F FB 07 3F
	ora $BF.b,S		; 03 BF
	bra -113.b		; 80 8F
	bra  63.b		; 80 3F
	ora ($27.b,X)		; 01 27
	and [$33.b]		; 27 33
	and ($3F.b,S),Y		; 33 3F
	and $C30707.l,X		; 3F 07 07 C3
	cmp $40.b,S		; C3 40
	cpy #$F171.w		; C0 71 F1
	cmp ($C1.b,X)		; C1 C1
	adc $FB91.w,X		; 7D 91 FB
	ora ($FA.b)		; 12 FA
	cpx #$8072.w		; E0 72 80
	xce		; FB
	ora $D7.b,S		; 03 D7
	ora [$FD.b]		; 07 FD
	ora ($EE.b,X)		; 01 EE
	bpl -110.b		; 10 92
	sta ($34.b,S),Y		; 93 34
	and [$F4.b],Y		; 37 F4
	inc $8C.b,X		; F6 8C
	stx $0704.w		; 8E 04 07
	plp		; 28
	and $110302.l		; 2F 02 03 11
	ora ($E0.b),Y		; 11 E0
	cpy #$40A0.w		; C0 A0 40
	bcc  96.b		; 90 60
	cpx $FA70.w		; EC 70 FA
	sty $4E.b		; 84 4E
	sty $84.b		; 84 84
	php		; 08
	jmp $0088.w		; 4C 88 00
	cpx #$E000.w		; E0 00 E0
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $CE.b		; 00 CE
	brk $8C.b		; 00 8C
	brk $CC.b		; 00 CC
	ora $0503.w		; 0D 03 05
	ora $03.b,S		; 03 03
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($00.b,X)		; 01 00
	ora $000700.l		; 0F 00 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora [$6F.b]		; 07 6F
	trb $83FF.w		; 1C FF 83
	sbc $B3EFA0.l,X		; FF A0 EF B3
	cmp $9BF4B3.l,X		; DF B3 F4 9B
	sbc $0D3A98.l		; EF 98 3A 0D
	stz $079C.w		; 9C 9C 07
	sta [$20.b]		; 87 20
	ldy #$B333.w		; A0 33 B3
	and ($B3.b,S),Y		; 33 B3
	tas		; 1B
	txy		; 9B
	clc		; 18
	tya		; 98
	cmp $FFCD.w		; CD CD FF
	rts		; 60

	sbc $DF9A.w,X		; FD 9A DF
	dec A		; 3A
	cmp $82FF32.l		; CF 32 FF 82
	sbc $6A9F1A.l		; EF 1A 9F 6A
	cmp $6060AA.l,X		; DF AA 60 60
	phx		; DA
	phx		; DA
	dec A		; 3A
	dec A		; 3A
	and ($32.b)		; 32 32
	.db $82, $82, $1A		; 82 82 1A
	inc A		; 1A
	ror A		; 6A
	ror A		; 6A
	tax		; AA
	tax		; AA
	cld		; D8
	sty $CCB8.w		; 8C B8 CC
	jmp $1478.w		; 4C 78 14
	clc		; 18
	plp		; 28
	bmi  48.b		; 30 30
	jsr $4060.w		; 20 60 40
	rts		; 60

	rti		; 40

	brk $DC.b		; 00 DC
	brk $FC.b		; 00 FC
	bra  -4.b		; 80 FC
	cpx #$C0FC.w		; E0 FC C0
	sed		; F8
	cpy #$80F0.w		; C0 F0 80
	cpx #$E080.w		; E0 80 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	trb $F400.w		; 1C 00 F4
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $1C.b		; 00 1C
	brk $FC.b		; 00 FC
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	ora [$0E.b]		; 07 0E
	ora $0A0F.w		; 0D 0F 0A
	ora $0100.w		; 0D 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	asl A		; 0A
	ora $0805.w		; 0D 05 08
	ora ($18.b,X)		; 01 18
	ora ($11.b)		; 12 11
	eor $33.b		; 45 33
	asl $0806.w,X		; 1E 06 08
	php		; 08
	ora $0C.b		; 05 0C
	brk $0F.b		; 00 0F
	brk $0D.b		; 00 0D
	brk $19.b		; 00 19
	brk $13.b		; 00 13
	brk $77.b		; 00 77
	ora ($1F.b,X)		; 01 1F
	ora [$0F.b]		; 07 0F
	cop $0E.b		; 02 0E
	ora $0104.w		; 0D 04 01
	tsb $07.b		; 04 07
	brk $06.b		; 00 06
	ora ($0B.b,X)		; 01 0B
	ora $06.b		; 05 06
	ora $0005.w		; 0D 05 00
	asl $02.b		; 06 02
	cop $0E.b		; 02 0E
	cop $06.b		; 02 06
	brk $04.b		; 00 04
	ora ($05.b,X)		; 01 05
	ora ($0D.b,X)		; 01 0D
	ora ($0D.b,X)		; 01 0D
	cop $06.b		; 02 06
	ora ($07.b,X)		; 01 07
	inc $64.b,X		; F6 64
	adc ($C4.b)		; 72 C4
	sbc $88EDC8.l		; EF C8 ED 88
	pei ($98.b)		; D4 98
	jsr ($A420.w,X)		; FC 20 A4
	rti		; 40

	cpy #$6880.w		; C0 80 68
	ror $EEE8.w		; 6E E8 EE
	bne -33.b		; D0 DF
	bne -35.b		; D0 DD
	ldy #$80BC.w		; A0 BC 80
	ldy $6400.w,X		; BC 00 64
	brk $C0.b		; 00 C0
	trb $0800.w		; 1C 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $0800.w		; 1C 00 08
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
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	tsa		; 3B
	ora ($97.b,X)		; 01 97
	ply		; 7A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $3B.b		; 00 3B
	brk $FF.b		; 00 FF
	sbc $887E09.l,X		; FF 09 7E 88
	inc $BE88.w,X		; FE 88 BE
	iny		; C8
	ror $C8.b,X		; 76 C8
	inc $FF40.w,X		; FE 40 FF
	brk $DF.b		; 00 DF
	jsl $898988.l		; 22 88 89 89
	bit #$C9C9.w		; 89 C9 C9
	cmp #$C9C9.w		; C9 C9 C9
	cmp #$4949.w		; C9 49 49
	brk $00.b		; 00 00
	adc [$77.b],Y		; 77 77
	sbc $72FF77.l,X		; FF 77 FF 72
	cmp $01F620.l,X		; DF 20 F6 01
	sbc ($C0.b,S),Y		; F3 C0
	ldy $C0.b,X		; B4 C0
	ror $80.b		; 66 80
	jmp.w [$7718]		; DC 18 77
	adc [$77.b],Y		; 77 77
	adc [$71.b],Y		; 77 71
	adc ($09.b),Y		; 71 09
	ora #$CCCC.w		; 09 CC CC
	wai		; CB
	cmp $A09F99.l		; CF 99 9F A0
	ldy $0000.w,X		; BC 00 00
	rti		; 40

	brk $A0.b		; 00 A0
	rti		; 40

	cld		; D8
	rts		; 60

	pla		; 68
	bcs  52.b		; B0 34
	tya		; 98
	plb		; AB
	tsb $1332.w		; 0C 32 13
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $BC.b		; 00 BC
	bpl -65.b		; 10 BF
	tsb $003F.w		; 0C 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1A.b		; 00 1A
	ora [$19.b]		; 07 19
	asl $060D.w		; 0E 0D 06
	asl $03.b		; 06 03
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	cop $01.b		; 02 01
	ora $03.b		; 05 03
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	lda [$8C.b],Y		; B7 8C
	cmp $DB46.w,X		; DD 46 DB
	asl $E7.b		; 06 E7
	jsr $11BF.w		; 20 BF 11
	lda $00AF00.l		; AF 00 AF 00
	ldx $4C01.w		; AE 01 4C
	cpy $E626.w		; CC 26 E6
	rol $E6.b		; 26 E6
	clc		; 18
	sed		; F8
	ora $B3.b,S		; 03 B3
	bpl -80.b		; 10 B0
	bpl -80.b		; 10 B0
	ora ($B1.b),Y		; 11 B1
	sbc $AAF58A.l,X		; FF 8A F5 AA
	cmp $B47EA0.l,X		; DF A0 7E B4
	cpy $FC31.w		; CC 31 FC
	ora ($FE.b,X)		; 01 FE
	bmi -53.b		; 30 CB
	ldy $8A.b,X		; B4 8A
	txa		; 8A
	tax		; AA
	tax		; AA
	ldy $A4.b		; A4 A4
	lda $B5.b,X		; B5 B5
	and ($33.b)		; 32 33
	cop $03.b		; 02 03
	and ($31.b),Y		; 31 31
	ldx $B6.b,Y		; B6 B6
	bvc  96.b		; 50 60
	bmi  32.b		; 30 20
	sec		; 38
	bmi  76.b		; 30 4C
	dey		; 88
	plp		; 28
	brk $38.b		; 00 38
	bpl -88.b		; 10 A8
	bpl  84.b		; 10 54
	clc		; 18
	bra -16.b		; 80 F0
	cpy #$C0F0.w		; C0 F0 C0
	sed		; F8
	bmi  -4.b		; 30 FC
	bpl  56.b		; 10 38
	brk $38.b		; 00 38
	brk $B8.b		; 00 B8
	ldy #$03FC.w		; A0 FC 03
	brk $0C.b		; 00 0C
	ora $10.b,S		; 03 10
	ora $241E21.l		; 0F 21 1E 24
	tas		; 1B
	eor [$38.b]		; 47 38
	phy		; 5A
	and $7B.b		; 25 7B
	tsb $00.b		; 04 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	ora ($1A.b,X)		; 01 1A
	ora $20.b		; 05 20
	ora $1825.w,X		; 1D 25 18
	tsb $38.b		; 04 38
	sed		; F8
	brk $3C.b		; 00 3C
	cpy #$9866.w		; C0 66 98
	sbc $5506.w,Y		; F9 06 55
	tax		; AA
	sbc $F332.w		; ED 32 F3
	bit $2AC5.w,X		; 3C C5 2A
	brk $00.b		; 00 00
	cpy #$8838.w		; C0 38 88
	stz $06.b,X		; 74 06
	bcc -86.b		; 90 AA
	jsr $1012.w		; 20 12 10
	php		; 08
	php		; 08
	sec		; 38
	rti		; 40

	bit $19.b		; 24 19
	eor $31.b		; 45 31
	lsr $4833.w		; 4E 33 48
	and $5D.b,S		; 23 5D
	rol $FA.b		; 26 FA
	jmp ($4EDE.w,X)		; 7C DE 4E
	sbc $011773.l,X		; FF 73 17 01
	rol $2C00.w		; 2E 00 2C
	brk $1E.b		; 00 1E
	cop $18.b		; 02 18
	brk $79.b		; 00 79
	ora ($7E.b,X)		; 01 7E
	and ($7F.b),Y		; 31 7F
	ora $6CB3.w		; 0D B3 6C
	ldy $8B73.w,X		; BC 73 8B
	tsb $8F.b		; 04 8F
	bmi -49.b		; 30 CF
	ora $1F4F.w,Y		; 19 4F 1F
	asl $0E.b		; 06 0E
	cmp $E1.b,S		; C3 E1
	bit $1360.w		; 2C 60 13
	bvs   4.b		; 70 04
	adc ($00.b,S),Y		; 73 00
	ror $01.b,X		; 76 01
	and $BF81.w,Y		; 39 81 BF
	cop $FF.b		; 02 FF
	sta ($FD.b,X)		; 81 FD
	inc $7100.w,X		; FE 00 71
	ldx $70FF.w		; AE FF 70
	sbc [$F8.b],Y		; F7 F8
	sbc ($F8.b)		; F2 F8
	and ($38.b)		; 32 38
	cmp $C1.b,S		; C3 C1
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	ora ($00.b,X)		; 01 00
	stx $6020.w		; 8E 20 60
	ror $E0.b,X		; 76 E0
	sed		; F8
	sbc ($FC.b,X)		; E1 FC
	and ($FC.b,X)		; 21 FC
	eor ($FC.b,X)		; 41 FC
	cmp ($FD.b,X)		; C1 FD
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	cpx #$E0.b		; E0 E0
	sei		; 78
	bit $7FFF.w,X		; 3C FF 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$1C.b		; E0 1C
	beq -33.b		; F0 DF
	inc $86BF.w,X		; FE BF 86
	ply		; 7A
	sta ($6E.b)		; 92 6E
	sta ($6D.b,S),Y		; 93 6D
	sta ($6C.b,S),Y		; 93 6C
	eor ($2C.b,S),Y		; 53 2C
	eor ($2C.b,S),Y		; 53 2C
	tad		; 5B
	bit $5B.b		; 24 5B
	bit $7B.b		; 24 7B
	ora ($6F.b,X)		; 01 6F
	ora ($6D.b,X)		; 01 6D
	brk $6C.b		; 00 6C
	brk $2C.b		; 00 2C
	brk $2C.b		; 00 2C
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $F6.b		; 00 F6
	ldy $DA.b		; A4 DA
	dey		; 88
	stp		; DB
	pha		; 48
	txy		; 9B
	php		; 08
	xce		; FB
	brk $97.b		; 00 97
	tda		; 7B
	stx $77.b,Y		; 96 77
	sta ($71.b),Y		; 91 71
	lda $37BF1B.l,X		; BF 1B BF 37
	adc $777F37.l,X		; 7F 37 7F 77
	ora [$07.b]		; 07 07
	pld		; 2B
	plp		; 28
	and #$21.b		; 29 21
	rol $F520.w		; 2E 20 F5
	sta ($AE.b),Y		; 91 AE
	dey		; 88
	tyx		; BB
	dey		; 88
	adc [$44.b],Y		; 77 44
	adc $45.b,X		; 75 45
	dec $7FC7.w,X		; DE C7 7F
	sbc $FFFC04.l,X		; FF 04 FC FF
	ror $77FF.w		; 6E FF 77
	sbc $BBFF77.l,X		; FF 77 FF BB
	sbc $39FFBA.l,X		; FF BA FF 39
	sed		; F8
	bra -101.b		; 80 9B
	tya		; 98
	cpx #$C0.b		; E0 C0
	cpy #$00.b		; C0 00
	rti		; 40

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	sty $C440.w		; 8C 40 C4
	brk $C6.b		; 00 C6
	bit $66.b		; 24 66
	bpl 114.b		; 10 72
	brk $32.b		; 00 32
	php		; 08
	tas		; 1B
	cop $1B.b		; 02 1B
	beq -128.b		; F0 80
	sec		; 38
	brk $7C.b		; 00 7C
	mvp $00,$18		; 44 18 00
	bit $1C20.w		; 2C 20 1C
	bpl   6.b		; 10 06
	cop $0C.b		; 02 0C
	php		; 08
	ora $18.b,S		; 03 18
	ora $100618.l		; 0F 18 06 10
	ora [$11.b]		; 07 11
	tsb $0E11.w		; 0C 11 0E
	ora ($08.b,S),Y		; 13 08
	and ($1C.b)		; 32 1C
	rol $0F.b,X		; 36 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora $000E00.l		; 0F 00 0E 00
	asl $0C00.w		; 0E 00 0C
	brk $1C.b		; 00 1C
	bpl   8.b		; 10 08
	brk $20.b		; 00 20
	pla		; 68
	brk $68.b		; 00 68
	brk $2C.b		; 00 2C
	clc		; 18
	bit $3400.w,X		; 3C 00 34
	php		; 08
	asl $3E34.w,X		; 1E 34 3E
	rol $102F.w		; 2E 2F 10
	brk $30.b		; 00 30
	jsr $0818.w		; 20 18 08
	brk $00.b		; 00 00
	clc		; 18
	bpl   4.b		; 10 04
	tsb $38.b		; 04 38
	php		; 08
	sec		; 38
	bpl -121.b		; 10 87
	tsb $0C41.w		; 0C 41 0C
	ora $06.b,S		; 03 06
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	brk $0C.b		; 00 0C
	cop $18.b		; 02 18
	asl $0318.w		; 0E 18 03
	brk $07.b		; 00 07
	tsb $01.b		; 04 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	tsb $0F.b		; 04 0F
	php		; 08
	ora [$00.b]		; 07 00
	bra  35.b		; 80 23
	cpy #$61.b		; C0 61
	cpy #$60.b		; C0 60
	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	cmp ($01.b,X)		; C1 01
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -116.b		; 80 8C
	php		; 08
	sty $C440.w		; 8C 40 C4
	jsr $04E6.w		; 20 E6 04
	ror $14.b		; 66 14
	adc [$16.b],Y		; 77 16
	and [$12.b],Y		; 37 12
	and ($78.b,S),Y		; 33 78
	php		; 08
	beq -128.b		; F0 80
	sec		; 38
	brk $5C.b		; 00 5C
	mvp $20,$38		; 44 38 20
	rol A		; 2A
	jsl $0C0008.l		; 22 08 00 0C
	brk $6B.b		; 00 6B
	trb $66.b		; 14 66
	ora $1866.w,Y		; 19 66 18
	lsr $38.b		; 46 38
	eor [$28.b],Y		; 57 28
	eor [$28.b],Y		; 57 28
	sta $609F60.l,X		; 9F 60 9F 60
	trb $28.b		; 14 28
	clc		; 18
	jsr $2019.w		; 20 19 20
	and $2800.w,Y		; 39 00 28
	brk $28.b		; 00 28
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	stx $7C.b		; 86 7C
	stx $E4.b		; 86 E4
	asl $1E20.w,X		; 1E 20 1E
	jsr $40EE.w		; 20 EE 40
	jsr ($5896.w,X)		; FC 96 58
	cmp [$C6.b],Y		; D7 C6
	stz $7820.w		; 9C 20 78
	bra  -8.b		; 80 F8
	clc		; 18
	jsr ($5C1C.w,X)		; FC 1C 5C
	jmp $8080.w		; 4C 80 80
	rts		; 60

	rti		; 40

	inc $A738.w,X		; FE 38 A7
	adc [$B8.b]		; 67 B8
	eor $AC40A0.l,X		; 5F A0 40 AC
	mvn $50,$AD		; 54 AD 50
	sta $718F72.l		; 8F 72 8F 71
	sta [$79.b]		; 87 79
	adc $581B.w,X		; 7D 1B 58
	and [$40.b]		; 27 40
	and $522357.l,X		; 3F 57 23 52
	jsl $710072.l		; 22 72 00 71
	brk $79.b		; 00 79
	brk $FD.b		; 00 FD
	sbc $00FFFB.l,X		; FF FB FF 00
	brk $F6.b		; 00 F6
	stz $F6.b,X		; 74 F6
	pei ($E6.b)		; D4 E6
	cpy $66.b		; C4 66
	mvp $24,$76		; 44 76 24
	sbc $01FF.w,Y		; F9 FF 01
	sbc $7FFF00.l,X		; FF 00 FF 7F
	phd		; 0B
	cmp $1BDF0B.l,X		; DF 0B DF 1B
	cmp $9BBF9B.l,X		; DF 9B BF 9B
	eor $81.b		; 45 81
	cmp ($EC.b,X)		; C1 EC
	phd		; 0B
	php		; 08
	sta [$96.b],Y		; 97 96
	sta $84.b		; 85 84
	cmp $DA95.w,X		; DD 95 DA
	sta ($DE.b)		; 92 DE
	sta ($01.b)		; 92 01
	inc $FE80.w,X		; FE 80 FE
	brk $FC.b		; 00 FC
	dec $78.b,X		; D6 78
	inc $FF7A.w		; EE 7A FF
	ror A		; 6A
	sbc $6DFF6D.l,X		; FF 6D FF 6D
	cmp $8081BF.l,X		; DF BF 81 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpx #$80.b		; E0 80
	rts		; 60

	rti		; 40

	sta $7F.b,S		; 83 7F
	bra 127.b		; 80 7F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	tad		; 5B
	bit $2B.b		; 24 2B
	trb $29.b		; 14 29
	asl $2D.b,X		; 16 2D
	ora ($15.b)		; 12 15
	cop $17.b		; 02 17
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $24.b		; 00 24
	brk $14.b		; 00 14
	brk $16.b		; 00 16
	brk $12.b		; 00 12
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $9E.b		; 00 9E
	bvs -98.b		; 70 9E
	bvs -33.b		; 70 DF
	bmi -41.b		; 30 D7
	bmi -57.b		; 30 C7
	bmi  71.b		; 30 47
	bmi 103.b		; 30 67
	bpl  47.b		; 10 2F
	clc		; 18
	and $202F20.l		; 2F 20 2F 20
	ora $000F00.l		; 0F 00 0F 00
	ora $101F10.l,X		; 1F 10 1F 10
	ora $000700.l		; 0F 00 07 00
	dey		; 88
	sed		; F8
	dey		; 88
	sed		; F8
	tay		; A8
	cld		; D8
	ldy #$D8.b		; A0 D8
	bit $5C.b		; 24 5C
	bit $4C.b		; 24 4C
	jsl $46024E.l		; 22 4E 02 46
	ora [$10.b],Y		; 17 10
	ora [$10.b],Y		; 17 10
	ora [$00.b]		; 07 00
	ora $088B08.l		; 0F 08 8B 08
	sta $00.b,S		; 83 00
	sta $04.b		; 85 04
	sta ($00.b,X)		; 81 00
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	rti		; 40

	rts		; 60

	brk $20.b		; 00 20
	brk $30.b		; 00 30
	jsr $2030.w		; 20 30 20
	bmi   0.b		; 30 00
	bpl -64.b		; 10 C0
	rti		; 40

	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpx $62FC.w		; EC FC 62
	inc $0E06.w,X		; FE 06 0E
	tsb $040C.w		; 0C 0C 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	jsr ($FEC4.w,X)		; FC C4 FE
	cop $FF.b		; 02 FF
	cop $FF.b		; 02 FF
	tsb $1E.b		; 04 1E
	brk $1E.b		; 00 1E
	brk $0C.b		; 00 0C
	tsb $13.b		; 04 13
	brk $12.b		; 00 12
	tsb $16.b		; 04 16
	brk $16.b		; 00 16
	brk $34.b		; 00 34
	bpl  52.b		; 10 34
	php		; 08
	bit $2C00.w		; 2C 00 2C
	asl $0C02.w		; 0E 02 0C
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	tsb $18.b		; 04 18
	bpl   8.b		; 10 08
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	php		; 08
	pha		; 48
	jmp ($6C68.w)		; 6C 68 6C
	stz $34.b,X		; 74 34
	lsr $6E1E.w,X		; 5E 1E 6E
	cop $53.b		; 02 53
	ora ($1F.b),Y		; 11 1F
	ora $700000.l,X		; 1F 00 00 70
	jsr $0070.w		; 20 70 00
	bit $3E00.w		; 2C 00 3E
	jsr $1C1E.w		; 20 1E 1C
	ora $001F0E.l,X		; 1F 0E 1F 00
	brk $00.b		; 00 00
	asl A		; 0A
	phd		; 0B
	ora $070D.w		; 0D 0D 07
	tsb $06.b		; 04 06
	tsb $06.b		; 04 06
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $0F.b		; 05 0F
	cop $04.b		; 02 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpx #$E0.b		; E0 E0
	beq  -8.b		; F0 F8
	sed		; F8
	sty $04.b,X		; 94 04
	jmp ($003C.w,X)		; 7C 3C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	sei		; 78
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $13.b		; 00 13
	tsb $0917.w		; 0C 17 09
	rol $0E.b,X		; 36 0E
	and [$17.b]		; 27 17
	and ($11.b,X)		; 21 11
	lsr $420E.w		; 4E 0E 42
	ora ($44.b,S),Y		; 13 44
	bit $0C.b		; 24 0C
	brk $09.b		; 00 09
	brk $0F.b		; 00 0F
	ora ($13.b,X)		; 01 13
	asl $0F10.w		; 0E 10 0F
	asl $3F.b		; 06 3F
	brk $3F.b		; 00 3F
	plp		; 28
	ora ($E7.b,S),Y		; 13 E7
	adc [$B3.b]		; 67 B3
	sta $FD.b,S		; 83 FD
	ora ($F8.b,X)		; 01 F8
	sed		; F8
	and $596647.l,X		; 3F 47 66 59
	adc $F052.w		; 6D 52 F0
	cmp $FE187C.l		; CF 7C 18 FE
	jmp ($FEFF.w,X)		; 7C FF FE
	sbc $D80707.l,X		; FF 07 07 D8
	ora ($DE.b,X)		; 01 DE
	.db $42, $DC		; 42 DC
	eor $A0B0D0.l		; 4F D0 B0 A0
	inx		; E8
	brk $C4.b		; 00 C4
	brk $BC.b		; 00 BC
	bit $FC.b,X		; 34 FC
	brk $F6.b		; 00 F6
	asl A		; 0A
	jsr ($A601.w,X)		; FC 01 A6
	tas		; 1B
	cpx #$40.b		; E0 40
	bvs 112.b		; 70 70
	sei		; 78
	sei		; 78
	stz $46.b,X		; 74 46
	brk $0B.b		; 00 0B
	rti		; 40

	tad		; 5B
	rti		; 40

	lsr A		; 4A
	cli		; 58
	rti		; 40

	clc		; 18
	cmp $7C.b,S		; C3 7C
	dec $38.b		; C6 38
	stx $30.b		; 86 30
	sty $F8.b		; 84 F8
	sty $0860.w		; 8C 60 08
	bvs  24.b		; 70 18
	cpy #$10.b		; C0 10
	ror $3842.w,X		; 7E 42 38
	brk $7C.b		; 00 7C
	tsb $F8.b		; 04 F8
	bra 112.b		; 80 70
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	dec $04.b		; C6 04
	dec $20.b		; C6 20
	.db $62, $20, $63		; 62 20 63
	cop $63.b		; 02 63
	bpl  49.b		; 10 31
	brk $31.b		; 00 31
	ora #$19.b		; 09 19
	jmp ($7844.w,X)		; 7C 44 78
	rti		; 40

	trb $1E00.w		; 1C 00 1E
	cop $3C.b		; 02 3C
	jsr $000E.w		; 20 0E 00
	ora $000611.l,X		; 1F 11 06 00
	ora $2C06.w,Y		; 19 06 2C
	ora ($5F.b,S),Y		; 13 5F
	jsr $1669.w		; 20 69 16
	adc #$16.b		; 69 16
	lda $B146.w,Y		; B9 46 B1
	lsr $4FB1.w		; 4E B1 4F
	tsb $03.b		; 04 03
	ora ($0C.b,S),Y		; 13 0C
	jsr $061E.w		; 20 1E 06
	sec		; 38
	asl $38.b		; 06 38
	lsr $38.b		; 46 38
	lsr $4C30.w		; 4E 30 4C
	bmi -40.b		; 30 D8
	jsr $10C8.w		; 20 C8 10
	jsr $F44C.w		; 20 4C F4
	asl $9F62.w,X		; 1E 62 9F
	inc $0D.b,X		; F6 0D
	jsr ($0801.w,X)		; FC 01 08
	ora $602020.l		; 0F 20 20 60
	brk $F0.b		; 00 F0
	brk $28.b		; 00 28
	pha		; 48
	jmp ($FA9C.w,X)		; 7C 9C FA
	php		; 08
	inc $F400.w,X		; FE 00 F4
	tsb $4C.b		; 04 4C
	rol $2242.w		; 2E 42 22
	jmp $420C.w		; 4C 0C 42
	ora ($44.b,S),Y		; 13 44
	bit $59.b		; 24 59
	and ($89.b)		; 32 89
	.db $62, $9D, $66		; 62 9D 66
	bit $1F.b		; 24 1F
	jsr $041F.w		; 20 1F 04
	and $083F00.l,X		; 3F 00 3F 08
	ora ($0E.b,S),Y		; 13 0E
	cop $5E.b		; 02 5E
	cop $58.b		; 02 58
	brk $7F.b		; 00 7F
	bra -27.b		; 80 E5
	txs		; 9A
	rtl		; 6B

	mvn $4F,$70		; 54 70 4F
	sbc [$D8.b]		; E7 D8
	sei		; 78
	sbc [$17.b]		; E7 17
	dey		; 88
	ora $800061.l,X		; 1F 61 00 80
	cop $BC.b		; 02 BC
	mvp $4F,$D8		; 44 D8 4F
	bne  88.b		; D0 58
	cpy #$27.b		; C0 27
	cpx #$08.b		; E0 08
	inc $01.b		; E6 01
	sbc $10E8.w		; ED E8 10
	jmp.w [$F424]		; DC 24 F4
	php		; 08
	ldx $1B.b		; A6 1B
	jsr ($E201.w,X)		; FC 01 E2
	eor $E1DE.w,X		; 5D DE E1
	sbc $3600E1.l,X		; FF E1 00 36
	ldy #$96.b		; A0 96
	pha		; 48
	.db $42, $58		; 42 58
	rti		; 40

	cop $00.b		; 02 00
	trb $C140.w		; 1C 40 C1
	sbc $F0C0.w		; ED C0 F0
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
	cmp $0781FF.l		; CF FF 81 07
	bcs  72.b		; B0 48
	lda $48.b,X		; B5 48
	lda $5C.b,S		; A3 5C
	lda $5D.b,S		; A3 5D
	lda $5D.b,S		; A3 5D
	sta $7D.b,S		; 83 7D
	cmp $3F.b,S		; C3 3F
	brk $7F.b		; 00 7F
	pha		; 48
	and [$4A.b],Y		; 37 4A
	and ($5C.b)		; 32 5C
	jsr $205D.w		; 20 5D 20
	eor $7D20.w,X		; 5D 20 7D
	brk $E7.b		; 00 E7
	inc $F3.b		; E6 F3
	xce		; FB
	ora $9A3D.w,X		; 1D 3D 9A
	stz $ECFC.w,X		; 9E FC EC
	cmp $43DD.w,Y		; D9 DD 43
	ora ($5B.b,X)		; 01 5B
	php		; 08
	cmp [$F9.b]		; C7 F9
	adc $FC.b,S		; 63 FC
	ora $98FE.w,X		; 1D FE 98
	adc $C11FE8.l,X		; 7F E8 1F C1
	rol $BE83.w,X		; 3E 83 BE
	lda $5156B7.l,X		; BF B7 56 51
	cmp $4BDB4C.l,X		; DF 4C DB 4B
	ldy $EC24.w,X		; BC 24 EC
	bit $DF.b		; 24 DF
	ora ($77.b,S),Y		; 13 77
	bpl -21.b		; 10 EB
	dey		; 88
	adc $FCA8.w,Y		; 79 A8 FC
	bcs  -1.b		; B0 FF
	ldy $FF.b,X		; B4 FF
	stp		; DB
	sbc $ECFFDB.l,X		; FF DB FF EC
	sbc $77FFEF.l,X		; FF EF FF 77
	bvs -128.b		; 70 80
	bmi -64.b		; 30 C0
	sed		; F8
	brk $EC.b		; 00 EC
	cpx #$24.b		; E0 24
	jsr $E0F6.w		; 20 F6 E0
	adc ($40.b)		; 72 40
	beq  64.b		; F0 40
	bra   1.b		; 80 01
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	cpx #$C0.b		; E0 C0
	cpx #$00.b		; E0 00
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	bmi 112.b		; 30 70
	bvc  48.b		; 50 30
	bvs 112.b		; 70 70
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  -8.b		; 30 F8
	bpl  -8.b		; 10 F8
	bpl  -8.b		; 10 F8
	brk $78.b		; 00 78
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $12.b		; 00 12
	tsb $16.b		; 04 16
	brk $34.b		; 00 34
	bpl  52.b		; 10 34
	brk $24.b		; 00 24
	php		; 08
	bit $2C00.w		; 2C 00 2C
	pha		; 48
	jmp ($000C.w)		; 6C 0C 00
	php		; 08
	brk $18.b		; 00 18
	bpl   8.b		; 10 08
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	php		; 08
	bvs  32.b		; 70 20
	pla		; 68
	jmp ($3474.w)		; 6C 74 34
	lsr $6E1E.w,X		; 5E 1E 6E
	cop $53.b		; 02 53
	ora ($1F.b),Y		; 11 1F
	ora $000000.l,X		; 1F 00 00 00
	brk $70.b		; 00 70
	brk $2C.b		; 00 2C
	brk $3E.b		; 00 3E
	jsr $1C1E.w		; 20 1E 1C
	ora $001F0E.l,X		; 1F 0E 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	sec		; 38
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	sed		; F8
	php		; 08
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$00.b		; E0 00
	cli		; 58
	brk $AC.b		; 00 AC
	dey		; 88
	sed		; F8
	rts		; 60

	jsr ($0004.w,X)		; FC 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$F8.b		; E0 F8
	bvs  96.b		; 70 60
	tsb $00.b		; 04 00
	asl $2A.b,X		; 16 2A
	ora ($1A.b),Y		; 11 1A
	ora ($1D.b,X)		; 01 1D
	brk $0D.b		; 00 0D
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B0.b		; 00 B0
	eor $596E91.l		; 4F 91 6E 59
	rol $59.b		; 26 59
	rol $2B.b		; 26 2B
	trb $2B.b		; 14 2B
	ora [$2D.b],Y		; 17 2D
	trb $2F.b		; 14 2F
	ora $6E304C.l		; 0F 4C 30 6E
	bpl  38.b		; 10 26
	bpl  38.b		; 10 26
	bpl  20.b		; 10 14
	brk $17.b		; 00 17
	brk $17.b		; 00 17
	ora $0F.b,S		; 03 0F
	bpl   1.b		; 10 01
	inc $6EAD.w,X		; FE AD 6E
	cmp ($32.b),Y		; D1 32
	sbc $30.b,X		; F5 30
	cmp $0767CF.l		; CF CF 67 07
	xce		; FB
	ora $FF.b,S		; 03 FF
	sbc $107C7C.l,X		; FF 7C 7C 10
	brk $0C.b		; 00 0C
	brk $3E.b		; 00 3E
	asl $30F9.w		; 0E F9 30
	jsr ($FEF8.w,X)		; FC F8 FE
	jsr ($00FF.w,X)		; FC FF 00
	sta $66.b,X		; 95 66
	lda ($66.b),Y		; B1 66
	tyx		; BB
	eor $FE4FAB.l		; 4F AB 4F FE
	jmp ($8088.w,X)		; 7C 88 80
	inc $9FCF.w,X		; FE CF 9F
	sta $1C0058.l,X		; 9F 58 00 1C
	tsb $33.b		; 04 33
	brk $33.b		; 00 33
	brk $7D.b		; 00 7D
	ora ($F8.b,X)		; 01 F8
	adc $FF37F8.l,X		; 7F F8 37 FF
	adc $C7331F.l		; 6F 1F 33 C7
	ora $418F83.l,X		; 1F 83 8F 41
	eor ($16.b,X)		; 41 16
	asl $0101.w		; 0E 01 01
	rol $14.b,X		; 36 14
	cmp [$C5.b]		; C7 C5
	ora $F3.b,S		; 03 F3
	ora $3F.b,S		; 03 3F
	sta ($7F.b,X)		; 81 7F
	cpy #$BF.b		; C0 BF
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	cmp ($FF.b,X)		; C1 FF
	asl $8FCB.w,X		; 1E CB 8F
	plx		; FA
	cpx $F7F0.w		; EC F0 F7
	sbc ($F7.b),Y		; F1 F7
	sbc ($FA.b),Y		; F1 FA
	beq  99.b		; F0 63
	adc ($A3.b),Y		; 71 A3
	tay		; A8
	eor [$54.b],Y		; 57 54
	and $F0C32E.l		; 2F 2E C3 F0
	sbc ($F8.b,X)		; E1 F8
	sbc ($F8.b,X)		; E1 F8
	sbc ($FD.b,X)		; E1 FD
	and ($FC.b,X)		; 21 FC
	bra  -4.b		; 80 FC
	mvp $AE,$F8		; 44 F8 AE
	beq   0.b		; F0 00
	bra -64.b		; 80 C0
	cpy #$2060.w		; C0 60 20
	sed		; F8
	sei		; 78
	cmp $1F2FBF.l,X		; DF BF 2F 1F
	rep #$01		; C2 01
	clv		; B8
	rti		; 40

	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	cld		; D8
	beq -65.b		; F0 BF
	stx $037F.w		; 8E 7F 03
	sbc $403F00.l,X		; FF 00 3F 40
	ora $89.b,S		; 03 89
	ror $49.b,X		; 76 49
	rol $49.b,X		; 36 49
	rol $49.b,X		; 36 49
	rol $49.b,X		; 36 49
	rol $49.b,X		; 36 49
	rol $2C.b,X		; 36 2C
	ora ($2C.b,S),Y		; 13 2C
	ora ($76.b,S),Y		; 13 76
	brk $36.b		; 00 36
	brk $36.b		; 00 36
	brk $36.b		; 00 36
	brk $36.b		; 00 36
	brk $36.b		; 00 36
	brk $13.b		; 00 13
	brk $13.b		; 00 13
	brk $D7.b		; 00 D7
	sty $FD.b		; 84 FD
	brk $8F.b		; 00 8F
	adc ($93.b,S),Y		; 73 93
	adc ($DE.b,S),Y		; 73 DE
	bmi -41.b		; 30 D7
	bmi -49.b		; 30 CF
	sec		; 38
	plb		; AB
	clc		; 18
	lda $0B0B3B.l,X		; BF 3B 0B 0B
	and ($30.b,S),Y		; 33 30
	bit $0F20.w		; 2C 20 0F
	brk $0F.b		; 00 0F
	brk $17.b		; 00 17
	bpl   7.b		; 10 07
	brk $B5.b		; 00 B5
	sty $FF.b		; 84 FF
	eor [$DF.b]		; 47 DF
	cmp $88FC74.l		; CF 74 FC 88
	sed		; F8
	php		; 08
	sei		; 78
	cpy $7C.b		; C4 7C
	bne 108.b		; D0 6C
	sbc $B8FF7B.l,X		; FF 7B FF B8
	jsr ($FB30.w,X)		; FC 30 FB
	dey		; 88
	eor [$50.b],Y		; 57 50
	cmp [$40.b]		; C7 40
	phb		; 8B
	php		; 08
	sta [$04.b]		; 87 04
	sed		; F8
	brk $18.b		; 00 18
	cpy #$E098.w		; C0 98 E0
	dey		; 88
	cpx #$704C.w		; E0 4C 70
	lsr $70.b		; 46 70
	jsr $2030.w		; 20 30 20
	sec		; 38
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	ldy #$A020.w		; A0 20 A0
	jsr $00C0.w		; 20 C0 00
	bne  16.b		; D0 10
	lda [$1C.b]		; A7 1C
	cmp $0C.b,X		; D5 0C
	eor ($8C.b,X)		; 41 8C
	lda $46.b,S		; A3 46
	cpx #$7106.w		; E0 06 71
	ora $1C.b,S		; 03 1C
	ora $00.b,S		; 03 00
	ora ($0B.b,X)		; 01 0B
	php		; 08
	ora $00.b,S		; 03 00
	sta [$04.b]		; 87 04
	eor ($00.b,X)		; 41 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	bra  60.b		; 80 3C
	nop		; EA
	rol $E9.b,X		; 36 E9
	and [$C9.b],Y		; 37 C9
	ora ($C8.b,S),Y		; 13 C8
	ora ($E0.b),Y		; 11 E0
	ora $1870.w,Y		; 19 70 18
	beq -104.b		; F0 98
	sbc [$24.b]		; E7 24
	cmp ($00.b,X)		; C1 00
	rep #$02		; C2 02
	cpx #$E000.w		; E0 00 E0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $60.b		; 00 60
	brk $10.b		; 00 10
	clc		; 18
	bpl  28.b		; 10 1C
	php		; 08
	tsb $0C08.w		; 0C 08 0C
	bra -122.b		; 80 86
	mvp $20,$C6		; 44 C6 20
.INDEX 8
	sep #$10		; E2 10
	adc ($E0.b,S),Y		; 73 E0
	brk $E8.b		; 00 E8
	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	jmp ($B804.w,X)		; 7C 04 B8
	bra  92.b		; 80 5C
	rti		; 40

	rol $0022.w		; 2E 22 00
	tya		; 98
	bvc -40.b		; 50 D8
	bmi  -8.b		; 30 F8
	bpl 124.b		; 10 7C
	clc		; 18
	bit $3C08.w,X		; 3C 08 3C
	php		; 08
	asl $1E04.w,X		; 1E 04 1E
	beq -112.b		; F0 90
	jsr $4000.w		; 20 00 40
	rti		; 40

	plp		; 28
	plp		; 28
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	cop $0F.b		; 02 0F
	inc A		; 1A
	ora $151717.l,X		; 1F 17 17 15
	ora [$1B.b],Y		; 17 1B
	tas		; 1B
	ora $080D09.l		; 0F 09 0D 08
	tsb $0408.w		; 0C 08 04
	tsb $1C.b		; 04 1C
	tsb $1C.b		; 04 1C
	php		; 08
	asl $1F0A.w,X		; 1E 0A 1F
	tsb $09.b		; 04 09
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	cpx #$F0.b		; E0 F0
	beq  40.b		; F0 28
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $38.b		; 00 38
	brk $64.b		; 00 64
	clc		; 18
	ror $C510.w		; 6E 10 C5
	dec A		; 3A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	jsr $3C00.w		; 20 00 3C
	dec A		; 3A
	rti		; 40

	ora [$0C.b]		; 07 0C
	tsb $0C.b		; 04 0C
	brk $18.b		; 00 18
	ora $311739.l		; 0F 39 17 31
	asl $2C61.w		; 0E 61 2C
	adc ($2E.b,X)		; 61 2E
	adc $03.b,S		; 63 03
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	php		; 08
	asl $10.b,X		; 16 10
	asl $3F00.w		; 0E 00 3F
	and ($1E.b,X)		; 21 1E
	brk $1C.b		; 00 1C
	brk $80.b		; 00 80
	cmp ($80.b,X)		; C1 80
	cmp ($00.b,X)		; C1 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	tya		; 98
	bpl -100.b		; 10 9C
	sei		; 78
	jsr ($EE28.w,X)		; FC 28 EE
	bit $66.b		; 24 66
	jsr $0263.w		; 20 63 02
	adc $10.b,S		; 63 10
	and ($60.b),Y		; 31 60
	brk $E8.b		; 00 E8
	dey		; 88
	brk $00.b		; 00 00
	mvn $18,$44		; 54 44 18
	brk $1E.b		; 00 1E
	cop $3C.b		; 02 3C
	jsr $010F.w		; 20 0F 01
	clc		; 18
	.db $42, $1C		; 42 1C
	dec $18.b		; C6 18
	dec $70.b		; C6 70
	cpy $78.b		; C4 78
	cpy $C860.w		; CC 60 C8
	bmi -104.b		; 30 98
	jsr $3C90.w		; 20 90 3C
	brk $78.b		; 00 78
	rti		; 40

	jmp ($3844.w,X)		; 7C 44 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	dec $04.b		; C6 04
	dec $20.b		; C6 20
	.db $62, $00, $63		; 62 00 63
	ora ($33.b)		; 12 33
	php		; 08
	and $1900.w,Y		; 39 00 19
	ora $0D.b		; 05 0D
	bit $7804.w,X		; 3C 04 78
	rti		; 40

	trb $3E00.w		; 1C 00 3E
	jsl $16000C.l		; 22 0C 00 16
	bpl  15.b		; 10 0F
	ora #$0002.w		; 09 02 00
	cop $01.b		; 02 01
	ora $02.b		; 05 02
	phd		; 0B
	tsb $13.b		; 04 13
	tsb $0F10.w		; 0C 10 0F
	and ($1E.b,X)		; 21 1E
	and #$4B16.w		; 29 16 4B
	bit $01.b,X		; 34 01
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	ora $0C.b,S		; 03 0C
	ora $0F.b,S		; 03 0F
	brk $1E.b		; 00 1E
	brk $16.b		; 00 16
	brk $34.b		; 00 34
	brk $01.b		; 00 01
	inc $D12E.w,X		; FE 2E D1
	cmp $2A.b,X		; D5 2A
	lsr $6FA5.w,X		; 5E A5 6F
	sty $6A.b,X		; 94 6A
	sta ($73.b),Y		; 91 73
	.db $82, $F3, $48		; 82 F3 48
	inc $D100.w,X		; FE 00 D1
	rol $F10A.w		; 2E 0A F1
	ldy #$51.b		; A0 51
	bcc  65.b		; 90 41
	sta $40.b,X		; 95 40
	sty $0400.w		; 8C 00 04
	plp		; 28
	xba		; EB
	lda #$D0D7.w		; A9 D7 D0
	eor [$50.b]		; 47 50
	sty $15A3.w		; 8C A3 15
	txa		; 8A
	and $1BC4B8.l,X		; 3F B8 C4 1B
	cmp $F60F00.l		; CF 00 0F F6
	bra  -8.b		; 80 F8
	brk $FB.b		; 00 FB
	brk $7B.b		; 00 7B
	bra  -5.b		; 80 FB
	bpl 123.b		; 10 7B
	ora $38.b,S		; 03 38
	brk $3C.b		; 00 3C
	bit $7480.w		; 2C 80 74
	cpy #$AA.b		; C0 AA
	mvp $0C,$F2		; 44 F2 0C
	ldx $7A40.w,Y		; BE 40 7A
	sty $2A.b		; 84 2A
	cpy $FE.b		; C4 FE
	brk $D8.b		; 00 D8
	tya		; 98
	clc		; 18
	clc		; 18
	mvn $08,$50		; 54 50 08
	sty $50.b		; 84 50
	sty $94.b,X		; 94 94
	bpl -44.b		; 10 D4
	bpl   0.b		; 10 00
	brk $AD.b		; 00 AD
	and $2F.b		; 25 2F
	and $5B.b		; 25 5B
	eor #$495B.w		; 49 5B 49
	stp		; DB
	cmp #$889A.w		; C9 9A 88
	tsx		; BA
	php		; 08
	tsx		; BA
	php		; 08
	adc $DAFF5A.l,X		; 7F 5A FF DA
	sbc $B6FFB6.l,X		; FF B6 FF B6
	sbc $77FF36.l,X		; FF 36 FF 77
	adc $777F77.l,X		; 7F 77 7F 77
	eor $131547.l		; 4F 47 15 13
	lsr $6F4D.w		; 4E 4D 6F
	rol $67.b		; 26 67
	jsl $F392F7.l		; 22 F7 92 F3
	bcc -77.b		; 90 B3
	bcc  18.b		; 90 12
	sbc [$B8.b],Y		; F7 B8
	xba		; EB
	jsr ($F6B1.w,X)		; FC B1 F6
	bne  -6.b		; D0 FA
	cld		; D8
	plx		; FA
	pla		; 68
	jsr ($FC6C.w,X)		; FC 6C FC
	jmp ($0000.w)		; 6C 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $00.b,S		; 03 00
	ora $02.b		; 05 02
	ora $02.b		; 05 02
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	lda $59.b		; A5 59
	jmp ($CA90.w)		; 6C 90 CA
	rol $D6.b,X		; 36 D6
	bit $6993.w		; 2C 93 69
	ldx $A459.w		; AE 59 A4
	eor ($3B.b),Y		; 51 3B
	phx		; DA
	eor $9023.w,Y		; 59 23 90
	adc $31.b,S		; 63 31
	cpy #$23.b		; C0 23
	cpy #$66.b		; C0 66
	bra  71.b		; 80 47
	sta ($4E.b,X)		; 81 4E
	bra -36.b		; 80 DC
	brk $0B.b		; 00 0B
	clc		; 18
	ora $18.b,S		; 03 18
	ora $0C.b		; 05 0C
	ora $0C.b		; 05 0C
	ora ($0C.b,X)		; 01 0C
	cop $06.b		; 02 06
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	ora [$00.b]		; 07 00
	ora $000308.l		; 0F 08 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	bcc  54.b		; 90 36
	cpy $36.b		; C4 36
	cpx $36.b		; E4 36
	cpy #$12.b		; C0 12
	cpx #$12.b		; E0 12
	inx		; E8
	inc A		; 1A
	cpx #$1A.b		; E0 1A
	bvs  27.b		; 70 1B
	cpy $E804.w		; CC 04 E8
	jsr $00C8.w		; 20 C8 00
	cpx $EC00.w		; EC 00 EC
	brk $E4.b		; 00 E4
	brk $F4.b		; 00 F4
	bpl -26.b		; 10 E6
	cop $0B.b		; 02 0B
	clc		; 18
	ora $100618.l		; 0F 18 06 10
	tsb $1E31.w		; 0C 31 1E
	and ($08.b,S),Y		; 33 08
	jsl $10261C.l		; 22 1C 26 10
	bit $07.b		; 24 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	bpl  12.b		; 10 0C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $90.b		; 00 90
	sbc ($10.b),Y		; F1 10
	sbc ($00.b),Y		; F1 00
	lda ($00.b),Y		; B1 00
	and ($08.b),Y		; 31 08
	ora $1908.w,Y		; 19 08 19
	brk $19.b		; 00 19
	brk $19.b		; 00 19
	asl $8E00.w		; 0E 00 8E
	bra  30.b		; 80 1E
	bpl  30.b		; 10 1E
	bpl   6.b		; 10 06
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	php		; 08
	asl $0308.w		; 0E 08 03
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	cop $03.b		; 02 03
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	ora ($81.b,X)		; 01 81
	sta ($80.b,X)		; 81 80
	bra   3.b		; 80 03
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $81.b		; 00 81
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bcs -32.b		; B0 E0
	beq -80.b		; F0 B0
	sed		; F8
	sei		; 78
	jmp ($3EFE.w,X)		; 7C FE 3E
	lda $01.b		; A5 01
	sta $00000F.l,X		; 9F 0F 00 00
	cpx #$A0.b		; E0 A0
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	cpx #$80.b		; E0 80
	rol $1F00.w,X		; 3E 00 1F
	asl $000F.w,X		; 1E 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $F300.w		; 1C 00 F3
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0000.w		; 0C 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($05.b,X)		; 01 05
	cop $09.b		; 02 09
	asl $13.b		; 06 13
	tsb $1C23.w		; 0C 23 1C
	lsr $28.b,X		; 56 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	tsb $1C00.w		; 0C 00 1C
	brk $28.b		; 00 28
	ora ($96.b),Y		; 11 96
	pla		; 68
	adc [$99.b]		; 67 99
	cmp $41BE30.l		; CF 30 BE 41
	inc $E20F.w,X		; FE 0F E2
	.db $62, $6F, $63		; 62 6F 63
	sbc $71.b,X		; F5 71
	adc #$9800.w		; 69 00 98
	brk $30.b		; 00 30
	brk $40.b		; 00 40
	brk $0E.b		; 00 0E
	brk $7F.b		; 00 7F
	ora $DC7E.w,X		; 1D 7E DC
	and $50AEEE.l,X		; 3F EE AE 50
	clv		; B8
	.db $42, $F8		; 42 F8
	stx $8E30.w		; 8E 30 8E
	dey		; 88
	cpx $40.b		; E4 40
	jmp ($0038.w,X)		; 7C 38 00
	ldy $90.b,X		; B4 90
	pha		; 48
	sty $BC.b,X		; 94 BC
	rti		; 40

	stz $04.b,X		; 74 04
	jmp ($780C.w,X)		; 7C 0C 78
	rts		; 60

	ldy #$A0.b		; A0 A0
	cpy #$C0.b		; C0 C0
	cli		; 58
	pha		; 48
	cpy $CB1B.w		; CC 1B CB
	jmp.w [$1E0D]		; DC 0D 1E
	eor $B3D34F.l		; 4F 4F D3 B3
	cpy $F30C.w		; CC 0C F3
	cmp ($54.b,S),Y		; D3 54
	trb $03.b		; 14 03
	sec		; 38
	cpy #$3D.b		; C0 3D
	cpy $FE.b		; C4 FE
	cmp [$BF.b]		; C7 BF
	sta ($3F.b,X)		; 81 3F
	tsb $3F.b		; 04 3F
	cmp ($0F.b),Y		; D1 0F
	ldy $69AB.w,X		; BC AB 69
	stx $D7.b,Y		; 96 D7
	jsr $60A7.w		; 20 A7 60
	cpx $D6EC.w		; EC EC D6
	cmp ($CE.b)		; D2 CE
	dec $280C.w		; CE 0C 28
	ldx $86A6.w		; AE A6 86
	bvc   0.b		; 50 00
	tsx		; BA
	php		; 08
	sei		; 78
	cpy $DEF0.w		; CC F0 DE
	cpx $F05E.w		; EC 5E F0
	php		; 08
	inc $84.b,X		; F6 84
	sbc $BB08BB.l,X		; FF BB 08 BB
	php		; 08
	xce		; FB
	php		; 08
	sta $3FC77F.l		; 8F 7F C7 3F
	pha		; 48
	sec		; 38
	pld		; 2B
	clc		; 18
	ora $18.b,S		; 03 18
	adc $777F77.l,X		; 7F 77 7F 77
	ora $303F07.l		; 0F 07 3F 30
	clc		; 18
	clc		; 18
	ora [$10.b],Y		; 17 10
	ora [$00.b]		; 07 00
	ora $88B908.l		; 0F 08 B9 88
	lda $BE88.w,Y		; B9 88 BE
	dey		; 88
	beq  -2.b		; F0 FE
	sty $4CFE.w		; 8C FE 4C
	ror $3684.w,X		; 7E 84 36
	cpx #$33.b		; E0 33
	inc $FE76.w,X		; FE 76 FE
	ror $F8.b,X		; 76 F8
	bvs  -4.b		; 70 FC
	tsb $5050.w		; 0C 50 50
	bcc  16.b		; 90 10
	inx		; E8
	jsr $02CE.w		; 20 CE 02
	ora #$0B06.w		; 09 06 0B
	tsb $0A.b		; 04 0A
	ora $12.b		; 05 12
	ora $0D12.w		; 0D 12 0D
	ora ($0D.b)		; 12 0D
	bpl  15.b		; 10 0F
	bpl  15.b		; 10 0F
	asl $01.b		; 06 01
	tsb $03.b		; 04 03
	ora $02.b		; 05 02
	ora $0D02.w		; 0D 02 0D
	cop $0D.b		; 02 0D
	cop $0F.b		; 02 0F
	brk $0F.b		; 00 0F
	brk $6F.b		; 00 6F
	ldx $77.b		; A6 77
	lda ($5D.b)		; B2 5D
	cpy $63EB.w		; CC EB 63
	lda $3D991F.l,X		; BF 1F 99 3D
	lda $1D3C.w,X		; BD 3C 1D
	lda $18BE.w,X		; BD BE 18
	ldx $FE0C.w,Y		; BE 0C FE
	and ($7F.b)		; 32 7F
	trb $601F.w		; 1C 1F 60
	ora ($7E.b,X)		; 01 7E
	clc		; 18
	ror $7E99.w,X		; 7E 99 7E
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	cop $06.b		; 02 06
	ora ($0C.b,X)		; 01 0C
	ora $0C.b		; 05 0C
	ora $18.b,S		; 03 18
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $0B6008.l		; 0F 08 60 0B
	stx $9F.b,Y		; 96 9F
	stx $9F.b		; 86 9F
	cop $1B.b		; 02 1B
	tay		; A8
	and $3988.w,Y		; 39 88 39
	cpy #$71.b		; C0 71
	bpl 113.b		; 10 71
	inc $02.b,X		; F6 02
	rts		; 60

	brk $70.b		; 00 70
	bpl -28.b		; 10 E4
	brk $C6.b		; 00 C6
	brk $E6.b		; 00 E6
	jsr $109E.w		; 20 9E 10
	dec $1840.w		; CE 40 18
	jmp ($6C30.w)		; 6C 30 6C
	brk $48.b		; 00 48
	bpl  88.b		; 10 58
	brk $58.b		; 00 58
	brk $D0.b		; 00 D0
	rti		; 40

	bne  32.b		; D0 20
	bcs  48.b		; B0 30
	jsr $0818.w		; 20 18 08
	bmi   0.b		; 30 00
	jsr $3000.w		; 20 00 30
	bpl  96.b		; 10 60
	rti		; 40

	jsr $4000.w		; 20 00 40
	brk $00.b		; 00 00
	ora #$0D04.w		; 09 04 0D
	tsb $0D.b		; 04 0D
	tsb $0D.b		; 04 0D
	brk $0D.b		; 00 0D
	brk $0D.b		; 00 0D
	tsb $0D.b		; 04 0D
	tsb $0D.b		; 04 0D
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	asl $04.b		; 06 04
	asl $04.b		; 06 04
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	bpl  15.b		; 10 0F
	ora ($0D.b)		; 12 0D
	inc A		; 1A
	ora $0A.b		; 05 0A
	ora $0D.b		; 05 0D
	brk $0D.b		; 00 0D
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $0F.b		; 00 0F
	brk $0D.b		; 00 0D
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5C.b		; 00 5C
	stz $9C5D.w		; 9C 5D 9C
	eor $6C9C.w		; 4D 9C 6C
	sty $CC2C.w		; 8C 2C CC
	bit $CE.b		; 24 CE
	rol $0CCE.w		; 2E CE 0C
	dec $3F9D.w		; CE 9D 3F
	sty $8C3E.w		; 8C 3E 8C
	rol $1F8D.w,X		; 3E 8D 1F
	cpy $1F.b		; C4 1F
	cpy #$1F.b		; C0 1F
	cpy $1F.b		; C4 1F
	cpy $9F3F.w		; CC 3F 9F
	jmp $9F41A1.l		; 5C A1 41 9F
	rts		; 60

	eor $304F20.l,X		; 5F 20 4F 30
	rol $18.b		; 26 18
	inc A		; 1A
	tsb $07.b		; 04 07
	brk $40.b		; 00 40
	rol $1E41.w,X		; 3E 41 1E
	rts		; 60

	brk $20.b		; 00 20
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$FC.b		; C0 FC
	jsr ($625A.w,X)		; FC 5A 62
	jsr $0C34.w		; 20 34 0C
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra  -4.b		; 80 FC
	bit $00FE.w,X		; 3C FE 00
	sbc $087F00.l,X		; FF 00 7F 08
	rol $1C00.w,X		; 3E 00 1C
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	ldy #$40.b		; A0 40
	jsr $A0C0.w		; 20 C0 A0
	rti		; 40

	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $24.b,X		; 16 24
	rol $34.b,X		; 36 34
	rol $3A.b,X		; 36 3A
	inc A		; 1A
	and $01370F.l		; 2F 0F 37 01
	and #$0F08.w		; 29 08 0F
	ora $38040C.l		; 0F 0C 04 38
	bpl  56.b		; 10 38
	brk $16.b		; 00 16
	brk $1F.b		; 00 1F
	bpl  15.b		; 10 0F
	asl $070F.w		; 0E 0F 07
	ora $000000.l		; 0F 00 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $02.b		; 05 02
	asl A		; 0A
	ora $12.b		; 05 12
	ora $0F10.w		; 0D 10 0F
	jsr $001F.w		; 20 1F 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($05.b,X)		; 01 05
	cop $0D.b		; 02 0D
	cop $0F.b		; 02 0F
	brk $1F.b		; 00 1F
	brk $B7.b		; 00 B7
	pha		; 48
	ror $DC91.w		; 6E 91 DC
	jsl $7DC63B.l		; 22 3B C6 7D
	stz $23EF.w		; 9C EF 23
	cmp $BF59.w,Y		; D9 59 BF
	rol $48.b		; 26 48
	bmi -112.b		; 30 90
	rts		; 60

	and ($C0.b,X)		; 21 C0
	cmp ($00.b,X)		; C1 00
	sta $1C3E00.l,X		; 9F 00 3E 1C
	adc $583E26.l,X		; 7F 26 3E 58
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	trb $7303.w		; 1C 03 73
	tsb $00FF.w		; 0C FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	tsb $0000.w		; 0C 00 00
	brk $0C.b		; 00 0C
	ora $1B.b,S		; 03 1B
	tsb $73.b		; 04 73
	tsb $3FC0.w		; 0C C0 3F
	cop $FD.b		; 02 FD
	cmp [$38.b]		; C7 38
	sta $00FB60.l,X		; 9F 60 FB 00
	ora $00.b,S		; 03 00
	tsb $03.b		; 04 03
	tsb $3F03.w		; 0C 03 3F
	brk $FD.b		; 00 FD
	brk $38.b		; 00 38
	ora ($60.b,X)		; 01 60
	brk $04.b		; 00 04
	brk $0F.b		; 00 0F
	dec $1CCF.w,X		; DE CF 1C
	dec $CE1D.w		; CE 1D CE
	ora $07D8.w,Y		; 19 D8 07
	sta $371830.l,X		; 9F 30 18 37
	and $3E0238.l,X		; 3F 38 02 3E
	tsb $3D.b		; 04 3D
	tsb $3F.b		; 04 3F
	ora ($3A.b,X)		; 01 3A
	ora [$30.b]		; 07 30
	brk $70.b		; 00 70
	sta [$F0.b],Y		; 97 F0
	bpl  -5.b		; 10 FB
	lda $7C.b,X		; B5 7C
	adc $609F98.l		; 6F 98 9F 60
	ora $3DE2.w,X		; 1D E2 3D
.ACCU 16
	rep #$EA		; C2 EA
	tsb $3C.b		; 04 3C
	cpy #$D2.b		; C0 D2
	bit $8A6E.w		; 2C 6E 8A
	clc		; 18
	bne  32.b		; D0 20
.ACCU 16
	rep #$E8		; C2 E8
	asl A		; 0A
	cmp ($10.b)		; D2 10
	trb $10.b		; 14 10
	cpy #$00.b		; C0 00
	bit $D500.w		; 2C 00 D5
	eor ($56.b),Y		; 51 56
	eor ($FE.b)		; 52 FE
	lda ($EE.b)		; B2 EE
	jsl $EE62EE.l		; 22 EE 62 EE
	.db $42, $EE		; 42 EE
	cop $7E.b		; 02 7E
	cop $7F.b		; 02 7F
	rol $ADFF.w		; 2E FF AD
	lda $1D3F0D.l,X		; BF 0D 3F 1D
	adc $1D5F1D.l,X		; 7F 1D 5F 1D
	ora $01031D.l,X		; 1F 1D 03 01
	adc $25EF25.l		; 6F 25 EF 25
	sbc $FC24.w,X		; FD 24 FC
	bit $FA.b		; 24 FA
	jsl $EE22EE.l		; 22 EE 22 EE
	jsl $FD23EF.l		; 22 EF 23 FD
	cmp $D9FC.w,Y		; D9 FC D9
	inc $FFDA.w,X		; FE DA FF
	stp		; DB
	sbc $DDFFDD.l,X		; FF DD FF DD
	sbc $DCFFDD.l,X		; FF DD FF DC
	ora $18.b,S		; 03 18
	ora [$0C.b]		; 07 0C
	ora ($0C.b,X)		; 01 0C
	ora $06.b,S		; 03 06
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	ora $0C.b		; 05 0C
	ora $000308.l		; 0F 08 03 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	sty $36.b,X		; 94 36
	sty $36.b		; 84 36
	cpy #$32.b		; C0 32
	cpx #$33.b		; E0 33
	cpy #$13.b		; C0 13
	bit $37.b		; 24 37
	tsb $37.b		; 04 37
	rti		; 40

	adc ($C8.b)		; 72 C8
	brk $E8.b		; 00 E8
	jsr $20EC.w		; 20 EC 20
	dec $EE02.w		; CE 02 EE
	cop $CA.b		; 02 CA
	cop $EA.b		; 02 EA
	jsl $DF20AC.l		; 22 AC 20 DF
	plp		; 28
	inc $E911.w,X		; FE 11 E9
	asl $FB.b		; 06 FB
	sty $EC.b		; 84 EC
	bpl   0.b		; 10 00
	cld		; D8
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	jsr $0103.w		; 20 03 01
	.db $42, $36		; 42 36
	brk $64.b		; 00 64
	brk $E0.b		; 00 E0
	bpl  32.b		; 10 20
	brk $C0.b		; 00 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	tya		; 98
	brk $90.b		; 00 90
	brk $90.b		; 00 90
	rti		; 40

	bne  64.b		; D0 40
	bne  64.b		; D0 40
	bne  64.b		; D0 40
	bne   0.b		; D0 00
	bne 112.b		; D0 70
	bpl  96.b		; 10 60
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $60.b		; 00 60
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	tsb $3503.w		; 0C 03 35
	asl A		; 0A
	tad		; 5B
	bit $00.b		; 24 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0A.b		; 00 0A
	tsb $24.b		; 04 24
	clc		; 18
	ldx $18.b		; A6 18
	ldy $19.b		; A4 19
	and $19.b		; 25 19
	and [$17.b]		; 27 17
	and ($13.b,X)		; 21 13
	bit $18.b		; 24 18
	ora [$08.b],Y		; 17 08
	ora ($0C.b,S),Y		; 13 0C
	clc		; 18
	ora ($18.b,X)		; 01 18
	ora $19.b,S		; 03 19
	ora $13.b,S		; 03 13
	ora $180F10.l		; 0F 10 0F 18
	ora $08.b,S		; 03 08
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $10.b		; 14 10
	bit $08.b,X		; 34 08
	bit $2C00.w		; 2C 00 2C
	pha		; 48
	jmp ($6C68.w)		; 6C 68 6C
	stz $34.b,X		; 74 34
	lsr $081E.w,X		; 5E 1E 08
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	php		; 08
	bvs  32.b		; 70 20
	bvs   0.b		; 70 00
	bit $3E00.w		; 2C 00 3E
	jsr $1E21.w		; 20 21 1E
	phk		; 4B
	bit $52.b,X		; 34 52
	bit $6C92.w		; 2C 92 6C
	lda ($4C.b)		; B2 4C
	ldx $48.b,Y		; B6 48
	ldx $58.b		; A6 58
	inc $18.b		; E6 18
	asl $3400.w,X		; 1E 00 34
	brk $2C.b		; 00 2C
	ora ($6C.b,X)		; 01 6C
	ora ($4C.b,X)		; 01 4C
	ora ($48.b,X)		; 01 48
	ora ($58.b,X)		; 01 58
	ora ($18.b,X)		; 01 18
	ora ($77.b,X)		; 01 77
	bit $3F.b,X		; 34 3F
	jmp ($F870.w,X)		; 7C 70 F8
	bvs -16.b		; 70 F0
	inc $F6.b		; E6 F6
	sbc $ECEFE3.l		; EF E3 EF EC
	cmp [$E6.b]		; C7 E6
	bit $0CC8.w,X		; 3C C8 0C
	beq  99.b		; F0 63
	sbc $67FF67.l,X		; FF 67 FF 67
	sbc $F043.w,Y		; F9 43 F0
	cpy $CEF0.w		; CC F0 CE
	sed		; F8
	adc $04F687.l,X		; 7F 87 F6 04
	sbc $FF04.w,X		; FD 04 FF
	rol $1B.b,X		; 36 1B
	sta [$D5.b],Y		; 97 D5
	ora $29A1.w,Y		; 19 A1 29
	sta $E6.b,S		; 83 E6
	sta [$00.b]		; 87 00
	ora [$03.b]		; 07 03
	ora [$3B.b]		; 07 3B
	and [$7D.b]		; 27 7D
	eor ($3E.b),Y		; 51 3E
	cmp ($3E.b,X)		; C1 3E
	cpy #$1F.b		; C0 1F
	rti		; 40

	lsr $01FA.w,X		; 5E FA 01
	sbc $3C21C4.l,X		; FF C4 21 3C
	ldy #$2C.b		; A0 2C
	bcs  54.b		; B0 36
	stz $37.b		; 64 37
	lda [$B6.b]		; A7 B6
	adc $F4.b,X		; 75 F4
	asl $01.b		; 06 01
	cmp $00.b,S		; C3 00
	sbc $C0.b,S		; E3 C0
	sbc $CEFFDC.l,X		; FF DC FF CE
	inc $FEDA.w,X		; FE DA FE
	bvc -18.b		; 50 EE
	cop $1F.b		; 02 1F
	trb $6F2F.w		; 1C 2F 6F
	ora [$77.b],Y		; 17 77
	txa		; 8A
	txy		; 9B
	tax		; AA
	tax		; AA
	cpx $A5.b		; E4 A5
	ror A		; 6A
	rol A		; 2A
	cpx $24.b		; E4 24
	clc		; 18
	jsr ($FF0F.w,X)		; FC 0F FF
	asl $FF.b		; 06 FF
	txa		; 8A
	adc $F45FE0.l,X		; 7F E0 5F F4
	eor $FDD7F8.l,X		; 5F F8 D7 FD
	stp		; DB
	ply		; 7A
	cpy $B6.b		; C4 B6
	cpy #$30.b		; C0 30
	bcs 112.b		; B0 70
	bvc  80.b		; 50 50
	bpl  96.b		; 10 60
	rts		; 60

	jsr $E040.w		; 20 40 E0
	rts		; 60

	tsb $E0.b		; 04 E0
	brk $E0.b		; 00 E0
	bmi -64.b		; 30 C0
	bvs -96.b		; 70 A0
	bvs -32.b		; 70 E0
	rts		; 60

	bcc   0.b		; 90 00
	beq  64.b		; F0 40
	bvs  97.b		; 70 61
	ora $120F33.l,X		; 1F 33 0F 12
	asl $060A.w		; 0E 0A 06
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	ora $04040E.l		; 0F 0E 04 04
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	jsr ($23FF.w,X)		; FC FF 23
	and $E21ED2.l,X		; 3F D2 1E E2
	asl $0EF8.w		; 0E F8 0E
	sed		; F8
	asl $0670.w		; 0E 70 06
	ldy $FF86.w,X		; BC 86 FF
	ora $D4.b,S		; 03 D4
	trb $E5.b		; 14 E5
	tsb $F9.b		; 04 F9
	php		; 08
	sbc ($02.b,S),Y		; F3 02
	sbc ($02.b,S),Y		; F3 02
	sbc $7904.w,X		; FD 04 79
	brk $03.b		; 00 03
	clc		; 18
	ora $300618.l		; 0F 18 06 30
	ora $0E31.w,X		; 1D 31 0E
	adc $38.b,S		; 63 38
	.db $62, $10, $46		; 62 10 46
	sec		; 38
	cpy $080F.w		; CC 0F 08
	ora [$00.b]		; 07 00
	ora $000E10.l,X		; 1F 10 0E 00
	bit $1C20.w,X		; 3C 20 1C
	brk $3C.b		; 00 3C
	tsb $70.b		; 04 70
	rti		; 40

	bne 114.b		; D0 72
	trb $76.b		; 14 76
	sty $E6.b		; 84 E6
	jsr $20E6.w		; 20 E6 20
	inc $28.b		; E6 28
	cpx $4C08.w		; EC 08 4C
	brk $4C.b		; 00 4C
	sty $A800.w		; 8C 00 A8
	jsr $2038.w		; 20 38 20
	jmp $445C44.l		; 5C 44 5C 44
	bvc  64.b		; 50 40
	bmi   0.b		; 30 00
	sec		; 38
	php		; 08
	ror $5302.w		; 6E 02 53
	ora ($1F.b),Y		; 11 1F
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	trb $0E1F.w		; 1C 1F 0E
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $205F20.l,X		; 5F 20 5F 20
	and $1C10.w		; 2D 10 1C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D2.b		; 00 D2
	cpy #$DE.b		; C0 DE
.INDEX 16
	rep #$DC		; C2 DC
	cpy $9D.b		; C4 9D
	cmp $B9.b		; C5 B9
	ora #$0A3A.w		; 09 3A 0A
	nop		; EA
	asl A		; 0A
	sbc $ED4D16.l,X		; FF 16 4D ED
	ora $E1.b,S		; 03 E1
	sta [$E3.b]		; 87 E3
	sta [$E2.b]		; 87 E2
	ora $C50FC6.l		; 0F C6 0F C5
	ora $011715.l,X		; 1F 15 17 01
	bra -128.b		; 80 80
	cpy #$E0C0.w		; C0 C0 E0
	cpx #$60C0.w		; E0 C0 60
	ldy $BA3C.w,X		; BC 3C BA
	and ($D2.b)		; 32 D2
	inc A		; 1A
	dey		; 88
	tsb $C000.w		; 0C 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	beq   0.b		; F0 00
	jmp ($7E1C.w,X)		; 7C 1C 7E
	ora ($7F.b)		; 12 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	tsb $84.b		; 04 84
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $60.b		; 00 60
	brk $1E.b		; 00 1E
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$0040.w		; C0 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	brk $61.b		; 00 61
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0C00.w,X		; 1E 00 0C
	ora $1306.w,Y		; 19 06 13
	php		; 08
	ora ($1C.b)		; 12 1C
	rol $08.b,X		; 36 08
	bit $18.b		; 24 18
	bit $6820.w		; 2C 20 68
	bpl  88.b		; 10 58
	asl $00.b		; 06 00
	tsb $0C00.w		; 0C 00 0C
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	cpy #$00C0.w		; C0 C0 00
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
	pla		; 68
	jsr $2068.w		; 20 68 20
	pla		; 68
	cpy #$B8EC.w		; C0 EC B8
	ldy $BEAC.w,X		; BC AC BE
	dec $7FDF.w,X		; DE DF 7F
	eor $102030.l		; 4F 30 20 10
	brk $10.b		; 00 10
	brk $F8.b		; 00 F8
	plp		; 28
	cpx #$F040.w		; E0 40 F0
	bvc  -8.b		; 50 F8
	jsr $004F.w		; 20 4F 00
	adc #$6740.w		; 69 40 67
	eor $00.b,S		; 43 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $47.b		; 00 47
	ora [$43.b]		; 07 43
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $1C.b		; 00 1C
	cpx #$7C80.w		; E0 80 7C
	nop		; EA
	trb $6D.b		; 14 6D
	sta ($77.b)		; 92 77
	dey		; 88
	phx		; DA
	and $DE.b		; 25 DE
	and ($00.b,X)		; 21 00
	brk $E0.b		; 00 E0
	brk $7C.b		; 00 7C
	bra  20.b		; 80 14
	cpx #$7C82.w		; E0 82 7C
	dey		; 88
	ror $21.b,X		; 76 21
	sty $21.b,X		; 94 21
	.db $82, $0E, $00		; 82 0E 00
	asl A		; 0A
	ora $09.b		; 05 09
	ora [$0C.b]		; 07 0C
	cop $15.b		; 02 15
	asl A		; 0A
	ora ($0E.b,S),Y		; 13 0E
	ora $1A04.w,Y		; 19 04 1A
	tsb $00.b		; 04 00
	ora $04.b,S		; 03 04
	cop $04.b		; 02 04
	brk $01.b		; 00 01
	tsb $09.b		; 04 09
	tsb $09.b		; 04 09
	brk $03.b		; 00 03
	php		; 08
	ora $08.b,S		; 03 08
	rol $8F2D.w		; 2E 2D 8F
	sty $3E8F.w		; 8C 8F 3E
	cmp $CF7E.w		; CD 7E CF
	rts		; 60

	and $42.b,X		; 35 42
	lda ($C7.b,S),Y		; B3 C7
	lda $04D3.w,Y		; B9 D3 04
	sbc $3D44.w,X		; FD 44 3D
	dec $1E.b		; C6 1E
	bra  30.b		; 80 1E
	bra  30.b		; 80 1E
	bra  14.b		; 80 0E
	brk $0F.b		; 00 0F
	bpl   7.b		; 10 07
	ldx $1541.w,Y		; BE 41 15
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	brk $3F.b		; 00 3F
	cpy $7C.b		; C4 7C
	stx $3EFE.w		; 8E FE 3E
	inc $C6FE.w,X		; FE FE C6
	dec $49.b		; C6 49
	dey		; 88
	nop		; EA
	php		; 08
	brk $01.b		; 00 01
	cpy #$34.b		; C0 34
	sty $4F.b		; 84 4F
	trb $FE3F.w		; 1C 3F FE
	sbc $80FFC6.l,X		; FF C6 FF 80
	jsr $B0E0.w		; 20 E0 B0
	cpx #$38.b		; E0 38
	xce		; FB
	and $BE6FFF.l,X		; 3F FF 6F BE
	sta $006078.l,X		; 9F 78 60 00
	ora ($40.b,X)		; 01 40
	brk $40.b		; 00 40
	brk $50.b		; 00 50
	ora [$39.b],Y		; 17 39
	sta [$7E.b]		; 87 7E
	ora [$F8.b],Y		; 17 F8
	adc [$60.b]		; 67 60
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	ora ($19.b,X)		; 01 19
	asl $2C.b		; 06 2C
	ora ($00.b,S),Y		; 13 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	cop $04.b		; 02 04
	ora $13.b,S		; 03 13
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	jsr $70C0.w		; 20 C0 70
	bra  40.b		; 80 28
	bne -40.b		; D0 D8
	jsr $10C8.w		; 20 C8 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	brk $E0.b		; 00 E0
	bne   0.b		; D0 00
	jsr $6020.w		; 20 20 60
	brk $E6.b		; 00 E6
	and [$C5.b],Y		; 37 C5
	ora $C5.b,X		; 15 C5
	ora $C6.b,X		; 15 C6
	asl $C3.b,X		; 16 C3
	ora ($23.b)		; 12 23
	and ($83.b)		; 32 83
	sep #$00		; E2 00
	cpy #$C7.b		; C0 C7
	ora ($E7.b,X)		; 01 E7
	cop $E7.b		; 02 E7
	cop $E7.b		; 02 E7
	ora ($E2.b,X)		; 01 E2
	brk $C2.b		; 00 C2
	brk $42.b		; 00 42
	rti		; 40

	brk $00.b		; 00 00
	brk $60.b		; 00 60
	cpy #$E0.b		; C0 E0
	rts		; 60

	beq -16.b		; F0 F0
	sed		; F8
	jsr ($4A7C.w,X)		; FC 7C 4A
	cop $3E.b		; 02 3E
	asl $0000.w,X		; 1E 00 00
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$00.b		; C0 00
	jmp ($3E00.w,X)		; 7C 00 3E
	bit $001E.w,X		; 3C 1E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($12.b)		; 12 12
	ora ($10.b)		; 12 10
	inc A		; 1A
	asl $1C1A.w,X		; 1E 1A 1C
	inc A		; 1A
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $13.b		; 00 13
	cop $3F.b		; 02 3F
	bpl  63.b		; 10 3F
	ora ($3F.b)		; 12 3F
	brk $3F.b		; 00 3F
	cop $3F.b		; 02 3F
	asl $730F.w,X		; 1E 0F 73
	ora ($1E.b,S),Y		; 13 1E
	asl $0F1C.w		; 0E 1C 0F
	sec		; 38
	bit $2E2E.w,X		; 3C 2E 2E
	and $1F31.w,X		; 3D 31 1F
	ora $1E000E.l,X		; 1F 0E 00 1E
	tsb $000D.w		; 0C 0D 00
	php		; 08
	brk $30.b		; 00 30
	brk $3E.b		; 00 3E
	bpl  63.b		; 10 3F
	asl $001F.w		; 0E 1F 00
	brk $FF.b		; 00 FF
	dec $FE.b		; C6 FE
	sbc $F80B00.l,X		; FF 00 0B F8
	brk $1F.b		; 00 1F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $FF38.w,Y		; 39 38 FF
	brk $17.b		; 00 17
	bpl   1.b		; 10 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	bpl  96.b		; 10 60
	bvs -64.b		; 70 C0
	cpx #$80.b		; E0 80
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $7E.b		; 00 7E
	brk $F8.b		; 00 F8
	cpy #$F0.b		; C0 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  -4.b		; F0 FC
	php		; 08
	asl $0604.w		; 0E 04 06
	tsb $06.b		; 04 06
	bit $26.b		; 24 26
	tay		; A8
	inc $CC48.w		; EE 48 CC
	bpl -100.b		; 10 9C
	php		; 08
	php		; 08
	pea $F804.w		; F4 04 F8
	brk $F8.b		; 00 F8
	brk $D8.b		; 00 D8
	brk $54.b		; 00 54
	mvp $00,$30		; 44 30 00
	inx		; E8
	dey		; 88
	mvn $56,$2B		; 54 2B 56
	and #$52.b		; 29 52
	and $3D42.w		; 2D 42 3D
	lsr A		; 4A
	and $48.b,X		; 35 48
	and [$28.b],Y		; 37 28
	ora [$2C.b],Y		; 17 2C
	ora ($2B.b,S),Y		; 13 2B
	trb $29.b		; 14 29
	asl $2D.b,X		; 16 2D
	ora ($3D.b)		; 12 3D
	cop $35.b		; 02 35
	cop $37.b		; 02 37
	brk $17.b		; 00 17
	brk $13.b		; 00 13
	brk $EB.b		; 00 EB
	plp		; 28
	xba		; EB
	plp		; 28
	wai		; CB
	php		; 08
	cmp ($10.b,S),Y		; D3 10
	cmp [$00.b],Y		; D7 00
	sbc [$00.b],Y		; F7 00
	sbc $0EF301.l,X		; FF 01 F3 0E
	and $173F17.l,X		; 3F 17 3F 17
	and $2F3F37.l,X		; 3F 37 3F 2F
	and $0F0F2F.l		; 2F 2F 0F 0F
	ora ($00.b,X)		; 01 00
	tsb $04.b		; 04 04
	lda $91.b,X		; B5 91
	lda $88BE89.l		; AF 89 BE 88
	lda $88BB88.l,X		; BF 88 BB 88
	tyx		; BB
	dey		; 88
	lda $7CFF87.l,X		; BF 87 FF 7C
	sbc $76FF6E.l,X		; FF 6E FF 76
	sbc $77FF77.l,X		; FF 77 FF 77
	sbc $77FF77.l,X		; FF 77 FF 77
	sbc $007C78.l,X		; FF 78 7C 00
	and $182B07.l,X		; 3F 07 2B 18
	and $0E3F1F.l		; 2F 1F 3F 0E
	and $5F05.w,X		; 3D 05 5F
	and [$5C.b]		; 27 5C
	and $54.b,S		; 23 54
	pld		; 2B
	ora [$08.b]		; 07 08
	ora $001F07.l,X		; 1F 07 1F 00
	ora $1A0711.l		; 0F 11 07 1A
	and [$18.b]		; 27 18
	and $1C.b,S		; 23 1C
	pld		; 2B
	trb $C1.b		; 14 C1
	cmp $40.b,S		; C3 40
	rti		; 40

	inc $FEFF.w,X		; FE FF FE
	sbc $0DE000.l,X		; FF 00 E0 0D
	tsb $54F5.w		; 0C F5 54
	sbc #$08.b		; E9 08
	cld		; D8
	and $BCBFC0.l,X		; 3F C0 BF BC
	adc $007F98.l,X		; 7F 98 7F 00
	sbc $5FF30F.l,X		; FF 0F F3 5F
	phd		; 0B
	ora $B6B617.l,X		; 1F 17 B6 B6
	stz $76.b		; 64 76
	beq -14.b		; F0 F2
	adc $02ED.w		; 6D ED 02
	cop $B8.b		; 02 B8
	bcc -66.b		; 90 BE
	sta ($B6.b)		; 92 B6
	sta ($24.b)		; 92 24
	sbc $70FF40.l,X		; FF 40 FF 70
	sbc $02FF24.l,X		; FF 24 FF 02
	sbc $FF6FFD.l,X		; FF FD 6F FF
	adc $6DFF.w		; 6D FF 6D
	trb $3603.w		; 1C 03 36
	ora ($4C.b)		; 12 4C
	tsb $78.b		; 04 78
	rts		; 60

	bne -112.b		; D0 90
	bcs -112.b		; B0 90
	cmp $FE19.w,Y		; D9 19 FE
	ora $190101.l		; 0F 01 01 19
	php		; 08
	and ($B0.b,S),Y		; 33 B0
	adc [$80.b]		; 67 80
	sbc $60FF60.l,X		; FF 60 FF 60
	ldx $A0.b,Y		; B6 A0
	cpy #$C0.b		; C0 C0
	eor $166920.l,X		; 5F 20 69 16
	adc #$16.b		; 69 16
	lda $B146.w,Y		; B9 46 B1
	lsr $4FB1.w		; 4E B1 4F
	bcc 111.b		; 90 6F
	sta ($6E.b),Y		; 91 6E
	jsr $061E.w		; 20 1E 06
	sec		; 38
	asl $38.b		; 06 38
	lsr $38.b		; 46 38
	lsr $4C30.w		; 4E 30 4C
	bmi 108.b		; 30 6C
	bpl 110.b		; 10 6E
	bpl  32.b		; 10 20
	jmp $1EF4.w		; 4C F4 1E
	.db $62, $9F, $F6		; 62 9F F6
	ora $01FC.w		; 0D FC 01
	php		; 08
	ora $94FE00.l		; 0F 00 FE 94
	ror $F0.b,X		; 76 F0
	brk $28.b		; 00 28
	pha		; 48
	jmp ($FA9C.w,X)		; 7C 9C FA
	php		; 08
	inc $F400.w,X		; FE 00 F4
	tsb $78.b		; 04 78
	sei		; 78
	plp		; 28
	jsr $3F78.w		; 20 78 3F
	bvs  63.b		; 70 3F
	lda ($BF.b,X)		; A1 BF
	cpy #$F6.b		; C0 F6
	.db $42, $66		; 42 66
	cpy #$84.b		; C0 84
	cpy #$0C.b		; C0 0C
	cpy #$0C.b		; C0 0C
	sbc $C5.b		; E5 C5
	sbc #$C9.b		; E9 C9
	sbc ($52.b)		; F2 52
	sbc $22.b,S		; E3 22
	cmp ($80.b,X)		; C1 80
	sta $00.b,S		; 83 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	bcc -104.b		; 90 98
	brk $18.b		; 00 18
	jsr $0030.w		; 20 30 00
	bmi  64.b		; 30 40
	rts		; 60

	brk $60.b		; 00 60
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	rts		; 60

	brk $F0.b		; 00 F0
	bpl -64.b		; 10 C0
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	lda ($4E.b),Y		; B1 4E
	adc #$06.b		; 69 06
	adc #$06.b		; 69 06
	adc $02.b		; 65 02
	and $02.b,X		; 35 02
	ora ($01.b)		; 12 01
	asl A		; 0A
	ora ($01.b,X)		; 01 01
	brk $4E.b		; 00 4E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $E7.b		; 00 E7
	ora $F20EF6.l,X		; 1F F6 0E F2
	asl $0EF2.w		; 0E F2 0E
	plx		; FA
	asl $F8.b		; 06 F8
	asl $FD.b		; 06 FD
	ora $BC.b,S		; 03 BC
	ora $08.b,S		; 03 08
	php		; 08
	ora ($00.b,X)		; 01 00
	ora $04.b		; 05 04
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	sbc [$F8.b]		; E7 F8
	ora [$18.b],Y		; 17 18
	cmp [$08.b]		; C7 08
	sep #$0C		; E2 0C
	sep #$0C		; E2 0C
	ply		; 7A
	tsb $0472.w		; 0C 72 04
	beq -122.b		; F0 86
	bpl  16.b		; 10 10
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	sed		; F8
	brk $7C.b		; 00 7C
	tsb $14.b		; 04 14
	rol $00.b,X		; 36 00
	rol $00.b		; 26 00
	bit $08.b		; 24 08
	bit $2C00.w		; 2C 00 2C
	brk $68.b		; 00 68
	jsr $2068.w		; 20 68 20
	pla		; 68
	php		; 08
	brk $1C.b		; 00 1C
	tsb $18.b		; 04 18
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	php		; 08
	bmi  32.b		; 30 20
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	plp		; 28
	brk $D8.b		; 00 D8
	dey		; 88
	bcs -84.b		; B0 AC
	clv		; B8
	cop $FC.b		; 02 FC
	asl $E4.b		; 06 E4
	ora $0000.w,Y		; 19 00 00
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	cpx #$6C.b		; E0 6C
	cpx #$4E.b		; E0 4E
	rti		; 40

	mvn $30,$00		; 54 00 30
	txa		; 8A
	bcs   5.b		; B0 05
	jsr ($3C21.w,X)		; FC 21 3C
	xce		; FB
	asl $06FC.w		; 0E FC 06
	lda $1781.w,X		; BD 81 17
	beq   2.b		; F0 02
	asl $0300.w,X		; 1E 00 03
	ora $00.b,S		; 03 00
	cmp [$14.b],Y		; D7 14
	sbc $04.b,X		; F5 04
	xce		; FB
	cop $7E.b		; 02 7E
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $45.b		; 00 45
	dec A		; 3A
	eor $3A.b		; 45 3A
	and [$19.b]		; 27 19
	rol $2B12.w		; 2E 12 2B
	ora ($2B.b,S),Y		; 13 2B
	ora [$28.b],Y		; 17 28
	bpl  54.b		; 10 36
	asl $3A.b		; 06 3A
	brk $3A.b		; 00 3A
	brk $19.b		; 00 19
	brk $13.b		; 00 13
	ora ($13.b,X)		; 01 13
	tsb $11.b		; 04 11
	ora [$10.b]		; 07 10
	ora [$02.b]		; 07 02
	ora $F319EE.l,X		; 1F EE 19 F3
	adc $8D.b,S		; 63 8D
	sta $05E5.w		; 8D E5 05
	tda		; 7B
	ora $FD.b,S		; 03 FD
	sbc $873B.w,X		; FD 3B 87
	and ($0C.b,S),Y		; 33 0C
	asl $06.b		; 06 06
	adc $FB0C.w		; 6D 0C FB
	bvs  -2.b		; 70 FE
	sed		; F8
	inc $FFFC.w,X		; FE FC FF
	cop $07.b		; 02 07
	cld		; D8
	brk $DE.b		; 00 DE
	sbc $01F900.l,X		; FF 00 F9 01
	sbc ($06.b)		; F2 06
	adc [$04.b],Y		; 77 04
	sta $FEFF0D.l		; 8F 0D FF FE
	pea $00F8.w		; F4 F8 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$02.b]		; 07 02
	ora $0C8F04.l		; 0F 04 8F 0C
	sbc $00FFFC.l,X		; FF FC FF 00
	sbc $FCFC00.l,X		; FF 00 FC FC
	brk $63.b		; 00 63
	brk $7E.b		; 00 7E
	brk $78.b		; 00 78
	brk $20.b		; 00 20
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   5.b		; 80 05
	ora $8602.w		; 0D 02 86
	ora ($83.b,X)		; 01 83
	sta ($C1.b,X)		; 81 C1
	ora ($41.b,X)		; 01 41
	cmp ($61.b,X)		; C1 61
	brk $20.b		; 00 20
	ldy #$B0.b		; A0 B0
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	sta ($00.b,X)		; 81 00
	sta ($00.b,X)		; 81 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$40.b		; C0 40
	rts		; 60

	ldy #$B0.b		; A0 B0
	bvc  88.b		; 50 58
	sec		; 38
	bit $9FFF.w,X		; 3C FF 9F
	eor ($00.b)		; 52 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$80.b		; E0 80
	beq -64.b		; F0 C0
	sta $0F0F00.l,X		; 9F 00 0F 0F
	adc $FBC2.w,X		; 7D C2 FB
	sty $B4.b		; 84 B4
	.db $42, $7E		; 42 7E
	bra -20.b		; 80 EC
	bpl  77.b		; 10 4D
	lda ($91.b),Y		; B1 91
	rtl		; 6B

	and $D7.b,S		; 23 D7
	.db $42, $0C		; 42 0C
	ldy $30.b,X		; B4 30
	lsr A		; 4A
	ora #$80.b		; 09 80
	adc $10.b,X		; 75 10
	sbc [$B0.b]		; E7 B0
	eor $69.b,S		; 43 69
	ora [$11.b]		; 07 11
	ora $B4B4B1.l		; 0F B1 B4 B4
	bmi  50.b		; 30 32
	tda		; 7B
	lda [$F7.b]		; A7 F7
	cmp $E3.b		; C5 E3
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	ora $80.b,S		; 03 80
	bmi 126.b		; 30 7E
	bmi 127.b		; 30 7F
	bpl  -1.b		; 10 FF
	ora ($FF.b,X)		; 01 FF
	bra  -1.b		; 80 FF
	bra -25.b		; 80 E7
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	ora $0F1000.l		; 0F 00 10 0F
	rol $19.b		; 26 19
	eor $9426.w,Y		; 59 26 94
	rtl		; 6B

	stx $6171.w		; 8E 71 61
	stz $AF50.w,X		; 9E 50 AF
	brk $00.b		; 00 00
	ora $061900.l		; 0F 00 19 06
	jsr $631F.w		; 20 1F 63
	trb $0C71.w		; 1C 71 0C
	stz $AF60.w,X		; 9E 60 AF
	rti		; 40

	bra   0.b		; 80 00
	sei		; 78
	bra   7.b		; 80 07
	sed		; F8
	sbc $1C.b,S		; E3 1C
	ora $FF00F0.l		; 0F F0 00 FF
	sed		; F8
	ora [$EF.b]		; 07 EF
	bmi   0.b		; 30 00
	brk $80.b		; 00 80
	brk $F8.b		; 00 F8
	brk $1C.b		; 00 1C
	cpx #$F0.b		; E0 F0
	brk $FF.b		; 00 FF
	brk $07.b		; 00 07
	brk $10.b		; 00 10
	bpl  31.b		; 10 1F
	brk $EF.b		; 00 EF
	bpl 112.b		; 10 70
	sta $0F03FC.l		; 8F FC 03 0F
	beq -16.b		; F0 F0
	ora $F0817E.l		; 0F 7E 81 F0
	ora $100000.l		; 0F 00 00 10
	ora $03708F.l		; 0F 8F 70 03
	jsr ($00F0.w,X)		; FC F0 00
	ora $7E8100.l		; 0F 00 81 7E
	ora $00E0F0.l		; 0F F0 E0 00
	stz $0360.w		; 9C 60 03
	jsr ($FF00.w,X)		; FC 00 FF
	inc $0F01.w,X		; FE 01 0F
	beq   0.b		; F0 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $60.b		; 00 60
	bra  -4.b		; 80 FC
	brk $FF.b		; 00 FF
	brk $01.b		; 00 01
	brk $F0.b		; 00 F0
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $F8.b		; 00 F8
	ora [$FC.b]		; 07 FC
	ora $E2.b,S		; 03 E2
	ora $E31C.w,X		; 1D 1C E3
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $E300.w,X		; 1D 00 E3
	brk $07.b		; 00 07
	brk $19.b		; 00 19
	asl $E6.b		; 06 E6
	ora $F00F.w,Y		; 19 0F F0
	beq  15.b		; F0 0F
	and $3FC0C0.l,X		; 3F C0 C0 3F
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	asl $01.b		; 06 01
	ora $F006.w,Y		; 19 06 F0
	brk $0F.b		; 00 0F
	brk $C0.b		; 00 C0
	and $FFC03F.l,X		; 3F 3F C0 FF
	brk $3B.b		; 00 3B
	jsl $7E4447.l		; 22 47 44 7E
	adc ($BA.b),Y		; 71 BA
	lda $68.b,X		; B5 68
	adc $0F5352.l		; 6F 52 53 0F
	rti		; 40

	phd		; 0B
	plp		; 28
	rol $7C1C.w,X		; 3E 1C 7C
	sec		; 38
	adc ($00.b),Y		; 71 00
	lda ($70.b,X)		; A1 70
	mvp $0D,$F4		; 44 F4 0D
	sbc ($1F.b,X)		; E1 1F
	cpx #$07.b		; E0 07
	bvs -41.b		; 70 D7
	bpl  23.b		; 10 17
	bpl  -9.b		; 10 F7
	beq  55.b		; F0 37
	bmi -80.b		; 30 B0
	bmi -52.b		; 30 CC
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $FF.b		; 00 FF
	cpx #$FF.b		; E0 FF
	cpx #$FF.b		; E0 FF
	brk $EF.b		; 00 EF
	cpy #$EF.b		; C0 EF
	cpy #$F3.b		; C0 F3
	and ($00.b,S),Y		; 33 00
	brk $00.b		; 00 00
	brk $EC.b		; 00 EC
	ora $FF00FF.l		; 0F FF 00 FF
	brk $E0.b		; 00 E0
	brk $F1.b		; 00 F1
	sbc $00FF00.l,X		; FF 00 FF 00
	ora ($00.b,X)		; 01 00
	brk $F3.b		; 00 F3
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $0E.b		; 00 0E
	asl $0101.w		; 0E 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	rts		; 60

	jsr $1030.w		; 20 30 10
	clc		; 18
	pha		; 48
	cpy $F614.w		; CC 14 F6
	asl A		; 0A
	tsa		; 3B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	bcs -128.b		; B0 80
	plp		; 28
	jsr $0004.w		; 20 04 00
	beq   0.b		; F0 00
	sei		; 78
	bvc -48.b		; 50 D0
	bra  16.b		; 80 10
	ora $F74F70.l		; 0F 70 4F F7
	sbc $E43F20.l		; EF 20 3F E4
	bit $0000.w,X		; 3C 00 00
	bne -128.b		; D0 80
	ldy #$20.b		; A0 20
	cpx #$E0.b		; E0 E0
	cmp $08E88F.l		; CF 8F E8 08
	cpx #$C0.b		; E0 C0
	xce		; FB
	cld		; D8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $FE.b		; 00 FE
	cpy $11CF.w		; CC CF 11
	sbc ($80.b),Y		; F1 80
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  50.b		; 80 32
	cop $0E.b		; 02 0E
	brk $60.b		; 00 60
	rts		; 60

	rti		; 40

	bne  16.b		; D0 10
	cli		; 58
	bpl  72.b		; 10 48
	bmi 100.b		; 30 64
	php		; 08
	bit $36.b		; 24 36
	rol $2D.b,X		; 36 2D
	and $1113.w		; 2D 13 11
	jsr $2000.w		; 20 00 20
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $3A.b		; 00 3A
	brk $3F.b		; 00 3F
	ora ($1F.b)		; 12 1F
	asl $004F.w		; 0E 4F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $2EBE7F.l,X		; 7F 7F BE 2E
	cld		; D8
	dec $C969.w		; CE 69 C9
	sbc $B6.b,X		; F5 B6
	sbc $49C7A9.l		; EF A9 C7 49
	dec $BA44.w		; CE 44 BA
	ora [$FA.b]		; 07 FA
	ora [$78.b],Y		; 17 78
	and [$79.b],Y		; 37 79
	and [$B0.b],Y		; 37 B0
	asl $1CA1.w		; 0E A1 1C
	adc ($38.b,X)		; 61 38
	adc $31.b,X		; 75 31
	trb $0B40.w		; 1C 40 0B
	sta ($7C.b,S),Y		; 93 7C
	stz $FF.b,X		; 74 FF
	sta $2700DC.l		; 8F DC 00 27
	jsr $98D9.w		; 20 D9 98
	ldx $86.b		; A6 86
	ora $E3.b,S		; 03 E3
	ora [$F4.b]		; 07 F4
	and [$F3.b]		; 27 F3
	ora $3F3FC0.l		; 0F C0 3F 3F
	sbc $67FFDF.l,X		; FF DF FF 67
	sbc $50AF79.l,X		; FF 79 AF 50
	eor ($A2.b,S),Y		; 53 A2
	rol $0BC9.w,X		; 3E C9 0B
	pea $32CD.w		; F4 CD 32
	tda		; 7B
	asl $01.b		; 06 01
	ora $00.b,S		; 03 00
	ora ($10.b,X)		; 01 10
	bne -84.b		; D0 AC
	rti		; 40

	cmp [$20.b]		; C7 20
	sbc [$04.b],Y		; F7 04
	and ($00.b,S),Y		; 33 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $14FB40.l,X		; 9F 40 FB 14
	stz $08.b		; 64 08
	cpx $08.b		; E4 08
	sta ($38.b)		; 92 38
	ora $7D.b		; 05 7D
	asl $3D71.w		; 0E 71 3D
	cmp ($20.b,X)		; C1 20
	rti		; 40

	rts		; 60

	bra -14.b		; 80 F2
	ora $F3.b,S		; 03 F3
	ora $ED.b,S		; 03 ED
	and #$F3.b		; 29 F3
	bvs -32.b		; 70 E0
	rts		; 60

	ora $C33C0E.l		; 0F 0E 3C C3
	and $0FF0C0.l,X		; 3F C0 F0 0F
	bra 127.b		; 80 7F
	ora ($FE.b,X)		; 01 FE
	and $00FFC0.l,X		; 3F C0 FF 00
	cpx #$1F.b		; E0 1F
	cmp $3C.b,S		; C3 3C
	cpy #$3F.b		; C0 3F
	ora $807FF0.l		; 0F F0 7F 80
	inc $C000.w,X		; FE 00 C0
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	sbc $007F80.l,X		; FF 80 7F 00
	sbc $FFE01F.l,X		; FF 1F E0 FF
	brk $F0.b		; 00 F0
	ora $0E7E81.l		; 0F 81 7E 0E
	beq  -1.b		; F0 FF
	brk $7F.b		; 00 7F
	bra  -1.b		; 80 FF
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $7E.b		; 00 7E
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	ora $F01FE0.l		; 0F E0 1F F0
	ora $8F001F.l		; 0F 1F 00 8F
	rts		; 60

	xce		; FB
	tsb $8D.b		; 04 8D
	ror $96.b,X		; 76 96
	rtl		; 6B

	ora $001F00.l		; 0F 00 1F 00
	ora $E00000.l		; 0F 00 00 E0
	brk $F0.b		; 00 F0
	tsb $04.b		; 04 04
	adc ($02.b)		; 72 02
	adc #$11.b		; 69 11
	ora ($FE.b,X)		; 01 FE
	ora $FF00F0.l		; 0F F0 00 FF
	brk $FF.b		; 00 FF
	sbc $00C700.l,X		; FF 00 C7 00
	tyx		; BB
	sec		; 38
	and [$60.b]		; 27 60
	inc $F001.w,X		; FE 01 F0
	ora $FF00FF.l		; 0F FF 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	clc		; 18
	jmp ($F820.w,X)		; 7C 20 F8
	ora $060609.l		; 0F 09 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000606.l		; 0F 06 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($1F.b,X)		; 01 1F
	tsb $1003.w		; 0C 03 10
	brk $0C.b		; 00 0C
	tsb $07.b		; 04 07
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	jsl $0F0000.l		; 22 00 00 0F
	ora $010307.l		; 0F 07 03 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	beq  32.b		; F0 20
	tsb $E63C.w		; 0C 3C E6
	bne 115.b		; D0 73
	dec $741F.w		; CE 1F 74
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	beq   0.b		; F0 00
	clc		; 18
	brk $8E.b		; 00 8E
	cop $E1.b		; 02 E1
	ora ($E3.b,X)		; 01 E3
	brk $9E.b		; 00 9E
	asl $FB.b,X		; 16 FB
	cop $0A.b		; 02 0A
	cop $0A.b		; 02 0A
	cop $0A.b		; 02 0A
	brk $0F.b		; 00 0F
	ora $07.b		; 05 07
	brk $00.b		; 00 00
	brk $77.b		; 00 77
	adc ($07.b,X)		; 61 07
	ora $07.b		; 05 07
	ora $07.b		; 05 07
	ora $05.b		; 05 05
	ora $05.b		; 05 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F9.b		; 00 F9
	cmp ($5E.b,X)		; C1 5E
	rti		; 40

	lda $30B720.l		; AF 20 B7 30
	cmp $6E19.w,Y		; D9 19 6E
	asl $1838.w		; 0E 38 18
	cpx #$00.b		; E0 00
	sbc $BFFF3E.l,X		; FF 3E FF BF
	sbc $CFFFDF.l,X		; FF DF FF CF
	sbc $F0FEE6.l,X		; FF E6 FE F0
	sed		; F8
	cpx #$00.b		; E0 00
	brk $68.b		; 00 68
	tsb $86F2.w		; 0C F2 86
	lda $7887.w,X		; BD 87 78
	cmp $1C.b,S		; C3 1C
	cmp $2E.b,S		; C3 2E
	adc $14.b,S		; 63 14
	and ($0B.b),Y		; 31 0B
	ora $00F3.w,Y		; 19 F3 00
	adc $7800.w,Y		; 79 00 78
	brk $3C.b		; 00 3C
	brk $7E.b		; 00 7E
	.db $42, $1C		; 42 1C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	tsb $0C01.w		; 0C 01 0C
	ora ($06.b,X)		; 01 06
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	bmi -64.b		; 30 C0
	sed		; F8
	brk $CC.b		; 00 CC
	brk $32.b		; 00 32
	cpy #$18.b		; C0 18
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	beq   4.b		; F0 04
	sed		; F8
.INDEX 8
	sep #$1C		; E2 1C
	plx		; FA
	tsb $3D.b		; 04 3D
	rep #$85		; C2 85
	cop $03.b		; 02 03
	brk $01.b		; 00 01
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $1C.b		; 00 1C
	brk $04.b		; 00 04
	brk $C2.b		; 00 C2
	brk $02.b		; 00 02
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
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	cop $0A.b		; 02 0A
	ora $0F.b		; 05 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	ora ($0E.b,X)		; 01 0E
	ora ($0C.b,X)		; 01 0C
	ora $02.b,S		; 03 02
	ora ($05.b,X)		; 01 05
	cop $00.b		; 02 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$01.b]		; 07 01
	asl $01.b		; 06 01
	asl $03.b		; 06 03
	tsb $61.b		; 04 61
	stz $C837.w,X		; 9E 37 C8
	inc $AF15.w		; EE 15 AF
	lsr $DB.b,X		; 56 DB
	pld		; 2B
	cmp $3A.b		; C5 3A
	adc ($9E.b,S),Y		; 73 9E
	ldy $60.b		; A4 60
	sty $8873.w		; 8C 73 88
	adc ($11.b)		; 72 11
	cpx #$50.b		; E0 50
	ldy #$24.b		; A0 24
	bra  59.b		; 80 3B
	tya		; 98
	bit #$04.b		; 89 04
	eor $669740.l,X		; 5F 40 97 66
	sta [$66.b],Y		; 97 66
	stz $9E65.w,X		; 9E 65 9E
	adc ($9E.b,X)		; 61 9E
	adc ($9D.b,X)		; 61 9D
	adc $9C.b,S		; 63 9C
	.db $62, $4C, $33		; 62 4C 33
	ror $6E08.w		; 6E 08 6E
	php		; 08
	stz $00.b		; 64 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $61.b		; 00 61
	brk $30.b		; 00 30
	brk $35.b		; 00 35
	adc $09.b,X		; 75 09
	ora #$A5.b		; 09 A5
	lda $C1.b		; A5 C1
	sta $41.b,X		; 95 41
	ora ($E8.b,S),Y		; 13 E8
	and ($9C.b,S),Y		; 33 9C
	jsr $80FF.w		; 20 FF 80
	bpl  -1.b		; 10 FF
	ora ($FF.b,X)		; 01 FF
	eor ($1F.b,X)		; 41 1F
	adc ($1F.b),Y		; 71 1F
	cpx #$0F.b		; E0 0F
	cpy #$07.b		; C0 07
	cpy #$03.b		; C0 03
	bra   0.b		; 80 00
	eor ($A2.b,S),Y		; 53 A2
	eor ($A3.b,S),Y		; 53 A3
	sbc [$04.b]		; E7 04
	sbc [$0F.b]		; E7 0F
	adc $9F.b		; 65 9F
	cmp #$39.b		; C9 39
	and ($F2.b),Y		; 31 F2
	tay		; A8
	eor $A301A2.l		; 4F A2 01 A3
	brk $07.b		; 00 07
	ora $07.b,S		; 03 07
	brk $8B.b		; 00 8B
	txa		; 8A
	ora [$10.b],Y		; 17 10
	sty $9380.w		; 8C 80 93
	brk $73.b		; 00 73
	sed		; F8
	sbc [$E0.b],Y		; F7 E0
	cld		; D8
	sta [$61.b]		; 87 61
	lsr $B3CC.w,X		; 5E CC B3
	lda $E01F40.l,X		; BF 40 1F E0
	tsb $FB.b		; 04 FB
	jsr $00FC.w		; 20 FC 00
	sed		; F8
	sta [$60.b]		; 87 60
	dec $B381.w,X		; DE 81 B3
	tsb $3F40.w		; 0C 40 3F
	cpx #$1F.b		; E0 1F
	xce		; FB
	tsb $C0.b		; 04 C0
	brk $F0.b		; 00 F0
	brk $88.b		; 00 88
	brk $60.b		; 00 60
	bra -48.b		; 80 D0
	jsr $9068.w		; 20 68 90
	ldy $59.b		; A4 59
	cmp $2B.b,X		; D5 2B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	jsr $90C0.w		; 20 C0 90
	jsr $8058.w		; 20 58 80
	plp		; 28
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $3F0C.w,X		; 1E 0C 3F
	and $5861.w,Y		; 39 61 58
	cpy #$A4.b		; C0 A4
	sty $49.b		; 84 49
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($12.b)		; 12 12
	asl $3F00.w,X		; 1E 00 3F
	brk $7B.b		; 00 7B
	brk $F7.b		; 00 F7
	tsb $EB.b		; 04 EB
	trb $B6.b		; 14 B6
	cmp #$FD.b		; C9 FD
	sbc $DF.b,S		; E3 DF
	sbc $3EFFDF.l,X		; FF DF FF 3E
	cmp $801E64.l,X		; DF 64 1E 80
	brk $14.b		; 00 14
	bra   8.b		; 80 08
	sbc $81.b		; E5 81
	sbc ($C3.b,S),Y		; F3 C3
	sbc $04FF0E.l,X		; FF 0E FF 04
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $098416.l,X		; 7F 16 84 09
	lda #$D6.b		; A9 D6
	dec $A3.b,X		; D6 A3
	ldy #$40.b		; A0 40
	rti		; 40

	eor $C0C75F.l,X		; 5F 5F C7 C0
	bcs -80.b		; B0 B0
	sta $F60F6B.l		; 8F 6B 0F F6
	sta [$F9.b]		; 87 F9
	and [$FF.b]		; 27 FF
	eor $E05FFF.l		; 4F FF 5F E0
	sta $CF3FFF.l,X		; 9F FF 3F CF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $FC.b		; 00 FC
	iny		; C8
	ora $F800FF.l		; 0F FF 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -12.b		; 80 F4
	tsb $FF.b		; 04 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $3B01C1.l,X		; FF C1 01 3B
	tsa		; 3B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $C500.w,X		; FE 00 C5
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $38.b		; 00 38
	ora [$40.b]		; 07 40
	and $007986.l,X		; 3F 86 79 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $3F.b		; 00 3F
	brk $79.b		; 00 79
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $28.b		; 00 28
	bpl -56.b		; 10 C8
	bmi  76.b		; 30 4C
	bcs 116.b		; B0 74
	dey		; 88
	mvn $00,$A8		; 54 A8 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	brk $B0.b		; 00 B0
	brk $88.b		; 00 88
	bvs  40.b		; 70 28
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $07.b,S		; 03 07
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora $003F07.l		; 0F 07 3F 00
	brk $2E.b		; 00 2E
	asl $3030.w,X		; 1E 30 30
	jsr $2020.w		; 20 20 20
	rts		; 60

	bra -64.b		; 80 C0
	cpy #$80.b		; C0 80
	brk $80.b		; 00 80
	brk $3E.b		; 00 3E
	tsb $107F.w		; 0C 7F 10
	adc $007C20.l,X		; 7F 20 7C 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$14.b		; C0 14
	phd		; 0B
	clc		; 18
	ora [$19.b]		; 07 19
	asl $29.b		; 06 29
	asl $33.b,X		; 16 33
	tsb $2957.w		; 0C 57 29
	eor $314930.l		; 4F 30 49 31
	phd		; 0B
	tsb $07.b		; 04 07
	php		; 08
	asl $08.b		; 06 08
	asl $08.b,X		; 16 08
	tsb $2910.w		; 0C 10 29
	bpl  48.b		; 10 30
	brk $37.b		; 00 37
	asl $AC.b		; 06 AC
	adc $84.b,S		; 63 84
	adc $EB.b,S		; 63 EB
	ora $1FE8.w,Y		; 19 E8 1F
	sbc $8104.w,Y		; F9 04 81
	sta ($FF.b,X)		; 81 FF
	asl $0A89.w,X		; 1E 89 0A
	eor $637F43.l,X		; 5F 43 7F 63
	asl $10.b,X		; 16 10
	asl $06.b		; 06 06
	asl $04.b		; 06 04
	sbc $001E7E.l,X		; FF 7E 1E 00
	php		; 08
	adc $26334D.l,X		; 7F 4D 33 26
	asl $041D.w,X		; 1E 1D 04
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($00.b),Y		; 31 00
	ora $030701.l,X		; 1F 01 07 03
	ora [$03.b]		; 07 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and [$20.b]		; 27 20
	cld		; D8
	sei		; 78
	lda $FFBFFF.l,X		; BF FF BF FF
	cmp $8080BF.l		; CF BF 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$D8.b		; E0 D8
	cpy #$BF.b		; C0 BF
	stz $8F7F.w,X		; 9E 7F 8F
	adc $807F80.l,X		; 7F 80 7F 80
	adc $000000.l,X		; 7F 00 00 00
	brk $76.b		; 00 76
	lda #$5F.b		; A9 5F
	bcs 127.b		; B0 7F
	cpy #$3B.b		; C0 3B
	bit $F9.b		; 24 F9
	asl $CB.b		; 06 CB
	bcs 119.b		; B0 77
	dey		; 88
	ldy $4B.b,X		; B4 4B
	lda #$A8.b		; A9 A8
	brk $30.b		; 00 30
	rti		; 40

	brk $E4.b		; 00 E4
	rep #$0E		; C2 0E
	php		; 08
	ldy $04.b,X		; B4 04
	dey		; 88
	adc ($4B.b),Y		; 71 4B
	bmi  34.b		; 30 22
	cmp $E718.w,X		; DD 18 E7
	cmp $18E630.l		; CF 30 E6 18
	inc $0A.b,X		; F6 0A
	sbc $FD01.w,X		; FD 01 FD
	ora ($7B.b,X)		; 01 7B
	.db $82, $DD, $02		; 82 DD 02
	sbc [$00.b]		; E7 00
	bmi   0.b		; 30 00
	ora $0B01.w,Y		; 19 01 0B
	ora ($07.b,X)		; 01 07
	asl $07.b		; 06 07
	stx $8F.b		; 86 8F
	ora $AE52.w		; 0D 52 AE
	plp		; 28
	pei ($80.b)		; D4 80
	jmp ($0CF4.w,X)		; 7C F4 0C
	stz $0C.b,X		; 74 0C
	cpy #$0F.b		; C0 0F
	clv		; B8
	and [$5A.b]		; 27 5A
	lsr $AD.b,X		; 56 AD
	rti		; 40

	cmp ($20.b,S),Y		; D3 20
	adc [$04.b],Y		; 77 04
	phd		; 0B
	php		; 08
	plb		; AB
	tay		; A8
	sbc [$F7.b],Y		; F7 F7
	cpx $C4.b		; E4 C4
	sbc ($A0.b),Y		; F1 A0
	ora ($1E.b)		; 12 1E
	ora ($1F.b,X)		; 01 1F
	jsr $4033.w		; 20 33 40
	adc $2FFC85.l,X		; 7F 85 FC 2F
	cpx #$BE.b		; E0 BE
	bra  -6.b		; 80 FA
	ora $ED.b,S		; 03 ED
	tsb $12F2.w		; 0C F2 12
	cpy #$00.b		; C0 00
	ldy #$20.b		; A0 20
	phk		; 4B
	pha		; 48
	ora $007F00.l,X		; 1F 00 7F 00
	jsr ($DE00.w,X)		; FC 00 DE
	asl $3A3C.w,X		; 1E 3C 3A
	rol $BEF4.w,X		; 3E F4 BE
	jsr ($C0A0.w,X)		; FC A0 C0
	ora $021B1E.l,X		; 1F 1E 1B 02
	ora [$00.b]		; 07 00
	asl $103F.w		; 0E 3F 10
	sbc $38FF30.l,X		; FF 30 FF 38
	sbc $1EFF00.l,X		; FF 00 FF 1E
	cpx #$06.b		; E0 06
	tsb $00.b		; 04 00
	brk $8F.b		; 00 8F
	sta $07801F.l		; 8F 1F 80 07
	bra -79.b		; 80 B1
	bmi 126.b		; 30 7E
	sec		; 38
	sbc $31BFCE.l,X		; FF CE BF 31
	tda		; 7B
	brk $3F.b		; 00 3F
	beq  63.b		; F0 3F
	sbc $3FFF3F.l,X		; FF 3F FF 3F
	cmp $CE8139.l		; CF 39 81 CE
	brk $71.b		; 00 71
	rti		; 40

	brk $00.b		; 00 00
	cpx #$FF.b		; E0 FF
	brk $FE.b		; 00 FE
	brk $1F.b		; 00 1F
	ora $08181F.l,X		; 1F 1F 18 08
	tas		; 1B
	php		; 08
	asl $0604.w		; 0E 04 06
	tsb $18.b		; 04 18
	clc		; 18
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	ora $070F00.l,X		; 1F 00 0F 07
	tsb $0404.w		; 0C 04 04
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	inc $0602.w,X		; FE 02 06
	ora ($81.b,X)		; 01 81
	brk $C0.b		; 00 C0
	beq -16.b		; F0 F0
	bit $FC0C.w		; 2C 0C FC
	bit $0038.w,X		; 3C 38 00
	ora [$05.b]		; 07 05
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	bra -128.b		; 80 80
	beq   0.b		; F0 00
	jsr ($3CF0.w,X)		; FC F0 3C
	brk $00.b		; 00 00
	brk $B9.b		; 00 B9
	sty $77.b,X		; 94 77
	trb $18F3.w		; 1C F3 18
	sta ($18.b,S),Y		; 93 18
	rtl		; 6B

	pla		; 68
	ldy $FF8C.w,X		; BC 8C FF
	ora $F70F0C.l		; 0F 0C 0F F7
	stz $FB.b		; 64 FB
	inx		; E8
	sbc $E8FFE8.l,X		; FF E8 FF E8
	sbc $70FB90.l,X		; FF 90 FB 70
	sed		; F8
	beq  -6.b		; F0 FA
	sbc ($F4.b)		; F2 F4
	asl $E8.b		; 06 E8
	tsb $18D0.w		; 0C D0 18
	ldy #$30.b		; A0 30
	rti		; 40

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
	brk $F0.b		; 00 F0
	inc $1EF0.w,X		; FE F0 1E
	bne  28.b		; D0 1C
	bne   8.b		; D0 08
	bpl   0.b		; 10 00
	beq   0.b		; F0 00
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
	jsr ($FC0C.w,X)		; FC 0C FC
	cpx $E8F8.w		; EC F8 E8
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
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
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $0E.b		; 00 0E
	clc		; 18
	bpl  40.b		; 10 28
	jsr $2028.w		; 20 28 20
	sec		; 38
	rts		; 60

	sec		; 38
	cpx #$E8.b		; E0 E8
	cpy #$D0.b		; C0 D0
	bra  32.b		; 80 20
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	bpl  48.b		; 10 30
	bpl  48.b		; 10 30
	bpl 112.b		; 10 70
	bvc 112.b		; 50 70
	bmi -32.b		; 30 E0
	rts		; 60

	cpy #$C0.b		; C0 C0
	cpy #$00.b		; C0 00
	bvs   0.b		; 70 00
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	rts		; 60

	jsr $9030.w		; 20 30 90
	clc		; 18
	cli		; 58
	trb $FE78.w		; 1C 78 FE
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	sty $84.b		; 84 84
	asl $06.b		; 06 06
	bne  31.b		; D0 1F
	sbc $3F01.w,X		; FD 01 3F
	brk $27.b		; 00 27
	cpx #$09.b		; E0 09
	sei		; 78
	ora ($1F.b,X)		; 01 1F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	inx		; E8
	php		; 08
	inc $FF00.w,X		; FE 00 FF
	brk $5F.b		; 00 5F
	rti		; 40

	ora [$10.b],Y		; 17 10
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	brk $1C.b		; 00 1C
	clc		; 18
	rol $6228.w,X		; 3E 28 62
	phy		; 5A
	cmp $3C.b,S		; C3 3C
	sta ($FE.b,X)		; 81 FE
	sta ($4F.b),Y		; 91 4F
	and ($CE.b,X)		; 21 CE
	jsr $0000.w		; 20 00 00
	tsb $04.b		; 04 04
	trb $3C00.w		; 1C 00 3C
	brk $FE.b		; 00 FE
	bra 111.b		; 80 6F
	ora ($FE.b,X)		; 01 FE
	jsr $00DF.w		; 20 DF 00
	bpl   0.b		; 10 00
	tsb $0B00.w		; 0C 00 0B
	tsb $09.b		; 04 09
	asl $19.b		; 06 19
	asl $2A.b		; 06 2A
	ora $28.b,X		; 15 28
	ora [$27.b],Y		; 17 27
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	asl $01.b		; 06 01
	asl $00.b		; 06 00
	ora $0A.b,X		; 15 0A
	ora $0A.b,X		; 15 0A
	bpl  11.b		; 10 0B
	sei		; 78
	brk $B4.b		; 00 B4
	pha		; 48
	pha		; 48
	bcs -104.b		; B0 98
	rts		; 60

	cpx $18.b		; E4 18
	plx		; FA
	tsb $FA.b		; 04 FA
	stz $86.b		; 64 86
	pla		; 68
	brk $00.b		; 00 00
	pha		; 48
	bmi  48.b		; 30 30
	cpy #$60.b		; C0 60
	bra  24.b		; 80 18
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $30.b		; 00 30
	jsr $4EF4.w		; 20 F4 4E
	and $56572E.l		; 2F 2E 57 56
	cmp [$D6.b],Y		; D7 D6
	and $B6.b,X		; 35 B6
	jsl L00836C.l		; 22 6C 83 00
	sbc $0F4000.l,X		; FF 00 40 0F
	asl $FF.b		; 06 FF
	lsr $FF.b,X		; 56 FF
	bcc  -1.b		; 90 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	sbc $F6FE09.l,X		; FF 09 FE F6
	sbc $62ED.w,Y		; F9 ED 62
	nop		; EA
	wai		; CB
	brk $F3.b		; 00 F3
	ora $FE.b,S		; 03 FE
	jsr $EAFF.w		; 20 FF EA
	php		; 08
	ora $69FF74.l		; 0F 74 FF 69
	inc $FD03.w,X		; FE 03 FD
	ora ($FD.b,X)		; 01 FD
	ora $0C.b,S		; 03 0C
	and ($01.b,X)		; 21 01
	nop		; EA
	brk $F0.b		; 00 F0
	sta [$E8.b]		; 87 E8
	sta $F08EE8.l		; 8F E8 8E F0
	trb $1850.w		; 1C 50 18
	ldx $B8.b		; A6 B8
	tay		; A8
	bcs -49.b		; B0 CF
	beq  -3.b		; F0 FD
	ora $F2.b		; 05 F2
	cop $F0.b		; 02 F0
	brk $68.b		; 00 68
	php		; 08
	cpx #$00.b		; E0 00
	bne  16.b		; D0 10
	cpy #$00.b		; C0 00
	ldy #$20.b		; A0 20
	clc		; 18
	dec $3C.b		; C6 3C
	ror $08.b		; 66 08
	.db $62, $1C, $32		; 62 1C 32
	asl $33.b		; 06 33
	tsb $0219.w		; 0C 19 02
	ora $0D06.w,Y		; 19 06 0D
	jmp ($1844.w,X)		; 7C 44 18
	brk $3C.b		; 00 3C
	jsr $000C.w		; 20 0C 00
	trb $0610.w		; 1C 10 06
	brk $0E.b		; 00 0E
	php		; 08
	cop $00.b		; 02 00
	ora ($73.b)		; 12 73
	brk $31.b		; 00 31
	ora ($19.b,X)		; 01 19
	tsb $0C.b		; 04 0C
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	bit $1E20.w		; 2C 20 1E
	bpl  14.b		; 10 0E
	php		; 08
	ora $00.b,S		; 03 00
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $60.b		; 00 60
	bra -96.b		; 80 A0
	rts		; 60

	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
	rts		; 60

	rti		; 40

	rts		; 60

	brk $30.b		; 00 30
	jsr $0030.w		; 20 30 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	sta [$06.b]		; 87 06
	cpy #$46.b		; C0 46
	sbc ($F8.b)		; F2 F8
	sbc $FAFD.w,Y		; F9 FD FA
	ply		; 7A
	sbc $0075.w,X		; FD 75 00
	ora $03.b,S		; 03 03
	ora [$00.b]		; 07 00
	eor $607F00.l		; 4F 00 7F 60
	sbc $72FF78.l,X		; FF 78 FF 72
	adc $007E61.l,X		; 7F 61 7E 00
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
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora ($83.b,X)		; 01 83
	sta $73.b,S		; 83 73
	adc [$F6.b],Y		; 77 F6
	sbc $00F874.l,X		; FF 74 F8 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	sta [$83.b]		; 87 83
	sbc [$32.b],Y		; F7 32
	sbc $00FFE0.l,X		; FF E0 FF 00
	sbc $5DFC00.l,X		; FF 00 FC 5D
	trb $B8.b		; 14 B8
	dec $EC.b		; C6 EC
	cmp $9F.b,S		; C3 9F
	cpy #$3F.b		; C0 3F
	bra  31.b		; 80 1F
	brk $07.b		; 00 07
	brk $02.b		; 00 02
	ora ($33.b,X)		; 01 33
	ldy #$03.b		; A0 03
	rep #$80		; C2 80
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	asl $81.b		; 06 81
	sty $8C87.w		; 8C 87 8C
	and ($48.b,S),Y		; 33 48
	sbc $087FD8.l,X		; FF D8 7F 08
	cmp $84FF08.l,X		; DF 08 FF 84
	ora ($80.b,X)		; 01 80
	sta [$C4.b]		; 87 C4
	sta $C0.b,S		; 83 C0
	ora $00D7C8.l		; 0F C8 D7 00
	ora $303F90.l,X		; 1F 90 3F 30
	lda $30DF38.l,X		; BF 38 DF 30
	cmp $30C730.l,X		; DF 30 C7 30
	cmp [$30.b]		; C7 30
	sbc [$3C.b]		; E7 3C
	sbc $3C.b		; E5 3C
	sta $3E.b,S		; 83 3E
	bra  62.b		; 80 3E
	cmp $00CF00.l		; CF 00 CF 00
	cmp $20EF10.l,X		; DF 10 EF 20
	wai		; CB
	php		; 08
	cmp $00.b,S		; C3 00
	sbc $24.b		; E5 24
	xba		; EB
	rol A		; 2A
	lsr $7421.w,X		; 5E 21 74
	phd		; 0B
	eor $7F32.w		; 4D 32 7F
	rts		; 60

	stp		; DB
	pei ($F0.b)		; D4 F0
	eor $BB4FDE.l		; 4F DE 4F BB
	tay		; A8
	and ($1A.b,X)		; 21 1A
	phd		; 0B
	bmi  50.b		; 30 32
	brk $60.b		; 00 60
	brk $F4.b		; 00 F4
	jsr $A0E0.w		; 20 E0 A0
	cpx #$A0.b		; E0 A0
	sbc [$40.b]		; E7 40
	bcs 110.b		; B0 6E
	dec $7823.w,X		; DE 23 78
	sta ($60.b,X)		; 81 60
	ora $1900.w,X		; 1D 00 19
	sei		; 78
	sbc $9FCF33.l,X		; FF 33 CF 9F
	inc $5C.b		; E6 5C
	rti		; 40

	bit $FE00.w,X		; 3C 00 FE
	bra  -2.b		; 80 FE
	trb $10F6.w		; 1C F6 10
	sty $84.b		; 84 84
	phd		; 0B
	php		; 08
	ora [$01.b]		; 07 01
	sbc $01FF00.l,X		; FF 00 FF 01
	sbc $0EF110.l		; EF 10 F1 0E
	bit $93C3.w,X		; 3C C3 93
	rts		; 60

	jmp ($0E00.w,X)		; 7C 00 0E
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $10.b		; 00 10
	brk $0E.b		; 00 0E
	brk $C3.b		; 00 C3
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BE.b		; 00 BE
	ldy $2A3B.w		; AC 3B 2A
	ora $00FF00.l,X		; 1F 00 FF 00
	adc $FC0380.l,X		; 7F 80 03 FC
	cpx #$1F.b		; E0 1F
	ora $41ED00.l,X		; 1F 00 ED 41
	inc $E0C4.w		; EE C4 E0
	cpx #$00.b		; E0 00
	brk $80.b		; 00 80
	brk $FC.b		; 00 FC
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $9F.b		; 00 9F
	rts		; 60

	lda $00FF40.l,X		; BF 40 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FC00.l,X		; FF 00 FC 00
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
	cmp $0D.b,S		; C3 0D
	beq   4.b		; F0 04
	sbc ($06.b,X)		; E1 06
	cmp ($02.b,X)		; C1 02
	bra   2.b		; 80 02
	ora ($03.b,X)		; 01 03
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	asl $04.b		; 06 04
	ora $00.b,S		; 03 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	brk $58.b		; 00 58
	bmi 120.b		; 30 78
	bmi  52.b		; 30 34
	bit $2E3E.w,X		; 3C 3E 2E
	and $16273F.l		; 2F 3F 27 16
	cop $13.b		; 02 13
	ora ($30.b,X)		; 01 30
	bpl   0.b		; 10 00
	brk $28.b		; 00 28
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	bpl  39.b		; 10 27
	brk $03.b		; 00 03
	ora ($01.b,X)		; 01 01
	brk $A6.b		; 00 A6
	sec		; 38
	adc $81B90A.l		; 6F 0A B9 81
	jsl $36C6E2.l		; 22 E2 C6 36
	sbc ($0D.b,X)		; E1 0D
	sbc ($03.b),Y		; F1 03
	jsr ($D300.w,X)		; FC 00 D3
	ora ($F2.b,S),Y		; 13 F2
	brk $78.b		; 00 78
	ora [$12.b]		; 07 12
	ora $000F04.l		; 0F 04 0F 00
	ora $000F00.l,X		; 1F 00 0F 00
	ora $F0.b,S		; 03 F0
	sei		; 78
	jmp $62625C.l		; 5C 5C 62 62
	rol $0C32.w,X		; 3E 32 0C
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $7C.b		; 00 7C
	jsr $1C7E.w		; 20 7E 1C
	rol $0C0C.w,X		; 3E 0C 0C
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
	brk $1C.b		; 00 1C
	brk $2B.b		; 00 2B
	trb $BA.b		; 14 BA
	ora $77.b		; 05 77
	bra  -3.b		; 80 FD
	.db $82, $C7, $38		; 82 C7 38
	cmp $2A.b,X		; D5 2A
	sbc $0006.w,Y		; F9 06 00
	brk $14.b		; 00 14
	php		; 08
	ora $00.b		; 05 00
	tya		; 98
	ora $2082.w,Y		; 19 82 20
	clc		; 18
	.db $62, $0A, $71		; 62 0A 71
	asl $01.b		; 06 01
	adc [$00.b],Y		; 77 00
	asl $B910.w,X		; 1E 10 B9
	sta ($67.b,X)		; 81 67
	ror $98.b		; 66 98
	clc		; 18
	inc $6F80.w,X		; FE 80 6F
	rts		; 60

	txy		; 9B
	clc		; 18
	ora $EFFF8F.l		; 0F 8F FF EF
	sbc $98FE7E.l,X		; FF 7E FE 98
	sbc $7FFFE7.l,X		; FF E7 FF 7F
	sbc $677F9F.l,X		; FF 9F 7F 67
	cpx $A4.b		; E4 A4
	adc ($50.b)		; 72 50
	adc $BF68.w,Y		; 79 68 BF
	ldx $F0FF.w		; AE FF F0
	sbc $C03F00.l,X		; FF 00 3F C0
	sbc $1BBF00.l,X		; FF 00 BF 1B
	cmp $EE8D.w,X		; DD 8D EE
	stx $EE.b		; 86 EE
	rti		; 40

	beq   0.b		; F0 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	ldy #$20.b		; A0 20
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$C0.b		; E0 C0
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $186730.l		; 4F 30 67 18
	and [$18.b]		; 27 18
	and $1C.b,S		; 23 1C
	bpl  15.b		; 10 0F
	tsb $0303.w		; 0C 03 03
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs  48.b		; 70 30
	sed		; F8
	pha		; 48
	cpy $8600.w		; CC 00 86
	tsb $2A87.w		; 0C 87 2A
	lda $44.b,S		; A3 44
	sbc ($00.b,X)		; E1 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	bcs -128.b		; B0 80
	jsr ($7A84.w,X)		; FC 84 7A
	cop $5C.b		; 02 5C
	brk $3F.b		; 00 3F
	and ($17.b,X)		; 21 17
	sbc ($82.b),Y		; F1 82
	beq   8.b		; F0 08
	cli		; 58
	bra 120.b		; 80 78
	cpy $6C.b		; C4 6C
	.db $82, $2E, $C1		; 82 2E C1
	and [$C0.b]		; 27 C0
	and ($AE.b,S),Y		; 33 AE
	ldy #$1F.b		; A0 1F
	bpl -121.b		; 10 87
	brk $CF.b		; 00 CF
	pha		; 48
	sta $00.b,S		; 83 00
	cmp $04.b		; C5 04
	rep #$02		; C2 02
	sbc ($21.b,X)		; E1 21
	ora [$00.b]		; 07 00
	tsb $1603.w		; 0C 03 16
	ora #$24.b		; 09 24
	tas		; 1B
	and $5902.w,X		; 3D 02 59
	rol $73.b		; 26 73
	tsb $52AF.w		; 0C AF 52
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora #$06.b		; 09 06
	ora ($0C.b,S),Y		; 13 0C
	brk $1F.b		; 00 1F
	rol $18.b		; 26 18
	tsb $5030.w		; 0C 30 50
	jsl $3C00C0.l		; 22 C0 00 3C
	cpy #$16.b		; C0 16
	inx		; E8
	ldx #$5C.b		; A2 5C
	eor $AA.b,X		; 55 AA
	sbc $2A.b,X		; F5 2A
	sta [$48.b],Y		; 97 48
	lsr A		; 4A
	sty $00.b		; 84 00
	brk $C0.b		; 00 C0
	brk $E8.b		; 00 E8
	bpl  84.b		; 10 54
	dey		; 88
	rol A		; 2A
	ldy $0A.b		; A4 0A
	bra 104.b		; 80 68
	rti		; 40

	ldy $10.b		; A4 10
	jsr $211E.w		; 20 1E 21
	trb $1D20.w		; 1C 20 1D
	and ($1D.b,X)		; 21 1D
	ora ($0D.b),Y		; 11 0D
	ora ($0D.b),Y		; 11 0D
	ora #$05.b		; 09 05
	ora #$03.b		; 09 03
	asl $1C01.w,X		; 1E 01 1C
	ora $1C.b,S		; 03 1C
	ora $1C.b,S		; 03 1C
	ora $0C.b,S		; 03 0C
	ora $0D.b,S		; 03 0D
	ora $05.b,S		; 03 05
	ora $01.b,S		; 03 01
	ora [$E5.b]		; 07 E5
	sbc ($EF.b),Y		; F1 EF
	inc $CF.b		; E6 CF
	sbc ($DF.b,X)		; E1 DF
	cmp $DC.b,S		; C3 DC
	cpy $8E.b		; C4 8E
	cmp ($8F.b)		; D2 8F
	bcs -121.b		; B0 87
	clv		; B8
	cmp $FA.b,S		; C3 FA
	dec $F0.b		; C6 F0
	sta ($F0.b,X)		; 81 F0
	sta $E0.b,S		; 83 E0
	sta [$E3.b]		; 87 E3
	sta ($E1.b,S),Y		; 93 E1
	bcs -64.b		; B0 C0
	sec		; 38
	cpy #$BB.b		; C0 BB
	inc A		; 1A
	pea $FAB4.w		; F4 B4 FA
	tsx		; BA
	eor $5719.w,X		; 5D 19 57
	trb $55.b		; 14 55
	trb $EB.b		; 14 EB
	.db $42, $EA		; 42 EA
	.db $42, $1E		; 42 1E
	mvp $0B,$BF		; 44 BF 0B
	lda $A6BF05.l,X		; BF 05 BF A6
	lda $ABBFAB.l,X		; BF AB BF AB
	eor $1D5F1D.l,X		; 5F 1D 5F 1D
	adc $08FE08.l		; 6F 08 FE 08
	tsb $F908.w		; 0C 08 F9
	sbc $1B1A.w,Y		; F9 1A 1B
	jmp.w [$F81F]		; DC 1F F8
	ora $FF1FD0.l,X		; 1F D0 1F FF
	beq  -1.b		; F0 FF
	beq  -1.b		; F0 FF
	beq -10.b		; F0 F6
	brk $F5.b		; 00 F5
	sbc ($F2.b,X)		; E1 F2
.ACCU 8
.INDEX 8
	sep #$F6		; E2 F6
	inc $FC.b		; E6 FC
	cpx $7C03.w		; EC 03 7C
	ora ($7C.b,X)		; 01 7C
	ora $F6.b,S		; 03 F6
	ora ($F6.b,X)		; 01 F6
	ora ($E2.b,X)		; 01 E2
	brk $C2.b		; 00 C2
	ora ($83.b,X)		; 01 83
	bra   3.b		; 80 03
	cmp [$54.b],Y		; D7 54
	lda ($30.b,S),Y		; B3 30
	lda ($A0.b,X)		; A1 A0
	adc $62.b,S		; 63 62
	eor ($40.b,X)		; 41 40
	sta ($80.b,X)		; 81 80
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	bra  35.b		; 80 23
	bra  33.b		; 80 21
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	cpy #$20.b		; C0 20
	cmp ($01.b,X)		; C1 01
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $02.b		; 05 02
	ora $02.b		; 05 02
	asl A		; 0A
	ora $0E.b		; 05 0E
	ora ($14.b,X)		; 01 14
	phd		; 0B
	trb $0B.b		; 14 0B
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora $02.b		; 05 02
	ora ($06.b,X)		; 01 06
	phd		; 0B
	tsb $0A.b		; 04 0A
	tsb $10.b		; 04 10
	sta ($2C.b)		; 92 2C
	sbc $19.b		; E5 19
	cmp [$13.b]		; C7 13
	cmp [$33.b]		; C7 33
	cmp [$6B.b]		; C7 6B
	cmp $648F21.l		; CF 21 8F 64
	phb		; 8B
	dey		; 88
	adc [$98.b]		; 67 98
	ora $BC.b,S		; 03 BC
	ora $B9.b		; 05 B9
	ora $79.b,S		; 03 79
	eor $31.b,S		; 43 31
	ora $78.b,S		; 03 78
	phd		; 0B
	beq -121.b		; F0 87
	eor $FEB4.w		; 4D B4 FE
	sta ($FF.b,X)		; 81 FF
	bra  -6.b		; 80 FA
	sta $DA.b		; 85 DA
	lda $CF.b		; A5 CF
	bcs -14.b		; B0 F2
	cmp $9AE7.w		; CD E7 9A
	bit $80.b,X		; 34 80
	ora ($B8.b,X)		; 01 B8
	brk $BD.b		; 00 BD
	sta $B8.b		; 85 B8
	lda $98.b		; A5 98
	bcs -128.b		; B0 80
	sta $18C0.w		; 8D C0 18
	ldx #$80.b		; A2 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	ora ($01.b,X)		; 01 01
	ora $82.b,S		; 03 82
	asl $C5.b		; 06 C5
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $80.b,S		; 03 80
	brk $1C.b		; 00 1C
	trb $36.b		; 14 36
	rol $5C63.w		; 2E 63 5C
	cmp ($AE.b,X)		; C1 AE
	sta ($6E.b,X)		; 81 6E
	and ($9E.b,X)		; 21 9E
	and ($DE.b,X)		; 21 DE
	adc ($00.b,X)		; 61 00
	brk $08.b		; 00 08
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	brk $7E.b		; 00 7E
	brk $DE.b		; 00 DE
	brk $FE.b		; 00 FE
	jsr $009E.w		; 20 9E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	bvs  32.b		; 70 20
	bmi -128.b		; 30 80
	tya		; 98
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	ldy #$20.b		; A0 20
	cpy #$00.b		; C0 00
	bvs  16.b		; 70 10
	ldy #$B0.b		; A0 B0
	rti		; 40

	bne  32.b		; D0 20
	sed		; F8
	bpl 120.b		; 10 78
	bpl  60.b		; 10 3C
	php		; 08
	bit $1E04.w,X		; 3C 04 1E
	tsb $0E.b		; 04 0E
	rti		; 40

	brk $A0.b		; 00 A0
	bra  80.b		; 80 50
	bvc  32.b		; 50 20
	jsr $0808.w		; 20 08 08
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	tsb $0E0F.w		; 0C 0F 0E
	ora $0B0F0D.l		; 0F 0D 0F 0B
	phd		; 0B
	ora [$01.b]		; 07 01
	ora $00.b		; 05 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	asl A		; 0A
	cop $0C.b		; 02 0C
	brk $0E.b		; 00 0E
	cop $0F.b		; 02 0F
	tsb $01.b		; 04 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B3.b		; 00 B3
	.db $42, $F1		; 42 F1
	ora ($6D.b,X)		; 01 6D
	sty $9D.b,X		; 94 9D
	cop $EC.b		; 02 EC
	.db $62, $02, $11		; 62 02 11
	sbc $17E4.w		; ED E4 17
	jsl $0F224E.l		; 22 4E 22 0F
	adc ($93.b,X)		; 61 93
	rts		; 60

	ora $62.b,S		; 03 62
	and ($F0.b,X)		; 21 F0
	ora $FD.b		; 05 FD
	eor [$F3.b]		; 47 F3
	cop $F8.b		; 02 F8
	ldy $7000.w,X		; BC 00 70
	dey		; 88
	beq  24.b		; F0 18
	bra  56.b		; 80 38
	cpy #$10.b		; C0 10
	brk $20.b		; 00 20
	rts		; 60

	ldy #$A0.b		; A0 A0
	jsr $9060.w		; 20 60 90
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq  48.b		; F0 30
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	jsr $6000.w		; 20 00 60
	rti		; 40

	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	and [$17.b],Y		; 37 17
	adc $1A57.w,X		; 7D 57 1A
	tad		; 5B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($07.b,X)		; 01 07
	ora $3F.b,S		; 03 3F
	ora [$7F.b],Y		; 17 7F
	trb $FF.b		; 14 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$A8.b],Y		; 17 A8
	ora ($6C.b,S),Y		; 13 6C
	tas		; 1B
	stz $5C.b		; 64 5C
	and $4F.b,S		; 23 4F
	bmi 105.b		; 30 69
	bpl  30.b		; 10 1E
	brk $03.b		; 00 03
	brk $28.b		; 00 28
	cpy #$6C.b		; C0 6C
	bra 100.b		; 80 64
	bra  35.b		; 80 23
	bra  48.b		; 80 30
	bra  16.b		; 80 10
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $EA.b		; 00 EA
.ACCU 16
	rep #$EE		; C2 EE
	dex		; CA
	sbc $E909.w		; ED 09 E9
	ora ($3D.b,X)		; 01 3D
	cmp $FF.b		; C5 FF
	brk $3F.b		; 00 3F
	brk $C7.b		; 00 C7
	brk $DF.b		; 00 DF
	ora $15DF.w,X		; 1D DF 15
	ora $161716.l,X		; 1F 16 17 16
	cmp [$02.b]		; C7 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $3D.b,S		; 63 3D
	cmp [$FB.b]		; C7 FB
	cmp $FFE0.w,Y		; D9 E0 FF
	clc		; 18
	sbc $00FF80.l,X		; FF 80 FF 00
	sed		; F8
	brk $C0.b		; 00 C0
	brk $F9.b		; 00 F9
	cld		; D8
	sbc $20.b,S		; E3 20
	dec $06.b		; C6 06
	clc		; 18
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	ora ($FC.b,X)		; 01 FC
	ora ($F8.b,X)		; 01 F8
	ora ($F0.b,X)		; 01 F0
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
	brk $40.b		; 00 40
	jsr $A0C0.w		; 20 C0 A0
	rti		; 40

	ldy #$00.b		; A0 00
	ldy #$00.b		; A0 00
	bcs -96.b		; B0 A0
	bvs -128.b		; 70 80
	cli		; 58
	beq 120.b		; F0 78
	cpy #$00.b		; C0 00
	rti		; 40

	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	brk $60.b		; 00 60
	jsr $0000.w		; 20 00 00
	bmi  16.b		; 30 10
	rts		; 60

	brk $2C.b		; 00 2C
	ora ($2D.b,S),Y		; 13 2D
	ora ($5A.b,S),Y		; 13 5A
	rol $57.b		; 26 57
	rol $3D45.w		; 2E 45 3D
	lda $5B.b,S		; A3 5B
	sta $7B.b,S		; 83 7B
	sta $7B.b,S		; 83 7B
	ora ($0C.b)		; 12 0C
	ora ($0C.b,S),Y		; 13 0C
	and [$19.b]		; 27 19
	and $023F11.l		; 2F 11 3F 02
	phy		; 5A
	and $79.b		; 25 79
	ora [$79.b]		; 07 79
	ora [$57.b]		; 07 57
	clc		; 18
	cmp [$DB.b]		; C7 DB
	and #$FC33.w		; 29 33 FC
	and ($DC.b),Y		; 31 DC
	cmp ($BE.b),Y		; D1 BE
	inc $CEDE.w		; EE DE CE
	dec $C6.b,X		; D6 C6
	cpx #$07.b		; E0 07
	sbc ($17.b),Y		; F1 17
	cpx #$C7.b		; E0 C7
	beq -61.b		; F0 C3
	beq  35.b		; F0 23
	rol $8EC1.w		; 2E C1 8E
	sbc ($0E.b,X)		; E1 0E
	sbc #$C23F.w		; E9 3F C2
	jsr ($FCE4.w,X)		; FC E4 FC
	jsr ($FCFC.w,X)		; FC FC FC
	lsr $7DC6.w,X		; 5E C6 7D
	dec A		; 3A
	adc $2CEEC1.l,X		; 7F C1 EE 2C
	brk $DA.b		; 00 DA
	bra -26.b		; 80 E6
	jsr ($0CFE.w,X)		; FC FE 0C
	inc $FF00.w,X		; FE 00 FF
	bmi  -2.b		; 30 FE
	ora ($C0.b,X)		; 01 C0
	and $CB91.w,X		; 3D 91 CB
	clc		; 18
	cmp [$30.b],Y		; D7 30
	adc [$20.b]		; 67 20
	cmp $00DE00.l		; CF 00 DE 00
	lsr $5E00.w,X		; 5E 00 5E
	brk $BD.b		; 00 BD
	and ($07.b,X)		; 21 07
	bra  15.b		; 80 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $BF.b		; 00 BF
	bra -65.b		; 80 BF
	bra  -2.b		; 80 FE
	cpy #$1C.b		; C0 1C
	adc ($1C.b,X)		; 61 1C
	adc ($3C.b,X)		; 61 3C
	adc ($BC.b,X)		; 61 BC
	sbc ($BE.b,X)		; E1 BE
	sbc ($0F.b,X)		; E1 0F
	sbc ($0F.b,X)		; E1 0F
	sbc ($1F.b,X)		; E1 1F
	sbc ($DE.b),Y		; F1 DE
	rti		; 40

	ldx $9E20.w,Y		; BE 20 9E
	brk $1F.b		; 00 1F
	ora ($1F.b,X)		; 01 1F
	ora ($BE.b,X)		; 01 BE
	ldy #$5E.b		; A0 5E
	rti		; 40

	lsr $9040.w		; 4E 40 90
	stz $8C08.w		; 9C 08 8C
	rti		; 40

	dec $44.b		; C6 44
	dec $22.b		; C6 22
	sbc $10.b,S		; E3 10
	sbc ($09.b),Y		; F1 09
	lda $9C04.w,Y		; B9 04 9C
	pla		; 68
	php		; 08
	beq -128.b		; F0 80
	bit $3804.w,X		; 3C 04 38
	brk $5C.b		; 00 5C
	rti		; 40

	rol $1620.w		; 2E 20 16
	bpl  11.b		; 10 0B
	php		; 08
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
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	ora $0001.w		; 0D 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$F0.b		; C0 F0
	beq -88.b		; F0 A8
	dey		; 88
	sed		; F8
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	sed		; F8
	bvs 120.b		; 70 78
	brk $00.b		; 00 00
	brk $5C.b		; 00 5C
	jmp $3E6262.l		; 5C 62 62 3E
	and ($0C.b)		; 32 0C
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($7E20.w,X)		; 7C 20 7E
	trb $0C3E.w		; 1C 3E 0C
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
	brk $06.b		; 00 06
	brk $1E.b		; 00 1E
	brk $35.b		; 00 35
	php		; 08
	adc $02FD00.l		; 6F 00 FD 02
	adc ($0C.b,S),Y		; 73 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	php		; 08
	brk $10.b		; 00 10
	bpl  34.b		; 10 22
	and ($8C.b,X)		; 21 8C
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $0C.b,S		; 03 0C
	tsb $3333.w		; 0C 33 33
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $0C3F03.l		; 0F 03 3F 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	dey		; 88
	dey		; 88
	bit $CC3C.w,X		; 3C 3C CC
	cpy $00.b		; C4 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	bvs  -4.b		; 70 FC
	cpy #$FC.b		; C0 FC
	sec		; 38
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	ldy #$38.b		; A0 38
	inx		; E8
	asl $03FA.w		; 0E FA 03
	sbc $3C01.w,X		; FD 01 3C
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	beq   0.b		; F0 00
	jsr ($FE00.w,X)		; FC 00 FE
	brk $C3.b		; 00 C3
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	ora $FC.b,S		; 03 FC
	sbc ($0E.b),Y		; F1 0E
	jsr ($8E03.w,X)		; FC 03 8E
	adc ($83.b),Y		; 71 83
	jmp ($3EC1.w,X)		; 7C C1 3E
	cpy #$3F.b		; C0 3F
	cpy #$3F.b		; C0 3F
	jsr ($0E03.w,X)		; FC 03 0E
	ora ($03.b,X)		; 01 03
	brk $71.b		; 00 71
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $6F.b		; 00 6F
	sta ($F7.b,S),Y		; 93 F7
	phd		; 0B
	pea $7B08.w		; F4 08 7B
	sty $69.b		; 84 69
	stx $25.b,Y		; 96 25
	phx		; DA
	bmi -49.b		; 30 CF
	bpl -17.b		; 10 EF
	bcc  99.b		; 90 63
	php		; 08
	sbc ($08.b,S),Y		; F3 08
	sbc ($84.b,S),Y		; F3 84
	sei		; 78
	stx $68.b,Y		; 96 68
	phx		; DA
	bit $CF.b		; 24 CF
	bmi -17.b		; 30 EF
	bpl   4.b		; 10 04
	stx $EE.b		; 86 EE
	sbc $00FF40.l,X		; FF 40 FF 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra   4.b		; 80 04
	sbc $01FFC8.l,X		; FF C8 FF 01
	inc $FF00.w,X		; FE 00 FF
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
	jsr ($FF00.w,X)		; FC 00 FF
	brk $00.b		; 00 00
	sbc $008000.l,X		; FF 00 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	asl $7E9E.w		; 0E 9E 7E
	inc $FF7E.w,X		; FE 7E FF
	rol $3EFF.w,X		; 3E FF 3E
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bit $3C7F.w,X		; 3C 7F 3C
	and $FFBF3C.l,X		; 3F 3C BF FF
	and $BDBC.w,X		; 3D BC BD
	sta ($DC.b),Y		; 91 DC
	cpy $D8.b		; C4 D8
	dex		; CA
	sep #$84		; E2 84
	cpx #$23.b		; E0 23
	rti		; 40

	brk $00.b		; 00 00
	sec		; 38
	and $80FF10.l,X		; 3F 10 FF 80
	sbc $83FF80.l,X		; FF 80 FF 83
	sbc $FB03.w,X		; FD 03 FB
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	eor [$47.b]		; 47 47
	bvs  16.b		; 70 10
	jmp ($FF7C.w,X)		; 7C 7C FF
	asl $87FF.w,X		; 1E FF 87
	adc [$51.b],Y		; 77 51
	sbc ($10.b,S),Y		; F3 10
	trb $7F00.w		; 1C 00 7F
	clv		; B8
	ora $837F8F.l,X		; 1F 8F 7F 83
	asl $8700.w,X		; 1E 00 87
	brk $D9.b		; 00 D9
	dey		; 88
	trb $000C.w		; 1C 0C 00
	brk $C3.b		; 00 C3
	cmp ($7F.b,X)		; C1 7F
	adc ($04.b,X)		; 61 04
	ora $C4.b,S		; 03 C4
	eor $F8.b,S		; 43 F8
	sta [$F8.b]		; 87 F8
	sbc [$E0.b]		; E7 E0
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	bit $80E0.w,X		; 3C E0 80
	xce		; FB
	xce		; FB
	sei		; 78
	sec		; 38
	sta [$07.b]		; 87 07
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpy #$FE.b		; C0 FE
	sty $87.b		; 84 87
	jmp ($7F00.w,X)		; 7C 00 7F
	brk $7F.b		; 00 7F
	brk $9F.b		; 00 9F
	bra -29.b		; 80 E3
	cpx #$00.b		; E0 00
	brk $20.b		; 00 20
	jsr $027A.w		; 20 7A 02
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $007F00.l,X		; FF 00 7F 00
	ora $FF0000.l,X		; 1F 00 00 FF
	jsr ($0FFF.w,X)		; FC FF 0F
	sbc $013C04.l,X		; FF 04 3C 01
	ora $000300.l		; 0F 00 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $30.b		; 02 30
	bmi  11.b		; 30 0B
	php		; 08
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $01.b		; 05 01
	phd		; 0B
	sbc ($C0.b,S),Y		; F3 C0
	stz $DC24.w,X		; 9E 24 DC
	and ($D9.b,S),Y		; 33 D9
	cpx #$09.b		; E0 09
	sbc $0E.b		; E5 0E
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	asl $04.b		; 06 04
	adc ($00.b,X)		; 61 00
	xce		; FB
	phx		; DA
	ldx $FF8A.w		; AE 8A FF
	phd		; 0B
	sed		; F8
	php		; 08
	sbc $0A.b,X		; F5 0A
	sbc [$99.b]		; E7 99
	lda [$AB.b],Y		; B7 AB
	lda $AFBFA7.l,X		; BF A7 BF AF
	bcs -104.b		; B0 98
	ldx $96.b,Y		; B6 96
	clv		; B8
	ora $340A.w		; 0D 0A 34
	brk $3D.b		; 00 3D
	sbc ($5B.b,X)		; E1 5B
	sbc $57.b,S		; E3 57
	sbc [$4F.b]		; E7 4F
	beq 111.b		; F0 6F
	pea $786F.w		; F4 6F 78
	adc [$1C.b],Y		; 77 1C
	trb $D057.w		; 1C 57 D0
	eor $43.b,S		; 43 43
	sta $809C.w,X		; 9D 9C 80
	bra -65.b		; 80 BF
	sta $B8809F.l,X		; 9F 9F 80 B8
	tya		; 98
	ora $EF1FE3.l,X		; 1F E3 1F EF
	ora $E31FFC.l,X		; 1F FC 1F E3
	lda $C09FFF.l,X		; BF FF 9F C0
	lda $C71FFF.l,X		; BF FF 1F C7
	sbc ($02.b)		; F2 02
	rol $DF3E.w,X		; 3E 3E DF
	cmp ($FF.b,X)		; C1 FF
	ora ($01.b,X)		; 01 01
	ora ($FF.b,X)		; 01 FF
	sbc $7F03FF.l,X		; FF FF 03 7F
	ora $FE.b,S		; 03 FE
	jsr ($C0FE.w,X)		; FC FE C0
	sbc $FEFF3E.l,X		; FF 3E FF FE
	sbc $00FEFE.l,X		; FF FE FE 00
	inc $FEFC.w,X		; FE FC FE
	jsr ($FE06.w,X)		; FC 06 FE
	ora ($FF.b,X)		; 01 FF
	bra  -9.b		; 80 F7
	jsr $9039.w		; 20 39 90
	stz $C744.w,X		; 9E 44 C7
	jsl $7808E3.l		; 22 E3 08 78
	ora #$8208.w		; 09 08 82
	.db $82, $41, $41		; 82 41 41
	bne  16.b		; D0 10
	pla		; 68
	php		; 08
	tsx		; BA
	.db $82, $5D, $41		; 82 5D 41
	ora [$10.b],Y		; 17 10
	bne  30.b		; D0 1E
	ply		; 7A
	ora $9E.b,S		; 03 9E
	bra  55.b		; 80 37
	beq   1.b		; F0 01
	adc $000700.l,X		; 7F 00 07 00
	cpy #$80.b		; C0 80
	beq -32.b		; F0 E0
	brk $FC.b		; 00 FC
	brk $7F.b		; 00 7F
	brk $4F.b		; 00 4F
	rti		; 40

	asl $06.b		; 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	cpx #$1F.b		; E0 1F
	rts		; 60

	ora $700F70.l,X		; 1F 70 0F 70
	ora $3C0738.l		; 0F 38 07 3C
	ora $1E.b,S		; 03 1E
	ora ($1F.b,X)		; 01 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $03FB04.l,X		; FF 04 FB 03
	jsr ($FE01.w,X)		; FC 01 FE
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FB00.l,X		; FF 00 FB 00
	jsr ($FE00.w,X)		; FC 00 FE
	brk $3F.b		; 00 3F
	cpy #$1F.b		; C0 1F
	cpx #$0F.b		; E0 0F
	beq   3.b		; F0 03
	jsr ($FF00.w,X)		; FC 00 FF
	brk $FF.b		; 00 FF
	bra 127.b		; 80 7F
	sed		; F8
	ora [$C0.b]		; 07 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $07.b		; 00 07
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	ora $FF01FE.l		; 0F FE 01 FF
	brk $3F.b		; 00 3F
	cpy #$01.b		; C0 01
	inc $FF00.w,X		; FE 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	ora $000100.l		; 0F 00 01 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	inc $FF00.w,X		; FE 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	jsr ($0FEC.w,X)		; FC EC 0F
	cmp $02C1.w,X		; DD C1 02
	inc $0700.w,X		; FE 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	rol $0500.w,X		; 3E 00 05
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($39.b,X)		; 01 39
	ora $6C.b,S		; 03 6C
	ora ($4B.b)		; 12 4B
	rol $F3.b,X		; 36 F3
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	and ($00.b),Y		; 31 00
	ora $7C0428.l		; 0F 28 04 7C
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phd		; 0B
	php		; 08
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -16.b		; 80 F0
	ldy #$BE.b		; A0 BE
	trb $F7.b		; 14 F7
	ora [$3F.b]		; 07 3F
	php		; 08
	php		; 08
	phd		; 0B
	asl A		; 0A
	asl $04.b		; 06 04
	asl $04.b		; 06 04
	rti		; 40

	rti		; 40

	bvc  16.b		; 50 10
	rol A		; 2A
	jsl $0F0007.l		; 22 07 00 0F
	ora [$0E.b]		; 07 0E
	tsb $04.b		; 04 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$FC.b		; E0 FC
	jsr ($03CB.w,X)		; FC CB 03
	adc $003C00.l,X		; 7F 00 3C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($3F00.w,X)		; FC 00 3F
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	and $0A.b,X		; 35 0A
	eor ($3E.b,X)		; 41 3E
	and $0E02.w,X		; 3D 02 0E
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	tsb $3A.b		; 04 3A
	tsb $02.b		; 04 02
	ora $0300.w		; 0D 00 03
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($BC01.w,X)		; FC 01 BC
	ora ($7E.b,X)		; 01 7E
	sta $43.b,S		; 83 43
	ldy $1FE0.w,X		; BC E0 1F
	sec		; 38
	cmp [$1F.b]		; C7 1F
	cpx #$9E.b		; E0 9E
	adc ($9F.b,X)		; 61 9F
	and ($4E.b,X)		; 21 4E
	brk $80.b		; 00 80
	brk $BC.b		; 00 BC
	rti		; 40

	ora $38C7E0.l,X		; 1F E0 C7 38
	cpx #$1F.b		; E0 1F
	adc ($1E.b,X)		; 61 1E
	adc $7C8381.l,X		; 7F 81 83 7C
	bra 127.b		; 80 7F
	asl $03F1.w		; 0E F1 03
	jsr ($FF00.w,X)		; FC 00 FF
	cpy #$3F.b		; C0 3F
	ora [$F8.b]		; 07 F8
	ora $02.b,S		; 03 02
	jmp ($7F00.w,X)		; 7C 00 7F
	brk $F1.b		; 00 F1
	asl $03FC.w		; 0E FC 03
	sbc $C03F00.l,X		; FF 00 3F C0
	sed		; F8
	ora [$68.b]		; 07 68
	inc $439A.w		; EE 9A 43
	dec $2710.w,X		; DE 10 27
	jmp.w [$6F91]		; DC 91 6F
	iny		; C8
	and ($69.b,S),Y		; 33 69
	bcc  54.b		; 90 36
	iny		; C8
	cpy #$70.b		; C0 70
	trb $0F60.w		; 1C 60 0F
	jsr $08CB.w		; 20 CB 08
	.db $62, $82, $34		; 62 82 34
	cpy $96.b		; C4 96
	ror $C8.b		; 66 C8
	and ($00.b),Y		; 31 00
	brk $00.b		; 00 00
	bra  -8.b		; 80 F8
	sed		; F8
	sed		; F8
	tay		; A8
	sbc $9FBFAF.l		; EF AF BF 9F
	adc [$0F.b],Y		; 77 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	brk $F8.b		; 00 F8
	eor [$FB.b],Y		; 57 FB
	eor [$D7.b],Y		; 57 D7
	eor $000F00.l		; 4F 00 0F 00
	cmp $000000.l		; CF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$F0.b		; C0 F0
	sed		; F8
	sbc $7FBEFF.l,X		; FF FF BE 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F8.b		; 00 F8
	cpx #$FF.b		; E0 FF
	inc $00FF.w,X		; FE FF 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	jsr ($F0F8.w,X)		; FC F8 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	sec		; 38
	inc $FE60.w,X		; FE 60 FE
	cpx #$1F.b		; E0 1F
	ora $000100.l,X		; 1F 00 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $83.b,S		; 03 83
	sta $FC.b		; 85 FC
	and $C06F38.l,X		; 3F 38 6F C0
	jmp ($1F68.w)		; 6C 68 1F
	ora $000000.l,X		; 1F 00 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora $FE.b,S		; 03 FE
	asl $70.b		; 06 70
	bmi 120.b		; 30 78
	bpl  31.b		; 10 1F
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	ldy #$A0.b		; A0 A0
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $E0.b		; 00 E0
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($007C.w,X)		; 7C 7C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $18.b		; 00 18
	inc $7E00.w,X		; FE 00 7E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sec		; 38
	cpy #$9C.b		; C0 9C
	rts		; 60

	cpx $FE10.w		; EC 10 FE
	brk $3F.b		; 00 3F
	cpy #$09.b		; C0 09
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
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
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	adc $F81FE0.l,X		; 7F E0 1F F8
	ora [$FF.b]		; 07 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $07.b		; 00 07
	brk $7F.b		; 00 7F
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	cpy #$0F.b		; C0 0F
	beq   0.b		; F0 00
	sbc $FF0FF0.l,X		; FF F0 0F FF
	brk $FF.b		; 00 FF
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $FF.b		; 00 FF
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $F8.b		; 00 F8
	brk $20.b		; 00 20
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	beq -12.b		; F0 F4
	php		; 08
	asl $0200.w		; 0E 00 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	cop $05.b		; 02 05
	ora ($0D.b,X)		; 01 0D
	tsb $0F.b		; 04 0F
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora $B30F00.l		; 0F 00 0F B3
	bpl 115.b		; 10 73
	brk $73.b		; 00 73
	brk $F9.b		; 00 F9
	php		; 08
	sbc $FB00.w,Y		; F9 00 FB
	brk $FB.b		; 00 FB
	dey		; 88
	and ($90.b,S),Y		; 33 90
	eor $8CFD.w		; 4D FD 8C
	jsr ($FC8C.w,X)		; FC 8C FC
	asl $FE.b		; 06 FE
	asl $FE.b		; 06 FE
	tsb $FC.b		; 04 FC
	tsb $FC.b		; 04 FC
	jmp $FFFC.w		; 4C FC FF
	sta ($FF.b,X)		; 81 FF
	cpy #$6B.b		; C0 6B
	jmp.w [$06FF]		; DC FF 06
	sbc $2FF219.l,X		; FF 19 F2 2F
	cpx #$3F.b		; E0 3F
	cpx #$3A.b		; E0 3A
	cmp ($C1.b,X)		; C1 C1
	cpy #$C0.b		; C0 C0
	jmp.w [$06DC]		; DC DC 06
	asl $19.b		; 06 19
	ora $2222.w,Y		; 19 22 22
	jsr $2520.w		; 20 20 25
	jsr $C0FF.w		; 20 FF C0
	sbc $C07E00.l,X		; FF 00 7E C0
	and $F0EFC0.l,X		; 3F C0 EF F0
	and $3FFE.w,X		; 3D FE 3F
	cpy $C43F.w		; CC 3F C4
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	cmp ($C1.b,X)		; C1 C1
	cpx #$E0.b		; E0 E0
	sed		; F8
	sed		; F8
	adc $0C0C7F.l,X		; 7F 7F 0C 0C
	ora $05.b		; 05 05
	adc $41.b		; 65 41
	rol $00.b		; 26 00
	and $080B24.l,X		; 3F 24 0B 08
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	xce		; FB
	bra 111.b		; 80 6F
	beq -126.b		; F0 82
	sbc [$C1.b]		; E7 C1
	sbc [$C0.b]		; E7 C0
	sbc $FFFFF4.l,X		; FF F4 FF FF
	sbc $C41F1F.l,X		; FF 1F 1F C4
	cpy $F8.b		; C4 F8
	sed		; F8
	bra   0.b		; 80 00
	lda ($00.b,X)		; A1 00
	phx		; DA
	ora ($97.b,X)		; 01 97
	sta $0203.w,Y		; 99 03 02
	asl $B010.w,X		; 1E 10 B0
	jsr $10DC.w		; 20 DC 10
	brk $80.b		; 00 80
	brk $A1.b		; 00 A1
	jsr $60FB.w		; 20 FB 60
	sbc $E0FFFC.l,X		; FF FC FF E0
	inc $7040.w,X		; FE 40 70
	jsr $193C.w		; 20 3C 19
	ora #$0818.w		; 09 18 08
	bit $2604.w,X		; 3C 04 26
	cop $04.b		; 02 04
	brk $1D.b		; 00 1D
	tsb $21.b		; 04 21
	brk $79.b		; 00 79
	plp		; 28
	asl $1F.b		; 06 1F
	ora [$1F.b]		; 07 1F
	ora $3F.b,S		; 03 3F
	ora ($27.b,X)		; 01 27
	ora $07.b,S		; 03 07
	cop $1E.b		; 02 1E
	asl $063E.w,X		; 1E 3E 06
	ror $007F.w,X		; 7E 7F 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $808000.l,X		; FF 00 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tya		; 98
	php		; 08
	dex		; CA
	cop $6A.b		; 02 6A
	brk $56.b		; 00 56
	bit $6E.b		; 24 6E
	plp		; 28
	dec A		; 3A
	bpl  42.b		; 10 2A
	bpl  18.b		; 10 12
	brk $07.b		; 00 07
	sta $05CF05.l,X		; 9F 05 CF 05
	adc $117F09.l		; 6F 09 7F 11
	adc $013B01.l,X		; 7F 01 3B 01
	tsa		; 3B
	ora ($13.b,X)		; 01 13
	adc $00EF00.l		; 6F 00 EF 00
	cmp [$00.b]		; C7 00
	sta [$10.b],Y		; 97 10
	sta [$10.b],Y		; 97 10
	lda [$30.b]		; A7 30
	ora [$20.b],Y		; 17 20
	adc ($40.b,S),Y		; 73 40
	bcc -112.b		; 90 90
	bpl  16.b		; 10 10
	sec		; 38
	sec		; 38
	pla		; 68
	sei		; 78
	pla		; 68
	sei		; 78
	pha		; 48
	sei		; 78
	iny		; C8
	sed		; F8
	sty $FEFC.w		; 8C FC FE
	ora ($FF.b,X)		; 01 FF
	brk $FD.b		; 00 FD
	ora $FC.b,S		; 03 FC
	ora $FF.b,S		; 03 FF
	brk $FD.b		; 00 FD
	ora $FC.b,S		; 03 FC
	ora $DF.b,S		; 03 DF
	bmi   1.b		; 30 01
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	ora $03.b,S		; 03 03
	ora $00.b,S		; 03 00
	brk $03.b		; 00 03
	ora $03.b,S		; 03 03
	ora $38.b,S		; 03 38
	sec		; 38
	adc $00FF80.l,X		; 7F 80 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $30EF00.l,X		; FF 00 EF 30
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	sbc [$38.b],Y		; F7 38
	sbc [$38.b],Y		; F7 38
	cmp $38DF38.l,X		; DF 38 DF 38
	sbc $18FF18.l,X		; FF 18 FF 18
	sbc $18FF18.l,X		; FF 18 FF 18
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
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	sbc $30FF30.l,X		; FF 30 FF 30
	sbc $30EF30.l		; EF 30 EF 30
	lda $60BF60.l,X		; BF 60 BF 60
	sbc $60FF60.l,X		; FF 60 FF 60
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	cpx #$E0.b		; E0 E0
	sbc $F900.w,Y		; F9 00 F9
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F3.b		; 00 F3
	brk $F2.b		; 00 F2
	brk $74.b		; 00 74
	brk $06.b		; 00 06
	asl $06.b		; 06 06
	asl $07.b		; 06 07
	ora [$07.b]		; 07 07
	ora [$0F.b]		; 07 0F
	ora $0C0F0C.l		; 0F 0C 0F 0C
	asl $8C88.w		; 0E 88 8C
	rts		; 60

	rti		; 40

	jsr $A000.w		; 20 00 A0
	brk $A0.b		; 00 A0
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	jsr $0090.w		; 20 90 00
	bvc   0.b		; 50 00
	bra -32.b		; 80 E0
	cpy #$E0.b		; C0 E0
	rti		; 40

	rts		; 60

	rti		; 40

	rts		; 60

	cpy #$E0.b		; C0 E0
	cpy #$F0.b		; C0 F0
	rts		; 60

	beq  32.b		; F0 20
	bvs  18.b		; 70 12
	tsb $003C.w		; 0C 3C 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	beq   0.b		; F0 00
	eor $163530.l		; 4F 30 35 16
	brk $1E.b		; 00 1E
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	brk $7F.b		; 00 7F
	php		; 08
	and $C70087.l,X		; 3F 87 00 C7
	rti		; 40

	eor $206F00.l		; 4F 00 6F 20
	cmp $009F40.l,X		; DF 40 9F 00
	lda $003F80.l,X		; BF 80 3F 00
	sei		; 78
	sed		; F8
	sec		; 38
	sed		; F8
	bmi 112.b		; 30 70
	bpl 112.b		; 10 70
	jsr $60E0.w		; 20 E0 60
	cpx #$40.b		; E0 40
	cpy #$C0.b		; C0 C0
	cpy #$E0.b		; C0 E0
	sec		; 38
	beq  45.b		; F0 2D
	sed		; F8
	and [$FD.b]		; 27 FD
	and $FF11FF.l		; 2F FF 11 FF
	ora ($FF.b)		; 12 FF
	tsb $01FE.w		; 0C FE 01
	and [$20.b]		; 27 20
	jsl $202020.l		; 22 20 20 20
	and $192D.w		; 2D 2D 19
	ora $1313.w,Y		; 19 13 13
	tsb $010C.w		; 0C 0C 01
	ora ($37.b,X)		; 01 37
	jsr ($847F.w,X)		; FC 7F 84
	sbc $BCF7C4.l,X		; FF C4 F7 BC
	sbc $48FF88.l,X		; FF 88 FF 48
	sbc $80FF30.l,X		; FF 30 FF 80
	bit $043C.w,X		; 3C 3C 04
	tsb $C4.b		; 04 C4
	cpy $BC.b		; C4 BC
	ldy $8888.w,X		; BC 88 88
	iny		; C8
	iny		; C8
	bmi  48.b		; 30 30
	bra -128.b		; 80 80
	sbc $01FE1D.l,X		; FF 1D FE 01
	and $008300.l,X		; 3F 00 83 00
	sta ($00.b,X)		; 81 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	sbc $01.b,S		; E3 01
	and $013D.w,X		; 3D 3D 01
	ora ($C0.b,X)		; 01 C0
	cpy #$7C.b		; C0 7C
	jmp ($7E7E.w,X)		; 7C 7E 7E
	and $1F1F3F.l,X		; 3F 3F 1F 1F
	trb $E61F.w		; 1C 1F E6
	sty $E3.b		; 84 E3
	brk $70.b		; 00 70
	cpy #$D8.b		; C0 D8
	rts		; 60

	sbc #$FC31.w		; E9 31 FC
	bpl  62.b		; 10 3E
	php		; 08
	ora $9802.w,X		; 1D 02 98
	stz $1F1C.w,X		; 9E 1C 1F
	cmp $E7E7CF.l		; CF CF E7 E7
	ror $77.b,X		; 76 77
	tsa		; 3B
	tsa		; 3B
	cmp $E2D9.w,Y		; D9 D9 E2
.ACCU 8
	sep #$6B		; E2 6B
	brk $6B.b		; 00 6B
	brk $4B.b		; 00 4B
	php		; 08
	eor ($00.b,S),Y		; 53 00
	stx $00.b,Y		; 96 00
	asl $00.b,X		; 16 00
	trb $00.b		; 14 00
	bpl   0.b		; 10 00
	tsb $6C.b		; 04 6C
	tsb $6C.b		; 04 6C
	tsb $4C.b		; 04 4C
	tsb $095C.w		; 0C 5C 09
	sta $1909.w,Y		; 99 09 19
	phd		; 0B
	tas		; 1B
	ora $00FF1F.l		; 0F 1F FF 00
	adc $007F00.l,X		; 7F 00 7F 00
	adc $007F00.l,X		; 7F 00 7F 00
	adc $007F00.l,X		; 7F 00 7F 00
	adc $000000.l		; 6F 00 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bcc -112.b		; 90 90
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	cmp ($80.b,S),Y		; D3 80
	sta ($00.b,S),Y		; 93 00
	sta ($00.b),Y		; 91 00
	ora ($00.b),Y		; 11 00
	bpl   0.b		; 10 00
	trb $04.b		; 14 04
	ora $1308.w,Y		; 19 08 13
	cop $0C.b		; 02 0C
	jmp.w [$9C0C]		; DC 0C 9C
	asl $0E9E.w		; 0E 9E 0E
	asl $1F0F.w,X		; 1E 0F 1F
	phd		; 0B
	ora $0C1F06.l,X		; 1F 06 1F 0C
	ora $FF7CBB.l,X		; 1F BB 7C FF
	adc [$FF.b]		; 67 FF
	adc $BF.b,S		; 63 BF
	adc $DF.b,S		; 63 DF
	and $DC07FB.l,X		; 3F FB 07 DC
	and ($FF.b,S),Y		; 33 FF
	bmi 124.b		; 30 7C
	jmp ($7777.w,X)		; 7C 77 77
	adc $63.b,S		; 63 63
	adc ($73.b,S),Y		; 73 73
	and $07073F.l,X		; 3F 3F 07 07
	and ($33.b,S),Y		; 33 33
	sec		; 38
	sec		; 38
	adc [$F8.b],Y		; 77 F8
	sbc $18FF98.l,X		; FF 98 FF 18
	sbc [$18.b],Y		; F7 18
	sbc $807FF0.l		; EF F0 7F 80
	cmp $30FF30.l,X		; DF 30 FF 30
	sed		; F8
	sed		; F8
	clv		; B8
	clv		; B8
	clc		; 18
	clc		; 18
	sec		; 38
	sec		; 38
	beq -16.b		; F0 F0
	bra -128.b		; 80 80
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sbc $186F18.l		; EF 18 6F 18
	tsa		; 3B
	tsb $0C3B.w		; 0C 3B 0C
	and $0C3F0C.l,X		; 3F 0C 3F 0C
	sta $0C970C.l,X		; 9F 0C 97 0C
	clc		; 18
	clc		; 18
	stz $DC9C.w		; 9C 9C DC
	jmp.w [$CCCC]		; DC CC CC
	cpy $CCCC.w		; CC CC CC
	cpy $EC6C.w		; CC 6C EC
	jmp ($7FEC.w)		; 6C EC 7F
	cpx #$5E.b		; E0 5E
	cpx #$7C.b		; E0 7C
	cpy #$BC.b		; C0 BC
	rti		; 40

	sed		; F8
	brk $B8.b		; 00 B8
	rts		; 60

	stz $FE60.w		; 9C 60 FE
	brk $E0.b		; 00 E0
	cpx #$E1.b		; E0 E1
	sbc ($E3.b,X)		; E1 E3
	sbc $C3.b,S		; E3 C3
	cmp $07.b,S		; C3 07
	ora [$67.b]		; 07 67
	adc [$63.b]		; 67 63
	adc $11.b,S		; 63 11
	ora ($34.b),Y		; 11 34
	brk $36.b		; 00 36
	brk $11.b		; 00 11
	cop $96.b		; 02 96
	sty $C4.b		; 84 C4
	rti		; 40

	cpx $A0.b		; E4 A0
	stz $10.b,X		; 74 10
	ror $C84C.w,X		; 7E 4C C8
	cpy $CEC8.w		; CC C8 CE
	cpx $68EF.w		; EC EF 68
	inc $FC38.w		; EE 38 FC
	clc		; 18
	jsr ($FC88.w,X)		; FC 88 FC
	bra  -2.b		; 80 FE
	bvc   0.b		; 50 00
	rts		; 60

	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	bvs   0.b		; 70 00
	rts		; 60

	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($00.b,S),Y		; F3 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	brk $0C.b		; 00 0C
	ora $070707.l		; 0F 07 07 07
	ora [$03.b]		; 07 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $02.b		; 00 02
	cop $03.b		; 02 03
	ora $0F.b,S		; 03 0F
	ora $07.b,S		; 03 07
	brk $F3.b		; 00 F3
	bpl -13.b		; 10 F3
	sta ($73.b,X)		; 81 73
	rti		; 40

	and ($00.b),Y		; 31 00
	sta $03.b,X		; 95 03
	cmp [$00.b]		; C7 00
	sbc ($F3.b,S),Y		; F3 F3
	sed		; F8
	sed		; F8
	tsb $0DFC.w		; 0C FC 0D
	sbc $FC8C.w,X		; FD 8C FC
	dec $68FE.w		; CE FE 68
	adc $4E3F38.l,X		; 7F 38 3F 4E
	bmi  51.b		; 30 33
	asl $020F.w		; 0E 0F 02
	asl $0F04.w		; 0E 04 0F
	tsb $17.b		; 04 17
	ora ($11.b,X)		; 01 11
	ora ($28.b,X)		; 01 28
	php		; 08
	brk $7E.b		; 00 7E
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	php		; 08
	ora $171F0E.l,X		; 1F 0E 1F 17
	and $610424.l,X		; 3F 24 04 61
	jsr $0147.w		; 20 47 01
	txs		; 9A
	ora [$3F.b]		; 07 3F
	tsb $007F.w		; 0C 7F 00
	ror $6418.w		; 6E 18 64
	clc		; 18
	tas		; 1B
	and $397E1E.l,X		; 3F 1E 7E 39
	adc $E767.w,Y		; 79 67 E7
	dec $80CE.w		; CE CE 80
	bra -103.b		; 80 99
	sta $9B9B.w,Y		; 99 9B 9B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	rol $04.b,X		; 36 04
	jmp ($D120.w)		; 6C 20 D1
	rti		; 40

	sta ($00.b),Y		; 91 00
	lda ($20.b),Y		; B1 20
	lda #$B0.b		; A9 B0
	ora $10.b,X		; 15 10
	rol $00.b		; 26 00
	php		; 08
	rol $7C10.w,X		; 3E 10 7C
	jsr $60F1.w		; 20 F1 60
	sbc ($40.b),Y		; F1 40
	sbc ($40.b),Y		; F1 40
	sbc $FDE8.w,Y		; F9 E8 FD
	cmp $F3DF.w,Y		; D9 DF F3
	jsr $44F7.w		; 20 F7 44
	sbc [$81.b]		; E7 81
	cpy $00.b		; C4 00
	sta ($00.b,X)		; 81 00
	ora $003F00.l,X		; 1F 00 3F 00
	adc [$0F.b],Y		; 77 0F
	bit $C82F.w		; 2C 2F C8
	cmp $3B9F98.l		; CF 98 9F 3B
	and $E07E7E.l,X		; 3F 7E 7E E0
	cpx #$C0.b		; E0 C0
	cpy #$8F.b		; C0 8F
	sta $830939.l		; 8F 39 09 83
	brk $06.b		; 00 06
	tsb $71.b		; 04 71
	brk $E0.b		; 00 E0
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $70.b		; 00 70
	bra -58.b		; 80 C6
	sbc $F8FF7C.l,X		; FF 7C FF F8
	inc $8F8E.w,X		; FE 8E 8F
	ora $03031F.l,X		; 1F 1F 03 03
	ora [$07.b]		; 07 07
	sta $00018F.l		; 8F 8F 01 00
	cop $01.b		; 02 01
	ora ($01.b,S),Y		; 13 01
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $13.b		; 00 13
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	tya		; 98
	sty $5C.b		; 84 5C
	brk $EC.b		; 00 EC
	jsr $1031.w		; 20 31 10
	ora $0908.w,Y		; 19 08 09
	brk $19.b		; 00 19
	php		; 08
	and ($10.b,S),Y		; 33 10
	adc $FF.b,S		; 63 FF
	lda $FF.b,S		; A3 FF
	ora ($FF.b,S),Y		; 13 FF
	asl $063E.w		; 0E 3E 06
	asl $0E06.w,X		; 1E 06 0E
	asl $1E.b		; 06 1E
	tsb $043C.w		; 0C 3C 04
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	cop $04.b		; 02 04
	brk $0C.b		; 00 0C
	tsb $17.b		; 04 17
	ora #$3A.b		; 09 3A
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	ora [$03.b]		; 07 03
	ora [$01.b]		; 07 01
	ora [$03.b]		; 07 03
	ora [$03.b]		; 07 03
	ora $011F00.l		; 0F 00 1F 01
	tsa		; 3B
	ora ($03.b,X)		; 01 03
	sbc $40.b,X		; F5 40
	cmp [$64.b],Y		; D7 64
	lda ($62.b,S),Y		; B3 62
	beq  32.b		; F0 20
	adc ($20.b),Y		; 71 20
	adc ($22.b,S),Y		; 73 22
	adc ($00.b)		; 72 00
	tda		; 7B
	cop $68.b		; 02 68
	adc $6F68.w		; 6D 68 6F
	jmp ($2F6F.w)		; 6C 6F 2F
	and $ACAFAE.l		; 2F AE AF AC
	lda $848E8C.l		; AF 8C 8E 84
	sta [$A4.b]		; 87 A4
	cpy $F3.b		; C4 F3
	ora $9F.b,X		; 15 9F
	php		; 08
	lsr A		; 4A
	tsb $A4.b		; 04 A4
	bra -80.b		; 80 B0
	rts		; 60

	sei		; 78
	brk $08.b		; 00 08
	brk $1B.b		; 00 1B
	sbc $00FF08.l,X		; FF 08 FF 00
	sta $40CE80.l,X		; 9F 80 CE 40
	cpx $00.b		; E4 00
	beq   0.b		; F0 00
	sei		; 78
	brk $08.b		; 00 08
	jsr $2000.w		; 20 00 20
	brk $A0.b		; 00 A0
	bra -72.b		; 80 B8
	brk $C4.b		; 00 C4
	rti		; 40

	ply		; 7A
	tsb $0814.w		; 0C 14 08
	plp		; 28
	bpl -64.b		; 10 C0
	cpx #$C0.b		; E0 C0
	cpx #$40.b		; E0 40
	cpx #$40.b		; E0 40
	sed		; F8
	sec		; 38
	jsr ($7E00.w,X)		; FC 00 7E
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	plx		; FA
	ora ($B9.b,X)		; 01 B9
	rts		; 60

	sta $F860.w,Y		; 99 60 F8
	brk $B8.b		; 00 B8
	rts		; 60

	sed		; F8
	rts		; 60

	eor ($E0.b),Y		; 51 E0
	cmp ($E0.b),Y		; D1 E0
	ora $05.b		; 05 05
	ror $66.b		; 66 66
	ror $66.b		; 66 66
	ora [$07.b]		; 07 07
	adc [$67.b]		; 67 67
	sbc [$E7.b]		; E7 E7
	inc $EEEF.w		; EE EF EE
	sbc $7980F9.l		; EF F9 80 79
	cmp ($BC.b,X)		; C1 BC
	rts		; 60

	jmp.w [$6C30]		; DC 30 6C
	clc		; 18
	rol $1E08.w,X		; 3E 08 1E
	tsb $8E.b		; 04 8E
	sty $C6.b		; 84 C6
	cmp [$E6.b]		; C7 E6
	sbc [$F3.b]		; E7 F3
	sbc ($7B.b,S),Y		; F3 7B
	tda		; 7B
	tyx		; BB
	tyx		; BB
	cmp $EDDD.w,X		; DD DD ED
	sbc $F575.w		; ED 75 F5
	jsr ($FE00.w,X)		; FC 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $03.b		; 00 03
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $64.b		; 04 64
	brk $16.b		; 00 16
	tsb $02.b		; 04 02
	brk $72.b		; 00 72
	bpl  93.b		; 10 5D
	tsb $46.b		; 04 46
	cop $43.b		; 02 43
	ora ($41.b,X)		; 01 41
	brk $98.b		; 00 98
	stz $EEE8.w		; 9C E8 EE
	jsr ($8CFE.w,X)		; FC FE 8C
	inc $DF82.w,X		; FE 82 DF
	sta ($C7.b,X)		; 81 C7
	bra -61.b		; 80 C3
	bra -63.b		; 80 C1
	jmp ($7F24.w,X)		; 7C 24 7F
	ora ($D9.b,X)		; 01 D9
	brk $95.b		; 00 95
	php		; 08
	stz $0809.w,X		; 9E 09 08
	brk $0C.b		; 00 0C
	tsb $06.b		; 04 06
	cop $03.b		; 02 03
	adc $007F00.l,X		; 7F 00 7F 00
	cmp $9D00.w,Y		; D9 00 9D
	brk $9F.b		; 00 9F
	ora [$0F.b]		; 07 0F
	ora $0F.b,S		; 03 0F
	ora ($07.b,X)		; 01 07
	jmp ($7C00.w,X)		; 7C 00 7C
	php		; 08
	bit $3E08.w,X		; 3C 08 3E
	php		; 08
	tsx		; BA
	sty $0C17.w		; 8C 17 0C
	ora $1B06.w,X		; 1D 06 1B
	asl $83.b		; 06 83
	sta $9B.b,S		; 83 9B
	txy		; 9B
	wai		; CB
	wai		; CB
	cmp $4DCD.w		; CD CD 4D
	cmp $EEEE.w		; CD EE EE
	inc $E6EE.w		; EE EE E6
	inc $02.b		; E6 02
	brk $06.b		; 00 06
	cop $0E.b		; 02 0E
	tsb $0F.b		; 04 0F
	ora $0D.b		; 05 0D
	brk $1D.b		; 00 1D
	php		; 08
	ora [$01.b],Y		; 17 01
	rol $12.b,X		; 36 12
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($0F.b,X)		; 01 0F
	brk $0F.b		; 00 0F
	brk $0D.b		; 00 0D
	brk $1D.b		; 00 1D
	php		; 08
	ora $603F09.l,X		; 1F 09 3F 60
	brk $51.b		; 00 51
	and ($73.b,X)		; 21 73
	jsl $792675.l		; 22 75 26 79
	jsr $123B.w		; 20 3B 12
	pld		; 2B
	ora ($78.b,S),Y		; 13 78
	brk $9F.b		; 00 9F
	sta $ACAFAE.l,X		; 9F AE AF AC
	lda $B6AFA8.l		; AF A8 AF B6
	lda [$D4.b],Y		; B7 D4
	cmp [$D4.b],Y		; D7 D4
	cmp [$87.b],Y		; D7 87
	sta [$6F.b]		; 87 6F
	ora $FF32DF.l,X		; 1F DF 32 FF
	rol A		; 2A
	sbc [$2A.b],Y		; F7 2A
	sbc $1FFF22.l,X		; FF 22 FF 1F
	sbc $08F700.l,X		; FF 00 F7 08
	sta $32329F.l,X		; 9F 9F 32 32
	rol A		; 2A
	rol A		; 2A
	rol A		; 2A
	rol A		; 2A
	jsl $1F1F22.l		; 22 22 1F 1F
	cop $02.b		; 02 02
	php		; 08
	php		; 08
	ldy $D8C0.w,X		; BC C0 D8
	rts		; 60

	sbc ($A1.b),Y		; F1 A1
	adc $FBA0.w,Y		; 79 A0 FB
	jsl $F8C0FB.l		; 22 FB C0 F8
	brk $7C.b		; 00 7C
	bra -61.b		; 80 C3
	cmp $67.b,S		; C3 67
	adc [$AE.b]		; 67 AE
	lda $24A7A6.l		; AF A6 A7 24
	and [$C4.b]		; 27 C4
	cmp [$07.b]		; C7 07
	ora [$83.b]		; 07 83
	sta $05.b,S		; 83 05
	cop $04.b		; 02 04
	ora $03.b,S		; 03 03
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $63.b		; 00 63
	jsr $40C3.w		; 20 C3 40
	lda $00.b,S		; A3 00
	lda ($90.b,S),Y		; B3 90
	tad		; 5B
	php		; 08
	eor #$00.b		; 49 00
	bit #$00.b		; 89 00
	sta $1C04.w		; 8D 04 1C
	jmp ($FC3C.w,X)		; 7C 3C FC
	jmp $FC4CFC.l		; 5C FC 4C FC
	sty $DC.b		; 84 DC
	stx $CE.b		; 86 CE
	asl $8E.b		; 06 8E
	cop $8E.b		; 02 8E
	cop $00.b		; 02 00
	ply		; 7A
	brk $36.b		; 00 36
	inc A		; 1A
	bpl   0.b		; 10 00
	php		; 08
	brk $0C.b		; 00 0C
	tsb $04.b		; 04 04
	brk $04.b		; 00 04
	brk $01.b		; 00 01
	ora $01.b,S		; 03 01
	tda		; 7B
	ora ($3F.b,X)		; 01 3F
	ora $0F071F.l		; 0F 1F 07 0F
	ora $0F.b,S		; 03 0F
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	adc #$30.b		; 69 30
	adc #$30.b		; 69 30
	xce		; FB
	jsl $D166B5.l		; 22 B5 66 D1
	rts		; 60

	sbc ($40.b),Y		; F1 40
	inc $46.b		; E6 46
	sbc $B7B609.l		; EF 09 B6 B7
	ldx $B7.b,Y		; B6 B7
	bit $27.b		; 24 27
	pla		; 68
	adc $4E6F6E.l		; 6F 6E 6F 4E
	eor $105F59.l		; 4F 59 5F 10
	ora $000000.l,X		; 1F 00 00 00
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
	bra   0.b		; 80 00
	bra  40.b		; 80 28
	bpl  48.b		; 10 30
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($C2.b,S),Y		; F3 C2
	sbc ($C0.b,S),Y		; F3 C0
	sbc ($C0.b,S),Y		; F3 C0
	sbc ($C1.b,S),Y		; F3 C1
	sbc ($C0.b)		; F2 C0
	adc ($C1.b),Y		; 71 C1
	sbc [$40.b],Y		; F7 40
	pea $EC40.w		; F4 40 EC
	sbc $CCCFCC.l		; EF CC CF CC
	cmp $CDCFCC.l		; CF CC CF CD
	cmp $C8CFCE.l		; CF CE CF C8
	cmp $874C48.l		; CF 48 4C 87
	brk $85.b		; 00 85
	cop $96.b		; 02 96
	sta ($66.b,S),Y		; 93 66
	ora ($A7.b,S),Y		; 13 A7
	cop $B7.b		; 02 B7
	ora ($67.b)		; 12 67
	jsr $40C2.w		; 20 C2 40
	sei		; 78
	sed		; F8
	tda		; 7B
	xce		; FB
	rtl		; 6B

	xce		; FB
	phb		; 8B
	xce		; FB
	inc A		; 1A
	tsx		; BA
	asl A		; 0A
	tsx		; BA
	clc		; 18
	sei		; 78
	and $00FD.w,X		; 3D FD 00
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
	ora ($25.b,X)		; 01 25
	cop $23.b		; 02 23
	brk $12.b		; 00 12
	jsr $A0B0.w		; 20 B0 A0
	beq  96.b		; F0 60
	bvs  32.b		; 70 20
	cli		; 58
	bmi  62.b		; 30 3E
	brk $C0.b		; 00 C0
	sbc [$C0.b]		; E7 C0
	sbc $C0.b,S		; E3 C0
	sbc ($40.b)		; F2 40
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	sei		; 78
	brk $3E.b		; 00 3E
	ora $0808.w,Y		; 19 08 08
	brk $0B.b		; 00 0B
	ora $0F.b,S		; 03 0F
	tsb $04.b		; 04 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $0F07.w,X		; 1E 07 0F
	tsb $0F.b		; 04 0F
	brk $0F.b		; 00 0F
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	rti		; 40

	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	ldy #$C0.b		; A0 C0
	cmp ($A0.b)		; D2 A0
	ror A		; 6A
	bpl  92.b		; 10 5C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	sbc ($80.b)		; F2 80
	plx		; FA
	bra -36.b		; 80 DC
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
	brk $F0.b		; 00 F0
	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	cop $00.b		; 02 00
	and $00.b,S		; 23 00
	.db $62, $01, $A1		; 62 01 A1
	brk $61.b		; 00 61
	rti		; 40

	lsr $0001.w		; 4E 01 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	cop $00.b		; 02 00
	and $00.b,S		; 23 00
	adc $40.b,S		; 63 40
	sbc ($80.b,X)		; E1 80
	sbc ($80.b,X)		; E1 80
	cmp $000000.l		; CF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	cpy #$E0.b		; C0 E0
	rti		; 40

	cpy #$80.b		; C0 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	rts		; 60

	rti		; 40

	cmp $4C7280.l		; CF 80 72 4C
	trb $0018.w		; 1C 18 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -128.b		; F0 80
	cpx #$00.b		; E0 00
	cmp $E0FE80.l		; CF 80 FE E0
	jsr ($80F9.w,X)		; FC F9 80
	sta $00.b,S		; 83 00
	lda $02.b		; A5 02
	eor $02.b,X		; 55 02
	eor $02.b,X		; 55 02
	lda $664D22.l		; AF 22 4D 66
	inc $0084.w		; EE 84 00
	sbc $8300.w,Y		; F9 00 83
	brk $A7.b		; 00 A7
	jsr $2077.w		; 20 77 20
	adc [$50.b],Y		; 77 50
	sbc $10FF90.l,X		; FF 90 FF 10
	inc $20D0.w,X		; FE D0 20
	rts		; 60

	cpy #$C0.b		; C0 C0
	bra -126.b		; 80 82
	brk $87.b		; 00 87
	cop $8B.b		; 02 8B
	cop $77.b		; 02 77
	asl $A7.b		; 06 A7
	jsl $00F000.l		; 22 00 F0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	.db $82, $00, $87		; 82 00 87
	tsb $8F.b		; 04 8F
	dey		; 88
	sbc $497F58.l,X		; FF 58 7F 49
	.db $82, $DB, $90		; 82 DB 90
	cmp ($80.b),Y		; D1 80
	cmp ($00.b),Y		; D1 00
	tya		; 98
	bpl   8.b		; 10 08
	brk $84.b		; 00 84
	dey		; 88
	jsr ($B008.w,X)		; FC 08 B0
	tyx		; BB
	ldy #$BB.b		; A0 BB
	ldy #$B1.b		; A0 B1
	jsr $6031.w		; 20 31 60
	sei		; 78
	beq  -8.b		; F0 F8
	bvs  -4.b		; 70 FC
	brk $FC.b		; 00 FC
	tsb $0200.w		; 0C 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	tsb $0200.w		; 0C 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bvs   0.b		; 70 00
	plp		; 28
	bpl  20.b		; 10 14
	php		; 08
	asl A		; 0A
	tsb $07.b		; 04 07
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bvs   0.b		; 70 00
	sec		; 38
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	pla		; 68
	bpl -100.b		; 10 9C
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	brk $60.b		; 00 60
	rti		; 40

	jsr $2000.w		; 20 00 20
	brk $00.b		; 00 00
	sei		; 78
	brk $9C.b		; 00 9C
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	cpy #$E0.b		; C0 E0
	cpy #$E0.b		; C0 E0
	jsr $B000.w		; 20 00 B0
	jsr $0090.w		; 20 90 00
	tya		; 98
	bpl -122.b		; 10 86
	brk $18.b		; 00 18
	bpl  48.b		; 10 30
	jsr $0020.w		; 20 20 00
	cpy #$E0.b		; C0 E0
	rti		; 40

	bvs  96.b		; 70 60
	bvs  96.b		; 70 60
	sei		; 78
	sei		; 78
	ror $F8E0.w,X		; 7E E0 F8
	cpy #$F0.b		; C0 F0
	cpy #$E0.b		; C0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora ($02.b,X)		; 01 02
	asl $18.b,X		; 16 18
	php		; 08
	tsb $0C0A.w		; 0C 0A 0C
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $05.b		; 00 05
	ora $04.b,S		; 03 04
	ora $FC.b,S		; 03 FC
	ora $300F60.l,X		; 1F 60 0F 30
	ora $000030.l		; 0F 30 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rts		; 60

	cpx #$50.b		; E0 50
	beq   2.b		; F0 02
	and ($1D.b,S),Y		; 33 1D
	dec $3C0B.w,X		; DE 0B 3C
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  96.b		; 80 60
	cpx #$18.b		; E0 18
	beq  15.b		; F0 0F
	sbc ($0C.b,S),Y		; F3 0C
	and $00DF00.l,X		; 3F 00 DF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	cpy #$40.b		; C0 40
	rti		; 40

	cpy #$80.b		; C0 80
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $E0.b		; 00 E0
	cpy #$21.b		; C0 21
	cpy #$31.b		; C0 31
	cpy #$33.b		; C0 33
	cpy #$37.b		; C0 37
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0250.w		; 20 50 02
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $98.b		; 00 98
	brk $F8.b		; 00 F8
	bvs -114.b		; 70 8E
	inc $8301.w,X		; FE 01 83
	ror $8306.w,X		; 7E 06 83
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	rti		; 40

	tya		; 98
	bcc 103.b		; 90 67
	rol $0380.w,X		; 3E 80 03
	sei		; 78
	sta ($00.b,X)		; 81 00
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$00.b		; E0 00
	sed		; F8
	brk $7F.b		; 00 7F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	cpx #$20.b		; E0 20
	cpx #$C0.b		; E0 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	rts		; 60

	brk $9C.b		; 00 9C
	bpl -120.b		; 10 88
	dey		; 88
	stz $E0.b		; 64 E0
	bpl -32.b		; 10 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $98.b		; 00 98
	brk $59.b		; 00 59
	sta [$5B.b],Y		; 97 5B
	lda $2A8564.l,X		; BF 64 85 2A
	bvc  36.b		; 50 24
	eor $3A04.w,Y		; 59 04 3A
	trb $2A.b		; 14 2A
	tsb $5B12.w		; 0C 12 5B
	jsr $007F.w		; 20 7F 00
	adc $1A.b		; 65 1A
	tsa		; 3B
	tsb $3E.b		; 04 3E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $6E.b		; 00 6E
	cmp $FAEF6C.l		; CF 6C EF FA
	adc $39.b,S		; 63 39
	and ($37.b),Y		; 31 37
	tsa		; 3B
	eor $B9.b		; 45 B9
	asl $0FE0.w,X		; 1E E0 0F
	eor ($F0.b),Y		; 51 F0
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	brk $BE.b		; 00 BE
	rti		; 40

	ldy $7E40.w,X		; BC 40 7E
	brk $7F.b		; 00 7F
	brk $1E.b		; 00 1E
	jsr $9D98.w		; 20 98 9D
	eor ($FE.b)		; 52 FE
	ora $FF.b,S		; 03 FF
	tsb $FE.b		; 04 FE
	bne -34.b		; D0 DE
	sta ($91.b),Y		; 91 91
	dex		; CA
	sta ($4E.b),Y		; 91 4E
	xce		; FB
	adc $00.b,S		; 63 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	and ($00.b,X)		; 21 00
	ror $6F00.w		; 6E 00 6F
	brk $6F.b		; 00 6F
	brk $C9.b		; 00 C9
	lda $BD42.w,X		; BD 42 BD
	eor [$BB.b]		; 47 BB
	sbc $5F2277.l		; EF 77 22 5F
	cmp ($BF.b),Y		; D1 BF
	sei		; 78
	lda $C2FF38.l,X		; BF 38 FF C2
	brk $C2.b		; 00 C2
	brk $C6.b		; 00 C6
	brk $8F.b		; 00 8F
	brk $B6.b		; 00 B6
	brk $7A.b		; 00 7A
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	inc $00.b,X		; F6 00
	cmp $07FE01.l,X		; DF 01 FE 07
	inc $F013.w,X		; FE 13 F0
	ora $F0.b,S		; 03 F0
	ora ($F1.b)		; 12 F1
	ora ($F1.b)		; 12 F1
	asl $2701.w		; 0E 01 27
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $64.b		; 00 64
	jmp ($FC0C.w,X)		; 7C 0C FC
	clc		; 18
	sed		; F8
	bcs 112.b		; B0 70
	bvc -16.b		; 50 F0
	sec		; 38
	sed		; F8
	sei		; 78
	sed		; F8
	cpx #$E0.b		; E0 E0
	jmp ($FC83.w,X)		; 7C 83 FC
	ora $F8.b,S		; 03 F8
	asl $F0.b		; 06 F0
	tsb $0CF0.w		; 0C F0 0C
	sed		; F8
	tsb $F8.b		; 04 F8
	asl $E0.b		; 06 E0
	ora $010303.l,X		; 1F 03 03 01
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	ora $04.b,S		; 03 04
	ora [$07.b]		; 07 07
	asl $18.b		; 06 18
	asl $0407.w,X		; 1E 07 04
	ora $04.b,S		; 03 04
	ora ($06.b,X)		; 01 06
	brk $03.b		; 00 03
	ora $04.b,S		; 03 04
	ora [$18.b]		; 07 18
	ora [$18.b]		; 07 18
	ora $780720.l,X		; 1F 20 07 78
	ora ($01.b,X)		; 01 01
	cpx $E4.b		; E4 E4
	clc		; 18
	jsr ($DAA6.w,X)		; FC A6 DA
	eor $03C983.l,X		; 5F 83 C9 03
	eor ($51.b)		; 52 51
	sed		; F8
	sei		; 78
	ora ($FE.b,X)		; 01 FE
	cpx $1B.b		; E4 1B
	jsr ($FE03.w,X)		; FC 03 FE
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $AF.b		; 00 AF
	brk $87.b		; 00 87
	brk $90.b		; 00 90
	adc #$D0.b		; 69 D0
	jsl $61E010.l		; 22 10 E0 61
	tya		; 98
	rol $39.b		; 26 39
	rep #$C5		; C2 C5
	ora ($C2.b,X)		; 01 C2
	sed		; F8
	and $0699.w,Y		; 39 99 06
	bne  13.b		; D0 0D
	bpl  15.b		; 10 0F
	adc #$06.b		; 69 06
	rol $C0.b,X		; 36 C0
	dex		; CA
	bmi -59.b		; 30 C5
	sec		; 38
	plx		; FA
	tsb $84.b		; 04 84
	phk		; 4B
	stx $11.b		; 86 11
	sty $02.b		; 84 02
	cmp ($0D.b,X)		; C1 0D
	and ($CA.b,S),Y		; 33 CA
	ldx $DB.b		; A6 DB
	lsr $AA.b		; 46 AA
	ora [$C9.b],Y		; 17 C9
	cmp $8630.w		; CD 30 86
	pla		; 68
	sta $78.b		; 85 78
	wai		; CB
	bmi  55.b		; 30 37
	brk $26.b		; 00 26
	brk $56.b		; 00 56
	ora ($37.b,X)		; 01 37
	brk $14.b		; 00 14
	tas		; 1B
	trb $1011.w		; 1C 11 10
	ora [$04.b]		; 07 04
	phd		; 0B
	pld		; 2B
	rol $47.b,X		; 36 47
	sei		; 78
	adc $2A52.w		; 6D 52 2A
	ora $1C.b,X		; 15 1C
	jsr $201E.w		; 20 1E 20
	clc		; 18
	jsr $2017.w		; 20 17 20
	and $806F40.l		; 2F 40 6F 80
	adc $2B00.w		; 6D 00 2B
	rti		; 40

	brk $FF.b		; 00 FF
	ora [$F8.b]		; 07 F8
	ora $F00FF0.l		; 0F F0 0F F0
	eor ($AE.b),Y		; 51 AE
	bvc -81.b		; 50 AF
	bvc -81.b		; 50 AF
	brk $FF.b		; 00 FF
	plp		; 28
	brk $D7.b		; 00 D7
	brk $6F.b		; 00 6F
	brk $BF.b		; 00 BF
	brk $FD.b		; 00 FD
	brk $D6.b		; 00 D6
	brk $54.b		; 00 54
	brk $83.b		; 00 83
	brk $40.b		; 00 40
	cpy #$01.b		; C0 01
	adc $C1.b,S		; 63 C1
	pld		; 2B
	adc $99.b,S		; 63 99
	and $D0.b		; 25 D0
	cmp ($39.b,X)		; C1 39
	ora [$FF.b]		; 07 FF
	tad		; 5B
	lda [$40.b]		; A7 40
	and $DB1C83.l,X		; 3F 83 1C DB
	tsb $EB.b		; 04 EB
	tsb $EF.b		; 04 EF
	brk $F6.b		; 00 F6
	brk $30.b		; 00 30
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	dec $4C.b		; C6 4C
	bit #$8E.b		; 89 8E
	ora #$92.b		; 09 92
	bit $F0.b,X		; 34 F0
	inc $BC.b,X		; F6 BC
	xce		; FB
	bit $F8.b,X		; 34 F8
	rol $E6.b		; 26 E6
	inc $F701.w,X		; FE 01 F7
	brk $F7.b		; 00 F7
	brk $CE.b		; 00 CE
	ora ($0E.b,X)		; 01 0E
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	brk $19.b		; 00 19
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	ora ($10.b)		; 12 10
	dex		; CA
	php		; 08
	and $02.b,X		; 35 02
	ora $0500.w		; 0D 00 05
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx $3400.w		; EC 00 34
	brk $0A.b		; 00 0A
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	asl A		; 0A
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $050C.w		; 0C 0C 05
	ora $06.b		; 05 06
	ora [$04.b]		; 07 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	ora $05.b,S		; 03 05
	cop $07.b		; 02 07
	brk $05.b		; 00 05
	eor #$02.b		; 49 02
	eor $2720.w		; 4D 20 27
	jsr $3023.w		; 20 23 30
	and ($58.b,S),Y		; 33 58
	sei		; 78
	lsr $C87E.w		; 4E 7E C8
	sbc [$0E.b],Y		; F7 0E
	bmi  14.b		; 30 0E
	bmi  36.b		; 30 24
	clc		; 18
	jsr $305C.w		; 20 5C 30
	cpy $8778.w		; CC 78 87
	ror $FF81.w,X		; 7E 81 FF
	brk $6E.b		; 00 6E
	sbc $07FF6F.l,X		; FF 6F FF 07
	sbc $00FF06.l,X		; FF 06 FF 00
	sbc $6DFFC0.l,X		; FF C0 FF 6D
	adc ($C9.b)		; 72 C9
	sbc ($6F.b)		; F2 6F
	brk $EF.b		; 00 EF
	brk $EF.b		; 00 EF
	brk $EF.b		; 00 EF
	brk $0E.b		; 00 0E
	brk $C0.b		; 00 C0
	brk $7D.b		; 00 7D
	bra  -3.b		; 80 FD
	brk $38.b		; 00 38
	sbc $00FF30.l,X		; FF 30 FF 00
	sbc $2EFD02.l,X		; FF 02 FD 2E
	cmp ($FC.b),Y		; D1 FC
	ora ($7C.b,S),Y		; 13 7C
	sbc ($F8.b,S),Y		; F3 F8
	pea $007C.w		; F4 7C 00
	clv		; B8
	brk $A0.b		; 00 A0
	brk $82.b		; 00 82
	brk $3E.b		; 00 3E
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $46.b		; 00 46
	cmp ($4B.b,X)		; C1 4B
	cmp [$4E.b]		; C7 4E
	rep #$48		; C2 48
	cpy $01.b		; C4 01
	cmp ($49.b),Y		; D1 49
	and #$03.b		; 29 03
	phk		; 4B
	ora ($1E.b),Y		; 11 1E
	and $003F00.l,X		; 3F 00 3F 00
	rol $3C01.w,X		; 3E 01 3C
	ora $31.b,S		; 03 31
	asl $16E9.w		; 0E E9 16
	wai		; CB
	bit $1F.b,X		; 34 1F
	brk $80.b		; 00 80
	bra -124.b		; 80 84
	sty $8C.b		; 84 8C
	sty $DC58.w		; 8C 58 DC
	bcs 124.b		; B0 7C
	cpy $3C.b		; C4 3C
	pea $3C0C.w		; F4 0C 3C
	bit $7E80.w		; 2C 80 7E
	sty $7B.b		; 84 7B
	sty $DC73.w		; 8C 73 DC
	and $FC.b,S		; 23 FC
	ora $FC.b,S		; 03 FC
	cop $FC.b		; 02 FC
	ora $DC.b,S		; 03 DC
	cop $03.b		; 02 03
	cop $01.b		; 02 01
	ora ($02.b,X)		; 01 02
	ora $02.b,S		; 03 02
	ora $06.b,S		; 03 06
	asl $00.b		; 06 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	cop $03.b		; 02 03
	tsb $0601.w		; 0C 01 06
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	asl $09.b		; 06 09
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	eor $847C.w		; 4D 7C 84
	bit $3F83.w,X		; 3C 83 3F
	lsr $9E.b,X		; 56 9E
	trb $8014.w		; 1C 14 80
	rts		; 60

	bra 112.b		; 80 70
	sta ($72.b)		; 92 72
	sta $00.b,S		; 83 00
	cmp $00.b,S		; C3 00
	cpy #$00.b		; C0 00
	cpx #$01.b		; E0 01
	clc		; 18
	sbc $E0.b,S		; E3 E0
	ora $F20FF0.l,X		; 1F F0 0F F2
	ora $0C8C.w		; 0D 8C 0C
	rol $3E.b		; 26 3E
	rtl		; 6B

	adc [$C3.b],Y		; 77 C3
	sbc [$F6.b],Y		; F7 F6
	sbc ($63.b,X)		; E1 63
	bra  37.b		; 80 25
	adc $5F.b		; 65 5F
	eor $3E738C.l,X		; 5F 8C 73 3E
	cmp ($7F.b,X)		; C1 7F
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $5A.b		; 00 5A
	bra  64.b		; 80 40
	ldy #$FD.b		; A0 FD
	ora $00.b		; 05 00
	brk $75.b		; 00 75
	adc $26.b,X		; 75 26
	sbc $9134D9.l,X		; FF D9 34 91
	adc ($23.b,X)		; 61 23
	ora $86.b,S		; 03 86
	sta [$FD.b],Y		; 97 FD
	cop $00.b		; 02 00
	sbc $FF8A75.l,X		; FF 75 8A FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $D8.b		; 00 D8
	jsr $1FE1.w		; 20 E1 1F
	jsr $30CF.w		; 20 CF 30
	cmp $004798.l		; CF 98 47 00
	cmp [$06.b]		; C7 06
	ora ($06.b,X)		; 01 06
	jsr $9686.w		; 20 86 96
	cpx #$00.b		; E0 00
	bmi   0.b		; 30 00
	bcs   0.b		; B0 00
	clv		; B8
	brk $20.b		; 00 20
	clc		; 18
	dec $0620.w,X		; DE 20 06
	cmp $618E.w,Y		; D9 8E 61
	cpy $8CF0.w		; CC F0 8C
	beq  24.b		; F0 18
	sed		; F8
	and ($E1.b,X)		; 21 E1
	and $A7.b,X		; 35 A7
	tsb $84.b		; 04 84
	ora ($0F.b,X)		; 01 0F
	cpy #$FF.b		; C0 FF
	tsb $0C03.w		; 0C 03 0C
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	asl $4817.w,X		; 1E 17 48
	tsb $7B.b		; 04 7B
	ora $00FFF0.l		; 0F F0 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	jsr $E0E0.w		; 20 E0 E0
	jsr $2040.w		; 20 40 20
	cpy #$00.b		; C0 00
	brk $80.b		; 00 80
	brk $90.b		; 00 90
	brk $F8.b		; 00 F8
	rti		; 40

	clv		; B8
	cpx #$18.b		; E0 18
	cpx #$18.b		; E0 18
	cpx #$10.b		; E0 10
	cpy #$30.b		; C0 30
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
	sec		; 38
	and $1F3F2C.l		; 2F 2C 3F 1F
	ora $0E0D.w,Y		; 19 0D 0E
	tsb $07.b		; 04 07
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi -64.b		; 30 C0
	bmi  64.b		; 30 40
	asl $0F20.w,X		; 1E 20 0F
	bpl   7.b		; 10 07
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	asl $07.b		; 06 07
	tsb $04.b		; 04 04
	asl $04.b		; 06 04
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	php		; 08
	ora [$08.b]		; 07 08
	ora [$18.b]		; 07 18
	ora [$00.b]		; 07 00
	asl $01.b		; 06 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	sty $73.b		; 84 73
	adc ($10.b,X)		; 61 10
	ora $04.b,X		; 15 04
	lsr $46.b		; 46 46
	adc ($73.b,S),Y		; 73 73
	rol $46BF.w,X		; 3E BF 46
	sta $FFDF20.l,X		; 9F 20 DF FF
	brk $FF.b		; 00 FF
	brk $FB.b		; 00 FB
	brk $B9.b		; 00 B9
	brk $8C.b		; 00 8C
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E5.b		; 00 E5
	txy		; 9B
	and [$9B.b]		; 27 9B
	sbc $6F.b,S		; E3 6F
	ora $F7CF77.l		; 0F 77 CF F7
	adc $D76FD7.l		; 6F D7 6F D7
	pld		; 2B
	cmp [$F7.b],Y		; D7 F7
	brk $F7.b		; 00 F7
	brk $97.b		; 00 97
	brk $8F.b		; 00 8F
	brk $0F.b		; 00 0F
	brk $2F.b		; 00 2F
	brk $2F.b		; 00 2F
	brk $2F.b		; 00 2F
	brk $D0.b		; 00 D0
	inx		; E8
	beq -56.b		; F0 C8
	cpx #$DF.b		; E0 DF
	lda $A7DBD0.l		; AF D0 DB A7
	ldx $FCDF.w		; AE DF FC
	sbc $F0F8F6.l,X		; FF F6 F8 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $EF.b		; 00 EF
	brk $DF.b		; 00 DF
	brk $BF.b		; 00 BF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $07.b		; 00 07
	and #$1B.b		; 29 1B
	ora ($16.b,S),Y		; 13 16
	cmp [$9C.b],Y		; D7 9C
	adc $81FE82.l,X		; 7F 82 FE 81
	adc $003F80.l,X		; 7F 80 3F 00
	adc $2C003E.l,X		; 7F 3E 00 2C
	brk $28.b		; 00 28
	brk $C0.b		; 00 C0
	brk $C1.b		; 00 C1
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $B0.b		; 00 B0
	bcc -48.b		; 90 D0
	lda ($50.b),Y		; B1 50
	and [$B5.b],Y		; 37 B5
	jmp ($2B3B.w,X)		; 7C 3B 2B
	tay		; A8
	cmp $20B790.l,X		; DF 90 B7 20
	rts		; 60

	bvs  12.b		; 70 0C
	bvs  14.b		; 70 0E
	pea $FD08.w		; F4 08 FD
	cop $FB.b		; 02 FB
	tsb $7F.b		; 04 7F
	brk $70.b		; 00 70
	php		; 08
	cpx #$10.b		; E0 10
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bra 124.b		; 80 7C
	cpx $96.b		; E4 96
	ora ($EB.b)		; 12 EB
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	inx		; E8
	brk $F4.b		; 00 F4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $16.b		; 00 16
	sbc #$09.b		; E9 09
	inc $80.b,X		; F6 80
	sbc $FEC0.w,X		; FD C0 FE
	cpx #$3B.b		; E0 3B
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $17.b		; 00 17
	brk $09.b		; 00 09
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $C0.b		; 00 C0
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	cpy #$F0.b		; C0 F0
	ora $F3F006.l		; 0F 06 F0 F3
	tsb $833C.w		; 0C 3C 83
	ora $78.b,S		; 03 78
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	sbc $00F000.l,X		; FF 00 F0 00
	ora $00FF00.l		; 0F 00 FF 00
	adc $000700.l,X		; 7F 00 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	beq  12.b		; F0 0C
	cpx #$18.b		; E0 18
	cpy #$30.b		; C0 30
	bra  96.b		; 80 60
	brk $09.b		; 00 09
	ldy #$22.b		; A0 22
	bra   3.b		; 80 03
	cmp ($D0.b),Y		; D1 D0
	tya		; 98
	tya		; 98
	cpx $4CFC.w		; EC FC 4C
	jsr ($FFC7.w,X)		; FC C7 FF
	ora ($F6.b,X)		; 01 F6
	ldx #$5D.b		; A2 5D
	lda ($4C.b,S),Y		; B3 4C
	adc $006700.l		; 6F 00 67 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	ora ($A7.b),Y		; 11 A7
	rti		; 40

	asl A		; 0A
	brk $20.b		; 00 20
	jsr $2940.w		; 20 40 29
	bit #$49.b		; 89 49
	and #$13.b		; 29 13
	tas		; 1B
	adc $08F780.l,X		; 7F 80 F7 08
	nop		; EA
	ora $E0.b,X		; 15 E0
	ora $E91FE0.l,X		; 1F E0 1F E9
	asl $E9.b,X		; 16 E9
	asl $9B.b,X		; 16 9B
	stz $A0.b		; 64 A0
	ldy #$00.b		; A0 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	.db $62, $A2, $58		; 62 A2 58
	ldx $40A0.w,Y		; BE A0 40
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	rti		; 40

	bcs -64.b		; B0 C0
	bmi -64.b		; 30 C0
	bmi -30.b		; 30 E2
	ora $01FE.w,X		; 1D FE 01
	brk $02.b		; 00 02
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	cop $03.b		; 02 03
	ora $06.b		; 05 06
	cop $03.b		; 02 03
	ora $03.b,S		; 03 03
	cop $04.b		; 02 04
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	ora ($06.b,X)		; 01 06
	ora $0C.b,S		; 03 0C
	ora [$78.b]		; 07 78
	ora $1C.b,S		; 03 1C
	ora $04.b,S		; 03 04
	cop $01.b		; 02 01
	ora $17.b,X		; 15 17
	lsr A		; 4A
	eor $F8A5.w		; 4D A5 F8
	dex		; CA
	and ($1F.b)		; 32 1F
	ora $887CE5.l,X		; 1F E5 7C 88
	tda		; 7B
	cmp $17BE.w,Y		; D9 BE 17
	inx		; E8
	eor $00FFB0.l		; 4F B0 FF 00
	sbc $E000.w,X		; FD 00 E0
	brk $83.b		; 00 83
	brk $87.b		; 00 87
	brk $C7.b		; 00 C7
	brk $C2.b		; 00 C2
	rep #$48		; C2 48
	sed		; F8
	xce		; FB
	phd		; 0B
	rol $7517.w,X		; 3E 17 75
	bpl 121.b		; 10 79
	tya		; 98
	sbc $3C.b,X		; F5 3C
	sbc ($7E.b)		; F2 7E
	cpy #$3D.b		; C0 3D
	sed		; F8
	ora [$FB.b]		; 07 FB
	tsb $FF.b		; 04 FF
	brk $EF.b		; 00 EF
	brk $E7.b		; 00 E7
	brk $C3.b		; 00 C3
	brk $81.b		; 00 81
	brk $08.b		; 00 08
	ora $114740.l		; 0F 40 47 11
	sta $A2.b,X		; 95 A2
	lda ($43.b,S),Y		; B3 43
	sbc ($CB.b)		; F2 CB
	ply		; 7A
	ora $DA.b,S		; 03 DA
	lda [$2E.b]		; A7 2E
	php		; 08
	beq  64.b		; F0 40
	clv		; B8
	sta ($6A.b),Y		; 91 6A
	lda ($4C.b,S),Y		; B3 4C
	sbc ($0C.b,S),Y		; F3 0C
	xce		; FB
	tsb $FB.b		; 04 FB
	tsb $DF.b		; 04 DF
	brk $02.b		; 00 02
	inc $C040.w,X		; FE 40 C0
	php		; 08
	php		; 08
	ora ($19.b),Y		; 11 19
	lsr $DF.b,X		; 56 DF
	and #$76.b		; 29 76
	stx $A0.b,Y		; 96 A0
	stz $E4.b		; 64 E4
	ora ($00.b,X)		; 01 00
	brk $3F.b		; 00 3F
	php		; 08
	sbc [$19.b],Y		; F7 19
	inc $DF.b		; E6 DF
	jsr $00FF.w		; 20 FF 00
	adc $001B00.l,X		; 7F 00 1B 00
	ora $565914.l,X		; 1F 14 59 56
	dec $51D0.w		; CE D0 51
	cmp ($AF.b,X)		; C1 AF
	and $732F33.l		; 2F 33 2F 73
	rol $101C.w,X		; 3E 1C 10
	ora $A05FE0.l,X		; 1F E0 5F A0
	cmp $20DE20.l,X		; DF 20 DE 20
	bcs  64.b		; B0 40
	bcs  64.b		; B0 40
	sbc ($00.b),Y		; F1 00
	inc $0A01.w,X		; FE 01 0A
	ldx $1EA6.w,Y		; BE A6 1E
	ldy $8C.b,X		; B4 8C
	dey		; 88
	tya		; 98
	cli		; 58
	sec		; 38
	ldy #$60.b		; A0 60
	dey		; 88
	php		; 08
	rts		; 60

	bvs  -2.b		; 70 FE
	ora ($FE.b,X)		; 01 FE
	brk $7C.b		; 00 7C
	cop $78.b		; 02 78
	asl $F8.b		; 06 F8
	tsb $E0.b		; 04 E0
	trb $7488.w		; 1C 88 74
	bvs -120.b		; 70 88
	lsr $E7.b		; 46 E7
	cop $62.b		; 02 62
	brk $30.b		; 00 30
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	brk $07.b		; 00 07
	ora $04.b,S		; 03 04
	tsb $08.b		; 04 08
	mvp $00,$08		; 44 08 00
	ora $0700.w		; 0D 00 07
	ora ($06.b,X)		; 01 06
	ora $0C.b,S		; 03 0C
	ora [$08.b]		; 07 08
	ora [$18.b]		; 07 18
	ora $B83810.l		; 0F 10 38 B8
	clc		; 18
	sty $14.b,X		; 94 14
	bmi -84.b		; 30 AC
	cpy $0DAF.w		; CC AF 0D
	phy		; 5A
	stz $7F7B.w,X		; 9E 7B 7F
	bvs 127.b		; 70 7F
	sec		; 38
	eor [$1C.b]		; 47 1C
	adc $3C.b,S		; 63 3C
	cmp $F1.b,S		; C3 F1
	cop $F2.b		; 02 F2
	brk $E0.b		; 00 E0
	ora ($80.b,X)		; 01 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	sei		; 78
	brk $F8.b		; 00 F8
	plp		; 28
	nop		; EA
	sta ($A2.b,X)		; 81 A2
	bra  38.b		; 80 26
	sta $C70B.w		; 8D 0B C7
	bit $82.b		; 24 82
	stz $40.b		; 64 40
	sta [$80.b]		; 87 80
	ora [$0A.b]		; 07 0A
	ora $83.b,X		; 15 83
	jmp $8F5986.l		; 5C 86 59 8F
	bvs -57.b		; 70 C7
	clc		; 18
	sta [$18.b]		; 87 18
	jsr $4056.w		; 20 56 40
	bit $2840.w		; 2C 40 28
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	bra  64.b		; 80 40
	cpy #$00.b		; C0 00
	rts		; 60

	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpx #$C0.b		; E0 C0
	bmi -64.b		; 30 C0
	bmi -64.b		; 30 C0
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
	ora ($00.b,X)		; 01 00
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	tsb $0A0C.w		; 0C 0C 0A
	asl $0F09.w		; 0E 09 0F
	ora ($1C.b,S),Y		; 13 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	clc		; 18
	rol $0C.b		; 26 0C
	and ($0E.b,S),Y		; 33 0E
	ora ($0F.b),Y		; 11 0F
	bmi  31.b		; 30 1F
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($23.b,X)		; 01 23
	and $54.b,S		; 23 54
	ror $0A.b,X		; 76 0A
	inc $1F81.w,X		; FE 81 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $43.b		; 00 43
	ora ($62.b,X)		; 01 62
	and $54.b,S		; 23 54
	ror $89.b,X		; 76 89
	stz $EF01.w,X		; 9E 01 EF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	ora $85.b,S		; 03 85
	stx $6B.b		; 86 6B
	cpx $B875.w		; EC 75 B8
	brk $00.b		; 00 00
	brk $C1.b		; 00 C1
	ora ($82.b,X)		; 01 82
	ora ($86.b,X)		; 01 86
	ora $EC.b,S		; 03 EC
	sta [$78.b]		; 87 78
	sbc $00FF10.l		; EF 10 FF 00
	brk $01.b		; 00 01
	brk $41.b		; 00 41
	rts		; 60

	bra  72.b		; 80 48
	bra 126.b		; 80 7E
	bra 116.b		; 80 74
	dey		; 88
	bvs -116.b		; 70 8C
	bvs -120.b		; 70 88
	cop $7C.b		; 02 7C
	brk $3E.b		; 00 3E
	rts		; 60

	ora $7E3748.l,X		; 1F 48 37 7E
	ora ($7C.b,X)		; 01 7C
	ora $7C.b,S		; 03 7C
	ora $78.b,S		; 03 78
	ora [$00.b]		; 07 00
	beq   0.b		; F0 00
	sed		; F8
	jsr $81E0.w		; 20 E0 81
	sta ($09.b,X)		; 81 09
	ora $8BBDB3.l		; 0F B3 BD 8B
	sty $C1.b,X		; 94 C1
	cld		; D8
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	ora ($7E.b,X)		; 01 7E
	ora $40BFF0.l		; 0F F0 BF 40
	sta $20DF60.l,X		; 9F 60 DF 20
	eor ($59.b)		; 52 59
	lda #$F0.b		; A9 F0
	tax		; AA
	sbc ($63.b)		; F2 63
	lda ($D6.b,S),Y		; B3 D6
	rol $D4.b		; 26 D4
	and [$AD.b]		; 27 AD
	and $5F2FA9.l		; 2F A9 2F 5F
	ldy #$FF.b		; A0 FF
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	brk $F9.b		; 00 F9
	brk $F8.b		; 00 F8
	brk $D0.b		; 00 D0
	brk $D0.b		; 00 D0
	brk $B0.b		; 00 B0
	tay		; A8
	jsr $E1A8.w		; 20 A8 E1
	adc #$D1.b		; 69 D1
	adc $7A11.w,Y		; 79 11 7A
	ora ($7C.b,S),Y		; 13 7C
	cpy #$FA.b		; C0 FA
	clc		; 18
	cmp $D807D8.l,X		; DF D8 07 D8
	ora [$99.b]		; 07 99
	asl $89.b		; 06 89
	asl $87.b		; 06 87
	brk $87.b		; 00 87
	brk $05.b		; 00 05
	brk $20.b		; 00 20
	brk $C1.b		; 00 C1
	inc $1C18.w,X		; FE 18 1C
	bra -128.b		; 80 80
	and $8F74DF.l		; 2F DF 74 8F
	eor $AA02.w,X		; 5D 02 AA
	ldy #$B6.b		; A0 B6
	ldy $81.b,X		; B4 81
	brk $10.b		; 00 10
	sbc $80.b,S		; E3 80
	adc $FF00FF.l,X		; 7F FF 00 FF
	brk $FF.b		; 00 FF
	brk $5F.b		; 00 5F
	brk $4B.b		; 00 4B
	brk $82.b		; 00 82
	.db $82, $16, $1E		; 82 16 1E
	pei ($EC.b)		; D4 EC
	rol $E8DE.w		; 2E DE E8
	clc		; 18
	bvc  48.b		; 50 30
	rts		; 60

	cpx #$B2.b		; E0 B2
	bvs -126.b		; 70 82
	adc $E11E.w,X		; 7D 1E E1
	jsr ($FE03.w,X)		; FC 03 FE
	ora ($F8.b,X)		; 01 F8
	ora [$F0.b]		; 07 F0
	ora $F21FE0.l		; 0F E0 1F F2
	tsb $0303.w		; 0C 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	trb $0313.w		; 1C 13 03
	tsb $00.b		; 04 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	eor ($00.b,X)		; 41 00
	adc $1FFB04.l,X		; 7F 04 FB 1F
	jsr $C383.w		; 20 83 C3
	sep #$C3		; E2 C3
	eor $7769.w,Y		; 59 69 77
	adc [$38.b]		; 67 38
	and ($1A.b,S),Y		; 33 1A
	ora ($0C.b,S),Y		; 13 0C
	ora ($F6.b),Y		; 11 F6
	sbc #$FC.b		; E9 FC
	brk $FC.b		; 00 FC
	brk $76.b		; 00 76
	bra 120.b		; 80 78
	bra  60.b		; 80 3C
	cpy #$1C.b		; C0 1C
	cpx #$1E.b		; E0 1E
	cpx #$FE.b		; E0 FE
	brk $0F.b		; 00 0F
	asl $1717.w,X		; 1E 17 17
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $281720.l,X		; 1F 20 17 28
	ora $3C.b,S		; 03 3C
	ora ($76.b,X)		; 01 76
	ora ($60.b,X)		; 01 60
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bit $3B.b		; 24 3B
.INDEX 16
	rep #$DD		; C2 DD
	iny		; C8
	bit $41.b,X		; 34 41
	stz $DC81.w		; 9C 81 DC
	adc ($8E.b,X)		; 61 8E
	sta ($C6.b,X)		; 81 C6
	cmp ($E6.b,X)		; C1 E6
	cpy $00.b		; C4 00
	rol $00.b		; 26 00
	cmp $E502.w		; CD 02 E5
	cop $E5.b		; 02 E5
	cop $F7.b		; 02 F7
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $82.b		; 00 82
	mvp $4C,$8A		; 44 8A 4C
	cop $E4.b		; 02 E4
	stz $82.b		; 64 82
	cmp ($31.b),Y		; D1 31
	adc [$F5.b],Y		; 77 F5
.ACCU 8
.INDEX 8
	sep #$F5		; E2 F5
	ldx $87CB.w,Y		; BE CB 87
	clc		; 18
	sta $180710.l		; 8F 10 07 18
	adc [$18.b]		; 67 18
	sbc ($0C.b)		; F2 0C
	inc $08.b,X		; F6 08
	inc $08.b,X		; F6 08
	jsr ($A000.w,X)		; FC 00 A0
	cpy #$30.b		; C0 30
	rti		; 40

	ldy #$F0.b		; A0 F0
	brk $D7.b		; 00 D7
	asl $E1.b,X		; 16 E1
	jsr $5EFF.w		; 20 FF 5E
	cmp ($40.b,X)		; C1 40
	inc $1820.w,X		; FE 20 18
	bcs   8.b		; B0 08
	bpl   8.b		; 10 08
	bmi   8.b		; 30 08
	ora [$08.b],Y		; 17 08
	ora $003E00.l,X		; 1F 00 3E 00
	brk $00.b		; 00 00
	ora $0F080F.l		; 0F 0F 08 0F
	ora [$18.b],Y		; 17 18
	tsb $2230.w		; 0C 30 22
	bit $1C1A.w,X		; 3C 1A 1C
	ora #$0E.b		; 09 0E
	pld		; 2B
	bmi  15.b		; 30 0F
	bpl  15.b		; 10 0F
	bpl  31.b		; 10 1F
	rts		; 60

	and $403F40.l,X		; 3F 40 3F 40
	ora $700F60.l,X		; 1F 60 0F 70
	and $D914C0.l,X		; 3F C0 14 D9
	ldx $48.b,Y		; B6 48
	dey		; 88
	ora $C2.b,S		; 03 C2
	ora $15.b		; 05 15
	tas		; 1B
	cmp ($DC.b,S),Y		; D3 DC
	ror $79.b,X		; 76 79
	adc $7A.b,X		; 75 7A
	dec $FF20.w,X		; DE 20 FF
	brk $FC.b		; 00 FC
	brk $FB.b		; 00 FB
	brk $E7.b		; 00 E7
	brk $27.b		; 00 27
	brk $86.b		; 00 86
	brk $85.b		; 00 85
	brk $00.b		; 00 00
	sbc $07FC03.l,X		; FF 03 FC 07
	sed		; F8
	ora [$F8.b]		; 07 F8
	tay		; A8
	eor [$A8.b],Y		; 57 A8
	eor [$A8.b],Y		; 57 A8
	eor [$00.b],Y		; 57 00
	sbc $6B0014.l,X		; FF 14 00 6B
	brk $37.b		; 00 37
	brk $DF.b		; 00 DF
	brk $FE.b		; 00 FE
	brk $EB.b		; 00 EB
	brk $AA.b		; 00 AA
	brk $C1.b		; 00 C1
	brk $24.b		; 00 24
	cld		; D8
	dey		; 88
	bmi -29.b		; 30 E3
	ora ($B6.b,S),Y		; 13 B6
	eor $606E94.l		; 4F 94 6E 60
	stz $FF01.w,X		; 9E 01 FF
	bit $3FD3.w		; 2C D3 3F
	brk $CF.b		; 00 CF
	brk $EC.b		; 00 EC
	brk $F0.b		; 00 F0
	brk $F1.b		; 00 F1
	brk $79.b		; 00 79
	brk $1B.b		; 00 1B
	brk $BD.b		; 00 BD
	brk $32.b		; 00 32
	lsr A		; 4A
	dec A		; 3A
	lsr A		; 4A
	and ($43.b,S),Y		; 33 43
	bpl  33.b		; 10 21
	ora $082D.w,X		; 1D 2D 08
	bpl  12.b		; 10 0C
	bpl   6.b		; 10 06
	asl $053A.w		; 0E 3A 05
	dec A		; 3A
	ora $33.b		; 05 33
	tsb $0E11.w		; 0C 11 0E
	ora $0802.w,X		; 1D 02 08
	ora [$0C.b]		; 07 0C
	ora $06.b,S		; 03 06
	ora ($04.b,X)		; 01 04
	cpy $C0.b		; C4 C0
	bcs -87.b		; B0 A9
	cmp ($A9.b),Y		; D1 A9
	eor ($64.b,X)		; 41 64
	bra  78.b		; 80 4E
	dey		; 88
	dey		; 88
	iny		; C8
	clc		; 18
	trb $38C3.w		; 1C C3 38
	sbc ($0E.b),Y		; F1 0E
	sed		; F8
	asl $F8.b		; 06 F8
	asl $FC.b		; 06 FC
	ora $F6.b,S		; 03 F6
	ora ($F4.b,X)		; 01 F4
	ora $20.b,S		; 03 20
	cmp $14.b,S		; C3 14
	ora $B88F8C.l,X		; 1F 8C 8F B8
	lda $E6FFF6.l,X		; BF F6 FF E6
	sbc $272F06.l,X		; FF 06 2F 27
	and $E00F07.l		; 2F 07 0F E0
	brk $70.b		; 00 70
	brk $42.b		; 00 42
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	bne  39.b		; D0 27
	bne   7.b		; D0 07
	beq  23.b		; F0 17
	sbc [$0F.b]		; E7 0F
	xce		; FB
	eor [$F8.b]		; 47 F8
	adc $FE.b,S		; 63 FE
	and ($FF.b),Y		; 31 FF
	sec		; 38
	inc $FA18.w,X		; FE 18 FA
	trb $B8FD.w		; 1C FD B8
	brk $DC.b		; 00 DC
	brk $EF.b		; 00 EF
	brk $77.b		; 00 77
	brk $7B.b		; 00 7B
	brk $7C.b		; 00 7C
	ora ($BA.b,X)		; 01 BA
	ora $BD.b		; 05 BD
	cop $6C.b		; 02 6C
	jsr ($FC04.w,X)		; FC 04 FC
	sbc [$FE.b]		; E7 FE
	sta ($3F.b,X)		; 81 3F
	dey		; 88
	rol $02.b,X		; 36 02
	bit $00.b,X		; 34 00
	jsr $C001.w		; 20 01 C0
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	cmp [$00.b]		; C7 00
	cmp $814E00.l		; CF 00 4E 81
	cpy #$1F.b		; C0 1F
	ora ($3E.b,X)		; 01 3E
	lsr $31.b,X		; 56 31
	ldx $71.b,Y		; B6 71
	pea $C47A.w		; F4 7A C4
	phx		; DA
	tsb $0812.w		; 0C 12 08
	bit $08.b,X		; 34 08
	bit $00.b,X		; 34 00
	clv		; B8
	inc $08.b,X		; F6 08
	inc $08.b,X		; F6 08
	sbc $DC00.w,X		; FD 00 DC
	jsr $E01C.w		; 20 1C E0
	inc A		; 1A
	cpy #$18.b		; C0 18
	bra  16.b		; 80 10
	brk $1E.b		; 00 1E
	ora ($01.b),Y		; 11 01
	tsb $0B0C.w		; 0C 0C 0B
	tsb $000B.w		; 0C 0B 00
	asl $01.b		; 06 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	rts		; 60

	phd		; 0B
	bmi  12.b		; 30 0C
	bpl  12.b		; 10 0C
	bpl   5.b		; 10 05
	clc		; 18
	ora ($0E.b,X)		; 01 0E
	ora ($0E.b,X)		; 01 0E
	brk $03.b		; 00 03
	and [$FA.b],Y		; 37 FA
	sbc $22F21F.l		; EF 1F F2 22
	cpx $3C.b		; E4 3C
	cmp $FF.b,S		; C3 FF
	rts		; 60

	adc $000780.l		; 6F 80 07 00
	ora [$FF.b]		; 07 FF
	brk $FF.b		; 00 FF
	brk $DF.b		; 00 DF
	brk $C3.b		; 00 C3
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc -128.b		; 90 80
	sei		; 78
	brk $F8.b		; 00 F8
	iny		; C8
	pea $F108.w		; F4 08 F1
	php		; 08
	beq -80.b		; F0 B0
	cpy $FC13.w		; CC 13 FC
	ora #$FA.b		; 09 FA
	tsb $9D.b		; 04 9D
	cop $0E.b		; 02 0E
	tsb $0803.w		; 0C 03 08
	asl $08.b		; 06 08
	ora [$34.b]		; 07 34
	ora $3B.b,S		; 03 3B
	brk $1D.b		; 00 1D
	brk $6E.b		; 00 6E
	brk $F7.b		; 00 F7
	brk $42.b		; 00 42
	lda $43.b		; A5 43
	php		; 08
	.db $42, $01		; 42 01
	cpx #$06.b		; E0 06
	ora $53E5.w,Y		; 19 E5 53
	sbc $55A3.w		; ED A3 55
	phd		; 0B
	cpx $E6.b		; E4 E6
	clc		; 18
	eor $B4.b,S		; 43 B4
	.db $42, $BC		; 42 BC
	sbc $18.b		; E5 18
	tas		; 1B
	brk $13.b		; 00 13
	brk $AB.b		; 00 AB
	brk $1B.b		; 00 1B
	brk $7E.b		; 00 7E
	sty $E014.w		; 8C 14 E0
	bpl  96.b		; 10 60
	cmp ($A2.b)		; D2 A2
	sta ($62.b)		; 92 62
	ora [$87.b],Y		; 17 87
	ora $07.b		; 05 07
	bra -117.b		; 80 8B
	sbc [$00.b],Y		; F7 00
	ora $00DF00.l,X		; 1F 00 DF 00
	cmp $9D00.w,X		; DD 00 9D
	brk $78.b		; 00 78
	brk $18.b		; 00 18
	cpx #$84.b		; E0 84
	bvs  91.b		; 70 5B
	and [$6D.b]		; 27 6D
	ora $C4.b,S		; 03 C4
	cop $A4.b		; 02 A4
	jsr $F2D4.w		; 20 D4 F2
	dey		; 88
	jsr ($A808.w,X)		; FC 08 A8
	cop $02.b		; 02 02
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $DC01.w,X		; FE 01 DC
	cop $0E.b		; 02 0E
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	lsr $02.b,X		; 56 02
	sbc $0000.w,X		; FD 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	brk $20.b		; 00 20
	brk $A0.b		; 00 A0
	bra  80.b		; 80 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $A0.b		; 00 A0
	brk $20.b		; 00 20
	bne   0.b		; D0 00
	bvc   0.b		; 50 00
	bmi   0.b		; 30 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	jsr $38C0.w		; 20 C0 38
	cpy #$38.b		; C0 38
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $3C.b		; 00 3C
	bit $7FC3.w,X		; 3C C3 7F
	jsr ($FF00.w,X)		; FC 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $FF00.w,X		; 3C 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$20.b		; E0 20
	bcs -112.b		; B0 90
	cli		; 58
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	cpy #$F0.b		; C0 F0
	bvs  32.b		; 70 20
	cpx #$70.b		; E0 70
	beq  60.b		; F0 3C
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpy #$38.b		; C0 38
	beq   8.b		; F0 08
	cpx #$00.b		; E0 00
	beq  14.b		; F0 0E
	jsr ($E203.w,X)		; FC 03 E2
	asl $0E16.w,X		; 1E 16 0E
	ldy $589C.w		; AC 9C 58
	sec		; 38
	ldy #$60.b		; A0 60
	eor [$C7.b]		; 47 C7
	inc A		; 1A
	ora $FE7E61.l,X		; 1F 61 7E FE
	ora ($FE.b,X)		; 01 FE
	ora ($7C.b,X)		; 01 7C
	ora $F8.b,S		; 03 F8
	tsb $E0.b		; 04 E0
	ora $38C7.w,X		; 1D C7 38
	ora $807FE0.l,X		; 1F E0 7F 80
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
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	sbc ($FF.b,S),Y		; F3 FF
	bvs  -1.b		; 70 FF
	adc ($7E.b,X)		; 61 7E
	ora $7D.b,S		; 03 7D
	ora $2F5771.l		; 0F 71 57 2F
	eor $01F62F.l,X		; 5F 2F F6 01
	xce		; FB
	brk $FA.b		; 00 FA
	brk $79.b		; 00 79
	bra  99.b		; 80 63
	bra  15.b		; 80 0F
	bra  95.b		; 80 5F
	bra  95.b		; 80 5F
	bra  46.b		; 80 2E
	cmp $1FDE3F.l,X		; DF 3F DE 1F
	inc $BE7D.w,X		; FE 7D BE
	ror $7DBD.w,X		; 7E BD 7D
	ldx $BF7F.w,Y		; BE 7F BF
	eor $003FBF.l,X		; 5F BF 3F 00
	and $003F00.l,X		; 3F 00 3F 00
	adc $007E00.l,X		; 7F 00 7E 00
	adc $7F00.w,X		; 7D 00 7F
	brk $7F.b		; 00 7F
	brk $CD.b		; 00 CD
	cmp ($27.b)		; D2 27
	plp		; 28
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $402700.l		; CF 00 27 40
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $9C.b,S		; 63 9C
	sta $1FC060.l,X		; 9F 60 C0 1F
	ora $3803C0.l,X		; 1F C0 03 38
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $009F00.l,X		; 7F 00 9F 00
	cpx #$00.b		; E0 00
	and $000700.l,X		; 3F 00 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($0F.b)		; F2 0F
	sbc ($0F.b)		; F2 0F
	ldx $CF.b,Y		; B6 CF
	lsr $6F.b,X		; 56 6F
	adc ($FF.b)		; 72 FF
	sbc $D8.b,X		; F5 D8
	rol $E0.b		; 26 E0
	ora ($F1.b),Y		; 11 F1
	sbc [$00.b],Y		; F7 00
	sbc [$00.b],Y		; F7 00
	sbc $00FF00.l,X		; FF 00 FF 00
	and $003F00.l,X		; 3F 00 3F 00
	asl $0101.w,X		; 1E 01 01
	asl $C739.w		; 0E 39 C7
	bvc -86.b		; 50 AA
	rts		; 60

	cpy #$40.b		; C0 40
	cpy #$09.b		; C0 09
	ora #$3A.b		; 09 3A
	tsa		; 3B
	asl $132F.w,X		; 1E 2F 13
	rol $003B.w		; 2E 3B 00
	bvc   5.b		; 50 05
	jsr $001F.w		; 20 1F 00
	and $3BF609.l,X		; 3F 09 F6 3B
	cpy $3F.b		; C4 3F
	cpy #$3F.b		; C0 3F
	cpy #$00.b		; C0 00
	asl $2929.w		; 0E 29 29
	ldy #$A1.b		; A0 A1
	adc $E6.b		; 65 E6
	lda ($64.b,X)		; A1 64
	ldy $60.b		; A4 60
	cpx $20.b		; E4 20
	adc [$25.b]		; 67 25
	php		; 08
	sbc ($29.b),Y		; F1 29
	dec $A1.b,X		; D6 A1
	lsr $18E7.w,X		; 5E E7 18
	sbc [$18.b]		; E7 18
	sbc [$18.b]		; E7 18
	sbc [$18.b]		; E7 18
	inc $18.b		; E6 18
	rti		; 40

	.db $42, $45		; 42 45
	eor [$E6.b]		; 47 E6
	sbc $63.b		; E5 63
	ldy $1066.w		; AC 66 10
	lda $81.b		; A5 81
	dec $B0DF.w,X		; DE DF B0
	sbc $47BD42.l,X		; FF 42 BD 47
	clv		; B8
	sbc [$18.b]		; E7 18
	sbc $00FF10.l		; EF 10 FF 00
	ror $2000.w,X		; 7E 00 20
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	ora $60F800.l		; 0F 00 F8 60
	php		; 08
	bmi -58.b		; 30 C6
	cpy $39.b		; C4 39
	and $0386.w,Y		; 39 86 03
	sei		; 78
	brk $07.b		; 00 07
	sed		; F8
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $FE.b		; 00 FE
	brk $7F.b		; 00 7F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stx $00.b		; 86 00
	adc $08E1.w,Y		; 79 E1 08
	sec		; 38
	stx $06.b		; 86 06
	adc ($01.b),Y		; 71 01
	tsb $0300.w		; 0C 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stx $00.b		; 86 00
	sbc [$00.b],Y		; F7 00
	adc $0E00.w,Y		; 79 00 0E
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
	jsr $8000.w		; 20 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $F0.b		; 00 F0
	jsr $C0D0.w		; 20 D0 C0
	cpx #$A0.b		; E0 A0
	bne -88.b		; D0 A8
	clc		; 18
	plp		; 28
	clc		; 18
	cli		; 58
	pha		; 48
	bcs -112.b		; B0 90
	cpx #$C0.b		; E0 C0
	dey		; 88
	dey		; 88
	cpx #$10.b		; E0 10
	beq  14.b		; F0 0E
	sed		; F8
	tsb $F8.b		; 04 F8
	ora $B8.b		; 05 B8
	ora [$70.b]		; 07 70
	ora $881E60.l		; 0F 60 1E 88
	ror $1F.b,X		; 76 1F
	brk $17.b		; 00 17
	php		; 08
	ora $1C06.w,Y		; 19 06 1C
	ora $1C.b,S		; 03 1C
	ora $2C.b,S		; 03 2C
	ora ($29.b,S),Y		; 13 29
	asl $29.b,X		; 16 29
	asl $00.b,X		; 16 00
	ora $000F00.l		; 0F 00 0F 00
	ora $030C03.l		; 0F 03 0C 03
	tsb $0C13.w		; 0C 13 0C
	asl $08.b,X		; 16 08
	asl $08.b,X		; 16 08
	and #$D6.b		; 29 D6
	adc $966580.l,X		; 7F 80 65 96
	eor [$A0.b]		; 47 A0
	bvc -80.b		; 50 B0
	cpx #$1F.b		; E0 1F
	sbc $1E.b		; E5 1E
	cpx $02.b		; E4 02
	cmp [$00.b],Y		; D7 00
	sta ($06.b,X)		; 81 06
	phb		; 8B
	tsb $9F.b		; 04 9F
	brk $8F.b		; 00 8F
	brk $0E.b		; 00 0E
	asl $0808.w		; 0E 08 08
	ora $001D.w,X		; 1D 1D 00
	rts		; 60

	cpy #$60.b		; C0 60
	rti		; 40

	cpx #$00.b		; E0 00
	cpx #$40.b		; E0 40
	rts		; 60

	brk $C0.b		; 00 C0
	rti		; 40

	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $03.b		; 02 03
	tsb $1E0C.w		; 0C 0C 1E
	inc A		; 1A
	trb $1E.b		; 14 1E
	trb $201C.w		; 1C 1C 20
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $181F04.l		; 0F 04 1F 18
	and $183F14.l,X		; 3F 14 3F 18
	ror $FC00.w,X		; 7E 00 FC
	and $11.b		; 25 11
	asl A		; 0A
	and $14.b,S		; 23 14
	lsr $7B.b		; 46 7B
	jmp ($88BF.w,X)		; 7C BF 88
	sbc $88BFF8.l,X		; FF F8 BF 88
	adc [$70.b],Y		; 77 70
	asl $1C00.w		; 0E 00 1C
	brk $38.b		; 00 38
	ora ($70.b,X)		; 01 70
	brk $F8.b		; 00 F8
	bvs  -8.b		; 70 F8
	brk $F8.b		; 00 F8
	bvs 112.b		; 70 70
	dey		; 88
	ora $FE3E.w,X		; 1D 3E FE
	adc $7F39.w,X		; 7D 39 7F
	adc $1FAF07.l,X		; 7F 07 AF 1F
	dec $0E.b		; C6 0E
	beq   1.b		; F0 01
	plx		; FA
	beq   8.b		; F0 08
	inc $FF38.w,X		; FE 38 FF
	bmi  -1.b		; 30 FF
	ora $FF.b,S		; 03 FF
	ora [$7F.b]		; 07 7F
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	beq   7.b		; F0 07
	lda [$40.b]		; A7 40
	sbc [$06.b]		; E7 06
	phy		; 5A
	ldy #$A3.b		; A0 A3
	iny		; C8
	phb		; 8B
	wai		; CB
	and ($30.b),Y		; 31 30
	cpy $67C4.w		; CC C4 67
	adc $40.b,S		; 63 40
	bpl   6.b		; 10 06
	cli		; 58
	ora ($BD.b,X)		; 01 BD
	ora ($FD.b,X)		; 01 FD
	ora $FC.b,S		; 03 FC
	and [$FF.b],Y		; 37 FF
	eor $9C7FFB.l		; 4F FB 7F 9C
	ldy $31.b,X		; B4 31
	clv		; B8
	and $2DAC.w,Y		; 39 AC 2D
	lsr $47.b,X		; 56 47
	dec $58CF.w		; CE CF 58
	eor $F82F28.l,X		; 5F 28 2F F8
	dec $C1EF.w		; CE EF C1
	sbc [$C1.b],Y		; F7 C1
	xce		; FB
	cmp ($FC.b),Y		; D1 FC
	clv		; B8
	jsr ($FE30.w,X)		; FC 30 FE
	ldx $FE.b		; A6 FE
	dec $FC.b,X		; D6 FC
	bit $00.b,X		; 34 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$A0.b		; E0 A0
	sec		; 38
	beq   6.b		; F0 06
	jmp $04C1.w		; 4C C1 04
	jmp ($0000.w,X)		; 7C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	sed		; F8
	brk $3E.b		; 00 3E
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	ora [$03.b]		; 07 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$40.b		; E0 40
	jmp ($0F08.w,X)		; 7C 08 0F
	.db $82, $83, $06		; 82 83 06
	inc $0F00.w,X		; FE 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	ldy #$20.b		; A0 20
	pea $7D04.w		; F4 04 7D
	ora ($09.b,X)		; 01 09
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra  -8.b		; 80 F8
	beq  -1.b		; F0 FF
	ora #$F9.b		; 09 F9
	ora $0D0D1F.l,X		; 1F 1F 0D 0D
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	php		; 08
	php		; 08
	asl $10.b,X		; 16 10
	ora $020F00.l,X		; 1F 00 0F 02
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	jsr ($14FC.w,X)		; FC FC 14
	tsb $F8.b		; 04 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -16.b		; 80 F0
	brk $1C.b		; 00 1C
	php		; 08
	ora $800101.l		; 0F 01 01 80
	bra  24.b		; 80 18
	sed		; F8
	ora $7F.b,S		; 03 7F
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	beq  16.b		; F0 10
	pea $FE04.w		; F4 04 FE
	brk $7F.b		; 00 7F
	brk $67.b		; 00 67
	rts		; 60

	tsb $000C.w		; 0C 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $3704.w		; 0E 04 37
	bpl 112.b		; 10 70
	jsr $00E0.w		; 20 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $0A.b		; 00 0A
	cop $2F.b		; 02 2F
	jsr $405F.w		; 20 5F 40
	pld		; 2B
	trb $2B.b		; 14 2B
	ora $22.b,X		; 15 22
	asl $1C25.w,X		; 1E 25 1C
	and $17231F.l		; 2F 1F 23 17
	jsr $2611.w		; 20 11 26
	trb $0814.w		; 1C 14 08
	ora $08.b,X		; 15 08
	ora $031F01.l,X		; 1F 01 1F 03
	ora $0F1100.l,X		; 1F 00 11 0F
	bpl  15.b		; 10 0F
	ora ($01.b)		; 12 01
	plx		; FA
	tda		; 7B
	sta $FB8D.w		; 8D 8D FB
	ora $E7.b,S		; 03 E7
	ora [$F8.b]		; 07 F8
	sbc $9C053A.l,X		; FF 3A 05 9C
	sta $46.b,S		; 83 46
	sta $0074.w,Y		; 99 74 00
	inc $FF70.w,X		; FE 70 FF
	jsr ($F8FF.w,X)		; FC FF F8
	sbc $C30400.l,X		; FF 00 04 C3
	cop $F1.b		; 02 F1
	ora ($FC.b,X)		; 01 FC
	bvs   0.b		; 70 00
	rtl		; 6B

	sta [$55.b],Y		; 97 55
	plb		; AB
	dec $F630.w		; CE 30 F6
	php		; 08
	jmp ($B880.w)		; 6C 80 B8
	rti		; 40

	eor ($A0.b,X)		; 41 A0
	bra -113.b		; 80 8F
	ora ($37.b,X)		; 01 37
	tay		; A8
	sta ($30.b,S),Y		; 93 30
	ora $48.b,S		; 03 48
	mvp $30,$B0		; 44 B0 30
	rti		; 40

	bra -96.b		; 80 A0
	bpl -64.b		; 10 C0
	sbc $2FB197.l,X		; FF 97 B1 2F
	cpx #$1F.b		; E0 1F
	rti		; 40

	rol $5EC0.w,X		; 3E C0 5E
	cpy #$5C.b		; C0 5C
	cmp ($EC.b,X)		; C1 EC
	sbc ($00.b,X)		; E1 00
	cpx #$8E.b		; E0 8E
	cpy #$1F.b		; C0 1F
	bra  63.b		; 80 3F
	bra 127.b		; 80 7F
	rti		; 40

	and $013F00.l,X		; 3F 00 3F 01
	cmp $706701.l,X		; DF 01 67 70
	adc [$70.b],Y		; 77 70
	and [$70.b],Y		; 37 70
	and ($38.b,S),Y		; 33 38
	dec A		; 3A
	and $391A.w,Y		; 39 1A 39
	ora $0118.w,Y		; 19 18 01
	clc		; 18
	jsr $20F8.w		; 20 F8 20
	sed		; F8
	bmi  -8.b		; 30 F8
	bpl 124.b		; 10 7C
	ora ($7C.b),Y		; 11 7C
	ora $007C.w,Y		; 19 7C 00
	bit $3C00.w,X		; 3C 00 3C
	clc		; 18
	bpl  12.b		; 10 0C
	php		; 08
	cmp $16FF0A.l		; CF 0A FF 16
	sbc ($02.b,S),Y		; F3 02
	and $E01FC0.l,X		; 3F C0 1F E0
	ora $FC.b,S		; 03 FC
	sbc ($E7.b),Y		; F1 E7
	sbc $3AF3.w,Y		; F9 F3 3A
	bmi  22.b		; 30 16
	brk $0E.b		; 00 0E
	tsb $00C0.w		; 0C C0 00
	cpx #$00.b		; E0 00
	jsr ($B900.w,X)		; FC 00 B9
	clv		; B8
	ldx $A7A6.w		; AE A6 A7
	lda ($D9.b,X)		; A1 D9
	bvc -49.b		; 50 CF
	phk		; 4B
	sbc [$24.b]		; E7 24
	sbc $07F818.l,X		; FF 18 F8 07
	sbc $59FF47.l,X		; FF 47 FF 59
	sbc $27775E.l,X		; FF 5E 77 27
	tda		; 7B
	bmi  60.b		; 30 3C
	clc		; 18
	clc		; 18
	brk $07.b		; 00 07
	brk $E8.b		; 00 E8
	asl $0C09.w		; 0E 09 0C
	sbc $22FDF8.l,X		; FF F8 FD 22
	tsa		; 3B
	bit $E6.b		; 24 E6
	cld		; D8
	sty $1070.w		; 8C 70 10
	cpx #$FC.b		; E0 FC
	pea $F0F8.w		; F4 F8 F0
	sed		; F8
	brk $E2.b		; 00 E2
	cpy #$E4.b		; C0 E4
	cpy #$D8.b		; C0 D8
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $22.b		; 00 22
.INDEX 8
	sep #$1F		; E2 1F
	sbc $E07FCD.l,X		; FF CD 7F E0
	and $F81CF0.l,X		; 3F F0 1C F8
	tsb $077C.w		; 0C 7C 07
	lda $5D81.w,X		; BD 81 5D
	rti		; 40

	jsr $9220.w		; 20 20 92
	ora ($CC.b)		; 12 CC
	tsb $00E0.w		; 0C E0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $7E.b		; 00 7E
	brk $5E.b		; 00 5E
	cpy #$17.b		; C0 17
	beq   2.b		; F0 02
	stz $0700.w,X		; 9E 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	and $000F00.l,X		; 3F 00 0F 00
	ora $04.b		; 05 04
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0E0C.w		; 0C 0C 0E
	phd		; 0B
	ora #$0D.b		; 09 0D
	php		; 08
	php		; 08
	php		; 08
	asl A		; 0A
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $1F.b		; 04 1F
	asl A		; 0A
	ora $081F08.l,X		; 1F 08 1F 08
	ora $001F08.l,X		; 1F 08 1F 00
	ora $000400.l		; 0F 00 04 00
	brk $80.b		; 00 80
	adc $313946.l,X		; 7F 46 39 31
	asl $030C.w		; 0E 0C 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $803900.l,X		; 7F 00 39 80
	asl $0380.w		; 0E 80 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $C1FF00.l,X		; FF 00 FF C1
	rol $C03F.w,X		; 3E 3F C0
	beq   0.b		; F0 00
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3E.b		; 00 3E
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	beq  56.b		; F0 38
	cpy #$E0.b		; C0 E0
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
	brk $00.b		; 00 00
	bra  31.b		; 80 1F
	adc $F1E0E3.l,X		; 7F E3 E0 F1
	sbc ($CE.b),Y		; F1 CE
	stx $4060.w		; 8E 60 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $1F7F00.l,X		; 9F 00 7F 1F
	sbc $008E0E.l,X		; FF 0E 8E 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $34.b		; 00 34
	phd		; 0B
	lsr A		; 4A
	and $8E.b,X		; 35 8E
	adc ($A9.b),Y		; 71 A9
	lsr $00.b,X		; 56 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0B.b		; 00 0B
	tsb $31.b		; 04 31
	asl $0C71.w		; 0E 71 0C
	lsr $28.b,X		; 56 28
	clc		; 18
	brk $28.b		; 00 28
	bpl  78.b		; 10 4E
	bmi -47.b		; 30 D1
	rol $4AB5.w		; 2E B5 4A
	ror A		; 6A
	sty $B4.b,X		; 94 B4
	lsr A		; 4A
	jmp.w [$0032]		; DC 32 00
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	brk $2E.b		; 00 2E
	rti		; 40

	asl A		; 0A
	beq -108.b		; F0 94
	php		; 08
	pha		; 48
	bra  32.b		; 80 20
	ldy $00.b		; A4 00
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
	brk $38.b		; 00 38
	ora [$48.b]		; 07 48
	and [$48.b],Y		; 37 48
	and [$F3.b],Y		; 37 F3
	tsb $40BF.w		; 0C BF 40
	ldx $8F51.w		; AE 51 8F
	bvs  26.b		; 70 1A
	sbc [$07.b]		; E7 07
	brk $37.b		; 00 37
	php		; 08
	and [$18.b]		; 27 18
	brk $3D.b		; 00 3D
	rti		; 40

	and $2A51.w,X		; 3D 51 2A
	bvs   0.b		; 70 00
	sbc [$06.b]		; E7 06
	rti		; 40

	brk $70.b		; 00 70
	rti		; 40

	pla		; 68
	brk $B8.b		; 00 B8
	bra -32.b		; 80 E0
	inc $7F6C.w,X		; FE 6C 7F
	sbc ($71.b),Y		; F1 71
	beq  48.b		; F0 30
	bra -128.b		; 80 80
	cpy #$80.b		; C0 80
	beq -16.b		; F0 F0
	cpy #$40.b		; C0 40
	beq  16.b		; F0 10
	sbc ($92.b)		; F2 92
	inc $EF80.w		; EE 80 EF
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	beq  32.b		; F0 20
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bne  16.b		; D0 10
	sbc $7696EE.l,X		; FF EE 96 76
	sbc $609F1D.l		; EF 1D 9F 60
	lda $708D50.l		; AF 50 8D 70
	inc $89.b,X		; F6 89
	sta $11FB62.l,X		; 9F 62 FB 11
	adc $601D09.l,X		; 7F 09 1D 60
	cop $7A.b		; 02 7A
	ora ($62.b)		; 12 62
	adc ($02.b)		; 72 02
	bit #$80.b		; 89 80
	rts		; 60

	inc A		; 1A
	bmi  48.b		; 30 30
	cpx #$F0.b		; E0 F0
	cpx #$00.b		; E0 00
	bcs  88.b		; B0 58
	ldy #$48.b		; A0 48
	bmi -56.b		; 30 C8
	cld		; D8
	tsb $8470.w		; 0C 70 84
	cpx #$D8.b		; E0 D8
	cpx #$38.b		; E0 38
	brk $D8.b		; 00 D8
	brk $C0.b		; 00 C0
	bvc   0.b		; 50 00
	bne   0.b		; D0 00
	bmi   0.b		; 30 00
	tya		; 98
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	asl $01.b		; 06 01
	tsb $03.b		; 04 03
	php		; 08
	asl $09.b		; 06 09
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	ora $31B1.w		; 0D B1 31
	bit #$1D.b		; 89 1D
	and $83.b,S		; 23 83
	adc ($1F.b,S),Y		; 73 1F
	cmp $17.b,S		; C3 17
	lda $33.b		; A5 33
	tad		; 5B
	rts		; 60

	tsb $7F.b		; 04 7F
	bpl 127.b		; 10 7F
	ora ($7F.b,X)		; 01 7F
	adc ($1F.b,X)		; 61 1F
	sbc ($07.b,X)		; E1 07
	sbc ($0F.b,X)		; E1 0F
	cpy #$0F.b		; C0 0F
	bra   7.b		; 80 07
	jmp $4BB423.l		; 5C 23 B4 4B
	lda $4A.b,X		; B5 4A
	lda $5A.b		; A5 5A
	lda $5A.b		; A5 5A
	lda $5A.b		; A5 5A
	lda ($5E.b,X)		; A1 5E
	sta ($7E.b,X)		; 81 7E
	and $1C.b,S		; 23 1C
	phk		; 4B
	bit $4A.b,X		; 34 4A
	bit $5A.b,X		; 34 5A
	bit $5A.b		; 24 5A
	bit $5A.b		; 24 5A
	bit $5E.b		; 24 5E
	jsr $007E.w		; 20 7E 00
	sbc $FD0D.w,X		; FD 0D FD
	ora $19F9.w		; 0D F9 19
	sbc $F919.w,Y		; F9 19 F9
	and ($F1.b),Y		; 31 F1
	and ($F1.b,X)		; 21 F1
	and ($F2.b,X)		; 21 F2
	.db $62, $0F, $62		; 62 0F 62
	ora $061F02.l		; 0F 02 1F 06
	ora $063706.l,X		; 1F 06 37 06
	and $0E2F0E.l		; 2F 0E 2F 0E
	adc $C03C0D.l		; 6F 0D 3C C0
	cop $FC.b		; 02 FC
	rtl		; 6B

	sty $77.b,X		; 94 77
	tay		; A8
	eor $8A.b,X		; 55 8A
	sta $8E12.w		; 8D 12 8E
	bvc -76.b		; 50 B4
	pha		; 48
	cpy #$00.b		; C0 00
	jsr ($9400.w,X)		; FC 00 94
	lsr A		; 4A
	php		; 08
	stx $AA.b		; 86 AA
	brk $72.b		; 00 72
	bpl  96.b		; 10 60
	brk $60.b		; 00 60
	rti		; 40

	bcs   8.b		; B0 08
	rts		; 60

	tya		; 98
	beq  24.b		; F0 18
	bra 112.b		; 80 70
	rti		; 40

	jsr $C000.w		; 20 00 C0
	bcs -80.b		; B0 B0
	inx		; E8
	dey		; 88
	rts		; 60

	bcc -16.b		; 90 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	rts		; 60

	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	beq  64.b		; F0 40
	sed		; F8
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	tsb $7066.w		; 0C 66 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	adc $070000.l		; 6F 00 00 07
	cop $1E.b		; 02 1E
	phd		; 0B
	sec		; 38
	ora [$70.b],Y		; 17 70
	lsr $F4C0.w,X		; 5E C0 F4
	sta [$A0.b]		; 87 A0
	rol $E000.w,X		; 3E 00 E0
	brk $00.b		; 00 00
	ora $04.b		; 05 04
	ora [$10.b],Y		; 17 10
	and $003F20.l		; 2F 20 3F 00
	ply		; 7A
	cop $C0.b		; 02 C0
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	sbc $52.b,S		; E3 52
	adc ($E4.b,S),Y		; 73 E4
	ora [$98.b]		; 07 98
	asl $FCC0.w,X		; 1E C0 FC
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $AC00.w		; 1C 00 AC
	jsr $02FA.w		; 20 FA 02
	cpx $04.b		; E4 04
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($05.b,X)		; 01 05
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($07.b,X)		; 01 07
	ora ($02.b,X)		; 01 02
	cop $0D.b		; 02 0D
	ora $0000.w		; 0D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $0D.b,S		; 03 0D
	ora $1E.b		; 05 1E
	ora ($E0.b,S),Y		; 13 E0
	tas		; 1B
	sbc #$35.b		; E9 35
	cpy $C63A.w		; CC 3A C6
	plx		; FA
	sbc [$0D.b],Y		; F7 0D
	ora $08EB.w		; 0D EB 08
	lda $85.b,X		; B5 85
	inc $E600.w		; EE 00 E6
	ora ($C3.b,X)		; 01 C3
	brk $C1.b		; 00 C1
	brk $F5.b		; 00 F5
	ora $FA.b		; 05 FA
	beq  -1.b		; F0 FF
	sbc [$FE.b],Y		; F7 FE
	sei		; 78
	rts		; 60

	rts		; 60

	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	bit $00FF.w,X		; 3C FF 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	ora ($DF.b,X)		; 01 DF
	bra -33.b		; 80 DF
	brk $BF.b		; 00 BF
	brk $C3.b		; 00 C3
	cmp $00.b,S		; C3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	asl $0302.w		; 0E 02 03
	rts		; 60

	adc ($12.b,X)		; 61 12
	sbc ($14.b,S),Y		; F3 14
	adc [$20.b],Y		; 77 20
	inc $48.b		; E6 48
	dec $8C00.w		; CE 00 8C
	pea $FC04.w		; F4 04 FC
	brk $9E.b		; 00 9E
	brk $2C.b		; 00 2C
	jsr $222A.w		; 20 2A 22
	jmp $043444.l		; 5C 44 34 04
	sed		; F8
	dey		; 88
	inc $FF07.w,X		; FE 07 FF
	sta $C2FFFE.l,X		; 9F FE FF C2
.ACCU 16
.INDEX 16
	rep #$3A		; C2 3A
	dec A		; 3A
	sei		; 78
	plx		; FA
	sec		; 38
	sbc $0202.w,Y		; F9 02 02
	cop $67.b		; 02 67
	asl $FE9F.w		; 0E 9F FE
	sbc $18FFC2.l,X		; FF C2 FF 18
	sbc $10FF30.l,X		; FF 30 FF 10
	sbc $E0FF00.l,X		; FF 00 FF E0
	tsb $7C.b		; 04 7C
	bit $575D.w,X		; 3C 5D 57
	adc $5F546F.l,X		; 7F 6F 54 5F
	bmi  48.b		; 30 30
	bra   0.b		; 80 00
	cpy #$1880.w		; C0 80 18
	rti		; 40

	bit $7C83.w,X		; 3C 83 7C
	plb		; AB
	adc $2F7017.l,X		; 7F 17 70 2F
	bmi  15.b		; 30 0F
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	ora [$0F.b],Y		; 17 0F
	tas		; 1B
	php		; 08
	ora $1C2F0F.l,X		; 1F 0F 2F 1C
	and $3E09.w,Y		; 39 09 3E
	ora [$5C.b]		; 07 5C
	jsl $0F235C.l		; 22 5C 23 0F
	brk $0F.b		; 00 0F
	ora [$0F.b]		; 07 0F
	brk $1F.b		; 00 1F
	ora $0F.b,S		; 03 0F
	asl $06.b,X		; 16 06
	ora $1D22.w,Y		; 19 22 1D
	and $1C.b,S		; 23 1C
	clv		; B8
	cmp $C9.b,S		; C3 C9
	cmp ($49.b,S),Y		; D3 49
	eor $E1.b,S		; 43 E1
	sbc ($FC.b),Y		; F1 FC
	inc $FF7F.w,X		; FE 7F FF
	php		; 08
	ora [$90.b]		; 07 90
	rts		; 60

	brk $07.b		; 00 07
	bne  39.b		; D0 27
	cpy #$80BF.w		; C0 BF 80
	adc $1CFF70.l,X		; 7F 70 FF 1C
	sbc $60FF00.l,X		; FF 00 FF 60
	ora $916E91.l,X		; 1F 91 6E 91
	ror $2E51.w		; 6E 51 2E
	eor #$6836.w		; 49 36 68
	ora [$34.b],Y		; 17 34
	ora $14.b,S		; 03 14
	ora $04.b,S		; 03 04
	ora $6E.b,S		; 03 6E
	brk $6E.b		; 00 6E
	brk $2E.b		; 00 2E
	brk $36.b		; 00 36
	brk $17.b		; 00 17
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $E2.b		; 00 E2
	.db $42, $E2		; 42 E2
	brk $FE.b		; 00 FE
	brk $F3.b		; 00 F3
	ora $0FF3.w		; 0D F3 0F
	sbc ($0E.b)		; F2 0E
	plx		; FA
	asl $F8.b		; 06 F8
	asl $5F.b		; 06 5F
	ora $1D1D.w,X		; 1D 1D 1D
	ora ($01.b,X)		; 01 01
	ora $04.b		; 05 04
	tsb $04.b		; 04 04
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ldy $70A7.w		; AC A7 70
	jmp ($F0E0.w,X)		; 7C E0 F0
	cpy #$C0E0.w		; C0 E0 C0
	cpx #$3070.w		; E0 70 30
	tay		; A8
	dey		; 88
	sed		; F8
	sed		; F8
	sed		; F8
	rti		; 40

	cpy #$C080.w		; C0 80 C0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	cpy #$70F8.w		; C0 F8 70
	sed		; F8
	brk $3C.b		; 00 3C
	sta ($7C.b,X)		; 81 7C
	cmp ($1D.b,X)		; C1 1D
	cmp ($BF.b,X)		; C1 BF
	adc ($8F.b,X)		; 61 8F
	adc ($9E.b,X)		; 61 9E
	bmi   7.b		; 30 07
	bmi  15.b		; 30 0F
	clc		; 18
	sbc $013F81.l,X		; FF 81 3F 01
	ror $1E40.w,X		; 7E 40 1E
	brk $3E.b		; 00 3E
	jsr $000F.w		; 20 0F 00
	ora $000710.l,X		; 1F 10 07 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C1.b		; 00 C1
	brk $C1.b		; 00 C1
	bra -63.b		; 80 C1
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	jsr $2463.w		; 20 63 24
	inc $00.b		; E6 00
	dec $48.b		; C6 48
	cpy $CC40.w		; CC 40 CC
	bpl -104.b		; 10 98
	brk $98.b		; 00 98
	bra -112.b		; 80 90
	asl $5802.w,X		; 1E 02 58
	rti		; 40

	jmp ($3044.w,X)		; 7C 44 30
	brk $38.b		; 00 38
	php		; 08
	cpx #$F080.w		; E0 80 F0
	bcc  96.b		; 90 60
	brk $BE.b		; 00 BE
	eor ($9F.b,X)		; 41 9F
	rts		; 60

	eor [$20.b],Y		; 57 20
	and [$00.b],Y		; 37 00
	ora ($00.b,S),Y		; 13 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $65.b		; 00 65
	and $71.b		; 25 71
	and ($7F.b,X)		; 21 7F
	and $7E.b		; 25 7E
	bit $6D.b		; 24 6D
	bit $6D.b		; 24 6D
	bit $6B.b		; 24 6B
	jsl $F522EE.l		; 22 EE 22 F5
	dec $DEFB.w,X		; DE FB DE
	sbc $DBFFDA.l,X		; FF DA FF DB
	sbc $DBFFDB.l,X		; FF DB FF DB
	sbc $DDFFDD.l,X		; FF DD FF DD
	cmp $F711.w,X		; DD 11 F7
	ora ($F6.b),Y		; 11 F6
	bpl -13.b		; 10 F3
	sbc ($EF.b,S),Y		; F3 EF
	jsr ($1C13.w,X)		; FC 13 1C
	xba		; EB
	tsb $0CEA.w		; 0C EA 0C
	sbc $EEFFEE.l,X		; FF EE FF EE
	sbc $0CFFEF.l,X		; FF EF FF 0C
	trb $E810.w		; 1C 10 E8
	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	asl $0E0E.w		; 0E 0E 0E
	asl $1E16.w		; 0E 16 1E
	inx		; E8
	beq -128.b		; F0 80
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	tsb $061F.w		; 0C 1F 06
	ora $C0FF04.l,X		; 1F 04 FF C0
	sbc $00F800.l,X		; FF 00 F8 00
	cpx #$0000.w		; E0 00 00
	asl A		; 0A
	tas		; 1B
	brk $13.b		; 00 13
	brk $12.b		; 00 12
	tsb $16.b		; 04 16
	brk $16.b		; 00 16
	brk $34.b		; 00 34
	bpl  52.b		; 10 34
	bpl  52.b		; 10 34
	tsb $00.b		; 04 00
	asl $0C02.w		; 0E 02 0C
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	tsb $18.b		; 04 18
	bpl   8.b		; 10 08
	brk $08.b		; 00 08
	brk $60.b		; 00 60
	ror $5C.b,X		; 76 5C
	lsr $5F56.w,X		; 5E 56 5F
	adc $273F6F.l		; 6F 6F 3F 27
	bit $20.b,X		; 34 20
	and ($21.b,S),Y		; 33 21
	brk $00.b		; 00 00
	jmp ($7014.w,X)		; 7C 14 70
	jsr $2878.w		; 20 78 28
	jmp ($2710.w,X)		; 7C 10 27
	brk $23.b		; 00 23
	ora $21.b,S		; 03 21
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	cpy #$20A0.w		; C0 A0 20
	cpx #$00E0.w		; E0 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	cpy #$00E0.w		; C0 E0 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora [$00.b]		; 07 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $3EC100.l,X		; 7F 00 C1 3E
	rti		; 40

	lda $9BBC43.l,X		; BF 43 BC 9B
	adc $FA.b		; 65 FA
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	brk $BF.b		; 00 BF
	rti		; 40

	bit $00C2.w,X		; 3C C2 00
	cpx $E805.w		; EC 05 E8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	tsb $1902.w		; 0C 02 19
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	brk $38.b		; 00 38
	php		; 08
	ora [$10.b],Y		; 17 10
	adc $136C.w		; 6D 6C 13
	and [$C6.b],Y		; 37 C6
	cmp $27.b		; C5 27
	stz $8E.b,X		; 74 8E
	ora $7DCE.w		; 0D CE 7D
	ora $6F1F07.l		; 0F 07 1F 6F
	and $FC13F3.l		; 2F F3 13 FC
	eor ($FC.b,X)		; 41 FC
	tsb $FD.b		; 04 FD
	sty $7D.b		; 84 7D
	sty $1D.b		; 84 1D
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	sbc $701F.w,Y		; F9 1F 70
	dey		; 88
	adc ($8D.b,S),Y		; 73 8D
	adc ($8C.b)		; 72 8C
	cmp ($2C.b,S),Y		; D3 2C
	cmp [$28.b],Y		; D7 28
	sta [$68.b],Y		; 97 68
	sta [$69.b],Y		; 97 69
	clc		; 18
	adc [$88.b]		; 67 88
	adc [$8D.b],Y		; 77 8D
	bvs -115.b		; 70 8D
	adc ($2C.b),Y		; 71 2C
	bne  40.b		; D0 28
	bne 104.b		; D0 68
	bcc 105.b		; 90 69
	bcc -45.b		; 90 D3
	tsb $0C53.w		; 0C 53 0C
	ora ($0C.b,S),Y		; 13 0C
	phd		; 0B
	tsb $09.b		; 04 09
	asl $05.b		; 06 05
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	sbc $0C000C.l,X		; FF 0C 00 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D8.b		; 00 D8
	sec		; 38
	wai		; CB
	sec		; 38
	wai		; CB
	sec		; 38
	xba		; EB
	clc		; 18
	sbc ($18.b,X)		; E1 18
	adc $0C.b,X		; 75 0C
	ora ($0E.b,S),Y		; 13 0E
	cop $FE.b		; 02 FE
	ora [$00.b]		; 07 00
	ora [$10.b],Y		; 17 10
	ora [$10.b],Y		; 17 10
	ora [$00.b]		; 07 00
	ora $000308.l		; 0F 08 03 00
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	jmp $201C60.l		; 5C 60 1C 20
	dey		; 88
	bmi -120.b		; 30 88
	bmi -24.b		; 30 E8
	and ($C0.b),Y		; 31 C0
	ora ($C0.b),Y		; 11 C0
	ora $1BF3.w,Y		; 19 F3 1B
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	jsr $20E0.w		; 20 E0 20
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	bpl -29.b		; 10 E3
	brk $10.b		; 00 10
	cld		; D8
	rti		; 40

	cld		; D8
	jsr $00B0.w		; 20 B0 00
	bcs   0.b		; B0 00
	ldy #$A080.w		; A0 80 A0
	bra -96.b		; 80 A0
	brk $B0.b		; 00 B0
	rts		; 60

	rti		; 40

	bmi  16.b		; 30 10
	rti		; 40

	brk $60.b		; 00 60
	jsr $80C0.w		; 20 C0 80
	rti		; 40

	brk $40.b		; 00 40
	brk $E0.b		; 00 E0
	ldy #$FFFD.w		; A0 FD FF
	jsl $80C01D.l		; 22 1D C0 80
	cpx $64.b		; E4 64
	lda $AD24.w		; AD 24 AD
	ldy $4D.b		; A4 4D
	mvp $44,$5D		; 44 5D 44
	bvs  -1.b		; 70 FF
	brk $FF.b		; 00 FF
	bra  63.b		; 80 3F
	adc $5B7F1B.l,X		; 7F 1B 7F 5B
	sbc $BBFF5B.l,X		; FF 5B FF BB
	sbc $E8E1BB.l,X		; FF BB E1 E8
	cpx #$0BE4.w		; E0 E4 0B
	phd		; 0B
	stx $94.b,Y		; 96 94
	cmp $84.b		; C5 84
	inc $92.b,X		; F6 92
	lda [$91.b],Y		; B7 91
	plb		; AB
	bit #$FCE0.w		; 89 E0 FC
	eor ($FF.b,X)		; 41 FF
	ora $FC.b,S		; 03 FC
	cmp [$7B.b],Y		; D7 7B
	sbc $6DFF7B.l		; EF 7B FF 6D
	sbc $76FF6E.l,X		; FF 6E FF 76
	ldy $9C.b		; A4 9C
	bvc 112.b		; 50 70
	cpy #$C1C0.w		; C0 C0 C1
	cmp ($82.b,X)		; C1 82
	sta $85.b,S		; 83 85
	sta [$98.b]		; 87 98
	stz $BCB0.w,X		; 9E B0 BC
	wai		; CB
	pha		; 48
	sbc $00FFA0.l		; EF A0 FF 00
	ldx $FD00.w,Y		; BE 00 FD
	ora ($F8.b,X)		; 01 F8
	brk $E3.b		; 00 E3
	cop $47.b		; 02 47
	tsb $20.b		; 04 20
	sec		; 38
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	bcc -104.b		; 90 98
	jsr $6038.w		; 20 38 60
	bvs  64.b		; 70 40
	bvs   0.b		; 70 00
	rts		; 60

	bne  16.b		; D0 10
	cpx #$E000.w		; E0 00 E0
	brk $60.b		; 00 60
	brk $D0.b		; 00 D0
	bpl -128.b		; 10 80
	brk $A0.b		; 00 A0
	jsr $40C0.w		; 20 C0 40
	pla		; 68
	ror $455D.w		; 6E 5D 45
	lda $B8FC2C.l		; AF 2C FC B8
	tad		; 5B
	stp		; DB
	lda $817E74.l,X		; BF 74 7E 81
	ldx $D041.w,Y		; BE 41 D0
	bra  -1.b		; 80 FF
	tsx		; BA
	sbc [$C3.b],Y		; F7 C3
	sbc $24FF47.l		; EF 47 FF 24
	stz $83.b,X		; 74 83
	php		; 08
	xba		; EB
	eor #$0088.w		; 49 88 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	cpy #$80C0.w		; C0 C0 80
	cpy #$0080.w		; C0 80 00
	cpy #$8060.w		; C0 60 80
	jsr $0000.w		; 20 00 00
	bra   0.b		; 80 00
	cpy #$8080.w		; C0 80 80
	rts		; 60

	bra -32.b		; 80 E0
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	rti		; 40

	brk $05.b		; 00 05
	cop $0C.b		; 02 0C
	ora $08.b,S		; 03 08
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora [$09.b]		; 07 09
	asl $11.b		; 06 11
	asl $0F17.w		; 0E 17 0F
	cop $01.b		; 02 01
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	asl $0F00.w		; 0E 00 0F
	brk $74.b		; 00 74
	dey		; 88
	jmp ($D582.w,X)		; 7C 82 D5
	dec A		; 3A
	sta $DB00.w,X		; 9D 00 DB
	jmp $60AF.w		; 4C AF 60
	pei ($33.b)		; D4 33
	cmp ($B9.b)		; D2 B9
	phb		; 8B
	bvc -125.b		; 50 83
	brk $3B.b		; 00 3B
	and ($73.b)		; 32 73
	tsb $37.b		; 04 37
	php		; 08
	ora $030F00.l,X		; 1F 00 0F 03
	ldx $1328.w		; AE 28 13
	tsb $1822.w		; 0C 22 18
	and $19.b		; 25 19
	lsr $6F3F.w,X		; 5E 3F 6F
	and $7D.b,S		; 23 7D
	and $73BF.w,X		; 3D BF 73
	sbc [$27.b]		; E7 27
	phd		; 0B
	brk $17.b		; 00 17
	brk $16.b		; 00 16
	brk $3C.b		; 00 3C
	brk $3F.b		; 00 3F
	trb $023F.w		; 1C 3F 02
	ror $3D0D.w,X		; 7E 0D 3D
	tad		; 5B
	asl $975D.w		; 0E 5D 97
	dec $816E.w		; CE 6E 81
	sbc $0C.b,S		; E3 0C
	adc [$4E.b]		; 67 4E
	ora [$8F.b]		; 07 8F
	cpy #$F3E0.w		; C0 E0 F3
	sbc $3C85.w,X		; FD 85 3C
	cop $3E.b		; 02 3E
	ora ($1C.b,X)		; 01 1C
	brk $1D.b		; 00 1D
	rti		; 40

	stz $FF03.w,X		; 9E 03 FF
	brk $FF.b		; 00 FF
	cpy #$02FF.w		; C0 FF 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $97.b		; 00 97
	adc #$7886.w		; 69 86 78
	asl $F8.b		; 06 F8
	lsr $B8.b		; 46 B8
	eor [$B8.b]		; 47 B8
	eor [$B8.b]		; 47 B8
	and [$D8.b]		; 27 D8
	lda $5C.b,S		; A3 5C
	adc #$7990.w		; 69 90 79
	sta ($F9.b,X)		; 81 F9
	ora ($B9.b,X)		; 01 B9
	ora ($B8.b,X)		; 01 B8
	brk $B8.b		; 00 B8
	brk $D8.b		; 00 D8
	brk $5C.b		; 00 5C
	brk $E3.b		; 00 E3
	sbc $05007F.l,X		; FF 7F 00 05
	jsr ($0F00.w,X)		; FC 00 0F
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	trb $FF1C.w		; 1C 1C FF
	brk $0B.b		; 00 0B
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bpl  30.b		; 10 1E
	sbc $FE07.w,X		; FD 07 FE
	ora $5E.b,S		; 03 5E
	cpy #$F80B.w		; C0 0B F8
	ora ($0F.b,X)		; 01 0F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	xba		; EB
	asl A		; 0A
	plx		; FA
	cop $FD.b		; 02 FD
	ora ($BF.b,X)		; 01 BF
	bra   7.b		; 80 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E2.b		; 00 E2
	asl A		; 0A
	sep #$0A		; E2 0A
	adc $0B.b,S		; 63 0B
	sbc ($89.b,X)		; E1 89
	sta ($19.b),Y		; 91 19
	eor ($71.b,X)		; 41 71
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	sbc ($01.b,S),Y		; F3 01
	sbc ($01.b,S),Y		; F3 01
	sbc ($00.b,S),Y		; F3 00
	adc ($00.b),Y		; 71 00
	sbc ($00.b,X)		; E1 00
	lda ($20.b,X)		; A1 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$B0F0.w		; E0 F0 B0
	sed		; F8
	sei		; 78
	jmp ($3EFE.w,X)		; 7C FE 3E
	lda $01.b		; A5 01
	sta $00000F.l,X		; 9F 0F 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E040.w		; C0 40 E0
	bra  62.b		; 80 3E
	brk $1F.b		; 00 1F
	asl $000F.w,X		; 1E 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $5D04.w,X		; 5D 04 5D
	tsb $9D.b		; 04 9D
	tsb $BD.b		; 04 BD
	tsb $BD.b		; 04 BD
	tsb $FD.b		; 04 FD
	tsb $8F.b		; 04 8F
	adc ($9F.b,S),Y		; 73 9F
	adc $BFBBBF.l,X		; 7F BF BB BF
	tyx		; BB
	adc $7B7F7B.l,X		; 7F 7B 7F 7B
	adc $03077B.l,X		; 7F 7B 07 03
	and ($30.b,S),Y		; 33 30
	jsr $7B20.w		; 20 20 7B
	eor #$45F5.w		; 49 F5 45
	inc $DA47.w,X		; FE 47 DA
	eor $DC.b,S		; 43 DC
	eor [$FE.b]		; 47 FE
	sec		; 38
	inc $9CE0.w,X		; FE E0 9C
	cpx #$B6FF.w		; E0 FF B6
	sbc $B9FFBA.l,X		; FF BA FF B9
	sbc $B8FCBD.l,X		; FF BD FC B8
	sed		; F8
	cpy #$00E0.w		; C0 E0 00
	rti		; 40

	rti		; 40

	cpy $FC.b		; C4 FC
	dey		; 88
	sed		; F8
	ora #$10F9.w		; 09 F9 10
	lda ($12.b),Y		; B1 12
	adc ($04.b,S),Y		; 73 04
	ror $20.b		; 66 20
	ror $28.b		; 66 28
	jmp ($282B.w)		; 6C 2B 28
	eor [$40.b]		; 47 40
	stx $90.b,Y		; 96 90
	ora $202C01.l		; 0F 01 2C 20
	sec		; 38
	jsr $041C.w		; 20 1C 04
	bpl   0.b		; 10 00
	bra -64.b		; 80 C0
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
	bit $C3.b,X		; 34 C3
	stp		; DB
	bit $7D.b		; 24 7D
	txa		; 8A
	xce		; FB
	trb $7CFD.w		; 1C FD 7C
	ora #$690D.w		; 09 0D 69
	adc #$E9E9.w		; 69 E9 E9
	wai		; CB
	php		; 08
	bit $00.b		; 24 00
	.db $82, $69, $08		; 82 69 08
	sta $7E38.w,X		; 9D 38 7E
	ora #$29FE.w		; 09 FE 29
	jsr ($FCE1.w,X)		; FC E1 FC
	cpy #$6020.w		; C0 20 60
	bmi -64.b		; 30 C0
	bpl -128.b		; 10 80
	bpl -16.b		; 10 F0
	sbc ($77.b),Y		; F1 77
	eor $F1BFFC.l,X		; 5F FC BF F1
	ora $C00040.l,X		; 1F 40 00 C0
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	ora ($F0.b,X)		; 01 F0
	ora $FCAFF2.l		; 0F F2 AF FC
	jmp $0F1202.l		; 5C 02 12 0F
	ora [$39.b]		; 07 39
	ora #$070F.w		; 09 0F 07
	asl $1C07.w		; 0E 07 1C
	asl $1717.w,X		; 1E 17 17
	asl $0F18.w,X		; 1E 18 0F
	ora $0F0007.l		; 0F 07 00 0F
	asl $06.b		; 06 06
	brk $04.b		; 00 04
	brk $18.b		; 00 18
	brk $1F.b		; 00 1F
	php		; 08
	ora $000F07.l,X		; 1F 07 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$1000.w		; E0 00 10
	cpx #$A058.w		; E0 58 A0
	clv		; B8
	rti		; 40

	tay		; A8
	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $A0.b		; 00 A0
	bvc  64.b		; 50 40
	bmi  80.b		; 30 50
	brk $68.b		; 00 68
	bcc 112.b		; 90 70
	bra -96.b		; 80 A0
	rti		; 40

	bra  64.b		; 80 40
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bcc -128.b		; 90 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $743C.w		; 1C 3C 74
	jmp $DC7C.w		; 4C 7C DC
	bit $CC.b,X		; 34 CC
	brk $E0.b		; 00 E0
	cpy #$00F0.w		; C0 F0 00
	brk $00.b		; 00 00
	bit $FE0C.w,X		; 3C 0C FE
	rti		; 40

	inc $FE0C.w,X		; FE 0C FE
	brk $FE.b		; 00 FE
	brk $1C.b		; 00 1C
	jsr $0020.w		; 20 20 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($05.b,X)		; 01 05
	cop $07.b		; 02 07
	brk $0B.b		; 00 0B
	tsb $0A.b		; 04 0A
	ora $0A.b		; 05 0A
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	ora $04.b,S		; 03 04
	ora $05.b,S		; 03 05
	cop $05.b		; 02 05
	cop $FC.b		; 02 FC
	brk $03.b		; 00 03
	jsr ($6798.w,X)		; FC 98 67
	adc $8A.b,X		; 75 8A
	cmp $897620.l,X		; DF 20 76 89
	eor $BC.b,S		; 43 BC
	sbc $0002.w,X		; FD 02 00
	brk $FC.b		; 00 FC
	brk $67.b		; 00 67
	tya		; 98
	cop $FD.b		; 02 FD
	jsr $89DD.w		; 20 DD 89
	mvn $00,$BC		; 54 BC 00
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $02.b		; 05 02
	ora $02.b		; 05 02
	phd		; 0B
	tsb $0E.b		; 04 0E
	ora ($16.b,X)		; 01 16
	ora #$0817.w		; 09 17 08
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	ora ($06.b,X)		; 01 06
	ora #$0806.w		; 09 06 08
	asl $53.b		; 06 53
	sta $44.b,S		; 83 44
	sty $01.b		; 84 01
	sta ($8B.b)		; 92 8B
	asl $1EC8.w,X		; 1E C8 1E
	cmp $DC1F.w		; CD 1F DC
	ora $A101EE.l		; 0F EE 01 A1
	and $C33FA0.l		; 2F A0 3F C3
	ror $7841.w,X		; 7E 41 78
	ora #$083C.w		; 09 3C 08
	bit $3D05.w,X		; 3C 05 3D
	brk $1E.b		; 00 1E
	ldx $58.b		; A6 58
	ldx $58.b		; A6 58
	sta [$78.b]		; 87 78
	sta [$78.b]		; 87 78
	sta $7C.b,S		; 83 7C
	sta $7C.b,S		; 83 7C
	sta $7C.b,S		; 83 7C
	sta $7C.b,S		; 83 7C
	eor $5921.w,Y		; 59 21 59
	and ($78.b,X)		; 21 78
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $F5.b		; 00 F5
	cmp $6B.b,X		; D5 6B
	eor #$A9EB.w		; 49 EB A9
	xba		; EB
	and #$49CF.w		; 29 CF 49
	cmp [$51.b],Y		; D7 51
	cmp [$51.b],Y		; D7 51
	cmp [$D1.b],Y		; D7 D1
	cmp $96DF0A.l,X		; DF 0A DF 96
	lda $163F16.l,X		; BF 16 3F 16
	adc $2E7F36.l,X		; 7F 36 7F 2E
	adc $2EFF2E.l,X		; 7F 2E FF 2E
	jsl $545528.l		; 22 28 55 54
	eor $44.b		; 45 44
	cmp ($52.b)		; D2 52
	dex		; CA
	lsr A		; 4A
	lda $F629.w,Y		; B9 29 F6
	bit $ED.b		; 24 ED
	bit $20.b		; 24 20
	jsr ($BAC6.w,X)		; FC C6 BA
	inc $FFBA.w		; EE BA FF
	lda $B5FF.w		; AD FF B5
	sbc $DBFFD6.l,X		; FF D6 FF DB
	sbc $0000DB.l,X		; FF DB 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	brk $C0.b		; 00 C0
	bra  96.b		; 80 60
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	cpx #$7080.w		; E0 80 70
	asl $70.b		; 06 70
	asl $79.b		; 06 79
	ora [$FD.b]		; 07 FD
	sta [$BC.b]		; 87 BC
	sta [$3C.b]		; 87 3C
	sta [$38.b]		; 87 38
	sta $78.b,S		; 83 78
.ACCU 16
.INDEX 16
	rep #$FB		; C2 FB
	cop $FD.b		; 02 FD
	tsb $FC.b		; 04 FC
	tsb $78.b		; 04 78
	brk $79.b		; 00 79
	ora ($F8.b,X)		; 01 F8
	bra 124.b		; 80 7C
	brk $3C.b		; 00 3C
	brk $10.b		; 00 10
	clc		; 18
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	php		; 08
	tsb $8480.w		; 0C 80 84
	bra -122.b		; 80 86
	tsb $86.b		; 04 86
	rti		; 40

.ACCU 16
	rep #$E0		; C2 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	sei		; 78
	brk $7C.b		; 00 7C
	tsb $F8.b		; 04 F8
	bra  60.b		; 80 3C
	brk $00.b		; 00 00
	bcs -32.b		; B0 E0
	beq -80.b		; F0 B0
	sed		; F8
	sei		; 78
	jmp ($3EFE.w,X)		; 7C FE 3E
	lda $01.b		; A5 01
	sta $00000F.l,X		; 9F 0F 00 00
	cpx #$80A0.w		; E0 A0 80
	brk $C0.b		; 00 C0
	rti		; 40

	cpx #$3E80.w		; E0 80 3E
	brk $1F.b		; 00 1F
	asl $000F.w,X		; 1E 0F 00
	brk $00.b		; 00 00
	brk $2C.b		; 00 2C
	pha		; 48
	jmp ($6C68.w)		; 6C 68 6C
	stz $34.b,X		; 74 34
	lsr $6E1E.w,X		; 5E 1E 6E
	cop $53.b		; 02 53
	ora ($1F.b),Y		; 11 1F
	ora $700818.l,X		; 1F 18 08 70
	jsr $0070.w		; 20 70 00
	bit $3E00.w		; 2C 00 3E
	jsr $1C1E.w		; 20 1E 1C
	ora $001F0E.l,X		; 1F 0E 1F 00
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	sta ($86.b,S),Y		; 93 86
	ora $53.b		; 05 53
	bpl  11.b		; 10 0B
	cmp ($7B.b,X)		; C1 7B
	sta $37.b,S		; 83 37
	ror $2F.b		; 66 2F
	ldx $5EBE.w,Y		; BE BE 5E
	dec $EF00.w,X		; DE 00 EF
	bpl -17.b		; 10 EF
	dey		; 88
	adc [$98.b],Y		; 77 98
	ora [$D0.b]		; 07 D0
	ora $761FC6.l		; 0F C6 1F 76
	ora $BDAFFC.l		; 0F FC AF BD
	ldy $5CF1.w,X		; BC F1 5C
	sed		; F8
	bvc -88.b		; 50 A8
	tay		; A8
	beq -16.b		; F0 F0
	rts		; 60

	beq  32.b		; F0 20
	bmi -56.b		; 30 C8
	iny		; C8
	beq  79.b		; F0 4F
	beq -82.b		; F0 AE
	beq -84.b		; F0 AC
	sed		; F8
	bvc 112.b		; 50 70
	bra   0.b		; 80 00
	sed		; F8
	brk $F8.b		; 00 F8
	rti		; 40

	jsr ($0112.w,X)		; FC 12 01
	ora ($00.b),Y		; 11 00
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
	ora $1106.w,Y		; 19 06 11
	asl $1C23.w		; 0E 23 1C
	and $1C.b,S		; 23 1C
	eor [$38.b]		; 47 38
	jmp $9B34.w		; 4C 34 9B
	rtl		; 6B

	bcs  84.b		; B0 54
	asl $00.b		; 06 00
	asl $1C00.w		; 0E 00 1C
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $34.b		; 00 34
	ora $69.b,S		; 03 69
	ora [$50.b]		; 07 50
	ora $7D38F6.l		; 0F F6 38 7D
	rti		; 40

	tsa		; 3B
	tsb $C05F.w		; 0C 5F C0
	jsr $44E6.w		; 20 E6 44
	bmi -94.b		; 30 A2
	txs		; 9A
	ora [$47.b],Y		; 17 47
	ora $B210.w,Y		; 19 10 B2
	tsb $F6.b		; 04 F6
	php		; 08
	rol $1E00.w,X		; 3E 00 1E
	ora [$0C.b]		; 07 0C
	sta $02.b,S		; 83 02
	cmp [$05.b]		; C7 05
	sbc $2D122D.l		; EF 2D 12 2D
	ora ($3F.b)		; 12 3F
	brk $5F.b		; 00 5F
	jsr $245B.w		; 20 5B 24
	tda		; 7B
	tsb $6F.b		; 04 6F
	bpl 111.b		; 10 6F
	bpl  18.b		; 10 12
	tsb $0C12.w		; 0C 12 0C
	brk $1C.b		; 00 1C
	jsr $241C.w		; 20 1C 24
	clc		; 18
	tsb $38.b		; 04 38
	bpl  40.b		; 10 28
	bpl  40.b		; 10 28
	sbc $EF0F.w		; ED 0F EF
	ora $070F2F.l		; 0F 2F 0F 07
	ora $20676B.l		; 0F 6B 67 20
	jsr $C7DB.w		; 20 DB C7
	cpx #$0120.w		; E0 20 01
	asl $1E05.w,X		; 1E 05 1E
	cmp [$DE.b]		; C7 DE
	inc $FF.b		; E6 FF
	cpx #$E09F.w		; E0 9F E0
	cmp $203FC1.l,X		; DF C1 3F 20
	ora $936C93.l,X		; 1F 93 6C 93
	jmp ($6C93.w)		; 6C 93 6C
	eor ($2C.b,S),Y		; 53 2C
	tad		; 5B
	bit $59.b		; 24 59
	rol $3D.b		; 26 3D
	cop $35.b		; 02 35
	cop $6C.b		; 02 6C
	brk $6C.b		; 00 6C
	brk $6C.b		; 00 6C
	brk $2C.b		; 00 2C
	brk $24.b		; 00 24
	brk $26.b		; 00 26
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $D7.b		; 00 D7
	cmp ($F7.b),Y		; D1 F7
	sbc ($F1.b),Y		; F1 F1
	ora ($FF.b),Y		; 11 FF
	ora $F807F9.l,X		; 1F F9 07 F8
	ora [$F9.b]		; 07 F9
	ora [$FD.b]		; 07 FD
	ora $FF.b,S		; 03 FF
	rol $0EFF.w		; 2E FF 0E
	ora $001F0E.l,X		; 1F 0E 1F 00
	ora $02.b,S		; 03 02
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	phy		; 5A
	ora ($75.b)		; 12 75
	ora ($73.b),Y		; 11 73
	ora ($3F.b,S),Y		; 13 3F
	ora $F9FFE1.l,X		; 1F E1 FF F9
	sbc $700E08.l,X		; FF 08 0E 70
	asl $FF.b		; 06 FF
	sbc $EEFF.w		; ED FF EE
	sbc $E0FEEC.l,X		; FF EC FE E0
	plx		; FA
	inc A		; 1A
	cop $02.b		; 02 02
	sbc ($02.b,S),Y		; F3 02
	xce		; FB
	cop $A0.b		; 02 A0
	jsr $6060.w		; 20 60 60
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	rti		; 40

	rts		; 60

	brk $30.b		; 00 30
	jsr $0030.w		; 20 30 00
	clc		; 18
	cpx #$E0C0.w		; E0 C0 E0
	bra -64.b		; 80 C0
	rti		; 40

	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	cpx #$C020.w		; E0 20 C0
	brk $F0.b		; 00 F0
	bpl  24.b		; 10 18
.INDEX 16
	rep #$18		; C2 18
	.db $42, $04		; 42 04
	lsr $24.b		; 46 24
	ror $24.b		; 66 24
	inc $40.b		; E6 40
	dec $B0.b		; C6 B0
	sty $68.b		; 84 68
	tsb $407C.w		; 0C 7C 40
	bit $3800.w,X		; 3C 00 38
	brk $18.b		; 00 18
	brk $58.b		; 00 58
	rti		; 40

	ldy $7884.w,X		; BC 84 78
	brk $F0.b		; 00 F0
	brk $20.b		; 00 20
	sbc $02.b,S		; E3 02
	adc $10.b,S		; 63 10
	and ($08.b),Y		; 31 08
	and $3B1A.w,Y		; 39 1A 3B
	bpl  51.b		; 10 33
	tsb $66.b		; 04 66
	bit $E6.b		; 24 E6
	lsr $3C42.w,X		; 5E 42 3C
	jsr $000E.w		; 20 0E 00
	asl $10.b,X		; 16 10
	tsb $00.b		; 04 00
	asl $3802.w		; 0E 02 38
	jsr $4058.w		; 20 58 40
	jsr ($BC03.w,X)		; FC 03 BC
	ora $9E.b,S		; 03 9E
	ora ($46.b,X)		; 01 46
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	asl $03.b		; 06 03
	asl $01.b		; 06 01
	tsb $07.b		; 04 07
	tsb $0803.w		; 0C 03 08
	asl $08.b		; 06 08
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	cpx #$D008.w		; E0 08 D0
	ora $11C0.w,Y		; 19 C0 11
	ldy #$C031.w		; A0 31 C0
	adc ($00.b,X)		; 61 00
	adc ($80.b,X)		; 61 80
	cmp ($00.b,X)		; C1 00
	sta ($F0.b,X)		; 81 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	dec $48.b		; C6 48
	cpy $8C00.w		; CC 00 8C
	bra -120.b		; 80 88
	bcc -104.b		; 90 98
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	bit $B004.w,X		; 3C 04 B0
	bra  -8.b		; 80 F8
	dey		; 88
	bvs   0.b		; 70 00
	rts		; 60

	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	rts		; 60

	bra  80.b		; 80 50
	ldy #$7088.w		; A0 88 70
	pla		; 68
	bcc 112.b		; 90 70
	bra -128.b		; 80 80
	brk $60.b		; 00 60
	rts		; 60

	brk $00.b		; 00 00
	bra   0.b		; 80 00
	jsr $30C0.w		; 20 C0 30
	cpy #$4090.w		; C0 90 40
	bra  64.b		; 80 40
	brk $70.b		; 00 70
	rti		; 40

	sed		; F8
	sec		; 38
	sec		; 38
	clc		; 18
	pla		; 68
	beq -16.b		; F0 F0
	cpx #$C0E0.w		; E0 E0 C0
	cpy #$4000.w		; C0 00 40
	rts		; 60

	rts		; 60

	bmi 112.b		; 30 70
	sec		; 38
	jsr ($DC20.w,X)		; FC 20 DC
	cpy #$40F8.w		; C0 F8 40
	beq   0.b		; F0 00
	cpx #$E000.w		; E0 00 E0
	brk $F0.b		; 00 F0
	jsr $70F8.w		; 20 F8 70
	sec		; 38
	cli		; 58
	sec		; 38
	sec		; 38
	trb $5D09.w		; 1C 09 5D
	adc ($E1.b,X)		; 61 E1
	sta $71.b,X		; 95 71
	stx $800E.w		; 8E 0E 80
	brk $10.b		; 00 10
	jsr ($FC08.w,X)		; FC 08 FC
	brk $FE.b		; 00 FE
	eor ($FE.b,X)		; 41 FE
	and $1E.b,S		; 23 1E
	ora $000E0E.l,X		; 1F 0E 0E 00
	brk $00.b		; 00 00
	inc A		; 1A
	and ($0C.b,S),Y		; 33 0C
	rol $10.b		; 26 10
	bit $38.b		; 24 38
	jmp ($4800.w)		; 6C 00 48
	bpl  88.b		; 10 58
	brk $D0.b		; 00 D0
	rts		; 60

	beq  12.b		; F0 0C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $60.b		; 00 60
	rti		; 40

	brk $00.b		; 00 00
	brk $12.b		; 00 12
	tsb $36.b		; 04 36
	bpl  54.b		; 10 36
	bpl  52.b		; 10 34
	clc		; 18
	bit $3C10.w,X		; 3C 10 3C
	bpl  60.b		; 10 3C
	php		; 08
	bit $000C.w		; 2C 0C 00
	clc		; 18
	bpl  12.b		; 10 0C
	tsb $08.b		; 04 08
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	bpl   0.b		; 10 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	tsb $02.b		; 04 02
	tsb $01.b		; 04 01
	php		; 08
	tsb $0A.b		; 04 0A
	tsb $16.b		; 04 16
	php		; 08
	trb $0B.b		; 14 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	brk $03.b		; 00 03
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	php		; 08
	ora [$0B.b]		; 07 0B
	tsb $1E.b		; 04 1E
	sbc $0303.w,X		; FD 03 03
	dex		; CA
.ACCU 16
	rep #$25		; C2 25
	and ($C7.b),Y		; 31 C7
	cmp $22.b		; C5 22
	stx $0711.w		; 8E 11 07
	and $FD62.w,Y		; 39 62 FD
	ora ($0E.b,X)		; 01 0E
	jsr ($FD8F.w,X)		; FC 8F FD
	and [$FE.b]		; 27 FE
	eor [$FA.b]		; 47 FA
	and [$C1.b],Y		; 37 C1
	tsa		; 3B
	cpy #$811C.w		; C0 1C 81
	rol $2E11.w		; 2E 11 2E
	ora ($2E.b),Y		; 11 2E
	ora ($2E.b),Y		; 11 2E
	ora ($4E.b),Y		; 11 4E
	and ($4E.b),Y		; 31 4E
	and ($5A.b),Y		; 31 5A
	and $5A.b		; 25 5A
	and $11.b		; 25 11
	asl $0E11.w		; 0E 11 0E
	ora ($0E.b),Y		; 11 0E
	ora ($0E.b),Y		; 11 0E
	and ($0E.b),Y		; 31 0E
	and ($0E.b),Y		; 31 0E
	and $1A.b		; 25 1A
	and $1A.b		; 25 1A
	jmp ($3D80.w,X)		; 7C 80 3D
	jmp.w [$A26E]		; DC 6E A2
	lsr $5C86.w		; 4E 86 5C
	sty $8475.w		; 8C 75 84
	adc $94.b,X		; 75 94
	sbc #$8008.w		; E9 08 80
	ora $DC.b,S		; 03 DC
	ora $B2.b,S		; 03 B2
	ora ($B7.b),Y		; 11 B7
	and ($AF.b),Y		; 31 AF
	and $8F.b,S		; 23 8F
	phd		; 0B
	sta $171F0B.l,X		; 9F 0B 1F 17
	ora $E7661F.l,X		; 1F 1F 66 E7
	clc		; 18
	inc A		; 1A
	lda $A5.b		; A5 A5
	sta ($92.b)		; 92 92
	clv		; B8
	bcc -66.b		; 90 BE
	sta ($B6.b)		; 92 B6
	sta ($0E.b)		; 92 0E
	sbc $18FF06.l,X		; FF 06 FF 18
	sbc $FA5FE4.l,X		; FF E4 5F FA
	adc $FF6FFD.l		; 6F FD 6F FF
	adc $6DFF.w		; 6D FF 6D
	trb $3401.w		; 1C 01 34
	ora ($4A.b,S),Y		; 13 4A
	stx $7878.w		; 8E 78 78
	cld		; D8
	tya		; 98
	bcs -112.b		; B0 90
	bne  80.b		; D0 50
	sbc ($33.b,S),Y		; F3 33
	brk $80.b		; 00 80
	ora $3D89.w,Y		; 19 89 3D
	ldy $7F.b,X		; B4 7F
	bra  -9.b		; 80 F7
	rts		; 60

	sbc $A0FF60.l,X		; FF 60 FF A0
	jsr ($00C0.w,X)		; FC C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $09.b		; 00 09
	asl $09.b		; 06 09
	asl $1E.b		; 06 1E
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora ($04.b,X)		; 01 04
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $07.b		; 00 07
	sed		; F8
	brk $FF.b		; 00 FF
	ora $6EF2.w		; 0D F2 6E
	sta $00.b,X		; 95 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $FF.b		; 00 FF
	brk $F2.b		; 00 F2
	ora #$B001.w		; 09 01 B0
	sbc ($1B.b,S),Y		; F3 1B
	sep #$0A		; E2 0A
	sep #$0A		; E2 0A
	adc $0B.b,S		; 63 0B
	sbc ($89.b,X)		; E1 89
	sta ($19.b),Y		; 91 19
	eor ($71.b,X)		; 41 71
	brk $E0.b		; 00 E0
	sbc $00.b,S		; E3 00
	sbc ($01.b,S),Y		; F3 01
	sbc ($01.b,S),Y		; F3 01
	sbc ($00.b,S),Y		; F3 00
	adc ($00.b),Y		; 71 00
	sbc ($00.b,X)		; E1 00
	lda ($20.b,X)		; A1 20
	brk $00.b		; 00 00
	brk $B0.b		; 00 B0
	cpx #$B0F0.w		; E0 F0 B0
	sed		; F8
	sei		; 78
	jmp ($3EFE.w,X)		; 7C FE 3E
	lda $01.b		; A5 01
	sta $00000F.l,X		; 9F 0F 00 00
	cpx #$80A0.w		; E0 A0 80
	brk $C0.b		; 00 C0
	rti		; 40

	cpx #$3E80.w		; E0 80 3E
	brk $1F.b		; 00 1F
	asl $000F.w,X		; 1E 0F 00
	brk $00.b		; 00 00
	bcs -80.b		; B0 B0
	bcs -80.b		; B0 B0
	stz $749C.w		; 9C 9C 74
	mvp $24,$24		; 44 24 24
	clc		; 18
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  -8.b		; 10 F8
	ldy #$BCD8.w		; A0 D8 BC
	cpx #$B87C.w		; E0 7C B8
	jmp ($1898.w,X)		; 7C 98 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $93.b		; 00 93
	wai		; CB
	eor $7B.b,S		; 43 7B
	sbc $23.b,S		; E3 23
	adc $E061.w,Y		; 79 61 E0
	cmp $D4.b,S		; C3 D4
	dec $EC.b,X		; D6 EC
	ldx $1CD8.w		; AE D8 1C
	adc ($47.b,S),Y		; 73 47
	sta $07.b,S		; 83 07
	sbc $BCDF.w,Y		; F9 DF BC
	ora $F03F78.l,X		; 1F 78 3F F0
	and $081FA0.l		; 2F A0 1F 08
	ldx $B8BA.w,Y		; BE BA B8
	plx		; FA
	sed		; F8
	inc $F0.b,X		; F6 F0
	xba		; EB
	stz $DF.b		; 64 DF
	bvc -14.b		; 50 F2
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	tya		; 98
	jmp ($7CB0.w,X)		; 7C B0 7C
	cpx #$C478.w		; E0 78 C4
	lda ($D0.b)		; B2 D0
	tsx		; BA
	beq  60.b		; F0 3C
	beq  -4.b		; F0 FC
	beq  -4.b		; F0 FC
	brk $00.b		; 00 00
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
	ora $093907.l		; 0F 07 39 09
	ora $070E07.l		; 0F 07 0E 07
	trb $171E.w		; 1C 1E 17
	ora [$1E.b],Y		; 17 1E
	clc		; 18
	ora $00070F.l		; 0F 0F 07 00
	ora $000606.l		; 0F 06 06 00
	tsb $00.b		; 04 00
	clc		; 18
	brk $1F.b		; 00 1F
	php		; 08
	ora $000F07.l,X		; 1F 07 0F 00
	brk $FF.b		; 00 FF
	sbc $FF.b,S		; E3 FF
	adc $FC0500.l,X		; 7F 00 05 FC
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	trb $FF1C.w		; 1C 1C FF
	brk $0B.b		; 00 0B
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bit $2C13.w		; 2C 13 2C
	ora ($58.b,S),Y		; 13 58
	and [$58.b]		; 27 58
	and [$9B.b]		; 27 9B
	stz $BA.b		; 64 BA
	mvp $4D,$B3		; 44 B3 4D
	lda ($4D.b,S),Y		; B3 4D
	ora ($0C.b,S),Y		; 13 0C
	ora ($0C.b,S),Y		; 13 0C
	and [$18.b]		; 27 18
	and [$18.b]		; 27 18
	stz $18.b		; 64 18
	eor $39.b		; 45 39
	eor $4D30.w		; 4D 30 4D
	bmi  31.b		; 30 1F
	adc ($2F.b,S),Y		; 73 2F
	ror $3C45.w,X		; 7E 45 3C
	stx $0C.b,Y		; 96 0C
	cmp $1D.b		; C5 1D
	eor $8F9F1F.l		; 4F 1F 9F 8F
	sbc $C00FCF.l		; EF CF 0F C0
	ora [$E1.b]		; 07 E1
	ora [$E3.b]		; 07 E3
	ora [$73.b]		; 07 73
	ora [$3A.b]		; 07 3A
	sta [$B8.b]		; 87 B8
	cmp [$7F.b]		; C7 7F
	cmp $1F.b,S		; C3 1F
	eor ($2D.b)		; 52 2D
	eor ($2D.b)		; 52 2D
	eor ($2D.b)		; 52 2D
	bvc  47.b		; 50 2F
	rti		; 40

	and $483748.l,X		; 3F 48 37 48
	and [$28.b],Y		; 37 28
	ora [$2D.b],Y		; 17 2D
	ora ($2D.b)		; 12 2D
	ora ($2D.b)		; 12 2D
	ora ($2F.b)		; 12 2F
	bpl  63.b		; 10 3F
	brk $37.b		; 00 37
	brk $37.b		; 00 37
	brk $17.b		; 00 17
	brk $EB.b		; 00 EB
	plp		; 28
	xba		; EB
	jsr $00CB.w		; 20 CB 00
	cmp ($00.b,S),Y		; D3 00
	cmp [$00.b],Y		; D7 00
	sbc [$00.b],Y		; F7 00
	sbc $0EF100.l,X		; FF 00 F1 0E
	and $173717.l,X		; 3F 17 37 17
	and [$37.b],Y		; 37 37
	and $2F2F2F.l		; 2F 2F 2F 2F
	ora $00000F.l		; 0F 0F 00 00
	asl $06.b		; 06 06
	lda $91.b,X		; B5 91
	lda $88BE89.l		; AF 89 BE 88
	lda $88BB88.l,X		; BF 88 BB 88
	tyx		; BB
	dey		; 88
	lda $7CFF87.l,X		; BF 87 FF 7C
	sbc $76FF6E.l,X		; FF 6E FF 76
	sbc $77FF77.l,X		; FF 77 FF 77
	sbc $77FF77.l,X		; FF 77 FF 77
	sbc $007C78.l,X		; FF 78 7C 00
	ror $37.b,X		; 76 37
	sei		; 78
	and $C1BFB1.l,X		; 3F B1 BF C1
	sbc $827642.l,X		; FF 42 76 82
	inc $0CC0.w		; EE C0 0C
	cpy $0C.b		; C4 0C
	inx		; E8
	cpy #$C5E5.w		; C0 E5 C5
	inx		; E8
	pha		; 48
	sbc ($32.b)		; F2 32
	sbc ($A0.b,X)		; E1 A0
	sta $04.b		; 85 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora [$08.b],Y		; 17 08
	ora $0A.b,X		; 15 0A
	and ($0E.b),Y		; 31 0E
	and $1C.b,S		; 23 1C
	jsl $1D231C.l		; 22 1C 23 1D
	rol $19.b		; 26 19
	eor [$38.b]		; 47 38
	php		; 08
	ora [$0A.b]		; 07 0A
	ora $0E.b		; 05 0E
	brk $1C.b		; 00 1C
	brk $1D.b		; 00 1D
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $EA.b		; 00 EA
	ora ($D1.b),Y		; 11 D1
	jsl $560AF1.l		; 22 F1 0A 56
	sbc #$0176.w		; E9 76 01
	jmp ($BE33.w)		; 6C 33 BE
	sta $50.b,S		; 83 50
	dec $A015.w		; CE 15 A0
	rol $0C42.w		; 2E 42 0C
	brk $EC.b		; 00 EC
	iny		; C8
	cpy $DE12.w		; CC 12 DE
	jsr $007C.w		; 20 7C 00
	bit $380D.w,X		; 3C 0D 38
	inc $8784.w,X		; FE 84 87
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	and ($33.b)		; 32 33
	mvp $AC,$67		; 44 67 AC
	inc $CE08.w		; EE 08 CE
	mvp $7A,$44		; 44 44 7A
	cop $FC.b		; 02 FC
	brk $FC.b		; 00 FC
	brk $CC.b		; 00 CC
	brk $BA.b		; 00 BA
	jsl $740010.l		; 22 10 00 74
	mvp $8C,$00		; 44 00 8C
	bcc -104.b		; 90 98
	brk $18.b		; 00 18
	jsr $0030.w		; 20 30 00
	bmi  64.b		; 30 40
	rts		; 60

	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	sed		; F8
	dey		; 88
	rts		; 60

	brk $F0.b		; 00 F0
	bpl -64.b		; 10 C0
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	sta ($6C.b,S),Y		; 93 6C
	cmp ($2E.b),Y		; D1 2E
	adc #$2906.w		; 69 06 29
	asl $09.b		; 06 09
	asl $05.b		; 06 05
	cop $04.b		; 02 04
	ora $02.b,S		; 03 02
	ora ($6C.b,X)		; 01 6C
	brk $2E.b		; 00 2E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $CF.b		; 00 CF
	and $E51CEC.l,X		; 3F EC 1C E5
	trb $1CE5.w		; 1C E5 1C
	sbc $0C.b,X		; F5 0C
	beq  12.b		; F0 0C
	plx		; FA
	asl $B9.b		; 06 B9
	ora [$10.b]		; 07 10
	bpl   3.b		; 10 03
	brk $0B.b		; 00 0B
	php		; 08
	phd		; 0B
	php		; 08
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	cop $02.b		; 02 02
	cmp $302EF0.l		; CF F0 2E 30
	stx $C610.w		; 8E 10 C6
	clc		; 18
	cpy $18.b		; C4 18
	pea $E418.w		; F4 18 E4
	php		; 08
	cpx #$200C.w		; E0 0C 20
	jsr $00C0.w		; 20 C0 00
	cpx #$F000.w		; E0 00 F0
	bpl -16.b		; 10 F0
	bpl -32.b		; 10 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	trb $36.b		; 14 36
	php		; 08
	jmp ($6C20.w)		; 6C 20 6C
	bpl  88.b		; 10 58
	brk $58.b		; 00 58
	brk $D0.b		; 00 D0
	rti		; 40

	bne  64.b		; D0 40
	bne   8.b		; D0 08
	brk $30.b		; 00 30
	jsr $0818.w		; 20 18 08
	jsr $3000.w		; 20 00 30
	bpl  96.b		; 10 60
	rti		; 40

	jsr $2000.w		; 20 00 20
	brk $02.b		; 00 02
	inc $1E10.w,X		; FE 10 1E
	sbc $FE07.w,X		; FD 07 FE
	ora $5E.b,S		; 03 5E
	cpy #$F80B.w		; C0 0B F8
	ora ($0F.b,X)		; 01 0F
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	xba		; EB
	asl A		; 0A
	plx		; FA
	cop $FD.b		; 02 FD
	ora ($BF.b,X)		; 01 BF
	bra   7.b		; 80 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra 108.b		; 80 6C
	sty $06F2.w		; 8C F2 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  30.b		; 80 1E
	sty $5F.b		; 84 5F
	cop $CF.b		; 02 CF
	ldx $AC4E.w		; AE 4E AC
	jmp $08C8.w		; 4C C8 08
	dey		; 88
	clc		; 18
	brk $18.b		; 00 18
	clc		; 18
	clc		; 18
	clc		; 18
	sec		; 38
	clc		; 18
	sec		; 38
	mvp $4C,$1F		; 44 1F 4C
	asl $1C08.w,X		; 1E 08 1C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	clc		; 18
	jmp ($FC18.w,X)		; 7C 18 FC
	bvs   0.b		; 70 00
	stx $0170.w		; 8E 70 01
	inc $6F90.w,X		; FE 90 6F
	lsr $B9.b		; 46 B9
	sbc $9A6702.l,X		; FF 02 67 9A
	ldx $0057.w		; AE 57 00
	brk $70.b		; 00 70
	brk $FE.b		; 00 FE
	brk $6F.b		; 00 6F
	bcc  41.b		; 90 29
	pei ($00.b)		; D4 00
	cld		; D8
	tya		; 98
	rti		; 40

	eor ($81.b),Y		; 51 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$2000.w		; C0 00 20
	cpy #$A050.w		; C0 50 A0
	iny		; C8
	bmi  40.b		; 30 28
	bne -24.b		; D0 E8
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	rti		; 40

	bmi -64.b		; 30 C0
	bcc  64.b		; 90 40
	bpl  64.b		; 10 40
	sta $708F70.l		; 8F 70 8F 70
	sta $304F70.l		; 8F 70 4F 30
	eor $205F20.l,X		; 5F 20 5F 20
	eor $205F20.l,X		; 5F 20 5F 20
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $BB.b		; 00 BB
	dey		; 88
	xce		; FB
	pha		; 48
	tsa		; 3B
	sed		; F8
	and $FF7CFF.l,X		; 3F FF 7C FF
	eor [$C7.b]		; 47 C7
	eor $5DC1.w,Y		; 59 C1 5D
	cmp ($FF.b,X)		; C1 FF
	adc [$7F.b],Y		; 77 7F
	and [$7F.b],Y		; 37 7F
	eor [$4F.b]		; 47 4F
	rti		; 40

	cop $02.b		; 02 02
	sec		; 38
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $AE.b		; 00 AE
	dey		; 88
	ldx $BB88.w,Y		; BE 88 BB
	dey		; 88
	lda $FFFB8F.l,X		; BF 8F FB FF
	asl $18FE.w		; 0E FE 18
	sed		; F8
	bvc -80.b		; 50 B0
	sbc $77FF77.l,X		; FF 77 FF 77
	sbc $70FF77.l,X		; FF 77 FF 70
	jsr ($B104.w,X)		; FC 04 B1
	bcs  39.b		; B0 27
	jsr $000F.w		; 20 0F 00
	bcs  24.b		; B0 18
	bne  24.b		; D0 18
	bra  88.b		; 80 58
	tya		; 98
	cli		; 58
	clc		; 18
	jmp.w [$DC1C]		; DC 1C DC
	sty $94D4.w		; 8C D4 94
	cpy $40.b		; C4 40
	jmp $003C00.l		; 5C 00 3C 00
	bit $3C00.w,X		; 3C 00 3C
	dey		; 88
	ldx $BE9C.w,Y		; BE 9C BE
	tsb $3E.b		; 04 3E
	brk $3E.b		; 00 3E
	ora $07071F.l,X		; 1F 1F 07 07
	ora ($09.b),Y		; 11 09
	asl $2B00.w,X		; 1E 00 2B
	ora $2B.b,X		; 15 2B
	trb $2D.b		; 14 2D
	ora ($54.b),Y		; 11 54
	plp		; 28
	tas		; 1B
	ora [$01.b]		; 07 01
	ora $000708.l		; 0F 08 07 00
	ora $0815.w		; 0D 15 08
	trb $08.b		; 14 08
	ora ($0A.b,S),Y		; 13 0A
	pld		; 2B
	ora ($B8.b,S),Y		; 13 B8
	sta $D9.b,S		; 83 D9
	cmp ($E1.b,S),Y		; D3 E1
	sbc ($79.b,S),Y		; F3 79
	tda		; 7B
	bit #$A49D.w		; 89 9D A4
	sec		; 38
	lda ($A1.b,X)		; A1 A1
	jmp $000C.w		; 4C 0C 00
	cmp [$90.b]		; C7 90
	sbc [$E0.b]		; E7 E0
	sbc $80FF30.l,X		; FF 30 FF 80
	adc $807F00.l,X		; 7F 00 7F 80
	adc $FEB38E.l,X		; 7F 8E B3 FE
	ora $FC9EFE.l		; 0F FE 9E FC
	inc $FCFD.w,X		; FE FD FC
	sbc $79FC.w,X		; FD FC 79
	jmp ($BAB0.w,X)		; 7C B0 BA
	eor $54.b		; 45 54
	tsb $6F.b		; 04 6F
	trb $F89F.w		; 1C 9F F8
	sbc $F8FEF8.l,X		; FF F8 FE F8
	inc $FE30.w,X		; FE 30 FE
	bra  -1.b		; 80 FF
	rti		; 40

	inc $08F0.w,X		; FE F0 08
	cpx #$D008.w		; E0 08 D0
	clc		; 18
	sed		; F8
	sed		; F8
	tay		; A8
	dey		; 88
	sed		; F8
	sei		; 78
	tay		; A8
	dey		; 88
	sed		; F8
	sed		; F8
	brk $60.b		; 00 60
	bpl   0.b		; 10 00
	jsr $F800.w		; 20 00 F8
	brk $F8.b		; 00 F8
	bvs 120.b		; 70 78
	brk $F8.b		; 00 F8
	bvs  -8.b		; 70 F8
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	ora $00.b,S		; 03 00
	brk $01.b		; 00 01
	ora $0D.b,S		; 03 0D
	ora $6606.w,X		; 1D 06 66
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	ora ($3F.b,X)		; 01 3F
	tsb $1F.b		; 04 1F
	sta $3362.w,X		; 9D 62 33
	cpy $B946.w		; CC 46 B9
	asl $FCF1.w		; 0E F1 FC
	xce		; FB
	lda [$87.b],Y		; B7 87
	plx		; FA
.INDEX 8
	sep #$1E		; E2 1E
	lda ($62.b,S),Y		; B3 62
	trb $30CC.w		; 1C CC 30
	clv		; B8
	rti		; 40

	beq   0.b		; F0 00
	sbc $FE01.w,Y		; F9 01 FE
	sei		; 78
	adc $ED1F9D.l,X		; 7F 9D 1F ED
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	asl $01.b		; 06 01
	php		; 08
	ora [$11.b]		; 07 11
	asl $1A25.w		; 0E 25 1A
	and $215E10.l		; 2F 10 5E 21
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	asl $1A01.w		; 0E 01 1A
	ora $10.b		; 05 10
	ora $001E21.l		; 0F 21 1E 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	tsb $03.b		; 04 03
	clc		; 18
	trb $2E1C.w		; 1C 1C 2E
	and $39.b,S		; 23 39
	and $272F.w,Y		; 39 2F 27
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $1C3E00.l,X		; 1F 00 3E 1C
	and $193E06.l,X		; 3F 06 3E 19
	cpy #$C0.b		; C0 C0
	rti		; 40

	iny		; C8
	bcs -120.b		; B0 88
	beq   8.b		; F0 08
	bcc  96.b		; 90 60
	bcs  68.b		; B0 44
	inx		; E8
	tsb $6C90.w		; 0C 90 6C
	rts		; 60

	sec		; 38
	cpx #$BC.b		; E0 BC
	iny		; C8
	mvp $2C,$00		; 44 00 2C
	rti		; 40

	bit $2048.w		; 2C 48 20
	bpl   0.b		; 10 00
	pla		; 68
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
	adc $E984.w,Y		; 79 84 E9
	bit $39.b,X		; 34 39
	brk $F4.b		; 00 F4
	sta $8638.w,Y		; 99 38 86
	bpl -49.b		; 10 CF
	php		; 08
	ror $FCA0.w		; 6E A0 FC
	stx $00.b		; 86 00
	rol $24.b,X		; 36 24
	inc $09.b		; E6 09
	adc $86FF10.l		; 6F 10 FF 86
	ldx $948E.w,Y		; BE 8E 94
	sty $20.b		; 84 20
	brk $B0.b		; 00 B0
	rti		; 40

	rts		; 60

	bra  64.b		; 80 40
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
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
	brk $3F.b		; 00 3F
	brk $2E.b		; 00 2E
	ora ($26.b,X)		; 01 26
	ora ($02.b,X)		; 01 02
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
	brk $3C.b		; 00 3C
	sta ($3A.b,X)		; 81 3A
	sta $38.b,S		; 83 38
	sta $BD.b,S		; 83 BD
	stx $F4.b		; 86 F4
	stx $F0.b		; 86 F0
	stx $F8.b		; 86 F8
	stx $8CE8.w		; 8E E8 8C
	adc $80FC01.l,X		; 7F 01 FC 80
	inc $7882.w,X		; FE 82 78
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	tsb $74.b		; 04 74
	tsb $70.b		; 04 70
	brk $10.b		; 00 10
	bcs -128.b		; B0 80
	bmi -120.b		; 30 88
	sec		; 38
	php		; 08
	sec		; 38
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	tsb $0C.b		; 04 0C
	ora $101F00.l		; 0F 00 1F 10
	ora [$10.b],Y		; 17 10
	ora [$10.b],Y		; 17 10
	ora $080F08.l		; 0F 08 0F 08
	ora $000308.l		; 0F 08 03 00
	bra -48.b		; 80 D0
	tya		; 98
	cld		; D8
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	mvn $57,$28		; 54 28 57
	plp		; 28
	lda ($4C.b,S),Y		; B3 4C
	lda ($4D.b,S),Y		; B3 4D
	lda [$59.b]		; A7 59
	lda [$5B.b]		; A7 5B
	ldx $5A.b		; A6 5A
	sta [$79.b]		; 87 79
	pld		; 2B
	ora ($28.b,S),Y		; 13 28
	bpl  76.b		; 10 4C
	bmi  77.b		; 30 4D
	bmi  89.b		; 30 59
	jsr $205B.w		; 20 5B 20
	tad		; 5B
	and ($79.b,X)		; 21 79
	brk $D4.b		; 00 D4
	mvn $D4,$D5		; 54 D5 D4
	lda $2DA4.w		; AD A4 2D
	bit $7D.b		; 24 7D
	stz $5F.b		; 64 5F
	mvp $44,$57		; 44 57 44
	tyx		; BB
	dey		; 88
	adc $2BFF2B.l,X		; 7F 2B FF 2B
	sbc $DBFF5B.l,X		; FF 5B FF DB
	sbc $BBFF9B.l,X		; FF 9B FF BB
	sbc $77FFBB.l,X		; FF BB FF 77
	plb		; AB
	tax		; AA
	sta $94.b,X		; 95 94
	sta $85.b		; 85 85
	tsx		; BA
	sta ($BA.b)		; 92 BA
	sta ($BE.b)		; 92 BE
	sta ($B5.b)		; 92 B5
	sta ($B5.b),Y		; 91 B5
	bcc -86.b		; 90 AA
	jmp ($7AD6.w,X)		; 7C D6 7A
	sbc $6DFF7A.l		; EF 7A FF 6D
	sbc $6DFF6D.l,X		; FF 6D FF 6D
	sbc $6EFE6E.l,X		; FF 6E FE 6E
	bcs 112.b		; B0 70
	beq -80.b		; F0 B0
	beq  80.b		; F0 50
	beq  80.b		; F0 50
	beq -96.b		; F0 A0
	bvs  32.b		; 70 20
	bvs  64.b		; 70 40
	sec		; 38
	bpl   0.b		; 10 00
	sei		; 78
	ldy #$38.b		; A0 38
	bvc  24.b		; 50 18
	bvc  24.b		; 50 18
	ldy #$08.b		; A0 08
	ldy #$88.b		; A0 88
	cpy #$88.b		; C0 88
	bne -36.b		; D0 DC
	jsr $6182.w		; 20 82 61
	ora #$13C9.w		; 09 C9 13
	ora $37.b,S		; 03 37
	ora ($E7.b,S),Y		; 13 E7
	ora ($E7.b,S),Y		; 13 E7
	and ($C3.b,S),Y		; 33 C3
	sec		; 38
	rti		; 40

	bvs  15.b		; 70 0F
	beq   7.b		; F0 07
	sbc ($07.b,X)		; E1 07
	cmp ($0F.b),Y		; D1 0F
	and ($0F.b,X)		; 21 0F
	sbc ($0F.b,X)		; E1 0F
	cpy #$0F.b		; C0 0F
	rti		; 40

	sta [$7D.b]		; 87 7D
	eor #$C5FF.w		; 49 FF C5
	inc $DA.b		; E6 DA
	sbc [$88.b],Y		; F7 88
	cmp [$B8.b]		; C7 B8
	sbc $7C8280.l,X		; FF 80 82 7C
	sbc $0F02.w,X		; FD 02 0F
	dec $C7.b,X		; D6 C7
	phx		; DA
	cmp $DD.b,S		; C3 DD
	dey		; 88
	bcs -71.b		; B0 B9
	sta $81.b		; 85 81
	sta ($7D.b,X)		; 81 7D
	ora ($00.b,X)		; 01 00
	adc ($00.b)		; 72 00
	brk $3E.b		; 00 3E
	brk $C7.b		; 00 C7
	sec		; 38
	brk $FF.b		; 00 FF
	pha		; 48
	lda [$A3.b],Y		; B7 A3
	jmp $B301FF.l		; 5C FF 01 B3
	eor $0000.w		; 4D 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $FF.b		; 00 FF
	brk $B7.b		; 00 B7
	pha		; 48
	trb $EA.b		; 14 EA
	brk $EC.b		; 00 EC
	jmp $00A0.w		; 4C A0 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $10.b		; 00 10
	cpx #$28.b		; E0 28
	bne -28.b		; D0 E4
	clc		; 18
	sty $68.b,X		; 94 68
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	bne  32.b		; D0 20
	clc		; 18
	rts		; 60

	pha		; 48
	jsr $708F.w		; 20 8F 70
	sta $304F70.l		; 8F 70 4F 30
	eor $205F20.l,X		; 5F 20 5F 20
	eor $205F20.l,X		; 5F 20 5F 20
	and $007000.l,X		; 3F 00 70 00
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $BB.b		; 00 BB
	dey		; 88
	xce		; FB
	pha		; 48
	tsa		; 3B
	sed		; F8
	and $FF7CFF.l,X		; 3F FF 7C FF
	eor [$C7.b]		; 47 C7
	eor $5DC1.w,Y		; 59 C1 5D
	cmp ($FF.b,X)		; C1 FF
	adc [$7F.b],Y		; 77 7F
	and [$7F.b],Y		; 37 7F
	eor [$4F.b]		; 47 4F
	rti		; 40

	cop $02.b		; 02 02
	sec		; 38
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $AE.b		; 00 AE
	dey		; 88
	ldx $BB88.w,Y		; BE 88 BB
	dey		; 88
	lda $FFFB8F.l,X		; BF 8F FB FF
	asl $18FE.w		; 0E FE 18
	sed		; F8
	bvc -80.b		; 50 B0
	sbc $77FF77.l,X		; FF 77 FF 77
	sbc $70FF77.l,X		; FF 77 FF 70
	jsr ($B104.w,X)		; FC 04 B1
	bcs  39.b		; B0 27
	jsr $000F.w		; 20 0F 00
	clv		; B8
	bpl -48.b		; 10 D0
	sec		; 38
	bcc  88.b		; 90 58
	bra  88.b		; 80 58
	clc		; 18
	cld		; D8
	clc		; 18
	jmp.w [$DC9C]		; DC 9C DC
	sty $50D4.w		; 8C D4 50
	jmp $003C00.l		; 5C 00 3C 00
	bit $3C00.w,X		; 3C 00 3C
	bra -68.b		; 80 BC
	dey		; 88
	ldx $3E1C.w,Y		; BE 1C 3E
	tsb $3E.b		; 04 3E
	ora $07.b,S		; 03 07
	ora ($0B.b),Y		; 11 0B
	clc		; 18
	ora ($2E.b,X)		; 01 2E
	bpl  43.b		; 10 2B
	ora $2B.b,X		; 15 2B
	trb $55.b		; 14 55
	and #$2854.w		; 29 54 28
	ora ($0F.b,X)		; 01 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora $150D10.l		; 0F 10 0D 15
	php		; 08
	trb $08.b		; 14 08
	pld		; 2B
	ora ($2B.b)		; 12 2B
	ora ($DC.b,S),Y		; 13 DC
	cmp ($EC.b,X)		; C1 EC
	sbc ($F5.b,X)		; E1 F5
	sbc ($79.b),Y		; F1 79
	tda		; 7B
	bit #$A49D.w		; 89 9D A4
	sec		; 38
	lda ($A1.b,X)		; A1 A1
	jmp $C00C.w		; 4C 0C C0
	sbc $C0.b,S		; E3 C0
	sbc ($60.b,S),Y		; F3 60
	xce		; FB
	bmi  -1.b		; 30 FF
	bra 127.b		; 80 7F
	brk $7F.b		; 00 7F
	bra 127.b		; 80 7F
	stx $7EB3.w		; 8E B3 7E
	sta [$FF.b]		; 87 FF
	cmp $FCFFFE.l		; CF FE FF FC
	inc $FCFD.w,X		; FE FD FC
	adc $B07C.w,Y		; 79 7C B0
	tsx		; BA
	eor $54.b		; 45 54
	cop $B7.b		; 02 B7
	asl $7CCF.w		; 0E CF 7C
	sbc $F8FFF0.l,X		; FF F0 FF F8
	inc $FE30.w,X		; FE 30 FE
	bra  -1.b		; 80 FF
	rti		; 40

	inc $36C8.w,X		; FE C8 36
	sei		; 78
	sty $70.b		; 84 70
	tsb $E8.b		; 04 E8
	tsb $7CFC.w		; 0C FC 7C
	tay		; A8
	dey		; 88
	sed		; F8
	sei		; 78
	tay		; A8
	dey		; 88
	bit $44.b,X		; 34 44
	brk $B0.b		; 00 B0
	php		; 08
	bra  16.b		; 80 10
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	bvs 120.b		; 70 78
	brk $F8.b		; 00 F8
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($06.b,X)		; 01 06
	asl $3303.w		; 0E 03 33
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	cop $0F.b		; 02 0F
	eor $679830.l		; 4F 30 98 67
	and $DC.b,S		; 23 DC
	ora [$F8.b]		; 07 F8
	adc $C3DA7C.l,X		; 7F 7C DA C3
	sbc $0FF1.w,X		; FD F1 0F
	eor $0F30.w,Y		; 59 30 0F
	adc [$18.b]		; 67 18
	jmp.w [$F820]		; DC 20 F8
	brk $7C.b		; 00 7C
	bra 126.b		; 80 7E
	ldy $CEBF.w,X		; BC BF CE
	ora $0000F6.l		; 0F F6 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	php		; 08
	ora [$12.b]		; 07 12
	ora $0916.w		; 0D 16 09
	and $000010.l		; 2F 10 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $0902.w		; 0D 02 09
	asl $10.b		; 06 10
	ora $000000.l		; 0F 00 00 00
	ora ($01.b,X)		; 01 01
	ora [$0F.b]		; 07 0F
	asl $1117.w		; 0E 17 11
	asl $171E.w,X		; 1E 1E 17
	ora ($0F.b,S),Y		; 13 0F
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	asl $011F.w		; 0E 1F 01
	ora $030D0C.l,X		; 1F 0C 0D 03
	bvc  -2.b		; 50 FE
	cpx #$E0.b		; E0 E0
	ldy #$E4.b		; A0 E4
	cli		; 58
	mvp $04,$F8		; 44 F8 04
	iny		; C8
	bmi -40.b		; 30 D8
	jsl $900674.l		; 22 74 06 90
	bra -80.b		; 80 B0
	trb $5EF0.w		; 1C F0 5E
	cpx $A2.b		; E4 A2
	brk $16.b		; 00 16
	ldy #$96.b		; A0 96
	ldy $90.b		; A4 90
	dey		; 88
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
	brk $57.b		; 00 57
	plb		; AB
	ldy $F442.w,X		; BC 42 F4
	inc A		; 1A
	trb $7A80.w		; 1C 80 7A
	cpy $C31C.w		; CC 1C C3
	dey		; 88
	sbc [$04.b]		; E7 04
	and [$A8.b],Y		; 37 A8
	rti		; 40

	eor $00.b,S		; 43 00
	tas		; 1B
	ora ($73.b)		; 12 73
	tsb $37.b		; 04 37
	php		; 08
	sbc $475FC3.l,X		; FF C3 5F 47
	dex		; CA
.ACCU 16
.INDEX 16
	rep #$74		; C2 74
	dey		; 88
	cld		; D8
	jsr $40B0.w		; 20 B0 40
	ldy #$0040.w		; A0 40 00
	cpy #$4000.w		; C0 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	dey		; 88
	ldy #$0020.w		; A0 20 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $012600.l		; 2F 00 26 01
	asl $01.b		; 06 01
	cop $01.b		; 02 01
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
	bit $3A81.w,X		; 3C 81 3A
	sta $38.b,S		; 83 38
	sta $BD.b,S		; 83 BD
	stx $F4.b		; 86 F4
	stx $F0.b		; 86 F0
	stx $F8.b		; 86 F8
	stx $8CE8.w		; 8E E8 8C
	adc $80FC01.l,X		; 7F 01 FC 80
	inc $7882.w,X		; FE 82 78
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	tsb $74.b		; 04 74
	tsb $70.b		; 04 70
	brk $10.b		; 00 10
	bcs -128.b		; B0 80
	bmi -120.b		; 30 88
	sec		; 38
	php		; 08
	sec		; 38
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	tsb $0C.b		; 04 0C
	ora $101F00.l		; 0F 00 1F 10
	ora [$10.b],Y		; 17 10
	ora [$10.b],Y		; 17 10
	ora $080F08.l		; 0F 08 0F 08
	ora $000308.l		; 0F 08 03 00
	sty $C4.b,X		; 94 C4
	bra -48.b		; 80 D0
	tya		; 98
	cld		; D8
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	mvn $B7,$28		; 54 28 B7
	pha		; 48
	lda ($4C.b,S),Y		; B3 4C
	lda $5D.b,S		; A3 5D
	lda [$59.b]		; A7 59
	lda [$5B.b]		; A7 5B
	stx $7A.b		; 86 7A
	sta $132B71.l		; 8F 71 2B 13
	pha		; 48
	bmi  76.b		; 30 4C
	bmi  93.b		; 30 5D
	jsr $2059.w		; 20 59 20
	tad		; 5B
	jsr $017B.w		; 20 7B 01
	adc ($00.b),Y		; 71 00
	pei ($54.b)		; D4 54
	cmp $D4.b,X		; D5 D4
	lda $2DA4.w		; AD A4 2D
	bit $7D.b		; 24 7D
	stz $5F.b		; 64 5F
	mvp $44,$57		; 44 57 44
	tyx		; BB
	dey		; 88
	adc $2BFF2B.l,X		; 7F 2B FF 2B
	sbc $DBFF5B.l,X		; FF 5B FF DB
	sbc $BBFF9B.l,X		; FF 9B FF BB
	sbc $77FFBB.l,X		; FF BB FF 77
	plb		; AB
	tax		; AA
	sta $94.b,X		; 95 94
	sta $85.b		; 85 85
	tsx		; BA
	sta ($BA.b)		; 92 BA
	sta ($BE.b)		; 92 BE
	sta ($B5.b)		; 92 B5
	sta ($B5.b),Y		; 91 B5
	bcc -86.b		; 90 AA
	jmp ($7AD6.w,X)		; 7C D6 7A
	sbc $6DFF7A.l		; EF 7A FF 6D
	sbc $6DFF6D.l,X		; FF 6D FF 6D
	sbc $6EFE6E.l,X		; FF 6E FE 6E
	sed		; F8
	sei		; 78
	beq -80.b		; F0 B0
	beq  80.b		; F0 50
	beq  80.b		; F0 50
	beq -96.b		; F0 A0
	bvs  32.b		; 70 20
	bvs  64.b		; 70 40
	bmi  16.b		; 30 10
	sei		; 78
	brk $80.b		; 00 80
	sec		; 38
	rti		; 40

	clc		; 18
	bvc  24.b		; 50 18
	ldy #$A008.w		; A0 08 A0
	dey		; 88
	cpy #$D088.w		; C0 88 D0
	cld		; D8
	bpl -63.b		; 10 C1
	clv		; B8
	sty $0964.w		; 8C 64 09
	lda ($3B.b,X)		; A1 3B
	bit #$C9F3.w		; 89 F3 C9
	sbc ($09.b,S),Y		; F3 09
	lda ($9C.b),Y		; B1 9C
	cpy #$0738.w		; C0 38 07
	bvs   3.b		; 70 03
	beq   3.b		; F0 03
	iny		; C8
	ora [$90.b]		; 07 90
	ora [$F0.b]		; 07 F0
	ora [$30.b]		; 07 30
	cmp [$80.b]		; C7 80
	sbc $3F.b,S		; E3 3F
	and $FE.b		; 25 FE
.ACCU 8
.INDEX 8
	sep #$F3		; E2 F3
	cpx $C5FB.w		; EC FB C5
	sbc $DC.b,S		; E3 DC
	sbc $BEC1C0.l,X		; FF C0 C1 BE
	adc $EA0700.l,X		; 7F 00 07 EA
	adc $ED.b,S		; 63 ED
	sbc ($EF.b,X)		; E1 EF
	cmp $D8.b		; C5 D8
	jmp.w [$C0C2]		; DC C2 C0
	cpy #$3E.b		; C0 3E
	bra   0.b		; 80 00
	clv		; B8
	asl $09.b,X		; 16 09
	ora $0A.b,X		; 15 0A
	ora $1B06.w,Y		; 19 06 1B
	tsb $0B.b		; 04 0B
	tsb $07.b		; 04 07
	ora ($06.b,X)		; 01 06
	ora ($05.b,X)		; 01 05
	cop $08.b		; 02 08
	ora [$0A.b]		; 07 0A
	ora ($06.b,X)		; 01 06
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $29.b		; 00 29
	dec $FE.b,X		; D6 FE
	ora ($AA.b),Y		; 11 AA
	cmp $C7.b		; C5 C7
	brk $83.b		; 00 83
	jmp ($01D7.w)		; 6C D7 01
	tsx		; BA
	cmp [$C7.b]		; C7 C7
	sta ($92.b)		; 92 92
	eor $01.b,X		; 55 01
	mvp $00,$55		; 44 55 00
	sec		; 38
	brk $7D.b		; 00 7D
	plp		; 28
	sec		; 38
	mvp $82,$FE		; 44 FE 82
	jmp ($0110.w,X)		; 7C 10 01
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $72.b		; 00 72
	jmp ($C1C0.w,X)		; 7C C0 C1
	sbc ($01.b),Y		; F1 01
	and ($D6.b)		; 32 D6
	adc $6D9B.w,Y		; 79 9B 6D
	lda $14D4.w		; AD D4 14
	cmp $BFC055.l,X		; DF 55 C0 BF
	cpy #$3F.b		; C0 3F
	ora ($0F.b,X)		; 01 0F
	bne  15.b		; D0 0F
	sta $BC07.w,Y		; 99 07 BC
	ora ($3E.b,S),Y		; 13 3E
	pld		; 2B
	adc $7E3A2A.l,X		; 7F 2A 3A 7E
	ora [$99.b]		; 07 99
	adc $40.b,S		; 63 40
	cmp [$E6.b]		; C7 E6
	sta $85.b		; 85 85
	and $2A25.w		; 2D 25 2A
	jsl $031256.l		; 22 56 12 03
	sbc $FC01.w,X		; FD 01 FC
	brk $FC.b		; 00 FC
	stx $F8.b		; 86 F8
	ora $DA7FFA.l,X		; 1F FA 7F DA
	sbc $EDFFDD.l,X		; FF DD FF ED
	jmp.w [$CCA0]		; DC A0 CC
	bmi -54.b		; 30 CA
	bit $E2.b,X		; 34 E2
	jmp.w [$5CE2]		; DC E2 5C
.INDEX 8
	sep #$5C		; E2 5C
	sbc ($9E.b,X)		; E1 9E
	sbc ($8E.b),Y		; F1 8E
	ldy #$18.b		; A0 18
	bmi   8.b		; 30 08
	bit $08.b,X		; 34 08
	jmp.w [$5C00]		; DC 00 5C
	brk $5C.b		; 00 5C
	brk $9E.b		; 00 9E
	brk $8E.b		; 00 8E
	brk $1E.b		; 00 1E
	and ($1F.b,X)		; 21 1F
	jsr $6609.w		; 20 09 66
	and #$68.b		; 29 68
	stz $76.b,X		; 74 76
	lda ($97.b,S),Y		; B3 97
	sed		; F8
	lda ($A2.b,X)		; A1 A2
	ldy $0611.w,X		; BC 11 06
	bpl   7.b		; 10 07
	rol $21.b,X		; 36 21
	bpl   6.b		; 10 06
	stz $0F.b		; 64 0F
	sbc ($6F.b),Y		; F1 6F
	cpx #$5F.b		; E0 5F
	cpx #$5F.b		; E0 5F
	sbc [$19.b]		; E7 19
	inc $B900.w,X		; FE 00 B9
	ora $66.b		; 05 66
	txs		; 9A
	ora $C305.w,X		; 1D 05 C3
	sbc ($FD.b,X)		; E1 FD
	sbc $587F3F.l,X		; FF 3F 7F 58
	eor $40.b		; 45 40
	eor $5B45.w,X		; 5D 45 5B
	txs		; 9A
	ora $00.b,S		; 03 00
	sbc [$81.b]		; E7 81
	jsr ($FE79.w,X)		; FC 79 FE
	ora $D4FE.w,X		; 1D FE D4
	cli		; 58
	and ($1C.b)		; 32 1C
	ldx $98.b,Y		; B6 98
	ldx $18.b		; A6 18
	ror $98.b		; 66 98
	dec $C8.b,X		; D6 C8
	adc $2A.b,X		; 75 2A
	cmp [$48.b],Y		; D7 48
	jsr $2400.w		; 20 00 24
	cpy #$20.b		; C0 20
	cpy $68.b		; C4 68
	tsb $68.b		; 04 68
	tsb $E8.b		; 04 E8
	tsb $EA.b		; 04 EA
	cpy $E8.b		; C4 E8
	ldx $3C.b		; A6 3C
	eor $3C.b,S		; 43 3C
	eor $38.b,S		; 43 38
	.db $42, $3C		; 42 3C
	dec $70.b		; C6 70
	dec $30.b		; C6 30
	sty $38.b		; 84 38
	sty $8C20.w		; 8C 20 8C
	rol $3E02.w,X		; 3E 02 3E
	cop $3C.b		; 02 3C
	brk $78.b		; 00 78
	rti		; 40

	bit $7804.w,X		; 3C 04 78
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	php		; 08
	jmp $0C21.w		; 4C 21 0C
	and ($0C.b,X)		; 21 0C
	and ($0E.b,X)		; 21 0E
	and $1E.b,S		; 23 1E
	and ($1E.b,S),Y		; 33 1E
	and ($1E.b,S),Y		; 33 1E
	and ($02.b,S),Y		; 33 02
	and ($3E.b,S),Y		; 33 3E
	jsr $001E.w		; 20 1E 00
	asl $1C00.w,X		; 1E 00 1C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $03.b		; 02 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	brk $05.b		; 00 05
	ora [$13.b],Y		; 17 13
	and [$07.b],Y		; 37 07
	and $591D.w		; 2D 1D 59
	ror $D662.w		; 6E 62 D6
	.db $82, $A6, $22		; 82 A6 22
	cpy #$C0.b		; C0 C0
	ora #$00.b		; 09 00
	ora $0A1F04.l		; 0F 04 1F 0A
	and $107206.l,X		; 3F 06 72 10
.ACCU 8
	sep #$60		; E2 60
	sep #$C0		; E2 C0
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	ldy #$40.b		; A0 40
	jsr $A0C0.w		; 20 C0 A0
	rti		; 40

	bcc  96.b		; 90 60
	bne  32.b		; D0 20
	bcc  96.b		; 90 60
	bmi -64.b		; 30 C0
	brk $C0.b		; 00 C0
	rti		; 40

	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	jsr $D028.w		; 20 28 D0
	plp		; 28
	bne  -8.b		; D0 F8
	cpx #$D8.b		; E0 D8
	bpl 120.b		; 10 78
	bvs -68.b		; 70 BC
	dey		; 88
	jmp ($9C70.w,X)		; 7C 70 9C
	brk $D0.b		; 00 D0
	jsr $20D0.w		; 20 D0 20
	cpx #$00.b		; E0 00
	beq -32.b		; F0 E0
	cpx #$90.b		; E0 90
	bra 120.b		; 80 78
	jsr $00F8.w		; 20 F8 00
	bvs   2.b		; 70 02
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
	brk $05.b		; 00 05
	cop $09.b		; 02 09
	ora [$0F.b]		; 07 0F
	cop $17.b		; 02 17
	tsb $19.b		; 04 19
	php		; 08
	asl $0F16.w,X		; 1E 16 0F
	ora #$08.b		; 09 08
	and [$02.b]		; 27 02
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	phd		; 0B
	ora $1F.b,S		; 03 1F
	ora [$3D.b]		; 07 3D
	ora ($38.b,X)		; 01 38
	ora [$00.b],Y		; 17 00
	tyx		; BB
	mvp $ED,$83		; 44 83 ED
	jmp ($5578.w)		; 6C 78 55
	mvp $58,$5B		; 44 5B 58
	sbc $71.b,X		; F5 71
	adc $BEF16E.l		; 6F 6E F1 BE
	jmp ($B944.w,X)		; 7C 44 B9
	plp		; 28
	cmp $83.b,S		; C3 83
	sbc $87EFBB.l,X		; FF BB EF 87
	cmp $90FE8E.l,X		; DF 8E FE 90
	ldx $0500.w,Y		; BE 00 05
	cop $05.b		; 02 05
	cop $05.b		; 02 05
	cop $07.b		; 02 07
	ora ($07.b,X)		; 01 07
	ora ($05.b,X)		; 01 05
	cop $05.b		; 02 05
	cop $02.b		; 02 02
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $AF.b		; 00 AF
	and $B7.b		; 25 B7
	lda $BB.b		; A5 BB
	lda #$5B.b		; A9 5B
	ora #$4F.b		; 09 4F
	ora #$EF.b		; 09 EF
	bit #$EF.b		; 89 EF
	ora #$FF.b		; 09 FF
	ora $5A7F.w,Y		; 19 7F 5A
	sbc $56FF5A.l,X		; FF 5A FF 56
	lda $B6BFB6.l,X		; BF B6 BF B6
	lda $363F36.l,X		; BF 36 3F 36
	ora $125606.l,X		; 1F 06 56 12
	eor $11.b,X		; 55 11
	adc $11.b,X		; 75 11
	adc $086A09.l		; 6F 09 6A 08
	ror A		; 6A
	php		; 08
	ply		; 7A
	php		; 08
	adc $FF08.w,Y		; 79 08 FF
	sbc $EEFF.w		; ED FF EE
	sbc $F6FFEE.l,X		; FF EE FF F6
	sbc $F7FFF7.l,X		; FF F7 FF F7
	sbc $F6FEF7.l,X		; FF F7 FE F6
	sbc ($CE.b),Y		; F1 CE
	adc $7946.w,Y		; 79 46 79
	ror $39.b		; 66 39
	rol $B9.b		; 26 B9
	stx $B9.b		; 86 B9
	stx $FA.b		; 86 FA
	tsb $72.b		; 04 72
	sty $00CE.w		; 8C CE 00
	dec $80.b		; C6 80
	inc $80.b		; E6 80
	inc $C0.b		; E6 C0
	dec $40.b		; C6 40
	dec $40.b		; C6 40
	tsb $00.b		; 04 00
	sty $8F80.w		; 8C 80 8F
	eor $124383.l		; 4F 83 43 12
	cmp $7A.b,S		; C3 7A
	cmp $78.b,S		; C3 78
	cmp $78.b,S		; C3 78
	cmp $3D.b,S		; C3 3D
	stx $3D.b		; 86 3D
	stx $7F.b		; 86 7F
	rti		; 40

	adc $7D40.w,X		; 7D 40 7D
	eor ($3C.b,X)		; 41 3C
	brk $3E.b		; 00 3E
	cop $3E.b		; 02 3E
	cop $78.b		; 02 78
	brk $78.b		; 00 78
	brk $1F.b		; 00 1F
	ora $A5F1F1.l,X		; 1F F1 F1 A5
	adc ($AD.b,X)		; 61 AD
	adc ($AD.b,X)		; 61 AD
	adc ($CD.b,X)		; 61 CD
	and ($CC.b,X)		; 21 CC
	and ($4C.b,X)		; 21 4C
	and ($FE.b,X)		; 21 FE
	cpx #$EE.b		; E0 EE
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	jsr $213F.w		; 20 3F 21
	and $887621.l,X		; 3F 21 76 88
	stz $88.b,X		; 74 88
	stz $98.b		; 64 98
	pla		; 68
	bcc  80.b		; 90 50
	ldy #$20.b		; A0 20
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	bra -120.b		; 80 88
	bra -120.b		; 80 88
	bra  24.b		; 80 18
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $18.b		; 00 18
	ora [$24.b]		; 07 24
	tas		; 1B
	lsr $0031.w		; 4E 31 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $1B.b		; 00 1B
	tsb $21.b		; 04 21
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clv		; B8
	brk $44.b		; 00 44
	clv		; B8
	rol A		; 2A
	pei ($FE.b)		; D4 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B8.b		; 00 B8
	brk $D4.b		; 00 D4
	plp		; 28
	brk $7C.b		; 00 7C
	php		; 08
	cpy $CC08.w		; CC 08 CC
	cli		; 58
	jmp.w [$C640]		; DC 40 C6
	bvc -58.b		; 50 C6
	mvn $54,$C6		; 54 C6 54
	dec $1C.b		; C6 1C
	dec $70.b		; C6 70
	rti		; 40

	bvs  64.b		; 70 40
	jsr $3C00.w		; 20 00 3C
	tsb $3C.b		; 04 3C
	tsb $38.b		; 04 38
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	rti		; 40

	trb $1CC6.w		; 1C C6 1C
	lsr $18.b		; 46 18
	lsr $18.b		; 46 18
	lsr $38.b		; 46 38
	stz $38.b		; 64 38
	stz $18.b		; 64 18
	stz $10.b		; 64 10
	stz $78.b		; 64 78
	rti		; 40

	sec		; 38
	brk $3C.b		; 00 3C
	tsb $3C.b		; 04 3C
	tsb $18.b		; 04 18
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	jsr $2038.w		; 20 38 20
	tsb $1836.w		; 0C 36 18
	rol $08.b,X		; 36 08
	bit $10.b		; 24 10
	bit $08.b		; 24 08
	bit $2C00.w		; 2C 00 2C
	brk $68.b		; 00 68
	jsr $1868.w		; 20 68 18
	bpl  12.b		; 10 0C
	tsb $18.b		; 04 18
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	php		; 08
	bmi  32.b		; 30 20
	bpl   0.b		; 10 00
	bpl  36.b		; 10 24
	bpl  36.b		; 10 24
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	bpl  52.b		; 10 34
	bpl  52.b		; 10 34
	bpl  52.b		; 10 34
	clc		; 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	and ($08.b),Y		; 31 08
	and $3D1C.w,Y		; 39 1C 3D
	bpl  49.b		; 10 31
	asl $0E23.w		; 0E 23 0E
	and $0E.b,S		; 23 0E
	adc $1C.b,S		; 63 1C
	adc $1E.b,S		; 63 1E
	bpl  22.b		; 10 16
	bpl   2.b		; 10 02
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	jsr $223E.w		; 20 3E 22
	sec		; 38
	adc $18.b,S		; 63 18
	.db $42, $1C		; 42 1C
	lsr $30.b		; 46 30
	lsr $30.b		; 46 30
	lsr $38.b		; 46 38
	jmp $4C30.w		; 4C 30 4C
	jsr $1E48.w		; 20 48 1E
	cop $3C.b		; 02 3C
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $3C.b		; 04 3C
	tsb $30.b		; 04 30
	brk $38.b		; 00 38
	php		; 08
	bmi   0.b		; 30 00
	bra -40.b		; 80 D8
	bne -40.b		; D0 D8
	inx		; E8
	jmp ($14D4.w)		; 6C D4 14
	tax		; AA
	rol A		; 2A
	sta $11.b,X		; 95 11
	ora $00000F.l		; 0F 0F 00 00
	beq  80.b		; F0 50
	cpx #$00.b		; E0 00
	bvs   0.b		; 70 00
	bit $3E20.w,X		; 3C 20 3E
	trb $1F.b		; 14 1F
	asl $000F.w		; 0E 0F 00
	brk $00.b		; 00 00
	adc #$C6.b		; 69 C6
	cmp #$C6.b		; C9 C6
	cmp $D2.b,X		; D5 D2
	ldy $1A63.w		; AC 63 1A
	ora ($7A.b),Y		; 11 7A
	and ($FD.b),Y		; 31 FD
	bmi -11.b		; 30 F5
	plp		; 28
	lsr $F0.b		; 46 F0
	lsr $F0.b		; 46 F0
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	ora $F0.b,S		; 03 F0
	ora ($E0.b),Y		; 11 E0
	lda ($80.b),Y		; B1 80
	bcs -128.b		; B0 80
	tay		; A8
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	brk $DA.b		; 00 DA
	lsr A		; 4A
	tyx		; BB
	asl A		; 0A
	sbc $14.b,X		; F5 14
	and $14.b,X		; 35 14
	ror A		; 6A
	plp		; 28
	xba		; EB
	adc ($D7.b,X)		; 61 D7
	eor ($F5.b,X)		; 41 F5
	ora ($6F.b,X)		; 01 6F
	and $4F.b		; 25 4F
	eor $1F.b		; 45 1F
	phd		; 0B
	ora $173F0B.l,X		; 1F 0B 3F 17
	adc [$16.b],Y		; 77 16
	adc $0E0F2E.l		; 6F 2E 0F 0E
	sty $94.b,X		; 94 94
	sty $84.b		; 84 84
	ldy $BC94.w,X		; BC 94 BC
	sty $BD.b,X		; 94 BD
	sty $7B.b,X		; 94 7B
	ora ($5E.b)		; 12 5E
	ora ($6E.b)		; 12 6E
	jsl $EE7B96.l		; 22 96 7B EE
	tda		; 7B
	inc $FE6B.w,X		; FE 6B FE
	rtl		; 6B

	sbc $EDFF6B.l,X		; FF 6B FF ED
	sbc $DDFFED.l,X		; FF ED FF DD
	ora #$1106.w		; 09 06 11
	asl $001F.w		; 0E 1F 00
	ora $082A03.l,X		; 1F 03 2A 08
	ora $14.b		; 05 14
	pld		; 2B
	and $0B.b,S		; 23 0B
	clc		; 18
	asl $00.b		; 06 00
	asl $0000.w		; 0E 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	ora [$07.b],Y		; 17 07
	tsa		; 3B
	ora $7C.b,S		; 03 7C
	brk $7C.b		; 00 7C
	ldx $D460.w		; AE 60 D4
	and ($D0.b,S),Y		; 33 D0
	tsa		; 3B
	inx		; E8
	sbc $4CE0F7.l		; EF F7 E0 4C
	jmp ($39BB.w)		; 6C BB 39
	sbc [$F2.b],Y		; F7 F2
	ora $030F00.l,X		; 1F 00 0F 03
	and $00D02B.l		; 2F 2B D0 00
	sed		; F8
	clc		; 18
	sbc $C6EFA3.l,X		; FF A3 EF C6
	inc $800C.w,X		; FE 0C 80
	cpy #$8040.w		; C0 40 80
	rts		; 60

	bra -96.b		; 80 A0
	rti		; 40

	ldy #$D040.w		; A0 40 D0
	cpy #$A0A0.w		; C0 A0 A0
	cpy #$0040.w		; C0 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	jsr $7080.w		; 20 80 70
	rti		; 40

	bvs -128.b		; 70 80
	bpl -128.b		; 10 80
	cli		; 58
	bcc   4.b		; 90 04
	sty $06.b,X		; 94 06
	lda $381B27.l		; AF 27 1B 38
	ora ($00.b,X)		; 01 00
	plx		; FA
	jmp ($6000.w,X)		; 7C 00 60
	bpl 112.b		; 10 70
	clc		; 18
	rts		; 60

	sec		; 38
	rti		; 40

	ora $C70F40.l,X		; 1F 40 0F C7
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	adc $03.b,X		; 75 03
	adc $6933.w,Y		; 79 33 69
	and $49.b,S		; 23 49
	phd		; 0B
	rti		; 40

	ora ($72.b,X)		; 01 72
	rol $31.b,X		; 36 31
	ora ($7E.b,X)		; 01 7E
	rol $0F00.w		; 2E 00 0F
	bmi   7.b		; 30 07
	bmi  23.b		; 30 17
	sec		; 38
	and [$30.b],Y		; 37 30
	and $000F30.l,X		; 3F 30 0F 00
	ora $EE012E.l		; 0F 2E 01 EE
	rtl		; 6B

	xce		; FB
	xce		; FB
	inc $FDFE.w,X		; FE FE FD
	jsr ($FAFC.w,X)		; FC FC FA
	sei		; 78
	ply		; 7A
	sty $94.b,X		; 94 94
	rtl		; 6B

	ror A		; 6A
	rol $FE55.w,X		; 3E 55 FE
	sbc $FE.b		; E5 FE
	sbc ($F8.b),Y		; F1 F8
	inc $FF78.w,X		; FE 78 FF
	bmi  -1.b		; 30 FF
	bra  -1.b		; 80 FF
	jsl $FFFFFC.l		; 22 FC FF FF
	sbc $0000FF.l,X		; FF FF 00 00
	tsx		; BA
	sec		; 38
	ldx $30.b,Y		; B6 30
	adc ($34.b)		; 72 34
	and ($76.b,X)		; 21 76
	eor #$FF66.w		; 49 66 FF
	sbc $00FFFF.l,X		; FF FF FF 00
	sbc $307C10.l,X		; FF 10 7C 30
	sei		; 78
	tsb $F8.b		; 04 F8
	asl $F8.b		; 06 F8
	asl $F0.b		; 06 F0
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra   8.b		; 80 08
	trb $FC1E.w		; 1C 1E FC
	inc $FCFC.w,X		; FE FC FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $1E.b		; 00 1E
	php		; 08
	sbc $18FFBC.l,X		; FF BC FF 18
	inc $FC00.w,X		; FE 00 FC
	brk $00.b		; 00 00
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
	bra 124.b		; 80 7C
	cmp ($3C.b,X)		; C1 3C
	cmp ($1C.b,X)		; C1 1C
	cmp ($1C.b,X)		; C1 1C
	eor ($3E.b,X)		; 41 3E
	adc $3E.b,S		; 63 3E
	adc $0E.b,S		; 63 0E
	adc $0E.b,S		; 63 0E
	and $3E.b,S		; 23 3E
	brk $7E.b		; 00 7E
	rti		; 40

	ror $3E40.w,X		; 7E 40 3E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	jsr $001C.w		; 20 1C 00
	jsl $6120E3.l		; 22 E3 20 61
	and ($61.b,X)		; 21 61
	ora ($71.b),Y		; 11 71
	bpl  48.b		; 10 30
	brk $30.b		; 00 30
	php		; 08
	clc		; 18
	php		; 08
	clc		; 18
	eor $1F41.w,X		; 5D 41 1F
	ora ($1E.b,X)		; 01 1E
	brk $2E.b		; 00 2E
	jsr $000F.w		; 20 0F 00
	ora $000710.l,X		; 1F 10 07 00
	ora [$00.b]		; 07 00
	cpx $18.b		; E4 18
	.db $42, $3C		; 42 3C
	sta ($6C.b)		; 92 6C
	cmp ($EC.b)		; D2 EC
	eor $0966.w,Y		; 59 66 09
	rol $0C.b,X		; 36 0C
	and ($2E.b,S),Y		; 33 2E
	and ($98.b),Y		; 31 98
	bra -100.b		; 80 9C
	bra  76.b		; 80 4C
	rti		; 40

	tsb $8600.w		; 0C 00 86
	brk $E6.b		; 00 E6
	jsr $20E3.w		; 20 E3 20
	cmp ($00.b,X)		; C1 00
	cpy #$6000.w		; C0 00 60
	brk $10.b		; 00 10
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
	brk $2E.b		; 00 2E
	cop $1A.b		; 02 1A
	cop $06.b		; 02 06
	asl $1F0D.w,X		; 1E 0D 1F
	ora ($19.b,X)		; 01 19
	brk $18.b		; 00 18
	ora $08.b,S		; 03 08
	ora [$0C.b]		; 07 0C
	ora $05071D.l,X		; 1F 1D 07 05
	ora $020309.l		; 0F 09 03 02
	asl $0F08.w		; 0E 08 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	inc $EE22.w		; EE 22 EE
	jsl $FF42DF.l		; 22 DF 42 FF
	sbc $44FEC2.l,X		; FF C2 FE 44
	jmp ($3CA4.w,X)		; 7C A4 3C
	cpx $3C.b		; E4 3C
	sbc $DDFFDD.l,X		; FF DD FF DD
	inc $FEBC.w,X		; FE BC FE
	brk $2D.b		; 00 2D
	bit $28AB.w		; 2C AB 28
	wai		; CB
	php		; 08
	cmp $00.b,S		; C3 00
	and ($16.b),Y		; 31 16
	jsl $10462B.l		; 22 2B 46 10
	rtl		; 6B

	clc		; 18
	.db $62, $0E, $6D		; 62 0E 6D
	ora [$32.b]		; 07 32
	ora $37.b		; 05 37
	brk $10.b		; 00 10
	adc $7004.w,Y		; 79 04 70
	ora $000720.l		; 0F 20 07 00
	ora ($10.b,X)		; 01 10
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	stz $5E61.w,X		; 9E 61 5E
	lda ($BF.b,X)		; A1 BF
	cpy #$3285.w		; C0 85 32
	pea $6B1F.w		; F4 1F 6B
	asl A		; 0A
	eor $69BDD5.l,X		; 5F D5 BD 69
	adc ($80.b,X)		; 61 80
	plp		; 28
	phk		; 4B
	php		; 08
	ora #$09CA.w		; 09 CA 09
	sbc [$00.b]		; E7 00
	inc $3F04.w,X		; FE 04 3F
	asl A		; 0A
	and $883496.l,X		; 3F 96 34 88
	asl $0380.w		; 0E 80 03
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C080.w		; C0 80 C0
	bra -64.b		; 80 C0
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $38.b		; 00 38
	ora [$48.b]		; 07 48
	and [$48.b],Y		; 37 48
	and [$F3.b],Y		; 37 F3
	tsb $40BF.w		; 0C BF 40
	ldx $0051.w		; AE 51 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $37.b		; 00 37
	php		; 08
	and [$18.b]		; 27 18
	brk $3D.b		; 00 3D
	rti		; 40

	and $2A51.w,X		; 3D 51 2A
	brk $00.b		; 00 00
	cpx #$3C00.w		; E0 00 3C
	cpy #$FC02.w		; C0 02 FC
	rtl		; 6B

	sty $77.b,X		; 94 77
	tay		; A8
	eor $8A.b,X		; 55 8A
	sta $0012.w		; 8D 12 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $FC.b		; 00 FC
	brk $94.b		; 00 94
	lsr A		; 4A
	php		; 08
	stx $AA.b		; 86 AA
	brk $72.b		; 00 72
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $38.b		; 00 38
	ora [$48.b]		; 07 48
	and [$00.b],Y		; 37 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $37.b		; 00 37
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$3C00.w		; E0 00 3C
	cpy #$FC02.w		; C0 02 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$FC00.w		; C0 00 FC
	brk $35.b		; 00 35
	cpy $C63A.w		; CC 3A C6
	ply		; 7A
	sta [$FD.b]		; 87 FD
	sbc $0C4E.w,X		; FD 4E 0C
	pla		; 68
	eor $3776.w		; 4D 76 37
	and $C34F.w,X		; 3D 4F C3
	brk $C1.b		; 00 C1
	brk $85.b		; 00 85
	ora $FA.b		; 05 FA
	brk $FF.b		; 00 FF
	sbc ($7B.b,S),Y		; F3 7B
	lda ($3C.b),Y		; B1 3C
	iny		; C8
	ora $18D0C2.l		; 0F C2 D0 18
	bra 112.b		; 80 70
	brk $70.b		; 00 70
	bpl -32.b		; 10 E0
	beq   0.b		; F0 00
	clv		; B8
	bcs -40.b		; B0 D8
	bcc -96.b		; 90 A0
	bit $E0.b,X		; 34 E0
	brk $E0.b		; 00 E0
	rts		; 60

	cpx #$0060.w		; E0 60 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	rti		; 40

	beq  96.b		; F0 60
	cpx #$FDD8.w		; E0 D8 FD
	sbc $FFFF.w		; ED FF FF
	adc $FF7FFF.l,X		; 7F FF 7F FF
	and $CECF3F.l,X		; 3F 3F CF CE
	and ($32.b)		; 32 32
	sta $078D.w		; 8D 8D 07
	nop		; EA
	adc $FE3FFC.l,X		; 7F FC 3F FE
	rol $1EFF.w,X		; 3E FF 1E
	sbc $10FF46.l,X		; FF 46 FF 10
	sbc $DF7FC4.l,X		; FF C4 7F DF
	adc $C07F7F.l,X		; 7F 7F 7F C0
	cpy #$3048.w		; C0 48 30
	pha		; 48
	bmi  44.b		; 30 2C
	bpl  36.b		; 10 24
	tya		; 98
	stz $28.b,X		; 74 28
	cmp $BFDFBF.l,X		; DF BF DF BF
	cpy #$303F.w		; C0 3F 30
	bra  48.b		; 80 30
	bra  16.b		; 80 10
	cpy #$C018.w		; C0 18 C0
	plp		; 28
	bra -75.b		; 80 B5
	sty $7B.b		; 84 7B
	php		; 08
	tyx		; BB
	dey		; 88
	adc $7F70FF.l,X		; 7F FF 70 7F
	ora ($1F.b),Y		; 11 1F
	sbc #$F90F.w		; E9 0F F9
	ora $FF7BFF.l		; 0F FF 7B FF
	sbc [$FF.b],Y		; F7 FF
	adc [$FF.b],Y		; 77 FF
	bra -117.b		; 80 8B
	phd		; 0B
	nop		; EA
	asl A		; 0A
	sbc ($02.b)		; F2 02
	beq   0.b		; F0 00
	cmp $68F740.l,X		; DF 40 F7 68
	adc $18.b,S		; 63 18
	sbc ($F8.b,S),Y		; F3 F8
	sta ($98.b),Y		; 91 98
	ora ($0C.b,X)		; 01 0C
	brk $0C.b		; 00 0C
	asl A		; 0A
	tsb $A0E0.w		; 0C E0 A0
	cpx #$9080.w		; E0 80 90
	bcc -128.b		; 90 80
	brk $60.b		; 00 60
	brk $F8.b		; 00 F8
	php		; 08
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $AFFB.w,Y		; F9 FB AF
	lda $E8AFFF.l		; AF FF AF E8
	lda $0000A8.l		; AF A8 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $F8.b,S		; 03 F8
	ora [$FB.b]		; 07 FB
	eor [$F8.b],Y		; 57 F8
	eor [$F8.b],Y		; 57 F8
	eor [$50.b],Y		; 57 50
	eor [$00.b],Y		; 57 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $F6FDFA.l		; 0F FA FD F6
	jsr ($E080.w,X)		; FC 80 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora [$FF.b]		; 07 FF
	rts		; 60

	sbc $00FFE4.l,X		; FF E4 FF 00
	sbc $00E000.l,X		; FF 00 E0 00
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
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($05.b,X)		; 01 05
	ora ($00.b,X)		; 01 00
	cop $05.b		; 02 05
	tsb $01.b		; 04 01
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	ora [$00.b]		; 07 00
	ora $160F00.l		; 0F 00 0F 16
	cop $14.b		; 02 14
	ora $18.b		; 05 18
	cop $11.b		; 02 11
	phd		; 0B
	jsl $112D19.l		; 22 19 2D 11
	bit $4D11.w		; 2C 11 4D
	bmi   2.b		; 30 02
	ora $010E00.l		; 0F 00 0E 01
	tsb $08.b		; 04 08
	tsb $18.b		; 04 18
	asl $10.b		; 06 10
	ora $10.b,S		; 03 10
	ora $30.b,S		; 03 30
	ora $5C.b,S		; 03 5C
	and ($5E.b,X)		; 21 5E
	bit $26D6.w		; 2C D6 26
	sta ($62.b)		; 92 62
	ldx $46.b,Y		; B6 46
	ldy $BE4D.w,X		; BC 4D BE
	rti		; 40

	lda $03204D.l,X		; BF 4D 20 03
	bit $2E01.w		; 2C 01 2E
	ora #$0D6E.w		; 09 6E 0D
	lsr $4C09.w		; 4E 09 4C
	ora $40.b,S		; 03 40
	ora ($4D.b,X)		; 01 4D
	brk $B7.b		; 00 B7
	eor $BF.b,S		; 43 BF
	eor [$BE.b]		; 47 BE
	lsr $58B8.w		; 4E B8 58
	sbc ($21.b,X)		; E1 21
	dec $04.b		; C6 04
	adc $7B00.w,X		; 7D 00 7B
	php		; 08
	phk		; 4B
	php		; 08
	eor [$00.b]		; 47 00
	eor $075F01.l		; 4F 01 5F 07
	and $393D1E.l,X		; 3F 1E 3D 39
	ora $03.b,S		; 03 03
	ora $007A07.l		; 0F 07 7A 00
	and $3F05.w,X		; 3D 05 3F
	ora $1B.b,S		; 03 1B
	ora [$18.b]		; 07 18
	asl $08.b		; 06 08
	asl $04.b		; 06 04
	cop $01.b		; 02 01
	ora $07.b,S		; 03 07
	ora [$07.b]		; 07 07
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	brk $48.b		; 00 48
	and [$F3.b],Y		; 37 F3
	tsb $40BF.w		; 0C BF 40
	ldx $8F51.w		; AE 51 8F
	bvs  26.b		; 70 1A
	sbc [$13.b]		; E7 13
	cpx #$E91B.w		; E0 1B E9
	and [$18.b]		; 27 18
	brk $3D.b		; 00 3D
	rti		; 40

	and $2A51.w,X		; 3D 51 2A
	bvs   0.b		; 70 00
	sbc [$06.b]		; E7 06
	inc $E600.w		; EE 00 E6
	ora ($6B.b,X)		; 01 6B
	sty $77.b,X		; 94 77
	tay		; A8
	eor $8A.b,X		; 55 8A
	sta $8E12.w		; 8D 12 8E
	bvc -76.b		; 50 B4
	pha		; 48
	bcs   8.b		; B0 08
	rts		; 60

	tya		; 98
	sty $4A.b,X		; 94 4A
	php		; 08
	stx $AA.b		; 86 AA
	brk $72.b		; 00 72
	bpl  96.b		; 10 60
	brk $60.b		; 00 60
	rti		; 40

	rts		; 60

	bcc -16.b		; 90 F0
	brk $3F.b		; 00 3F
	dec $47.b		; C6 47
	sei		; 78
	cmp [$18.b],Y		; D7 18
	bvs   6.b		; 70 06
	lsr $ADC3.w,X		; 5E C3 AD
	sbc ($CB.b,X)		; E1 CB
	tsx		; BA
	sbc [$0D.b],Y		; F7 0D
	asl $18.b		; 06 18
	sta ($0D.b,X)		; 81 0D
	sbc ($01.b,X)		; E1 01
	sbc $3C01.w,Y		; F9 01 3C
	brk $9F.b		; 00 9F
	bra   7.b		; 80 07
	sta ($07.b,X)		; 81 07
	cmp ($70.b)		; D2 70
	eor [$EA.b]		; 47 EA
	phd		; 0B
	ldy #$AC40.w		; A0 40 AC
	jmp $CFB2.w		; 4C B2 CF
	sei		; 78
	eor $E0.b,S		; 43 E0
	ldy #$2FBF.w		; A0 BF 2F
	cpy $9C.b		; C4 9C
	ora $51.b		; 05 51
	ora $104350.l		; 0F 50 43 10
	cmp ($01.b,X)		; C1 01
	cpy #$E080.w		; C0 80 E0
	eor $A2DFE0.l,X		; 5F E0 DF A2
	ldx #$4848.w		; A2 48 48
	lsr $B64A.w		; 4E 4A B6
	sta ($53.b)		; 92 53
	ora ($ED.b)		; 12 ED
	bit $AD.b		; 24 AD
	bit $5D.b		; 24 5D
	mvp $5F,$F2		; 44 F2 5F
	sbc $FFB7.w,X		; FD B7 FF
	lda $FF.b,X		; B5 FF
	adc $EDFF.w		; 6D FF ED
	sbc $DBFFDB.l,X		; FF DB FF DB
	sbc $D0FCBB.l,X		; FF BB FC D0
	jsr ($BCD8.w,X)		; FC D8 BC
	tay		; A8
	dec $5ECC.w,X		; DE CC 5E
	mvn $54,$DE		; 54 DE 54
	dec $DE50.w,X		; DE 50 DE
	bvc -48.b		; 50 D0
	brk $D8.b		; 00 D8
	brk $E8.b		; 00 E8
	rti		; 40

	cpx $F420.w		; EC 20 F4
	ldy #$A0F4.w		; A0 F4 A0
	beq -96.b		; F0 A0
	beq -96.b		; F0 A0
	beq   7.b		; F0 07
	beq   7.b		; F0 07
	adc ($05.b)		; 72 05
	adc ($05.b)		; 72 05
	sbc $F88C.w,Y		; F9 8C F8
	sty $8C38.w		; 8C 38 8C
	sec		; 38
	sty $01F9.w		; 8C F9 01
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	bra 112.b		; 80 70
	brk $88.b		; 00 88
	stx $8681.w		; 8E 81 86
	sty $86.b		; 84 86
	mvp $40,$C6		; 44 C6 40
	rep #$00		; C2 00
	cmp $22.b,S		; C3 22
	sbc $22.b,S		; E3 22
	adc $74.b,S		; 63 74
	tsb $7C.b		; 04 7C
	tsb $78.b		; 04 78
	brk $B8.b		; 00 B8
	bra  60.b		; 80 3C
	brk $7E.b		; 00 7E
	.db $42, $1C		; 42 1C
	brk $1C.b		; 00 1C
	brk $30.b		; 00 30
	and ($43.b),Y		; 31 43
	sta $FF.b,S		; 83 FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
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
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
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
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$0000.w		; C0 00 00
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
	brk $05.b		; 00 05
	cop $05.b		; 02 05
	cop $0C.b		; 02 0C
	ora $08.b,S		; 03 08
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora [$01.b]		; 07 01
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($03.b,X)		; 01 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $43.b		; 00 43
	ldy $659B.w,X		; BC 9B 65
	plx		; FA
	tsb $74.b		; 04 74
	dey		; 88
	jmp ($D582.w,X)		; 7C 82 D5
	dec A		; 3A
	sta $DB00.w,X		; 9D 00 DB
	jmp $C23C.w		; 4C 3C C2
	brk $EC.b		; 00 EC
	ora $E8.b		; 05 E8
	phb		; 8B
	bvc -125.b		; 50 83
	brk $3B.b		; 00 3B
	and ($73.b)		; 32 73
	tsb $37.b		; 04 37
	php		; 08
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	ora $02.b		; 05 02
	ora #$1306.w		; 09 06 13
	tsb $0C13.w		; 0C 13 0C
	pld		; 2B
	trb $2F.b		; 14 2F
	bpl   1.b		; 10 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $14.b		; 00 14
	php		; 08
	bpl   8.b		; 10 08
	adc ($2E.b,X)		; 61 2E
	mvp $8D,$57		; 44 57 8D
	and ($D7.b,X)		; 21 D7
	bmi -59.b		; 30 C5
	bit $3E9A.w,X		; 3C 9A 3E
	stz $BF3F.w		; 9C 3F BF
	brk $20.b		; 00 20
	sbc ($08.b)		; F2 08
	cpx #$401E.w		; E0 1E 40
	ora $600300.l		; 0F 00 03 60
	ora #$0078.w		; 09 78 00
	jmp ($7E00.w,X)		; 7C 00 7E
	ror $E4.b,X		; 76 E4
	tsx		; BA
	mvp $81,$7E		; 44 7E 81
	asl $EA60.w		; 0E 60 EA
	bit $14D4.w,X		; 3C D4 14
	ldx $7BAA.w,Y		; BE AA 7B
	cmp ($EC.b)		; D2 EC
	ora #$9154.w		; 09 54 91
	bpl  84.b		; 10 54
	bcc  20.b		; 90 14
	cpy $FC00.w		; CC 00 FC
	php		; 08
	ror $7E15.w,X		; 7E 15 7E
	and $1414.w		; 2D 14 14
	cli		; 58
	sed		; F8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pea $FCF8.w		; F4 F8 FC
	php		; 08
	tya		; 98
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($FF00.w,X)		; FC 00 FF
	lda $59.b		; A5 59
	sbc [$1A.b]		; E7 1A
	sbc $1C.b,S		; E3 1C
	cmp [$38.b]		; C7 38
	cmp [$39.b]		; C7 39
	cmp $34CE35.l		; CF 35 CE 34
	cmp $225B25.l,X		; DF 25 5B 22
	inc A		; 1A
	rts		; 60

	trb $3860.w		; 1C 60 38
	rti		; 40

	and $3540.w,Y		; 39 40 35
	rti		; 40

	and $41.b,X		; 35 41
	and $40.b		; 25 40
	sbc #$EB69.w		; E9 69 EB
	adc #$C9CB.w		; 69 CB C9
	phk		; 4B
	eor #$494B.w		; 49 4B 49
	phk		; 4B
	eor #$898B.w		; 49 8B 89
	txy		; 9B
	ora #$167F.w		; 09 7F 16
	adc $36FF16.l,X		; 7F 16 FF 36
	sbc $B6FFB6.l,X		; FF B6 FF B6
	sbc $76FFB6.l,X		; FF B6 FF 76
	adc $282C76.l,X		; 7F 76 2C 28
	tsb $6E08.w		; 0C 08 6E
	bit $286A.w		; 2C 6A 28
	adc $24.b		; 65 24
	adc $5B21.w		; 6D 21 5B
	ora ($77.b),Y		; 11 77
	bpl  40.b		; 10 28
	beq -40.b		; F0 D8
	beq  -4.b		; F0 FC
	bne  -4.b		; D0 FC
	pei ($FE.b)		; D4 FE
	phx		; DA
	xce		; FB
	phx		; DA
	sbc $FCEC.w,X		; FD EC FC
	cpx $0000.w		; EC 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$7800.w		; C0 00 78
	bra   4.b		; 80 04
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $70.b		; 00 70
	ora $006F90.l		; 0F 90 6F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $6F.b		; 00 6F
	bpl  88.b		; 10 58
	ldy #$40B8.w		; A0 B8 40
	tay		; A8
	bvc 104.b		; 50 68
	bcc 120.b		; 90 78
	dey		; 88
	bcs  80.b		; B0 50
	clv		; B8
	bvc  24.b		; 50 18
	cld		; D8
	ldy #$4050.w		; A0 50 40
	bmi  80.b		; 30 50
	brk $90.b		; 00 90
	sty $00.b		; 84 00
	tsb $1810.w		; 0C 10 18
	bpl -68.b		; 10 BC
	bcc  60.b		; 90 3C
	stz $1CD8.w		; 9C D8 1C
	stz $8C1C.w		; 9C 1C 8C
	sty $0F0E.w		; 8C 0E 0F
	ora $ABAB.w		; 0D AB AB
	lda [$B5.b],Y		; B7 B5
	ora $3E185B.l,X		; 1F 5B 18 3E
	php		; 08
	rol $3E04.w,X		; 3E 04 3E
	tsb $1F.b		; 04 1F
	ora $BF92.w		; 0D 92 BF
	pei ($1F.b)		; D4 1F
	dex		; CA
	adc $0000C4.l		; 6F C4 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	sec		; 38
	bit $FCF8.w,X		; 3C F8 FC
	sed		; F8
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	bpl  -2.b		; 10 FE
	sei		; 78
	inc $FC30.w,X		; FE 30 FC
	brk $F8.b		; 00 F8
	eor $2C03.w		; 4D 03 2C
	ora $04.b,S		; 03 04
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	asl $11.b		; 06 11
	asl $0C13.w		; 0E 13 0C
	ora [$01.b],Y		; 17 01
	rol $06.b		; 26 06
	eor $13.b,S		; 43 13
	pld		; 2B
	and ($89.b,X)		; 21 89
	inc A		; 1A
	asl $00.b		; 06 00
	asl $0C00.w		; 0E 00 0C
	brk $01.b		; 00 01
	php		; 08
	ora [$19.b]		; 07 19
	ora $3C.b,S		; 03 3C
	ora ($7E.b,X)		; 01 7E
	brk $7F.b		; 00 7F
	ldx $D460.w		; AE 60 D4
	and ($D0.b,S),Y		; 33 D0
	tsa		; 3B
	inx		; E8
	sbc $6520A7.l		; EF A7 20 65
	and $9CB6.w		; 2D B6 9C
	cmp $1F59.w,X		; DD 59 1F
	brk $0F.b		; 00 0F
	ora $2F.b,S		; 03 2F
	pld		; 2B
	bne   0.b		; D0 00
	sed		; F8
	cld		; D8
	sbc $63F7CA.l,X		; FF CA F7 63
	adc $003F26.l,X		; 7F 26 3F 00
	eor [$2B.b],Y		; 57 2B
	lsr $2A.b,X		; 56 2A
	lsr $2A.b,X		; 56 2A
	ldx $4A.b,Y		; B6 4A
	ldx $4A.b,Y		; B6 4A
	lda [$48.b],Y		; B7 48
	ldx $58.b		; A6 58
	brk $18.b		; 00 18
	pld		; 2B
	bpl  43.b		; 10 2B
	ora ($2B.b),Y		; 11 2B
	ora ($4B.b),Y		; 11 4B
	and ($4B.b),Y		; 31 4B
	and ($48.b),Y		; 31 48
	bmi  89.b		; 30 59
	and ($AF.b,X)		; 21 AF
	ora $CF1FCF.l,X		; 1F CF 1F CF
	sta $435F47.l,X		; 9F 47 5F 43
	eor $AC.b,S		; 43 AC
	stz $03C3.w		; 9C C3 03
	inx		; E8
	tay		; A8
	brk $7F.b		; 00 7F
	ora [$3F.b]		; 07 3F
	sta [$3F.b]		; 87 3F
	cmp $BF.b,S		; C3 BF
	cmp ($BF.b,X)		; C1 BF
	sty $7F.b		; 84 7F
	ora ($3F.b,X)		; 01 3F
	ldy $DD17.w,X		; BC 17 DD
	eor [$F7.b],Y		; 57 F7
	sbc [$FC.b],Y		; F7 FC
	jsr ($E0F0.w,X)		; FC F0 E0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$2000.w		; E0 00 20
	bne -48.b		; D0 D0
	adc $FD2B.w,X		; 7D 2B FD
	wai		; CB
	jsr ($E0E3.w,X)		; FC E3 E0
	sed		; F8
	cpx #$40F0.w		; E0 F0 40
	beq   0.b		; F0 00
	sed		; F8
	rti		; 40

	sed		; F8
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFEFF.l,X		; FF FF FE FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta [$69.b],Y		; 97 69
	sta ($6C.b,S),Y		; 93 6C
	eor $4926.w,Y		; 59 26 49
	rol $4D.b,X		; 36 4D
	and ($2A.b)		; 32 2A
	ora ($2A.b),Y		; 11 2A
	ora ($1B.b),Y		; 11 1B
	brk $69.b		; 00 69
	brk $6C.b		; 00 6C
	brk $26.b		; 00 26
	brk $36.b		; 00 36
	brk $32.b		; 00 32
	brk $11.b		; 00 11
	brk $11.b		; 00 11
	brk $00.b		; 00 00
	brk $9A.b		; 00 9A
	php		; 08
	txy		; 9B
	php		; 08
	xce		; FB
	php		; 08
	adc $CF0EFF.l		; 6F FF 0E CF
	cop $C3.b		; 02 C3
	sta $BF41.w,X		; 9D 41 BF
	adc ($7F.b,X)		; 61 7F
	adc [$7F.b],Y		; 77 7F
	adc [$0F.b],Y		; 77 0F
	ora [$1F.b]		; 07 1F
	bpl 113.b		; 10 71
	eor ($7D.b,X)		; 41 7D
	eor ($3E.b,X)		; 41 3E
	brk $1E.b		; 00 1E
	brk $B5.b		; 00 B5
	bcc -81.b		; 90 AF
	dey		; 88
	ldx $FE8D.w,Y		; BE 8D FE
	sbc $20F312.l,X		; FF 12 F3 20
	sbc ($20.b,X)		; E1 20
	sbc ($21.b,X)		; E1 21
	sbc ($FE.b,X)		; E1 FE
	ror $76FE.w		; 6E FE 76
	jsr ($F070.w,X)		; FC 70 F0
	brk $6C.b		; 00 6C
	rts		; 60

	eor $415F41.l,X		; 5F 41 5F 41
	asl $0000.w,X		; 1E 00 00
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
	brk $F0.b		; 00 F0
	ora [$F2.b]		; 07 F2
	ora $72.b		; 05 72
	ora $72.b		; 05 72
	ora $F9.b		; 05 F9
	sty $8CF8.w		; 8C F8 8C
	sec		; 38
	sty $8C38.w		; 8C 38 8C
	sbc $F801.w,Y		; F9 01 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	bra 112.b		; 80 70
	brk $88.b		; 00 88
	stx $8680.w		; 8E 80 86
	sty $86.b		; 84 86
	mvp $40,$C6		; 44 C6 40
	rep #$00		; C2 00
	cmp $22.b,S		; C3 22
	adc $22.b,S		; 63 22
	adc $74.b,S		; 63 74
	tsb $7C.b		; 04 7C
	tsb $78.b		; 04 78
	brk $B8.b		; 00 B8
	bra  60.b		; 80 3C
	brk $7E.b		; 00 7E
	.db $42, $1C		; 42 1C
	brk $1C.b		; 00 1C
	brk $15.b		; 00 15
	asl A		; 0A
	and $2D12.w		; 2D 12 2D
	ora ($28.b)		; 12 28
	ora [$28.b],Y		; 17 28
	ora [$28.b],Y		; 17 28
	ora [$28.b],Y		; 17 28
	ora [$20.b],Y		; 17 20
	ora $12050A.l,X		; 1F 0A 05 12
	ora $0D12.w		; 0D 12 0D
	ora [$08.b],Y		; 17 08
	ora [$08.b],Y		; 17 08
	ora [$08.b],Y		; 17 08
	ora [$08.b],Y		; 17 08
	ora $8A4E00.l,X		; 1F 00 4E 8A
	lsr $7A96.w,X		; 5E 96 7A
	tax		; AA
	sbc ($12.b,S),Y		; F3 12
	sbc $14.b,X		; F5 14
	sbc $24.b		; E5 24
	sbc [$24.b]		; E7 24
	wai		; CB
	pha		; 48
	tsx		; BA
	and ($B7.b),Y		; 31 B7
	and ($AF.b,X)		; 21 AF
	ora $1F.b		; 05 1F
	ora $0B1F.w		; 0D 1F 0B
	and $1B3F1B.l,X		; 3F 1B 3F 1B
	adc $6B6A37.l,X		; 7F 37 6A 6B
	trb $14.b		; 14 14
	phk		; 4B
	phk		; 4B
	.db $42, $42		; 42 42
	ror A		; 6A
	lsr A		; 4A
	lda #$EB89.w		; A9 89 EB
	bit #$89EB.w		; 89 EB 89
	jsr $94FF.w		; 20 FF 94
	sbc $F7BCEB.l,X		; FF EB BC F7
	lda $B5FF.w,X		; BD FF B5
	sbc $76FF76.l,X		; FF 76 FF 76
	sbc $00C076.l,X		; FF 76 C0 00
	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	rti		; 40

	bvs  32.b		; 70 20
	bvs  32.b		; 70 20
	sei		; 78
	bmi  56.b		; 30 38
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	bra -96.b		; 80 A0
	bra -80.b		; 80 B0
	bra -48.b		; 80 D0
	cpy #$0000.w		; C0 00 00
	ora $00.b,S		; 03 00
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	ora $040B00.l		; 0F 00 0B 04
	asl A		; 0A
	ora $18.b		; 05 18
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	ora $04.b,S		; 03 04
	ora $05.b,S		; 03 05
	cop $07.b		; 02 07
	brk $FE.b		; 00 FE
	brk $83.b		; 00 83
	jmp ($7F80.w,X)		; 7C 80 7F
	stx $79.b		; 86 79
	and [$CA.b],Y		; 37 CA
	sbc $08.b,X		; F5 08
	inx		; E8
	ora ($F8.b),Y		; 11 F8
	ora $00.b		; 05 00
	brk $7C.b		; 00 7C
	brk $7F.b		; 00 7F
	bra 121.b		; 80 79
	sty $00.b		; 84 00
	cld		; D8
	asl A		; 0A
	bne  23.b		; D0 17
	lda ($06.b,X)		; A1 06
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	ora ($04.b,X)		; 01 04
	cop $02.b		; 02 02
	asl $05.b		; 06 05
	tsb $180A.w		; 0C 0A 18
	trb $31.b		; 14 31
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $EE00.w		; 0E 00 EE
	cpx #$3C3D.w		; E0 3D 3C
	cmp [$D1.b],Y		; D7 D1
	eor $260950.l		; 4F 50 09 26
	inc A		; 1A
	ora $04.b,X		; 15 04
	cmp $1B.b,S		; C3 1B
	stz $DF7F.w		; 9C 7F DF
	and $F8C1E3.l,X		; 3F E3 C1 F8
	brk $F6.b		; 00 F6
	bra 119.b		; 80 77
	sta ($76.b,X)		; 81 76
	ora $38.b,S		; 03 38
	brk $7C.b		; 00 7C
	cmp $7AD1.w,X		; DD D1 7A
	adc ($F7.b)		; 72 F7
	adc $EE.b		; 65 EE
	rti		; 40

	xce		; FB
	ora $FE.b		; 05 FE
	brk $52.b		; 00 52
	sty $04FA.w		; 8C FA 04
	lda $8DDE0E.l,X		; BF 0E DE 8D
	sbc $509B.w,X		; FD 9B 50
	ora ($21.b),Y		; 11 21
	lda $2520.w		; AD 20 25
	lda $0520.w		; AD 20 05
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	eor ($81.b,X)		; 41 81
	cmp ($80.b,X)		; C1 80
	cpy #$4202.w		; C0 02 42
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C1.b		; 00 C1
	brk $83.b		; 00 83
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	bra   7.b		; 80 07
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $2C62.w		; 2C 62 2C
	.db $62, $2C, $62		; 62 2C 62
	jsr $0462.w		; 20 62 04
	dec $70.b		; C6 70
	cpy $B8.b		; C4 B8
	sty $0860.w		; 8C 60 08
	trb $1C00.w		; 1C 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $78.b		; 00 78
	rti		; 40

	clv		; B8
	bra 112.b		; 80 70
	brk $F0.b		; 00 F0
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $80.b		; 00 80
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
	bcs -32.b		; B0 E0
	beq -80.b		; F0 B0
	sed		; F8
	sei		; 78
	jmp ($3EFE.w,X)		; 7C FE 3E
	lda $01.b		; A5 01
	sta $00000F.l,X		; 9F 0F 00 00
	cpx #$80A0.w		; E0 A0 80
	brk $C0.b		; 00 C0
	rti		; 40

	cpx #$3E80.w		; E0 80 3E
	brk $1F.b		; 00 1F
	asl $000F.w,X		; 1E 0F 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E0C0.w		; C0 C0 E0
	rts		; 60

	cpx #$40A0.w		; E0 A0 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$60E0.w		; C0 E0 60
	beq  32.b		; F0 20
	beq   0.b		; F0 00
	beq  34.b		; F0 22
	ora $1D22.w,X		; 1D 22 1D
	and ($0D.b)		; 32 0D
	ora ($0D.b)		; 12 0D
	asl $09.b,X		; 16 09
	ora [$08.b],Y		; 17 08
	ora $08.b,X		; 15 08
	tsb $1D00.w		; 0C 00 1D
	brk $1D.b		; 00 1D
	brk $0D.b		; 00 0D
	brk $0D.b		; 00 0D
	brk $09.b		; 00 09
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $CB.b		; 00 CB
	eor #$816F.w		; 49 6F 81
	adc $DB2781.l,X		; 7F 81 27 DB
	and $DD2DDF.l		; 2F DF 2D DD
	brk $F8.b		; 00 F8
	sta $78.b,S		; 83 78
	adc $169736.l,X		; 7F 36 97 16
	sta [$06.b]		; 87 06
	wai		; CB
	php		; 08
	cmp ($00.b,X)		; C1 00
	rep #$00		; C2 00
	sbc $086F08.l		; EF 08 6F 08
	rtl		; 6B

	ora #$086A.w		; 09 6A 08
	nop		; EA
	php		; 08
	xba		; EB
	php		; 08
	xba		; EB
	php		; 08
	sbc $7769FF.l,X		; FF FF 69 77
	lda #$FF37.w		; A9 37 FF
	inc $FF.b,X		; F6 FF
	sbc [$FF.b],Y		; F7 FF
	sbc [$FF.b],Y		; F7 FF
	sbc [$FF.b],Y		; F7 FF
	sbc [$FF.b],Y		; F7 FF
	brk $82.b		; 00 82
	cop $C2.b		; 02 C2
	cop $38.b		; 02 38
	bpl -104.b		; 10 98
	bra -112.b		; 80 90
	bra -112.b		; 80 90
	dey		; 88
	cpx #$F0F8.w		; E0 F8 F0
	jsr ($0C08.w,X)		; FC 08 0C
	brk $06.b		; 00 06
	bne -64.b		; D0 C0
	cpx #$E060.w		; E0 60 E0
	rts		; 60

	cpx #$F060.w		; E0 60 F0
	bpl -120.b		; 10 88
	php		; 08
	beq   0.b		; F0 00
	jsr ($1104.w,X)		; FC 04 11
	asl $0E11.w		; 0E 11 0E
	ora ($0E.b),Y		; 11 0E
	ora ($0C.b,S),Y		; 13 0C
	and $1C.b,S		; 23 1C
	and [$1B.b]		; 27 1B
	jmp ($BC1C.w,X)		; 7C 1C BC
	jsr $000E.w		; 20 0E 00
	asl $0E00.w		; 0E 00 0E
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $1B.b		; 00 1B
	brk $1F.b		; 00 1F
	ora $3F.b,S		; 03 3F
	eor $3B74AB.l,X		; 5F AB 74 3B
	brk $B6.b		; 00 B6
	sta $C15F.w,Y		; 99 5F C1
	tay		; A8
	adc [$A5.b]		; 67 A5
	sbc ($D3.b)		; F2 D3
	jmp.w [$4B53]		; DC 53 4B
	ror $64.b,X		; 76 64
	inc $09.b		; E6 09
	adc $003E10.l		; 6F 10 3E 00
	asl $DC06.w,X		; 1E 06 DC
	bvc -96.b		; 50 A0
	brk $F7.b		; 00 F7
	ldy $70.b,X		; B4 70
	bvs -73.b		; 70 B7
	sta $FFBFEF.l,X		; 9F EF BF FF
	lda $61BCA0.l,X		; BF A0 BC 61
	.db $62, $5D, $22		; 62 5D 22
	eor $7022.w,X		; 5D 22 70
	ora $E76FF0.l		; 0F F0 6F E7
	eor $E05FEC.l,X		; 5F EC 5F E0
	eor $221C62.l,X		; 5F 62 1C 22
	trb $1C22.w		; 1C 22 1C
	jmp ($BF3F.w,X)		; 7C 3F BF
	jsr ($FDBB.w,X)		; FC BB FD
	ora $83.b,S		; 03 83
	ora ($17.b,S),Y		; 13 17
	adc $63.b,S		; 63 63
	cpx $EC.b		; E4 EC
	sbc $07.b,S		; E3 07
	tas		; 1B
	jsr ($FE38.w,X)		; FC 38 FE
	bpl  -3.b		; 10 FD
	ora ($FF.b,X)		; 01 FF
	adc ($EF.b),Y		; 71 EF
	sbc ($9F.b,X)		; E1 9F
	cpx #$011F.w		; E0 1F 01
	ora $FFA856.l,X		; 1F 56 A8 FF
	bvs  -9.b		; 70 F7
	sed		; F8
	sbc $F9FFF8.l,X		; FF F8 FF F9
	sbc [$F9.b],Y		; F7 F9
	sbc ($F9.b,S),Y		; F3 F9
	adc $74.b,S		; 63 74
	bit #$6020.w		; 89 20 60
	ror $E0.b,X		; 76 E0
	plx		; FA
	beq  -8.b		; F0 F8
	sbc ($F8.b),Y		; F1 F8
	sbc ($F8.b),Y		; F1 F8
	sbc ($FC.b,X)		; E1 FC
	rts		; 60

	jsr ($6100.w,X)		; FC 00 61
	eor $63.b,S		; 43 63
	ora [$27.b]		; 07 27
	ror $DC7F.w,X		; 7E 7F DC
	stz $5C78.w,X		; 9E 78 5C
	ldy #$E0B8.w		; A0 B8 E0
	cpx #$43C0.w		; E0 C0 43
	bra   7.b		; 80 07
	rep #$0F		; C2 0F
	inc $0F.b,X		; F6 0F
	jsr ($F86F.w,X)		; FC 6F F8
	ldx $5CE0.w		; AE E0 5C
	cpx #$0018.w		; E0 18 00
	asl $02.b		; 06 02
	asl $01.b		; 06 01
	tsb $01.b		; 04 01
	tsb $0C07.w		; 0C 07 0C
	cop $08.b		; 02 08
	ora [$19.b]		; 07 19
	tsb $0319.w		; 0C 19 03
	cop $01.b		; 02 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	tsb $03.b		; 04 03
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	php		; 08
	asl $00.b		; 06 00
	beq  24.b		; F0 18
	cpy #$A010.w		; C0 10 A0
	bmi -64.b		; 30 C0
	rts		; 60

	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpx #$E000.w		; E0 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
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
	stz $03.b		; 64 03
	lsr $01.b		; 46 01
	.db $42, $01		; 42 01
	sta $00.b,S		; 83 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $9E40.w,X		; 9E 40 9E
	rti		; 40

	ldx $AF60.w,Y		; BE 60 AF
	adc ($8F.b,X)		; 61 8F
	adc ($0E.b,X)		; 61 0E
	adc ($0E.b,X)		; 61 0E
	and ($06.b,X)		; 21 06
	and ($3F.b,X)		; 21 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	jsr $213F.w		; 20 3F 21
	ora $001E01.l,X		; 1F 01 1E 00
	rti		; 40

	tya		; 98
	tsb $9C.b		; 04 9C
	tsb $8C.b		; 04 8C
	cop $8E.b		; 02 8E
	ora ($87.b,X)		; 01 87
	brk $83.b		; 00 83
	brk $81.b		; 00 81
	brk $01.b		; 00 01
	ora $080B08.l		; 0F 08 0B 08
	ora $00.b,S		; 03 00
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0030.w		; 20 30 00
	clc		; 18
	bpl  24.b		; 10 18
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	php		; 08
	tsb $8680.w		; 0C 80 86
	mvp $C0,$C6		; 44 C6 C0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	jmp ($B804.w,X)		; 7C 04 B8
	bra   0.b		; 80 00
.ACCU 16
	rep #$20		; C2 20
	adc $10.b,S		; 63 10
	adc ($14.b,S),Y		; 73 14
	and [$16.b],Y		; 37 16
	and [$12.b],Y		; 37 12
	and ($02.b,S),Y		; 33 02
	and $02.b,S		; 23 02
	and $7C.b,S		; 23 7C
	rti		; 40

	asl $2E02.w,X		; 1E 02 2E
	jsl $08020A.l		; 22 0A 02 08
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	cli		; 58
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
	brk $42.b		; 00 42
	brk $42.b		; 00 42
	brk $42.b		; 00 42
	jsr $2062.w		; 20 62 20
	.db $62, $00, $62		; 62 00 62
	brk $62.b		; 00 62
	bpl  50.b		; 10 32
	bit $3C00.w,X		; 3C 00 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	jsr $203C.w		; 20 3C 20
	tsb $0400.w		; 0C 00 04
	ora ($1C.b,S),Y		; 13 1C
	rol $00.b,X		; 36 00
	bit $08.b		; 24 08
	bit $7830.w		; 2C 30 78
	brk $58.b		; 00 58
	rti		; 40

	bne  32.b		; D0 20
	bcs  14.b		; B0 0E
	cop $08.b		; 02 08
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bpl  32.b		; 10 20
	brk $40.b		; 00 40
	brk $10.b		; 00 10
	and ($00.b)		; 32 00
	and ($00.b)		; 32 00
	and ($00.b)		; 32 00
	ora ($00.b)		; 12 00
	ora ($00.b)		; 12 00
	ora ($08.b)		; 12 08
	inc A		; 1A
	php		; 08
	inc A		; 1A
	tsb $1C00.w		; 0C 00 1C
	bpl  28.b		; 10 1C
	bpl  12.b		; 10 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	cpy #$40B0.w		; C0 B0 40
	bvs -128.b		; 70 80
	bvc -96.b		; 50 A0
	bne  32.b		; D0 20
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	ldy #$6080.w		; A0 80 60
	ldy #$2000.w		; A0 00 20
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($07.b,X)		; 01 07
	brk $05.b		; 00 05
	cop $05.b		; 02 05
	cop $0C.b		; 02 0C
	ora $08.b,S		; 03 08
	ora [$00.b]		; 07 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($03.b,X)		; 01 03
	brk $07.b		; 00 07
	brk $C1.b		; 00 C1
	rol $BF40.w,X		; 3E 40 BF
	eor $BC.b,S		; 43 BC
	txy		; 9B
	adc $FA.b		; 65 FA
	tsb $74.b		; 04 74
	dey		; 88
	jmp ($D582.w,X)		; 7C 82 D5
	dec A		; 3A
	rol $BF00.w,X		; 3E 00 BF
	rti		; 40

	bit $00C2.w,X		; 3C C2 00
	cpx $E805.w		; EC 05 E8
	phb		; 8B
	bvc -125.b		; 50 83
	brk $3B.b		; 00 3B
	and ($78.b)		; 32 78
	cli		; 58
	sbc #$CDA9.w		; E9 A9 CD
	eor #$51D5.w		; 49 D5 51
	stx $92.b,Y		; 96 92
	sta $222F92.l,X		; 9F 92 2F 22
	and $DE24.w		; 2D 24 DE
	sta [$BF.b]		; 87 BF
	asl $7F.b,X		; 16 7F
	rol $7F.b,X		; 36 7F
	rol $6DFF.w		; 2E FF 6D
	sbc $DDFF6D.l,X		; FF 6D FF DD
	sbc $5053DB.l,X		; FF DB 53 50
	and $090B2C.l		; 2F 2C 0B 09
	lda #$A528.w		; A9 28 A5
	bit $AD.b		; 24 AD
	bit $AC.b		; 24 AC
	bit $AC.b		; 24 AC
	bit $50.b		; 24 50
	jsr ($F0AC.w,X)		; FC AC F0
	cmp $FEF4.w,X		; DD F4 FE
	dec $FE.b,X		; D6 FE
	phx		; DA
	inc $FFDA.w,X		; FE DA FF
	stp		; DB
	sbc $0000DB.l,X		; FF DB 00 00
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
	clc		; 18
	cpy $58.b		; C4 58
	cpy $40.b		; C4 40
	cpy $08.b		; C4 08
	sty $8CA0.w		; 8C A0 8C
	bvs  24.b		; 70 18
	cpy #$E018.w		; C0 18 E0
	bmi 120.b		; 30 78
	rti		; 40

	sec		; 38
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	php		; 08
	cpx #$F000.w		; E0 00 F0
	bpl -64.b		; 10 C0
	brk $23.b		; 00 23
	ora $1D.b,S		; 03 1D
	ora $2544.w,X		; 1D 44 25
	jsr $5162.w		; 20 62 51
	cmp ($A0.b,X)		; C1 A0
	sty $1941.w		; 8C 41 19
	ora [$03.b]		; 07 03
	ora $1E.b,S		; 03 1E
	tsb $003F.w		; 0C 3F 00
	ora $380718.l,X		; 1F 18 07 38
	ora [$70.b]		; 07 70
	ora $E0.b,S		; 03 E0
	ora [$01.b]		; 07 01
	sbc $7FC7D7.l,X		; FF D7 C7 7F
	asl $FE.b,X		; 16 FE
	tsb $9F.b		; 04 9F
	rts		; 60

	lda $384550.l		; AF 50 45 38
	lda $FAC5C0.l,X		; BF C0 C5 FA
	sbc $1F38.w,X		; FD 38 1F
	bit #$6105.w		; 89 05 61
	cop $7A.b		; 02 7A
	ora ($62.b)		; 12 62
	dec A		; 3A
	.db $82, $00, $C0		; 82 00 C0
	clv		; B8
.ACCU 16
	rep #$A8		; C2 A8
	plp		; 28
	bvs  80.b		; 70 50
	inx		; E8
	php		; 08
	bcs  84.b		; B0 54
	inx		; E8
	tsb $CC28.w		; 0C 28 CC
	ldy #$6044.w		; A0 44 60
	stx $E0.b		; 86 E0
	jmp.w [$BCD0]		; DC D0 BC
	brk $1C.b		; 00 1C
	bpl -40.b		; 10 D8
	brk $50.b		; 00 50
	bne   0.b		; D0 00
	cli		; 58
	brk $9C.b		; 00 9C
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	trb $161E.w		; 1C 1E 16
	asl $240A.w		; 0E 0A 24
	bit $08.b		; 24 08
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $3E0C.w		; 1C 0C 3E
	asl $3F.b		; 06 3F
	cop $7F.b		; 02 7F
	brk $7F.b		; 00 7F
	brk $3E.b		; 00 3E
	bra  64.b		; 80 40
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	rti		; 40

	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra  64.b		; 80 40
	rti		; 40

	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00A0.w		; C0 A0 00
.ACCU 16
	rep #$20		; C2 20
	.db $62, $10, $73		; 62 10 73
	trb $37.b		; 14 37
	asl $37.b,X		; 16 37
	ora ($33.b)		; 12 33
	cop $23.b		; 02 23
	brk $21.b		; 00 21
	jmp ($1C40.w,X)		; 7C 40 1C
	brk $2E.b		; 00 2E
	jsl $08020A.l		; 22 0A 02 08
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $03.b		; 00 03
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	cop $03.b		; 02 03
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	cpy #$40E0.w		; C0 E0 40
	cpx #$0040.w		; E0 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	jsr $E080.w		; 20 80 E0
	cpy #$00E0.w		; C0 E0 00
	bmi  32.b		; 30 20
	bmi   0.b		; 30 00
	bpl -128.b		; 10 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	rti		; 40

	brk $00.b		; 00 00
	cpx #$C020.w		; E0 20 C0
	brk $E0.b		; 00 E0
	brk $0F.b		; 00 0F
	cpx #$B05F.w		; E0 5F B0
	ora $7097F0.l,X		; 1F F0 97 70
	sta [$70.b],Y		; 97 70
	dec $30.b,X		; D6 30
	sta [$31.b]		; 87 31
	asl $31.b		; 06 31
	lda $008F20.l,X		; BF 20 8F 00
	cmp $004F00.l		; CF 00 4F 00
	eor $000F00.l		; 4F 00 0F 00
	asl $1F10.w,X		; 1E 10 1F
	ora ($08.b),Y		; 11 08
	ora [$08.b]		; 07 08
	ora [$09.b]		; 07 09
	asl $11.b		; 06 11
	asl $0D13.w		; 0E 13 0D
	rol $5E0E.w,X		; 3E 0E 5E
	bpl  59.b		; 10 3B
	sec		; 38
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	asl $0D00.w		; 0E 00 0D
	brk $0F.b		; 00 0F
	ora ($1F.b,X)		; 01 1F
	and $9D771F.l		; 2F 1F 77 9D
	brk $DB.b		; 00 DB
	jmp $60AF.w		; 4C AF 60
	pei ($33.b)		; D4 33
	cmp ($F9.b)		; D2 F9
	adc #$296E.w		; 69 6E 29
	and $B7.b		; 25 B7
	bit $73.b,X		; 34 73
	tsb $37.b		; 04 37
	php		; 08
	ora $030F00.l,X		; 1F 00 0F 03
	inc $D028.w		; EE 28 D0
	bra  -5.b		; 80 FB
	phx		; DA
	sbc $04BDC3.l		; EF C3 BD 04
	sbc $6C9F04.l,X		; FF 04 9F 6C
	sta $73937C.l,X		; 9F 7C 93 73
	sta $61.b		; 85 61
	asl $0FE0.w		; 0E E0 0F
	cpx #$5B5F.w		; E0 5F 5B
	ora $232F1B.l,X		; 1F 1B 2F 23
	and [$23.b]		; 27 23
	and $203E20.l		; 2F 20 3E 20
	lda $20BF20.l,X		; BF 20 BF 20
	tax		; AA
	jsl $AE22AA.l		; 22 AA 22 AE
	jsl $FF23AF.l		; 22 AF 23 FF
	sbc $A4FE06.l,X		; FF 06 FE A4
	jmp.w [$5C24]		; DC 24 5C
	sbc $DDFFDD.l,X		; FF DD FF DD
	sbc $DCFFDD.l,X		; FF DD FF DC
	inc $8900.w,X		; FE 00 89
	dey		; 88
	phd		; 0B
	php		; 08
	phb		; 8B
	php		; 08
	ora ($0C.b,X)		; 01 0C
	ora [$0C.b]		; 07 0C
	ora $08.b,S		; 03 08
	cop $18.b		; 02 18
	ora $110419.l		; 0F 19 04 11
	asl $13.b		; 06 13
	clc		; 18
	and ($07.b)		; 32 07
	tsb $03.b		; 04 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	php		; 08
	asl $00.b		; 06 00
	asl $0C00.w		; 0E 00 0C
	brk $0C.b		; 00 0C
	brk $80.b		; 00 80
	jsr $6040.w		; 20 40 60
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7B.b		; 00 7B
	sbc $F0FFFB.l,X		; FF FB FF F0
	sed		; F8
	ora ($C1.b,X)		; 01 C1
	asl $26.b,X		; 16 26
	dec $DE2E.w,X		; DE 2E DE
	jsr $22D3.w		; 20 D3 22
	ora $FF.b,S		; 03 FF
	adc ($FF.b),Y		; 71 FF
	cpy #$07FF.w		; C0 FF 07
	inc $C92E.w,X		; FE 2E C9
	rol $20C1.w		; 2E C1 20
	cmp ($2E.b,X)		; C1 2E
	cpy $C7FF.w		; CC FF C7
	lda $3F3FDF.l,X		; BF DF 3F 3F
	and $3F3F7F.l,X		; 3F 7F 3F 3F
	eor $7736CF.l		; 4F CF 36 77
	txs		; 9A
	txs		; 9A
	stx $E7.b		; 86 E7
	asl $1FDF.w		; 0E DF 1F
	sbc $1FFF1F.l,X		; FF 1F FF 1F
	sbc $16FF0E.l,X		; FF 0E FF 16
	sbc $F47F88.l,X		; FF 88 7F F4
	asl $70.b		; 06 70
	.db $82, $F7, $87		; 82 F7 87
	cmp $77B9.w,X		; DD B9 77
	sta $3A.b,X		; 95 3A
	txy		; 9B
	rol $B04E.w,X		; 3E 4E B0
	cpy #$6008.w		; C0 08 60
	tsb $0FA0.w		; 0C A0 0F
	bra  31.b		; 80 1F
	stx $1F.b		; 86 1F
	txa		; 8A
	asl $0EC5.w,X		; 1E C5 0E
	cmp ($00.b,X)		; C1 00
	cpy #$3830.w		; C0 30 38
	bvs 112.b		; 70 70
	cpx #$C0F0.w		; E0 F0 C0
	cpx #$C080.w		; E0 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	jsr $60F8.w		; 20 F8 60
	sed		; F8
	cpy #$80F0.w		; C0 F0 80
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bmi  76.b		; 30 4C
	lda ($CE.b)		; B2 CE
	jsl $8721C6.l		; 22 C6 21 87
	ora ($83.b,X)		; 01 83
	brk $83.b		; 00 83
	brk $81.b		; 00 81
	brk $80.b		; 00 80
	sta [$04.b]		; 87 04
	ora $04.b		; 05 04
	sta ($80.b,X)		; 81 80
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	bpl  24.b		; 10 18
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	php		; 08
	tsb $8480.w		; 0C 80 84
	brk $86.b		; 00 86
	mvp $F0,$C6		; 44 C6 F0
	bpl -32.b		; 10 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	sei		; 78
	brk $FC.b		; 00 FC
	sty $38.b		; 84 38
	brk $2D.b		; 00 2D
	ora ($5D.b)		; 12 5D
	jsl $55225D.l		; 22 5D 22 55
	rol A		; 2A
	eor $2A.b,X		; 55 2A
	adc ($0C.b,S),Y		; 73 0C
	lda $5C.b,S		; A3 5C
	lda $5C.b,S		; A3 5C
	ora ($0C.b)		; 12 0C
	jsl $1C221C.l		; 22 1C 22 1C
	rol A		; 2A
	trb $2A.b		; 14 2A
	trb $0C.b		; 14 0C
	bmi  92.b		; 30 5C
	jsr $205C.w		; 20 5C 20
	lda $5C.b,S		; A3 5C
	sta $7D.b,S		; 83 7D
	phb		; 8B
	adc $89.b,X		; 75 89
	ror $49.b,X		; 76 49
	rol $48.b,X		; 36 48
	and [$48.b],Y		; 37 48
	and [$48.b],Y		; 37 48
	and [$5C.b],Y		; 37 5C
	jsr $007D.w		; 20 7D 00
	adc $00.b,X		; 75 00
	ror $00.b,X		; 76 00
	rol $00.b,X		; 36 00
	and [$00.b],Y		; 37 00
	and [$00.b],Y		; 37 00
	and [$00.b],Y		; 37 00
	bit $2C13.w		; 2C 13 2C
	ora ($3A.b,S),Y		; 13 3A
	ora ($1A.b,X)		; 01 1A
	ora ($11.b,X)		; 01 11
	brk $11.b		; 00 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $13.b		; 00 13
	brk $13.b		; 00 13
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	pla		; 68
	bpl  88.b		; 10 58
	brk $58.b		; 00 58
	bcc -40.b		; 90 D8
	bne -40.b		; D0 D8
	inx		; E8
	pla		; 68
	ldy $DC3C.w,X		; BC 3C DC
	tsb $10.b		; 04 10
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	bpl -32.b		; 10 E0
	rti		; 40

	cpx #$5800.w		; E0 00 58
	brk $7C.b		; 00 7C
	rti		; 40

	bit $A638.w,X		; 3C 38 A6
	jsl $003E3E.l		; 22 3E 3E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	trb $003E.w		; 1C 3E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	rti		; 40

	cpy $40.b		; C4 40
	cpy $00.b		; C4 00
	cpy $00.b		; C4 00
	cpy $00.b		; C4 00
	mvp $64,$20		; 44 20 64
	brk $64.b		; 00 64
	sei		; 78
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	rti		; 40

	sei		; 78
	rti		; 40

	sec		; 38
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	jsr $6600.w		; 20 00 66
	brk $26.b		; 00 26
	trb $36.b		; 14 36
	tsb $36.b		; 04 36
	tsb $16.b		; 04 16
	brk $12.b		; 00 12
	php		; 08
	inc A		; 1A
	php		; 08
	inc A		; 1A
	bit $1C24.w,X		; 3C 24 1C
	tsb $08.b		; 04 08
	brk $18.b		; 00 18
	bpl   8.b		; 10 08
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	bcs -32.b		; B0 E0
	beq -80.b		; F0 B0
	sed		; F8
	sei		; 78
	jmp ($3EFE.w,X)		; 7C FE 3E
	lda $01.b		; A5 01
	sta $00000F.l,X		; 9F 0F 00 00
	cpx #$80A0.w		; E0 A0 80
	brk $C0.b		; 00 C0
	rti		; 40

	cpx #$3E80.w		; E0 80 3E
	brk $1F.b		; 00 1F
	asl $000F.w,X		; 1E 0F 00
	brk $00.b		; 00 00
	asl $13.b		; 06 13
	clc		; 18
	and ($0C.b)		; 32 0C
	rol $10.b		; 26 10
	bit $18.b		; 24 18
	bit $6820.w		; 2C 20 68
	bpl  88.b		; 10 58
	brk $58.b		; 00 58
	tsb $0C00.w		; 0C 00 0C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $10.b		; 00 10
	cpx #$A058.w		; E0 58 A0
	clv		; B8
	rti		; 40

	tay		; A8
	bvc 104.b		; 50 68
	bcc 112.b		; 90 70
	bra -96.b		; 80 A0
	rti		; 40

	brk $00.b		; 00 00
	cpx #$A000.w		; E0 00 A0
	bvc  64.b		; 50 40
	bmi  80.b		; 30 50
	brk $90.b		; 00 90
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $07.b,S		; 03 07
	ora [$0B.b]		; 07 0B
	ora #$0B0E.w		; 09 0E 0B
	ora $0B0A0B.l		; 0F 0B 0A 0B
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $050E06.l		; 0F 06 0E 05
	asl $0E05.w		; 0E 05 0E
	ora $06.b		; 05 06
	ora ($2F.b,X)		; 01 2F
	bit $090B.w		; 2C 0B 09
	lda #$A528.w		; A9 28 A5
	bit $AD.b		; 24 AD
	bit $AC.b		; 24 AC
	bit $AC.b		; 24 AC
	bit $AA.b		; 24 AA
	jsl $DDF0AC.l		; 22 AC F0 DD
	pea $D6FE.w		; F4 FE D6
	inc $FEDA.w,X		; FE DA FE
	phx		; DA
	sbc $DBFFDB.l,X		; FF DB FF DB
	sbc $0080DD.l,X		; FF DD 80 00
	cpy #$C000.w		; C0 00 C0
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	cpy #$40E0.w		; C0 E0 40
	cpx #$6040.w		; E0 40 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	bra  -9.b		; 80 F7
	adc $EE.b		; 65 EE
	rti		; 40

	xce		; FB
	ora $FE.b		; 05 FE
	brk $52.b		; 00 52
	sty $04FA.w		; 8C FA 04
	lsr $A8.b,X		; 56 A8
	sbc $9BFD70.l,X		; FF 70 FD 9B
	bvc  17.b		; 50 11
	and ($AD.b,X)		; 21 AD
	jsr $AD25.w		; 20 25 AD
	jsr $0005.w		; 20 05 00
	bit #$6020.w		; 89 20 60
	ror $00.b,X		; 76 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	eor ($81.b,X)		; 41 81
	cmp ($80.b,X)		; C1 80
	cpy #$4202.w		; C0 02 42
	brk $61.b		; 00 61
	eor $63.b,S		; 43 63
	brk $C0.b		; 00 C0
	brk $C1.b		; 00 C1
	brk $83.b		; 00 83
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	bra   7.b		; 80 07
	cpy #$8043.w		; C0 43 80
	ora [$02.b]		; 07 02
	asl $05.b		; 06 05
	tsb $180A.w		; 0C 0A 18
	trb $31.b		; 14 31
	bvs 112.b		; 70 70
	lda [$9F.b],Y		; B7 9F
	sbc $BFFFBF.l		; EF BF FF BF
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $7000.w		; 0E 00 70
	ora $E76FF0.l		; 0F F0 6F E7
	eor $095FEC.l,X		; 5F EC 5F 09
	rol $1A.b		; 26 1A
	ora $04.b,X		; 15 04
	cmp $1B.b,S		; C3 1B
	stz $3F7C.w		; 9C 7C 3F
	lda $FDBBFC.l,X		; BF FC BB FD
	ora $83.b,S		; 03 83
	bra 119.b		; 80 77
	sta ($76.b,X)		; 81 76
	ora $38.b,S		; 03 38
	brk $7C.b		; 00 7C
	tas		; 1B
	jsr ($FE38.w,X)		; FC 38 FE
	bpl  -3.b		; 10 FD
	ora ($FF.b,X)		; 01 FF
	eor ($2C.b,S),Y		; 53 2C
	eor ($2C.b,S),Y		; 53 2C
	eor $3C.b,S		; 43 3C
	eor $3D.b,S		; 43 3D
	phk		; 4B
	and $49.b,X		; 35 49
	rol $49.b,X		; 36 49
	rol $48.b,X		; 36 48
	and [$2C.b],Y		; 37 2C
	bpl  44.b		; 10 2C
	bpl  60.b		; 10 3C
	brk $3D.b		; 00 3D
	brk $35.b		; 00 35
	brk $36.b		; 00 36
	brk $36.b		; 00 36
	brk $37.b		; 00 37
	brk $D5.b		; 00 D5
	eor ($96.b),Y		; 51 96
	sta ($9F.b)		; 92 9F
	sta ($2F.b)		; 92 2F
	jsl $BD242D.l		; 22 2D 24 BD
	tsb $FF.b		; 04 FF
	tsb $9F.b		; 04 9F
	jmp ($2E7F.w)		; 6C 7F 2E
	sbc $6DFF6D.l,X		; FF 6D FF 6D
	sbc $DBFFDD.l,X		; FF DD FF DB
	eor $1B1F5B.l,X		; 5F 5B 1F 1B
	and $000023.l		; 2F 23 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $073800.l		; 0F 00 38 07
	pha		; 48
	and [$48.b],Y		; 37 48
	and [$00.b],Y		; 37 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $37.b		; 00 37
	php		; 08
	and [$18.b]		; 27 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$3C00.w		; E0 00 3C
	cpy #$FC02.w		; C0 02 FC
	rtl		; 6B

	sty $00.b,X		; 94 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $FC.b		; 00 FC
	brk $94.b		; 00 94
	lsr A		; 4A
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	brk $0C.b		; 00 0C
	tsb $0C.b		; 04 0C
	asl A		; 0A
	clc		; 18
	asl $30.b		; 06 30
	ora [$31.b],Y		; 17 31
	tsb $0161.w		; 0C 61 01
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	tsb $03.b		; 04 03
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	bpl  14.b		; 10 0E
	brk $3F.b		; 00 3F
	and ($C0.b,X)		; 21 C0
	jsr $6040.w		; 20 40 60
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	cpy #$8000.w		; C0 00 80
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2C.b		; 00 2C
	pha		; 48
	jmp ($6C68.w)		; 6C 68 6C
	stz $34.b,X		; 74 34
	lsr $6E1E.w,X		; 5E 1E 6E
	cop $53.b		; 02 53
	ora ($1F.b),Y		; 11 1F
	ora $700818.l,X		; 1F 18 08 70
	jsr $0070.w		; 20 70 00
	bit $3E00.w		; 2C 00 3E
	jsr $1C1E.w		; 20 1E 1C
	ora $001F0E.l,X		; 1F 0E 1F 00
	pld		; 2B
	clc		; 18
	phd		; 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	ora $18.b,S		; 03 18
	ora $18.b,S		; 03 18
	ora $18.b,S		; 03 18
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $080F08.l		; 0F 08 0F 08
	ora $239D08.l		; 0F 08 9D 23
	cld		; D8
	adc $D8.b,S		; 63 D8
	adc $18.b,S		; 63 18
	adc ($18.b,X)		; 61 18
	eor ($80.b,X)		; 41 80
	cpy #$C080.w		; C0 80 C0
	brk $C0.b		; 00 C0
	cpy #$8100.w		; C0 00 81
	ora ($81.b,X)		; 01 81
	ora ($C0.b,X)		; 01 C0
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E0C0.w		; C0 C0 E0
	rts		; 60

	cpx #$40A0.w		; E0 A0 40
	rti		; 40

	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$60E0.w		; C0 E0 60
	beq  32.b		; F0 20
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$C000.w		; E0 00 C0
	tax		; AA
	jsl $AF22AE.l		; 22 AE 22 AF
	and $FF.b,S		; 23 FF
	sbc $28FE0E.l,X		; FF 0E FE 28
	cld		; D8
	jsr $24D8.w		; 20 D8 24
	jmp.w [$DDFF]		; DC FF DD
	sbc $DCFFDD.l,X		; FF DD FF DC
	inc $9100.w,X		; FE 00 91
	bcc -121.b		; 90 87
	bra -113.b		; 80 8F
	dey		; 88
	phb		; 8B
	dey		; 88
	rti		; 40

	brk $40.b		; 00 40
	brk $80.b		; 00 80
	cpx #$E0C0.w		; E0 C0 E0
	rti		; 40

	rts		; 60

	brk $30.b		; 00 30
	jsr $2030.w		; 20 30 20
	bmi -128.b		; 30 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	rti		; 40

	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$C020.w		; E0 20 C0
	brk $C0.b		; 00 C0
	brk $F7.b		; 00 F7
	sed		; F8
	sbc $FBFDF8.l,X		; FF F8 FD FB
	sbc [$F9.b],Y		; F7 F9
	sbc ($F9.b,S),Y		; F3 F9
	adc $74.b,S		; 63 74
	plb		; AB
	ldy $5053.w		; AC 53 50
	cpx #$F0FA.w		; E0 FA F0
	sed		; F8
	sbc ($F8.b),Y		; F1 F8
	sbc ($F8.b),Y		; F1 F8
	sbc ($FC.b,X)		; E1 FC
	rts		; 60

	jsr ($FC80.w,X)		; FC 80 FC
	bvc  -4.b		; 50 FC
	ora [$27.b]		; 07 27
	ror $DC7F.w,X		; 7E 7F DC
	stz $5C78.w,X		; 9E 78 5C
	ldy #$E0B8.w		; A0 B8 E0
	cpx #$0080.w		; E0 80 00
	bra   0.b		; 80 00
	rep #$0F		; C2 0F
	inc $0F.b,X		; F6 0F
	jsr ($F86F.w,X)		; FC 6F F8
	ldx $5CE0.w		; AE E0 5C
	cpx #$0018.w		; E0 18 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	ldy $6261.w,X		; BC 61 62
	and $3D12.w		; 2D 12 3D
	cop $5D.b		; 02 5D
	jsl $552A55.l		; 22 55 2A 55
	rol A		; 2A
	eor ($2C.b,S),Y		; 53 2C
	cpx #$625F.w		; E0 5F 62
	trb $0C12.w		; 1C 12 0C
	cop $1C.b		; 02 1C
	jsl $142A1C.l		; 22 1C 2A 14
	rol A		; 2A
	trb $2C.b		; 14 2C
	bpl  19.b		; 10 13
	ora [$63.b],Y		; 17 63
	adc $E4.b,S		; 63 E4
	cpx $07E3.w		; EC E3 07
	and $7829.w,Y		; 39 29 78
	cli		; 58
	sbc #$CDA9.w		; E9 A9 CD
	eor #$EF71.w		; 49 71 EF
	sbc ($9F.b,X)		; E1 9F
	cpx #$011F.w		; E0 1F 01
	ora $DEC7E8.l,X		; 1F E8 C7 DE
	sta [$BF.b]		; 87 BF
	asl $7F.b,X		; 16 7F
	rol $28.b,X		; 36 28
	ora [$2C.b],Y		; 17 2C
	ora ($2C.b,S),Y		; 13 2C
	ora ($2E.b,S),Y		; 13 2E
	ora ($1A.b),Y		; 11 1A
	ora ($09.b,X)		; 01 09
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $17.b		; 00 17
	brk $13.b		; 00 13
	brk $13.b		; 00 13
	brk $11.b		; 00 11
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $9F.b		; 00 9F
	jmp ($7393.w,X)		; 7C 93 73
	and $E1.b		; 25 E1
	rol $2EE0.w		; 2E E0 2E
	cpx #$E02E.w		; E0 2E E0
	ldx $2F60.w		; AE 60 2F
	adc ($27.b,X)		; 61 27
	and $2F.b,S		; 23 2F
	jsr $009E.w		; 20 9E 00
	sta $009F00.l,X		; 9F 00 9F 00
	sta $001F00.l,X		; 9F 00 1F 00
	asl $F300.w,X		; 1E 00 F3
	tsb $40BF.w		; 0C BF 40
	ldx $8F51.w		; AE 51 8F
	bvs  26.b		; 70 1A
	sbc [$13.b]		; E7 13
	cpx #$E91B.w		; E0 1B E9
	and $CC.b,X		; 35 CC
	brk $3D.b		; 00 3D
	rti		; 40

	and $2A51.w,X		; 3D 51 2A
	bvs   0.b		; 70 00
	sbc [$06.b]		; E7 06
	inc $E600.w		; EE 00 E6
	ora ($C3.b,X)		; 01 C3
	brk $77.b		; 00 77
	tay		; A8
	eor $8A.b,X		; 55 8A
	sta $8E12.w		; 8D 12 8E
	bvc -76.b		; 50 B4
	pha		; 48
	bcs   8.b		; B0 08
	rts		; 60

	tya		; 98
	beq  24.b		; F0 18
	php		; 08
	stx $AA.b		; 86 AA
	brk $72.b		; 00 72
	bpl  96.b		; 10 60
	brk $60.b		; 00 60
	rti		; 40

	rts		; 60

	bcc -16.b		; 90 F0
	brk $E0.b		; 00 E0
	brk $2E.b		; 00 2E
	adc $3C.b,S		; 63 3C
	adc $18.b,S		; 63 18
	.db $42, $30		; 42 30
	cpy $78.b		; C4 78
	cpy $8820.w		; CC 20 88
	bvs -104.b		; 70 98
	rti		; 40

	bcc  28.b		; 90 1C
	brk $1E.b		; 00 1E
	cop $3C.b		; 02 3C
	brk $78.b		; 00 78
	rti		; 40

	bmi   0.b		; 30 00
	bvs   0.b		; 70 00
	rts		; 60

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
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	tsb $80.b		; 04 80
	stx $84.b		; 86 84
	stx $04.b		; 86 04
	stx $40.b		; 86 40
.ACCU 16
	rep #$20		; C2 20
	sbc $02.b,S		; E3 02
	adc $F8.b,S		; 63 F8
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	tsb $78.b		; 04 78
	brk $F8.b		; 00 F8
	bra  60.b		; 80 3C
	brk $5E.b		; 00 5E
	.db $42, $3C		; 42 3C
	jsr $0303.w		; 20 03 03
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	rti		; 40

	dec $00.b		; C6 00
	dec $04.b		; C6 04
	lsr $24.b		; 46 24
	ror $04.b		; 66 04
	ror $00.b		; 66 00
	jsl $783210.l		; 22 10 32 78
	brk $3C.b		; 00 3C
	tsb $7C.b		; 04 7C
	mvp $00,$38		; 44 38 00
	clc		; 18
	brk $38.b		; 00 38
	jsr $001C.w		; 20 1C 00
	tsb $0000.w		; 0C 00 00
	and ($00.b)		; 32 00
	ora ($08.b)		; 12 08
	tas		; 1B
	cop $1B.b		; 02 1B
	cop $0B.b		; 02 0B
	brk $09.b		; 00 09
	tsb $0D.b		; 04 0D
	tsb $0D.b		; 04 0D
	trb $0C10.w		; 1C 10 0C
	brk $06.b		; 00 06
	cop $0C.b		; 02 0C
	php		; 08
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	clc		; 18
	jmp ($6C30.w)		; 6C 30 6C
	brk $48.b		; 00 48
	bpl  88.b		; 10 58
	brk $58.b		; 00 58
	brk $D0.b		; 00 D0
	rti		; 40

	bne  32.b		; D0 20
	bcs  48.b		; B0 30
	jsr $0818.w		; 20 18 08
	bmi   0.b		; 30 00
	jsr $3000.w		; 20 00 30
	bpl  96.b		; 10 60
	rti		; 40

	jsr $4000.w		; 20 00 40
	brk $00.b		; 00 00
	bcs -32.b		; B0 E0
	beq -80.b		; F0 B0
	sed		; F8
	sei		; 78
	jmp ($3EFE.w,X)		; 7C FE 3E
	lda $01.b		; A5 01
	sta $00000F.l,X		; 9F 0F 00 00
	cpx #$80A0.w		; E0 A0 80
	brk $C0.b		; 00 C0
	rti		; 40

	cpx #$3E80.w		; E0 80 3E
	brk $1F.b		; 00 1F
	asl $000F.w,X		; 1E 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora [$01.b]		; 07 01
	phd		; 0B
	cop $07.b		; 02 07
	ora [$11.b]		; 07 11
	ora ($0E.b,X)		; 01 0E
	asl $1222.w		; 0E 22 12
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $05.b,S		; 03 05
	ora $0E.b,S		; 03 0E
	ora ($0F.b,X)		; 01 0F
	asl $1F.b		; 06 1F
	brk $0F.b		; 00 0F
	dec A		; 3A
	dec $7A.b		; C6 7A
	lda $C5CDCD.l,X		; BF CD CD C5
	tsb $76.b		; 04 76
	asl $EB.b		; 06 EB
	sbc $BF.b,S		; E3 BF
	phb		; 8B
	adc $00C182.l,X		; 7F 82 C1 00
	lda $FA05.w,X		; BD 05 FA
	bmi  -1.b		; 30 FF
	xce		; FB
	sbc $FEF8.w,X		; FD F8 FE
	trb $C40F.w		; 1C 0F C4
	cop $B0.b		; 02 B0
	dey		; 88
	bvs  88.b		; 70 58
	jsr $C038.w		; 20 38 C0
	bit $E8B0.w,X		; 3C B0 E8
	dey		; 88
	pei ($94.b)		; D4 94
	clv		; B8
	plp		; 28
	stz $04.b,X		; 74 04
	cpx #$C060.w		; E0 60 C0
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	rti		; 40

	sed		; F8
	stz $F0.b,X		; 74 F0
	ror $DEE8.w		; 6E E8 DE
	bra -114.b		; 80 8E
	jsr $20E2.w		; 20 E2 20
	.db $62, $00, $63		; 62 00 63
	trb $37.b		; 14 37
	asl $37.b,X		; 16 37
	ora ($33.b)		; 12 33
	cop $23.b		; 02 23
	brk $21.b		; 00 21
	jmp $001C40.l		; 5C 40 1C 00
	rol $0A22.w,X		; 3E 22 0A
	cop $08.b		; 02 08
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	trb $2928.w		; 1C 28 29
	sei		; 78
	rtl		; 6B

	pea $3016.w		; F4 16 30
	asl $30.b,X		; 16 30
	bit $78.b,X		; 34 78
	jmp ($7870.w,X)		; 7C 70 78
	tas		; 1B
	brk $3F.b		; 00 3F
	ora ($7E.b),Y		; 11 7E
	ora ($18.b)		; 12 18
	brk $1C.b		; 00 1C
	tsb $28.b		; 04 28
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $18.b		; 00 18
	jsr ($FC30.w,X)		; FC 30 FC
	bmi  -8.b		; 30 F8
	bvs  -8.b		; 70 F8
	rts		; 60

	sed		; F8
	jsr $20B0.w		; 20 B0 20
	bcs  32.b		; B0 20
	bcs -96.b		; B0 A0
	ldy #$0808.w		; A0 08 08
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $15.b		; 00 15
	asl A		; 0A
	and ($0E.b),Y		; 31 0E
	and $1C.b,S		; 23 1C
	jsl $1D231C.l		; 22 1C 23 1D
	rol $19.b		; 26 19
	eor [$38.b]		; 47 38
	eor $050A2F.l		; 4F 2F 0A 05
	asl $1C00.w		; 0E 00 1C
	brk $1D.b		; 00 1D
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $2F.b		; 00 2F
	bpl -47.b		; 10 D1
	jsl $560AF1.l		; 22 F1 0A 56
	sbc #$0176.w		; E9 76 01
	jmp ($BE13.w)		; 6C 13 BE
	sta $50.b,S		; 83 50
	dec $E448.w		; CE 48 E4
	rol $0C42.w		; 2E 42 0C
	brk $EC.b		; 00 EC
	iny		; C8
	cpy $FE12.w		; CC 12 FE
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	tsb $A0B8.w		; 0C B8 A0
	rti		; 40

	ora $800F00.l		; 0F 00 0F 80
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$01.b]		; 07 01
	ora [$02.b]		; 07 02
	asl $05.b		; 06 05
	ora $06.b		; 05 06
	asl $03.b		; 06 03
	ora $03.b,S		; 03 03
	ora $02.b,S		; 03 02
	cop $01.b		; 02 01
	ora ($02.b,X)		; 01 02
	cop $01.b		; 02 01
	brk $B8.b		; 00 B8
	.db $82, $5A, $C3		; 82 5A C3
	bit $0CE1.w,X		; 3C E1 0C
	sbc ($2E.b,X)		; E1 2E
	sbc $94.b,S		; E3 94
	sta [$70.b]		; 87 70
	asl $E8.b		; 06 E8
	tsb $007C.w		; 0C 7C 00
	ldy $5E80.w,X		; BC 80 5E
	rti		; 40

	ldx $5CA0.w,Y		; BE A0 5C
	rti		; 40

	ply		; 7A
	cop $FC.b		; 02 FC
	tsb $F0.b		; 04 F0
	brk $09.b		; 00 09
	asl $11.b		; 06 11
	asl $0D12.w		; 0E 12 0D
	ora ($0D.b)		; 12 0D
	jsl $1D221D.l		; 22 1D 22 1D
	bit $1B.b		; 24 1B
	bit $1B.b		; 24 1B
	asl $00.b		; 06 00
	asl $0D00.w		; 0E 00 0D
	brk $0D.b		; 00 0D
	brk $1D.b		; 00 1D
	brk $1D.b		; 00 1D
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $3C.b		; 00 3C
	jmp ($A93B.w,X)		; 7C 3B A9
	lsr $92.b,X		; 56 92
	stx $BD06.w		; 8E 06 BD
	and $AD7D.w		; 2D 7D AD
	tda		; 7B
	sta $997B.w,Y		; 99 7B 99
	trb $A1FF.w		; 1C FF A1
	jmp ($3983.w,X)		; 7C 83 39
	adc [$71.b]		; 67 71
	adc $02AF42.l		; 6F 42 AF 02
	sta $069F06.l,X		; 9F 06 9F 06
	lda [$67.b]		; A7 67
	ora $A619.w,Y		; 19 19 A6
	ldx $B1.b		; A6 B1
	lda $74.b,S		; A3 74
	and $6C.b		; 25 6C
	bit $6A.b		; 24 6A
	jsl $02216D.l		; 22 6D 21 02
	sbc $E6FF08.l,X		; FF 08 FF E6
	eor $FC5FF8.l,X		; 5F F8 5F FC
	stp		; DB
	inc $FFDB.w,X		; FE DB FF
	cmp $DEFF.w,X		; DD FF DE
	brk $00.b		; 00 00
	ldx $923E.w,Y		; BE 3E 92
	ldx $184C.w,Y		; BE 4C 18
	rti		; 40

	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	bvs  32.b		; 70 20
	brk $FE.b		; 00 FE
	trb $02FF.w		; 1C FF 02
	sbc $00BE00.l,X		; FF 00 BE 00
	stz $0080.w		; 9C 80 00
	rti		; 40

	brk $A0.b		; 00 A0
	bra -49.b		; 80 CF
	asl $0EEF.w,X		; 1E EF 0E
	sbc [$0F.b]		; E7 0F
	sbc $02.b,X		; F5 02
	sbc ($E4.b,S),Y		; F3 E4
	ora ($17.b,S),Y		; 13 17
	adc ($77.b,S),Y		; 73 77
	and ($B1.b),Y		; 31 B1
	tsb $3E.b		; 04 3E
	asl $1E.b		; 06 1E
	brk $1F.b		; 00 1F
	brk $0E.b		; 00 0E
	cpx #$F00E.w		; E0 0E F0
	sbc $318F71.l		; EF 71 8F 31
	cmp $D7C23D.l		; CF 3D C2 D7
	jsr $54AA.w		; 20 AA 54
	cmp $A726.w,Y		; D9 26 A7
	cli		; 58
	inc $F818.w,X		; FE 18 F8
	clv		; B8
	beq  -8.b		; F0 F8
	lsr A		; 4A
	dey		; 88
	plp		; 28
	dex		; CA
	mvn $26,$00		; 54 00 26
	brk $40.b		; 00 40
	txs		; 9A
	brk $5C.b		; 00 5C
	bpl -68.b		; 10 BC
	beq  -4.b		; F0 FC
	sei		; 78
	lsr $0654.w,X		; 5E 54 06
	mvn $0A,$06		; 54 06 0A
	cop $0E.b		; 02 0E
	cop $09.b		; 02 09
	ora ($07.b,X)		; 01 07
	ora ($00.b,X)		; 01 00
	brk $5C.b		; 00 5C
	tsb $0C.b		; 04 0C
	php		; 08
	tsb $0608.w		; 0C 08 06
	tsb $06.b		; 04 06
	tsb $07.b		; 04 07
	asl $01.b		; 06 01
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	rti		; 40

	cpy #$8000.w		; C0 00 80
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
	brk $0F.b		; 00 0F
	brk $38.b		; 00 38
	ora [$48.b]		; 07 48
	and [$48.b],Y		; 37 48
	and [$F3.b],Y		; 37 F3
	tsb $40BF.w		; 0C BF 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	and [$08.b],Y		; 37 08
	and [$18.b]		; 27 18
	brk $3D.b		; 00 3D
	rti		; 40

	and $0000.w,X		; 3D 00 00
	brk $00.b		; 00 00
	cpx #$3C00.w		; E0 00 3C
	cpy #$FC02.w		; C0 02 FC
	rtl		; 6B

	sty $77.b,X		; 94 77
	tay		; A8
	eor $8A.b,X		; 55 8A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$FC00.w		; C0 00 FC
	brk $94.b		; 00 94
	lsr A		; 4A
	php		; 08
	stx $AA.b		; 86 AA
	brk $50.b		; 00 50
	cli		; 58
	cli		; 58
	eor $4968.w,Y		; 59 68 49
	bvs  81.b		; 70 51
	eor ($53.b,S),Y		; 53 53
	adc $65.b		; 65 65
	ora $05.b		; 05 05
	ora $7009.w		; 0D 09 70
	jsr $2078.w		; 20 78 20
	sei		; 78
	bmi 112.b		; 30 70
	jsr $2073.w		; 20 73 20
	adc [$02.b]		; 67 02
	ora [$02.b]		; 07 02
	phd		; 0B
	cop $00.b		; 02 00
	bcs   0.b		; B0 00
	ldy #$A000.w		; A0 00 A0
	cpy #$80E0.w		; C0 E0 80
	cpx #$4000.w		; E0 00 40
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	rts		; 60

	jsr $80C0.w		; 20 C0 80
	cpy #$0080.w		; C0 80 00
	brk $40.b		; 00 40
	rti		; 40

	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	dey		; 88
	clc		; 18
	adc $366C.w		; 6D 6C 36
	ldx $D5.b,Y		; B6 D5
	ora $90.b,X		; 15 90
	ora $C1.b,X		; 15 C1
	cmp ($07.b)		; D2 07
	dec $1ECF.w		; CE CF 1E
	ora $FB2F77.l		; 0F 77 2F FB
	ora [$7D.b],Y		; 17 7D
	cmp ($3E.b),Y		; D1 3E
	cpy #$003F.w		; C0 3F 00
	rol $3E00.w,X		; 3E 00 3E
	tsb $3E.b		; 04 3E
	ldy $B8.b		; A4 B8
	dec $EA44.w,X		; DE 44 EA
	pla		; 68
	ply		; 7A
	sec		; 38
	pei ($C2.b)		; D4 C2
	sbc $10FF28.l,X		; FF 28 FF 10
	and $C0C2.w,X		; 3D C2 C0
	brk $F4.b		; 00 F4
	bcs -36.b		; B0 DC
	sty $EC.b		; 84 EC
	cpy $E8.b		; C4 E8
	pld		; 2B
	plp		; 28
	brk $10.b		; 00 10
	rep #$08		; C2 08
	nop		; EA
	ora ($0C.b,X)		; 01 0C
	ora [$0C.b]		; 07 0C
	ora $100618.l		; 0F 18 06 10
	asl $3823.w		; 0E 23 38
	adc $10.b,S		; 63 10
	eor [$63.b]		; 47 63
	cmp $030407.l		; CF 07 04 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $3D.b		; 00 3D
	ora $38.b		; 05 38
	php		; 08
	bne  24.b		; D0 18
	ldy #$4030.w		; A0 30 40
	rts		; 60

	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bit $1B.b		; 24 1B
	bit $1B.b		; 24 1B
	bit $1B.b		; 24 1B
	bit $1B.b		; 24 1B
	rol $19.b		; 26 19
	asl $09.b,X		; 16 09
	asl $09.b,X		; 16 09
	ora ($0C.b,S),Y		; 13 0C
	tas		; 1B
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $19.b		; 00 19
	brk $09.b		; 00 09
	brk $09.b		; 00 09
	brk $0C.b		; 00 0C
	brk $76.b		; 00 76
	lda ($76.b)		; B2 76
	lda ($76.b)		; B2 76
	sta ($76.b)		; 92 76
	.db $82, $3A, $C2		; 82 3A C2
	and $C03FC0.l,X		; 3F C0 3F C0
	and $0DBFC0.l,X		; 3F C0 BF 0D
	lda $0D9F0D.l,X		; BF 0D 9F 0D
	sta $05C70D.l		; 8F 0D C7 05
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $D6.b		; 00 D6
	bpl  -9.b		; 10 F7
	bpl  -9.b		; 10 F7
	bpl 107.b		; 10 6B
	phd		; 0B
	jmp ($0B0F.w)		; 6C 0F 0B
	ora $9738F8.l		; 0F F8 38 97
	bvs  -1.b		; 70 FF
	sbc $FFEFFF.l		; EF FF EF FF
	sbc $FFF4FF.l		; EF FF F4 FF
	sbc ($FC.b,S),Y		; F3 FC
	pea $0037.w		; F4 37 00
	and $00B020.l		; 2F 20 B0 00
	rts		; 60

	brk $20.b		; 00 20
	brk $E0.b		; 00 E0
	bra   0.b		; 80 00
	cpy #$C080.w		; C0 80 C0
	brk $60.b		; 00 60
	rti		; 40

	rts		; 60

	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	cpy #$80C0.w		; C0 C0 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	asl $1D0E.w		; 0E 0E 1D
	ora ($1E.b),Y		; 11 1E
	asl $0F07.w,X		; 1E 07 0F
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0E1F00.l		; 0F 00 1F 0E
	ora $1E0101.l,X		; 1F 01 01 1E
	brk $1F.b		; 00 1F
	ora $1F.b,S		; 03 1F
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	ora $38.b,S		; 03 38
	inc $D3E0.w		; EE E0 D3
	ora ($EC.b,S),Y		; 13 EC
	sbc $000000.l		; EF 00 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	cpx #$10F8.w		; E0 F8 10
	tda		; 7B
	jsr ($F077.w,X)		; FC 77 F0
	adc ($F8.b,S),Y		; 73 F8
	and $1D7A.w,Y		; 39 7A 1D
	bit $1C5C.w,X		; 3C 5C 1C
	sta [$6E.b]		; 87 6E
	sta [$77.b]		; 87 77
	clc		; 18
	cpx #$F800.w		; E0 00 F8
	bmi  -4.b		; 30 FC
	dec A		; 3A
	jsr ($7E18.w,X)		; FC 18 7E
	tsb $603F.w		; 0C 3F 60
	ora $130F72.l,X		; 1F 72 0F 13
	tsb $040B.w		; 0C 0B 04
	phd		; 0B
	tsb $05.b		; 04 05
	cop $05.b		; 02 05
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	cpy #$609F.w		; C0 9F 60
	sta $205B60.l,X		; 9F 60 5B 20
	and #$1C10.w		; 29 10 1C
	brk $0E.b		; 00 0E
	brk $03.b		; 00 03
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $97.b		; 00 97
	bvs -113.b		; 70 8F
	sec		; 38
	ora $38.b,S		; 03 38
	ora $3C.b		; 05 3C
	cop $1E.b		; 02 1E
	sta ($1F.b,X)		; 81 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	ora $101700.l		; 0F 00 17 10
	ora $101308.l		; 0F 08 13 10
	ora $04.b		; 05 04
	asl A		; 0A
	asl A		; 0A
	ora $060D.w		; 0D 0D 06
	asl $80.b		; 06 80
	bmi -96.b		; 30 A0
	bmi -48.b		; 30 D0
	clc		; 18
	cpx #$E808.w		; E0 08 E8
	tsb $0470.w		; 0C 70 04
	ldy $86.b,X		; B4 86
	sei		; 78
.ACCU 16
	rep #$E0		; C2 E0
	jsr $00C0.w		; 20 C0 00
	cpx #$F000.w		; E0 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	brk $BC.b		; 00 BC
	bra  93.b		; 80 5D
	cmp ($0C.b,X)		; C1 0C
	adc $001F00.l		; 6F 00 1F 00
	ora $010700.l		; 0F 00 07 01
	ora $02.b,S		; 03 02
	asl $01.b		; 06 01
	tsb $3E.b		; 04 3E
	brk $10.b		; 00 10
	brk $03.b		; 00 03
	ora $06.b,S		; 03 06
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $11.b		; 00 11
.ACCU 16
.INDEX 16
	rep #$72		; C2 72
	cmp $33.b,S		; C3 33
	sta $F0.b,S		; 83 F0
	sty $68.b		; 84 68
	ora $E01FD0.l		; 0F D0 1F E0
	rol $78C0.w,X		; 3E C0 78
	sec		; 38
	ora [$38.b]		; 07 38
	ora [$7A.b]		; 07 7A
	ora [$78.b]		; 07 78
	ora $F3.b,S		; 03 F3
	ora $E6.b,S		; 03 E6
	asl $C8.b		; 06 C8
	php		; 08
	bcc  16.b		; 90 10
	sbc ($8C.b,S),Y		; F3 8C
	jsr ($CFC3.w,X)		; FC C3 CF
	beq -31.b		; F0 E1
	nop		; EA
	sta $E0.b		; 85 E0
	stx $EFA4.w		; 8E A4 EF
	ldy #$A0AF.w		; A0 AF A0
	sty $C303.w		; 8C 03 C3
	brk $F0.b		; 00 F0
	bmi -44.b		; 30 D4
	ora $9C.b,S		; 03 9C
	cop $DC.b		; 02 DC
	eor [$5D.b]		; 47 5D
	rti		; 40

	eor $1CE240.l,X		; 5F 40 E2 1C
	and ($CC.b)		; 32 CC
.INDEX 8
	sep #$1C		; E2 1C
	cmp #$BB36.w		; C9 36 BB
	mvp $74,$EB		; 44 EB 74
	ora $0A.b,X		; 15 0A
	tsx		; BA
	tsb $1C.b		; 04 1C
	bra -52.b		; 80 CC
	brk $1C.b		; 00 1C
	brk $36.b		; 00 36
	brk $44.b		; 00 44
	.db $42, $14		; 42 14
	ora ($EA.b)		; 12 EA
	tsb $84.b		; 04 84
	rti		; 40

	asl $01.b		; 06 01
	ora $0B02.w		; 0D 02 0B
	tsb $1B.b		; 04 1B
	tsb $16.b		; 04 16
	ora #$0A35.w		; 09 35 0A
	jsl $136C1D.l		; 22 1D 6C 13
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	ora #$0A06.w		; 09 06 0A
	tsb $1D.b		; 04 1D
	brk $13.b		; 00 13
	brk $EC.b		; 00 EC
	ora ($F9.b,S),Y		; 13 F9
	asl $F6.b		; 06 F6
	ora #$926D.w		; 09 6D 92
	tad		; 5B
	ldy $37.b		; A4 37
	cmp #$9A66.w		; C9 66 9A
	jmp ($1394.w)		; 6C 94 13
	cpx $F906.w		; EC 06 F9
	ora #$92F6.w		; 09 F6 92
	stz $A4.b		; 64 A4
	pha		; 48
	cmp #$9B00.w		; C9 00 9B
	ora ($97.b,X)		; 01 97
	ora $1F.b,S		; 03 1F
	cpx #$7F.b		; E0 7F
	bra  -2.b		; 80 FE
	brk $FC.b		; 00 FC
	ora ($FD.b,X)		; 01 FD
	ora ($FA.b,X)		; 01 FA
	cmp $38.b,S		; C3 38
	and ($30.b,X)		; 21 30
	and $E0.b		; 25 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $C0.b,S		; 03 C0
	asl $E0.b		; 06 E0
	dec $E1.b		; C6 E1
	cmp $09B9B3.l		; CF B3 B9 09
	ora $F4B0.w		; 0D B0 F4
	phd		; 0B
	dey		; 88
	eor [$D2.b],Y		; 57 D2
	dec $6B94.w		; CE 94 6B
	and ($D5.b),Y		; 31 D5
	and $7C91.w		; 2D 91 7C
	ora #$91FE.w		; 09 FE 91
	sbc $A37D01.l,X		; FF 01 7D A3
	bit #$0367.w		; 89 67 03
	cmp [$06.b]		; C7 06
	cmp $000002.l		; CF 02 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	tsb $1203.w		; 0C 03 12
	ora $132C.w		; 0D 2C 13
	cli		; 58
	and [$BC.b]		; 27 BC
	eor $00.b,S		; 43 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0D.b		; 00 0D
	cop $13.b		; 02 13
	tsb $1827.w		; 0C 27 18
	eor $3C.b,S		; 43 3C
	ora [$00.b]		; 07 00
	sei		; 78
	ora [$80.b]		; 07 80
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FE01.l,X		; FF 01 FE 00
	brk $07.b		; 00 07
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FE01.l,X		; FF 01 FE 00
	sbc $F1E01F.l,X		; FF 1F E0 F1
	bpl   0.b		; 10 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $E0.b		; 00 E0
	brk $10.b		; 00 10
	asl $0080.w		; 0E 80 00
	adc $FF0080.l,X		; 7F 80 00 FF
	ora $FC.b,S		; 03 FC
	sta ($7E.b,X)		; 81 7E
	rts		; 60

	sta $F94FB0.l,X		; 9F B0 4F F9
	stx $00.b		; 86 00
	brk $80.b		; 00 80
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	ora $7E.b,S		; 03 7E
	ora ($9F.b,X)		; 01 9F
	brk $4F.b		; 00 4F
	brk $86.b		; 00 86
	ora ($00.b,X)		; 01 00
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $D4.b		; 00 D4
	plp		; 28
	txs		; 9A
	stz $A1.b		; 64 A1
	lsr $3EC1.w,X		; 5E C1 3E
	sta $0066.w,Y		; 99 66 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$08.b		; E0 08
	beq 100.b		; F0 64
	tya		; 98
	asl $3EE0.w,X		; 1E E0 3E
	cpy #$66.b		; C0 66
	tya		; 98
	bmi 112.b		; 30 70
	bmi 112.b		; 30 70
	bvs  48.b		; 70 30
	bvs 112.b		; 70 70
	rti		; 40

	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	inc $F830.w,X		; FE 30 F8
	bpl  -8.b		; 10 F8
	bmi  -8.b		; 30 F8
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $F599.w,Y		; D9 99 F5
	sta $E3.b,X		; 95 E3
	sbc $00.b,S		; E3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	ror $F7.b		; 66 F7
	.db $62, $E3, $00		; 62 E3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp [$00.b]		; C7 00
	eor [$00.b]		; 47 00
	eor $00.b,S		; 43 00
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
	ora [$0C.b]		; 07 0C
	phd		; 0B
	ora $7366.w,Y		; 19 66 73
	cpx $7027.w		; EC 27 70
	adc [$B8.b]		; 67 B8
	and $893BBA.l		; 2F BA 3B 89
	bit #$0003.w		; 89 03 00
	asl $00.b		; 06 00
	jmp ($3900.w)		; 6C 00 39
	ora ($7B.b,X)		; 01 7B
	ora $72.b,S		; 03 72
	.db $42, $7E		; 42 7E
	mvp $76,$FF		; 44 FF 76
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $4020.w		; 20 20 40
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp #$B8D6.w		; C9 D6 B8
	lda #$0718.w		; A9 18 07
	jmp ($7898.w,X)		; 7C 98 78
	ldy $E8.b		; A4 E8
	tsb $6420.w		; 0C 20 64
	brk $64.b		; 00 64
	adc $41E736.l,X		; 7F 36 E7 41
	cpx #$E0.b		; E0 E0
	dey		; 88
	trb $3880.w		; 1C 80 38
	bpl  96.b		; 10 60
	clc		; 18
	brk $38.b		; 00 38
	jsr $18E6.w		; 20 E6 18
	trb $0080.w		; 1C 80 00
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
	brk $78.b		; 00 78
	ora [$79.b]		; 07 79
	asl $D1.b		; 06 D1
	asl $0CD3.w		; 0E D3 0C
	lda ($0C.b,S),Y		; B3 0C
	lda $1C.b,S		; A3 1C
	lda $1C.b,S		; A3 1C
	and [$18.b]		; 27 18
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	asl $0C00.w		; 0E 00 0C
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $EC.b		; 00 EC
	trb $D9.b		; 14 D9
	and #$27DF.w		; 29 DF 27
	sbc $0ECF11.l,X		; FF 11 CF 0E
	cmp $0DFF10.l,X		; DF 10 FF 0D
	inc $32.b,X		; F6 32
	ora [$03.b],Y		; 17 03
	and $002706.l		; 2F 06 27 00
	ora ($00.b),Y		; 11 00
	rol $3030.w,X		; 3E 30 30
	jsr $000D.w		; 20 0D 00
	tsa		; 3B
	ora #$6775.w		; 09 75 67
	cpx $EE.b		; E4 EE
	cmp #$83CA.w		; C9 CA 83
	ldx $14B1.w		; AE B1 14
	cmp [$13.b],Y		; D7 13
	ora $5F10.w,X		; 1D 10 5F
	eor $E0.b,S		; 43 E0
	sty $1CE1.w		; 8C E1 1C
	cmp $3E.b,S		; C3 3E
	sta ($78.b,X)		; 81 78
	ora $78.b,S		; 03 78
	ora ($38.b,S),Y		; 13 38
	cmp $FB.b,S		; C3 FB
	cmp $B8.b,S		; C3 B8
	sta $73CF33.l		; 8F 33 CF 73
	sta $631C75.l		; 8F 75 1C 63
	sbc [$80.b],Y		; F7 80
	clv		; B8
	sta [$BE.b]		; 87 BE
	jsr $92A0.w		; 20 A0 92
	cmp ($08.b)		; D2 08
	sta ($08.b),Y		; 91 08
	lda $08.b,X		; B5 08
	lda [$14.b]		; A7 14
	php		; 08
	phd		; 0B
	dec $40.b		; C6 40
	cpx #$C0.b		; E0 C0
	jmp.w [$2750]		; DC 50 27
	clc		; 18
	and [$18.b]		; 27 18
	and [$18.b]		; 27 18
	ora [$08.b],Y		; 17 08
	ora [$08.b],Y		; 17 08
	asl $0E00.w,X		; 1E 00 0E
	brk $0E.b		; 00 0E
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DA.b		; 00 DA
	bvc -75.b		; 50 B5
	lda ($EA.b,X)		; A1 EA
.ACCU 16
.INDEX 16
	rep #$FA		; C2 FA
	jsl $FD44DD.l		; 22 DD 44 FD
	stz $FF.b		; 64 FF
	tas		; 1B
	inc $771E.w		; EE 1E 77
	and [$EF.b]		; 27 EF
	lsr $1DDF.w		; 4E DF 1D
	and $3B7F1D.l,X		; 3F 1D 7F 3B
	adc [$03.b]		; 67 03
	tas		; 1B
	brk $01.b		; 00 01
	brk $AD.b		; 00 AD
	bra  63.b		; 80 3F
	and $58DF.w		; 2D DF 58
	cpy $FE4A.w		; CC 4A FE
	adc $D973F0.l,X		; 7F F0 73 D9
	cmp $F2.b,S		; C3 F2
	asl $C3.b		; 06 C3
	eor ($ED.b,S),Y		; 53 ED
	cpy #$A1F8.w		; C0 F8 A1
	plx		; FA
	lda ($F9.b,S),Y		; B3 F9
	sta ($ED.b,X)		; 81 ED
	sta ($BC.b,X)		; 81 BC
	brk $F9.b		; 00 F9
	brk $9C.b		; 00 9C
	ora ($E6.b),Y		; 11 E6
	sbc ($70.b,X)		; E1 70
	sbc ($76.b),Y		; F1 76
	sbc [$79.b],Y		; F7 79
	tda		; 7B
	stz $0CBC.w		; 9C BC 0C
	lsr $4E06.w,X		; 5E 06 4E
	dec $AEE0.w		; CE E0 AE
	bvs 102.b		; 70 66
	sed		; F8
	bmi  -8.b		; 30 F8
	bpl  -4.b		; 10 FC
	php		; 08
	adc $C07FC4.l,X		; 7F C4 7F C0
	adc $143610.l,X		; 7F 10 36 14
	rol $18.b,X		; 36 18
	tsx		; BA
	ldy $E6.b		; A4 E6
	rol $6E36.w,X		; 3E 36 6E
	plx		; FA
	pea $C0FC.w		; F4 FC C0
	cpx #$040C.w		; E0 0C 04
	php		; 08
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	clc		; 18
	rol $0EC8.w,X		; 3E C8 0E
	pea $F864.w		; F4 64 F8
	bra  -8.b		; 80 F8
	tas		; 1B
	tsb $3D.b		; 04 3D
	cop $1E.b		; 02 1E
	ora ($3F.b,X)		; 01 3F
	brk $2F.b		; 00 2F
	brk $F7.b		; 00 F7
	brk $8F.b		; 00 8F
	tsb $F3.b		; 04 F3
	cop $04.b		; 02 04
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl   8.b		; 10 08
	php		; 08
	stz $70.b,X		; 74 70
	ror $3C7C.w,X		; 7E 7C 3C
	cmp $8F.b,S		; C3 8F
	bvs -61.b		; 70 C3
	bit $9F60.w,X		; 3C 60 9F
	bmi -49.b		; 30 CF
	sta ($6D.b)		; 92 6D
	cmp #$E136.w		; C9 36 E1
	asl $00C3.w,X		; 1E C3 00
	bvs   1.b		; 70 01
	bit $9F00.w,X		; 3C 00 9F
	brk $CF.b		; 00 CF
	brk $6D.b		; 00 6D
	cop $36.b		; 02 36
	ora ($1E.b,X)		; 01 1E
	ora ($10.b,X)		; 01 10
	sbc $C0EF10.l		; EF 10 EF C0
	and $721BE4.l,X		; 3F E4 1B 72
	sta $C03F.w		; 8D 3F C0
	ora $E01FE0.l,X		; 1F E0 1F E0
	sbc $00EF00.l		; EF 00 EF 00
	and $641BC0.l,X		; 3F C0 1B 64
	sta $C032.w		; 8D 32 C0
	and $E01FE0.l,X		; 3F E0 1F E0
	ora $28B048.l,X		; 1F 48 B0 28
	bne 104.b		; D0 68
	bcc -28.b		; 90 E4
	clc		; 18
	pea $F408.w		; F4 08 F4
	php		; 08
	jsr ($BA00.w,X)		; FC 00 BA
	mvp $00,$B0		; 44 B0 00
	bne   0.b		; D0 00
	bcc  96.b		; 90 60
	clc		; 18
	cpx #$F008.w		; E0 08 F0
	php		; 08
	beq   0.b		; F0 00
	sed		; F8
	mvp $31,$B8		; 44 B8 31
	eor ($1F.b),Y		; 51 1F
	adc $17.b,S		; 63 17
	bit $03.b,X		; 34 03
	and ($09.b,S),Y		; 33 09
	and $3909.w,Y		; 39 09 39
	tsb $1C.b		; 04 1C
	tsb $1C.b		; 04 1C
	ora $20230E.l,X		; 1F 0E 23 20
	php		; 08
	brk $1C.b		; 00 1C
	bpl  22.b		; 10 16
	bpl   6.b		; 10 06
	brk $0B.b		; 00 0B
	php		; 08
	phd		; 0B
	php		; 08
	sta $A1A6B0.l		; 8F B0 A6 A1
	lsr $59.b		; 46 59
	rol $19.b,X		; 36 19
	tsa		; 3B
	ldy $B007.w,X		; BC 07 B0
	sta $D4.b,S		; 83 D4
	sta $7080DE.l		; 8F DE 80 70
	sta ($78.b,X)		; 81 78
	ora ($F8.b,X)		; 01 F8
	ora ($F8.b,X)		; 01 F8
	bra  -4.b		; 80 FC
	bra  -4.b		; 80 FC
	rti		; 40

	jmp ($7E44.w,X)		; 7C 44 7E
	bmi -49.b		; 30 CF
	bcs  79.b		; B0 4F
	ldx #$925D.w		; A2 5D 92
	adc $6D92.w		; 6D 92 6D
	cmp ($2D.b)		; D2 2D
	stp		; DB
	bit $DB.b		; 24 DB
	bit $CF.b		; 24 CF
	bmi  79.b		; 30 4F
	bmi  93.b		; 30 5D
	jsr $006D.w		; 20 6D 00
	adc $2D00.w		; 6D 00 2D
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $01.b		; 00 01
	inc $FE01.w,X		; FE 01 FE
	ora ($FE.b,X)		; 01 FE
	ora $FA.b		; 05 FA
	ora $FA.b		; 05 FA
	ora $EA.b,X		; 15 EA
	asl $E8.b,X		; 16 E8
	txs		; 9A
	stz $FE.b		; 64 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FA.b		; 00 FA
	brk $FA.b		; 00 FA
	brk $EA.b		; 00 EA
	brk $E8.b		; 00 E8
	brk $64.b		; 00 64
	brk $C0.b		; 00 C0
	and $C73DC2.l,X		; 3F C2 3D C7
	sec		; 38
	txy		; 9B
	stz $B4.b		; 64 B4
	phk		; 4B
	ldy $4B.b,X		; B4 4B
	lsr $5EB1.w		; 4E B1 5E
	lda ($3F.b,X)		; A1 3F
	brk $3D.b		; 00 3D
	cop $38.b		; 02 38
	ora [$64.b]		; 07 64
	tas		; 1B
	phk		; 4B
	bmi  75.b		; 30 4B
	bmi -79.b		; 30 B1
	brk $A1.b		; 00 A1
	brk $38.b		; 00 38
	cpy #$40B8.w		; C0 B8 40
	tay		; A8
	bvc -56.b		; 50 C8
	bmi -48.b		; 30 D0
	jsr $E010.w		; 20 10 E0
	bcc  96.b		; 90 60
	bcc  96.b		; 90 60
	cpy #$4030.w		; C0 30 40
	bcs  80.b		; B0 50
	ldy #$C030.w		; A0 30 C0
	jsr $E0C0.w		; 20 C0 E0
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $F0.b		; 00 F0
	ora $8F00FF.l		; 0F FF 00 8F
	bvs -31.b		; 70 E1
	asl $07F8.w,X		; 1E F8 07
	jsr ($BE03.w,X)		; FC 03 BE
	eor ($00.b,X)		; 41 00
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $1E.b		; 00 1E
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $41.b		; 00 41
	brk $F0.b		; 00 F0
	brk $7D.b		; 00 7D
	bra  30.b		; 80 1E
	cpx #$38C7.w		; E0 C7 38
	sbc ($1E.b,X)		; E1 1E
	bvs -113.b		; 70 8F
	clc		; 18
	sbc [$08.b]		; E7 08
	sbc [$00.b],Y		; F7 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $38.b		; 00 38
	brk $1E.b		; 00 1E
	brk $8F.b		; 00 8F
	brk $E7.b		; 00 E7
	brk $F7.b		; 00 F7
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $D8.b		; 00 D8
	jsr $9068.w		; 20 68 90
	bit $D8.b		; 24 D8
	trb $E8.b		; 14 E8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $9000.w		; 20 00 90
	brk $D8.b		; 00 D8
	brk $E8.b		; 00 E8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	and $001800.l		; 2F 00 18 00
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
	brk $8C.b		; 00 8C
	bra -31.b		; 80 E1
	cpx #$9E9E.w		; E0 9E 9E
	sbc $80FF81.l,X		; FF 81 FF 80
	beq   0.b		; F0 00
	adc $0C5C80.l		; 6F 80 5C 0C
	sbc $1FFF7F.l,X		; FF 7F FF 1F
	sbc $7EFF61.l,X		; FF 61 FF 7E
	sbc $7F7F7F.l,X		; FF 7F 7F 7F
	bmi  48.b		; 30 30
	and $0F7023.l		; 2F 23 70 0F
	sei		; 78
	ora [$7C.b]		; 07 7C
	ora $FC.b,S		; 03 FC
	cmp $7E.b,S		; C3 7E
	ora ($5E.b,X)		; 01 5E
	ora ($FF.b,X)		; 01 FF
	brk $0F.b		; 00 0F
	brk $8F.b		; 00 8F
	bra -121.b		; 80 87
	bra -125.b		; 80 83
	bra -61.b		; 80 C3
	brk $81.b		; 00 81
	bra -95.b		; 80 A1
	ldy #$0000.w		; A0 00 00
	cpy #$8FF0.w		; C0 F0 8F
	bvs -50.b		; 70 CE
	and ($E4.b),Y		; 31 E4
	tas		; 1B
	stz $9B.b		; 64 9B
	stz $9B.b		; 64 9B
	bvs -113.b		; 70 8F
	bmi -49.b		; 30 CF
	bmi -49.b		; 30 CF
	bvs -113.b		; 70 8F
	and ($CE.b),Y		; 31 CE
	tas		; 1B
	cpx $9B.b		; E4 9B
	stz $9B.b		; 64 9B
	stz $8F.b		; 64 8F
	bvs -49.b		; 70 CF
	bmi -49.b		; 30 CF
	bmi -86.b		; 30 AA
	mvn $78,$86		; 54 86 78
	asl $F8.b		; 06 F8
	cop $FC.b		; 02 FC
	cop $FC.b		; 02 FC
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	mvn $78,$A8		; 54 A8 78
	sty $F8.b		; 84 F8
	tsb $FC.b		; 04 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	tsb $0E02.w		; 0C 02 0E
	brk $07.b		; 00 07
	ora ($0F.b,X)		; 01 0F
	tsb $1C.b		; 04 1C
	ora ($10.b,S),Y		; 13 10
	ora $211920.l		; 0F 20 19 21
	ora [$04.b]		; 07 04
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $001F00.l		; 0F 00 1F 00
	asl $0F00.w,X		; 1E 00 0F
	asl $3617.w		; 0E 17 36
	ora [$D6.b],Y		; 17 D6
	phd		; 0B
	rol A		; 2A
	pld		; 2B
	rol A		; 2A
	plb		; AB
	rol A		; 2A
	eor [$60.b],Y		; 57 60
	ora $C2.b		; 05 C2
	stx $7E.b		; 86 7E
	.db $82, $7E, $52		; 82 7E 52
	ror $3EEA.w,X		; 7E EA 3E
	iny		; C8
	asl $1EC8.w,X		; 1E C8 1E
	bra   8.b		; 80 08
	dec A		; 3A
	cop $DF.b		; 02 DF
	jsr $22DD.w		; 20 DD 22
	cmp $ED32.w		; CD 32 ED
	ora ($E8.b)		; 12 E8
	ora [$E8.b],Y		; 17 E8
	ora [$C8.b],Y		; 17 C8
	and [$C0.b],Y		; 37 C0
	and $220020.l,X		; 3F 20 00 22
	brk $32.b		; 00 32
	brk $12.b		; 00 12
	brk $17.b		; 00 17
	brk $17.b		; 00 17
	brk $37.b		; 00 37
	brk $3F.b		; 00 3F
	brk $9A.b		; 00 9A
	stz $DA.b		; 64 DA
	bit $52.b		; 24 52
	ldy $8874.w		; AC 74 88
	stz $98.b		; 64 98
	stz $98.b		; 64 98
	mvn $58,$A8		; 54 A8 58
	ldy #$0064.w		; A0 64 00
	bit $00.b		; 24 00
	ldy $8800.w		; AC 00 88
	brk $98.b		; 00 98
	brk $98.b		; 00 98
	brk $A8.b		; 00 A8
	bpl -96.b		; 10 A0
	bpl  -5.b		; 10 FB
	tsb $03.b		; 04 03
	jsr ($F906.w,X)		; FC 06 F9
	rti		; 40

	lda $9B3AC5.l,X		; BF C5 3A 9B
	stz $FE.b		; 64 FE
	brk $38.b		; 00 38
	brk $04.b		; 00 04
	brk $FC.b		; 00 FC
	brk $F9.b		; 00 F9
	brk $BF.b		; 00 BF
	brk $3A.b		; 00 3A
	brk $64.b		; 00 64
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	cpy #$C020.w		; C0 20 C0
	jsr $40C0.w		; 20 C0 40
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $31.b		; 00 31
	asl A		; 0A
	ora ($8A.b,X)		; 01 8A
	ora $7E.b		; 05 7E
	ora $0E.b		; 05 0E
	ora ($0C.b,S),Y		; 13 0C
	and $142B00.l,X		; 3F 00 2B 14
	plp		; 28
	ora [$F6.b],Y		; 17 F6
	cop $74.b		; 02 74
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	brk $14.b		; 00 14
	brk $17.b		; 00 17
	brk $24.b		; 00 24
	tas		; 1B
	jsr $201F.w		; 20 1F 20
	ora $090F10.l,X		; 1F 10 0F 09
	asl $1F.b		; 06 1F
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $1B.b		; 00 1B
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $17.b		; 00 17
	bpl  15.b		; 10 0F
	php		; 08
	asl $04.b		; 06 04
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	php		; 08
	asl $0706.w		; 0E 06 07
	ora $03.b,S		; 03 03
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora $03.b,S		; 03 03
	asl $07.b		; 06 07
	tsb $1803.w		; 0C 03 18
	ora $301E18.l		; 0F 18 1E 30
	and $1A61.w,X		; 3D 61 1A
	cmp $00.b,S		; C3 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora $001E00.l		; 0F 00 1E 00
	adc $C041.w,X		; 7D 41 C0
	bit $3880.w,X		; 3C 80 38
	cpy #$0078.w		; C0 78 00
	sei		; 78
	bra -16.b		; 80 F0
	jsr $20F0.w		; 20 F0 20
	beq  64.b		; F0 40
	beq -40.b		; F0 D8
	clc		; 18
	bne  16.b		; D0 10
	bcc  16.b		; 90 10
	bne  80.b		; D0 50
	jsr $8020.w		; 20 20 80
	bra  64.b		; 80 40
	rti		; 40

	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C2.b		; 00 C2
	brk $FA.b		; 00 FA
	rti		; 40

	dec $0008.w,X		; DE 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -24.b		; 80 E8
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $22.b		; 00 22
	brk $32.b		; 00 32
	brk $2B.b		; 00 2B
	bpl  47.b		; 10 2F
	bpl  79.b		; 10 4F
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	brk $82.b		; 00 82
	adc $FD02.w,X		; 7D 02 FD
	tsb $FB.b		; 04 FB
	bit $58D3.w		; 2C D3 58
	lda [$B9.b]		; A7 B9
	lsr $F3.b		; 46 F3
	tsb $19E6.w		; 0C E6 19
	adc $FD02.w,X		; 7D 02 FD
	cop $FB.b		; 02 FB
	tsb $D3.b		; 04 D3
	bit $58A7.w		; 2C A7 58
	lsr $B8.b		; 46 B8
	tsb $19F0.w		; 0C F0 19
	cpx #$CC33.w		; E0 33 CC
	adc ($8C.b,S),Y		; 73 8C
	adc $9C.b,S		; 63 9C
	sbc $1C.b,S		; E3 1C
	cmp [$38.b]		; C7 38
	sta [$78.b]		; 87 78
	ora $F00FF0.l		; 0F F0 0F F0
	cpy $8C00.w		; CC 00 8C
	brk $9C.b		; 00 9C
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $15.b		; 00 15
	cpx #$2012.w		; E0 12 20
	ora ($00.b),Y		; 11 00
	inc $1F0E.w,X		; FE 0E 1F
	sbc ($F3.b,X)		; E1 F3
	ora ($43.b,X)		; 01 43
	and ($68.b,X)		; 21 68
	jsr ($2B2B.w,X)		; FC 2B 2B
	ora $0E0D.w		; 0D 0D 0E
	asl $010F.w		; 0E 0F 01
	sbc ($00.b,X)		; E1 00
	ora ($00.b,X)		; 01 00
	ora ($FC.b,X)		; 01 FC
	brk $FF.b		; 00 FF
	nop		; EA
	jsl $7A12DA.l		; 22 DA 12 7A
	ora ($BA.b)		; 12 BA
	ora ($B4.b)		; 12 B4
	trb $DF.b		; 14 DF
	rti		; 40

	cmp ($40.b,S),Y		; D3 40
	sbc [$60.b],Y		; F7 60
	sbc $EDFFDD.l,X		; FF DD FF ED
	sbc $6D7FED.l,X		; FF ED 7F 6D
	adc $20606B.l,X		; 7F 6B 60 20
	ror $6E2E.w		; 6E 2E 6E
	asl $0703.w		; 0E 03 07
	ora ($05.b,X)		; 01 05
	cop $0A.b		; 02 0A
	asl $1B1E.w		; 0E 1E 1B
	rol $30.b,X		; 36 30
	adc [$30.b]		; 67 30
	cmp $018E20.l		; CF 20 8E 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($03.b,X)		; 01 03
	ora ($0A.b,X)		; 01 0A
	brk $1A.b		; 00 1A
	cop $76.b		; 02 76
	lsr $74.b		; 46 74
	tsb $F0.b		; 04 F0
	brk $F0.b		; 00 F0
	rti		; 40

	rts		; 60

	brk $70.b		; 00 70
	jsr $00E0.w		; 20 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $80.b		; 00 80
	bra -96.b		; 80 A0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$1D.b]		; 07 1D
	ora $382E2C.l,X		; 1F 2C 2E 38
	and ($2D.b)		; 32 2D
	and $1C.b,S		; 23 1C
	tas		; 1B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $3D.b		; 00 3D
	bpl  61.b		; 10 3D
	tsb $1030.w		; 0C 30 10
	asl $02.b,X		; 16 02
	asl $13.b		; 06 13
	asl $13.b		; 06 13
	asl $1833.w		; 0E 33 18
	and ($09.b,S),Y		; 33 09
	jsl $0D2100.l		; 22 00 21 0D
	trb $0203.w		; 1C 03 02
	tsb $0C00.w		; 0C 00 0C
	brk $1C.b		; 00 1C
	bpl  14.b		; 10 0E
	cop $1C.b		; 02 1C
	brk $00.b		; 00 00
	asl $3F04.w,X		; 1E 04 3F
	brk $3E.b		; 00 3E
	eor $631D.w		; 4D 1D 63
	and $D1.b,S		; 23 D1
	ora $EF21FE.l,X		; 1F FE 21 EF
	brk $F3.b		; 00 F3
	brk $FC.b		; 00 FC
	tsb $FF.b		; 04 FF
	brk $04.b		; 00 04
	and $301F21.l,X		; 3F 21 1F 30
	and $181730.l		; 2F 30 17 18
	clc		; 18
	ora $03070F.l		; 0F 0F 07 03
	brk $00.b		; 00 00
	sbc [$08.b],Y		; F7 08
	sed		; F8
	ora [$7E.b]		; 07 7E
	ora ($7F.b,X)		; 01 7F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $08.b		; 00 08
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	ora $00.b,S		; 03 00
	sbc $80F00F.l,X		; FF 0F F0 80
	adc $E3FF00.l,X		; 7F 00 FF E3
	trb $07F8.w		; 1C F8 07
	and $0003C0.l,X		; 3F C0 03 00
	sbc $0FF000.l,X		; FF 00 F0 0F
	adc $00FF00.l,X		; 7F 00 FF 00
	trb $0703.w		; 1C 03 07
	brk $C0.b		; 00 C0
	brk $0F.b		; 00 0F
	beq 127.b		; F0 7F
	bra  -2.b		; 80 FE
	ora ($F9.b,X)		; 01 F9
	asl $1F.b		; 06 1F
	cpx #$07F8.w		; E0 F8 07
	asl $F9.b		; 06 F9
	sed		; F8
	ora [$F0.b]		; 07 F0
	ora $017F80.l		; 0F 80 7F 01
	inc $F906.w,X		; FE 06 F9
	cpx #$071F.w		; E0 1F 07
	sed		; F8
	sbc $0700.w,Y		; F9 00 07
	brk $74.b		; 00 74
	cmp [$E8.b]		; C7 E8
	sta $601F90.l		; 8F 90 1F 60
	adc $9FFF83.l,X		; 7F 83 FF 9F
	ora $6B0C4C.l,X		; 1F 4C 0C 6B
	sed		; F8
	dec A		; 3A
	cop $75.b		; 02 75
	ora $EB.b		; 05 EB
	phd		; 0B
	bcc  16.b		; 90 10
	jmp $E34C.w		; 4C 4C E3
	brk $F7.b		; 00 F7
	ora $9F.b,S		; 03 9F
	sta [$40.b],Y		; 97 40
	cpx #$E080.w		; E0 80 E0
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	sta $F033FF.l		; 8F FF 33 F0
	stp		; DB
	cpy #$20BB.w		; C0 BB 20
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	adc $CCFC70.l,X		; 7F 70 FC CC
	sbc $FD3D.w,X		; FD 3D FD
	cmp $08DE.w,X		; DD DE 08
	dec $BB08.w,X		; DE 08 BB
	bit $B6.b,X		; 34 B6
	and #$1B24.w		; 29 24 1B
	pla		; 68
	eor [$C9.b],Y		; 57 C9
	ldx $81.b,Y		; B6 81
	ror $E0E8.w,X		; 7E E8 E0
	inx		; E8
	cpx #$C0F4.w		; E0 F4 C0
	sbc #$DBC0.w		; E9 C0 DB
	cpy #$80D7.w		; C0 D7 80
	ldx $01.b,Y		; B6 01
	ror $4D01.w,X		; 7E 01 4D
	and ($8D.b)		; 32 8D
	adc ($09.b)		; 72 09
	inc $19.b,X		; F6 19
	inc $19.b		; E6 19
	inc $19.b		; E6 19
	inc $39.b		; E6 39
	dec $31.b		; C6 31
	dec $0032.w		; CE 32 00
	adc ($00.b)		; 72 00
	inc $00.b,X		; F6 00
	inc $00.b		; E6 00
	inc $00.b		; E6 00
	inc $00.b		; E6 00
	dec $00.b		; C6 00
	dec $C800.w		; CE 00 C8
	and [$80.b],Y		; 37 80
	adc $C0DF20.l,X		; 7F 20 DF C0
	and $01FE01.l,X		; 3F 01 FE 01
	inc $F906.w,X		; FE 06 F9
	and $37C2.w,X		; 3D C2 37
	cpy #$807F.w		; C0 7F 80
	cmp $C03F20.l,X		; DF 20 3F C0
	inc $FE00.w,X		; FE 00 FE
	ora ($F9.b,X)		; 01 F9
	asl $C2.b		; 06 C2
	bit $E01F.w,X		; 3C 1F E0
	and $807FC0.l,X		; 3F C0 7F 80
	inc $3E00.w,X		; FE 00 3E
	cpy #$807C.w		; C0 7C 80
	sed		; F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DE.b		; 00 DE
	sbc $FFDFFF.l,X		; FF FF DF FF
	cmp $9FDF6F.l,X		; DF 6F DF 9F
	sbc $416FE6.l		; EF E6 6F 41
	ror $FF.b,X		; 76 FF
	brk $C6.b		; 00 C6
	sbc $4EFFCE.l,X		; FF CE FF 4E
	sbc $86FF0E.l,X		; FF 0E FF 86
	adc $C0BFC0.l,X		; 7F C0 BF C0
	ldx $0000.w,Y		; BE 00 00
	adc #$4540.w		; 69 40 45
	bra -101.b		; 80 9B
	brk $AE.b		; 00 AE
	ora ($EC.b,X)		; 01 EC
	eor $58.b,S		; 43 58
	sta [$F1.b]		; 87 F1
	asl $F807.w		; 0E 07 F8
	lsr $96.b,X		; 56 96
	dec A		; 3A
	tsx		; BA
	jmp ($7D7C.w,X)		; 7C 7C 7D
	jmp ($3073.w,X)		; 7C 73 30
	and [$A0.b]		; 27 A0
	asl $F801.w		; 0E 01 F8
	ora [$00.b]		; 07 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $D0.b		; 00 D0
	brk $D0.b		; 00 D0
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
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
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
	brk $C0.b		; 00 C0
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
	brk $FE.b		; 00 FE
	ora ($7F.b,X)		; 01 7F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
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
	brk $3F.b		; 00 3F
	cpy #$7E81.w		; C0 81 7E
	cmp [$38.b]		; C7 38
	beq  15.b		; F0 0F
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $000F00.l,X		; 7F 00 0F 00
	cpy #$7E00.w		; C0 00 7E
	ora ($38.b,X)		; 01 38
	ora [$0F.b]		; 07 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	cpy #$01FE.w		; C0 FE 01
	sbc ($1E.b,X)		; E1 1E
	ora $00FFF0.l		; 0F F0 FF 00
	sbc $00FC00.l,X		; FF 00 FC 00
	cpx #$C000.w		; E0 00 C0
	and $1EFE01.l,X		; 3F 01 FE 1E
	cpx #$00F0.w		; E0 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $807E40.l,X		; BF 40 7E 80
	jsr ($F000.w,X)		; FC 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	sec		; 38
	bmi  43.b		; 30 2B
	jsr $424F.w		; 20 4F 42
	adc $505E52.l,X		; 7F 52 5E 50
	rol $00E0.w,X		; 3E E0 00
	brk $18.b		; 00 18
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	bpl 114.b		; 10 72
	bmi 114.b		; 30 72
	jsr $2070.w		; 20 70 20
	rts		; 60

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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	php		; 08
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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	jsr $0000.w		; 20 00 00
	.db $02		; Opcode 02 overrunning bank boundry at 0EFFFF. Skipping.
.ENDS
