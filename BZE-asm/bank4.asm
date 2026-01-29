.BANK 4 SLOT 0
.ORG $0000

.SECTION "Bank4" FORCE

	sbc $001CFF.l,X		; FF FF 1C 00
	rol $7F00.w,X		; 3E 00 7F
	bit $1D7F.w		; 2C 7F 1D
	sta ($00.b)		; 92 00
	sta ($00.b)		; 92 00
	sbc $EEFF00.l,X		; FF 00 FF EE
	sbc $F8FF00.l,X		; FF 00 FF F8
	ora [$6D.b]		; 07 6D
	brk $FE.b		; 00 FE
	sed		; F8
	ora $38.b		; 05 38
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	sei		; 78
	inc $936C.w,X		; FE 6C 93
	lda $9300FF.l,X		; BF FF 00 93
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sed		; F8
	ora [$6C.b]		; 07 6C
	brk $6C.b		; 00 6C
	brk $6C.b		; 00 6C
	brk $7A.b		; 00 7A
	sbc $1C00FF.l,X		; FF FF 00 1C
	brk $7E.b		; 00 7E
	brk $7F.b		; 00 7F
	bit $257F.w,X		; 3C 7F 25
	phx		; DA
	brk $EA.b		; 00 EA
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	inc $00FF.w,X		; FE FF 00
	sbc $2507F8.l,X		; FF F8 07 25
	brk $15.b		; 00 15
	brk $6D.b		; 00 6D
	brk $5B.b		; 00 5B
	brk $38.b		; 00 38
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	sbc $FE78FB.l,X		; FF FB 78 FE
	jmp ($0093.w)		; 6C 93 00
	sta ($00.b,S),Y		; 93 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $6C07F8.l,X		; FF F8 07 6C
	brk $6C.b		; 00 6C
	sbc $6C00FF.l,X		; FF FF 00 6C
	brk $7A.b		; 00 7A
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	brk $7F.b		; 00 7F
	rol $367F.w,X		; 3E 7F 36
	cmp #$00.b		; C9 00
	cmp #$EF.b		; C9 EF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $F8FF00.l,X		; FF 00 FF F8
	ora [$36.b]		; 07 36
	brk $36.b		; 00 36
	brk $31.b		; 00 31
	brk $31.b		; 00 31
	brk $38.b		; 00 38
	sbc $FC00BF.l,X		; FF BF 00 FC
	brk $FE.b		; 00 FE
	sei		; 78
	inc $936C.w,X		; FE 6C 93
	brk $93.b		; 00 93
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $07F8FF.l,X		; FF FF F8 07
	jmp ($6C00.w)		; 6C 00 6C
	brk $6C.b		; 00 6C
	brk $7A.b		; 00 7A
	brk $1C.b		; 00 1C
	brk $22.b		; 00 22
	trb $3E7F.w		; 1C 7F 3E
	adc $3FEEFF.l,X		; 7F FF EE 3F
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $7F07F8.l,X		; FF F8 07 7F
	brk $FE.b		; 00 FE
	sed		; F8
	ora $38.b		; 05 38
	sbc $4400BF.l,X		; FF BF 00 44
	sec		; 38
	inc $FE7C.w,X		; FE 7C FE
	jsr ($0001.w,X)		; FC 01 00
	ora ($00.b,X)		; 01 00
	sbc $00FF00.l,X		; FF 00 FF 00
	stp		; DB
	sbc $07F8FF.l,X		; FF FF F8 07
	inc $FE00.w,X		; FE 00 FE
	sed		; F8
	ora $00.b		; 05 00
	sbc $2005F8.l,X		; FF F8 05 20
	jsr $3511.w		; 20 11 35
	asl A		; 0A
	ora $3D1000.l,X		; 1F 00 10 3D
	inc $0003.w,X		; FE 03 00
	sbc $1108F8.l,X		; FF F8 08 11
	ora ($0F.b),Y		; 11 0F
	sbc $000F00.l,X		; FF 00 0F 00
	and $FFFF20.l,X		; 3F 20 FF FF
	eor $80BF40.l,X		; 5F 40 BF 80
	adc $81BF40.l,X		; 7F 40 BF 81
	ror $FF00.w,X		; 7E 00 FF
	brk $00.b		; 00 00
	ora $F73F0F.l		; 0F 0F 3F F7
	sbc $7F7F3F.l,X		; FF 3F 7F 7F
	sbc $06F8FF.l,X		; FF FF F8 06
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $FE.b		; 00 FE
	asl $E9.b,X		; 16 E9
	sbc $0DF2E3.l,X		; FF E3 F2 0D
	pld		; 2B
	tsb $43.b		; 04 43
	sty $0000.w		; 8C 00 00
	bra -128.b		; 80 80
	cpx #$EEFF.w		; E0 FF EE
	cmp [$BE.b]		; C7 BE
	inc $FEFE.w		; EE FE FE
	sbc $FF00FF.l,X		; FF FF 00 FF
	sed		; F8
	phd		; 0B
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	sbc $F8FFFF.l,X		; FF FF FF F8
	asl $00BF.w		; 0E BF 00
	eor $005F00.l,X		; 5F 00 5F 00
	rol $03.b		; 26 03
	ora $03.b,X		; 15 03
	tsb $0202.w		; 0C 02 02
	brk $03.b		; 00 03
	sbc $5701FF.l,X		; FF FF 01 57
	eor [$36.b],Y		; 57 36
	rol $34.b,X		; 36 34
	bit $18.b,X		; 34 18
	clc		; 18
	php		; 08
	php		; 08
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $FF.b		; 00 FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $C723.w,X		; FD 23 C7
	jsl $EC50F5.l		; 22 F5 50 EC
	bra -17.b		; 80 EF
	cpx #$00CF.w		; E0 CF 00
	cmp $10FFFF.l,X		; DF FF FF 10
	tsb $1C.b		; 04 1C
	brk $00.b		; 00 00
	clc		; 18
	bra  74.b		; 80 4A
	rti		; 40

	ora $001FC0.l,X		; 1F C0 1F 00
	sbc $FFEF00.l,X		; FF 00 EF FF
	sbc $58D700.l,X		; FF 00 D7 58
	cmp $25A8.w		; CD A8 25
	php		; 08
	ora [$00.b],Y		; 17 00
	lsr $5B10.w,X		; 5E 10 5B
	tsb $0E59.w		; 0C 59 0E
	jmp $0EFFFF.l		; 5C FF FF 0E
	brk $7B.b		; 00 7B
	brk $3B.b		; 00 3B
	cpy #$E01B.w		; C0 1B E0
	ora $01E0.w		; 0D E0 01
	cpx $EE00.w		; EC 00 EE
	brk $EF.b		; 00 EF
	sbc $E701FF.l,X		; FF FF 01 E7
	and $DF00C0.l		; 2F C0 00 DF
	ora ($CD.b,X)		; 01 CD
	ora ($C1.b,X)		; 01 C1
	rol $C7.b		; 26 C7
	bit $286D.w		; 2C 6D 28
	sbc $10FFFF.l,X		; FF FF FF 10
	bpl -128.b		; 10 80
	and $803E80.l,X		; 3F 80 3E 80
	rol $1880.w,X		; 3E 80 18
	bra  16.b		; 80 10
	sta ($10.b,X)		; 81 10
	sta $00.b,S		; 83 00
	sbc $5203FF.l,X		; FF FF 03 52
	and $2D52.w		; 2D 52 2D
	and $0D3F0D.l,X		; 3F 0D 3F 0D
	asl $0800.w,X		; 1E 00 08
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	sbc $2D00FF.l,X		; FF FF 00 2D
	brk $2D.b		; 00 2D
	brk $0D.b		; 00 0D
	brk $0D.b		; 00 0D
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	sbc $9A00FF.l,X		; FF FF 00 9A
	stz $92.b		; 64 92
	jmp ($68FC.w)		; 6C FC 68
	jsr ($F868.w,X)		; FC 68 F8
	brk $10.b		; 00 10
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	sbc $6400F8.l,X		; FF F8 00 64
	brk $6C.b		; 00 6C
	brk $68.b		; 00 68
	brk $68.b		; 00 68
	brk $FF.b		; 00 FF
	cpx #$8000.w		; E0 00 80
	sbc $0000FF.l,X		; FF FF 00 00
	pha		; 48
	and [$48.b],Y		; 37 48
	and [$7F.b],Y		; 37 7F
	and ($7F.b),Y		; 31 7F
	and $007E.w,X		; 3D 7E 00
	php		; 08
	brk $07.b		; 00 07
	brk $FF.b		; 00 FF
	sbc $370001.l,X		; FF 01 00 37
	brk $37.b		; 00 37
	brk $31.b		; 00 31
	brk $3D.b		; 00 3D
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora ($FF.b,X)		; 01 FF
	sbc $9A0000.l,X		; FF 00 00 9A
	stz $92.b		; 64 92
	jmp ($68FC.w)		; 6C FC 68
	jsr ($F868.w,X)		; FC 68 F8
	brk $10.b		; 00 10
	brk $E0.b		; 00 E0
	brk $FF.b		; 00 FF
	sbc ($80.b),Y		; F1 80
	brk $64.b		; 00 64
	brk $6C.b		; 00 6C
	brk $68.b		; 00 68
	brk $68.b		; 00 68
	brk $FF.b		; 00 FF
	cpx #$FF00.w		; E0 00 FF
	sbc $000080.l,X		; FF 80 00 00
	eor #$36.b		; 49 36
	eor #$36.b		; 49 36
	adc $3E7F36.l,X		; 7F 36 7F 3E
	rol $0800.w,X		; 3E 00 08
	brk $07.b		; 00 07
	sbc $0100FF.l,X		; FF FF 00 01
	brk $36.b		; 00 36
	brk $36.b		; 00 36
	brk $36.b		; 00 36
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	sbc $0001FF.l,X		; FF FF 01 00
	brk $9A.b		; 00 9A
	stz $92.b		; 64 92
	jmp ($68FC.w)		; 6C FC 68
	jsr ($F868.w,X)		; FC 68 F8
	brk $10.b		; 00 10
	brk $E0.b		; 00 E0
	sbc $8000E3.l,X		; FF E3 00 80
	brk $64.b		; 00 64
	brk $6C.b		; 00 6C
	brk $68.b		; 00 68
	brk $68.b		; 00 68
	brk $FF.b		; 00 FF
	cpx #$FFFF.w		; E0 FF FF
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rti		; 40

	and $3F3F40.l,X		; 3F 40 3F 3F
	ora $101F3F.l,X		; 1F 3F 1F 10
	brk $08.b		; 00 08
	brk $FF.b		; 00 FF
	sbc $010007.l,X		; FF 07 00 01
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	ora $FF0700.l		; 0F 00 07 FF
	sbc $000100.l,X		; FF 00 01 00
	brk $02.b		; 00 02
	jsr ($FC02.w,X)		; FC 02 FC
	jsr ($FCF8.w,X)		; FC F8 FC
	sed		; F8
	php		; 08
	brk $10.b		; 00 10
	brk $FF.b		; 00 FF
	sbc $8000E0.l,X		; FF E0 00 80
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	cpx #$FFFF.w		; E0 FF FF
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	jsr $D11F.w		; 20 1F D1
	rol $2A.b		; 26 2A
	cmp $51.b		; C5 51
	sty $1AA4.w		; 8C A4 1A
	bmi  15.b		; 30 0F
	sbc $06A9FE.l,X		; FF FE A9 06
	sta $1F1F20.l,X		; 9F 20 1F 1F
	and $FFFF3F.l,X		; 3F 3F FF FF
	sed		; F8
	asl $7D.b		; 06 7D
	adc $5B5B.w,X		; 7D 5B 5B
	brk $FF.b		; 00 FF
	adc $FD00FF.l,X		; 7F FF 00 FD
	php		; 08
	sbc ($31.b,S),Y		; F3 31
	dec $1C43.w		; CE 43 1C
	tas		; 1B
	ldy #$00F7.w		; A0 F7 00
	sbc $FFFF20.l,X		; FF 20 FF FF
	sbc $06F8FF.l,X		; FF FF F8 06
	inc $FDFE.w,X		; FE FE FD
	sbc $CBCB.w,X		; FD CB CB
	ldx $86.b		; A6 86
	ora $DC.b,S		; 03 DC
	ora [$F8.b]		; 07 F8
	ora ($EC.b,S),Y		; 13 EC
	sbc $10CFF3.l,X		; FF F3 CF 10
	sbc $00F700.l		; EF 00 F7 00
	xce		; FB
	rts		; 60

	sbc $FF80.w,X		; FD 80 FF
	sbc $BFFFBF.l,X		; FF BF FF BF
	lda $8F1F1F.l,X		; BF 1F 1F 8F
	sta $8F0F6F.l		; 8F 6F 0F 8F
	ora $008000.l		; 0F 00 80 00
	bra -128.b		; 80 80
	rti		; 40

	ora $F8FE1B.l,X		; 1F 1B FE F8
	ora $C0.b		; 05 C0
	jsr $20C0.w		; 20 C0 20
	brk $FF.b		; 00 FF
	bra  -1.b		; 80 FF
	sed		; F8
	asl $C0.b		; 06 C0
	sbc $3EFFFF.l,X		; FF FF FF 3E
	ora ($11.b,X)		; 01 11
	jsr $A037.w		; 20 37 A0
	ldx $A0.b,Y		; B6 A0
	lda [$A0.b],Y		; B7 A0
	lda $B0BBB0.l,X		; BF B0 BB B0
	sbc $D0DBFF.l,X		; FF FF DB D0
	brk $00.b		; 00 00
	brk $EE.b		; 00 EE
	brk $EE.b		; 00 EE
	jsr $A0EF.w		; 20 EF A0
	sbc $90F7B0.l		; EF B0 F7 90
	sbc [$FF.b],Y		; F7 FF
	sbc $EFF750.l,X		; FF 50 F7 EF
	brk $7D.b		; 00 7D
	trb $BF.b		; 14 BF
	bra -33.b		; 80 DF
	rti		; 40

	adc $137220.l,X		; 7F 20 72 13
	eor $FFFF20.l,X		; 5F 20 FF FF
	sbc $00FF30.l		; EF 30 FF 00
	xba		; EB
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	bra  12.b		; 80 0C
	bra   0.b		; 80 00
	bra  -1.b		; 80 FF
	sbc $5E8600.l,X		; FF 00 86 5E
	ora $F30FD0.l		; 0F D0 0F F3
	bit $21FF.w		; 2C FF 21
	sbc $2FB32F.l,X		; FF 2F B3 2F
	sta $FF13.w,X		; 9D 13 FF
	sbc $EF0CFB.l,X		; FF FB 0C EF
	brk $EF.b		; 00 EF
	brk $CC.b		; 00 CC
	brk $C0.b		; 00 C0
	ora ($C3.b,X)		; 01 C3
	ora $E00FC1.l		; 0F C1 0F E0
	ora $FF.b,S		; 03 FF
	sbc $FD00F0.l,X		; FF F0 00 FD
	jsr $719E.w		; 20 9E 71
	cld		; D8
	and [$FB.b]		; 27 FB
	sta [$F8.b]		; 87 F8
	cmp [$FF.b]		; C7 FF
	cpy #$A1DF.w		; C0 DF A1
	sbc $12EFFF.l,X		; FF FF EF 12
	brk $26.b		; 00 26
	ora ($70.b,X)		; 01 70
	ora [$70.b]		; 07 70
	ora [$90.b]		; 07 90
	sta [$C0.b]		; 87 C0
	cpy #$80D0.w		; C0 D0 80
	lda #$FB.b		; A9 FB
	sbc $005000.l,X		; FF 00 50 00
	sbc $0D3EF8.l,X		; FF F8 3E 0D
	tsb $1C1D.w		; 0C 1D 1C
	and $7038.w,Y		; 39 38 70
	adc ($85.b,S),Y		; 73 85
	sta $88.b,S		; 83 88
	sbc $9B03FF.l,X		; FF FF 03 9B
	brk $FA.b		; 00 FA
	brk $03.b		; 00 03
	ora $061F03.l		; 0F 03 1F 06
	rol $7C0C.w,X		; 3E 0C 7C
	jmp ($7CFC.w,X)		; 7C FC 7C
	sbc $7E7CFF.l,X		; FF FF 7C 7E
	ror $7D7D.w,X		; 7E 7D 7D
	dec $ED22.w,X		; DE 22 ED
	tsb $12CF.w		; 0C CF 12
	bne  80.b		; D0 50
	eor $41.b		; 45 41
	lsr $FFFF.w,X		; 5E FF FF
	rti		; 40

	and $206EE0.l,X		; 3F E0 6E 20
	sta ($82.b,X)		; 81 82
	ora [$1E.b],Y		; 17 1E
	and ($32.b),Y		; 31 32
	and $00BE2C.l		; 2F 2C BE 00
	lda $00FFFF.l,X		; BF FF FF 00
	ora $809F00.l,X		; 1F 00 9F 80
	sbc $0CCD30.l,X		; FF 30 CD 0C
	eor $6212.w,X		; 5D 12 62
	cop $70.b		; 02 70
	brk $3E.b		; 00 3E
	sbc $7E80FF.l,X		; FF FF 80 7E
	brk $BD.b		; 00 BD
	jsr $10C0.w		; 20 C0 10
	plx		; FA
	asl $12E2.w,X		; 1E E2 12
	sbc $FF0D.w,X		; FD 0D FF
	brk $7F.b		; 00 7F
	sbc $FF00FF.l,X		; FF FF 00 FF
	ora ($DF.b,X)		; 01 DF
	ora $7E.b,S		; 03 7E
	brk $6E.b		; 00 6E
	brk $9F.b		; 00 9F
	ora ($DF.b,X)		; 01 DF
	sta ($FF.b,X)		; 81 FF
	sta ($7B.b,X)		; 81 7B
	ora $FB08FF.l,X		; 1F FF 08 FB
	php		; 08
	xce		; FB
	php		; 08
	sbc $7F7EFF.l,X		; FF FF 7E 7F
	rol $3E3F.w,X		; 3E 3F 3E
	and $F7FFFF.l,X		; 3F FF FF F7
	sbc $F7FFF7.l,X		; FF F7 FF F7
	sbc $05040B.l,X		; FF 0B 04 05
	asl A		; 0A
	ora [$0C.b]		; 07 0C
	ora $0E.b		; 05 0E
	ora $0C.b		; 05 0C
	sbc $0A03E3.l,X		; FF E3 03 0A
	ora ($0A.b,X)		; 01 0A
	phd		; 0B
	clc		; 18
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $FF.b		; 00 FF
	cop $FF.b		; 02 FF
	sbc $000400.l,X		; FF 00 04 00
	tsb $00.b		; 04 00
	tsb $01.b		; 04 01
	inc $25.b		; E6 25
	sbc [$16.b],Y		; F7 16
	tas		; 1B
	asl A		; 0A
	and $7605.w		; 2D 05 76
	sbc $3B02FF.l,X		; FF FF 02 3B
	ora ($1D.b,X)		; 01 1D
	brk $96.b		; 00 96
	brk $18.b		; 00 18
	ldy $1E08.w,X		; BC 08 1E
	tsb $EE.b		; 04 EE
	cop $F7.b		; 02 F7
	ora ($FF.b,X)		; 01 FF
	sbc $FD00FB.l,X		; FF FB 00 FD
	brk $FE.b		; 00 FE
	ora ($79.b,X)		; 01 79
	ora $301621.l		; 0F 21 16 30
	ora $10.b,S		; 03 10
	tsb $0C.b		; 04 0C
	ora $FF.b,S		; 03 FF
	and $020107.l,X		; 3F 07 01 02
	ora $01.b,S		; 03 01
	ora $001E03.l		; 0F 03 1E 00
	ora $000F00.l		; 0F 00 0F 00
	ora $00.b,S		; 03 00
	sbc $01FFFF.l,X		; FF FF FF 01
	brk $03.b		; 00 03
	adc $5F.b,S		; 63 5F
	adc ($4F.b,S),Y		; 73 4F
	adc ($0F.b,S),Y		; 73 0F
	sbc $F987.w,Y		; F9 87 F9
	eor [$FF.b]		; 47 FF
	sbc $ECD7E9.l,X		; FF E9 D7 EC
	cmp ($74.b,S),Y		; D3 74
	phk		; 4B
	sta $1F.b,S		; 83 1F
	sta $1F.b,S		; 83 1F
	sta $2F.b,S		; 83 2F
	ora ($2F.b,X)		; 01 2F
	ora ($57.b,X)		; 01 57
	sbc $D701FF.l,X		; FF FF 01 D7
	brk $D7.b		; 00 D7
	bra -37.b		; 80 DB
	asl $1F04.w		; 0E 04 1F
	tsb $98B8.w		; 0C B8 98
	lda ($11.b),Y		; B1 11
	sbc $FFFF28.l		; EF 28 FF FF
	sbc $3330.w,Y		; F9 30 33
	brk $90.b		; 00 90
	rti		; 40

	sbc ($05.b),Y		; F1 05
	cpx #$470C.w		; E0 0C 47
	ora $101F4E.l,X		; 1F 4E 1F 10
	sec		; 38
	sbc $3700FF.l,X		; FF FF 00 37
	cpy #$E0CF.w		; C0 CF E0
	sbc $9F155F.l		; EF 5F 15 9F
	ora $3E.b,X		; 15 3E
	pld		; 2B
	sbc $0A.b,X		; F5 0A
	rtl		; 6B

	ora $FF.b		; 05 FF
	sbc $ED02FE.l,X		; FF FE 02 ED
	brk $F7.b		; 00 F7
	php		; 08
	lda $B5.b		; A5 B5
	adc $75.b		; 65 75
	dex		; CA
	xba		; EB
	brk $0A.b		; 00 0A
	brk $F4.b		; 00 F4
	and $F001FE.l,X		; 3F FE 01 F0
	ora $F0.b,S		; 03 F0
	ora $E8.b,S		; 03 E8
	sbc $FFFEFF.l,X		; FF FF FE FF
	inc $FDFF.w,X		; FE FF FD
	adc $FBFEFC.l,X		; 7F FC FE FB
	sbc $FBF6.w,X		; FD F6 FB
	sbc $FFF6.w		; ED F6 FF
	sbc $FEFFFE.l,X		; FF FE FF FE
	sbc $FCFFFF.l,X		; FF FF FF FC
	inc $FDF9.w,X		; FE F9 FD
	sbc ($FB.b)		; F2 FB
	cpx $F6.b		; E4 F6
	eor $80.b,X		; 55 80
	pei ($00.b)		; D4 00
	cpx $00.b		; E4 00
	inc $02.b		; E6 02
	sbc $C3F5FF.l,X		; FF FF F5 C3
	jmp ($FE91.w,X)		; 7C 91 FE
	pla		; 68
	sta $B80396.l,X		; 9F 96 03 B8
	ora $A8.b,S		; 03 A8
	ora $98.b,S		; 03 98
	ora ($18.b,X)		; 01 18
	sbc $C8C0F8.l,X		; FF F8 C0 C8
	brk $90.b		; 00 90
	brk $68.b		; 00 68
	rts		; 60

	inc $00.b,X		; F6 00
	sbc $040303.l,X		; FF 03 03 04
	sbc $0504E9.l,X		; FF E9 04 05
	tsb $07.b		; 04 07
	tsb $0B.b		; 04 0B
	asl A		; 0A
	ora $FF000E.l		; 0F 0E 00 FF
	ora $03.b,S		; 03 03
	sbc $0307FF.l,X		; FF FF 07 03
	ora [$03.b]		; 07 03
	ora [$05.b]		; 07 05
	ora $3C0F01.l		; 0F 01 0F 3C
	bit $C3DB.w,X		; 3C DB C3
	ror $BF00.w,X		; 7E 00 BF
	sbc $3840EF.l,X		; FF EF 40 38
	cpy #$867E.w		; C0 7E 86
	sbc $38FF21.l,X		; FF 21 FF 38
	brk $3C.b		; 00 3C
	bit $FFFF.w,X		; 3C FF FF
	sed		; F8
	ora $F9.b		; 05 F9
	sbc $DEFFBF.l,X		; FF BF FF DE
	sbc $00FFC7.l,X		; FF C7 FF 00
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	cpy #$00C0.w		; C0 C0 00
	bra   0.b		; 80 00
	xce		; FB
	sbc $0AF8FF.l,X		; FF FF F8 0A
	cpy #$FF00.w		; C0 00 FF
	sed		; F8
	plp		; 28
	cpy $8400.w		; CC 00 84
	brk $47.b		; 00 47
	brk $47.b		; 00 47
	ora $3F.b,S		; 03 3F
	ora ($0B.b,X)		; 01 0B
	ora $1D04FF.l,X		; 1F FF 04 1D
	cop $16.b		; 02 16
	ora #$7B.b		; 09 7B
	sbc $383838.l,X		; FF 38 38 38
	tsa		; 3B
	brk $05.b		; 00 05
	sbc $0600FF.l,X		; FF FF 00 06
	brk $0A.b		; 00 0A
	brk $0B.b		; 00 0B
	eor $10E730.l,X		; 5F 30 E7 10
	sbc [$EC.b],Y		; F7 EC
	inc $FEF2.w,X		; FE F2 FE
	sbc ($FF.b),Y		; F1 FF
	sbc $9DF6FF.l,X		; FF FF F6 9D
	sta $4CCE.w,Y		; 99 CE 4C
	sta $000F80.l		; 8F 80 0F 00
	ora $E0.b,S		; 03 E0
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	sbc $F200FF.l,X		; FF FF 00 F2
	.db $62, $F9, $31		; 62 F9 31
	jmp ($007B.w,X)		; 7C 7B 00
	xce		; FB
	brk $F3.b		; 00 F3
	brk $D6.b		; 00 D6
	inc A		; 1A
	lsr $FFE0.w,X		; 5E E0 FF
	sbc $F71EFF.l,X		; FF FF 1E F7
	pea $E0E7.w		; F4 E7 E0
	sbc $07FF07.l,X		; FF 07 FF 07
	sbc $03E107.l,X		; FF 07 E1 03
	ora ($01.b,X)		; 01 01
	sbc $1800FF.l,X		; FF FF 00 18
	tay		; A8
	bvc  24.b		; 50 18
	cpx #$04FD.w		; E0 FD 04
	jsr ($FE04.w,X)		; FC 04 FE
	rti		; 40

	sbc $80F980.l,X		; FF 80 F9 80
	sbc $00F3FF.l,X		; FF FF F3 00
	cmp [$00.b]		; C7 00
	rol $FB09.w,X		; 3E 09 FB
	sbc $BDFFFB.l,X		; FF FB FF BD
	sbc $FE7E.w,X		; FD 7E FE
	ror $FFFE.w,X		; 7E FE FF
	sbc $F8FCFC.l,X		; FF FC FC F8
	sed		; F8
	cpy #$0AC9.w		; C0 C9 0A
	ora $190A.w,Y		; 19 0A 19
	ora $10.b,S		; 03 10
	ora $12.b		; 05 12
	ora [$12.b]		; 07 12
	sbc $3114FF.l,X		; FF FF 14 31
	ora $0D31.w,X		; 1D 31 0D
	and ($04.b,X)		; 21 04
	ora ($04.b,X)		; 01 04
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	brk $0C.b		; 00 0C
	brk $FF.b		; 00 FF
	sbc $0E000E.l,X		; FF 0E 00 0E
	brk $1E.b		; 00 1E
	brk $92.b		; 00 92
	brk $C9.b		; 00 C9
	brk $E3.b		; 00 E3
	brk $5D.b		; 00 5D
	brk $67.b		; 00 67
	brk $FF.b		; 00 FF
	sbc $71029C.l,X		; FF 9C 02 71
	bra  32.b		; 80 20
	cmp $007D01.l,X		; DF 01 7D 00
	ldx $1C00.w,Y		; BE 00 1C
	brk $E2.b		; 00 E2
	brk $F9.b		; 00 F9
	sbc $67009F.l,X		; FF 9F 00 67
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	rol $380E.w,X		; 3E 0E 38
	clc		; 18
	bmi  16.b		; 30 10
	jsr $FE00.w		; 20 00 FE
	sbc $0080FF.l		; EF FF 80 00
	beq  16.b		; F0 10
	ora ($0F.b,X)		; 01 0F
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $FF.b		; 00 FF
	sed		; F8
	ora [$10.b]		; 07 10
	sbc $A9F6FE.l,X		; FF FE F6 A9
	dec A		; 3A
	and $1B.b		; 25 1B
	trb $0D.b		; 14 0D
	cop $00.b		; 02 00
	sbc $AB07F8.l,X		; FF F8 07 AB
	brk $2D.b		; 00 2D
	brk $15.b		; 00 15
	xce		; FB
	sbc $000600.l,X		; FF 00 06 00
	sbc $5D06F8.l,X		; FF F8 06 5D
	brk $27.b		; 00 27
	brk $E0.b		; 00 E0
	brk $B8.b		; 00 B8
	rti		; 40

	eor $FF16B0.l		; 4F B0 16 FF
	sbc $C02308.l,X		; FF 08 23 C0
	sbc $E0FE.w,Y		; F9 FE E0
	sbc $C0.b,S		; E3 C0
	cmp $001F00.l,X		; DF 00 1F 00
	sbc [$00.b]		; E7 00
	sed		; F8
	brk $FF.b		; 00 FF
	sbc $FC00FD.l,X		; FF FD 00 FC
	sed		; F8
	sbc $9708D7.l,X		; FF D7 08 97
	php		; 08
	and $002B04.l		; 2F 04 2B 00
	stp		; DB
	brk $6A.b		; 00 6A
	sbc $9F00FF.l,X		; FF FF 00 9F
	tsb $ED.b		; 04 ED
	brk $03.b		; 00 03
	inx		; E8
	ora $E8.b,S		; 03 E8
	ora $D0.b,S		; 03 D0
	ora [$D0.b]		; 07 D0
	ora [$30.b]		; 07 30
	ora [$FF.b]		; 07 FF
	adc $6003F0.l,X		; 7F F0 03 60
	ora $98.b,S		; 03 98
	stp		; DB
	sbc $D8B6.w		; ED B6 D8
	ror $FCB2.w		; 6E B2 FC
	plp		; 28
	cpy #$0040.w		; C0 40 00
	inc $FF3F.w,X		; FE 3F FF
	iny		; C8
	sbc $D991.w		; ED 91 D9
	jsr $20B2.w		; 20 B2 20
	tay		; A8
	rti		; 40

	rti		; 40

	brk $FF.b		; 00 FF
	sbc $0BAFFF.l,X		; FF FF AF 0B
	ora [$05.b]		; 07 05
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($FF.b,X)		; 01 FF
	xce		; FB
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	tda		; 7B
	brk $05.b		; 00 05
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	sbc $0305F8.l,X		; FF F8 05 03
	ora $0B.b,S		; 03 0B
	sbc $1508FF.l,X		; FF FF 08 15
	bpl  47.b		; 10 2F
	jsr $405F.w		; 20 5F 40
	phk		; 4B
	rti		; 40

	adc $60.b		; 65 60
	and ($32.b),Y		; 31 32
	tsa		; 3B
	bit $FF07.w,X		; 3C 07 FF
	sbc $1F0F0F.l,X		; FF 0F 0F 1F
	ora $7F3F3F.l,X		; 1F 3F 3F 7F
	and $7F1F7F.l,X		; 3F 7F 1F 7F
	ora $3F073F.l		; 0F 3F 07 3F
	cmp [$FF.b]		; C7 FF
	sbc $3BCB44.l,X		; FF 44 CB 3B
	bne  60.b		; D0 3C
	sbc $25B81C.l		; EF 1C B8 25
	sbc $EF70.w,X		; FD 70 EF
	trb $7898.w		; 1C 98 78
	tyx		; BB
	sbc $84FFFF.l,X		; FF FF FF 84
	sta [$B3.b]		; 87 B3
	bra -36.b		; 80 DC
	cpy #$E3C7.w		; C0 C7 E3
	sta $C3.b,S		; 83 C3
	bra -128.b		; 80 80
	ora [$00.b]		; 07 00
	sei		; 78
	sbc $C678FF.l,X		; FF FF 78 C6
	stx $F1.b		; 86 F1
	ora ($CE.b,X)		; 01 CE
	brk $BE.b		; 00 BE
	brk $FF.b		; 00 FF
	bra -11.b		; 80 F5
	asl A		; 0A
	sed		; F8
	adc [$00.b],Y		; 77 00
	eor $78787F.l		; 4F 7F 78 78
	inc $FFFE.w,X		; FE FE FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $00FF8F.l,X		; FF 8F FF 00
	stx $FF7F.w		; 8E 7F FF
	bra  -1.b		; 80 FF
	rti		; 40

	rti		; 40

	cpy #$A040.w		; C0 40 A0
	jsr $FF00.w		; 20 00 FF
	sbc $05F8FF.l,X		; FF FF F8 05
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$C080.w		; C0 80 C0
	cpy #$BEE0.w		; C0 E0 BE
	bra  60.b		; 80 3C
	brk $39.b		; 00 39
	sbc $3301FF.l,X		; FF FF 01 33
	ora $06.b,S		; 03 06
	asl $0D.b		; 06 0D
	ora $1414.w		; 0D 14 14
	asl A		; 0A
	php		; 08
	bra -63.b		; 80 C1
	sta ($C3.b,X)		; 81 C3
	ora $FF.b,S		; 03 FF
	sbc $4F07C7.l,X		; FF C7 07 4F
	ora $0F0E1F.l		; 0F 1F 0E 0F
	sec		; 38
	and $6C1C10.l,X		; 3F 10 1C 6C
	pla		; 68
	bne -48.b		; D0 D0
	tay		; A8
	sbc $50A0FF.l,X		; FF FF A0 50
	rti		; 40

	bcs -128.b		; B0 80
	bvs   0.b		; 70 00
	cpx #$E000.w		; E0 00 E0
	brk $F0.b		; 00 F0
	sed		; F8
	cpx #$C0F8.w		; E0 F8 C0
	adc $80F0FC.l,X		; 7F FC F0 80
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $FF.b		; 00 FF
	ora $16E0.w,Y		; 19 E0 16
	sbc ($FF.b,X)		; E1 FF
	sbc $5EC52D.l,X		; FF 2D C5 5E
	dey		; 88
	adc [$10.b]		; 67 10
	sbc [$50.b],Y		; F7 50
	beq  80.b		; F0 50
	sei		; 78
	tya		; 98
	brk $FE.b		; 00 FE
	brk $F8.b		; 00 F8
	sbc $F002FB.l,X		; FF FB 02 F0
	ora [$E0.b]		; 07 E0
	ora $400F80.l		; 0F 80 0F 40
	php		; 08
	rti		; 40

	brk $FF.b		; 00 FF
	sed		; F8
	ora $80.b		; 05 80
	bra -64.b		; 80 C0
	sbc $4000FE.l,X		; FF FE 00 40
	cpy #$8060.w		; C0 60 80
	jsr $3060.w		; 20 60 30
	brk $FF.b		; 00 FF
	sed		; F8
	asl $80.b		; 06 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	sbc $4000FF.l,X		; FF FF 00 40
	brk $7F.b		; 00 7F
	brk $5F.b		; 00 5F
	jsr $205F.w		; 20 5F 20
	phk		; 4B
	bit $4B.b,X		; 34 4B
	bit $63.b,X		; 34 63
	trb $FF67.w		; 1C 67 FF
	inc $3718.w,X		; FE 18 37
	dey		; 88
	jmp ($7CFC.w,X)		; 7C FC 7C
	jsr ($BC3C.w,X)		; FC 3C BC
	inc $05F8.w,X		; FE F8 05
	sec		; 38
	clv		; B8
	sec		; 38
	sed		; F8
	beq  -1.b		; F0 FF
	sbc $0EF10F.l,X		; FF 0F F1 0E
	sed		; F8
	ora [$F8.b]		; 07 F8
	ora [$F8.b]		; 07 F8
	ora [$FC.b]		; 07 FC
	ora $F4.b,S		; 03 F4
	phd		; 0B
	sbc [$08.b],Y		; F7 08
	ora [$BF.b]		; 07 BF
	sbc $000600.l,X		; FF 00 06 00
	asl $00.b		; 06 00
	ora $00.b,S		; 03 00
	sbc $5F07F8.l,X		; FF F8 07 5F
	ldy $25.b		; A4 25
	cld		; D8
.ACCU 16
.INDEX 16
	rep #$35		; C2 35
	eor $FF.b,S		; 43 FF
	sbc $D926BC.l,X		; FF BC 26 D9
	eor $51B2A4.l,X		; 5F A4 B2 51
	adc $A4.b		; 65 A4
	brk $21.b		; 00 21
	bra   2.b		; 80 02
	clc		; 18
	brk $08.b		; 00 08
	sed		; F8
	sbc $04FF00.l,X		; FF 00 FF 04
	tsb $021C.w		; 0C 1C 02
	rol $1F60.w,X		; 3E 60 1F
	bra 127.b		; 80 7F
	php		; 08
	sbc [$FF.b],Y		; F7 FF
	sbc $010FF0.l,X		; FF F0 0F 01
	inc $FE01.w,X		; FE 01 FE
	cmp ($3E.b,X)		; C1 3E
	and ($CC.b)		; 32 CC
	ora $000680.l,X		; 1F 80 06 00
	asl $00.b		; 06 00
	sbc [$FC.b],Y		; F7 FC
	asl $00.b		; 06 00
	bit $FF00.w,X		; 3C 00 FF
	sed		; F8
	ora $20.b		; 05 20
	jsr $FF00.w		; 20 00 FF
	ora ($00.b,X)		; 01 00
	cop $FF.b		; 02 FF
	sbc #$0401.w		; E9 01 04
	ora $09.b,S		; 03 09
	asl $90.b		; 06 90
	sed		; F8
	brk $B0.b		; 00 B0
	brk $FF.b		; 00 FF
	bra   1.b		; 80 01
	sbc $0381FF.l,X		; FF FF 81 03
	ora $07.b,S		; 03 07
	ora [$1E.b]		; 07 1E
	ora [$3E.b]		; 07 3E
	ora ($79.b,X)		; 01 79
	asl $FD.b		; 06 FD
	asl $7D.b		; 06 7D
	bra -26.b		; 80 E6
	sbc $AF18FF.l,X		; FF FF 18 AF
	cli		; 58
	eor ($B1.b)		; 52 B1
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	rol $30.b,X		; 36 30
	adc ($70.b)		; 72 70
.ACCU 8
	sep #$E0		; E2 E0
	cpy #$FFDF.w		; C0 DF FF
	cmp ($C0.b,X)		; C1 C0
	cmp $88.b,S		; C3 88
	sta [$00.b]		; 87 00
	sbc $8019F8.l,X		; FF F8 19 80
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	rol $7F01.w,X		; 3E 01 7F
	sbc $7E007F.l,X		; FF 7F 00 7E
	ora ($FE.b,X)		; 01 FE
	ora ($FF.b,X)		; 01 FF
	brk $F7.b		; 00 F7
	php		; 08
	eor $DB32.w		; 4D 32 DB
	bit $1F.b		; 24 1F
	ora $FFFC3F.l,X		; 1F 3F FC FF
	sbc $5F6F6F.l,X		; FF 6F 6F 5F
	eor $3F0F0F.l,X		; 5F 0F 0F 3F
	and $FF7777.l,X		; 3F 77 77 FF
	clc		; 18
	sbc $1C7FFF.l,X		; FF FF 7F 1C
	cpx $8A.b		; E4 8A
	and $40DF84.l,X		; 3F 84 DF 40
	eor $0BB220.l		; 4F 20 B2 0B
	lda $E702.w,X		; BD 02 E7
	brk $FF.b		; 00 FF
	sbc $7F00E3.l,X		; FF E3 00 7F
	brk $7B.b		; 00 7B
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	bra   4.b		; 80 04
	cpy #$D000.w		; C0 00 D0
	sbc $FFFF0C.l		; EF 0C FF FF
	cpx $0B.b		; E4 0B
	pea $CD1B.w		; F4 1B CD
	ora ($9E.b,S),Y		; 13 9E
	jsl $DD91E7.l		; 22 E7 91 DD
	bit $AF.b		; 24 AF
	pha		; 48
	beq   0.b		; F0 00
	sbc $00F3FF.l,X		; FF FF F3 00
	sbc $00.b,S		; E3 00
	sep #$00		; E2 00
	cmp ($00.b,X)		; C1 00
	brk $18.b		; 00 18
	brk $22.b		; 00 22
	bpl -61.b		; 10 C3
	bit #$8E.b		; 89 8E
	sbc $322DFF.l,X		; FF FF 2D 32
	ora [$78.b],Y		; 17 78
	xba		; EB
	bvs  63.b		; 70 3F
	pha		; 48
	ply		; 7A
	and $44BD.w,Y		; 39 BD 44
	lsr $78.b,X		; 56 78
	adc [$FF.b],Y		; 77 FF
	sbc $C7C7FF.l,X		; FF FF C7 C7
	txy		; 9B
	ora $77.b,S		; 03 77
	ora [$C7.b]		; 07 C7
	sta $038F87.l		; 8F 87 8F 03
	ora [$81.b]		; 07 81
	ora ($E0.b,X)		; 01 E0
	jsr $FFFF.w		; 20 FF FF
	cpx #$D020.w		; E0 20 D0
	bpl -40.b		; 10 D8
	clc		; 18
	pea $BC04.w		; F4 04 BC
	mvp $E2,$1A		; 44 1A E2
	phy		; 5A
	ldx #$E0C0.w		; A2 C0 E0
	sbc $E0C0FF.l,X		; FF FF C0 E0
	cpx #$E0F0.w		; E0 F0 E0
	sed		; F8
	sed		; F8
	jsr ($FCF8.w,X)		; FC F8 FC
	jsr ($FCFE.w,X)		; FC FE FC
	inc $0006.w,X		; FE 06 00
	cmp $0AFD.w,X		; DD FD 0A
	brk $FF.b		; 00 FF
	sed		; F8
	tsb $0008.w		; 0C 08 00
	sbc $E00CF8.l,X		; FF F8 0C E0
	brk $FE.b		; 00 FE
	sed		; F8
	ora $60.b		; 05 60
	brk $60.b		; 00 60
	brk $F7.b		; 00 F7
	sbc $200060.l,X		; FF 60 00 20
	brk $FF.b		; 00 FF
	sed		; F8
	ora $D4B868.l		; 0F 68 B8 D4
	jmp $0692.w		; 4C 92 06
	ldy #$A020.w		; A0 20 A0
	bra  -1.b		; 80 FF
	sbc $4040E0.l,X		; FF E0 40 40
	bra -64.b		; 80 C0
	brk $04.b		; 00 04
	jsr $6022.w		; 20 22 60
	adc ($60.b,X)		; 61 60
	eor ($60.b,X)		; 41 60
	rti		; 40

	cpy #$EFD3.w		; C0 D3 EF
	brk $40.b		; 00 40
	brk $FF.b		; 00 FF
	bpl  16.b		; 10 10
	clc		; 18
	brk $08.b		; 00 08
	brk $FF.b		; 00 FF
	sed		; F8
	php		; 08
	jsr $BEF4.w		; 20 F4 BE
	brk $FF.b		; 00 FF
	bra   0.b		; 80 00
	rti		; 40

	brk $FF.b		; 00 FF
	sed		; F8
	ora $3F.b		; 05 3F
	brk $BF.b		; 00 BF
	bra -65.b		; 80 BF
	sbc $07F8FE.l,X		; FF FE F8 07
	and $80BE00.l,X		; 3F 00 BE 80
	sec		; 38
	sed		; F8
	inc $0BF8.w,X		; FE F8 0B
	clv		; B8
	sbc $05FA.w,Y		; F9 FA 05
	inc $09.b,X		; F6 09
	xce		; FB
	sbc $ED04FF.l,X		; FF FF 04 ED
	ora ($B7.b)		; 12 B7
	php		; 08
	txy		; 9B
	tsb $3F.b		; 04 3F
	bmi -74.b		; 30 B6
	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	clc		; 18
	brk $FF.b		; 00 FF
	sbc $36000C.l,X		; FF 0C 00 36
	brk $5A.b		; 00 5A
	jsr $706C.w		; 20 6C 70
	pea $F878.w		; F4 78 F8
	eor $C299.w,Y		; 59 99 C2
	.db $42, $DE		; 42 DE
	cmp [$F4.b]		; C7 F4
	dec $9090.w,X		; DE 90 90
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	and $FF7F3C.l,X		; 3F 3C 7F FF
	sed		; F8
	rol $70FE.w,X		; 3E FE 70
	beq  64.b		; F0 40
	cpy #$8000.w		; C0 00 80
	brk $FF.b		; 00 FF
	sta DMASRC7L.w		; 8D 72 43
	xce		; FB
	sbc [$3C.b],Y		; F7 3C
	asl $00.b		; 06 00
	sbc $2009F8.l,X		; FF F8 09 20
	brk $10.b		; 00 10
	sta ($00.b,X)		; 81 00
	cop $00.b		; 02 00
	sbc $0808F8.l,X		; FF F8 08 08
	ora [$7F.b]		; 07 7F
	and $3C0B14.l,X		; 3F 14 0B 3C
	ora $3E.b,S		; 03 3E
	ora ($7F.b,X)		; 01 7F
	brk $FE.b		; 00 FE
	sed		; F8
	ora $07.b		; 05 07
	ora [$0F.b]		; 07 0F
	ora $FFA61F.l		; 0F 1F A6 FF
	sbc $BEFF3E.l,X		; FF 3E FF BE
	ror $44FE.w,X		; 7E FE 44
	lda $D4.b,S		; A3 D4
	and ($DE.b,S),Y		; 33 DE
	sbc $CC39FF.l,X		; FF FF 39 CC
	and $18EF.w,Y		; 39 EF 18
	plx		; FA
	tsb $F9.b		; 04 F9
	asl $F0.b		; 06 F0
	ora $088398.l		; 0F 98 83 08
	ora $00.b,S		; 03 00
	sbc $0003FF.l,X		; FF FF 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($04.b,X)		; 01 04
	brk $07.b		; 00 07
	brk $B0.b		; 00 B0
	bcs  40.b		; B0 28
	plp		; 28
	php		; 08
	sbc $1008FF.l,X		; FF FF 08 10
	bpl   8.b		; 10 08
	php		; 08
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	bcc -112.b		; 90 90
	bvs  -8.b		; 70 F8
	clc		; 18
	jsr ($FF18.w,X)		; FC 18 FF
	sbc $3C087C.l,X		; FF 7C 08 3C
	bpl  60.b		; 10 3C
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	bvs  -8.b		; 70 F8
	xce		; FB
	tsb $F7.b		; 04 F7
	php		; 08
	sbc $001FFF.l,X		; FF FF 1F 00
	sbc $007F00.l,X		; FF 00 7F 00
	and $011F01.l,X		; 3F 01 1F 01
	trb $7706.w		; 1C 06 77
	adc [$6D.b],Y		; 77 6D
	sbc $48FFFF.l,X		; FF FF FF 48
	pha		; 48
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ror $88.b,X		; 76 88
	adc ($9C.b)		; 72 9C
	sbc $9F70FF.l,X		; FF FF 70 9F
	eor $009F.w,Y		; 59 9F 00
	bne  54.b		; D0 36
	wai		; CB
	trb $E0.b		; 14 E0
	sta [$6A.b],Y		; 97 6A
	brk $C1.b		; 00 C1
	asl $C1.b		; 06 C1
	sbc $C006FF.l,X		; FF FF 06 C0
	brk $E0.b		; 00 E0
	ora $C004E0.l		; 0F E0 04 C0
	ora $6004E0.l		; 0F E0 04 60
	plx		; FA
	ora ($5C.b),Y		; 11 5C
	ora ($FF.b,S),Y		; 13 FF
	sbc $70A7B8.l,X		; FF B8 A7 70
	eor $049E41.l		; 4F 41 9E 04
	sec		; 38
	ora [$60.b],Y		; 17 60
	cld		; D8
	ora [$20.b]		; 07 20
	ora [$E0.b]		; 07 E0
	ora [$FF.b]		; 07 FF
	sta $800F40.l		; 8F 40 0F 80
	ora $803F00.l,X		; 1F 00 3F 80
	adc $07F800.l,X		; 7F 00 F8 07
	cpx #$FF00.w		; E0 00 FF
	sta $0003FF.l,X		; 9F FF 03 00
	ora $02.b		; 05 02
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $A05F80.l,X		; 7F 80 5F A0
	brk $3F.b		; 00 3F
	sbc $0202FF.l,X		; FF FF 02 02
	brk $00.b		; 00 00
	sbc $0000FF.l,X		; FF FF 00 00
	cpx #$F800.w		; E0 00 F8
	sbc $FC00D3.l,X		; FF D3 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cpx #$C7FF.w		; E0 FF C7
	cpx #$F8F8.w		; E0 F8 F8
	pea $0CF4.w		; F4 F4 0C
	tsb $8484.w		; 0C 84 84
	lda $00B9.w,Y		; B9 B9 00
	sbc $02FFE3.l,X		; FF E3 FF 02
	cop $04.b		; 02 04
	sbc $010202.l,X		; FF 02 02 01
	ora ($0C.b,X)		; 01 0C
	tsb $0000.w		; 0C 00 00
	brk $FF.b		; 00 FF
	sbc $070103.l,X		; FF 03 01 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	tsb $0F.b		; 04 0F
	cop $1F.b		; 02 1F
	bpl  63.b		; 10 3F
	brk $00.b		; 00 00
	asl A		; 0A
	sbc $1A0AFF.l,X		; FF FF 0A 1A
	inc A		; 1A
	rts		; 60

	rts		; 60

	ora ($01.b,X)		; 01 01
	asl $06.b		; 06 06
	dey		; 88
	dey		; 88
	jsr $0050.w		; 20 50 00
	asl $FF06.w		; 0E 06 FF
	cmp $FF839F.l,X		; DF 9F 83 FF
	ora $FF.b,S		; 03 FF
	cop $77.b		; 02 77
	brk $8F.b		; 00 8F
	brk $FF.b		; 00 FF
	bmi -114.b		; 30 8E
	brk $FF.b		; 00 FF
	sed		; F8
	ora $1DFFFD.l		; 0F FD FF 1D
	brk $FF.b		; 00 FF
	sed		; F8
	ora $013C.w		; 0D 3C 01
	ora $0101.w,Y		; 19 01 01
	jmp ($2C6C.w)		; 6C 6C 2C
	bit $1414.w		; 2C 14 14
	tsb $FF.b		; 04 FF
	sbc $040414.l,X		; FF 14 04 04
	php		; 08
	cmp $03.b,S		; C3 03
	adc [$66.b]		; 67 66
	sbc $1EFF1E.l,X		; FF 1E FF 1E
	adc $0E3F0E.l,X		; 7F 0E 3F 0E
	cmp [$1C.b]		; C7 1C
	and $001F0E.l,X		; 3F 0E 1F 00
	sbc $05FF01.l,X		; FF 01 FF 05
	eor $04FFFF.l		; 4F FF FF 04
	tsb $00.b		; 04 00
	sbc $010001.l,X		; FF 01 00 01
	cop $03.b		; 02 03
	cop $07.b		; 02 07
	sbc $0702E3.l		; EF E3 02 07
	cop $06.b		; 02 06
	brk $FF.b		; 00 FF
	sed		; F8
	asl A		; 0A
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	sbc $F7FE80.l,X		; FF 80 FE F7
	brk $FE.b		; 00 FE
	sed		; F8
	ora #$00.b		; 09 00
	asl $01.b		; 06 01
	asl $0E01.w		; 0E 01 0E
	ora ($1F.b,X)		; 01 1F
	brk $FE.b		; 00 FE
	sed		; F8
	ora [$03.b]		; 07 03
	ora $F8.b,S		; 03 F8
	sbc ($07.b),Y		; F1 07
	sbc $0E0F0F.l,X		; FF 0F 0F 0E
	asl $FF0D.w		; 0E 0D FF
	asl A		; 0A
	asl A		; 0A
	sbc $827FFF.l,X		; FF FF 7F 82
	sbc $14EF02.l,X		; FF 02 EF 14
	sta $5FBF6F.l,X		; 9F 6F BF 5F
	sbc $7CFF3E.l,X		; FF 3E FF 7C
	xce		; FB
	jsr ($FFFF.w,X)		; FC FF FF
	sbc ($F3.b)		; F2 F3
	iny		; C8
	wai		; CB
	ldy $B7.b,X		; B4 B7
	adc $6F.b		; 65 6F
	cmp $BE9CDF.l		; CF DF 9C BE
	and $717D.w,Y		; 39 7D 71
	sbc $FFFF.w,X		; FD FF FF
	sbc #$B6.b		; E9 B6
	sbc $AA.b,X		; F5 AA
	cmp $BEFF60.l,X		; DF 60 FF BE
	sbc $77FBC0.l,X		; FF C0 FB 77
	sbc $2AFB01.l,X		; FF 01 FB 2A
	sbc $B2A2FF.l,X		; FF FF A2 B2
	asl $00EE.w		; 0E EE 00
	beq  22.b		; F0 16
	inc $F0C0.w,X		; FE C0 F0
	bmi 112.b		; 30 70
	bra -128.b		; 80 80
	sty $80.b		; 84 80
	sbc $ABB4FF.l,X		; FF FF B4 AB
	and $FA06.w,Y		; 39 06 FA
	and $7C.b,X		; 35 7C
	sbc $2F.b,S		; E3 2F
	brk $DF.b		; 00 DF
	tsb $21.b		; 04 21
	rol $37E9.w,X		; 3E E9 37
	sbc $0F4FFF.l,X		; FF FF 4F 0F
	wai		; CB
	phd		; 0B
	rol $06.b,X		; 36 06
	adc $45.b		; 65 45
	cmp ($C1.b),Y		; D1 C1
	bit $04.b		; 24 04
	dec $36.b,X		; D6 36
	plx		; FA
	tsa		; 3B
	sbc $003EFF.l,X		; FF FF 3E 00
	and $003F00.l,X		; 3F 00 3F 00
	and $0B3F06.l,X		; 3F 06 3F 0B
	and [$0D.b],Y		; 37 0D
	and $031F06.l,X		; 3F 06 1F 03
	sbc $0000FF.l,X		; FF FF 00 00
	asl $111E.w,X		; 1E 1E 11
	ora ($10.b),Y		; 11 10
	asl $02.b,X		; 16 02
	phd		; 0B
	ora $0D.b		; 05 0D
	ora ($16.b)		; 12 16
	ora #$0B.b		; 09 0B
	sbc $0000FF.l,X		; FF FF 00 00
	bra   0.b		; 80 00
	cpx #$B000.w		; E0 00 B0
	rti		; 40

	pha		; 48
	bcs -20.b		; B0 EC
	bne -12.b		; D0 F4
	inx		; E8
	inc $08.b,X		; F6 08
	sed		; F8
	sbc $80FF00.l,X		; FF 00 FF 80
	bra  96.b		; 80 60
	rts		; 60

	bmi -80.b		; 30 B0
	tya		; 98
	cld		; D8
	iny		; C8
	inx		; E8
	tsb $FFFF.w		; 0C FF FF
	tsb $0000.w		; 0C 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	tsb $03.b		; 04 03
	ora #$06.b		; 09 06
	tas		; 1B
	ora $37.b		; 05 37
	phd		; 0B
	and $10FFF1.l		; 2F F1 FF 10
	brk $FF.b		; 00 FF
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	asl $06.b		; 06 06
	ora $190D.w		; 0D 0D 19
	tas		; 1B
	sbc $1818FF.l,X		; FF FF 18 18
	sei		; 78
	brk $C4.b		; 00 C4
	sec		; 38
	jmp ($FC90.w)		; 6C 90 FC
	rts		; 60

	cpx $FCD0.w		; EC D0 FC
	ldy #$60F8.w		; A0 F8 60
	sbc $C0F8FF.l,X		; FF FF F8 C0
	brk $00.b		; 00 00
	sei		; 78
	sei		; 78
	tya		; 98
	tya		; 98
	php		; 08
	pla		; 68
	rti		; 40

	bne -88.b		; D0 A8
	tay		; A8
	rti		; 40

	rts		; 60

	sbc $D090FF.l,X		; FF FF 90 D0
	eor $C837A0.l,X		; 5F A0 37 C8
	eor $D3B2.w		; 4D B2 D3
	bit $1BE7.w		; 2C E7 1B
	inc $FC12.w		; EE 12 FC
	tsb $E3.b		; 04 E3
	sbc $FF07FC.l,X		; FF FC 07 FF
	sbc $FCFEFE.l,X		; FF FE FE FC
	jsr ($F8F8.w,X)		; FC F8 F8
	cmp $B3D8.w,Y		; D9 D8 B3
	sbc $B0B0FF.l,X		; FF FF B0 B0
	bcs  -1.b		; B0 FF
	brk $FB.b		; 00 FB
	tsb $EA.b		; 04 EA
	ora $E8.b,X		; 15 E8
	ora [$F5.b],Y		; 17 F5
	txa		; 8A
	adc $3F42.w,X		; 7D 42 3F
	sbc $FFC0FF.l,X		; FF FF C0 FF
	cpy #$FCFC.w		; C0 FC FC
	inc $77FE.w,X		; FE FE 77
	adc [$37.b],Y		; 77 37
	and [$1B.b],Y		; 37 1B
	tas		; 1B
	txy		; 9B
	tas		; 1B
	tas		; 1B
	ora $DA1BFF.l,X		; 1F FF 1B DA
	inc A		; 1A
	bpl  16.b		; 10 10
	rti		; 40

	sbc $500000.l,X		; FF 00 00 50
	bvc  32.b		; 50 20
	jsr $FFFF.w		; 20 FF FF
	php		; 08
	php		; 08
	ora $05.b		; 05 05
	jsr $207F.w		; 20 7F 20
	sed		; F8
	rts		; 60

	beq  96.b		; F0 60
	beq  32.b		; F0 20
	sed		; F8
	brk $7E.b		; 00 7E
	sbc $3F06FC.l,X		; FF FC 06 3F
	php		; 08
	ora $007000.l,X		; 1F 00 70 00
	bvs   0.b		; 70 00
	sbc $030101.l,X		; FF 01 01 03
	cmp $881B7F.l,X		; DF 7F 1B 88
	ldy $30.b,X		; B4 30
	bra   0.b		; 80 00
	sbc $0105F8.l,X		; FF F8 05 01
	brk $03.b		; 00 03
	brk $87.b		; 00 87
	clc		; 18
	cmp $00.b,S		; C3 00
	sbc $F8FFF3.l,X		; FF F3 FF F8
	asl $0404.w,X		; 1E 04 04
	php		; 08
	php		; 08
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	ora $FF.b		; 05 FF
	brk $FF.b		; 00 FF
	sbc $1F0E00.l,X		; FF 00 0E 1F
	asl $1F.b		; 06 1F
	asl $1F.b		; 06 1F
	asl $0F.b		; 06 0F
	cop $0F.b		; 02 0F
	cop $0F.b		; 02 0F
	cop $0F.b		; 02 0F
	brk $F7.b		; 00 F7
	sbc $04040F.l,X		; FF 0F 04 04
	brk $FF.b		; 00 FF
	sed		; F8
	asl $01.b		; 06 01
	ora ($02.b,X)		; 01 02
	cop $03.b		; 02 03
	ora $00.b,S		; 03 00
	tsb $00.b		; 04 00
	php		; 08
	pea $00FF.w		; F4 FF 00
	sbc $070303.l,X		; FF 03 03 07
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc $0002DF.l,X		; FF DF 02 00
	cop $00.b		; 02 00
	ora [$00.b]		; 07 00
	sta [$80.b]		; 87 80
	phb		; 8B
	bra  20.b		; 80 14
	brk $00.b		; 00 00
	ora ($FE.b,X)		; 01 FE
	sed		; F8
	ora [$FF.b]		; 07 FF
	sbc $80C080.l,X		; FF 80 C0 80
	cpy $80.b		; C4 80
	cmp $0F001F.l		; CF 1F 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $FF.b		; 00 FF
	sei		; 78
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	asl A		; 0A
	asl A		; 0A
	asl $FF.b		; 06 FF
	ora [$07.b]		; 07 07
	ora $FC.b,S		; 03 FC
	sbc $0101FF.l,X		; FF FF 01 01
	brk $00.b		; 00 00
	sbc [$F8.b],Y		; F7 F8
	sbc #$76.b		; E9 76
	plx		; FA
	phd		; 0B
	ldx $10.b,Y		; B6 10
	sbc $20E3FF.l,X		; FF FF E3 20
	cmp #$38.b		; C9 38
	sep #$0E		; E2 0E
	beq   3.b		; F0 03
	adc $FB.b,S		; 63 FB
	ora ($71.b,X)		; 01 71
	sty $80.b		; 84 80
	eor $FFFF40.l		; 4F 40 FF FF
	ora $808700.l,X		; 1F 00 87 80
	cmp ($C0.b,X)		; C1 C0
	cpx #$FFE0.w		; E0 E0 FF
	bmi -49.b		; 30 CF
	jsr $907F.w		; 20 7F 90
	sbc [$00.b],Y		; F7 00
	sbc $48DBFF.l,X		; FF FF DB 48
	cmp $51F754.l,X		; DF 54 F7 51
	xba		; EB
	pha		; 48
	sta $809F80.l		; 8F 80 9F 80
	ora $000F00.l		; 0F 00 0F 00
	sbc $6027FF.l,X		; FF FF 27 60
	and $70.b,S		; 23 70
	php		; 08
	cli		; 58
	asl $5E.b,X		; 16 5E
	lda ($12.b)		; B2 12
	sbc ($41.b),Y		; F1 41
	sbc [$01.b],Y		; F7 01
	sbc $FFFFA2.l,X		; FF A2 FF FF
	tyx		; BB
	brk $FF.b		; 00 FF
	php		; 08
	sbc $01FF20.l,X		; FF 20 FF 01
	sbc $00BE1E.l,X		; FF 1E BE 00
	inc $5C00.w,X		; FE 00 5C
	brk $FF.b		; 00 FF
	sbc $F101FD.l,X		; FF FD 01 F1
	ora ($C3.b,X)		; 01 C3
	ora $17.b,S		; 03 17
	ora [$1F.b]		; 07 1F
	ora ($0F.b,X)		; 01 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $FF.b		; 00 FF
	sbc $30021D.l,X		; FF 1D 02 30
	ora $C31F60.l		; 0F 60 1F C3
	bit $0D0C.w,X		; 3C 0C 0D
	asl $06.b		; 06 06
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	sbc $0707FF.l,X		; FF FF 07 07
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	adc $049A7F.l,X		; 7F 7F 9A 04
	plb		; AB
	stz $8C.b		; 64 8C
	and $FE.b,S		; 23 FE
	ora ($FF.b,X)		; 01 FF
	sbc $F90DF2.l,X		; FF F2 0D F9
	asl $F3.b		; 06 F3
	ora $0BF6.w		; 0D F6 0B
	jmp ($B46C.w)		; 6C 6C B4
	ldy $D3.b,X		; B4 D3
	cmp ($65.b,S),Y		; D3 65
	adc $FF.b		; 65 FF
	sbc $AE1F1F.l,X		; FF 1F 1F AE
	ldx $7D7D.w		; AE 7D 7D
	asl A		; 0A
	phd		; 0B
	adc #$10.b		; 69 10
	plx		; FA
	asl $F8.b		; 06 F8
	cop $3F.b		; 02 3F
	cpy #$FFFF.w		; C0 FF FF
	ora $F807E0.l,X		; 1F E0 07 F8
	ora [$F8.b]		; 07 F8
	ora ($FE.b,X)		; 01 FE
	rol $36.b,X		; 36 36
	phd		; 0B
	phd		; 0B
	sbc $E6ED.w		; ED ED E6
	inc $FF.b		; E6 FF
	sbc $FDF1F1.l,X		; FF F1 F1 FD
	sbc $F8F8.w,X		; FD F8 F8
	sbc $C0B0FF.l,X		; FF FF B0 C0
	beq   0.b		; F0 00
	sed		; F8
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	sbc $DE00FF.l,X		; FF FF 00 DE
	and ($83.b,X)		; 21 83
	jmp ($3EC1.w,X)		; 7C C1 3E
	brk $C0.b		; 00 C0
	jsr $6020.w		; 20 20 60
	rts		; 60

	cld		; D8
	cld		; D8
	sbc $8686FF.l,X		; FF FF 86 86
	adc $FE79.w,Y		; 79 79 FE
	inc $7F7F.w,X		; FE 7F 7F
	inc A		; 1A
	tsb $65.b		; 04 65
	brk $58.b		; 00 58
	brk $70.b		; 00 70
	brk $FF.b		; 00 FF
	sbc $890065.l,X		; FF 65 00 89
	brk $8B.b		; 00 8B
	brk $55.b		; 00 55
	brk $01.b		; 00 01
	ora ($1A.b,X)		; 01 1A
	inc A		; 1A
	and [$37.b],Y		; 37 37
	and $FFFF2F.l		; 2F 2F FF FF
	asl $7E1E.w,X		; 1E 1E 7E
	ror $7D7D.w,X		; 7E 7D 7D
	tsa		; 3B
	tsa		; 3B
	and $3F7F9F.l,X		; 3F 9F 7F 3F
	lda $3EDD7F.l,X		; BF 7F DD 3E
	sbc $1876FF.l,X		; FF FF 76 18
	cmp $FE00.w,X		; DD 00 FE
	brk $DE.b		; 00 DE
	brk $4F.b		; 00 4F
	eor $1EBF9F.l,X		; 5F 9F BF 1E
	adc $FF3E00.l,X		; 7F 00 3E FF
	sed		; F8
	cmp ($D9.b,X)		; C1 D9
	inc $E6.b		; E6 E6
	cmp [$D7.b],Y		; D7 D7
	lda [$B7.b],Y		; B7 B7
	brk $FF.b		; 00 FF
	and $EF6900.l,X		; 3F 00 69 EF
	sbc [$27.b]		; E7 27
	adc $33.b,X		; 75 33
	and $F8FF00.l,X		; 3F 00 FF F8
	ora #$1F.b		; 09 1F
	and $003F0F.l,X		; 3F 0F 3F 00
	sbc $1CFFFF.l,X		; FF FF FF 1C
	brk $26.b		; 00 26
	brk $E5.b		; 00 E5
	jsl $538649.l		; 22 49 86 53
	stx $1CEE.w		; 8E EE 1C
	ror $4220.w,X		; 7E 20 42
	brk $FF.b		; 00 FF
	sbc $1C0000.l,X		; FF 00 00 1C
	brk $1E.b		; 00 1E
	brk $36.b		; 00 36
	brk $3E.b		; 00 3E
	brk $1C.b		; 00 1C
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	bit $7FFF.w,X		; 3C FF 7F
	brk $00.b		; 00 00
	sec		; 38
	brk $5C.b		; 00 5C
	brk $6C.b		; 00 6C
	jsr $3074.w		; 20 74 30
	jmp $384438.l		; 5C 38 44 38
	jmp ($FA00.w,X)		; 7C 00 FA
	stp		; DB
	sbc $183838.l,X		; FF 38 38 18
	sec		; 38
	php		; 08
	sec		; 38
	brk $FE.b		; 00 FE
	sed		; F8
	ora $00.b		; 05 00
	sbc $DF27F8.l,X		; FF F8 27 DF
	sbc $3D0003.l,X		; FF 03 00 3D
	ora $7F.b,S		; 03 7F
	brk $FF.b		; 00 FF
	sed		; F8
	phd		; 0B
	ora ($03.b,X)		; 01 03
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	tsb $FF00.w		; 0C 00 FF
	sta $2A0016.l		; 8F 16 00 2A
	tsb $D2.b		; 04 D2
	tsb $D84C.w		; 0C 4C D8
	sei		; 78
	beq  16.b		; F0 10
	bra   0.b		; 80 00
	sbc $0CFFFF.l,X		; FF FF FF 0C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	rts		; 60

	brk $00.b		; 00 00
	asl $4FFF.w		; 0E FF 4F
	brk $19.b		; 00 19
	asl $19.b		; 06 19
	asl $35.b		; 06 35
	cop $5D.b		; 02 5D
	and $3F3F41.l,X		; 3F 41 3F 3F
	brk $F9.b		; 00 F9
	sbc $FF0EFF.l		; EF FF 0E FF
	ora $3F.b,S		; 03 3F
	ora ($3F.b,X)		; 01 3F
	brk $07.b		; 00 07
	brk $FF.b		; 00 FF
	sed		; F8
	asl $FC.b		; 06 FC
	lda $4E007F.l,X		; BF 7F 00 4E
	jmp.w [$FC7D]		; DC 7D FC
	sbc ($00.b),Y		; F1 00
	sbc $3C09F8.l,X		; FF F8 09 3C
	brk $3C.b		; 00 3C
	cop $00.b		; 02 00
	asl $BF00.w		; 0E 00 BF
	xce		; FB
	sbc $3F0AF8.l,X		; FF F8 0A 3F
	brk $40.b		; 00 40
	and $F8FF00.l,X		; 3F 00 FF F8
	ora $003F.w		; 0D 3F 00
	sbc $FC0AF8.l,X		; FF F8 0A FC
	brk $FE.b		; 00 FE
	sbc $80FF.w,X		; FD FF 80
	brk $FF.b		; 00 FF
	sed		; F8
	ora $007C.w		; 0D 7C 00
	brk $0E.b		; 00 0E
	brk $17.b		; 00 17
	asl $0E17.w		; 0E 17 0E
	tsa		; 3B
	asl $62.b		; 06 62
	ora $7E23F3.l,X		; 1F F3 23 7E
	and $000E31.l,X		; 3F 31 0E 00
	sbc $1EFF0E.l,X		; FF 0E FF 1E
	cmp $003E7F.l,X		; DF 7F 3E 00
	rol $0E00.w,X		; 3E 00 0E
	brk $FF.b		; 00 FF
	sed		; F8
	asl $F8.b		; 06 F8
	brk $B4.b		; 00 B4
	bcc -126.b		; 90 82
	bra  -2.b		; 80 FE
	brk $FF.b		; 00 FF
	sbc $09F8FF.l,X		; FF FF F8 09
	bvs   8.b		; 70 08
	rti		; 40

	bit $0C00.w,X		; 3C 00 0C
	brk $00.b		; 00 00
	ora $0F1600.l		; 0F 00 16 0F
	asl $0F.b,X		; 16 0F
	sbc $041B18.l,X		; FF 18 1B 04
	jsl $183C00.l		; 22 00 3C 18
	plp		; 28
	bpl   0.b		; 10 00
	sbc $FFFF0E.l,X		; FF 0E FF FF
	sbc $1C0C0C.l,X		; FF 0C 0C 1C
	trb $1800.w		; 1C 00 18
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	jsr ($9A00.w,X)		; FC 00 9A
	sty $FF.b		; 84 FF
	sbc #$B6.b		; E9 B6
	sty $1CEE.w		; 8C EE 1C
	and ($10.b)		; 32 10
	jsl $003E00.l		; 22 00 3E 00
	sbc $FF007C.l,X		; FF 7C 00 FF
	sbc $1C007C.l,X		; FF 7C 00 1C
	brk $10.b		; 00 10
	tsb $1C00.w		; 0C 00 1C
	brk $1C.b		; 00 1C
	and [$00.b],Y		; 37 00
	pld		; 2B
	brk $1E.b		; 00 1E
	brk $FF.b		; 00 FF
	sbc $19081D.l,X		; FF 1D 08 19
	ora #$13.b		; 09 13
	brk $17.b		; 00 17
	brk $3B.b		; 00 3B
	clc		; 18
	tas		; 1B
	tas		; 1B
	ora [$17.b],Y		; 17 17
	ora [$07.b]		; 07 07
	sbc $0202FF.l,X		; FF FF 02 02
	asl $00.b		; 06 00
	ora $000F00.l		; 0F 00 0F 00
	ora [$00.b]		; 07 00
	eor $BD02.w,X		; 5D 02 BD
	cop $B8.b		; 02 B8
	ora $FF.b,S		; 03 FF
	sta $A91328.l		; 8F 28 13 A9
	ora ($7F.b)		; 12 7F
	rti		; 40

	lda ($00.b,X)		; A1 00
	rts		; 60

	rti		; 40

	lda [$B7.b],Y		; B7 B7
	adc [$FF.b],Y		; 77 FF
	xce		; FB
	sbc $77F7F7.l,X		; FF F7 F7 77
	adc [$80.b],Y		; 77 80
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $FF.b		; 00 FF
	sed		; F8
	ora $61.b		; 05 61
	brk $5E.b		; 00 5E
	lda $6621FF.l,X		; BF FF 21 66
	ora [$24.b]		; 07 24
	ora [$1F.b]		; 07 1F
	brk $FF.b		; 00 FF
	sed		; F8
	ora [$20.b]		; 07 20
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	sbc $7C003F.l,X		; FF 3F 00 7C
	brk $84.b		; 00 84
	sei		; 78
	clv		; B8
	bvs -88.b		; 70 A8
	cpy #$E090.w		; C0 90 E0
	ldy #$C0C0.w		; A0 C0 C0
	brk $FE.b		; 00 FE
	and $0038FF.l,X		; 3F FF 38 00
	sei		; 78
	rti		; 40

	bvs -16.b		; 70 F0
	beq -32.b		; F0 E0
	cpx #$C0C0.w		; E0 C0 C0
	brk $FE.b		; 00 FE
	sbc $0044FF.l,X		; FF FF 44 00
	jmp ($7438.w,X)		; 7C 38 74
	sec		; 38
	jmp $5330.w		; 4C 30 53
	jsr $0766.w		; 20 66 07
	bit $FF.b		; 24 FF
	sbc $001F07.l,X		; FF 07 1F 00
	brk $38.b		; 00 38
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	sbc $0000FF.l,X		; FF FF 00 00
	brk $06.b		; 00 06
	brk $0A.b		; 00 0A
	tsb $1A.b		; 04 1A
	tsb $086C.w		; 0C 6C 08
	sty $60.b,X		; 94 60
	tya		; 98
	cpx #$E3F0.w		; E0 F0 E3
	sbc $00C0C0.l,X		; FF C0 C0 00
	sbc $0C0004.l,X		; FF 04 00 0C
	bpl  24.b		; 10 18
	sei		; 78
	sei		; 78
	beq -16.b		; F0 F0
	sbc $C0C0FE.l,X		; FF FE C0 C0
	brk $00.b		; 00 00
	rti		; 40

	ora ($3E.b,X)		; 01 3E
	ora ($02.b,X)		; 01 02
	inc $07F8.w,X		; FE F8 07
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	rol $FFBE.w,X		; 3E BE FF
	brk $FF.b		; 00 FF
	sed		; F8
	tsb $00E0.w		; 0C E0 00
	ldy #$FEC0.w		; A0 C0 FE
	sed		; F8
	ora [$E0.b]		; 07 E0
	cpy #$00C0.w		; C0 C0 00
	brk $C0.b		; 00 C0
	bra  -2.b		; 80 FE
	sbc $F8FFC0.l,X		; FF C0 FF F8
	ora #$00.b		; 09 00
	brk $08.b		; 00 08
	ora ($0E.b,X)		; 01 0E
	ora [$0A.b]		; 07 0A
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	sbc $0403FB.l,X		; FF FB 03 04
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	asl $04.b		; 06 04
	brk $04.b		; 00 04
	brk $FF.b		; 00 FF
	sed		; F8
	ora #$9F.b		; 09 9F
	brk $A2.b		; 00 A2
	sbc $FC1CFF.l,X		; FF FF 1C FC
	sec		; 38
	sed		; F8
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	asl $F700.w		; 0E 00 F7
	adc [$1C.b],Y		; 77 1C
	brk $38.b		; 00 38
	bra  -1.b		; 80 FF
	sed		; F8
	asl $00.b		; 06 00
	brk $7F.b		; 00 7F
	ora ($3F.b,X)		; 01 3F
	brk $FF.b		; 00 FF
	sed		; F8
	tsb $003E.w		; 0C 3E 00
	cmp $F8FFFD.l,X		; DF FD FF F8
	tsb $FC02.w		; 0C 02 FC
	jsr ($FF00.w,X)		; FC 00 FF
	sed		; F8
	tsb $00FC.w		; 0C FC 00
	sbc $1F0CF8.l,X		; FF F8 0C 1F
	brk $11.b		; 00 11
	brk $FF.b		; 00 FF
	sbc $15081D.l,X		; FF 1D 08 15
	php		; 08
	ora $1900.w,X		; 1D 00 19
	ora ($0B.b,X)		; 01 0B
	ora $07.b,S		; 03 07
	brk $00.b		; 00 00
	asl $0C02.w		; 0E 02 0C
	sbc $0EFF.w,X		; FD FF 0E
	brk $FE.b		; 00 FE
	sed		; F8
	ora $04.b		; 05 04
	brk $00.b		; 00 00
	brk $62.b		; 00 62
	trb $387C.w		; 1C 7C 38
	sei		; 78
	brk $0E.b		; 00 0E
	brk $FF.b		; 00 FF
	sta $6600FA.l		; 8F FA 00 66
	sed		; F8
	bit $F8.b,X		; 34 F8
	sed		; F8
	brk $00.b		; 00 00
	trb $3800.w		; 1C 00 38
	brk $FF.b		; 00 FF
	cmp ($FF.b,S),Y		; D3 FF
	tsb $7C0C.w		; 0C 0C 7C
	jmp ($3838.w,X)		; 7C 38 38
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	sbc $FEFF30.l,X		; FF 30 FF FE
	brk $2F.b		; 00 2F
	bpl  57.b		; 10 39
	ora ($1B.b,X)		; 01 1B
	ora $0F.b,S		; 03 0F
	brk $FF.b		; 00 FF
	sed		; F8
	ora [$10.b]		; 07 10
	brk $1E.b		; 00 1E
	brk $0C.b		; 00 0C
	sbc $0000FF.l,X		; FF FF 00 00
	brk $24.b		; 00 24
	clc		; 18
	jmp ($4438.w,X)		; 7C 38 44
	brk $D8.b		; 00 D8
	rts		; 60

	pla		; 68
	beq 112.b		; F0 70
	cpx #$FF60.w		; E0 60 FF
	sbc ($80.b),Y		; F1 80
	bra   0.b		; 80 00
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	sec		; 38
	sec		; 38
	bvs  -1.b		; 70 FF
	rts		; 60

	rts		; 60

	jsr ($00FF.w,X)		; FC FF 00
	sbc $26001C.l,X		; FF 1C 00 26
	trb $0C36.w		; 1C 36 0C
	rol A		; 2A
	tsb $22.b		; 04 22
	brk $3F.b		; 00 3F
	cmp [$7E.b]		; C7 7E
	trb $1F20.w		; 1C 20 1F
	brk $FF.b		; 00 FF
	trb $F8FF.w		; 1C FF F8
	asl $00.b		; 06 00
	trb $1F00.w		; 1C 00 1F
	brk $BF.b		; 00 BF
	sbc [$FF.b],Y		; F7 FF
	sed		; F8
	asl A		; 0A
	cpy #$F000.w		; C0 00 F0
	bra   0.b		; 80 00
	sbc $400DF8.l,X		; FF F8 0D 40
	ora ($03.b,X)		; 01 03
	inc $0BF8.w,X		; FE F8 0B
	brk $03.b		; 00 03
	inc $00FF.w,X		; FE FF 00
	sbc $F00EF8.l,X		; FF F8 0E F0
	inx		; E8
	beq  24.b		; F0 18
	beq  88.b		; F0 58
	cpx #$C010.w		; E0 10 C0
	bcc  96.b		; 90 60
	bmi -96.b		; 30 A0
	sbc $8030FF.l,X		; FF FF 30 80
	jsr $E080.w		; 20 80 E0
	brk $00.b		; 00 00
	jsr $6000.w		; 20 00 60
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	sbc $C000FF.l,X		; FF FF 00 C0
	brk $58.b		; 00 58
	rts		; 60

	mvn $34,$60		; 54 60 34
	rti		; 40

	ldy $C0.b,X		; B4 C0
	stz $80.b,X		; 74 80
	ldy $00.b,X		; B4 00
	trb $FF.b		; 14 FF
	sbc $00E400.l,X		; FF 00 E4 00
	bra   0.b		; 80 00
	bra  24.b		; 80 18
	bra  56.b		; 80 38
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $FF.b		; 00 FF
	sbc $1800F8.l,X		; FF F8 00 18
	stz $F200.w		; 9C 00 F2
	brk $7D.b		; 00 7D
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	sbc $04007F.l,X		; FF 7F 00 04
	brk $00.b		; 00 00
	cpx #$FC00.w		; E0 00 FC
	brk $7E.b		; 00 7E
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $04.b		; 00 04
	brk $DF.b		; 00 DF
	cld		; D8
	sbc $8007F8.l,X		; FF F8 07 80
	brk $80.b		; 00 80
	brk $FF.b		; 00 FF
	sed		; F8
	jsl $00FF08.l		; 22 08 FF 00
	sbc $FF12F8.l,X		; FF F8 12 FF
	sbc $400080.l		; EF 80 00 40
	bra  -8.b		; 80 F8
	cpy #$F8F7.w		; C0 F7 F8
	inc $7FFF.w,X		; FE FF 7F
	sbc $F8FF00.l,X		; FF 00 FF F8
	ora $80.b		; 05 80
	sbc $C080FF.l,X		; FF FF 80 C0
	cpx #$78F8.w		; E0 F8 78
	sbc $B5FF3F.l,X		; FF 3F FF B5
	ror $307F.w,X		; 7E 7F 30
	bit $1C18.w,X		; 3C 18 1C
	php		; 08
	sbc $0CEF.w,X		; FD EF 0C
	brk $FF.b		; 00 FF
	sed		; F8
	ora $20.b		; 05 20
	adc $103010.l,X		; 7F 10 30 10
	clc		; 18
	php		; 08
	php		; 08
	brk $FF.b		; 00 FF
	sed		; F8
	asl $E0.b		; 06 E0
	sbc $7000FF.l,X		; FF FF 00 70
	brk $50.b		; 00 50
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	jsr $201C.w		; 20 1C 20
	clc		; 18
	bmi  28.b		; 30 1C
	sec		; 38
	brk $FF.b		; 00 FF
	sbc $280070.l,X		; FF 70 00 28
	brk $28.b		; 00 28
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	trb $FB.b		; 14 FB
	sbc $301034.l,X		; FF 34 10 30
	inc $07F8.w,X		; FE F8 07
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	php		; 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	ror $00B7.w		; 6E B7 00
	sbc $0107F8.l,X		; FF F8 07 01
	brk $FE.b		; 00 FE
	sed		; F8
	ora $00.b		; 05 00
	sbc $0123F8.l,X		; FF F8 23 01
	brk $FE.b		; 00 FE
	sed		; F8
	ora $FF00.w		; 0D 00 FF
	sbc [$FF.b],Y		; F7 FF
	sed		; F8
	ora [$C0.b]		; 07 C0
	brk $20.b		; 00 20
	brk $D8.b		; 00 D8
	brk $EC.b		; 00 EC
	brk $B4.b		; 00 B4
	php		; 08
	brk $FF.b		; 00 FF
	sed		; F8
	ora [$C0.b]		; 07 C0
	brk $BF.b		; 00 BF
	adc $F000E0.l,X		; 7F E0 00 F0
	brk $C8.b		; 00 C8
	brk $01.b		; 00 01
	inc $07F8.w,X		; FE F8 07
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $FF.b		; 00 FF
	sbc $0EF8FF.l,X		; FF FF F8 0E
	and $002301.l,X		; 3F 01 23 00
	rol $3608.w		; 2E 08 36
	clc		; 18
	rol $3A10.w		; 2E 10 3A
	brk $3A.b		; 00 3A
	brk $FF.b		; 00 FF
	sbc $001C.w,X		; FD 1C 00
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	tsb $1C10.w		; 0C 10 1C
	brk $FE.b		; 00 FE
	sed		; F8
	ora $00.b		; 05 00
	brk $08.b		; 00 08
	beq  -9.b		; F0 F7
	sbc $38FC.w,X		; FD FC 38
	bit $FF00.w,X		; 3C 00 FF
	sed		; F8
	asl A		; 0A
	beq   0.b		; F0 00
	sec		; 38
	brk $FF.b		; 00 FF
	sed		; F8
	asl A		; 0A
	jsr ($FE38.w,X)		; FC 38 FE
	cpy $FF.b		; C4 FF
	sbc $FE3CFE.l,X		; FF FE 3C FE
	cpy #$3CFA.w		; C0 FA 3C
	rol $A000.w,X		; 3E 00 A0
	sty $08F0.w		; 8C F0 08
	bmi  56.b		; 30 38
	rti		; 40

	cpy $FF.b		; C4 FF
	sbc $403C18.l,X		; FF 18 3C 40
	cpy #$3C30.w		; C0 30 3C
	cpy #$7000.w		; C0 00 70
	brk $10.b		; 00 10
	brk $E6.b		; 00 E6
	sei		; 78
	sbc $8FFF00.l,X		; FF 00 FF 8F
	adc $9C.b,S		; 63 9C
	sbc ($48.b,S),Y		; F3 48
	sbc $5C.b,S		; E3 5C
	sbc $719C.w,X		; FD 9C 71
	adc ($E0.b),Y		; 71 E0
	ora $07.b		; 05 07
	sbc $03FFFF.l,X		; FF FF FF 03
	ora $47.b,S		; 03 47
	adc [$01.b],Y		; 77 01
	cmp ($02.b),Y		; D1 02
	bcs -114.b		; B0 8E
	brk $FA.b		; 00 FA
	brk $40.b		; 00 40
	jsr $FFC0.w		; 20 C0 FF
	ora $408020.l,X		; 1F 20 80 40
	bra  64.b		; 80 40
	cpy #$4000.w		; C0 00 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	adc $FF.b,S		; 63 FF
	sbc $00FF80.l,X		; FF 80 FF 00
	sbc $EB06F8.l,X		; FF F8 06 EB
	tsb $18F4.w		; 0C F4 18
	cpy #$FF10.w		; C0 10 FF
	sbc $B13086.l,X		; FF 86 30 B1
	bne -12.b		; D0 F4
	bpl -17.b		; 10 EF
	jsr $E0F7.w		; 20 F7 E0
	beq   0.b		; F0 00
	cpx #$E000.w		; E0 00 E0
	php		; 08
	sbc $08C0FF.l,X		; FF FF C0 08
	brk $0E.b		; 00 0E
	brk $4F.b		; 00 4F
	brk $17.b		; 00 17
	brk $0F.b		; 00 0F
	sbc $80DFC0.l		; EF C0 DF 80
	ldx $FF00.w,Y		; BE 00 FF
	sbc $FF007F.l,X		; FF 7F 00 FF
	ora ($ED.b,X)		; 01 ED
	cop $9F.b		; 02 9F
	brk $3F.b		; 00 3F
	ora ($00.b,X)		; 01 00
	ora $003F00.l,X		; 1F 00 3F 00
	adc $00FFFF.l,X		; 7F FF FF 00
	jsr ($F900.w,X)		; FC 00 F9
	brk $F2.b		; 00 F2
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	cpy $3B.b		; C4 3B
	adc $F7EBF0.l,X		; 7F F0 EB F7
	sbc $EEDFFF.l,X		; FF FF DF EE
	sbc $6F1B.w,X		; FD 1B 6F
	sbc $F6EB.w,X		; FD EB F6
	sta $023872.l		; 8F 72 38 02
	beq   0.b		; F0 00
	sbc ($07.b),Y		; F1 07
	sbc $0EE6FF.l,X		; FF FF E6 0E
	ora #$1B.b		; 09 1B
	tsb $FD.b		; 04 FD
	cop $F6.b		; 02 F6
	brk $72.b		; 00 72
	inc $9F84.w,X		; FE 84 9F
	ora ($74.b,S),Y		; 13 74
	tsb $FF.b		; 04 FF
	sbc $5F003D.l,X		; FF 3D 00 5F
	cpy #$E0A0.w		; C0 A0 E0
	eor #$B9.b		; 49 B9
	beq  79.b		; F0 4F
	ora ($00.b,X)		; 01 00
	cpx #$FB00.w		; E0 00 FB
	brk $FF.b		; 00 FF
	sbc $3F00FF.l,X		; FF FF 00 3F
	brk $1F.b		; 00 1F
	bra   6.b		; 80 06
	cpy #$C040.w		; C0 40 C0
	cmp $80FEE0.l,X		; DF E0 FE 80
	ora [$00.b]		; 07 00
	sbc $02EF.w,X		; FD EF 02
	brk $FF.b		; 00 FF
	sed		; F8
	ora [$80.b]		; 07 80
	beq   0.b		; F0 00
	cmp [$00.b]		; C7 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	sbc $2006F8.l,X		; FF F8 06 20
	sbc $5800FF.l,X		; FF FF 00 58
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $38.b		; 00 38
	brk $28.b		; 00 28
	brk $18.b		; 00 18
	brk $14.b		; 00 14
	brk $00.b		; 00 00
	sbc $0018FF.l,X		; FF FF 18 00
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $10.b		; 00 10
	brk $14.b		; 00 14
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	brk $DF.b		; 00 DF
	sbc $100010.l,X		; FF 10 00 10
	brk $10.b		; 00 10
	brk $FF.b		; 00 FF
	sed		; F8
	clc		; 18
	tsx		; BA
	brk $66.b		; 00 66
	brk $5A.b		; 00 5A
	brk $26.b		; 00 26
	php		; 08
	sbc $003FFF.l,X		; FF FF 3F 00
	ora $02.b,X		; 15 02
	phd		; 0B
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	jmp ($3800.w,X)		; 7C 00 38
	brk $24.b		; 00 24
	brk $1C.b		; 00 1C
	and $1000FE.l,X		; 3F FE 00 10
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $FF.b		; 00 FF
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	asl $FF.b		; 06 FF
	jsr ($0A00.w,X)		; FC 00 0A
	brk $1C.b		; 00 1C
	brk $34.b		; 00 34
	php		; 08
	adc [$00.b],Y		; 77 00
	sbc $020002.l,X		; FF 02 00 02
	sbc $060077.l,X		; FF 77 00 06
	brk $06.b		; 00 06
	brk $1A.b		; 00 1A
	brk $2C.b		; 00 2C
	inc $F800.w		; EE 00 F8
	brk $FF.b		; 00 FF
	sed		; F8
	tsb $0070.w		; 0C 70 00
	sbc $F8FF8F.l,X		; FF 8F FF F8
	ora ($2E.b)		; 12 2E
	and ($2E.b,X)		; 21 2E
	and ($26.b,X)		; 21 26
	adc ($06.b,X)		; 61 06
	and ($06.b,X)		; 21 06
	and ($00.b,X)		; 21 00
	sbc [$FF.b],Y		; F7 FF
	sbc $1E0010.l,X		; FF 10 00 1E
	inc $07F8.w,X		; FE F8 07
	brk $16.b		; 00 16
	and ($14.b),Y		; 31 14
	and ($35.b),Y		; 31 35
	brk $3F.b		; 00 3F
	brk $21.b		; 00 21
	sbc $27008F.l,X		; FF 8F 00 27
	brk $39.b		; 00 39
	brk $2A.b		; 00 2A
	tsb $0E.b		; 04 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $FF.b		; 00 FF
	sbc $001EFF.l,X		; FF FF 1E 00
	clc		; 18
	brk $06.b		; 00 06
	brk $1E.b		; 00 1E
	jsr ($C400.w,X)		; FC 00 C4
	brk $BA.b		; 00 BA
	brk $AE.b		; 00 AE
	bpl 127.b		; 10 7F
	jsr ($007E.w,X)		; FC 7E 00
	.db $42, $00		; 42 00
	eor #$00.b		; 49 00
	eor $FF00.w		; 4D 00 FF
	sec		; 38
	brk $44.b		; 00 44
	brk $FF.b		; 00 FF
	and ($78.b),Y		; 31 78
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	cmp $C0C0FF.l,X		; DF FF C0 C0
	ldy #$D020.w		; A0 20 D0
	bpl   0.b		; 10 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	sbc $FF05F8.l,X		; FF F8 05 FF
	sbc $E0C0C0.l,X		; FF C0 C0 E0
	cpx #$F0F0.w		; E0 F0 F0
	bpl -48.b		; 10 D0
	bpl  32.b		; 10 20
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	sbc $8000E7.l,X		; FF E7 00 80
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	beq -32.b		; F0 E0
	beq -64.b		; F0 C0
	cpy #$FF80.w		; C0 80 FF
	sed		; F8
	adc $40FF00.l		; 6F 00 FF 40
	bra  64.b		; 80 40
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	bra  -2.b		; 80 FE
	sed		; F8
	phd		; 0B
	brk $F7.b		; 00 F7
	cmp $0BF8FF.l,X		; DF FF F8 0B
	bra   0.b		; 80 00
	inc $05F8.w,X		; FE F8 05
	bra -128.b		; 80 80
	cpy #$4000.w		; C0 00 40
	bra  32.b		; 80 20
	brk $FF.b		; 00 FF
	sed		; F8
	asl A		; 0A
	sbc $0080FF.l,X		; FF FF 80 00
	cpy #$C000.w		; C0 00 C0
	jsr $10C0.w		; 20 C0 10
	cpx #$E010.w		; E0 10 E0
	php		; 08
	bvs   8.b		; 70 08
	jmp.w [$FF80]		; DC 80 FF
	sbc $7ED87C.l,X		; FF 7C D8 7E
	bit $C0.b		; 24 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $60.b		; 00 60
	brk $FF.b		; 00 FF
	sbc $001800.l,X		; FF 00 18 00
	bit $BF.b		; 24 BF
	inc A		; 1A
	sbc $C9FE94.l,X		; FF 94 FE C9
	sbc $C643.w		; ED 43 C6
	sta ($A3.b,X)		; 81 A3
	brk $FF.b		; 00 FF
	sbc $C000E1.l,X		; FF E1 00 C0
	brk $00.b		; 00 00
	inc A		; 1A
	brk $95.b		; 00 95
	brk $CB.b		; 00 CB
	ora ($47.b,X)		; 01 47
	brk $83.b		; 00 83
	cpy #$FFC1.w		; C0 C1 FF
	sbc $80C0C0.l		; EF C0 C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	sbc $1A16F8.l,X		; FF F8 16 1A
	sbc $0C08D3.l,X		; FF D3 08 0C
	brk $0C.b		; 00 0C
	php		; 08
	asl $04.b		; 06 04
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	sbc $F9FF04.l,X		; FF 04 FF F9
	tsb $0000.w		; 0C 00 00
	brk $08.b		; 00 08
	php		; 08
	tsb $0404.w		; 0C 04 04
	brk $FF.b		; 00 FF
	cop $06.b		; 02 06
	sbc $0602FE.l		; EF FE 02 06
	brk $02.b		; 00 02
	brk $FF.b		; 00 FF
	sed		; F8
	tsb $0001.w		; 0C 01 00
	sbc $7009F8.l,X		; FF F8 09 70
	ldy #$C0F0.w		; A0 F0 C0
	cpx #$F8FF.w		; E0 FF F8
	cpx #$E060.w		; E0 60 E0
	ldy #$C060.w		; A0 60 C0
	brk $40.b		; 00 40
	brk $FF.b		; 00 FF
	ldy #$D0C0.w		; A0 C0 D0
	sbc $E0E0F8.l,X		; FF F8 E0 E0
	rts		; 60

	cpx #$E020.w		; E0 20 E0
	brk $40.b		; 00 40
	brk $FF.b		; 00 FF
	jsr $2030.w		; 20 30 20
	adc $0030DF.l,X		; 7F DF 30 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $FF.b		; 00 FF
	sed		; F8
	php		; 08
	rti		; 40

	brk $40.b		; 00 40
	brk $FF.b		; 00 FF
	sed		; F8
	ora ($BF.b),Y		; 11 BF
	sbc ($07.b),Y		; F1 07
	brk $06.b		; 00 06
	ora ($1C.b,X)		; 01 1C
	ora $00.b,S		; 03 00
	sbc $070AF8.l,X		; FF F8 0A 07
	sbc $FE0000.l,X		; FF 00 00 FE
	and $F8FE80.l,X		; 3F 80 FE F8
	ora $00.b		; 05 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	sbc [$FF.b]		; E7 FF
	sbc $FBFF80.l,X		; FF 80 FF FB
	ora [$FA.b]		; 07 FA
	ora [$F1.b]		; 07 F1
	eor $FF07FE.l		; 4F FE 07 FF
	sta $21BAEB.l		; 8F EB BA 21
	eor ($5E.b),Y		; 51 5E
	clv		; B8
	ora $101308.l		; 0F 08 13 10
	asl $10.b,X		; 16 10
	brk $FF.b		; 00 FF
	sbc $2024FF.l,X		; FF FF 24 20
	dec $0700.w		; CE 00 07
	brk $F7.b		; 00 F7
	brk $9F.b		; 00 9F
	cpx #$807F.w		; E0 7F 80
	ora $FFFFF8.l,X		; 1F F8 FF FF
	sbc [$08.b]		; E7 08
	sbc $5E30B5.l		; EF B5 30 5E
	bvc -70.b		; 50 BA
	ora #$0C.b		; 09 0C
	txa		; 8A
	asl A		; 0A
	brk $FF.b		; 00 FF
	sbc $2020EF.l,X		; FF EF 20 20
	cmp ($00.b,X)		; C1 00
	ora $00.b		; 05 00
	sbc ($00.b)		; F2 00
	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	inc $07F8.w,X		; FE F8 07
	brk $E3.b		; 00 E3
	sbc $00F0.w,X		; FD F0 00
	bra  -1.b		; 80 FF
	cpx #$40E0.w		; E0 E0 40
	sbc $D006F8.l,X		; FF F8 06 D0
	bne -16.b		; D0 F0
	brk $FB.b		; 00 FB
	cmp $F800F0.l		; CF F0 00 F8
	inc $05F8.w,X		; FE F8 05
	brk $9C.b		; 00 9C
	brk $66.b		; 00 66
	bra -32.b		; 80 E0
	cpx #$FF60.w		; E0 60 FF
	sbc $7070FF.l,X		; FF FF 70 70
	bpl  16.b		; 10 10
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	bvs   0.b		; 70 00
	bpl  32.b		; 10 20
	bpl  32.b		; 10 20
	sec		; 38
	xce		; FB
	cmp $001800.l		; CF 00 18 00
	sbc $3008F8.l,X		; FF F8 08 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $FF.b		; 00 FF
	sbc $0003FF.l,X		; FF FF 03 00
	ora $00.b,S		; 03 00
	ora $04.b,S		; 03 04
	asl $08.b		; 06 08
	trb $1800.w		; 1C 00 18
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	sbc $00001F.l,X		; FF 1F 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	tsb $1800.w		; 0C 00 18
	brk $10.b		; 00 10
	brk $FF.b		; 00 FF
	and $0303FF.l,X		; 3F FF 03 03
	ora $05.b		; 05 05
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	ora $07.b,S		; 03 07
	brk $00.b		; 00 00
	cop $FE.b		; 02 FE
	sbc $0F07FF.l,X		; FF FF 07 0F
	ora $0F.b,S		; 03 0F
	ora ($0F.b,X)		; 01 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	ora ($E7.b,X)		; 01 E7
	sbc $070107.l,X		; FF 07 01 07
	cop $FF.b		; 02 FF
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	sbc $0000FF.l,X		; FF FF 00 00
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	asl $00EF.w,X		; 1E EF 00
	sbc $0808F8.l,X		; FF F8 08 08
	php		; 08
	brk $FF.b		; 00 FF
	tsb $04.b		; 04 04
	brk $FF.b		; 00 FF
	sed		; F8
	ora $08.b		; 05 08
	sbc $0C00FF.l,X		; FF FF 00 0C
	brk $04.b		; 00 04
	tsb $06.b		; 04 06
	asl $07.b		; 06 07
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	adc ($FE.b,S),Y		; 73 FE
	ora ($01.b,X)		; 01 01
	brk $FF.b		; 00 FF
	ora $FF.b,S		; 03 FF
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	sbc $FF.b,S		; E3 FF
	brk $01.b		; 00 01
	brk $FF.b		; 00 FF
	tsb $00.b		; 04 00
	trb $00.b		; 14 00
	trb $00.b		; 14 00
	trb $00.b		; 14 00
	bit $FF.b,X		; 34 FF
	xce		; FB
	brk $24.b		; 00 24
	brk $24.b		; 00 24
	brk $2C.b		; 00 2C
	brk $00.b		; 00 00
	php		; 08
	brk $18.b		; 00 18
	inc $09F8.w,X		; FE F8 09
	brk $10.b		; 00 10
	jmp ($FFFF.w)		; 6C FF FF
	brk $6C.b		; 00 6C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $23.b		; 00 23
	brk $39.b		; 00 39
	brk $2D.b		; 00 2D
	brk $29.b		; 00 29
	bpl   0.b		; 10 00
	lda [$7F.b]		; A7 7F
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	sbc $06001C.l,X		; FF 1C 00 06
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $F7.b		; 00 F7
	lda $0CF8FF.l,X		; BF FF F8 0C
	tsb $00.b		; 04 00
	sbc $0119F8.l,X		; FF F8 19 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	sbc $F8FFFF.l,X		; FF FF FF F8
	tsb $0116.w		; 0C 16 01
	bit $08.b		; 24 08
	jmp $209900.l		; 5C 00 99 20
	sta $60.b,S		; 83 60
	bit $3040.w		; 2C 40 30
	brk $C0.b		; 00 C0
	sbc $0000FF.l,X		; FF FF 00 00
	sta $001F00.l		; 8F 00 1F 00
	and $007E00.l,X		; 3F 00 7E 00
	jmp ($F000.w,X)		; 7C 00 F0
	brk $C0.b		; 00 C0
	brk $FF.b		; 00 FF
	sbc $104A00.l,X		; FF 00 4A 10
	and $08.b,X		; 35 08
	and #$10.b		; 29 10
	and [$08.b]		; 27 08
	ora $1106.w,Y		; 19 06 11
	brk $0A.b		; 00 0A
	brk $06.b		; 00 06
	sbc $0000FF.l,X		; FF FF 00 00
	bit $1E00.w,X		; 3C 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $04.b		; 00 04
	brk $FF.b		; 00 FF
	sbc $F80700.l,X		; FF 00 07 F8
	tas		; 1B
	cpx $0E.b		; E4 0E
	sbc ($C4.b),Y		; F1 C4
	tsa		; 3B
	cpx $FE13.w		; EC 13 FE
	sta ($FF.b,X)		; 81 FF
	bra  -1.b		; 80 FF
	sbc $FC00F1.l,X		; FF F1 00 FC
	jsr ($E5E5.w,X)		; FC E5 E5
	xce		; FB
	xce		; FB
	tyx		; BB
	tyx		; BB
	and [$FF.b],Y		; 37 FF
	and $FFFF2F.l		; 2F 2F FF FF
	ora $00FF1F.l,X		; 1F 1F FF 00
	sbc $10FD00.l,X		; FF 00 FD 10
	jsr ($FC20.w,X)		; FC 20 FC
	pha		; 48
	plx		; FA
	sty $FE.b,X		; 94 FE
	sty $FF.b,X		; 94 FF
	sbc $3F28DC.l,X		; FF DC 28 3F
	and $780101.l,X		; 3F 01 01 78
	sei		; 78
	beq -16.b		; F0 F0
	cpx #$D0E8.w		; E0 E8 D0
	pei ($C0.b)		; D4 C0
	pei ($F7.b)		; D4 F7
	sbc $E0A888.l,X		; FF 88 A8 E0
	brk $FF.b		; 00 FF
	sed		; F8
	ora $48BF.w,X		; 1D BF 48
	adc $002700.l		; 6F 00 27 00
	adc ($00.b,X)		; 61 00
	ldy #$FF46.w		; A0 46 FF
	sbc $9012A1.l,X		; FF A1 12 90
	jmp $205F.w		; 4C 5F 20
	asl $164E.w		; 0E 4E 16
	asl $19.b,X		; 16 19
	ora $1E1E.w,Y		; 19 1E 1E
	ora $FF19.w,Y		; 19 19 FF
	sbc $234C4C.l,X		; FF 4C 4C 23
	and $00.b,S		; 23 00
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	brk $FC.b		; 00 FC
	cop $F8.b		; 02 F8
	brk $FC.b		; 00 FC
	.db $62, $FF, $FF		; 62 FF FF
	sed		; F8
	stz $7F.b		; 64 7F
	bpl  -4.b		; 10 FC
	adc $0FEF.w,Y		; 79 EF 0F
	cpx $590C.w		; EC 0C 59
	ora $9797.w,Y		; 19 97 97
	adc ($01.b,X)		; 61 01
	sbc $0363FF.l,X		; FF FF 63 03
	bra -112.b		; 80 90
	and ($7A.b)		; 32 7A
	sed		; F8
	trb $34.b		; 14 34
	stx $3C.b		; 86 3C
	asl $28.b,X		; 16 28
	cop $3D.b		; 02 3D
	eor ($FF.b)		; 52 FF
	sbc $BF8057.l,X		; FF 57 80 BF
	php		; 08
	eor $100000.l,X		; 5F 00 00 10
	pha		; 48
	rti		; 40

	iny		; C8
	cpy #$C0DC.w		; C0 DC C0
	sty $FF80.w		; 8C 80 FF
	sbc $43212D.l,X		; FF 2D 21 43
	eor $A2.b,S		; 43 A2
	ldx #$00FC.w		; A2 FC 00
	inc $08.b,X		; F6 08
	inc A		; 1A
	cpx $0F.b		; E4 0F
	beq -121.b		; F0 87
	sei		; 78
	sbc $1CE3FF.l,X		; FF FF E3 1C
	adc ($8C.b,S),Y		; 73 8C
	tsa		; 3B
	cpy $30.b		; C4 30
	bmi -52.b		; 30 CC
	cpy $F4F4.w		; CC F4 F4
	plx		; FA
	plx		; FA
	jsr ($FFFC.w,X)		; FC FC FF
	sbc $DE3C3C.l,X		; FF 3C 3C DE
	dec $EEEE.w,X		; DE EE EE
	tas		; 1B
	cpx $1F.b		; E4 1F
	cpx #$708F.w		; E0 8F 70
	cmp $38C630.l		; CF 30 C6 38
	and $18E6C6.l,X		; 3F C6 E6 18
	cpx $18.b		; E4 18
	cpx $F610.w		; EC 10 F6
	sbc $FCFFFA.l,X		; FF FA FF FC
	sbc $78FFF8.l,X		; FF F8 FF 78
	sei		; 78
	inx		; E8
	bpl  88.b		; 10 58
	jsr $0070.w		; 20 70 00
	rts		; 60

	brk $C0.b		; 00 C0
	inc $00FD.w,X		; FE FD 00
	sbc $7005F8.l,X		; FF F8 05 70
	bvs  48.b		; 70 30
	bmi  32.b		; 30 20
	jsr $FF00.w		; 20 00 FF
	sed		; F8
	asl A		; 0A
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	sbc $0080FB.l,X		; FF FB 80 00
	rti		; 40

	bra -64.b		; 80 C0
	bra -96.b		; 80 A0
	cpy #$C0E0.w		; C0 E0 C0
	brk $FF.b		; 00 FF
	sed		; F8
	ora [$80.b]		; 07 80
	brk $80.b		; 00 80
	sbc $C080FF.l,X		; FF FF 80 C0
	bra -64.b		; 80 C0
	rti		; 40

	bra -64.b		; 80 C0
	bra -68.b		; 80 BC
	cpy #$FCCA.w		; C0 CA FC
	inc $FC.b,X		; F6 FC
	jmp ($FFF8.w,X)		; 7C F8 FF
	sbc $7C7CFE.l,X		; FF FE 7C 7C
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$FC80.w		; C0 80 FC
	bvc  -4.b		; 50 FC
	sei		; 78
	sed		; F8
	sbc $7C30FF.l,X		; FF FF 30 7C
	brk $00.b		; 00 00
	rol A		; 2A
	ora $45.b		; 05 45
	php		; 08
	eor $5A02.w,Y		; 59 02 5A
	brk $52.b		; 00 52
	tsb $94.b		; 04 94
	brk $FF.b		; 00 FF
	sed		; F8
	sty $08.b		; 84 08
	dey		; 88
	brk $1E.b		; 00 1E
	asl $3E3E.w,X		; 1E 3E 3E
	bit $38FF.w,X		; 3C FF 38
	sec		; 38
	sei		; 78
	sbc ($FF.b),Y		; F1 FF
	sei		; 78
	bvs  -1.b		; 70 FF
	jmp $102A00.l		; 5C 00 2A 10
	rol $3510.w		; 2E 10 35
	php		; 08
	pld		; 2B
	tsb $FF.b		; 04 FF
	clc		; 18
	ora $000900.l,X		; 1F 00 09 00
	asl $00.b		; 06 00
	sec		; 38
	sec		; 38
	trb $1EFF.w		; 1C FF 1E
	sbc $0EFFFF.l,X		; FF FF FF 0E
	asl $0606.w		; 0E 06 06
	brk $00.b		; 00 00
	rol $3D11.w,X		; 3E 11 3D
	brk $3A.b		; 00 3A
	tsb $5A.b		; 04 5A
	ora $FF.b		; 05 FF
	and $550855.l,X		; 3F 55 08 55
	asl A		; 0A
	txa		; 8A
	bpl -78.b		; 10 B2
	tsb $14.b		; 04 14
	ora $0E.b,X		; 15 0E
	asl $1F1F.w		; 0E 1F 1F
	rol $FFFE.w,X		; 3E FE FF
	sbc $7C3C3C.l,X		; FF 3C 3C 7C
	jmp ($7878.w,X)		; 7C 78 78
	sbc [$00.b],Y		; F7 00
	sta $0962.w,X		; 9D 62 09
	inc $01.b,X		; F6 01
	sbc $00FE7F.l,X		; FF 7F FE 00
	sbc $94FF00.l,X		; FF 00 FF 94
	rtl		; 6B

	ldx $0055.w,Y		; BE 55 00
	brk $F7.b		; 00 F7
	sbc [$FE.b],Y		; F7 FE
	inc $FEFF.w,X		; FE FF FE
	sbc $6B6BFF.l,X		; FF FF 6B 6B
	eor ($41.b,X)		; 41 41
	inx		; E8
	bmi -72.b		; 30 B8
	bvs -12.b		; 70 F4
	sec		; 38
	jsr ($FF38.w,X)		; FC 38 FF
	sbc $FC3C5B.l,X		; FF 5B 3C FC
	ora $979F6F.l,X		; 1F 6F 9F 97
	ora $203000.l		; 0F 00 30 20
	bvs -112.b		; 70 90
	clv		; B8
	bpl  56.b		; 10 38
	sbc $BC88FF.l,X		; FF FF 88 BC
	iny		; C8
	cmp $079F85.l,X		; DF 85 9F 07
	ora $3E0221.l		; 0F 21 02 3E
	brk $52.b		; 00 52
	php		; 08
	adc ($08.b)		; 72 08
	sbc $106C18.l,X		; FF 18 6C 10
	pea $F800.w		; F4 00 F8
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	sbc $FE3F3C.l,X		; FF 3C 3F FE
	sbc $783838.l,X		; FF 38 38 78
	sei		; 78
	brk $FF.b		; 00 FF
	sta $48.b		; 85 48
	eor $2700.w		; 4D 00 27
	sbc $2600C7.l,X		; FF C7 00 26
	bpl  18.b		; 10 12
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $3E.b		; 00 3E
	sbc $1E3C63.l,X		; FF 63 3C 1E
	asl $FF0F.w,X		; 1E 0F FF
	ora [$FF.b]		; 07 FF
	ora $03.b,S		; 03 03
	brk $FF.b		; 00 FF
	adc $0080FF.l		; 6F FF 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $FF.b		; 00 FF
	sed		; F8
	phd		; 0B
	bra  -4.b		; 80 FC
	sbc $80DCFF.l,X		; FF FF DC 80
	lda [$C0.b],Y		; B7 C0
	stp		; DB
	brk $AE.b		; 00 AE
	brk $D5.b		; 00 D5
	cop $2A.b		; 02 2A
	eor ($FF.b,X)		; 41 FF
	sbc $9A20D5.l,X		; FF D5 20 9A
	jsr $A727.w		; 20 27 A7
	tas		; 1B
	stp		; DB
	bit $DF3C.w,X		; 3C 3C DF
	cmp $F7EFEF.l,X		; DF EF EF F7
	sbc [$FF.b],Y		; F7 FF
	sbc $7D7B7B.l,X		; FF 7B 7B 7D
	adc $106D.w,X		; 7D 6D 10
	ror $18.b		; 66 18
	ldy $F400.w,X		; BC 00 F4
	brk $EE.b		; 00 EE
	stz $1A.b		; 64 1A
	brk $FF.b		; 00 FF
	sbc $9F809E.l,X		; FF 9E 80 9F
	ora ($BE.b)		; 12 BE
	ldx $BCBC.w,Y		; BE BC BC
	bne -48.b		; D0 D0
	dey		; 88
	bra  24.b		; 80 18
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	sbc $6C007C.l,X		; FF 7C 00 6C
	brk $D9.b		; 00 D9
	pla		; 68
	lda $58EE76.l,X		; BF 76 EE 58
	inc $8C.b,X		; F6 8C
	nop		; EA
	tsb $D4.b		; 04 D4
	jsr $FFFF.w		; 20 FF FF
	pei ($28.b)		; D4 28
	tay		; A8
	rti		; 40

	asl $20.b		; 06 20
	bmi 112.b		; 30 70
	pha		; 48
	cli		; 58
	ldy #$70AC.w		; A0 AC 70
	stz $F8.b,X		; 74 F8
	sed		; F8
	sed		; F8
	lda $03FFF0.l,X		; BF F0 FF 03
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $FF.b		; 00 FF
	sbc $15F8FF.l,X		; FF FF F8 15
	stz $10.b,X		; 74 10
	cpx $DE70.w		; EC 70 DE
	clv		; B8
	dec $7684.w		; CE 84 76
	bra -86.b		; 80 AA
	bpl -107.b		; 10 95
	php		; 08
	eor $FF.b		; 45 FF
	sbc $008808.l,X		; FF 08 88 00
	rts		; 60

	bvs  24.b		; 70 18
	sed		; F8
	bit $B4.b,X		; 34 B4
	sec		; 38
	clv		; B8
	jmp ($7E7C.w,X)		; 7C 7C 7E
	ror $0B3E.w,X		; 7E 3E 0B
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EE.b		; 00 EE
	sbc $F658FF.l,X		; FF FF 58 F6
	sty $04EA.w		; 8C EA 04
	pei ($20.b)		; D4 20
	pei ($28.b)		; D4 28
	tay		; A8
	rti		; 40

	asl $20.b		; 06 20
	bmi 112.b		; 30 70
	pha		; 48
	adc $A058FC.l,X		; 7F FC 58 A0
	ldy $7470.w		; AC 70 74
	sed		; F8
	sed		; F8
	beq  -1.b		; F0 FF
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	cmp $0001FF.l,X		; DF FF 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	sbc $7415F8.l,X		; FF F8 15 74
	bpl -20.b		; 10 EC
	bvs -34.b		; 70 DE
	clv		; B8
	dec $FF84.w		; CE 84 FF
	sbc $AA8076.l,X		; FF 76 80 AA
	bpl -107.b		; 10 95
	php		; 08
	eor $08.b		; 45 08
	dey		; 88
	brk $60.b		; 00 60
	bvs  24.b		; 70 18
	sed		; F8
	bit $B4.b,X		; 34 B4
	sbc $B83805.l,X		; FF 05 38 B8
	jmp ($7E7C.w,X)		; 7C 7C 7E
	ror $3E3E.w,X		; 7E 3E 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $39.b		; 00 39
	adc [$39.b],Y		; 77 39
	adc $F8E039.l		; 6F 39 E0 F8
	ora $00E212.l		; 0F 12 E2 00
	sta [$97.b]		; 87 97
	eor ($A0.b,X)		; 41 A0
	sbc ($4D.b,X)		; E1 4D
	cmp [$EF.b]		; C7 EF
	beq -31.b		; F0 E1
	beq  -2.b		; F0 FE
	ldy #$71E1.w		; A0 E1 71
	bra  96.b		; 80 60
	dex		; CA
	beq  36.b		; F0 24
	inc $4658.w,X		; FE 58 46
	and $2A1470.l,X		; 3F 70 14 2A
	brk $32.b		; 00 32
	tsb $009E.w		; 0C 9E 00
	inc $14F0.w,X		; FE F0 14
	rti		; 40

	mvp $3E,$FE		; 44 FE 3E
	sbc ($F0.b)		; F2 F0
	and $54.b,S		; 23 54
	bcc -55.b		; 90 C9
	adc ($06.b,S),Y		; 73 06
	cop $17.b		; 02 17
	sty $F0D2.w		; 8C D2 F0
	jsr ($FE2A.w,X)		; FC 2A FE
	asl $08.b		; 06 08
	.db $62, $EA, $F0		; 62 EA F0
	beq  -7.b		; F0 F9
	jsr $00F9.w		; 20 F9 00
	lsr $72.b,X		; 56 72
	adc ($02.b),Y		; 71 02
	sbc ($93.b),Y		; F1 93
	plx		; FA
	sbc #$90.b		; E9 90
	sbc #$F0.b		; E9 F0
	lsr $71C9.w,X		; 5E C9 71
	rts		; 60

.INDEX 16
	rep #$DF		; C2 DF
	sbc ($F0.b)		; F2 F0
	dey		; 88
	jsr ($DC80.w,X)		; FC 80 DC
	brk $C3.b		; 00 C3
	cop $F1.b		; 02 F1
	lsr A		; 4A
	dec $7E.b,X		; D6 7E
	plx		; FA
	sbc #$92.b		; E9 92
	sbc ($F0.b),Y		; F1 F0
	stx $81D2.w		; 8E D2 81
	cpy #$1CDD.w		; C0 DD 1C
	sbc ($56.b,S),Y		; F3 56
	sbc $9C.b,X		; F5 9C
	cop $F1.b		; 02 F1
	lda [$20.b],Y		; B7 20
	cpy $64.b		; C4 64
	cmp $04.b,S		; C3 04
	sbc ($20.b)		; F2 20
	cmp $10.b		; C5 10
	lda $0050.w,X		; BD 50 00
	sta $12.b,S		; 83 12
	bne -32.b		; D0 E0
	beq -93.b		; F0 A3
	beq  -4.b		; F0 FC
	brk $CB.b		; 00 CB
	sbc ($4A.b)		; F2 4A
	wai		; CB
	beq  28.b		; F0 1C
	sbc ($60.b,S),Y		; F3 60
	inc $F07C.w		; EE 7C F0
.ACCU 16
	rep #$AC		; C2 AC
	inc $FEF0.w,X		; FE F0 FE
	sep #$C3		; E2 C3
	adc ($F1.b,S),Y		; 73 F1
	clv		; B8
.ACCU 8
	sep #$61		; E2 61
	adc ($92.b,X)		; 61 92
	brk $4C.b		; 00 4C
	bne -117.b		; D0 8B
	tsb $0EF6.w		; 0C F6 0E
	beq  -1.b		; F0 FF
	sbc ($33.b,S),Y		; F3 33
	adc $C3E122.l,X		; 7F 22 E1 C3
	ora $C783F0.l,X		; 1F F0 83 C7
	adc ($00.b)		; 72 00
	cpy $528C.w		; CC 8C 52
	brk $89.b		; 00 89
	ora ($1A.b,X)		; 01 1A
	stx $0132.w		; 8E 32 01
	beq  -4.b		; F0 FC
	bra -16.b		; 80 F0
	dec $8F06.w,X		; DE 06 8F
	sed		; F8
	sbc $D0F022.l,X		; FF 22 F0 D0
	sbc $F910.w,Y		; F9 10 F9
	ora ($3A.b,X)		; 01 3A
	bmi  75.b		; 30 4B
	brk $90.b		; 00 90
	bra -46.b		; 80 D2
	ora [$E0.b]		; 07 E0
	bmi -70.b		; 30 BA
	beq  17.b		; F0 11
	tsa		; 3B
	bmi 123.b		; 30 7B
	rts		; 60

	sty $5E.b		; 84 5E
	sei		; 78
	beq -124.b		; F0 84
	dec $E920.w		; CE 20 E9
	sbc $00FB.w,Y		; F9 FB 00
	asl A		; 0A
	asl $6C00.w		; 0E 00 6C
	tay		; A8
	inc $84F0.w,X		; FE F0 84
	bpl -23.b		; 10 E9
	tsb $00.b		; 04 00
	stx $FE.b,Y		; 96 FE
	ldy $F0.b		; A4 F0
	bvs -85.b		; 70 AB
	pea $FEFF.w		; F4 FF FE
	sbc $F009F8.l,X		; FF F8 09 F0
	sed		; F8
	tsb $1C3F.w		; 0C 3F 1C
	rol $3D1D.w,X		; 3E 1D 3D
	ora $FF1FFE.l,X		; 1F FE 1F FF
	bvs -96.b		; 70 A0
	and [$F3.b],Y		; 37 F3
	adc $00E977.l,X		; 7F 77 E9 00
	beq  16.b		; F0 10
	cpx #$FCFE.w		; E0 FE FC
	sbc $DAD1.w		; ED D1 DA
	ldx $FE07.w,Y		; BE 07 FE
	lda ($FE.b)		; B2 FE
	jmp ($E06C.w)		; 6C 6C E0
	sed		; F8
	bpl -33.b		; 10 DF
	adc $E7.b		; 65 E7
	dex		; CA
	sbc $E1373E.l,X		; FF 3E 37 E1
	asl $7C04.w		; 0E 04 7C
	php		; 08
	sed		; F8
	bvs 112.b		; 70 70
	sbc $E0.b,S		; E3 E0
	ora ($00.b),Y		; 11 00
	jmp ($FC38.w,X)		; 7C 38 FC
	ora $FE15.w,X		; 1D 15 FE
	clv		; B8
	jsr ($FE78.w,X)		; FC 78 FE
	beq -30.b		; F0 E2
	sbc $760CF8.l,X		; FF F8 0C 76
	php		; 08
	stx $077F.w		; 8E 7F 07
	eor ($D1.b,S),Y		; 53 D1
	asl $FEFF.w		; 0E FF FE
	adc $FC8015.l,X		; 7F 15 80 FC
	ora $C0F1EE.l,X		; 1F EE F1 C0
	sed		; F8
	ora $01BECC.l		; 0F CC BE 01
	ora $BEBC.w		; 0D BC BE
	sed		; F8
	cpx #$0FF8.w		; E0 F8 0F
	adc $5E2110.l,X		; 7F 10 21 5E
	iny		; C8
	adc ($C4.b),Y		; 71 C4
	jsr ($2C7E.w,X)		; FC 7E 2C
	jmp.w [$FF3C]		; DC 3C FF
	adc [$E0.b],Y		; 77 E0
	sed		; F8
	inc A		; 1A
	jsr ($FF01.w,X)		; FC 01 FF
	cmp $E840.w		; CD 40 E8
	ora ($B3.b),Y		; 11 B3
	inx		; E8
	ldx $BF1C.w,Y		; BE 1C BF
	inc $D9F9.w,X		; FE F9 D9
	inc $F8C0.w,X		; FE C0 F8
	trb $87.b		; 14 87
	pea $CF2D.w		; F4 2D CF
	inc $1707.w,X		; FE 07 17
	ora $BE1E3F.l		; 0F 3F 1E BE
	cpx #$8011.w		; E0 11 80
	eor ($A2.b),Y		; 51 A2
	tax		; AA
	sta $F2ABFE.l		; 8F FE AB F2
	eor $F8FFF1.l		; 4F F1 FF F8
	asl $0006.w		; 0E 06 00
	ora $E0D006.l		; 0F 06 D0 E0
	dey		; 88
	sbc $F1A203.l,X		; FF 03 A2 F1
	ora $FA.b,S		; 03 FA
	cpy #$13F8.w		; C0 F8 13
	inc $E08E.w,X		; FE 8E E0
	bra -96.b		; 80 A0
	sbc ($80.b,X)		; E1 80
	cmp ($FE.b,X)		; C1 FE
	plx		; FA
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	ora $7FC33B.l		; 0F 3B C3 7F
	brk $3F.b		; 00 3F
	tas		; 1B
	inc $3BFF.w,X		; FE FF 3B
	sbc $1FFFF3.l,X		; FF F3 FF 1F
	sbc $FDFF38.l,X		; FF 38 FF FD
	sta [$D0.b]		; 87 D0
	ldy $FF.b,X		; B4 FF
	sed		; F8
	asl A		; 0A
	beq   0.b		; F0 00
	inx		; E8
	beq  -5.b		; F0 FB
	bcc  -1.b		; 90 FF
	sta ($FE.b)		; 92 FE
	eor $63.b,X		; 55 63
	inc $270C.w,X		; FE 0C 27
	cmp ($30.b,X)		; C1 30
	phx		; DA
	sbc $F90CF8.l,X		; FF F8 0C F9
	sbc #$0E.b		; E9 0E
	dec $FC.b		; C6 FC
	clv		; B8
	sbc $7FC4.w,X		; FD C4 7F
	and $F8803F.l,X		; 3F 3F 80 F8
	trb $F8.b		; 14 F8
	eor ($A9.b,X)		; 41 A9
	sed		; F8
	bpl  -4.b		; 10 FC
	jsr $8410.w		; 20 10 84
	xce		; FB
	jmp.w [$FE84]		; DC 84 FE
	adc ($90.b,X)		; 61 90
	bpl -128.b		; 10 80
	php		; 08
	lda ($03.b),Y		; B1 03
	dec $BC.b		; C6 BC
	bit $393C.w,X		; 3C 3C 39
	cop $1E.b		; 02 1E
	sta $EA.b,X		; 95 EA
	.db $42, $F8		; 42 F8
	ora $70424C.l		; 0F 4C 42 70
	sbc $3F83CC.l,X		; FF CC 83 3F
	plx		; FA
	cpy #$98.b		; C0 98
	cpx #$F8.b		; E0 F8
	ora $FE38FC.l		; 0F FC 38 FE
	bit $3A7F.w,X		; 3C 7F 3A
	ror A		; 6A
	eor $FE.b,S		; 43 FE
	dec A		; 3A
	sbc ($41.b,S),Y		; F3 41
	beq  16.b		; F0 10
	brk $06.b		; 00 06
	sbc ($7F.b),Y		; F1 7F
.ACCU 16
.INDEX 16
	rep #$F9		; C2 F9
	cpy $0A.b		; C4 0A
	inc $7FBC.w,X		; FE BC 7F
	eor ($B4.b),Y		; 51 B4
	sbc $A10BF8.l,X		; FF F8 0B A1
	xba		; EB
	cpy $0AFE.w		; CC FE 0A
	tsx		; BA
	inc $BEFC.w,X		; FE FC BE
	trb $D071.w		; 1C 71 D0
	ora ($0C.b),Y		; 11 0C
	sbc ($FF.b)		; F2 FF
	jsr ($76FE.w,X)		; FC FE 76
	jsr ($FF73.w,X)		; FC 73 FF
	ror $E07E.w,X		; 7E 7E E0
	sed		; F8
	ora ($0D.b),Y		; 11 0D
	sbc $4DFFDF.l,X		; FF DF FF 4D
	sta [$55.b]		; 87 55
	sbc $8DFFDD.l,X		; FF DD FF 8D
	jsr ($07FE.w,X)		; FC FE 07
	jsr $11E8.w		; 20 E8 11
	asl A		; 0A
	pea $CAFD.w		; F4 FD CA
	adc ($42.b)		; 72 42
	plx		; FA
	and ($F0.b,X)		; 21 F0
	ora ($7A.b),Y		; 11 7A
	bit $FE48.w,X		; 3C 48 FE
	bit $55.b		; 24 55
	ror $FA.b,X		; 76 FA
	sbc $310FF8.l,X		; FF F8 0F 31
	lda ($F6.b)		; B2 F6
	sed		; F8
	ora #$F000.w		; 09 00 F0
	ora ($55.b),Y		; 11 55
	eor $06.b,X		; 55 06
	inc $04.b,X		; F6 04
	sbc ($77.b)		; F2 77
	dex		; CA
	cpx #$10F8.w		; E0 F8 10
	asl $F1.b		; 06 F1
	and ($BA.b),Y		; 31 BA
	and $F2B8B9.l		; 2F B9 B8 F2
	sbc $F8E0F0.l,X		; FF F0 E0 F8
	ora ($30.b),Y		; 11 30
	sbc $317B32.l,X		; FF 32 7B 31
	adc $FE30.w,Y		; 79 30 FE
	adc $FE7F31.l,X		; 7F 31 7F FE
	ror $E037.w,X		; 7E 37 E0
	beq  17.b		; F0 11
	sbc $1C3E1C.l,X		; FF 1C 3E 1C
	jsr ($3E38.w,X)		; FC 38 3E
	sbc ($F0.b),Y		; F1 F0
	inc $DFD8.w,X		; FE D8 DF
	asl $C9.b		; 06 C9
	ora [$20.b],Y		; 17 20
	sed		; F8
	ora ($80.b),Y		; 11 80
	rol $03F3.w,X		; 3E F3 03
	ora $000F0B.l,X		; 1F 0B 0F 00
	sed		; F8
	ora ($86.b)		; 12 86
	lda $8C.b,S		; A3 8C
	inc $FE84.w,X		; FE 84 FE
	plx		; FA
	jsr ($7EFC.w,X)		; FC FC 7E
	mvn $83,$88		; 54 88 83
	inx		; E8
	bpl -32.b		; 10 E0
	and $C131.w,Y		; 39 31 C1
	inc $AF00.w,X		; FE 00 AF
	clc		; 18
	ldx $0704.w,Y		; BE 04 07
	cop $02.b		; 02 02
	cpx #$11F8.w		; E0 F8 11
	tsb $48F1.w		; 0C F1 48
	sec		; 38
	cmp ($7F.b,X)		; C1 7F
	clv		; B8
	ply		; 7A
	brk $E0.b		; 00 E0
	ora ($D1.b)		; 12 D1
	brk $FB.b		; 00 FB
	cmp ($CE.b),Y		; D1 CE
	xce		; FB
	sbc $FC106A.l,X		; FF 6A 10 FC
	cmp $F17C.w,X		; DD 7C F1
	inc $F81F.w,X		; FE 1F F8
	bpl 116.b		; 10 74
	brk $FE.b		; 00 FE
	stz $E1.b,X		; 74 E1
	ora [$FF.b]		; 07 FF
	adc ($FE.b)		; 72 FE
	inc $FC78.w,X		; FE 78 FC
	bvs  -2.b		; 70 FE
	pea $85F4.w		; F4 F4 85
	and ($7E.b,X)		; 21 7E
	sed		; F8
	ora ($9E.b),Y		; 11 9E
	dex		; CA
	inc $0022.w,X		; FE 22 00
	inc $4A3F.w,X		; FE 3F 4A
	phy		; 5A
	inc $F8EA.w,X		; FE EA F8
	ora #$1FFE.w		; 09 FE 1F
	jmp.w [$E874]		; DC 74 E8
	ora #$62E0.w		; 09 E0 62
	inx		; E8
	bpl -75.b		; 10 B5
	.db $42, $52		; 42 52
	sed		; F8
	asl $7877.w		; 0E 77 78
	tas		; 1B
	stz $D9.b,X		; 74 D9
	sbc $EE.b,S		; E3 EE
	sed		; F8
	asl $DE3E.w		; 0E 3E DE
	inc $1544.w,X		; FE 44 15
	cpy #$993B.w		; C0 3B 99
	cmp $DF68CB.l		; CF CB 68 DF
	inc $30F2.w,X		; FE F2 30
	inc $A16F.w		; EE 6F A1
	tsb $00.b		; 04 00
	asl A		; 0A
	brk $85.b		; 00 85
	eor [$A1.b]		; 47 A1
	sta ($E0.b,X)		; 81 E0
	sbc $4202EE.l,X		; FF EE 02 42
	ldy $FDF2.w		; AC F2 FD
	ror $FEE2.w,X		; 7E E2 FE
	ora ($40.b),Y		; 11 40
	ldx $8AEF.w,Y		; BE EF 8A
	sty $C3.b,X		; 94 C3
	pla		; 68
	sbc [$40.b]		; E7 40
	clv		; B8
	pea $1E18.w		; F4 18 1E
	clc		; 18
	rol A		; 2A
	tsb $D619.w		; 0C 19 D6
	cmp $E8C2.w,Y		; D9 C2 E8
	phd		; 0B
	sbc ($F8.b)		; F2 F8
	phd		; 0B
	ldx $07.b,Y		; B6 07
	cop $D7.b		; 02 D7
	tay		; A8
	ldx #$0045.w		; A2 45 00
	sta [$0F.b]		; 87 0F
	dex		; CA
	cpx $82FF.w		; EC FF 82
	jsr ($F270.w,X)		; FC 70 F2
	asl $88.b		; 06 88
	cpx #$3FF0.w		; E0 F0 3F
	lda ($B1.b),Y		; B1 B1
	ora [$FE.b]		; 07 FE
	rol $40.b,X		; 36 40
	asl A		; 0A
	sbc ($C2.b)		; F2 C2
	phk		; 4B
	.db $82, $68, $D6		; 82 68 D6
	sbc ($5F.b)		; F2 5F
	lda $DA.b,S		; A3 DA
	dey		; 88
	lda [$47.b],Y		; B7 47
	brk $F4.b		; 00 F4
	brk $1A.b		; 00 1A
	cmp $E0C481.l		; CF 81 C4 E0
	sbc $E40008.l,X		; FF 08 00 E4
	trb $000F.w		; 1C 0F 00
	iny		; C8
	sbc $03.b,X		; F5 03
	ora $01.b,S		; 03 01
	ror $F2.b,X		; 76 F2
	.db $82, $5A, $F6		; 82 5A F6
	jmp $09F8.w		; 4C F8 09
	inc $C2.b,X		; F6 C2
	pea $F20A.w		; F4 0A F2
	tsb $F1.b		; 04 F1
	trb $E978.w		; 1C 78 E9
	sbc $1F.b,X		; F5 1F
	ldx #$60B9.w		; A2 B9 60
	sed		; F8
	ora #$DFE0.w		; 09 E0 DF
	sei		; 78
	ldx $FF78.w,Y		; BE 78 FF
	and ($77.b)		; 32 77
	dec A		; 3A
	sbc $FE885E.l,X		; FF 5E 88 FE
	lsr $8CDE.w,X		; 5E DE 8C
	sty $F8E0.w		; 8C E0 F8
	bpl -50.b		; 10 CE
	rol $6AC0.w,X		; 3E C0 6A
	rol $FE.b		; 26 FE
	trb $E100.w		; 1C 00 E1
	inc $FFFE.w,X		; FE FE FF
	inc $5BF9.w,X		; FE F9 5B
	cmp $BB.b,X		; D5 BB
	sta ($18.b,X)		; 81 18
	bne  -8.b		; D0 F8
	asl A		; 0A
	rts		; 60

	sbc ($F8.b)		; F2 F8
	tsb $B313.w		; 0C 13 B3
	inc $1CE8.w,X		; FE E8 1C
	lda $9CC2.w,Y		; B9 C2 9C
	inc $41.b,X		; F6 41
	sbc $02.b,S		; E3 02
	ora ($4A.b,X)		; 01 4A
	dec $0FF0.w,X		; DE F0 0F
	tad		; 5B
	.db $82, $44, $FE		; 82 44 FE
	sei		; 78
	ora $F83092.l		; 0F 92 30 F8
	bvs  16.b		; 70 10
	cpx #$08E2.w		; E0 E2 08
	sbc ($FE.b)		; F2 FE
	sed		; F8
	eor $FC.b,X		; 55 FC
	cld		; D8
	ora $03C2.w		; 0D C2 03
	ora $1E2107.l,X		; 1F 07 21 1E
	cpy #$F8DE.w		; C0 DE F8
	beq   9.b		; F0 09
	sbc #$FF69.w		; E9 69 FF
	cli		; 58
	pei ($F1.b)		; D4 F1
	trb $00.b		; 14 00
	inc $C7C4.w		; EE C4 C7
	.db $82, $82, $F0		; 82 82 F0
	sei		; 78
	lda ($B9.b),Y		; B1 B9
	adc $85.b,X		; 75 85
	jmp $7AD1.w		; 4C D1 7A
	bcs  17.b		; B0 11
	ldx $20B1.w,Y		; BE B1 20
	ora $0DF050.l,X		; 1F 50 F0 0D
	sta $8C.b		; 85 8C
	inc $8C7B.w,X		; FE 7B 8C
	ora ($00.b)		; 12 00
.ACCU 8
	sep #$26		; E2 26
	cmp ($FC.b),Y		; D1 FC
	sed		; F8
	clc		; 18
	bra   6.b		; 80 06
	ora $C4.b,X		; 15 C4
	inc $000C.w,X		; FE 0C 00
	sed		; F8
	asl A		; 0A
	cpx #$1FF0.w		; E0 F0 1F
	.db $82, $E0, $F0		; 82 E0 F0
	ora $F186.w,X		; 1D 86 F1
	cmp ($00.b,X)		; C1 00
	cli		; 58
	inc $277F.w,X		; FE 7F 27
	adc $AB4037.l,X		; 7F 37 40 AB
	lda ($A3.b)		; B2 A3
	bcs  23.b		; B0 17
	brk $27.b		; 00 27
	inc $F0E0.w,X		; FE E0 F0
	ora #$BE.b		; 09 BE
	ldy $00.b		; A4 00
	eor $A2E300.l,X		; 5F 00 E3 A2
	ldy $4818.w,X		; BC 18 48
	bmi  48.b		; 30 30
	sta $FCB9.w		; 8D B9 FC
	ldx $FFF0.w,Y		; BE F0 FF
	rol $E0DC.w		; 2E DC E0
	ora #$13.b		; 09 13
	brk $2A.b		; 00 2A
	brk $52.b		; 00 52
	brk $7B.b		; 00 7B
	and ($7F.b,X)		; 21 7F
	and #$7A.b		; 29 7A
	lda $D9A028.l,X		; BF 28 A0 D9
	jsr ($11D2.w,X)		; FC D2 11
	brk $21.b		; 00 21
	stz $0EC0.w,X		; 9E C0 0E
	inc $6294.w,X		; FE 94 62
	brk $5C.b		; 00 5C
	sbc $4B.b,X		; F5 4B
	adc $0CB8.w,Y		; 79 B8 0C
	stz $FFF4.w		; 9C F4 FF
	cpx #$3FE2.w		; E0 E2 3F
	asl $0041.w		; 0E 41 00
	and ($4F.b),Y		; 31 4F
	lda $FF2000.l,X		; BF 00 20 FF
	rol A		; 2A
	inx		; E8
	stz $F1.b,X		; 74 F1
	ldx $947C.w,Y		; BE 7C 94
	sty $0048.w		; 8C 48 00
	ldy $00.b,X		; B4 00
	jmp.w [$FFCA]		; DC CA FF
	inc $00B2.w,X		; FE B2 00
	inc $7888.w		; EE 88 78
	bra -22.b		; 80 EA
	inc $812A.w,X		; FE 2A 81
	inc $7D.b,X		; F6 7D
	ror A		; 6A
	cpy #$09F8.w		; C0 F8 09
	lda ($8C.b,X)		; A1 8C
	cpy #$AA98.w		; C0 98 AA
	ldy #$D2A2.w		; A0 A2 D2
	phd		; 0B
	ldy $B1CF.w,X		; BC CF B1
	lsr $14B8.w,X		; 5E B8 14
	jsr $FEE2.w		; 20 E2 FE
	adc $150A73.l		; 6F 73 0A 15
	jsr $0AE0.w		; 20 E0 0A
	clc		; 18
	beq  15.b		; F0 0F
	sbc $0A1BF8.l,X		; FF F8 1B 0A
	and ($D4.b,S),Y		; 33 D4
	lda $D060.w,Y		; B9 60 D0
	ora $2B1A.w		; 0D 1A 2B
	inc $9834.w		; EE 34 98
	sbc [$40.b]		; E7 40
	inc $BFE0.w,X		; FE E0 BF
	lda $B67B.w		; AD 7B B6
	ldy $50.b,X		; B4 50
	adc ($A0.b)		; 72 A0
	brk $FD.b		; 00 FD
	ora $42E986.l		; 0F 86 E9 42
	and $0EF8C0.l,X		; 3F C0 F8 0E
	brk $32.b		; 00 32
	inc $FF1A.w		; EE 1A FF
	ora $2AC0A1.l		; 0F A1 C0 2A
	php		; 08
	jsr ($F374.w,X)		; FC 74 F3
	sbc $EE0BF8.l,X		; FF F8 0B EE
	bcc -46.b		; 90 D2
	sta $5A.b,S		; 83 5A
	inc A		; 1A
	ora $00BE03.l,X		; 1F 03 BE 00
	cpx $00.b		; E4 00
	sed		; F8
	ora #$FC.b		; 09 FC
	nop		; EA
	asl $E330.w,X		; 1E 30 E3
	adc $897755.l,X		; 7F 55 77 89
	sed		; F8
	sbc $000D0E.l,X		; FF 0E 0D 00
	ora $CE.b		; 05 CE
	cmp $F880.w,Y		; D9 80 F8
	ora #$C4.b		; 09 C4
	jmp.w [$F27C]		; DC 7C F2
	sta ($AA.b,X)		; 81 AA
	sty $EA.b		; 84 EA
	ldx $03F0.w,Y		; BE F0 03
	jmp $7DE5.w		; 4C E5 7D
	bvs  11.b		; 70 0B
	ora $7BD114.l,X		; 1F 14 D1 7B
	jsr ($E0FC.w,X)		; FC FC E0
	jsr $FE00.w		; 20 00 FE
	and $7A.b		; 25 7A
	sbc $1C34FE.l,X		; FF FE 34 1C
	bvs  -2.b		; 70 FE
	jsr ($F280.w,X)		; FC 80 F2
	ora $240C80.l		; 0F 80 0C 24
	brk $8C.b		; 00 8C
	.db $42, $FE		; 42 FE
	cpy #$0BF0.w		; C0 F0 0B
	clc		; 18
	inc $F2C0.w,X		; FE C0 F2
	dec $7BC8.w,X		; DE C8 7B
	eor ($FA.b,X)		; 41 FA
	sbc ($2A.b),Y		; F1 2A
	brk $E9.b		; 00 E9
	inc $4CCC.w,X		; FE CC 4C
	ply		; 7A
	sbc $EE.b,X		; F5 EE
	clv		; B8
	cld		; D8
	ora #$0F.b		; 09 0F
	rol $F20C.w		; 2E 0C F2
	and ($00.b,X)		; 21 00
	eor ($7C.b),Y		; 51 7C
	jmp.w [$0ED2]		; DC D2 0E
	asl $F1F2.w		; 0E F2 F1
	rti		; 40

	xba		; EB
	inc $2E48.w,X		; FE 48 2E
	sei		; 78
	beq  12.b		; F0 0C
	plp		; 28
	cpy $E9.b		; C4 E9
	and ($99.b),Y		; 31 99
	bit $21.b		; 24 21
	sta $24.b,S		; 83 24
	clc		; 18
	ldy $FE10.w		; AC 10 FE
	stz $55.b,X		; 74 55
	lda $C0.b,X		; B5 C0
	sed		; F8
	phd		; 0B
	and $00.b,S		; 23 00
	xba		; EB
	bit $A0F1.w,X		; 3C F1 A0
	lda $EACA.w,Y		; B9 CA EA
	brk $E8.b		; 00 E8
	phd		; 0B
	dex		; CA
	sbc ($D0.b)		; F2 D0
	adc $E96051.l,X		; 7F 51 60 E9
	adc [$22.b],Y		; 77 22
	adc $1C2222.l,X		; 7F 22 22 1C
	bit $F2B4.w,X		; 3C B4 F2
	rep #$C0		; C2 C0
	sed		; F8
	ora #$5D.b		; 09 5D
	ora ($20.b,X)		; 01 20
	inc $3A.b		; E6 3A
	sta $181E.w,Y		; 99 1E 18
	rti		; 40

	sbc #$08.b		; E9 08
	beq  17.b		; F0 11
	sta ($E0.b)		; 92 E0
	pld		; 2B
	bra  -2.b		; 80 FE
	sei		; 78
	bmi -16.b		; 30 F0
	rts		; 60

	jsr $F17A.w		; 20 7A F1
	inc $18FC.w		; EE FC 18
	sbc $FEFFFE.l,X		; FF FE FF FE
	adc $45FE.w,X		; 7D FE 45
	brk $4B.b		; 00 4B
	brk $37.b		; 00 37
	ora $AA.b,S		; 03 AA
	and $F13C07.l		; 2F 07 3C F1
	iny		; C8
	inc $F608.w		; EE 08 F6
	ldx #$00B3.w		; A2 B3 00
	pla		; 68
	brk $50.b		; 00 50
	rol $65F3.w,X		; 3E F3 65
	and $FF.b,X		; 35 FF
	bcc  -2.b		; 90 FE
	php		; 08
	sbc ($38.b)		; F2 38
	inc $F6D0.w		; EE D0 F6
	and $220FE8.l,X		; 3F E8 0F 22
	rts		; 60

	cpy #$6012.w		; C0 12 60
	inc $70F8.w,X		; FE F8 70
	beq -32.b		; F0 E0
	rts		; 60

	bra -54.b		; 80 CA
	eor $F860BC.l		; 4F BC 60 F8
	ora $5E815D.l		; 0F 5D 81 5E
	bit $3F10.w,X		; 3C 10 3F
	trb $FEEA.w		; 1C EA FE
	cpy #$F43E.w		; C0 3E F4
	rts		; 60

	sed		; F8
	ora #$42.b		; 09 42
	sbc ($00.b),Y		; F1 00
	adc ($6E.b,X)		; 61 6E
	sbc ($1F.b,X)		; E1 1F
	asl $1CFE.w		; 0E FE 1C
	tsb $0542.w		; 0C 42 05
	beq  77.b		; F0 4D
	txs		; 9A
	bcs  30.b		; B0 1E
	tay		; A8
	sbc [$42.b]		; E7 42
	sbc ($FE.b)		; F2 FE
	phb		; 8B
	rol A		; 2A
	tsb $F3.b		; 04 F3
	ora ($3C.b,X)		; 01 3C
	cmp ($3E.b),Y		; D1 3E
	php		; 08
	beq   9.b		; F0 09
	cpy #$D0F6.w		; C0 F6 D0
	pea $1A80.w		; F4 80 1A
	rti		; 40

	inc $FA00.w,X		; FE 00 FA
	php		; 08
	beq   9.b		; F0 09
	rts		; 60

	sed		; F8
	phd		; 0B
	bit $3E.b		; 24 3E
	plp		; 28
	bra  24.b		; 80 18
	ora $030C0C.l,X		; 1F 0C 0C 03
	ldy $62.b,X		; B4 62
	jsr ($D89C.w,X)		; FC 9C D8
	phd		; 0B
	ldy $D451.w,X		; BC 51 D4
	beq -64.b		; F0 C0
	sed		; F8
	bmi -32.b		; 30 E0
	nop		; EA
	rol $E0FE.w,X		; 3E FE E0
	inx		; E8
	phd		; 0B
	ora $24.b,X		; 15 24
	cli		; 58
	pea $DB04.w		; F4 04 DB
	rti		; 40

	wai		; CB
	sep #$40		; E2 40
	iny		; C8
	ora $0018E0.l		; 0F E0 18 00
	lsr $F0FC.w		; 4E FC F0
	mvp $95,$3E		; 44 3E 95
	iny		; C8
	bit $92AF.w,X		; 3C AF 92
	dex		; CA
	cmp $40E0FE.l,X		; DF FE E0 40
.ACCU 8
	sep #$A8		; E2 A8
	rti		; 40

	rol $5DE0.w,X		; 3E E0 5D
	.db $62, $40, $E8		; 62 40 E8
	ora #$E4.b		; 09 E4
	trb $5E.b		; 14 5E
	sbc ($38.b)		; F2 38
	tsb $F4.b		; 04 F4
	tsb $1C.b		; 04 1C
	php		; 08
	plp		; 28
	plx		; FA
	sbc #$D5.b		; E9 D5
	eor $40.b,X		; 55 40
	inx		; E8
	phd		; 0B
	ldy $38EA.w,X		; BC EA 38
	jsr ($E18A.w,X)		; FC 8A E1
	and $E5007F.l,X		; 3F 7F 00 E5
	bra -32.b		; 80 E0
	ora #$98.b		; 09 98
	beq   9.b		; F0 09
	sei		; 78
	eor $CC.b,X		; 55 CC
	sed		; F8
	cpx #$38FC.w		; E0 FC 38
	rts		; 60

	jsr ($C040.w,X)		; FC 40 C0
	ora #$62.b		; 09 62
	jsr ($D8E0.w,X)		; FC E0 D8
	ora $0BA8.w		; 0D A8 0B
	rol $423C.w		; 2E 3C 42
	beq  14.b		; F0 0E
	sty $D0.b,X		; 94 D0
	ora $0023.w		; 0D 23 00
	adc ($98.b,X)		; 61 98
	ora $EE2A4A.l		; 0F 4A 2A EE
	stz $C8.b,X		; 74 C8
	ora $E020.w		; 0D 20 E0
	ora $A0EE.w		; 0D EE A0
	sbc $20.b		; E5 20
	sbc ($60.b,X)		; E1 60
	cld		; D8
	ora $05B9.w		; 0D B9 05
	sty $60.b		; 84 60
	sed		; F8
	asl A		; 0A
	clc		; 18
	ora ($7E.b)		; 12 7E
	lda $C60C.w,Y		; B9 0C C6
	sed		; F8
	asl A		; 0A
	pea $8505.w		; F4 05 85
	.db $62, $C4, $FF		; 62 C4 FF
	sed		; F8
	phd		; 0B
	.db $62, $E0, $A0		; 62 E0 A0
	ora $0DF850.l		; 0F 50 F8 0D
	lda ($AA.b)		; B2 AA
	phy		; 5A
	adc $D0E4.w,X		; 7D E4 D0
	bpl  -1.b		; 10 FF
	sed		; F8
	phd		; 0B
	cpy $E2.b		; C4 E2
	sbc $F80DF8.l,X		; FF F8 0D F8
	cpx $C114.w		; EC 14 C1
	ora ($21.b,X)		; 01 21
	adc ($15.b),Y		; 71 15
	ldy $E8C8.w,X		; BC C8 E8
	tsb $AED6.w		; 0C D6 AE
	tsb $44F2.w		; 0C F2 44
	cpx #$F8EA.w		; E0 EA F8
	bmi  48.b		; 30 30
	tax		; AA
	and $C0.b,X		; 35 C0
	sbc #$C8.b		; E9 C8
	pea $F0E8.w		; F4 E8 F0
	ora #$4C.b		; 09 4C
	tsx		; BA
	rti		; 40

	iny		; C8
	phd		; 0B
	ora $0EC840.l,X		; 1F 40 C8 0E
	tyx		; BB
	.db $42, $14		; 42 14
	ldx $82.b,Y		; B6 82
	bit $0E.b		; 24 0E
	.db $82, $A9, $05		; 82 A9 05
	bra -87.b		; 80 A9
	lda ($C2.b)		; B2 C2
	inc $82AA.w,X		; FE AA 82
	bit $F8.b		; 24 F8
	ora #$40.b		; 09 40
	inx		; E8
	and $04D24C.l,X		; 3F 4C D2 04
	sbc ($FC.b,S),Y		; F3 FC
	dex		; CA
	cpy #$72D9.w		; C0 D9 72
	ldy #$A0BD.w		; A0 BD A0
	cpx #$900D.w		; E0 0D 90
	tsb $0DF8.w		; 0C F8 0D
	inc $0FF0.w,X		; FE F0 0F
	bit $E1B2.w,X		; 3C B2 E1
	ora ($00.b)		; 12 00
	ora #$17.b		; 09 17
	cpx $911A.w		; EC 1A 91
	ora [$03.b]		; 07 03
	tsb $00.b		; 04 00
	sbc #$26.b		; E9 26
	sbc ($52.b),Y		; F1 52
	asl $A0.b		; 06 A0
	sed		; F8
	asl A		; 0A
	sbc $00FDFF.l		; EF FF FD 00
	ldy $4700.w		; AC 00 47
	brk $CF.b		; 00 CF
	stx $8F.b		; 86 8F
	asl $84.b		; 06 84
	ldy #$2681.w		; A0 81 26
	brk $46.b		; 00 46
	brk $52.b		; 00 52
	sta [$43.b]		; 87 43
	sed		; F8
	cpy #$200A.w		; C0 0A 20
	sei		; 78
	rol $C9.b,X		; 36 C9
	jsr ($FE18.w,X)		; FC 18 FE
	asl A		; 0A
	tsx		; BA
	php		; 08
	rts		; 60

	sbc ($E8.b,X)		; E1 E8
.ACCU 8
	sep #$E2		; E2 E2
	clv		; B8
	ldy #$6009.w		; A0 09 60
	cld		; D8
	ora #$1F.b		; 09 1F
	asl $41FA.w		; 0E FA 41
	ldy #$09E0.w		; A0 E0 09
	pla		; 68
	beq  11.b		; F0 0B
	cmp $0029.w,Y		; D9 29 00
	phd		; 0B
	brk $1F.b		; 00 1F
	tsb $E0C0.w		; 0C C0 E0
	tsx		; BA
	and $82FC.w		; 2D FC 82
	ldx $B810.w		; AE 10 B8
	ora #$E7.b		; 09 E7
	.db $82, $F1, $FE		; 82 F1 FE
	sbc [$C3.b]		; E7 C3
	sbc $504266.l,X		; FF 66 42 50
	trb $3C.b		; 14 3C
	eor ($66.b)		; 52 66
	lda ($4A.b,X)		; A1 4A
	inc $F860.w,X		; FE 60 F8
	ora #$0E.b		; 09 0E
	ora [$DE.b],Y		; 17 DE
	cmp $CA00.w		; CD 00 CA
	clc		; 18
	bmi 120.b		; 30 78
	bmi  32.b		; 30 20
.ACCU 16
	rep #$AE		; C2 AE
	cmp ($A6.b),Y		; D1 A6
	and $00.b,X		; 35 00
	and ($6A.b)		; 32 6A
	cmp $A0F4C0.l,X		; DF C0 F4 A0
	inc $4A19.w,X		; FE 19 4A
	pld		; 2B
	php		; 08
	ldy #$4040.w		; A0 40 40
	dec $F1.b		; C6 F1
	rol $CA.b,X		; 36 CA
	inc $C8D8.w,X		; FE D8 C8
	ora $FE8350.l		; 0F 50 83 FE
	bit $08.b		; 24 08
	rti		; 40

	cld		; D8
	ora ($7E.b)		; 12 7E
	cmp ($E0.b,S),Y		; D3 E0
	inc $AAAA.w,X		; FE AA AA
	cpy $BFD2.w		; CC D2 BF
	ror $A8.b,X		; 76 A8
	inc $E470.w,X		; FE 70 E4
	jsr $A0EE.w		; 20 EE A0
.ACCU 8
	sep #$E0		; E2 E0
	cld		; D8
	ora #$00.b		; 09 00
	cpx #$AA15.w		; E0 15 AA
	tax		; AA
	jsr $09C8.w		; 20 C8 09
	brk $E4.b		; 00 E4
	cmp ($78.b),Y		; D1 78
	phd		; 0B
	stx $81.b,Y		; 96 81
	rti		; 40

	tay		; A8
	asl A		; 0A
	inc $78FC.w		; EE FC 78
	beq   9.b		; F0 09
	sbc $FAFCF8.l,X		; FF F8 FC FA
	rtl		; 6B

	sbc $0C7AF8.l,X		; FF F8 7A 0C
	sbc ($04.b)		; F2 04
	sbc ($E0.b,S),Y		; F3 E0
	jsr ($02E0.w,X)		; FC E0 02
	jsr ($08FC.w,X)		; FC FC 08
	beq  10.b		; F0 0A
	rti		; 40

	dec $0E.b		; C6 0E
	cmp $55.b,S		; C3 55
	cpy $E9.b		; C4 E9
	asl $F8.b		; 06 F8
	asl $3F.b		; 06 3F
	trb $AA00.w		; 1C 00 AA
	rol $40F4.w		; 2E F4 40
	cpx #$2B09.w		; E0 09 2B
	plp		; 28
	sty $18D2.w		; 8C D2 18
	lsr A		; 4A
	lda #$DA.b		; A9 DA
	adc ($EA.b),Y		; 71 EA
	ror $0859.w,X		; 7E 59 08
	phx		; DA
	inx		; E8
	eor $C0C2.w,X		; 5D C2 C0
	cpx #$0C09.w		; E0 09 0C
	sbc ($09.b)		; F2 09
	brk $19.b		; 00 19
	ldy $7FC9.w,X		; BC C9 7F
	rol $C0.b		; 26 C0
	phx		; DA
	tay		; A8
	ldy #$07B6.w		; A0 B6 07
	php		; 08
	beq  12.b		; F0 0C
	jmp $FCDA.w		; 4C DA FC
	jsr ($2AAA.w,X)		; FC AA 2A
	brk $40.b		; 00 40
	cpx $DE4C.w		; EC 4C DE
	sbc $F000FE.l,X		; FF FE 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3D.b		; 00 3D
	sed		; F8
	brk $FF.b		; 00 FF
	sed		; F8
	rol A		; 2A
	ora $FDFF00.l,X		; 1F 00 FF FD
	inc $0DF8.w		; EE F8 0D
	ora $FF030C.l,X		; 1F 0C 03 FF
	sbc $2F0F13.l,X		; FF 13 0F 2F
	ora $7F1F3F.l,X		; 1F 3F 1F 7F
	and $703F7C.l,X		; 3F 7C 3F 70
	and $033FC0.l,X		; 3F C0 3F 03
	ora $01.b,S		; 03 01
	ror $0F0F.w,X		; 7E 0F 0F
	nop		; EA
	sbc $3C3F3F.l,X		; FF 3F 3F 3C
	bit $3030.w,X		; 3C 30 30
	sed		; F8
	sta [$DE.b]		; 87 DE
	jsr ($FEF0.w,X)		; FC F0 FE
	jsr ($FEF1.w,X)		; FC F1 FE
	cmp ($FE.b,X)		; C1 FE
	cmp $FF.b		; C5 FF
	bvs   3.b		; 70 03
	sbc $3FFF0F.l,X		; FF 0F FF 3F
	sbc $FCF0F0.l,X		; FF F0 F0 FC
	sbc $C0F0.w		; ED F0 C0
	cpy #$8DBF.w		; C0 BF 8D
	ldx #$11F8.w		; A2 F8 11
	bra   0.b		; 80 00
	sed		; F8
	brk $C7.b		; 00 C7
	inx		; E8
	sed		; F8
	asl $F438.w		; 0E 38 F4
	sed		; F8
	asl A		; 0A
	ora ($C1.b,X)		; 01 C1
	sbc $FDC3FE.l,X		; FF FE C3 FD
	sbc $010DF8.l,X		; FF F8 0D 01
	jmp ($7E00.w,X)		; 7C 00 7E
	sec		; 38
	adc $87FF38.l,X		; 7F 38 FF 87
	cpy #$FF7F.w		; C0 7F FF
	asl $FF.b		; 06 FF
	sbc $70FD0C.l,X		; FF 0C FD 70
	clc		; 18
	wai		; CB
	inc $007F.w,X		; FE 7F 00
	asl $8E.b		; 06 8E
	brk $0C.b		; 00 0C
	inc $FC1F.w,X		; FE 1F FC
	beq   0.b		; F0 00
	sta $F30F60.l,X		; 9F 60 0F F3
	sta $07FF63.l,X		; 9F 63 FF 07
	sbc $FFE3E7.l,X		; FF E7 E3 FF
	adc $60E0CE.l,X		; 7F CE E0 60
	brk $F3.b		; 00 F3
	brk $63.b		; 00 63
	brk $07.b		; 00 07
	brk $E7.b		; 00 E7
	ora $0F0010.l		; 0F 10 00 0F
	brk $CE.b		; 00 CE
	bit $C2DD.w,X		; 3C DD C2
	tsa		; 3B
	and ($50.b,S),Y		; 33 50
	inc $FE73.w,X		; FE 73 FE
	nop		; EA
	cpy #$CC3B.w		; C0 3B CC
	and ($FE.b,X)		; 21 FE
	adc ($FE.b,S),Y		; 73 FE
	ora [$DD.b]		; 07 DD
	sta $C6C000.l		; 8F 00 C0 C6
	inc $9E47.w,X		; FE 47 9E
	stx $8047.w		; 8E 47 80
	sbc $B9FF9C.l,X		; FF 9C FF B9
	cpx #$FEDC.w		; E0 DC FE
	sed		; F8
	ora [$3F.b]		; 07 3F
	stz $008E.w,X		; 9E 8E 00
	stz $B900.w		; 9C 00 B9
	sta ($00.b,X)		; 81 00
	inc $E118.w,X		; FE 18 E1
	sta [$FF.b],Y		; 97 FF
	sbc $C2FE.w,X		; FD FE C2
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	lsr $08.b		; 46 08
	cmp $68.b,S		; C3 68
	sbc $FEFD.w,X		; FD FD FE
.ACCU 16
	rep #$E2		; C2 E2
	and ($1E.b,X)		; 21 1E
	eor $ABE4AB.l		; 4F AB E4 AB
	inc $FFFB.w,X		; FE FB FF
	adc $60008F.l		; 6F 8F 00 60
	dec $FF.b,X		; D6 FF
	inc $E4.b,X		; F6 E4
	sbc $FFC7.w		; ED C7 FF
	inc $00FB.w,X		; FE FB 00
	adc $00D6C9.l		; 6F C9 D6 00
	inc $30.b,X		; F6 30
	brk $C8.b		; 00 C8
	bmi -124.b		; 30 84
	cmp $8F.b,S		; C3 8F
	sei		; 78
	cmp $FFC630.l		; CF 30 C6 FF
	sta $FF.b,S		; 83 FF
	adc [$FF.b]		; 67 FF
	cpx #$10.b		; E0 10
	sbc ($E0.b,X)		; E1 E0
	sbc $FC78.w		; ED 78 FC
	ldx $83.b,Y		; B6 83
	brk $87.b		; 00 87
	bra 103.b		; 80 67
	brk $E0.b		; 00 E0
	rol $1C95.w,X		; 3E 95 1C
	inc $08C6.w,X		; FE C6 08
	jmp $70FCFF.l		; 5C FF FC 70
	cpx #$1C.b		; E0 1C
	inc $8488.w,X		; FE 88 84
	jmp $F0FE8B.l		; 5C 8B FE F0
	brk $00.b		; 00 00
	sbc $FECFC9.l,X		; FF C9 CF FE
	cmp ($18.b,X)		; C1 18
	adc $51F0.w		; 6D F0 51
	sbc $FEC0FD.l,X		; FF FD C0 FE
	bra  -8.b		; 80 F8
	lda $03F01F.l,X		; BF 1F F0 03
	brk $0C.b		; 00 0C
	ora $10.b,S		; 03 10
	ora $2F1F23.l		; 0F 23 1F 2F
	asl A		; 0A
	ora $5A.b		; 05 5A
	sbc ($E2.b),Y		; F1 E2
	jsr ($F05A.w,X)		; FC 5A F0
	ora #$0FE4.w		; 09 E4 0F
	adc [$F1.b]		; 67 F1
	and ($F8.b,X)		; 21 F8
	ora ($FF.b)		; 12 FF
	jsr ($F0FF.w,X)		; FC FF F0
	sbc $F1C0C0.l,X		; FF C0 C0 F1
	cpx $A9.b		; E4 A9
	rol A		; 2A
	sta $58.b,X		; 95 58
	pea $FFE8.w		; F4 E8 FF
	rti		; 40

	sbc $E8.b,X		; F5 E8
	inc $F77E.w,X		; FE 7E F7
	inx		; E8
	sed		; F8
	ora [$02.b],Y		; 17 02
	sei		; 78
	txa		; 8A
	sta $91.b,S		; 83 91
	inx		; E8
	jsr ($C0C1.w,X)		; FC C1 C0
	cop $A1.b		; 02 A1
	bpl 115.b		; 10 73
	sbc ($53.b),Y		; F1 53
	jsr $FDE8.w		; 20 E8 FD
	rol A		; 2A
	jsr ($2A90.w,X)		; FC 90 2A
	mvn $D1,$60		; 54 60 D1
	sbc $A8.b,S		; E3 A8
	sbc #$F8FF.w		; E9 FF F8
	ora #$F188.w		; 09 88 F1
	sta [$9D.b],Y		; 97 9D
	inx		; E8
	ora $0787.w		; 0D 87 07
	jsr ($FF1F.w,X)		; FC 1F FF
	brk $B4.b		; 00 B4
	ror $20FA.w,X		; 7E FA 20
	plp		; 28
	beq   7.b		; F0 07
	bne  24.b		; D0 18
	stp		; DB
	sbc ($DB.b),Y		; F1 DB
	ror $FDE0.w,X		; 7E E0 FD
	clc		; 18
	sta $60.b		; 85 60
	ora ($31.b,X)		; 01 31
	jsr ($A8DE.w,X)		; FC DE A8
	sbc $011618.l,X		; FF 18 16 01
	cmp $B960.w		; CD 60 B9
	sed		; F8
	ora #$43C4.w		; 09 C4 43
	brk $50.b		; 00 50
	eor $F45DE2.l,X		; 5F E2 5D F4
	sbc $F5.b		; E5 F5
	brk $FF.b		; 00 FF
	cmp [$E2.b],Y		; D7 E2
	inc $F5.b,X		; F6 F5
	sbc $3CFF0E.l,X		; FF 0E FF 3C
	sbc $BC45F8.l,X		; FF F8 45 BC
	sbc $F180F1.l,X		; FF F1 80 F1
	ror $FF.b,X		; 76 FF
	asl $3C00.w		; 0E 00 3C
	and $02.b,X		; 35 02
	adc [$E9.b],Y		; 77 E9
	sbc ($80.b),Y		; F1 80
	sbc ($E0.b),Y		; F1 E0
	jsr ($C47F.w,X)		; FC 7F C4
	sbc $DE4004.l,X		; FF 04 40 DE
	beq  78.b		; F0 4E
	sbc #$10FF.w		; E9 FF 10
	sta ($7B.b,X)		; 81 7B
	sbc $F5E1.w,Y		; F9 E1 F5
	eor ($C7.b,X)		; 41 C7
	cli		; 58
	sbc $C680F3.l,X		; FF F3 80 C6
	sbc [$C0.b]		; E7 C0
	adc $FC60.w,Y		; 79 60 FC
	sty $D8.b		; 84 D8
	pld		; 2B
	dec $E7.b		; C6 E7
	cpy #$79.b		; C0 79
	cpy #$FD.b		; C0 FD
	sbc $FFC790.l,X		; FF 90 C7 FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FF8CFF.l		; EF FF 8C FF
	dey		; 88
	cpx #$EC.b		; E0 EC
	inc $EF0B.w,X		; FE 0B EF
	cmp [$00.b]		; C7 00
	sbc [$00.b],Y		; F7 00
	sbc $008C00.l		; EF 00 8C 00
	dey		; 88
	cpx #$FD.b		; E0 FD
	brk $50.b		; 00 50
	.db $62, $BE, $DC		; 62 BE DC
	dec $C06F.w,X		; DE 6F C0
	sbc $FA01.w,X		; FD 01 FA
	eor #$DCF2.w		; 49 F2 DC
	dec $E06F.w,X		; DE 6F E0
	sbc $FF70.w,X		; FD 70 FF
	cpx #$05.b		; E0 05
	tad		; 5B
	sbc $F17BFE.l,X		; FF FE 7B F1
	inc $FC40.w,X		; FE 40 FC
	bvs  19.b		; 70 13
	sbc ($FE.b),Y		; F1 FE
	cmp ($F1.b,X)		; C1 F1
	bvs -63.b		; 70 C1
	inc $FC33.w,X		; FE 33 FC
	and $E90B03.l,X		; 3F 03 0B E9
	cmp $FEFF.w		; CD FF FE
	nop		; EA
	sbc $F1753F.l,X		; FF 3F 75 F1
	cpy #$F0.b		; C0 F0
	phd		; 0B
	pla		; 68
	cpx $40.b		; E4 40
	and $231F20.l,X		; 3F 20 1F 23
	ora $0F0F1F.l,X		; 1F 1F 0F 0F
	tax		; AA
	nop		; EA
	ora $68.b,S		; 03 68
	inc $A0.b		; E6 A0
	sbc [$48.b],Y		; F7 48
	sbc [$50.b],Y		; F7 50
	pea $F748.w		; F4 48 F7
	inc $F0FD.w,X		; FE FD F0
	sed		; F8
	ora #$83FC.w		; 09 FC 83
	dec $03.b		; C6 03
	beq  15.b		; F0 0F
	sta ($E8.b)		; 92 E8
	inc $FEFE.w,X		; FE FE FE
	beq  -2.b		; F0 FE
	asl $F80F.w		; 0E 0F F8
	bit $04E9.w,X		; 3C E9 04
	sed		; F8
	inc $F80C.w,X		; FE 0C F8
	bit $A0F8.w,X		; 3C F8 A0
	cop $63.b		; 02 63
	inc $FCEC.w,X		; FE EC FC
	inc $FFFC.w,X		; FE FC FF
	sed		; F8
	phd		; 0B
	ldx $98.b,Y		; B6 98
	sta $FE.b,X		; 95 FE
	sbc $0709F8.l,X		; FF F8 09 07
	sbc $73F235.l,X		; FF 35 F2 73
	sbc ($08.b)		; F2 08
	plp		; 28
	inc $60B0.w,X		; FE B0 60
	sbc $E56A7F.l,X		; FF 7F 6A E5
	sbc $EFEC0F.l,X		; FF 0F EC EF
	sbc ($3C.b,S),Y		; F3 3C
	inc $16E1.w		; EE E1 16
	sbc #$C390.w		; E9 90 C3
	ldy #$F0.b		; A0 F0
	cpx #$E0.b		; E0 E0
	lsr $F8F8.w		; 4E F8 F8
	sed		; F8
	cpx #$FE.b		; E0 FE
	bcs -76.b		; B0 B4
	sbc $8609F8.l,X		; FF F8 09 86
	cpy #$1E.b		; C0 1E
	sbc ($F8.b)		; F2 F8
	ora #$FEDC.w		; 09 DC FE
	inc $8951.w,X		; FE 51 89
	bmi -40.b		; 30 D8
	tas		; 1B
	ora ($FF.b,X)		; 01 FF
	dec $33F1.w		; CE F1 33
	sbc $FE.b,S		; E3 FE
	pha		; 48
	eor $B3.b,X		; 55 B3
	stx $84.b		; 86 84
	inc $FCA0.w,X		; FE A0 FC
	ora ($F8.b)		; 12 F8
	phd		; 0B
	bne -14.b		; D0 F2
	sbc $E10DF8.l,X		; FF F8 0D E1
	stx $1E.b		; 86 1E
	cmp $0396.w,Y		; D9 96 03
	beq   7.b		; F0 07
	ror A		; 6A
	sbc #$FE0E.w		; E9 0E FE
	.db $82, $00, $00		; 82 00 00
	ror $8CD9.w,X		; 7E D9 8C
	inc $FC.b		; E6 FC
	sed		; F8
	ldy #$B4.b		; A0 B4
	sbc $ED8E56.l,X		; FF 56 8E ED
	eor $F109F0.l,X		; 5F F0 09 F1
	cpy #$80.b		; C0 80
	ror $B3.b		; 66 B3
	beq  -8.b		; F0 F8
	asl A		; 0A
	lda ($DA.b),Y		; B1 DA
	ora $F2F6FE.l		; 0F FE F6 F2
	ora $8402FF.l		; 0F FF 02 84
	stz $E2.b		; 64 E2
	.db $62, $E2, $FF		; 62 E2 FF
	cpx #$F0.b		; E0 F0
	plp		; 28
	bmi -98.b		; 30 9E
	ora $1CC0A6.l		; 0F A6 C0 1C
	inc $8018.w,X		; FE 18 80
	sec		; 38
	php		; 08
	php		; 08
	tsb $A4.b		; 04 A4
	sed		; F8
	inc $04.b,X		; F6 04
	cmp $FF.b		; C5 FF
	ldx $0BF0.w		; AE F0 0B
	and ($41.b,S),Y		; 33 41
	phx		; DA
	asl $0CF8.w,X		; 1E F8 0C
	sta [$AF.b]		; 87 AF
	sta ($83.b)		; 92 83
	brk $8F.b		; 00 8F
	brk $BF.b		; 00 BF
	rti		; 40

	sbc [$16.b],Y		; F7 16
	jsr ($FE10.w,X)		; FC 10 FE
	inc $02AA.w,X		; FE AA 02
	inx		; E8
	jsr ($E738.w,X)		; FC 38 E7
	jsr $0EF0.w		; 20 F0 0E
	jsr $0FE0.w		; 20 E0 0F
	inc $F8.b		; E6 F8
	ora #$FCC8.w		; 09 C8 FC
	tda		; 7B
	jsr ($FE50.w,X)		; FC 50 FE
	pea $C8F0.w		; F4 F0 C8
	cpy #$08.b		; C0 08
	brk $FE.b		; 00 FE
	bpl 124.b		; 10 7C
	cmp $4A0F.w,Y		; D9 0F 4A
	tsb $F0F2.w		; 0C F2 F0
	php		; 08
	cpy #$F7.b		; C0 F7
	xce		; FB
	nop		; EA
	sbc ($E9.b,S),Y		; F3 E9
	stz $50.b		; 64 50
	jsl $D14220.l		; 22 20 42 D1
	tsb $FE.b		; 04 FE
	ldy $E9.b,X		; B4 E9
	jsr $C5FF.w		; 20 FF C5
	tax		; AA
	brk $F4.b		; 00 F4
	lda ($FE.b)		; B2 FE
	iny		; C8
	ora $B8.b,S		; 03 B8
	sbc ($A0.b)		; F2 A0
	beq  15.b		; F0 0F
	cpx #$FE.b		; E0 FE
	cmp ($C5.b),Y		; D1 C5
.ACCU 8
.INDEX 8
	sep #$F1		; E2 F1
	cpy #$FE.b		; C0 FE
	bra -16.b		; 80 F0
	asl $3F3F.w		; 0E 3F 3F
	nop		; EA
	pea $C3FE.w		; F4 FE C3
	tax		; AA
	jsr $600F.w		; 20 0F 60
	inc $401F.w,X		; FE 1F 40
	nop		; EA
	pea $F2DC.w		; F4 DC F2
	rts		; 60

	inc $54.b,X		; F6 54
	sec		; 38
	iny		; C8
	dex		; CA
	inc $09FB.w,X		; FE FB 09
	cmp ($6F.b),Y		; D1 6F
	ora ($01.b,X)		; 01 01
	ora $AB.b,S		; 03 AB
	inc $20FF.w,X		; FE FF 20
	beq  21.b		; F0 15
	bvc -38.b		; 50 DA
	sta ($F8.b,X)		; 81 F8
	asl $F588.w		; 0E 88 F5
	bra  48.b		; 80 30
	sta [$30.b]		; 87 30
	ora [$A0.b]		; 07 A0
	phy		; 5A
	bvs -98.b		; 70 9E
	dey		; 88
	inc $C0.b,X		; F6 C0
	sed		; F8
	ora #$FF.b		; 09 FF
	inc $EBF8.w,X		; FE F8 EB
	asl $A8.b		; 06 A8
	cpx #$09.b		; E0 09
	and $F854.w		; 2D 54 F8
	cpx $EE24.w		; EC 24 EE
	adc $FED94F.l,X		; 7F 4F D9 FE
	inc $E920.w,X		; FE 20 E9
	stz $0DE8.w,X		; 9E E8 0D
	cmp ($07.b)		; D2 07
	ldx $24.b		; A6 24
	sbc #$22.b		; E9 22
	sbc #$F8.b		; E9 F8
	brk $7C.b		; 00 7C
	ora ($FE.b,X)		; 01 FE
	bit #$E8.b		; 89 E8
	lsr A		; 4A
	nop		; EA
	sbc $07E098.l,X		; FF 98 E0 07
	brk $61.b		; 00 61
	plp		; 28
	tsb $03.b		; 04 03
	inc $0102.w,X		; FE 02 01
	inc $5303.w,X		; FE 03 53
	sbc #$08.b		; E9 08
	tax		; AA
	inc $E2BC.w,X		; FE BC E2
	inc $FC2E.w,X		; FE 2E FC
	rti		; 40

	cpx #$13.b		; E0 13
	bmi -16.b		; 30 F0
	ora #$7E.b		; 09 7E
	eor #$3F.b		; 49 3F
	inc $E8.b,X		; F6 E8
	inc $02FD.w,X		; FE FD 02
	sbc ($0C.b)		; F2 0C
	cpy $C8.b		; C4 C8
	dec $BAFE.w		; CE FE BA
	phx		; DA
	eor $52.b,X		; 55 52
	bvc -29.b		; 50 E3
	pei ($CC.b)		; D4 CC
	cmp [$C8.b]		; C7 C8
	tsb $FFF1.w		; 0C F1 FF
	sta ($3C.b)		; 92 3C
	pea $EC5A.w		; F4 5A EC
	cmp $AE.b,X		; D5 AE
	jmp $3CF2.w		; 4C F2 3C
	pea $F43A.w		; F4 3A F4
	asl $E9.b		; 06 E9
	asl $06.b		; 06 06
	nop		; EA
	cpx #$0C.b		; E0 0C
	lsr $30EC.w,X		; 5E EC 30
	eor ($08.b,X)		; 41 08
	cpx $FDFF.w		; EC FF FD
	sbc $3266.w,X		; FD 66 32
	rol $2901.w,X		; 3E 01 29
	trb $D1.b		; 14 D1
	inc $B928.w,X		; FE 28 B9
	adc $8C6008.l,X		; 7F 08 60 8C
	cop $F8.b		; 02 F8
	phd		; 0B
	sed		; F8
	cld		; D8
	rol A		; 2A
	sbc ($3F.b)		; F2 3F
	tsx		; BA
	stz $DF90.w,X		; 9E 90 DF
	brk $9F.b		; 00 9F
	bmi  -4.b		; 30 FC
	sbc $DFDFFC.l,X		; FF FC DF DF
	sta $F05403.l,X		; 9F 03 54 F0
	cpx #$34.b		; E0 34
	cmp $D12A1C.l,X		; DF 1C 2A D1
	lda ($DD.b,S),Y		; B3 DD
	eor $52.b,X		; 55 52
	ror $CC.b		; 66 CC
	trb $1FF4.w		; 1C F4 1F
	dec $14.b,X		; D6 14
	inc $6C9D.w		; EE 9D 6C
	inc $18.b,X		; F6 18
	sbc ($F0.b)		; F2 F0
	asl $BC56.w		; 0E 56 BC
	sbc ($80.b,X)		; E1 80
	rol $8680.w,X		; 3E 80 86
	sbc ($FC.b)		; F2 FC
	ora ($6A.b,X)		; 01 6A
	cpy #$FE.b		; C0 FE
	stz $20EA.w,X		; 9E EA 20
	beq  15.b		; F0 0F
	dex		; CA
	sbc #$E0.b		; E9 E0
	sta $C6880C.l,X		; 9F 0C 88 C6
	cmp $E878FE.l		; CF FE 78 E8
	inc $FFCF.w,X		; FE CF FF
	pha		; 48
	sta $22FF80.l		; 8F 80 FF 22
	sbc ($0C.b,X)		; E1 0C
	ora ($0C.b,X)		; 01 0C
	ora $49.b,X		; 15 49
	cmp $F8.b		; C5 F8
	jsr ($C4F2.w,X)		; FC F2 C4
	sed		; F8
	tsb $A8FF.w		; 0C FF A8
	ldx $FC.b		; A6 FC
	phd		; 0B
	ldy #$FC.b		; A0 FC
	stp		; DB
	php		; 08
	ldy #$F8.b		; A0 F8
	ora $FE8006.l		; 0F 06 80 FE
	sbc $AAAA.w,X		; FD AA AA
	asl $FFDC.w,X		; 1E DC FF
	sbc $2FF4FA.l,X		; FF FA F4 2F
	clv		; B8
	ora $11F8FF.l		; 0F FF F8 11
	rti		; 40

.ACCU 8
	sep #$E6		; E2 E6
	wai		; CB
	and $043ACE.l		; 2F CE 3A 04
	eor $E2.b		; 45 E2
	sbc ($F8.b),Y		; F1 F8
	asl A		; 0A
	bpl -14.b		; 10 F2
	php		; 08
	ora [$FE.b]		; 07 FE
	ora [$10.b]		; 07 10
	sty $74.b,X		; 94 74
	inc $E5D3.w,X		; FE D3 E5
	eor $D5.b,X		; 55 D5
	xba		; EB
	pla		; 68
	dec $FE.b,X		; D6 FE
	jsr ($55D5.w,X)		; FC D5 55
	sei		; 78
	lda ($D8.b),Y		; B1 D8
	nop		; EA
	adc [$D6.b]		; 67 D6
	ldx $0EC9.w,Y		; BE C9 0E
	inc $D131.w,X		; FE 31 D1
	ror $0BD0.w		; 6E D0 0B
	lda $F6.b,X		; B5 F6
	and [$2F.b],Y		; 37 2F
	jmp $100AD0.l		; 5C D0 0A 10
	ora $1FFCFE.l		; 0F FE FC 1F
	tya		; 98
	cmp [$38.b]		; C7 38
	jmp $CFD5DA.l		; 5C DA D5 CF
	inc $3610.w,X		; FE 10 36
	sbc ($E9.b,X)		; E1 E9
	cmp ($F8.b,X)		; C1 F8
	sec		; 38
	cld		; D8
	ora $0430E0.l,X		; 1F E0 30 04
	and #$95.b		; 29 95
	sbc $3FA13F.l,X		; FF 3F A1 3F
	lda [$51.b]		; A7 51
	cpx #$D6.b		; E0 D6
	bne   9.b		; D0 09
	sbc ($E8.b),Y		; F1 E8
	sbc $7E.b,S		; E3 7E
	php		; 08
	ora $69.b,S		; 03 69
	brk $1E.b		; 00 1E
	inc $F0FE.w		; EE FE F0
	xba		; EB
	cmp ($5A.b)		; D2 5A
	sbc ($FE.b)		; F2 FE
	trb $AF.b		; 14 AF
	inc $EC9C.w,X		; FE 9C EC
.ACCU 16
.INDEX 16
	rep #$FC		; C2 FC
	sbc $EAA003.l,X		; FF 03 A0 EA
	lda $E85E.w,X		; BD 5E E8
	cpy $2903.w		; CC 03 29
	stp		; DB
	trb $1F1C.w		; 1C 1C 1F
	dec A		; 3A
	cmp $4F.b,S		; C3 4F
	sbc $F0F0.w		; ED F0 F0
	bpl 126.b		; 10 7E
	bne   9.b		; D0 09
	adc ($DD.b,X)		; 61 DD
	rol $BA.b		; 26 BA
	sbc $E0E0.w,X		; FD E0 E0
	adc ($C2.b,S),Y		; 73 C2
	and ($EE.b),Y		; 31 EE
	sei		; 78
	ora ($40.b,X)		; 01 40
	cpx #$D70B.w		; E0 0B D7
	eor $7F.b,X		; 55 7F
	adc $7B0F8F.l,X		; 7F 8F 0F 7B
	cmp $D366.w,Y		; D9 66 D3
	cpy #$BC1E.w		; C0 1E BC
	wai		; CB
	ror $66D9.w		; 6E D9 66
	bne   9.b		; D0 09
	eor ($D5.b,X)		; 41 D5
	stx $E2.b,Y		; 96 E2
	cpy #$D48A.w		; C0 8A D4
	jmp $C123E6.l		; 5C E6 23 C1
	txa		; 8A
	cmp ($5A.b,S),Y		; D3 5A
	inx		; E8
	ora #$83AA.w		; 09 AA 83
	cmp [$CF.b]		; C7 CF
	cpx #$8F0A.w		; E0 0A 8F
	sbc #$D860.w		; E9 60 D8
	clc		; 18
	cpy $DA.b		; C4 DA
	and $42FE80.l,X		; 3F 80 FE 42
	sbc $C8E0.w		; ED E0 C8
	ora ($FF.b),Y		; 11 FF
	sed		; F8
	ora #$0394.w		; 09 94 03
	rti		; 40

	tay		; A8
	bpl  64.b		; 10 40
	iny		; C8
	ora $00D8.w		; 0D D8 00
	tay		; A8
	asl $0F20.w		; 0E 20 0F
	lsr $07E0.w,X		; 5E E0 07
	ora $04.b,S		; 03 04
	brk $FE.b		; 00 FE
	ldx #$13D2.w		; A2 D2 13
	brk $2F.b		; 00 2F
	ora [$F2.b]		; 07 F2
	and $11.b		; 25 11
	.db $42, $DB		; 42 DB
	ply		; 7A
	cpx $54.b		; E4 54
	php		; 08
	cpx #$210A.w		; E0 0A 21
	mvn $C1,$14		; 54 14 C1
	dey		; 88
	inc $DEEA.w,X		; FE EA DE
	lsr $D3.b,X		; 56 D3
	ldx $10.b		; A6 10
	cpy #$BC0B.w		; C0 0B BC
	plb		; AB
	asl A		; 0A
	stz $09F8.w,X		; 9E F8 09
	tda		; 7B
	bra -127.b		; 80 81
	jmp ($0CF8.w,X)		; 7C F8 0C
	sta $80.b,S		; 83 80
	ror $10E8.w		; 6E E8 10
	stz $56E7.w,X		; 9E E7 56
	lsr $60.b,X		; 56 60
	cpx #$E209.w		; E0 09 E2
	sed		; F8
	asl A		; 0A
	tsb $B874.w		; 0C 74 B8
	ora #$D3FA.w		; 09 FA D3
	sbc $0DE8BB.l,X		; FF BB E8 0D
	adc #$0BC8.w		; 69 C8 0B
	eor $05.b,X		; 55 05
	php		; 08
	pei ($A3.b)		; D4 A3
	sed		; F8
	phd		; 0B
	tad		; 5B
	sbc ($DC.b)		; F2 DC
	beq  11.b		; F0 0B
	cop $DA.b		; 02 DA
	beq  -8.b		; F0 F8
	ora #$50F5.w		; 09 F5 50
	cmp $E0.b		; C5 E0
	ora ($F1.b,S),Y		; 13 F1
	eor [$C2.b],Y		; 57 C2
	inc $09F8.w		; EE F8 09
	cmp #$0DF0.w		; C9 F0 0D
	jsl $DC65AF.l		; 22 AF 65 DC
	cpy #$00C3.w		; C0 C3 00
	and ($A0.b,S),Y		; 33 A0
	sbc ($3B.b)		; F2 3B
	dec $3A20.w,X		; DE 20 3A
	lda ($F1.b),Y		; B1 F1
	sta $55.b		; 85 55
	ldx $69BC.w		; AE BC 69
	lda ($6B.b)		; B2 6B
	sbc [$08.b],Y		; F7 08
	rti		; 40

	tsx		; BA
	asl $F2.b,X		; 16 F2
	sta $50059F.l		; 8F 9F 05 50
	cmp [$EC.b]		; C7 EC
	txa		; 8A
	sbc $EF.b,X		; F5 EF
	ldy $E2.b		; A4 E2
	nop		; EA
	.db $62, $98, $0C		; 62 98 0C
	bvc  85.b		; 50 55
	xba		; EB
	cmp $F800EA.l,X		; DF EA 00 F8
	asl A		; 0A
	asl A		; 0A
	phx		; DA
	and $7813F0.l,X		; 3F F0 13 78
	sbc ($44.b)		; F2 44
	tay		; A8
	ora $FE0B.w		; 0D 0B FE
	ldx $A2.b,Y		; B6 A2
	tsb $40.b		; 04 40
	sbc $FE.b		; E5 FE
	pla		; 68
	pei ($F8.b)		; D4 F8
	sed		; F8
	jmp ($7F7C.w,X)		; 7C 7C 7F
	asl A		; 0A
	sbc $BC1A7F.l,X		; FF 7F 1A BC
	lda $F4.b,X		; B5 F4
	sta ($F4.b,X)		; 81 F4
	php		; 08
	iny		; C8
	bmi  16.b		; 30 10
	cpx #$5D20.w		; E0 20 5D
	eor $C0.b,X		; 55 C0
	rti		; 40

	sbc #$7EB9.w		; E9 B9 7E
	ror $EE66.w,X		; 7E 66 EE
	phx		; DA
	clv		; B8
	ora $FE9C.w		; 0D 9C FE
	sbc $C71DF8.l,X		; FF F8 1D C7
	beq  10.b		; F0 0A
	cmp $87.b,X		; D5 87
	brk $B6.b		; 00 B6
	cpy $0EF8.w		; CC F8 0E
	ldx $E4.b		; A6 E4
	rti		; 40

	sed		; F8
	asl A		; 0A
	inc $FC02.w,X		; FE 02 FC
	stx $C36D.w		; 8E 6D C3
	phb		; 8B
	sec		; 38
	sei		; 78
	bmi  -2.b		; 30 FE
	beq  96.b		; F0 60
	bne  96.b		; D0 60
	inc $E2.b		; E6 E2
	sbc $47.b,S		; E3 47
	sbc ($38.b),Y		; F1 38
	bmi  -1.b		; 30 FF
	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	ldy #$75FE.w		; A0 FE 75
	eor $CEED.w,X		; 5D ED CE
	adc ($F8.b),Y		; 71 F8
	bpl 100.b		; 10 64
	sed		; F8
	asl $03FF.w		; 0E FF 03
	bcs -40.b		; B0 D8
	ora $E804.w		; 0D 04 E8
	ora $0CFC.w		; 0D FC 0C
	cpx #$1398.w		; E0 98 13
	eor ($52.b),Y		; 51 52
	lsr A		; 4A
	lda $F09E.w		; AD 9E F0
	sed		; F8
	phd		; 0B
	inc $F465.w		; EE 65 F4
	bit $D5FC.w,X		; 3C FC D5
	sta ($40.b)		; 92 40
	ldx $FEA1.w,Y		; BE A1 FE
	mvp $00,$BE		; 44 BE 00
	tax		; AA
	tsa		; 3B
	lda ($E8.b),Y		; B1 E8
	phd		; 0B
	cmp [$5A.b]		; C7 5A
	tyx		; BB
	sbc ($F8.b),Y		; F1 F8
	tsb $A148.w		; 0C 48 A1
	inc $E1.b,X		; F6 E1
	cpx #$91CD.w		; E0 CD 91
	ora [$FD.b]		; 07 FD
	beq  48.b		; F0 30
	tsx		; BA
	ora $DA001F.l,X		; 1F 1F 00 DA
	sed		; F8
	inc $E6.b,X		; F6 E6
	ldy $C8.b,X		; B4 C8
	dec $A9.b		; C6 A9
	pei ($80.b)		; D4 80
	bit $BAE5.w,X		; 3C E5 BA
	jsr $9A7F.w		; 20 7F 9A
	bne  10.b		; D0 0A
	cop $8C.b		; 02 8C
	sbc $F8201F.l		; EF 1F 20 F8
	ora $F6BA.w		; 0D BA F6
	inc $80.b		; E6 80
	eor $BE.b,X		; 55 BE
	plb		; AB
	cld		; D8
	sta ($CF.b)		; 92 CF
	adc $C9E6F7.l,X		; 7F F7 E6 C9
	ror $5BE5.w,X		; 7E E5 5B
	eor ($2E.b,X)		; 41 2E
	sbc #$C90F.w		; E9 0F C9
	lda ($0F.b)		; B2 0F
	and #$0AE8.w		; 29 E8 0A
	sed		; F8
	beq   9.b		; F0 09
	cpx $A0.b		; E4 A0
	lda ($55.b,S),Y		; B3 55
	pei ($0D.b)		; D4 0D
	inx		; E8
	phd		; 0B
	sta $E0.b,S		; 83 E0
	ora $E24F.w		; 0D 4F E2
	txa		; 8A
	beq  26.b		; F0 1A
	ldx #$E8FE.w		; A2 FE E8
	trb $A0FF.w		; 1C FF A0
	ora #$0BDF.w		; 09 DF 0B
	ora [$00.b]		; 07 00
	inc A		; 1A
	cop $74.b		; 02 74
	trb $E4.b		; 14 E4
	sed		; F8
	phd		; 0B
	ora $00.b		; 05 00
	phd		; 0B
	sbc ($F8.b)		; F2 F8
	asl A		; 0A
	ora [$B5.b],Y		; 17 B5
	txs		; 9A
	tad		; 5B
	tsb $B4.b		; 04 B4
	sbc $EE0BF8.l		; EF F8 0B EE
	ldy $F595.w		; AC 95 F5
	sbc [$E0.b]		; E7 E0
	ldy $AA.b		; A4 AA
	sbc $0EE8.w,X		; FD E8 0E
	sbc ($40.b),Y		; F1 40
	sta ($93.b)		; 92 93
	dex		; CA
	ror $86BD.w		; 6E BD 86
	sta ($F1.b)		; 92 F1
	jsr ($AFFE.w,X)		; FC FE AF
	ldy #$F4F5.w		; A0 F5 F4
	txs		; 9A
	cpy $38.b		; C4 38
	tsb $F8.b		; 04 F8
	cop $FC.b		; 02 FC
	asl $BEFC.w		; 0E FC BE
	jmp ($F117.w,X)		; 7C 17 F1
	asl $FB.b		; 06 FB
	sbc $7EFC.w		; ED FC 7E
	wai		; CB
	brk $F0.b		; 00 F0
	sbc $040CF8.l,X		; FF F8 0C 04
	jsr $10F8.w		; 20 F8 10
	rtl		; 6B

	plp		; 28
	eor ($FF.b,S),Y		; 53 FF
	sbc $206510.l,X		; FF 10 65 20
	pld		; 2B
	brk $36.b		; 00 36
	ora ($1D.b,X)		; 01 1D
	cop $0A.b		; 02 0A
	ora $04.b		; 05 04
	ora $28.b,S		; 03 28
	trb $10.b		; 14 10
	wai		; CB
	tsb $202C.w		; 0C 2C 20
	asl $A4D5.w,X		; 1E D5 A4
	tya		; 98
	ply		; 7A
	adc $BFABD5.l,X		; 7F D5 AB BF
	rti		; 40

	phd		; 0B
	sbc $2FFF17.l,X		; FF 17 FF 2F
	ora ($F8.b),Y		; 11 F8
	ora #$D1F5.w		; 09 F5 D1
	lda $A1ECEA.l,X		; BF EA EC A1
	plb		; AB
	plx		; FA
	ora ($1F.b,X)		; 01 1F
	ora [$3C.b]		; 07 3C
	sta ($21.b),Y		; 91 21
	stx $A4D9.w		; 8E D9 A4
	and ($C9.b),Y		; 31 C9
	cmp ($D3.b),Y		; D1 D3
	brk $F4.b		; 00 F4
	eor $E81E1F.l,X		; 5F 1F 1E E8
	cmp $F3DCF3.l,X		; DF F3 DC F3
	tsb $F7FE.w		; 0C FE F7
	php		; 08
	stp		; DB
	tsb $5B.b		; 04 5B
	plb		; AB
	ora ($5F.b)		; 12 5F
	ror $B9.b,X		; 76 B9
	jmp.w [$D92A]		; DC 2A D9
	inc $04FC.w,X		; FE FC 04
	and $0ED0.w,X		; 3D D0 0E
	pha		; 48
	wai		; CB
	phd		; 0B
	nop		; EA
	txa		; 8A
	cpx #$CF11.w		; E0 11 CF
	bmi -40.b		; 30 D8
	ldy $FD.b		; A4 FD
	inc $4AFE.w		; EE FE 4A
	ldx $F8DC.w		; AE DC F8
	ora #$B5FC.w		; 09 FC B5
	inc $F3F0.w,X		; FE F0 F3
	brk $E8.b		; 00 E8
	tsb $D909.w		; 0C 09 D9
	tsb $C2DF.w		; 0C DF C2
	pha		; 48
	lda $0701.w,Y		; B9 01 07
	ora $06.b,S		; 03 06
	cop $2F.b		; 02 2F
	pea $050D.w		; F4 0D 05
	asl A		; 0A
	cop $14.b		; 02 14
	sbc $02EAF7.l,X		; FF F7 EA 02
	rts		; 60

	sbc ($E9.b,S),Y		; F3 E9
	pla		; 68
	sbc $D0D2BF.l,X		; FF BF D2 D0
	lda $A0.b		; A5 A0
	phk		; 4B
	rti		; 40

	stx $81.b,Y		; 96 81
	and $5A02.w		; 2D 02 5A
	ora $B5.b		; 05 B5
	asl A		; 0A
	ora [$50.b],Y		; 17 50
	sed		; F8
	plx		; FA
	cmp #$BF5D.w		; C9 5D BF
	inc $11E5.w,X		; FE E5 11
	adc #$D217.w		; 69 17 D2
	and $A5ED7F.l		; 2F 7F ED A5
	eor $9FBF4B.l,X		; 5F 4B BF 9F
	rts		; 60

	adc $CA5E80.l,X		; 7F 80 5E CA
	adc ($CE.b)		; 72 CE
	cpx #$E552.w		; E0 52 E5
	sei		; 78
	sbc $E009.w,Y		; F9 09 E0
	dec $C0.b,X		; D6 C0
	dec $01.b,X		; D6 01
	sbc $7002.w,X		; FD 02 70
	rol $E808.w,X		; 3E 08 E8
	bne  40.b		; D0 28
	ldy #$405E.w		; A0 5E 40
	lda $0AE0D8.l,X		; BF D8 E0 0A
	sbc $61D63B.l,X		; FF 3B D6 61
	bra -97.b		; 80 9F
	adc ($0B.b,X)		; 61 0B
	pea $E817.w		; F4 17 E8
	sbc $FFED10.l		; EF 10 ED FF
	sbc ($08.b,X)		; E1 08
	rol $F05C.w,X		; 3E 5C F0
	and $7CFE10.l		; 2F 10 FE 7C
	inc $70F4.w,X		; FE F4 70
	cmp [$86.b]		; C7 86
	ldx #$E10C.w		; A2 0C E1
	inc $60FB.w,X		; FE FB 60
	jmp ($08FE.w,X)		; 7C FE 08
	sei		; 78
	sbc $F838FF.l		; EF FF 38 F8
	sbc $E0.b,S		; E3 E0
	asl $AAC1.w,X		; 1E C1 AA
	tsb $18.b		; 04 18
	brk $71.b		; 00 71
	brk $E6.b		; 00 E6
	rti		; 40

	jmp.w [$5A80]		; DC 80 5A
	lda [$B8.b]		; A7 B8
	ora ($A3.b),Y		; 11 A3
	and ($FD.b,X)		; 21 FD
	rti		; 40

	cpy #$0BA8.w		; C0 A8 0B
	asl $1DB8.w,X		; 1E B8 1D
	eor $6AA8F0.l,X		; 5F F0 A8 6A
	dec $3C.b		; C6 3C
	and $D818E8.l,X		; 3F E8 18 D8
	jmp ($E800.w,X)		; 7C 00 E8
	tas		; 1B
	phd		; 0B
	jsr ($55FA.w,X)		; FC FA 55
	eor $04.b,X		; 55 04
	ora $BD.b		; 05 BD
	cpx $FDFE.w		; EC FE FD
	lda $F6.b,X		; B5 F6
	ldx $96.b		; A6 96
	ora $A684.w		; 0D 84 A6
	bcc   9.b		; 90 09
	inc A		; 1A
	cpy $AD.b		; C4 AD
	tax		; AA
	pha		; 48
	ldy $40.b		; A4 40
	ldx $00.b,Y		; B6 00
	tsx		; BA
	adc #$9640.w		; 69 40 96
	dec $BC.b,X		; D6 BC
	tsa		; 3B
	sbc $FF7D.w		; ED 7D FF
	xce		; FB
	adc $E0D26C.l,X		; 7F 6C D2 E0
	cpx #$D066.w		; E0 66 D0
	ora #$0819.w		; 09 19 08
	ora ($00.b)		; 12 00
	ora $00.b,X		; 15 00
	tas		; 1B
	brk $16.b		; 00 16
	ora ($0D.b,X)		; 01 0D
	eor [$F8.b],Y		; 57 F8
	rts		; 60

	sbc #$030C.w		; E9 0C 03
	bit $96.b,X		; 34 96
	adc $FEB4.w,X		; 7D B4 FE
	rtl		; 6B

	trb $D3.b		; 14 D3
	bit $D7FF.w		; 2C FF D7
	lda [$58.b]		; A7 58
	eor $7897B8.l		; 4F B8 97 78
	and $F85BF8.l		; 2F F8 5B F8
	lda [$F4.b],Y		; B7 F4
	phd		; 0B
	nop		; EA
	adc $57B6.w,X		; 7D B6 57
	lda $F404F8.l		; AF F8 04 F4
	php		; 08
	cpy $A6F2.w		; CC F2 A6
	bne  27.b		; D0 1B
	stz $71.b		; 64 71
	ora [$0F.b]		; 07 0F
	ora $04.b,S		; 03 04
	ldx #$FFC2.w		; A2 C2 FF
	and ($FF.b),Y		; 31 FF
	ldx #$0AE0.w		; A2 E0 0A
	sbc $EFF8F7.l,X		; FF F7 F8 EF
	sed		; F8
	cmp $F0AFF0.l,X		; DF F0 AF F0
	lsr $72C3.w		; 4E C3 72
	beq -98.b		; F0 9E
	rts		; 60

	inc $205C.w,X		; FE 5C 20
	adc $60FE94.l,X		; 7F 94 FE 60
	bit $FEFC.w		; 2C FC FE
	jsr $D04A.w		; 20 4A D0
	ora $A05ED3.l,X		; 1F D3 5E A0
	lda $40.b,X		; B5 40
	sbc #$BF5F.w		; E9 5F BF
	ora ($F2.b,X)		; 01 F2
	cop $BF.b		; 02 BF
	ora ($8F.b,X)		; 01 8F
	mvn $7E,$C9		; 54 C9 7E
	sbc ($FE.b,S),Y		; F3 FE
	ora ($3E.b,X)		; 01 3E
	cop $0D.b		; 02 0D
	sbc $F048AB.l,X		; FF AB 48 F0
	ora #$00FF.w		; 09 FF 00
	adc #$D27E.w		; 69 7E D2
	sbc $FAA5.w,X		; FD A5 FA
	xce		; FB
	tsb $80.b		; 04 80
	cmp [$94.b],Y		; D7 94
	sbc #$3FFF.w		; E9 FF 3F
	jsl $001DEC.l		; 22 EC 1D 00
	plx		; FA
	brk $B4.b		; 00 B4
	rti		; 40

	adc #$D281.w		; 69 81 D2
	cop $A5.b		; 02 A5
	ora $4B.b		; 05 4B
	asl A		; 0A
	pla		; 68
	sty $A5EC.w		; 8C EC A5
.ACCU 8
	sep #$68		; E2 68
	nop		; EA
	sbc $F4E8.w,X		; FD E8 F4
	sbc $2DE050.l,X		; FF 50 E0 2D
	and $B45F5A.l		; 2F 5A 5F B4
	lda $5C7C6B.l,X		; BF 6B 7C 5C
	lda $B8E182.l,X		; BF 82 E1 B8
	tax		; AA
	tsb $D0.b		; 04 D0
	brk $A0.b		; 00 A0
	sbc ($E8.b,X)		; E1 E8
	phd		; 0B
	rol $F0.b,X		; 36 F0
	tsb $C0C0.w		; 0C C0 C0
	phd		; 0B
	cli		; 58
	inc $AA.b,X		; F6 AA
	ldx #$F856.w		; A2 56 F8
	phd		; 0B
	rol $B1.b,X		; 36 B1
	lda $CA58E7.l		; AF E7 58 CA
	cmp ($C3.b,X)		; C1 C3
	.db $62, $C0, $0B		; 62 C0 0B
	lda #$2A.b		; A9 2A
	tay		; A8
	.db $62, $C0, $0B		; 62 C0 0B
	phy		; 5A
	sbc ($1A.b,S),Y		; F3 1A
	sta $90C8.w,Y		; 99 C8 90
	ora #$62.b		; 09 62
	jsl $B6BEF2.l		; 22 F2 BE B6
	tax		; AA
	dec $B2BC.w,X		; DE BC B2
	lsr $97.b		; 46 97
	cop $F1.b		; 02 F1
	trb $A2.b		; 14 A2
	lsr $90.b		; 46 90
	ora #$D8.b		; 09 D8
	ldy $0305.w		; AC 05 03
	asl $82.b		; 06 82
	sbc ($6B.b),Y		; F1 6B
	sbc $01C103.l		; EF 03 C1 01
	inx		; E8
	lda $82.b,X		; B5 82
	sty $C1.b,X		; 94 C1
	stz $C7.b		; 64 C7
	rtl		; 6B

	inx		; E8
	cmp ($60.b,S),Y		; D3 60
	sbc [$DA.b]		; E7 DA
	lda $740505.l,X		; BF 05 05 74
	phd		; 0B
	inx		; E8
	trb $D0.b		; 14 D0
	rol $E2A0.w		; 2E A0 E2
	bra  95.b		; 80 5F
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	sta $2F.b		; 85 2F
	and $9B.b		; 25 9B
	rts		; 60

	phx		; DA
	inc $C020.w,X		; FE 20 C0
	bpl -32.b		; 10 E0
	bit $E822.w		; 2C 22 E8
	ora #$A9.b		; 09 A9
	phy		; 5A
	xba		; EB
	inc $D2.b,X		; F6 D2
	cop $FF.b		; 02 FF
	rts		; 60

	nop		; EA
	sta $0BC8.w		; 8D C8 0B
	jsr $7CB4.w		; 20 B4 7C
	cpx $E1.b		; E4 E1
	dey		; 88
	eor $FE.b,X		; 55 FE
	php		; 08
	cpx #$8F.b		; E0 8F
	adc [$D9.b]		; 67 D9
	bra -15.b		; 80 F1
	lda $0F62.w,X		; BD 62 0F
	sbc ($64.b)		; F2 64
	lda $8F.b		; A5 8F
	sta $B1EDDF.l		; 8F DF ED B1
	sed		; F8
	ora $02.b,X		; 15 02
	cpy #$AA.b		; C0 AA
	nop		; EA
	cpy #$56.b		; C0 56
	sbc #$46.b		; E9 46
	cmp $FE.b		; C5 FE
	inc $B8E0.w,X		; FE E0 B8
	ora $1CB003.l,X		; 1F 03 B0 1C
	stx $14B8.w		; 8E B8 14
	ldy #$E8.b		; A0 E8
	ora $201F.w,X		; 1D 1F 20
	sty $80.b		; 84 80
	inc $9520.w,X		; FE 20 95
	inc $FE40.w,X		; FE 40 FE
	plp		; 28
	brk $BF.b		; 00 BF
	sbc $FF9420.l,X		; FF 20 94 FF
	rts		; 60

	tax		; AA
	tax		; AA
	lsr $7B26.w,X		; 5E 26 7B
	jsr $0990.w		; 20 90 09
	rol $78.b		; 26 78
	ora #$20.b		; 09 20
	sta $8C.b,X		; 95 8C
	clv		; B8
	ora $E190.w,X		; 1D 90 E1
	tax		; AA
	ldy $8E.b		; A4 8E
	cpx $C2.b		; E4 C2
	pea $E96C.w		; F4 6C E9
	pla		; 68
	sta $E222.w		; 8D 22 E2
	tya		; 98
	ror $88.b		; 66 88
	ora #$EB.b		; 09 EB
	sbc $007ADA.l,X		; FF DA 7A 00
	bvs -96.b		; 70 A0
	jsr ($FE9E.w,X)		; FC 9E FE
	beq -16.b		; F0 F0
	plp		; 28
	ora [$10.b],Y		; 17 10
	ora $060709.l		; 0F 09 07 06
	nop		; EA
	phd		; 0B
	ora ($AD.b,X)		; 01 AD
	sbc [$A8.b]		; E7 A8
	cpy $EF03.w		; CC 03 EF
	lsr $BFFC.w,X		; 5E FC BF
	inc $8C51.w,X		; FE 51 8C
	eor [$F5.b],Y		; 57 F5
	sbc $1F7D.w,Y		; F9 7D 1F
	dec A		; 3A
	and $AEB9.w,Y		; 39 B9 AE
	sbc #$9D.b		; E9 9D
	pei ($F6.b)		; D4 F6
	phy		; 5A
	cpy #$EB.b		; C0 EB
	cpy #$00.b		; C0 00
	sbc $C0A015.l,X		; FF 15 A0 C0
	bvc -32.b		; 50 E0
	dey		; 88
	beq  14.b		; F0 0E
	beq  23.b		; F0 17
	inx		; E8
	.db $82, $CF, $1A		; 82 CF 1A
	cpy $0954.w		; CC 54 09
	wai		; CB
	tsb $B3.b		; 04 B3
	sty $A7AA.w		; 8C AA A7
	jsr ($DC86.w,X)		; FC 86 DC
	lsr $5054.w,X		; 5E 54 50
	cli		; 58
	clc		; 18
	txs		; 9A
	bcc 112.b		; 90 70
	ora $0D98C2.l		; 0F C2 98 0D
	eor ($D9.b)		; 52 D9
	cpy $CA.b		; C4 CA
	dec $9F59.w,X		; DE 59 9F
	stz $FFD1.w		; 9C D1 FF
	dec $F2.b		; C6 F2
	ror $3CEC.w,X		; 7E EC 3C
	cpy #$7C.b		; C0 7C
	bra  85.b		; 80 55
	ora [$E8.b],Y		; 17 E8
	sty $D6.b		; 84 D6
	sbc $FA0FF8.l,X		; FF F8 0F FA
	phx		; DA
	inc $01FF.w,X		; FE FF 01
	rts		; 60

	cpy #$FC.b		; C0 FC
	adc ($B5.b)		; 72 B5
	sbc $E3FFE1.l,X		; FF E1 FF E3
	ora $F45B.w		; 0D 5B F4
	pla		; 68
	ora #$1E.b		; 09 1E
	pla		; 68
	ora ($03.b),Y		; 11 03
	tax		; AA
	lsr $30.b,X		; 56 30
	sbc $FE.b,S		; E3 FE
	bcc   9.b		; 90 09
	tsb $1FBA.w		; 0C BA 1F
	tya		; 98
	ora $E29F.w		; 0D 9F E2
	cpy #$E2.b		; C0 E2
	cpy #$29.b		; C0 29
	eor ($42.b,S),Y		; 53 42
	sed		; F8
	ora $F555.w		; 0D 55 F5
	eor $B9.b		; 45 B9
	bvc  90.b		; 50 5A
	tas		; 1B
	jmp.w [$ECD0]		; DC D0 EC
	rol $A9.b		; 26 A9
	bit $A8.b		; 24 A8
	ora ($6D.b),Y		; 11 6D
	rep #$0A		; C2 0A
	tsb $2B.b		; 04 2B
	tas		; 1B
	and $08.b,X		; 35 08
	xba		; EB
	ror $58.b		; 66 58
	asl A		; 0A
	ora #$9B.b		; 09 9B
	beq -48.b		; F0 D0
	phx		; DA
	bpl -27.b		; 10 E5
	plb		; AB
	eor ($B9.b,X)		; 41 B9
	rts		; 60

	asl $1CFF.w		; 0E FF 1C
	ora [$04.b]		; 07 04
	and $B1.b,X		; 35 B1
	stz $0AC8.w		; 9C C8 0A
	ror $ECFF.w,X		; 7E FF EC
	lda $FEFF.w,X		; BD FF FE
	and $5AD0.w		; 2D D0 5A
	ldy #$B4.b		; A0 B4
	jsr $D3D9.w		; 20 D9 D3
	cop $27.b		; 02 27
	ora ($1B.b,X)		; 01 1B
	ora $FD.b,S		; 03 FD
	sbc $371677.l,X		; FF 77 16 37
	jsr ($7E01.w,X)		; FC 01 7E
	cop $3C.b		; 02 3C
	ora ($18.b,X)		; 01 18
	ora $04.b,S		; 03 04
	asl $08.b,X		; 16 08
	sta $00.b,S		; 83 00
	sbc $0047DF.l,X		; FF DF 47 00
	ldy $6987.w,X		; BC 87 69
	asl $78D7.w,X		; 1E D7 78
	lda $906FE0.l,X		; BF E0 6F 90
	stx $68.b,Y		; 96 68
	sta [$D1.b],Y		; 97 D1
	ora $87806B.l,X		; 1F 6B 80 87
	rti		; 40

	asl $7880.w,X		; 1E 80 78
	phk		; 4B
	bcc -51.b		; 90 CD
	bit #$A2.b		; 89 A2
	dey		; 88
	ora #$DC.b		; 09 DC
	lda $4DAA.w,X		; BD AA 4D
	eor ($C6.b,S),Y		; 53 C6
	nop		; EA
	bvs 112.b		; 70 70
	jsr $E77A.w		; 20 7A E7
	and $F8.b		; 25 F8
	asl A		; 0A
	bra -16.b		; 80 F0
	ora [$00.b],Y		; 17 00
	plx		; FA
	plb		; AB
	tax		; AA
	sbc $E3E3FF.l,X		; FF FF E3 E3
	brk $FA.b		; 00 FA
	sta $13E0.w,X		; 9D E0 13
	asl $DFC1.w		; 0E C1 DF
	adc ($A0.b,X)		; 61 A0
	bcc  11.b		; 90 0B
	lsr A		; 4A
	phx		; DA
	adc $836BBD.l,X		; 7F BD 6B 83
	inc $000F.w,X		; FE 0F 00
	ror $0E.b,X		; 76 0E
	lda $D38A70.l		; AF 70 8A D3
	ror A		; 6A
	cmp $010E.w		; CD 0E 01
	bvs -62.b		; 70 C2
	lda $3AFC88.l		; AF 88 FC 3A
	tyx		; BB
	inx		; E8
	stx $81.b,Y		; 96 81
	sbc $FA02.w		; ED 02 FA
	ora $DC.b		; 05 DC
	lda ($EA.b,X)		; A1 EA
	adc $80BD9C.l		; 6F 9C BD 80
	cmp $B378.w,Y		; D9 78 B3
	tsb $42.b		; 04 42
	adc ($0F.b),Y		; 71 0F
.ACCU 16
.INDEX 16
	rep #$3F		; C2 3F
	sta $7F.b		; 85 7F
	cpx #$FEB1.w		; E0 B1 FE
	sbc $AD.b,X		; F5 AD
	cpx #$97B3.w		; E0 B3 97
	ldx #$BEC1.w		; A2 C1 BE
	inc $E05F.w,X		; FE 5F E0
	ldx $EABE.w,Y		; BE BE EA
	bra  81.b		; 80 51
	adc $FA.b		; 65 FA
	stx $2F.b		; 86 2F
	inc $F82D.w,X		; FE 2D F8
	bpl  94.b		; 10 5E
	sbc ($1B.b)		; F2 1B
	tsb $77.b		; 04 77
	php		; 08
	sbc $0EF8.w		; ED F8 0E
	asl $5EFB.w,X		; 1E FB 5E
	eor $A406.w,Y		; 59 06 A4
	lda ($69.b,X)		; A1 69
	brk $D7.b		; 00 D7
	jmp ($D1BB.w)		; 6C BB D1
	cmp $E8.b,S		; C3 E8
	cmp $F1.b		; C5 F1
	sbc $C3CAFF.l,X		; FF FF CA C3
	lda $435E29.l		; AF 29 5E 43
	jsr ($FD83.w,X)		; FC 83 FD
	cop $FE.b		; 02 FE
	ora ($E5.b,X)		; 01 E5
	cop $8B.b		; 02 8B
	tsb $BF.b		; 04 BF
	beq  14.b		; F0 0E
	brk $29.b		; 00 29
	bvc  67.b		; 50 43
	ldy #$7283.w		; A0 83 72
	cmp [$FE.b],Y		; D7 FE
	rol $5FD0.w		; 2E D0 5F
	sbc $B7A0AF.l,X		; FF AF A0 B7
	rti		; 40

	rtl		; 6B

	bra -45.b		; 80 D3
	brk $A7.b		; 00 A7
	tsb $4B.b		; 04 4B
	php		; 08
	sta [$14.b],Y		; 97 14
	sbc [$AE.b]		; E7 AE
	plb		; AB
	phy		; 5A
	bpl -22.b		; 10 EA
	pea $B100.w		; F4 00 B1
	inc $20.b		; E6 20
	phx		; DA
	ror $1798.w,X		; 7E 98 17
	cpx $1049.w		; EC 49 10
	rtl		; 6B

	ora $FDF7A9.l,X		; 1F A9 F7 FD
	sbc $F1F4BC.l,X		; FF BC F4 F1
	jsr ($06F9.w,X)		; FC F9 06
	ora ($EC.b,S),Y		; 13 EC
	ora [$EC.b],Y		; 17 EC
	and $18F7D8.l		; 2F D8 F7 18
	adc $E18738.l		; 6F 38 87 E1
	eor $307738.l,X		; 5F 38 77 30
	eor ($EC.b)		; 52 EC
	cpx #$D8FE.w		; E0 FE D8
	cpy #$D5AE.w		; C0 AE D5
	clc		; 18
	cmp $302B.w,Y		; D9 2B 30
	php		; 08
	cpx $82.b		; E4 82
	ror $1BC0.w,X		; 7E C0 1B
	asl $86.b		; 06 86
	dey		; 88
	asl A		; 0A
	lsr $1180.w		; 4E 80 11
	rti		; 40

	lda $7F0F.w,Y		; B9 0F 7F
	inc $FCBF.w,X		; FE BF FC
	sbc $7FFE7C.l,X		; FF 7C FE 7F
	bit $3D7E.w,X		; 3C 7E 3D
	adc $507B3D.l,X		; 7F 3D 7B 50
	sbc $08.b,S		; E3 08
	tax		; AA
	.db $62, $DC, $B1		; 62 DC B1
	phk		; 4B
	cmp ($3D.b),Y		; D1 3D
	inc $FF1E.w,X		; FE 1E FF
	cmp $C600C1.l,X		; DF C1 00 C6
	ora ($D8.b,X)		; 01 D8
	ora [$E1.b]		; 07 E1
	asl $78C7.w,X		; 1E C7 78
	sta $807FE0.l,X		; 9F E0 7F 80
	cpx #$12F0.w		; E0 F0 12
	phd		; 0B
	tax		; AA
	bvc  95.b		; 50 5F
	ldy #$F277.w		; A0 77 F2
	ora ($9B.b)		; 12 9B
	lda $FDE8.w,X		; BD E8 FD
	asl A		; 0A
	iny		; C8
	ora #$DFFA.w		; 09 FA DF
	sbc ($F8.b),Y		; F1 F8
	ora #$F294.w		; 09 94 F2
	adc ($F8.b,S),Y		; 73 F8
	ora $1A000D.l		; 0F 0D 00 1A
	brk $14.b		; 00 14
	brk $29.b		; 00 29
	ora ($52.b,X)		; 01 52
	bra -62.b		; 80 C2
	phd		; 0B
	bne  11.b		; D0 0B
	stx $17.b,Y		; 96 17
	sbc ($D4.b)		; F2 D4
	lda ($85.b,X)		; A1 85
	ply		; 7A
	cpy #$7FF3.w		; C0 F3 7F
	eor $5F2C2F.l,X		; 5F 2F 2C 5F
	cli		; 58
	lda [$B8.b],Y		; B7 B8
	adc $BADC78.l		; 6F 78 DC BA
	lsr $9EE0.w,X		; 5E E0 9E
	cpx #$C080.w		; E0 80 C0
	ora $28F555.l		; 0F 55 F5 28
	bcc  32.b		; 90 20
	asl $0FA0.w		; 0E A0 0F
	cmp ($F8.b,S),Y		; D3 F8
	inc A		; 1A
	sty $EA.b,X		; 94 EA
	rts		; 60

	bne  15.b		; D0 0F
	eor $E2FDCA.l		; 4F CA FD E2
	ldy #$3740.w		; A0 40 37
	ldx $6090.w,Y		; BE 90 60
	cmp $96C030.l		; CF 30 C0 96
	rti		; 40

	sbc $306060.l,X		; FF 60 60 30
	bmi -65.b		; 30 BF
	asl $E816.w		; 0E 16 E8
	ora #$010F.w		; 09 0F 01
	bit $F00F.w,X		; 3C 0F F0
	and $40A45F.l,X		; 3F 5F A4 40
	stz $0C.b		; 64 0C
	tsb $5C2A.w		; 0C 2A 5C
	cpx #$A6D0.w		; E0 D0 A6
	sei		; 78
	eor $184030.l		; 4F 30 40 18
	stz $E0F8.w,X		; 9E F8 E0
	jsr ($F863.w,X)		; FC 63 F8
	tas		; 1B
	and $AA.b,X		; 35 AA
	rts		; 60

	txy		; 9B
	bra 112.b		; 80 70
	ora [$53.b],Y		; 17 53
	cmp ($C0.b),Y		; D1 C0
	inc $E1FA.w,X		; FE FA E1
	cpy #$0A98.w		; C0 98 0A
	inc $270B.w		; EE 0B 27
	sbc $8A.b		; E5 8A
	sbc ($01.b),Y		; F1 01
	php		; 08
	sed		; F8
	adc ($23.b,X)		; 61 23
	ora $C03F4F.l,X		; 1F 4F 3F C0
	bit $02.b		; 24 02
	ldy $8264.w		; AC 64 82
	ror $FF.b,X		; 76 FF
	inx		; E8
	sbc $1F.b,S		; E3 1F
	cpx #$6445.w		; E0 45 64
	eor $9F.b,X		; 55 9F
	txy		; 9B
	inx		; E8
	ror $0B70.w,X		; 7E 70 0B
	bvs -81.b		; 70 AF
	and #$5068.w		; 29 68 50
	phd		; 0B
	stz $BF7A.w		; 9C 7A BF
	dec $2772.w		; CE 72 27
	inc $F150.w,X		; FE 50 F1
	ora [$9F.b]		; 07 9F
	jsr $802E.w		; 20 2E 80
	sec		; 38
	adc $68FD25.l,X		; 7F 25 FD 68
	ldx #$2B20.w		; A2 20 2B
	pei ($FF.b)		; D4 FF
	sbc ($9E.b)		; F2 9E
	cld		; D8
	tas		; 1B
	sbc $7FFC7F.l,X		; FF 7F FC 7F
	sbc $7FF0E1.l,X		; FF E1 F0 7F
	cpy #$507F.w		; C0 7F 50
	and $0F0E33.l		; 2F 33 0E 0F
	tsb $FE.b		; 04 FE
	adc $F7DF7F.l,X		; 7F 7F DF F7
	jmp ($707C.w,X)		; 7C 7C 70
	bvs  64.b		; 70 40
	rti		; 40

	rts		; 60

	jsr $FD0A.w		; 20 0A FD
	ora $363FFE.l		; 0F FE 3F 36
	lda $E0E0.w,Y		; B9 E0 E0
	stp		; DB
	adc ($EF.b),Y		; 71 EF
	cpx #$9FCF.w		; E0 CF 9F
	sbc ($FD.b),Y		; F1 FD
	dey		; 88
	adc $FF.b,S		; 63 FF
	ora ($8C.b,X)		; 01 8C
	ora $507CDF.l,X		; 1F DF 7C 50
	bmi 124.b		; 30 7C
	brk $78.b		; 00 78
	ora $FE.b,S		; 03 FE
	cop $B9.b		; 02 B9
	bra -51.b		; 80 CD
	eor $55.b,X		; 55 55
	brk $A8.b		; 00 A8
	phd		; 0B
	rts		; 60

	sbc $7F.b,X		; F5 7F
	sbc $3A76.w,X		; FD 76 3A
	rti		; 40

	sec		; 38
	ora #$3C76.w		; 09 76 3C
	inc $DCB4.w		; EE B4 DC
	lsr $AAD5.w		; 4E D5 AA
	rol A		; 2A
	rol $DC.b,X		; 36 DC
	pha		; 48
	ora #$346A.w		; 09 6A 34
	bra -57.b		; 80 C7
	bmi 106.b		; 30 6A
	bit $80.b,X		; 34 80
	cpy #$E109.w		; C0 09 E1
	jmp ($AAAA.w)		; 6C AA AA
	dex		; CA
	ldx $0A.b		; A6 0A
	tsx		; BA
	inc $0B30.w,X		; FE 30 0B
	bit $B2.b,X		; 34 B2
	sep #$C0		; E2 C0
	phd		; 0B
	bra  80.b		; 80 50
	ora $FC60.w		; 0D 60 FC
	lsr A		; 4A
	cmp $82AA.w,Y		; D9 AA 82
	trb $0AC0.w		; 1C C0 0A
	ldy #$1CFE.w		; A0 FE 1C
	dec $00.b		; C6 00
	rti		; 40

	ora #$641C.w		; 09 1C 64
	cop $44.b		; 02 44
	sbc $1E92AA.l,X		; FF AA 92 1E
	stz $00.b		; 64 00
	ldx #$FD60.w		; A2 60 FD
	sbc ($D4.b),Y		; F1 D4
	dex		; CA
	and $ACA4.w		; 2D A4 AC
	sbc $AC3D3E.l,X		; FF 3E 3D AC
	txy		; 9B
	ldy #$1A30.w		; A0 30 1A
	bpl  15.b		; 10 0F
	jsr $FE1F.w		; 20 1F FE
	jsr ($FC03.w,X)		; FC 03 FC
	phd		; 0B
	jsr ($FE0E.w,X)		; FC 0E FE
	cpy $1F33.w		; CC 33 1F
	cpx #$C03F.w		; E0 3F C0
	inc $0FFC.w,X		; FE FC 0F
	beq -91.b		; F0 A5
	bcc  -2.b		; 90 FE
	ora [$22.b]		; 07 22
	txy		; 9B
	inc $FEC3.w,X		; FE C3 FE
	clc		; 18
	stz $56.b,X		; 74 56
	inc $F840.w,X		; FE 40 F8
	ora $203726.l		; 0F 26 37 20
	sta $BE00FE.l		; 8F FE 00 BE
	jsr $09F8.w		; 20 F8 09
	eor $A9.b,X		; 55 A9
	cpx $2E.b		; E4 2E
	cmp $697342.l,X		; DF 42 73 69
	sbc $3840FD.l,X		; FF FD 40 38
	ora ($42.b),Y		; 11 42
	asl $AAAA.w,X		; 1E AA AA
	cpx #$11F0.w		; E0 F0 11
	ldy $3A.b		; A4 3A
	tsb $C2.b		; 04 C2
	adc $A9.b,X		; 75 A9
	ply		; 7A
	lsr A		; 4A
	ldx #$7E62.w		; A2 62 7E
	dex		; CA
	cpx #$EFFF.w		; E0 FF EF
	ldy #$6062.w		; A0 62 60
	asl A		; 0A
	bit $3C80.w,X		; 3C 80 3C
	sta ($62.b,X)		; 81 62
	ror $C0.b		; 66 C0
	cpy #$F67A.w		; C0 7A F6
	nop		; EA
	cop $64.b		; 02 64
	sbc #$80A2.w		; E9 A2 80
	jsr ($FEA4.w,X)		; FC A4 FE
	rol $55A0.w,X		; 3E A0 55
	and $BE.b,X		; 35 BE
	bcc  11.b		; 90 0B
	rti		; 40

	sec		; 38
	ora #$FCA0.w		; 09 A0 FC
	rti		; 40

	rol $577A.w,X		; 3E 7A 57
	ldx #$DEBB.w		; A2 BB DE
	sbc #$2E38.w		; E9 38 2E
	jsr ($F0FE.w,X)		; FC FE F0
	ora $88.b,S		; 03 88
	sbc $BFBFFF.l,X		; FF FF BF BF
	sbc [$F7.b],Y		; F7 F7
	sbc [$06.b]		; E7 06
	sta $E7.b,S		; 83 E7
	cpy #$8044.w		; C0 44 80
	inc $52C3.w,X		; FE C3 52
	bmi  -2.b		; 30 FE
	phy		; 5A
	sbc $0BF844.l,X		; FF 44 F8 0B
	inc $5C.b,X		; F6 5C
	rti		; 40

	sec		; 38
	phd		; 0B
	cmp $40.b		; C5 40
	sec		; 38
	bpl -88.b		; 10 A8
.ACCU 8
.INDEX 8
	sep #$F4		; E2 F4
	phd		; 0B
	dex		; CA
	and ($8A.b),Y		; 31 8A
	adc ($5F.b),Y		; 71 5F
	txa		; 8A
	sta [$63.b],Y		; 97 63
	lda [$42.b]		; A7 42
	lsr $80.b		; 46 80
	ora $FE31.w,Y		; 19 31 FE
	adc ($FF.b),Y		; 71 FF
	sbc ($FE.b,X)		; E1 FE
	adc $00.b,S		; 63 00
	.db $42, $00		; 42 00
	bra   8.b		; 80 08
	sbc [$18.b],Y		; F7 18
	sbc [$FE.b]		; E7 FE
	plp		; 28
	cmp [$AB.b]		; C7 AB
	ldx $D0.b,Y		; B6 D0
	sta $4B3890.l		; 8F 90 38 4B
	ror A		; 6A
	sbc ($B1.b),Y		; F1 B1
	and ($AB.b,X)		; 21 AB
	and $EC80.w,Y		; 39 80 EC
	sty $B487.w		; 8C 87 B4
	ora [$28.b],Y		; 17 28
	and ($FE.b),Y		; 31 FE
	asl $E960.w		; 0E 60 E9
	cmp ($67.b),Y		; D1 67
	brk $6F.b		; 00 6F
	bra  -8.b		; 80 F8
	phd		; 0B
	stz $6230.w,X		; 9E 30 62
	sbc $401FEF.l		; EF EF 1F 40
	inc $EFE4.w,X		; FE E4 EF
	rol A		; 2A
	bra  -2.b		; 80 FE
	cpx $E4D9.w		; EC D9 E4
	inc $FFE6.w,X		; FE E6 FF
	ldy $7A55.w		; AC 55 7A
	lda ($21.b)		; B2 21
	ldy #$F2.b		; A0 F2
	cmp $C3.b,S		; C3 C3
	ora ($E0.b,X)		; 01 E0
	sbc ($9C.b,S),Y		; F3 9C
	ldx $7C.b,Y		; B6 7C
	dec A		; 3A
	eor $E9A555.l		; 4F 55 A5 E9
	cmp ($3C.b,X)		; C1 3C
	ora ($FE.b,X)		; 01 FE
	sei		; 78
	txs		; 9A
	phb		; 8B
	ldx $6C.b		; A6 6C
	jsr ($0930.w,X)		; FC 30 09
	ora ($A3.b,X)		; 01 A3
	tsb $FE32.w		; 0C 32 FE
	cmp [$BF.b]		; C7 BF
	inc $8082.w,X		; FE 82 80
	tax		; AA
	sbc ($E2.b,X)		; E1 E2
	beq   9.b		; F0 09
	sbc $C0E29A.l,X		; FF 9A E2 C0
	and ($69.b,X)		; 21 69
	inc $FE80.w,X		; FE 80 FE
	ora $6A98FE.l		; 0F FE 98 6A
	cpx $FD.b		; E4 FD
	sta $FFB074.l,X		; 9F 74 B0 FF
	sei		; 78
	sbc ($3C.b)		; F2 3C
	sta ($C2.b,X)		; 81 C2
	bra  56.b		; 80 38
	asl A		; 0A
	asl $D856.w		; 0E 56 D8
	cpy #$A8.b		; C0 A8
	ora $BEFFA0.l		; 0F A0 FF BE
	eor $F1.b,S		; 43 F1
	jsl $BE0AB0.l		; 22 B0 0A BE
	and $1A003F.l,X		; 3F 3F 00 1A
	tax		; AA
	ldx #$03.b		; A2 03
	pea $0C18.w		; F4 18 0C
	ldy #$E0.b		; A0 E0
	ora ($C8.b),Y		; 11 C8
	eor ($1E.b)		; 52 1E
	rol $313C.w,X		; 3E 3C 31
	rti		; 40

	lda $E0B0.w		; AD B0 E0
	cld		; D8
	ora $A005.w		; 0D 05 A0
	sec		; 38
	asl $A08C.w,X		; 1E 8C A0
	sec		; 38
	asl $E4C2.w,X		; 1E C2 E4
	inc $102F.w,X		; FE 2F 10
	.db $42, $3B		; 42 3B
	ldy #$3C.b		; A0 3C
	phy		; 5A
	cpx $FE.b		; E4 FE
	bmi -96.b		; 30 A0
	and $28E0.w,X		; 3D E0 28
	adc $FE01.w,Y		; 79 01 FE
	clv		; B8
	lsr $A0FE.w,X		; 5E FE A0
	bit $3DC3.w,X		; 3C C3 3D
	sta ($3B.b,S),Y		; 93 3B
	ldy #$38.b		; A0 38
	tsb $000F.w		; 0C 0F 00
	php		; 08
	tsx		; BA
	inc A		; 1A
	eor $E93595.l,X		; 5F 95 35 E9
	bne -49.b		; D0 CF
	bcc -113.b		; 90 8F
	bne -28.b		; D0 E4
	cli		; 58
	stz $CE.b,X		; 74 CE
	sep #$C2		; E2 C2
	nop		; EA
	bit $A9.b,X		; 34 A9
	bne -96.b		; D0 A0
	dec A		; 3A
	rti		; 40

	lda #$01.b		; A9 01
	tax		; AA
	inc $548A.w,X		; FE 8A 54
	jmp $D76E.w		; 4C 6E D7
	stz $46E9.w		; 9C E9 46
	ora $F0.b,X		; 15 F0
	tsb $3AA0.w		; 0C A0 3A
	ora $0C3FE0.l,X		; 1F E0 3F 0C
	tsb $3CA0.w		; 0C A0 3C
	sbc [$C0.b],Y		; F7 C0
	phd		; 0B
	tax		; AA
	tax		; AA
	bvs  96.b		; 70 60
	cli		; 58
	asl A		; 0A
	bne  78.b		; D0 4E
	clc		; 18
	stx $FE.b		; 86 FE
	inc $A228.w,X		; FE 28 A2
	sbc $6E0BF8.l,X		; FF F8 0B 6E
	ora #$EA.b		; 09 EA
	tay		; A8
	.db $42, $0C		; 42 0C
	ror $86A5.w,X		; 7E A5 86
	sec		; 38
	ora #$FF.b		; 09 FF
	jsr ($7007.w,X)		; FC 07 70
	inc $F8C0.w,X		; FE C0 F8
	asl A		; 0A
	txs		; 9A
	sta $E6.b,X		; 95 E6
	nop		; EA
	cpy #$F8.b		; C0 F8
	phd		; 0B
	ldy #$EC.b		; A0 EC
	ora [$FE.b]		; 07 FE
	asl $841A.w,X		; 1E 1A 84
	inc $15DC.w		; EE DC 15
	sbc $84EBB4.l,X		; FF B4 EB 84
	sta $8C.b,S		; 83 8C
	cpy #$0C.b		; C0 0C
	sta [$80.b]		; 87 80
	ora $400F50.l,X		; 1F 50 0F 40
	rti		; 40

	asl $47A2.w,X		; 1E A2 47
	tsa		; 3B
	sta [$FE.b]		; 87 FE
	sbc $9F9FFF.l,X		; FF FF 9F 9F
	sta [$FF.b]		; 87 FF
	eor $55.b,X		; 55 55
	phk		; 4B
	beq  14.b		; F0 0E
	txa		; 8A
	cpy #$0A.b		; C0 0A
	nop		; EA
	bvs  10.b		; 70 0A
	cmp $C6.b		; C5 C6
	adc $C8.b,S		; 63 C8
	tsb $70E4.w		; 0C E4 70
	phd		; 0B
	jsr $1A45.w		; 20 45 1A
	bra  14.b		; 80 0E
	eor $55.b,X		; 55 55
	cpy #$88.b		; C0 88
	ora $0D4020.l		; 0F 20 40 0D
	eor $4020E1.l,X		; 5F E1 20 40
	ora $E1A6.w		; 0D A6 E1
	jsr $0B40.w		; 20 40 0B
.ACCU 16
	rep #$A4		; C2 A4
	jsr $0940.w		; 20 40 09
	eor $55.b,X		; 55 55
	and $09F8.w,Y		; 39 F8 09
	jsr $2644.w		; 20 44 26
	sed		; F8
	tsb $62F1.w		; 0C F1 62
	eor $F050CC.l,X		; 5F CC 50 F0
	ora #$71B3.w		; 09 B3 71
	jsr ($0C40.w,X)		; FC 40 0C
	dey		; 88
	lsr $A0.b		; 46 A0
	sbc [$FE.b]		; E7 FE
	jsr $0AF8.w		; 20 F8 0A
	sbc [$FF.b]		; E7 FF
	sta $FE.b,X		; 95 FE
	stx $C0.b,Y		; 96 C0
	ora ($C0.b,S),Y		; 13 C0
	bvc  31.b		; 50 1F
	cpx #$50.b		; E0 50
	ora [$FA.b],Y		; 17 FA
	rts		; 60

	bra -100.b		; 80 9C
	rts		; 60

	phd		; 0B
	jsr ($EA8B.w,X)		; FC 8B EA
	ora [$FF.b],Y		; 17 FF
	sbc $D5FE60.l		; EF 60 FE D5
	lda ($53.b,X)		; A1 53
	beq  -3.b		; F0 FD
	txs		; 9A
	sta ($03.b),Y		; 91 03
	and $1EFFA8.l		; 2F A8 FF 1E
	sbc $15FBFC.l,X		; FF FC FB 15
	bvc   9.b		; 50 09
	sbc $629F.w		; ED 9F 62
	ora $50.b		; 05 50
	ora $07AA.w		; 0D AA 07
	eor $BEA2.w,X		; 5D A2 BE
	eor $BA1964.l		; 4F 64 19 BA
	sbc #$D9DE.w		; E9 DE D9
	brk $1C.b		; 00 1C
	ora ($FE.b,X)		; 01 FE
	eor #$A1DD.w		; 49 DD A1
	cmp ($FE.b)		; D2 FE
	pla		; 68
	pei ($3E.b)		; D4 3E
	rol $CA20.w		; 2E 20 CA
	ora $E92100.l		; 0F 00 21 E9
	and $AA.b,S		; 23 AA
	cpy #$1C.b		; C0 1C
	sta ($FE.b,X)		; 81 FE
	cld		; D8
	dex		; CA
	phx		; DA
	.db $82, $82, $AA		; 82 82 AA
	tax		; AA
	ldy $E6DA.w,X		; BC DA E6
	bit $A8.b,X		; 34 A8
	sbc $451B.w,X		; FD 1B 45
	tay		; A8
	inc $8C9E.w,X		; FE 9E 8C
	bit $F1.b,X		; 34 F1
	ora $47.b,S		; 03 47
	rol A		; 2A
	plx		; FA
	dec $E8D4.w		; CE D4 E8
	inc $F8C0.w,X		; FE C0 F8
	tsb $FEBB.w		; 0C BB FE
	sta [$F2.b],Y		; 97 F2
	inc $FDFD.w,X		; FE FD FD
	sbc $083A.w,Y		; F9 3A 08
	sbc $EAD4.w,Y		; F9 D4 EA
	and ($EA.b,X)		; 21 EA
	bvs   6.b		; 70 06
	inc $0CDC.w,X		; FE DC 0C
	asl A		; 0A
	ora ($FE.b)		; 12 FE
	ldy #$E6.b		; A0 E6
	jmp ($FF24.w,X)		; 7C 24 FF
	pha		; 48
	inc $A9DC.w,X		; FE DC A9
	lda ($FE.b)		; B2 FE
	pha		; 48
	inc $CF60.w,X		; FE 60 CF
	adc ($AF.b,X)		; 61 AF
	cli		; 58
	stz $6C.b		; 64 6C
	tax		; AA
	tay		; A8
	cli		; 58
	sbc ($78.b,S),Y		; F3 78
	jmp.w [$7560]		; DC 60 75
	cpy #$E9.b		; C0 E9
	cpy $56E9.w		; CC E9 56
	rts		; 60

	stz $A4.b,X		; 74 A4
	ora ($C0.b,X)		; 01 C0
	cpx $B456.w		; EC 56 B4
	phx		; DA
	lda ($C9.b,X)		; A1 C9
	stz $48FE.w		; 9C FE 48
	adc [$C5.b],Y		; 77 C5
	cpx $88.b		; E4 88
	trb $C2.b		; 14 C2
	cmp ($87.b)		; D2 87
	sta [$14.b]		; 87 14
	dex		; CA
	cmp ($1C.b,X)		; C1 1C
	pei ($29.b)		; D4 29
	inc $BB64.w,X		; FE 64 BB
	.db $82, $CA, $00		; 82 CA 00
	bvs -84.b		; 70 AC
	xce		; FB
	nop		; EA
	phd		; 0B
	sbc $62CE38.l,X		; FF 38 CE 62
	cpy $00.b		; C4 00
	clc		; 18
	ora ($F8.b,X)		; 01 F8
	and $040C.w,X		; 3D 0C 04
	cpx $28.b		; E4 28
	rol $FF.b		; 26 FF
	jmp.w [$BA1A]		; DC 1A BA
	sbc ($44.b,X)		; E1 44
	tax		; AA
	tsb $26FE.w		; 0C FE 26
	brk $0E.b		; 00 0E
	cop $B6.b		; 02 B6
	sec		; 38
	cpy $AA.b		; C4 AA
	txa		; 8A
	tay		; A8
	jmp ($A147.w)		; 6C 47 A1
	ora ($1D.b,S),Y		; 13 1D
	brk $F8.b		; 00 F8
	phd		; 0B
	sbc $26.b,S		; E3 26
	lsr $CEDC.w,X		; 5E DC CE
	eor $7086.w		; 4D 86 70
	sbc $0EC040.l,X		; FF 40 C0 0E
	rts		; 60

	and ($F1.b)		; 32 F1
	inc $E304.w,X		; FE 04 E3
	php		; 08
	.db $82, $49, $FE		; 82 49 FE
	ror $E3E3.w		; 6E E3 E3
	lsr $0F7C.w,X		; 5E 7C 0F
	lda $D6AC.w		; AD AC D6
	and $78.b,X		; 35 78
	sty $F0.b		; 84 F0
	brk $F1.b		; 00 F1
	rti		; 40

	bne  14.b		; D0 0E
	rol $5E.b		; 26 5E
	cmp $6A.b,S		; C3 6A
	eor ($78.b,X)		; 41 78
	sta $8A.b,S		; 83 8A
	ldy $FA.b,X		; B4 FA
	ldx $D150.w,Y		; BE 50 D1
	php		; 08
	sbc $80FEA9.l		; EF A9 FE 80
	dey		; 88
	asl A		; 0A
	sta ($AA.b)		; 92 AA
	asl $8880.w,X		; 1E 80 88
	asl A		; 0A
	adc $FC.b,S		; 63 FC
	bra -120.b		; 80 88
	ora $3A6F.w		; 0D 6F 3A
	tax		; AA
	dec $80.b,X		; D6 80
	sta $80F472.l		; 8F 72 F4 80
	sta $80E602.l		; 8F 02 E6 80
	stx $30BE.w		; 8E BE 30
	ora $DFFF.w		; 0D FF DF
	jsr $F40D.w		; 20 0D F4
	cld		; D8
	bpl -86.b		; 10 AA
	sed		; F8
	dec $783B.w		; CE 3B 78
	asl $78F1.w		; 0E F1 78
	ora #$A442.w		; 09 42 A4
	rti		; 40

	ldy #$10.b		; A0 10
	sei		; 78
	and ($0F.b,S),Y		; 33 0F
	eor $3F557B.l		; 4F 7B 55 3F
	lda $D2A97E.l,X		; BF 7E A9 D2
	pea $C8F0.w		; F4 F0 C8
	cpy #$F8.b		; C0 F8
	tsb $7AC1.w		; 0C C1 7A
	lda $E8BB.w,Y		; B9 BB E8
	tya		; 98
	inc A		; 1A
	cmp $6A.b,X		; D5 6A
	jsl $AD1D68.l		; 22 68 1D AD
	nop		; EA
	ora $84.b,X		; 15 84
	clv		; B8
	bit $067F.w,X		; 3C 7F 06
	jsr $140C.w		; 20 0C 14
	phy		; 5A
	eor $E4.b,X		; 55 E4
	and $634955.l,X		; 3F 55 49 63
	cmp #$3610.w		; C9 10 36
	inc $10FD.w		; EE FD 10
	lda $9C.b		; A5 9C
	jsr ($20E8.w,X)		; FC E8 20
	plp		; 28
	phd		; 0B
	eor $F5.b,X		; 55 F5
	bvc -118.b		; 50 8A
	and [$CF.b],Y		; 37 CF
	adc #$E0F1.w		; 69 F1 E0
	tya		; 98
	ora #$D7AA.w		; 09 AA D7
	cpx #$F8.b		; E0 F8
	asl A		; 0A
	txy		; 9B
	sbc ($78.b)		; F2 78
	bra -43.b		; 80 D5
	eor [$07.b],Y		; 57 07
	sed		; F8
	tya		; 98
	txs		; 9A
	jsl $410ED8.l		; 22 D8 0E 41
	sed		; F8
	asl A		; 0A
	inc $F100.w,X		; FE 00 F1
	inc $90C0.w,X		; FE C0 90
	ora #$7494.w		; 09 94 74
	lda ($D4.b),Y		; B1 D4
	rol $18.b,X		; 36 18
	tsb $38AB.w		; 0C AB 38
	stx $78.b		; 86 78
	ora $0156.w		; 0D 56 01
	ldy #$0C.b		; A0 0C
	ora $0010AA.l		; 0F AA 10 00
	and $00.b,S		; 23 00
	cmp $F1A078.l		; CF 78 A0 F1
	and ($A4.b)		; 32 A4
	ldy $FF8A.w,X		; BC 8A FF
	tad		; 5B
	and ($71.b),Y		; 31 71
	ora ($7C.b,X)		; 01 7C
	brk $7E.b		; 00 7E
	sec		; 38
	adc $7FFF38.l,X		; 7F 38 FF 7F
	sbc $FF41E6.l,X		; FF E6 41 FF
	.db $42, $E1		; 42 E1
	and $71F4.w		; 2D F4 71
	sbc ($38.b,X)		; E1 38
	ldx #$7F.b		; A2 7F
	rol $94E9.w		; 2E E9 94
	tsb $F1A1.w		; 0C A1 F1
	bvs  -1.b		; 70 FF
	and $7C.b,S		; 23 7C
	adc [$FF.b],Y		; 77 FF
	ora [$67.b]		; 07 67
	dec $FF8E.w,X		; DE 8E FF
	stz $B9FF.w		; 9C FF B9
	sbc $17.b,X		; F5 17
	sta [$E9.b],Y		; 97 E9
	and $73EA.w		; 2D EA 73
	.db $62, $8E, $00		; 62 8E 00
	stz $B900.w		; 9C 00 B9
	sta ($AC.b,X)		; 81 AC
	eor #$57E3.w		; 49 E3 57
	eor $FEFD.w,Y		; 59 FD FE
	adc ($FF.b,S),Y		; 73 FF
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	cmp $28.b,S		; C3 28
	sta $9926.w,Y		; 99 26 99
	and $EB8CC6.l,X		; 3F C6 8C EB
	adc ($00.b,S),Y		; 73 00
	sep #$00		; E2 00
	cmp $E4.b,S		; C3 E4
	plb		; AB
	inc $E3FD.w,X		; FE FD E3
	xce		; FB
	sbc $D6B286.l,X		; FF 86 B2 D6
	sbc $5400F6.l,X		; FF F6 00 54
	brk $AB.b		; 00 AB
	inc $F1FB.w,X		; FE FB F1
	sbc $C96F00.l,X		; FF 00 6F C9
	dec $00.b,X		; D6 00
	inc $30.b,X		; F6 30
	cmp $FF37FB.l		; CF FB 37 FF
	tda		; 7B
	sbc $30082D.l,X		; FF 2D 08 30
	bit $9958.w,X		; 3C 58 99
	tya		; 98
	bcc -14.b		; 90 F2
	tad		; 5B
	tax		; AA
	xba		; EB
	bne  67.b		; D0 43
	lda [$A8.b],Y		; B7 A8
	adc [$D9.b]		; 67 D9
	sbc ($C1.b)		; F2 C1
	sbc $C0.b,S		; E3 C0
	inc $ADC7.w,X		; FE C7 AD
	brk $32.b		; 00 32
	sbc $C101.w,X		; FD 01 C1
	cmp ($79.b,X)		; C1 79
.INDEX 8
	sep #$D9		; E2 D9
	ldx $C272.w		; AE 72 C2
	cmp $FE59.w,X		; DD 59 FE
	ldy $3C6F.w,X		; BC 6F 3C
	ora $70.b,S		; 03 70
	ora $B1.b,S		; 03 B1
	sed		; F8
	sed		; F8
	iny		; C8
	phx		; DA
	sta [$56.b]		; 87 56
	ora $0FCF1F.l,X		; 1F 1F CF 0F
	inc $948F.w,X		; FE 8F 94
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	pha		; 48
	inc $60.b,X		; F6 60
	inc $AD.b,X		; F6 AD
	stx $90.b,Y		; 96 90
	ldx $FCFE.w		; AE FE FC
	beq -16.b		; F0 F0
	sbc $54F460.l,X		; FF 60 F4 54
	inc $FC.b		; E6 FC
	plp		; 28
	jsr ($2834.w,X)		; FC 34 28
	inc $BA82.w,X		; FE 82 BA
	rti		; 40

	sta $3F.b,X		; 95 3F
	lda ($5A.b),Y		; B1 5A
	lsr A		; 4A
	rti		; 40

	sta [$2A.b],Y		; 97 2A
	dey		; 88
	inc $EE.b		; E6 EE
	phx		; DA
	lsr A		; 4A
.INDEX 16
	rep #$DE		; C2 DE
	stz $19.b,X		; 74 19
	lda ($2A.b),Y		; B1 2A
	tya		; 98
	clc		; 18
	xba		; EB
	rts		; 60

	phx		; DA
	and $22.b,S		; 23 22
	sta ($2F.b)		; 92 2F
	sbc ($CB.b),Y		; F1 CB
	txa		; 8A
	sta ($A0.b)		; 92 A0
.ACCU 8
.INDEX 8
	sep #$F6		; E2 F6
	cpx #$EC.b		; E0 EC
	jmp.w [$5C31]		; DC 31 5C
	sta [$6B.b]		; 87 6B
	cmp ($DC.b),Y		; D1 DC
	asl $3CFF.w		; 0E FF 3C
	plb		; AB
	sbc $D6FFF1.l,X		; FF F1 FF D6
	sbc ($20.b)		; F2 20
	eor ($0E.b)		; 52 0E
	lda ($10.b,X)		; A1 10
	asl $C9.b		; 06 C9
	txy		; 9B
	sbc ($FF.b),Y		; F1 FF
	sbc ($FF.b),Y		; F1 FF
	bpl   6.b		; 10 06
	bra -99.b		; 80 9D
	adc ($0C.b,S),Y		; 73 0C
	sbc ($AD.b),Y		; F1 AD
	xba		; EB
	.db $62, $88, $86		; 62 88 86
	adc $0C8C5B.l		; 6F 5B 8C 0C
	sbc [$E7.b]		; E7 E7
	sbc $E131.w		; ED 31 E1
	adc $F5EE.w,Y		; 79 EE F5
	sec		; 38
	bit $F3.b		; 24 F3
	adc ($00.b,S),Y		; 73 00
	adc [$E0.b],Y		; 77 E0
	sbc $FCFB1E.l		; EF 1E FB FC
	cmp [$00.b]		; C7 00
	sbc [$F8.b],Y		; F7 F8
	sty $6B34.w		; 8C 34 6B
	ora ($13.b,S),Y		; 13 13
	ora $0F6402.l		; 0F 02 64 0F
	eor [$F2.b],Y		; 57 F2
	jmp.w [$90DE]		; DC DE 90
	bit $11.b,X		; 34 11
	ldy #$49.b		; A0 49
	sta $DC4A.w,Y		; 99 4A DC
	dec $516F.w,X		; DE 6F 51
	ldx $15F6.w		; AE F6 15
	sta $44C275.l		; 8F 75 C2 44
	rts		; 60

	sbc $EADAB9.l,X		; FF B9 DA EA
	eor $87.b,X		; 55 87
	ldx #$67.b		; A2 67
	cpy $B17C.w		; CC 7C B1
	ora $E9.b		; 05 E9
	cmp $ACBF3F.l		; CF 3F BF AC
	cmp ($00.b),Y		; D1 00
	sty $DA80.w		; 8C 80 DA
	cmp $AF.b,X		; D5 AF
	sty $54.b		; 84 54
	tay		; A8
	sbc $48.b,X		; F5 48
	sty $FF.b		; 84 FF
	sbc ($F8.b),Y		; F1 F8
	sed		; F8
	sbc ($F0.b,S),Y		; F3 F0
	cmp $F7.b,S		; C3 F7
	ora ($87.b)		; 12 87
	lda ($C8.b),Y		; B1 C8
	sbc [$F7.b],Y		; F7 F7
	ora $C090C7.l		; 0F C7 90 C0
	cmp $0CBFFE.l,X		; DF FE BF 0C
	ldy $58.b		; A4 58
	cmp ($EA.b,S),Y		; D3 EA
	cmp $FE.b,X		; D5 FE
	sbc $63AFCF.l,X		; FF CF AF 63
	asl $F3.b,X		; 16 F3
	bit $7807.w,X		; 3C 07 78
	ora $FE999E.l		; 0F 9E 99 FE
	sbc ($FF.b,S),Y		; F3 FF
	cpx #$96.b		; E0 96
	sed		; F8
	cmp $AF.b,X		; D5 AF
	pld		; 2B
	sbc ($80.b,X)		; E1 80
	cli		; 58
	ora #$DA.b		; 09 DA
	.db $82, $19, $B9		; 82 19 B9
	ora ($1F.b,X)		; 01 1F
	sbc $F1DF3F.l		; EF 3F DF F1
	sbc $7D5F.w,X		; FD 5F 7D
	dec $72.b		; C6 72
	ora ($F0.b,X)		; 01 F0
	ora $0601FE.l		; 0F FE 01 06
.ACCU 8
.INDEX 8
	sep #$71		; E2 71
	sbc #$5E.b		; E9 5E
	nop		; EA
	jsr ($E0FD.w,X)		; FC FD E0
	sbc ($5D.b,X)		; E1 5D
	bvc  51.b		; 50 33
	cpy #$09.b		; C0 09
	eor $E001E1.l,X		; 5F E1 01 E0
	lda ($DA.b),Y		; B1 DA
	sbc [$46.b],Y		; F7 46
	ror A		; 6A
	jsr ($A5A4.w,X)		; FC A4 A5
	ora $8251F4.l		; 0F F4 51 82
	iny		; C8
	tsb $03A0.w		; 0C A0 03
	jsr ($FB07.w,X)		; FC 07 FB
	ora $55D51F.l		; 0F 1F D5 55
	sbc [$1E.b],Y		; F7 1E
	inc $EE1F.w		; EE 1F EE
	and $42.b,X		; 35 42
	sta [$BA.b]		; 87 BA
	sta $E9.b,S		; 83 E9
	sbc ($2B.b),Y		; F1 2B
	rol A		; 2A
	sbc ($0F.b,S),Y		; F3 0F
	cmp $F85D32.l		; CF 32 5D F8
	ora $0C6A.w,Y		; 19 6A 0C
	lda ($ED.b),Y		; B1 ED
	lda [$3C.b],Y		; B7 3C
	trb $FF22.w		; 1C 22 FF
	cpy #$E0.b		; C0 E0
	cmp $3FC0FE.l,X		; DF FE C0 3F
	rti		; 40

	sta $E8.b,S		; 83 E8
	inc $A880.w,X		; FE 80 A8
	ora ($F2.b)		; 12 F2
	inc $A08C.w,X		; FE 8C A0
	ora #$08.b		; 09 08
	trb $7F.b		; 14 7F
	ora [$FE.b]		; 07 FE
	bmi  86.b		; 30 56
	inc $F605.w,X		; FE 05 F6
	ora $3BC4.w		; 0D C4 3B
	adc ($98.b,X)		; 61 98
	dex		; CA
	txa		; 8A
	inc $E01F.w,X		; FE 1F E0
	inc $F807.w,X		; FE 07 F8
	trb $41.b		; 14 41
	inc $F6D3.w,X		; FE D3 F6
	eor #$99.b		; 49 99
	clv		; B8
	inc $48D2.w,X		; FE D2 48
	ora $FC3F.w		; 0D 3F FC
	tya		; 98
	bit #$DC.b		; 89 DC
	and $B878D8.l,X		; 3F D8 78 B8
	inc $A07F.w,X		; FE 7F A0
	beq 111.b		; F0 6F
	cpx #$A0.b		; E0 A0
	and ($5F.b)		; 32 5F
	inc $62C8.w,X		; FE C8 62
	ror $6CE9.w		; 6E E9 6C
	nop		; EA
	inc $7DC0.w,X		; FE C0 7D
	asl $0EA6.w,X		; 1E A6 0E
	ora ($3E.b,X)		; 01 3E
	lda $04A1.w,X		; BD A1 04
	xce		; FB
	tsb $F0F3.w		; 0C F3 F0
	and $34AA.w,X		; 3D AA 34
	sbc ($FF.b)		; F2 FF
	jsr ($E0E3.w,X)		; FC E3 E0
	ldy $1FFF.w,X		; BC FF 1F
	bit $3DDF.w,X		; 3C DF 3D
	brk $BE.b		; 00 BE
	adc $B778B0.l,X		; 7F B0 78 B7
	ldx $E8FE.w,Y		; BE FE E8
	tda		; 7B
	rol $4C96.w		; 2E 96 4C
	sta ($DF.b,X)		; 81 DF
	sbc $C1C13F.l,X		; FF 3F C1 C1
	bra -59.b		; 80 C5
	xce		; FB
	brk $F3.b		; 00 F3
	ora $AD.b		; 05 AD
	clv		; B8
	tay		; A8
	asl $F200.w		; 0E 00 F2
	and ($C8.b),Y		; 31 C8
	lda ($2E.b,X)		; A1 2E
	asl $EC04.w,X		; 1E 04 EC
	tsx		; BA
	cmp [$AA.b],Y		; D7 AA
	trb $F0B4.w		; 1C B4 F0
	beq  -8.b		; F0 F8
	ldy $E1.b		; A4 E1
	ora ($CA.b,X)		; 01 CA
	sbc $1C257E.l		; EF 7E 25 1C
	sbc ($C0.b,S),Y		; F3 C0
	dey		; 88
	asl A		; 0A
	lsr $01.b,X		; 56 01
	stx $F3.b,Y		; 96 F3
	tay		; A8
	sbc $7F.b		; E5 7F
	jmp $FE87D6.l		; 5C D6 87 FE
	sbc ($FD.b),Y		; F1 FD
	lsr A		; 4A
	rol $FE08.w,X		; 3E 08 FE
	php		; 08
	sbc [$38.b],Y		; F7 38
	sbc [$F8.b],Y		; F7 F8
	inc $4156.w,X		; FE 56 41
	asl A		; 0A
	ror $ECFE.w,X		; 7E FE EC
	sbc ($DC.b)		; F2 DC
	pea $FBF3.w		; F4 F3 FB
	phd		; 0B
	sbc [$0E.b],Y		; F7 0E
	inc $1E.b,X		; F6 1E
	inc $6558.w		; EE 58 65
	inc $EC1D.w,X		; FE 1D EC
	inc $F1.b,X		; F6 F1
	pea $23F1.w		; F4 F1 23
	eor ($FE.b)		; 52 FE
	ora ($A6.b,X)		; 01 A6
	ora ($19.b)		; 12 19
	bit $38.b,X		; 34 38
	eor ($3E.b,X)		; 41 3E
	inc $CE17.w,X		; FE 17 CE
	sta $7D.b,S		; 83 7D
	ora [$FB.b]		; 07 FB
	cpx $92F1.w		; EC F1 92
	inc $80FF.w,X		; FE FF 80
	ror A		; 6A
	bra  -2.b		; 80 FE
	txy		; 9B
	jsr ($6170.w,X)		; FC 70 61
	stz $F1.b		; 64 F1
	lda $EBF6FE.l,X		; BF FE F6 EB
	rol A		; 2A
	cmp $E99FFF.l,X		; DF FF 9F E9
	lda $E8.b,S		; A3 E8
	sbc [$20.b],Y		; F7 20
	sbc $3781CC.l,X		; FF CC 81 37
	sbc ($AC.b,X)		; E1 AC
	sbc #$A8.b		; E9 A8
	sta $FE.b,X		; 95 FE
	rts		; 60

	sbc ($3F.b,X)		; E1 3F
	nop		; EA
	cpx #$FE.b		; E0 FE
	ora $9E.b,S		; 03 9E
	sbc ($61.b)		; F2 61
	bit $5A1E.w,X		; 3C 1E 5A
	bmi -13.b		; 30 F3
	jsr ($FEC1.w,X)		; FC C1 FE
	sbc ($FA.b),Y		; F1 FA
	rep #$C1		; C2 C1
	clc		; 18
	dey		; 88
	sbc ($F5.b,S),Y		; F3 F5
	cmp ($08.b,X)		; C1 08
	nop		; EA
	tya		; 98
	sbc ($E0.b)		; F2 E0
	dex		; CA
	ora $C01F60.l		; 0F 60 1F C0
	inc $E96E.w,X		; FE 6E E9
	tay		; A8
	cmp ($CF.b),Y		; D1 CF
	inc $D1C3.w,X		; FE C3 D1
	iny		; C8
	inc $CF.b,X		; F6 CF
	sbc $5DBA34.l,X		; FF 34 BA 5D
	adc $F1.b,X		; 75 F1
	tsb $C0.b		; 04 C0
	tsx		; BA
	ora ($0C.b,X)		; 01 0C
	lda $E0E6.w		; AD E6 E0
	inc $C27A.w,X		; FE 7A C2
	rts		; 60

	sta ($F8.b)		; 92 F8
	cop $A8.b		; 02 A8
	tax		; AA
	inc $86F9.w,X		; FE F9 86
	sbc ($0B.b),Y		; F1 0B
	sta $0C9082.l		; 8F 82 90 0C
	ldy #$82.b		; A0 82
	asl $C4.b		; 06 C4
	eor $AD.b,X		; 55 AD
	jmp ($E044.w,X)		; 7C 44 E0
	cpy $B8.b		; C4 B8
	tsb $FCE0.w		; 0C E0 FC
	sta $F8FED2.l		; 8F D2 FE F8
	ora #$20.b		; 09 20
	bcc  16.b		; 90 10
	asl $D1A7.w,X		; 1E A7 D1
	sty $AA.b		; 84 AA
	txy		; 9B
	phy		; 5A
	jmp $9C60FE.l		; 5C FE 60 9C
	brk $B4.b		; 00 B4
	jsr $AA8B.w		; 20 8B AA
	tax		; AA
	cmp $CD6AE2.l,X		; DF E2 6A CD
	cpy #$A2.b		; C0 A2
	jsl $B00AE2.l		; 22 E2 0A B0
	phd		; 0B
	iny		; C8
	sbc $F8F1.w,X		; FD F1 F8
	ora #$CA.b		; 09 CA
	inc $5550.w,X		; FE 50 55
	cmp $A10AF8.l,X		; DF F8 0A A1
	cmp [$6F.b]		; C7 6F
	cmp ($F8.b),Y		; D1 F8
	jmp.w [$FCDC]		; DC DC FC
	jsr $0B78.w		; 20 78 0B
	ldx $FC.b		; A6 FC
	bvc 107.b		; 50 6B
	adc [$C0.b],Y		; 77 C0
	jmp.w [$5898]		; DC 98 58
	ora #$B0.b		; 09 B0
	cpy #$0B.b		; C0 0B
	ora $00511C.l		; 0F 1C 51 00
	rts		; 60

	ora $02.b,X		; 15 02
	lda $D904AA.l		; AF AA 04 D9
	jsr ($3808.w,X)		; FC 08 38
	eor $18AC.w		; 4D AC 18
	cpy #$12.b		; C0 12
	.db $42, $82		; 42 82
	bra  45.b		; 80 2D
	cmp ($72.b,X)		; C1 72
	lda $FF00AA.l		; AF AA 00 FF
	cmp $9F9FDF.l,X		; DF DF 9F 9F
	bit $13.b,X		; 34 13
	bra  40.b		; 80 28
	tsb $E1D2.w		; 0C D2 E1
	bra  40.b		; 80 28
	asl A		; 0A
	clc		; 18
	adc $AA.b,S		; 63 AA
	bmi  70.b		; 30 46
	sbc $46E450.l		; EF 50 E4 46
	inx		; E8
	asl A		; 0A
	ldy #$B6.b		; A0 B6
	iny		; C8
	lda #$FE.b		; A9 FE
	cpy #$10.b		; C0 10
	lsr $FE22.w,X		; 5E 22 FE
	clc		; 18
	cpx #$08.b		; E0 08
	ldx #$B6.b		; A2 B6
	sbc $0555BC.l,X		; FF BC 55 05
	inx		; E8
	dec $00.b,X		; D6 00
	sbc $D9E0.w,X		; FD E0 D9
	plp		; 28
	sed		; F8
	phd		; 0B
	rts		; 60

	adc $E0.b,S		; 63 E0
	pei ($E9.b)		; D4 E9
	and $55.b		; 25 55
	sbc #$38.b		; E9 38
	asl $C52A.w		; 0E 2A C5
	cmp ($AB.b),Y		; D1 AB
	bcc  15.b		; 90 0F
	ror $98.b		; 66 98
	bpl -64.b		; 10 C0
	ror $78.b		; 66 78
	sep #$41		; E2 41
	cmp [$C0.b],Y		; D7 C0
	rts		; 60

	phd		; 0B
	lsr $17.b,X		; 56 17
	phx		; DA
	cmp $F00970.l		; CF 70 09 F0
	ora ($E0.b,X)		; 01 E0
	tay		; A8
	ora $5FFCE6.l		; 0F E6 FC 5F
	ora $00F3.w,X		; 1D F3 00
	cmp $08.b,S		; C3 08
	sta $38.b,S		; 83 38
	cmp [$79.b],Y		; D7 79
	pha		; 48
	adc [$FF.b],Y		; 77 FF
	jsr ($F3F3.w,X)		; FC F3 F3
	asl $2EAB.w,X		; 1E AB 2E
	cpx #$0C.b		; E0 0C
	beq   4.b		; F0 04
	inc $7606.w,X		; FE 06 76
	nop		; EA
	ror $A4A1.w,X		; 7E A1 A4
	rol A		; 2A
	bit $FFE1.w		; 2C E1 FF
	rol $40AC.w,X		; 3E AC 40
	sbc ($00.b)		; F2 00
	bit $7E.b,X		; 34 7E
	ror $6060.w,X		; 7E 60 60
	ora ($2A.b),Y		; 11 2A
	adc $62.b,X		; 75 62
	bcc 113.b		; 90 71
	.db $42, $7A		; 42 7A
	.db $62, $8F, $8B		; 62 8F 8B
	cmp ($EF.b,X)		; C1 EF
	sbc $826355.l		; EF 55 63 82
	sbc ($B6.b)		; F2 B6
	pea $6020.w		; F4 20 60
	ora $A260.w		; 0D 60 A2
	cpy #$F8.b		; C0 F8
	ora $EEFEF7.l		; 0F F7 FE EE
	trb $FEF6.w		; 1C F6 FE
	jmp.w [$FE01]		; DC 01 FE
	cpy #$01.b		; C0 01
	cpx #$F8.b		; E0 F8
	ora ($9E.b),Y		; 11 9E
	brk $43.b		; 00 43
	sbc $411C.w,X		; FD 1C 41
	sec		; 38
	eor $83.b,S		; 43 83
	lda [$83.b],Y		; B7 83
	brk $78.b		; 00 78
	bpl  25.b		; 10 19
	php		; 08
	ora ($00.b)		; 12 00
	sbc $E0158F.l,X		; FF 8F 15 E0
	tas		; 1B
	cpy #$16.b		; C0 16
	sta ($0D.b,X)		; 81 0D
	cop $0A.b		; 02 0A
	ora $0C.b		; 05 0C
	ora $87.b,S		; 03 87
	ldx $78AA.w		; AE AA 78
	sed		; F8
	eor ($8F.b)		; 52 8F
	bra  78.b		; 80 4E
	lsr $7DCF.w,X		; 5E CF 7D
	sbc $D942FD.l,X		; FF FD 42 D9
	lsr A		; 4A
	tad		; 5B
	tax		; AA
	tsx		; BA
	eor $130A88.l		; 4F 88 0A 13
.ACCU 16
	rep #$60		; C2 60
	bmi  12.b		; 30 0C
	brk $AA.b		; 00 AA
	cpx #$A7.b		; E0 A7
	brk $8B.b		; 00 8B
	cpx #$A0.b		; E0 A0
	ora #$E3E3.w		; 09 E3 E3
	tax		; AA
	tax		; AA
	eor $F4.b,X		; 55 F4
	cpx #$A7.b		; E0 A7
	cmp [$C3.b]		; C7 C3
	cpx #$A0.b		; E0 A0
	ora #$FE4A.w		; 09 4A FE
	cpx #$A6.b		; E0 A6
	sty $400A.w		; 8C 0A 40
	tad		; 5B
	eor [$55.b],Y		; 57 55
	sbc ($D9.b,X)		; E1 D9
	sta $809F20.l		; 8F 20 9F 80
	sbc #$94E6.w		; E9 E6 94
	jsr $62FF.w		; 20 FF 62
	sbc $620C00.l,X		; FF 00 0C 62
	inc $4915.w,X		; FE 15 49
	jmp.w [$69FE]		; DC FE 69
	stz $BC.b,X		; 74 BC
	eor $24.b,X		; 55 24
	cpx $5682.w		; EC 82 56
	eor $BD.b,X		; 55 BD
	stz $13F2.w		; 9C F2 13
	ror A		; 6A
	stz $9E.b		; 64 9E
	cpx #$52.b		; E0 52
	stz $98.b		; 64 98
	phd		; 0B
	cpx #$53.b		; E0 53
	ldx $BC00.w,Y		; BE 00 BC
	eor [$15.b],Y		; 57 15
	ldy $E8.b,X		; B4 E8
	phd		; 0B
	ldx $BCBE.w,Y		; BE BE BC
	beq  -8.b		; F0 F8
	tsb $90A0.w		; 0C A0 90
	tsb $0F00.w		; 0C 00 0F
	adc $09A0.w,Y		; 79 A0 09
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $3C.b,X		; 35 3C
	brk $FF.b		; 00 FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	dec $18.b		; C6 18
	inc $1901.w,X		; FE 01 19
	cop $19.b		; 02 19
	sbc $F82B.w,Y		; F9 2B F8
	sbc $0903FC.l		; EF FC 03 09
	tsb $09.b		; 04 09
	brk $08.b		; 00 08
	inc $0AF8.w,X		; FE F8 0A
	cpy #$F8.b		; C0 F8
	jsr $F89C.w		; 20 9C F8
	inc $1905.w,X		; FE 05 19
	asl $BE.b		; 06 BE
	sbc $C10907.l,X		; FF 07 09 C1
	eor $FF0908.l		; 4F 08 09 FF
	cpy #$F8.b		; C0 F8
	pld		; 2B
	asl A		; 0A
	ora $190B.w,Y		; 19 0B 19
	tsb $FFFF.w		; 0C FF FF
	cpy #$04.b		; C0 04
	ora $0E05.w		; 0D 05 0E
	ora $0F.b		; 05 0F
	ora $10.b		; 05 10
	ora #$0911.w		; 09 11 09
	ora ($09.b)		; 12 09
	ora ($09.b,S),Y		; 13 09
	sta ($3F.b,S),Y		; 93 3F
	trb $09.b		; 14 09
	ora $B8.b,X		; 15 B8
	cpy #$F8.b		; C0 F8
	asl $1916.w,X		; 1E 16 19
	ora [$19.b],Y		; 17 19
	clc		; 18
	ora $FFFC.w,Y		; 19 FC FF
	sbc $1B191A.l,X		; FF 1A 19 1B
	ora $1C.b		; 05 1C
	ora $1D.b		; 05 1D
	ora $1E.b		; 05 1E
	ora $1F.b		; 05 1F
	ora #$7F20.w		; 09 20 7F
	plx		; FA
	ora #$0921.w		; 09 21 09
	jsl $092309.l		; 22 09 23 09
	bit $C0.b		; 24 C0
	tsb $0DBB.w		; 0C BB 0D
	ldy $FFEF.w,X		; BC EF FF
	ora $0DBD.w		; 0D BD 0D
	ldx $C00D.w,Y		; BE 0D C0
	sed		; F8
	ora $25.b,X		; 15 25
	ora $1926.w,Y		; 19 26 19
	and [$19.b]		; 27 19
	plp		; 28
	ora $FF29.w,Y		; 19 29 FF
	beq  25.b		; F0 19
	rol A		; 2A
	ora $2B.b		; 05 2B
	ora $2C.b		; 05 2C
	ora $2D.b		; 05 2D
	ora $CC.b		; 05 CC
	rol $2F09.w		; 2E 09 2F
	adc $3009F8.l,X		; 7F F8 09 30
	ora #$0931.w		; 09 31 09
	and ($09.b)		; 32 09
	lda $C00CBE.l,X		; BF BE 0C C0
	ora $FFC1.w		; 0D C1 FF
	and $0DC20D.l,X		; 3F 0D C2 0D
	cmp $0D.b,S		; C3 0D
	cpy $11.b		; C4 11
	cmp $11.b		; C5 11
	dec $11.b		; C6 11
	cmp [$11.b]		; C7 11
	brk $10.b		; 00 10
	plx		; FA
	sbc $FDFFFE.l,X		; FF FE FF FD
	and ($19.b,S),Y		; 33 19
	bit $19.b,X		; 34 19
	and $19.b,X		; 35 19
	rol $19.b,X		; 36 19
	and [$19.b],Y		; 37 19
	sec		; 38
	adc $3919FC.l,X		; 7F FC 19 39
	ora $3A.b		; 05 3A
	ora $3B.b		; 05 3B
	ora $3C.b		; 05 3C
	cpy #$3D.b		; C0 3D
	ora #$093E.w		; 09 3E 09
	and $093FFE.l,X		; 3F FE 3F 09
	rti		; 40

	ora #$0941.w		; 09 41 09
	iny		; C8
	cpy #$C9.b		; C0 C9
	ora $0DCA.w		; 0D CA 0D
	wai		; CB
	sbc $CC0D27.l,X		; FF 27 0D CC
	ora $11CD.w		; 0D CD 11
	dec $CF11.w		; CE 11 CF
	ora ($D0.b),Y		; 11 D0
	ora ($D1.b),Y		; 11 D1
	ldx $FFFF.w,Y		; BE FF FF
	sbc $1942FD.l,X		; FF FD 42 19
	eor $19.b,S		; 43 19
	mvp $45,$19		; 44 19 45
	ora $1946.w,Y		; 19 46 19
	eor [$19.b]		; 47 19
	pha		; 48
	ora $FF.b		; 05 FF
	sbc $4A0549.l,X		; FF 49 05 4A
	ora $4B.b		; 05 4B
	ora $4C.b		; 05 4C
	ora $4D.b,X		; 15 4D
	ora #$094E.w		; 09 4E 09
	eor $095009.l		; 4F 09 50 09
	sbc $FF.b,S		; E3 FF
	eor ($09.b),Y		; 51 09
	cmp ($C0.b)		; D2 C0
	cmp ($0D.b,S),Y		; D3 0D
	pei ($0D.b)		; D4 0D
	cmp $0D.b,X		; D5 0D
	dec $0D.b,X		; D6 0D
	cmp [$7F.b],Y		; D7 7F
	sbc $11D811.l,X		; FF 11 D8 11
	cmp $DA11.w,Y		; D9 11 DA
	ora ($DB.b),Y		; 11 DB
	cpy #$F8.b		; C0 F8
	asl A		; 0A
	eor ($19.b)		; 52 19
	eor ($19.b,S),Y		; 53 19
	mvn $FF,$19		; 54 19 FF
	sbc $561955.l,X		; FF 55 19 56
	ora $1957.w,Y		; 19 57 19
	cli		; 58
	ora $59.b		; 05 59
	ora $5A.b		; 05 5A
	ora $5B.b		; 05 5B
	ora $5C.b		; 05 5C
	ora $FF.b,X		; 15 FF
	sbc $5D.b,S		; E3 5D
	ora #$095E.w		; 09 5E 09
	eor $096009.l,X		; 5F 09 60 09
	adc ($09.b,X)		; 61 09
	jmp.w [$DDC0]		; DC C0 DD
	sbc $DE0D7F.l,X		; FF 7F 0D DE
	ora $0DDF.w		; 0D DF 0D
	cpx #$0D.b		; E0 0D
	sbc ($11.b,X)		; E1 11
.INDEX 8
	sep #$11		; E2 11
	sbc $11.b,S		; E3 11
	cpx $11.b		; E4 11
	sbc $FD.b		; E5 FD
	sbc $0AF8C0.l,X		; FF C0 F8 0A
	bra -14.b		; 80 F2
	.db $62, $19, $63		; 62 19 63
	ora $1964.w,Y		; 19 64 19
	adc $19.b		; 65 19
	ror $05.b		; 66 05
	adc [$05.b]		; 67 05
	sbc $0568FF.l,X		; FF FF 68 05
	adc #$6A05.w		; 69 05 6A
	ora $6B.b,X		; 15 6B
	ora #$096C.w		; 09 6C 09
	adc $6E09.w		; 6D 09 6E
	ora #$096F.w		; 09 6F 09
	sbc $09E6FF.l,X		; FF FF E6 09
	sbc [$0D.b]		; E7 0D
	inx		; E8
	ora $0DE9.w		; 0D E9 0D
	nop		; EA
	ora $0DEB.w		; 0D EB 0D
	cpx $ED11.w		; EC 11 ED
	ora ($3F.b),Y		; 11 3F
	sed		; F8
	inc $EF11.w		; EE 11 EF
	ora ($F0.b),Y		; 11 F0
	ora ($F1.b),Y		; 11 F1
	ldx $F8C0.w,Y		; BE C0 F8
	asl A		; 0A
	bvs  25.b		; 70 19
	adc ($FF.b),Y		; 71 FF
	sbc $197219.l,X		; FF 19 72 19
	adc ($19.b,S),Y		; 73 19
	stz $05.b,X		; 74 05
	adc $05.b,X		; 75 05
	ror $05.b,X		; 76 05
	adc [$05.b],Y		; 77 05
	sei		; 78
	ora $00.b,X		; 15 00
	sbc $7908FF.l,X		; FF FF 08 79
	ora #$097A.w		; 09 7A 09
	tda		; 7B
	ora #$097C.w		; 09 7C 09
	sbc ($09.b)		; F2 09
	sbc ($0D.b,S),Y		; F3 0D
	pea $F50D.w		; F4 0D F5
	sbc $F60D7F.l,X		; FF 7F 0D F6
	ora $11F7.w		; 0D F7 11
	sed		; F8
	ora ($F9.b),Y		; 11 F9
	ora ($FA.b),Y		; 11 FA
	ora ($FB.b),Y		; 11 FB
	ora ($FC.b),Y		; 11 FC
	ora ($FD.b),Y		; 11 FD
	sbc $F8C0FF.l,X		; FF FF C0 F8
	tsb $197D.w		; 0C 7D 19
	ror $7F19.w,X		; 7E 19 7F
	ora $1980.w,Y		; 19 80 19
	sta ($05.b,X)		; 81 05
	.db $82, $05, $83		; 82 05 83
	ora $FB.b		; 05 FB
	sbc $850584.l,X		; FF 84 05 85
	lsr A		; 4A
	sbc ($86.b),Y		; F1 86
	ora #$0987.w		; 09 87 09
	dey		; 88
	ora #$0989.w		; 09 89 09
	inc $FF09.w,X		; FE 09 FF
	sbc $000DFF.l,X		; FF FF 0D 00
	asl $0E01.w		; 0E 01 0E
	cop $0E.b		; 02 0E
	ora $12.b,S		; 03 12
	tsb $12.b		; 04 12
	ora $12.b		; 05 12
	asl $12.b		; 06 12
	ora [$EF.b]		; 07 EF
	sbc $120812.l,X		; FF 12 08 12
	ora #$C012.w		; 09 12 C0
	sed		; F8
	phd		; 0B
	txa		; 8A
	ora $198B.w,Y		; 19 8B 19
	sty $8D19.w		; 8C 19 8D
	ora $FF8E.w,Y		; 19 8E FF
	adc $058F05.l,X		; 7F 05 8F 05
	bcc   5.b		; 90 05
	sta ($05.b),Y		; 91 05
	sta ($09.b)		; 92 09
	sta ($09.b,S),Y		; 93 09
	sty $09.b,X		; 94 09
	sta $09.b,X		; 95 09
	stx $F8.b,Y		; 96 F8
	sbc $0A49FA.l,X		; FF FA 49 0A
	asl A		; 0A
	brk $0C.b		; 00 0C
	phd		; 0B
	asl $0E0C.w		; 0E 0C 0E
	ora $0E0E.w		; 0D 0E 0E
	and $0F12DC.l,X		; 3F DC 12 0F
	ora ($10.b)		; 12 10
	ora ($11.b)		; 12 11
	ora ($FF.b)		; 12 FF
	ora ($12.b,S),Y		; 13 12
	trb $C0.b		; 14 C0
	sed		; F8
	tsb $FFFF.w		; 0C FF FF
	sta [$19.b],Y		; 97 19
	tya		; 98
	ora $1999.w,Y		; 19 99 19
	txs		; 9A
	ora $059B.w,Y		; 19 9B 05
	stz $9D05.w		; 9C 05 9D
	ora $9E.b		; 05 9E
	ora $3F.b		; 05 3F
	bit $099F.w,X		; 3C 9F 09
	ldy #$09.b		; A0 09
	lda ($09.b,X)		; A1 09
	ldx #$FE.b		; A2 FE
	eor #$49A1.w		; 49 A1 49
	ora $FE.b,X		; 15 FE
	sbc $0E16C0.l,X		; FF C0 16 0E
	ora [$0E.b],Y		; 17 0E
	clc		; 18
	asl $1219.w		; 0E 19 12
	inc A		; 1A
	ora ($1B.b)		; 12 1B
	ora ($1C.b)		; 12 1C
	cmp $1D12FF.l,X		; DF FF 12 1D
	ora ($1E.b)		; 12 1E
	ora ($1F.b)		; 12 1F
	cpy #$F8.b		; C0 F8
	tsb $19A3.w		; 0C A3 19
	ldy $19.b		; A4 19
	lda $19.b		; A5 19
	ldx $19.b		; A6 19
	adc $05A7B8.l,X		; 7F B8 A7 05
	tay		; A8
	ora $A9.b		; 05 A9
	ora $00.b		; 05 00
	tsb $42.b		; 04 42
	tax		; AA
	ora #$0FAB.w		; 09 AB 0F
	sbc $ABE3FE.l,X		; FF FE E3 AB
	eor #$49AA.w		; 49 AA 49
	cpy #$20.b		; C0 20
	asl $0E21.w		; 0E 21 0E
	jsl $FF000E.l		; 22 0E 00 FF
	sbc $122310.l		; EF 10 23 12
	bit $12.b		; 24 12
	and $12.b		; 25 12
	rol $12.b		; 26 12
	and [$12.b]		; 27 12
	lda [$D1.b]		; A7 D1
	cpy #$F8.b		; C0 F8
	phd		; 0B
	ldy $9F87.w		; AC 87 9F
	ora $19AD.w,Y		; 19 AD 19
	ldx $D9C2.w		; AE C2 D9
	lda $05B005.l		; AF 05 B0 05
	lda ($CF.b),Y		; B1 CF
	cmp [$C0.b]		; C7 C0
	lda ($09.b)		; B2 09
	lda ($C0.b,S),Y		; B3 C0
	lda ($49.b,S),Y		; B3 49
	lda ($C0.b)		; B2 C0
	sbc $0E28FF.l,X		; FF FF 28 0E
	and #$2A0E.w		; 29 0E 2A
	asl $0E2B.w		; 0E 2B 0E
	bit $2D12.w		; 2C 12 2D
	ora ($2E.b)		; 12 2E
	ora ($2F.b)		; 12 2F
	ora ($E0.b)		; 12 E0
	sbc [$30.b],Y		; F7 30
	.db $82, $40, $F0		; 82 40 F0
	tsb $19B4.w		; 0C B4 19
	lda $19.b,X		; B5 19
	ldx $C0.b,Y		; B6 C0
	sbc ($B7.b,X)		; E1 B7
	ora $73.b		; 05 73
	sbc $B8.b,S		; E3 B8
	ora $B9.b		; 05 B9
	cpy #$BA.b		; C0 BA
	bra -25.b		; 80 E7
	tsx		; BA
	cpy #$31.b		; C0 31
	sbc $320E9F.l,X		; FF 9F 0E 32
	asl $0E33.w		; 0E 33 0E
	bit $0E.b,X		; 34 0E
	and $12.b,X		; 35 12
	rol $12.b,X		; 36 12
	and [$12.b],Y		; 37 12
	sec		; 38
	jsr ($C2FF.w,X)		; FC FF C2
	cpy #$F8.b		; C0 F8
	tsb $1A39.w		; 0C 39 1A
	dec A		; 3A
	inc A		; 1A
	tsa		; 3B
	inc A		; 1A
	bit $3D1A.w,X		; 3C 1A 3D
	asl $3E.b		; 06 3E
	asl $3F.b		; 06 3F
	sed		; F8
	and $064006.l,X		; 3F 06 40 06
	eor ($0A.b,X)		; 41 0A
	.db $42, $0A		; 42 0A
	cpy #$FD.b		; C0 FD
	.db $42, $4A		; 42 4A
	eor ($E1.b,X)		; 41 E1
	sbc $444E4E.l,X		; FF 4E 4E 44
	tsb $0E4F.w		; 0C 4F 0E
	bvc  14.b		; 50 0E
	eor ($12.b),Y		; 51 12
	lda $51.b,S		; A3 51
	eor ($3B.b)		; 52 3B
	jsr ($3D12.w,X)		; FC 12 3D
	cmp ($C0.b)		; D2 C0
	sed		; F8
	ora $FC1A43.l		; 0F 43 1A FC
	mvp $45,$1A		; 44 1A 45
	inc A		; 1A
	lsr $23.b		; 46 23
	tya		; 98
	asl $47.b		; 06 47
	asl $82.b		; 06 82
	inc $F8FF.w,X		; FE FF F8
	ora $FE0C.w		; 0D 0C FE
	and $0E53FE.l		; 2F FE 53 0E
	mvn $55,$0E		; 54 0E 55
	ora ($9E.b)		; 12 9E
	ora ($56.b),Y		; 11 56
	ora ($57.b)		; 12 57
	.db $42, $F8		; 42 F8
	phd		; 0B
	asl $C0E9.w,X		; 1E E9 C0
	pha		; 48
	inc A		; 1A
	eor #$FEC0.w		; 49 C0 FE
	lsr A		; 4A
	asl $E0.b		; 06 E0
	sbc ($4B.b),Y		; F1 4B
	cpy #$FF.b		; C0 FF
	sed		; F8
	clc		; 18
	cli		; 58
	ora ($59.b)		; 12 59
	dec $5A.b		; C6 5A
	ora ($5E.b)		; 12 5E
	sbc ($5B.b),Y		; F1 5B
	cpy #$F8.b		; C0 F8
	asl $1A4C.w		; 0E 4C 1A
	eor $FDC0.w		; 4D C0 FD
	trb $D8.b		; 14 D8
	jsr $5248.w		; 20 48 52
	ora ($5A.b),Y		; 11 5A
	eor ($5C.b,X)		; 41 5C
	cpy #$F8.b		; C0 F8
	ora $F8FF.w		; 0D FF F8
	bmi  93.b		; 30 5D
	tsb $F0.b		; 04 F0
	ora #$F8FF.w		; 09 FF F8
	jsr ($00FF.w,X)		; FC FF 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $8E9C8D.l,X		; FF 8D 9C 8E
	stz $9C8F.w		; 9C 8F 9C
	bcc -100.b		; 90 9C
	sta ($9C.b),Y		; 91 9C
	sta ($9C.b)		; 92 9C
	sta ($9C.b,S),Y		; 93 9C
	sty $FF.b,X		; 94 FF
	and $9C959C.l,X		; 3F 9C 95 9C
	stx $9C.b,Y		; 96 9C
	sta [$9C.b],Y		; 97 9C
	tya		; 98
	stz $9C99.w		; 9C 99 9C
	txs		; 9A
	stz $9C9B.w		; 9C 9B 9C
	inc $FFFF.w,X		; FE FF FF
	jmp.w [$DC9B]		; DC 9B DC
	txs		; 9A
	jmp.w [$DC99]		; DC 99 DC
	tya		; 98
	jmp.w [$DC97]		; DC 97 DC
	stx $DC.b,Y		; 96 DC
	sbc $DC95FF.l,X		; FF FF 95 DC
	sty $DC.b,X		; 94 DC
	sta ($DC.b,S),Y		; 93 DC
	sta ($DC.b)		; 92 DC
	sta ($DC.b),Y		; 91 DC
	bcc -36.b		; 90 DC
	sta $DC8EDC.l		; 8F DC 8E DC
	sbc $DC8DFF.l,X		; FF FF 8D DC
	adc $7E9C.w,X		; 7D 9C 7E
	stz $9C7F.w		; 9C 7F 9C
	bra -100.b		; 80 9C
	sta ($9C.b,X)		; 81 9C
	.db $82, $9C, $83		; 82 9C 83
	stz $FFFF.w		; 9C FF FF
	sty $9C.b		; 84 9C
	sta $9C.b		; 85 9C
	stx $9C.b		; 86 9C
	sta [$9C.b]		; 87 9C
	dey		; 88
	stz $9C89.w		; 9C 89 9C
	txa		; 8A
	stz $9C8B.w		; 9C 8B 9C
	beq  -1.b		; F0 FF
	sty $DCFE.w		; 8C FE DC
	phb		; 8B
	jmp.w [$DC8A]		; DC 8A DC
	bit #$88DC.w		; 89 DC 88
	jmp.w [$DC87]		; DC 87 DC
	sbc $DC86FF.l,X		; FF FF 86 DC
	sta $DC.b		; 85 DC
	sty $DC.b		; 84 DC
	sta $DC.b,S		; 83 DC
	.db $82, $DC, $81		; 82 DC 81
	jmp.w [$DC80]		; DC 80 DC
	adc $FFF0DC.l,X		; 7F DC F0 FF
	ror $DCC2.w,X		; 7E C2 DC
	adc $6E9C.w		; 6D 9C 6E
	stz $9C6F.w		; 9C 6F 9C
	bvs -100.b		; 70 9C
	adc ($9C.b),Y		; 71 9C
	sbc $9C72FF.l,X		; FF FF 72 9C
	adc ($9C.b,S),Y		; 73 9C
	stz $9C.b,X		; 74 9C
	adc $9C.b,X		; 75 9C
	ror $9C.b,X		; 76 9C
	adc [$9C.b],Y		; 77 9C
	sei		; 78
	stz $9C79.w		; 9C 79 9C
	ora $9C7AFF.l		; 0F FF 7A 9C
	tda		; 7B
	stz $FE7C.w		; 9C 7C FE
	jmp.w [$DC7B]		; DC 7B DC
	ply		; 7A
	jmp.w [$DC79]		; DC 79 DC
	sbc $DC78FF.l,X		; FF FF 78 DC
	adc [$DC.b],Y		; 77 DC
	ror $DC.b,X		; 76 DC
	adc $DC.b,X		; 75 DC
	stz $DC.b,X		; 74 DC
	adc ($DC.b,S),Y		; 73 DC
	adc ($DC.b)		; 72 DC
	adc ($DC.b),Y		; 71 DC
	ora $DC70FF.l		; 0F FF 70 DC
	adc $C26EDC.l		; 6F DC 6E C2
	jmp.w [$9C5D]		; DC 5D 9C
	lsr $5F9C.w,X		; 5E 9C 5F
	stz $FFFF.w		; 9C FF FF
	rts		; 60

	stz $9C61.w		; 9C 61 9C
	.db $62, $9C, $63		; 62 9C 63
	stz $9C64.w		; 9C 64 9C
	adc $9C.b		; 65 9C
	ror $9C.b		; 66 9C
	adc [$9C.b]		; 67 9C
	sbc $9C68F0.l,X		; FF F0 68 9C
	adc #$6A9C.w		; 69 9C 6A
	stz $9C6B.w		; 9C 6B 9C
	jmp ($DCFE.w)		; 6C FE DC
	rtl		; 6B

	jmp.w [$FFFF]		; DC FF FF
	ror A		; 6A
	jmp.w [$DC69]		; DC 69 DC
	pla		; 68
	jmp.w [$DC67]		; DC 67 DC
	ror $DC.b		; 66 DC
	adc $DC.b		; 65 DC
	stz $DC.b		; 64 DC
	adc $DC.b,S		; 63 DC
	sbc $DC62F0.l,X		; FF F0 62 DC
	adc ($DC.b,X)		; 61 DC
	rts		; 60

	jmp.w [$DC5F]		; DC 5F DC
	lsr $DCC2.w,X		; 5E C2 DC
	eor $FF9C.w		; 4D 9C FF
	sbc $4F9C4E.l,X		; FF 4E 9C 4F
	stz $9C50.w		; 9C 50 9C
	eor ($9C.b),Y		; 51 9C
	eor ($9C.b)		; 52 9C
	eor ($9C.b,S),Y		; 53 9C
	mvn $55,$9C		; 54 9C 55
	stz $0FFF.w		; 9C FF 0F
	lsr $9C.b,X		; 56 9C
	eor [$9C.b],Y		; 57 9C
	cli		; 58
	stz $9C59.w		; 9C 59 9C
	phy		; 5A
	stz $9C5B.w		; 9C 5B 9C
	jmp $FEFFFF.l		; 5C FF FF FE
	jmp.w [$DC5B]		; DC 5B DC
	phy		; 5A
	jmp.w [$DC59]		; DC 59 DC
	cli		; 58
	jmp.w [$DC57]		; DC 57 DC
	lsr $DC.b,X		; 56 DC
	eor $DC.b,X		; 55 DC
	sbc $DC540F.l,X		; FF 0F 54 DC
	eor ($DC.b,S),Y		; 53 DC
	eor ($DC.b)		; 52 DC
	eor ($DC.b),Y		; 51 DC
	bvc -36.b		; 50 DC
	eor $FF4EDC.l		; 4F DC 4E FF
	sbc $3DDCC2.l,X		; FF C2 DC 3D
	stz $9C3E.w		; 9C 3E 9C
	and $9C409C.l,X		; 3F 9C 40 9C
	eor ($9C.b,X)		; 41 9C
	.db $42, $9C		; 42 9C
	eor $9C.b,S		; 43 9C
	sbc $9C44FF.l,X		; FF FF 44 9C
	eor $9C.b		; 45 9C
	lsr $9C.b		; 46 9C
	eor [$9C.b]		; 47 9C
	pha		; 48
	stz $9C49.w		; 9C 49 9C
	lsr A		; 4A
	stz $9C4B.w		; 9C 4B 9C
	beq  -1.b		; F0 FF
	jmp $DCFE.w		; 4C FE DC
	phk		; 4B
	jmp.w [$DC4A]		; DC 4A DC
	eor #$48DC.w		; 49 DC 48
	jmp.w [$DC47]		; DC 47 DC
	sbc $DC46FF.l,X		; FF FF 46 DC
	eor $DC.b		; 45 DC
	mvp $43,$DC		; 44 DC 43
	jmp.w [$DC42]		; DC 42 DC
	eor ($DC.b,X)		; 41 DC
	rti		; 40

	jmp.w [$DC3F]		; DC 3F DC
	beq  -1.b		; F0 FF
	rol $DCC2.w,X		; 3E C2 DC
	and $2E9C.w		; 2D 9C 2E
	stz $9C2F.w		; 9C 2F 9C
	bmi -100.b		; 30 9C
	and ($9C.b),Y		; 31 9C
	sbc $9C32FF.l,X		; FF FF 32 9C
	and ($9C.b,S),Y		; 33 9C
	bit $9C.b,X		; 34 9C
	and $9C.b,X		; 35 9C
	rol $9C.b,X		; 36 9C
	and [$9C.b],Y		; 37 9C
	sec		; 38
	stz $9C39.w		; 9C 39 9C
	ora $9C3AFF.l		; 0F FF 3A 9C
	tsa		; 3B
	stz $FE3C.w		; 9C 3C FE
	jmp.w [$DC3B]		; DC 3B DC
	dec A		; 3A
	jmp.w [$DC39]		; DC 39 DC
	sbc $DC38FF.l,X		; FF FF 38 DC
	and [$DC.b],Y		; 37 DC
	rol $DC.b,X		; 36 DC
	and $DC.b,X		; 35 DC
	bit $DC.b,X		; 34 DC
	and ($DC.b,S),Y		; 33 DC
	and ($DC.b)		; 32 DC
	and ($DC.b),Y		; 31 DC
	ora $DC30FF.l		; 0F FF 30 DC
	and $C22EDC.l		; 2F DC 2E C2
	jmp.w [$9C1D]		; DC 1D 9C
	asl $1F9C.w,X		; 1E 9C 1F
	stz $FFFF.w		; 9C FF FF
	jsr $219C.w		; 20 9C 21
	stz $9C22.w		; 9C 22 9C
	and $9C.b,S		; 23 9C
	bit $9C.b		; 24 9C
	and $9C.b		; 25 9C
	rol $9C.b		; 26 9C
	and [$9C.b]		; 27 9C
	sbc $9C28F0.l,X		; FF F0 28 9C
	and #$2A9C.w		; 29 9C 2A
	stz $9C2B.w		; 9C 2B 9C
	bit $DCFE.w		; 2C FE DC
	pld		; 2B
	jmp.w [$FFFF]		; DC FF FF
	rol A		; 2A
	jmp.w [$DC29]		; DC 29 DC
	plp		; 28
	jmp.w [$DC27]		; DC 27 DC
	rol $DC.b		; 26 DC
	and $DC.b		; 25 DC
	bit $DC.b		; 24 DC
	and $DC.b,S		; 23 DC
	sbc $DC22F0.l,X		; FF F0 22 DC
	and ($DC.b,X)		; 21 DC
	jsr $1FDC.w		; 20 DC 1F
	jmp.w [$C21E]		; DC 1E C2
	jmp.w [$9C14]		; DC 14 9C
	lda $9C157F.l,X		; BF 7F 15 9C
	asl $9C.b,X		; 16 9C
	ora [$9C.b],Y		; 17 9C
	clc		; 18
	inc $0EF8.w,X		; FE F8 0E
	ora $1A9C.w,Y		; 19 9C 1A
	stz $9C1B.w		; 9C 1B 9C
	trb $FBF8.w		; 1C F8 FB
	inc $1BDC.w,X		; FE DC 1B
	jmp.w [$DC1A]		; DC 1A DC
	ora $E0DC.w,Y		; 19 DC E0
	sed		; F8
	ora $16DC17.l		; 0F 17 DC 16
	sbc ($DF.b,X)		; E1 DF
	jmp.w [$C215]		; DC 15 C2
	jmp.w [$9C0D]		; DC 0D 9C
	asl $0F9C.w		; 0E 9C 0F
	stz $FE10.w		; 9C 10 FE
	sed		; F8
	ora ($0F.b)		; 12 0F
	lda $129C11.l,X		; BF 11 9C 12
	stz $FE13.w		; 9C 13 FE
	jmp.w [$DC12]		; DC 12 DC
	ora ($DC.b),Y		; 11 DC
	bpl -121.b		; 10 87
	adc $12F8FE.l,X		; 7F FE F8 12
	ora $C20EDC.l		; 0F DC 0E C2
	jmp.w [$9C06]		; DC 06 9C
	ora [$9C.b]		; 07 9C
	php		; 08
	stz $3F09.w		; 9C 09 3F
	jsr ($F8FE.w,X)		; FC FE F8
	ora ($0A.b)		; 12 0A
	stz $9C0B.w		; 9C 0B 9C
	tsb $DCFE.w		; 0C FE DC
	phd		; 0B
	jmp.w [$DC0A]		; DC 0A DC
	asl $092E.w,X		; 1E 2E 09
	inc $12F8.w,X		; FE F8 12
	php		; 08
	jmp.w [$C207]		; DC 07 C2
	jmp.w [$9C05]		; DC 05 9C
	inc $1EF8.w,X		; FE F8 1E
	clv		; B8
	cpx #$DE.b		; E0 DE
	inc $1CF8.w,X		; FE F8 1C
	tsb $9C.b		; 04 9C
	inc $1EF8.w,X		; FE F8 1E
	dec $F8FE.w,X		; DE FE F8
	trb $8203.w		; 1C 03 82
	phd		; 0B
	stz $F8FE.w		; 9C FE F8
	asl $FEDE.w,X		; 1E DE FE
	sed		; F8
	trb $9C02.w		; 1C 02 9C
	inc $1EF8.w,X		; FE F8 1E
	ror $DEBB.w		; 6E BB DE
	inc $1CF8.w,X		; FE F8 1C
	ora ($1C.b,X)		; 01 1C
	inc $7DF8.w,X		; FE F8 7D
	cop $FE.b		; 02 FE
	sed		; F8
	ora $F8FE5C.l,X		; 1F 5C FE F8
	ora $1C03.w,X		; 1D 03 1C
	cpx #$82.b		; E0 82
	inc $1EF8.w,X		; FE F8 1E
	dec $F8FE.w,X		; DE FE F8
	trb $1C04.w		; 1C 04 1C
	inc $1EF8.w,X		; FE F8 1E
	dec $FE0B.w,X		; DE 0B FE
	inc $1CF8.w,X		; FE F8 1C
	ora $1C.b		; 05 1C
	inc $1EF8.w,X		; FE F8 1E
	dec $F8FE.w,X		; DE FE F8
	trb $1C06.w		; 1C 06 1C
	ora [$1C.b]		; 07 1C
	php		; 08
	sbc $1CF0.w,X		; FD F0 1C
	ora #$F8FE.w		; 09 FE F8
	ora ($0A.b)		; 12 0A
	trb $1C0B.w		; 1C 0B 1C
	tsb $5CFE.w		; 0C FE 5C
	phd		; 0B
	jmp $0AF87B.l		; 5C 7B F8 0A
	jmp $F8FE09.l		; 5C 09 FE F8
	ora ($08.b)		; 12 08
	jmp $5CC207.l		; 5C 07 C2 5C
	ora $0E1C.w		; 0D 1C 0E
	sbc [$C3.b],Y		; F7 C3
	trb $1C0F.w		; 1C 0F 1C
	bpl  -2.b		; 10 FE
	sed		; F8
	ora ($11.b)		; 12 11
	trb $1C12.w		; 1C 12 1C
	ora ($FE.b,S),Y		; 13 FE
	jmp $12E1EF.l		; 5C EF E1 12
	jmp $105C11.l		; 5C 11 5C 10
	inc $12F8.w,X		; FE F8 12
	ora $C20E5C.l		; 0F 5C 0E C2
	jmp $7F7F14.l		; 5C 14 7F 7F
	trb $1C15.w		; 1C 15 1C
	asl $1C.b,X		; 16 1C
	ora [$1C.b],Y		; 17 1C
	clc		; 18
	inc $0EF8.w,X		; FE F8 0E
	ora $1A1C.w,Y		; 19 1C 1A
	trb $1C1B.w		; 1C 1B 1C
	jsr ($FFF7.w,X)		; FC F7 FF
	jmp $1A5C1B.l		; 5C 1B 5C 1A
	jmp $185C19.l		; 5C 19 5C 18
	inc $0EF8.w,X		; FE F8 0E
	ora [$5C.b],Y		; 17 5C
	cmp $FF.b,S		; C3 FF
	asl $5C.b,X		; 16 5C
	ora $C2.b,X		; 15 C2
	jmp $1E1C1D.l		; 5C 1D 1C 1E
	trb $1C1F.w		; 1C 1F 1C
	jsr $FF1C.w		; 20 1C FF
	sbc $221C21.l,X		; FF 21 1C 22
	trb $1C23.w		; 1C 23 1C
	bit $1C.b		; 24 1C
	and $1C.b		; 25 1C
	rol $1C.b		; 26 1C
	and [$1C.b]		; 27 1C
	plp		; 28
	trb $FC3F.w		; 1C 3F FC
	and #$2A1C.w		; 29 1C 2A
	trb $1C2B.w		; 1C 2B 1C
	bit $5CFE.w		; 2C FE 5C
	pld		; 2B
	jmp $FF5C2A.l		; 5C 2A 5C FF
	sbc $285C29.l,X		; FF 29 5C 28
	jmp $265C27.l		; 5C 27 5C 26
	jmp $245C25.l		; 5C 25 5C 24
	jmp $225C23.l		; 5C 23 5C 22
	jmp $21FC3F.l		; 5C 3F FC 21
	jmp $1F5C20.l		; 5C 20 5C 1F
	jmp $5CC21E.l		; 5C 1E C2 5C
	and $2E1C.w		; 2D 1C 2E
	trb $FFFF.w		; 1C FF FF
	and $1C301C.l		; 2F 1C 30 1C
	and ($1C.b),Y		; 31 1C
	and ($1C.b)		; 32 1C
	and ($1C.b,S),Y		; 33 1C
	bit $1C.b,X		; 34 1C
	and $1C.b,X		; 35 1C
	rol $1C.b,X		; 36 1C
	sbc $1C37C3.l,X		; FF C3 37 1C
	sec		; 38
	trb $1C39.w		; 1C 39 1C
	dec A		; 3A
	trb $1C3B.w		; 1C 3B 1C
	bit $5CFE.w,X		; 3C FE 5C
	sbc $5C3BFF.l,X		; FF FF 3B 5C
	dec A		; 3A
	jmp $385C39.l		; 5C 39 5C 38
	jmp $365C37.l		; 5C 37 5C 36
	jmp $345C35.l		; 5C 35 5C 34
	jmp $33C3FF.l		; 5C FF C3 33
	jmp $315C32.l		; 5C 32 5C 31
	jmp $2F5C30.l		; 5C 30 5C 2F
	jmp $5CC22E.l		; 5C 2E C2 5C
	sbc $1C3DFF.l,X		; FF FF 3D 1C
	rol $3F1C.w,X		; 3E 1C 3F
	trb $1C40.w		; 1C 40 1C
	eor ($1C.b,X)		; 41 1C
	.db $42, $1C		; 42 1C
	eor $1C.b,S		; 43 1C
	mvp $FF,$1C		; 44 1C FF
	and $461C45.l,X		; 3F 45 1C 46
	trb $1C47.w		; 1C 47 1C
	pha		; 48
	trb $1C49.w		; 1C 49 1C
	lsr A		; 4A
	trb $1C4B.w		; 1C 4B 1C
	jmp $FFFC.w		; 4C FC FF
	inc $4B5C.w,X		; FE 5C 4B
	jmp $495C4A.l		; 5C 4A 5C 49
	jmp $475C48.l		; 5C 48 5C 47
	jmp $FF5C46.l		; 5C 46 5C FF
	and $445C45.l,X		; 3F 45 5C 44
	jmp $425C43.l		; 5C 43 5C 42
	jmp $405C41.l		; 5C 41 5C 40
	jmp $3E5C3F.l		; 5C 3F 5C 3E
	jsr ($C2FF.w,X)		; FC FF C2
	jmp $4E1C4D.l		; 5C 4D 1C 4E
	trb $1C4F.w		; 1C 4F 1C
	bvc  28.b		; 50 1C
	eor ($1C.b),Y		; 51 1C
	eor ($1C.b)		; 52 1C
	sbc $1C53FF.l,X		; FF FF 53 1C
	mvn $55,$1C		; 54 1C 55
	trb $1C56.w		; 1C 56 1C
	eor [$1C.b],Y		; 57 1C
	cli		; 58
	trb $1C59.w		; 1C 59 1C
	phy		; 5A
	trb $FF00.w		; 1C 00 FF
	tad		; 5B
	ora $FE.b,S		; 03 FE
	jmp $5A5C5B.l		; 5C 5B 5C 5A
	jmp $FF5C59.l		; 5C 59 5C FF
	sbc $575C58.l,X		; FF 58 5C 57
	jmp $555C56.l		; 5C 56 5C 55
	jmp $535C54.l		; 5C 54 5C 53
	jmp $515C52.l		; 5C 52 5C 51
	jmp $50FF0F.l		; 5C 0F FF 50
	jmp $4E5C4F.l		; 5C 4F 5C 4E
.INDEX 16
	rep #$5C		; C2 5C
	eor $5E1C.w,X		; 5D 1C 5E
	trb $1C5F.w		; 1C 5F 1C
	sbc $1C60FF.l,X		; FF FF 60 1C
	adc ($1C.b,X)		; 61 1C
	.db $62, $1C, $63		; 62 1C 63
	trb $1C64.w		; 1C 64 1C
	adc $1C.b		; 65 1C
	ror $1C.b		; 66 1C
	adc [$1C.b]		; 67 1C
	sbc $1C68F0.l,X		; FF F0 68 1C
	adc #$6A1C.w		; 69 1C 6A
	trb $1C6B.w		; 1C 6B 1C
	jmp ($5CFE.w)		; 6C FE 5C
	rtl		; 6B

	jmp $6AFFFF.l		; 5C FF FF 6A
	jmp $685C69.l		; 5C 69 5C 68
	jmp $665C67.l		; 5C 67 5C 66
	jmp $645C65.l		; 5C 65 5C 64
	jmp $FF5C63.l		; 5C 63 5C FF
	beq  98.b		; F0 62
	jmp $605C61.l		; 5C 61 5C 60
	jmp $5E5C5F.l		; 5C 5F 5C 5E
.INDEX 16
	rep #$5C		; C2 5C
	adc $FF1C.w		; 6D 1C FF
	sbc $6F1C6E.l,X		; FF 6E 1C 6F
	trb $1C70.w		; 1C 70 1C
	adc ($1C.b),Y		; 71 1C
	adc ($1C.b)		; 72 1C
	adc ($1C.b,S),Y		; 73 1C
	stz $1C.b,X		; 74 1C
	adc $1C.b,X		; 75 1C
	sbc $1C760F.l,X		; FF 0F 76 1C
	adc [$1C.b],Y		; 77 1C
	sei		; 78
	trb $1C79.w		; 1C 79 1C
	ply		; 7A
	trb $1C7B.w		; 1C 7B 1C
	jmp ($FFFF.w,X)		; 7C FF FF
	inc $7B5C.w,X		; FE 5C 7B
	jmp $795C7A.l		; 5C 7A 5C 79
	jmp $775C78.l		; 5C 78 5C 77
	jmp $755C76.l		; 5C 76 5C 75
	jmp $740FFF.l		; 5C FF 0F 74
	jmp $725C73.l		; 5C 73 5C 72
	jmp $705C71.l		; 5C 71 5C 70
	jmp $6E5C6F.l		; 5C 6F 5C 6E
	sbc $5CC2FF.l,X		; FF FF C2 5C
	adc $7E1C.w,X		; 7D 1C 7E
	trb $1C7F.w		; 1C 7F 1C
	bra  28.b		; 80 1C
	sta ($1C.b,X)		; 81 1C
	.db $82, $1C, $83		; 82 1C 83
	trb $FFFF.w		; 1C FF FF
	sty $1C.b		; 84 1C
	sta $1C.b		; 85 1C
	stx $1C.b		; 86 1C
	sta [$1C.b]		; 87 1C
	dey		; 88
	trb $1C89.w		; 1C 89 1C
	txa		; 8A
	trb $1C8B.w		; 1C 8B 1C
	beq  -1.b		; F0 FF
	sty $5CFE.w		; 8C FE 5C
	phb		; 8B
	jmp $895C8A.l		; 5C 8A 5C 89
	jmp $875C88.l		; 5C 88 5C 87
	jmp $86FFFF.l		; 5C FF FF 86
	jmp $845C85.l		; 5C 85 5C 84
	jmp $825C83.l		; 5C 83 5C 82
	jmp $805C81.l		; 5C 81 5C 80
	jmp $F05C7F.l		; 5C 7F 5C F0
	sbc $5CC27E.l,X		; FF 7E C2 5C
	sta $8E1C.w		; 8D 1C 8E
	trb $1C8F.w		; 1C 8F 1C
	bcc  28.b		; 90 1C
	sta ($1C.b),Y		; 91 1C
	sbc $1C92FF.l,X		; FF FF 92 1C
	sta ($1C.b,S),Y		; 93 1C
	sty $1C.b,X		; 94 1C
	sta $1C.b,X		; 95 1C
	stx $1C.b,Y		; 96 1C
	sta [$1C.b],Y		; 97 1C
	tya		; 98
	trb $1C99.w		; 1C 99 1C
	xce		; FB
	sbc $9B1C9A.l,X		; FF 9A 1C 9B
	eor ($D1.b,X)		; 41 D1
	stz $9B5C.w		; 9C 5C 9B
	jmp $995C9A.l		; 5C 9A 5C 99
	jmp $975C98.l		; 5C 98 5C 97
	sbc $965CFF.l,X		; FF FF 5C 96
	jmp $945C95.l		; 5C 95 5C 94
	jmp $925C93.l		; 5C 93 5C 92
	jmp $905C91.l		; 5C 91 5C 90
	jmp $00A18F.l		; 5C 8F A1 00
	jmp $5CC28E.l		; 5C 8E C2 5C
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	ora ($24.b),Y		; 11 24
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	and ($01.b,X)		; 21 01
	and ($04.b,X)		; 21 04
	and ($05.b,X)		; 21 05
	and ($08.b,X)		; 21 08
	and ($09.b,X)		; 21 09
	and ($0C.b,X)		; 21 0C
	and ($0D.b,X)		; 21 0D
	and ($10.b,X)		; 21 10
	and ($11.b,X)		; 21 11
	and ($14.b,X)		; 21 14
	and ($15.b,X)		; 21 15
	and ($18.b,X)		; 21 18
	and ($19.b,X)		; 21 19
	and ($1C.b,X)		; 21 1C
	and ($1D.b,X)		; 21 1D
	and ($20.b,X)		; 21 20
	and ($21.b,X)		; 21 21
	and ($02.b,X)		; 21 02
	and ($03.b,X)		; 21 03
	and ($06.b,X)		; 21 06
	and ($07.b,X)		; 21 07
	and ($0A.b,X)		; 21 0A
	and ($0B.b,X)		; 21 0B
	and ($0E.b,X)		; 21 0E
	and ($0F.b,X)		; 21 0F
	and ($12.b,X)		; 21 12
	and ($13.b,X)		; 21 13
	and ($16.b,X)		; 21 16
	and ($17.b,X)		; 21 17
	and ($1A.b,X)		; 21 1A
	and ($1B.b,X)		; 21 1B
	and ($1E.b,X)		; 21 1E
	and ($1F.b,X)		; 21 1F
	and ($22.b,X)		; 21 22
	and ($23.b,X)		; 21 23
	and ($24.b,X)		; 21 24
	and ($25.b,X)		; 21 25
	and ($28.b,X)		; 21 28
	and ($29.b,X)		; 21 29
	and ($2C.b,X)		; 21 2C
	and ($2D.b,X)		; 21 2D
	and ($30.b,X)		; 21 30
	and ($31.b,X)		; 21 31
	and ($34.b,X)		; 21 34
	and ($35.b,X)		; 21 35
	and ($38.b,X)		; 21 38
	and ($39.b,X)		; 21 39
	and ($3C.b,X)		; 21 3C
	and ($3D.b,X)		; 21 3D
	and ($40.b,X)		; 21 40
	and ($41.b,X)		; 21 41
	and ($44.b,X)		; 21 44
	and ($45.b,X)		; 21 45
	and ($26.b,X)		; 21 26
	and ($27.b,X)		; 21 27
	and ($2A.b,X)		; 21 2A
	and ($2B.b,X)		; 21 2B
	and ($2E.b,X)		; 21 2E
	and ($2F.b,X)		; 21 2F
	and ($32.b,X)		; 21 32
	and ($33.b,X)		; 21 33
	and ($36.b,X)		; 21 36
	and ($37.b,X)		; 21 37
	and ($3A.b,X)		; 21 3A
	and ($3B.b,X)		; 21 3B
	and ($3E.b,X)		; 21 3E
	and ($3F.b,X)		; 21 3F
	and ($42.b,X)		; 21 42
	and ($43.b,X)		; 21 43
	and ($46.b,X)		; 21 46
	and ($47.b,X)		; 21 47
	and ($48.b,X)		; 21 48
	and ($49.b,X)		; 21 49
	and ($4C.b,X)		; 21 4C
	and ($4D.b,X)		; 21 4D
	and ($50.b,X)		; 21 50
	and ($51.b,X)		; 21 51
	and ($54.b,X)		; 21 54
	and ($55.b,X)		; 21 55
	and ($58.b,X)		; 21 58
	and ($59.b,X)		; 21 59
	and ($5C.b,X)		; 21 5C
	and ($5D.b,X)		; 21 5D
	and ($60.b,X)		; 21 60
	and ($61.b,X)		; 21 61
	and ($64.b,X)		; 21 64
	and ($65.b,X)		; 21 65
	and ($68.b,X)		; 21 68
	and ($69.b,X)		; 21 69
	and ($4A.b,X)		; 21 4A
	and ($4B.b,X)		; 21 4B
	and ($4E.b,X)		; 21 4E
	and ($4F.b,X)		; 21 4F
	and ($52.b,X)		; 21 52
	and ($53.b,X)		; 21 53
	and ($56.b,X)		; 21 56
	and ($57.b,X)		; 21 57
	and ($5A.b,X)		; 21 5A
	and ($5B.b,X)		; 21 5B
	and ($5E.b,X)		; 21 5E
	and ($5F.b,X)		; 21 5F
	and ($62.b,X)		; 21 62
	and ($63.b,X)		; 21 63
	and ($66.b,X)		; 21 66
	and ($67.b,X)		; 21 67
	and ($6A.b,X)		; 21 6A
	and ($6B.b,X)		; 21 6B
	and ($42.b,X)		; 21 42
	ora ($24.b)		; 12 24
	brk $06.b		; 00 06
	brk $6C.b		; 00 6C
	and ($6D.b,X)		; 21 6D
	and ($70.b,X)		; 21 70
	and ($71.b,X)		; 21 71
	and ($74.b,X)		; 21 74
	and ($75.b,X)		; 21 75
	and ($78.b,X)		; 21 78
	and ($79.b,X)		; 21 79
	and ($7C.b,X)		; 21 7C
	and ($7D.b,X)		; 21 7D
	and ($80.b,X)		; 21 80
	and ($81.b,X)		; 21 81
	and ($84.b,X)		; 21 84
	and ($85.b,X)		; 21 85
	and ($88.b,X)		; 21 88
	and ($89.b,X)		; 21 89
	and ($8C.b,X)		; 21 8C
	and ($8D.b,X)		; 21 8D
	and ($6E.b,X)		; 21 6E
	and ($6F.b,X)		; 21 6F
	and ($72.b,X)		; 21 72
	and ($73.b,X)		; 21 73
	and ($76.b,X)		; 21 76
	and ($77.b,X)		; 21 77
	and ($7A.b,X)		; 21 7A
	and ($7B.b,X)		; 21 7B
	and ($7E.b,X)		; 21 7E
	and ($7F.b,X)		; 21 7F
	and ($82.b,X)		; 21 82
	and ($83.b,X)		; 21 83
	and ($86.b,X)		; 21 86
	and ($87.b,X)		; 21 87
	and ($8A.b,X)		; 21 8A
	and ($8B.b,X)		; 21 8B
	and ($8E.b,X)		; 21 8E
	and ($8F.b,X)		; 21 8F
	and ($90.b,X)		; 21 90
	and ($91.b,X)		; 21 91
	and ($94.b,X)		; 21 94
	and ($95.b,X)		; 21 95
	and ($98.b,X)		; 21 98
	and ($99.b,X)		; 21 99
	and ($9C.b,X)		; 21 9C
	and ($9D.b,X)		; 21 9D
	and ($A0.b,X)		; 21 A0
	and ($A1.b,X)		; 21 A1
	and ($A4.b,X)		; 21 A4
	and ($A5.b,X)		; 21 A5
	and ($A8.b,X)		; 21 A8
	and ($A9.b,X)		; 21 A9
	and ($AC.b,X)		; 21 AC
	and ($AD.b,X)		; 21 AD
	and ($B0.b,X)		; 21 B0
	and ($B1.b,X)		; 21 B1
	and ($92.b,X)		; 21 92
	and ($93.b,X)		; 21 93
	and ($96.b,X)		; 21 96
	and ($97.b,X)		; 21 97
	and ($9A.b,X)		; 21 9A
	and ($9B.b,X)		; 21 9B
	and ($9E.b,X)		; 21 9E
	and ($9F.b,X)		; 21 9F
	and ($A2.b,X)		; 21 A2
	and ($A3.b,X)		; 21 A3
	and ($A6.b,X)		; 21 A6
	and ($A7.b,X)		; 21 A7
	and ($AA.b,X)		; 21 AA
	and ($AB.b,X)		; 21 AB
	and ($AE.b,X)		; 21 AE
	and ($AF.b,X)		; 21 AF
	and ($B2.b,X)		; 21 B2
	and ($B3.b,X)		; 21 B3
	and ($B4.b,X)		; 21 B4
	and ($B5.b,X)		; 21 B5
	and ($B8.b,X)		; 21 B8
	and ($B9.b,X)		; 21 B9
	and ($BC.b,X)		; 21 BC
	and ($BD.b,X)		; 21 BD
	and ($C0.b,X)		; 21 C0
	and ($C1.b,X)		; 21 C1
	and ($C4.b,X)		; 21 C4
	and ($C5.b,X)		; 21 C5
	and ($C8.b,X)		; 21 C8
	and ($C9.b,X)		; 21 C9
	and ($CC.b,X)		; 21 CC
	and ($CD.b,X)		; 21 CD
	and ($D0.b,X)		; 21 D0
	and ($D1.b,X)		; 21 D1
	and ($D4.b,X)		; 21 D4
	and ($D5.b,X)		; 21 D5
	and ($B6.b,X)		; 21 B6
	and ($B7.b,X)		; 21 B7
	and ($BA.b,X)		; 21 BA
	and ($BB.b,X)		; 21 BB
	and ($BE.b,X)		; 21 BE
	and ($BF.b,X)		; 21 BF
	and ($C2.b,X)		; 21 C2
	and ($C3.b,X)		; 21 C3
	and ($C6.b,X)		; 21 C6
	and ($C7.b,X)		; 21 C7
	and ($CA.b,X)		; 21 CA
	and ($CB.b,X)		; 21 CB
	and ($CE.b,X)		; 21 CE
	and ($CF.b,X)		; 21 CF
	and ($D2.b,X)		; 21 D2
	and ($D3.b,X)		; 21 D3
	and ($D6.b,X)		; 21 D6
	and ($D7.b,X)		; 21 D7
	and ($CA.b,X)		; 21 CA
	ora ($3C.b)		; 12 3C
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	and ($01.b,X)		; 21 01
	and ($04.b,X)		; 21 04
	and ($05.b,X)		; 21 05
	and ($08.b,X)		; 21 08
	and ($09.b,X)		; 21 09
	and ($0C.b,X)		; 21 0C
	and ($0D.b,X)		; 21 0D
	and ($10.b,X)		; 21 10
	and ($11.b,X)		; 21 11
	and ($14.b,X)		; 21 14
	and ($15.b,X)		; 21 15
	and ($18.b,X)		; 21 18
	and ($19.b,X)		; 21 19
	and ($1C.b,X)		; 21 1C
	and ($1D.b,X)		; 21 1D
	and ($20.b,X)		; 21 20
	and ($21.b,X)		; 21 21
	and ($24.b,X)		; 21 24
	and ($25.b,X)		; 21 25
	and ($28.b,X)		; 21 28
	and ($29.b,X)		; 21 29
	and ($2C.b,X)		; 21 2C
	and ($2D.b,X)		; 21 2D
	and ($30.b,X)		; 21 30
	and ($31.b,X)		; 21 31
	and ($34.b,X)		; 21 34
	and ($35.b,X)		; 21 35
	and ($38.b,X)		; 21 38
	and ($39.b,X)		; 21 39
	and ($02.b,X)		; 21 02
	and ($03.b,X)		; 21 03
	and ($06.b,X)		; 21 06
	and ($07.b,X)		; 21 07
	and ($0A.b,X)		; 21 0A
	and ($0B.b,X)		; 21 0B
	and ($0E.b,X)		; 21 0E
	and ($0F.b,X)		; 21 0F
	and ($12.b,X)		; 21 12
	and ($13.b,X)		; 21 13
	and ($16.b,X)		; 21 16
	and ($17.b,X)		; 21 17
	and ($1A.b,X)		; 21 1A
	and ($1B.b,X)		; 21 1B
	and ($1E.b,X)		; 21 1E
	and ($1F.b,X)		; 21 1F
	and ($22.b,X)		; 21 22
	and ($23.b,X)		; 21 23
	and ($26.b,X)		; 21 26
	and ($27.b,X)		; 21 27
	and ($2A.b,X)		; 21 2A
	and ($2B.b,X)		; 21 2B
	and ($2E.b,X)		; 21 2E
	and ($2F.b,X)		; 21 2F
	and ($32.b,X)		; 21 32
	and ($33.b,X)		; 21 33
	and ($36.b,X)		; 21 36
	and ($37.b,X)		; 21 37
	and ($3A.b,X)		; 21 3A
	and ($3B.b,X)		; 21 3B
	and ($3C.b,X)		; 21 3C
	and ($3D.b,X)		; 21 3D
	and ($40.b,X)		; 21 40
	and ($41.b,X)		; 21 41
	and ($44.b,X)		; 21 44
	and ($45.b,X)		; 21 45
	and ($48.b,X)		; 21 48
	and ($49.b,X)		; 21 49
	and ($4C.b,X)		; 21 4C
	and ($4D.b,X)		; 21 4D
	and ($50.b,X)		; 21 50
	and ($51.b,X)		; 21 51
	and ($54.b,X)		; 21 54
	and ($55.b,X)		; 21 55
	and ($58.b,X)		; 21 58
	and ($59.b,X)		; 21 59
	and ($5C.b,X)		; 21 5C
	and ($5D.b,X)		; 21 5D
	and ($60.b,X)		; 21 60
	and ($61.b,X)		; 21 61
	and ($64.b,X)		; 21 64
	and ($65.b,X)		; 21 65
	and ($68.b,X)		; 21 68
	and ($69.b,X)		; 21 69
	and ($6C.b,X)		; 21 6C
	and ($6D.b,X)		; 21 6D
	and ($70.b,X)		; 21 70
	and ($71.b,X)		; 21 71
	and ($74.b,X)		; 21 74
	and ($75.b,X)		; 21 75
	and ($3E.b,X)		; 21 3E
	and ($3F.b,X)		; 21 3F
	and ($42.b,X)		; 21 42
	and ($43.b,X)		; 21 43
	and ($46.b,X)		; 21 46
	and ($47.b,X)		; 21 47
	and ($4A.b,X)		; 21 4A
	and ($4B.b,X)		; 21 4B
	and ($4E.b,X)		; 21 4E
	and ($4F.b,X)		; 21 4F
	and ($52.b,X)		; 21 52
	and ($53.b,X)		; 21 53
	and ($56.b,X)		; 21 56
	and ($57.b,X)		; 21 57
	and ($5A.b,X)		; 21 5A
	and ($5B.b,X)		; 21 5B
	and ($5E.b,X)		; 21 5E
	and ($5F.b,X)		; 21 5F
	and ($62.b,X)		; 21 62
	and ($63.b,X)		; 21 63
	and ($66.b,X)		; 21 66
	and ($67.b,X)		; 21 67
	and ($6A.b,X)		; 21 6A
	and ($6B.b,X)		; 21 6B
	and ($6E.b,X)		; 21 6E
	and ($6F.b,X)		; 21 6F
	and ($72.b,X)		; 21 72
	and ($73.b,X)		; 21 73
	and ($76.b,X)		; 21 76
	and ($77.b,X)		; 21 77
	and ($78.b,X)		; 21 78
	and ($79.b,X)		; 21 79
	and ($7C.b,X)		; 21 7C
	and ($7D.b,X)		; 21 7D
	and ($80.b,X)		; 21 80
	and ($81.b,X)		; 21 81
	and ($84.b,X)		; 21 84
	and ($85.b,X)		; 21 85
	and ($88.b,X)		; 21 88
	and ($89.b,X)		; 21 89
	and ($8C.b,X)		; 21 8C
	and ($8D.b,X)		; 21 8D
	and ($90.b,X)		; 21 90
	and ($91.b,X)		; 21 91
	and ($94.b,X)		; 21 94
	and ($95.b,X)		; 21 95
	and ($98.b,X)		; 21 98
	and ($99.b,X)		; 21 99
	and ($9C.b,X)		; 21 9C
	and ($9D.b,X)		; 21 9D
	and ($A0.b,X)		; 21 A0
	and ($A1.b,X)		; 21 A1
	and ($A4.b,X)		; 21 A4
	and ($A5.b,X)		; 21 A5
	and ($A8.b,X)		; 21 A8
	and ($A9.b,X)		; 21 A9
	and ($AC.b,X)		; 21 AC
	and ($AD.b,X)		; 21 AD
	and ($B0.b,X)		; 21 B0
	and ($B1.b,X)		; 21 B1
	and ($7A.b,X)		; 21 7A
	and ($7B.b,X)		; 21 7B
	and ($7E.b,X)		; 21 7E
	and ($7F.b,X)		; 21 7F
	and ($82.b,X)		; 21 82
	and ($83.b,X)		; 21 83
	and ($86.b,X)		; 21 86
	and ($87.b,X)		; 21 87
	and ($8A.b,X)		; 21 8A
	and ($8B.b,X)		; 21 8B
	and ($8E.b,X)		; 21 8E
	and ($8F.b,X)		; 21 8F
	and ($92.b,X)		; 21 92
	and ($93.b,X)		; 21 93
	and ($96.b,X)		; 21 96
	and ($97.b,X)		; 21 97
	and ($9A.b,X)		; 21 9A
	and ($9B.b,X)		; 21 9B
	and ($9E.b,X)		; 21 9E
	and ($9F.b,X)		; 21 9F
	and ($A2.b,X)		; 21 A2
	and ($A3.b,X)		; 21 A3
	and ($A6.b,X)		; 21 A6
	and ($A7.b,X)		; 21 A7
	and ($AA.b,X)		; 21 AA
	and ($AB.b,X)		; 21 AB
	and ($AE.b,X)		; 21 AE
	and ($AF.b,X)		; 21 AF
	and ($B2.b,X)		; 21 B2
	and ($B3.b,X)		; 21 B3
	and ($82.b,X)		; 21 82
	ora ($3C.b)		; 12 3C
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	and ($01.b,X)		; 21 01
	and ($04.b,X)		; 21 04
	and ($05.b,X)		; 21 05
	and ($08.b,X)		; 21 08
	and ($09.b,X)		; 21 09
	and ($0C.b,X)		; 21 0C
	and ($0D.b,X)		; 21 0D
	and ($10.b,X)		; 21 10
	and ($11.b,X)		; 21 11
	and ($14.b,X)		; 21 14
	and ($15.b,X)		; 21 15
	and ($18.b,X)		; 21 18
	and ($19.b,X)		; 21 19
	and ($1C.b,X)		; 21 1C
	and ($1D.b,X)		; 21 1D
	and ($20.b,X)		; 21 20
	and ($21.b,X)		; 21 21
	and ($24.b,X)		; 21 24
	and ($25.b,X)		; 21 25
	and ($28.b,X)		; 21 28
	and ($29.b,X)		; 21 29
	and ($2C.b,X)		; 21 2C
	and ($2D.b,X)		; 21 2D
	and ($30.b,X)		; 21 30
	and ($31.b,X)		; 21 31
	and ($34.b,X)		; 21 34
	and ($35.b,X)		; 21 35
	and ($38.b,X)		; 21 38
	and ($39.b,X)		; 21 39
	and ($02.b,X)		; 21 02
	and ($03.b,X)		; 21 03
	and ($06.b,X)		; 21 06
	and ($07.b,X)		; 21 07
	and ($0A.b,X)		; 21 0A
	and ($0B.b,X)		; 21 0B
	and ($0E.b,X)		; 21 0E
	and ($0F.b,X)		; 21 0F
	and ($12.b,X)		; 21 12
	and ($13.b,X)		; 21 13
	and ($16.b,X)		; 21 16
	and ($17.b,X)		; 21 17
	and ($1A.b,X)		; 21 1A
	and ($1B.b,X)		; 21 1B
	and ($1E.b,X)		; 21 1E
	and ($1F.b,X)		; 21 1F
	and ($22.b,X)		; 21 22
	and ($23.b,X)		; 21 23
	and ($26.b,X)		; 21 26
	and ($27.b,X)		; 21 27
	and ($2A.b,X)		; 21 2A
	and ($2B.b,X)		; 21 2B
	and ($2E.b,X)		; 21 2E
	and ($2F.b,X)		; 21 2F
	and ($32.b,X)		; 21 32
	and ($33.b,X)		; 21 33
	and ($36.b,X)		; 21 36
	and ($37.b,X)		; 21 37
	and ($3A.b,X)		; 21 3A
	and ($3B.b,X)		; 21 3B
	and ($3C.b,X)		; 21 3C
	and ($3D.b,X)		; 21 3D
	and ($40.b,X)		; 21 40
	and ($41.b,X)		; 21 41
	and ($44.b,X)		; 21 44
	and ($45.b,X)		; 21 45
	and ($48.b,X)		; 21 48
	and ($49.b,X)		; 21 49
	and ($4C.b,X)		; 21 4C
	and ($4D.b,X)		; 21 4D
	and ($50.b,X)		; 21 50
	and ($51.b,X)		; 21 51
	and ($54.b,X)		; 21 54
	and ($55.b,X)		; 21 55
	and ($58.b,X)		; 21 58
	and ($59.b,X)		; 21 59
	and ($5C.b,X)		; 21 5C
	and ($5D.b,X)		; 21 5D
	and ($60.b,X)		; 21 60
	and ($61.b,X)		; 21 61
	and ($64.b,X)		; 21 64
	and ($65.b,X)		; 21 65
	and ($68.b,X)		; 21 68
	and ($69.b,X)		; 21 69
	and ($6C.b,X)		; 21 6C
	and ($6D.b,X)		; 21 6D
	and ($70.b,X)		; 21 70
	and ($71.b,X)		; 21 71
	and ($74.b,X)		; 21 74
	and ($75.b,X)		; 21 75
	and ($3E.b,X)		; 21 3E
	and ($3F.b,X)		; 21 3F
	and ($42.b,X)		; 21 42
	and ($43.b,X)		; 21 43
	and ($46.b,X)		; 21 46
	and ($47.b,X)		; 21 47
	and ($4A.b,X)		; 21 4A
	and ($4B.b,X)		; 21 4B
	and ($4E.b,X)		; 21 4E
	and ($4F.b,X)		; 21 4F
	and ($52.b,X)		; 21 52
	and ($53.b,X)		; 21 53
	and ($56.b,X)		; 21 56
	and ($57.b,X)		; 21 57
	and ($5A.b,X)		; 21 5A
	and ($5B.b,X)		; 21 5B
	and ($5E.b,X)		; 21 5E
	and ($5F.b,X)		; 21 5F
	and ($62.b,X)		; 21 62
	and ($63.b,X)		; 21 63
	and ($66.b,X)		; 21 66
	and ($67.b,X)		; 21 67
	and ($6A.b,X)		; 21 6A
	and ($6B.b,X)		; 21 6B
	and ($6E.b,X)		; 21 6E
	and ($6F.b,X)		; 21 6F
	and ($72.b,X)		; 21 72
	and ($73.b,X)		; 21 73
	and ($76.b,X)		; 21 76
	and ($77.b,X)		; 21 77
	and ($78.b,X)		; 21 78
	and ($79.b,X)		; 21 79
	and ($7C.b,X)		; 21 7C
	and ($7D.b,X)		; 21 7D
	and ($80.b,X)		; 21 80
	and ($81.b,X)		; 21 81
	and ($84.b,X)		; 21 84
	and ($85.b,X)		; 21 85
	and ($88.b,X)		; 21 88
	and ($89.b,X)		; 21 89
	and ($8C.b,X)		; 21 8C
	and ($8D.b,X)		; 21 8D
	and ($90.b,X)		; 21 90
	and ($91.b,X)		; 21 91
	and ($94.b,X)		; 21 94
	and ($95.b,X)		; 21 95
	and ($98.b,X)		; 21 98
	and ($99.b,X)		; 21 99
	and ($9C.b,X)		; 21 9C
	and ($9D.b,X)		; 21 9D
	and ($A0.b,X)		; 21 A0
	and ($A1.b,X)		; 21 A1
	and ($A4.b,X)		; 21 A4
	and ($A5.b,X)		; 21 A5
	and ($A8.b,X)		; 21 A8
	and ($A9.b,X)		; 21 A9
	and ($AC.b,X)		; 21 AC
	and ($AD.b,X)		; 21 AD
	and ($B0.b,X)		; 21 B0
	and ($B1.b,X)		; 21 B1
	and ($7A.b,X)		; 21 7A
	and ($7B.b,X)		; 21 7B
	and ($7E.b,X)		; 21 7E
	and ($7F.b,X)		; 21 7F
	and ($82.b,X)		; 21 82
	and ($83.b,X)		; 21 83
	and ($86.b,X)		; 21 86
	and ($87.b,X)		; 21 87
	and ($8A.b,X)		; 21 8A
	and ($8B.b,X)		; 21 8B
	and ($8E.b,X)		; 21 8E
	and ($8F.b,X)		; 21 8F
	and ($92.b,X)		; 21 92
	and ($93.b,X)		; 21 93
	and ($96.b,X)		; 21 96
	and ($97.b,X)		; 21 97
	and ($9A.b,X)		; 21 9A
	and ($9B.b,X)		; 21 9B
	and ($9E.b,X)		; 21 9E
	and ($9F.b,X)		; 21 9F
	and ($A2.b,X)		; 21 A2
	and ($A3.b,X)		; 21 A3
	and ($A6.b,X)		; 21 A6
	and ($A7.b,X)		; 21 A7
	and ($AA.b,X)		; 21 AA
	and ($AB.b,X)		; 21 AB
	and ($AE.b,X)		; 21 AE
	and ($AF.b,X)		; 21 AF
	and ($B2.b,X)		; 21 B2
	and ($B3.b,X)		; 21 B3
	and ($42.b,X)		; 21 42
	ora ($3C.b)		; 12 3C
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	and ($01.b,X)		; 21 01
	and ($04.b,X)		; 21 04
	and ($05.b,X)		; 21 05
	and ($08.b,X)		; 21 08
	and ($09.b,X)		; 21 09
	and ($0C.b,X)		; 21 0C
	and ($0D.b,X)		; 21 0D
	and ($10.b,X)		; 21 10
	and ($11.b,X)		; 21 11
	and ($14.b,X)		; 21 14
	and ($15.b,X)		; 21 15
	and ($18.b,X)		; 21 18
	and ($19.b,X)		; 21 19
	and ($1C.b,X)		; 21 1C
	and ($1D.b,X)		; 21 1D
	and ($20.b,X)		; 21 20
	and ($21.b,X)		; 21 21
	and ($24.b,X)		; 21 24
	and ($25.b,X)		; 21 25
	and ($28.b,X)		; 21 28
	and ($29.b,X)		; 21 29
	and ($2C.b,X)		; 21 2C
	and ($2D.b,X)		; 21 2D
	and ($30.b,X)		; 21 30
	and ($31.b,X)		; 21 31
	and ($34.b,X)		; 21 34
	and ($35.b,X)		; 21 35
	and ($38.b,X)		; 21 38
	and ($39.b,X)		; 21 39
	and ($02.b,X)		; 21 02
	and ($03.b,X)		; 21 03
	and ($06.b,X)		; 21 06
	and ($07.b,X)		; 21 07
	and ($0A.b,X)		; 21 0A
	and ($0B.b,X)		; 21 0B
	and ($0E.b,X)		; 21 0E
	and ($0F.b,X)		; 21 0F
	and ($12.b,X)		; 21 12
	and ($13.b,X)		; 21 13
	and ($16.b,X)		; 21 16
	and ($17.b,X)		; 21 17
	and ($1A.b,X)		; 21 1A
	and ($1B.b,X)		; 21 1B
	and ($1E.b,X)		; 21 1E
	and ($1F.b,X)		; 21 1F
	and ($22.b,X)		; 21 22
	and ($23.b,X)		; 21 23
	and ($26.b,X)		; 21 26
	and ($27.b,X)		; 21 27
	and ($2A.b,X)		; 21 2A
	and ($2B.b,X)		; 21 2B
	and ($2E.b,X)		; 21 2E
	and ($2F.b,X)		; 21 2F
	and ($32.b,X)		; 21 32
	and ($33.b,X)		; 21 33
	and ($36.b,X)		; 21 36
	and ($37.b,X)		; 21 37
	and ($3A.b,X)		; 21 3A
	and ($3B.b,X)		; 21 3B
	and ($3C.b,X)		; 21 3C
	and ($3D.b,X)		; 21 3D
	and ($40.b,X)		; 21 40
	and ($41.b,X)		; 21 41
	and ($44.b,X)		; 21 44
	and ($45.b,X)		; 21 45
	and ($48.b,X)		; 21 48
	and ($49.b,X)		; 21 49
	and ($4C.b,X)		; 21 4C
	and ($4D.b,X)		; 21 4D
	and ($50.b,X)		; 21 50
	and ($51.b,X)		; 21 51
	and ($54.b,X)		; 21 54
	and ($55.b,X)		; 21 55
	and ($58.b,X)		; 21 58
	and ($59.b,X)		; 21 59
	and ($5C.b,X)		; 21 5C
	and ($5D.b,X)		; 21 5D
	and ($60.b,X)		; 21 60
	and ($61.b,X)		; 21 61
	and ($64.b,X)		; 21 64
	and ($65.b,X)		; 21 65
	and ($68.b,X)		; 21 68
	and ($69.b,X)		; 21 69
	and ($6C.b,X)		; 21 6C
	and ($6D.b,X)		; 21 6D
	and ($70.b,X)		; 21 70
	and ($71.b,X)		; 21 71
	and ($74.b,X)		; 21 74
	and ($75.b,X)		; 21 75
	and ($3E.b,X)		; 21 3E
	and ($3F.b,X)		; 21 3F
	and ($42.b,X)		; 21 42
	and ($43.b,X)		; 21 43
	and ($46.b,X)		; 21 46
	and ($47.b,X)		; 21 47
	and ($4A.b,X)		; 21 4A
	and ($4B.b,X)		; 21 4B
	and ($4E.b,X)		; 21 4E
	and ($4F.b,X)		; 21 4F
	and ($52.b,X)		; 21 52
	and ($53.b,X)		; 21 53
	and ($56.b,X)		; 21 56
	and ($57.b,X)		; 21 57
	and ($5A.b,X)		; 21 5A
	and ($5B.b,X)		; 21 5B
	and ($5E.b,X)		; 21 5E
	and ($5F.b,X)		; 21 5F
	and ($62.b,X)		; 21 62
	and ($63.b,X)		; 21 63
	and ($66.b,X)		; 21 66
	and ($67.b,X)		; 21 67
	and ($6A.b,X)		; 21 6A
	and ($6B.b,X)		; 21 6B
	and ($6E.b,X)		; 21 6E
	and ($6F.b,X)		; 21 6F
	and ($72.b,X)		; 21 72
	and ($73.b,X)		; 21 73
	and ($76.b,X)		; 21 76
	and ($77.b,X)		; 21 77
	and ($78.b,X)		; 21 78
	and ($79.b,X)		; 21 79
	and ($7C.b,X)		; 21 7C
	and ($7D.b,X)		; 21 7D
	and ($80.b,X)		; 21 80
	and ($81.b,X)		; 21 81
	and ($84.b,X)		; 21 84
	and ($85.b,X)		; 21 85
	and ($88.b,X)		; 21 88
	and ($89.b,X)		; 21 89
	and ($8C.b,X)		; 21 8C
	and ($8D.b,X)		; 21 8D
	and ($90.b,X)		; 21 90
	and ($91.b,X)		; 21 91
	and ($94.b,X)		; 21 94
	and ($95.b,X)		; 21 95
	and ($98.b,X)		; 21 98
	and ($99.b,X)		; 21 99
	and ($9C.b,X)		; 21 9C
	and ($9D.b,X)		; 21 9D
	and ($A0.b,X)		; 21 A0
	and ($A1.b,X)		; 21 A1
	and ($A4.b,X)		; 21 A4
	and ($A5.b,X)		; 21 A5
	and ($A8.b,X)		; 21 A8
	and ($A9.b,X)		; 21 A9
	and ($AC.b,X)		; 21 AC
	and ($AD.b,X)		; 21 AD
	and ($B0.b,X)		; 21 B0
	and ($B1.b,X)		; 21 B1
	and ($7A.b,X)		; 21 7A
	and ($7B.b,X)		; 21 7B
	and ($7E.b,X)		; 21 7E
	and ($7F.b,X)		; 21 7F
	and ($82.b,X)		; 21 82
	and ($83.b,X)		; 21 83
	and ($86.b,X)		; 21 86
	and ($87.b,X)		; 21 87
	and ($8A.b,X)		; 21 8A
	and ($8B.b,X)		; 21 8B
	and ($8E.b,X)		; 21 8E
	and ($8F.b,X)		; 21 8F
	and ($92.b,X)		; 21 92
	and ($93.b,X)		; 21 93
	and ($96.b,X)		; 21 96
	and ($97.b,X)		; 21 97
	and ($9A.b,X)		; 21 9A
	and ($9B.b,X)		; 21 9B
	and ($9E.b,X)		; 21 9E
	and ($9F.b,X)		; 21 9F
	and ($A2.b,X)		; 21 A2
	and ($A3.b,X)		; 21 A3
	and ($A6.b,X)		; 21 A6
	and ($A7.b,X)		; 21 A7
	and ($AA.b,X)		; 21 AA
	and ($AB.b,X)		; 21 AB
	and ($AE.b,X)		; 21 AE
	and ($AF.b,X)		; 21 AF
	and ($B2.b,X)		; 21 B2
	and ($B3.b,X)		; 21 B3
	and ($82.b,X)		; 21 82
	ora ($3C.b)		; 12 3C
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	and ($01.b,X)		; 21 01
	and ($04.b,X)		; 21 04
	and ($05.b,X)		; 21 05
	and ($08.b,X)		; 21 08
	and ($09.b,X)		; 21 09
	and ($0C.b,X)		; 21 0C
	and ($0D.b,X)		; 21 0D
	and ($10.b,X)		; 21 10
	and ($11.b,X)		; 21 11
	and ($14.b,X)		; 21 14
	and ($15.b,X)		; 21 15
	and ($18.b,X)		; 21 18
	and ($19.b,X)		; 21 19
	and ($1C.b,X)		; 21 1C
	and ($1D.b,X)		; 21 1D
	and ($20.b,X)		; 21 20
	and ($21.b,X)		; 21 21
	and ($24.b,X)		; 21 24
	and ($25.b,X)		; 21 25
	and ($28.b,X)		; 21 28
	and ($29.b,X)		; 21 29
	and ($2C.b,X)		; 21 2C
	and ($2D.b,X)		; 21 2D
	and ($30.b,X)		; 21 30
	and ($31.b,X)		; 21 31
	and ($34.b,X)		; 21 34
	and ($35.b,X)		; 21 35
	and ($38.b,X)		; 21 38
	and ($39.b,X)		; 21 39
	and ($02.b,X)		; 21 02
	and ($03.b,X)		; 21 03
	and ($06.b,X)		; 21 06
	and ($07.b,X)		; 21 07
	and ($0A.b,X)		; 21 0A
	and ($0B.b,X)		; 21 0B
	and ($0E.b,X)		; 21 0E
	and ($0F.b,X)		; 21 0F
	and ($12.b,X)		; 21 12
	and ($13.b,X)		; 21 13
	and ($16.b,X)		; 21 16
	and ($17.b,X)		; 21 17
	and ($1A.b,X)		; 21 1A
	and ($1B.b,X)		; 21 1B
	and ($1E.b,X)		; 21 1E
	and ($1F.b,X)		; 21 1F
	and ($22.b,X)		; 21 22
	and ($23.b,X)		; 21 23
	and ($26.b,X)		; 21 26
	and ($27.b,X)		; 21 27
	and ($2A.b,X)		; 21 2A
	and ($2B.b,X)		; 21 2B
	and ($2E.b,X)		; 21 2E
	and ($2F.b,X)		; 21 2F
	and ($32.b,X)		; 21 32
	and ($33.b,X)		; 21 33
	and ($36.b,X)		; 21 36
	and ($37.b,X)		; 21 37
	and ($3A.b,X)		; 21 3A
	and ($3B.b,X)		; 21 3B
	and ($3C.b,X)		; 21 3C
	and ($3D.b,X)		; 21 3D
	and ($40.b,X)		; 21 40
	and ($41.b,X)		; 21 41
	and ($44.b,X)		; 21 44
	and ($45.b,X)		; 21 45
	and ($48.b,X)		; 21 48
	and ($49.b,X)		; 21 49
	and ($4C.b,X)		; 21 4C
	and ($4D.b,X)		; 21 4D
	and ($50.b,X)		; 21 50
	and ($51.b,X)		; 21 51
	and ($54.b,X)		; 21 54
	and ($55.b,X)		; 21 55
	and ($58.b,X)		; 21 58
	and ($59.b,X)		; 21 59
	and ($5C.b,X)		; 21 5C
	and ($5D.b,X)		; 21 5D
	and ($60.b,X)		; 21 60
	and ($61.b,X)		; 21 61
	and ($64.b,X)		; 21 64
	and ($65.b,X)		; 21 65
	and ($68.b,X)		; 21 68
	and ($69.b,X)		; 21 69
	and ($6C.b,X)		; 21 6C
	and ($6D.b,X)		; 21 6D
	and ($70.b,X)		; 21 70
	and ($71.b,X)		; 21 71
	and ($74.b,X)		; 21 74
	and ($75.b,X)		; 21 75
	and ($3E.b,X)		; 21 3E
	and ($3F.b,X)		; 21 3F
	and ($42.b,X)		; 21 42
	and ($43.b,X)		; 21 43
	and ($46.b,X)		; 21 46
	and ($47.b,X)		; 21 47
	and ($4A.b,X)		; 21 4A
	and ($4B.b,X)		; 21 4B
	and ($4E.b,X)		; 21 4E
	and ($4F.b,X)		; 21 4F
	and ($52.b,X)		; 21 52
	and ($53.b,X)		; 21 53
	and ($56.b,X)		; 21 56
	and ($57.b,X)		; 21 57
	and ($5A.b,X)		; 21 5A
	and ($5B.b,X)		; 21 5B
	and ($5E.b,X)		; 21 5E
	and ($5F.b,X)		; 21 5F
	and ($62.b,X)		; 21 62
	and ($63.b,X)		; 21 63
	and ($66.b,X)		; 21 66
	and ($67.b,X)		; 21 67
	and ($6A.b,X)		; 21 6A
	and ($6B.b,X)		; 21 6B
	and ($6E.b,X)		; 21 6E
	and ($6F.b,X)		; 21 6F
	and ($72.b,X)		; 21 72
	and ($73.b,X)		; 21 73
	and ($76.b,X)		; 21 76
	and ($77.b,X)		; 21 77
	and ($78.b,X)		; 21 78
	and ($79.b,X)		; 21 79
	and ($7C.b,X)		; 21 7C
	and ($7D.b,X)		; 21 7D
	and ($80.b,X)		; 21 80
	and ($81.b,X)		; 21 81
	and ($84.b,X)		; 21 84
	and ($85.b,X)		; 21 85
	and ($88.b,X)		; 21 88
	and ($89.b,X)		; 21 89
	and ($8C.b,X)		; 21 8C
	and ($8D.b,X)		; 21 8D
	and ($90.b,X)		; 21 90
	and ($91.b,X)		; 21 91
	and ($94.b,X)		; 21 94
	and ($95.b,X)		; 21 95
	and ($98.b,X)		; 21 98
	and ($99.b,X)		; 21 99
	and ($9C.b,X)		; 21 9C
	and ($9D.b,X)		; 21 9D
	and ($A0.b,X)		; 21 A0
	and ($A1.b,X)		; 21 A1
	and ($A4.b,X)		; 21 A4
	and ($A5.b,X)		; 21 A5
	and ($A8.b,X)		; 21 A8
	and ($A9.b,X)		; 21 A9
	and ($AC.b,X)		; 21 AC
	and ($AD.b,X)		; 21 AD
	and ($B0.b,X)		; 21 B0
	and ($B1.b,X)		; 21 B1
	and ($7A.b,X)		; 21 7A
	and ($7B.b,X)		; 21 7B
	and ($7E.b,X)		; 21 7E
	and ($7F.b,X)		; 21 7F
	and ($82.b,X)		; 21 82
	and ($83.b,X)		; 21 83
	and ($86.b,X)		; 21 86
	and ($87.b,X)		; 21 87
	and ($8A.b,X)		; 21 8A
	and ($8B.b,X)		; 21 8B
	and ($8E.b,X)		; 21 8E
	and ($8F.b,X)		; 21 8F
	and ($92.b,X)		; 21 92
	and ($93.b,X)		; 21 93
	and ($96.b,X)		; 21 96
	and ($97.b,X)		; 21 97
	and ($9A.b,X)		; 21 9A
	and ($9B.b,X)		; 21 9B
	and ($9E.b,X)		; 21 9E
	and ($9F.b,X)		; 21 9F
	and ($A2.b,X)		; 21 A2
	and ($A3.b,X)		; 21 A3
	and ($A6.b,X)		; 21 A6
	and ($A7.b,X)		; 21 A7
	and ($AA.b,X)		; 21 AA
	and ($AB.b,X)		; 21 AB
	and ($AE.b,X)		; 21 AE
	and ($AF.b,X)		; 21 AF
	and ($B2.b,X)		; 21 B2
	and ($B3.b,X)		; 21 B3
	and ($82.b,X)		; 21 82
	ora ($3C.b)		; 12 3C
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	lda [$52.b]		; A7 52
	sta ($A7.b,X)		; 81 A7
	eor ($81.b)		; 52 81
	lda [$52.b]		; A7 52
	sta ($A7.b,X)		; 81 A7
	eor ($81.b)		; 52 81
	lda [$52.b]		; A7 52
	sta ($A7.b,X)		; 81 A7
	eor ($81.b)		; 52 81
	lda [$52.b]		; A7 52
	sta ($A7.b,X)		; 81 A7
	eor ($81.b)		; 52 81
	lda [$52.b]		; A7 52
	sta ($A7.b,X)		; 81 A7
	eor ($81.b)		; 52 81
	lda [$52.b]		; A7 52
	sta ($A7.b,X)		; 81 A7
	eor ($81.b)		; 52 81
	lda [$52.b]		; A7 52
	sta ($A7.b,X)		; 81 A7
	eor ($81.b)		; 52 81
	lda [$52.b]		; A7 52
	sta ($A7.b,X)		; 81 A7
	eor ($81.b)		; 52 81
	lda [$52.b]		; A7 52
	sta ($A7.b,X)		; 81 A7
	eor ($81.b)		; 52 81
	lda [$52.b]		; A7 52
	sta ($A7.b,X)		; 81 A7
	eor ($81.b)		; 52 81
	lda [$52.b]		; A7 52
	sta ($A7.b,X)		; 81 A7
	eor ($81.b)		; 52 81
	lda [$52.b]		; A7 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A3.b,X)		; 81 A3
	eor ($81.b)		; 52 81
	lda $52.b,S		; A3 52
	sta ($A7.b,X)		; 81 A7
	eor ($81.b)		; 52 81
	lda [$52.b]		; A7 52
	sta ($A7.b,X)		; 81 A7
	eor ($81.b)		; 52 81
	lda [$52.b]		; A7 52
	sta ($A7.b,X)		; 81 A7
	eor ($81.b)		; 52 81
	lda [$52.b]		; A7 52
	sta ($A7.b,X)		; 81 A7
	eor ($81.b)		; 52 81
	lda [$52.b]		; A7 52
	sta ($A7.b,X)		; 81 A7
	eor ($81.b)		; 52 81
	lda [$52.b]		; A7 52
	sta ($A7.b,X)		; 81 A7
	eor ($81.b)		; 52 81
	lda [$52.b]		; A7 52
	sta ($A7.b,X)		; 81 A7
	eor ($81.b)		; 52 81
	lda [$52.b]		; A7 52
	sta ($A7.b,X)		; 81 A7
	eor ($81.b)		; 52 81
	lda [$52.b]		; A7 52
	sta ($A7.b,X)		; 81 A7
	eor ($81.b)		; 52 81
	lda [$52.b]		; A7 52
	sta ($A7.b,X)		; 81 A7
	eor ($81.b)		; 52 81
	lda [$52.b]		; A7 52
	sta ($A7.b,X)		; 81 A7
	eor ($81.b)		; 52 81
	lda [$52.b]		; A7 52
	sta ($A7.b,X)		; 81 A7
	eor ($81.b)		; 52 81
	lda [$52.b]		; A7 52
	sta ($A7.b,X)		; 81 A7
	eor ($81.b)		; 52 81
	lda [$52.b]		; A7 52
	sta ($A7.b,X)		; 81 A7
	eor ($81.b)		; 52 81
	lda [$52.b]		; A7 52
	sta ($A7.b,X)		; 81 A7
	eor ($81.b)		; 52 81
	lda [$52.b]		; A7 52
	sta ($A7.b,X)		; 81 A7
	eor ($81.b)		; 52 81
	lda [$52.b]		; A7 52
	sta ($A7.b,X)		; 81 A7
	eor ($00.b)		; 52 00
	brk $00.b		; 00 00
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $FF.b		; 00 FF
	sta ($4C.b,X)		; 81 4C
	eor $81.b,X		; 55 81
	bvc  85.b		; 50 55
	sta ($54.b,X)		; 81 54
	eor $81.b,X		; 55 81
	cli		; 58
	eor $81.b,X		; 55 81
	jmp $608155.l		; 5C 55 81 60
	eor $81.b,X		; 55 81
	stz $55.b		; 64 55
	sta ($68.b,X)		; 81 68
	eor $81.b,X		; 55 81
	jmp ($8155.w)		; 6C 55 81
	bvs  85.b		; 70 55
	sta ($74.b,X)		; 81 74
	eor $81.b,X		; 55 81
	sei		; 78
	eor $81.b,X		; 55 81
	jmp ($8155.w,X)		; 7C 55 81
	bra  85.b		; 80 55
	sta ($84.b,X)		; 81 84
	eor $81.b,X		; 55 81
	dey		; 88
	eor $81.b,X		; 55 81
	sty $8155.w		; 8C 55 81
	bcc  85.b		; 90 55
	sta ($94.b,X)		; 81 94
	eor $81.b,X		; 55 81
	tya		; 98
	eor $81.b,X		; 55 81
	stz $8155.w		; 9C 55 81
	ldy #$8155.w		; A0 55 81
	ldy $55.b		; A4 55
	sta ($A8.b,X)		; 81 A8
	eor $81.b,X		; 55 81
	ldy $8155.w		; AC 55 81
	bcs  85.b		; B0 55
	sta ($B4.b,X)		; 81 B4
	eor $81.b,X		; 55 81
	clv		; B8
	eor $81.b,X		; 55 81
	ldy $8155.w,X		; BC 55 81
	cpy #$8155.w		; C0 55 81
	cpy $55.b		; C4 55
	sta ($C8.b,X)		; 81 C8
	eor $81.b,X		; 55 81
	cpy $8155.w		; CC 55 81
	bne  85.b		; D0 55
	sta ($D4.b,X)		; 81 D4
	eor $81.b,X		; 55 81
	cld		; D8
	eor $81.b,X		; 55 81
	jmp.w [$8155]		; DC 55 81
	cpx #$8155.w		; E0 55 81
	cpx $55.b		; E4 55
	sta ($E8.b,X)		; 81 E8
	eor $81.b,X		; 55 81
	cpx $8155.w		; EC 55 81
	beq  85.b		; F0 55
	sta ($F4.b,X)		; 81 F4
	eor $81.b,X		; 55 81
	sed		; F8
	eor $81.b,X		; 55 81
	jsr ($8155.w,X)		; FC 55 81
	brk $56.b		; 00 56
	sta ($04.b,X)		; 81 04
	lsr $81.b,X		; 56 81
	php		; 08
	lsr $81.b,X		; 56 81
	tsb $8156.w		; 0C 56 81
	bpl  86.b		; 10 56
	sta ($14.b,X)		; 81 14
	lsr $81.b,X		; 56 81
	clc		; 18
	lsr $81.b,X		; 56 81
	trb $8156.w		; 1C 56 81
	jsr $8156.w		; 20 56 81
	bit $56.b		; 24 56
	sta ($28.b,X)		; 81 28
	lsr $81.b,X		; 56 81
	bit $8156.w		; 2C 56 81
	bmi  86.b		; 30 56
	sta ($34.b,X)		; 81 34
	lsr $81.b,X		; 56 81
	sec		; 38
	lsr $81.b,X		; 56 81
	bit $8156.w,X		; 3C 56 81
	rti		; 40

	lsr $81.b,X		; 56 81
	mvp $81,$56		; 44 56 81
	pha		; 48
	lsr $81.b,X		; 56 81
	jmp $8156.w		; 4C 56 81
	bvc  86.b		; 50 56
	sta ($54.b,X)		; 81 54
	lsr $81.b,X		; 56 81
	cli		; 58
	lsr $81.b,X		; 56 81
	jmp $608156.l		; 5C 56 81 60
	lsr $81.b,X		; 56 81
	stz $56.b		; 64 56
	sta ($68.b,X)		; 81 68
	lsr $81.b,X		; 56 81
	jmp ($8156.w)		; 6C 56 81
	bvs  86.b		; 70 56
	sta ($74.b,X)		; 81 74
	lsr $81.b,X		; 56 81
	sei		; 78
	lsr $81.b,X		; 56 81
	jmp ($8156.w,X)		; 7C 56 81
	bra  86.b		; 80 56
	sta ($84.b,X)		; 81 84
	lsr $81.b,X		; 56 81
	dey		; 88
	lsr $81.b,X		; 56 81
	sty $8156.w		; 8C 56 81
	bcc  86.b		; 90 56
	sta ($94.b,X)		; 81 94
	lsr $81.b,X		; 56 81
	tya		; 98
	lsr $81.b,X		; 56 81
	stz $8156.w		; 9C 56 81
	ldy #$8156.w		; A0 56 81
	ldy $56.b		; A4 56
	sta ($A8.b,X)		; 81 A8
	lsr $81.b,X		; 56 81
	ldy $8156.w		; AC 56 81
	bcs  86.b		; B0 56
	sta ($B4.b,X)		; 81 B4
	lsr $81.b,X		; 56 81
	clv		; B8
	lsr $81.b,X		; 56 81
	ldy $8156.w,X		; BC 56 81
	cpy #$8156.w		; C0 56 81
	cpy $56.b		; C4 56
	sta ($C8.b,X)		; 81 C8
	lsr $81.b,X		; 56 81
	cpy $8156.w		; CC 56 81
	bne  86.b		; D0 56
	sta ($D4.b,X)		; 81 D4
	lsr $81.b,X		; 56 81
	cld		; D8
	lsr $81.b,X		; 56 81
	jmp.w [$8156]		; DC 56 81
	cpx #$8156.w		; E0 56 81
	cpx $56.b		; E4 56
	sta ($E8.b,X)		; 81 E8
	lsr $81.b,X		; 56 81
	cpx $8156.w		; EC 56 81
	beq  86.b		; F0 56
	sta ($F4.b,X)		; 81 F4
	lsr $81.b,X		; 56 81
	sed		; F8
	lsr $81.b,X		; 56 81
	jsr ($8156.w,X)		; FC 56 81
	brk $57.b		; 00 57
	sta ($04.b,X)		; 81 04
	eor [$81.b],Y		; 57 81
	php		; 08
	eor [$81.b],Y		; 57 81
	tsb $8157.w		; 0C 57 81
	bpl  87.b		; 10 57
	sta ($14.b,X)		; 81 14
	eor [$81.b],Y		; 57 81
	clc		; 18
	eor [$81.b],Y		; 57 81
	trb $8157.w		; 1C 57 81
	jsr $8157.w		; 20 57 81
	bit $57.b		; 24 57
	sta ($28.b,X)		; 81 28
	eor [$81.b],Y		; 57 81
	bit $8157.w		; 2C 57 81
	bmi  87.b		; 30 57
	sta ($34.b,X)		; 81 34
	eor [$81.b],Y		; 57 81
	sec		; 38
	eor [$81.b],Y		; 57 81
	bit $8157.w,X		; 3C 57 81
	rti		; 40

	eor [$81.b],Y		; 57 81
	mvp $81,$57		; 44 57 81
	pha		; 48
	eor [$81.b],Y		; 57 81
	jmp $8157.w		; 4C 57 81
	bvc  87.b		; 50 57
	sta ($54.b,X)		; 81 54
	eor [$81.b],Y		; 57 81
	cli		; 58
	eor [$81.b],Y		; 57 81
	jmp $608157.l		; 5C 57 81 60
	eor [$81.b],Y		; 57 81
	stz $57.b		; 64 57
	sta ($68.b,X)		; 81 68
	eor [$81.b],Y		; 57 81
	jmp ($8157.w)		; 6C 57 81
	bvs  87.b		; 70 57
	sta ($74.b,X)		; 81 74
	eor [$81.b],Y		; 57 81
	sei		; 78
	eor [$81.b],Y		; 57 81
	jmp ($8157.w,X)		; 7C 57 81
	bra  87.b		; 80 57
	sta ($84.b,X)		; 81 84
	eor [$81.b],Y		; 57 81
	dey		; 88
	eor [$81.b],Y		; 57 81
	sty $8157.w		; 8C 57 81
	bcc  87.b		; 90 57
	sta ($94.b,X)		; 81 94
	eor [$81.b],Y		; 57 81
	tya		; 98
	eor [$81.b],Y		; 57 81
	stz $8157.w		; 9C 57 81
	ldy #$8157.w		; A0 57 81
	ldy $57.b		; A4 57
	sta ($A8.b,X)		; 81 A8
	eor [$81.b],Y		; 57 81
	ldy $8157.w		; AC 57 81
	bcs  87.b		; B0 57
	sta ($B4.b,X)		; 81 B4
	eor [$81.b],Y		; 57 81
	clv		; B8
	eor [$81.b],Y		; 57 81
	ldy $8157.w,X		; BC 57 81
	cpy #$8157.w		; C0 57 81
	cpy $57.b		; C4 57
	sta ($C8.b,X)		; 81 C8
	eor [$81.b],Y		; 57 81
	cpy $8157.w		; CC 57 81
	bne  87.b		; D0 57
	sta ($D4.b,X)		; 81 D4
	eor [$81.b],Y		; 57 81
	cld		; D8
	eor [$81.b],Y		; 57 81
	jmp.w [$8157]		; DC 57 81
	cpx #$8157.w		; E0 57 81
	cpx $57.b		; E4 57
	sta ($E8.b,X)		; 81 E8
	eor [$81.b],Y		; 57 81
	cpx $8157.w		; EC 57 81
	beq  87.b		; F0 57
	sta ($F4.b,X)		; 81 F4
	eor [$81.b],Y		; 57 81
	sed		; F8
	eor [$81.b],Y		; 57 81
	jsr ($8157.w,X)		; FC 57 81
	brk $58.b		; 00 58
	sta ($04.b,X)		; 81 04
	cli		; 58
	sta ($08.b,X)		; 81 08
	cli		; 58
	sta ($0C.b,X)		; 81 0C
	cli		; 58
	sta ($10.b,X)		; 81 10
	cli		; 58
	sta ($14.b,X)		; 81 14
	cli		; 58
	sta ($18.b,X)		; 81 18
	cli		; 58
	sta ($1C.b,X)		; 81 1C
	cli		; 58
	sta ($20.b,X)		; 81 20
	cli		; 58
	sta ($24.b,X)		; 81 24
	cli		; 58
	sta ($28.b,X)		; 81 28
	cli		; 58
	sta ($2C.b,X)		; 81 2C
	cli		; 58
	sta ($30.b,X)		; 81 30
	cli		; 58
	sta ($34.b,X)		; 81 34
	cli		; 58
	sta ($38.b,X)		; 81 38
	cli		; 58
	sta ($3C.b,X)		; 81 3C
	cli		; 58
	sta ($40.b,X)		; 81 40
	cli		; 58
	sta ($44.b,X)		; 81 44
	cli		; 58
	sta ($48.b,X)		; 81 48
	cli		; 58
	sta ($4C.b,X)		; 81 4C
	cli		; 58
	sta ($50.b,X)		; 81 50
	cli		; 58
	sta ($54.b,X)		; 81 54
	cli		; 58
	sta ($58.b,X)		; 81 58
	cli		; 58
	sta ($5C.b,X)		; 81 5C
	cli		; 58
	sta ($60.b,X)		; 81 60
	cli		; 58
	sta ($64.b,X)		; 81 64
	cli		; 58
	sta ($68.b,X)		; 81 68
	cli		; 58
	sta ($6C.b,X)		; 81 6C
	cli		; 58
	sta ($70.b,X)		; 81 70
	cli		; 58
	sta ($74.b,X)		; 81 74
	cli		; 58
	sta ($78.b,X)		; 81 78
	cli		; 58
	sta ($7C.b,X)		; 81 7C
	cli		; 58
	sta ($80.b,X)		; 81 80
	cli		; 58
	sta ($84.b,X)		; 81 84
	cli		; 58
	sta ($88.b,X)		; 81 88
	cli		; 58
	sta ($8C.b,X)		; 81 8C
	cli		; 58
	sta ($90.b,X)		; 81 90
	cli		; 58
	sta ($94.b,X)		; 81 94
	cli		; 58
	sta ($98.b,X)		; 81 98
	cli		; 58
	sta ($9C.b,X)		; 81 9C
	cli		; 58
	sta ($A0.b,X)		; 81 A0
	cli		; 58
	sta ($A4.b,X)		; 81 A4
	cli		; 58
	sta ($A8.b,X)		; 81 A8
	cli		; 58
	sta ($AC.b,X)		; 81 AC
	cli		; 58
	sta ($B0.b,X)		; 81 B0
	cli		; 58
	sta ($B4.b,X)		; 81 B4
	cli		; 58
	sta ($B8.b,X)		; 81 B8
	cli		; 58
	sta ($BC.b,X)		; 81 BC
	cli		; 58
	sta ($C0.b,X)		; 81 C0
	cli		; 58
	sta ($C4.b,X)		; 81 C4
	cli		; 58
	sta ($C8.b,X)		; 81 C8
	cli		; 58
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $A9B500.l,X		; FF 00 B5 A9
	sbc $A5B900.l,X		; FF 00 B9 A5
	sbc $A1BD00.l,X		; FF 00 BD A1
	sbc $9FBF00.l,X		; FF 00 BF 9F
	sbc $9DC100.l,X		; FF 00 C1 9D
	sbc $9BC300.l,X		; FF 00 C3 9B
	sbc $99C500.l,X		; FF 00 C5 99
	sbc $98C600.l,X		; FF 00 C6 98
	sbc $97C700.l,X		; FF 00 C7 97
	sbc $95C900.l,X		; FF 00 C9 95
	sbc $94CA00.l,X		; FF 00 CA 94
	sbc $93CB00.l,X		; FF 00 CB 93
	sbc $92CC00.l,X		; FF 00 CC 92
	sbc $91CD00.l,X		; FF 00 CD 91
	sbc $90CE00.l,X		; FF 00 CE 90
	sbc $90CE00.l,X		; FF 00 CE 90
	sbc $8FCF00.l,X		; FF 00 CF 8F
	sbc $8ED000.l,X		; FF 00 D0 8E
	sbc $8DD100.l,X		; FF 00 D1 8D
	sbc $8DD100.l,X		; FF 00 D1 8D
	sbc $8CD200.l,X		; FF 00 D2 8C
	sbc $8CD200.l,X		; FF 00 D2 8C
	sbc $8BD300.l,X		; FF 00 D3 8B
	sbc $8BD300.l,X		; FF 00 D3 8B
	sbc $8AD400.l,X		; FF 00 D4 8A
	sbc $8AD400.l,X		; FF 00 D4 8A
	sbc $89D500.l,X		; FF 00 D5 89
	sbc $89D500.l,X		; FF 00 D5 89
	sbc $89D500.l,X		; FF 00 D5 89
	sbc $89D500.l,X		; FF 00 D5 89
	sbc $88D600.l,X		; FF 00 D6 88
	sbc $88D600.l,X		; FF 00 D6 88
	sbc $88D600.l,X		; FF 00 D6 88
	sbc $88D600.l,X		; FF 00 D6 88
	sbc $87D700.l,X		; FF 00 D7 87
	sbc $87D700.l,X		; FF 00 D7 87
	sbc $87D700.l,X		; FF 00 D7 87
	sbc $87D700.l,X		; FF 00 D7 87
	sbc $87D700.l,X		; FF 00 D7 87
	sbc $87D700.l,X		; FF 00 D7 87
	sbc $87D700.l,X		; FF 00 D7 87
	sbc $87D700.l,X		; FF 00 D7 87
	sbc $87D700.l,X		; FF 00 D7 87
	sbc $87D700.l,X		; FF 00 D7 87
	sbc $87D700.l,X		; FF 00 D7 87
	sbc $87D700.l,X		; FF 00 D7 87
	sbc $87D700.l,X		; FF 00 D7 87
	sbc $88D600.l,X		; FF 00 D6 88
	sbc $88D600.l,X		; FF 00 D6 88
	sbc $88D600.l,X		; FF 00 D6 88
	sbc $88D600.l,X		; FF 00 D6 88
	sbc $89D500.l,X		; FF 00 D5 89
	sbc $89D500.l,X		; FF 00 D5 89
	sbc $89D500.l,X		; FF 00 D5 89
	sbc $89D400.l,X		; FF 00 D4 89
	sbc $8AD400.l,X		; FF 00 D4 8A
	sbc $8AD400.l,X		; FF 00 D4 8A
	sbc $8BD300.l,X		; FF 00 D3 8B
	sbc $8BD300.l,X		; FF 00 D3 8B
	sbc $8CD200.l,X		; FF 00 D2 8C
	sbc $8CD200.l,X		; FF 00 D2 8C
	sbc $8DD100.l,X		; FF 00 D1 8D
	sbc $8DD100.l,X		; FF 00 D1 8D
	sbc $8ED000.l,X		; FF 00 D0 8E
	sbc $8FCF00.l,X		; FF 00 CF 8F
	sbc $90CE00.l,X		; FF 00 CE 90
	sbc $90CE00.l,X		; FF 00 CE 90
	sbc $91CD00.l,X		; FF 00 CD 91
	sbc $92CC00.l,X		; FF 00 CC 92
	sbc $93CB00.l,X		; FF 00 CB 93
	sbc $94CA00.l,X		; FF 00 CA 94
	sbc $95C900.l,X		; FF 00 C9 95
	sbc $97C700.l,X		; FF 00 C7 97
	sbc $98C600.l,X		; FF 00 C6 98
	sbc $99C500.l,X		; FF 00 C5 99
	sbc $9BC300.l,X		; FF 00 C3 9B
	sbc $9DC100.l,X		; FF 00 C1 9D
	sbc $9FBF00.l,X		; FF 00 BF 9F
	sbc $A1BD00.l,X		; FF 00 BD A1
	sbc $A5B900.l,X		; FF 00 B9 A5
	sbc $A9B500.l,X		; FF 00 B5 A9
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $42F000.l,X		; FF 00 F0 42
	sbc $44F100.l,X		; FF 00 F1 44
	sbc $46F200.l,X		; FF 00 F2 46
	sbc $48F300.l,X		; FF 00 F3 48
	sbc $49F300.l,X		; FF 00 F3 49
	sbc $4AF300.l,X		; FF 00 F3 4A
	sbc $4BF300.l,X		; FF 00 F3 4B
	sbc $4BF300.l,X		; FF 00 F3 4B
	sbc $4CF300.l,X		; FF 00 F3 4C
	sbc $4CF300.l,X		; FF 00 F3 4C
	sbc $4CF300.l,X		; FF 00 F3 4C
	sbc $4CF300.l,X		; FF 00 F3 4C
	sbc $4CF300.l,X		; FF 00 F3 4C
	sbc $4CF300.l,X		; FF 00 F3 4C
	sbc $4CF300.l,X		; FF 00 F3 4C
	sbc $4CF300.l,X		; FF 00 F3 4C
	sbc $4CF300.l,X		; FF 00 F3 4C
	sbc $4CF300.l,X		; FF 00 F3 4C
	sbc $4CF300.l,X		; FF 00 F3 4C
	sbc $4CF300.l,X		; FF 00 F3 4C
	sbc $4CF300.l,X		; FF 00 F3 4C
	sbc $4CF300.l,X		; FF 00 F3 4C
	sbc $4CF300.l,X		; FF 00 F3 4C
	sbc $4CF300.l,X		; FF 00 F3 4C
	sbc $4CF300.l,X		; FF 00 F3 4C
	sbc $4CF300.l,X		; FF 00 F3 4C
	sbc $4CF300.l,X		; FF 00 F3 4C
	sbc $4CF300.l,X		; FF 00 F3 4C
	sbc $4CF300.l,X		; FF 00 F3 4C
	sbc $4CF300.l,X		; FF 00 F3 4C
	sbc $4CF300.l,X		; FF 00 F3 4C
	sbc $4CF300.l,X		; FF 00 F3 4C
	sbc $4CF300.l,X		; FF 00 F3 4C
	sbc $4CF300.l,X		; FF 00 F3 4C
	sbc $4CF300.l,X		; FF 00 F3 4C
	sbc $4DF200.l,X		; FF 00 F2 4D
	sbc $4EF100.l,X		; FF 00 F1 4E
	sbc $4FF000.l,X		; FF 00 F0 4F
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $FF0000.l,X		; FF 00 00 FF
	sbc $1400A1.l,X		; FF A1 00 14
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	asl $0E41.w		; 0E 41 0E
	lsr $0E.b		; 46 0E
	eor [$0E.b]		; 47 0E
	rol $2F0E.w		; 2E 0E 2F
	asl $0E2C.w		; 0E 2C 0E
	and $000E.w		; 2D 0E 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	asl $0E51.w		; 0E 51 0E
	lsr $0E.b,X		; 56 0E
	eor [$0E.b],Y		; 57 0E
	rol $3F0E.w,X		; 3E 0E 3F
	asl $0E3C.w		; 0E 3C 0E
	and $000E.w,X		; 3D 0E 00
	brk $A1.b		; 00 A1
	brk $14.b		; 00 14
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	asl $0E0B.w		; 0E 0B 0E
	lsr A		; 4A
	asl $0E4B.w		; 0E 4B 0E
	pha		; 48
	asl $0E49.w		; 0E 49 0E
	.db $42, $0E		; 42 0E
	eor $0E.b,S		; 43 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc A		; 1A
	asl $0E1B.w		; 0E 1B 0E
	phy		; 5A
	asl $0E5B.w		; 0E 5B 0E
	cli		; 58
	asl $0E59.w		; 0E 59 0E
	eor ($0E.b)		; 52 0E
	eor ($0E.b,S),Y		; 53 0E
	brk $00.b		; 00 00
	lda ($00.b,X)		; A1 00
	trb $00.b		; 14 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $EF0E.w		; EE 0E EF
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FF0E.w,X		; FE 0E FF
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $00.b,X		; B5 00
	trb $00.b		; 14 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	rti		; 40

	asl $0E41.w		; 0E 41 0E
	lsr $0E.b		; 46 0E
	eor [$0E.b]		; 47 0E
	rol $2F0E.w		; 2E 0E 2F
	asl $0E2C.w		; 0E 2C 0E
	and $000E.w		; 2D 0E 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	asl $0E51.w		; 0E 51 0E
	lsr $0E.b,X		; 56 0E
	eor [$0E.b],Y		; 57 0E
	rol $3F0E.w,X		; 3E 0E 3F
	asl $0E3C.w		; 0E 3C 0E
	and $000E.w,X		; 3D 0E 00
	brk $B5.b		; 00 B5
	brk $14.b		; 00 14
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	asl $0E0B.w		; 0E 0B 0E
	lsr A		; 4A
	asl $0E4B.w		; 0E 4B 0E
	pha		; 48
	asl $0E49.w		; 0E 49 0E
	.db $42, $0E		; 42 0E
	eor $0E.b,S		; 43 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc A		; 1A
	asl $0E1B.w		; 0E 1B 0E
	phy		; 5A
	asl $0E5B.w		; 0E 5B 0E
	cli		; 58
	asl $0E59.w		; 0E 59 0E
	eor ($0E.b)		; 52 0E
	eor ($0E.b,S),Y		; 53 0E
	brk $00.b		; 00 00
	lda $00.b,X		; B5 00
	trb $00.b		; 14 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $EF0E.w		; EE 0E EF
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FF0E.w,X		; FE 0E FF
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda ($00.b,X)		; A1 00
	trb $00.b		; 14 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	rti		; 40

	ora ($41.b)		; 12 41
	ora ($46.b)		; 12 46
	ora ($47.b)		; 12 47
	ora ($2E.b)		; 12 2E
	ora ($2F.b)		; 12 2F
	ora ($2C.b)		; 12 2C
	ora ($2D.b)		; 12 2D
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	ora ($51.b)		; 12 51
	ora ($56.b)		; 12 56
	ora ($57.b)		; 12 57
	ora ($3E.b)		; 12 3E
	ora ($3F.b)		; 12 3F
	ora ($3C.b)		; 12 3C
	ora ($3D.b)		; 12 3D
	ora ($00.b)		; 12 00
	brk $A1.b		; 00 A1
	brk $14.b		; 00 14
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	ora ($0B.b)		; 12 0B
	ora ($4A.b)		; 12 4A
	ora ($4B.b)		; 12 4B
	ora ($48.b)		; 12 48
	ora ($49.b)		; 12 49
	ora ($42.b)		; 12 42
	ora ($43.b)		; 12 43
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	brk $1A.b		; 00 1A
	ora ($1B.b)		; 12 1B
	ora ($5A.b)		; 12 5A
	ora ($5B.b)		; 12 5B
	ora ($58.b)		; 12 58
	ora ($59.b)		; 12 59
	ora ($52.b)		; 12 52
	ora ($53.b)		; 12 53
	ora ($00.b)		; 12 00
	brk $B5.b		; 00 B5
	brk $14.b		; 00 14
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	ora ($41.b)		; 12 41
	ora ($46.b)		; 12 46
	ora ($47.b)		; 12 47
	ora ($2E.b)		; 12 2E
	ora ($2F.b)		; 12 2F
	ora ($2C.b)		; 12 2C
	ora ($2D.b)		; 12 2D
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	ora ($51.b)		; 12 51
	ora ($56.b)		; 12 56
	ora ($57.b)		; 12 57
	ora ($3E.b)		; 12 3E
	ora ($3F.b)		; 12 3F
	ora ($3C.b)		; 12 3C
	ora ($3D.b)		; 12 3D
	ora ($00.b)		; 12 00
	brk $B5.b		; 00 B5
	brk $14.b		; 00 14
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	ora ($0B.b)		; 12 0B
	ora ($4A.b)		; 12 4A
	ora ($4B.b)		; 12 4B
	ora ($48.b)		; 12 48
	ora ($49.b)		; 12 49
	ora ($42.b)		; 12 42
	ora ($43.b)		; 12 43
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	brk $1A.b		; 00 1A
	ora ($1B.b)		; 12 1B
	ora ($5A.b)		; 12 5A
	ora ($5B.b)		; 12 5B
	ora ($58.b)		; 12 58
	ora ($59.b)		; 12 59
	ora ($52.b)		; 12 52
	ora ($53.b)		; 12 53
	ora ($00.b)		; 12 00
	brk $E4.b		; 00 E4
	cop $30.b		; 02 30
	brk $02.b		; 00 02
	brk $82.b		; 00 82
	ora $0D83.w		; 0D 83 0D
	brk $0E.b		; 00 0E
	ora ($0E.b,X)		; 01 0E
	txa		; 8A
	ora $0D8B.w		; 0D 8B 0D
	ldx #$A30D.w		; A2 0D A3
	ora $0E02.w		; 0D 02 0E
	ora $0E.b,S		; 03 0E
	tay		; A8
	ora $0DA9.w		; 0D A9 0D
	stz $0D.b		; 64 0D
	adc $0D.b		; 65 0D
	bra  13.b		; 80 0D
	sta ($0D.b,X)		; 81 0D
	cpx $ED0D.w		; EC 0D ED
	ora $0D64.w		; 0D 64 0D
	adc $0D.b		; 65 0D
	dex		; CA
	asl $0ECB.w		; 0E CB 0E
	dec $CF0E.w		; CE 0E CF
	asl $0D92.w		; 0E 92 0D
	sta ($0D.b,S),Y		; 93 0D
	bpl  14.b		; 10 0E
	ora ($0E.b),Y		; 11 0E
	txs		; 9A
	ora $0D9B.w		; 0D 9B 0D
	lda ($0D.b)		; B2 0D
	lda ($0D.b,S),Y		; B3 0D
	ora ($0E.b)		; 12 0E
	ora ($0E.b,S),Y		; 13 0E
	clv		; B8
	ora $0DB9.w		; 0D B9 0D
	stz $0D.b,X		; 74 0D
	adc $0D.b,X		; 75 0D
	bcc  13.b		; 90 0D
	sta ($0D.b),Y		; 91 0D
	jsr ($FD0D.w,X)		; FC 0D FD
	ora $0D74.w		; 0D 74 0D
	adc $0D.b,X		; 75 0D
	phx		; DA
	asl $0EDB.w		; 0E DB 0E
	dec $DF0E.w,X		; DE 0E DF
	asl $02E4.w		; 0E E4 02
	bmi   0.b		; 30 00
	cop $00.b		; 02 00
	.db $82, $11, $83		; 82 11 83
	ora ($00.b),Y		; 11 00
	ora ($01.b)		; 12 01
	ora ($8A.b)		; 12 8A
	ora ($8B.b),Y		; 11 8B
	ora ($A2.b),Y		; 11 A2
	ora ($A3.b),Y		; 11 A3
	ora ($02.b),Y		; 11 02
	ora ($03.b)		; 12 03
	ora ($A8.b)		; 12 A8
	ora ($A9.b),Y		; 11 A9
	ora ($64.b),Y		; 11 64
	ora ($65.b),Y		; 11 65
	ora ($80.b),Y		; 11 80
	ora ($81.b),Y		; 11 81
	ora ($EC.b),Y		; 11 EC
	ora ($ED.b),Y		; 11 ED
	ora ($64.b),Y		; 11 64
	ora ($65.b),Y		; 11 65
	ora ($CA.b),Y		; 11 CA
	ora ($CB.b)		; 12 CB
	ora ($CE.b)		; 12 CE
	ora ($CF.b)		; 12 CF
	ora ($92.b)		; 12 92
	ora ($93.b),Y		; 11 93
	ora ($10.b),Y		; 11 10
	ora ($11.b)		; 12 11
	ora ($9A.b)		; 12 9A
	ora ($9B.b),Y		; 11 9B
	ora ($B2.b),Y		; 11 B2
	ora ($B3.b),Y		; 11 B3
	ora ($12.b),Y		; 11 12
	ora ($13.b)		; 12 13
	ora ($B8.b)		; 12 B8
	ora ($B9.b),Y		; 11 B9
	ora ($74.b),Y		; 11 74
	ora ($75.b),Y		; 11 75
	ora ($90.b),Y		; 11 90
	ora ($91.b),Y		; 11 91
	ora ($FC.b),Y		; 11 FC
	ora ($FD.b),Y		; 11 FD
	ora ($74.b),Y		; 11 74
	ora ($75.b),Y		; 11 75
	ora ($DA.b),Y		; 11 DA
	ora ($DB.b)		; 12 DB
	ora ($DE.b)		; 12 DE
	ora ($DF.b)		; 12 DF
	ora ($E4.b)		; 12 E4
	cop $30.b		; 02 30
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	ora $0D89.w		; 0D 89 0D
	cop $0E.b		; 02 0E
	ora $0E.b,S		; 03 0E
	dec $0D.b		; C6 0D
	cmp [$0D.b]		; C7 0D
	stz $0D.b		; 64 0D
	adc $0D.b		; 65 0D
	sep #$0D		; E2 0D
	sbc $0D.b,S		; E3 0D
	tsb $0E.b		; 04 0E
	ora $0E.b		; 05 0E
	ldx $AF0D.w		; AE 0D AF
	ora $0D66.w		; 0D 66 0D
	adc [$0D.b]		; 67 0D
	cpx $0D.b		; E4 0D
	sbc $0D.b		; E5 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tya		; 98
	ora $0D99.w		; 0D 99 0D
	ora ($0E.b)		; 12 0E
	ora ($0E.b,S),Y		; 13 0E
	dec $0D.b,X		; D6 0D
	cmp [$0D.b],Y		; D7 0D
	stz $0D.b,X		; 74 0D
	adc $0D.b,X		; 75 0D
	sbc ($0D.b)		; F2 0D
	sbc ($0D.b,S),Y		; F3 0D
	trb $0E.b		; 14 0E
	ora $0E.b,X		; 15 0E
	ldx $BF0D.w,Y		; BE 0D BF
	ora $0D76.w		; 0D 76 0D
	adc [$0D.b],Y		; 77 0D
	pea $F50D.w		; F4 0D F5
	ora $0000.w		; 0D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx $02.b		; E4 02
	bmi   0.b		; 30 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
	ora ($89.b),Y		; 11 89
	ora ($02.b),Y		; 11 02
	ora ($03.b)		; 12 03
	ora ($C6.b)		; 12 C6
	ora ($C7.b),Y		; 11 C7
	ora ($64.b),Y		; 11 64
	ora ($65.b),Y		; 11 65
	ora ($E2.b),Y		; 11 E2
	ora ($E3.b),Y		; 11 E3
	ora ($04.b),Y		; 11 04
	ora ($05.b)		; 12 05
	ora ($AE.b)		; 12 AE
	ora ($AF.b),Y		; 11 AF
	ora ($66.b),Y		; 11 66
	ora ($67.b),Y		; 11 67
	ora ($E4.b),Y		; 11 E4
	ora ($E5.b),Y		; 11 E5
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $98.b		; 00 98
	ora ($99.b),Y		; 11 99
	ora ($12.b),Y		; 11 12
	ora ($13.b)		; 12 13
	ora ($D6.b)		; 12 D6
	ora ($D7.b),Y		; 11 D7
	ora ($74.b),Y		; 11 74
	ora ($75.b),Y		; 11 75
	ora ($F2.b),Y		; 11 F2
	ora ($F3.b),Y		; 11 F3
	ora ($14.b),Y		; 11 14
	ora ($15.b)		; 12 15
	ora ($BE.b)		; 12 BE
	ora ($BF.b),Y		; 11 BF
	ora ($76.b),Y		; 11 76
	ora ($77.b),Y		; 11 77
	ora ($F4.b),Y		; 11 F4
	ora ($F5.b),Y		; 11 F5
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E4.b		; 00 E4
	cop $30.b		; 02 30
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $48.b		; 00 48
	ora $4A0F49.l		; 0F 49 0F 4A
	ora $020F4B.l		; 0F 4B 0F 02
	ora $0D03.w		; 0D 03 0D
	jmp $4D0F.w		; 4C 0F 4D
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
	brk $00.b		; 00 00
	brk $58.b		; 00 58
	ora $5A0F59.l		; 0F 59 0F 5A
	ora $120F5B.l		; 0F 5B 0F 12
	ora $0D13.w		; 0D 13 0D
	jmp $0F5D0F.l		; 5C 0F 5D 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx $02.b		; E4 02
	bmi   0.b		; 30 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pha		; 48
	ora ($49.b,S),Y		; 13 49
	ora ($4A.b,S),Y		; 13 4A
	ora ($4B.b,S),Y		; 13 4B
	ora ($02.b,S),Y		; 13 02
	ora ($03.b),Y		; 11 03
	ora ($4C.b),Y		; 11 4C
	ora ($4D.b,S),Y		; 13 4D
	ora ($00.b,S),Y		; 13 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $58.b		; 00 58
	ora ($59.b,S),Y		; 13 59
	ora ($5A.b,S),Y		; 13 5A
	ora ($5B.b,S),Y		; 13 5B
	ora ($12.b,S),Y		; 13 12
	ora ($13.b),Y		; 11 13
	ora ($5C.b),Y		; 11 5C
	ora ($5D.b,S),Y		; 13 5D
	ora ($00.b,S),Y		; 13 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E4.b		; 00 E4
	cop $30.b		; 02 30
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	ora $080F0F.l		; 0F 0F 0F 08
	ora $0A0F09.l		; 0F 09 0F 0A
	ora $280F0B.l		; 0F 0B 0F 28
	ora $2A0F29.l		; 0F 29 0F 2A
	ora $000F2B.l		; 0F 2B 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora $180F1F.l		; 0F 1F 0F 18
	ora $1A0F19.l		; 0F 19 0F 1A
	ora $380F1B.l		; 0F 1B 0F 38
	ora $3A0F39.l		; 0F 39 0F 3A
	ora $000F3B.l		; 0F 3B 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E4.b		; 00 E4
	cop $30.b		; 02 30
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	ora ($0F.b,S),Y		; 13 0F
	ora ($08.b,S),Y		; 13 08
	ora ($09.b,S),Y		; 13 09
	ora ($0A.b,S),Y		; 13 0A
	ora ($0B.b,S),Y		; 13 0B
	ora ($28.b,S),Y		; 13 28
	ora ($29.b,S),Y		; 13 29
	ora ($2A.b,S),Y		; 13 2A
	ora ($2B.b,S),Y		; 13 2B
	ora ($00.b,S),Y		; 13 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($1F.b,S),Y		; 13 1F
	ora ($18.b,S),Y		; 13 18
	ora ($19.b,S),Y		; 13 19
	ora ($1A.b,S),Y		; 13 1A
	ora ($1B.b,S),Y		; 13 1B
	ora ($38.b,S),Y		; 13 38
	ora ($39.b,S),Y		; 13 39
	ora ($3A.b,S),Y		; 13 3A
	ora ($3B.b,S),Y		; 13 3B
	ora ($00.b,S),Y		; 13 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E4.b		; 00 E4
	cop $30.b		; 02 30
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $42.b		; 00 42
	ora $0C0F43.l		; 0F 43 0F 0C
	ora $280F0D.l		; 0F 0D 0F 28
	ora $2A0F29.l		; 0F 29 0F 2A
	ora $CA0F2B.l		; 0F 2B 0F CA
	asl $0ECB.w		; 0E CB 0E
	sep #$0E		; E2 0E
	sbc $0E.b,S		; E3 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($0F.b)		; 52 0F
	eor ($0F.b,S),Y		; 53 0F
	trb $1D0F.w		; 1C 0F 1D
	ora $390F38.l		; 0F 38 0F 39
	ora $3B0F3A.l		; 0F 3A 0F 3B
	ora $DB0EDA.l		; 0F DA 0E DB
	asl $0EF2.w		; 0E F2 0E
	sbc ($0E.b,S),Y		; F3 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx $02.b		; E4 02
	bmi   0.b		; 30 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $42, $13		; 42 13
	eor $13.b,S		; 43 13
	tsb $0D13.w		; 0C 13 0D
	ora ($28.b,S),Y		; 13 28
	ora ($29.b,S),Y		; 13 29
	ora ($2A.b,S),Y		; 13 2A
	ora ($2B.b,S),Y		; 13 2B
	ora ($CA.b,S),Y		; 13 CA
	ora ($CB.b)		; 12 CB
	ora ($E2.b)		; 12 E2
	ora ($E3.b)		; 12 E3
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $52.b		; 00 52
	ora ($53.b,S),Y		; 13 53
	ora ($1C.b,S),Y		; 13 1C
	ora ($1D.b,S),Y		; 13 1D
	ora ($38.b,S),Y		; 13 38
	ora ($39.b,S),Y		; 13 39
	ora ($3A.b,S),Y		; 13 3A
	ora ($3B.b,S),Y		; 13 3B
	ora ($DA.b,S),Y		; 13 DA
	ora ($DB.b)		; 12 DB
	ora ($F2.b)		; 12 F2
	ora ($F3.b)		; 12 F3
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E4.b		; 00 E4
	cop $30.b		; 02 30
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $020F01.l		; 0F 01 0F 02
	ora $200F03.l		; 0F 03 0F 20
	ora $220F21.l		; 0F 21 0F 22
	ora $400F23.l		; 0F 23 0F 40
	ora $000F41.l		; 0F 41 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora $120F11.l		; 0F 11 0F 12
	ora $300F13.l		; 0F 13 0F 30
	ora $320F31.l		; 0F 31 0F 32
	ora $500F33.l		; 0F 33 0F 50
	ora $000F51.l		; 0F 51 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E4.b		; 00 E4
	cop $30.b		; 02 30
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,S),Y		; 13 01
	ora ($02.b,S),Y		; 13 02
	ora ($03.b,S),Y		; 13 03
	ora ($20.b,S),Y		; 13 20
	ora ($21.b,S),Y		; 13 21
	ora ($22.b,S),Y		; 13 22
	ora ($23.b,S),Y		; 13 23
	ora ($40.b,S),Y		; 13 40
	ora ($41.b,S),Y		; 13 41
	ora ($00.b,S),Y		; 13 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($11.b,S),Y		; 13 11
	ora ($12.b,S),Y		; 13 12
	ora ($13.b,S),Y		; 13 13
	ora ($30.b,S),Y		; 13 30
	ora ($31.b,S),Y		; 13 31
	ora ($32.b,S),Y		; 13 32
	ora ($33.b,S),Y		; 13 33
	ora ($50.b,S),Y		; 13 50
	ora ($51.b,S),Y		; 13 51
	ora ($00.b,S),Y		; 13 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E4.b		; 00 E4
	cop $30.b		; 02 30
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4E.b		; 00 4E
	ora $040F4F.l		; 0F 4F 0F 04
	ora $060F05.l		; 0F 05 0F 06
	ora $240F07.l		; 0F 07 0F 24
	ora $000F25.l		; 0F 25 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora $140F5F.l		; 0F 5F 0F 14
	ora $160F15.l		; 0F 15 0F 16
	ora $340F17.l		; 0F 17 0F 34
	ora $000F35.l		; 0F 35 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E4.b		; 00 E4
	cop $30.b		; 02 30
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4E.b		; 00 4E
	ora ($4F.b,S),Y		; 13 4F
	ora ($04.b,S),Y		; 13 04
	ora ($05.b,S),Y		; 13 05
	ora ($06.b,S),Y		; 13 06
	ora ($07.b,S),Y		; 13 07
	ora ($24.b,S),Y		; 13 24
	ora ($25.b,S),Y		; 13 25
	ora ($00.b,S),Y		; 13 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($5F.b,S),Y		; 13 5F
	ora ($14.b,S),Y		; 13 14
	ora ($15.b,S),Y		; 13 15
	ora ($16.b,S),Y		; 13 16
	ora ($17.b,S),Y		; 13 17
	ora ($34.b,S),Y		; 13 34
	ora ($35.b,S),Y		; 13 35
	ora ($00.b,S),Y		; 13 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E4.b		; 00 E4
	cop $30.b		; 02 30
	brk $02.b		; 00 02
	brk $82.b		; 00 82
	ora $0D83.w		; 0D 83 0D
	brk $0E.b		; 00 0E
	ora ($0E.b,X)		; 01 0E
	txa		; 8A
	ora $0D8B.w		; 0D 8B 0D
	ldx #$A30D.w		; A2 0D A3
	ora $0E02.w		; 0D 02 0E
	ora $0E.b,S		; 03 0E
	tay		; A8
	ora $0DA9.w		; 0D A9 0D
	stz $0D.b		; 64 0D
	adc $0D.b		; 65 0D
	bra  13.b		; 80 0D
	sta ($0D.b,X)		; 81 0D
	cpx $ED0D.w		; EC 0D ED
	ora $0D64.w		; 0D 64 0D
	adc $0D.b		; 65 0D
	dex		; CA
	asl $0ECB.w		; 0E CB 0E
	cpx #$E10E.w		; E0 0E E1
	asl $0D92.w		; 0E 92 0D
	sta ($0D.b,S),Y		; 93 0D
	bpl  14.b		; 10 0E
	ora ($0E.b),Y		; 11 0E
	txs		; 9A
	ora $0D9B.w		; 0D 9B 0D
	lda ($0D.b)		; B2 0D
	lda ($0D.b,S),Y		; B3 0D
	ora ($0E.b)		; 12 0E
	ora ($0E.b,S),Y		; 13 0E
	clv		; B8
	ora $0DB9.w		; 0D B9 0D
	stz $0D.b,X		; 74 0D
	adc $0D.b,X		; 75 0D
	bcc  13.b		; 90 0D
	sta ($0D.b),Y		; 91 0D
	jsr ($FD0D.w,X)		; FC 0D FD
	ora $0D74.w		; 0D 74 0D
	adc $0D.b,X		; 75 0D
	phx		; DA
	asl $0EDB.w		; 0E DB 0E
	beq  14.b		; F0 0E
	sbc ($0E.b),Y		; F1 0E
	cpx $02.b		; E4 02
	bmi   0.b		; 30 00
	cop $00.b		; 02 00
	.db $82, $11, $83		; 82 11 83
	ora ($00.b),Y		; 11 00
	ora ($01.b)		; 12 01
	ora ($8A.b)		; 12 8A
	ora ($8B.b),Y		; 11 8B
	ora ($A2.b),Y		; 11 A2
	ora ($A3.b),Y		; 11 A3
	ora ($02.b),Y		; 11 02
	ora ($03.b)		; 12 03
	ora ($A8.b)		; 12 A8
	ora ($A9.b),Y		; 11 A9
	ora ($64.b),Y		; 11 64
	ora ($65.b),Y		; 11 65
	ora ($80.b),Y		; 11 80
	ora ($81.b),Y		; 11 81
	ora ($EC.b),Y		; 11 EC
	ora ($ED.b),Y		; 11 ED
	ora ($64.b),Y		; 11 64
	ora ($65.b),Y		; 11 65
	ora ($CA.b),Y		; 11 CA
	ora ($CB.b)		; 12 CB
	ora ($E0.b)		; 12 E0
	ora ($E1.b)		; 12 E1
	ora ($92.b)		; 12 92
	ora ($93.b),Y		; 11 93
	ora ($10.b),Y		; 11 10
	ora ($11.b)		; 12 11
	ora ($9A.b)		; 12 9A
	ora ($9B.b),Y		; 11 9B
	ora ($B2.b),Y		; 11 B2
	ora ($B3.b),Y		; 11 B3
	ora ($12.b),Y		; 11 12
	ora ($13.b)		; 12 13
	ora ($B8.b)		; 12 B8
	ora ($B9.b),Y		; 11 B9
	ora ($74.b),Y		; 11 74
	ora ($75.b),Y		; 11 75
	ora ($90.b),Y		; 11 90
	ora ($91.b),Y		; 11 91
	ora ($FC.b),Y		; 11 FC
	ora ($FD.b),Y		; 11 FD
	ora ($74.b),Y		; 11 74
	ora ($75.b),Y		; 11 75
	ora ($DA.b),Y		; 11 DA
	ora ($DB.b)		; 12 DB
	ora ($F0.b)		; 12 F0
	ora ($F1.b)		; 12 F1
	ora ($E4.b)		; 12 E4
	cop $30.b		; 02 30
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $42.b		; 00 42
	ora $0C0F43.l		; 0F 43 0F 0C
	ora $280F0D.l		; 0F 0D 0F 28
	ora $2A0F29.l		; 0F 29 0F 2A
	ora $CA0F2B.l		; 0F 2B 0F CA
	asl $0ECB.w		; 0E CB 0E
	cpx #$E10E.w		; E0 0E E1
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($0F.b)		; 52 0F
	eor ($0F.b,S),Y		; 53 0F
	trb $1D0F.w		; 1C 0F 1D
	ora $390F38.l		; 0F 38 0F 39
	ora $3B0F3A.l		; 0F 3A 0F 3B
	ora $DB0EDA.l		; 0F DA 0E DB
	asl $0EF0.w		; 0E F0 0E
	sbc ($0E.b),Y		; F1 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx $02.b		; E4 02
	bmi   0.b		; 30 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $42, $13		; 42 13
	eor $13.b,S		; 43 13
	tsb $0D13.w		; 0C 13 0D
	ora ($28.b,S),Y		; 13 28
	ora ($29.b,S),Y		; 13 29
	ora ($2A.b,S),Y		; 13 2A
	ora ($2B.b,S),Y		; 13 2B
	ora ($CA.b,S),Y		; 13 CA
	ora ($CB.b)		; 12 CB
	ora ($E0.b)		; 12 E0
	ora ($E1.b)		; 12 E1
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $52.b		; 00 52
	ora ($53.b,S),Y		; 13 53
	ora ($1C.b,S),Y		; 13 1C
	ora ($1D.b,S),Y		; 13 1D
	ora ($38.b,S),Y		; 13 38
	ora ($39.b,S),Y		; 13 39
	ora ($3A.b,S),Y		; 13 3A
	ora ($3B.b,S),Y		; 13 3B
	ora ($DA.b,S),Y		; 13 DA
	ora ($DB.b)		; 12 DB
	ora ($F0.b)		; 12 F0
	ora ($F1.b)		; 12 F1
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E4.b		; 00 E4
	cop $30.b		; 02 30
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EE.b		; 00 EE
	tsb $0CEF.w		; 0C EF 0C
	tax		; AA
	tsb $0CAB.w		; 0C AB 0C
	rol A		; 2A
	ora $0D2B.w		; 0D 2B 0D
	dex		; CA
	tsb $0CCB.w		; 0C CB 0C
	rol $0F.b		; 26 0F
	and [$0F.b]		; 27 0F
	mvp $45,$0F		; 44 0F 45
	ora $470F46.l		; 0F 46 0F 47
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	tsb $0CFF.w		; 0C FF 0C
	tsx		; BA
	tsb $0CBB.w		; 0C BB 0C
	dec A		; 3A
	ora $0D3B.w		; 0D 3B 0D
	phx		; DA
	tsb $0CDB.w		; 0C DB 0C
	rol $0F.b,X		; 36 0F
	and [$0F.b],Y		; 37 0F
	mvn $55,$0F		; 54 0F 55
	ora $570F56.l		; 0F 56 0F 57
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E4.b		; 00 E4
	cop $30.b		; 02 30
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EE.b		; 00 EE
	bpl -17.b		; 10 EF
	bpl -86.b		; 10 AA
	bpl -85.b		; 10 AB
	bpl  42.b		; 10 2A
	ora ($2B.b),Y		; 11 2B
	ora ($CA.b),Y		; 11 CA
	bpl -53.b		; 10 CB
	bpl  38.b		; 10 26
	ora ($27.b,S),Y		; 13 27
	ora ($44.b,S),Y		; 13 44
	ora ($45.b,S),Y		; 13 45
	ora ($46.b,S),Y		; 13 46
	ora ($47.b,S),Y		; 13 47
	ora ($00.b,S),Y		; 13 00
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
	bpl  -1.b		; 10 FF
	bpl -70.b		; 10 BA
	bpl -69.b		; 10 BB
	bpl  58.b		; 10 3A
	ora ($3B.b),Y		; 11 3B
	ora ($DA.b),Y		; 11 DA
	bpl -37.b		; 10 DB
	bpl  54.b		; 10 36
	ora ($37.b,S),Y		; 13 37
	ora ($54.b,S),Y		; 13 54
	ora ($55.b,S),Y		; 13 55
	ora ($56.b,S),Y		; 13 56
	ora ($57.b,S),Y		; 13 57
	ora ($00.b,S),Y		; 13 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A4.b		; 00 A4
	cop $30.b		; 02 30
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
	brk $20.b		; 00 20
	brk $40.b		; 00 40
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
	brk $64.b		; 00 64
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $A6.b		; 00 A6
	asl $0EA7.w		; 0E A7 0E
	ldx $0E.b,Y		; B6 0E
	lda [$0E.b],Y		; B7 0E
	stz $00.b		; 64 00
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	tay		; A8
	asl $0EA9.w		; 0E A9 0E
	clv		; B8
	asl $0EB9.w		; 0E B9 0E
	stz $00.b		; 64 00
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	tax		; AA
	asl $0EAB.w		; 0E AB 0E
	tsx		; BA
	asl $0EBB.w		; 0E BB 0E
	stz $00.b		; 64 00
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	ldy $AD0E.w		; AC 0E AD
	asl $0EBC.w		; 0E BC 0E
	lda $640E.w,X		; BD 0E 64
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $AE.b		; 00 AE
	asl $0EAF.w		; 0E AF 0E
	ldx $BF0E.w,Y		; BE 0E BF
	asl $0064.w		; 0E 64 00
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	cpy #$C10E.w		; C0 0E C1
	asl $0ED0.w		; 0E D0 0E
	cmp ($0E.b),Y		; D1 0E
	stz $00.b		; 64 00
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	rep #$0E		; C2 0E
	cmp $0E.b,S		; C3 0E
	cmp ($0E.b)		; D2 0E
	cmp ($0E.b,S),Y		; D3 0E
	stz $00.b		; 64 00
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	cpy $0E.b		; C4 0E
	cmp $0E.b		; C5 0E
	pei ($0E.b)		; D4 0E
	cmp $0E.b,X		; D5 0E
	stz $00.b		; 64 00
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	asl $0F0E.w		; 0E 0E 0F
	asl $0E1E.w		; 0E 1E 0E
	ora $00780E.l,X		; 1F 0E 78 00
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	ldx $0E.b		; A6 0E
	lda [$0E.b]		; A7 0E
	ldx $0E.b,Y		; B6 0E
	lda [$0E.b],Y		; B7 0E
	sei		; 78
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $A8.b		; 00 A8
	asl $0EA9.w		; 0E A9 0E
	clv		; B8
	asl $0EB9.w		; 0E B9 0E
	sei		; 78
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $AA.b		; 00 AA
	asl $0EAB.w		; 0E AB 0E
	tsx		; BA
	asl $0EBB.w		; 0E BB 0E
	sei		; 78
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $AC.b		; 00 AC
	asl $0EAD.w		; 0E AD 0E
	ldy $BD0E.w,X		; BC 0E BD
	asl $0078.w		; 0E 78 00
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	ldx $AF0E.w		; AE 0E AF
	asl $0EBE.w		; 0E BE 0E
	lda $00780E.l,X		; BF 0E 78 00
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	cpy #$C10E.w		; C0 0E C1
	asl $0ED0.w		; 0E D0 0E
	cmp ($0E.b),Y		; D1 0E
	sei		; 78
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $C2.b		; 00 C2
	asl $0EC3.w		; 0E C3 0E
	cmp ($0E.b)		; D2 0E
	cmp ($0E.b,S),Y		; D3 0E
	sei		; 78
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $C4.b		; 00 C4
	asl $0EC5.w		; 0E C5 0E
	pei ($0E.b)		; D4 0E
	cmp $0E.b,X		; D5 0E
	sei		; 78
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $0E.b		; 00 0E
	asl $0E0F.w		; 0E 0F 0E
	asl $1F0E.w,X		; 1E 0E 1F
	asl $00B4.w		; 0E B4 00
	trb $00.b		; 14 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	asl $0F0D.w		; 0E 0D 0F
	ora $0CCA.w		; 0D CA 0C
	wai		; CB
	tsb $0D4A.w		; 0C 4A 0D
	phk		; 4B
	ora $0CEA.w		; 0D EA 0C
	xba		; EB
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	asl $1F0D.w,X		; 1E 0D 1F
	ora $0CDA.w		; 0D DA 0C
	stp		; DB
	tsb $0D5A.w		; 0C 5A 0D
	tad		; 5B
	ora $0CFA.w		; 0D FA 0C
	xce		; FB
	tsb $0000.w		; 0C 00 00
	ldy $00.b,X		; B4 00
	trb $00.b		; 14 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	pha		; 48
	ora $0D49.w		; 0D 49 0D
	inx		; E8
	tsb $0CE9.w		; 0C E9 0C
	nop		; EA
	tsb $0CEB.w		; 0C EB 0C
	rep #$0C		; C2 0C
	cmp $0C.b,S		; C3 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cli		; 58
	ora $0D59.w		; 0D 59 0D
	sed		; F8
	tsb $0CF9.w		; 0C F9 0C
	plx		; FA
	tsb $0CFB.w		; 0C FB 0C
	cmp ($0C.b)		; D2 0C
	cmp ($0C.b,S),Y		; D3 0C
	brk $00.b		; 00 00
	ldy $00.b,X		; B4 00
	trb $00.b		; 14 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $0D.b		; 26 0D
	and [$0D.b]		; 27 0D
	php		; 08
	ora $0D09.w		; 0D 09 0D
	cpy $0C.b		; C4 0C
	cmp $0C.b		; C5 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $0D.b,X		; 36 0D
	and [$0D.b],Y		; 37 0D
	clc		; 18
	ora $0D19.w		; 0D 19 0D
	pei ($0C.b)		; D4 0C
	cmp $0C.b,X		; D5 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $00.b,X		; B4 00
	trb $00.b		; 14 00
	cop $00.b		; 02 00
	lsr $0D.b		; 46 0D
	eor [$0D.b]		; 47 0D
	tsb $0D.b		; 04 0D
	ora $0D.b		; 05 0D
	dex		; CA
	tsb $0CCB.w		; 0C CB 0C
	nop		; EA
	tsb $0CEB.w		; 0C EB 0C
	rep #$0C		; C2 0C
	cmp $0C.b,S		; C3 0C
	lsr $0D.b,X		; 56 0D
	eor [$0D.b],Y		; 57 0D
	trb $0D.b		; 14 0D
	ora $0D.b,X		; 15 0D
	phx		; DA
	tsb $0CDB.w		; 0C DB 0C
	plx		; FA
	tsb $0CFB.w		; 0C FB 0C
	cmp ($0C.b)		; D2 0C
	cmp ($0C.b,S),Y		; D3 0C
	ldy $00.b,X		; B4 00
	trb $00.b		; 14 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	asl $0F11.w		; 0E 11 0F
	ora ($CA.b),Y		; 11 CA
	bpl -53.b		; 10 CB
	bpl  74.b		; 10 4A
	ora ($4B.b),Y		; 11 4B
	ora ($EA.b),Y		; 11 EA
	bpl -21.b		; 10 EB
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	ora ($1F.b),Y		; 11 1F
	ora ($DA.b),Y		; 11 DA
	bpl -37.b		; 10 DB
	bpl  90.b		; 10 5A
	ora ($5B.b),Y		; 11 5B
	ora ($FA.b),Y		; 11 FA
	bpl  -5.b		; 10 FB
	bpl   0.b		; 10 00
	brk $B4.b		; 00 B4
	brk $14.b		; 00 14
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $48.b		; 00 48
	ora ($49.b),Y		; 11 49
	ora ($E8.b),Y		; 11 E8
	bpl -23.b		; 10 E9
	bpl -22.b		; 10 EA
	bpl -21.b		; 10 EB
	bpl -62.b		; 10 C2
	bpl -61.b		; 10 C3
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $58.b		; 00 58
	ora ($59.b),Y		; 11 59
	ora ($F8.b),Y		; 11 F8
	bpl  -7.b		; 10 F9
	bpl  -6.b		; 10 FA
	bpl  -5.b		; 10 FB
	bpl -46.b		; 10 D2
	bpl -45.b		; 10 D3
	bpl   0.b		; 10 00
	brk $B4.b		; 00 B4
	brk $14.b		; 00 14
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $26.b		; 00 26
	ora ($27.b),Y		; 11 27
	ora ($08.b),Y		; 11 08
	ora ($09.b),Y		; 11 09
	ora ($C4.b),Y		; 11 C4
	bpl -59.b		; 10 C5
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $36.b		; 00 36
	ora ($37.b),Y		; 11 37
	ora ($18.b),Y		; 11 18
	ora ($19.b),Y		; 11 19
	ora ($D4.b),Y		; 11 D4
	bpl -43.b		; 10 D5
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $B4.b		; 00 B4
	brk $14.b		; 00 14
	brk $02.b		; 00 02
	brk $46.b		; 00 46
	ora ($47.b),Y		; 11 47
	ora ($04.b),Y		; 11 04
	ora ($05.b),Y		; 11 05
	ora ($CA.b),Y		; 11 CA
	bpl -53.b		; 10 CB
	bpl -22.b		; 10 EA
	bpl -21.b		; 10 EB
	bpl -62.b		; 10 C2
	bpl -61.b		; 10 C3
	bpl  86.b		; 10 56
	ora ($57.b),Y		; 11 57
	ora ($14.b),Y		; 11 14
	ora ($15.b),Y		; 11 15
	ora ($DA.b),Y		; 11 DA
	bpl -37.b		; 10 DB
	bpl  -6.b		; 10 FA
	bpl  -5.b		; 10 FB
	bpl -46.b		; 10 D2
	bpl -45.b		; 10 D3
	bpl  20.b		; 10 14
	ora ($14.b,X)		; 01 14
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	ora $640F0B.l		; 0F 0B 0F 64
	ora $0D65.w		; 0D 65 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc A		; 1A
	ora $740F1B.l		; 0F 1B 0F 74
	ora $0D75.w		; 0D 75 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $01.b		; 14 01
	trb $00.b		; 14 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0F0D.w		; 0E 0D 0F
	ora $0CEA.w		; 0D EA 0C
	xba		; EB
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1F0D.w,X		; 1E 0D 1F
	ora $0CFA.w		; 0D FA 0C
	xce		; FB
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $01.b		; 14 01
	trb $00.b		; 14 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	ora ($0B.b,S),Y		; 13 0B
	ora ($64.b,S),Y		; 13 64
	ora ($65.b),Y		; 11 65
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1A.b		; 00 1A
	ora ($1B.b,S),Y		; 13 1B
	ora ($74.b,S),Y		; 13 74
	ora ($75.b),Y		; 11 75
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	ora ($14.b,X)		; 01 14
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	ora ($0F.b),Y		; 11 0F
	ora ($EA.b),Y		; 11 EA
	bpl -21.b		; 10 EB
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	ora ($1F.b),Y		; 11 1F
	ora ($FA.b),Y		; 11 FA
	bpl  -5.b		; 10 FB
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D3.b		; 00 D3
	brk $0C.b		; 00 0C
	brk $03.b		; 00 03
	brk $15.b		; 00 15
	ora $0D16.w		; 0D 16 0D
	ora [$0D.b],Y		; 17 0D
	clc		; 18
	ora $0D19.w		; 0D 19 0D
	inc A		; 1A
	ora $0D25.w		; 0D 25 0D
	rol $0D.b		; 26 0D
	and [$0D.b]		; 27 0D
	plp		; 28
	ora $0D29.w		; 0D 29 0D
	rol A		; 2A
	ora $0D35.w		; 0D 35 0D
	rol $0D.b,X		; 36 0D
	and [$0D.b],Y		; 37 0D
	sec		; 38
	ora $0D39.w		; 0D 39 0D
	dec A		; 3A
	ora $00D3.w		; 0D D3 00
	tsb $0300.w		; 0C 00 03
	brk $15.b		; 00 15
	ora ($16.b),Y		; 11 16
	ora ($17.b),Y		; 11 17
	ora ($18.b),Y		; 11 18
	ora ($19.b),Y		; 11 19
	ora ($1A.b),Y		; 11 1A
	ora ($25.b),Y		; 11 25
	ora ($26.b),Y		; 11 26
	ora ($27.b),Y		; 11 27
	ora ($28.b),Y		; 11 28
	ora ($29.b),Y		; 11 29
	ora ($2A.b),Y		; 11 2A
	ora ($35.b),Y		; 11 35
	ora ($36.b),Y		; 11 36
	ora ($37.b),Y		; 11 37
	ora ($38.b),Y		; 11 38
	ora ($39.b),Y		; 11 39
	ora ($3A.b),Y		; 11 3A
	ora ($3A.b),Y		; 11 3A
	ora ($06.b,X)		; 01 06
	brk $03.b		; 00 03
	brk $4C.b		; 00 4C
	ora $0D4D.w		; 0D 4D 0D
	lsr $5C0D.w		; 4E 0D 5C
	ora $0D5D.w		; 0D 5D 0D
	lsr $6C0D.w,X		; 5E 0D 6C
	ora $0D6D.w		; 0D 6D 0D
	ror $3A0D.w		; 6E 0D 3A
	ora ($06.b,X)		; 01 06
	brk $03.b		; 00 03
	brk $4C.b		; 00 4C
	ora ($4D.b),Y		; 11 4D
	ora ($4E.b),Y		; 11 4E
	ora ($5C.b),Y		; 11 5C
	ora ($5D.b),Y		; 11 5D
	ora ($5E.b),Y		; 11 5E
	ora ($6C.b),Y		; 11 6C
	ora ($6D.b),Y		; 11 6D
	ora ($6E.b),Y		; 11 6E
	ora ($FB.b),Y		; 11 FB
	ora ($08.b,X)		; 01 08
	brk $03.b		; 00 03
	brk $AD.b		; 00 AD
	ora $0DAE.w		; 0D AE 0D
	lda $0D7E0D.l		; AF 0D 7E 0D
	lda $BE0D.w,X		; BD 0D BE
	ora $0DBF.w		; 0D BF 0D
	stx $CD0D.w		; 8E 0D CD
	ora $0DCE.w		; 0D CE 0D
	cmp $0D9E0D.l		; CF 0D 9E 0D
	xce		; FB
	ora ($08.b,X)		; 01 08
	brk $03.b		; 00 03
	brk $AD.b		; 00 AD
	ora ($AE.b),Y		; 11 AE
	ora ($AF.b),Y		; 11 AF
	ora ($7E.b),Y		; 11 7E
	ora ($BD.b),Y		; 11 BD
	ora ($BE.b),Y		; 11 BE
	ora ($BF.b),Y		; 11 BF
	ora ($8E.b),Y		; 11 8E
	ora ($CD.b),Y		; 11 CD
	ora ($CE.b),Y		; 11 CE
	ora ($CF.b),Y		; 11 CF
	ora ($9E.b),Y		; 11 9E
	ora ($72.b),Y		; 11 72
	cop $10.b		; 02 10
	brk $02.b		; 00 02
	brk $E4.b		; 00 E4
	ora $0DE5.w		; 0D E5 0D
	inc $0D.b		; E6 0D
	sbc [$0D.b]		; E7 0D
	inx		; E8
	ora $0DE9.w		; 0D E9 0D
	nop		; EA
	ora $0DEB.w		; 0D EB 0D
	pea $F50D.w		; F4 0D F5
	ora $0DF6.w		; 0D F6 0D
	sbc [$0D.b],Y		; F7 0D
	sed		; F8
	ora $0DF9.w		; 0D F9 0D
	plx		; FA
	ora $0DFB.w		; 0D FB 0D
	adc ($02.b)		; 72 02
	bpl   0.b		; 10 00
	cop $00.b		; 02 00
	cpx $11.b		; E4 11
	sbc $11.b		; E5 11
	inc $11.b		; E6 11
	sbc [$11.b]		; E7 11
	inx		; E8
	ora ($E9.b),Y		; 11 E9
	ora ($EA.b),Y		; 11 EA
	ora ($EB.b),Y		; 11 EB
	ora ($F4.b),Y		; 11 F4
	ora ($F5.b),Y		; 11 F5
	ora ($F6.b),Y		; 11 F6
	ora ($F7.b),Y		; 11 F7
	ora ($F8.b),Y		; 11 F8
	ora ($F9.b),Y		; 11 F9
	ora ($FA.b),Y		; 11 FA
	ora ($FB.b),Y		; 11 FB
	ora ($ED.b),Y		; 11 ED
	ora ($08.b,X)		; 01 08
	brk $03.b		; 00 03
	brk $70.b		; 00 70
	ora $0DA0.w		; 0D A0 0D
	lda ($0D.b,X)		; A1 0D
	ldx #$800D.w		; A2 0D 80
	ora $0DB0.w		; 0D B0 0D
	lda ($0D.b),Y		; B1 0D
	lda ($0D.b)		; B2 0D
	bcc  13.b		; 90 0D
	cpy #$C10D.w		; C0 0D C1
	ora $0DC2.w		; 0D C2 0D
	sbc $0801.w		; ED 01 08
	brk $03.b		; 00 03
	brk $70.b		; 00 70
	ora ($A0.b),Y		; 11 A0
	ora ($A1.b),Y		; 11 A1
	ora ($A2.b),Y		; 11 A2
	ora ($80.b),Y		; 11 80
	ora ($B0.b),Y		; 11 B0
	ora ($B1.b),Y		; 11 B1
	ora ($B2.b),Y		; 11 B2
	ora ($90.b),Y		; 11 90
	ora ($C0.b),Y		; 11 C0
	ora ($C1.b),Y		; 11 C1
	ora ($C2.b),Y		; 11 C2
	ora ($2D.b),Y		; 11 2D
	ora ($08.b,X)		; 01 08
	brk $03.b		; 00 03
	brk $10.b		; 00 10
	ora $0D40.w		; 0D 40 0D
	eor ($0D.b,X)		; 41 0D
	.db $42, $0D		; 42 0D
	jsr $500D.w		; 20 0D 50
	ora $0D51.w		; 0D 51 0D
	eor ($0D.b)		; 52 0D
	bmi  13.b		; 30 0D
	rts		; 60

	ora $0D61.w		; 0D 61 0D
	.db $62, $0D, $2D		; 62 0D 2D
	ora ($08.b,X)		; 01 08
	brk $03.b		; 00 03
	brk $10.b		; 00 10
	ora ($40.b),Y		; 11 40
	ora ($41.b),Y		; 11 41
	ora ($42.b),Y		; 11 42
	ora ($20.b),Y		; 11 20
	ora ($50.b),Y		; 11 50
	ora ($51.b),Y		; 11 51
	ora ($52.b),Y		; 11 52
	ora ($30.b),Y		; 11 30
	ora ($60.b),Y		; 11 60
	ora ($61.b),Y		; 11 61
	ora ($62.b),Y		; 11 62
	ora ($45.b),Y		; 11 45
	cop $04.b		; 02 04
	brk $02.b		; 00 02
	brk $0E.b		; 00 0E
	ora #$090F.w		; 09 0F 09
	asl $1F09.w,X		; 1E 09 1F
	ora #$0245.w		; 09 45 02
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	bit $2D09.w		; 2C 09 2D
	ora #$093C.w		; 09 3C 09
	and $1C09.w,X		; 3D 09 1C
	rol $7E.b,X		; 36 7E
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	bpl -127.b		; 10 81
	bpl -127.b		; 10 81
	bvc   0.b		; 50 00
	bpl   0.b		; 10 00
	bpl -119.b		; 10 89
	bpl -119.b		; 10 89
	bvc   0.b		; 50 00
	bpl -111.b		; 10 91
	bpl -110.b		; 10 92
	bpl -110.b		; 10 92
	bvc -111.b		; 50 91
	bvc -101.b		; 50 9B
	bpl -100.b		; 10 9C
	bpl -99.b		; 10 9D
	bpl -101.b		; 10 9B
	bvc -91.b		; 50 A5
	bpl -90.b		; 10 A6
	bpl -89.b		; 10 A7
	bpl -91.b		; 10 A5
	bvc -82.b		; 50 AE
	bpl -81.b		; 10 AF
	bpl -80.b		; 10 B0
	bpl -82.b		; 10 AE
	bvc   0.b		; 50 00
	bpl -75.b		; 10 B5
	bpl -74.b		; 10 B6
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl -71.b		; 10 B9
	bpl -70.b		; 10 BA
	bpl   0.b		; 10 00
	bpl  28.b		; 10 1C
	rol $7E.b,X		; 36 7E
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	bpl -126.b		; 10 82
	bpl -125.b		; 10 83
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl -118.b		; 10 8A
	bpl -117.b		; 10 8B
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl -109.b		; 10 93
	bpl -108.b		; 10 94
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl -98.b		; 10 9E
	bpl -97.b		; 10 9F
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl -89.b		; 10 A7
	bvc -90.b		; 50 A6
	bvc   0.b		; 50 00
	bpl   0.b		; 10 00
	bpl -80.b		; 10 B0
	bvc -81.b		; 50 AF
	bvc   0.b		; 50 00
	bpl   0.b		; 10 00
	bpl -74.b		; 10 B6
	bvc -75.b		; 50 B5
	bvc   0.b		; 50 00
	bpl   0.b		; 10 00
	bpl -70.b		; 10 BA
	bvc -71.b		; 50 B9
	bvc   0.b		; 50 00
	bpl  28.b		; 10 1C
	rol $7E.b,X		; 36 7E
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	bpl -124.b		; 10 84
	bpl -125.b		; 10 83
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl -116.b		; 10 8C
	bpl -115.b		; 10 8D
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl -107.b		; 10 95
	bpl -108.b		; 10 94
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl -96.b		; 10 A0
	bpl -97.b		; 10 9F
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl -88.b		; 10 A8
	bpl -90.b		; 10 A6
	bvc   0.b		; 50 00
	bpl   0.b		; 10 00
	bpl -80.b		; 10 B0
	bvc -81.b		; 50 AF
	bvc   0.b		; 50 00
	bpl   0.b		; 10 00
	bpl -74.b		; 10 B6
	bvc -75.b		; 50 B5
	bvc   0.b		; 50 00
	bpl   0.b		; 10 00
	bpl -70.b		; 10 BA
	bvc -71.b		; 50 B9
	bvc   0.b		; 50 00
	bpl  28.b		; 10 1C
	rol $7E.b,X		; 36 7E
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	bpl -121.b		; 10 87
	bpl -120.b		; 10 88
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl -113.b		; 10 8F
	bpl -112.b		; 10 90
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl -105.b		; 10 97
	bpl -104.b		; 10 98
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl -95.b		; 10 A1
	bpl -94.b		; 10 A2
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl -87.b		; 10 A9
	bpl -86.b		; 10 AA
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl -79.b		; 10 B1
	bpl -78.b		; 10 B2
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl -75.b		; 10 B5
	bpl -74.b		; 10 B6
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl -71.b		; 10 B9
	bpl -70.b		; 10 BA
	bpl   0.b		; 10 00
	bpl  28.b		; 10 1C
	rol $7E.b,X		; 36 7E
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	bpl -123.b		; 10 85
	bpl -122.b		; 10 86
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl -114.b		; 10 8E
	bpl -115.b		; 10 8D
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl -106.b		; 10 96
	bpl -108.b		; 10 94
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl -96.b		; 10 A0
	bpl -97.b		; 10 9F
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl -88.b		; 10 A8
	bpl -90.b		; 10 A6
	bvc   0.b		; 50 00
	bpl   0.b		; 10 00
	bpl -80.b		; 10 B0
	bvc -81.b		; 50 AF
	bvc   0.b		; 50 00
	bpl   0.b		; 10 00
	bpl -74.b		; 10 B6
	bvc -75.b		; 50 B5
	bvc   0.b		; 50 00
	bpl   0.b		; 10 00
	bpl -70.b		; 10 BA
	bvc -71.b		; 50 B9
	bvc   0.b		; 50 00
	bpl  28.b		; 10 1C
	rol $7E.b,X		; 36 7E
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl -103.b		; 10 99
	bpl -102.b		; 10 9A
	bpl -102.b		; 10 9A
	bvc -103.b		; 50 99
	bvc -93.b		; 50 A3
	bpl -92.b		; 10 A4
	bpl -92.b		; 10 A4
	bvc -93.b		; 50 A3
	bvc -85.b		; 50 AB
	bpl -84.b		; 10 AC
	bpl -83.b		; 10 AD
	bpl -85.b		; 10 AB
	bvc   0.b		; 50 00
	bpl -77.b		; 10 B3
	bpl -76.b		; 10 B4
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl -73.b		; 10 B7
	bpl -72.b		; 10 B8
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl -69.b		; 10 BB
	bpl -68.b		; 10 BC
	bpl   0.b		; 10 00
	bpl  78.b		; 10 4E
	ora $08.b,S		; 03 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	bpl -127.b		; 10 81
	bpl -127.b		; 10 81
	bvc   0.b		; 50 00
	bpl   0.b		; 10 00
	bpl -119.b		; 10 89
	bpl -119.b		; 10 89
	bvc   0.b		; 50 00
	bpl -111.b		; 10 91
	bpl -110.b		; 10 92
	bpl -110.b		; 10 92
	bvc -111.b		; 50 91
	bvc -101.b		; 50 9B
	bpl -100.b		; 10 9C
	bpl -99.b		; 10 9D
	bpl -101.b		; 10 9B
	bvc -91.b		; 50 A5
	bpl -90.b		; 10 A6
	bpl -89.b		; 10 A7
	bpl -91.b		; 10 A5
	bvc -82.b		; 50 AE
	bpl -81.b		; 10 AF
	bpl -80.b		; 10 B0
	bpl -82.b		; 10 AE
	bvc   0.b		; 50 00
	bpl -75.b		; 10 B5
	bpl -74.b		; 10 B6
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl -71.b		; 10 B9
	bpl -70.b		; 10 BA
	bpl   0.b		; 10 00
	bpl -28.b		; 10 E4
	ora ($0A.b,X)		; 01 0A
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
	bpl  30.b		; 10 1E
	ora ($1F.b),Y		; 11 1F
	ora ($20.b),Y		; 11 20
	ora ($21.b),Y		; 11 21
	ora ($22.b),Y		; 11 22
	ora ($23.b),Y		; 11 23
	ora ($24.b),Y		; 11 24
	ora ($25.b),Y		; 11 25
	ora ($26.b),Y		; 11 26
	ora ($27.b),Y		; 11 27
	ora ($28.b),Y		; 11 28
	ora ($29.b),Y		; 11 29
	ora ($2A.b),Y		; 11 2A
	ora ($2B.b),Y		; 11 2B
	ora ($00.b),Y		; 11 00
	bpl  44.b		; 10 2C
	ora ($2D.b),Y		; 11 2D
	ora ($2E.b),Y		; 11 2E
	ora ($2F.b),Y		; 11 2F
	ora ($00.b),Y		; 11 00
	bpl 122.b		; 10 7A
	ora ($7B.b),Y		; 11 7B
	ora ($7C.b),Y		; 11 7C
	ora ($7D.b),Y		; 11 7D
	ora ($00.b),Y		; 11 00
	bpl 126.b		; 10 7E
	ora ($7F.b),Y		; 11 7F
	ora ($80.b),Y		; 11 80
	ora ($81.b),Y		; 11 81
	ora ($00.b),Y		; 11 00
	bpl -126.b		; 10 82
	ora ($83.b),Y		; 11 83
	ora ($84.b),Y		; 11 84
	ora ($85.b),Y		; 11 85
	ora ($EC.b),Y		; 11 EC
	bpl -122.b		; 10 86
	ora ($87.b),Y		; 11 87
	ora ($88.b),Y		; 11 88
	ora ($89.b),Y		; 11 89
	ora ($F7.b),Y		; 11 F7
	ora ($0A.b,X)		; 01 0A
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
	brk $21.b		; 00 21
	eor ($20.b),Y		; 51 20
	eor ($1F.b),Y		; 51 1F
	eor ($1E.b),Y		; 51 1E
	eor ($00.b),Y		; 51 00
	bvc  38.b		; 50 26
	eor ($25.b),Y		; 51 25
	eor ($24.b),Y		; 51 24
	eor ($23.b),Y		; 51 23
	eor ($22.b),Y		; 51 22
	eor ($2B.b),Y		; 51 2B
	eor ($2A.b),Y		; 51 2A
	eor ($29.b),Y		; 51 29
	eor ($28.b),Y		; 51 28
	eor ($27.b),Y		; 51 27
	eor ($2F.b),Y		; 51 2F
	eor ($2E.b),Y		; 51 2E
	eor ($2D.b),Y		; 51 2D
	eor ($2C.b),Y		; 51 2C
	eor ($00.b),Y		; 51 00
	bvc 125.b		; 50 7D
	eor ($7C.b),Y		; 51 7C
	eor ($7B.b),Y		; 51 7B
	eor ($7A.b),Y		; 51 7A
	eor ($00.b),Y		; 51 00
	bvc -127.b		; 50 81
	eor ($80.b),Y		; 51 80
	eor ($7F.b),Y		; 51 7F
	eor ($7E.b),Y		; 51 7E
	eor ($00.b),Y		; 51 00
	bvc -123.b		; 50 85
	eor ($84.b),Y		; 51 84
	eor ($83.b),Y		; 51 83
	eor ($82.b),Y		; 51 82
	eor ($00.b),Y		; 51 00
	bvc -119.b		; 50 89
	eor ($88.b),Y		; 51 88
	eor ($87.b),Y		; 51 87
	eor ($86.b),Y		; 51 86
	eor ($EC.b),Y		; 51 EC
	bvc -13.b		; 50 F3
	cop $08.b		; 02 08
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
	bvc -66.b		; 50 BE
	bvc -67.b		; 50 BD
	bvc   0.b		; 50 00
	bvc -62.b		; 50 C2
	bvc -63.b		; 50 C1
	bvc -64.b		; 50 C0
	bvc -65.b		; 50 BF
	bvc -58.b		; 50 C6
	bvc -59.b		; 50 C5
	bvc -60.b		; 50 C4
	bvc -61.b		; 50 C3
	bvc -54.b		; 50 CA
	bvc -55.b		; 50 C9
	bvc -56.b		; 50 C8
	bvc -57.b		; 50 C7
	bvc -50.b		; 50 CE
	bvc -51.b		; 50 CD
	bvc -52.b		; 50 CC
	bvc -53.b		; 50 CB
	bvc -45.b		; 50 D3
	bvc -46.b		; 50 D2
	bvc -47.b		; 50 D1
	bvc -48.b		; 50 D0
	bvc -23.b		; 50 E9
	cop $08.b		; 02 08
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
	bpl -67.b		; 10 BD
	bpl -66.b		; 10 BE
	bpl   0.b		; 10 00
	bpl -65.b		; 10 BF
	bpl -64.b		; 10 C0
	bpl -63.b		; 10 C1
	bpl -62.b		; 10 C2
	bpl -61.b		; 10 C3
	bpl -60.b		; 10 C4
	bpl -59.b		; 10 C5
	bpl -58.b		; 10 C6
	bpl -57.b		; 10 C7
	bpl -56.b		; 10 C8
	bpl -55.b		; 10 C9
	bpl -54.b		; 10 CA
	bpl -53.b		; 10 CB
	bpl -52.b		; 10 CC
	bpl -51.b		; 10 CD
	bpl -50.b		; 10 CE
	bpl -48.b		; 10 D0
	bpl -47.b		; 10 D1
	bpl -46.b		; 10 D2
	bpl -45.b		; 10 D3
	bpl  78.b		; 10 4E
	ora $08.b,S		; 03 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	bpl -127.b		; 10 81
	bpl -127.b		; 10 81
	bvc   0.b		; 50 00
	bpl   0.b		; 10 00
	bpl -119.b		; 10 89
	bpl -119.b		; 10 89
	bvc   0.b		; 50 00
	bpl -111.b		; 10 91
	bpl -110.b		; 10 92
	bpl -110.b		; 10 92
	bvc -111.b		; 50 91
	bvc -101.b		; 50 9B
	bpl -100.b		; 10 9C
	bpl -99.b		; 10 9D
	bpl -101.b		; 10 9B
	bvc -91.b		; 50 A5
	bpl -90.b		; 10 A6
	bpl -89.b		; 10 A7
	bpl -91.b		; 10 A5
	bvc -82.b		; 50 AE
	bpl -81.b		; 10 AF
	bpl -80.b		; 10 B0
	bpl -82.b		; 10 AE
	bvc   0.b		; 50 00
	bpl -75.b		; 10 B5
	bpl -74.b		; 10 B6
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl -71.b		; 10 B9
	bpl -70.b		; 10 BA
	bpl   0.b		; 10 00
	bpl -60.b		; 10 C4
	ora ($08.b,X)		; 01 08
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	bpl -52.b		; 10 CC
	ora ($CD.b)		; 12 CD
	ora ($CE.b)		; 12 CE
	ora ($00.b)		; 12 00
	bpl -36.b		; 10 DC
	ora ($DD.b)		; 12 DD
	ora ($DE.b)		; 12 DE
	ora ($00.b)		; 12 00
	bpl -49.b		; 10 CF
	ora ($E0.b)		; 12 E0
	ora ($E1.b)		; 12 E1
	ora ($00.b)		; 12 00
	bpl -33.b		; 10 DF
	ora ($F0.b)		; 12 F0
	ora ($F1.b)		; 12 F1
	ora ($00.b)		; 12 00
	bpl -30.b		; 10 E2
	ora ($E3.b)		; 12 E3
	ora ($E4.b)		; 12 E4
	ora ($00.b)		; 12 00
	bpl -14.b		; 10 F2
	ora ($F3.b)		; 12 F3
	ora ($F4.b)		; 12 F4
	ora ($00.b)		; 12 00
	bpl -27.b		; 10 E5
	ora ($E6.b)		; 12 E6
	ora ($E7.b)		; 12 E7
	ora ($00.b)		; 12 00
	bpl -11.b		; 10 F5
	ora ($F6.b)		; 12 F6
	ora ($F7.b)		; 12 F7
	ora ($00.b)		; 12 00
	bpl -24.b		; 10 E8
	ora ($E9.b)		; 12 E9
	ora ($EA.b)		; 12 EA
	ora ($00.b)		; 12 00
	bpl  -8.b		; 10 F8
	ora ($F9.b)		; 12 F9
	ora ($FA.b)		; 12 FA
	ora ($EB.b)		; 12 EB
	ora ($EC.b)		; 12 EC
	ora ($ED.b)		; 12 ED
	ora ($EE.b)		; 12 EE
	ora ($FB.b)		; 12 FB
	ora ($FC.b)		; 12 FC
	ora ($FD.b)		; 12 FD
	ora ($FE.b)		; 12 FE
	ora ($D8.b)		; 12 D8
	ora ($08.b,X)		; 01 08
	brk $0C.b		; 00 0C
	brk $CE.b		; 00 CE
	eor ($CD.b)		; 52 CD
	eor ($CC.b)		; 52 CC
	eor ($00.b)		; 52 00
	bpl -34.b		; 10 DE
	eor ($DD.b)		; 52 DD
	eor ($DC.b)		; 52 DC
	eor ($00.b)		; 52 00
	bpl -31.b		; 10 E1
	eor ($E0.b)		; 52 E0
	eor ($CF.b)		; 52 CF
	eor ($00.b)		; 52 00
	bpl -15.b		; 10 F1
	eor ($F0.b)		; 52 F0
	eor ($DF.b)		; 52 DF
	eor ($00.b)		; 52 00
	bpl -28.b		; 10 E4
	eor ($E3.b)		; 52 E3
	eor ($E2.b)		; 52 E2
	eor ($00.b)		; 52 00
	bpl -12.b		; 10 F4
	eor ($F3.b)		; 52 F3
	eor ($F2.b)		; 52 F2
	eor ($00.b)		; 52 00
	bpl -25.b		; 10 E7
	eor ($E6.b)		; 52 E6
	eor ($E5.b)		; 52 E5
	eor ($00.b)		; 52 00
	bpl  -9.b		; 10 F7
	eor ($F6.b)		; 52 F6
	eor ($F5.b)		; 52 F5
	eor ($00.b)		; 52 00
	bpl -22.b		; 10 EA
	eor ($E9.b)		; 52 E9
	eor ($E8.b)		; 52 E8
	eor ($00.b)		; 52 00
	bpl  -6.b		; 10 FA
	eor ($F9.b)		; 52 F9
	eor ($F8.b)		; 52 F8
	eor ($00.b)		; 52 00
	bpl -18.b		; 10 EE
	eor ($ED.b)		; 52 ED
	eor ($EC.b)		; 52 EC
	eor ($EB.b)		; 52 EB
	eor ($FE.b)		; 52 FE
	eor ($FD.b)		; 52 FD
	eor ($FC.b)		; 52 FC
	eor ($FB.b)		; 52 FB
	eor ($D4.b)		; 52 D4
	cop $08.b		; 02 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	bpl -63.b		; 10 C1
	eor ($C0.b)		; 52 C0
	eor ($00.b)		; 52 00
	bpl   0.b		; 10 00
	bpl -47.b		; 10 D1
	eor ($D0.b)		; 52 D0
	eor ($00.b)		; 52 00
	bpl -59.b		; 10 C5
	eor ($C4.b)		; 52 C4
	eor ($C3.b)		; 52 C3
	eor ($C2.b)		; 52 C2
	eor ($D5.b)		; 52 D5
	eor ($D4.b)		; 52 D4
	eor ($D3.b)		; 52 D3
	eor ($D2.b)		; 52 D2
	eor ($C9.b)		; 52 C9
	eor ($C8.b)		; 52 C8
	eor ($C7.b)		; 52 C7
	eor ($C6.b)		; 52 C6
	eor ($D9.b)		; 52 D9
	eor ($D8.b)		; 52 D8
	eor ($D7.b)		; 52 D7
	eor ($D6.b)		; 52 D6
	eor ($00.b)		; 52 00
	bpl -53.b		; 10 CB
	eor ($CA.b)		; 52 CA
	eor ($00.b)		; 52 00
	bpl   0.b		; 10 00
	bpl -37.b		; 10 DB
	eor ($DA.b)		; 52 DA
	eor ($00.b)		; 52 00
	bpl -56.b		; 10 C8
	cop $08.b		; 02 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	bpl -64.b		; 10 C0
	ora ($C1.b)		; 12 C1
	ora ($00.b)		; 12 00
	bpl   0.b		; 10 00
	bpl -48.b		; 10 D0
	ora ($D1.b)		; 12 D1
	ora ($00.b)		; 12 00
	bpl -62.b		; 10 C2
	ora ($C3.b)		; 12 C3
	ora ($C4.b)		; 12 C4
	ora ($C5.b)		; 12 C5
	ora ($D2.b)		; 12 D2
	ora ($D3.b)		; 12 D3
	ora ($D4.b)		; 12 D4
	ora ($D5.b)		; 12 D5
	ora ($C6.b)		; 12 C6
	ora ($C7.b)		; 12 C7
	ora ($C8.b)		; 12 C8
	ora ($C9.b)		; 12 C9
	ora ($D6.b)		; 12 D6
	ora ($D7.b)		; 12 D7
	ora ($D8.b)		; 12 D8
	ora ($D9.b)		; 12 D9
	ora ($00.b)		; 12 00
	bpl -54.b		; 10 CA
	ora ($CB.b)		; 12 CB
	ora ($00.b)		; 12 00
	bpl   0.b		; 10 00
	bpl -38.b		; 10 DA
	ora ($DB.b)		; 12 DB
	ora ($00.b)		; 12 00
	bpl  32.b		; 10 20
	brk $40.b		; 00 40
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
	brk $E2.b		; 00 E2
	asl $0EE3.w		; 0E E3 0E
	cpx $16.b		; E4 16
	sbc $16.b		; E5 16
	inc $16.b		; E6 16
	sbc [$16.b]		; E7 16
	asl $16.b		; 06 16
	ora [$16.b]		; 07 16
	php		; 08
	asl $09.b,X		; 16 09
	asl $0A.b,X		; 16 0A
	asl $0B.b,X		; 16 0B
	asl $0C.b,X		; 16 0C
	asl $0D.b,X		; 16 0D
	asl $E8.b,X		; 16 E8
	asl $00.b,X		; 16 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $29.b		; 00 29
	ora [$80.b]		; 07 80
	asl $2A.b		; 06 2A
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E9.b		; 00 E9
	asl $0EEA.w		; 0E EA 0E
	ora ($16.b),Y		; 11 16
	ora ($16.b)		; 12 16
	jsr $EB16.w		; 20 16 EB
	asl $EC.b,X		; 16 EC
	asl $16.b,X		; 16 16
	asl $17.b,X		; 16 17
	asl $18.b,X		; 16 18
	asl $19.b,X		; 16 19
	asl $1A.b,X		; 16 1A
	asl $1B.b,X		; 16 1B
	asl $1C.b,X		; 16 1C
	asl $1D.b,X		; 16 1D
	asl $ED.b,X		; 16 ED
	asl $00.b,X		; 16 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8C.b		; 00 8C
	asl $8D.b		; 06 8D
	asl $8E.b		; 06 8E
	asl $8F.b		; 06 8F
	asl $2B.b		; 06 2B
	ora [$2C.b]		; 07 2C
	ora [$92.b]		; 07 92
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EE.b		; 00 EE
	asl $12.b,X		; 16 12
	asl $20.b,X		; 16 20
	asl $21.b,X		; 16 21
	asl $30.b,X		; 16 30
	asl $EF.b,X		; 16 EF
	asl $F0.b,X		; 16 F0
	asl $F1.b,X		; 16 F1
	asl $F2.b,X		; 16 F2
	asl $29.b,X		; 16 29
	asl $F3.b,X		; 16 F3
	asl $F4.b,X		; 16 F4
	asl $F5.b,X		; 16 F5
	asl $F6.b,X		; 16 F6
	asl $F7.b,X		; 16 F7
	asl $F8.b,X		; 16 F8
	asl $2D.b,X		; 16 2D
	ora [$00.b],Y		; 17 00
	brk $2E.b		; 00 2E
	ora [$2F.b],Y		; 17 2F
	ora [$30.b],Y		; 17 30
	ora [$9A.b],Y		; 17 9A
	asl $9B.b		; 06 9B
	asl $9C.b		; 06 9C
	asl $4C.b		; 06 4C
	asl $9D.b,X		; 16 9D
	asl $9E.b		; 06 9E
	asl $9F.b		; 06 9F
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F9.b		; 00 F9
	asl $2F.b,X		; 16 2F
	asl $30.b,X		; 16 30
	asl $31.b,X		; 16 31
	asl $3E.b,X		; 16 3E
	asl $FA.b,X		; 16 FA
	asl $16FB.w		; 0E FB 16
	jsr ($FD16.w,X)		; FC 16 FD
	asl $FE.b,X		; 16 FE
	asl $FF.b,X		; 16 FF
	asl $00.b,X		; 16 00
	ora [$01.b],Y		; 17 01
	ora [$02.b],Y		; 17 02
	ora [$03.b],Y		; 17 03
	ora [$04.b],Y		; 17 04
	ora [$31.b],Y		; 17 31
	ora [$32.b],Y		; 17 32
	ora [$33.b],Y		; 17 33
	ora [$34.b],Y		; 17 34
	ora [$35.b],Y		; 17 35
	ora [$A9.b],Y		; 17 A9
	asl $AA.b		; 06 AA
	asl $AB.b		; 06 AB
	asl $00.b		; 06 00
	brk $AC.b		; 00 AC
	asl $AD.b		; 06 AD
	asl $AE.b		; 06 AE
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3D.b		; 00 3D
	asl $31.b,X		; 16 31
	asl $3E.b,X		; 16 3E
	asl $05.b,X		; 16 05
	ora $070F06.l		; 0F 06 0F 07
	ora $091708.l		; 0F 08 17 09
	ora [$0A.b],Y		; 17 0A
	ora [$0B.b],Y		; 17 0B
	ora [$0C.b],Y		; 17 0C
	ora [$0D.b],Y		; 17 0D
	ora [$0E.b],Y		; 17 0E
	ora [$0F.b],Y		; 17 0F
	ora [$10.b],Y		; 17 10
	ora [$11.b],Y		; 17 11
	ora [$37.b],Y		; 17 37
	ora [$38.b],Y		; 17 38
	ora [$39.b],Y		; 17 39
	ora [$3A.b],Y		; 17 3A
	ora [$3B.b],Y		; 17 3B
	ora [$00.b],Y		; 17 00
	brk $B8.b		; 00 B8
	asl $B9.b		; 06 B9
	asl $BA.b		; 06 BA
	asl $BB.b		; 06 BB
	asl $BC.b		; 06 BC
	asl $BD.b		; 06 BD
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4C.b		; 00 4C
	asl $4D.b,X		; 16 4D
	asl $4E.b,X		; 16 4E
	asl $0F12.w		; 0E 12 0F
	ora ($0F.b,S),Y		; 13 0F
	trb $0F.b		; 14 0F
	ora $0F.b,X		; 15 0F
	asl $0F.b,X		; 16 0F
	ora [$17.b],Y		; 17 17
	clc		; 18
	ora [$19.b],Y		; 17 19
	ora [$1A.b],Y		; 17 1A
	ora [$1B.b],Y		; 17 1B
	ora [$00.b],Y		; 17 00
	brk $1C.b		; 00 1C
	ora [$1D.b],Y		; 17 1D
	ora [$3C.b],Y		; 17 3C
	ora [$3D.b],Y		; 17 3D
	ora [$3E.b],Y		; 17 3E
	ora [$3F.b],Y		; 17 3F
	ora [$00.b],Y		; 17 00
	brk $C4.b		; 00 C4
	asl $C5.b		; 06 C5
	asl $C6.b		; 06 C6
	asl $C7.b		; 06 C7
	asl $C8.b		; 06 C8
	asl $C9.b		; 06 C9
	asl $CA.b		; 06 CA
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5B.b		; 00 5B
	asl $0E5C.w		; 0E 5C 0E
	eor $5E0E.w,X		; 5D 0E 5E
	asl $0E5F.w		; 0E 5F 0E
	asl $1F0F.w,X		; 1E 0F 1F
	ora [$20.b],Y		; 17 20
	ora [$21.b],Y		; 17 21
	ora [$22.b],Y		; 17 22
	ora [$23.b],Y		; 17 23
	ora [$24.b],Y		; 17 24
	ora [$25.b],Y		; 17 25
	ora [$26.b],Y		; 17 26
	ora $281727.l		; 0F 27 17 28
	ora [$61.b],Y		; 17 61
	asl $40.b,X		; 16 40
	ora [$41.b]		; 07 41
	ora [$42.b]		; 07 42
	ora [$CF.b]		; 07 CF
	asl $D0.b		; 06 D0
	asl $D1.b		; 06 D1
	asl $D2.b		; 06 D2
	asl $D3.b		; 06 D3
	asl $D4.b		; 06 D4
	asl $D5.b		; 06 D5
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6A.b		; 00 6A
	asl $0E6B.w		; 0E 6B 0E
	jmp ($000E.w)		; 6C 0E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $76.b		; 00 76
	asl $0E77.w		; 0E 77 0E
	sei		; 78
	asl $0ED6.w		; 0E D6 0E
	cmp [$12.b],Y		; D7 12
	cld		; D8
	asl $D9.b		; 06 D9
	asl $DA.b		; 06 DA
	asl $DB.b		; 06 DB
	asl $DC.b		; 06 DC
	asl $DD.b		; 06 DD
	asl $DE.b		; 06 DE
	asl $DF.b		; 06 DF
	asl $E0.b		; 06 E0
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6F.b		; 00 6F
	asl $0E70.w		; 0E 70 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $06.b		; 85 06
	stx $06.b		; 86 06
	sta [$06.b]		; 87 06
	dey		; 88
	asl $A0.b		; 06 A0
	asl $A1.b		; 06 A1
	asl $A2.b		; 06 A2
	asl $A3.b		; 06 A3
	asl $BE.b		; 06 BE
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $71.b		; 00 71
	asl $00.b,X		; 16 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $93.b		; 00 93
	asl $94.b		; 06 94
	asl $95.b		; 06 95
	asl $96.b		; 06 96
	asl $AF.b		; 06 AF
	asl $B0.b		; 06 B0
	asl $B1.b		; 06 B1
	asl $B2.b		; 06 B2
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $40.b		; 00 40
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
	brk $4C.b		; 00 4C
	stx $43.b,Y		; 96 43
	ora [$44.b],Y		; 17 44
	ora [$00.b],Y		; 17 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $45.b		; 00 45
	ora [$46.b],Y		; 17 46
	ora [$47.b],Y		; 17 47
	ora [$48.b],Y		; 17 48
	ora [$49.b],Y		; 17 49
	ora [$4A.b],Y		; 17 4A
	ora [$4B.b],Y		; 17 4B
	ora [$4C.b],Y		; 17 4C
	ora $5C0F4D.l		; 0F 4D 0F 5C
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sep #$0E		; E2 0E
	sbc $0E.b,S		; E3 0E
	lsr $4F17.w		; 4E 17 4F
	ora [$6E.b],Y		; 17 6E
	lsr $50.b,X		; 56 50
	ora [$51.b],Y		; 17 51
	ora [$07.b],Y		; 17 07
	asl $08.b,X		; 16 08
	asl $52.b,X		; 16 52
	ora [$53.b],Y		; 17 53
	ora [$54.b],Y		; 17 54
	ora [$55.b],Y		; 17 55
	ora $570F56.l		; 0F 56 0F 57
	ora $840F83.l		; 0F 83 0F 84
	ora [$85.b],Y		; 17 85
	ora [$86.b],Y		; 17 86
	ora [$00.b],Y		; 17 00
	brk $00.b		; 00 00
	brk $29.b		; 00 29
	ora [$80.b]		; 07 80
	asl $2A.b		; 06 2A
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E9.b		; 00 E9
	asl $0EEA.w		; 0E EA 0E
	ora ($16.b),Y		; 11 16
	ora ($16.b)		; 12 16
	cli		; 58
	ora [$59.b],Y		; 17 59
	ora [$5A.b],Y		; 17 5A
	ora [$5B.b],Y		; 17 5B
	ora [$5C.b],Y		; 17 5C
	ora [$5D.b],Y		; 17 5D
	ora [$19.b],Y		; 17 19
	asl $5E.b,X		; 16 5E
	ora $600F5F.l		; 0F 5F 0F 60
	ora $620F61.l		; 0F 61 0F 62
	ora $8C178B.l		; 0F 8B 17 8C
	ora [$8D.b],Y		; 17 8D
	ora [$00.b],Y		; 17 00
	brk $00.b		; 00 00
	brk $8C.b		; 00 8C
	asl $8D.b		; 06 8D
	asl $8E.b		; 06 8E
	asl $8F.b		; 06 8F
	asl $2B.b		; 06 2B
	ora [$2C.b]		; 07 2C
	ora [$92.b]		; 07 92
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EE.b		; 00 EE
	asl $12.b,X		; 16 12
	asl $20.b,X		; 16 20
	asl $21.b,X		; 16 21
	asl $30.b,X		; 16 30
	asl $63.b,X		; 16 63
	ora [$64.b],Y		; 17 64
	ora [$65.b],Y		; 17 65
	ora [$66.b],Y		; 17 66
	ora $680F67.l		; 0F 67 0F 68
	ora [$29.b],Y		; 17 29
	asl $69.b,X		; 16 69
	ora $6B0F6A.l		; 0F 6A 0F 6B
	ora $9216F5.l		; 0F F5 16 92
	ora [$93.b],Y		; 17 93
	ora [$94.b],Y		; 17 94
	ora [$95.b],Y		; 17 95
	ora [$96.b],Y		; 17 96
	ora [$97.b],Y		; 17 97
	ora [$9B.b]		; 07 9B
	asl $9C.b		; 06 9C
	asl $4C.b		; 06 4C
	asl $9D.b,X		; 16 9D
	asl $9E.b		; 06 9E
	asl $9F.b		; 06 9F
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F9.b		; 00 F9
	asl $2F.b,X		; 16 2F
	asl $30.b,X		; 16 30
	asl $31.b,X		; 16 31
	asl $3E.b,X		; 16 3E
	asl $6C.b,X		; 16 6C
	ora $6D1634.l		; 0F 34 16 6D
	ora $6F0F6E.l		; 0F 6E 0F 6F
	ora $381629.l		; 0F 29 16 38
	asl $70.b,X		; 16 70
	ora $721771.l		; 0F 71 17 72
	ora [$73.b],Y		; 17 73
	ora [$9C.b],Y		; 17 9C
	ora [$9D.b],Y		; 17 9D
	ora [$9E.b],Y		; 17 9E
	ora [$9F.b],Y		; 17 9F
	ora [$A0.b],Y		; 17 A0
	ora [$A1.b],Y		; 17 A1
	ora [$AA.b]		; 07 AA
	asl $AB.b		; 06 AB
	asl $00.b		; 06 00
	brk $AC.b		; 00 AC
	asl $AD.b		; 06 AD
	asl $AE.b		; 06 AE
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3D.b		; 00 3D
	asl $31.b,X		; 16 31
	asl $3E.b,X		; 16 3E
	asl $3F.b,X		; 16 3F
	asl $0F74.w		; 0E 74 0F
	adc $0F.b,X		; 75 0F
	ror $0F.b,X		; 76 0F
	adc [$0F.b],Y		; 77 0F
	sei		; 78
	ora $7A0F79.l		; 0F 79 0F 7A
	ora $7B1647.l		; 0F 47 16 7B
	ora [$7C.b],Y		; 17 7C
	ora [$7D.b],Y		; 17 7D
	ora [$7E.b],Y		; 17 7E
	ora [$87.b],Y		; 17 87
	ora [$88.b],Y		; 17 88
	ora [$89.b],Y		; 17 89
	ora [$8A.b],Y		; 17 8A
	ora [$00.b],Y		; 17 00
	brk $00.b		; 00 00
	brk $B8.b		; 00 B8
	asl $B9.b		; 06 B9
	asl $BA.b		; 06 BA
	asl $BB.b		; 06 BB
	asl $BC.b		; 06 BC
	asl $BD.b		; 06 BD
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4C.b		; 00 4C
	asl $4D.b,X		; 16 4D
	asl $4E.b,X		; 16 4E
	asl $0E4F.w		; 0E 4F 0E
	bvc  14.b		; 50 0E
	eor ($0E.b),Y		; 51 0E
	eor ($0E.b)		; 52 0E
	eor ($0E.b,S),Y		; 53 0E
	mvn $55,$16		; 54 16 55
	asl $56.b,X		; 16 56
	asl $57.b,X		; 16 57
	asl $00.b,X		; 16 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	ora [$80.b],Y		; 17 80
	ora [$8E.b],Y		; 17 8E
	ora [$8F.b],Y		; 17 8F
	ora [$90.b],Y		; 17 90
	ora [$91.b],Y		; 17 91
	ora [$00.b],Y		; 17 00
	brk $C4.b		; 00 C4
	asl $C5.b		; 06 C5
	asl $C6.b		; 06 C6
	asl $C7.b		; 06 C7
	asl $C8.b		; 06 C8
	asl $C9.b		; 06 C9
	asl $CA.b		; 06 CA
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5B.b		; 00 5B
	asl $0E5C.w		; 0E 5C 0E
	eor $5E0E.w,X		; 5D 0E 5E
	asl $0E5F.w		; 0E 5F 0E
	rts		; 60

	asl $1661.w		; 0E 61 16
	.db $62, $16, $63		; 62 16 63
	asl $61.b,X		; 16 61
	asl $64.b,X		; 16 64
	asl $65.b,X		; 16 65
	asl $66.b,X		; 16 66
	asl $26.b,X		; 16 26
	ora $821781.l		; 0F 81 17 82
	ora [$98.b],Y		; 17 98
	ora [$99.b],Y		; 17 99
	ora [$9A.b]		; 07 9A
	ora [$9B.b]		; 07 9B
	ora [$CF.b]		; 07 CF
	asl $D0.b		; 06 D0
	asl $D1.b		; 06 D1
	asl $D2.b		; 06 D2
	asl $D3.b		; 06 D3
	asl $D4.b		; 06 D4
	asl $D5.b		; 06 D5
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6A.b		; 00 6A
	asl $0E6B.w		; 0E 6B 0E
	jmp ($000E.w)		; 6C 0E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $76.b		; 00 76
	asl $0E77.w		; 0E 77 0E
	sei		; 78
	asl $0ED6.w		; 0E D6 0E
	cmp [$12.b],Y		; D7 12
	cld		; D8
	asl $D9.b		; 06 D9
	asl $DA.b		; 06 DA
	asl $DB.b		; 06 DB
	asl $DC.b		; 06 DC
	asl $DD.b		; 06 DD
	asl $DE.b		; 06 DE
	asl $DF.b		; 06 DF
	asl $E0.b		; 06 E0
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6F.b		; 00 6F
	asl $0E70.w		; 0E 70 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $06.b		; 85 06
	stx $06.b		; 86 06
	sta [$06.b]		; 87 06
	dey		; 88
	asl $A0.b		; 06 A0
	asl $A1.b		; 06 A1
	asl $A2.b		; 06 A2
	asl $A3.b		; 06 A3
	asl $BE.b		; 06 BE
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $71.b		; 00 71
	asl $00.b,X		; 16 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $93.b		; 00 93
	asl $94.b		; 06 94
	asl $95.b		; 06 95
	asl $96.b		; 06 96
	asl $AF.b		; 06 AF
	asl $B0.b		; 06 B0
	asl $B1.b		; 06 B1
	asl $B2.b		; 06 B2
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $40.b		; 00 40
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
	brk $75.b		; 00 75
	asl $76.b,X		; 16 76
	asl $77.b,X		; 16 77
	asl $78.b,X		; 16 78
	asl $79.b,X		; 16 79
	asl $00.b,X		; 16 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $73.b		; 00 73
	asl $74.b,X		; 16 74
	asl $00.b,X		; 16 00
	brk $00.b		; 00 00
	brk $7D.b		; 00 7D
	asl $7E.b,X		; 16 7E
	asl $30.b,X		; 16 30
	asl $31.b,X		; 16 31
	asl $3F.b,X		; 16 3F
	asl $7F.b,X		; 16 7F
	asl $0E80.w		; 0E 80 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($0E.b,X)		; 01 0E
	cop $0E.b		; 02 0E
	ora $0E.b,S		; 03 0E
	tsb $16.b		; 04 16
	ora $16.b		; 05 16
	asl $16.b		; 06 16
	ora [$16.b]		; 07 16
	php		; 08
	asl $09.b,X		; 16 09
	asl $0A.b,X		; 16 0A
	asl $0B.b,X		; 16 0B
	asl $0C.b,X		; 16 0C
	asl $0D.b,X		; 16 0D
	asl $0E0E.w		; 0E 0E 0E
	ora $0E810E.l		; 0F 0E 81 0E
	.db $82, $0E, $83		; 82 0E 83
	asl $84.b,X		; 16 84
	asl $85.b,X		; 16 85
	asl $86.b,X		; 16 86
	asl $87.b,X		; 16 87
	asl $88.b		; 06 88
	asl $89.b		; 06 89
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $8A.b		; 00 8A
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	asl $0E11.w		; 0E 11 0E
	ora ($16.b)		; 12 16
	ora ($16.b,S),Y		; 13 16
	trb $16.b		; 14 16
	brk $00.b		; 00 00
	ora $16.b,X		; 15 16
	asl $16.b,X		; 16 16
	ora [$16.b],Y		; 17 16
	clc		; 18
	asl $19.b,X		; 16 19
	asl $1A.b,X		; 16 1A
	asl $1B.b,X		; 16 1B
	asl $1C.b,X		; 16 1C
	asl $0E1D.w		; 0E 1D 0E
	asl $8B0E.w,X		; 1E 0E 8B
	asl $8C.b,X		; 16 8C
	asl $8D.b,X		; 16 8D
	asl $8E.b,X		; 16 8E
	asl $8F.b,X		; 16 8F
	asl $90.b,X		; 16 90
	asl $91.b		; 06 91
	asl $92.b		; 06 92
	asl $93.b		; 06 93
	asl $94.b		; 06 94
	asl $95.b		; 06 95
	asl $96.b		; 06 96
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	asl $20.b,X		; 16 20
	asl $21.b,X		; 16 21
	asl $22.b,X		; 16 22
	asl $23.b,X		; 16 23
	asl $24.b,X		; 16 24
	asl $25.b,X		; 16 25
	asl $26.b,X		; 16 26
	asl $27.b,X		; 16 27
	asl $28.b,X		; 16 28
	asl $29.b,X		; 16 29
	asl $27.b,X		; 16 27
	asl $2A.b,X		; 16 2A
	asl $2B.b,X		; 16 2B
	asl $0E2C.w		; 0E 2C 0E
	and $970E.w		; 2D 0E 97
	asl $98.b,X		; 16 98
	asl $99.b,X		; 16 99
	asl $9A.b,X		; 16 9A
	asl $9B.b,X		; 16 9B
	asl $9C.b,X		; 16 9C
	asl $9D.b		; 06 9D
	asl $9E.b		; 06 9E
	asl $4D.b		; 06 4D
	asl $9F.b,X		; 16 9F
	asl $A0.b		; 06 A0
	asl $A1.b		; 06 A1
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2E.b		; 00 2E
	asl $2F.b,X		; 16 2F
	asl $30.b,X		; 16 30
	asl $31.b,X		; 16 31
	asl $32.b,X		; 16 32
	asl $33.b,X		; 16 33
	asl $34.b,X		; 16 34
	asl $35.b,X		; 16 35
	asl $36.b,X		; 16 36
	asl $37.b,X		; 16 37
	asl $38.b,X		; 16 38
	asl $39.b,X		; 16 39
	asl $3A.b,X		; 16 3A
	asl $3B.b,X		; 16 3B
	asl $3C.b,X		; 16 3C
	asl $3D.b,X		; 16 3D
	asl $A2.b,X		; 16 A2
	asl $A3.b,X		; 16 A3
	asl $A4.b,X		; 16 A4
	asl $A5.b,X		; 16 A5
	asl $A6.b,X		; 16 A6
	asl $A7.b,X		; 16 A7
	asl $A8.b		; 06 A8
	asl $A9.b		; 06 A9
	asl $00.b		; 06 00
	brk $AA.b		; 00 AA
	asl $AB.b		; 06 AB
	asl $AC.b		; 06 AC
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	asl $31.b,X		; 16 31
	asl $3F.b,X		; 16 3F
	asl $40.b,X		; 16 40
	asl $1641.w		; 0E 41 16
	.db $42, $0E		; 42 0E
	eor $0E.b,S		; 43 0E
	mvp $45,$0E		; 44 0E 45
	asl $46.b,X		; 16 46
	asl $47.b,X		; 16 47
	asl $48.b,X		; 16 48
	asl $49.b,X		; 16 49
	asl $4A.b,X		; 16 4A
	asl $4B.b,X		; 16 4B
	asl $4C.b,X		; 16 4C
	asl $AD.b,X		; 16 AD
	asl $AE.b,X		; 16 AE
	asl $AF.b,X		; 16 AF
	asl $B0.b,X		; 16 B0
	asl $B1.b,X		; 16 B1
	asl $00.b,X		; 16 00
	brk $B2.b		; 00 B2
	asl $B3.b		; 06 B3
	asl $B4.b		; 06 B4
	asl $B5.b		; 06 B5
	asl $B6.b		; 06 B6
	asl $B7.b		; 06 B7
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4D.b		; 00 4D
	asl $4E.b,X		; 16 4E
	asl $4F.b,X		; 16 4F
	asl $0E50.w		; 0E 50 0E
	eor ($0E.b),Y		; 51 0E
	eor ($0E.b)		; 52 0E
	eor ($0E.b,S),Y		; 53 0E
	mvn $55,$0E		; 54 0E 55
	asl $56.b,X		; 16 56
	asl $57.b,X		; 16 57
	asl $58.b,X		; 16 58
	asl $59.b,X		; 16 59
	asl $5A.b,X		; 16 5A
	asl $5B.b,X		; 16 5B
	asl $5C.b,X		; 16 5C
	asl $B8.b,X		; 16 B8
	asl $B9.b,X		; 16 B9
	asl $BA.b,X		; 16 BA
	asl $BB.b,X		; 16 BB
	asl $00.b,X		; 16 00
	brk $BC.b		; 00 BC
	asl $BD.b		; 06 BD
	asl $BE.b		; 06 BE
	asl $BF.b		; 06 BF
	asl $C0.b		; 06 C0
	asl $C1.b		; 06 C1
	asl $C2.b		; 06 C2
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5D.b		; 00 5D
	asl $0E5E.w		; 0E 5E 0E
	eor $0E600E.l,X		; 5F 0E 60 0E
	adc ($0E.b,X)		; 61 0E
	.db $62, $0E, $63		; 62 0E 63
	asl $64.b,X		; 16 64
	asl $65.b,X		; 16 65
	asl $66.b,X		; 16 66
	asl $67.b,X		; 16 67
	asl $68.b,X		; 16 68
	asl $69.b,X		; 16 69
	asl $6A.b,X		; 16 6A
	asl $166B.w		; 0E 6B 16
	jmp ($C316.w)		; 6C 16 C3
	asl $C4.b,X		; 16 C4
	asl $C5.b		; 06 C5
	asl $C6.b		; 06 C6
	asl $C7.b		; 06 C7
	asl $C8.b		; 06 C8
	asl $C9.b		; 06 C9
	asl $CA.b		; 06 CA
	asl $CB.b		; 06 CB
	asl $CC.b		; 06 CC
	asl $CD.b		; 06 CD
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6D.b		; 00 6D
	asl $0E6E.w		; 0E 6E 0E
	adc $00000E.l		; 6F 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ply		; 7A
	asl $0E7B.w		; 0E 7B 0E
	jmp ($CE0E.w,X)		; 7C 0E CE
	asl $12CF.w		; 0E CF 12
	bne   6.b		; D0 06
	cmp ($06.b),Y		; D1 06
	cmp ($06.b)		; D2 06
	cmp ($06.b,S),Y		; D3 06
	pei ($06.b)		; D4 06
	cmp $06.b,X		; D5 06
	dec $06.b,X		; D6 06
	cmp [$06.b],Y		; D7 06
	cld		; D8
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	asl $0E71.w		; 0E 71 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $DA06.w,Y		; D9 06 DA
	asl $DB.b		; 06 DB
	asl $DC.b		; 06 DC
	asl $DD.b		; 06 DD
	asl $DE.b		; 06 DE
	asl $DF.b		; 06 DF
	asl $E0.b		; 06 E0
	asl $E1.b		; 06 E1
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $72.b		; 00 72
	asl $00.b,X		; 16 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E2.b		; 00 E2
	asl $E3.b		; 06 E3
	asl $E4.b		; 06 E4
	asl $E5.b		; 06 E5
	asl $E6.b		; 06 E6
	asl $E7.b		; 06 E7
	asl $E8.b		; 06 E8
	asl $E9.b		; 06 E9
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $40.b		; 00 40
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
	brk $30.b		; 00 30
	ora [$31.b],Y		; 17 31
	ora [$32.b],Y		; 17 32
	ora $340F33.l		; 0F 33 0F 34
	ora $00CE4D.l		; 0F 4D CE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2E.b		; 00 2E
	ora $000F2F.l		; 0F 2F 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	ora [$39.b],Y		; 17 39
	ora [$3A.b],Y		; 17 3A
	ora [$3B.b],Y		; 17 3B
	ora $3D0F3C.l		; 0F 3C 0F 3D
	ora $3F0F3E.l		; 0F 3E 0F 3F
	ora $000F40.l		; 0F 40 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	asl $0EEA.w		; 0E EA 0E
	xba		; EB
	asl $16EC.w		; 0E EC 16
	brk $00.b		; 00 00
	sbc $EE16.w		; ED 16 EE
	asl $EF.b,X		; 16 EF
	asl $F0.b,X		; 16 F0
	asl $F1.b,X		; 16 F1
	asl $F2.b,X		; 16 F2
	asl $F3.b,X		; 16 F3
	asl $0EF4.w		; 0E F4 0E
	sbc $0E.b,X		; F5 0E
	inc $0E.b,X		; F6 0E
	and $0F.b,X		; 35 0F
	rol $0F.b,X		; 36 0F
	and [$0F.b],Y		; 37 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta [$06.b]		; 87 06
	dey		; 88
	asl $89.b		; 06 89
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $8A.b		; 00 8A
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	asl $0E11.w		; 0E 11 0E
	ora ($16.b)		; 12 16
	sbc [$16.b],Y		; F7 16
	and ($16.b,X)		; 21 16
	sed		; F8
	asl $F9.b,X		; 16 F9
	asl $FA.b,X		; 16 FA
	asl $FB.b,X		; 16 FB
	asl $0EFC.w		; 0E FC 0E
	sbc $FE0E.w,X		; FD 0E FE
	asl $0EFF.w		; 0E FF 0E
	brk $0F.b		; 00 0F
	ora ($17.b,X)		; 01 17
	cop $0F.b		; 02 0F
	.db $42, $17		; 42 17
	eor $17.b,S		; 43 17
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc   6.b		; 90 06
	sta ($06.b),Y		; 91 06
	sta ($06.b)		; 92 06
	sta ($06.b,S),Y		; 93 06
	sty $06.b,X		; 94 06
	sta $06.b,X		; 95 06
	stx $06.b,Y		; 96 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $162016.l,X		; 1F 16 20 16
	and ($16.b,X)		; 21 16
	jsl $163016.l		; 22 16 30 16
	ora $17.b,S		; 03 17
	tsb $17.b		; 04 17
	ora $0F.b		; 05 0F
	asl $0F.b		; 06 0F
	plp		; 28
	asl $07.b,X		; 16 07
	ora $090F08.l		; 0F 08 0F 09
	ora $0B0F0A.l		; 0F 0A 0F 0B
	ora [$0C.b],Y		; 17 0C
	ora [$4A.b],Y		; 17 4A
	ora [$4B.b],Y		; 17 4B
	ora [$4C.b],Y		; 17 4C
	ora [$4D.b],Y		; 17 4D
	ora [$4E.b],Y		; 17 4E
	ora [$4F.b],Y		; 17 4F
	ora [$9D.b]		; 07 9D
	asl $9E.b		; 06 9E
	asl $4D.b		; 06 4D
	asl $9F.b,X		; 16 9F
	asl $A0.b		; 06 A0
	asl $A1.b		; 06 A1
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2E.b		; 00 2E
	asl $2F.b,X		; 16 2F
	asl $30.b,X		; 16 30
	asl $31.b,X		; 16 31
	asl $3F.b,X		; 16 3F
	asl $0D.b,X		; 16 0D
	ora $0E1634.l		; 0F 34 16 0E
	ora $370F0F.l		; 0F 0F 0F 37
	asl $10.b,X		; 16 10
	ora $120F11.l		; 0F 11 0F 12
	ora [$13.b],Y		; 17 13
	ora [$14.b],Y		; 17 14
	ora [$15.b],Y		; 17 15
	ora [$56.b],Y		; 17 56
	ora [$57.b],Y		; 17 57
	ora [$58.b],Y		; 17 58
	ora [$59.b],Y		; 17 59
	ora [$5A.b],Y		; 17 5A
	ora [$5B.b],Y		; 17 5B
	ora [$A8.b]		; 07 A8
	asl $A9.b		; 06 A9
	asl $00.b		; 06 00
	brk $AA.b		; 00 AA
	asl $AB.b		; 06 AB
	asl $AC.b		; 06 AC
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	asl $31.b,X		; 16 31
	asl $3F.b,X		; 16 3F
	asl $40.b,X		; 16 40
	asl $0F16.w		; 0E 16 0F
	ora [$0F.b],Y		; 17 0F
	clc		; 18
	ora [$19.b],Y		; 17 19
	ora $1B0F1A.l		; 0F 1A 0F 1B
	ora $1D171C.l		; 0F 1C 17 1D
	ora [$1E.b],Y		; 17 1E
	ora [$1F.b],Y		; 17 1F
	ora [$20.b],Y		; 17 20
	ora [$21.b],Y		; 17 21
	ora [$5F.b],Y		; 17 5F
	ora [$60.b],Y		; 17 60
	ora [$00.b],Y		; 17 00
	brk $61.b		; 00 61
	ora [$62.b],Y		; 17 62
	ora [$00.b],Y		; 17 00
	brk $B2.b		; 00 B2
	asl $B3.b		; 06 B3
	asl $B4.b		; 06 B4
	asl $B5.b		; 06 B5
	asl $B6.b		; 06 B6
	asl $B7.b		; 06 B7
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4D.b		; 00 4D
	asl $4E.b,X		; 16 4E
	asl $4F.b,X		; 16 4F
	asl $0E50.w		; 0E 50 0E
	eor ($0E.b),Y		; 51 0E
	eor ($0E.b)		; 52 0E
	eor ($0E.b,S),Y		; 53 0E
	mvn $55,$0E		; 54 0E 55
	asl $56.b,X		; 16 56
	asl $22.b,X		; 16 22
	ora [$23.b],Y		; 17 23
	ora [$24.b],Y		; 17 24
	ora [$25.b],Y		; 17 25
	ora [$26.b],Y		; 17 26
	ora [$27.b],Y		; 17 27
	ora [$66.b],Y		; 17 66
	ora [$67.b],Y		; 17 67
	ora [$68.b],Y		; 17 68
	ora [$69.b],Y		; 17 69
	ora [$6A.b],Y		; 17 6A
	ora [$BC.b],Y		; 17 BC
	asl $BD.b		; 06 BD
	asl $BE.b		; 06 BE
	asl $BF.b		; 06 BF
	asl $C0.b		; 06 C0
	asl $C1.b		; 06 C1
	asl $C2.b		; 06 C2
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5D.b		; 00 5D
	asl $0E5E.w		; 0E 5E 0E
	eor $0E600E.l,X		; 5F 0E 60 0E
	adc ($0E.b,X)		; 61 0E
	.db $62, $0E, $28		; 62 0E 28
	ora $650F29.l		; 0F 29 0F 65
	asl $66.b,X		; 16 66
	asl $67.b,X		; 16 67
	asl $68.b,X		; 16 68
	asl $2A.b,X		; 16 2A
	ora [$2B.b],Y		; 17 2B
	ora $2D172C.l		; 0F 2C 17 2D
	ora [$70.b],Y		; 17 70
	ora [$71.b],Y		; 17 71
	ora [$72.b]		; 07 72
	ora [$73.b]		; 07 73
	ora [$74.b]		; 07 74
	ora [$C8.b]		; 07 C8
	asl $C9.b		; 06 C9
	asl $CA.b		; 06 CA
	asl $CB.b		; 06 CB
	asl $CC.b		; 06 CC
	asl $CD.b		; 06 CD
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6D.b		; 00 6D
	asl $0E6E.w		; 0E 6E 0E
	adc $00000E.l		; 6F 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ply		; 7A
	asl $0E7B.w		; 0E 7B 0E
	jmp ($CE0E.w,X)		; 7C 0E CE
	asl $12CF.w		; 0E CF 12
	bne   6.b		; D0 06
	cmp ($06.b),Y		; D1 06
	cmp ($06.b)		; D2 06
	cmp ($06.b,S),Y		; D3 06
	pei ($06.b)		; D4 06
	cmp $06.b,X		; D5 06
	dec $06.b,X		; D6 06
	cmp [$06.b],Y		; D7 06
	cld		; D8
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	asl $0E71.w		; 0E 71 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $DA06.w,Y		; D9 06 DA
	asl $DB.b		; 06 DB
	asl $DC.b		; 06 DC
	asl $DD.b		; 06 DD
	asl $DE.b		; 06 DE
	asl $DF.b		; 06 DF
	asl $E0.b		; 06 E0
	asl $E1.b		; 06 E1
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $72.b		; 00 72
	asl $00.b,X		; 16 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E2.b		; 00 E2
	asl $E3.b		; 06 E3
	asl $E4.b		; 06 E4
	asl $E5.b		; 06 E5
	asl $E6.b		; 06 E6
	asl $E7.b		; 06 E7
	asl $E8.b		; 06 E8
	asl $E9.b		; 06 E9
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $40.b		; 00 40
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
	brk $41.b		; 00 41
	ora $000FAF.l		; 0F AF 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	asl $0F44.w		; 0E 44 0F
	eor $0F.b		; 45 0F
	lsr $17.b		; 46 17
	eor [$17.b]		; 47 17
	pha		; 48
	ora [$49.b],Y		; 17 49
	ora [$EF.b],Y		; 17 EF
	asl $F0.b,X		; 16 F0
	asl $79.b,X		; 16 79
	ora [$7A.b],Y		; 17 7A
	ora [$7B.b],Y		; 17 7B
	ora [$7C.b],Y		; 17 7C
	ora [$7D.b],Y		; 17 7D
	ora [$7E.b],Y		; 17 7E
	ora [$00.b],Y		; 17 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $87.b		; 00 87
	asl $88.b		; 06 88
	asl $89.b		; 06 89
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $8A.b		; 00 8A
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	asl $0E11.w		; 0E 11 0E
	bvc  23.b		; 50 17
	eor ($17.b),Y		; 51 17
	eor ($17.b)		; 52 17
	jsl $175316.l		; 22 16 53 17
	mvn $55,$17		; 54 17 55
	ora [$18.b],Y		; 17 18
	asl $19.b,X		; 16 19
	asl $1A.b,X		; 16 1A
	asl $1B.b,X		; 16 1B
	asl $7F.b,X		; 16 7F
	ora [$01.b],Y		; 17 01
	ora [$80.b],Y		; 17 80
	ora [$00.b],Y		; 17 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	asl $91.b		; 06 91
	asl $92.b		; 06 92
	asl $93.b		; 06 93
	asl $94.b		; 06 94
	asl $95.b		; 06 95
	asl $96.b		; 06 96
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	asl $20.b,X		; 16 20
	asl $21.b,X		; 16 21
	asl $22.b,X		; 16 22
	asl $30.b,X		; 16 30
	asl $03.b,X		; 16 03
	ora [$5C.b],Y		; 17 5C
	ora [$5D.b],Y		; 17 5D
	ora $280F5E.l		; 0F 5E 0F 28
	asl $29.b,X		; 16 29
	asl $81.b,X		; 16 81
	ora [$82.b],Y		; 17 82
	ora [$83.b],Y		; 17 83
	ora [$84.b],Y		; 17 84
	ora [$85.b],Y		; 17 85
	ora [$86.b],Y		; 17 86
	ora [$87.b],Y		; 17 87
	ora [$88.b],Y		; 17 88
	ora [$89.b],Y		; 17 89
	ora [$9B.b],Y		; 17 9B
	asl $9C.b,X		; 16 9C
	asl $9D.b		; 06 9D
	asl $9E.b		; 06 9E
	asl $4D.b		; 06 4D
	asl $9F.b,X		; 16 9F
	asl $A0.b		; 06 A0
	asl $A1.b		; 06 A1
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2E.b		; 00 2E
	asl $2F.b,X		; 16 2F
	asl $30.b,X		; 16 30
	asl $31.b,X		; 16 31
	asl $3F.b,X		; 16 3F
	asl $63.b,X		; 16 63
	ora $641634.l		; 0F 34 16 64
	ora $370F65.l		; 0F 65 0F 37
	asl $38.b,X		; 16 38
	asl $8A.b,X		; 16 8A
	ora [$8B.b],Y		; 17 8B
	ora [$8C.b],Y		; 17 8C
	ora [$8D.b],Y		; 17 8D
	ora [$8E.b],Y		; 17 8E
	ora [$8F.b],Y		; 17 8F
	ora [$90.b],Y		; 17 90
	ora [$91.b],Y		; 17 91
	ora [$92.b],Y		; 17 92
	ora [$93.b],Y		; 17 93
	ora [$94.b],Y		; 17 94
	ora [$A8.b]		; 07 A8
	asl $A9.b		; 06 A9
	asl $00.b		; 06 00
	brk $AA.b		; 00 AA
	asl $AB.b		; 06 AB
	asl $AC.b		; 06 AC
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	asl $31.b,X		; 16 31
	asl $3F.b,X		; 16 3F
	asl $6B.b,X		; 16 6B
	ora $6D0F6C.l		; 0F 6C 0F 6D
	ora $6F0F6E.l		; 0F 6E 0F 6F
	ora [$45.b],Y		; 17 45
	asl $46.b,X		; 16 46
	asl $47.b,X		; 16 47
	asl $95.b,X		; 16 95
	ora [$96.b],Y		; 17 96
	ora [$97.b],Y		; 17 97
	ora [$98.b],Y		; 17 98
	ora [$99.b],Y		; 17 99
	ora [$9A.b],Y		; 17 9A
	ora [$9B.b],Y		; 17 9B
	ora [$9C.b],Y		; 17 9C
	ora [$9D.b],Y		; 17 9D
	ora [$9E.b],Y		; 17 9E
	ora [$00.b],Y		; 17 00
	brk $B2.b		; 00 B2
	asl $B3.b		; 06 B3
	asl $B4.b		; 06 B4
	asl $B5.b		; 06 B5
	asl $B6.b		; 06 B6
	asl $B7.b		; 06 B7
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4D.b		; 00 4D
	asl $4E.b,X		; 16 4E
	asl $4F.b,X		; 16 4F
	asl $0F75.w		; 0E 75 0F
	ror $0F.b,X		; 76 0F
	adc [$0F.b],Y		; 77 0F
	sei		; 78
	ora $550E54.l		; 0F 54 0E 55
	asl $56.b,X		; 16 56
	asl $57.b,X		; 16 57
	asl $9F.b,X		; 16 9F
	ora [$A0.b],Y		; 17 A0
	ora [$A1.b],Y		; 17 A1
	ora [$A2.b],Y		; 17 A2
	ora [$A3.b],Y		; 17 A3
	ora [$A4.b],Y		; 17 A4
	ora [$A5.b],Y		; 17 A5
	ora [$23.b],Y		; 17 23
	ora [$A6.b],Y		; 17 A6
	ora [$BB.b],Y		; 17 BB
	asl $BC.b,X		; 16 BC
	asl $BD.b		; 06 BD
	asl $BE.b		; 06 BE
	asl $BF.b		; 06 BF
	asl $C0.b		; 06 C0
	asl $C1.b		; 06 C1
	asl $C2.b		; 06 C2
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5D.b		; 00 5D
	asl $0E5E.w		; 0E 5E 0E
	eor $0E600E.l,X		; 5F 0E 60 0E
	adc ($0E.b,X)		; 61 0E
	.db $62, $0E, $63		; 62 0E 63
	asl $64.b,X		; 16 64
	asl $65.b,X		; 16 65
	asl $66.b,X		; 16 66
	asl $67.b,X		; 16 67
	asl $68.b,X		; 16 68
	asl $A7.b,X		; 16 A7
	ora [$A8.b],Y		; 17 A8
	ora $AA17A9.l		; 0F A9 17 AA
	ora [$AB.b],Y		; 17 AB
	ora [$AC.b],Y		; 17 AC
	ora [$AD.b]		; 07 AD
	ora [$AE.b]		; 07 AE
	ora [$C7.b]		; 07 C7
	asl $C8.b		; 06 C8
	asl $C9.b		; 06 C9
	asl $CA.b		; 06 CA
	asl $CB.b		; 06 CB
	asl $CC.b		; 06 CC
	asl $CD.b		; 06 CD
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6D.b		; 00 6D
	asl $0E6E.w		; 0E 6E 0E
	adc $00000E.l		; 6F 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ply		; 7A
	asl $0E7B.w		; 0E 7B 0E
	jmp ($CE0E.w,X)		; 7C 0E CE
	asl $12CF.w		; 0E CF 12
	bne   6.b		; D0 06
	cmp ($06.b),Y		; D1 06
	cmp ($06.b)		; D2 06
	cmp ($06.b,S),Y		; D3 06
	pei ($06.b)		; D4 06
	cmp $06.b,X		; D5 06
	dec $06.b,X		; D6 06
	cmp [$06.b],Y		; D7 06
	cld		; D8
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	asl $0E71.w		; 0E 71 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $DA06.w,Y		; D9 06 DA
	asl $DB.b		; 06 DB
	asl $DC.b		; 06 DC
	asl $DD.b		; 06 DD
	asl $DE.b		; 06 DE
	asl $DF.b		; 06 DF
	asl $E0.b		; 06 E0
	asl $E1.b		; 06 E1
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $72.b		; 00 72
	asl $00.b,X		; 16 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E2.b		; 00 E2
	asl $E3.b		; 06 E3
	asl $E4.b		; 06 E4
	asl $E5.b		; 06 E5
	asl $E6.b		; 06 E6
	asl $E7.b		; 06 E7
	asl $E8.b		; 06 E8
	asl $E9.b		; 06 E9
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
	ora ($00.b,X)		; 01 00
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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   4.b		; 80 04
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
	brk $80.b		; 00 80
	sta $66.b		; 85 66
	lda $800085.l,X		; BF 85 00 80
	stx $00.b		; 86 00
	bra -121.b		; 80 87
	brk $80.b		; 00 80
	dey		; 88
	brk $80.b		; 00 80
	txa		; 8A
	pei ($92.b)		; D4 92
	sty $00.b		; 84 00
	bra -119.b		; 80 89
	eor $3A86C4.l		; 4F C4 86 3A
	cmp ($87.b,X)		; C1 87
	dec A		; 3A
	cmp ($87.b,X)		; C1 87
	dec A		; 3A
	cmp ($87.b,X)		; C1 87
	cli		; 58
	dex		; CA
	sta [$58.b]		; 87 58
	dex		; CA
	sta [$70.b]		; 87 70
	cmp $7087.w		; CD 87 70
	cmp $7087.w		; CD 87 70
	cmp $9287.w		; CD 87 92
	cpy #$9288.w		; C0 88 92
	cpy #$2588.w		; C0 88 25
	cpy $88.b		; C4 88
	and $C4.b		; 25 C4
	dey		; 88
	and $C4.b		; 25 C4
	dey		; 88
	bra -58.b		; 80 C6
	dey		; 88
	txy		; 9B
	cmp #$BA89.w		; C9 89 BA
	wai		; CB
	bit #$CE3C.w		; 89 3C CE
	bit #$CE3C.w		; 89 3C CE
	bit #$0000.w		; 89 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsl $2286EB.l		; 22 EB 86 22
	xba		; EB
	stx $22.b		; 86 22
	xba		; EB
	stx $22.b		; 86 22
	xba		; EB
	stx $00.b		; 86 00
	brk $D4.b		; 00 D4
	bra -68.b		; 80 BC
	.db $82, $90, $84		; 82 90 84
	sty $86.b		; 84 86
	jmp ($4488.w)		; 6C 88 44
	txa		; 8A
	bpl -116.b		; 10 8C
	plp		; 28
	stx $8FCC.w		; 8E CC 8F
	pla		; 68
	sta ($68.b),Y		; 91 68
	sta ($68.b),Y		; 91 68
	sta ($C0.b),Y		; 91 C0
	sta ($C0.b),Y		; 91 C0
	sta ($E0.b),Y		; 91 E0
	sta ($E0.b),Y		; 91 E0
	sta ($E0.b),Y		; 91 E0
	sta ($FC.b),Y		; 91 FC
	sta ($FC.b),Y		; 91 FC
	sta ($28.b),Y		; 91 28
	sta ($28.b)		; 92 28
	sta ($28.b)		; 92 28
	sta ($54.b)		; 92 54
	sta ($70.b)		; 92 70
	sta ($8C.b)		; 92 8C
	sta ($A4.b)		; 92 A4
	sta ($A4.b)		; 92 A4
	sta ($02.b)		; 92 02
	brk $01.b		; 00 01
	cop $02.b		; 02 02
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	brk $03.b		; 00 03
	cop $02.b		; 02 02
	brk $04.b		; 00 04
	cop $02.b		; 02 02
	brk $05.b		; 00 05
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	tsb $02.b		; 04 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $04.b		; 05 04
	brk $06.b		; 00 06
	cop $04.b		; 02 04
	brk $07.b		; 00 07
	ora $04.b,S		; 03 04
	brk $08.b		; 00 08
	cop $04.b		; 02 04
	brk $09.b		; 00 09
	ora $04.b,S		; 03 04
	brk $0A.b		; 00 0A
	cop $04.b		; 02 04
	brk $0B.b		; 00 0B
	cop $04.b		; 02 04
	brk $0C.b		; 00 0C
	cop $04.b		; 02 04
	brk $0D.b		; 00 0D
	cop $04.b		; 02 04
	brk $0E.b		; 00 0E
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $0F.b		; 00 0F
	cop $06.b		; 02 06
	brk $10.b		; 00 10
	cop $06.b		; 02 06
	brk $11.b		; 00 11
	cop $06.b		; 02 06
	brk $12.b		; 00 12
	cop $06.b		; 02 06
	brk $13.b		; 00 13
	ora ($06.b,X)		; 01 06
	brk $14.b		; 00 14
	ora ($06.b,X)		; 01 06
	brk $15.b		; 00 15
	ora ($06.b,X)		; 01 06
	brk $16.b		; 00 16
	ora ($06.b,X)		; 01 06
	brk $17.b		; 00 17
	ora ($06.b,X)		; 01 06
	brk $18.b		; 00 18
	ora ($09.b,X)		; 01 09
	ora ($19.b,X)		; 01 19
	cop $09.b		; 02 09
	brk $1A.b		; 00 1A
	cop $09.b		; 02 09
	cop $1B.b		; 02 1B
	cop $09.b		; 02 09
	brk $1C.b		; 00 1C
	cop $09.b		; 02 09
	brk $1D.b		; 00 1D
	cop $09.b		; 02 09
	ora $1E.b,S		; 03 1E
	cop $09.b		; 02 09
	brk $1F.b		; 00 1F
	cop $09.b		; 02 09
	brk $20.b		; 00 20
	cop $09.b		; 02 09
	brk $21.b		; 00 21
	cop $09.b		; 02 09
	brk $22.b		; 00 22
	ora ($09.b,X)		; 01 09
	tsb $23.b		; 04 23
	ora ($09.b,X)		; 01 09
	ora $24.b		; 05 24
	ora ($09.b,X)		; 01 09
	brk $25.b		; 00 25
	ora ($09.b,X)		; 01 09
	asl $26.b		; 06 26
	ora ($09.b,X)		; 01 09
	brk $27.b		; 00 27
	ora $09.b,S		; 03 09
	ora [$28.b]		; 07 28
	ora $09.b,S		; 03 09
	brk $29.b		; 00 29
	ora $09.b,S		; 03 09
	php		; 08
	rol A		; 2A
	ora $09.b,S		; 03 09
	brk $2B.b		; 00 2B
	ora $09.b,S		; 03 09
	ora #$032C.w		; 09 2C 03
	ora #$2D00.w		; 09 00 2D
	ora $09.b,S		; 03 09
	brk $2E.b		; 00 2E
	ora $08.b,S		; 03 08
	brk $00.b		; 00 00
	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	ora $0B.b,S		; 03 0B
	brk $2F.b		; 00 2F
	cop $0B.b		; 02 0B
	brk $30.b		; 00 30
	cop $0B.b		; 02 0B
	brk $31.b		; 00 31
	cop $0B.b		; 02 0B
	brk $32.b		; 00 32
	ora ($0B.b,X)		; 01 0B
	brk $33.b		; 00 33
	ora ($0B.b,X)		; 01 0B
	brk $34.b		; 00 34
	ora ($0B.b,X)		; 01 0B
	brk $35.b		; 00 35
	ora ($0B.b,X)		; 01 0B
	brk $36.b		; 00 36
	ora ($09.b,X)		; 01 09
	brk $00.b		; 00 00
	cop $09.b		; 02 09
	asl A		; 0A
	and [$02.b],Y		; 37 02
	ora #$3800.w		; 09 00 38
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $39.b		; 00 39
	cop $06.b		; 02 06
	brk $3A.b		; 00 3A
	cop $06.b		; 02 06
	brk $3B.b		; 00 3B
	cop $04.b		; 02 04
	brk $3C.b		; 00 3C
	cop $04.b		; 02 04
	brk $3D.b		; 00 3D
	cop $0D.b		; 02 0D
	brk $3E.b		; 00 3E
	cop $0D.b		; 02 0D
	brk $00.b		; 00 00
	cop $0D.b		; 02 0D
	brk $00.b		; 00 00
	cop $09.b		; 02 09
	phd		; 0B
	and $000402.l,X		; 3F 02 04 00
	rti		; 40

	ora $02.b,S		; 03 02
	brk $41.b		; 00 41
	cop $02.b		; 02 02
	brk $42.b		; 00 42
	cop $02.b		; 02 02
	brk $43.b		; 00 43
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $44.b		; 00 44
	cop $02.b		; 02 02
	brk $45.b		; 00 45
	cop $02.b		; 02 02
	brk $46.b		; 00 46
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $47.b		; 00 47
	cop $02.b		; 02 02
	brk $48.b		; 00 48
	cop $02.b		; 02 02
	brk $49.b		; 00 49
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $09.b,S		; 03 09
	brk $4A.b		; 00 4A
	ora $06.b,S		; 03 06
	brk $4B.b		; 00 4B
	ora ($06.b,X)		; 01 06
	brk $4C.b		; 00 4C
	ora ($04.b,X)		; 01 04
	brk $4D.b		; 00 4D
	cop $04.b		; 02 04
	brk $4E.b		; 00 4E
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	ora ($06.b,X)		; 01 06
	brk $00.b		; 00 00
	ora ($04.b,X)		; 01 04
	brk $4F.b		; 00 4F
	cop $04.b		; 02 04
	brk $50.b		; 00 50
	cop $09.b		; 02 09
	brk $51.b		; 00 51
	cop $09.b		; 02 09
	tsb $0252.w		; 0C 52 02
	ora #$530D.w		; 09 0D 53
	cop $09.b		; 02 09
	asl $0154.w		; 0E 54 01
	ora #$550F.w		; 09 0F 55
	ora ($09.b,X)		; 01 09
	bpl  86.b		; 10 56
	ora $0D.b,S		; 03 0D
	brk $00.b		; 00 00
	cop $0D.b		; 02 0D
	brk $00.b		; 00 00
	cop $0D.b		; 02 0D
	brk $00.b		; 00 00
	cop $0D.b		; 02 0D
	brk $00.b		; 00 00
	cop $09.b		; 02 09
	brk $57.b		; 00 57
	ora $09.b,S		; 03 09
	brk $58.b		; 00 58
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $01.b		; 00 01
	cop $02.b		; 02 02
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	brk $03.b		; 00 03
	cop $02.b		; 02 02
	brk $04.b		; 00 04
	cop $02.b		; 02 02
	brk $05.b		; 00 05
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	tsb $02.b		; 04 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	tsb $02.b		; 04 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	brk $06.b		; 00 06
	cop $04.b		; 02 04
	brk $07.b		; 00 07
	ora $02.b,S		; 03 02
	brk $08.b		; 00 08
	cop $02.b		; 02 02
	brk $09.b		; 00 09
	ora $04.b,S		; 03 04
	brk $0A.b		; 00 0A
	cop $04.b		; 02 04
	brk $0B.b		; 00 0B
	cop $04.b		; 02 04
	brk $0C.b		; 00 0C
	cop $04.b		; 02 04
	brk $0D.b		; 00 0D
	cop $04.b		; 02 04
	brk $0E.b		; 00 0E
	cop $04.b		; 02 04
	brk $0F.b		; 00 0F
	cop $04.b		; 02 04
	brk $10.b		; 00 10
	cop $04.b		; 02 04
	brk $11.b		; 00 11
	cop $04.b		; 02 04
	brk $12.b		; 00 12
	cop $04.b		; 02 04
	brk $13.b		; 00 13
	cop $06.b		; 02 06
	brk $14.b		; 00 14
	cop $06.b		; 02 06
	brk $15.b		; 00 15
	cop $06.b		; 02 06
	brk $16.b		; 00 16
	cop $06.b		; 02 06
	brk $17.b		; 00 17
	cop $06.b		; 02 06
	brk $18.b		; 00 18
	ora ($06.b,X)		; 01 06
	brk $19.b		; 00 19
	ora ($06.b,X)		; 01 06
	brk $1A.b		; 00 1A
	ora ($06.b,X)		; 01 06
	brk $1B.b		; 00 1B
	ora ($06.b,X)		; 01 06
	brk $1C.b		; 00 1C
	ora ($06.b,X)		; 01 06
	brk $1D.b		; 00 1D
	ora ($06.b,X)		; 01 06
	brk $1E.b		; 00 1E
	ora ($06.b,X)		; 01 06
	brk $1F.b		; 00 1F
	ora ($04.b,X)		; 01 04
	brk $20.b		; 00 20
	cop $04.b		; 02 04
	brk $21.b		; 00 21
	cop $09.b		; 02 09
	brk $22.b		; 00 22
	cop $09.b		; 02 09
	ora ($23.b,X)		; 01 23
	cop $09.b		; 02 09
	brk $24.b		; 00 24
	cop $09.b		; 02 09
	brk $25.b		; 00 25
	cop $09.b		; 02 09
	brk $26.b		; 00 26
	cop $09.b		; 02 09
	cop $27.b		; 02 27
	cop $09.b		; 02 09
	brk $28.b		; 00 28
	cop $09.b		; 02 09
	ora $29.b,S		; 03 29
	cop $09.b		; 02 09
	brk $2A.b		; 00 2A
	cop $09.b		; 02 09
	tsb $2B.b		; 04 2B
	cop $09.b		; 02 09
	ora $2C.b		; 05 2C
	cop $04.b		; 02 04
	brk $2D.b		; 00 2D
	cop $09.b		; 02 09
	brk $2E.b		; 00 2E
	ora ($09.b,X)		; 01 09
	asl $2F.b		; 06 2F
	ora ($09.b,X)		; 01 09
	brk $30.b		; 00 30
	cop $09.b		; 02 09
	ora [$31.b]		; 07 31
	cop $09.b		; 02 09
	brk $32.b		; 00 32
	cop $09.b		; 02 09
	brk $33.b		; 00 33
	ora ($09.b,X)		; 01 09
	php		; 08
	bit $01.b,X		; 34 01
	ora #$3500.w		; 09 00 35
	ora $09.b,S		; 03 09
	ora #$0336.w		; 09 36 03
	ora #$3700.w		; 09 00 37
	ora $09.b,S		; 03 09
	asl A		; 0A
	sec		; 38
	ora $09.b,S		; 03 09
	phd		; 0B
	and $0903.w,Y		; 39 03 09
	brk $3A.b		; 00 3A
	ora $09.b,S		; 03 09
	tsb $033B.w		; 0C 3B 03
	ora #$3C00.w		; 09 00 3C
	ora $08.b,S		; 03 08
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	cop $0B.b		; 02 0B
	brk $3D.b		; 00 3D
	cop $0B.b		; 02 0B
	brk $3E.b		; 00 3E
	cop $0B.b		; 02 0B
	brk $3F.b		; 00 3F
	cop $0B.b		; 02 0B
	brk $40.b		; 00 40
	cop $0B.b		; 02 0B
	brk $41.b		; 00 41
	cop $0B.b		; 02 0B
	brk $00.b		; 00 00
	cop $0B.b		; 02 0B
	brk $00.b		; 00 00
	cop $0B.b		; 02 0B
	brk $42.b		; 00 42
	cop $0B.b		; 02 0B
	brk $00.b		; 00 00
	cop $0B.b		; 02 0B
	brk $00.b		; 00 00
	cop $0B.b		; 02 0B
	ora $0200.w		; 0D 00 02
	phd		; 0B
	asl $0243.w		; 0E 43 02
	phd		; 0B
	ora $0B0244.l		; 0F 44 02 0B
	bpl  69.b		; 10 45
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $46.b		; 00 46
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $0B.b		; 02 0B
	brk $47.b		; 00 47
	ora ($0D.b,X)		; 01 0D
	brk $48.b		; 00 48
	ora ($0D.b,X)		; 01 0D
	ora ($00.b),Y		; 11 00
	cop $0D.b		; 02 0D
	ora ($00.b)		; 12 00
	ora ($02.b,X)		; 01 02
	brk $49.b		; 00 49
	cop $02.b		; 02 02
	brk $4A.b		; 00 4A
	cop $02.b		; 02 02
	brk $4B.b		; 00 4B
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $4C.b		; 00 4C
	cop $02.b		; 02 02
	brk $4D.b		; 00 4D
	cop $02.b		; 02 02
	brk $4E.b		; 00 4E
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $4F.b		; 00 4F
	cop $02.b		; 02 02
	brk $50.b		; 00 50
	cop $02.b		; 02 02
	brk $51.b		; 00 51
	cop $0B.b		; 02 0B
	ora ($52.b,S),Y		; 13 52
	cop $04.b		; 02 04
	brk $53.b		; 00 53
	cop $0D.b		; 02 0D
	brk $54.b		; 00 54
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	ora ($04.b,X)		; 01 04
	brk $00.b		; 00 00
	ora ($09.b,X)		; 01 09
	trb $55.b		; 14 55
	ora ($09.b,X)		; 01 09
	ora $56.b,X		; 15 56
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $01.b		; 00 01
	cop $02.b		; 02 02
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	brk $03.b		; 00 03
	cop $02.b		; 02 02
	brk $04.b		; 00 04
	cop $02.b		; 02 02
	brk $05.b		; 00 05
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	tsb $02.b		; 04 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	brk $06.b		; 00 06
	ora $04.b,S		; 03 04
	brk $07.b		; 00 07
	ora $02.b,S		; 03 02
	brk $08.b		; 00 08
	cop $02.b		; 02 02
	brk $09.b		; 00 09
	ora $04.b,S		; 03 04
	brk $0A.b		; 00 0A
	cop $04.b		; 02 04
	brk $0B.b		; 00 0B
	cop $04.b		; 02 04
	brk $0C.b		; 00 0C
	cop $09.b		; 02 09
	brk $00.b		; 00 00
	ora $09.b,S		; 03 09
	ora ($00.b,X)		; 01 00
	cop $09.b		; 02 09
	brk $00.b		; 00 00
	cop $09.b		; 02 09
	cop $00.b		; 02 00
	cop $04.b		; 02 04
	brk $0D.b		; 00 0D
	cop $04.b		; 02 04
	brk $0E.b		; 00 0E
	cop $04.b		; 02 04
	brk $0F.b		; 00 0F
	cop $04.b		; 02 04
	brk $10.b		; 00 10
	ora ($06.b,X)		; 01 06
	brk $11.b		; 00 11
	ora ($06.b,X)		; 01 06
	brk $12.b		; 00 12
	ora ($06.b,X)		; 01 06
	brk $13.b		; 00 13
	ora ($06.b,X)		; 01 06
	brk $14.b		; 00 14
	ora ($06.b,X)		; 01 06
	brk $15.b		; 00 15
	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	ora ($04.b,X)		; 01 04
	brk $16.b		; 00 16
	cop $04.b		; 02 04
	brk $17.b		; 00 17
	cop $04.b		; 02 04
	brk $18.b		; 00 18
	cop $06.b		; 02 06
	brk $19.b		; 00 19
	cop $06.b		; 02 06
	brk $1A.b		; 00 1A
	cop $06.b		; 02 06
	brk $1B.b		; 00 1B
	cop $06.b		; 02 06
	brk $1C.b		; 00 1C
	cop $09.b		; 02 09
	brk $1D.b		; 00 1D
	ora $09.b,S		; 03 09
	ora $1E.b,S		; 03 1E
	ora $09.b,S		; 03 09
	brk $1F.b		; 00 1F
	cop $09.b		; 02 09
	tsb $20.b		; 04 20
	cop $09.b		; 02 09
	brk $21.b		; 00 21
	cop $09.b		; 02 09
	ora $22.b		; 05 22
	cop $09.b		; 02 09
	asl $23.b		; 06 23
	cop $04.b		; 02 04
	brk $24.b		; 00 24
	cop $0B.b		; 02 0B
	brk $25.b		; 00 25
	cop $0B.b		; 02 0B
	brk $26.b		; 00 26
	cop $09.b		; 02 09
	brk $27.b		; 00 27
	ora ($09.b,X)		; 01 09
	ora [$28.b]		; 07 28
	ora ($09.b,X)		; 01 09
	brk $29.b		; 00 29
	ora $09.b,S		; 03 09
	php		; 08
	rol A		; 2A
	ora $09.b,S		; 03 09
	brk $2B.b		; 00 2B
	ora $09.b,S		; 03 09
	ora #$032C.w		; 09 2C 03
	ora #$2D00.w		; 09 00 2D
	ora ($09.b,X)		; 01 09
	asl A		; 0A
	rol $0401.w		; 2E 01 04
	brk $2F.b		; 00 2F
	cop $04.b		; 02 04
	brk $30.b		; 00 30
	cop $04.b		; 02 04
	brk $31.b		; 00 31
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $09.b		; 02 09
	brk $32.b		; 00 32
	ora $09.b,S		; 03 09
	phd		; 0B
	and ($03.b,S),Y		; 33 03
	ora #$3400.w		; 09 00 34
	cop $09.b		; 02 09
	brk $35.b		; 00 35
	cop $09.b		; 02 09
	tsb $0236.w		; 0C 36 02
	ora #$3700.w		; 09 00 37
	cop $09.b		; 02 09
	ora $0238.w		; 0D 38 02
	ora #$390E.w		; 09 0E 39
	cop $09.b		; 02 09
	ora $09023A.l		; 0F 3A 02 09
	brk $3B.b		; 00 3B
	cop $09.b		; 02 09
	brk $3C.b		; 00 3C
	cop $09.b		; 02 09
	brk $3D.b		; 00 3D
	cop $09.b		; 02 09
	bpl  62.b		; 10 3E
	cop $02.b		; 02 02
	brk $3F.b		; 00 3F
	ora $0B.b,S		; 03 0B
	ora ($40.b),Y		; 11 40
	ora ($0B.b,X)		; 01 0B
	ora ($41.b)		; 12 41
	ora ($0B.b,X)		; 01 0B
	ora ($42.b,S),Y		; 13 42
	ora ($0B.b,X)		; 01 0B
	trb $43.b		; 14 43
	ora ($0D.b,X)		; 01 0D
	brk $44.b		; 00 44
	cop $0D.b		; 02 0D
	brk $45.b		; 00 45
	cop $0D.b		; 02 0D
	brk $46.b		; 00 46
	cop $04.b		; 02 04
	brk $47.b		; 00 47
	cop $0B.b		; 02 0B
	ora $48.b,X		; 15 48
	ora $0B.b,S		; 03 0B
	asl $49.b,X		; 16 49
	ora $0B.b,S		; 03 0B
	ora [$4A.b],Y		; 17 4A
	cop $0B.b		; 02 0B
	clc		; 18
	phk		; 4B
	ora ($02.b,X)		; 01 02
	brk $4C.b		; 00 4C
	cop $02.b		; 02 02
	brk $4D.b		; 00 4D
	cop $02.b		; 02 02
	brk $4E.b		; 00 4E
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $4F.b		; 00 4F
	cop $02.b		; 02 02
	brk $50.b		; 00 50
	cop $02.b		; 02 02
	brk $51.b		; 00 51
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $52.b		; 00 52
	cop $02.b		; 02 02
	brk $53.b		; 00 53
	cop $02.b		; 02 02
	brk $54.b		; 00 54
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $09.b,S		; 03 09
	ora $0355.w,Y		; 19 55 03
	ora #$561A.w		; 09 1A 56
	ora ($06.b,X)		; 01 06
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $0B.b		; 02 0B
	tas		; 1B
	eor [$03.b],Y		; 57 03
	phd		; 0B
	trb $0358.w		; 1C 58 03
	phd		; 0B
	ora $0359.w,X		; 1D 59 03
	phd		; 0B
	asl $015A.w,X		; 1E 5A 01
	phd		; 0B
	brk $5B.b		; 00 5B
	ora $09.b,S		; 03 09
	brk $5C.b		; 00 5C
	ora ($09.b,X)		; 01 09
	ora $09015D.l,X		; 1F 5D 01 09
	brk $5E.b		; 00 5E
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cop $09.b		; 02 09
	jsr $025F.w		; 20 5F 02
	cop $00.b		; 02 00
	ora ($02.b,X)		; 01 02
	cop $00.b		; 02 00
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	ora $02.b,S		; 03 02
	cop $00.b		; 02 00
	tsb $02.b		; 04 02
	cop $00.b		; 02 00
	ora $03.b		; 05 03
	cop $00.b		; 02 00
	asl $04.b		; 06 04
	cop $00.b		; 02 00
	ora [$04.b]		; 07 04
	cop $00.b		; 02 00
	php		; 08
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	tsb $02.b		; 04 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	brk $09.b		; 00 09
	cop $04.b		; 02 04
	brk $0A.b		; 00 0A
	ora $02.b,S		; 03 02
	brk $0B.b		; 00 0B
	cop $02.b		; 02 02
	brk $0C.b		; 00 0C
	ora $04.b,S		; 03 04
	brk $0D.b		; 00 0D
	cop $04.b		; 02 04
	brk $0E.b		; 00 0E
	cop $04.b		; 02 04
	brk $0F.b		; 00 0F
	cop $04.b		; 02 04
	brk $10.b		; 00 10
	cop $04.b		; 02 04
	brk $11.b		; 00 11
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	brk $12.b		; 00 12
	cop $06.b		; 02 06
	brk $13.b		; 00 13
	cop $06.b		; 02 06
	brk $14.b		; 00 14
	cop $06.b		; 02 06
	brk $15.b		; 00 15
	cop $06.b		; 02 06
	brk $16.b		; 00 16
	cop $06.b		; 02 06
	brk $17.b		; 00 17
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $18.b		; 00 18
	ora ($06.b,X)		; 01 06
	brk $19.b		; 00 19
	ora ($06.b,X)		; 01 06
	brk $1A.b		; 00 1A
	ora ($09.b,X)		; 01 09
	ora ($1B.b,X)		; 01 1B
	cop $09.b		; 02 09
	brk $1C.b		; 00 1C
	cop $09.b		; 02 09
	brk $1D.b		; 00 1D
	cop $09.b		; 02 09
	cop $1E.b		; 02 1E
	cop $09.b		; 02 09
	ora $1F.b,S		; 03 1F
	cop $09.b		; 02 09
	brk $20.b		; 00 20
	cop $09.b		; 02 09
	brk $21.b		; 00 21
	cop $09.b		; 02 09
	tsb $22.b		; 04 22
	cop $09.b		; 02 09
	brk $23.b		; 00 23
	cop $09.b		; 02 09
	ora $24.b		; 05 24
	cop $09.b		; 02 09
	asl $25.b		; 06 25
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $26.b		; 00 26
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	brk $27.b		; 00 27
	cop $04.b		; 02 04
	brk $28.b		; 00 28
	ora $06.b,S		; 03 06
	brk $29.b		; 00 29
	ora ($09.b,X)		; 01 09
	brk $2A.b		; 00 2A
	ora ($09.b,X)		; 01 09
	ora [$2B.b]		; 07 2B
	ora ($09.b,X)		; 01 09
	brk $2C.b		; 00 2C
	ora ($09.b,X)		; 01 09
	php		; 08
	and $0601.w		; 2D 01 06
	brk $00.b		; 00 00
	cop $09.b		; 02 09
	brk $2E.b		; 00 2E
	ora ($09.b,X)		; 01 09
	ora #$012F.w		; 09 2F 01
	ora #$3000.w		; 09 00 30
	ora $09.b,S		; 03 09
	asl A		; 0A
	and ($03.b),Y		; 31 03
	ora #$3200.w		; 09 00 32
	ora $09.b,S		; 03 09
	phd		; 0B
	and ($03.b,S),Y		; 33 03
	ora #$3400.w		; 09 00 34
	ora $09.b,S		; 03 09
	tsb $0335.w		; 0C 35 03
	php		; 08
	brk $36.b		; 00 36
	cop $08.b		; 02 08
	brk $37.b		; 00 37
	cop $08.b		; 02 08
	brk $38.b		; 00 38
	cop $08.b		; 02 08
	brk $39.b		; 00 39
	cop $08.b		; 02 08
	brk $3A.b		; 00 3A
	cop $0B.b		; 02 0B
	brk $3B.b		; 00 3B
	cop $0B.b		; 02 0B
	brk $3C.b		; 00 3C
	cop $0B.b		; 02 0B
	brk $3D.b		; 00 3D
	cop $0B.b		; 02 0B
	ora $023E.w		; 0D 3E 02
	php		; 08
	brk $3F.b		; 00 3F
	cop $0B.b		; 02 0B
	brk $40.b		; 00 40
	cop $0B.b		; 02 0B
	brk $41.b		; 00 41
	cop $0B.b		; 02 0B
	asl $0242.w		; 0E 42 02
	phd		; 0B
	brk $43.b		; 00 43
	cop $0B.b		; 02 0B
	ora $0B0244.l		; 0F 44 02 0B
	bpl  69.b		; 10 45
	cop $0B.b		; 02 0B
	ora ($46.b),Y		; 11 46
	cop $0B.b		; 02 0B
	ora ($47.b)		; 12 47
	cop $0B.b		; 02 0B
	ora ($48.b,S),Y		; 13 48
	cop $0B.b		; 02 0B
	trb $49.b		; 14 49
	cop $0B.b		; 02 0B
	ora $4A.b,X		; 15 4A
	cop $08.b		; 02 08
	brk $4B.b		; 00 4B
	cop $08.b		; 02 08
	brk $4C.b		; 00 4C
	cop $08.b		; 02 08
	brk $4D.b		; 00 4D
	cop $02.b		; 02 02
	brk $4E.b		; 00 4E
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	ora ($06.b,X)		; 01 06
	brk $00.b		; 00 00
	ora ($0B.b,X)		; 01 0B
	brk $4F.b		; 00 4F
	cop $0B.b		; 02 0B
	brk $50.b		; 00 50
	cop $0B.b		; 02 0B
	brk $51.b		; 00 51
	cop $0B.b		; 02 0B
	asl $52.b,X		; 16 52
	ora ($0B.b,X)		; 01 0B
	ora [$53.b],Y		; 17 53
	ora ($04.b,X)		; 01 04
	brk $54.b		; 00 54
	cop $04.b		; 02 04
	brk $55.b		; 00 55
	cop $02.b		; 02 02
	brk $56.b		; 00 56
	cop $02.b		; 02 02
	brk $57.b		; 00 57
	cop $02.b		; 02 02
	brk $58.b		; 00 58
	tsb $02.b		; 04 02
	brk $59.b		; 00 59
	cop $02.b		; 02 02
	brk $5A.b		; 00 5A
	cop $02.b		; 02 02
	brk $5B.b		; 00 5B
	cop $02.b		; 02 02
	brk $5C.b		; 00 5C
	tsb $02.b		; 04 02
	brk $5D.b		; 00 5D
	ora $02.b		; 05 02
	brk $5E.b		; 00 5E
	cop $02.b		; 02 02
	brk $5F.b		; 00 5F
	cop $02.b		; 02 02
	brk $60.b		; 00 60
	cop $02.b		; 02 02
	brk $61.b		; 00 61
	tsb $02.b		; 04 02
	brk $62.b		; 00 62
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $09.b,S		; 03 09
	brk $63.b		; 00 63
	ora $09.b,S		; 03 09
	clc		; 18
	stz $02.b		; 64 02
	php		; 08
	brk $65.b		; 00 65
	cop $08.b		; 02 08
	brk $66.b		; 00 66
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cop $09.b		; 02 09
	ora $0167.w,Y		; 19 67 01
	cop $00.b		; 02 00
	ora ($02.b,X)		; 01 02
	cop $00.b		; 02 00
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	ora $02.b,S		; 03 02
	cop $00.b		; 02 00
	tsb $02.b		; 04 02
	cop $00.b		; 02 00
	ora $03.b		; 05 03
	cop $00.b		; 02 00
	brk $04.b		; 00 04
	cop $00.b		; 02 00
	brk $05.b		; 00 05
	cop $00.b		; 02 00
	brk $05.b		; 00 05
	cop $00.b		; 02 00
	brk $03.b		; 00 03
	cop $00.b		; 02 00
	brk $05.b		; 00 05
	cop $00.b		; 02 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $02.b		; 00 02
	asl $00.b		; 06 00
	asl $02.b		; 06 02
	tsb $00.b		; 04 00
	ora [$02.b]		; 07 02
	tsb $00.b		; 04 00
	php		; 08
	ora $02.b,S		; 03 02
	brk $09.b		; 00 09
	cop $02.b		; 02 02
	brk $0A.b		; 00 0A
	ora $04.b,S		; 03 04
	brk $0B.b		; 00 0B
	cop $04.b		; 02 04
	brk $0C.b		; 00 0C
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	brk $0D.b		; 00 0D
	cop $04.b		; 02 04
	brk $0E.b		; 00 0E
	cop $04.b		; 02 04
	brk $0F.b		; 00 0F
	cop $06.b		; 02 06
	brk $10.b		; 00 10
	cop $06.b		; 02 06
	brk $11.b		; 00 11
	cop $06.b		; 02 06
	brk $12.b		; 00 12
	cop $06.b		; 02 06
	brk $13.b		; 00 13
	cop $06.b		; 02 06
	brk $14.b		; 00 14
	ora ($06.b,X)		; 01 06
	brk $15.b		; 00 15
	ora ($06.b,X)		; 01 06
	brk $16.b		; 00 16
	ora ($06.b,X)		; 01 06
	brk $17.b		; 00 17
	ora ($06.b,X)		; 01 06
	brk $18.b		; 00 18
	ora ($06.b,X)		; 01 06
	brk $19.b		; 00 19
	cop $06.b		; 02 06
	brk $1A.b		; 00 1A
	cop $06.b		; 02 06
	brk $1B.b		; 00 1B
	cop $09.b		; 02 09
	brk $1C.b		; 00 1C
	cop $09.b		; 02 09
	ora ($1D.b,X)		; 01 1D
	cop $09.b		; 02 09
	brk $1E.b		; 00 1E
	cop $09.b		; 02 09
	brk $1F.b		; 00 1F
	cop $09.b		; 02 09
	brk $20.b		; 00 20
	cop $09.b		; 02 09
	cop $21.b		; 02 21
	cop $09.b		; 02 09
	brk $22.b		; 00 22
	cop $09.b		; 02 09
	brk $23.b		; 00 23
	cop $09.b		; 02 09
	ora $24.b,S		; 03 24
	cop $09.b		; 02 09
	brk $25.b		; 00 25
	cop $09.b		; 02 09
	tsb $26.b		; 04 26
	cop $09.b		; 02 09
	brk $27.b		; 00 27
	cop $04.b		; 02 04
	brk $28.b		; 00 28
	ora $09.b,S		; 03 09
	brk $29.b		; 00 29
	ora ($09.b,X)		; 01 09
	ora $2A.b		; 05 2A
	ora ($09.b,X)		; 01 09
	brk $2B.b		; 00 2B
	ora ($09.b,X)		; 01 09
	asl $2C.b		; 06 2C
	ora ($09.b,X)		; 01 09
	brk $2D.b		; 00 2D
	ora ($09.b,X)		; 01 09
	ora [$2E.b]		; 07 2E
	ora ($09.b,X)		; 01 09
	brk $2F.b		; 00 2F
	ora ($09.b,X)		; 01 09
	php		; 08
	bmi   1.b		; 30 01
	ora #$3100.w		; 09 00 31
	ora $09.b,S		; 03 09
	ora #$0332.w		; 09 32 03
	ora #$3300.w		; 09 00 33
	ora $09.b,S		; 03 09
	brk $34.b		; 00 34
	ora $09.b,S		; 03 09
	asl A		; 0A
	and $03.b,X		; 35 03
	ora #$3600.w		; 09 00 36
	ora $09.b,S		; 03 09
	brk $37.b		; 00 37
	ora $09.b,S		; 03 09
	phd		; 0B
	sec		; 38
	ora $09.b,S		; 03 09
	brk $39.b		; 00 39
	ora $09.b,S		; 03 09
	brk $3A.b		; 00 3A
	ora $09.b,S		; 03 09
	tsb $033B.w		; 0C 3B 03
	ora #$0000.w		; 09 00 00
	ora $09.b,S		; 03 09
	brk $00.b		; 00 00
	ora $09.b,S		; 03 09
	brk $00.b		; 00 00
	ora $0B.b,S		; 03 0B
	brk $3C.b		; 00 3C
	cop $0B.b		; 02 0B
	brk $3D.b		; 00 3D
	cop $0B.b		; 02 0B
	brk $3E.b		; 00 3E
	cop $0B.b		; 02 0B
	brk $3F.b		; 00 3F
	ora $0B.b,S		; 03 0B
	brk $40.b		; 00 40
	cop $0B.b		; 02 0B
	brk $41.b		; 00 41
	cop $0B.b		; 02 0B
	brk $42.b		; 00 42
	cop $04.b		; 02 04
	brk $43.b		; 00 43
	cop $04.b		; 02 04
	brk $44.b		; 00 44
	cop $0B.b		; 02 0B
	ora $0245.w		; 0D 45 02
	phd		; 0B
	asl $0246.w		; 0E 46 02
	phd		; 0B
	ora $0B0247.l		; 0F 47 02 0B
	brk $48.b		; 00 48
	cop $06.b		; 02 06
	brk $49.b		; 00 49
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	brk $4A.b		; 00 4A
	cop $02.b		; 02 02
	brk $4B.b		; 00 4B
	cop $02.b		; 02 02
	brk $4C.b		; 00 4C
	cop $02.b		; 02 02
	brk $4D.b		; 00 4D
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $4E.b		; 00 4E
	cop $02.b		; 02 02
	brk $4F.b		; 00 4F
	cop $02.b		; 02 02
	brk $50.b		; 00 50
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $51.b		; 00 51
	cop $02.b		; 02 02
	brk $52.b		; 00 52
	cop $02.b		; 02 02
	brk $53.b		; 00 53
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $0B.b,S		; 03 0B
	brk $00.b		; 00 00
	cop $0D.b		; 02 0D
	bpl  84.b		; 10 54
	cop $0D.b		; 02 0D
	ora ($55.b),Y		; 11 55
	cop $0D.b		; 02 0D
	brk $56.b		; 00 56
	cop $09.b		; 02 09
	brk $57.b		; 00 57
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $01.b		; 00 01
	cop $02.b		; 02 02
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	brk $03.b		; 00 03
	cop $02.b		; 02 02
	brk $04.b		; 00 04
	cop $02.b		; 02 02
	brk $05.b		; 00 05
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	tsb $02.b		; 04 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	tsb $02.b		; 04 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	brk $06.b		; 00 06
	cop $04.b		; 02 04
	brk $07.b		; 00 07
	ora $02.b,S		; 03 02
	brk $08.b		; 00 08
	cop $02.b		; 02 02
	brk $09.b		; 00 09
	ora $04.b,S		; 03 04
	brk $0A.b		; 00 0A
	cop $04.b		; 02 04
	brk $0B.b		; 00 0B
	cop $04.b		; 02 04
	brk $0C.b		; 00 0C
	cop $04.b		; 02 04
	brk $0D.b		; 00 0D
	cop $04.b		; 02 04
	brk $0E.b		; 00 0E
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $0F.b		; 00 0F
	cop $06.b		; 02 06
	brk $10.b		; 00 10
	cop $06.b		; 02 06
	brk $11.b		; 00 11
	cop $06.b		; 02 06
	brk $12.b		; 00 12
	cop $06.b		; 02 06
	brk $13.b		; 00 13
	cop $06.b		; 02 06
	brk $14.b		; 00 14
	ora ($06.b,X)		; 01 06
	brk $15.b		; 00 15
	ora ($09.b,X)		; 01 09
	ora ($16.b,X)		; 01 16
	cop $09.b		; 02 09
	brk $17.b		; 00 17
	cop $09.b		; 02 09
	cop $18.b		; 02 18
	cop $09.b		; 02 09
	brk $19.b		; 00 19
	cop $09.b		; 02 09
	brk $1A.b		; 00 1A
	cop $09.b		; 02 09
	ora $1B.b,S		; 03 1B
	cop $06.b		; 02 06
	brk $1C.b		; 00 1C
	cop $09.b		; 02 09
	brk $1D.b		; 00 1D
	cop $09.b		; 02 09
	tsb $1E.b		; 04 1E
	cop $09.b		; 02 09
	brk $1F.b		; 00 1F
	cop $09.b		; 02 09
	brk $20.b		; 00 20
	cop $09.b		; 02 09
	ora $21.b		; 05 21
	cop $09.b		; 02 09
	asl $22.b		; 06 22
	ora ($09.b,X)		; 01 09
	brk $23.b		; 00 23
	cop $09.b		; 02 09
	brk $24.b		; 00 24
	ora ($09.b,X)		; 01 09
	ora [$25.b]		; 07 25
	cop $09.b		; 02 09
	brk $26.b		; 00 26
	cop $09.b		; 02 09
	brk $27.b		; 00 27
	cop $09.b		; 02 09
	php		; 08
	plp		; 28
	ora ($09.b,X)		; 01 09
	brk $29.b		; 00 29
	ora ($09.b,X)		; 01 09
	ora #$022A.w		; 09 2A 02
	ora #$2B00.w		; 09 00 2B
	ora $09.b,S		; 03 09
	asl A		; 0A
	bit $0902.w		; 2C 02 09
	brk $2D.b		; 00 2D
	ora $09.b,S		; 03 09
	phd		; 0B
	rol $0B03.w		; 2E 03 0B
	brk $2F.b		; 00 2F
	cop $0B.b		; 02 0B
	brk $30.b		; 00 30
	cop $0B.b		; 02 0B
	brk $31.b		; 00 31
	cop $0B.b		; 02 0B
	brk $32.b		; 00 32
	ora $08.b,S		; 03 08
	brk $00.b		; 00 00
	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	cop $09.b		; 02 09
	brk $33.b		; 00 33
	cop $09.b		; 02 09
	tsb $0234.w		; 0C 34 02
	ora #$350D.w		; 09 0D 35
	cop $09.b		; 02 09
	asl $0236.w		; 0E 36 02
	ora #$3700.w		; 09 00 37
	ora ($09.b,X)		; 01 09
	brk $38.b		; 00 38
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	ora $040339.l		; 0F 39 03 04
	brk $3A.b		; 00 3A
	cop $04.b		; 02 04
	brk $3B.b		; 00 3B
	cop $04.b		; 02 04
	brk $3C.b		; 00 3C
	cop $04.b		; 02 04
	brk $3D.b		; 00 3D
	cop $04.b		; 02 04
	brk $3E.b		; 00 3E
	cop $02.b		; 02 02
	brk $3F.b		; 00 3F
	cop $02.b		; 02 02
	brk $40.b		; 00 40
	cop $02.b		; 02 02
	brk $41.b		; 00 41
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $42.b		; 00 42
	cop $02.b		; 02 02
	brk $43.b		; 00 43
	cop $02.b		; 02 02
	brk $44.b		; 00 44
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $45.b		; 00 45
	cop $02.b		; 02 02
	brk $46.b		; 00 46
	cop $02.b		; 02 02
	brk $47.b		; 00 47
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $06.b		; 05 06
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $09.b		; 02 09
	bpl  72.b		; 10 48
	cop $09.b		; 02 09
	brk $49.b		; 00 49
	ora ($09.b,X)		; 01 09
	ora ($4A.b),Y		; 11 4A
	ora ($09.b,X)		; 01 09
	ora ($4B.b)		; 12 4B
	cop $09.b		; 02 09
	ora ($4C.b,S),Y		; 13 4C
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	brk $4D.b		; 00 4D
	cop $08.b		; 02 08
	brk $4E.b		; 00 4E
	cop $04.b		; 02 04
	brk $4F.b		; 00 4F
	cop $0D.b		; 02 0D
	trb $50.b		; 14 50
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $01.b		; 00 01
	cop $02.b		; 02 02
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	brk $03.b		; 00 03
	cop $02.b		; 02 02
	brk $04.b		; 00 04
	cop $02.b		; 02 02
	brk $05.b		; 00 05
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	tsb $02.b		; 04 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $04.b		; 05 04
	brk $06.b		; 00 06
	cop $04.b		; 02 04
	brk $07.b		; 00 07
	ora $04.b,S		; 03 04
	brk $08.b		; 00 08
	cop $04.b		; 02 04
	brk $09.b		; 00 09
	ora $04.b,S		; 03 04
	brk $0A.b		; 00 0A
	cop $04.b		; 02 04
	brk $0B.b		; 00 0B
	cop $04.b		; 02 04
	brk $0C.b		; 00 0C
	cop $04.b		; 02 04
	brk $0D.b		; 00 0D
	cop $04.b		; 02 04
	brk $0E.b		; 00 0E
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $0F.b		; 00 0F
	cop $06.b		; 02 06
	brk $10.b		; 00 10
	cop $06.b		; 02 06
	brk $11.b		; 00 11
	cop $06.b		; 02 06
	brk $12.b		; 00 12
	cop $04.b		; 02 04
	brk $13.b		; 00 13
	cop $04.b		; 02 04
	brk $14.b		; 00 14
	ora ($04.b,X)		; 01 04
	brk $15.b		; 00 15
	ora ($04.b,X)		; 01 04
	brk $16.b		; 00 16
	ora ($04.b,X)		; 01 04
	brk $17.b		; 00 17
	ora ($04.b,X)		; 01 04
	brk $18.b		; 00 18
	ora ($04.b,X)		; 01 04
	brk $19.b		; 00 19
	ora ($07.b,X)		; 01 07
	brk $1A.b		; 00 1A
	cop $07.b		; 02 07
	ora ($1B.b,X)		; 01 1B
	cop $09.b		; 02 09
	brk $1C.b		; 00 1C
	cop $09.b		; 02 09
	brk $1D.b		; 00 1D
	cop $09.b		; 02 09
	cop $1E.b		; 02 1E
	cop $09.b		; 02 09
	brk $1F.b		; 00 1F
	cop $09.b		; 02 09
	ora $20.b,S		; 03 20
	cop $09.b		; 02 09
	brk $21.b		; 00 21
	ora ($09.b,X)		; 01 09
	brk $22.b		; 00 22
	cop $09.b		; 02 09
	tsb $23.b		; 04 23
	cop $09.b		; 02 09
	brk $24.b		; 00 24
	ora $09.b,S		; 03 09
	brk $25.b		; 00 25
	cop $09.b		; 02 09
	ora $26.b		; 05 26
	cop $07.b		; 02 07
	brk $27.b		; 00 27
	ora ($07.b,X)		; 01 07
	asl $28.b		; 06 28
	ora ($07.b,X)		; 01 07
	brk $29.b		; 00 29
	ora ($07.b,X)		; 01 07
	brk $2A.b		; 00 2A
	ora ($07.b,X)		; 01 07
	ora [$2B.b]		; 07 2B
	ora ($09.b,X)		; 01 09
	brk $2C.b		; 00 2C
	ora ($09.b,X)		; 01 09
	brk $2D.b		; 00 2D
	ora ($09.b,X)		; 01 09
	php		; 08
	rol $0701.w		; 2E 01 07
	brk $2F.b		; 00 2F
	ora $07.b,S		; 03 07
	ora #$0330.w		; 09 30 03
	ora [$00.b]		; 07 00
	and ($03.b),Y		; 31 03
	ora [$0A.b]		; 07 0A
	and ($03.b)		; 32 03
	php		; 08
	brk $00.b		; 00 00
	cop $09.b		; 02 09
	brk $33.b		; 00 33
	ora $09.b,S		; 03 09
	brk $34.b		; 00 34
	ora $09.b,S		; 03 09
	phd		; 0B
	and $03.b,X		; 35 03
	ora #$3600.w		; 09 00 36
	ora $09.b,S		; 03 09
	brk $37.b		; 00 37
	cop $09.b		; 02 09
	brk $38.b		; 00 38
	cop $09.b		; 02 09
	brk $39.b		; 00 39
	cop $09.b		; 02 09
	brk $3A.b		; 00 3A
	cop $09.b		; 02 09
	brk $3B.b		; 00 3B
	cop $0B.b		; 02 0B
	brk $00.b		; 00 00
	cop $0B.b		; 02 0B
	tsb $0300.w		; 0C 00 03
	phd		; 0B
	ora $023C.w		; 0D 3C 02
	phd		; 0B
	brk $3D.b		; 00 3D
	cop $0D.b		; 02 0D
	brk $3E.b		; 00 3E
	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	brk $3F.b		; 00 3F
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	brk $40.b		; 00 40
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	brk $41.b		; 00 41
	cop $04.b		; 02 04
	brk $42.b		; 00 42
	cop $07.b		; 02 07
	brk $43.b		; 00 43
	ora ($07.b,X)		; 01 07
	asl $0144.w		; 0E 44 01
	ora [$0F.b]		; 07 0F
	eor $01.b		; 45 01
	ora [$00.b]		; 07 00
	lsr $01.b		; 46 01
	ora [$00.b]		; 07 00
	eor [$01.b]		; 47 01
	ora [$00.b]		; 07 00
	pha		; 48
	cop $07.b		; 02 07
	brk $49.b		; 00 49
	cop $07.b		; 02 07
	brk $4A.b		; 00 4A
	cop $07.b		; 02 07
	bpl  75.b		; 10 4B
	cop $07.b		; 02 07
	brk $4C.b		; 00 4C
	cop $02.b		; 02 02
	brk $4D.b		; 00 4D
	cop $02.b		; 02 02
	brk $4E.b		; 00 4E
	cop $02.b		; 02 02
	brk $4F.b		; 00 4F
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $50.b		; 00 50
	cop $02.b		; 02 02
	brk $51.b		; 00 51
	cop $02.b		; 02 02
	brk $52.b		; 00 52
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $53.b		; 00 53
	cop $02.b		; 02 02
	brk $54.b		; 00 54
	cop $02.b		; 02 02
	brk $55.b		; 00 55
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $06.b		; 05 06
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $07.b		; 02 07
	ora ($56.b),Y		; 11 56
	ora ($07.b,X)		; 01 07
	ora ($57.b)		; 12 57
	ora $0B.b,S		; 03 0B
	brk $00.b		; 00 00
	cop $0B.b		; 02 0B
	ora ($00.b,S),Y		; 13 00
	cop $0D.b		; 02 0D
	trb $00.b		; 14 00
	cop $0D.b		; 02 0D
	ora $58.b,X		; 15 58
	cop $0A.b		; 02 0A
	brk $59.b		; 00 59
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	cop $0D.b		; 02 0D
	brk $5A.b		; 00 5A
	ora ($0D.b,X)		; 01 0D
	brk $5B.b		; 00 5B
	cop $0D.b		; 02 0D
	brk $5C.b		; 00 5C
	ora ($0D.b,X)		; 01 0D
	asl $5D.b,X		; 16 5D
	cop $0D.b		; 02 0D
	ora [$5E.b],Y		; 17 5E
	cop $09.b		; 02 09
	clc		; 18
	eor $000202.l,X		; 5F 02 02 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	ora ($02.b,X)		; 01 02
	cop $00.b		; 02 00
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	ora $02.b,S		; 03 02
	cop $00.b		; 02 00
	tsb $02.b		; 04 02
	cop $00.b		; 02 00
	ora $03.b		; 05 03
	cop $00.b		; 02 00
	brk $04.b		; 00 04
	cop $00.b		; 02 00
	brk $05.b		; 00 05
	cop $00.b		; 02 00
	brk $05.b		; 00 05
	cop $00.b		; 02 00
	brk $03.b		; 00 03
	cop $00.b		; 02 00
	brk $04.b		; 00 04
	cop $00.b		; 02 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	asl $02.b		; 06 02
	tsb $00.b		; 04 00
	ora [$03.b]		; 07 03
	cop $00.b		; 02 00
	php		; 08
	cop $02.b		; 02 02
	brk $09.b		; 00 09
	ora $04.b,S		; 03 04
	brk $0A.b		; 00 0A
	cop $04.b		; 02 04
	brk $0B.b		; 00 0B
	cop $04.b		; 02 04
	brk $0C.b		; 00 0C
	cop $04.b		; 02 04
	brk $0D.b		; 00 0D
	cop $04.b		; 02 04
	brk $0E.b		; 00 0E
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $0F.b		; 00 0F
	cop $06.b		; 02 06
	brk $10.b		; 00 10
	cop $06.b		; 02 06
	brk $11.b		; 00 11
	cop $06.b		; 02 06
	brk $12.b		; 00 12
	cop $06.b		; 02 06
	brk $13.b		; 00 13
	ora ($06.b,X)		; 01 06
	brk $14.b		; 00 14
	ora ($09.b,X)		; 01 09
	brk $15.b		; 00 15
	cop $09.b		; 02 09
	ora ($16.b,X)		; 01 16
	cop $09.b		; 02 09
	brk $17.b		; 00 17
	cop $09.b		; 02 09
	cop $18.b		; 02 18
	cop $09.b		; 02 09
	brk $19.b		; 00 19
	cop $09.b		; 02 09
	ora $1A.b,S		; 03 1A
	cop $09.b		; 02 09
	tsb $1B.b		; 04 1B
	cop $09.b		; 02 09
	brk $1C.b		; 00 1C
	cop $09.b		; 02 09
	brk $1D.b		; 00 1D
	cop $09.b		; 02 09
	ora $1E.b		; 05 1E
	cop $09.b		; 02 09
	brk $1F.b		; 00 1F
	ora ($09.b,X)		; 01 09
	asl $20.b		; 06 20
	ora ($09.b,X)		; 01 09
	brk $21.b		; 00 21
	cop $09.b		; 02 09
	brk $22.b		; 00 22
	ora ($09.b,X)		; 01 09
	ora [$23.b]		; 07 23
	ora ($09.b,X)		; 01 09
	brk $24.b		; 00 24
	ora $09.b,S		; 03 09
	php		; 08
	and $03.b		; 25 03
	ora #$2600.w		; 09 00 26
	ora $09.b,S		; 03 09
	brk $27.b		; 00 27
	ora $09.b,S		; 03 09
	ora #$0328.w		; 09 28 03
	ora #$2900.w		; 09 00 29
	ora $09.b,S		; 03 09
	asl A		; 0A
	rol A		; 2A
	ora $09.b,S		; 03 09
	brk $2B.b		; 00 2B
	ora $09.b,S		; 03 09
	brk $2C.b		; 00 2C
	ora $09.b,S		; 03 09
	phd		; 0B
	and $0803.w		; 2D 03 08
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	tsb $0200.w		; 0C 00 02
	tsb $00.b		; 04 00
	rol $0603.w		; 2E 03 06
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	brk $2F.b		; 00 2F
	cop $04.b		; 02 04
	brk $30.b		; 00 30
	cop $04.b		; 02 04
	brk $31.b		; 00 31
	cop $0B.b		; 02 0B
	brk $32.b		; 00 32
	cop $0B.b		; 02 0B
	brk $33.b		; 00 33
	cop $0B.b		; 02 0B
	brk $34.b		; 00 34
	cop $0B.b		; 02 0B
	brk $35.b		; 00 35
	cop $0B.b		; 02 0B
	brk $36.b		; 00 36
	cop $0B.b		; 02 0B
	brk $37.b		; 00 37
	ora ($0B.b,X)		; 01 0B
	brk $38.b		; 00 38
	ora ($0B.b,X)		; 01 0B
	ora $0139.w		; 0D 39 01
	phd		; 0B
	asl $023A.w		; 0E 3A 02
	phd		; 0B
	brk $3B.b		; 00 3B
	ora $04.b,S		; 03 04
	brk $3C.b		; 00 3C
	cop $02.b		; 02 02
	brk $3D.b		; 00 3D
	cop $02.b		; 02 02
	brk $3E.b		; 00 3E
	cop $02.b		; 02 02
	brk $3F.b		; 00 3F
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $40.b		; 00 40
	cop $02.b		; 02 02
	brk $41.b		; 00 41
	cop $02.b		; 02 02
	brk $42.b		; 00 42
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $43.b		; 00 43
	cop $02.b		; 02 02
	brk $44.b		; 00 44
	cop $02.b		; 02 02
	brk $45.b		; 00 45
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $06.b,S		; 03 06
	brk $00.b		; 00 00
	ora ($06.b,X)		; 01 06
	brk $00.b		; 00 00
	ora ($09.b,X)		; 01 09
	ora $090146.l		; 0F 46 01 09
	bpl  71.b		; 10 47
	ora ($09.b,X)		; 01 09
	brk $48.b		; 00 48
	cop $09.b		; 02 09
	ora ($49.b),Y		; 11 49
	ora ($09.b,X)		; 01 09
	ora ($4A.b)		; 12 4A
	cop $09.b		; 02 09
	ora ($4B.b,S),Y		; 13 4B
	ora ($09.b,X)		; 01 09
	trb $4C.b		; 14 4C
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $01.b		; 00 01
	cop $02.b		; 02 02
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	brk $03.b		; 00 03
	cop $02.b		; 02 02
	brk $04.b		; 00 04
	cop $02.b		; 02 02
	brk $05.b		; 00 05
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	tsb $02.b		; 04 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $04.b		; 05 04
	brk $06.b		; 00 06
	ora $04.b,S		; 03 04
	brk $07.b		; 00 07
	ora $04.b,S		; 03 04
	brk $08.b		; 00 08
	cop $02.b		; 02 02
	brk $09.b		; 00 09
	ora $04.b,S		; 03 04
	brk $0A.b		; 00 0A
	cop $04.b		; 02 04
	brk $0B.b		; 00 0B
	cop $04.b		; 02 04
	brk $0C.b		; 00 0C
	cop $04.b		; 02 04
	brk $0D.b		; 00 0D
	cop $04.b		; 02 04
	brk $0E.b		; 00 0E
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $0F.b		; 00 0F
	cop $06.b		; 02 06
	brk $10.b		; 00 10
	cop $06.b		; 02 06
	brk $11.b		; 00 11
	cop $06.b		; 02 06
	brk $12.b		; 00 12
	ora ($06.b,X)		; 01 06
	brk $13.b		; 00 13
	ora ($09.b,X)		; 01 09
	brk $14.b		; 00 14
	cop $09.b		; 02 09
	ora ($15.b,X)		; 01 15
	cop $09.b		; 02 09
	brk $16.b		; 00 16
	cop $09.b		; 02 09
	cop $17.b		; 02 17
	cop $09.b		; 02 09
	brk $18.b		; 00 18
	cop $09.b		; 02 09
	brk $19.b		; 00 19
	cop $09.b		; 02 09
	ora $1A.b,S		; 03 1A
	cop $09.b		; 02 09
	brk $1B.b		; 00 1B
	cop $09.b		; 02 09
	brk $1C.b		; 00 1C
	cop $09.b		; 02 09
	tsb $1D.b		; 04 1D
	cop $09.b		; 02 09
	brk $1E.b		; 00 1E
	cop $09.b		; 02 09
	ora $1F.b		; 05 1F
	cop $04.b		; 02 04
	brk $20.b		; 00 20
	cop $09.b		; 02 09
	brk $21.b		; 00 21
	ora ($09.b,X)		; 01 09
	asl $22.b		; 06 22
	ora ($09.b,X)		; 01 09
	brk $23.b		; 00 23
	ora ($09.b,X)		; 01 09
	brk $24.b		; 00 24
	ora ($09.b,X)		; 01 09
	ora [$25.b]		; 07 25
	ora ($09.b,X)		; 01 09
	brk $26.b		; 00 26
	ora $09.b,S		; 03 09
	php		; 08
	and [$03.b]		; 27 03
	ora #$2800.w		; 09 00 28
	ora $09.b,S		; 03 09
	ora #$0329.w		; 09 29 03
	php		; 08
	asl A		; 0A
	brk $01.b		; 00 01
	php		; 08
	phd		; 0B
	brk $01.b		; 00 01
	phd		; 0B
	brk $2A.b		; 00 2A
	cop $0B.b		; 02 0B
	brk $2B.b		; 00 2B
	cop $0B.b		; 02 0B
	brk $2C.b		; 00 2C
	cop $0B.b		; 02 0B
	brk $2D.b		; 00 2D
	cop $0B.b		; 02 0B
	brk $2E.b		; 00 2E
	cop $0B.b		; 02 0B
	brk $2F.b		; 00 2F
	cop $0B.b		; 02 0B
	brk $30.b		; 00 30
	ora ($0B.b,X)		; 01 0B
	brk $31.b		; 00 31
	ora ($0B.b,X)		; 01 0B
	tsb $0132.w		; 0C 32 01
	ora $3300.w		; 0D 00 33
	ora ($0D.b,X)		; 01 0D
	brk $34.b		; 00 34
	ora ($0D.b,X)		; 01 0D
	brk $35.b		; 00 35
	ora ($04.b,X)		; 01 04
	brk $36.b		; 00 36
	cop $04.b		; 02 04
	brk $37.b		; 00 37
	cop $04.b		; 02 04
	brk $38.b		; 00 38
	cop $04.b		; 02 04
	brk $39.b		; 00 39
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $3A.b		; 00 3A
	cop $02.b		; 02 02
	brk $3B.b		; 00 3B
	cop $02.b		; 02 02
	brk $3C.b		; 00 3C
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $3D.b		; 00 3D
	cop $02.b		; 02 02
	brk $3E.b		; 00 3E
	cop $02.b		; 02 02
	brk $3F.b		; 00 3F
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $40.b		; 00 40
	cop $02.b		; 02 02
	brk $41.b		; 00 41
	cop $02.b		; 02 02
	brk $42.b		; 00 42
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $02.b		; 05 02
	brk $00.b		; 00 00
	ora $09.b		; 05 09
	ora $0143.w		; 0D 43 01
	ora #$4400.w		; 09 00 44
	ora ($04.b,X)		; 01 04
	brk $45.b		; 00 45
	cop $09.b		; 02 09
	asl $0346.w		; 0E 46 03
	asl $00.b		; 06 00
	brk $02.b		; 00 02
	asl $00.b		; 06 00
	brk $02.b		; 00 02
	tsb $00.b		; 04 00
	eor [$02.b]		; 47 02
	tsb $00.b		; 04 00
	pha		; 48
	cop $05.b		; 02 05
	brk $49.b		; 00 49
	cop $05.b		; 02 05
	ora $0D024A.l		; 0F 4A 02 0D
	brk $4B.b		; 00 4B
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	cop $05.b		; 02 05
	brk $00.b		; 00 00
	ora $06.b,S		; 03 06
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	tsb $09.b		; 04 09
	brk $00.b		; 00 00
	ora $0A.b		; 05 0A
	brk $00.b		; 00 00
	asl $0B.b		; 06 0B
	brk $00.b		; 00 00
	ora [$0C.b]		; 07 0C
	brk $00.b		; 00 00
	php		; 08
	ora $0000.w		; 0D 00 00
	ora #$000E.w		; 09 0E 00
	brk $0A.b		; 00 0A
	ora $0B0000.l		; 0F 00 00 0B
	bpl   0.b		; 10 00
	brk $0C.b		; 00 0C
	ora ($00.b),Y		; 11 00
	brk $0D.b		; 00 0D
	ora ($00.b)		; 12 00
	brk $0E.b		; 00 0E
	ora ($00.b,S),Y		; 13 00
	brk $0F.b		; 00 0F
	trb $00.b		; 14 00
	brk $10.b		; 00 10
	ora $00.b,X		; 15 00
	brk $11.b		; 00 11
	asl $00.b,X		; 16 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $02.b		; 00 02
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	brk $03.b		; 00 03
	ora [$00.b]		; 07 00
	brk $04.b		; 00 04
	php		; 08
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	ora $06.b,S		; 03 06
	brk $00.b		; 00 00
	tsb $07.b		; 04 07
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	ora $07.b,S		; 03 07
	brk $00.b		; 00 00
	tsb $08.b		; 04 08
	brk $00.b		; 00 00
	ora $09.b		; 05 09
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	brk $00.b		; 00 00
	asl $0B.b		; 06 0B
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	cop $07.b		; 02 07
	brk $00.b		; 00 00
	ora $08.b,S		; 03 08
	brk $00.b		; 00 00
	tsb $09.b		; 04 09
	brk $00.b		; 00 00
	ora $0A.b		; 05 0A
	brk $00.b		; 00 00
	asl $0B.b		; 06 0B
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	tsb $07.b		; 04 07
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	ora $05.b,S		; 03 05
	brk $00.b		; 00 00
	tsb $06.b		; 04 06
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	ora $07.b,S		; 03 07
	brk $00.b		; 00 00
	tsb $08.b		; 04 08
	brk $00.b		; 00 00
	ora $09.b		; 05 09
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	brk $00.b		; 00 00
	brk $0B.b		; 00 0B
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $E0.b		; 00 E0
	sta ($5F.b,S),Y		; 93 5F
	sty $FC.b,X		; 94 FC
	sty $6F.b,X		; 94 6F
	sta $DC.b,X		; 95 DC
	sta $3D.b,X		; 95 3D
	stx $B6.b,Y		; 96 B6
	stx $47.b,Y		; 96 47
	sta [$AE.b],Y		; 97 AE
	sta [$1B.b],Y		; 97 1B
	tya		; 98
	lda ($98.b)		; B2 98
	adc $9A2299.l,X		; 7F 99 22 9A
	sta $9A.b,X		; 95 9A
	asl $999B.w		; 0E 9B 99
	txy		; 9B
	dec $9B.b,X		; D6 9B
	eor $9C.b,X		; 55 9C
	ldx $9C.b,Y		; B6 9C
	and $9DA29D.l		; 2F 9D A2 9D
	ora $9E.b,X		; 15 9E
	dey		; 88
	stz $9EE3.w,X		; 9E E3 9E
	bvc -97.b		; 50 9F
	lda $1E9F.w,X		; BD 9F 1E
	ldy #$A09D.w		; A0 9D A0
	rol $9BA1.w		; 2E A1 9B
	lda ($4A.b,X)		; A1 4A
	ldx #$A2A5.w		; A2 A5 A2
	tsb $79A3.w		; 0C A3 79
	lda $E0.b,S		; A3 E0
	lda $6B.b,S		; A3 6B
	ldy $02.b		; A4 02
	lda $7B.b		; A5 7B
	lda $E8.b		; A5 E8
	lda $7F.b		; A5 7F
	ldx $28.b		; A6 28
	lda [$B9.b]		; A7 B9
	lda [$5C.b]		; A7 5C
	tay		; A8
	sbc ($A8.b,S),Y		; F3 A8
	txa		; 8A
	lda #$AA09.w		; A9 09 AA
	cli		; 58
	tax		; AA
	lda $44AA.w,Y		; B9 AA 44
	plb		; AB
	sta $F4AB.w		; 8D AB F4
	plb		; AB
	adc ($AC.b,S),Y		; 73 AC
	sbc ($AC.b)		; F2 AC
	eor $C6AD.w		; 4D AD C6
	lda $AE51.w		; AD 51 AE
	inx		; E8
	ldx $AF4F.w		; AE 4F AF
	dec $3BAF.w		; CE AF 3B
	bcs -94.b		; B0 A2
	bcs -15.b		; B0 F1
	bcs  52.b		; B0 34
	lda ($BF.b),Y		; B1 BF
	lda ($4A.b),Y		; B1 4A
	lda ($A5.b)		; B2 A5
	lda ($0C.b)		; B2 0C
	lda ($79.b,S),Y		; B3 79
	lda ($C2.b,S),Y		; B3 C2
	lda ($2F.b,S),Y		; B3 2F
	ldy $B4.b,X		; B4 B4
	ldy $09.b,X		; B4 09
	lda $76.b,X		; B5 76
	lda $31.b,X		; B5 31
	ldx $A4.b,Y		; B6 A4
	ldx $53.b,Y		; B6 53
	lda [$2C.b],Y		; B7 2C
	clv		; B8
	sbc $B9D2B8.l,X		; FF B8 D2 B9
	eor ($BA.b),Y		; 51 BA
	cpy $BA.b		; C4 BA
	adc [$BB.b]		; 67 BB
	ldy $35BB.w,X		; BC BB 35
	ldy $BCAE.w,X		; BC AE BC
	ora $BD.b,X		; 15 BD
	ldx $BD.b		; A6 BD
	ora ($BE.b,S),Y		; 13 BE
	bra -66.b		; 80 BE
	sbc $BF78BE.l,X		; FF BE 78 BF
	sbc $BF.b		; E5 BF
	eor ($C0.b)		; 52 C0
	sbc #$80C0.w		; E9 C0 80
	cmp ($3B.b,X)		; C1 3B
	rep #$C0		; C2 C0
.ACCU 16
.INDEX 16
	rep #$39		; C2 39
	cmp $A0.b,S		; C3 A0
	cmp $07.b,S		; C3 07
	cpy $5C.b		; C4 5C
	cpy $17.b		; C4 17
	cmp $84.b		; C5 84
	cmp $03.b		; C5 03
	dec $76.b		; C6 76
	dec $E3.b		; C6 E3
	dec $74.b		; C6 74
	cmp [$F3.b]		; C7 F3
	cmp [$66.b]		; C7 66
	iny		; C8
	cmp ($C8.b,S),Y		; D3 C8
	stz $C9.b		; 64 C9
	wai		; CB
	cmp #$CA4A.w		; C9 4A CA
	lda $2ACA.w,X		; BD CA 2A
	wai		; CB
	tyx		; BB
	wai		; CB
	jsl $CC8FCC.l		; 22 CC 8F CC
	sec		; 38
	cmp $CDD5.w		; CD D5 CD
	bmi -50.b		; 30 CE
	adc $CF16CE.l,X		; 7F CE 16 CF
	sta $D050CF.l		; 8F CF 50 D0
	ora [$D1.b],Y		; 17 D1
	ldx #$3FD1.w		; A2 D1 3F
	cmp ($BE.b)		; D2 BE
	cmp ($91.b)		; D2 91
	cmp ($58.b,S),Y		; D3 58
	pei ($2B.b)		; D4 2B
	cmp $E6.b,X		; D5 E6
	cmp $7D.b,X		; D5 7D
	dec $15.b,X		; D6 15
	sed		; F8
	sed		; F8
	cmp ($08.b),Y		; D1 08
	brk $48.b		; 00 48
	inc $B102.w		; EE 02 B1
	php		; 08
	cop $48.b		; 02 48
	inc $B1F2.w,X		; FE F2 B1
	php		; 08
	tsb $48.b		; 04 48
	inc $FA.b,X		; F6 FA
	cmp ($08.b,X)		; C1 08
	asl $48.b		; 06 48
	sed		; F8
	brk $F1.b		; 00 F1
	brk $08.b		; 00 08
	rti		; 40

	sed		; F8
	brk $F9.b		; 00 F9
	brk $09.b		; 00 09
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $0A00.w,Y		; F9 00 0A
	rti		; 40

	beq   8.b		; F0 08
	lda #$0B00.w		; A9 00 0B
	rti		; 40

	sbc $E1FF.w,Y		; F9 FF E1
	brk $0C.b		; 00 0C
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc ($00.b,X)		; E1 00
	ora $F940.w		; 0D 40 F9
	sbc $0E00E9.l,X		; FF E9 00 0E
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sta $0F00.w,Y		; 99 00 0F
	rti		; 40

	xce		; FB
	sbc $0099.w,X		; FD 99 00
	clc		; 18
	rti		; 40

	sed		; F8
	brk $A9.b		; 00 A9
	brk $19.b		; 00 19
	rti		; 40

	brk $F8.b		; 00 F8
	lda #$1A00.w		; A9 00 1A
	rti		; 40

	php		; 08
	beq -87.b		; F0 A9
	brk $1B.b		; 00 1B
	rti		; 40

	inc $C10A.w		; EE 0A C1
	brk $1C.b		; 00 1C
	rti		; 40

	asl $F2.b		; 06 F2
	cmp ($00.b,X)		; C1 00
	ora $EF40.w,X		; 1D 40 EF
	ora #$00A1.w		; 09 A1 00
	asl $F740.w,X		; 1E 40 F7
	ora ($A1.b,X)		; 01 A1
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $00A1F9.l,X		; FF F9 A1 00
	jsr $1A40.w		; 20 40 1A
	sbc ($FF.b),Y		; F1 FF
	cmp $08.b,S		; C3 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	cmp ($08.b,S),Y		; D3 08
	cop $48.b		; 02 48
	inc $0A.b		; E6 0A
	lda $08.b,S		; A3 08
	tsb $48.b		; 04 48
	php		; 08
	beq -77.b		; F0 B3
	brk $06.b		; 00 06
	rti		; 40

	brk $F8.b		; 00 F8
	ldy $00.b,X		; B4 00
	ora [$40.b]		; 07 40
	sbc ($07.b),Y		; F1 07
	xba		; EB
	brk $08.b		; 00 08
	rti		; 40

	sbc $EBFF.w,Y		; F9 FF EB
	brk $09.b		; 00 09
	rti		; 40

	inx		; E8
	bpl -77.b		; 10 B3
	brk $0A.b		; 00 0A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp $00.b,S		; C3 00
	phd		; 0B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	wai		; CB
	brk $0C.b		; 00 0C
	rti		; 40

	xba		; EB
	ora $00F9.w		; 0D F9 00
	ora $F340.w		; 0D 40 F3
	ora $E3.b		; 05 E3
	brk $0E.b		; 00 0E
	rti		; 40

	xce		; FB
	sbc $00E3.w,X		; FD E3 00
	ora $FDFB40.l		; 0F 40 FB FD
	sbc ($00.b,S),Y		; F3 00
	asl $40.b,X		; 16 40
	xce		; FB
	sbc $00FB.w,X		; FD FB 00
	ora [$40.b],Y		; 17 40
	ora $F5.b,S		; 03 F5
	xce		; FB
	brk $18.b		; 00 18
	rti		; 40

	inc $F10A.w		; EE 0A F1
	brk $19.b		; 00 19
	rti		; 40

	beq   8.b		; F0 08
	lda ($00.b,S),Y		; B3 00
	inc A		; 1A
	rti		; 40

	sed		; F8
	brk $B3.b		; 00 B3
	brk $1B.b		; 00 1B
	rti		; 40

	inc $02.b,X		; F6 02
	lda $00.b,S		; A3 00
	trb $F640.w		; 1C 40 F6
	cop $AB.b		; 02 AB
	brk $1D.b		; 00 1D
	rti		; 40

	inc $ACFA.w,X		; FE FA AC
	brk $1E.b		; 00 1E
	rti		; 40

	sbc [$11.b]		; E7 11
	tyx		; BB
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $00BB09.l		; EF 09 BB 00
	jsr $F740.w		; 20 40 F7
	ora ($BB.b,X)		; 01 BB
	brk $21.b		; 00 21
	rti		; 40

	sbc $00BBF9.l,X		; FF F9 BB 00
	jsl $F91340.l		; 22 40 13 F9
	sbc [$D9.b],Y		; F7 D9
	php		; 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	lda ($08.b,X)		; A1 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	lda ($08.b),Y		; B1 08
	tsb $48.b		; 04 48
	pea $C9FC.w		; F4 FC C9
	php		; 08
	asl $48.b		; 06 48
	ora ($F7.b,X)		; 01 F7
	sbc $0800.w,Y		; F9 00 08
	rti		; 40

	sbc #$B90F.w		; E9 0F B9
	brk $09.b		; 00 09
	rti		; 40

	sbc $E9FF.w,Y		; F9 FF E9
	brk $0A.b		; 00 0A
	rti		; 40

	sbc $F1FF.w,Y		; F9 FF F1
	brk $0B.b		; 00 0B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda ($00.b,X)		; A1 00
	tsb $0140.w		; 0C 40 01
	sbc [$A9.b],Y		; F7 A9
	brk $0D.b		; 00 0D
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda ($00.b),Y		; B1 00
	asl $0140.w		; 0E 40 01
	sbc [$B9.b],Y		; F7 B9
	brk $0F.b		; 00 0F
	rti		; 40

	xba		; EB
	ora $00C1.w		; 0D C1 00
	clc		; 18
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp ($00.b,X)		; C1 00
	ora $FB40.w,Y		; 19 40 FB
	sbc $00C1.w,X		; FD C1 00
	inc A		; 1A
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp ($00.b,X)		; C1 00
	tas		; 1B
	rti		; 40

	cpx $C90C.w		; EC 0C C9
	brk $1C.b		; 00 1C
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp #$1D00.w		; C9 00 1D
	rti		; 40

	sbc $F9FF.w,Y		; F9 FF F9
	brk $1E.b		; 00 1E
	rti		; 40

	ora ($F4.b)		; 12 F4
	jsr ($08E1.w,X)		; FC E1 08
	brk $48.b		; 00 48
	inc $0A.b		; E6 0A
	cmp #$0208.w		; C9 08 02
	pha		; 48
	inc $FA.b,X		; F6 FA
	cmp #$0408.w		; C9 08 04
	pha		; 48
	sbc [$09.b]		; E7 09
	lda $0608.w,Y		; B9 08 06
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	lda $0808.w,Y		; B9 08 08
	pha		; 48
	sbc $08A901.l		; EF 01 A9 08
	asl A		; 0A
	pha		; 48
	ora ($F7.b,X)		; 01 F7
	inc $00.b,X		; F6 00
	tsb $EE40.w		; 0C 40 EE
	asl A		; 0A
	cmp $0D00.w,Y		; D9 00 0D
	rti		; 40

	inc $02.b,X		; F6 02
	cmp $0E00.w,Y		; D9 00 0E
	rti		; 40

	inc $D9FA.w,X		; FE FA D9
	brk $0F.b		; 00 0F
	rti		; 40

	cmp $00C119.l,X		; DF 19 C1 00
	trb $F940.w		; 1C 40 F9
	sbc $1D00F1.l,X		; FF F1 00 1D
	rti		; 40

	asl $F2.b		; 06 F2
	cmp #$1E00.w		; C9 00 1E
	rti		; 40

	sbc $F9FF.w,Y		; F9 FF F9
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $00A9F9.l,X		; FF F9 A9 00
	jsr $FF40.w		; 20 40 FF
	sbc $00B1.w,Y		; F9 B1 00
	and ($40.b,X)		; 21 40
	ora [$F1.b]		; 07 F1
	lda $402200.l		; AF 00 22 40
	ora [$F1.b]		; 07 F1
	lda [$00.b],Y		; B7 00
	and $40.b,S		; 23 40
	bpl -22.b		; 10 EA
	asl $D7.b		; 06 D7
	php		; 08
	brk $48.b		; 00 48
	plx		; FA
	inc $D7.b,X		; F6 D7
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $EF.b,X		; F6 EF
	php		; 08
	tsb $48.b		; 04 48
	xba		; EB
	ora $C7.b		; 05 C7
	php		; 08
	asl $48.b		; 06 48
	ora ($E6.b)		; 12 E6
	sbc ($00.b),Y		; F1 00
	php		; 08
	rti		; 40

	asl A		; 0A
	inc $00D7.w		; EE D7 00
	ora #$0A40.w		; 09 40 0A
	inc $00DF.w		; EE DF 00
	asl A		; 0A
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc [$00.b]		; E7 00
	phd		; 0B
	rti		; 40

	plx		; FA
	inc $00E7.w,X		; FE E7 00
	tsb $0240.w		; 0C 40 02
	inc $E7.b,X		; F6 E7
	brk $0D.b		; 00 0D
	rti		; 40

	asl A		; 0A
	inc $00E7.w		; EE E7 00
	asl $0A40.w		; 0E 40 0A
	inc $00EF.w		; EE EF 00
	ora $EE0A40.l		; 0F 40 0A EE
	sbc [$00.b],Y		; F7 00
	clc		; 18
	rti		; 40

	ora ($E6.b)		; 12 E6
	sbc $1900.w,Y		; F9 00 19
	rti		; 40

	xce		; FB
	sbc $00C7.w,X		; FD C7 00
	inc A		; 1A
	rti		; 40

	xce		; FB
	sbc $00CF.w,X		; FD CF 00
	tas		; 1B
	rti		; 40

	trb $00.b		; 14 00
	beq -63.b		; F0 C1
	php		; 08
	brk $48.b		; 00 48
	cld		; D8
	clc		; 18
	lda ($08.b),Y		; B1 08
	cop $48.b		; 02 48
	beq   0.b		; F0 00
	clv		; B8
	php		; 08
	tsb $48.b		; 04 48
	beq   0.b		; F0 00
	iny		; C8
	php		; 08
	asl $48.b		; 06 48
	asl $D9E2.w		; 0E E2 D9
	php		; 08
	php		; 08
	pha		; 48
	brk $F8.b		; 00 F8
	lda $0A00.w,Y		; B9 00 0A
	rti		; 40

	inx		; E8
	bpl -79.b		; 10 B1
	brk $0B.b		; 00 0B
	rti		; 40

	inx		; E8
	bpl -71.b		; 10 B9
	brk $0C.b		; 00 0C
	rti		; 40

	cld		; D8
	jsr $00C1.w		; 20 C1 00
	ora $E040.w		; 0D 40 E0
	clc		; 18
	cmp ($00.b,X)		; C1 00
	asl $E840.w		; 0E 40 E8
	bpl -63.b		; 10 C1
	brk $0F.b		; 00 0F
	rti		; 40

	sed		; F8
	brk $B0.b		; 00 B0
	brk $1A.b		; 00 1A
	rti		; 40

	sed		; F8
	brk $D8.b		; 00 D8
	brk $1B.b		; 00 1B
	rti		; 40

	inx		; E8
	bpl -55.b		; 10 C9
	brk $1C.b		; 00 1C
	rti		; 40

	bpl -24.b		; 10 E8
	cmp #$1D00.w		; C9 00 1D
	rti		; 40

	ora #$D1EF.w		; 09 EF D1
	brk $1E.b		; 00 1E
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cmp ($00.b),Y		; D1 00
	ora $DA1E40.l,X		; 1F 40 1E DA
	sbc ($00.b,X)		; E1 00
	jsr $1E40.w		; 20 40 1E
	phx		; DA
	sbc #$2100.w		; E9 00 21
	rti		; 40

	cpx #$A918.w		; E0 18 A9
	brk $22.b		; 00 22
	rti		; 40

	clc		; 18
	nop		; EA
	asl $E3.b		; 06 E3
	php		; 08
	brk $48.b		; 00 48
	nop		; EA
	asl $F3.b		; 06 F3
	php		; 08
	cop $48.b		; 02 48
	phx		; DA
	asl $DE.b,X		; 16 DE
	php		; 08
	tsb $48.b		; 04 48
	inc A		; 1A
	dec $00DA.w,X		; DE DA 00
	asl $40.b		; 06 40
	cop $F6.b		; 02 F6
	sbc ($00.b,X)		; E1 00
	ora [$40.b]		; 07 40
	cop $F6.b		; 02 F6
	sbc #$0800.w		; E9 00 08
	rti		; 40

	plx		; FA
	inc $00E3.w,X		; FE E3 00
	ora #$FA40.w		; 09 40 FA
	inc $00EB.w,X		; FE EB 00
	asl A		; 0A
	rti		; 40

	plx		; FA
	inc $00F3.w,X		; FE F3 00
	phd		; 0B
	rti		; 40

	plx		; FA
	inc $00FB.w,X		; FE FB 00
	tsb $1240.w		; 0C 40 12
	inc $DD.b		; E6 DD
	brk $0D.b		; 00 0D
	rti		; 40

	jsl $00D6D6.l		; 22 D6 D6 00
	asl $0A40.w		; 0E 40 0A
	inc $00DE.w		; EE DE 00
	ora $EE0A40.l		; 0F 40 0A EE
	inc $00.b		; E6 00
	asl $40.b,X		; 16 40
	ora ($E6.b)		; 12 E6
	inc $00.b		; E6 00
	ora [$40.b],Y		; 17 40
.INDEX 8
	sep #$16		; E2 16
	inc $00.b,X		; F6 00
	clc		; 18
	rti		; 40

	cop $F6.b		; 02 F6
	sbc ($00.b),Y		; F1 00
	ora $DA40.w,Y		; 19 40 DA
	asl $00EE.w,X		; 1E EE 00
	inc A		; 1A
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	inc $1B00.w		; EE 00 1B
	rti		; 40

	sbc $DBFB.w,X		; FD FB DB
	brk $1C.b		; 00 1C
	rti		; 40

	inc $12.b		; E6 12
	stp		; DB
	brk $1D.b		; 00 1D
	rti		; 40

	ora $00E2D9.l,X		; 1F D9 E2 00
	asl $1740.w,X		; 1E 40 17
	sbc ($EA.b,X)		; E1 EA
	brk $1F.b		; 00 1F
	rti		; 40

	ora $00EAD9.l,X		; 1F D9 EA 00
	jsr $1140.w		; 20 40 11
	ora ($DF.b),Y		; 11 DF
	sbc ($08.b),Y		; F1 08
	brk $48.b		; 00 48
	cmp ($1F.b),Y		; D1 1F
	nop		; EA
	php		; 08
	cop $48.b		; 02 48
	ora ($EF.b,X)		; 01 EF
	sbc $08.b		; E5 08
	tsb $48.b		; 04 48
	sbc #$ED07.w		; E9 07 ED
	php		; 08
	asl $48.b		; 06 48
	sbc $F5F7.w,Y		; F9 F7 F5
	php		; 08
	php		; 08
	pha		; 48
	sbc ($17.b,X)		; E1 17
	nop		; EA
	brk $0A.b		; 00 0A
	rti		; 40

	sbc ($17.b,X)		; E1 17
	sbc ($00.b)		; F2 00
	phd		; 0B
	rti		; 40

	cmp ($27.b),Y		; D1 27
	plx		; FA
	brk $0C.b		; 00 0C
	rti		; 40

	cmp $FA1F.w,Y		; D9 1F FA
	brk $0D.b		; 00 0D
	rti		; 40

	sbc ($17.b,X)		; E1 17
	plx		; FA
	brk $0E.b		; 00 0E
	rti		; 40

	and #$F9CF.w		; 29 CF F9
	brk $0F.b		; 00 0F
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sbc #$1A00.w		; E9 00 1A
	rti		; 40

	and ($D7.b,X)		; 21 D7
	sbc $1B00.w,Y		; F9 00 1B
	rti		; 40

	sbc $EDFF.w,Y		; F9 FF ED
	brk $1C.b		; 00 1C
	rti		; 40

	ora #$F5EF.w		; 09 EF F5
	brk $1D.b		; 00 1D
	rti		; 40

	sbc #$FD0F.w		; E9 0F FD
	brk $1E.b		; 00 1E
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc $1F00.w,X		; FD 00 1F
	rti		; 40

	ora ($F8.b)		; 12 F8
	sed		; F8
	xba		; EB
	php		; 08
	brk $48.b		; 00 48
	jsr $F5D0.w		; 20 D0 F5
	php		; 08
	cop $48.b		; 02 48
	php		; 08
	inx		; E8
	sbc $08.b		; E5 08
	tsb $48.b		; 04 48
	inx		; E8
	php		; 08
	inc $08.b		; E6 08
	asl $48.b		; 06 48
	inx		; E8
	php		; 08
	inc $08.b,X		; F6 08
	php		; 08
	pha		; 48
	xba		; EB
	ora $D6.b		; 05 D6
	php		; 08
	asl A		; 0A
	pha		; 48
	sed		; F8
	brk $FB.b		; 00 FB
	brk $0C.b		; 00 0C
	rti		; 40

	clc		; 18
	cpx #$ED.b		; E0 ED
	brk $0D.b		; 00 0D
	rti		; 40

	php		; 08
	beq -11.b		; F0 F5
	brk $0E.b		; 00 0E
	rti		; 40

	bpl -24.b		; 10 E8
	sbc $00.b,X		; F5 00
	ora $E01840.l		; 0F 40 18 E0
	sbc $00.b,X		; F5 00
	trb $1840.w		; 1C 40 18
	cpx #$FD.b		; E0 FD
	brk $1D.b		; 00 1D
	rti		; 40

	brk $F8.b		; 00 F8
	xce		; FB
	brk $1E.b		; 00 1E
	rti		; 40

	bmi -56.b		; 30 C8
	sbc $1F00.w,X		; FD 00 1F
	rti		; 40

	xce		; FB
	sbc $00D3.w,X		; FD D3 00
	jsr $FB40.w		; 20 40 FB
	sbc $00DB.w,X		; FD DB 00
	and ($40.b,X)		; 21 40
	sbc ($05.b,S),Y		; F3 05
	dec $2200.w		; CE 00 22
	rti		; 40

	sed		; F8
	brk $E3.b		; 00 E3
	brk $23.b		; 00 23
	rti		; 40

	ora $0BE5.w,Y		; 19 E5 0B
	sep #$08		; E2 08
	brk $48.b		; 00 48
	ora $EB.b		; 05 EB
	phx		; DA
	php		; 08
	cop $48.b		; 02 48
	cmp $1B.b,X		; D5 1B
	inc $08.b		; E6 08
	tsb $48.b		; 04 48
	sbc $FB.b,X		; F5 FB
	dec $0608.w,X		; DE 08 06
	pha		; 48
	jsl $00F5D6.l		; 22 D6 F5 00
	php		; 08
	rti		; 40

	plx		; FA
	inc $00FE.w,X		; FE FE 00
	ora #$1C40.w		; 09 40 1C
	jmp.w [$00FA]		; DC FA 00
	asl A		; 0A
	rti		; 40

	bit $D4.b		; 24 D4
	sbc $0B00.w,X		; FD 00 0B
	rti		; 40

	sbc $FA0B.w		; ED 0B FA
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $03.b,X		; F5 03
	plx		; FA
	brk $0D.b		; 00 0D
	rti		; 40

	cld		; D8
	jsr $00F6.w		; 20 F6 00
	asl $E040.w		; 0E 40 E0
	clc		; 18
	inc $00.b,X		; F6 00
	ora $E31540.l		; 0F 40 15 E3
	phx		; DA
	brk $18.b		; 00 18
	rti		; 40

	ora $E3.b,X		; 15 E3
	sep #$00		; E2 00
	ora $0540.w,Y		; 19 40 05
	sbc ($EA.b,S),Y		; F3 EA
	brk $1A.b		; 00 1A
	rti		; 40

	ora $EAEB.w		; 0D EB EA
	brk $1B.b		; 00 1B
	rti		; 40

	ora $E3.b,X		; 15 E3
	nop		; EA
	brk $1C.b		; 00 1C
	rti		; 40

	sbc $13.b		; E5 13
	sbc ($00.b)		; F2 00
	ora $ED40.w,X		; 1D 40 ED
	phd		; 0B
	sbc ($00.b)		; F2 00
	asl $1D40.w,X		; 1E 40 1D
	stp		; DB
	sbc $00.b		; E5 00
	ora $DB1D40.l,X		; 1F 40 1D DB
	sbc $2000.w		; ED 00 20
	rti		; 40

	ora ($E6.b)		; 12 E6
	sbc ($00.b)		; F2 00
	and ($40.b,X)		; 21 40
	inc A		; 1A
	dec $00F2.w,X		; DE F2 00
	jsl $03F540.l		; 22 40 F5 03
	inc $2300.w		; EE 00 23
	rti		; 40

	sbc $EEFB.w,X		; FD FB EE
	brk $24.b		; 00 24
	rti		; 40

	jsl $C008E8.l		; 22 E8 08 C0
	php		; 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	cpy #$08.b		; C0 08
	cop $48.b		; 02 48
	nop		; EA
	asl $D8.b		; 06 D8
	php		; 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $D8.b,X		; F6 D8
	php		; 08
	asl $48.b		; 06 48
	cop $EE.b		; 02 EE
	sed		; F8
	php		; 08
	php		; 08
	pha		; 48
	cpx $0C.b		; E4 0C
	inx		; E8
	php		; 08
	asl A		; 0A
	pha		; 48
	pea $E8FC.w		; F4 FC E8
	php		; 08
	tsb $0448.w		; 0C 48 04
	cpx $08E8.w		; EC E8 08
	asl $E548.w		; 0E 48 E5
	phd		; 0B
	sed		; F8
	php		; 08
	jsr $E548.w		; 20 48 E5
	phd		; 0B
	tya		; 98
	php		; 08
	jsl $FBF548.l		; 22 48 F5 FB
	tya		; 98
	php		; 08
	bit $48.b		; 24 48
	ora $EB.b		; 05 EB
	ldy #$08.b		; A0 08
	rol $48.b		; 26 48
	ora $EB.b		; 05 EB
	bcs   8.b		; B0 08
	plp		; 28
	pha		; 48
	sbc $0B.b		; E5 0B
	tay		; A8
	php		; 08
	rol A		; 2A
	pha		; 48
	sbc $FB.b,X		; F5 FB
	tay		; A8
	php		; 08
	bit $0848.w		; 2C 48 08
	beq -56.b		; F0 C8
	brk $2E.b		; 00 2E
	rti		; 40

	sbc $D00B.w		; ED 0B D0
	brk $2F.b		; 00 2F
	rti		; 40

	sbc $03.b,X		; F5 03
	bne   0.b		; D0 00
	rol $FD40.w,X		; 3E 40 FD
	xce		; FB
	bne   0.b		; D0 00
	and $F30540.l,X		; 3F 40 05 F3
	bne   0.b		; D0 00
	rti		; 40

	rti		; 40

	asl A		; 0A
	inc $00D8.w		; EE D8 00
	eor ($40.b,X)		; 41 40
	asl A		; 0A
	inc $00E0.w		; EE E0 00
	.db $42, $40		; 42 40
	ora ($E6.b)		; 12 E6
	sed		; F8
	brk $43.b		; 00 43
	rti		; 40

	ora ($E6.b)		; 12 E6
	brk $00.b		; 00 00
	mvp $FC,$40		; 44 40 FC
	jsr ($0090.w,X)		; FC 90 00
	eor $40.b		; 45 40
	bpl -24.b		; 10 E8
	cpy #$00.b		; C0 00
	lsr $40.b		; 46 40
	php		; 08
	beq -64.b		; F0 C0
	brk $47.b		; 00 47
	rti		; 40

	ora $F3.b		; 05 F3
	tya		; 98
	brk $48.b		; 00 48
	rti		; 40

	sbc $13.b		; E5 13
	clv		; B8
	brk $49.b		; 00 49
	rti		; 40

	sbc $B80B.w		; ED 0B B8
	brk $4A.b		; 00 4A
	rti		; 40

	sbc $03.b,X		; F5 03
	clv		; B8
	brk $4B.b		; 00 4B
	rti		; 40

	sbc $B8FB.w,X		; FD FB B8
	brk $4C.b		; 00 4C
	rti		; 40

	sbc $03.b,X		; F5 03
	sed		; F8
	brk $4D.b		; 00 4D
	rti		; 40

	sbc $03.b,X		; F5 03
	brk $00.b		; 00 00
	lsr $1B40.w		; 4E 40 1B
	inx		; E8
	php		; 08
	lda $0008.w		; AD 08 00
	pha		; 48
	sed		; F8
	sed		; F8
	lda $0208.w		; AD 08 02
	pha		; 48
	php		; 08
	inx		; E8
	lda $0408.w		; AD 08 04
	pha		; 48
	nop		; EA
	asl $C5.b		; 06 C5
	php		; 08
	asl $48.b		; 06 48
	plx		; FA
	inc $C5.b,X		; F6 C5
	php		; 08
	php		; 08
	pha		; 48
	sbc $0B.b		; E5 0B
	sta $0A08.w,X		; 9D 08 0A
	pha		; 48
	sbc $FB.b,X		; F5 FB
	sta $0C08.w,X		; 9D 08 0C
	pha		; 48
	ora $EB.b		; 05 EB
	sta $0E08.w,X		; 9D 08 0E
	pha		; 48
	inx		; E8
	bpl -35.b		; 10 DD
	brk $20.b		; 00 20
	rti		; 40

	beq   8.b		; F0 08
	cmp $2100.w,X		; DD 00 21
	rti		; 40

	beq   8.b		; F0 08
	sta $00.b,X		; 95 00
	jsl $00F840.l		; 22 40 F8 00
	sta $00.b,X		; 95 00
	and $40.b,S		; 23 40
	brk $F8.b		; 00 F8
	sta $00.b,X		; 95 00
	bit $40.b		; 24 40
	inx		; E8
	bpl -67.b		; 10 BD
	brk $25.b		; 00 25
	rti		; 40

	beq   8.b		; F0 08
	lda $2600.w,X		; BD 00 26
	rti		; 40

	sed		; F8
	brk $BD.b		; 00 BD
	brk $27.b		; 00 27
	rti		; 40

	brk $F8.b		; 00 F8
	lda $2800.w,X		; BD 00 28
	rti		; 40

	php		; 08
	beq -67.b		; F0 BD
	brk $29.b		; 00 29
	rti		; 40

	bpl -24.b		; 10 E8
	lda $2A00.w,X		; BD 00 2A
	rti		; 40

	php		; 08
	beq -107.b		; F0 95
	brk $2B.b		; 00 2B
	rti		; 40

	beq   8.b		; F0 08
	cmp $00.b,X		; D5 00
	bit $0A40.w		; 2C 40 0A
	inc $00C5.w		; EE C5 00
	and $0A40.w		; 2D 40 0A
	inc $00CD.w		; EE CD 00
	rol $1540.w		; 2E 40 15
	sbc $A5.b,S		; E3 A5
	brk $2F.b		; 00 2F
	rti		; 40

	sed		; F8
	brk $D5.b		; 00 D5
	brk $30.b		; 00 30
	rti		; 40

	brk $F8.b		; 00 F8
	cmp $00.b,X		; D5 00
	and ($40.b),Y		; 31 40
	php		; 08
	beq -43.b		; F0 D5
	brk $32.b		; 00 32
	rti		; 40

	ora ($E8.b,S),Y		; 13 E8
	php		; 08
	stx $08.b,Y		; 96 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	stx $08.b,Y		; 96 08
	cop $48.b		; 02 48
	nop		; EA
	asl $C5.b		; 06 C5
	php		; 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $C5.b,X		; F6 C5
	php		; 08
	asl $48.b		; 06 48
	asl A		; 0A
	inc $C5.b		; E6 C5
	php		; 08
	php		; 08
	pha		; 48
	xba		; EB
	ora $D5.b		; 05 D5
	php		; 08
	asl A		; 0A
	pha		; 48
	xba		; EB
	ora $B6.b		; 05 B6
	php		; 08
	tsb $FB48.w		; 0C 48 FB
	sbc $B6.b,X		; F5 B6
	php		; 08
	asl $E748.w		; 0E 48 E7
	ora #$08A6.w		; 09 A6 08
	jsr $F748.w		; 20 48 F7
	sbc $08A6.w,Y		; F9 A6 08
	jsl $E90748.l		; 22 48 07 E9
	ldx $08.b		; A6 08
	bit $48.b		; 24 48
	sbc $15.b,S		; E3 15
	ldx $00.b,Y		; B6 00
	rol $40.b		; 26 40
	php		; 08
	beq -98.b		; F0 9E
	brk $27.b		; 00 27
	rti		; 40

	xce		; FB
	sbc $00D5.w,X		; FD D5 00
	plp		; 28
	rti		; 40

	phd		; 0B
	sbc $00B6.w		; ED B6 00
	and #$0B40.w		; 29 40 0B
	sbc $00BE.w		; ED BE 00
	rol A		; 2A
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp $00.b,X		; D5 00
	pld		; 2B
	rti		; 40

	phd		; 0B
	sbc $00D5.w		; ED D5 00
	bit $1040.w		; 2C 40 10
	inx		; E8
	stz $2D00.w,X		; 9E 00 2D
	rti		; 40

	trb $FA.b		; 14 FA
	inc $E3.b,X		; F6 E3
	php		; 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	cmp ($08.b,S),Y		; D3 08
	cop $48.b		; 02 48
	dec $D812.w,X		; DE 12 D8
	php		; 08
	tsb $48.b		; 04 48
	dec $1A.b,X		; D6 1A
	clv		; B8
	php		; 08
	asl $48.b		; 06 48
	dec $1A.b,X		; D6 1A
	iny		; C8
	php		; 08
	php		; 08
	pha		; 48
	inc $C90A.w		; EE 0A C9
	brk $0A.b		; 00 0A
	rti		; 40

	inc $D10A.w		; EE 0A D1
	brk $0B.b		; 00 0B
	rti		; 40

	inc $D90A.w		; EE 0A D9
	brk $0C.b		; 00 0C
	rti		; 40

	inc $02.b,X		; F6 02
	wai		; CB
	brk $0D.b		; 00 0D
	rti		; 40

	inc $02.b,X		; F6 02
	sbc ($00.b,S),Y		; F3 00
	asl $0940.w		; 0E 40 09
	sbc $0F00F5.l		; EF F5 00 0F
	rti		; 40

	dec $CC2A.w		; CE 2A CC
	brk $1A.b		; 00 1A
	rti		; 40

	asl $F2.b		; 06 F2
	sbc $401B00.l		; EF 00 1B 40
	pea $F704.w		; F4 04 F7
	brk $1C.b		; 00 1C
	rti		; 40

	pea $FF04.w		; F4 04 FF
	brk $1D.b		; 00 1D
	rti		; 40

	sbc $03.b,X		; F5 03
	cmp $00.b,S		; C3 00
	asl $E640.w,X		; 1E 40 E6
	ora ($B8.b)		; 12 B8
	brk $1F.b		; 00 1F
	rti		; 40

	inc $12.b		; E6 12
	cpy #$00.b		; C0 00
	jsr $E640.w		; 20 40 E6
	ora ($C8.b)		; 12 C8
	brk $21.b		; 00 21
	rti		; 40

	inc $12.b		; E6 12
	bne   0.b		; D0 00
	jsl $061740.l		; 22 40 17 06
	nop		; EA
	cmp #$0008.w		; C9 08 00
	pha		; 48
	asl $EA.b		; 06 EA
	cmp $0208.w,Y		; D9 08 02
	pha		; 48
	ora $08B1E1.l		; 0F E1 B1 08
	tsb $48.b		; 04 48
	ora ($E7.b),Y		; 11 E7
	lda #$0600.w		; A9 00 06
	rti		; 40

	ora $F5.b,S		; 03 F5
	cpx $0700.w		; EC 00 07
	rti		; 40

	asl $E2.b,X		; 16 E2
	cmp $0800.w,Y		; D9 00 08
	rti		; 40

	asl $E2.b,X		; 16 E2
	sbc ($00.b,X)		; E1 00
	ora #$0640.w		; 09 40 06
	sbc ($E9.b)		; F2 E9
	brk $0A.b		; 00 0A
	rti		; 40

	asl $E9EA.w		; 0E EA E9
	brk $0B.b		; 00 0B
	rti		; 40

	asl $E2.b,X		; 16 E2
	sbc #$0C00.w		; E9 00 0C
	rti		; 40

	inc $CDFA.w,X		; FE FA CD
	brk $0D.b		; 00 0D
	rti		; 40

	inc $D5FA.w,X		; FE FA D5
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $00F1F9.l,X		; FF F9 F1 00
	ora $E90F40.l		; 0F 40 0F E9
	sbc ($00.b),Y		; F1 00
	asl $40.b,X		; 16 40
	ora $00F9E9.l		; 0F E9 F9 00
	ora [$40.b],Y		; 17 40
	ora [$E1.b],Y		; 17 E1
	sbc $1800.w,Y		; F9 00 18
	rti		; 40

	jsr ($F9FC.w,X)		; FC FC F9
	brk $19.b		; 00 19
	rti		; 40

	ora [$F1.b]		; 07 F1
	lda ($00.b),Y		; B1 00
	inc A		; 1A
	rti		; 40

	ora [$F1.b]		; 07 F1
	lda $1B00.w,Y		; B9 00 1B
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp ($00.b,X)		; C1 00
	trb $0F40.w		; 1C 40 0F
	sbc #$00C1.w		; E9 C1 00
	ora $FF40.w,X		; 1D 40 FF
	sbc $00BD.w,Y		; F9 BD 00
	asl $FF40.w,X		; 1E 40 FF
	sbc $00C5.w,Y		; F9 C5 00
	ora $010A40.l,X		; 1F 40 0A 01
	sbc $0008C2.l		; EF C2 08 00
	pha		; 48
	plx		; FA
	inc $F2.b,X		; F6 F2
	php		; 08
	cop $48.b		; 02 48
	asl A		; 0A
	inc $F2.b		; E6 F2
	php		; 08
	tsb $48.b		; 04 48
	sbc [$F9.b],Y		; F7 F9
	cmp ($08.b)		; D2 08
	asl $48.b		; 06 48
	sbc [$F9.b],Y		; F7 F9
	sep #$08		; E2 08
	php		; 08
	pha		; 48
	ora [$E9.b]		; 07 E9
	sep #$08		; E2 08
	asl A		; 0A
	pha		; 48
	sbc $CAFF.w,Y		; F9 FF CA
	brk $0C.b		; 00 0C
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp ($00.b)		; D2 00
	ora $0740.w		; 0D 40 07
	sbc ($DA.b),Y		; F1 DA
	brk $0E.b		; 00 0E
	rti		; 40

	ora $00DAE9.l		; 0F E9 DA 00
	ora $F81540.l		; 0F 40 15 F8
	sed		; F8
	cmp ($08.b),Y		; D1 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	sta $0208.w,X		; 9D 08 02
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp ($08.b,X)		; C1 08
	tsb $48.b		; 04 48
	sed		; F8
	brk $E1.b		; 00 E1
	brk $06.b		; 00 06
	rti		; 40

	brk $F8.b		; 00 F8
	sbc ($00.b,X)		; E1 00
	ora [$40.b]		; 07 40
	beq   8.b		; F0 08
	lda #$0800.w		; A9 00 08
	rti		; 40

	sed		; F8
	brk $AD.b		; 00 AD
	brk $09.b		; 00 09
	rti		; 40

	brk $F8.b		; 00 F8
	lda $0A00.w		; AD 00 0A
	rti		; 40

	sbc $F1FF.w,Y		; F9 FF F1
	brk $0B.b		; 00 0B
	rti		; 40

	sbc $F9FF.w,Y		; F9 FF F9
	brk $0C.b		; 00 0C
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc $0D00.w,Y		; F9 00 0D
	rti		; 40

	plx		; FA
	inc $00E9.w,X		; FE E9 00
	asl $F040.w		; 0E 40 F0
	php		; 08
	lda ($00.b,X)		; A1 00
	ora $F50340.l		; 0F 40 03 F5
	cmp ($00.b,X)		; C1 00
	asl $40.b,X		; 16 40
	ora $F5.b,S		; 03 F5
	cmp #$1700.w		; C9 00 17
	rti		; 40

	pea $B104.w		; F4 04 B1
	brk $18.b		; 00 18
	rti		; 40

	jsr ($B1FC.w,X)		; FC FC B1
	brk $19.b		; 00 19
	rti		; 40

	tsb $F4.b		; 04 F4
	lda $1A00.w		; AD 00 1A
	rti		; 40

	tsb $F4.b		; 04 F4
	lda $00.b,X		; B5 00
	tas		; 1B
	rti		; 40

	sbc [$01.b],Y		; F7 01
	lda $1C00.w,Y		; B9 00 1C
	rti		; 40

	sbc $00B9F9.l,X		; FF F9 B9 00
	ora $1040.w,X		; 1D 40 10
	sbc $C5F7.w,Y		; F9 F7 C5
	php		; 08
	brk $48.b		; 00 48
	plx		; FA
	inc $E5.b,X		; F6 E5
	php		; 08
	cop $48.b		; 02 48
	jsr ($D5F4.w,X)		; FC F4 D5
	php		; 08
	tsb $48.b		; 04 48
	ora ($E6.b)		; 12 E6
	sbc #$0600.w		; E9 00 06
	rti		; 40

	ora ($E6.b)		; 12 E6
	sbc ($00.b),Y		; F1 00
	ora [$40.b]		; 07 40
	ora ($E6.b)		; 12 E6
	sbc $0800.w,Y		; F9 00 08
	rti		; 40

	ora #$C5EF.w		; 09 EF C5
	brk $09.b		; 00 09
	rti		; 40

	asl A		; 0A
	inc $00E5.w		; EE E5 00
	asl A		; 0A
	rti		; 40

	asl A		; 0A
	inc $00ED.w		; EE ED 00
	phd		; 0B
	rti		; 40

	plx		; FA
	inc $00F5.w,X		; FE F5 00
	tsb $0240.w		; 0C 40 02
	inc $F5.b,X		; F6 F5
	brk $0D.b		; 00 0D
	rti		; 40

	asl A		; 0A
	inc $00F5.w		; EE F5 00
	asl $0940.w		; 0E 40 09
	sbc $0F00CD.l		; EF CD 00 0F
	rti		; 40

	tsb $D5EC.w		; 0C EC D5
	brk $16.b		; 00 16
	rti		; 40

	tsb $DDEC.w		; 0C EC DD
	brk $17.b		; 00 17
	rti		; 40

	ora $F3.b		; 05 F3
	sbc $1800.w,Y		; F9 00 18
	rti		; 40

	trb $00.b		; 14 00
	beq -85.b		; F0 AB
	php		; 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	stp		; DB
	php		; 08
	cop $48.b		; 02 48
	beq   0.b		; F0 00
	cmp $08.b,S		; C3 08
	tsb $48.b		; 04 48
	brk $F0.b		; 00 F0
	cmp $08.b,S		; C3 08
	asl $48.b		; 06 48
	brk $F8.b		; 00 F8
	xce		; FB
	brk $08.b		; 00 08
	rti		; 40

	php		; 08
	beq  -5.b		; F0 FB
	brk $09.b		; 00 09
	rti		; 40

	brk $F8.b		; 00 F8
	sbc ($00.b,S),Y		; F3 00
	asl A		; 0A
	rti		; 40

	bpl -24.b		; 10 E8
	plb		; AB
	brk $0B.b		; 00 0B
	rti		; 40

	bpl -24.b		; 10 E8
	lda ($00.b,S),Y		; B3 00
	tsb $F840.w		; 0C 40 F8
	brk $D3.b		; 00 D3
	brk $0D.b		; 00 0D
	rti		; 40

	brk $F8.b		; 00 F8
	cmp ($00.b,S),Y		; D3 00
	asl $0840.w		; 0E 40 08
	beq -45.b		; F0 D3
	brk $0F.b		; 00 0F
	rti		; 40

	sed		; F8
	brk $F5.b		; 00 F5
	brk $18.b		; 00 18
	rti		; 40

	sbc $BBFF.w,Y		; F9 FF BB
	brk $19.b		; 00 19
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	tyx		; BB
	brk $1A.b		; 00 1A
	rti		; 40

	ora #$BBEF.w		; 09 EF BB
	brk $1B.b		; 00 1B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	xba		; EB
	brk $1C.b		; 00 1C
	rti		; 40

	sbc $E5FF.w,Y		; F9 FF E5
	brk $1D.b		; 00 1D
	rti		; 40

	sbc $EDFF.w,Y		; F9 FF ED
	brk $1E.b		; 00 1E
	rti		; 40

	inc $02.b,X		; F6 02
	sbc $1F00.w,X		; FD 00 1F
	rti		; 40

	ora ($F8.b,S),Y		; 13 F8
	sed		; F8
	sbc $0008.w		; ED 08 00
	pha		; 48
	brk $F0.b		; 00 F0
	cmp [$08.b],Y		; D7 08
	cop $48.b		; 02 48
	brk $F0.b		; 00 F0
	cmp [$08.b]		; C7 08
	tsb $48.b		; 04 48
	brk $F0.b		; 00 F0
	lda $480608.l		; AF 08 06 48
	brk $F8.b		; 00 F8
	sbc $0800.w,X		; FD 00 08
	rti		; 40

	php		; 08
	beq  -3.b		; F0 FD
	brk $09.b		; 00 09
	rti		; 40

	sed		; F8
	brk $C2.b		; 00 C2
	brk $0A.b		; 00 0A
	rti		; 40

	sed		; F8
	brk $CA.b		; 00 CA
	brk $0B.b		; 00 0B
	rti		; 40

	sed		; F8
	brk $D2.b		; 00 D2
	brk $0C.b		; 00 0C
	rti		; 40

	beq   8.b		; F0 08
	wai		; CB
	brk $0D.b		; 00 0D
	rti		; 40

	bpl -24.b		; 10 E8
	lda $400E00.l		; AF 00 0E 40
	bpl -24.b		; 10 E8
	lda [$00.b],Y		; B7 00
	ora $F80040.l		; 0F 40 00 F8
	lda $401800.l,X		; BF 00 18 40
	php		; 08
	beq -65.b		; F0 BF
	brk $19.b		; 00 19
	rti		; 40

	bpl -24.b		; 10 E8
	lda $401A00.l,X		; BF 00 1A 40
	bpl -24.b		; 10 E8
	cmp [$00.b]		; C7 00
	tas		; 1B
	rti		; 40

	sbc $E5FB.w,X		; FD FB E5
	brk $1C.b		; 00 1C
	rti		; 40

	ora $F3.b		; 05 F3
	sbc $00.b		; E5 00
	ora $F640.w,X		; 1D 40 F6
	cop $FD.b		; 02 FD
	brk $1E.b		; 00 1E
	rti		; 40

	ora ($F8.b,S),Y		; 13 F8
	sed		; F8
	cmp ($08.b),Y		; D1 08
	brk $48.b		; 00 48
	sbc ($FE.b)		; F2 FE
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	sbc [$F9.b],Y		; F7 F9
	sta $0408.w,Y		; 99 08 04
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	lda #$0608.w		; A9 08 06
	pha		; 48
	brk $F8.b		; 00 F8
	sbc ($00.b,X)		; E1 00
	php		; 08
	rti		; 40

	sbc $F1FF.w,Y		; F9 FF F1
	brk $09.b		; 00 09
	rti		; 40

	plx		; FA
	inc $00E9.w,X		; FE E9 00
	asl A		; 0A
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $0B00.w,Y		; F9 00 0B
	rti		; 40

	cop $F6.b		; 02 F6
	cmp ($00.b,X)		; C1 00
	tsb $0240.w		; 0C 40 02
	inc $C9.b,X		; F6 C9
	brk $0D.b		; 00 0D
	rti		; 40

	sed		; F8
	brk $F9.b		; 00 F9
	brk $0E.b		; 00 0E
	rti		; 40

	sed		; F8
	brk $E1.b		; 00 E1
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $00A109.l		; EF 09 A1 00
	clc		; 18
	rti		; 40

	sbc $00A909.l		; EF 09 A9 00
	ora $EF40.w,Y		; 19 40 EF
	ora #$00B1.w		; 09 B1 00
	inc A		; 1A
	rti		; 40

	sbc $00B909.l		; EF 09 B9 00
	tas		; 1B
	rti		; 40

	sbc [$01.b],Y		; F7 01
	lda $1C00.w,Y		; B9 00 1C
	rti		; 40

	sbc $00B9F9.l,X		; FF F9 B9 00
	ora $0740.w,X		; 1D 40 07
	sbc ($BB.b),Y		; F1 BB
	brk $1E.b		; 00 1E
	rti		; 40

	ora ($F8.b,S),Y		; 13 F8
	sed		; F8
	txs		; 9A
	php		; 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	tax		; AA
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $D2.b,X		; F6 D2
	php		; 08
	tsb $48.b		; 04 48
	pea $C2FC.w		; F4 FC C2
	php		; 08
	asl $48.b		; 06 48
	beq   8.b		; F0 08
	tax		; AA
	brk $08.b		; 00 08
	rti		; 40

	beq   8.b		; F0 08
	lda ($00.b)		; B2 00
	ora #$F040.w		; 09 40 F0
	php		; 08
	tsx		; BA
	brk $0A.b		; 00 0A
	rti		; 40

	sed		; F8
	brk $BA.b		; 00 BA
	brk $0B.b		; 00 0B
	rti		; 40

	brk $F8.b		; 00 F8
	tsx		; BA
	brk $0C.b		; 00 0C
	rti		; 40

	plx		; FA
	inc $00EA.w,X		; FE EA 00
	ora $FA40.w		; 0D 40 FA
	inc $00F2.w,X		; FE F2 00
	asl $FA40.w		; 0E 40 FA
	inc $00FA.w,X		; FE FA 00
	ora $F60240.l		; 0F 40 02 F6
	plx		; FA
	brk $18.b		; 00 18
	rti		; 40

	php		; 08
	beq -70.b		; F0 BA
	brk $19.b		; 00 19
	rti		; 40

	plx		; FA
	inc $00E2.w,X		; FE E2 00
	inc A		; 1A
	rti		; 40

	cop $F6.b		; 02 F6
	sep #$00		; E2 00
	tas		; 1B
	rti		; 40

	beq   8.b		; F0 08
	ldx #$00.b		; A2 00
	trb $0440.w		; 1C 40 04
	pea $00C2.w		; F4 C2 00
	ora $0440.w,X		; 1D 40 04
	pea $00CA.w		; F4 CA 00
	asl $0F40.w,X		; 1E 40 0F
	sed		; F8
	sed		; F8
	lda ($08.b,X)		; A1 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	lda ($08.b),Y		; B1 08
	cop $48.b		; 02 48
	sed		; F8
	sed		; F8
	cmp ($08.b),Y		; D1 08
	tsb $48.b		; 04 48
	sed		; F8
	sed		; F8
	sbc ($08.b,X)		; E1 08
	asl $48.b		; 06 48
	inc $FA.b,X		; F6 FA
	cmp ($08.b,X)		; C1 08
	php		; 08
	pha		; 48
	sed		; F8
	brk $F1.b		; 00 F1
	brk $0A.b		; 00 0A
	rti		; 40

	sed		; F8
	brk $F9.b		; 00 F9
	brk $0B.b		; 00 0B
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $0C00.w,Y		; F9 00 0C
	rti		; 40

	beq   8.b		; F0 08
	lda $00.b,S		; A3 00
	ora $F040.w		; 0D 40 F0
	php		; 08
	plb		; AB
	brk $0E.b		; 00 0E
	rti		; 40

	beq   8.b		; F0 08
	lda ($00.b,S),Y		; B3 00
	ora $08F040.l		; 0F 40 F0 08
	tyx		; BB
	brk $1A.b		; 00 1A
	rti		; 40

	php		; 08
	beq -71.b		; F0 B9
	brk $1B.b		; 00 1B
	rti		; 40

	asl $F2.b		; 06 F2
	cmp ($00.b,X)		; C1 00
	trb $0640.w		; 1C 40 06
	sbc ($C9.b)		; F2 C9
	brk $1D.b		; 00 1D
	rti		; 40

	ora ($F8.b)		; 12 F8
	sed		; F8
	lda ($08.b),Y		; B1 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	lda ($08.b,X)		; A1 08
	cop $48.b		; 02 48
	beq   8.b		; F0 08
	lda ($00.b),Y		; B1 00
	tsb $40.b		; 04 40
	sed		; F8
	brk $99.b		; 00 99
	brk $05.b		; 00 05
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp ($00.b,X)		; C1 00
	asl $40.b		; 06 40
	plx		; FA
	inc $00C1.w,X		; FE C1 00
	ora [$40.b]		; 07 40
	cop $F6.b		; 02 F6
	cmp ($00.b,X)		; C1 00
	php		; 08
	rti		; 40

	brk $F8.b		; 00 F8
	sta $0900.w,Y		; 99 00 09
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda ($00.b,X)		; A1 00
	asl A		; 0A
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda #$0B00.w		; A9 00 0B
	rti		; 40

	phd		; 0B
	sbc $00A6.w		; ED A6 00
	tsb $F840.w		; 0C 40 F8
	sed		; F8
	cmp #$1408.w		; C9 08 14
	pha		; 48
	sed		; F8
	sed		; F8
	cmp $1608.w,Y		; D9 08 16
	pha		; 48
	sed		; F8
	brk $F9.b		; 00 F9
	brk $18.b		; 00 18
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $1900.w,Y		; F9 00 19
	rti		; 40

	php		; 08
	beq -55.b		; F0 C9
	brk $1A.b		; 00 1A
	rti		; 40

	sed		; F8
	brk $F1.b		; 00 F1
	brk $1B.b		; 00 1B
	rti		; 40

	plx		; FA
	inc $00E9.w,X		; FE E9 00
	trb $1240.w		; 1C 40 12
	beq   0.b		; F0 00
	sta $0008.w,Y		; 99 08 00
	pha		; 48
	brk $F0.b		; 00 F0
	sta $0208.w,Y		; 99 08 02
	pha		; 48
	pea $A9FC.w		; F4 FC A9
	php		; 08
	tsb $48.b		; 04 48
	brk $F8.b		; 00 F8
	lda $0600.w,Y		; B9 00 06
	rti		; 40

	cpx $A90C.w		; EC 0C A9
	brk $07.b		; 00 07
	rti		; 40

	pea $C104.w		; F4 04 C1
	brk $08.b		; 00 08
	rti		; 40

	jsr ($C1FC.w,X)		; FC FC C1
	brk $09.b		; 00 09
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b,X)		; C1 00
	asl A		; 0A
	rti		; 40

	sed		; F8
	brk $B9.b		; 00 B9
	brk $0B.b		; 00 0B
	rti		; 40

	tsb $F4.b		; 04 F4
	lda #$0C00.w		; A9 00 0C
	rti		; 40

	tsb $F4.b		; 04 F4
	lda ($00.b),Y		; B1 00
	ora $F840.w		; 0D 40 F8
	sed		; F8
	cmp #$1608.w		; C9 08 16
	pha		; 48
	sed		; F8
	sed		; F8
	cmp $1808.w,Y		; D9 08 18
	pha		; 48
	sed		; F8
	brk $F9.b		; 00 F9
	brk $1A.b		; 00 1A
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $1B00.w,Y		; F9 00 1B
	rti		; 40

	php		; 08
	beq -55.b		; F0 C9
	brk $1C.b		; 00 1C
	rti		; 40

	sed		; F8
	brk $F1.b		; 00 F1
	brk $1D.b		; 00 1D
	rti		; 40

	plx		; FA
	inc $00E9.w,X		; FE E9 00
	asl $1040.w,X		; 1E 40 10
	sbc #$A107.w		; E9 07 A1
	php		; 08
	brk $48.b		; 00 48
	sbc $99F7.w,Y		; F9 F7 99
	php		; 08
	cop $48.b		; 02 48
	sbc $A9F7.w,Y		; F9 F7 A9
	php		; 08
	tsb $48.b		; 04 48
	sbc [$F9.b],Y		; F7 F9
	lda $0608.w,Y		; B9 08 06
	pha		; 48
	ora #$A1EF.w		; 09 EF A1
	brk $08.b		; 00 08
	rti		; 40

	ora #$A9EF.w		; 09 EF A9
	brk $09.b		; 00 09
	rti		; 40

	sbc ($07.b),Y		; F1 07
	lda ($00.b),Y		; B1 00
	asl A		; 0A
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp ($00.b,X)		; C1 00
	phd		; 0B
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sta $0C00.w,Y		; 99 00 0C
	rti		; 40

	sed		; F8
	sed		; F8
	cmp #$1808.w		; C9 08 18
	pha		; 48
	sed		; F8
	sed		; F8
	cmp $1A08.w,Y		; D9 08 1A
	pha		; 48
	sed		; F8
	brk $F9.b		; 00 F9
	brk $1C.b		; 00 1C
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $1D00.w,Y		; F9 00 1D
	rti		; 40

	php		; 08
	beq -55.b		; F0 C9
	brk $1E.b		; 00 1E
	rti		; 40

	sed		; F8
	brk $F1.b		; 00 F1
	brk $1F.b		; 00 1F
	rti		; 40

	plx		; FA
	inc $00E9.w,X		; FE E9 00
	jsr $1540.w		; 20 40 15
	beq   0.b		; F0 00
	lda ($08.b),Y		; B1 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	lda ($08.b),Y		; B1 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	lda ($08.b,X)		; A1 08
	tsb $48.b		; 04 48
	sed		; F8
	brk $99.b		; 00 99
	brk $06.b		; 00 06
	rti		; 40

	brk $F8.b		; 00 F8
	sta $0700.w,Y		; 99 00 07
	rti		; 40

	bpl -24.b		; 10 E8
	lda ($00.b),Y		; B1 00
	php		; 08
	rti		; 40

	bpl -24.b		; 10 E8
	lda $0900.w,Y		; B9 00 09
	rti		; 40

	inx		; E8
	bpl -63.b		; 10 C1
	brk $0A.b		; 00 0A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda ($00.b,X)		; A1 00
	phd		; 0B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda #$0C00.w		; A9 00 0C
	rti		; 40

	xba		; EB
	ora $00BB.w		; 0D BB 00
	ora $F540.w		; 0D 40 F5
	ora $C1.b,S		; 03 C1
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $C1FB.w,X		; FD FB C1
	brk $0F.b		; 00 0F
	rti		; 40

	ora $F3.b		; 05 F3
	cmp ($00.b,X)		; C1 00
	asl $40.b,X		; 16 40
	sed		; F8
	sed		; F8
	cmp #$1708.w		; C9 08 17
	pha		; 48
	sed		; F8
	sed		; F8
	cmp $1908.w,Y		; D9 08 19
	pha		; 48
	sed		; F8
	brk $F9.b		; 00 F9
	brk $1B.b		; 00 1B
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $1C00.w,Y		; F9 00 1C
	rti		; 40

	php		; 08
	beq -55.b		; F0 C9
	brk $1D.b		; 00 1D
	rti		; 40

	sed		; F8
	brk $F1.b		; 00 F1
	brk $1E.b		; 00 1E
	rti		; 40

	plx		; FA
	inc $00E9.w,X		; FE E9 00
	ora $F11840.l,X		; 1F 40 18 F1
	sbc $0008A1.l,X		; FF A1 08 00
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	sbc ($FD.b,S),Y		; F3 FD
	lda ($08.b),Y		; B1 08
	tsb $48.b		; 04 48
	xce		; FB
	sbc $D1.b,X		; F5 D1
	php		; 08
	asl $48.b		; 06 48
	xba		; EB
	ora $E9.b		; 05 E9
	php		; 08
	php		; 08
	pha		; 48
	ora ($F7.b,X)		; 01 F7
	cmp ($00.b,X)		; C1 00
	asl A		; 0A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp #$0B00.w		; C9 00 0B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sta $0C00.w,Y		; 99 00 0C
	rti		; 40

	xce		; FB
	sbc $0099.w,X		; FD 99 00
	ora $0340.w		; 0D 40 03
	sbc $E1.b,X		; F5 E1
	brk $0E.b		; 00 0E
	rti		; 40

	xba		; EB
	ora $00F9.w		; 0D F9 00
	ora $F50340.l		; 0F 40 03 F5
	sbc $1A00.w,Y		; F9 00 1A
	rti		; 40

	phd		; 0B
	sbc $00F9.w		; ED F9 00
	tas		; 1B
	rti		; 40

	ora #$C1EF.w		; 09 EF C1
	brk $1C.b		; 00 1C
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda ($00.b,X)		; A1 00
	ora $0140.w,X		; 1D 40 01
	sbc [$A9.b],Y		; F7 A9
	brk $1E.b		; 00 1E
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda ($00.b),Y		; B1 00
	ora $F50340.l,X		; 1F 40 03 F5
	lda $2000.w,Y		; B9 00 20
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp ($00.b),Y		; D1 00
	and ($40.b,X)		; 21 40
	sbc ($05.b,S),Y		; F3 05
	cmp $2200.w,Y		; D9 00 22
	rti		; 40

	xba		; EB
	ora $00E1.w		; 0D E1 00
	and $40.b,S		; 23 40
	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	bit $40.b		; 24 40
	ora $F3.b		; 05 F3
	sbc #$2500.w		; E9 00 25
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b),Y		; F1 00
	rol $40.b		; 26 40
	ora ($F0.b)		; 12 F0
	brk $A1.b		; 00 A1
	php		; 08
	brk $48.b		; 00 48
	xce		; FB
	sbc $C9.b,X		; F5 C9
	php		; 08
	cop $48.b		; 02 48
	sbc ($FD.b,S),Y		; F3 FD
	sbc #$0408.w		; E9 08 04
	pha		; 48
	pea $D9FC.w		; F4 FC D9
	php		; 08
	asl $48.b		; 06 48
	inc $B902.w		; EE 02 B9
	php		; 08
	php		; 08
	pha		; 48
	inc $B9F2.w,X		; FE F2 B9
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc ($05.b,S),Y		; F3 05
	cmp #$0C00.w		; C9 00 0C
	rti		; 40

	brk $F8.b		; 00 F8
	lda ($00.b,X)		; A1 00
	ora $0040.w		; 0D 40 00
	sed		; F8
	lda #$0E00.w		; A9 00 0E
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp $0F00.w,Y		; D9 00 0F
	rti		; 40

	beq   8.b		; F0 08
	lda ($00.b),Y		; B1 00
	trb $F640.w		; 1C 40 F6
	cop $99.b		; 02 99
	brk $1D.b		; 00 1D
	rti		; 40

	inc $99FA.w,X		; FE FA 99
	brk $1E.b		; 00 1E
	rti		; 40

	asl $B9EA.w		; 0E EA B9
	brk $1F.b		; 00 1F
	rti		; 40

	sed		; F8
	brk $B1.b		; 00 B1
	brk $20.b		; 00 20
	rti		; 40

	brk $F8.b		; 00 F8
	lda ($00.b),Y		; B1 00
	and ($40.b,X)		; 21 40
	sbc [$01.b],Y		; F7 01
	sbc $2200.w,Y		; F9 00 22
	rti		; 40

	sbc $00F9F9.l,X		; FF F9 F9 00
	and $40.b,S		; 23 40
	ora $FDF3.w,X		; 1D F3 FD
	cmp ($08.b,X)		; C1 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp ($08.b),Y		; D1 08
	cop $48.b		; 02 48
	cpx $B104.w		; EC 04 B1
	php		; 08
	tsb $48.b		; 04 48
	jsr ($B1F4.w,X)		; FC F4 B1
	php		; 08
	asl $48.b		; 06 48
	sbc [$F9.b],Y		; F7 F9
	sta $0808.w,Y		; 99 08 08
	pha		; 48
	ora $F5.b,S		; 03 F5
	sbc $0A00.w,Y		; F9 00 0A
	rti		; 40

	phd		; 0B
	sbc $00F9.w		; ED F9 00
	phd		; 0B
	rti		; 40

	nop		; EA
	asl $00E9.w		; 0E E9 00
	tsb $F240.w		; 0C 40 F2
	asl $E9.b		; 06 E9
	brk $0D.b		; 00 0D
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp ($00.b,X)		; C1 00
	asl $0340.w		; 0E 40 03
	sbc $C9.b,X		; F5 C9
	brk $0F.b		; 00 0F
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp ($00.b),Y		; D1 00
	inc A		; 1A
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp $1B00.w,Y		; D9 00 1B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,X)		; E1 00
	trb $FB40.w		; 1C 40 FB
	sbc $00E1.w,X		; FD E1 00
	ora $0340.w,X		; 1D 40 03
	sbc $E1.b,X		; F5 E1
	brk $1E.b		; 00 1E
	rti		; 40

	cop $F6.b		; 02 F6
	sbc #$1F00.w		; E9 00 1F
	rti		; 40

	xba		; EB
	ora $00C1.w		; 0D C1 00
	jsr $0C40.w		; 20 40 0C
	cpx $00B1.w		; EC B1 00
	and ($40.b,X)		; 21 40
	tsb $B9EC.w		; 0C EC B9
	brk $22.b		; 00 22
	rti		; 40

	trb $E4.b		; 14 E4
	ldy $00.b,X		; B4 00
	and $40.b,S		; 23 40
	inc $F10A.w		; EE 0A F1
	brk $24.b		; 00 24
	rti		; 40

	inc $F90A.w		; EE 0A F9
	brk $25.b		; 00 25
	rti		; 40

	inc $02.b,X		; F6 02
	sbc $2600.w,Y		; F9 00 26
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b),Y		; F1 00
	and [$40.b]		; 27 40
	sbc $00A109.l		; EF 09 A1 00
	plp		; 28
	rti		; 40

	sbc $00A909.l		; EF 09 A9 00
	and #$F740.w		; 29 40 F7
	ora ($A9.b,X)		; 01 A9
	brk $2A.b		; 00 2A
	rti		; 40

	sbc $00A9F9.l,X		; FF F9 A9 00
	pld		; 2B
	rti		; 40

	ora $99F8F8.l		; 0F F8 F8 99
	php		; 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	lda #$0208.w		; A9 08 02
	pha		; 48
	pea $D9FC.w		; F4 FC D9
	php		; 08
	tsb $48.b		; 04 48
	inc $FA.b,X		; F6 FA
	cmp #$0608.w		; C9 08 06
	pha		; 48
	sbc $08B901.l		; EF 01 B9 08
	php		; 08
	pha		; 48
	sbc $08B9F1.l,X		; FF F1 B9 08
	asl A		; 0A
	pha		; 48
	sbc ($05.b,S),Y		; F3 05
	sbc $0C00.w,Y		; F9 00 0C
	rti		; 40

	xce		; FB
	sbc $00F9.w,X		; FD F9 00
	ora $F440.w		; 0D 40 F4
	tsb $E9.b		; 04 E9
	brk $0E.b		; 00 0E
	rti		; 40

	beq   8.b		; F0 08
	lda ($00.b,X)		; A1 00
	ora $F40440.l		; 0F 40 04 F4
	cld		; D8
	brk $1C.b		; 00 1C
	rti		; 40

	beq   8.b		; F0 08
	lda #$1D00.w		; A9 00 1D
	rti		; 40

	ora $00B9E9.l		; 0F E9 B9 00
	asl $F040.w,X		; 1E 40 F0
	php		; 08
	lda ($00.b),Y		; B1 00
	ora $05F340.l,X		; 1F 40 F3 05
	sbc ($00.b),Y		; F1 00
	jsr $1140.w		; 20 40 11
	sbc ($FE.b)		; F2 FE
	sta $480008.l,X		; 9F 08 00 48
	pea $B5FC.w		; F4 FC B5
	php		; 08
	cop $48.b		; 02 48
	pea $C5FC.w		; F4 FC C5
	php		; 08
	tsb $48.b		; 04 48
	pea $D5FC.w		; F4 FC D5
	php		; 08
	asl $48.b		; 06 48
	nop		; EA
	asl $00A2.w		; 0E A2 00
	php		; 08
	rti		; 40

	cop $F6.b		; 02 F6
	sta $400900.l,X		; 9F 00 09 40
	cop $F6.b		; 02 F6
	lda [$00.b]		; A7 00
	asl A		; 0A
	rti		; 40

	sbc ($06.b)		; F2 06
	lda $400B00.l		; AF 00 0B 40
	plx		; FA
	inc $00AF.w,X		; FE AF 00
	tsb $0240.w		; 0C 40 02
	inc $AF.b,X		; F6 AF
	brk $0D.b		; 00 0D
	rti		; 40

	cpx $B20C.w		; EC 0C B2
	brk $0E.b		; 00 0E
	rti		; 40

	cpx $BA0C.w		; EC 0C BA
	brk $0F.b		; 00 0F
	rti		; 40

	cpx $C20C.w		; EC 0C C2
	brk $18.b		; 00 18
	rti		; 40

	pea $E504.w		; F4 04 E5
	brk $19.b		; 00 19
	rti		; 40

	sbc ($06.b)		; F2 06
	xba		; EB
	brk $1A.b		; 00 1A
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc ($00.b,S),Y		; F3 00
	tas		; 1B
	rti		; 40

	plx		; FA
	inc $00F3.w,X		; FE F3 00
	trb $1240.w		; 1C 40 12
	trb $DC.b		; 14 DC
	lda ($08.b),Y		; B1 08
	brk $48.b		; 00 48
	tsb $EC.b		; 04 EC
	plb		; AB
	php		; 08
	cop $48.b		; 02 48
	pea $ADFC.w		; F4 FC AD
	php		; 08
	tsb $48.b		; 04 48
	pea $BDFC.w		; F4 FC BD
	php		; 08
	asl $48.b		; 06 48
	pei ($1C.b)		; D4 1C
	dec $08.b,X		; D6 08
	php		; 08
	pha		; 48
	trb $C1DC.w		; 1C DC C1
	brk $0A.b		; 00 0A
	rti		; 40

	cpx $BA0C.w		; EC 0C BA
	brk $0B.b		; 00 0B
	rti		; 40

	cpx $C20C.w		; EC 0C C2
	brk $0C.b		; 00 0C
	rti		; 40

	cpx $CA0C.w		; EC 0C CA
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp $00.b,S		; C3 00
	asl $E440.w		; 0E 40 E4
	trb $C9.b		; 14 C9
	brk $0F.b		; 00 0F
	rti		; 40

	tsb $F4.b		; 04 F4
	tyx		; BB
	brk $1A.b		; 00 1A
	rti		; 40

	tsb $BBEC.w		; 0C EC BB
	brk $1B.b		; 00 1B
	rti		; 40

	cpx $14.b		; E4 14
	cmp ($00.b),Y		; D1 00
	trb $1440.w		; 1C 40 14
	cpx $A9.b		; E4 A9
	brk $1D.b		; 00 1D
	rti		; 40

	jmp.w [$CE1C]		; DC 1C CE
	brk $1E.b		; 00 1E
	rti		; 40

	pei ($24.b)		; D4 24
	inc $00.b		; E6 00
	ora $E41440.l,X		; 1F 40 14 E4
	cmp ($00.b,X)		; C1 00
	jsr $1140.w		; 20 40 11
	sed		; F8
	sed		; F8
	plb		; AB
	php		; 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	wai		; CB
	php		; 08
	cop $48.b		; 02 48
	sbc ($FE.b)		; F2 FE
	txy		; 9B
	php		; 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $BB.b,X		; F6 BB
	php		; 08
	asl $48.b		; 06 48
	inc $FA.b,X		; F6 FA
	stp		; DB
	php		; 08
	php		; 08
	pha		; 48
	php		; 08
	beq -45.b		; F0 D3
	brk $0A.b		; 00 0A
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sta ($00.b,S),Y		; 93 00
	phd		; 0B
	rti		; 40

	ora ($E6.b)		; 12 E6
	cmp $00.b,S		; C3 00
	tsb $0840.w		; 0C 40 08
	beq -77.b		; F0 B3
	brk $0D.b		; 00 0D
	rti		; 40

	bpl -24.b		; 10 E8
	wai		; CB
	brk $0E.b		; 00 0E
	rti		; 40

	asl A		; 0A
	inc $00BB.w		; EE BB 00
	ora $EE0A40.l		; 0F 40 0A EE
	cmp $00.b,S		; C3 00
	inc A		; 1A
	rti		; 40

	xba		; EB
	ora $0089.w		; 0D 89 00
	tas		; 1B
	rti		; 40

	php		; 08
	beq -53.b		; F0 CB
	brk $1C.b		; 00 1C
	rti		; 40

	asl $F2.b		; 06 F2
	stp		; DB
	brk $1D.b		; 00 1D
	rti		; 40

	asl $F2.b		; 06 F2
	sbc $00.b,S		; E3 00
	asl $EF40.w,X		; 1E 40 EF
	ora #$008B.w		; 09 8B 00
	ora $021740.l,X		; 1F 40 17 02
	inc $08AB.w		; EE AB 08
	brk $48.b		; 00 48
	ora ($DE.b)		; 12 DE
	lda [$08.b]		; A7 08
	cop $48.b		; 02 48
	inc $0A.b		; E6 0A
	cmp ($08.b,S),Y		; D3 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $00CB.w,X		; FE CB 00
	asl $40.b		; 06 40
	sbc ($06.b)		; F2 06
	tyx		; BB
	brk $07.b		; 00 07
	rti		; 40

	plx		; FA
	inc $00B3.w,X		; FE B3 00
	php		; 08
	rti		; 40

	plx		; FA
	inc $00BB.w,X		; FE BB 00
	ora #$0240.w		; 09 40 02
	inc $BB.b,X		; F6 BB
	brk $0A.b		; 00 0A
	rti		; 40

	asl A		; 0A
	inc $00BB.w		; EE BB 00
	phd		; 0B
	rti		; 40

	rol A		; 2A
	dec $00A6.w		; CE A6 00
	tsb $3240.w		; 0C 40 32
	dec $A6.b		; C6 A6
	brk $0D.b		; 00 0D
	rti		; 40

	ora ($E6.b)		; 12 E6
	lda [$00.b],Y		; B7 00
	asl $EA40.w		; 0E 40 EA
	asl $00CB.w		; 0E CB 00
	ora $D62240.l		; 0F 40 22 D6
	lda [$00.b]		; A7 00
	asl $40.b,X		; 16 40
	jsl $00AFD6.l		; 22 D6 AF 00
	ora [$40.b],Y		; 17 40
	sbc $C30B.w		; ED 0B C3
	brk $18.b		; 00 18
	rti		; 40

	sbc $03.b,X		; F5 03
	cmp $00.b,S		; C3 00
	ora $FD40.w,Y		; 19 40 FD
	xce		; FB
	cmp $00.b,S		; C3 00
	inc A		; 1A
	rti		; 40

	ora $F3.b		; 05 F3
	cmp $00.b,S		; C3 00
	tas		; 1B
	rti		; 40

	inc $DBFA.w,X		; FE FA DB
	brk $1C.b		; 00 1C
	rti		; 40

	sbc ($06.b)		; F2 06
	wai		; CB
	brk $1D.b		; 00 1D
	rti		; 40

	inc $02.b,X		; F6 02
	cmp ($00.b,S),Y		; D3 00
	asl $F640.w,X		; 1E 40 F6
	cop $DB.b		; 02 DB
	brk $1F.b		; 00 1F
	rti		; 40

	ora $15DB.w,Y		; 19 DB 15
	lda ($08.b,X)		; A1 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	bcs   8.b		; B0 08
	cop $48.b		; 02 48
	stp		; DB
	ora $00B1.w,X		; 1D B1 00
	tsb $40.b		; 04 40
	sbc $15.b,S		; E3 15
	lda ($00.b),Y		; B1 00
	ora $40.b		; 05 40
	phd		; 0B
	sbc $00BD.w		; ED BD 00
	asl $40.b		; 06 40
	phd		; 0B
	sbc $00C5.w		; ED C5 00
	ora [$40.b]		; 07 40
	xba		; EB
	ora $00A6.w		; 0D A6 00
	php		; 08
	rti		; 40

	xba		; EB
	ora $00AE.w		; 0D AE 00
	ora #$EB40.w		; 09 40 EB
	ora $00B6.w		; 0D B6 00
	asl A		; 0A
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	tay		; A8
	brk $0B.b		; 00 0B
	rti		; 40

	stp		; DB
	ora $00B9.w,X		; 1D B9 00
	tsb $0340.w		; 0C 40 03
	sbc $B0.b,X		; F5 B0
	brk $0D.b		; 00 0D
	rti		; 40

	ora $F5.b,S		; 03 F5
	clv		; B8
	brk $0E.b		; 00 0E
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cpy #$00.b		; C0 00
	ora $FDFB40.l		; 0F 40 FB FD
	cpy #$00.b		; C0 00
	trb $40.b		; 14 40
	ora $F5.b,S		; 03 F5
	cpy #$00.b		; C0 00
	ora $40.b,X		; 15 40
	asl $CDEA.w		; 0E EA CD
	brk $16.b		; 00 16
	rti		; 40

	asl $D5EA.w		; 0E EA D5
	brk $17.b		; 00 17
	rti		; 40

	asl $DDEA.w		; 0E EA DD
	brk $18.b		; 00 18
	rti		; 40

	inc $C8FA.w,X		; FE FA C8
	brk $19.b		; 00 19
	rti		; 40

	asl $F2.b		; 06 F2
	iny		; C8
	brk $1A.b		; 00 1A
	rti		; 40

	asl $F2.b		; 06 F2
	bne   0.b		; D0 00
	tas		; 1B
	rti		; 40

	asl $F2.b		; 06 F2
	cld		; D8
	brk $1C.b		; 00 1C
	rti		; 40

	ora $00E5E9.l		; 0F E9 E5 00
	ora $0F40.w,X		; 1D 40 0F
	sbc #$00ED.w		; E9 ED 00
	asl $1440.w,X		; 1E 40 14
	sbc ($FF.b),Y		; F1 FF
	sta $0008.w,X		; 9D 08 00
	pha		; 48
	sbc #$BD07.w		; E9 07 BD
	php		; 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	lda $0408.w		; AD 08 04
	pha		; 48
	sbc $BDF7.w,Y		; F9 F7 BD
	php		; 08
	asl $48.b		; 06 48
	sbc $CDF7.w,Y		; F9 F7 CD
	php		; 08
	php		; 08
	pha		; 48
	ora ($F7.b,X)		; 01 F7
	sta $0A00.w,X		; 9D 00 0A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda $00.b		; A5 00
	phd		; 0B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda $0C00.w		; AD 00 0C
	rti		; 40

	sbc #$B50F.w		; E9 0F B5
	brk $0D.b		; 00 0D
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda $00.b,X		; B5 00
	asl $0940.w		; 0E 40 09
	sbc $0F00C5.l		; EF C5 00 0F
	rti		; 40

	ora #$CDEF.w		; 09 EF CD
	brk $1A.b		; 00 1A
	rti		; 40

	ora #$D5EF.w		; 09 EF D5
	brk $1B.b		; 00 1B
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	dec $1C00.w		; CE 00 1C
	rti		; 40

	inc $02.b,X		; F6 02
	cmp $1D00.w,X		; DD 00 1D
	rti		; 40

	inc $DDFA.w,X		; FE FA DD
	brk $1E.b		; 00 1E
	rti		; 40

	inc $02.b,X		; F6 02
	sbc $00.b		; E5 00
	ora $02F640.l,X		; 1F 40 F6 02
	sbc $2000.w		; ED 00 20
	rti		; 40

	inc $02.b,X		; F6 02
	sbc $00.b,X		; F5 00
	and ($40.b,X)		; 21 40
	inc $02.b,X		; F6 02
	sbc $2200.w,X		; FD 00 22
	rti		; 40

	ora ($FF.b)		; 12 FF
	sbc ($A2.b),Y		; F1 A2
	php		; 08
	brk $48.b		; 00 48
	sbc [$F9.b],Y		; F7 F9
	lda ($08.b)		; B2 08
	cop $48.b		; 02 48
	sbc [$F9.b],Y		; F7 F9
	rep #$08		; C2 08
	tsb $48.b		; 04 48
	ora [$E9.b]		; 07 E9
	rep #$08		; C2 08
	asl $48.b		; 06 48
	jsr ($9AFC.w,X)		; FC FC 9A
	brk $08.b		; 00 08
	rti		; 40

	inc $DA0A.w		; EE 0A DA
	brk $09.b		; 00 09
	rti		; 40

	sbc $00D209.l		; EF 09 D2 00
	asl A		; 0A
	rti		; 40

	sbc $00DAF9.l,X		; FF F9 DA 00
	phd		; 0B
	rti		; 40

	sbc [$01.b],Y		; F7 01
	ldx #$00.b		; A2 00
	tsb $F740.w		; 0C 40 F7
	ora ($AA.b,X)		; 01 AA
	brk $0D.b		; 00 0D
	rti		; 40

	ora [$F1.b]		; 07 F1
	tsx		; BA
	brk $0E.b		; 00 0E
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cmp ($00.b)		; D2 00
	ora $F9FF40.l		; 0F 40 FF F9
	cmp ($00.b)		; D2 00
	clc		; 18
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp ($00.b)		; D2 00
	ora $EF40.w,Y		; 19 40 EF
	ora #$00AB.w		; 09 AB 00
	inc A		; 1A
	rti		; 40

	sbc $00B309.l		; EF 09 B3 00
	tas		; 1B
	rti		; 40

	sbc $00BB09.l		; EF 09 BB 00
	trb $EF40.w		; 1C 40 EF
	ora #$00C3.w		; 09 C3 00
	ora $1940.w,X		; 1D 40 19
	brk $F0.b		; 00 F0
	cmp ($08.b,X)		; C1 08
	brk $48.b		; 00 48
	cop $EE.b		; 02 EE
	lda ($08.b),Y		; B1 08
	cop $48.b		; 02 48
	ora ($DE.b)		; 12 DE
	lda ($08.b),Y		; B1 08
	tsb $48.b		; 04 48
	inc $FA.b,X		; F6 FA
	lda ($08.b,X)		; A1 08
	asl $48.b		; 06 48
	asl $EA.b		; 06 EA
	lda ($08.b,X)		; A1 08
	php		; 08
	pha		; 48
	brk $F8.b		; 00 F8
	sbc ($00.b,X)		; E1 00
	asl A		; 0A
	rti		; 40

	bpl -24.b		; 10 E8
	cmp ($00.b,X)		; C1 00
	phd		; 0B
	rti		; 40

	bpl -24.b		; 10 E8
	cmp #$0C00.w		; C9 00 0C
	rti		; 40

	brk $F8.b		; 00 F8
	cmp ($00.b),Y		; D1 00
	ora $0840.w		; 0D 40 08
	beq -47.b		; F0 D1
	brk $0E.b		; 00 0E
	rti		; 40

	bpl -24.b		; 10 E8
	cmp ($00.b),Y		; D1 00
	ora $07F140.l		; 0F 40 F1 07
	sta $1A00.w,Y		; 99 00 1A
	rti		; 40

	cop $F6.b		; 02 F6
	cmp $1B00.w,Y		; D9 00 1B
	rti		; 40

	bpl -24.b		; 10 E8
	sbc #$1C00.w		; E9 00 1C
	rti		; 40

	bpl -24.b		; 10 E8
	sbc ($00.b),Y		; F1 00
	ora $FB40.w,X		; 1D 40 FB
	sbc $00F9.w,X		; FD F9 00
	asl $0440.w,X		; 1E 40 04
	pea $0099.w		; F4 99 00
	ora $EC0C40.l,X		; 1F 40 0C EC
	sta $2000.w,Y		; 99 00 20
	rti		; 40

	jsr ($F1FC.w,X)		; FC FC F1
	brk $21.b		; 00 21
	rti		; 40

	ora $D9EB.w		; 0D EB D9
	brk $22.b		; 00 22
	rti		; 40

	inc $A10A.w		; EE 0A A1
	brk $23.b		; 00 23
	rti		; 40

	asl $E1EA.w		; 0E EA E1
	brk $24.b		; 00 24
	rti		; 40

	inc $E9FA.w,X		; FE FA E9
	brk $25.b		; 00 25
	rti		; 40

	bpl -24.b		; 10 E8
	sbc $2600.w,Y		; F9 00 26
	rti		; 40

	clc		; 18
	cpx #$F9.b		; E0 F9
	brk $27.b		; 00 27
	rti		; 40

	trb $EE02.w		; 1C 02 EE
	sta $0008.w,Y		; 99 08 00
	pha		; 48
	ora ($DE.b)		; 12 DE
	lda ($08.b,X)		; A1 08
	cop $48.b		; 02 48
	cop $EE.b		; 02 EE
	lda #$0408.w		; A9 08 04
	pha		; 48
	cop $EE.b		; 02 EE
	lda $0608.w,Y		; B9 08 06
	pha		; 48
	ora $EB.b		; 05 EB
	cmp #$0808.w		; C9 08 08
	pha		; 48
	jsr $AED8.w		; 20 D8 AE
	brk $0A.b		; 00 0A
	rti		; 40

	plp		; 28
	bne -82.b		; D0 AE
	brk $0B.b		; 00 0B
	rti		; 40

	cop $F6.b		; 02 F6
	cmp $0C00.w,Y		; D9 00 0C
	rti		; 40

	asl A		; 0A
	inc $00D9.w		; EE D9 00
	ora $1240.w		; 0D 40 12
	inc $D9.b		; E6 D9
	brk $0E.b		; 00 0E
	rti		; 40

	plx		; FA
	inc $00E1.w,X		; FE E1 00
	ora $F60240.l		; 0F 40 02 F6
	sbc ($00.b,X)		; E1 00
	inc A		; 1A
	rti		; 40

	ora ($E6.b)		; 12 E6
	sbc ($00.b,X)		; E1 00
	tas		; 1B
	rti		; 40

	bpl -24.b		; 10 E8
	sbc #$1C00.w		; E9 00 1C
	rti		; 40

	bpl -24.b		; 10 E8
	sbc ($00.b),Y		; F1 00
	ora $1040.w,X		; 1D 40 10
	inx		; E8
	sbc $1E00.w,Y		; F9 00 1E
	rti		; 40

	clc		; 18
	cpx #$F9.b		; E0 F9
	brk $1F.b		; 00 1F
	rti		; 40

	ora ($E6.b)		; 12 E6
	sta $2000.w,Y		; 99 00 20
	rti		; 40

	ora ($E6.b)		; 12 E6
	lda ($00.b),Y		; B1 00
	and ($40.b,X)		; 21 40
	inc A		; 1A
	dec $00B1.w,X		; DE B1 00
	jsl $E61240.l		; 22 40 12 E6
	lda $2300.w,Y		; B9 00 23
	rti		; 40

	ora ($E6.b)		; 12 E6
	cmp ($00.b,X)		; C1 00
	bit $40.b		; 24 40
	jsr ($F1FC.w,X)		; FC FC F1
	brk $25.b		; 00 25
	rti		; 40

	jsr ($F9FC.w,X)		; FC FC F9
	brk $26.b		; 00 26
	rti		; 40

	plp		; 28
	bne -90.b		; D0 A6
	brk $27.b		; 00 27
	rti		; 40

	ora $E3.b,X		; 15 E3
	cmp #$2800.w		; C9 00 28
	rti		; 40

	ora $E3.b,X		; 15 E3
	cmp ($00.b),Y		; D1 00
	and #$FE40.w		; 29 40 FE
	plx		; FA
	sbc #$2A00.w		; E9 00 2A
	rti		; 40

	clc		; 18
	php		; 08
	inx		; E8
	sta $0008.w,Y		; 99 08 00
	pha		; 48
	brk $F0.b		; 00 F0
	cmp #$0208.w		; C9 08 02
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cmp $0408.w,Y		; D9 08 04
	pha		; 48
	plx		; FA
	inc $A9.b,X		; F6 A9
	php		; 08
	asl $48.b		; 06 48
	asl A		; 0A
	inc $A9.b		; E6 A9
	php		; 08
	php		; 08
	pha		; 48
	jsr ($B9F4.w,X)		; FC F4 B9
	php		; 08
	asl A		; 0A
	pha		; 48
	bpl -24.b		; 10 E8
	cmp #$0C00.w		; C9 00 0C
	rti		; 40

	bpl -24.b		; 10 E8
	cmp ($00.b),Y		; D1 00
	ora $F840.w		; 0D 40 F8
	brk $F4.b		; 00 F4
	brk $0E.b		; 00 0E
	rti		; 40

	php		; 08
	beq  -7.b		; F0 F9
	brk $0F.b		; 00 0F
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cmp $1C00.w,Y		; D9 00 1C
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sbc ($00.b,X)		; E1 00
	ora $FA40.w,X		; 1D 40 FA
	inc $00F9.w,X		; FE F9 00
	asl $1040.w,X		; 1E 40 10
	inx		; E8
	sbc $1F00.w,Y		; F9 00 1F
	rti		; 40

	brk $F8.b		; 00 F8
	lda ($00.b,X)		; A1 00
	jsr $1A40.w		; 20 40 1A
	dec $00AB.w,X		; DE AB 00
	and ($40.b,X)		; 21 40
	inc A		; 1A
	dec $00B3.w,X		; DE B3 00
	jsl $E41440.l		; 22 40 14 E4
	lda $2300.w,Y		; B9 00 23
	rti		; 40

	tsb $F1EC.w		; 0C EC F1
	brk $24.b		; 00 24
	rti		; 40

	brk $F8.b		; 00 F8
	sbc #$2500.w		; E9 00 25
	rti		; 40

	tsb $B9EC.w		; 0C EC B9
	brk $26.b		; 00 26
	rti		; 40

	tsb $C1EC.w		; 0C EC C1
	brk $27.b		; 00 27
	rti		; 40

	sbc $F0FB.w,X		; FD FB F0
	brk $28.b		; 00 28
	rti		; 40

	asl $E9EA.w		; 0E EA E9
	brk $29.b		; 00 29
	rti		; 40

	tas		; 1B
	php		; 08
	inx		; E8
	cmp $0008.w,Y		; D9 08 00
	pha		; 48
	plx		; FA
	inc $A9.b,X		; F6 A9
	php		; 08
	cop $48.b		; 02 48
	jsr ($99F4.w,X)		; FC F4 99
	php		; 08
	tsb $48.b		; 04 48
	jsr ($B9F4.w,X)		; FC F4 B9
	php		; 08
	asl $48.b		; 06 48
	sbc $08C9F1.l,X		; FF F1 C9 08
	php		; 08
	pha		; 48
	bpl -24.b		; 10 E8
	sbc #$0A00.w		; E9 00 0A
	rti		; 40

	inc A		; 1A
	dec $00A9.w,X		; DE A9 00
	phd		; 0B
	rti		; 40

	ora ($E6.b)		; 12 E6
	lda ($00.b),Y		; B1 00
	tsb $1A40.w		; 0C 40 1A
	dec $00B1.w,X		; DE B1 00
	ora $0040.w		; 0D 40 00
	sed		; F8
	sbc ($00.b),Y		; F1 00
	asl $0A40.w		; 0E 40 0A
	inc $00A9.w		; EE A9 00
	ora $EE0A40.l		; 0F 40 0A EE
	lda ($00.b),Y		; B1 00
	inc A		; 1A
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	sbc ($00.b),Y		; F1 00
	tas		; 1B
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	sbc $1C00.w,Y		; F9 00 1C
	rti		; 40

	tas		; 1B
	cmp $00F9.w,X		; DD F9 00
	ora $F440.w,X		; 1D 40 F4
	tsb $A1.b		; 04 A1
	brk $1E.b		; 00 1E
	rti		; 40

	trb $E4.b		; 14 E4
	lda $1F00.w,Y		; B9 00 1F
	rti		; 40

	brk $F8.b		; 00 F8
	sbc ($00.b,X)		; E1 00
	jsr $0040.w		; 20 40 00
	sed		; F8
	sbc #$2100.w		; E9 00 21
	rti		; 40

	tsb $99EC.w		; 0C EC 99
	brk $22.b		; 00 22
	rti		; 40

	tsb $A1EC.w		; 0C EC A1
	brk $23.b		; 00 23
	rti		; 40

	tsb $B9EC.w		; 0C EC B9
	brk $24.b		; 00 24
	rti		; 40

	tsb $C1EC.w		; 0C EC C1
	brk $25.b		; 00 25
	rti		; 40

	sbc $F9FB.w,X		; FD FB F9
	brk $26.b		; 00 26
	rti		; 40

	php		; 08
	beq -23.b		; F0 E9
	brk $27.b		; 00 27
	rti		; 40

	ora $00C9E9.l		; 0F E9 C9 00
	plp		; 28
	rti		; 40

	ora $00D1E9.l		; 0F E9 D1 00
	and #$1940.w		; 29 40 19
	php		; 08
	inx		; E8
	sbc ($08.b,X)		; E1 08
	brk $48.b		; 00 48
	bpl -32.b		; 10 E0
	cmp ($08.b),Y		; D1 08
	cop $48.b		; 02 48
	bpl -32.b		; 10 E0
	lda ($08.b),Y		; B1 08
	tsb $48.b		; 04 48
	clc		; 18
	cld		; D8
	lda ($08.b,X)		; A1 08
	asl $48.b		; 06 48
	plp		; 28
	iny		; C8
	lda ($08.b,X)		; A1 08
	php		; 08
	pha		; 48
	jsr $B1D0.w		; 20 D0 B1
	php		; 08
	asl A		; 0A
	pha		; 48
	ora $08C1E1.l		; 0F E1 C1 08
	tsb $0048.w		; 0C 48 00
	sed		; F8
	sbc ($00.b),Y		; F1 00
	asl $2040.w		; 0E 40 20
	cld		; D8
	sbc $0F00.w,Y		; F9 00 0F
	rti		; 40

	plp		; 28
	bne  -7.b		; D0 F9
	brk $1E.b		; 00 1E
	rti		; 40

	sec		; 38
	cpy #$B1.b		; C0 B1
	brk $1F.b		; 00 1F
	rti		; 40

	bmi -56.b		; 30 C8
	lda ($00.b),Y		; B1 00
	jsr $2040.w		; 20 40 20
	cld		; D8
	cmp ($00.b),Y		; D1 00
	and ($40.b,X)		; 21 40
	jsr $D9D8.w		; 20 D8 D9
	brk $22.b		; 00 22
	rti		; 40

	rti		; 40

	clv		; B8
	lda ($00.b)		; B2 00
	and $40.b,S		; 23 40
	pha		; 48
	bcs -78.b		; B0 B2
	brk $24.b		; 00 24
	rti		; 40

	jsl $00E9D6.l		; 22 D6 E9 00
	and $40.b		; 25 40
	jsl $00F1D6.l		; 22 D6 F1 00
	rol $40.b		; 26 40
	and $D5.b,S		; 23 D5
	sbc ($00.b,X)		; E1 00
	and [$40.b]		; 27 40
	tsb $F4.b		; 04 F4
	sbc $2800.w		; ED 00 28
	rti		; 40

	sbc $F9FB.w,X		; FD FB F9
	brk $29.b		; 00 29
	rti		; 40

	and [$D1.b]		; 27 D1
	cmp ($00.b,X)		; C1 00
	rol A		; 2A
	rti		; 40

	plp		; 28
	bne -39.b		; D0 D9
	brk $2B.b		; 00 2B
	rti		; 40

	ora $00C1D9.l,X		; 1F D9 C1 00
	bit $1F40.w		; 2C 40 1F
	cmp $00C9.w,Y		; D9 C9 00
	and $1940.w		; 2D 40 19
	php		; 08
	inx		; E8
	sbc ($08.b,X)		; E1 08
	brk $48.b		; 00 48
	bpl -32.b		; 10 E0
	lda ($08.b),Y		; B1 08
	cop $48.b		; 02 48
	jsr $B1D0.w		; 20 D0 B1
	php		; 08
	tsb $48.b		; 04 48
	bpl -32.b		; 10 E0
	cmp ($08.b),Y		; D1 08
	asl $48.b		; 06 48
	ora [$D9.b],Y		; 17 D9
	lda ($08.b,X)		; A1 08
	php		; 08
	pha		; 48
	ora $08C1E1.l		; 0F E1 C1 08
	asl A		; 0A
	pha		; 48
	bmi -56.b		; 30 C8
	lda ($00.b),Y		; B1 00
	tsb $3040.w		; 0C 40 30
	iny		; C8
	lda $0D00.w,Y		; B9 00 0D
	rti		; 40

	jsr $D1D8.w		; 20 D8 D1
	brk $0E.b		; 00 0E
	rti		; 40

	jsr $D9D8.w		; 20 D8 D9
	brk $0F.b		; 00 0F
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc ($00.b),Y		; F1 00
	trb $2240.w		; 1C 40 22
	dec $E9.b,X		; D6 E9
	brk $1D.b		; 00 1D
	rti		; 40

	jsl $00F1D6.l		; 22 D6 F1 00
	asl $2340.w,X		; 1E 40 23
	cmp $E1.b,X		; D5 E1
	brk $1F.b		; 00 1F
	rti		; 40

	and $D5.b,S		; 23 D5
	sbc $2000.w,Y		; F9 00 20
	rti		; 40

	pld		; 2B
	cmp $00F9.w		; CD F9 00
	and ($40.b,X)		; 21 40
	tsb $F4.b		; 04 F4
	cpx $2200.w		; EC 00 22
	rti		; 40

	sbc $F9FB.w,X		; FD FB F9
	brk $23.b		; 00 23
	rti		; 40

	and $00A9C9.l		; 2F C9 A9 00
	bit $40.b		; 24 40
	jsr $99D8.w		; 20 D8 99
	brk $25.b		; 00 25
	rti		; 40

	plp		; 28
	bne -39.b		; D0 D9
	brk $26.b		; 00 26
	rti		; 40

	and [$D1.b]		; 27 D1
	lda ($00.b,X)		; A1 00
	and [$40.b]		; 27 40
	and [$D1.b]		; 27 D1
	lda #$2800.w		; A9 00 28
	rti		; 40

	ora $00C1D9.l,X		; 1F D9 C1 00
	and #$1F40.w		; 29 40 1F
	cmp $00C9.w,Y		; D9 C9 00
	rol A		; 2A
	rti		; 40

	ora $F8.b,X		; 15 F8
	sed		; F8
	lda #$0008.w		; A9 08 00
	pha		; 48
	sbc $B9F3.w,X		; FD F3 B9
	php		; 08
	cop $48.b		; 02 48
	ora $B9E3.w		; 0D E3 B9
	php		; 08
	tsb $48.b		; 04 48
	sbc [$F9.b],Y		; F7 F9
	sta $0608.w,Y		; 99 08 06
	pha		; 48
	brk $F8.b		; 00 F8
	sbc ($00.b,X)		; E1 00
	php		; 08
	rti		; 40

	bpl -24.b		; 10 E8
	lda ($00.b),Y		; B1 00
	ora #$0840.w		; 09 40 08
	beq -87.b		; F0 A9
	brk $0A.b		; 00 0A
	rti		; 40

	php		; 08
	beq -79.b		; F0 B1
	brk $0B.b		; 00 0B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp $0C00.w,Y		; D9 00 0C
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	cmp #$0D00.w		; C9 00 0D
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp ($00.b),Y		; D1 00
	asl $1340.w		; 0E 40 13
	sbc $D1.b		; E5 D1
	brk $0F.b		; 00 0F
	rti		; 40

	ora $B9DB.w,X		; 1D DB B9
	brk $18.b		; 00 18
	rti		; 40

	clc		; 18
	cpx #$B1.b		; E0 B1
	brk $19.b		; 00 19
	rti		; 40

	brk $F8.b		; 00 F8
	cmp #$1A00.w		; C9 00 1A
	rti		; 40

	inc $E9FA.w,X		; FE FA E9
	brk $1B.b		; 00 1B
	rti		; 40

	inc $F1FA.w,X		; FE FA F1
	brk $1C.b		; 00 1C
	rti		; 40

	inc $F9FA.w,X		; FE FA F9
	brk $1D.b		; 00 1D
	rti		; 40

	php		; 08
	beq -55.b		; F0 C9
	brk $1E.b		; 00 1E
	rti		; 40

	ora [$F1.b]		; 07 F1
	sta $1F00.w,Y		; 99 00 1F
	rti		; 40

	ora [$F1.b]		; 07 F1
	lda ($00.b,X)		; A1 00
	jsr $0D40.w		; 20 40 0D
	plx		; FA
	inc $D2.b,X		; F6 D2
	php		; 08
	brk $48.b		; 00 48
	pea $9AFC.w		; F4 FC 9A
	php		; 08
	cop $48.b		; 02 48
	pea $BAFC.w		; F4 FC BA
	php		; 08
	tsb $48.b		; 04 48
	tsb $BBE4.w		; 0C E4 BB
	php		; 08
	asl $48.b		; 06 48
	sbc $AA03.w		; ED 03 AA
	php		; 08
	php		; 08
	pha		; 48
	sbc $AAF3.w,X		; FD F3 AA
	php		; 08
	asl A		; 0A
	pha		; 48
	tsb $F4.b		; 04 F4
	rep #$00		; C2 00
	tsb $F240.w		; 0C 40 F2
	asl $DD.b		; 06 DD
	brk $0D.b		; 00 0D
	rti		; 40

	cpx $A20C.w		; EC 0C A2
	brk $0E.b		; 00 0E
	rti		; 40

	tsb $F4.b		; 04 F4
	tsx		; BA
	brk $0F.b		; 00 0F
	rti		; 40

	inc $E40A.w		; EE 0A E4
	brk $1C.b		; 00 1C
	rti		; 40

	sbc [$01.b],Y		; F7 01
	dex		; CA
	brk $1D.b		; 00 1D
	rti		; 40

	sbc $00CAF9.l,X		; FF F9 CA 00
	asl $1040.w,X		; 1E 40 10
	sed		; F8
	sed		; F8
	sbc ($08.b,X)		; E1 08
	brk $48.b		; 00 48
	beq   0.b		; F0 00
	lda #$0208.w		; A9 08 02
	pha		; 48
	brk $F0.b		; 00 F0
	lda #$0408.w		; A9 08 04
	pha		; 48
	sbc $99F7.w,Y		; F9 F7 99
	php		; 08
	asl $48.b		; 06 48
	xce		; FB
	sbc $C9.b,X		; F5 C9
	php		; 08
	php		; 08
	pha		; 48
	inc $FA.b,X		; F6 FA
	lda $0A08.w,Y		; B9 08 0A
	pha		; 48
	brk $F8.b		; 00 F8
	sbc $0C00.w,Y		; F9 00 0C
	rti		; 40

	xce		; FB
	sbc $00F1.w,X		; FD F1 00
	ora $F840.w		; 0D 40 F8
	brk $F9.b		; 00 F9
	brk $0E.b		; 00 0E
	rti		; 40

	phd		; 0B
	sbc $00C9.w		; ED C9 00
	ora $ED0B40.l		; 0F 40 0B ED
	cmp ($00.b),Y		; D1 00
	trb $FC40.w		; 1C 40 FC
	jsr ($00D9.w,X)		; FC D9 00
	ora $0440.w,X		; 1D 40 04
	pea $00D9.w		; F4 D9 00
	asl $F140.w,X		; 1E 40 F1
	ora [$A1.b]		; 07 A1
	brk $1F.b		; 00 1F
	rti		; 40

	asl $F2.b		; 06 F2
	lda $2000.w,Y		; B9 00 20
	rti		; 40

	asl $F2.b		; 06 F2
	cmp ($00.b,X)		; C1 00
	and ($40.b,X)		; 21 40
	ora [$10.b],Y		; 17 10
	cpx #$B1.b		; E0 B1
	php		; 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	lda #$0208.w		; A9 08 02
	pha		; 48
	sed		; F8
	sed		; F8
	lda $0408.w,Y		; B9 08 04
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	sta $0608.w,Y		; 99 08 06
	pha		; 48
	plp		; 28
	bne -79.b		; D0 B1
	brk $08.b		; 00 08
	rti		; 40

	bmi -56.b		; 30 C8
	lda ($00.b),Y		; B1 00
	ora #$3840.w		; 09 40 38
	cpy #$B1.b		; C0 B1
	brk $0A.b		; 00 0A
	rti		; 40

	php		; 08
	beq -87.b		; F0 A9
	brk $0B.b		; 00 0B
	rti		; 40

	php		; 08
	beq -79.b		; F0 B1
	brk $0C.b		; 00 0C
	rti		; 40

	php		; 08
	beq -71.b		; F0 B9
	brk $0D.b		; 00 0D
	rti		; 40

	php		; 08
	beq -63.b		; F0 C1
	brk $0E.b		; 00 0E
	rti		; 40

	bpl -24.b		; 10 E8
	cmp ($00.b,X)		; C1 00
	ora $F80040.l		; 0F 40 00 F8
	cmp #$1800.w		; C9 00 18
	rti		; 40

	php		; 08
	beq -55.b		; F0 C9
	brk $19.b		; 00 19
	rti		; 40

	jsr $B4D8.w		; 20 D8 B4
	brk $1A.b		; 00 1A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp $1B00.w,Y		; D9 00 1B
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp ($00.b),Y		; D1 00
	trb $FD40.w		; 1C 40 FD
	xce		; FB
	sbc ($00.b),Y		; F1 00
	ora $FD40.w,X		; 1D 40 FD
	xce		; FB
	sbc $1E00.w,Y		; F9 00 1E
	rti		; 40

	inc $E9FA.w,X		; FE FA E9
	brk $1F.b		; 00 1F
	rti		; 40

	brk $F8.b		; 00 F8
	sbc ($00.b,X)		; E1 00
	jsr $0740.w		; 20 40 07
	sbc ($99.b),Y		; F1 99
	brk $21.b		; 00 21
	rti		; 40

	ora [$F1.b]		; 07 F1
	lda ($00.b,X)		; A1 00
	jsl $000C40.l		; 22 40 0C 00
	beq -53.b		; F0 CB
	php		; 08
	brk $48.b		; 00 48
	tsb $EC.b		; 04 EC
	sbc ($08.b,S),Y		; F3 08
	cop $48.b		; 02 48
	asl $EA.b		; 06 EA
	sbc $08.b,S		; E3 08
	tsb $48.b		; 04 48
	brk $F8.b		; 00 F8
	stp		; DB
	brk $06.b		; 00 06
	rti		; 40

	php		; 08
	beq -37.b		; F0 DB
	brk $07.b		; 00 07
	rti		; 40

	bpl -24.b		; 10 E8
	stp		; DB
	brk $08.b		; 00 08
	rti		; 40

	bpl -24.b		; 10 E8
	wai		; CB
	brk $09.b		; 00 09
	rti		; 40

	trb $E4.b		; 14 E4
	sbc ($00.b,S),Y		; F3 00
	asl A		; 0A
	rti		; 40

	trb $E4.b		; 14 E4
	xce		; FB
	brk $0B.b		; 00 0B
	rti		; 40

	bpl -24.b		; 10 E8
	cmp ($00.b,S),Y		; D3 00
	tsb $1640.w		; 0C 40 16
.ACCU 8
	sep #$E3		; E2 E3
	brk $0D.b		; 00 0D
	rti		; 40

	asl $E2.b,X		; 16 E2
	xba		; EB
	brk $0E.b		; 00 0E
	rti		; 40

	ora ($F9.b),Y		; 11 F9
	sbc [$C9.b],Y		; F7 C9
	php		; 08
	brk $48.b		; 00 48
	pea $B9FC.w		; F4 FC B9
	php		; 08
	cop $48.b		; 02 48
	tsb $EC.b		; 04 EC
	lda $0408.w,Y		; B9 08 04
	pha		; 48
	sbc $089901.l		; EF 01 99 08
	asl $48.b		; 06 48
	sbc $0899F1.l,X		; FF F1 99 08
	php		; 08
	pha		; 48
	sbc $08A901.l		; EF 01 A9 08
	asl A		; 0A
	pha		; 48
	sbc $08A9F1.l,X		; FF F1 A9 08
	tsb $FB48.w		; 0C 48 FB
	sbc $00E1.w,X		; FD E1 00
	asl $FC40.w		; 0E 40 FC
	jsr ($00D9.w,X)		; FC D9 00
	ora $00F840.l		; 0F 40 F8 00
	sbc $1E00.w,Y		; F9 00 1E
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $1F00.w,Y		; F9 00 1F
	rti		; 40

	trb $E4.b		; 14 E4
	ldy $2000.w,X		; BC 00 20
	rti		; 40

	asl $F2.b		; 06 F2
	cmp $2100.w,Y		; D9 00 21
	rti		; 40

	sed		; F8
	brk $F1.b		; 00 F1
	brk $22.b		; 00 22
	rti		; 40

	ora #$EF.b		; 09 EF
	cmp #$00.b		; C9 00
	and $40.b,S		; 23 40
	ora #$EF.b		; 09 EF
	cmp ($00.b),Y		; D1 00
	bit $40.b		; 24 40
	plx		; FA
	inc $00E9.w,X		; FE E9 00
	and $40.b		; 25 40
	ora $00.b,X		; 15 00
	beq -57.b		; F0 C7
	php		; 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	sta [$08.b],Y		; 97 08
	cop $48.b		; 02 48
	bpl -32.b		; 10 E0
	sta $480408.l,X		; 9F 08 04 48
	sed		; F8
	sed		; F8
	lda [$08.b]		; A7 08
	asl $48.b		; 06 48
	brk $F0.b		; 00 F0
	lda [$08.b],Y		; B7 08
	php		; 08
	pha		; 48
	inc $D7F2.w,X		; FE F2 D7
	php		; 08
	asl A		; 0A
	pha		; 48
	sed		; F8
	brk $F7.b		; 00 F7
	brk $0C.b		; 00 0C
	rti		; 40

	sed		; F8
	brk $9F.b		; 00 9F
	brk $0D.b		; 00 0D
	rti		; 40

	php		; 08
	beq -89.b		; F0 A7
	brk $0E.b		; 00 0E
	rti		; 40

	php		; 08
	beq -81.b		; F0 AF
	brk $0F.b		; 00 0F
	rti		; 40

	bpl -24.b		; 10 E8
	lda $401C00.l		; AF 00 1C 40
	clc		; 18
	cpx #$AF.b		; E0 AF
	brk $1D.b		; 00 1D
	rti		; 40

	bpl -24.b		; 10 E8
	lda [$00.b],Y		; B7 00
	asl $1040.w,X		; 1E 40 10
	inx		; E8
	lda $401F00.l,X		; BF 00 1F 40
	bpl -24.b		; 10 E8
	cmp [$00.b]		; C7 00
	jsr $1A40.w		; 20 40 1A
	dec $008A.w,X		; DE 8A 00
	and ($40.b,X)		; 21 40
	tas		; 1B
	cmp $008F.w,X		; DD 8F 00
	jsl $DD1B40.l		; 22 40 1B DD
	sta [$00.b],Y		; 97 00
	and $40.b,S		; 23 40
	jsr ($EFFC.w,X)		; FC FC EF
	brk $24.b		; 00 24
	rti		; 40

	inc $E7FA.w,X		; FE FA E7
	brk $25.b		; 00 25
	rti		; 40

	brk $F8.b		; 00 F8
	sbc [$00.b],Y		; F7 00
	rol $40.b		; 26 40
	ora $EB.b,X		; 15 EB
	ora $CD.b		; 05 CD
	php		; 08
	brk $48.b		; 00 48
	xce		; FB
	sbc $CD.b,X		; F5 CD
	php		; 08
	cop $48.b		; 02 48
	inc $A502.w		; EE 02 A5
	php		; 08
	tsb $48.b		; 04 48
	inc $B502.w		; EE 02 B5
	php		; 08
	asl $48.b		; 06 48
	cop $F6.b		; 02 F6
	cmp $00.b		; C5 00
	php		; 08
	rti		; 40

	cop $F6.b		; 02 F6
	stz $0900.w,X		; 9E 00 09
	rti		; 40

	xba		; EB
	ora $00E5.w		; 0D E5 00
	asl A		; 0A
	rti		; 40

	sbc ($06.b)		; F2 06
	sta $0B00.w,X		; 9D 00 0B
	rti		; 40

	plx		; FA
	inc $009D.w,X		; FE 9D 00
	tsb $EB40.w		; 0C 40 EB
	ora $00DD.w		; 0D DD 00
	ora $F340.w		; 0D 40 F3
	ora $DD.b		; 05 DD
	brk $0E.b		; 00 0E
	rti		; 40

	xce		; FB
	sbc $00DD.w,X		; FD DD 00
	ora $F50340.l		; 0F 40 03 F5
	cmp $1800.w,X		; DD 00 18
	rti		; 40

	inc $12.b		; E6 12
	lda ($00.b,S),Y		; B3 00
	ora $F240.w,Y		; 19 40 F2
	asl $C5.b		; 06 C5
	brk $1A.b		; 00 1A
	rti		; 40

	plx		; FA
	inc $00C5.w,X		; FE C5 00
	tas		; 1B
	rti		; 40

	inc $A5FA.w,X		; FE FA A5
	brk $1C.b		; 00 1C
	rti		; 40

	inc $ADFA.w,X		; FE FA AD
	brk $1D.b		; 00 1D
	rti		; 40

	inc $B5FA.w,X		; FE FA B5
	brk $1E.b		; 00 1E
	rti		; 40

	inc $BDFA.w,X		; FE FA BD
	brk $1F.b		; 00 1F
	rti		; 40

	asl $F2.b		; 06 F2
	ldx $00.b		; A6 00
	jsr $0F40.w		; 20 40 0F
	sbc $0D.b,S		; E3 0D
	cmp [$08.b],Y		; D7 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp [$08.b],Y		; D7 08
	cop $48.b		; 02 48
	ora $BFE3.w		; 0D E3 BF
	php		; 08
	tsb $48.b		; 04 48
	sbc $FB.b,X		; F5 FB
	sta $480608.l,X		; 9F 08 06 48
	ora $EB.b		; 05 EB
	sta $480808.l,X		; 9F 08 08 48
	ora $EB.b		; 05 EB
	lda $480A08.l		; AF 08 0A 48
	sbc $FB.b,X		; F5 FB
	lda $480C08.l		; AF 08 0C 48
	sbc $BF03.w		; ED 03 BF
	php		; 08
	asl $FD48.w		; 0E 48 FD
	sbc ($BF.b,S),Y		; F3 BF
	php		; 08
	jsr $ED48.w		; 20 48 ED
	phd		; 0B
	tax		; AA
	brk $22.b		; 00 22
	rti		; 40

	sbc $A20B.w		; ED 0B A2
	brk $23.b		; 00 23
	rti		; 40

	sbc $B70B.w		; ED 0B B7
	brk $24.b		; 00 24
	rti		; 40

	sbc $03.b,X		; F5 03
	cmp $402500.l		; CF 00 25 40
	sbc $CFFB.w,X		; FD FB CF
	brk $26.b		; 00 26
	rti		; 40

	ora $F3.b		; 05 F3
	cmp $402700.l		; CF 00 27 40
	trb $01.b		; 14 01
	sbc $0008B7.l		; EF B7 08 00
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cmp [$08.b]		; C7 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	cpy #$08.b		; C0 08
	tsb $48.b		; 04 48
	sbc #$07.b		; E9 07
	bcs   8.b		; B0 08
	asl $48.b		; 06 48
	sbc ($17.b,X)		; E1 17
	ldy $00.b		; A4 00
	php		; 08
	rti		; 40

	sbc ($07.b),Y		; F1 07
	ldy #$00.b		; A0 00
	ora #$40.b		; 09 40
	sbc $A0FF.w,Y		; F9 FF A0
	brk $0A.b		; 00 0A
	rti		; 40

	ora #$EF.b		; 09 EF
	cmp [$00.b],Y		; D7 00
	phd		; 0B
	rti		; 40

	sbc #$0F.b		; E9 0F
	ldx #$00.b		; A2 00
	tsb $F940.w		; 0C 40 F9
	sbc $0D00B0.l,X		; FF B0 00 0D
	rti		; 40

	sbc $B8FF.w,Y		; F9 FF B8
	brk $0E.b		; 00 0E
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	tax		; AA
	brk $0F.b		; 00 0F
	rti		; 40

	cop $F6.b		; 02 F6
	lda [$00.b]		; A7 00
	clc		; 18
	rti		; 40

	nop		; EA
	asl $00A8.w		; 0E A8 00
	ora $F240.w,Y		; 19 40 F2
	asl $A8.b		; 06 A8
	brk $1A.b		; 00 1A
	rti		; 40

	plx		; FA
	inc $00A8.w,X		; FE A8 00
	tas		; 1B
	rti		; 40

	ora $DCEB.w		; 0D EB DC
	brk $1C.b		; 00 1C
	rti		; 40

	ora $F3.b		; 05 F3
	lda $401D00.l		; AF 00 1D 40
	inc $12.b		; E6 12
	ldy $1E00.w,X		; BC 00 1E
	rti		; 40

	inc $12.b		; E6 12
	cpy $00.b		; C4 00
	ora $E01740.l,X		; 1F 40 17 E0
	bpl -98.b		; 10 9E
	php		; 08
	brk $48.b		; 00 48
	beq   0.b		; F0 00
	stz $0208.w,X		; 9E 08 02
	pha		; 48
	ora $ED.b,S		; 03 ED
	lda $0408.w,Y		; B9 08 04
	pha		; 48
	ora $ED.b,S		; 03 ED
	cmp #$08.b		; C9 08
	asl $48.b		; 06 48
	sbc ($FD.b,S),Y		; F3 FD
	ldx $08.b,Y		; B6 08
	php		; 08
	pha		; 48
	cop $F6.b		; 02 F6
	lda ($00.b,X)		; A1 00
	asl A		; 0A
	rti		; 40

	plx		; FA
	inc $00A9.w,X		; FE A9 00
	phd		; 0B
	rti		; 40

	cop $F6.b		; 02 F6
	lda #$00.b		; A9 00
	tsb $1040.w		; 0C 40 10
	inx		; E8
	phx		; DA
	brk $0D.b		; 00 0D
	rti		; 40

	php		; 08
	beq -39.b		; F0 D9
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $15.b,S		; E3 15
	ldx $00.b,Y		; B6 00
	ora $0DEB40.l		; 0F 40 EB 0D
	ldx $00.b,Y		; B6 00
	inc A		; 1A
	rti		; 40

	sbc $15.b,S		; E3 15
	ldx $1B00.w,Y		; BE 00 1B
	rti		; 40

	sbc $15.b,S		; E3 15
	dec $00.b		; C6 00
	trb $FB40.w		; 1C 40 FB
	sbc $00CE.w,X		; FD CE 00
	ora $1040.w,X		; 1D 40 10
	inx		; E8
	cmp ($00.b)		; D2 00
	asl $F340.w,X		; 1E 40 F3
	ora $C6.b		; 05 C6
	brk $1F.b		; 00 1F
	rti		; 40

	xce		; FB
	sbc $00C6.w,X		; FD C6 00
	jsr $FD40.w		; 20 40 FD
	xce		; FB
	lda ($00.b),Y		; B1 00
	and ($40.b,X)		; 21 40
	ora $F3.b		; 05 F3
	lda ($00.b),Y		; B1 00
	jsl $13E540.l		; 22 40 E5 13
	ldx $2300.w		; AE 00 23
	rti		; 40

	sbc $AE0B.w		; ED 0B AE
	brk $24.b		; 00 24
	rti		; 40

	sbc $03.b,X		; F5 03
	ldx $2500.w		; AE 00 25
	rti		; 40

	ora $10E0.w,Y		; 19 E0 10
	bcs   8.b		; B0 08
	brk $48.b		; 00 48
	beq   0.b		; F0 00
	bcs   8.b		; B0 08
	cop $48.b		; 02 48
	ora #$E7.b		; 09 E7
	bne   8.b		; D0 08
	tsb $48.b		; 04 48
	sbc ($FF.b),Y		; F1 FF
	cpy #$08.b		; C0 08
	asl $48.b		; 06 48
	ora ($EF.b,X)		; 01 EF
	cpy #$08.b		; C0 08
	php		; 08
	pha		; 48
	stp		; DB
	ora $A0.b,X		; 15 A0
	php		; 08
	asl A		; 0A
	pha		; 48
	xba		; EB
	ora $A0.b		; 05 A0
	php		; 08
	tsb $1F48.w		; 0C 48 1F
	cmp ($E8.b),Y		; D1 E8
	php		; 08
	asl $1948.w		; 0E 48 19
	cmp $2000D8.l,X		; DF D8 00 20
	rti		; 40

	bpl -24.b		; 10 E8
	ldy INIDSP.w		; AC 00 21
	rti		; 40

	clc		; 18
	cpx #$AC.b		; E0 AC
	brk $22.b		; 00 22
	rti		; 40

	brk $F8.b		; 00 F8
	clv		; B8
	brk $23.b		; 00 23
	rti		; 40

	sbc $D0FF.w,Y		; F9 FF D0
	brk $24.b		; 00 24
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	bne   0.b		; D0 00
	and $40.b		; 25 40
	php		; 08
	beq -72.b		; F0 B8
	brk $26.b		; 00 26
	rti		; 40

	brk $F8.b		; 00 F8
	ldy $2700.w		; AC 00 27
	rti		; 40

	xce		; FB
	sbc $00A0.w,X		; FD A0 00
	plp		; 28
	rti		; 40

	xce		; FB
	sbc $00A8.w,X		; FD A8 00
	and #$40.b		; 29 40
	cpx $14.b		; E4 14
	tya		; 98
	brk $2A.b		; 00 2A
	rti		; 40

	cpx $980C.w		; EC 0C 98
	brk $2B.b		; 00 2B
	rti		; 40

	pea $9804.w		; F4 04 98
	brk $2C.b		; 00 2C
	rti		; 40

	sbc $13.b		; E5 13
	bcc   0.b		; 90 00
	and $1640.w		; 2D 40 16
.ACCU 8
	sep #$E0		; E2 E0
	brk $2E.b		; 00 2E
	rti		; 40

	asl $E0DA.w,X		; 1E DA E0
	brk $2F.b		; 00 2F
	rti		; 40

	php		; 08
	beq -84.b		; F0 AC
	brk $30.b		; 00 30
	rti		; 40

	ora ($F1.b),Y		; 11 F1
	sbc $0008BD.l,X		; FF BD 08 00
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	sta $0208.w,X		; 9D 08 02
	pha		; 48
	pea $CDFC.w		; F4 FC CD
	php		; 08
	tsb $48.b		; 04 48
	sbc $AD03.w		; ED 03 AD
	php		; 08
	asl $48.b		; 06 48
	sbc $ADF3.w,X		; FD F3 AD
	php		; 08
	php		; 08
	pha		; 48
	ora ($F7.b,X)		; 01 F7
	lda $0A00.w,X		; BD 00 0A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp $00.b		; C5 00
	phd		; 0B
	rti		; 40

	brk $F8.b		; 00 F8
	cmp $0C00.w,X		; DD 00 0C
	rti		; 40

	ora $F5.b,S		; 03 F5
	sta $0D00.w,X		; 9D 00 0D
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda $00.b		; A5 00
	asl $0B40.w		; 0E 40 0B
	sbc $00B6.w		; ED B6 00
	ora $0CEC40.l		; 0F 40 EC 0C
	cmp ($00.b),Y		; D1 00
	inc A		; 1A
	rti		; 40

	sed		; F8
	brk $E5.b		; 00 E5
	brk $1B.b		; 00 1B
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp $1C00.w		; CD 00 1C
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp $00.b,X		; D5 00
	ora $F840.w,X		; 1D 40 F8
	brk $ED.b		; 00 ED
	brk $1E.b		; 00 1E
	rti		; 40

	sed		; F8
	brk $DD.b		; 00 DD
	brk $1F.b		; 00 1F
	rti		; 40

	ora $E4.b,X		; 15 E4
	tsb $08C0.w		; 0C C0 08
	brk $48.b		; 00 48
	pea $B8FC.w		; F4 FC B8
	php		; 08
	cop $48.b		; 02 48
	inc $CE02.w		; EE 02 CE
	php		; 08
	tsb $48.b		; 04 48
	inc $A002.w		; EE 02 A0
	php		; 08
	asl $48.b		; 06 48
	inc $A0F2.w,X		; FE F2 A0
	php		; 08
	php		; 08
	pha		; 48
	jmp.w [$C81C]		; DC 1C C8
	brk $0A.b		; 00 0A
	rti		; 40

	sbc ($07.b),Y		; F1 07
	dec $0B00.w,X		; DE 00 0B
	rti		; 40

	sbc $DEFF.w,Y		; F9 FF DE
	brk $0C.b		; 00 0C
	rti		; 40

	tsb $F4.b		; 04 F4
	clv		; B8
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $F4.b		; 04 F4
	cpy #$00.b		; C0 00
	asl $F440.w		; 0E 40 F4
	tsb $C8.b		; 04 C8
	brk $0F.b		; 00 0F
	rti		; 40

	jsr ($C8FC.w,X)		; FC FC C8
	brk $1A.b		; 00 1A
	rti		; 40

	tsb $F4.b		; 04 F4
	iny		; C8
	brk $1B.b		; 00 1B
	rti		; 40

	plx		; FA
	inc $00E6.w,X		; FE E6 00
	trb $0E40.w		; 1C 40 0E
	nop		; EA
	tay		; A8
	brk $1D.b		; 00 1D
	rti		; 40

	cop $F6.b		; 02 F6
	inc $00.b		; E6 00
	asl $FA40.w,X		; 1E 40 FA
	inc $00EE.w,X		; FE EE 00
	ora $0AEE40.l,X		; 1F 40 EE 0A
	bcs   0.b		; B0 00
	jsr $F640.w		; 20 40 F6
	cop $B0.b		; 02 B0
	brk $21.b		; 00 21
	rti		; 40

	inc $B0FA.w,X		; FE FA B0
	brk $22.b		; 00 22
	rti		; 40

	asl $F2.b		; 06 F2
	bcs   0.b		; B0 00
	and $40.b,S		; 23 40
	ora ($F0.b)		; 12 F0
	brk $A0.b		; 00 A0
	php		; 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	cpy #$08.b		; C0 08
	cop $48.b		; 02 48
	php		; 08
	inx		; E8
	cpy #$08.b		; C0 08
	tsb $48.b		; 04 48
	sbc #$07.b		; E9 07
	bcs   8.b		; B0 08
	asl $48.b		; 06 48
	sbc $B0F7.w,Y		; F9 F7 B0
	php		; 08
	php		; 08
	pha		; 48
	sbc ($FE.b)		; F2 FE
	bne   8.b		; D0 08
	asl A		; 0A
	pha		; 48
	php		; 08
	beq -88.b		; F0 A8
	brk $0C.b		; 00 0C
	rti		; 40

	bpl -24.b		; 10 E8
	bne   0.b		; D0 00
	ora $3840.w		; 0D 40 38
	cpy #$D1.b		; C0 D1
	brk $0E.b		; 00 0E
	rti		; 40

	clc		; 18
	cpx #$CB.b		; E0 CB
	brk $0F.b		; 00 0F
	rti		; 40

	jsr $CCD8.w		; 20 D8 CC
	brk $1C.b		; 00 1C
	rti		; 40

	brk $F8.b		; 00 F8
	ldy #$00.b		; A0 00
	ora $0040.w,X		; 1D 40 00
	sed		; F8
	tay		; A8
	brk $1E.b		; 00 1E
	rti		; 40

	ora #$EF.b		; 09 EF
	clv		; B8
	brk $1F.b		; 00 1F
	rti		; 40

	plp		; 28
	bne -50.b		; D0 CE
	brk $20.b		; 00 20
	rti		; 40

	bmi -56.b		; 30 C8
	dec INIDSP.w		; CE 00 21
	rti		; 40

	sbc ($06.b)		; F2 06
	cpx #$00.b		; E0 00
	jsl $C83040.l		; 22 40 30 C8
	dec $00.b,X		; D6 00
	and $40.b,S		; 23 40
	ora ($02.b),Y		; 11 02
	inc $08C1.w		; EE C1 08
	brk $48.b		; 00 48
	plx		; FA
	inc $F1.b,X		; F6 F1
	php		; 08
	cop $48.b		; 02 48
	asl A		; 0A
	inc $F1.b		; E6 F1
	php		; 08
	tsb $48.b		; 04 48
	cop $F6.b		; 02 F6
	sbc ($00.b,X)		; E1 00
	asl $40.b		; 06 40
	asl A		; 0A
	inc $00E1.w		; EE E1 00
	ora [$40.b]		; 07 40
	ora ($F7.b,X)		; 01 F7
	cmp ($00.b),Y		; D1 00
	php		; 08
	rti		; 40

	ora #$EF.b		; 09 EF
	cmp ($00.b),Y		; D1 00
	ora #$40.b		; 09 40
	plx		; FA
	inc $00E1.w,X		; FE E1 00
	asl A		; 0A
	rti		; 40

	plx		; FA
	inc $00C4.w,X		; FE C4 00
	phd		; 0B
	rti		; 40

	plx		; FA
	inc $00CC.w,X		; FE CC 00
	tsb $FB40.w		; 0C 40 FB
	sbc $00E9.w,X		; FD E9 00
	ora $0340.w		; 0D 40 03
	sbc $E9.b,X		; F5 E9
	brk $0E.b		; 00 0E
	rti		; 40

	phd		; 0B
	sbc $00E9.w		; ED E9 00
	ora $FBFD40.l		; 0F 40 FD FB
	cmp $1600.w,Y		; D9 00 16
	rti		; 40

	ora $F3.b		; 05 F3
	cmp $1700.w,Y		; D9 00 17
	rti		; 40

	ora $D9EB.w		; 0D EB D9
	brk $18.b		; 00 18
	rti		; 40

	ora $00D3E9.l		; 0F E9 D3 00
	ora $0D40.w,Y		; 19 40 0D
	ora ($EF.b,X)		; 01 EF
	cmp $08.b,S		; C3 08
	brk $48.b		; 00 48
	tsb $D3E4.w		; 0C E4 D3
	php		; 08
	cop $48.b		; 02 48
	jsr ($DBF4.w,X)		; FC F4 DB
	php		; 08
	tsb $48.b		; 04 48
	tsb $E3E4.w		; 0C E4 E3
	php		; 08
	asl $48.b		; 06 48
	jsr ($EBF4.w,X)		; FC F4 EB
	php		; 08
	php		; 08
	pha		; 48
	tsb $F3E4.w		; 0C E4 F3
	php		; 08
	asl A		; 0A
	pha		; 48
	plp		; 28
	bne -46.b		; D0 D2
	brk $0C.b		; 00 0C
	rti		; 40

	jsr $D2D8.w		; 20 D8 D2
	brk $0D.b		; 00 0D
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cmp $00.b,S		; C3 00
	asl $1140.w		; 0E 40 11
	sbc [$CB.b]		; E7 CB
	brk $0F.b		; 00 0F
	rti		; 40

	trb $D3DC.w		; 1C DC D3
	brk $1C.b		; 00 1C
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b,S),Y		; D3 00
	ora $0440.w,X		; 1D 40 04
	pea $00FB.w		; F4 FB 00
	asl $0B40.w,X		; 1E 40 0B
	sbc ($FD.b,S),Y		; F3 FD
	cmp $0008.w		; CD 08 00
	pha		; 48
	sbc $FB.b,X		; F5 FB
	sbc $08.b		; E5 08
	cop $48.b		; 02 48
	ora $EB.b		; 05 EB
	sbc $08.b		; E5 08
	tsb $48.b		; 04 48
	sbc $F5F3.w,X		; FD F3 F5
	php		; 08
	asl $48.b		; 06 48
	ora $F5E3.w		; 0D E3 F5
	php		; 08
	php		; 08
	pha		; 48
	xce		; FB
	sbc $00DD.w,X		; FD DD 00
	asl A		; 0A
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp $0B00.w,X		; DD 00 0B
	rti		; 40

	phd		; 0B
	sbc $00D5.w		; ED D5 00
	tsb $0340.w		; 0C 40 03
	sbc $CD.b,X		; F5 CD
	brk $0D.b		; 00 0D
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp $00.b,X		; D5 00
	asl $F340.w		; 0E 40 F3
	ora $DD.b		; 05 DD
	brk $0F.b		; 00 0F
	rti		; 40

	ora [$F9.b],Y		; 17 F9
	sbc [$EF.b],Y		; F7 EF
	php		; 08
	brk $48.b		; 00 48
	sbc ($0F.b,X)		; E1 0F
	cmp $480208.l		; CF 08 02 48
	sbc ($FF.b),Y		; F1 FF
	cmp $480408.l		; CF 08 04 48
	ora ($EF.b,X)		; 01 EF
	cmp [$08.b],Y		; D7 08
	asl $48.b		; 06 48
	sbc #$0F.b		; E9 0F
	cmp $400800.l,X		; DF 00 08 40
	sbc ($07.b),Y		; F1 07
	cmp $400900.l,X		; DF 00 09 40
	sbc $DFFF.w,Y		; F9 FF DF
	brk $0A.b		; 00 0A
	rti		; 40

	sbc $E7FF.w,Y		; F9 FF E7
	brk $0B.b		; 00 0B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc [$00.b]		; E7 00
	tsb $E240.w		; 0C 40 E2
	asl $C7.b,X		; 16 C7
	brk $0D.b		; 00 0D
	rti		; 40

	nop		; EA
	asl $00C7.w		; 0E C7 00
	asl $F240.w		; 0E 40 F2
	asl $C7.b		; 06 C7
	brk $0F.b		; 00 0F
	rti		; 40

	plx		; FA
	inc $00C7.w,X		; FE C7 00
	clc		; 18
	rti		; 40

	cpx $E70C.w		; EC 0C E7
	brk $19.b		; 00 19
	rti		; 40

	cpx $EF0C.w		; EC 0C EF
	brk $1A.b		; 00 1A
	rti		; 40

	cpx $14.b		; E4 14
	sbc [$00.b],Y		; F7 00
	tas		; 1B
	rti		; 40

	cpx $F70C.w		; EC 0C F7
	brk $1C.b		; 00 1C
	rti		; 40

	ora $00DAD9.l,X		; 1F D9 DA 00
	ora $2740.w,X		; 1D 40 27
	cmp ($DA.b),Y		; D1 DA
	brk $1E.b		; 00 1E
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	stp		; DB
	brk $1F.b		; 00 1F
	rti		; 40

	and $00DBC9.l		; 2F C9 DB 00
	jsr $3740.w		; 20 40 37
	cmp ($DB.b,X)		; C1 DB
	brk $21.b		; 00 21
	rti		; 40

	ora $00DCE9.l		; 0F E9 DC 00
	jsl $231740.l		; 22 40 17 23
	cmp $08B1.w		; CD B1 08
	brk $48.b		; 00 48
	phd		; 0B
	sbc $B1.b		; E5 B1
	php		; 08
	cop $48.b		; 02 48
	phd		; 0B
	sbc $C1.b		; E5 C1
	php		; 08
	tsb $48.b		; 04 48
	asl $DA.b,X		; 16 DA
	lda ($08.b,X)		; A1 08
	asl $48.b		; 06 48
	ora [$D9.b],Y		; 17 D9
	cmp ($08.b),Y		; D1 08
	php		; 08
	pha		; 48
	ora [$E9.b]		; 07 E9
	cmp $0A08.w,Y		; D9 08 0A
	pha		; 48
	brk $F8.b		; 00 F8
	sbc #$00.b		; E9 00
	tsb $0840.w		; 0C 40 08
	beq -23.b		; F0 E9
	brk $0D.b		; 00 0D
	rti		; 40

	jsr $F9D8.w		; 20 D8 F9
	brk $0E.b		; 00 0E
	rti		; 40

	tas		; 1B
	cmp $00B1.w,X		; DD B1 00
	ora $DD1B40.l		; 0F 40 1B DD
	lda $1C00.w,Y		; B9 00 1C
	rti		; 40

	tas		; 1B
	cmp $00C1.w,X		; DD C1 00
	ora $1B40.w,X		; 1D 40 1B
	cmp $00C9.w,X		; DD C9 00
	asl $FD40.w,X		; 1E 40 FD
	xce		; FB
	sbc ($00.b),Y		; F1 00
	ora $D02840.l,X		; 1F 40 28 D0
	sbc $2000.w,Y		; F9 00 20
	rti		; 40

	rol $D2.b		; 26 D2
	lda ($00.b,X)		; A1 00
	and ($40.b,X)		; 21 40
	rol $D2.b		; 26 D2
	lda #$00.b		; A9 00
	jsl $D91F40.l		; 22 40 1F D9
	sbc ($00.b,X)		; E1 00
	and $40.b,S		; 23 40
	ora $00E9D9.l,X		; 1F D9 E9 00
	bit $40.b		; 24 40
	ora $00F1D9.l,X		; 1F D9 F1 00
	and $40.b		; 25 40
	sbc $F9FF.w,Y		; F9 FF F9
	brk $26.b		; 00 26
	rti		; 40

	pld		; 2B
	cmp $00C1.w		; CD C1 00
	and [$40.b]		; 27 40
	ora $00D1E9.l		; 0F E9 D1 00
	plp		; 28
	rti		; 40

	ora $C4E010.l		; 0F 10 E0 C4
	php		; 08
	brk $48.b		; 00 48
	clc		; 18
	cld		; D8
	pei ($08.b)		; D4 08
	cop $48.b		; 02 48
	php		; 08
	inx		; E8
	pei ($08.b)		; D4 08
	tsb $48.b		; 04 48
	php		; 08
	inx		; E8
	cpx $08.b		; E4 08
	asl $48.b		; 06 48
	php		; 08
	inx		; E8
	pea $0808.w		; F4 08 08
	pha		; 48
	brk $F8.b		; 00 F8
	pea $0A00.w		; F4 00 0A
	rti		; 40

	brk $F8.b		; 00 F8
	jmp.w [$0B00]		; DC 00 0B
	rti		; 40

	php		; 08
	beq -52.b		; F0 CC
	brk $0C.b		; 00 0C
	rti		; 40

	jsr $CCD8.w		; 20 D8 CC
	brk $0D.b		; 00 0D
	rti		; 40

	clc		; 18
	cpx #$E4.b		; E0 E4
	brk $0E.b		; 00 0E
	rti		; 40

	clc		; 18
	cpx #$EC.b		; E0 EC
	brk $0F.b		; 00 0F
	rti		; 40

	clc		; 18
	cpx #$F4.b		; E0 F4
	brk $1A.b		; 00 1A
	rti		; 40

	clc		; 18
	cpx #$FC.b		; E0 FC
	brk $1B.b		; 00 1B
	rti		; 40

	plp		; 28
	bne -42.b		; D0 D6
	brk $1C.b		; 00 1C
	rti		; 40

	jsr ($E4FC.w,X)		; FC FC E4
	brk $1D.b		; 00 1D
	rti		; 40

	ora ($20.b),Y		; 11 20
	bne -55.b		; D0 C9
	php		; 08
	brk $48.b		; 00 48
	jsr $D9D0.w		; 20 D0 D9
	php		; 08
	cop $48.b		; 02 48
	bpl -32.b		; 10 E0
	cmp $0408.w,Y		; D9 08 04
	pha		; 48
	tsb $EC.b		; 04 EC
	sbc ($08.b),Y		; F1 08
	asl $48.b		; 06 48
	trb $DC.b		; 14 DC
	sbc ($08.b),Y		; F1 08
	php		; 08
	pha		; 48
	clc		; 18
	cpx #$D1.b		; E0 D1
	brk $0A.b		; 00 0A
	rti		; 40

	phd		; 0B
	sbc $0001.w		; ED 01 00
	phd		; 0B
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	ora ($00.b,X)		; 01 00
	tsb $1B40.w		; 0C 40 1B
	cmp $0001.w,X		; DD 01 00
	ora $2440.w		; 0D 40 24
	pei ($E9.b)		; D4 E9
	brk $0E.b		; 00 0E
	rti		; 40

	pea $F904.w		; F4 04 F9
	brk $0F.b		; 00 0F
	rti		; 40

	clc		; 18
	cpx #$C9.b		; E0 C9
	brk $1A.b		; 00 1A
	rti		; 40

	bpl -24.b		; 10 E8
	cmp ($00.b),Y		; D1 00
	tas		; 1B
	rti		; 40

	tsb $E9EC.w		; 0C EC E9
	brk $1C.b		; 00 1C
	rti		; 40

	trb $E4.b		; 14 E4
	sbc #$00.b		; E9 00
	ora $1C40.w,X		; 1D 40 1C
	jmp.w [$00E9]		; DC E9 00
	asl $FC40.w,X		; 1E 40 FC
	jsr ($00F4.w,X)		; FC F4 00
	ora $091240.l,X		; 1F 40 12 09
	sbc [$E1.b]		; E7 E1
	php		; 08
	brk $48.b		; 00 48
	ora $E1D7.w,Y		; 19 D7 E1
	php		; 08
	cop $48.b		; 02 48
	and #$C7.b		; 29 C7
	sbc ($08.b,X)		; E1 08
	tsb $48.b		; 04 48
	ora $ED.b,S		; 03 ED
	sbc ($08.b),Y		; F1 08
	asl $48.b		; 06 48
	ora ($DD.b,S),Y		; 13 DD
	sbc ($08.b),Y		; F1 08
	php		; 08
	pha		; 48
	asl $D1E2.w		; 0E E2 D1
	php		; 08
	asl A		; 0A
	pha		; 48
	inc $D1F2.w,X		; FE F2 D1
	php		; 08
	tsb $FB48.w		; 0C 48 FB
	sbc $00F9.w,X		; FD F9 00
	asl $5140.w		; 0E 40 51
	lda [$E9.b]		; A7 E9
	brk $0F.b		; 00 0F
	rti		; 40

	and $E9BF.w,Y		; 39 BF E9
	brk $1E.b		; 00 1E
	rti		; 40

	and $D5.b,S		; 23 D5
	sbc ($00.b),Y		; F1 00
	ora $D52340.l,X		; 1F 40 23 D5
	sbc $2000.w,Y		; F9 00 20
	rti		; 40

	eor ($B7.b,X)		; 41 B7
	sbc #$00.b		; E9 00
	and ($40.b,X)		; 21 40
	eor #$AF.b		; 49 AF
	sbc #$00.b		; E9 00
	jsl $FAFE40.l		; 22 40 FE FA
	cmp #$00.b		; C9 00
	and $40.b,S		; 23 40
	asl $F2.b		; 06 F2
	cmp #$00.b		; C9 00
	bit $40.b		; 24 40
	asl $C9EA.w		; 0E EA C9
	brk $25.b		; 00 25
	rti		; 40

	asl $CFDA.w,X		; 1E DA CF
	brk $26.b		; 00 26
	rti		; 40

	tsb $CF21.w		; 0C 21 CF
	sbc ($08.b,X)		; E1 08
	brk $48.b		; 00 48
	ora ($DF.b),Y		; 11 DF
	sbc #$08.b		; E9 08
	cop $48.b		; 02 48
	ora $ED.b,S		; 03 ED
	cmp $0408.w,Y		; D9 08 04
	pha		; 48
	ora ($DD.b,S),Y		; 13 DD
	cmp $0608.w,Y		; D9 08 06
	pha		; 48
	asl $EA.b		; 06 EA
	cmp #$08.b		; C9 08
	php		; 08
	pha		; 48
	bpl -24.b		; 10 E8
	sbc $0A00.w,Y		; F9 00 0A
	rti		; 40

	clc		; 18
	cpx #$F9.b		; E0 F9
	brk $0B.b		; 00 0B
	rti		; 40

	and ($C7.b),Y		; 31 C7
	sbc #$00.b		; E9 00
	tsb $FE40.w		; 0C 40 FE
	plx		; FA
	cmp ($00.b),Y		; D1 00
	ora $0840.w		; 0D 40 08
	beq  -7.b		; F0 F9
	brk $0E.b		; 00 0E
	rti		; 40

	asl $E2.b,X		; 16 E2
	cmp #$00.b		; C9 00
	ora $E21640.l		; 0F 40 16 E2
	cmp ($00.b),Y		; D1 00
	inc A		; 1A
	rti		; 40

	ora ($F8.b)		; 12 F8
	sed		; F8
	cmp $0008.w,X		; DD 08 00
	pha		; 48
	sed		; F8
	sed		; F8
	sta $0208.w,X		; 9D 08 02
	pha		; 48
	sed		; F8
	sed		; F8
	lda $0408.w		; AD 08 04
	pha		; 48
	sed		; F8
	sed		; F8
	lda $0608.w,X		; BD 08 06
	pha		; 48
	sbc $CDF7.w,Y		; F9 F7 CD
	php		; 08
	php		; 08
	pha		; 48
	inc $FA.b,X		; F6 FA
	sbc $08.b,X		; F5 08
	asl A		; 0A
	pha		; 48
	sed		; F8
	brk $ED.b		; 00 ED
	brk $0C.b		; 00 0C
	rti		; 40

	beq   8.b		; F0 08
	lda ($00.b,X)		; A1 00
	ora $F040.w		; 0D 40 F0
	php		; 08
	lda #$00.b		; A9 00
	asl $F040.w		; 0E 40 F0
	php		; 08
	lda ($00.b),Y		; B1 00
	ora $08F040.l		; 0F 40 F0 08
	lda $1C00.w,Y		; B9 00 1C
	rti		; 40

	php		; 08
	beq -67.b		; F0 BD
	brk $1D.b		; 00 1D
	rti		; 40

	php		; 08
	beq -59.b		; F0 C5
	brk $1E.b		; 00 1E
	rti		; 40

	inx		; E8
	bpl -65.b		; 10 BF
	brk $1F.b		; 00 1F
	rti		; 40

	beq   8.b		; F0 08
	cmp ($00.b,X)		; C1 00
	jsr $FE40.w		; 20 40 FE
	plx		; FA
	sta INIDSP.w		; 8D 00 21
	rti		; 40

	inc $95FA.w,X		; FE FA 95
	brk $22.b		; 00 22
	rti		; 40

	php		; 08
	beq -78.b		; F0 B2
	brk $23.b		; 00 23
	rti		; 40

	asl $F8.b,X		; 16 F8
	sed		; F8
	cmp ($08.b),Y		; D1 08
	brk $48.b		; 00 48
	pea $99FC.w		; F4 FC 99
	php		; 08
	cop $48.b		; 02 48
	pea $A9FC.w		; F4 FC A9
	php		; 08
	tsb $48.b		; 04 48
	sbc $FB.b,X		; F5 FB
	cmp ($08.b,X)		; C1 08
	asl $48.b		; 06 48
	sed		; F8
	brk $89.b		; 00 89
	brk $08.b		; 00 08
	rti		; 40

	tsb $F4.b		; 04 F4
	bit #$00.b		; 89 00
	ora #$40.b		; 09 40
	tsb $F4.b		; 04 F4
	sta ($00.b),Y		; 91 00
	asl A		; 0A
	rti		; 40

	sed		; F8
	brk $91.b		; 00 91
	brk $0B.b		; 00 0B
	rti		; 40

	sed		; F8
	brk $B9.b		; 00 B9
	brk $0C.b		; 00 0C
	rti		; 40

	tsb $F4.b		; 04 F4
	sta $0D00.w,Y		; 99 00 0D
	rti		; 40

	tsb $F4.b		; 04 F4
	lda ($00.b,X)		; A1 00
	asl $0440.w		; 0E 40 04
	pea $00A9.w		; F4 A9 00
	ora $F40440.l		; 0F 40 04 F4
	lda ($00.b),Y		; B1 00
	clc		; 18
	rti		; 40

	cpx $A60C.w		; EC 0C A6
	brk $19.b		; 00 19
	rti		; 40

	sbc $E1FB.w,X		; FD FB E1
	brk $1A.b		; 00 1A
	rti		; 40

	sbc $E9FB.w,X		; FD FB E9
	brk $1B.b		; 00 1B
	rti		; 40

	sbc $F1FB.w,X		; FD FB F1
	brk $1C.b		; 00 1C
	rti		; 40

	sbc $F9FB.w,X		; FD FB F9
	brk $1D.b		; 00 1D
	rti		; 40

	sbc $01FB.w,X		; FD FB 01
	brk $1E.b		; 00 1E
	rti		; 40

	brk $F8.b		; 00 F8
	lda $1F00.w,Y		; B9 00 1F
	rti		; 40

	ora $F3.b		; 05 F3
	cmp ($00.b,X)		; C1 00
	jsr $0540.w		; 20 40 05
	sbc ($C9.b,S),Y		; F3 C9
	brk $21.b		; 00 21
	rti		; 40

	asl $F7F9.w		; 0E F9 F7
	txs		; 9A
	php		; 08
	brk $48.b		; 00 48
	sbc [$F9.b],Y		; F7 F9
	txa		; 8A
	php		; 08
	cop $48.b		; 02 48
	sbc [$F9.b],Y		; F7 F9
	tax		; AA
	php		; 08
	tsb $48.b		; 04 48
	sbc [$F9.b],Y		; F7 F9
	tsx		; BA
	php		; 08
	asl $48.b		; 06 48
	sbc [$F9.b],Y		; F7 F9
	dex		; CA
	php		; 08
	php		; 08
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	phx		; DA
	php		; 08
	asl A		; 0A
	pha		; 48
	ora #$EF.b		; 09 EF
	ldx #$00.b		; A2 00
	tsb $FD40.w		; 0C 40 FD
	xce		; FB
	nop		; EA
	brk $0D.b		; 00 0D
	rti		; 40

	inc $F2FA.w,X		; FE FA F2
	brk $0E.b		; 00 0E
	rti		; 40

	inc $FAFA.w,X		; FE FA FA
	brk $0F.b		; 00 0F
	rti		; 40

	ora [$F1.b]		; 07 F1
	tax		; AA
	brk $1C.b		; 00 1C
	rti		; 40

	sbc $00C509.l		; EF 09 C5 00
	ora $EF40.w,X		; 1D 40 EF
	ora #$AE.b		; 09 AE
	brk $1E.b		; 00 1E
	rti		; 40

	sbc $00B609.l		; EF 09 B6 00
	ora $F21240.l,X		; 1F 40 12 F2
	inc $089C.w,X		; FE 9C 08
	brk $48.b		; 00 48
	cop $EE.b		; 02 EE
	stz $0208.w		; 9C 08 02
	pha		; 48
	jsr ($8CF4.w,X)		; FC F4 8C
	php		; 08
	tsb $48.b		; 04 48
	jsr ($DCF4.w,X)		; FC F4 DC
	php		; 08
	asl $48.b		; 06 48
	inc $CCF2.w,X		; FE F2 CC
	php		; 08
	php		; 08
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	ldy $08.b,X		; B4 08
	asl A		; 0A
	pha		; 48
	jsr ($ECFC.w,X)		; FC FC EC
	brk $0C.b		; 00 0C
	rti		; 40

	jsr ($F4FC.w,X)		; FC FC F4
	brk $0D.b		; 00 0D
	rti		; 40

	jsr ($FCFC.w,X)		; FC FC FC
	brk $0E.b		; 00 0E
	rti		; 40

	sbc ($06.b)		; F2 06
	ldy $0F00.w		; AC 00 0F
	rti		; 40

	plx		; FA
	inc $00AC.w,X		; FE AC 00
	trb $0240.w		; 1C 40 02
	inc $AC.b,X		; F6 AC
	brk $1D.b		; 00 1D
	rti		; 40

	asl A		; 0A
	inc $00AC.w		; EE AC 00
	asl $0740.w,X		; 1E 40 07
	sbc ($B4.b),Y		; F1 B4
	brk $1F.b		; 00 1F
	rti		; 40

	ora [$F1.b]		; 07 F1
	ldy $2000.w,X		; BC 00 20
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cpy $00.b		; C4 00
	and ($40.b,X)		; 21 40
	sbc $00C4F9.l,X		; FF F9 C4 00
	jsl $F10740.l		; 22 40 07 F1
	cpy $00.b		; C4 00
	and $40.b,S		; 23 40
	ora $9EDD13.l,X		; 1F 13 DD 9E
	php		; 08
	brk $48.b		; 00 48
	trb $DC.b		; 14 DC
	ldx $0208.w		; AE 08 02
	pha		; 48
	trb $DC.b		; 14 DC
	ldx $0408.w,Y		; BE 08 04
	pha		; 48
	trb $DC.b		; 14 DC
	dec $0608.w		; CE 08 06
	pha		; 48
	ora ($F7.b,X)		; 01 F7
	lda ($00.b,S),Y		; B3 00
	php		; 08
	rti		; 40

	php		; 08
	beq -35.b		; F0 DD
	brk $09.b		; 00 09
	rti		; 40

	phd		; 0B
	sbc $00D8.w		; ED D8 00
	asl A		; 0A
	rti		; 40

	tsb $F4.b		; 04 F4
	lda ($00.b,X)		; A1 00
	phd		; 0B
	rti		; 40

	tsb $F4.b		; 04 F4
	lda #$00.b		; A9 00
	tsb $0440.w		; 0C 40 04
	pea $00B9.w		; F4 B9 00
	ora $0440.w		; 0D 40 04
	pea $00E9.w		; F4 E9 00
	asl $3440.w		; 0E 40 34
	cpy $A5.b		; C4 A5
	brk $0F.b		; 00 0F
	rti		; 40

	bit $D4.b		; 24 D4
	lda $1800.w		; AD 00 18
	rti		; 40

	bit $ADCC.w		; 2C CC AD
	brk $19.b		; 00 19
	rti		; 40

	bit $C4.b,X		; 34 C4
	lda $1A00.w		; AD 00 1A
	rti		; 40

	trb $DEDC.w		; 1C DC DE
	brk $1B.b		; 00 1B
	rti		; 40

	brk $F8.b		; 00 F8
	beq   0.b		; F0 00
	trb $1940.w		; 1C 40 19
	cmp $1D00E1.l,X		; DF E1 00 1D
	rti		; 40

	ora $E9DF.w,Y		; 19 DF E9
	brk $1E.b		; 00 1E
	rti		; 40

	tsb $A0EC.w		; 0C EC A0
	brk $1F.b		; 00 1F
	rti		; 40

	tsb $A8EC.w		; 0C EC A8
	brk $20.b		; 00 20
	rti		; 40

	tsb $B0EC.w		; 0C EC B0
	brk $21.b		; 00 21
	rti		; 40

	tsb $B8EC.w		; 0C EC B8
	brk $22.b		; 00 22
	rti		; 40

	tsb $C0EC.w		; 0C EC C0
	brk $23.b		; 00 23
	rti		; 40

	tsb $C8EC.w		; 0C EC C8
	brk $24.b		; 00 24
	rti		; 40

	tsb $D0EC.w		; 0C EC D0
	brk $25.b		; 00 25
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b,X)		; E1 00
	rol $40.b		; 26 40
	inc $F8FA.w,X		; FE FA F8
	brk $27.b		; 00 27
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	sbc ($00.b),Y		; F1 00
	plp		; 28
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	sbc $2900.w,Y		; F9 00 29
	rti		; 40

	ora $00F9D9.l,X		; 1F D9 F9 00
	rol A		; 2A
	rti		; 40

	ora ($F8.b,S),Y		; 13 F8
	sed		; F8
	sbc ($08.b),Y		; F1 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	lda #$08.b		; A9 08
	cop $48.b		; 02 48
	ora ($EF.b,X)		; 01 EF
	cmp $0408.w,Y		; D9 08 04
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	cmp ($08.b,X)		; C1 08
	asl $48.b		; 06 48
	php		; 08
	beq -71.b		; F0 B9
	brk $08.b		; 00 08
	rti		; 40

	bpl -24.b		; 10 E8
	lda $0900.w,Y		; B9 00 09
	rti		; 40

	inx		; E8
	bpl -74.b		; 10 B6
	brk $0A.b		; 00 0A
	rti		; 40

	beq   8.b		; F0 08
	ldx $00.b,Y		; B6 00
	phd		; 0B
	rti		; 40

	sed		; F8
	brk $B6.b		; 00 B6
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $D9FF.w,Y		; F9 FF D9
	brk $0D.b		; 00 0D
	rti		; 40

	bpl -24.b		; 10 E8
	lda ($00.b),Y		; B1 00
	asl $FF40.w		; 0E 40 FF
	sbc $00E9.w,Y		; F9 E9 00
	ora $F10740.l		; 0F 40 07 F1
	sbc #$00.b		; E9 00
	clc		; 18
	rti		; 40

	brk $F8.b		; 00 F8
	lda $1900.w,Y		; B9 00 19
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp ($00.b,X)		; C1 00
	inc A		; 1A
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp #$00.b		; C9 00
	tas		; 1B
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cmp ($00.b),Y		; D1 00
	trb $FF40.w		; 1C 40 FF
	sbc $00D1.w,Y		; F9 D1 00
	ora $0740.w,X		; 1D 40 07
	sbc ($D1.b),Y		; F1 D1
	brk $1E.b		; 00 1E
	rti		; 40

	ora $EF01.w,X		; 1D 01 EF
	sbc ($08.b,X)		; E1 08
	brk $48.b		; 00 48
	ora $ECD7.w,Y		; 19 D7 EC
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $C1.b,X		; F6 C1
	php		; 08
	tsb $48.b		; 04 48
	asl A		; 0A
	inc $C1.b		; E6 C1
	php		; 08
	asl $48.b		; 06 48
	jsr ($D1F4.w,X)		; FC F4 D1
	php		; 08
	php		; 08
	pha		; 48
	ora #$EF.b		; 09 EF
	lda $0A00.w,Y		; B9 00 0A
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sbc ($00.b,X)		; E1 00
	phd		; 0B
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sbc #$00.b		; E9 00
	tsb $0140.w		; 0C 40 01
	sbc [$F1.b],Y		; F7 F1
	brk $0D.b		; 00 0D
	rti		; 40

	ora #$EF.b		; 09 EF
	sbc ($00.b),Y		; F1 00
	asl $1140.w		; 0E 40 11
	sbc [$F1.b]		; E7 F1
	brk $0F.b		; 00 0F
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	lda $1A00.w,Y		; B9 00 1A
	rti		; 40

	and #$CF.b		; 29 CF
	cpx $1B00.w		; EC 00 1B
	rti		; 40

	and #$CF.b		; 29 CF
	pea $1C00.w		; F4 00 1C
	rti		; 40

	ora $FCDF.w,Y		; 19 DF FC
	brk $1D.b		; 00 1D
	rti		; 40

	and ($D7.b,X)		; 21 D7
	jsr ($1E00.w,X)		; FC 00 1E
	rti		; 40

	and #$CF.b		; 29 CF
	jsr ($1F00.w,X)		; FC 00 1F
	rti		; 40

	and ($C7.b),Y		; 31 C7
	inc $00.b		; E6 00
	jsr $3140.w		; 20 40 31
	cmp [$EE.b]		; C7 EE
	brk $21.b		; 00 21
	rti		; 40

	sbc $EFFF.w,Y		; F9 FF EF
	brk $22.b		; 00 22
	rti		; 40

	sbc $F7FF.w,Y		; F9 FF F7
	brk $23.b		; 00 23
	rti		; 40

	ora $B9DF.w,Y		; 19 DF B9
	brk $24.b		; 00 24
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc $2500.w,Y		; F9 00 25
	rti		; 40

	inc A		; 1A
	dec $00C1.w,X		; DE C1 00
	rol $40.b		; 26 40
	inc A		; 1A
	dec $00C9.w,X		; DE C9 00
	and [$40.b]		; 27 40
	trb $E4.b		; 14 E4
	cmp ($00.b),Y		; D1 00
	plp		; 28
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sbc $2900.w,Y		; F9 00 29
	rti		; 40

	tsb $D1EC.w		; 0C EC D1
	brk $2A.b		; 00 2A
	rti		; 40

	tsb $D9EC.w		; 0C EC D9
	brk $2B.b		; 00 2B
	rti		; 40

	bit $3A.b		; 24 3A
	ldx $E1.b,Y		; B6 E1
	php		; 08
	brk $48.b		; 00 48
	rol A		; 2A
	dec $E1.b		; C6 E1
	php		; 08
	cop $48.b		; 02 48
	rol A		; 2A
	dec $F1.b		; C6 F1
	php		; 08
	tsb $48.b		; 04 48
	inc A		; 1A
	dec $F1.b,X		; D6 F1
	php		; 08
	asl $48.b		; 06 48
	ora ($DE.b)		; 12 DE
	cmp ($08.b)		; D2 08
	php		; 08
	pha		; 48
	ora ($DE.b)		; 12 DE
	sta ($08.b)		; 92 08
	asl A		; 0A
	pha		; 48
	jsl $0892CE.l		; 22 CE 92 08
	tsb $3348.w		; 0C 48 33
	lda $08D2.w,X		; BD D2 08
	asl $1448.w		; 0E 48 14
	jmp.w [$08A2]		; DC A2 08
	jsr $3448.w		; 20 48 34
	ldy $08B2.w,X		; BC B2 08
	jsl $BC3448.l		; 22 48 34 BC
	rep #$08		; C2 08
	bit $48.b		; 24 48
	asl $EA.b		; 06 EA
	lda ($08.b)		; B2 08
	rol $48.b		; 26 48
	asl $DA.b,X		; 16 DA
	lda ($08.b)		; B2 08
	plp		; 28
	pha		; 48
	asl $DA.b,X		; 16 DA
	rep #$08		; C2 08
	rol A		; 2A
	pha		; 48
	bmi -56.b		; 30 C8
	tax		; AA
	brk $2C.b		; 00 2C
	rti		; 40

	eor $B5.b,S		; 43 B5
	cmp ($00.b)		; D2 00
	and $4340.w		; 2D 40 43
	lda $DA.b,X		; B5 DA
	brk $2E.b		; 00 2E
	rti		; 40

	tsb $AAEC.w		; 0C EC AA
	brk $2F.b		; 00 2F
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc ($00.b)		; F2 00
	bit $0440.w,X		; 3C 40 04
	pea $00FA.w		; F4 FA 00
	and $3840.w,X		; 3D 40 38
	cpy #$AA.b		; C0 AA
	brk $3E.b		; 00 3E
	rti		; 40

	jsl $00E9D6.l		; 22 D6 E9 00
	and $E61240.l,X		; 3F 40 12 E6
	sbc $4000.w,Y		; F9 00 40
	rti		; 40

	mvp $BA,$B4		; 44 B4 BA
	brk $41.b		; 00 41
	rti		; 40

	mvp $C2,$B4		; 44 B4 C2
	brk $42.b		; 00 42
	rti		; 40

	mvp $CA,$B4		; 44 B4 CA
	brk $43.b		; 00 43
	rti		; 40

	ora $EAEB.w		; 0D EB EA
	brk $44.b		; 00 44
	rti		; 40

	plp		; 28
	bne -94.b		; D0 A2
	brk $45.b		; 00 45
	rti		; 40

	bmi -56.b		; 30 C8
	ldx #$00.b		; A2 00
	lsr $40.b		; 46 40
	dec A		; 3A
	ldx $00F6.w,Y		; BE F6 00
	eor [$40.b]		; 47 40
	asl $F2.b		; 06 F2
	rep #$00		; C2 00
	pha		; 48
	rti		; 40

	asl $C2EA.w		; 0E EA C2
	brk $49.b		; 00 49
	rti		; 40

	asl $CAEA.w		; 0E EA CA
	brk $4A.b		; 00 4A
	rti		; 40

	asl $F2.b		; 06 F2
	cpx $4B00.w		; EC 00 4B
	rti		; 40

	ora $00E2E9.l		; 0F E9 E2 00
	jmp $1740.w		; 4C 40 17
	sbc ($E2.b,X)		; E1 E2
	brk $4D.b		; 00 4D
	rti		; 40

	and $E9.b,S		; 23 E9
	ora [$A2.b]		; 07 A2
	php		; 08
	brk $48.b		; 00 48
	ora ($EF.b,X)		; 01 EF
	txs		; 9A
	php		; 08
	cop $48.b		; 02 48
	ora ($EF.b,X)		; 01 EF
	tax		; AA
	php		; 08
	tsb $48.b		; 04 48
	ora ($EF.b,X)		; 01 EF
	tsx		; BA
	php		; 08
	asl $48.b		; 06 48
	and #$C7.b		; 29 C7
	cmp ($08.b,S),Y		; D3 08
	php		; 08
	pha		; 48
	ora $A7D7.w,Y		; 19 D7 A7
	php		; 08
	asl A		; 0A
	pha		; 48
	tas		; 1B
	cmp $E3.b,X		; D5 E3
	php		; 08
	tsb $2B48.w		; 0C 48 2B
	cmp $E3.b		; C5 E3
	php		; 08
	asl $FC48.w		; 0E 48 FC
	pea $08CA.w		; F4 CA 08
	jsr $0E48.w		; 20 48 0E
.ACCU 8
.INDEX 8
	sep #$F3		; E2 F3
	php		; 08
	jsl $D21E48.l		; 22 48 1E D2
	sbc ($08.b,S),Y		; F3 08
	bit $48.b		; 24 48
	sbc $AAFF.w,Y		; F9 FF AA
	brk $26.b		; 00 26
	rti		; 40

	sbc $B2FF.w,Y		; F9 FF B2
	brk $27.b		; 00 27
	rti		; 40

	sbc $BAFF.w,Y		; F9 FF BA
	brk $28.b		; 00 28
	rti		; 40

	sbc $C2FF.w,Y		; F9 FF C2
	brk $29.b		; 00 29
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	lda $00.b,S		; A3 00
	rol A		; 2A
	rti		; 40

	bmi -56.b		; 30 C8
	cmp $00.b,S		; C3 00
	pld		; 2B
	rti		; 40

	and #$CF.b		; 29 CF
	ldx $2C00.w		; AE 00 2C
	rti		; 40

	bmi -56.b		; 30 C8
	wai		; CB
	brk $2D.b		; 00 2D
	rti		; 40

	bmi -56.b		; 30 C8
	clv		; B8
	brk $2E.b		; 00 2E
	rti		; 40

	sbc ($07.b),Y		; F1 07
	lda $2F00.w,Y		; B9 00 2F
	rti		; 40

	sbc ($07.b),Y		; F1 07
	txs		; 9A
	brk $36.b		; 00 36
	rti		; 40

	bit $D4.b		; 24 D4
	clv		; B8
	brk $37.b		; 00 37
	rti		; 40

	bit $D4.b		; 24 D4
	cpy #$00.b		; C0 00
	sec		; 38
	rti		; 40

	ora $DBDB.w,X		; 1D DB DB
	brk $39.b		; 00 39
	rti		; 40

	and $D3.b		; 25 D3
	iny		; C8
	brk $3A.b		; 00 3A
	rti		; 40

	inc $DAFA.w,X		; FE FA DA
	brk $3B.b		; 00 3B
	rti		; 40

	inc $E2FA.w,X		; FE FA E2
	brk $3C.b		; 00 3C
	rti		; 40

	inc $EAFA.w,X		; FE FA EA
	brk $3D.b		; 00 3D
	rti		; 40

	inc $F2FA.w,X		; FE FA F2
	brk $3E.b		; 00 3E
	rti		; 40

	inc $FAFA.w,X		; FE FA FA
	brk $3F.b		; 00 3F
	rti		; 40

	asl $F2.b		; 06 F2
	xce		; FB
	brk $40.b		; 00 40
	rti		; 40

	sbc $9AFF.w,Y		; F9 FF 9A
	brk $41.b		; 00 41
	rti		; 40

	sbc $A2FF.w,Y		; F9 FF A2
	brk $42.b		; 00 42
	rti		; 40

	asl $E4EA.w		; 0E EA E4
	brk $43.b		; 00 43
	rti		; 40

	and $F8.b,S		; 23 F8
	sed		; F8
	lda [$08.b],Y		; B7 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	lda [$08.b]		; A7 08
	cop $48.b		; 02 48
	ora ($EF.b,X)		; 01 EF
	lda [$08.b]		; A7 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $CF.b,X		; F6 CF
	php		; 08
	asl $48.b		; 06 48
	php		; 08
	beq -65.b		; F0 BF
	brk $08.b		; 00 08
	rti		; 40

	sed		; F8
	brk $C7.b		; 00 C7
	brk $09.b		; 00 09
	rti		; 40

	brk $F8.b		; 00 F8
	cmp [$00.b]		; C7 00
	asl A		; 0A
	rti		; 40

	php		; 08
	beq -57.b		; F0 C7
	brk $0B.b		; 00 0B
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	lda #$00.b		; A9 00
	tsb $F040.w		; 0C 40 F0
	php		; 08
	lda [$00.b],Y		; B7 00
	ora $F840.w		; 0D 40 F8
	brk $97.b		; 00 97
	brk $0E.b		; 00 0E
	rti		; 40

	sbc ($06.b)		; F2 06
	sta $400F00.l,X		; 9F 00 0F 40
	plx		; FA
	inc $009F.w,X		; FE 9F 00
	clc		; 18
	rti		; 40

	cop $F6.b		; 02 F6
	sta $401900.l,X		; 9F 00 19 40
	php		; 08
	beq -73.b		; F0 B7
	brk $1A.b		; 00 1A
	rti		; 40

	trb $E4.b		; 14 E4
	lda $1B00.w		; AD 00 1B
	rti		; 40

	jsr ($DFFC.w,X)		; FC FC DF
	brk $1C.b		; 00 1C
	rti		; 40

	jsr ($E7FC.w,X)		; FC FC E7
	brk $1D.b		; 00 1D
	rti		; 40

	jsr ($EFFC.w,X)		; FC FC EF
	brk $1E.b		; 00 1E
	rti		; 40

	jsr ($F7FC.w,X)		; FC FC F7
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $BB0B.w		; ED 0B BB
	brk $20.b		; 00 20
	rti		; 40

	jsr $D1D0.w		; 20 D0 D1
	php		; 08
	and ($48.b,X)		; 21 48
	jsr $E1D0.w		; 20 D0 E1
	php		; 08
	and $48.b,S		; 23 48
	trb $F1D4.w		; 1C D4 F1
	php		; 08
	and $48.b		; 25 48
	and $08B9C1.l		; 2F C1 B9 08
	and [$48.b]		; 27 48
	and $08C9C1.l		; 2F C1 C9 08
	and #$48.b		; 29 48
	and ($D7.b,X)		; 21 D7
	lda ($00.b,X)		; A1 00
	pld		; 2B
	rti		; 40

	and #$CF.b		; 29 CF
	lda #$00.b		; A9 00
	pld		; 2B
	rti		; 40

	and ($C7.b),Y		; 31 C7
	inc $00.b,X		; F6 00
	bit $2040.w		; 2C 40 20
	cld		; D8
	lda ($00.b),Y		; B1 00
	and $2C40.w		; 2D 40 2C
	cpy $00F7.w		; CC F7 00
	rol $1F40.w		; 2E 40 1F
	cmp $00B9.w,Y		; D9 B9 00
	and $D91F40.l		; 2F 40 1F D9
	cmp ($00.b,X)		; C1 00
	bmi  64.b		; 30 40
	ora ($E7.b),Y		; 11 E7
	sta $3B00.w,Y		; 99 00 3B
	rti		; 40

	ora $A1DF.w,Y		; 19 DF A1
	brk $3B.b		; 00 3B
	rti		; 40

	ora $00.b,X		; 15 00
	beq -79.b		; F0 B1
	php		; 08
	brk $48.b		; 00 48
	clc		; 18
	cld		; D8
	sbc #$08.b		; E9 08
	cop $48.b		; 02 48
	bpl -32.b		; 10 E0
	lda ($08.b)		; B2 08
	tsb $48.b		; 04 48
	phd		; 0B
	sbc $A2.b		; E5 A2
	php		; 08
	asl $48.b		; 06 48
	tsb $EC.b		; 04 EC
	cmp ($08.b),Y		; D1 08
	php		; 08
	pha		; 48
	sbc $08E1F1.l,X		; FF F1 E1 08
	asl A		; 0A
	pha		; 48
	sbc $08C1F1.l,X		; FF F1 C1 08
	tsb $0348.w		; 0C 48 03
	sbc $A1.b,X		; F5 A1
	brk $0E.b		; 00 0E
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda #$00.b		; A9 00
	ora $00F840.l		; 0F 40 F8 00
	sbc $1E00.w,Y		; F9 00 1E
	rti		; 40

	xce		; FB
	sbc $00AC.w,X		; FD AC 00
	ora $FCFC40.l,X		; 1F 40 FC FC
	sbc ($00.b),Y		; F1 00
	jsr $2040.w		; 20 40 20
	cld		; D8
	sbc $2100.w,Y		; F9 00 21
	rti		; 40

	trb $E4.b		; 14 E4
	cmp ($00.b),Y		; D1 00
	jsl $E41440.l		; 22 40 14 E4
	cmp $2300.w,Y		; D9 00 23
	rti		; 40

	ora $00E1E9.l		; 0F E9 E1 00
	bit $40.b		; 24 40
	ora [$E1.b],Y		; 17 E1
	sbc ($00.b,X)		; E1 00
	and $40.b		; 25 40
	jsr $BAD8.w		; 20 D8 BA
	brk $26.b		; 00 26
	rti		; 40

	plp		; 28
	bne  -7.b		; D0 F9
	brk $27.b		; 00 27
	rti		; 40

	ora $00C1E9.l		; 0F E9 C1 00
	plp		; 28
	rti		; 40

	ora $00C9E9.l		; 0F E9 C9 00
	and #$40.b		; 29 40
	ora ($20.b,S),Y		; 13 20
	bne -71.b		; D0 B9
	php		; 08
	brk $48.b		; 00 48
	bpl -32.b		; 10 E0
	lda $0208.w,Y		; B9 08 02
	pha		; 48
	clc		; 18
	cld		; D8
	cmp ($08.b),Y		; D1 08
	tsb $48.b		; 04 48
	php		; 08
	inx		; E8
	cmp $0608.w,Y		; D9 08 06
	pha		; 48
	php		; 08
	inx		; E8
	cmp #$08.b		; C9 08
	php		; 08
	pha		; 48
	ora $A9E3.w		; 0D E3 A9
	php		; 08
	asl A		; 0A
	pha		; 48
	ora $A9D3.w,X		; 1D D3 A9
	php		; 08
	tsb $0848.w		; 0C 48 08
	beq -63.b		; F0 C1
	brk $0E.b		; 00 0E
	rti		; 40

	clc		; 18
	cpx #$C9.b		; E0 C9
	brk $0F.b		; 00 0F
	rti		; 40

	brk $F8.b		; 00 F8
	inx		; E8
	brk $1E.b		; 00 1E
	rti		; 40

	sbc $F1FF.w,Y		; F9 FF F1
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $F9FF.w,Y		; F9 FF F9
	brk $20.b		; 00 20
	rti		; 40

	plp		; 28
	bne  -7.b		; D0 F9
	brk $21.b		; 00 21
	rti		; 40

	jsr $F9D8.w		; 20 D8 F9
	brk $22.b		; 00 22
	rti		; 40

	ora $F3.b		; 05 F3
	sbc $00.b		; E5 00
	and $40.b,S		; 23 40
	sbc $F0FB.w,X		; FD FB F0
	brk $24.b		; 00 24
	rti		; 40

	ora $00E1D9.l,X		; 1F D9 E1 00
	and $40.b		; 25 40
	ora $00E9D9.l,X		; 1F D9 E9 00
	rol $40.b		; 26 40
	ora $00F1D9.l,X		; 1F D9 F1 00
	and [$40.b]		; 27 40
	tas		; 1B
	bpl -32.b		; 10 E0
	lda $0008.w,Y		; B9 08 00
	pha		; 48
	jsr $B9D0.w		; 20 D0 B9
	php		; 08
	cop $48.b		; 02 48
	clc		; 18
	cld		; D8
	lda #$08.b		; A9 08
	tsb $48.b		; 04 48
	phd		; 0B
	sbc $C9.b		; E5 C9
	php		; 08
	asl $48.b		; 06 48
	jsr $D9D8.w		; 20 D8 D9
	brk $08.b		; 00 08
	rti		; 40

	sed		; F8
	brk $F9.b		; 00 F9
	brk $09.b		; 00 09
	rti		; 40

	php		; 08
	beq -63.b		; F0 C1
	brk $0A.b		; 00 0A
	rti		; 40

	php		; 08
	beq -39.b		; F0 D9
	brk $0B.b		; 00 0B
	rti		; 40

	bpl -24.b		; 10 E8
	cmp $0C00.w,Y		; D9 00 0C
	rti		; 40

	plp		; 28
	bne -87.b		; D0 A9
	brk $0D.b		; 00 0D
	rti		; 40

	plp		; 28
	bne -79.b		; D0 B1
	brk $0E.b		; 00 0E
	rti		; 40

	bmi -56.b		; 30 C8
	bcs   0.b		; B0 00
	ora $C83040.l		; 0F 40 30 C8
	clv		; B8
	brk $18.b		; 00 18
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc ($00.b,X)		; E1 00
	ora $0940.w,Y		; 19 40 09
	sbc $1A00E1.l		; EF E1 00 1A
	rti		; 40

	and $D5.b,S		; 23 D5
	cmp #$00.b		; C9 00
	tas		; 1B
	rti		; 40

	clc		; 18
	cpx #$D9.b		; E0 D9
	brk $1C.b		; 00 1C
	rti		; 40

	tas		; 1B
	cmp $00C9.w,X		; DD C9 00
	ora $1B40.w,X		; 1D 40 1B
	cmp $00D1.w,X		; DD D1 00
	asl $FC40.w,X		; 1E 40 FC
	jsr ($00F1.w,X)		; FC F1 00
	ora $DA1E40.l,X		; 1F 40 1E DA
	sbc $2000.w,Y		; F9 00 20
	rti		; 40

	rol $D2.b		; 26 D2
	sbc $2100.w,Y		; F9 00 21
	rti		; 40

	ora $00E1D9.l,X		; 1F D9 E1 00
	jsl $F9FF40.l		; 22 40 FF F9
	sbc #$00.b		; E9 00
	and $40.b,S		; 23 40
	ora [$F1.b]		; 07 F1
	sbc #$00.b		; E9 00
	bit $40.b		; 24 40
	ora $00E9D9.l,X		; 1F D9 E9 00
	and $40.b		; 25 40
	ora $00F1D9.l,X		; 1F D9 F1 00
	rol $40.b		; 26 40
	asl $F8F8.w		; 0E F8 F8
	cmp $08.b		; C5 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	sbc $08.b,X		; F5 08
	cop $48.b		; 02 48
	sed		; F8
	sed		; F8
	cmp $08.b,X		; D5 08
	tsb $48.b		; 04 48
	sed		; F8
	sed		; F8
	sbc $08.b		; E5 08
	asl $48.b		; 06 48
	php		; 08
	beq -29.b		; F0 E3
	brk $08.b		; 00 08
	rti		; 40

	php		; 08
	beq -21.b		; F0 EB
	brk $09.b		; 00 09
	rti		; 40

	php		; 08
	beq -13.b		; F0 F3
	brk $0A.b		; 00 0A
	rti		; 40

	php		; 08
	beq  -5.b		; F0 FB
	brk $0B.b		; 00 0B
	rti		; 40

	bpl -24.b		; 10 E8
	sbc ($00.b,X)		; E1 00
	tsb $0840.w		; 0C 40 08
	beq -53.b		; F0 CB
	brk $0D.b		; 00 0D
	rti		; 40

	php		; 08
	beq -45.b		; F0 D3
	brk $0E.b		; 00 0E
	rti		; 40

	php		; 08
	beq -37.b		; F0 DB
	brk $0F.b		; 00 0F
	rti		; 40

	beq   8.b		; F0 08
	cmp $1800.w,X		; DD 00 18
	rti		; 40

	beq   8.b		; F0 08
	sbc $00.b		; E5 00
	ora $1440.w,Y		; 19 40 14
	brk $F0.b		; 00 F0
	cmp #$08.b		; C9 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	sbc ($08.b,X)		; E1 08
	cop $48.b		; 02 48
	beq   0.b		; F0 00
	lda ($08.b),Y		; B1 08
	tsb $48.b		; 04 48
	brk $F0.b		; 00 F0
	lda ($08.b),Y		; B1 08
	asl $48.b		; 06 48
	jsr ($99F4.w,X)		; FC F4 99
	php		; 08
	php		; 08
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	sbc ($08.b),Y		; F1 08
	asl A		; 0A
	pha		; 48
	sed		; F8
	brk $A9.b		; 00 A9
	brk $0C.b		; 00 0C
	rti		; 40

	brk $F8.b		; 00 F8
	lda #$00.b		; A9 00
	ora $0840.w		; 0D 40 08
	beq -87.b		; F0 A9
	brk $0E.b		; 00 0E
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cmp ($00.b,X)		; C1 00
	ora $FFF940.l		; 0F 40 F9 FF
	cmp ($00.b,X)		; C1 00
	trb $0140.w		; 1C 40 01
	sbc [$C1.b],Y		; F7 C1
	brk $1D.b		; 00 1D
	rti		; 40

	sbc #$0F.b		; E9 0F
	lda $1E00.w,X		; BD 00 1E
	rti		; 40

	cop $F6.b		; 02 F6
	cmp $1F00.w,Y		; D9 00 1F
	rti		; 40

	asl A		; 0A
	inc $00D9.w		; EE D9 00
	jsr $F840.w		; 20 40 F8
	brk $C9.b		; 00 C9
	brk $21.b		; 00 21
	rti		; 40

	tsb $99EC.w		; 0C EC 99
	brk $22.b		; 00 22
	rti		; 40

	tsb $A1EC.w		; 0C EC A1
	brk $23.b		; 00 23
	rti		; 40

	pea $A304.w		; F4 04 A3
	brk $24.b		; 00 24
	rti		; 40

	sed		; F8
	brk $E9.b		; 00 E9
	brk $25.b		; 00 25
	rti		; 40

	trb $F0.b		; 14 F0
	brk $99.b		; 00 99
	php		; 08
	brk $48.b		; 00 48
	beq   0.b		; F0 00
	lda #$08.b		; A9 08
	cop $48.b		; 02 48
	beq   0.b		; F0 00
	lda $0408.w,Y		; B9 08 04
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp ($08.b),Y		; D1 08
	asl $48.b		; 06 48
	sbc ($FD.b,S),Y		; F3 FD
	sbc ($08.b,X)		; E1 08
	php		; 08
	pha		; 48
	brk $F8.b		; 00 F8
	lda ($00.b,X)		; A1 00
	asl A		; 0A
	rti		; 40

	brk $F8.b		; 00 F8
	lda #$00.b		; A9 00
	phd		; 0B
	rti		; 40

	brk $F8.b		; 00 F8
	lda ($00.b),Y		; B1 00
	tsb $0040.w		; 0C 40 00
	sed		; F8
	lda $0D00.w,Y		; B9 00 0D
	rti		; 40

	brk $F8.b		; 00 F8
	cmp ($00.b,X)		; C1 00
	asl $F040.w		; 0E 40 F0
	php		; 08
	cmp #$00.b		; C9 00
	ora $00F840.l		; 0F 40 F8 00
	cmp #$00.b		; C9 00
	inc A		; 1A
	rti		; 40

	brk $F8.b		; 00 F8
	cmp #$00.b		; C9 00
	tas		; 1B
	rti		; 40

	php		; 08
	beq -86.b		; F0 AA
	brk $1C.b		; 00 1C
	rti		; 40

	php		; 08
	beq -78.b		; F0 B2
	brk $1D.b		; 00 1D
	rti		; 40

	inx		; E8
	bpl -95.b		; 10 A1
	brk $1E.b		; 00 1E
	rti		; 40

	brk $F8.b		; 00 F8
	sta $1F00.w,Y		; 99 00 1F
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b),Y		; F1 00
	jsr $FB40.w		; 20 40 FB
	sbc $00F1.w,X		; FD F1 00
	and ($40.b,X)		; 21 40
	sbc $F9FB.w,X		; FD FB F9
	brk $22.b		; 00 22
	rti		; 40

	ora ($00.b),Y		; 11 00
	beq -71.b		; F0 B9
	php		; 08
	brk $48.b		; 00 48
	ora ($EF.b,X)		; 01 EF
	sbc ($08.b),Y		; F1 08
	cop $48.b		; 02 48
	ora $ED.b,S		; 03 ED
	cmp #$08.b		; C9 08
	tsb $48.b		; 04 48
	ora $ED.b,S		; 03 ED
	cmp $0608.w,Y		; D9 08 06
	pha		; 48
	inc $99F2.w,X		; FE F2 99
	php		; 08
	php		; 08
	pha		; 48
	sbc $08A9F1.l,X		; FF F1 A9 08
	asl A		; 0A
	pha		; 48
	inx		; E8
	bpl -74.b		; 10 B6
	brk $0C.b		; 00 0C
	rti		; 40

	sed		; F8
	brk $B9.b		; 00 B9
	brk $0D.b		; 00 0D
	rti		; 40

	cpx #$18.b		; E0 18
	lda ($00.b),Y		; B1 00
	asl $1040.w		; 0E 40 10
	inx		; E8
	lda $0F00.w,Y		; B9 00 0F
	rti		; 40

	asl $F2.b		; 06 F2
	sbc #$00.b		; E9 00
	trb $1040.w		; 1C 40 10
	inx		; E8
	cmp ($00.b,X)		; C1 00
	ora $0E40.w,X		; 1D 40 0E
	nop		; EA
	sta $1E00.w,Y		; 99 00 1E
	rti		; 40

	asl $A1EA.w		; 0E EA A1
	brk $1F.b		; 00 1F
	rti		; 40

	beq   8.b		; F0 08
	tsx		; BA
	brk $20.b		; 00 20
	rti		; 40

	ora $00A9E9.l		; 0F E9 A9 00
	and ($40.b,X)		; 21 40
	ora $00B1E9.l		; 0F E9 B1 00
	jsl $F71840.l		; 22 40 18 F7
	sbc $08A9.w,Y		; F9 A9 08
	brk $48.b		; 00 48
	brk $F8.b		; 00 F8
	lda ($00.b,X)		; A1 00
	cop $40.b		; 02 40
	php		; 08
	beq -95.b		; F0 A1
	brk $03.b		; 00 03
	rti		; 40

	sed		; F8
	brk $B9.b		; 00 B9
	brk $04.b		; 00 04
	rti		; 40

	brk $F8.b		; 00 F8
	lda $0500.w,Y		; B9 00 05
	rti		; 40

	php		; 08
	beq -71.b		; F0 B9
	brk $06.b		; 00 06
	rti		; 40

	bpl -24.b		; 10 E8
	lda $0700.w,Y		; B9 00 07
	rti		; 40

	plx		; FA
	inc $0099.w,X		; FE 99 00
	php		; 08
	rti		; 40

	cop $F6.b		; 02 F6
	sta $0900.w,Y		; 99 00 09
	rti		; 40

	ora $00A9E9.l		; 0F E9 A9 00
	asl A		; 0A
	rti		; 40

	sed		; F8
	brk $A1.b		; 00 A1
	brk $0B.b		; 00 0B
	rti		; 40

	ora [$F1.b]		; 07 F1
	lda #$00.b		; A9 00
	tsb $0740.w		; 0C 40 07
	sbc ($B1.b),Y		; F1 B1
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $00AE09.l		; EF 09 AE 00
	asl $F940.w		; 0E 40 F9
	sbc [$E1.b],Y		; F7 E1
	php		; 08
	ora ($48.b)		; 12 48
	pea $C1FC.w		; F4 FC C1
	php		; 08
	trb $48.b		; 14 48
	sbc [$F9.b],Y		; F7 F9
	cmp ($08.b),Y		; D1 08
	asl $48.b,X		; 16 48
	tsb $F4.b		; 04 F4
	sbc ($00.b),Y		; F1 00
	clc		; 18
	rti		; 40

	php		; 08
	beq  -7.b		; F0 F9
	brk $19.b		; 00 19
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b,X)		; C1 00
	inc A		; 1A
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp #$00.b		; C9 00
	tas		; 1B
	rti		; 40

	sbc $00F909.l		; EF 09 F9 00
	trb $F740.w		; 1C 40 F7
	ora ($F9.b,X)		; 01 F9
	brk $1D.b		; 00 1D
	rti		; 40

	sed		; F8
	brk $F1.b		; 00 F1
	brk $1E.b		; 00 1E
	rti		; 40

	ora ($00.b)		; 12 00
	beq -95.b		; F0 A1
	php		; 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	lda ($08.b),Y		; B1 08
	cop $48.b		; 02 48
	beq   0.b		; F0 00
	lda #$08.b		; A9 08
	tsb $48.b		; 04 48
	bpl -24.b		; 10 E8
	lda $0600.w,Y		; B9 00 06
	rti		; 40

	sed		; F8
	brk $A1.b		; 00 A1
	brk $07.b		; 00 07
	rti		; 40

	sed		; F8
	brk $B9.b		; 00 B9
	brk $08.b		; 00 08
	rti		; 40

	xce		; FB
	sbc $0099.w,X		; FD 99 00
	ora #$40.b		; 09 40
	ora $F5.b,S		; 03 F5
	sta $0A00.w,Y		; 99 00 0A
	rti		; 40

	sbc $E1F7.w,Y		; F9 F7 E1
	php		; 08
	asl $48.b,X		; 16 48
	pea $C1FC.w		; F4 FC C1
	php		; 08
	clc		; 18
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	cmp ($08.b),Y		; D1 08
	inc A		; 1A
	pha		; 48
	tsb $F4.b		; 04 F4
	sbc ($00.b),Y		; F1 00
	trb $0840.w		; 1C 40 08
	beq  -7.b		; F0 F9
	brk $1D.b		; 00 1D
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b,X)		; C1 00
	asl $0440.w,X		; 1E 40 04
	pea $00C9.w		; F4 C9 00
	ora $09EF40.l,X		; 1F 40 EF 09
	sbc $2000.w,Y		; F9 00 20
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc $2100.w,Y		; F9 00 21
	rti		; 40

	sed		; F8
	brk $F1.b		; 00 F1
	brk $22.b		; 00 22
	rti		; 40

	ora ($F0.b)		; 12 F0
	brk $B1.b		; 00 B1
	php		; 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	lda ($08.b),Y		; B1 08
	cop $48.b		; 02 48
	sed		; F8
	sed		; F8
	lda ($08.b,X)		; A1 08
	tsb $48.b		; 04 48
	bpl -24.b		; 10 E8
	lda $0600.w,Y		; B9 00 06
	rti		; 40

	php		; 08
	beq -95.b		; F0 A1
	brk $07.b		; 00 07
	rti		; 40

	php		; 08
	beq -87.b		; F0 A9
	brk $08.b		; 00 08
	rti		; 40

	xce		; FB
	sbc $0099.w,X		; FD 99 00
	ora #$40.b		; 09 40
	ora $F5.b,S		; 03 F5
	sta $0A00.w,Y		; 99 00 0A
	rti		; 40

	sbc $E1F7.w,Y		; F9 F7 E1
	php		; 08
	asl $48.b,X		; 16 48
	pea $C1FC.w		; F4 FC C1
	php		; 08
	clc		; 18
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	cmp ($08.b),Y		; D1 08
	inc A		; 1A
	pha		; 48
	tsb $F4.b		; 04 F4
	sbc ($00.b),Y		; F1 00
	trb $0840.w		; 1C 40 08
	beq  -7.b		; F0 F9
	brk $1D.b		; 00 1D
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b,X)		; C1 00
	asl $0440.w,X		; 1E 40 04
	pea $00C9.w		; F4 C9 00
	ora $09EF40.l,X		; 1F 40 EF 09
	sbc $2000.w,Y		; F9 00 20
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc $2100.w,Y		; F9 00 21
	rti		; 40

	sed		; F8
	brk $F1.b		; 00 F1
	brk $22.b		; 00 22
	rti		; 40

	ora $F8.b,X		; 15 F8
	sed		; F8
	dex		; CA
	php		; 08
	brk $48.b		; 00 48
	sbc $FB.b,X		; F5 FB
	ldx #$08.b		; A2 08
	cop $48.b		; 02 48
	sbc $FB.b,X		; F5 FB
	lda ($08.b)		; B2 08
	tsb $48.b		; 04 48
	sbc [$F9.b],Y		; F7 F9
	sep #$08		; E2 08
	asl $48.b		; 06 48
	ora ($F7.b,X)		; 01 F7
	txs		; 9A
	brk $08.b		; 00 08
	rti		; 40

	cop $F6.b		; 02 F6
	sbc ($00.b)		; F2 00
	ora #$40.b		; 09 40
	sbc ($05.b,S),Y		; F3 05
	plx		; FA
	brk $0A.b		; 00 0A
	rti		; 40

	ora $F5.b,S		; 03 F5
	plx		; FA
	brk $0B.b		; 00 0B
	rti		; 40

	pea $F204.w		; F4 04 F2
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $C20B.w		; ED 0B C2
	brk $0D.b		; 00 0D
	rti		; 40

	sed		; F8
	brk $DA.b		; 00 DA
	brk $0E.b		; 00 0E
	rti		; 40

	brk $F8.b		; 00 F8
	phx		; DA
	brk $0F.b		; 00 0F
	rti		; 40

	ora $F3.b		; 05 F3
	ldx #$00.b		; A2 00
	clc		; 18
	rti		; 40

	ora $F3.b		; 05 F3
	tax		; AA
	brk $19.b		; 00 19
	rti		; 40

	ora $F3.b		; 05 F3
	lda ($00.b)		; B2 00
	inc A		; 1A
	rti		; 40

	ora $F3.b		; 05 F3
	tsx		; BA
	brk $1B.b		; 00 1B
	rti		; 40

	sbc $03.b,X		; F5 03
	rep #$00		; C2 00
	trb $FD40.w		; 1C 40 FD
	xce		; FB
	rep #$00		; C2 00
	ora $0540.w,X		; 1D 40 05
	sbc ($C2.b,S),Y		; F3 C2
	brk $1E.b		; 00 1E
	rti		; 40

	ora $C4EB.w		; 0D EB C4
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $9AFF.w,Y		; F9 FF 9A
	brk $20.b		; 00 20
	rti		; 40

	trb $F8.b		; 14 F8
	sed		; F8
	lda ($08.b,X)		; A1 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	lda ($08.b),Y		; B1 08
	cop $48.b		; 02 48
	pea $C1FC.w		; F4 FC C1
	php		; 08
	tsb $48.b		; 04 48
	tsb $EC.b		; 04 EC
	cmp ($08.b,X)		; C1 08
	asl $48.b		; 06 48
	sbc $D1F3.w,X		; FD F3 D1
	php		; 08
	php		; 08
	pha		; 48
	php		; 08
	beq -79.b		; F0 B1
	brk $0A.b		; 00 0A
	rti		; 40

	php		; 08
	beq -71.b		; F0 B9
	brk $0B.b		; 00 0B
	rti		; 40

	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	tsb $FB40.w		; 0C 40 FB
	sbc $00E9.w,X		; FD E9 00
	ora $FB40.w		; 0D 40 FB
	sbc $00F1.w,X		; FD F1 00
	asl $0B40.w		; 0E 40 0B
	sbc $00F1.w		; ED F1 00
	ora $05F340.l		; 0F 40 F3 05
	sbc $1A00.w,Y		; F9 00 1A
	rti		; 40

	xce		; FB
	sbc $00F9.w,X		; FD F9 00
	tas		; 1B
	rti		; 40

	jsr ($99FC.w,X)		; FC FC 99
	brk $1C.b		; 00 1C
	rti		; 40

	tsb $F4.b		; 04 F4
	sta $1D00.w,Y		; 99 00 1D
	rti		; 40

	php		; 08
	beq -23.b		; F0 E9
	brk $1E.b		; 00 1E
	rti		; 40

	php		; 08
	beq -95.b		; F0 A1
	brk $1F.b		; 00 1F
	rti		; 40

	ora $F9EB.w		; 0D EB F9
	brk $20.b		; 00 20
	rti		; 40

	php		; 08
	beq -87.b		; F0 A9
	brk $21.b		; 00 21
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc ($00.b,X)		; E1 00
	jsl $F01240.l		; 22 40 12 F0
	brk $B1.b		; 00 B1
	php		; 08
	brk $48.b		; 00 48
	beq   0.b		; F0 00
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	sbc ($FE.b)		; F2 FE
	cmp ($08.b),Y		; D1 08
	tsb $48.b		; 04 48
	cpx $9904.w		; EC 04 99
	php		; 08
	asl $48.b		; 06 48
	sbc $08E101.l		; EF 01 E1 08
	php		; 08
	pha		; 48
	brk $F8.b		; 00 F8
	cmp #$00.b		; C9 00
	asl A		; 0A
	rti		; 40

	plx		; FA
	inc $00F1.w,X		; FE F1 00
	phd		; 0B
	rti		; 40

	brk $F8.b		; 00 F8
	lda ($00.b),Y		; B1 00
	tsb $EC40.w		; 0C 40 EC
	tsb $00F1.w		; 0C F1 00
	ora $EC40.w		; 0D 40 EC
	tsb $00F9.w		; 0C F9 00
	asl $0040.w		; 0E 40 00
	sed		; F8
	lda $0F00.w,Y		; B9 00 0F
	rti		; 40

	jsr ($99FC.w,X)		; FC FC 99
	brk $1A.b		; 00 1A
	rti		; 40

	jsr ($A1FC.w,X)		; FC FC A1
	brk $1B.b		; 00 1B
	rti		; 40

	cpx $A90C.w		; EC 0C A9
	brk $1C.b		; 00 1C
	rti		; 40

	pea $A904.w		; F4 04 A9
	brk $1D.b		; 00 1D
	rti		; 40

	jsr ($A9FC.w,X)		; FC FC A9
	brk $1E.b		; 00 1E
	rti		; 40

	sbc $F9FB.w,X		; FD FB F9
	brk $1F.b		; 00 1F
	rti		; 40

	brk $F8.b		; 00 F8
	cmp ($00.b,X)		; C1 00
	jsr $1240.w		; 20 40 12
	beq   0.b		; F0 00
	lda ($08.b),Y		; B1 08
	brk $48.b		; 00 48
	beq   0.b		; F0 00
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	pea $D1FC.w		; F4 FC D1
	php		; 08
	tsb $48.b		; 04 48
	cpx $9904.w		; EC 04 99
	php		; 08
	asl $48.b		; 06 48
	sbc $08E101.l		; EF 01 E1 08
	php		; 08
	pha		; 48
	brk $F8.b		; 00 F8
	cmp #$00.b		; C9 00
	asl A		; 0A
	rti		; 40

	sbc $F1FF.w,Y		; F9 FF F1
	brk $0B.b		; 00 0B
	rti		; 40

	brk $F8.b		; 00 F8
	lda ($00.b),Y		; B1 00
	tsb $0040.w		; 0C 40 00
	sed		; F8
	lda $0D00.w,Y		; B9 00 0D
	rti		; 40

	jsr ($99FC.w,X)		; FC FC 99
	brk $0E.b		; 00 0E
	rti		; 40

	jsr ($A1FC.w,X)		; FC FC A1
	brk $0F.b		; 00 0F
	rti		; 40

	cpx $A90C.w		; EC 0C A9
	brk $1A.b		; 00 1A
	rti		; 40

	pea $A904.w		; F4 04 A9
	brk $1B.b		; 00 1B
	rti		; 40

	jsr ($A9FC.w,X)		; FC FC A9
	brk $1C.b		; 00 1C
	rti		; 40

	sbc $F10B.w		; ED 0B F1
	brk $1D.b		; 00 1D
	rti		; 40

	sbc $F90B.w		; ED 0B F9
	brk $1E.b		; 00 1E
	rti		; 40

	sbc $F9FB.w,X		; FD FB F9
	brk $1F.b		; 00 1F
	rti		; 40

	brk $F8.b		; 00 F8
	cmp ($00.b,X)		; C1 00
	jsr $1940.w		; 20 40 19
	beq   0.b		; F0 00
	lda ($08.b,X)		; A1 08
	brk $48.b		; 00 48
	inc $D1F2.w,X		; FE F2 D1
	php		; 08
	cop $48.b		; 02 48
	inc $B102.w		; EE 02 B1
	php		; 08
	tsb $48.b		; 04 48
	inc $B1F2.w,X		; FE F2 B1
	php		; 08
	asl $48.b		; 06 48
	sbc ($07.b),Y		; F1 07
	cmp #$00.b		; C9 00
	php		; 08
	rti		; 40

	sbc $C9FF.w,Y		; F9 FF C9
	brk $09.b		; 00 09
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp #$00.b		; C9 00
	asl A		; 0A
	rti		; 40

	ora #$EF.b		; 09 EF
	cmp #$00.b		; C9 00
	phd		; 0B
	rti		; 40

	plx		; FA
	inc $00E1.w,X		; FE E1 00
	tsb $0240.w		; 0C 40 02
	inc $E1.b,X		; F6 E1
	brk $0D.b		; 00 0D
	rti		; 40

	pea $9904.w		; F4 04 99
	brk $0E.b		; 00 0E
	rti		; 40

	jsr ($99FC.w,X)		; FC FC 99
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc #$00.b		; E9 00
	clc		; 18
	rti		; 40

	sbc $E9FB.w,X		; FD FB E9
	brk $19.b		; 00 19
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b),Y		; F1 00
	inc A		; 1A
	rti		; 40

	php		; 08
	beq -95.b		; F0 A1
	brk $1B.b		; 00 1B
	rti		; 40

	brk $F8.b		; 00 F8
	lda ($00.b,X)		; A1 00
	trb $0040.w		; 1C 40 00
	sed		; F8
	lda #$00.b		; A9 00
	ora $EE40.w,X		; 1D 40 EE
	asl A		; 0A
	cmp ($00.b,X)		; C1 00
	asl $F640.w,X		; 1E 40 F6
	cop $C1.b		; 02 C1
	brk $1F.b		; 00 1F
	rti		; 40

	inc $C1FA.w,X		; FE FA C1
	brk $20.b		; 00 20
	rti		; 40

	asl $F2.b		; 06 F2
	cmp ($00.b,X)		; C1 00
	and ($40.b,X)		; 21 40
	asl $D1EA.w		; 0E EA D1
	brk $22.b		; 00 22
	rti		; 40

	asl $D9EA.w		; 0E EA D9
	brk $23.b		; 00 23
	rti		; 40

	inc $12.b		; E6 12
	ldy $00.b,X		; B4 00
	bit $40.b		; 24 40
	ora $FFF1.w,Y		; 19 F1 FF
	tsx		; BA
	php		; 08
	brk $48.b		; 00 48
	ora #$E7.b		; 09 E7
	cmp $08.b		; C5 08
	cop $48.b		; 02 48
	stp		; DB
	ora $AA.b,X		; 15 AA
	php		; 08
	tsb $48.b		; 04 48
	xba		; EB
	ora $AA.b		; 05 AA
	php		; 08
	asl $48.b		; 06 48
	ora #$EF.b		; 09 EF
	lda ($00.b),Y		; B1 00
	php		; 08
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	lda ($00.b),Y		; B1 00
	ora #$40.b		; 09 40
	ora #$EF.b		; 09 EF
	lda $0A00.w,Y		; B9 00 0A
	rti		; 40

	cmp $BA1F.w,Y		; D9 1F BA
	brk $0B.b		; 00 0B
	rti		; 40

	sbc ($17.b,X)		; E1 17
	tsx		; BA
	brk $0C.b		; 00 0C
	rti		; 40

	sbc #$0F.b		; E9 0F
	tsx		; BA
	brk $0D.b		; 00 0D
	rti		; 40

	cpx #$18.b		; E0 18
	ldx #$00.b		; A2 00
	asl $F140.w		; 0E 40 F1
	ora [$CA.b]		; 07 CA
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $CAFF.w,Y		; F9 FF CA
	brk $18.b		; 00 18
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda $00.b,X		; B5 00
	ora $0140.w,Y		; 19 40 01
	sbc [$BD.b],Y		; F7 BD
	brk $1A.b		; 00 1A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp $00.b		; C5 00
	tas		; 1B
	rti		; 40

	ora #$EF.b		; 09 EF
	cmp $1C00.w,X		; DD 00 1C
	rti		; 40

	inx		; E8
	bpl -94.b		; 10 A2
	brk $1D.b		; 00 1D
	rti		; 40

	ora $AEDF.w,Y		; 19 DF AE
	brk $1E.b		; 00 1E
	rti		; 40

	jsr $AAD8.w		; 20 D8 AA
	brk $1F.b		; 00 1F
	rti		; 40

	php		; 08
	beq -19.b		; F0 ED
	brk $20.b		; 00 20
	rti		; 40

	tsb $D5EC.w		; 0C EC D5
	brk $21.b		; 00 21
	rti		; 40

	and $D3.b		; 25 D3
	lda ($00.b,X)		; A1 00
	jsl $D32540.l		; 22 40 25 D3
	lda #$00.b		; A9 00
	and $40.b,S		; 23 40
	ora [$F1.b]		; 07 F1
	sbc $00.b		; E5 00
	bit $40.b		; 24 40
	ora $A3F3FD.l,X		; 1F FD F3 A3
	php		; 08
	brk $48.b		; 00 48
	sbc $FB.b,X		; F5 FB
	lda ($08.b,S),Y		; B3 08
	cop $48.b		; 02 48
	cmp $CB13.w,X		; DD 13 CB
	php		; 08
	tsb $48.b		; 04 48
	sbc $CB03.w		; ED 03 CB
	php		; 08
	asl $48.b		; 06 48
.INDEX 8
	sep #$16		; E2 16
	cmp $00.b,S		; C3 00
	php		; 08
	rti		; 40

	nop		; EA
	asl $00C3.w		; 0E C3 00
	ora #$40.b		; 09 40
	sbc ($06.b)		; F2 06
	cmp $00.b,S		; C3 00
	asl A		; 0A
	rti		; 40

	plx		; FA
	inc $00C3.w,X		; FE C3 00
	phd		; 0B
	rti		; 40

	cop $F6.b		; 02 F6
	cmp $00.b,S		; C3 00
	tsb $DC40.w		; 0C 40 DC
	trb $00A0.w		; 1C A0 00
	ora $1540.w		; 0D 40 15
	sbc $A3.b,S		; E3 A3
	brk $0E.b		; 00 0E
	rti		; 40

	ora $A3DB.w,X		; 1D DB A3
	brk $0F.b		; 00 0F
	rti		; 40

	and $D3.b		; 25 D3
	lda $00.b,S		; A3 00
	clc		; 18
	rti		; 40

	sbc $B30B.w		; ED 0B B3
	brk $19.b		; 00 19
	rti		; 40

	sbc $CBFB.w,X		; FD FB CB
	brk $1A.b		; 00 1A
	rti		; 40

	bne  40.b		; D0 28
	txy		; 9B
	brk $1B.b		; 00 1B
	rti		; 40

	cld		; D8
	jsr $009B.w		; 20 9B 00
	trb $E140.w		; 1C 40 E1
	ora [$A3.b],Y		; 17 A3
	brk $1D.b		; 00 1D
	rti		; 40

	and ($D7.b,X)		; 21 D7
	plb		; AB
	brk $1E.b		; 00 1E
	rti		; 40

	ora $F3.b		; 05 F3
	lda ($00.b,S),Y		; B3 00
	ora $F30540.l,X		; 1F 40 05 F3
	tyx		; BB
	brk $20.b		; 00 20
	rti		; 40

	ora $A4EB.w		; 0D EB A4
	brk $21.b		; 00 21
	rti		; 40

	inc $D9FA.w,X		; FE FA D9
	brk $22.b		; 00 22
	rti		; 40

	asl $F2.b		; 06 F2
	cmp $2300.w,Y		; D9 00 23
	rti		; 40

	dec $DB1A.w,X		; DE 1A DB
	brk $24.b		; 00 24
	rti		; 40

	inc $12.b		; E6 12
	stp		; DB
	brk $25.b		; 00 25
	rti		; 40

	inc $DB0A.w		; EE 0A DB
	brk $26.b		; 00 26
	rti		; 40

	inc $02.b,X		; F6 02
	stp		; DB
	brk $27.b		; 00 27
	rti		; 40

	inc $12.b		; E6 12
	ldx $00.b		; A6 00
	plp		; 28
	rti		; 40

	sbc [$11.b]		; E7 11
	plb		; AB
	brk $29.b		; 00 29
	rti		; 40

	sbc $00AB09.l		; EF 09 AB 00
	rol A		; 2A
	rti		; 40

	asl $FA.b,X		; 16 FA
	inc $D1.b,X		; F6 D1
	php		; 08
	brk $48.b		; 00 48
	cmp $B113.w,X		; DD 13 B1
	php		; 08
	cop $48.b		; 02 48
	sbc $B103.w		; ED 03 B1
	php		; 08
	tsb $48.b		; 04 48
	sbc $B1F3.w,X		; FD F3 B1
	php		; 08
	asl $48.b		; 06 48
	inc $FA.b,X		; F6 FA
	cmp ($08.b,X)		; C1 08
	php		; 08
	pha		; 48
	phx		; DA
	asl $00A3.w,X		; 1E A3 00
	asl A		; 0A
	rti		; 40

	cpy #$38.b		; C0 38
	dex		; CA
	brk $0B.b		; 00 0B
	rti		; 40

	cpy #$38.b		; C0 38
	rep #$00		; C2 00
	tsb $0A40.w		; 0C 40 0A
	inc $00D1.w		; EE D1 00
	ora $DE40.w		; 0D 40 DE
	inc A		; 1A
	lda #$00.b		; A9 00
	asl $EE40.w		; 0E 40 EE
	asl A		; 0A
	cmp ($00.b,X)		; C1 00
	ora $FAFE40.l		; 0F 40 FE FA
	sbc ($00.b,X)		; E1 00
	inc A		; 1A
	rti		; 40

	asl $F2.b		; 06 F2
	sbc ($00.b,X)		; E1 00
	tas		; 1B
	rti		; 40

	asl A		; 0A
	inc $00D9.w		; EE D9 00
	trb $0640.w		; 1C 40 06
	sbc ($C1.b)		; F2 C1
	brk $1D.b		; 00 1D
	rti		; 40

	asl $F2.b		; 06 F2
	cmp #$00.b		; C9 00
	asl $D640.w,X		; 1E 40 D6
	jsl $1F00BB.l		; 22 BB 00 1F
	rti		; 40

	dec $BD2A.w		; CE 2A BD
	brk $20.b		; 00 20
	rti		; 40

	dec $32.b		; C6 32
	cpy #$00.b		; C0 00
	and ($40.b,X)		; 21 40
	cmp [$21.b],Y		; D7 21
	sta ($00.b,S),Y		; 93 00
	jsl $21D740.l		; 22 40 D7 21
	txy		; 9B
	brk $23.b		; 00 23
	rti		; 40

	cmp $009829.l		; CF 29 98 00
	bit $40.b		; 24 40
	trb $FB.b		; 14 FB
	sbc $C6.b,X		; F5 C6
	php		; 08
	brk $48.b		; 00 48
	phd		; 0B
	sbc $C6.b		; E5 C6
	php		; 08
	cop $48.b		; 02 48
	dec $2A.b		; C6 2A
	stp		; DB
	php		; 08
	tsb $48.b		; 04 48
	dec $1A.b,X		; D6 1A
	dec $08.b		; C6 08
	asl $48.b		; 06 48
	inc $B6F2.w,X		; FE F2 B6
	php		; 08
	php		; 08
	pha		; 48
	inc $AE02.w		; EE 02 AE
	php		; 08
	asl A		; 0A
	pha		; 48
	dec $D32A.w		; CE 2A D3
	brk $0C.b		; 00 0C
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	dec $00.b		; C6 00
	ora $0E40.w		; 0D 40 0E
	nop		; EA
	ldx $0E00.w,Y		; BE 00 0E
	rti		; 40

	dec $22.b,X		; D6 22
	dec $00.b,X		; D6 00
	ora $F50340.l		; 0F 40 03 F5
	dec $00.b,X		; D6 00
	trb $0B40.w		; 1C 40 0B
	sbc $00D6.w		; ED D6 00
	ora $1340.w,X		; 1D 40 13
	sbc $D6.b		; E5 D6
	brk $1E.b		; 00 1E
	rti		; 40

	inc $AEFA.w,X		; FE FA AE
	brk $1F.b		; 00 1F
	rti		; 40

	inc $12.b		; E6 12
	ldx $00.b,Y		; B6 00
	jsr $DE40.w		; 20 40 DE
	inc A		; 1A
	ldx $2100.w,Y		; BE 00 21
	rti		; 40

	inc $12.b		; E6 12
	ldx $2200.w,Y		; BE 00 22
	rti		; 40

	inc $BE0A.w		; EE 0A BE
	brk $23.b		; 00 23
	rti		; 40

	inc $02.b,X		; F6 02
	ldx $2400.w,Y		; BE 00 24
	rti		; 40

	inc $12.b		; E6 12
	dec $00.b		; C6 00
	and $40.b		; 25 40
	ora ($08.b),Y		; 11 08
	inx		; E8
	cmp [$08.b],Y		; D7 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	cmp [$08.b]		; C7 08
	cop $48.b		; 02 48
	asl A		; 0A
	inc $B7.b		; E6 B7
	php		; 08
	tsb $48.b		; 04 48
	asl $A7E2.w		; 0E E2 A7
	php		; 08
	asl $48.b		; 06 48
	brk $F8.b		; 00 F8
	sbc #$00.b		; E9 00
	php		; 08
	rti		; 40

	bpl -24.b		; 10 E8
	cmp [$00.b]		; C7 00
	ora #$40.b		; 09 40
	bpl -24.b		; 10 E8
	cmp $400A00.l		; CF 00 0A 40
	cop $F6.b		; 02 F6
	lda $400B00.l,X		; BF 00 0B 40
	php		; 08
	beq -25.b		; F0 E7
	brk $0C.b		; 00 0C
	rti		; 40

	inc A		; 1A
	dec $00B7.w,X		; DE B7 00
	ora $1A40.w		; 0D 40 1A
	dec $00BF.w,X		; DE BF 00
	asl $FE40.w		; 0E 40 FE
	plx		; FA
	sbc ($00.b),Y		; F1 00
	ora $FAFE40.l		; 0F 40 FE FA
	sbc $1800.w,Y		; F9 00 18
	rti		; 40

	asl $F2.b		; 06 F2
	plb		; AB
	brk $19.b		; 00 19
	rti		; 40

	brk $F8.b		; 00 F8
	sbc ($00.b,X)		; E1 00
	inc A		; 1A
	rti		; 40

	asl $A7DA.w,X		; 1E DA A7
	brk $1B.b		; 00 1B
	rti		; 40

	asl $AFDA.w,X		; 1E DA AF
	brk $1C.b		; 00 1C
	rti		; 40

	ora ($F8.b),Y		; 11 F8
	sed		; F8
	lda $0008.w,Y		; B9 08 00
	pha		; 48
	beq   0.b		; F0 00
	cmp #$08.b		; C9 08
	cop $48.b		; 02 48
	pea $D9FC.w		; F4 FC D9
	php		; 08
	tsb $48.b		; 04 48
	pea $E9FC.w		; F4 FC E9
	php		; 08
	asl $48.b		; 06 48
	brk $F8.b		; 00 F8
	cmp ($00.b),Y		; D1 00
	php		; 08
	rti		; 40

	php		; 08
	beq -67.b		; F0 BD
	brk $09.b		; 00 09
	rti		; 40

	php		; 08
	beq -59.b		; F0 C5
	brk $0A.b		; 00 0A
	rti		; 40

	php		; 08
	beq -51.b		; F0 CD
	brk $0B.b		; 00 0B
	rti		; 40

	tsb $D1EC.w		; 0C EC D1
	brk $0C.b		; 00 0C
	rti		; 40

	brk $F8.b		; 00 F8
	lda ($00.b),Y		; B1 00
	ora $0040.w		; 0D 40 00
	sed		; F8
	cmp #$00.b		; C9 00
	asl $F440.w		; 0E 40 F4
	tsb $F9.b		; 04 F9
	brk $0F.b		; 00 0F
	rti		; 40

	jsr ($F9FC.w,X)		; FC FC F9
	brk $18.b		; 00 18
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp $00.b,X		; D5 00
	ora $0440.w,Y		; 19 40 04
	pea $00DD.w		; F4 DD 00
	inc A		; 1A
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $00.b		; E5 00
	tas		; 1B
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $1C00.w		; ED 00 1C
	rti		; 40

	asl $08E8.w		; 0E E8 08
	cmp ($08.b),Y		; D1 08
	brk $48.b		; 00 48
	beq   0.b		; F0 00
	lda ($08.b),Y		; B1 08
	cop $48.b		; 02 48
	brk $F0.b		; 00 F0
	lda ($08.b),Y		; B1 08
	tsb $48.b		; 04 48
	beq   0.b		; F0 00
	cmp ($08.b,X)		; C1 08
	asl $48.b		; 06 48
	brk $F0.b		; 00 F0
	cmp ($08.b,X)		; C1 08
	php		; 08
	pha		; 48
	sed		; F8
	sed		; F8
	cmp ($08.b),Y		; D1 08
	asl A		; 0A
	pha		; 48
	sbc ($FE.b)		; F2 FE
	sbc ($08.b,X)		; E1 08
	tsb $0848.w		; 0C 48 08
	beq -39.b		; F0 D9
	brk $0E.b		; 00 0E
	rti		; 40

	bpl -24.b		; 10 E8
	tyx		; BB
	brk $0F.b		; 00 0F
	rti		; 40

	php		; 08
	beq -47.b		; F0 D1
	brk $1E.b		; 00 1E
	rti		; 40

	trb $E4.b		; 14 E4
	cmp ($00.b,X)		; C1 00
	ora $01F740.l,X		; 1F 40 F7 01
	sbc ($00.b),Y		; F1 00
	jsr $FF40.w		; 20 40 FF
	sbc $00F1.w,Y		; F9 F1 00
	and ($40.b,X)		; 21 40
	sbc $00F9F9.l,X		; FF F9 F9 00
	jsl $291F40.l		; 22 40 1F 29
	cmp [$B1.b]		; C7 B1
	php		; 08
	brk $48.b		; 00 48
	ora #$E7.b		; 09 E7
	cmp #$08.b		; C9 08
	cop $48.b		; 02 48
	ora ($EF.b,X)		; 01 EF
	lda ($08.b),Y		; B1 08
	tsb $48.b		; 04 48
	inc $99F2.w,X		; FE F2 99
	php		; 08
	asl $48.b		; 06 48
	php		; 08
	beq -39.b		; F0 D9
	brk $08.b		; 00 08
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $0900.w,Y		; F9 00 09
	rti		; 40

	ora $B9DF.w,Y		; 19 DF B9
	brk $0A.b		; 00 0A
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	lda ($00.b),Y		; B1 00
	phd		; 0B
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	lda $0C00.w,Y		; B9 00 0C
	rti		; 40

	eor ($B7.b,X)		; 41 B7
	lda $0D00.w		; AD 00 0D
	rti		; 40

	sbc ($07.b),Y		; F1 07
	ldx $0E00.w		; AE 00 0E
	rti		; 40

	sbc $AEFF.w,Y		; F9 FF AE
	brk $0F.b		; 00 0F
	rti		; 40

	and $AEBF.w,Y		; 39 BF AE
	brk $18.b		; 00 18
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc ($00.b),Y		; F1 00
	ora $1640.w,Y		; 19 40 16
.ACCU 8
	sep #$A9		; E2 A9
	brk $1A.b		; 00 1A
	rti		; 40

	asl $A9DA.w,X		; 1E DA A9
	brk $1B.b		; 00 1B
	rti		; 40

	rol $D2.b		; 26 D2
	lda #$00.b		; A9 00
	trb $0640.w		; 1C 40 06
	sbc ($E9.b)		; F2 E9
	brk $1D.b		; 00 1D
	rti		; 40

	and ($D7.b,X)		; 21 D7
	lda $1E00.w,Y		; B9 00 1E
	rti		; 40

	asl $A1EA.w		; 0E EA A1
	brk $1F.b		; 00 1F
	rti		; 40

	inc $A9FA.w,X		; FE FA A9
	brk $20.b		; 00 20
	rti		; 40

	asl $F2.b		; 06 F2
	lda #$00.b		; A9 00
	and ($40.b,X)		; 21 40
	asl $A9EA.w		; 0E EA A9
	brk $22.b		; 00 22
	rti		; 40

	inc $A60A.w		; EE 0A A6
	brk $23.b		; 00 23
	rti		; 40

	inc $02.b,X		; F6 02
	ldx $00.b		; A6 00
	bit $40.b		; 24 40
	ora [$F1.b]		; 07 F1
	cmp ($00.b,X)		; C1 00
	and $40.b		; 25 40
	ora $00C1E9.l		; 0F E9 C1 00
	rol $40.b		; 26 40
	ora [$E1.b],Y		; 17 E1
	cmp ($00.b,X)		; C1 00
	and [$40.b]		; 27 40
	ora $00C1D9.l,X		; 1F D9 C1 00
	plp		; 28
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc ($00.b,X)		; E1 00
	and #$40.b		; 29 40
	and $00B5B9.l,X		; 3F B9 B5 00
	rol A		; 2A
	rti		; 40

	ora ($F3.b)		; 12 F3
	sbc $08BC.w,X		; FD BC 08
	brk $48.b		; 00 48
	phd		; 0B
	sbc $B7.b		; E5 B7
	php		; 08
	cop $48.b		; 02 48
	ora $ED.b,S		; 03 ED
	cmp [$08.b],Y		; D7 08
	tsb $48.b		; 04 48
	ora $ED.b,S		; 03 ED
	cmp [$08.b]		; C7 08
	asl $48.b		; 06 48
	sbc $0B.b		; E5 0B
	ldy $0808.w		; AC 08 08
	pha		; 48
	sbc $FB.b,X		; F5 FB
	ldy $0A08.w		; AC 08 0A
	pha		; 48
	sbc ($05.b,S),Y		; F3 05
	cpy $0C00.w		; CC 00 0C
	rti		; 40

	xce		; FB
	sbc $00CC.w,X		; FD CC 00
	ora $F040.w		; 0D 40 F0
	php		; 08
	ldy $00.b		; A4 00
	asl $F840.w		; 0E 40 F8
	brk $A4.b		; 00 A4
	brk $0F.b		; 00 0F
	rti		; 40

	brk $F8.b		; 00 F8
	ldy $00.b		; A4 00
	trb $0340.w		; 1C 40 03
	sbc $BF.b,X		; F5 BF
	brk $1D.b		; 00 1D
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc [$00.b]		; E7 00
	asl $0540.w,X		; 1E 40 05
	sbc ($AC.b,S),Y		; F3 AC
	brk $1F.b		; 00 1F
	rti		; 40

	cop $F6.b		; 02 F6
	sbc $402000.l		; EF 00 20 40
	inx		; E8
	bpl -92.b		; 10 A4
	brk $21.b		; 00 21
	rti		; 40

	sbc $00F1F9.l,X		; FF F9 F1 00
	jsl $F9FF40.l		; 22 40 FF F9
	sbc $2300.w,Y		; F9 00 23
	rti		; 40

	ora $F8.b,X		; 15 F8
	sed		; F8
	cmp $88.b		; C5 88
	brk $C8.b		; 00 C8
	inc $E502.w		; EE 02 E5
	dey		; 88
	cop $C8.b		; 02 C8
	inc $E5F2.w,X		; FE F2 E5
	dey		; 88
	tsb $C8.b		; 04 C8
	inc $FA.b,X		; F6 FA
	cmp $88.b,X		; D5 88
	asl $C8.b		; 06 C8
	sed		; F8
	brk $AD.b		; 00 AD
	bra   8.b		; 80 08
	cpy #$F8.b		; C0 F8
	brk $A5.b		; 00 A5
	bra   9.b		; 80 09
	cpy #$00.b		; C0 00
	sed		; F8
	lda $80.b		; A5 80
	asl A		; 0A
	cpy #$F0.b		; C0 F0
	php		; 08
	sbc $80.b,X		; F5 80
	phd		; 0B
	cpy #$F9.b		; C0 F9
	sbc $0C80BD.l,X		; FF BD 80 0C
	cpy #$01.b		; C0 01
	sbc [$BD.b],Y		; F7 BD
	bra  13.b		; 80 0D
	cpy #$F9.b		; C0 F9
	sbc $0E80B5.l,X		; FF B5 80 0E
	cpy #$F3.b		; C0 F3
	ora $05.b		; 05 05
	bra  15.b		; 80 0F
	cpy #$FB.b		; C0 FB
	sbc $8005.w,X		; FD 05 80
	clc		; 18
	cpy #$F8.b		; C0 F8
	brk $F5.b		; 00 F5
	bra  25.b		; 80 19
	cpy #$00.b		; C0 00
	sed		; F8
	sbc $80.b,X		; F5 80
	inc A		; 1A
	cpy #$08.b		; C0 08
	beq -11.b		; F0 F5
	bra  27.b		; 80 1B
	cpy #$EE.b		; C0 EE
	asl A		; 0A
	cmp $1C80.w,X		; DD 80 1C
	cpy #$06.b		; C0 06
	sbc ($DD.b)		; F2 DD
	bra  29.b		; 80 1D
	cpy #$EF.b		; C0 EF
	ora #$FD.b		; 09 FD
	bra  30.b		; 80 1E
	cpy #$F7.b		; C0 F7
	ora ($FD.b,X)		; 01 FD
	bra  31.b		; 80 1F
	cpy #$FF.b		; C0 FF
	sbc $80FD.w,Y		; F9 FD 80
	jsr $13C0.w		; 20 C0 13
	sbc $BDF7.w,Y		; F9 F7 BD
	dey		; 88
	brk $C8.b		; 00 C8
	sbc ($FF.b),Y		; F1 FF
	sbc $88.b,X		; F5 88
	cop $C8.b		; 02 C8
	sbc ($FF.b),Y		; F1 FF
	sbc $88.b		; E5 88
	tsb $C8.b		; 04 C8
	pea $CDFC.w		; F4 FC CD
	dey		; 88
	asl $C8.b		; 06 C8
	ora ($F7.b,X)		; 01 F7
	lda $80.b		; A5 80
	php		; 08
	cpy #$E9.b		; C0 E9
	ora $0980E5.l		; 0F E5 80 09
	cpy #$F9.b		; C0 F9
	sbc $0A80B5.l,X		; FF B5 80 0A
	cpy #$F9.b		; C0 F9
	sbc $0B80AD.l,X		; FF AD 80 0B
	cpy #$01.b		; C0 01
	sbc [$FD.b],Y		; F7 FD
	bra  12.b		; 80 0C
	cpy #$01.b		; C0 01
	sbc [$F5.b],Y		; F7 F5
	bra  13.b		; 80 0D
	cpy #$01.b		; C0 01
	sbc [$ED.b],Y		; F7 ED
	bra  14.b		; 80 0E
	cpy #$01.b		; C0 01
	sbc [$E5.b],Y		; F7 E5
	bra  15.b		; 80 0F
	cpy #$EB.b		; C0 EB
	ora $80DD.w		; 0D DD 80
	clc		; 18
	cpy #$F3.b		; C0 F3
	ora $DD.b		; 05 DD
	bra  25.b		; 80 19
	cpy #$FB.b		; C0 FB
	sbc $80DD.w,X		; FD DD 80
	inc A		; 1A
	cpy #$03.b		; C0 03
	sbc $DD.b,X		; F5 DD
	bra  27.b		; 80 1B
	cpy #$EC.b		; C0 EC
	tsb $80D5.w		; 0C D5 80
	trb $04C0.w		; 1C C0 04
	pea $80D5.w		; F4 D5 80
	ora $F9C0.w,X		; 1D C0 F9
	sbc $1E80A5.l,X		; FF A5 80 1E
	cpy #$12.b		; C0 12
	pea $BDFC.w		; F4 FC BD
	dey		; 88
	brk $C8.b		; 00 C8
	inc $0A.b		; E6 0A
	cmp $88.b,X		; D5 88
	cop $C8.b		; 02 C8
	inc $FA.b,X		; F6 FA
	cmp $88.b,X		; D5 88
	tsb $C8.b		; 04 C8
	sbc [$09.b]		; E7 09
	sbc $88.b		; E5 88
	asl $C8.b		; 06 C8
	sbc [$F9.b],Y		; F7 F9
	sbc $88.b		; E5 88
	php		; 08
	iny		; C8
	sbc $88F501.l		; EF 01 F5 88
	asl A		; 0A
	iny		; C8
	ora ($F7.b,X)		; 01 F7
	bcs -128.b		; B0 80
	tsb $EEC0.w		; 0C C0 EE
	asl A		; 0A
	cmp $0D80.w		; CD 80 0D
	cpy #$F6.b		; C0 F6
	cop $CD.b		; 02 CD
	bra  14.b		; 80 0E
	cpy #$FE.b		; C0 FE
	plx		; FA
	cmp $0F80.w		; CD 80 0F
	cpy #$DF.b		; C0 DF
	ora $80E5.w,Y		; 19 E5 80
	trb $F9C0.w		; 1C C0 F9
	sbc $1D80B5.l,X		; FF B5 80 1D
	cpy #$06.b		; C0 06
	sbc ($DD.b)		; F2 DD
	bra  30.b		; 80 1E
	cpy #$F9.b		; C0 F9
	sbc $1F80AD.l,X		; FF AD 80 1F
	cpy #$FF.b		; C0 FF
	sbc $80FD.w,Y		; F9 FD 80
	jsr $FFC0.w		; 20 C0 FF
	sbc $80F5.w,Y		; F9 F5 80
	and ($C0.b,X)		; 21 C0
	ora [$F1.b]		; 07 F1
	sbc [$80.b],Y		; F7 80
	jsl $F107C0.l		; 22 C0 07 F1
	sbc $C02380.l		; EF 80 23 C0
	clc		; 18
	nop		; EA
	asl $E7.b		; 06 E7
	dey		; 88
	brk $C8.b		; 00 C8
	nop		; EA
	asl $D7.b		; 06 D7
	dey		; 88
	cop $C8.b		; 02 C8
	phx		; DA
	asl $EC.b,X		; 16 EC
	dey		; 88
	tsb $C8.b		; 04 C8
	inc A		; 1A
	dec $80F8.w,X		; DE F8 80
	asl $C0.b		; 06 C0
	cop $F6.b		; 02 F6
	sbc ($80.b),Y		; F1 80
	ora [$C0.b]		; 07 C0
	cop $F6.b		; 02 F6
	sbc #$80.b		; E9 80
	php		; 08
	cpy #$FA.b		; C0 FA
	inc $80EF.w,X		; FE EF 80
	ora #$C0.b		; 09 C0
	plx		; FA
	inc $80E7.w,X		; FE E7 80
	asl A		; 0A
	cpy #$FA.b		; C0 FA
	inc $80DF.w,X		; FE DF 80
	phd		; 0B
	cpy #$FA.b		; C0 FA
	inc $80D7.w,X		; FE D7 80
	tsb $12C0.w		; 0C C0 12
	inc $F5.b		; E6 F5
	bra  13.b		; 80 0D
	cpy #$22.b		; C0 22
	dec $FC.b,X		; D6 FC
	bra  14.b		; 80 0E
	cpy #$0A.b		; C0 0A
	inc $80F4.w		; EE F4 80
	ora $EE0AC0.l		; 0F C0 0A EE
	cpx $1680.w		; EC 80 16
	cpy #$12.b		; C0 12
	inc $EC.b		; E6 EC
	bra  23.b		; 80 17
	cpy #$E2.b		; C0 E2
	asl $DC.b,X		; 16 DC
	bra  24.b		; 80 18
	cpy #$02.b		; C0 02
	inc $E1.b,X		; F6 E1
	bra  25.b		; 80 19
	cpy #$DA.b		; C0 DA
	asl $80E4.w,X		; 1E E4 80
	inc A		; 1A
	cpy #$E2.b		; C0 E2
	asl $E4.b,X		; 16 E4
	bra  27.b		; 80 1B
	cpy #$FD.b		; C0 FD
	xce		; FB
	sbc [$80.b],Y		; F7 80
	trb $E6C0.w		; 1C C0 E6
	ora ($F7.b)		; 12 F7
	bra  29.b		; 80 1D
	cpy #$1F.b		; C0 1F
	cmp $80F0.w,Y		; D9 F0 80
	asl $17C0.w,X		; 1E C0 17
	sbc ($E8.b,X)		; E1 E8
	bra  31.b		; 80 1F
	cpy #$1F.b		; C0 1F
	cmp $80E8.w,Y		; D9 E8 80
	jsr $15C0.w		; 20 C0 15
	sed		; F8
	sed		; F8
	cmp ($48.b),Y		; D1 48
	brk $08.b		; 00 08
	cop $EE.b		; 02 EE
	lda ($48.b),Y		; B1 48
	cop $08.b		; 02 08
	sbc ($FE.b)		; F2 FE
	lda ($48.b),Y		; B1 48
	tsb $08.b		; 04 08
	plx		; FA
	inc $C1.b,X		; F6 C1
	pha		; 48
	asl $08.b		; 06 08
	brk $F8.b		; 00 F8
	sbc ($40.b),Y		; F1 40
	php		; 08
	brk $00.b		; 00 00
	sed		; F8
	sbc $0940.w,Y		; F9 40 09
	brk $F8.b		; 00 F8
	brk $F9.b		; 00 F9
	rti		; 40

	asl A		; 0A
	brk $08.b		; 00 08
	beq -87.b		; F0 A9
	rti		; 40

	phd		; 0B
	brk $FF.b		; 00 FF
	sbc $40E1.w,Y		; F9 E1 40
	tsb $F700.w		; 0C 00 F7
	ora ($E1.b,X)		; 01 E1
	rti		; 40

	ora $FF00.w		; 0D 00 FF
	sbc $40E9.w,Y		; F9 E9 40
	asl $0500.w		; 0E 00 05
	sbc ($99.b,S),Y		; F3 99
	rti		; 40

	ora $FBFD00.l		; 0F 00 FD FB
	sta $1840.w,Y		; 99 40 18
	brk $00.b		; 00 00
	sed		; F8
	lda #$40.b		; A9 40
	ora $F800.w,Y		; 19 00 F8
	brk $A9.b		; 00 A9
	rti		; 40

	inc A		; 1A
	brk $F0.b		; 00 F0
	php		; 08
	lda #$40.b		; A9 40
	tas		; 1B
	brk $0A.b		; 00 0A
	inc $40C1.w		; EE C1 40
	trb $F200.w		; 1C 00 F2
	asl $C1.b		; 06 C1
	rti		; 40

	ora $0900.w,X		; 1D 00 09
	sbc $1E40A1.l		; EF A1 40 1E
	brk $01.b		; 00 01
	sbc [$A1.b],Y		; F7 A1
	rti		; 40

	ora $FFF900.l,X		; 1F 00 F9 FF
	lda ($40.b,X)		; A1 40
	jsr $1300.w		; 20 00 13
	sbc [$F9.b],Y		; F7 F9
	cmp $0048.w,Y		; D9 48 00
	php		; 08
	sbc $48A1F1.l,X		; FF F1 A1 48
	cop $08.b		; 02 08
	sbc $48B1F1.l,X		; FF F1 B1 48
	tsb $08.b		; 04 08
	jsr ($C9F4.w,X)		; FC F4 C9
	pha		; 48
	asl $08.b		; 06 08
	sbc [$01.b],Y		; F7 01
	sbc $0840.w,Y		; F9 40 08
	brk $0F.b		; 00 0F
	sbc #$B9.b		; E9 B9
	rti		; 40

	ora #$00.b		; 09 00
	sbc $40E9F9.l,X		; FF F9 E9 40
	asl A		; 0A
	brk $FF.b		; 00 FF
	sbc $40F1.w,Y		; F9 F1 40
	phd		; 0B
	brk $F7.b		; 00 F7
	ora ($A1.b,X)		; 01 A1
	rti		; 40

	tsb $F700.w		; 0C 00 F7
	ora ($A9.b,X)		; 01 A9
	rti		; 40

	ora $F700.w		; 0D 00 F7
	ora ($B1.b,X)		; 01 B1
	rti		; 40

	asl $F700.w		; 0E 00 F7
	ora ($B9.b,X)		; 01 B9
	rti		; 40

	ora $EB0D00.l		; 0F 00 0D EB
	cmp ($40.b,X)		; C1 40
	clc		; 18
	brk $05.b		; 00 05
	sbc ($C1.b,S),Y		; F3 C1
	rti		; 40

	ora $FD00.w,Y		; 19 00 FD
	xce		; FB
	cmp ($40.b,X)		; C1 40
	inc A		; 1A
	brk $F5.b		; 00 F5
	ora $C1.b,S		; 03 C1
	rti		; 40

	tas		; 1B
	brk $0C.b		; 00 0C
	cpx $40C9.w		; EC C9 40
	trb $F400.w		; 1C 00 F4
	tsb $C9.b		; 04 C9
	rti		; 40

	ora $FF00.w,X		; 1D 00 FF
	sbc $40F9.w,Y		; F9 F9 40
	asl $1200.w,X		; 1E 00 12
	jsr ($E1F4.w,X)		; FC F4 E1
	pha		; 48
	brk $08.b		; 00 08
	asl A		; 0A
	inc $C9.b		; E6 C9
	pha		; 48
	cop $08.b		; 02 08
	plx		; FA
	inc $C9.b,X		; F6 C9
	pha		; 48
	tsb $08.b		; 04 08
	ora #$E7.b		; 09 E7
	lda $0648.w,Y		; B9 48 06
	php		; 08
	sbc $B9F7.w,Y		; F9 F7 B9
	pha		; 48
	php		; 08
	php		; 08
	ora ($EF.b,X)		; 01 EF
	lda #$48.b		; A9 48
	asl A		; 0A
	php		; 08
	sbc [$01.b],Y		; F7 01
	inc $40.b,X		; F6 40
	tsb $0A00.w		; 0C 00 0A
	inc $40D9.w		; EE D9 40
	ora $0200.w		; 0D 00 02
	inc $D9.b,X		; F6 D9
	rti		; 40

	asl $FA00.w		; 0E 00 FA
	inc $40D9.w,X		; FE D9 40
	ora $DF1900.l		; 0F 00 19 DF
	cmp ($40.b,X)		; C1 40
	trb $FF00.w		; 1C 00 FF
	sbc $40F1.w,Y		; F9 F1 40
	ora $F200.w,X		; 1D 00 F2
	asl $C9.b		; 06 C9
	rti		; 40

	asl $FF00.w,X		; 1E 00 FF
	sbc $40F9.w,Y		; F9 F9 40
	ora $FFF900.l,X		; 1F 00 F9 FF
	lda #$40.b		; A9 40
	jsr $F900.w		; 20 00 F9
	sbc $2140B1.l,X		; FF B1 40 21
	brk $F1.b		; 00 F1
	ora [$AF.b]		; 07 AF
	rti		; 40

	jsl $07F100.l		; 22 00 F1 07
	lda [$40.b],Y		; B7 40
	and $00.b,S		; 23 00
	clc		; 18
	asl $EA.b		; 06 EA
	sbc $48.b,S		; E3 48
	brk $08.b		; 00 08
	asl $EA.b		; 06 EA
	sbc ($48.b,S),Y		; F3 48
	cop $08.b		; 02 08
	asl $DA.b,X		; 16 DA
	dec $0448.w,X		; DE 48 04
	php		; 08
	dec $DA1A.w,X		; DE 1A DA
	rti		; 40

	asl $00.b		; 06 00
	inc $02.b,X		; F6 02
	sbc ($40.b,X)		; E1 40
	ora [$00.b]		; 07 00
	inc $02.b,X		; F6 02
	sbc #$40.b		; E9 40
	php		; 08
	brk $FE.b		; 00 FE
	plx		; FA
	sbc $40.b,S		; E3 40
	ora #$00.b		; 09 00
	inc $EBFA.w,X		; FE FA EB
	rti		; 40

	asl A		; 0A
	brk $FE.b		; 00 FE
	plx		; FA
	sbc ($40.b,S),Y		; F3 40
	phd		; 0B
	brk $FE.b		; 00 FE
	plx		; FA
	xce		; FB
	rti		; 40

	tsb $E600.w		; 0C 00 E6
	ora ($DD.b)		; 12 DD
	rti		; 40

	ora $D600.w		; 0D 00 D6
	jsl $0E40D6.l		; 22 D6 40 0E
	brk $EE.b		; 00 EE
	asl A		; 0A
	dec $0F40.w,X		; DE 40 0F
	brk $EE.b		; 00 EE
	asl A		; 0A
	inc $40.b		; E6 40
	asl $00.b,X		; 16 00
	inc $12.b		; E6 12
	inc $40.b		; E6 40
	ora [$00.b],Y		; 17 00
	asl $E2.b,X		; 16 E2
	inc $40.b,X		; F6 40
	clc		; 18
	brk $F6.b		; 00 F6
	cop $F1.b		; 02 F1
	rti		; 40

	ora $1E00.w,Y		; 19 00 1E
	phx		; DA
	inc $1A40.w		; EE 40 1A
	brk $16.b		; 00 16
.ACCU 8
	sep #$EE		; E2 EE
	rti		; 40

	tas		; 1B
	brk $FB.b		; 00 FB
	sbc $40DB.w,X		; FD DB 40
	trb $1200.w		; 1C 00 12
	inc $DB.b		; E6 DB
	rti		; 40

	ora $D900.w,X		; 1D 00 D9
	ora $1E40E2.l,X		; 1F E2 40 1E
	brk $E1.b		; 00 E1
	ora [$EA.b],Y		; 17 EA
	rti		; 40

	ora $1FD900.l,X		; 1F 00 D9 1F
	nop		; EA
	rti		; 40

	jsr $1100.w		; 20 00 11
	cmp $48F111.l,X		; DF 11 F1 48
	brk $08.b		; 00 08
	ora $48EAD1.l,X		; 1F D1 EA 48
	cop $08.b		; 02 08
	sbc $48E501.l		; EF 01 E5 48
	tsb $08.b		; 04 08
	ora [$E9.b]		; 07 E9
	sbc $0648.w		; ED 48 06
	php		; 08
	sbc [$F9.b],Y		; F7 F9
	sbc $48.b,X		; F5 48
	php		; 08
	php		; 08
	ora [$E1.b],Y		; 17 E1
	nop		; EA
	rti		; 40

	asl A		; 0A
	brk $17.b		; 00 17
	sbc ($F2.b,X)		; E1 F2
	rti		; 40

	phd		; 0B
	brk $27.b		; 00 27
	cmp ($FA.b),Y		; D1 FA
	rti		; 40

	tsb $1F00.w		; 0C 00 1F
	cmp $40FA.w,Y		; D9 FA 40
	ora $1700.w		; 0D 00 17
	sbc ($FA.b,X)		; E1 FA
	rti		; 40

	asl $CF00.w		; 0E 00 CF
	and #$F9.b		; 29 F9
	rti		; 40

	ora $11E700.l		; 0F 00 E7 11
	sbc #$40.b		; E9 40
	inc A		; 1A
	brk $D7.b		; 00 D7
	and ($F9.b,X)		; 21 F9
	rti		; 40

	tas		; 1B
	brk $FF.b		; 00 FF
	sbc $40ED.w,Y		; F9 ED 40
	trb $EF00.w		; 1C 00 EF
	ora #$F5.b		; 09 F5
	rti		; 40

	ora $0F00.w,X		; 1D 00 0F
	sbc #$FD.b		; E9 FD
	rti		; 40

	asl $0700.w,X		; 1E 00 07
	sbc ($FD.b),Y		; F1 FD
	rti		; 40

	ora $F81500.l,X		; 1F 00 15 F8
	sed		; F8
	cmp $C8.b		; C5 C8
	brk $88.b		; 00 88
	cop $EE.b		; 02 EE
	sbc $C8.b		; E5 C8
	cop $88.b		; 02 88
	sbc ($FE.b)		; F2 FE
	sbc $C8.b		; E5 C8
	tsb $88.b		; 04 88
	plx		; FA
	inc $D5.b,X		; F6 D5
	iny		; C8
	asl $88.b		; 06 88
	brk $F8.b		; 00 F8
	lda $08C0.w		; AD C0 08
	bra   0.b		; 80 00
	sed		; F8
	lda $C0.b		; A5 C0
	ora #$80.b		; 09 80
	sed		; F8
	brk $A5.b		; 00 A5
	cpy #$0A.b		; C0 0A
	bra   8.b		; 80 08
	beq -11.b		; F0 F5
	cpy #$0B.b		; C0 0B
	bra  -1.b		; 80 FF
	sbc $C0BD.w,Y		; F9 BD C0
	tsb $F780.w		; 0C 80 F7
	ora ($BD.b,X)		; 01 BD
	cpy #$0D.b		; C0 0D
	bra  -1.b		; 80 FF
	sbc $C0B5.w,Y		; F9 B5 C0
	asl $0580.w		; 0E 80 05
	sbc ($05.b,S),Y		; F3 05
	cpy #$0F.b		; C0 0F
	bra  -3.b		; 80 FD
	xce		; FB
	ora $C0.b		; 05 C0
	clc		; 18
	bra   0.b		; 80 00
	sed		; F8
	sbc $C0.b,X		; F5 C0
	ora $F880.w,Y		; 19 80 F8
	brk $F5.b		; 00 F5
	cpy #$1A.b		; C0 1A
	bra -16.b		; 80 F0
	php		; 08
	sbc $C0.b,X		; F5 C0
	tas		; 1B
	bra  10.b		; 80 0A
	inc $C0DD.w		; EE DD C0
	trb $F280.w		; 1C 80 F2
	asl $DD.b		; 06 DD
	cpy #$1D.b		; C0 1D
	bra   9.b		; 80 09
	sbc $1EC0FD.l		; EF FD C0 1E
	bra   1.b		; 80 01
	sbc [$FD.b],Y		; F7 FD
	cpy #$1F.b		; C0 1F
	bra  -7.b		; 80 F9
	sbc $20C0FD.l,X		; FF FD C0 20
	bra  19.b		; 80 13
	sbc [$F9.b],Y		; F7 F9
	lda $00C8.w,X		; BD C8 00
	dey		; 88
	sbc $C8F5F1.l,X		; FF F1 F5 C8
	cop $88.b		; 02 88
	sbc $C8E5F1.l,X		; FF F1 E5 C8
	tsb $88.b		; 04 88
	jsr ($CDF4.w,X)		; FC F4 CD
	iny		; C8
	asl $88.b		; 06 88
	sbc [$01.b],Y		; F7 01
	lda $C0.b		; A5 C0
	php		; 08
	bra  15.b		; 80 0F
	sbc #$E5.b		; E9 E5
	cpy #$09.b		; C0 09
	bra  -1.b		; 80 FF
	sbc $C0B5.w,Y		; F9 B5 C0
	asl A		; 0A
	bra  -1.b		; 80 FF
	sbc $C0AD.w,Y		; F9 AD C0
	phd		; 0B
	bra  -9.b		; 80 F7
	ora ($FD.b,X)		; 01 FD
	cpy #$0C.b		; C0 0C
	bra  -9.b		; 80 F7
	ora ($F5.b,X)		; 01 F5
	cpy #$0D.b		; C0 0D
	bra  -9.b		; 80 F7
	ora ($ED.b,X)		; 01 ED
	cpy #$0E.b		; C0 0E
	bra  -9.b		; 80 F7
	ora ($E5.b,X)		; 01 E5
	cpy #$0F.b		; C0 0F
	bra  13.b		; 80 0D
	xba		; EB
	cmp $18C0.w,X		; DD C0 18
	bra   5.b		; 80 05
	sbc ($DD.b,S),Y		; F3 DD
	cpy #$19.b		; C0 19
	bra  -3.b		; 80 FD
	xce		; FB
	cmp $1AC0.w,X		; DD C0 1A
	bra -11.b		; 80 F5
	ora $DD.b,S		; 03 DD
	cpy #$1B.b		; C0 1B
	bra  12.b		; 80 0C
	cpx $C0D5.w		; EC D5 C0
	trb $F480.w		; 1C 80 F4
	tsb $D5.b		; 04 D5
	cpy #$1D.b		; C0 1D
	bra  -1.b		; 80 FF
	sbc $C0A5.w,Y		; F9 A5 C0
	asl $1280.w,X		; 1E 80 12
	jsr ($BDF4.w,X)		; FC F4 BD
	iny		; C8
	brk $88.b		; 00 88
	asl A		; 0A
	inc $D5.b		; E6 D5
	iny		; C8
	cop $88.b		; 02 88
	plx		; FA
	inc $D5.b,X		; F6 D5
	iny		; C8
	tsb $88.b		; 04 88
	ora #$E7.b		; 09 E7
	sbc $C8.b		; E5 C8
	asl $88.b		; 06 88
	sbc $E5F7.w,Y		; F9 F7 E5
	iny		; C8
	php		; 08
	dey		; 88
	ora ($EF.b,X)		; 01 EF
	sbc $C8.b,X		; F5 C8
	asl A		; 0A
	dey		; 88
	sbc [$01.b],Y		; F7 01
	bcs -64.b		; B0 C0
	tsb $0A80.w		; 0C 80 0A
	inc $C0CD.w		; EE CD C0
	ora $0280.w		; 0D 80 02
	inc $CD.b,X		; F6 CD
	cpy #$0E.b		; C0 0E
	bra  -6.b		; 80 FA
	inc $C0CD.w,X		; FE CD C0
	ora $DF1980.l		; 0F 80 19 DF
	sbc $C0.b		; E5 C0
	trb $FF80.w		; 1C 80 FF
	sbc $C0B5.w,Y		; F9 B5 C0
	ora $F280.w,X		; 1D 80 F2
	asl $DD.b		; 06 DD
	cpy #$1E.b		; C0 1E
	bra  -1.b		; 80 FF
	sbc $C0AD.w,Y		; F9 AD C0
	ora $FFF980.l,X		; 1F 80 F9 FF
	sbc $20C0.w,X		; FD C0 20
	bra  -7.b		; 80 F9
	sbc $21C0F5.l,X		; FF F5 C0 21
	bra -15.b		; 80 F1
	ora [$F7.b]		; 07 F7
	cpy #$22.b		; C0 22
	bra -15.b		; 80 F1
	ora [$EF.b]		; 07 EF
	cpy #$23.b		; C0 23
	bra  24.b		; 80 18
	asl $EA.b		; 06 EA
	sbc [$C8.b]		; E7 C8
	brk $88.b		; 00 88
	asl $EA.b		; 06 EA
	cmp [$C8.b],Y		; D7 C8
	cop $88.b		; 02 88
	asl $DA.b,X		; 16 DA
	cpx $04C8.w		; EC C8 04
	dey		; 88
	dec $F81A.w,X		; DE 1A F8
	cpy #$06.b		; C0 06
	bra -10.b		; 80 F6
	cop $F1.b		; 02 F1
	cpy #$07.b		; C0 07
	bra -10.b		; 80 F6
	cop $E9.b		; 02 E9
	cpy #$08.b		; C0 08
	bra  -2.b		; 80 FE
	plx		; FA
	sbc $8009C0.l		; EF C0 09 80
	inc $E7FA.w,X		; FE FA E7
	cpy #$0A.b		; C0 0A
	bra  -2.b		; 80 FE
	plx		; FA
	cmp $800BC0.l,X		; DF C0 0B 80
	inc $D7FA.w,X		; FE FA D7
	cpy #$0C.b		; C0 0C
	bra -26.b		; 80 E6
	ora ($F5.b)		; 12 F5
	cpy #$0D.b		; C0 0D
	bra -42.b		; 80 D6
	jsl $0EC0FC.l		; 22 FC C0 0E
	bra -18.b		; 80 EE
	asl A		; 0A
	pea $0FC0.w		; F4 C0 0F
	bra -18.b		; 80 EE
	asl A		; 0A
	cpx $16C0.w		; EC C0 16
	bra -26.b		; 80 E6
	ora ($EC.b)		; 12 EC
	cpy #$17.b		; C0 17
	bra  22.b		; 80 16
.INDEX 8
	sep #$DC		; E2 DC
	cpy #$18.b		; C0 18
	bra -10.b		; 80 F6
	cop $E1.b		; 02 E1
	cpy #$19.b		; C0 19
	bra  30.b		; 80 1E
	phx		; DA
	cpx $C0.b		; E4 C0
	inc A		; 1A
	bra  22.b		; 80 16
.ACCU 8
	sep #$E4		; E2 E4
	cpy #$1B.b		; C0 1B
	bra  -5.b		; 80 FB
	sbc $C0F7.w,X		; FD F7 C0
	trb $1280.w		; 1C 80 12
	inc $F7.b		; E6 F7
	cpy #$1D.b		; C0 1D
	bra -39.b		; 80 D9
	ora $1EC0F0.l,X		; 1F F0 C0 1E
	bra -31.b		; 80 E1
	ora [$E8.b],Y		; 17 E8
	cpy #$1F.b		; C0 1F
	bra -39.b		; 80 D9
	ora $20C0E8.l,X		; 1F E8 C0 20
	bra  17.b		; 80 11
	cmp $C8EA11.l,X		; DF 11 EA C8
	brk $88.b		; 00 88
	ora $C8F1D1.l,X		; 1F D1 F1 C8
	cop $88.b		; 02 88
	sbc $C8F601.l		; EF 01 F6 C8
	tsb $88.b		; 04 88
	ora [$E9.b]		; 07 E9
	inc $06C8.w		; EE C8 06
	dey		; 88
	sbc [$F9.b],Y		; F7 F9
	inc $C8.b		; E6 C8
	php		; 08
	dey		; 88
	ora [$E1.b],Y		; 17 E1
	sbc $0AC0.w,Y		; F9 C0 0A
	bra  23.b		; 80 17
	sbc ($F1.b,X)		; E1 F1
	cpy #$0B.b		; C0 0B
	bra  39.b		; 80 27
	cmp ($E9.b),Y		; D1 E9
	cpy #$0C.b		; C0 0C
	bra  31.b		; 80 1F
	cmp $C0E9.w,Y		; D9 E9 C0
	ora $1780.w		; 0D 80 17
	sbc ($E9.b,X)		; E1 E9
	cpy #$0E.b		; C0 0E
	bra -49.b		; 80 CF
	and #$EA.b		; 29 EA
	cpy #$0F.b		; C0 0F
	bra -25.b		; 80 E7
	ora ($FA.b),Y		; 11 FA
	cpy #$1A.b		; C0 1A
	bra -41.b		; 80 D7
	and ($EA.b,X)		; 21 EA
	cpy #$1B.b		; C0 1B
	bra  -1.b		; 80 FF
	sbc $C0F6.w,Y		; F9 F6 C0
	trb $EF80.w		; 1C 80 EF
	ora #$EE.b		; 09 EE
	cpy #$1D.b		; C0 1D
	bra  15.b		; 80 0F
	sbc #$E6.b		; E9 E6
	cpy #$1E.b		; C0 1E
	bra   7.b		; 80 07
	sbc ($E6.b),Y		; F1 E6
	cpy #$1F.b		; C0 1F
	bra  18.b		; 80 12
	sed		; F8
	sed		; F8
	stx $00C8.w		; 8E C8 00
	dey		; 88
	bne  32.b		; D0 20
	sty $C8.b		; 84 C8
	cop $88.b		; 02 88
	inx		; E8
	php		; 08
	sty $C8.b,X		; 94 C8
	tsb $88.b		; 04 88
	php		; 08
	inx		; E8
	sta ($C8.b,S),Y		; 93 C8
	asl $88.b		; 06 88
	php		; 08
	inx		; E8
	sta $C8.b,S		; 83 C8
	php		; 08
	dey		; 88
	ora $EB.b		; 05 EB
	lda $C8.b,S		; A3 C8
	asl A		; 0A
	dey		; 88
	brk $F8.b		; 00 F8
	stx $C0.b		; 86 C0
	tsb $E080.w		; 0C 80 E0
	clc		; 18
	sty $C0.b,X		; 94 C0
	ora $F080.w		; 0D 80 F0
	php		; 08
	sty $0EC0.w		; 8C C0 0E
	bra -24.b		; 80 E8
	bpl -116.b		; 10 8C
	cpy #$0F.b		; C0 0F
	bra -32.b		; 80 E0
	clc		; 18
	sty $1CC0.w		; 8C C0 1C
	bra -32.b		; 80 E0
	clc		; 18
	sty $C0.b		; 84 C0
	ora $F880.w,X		; 1D 80 F8
	brk $86.b		; 00 86
	cpy #$1E.b		; C0 1E
	bra -56.b		; 80 C8
	bmi -124.b		; 30 84
	cpy #$1F.b		; C0 1F
	bra  -3.b		; 80 FD
	xce		; FB
	ldx $20C0.w		; AE C0 20
	bra  -3.b		; 80 FD
	xce		; FB
	ldx $C0.b		; A6 C0
	and ($80.b,X)		; 21 80
	ora $F3.b		; 05 F3
	lda ($C0.b,S),Y		; B3 C0
	jsl $F80080.l		; 22 80 00 F8
	stz $23C0.w,X		; 9E C0 23
	bra  28.b		; 80 1C
	beq   0.b		; F0 00
	lda ($08.b),Y		; B1 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	lda ($08.b),Y		; B1 08
	cop $48.b		; 02 48
	sed		; F8
	sed		; F8
	sbc ($08.b,X)		; E1 08
	tsb $48.b		; 04 48
	sed		; F8
	sed		; F8
	sbc ($08.b),Y		; F1 08
	asl $48.b		; 06 48
	sbc ($FD.b,S),Y		; F3 FD
	lda ($08.b,X)		; A1 08
	php		; 08
	pha		; 48
	ora $ED.b,S		; 03 ED
	lda ($08.b,X)		; A1 08
	asl A		; 0A
	pha		; 48
	jsr ($D1F4.w,X)		; FC F4 D1
	php		; 08
	tsb $0C48.w		; 0C 48 0C
	cpx $D1.b		; E4 D1
	php		; 08
	asl $ED48.w		; 0E 48 ED
	ora $C1.b,S		; 03 C1
	php		; 08
	jsr $FD48.w		; 20 48 FD
	sbc ($C1.b,S),Y		; F3 C1
	php		; 08
	jsl $E30D48.l		; 22 48 0D E3
	cmp ($08.b,X)		; C1 08
	bit $48.b		; 24 48
	php		; 08
	beq -23.b		; F0 E9
	brk $26.b		; 00 26
	rti		; 40

	php		; 08
	beq -15.b		; F0 F1
	brk $27.b		; 00 27
	rti		; 40

	php		; 08
	beq  -7.b		; F0 F9
	brk $28.b		; 00 28
	rti		; 40

	sed		; F8
	brk $01.b		; 00 01
	brk $29.b		; 00 29
	rti		; 40

	brk $F8.b		; 00 F8
	ora ($00.b,X)		; 01 00
	rol A		; 2A
	rti		; 40

	php		; 08
	beq   1.b		; F0 01
	brk $2B.b		; 00 2B
	rti		; 40

	sed		; F8
	brk $99.b		; 00 99
	brk $2C.b		; 00 2C
	rti		; 40

	brk $F8.b		; 00 F8
	sta $2D00.w,Y		; 99 00 2D
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	lda ($00.b,X)		; A1 00
	rol $1340.w		; 2E 40 13
	sbc $A9.b		; E5 A9
	brk $2F.b		; 00 2F
	rti		; 40

	clc		; 18
	cpx #$B9.b		; E0 B9
	brk $36.b		; 00 36
	rti		; 40

	bpl -24.b		; 10 E8
	sbc ($00.b,X)		; E1 00
	and [$40.b],Y		; 37 40
	trb $D1DC.w		; 1C DC D1
	brk $38.b		; 00 38
	rti		; 40

	trb $D9DC.w		; 1C DC D9
	brk $39.b		; 00 39
	rti		; 40

	bpl -24.b		; 10 E8
	lda ($00.b),Y		; B1 00
	dec A		; 3A
	rti		; 40

	bpl -24.b		; 10 E8
	lda $3B00.w,Y		; B9 00 3B
	rti		; 40

	php		; 08
	beq -31.b		; F0 E1
	brk $3C.b		; 00 3C
	rti		; 40

	inc A		; 1A
	beq   0.b		; F0 00
	lda $480008.l		; AF 08 00 48
	brk $F0.b		; 00 F0
	lda $480208.l		; AF 08 02 48
	bpl -32.b		; 10 E0
	lda $480408.l		; AF 08 04 48
	beq   0.b		; F0 00
	lda $480608.l,X		; BF 08 06 48
	brk $F0.b		; 00 F0
	lda $480808.l,X		; BF 08 08 48
	bpl -32.b		; 10 E0
	lda $480A08.l,X		; BF 08 0A 48
	sbc ($FE.b)		; F2 FE
	sta $480C08.l,X		; 9F 08 0C 48
	cop $EE.b		; 02 EE
	sta $480E08.l,X		; 9F 08 0E 48
	ora ($DE.b)		; 12 DE
	sta $482008.l,X		; 9F 08 20 48
	sed		; F8
	brk $CF.b		; 00 CF
	brk $22.b		; 00 22
	rti		; 40

	brk $F8.b		; 00 F8
	cmp $402300.l		; CF 00 23 40
	php		; 08
	beq -49.b		; F0 CF
	brk $24.b		; 00 24
	rti		; 40

	bpl -24.b		; 10 E8
	cmp $402500.l		; CF 00 25 40
	clc		; 18
	cpx #$CF.b		; E0 CF
	brk $26.b		; 00 26
	rti		; 40

	nop		; EA
	asl $00D7.w		; 0E D7 00
	and [$40.b]		; 27 40
	sbc ($06.b)		; F2 06
	cmp [$00.b],Y		; D7 00
	plp		; 28
	rti		; 40

	plx		; FA
	inc $00D7.w,X		; FE D7 00
	and #$40.b		; 29 40
	cop $F6.b		; 02 F6
	cmp [$00.b],Y		; D7 00
	rol A		; 2A
	rti		; 40

	asl A		; 0A
	inc $00D7.w		; EE D7 00
	pld		; 2B
	rti		; 40

	ora ($E6.b)		; 12 E6
	cmp [$00.b],Y		; D7 00
	bit $2040.w		; 2C 40 20
	cld		; D8
	cmp $00.b		; C5 00
	and $2040.w		; 2D 40 20
	cld		; D8
	cmp $2E00.w		; CD 00 2E
	rti		; 40

	beq   8.b		; F0 08
	cmp $402F00.l		; CF 00 2F 40
	cpx $DF0C.w		; EC 0C DF
	brk $32.b		; 00 32
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cmp $403300.l,X		; DF 00 33 40
	sbc $00DFF9.l,X		; FF F9 DF 00
	bit $40.b,X		; 34 40
	ora $D70DE3.l		; 0F E3 0D D7
	php		; 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp [$08.b],Y		; D7 08
	cop $48.b		; 02 48
	ora $BFE3.w		; 0D E3 BF
	php		; 08
	tsb $48.b		; 04 48
	sbc $FB.b,X		; F5 FB
	sta $480608.l,X		; 9F 08 06 48
	ora $EB.b		; 05 EB
	sta $480808.l,X		; 9F 08 08 48
	ora $EB.b		; 05 EB
	lda $480A08.l		; AF 08 0A 48
	sbc $FB.b,X		; F5 FB
	lda $480C08.l		; AF 08 0C 48
	sbc $BF03.w		; ED 03 BF
	php		; 08
	asl $FD48.w		; 0E 48 FD
	sbc ($BF.b,S),Y		; F3 BF
	php		; 08
	jsr $ED48.w		; 20 48 ED
	phd		; 0B
	tax		; AA
	brk $22.b		; 00 22
	rti		; 40

	sbc $A20B.w		; ED 0B A2
	brk $23.b		; 00 23
	rti		; 40

	sbc $B70B.w		; ED 0B B7
	brk $24.b		; 00 24
	rti		; 40

	sbc $03.b,X		; F5 03
	cmp $402500.l		; CF 00 25 40
	sbc $CFFB.w,X		; FD FB CF
	brk $26.b		; 00 26
	rti		; 40

	ora $F3.b		; 05 F3
	cmp $402700.l		; CF 00 27 40
	ora $EF01.w		; 0D 01 EF
	cmp $08.b,S		; C3 08
	brk $48.b		; 00 48
	tsb $D3E4.w		; 0C E4 D3
	php		; 08
	cop $48.b		; 02 48
	jsr ($DBF4.w,X)		; FC F4 DB
	php		; 08
	tsb $48.b		; 04 48
	tsb $E3E4.w		; 0C E4 E3
	php		; 08
	asl $48.b		; 06 48
	jsr ($EBF4.w,X)		; FC F4 EB
	php		; 08
	php		; 08
	pha		; 48
	tsb $F3E4.w		; 0C E4 F3
	php		; 08
	asl A		; 0A
	pha		; 48
	plp		; 28
	bne -46.b		; D0 D2
	brk $0C.b		; 00 0C
	rti		; 40

	jsr $D2D8.w		; 20 D8 D2
	brk $0D.b		; 00 0D
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cmp $00.b,S		; C3 00
	asl $1140.w		; 0E 40 11
	sbc [$CB.b]		; E7 CB
	brk $0F.b		; 00 0F
	rti		; 40

	trb $D3DC.w		; 1C DC D3
	brk $1C.b		; 00 1C
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b,S),Y		; D3 00
	ora $0440.w,X		; 1D 40 04
	pea $00FB.w		; F4 FB 00
	asl $1940.w,X		; 1E 40 19
	sed		; F8
	sed		; F8
	sbc ($08.b),Y		; F1 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	lda #$08.b		; A9 08
	cop $48.b		; 02 48
	ora ($EF.b,X)		; 01 EF
	cmp $0408.w,Y		; D9 08 04
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	cmp ($08.b,X)		; C1 08
	asl $48.b		; 06 48
	php		; 08
	beq -71.b		; F0 B9
	brk $08.b		; 00 08
	rti		; 40

	bpl -24.b		; 10 E8
	lda $0900.w,Y		; B9 00 09
	rti		; 40

	inx		; E8
	bpl -74.b		; 10 B6
	brk $0A.b		; 00 0A
	rti		; 40

	beq   8.b		; F0 08
	ldx $00.b,Y		; B6 00
	phd		; 0B
	rti		; 40

	sed		; F8
	brk $B6.b		; 00 B6
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $D9FF.w,Y		; F9 FF D9
	brk $0D.b		; 00 0D
	rti		; 40

	bpl -24.b		; 10 E8
	lda ($00.b),Y		; B1 00
	asl $FF40.w		; 0E 40 FF
	sbc $00E9.w,Y		; F9 E9 00
	ora $F10740.l		; 0F 40 07 F1
	sbc #$00.b		; E9 00
	clc		; 18
	rti		; 40

	brk $F8.b		; 00 F8
	lda $1900.w,Y		; B9 00 19
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp ($00.b,X)		; C1 00
	inc A		; 1A
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp #$00.b		; C9 00
	tas		; 1B
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cmp ($00.b),Y		; D1 00
	trb $FF40.w		; 1C 40 FF
	sbc $00D1.w,Y		; F9 D1 00
	ora $0740.w,X		; 1D 40 07
	sbc ($D1.b),Y		; F1 D1
	brk $1E.b		; 00 1E
	rti		; 40

	stp		; DB
	ora $E9.b,X		; 15 E9
	php		; 08
	ora $0DEB48.l,X		; 1F 48 EB 0D
	sbc ($00.b),Y		; F1 00
	and ($40.b,X)		; 21 40
	stp		; DB
	ora $00F9.w,X		; 1D F9 00
	jsl $15E340.l		; 22 40 E3 15
	sbc $2300.w,Y		; F9 00 23
	rti		; 40

	xba		; EB
	ora $00F9.w		; 0D F9 00
	bit $40.b		; 24 40
	sbc ($05.b,S),Y		; F3 05
	sbc [$00.b],Y		; F7 00
	and $40.b		; 25 40
	trb $08.b		; 14 08
	inx		; E8
	sbc ($08.b,X)		; E1 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	sbc ($08.b,X)		; E1 08
	cop $48.b		; 02 48
	inx		; E8
	php		; 08
	sbc ($08.b,X)		; E1 08
	tsb $48.b		; 04 48
	cpx #$10.b		; E0 10
	sbc ($08.b),Y		; F1 08
	asl $48.b		; 06 48
	beq   0.b		; F0 00
	sbc ($08.b),Y		; F1 08
	php		; 08
	pha		; 48
	brk $F0.b		; 00 F0
	sbc ($08.b),Y		; F1 08
	asl A		; 0A
	pha		; 48
	jsr ($D1F4.w,X)		; FC F4 D1
	php		; 08
	tsb $FD48.w		; 0C 48 FD
	sbc ($C1.b,S),Y		; F3 C1
	php		; 08
	asl $0D48.w		; 0E 48 0D
	sbc $C1.b,S		; E3 C1
	php		; 08
	jsr $E048.w		; 20 48 E0
	clc		; 18
	sbc #$00.b		; E9 00
	jsl $E81040.l		; 22 40 10 E8
	sbc ($00.b),Y		; F1 00
	and $40.b,S		; 23 40
	tsb $F4.b		; 04 F4
	lda $2400.w,Y		; B9 00 24
	rti		; 40

	tsb $B9EC.w		; 0C EC B9
	brk $25.b		; 00 25
	rti		; 40

	trb $E4.b		; 14 E4
	lda $2600.w,Y		; B9 00 26
	rti		; 40

	php		; 08
	beq -79.b		; F0 B1
	brk $27.b		; 00 27
	rti		; 40

	tsb $D1EC.w		; 0C EC D1
	brk $28.b		; 00 28
	rti		; 40

	tsb $D9EC.w		; 0C EC D9
	brk $29.b		; 00 29
	rti		; 40

	beq   8.b		; F0 08
	cmp #$00.b		; C9 00
	rol A		; 2A
	rti		; 40

	clc		; 18
	cpx #$E9.b		; E0 E9
	brk $2B.b		; 00 2B
	rti		; 40

	sbc $03.b,X		; F5 03
	cmp [$00.b]		; C7 00
	bit $2040.w		; 2C 40 20
	and #$C7.b		; 29 C7
	lda $0008.w,Y		; B9 08 00
	pha		; 48
	ora $B9D7.w,Y		; 19 D7 B9
	php		; 08
	cop $48.b		; 02 48
	ora #$E7.b		; 09 E7
	lda $0408.w,Y		; B9 08 04
	pha		; 48
	and #$C7.b		; 29 C7
	cmp #$08.b		; C9 08
	asl $48.b		; 06 48
	and #$C7.b		; 29 C7
	cmp $0808.w,Y		; D9 08 08
	pha		; 48
	ora $C9D7.w,Y		; 19 D7 C9
	php		; 08
	asl A		; 0A
	pha		; 48
	ora $D9D7.w,Y		; 19 D7 D9
	php		; 08
	tsb $0948.w		; 0C 48 09
	sbc [$C9.b]		; E7 C9
	php		; 08
	asl $0948.w		; 0E 48 09
	sbc [$D9.b]		; E7 D9
	php		; 08
	jsr $F948.w		; 20 48 F9
	sbc [$D9.b],Y		; F7 D9
	php		; 08
	jsl $F7F948.l		; 22 48 F9 F7
	cmp #$08.b		; C9 08
	bit $48.b		; 24 48
	inc $E902.w		; EE 02 E9
	php		; 08
	rol $48.b		; 26 48
	inc $E9F2.w,X		; FE F2 E9
	php		; 08
	plp		; 28
	pha		; 48
	asl $E9E2.w		; 0E E2 E9
	php		; 08
	rol A		; 2A
	pha		; 48
	asl $E9D2.w,X		; 1E D2 E9
	php		; 08
	bit $E048.w		; 2C 48 E0
	clc		; 18
	sbc $2E00.w,Y		; F9 00 2E
	rti		; 40

	inx		; E8
	bpl  -7.b		; 10 F9
	brk $2F.b		; 00 2F
	rti		; 40

	beq   8.b		; F0 08
	sbc $3E00.w,Y		; F9 00 3E
	rti		; 40

	sed		; F8
	brk $F9.b		; 00 F9
	brk $3F.b		; 00 3F
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $4000.w,Y		; F9 00 40
	rti		; 40

	php		; 08
	beq  -7.b		; F0 F9
	brk $41.b		; 00 41
	rti		; 40

	bpl -24.b		; 10 E8
	sbc $4200.w,Y		; F9 00 42
	rti		; 40

	clc		; 18
	cpx #$F9.b		; E0 F9
	brk $43.b		; 00 43
	rti		; 40

	jsr $F9D8.w		; 20 D8 F9
	brk $44.b		; 00 44
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b,X)		; C1 00
	eor $40.b		; 45 40
	rol $E9CA.w		; 2E CA E9
	brk $46.b		; 00 46
	rti		; 40

	dec $F11A.w,X		; DE 1A F1
	brk $47.b		; 00 47
	rti		; 40

	inc $12.b		; E6 12
	sbc ($00.b),Y		; F1 00
	pha		; 48
	rti		; 40

	plp		; 28
	bne  -7.b		; D0 F9
	brk $49.b		; 00 49
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc ($00.b,X)		; E1 00
	lsr A		; 4A
	rti		; 40

	plp		; 28
	bne -79.b		; D0 B1
	brk $4B.b		; 00 4B
	rti		; 40

	cld		; D8
	jsr $00F9.w		; 20 F9 00
	jmp $2140.w		; 4C 40 21
	brk $F0.b		; 00 F0
	sbc #$08.b		; E9 08
	brk $48.b		; 00 48
	bpl -32.b		; 10 E0
	sta $0208.w,Y		; 99 08 02
	pha		; 48
	jsr $99D0.w		; 20 D0 99
	php		; 08
	tsb $48.b		; 04 48
	brk $F0.b		; 00 F0
	cmp $0608.w,Y		; D9 08 06
	pha		; 48
	bpl -32.b		; 10 E0
	sbc ($08.b,X)		; E1 08
	php		; 08
	pha		; 48
	php		; 08
	inx		; E8
	lda #$08.b		; A9 08
	asl A		; 0A
	pha		; 48
	clc		; 18
	cld		; D8
	lda #$08.b		; A9 08
	tsb $2848.w		; 0C 48 28
	iny		; C8
	lda #$08.b		; A9 08
	asl $2848.w		; 0E 48 28
	iny		; C8
	lda $2008.w,Y		; B9 08 20
	pha		; 48
	clc		; 18
	cld		; D8
	lda $2208.w,Y		; B9 08 22
	pha		; 48
	php		; 08
	inx		; E8
	lda $2408.w,Y		; B9 08 24
	pha		; 48
	sed		; F8
	sed		; F8
	lda $2608.w,Y		; B9 08 26
	pha		; 48
	brk $F0.b		; 00 F0
	cmp #$08.b		; C9 08
	plp		; 28
	pha		; 48
	bpl -32.b		; 10 E0
	cmp #$08.b		; C9 08
	rol A		; 2A
	pha		; 48
	jsr $C9D0.w		; 20 D0 C9
	php		; 08
	bit $2048.w		; 2C 48 20
	cld		; D8
	sta ($00.b,X)		; 81 00
	rol $2040.w		; 2E 40 20
	cld		; D8
	bit #$00.b		; 89 00
	and $00F840.l		; 2F 40 F8 00
	sbc ($00.b),Y		; F1 00
	rol $F040.w,X		; 3E 40 F0
	php		; 08
	sbc $3F00.w,Y		; F9 00 3F
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $4000.w,Y		; F9 00 40
	rti		; 40

	bmi -56.b		; 30 C8
	lda ($00.b,X)		; A1 00
	eor ($40.b,X)		; 41 40
	brk $F8.b		; 00 F8
	lda ($00.b),Y		; B1 00
	.db $42, $40		; 42 40
	sed		; F8
	brk $C9.b		; 00 C9
	brk $43.b		; 00 43
	rti		; 40

	bmi -56.b		; 30 C8
	cmp #$00.b		; C9 00
	mvp $10,$40		; 44 40 10
	inx		; E8
	cmp $4500.w,Y		; D9 00 45
	rti		; 40

	clc		; 18
	cpx #$D9.b		; E0 D9
	brk $46.b		; 00 46
	rti		; 40

	jsr $D9D8.w		; 20 D8 D9
	brk $47.b		; 00 47
	rti		; 40

	plp		; 28
	bne -39.b		; D0 D9
	brk $48.b		; 00 48
	rti		; 40

	jsr $E1D8.w		; 20 D8 E1
	brk $49.b		; 00 49
	rti		; 40

	ora $0091E9.l		; 0F E9 91 00
	lsr A		; 4A
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	sta ($00.b),Y		; 91 00
	phk		; 4B
	rti		; 40

	ora $0091D9.l,X		; 1F D9 91 00
	jmp $2740.w		; 4C 40 27
	cmp ($91.b),Y		; D1 91
	brk $4D.b		; 00 4D
	rti		; 40

	ora [$F0.b],Y		; 17 F0
	brk $D9.b		; 00 D9
	php		; 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	lda $0208.w,Y		; B9 08 02
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	lda $0408.w,Y		; B9 08 04
	pha		; 48
	cop $EE.b		; 02 EE
	lda #$08.b		; A9 08
	asl $48.b		; 06 48
	sbc $C903.w		; ED 03 C9
	php		; 08
	php		; 08
	pha		; 48
	sbc $C9F3.w,X		; FD F3 C9
	php		; 08
	asl A		; 0A
	pha		; 48
	inx		; E8
	bpl -31.b		; 10 E1
	brk $0C.b		; 00 0C
	rti		; 40

	brk $F8.b		; 00 F8
	cmp $0D00.w,Y		; D9 00 0D
	rti		; 40

	plx		; FA
	inc $00B1.w,X		; FE B1 00
	asl $0040.w		; 0E 40 00
	sed		; F8
	sbc ($00.b,X)		; E1 00
	ora $E61240.l		; 0F 40 12 E6
	lda #$00.b		; A9 00
	trb $1240.w		; 1C 40 12
	inc $B1.b		; E6 B1
	brk $1D.b		; 00 1D
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b),Y		; F1 00
	asl $0D40.w,X		; 1E 40 0D
	xba		; EB
	cmp #$00.b		; C9 00
	ora $13E540.l,X		; 1F 40 E5 13
	sbc #$00.b		; E9 00
	jsr $ED40.w		; 20 40 ED
	phd		; 0B
	sbc #$00.b		; E9 00
	and ($40.b,X)		; 21 40
	cmp $F11B.w,X		; DD 1B F1
	brk $22.b		; 00 22
	rti		; 40

	sbc $13.b		; E5 13
	sbc ($00.b),Y		; F1 00
	and $40.b,S		; 23 40
	cmp $F91B.w,X		; DD 1B F9
	brk $24.b		; 00 24
	rti		; 40

	ora $F3.b		; 05 F3
	sbc $2500.w,Y		; F9 00 25
	rti		; 40

	ora $F9EB.w		; 0D EB F9
	brk $26.b		; 00 26
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	lda $2700.w,Y		; B9 00 27
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc #$00.b		; E9 00
	plp		; 28
	rti		; 40

	inc A		; 1A
	php		; 08
	inx		; E8
	sbc ($08.b,X)		; E1 08
	brk $48.b		; 00 48
	bpl -32.b		; 10 E0
	lda $0208.w,Y		; B9 08 02
	pha		; 48
	bpl -32.b		; 10 E0
	cmp ($08.b),Y		; D1 08
	tsb $48.b		; 04 48
	jsr $D1D0.w		; 20 D0 D1
	php		; 08
	asl $48.b		; 06 48
	jsr $E1D0.w		; 20 D0 E1
	php		; 08
	php		; 08
	pha		; 48
	plp		; 28
	iny		; C8
	lda ($08.b),Y		; B1 08
	asl A		; 0A
	pha		; 48
	php		; 08
	beq -63.b		; F0 C1
	brk $0C.b		; 00 0C
	rti		; 40

	brk $F8.b		; 00 F8
	sbc #$00.b		; E9 00
	ora $1840.w		; 0D 40 18
	cpx #$B1.b		; E0 B1
	brk $0E.b		; 00 0E
	rti		; 40

	jsr $B1D8.w		; 20 D8 B1
	brk $0F.b		; 00 0F
	rti		; 40

	jsr $B9D8.w		; 20 D8 B9
	brk $1C.b		; 00 1C
	rti		; 40

	jsr $C1D8.w		; 20 D8 C1
	brk $1D.b		; 00 1D
	rti		; 40

	plp		; 28
	bne -63.b		; D0 C1
	brk $1E.b		; 00 1E
	rti		; 40

	bmi -56.b		; 30 C8
	cmp ($00.b,X)		; C1 00
	ora $E01840.l,X		; 1F 40 18 E0
	sbc ($00.b,X)		; E1 00
	jsr $0A40.w		; 20 40 0A
	inc $00C9.w		; EE C9 00
	and ($40.b,X)		; 21 40
	ora ($E6.b)		; 12 E6
	cmp #$00.b		; C9 00
	jsl $DE1A40.l		; 22 40 1A DE
	cmp #$00.b		; C9 00
	and $40.b,S		; 23 40
	jsl $00C9D6.l		; 22 D6 C9 00
	bit $40.b		; 24 40
	rol A		; 2A
	dec $00C9.w		; CE C9 00
	and $40.b		; 25 40
	plx		; FA
	inc $00F9.w,X		; FE F9 00
	rol $40.b		; 26 40
	sbc $F1FB.w,X		; FD FB F1
	brk $27.b		; 00 27
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b),Y		; F1 00
	plp		; 28
	rti		; 40

	ora $00F1D9.l,X		; 1F D9 F1 00
	and #$40.b		; 29 40
	ora $00F9D9.l,X		; 1F D9 F9 00
	rol A		; 2A
	rti		; 40

	and [$D1.b]		; 27 D1
	sbc $2B00.w,Y		; F9 00 2B
	rti		; 40

	ora $F8.b,X		; 15 F8
	sed		; F8
	lda [$08.b],Y		; B7 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	lda [$08.b]		; A7 08
	cop $48.b		; 02 48
	ora ($EF.b,X)		; 01 EF
	lda [$08.b]		; A7 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $CF.b,X		; F6 CF
	php		; 08
	asl $48.b		; 06 48
	php		; 08
	beq -65.b		; F0 BF
	brk $08.b		; 00 08
	rti		; 40

	sed		; F8
	brk $C7.b		; 00 C7
	brk $09.b		; 00 09
	rti		; 40

	brk $F8.b		; 00 F8
	cmp [$00.b]		; C7 00
	asl A		; 0A
	rti		; 40

	php		; 08
	beq -57.b		; F0 C7
	brk $0B.b		; 00 0B
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	lda #$00.b		; A9 00
	tsb $F040.w		; 0C 40 F0
	php		; 08
	lda [$00.b],Y		; B7 00
	ora $F840.w		; 0D 40 F8
	brk $97.b		; 00 97
	brk $0E.b		; 00 0E
	rti		; 40

	sbc ($06.b)		; F2 06
	sta $400F00.l,X		; 9F 00 0F 40
	plx		; FA
	inc $009F.w,X		; FE 9F 00
	clc		; 18
	rti		; 40

	cop $F6.b		; 02 F6
	sta $401900.l,X		; 9F 00 19 40
	php		; 08
	beq -73.b		; F0 B7
	brk $1A.b		; 00 1A
	rti		; 40

	trb $E4.b		; 14 E4
	lda $1B00.w		; AD 00 1B
	rti		; 40

	jsr ($DFFC.w,X)		; FC FC DF
	brk $1C.b		; 00 1C
	rti		; 40

	jsr ($E7FC.w,X)		; FC FC E7
	brk $1D.b		; 00 1D
	rti		; 40

	jsr ($EFFC.w,X)		; FC FC EF
	brk $1E.b		; 00 1E
	rti		; 40

	jsr ($F7FC.w,X)		; FC FC F7
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $BB0B.w		; ED 0B BB
	brk $20.b		; 00 20
	rti		; 40

	and $18.b,S		; 23 18
	cld		; D8
	cmp ($08.b)		; D2 08
	brk $48.b		; 00 48
	cpx #$10.b		; E0 10
	sta ($08.b)		; 92 08
	cop $48.b		; 02 48
	beq   0.b		; F0 00
	sta ($08.b)		; 92 08
	tsb $48.b		; 04 48
	brk $F0.b		; 00 F0
	sta ($08.b)		; 92 08
	asl $48.b		; 06 48
	bpl -32.b		; 10 E0
	sta ($08.b)		; 92 08
	php		; 08
	pha		; 48
	inx		; E8
	php		; 08
	ldx #$08.b		; A2 08
	asl A		; 0A
	pha		; 48
	beq   0.b		; F0 00
	lda ($08.b)		; B2 08
	tsb $F848.w		; 0C 48 F8
	sed		; F8
	ldx #$08.b		; A2 08
	asl $0048.w		; 0E 48 00
	beq -78.b		; F0 B2
	php		; 08
	jsr $0848.w		; 20 48 08
	inx		; E8
	ldx #$08.b		; A2 08
	jsl $E01048.l		; 22 48 10 E0
	lda ($08.b)		; B2 08
	bit $48.b		; 24 48
	jsr $B2D0.w		; 20 D0 B2
	php		; 08
	rol $48.b		; 26 48
	clc		; 18
	cld		; D8
	ldx #$08.b		; A2 08
	plp		; 28
	pha		; 48
	trb $C2D4.w		; 1C D4 C2
	php		; 08
	rol A		; 2A
	pha		; 48
	jsr ($C2F4.w,X)		; FC F4 C2
	php		; 08
	bit $0048.w		; 2C 48 00
	sed		; F8
	plx		; FA
	brk $2E.b		; 00 2E
	rti		; 40

	plp		; 28
	bne -46.b		; D0 D2
	brk $2F.b		; 00 2F
	rti		; 40

	jsr $9AD8.w		; 20 D8 9A
	brk $3E.b		; 00 3E
	rti		; 40

	cpx #$18.b		; E0 18
	ldx #$00.b		; A2 00
	and $D02840.l,X		; 3F 40 28 D0
	ldx #$00.b		; A2 00
	rti		; 40

	rti		; 40

	plp		; 28
	bne -86.b		; D0 AA
	brk $41.b		; 00 41
	rti		; 40

	cld		; D8
	jsr $0096.w		; 20 96 00
	.db $42, $40		; 42 40
	sbc $8AFF.w,Y		; F9 FF 8A
	brk $43.b		; 00 43
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	txa		; 8A
	brk $44.b		; 00 44
	rti		; 40

	tsb $C2EC.w		; 0C EC C2
	brk $45.b		; 00 45
	rti		; 40

	trb $E4.b		; 14 E4
	rep #$00		; C2 00
	lsr $40.b		; 46 40
	bit $C2CC.w		; 2C CC C2
	brk $47.b		; 00 47
	rti		; 40

	brk $F8.b		; 00 F8
	nop		; EA
	brk $48.b		; 00 48
	rti		; 40

	brk $F8.b		; 00 F8
	sbc ($00.b)		; F2 00
	eor #$40.b		; 49 40
	jsr ($D2FC.w,X)		; FC FC D2
	brk $4A.b		; 00 4A
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b)		; D2 00
	phk		; 4B
	rti		; 40

	sbc $00DAF9.l,X		; FF F9 DA 00
	jmp $FF40.w		; 4C 40 FF
	sbc $00E2.w,Y		; F9 E2 00
	eor $0F40.w		; 4D 40 0F
	sbc #$E2.b		; E9 E2
	brk $4E.b		; 00 4E
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	sep #$00		; E2 00
	eor $F82140.l		; 4F 40 21 F8
	sed		; F8
	lda [$08.b],Y		; B7 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	lda [$08.b]		; A7 08
	cop $48.b		; 02 48
	ora ($EF.b,X)		; 01 EF
	lda [$08.b]		; A7 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $CF.b,X		; F6 CF
	php		; 08
	asl $48.b		; 06 48
	php		; 08
	beq -65.b		; F0 BF
	brk $08.b		; 00 08
	rti		; 40

	sed		; F8
	brk $C7.b		; 00 C7
	brk $09.b		; 00 09
	rti		; 40

	brk $F8.b		; 00 F8
	cmp [$00.b]		; C7 00
	asl A		; 0A
	rti		; 40

	php		; 08
	beq -57.b		; F0 C7
	brk $0B.b		; 00 0B
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	lda #$00.b		; A9 00
	tsb $F040.w		; 0C 40 F0
	php		; 08
	lda [$00.b],Y		; B7 00
	ora $F840.w		; 0D 40 F8
	brk $97.b		; 00 97
	brk $0E.b		; 00 0E
	rti		; 40

	sbc ($06.b)		; F2 06
	sta $400F00.l,X		; 9F 00 0F 40
	plx		; FA
	inc $009F.w,X		; FE 9F 00
	clc		; 18
	rti		; 40

	cop $F6.b		; 02 F6
	sta $401900.l,X		; 9F 00 19 40
	php		; 08
	beq -73.b		; F0 B7
	brk $1A.b		; 00 1A
	rti		; 40

	trb $E4.b		; 14 E4
	lda $1B00.w		; AD 00 1B
	rti		; 40

	jsr ($DFFC.w,X)		; FC FC DF
	brk $1C.b		; 00 1C
	rti		; 40

	jsr ($E7FC.w,X)		; FC FC E7
	brk $1D.b		; 00 1D
	rti		; 40

	jsr ($EFFC.w,X)		; FC FC EF
	brk $1E.b		; 00 1E
	rti		; 40

	jsr ($F7FC.w,X)		; FC FC F7
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $BB0B.w		; ED 0B BB
	brk $20.b		; 00 20
	rti		; 40

	cpx #$10.b		; E0 10
	sta $2108.w,Y		; 99 08 21
	pha		; 48
	cld		; D8
	clc		; 18
	lda #$08.b		; A9 08
	and $48.b,S		; 23 48
	plp		; 28
	bne -87.b		; D0 A9
	brk $25.b		; 00 25
	rti		; 40

	cpx #$18.b		; E0 18
	lda $2600.w,Y		; B9 00 26
	rti		; 40

	cld		; D8
	jsr $00A1.w		; 20 A1 00
	and [$40.b]		; 27 40
	cpx $910C.w		; EC 0C 91
	brk $28.b		; 00 28
	rti		; 40

	pea $9104.w		; F4 04 91
	brk $29.b		; 00 29
	rti		; 40

	jsr ($91FC.w,X)		; FC FC 91
	brk $2A.b		; 00 2A
	rti		; 40

	tsb $F4.b		; 04 F4
	sta ($00.b),Y		; 91 00
	pld		; 2B
	rti		; 40

	tsb $91EC.w		; 0C EC 91
	brk $2C.b		; 00 2C
	rti		; 40

	asl $E2.b,X		; 16 E2
	sta $2D00.w,Y		; 99 00 2D
	rti		; 40

	ora $00A1D9.l,X		; 1F D9 A1 00
	rol $2340.w		; 2E 40 23
	plp		; 28
	iny		; C8
	sep #$08		; E2 08
	brk $48.b		; 00 48
	ora $94D7.w,Y		; 19 D7 94
	php		; 08
	cop $48.b		; 02 48
	ora ($DE.b)		; 12 DE
	cmp ($08.b)		; D2 08
	tsb $48.b		; 04 48
	jsl $08F2CE.l		; 22 CE F2 08
	asl $48.b		; 06 48
	and ($BD.b,S),Y		; 33 BD
	cmp ($08.b)		; D2 08
	php		; 08
	pha		; 48
	trb $DC.b		; 14 DC
	ldx #$08.b		; A2 08
	asl A		; 0A
	pha		; 48
	bit $A3C4.w		; 2C C4 A3
	php		; 08
	tsb $2D48.w		; 0C 48 2D
	cmp $C2.b,S		; C3 C2
	php		; 08
	asl $3D48.w		; 0E 48 3D
	lda ($C2.b,S),Y		; B3 C2
	php		; 08
	jsr $3548.w		; 20 48 35
	tyx		; BB
	lda ($08.b)		; B2 08
	jsl $EA0648.l		; 22 48 06 EA
	lda ($08.b)		; B2 08
	bit $48.b		; 24 48
	asl $DA.b,X		; 16 DA
	lda ($08.b)		; B2 08
	rol $48.b		; 26 48
	asl $EA.b		; 06 EA
	rep #$08		; C2 08
	plp		; 28
	pha		; 48
	asl $DA.b,X		; 16 DA
	rep #$08		; C2 08
	rol A		; 2A
	pha		; 48
	tsb $AAEC.w		; 0C EC AA
	brk $2C.b		; 00 2C
	rti		; 40

	and #$CF.b		; 29 CF
	stz $2D00.w		; 9C 00 2D
	rti		; 40

	bit $D4.b		; 24 D4
	lda $00.b,S		; A3 00
	rol $3C40.w		; 2E 40 3C
	ldy $00AB.w,X		; BC AB 00
	and $B84040.l		; 2F 40 40 B8
	sep #$00		; E2 00
	bit $0540.w,X		; 3C 40 05
	sbc ($EA.b,S),Y		; F3 EA
	brk $3D.b		; 00 3D
	rti		; 40

	ora $EAEB.w		; 0D EB EA
	brk $3E.b		; 00 3E
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b)		; F2 00
	and $F30540.l,X		; 3F 40 05 F3
	plx		; FA
	brk $40.b		; 00 40
	rti		; 40

	inc A		; 1A
	dec $00F9.w,X		; DE F9 00
	eor ($40.b,X)		; 41 40
	and ($C6.b)		; 32 C6
	sbc ($00.b)		; F2 00
	.db $42, $40		; 42 40
	sec		; 38
	cpy #$E2.b		; C0 E2
	brk $43.b		; 00 43
	rti		; 40

	eor $B3.b		; 45 B3
	lda ($00.b)		; B2 00
	mvp $45,$40		; 44 40 45
	lda ($BA.b,S),Y		; B3 BA
	brk $45.b		; 00 45
	rti		; 40

	ora $E3.b,X		; 15 E3
	jsr ($4600.w,X)		; FC 00 46
	rti		; 40

	sec		; 38
	cpy #$EA.b		; C0 EA
	brk $47.b		; 00 47
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sty $00.b,X		; 94 00
	pha		; 48
	rti		; 40

	eor $B5.b,S		; 43 B5
	cmp ($00.b)		; D2 00
	eor #$40.b		; 49 40
	eor $B5.b,S		; 43 B5
	phx		; DA
	brk $4A.b		; 00 4A
	rti		; 40

	ora $00E2E9.l		; 0F E9 E2 00
	phk		; 4B
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	sep #$00		; E2 00
	jmp $1F40.w		; 4C 40 1F
	brk $F0.b		; 00 F0
	sbc #$08.b		; E9 08
	brk $48.b		; 00 48
	bpl -32.b		; 10 E0
	sta ($08.b),Y		; 91 08
	cop $48.b		; 02 48
	jsr $91D0.w		; 20 D0 91
	php		; 08
	tsb $48.b		; 04 48
	plp		; 28
	iny		; C8
	lda ($08.b,X)		; A1 08
	asl $48.b		; 06 48
	clc		; 18
	cld		; D8
	lda ($08.b,X)		; A1 08
	php		; 08
	pha		; 48
	plp		; 28
	iny		; C8
	lda ($08.b),Y		; B1 08
	asl A		; 0A
	pha		; 48
	plp		; 28
	iny		; C8
	cmp ($08.b,X)		; C1 08
	tsb $1848.w		; 0C 48 18
	cld		; D8
	lda ($08.b),Y		; B1 08
	asl $0848.w		; 0E 48 08
	inx		; E8
	lda #$08.b		; A9 08
	jsr $1848.w		; 20 48 18
	cld		; D8
	cmp ($08.b,X)		; C1 08
	jsl $D02048.l		; 22 48 20 D0
	cmp ($08.b),Y		; D1 08
	bit $48.b		; 24 48
	clc		; 18
	cld		; D8
	sbc ($08.b,X)		; E1 08
	rol $48.b		; 26 48
	php		; 08
	inx		; E8
	lda $2808.w,Y		; B9 08 28
	pha		; 48
	sed		; F8
	sed		; F8
	cmp #$08.b		; C9 08
	rol A		; 2A
	pha		; 48
	php		; 08
	inx		; E8
	cmp #$08.b		; C9 08
	bit $0048.w		; 2C 48 00
	beq -39.b		; F0 D9
	php		; 08
	rol $F048.w		; 2E 48 F0
	php		; 08
	sbc $4000.w,Y		; F9 00 40
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $4100.w,Y		; F9 00 41
	rti		; 40

	jsr $81D8.w		; 20 D8 81
	brk $42.b		; 00 42
	rti		; 40

	jsr $89D8.w		; 20 D8 89
	brk $43.b		; 00 43
	rti		; 40

	php		; 08
	beq -111.b		; F0 91
	brk $44.b		; 00 44
	rti		; 40

	sed		; F8
	brk $F1.b		; 00 F1
	brk $45.b		; 00 45
	rti		; 40

	bpl -24.b		; 10 E8
	lda ($00.b,X)		; A1 00
	lsr $40.b		; 46 40
	brk $F8.b		; 00 F8
	lda ($00.b),Y		; B1 00
	eor [$40.b]		; 47 40
	brk $F8.b		; 00 F8
	lda $4800.w,Y		; B9 00 48
	rti		; 40

	brk $F8.b		; 00 F8
	cmp ($00.b,X)		; C1 00
	eor #$40.b		; 49 40
	clc		; 18
	cpx #$D1.b		; E0 D1
	brk $4A.b		; 00 4A
	rti		; 40

	bpl -24.b		; 10 E8
	cmp $4B00.w,Y		; D9 00 4B
	rti		; 40

	clc		; 18
	cpx #$D9.b		; E0 D9
	brk $4C.b		; 00 4C
	rti		; 40

	bpl -24.b		; 10 E8
	sbc ($00.b,X)		; E1 00
	eor $1040.w		; 4D 40 10
	inx		; E8
	sbc #$00.b		; E9 00
	lsr $1940.w		; 4E 40 19
	tsb $EC.b		; 04 EC
	dex		; CA
	php		; 08
	brk $48.b		; 00 48
	ora $EB.b		; 05 EB
	lda ($08.b)		; B2 08
	cop $48.b		; 02 48
	sbc $089AF1.l,X		; FF F1 9A 08
	tsb $48.b		; 04 48
	ora $089AE1.l		; 0F E1 9A 08
	asl $48.b		; 06 48
	brk $F8.b		; 00 F8
	phx		; DA
	brk $08.b		; 00 08
	rti		; 40

	php		; 08
	beq -38.b		; F0 DA
	brk $09.b		; 00 09
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sep #$00		; E2 00
	asl A		; 0A
	rti		; 40

	brk $F8.b		; 00 F8
	tax		; AA
	brk $0B.b		; 00 0B
	rti		; 40

	and $C3.b,X		; 35 C3
	lda $0C00.w,Y		; B9 00 0C
	rti		; 40

	and $B9BB.w,X		; 3D BB B9
	brk $0D.b		; 00 0D
	rti		; 40

	php		; 08
	beq -86.b		; F0 AA
	brk $0E.b		; 00 0E
	rti		; 40

	ora $E3.b,X		; 15 E3
	lda ($00.b)		; B2 00
	ora $E31540.l		; 0F 40 15 E3
	tsx		; BA
	brk $18.b		; 00 18
	rti		; 40

	ora $F3.b		; 05 F3
	rep #$00		; C2 00
	ora $0D40.w,Y		; 19 40 0D
	xba		; EB
	rep #$00		; C2 00
	inc A		; 1A
	rti		; 40

	ora $E3.b,X		; 15 E3
	rep #$00		; C2 00
	tas		; 1B
	rti		; 40

	and $BBCB.w		; 2D CB BB
	brk $1C.b		; 00 1C
	rti		; 40

	and $D3.b		; 25 D3
	ldy $1D00.w,X		; BC 00 1D
	rti		; 40

	ora $BEDB.w,X		; 1D DB BE
	brk $1E.b		; 00 1E
	rti		; 40

	rol $B1BA.w,X		; 3E BA B1
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $00EAF9.l,X		; FF F9 EA 00
	jsr $FF40.w		; 20 40 FF
	sbc $00F2.w,Y		; F9 F2 00
	and ($40.b,X)		; 21 40
	sbc $00FAF9.l,X		; FF F9 FA 00
	jsl $E81040.l		; 22 40 10 E8
	tax		; AA
	brk $23.b		; 00 23
	rti		; 40

	clc		; 18
	cpx #$AA.b		; E0 AA
	brk $24.b		; 00 24
	rti		; 40

	ora [$FD.b],Y		; 17 FD
	sbc ($96.b,S),Y		; F3 96
	php		; 08
	brk $48.b		; 00 48
	sbc $9E03.w		; ED 03 9E
	php		; 08
	cop $48.b		; 02 48
	ora $EB.b		; 05 EB
	ldx $08.b		; A6 08
	tsb $48.b		; 04 48
	ora $EB.b		; 05 EB
	inc $08.b,X		; F6 08
	asl $48.b		; 06 48
	ora $EB.b		; 05 EB
	inc $08.b		; E6 08
	php		; 08
	pha		; 48
	sbc $AE03.w		; ED 03 AE
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc $B6F3.w,X		; FD F3 B6
	php		; 08
	tsb $ED48.w		; 0C 48 ED
	ora $BE.b,S		; 03 BE
	php		; 08
	asl $FD48.w		; 0E 48 FD
	sbc ($C6.b,S),Y		; F3 C6
	php		; 08
	jsr $ED48.w		; 20 48 ED
	ora $CE.b,S		; 03 CE
	php		; 08
	jsl $F3FD48.l		; 22 48 FD F3
	dec $08.b,X		; D6 08
	bit $48.b		; 24 48
	sbc $DE03.w		; ED 03 DE
	php		; 08
	rol $48.b		; 26 48
	sbc $FB.b,X		; F5 FB
	inc $2808.w		; EE 08 28
	pha		; 48
	sbc $0B.b		; E5 0B
	inc $2A08.w		; EE 08 2A
	pha		; 48
	ora $C1EB.w		; 0D EB C1
	brk $2C.b		; 00 2C
	rti		; 40

	sbc $A6FB.w,X		; FD FB A6
	rti		; 40

	ora ($00.b,S),Y		; 13 00
	sbc $AEFB.w,X		; FD FB AE
	brk $2D.b		; 00 2D
	rti		; 40

	sbc $13.b		; E5 13
	inc $00.b		; E6 00
	rol $FD40.w		; 2E 40 FD
	xce		; FB
	inc $00.b		; E6 00
	and $13E540.l		; 2F 40 E5 13
	inc $3C00.w,X		; FE 00 3C
	rti		; 40

	sbc $FE0B.w		; ED 0B FE
	brk $3D.b		; 00 3D
	rti		; 40

	sbc $03.b,X		; F5 03
	inc $3E00.w,X		; FE 00 3E
	rti		; 40

	sbc $13.b		; E5 13
	lda [$00.b]		; A7 00
	and $FFFF40.l,X		; 3F 40 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $20FFFF.l,X		; FF FF FF 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $00.b		; 04 00
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
	brk $40.b		; 00 40
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $10.b		; 00 10
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $80.b		; 04 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

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
	rti		; 40

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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $0000FF.l,X		; FF FF 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
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
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	brk $08.b		; 00 08
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
	brk $40.b		; 00 40
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $40.b		; 00 40
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
	bpl   1.b		; 10 01
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
	brk $80.b		; 00 80
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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	php		; 08
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $80.b		; 00 80
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $80.b		; 00 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $01.b		; 00 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	php		; 08
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
	rti		; 40

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
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($00.b,X)		; 01 00
	brk $40.b		; 00 40
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
	brk $01.b		; 00 01
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
	cop $00.b		; 02 00
	php		; 08
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bpl   0.b		; 10 00
	tsb $00.b		; 04 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	.db $00		; Opcode 00 overrunning bank boundry at 04FFFF. Skipping.
.ENDS
