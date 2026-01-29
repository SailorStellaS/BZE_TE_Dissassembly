.BANK 5 SLOT 0
.ORG $0000

.SECTION "Bank5" FORCE

	and $0088.w,X		; 3D 88 00
	sbc $032AF8.l,X		; FF F8 2A 03
	brk $0C.b		; 00 0C
	sbc $F8EE.w,X		; FD EE F8
	ora $BFFF.w		; 0D FF BF
	beq  32.b		; F0 20
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	brk $A0.b		; 00 A0
	rti		; 40

	bcc  96.b		; 90 60
	cmp $FF3F30.l		; CF 30 3F FF
	sbc ($E3.b),Y		; F1 E3
	inx		; E8
	jsr ($FF40.w,X)		; FC 40 FF
	rts		; 60

	rts		; 60

	bmi  48.b		; 30 30
	sbc $FF1CF0.l,X		; FF F0 1C FF
	eor $1C2E00.l		; 4F 00 2E 1C
	adc $7FFF3E.l,X		; 7F 3E FF 7F
	sbc $F27E.w,X		; FD 7E F2
	adc $3BC4.w,X		; 7D C4 3B
	sbc $1CE2C3.l,X		; FF C3 E2 1C
	trb $3E3E.w		; 1C 3E 3E
	adc $7C7C7F.l,X		; 7F 7F 7C 7C
	bvs 112.b		; 70 70
	pea $FF0F.w		; F4 0F FF
	and $0F3C03.l,X		; 3F 03 3C 0F
	beq  63.b		; F0 3F
	cmp $00F0F0.l		; CF F0 F0 00
	bpl -32.b		; 10 E0
	php		; 08
	beq  60.b		; F0 3C
	sed		; F8
	tsb $AEFB.w		; 0C FB AE
	tsb $C80C.w		; 0C 0C C8
	cpy #$C0.b		; C0 C0
	stz $FCFF.w,X		; 9E FF FC
	ora $FF.b,S		; 03 FF
	ora ($BE.b,X)		; 01 BE
	ora $FDA8FF.l		; 0F FF A8 FD
	bit $0604.w,X		; 3C 04 06
	brk $01.b		; 00 01
	trb $1E.b		; 14 1E
	adc ($F8.b)		; 72 F8
	tsb $80F2.w		; 0C F2 80
	sty $80.b		; 84 80
	sed		; F8
	cpx #$C7.b		; E0 C7
	sbc ($0E.b,X)		; E1 0E
	bne -16.b		; D0 F0
	ora $DF3F00.l		; 0F 00 3F DF
	sbc $0038.w,X		; FD 38 00
	sbc ($07.b),Y		; F1 07
	sta [$FE.b]		; 87 FE
	inc $01FC.w,X		; FE FC 01
	jmp ($7F00.w,X)		; 7C 00 7F
	sec		; 38
	inc $2618.w,X		; FE 18 26
	.db $82, $FF, $06		; 82 FF 06
	lda $0CFF.w,X		; BD FF 0C
	bvs -124.b		; 70 84
	ora ($E3.b,X)		; 01 E3
	inc $007F.w,X		; FE 7F 00
	lda ($02.b,S),Y		; B3 02
	jsr ($0CF4.w,X)		; FC F4 0C
	jsr ($9FFB.w,X)		; FC FB 9F
	rts		; 60

	ora $8F9FF3.l		; 0F F3 9F 8F
	ora ($63.b,X)		; 01 63
	sbc $E7FF07.l,X		; FF 07 FF E7
	sta [$CE.b],Y		; 97 CE
	ldy $F8FF.w,X		; BC FF F8
	and ($F3.b),Y		; 31 F3
	brk $63.b		; 00 63
	brk $07.b		; 00 07
	brk $E7.b		; 00 E7
	lda $C33CCE.l		; AF CE 3C C3
	bpl -13.b		; 10 F3
	sbc $FE3BC2.l,X		; FF C2 3B FE
	adc ($FE.b,S),Y		; 73 FE
	ora [$04.b]		; 07 04
	bcc -61.b		; 90 C3
	cpy #$3A.b		; C0 3A
	inc $6173.w,X		; FE 73 61
	brk $FE.b		; 00 FE
	dex		; CA
	bra -113.b		; 80 8F
	jsr ($80FE.w,X)		; FC FE 80
	ora $8E9E5F.l		; 0F 5F 9E 8E
	sbc $B9FF9C.l,X		; FF 9C FF B9
	php		; 08
	sbc ($70.b),Y		; F1 70
	dec $FE.b		; C6 FE
	and $008E9E.l,X		; 3F 9E 8E 00
	eor [$18.b]		; 47 18
	stz $B900.w		; 9C 00 B9
	sta ($B3.b,X)		; 81 B3
	stz $FDFF.w		; 9C FF FD
	adc ($38.b,X)		; 61 38
	inc $E2C2.w,X		; FE C2 E2
	sbc $007EC1.l,X		; FF C1 7E 00
	asl $1846.w		; 0E 46 18
	jmp ($FEFD.w,X)		; 7C FD FE
.ACCU 16
	rep #$E2		; C2 E2
	brk $20.b		; 00 20
	asl $E4A2.w,X		; 1E A2 E4
	plb		; AB
	inc $FFFB.w,X		; FE FB FF
	adc $6078FF.l		; 6F FF 78 60
	dec $FF.b,X		; D6 FF
	inc $00.b,X		; F6 00
	mvn $AB,$00		; 54 00 AB
	inc $00FB.w,X		; FE FB 00
	adc $C9FFFC.l		; 6F FC FF C9
	dec $00.b,X		; D6 00
	inc $30.b,X		; F6 30
	cmp $FF37FB.l		; CF FB 37 FF
	tda		; 7B
	sbc $703C30.l,X		; FF 30 3C 70
	dey		; 88
	brk $36.b		; 00 36
	tya		; 98
	brk $1F.b		; 00 1F
	dec $CF.b		; C6 CF
.ACCU 16
.INDEX 16
	rep #$3D		; C2 3D
	ldx #$F18A.w		; A2 8A F1
	lda [$83.b],Y		; B7 83
	brk $67.b		; 00 67
	dey		; 88
	sbc ($FF.b),Y		; F1 FF
	cpy #$36E3.w		; C0 E3 36
	sty $C7FE.w		; 8C FE C7
	cpx $8FF5.w		; EC F5 8F
	sbc $1CC0.w,X		; FD C0 1C
	eor ($01.b)		; 52 01
	inc $FA00.w,X		; FE 00 FA
	inc $E070.w,X		; FE 70 E0
	sbc ($FC.b),Y		; F1 FC
	brk $3E.b		; 00 3E
	and $6FF6.w,Y		; 39 F6 6F
	bit $7003.w,X		; 3C 03 70
	ora $C3FEF0.l		; 0F F0 FE C3
	and ($80.b,X)		; 21 80
	bra -16.b		; 80 F0
	beq  31.b		; F0 1F
	ora $FE0FCF.l,X		; 1F CF 0F FE
	sta $0FFF00.l		; 8F 00 FF 0F
	sbc $0001F0.l,X		; FF F0 01 00
	asl $01.b		; 06 01
	php		; 08
	ora [$10.b]		; 07 10
	ora $230FF0.l,X		; 1F F0 0F 23
	ora $7F3F4F.l,X		; 1F 4F 3F 7F
	cmp $01FF.w,Y		; D9 FF 01
	ora ($01.b,X)		; 01 01
	jsl $E60707.l		; 22 07 07 E6
	jmp.w [$FF3F]		; DC 3F FF
	cpx $E843.w		; EC 43 E8
	sbc $1F.b,S		; E3 1F
	bra -13.b		; 80 F3
	sbc $F0FFFC.l,X		; FF FC FF F0
	sta ($FF.b,S),Y		; 93 FF
	.db $42, $0A		; 42 0A
	inx		; E8
	sbc ($F0.b,S),Y		; F3 F0
	jsr ($5041.w,X)		; FC 41 50
	clv		; B8
	cpy #$E8EF.w		; C0 EF E8
	sbc $589D.w,X		; FD 9D 58
	sbc $E8.b,X		; F5 E8
	sbc $F5FF.w,X		; FD FF F5
	phy		; 5A
	inc $24.b,X		; F6 24
	stp		; DB
	ora [$FB.b]		; 07 FB
	ora $FE3FFD.l		; 0F FD 3F FE
	inx		; E8
	sed		; F8
	ora $00F550.l		; 0F 50 F5 00
	jsr ($50F0.w,X)		; FC F0 50
	sed		; F8
	inc $F0F8.w,X		; FE F8 F0
	bne -64.b		; D0 C0
	rol $40.b,X		; 36 40
	ldx $E9.b,Y		; B6 E9
	bcc   0.b		; 90 00
	inc $FCFF.w,X		; FE FF FC
	sed		; F8
	lsr $00.b		; 46 00
	stx $D3.b		; 86 D3
	inc $7FA7.w,X		; FE A7 7F
	ora [$DA.b]		; 07 DA
	bpl -15.b		; 10 F1
	sbc $F67E8C.l,X		; FF 8C 7E F6
	nop		; EA
	sei		; 78
	brk $B1.b		; 00 B1
	bit $0730.w,X		; 3C 30 07
	sbc $B81F.w,Y		; F9 1F B8
	sbc ($FF.b),Y		; F1 FF
	sbc $404618.l,X		; FF 18 46 40
	sta $FC60.w		; 8D 60 FC
	dec $8CB0.w,X		; DE B0 8C
	eor ($FF.b),Y		; 51 FF
	clc		; 18
	cmp $FC60.w		; CD 60 FC
	cmp $F1.b,X		; D5 F1
	asl $41.b,X		; 16 41
	cpx #$F1DE.w		; E0 DE F1
	adc [$E2.b]		; 67 E2
	adc $E9.b		; 65 E9
	ora ($80.b,X)		; 01 80
	adc $ED.b,S		; 63 ED
	plb		; AB
	cmp [$E2.b],Y		; D7 E2
	sbc ($DF.b),Y		; F1 DF
	asl $E0.b,X		; 16 E0
	asl $3CFF.w		; 0E FF 3C
	sbc $F1FFF8.l,X		; FF F8 FF F1
	sbc $F4F176.l,X		; FF 76 F1 F4
	cmp [$E3.b],Y		; D7 E3
	sbc $3C000E.l		; EF 0E 00 3C
	brk $F8.b		; 00 F8
	brk $F1.b		; 00 F1
	sta $FCE0F1.l,X		; 9F F1 E0 FC
	php		; 08
	bmi 127.b		; 30 7F
	cpy $FF.b		; C4 FF
	dec $FCF0.w,X		; DE F0 FC
	jsl $FFE900.l		; 22 00 E9 FF
	tda		; 7B
	cpy $40.b		; C4 40
	cmp [$D5.b]		; C7 D5
	sbc $F0.b,X		; F5 F0
	cpx #$F3FC.w		; E0 FC F3
	bra -58.b		; 80 C6
	cli		; 58
	sty $E7.b		; 84 E7
	cpy #$6079.w		; C0 79 60
	jsr ($C649.w,X)		; FC 49 C6
	cld		; D8
	sbc $79C0E7.l,X		; FF E7 C0 79
	cpy #$C7FD.w		; C0 FD C7
	sbc $EFFFF7.l,X		; FF F7 FF EF
	sbc $90FF8C.l,X		; FF 8C FF 90
	inc $E088.w,X		; FE 88 E0
	cpx $C7EF.w		; EC EF C7
	brk $F7.b		; 00 F7
	brk $EF.b		; 00 EF
	brk $EB.b		; 00 EB
	and [$8C.b]		; 27 8C
	brk $88.b		; 00 88
	cpx #$D7FC.w		; E0 FC D7
	nop		; EA
	sec		; 38
	brk $10.b		; 00 10
	brk $90.b		; 00 90
	asl $01.b,X		; 16 01
	brk $76.b		; 00 76
	sbc ($63.b),Y		; F1 63
	lda $B1F2DD.l,X		; BF DD F2 B1
	cmp $01E26F.l,X		; DF 6F E2 01
	ora ($8F.b,X)		; 01 8F
	sta ($01.b),Y		; 91 01
	rti		; 40

	bvc -44.b		; 50 D4
	sbc ($FE.b),Y		; F1 FE
	rti		; 40

	tsa		; 3B
	bvs  12.b		; 70 0C
	sbc ($91.b),Y		; F1 91
	sbc ($28.b,X)		; E1 28
	sbc #$A2FE.w		; E9 FE A2
	and $3F.b,S		; 23 3F
	ora $07.b,S		; 03 07
	sbc $3FCFFF.l		; EF FF CF 3F
	lda $F3785A.l,X		; BF 5A 78 F3
	cmp $FC.b,S		; C3 FC
	and $3FE2D5.l,X		; 3F D5 E2 3F
	cpx $FF.b		; E4 FF
	adc $F460F0.l,X		; 7F F0 60 F4
	adc $F07FFC.l,X		; 7F FC 7F F0
	adc $507FC0.l,X		; 7F C0 7F 50
	and $335707.l		; 2F 07 57 33
	asl $040F.w		; 0E 0F 04
	inc $E488.w,X		; FE 88 E4
	rti		; 40

	rti		; 40

	adc $48F7.w,Y		; 79 F7 48
	beq  22.b		; F0 16
	eor $7D.b,X		; 55 7D
	rts		; 60

	inc $E8.b,X		; F6 E8
	sed		; F8
	ora #$FCF0.w		; 09 F0 FC
	inx		; E8
	sbc $F0FDFE.l,X		; FF FE FD F0
	sed		; F8
	ora #$03FC.w		; 09 FC 03
	beq  15.b		; F0 0F
	bne  -8.b		; D0 F8
	adc ($E8.b)		; 72 E8
	inc $FEFE.w,X		; FE FE FE
	beq  -2.b		; F0 FE
	sed		; F8
	brk $C8.b		; 00 C8
	cmp $03.b,S		; C3 03
	bmi   4.b		; 30 04
	sed		; F8
	inc $F80C.w,X		; FE 0C F8
	bit $42F8.w,X		; 3C F8 42
	tay		; A8
	ldy #$ECFE.w		; A0 FE EC
	jsr ($FCFE.w,X)		; FC FE FC
	sbc $B80BF8.l,X		; FF F8 0B B8
	rol $19F3.w,X		; 3E F3 19
	asl $FD06.w,X		; 1E 06 FD
	ora $7CF6FF.l,X		; 1F FF F6 7C
	brk $78.b		; 00 78
	ora $06.b,S		; 03 06
	lsr $F0FE.w,X		; 5E FE F0
	ora [$CC.b]		; 07 CC
	ldx $FEFF.w		; AE FF FE
	ldy $E9.b,X		; B4 E9
	ora $20.b,X		; 15 20
	sbc $2E09F8.l,X		; FF F8 09 2E
	sbc $89.b,X		; F5 89
	sbc ($FF.b,X)		; E1 FF
	dec $43E0.w,X		; DE E0 43
	sty $BF.b		; 84 BF
	eor ($80.b)		; 52 80
	beq  72.b		; F0 48
	eor #$F8D0.w		; 49 D0 F8
	sed		; F8
	cpx #$F2C4.w		; E0 C4 F2
	inc $E26B.w,X		; FE 6B E2
	cmp [$EA.b]		; C7 EA
	dex		; CA
	tax		; AA
	ora [$FF.b]		; 07 FF
	sbc $E905.w,X		; FD 05 E9
	sbc $32EBDE.l,X		; FF DE EB 32
	sed		; F8
	asl A		; 0A
	ldy $F8.b		; A4 F8
	phd		; 0B
	bcs -121.b		; B0 87
	ldy #$50FC.w		; A0 FC 50
	cpy #$AD1E.w		; C0 1E AD
	sbc ($18.b,X)		; E1 18
	bra  56.b		; 80 38
	inc $440D.w,X		; FE 0D 44
	brk $30.b		; 00 30
	eor ($E9.b,S),Y		; 53 E9
	beq 126.b		; F0 7E
	ldy $F2.b		; A4 F2
	lsr $49FF.w,X		; 5E FF 49
	cmp $E08A.w,Y		; D9 8A E0
	asl $E389.w		; 0E 89 E3
	clc		; 18
	ora ($38.b,X)		; 01 38
	txa		; 8A
	jsr ($3E3A.w,X)		; FC 3A 3E
	dec $FDFD.w,X		; DE FD FD
	xce		; FB
	sbc $44007F.l,X		; FF 7F 00 44
	tsa		; 3B
	jsr ($FE20.w,X)		; FC 20 FE
	dey		; 88
	adc [$89.b],Y		; 77 89
	ror $11.b,X		; 76 11
	inc $1CFE.w		; EE FE 1C
	sbc ($F9.b)		; F2 F9
	sta $F88CFE.l		; 8F FE 8C F8
	asl A		; 0A
	and $FF8F7C.l,X		; 3F 7C 8F FF
	bvs -16.b		; 70 F0
	bvs -32.b		; 70 E0
	cpx #$FFD5.w		; E0 D5 FF
	pha		; 48
	bvc -15.b		; 50 F1
	and $E00CCC.l,X		; 3F CC 0C E0
	sbc ($D8.b)		; F2 D8
	sbc ($00.b)		; F2 00
	nop		; EA
	phd		; 0B
	phk		; 4B
	ora $E1E0.w,X		; 1D E0 E1
	brk $F1.b		; 00 F1
	inc $0102.w,X		; FE 02 01
	inc $24FC.w,X		; FE FC 24
	trb $F4.b		; 14 F4
	inc $FC2A.w,X		; FE 2A FC
	inc $C005.w,X		; FE 05 C0
	beq  10.b		; F0 0A
	pha		; 48
	inx		; E8
	nop		; EA
	asl $F8FF.w,X		; 1E FF F8
	phd		; 0B
	inc $D880.w		; EE 80 D8
	cmp $558F.w,Y		; D9 8F 55
	eor $00.b,X		; 55 00
	lda $80F760.l,X		; BF 60 F7 80
	jsr ($F87A.w,X)		; FC 7A F8
	phd		; 0B
	inx		; E8
	jsr ($EFF8.w,X)		; FC F8 EF
	rti		; 40

	beq  14.b		; F0 0E
	cpx #$0FE8.w		; E0 E8 0F
	sta $3E.b		; 85 3E
	inc $F8.b		; E6 F8
	ora #$FCC8.w		; 09 C8 FC
	ora ($FF.b),Y		; 11 FF
	plx		; FA
	sbc ($CF.b),Y		; F1 CF
	cpy #$0008.w		; C0 08 00
	jmp $10FE2C.l		; 5C 2C FE 10
	brk $31.b		; 00 31
	bit $E8F3.w		; 2C F3 E8
	bmi  27.b		; 30 1B
	sbc ($36.b,S),Y		; F3 36
.ACCU 16
.INDEX 16
	rep #$3B		; C2 3B
	sbc $DFE940.l		; EF 40 E9 DF
	jsr ($7356.w,X)		; FC 56 73
	sta [$20.b]		; 87 20
	php		; 08
	sbc ($08.b,S),Y		; F3 08
	cmp $F6.b,S		; C3 F6
	ora $DAA8B4.l,X		; 1F B4 A8 DA
	sty $0B.b		; 84 0B
	sbc $4FFE0F.l,X		; FF 0F FE 4F
	ora [$87.b]		; 07 87
	lda ($FE.b)		; B2 FE
	sta ($9E.b,S),Y		; 93 9E
	inc $C3.b		; E6 C3
	clc		; 18
	inc $F080.w,X		; FE 80 F0
	ora $80F6A6.l		; 0F A6 F6 80
	jsr $558F.w		; 20 8F 55
	sta $FE.b		; 85 FE
	ldx $F2.b		; A6 F2
	stz $60F4.w		; 9C F4 60
	inc $CA.b,X		; F6 CA
	nop		; EA
	and $A89AE2.l		; 2F E2 9A A8
	ldy $9F.b		; A4 9F
	ora ($CA.b)		; 12 CA
	cpx $DE5C.w		; EC 5C DE
	cpx #$FE9E.w		; E0 9E FE
	sta $F0F1.w		; 8D F1 F0
	dex		; CA
	asl $F020.w,X		; 1E 20 F0
	ora ($70.b),Y		; 11 70
	inc $FE60.w,X		; FE 60 FE
	brk $3F.b		; 00 3F
	ora ($40.b),Y		; 11 40
	bra  62.b		; 80 3E
	inc $FF34.w,X		; FE 34 FF
	stz $F2.b,X		; 74 F2
	and $44.b,X		; 35 44
	cpx #$9BFF.w		; E0 FF 9B
	sbc ($9C.b)		; F2 9C
	inc $FEC0.w,X		; FE C0 FE
	ora $FF.b,S		; 03 FF
	ply		; 7A
	ply		; 7A
	ldy #$DFDF.w		; A0 DF DF
	sta $01E09F.l,X		; 9F 9F E0 01
	sed		; F8
	ora ($F0.b,X)		; 01 F0
	bmi  12.b		; 30 0C
	cmp $38D172.l,X		; DF 72 D1 38
	inc $7007.w,X		; FE 07 70
	sbc $FBFEC6.l,X		; FF C6 FE FB
	xce		; FB
	sbc ($F3.b,S),Y		; F3 F3
	sbc [$F7.b],Y		; F7 F7
	sbc [$E7.b]		; E7 E7
	rti		; 40

	sbc $00FE0F.l,X		; FF 0F FE 00
	and ($0C.b,X)		; 21 0C
	inc $C13C.w,X		; FE 3C C1
	inc $0818.w,X		; FE 18 08
	ldy $FE.b		; A4 FE
	dec $D4.b		; C6 D4
	sbc $EAE0F8.l,X		; FF F8 E0 EA
	sta ($AA.b)		; 92 AA
	tas		; 1B
	sbc ($56.b,S),Y		; F3 56
	cmp $FC5E.w,X		; DD 5E FC
	nop		; EA
	rol $E4.b		; 26 E4
	sbc $F618FC.l,X		; FF FC 18 F6
	sbc [$61.b],Y		; F7 61
	rti		; 40

	xba		; EB
	beq   7.b		; F0 07
	cpx #$EE40.w		; E0 40 EE
	cmp $8F8FCF.l		; CF CF 8F 8F
.ACCU 8
	sep #$EF		; E2 EF
	sbc $EAAC18.l		; EF 18 AC EA
	tsb $03.b		; 04 03
	inc $EAE6.w,X		; FE E6 EA
	ora $E4.b,S		; 03 E4
	xba		; EB
	tax		; AA
	plx		; FA
	cmp ($FC.b)		; D2 FC
	jmp.w [$B8EC]		; DC EC B8
	jsr ($E040.w,X)		; FC 40 E0
	ora $F010.w		; 0D 10 F0
	ora #$1F.b		; 09 1F
	inc $E8.b,X		; F6 E8
	inc $02FD.w,X		; FE FD 02
	sbc ($D5.b)		; F2 D5
	rol A		; 2A
	tsb $C7C4.w		; 0C C4 C7
	dec $F4CF.w		; CE CF F4
	ora $E1D9.w		; 0D D9 E1
	sei		; 78
	sbc $E39F.w		; ED 9F E3
	sty $E4.b,X		; 94 E4
	sbc $F3C3.w,Y		; F9 C3 F3
	sbc ($FF.b),Y		; F1 FF
	pha		; 48
	sta [$B8.b]		; 87 B8
	eor [$48.b]		; 47 48
	and [$05.b],Y		; 37 05
	bpl  -2.b		; 10 FE
	tsx		; BA
	ora $0FFCFE.l		; 0F FE FC 0F
	bra  15.b		; 80 0F
	rti		; 40

	ora $F27030.l		; 0F 30 70 F2
	inc $78FC.w,X		; FE FC 78
	lda [$FF.b],Y		; B7 FF
	ror $FE.b,X		; 76 FE
	jsr ($6EF1.w,X)		; FC F1 6E
	sbc $67E740.l,X		; FF 40 E7 67
	sbc $E8A46F.l		; EF 6F A4 E8
	phd		; 0B
	sbc [$18.b]		; E7 18
	cmp $5FE0.w,Y		; D9 E0 5F
	cop $00.b		; 02 00
	inc $36E4.w,X		; FE E4 36
	sbc $005005.l,X		; FF 05 50 00
	xba		; EB
	cpx $FD.b		; E4 FD
	inc $FE.b		; E6 FE
	sbc $F3.b		; E5 F3
	eor [$EA.b],Y		; 57 EA
	eor $85.b		; 45 85
	rts		; 60

	sbc ($EF.b)		; F2 EF
.ACCU 8
	sep #$2C		; E2 2C
	ldy $FFF3.w		; AC F3 FF
	sbc $3D0F.w,X		; FD 0F 3D
	ora $0303.w,X		; 1D 03 03
	adc $E1.b		; 65 E1
	cmp ($3C.b,X)		; C1 3C
	ora ($FE.b,X)		; 01 FE
	sei		; 78
	ora $F8.b,S		; 03 F8
	and #$3B.b		; 29 3B
	inc $7FE0.w,X		; FE E0 7F
	sbc $7CF4C0.l,X		; FF C0 F4 7C
	ora ($61.b,X)		; 01 61
	mvp $C7,$FE		; 44 FE C7
	lda $A34AFE.l,X		; BF FE 4A A3
	and #$A8.b		; 29 A8
	inc $BF.b,X		; F6 BF
	sbc $1FDADA.l,X		; FF DA DA 1F
	txy		; 9B
	sta $FE114A.l		; 8F 4A 11 FE
	bit $E4FD.w		; 2C FD E4
	sta $4DC8FF.l		; 8F FF C8 4D
	cpx $E2.b		; E4 E2
	bne -39.b		; D0 D9
	rts		; 60

	ora [$3D.b]		; 07 3D
	sbc ($C0.b)		; F2 C0
	and $58.b		; 25 58
	bit $3F.b,X		; 34 3F
	phb		; 8B
	cmp #$58.b		; C9 58
	dec $DFDF.w,X		; DE DF DF
	rol $F2EA.w,X		; 3E EA F2
	cmp [$9C.b],Y		; D7 9C
	php		; 08
	sbc ($80.b)		; F2 80
	bmi -128.b		; 30 80
	and ($00.b),Y		; 31 00
	adc ($B8.b),Y		; 71 B8
	xba		; EB
	iny		; C8
	xba		; EB
	lda $C3.b,S		; A3 C3
	sbc [$F7.b],Y		; F7 F7
	sbc ($FF.b),Y		; F1 FF
	clv		; B8
	cpx $01FC.w		; EC FC 01
	inc $0E1C.w,X		; FE 1C 0E
	pld		; 2B
	ora ($25.b,X)		; 01 25
	nop		; EA
	sec		; 38
	ora $FE.b,S		; 03 FE
	bmi   7.b		; 30 07
	stx $E8.b		; 86 E8
	ora #$5A.b		; 09 5A
	jsr ($0860.w,X)		; FC 60 08
	ldx $FE.b		; A6 FE
	bra  -2.b		; 80 FE
	asl $0802.w,X		; 1E 02 08
	inc $E962.w,X		; FE 62 E9
	inc $A6A6.w,X		; FE A6 A6
	nop		; EA
	ldy #$FFAA.w		; A0 AA FF
	.db $62, $DA, $E4		; 62 DA E4
	asl $0BB8.w		; 0E B8 0B
	sbc $2015F8.l,X		; FF F8 15 20
	sep #$86		; E2 86
	wai		; CB
	nop		; EA
	bmi -71.b		; 30 B9
	inc $F2CE.w		; EE CE F2
	sbc ($F8.b),Y		; F1 F8
	asl A		; 0A
	bpl -14.b		; 10 F2
	php		; 08
	ora [$FE.b]		; 07 FE
	ora [$03.b]		; 07 03
	eor $FE1D.w,Y		; 59 1D FE
	lda $F3.b,S		; A3 F3
	ora $D5EBB1.l		; 0F B1 EB D5
	xba		; EB
	pla		; 68
	dec $FE.b,X		; D6 FE
	jsr ($5D40.w,X)		; FC 40 5D
	inc $D84D.w,X		; FE 4D D8
	sbc #$67.b		; E9 67
	dec $9D.b,X		; D6 9D
	cmp #$0E.b		; C9 0E
	inc $B630.w,X		; FE 30 B6
	eor ($77.b,X)		; 41 77
	sbc $F1CDFC.l,X		; FF FC CD F1
	sed		; F8
	tsb $D3B2.w		; 0C B2 D3
	jsr $FE1F.w		; 20 1F FE
	jsr ($102F.w,X)		; FC 2F 10
	tsx		; BA
	trb $98.b		; 14 98
	cmp [$38.b]		; C7 38
	and $FEF1DA.l,X		; 3F DA F1 FE
	bmi  -6.b		; 30 FA
	ora [$9B.b]		; 07 9B
	ora $F8C1C9.l		; 0F C9 C1 F8
	cpx #$7F60.w		; E0 60 7F
	bra   1.b		; 80 01
	inc $BFFE.w,X		; FE FE BF
	.db $82, $B7, $E1		; 82 B7 E1
	sbc $C3C03F.l,X		; FF 3F C0 C3
	and $B94E.w,X		; 3D 4E B9
	stx $D7.b,Y		; 96 D7
	sta ($00.b)		; 92 00
.ACCU 16
.INDEX 16
	rep #$B0		; C2 B0
	dex		; CA
	adc ($64.b,S),Y		; 73 64
	plp		; 28
	cmp ($FC.b)		; D2 FC
	bne  85.b		; D0 55
	lda $CF.b		; A5 CF
	bcc  63.b		; 90 3F
	lda $CCFA.w,Y		; B9 FA CC
	lsr $E2.b		; 46 E2
	rol $62E2.w		; 2E E2 62
	nop		; EA
	bne -123.b		; D0 85
	ldy $03.b		; A4 03
	jsr ($D977.w,X)		; FC 77 D9
	adc #$AA01.w		; 69 01 AA
	nop		; EA
	sbc ($7A.b,X)		; E1 7A
	clc		; 18
	sei		; 78
	plb		; AB
	tsx		; BA
.ACCU 8
	sep #$E8		; E2 E8
	cmp #$07.b		; C9 07
	cpx #$FE0E.w		; E0 0E FE
	beq  12.b		; F0 0C
	ror $F59C.w		; 6E 9C F5
	beq  16.b		; F0 10
	ora $FEF380.l,X		; 1F 80 F3 FE
	sbc $6A0C0C.l,X		; FF 0C 0C 6A
	lda #$B6.b		; A9 B6
	cpx #$E9CC.w		; E0 CC E9
	sbc $5D81FE.l,X		; FF FE 81 5D
	sbc ($90.b),Y		; F1 90
	ora ($10.b,X)		; 01 10
	trb $FF.b		; 14 FF
	sbc $83BC.w,X		; FD BC 83
	lsr $CB40.w		; 4E 40 CB
	jmp ($0BE8.w)		; 6C E8 0B
	trb $EA.b		; 14 EA
	nop		; EA
	cpx #$0DD8.w		; E0 D8 0D
	ldy $FEAA.w,X		; BC AA FE
	sed		; F8
	bra -55.b		; 80 C9
	xce		; FB
	sbc #$1E.b		; E9 1E
	eor $00D5.w,X		; 5D D5 00
	bit $F8E2.w,X		; 3C E2 F8
	ora $FDFD.w		; 0D FD FD
	sbc ($E3.b,X)		; E1 E3
	bcs -48.b		; B0 D0
	asl A		; 0A
	dec A		; 3A
	cmp ($DE.b)		; D2 DE
	sed		; F8
	phd		; 0B
	sbc $0AD9.w		; ED D9 0A
	inc $06.b,X		; F6 06
	lsr $CC.b		; 46 CC
	jsl $40FEE2.l		; 22 E2 FE 40
	iny		; C8
	ora $F5D03E.l		; 0F 3E D0 F5
	ora $DA5F40.l,X		; 1F 40 5F DA
	ora $E00FC0.l,X		; 1F C0 0F E0
	ora [$C0.b]		; 07 C0
	lsr $E8.b		; 46 E8
	ora #$FF.b		; 09 FF
	cmp $C0E0CF.l		; CF CF E0 C0
	ora $150A.w		; 0D 0A 15
	ora $F1.b,S		; 03 F1
	inx		; E8
	ora $0CF8F0.l		; 0F F0 F8 0C
	adc $D8.b,X		; 75 D8
	rti		; 40

	cpy #$B80A.w		; C0 0A B8
	lda ($0E.b,S),Y		; B3 0E
	lsr $03AE.w,X		; 5E AE 03
	tsb $00.b		; 04 00
	inc $D262.w,X		; FE 62 D2
	ora ($00.b,S),Y		; 13 00
	and $ABEAE7.l		; 2F E7 EA AB
	tax		; AA
	and $FE03DA.l,X		; 3F DA 03 FE
	cpy $1E.b		; C4 1E
	lda ($E8.b)		; B2 E8
	cld		; D8
	asl A		; 0A
	eor $B190D1.l		; 4F D1 90 B1
	sbc $7A2AFD.l,X		; FF FD 2A 7A
	dex		; CA
	dec $D316.w,X		; DE 16 D3
	sta $E2.b		; 85 E2
	bcs -18.b		; B0 EE
	inc $AA.b		; E6 AA
	beq  11.b		; F0 0B
	adc $578384.l,X		; 7F 84 83 57
	and $EC.b,X		; 35 EC
	tya		; 98
	tsb $8087.w		; 0C 87 80
	cmp $0E98.w,X		; DD 98 0E
	eor $C9E1.w		; 4D E1 C9
	inx		; E8
	phd		; 0B
	lsr A		; 4A
	cpy #$FF0A.w		; C0 0A FF
	jsr ($A080.w,X)		; FC 80 A0
	eor [$CD.b]		; 47 CD
	inc $FFFF.w,X		; FE FF FF
	sta $FF879F.l,X		; 9F 9F 87 FF
	tad		; 5B
	sty $8B.b,X		; 94 8B
	inx		; E8
	asl $C0FE.w		; 0E FE C0
	sed		; F8
	ora $F0FE.w		; 0D FE F0
	sed		; F8
	asl A		; 0A
	adc $74.b		; 65 74
	cmp $F10AAB.l,X		; DF AB 0A F1
	cpx #$E448.w		; E0 48 E4
	brk $E8.b		; 00 E8
	ora #$AC.b		; 09 AC
	clv		; B8
	ora #$BC.b		; 09 BC
	pea $F8FF.w		; F4 FF F8
	ora $80AB.w		; 0D AB 80
	tsb $F00F.w		; 0C 0F F0
	pld		; 2B
	lda #$C4.b		; A9 C4
	cmp ($E0.b),Y		; D1 E0
	sbc $0AF1.w,X		; FD F1 0A
	cmp $F0A9DC.l,X		; DF DC A9 F0
	asl A		; 0A
	and ($C9.b),Y		; 31 C9
	sta $C0DC.w,X		; 9D DC C0
	cmp $00.b,S		; C3 00
	and ($80.b,S),Y		; 33 80
	sbc ($BB.b)		; F2 BB
	bit $00.b		; 24 00
	sbc $0CF9.w,Y		; F9 F9 0C
	rep #$C0		; C2 C0
	jsr $A9DA.w		; 20 DA A9
	sbc ($91.b),Y		; F1 91
.INDEX 8
	sep #$D2		; E2 D2
	pld		; 2B
	sbc $00FC39.l,X		; FF 39 FC 00
	sbc [$08.b],Y		; F7 08
	brk $BA.b		; 00 BA
	sta ($E7.b,X)		; 81 E7
	bra -126.b		; 80 82
	sbc $17C4.w		; ED C4 17
	xba		; EB
	brk $FE.b		; 00 FE
	sbc $F65FB6.l		; EF B6 5F F6
	sbc #$00.b		; E9 00
	sed		; F8
	ora $C9C3C0.l		; 0F C0 C3 C9
	cmp ($F1.b,X)		; C1 F1
	sed		; F8
	ora #$C7.b		; 09 C7
	cmp [$C3.b]		; C7 C3
	cmp $C1.b,S		; C3 C1
	beq  -8.b		; F0 F8
	asl A		; 0A
	eor $28.b,X		; 55 28
	ror $F8.b,X		; 76 F8
	ora #$58.b		; 09 58
	sbc ($2B.b)		; F2 2B
	lda $9782.w		; AD 82 97
	eor ($04.b)		; 52 04
	brk $E5.b		; 00 E5
	sed		; F8
	ldy #$FE.b		; A0 FE
	plp		; 28
	pei ($F8.b)		; D4 F8
	sed		; F8
	jmp ($707C.w,X)		; 7C 7C 70
	cpy $DC.b		; C4 DC
	sbc $FC9577.l,X		; FF 77 95 FC
	inc $F400.w,X		; FE 00 F4
	php		; 08
	iny		; C8
	bmi  16.b		; 30 10
	cpx #$20.b		; E0 20
	cpy #$40.b		; C0 40
	sbc $F1.b		; E5 F1
	ror $157E.w,X		; 7E 7E 15
	pei ($C2.b)		; D4 C2
.ACCU 16
	rep #$64		; C2 64
	phx		; DA
	phx		; DA
	ldy $C8.b,X		; B4 C8
	bvc -16.b		; 50 F0
	ora $E4A6.w		; 0D A6 E4
	bra  -8.b		; 80 F8
	asl A		; 0A
	sta [$C3.b]		; 87 C3
	inc $FC02.w,X		; FE 02 FC
	stx $38AD.w		; 8E AD 38
	sei		; 78
	bmi  -2.b		; 30 FE
	beq -117.b		; F0 8B
	sbc $60.b,S		; E3 60
	bne  96.b		; D0 60
	bra -62.b		; 80 C2
	sbc ($38.b),Y		; F1 38
	bmi  -1.b		; 30 FF
	rts		; 60

	eor [$55.b]		; 47 55
	rts		; 60

	rti		; 40

	rti		; 40

	ldy #$FE.b		; A0 FE
	sbc $87CE.w		; ED CE 87
	beq  12.b		; F0 0C
	ldx $1688.w,Y		; BE 88 16
	sbc $551DF8.l,X		; FF F8 1D 55
	pla		; 68
	rol A		; 2A
	ldy $F8FF.w		; AC FF F8
	ora [$56.b],Y		; 17 56
	sta $E801.w,Y		; 99 01 E8
	asl $A8.b,X		; 16 A8
	trb $914D.w		; 1C 4D 91
	sta $2BA4B9.l		; 8F B9 A4 2B
	ldx $EE.b		; A6 EE
	ora $FFE36E.l,X		; 1F 6E E3 FF
	eor $ABEAA2.l		; 4F A2 EA AB
	php		; 08
	cmp $0AF8EE.l		; CF EE F8 0A
	adc [$F6.b]		; 67 F6
	pla		; 68
	sbc ($0E.b)		; F2 0E
	beq   3.b		; F0 03
	inc $BA18.w,X		; FE 18 BA
	lsr $F0.b,X		; 56 F0
	ora #$5EBA.w		; 09 BA 5E
	mvn $10,$E1		; 54 E1 10
	cld		; D8
	tsb $9970.w		; 0C 70 99
	bra -16.b		; 80 F0
	ldy #$E0.b		; A0 E0
	tsb $9B5E.w		; 0C 5E 9B
	and $8A073B.l,X		; 3F 3B 07 8A
	bcs  12.b		; B0 0C
	bvc -93.b		; 50 A3
	stz $F8F1.w,X		; 9E F1 F8
	tsb $99C8.w		; 0C C8 99
	ldx $E1.b,Y		; B6 E1
	cpx #$60.b		; E0 60
	rts		; 60

	ora ($04.b,X)		; 01 04
	sbc $7198.w,X		; FD 98 71
	txs		; 9A
	ora $E6F698.l,X		; 1F 98 F6 E6
	stz $8D.b,X		; 74 8D
	phy		; 5A
	pla		; 68
	dec $C8.b		; C6 C8
	cpx $8080.w		; EC 80 80
	cpx #$CE.b		; E0 CE
	clc		; 18
	sed		; F8
	phd		; 0B
	cop $2A.b		; 02 2A
	jmp ($80A9.w,X)		; 7C A9 80
	ldy $EE.b		; A4 EE
	inc $BAEC.w,X		; FE EC BA
	inc $0018.w		; EE 18 00
	and $00.b,S		; 23 00
	eor $20AB41.l		; 4F 41 AB 20
	bcs  10.b		; B0 0A
	cpx $CA58.w		; EC 58 CA
	stz $09A8.w,X		; 9E A8 09
	php		; 08
	cpy $08F1.w		; CC F1 08
	cpy #$0C.b		; C0 0C
	txa		; 8A
	adc $25A285.l,X		; 7F 85 A2 25
	jsr ($F0FF.w,X)		; FC FF F0
	ora #$6036.w		; 09 36 60
	bra  16.b		; 80 10
	cpx #$0C.b		; E0 0C
	beq  62.b		; F0 3E
	eor $86.b		; 45 86
	adc $A709F0.l,X		; 7F F0 09 A7
	sta ($D4.b,X)		; 81 D4
	beq -84.b		; F0 AC
	tax		; AA
	bcs  -8.b		; B0 F8
	ply		; 7A
	sbc ($F8.b,X)		; E1 F8
	ldy $D608.w		; AC 08 D6
	ldy #$B0.b		; A0 B0
	ora #$8F94.w		; 09 94 8F
	adc $E02355.l,X		; 7F 55 23 E0
	stx $DDC7.w		; 8E C7 DD
	sty $3E.b,X		; 94 3E
	stp		; DB
	ldx $F9DE.w,Y		; BE DE F9
	sbc ($80.b,X)		; E1 80
	inx		; E8
	sta $FA.b,S		; 83 FA
	cpy #$BF.b		; C0 BF
	asl $98FC.w,X		; 1E FC 98
	tya		; 98
	phd		; 0B
	sed		; F8
	inc $F8.b,X		; F6 F8
	cpx #$F6.b		; E0 F6
	sta $82.b		; 85 82
	beq -63.b		; F0 C1
	inx		; E8
	sed		; F8
	tsb $3E44.w		; 0C 44 3E
	cpy $E8.b		; C4 E8
	tsb $5026.w		; 0C 26 50
	sta $07.b		; 85 07
	cpx #$0B.b		; E0 0B
	sbc $F1AA02.l,X		; FF 02 AA F1
	eor ($F8.b),Y		; 51 F8
	ora #$E882.w		; 09 82 E8
	ora $5EF73D.l,X		; 1F 3D F7 5E
	inc A		; 1A
	cop $74.b		; 02 74
	trb $EE.b		; 14 EE
	sed		; F8
	phd		; 0B
	ora $00.b		; 05 00
	phd		; 0B
	sty $E8.b		; 84 E8
	tsb $045B.w		; 0C 5B 04
	ldy $EF.b,X		; B4 EF
	sed		; F8
	phd		; 0B
	mvn $EE,$AD		; 54 AD EE
	bpl -56.b		; 10 C8
	ora $7A94.w		; 0D 94 7A
	ldy $0DF8.w		; AC F8 0D
	sty $0FF8.w		; 8C F8 0F
	tsb $8A.b		; 04 8A
	sed		; F8
	bpl  95.b		; 10 5F
	lda ($E8.b)		; B2 E8
	sbc ($F3.b)		; F2 F3
	jsr ($F8C4.w,X)		; FC C4 F8
	clc		; 18
	bra -31.b		; 80 E1
	and $98.b,S		; 23 98
	bcc  15.b		; 90 0F
	sec		; 38
	dec $2A.b,X		; D6 2A
	sbc $F0.b,X		; F5 F0
	ora ($FF.b),Y		; 11 FF
	sed		; F8
	tsb $6F3F.w		; 0C 3F 6F
	cpx #$0F.b		; E0 0F
	sbc $C310F8.l,X		; FF F8 10 C3
	nop		; EA
	inx		; E8
	asl A		; 0A
	sta ($DA.b,S),Y		; 93 DA
	sbc ($F8.b)		; F2 F8
	phd		; 0B
	eor $FF.b,X		; 55 FF
	bit $5AF0.w,X		; 3C F0 5A
	sed		; F8
	tsb $F8F2.w		; 0C F2 F8
	ora $EDB6.w		; 0D B6 ED
	ora ($07.b,X)		; 01 07
	ora $06.b,S		; 03 06
	cop $0D.b		; 02 0D
	eor [$FF.b],Y		; 57 FF
	ora $0A.b		; 05 0A
	cop $14.b		; 02 14
	and $EA8EFF.l,X		; 3F FF 8E EA
	cpx #$F2.b		; E0 F2
	sbc #$D268.w		; E9 68 D2
	bne -91.b		; D0 A5
	ldy #$FF.b		; A0 FF
	tad		; 5B
	phk		; 4B
	rti		; 40

	stx $81.b,Y		; 96 81
	and $5A02.w		; 2D 02 5A
	ora $B5.b		; 05 B5
	asl A		; 0A
	ora [$BA.b],Y		; 17 BA
	cmp #$905F.w		; C9 5F 90
	sbc #$AFFF.w		; E9 FF AF
	stz $FEEC.w,X		; 9E EC FE
	brk $69.b		; 00 69
	ora [$D2.b],Y		; 17 D2
	and $4B5FA5.l		; 2F A5 5F 4B
	lda $C1189F.l,X		; BF 9F 18 C1
	ply		; 7A
	ror $82E9.w,X		; 7E E9 82
	lda #$69EE.w		; A9 EE 69
	dec $78.b,X		; D6 78
	cpx #$D6.b		; E0 D6
	cpy #$D6.b		; C0 D6
	ora ($FD.b,X)		; 01 FD
	cop $E1.b		; 02 E1
	sta $74.b,S		; 83 74
	cmp ($E8.b)		; D2 E8
	bne  40.b		; D0 28
	ldy #$5E.b		; A0 5E
	rti		; 40

	lda $D855FE.l,X		; BF FE 55 D8
	cpx #$0A.b		; E0 0A
	.db $82, $EA, $9C		; 82 EA 9C
	rts		; 60

	phd		; 0B
	jsr ($FF17.w,X)		; FC 17 FF
	sbc $82FE43.l		; EF 43 FE 82
	nop		; EA
	sta ($F2.b,X)		; 81 F2
	sbc $F085.w,X		; FD 85 F0
	sbc $F104.w,X		; FD 04 F1
	ora $FF.b,S		; 03 FF
	asl $FCFF.w,X		; 1E FF FC
	xce		; FB
	rts		; 60

	inx		; E8
	ora #$F6ED.w		; 09 ED F6
	rtl		; 6B

	asl $BA5C.w,X		; 1E 5C BA
	clc		; 18
	rol A		; 2A
	cmp ($E6.b,X)		; C1 E6
	rti		; 40

	jmp.w [$B880]		; DC 80 B8
	sta ($9B.b),Y		; 91 9B
	ldy $F5.b,X		; B4 F5
	rti		; 40

	eor $52.b,X		; 55 52
	tas		; 1B
	sed		; F8
	phd		; 0B
	and $BBDED1.l,X		; 3F D1 DE BB
	ply		; 7A
	lda ($4E.b,X)		; A1 4E
	rti		; 40

	cmp $C644.w,Y		; D9 44 C6
	xce		; FB
	bne  64.b		; D0 40
	cpx $AC30.w		; EC 30 AC
	adc $00CC.w,Y		; 79 CC 00
	sty $31.b		; 84 31
	inc $BCCC.w,X		; FE CC BC
	lda #$7507.w		; A9 07 75
	bmi  48.b		; 30 30
	sei		; 78
	sei		; 78
	dec $C05C.w,X		; DE 5C C0
	ora #$DAD4.w		; 09 D4 DA
	tsb $B4.b		; 04 B4
	and $AA0880.l,X		; 3F 80 08 AA
	inc $FC38.w,X		; FE 38 FC
	sbc $C65AFD.l,X		; FF FD 5A C6
	pha		; 48
	ldx $B0.b		; A6 B0
	tax		; AA
	phx		; DA
	tsx		; BA
	inc $013C.w,X		; FE 3C 01
	cpy #$88.b		; C0 88
	ora ($67.b),Y		; 11 67
	sty $A6C8.w		; 8C C8 A6
	txa		; 8A
	cmp ($04.b)		; D2 04
	sbc $F6D482.l,X		; FF 82 D4 F6
	sbc $120819.l,X		; FF 19 08 12
	brk $15.b		; 00 15
	brk $1B.b		; 00 1B
	sbc $1600EA.l,X		; FF EA 00 16
	ora ($0D.b,X)		; 01 0D
	cop $0A.b		; 02 0A
	ora $0C.b		; 05 0C
	ora $2C.b,S		; 03 2C
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	jsr ($8C4E.w,X)		; FC 4E 8C
	rtl		; 6B

	sbc $D314BF.l,X		; FF BF 14 D3
	bit $58A7.w		; 2C A7 58
	eor $7897B8.l		; 4F B8 97 78
	and $F85BF8.l		; 2F F8 5B F8
	lda [$F4.b],Y		; B7 F4
	rol $06F9.w,X		; 3E F9 06
	.db $82, $5D, $B6		; 82 5D B6
	sed		; F8
	tsb $F4.b		; 04 F4
	php		; 08
	lda [$04.b]		; A7 04
	inx		; E8
	tas		; 1B
	sbc $AB3F0F.l,X		; FF 0F 3F AB
	inc $0F07.w,X		; FE 07 0F
	ora $E4.b,S		; 03 E4
	txs		; 9A
	sbc $B206C7.l,X		; FF C7 06 B2
	sbc ($FF.b),Y		; F1 FF
	sbc [$F8.b],Y		; F7 F8
	sbc $3FDFF8.l		; EF F8 DF 3F
	bit $AFF0.w		; 2C F0 AF
	beq  78.b		; F0 4E
	beq -98.b		; F0 9E
	rts		; 60

	inc $205C.w,X		; FE 5C 20
	and $515B94.l,X		; 3F 94 5B 51
	inc $A28A.w,X		; FE 8A A2
	jsr $E0A8.w		; 20 A8 E0
	ora $0BB0C4.l,X		; 1F C4 B0 0B
	pei ($8C.b)		; D4 8C
	cpy $FAB7.w		; CC B7 FA
	sbc $B00AF8.l,X		; FF F8 0A B0
	ora [$23.b]		; 07 23
	lda #$3E.b		; A9 3E
	tsa		; 3B
	sta ($9A.b,X)		; 81 9A
	sty $60.b,X		; 94 60
	lda $FC.b,X		; B5 FC
	jsr ($71F1.w,X)		; FC F1 71
	ora $E3F1.w		; 0D F1 E3
	sbc $24E0E0.l,X		; FF E0 E0 24
	.db $82, $DC, $B1		; 82 DC B1
	ora [$E1.b]		; 07 E1
	txs		; 9A
	sec		; 38
	sbc [$67.b]		; E7 67
	bpl   7.b		; 10 07
	beq -64.b		; F0 C0
	sed		; F8
	ora $83A1A1.l		; 0F A1 A1 83
	adc [$55.b]		; 67 55
	jmp.w [$F006]		; DC 06 F0
	inc $A6C6.w,X		; FE C6 A6
	ldy #$F7.b		; A0 F7
	eor $F1E8FF.l,X		; 5F FF E8 F1
	sbc $A8.b,X		; F5 A8
	brk $A1.b		; 00 A1
	pha		; 48
	ldx $98.b		; A6 98
	ldx $05.b,Y		; B6 05
	ora $06.b,S		; 03 06
	cop $E4.b		; 02 E4
	sty $7A.b,X		; 94 7A
	sbc $E2F2D5.l,X		; FF D5 F2 E2
	stx $D8.b,Y		; 96 D8
	ror $E86B.w,X		; 7E 6B E8
	cmp ($20.b,S),Y		; D3 20
	sbc $7405DA.l		; EF DA 05 74
	phd		; 0B
	inx		; E8
	trb $2D.b		; 14 2D
	pei ($D0.b)		; D4 D0
	rol $EA60.w		; 2E 60 EA
	bra  31.b		; 80 1F
	nop		; EA
	jsr ($283F.w,X)		; FC 3F 28
	cpy $F243.w		; CC 43 F2
	lda $C020AA.l		; AF AA 20 C0
	bpl -32.b		; 10 E0
	bit $750A.w		; 2C 0A 75
	ora $D5.b,S		; 03 D5
	dec $A9D2.w,X		; DE D2 A9
	sbc [$88.b],Y		; F7 88
	pei ($42.b)		; D4 42
	sty $B896.w		; 8C 96 B8
	asl A		; 0A
	ldy #$B3.b		; A0 B3
	ora [$3C.b]		; 07 3C
	inc $5508.w,X		; FE 08 55
	ora $308FE0.l		; 0F E0 8F 30
	lda #$F1.b		; A9 F1
	sbc #$1D.b		; E9 1D
	ror $D1BC.w		; 6E BC D1
	sta $2ADF8F.l		; 8F 8F DF 2A
	tay		; A8
	sbc $F8B1.w		; ED B1 F8
	ora $DA.b,X		; 15 DA
	cmp $96.b,X		; D5 96
	lda ($AD.b),Y		; B1 AD
	dec $F5.b		; C6 F5
	ldy $AAEC.w,X		; BC EC AA
	nop		; EA
	asl $A8A9.w		; 0E A9 A8
	txy		; 9B
	bne 126.b		; D0 7E
	adc $B0.b		; 65 B0
	asl A		; 0A
	brk $BD.b		; 00 BD
	beq  -8.b		; F0 F8
	ora $9944.w		; 0D 44 99
	bmi -69.b		; 30 BB
	ora ($A0.b,X)		; 01 A0
	cpx $FE04.w		; EC 04 FE
	dec $D7CA.w		; CE CA D7
	adc ($FF.b,X)		; 61 FF
	plx		; FA
	ror $E1.b,X		; 76 E1
	ldy $EA.b		; A4 EA
	tsb $60FE.w		; 0C FE 60
	txa		; 8A
	trb $007C.w		; 1C 7C 00
	bcs   9.b		; B0 09
	trb $A07C.w		; 1C 7C A0
	ldx #$F0.b		; A2 F0
	tax		; AA
	pea $BB06.w		; F4 06 BB
	cmp #$1B.b		; C9 1B
	nop		; EA
	bra -73.b		; 80 B7
	sbc $28F0FC.l,X		; FF FC F0 28
	ora [$10.b],Y		; 17 10
	adc $090F7D.l		; 6F 7D 0F 09
	ora [$06.b]		; 07 06
	ora ($AD.b,X)		; 01 AD
	sbc $EB9E1F.l		; EF 1F 9E EB
	ldy #$EF.b		; A0 EF
	lsr $BFFC.w,X		; 5E FC BF
	inc $50E1.w,X		; FE E1 50
	eor ($F4.b,S),Y		; 53 F4
	sbc $1F7D.w,Y		; F9 7D 1F
	dec A		; 3A
	cpx $FC.b		; E4 FC
	.db $82, $CF, $FD		; 82 CF FD
	lda $5062B6.l,X		; BF B6 62 50
	stz $00.b,X		; 74 00
	ldy #$C0.b		; A0 C0
	bvc -32.b		; 50 E0
	dey		; 88
	beq  14.b		; F0 0E
	beq  23.b		; F0 17
	inx		; E8
	tax		; AA
	bit $B7EA.w		; 2C EA B7
	sbc ($F2.b,S),Y		; F3 F2
	lsr $C9.b,X		; 56 C9
	ldx $A4.b		; A6 A4
	dec $A7A3.w,X		; DE A3 A7
	.db $82, $E4, $81		; 82 E4 81
	ror A		; 6A
	rol $2D44.w,X		; 3E 44 2D
	sta $99EC.w,Y		; 99 EC 99
	inc $0EF8.w,X		; FE F8 0E
	.db $42, $A0		; 42 A0
	ora $59FE.w		; 0D FE 59
	eor $37.b,X		; 55 37
	txy		; 9B
	inc $EC27.w,X		; FE 27 EC
	dec $F0.b		; C6 F0
	ora #$D8.b		; 09 D8
	lda $D9CD.w		; AD CD D9
	trb $52A6.w		; 1C A6 52
	sta $42FE.w		; 8D FE 42
	ldy #$0D.b		; A0 0D
	rti		; 40

	cpx $BE.b		; E4 BE
	sbc ($FE.b),Y		; F1 FE
	txa		; 8A
	bra -70.b		; 80 BA
	lsr A		; 4A
	inc $AB5E.w,X		; FE 5E AB
	ldx #$7A.b		; A2 7A
	cmp $8ABEDF.l,X		; DF DF BE 8A
	dec A		; 3A
	adc $65F4.w,Y		; 79 F4 65
	bcs  90.b		; B0 5A
	ldy $E0C2.w,X		; BC C2 E0
	ora [$8A.b]		; 07 8A
	lda $FF.b,X		; B5 FF
	sbc $30D9CD.l,X		; FF CD D9 30
	stz $AB7B.w		; 9C 7B AB
	ror $F440.w,X		; 7E 40 F4
	bra -124.b		; 80 84
	lda ($9C.b)		; B2 9C
	ror $FF7C.w,X		; 7E 7C FF
	lsr $73.b		; 46 73
	asl A		; 0A
	tsb $35.b		; 04 35
	php		; 08
	xba		; EB
	bcs  86.b		; B0 56
	pei ($B3.b)		; D4 B3
	iny		; C8
	phd		; 0B
	php		; 08
	adc $D9.b,S		; 63 D9
	and ($DD.b),Y		; 31 DD
	bpl  -3.b		; 10 FD
	sbc #$7A.b		; E9 7A
	bra  10.b		; 80 0A
	lda $FFFFFA.l		; AF FA FF FF
	trb $0407.w		; 1C 07 04
	dec $50C9.w,X		; DE C9 50
	tay		; A8
	asl A		; 0A
	sep #$4B		; E2 4B
	sbc $2D09F8.l,X		; FF F8 09 2D
	bne  90.b		; D0 5A
	sbc $B4A0EF.l,X		; FF EF A0 B4
	rti		; 40

	sbc #$01.b		; E9 01
	cmp ($02.b,S),Y		; D3 02
	and [$01.b]		; 27 01
	tas		; 1B
	ora $77.b,S		; 03 77
	asl $DB.b,X		; 16 DB
	pea $FF01.w		; F4 01 FF
	sbc $3C027E.l,X		; FF 7E 02 3C
	ora ($18.b,X)		; 01 18
	ora $04.b,S		; 03 04
	asl $08.b,X		; 16 08
	sta $00.b,S		; 83 00
	eor [$00.b]		; 47 00
	ldy $6987.w,X		; BC 87 69
	sbc $D71EFE.l,X		; FF FE 1E D7
	sei		; 78
	lda $906FE0.l,X		; BF E0 6F 90
	stx $68.b,Y		; 96 68
	cmp [$E1.b],Y		; D7 E1
	bra -121.b		; 80 87
	rti		; 40

	asl $5880.w,X		; 1E 80 58
	xba		; EB
	sei		; 78
	eor ($90.b),Y		; 51 90
	inc $D1.b		; E6 D1
	sbc ($78.b,S),Y		; F3 78
	ora #$DC.b		; 09 DC
	eor $EA5B.w		; 4D 5B EA
	nop		; EA
	bvs  85.b		; 70 55
	ora $70.b,X		; 15 70
	jsr $EF3A.w		; 20 3A EF
	bra -36.b		; 80 DC
	ora $1CB0.w		; 0D B0 1C
	brk $A0.b		; 00 A0
	ora $6709.w,X		; 1D 09 67
	trb $546A.w		; 1C 6A 54
	cmp $34.b,S		; C3 34
	ldx $6AF1.w		; AE F1 6A
	adc $1C.b,S		; 63 1C
	ldx $C30B.w,Y		; BE 0B C3
	sed		; F8
	sbc $EBAB76.l		; EF 76 AB EB
	asl $70AF.w		; 0E AF 70
	stz $2CCA.w,X		; 9E CA 2C
	sbc ($9A.b,S),Y		; F3 9A
	lda $010E.w,Y		; B9 0E 01
	bit $4A.b		; 24 4A
	ply		; 7A
	cld		; D8
	ora #$96.b		; 09 96
	eor $ED8141.l,X		; 5F 41 81 ED
	cop $FA.b		; 02 FA
	ora $FC.b		; 05 FC
	tsb $FF.b		; 04 FF
	rti		; 40

	sbc ($C6.b,X)		; E1 C6
	pea $FFF1.w		; F4 F1 FF
	lda $713A4C.l		; AF 4C 3A 71
	ora $853FC2.l		; 0F C2 3F 85
	adc $17FF0B.l,X		; 7F 0B FF 17
	inc $4C2F.w,X		; FE 2F 4C
	nop		; EA
	inc $B757.w,X		; FE 57 B7
	ldx #$41.b		; A2 41
	dec $5FFE.w		; CE FE 5F
	cpx #$BE.b		; E0 BE
	cpy #$7C.b		; C0 7C
	bra  -8.b		; 80 F8
	bra -116.b		; 80 8C
	ror $2F.b		; 66 2F
	sbc $FB7D.w,X		; FD 7D FB
	and $10F8.w		; 2D F8 10
	lsr $1BF2.w,X		; 5E F2 1B
	tsb $77.b		; 04 77
	php		; 08
	sbc $0EF8.w		; ED F8 0E
	asl $AA6C.w,X		; 1E 6C AA
	trb $6900.w		; 1C 00 69
	sta $F5.b,X		; 95 F5
	brk $D7.b		; 00 D7
	cpx $EDC3.w		; EC C3 ED
	sbc $E8.b,S		; E3 E8
	cmp $F1.b		; C5 F1
	sbc $AFC3.w,X		; FD C3 AF
	and #$FF.b		; 29 FF
	sbc $FC435E.l,X		; FF 5E 43 FC
	sta $FD.b,S		; 83 FD
	cop $FE.b		; 02 FE
	ora ($E5.b,X)		; 01 E5
	cop $8B.b		; 02 8B
	tsb $0E.b		; 04 0E
	brk $29.b		; 00 29
	bvc  -5.b		; 50 FB
	sbc $83A043.l,X		; FF 43 A0 83
	bit $0A70.w		; 2C 70 0A
	rol $5FD0.w		; 2E D0 5F
	ldy #$B7.b		; A0 B7
	rti		; 40

	rtl		; 6B

	bra -45.b		; 80 D3
	brk $A7.b		; 00 A7
	lda $4B04AB.l		; AF AB 04 4B
	php		; 08
	sta [$14.b],Y		; 97 14
	sta $85.b		; 85 85
	bvc -21.b		; 50 EB
	pea $F100.w		; F4 00 F1
	inc $20.b		; E6 20
	ldy $F95A.w,X		; BC 5A F9
	stz $D0.b,X		; 74 D0
	ora $9C.b,X		; 15 9C
	eor ($30.b),Y		; 51 30
	adc ($1F.b,S),Y		; 73 1F
	ora $E7.b		; 05 E7
	stx $6D.b		; 86 6D
	sbc ($F9.b),Y		; F1 F9
	asl $FF.b		; 06 FF
	ora $17EC13.l,X		; 1F 13 EC 17
	cpx $D82F.w		; EC 2F D8
	sbc [$18.b],Y		; F7 18
	adc $385F38.l		; 6F 38 5F 38
	adc [$30.b],Y		; 77 30
	stx $BB.b		; 86 BB
	eor ($EC.b)		; 52 EC
	cpx #$FE.b		; E0 FE
	cld		; D8
	cpy #$18.b		; C0 18
	sbc $3033.w,Y		; F9 33 30
	php		; 08
	lsr $F8.b,X		; 56 F8
	bit $92.b		; 24 92
	ldx $1BC8.w,Y		; BE C8 1B
	asl $C6.b		; 06 C6
	iny		; C8
	ora #$8E.b		; 09 8E
	dey		; 88
	ora ($FF.b)		; 12 FF
	eor $FCBFFE.l,X		; 5F FE BF FC
	sbc ($0F.b,X)		; E1 0F
	sbc $7FFE7C.l,X		; FF 7C FE 7F
	bit $3D7E.w,X		; 3C 7E 3D
	adc $C67B3D.l,X		; 7F 3D 7B C6
	sbc $08.b,S		; E3 08
	dex		; CA
	ror A		; 6A
	jmp ($3CFE.w,X)		; 7C FE 3C
	brk $3D.b		; 00 3D
	inc $FF1E.w,X		; FE 1E FF
	cmp $C600C1.l,X		; DF C1 00 C6
	ora ($D8.b,X)		; 01 D8
	ora [$E1.b]		; 07 E1
	asl $78C7.w,X		; 1E C7 78
	sta $807FE0.l,X		; 9F E0 7F 80
	cpx #$F0.b		; E0 F0
	ora ($0B.b)		; 12 0B
	tax		; AA
	bvc  95.b		; 50 5F
	ldy #$77.b		; A0 77
	sbc ($12.b)		; F2 12
	dec $E8BD.w		; CE BD E8
	sbc $C042.w,X		; FD 42 C0
	ora #$FE.b		; 09 FE
	sbc $09F8F1.l,X		; FF F1 F8 09
	brk $A0.b		; 00 A0
	ora ($0D.b,S),Y		; 13 0D
	brk $1A.b		; 00 1A
	brk $14.b		; 00 14
	brk $29.b		; 00 29
	ora ($52.b,X)		; 01 52
	cop $A5.b		; 02 A5
	ora $4B.b		; 05 4B
	phd		; 0B
	bne  11.b		; D0 0B
	stx $17.b,Y		; 96 17
	cpy #$C4.b		; C0 C4
	lda ($85.b,X)		; A1 85
	ply		; 7A
	cpy #$F3.b		; C0 F3
	adc $2C2FFF.l,X		; 7F FF 2F 2C
	eor $B8B758.l,X		; 5F 58 B7 B8
	adc $CA1C78.l		; 6F 78 1C CA
	lsr $9EE0.w,X		; 5E E0 9E
	cpx #$D0.b		; E0 D0
	brk $FA.b		; 00 FA
	adc $B8E1A0.l,X		; 7F A0 E1 B8
	tsb $9848.w		; 0C 48 98
	ora $53286B.l,X		; 1F 6B 28 53
	bpl 101.b		; 10 65
	jsr $002B.w		; 20 2B 00
	rol $01.b,X		; 36 01
	ora $A0FF.w,X		; 1D FF A0
	rts		; 60

	cmp ($04.b,X)		; C1 04
	ora $28.b,S		; 03 28
	trb $10.b		; 14 10
	bit $A120.w		; 2C 20 A1
	sbc $6EBA.w		; ED BA 6E
	ora $B6.b,X		; 15 B6
	cpy $44.b		; C4 44
	cmp $BF.b,X		; D5 BF
	rti		; 40

	ldy #$E9.b		; A0 E9
	sbc $3EEBA0.l,X		; FF A0 EB 3E
	dec $EB9E.w,X		; DE 9E EB
	lda $011382.l		; AF 82 13 01
	ora $39BC07.l,X		; 1F 07 BC 39
	cmp $0035.w,Y		; D9 35 00
	sbc $F0C2.w,X		; FD C2 F0
	sta [$91.b]		; 87 91
	sty $5C.b		; 84 5C
	eor $F3DFE8.l,X		; 5F E8 DF F3
	jmp.w [$0CF3]		; DC F3 0C
	inc $F5B7.w,X		; FE B7 F5
	sbc [$08.b],Y		; F7 08
	stp		; DB
	tsb $07.b		; 04 07
	sbc #$5F.b		; E9 5F
	cmp $DCC9.w,Y		; D9 C9 DC
	ror $29.b		; 66 29
	inc $04FC.w,X		; FE FC 04
	sed		; F8
	sbc [$16.b],Y		; F7 16
	brk $5E.b		; 00 5E
	ldy #$B5.b		; A0 B5
	rti		; 40

	sbc ($F2.b,X)		; E1 F2
	cop $BF.b		; 02 BF
	pea $8339.w		; F4 39 83
	lda ($BC.b)		; B2 BC
	rol $AAFC.w		; 2E FC AA
	rol $0D02.w,X		; 3E 02 0D
	adc [$F0.b],Y		; 77 F0
	ora #$AA.b		; 09 AA
	adc #$7E.b		; 69 7E
	cmp ($FD.b)		; D2 FD
	lda $AB.b		; A5 AB
	sbc $04FBFA.l,X		; FF FA FB 04
	lda [$E6.b]		; A7 E6
	dec $E3.b,X		; D6 E3
	lda #$E3.b		; A9 E3
	ora $FA00.w,X		; 1D 00 FA
	brk $B4.b		; 00 B4
	rti		; 40

	adc #$0D.b		; 69 0D
	stz $81.b		; 64 81
	cmp ($E0.b)		; D2 E0
	sbc ($0A.b)		; F2 0A
	cpx $9085.w		; EC 85 90
	sbc ($FD.b)		; F2 FD
	cpx $E8FF.w		; EC FF E8
	pea $DAE0.w		; F4 E0 DA
	and $B45F5A.l		; 2F 5A 5F B4
	lda $DF7C6B.l,X		; BF 6B 7C DF
	beq   8.b		; F0 08
	lsr $BF.b,X		; 56 BF
	.db $62, $6B, $E0		; 62 6B E0
	beq  15.b		; F0 0F
	bit $E2E2.w,X		; 3C E2 E2
	ldy $B0.b		; A4 B0
	phd		; 0B
	ora $2158.w		; 0D 58 21
	cpx #$10.b		; E0 10
	lsr $1D68.w,X		; 5E 68 1D
	eor $3C900A.l,X		; 5F 0A 90 3C
	adc $850BA8.l,X		; 7F A8 0B 85
	sty $A860.w		; 8C 60 A8
	trb $F8FF.w		; 1C FF F8
	ora $FC0B3C.l		; 0F 3C 0B FC
	sta $55.b,X		; 95 55
	plx		; FA
	tsb $14.b		; 04 14
	phk		; 4B
	and ($7A.b),Y		; 31 7A
	inc $AC55.w,X		; FE 55 AC
	inx		; E8
	inc $E0.b		; E6 E0
	cpx #$17.b		; E0 17
	eor $6B.b,X		; 55 6B
	jsr $0F88.w		; 20 88 0F
	rti		; 40

	clv		; B8
	ora ($FF.b,S),Y		; 13 FF
	sed		; F8
	tas		; 1B
	.db $62, $F8, $1D		; 62 F8 1D
	and ($F2.b,S),Y		; 33 F2
	asl $21C2.w		; 0E C2 21
	ror $FD52.w,X		; 7E 52 FD
	tay		; A8
	plx		; FA
	lsr $E0FC.w,X		; 5E FC E0
	sta ($C2.b)		; 92 C2
	jsl $96B48F.l		; 22 8F B4 96
	tax		; AA
	sta ($61.b)		; 92 61
	ora [$F0.b],Y		; 17 F0
	ror $FEE3.w,X		; 7E E3 FE
	and $F7FFF7.l,X		; 3F F7 FF F7
	sbc $C07FE9.l,X		; FF E9 7F C0
	and $236161.l,X		; 3F 61 61 23
	sed		; F8
	php		; 08
	tsx		; BA
	sbc [$FF.b],Y		; F7 FF
	sep #$00		; E2 00
	inc A		; 1A
	sbc $FDFDF8.l,X		; FF F8 FD FD
	lsr $FE.b,X		; 56 FE
	sbc ($E0.b)		; F2 E0
	sta $F008.w,Y		; 99 08 F0
	bpl -32.b		; 10 E0
	sec		; 38
	eor ($82.b,X)		; 41 82
	sed		; F8
	sei		; 78
	bmi  15.b		; 30 0F
	stx $F8.b,Y		; 96 F8
	ora #$BD.b		; 09 BD
	jsr $A256.w		; 20 56 A2
	xba		; EB
	sed		; F8
	ora $7E007C.l		; 0F 7C 00 7E
	jsr $1C18.w		; 20 18 1C
	rti		; 40

	jsr $0D18.w		; 20 18 0D
	asl A		; 0A
	lda ($E0.b)		; B2 E0
	jsr $0D18.w		; 20 18 0D
	cmp $1820.w,X		; DD 20 18
	tsb $57C0.w		; 0C C0 57
	plb		; AB
	jsr $0B18.w		; 20 18 0B
	bmi  -1.b		; 30 FF
	adc [$20.b],Y		; 77 20
	clc		; 18
	phd		; 0B
	and ($C9.b,S),Y		; 33 C9
	jsr $0E18.w		; 20 18 0E
	sta $20.b,S		; 83 20
	clc		; 18
	ora $B12266.l		; 0F 66 22 B1
	bvs  32.b		; 70 20
	clc		; 18
	asl A		; 0A
	mvn $04,$FE		; 54 FE 04
	ldy $C9.b,X		; B4 C9
	sbc $090029.l,X		; FF 29 00 09
	pla		; 68
	plb		; AB
	xce		; FB
	mvn $18,$21		; 54 21 18
	tsb $2000.w		; 0C 00 20
	tas		; 1B
	sei		; 78
	jsr $0E18.w		; 20 18 0E
	rol A		; 2A
	txy		; 9B
	cmp $AA.b,X		; D5 AA
	jsr $C11D.w		; 20 1D C1
	jsr $EE19.w		; 20 19 EE
	and ($20.b,X)		; 21 20
	ora $B957C1.l,X		; 1F C1 57 B9
	jsr $2013.w		; 20 13 20
	trb $2EEA.w		; 1C EA 2E
	rol $3EF2.w,X		; 3E F2 3E
.ACCU 16
	rep #$20		; C2 20
	asl $CEA4.w,X		; 1E A4 CE
	dec $200E.w		; CE 0E 20
	trb $DF20.w		; 1C 20 DF
	jsr $1D28.w		; 20 28 1D
	plp		; 28
	lda #$379E.w		; A9 9E 37
.ACCU 8
	sep #$E0		; E2 E0
	bra  10.b		; 80 0A
	sty $F8FE.w		; 8C FE F8
	asl A		; 0A
	cmp ($E1.b)		; D2 E1
	asl A		; 0A
	and $62.b,X		; 35 62
	phy		; 5A
	bra  28.b		; 80 1C
	and ($A9.b,X)		; 21 A9
	cpx #$10.b		; E0 10
	mvn $80,$A9		; 54 A9 80
	trb $9980.w		; 1C 80 99
	trb $DE.b		; 14 DE
	bra  24.b		; 80 18
	asl A		; 0A
	sbc $1880A0.l,X		; FF A0 80 18
	asl A		; 0A
	ora $0555E1.l,X		; 1F E1 55 05
	cmp $C2828D.l		; CF 8D 82 C2
	sep #$40		; E2 40
	and $81.b,S		; 23 81
	clc		; 18
	bpl -105.b		; 10 97
	inc A		; 1A
	ora $8B1061.l		; 0F 61 10 8B
	inc A		; 1A
.ACCU 8
.INDEX 8
	sep #$F3		; E2 F3
	tsb $81D0.w		; 0C D0 81
	clc		; 18
	tsb $50AA.w		; 0C AA 50
	ora [$FF.b],Y		; 17 FF
	sbc [$92.b],Y		; F7 92
	pld		; 2B
.ACCU 16
.INDEX 16
	rep #$FA		; C2 FA
	eor ($37.b),Y		; 51 37
	ora [$79.b]		; 07 79
	sbc ($1D.b),Y		; F1 1D
	brk $81.b		; 00 81
	clc		; 18
	ora #$B331.w		; 09 31 B3
	adc ($0C.b,S),Y		; 73 0C
	bne -115.b		; D0 8D
	sta ($C5.b)		; 92 C5
	dex		; CA
	stx $A0.b		; 86 A0
	ldx #$0C9A.w		; A2 9A 0C
	sta ($18.b,X)		; 81 18
	asl A		; 0A
	bvc  94.b		; 50 5E
	beq  56.b		; F0 38
	pla		; 68
	and ($73.b,S),Y		; 33 73
	brk $77.b		; 00 77
	ldy $8A43.w		; AC 43 8A
	sta ($18.b,X)		; 81 18
	phd		; 0B
	ora ($13.b,S),Y		; 13 13
	eor $7F.b,X		; 55 7F
	inc $80FE.w,X		; FE FE 80
	clc		; 18
	phd		; 0B
	eor ($22.b)		; 52 22
	bra  24.b		; 80 18
	phd		; 0B
	.db $62, $BA, $FF		; 62 BA FF
	bvs  -1.b		; 70 FF
	cpx #$FEFF.w		; E0 FF FE
	eor ($51.b,X)		; 41 51
	.db $42, $D9		; 42 D9
	inc $E4D6.w,X		; FE D6 E4
	adc $1E0D18.l,X		; 7F 18 0D 1E
	bra  31.b		; 80 1F
	eor $F8.b,X		; 55 F8
	sed		; F8
	adc ($80.b,S),Y		; 73 80
	clc		; 18
	ora #$E55F.w		; 09 5F E5
	iny		; C8
	adc $E096.w,X		; 7D 96 E0
	cpx #$E0EF.w		; E0 EF E0
	ror $15.b,X		; 76 15
	cmp $0928C0.l		; CF C0 28 09
	ora ($CE.b,X)		; 01 CE
	sbc ($1F.b),Y		; F1 1F
	cmp $20F1F9.l,X		; DF F9 F1 20
	jsr $8010.w		; 20 10 80
	bcs  14.b		; B0 0E
	ldy #$191F.w		; A0 1F 19
	dex		; CA
	lda $FCD930.l,X		; BF 30 D9 FC
	ora $08.b,S		; 03 08
	sbc [$1F.b],Y		; F7 1F
	bit $6714.w		; 2C 14 67
	and $623F12.l		; 2F 12 3F 62
	ldx #$F8F0.w		; A2 F0 F8
	ror $F2.b		; 66 F2
	ora $F4E828.l,X		; 1F 28 E8 F4
	phd		; 0B
	cpy $3B.b		; C4 3B
	cpx $FE.b		; E4 FE
	and $B9CB00.l,X		; 3F 00 CB B9
	xba		; EB
	inc $E9F5.w,X		; FE F5 E9
	sbc $FFFEFF.l,X		; FF FF FE FF
	ora [$1C.b]		; 07 1C
	cpx $DE3E.w		; EC 3E DE
	bit $38DC.w,X		; 3C DC 38
	cld		; D8
	tda		; 7B
	clv		; B8
	adc $10FFB8.l,X		; 7F B8 FF 10
	rti		; 40

	bmi -27.b		; 30 E5
	sbc ($71.b,S),Y		; F3 71
	sty $B4.b		; 84 B4
	sbc ($56.b),Y		; F1 56
	adc #$DDFE.w		; 69 FE DD
	cmp ($5F.b),Y		; D1 5F
	tsx		; BA
	brk $F2.b		; 00 F2
	cmp #$37C8.w		; C9 C8 37
	phd		; 0B
	ror $BAA0.w,X		; 7E A0 BA
	ora ($3A.b,X)		; 01 3A
	sta ($C6.b)		; 92 C6
	inc $00FC.w,X		; FE FC 00
	sbc ($1E.b,X)		; E1 1E
	sbc $1D.b,S		; E3 1D
	sty $05.b,X		; 94 05
	inc $F174.w,X		; FE 74 F1
	adc ($95.b,X)		; 61 95
.ACCU 16
.INDEX 16
	rep #$3A		; C2 3A
	sbc $FF381F.l,X		; FF 1F 38 FF
	ora $0EF100.l,X		; 1F 00 F1 0E
	cmp ($EE.b),Y		; D1 EE
.INDEX 8
	sep #$DD		; E2 DD
.INDEX 8
	sep #$1D		; E2 1D
	mvp $BA,$BB		; 44 BB BA
	sbc $D83FFE.l		; EF FE 3F D8
	tsa		; 3B
	sbc $E8C020.l,X		; FF 20 C0 E8
	ora #$000C.w		; 09 0C 00
	sbc $29C90C.l		; EF 0C C9 29
	ora $808AFF.l,X		; 1F FF 8A 80
	and $8F3F83.l,X		; 3F 83 3F 8F
	and $F0300F.l,X		; 3F 0F 30 F0
	beq 105.b		; F0 69
	ldy $A7.b		; A4 A7
	asl $FF5D.w,X		; 1E 5D FF
	bcc -22.b		; 90 EA
	asl $3FE0.w,X		; 1E E0 3F
	phd		; 0B
	rts		; 60

	inx		; E8
	ora $10.b,X		; 15 10
	ora $1844A0.l		; 0F A0 44 18
	jsr $FC1A.w		; 20 1A FC
	phd		; 0B
	inc $1F18.w,X		; FE 18 1F
	brk $13.b		; 00 13
	pei ($7E.b)		; D4 7E
	inc $3C22.w,X		; FE 22 3C
	and $1E4D.w,X		; 3D 4D 1E
	sbc $FEDF3F.l		; EF 3F DF FE
	adc $AF70A0.l,X		; 7F A0 70 AF
	ora ($CA.b,X)		; 01 CA
	inc $D643.w,X		; FE 43 D6
	inc $F5.b		; E6 F5
	sta [$C3.b]		; 87 C3
	inc $F0E0.w,X		; FE E0 F0
	sbc $CFD0FE.l		; EF FE D0 CF
	cpx #$BC.b		; E0 BC
	cmp $60DA07.l,X		; DF 07 DA 60
	sta $C0807F.l,X		; 9F 7F 80 C0
	inc $E03F.w,X		; FE 3F E0
	cpx #$FF.b		; E0 FF
	and $FC703C.l,X		; 3F 3C 70 FC
	adc ($F0.b,S),Y		; 73 F0
	adc $F67FE0.l		; 6F E0 7F F6
	cpy #$BF.b		; C0 BF
	cmp ($BE.b,X)		; C1 BE
	tay		; A8
	bit $53FE.w,X		; 3C FE 53
	sbc ($61.b),Y		; F1 61
	adc #$EB32.w		; 69 32 EB
	inc $EF10.w,X		; FE 10 EF
	sbc $FE23.w,X		; FD 23 FE
	and ($EE.b),Y		; 31 EE
	sbc ($1E.b,X)		; E1 1E
	sbc ($5E.b,X)		; E1 5E
	sbc ($DE.b,X)		; E1 DE
	php		; 08
	php		; 08
	sbc $C6.b,X		; F5 C6
	inc $E4FC.w,X		; FE FC E4
	rti		; 40

	tyx		; BB
	pla		; 68
	tsb $B1B4.w		; 0C B4 B1
	rol $FAC6.w,X		; 3E C6 FA
	phy		; 5A
	and $85A4.w,X		; 3D A4 85
	sbc $C1C1FC.l,X		; FF FC C1 C1
	cmp $C3.b,S		; C3 C3
	ldy $BCA2.w		; AC A2 BC
	txs		; 9A
	sbc ($44.b),Y		; F1 44
	sta ($15.b),Y		; 91 15
	and $7A.b,X		; 35 7A
	.db $82, $66, $A0		; 82 66 A0
	ora #$F117.w		; 09 17 F1
	inc $8B96.w,X		; FE 96 8B
	.db $62, $E9, $87		; 62 E9 87
	asl $12D0.w,X		; 1E D0 12
	asl $6E00.w		; 0E 00 6E
	sbc ($FF.b,S),Y		; F3 FF
	inc $BCAA.w,X		; FE AA BC
	ora $7F.b,X		; 15 7F
	ply		; 7A
	sta $57721F.l,X		; 9F 1F 72 57
	rti		; 40

	dec $DC42.w,X		; DE 42 DC
	eor ($15.b,X)		; 41 15
	rol $C8F2.w		; 2E F2 C8
	ldx #$DF.b		; A2 DF
	inx		; E8
	ora #$F712.w		; 09 12 F7
	php		; 08
	sed		; F8
	.db $62, $C8, $09		; 62 C8 09
	adc #$7155.w		; 69 55 71
	sbc ($F8.b),Y		; F1 F8
	asl A		; 0A
	nop		; EA
	nop		; EA
	sed		; F8
	cop $39.b		; 02 39
	rts		; 60

	and $7EEAEA.l		; 2F EA EA 7E
	sbc $77.b,S		; E3 77
	sbc $87FCFE.l		; EF FE FC 87
	bmi  -2.b		; 30 FE
	jsr ($600E.w,X)		; FC 0E 60
	ora #$67C9.w		; 09 C9 67
	brk $6F.b		; 00 6F
	rti		; 40

	sed		; F8
	phd		; 0B
	sbc [$3B.b]		; E7 3B
	stz $E7.b,X		; 74 E7
	sbc $2E60EF.l		; EF EF 60 2E
	sbc $C3FEEF.l,X		; FF EF FE C3
	rts		; 60

	plp		; 28
	asl A		; 0A
	sbc $E1ED10.l,X		; FF 10 ED E1
	rts		; 60

	bit $D1E8.w		; 2C E8 D1
	adc $E0F2C0.l,X		; 7F C0 F2 E0
	sbc $02CFE3.l,X		; FF E3 CF 02
	cop $2C.b		; 02 2C
	inc $E401.w,X		; FE 01 E4
	cpy #$F2.b		; C0 F2
	inc $0203.w,X		; FE 03 02
	ora $00.b,S		; 03 00
	sbc ($0F.b,X)		; E1 0F
	and $DDE3DE.l,X		; 3F DE E3 DD
	eor $BD.b,S		; 43 BD
	inc $BDC3.w,X		; FE C3 BD
	sta [$7B.b]		; 87 7B
	ora [$FB.b]		; 07 FB
	bmi  16.b		; 30 10
	inc $42E0.w,X		; FE E0 42
	inc $AA8B.w,X		; FE 8B AA
	clv		; B8
	rts		; 60

	and $DA43F3.l		; 2F F3 43 DA
	rts		; 60

	plp		; 28
	ora $15FCE8.l		; 0F E8 FC 15
	sta $81.b		; 85 81
	cmp ($7C.b)		; D2 7C
	ror $E1E1.w,X		; 7E E1 E1
	cmp ($FF.b),Y		; D1 FF
	trb $FF8A.w		; 1C 8A FF
	asl $8343.w		; 0E 43 83
	adc [$CB.b]		; 67 CB
	and $FEFC.w,X		; 3D FC FE
	sbc ($F0.b),Y		; F1 F0
	ror $0B.b		; 66 0B
	and #$287E.w		; 29 7E 28
	sbc ($2A.b,X)		; E1 2A
	cmp $FF.b,S		; C3 FF
	ora $073F03.l		; 0F 03 3F 07
	sbc [$EF.b],Y		; F7 EF
	eor #$4520.w		; 49 20 45
	sbc ($0C.b,X)		; E1 0C
.ACCU 8
	sep #$24		; E2 24
	sta ($10.b)		; 92 10
	cmp [$10.b]		; C7 10
	inc A		; 1A
	cpy #$11.b		; C0 11
	adc $82B4.w		; 6D B4 82
	xba		; EB
	trb $09F8.w		; 1C F8 09
	stz $B1D4.w,X		; 9E D4 B1
	bit $007E.w,X		; 3C 7E 00
	stz $AAF0.w		; 9C F0 AA
	eor $40.b,X		; 55 40
	sta $7824.w,Y		; 99 24 78
	ora #$60.b		; 09 60
	tsa		; 3B
	nop		; EA
	ora ($EB.b,S),Y		; 13 EB
	cmp $A19F.w,Y		; D9 9F A1
	ora ($60.b,S),Y		; 13 60
	sbc $A12A5C.l,X		; FF 5C 2A A1
	lsr A		; 4A
	stx $40.b,Y		; 96 40
	ora $70F3.w		; 0D F3 70
	sty $68.b		; 84 68
	asl $52BA.w		; 0E BA 52
	sbc $AA54.w		; ED 54 AA
	eor ($FE.b)		; 52 FE
	rol $94.b,X		; 36 94
.INDEX 8
	sep #$5A		; E2 5A
	rts		; 60

	jsr $860B.w		; 20 0B 86
	sep #$C0		; E2 C0
	stz $82.b,X		; 74 82
	cpy #$3D.b		; C0 3D
	jmp ($3322.w,X)		; 7C 22 33
	sbc $0F0BF8.l,X		; FF F8 0B 0F
	rts		; 60

	ora ($FE.b,X)		; 01 FE
	cpx $03.b		; E4 03
	cpx #$03.b		; E0 03
	cpy #$58.b		; C0 58
	and ($FE.b,X)		; 21 FE
	ora [$80.b]		; 07 80
	rti		; 40

	txa		; 8A
	pla		; 68
	sbc ($FF.b)		; F2 FF
	cmp [$56.b]		; C7 56
	eor $FF.b,X		; 55 FF
	sta $C1D11F.l		; 8F 1F D1 C1
	and ($FD.b,X)		; 21 FD
	ora $919A.w,Y		; 19 9A 91
	tya		; 98
	sta $A2.b,X		; 95 A2
	jmp ($5495.w,X)		; 7C 95 54
	ldx #$E6.b		; A2 E6
	ldy #$E2.b		; A0 E2
.INDEX 16
	rep #$D2		; C2 D2
	inc $74AA.w,X		; FE AA 74
	pla		; 68
	.db $82, $FF, $FC		; 82 FF FC
	cmp $16.b,X		; D5 16
	cld		; D8
	ora $734E.w		; 0D 4E 73
	bmi 120.b		; 30 78
	ora $0A3870.l		; 0F 70 38 0A
	bra 112.b		; 80 70
	sec		; 38
	ora $519F.w		; 0D 9F 51
	sec		; 38
	ora $D2C2.w		; 0D C2 D2
	sbc $E0453E.l,X		; FF 3E 45 E0
	bpl -32.b		; 10 E0
	sec		; 38
	ora #$82.b		; 09 82
	bpl  34.b		; 10 22
	lsr A		; 4A
	bpl -32.b		; 10 E0
	sec		; 38
	ora #$FB.b		; 09 FB
	sbc $0938E0.l,X		; FF E0 38 09
	tax		; AA
	tax		; AA
	xba		; EB
	ror $E0BD.w		; 6E BD E0
	bit $1D26.w,X		; 3C 26 1D
	bne -10.b		; D0 F6
	rts		; 60

	sty $5847.w		; 8C 47 58
	asl $48AE.w		; 0E AE 48
	asl A		; 0A
	.db $42, $B5		; 42 B5
	lsr $84.b		; 46 84
	ror $B8.b,X		; 76 B8
	ora $FE.b,X		; 15 FE
	adc ($53.b)		; 72 53
	ldy #$F00F.w		; A0 0F F0
	sed		; F8
	asl A		; 0A
	txs		; 9A
	.db $62, $38, $0B		; 62 38 0B
	adc $0CF8A6.l		; 6F A6 F8 0C
	bra -128.b		; 80 80
	stx $F8.b,Y		; 96 F8
	phd		; 0B
	plb		; AB
	sei		; 78
	brk $C0.b		; 00 C0
	rti		; 40

	stx $F8.b		; 86 F8
	ora $0140.w		; 0D 40 01
	stz $2F.b		; 64 2F
	sbc [$F7.b],Y		; F7 F7
	asl $4880.w,X		; 1E 80 48
	phd		; 0B
	sbc $65D5.w		; ED D5 65
	cmp $F7.b,X		; D5 F7
	ldy #$0F40.w		; A0 40 0F
	sbc [$68.b]		; E7 68
	asl A		; 0A
	sty $FD.b		; 84 FD
	ror $A080.w,X		; 7E 80 A0
	rti		; 40

	phd		; 0B
	sbc $35DD.w		; ED DD 35
	sta $0F0E40.l,X		; 9F 40 0E 0F
	adc ($E0.b,X)		; 61 E0
	cmp $08.b,S		; C3 08
	clv		; B8
	ora $3CE0.w		; 0D E0 3C
	tsb $EDE9.w		; 0C E9 ED
	jsr ($24F8.w,X)		; FC F8 24
	adc [$73.b],Y		; 77 73
	sed		; F8
	cpy #$D0DE.w		; C0 DE D0
	ora #$F8.b		; 09 F8
	sed		; F8
	ldy #$7F83.w		; A0 83 7F
	adc $DE8ABD.l,X		; 7F BD 8A DE
	eor $45.b,X		; 55 45
	ora $C7C0.w,Y		; 19 C0 C7
	sed		; F8
	sbc ($FF.b),Y		; F1 FF
	jsr $1973.w		; 20 73 19
	.db $82, $6A, $F5		; 82 6A F5
	inc $F80C.w,X		; FE 0C F8
	tsb $E84A.w		; 0C 4A E8
	ora $9031.w		; 0D 31 90
	tsb $C101.w		; 0C 01 C1
	eor ($1F.b,X)		; 41 1F
	bcc  14.b		; 90 0E
	.db $82, $5E, $7F		; 82 5E 7F
	ora $FCC335.l,X		; 1F 35 C3 FC
	jmp ($D060.w,X)		; 7C 60 D0
	ora #$74.b		; 09 74
	lsr A		; 4A
	jmp ($E610.w,X)		; 7C 10 E6
	jsr ($AAAA.w,X)		; FC AA AA
	trb $FCE8.w		; 1C E8 FC
	bvc -44.b		; 50 D4
	ror $39.b,X		; 76 39
	sed		; F8
	pea $FF00.w		; F4 00 FF
	ldy #$E827.w		; A0 27 E8
	sed		; F8
	ora $562A.w		; 0D 2A 56
	eor ($7E.b),Y		; 51 7E
	inx		; E8
	sbc $FE45A0.l,X		; FF A0 45 FE
	sed		; F8
	bpl -24.b		; 10 E8
	sed		; F8
	rti		; 40

	clv		; B8
	asl A		; 0A
	jsr $BDDC.w		; 20 DC BD
	jsl $28FCE8.l		; 22 E8 FC 28
	tyx		; BB
	sbc $DEF0C0.l,X		; FF C0 F0 DE
	cmp ($98.b,X)		; C1 98
	inc $D6E6.w,X		; FE E6 D6
	pha		; 48
	pea $B830.w		; F4 30 B8
	adc [$E0.b]		; 67 E0
	asl A		; 0A
	adc $B2A4FC.l,X		; 7F FC A4 B2
	cmp $C298.w		; CD 98 C2
	.db $62, $70, $EB		; 62 70 EB
	ror $79.b,X		; 76 79
	cmp $24.b,S		; C3 24
	tas		; 1B
	dec A		; 3A
	stp		; DB
	and #$BE.b		; 29 BE
	lda $FF.b		; A5 FF
	rol A		; 2A
	pha		; 48
	ora $5FDF0E.l		; 0F 0E DF 5F
	bpl  61.b		; 10 3D
	cop $30.b		; 02 30
	ora $04EEF0.l		; 0F F0 EE 04
	tsb $0E.b		; 04 0E
	asl $1E1E.w		; 0E 1E 1E
	ldy #$55DA.w		; A0 DA 55
	sbc $E94408.l,X		; FF 08 44 E9
	cmp ($C7.b)		; D2 C7
	ora ($47.b),Y		; 11 47
	sta ($38.b,X)		; 81 38
	iny		; C8
	ora $03FE01.l		; 0F 01 FE 03
	inc $FC0E.w,X		; FE 0E FC
	ror $3E35.w,X		; 7E 35 3E
	ldx #$FC09.w		; A2 09 FC
	sed		; F8
	pea $C8F0.w		; F4 F0 C8
	ldy #$0CE8.w		; A0 E8 0C
	and ($7D.b,X)		; 21 7D
	.db $42, $EF		; 42 EF
	sbc $7868.w,Y		; F9 68 78
	rti		; 40

	cpy #$023B.w		; C0 3B 02
	bcc  10.b		; 90 0A
	sed		; F8
	stx $7F83.w		; 8E 83 7F
	sta $15597F.l		; 8F 7F 59 15
	ldy #$98BB.w		; A0 BB 98
	.db $62, $DA, $C2		; 62 DA C2
	jmp.w [$FC98]		; DC 98 FC
	jsr $FFF3.w		; 20 F3 FF
	ora $FE.b,X		; 15 FE
	eor ($80.b,X)		; 41 80
	eor [$81.b]		; 47 81
	sta $1FBF07.l,X		; 9F 07 BF 1F
	rti		; 40

	jsr ($F83E.w,X)		; FC 3E F8
	phd		; 0B
	asl $A8B4.w,X		; 1E B4 A8
	ora $1F7F01.l,X		; 1F 01 7F 1F
	ora #$A0.b		; 09 A0
	cpy #$A615.w		; C0 15 A6
	nop		; EA
	sbc [$82.b],Y		; F7 82
	tax		; AA
	rti		; 40

	beq   9.b		; F0 09
	bne -29.b		; D0 E3
	pla		; 68
	ror A		; 6A
	cld		; D8
	ora #$A0.b		; 09 A0
	ldx #$A1DE.w		; A2 DE A1
	ldy #$18A0.w		; A0 A0 18
	sbc $AE.b,X		; F5 AE
	ora ($96.b,S),Y		; 13 96
	and $60DBA2.l		; 2F A2 DB 60
	rol $1F.b		; 26 1F
	ora $CCFCDF.l,X		; 1F DF FC CC
	and $DD8860.l,X		; 3F 60 88 DD
	tax		; AA
	tsx		; BA
	bne -65.b		; D0 BF
	txa		; 8A
	jmp.w [$48E0]		; DC E0 48
	ora $A939.w		; 0D 39 A9
	rol $20B1.w		; 2E B1 20
	tad		; 5B
	cpx #$FE4C.w		; E0 4C FE
	inc $AAAA.w,X		; FE AA AA
	.db $62, $4C, $A0		; 62 4C A0
	bit $A4.b,X		; 34 A4
	asl $1BB3.w		; 0E B3 1B
	ldy #$1048.w		; A0 48 10
	php		; 08
	jmp $E0C49A.l		; 5C 9A C4 E0
	eor ($E0.b)		; 52 E0
	adc $08A0.w,X		; 7D A0 08
	phd		; 0B
	pea $4BA0.w		; F4 A0 4B
	cpy #$801B.w		; C0 1B 80
	ldy #$0B48.w		; A0 48 0B
	cmp $808FC0.l		; CF C0 8F 80
	eor ($85.b,X)		; 41 85
	ldy #$DD4E.w		; A0 4E DD
	rti		; 40

	beq   9.b		; F0 09
	cli		; 58
	ldy $D8.b,X		; B4 D8
	beq  14.b		; F0 0E
	inx		; E8
	sta [$15.b]		; 87 15
	inc $FE0F.w,X		; FE 0F FE
	and $FCFDDB.l,X		; 3F DB FD FC
	ldx $C0D1.w		; AE D1 C0
	beq  17.b		; F0 11
	mvn $CD,$AD		; 54 AD CD
	inx		; E8
	inc $B0.b		; E6 B0
	inc $10.b,X		; F6 10
	inc $FFFE.w		; EE FE FF
	cpy #$0BA0.w		; C0 A0 0B
	cmp $D54372.l		; CF 72 43 D5
	ror A		; 6A
	cpy #$CFA7.w		; C0 A7 CF
	cpy #$0EA0.w		; C0 A0 0E
	brk $31.b		; 00 31
	cpy #$0DA0.w		; C0 A0 0D
	rol $B211.w,X		; 3E 11 B2
	ror $E5BB.w		; 6E BB E5
	sbc $0E.b,S		; E3 0E
	eor $93A8.w,X		; 5D A8 93
	pea $A0BF.w		; F4 BF A0
	ora #$04.b		; 09 04
	cmp $EF81D1.l,X		; DF D1 81 EF
	rts		; 60

	sta $85F1.w,X		; 9D F1 85
	ora $F10D.w,X		; 1D 0D F1
	sei		; 78
	brk $D1.b		; 00 D1
	cld		; D8
	and $69BC7F.l,X		; 3F 7F BC 69
	sbc $1474EF.l		; EF EF 74 14
	jmp ($CAFC.w)		; 6C FC CA
	.db $82, $8C, $3C		; 82 8C 3C
	sta ($FE.b,X)		; 81 FE
	jsl $555441.l		; 22 41 54 55
	inc $F0E4.w,X		; FE E4 F0
	ora #$7E.b		; 09 7E
	cpy $BA6C.w		; CC 6C BA
	sec		; 38
	sbc ($30.b),Y		; F1 30
	tax		; AA
	ora ($EB.b,X)		; 01 EB
	plp		; 28
	phy		; 5A
	eor $51.b,X		; 55 51
	lsr $B8B4.w,X		; 5E B4 B8
	sbc $9930.w		; ED 30 99
	stz $EA.b		; 64 EA
	.db $82, $93, $FE		; 82 93 FE
	sty $EA.b		; 84 EA
	eor #$55.b		; 49 55
	rol $FFD2.w		; 2E D2 FF
	ror $D2.b,X		; 76 D2
	rol A		; 2A
	ldy $39A4.w,X		; BC A4 39
	ldx $E655.w,Y		; BE 55 E6
	mvn $AD,$55		; 54 55 AD
	ldx $78FC.w,Y		; BE FC 78
	dex		; CA
	bra  72.b		; 80 48
	tsb $F3E2.w		; 0C E2 F3
	bra  72.b		; 80 48
	ora #$FF.b		; 09 FF
	jsr ($007D.w,X)		; FC 7D 00
	tay		; A8
	ora $FFF430.l		; 0F 30 F4 FF
	ldy #$D60C.w		; A0 0C D6
	sta $00.b,S		; 83 00
	and $9F.b,X		; 35 9F
	bvc -15.b		; 50 F1
	jsr ($0D03.w,X)		; FC 03 0D
	tax		; AA
	asl A		; 0A
	sbc ($00.b),Y		; F1 00
	lda #$FE.b		; A9 FE
	adc $A9B2.w,X		; 7D B2 A9
	eor ($F1.b,X)		; 41 F1
	inc A		; 1A
	lda ($F0.b),Y		; B1 F0
	ora $F7B992.l		; 0F 92 B9 F7
	sty $8403.w		; 8C 03 84
	ora $C4.b,S		; 03 C4
	ora $48.b,S		; 03 48
	sta [$AF.b]		; 87 AF
	tay		; A8
	inc $C728.w,X		; FE 28 C7
	and $F42AC0.l		; 2F C0 2A F4
	phb		; 8B
	.db $42, $FE		; 42 FE
	sbc $C1.b,S		; E3 C1
	bcs -26.b		; B0 E6
	iny		; C8
	lsr $01FE.w		; 4E FE 01
	cpy #$9ACF.w		; C0 CF 9A
	ldx #$C1CA.w		; A2 CA C1
	sbc $C35515.l,X		; FF 15 55 C3
	cmp $00.b,S		; C3 00
	eor ($84.b)		; 52 84
	sbc $6038.w,X		; FD 38 60
	bcs  15.b		; B0 0F
	sbc $6E58FC.l,X		; FF FC 58 6E
	eor $75.b,X		; 55 75
	iny		; C8
	nop		; EA
	phb		; 8B
	sbc ($CA.b)		; F2 CA
	jmp $C4C0.w		; 4C C0 C4
	stz $E2.b,X		; 74 E2
	cpy $844A.w		; CC 4A 84
	rep #$C0		; C2 C0
	bpl -125.b		; 10 83
	sta ($E1.b)		; 92 E1
	eor ($08.b,X)		; 41 08
	inc $C286.w,X		; FE 86 C2
	sty $C6.b		; 84 C6
	inc $DD.b,X		; F6 DD
	inc $40.b,X		; F6 40
	tax		; AA
	rts		; 60

	rti		; 40

	lda $4033CC.l		; AF CC 33 40
	plb		; AB
	bra  64.b		; 80 40
	plb		; AB
	cpx #$A940.w		; E0 40 A9
	beq  31.b		; F0 1F
	plb		; AB
	asl $3CEE.w,X		; 1E EE 3C
	jmp.w [$A262]		; DC 62 A2
	rti		; 40

	lda $C26D04.l		; AF 04 6D C2
	sbc $4FF0C0.l		; EF C0 F0 4F
	.db $82, $A0, $FE		; 82 A0 FE
	bne -45.b		; D0 D3
	rti		; 40

	ldx $F603.w		; AE 03 F6
	tax		; AA
	phy		; 5A
	cmp $94FFE0.l,X		; DF E0 FF 94
	inx		; E8
	ora #$BC.b		; 09 BC
	adc #$01.b		; 69 01
	bra  80.b		; 80 50
	ora ($68.b),Y		; 11 68
	sbc ($C1.b)		; F2 C1
	trb $3881.w		; 1C 81 38
	ora $F1.b,S		; 03 F1
	inc A		; 1A
	eor [$F0.b],Y		; 57 F0
	tsx		; BA
	tsx		; BA
	tsb $BC.b		; 04 BC
	xce		; FB
	sbc $BAF7F7.l,X		; FF F7 F7 BA
	tsx		; BA
	cpx #$41DA.w		; E0 DA 41
	lda $E854.w		; AD 54 E8
	ora #$86.b		; 09 86
	tsb $A3.b		; 04 A3
	sbc $860AF8.l,X		; FF F8 0A 86
.ACCU 8
.INDEX 8
	sep #$FD		; E2 FD
	ror $D9.b		; 66 D9
	sbc $F2E246.l		; EF 46 E2 F2
	bra  30.b		; 80 1E
	brk $7C.b		; 00 7C
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	ora $FDFD.w		; 0D FD FD
	wai		; CB
	ora ($04.b),Y		; 11 04
	inc $6047.w,X		; FE 47 60
.ACCU 16
.INDEX 16
	rep #$F1		; C2 F1
	sed		; F8
	cop $FE.b		; 02 FE
	inc A		; 1A
	sbc $C22BF5.l,X		; FF F5 2B C2
	inc $40.b,X		; F6 40
	stz $FC5C.w		; 9C 5C FC
	sbc $F202.w,X		; FD 02 F2
	ora $47C7.w		; 0D C7 47
	stx $FC4F.w		; 8E 4F FC
	pea $A77F.w		; F4 7F A7
	sed		; F8
	rti		; 40

	stz $39C6.w		; 9C C6 39
	asl A		; 0A
	sbc ($4B.b),Y		; F1 4B
	lda ($D3.b),Y		; B1 D3
	and ($77.b,X)		; 21 77
	and $8C.b,S		; 23 8C
	beq -24.b		; F0 E8
	xce		; FB
	inc $F18F.w,X		; FE 8F F1
	brk $B1.b		; 00 B1
	sbc [$0D.b],Y		; F7 0D
	brk $21.b		; 00 21
	brk $23.b		; 00 23
	rti		; 40

	tax		; AA
	clc		; 18
	sbc [$38.b]		; E7 38
	sbc [$3A.b]		; E7 3A
	lda ($CF.b,X)		; A1 CF
	tad		; 5B
	bvs  -2.b		; 70 FE
	bne -113.b		; D0 8F
	rti		; 40

	plb		; AB
	cpx #$F1F1.w		; E0 F1 F1
	inc $9BA9.w,X		; FE A9 9B
	sei		; 78
	lda [$FF.b],Y		; B7 FF
	adc $FCFE.w,X		; 7D FE FC
	sbc ($6E.b),Y		; F1 6E
	sbc $67EF40.l,X		; FF 40 EF 67
	sbc $C8C56F.l,X		; FF 6F C5 C8
	phd		; 0B
	sbc [$10.b],Y		; F7 10
	sbc $351B10.l,X		; FF 10 1B 35
	cmp ($F3.b)		; D2 F3
	rti		; 40

	bit $A9.b		; 24 A9
	sbc $3BC0FE.l		; EF FE C0 3B
	sbc $AAEFFC.l,X		; FF FC EF AA
	tax		; AA
	sbc $A03BC0.l,X		; FF C0 3B A0
	eor ($60.b,S),Y		; 53 60
	bvc  11.b		; 50 0B
	ldy #$5854.w		; A0 54 58
	cpy #$510A.w		; C0 0A 51
	sbc $5547.w		; ED 47 55
	rts		; 60

	mvn $87,$87		; 54 87 87
	ora ($FF.b,X)		; 01 FF
	rts		; 60

	bvc  10.b		; 50 0A
	jsr $6053.w		; 20 53 60
	bvc  11.b		; 50 0B
	ror A		; 6A
	jmp.w [$AD75]		; DC 75 AD
	rts		; 60

	eor [$3F.b],Y		; 57 3F
	.db $62, $60, $50		; 62 60 50
	asl A		; 0A
	sbc $8CF9.w,Y		; F9 F9 8C
	ldy $5060.w,X		; BC 60 50
	asl A		; 0A
	adc ($60.b,S),Y		; 73 60
	bvc  11.b		; 50 0B
	sbc $EA57.w,X		; FD 57 EA
	adc ($73.b),Y		; 71 73
	rts		; 60

	bvc  11.b		; 50 0B
	tsb $F8.b		; 04 F8
	ora $F8.b		; 05 F8
	ora $3CF8.w		; 0D F8 3C
	sed		; F8
	eor $18D9.w,Y		; 59 D9 18
	lda #$FFD4.w		; A9 D4 FF
	bvc   3.b		; 50 03
	rol $E9D9.w		; 2E D9 E9
	asl $3FFE.w		; 0E FE 3F
	sbc $CD43E7.l,X		; FF E7 43 CD
	tsb $B6.b		; 04 B6
	lda $59FE0A.l,X		; BF 0A FE 59
	clc		; 18
	wai		; CB
	cmp $DE87.w,Y		; D9 87 DE
	cmp ($43.b)		; D2 43
	cop $06.b		; 02 06
	tsb $04.b		; 04 04
	php		; 08
	ora [$76.b],Y		; 17 76
	cli		; 58
	eor $07.b,X		; 55 07
	ora [$A0.b]		; 07 A0
.INDEX 16
	rep #$93		; C2 93
	inc $102F.w,X		; FE 2F 10
	tya		; 98
	rep #$C7		; C2 C7
	sec		; 38
	lda ($A0.b,X)		; A1 A0
	stz $AC.b,X		; 74 AC
	inc $F830.w,X		; FE 30 F8
	lda #$5658.w		; A9 58 56
	sbc #$FC03.w		; E9 03 FC
	pha		; 48
	ora $FE01.w,Y		; 19 01 FE
	inc $03C6.w,X		; FE C6 03
	sbc $C3C03F.l,X		; FF 3F C0 C3
	asl A		; 0A
	ldy #$023D.w		; A0 3D 02
	stx $F6.b		; 86 F6
	sbc ($92.b)		; F2 92
	cld		; D8
	pha		; 48
	and ($2A.b),Y		; 31 2A
	tay		; A8
	cld		; D8
	txa		; 8A
	brk $7F.b		; 00 7F
	bvs -75.b		; 70 B5
	brk $78.b		; 00 78
	asl A		; 0A
	inc $7800.w,X		; FE 00 78
	tsb $FCFF.w		; 0C FF FC
	and ($16.b,X)		; 21 16
	brk $7F.b		; 00 7F
	plb		; AB
	cpx $AB.b		; E4 AB
	inc $66FB.w,X		; FE FB 66
	sbc ($8E.b),Y		; F1 8E
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	dec $FF.b,X		; D6 FF
	inc $E4.b,X		; F6 E4
	sbc $780C70.l,X		; FF 70 0C 78
	iny		; C8
	ora $84305F.l		; 0F 5F 30 84
	sei		; 78
	cmp $FFC630.l		; CF 30 C6 FF
	sta $FF.b,S		; 83 FF
	adc [$FF.b]		; 67 FF
	cpx $F2.b		; E4 F2
	cmp ($10.b,X)		; C1 10
	adc $FFFC1A.l		; 6F 1A FC FF
	adc $3E.b,X		; 75 3E
	sta $1C.b,X		; 95 1C
	pei ($A8.b)		; D4 A8
	inc $C97E.w,X		; FE 7E C9
	sbc $7A0FFC.l,X		; FF FC 0F 7A
	trb $FFFE.w		; 1C FE FF
	bvs  11.b		; 70 0B
	lda $EA.b,S		; A3 EA
	cpy $B3.b		; C4 B3
	beq -64.b		; F0 C0
	inc $493A.w,X		; FE 3A 49
	bra  88.b		; 80 58
	asl A		; 0A
	adc [$43.b]		; 67 43
.INDEX 16
	rep #$D1		; C2 D1
	bra  85.b		; 80 55
	eor $FF.b,X		; 55 FF
	cmp [$42.b]		; C7 42
	sta $E9E6.w,Y		; 99 E6 E9
	.db $62, $2B, $1F		; 62 2B 1F
	bra  11.b		; 80 0B
	ora ($3C.b,X)		; 01 3C
	rol $1E40.w,X		; 3E 40 1E
	inc $15DA.w,X		; FE DA 15
	mvn $17,$FC		; 54 FC 17
	brk $E3.b		; 00 E3
	jsr ($0910.w,X)		; FC 10 09
	sbc $2FFC97.l,X		; FF 97 FC 2F
	inc $9131.w		; EE 31 91
	cmp $78.b,X		; D5 78
	rol $39.b		; 26 39
	rts		; 60

	iny		; C8
	ora $F2D1.w		; 0D D1 F2
	jsl $FE6091.l		; 22 91 60 FE
	cpx #$E001.w		; E0 01 E0
	cmp $DAC610.l,X		; DF 10 C6 DA
	sbc $CFCFEF.l		; EF EF CF CF
	cpx #$09F8.w		; E0 F8 09
	sbc $FE.b,S		; E3 FE
	php		; 08
	lsr A		; 4A
	rol A		; 2A
	inc $5EC7.w,X		; FE C7 5E
	sta $E6FE.w,Y		; 99 FE E6
	.db $62, $C0, $F8		; 62 C0 F8
	ora $3462.w		; 0D 62 34
	cpy $FA.b		; C4 FA
	stz $FEDD.w		; 9C DD FE
	tyx		; BB
	brk $C8.b		; 00 C8
	ora ($62.b)		; 12 62
	bit $1E.b,X		; 34 1E
	brk $DE.b		; 00 DE
	eor ($55.b),Y		; 51 55
	brk $9E.b		; 00 9E
	inc $3662.w,X		; FE 62 36
	cpx #$09F8.w		; E0 F8 09
	inx		; E8
	cpy $D6F8.w		; CC F8 D6
	txa		; 8A
	and ($55.b)		; 32 55
	ora $60.b,X		; 15 60
	phx		; DA
	cpy #$2827.w		; C0 27 28
	rts		; 60

	ora [$FF.b],Y		; 17 FF
	sbc $C280.w,X		; FD 80 C2
	and $206A.w		; 2D 6A 20
	trb $54.b		; 14 54
	mvn $80,$E9		; 54 E9 80
	sed		; F8
	ora $8EEADE.l		; 0F DE EA 8E
	jmp $75FE.w		; 4C FE 75
	sta $F2EC.w,Y		; 99 EC F2
	eor [$50.b],Y		; 57 50
	asl $BFC4.w,X		; 1E C4 BF
	lda $7BD3B8.l,X		; BF B8 D3 7B
	jmp $A31AFE.l		; 5C FE 1A A3
	trb $51D1.w		; 1C D1 51
	ora ($68.b),Y		; 11 68
	dec $DEFF.w,X		; DE FF DE
	cmp ($2A.b)		; D2 2A
	sta $0AFE.w,Y		; 99 FE 0A
	and $240E40.l		; 2F 40 0E 24
	cmp #$1CBE.w		; C9 BE 1C
	ora ($C7.b,X)		; 01 C7
	cmp [$1E.b]		; C7 1E
	sta ($90.b)		; 92 90
	asl $BC40.w,X		; 1E 40 BC
	stz $01F2.w		; 9C F2 01
	ora $0338.w,Y		; 19 38 03
	bvs  75.b		; 70 4B
	phy		; 5A
	inc $FCE0.w,X		; FE E0 FC
	sty $C4.b,X		; 94 C4
	jmp.w [$FCF2]		; DC F2 FC
	stx $BB.b,Y		; 96 BB
	cpy $81.b		; C4 81
	bne -96.b		; D0 A0
	inc $497E.w,X		; FE 7E 49
	sbc ($DA.b),Y		; F1 DA
	clc		; 18
	inc $F864.w,X		; FE 64 F8
	phd		; 0B
	cmp $17.b		; C5 17
	bra -46.b		; 80 D2
	bit $096C.w,X		; 3C 6C 09
	inc $7881.w,X		; FE 81 78
	brk $7B.b		; 00 7B
	cpx $1469.w		; EC 69 14
	asl $C0FE.w,X		; 1E FE C0
	beq  16.b		; F0 10
	pla		; 68
	ora $8164.w		; 0D 64 81
	brk $C1.b		; 00 C1
	bpl  52.b		; 10 34
	tax		; AA
	inc $0E68.w,X		; FE 68 0E
	clv		; B8
	txa		; 8A
	sbc ($FF.b,S),Y		; F3 FF
	ror $40.b,X		; 76 40
	phd		; 0B
	cld		; D8
	dex		; CA
	lda ($EA.b)		; B2 EA
	sbc ($FE.b)		; F2 FE
	trb $C0CA.w		; 1C CA C0
	pld		; 2B
	sty $D4.b,X		; 94 D4
	dec $C3E0.w,X		; DE E0 C3
	cpy #$81F6.w		; C0 F6 81
	tax		; AA
	nop		; EA
	sta ($B2.b,X)		; 81 B2
	rol A		; 2A
	asl $9C74.w,X		; 1E 74 9C
	dec $8246.w		; CE 46 82
	asl $DECE.w,X		; 1E CE DE
	cmp ($E0.b)		; D2 E0
	cmp $C1.b		; C5 C1
	lda $0182.w		; AD 82 01
	bra -32.b		; 80 E0
	cpy #$C10B.w		; C0 0B C1
	inc $27.b		; E6 27
	pei ($C9.b)		; D4 C9
	bra -118.b		; 80 8A
	adc $AA.b,S		; 63 AA
	tay		; A8
	bra -118.b		; 80 8A
	brk $B8.b		; 00 B8
	asl A		; 0A
	bra -118.b		; 80 8A
	ror A		; 6A
	jsr ($3991.w,X)		; FC 91 39
	jsr $F184.w		; 20 84 F1
	tax		; AA
	sta $61.b,X		; 95 61
	cmp ($73.b),Y		; D1 73
	sta ($84.b),Y		; 91 84
	cmp ($BE.b),Y		; D1 BE
	stx $5E.b		; 86 5E
	nop		; EA
	trb $FB00.w		; 1C 00 FB
	ldy $540C.w,X		; BC 0C 54
	lsr $FE.b,X		; 56 FE
	lsr A		; 4A
	cpx $F800.w		; EC 00 F8
	ora #$8BAA.w		; 09 AA 8B
	inc $B440.w,X		; FE 40 B4
	tax		; AA
	txa		; 8A
	sbc $CE.b,X		; F5 CE
	sbc $F47EFC.l,X		; FF FC 7E F4
	jsr $81CE.w		; 20 CE 81
	bmi   1.b		; 30 01
	ply		; 7A
	sbc ($60.b)		; F2 60
	sbc $ED6B.w,Y		; F9 6B ED
	sbc $E4F1F1.l,X		; FF F1 F1 E4
	sbc ($7A.b)		; F2 7A
	sbc ($F1.b)		; F2 F1
	tsb $D3.b		; 04 D3
	plx		; FA
	ldx $A0E3.w,Y		; BE E3 A0
	beq  16.b		; F0 10
	cmp $1A.b,S		; C3 1A
	trb $18.b		; 14 18
	jsl $C1E6EA.l		; 22 EA E6 C1
	ora $D6FE.w		; 0D FE D6
	dex		; CA
	dec $C8.b		; C6 C8
	ora #$5554.w		; 09 54 55
	sbc $C8CAD6.l,X		; FF D6 CA C8
	jsr ($BD7E.w,X)		; FC 7E BD
	tay		; A8
	sbc ($C2.b,S),Y		; F3 C2
	clv		; B8
	ora #$A6E8.w		; 09 E8 A6
	sty $BE.b		; 84 BE
	eor $50.b,X		; 55 50
	jmp ($84C2.w,X)		; 7C C2 84
	clv		; B8
	phd		; 0B
	jmp ($82C2.w,X)		; 7C C2 82
	clv		; B8
	ora $8256.w		; 0D 56 82
	clv		; B8
	ora $D436.w		; 0D 36 D4
	cmp $17.b,X		; D5 17
	cpx $0BC8.w		; EC C8 0B
	ldx $0FA8.w,Y		; BE A8 0F
	asl $82.b		; 06 82
	tsb $86.b		; 04 86
	cpx #$800F.w		; E0 0F 80
	asl $10C0.w,X		; 1E C0 10
	ora $E05AAA.l		; 0F AA 5A E0
	ror $1280.w,X		; 7E 80 12
	ply		; 7A
	sbc ($7E.b),Y		; F1 7E
	trb $C0.b		; 14 C0
	bcs  11.b		; B0 0B
	sei		; 78
	ora ($3E.b)		; 12 3E
	cpx $E5.b		; E4 E5
	sta [$50.b],Y		; 97 50
	.db $42, $84		; 42 84
	brk $3E.b		; 00 3E
	ldy $F0.b		; A4 F0
	phd		; 0B
	cpy #$62AB.w		; C0 AB 62
	sbc ($F4.b,X)		; E1 F4
	sta $FE.b		; 85 FE
.INDEX 16
	rep #$13		; C2 13
	asl $EF00.w,X		; 1E 00 EF
	sbc $FFE262.l		; EF 62 E2 FF
	ora $1D.b		; 05 1D
	sta $F2609F.l,X		; 9F 9F 60 F2
	sbc $84A9FE.l,X		; FF FE A9 84
	cmp [$E0.b]		; C7 E0
	cop $54.b		; 02 54
	ora $DF.b		; 05 DF
	cpy #$0FF0.w		; C0 F0 0F
	ldx #$FEF4.w		; A2 F4 FE
	sed		; F8
	ora #$C6A6.w		; 09 A6 C6
	sbc $E1ACFE.l,X		; FF FE AC E1
	sbc $D5.b,X		; F5 D5
	dec $F07C.w		; CE 7C F0
	ora $80.b,S		; 03 80
	ora $0DF880.l		; 0F 80 F8 0D
	rts		; 60

	sbc #$007C.w		; E9 7C 00
	plb		; AB
	tax		; AA
	sed		; F8
	cpx #$6000.w		; E0 00 60
	bra   9.b		; 80 09
	nop		; EA
	sbc ($4C.b)		; F2 4C
	cmp $8060.w,Y		; D9 60 80
	asl A		; 0A
	eor ($42.b)		; 52 42
	rts		; 60

	bra  11.b		; 80 0B
	tax		; AA
	eor $BF.b,X		; 55 BF
	ora [$60.b],Y		; 17 60
	sty $58.b		; 84 58
	and $60.b,X		; 35 60
	stx $62.b		; 86 62
	rti		; 40

	bpl   1.b		; 10 01
	rti		; 40

	asl $ED50.w,X		; 1E 50 ED
	rti		; 40

	clc		; 18
	asl A		; 0A
	eor ($AD.b),Y		; 51 AD
	cmp [$E4.b],Y		; D7 E4
	tsx		; BA
	lda ($D0.b,X)		; A1 D0
	asl A		; 0A
	ror A		; 6A
.ACCU 8
	sep #$A0		; E2 A0
	bcc  12.b		; 90 0C
	asl $CE.b		; 06 CE
	eor $10.b		; 45 10
	eor $A0.b,X		; 55 A0
	cmp $2E.b		; C5 2E
	ror $A0FF.w,X		; 7E FF A0
	cpy #$C10A.w		; C0 0A C1
	adc ($A0.b,S),Y		; 73 A0
	cpy #$050B.w		; C0 0B 05
	eor $CA.b,X		; 55 CA
	sbc ($A0.b)		; F2 A0
	cpy #$010A.w		; C0 0A 01
	cmp [$F1.b]		; C7 F1
	ldy #$09C0.w		; A0 C0 09
	inx		; E8
	sta ($9E.b)		; 92 9E
.INDEX 16
	rep #$55		; C2 55
	brk $A0.b		; 00 A0
	dec $70.b		; C6 70
	bvs  13.b		; 70 0D
	clc		; 18
	bne  17.b		; D0 11
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	and $F8FF00.l,X		; 3F 00 FF F8
	jsr $0505.w		; 20 05 05
	inc A		; 1A
	dec A		; 3A
	ora ($20.b,X)		; 01 20
	phd		; 0B
	ora [$3F.b]		; 07 3F
	adc $301E01.l,X		; 7F 01 1E 30
	sbc ($0F.b)		; F2 0F
	ora $FFF73F.l		; 0F 3F F7 FF
	sbc $FFC242.l,X		; FF 42 C2 FF
	plx		; FA
	ora ($ED.b,X)		; 01 ED
	sbc $80F1FF.l,X		; FF FF F1 80
	rts		; 60

	cpx #$F0B0.w		; E0 B0 F0
	beq  16.b		; F0 10
	beq  80.b		; F0 50
	sec		; 38
	pea $E080.w		; F4 80 E0
	bcc 119.b		; 90 77
	cpx #$F8F4.w		; E0 F4 F8
	sbc $A4FCFC.l,X		; FF FC FC A4
	sed		; F8
	ora $0707.w,X		; 1D 07 07
	cmp $F8F2F8.l,X		; DF F8 F2 F8
	phd		; 0B
	php		; 08
	php		; 08
	tsb $0C.b		; 04 0C
	sbc ($F8.b)		; F2 F8
	ora #$1C.b		; 09 1C
	sbc $381E1E.l,X		; FF 1E 1E 38
	sbc $1878C3.l,X		; FF C3 78 18
	bit $1C2C.w,X		; 3C 2C 1C
	tsb $161E.w		; 0C 1E 16
	asl $0F06.w		; 0E 06 0F
	jmp ($1003.w,X)		; 7C 03 10
	ora ($07.b,X)		; 01 07
	ldx $FF7E.w		; AE 7E FF
	jmp ($5822.w,X)		; 7C 22 58
	sbc $72FF1F.l,X		; FF 1F FF 72
	lda $800EF8.l		; AF F8 0E 80
	sbc $F8.b,X		; F5 F8
	asl A		; 0A
	jsr ($FF8E.w,X)		; FC 8E FF
	cpy #$01C0.w		; C0 C0 01
	ora $00.b,S		; 03 00
	jmp $0E06FD.l		; 5C FD 06 0E
	sec		; 38
	ora ($F4.b,X)		; 01 F4
	stx $0303.w		; 8E 03 03
	lsr A		; 4A
	ldx $C1.b		; A6 C1
	sbc $04F4C2.l,X		; FF C2 F4 04
	tsb $82.b		; 04 82
	stx $42.b		; 86 42
.ACCU 16
	rep #$22		; C2 22
	.db $62, $11, $FF		; 62 11 FF
	and $1F1333.l,X		; 3F 33 13 1F
	stx $8F.b		; 86 8F
	eor [$FE.b],Y		; 57 FE
	stx $CF8E.w		; 8E 8E CF
	cmp $F7E7E7.l		; CF E7 E7 F7
	sbc [$4C.b],Y		; F7 4C
	brk $24.b		; 00 24
	lda $D61CBF.l,X		; BF BF 1C D6
	beq  -1.b		; F0 FF
	dec $1068.w,X		; DE 68 10
	clc		; 18
	bpl  16.b		; 10 10
	bmi  48.b		; 30 30
	beq 112.b		; F0 70
	bvs -16.b		; 70 F0
	asl $AF00.w		; 0E 00 AF
	asl $68C6.w		; 0E C6 68
	bit $B83C.w,X		; 3C 3C B8
	clv		; B8
	asl $3DFC.w,X		; 1E FC 3D
	cpy #$F881.w		; C0 81 F8
	ora $1E1E.w		; 0D 1E 1E
	sed		; F8
	bpl   1.b		; 10 01
	ora [$05.b]		; 07 05
	bcc -120.b		; 90 88
	ora $80.b,S		; 03 80
	brk $02.b		; 00 02
	sty $FDFE.w		; 8C FE FD
	brk $04.b		; 00 04
	sty $7CFF.w		; 8C FF 7C
	sbc $8410C4.l,X		; FF C4 10 84
	sbc $E0FF5B.l,X		; FF 5B FF E0
	cop $64.b		; 02 64
	sbc $FEA160.l,X		; FF 60 A1 FE
	cld		; D8
	sbc $5D.b,X		; F5 5D
	sei		; 78
	cpy #$BEF1.w		; C0 F1 BE
	pea $DCDC.w		; F4 DC DC
	clv		; B8
	sbc $3F00C6.l,X		; FF C6 00 3F
	brk $7F.b		; 00 7F
	sbc $FEF2D1.l,X		; FF D1 F2 FE
	ora ($0E.b,X)		; 01 0E
	ora $403F30.l		; 0F 30 3F 40
	adc $FF6080.l,X		; 7F 80 60 FF
	jsr ($3DE1.w,X)		; FC E1 3D
	sbc $F500.w,Y		; F9 00 F5
	sbc $1C.b,S		; E3 1C
	bcs  79.b		; B0 4F
	ror $F9F4.w		; 6E F4 F9
	sbc $8806.w,Y		; F9 06 88
	ora $FCFEF1.l		; 0F F1 FE FC
	sbc $C00743.l,X		; FF 43 07 C0
	brk $91.b		; 00 91
	ror $E0FE.w,X		; 7E FE E0
	inc $8751.w,X		; FE 51 87
	sta [$8F.b]		; 87 8F
	sta $FF8F0F.l		; 8F 0F 8F FF
	and [$D6.b]		; 27 D6
	sbc ($18.b)		; F2 18
	sed		; F8
	tsb $FC.b		; 04 FC
	ora $7F1E3E.l,X		; 1F 3E 1E 7F
	dec $6CFF.w,X		; DE FF 6C
	jsr $5C22.w		; 20 22 5C
	txs		; 9A
	tsb $22FF.w		; 0C FF 22
	rti		; 40

	inc $6C60.w		; EE 60 6C
	adc ($84.b,S),Y		; 73 84
	and $A0696E.l		; 2F 6E 69 A0
	cpy #$60D0.w		; C0 D0 60
	jsr $F528.w		; 20 28 F5
	sta ($FE.b,X)		; 81 FE
	rts		; 60

	sbc $37F2FD.l,X		; FF FD F2 37
	inc $06.b,X		; F6 06
	asl $1F0C.w		; 0E 0C 1F
	asl A		; 0A
	phd		; 0B
	adc ($1D.b,X)		; 61 1D
	ora $1C.b,S		; 03 1C
	bvs  -2.b		; 70 FE
	bpl   4.b		; 10 04
	xce		; FB
	ora $08.b,S		; 03 08
	stz $08.b		; 64 08
	ldy $81FF.w		; AC FF 81
	rts		; 60

	sbc [$58.b],Y		; F7 58
	jsr $7FA0.w		; 20 A0 7F
	ora $FF50.w		; 0D 50 FF
	rti		; 40

	bra  64.b		; 80 40
	adc $501E.w,X		; 7D 1E 50
	beq   9.b		; F0 09
	sei		; 78
	cmp #$0347.w		; C9 47 03
	ora ($3F.b,X)		; 01 3F
	bit $FFE0.w		; 2C E0 FF
	stz $B0.b,X		; 74 B0
	beq  10.b		; F0 0A
	sbc $E0F8FE.l,X		; FF FE F8 E0
	cpx $8C.b		; E4 8C
	inc $AE54.w,X		; FE 54 AE
	stz $9E.b		; 64 9E
	sbc $1820FE.l		; EF FE 20 18
	php		; 08
	brk $10.b		; 00 10
	phd		; 0B
	cpx #$0060.w		; E0 60 00
	bvs -42.b		; 70 D6
	jsr ($90FE.w,X)		; FC FE 90
	sta $01F1.w,Y		; 99 F1 01
	plx		; FA
	sbc $FE9045.l,X		; FF 45 90 FE
	sbc $1E7DFF.l,X		; FF FF 7D 1E
	cmp ($41.b,X)		; C1 41
	bra -128.b		; 80 80
	lda $A3.b,S		; A3 A3
	adc $0FDD68.l		; 6F 68 DD 0F
	sbc $FBD5.w,X		; FD D5 FB
	inc $FA.b,X		; F6 FA
	cmp $EE.b		; C5 EE
	rol $F1BA.w,X		; 3E BA F1
	jmp $009000.l		; 5C 00 90 00
	ora [$F8.b]		; 07 F8
	and $03.b		; 25 03
	asl $00.b		; 06 00
	jmp $80C07F.l		; 5C 7F C0 80
	lda ($C0.b,X)		; A1 C0
	sbc $C0E141.l,X		; FF 41 E1 C0
	sbc $3FDFC0.l,X		; FF C0 DF 3F
	eor ($D3.b,S),Y		; 53 D3
	lda ($B7.b),Y		; B1 B7
	adc $EE2C.w,Y		; 79 2C EE
	sed		; F8
	and $002CFF.l,X		; 3F FF 2C 00
	pha		; 48
	brk $38.b		; 00 38
	inx		; E8
	rol $F6C0.w,X		; 3E C0 F6
	bit $FB.b		; 24 FB
	jsr ($677F.w,X)		; FC 7F 67
	cpx #$E3E3.w		; E0 E3 E3
	sta [$86.b]		; 87 86
	rti		; 40

	cpy #$ECEC.w		; C0 EC EC
	cpy #$04C0.w		; C0 C0 04
	php		; 08
	lda ($1E.b,X)		; A1 1E
	eor $15EA.w,Y		; 59 EA 15
	sei		; 78
	ror $87F1.w		; 6E F1 87
	inx		; E8
	ora #$80E0.w		; 09 E0 80
	beq -123.b		; F0 85
	sed		; F8
	ldy $1C.b,X		; B4 1C
	inx		; E8
	ora ($B1.b),Y		; 11 B1
	ora [$62.b]		; 07 62
	tsb $0803.w		; 0C 03 08
	bmi  52.b		; 30 34
	ora [$FE.b]		; 07 FE
	inc A		; 1A
	ora $A2.b		; 05 A2
	cop $F2.b		; 02 F2
	sbc #$D804.w		; E9 04 D8
	sta [$ED.b]		; 87 ED
	inc $17FC.w,X		; FE FC 17
	eor $DFF6.w,Y		; 59 F6 DF
	jsr $C03F.w		; 20 3F C0
	inc $8500.w,X		; FE 00 85
	adc $FDF5C0.l,X		; 7F C0 F5 FD
	and ($F3.b,S),Y		; 33 F3
	inc $FFC3.w,X		; FE C3 FF
	sbc [$00.b],Y		; F7 00
	sbc $FE.b,X		; F5 FE
	cmp ($3E.b,X)		; C1 3E
	cpx $1B.b		; E4 1B
	sbc [$08.b],Y		; F7 08
	stp		; DB
	tsb $EF.b		; 04 EF
	and $CF00FF.l,X		; 3F FF 00 CF
	tsb $FF.b		; 04 FF
	mvp $7C,$E3		; 44 E3 7C
	inc $9D.b		; E6 9D
	jsr $3086.w		; 20 86 30
	sta $FF.b,S		; 83 FF
	sbc $008530.l,X		; FF 30 85 00
	eor $1C.b		; 45 1C
	jsr $C024.w		; 20 24 C0
	cld		; D8
	jsr $906C.w		; 20 6C 90
	tya		; 98
	mvp $40,$AE		; 44 AE 40
	jsr ($EE3F.w,X)		; FC 3F EE
	sbc $1A.b		; E5 1A
	inc $FC04.w,X		; FE 04 FC
	cop $FE.b		; 02 FE
	jsl $7B11E6.l		; 22 E6 11 7B
	ldy $FED2.w,X		; BC D2 FE
	brk $AA.b		; 00 AA
	brk $A8.b		; 00 A8
	adc ($F8.b)		; 72 F8
	bpl  32.b		; 10 20
	sed		; F8
	asl A		; 0A
	sbc $BFFF30.l,X		; FF 30 FF BF
	beq -72.b		; F0 B8
	bvs  16.b		; 70 10
	sei		; 78
	clc		; 18
	sei		; 78
	cli		; 58
	sec		; 38
	clc		; 18
	bit $3C1C.w,X		; 3C 1C 3C
	rol $FA1C.w		; 2E 1C FA
	asl $E24C.w		; 0E 4C E2
	sbc $E298FC.l,X		; FF FC 98 E2
	adc $1E097F.l,X		; 7F 7F 09 1E
	sta [$E9.b]		; 87 E9
	ora $C0FF03.l		; 0F 03 FF C0
	inc $071F.w,X		; FE 1F 07
	ora $0D1F05.l,X		; 1F 05 1F 0D
	and $114408.l,X		; 3F 08 44 11
	cpx #$092E.w		; E0 2E 09
	jsr ($35E7.w,X)		; FC E7 35
	sta $FFFF7F.l,X		; 9F 7F FF FF
	and $E7.b		; 25 E7
	sta $1D1D8F.l		; 8F 8F 1D 1D
	dex		; CA
	stp		; DB
	cli		; 58
	phx		; DA
	sbc $64FE.w,X		; FD FE 64
	sbc $FF803F.l,X		; FF 3F 80 FF
	sbc $8F1866.l,X		; FF 66 18 8F
	bvs  29.b		; 70 1D
.INDEX 8
	sep #$DA		; E2 DA
	bit $C9.b		; 24 C9
	bit $6D.b		; 24 6D
	brk $6C.b		; 00 6C
	brk $32.b		; 00 32
	sbc ($FF.b,S),Y		; F3 FF
	sbc $58FDAD.l,X		; FF AD FD 58
	sed		; F8
	ldy $E4.b		; A4 E4
	ora ($F6.b)		; 12 F6
	ldx $C7FE.w		; AE FE C7
	eor $F33FC5.l,X		; 5F C5 3F F3
	tsb $3F87.w		; 0C 87 3F
	eor $B802.w,X		; 5D 02 B8
	ora [$2C.b]		; 07 2C
	lsr $09.b,X		; 56 09
	tsb $AD01.w		; 0C 01 AD
	brk $D5.b		; 00 D5
	jsr ($80FF.w,X)		; FC FF 80
	dec $FC00.w		; CE 00 FC
	cpy #$F8.b		; C0 F8
	pla		; 68
	jmp ($FCE0.w,X)		; 7C E0 FC
	ldy #$FC.b		; A0 FC
	inx		; E8
	inc $7FB0.w,X		; FE B0 7F
	bcs  66.b		; B0 42
	bvs -120.b		; 70 88
	cli		; 58
	sbc #$8070.w		; E9 70 80
	iny		; C8
	brk $F0.b		; 00 F0
	brk $B0.b		; 00 B0
	jsr ($417F.w,X)		; FC 7F 41
	cmp [$03.b]		; C7 03
	wai		; CB
	ora [$F7.b]		; 07 F7
	eor $3D3F65.l		; 4F 65 3F 3D
	ora $D81B2F.l		; 0F 2F 1B D8
	sbc $375BFE.l,X		; FF FE 5B 37
	bmi  -8.b		; 30 F8
	ora $D6ABED.l		; 0F ED AB D6
	lda ($CA.b)		; B2 CA
	ldx $BC.b,Y		; B6 BC
	cpy $FF.b		; C4 FF
	sta $9DED95.l		; 8F 95 ED 9D
	sbc $EF9F.w		; ED 9F EF
	lda $1828DF.l		; AF DF 28 18
	and ($08.b),Y		; 31 08
	and ($D1.b),Y		; 31 D1
	sbc $FE0268.l,X		; FF 68 02 FE
	asl A		; 0A
	sbc $07.b,S		; E3 07
	tsb $4C0E.w		; 0C 0E 4C
	lsr $DCDE.w		; 4E DE DC
	lda $BCFFE1.l		; AF E1 FF BC
	inc $ED61.w		; EE 61 ED
	lda $00F8EA.l,X		; BF EA F8 00
	sbc ($00.b),Y		; F1 00
	lda ($00.b),Y		; B1 00
	and ($FD.b,X)		; 21 FD
	sbc $C94000.l,X		; FF 00 40 C9
	cpx $2200.w		; EC 00 22
.INDEX 8
	sep #$D1		; E2 D1
	adc ($58.b),Y		; 71 58
	rol A		; 2A
	phk		; 4B
	and ($9F.b)		; 32 9F
	ror $5F.b		; 66 5F
	sbc $27EB3F.l,X		; FF 3F EB 27
	cmp $C3.b		; C5 C3
	ora $001D.w		; 0D 1D 00
	asl $8500.w		; 0E 00 85
	jsr $3084.w		; 20 84 30
	rti		; 40

	jsr $FF84.w		; 20 84 FF
	ply		; 7A
	cld		; D8
	.db $62, $00, $60		; 62 00 60
	rti		; 40

	bvs -32.b		; 70 E0
	beq -96.b		; F0 A0
	bvs  79.b		; 70 4F
	plx		; FA
	jsr $C0F0.w		; 20 F0 C0
	cpx #$40.b		; E0 40
	inc $F41F.w,X		; FE 1F F4
	ora $09F0.w,Y		; 19 F0 09
	inc A		; 1A
	ora $12.b		; 05 12
	ora $160D93.l		; 0F 93 0D 16
	ora #$0817.w		; 09 17 08
	inc $001F.w,X		; FE 1F 00
	inc $DA08.w,X		; FE 08 DA
	cmp ($F2.b)		; D2 F2
	inc $FEBB.w,X		; FE BB FE
	sbc $E15D.w,X		; FD 5D E1
	ora ($1E.b,X)		; 01 1E
	pea $F1FF.w		; F4 FF F1
	inc $FC01.w,X		; FE 01 FC
	ora $000BFB.l		; 0F FB 0B 00
	pea $B400.w		; F4 00 B4
	and #$00A1.w		; 29 A1 00
	sbc $0082FF.l,X		; FF FF 82 00
	sta $01.b,S		; 83 01
	sta $04.b,S		; 83 04
	brk $E7.b		; 00 E7
	tas		; 1B
	xce		; FB
	.db $62, $C2, $21		; 62 C2 21
	rtl		; 6B

	lda ($DB.b,X)		; A1 DB
	adc $9980FF.l,X		; 7F FF 80 99
	.db $42, $D9		; 42 D9
	cop $BC.b		; 02 BC
	tsb $18.b		; 04 18
	jmp ($3DE9.w)		; 6C E9 3D
	ora ($9D.b,X)		; 01 9D
	sta ($BC.b,X)		; 81 BC
	rep #$CF		; C2 CF
	sbc ($3E.b),Y		; F1 3E
	.db $42, $3C		; 42 3C
	.db $42, $7B		; 42 7B
	dec $FC.b		; C6 FC
	inc $2098.w,X		; FE 98 20
	ora $00.b,S		; 03 00
	bpl -96.b		; 10 A0
	brk $6C.b		; 00 6C
	eor #$A06D.w		; 49 6D A0
	sbc $FE.b,S		; E3 FE
	adc $80E1C0.l,X		; 7F C0 E1 80
	cpy #$78.b		; C0 78
	tsb $AEDF.w		; 0C DF AE
	asl $1E0E.w,X		; 1E 0E 1E
	asl $1F.b		; 06 1F
	asl $5E.b,X		; 16 5E
	sbc ($0B.b),Y		; F1 0B
	ora $0718D9.l,X		; 1F D9 18 07
	inc $D2.b		; E6 D2
	ora $D4E2F0.l		; 0F F0 E2 D4
	asl $101E.w,X		; 1E 1E 10
	ora ($76.b),Y		; 11 76
	sbc $283F03.l		; EF 03 3F 28
	sbc $107F61.l,X		; FF 61 7F 10
	adc $C0BF08.l,X		; 7F 08 BF C0
	and $E11EE9.l,X		; 3F E9 1E E1
	eor ($00.b),Y		; 51 00
	ora $FFF8.w		; 0D F8 FF
	jsr $A480.w		; 20 80 A4
	bra -14.b		; 80 F2
	cpy #$38.b		; C0 38
	brk $11.b		; 00 11
	bra  17.b		; 80 11
	rti		; 40

	adc $FF.b		; 65 FF
	sbc $FF11FF.l,X		; FF FF 11 FF
	.db $82, $FB, $2C		; 82 FB 2C
	sbc ($1A.b)		; F2 1A
	cmp ($2A.b,X)		; C1 2A
	ora $46.b,X		; 15 46
	sta $74.b,X		; 95 74
	bcs  37.b		; B0 25
	sbc $3100FF.l,X		; FF FF 00 31
	brk $94.b		; 00 94
	brk $89.b		; 00 89
	php		; 08
	and $05.b		; 25 05
	cmp [$17.b],Y		; D7 17
	adc $3A5B3F.l,X		; 7F 3F 5B 3A
	bit $FF.b		; 24 FF
	sbc $7FA0FF.l,X		; FF FF A0 7F
	cmp ($3B.b,X)		; C1 3B
	asl $C9.b		; 06 C9
	xba		; EB
	bpl -22.b		; 10 EA
	ora $EC.b,X		; 15 EC
	ora $F5.b,X		; 15 F5
	ora ($35.b,X)		; 01 35
	sbc $29000F.l,X		; FF 0F 00 29
	cpy #$04.b		; C0 04
	cpy #$32.b		; C0 32
	cop $F4.b		; 02 F4
	trb $FD.b		; 14 FD
	ora $1FFF.w,X		; 1D FF 1F
	sbc $2030FF.l,X		; FF FF 30 20
	inc $FF06.w,X		; FE 06 FF
	mvp $09,$FF		; 44 FF 09
	sbc $C1FF88.l,X		; FF 88 FF C1
	adc $951F01.l,X		; 7F 01 1F 95
	beq -67.b		; F0 BD
	lda $002025.l		; AF 25 20 00
	jsl $234600.l		; 22 00 46 23
	xba		; EB
	sbc [$80.b]		; E7 80
	eor ($70.b,S),Y		; 53 70
	sbc $F0.b,X		; F5 F0
	cpx #$0A.b		; E0 0A
	beq  14.b		; F0 0E
	ora [$31.b]		; 07 31
	bvc -41.b		; 50 D7
	ply		; 7A
	nop		; EA
	ldx $5AEA.w,Y		; BE EA 5A
	and [$FF.b],Y		; 37 FF
	eor $54374E.l,X		; 5F 4E 37 54
	and $752E55.l		; 2F 55 2E 75
	dec $EE91.w		; CE 91 EE
	cmp #$6936.w		; C9 36 69
	stx $44.b,Y		; 96 44
	dec $FF.b,X		; D6 FF
	ora $30D2F8.l,X		; 1F F8 D2 30
	bmi -112.b		; 30 90
	bpl -81.b		; 10 AF
	cmp $A4DFAD.l,X		; DF AD DF A4
	cmp $7EDD27.l,X		; DF 27 DD 7E
	sbc $ED13FE.l,X		; FF FE 13 ED
	ora $EB.b,X		; 15 EB
	phd		; 0B
	inc $00.b,X		; F6 00
	beq  15.b		; F0 0F
	sty $E8.b,X		; 94 E8
	bvs -84.b		; 70 AC
	inc $FFB0.w		; EE B0 FF
	sbc $F0.b,X		; F5 F0
	ldx $9FF4.w		; AE F4 9F
	inc $59.b		; E6 59
	cld		; D8
	ror $C607.w,X		; 7E 07 C6
	lda $E1.b,S		; A3 E1
	pei ($D2.b)		; D4 D2
	tsb $1F.b		; 04 1F
	sbc $1904FF.l,X		; FF FF 04 19
	bpl  63.b		; 10 3F
	trb $3D.b		; 14 3D
	brk $2F.b		; 00 2F
	ora ($F5.b)		; 12 F5
	asl $1FED.w		; 0E ED 1F
	cpx $0E.b		; E4 0E
	plx		; FA
	cmp $DC0EFF.l,X		; DF FF 0E DC
	bpl -18.b		; 10 EE
	bpl -49.b		; 10 CF
	ldy $E9.b		; A4 E9
	inc $FE08.w		; EE 08 FE
	php		; 08
	sbc $00FD02.l,X		; FF 02 FD 00
	sed		; F8
	sbc $FFFEEF.l,X		; FF EF FE FF
	brk $C0.b		; 00 C0
	bpl -32.b		; 10 E0
	bpl  96.b		; 10 60
	bcc 112.b		; 90 70
	tya		; 98
	rts		; 60

	and $3088E4.l,X		; 3F E4 88 30
	dey		; 88
	sec		; 38
	sty $8430.w		; 8C 30 84
	.db $42, $60		; 42 60
	inc $F6DC.w,X		; FE DC F6
	bvs  -2.b		; 70 FE
	sei		; 78
	rol $3FF1.w		; 2E F1 3F
	inc $7FFF.w,X		; FE FF 7F
	bra -46.b		; 80 D2
	asl $1B00.w		; 0E 00 1B
	inc $002D.w,X		; FE 2D 00
	ora $FDFE.w,X		; 1D FE FD
	tsa		; 3B
	inc $10E3.w,X		; FE E3 10
	xba		; EB
	pha		; 48
	sbc $2C.b,X		; F5 2C
	sbc $12F7FF.l,X		; FF FF F7 12
	sbc $F703.w,X		; FD 03 F7
	php		; 08
	inc $19.b		; E6 19
	pei ($3B.b)		; D4 3B
	and $003700.l		; 2F 00 37 00
	ora ($80.b,S),Y		; 13 80
	inc $09FF.w,X		; FE FF 09
	sta $8008D1.l		; 8F D1 08 80
	ora $3880.w,Y		; 19 80 38
	brk $FB.b		; 00 FB
	brk $DF.b		; 00 DF
	trb $F7.b		; 14 F7
	brk $FE.b		; 00 FE
	sbc $FD00D0.l,X		; FF D0 00 FD
	ora ($7A.b,X)		; 01 7A
	cmp $FB.b,S		; C3 FB
	tsb $F07D.w		; 0C 7D F0
	stx $F2EB.w		; 8E EB F2
	cpx $F070.w		; EC 70 F0
	brk $64.b		; 00 64
	tsb $00.b		; 04 00
	sbc ($70.b)		; F2 70
	ldy $30E9.w		; AC E9 30
	rti		; 40

	sbc $E090FB.l,X		; FF FB 90 E0
	bvc -24.b		; 50 E8
	cpy $ECF4.w		; CC F4 EC
	beq -18.b		; F0 EE
	sbc ($80.b),Y		; F1 80
	ror $00DA.w		; 6E DA 00
	pla		; 68
	php		; 08
	sbc $2CECF7.l,X		; FF F7 EC 2C
	inc $26.b,X		; F6 26
	sbc ($22.b)		; F2 22
	beq  36.b		; F0 24
	ora $030C00.l		; 0F 00 0C 03
	cmp [$D9.b]		; C7 D9
	clc		; 18
	ora $1C2F5F.l		; 0F 5F 2F 1C
	tsb $193F.w		; 0C 3F 19
	and $CAFF12.l,X		; 3F 12 FF CA
	cpy $08C1.w		; CC C1 08
	ora $0C.b,S		; 03 0C
	bra -39.b		; 80 D9
	jsr ($FEF0.w,X)		; FC F0 FE
	and $7100.w,Y		; 39 00 71
	phb		; 8B
	ldy #$51.b		; A0 51
	mvp $08,$F0		; 44 F0 08
	bmi  31.b		; 30 1F
	stx $04.b		; 86 04
	lda $3C82.w,Y		; B9 82 3C
	.db $82, $5C, $C5		; 82 5C C5
	ldy #$00.b		; A0 00
	bcs -16.b		; B0 F0
	sbc $F84680.l,X		; FF 80 46 F8
	brk $7C.b		; 00 7C
	brk $7D.b		; 00 7D
	ora ($3F.b,X)		; 01 3F
	ora ($5C.b,X)		; 01 5C
	bvc  14.b		; 50 0E
	sbc $3FCAFF.l,X		; FF FF CA 3F
	rts		; 60

	and $211E61.l,X		; 3F 61 1E 21
	cmp $18CF30.l,X		; DF 30 CF 18
	cmp $2C.b		; C5 2C
	tyx		; BB
	inc A		; 1A
	and $10.b,X		; 35 10
	rep #$04		; C2 04
	bit $FE1E.w		; 2C 1E FE
	ora ($A6.b,X)		; 01 A6
	adc [$3F.b]		; 67 3F
	inc $B360.w,X		; FE 60 B3
	bcs  -1.b		; B0 FF
	sta ($7E.b,X)		; 81 7E
	txa		; 8A
	bit $D0.b		; 24 D0
	stx $8F90.w		; 8E 90 8F
	lda ($7F.b),Y		; B1 7F
	sed		; F8
	asl $BD23.w,X		; 1E 23 BD
	lsr $7B.b		; 46 7B
	phd		; 0B
	adc $04.b,X		; 75 04
	.db $62, $0F, $20		; 62 0F 20
	adc $FC3F10.l		; 6F 10 3F FC
	lsr $DC30.w		; 4E 30 DC
	jsr $40B8.w		; 20 B8 40
	ora ($BD.b),Y		; 11 BD
	adc [$03.b],Y		; 77 03
	eor [$80.b]		; 47 80
	cmp [$FF.b]		; C7 FF
	lda $018700.l		; AF 00 87 01
	sta [$C0.b]		; 87 C0
	ora $70.b,S		; 03 70
	ora $C3.b,S		; 03 C3
	brk $83.b		; 00 83
	brk $81.b		; 00 81
	cmp $E4.b		; C5 E4
	sbc ($FF.b,X)		; E1 FF
	and #$C0D2.w		; 29 D2 C0
	cpy $69.b		; C4 69
	asl $3956.w,X		; 1E 56 39
	tad		; 5B
	and [$6D.b]		; 27 6D
	asl $1D2B.w,X		; 1E 2B 1D
	phd		; 0B
	bpl  22.b		; 10 16
	asl A		; 0A
	ora $D180.w		; 0D 80 D1
	ldy $6A.b		; A4 6A
	and [$21.b]		; 27 21
	inc $62FA.w,X		; FE FA 62
	ora #$BCDE.w		; 09 DE BC
	cmp $F2.b,S		; C3 F2
	ora ($91.b,X)		; 01 91
	sbc $70E0F0.l,X		; FF F0 E0 70
	bra -48.b		; 80 D0
	trb $0734.w		; 1C 34 07
	and $8601.w,X		; 3D 01 86
	cld		; D8
	clc		; 18
	tsb $F631.w		; 0C 31 F6
	tsb $1CE0.w		; 0C E0 1C
	rts		; 60

	lsr $F8FE.w,X		; 5E FE F8
	sbc ($85.b),Y		; F1 85
	ply		; 7A
	adc $3CC378.l,X		; 7F 78 C3 3C
	adc ($9E.b,X)		; 61 9E
	beq  15.b		; F0 0F
	bmi  15.b		; 30 0F
	cpx $0C.b		; E4 0C
	cmp $46.b,S		; C3 46
	adc ($FF.b),Y		; 71 FF
	sbc $0BF024.l,X		; FF 24 F0 0B
	tas		; 1B
	inc A		; 1A
	sta $1F0D.w		; 8D 0D 1F
	rti		; 40

	sta $208720.l		; 8F 20 87 20
	wai		; CB
	clc		; 18
	adc $FF84.w,X		; 7D 84 FF
	cli		; 58
	sta $837C71.l		; 8F 71 7C 83
	sbc [$F8.b]		; E7 F8
	lda $FEDF00.l,X		; BF 00 DF FE
	adc [$53.b]		; 67 53
	dex		; CA
	sty $FF.b		; 84 FF
	ror $BC.b,X		; 76 BC
	cmp [$18.b]		; C7 18
	stx $28.b		; 86 28
	cmp $11EC29.l		; CF 29 EC 11
	sbc $03F8BF.l,X		; FF BF F8 03
	bit $0407.w,X		; 3C 07 04
	xce		; FB
	bit $FB.b,X		; 34 FB
	sbc [$00.b]		; E7 00
	cmp [$00.b],Y		; D7 00
	dec $00.b,X		; D6 00
	inc $FE11.w		; EE 11 FE
	tyx		; BB
	cmp ($FB.b),Y		; D1 FB
	jmp.w [$48FC]		; DC FC 48
	sty $70.b		; 84 70
	sty $C8.b		; 84 C8
	tya		; 98
	sbc $CCA4FF.l,X		; FF FF A4 CC
	cpx $D4.b		; E4 D4
	beq -44.b		; F0 D4
	inc $EFD0.w,X		; FE D0 EF
	pei ($38.b)		; D4 38
	bmi  56.b		; 30 38
	sec		; 38
	ldy $E93C.w,X		; BC 3C E9
	sbc $5EDE.w,X		; FD DE 5E
	inc $58D8.w,X		; FE D8 58
	bne  84.b		; D0 54
	bit $F8F2.w		; 2C F2 F8
	ora [$F4.b]		; 07 F4
	ora $3F.b,S		; 03 3F
	jsr ($01E0.w,X)		; FC E0 01
	inc $CD0E.w		; EE 0E CD
	ora ($D0.b,S),Y		; 13 D0
	plb		; AB
	sec		; 38
	ora $33.b,S		; 03 33
	ora [$70.b]		; 07 70
	adc $F8.b,S		; 63 F8
	ora $FE1F7F.l		; 0F 7F 1F FE
	and $7AFFFE.l,X		; 3F FE FF 7A
	jsr ($FF2D.w,X)		; FC 2D FF
	ora $F3F2EE.l		; 0F EE F2 F3
	cmp $F73D.w,X		; DD 3D F7
	cmp $AF610E.l		; CF 0E 61 AF
	bra  15.b		; 80 0F
	cpy #$FF.b		; C0 FF
	sbc $EEA8.w,X		; FD A8 EE
	bne -13.b		; D0 F3
	bit $0E3D.w,X		; 3C 3D 0E
	cmp $F4F1C3.l		; CF C3 F1 F4
.ACCU 16
.INDEX 16
	rep #$FB		; C2 FB
	ora $7FF4.w		; 0D F4 7F
	sbc $ED1E1F.l,X		; FF 1F 1E ED
	jmp ($917E.w)		; 6C 7E 91
	jmp $F9D665.l		; 5C 65 D6 F9
	sbc ($0C.b,S),Y		; F3 0C
	inc $0201.w,X		; FE 01 02
	inc $2AFF.w,X		; FE FF 2A
	asl $0C1E.w,X		; 1E 1E 0C
	sta $806300.l		; 8F 00 63 80
	sbc $0CE0.w,Y		; F9 E0 0C
	php		; 08
	ora ($F0.b,X)		; 01 F0
	inc $7FFF.w,X		; FE FF 7F
	cpx #$E4DB.w		; E0 DB E4
	xce		; FB
	cpy $B3.b		; C4 B3
	cpy $9669.w		; CC 69 96
	sbc $3D02.w,X		; FD 02 3D
.INDEX 16
	rep #$5B		; C2 5B
	bit $E1.b		; 24 E1
	sed		; F8
	sbc $C04CFE.l,X		; FF FE 4C C0
	lsr $5EC0.w		; 4E C0 5E
	bra -98.b		; 80 9E
	brk $3E.b		; 00 3E
	cpy #$6016.w		; C0 16 60
	inc $867F.w,X		; FE 7F 86
	sbc $F1.b,X		; F5 F1
	rti		; 40

	bra  32.b		; 80 20
	cpy #$EC11.w		; C0 11 EC
	ora ($7A.b,X)		; 01 7A
	ora $2467.w		; 0D 67 24
	dec $FD41.w,X		; DE 41 FD
	sbc $54DAA4.l,X		; FF A4 DA 54
.ACCU 16
.INDEX 16
	rep #$F0		; C2 F0
	brk $CC.b		; 00 CC
	brk $A4.b		; 00 A4
	ora $2140.w,Y		; 19 40 21
	bit $7F.b,X		; 34 7F
	jsr $FFFE.w		; 20 FE FF
	beq 104.b		; F0 68
	inc $FC40.w,X		; FE 40 FC
	bne  -4.b		; D0 FC
	bra  -8.b		; 80 F8
	bcs  17.b		; B0 11
	sed		; F8
	and ($00.b)		; 32 00
	adc $0074E8.l,X		; 7F E8 74 00
	stz $00.b		; 64 00
	inx		; E8
	brk $C8.b		; 00 C8
	brk $54.b		; 00 54
	bcc -34.b		; 90 DE
	cmp ($0E.b),Y		; D1 0E
	sbc $25400F.l,X		; FF 0F 40 25
	adc ($0D.b,X)		; 61 0D
	and #$2B0A.w		; 29 0A 2B
	asl A		; 0A
	inc A		; 1A
	tsb $06.b		; 04 06
	ora #$1F05.w		; 09 05 1F
	pea $3F0D.w		; F4 0D 3F
	ora ($1F.b,X)		; 01 1F
	ora $17.b,S		; 03 17
	inc $B9A0.w,X		; FE A0 B9
	cpx #$61B4.w		; E0 B4 61
	lda [$FF.b]		; A7 FF
	sbc $699152.l		; EF 52 91 69
	php		; 08
	ora $9548.w,Y		; 19 48 95
	cpy $F8.b		; C4 F8
	sty $7E.b		; 84 7E
	bra  67.b		; 80 43
	pha		; 48
	lda $C7BC.w,Y		; B9 BC C7
	sbc $DEDEBC.l,X		; FF BC DE DE
	inc $87FF.w		; EE FF 87
	sta [$81.b]		; 87 81
	lda ($80.b),Y		; B1 80
	ldx $0CEA.w,Y		; BE EA 0C
	ora $FC62FE.l,X		; 1F FE 62 FC
	asl $F4.b,X		; 16 F4
	stz $60.b		; 64 60
	tax		; AA
	sed		; F8
	eor ($AB.b),Y		; 51 AB
	brk $DE.b		; 00 DE
	ora ($FE.b,X)		; 01 FE
	sbc $C9E0F1.l,X		; FF F1 E0 C9
	ora #$9B01.w		; 09 01 9B
	ora $FB.b,S		; 03 FB
	ora $27.b,S		; 03 27
	ora [$74.b]		; 07 74
	tsb $20.b		; 04 20
	ora $11.b,S		; 03 11
	sbc $3023FF.l,X		; FF FF 23 30
	pld		; 2B
	and $692B.w,Y		; 39 2B 69
	eor $B5D5.w,Y		; 59 D5 B5
	pea $F20D.w		; F4 0D F2
	phd		; 0B
	sec		; 38
	cmp ($E8.b,X)		; C1 E8
	cmp $FF.b,S		; C3 FF
	inx		; E8
	sbc $FEEC.w		; ED EC FE
	cmp $BEBFDE.l,X		; DF DE BF BE
	ora $EC0C0E.l		; 0F 0E 0C EC
	asl $2FFA.w		; 0E FA 2F
	cpx $B6A2.w		; EC A2 B6
	sbc $0F17F8.l,X		; FF F8 17 0F
	bra  35.b		; 80 23
	rts		; 60

	php		; 08
	sec		; 38
	cop $0E.b		; 02 0E
	eor $07B6F3.l		; 4F F3 B6 07
	sbc $E1AE7F.l,X		; FF 7F AE E1
	ora [$CB.b]		; 07 CB
	sed		; F8
	asl A		; 0A
	cmp ($1A.b),Y		; D1 1A
	beq -108.b		; F0 94
	jsr ($8C7F.w,X)		; FC 7F 8C
	sta $0D99.w,Y		; 99 99 0D
	sbc $1D00.w		; ED 00 1D
	cop $00.b		; 02 00
	inc $06.b		; E6 06
	sbc $E17C07.l,X		; FF 07 7C E1
	inc $6703.w,X		; FE 03 67
	ora $13.b,S		; 03 13
	.db $82, $B9, $3A		; 82 B9 3A
	xce		; FB
	sbc $F87F.w,X		; FD 7F F8
	sbc $3E3E.w,X		; FD 3E 3E
	eor $5F534F.l		; 4F 4F 53 5F
	bvc  -2.b		; 50 FE
	ora $408F50.l		; 0F 50 8F 40
	adc $C0FC0F.l,X		; 7F 0F FC C0
	rol $CF30.w,X		; 3E 30 CF
	cpy $F3F3.w		; CC F3 F3
	sta ($B9.b,X)		; 81 B9
	sbc [$F3.b],Y		; F7 F3
	pea $7FFF.w		; F4 FF 7F
	inc $03F8.w,X		; FE F8 03
	ora $09BF05.l		; 0F 05 BF 09
	adc $609B81.l		; 6F 81 9B 60
	jsr ($FA83.w,X)		; FC 83 FA
	asl $F9.b,X		; 16 F9
	adc $B939F8.l,X		; 7F F8 39 B9
	sbc $7500.w,Y		; F9 00 75
	brk $9D.b		; 00 9D
	bra  46.b		; 80 2E
	phd		; 0B
	dey		; 88
	dec $31.b		; C6 31
	sbc $7087FF.l,X		; FF FF 87 70
	sbc $D0BFC8.l,X		; FF C8 BF D0
	adc $40FFA0.l,X		; 7F A0 FF 40
	sbc $BA4F18.l,X		; FF 18 4F BA
	lda $E1FFD2.l,X		; BF D2 FF E1
	and $4EC044.l,X		; 3F 44 C0 4E
	cpy $5A.b		; C4 5A
	sty $04B2.w		; 8C B2 04
	ply		; 7A
	inc $0E80.w,X		; FE 80 0E
	lda $9EC03F.l,X		; BF 3F C0 9E
	rti		; 40

	stz $0FC7.w		; 9C C7 0F
	cpy $F10A.w		; CC 0A F1
	inc $0E.b		; E6 0E
	pea $F10C.w		; F4 0C F1
	php		; 08
	bit $FEFE.w,X		; 3C FE FE
	sbc ($08.b,S),Y		; F3 08
	and $BFFEFF.l,X		; 3F FF FE BF
	ora ($90.b),Y		; 11 90
	ora $80.b,S		; 03 80
	pea $07FF.w		; F4 FF 07
	inc $2600.w,X		; FE 00 26
	ora #$C9C6.w		; 09 C6 C9
	ora $4C.b,S		; 03 4C
	and [$0C.b]		; 27 0C
	sta $0E.b,X		; 95 0E
	adc $2ED3F8.l,X		; 7F F8 D3 2E
	dex		; CA
	and [$C9.b]		; 27 C9
	rol $F8.b		; 26 F8
	xce		; FB
	inc $FDFC.w,X		; FE FC FD
	jsr ($1F7D.w,X)		; FC 7D 1F
	inc $3EFE.w,X		; FE FE 3E
	dec $DF1E.w,X		; DE 1E DF
	ora $F10EFC.l,X		; 1F FC 0E F1
	rol $3FC1.w,X		; 3E C1 3F
	cpy #$B7F7.w		; C0 F7 B7
	ora [$F8.b]		; 07 F8
	sta $E22A60.l,X		; 9F 60 2A E2
	sbc $0102.w,X		; FD 02 01
	jsr ($E001.w,X)		; FC 01 E0
	trb $FED1.w		; 1C D1 FE
	sbc $E20D00.l,X		; FF 00 0D E2
	brk $7B.b		; 00 7B
	brk $67.b		; 00 67
	txy		; 9B
	ldy $5F.b		; A4 5F
	cpx #$FFE0.w		; E0 E0 FF
	sta [$E6.b]		; 87 E6
	cmp [$68.b],Y		; D7 68
	phb		; 8B
	mvn $01,$AF		; 54 AF 01
	sta $4EA061.l,X		; 9F 61 A0 4E
	cpx #$FF88.w		; E0 88 FF
	sbc $080016.l,X		; FF 16 00 08
	rts		; 60

	ror $7670.w		; 6E 70 76
	adc ($75.b),Y		; 71 75
	adc ($71.b),Y		; 71 71
	ror $DB9D.w		; 6E 9D DB
	mvp $FF,$EF		; 44 EF FF
	sbc $D92E29.l,X		; FF 29 2E D9
	phx		; DA
	sbc [$C5.b]		; E7 C5
	xba		; EB
	sta $0AD6.w		; 8D D6 0A
	sta [$9C.b],Y		; 97 9C
	ora ($44.b,X)		; 01 44
	and ($A8.b,X)		; 21 A8
	sbc $D8907F.l,X		; FF 7F 90 D8
.ACCU 16
	rep #$E0		; C2 E0
	cpx $F0.b		; E4 F0
	jsr ($E9E0.w,X)		; FC E0 E9
	cpy #$60C9.w		; C0 C9 60
	beq  32.b		; F0 20
	beq  64.b		; F0 40
	eor $B0.b,S		; 43 B0
	sta $CB.b,S		; 83 CB
	bra  -2.b		; 80 FE
	cpy #$60FE.w		; C0 FE 60
	jmp.w [$4240]		; DC 40 42
	adc $DC.b,X		; 75 DC
	sbc #$D202.w		; E9 02 D2
	inc $A404.w,X		; FE 04 A4
	lda $CC35.w,Y		; B9 35 CC
	ror A		; 6A
	rep #$06		; C2 06
	ora ($C1.b,X)		; 01 C1
	sbc $FFB648.l,X		; FF 48 B6 FF
	lda ($F3.b,X)		; A1 F3
	ora $4F.b,S		; 03 4F
	bcs  91.b		; B0 5B
	bit $47.b		; 24 47
	clv		; B8
	adc $3FC3.w,X		; 7D C3 3F
	.db $82, $F7, $08		; 82 F7 08
	jmp ($19E6.w,X)		; 7C E6 19
	cpx $18.b		; E4 18
	bra -66.b		; 80 BE
	bra -72.b		; 80 B8
	inc $FF.b,X		; F6 FF
	jsr ($19BC.w,X)		; FC BC 19
	cmp ($A6.b),Y		; D1 A6
	ora ($9D.b,X)		; 01 9D
	ora $3B.b,S		; 03 3B
	adc [$50.b],Y		; 77 50
	jsr ($FE8B.w,X)		; FC 8B FE
	sbc $FF89FF.l,X		; FF FF 89 FF
	bvs  -2.b		; 70 FE
	ora ($7D.b,X)		; 01 7D
	sep #$0C		; E2 0C
	sta ($02.b,S),Y		; 93 02
	adc ($50.b,X)		; 61 50
	phb		; 8B
	dey		; 88
	bvs -120.b		; 70 88
	sbc ($F4.b,X)		; E1 F4
	adc ($70.b,S),Y		; 73 70
	rep #$04		; C2 04
	beq -10.b		; F0 F6
	asl $30.b,X		; 16 30
	cmp ($B8.b,X)		; C1 B8
	cmp ($C3.b,S),Y		; D3 C3
	eor ($3D.b,X)		; 41 3D
	cmp ($31.b,X)		; C1 31
	ldx $40.b,Y		; B6 40
	sbc $0EBA18.l		; EF 18 BA 0E
	adc ($2A.b,X)		; 61 2A
	inx		; E8
	asl $E03F.w		; 0E 3F E0
	ora $E020FE.l		; 0F FE 20 E0
	sbc ($68.b),Y		; F1 68
	cmp ($7B.b)		; D2 7B
	jsl $A163D7.l		; 22 D7 63 A1
	cop $85.b		; 02 85
	ldy #$75BF.w		; A0 BF 75
	cmp ($FF.b)		; D2 FF
	adc $14AF03.l,X		; 7F 03 AF 14
	ora $182F38.l		; 0F 38 2F 18
	ora $0CF31A.l		; 0F 1A F3 0C
	xba		; EB
	cpx $F7.b		; E4 F7
	ora ($FF.b,X)		; 01 FF
	sed		; F8
	sbc $F9F4F8.l,X		; FF F8 F4 F9
	plx		; FA
	adc $397A.w,Y		; 79 7A 39
	dec A		; 3A
	trb $1C1D.w		; 1C 1D 1C
	sbc $FF0C.w,X		; FD 0C FF
	sbc $FA00FD.l,X		; FF FD 00 FA
	iny		; C8
	adc [$BC.b],Y		; 77 BC
	tda		; 7B
	sbc $09FE60.l,X		; FF 60 FE 09
	inc $FC15.w,X		; FE 15 FC
	rol A		; 2A
	sed		; F8
	cmp $FF.b,S		; C3 FF
	eor ($FB.b),Y		; 51 FB
	sta [$AE.b],Y		; 97 AE
	ora $B8.b,S		; 03 B8
	brk $F8.b		; 00 F8
	sta ($79.b,X)		; 81 79
	ora ($F5.b,X)		; 01 F5
	ora $FF.b,S		; 03 FF
	sbc $D707EB.l,X		; FF EB 07 D7
	ora [$B7.b]		; 07 B7
	lda $827FCC.l,X		; BF CC 7F 82
	lda $C0FF56.l,X		; BF 56 FF C0
	ora $FF4F28.l,X		; 1F 28 4F FF
	lda $C0AF80.l,X		; BF 80 AF C0
	cmp [$E0.b]		; C7 E0
	cpy #$801C.w		; C0 1C 80
	cop $40.b		; 02 40
	lsr $ECE0.w,X		; 5E E0 EC
	cpx #$F5E8.w		; E0 E8 F5
	asl A		; 0A
	jmp.w [$F3A4]		; DC A4 F3
	jmp $FEF1.w		; 4C F1 FE
	inc $08F1.w,X		; FE F1 08
	sbc $B7A7.w,X		; FD A7 B7
	inc $FFFC.w,X		; FE FC FF
	sbc $22957F.l,X		; FF 7F 95 22
	tya		; 98
	jsr $60DB.w		; 20 DB 60
	pei ($60.b)		; D4 60
	lda ($44.b),Y		; B1 44
	ldy $B642.w,X		; BC 42 B6
	eor #$7F86.w		; 49 86 7F
	sed		; F8
	adc $1ECE.w,Y		; 79 CE 1E
	cmp [$1F.b]		; C7 1F
	sta [$1F.b]		; 87 1F
	sta $873FFE.l		; 8F FE 3F 87
	and [$8B.b]		; 27 8B
	sbc $B9030F.l,X		; FF 0F 03 B9
	ora ($FD.b,X)		; 01 FD
	cop $F9.b		; 02 F9
	asl $1F.b		; 06 1F
	cpx #$7FBF.w		; E0 BF 7F
	eor $287FBF.l		; 4F BF 7F 28
	jsr ($7F3F.w,X)		; FC 3F 7F
	sta $8F00BF.l,X		; 9F BF 00 8F
	brk $F1.b		; 00 F1
	cpx #$A6FA.w		; E0 FA A6
	jsr ($FFFF.w,X)		; FC FF FF
	sbc [$63.b],Y		; F7 63
.ACCU 8
	sep #$63		; E2 63
	dex		; CA
	.db $62, $E2, $CA		; 62 E2 CA
	cmp ($DB.b)		; D2 DB
	sta $DBD3.w,X		; 9D D3 DB
	xba		; EB
	cmp $95.b,S		; C3 95
	tax		; AA
	lda $04.b,X		; B5 04
	txs		; 9A
	cop $9C.b		; 02 9C
	sbc ($F3.b,S),Y		; F3 F3
	sbc $F1.b,X		; F5 F1
	inc $FF0A.w,X		; FE 0A FF
	sbc $2F1415.l,X		; FF 15 14 2F
	trb $2B.b		; 14 2B
	ora #$3E.b		; 09 3E
	ora #$37.b		; 09 37
	bpl  31.b		; 10 1F
	eor ($4D.b)		; 52 4D
	sta ($CD.b)		; 92 CD
	bra  15.b		; 80 0F
	and $93808B.l,X		; 3F 8B 80 93
	brk $17.b		; 00 17
	sta $80.b		; 85 80
	stx $EEE0.w		; 8E E0 EE
	cpx #$48FE.w		; E0 FE 48
	sbc ($FE.b)		; F2 FE
	eor $FEF5.w,Y		; 59 F5 FE
	eor $FF0F98.l,X		; 5F 98 0F FF
	tsb $37.b		; 04 37
	cmp $03.b,X		; D5 03
	ora $02.b		; 05 02
	asl $D2.b		; 06 D2
	cmp ($01.b)		; D2 01
	inc $CA1A.w,X		; FE 1A CA
	sbc ($35.b,S),Y		; F3 35
	tax		; AA
	sbc $03FF.w,X		; FD FF 03
	phd		; 0B
	sty $0BB1.w		; 8C B1 0B
	ora $05.b		; 05 05
	adc $9313.w		; 6D 13 93
	and $471F27.l		; 2F 27 1F 47
	sta $0BFF97.l,X		; 9F 97 FF 0B
	sta $879FA3.l		; 8F A3 9F 87
	lda $C7DF47.l,X		; BF 47 DF C7
	cmp [$6F.b],Y		; D7 6F
	sbc $09F862.l		; EF 62 F8 09
	and $F5FFFC.l,X		; 3F FC FF F5
	sed		; F8
	plx		; FA
	jsr ($FEFC.w,X)		; FC FC FE
	inc $FEF8.w,X		; FE F8 FE
	sbc ($FC.b)		; F2 FC
	sbc ($2F.b),Y		; F1 2F
	jsr ($F5FD.w,X)		; FC FD F5
	sbc $FEFE.w,Y		; F9 FE FE
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	phd		; 0B
	sbc $AF8863.l,X		; FF 63 88 AF
	rti		; 40

	bit $47F0.w		; 2C F0 47
	eor $29.b,S		; 43 29
	rol $81.b,X		; 36 81
	and [$80.b],Y		; 37 80
	and ($80.b,S),Y		; 33 80
	adc ($67.b),Y		; 71 67
	cpx $7C9F.w		; EC 9F 7C
	sta [$8E.b]		; 87 8E
	sta $C0E3.w,Y		; 99 E3 C0
	cpx #$C0.b		; E0 C0
	sbc ($80.b,X)		; E1 80
	bra  -3.b		; 80 FD
	ora [$93.b],Y		; 17 93
	eor $031C99.l,X		; 5F 99 1C 03
	sbc [$1F.b]		; E7 1F
	ldy $F37F.w,X		; BC 7F F3
	jmp ($EDB5.w,X)		; 7C B5 ED
	phd		; 0B
	sbc $541F79.l,X		; FF 79 1F 54
	sbc ($F1.b,X)		; E1 F1
	sbc ($B9.b,S),Y		; F3 B9
	xce		; FB
	clv		; B8
	sbc [$20.b]		; E7 20
	plx		; FA
	sbc $3001FF.l,X		; FF FF 01 30
	cpy $C7B8.w		; CC B8 C7
	inc $5331.w		; EE 31 53
	cpx $F504.w		; EC 04 F5
	asl $FE.b		; 06 FE
	ora $FF1FFF.l,X		; 1F FF 1F FF
	sta [$1F.b]		; 87 1F
	cmp $0FCF1F.l,X		; DF 1F CF 0F
	and ($03.b,S),Y		; 33 03
	cpx $F700.w		; EC 00 F7
	and $FFFEFF.l		; 2F FF FE FF
	sbc $3FDF5F.l,X		; FF 5F DF 3F
	ora [$FF.b]		; 07 FF
	ora $BF9E7F.l		; 0F 7F 9E BF
	lsr $0FDF.w		; 4E DF 0F
	adc $1FEF0F.l		; 6F 0F EF 1F
	cmp ($FF.b)		; D2 FF
	eor $FF94C4.l,X		; 5F C4 94 FF
	plb		; AB
	cpy #$6B.b		; C0 6B
	bra -117.b		; 80 8B
	bne  15.b		; D0 0F
	bne  75.b		; D0 4B
	lda $2994FF.l,X		; BF FF 94 29
	ldx $B8.b,Y		; B6 B8
	and [$58.b]		; 27 58
	adc [$A4.b]		; 67 A4
	ldy $F0F0.w		; AC F0 F0
	pea $F6F0.w		; F4 F0 F6
	beq -25.b		; F0 E7
	beq  31.b		; F0 1F
	cpx #$FE.b		; E0 FE
	inc $0A.b,X		; F6 0A
	sbc [$0C.b],Y		; F7 0C
	sbc $10EF07.l,X		; FF 07 EF 10
	sbc [$C8.b],Y		; F7 C8
	stx $C9.b,Y		; 96 C9
	jsr ($C9CC.w,X)		; FC CC C9
	tsb $F148.w		; 0C 48 F1
	bpl -26.b		; 10 E6
	lda $FFFF.w,Y		; B9 FF FF
	jsr ($D910.w,X)		; FC 10 D9
	rol $A2.b		; 26 A2
	eor $9BF4.w,X		; 5D F4 9B
	tax		; AA
	eor [$F5.b],Y		; 57 F5
	stx $1DEA.w		; 8E EA 1D
	eor ($FF.b,S),Y		; 53 FF
	sbc [$BD.b],Y		; F7 BD
	lda $3B.b		; A5 3B
	ldx $00.b		; A6 00
	eor $9B00.w,X		; 5D 00 9B
	brk $57.b		; 00 57
	brk $8E.b		; 00 8E
	sta ($C1.b,X)		; 81 C1
	lda $FF00.w,X		; BD 00 FF
	sbc $47407B.l,X		; FF 7B 40 47
	cmp $7C33F3.l		; CF F3 33 7C
	sta $72AE.w		; 8D AE 72
	adc $EED5F5.l		; 6F F5 D5 EE
	stp		; DB
	nop		; EA
	sbc ($FF.b,X)		; E1 FF
	lda ($D2.b,S),Y		; B3 D2
	stx $3F3F.w		; 8E 3F 3F
	sta $03730F.l		; 8F 0F 73 03
	sbc $01.b,X		; F5 01
	inc $FF00.w		; EE 00 FF
	sbc $D204EA.l,X		; FF EA 04 D2
	tsb $A639.w		; 0C 39 A6
	lsr $6B.b,X		; 56 6B
	adc $EB5B.w		; 6D 5B EB
	sta $5DEE.w,X		; 9D EE 5D
	stz $FFAD.w,X		; 9E AD FF
	sta [$B1.b]		; 87 B1
	tax		; AA
	lda ($AA.b,S),Y		; B3 AA
	inc $E0.b		; E6 E0
	xba		; EB
	cpx #$DB.b		; E0 DB
	cpy #$9D.b		; C0 9D
	bra -70.b		; 80 BA
	sta [$FF.b]		; 87 FF
	lda $AA40.w		; AD 40 AA
	mvp $22,$FE		; 44 FE 22
	sta $A41B64.l,X		; 9F 64 1B A4
	eor $FFBF42.l,X		; 5F 42 BF FF
	ora $B5CA.w,X		; 1D CA B5
	tax		; AA
	cmp $CD36.w,X		; DD 36 CD
	stz $8B.b,X		; 74 8B
	cpy #$FC.b		; C0 FC
	cpx $E1.b		; E4 E1
	sec		; 38
	bra  14.b		; 80 0E
	sbc $C03AFE.l,X		; FF FE 3A C0
	ora ($FE.b)		; 12 FE
	bra  52.b		; 80 34
	and #$00.b		; 29 00
	lsr $00.b,X		; 56 00
	rol A		; 2A
	sbc ($FF.b),Y		; F1 FF
	brk $34.b		; 00 34
	txa		; 8A
	ply		; 7A
	brk $25.b		; 00 25
	brk $1B.b		; 00 1B
	ora ($1E.b,X)		; 01 1E
	asl $3939.w,X		; 1E 39 39
	sbc $1717FF.l,X		; FF FF 17 17
	ora $3E3E0F.l		; 0F 0F 3E 3E
	ora $1B1D.w,X		; 1D 1D 1B
	tas		; 1B
	asl $07.b		; 06 07
	and $EF.b,S		; 23 EF
	sta ($77.b,S),Y		; 93 77
	sbc $1B69F7.l,X		; FF F7 69 1B
	sta $0D.b,X		; 95 0D
	lsr $CF02.w		; 4E 02 CF
	ora ($9F.b,X)		; 01 9F
	sty $9E.b		; 84 9E
	tsb $EA.b		; 04 EA
	.db $82, $9F, $9F		; 82 9F 9F
	sbc $6FFF.w,X		; FD FF 6F
	adc $F5E9E2.l		; 6F E2 E9 F5
	ror A		; 6A
	inc $EFEB.w		; EE EB EF
	sbc ($FB.b)		; F2 FB
	sbc $F6.b		; E5 F6
	nop		; EA
	cpx $C3D5.w		; EC D5 C3
	cmp $D8.b,S		; C3 D8
	tsx		; BA
	ldy #$54.b		; A0 54
	xce		; FB
	sta ($BF.b,X)		; 81 BF
	and ($E0.b,X)		; 21 E0
	inc $FFFF.w,X		; FE FF FF
	inc $FDFD.w,X		; FE FD FD
	plx		; FA
	plx		; FA
	sbc [$E7.b]		; E7 E7
	cmp [$D7.b],Y		; D7 D7
	ldx $B7.b,Y		; B6 B7
	phy		; 5A
	tda		; 7B
	bcc   0.b		; 90 00
	cli		; 58
	lda [$F0.b],Y		; B7 F0
	brk $AC.b		; 00 AC
	brk $54.b		; 00 54
	sbc $B4A9.w		; ED A9 B4
	ror A		; 6A
	sta $61FA.w,Y		; 99 FA 61
	adc ($B0.b,X)		; 61 B0
	sbc $D8B0FF.l,X		; FF FF B0 D8
	cld		; D8
	inx		; E8
	inx		; E8
	bvs 112.b		; 70 70
	sei		; 78
	sei		; 78
	clv		; B8
	clv		; B8
	bne -48.b		; D0 D0
	eor $5733.w		; 4D 33 57
	sbc $6E2F7F.l,X		; FF 7F 2F 6E
	ora $F87F9C.l,X		; 1F 9C 7F F8
	adc $623EF1.l,X		; 7F F1 3E 62
	and $3D43.w,X		; 3D 43 3D
	and ($00.b,S),Y		; 33 00
	and $66F0A1.l		; 2F A1 F0 66
	sbc ($FE.b,S),Y		; F3 FE
	rol $B9BE.w,X		; 3E BE B9
	inc $EE95.w,X		; FE 95 EE
	and #$FF.b		; 29 FF
	ora $BD5BDE.l		; 0F DE 5B BD
	adc ($BC.b)		; 72 BC
	ldx $7A.b,Y		; B6 7A
	adc $F9.b		; 65 F9
	sbc $CDF5.w		; ED F5 CD
	sbc $FD.b,X		; F5 FD
	sbc $0A.b,S		; E3 0A
	dec $F1E8.w,X		; DE E8 F1
	ldy $7A01.w,X		; BC 01 7A
	ora ($F9.b,X)		; 01 F9
	cop $F5.b		; 02 F5
	inc $FFA6.w,X		; FE A6 FF
	ora $B6F06F.l		; 0F 6F F0 B6
	lda $BBD9.w,Y		; B9 D9 BB
	wai		; CB
	sbc [$AE.b],Y		; F7 AE
	sbc $AA6EB5.l,X		; FF B5 6E AA
	inc $87.b,X		; F6 87
	inc $8928.w,X		; FE 28 89
	and $AEF244.l,X		; 3F 44 F2 AE
	asl $04B5.w		; 0E B5 04
	tax		; AA
	ora ($FE.b),Y		; 11 FE
	sbc ($FF.b,X)		; E1 FF
	stz $5B.b		; 64 5B
	php		; 08
	sbc $9E.b		; E5 9E
	sta ($6F.b)		; 92 6F
	adc #$F7.b		; 69 F7
	ldy $7B.b,X		; B4 7B
	phx		; DA
	lda $C6FF.w,X		; BD FF C6
	eor $C0DB3C.l,X		; 5F 3C DB C0
	cmp $9EC0.w,X		; DD C0 9E
	bra 111.b		; 80 6F
	sta $99.b,S		; 83 99
	tda		; 7B
	clv		; B8
	sta $803CFE.l,X		; 9F FE 3C 80
	sbc #$07.b		; E9 07
	sbc $0F.b,S		; E3 0F
	inc $0FE7.w,X		; FE E7 0F
	dec $0F.b,X		; D6 0F
	cmp [$0E.b],Y		; D7 0E
	nop		; EA
	sbc $81CA46.l,X		; FF 46 CA 81
	sbc $AC98FE.l,X		; FF FE 98 AC
	phd		; 0B
	lda [$97.b],Y		; B7 97
	and $2E6F16.l		; 2F 16 6F 2E
	eor $E1FF6D.l,X		; 5F 6D FF E1
	asl $4E71.w,X		; 1E 71 4E
	ror $7771.w,X		; 7E 71 77
	sbc $F7.b,X		; F5 F7
	cpy #$EF.b		; C0 EF
	inc $DF80.w,X		; FE 80 DF
	beq  -1.b		; F0 FF
	bra -68.b		; 80 BC
	stx $8180.w		; 8E 80 81
	bra   9.b		; 80 09
	brk $33.b		; 00 33
	cmp ($65.b)		; D2 65
	ldx $86.b		; A6 86
	sbc $CE45FF.l,X		; FF FF 45 CE
	eor $8D0F.w		; 4D 0F 8D
	sta $1D1F8D.l		; 8F 8D 1F 1D
	tas		; 1B
	ora $0CD2.w,X		; 1D D2 0C
	ldx $18.b		; A6 18
	eor $0F.b		; 45 0F
	cmp $38.b,S		; C3 38
	eor $8D30.w		; 4D 30 8D
	bvs  -2.b		; 70 FE
	ora $FEE0.w,X		; 1D E0 FE
	sty $FFFF.w		; 8C FF FF
	sta $99.b,X		; 95 99
	sta $9A.b,X		; 95 9A
	stx $8A.b,Y		; 96 8A
	stx $C5.b		; 86 C5
	dex		; CA
	dec $ECC8.w		; CE C8 EC
	inx		; E8
	clv		; B8
	cpy #$95.b		; C0 95
	beq  -1.b		; F0 FF
	.db $62, $FE, $96		; 62 FE 96
	adc ($86.b,X)		; 61 86
	adc ($CA.b),Y		; 71 CA
	bmi -56.b		; 30 C8
	bmi -24.b		; 30 E8
	bpl -64.b		; 10 C0
	sbc $9000FF.l,X		; FF FF 00 90
	adc $827F88.l,X		; 7F 88 7F 82
	adc $207F80.l,X		; 7F 80 7F 20
	adc $167F18.l,X		; 7F 18 7F 16
	and $FB4312.l,X		; 3F 12 43 FB
	and $FE0024.l,X		; 3F 24 00 FE
	plp		; 28
	ror $0AF1.w		; 6E F1 0A
	asl $06A3.w,X		; 1E A3 06
	brk $17.b		; 00 17
	sta [$FF.b]		; 87 FF
	cop $1F.b		; 02 1F
	tsb $0E.b		; 04 0E
	sed		; F8
	php		; 08
	ora $1A0B1C.l		; 0F 1C 0B 1A
	ora ($10.b,X)		; 01 10
	brk $57.b		; 00 57
	ora $0D10.w		; 0D 10 0D
	ora $D3FE0B.l		; 0F 0B FE D3
	ldx $E1.b		; A6 E1
	eor $B1.b,X		; 55 B1
	cpy $0C81.w		; CC 81 0C
	beq  -1.b		; F0 FF
	inc $BFC5.w,X		; FE C5 BF
	clc		; 18
	sbc $70FF38.l,X		; FF 38 FF 70
	sbc $007F30.l,X		; FF 30 7F 00
	cmp ($F0.b,S),Y		; D3 F0
	sbc $A7FEDF.l,X		; FF DF FE A7
	lda $477F67.l,X		; BF 67 7F 47
	adc $4FFF8F.l,X		; 7F 8F FF 4F
	adc $C30F9F.l,X		; 7F 9F 0F C3
	ora $FD20FD.l,X		; 1F FD 20 FD
	bmi -24.b		; 30 E8
	inc $FE18.w,X		; FE 18 FE
	sbc $1C1FF0.l,X		; FF F0 1F 1C
	inc $0CFE.w,X		; FE FE 0C
	tad		; 5B
	tda		; 7B
	phk		; 4B
	tda		; 7B
	eor $657D.w		; 4D 7D 65
	sta [$FF.b]		; 87 FF
	inc $7E62.w,X		; FE 62 7E
	inc $7C71.w,X		; FE 71 7C
	sed		; F8
	bra -48.b		; 80 D0
	cpy #$F0.b		; C0 F0
	rti		; 40

	adc $50E0F8.l,X		; 7F F8 E0 50
	beq  56.b		; F0 38
	bne  88.b		; D0 58
	brk $08.b		; 00 08
	inc $C040.w,X		; FE 40 C0
	jsr $2EE0.w		; 20 E0 2E
	jsr ($76A0.w,X)		; FC A0 76
	cmp ($80.b)		; D2 80
	jsr $C15C.w		; 20 5C C1
	inc $1B25.w,X		; FE 25 1B
	tas		; 1B
	ora [$17.b]		; 07 17
	inc $0F05.w		; EE 05 0F
	sta [$C1.b],Y		; 97 C1
	ora [$06.b]		; 07 06
	and $91.b		; 25 91
	ora ($03.b,X)		; 01 03
	tas		; 1B
	rol A		; 2A
	plb		; AB
	inc $1E1F.w,X		; FE 1F 1E
	trb $C9CE.w		; 1C CE C9
	sbc ($9B.b),Y		; F1 9B
	xba		; EB
	inc $D332.w,X		; FE 32 D3
	rol $D7.b,X		; 36 D7
	inc $FEE1.w,X		; FE E1 FE
	inc $27.b		; E6 27
	sbc $F1AE.w		; ED AE F1
	asl $EB.b		; 06 EB
	tsb $FE.b		; 04 FE
	cmp ($0C.b,S),Y		; D3 0C
	sbc ($3F.b,X)		; E1 3F
	cmp [$08.b],Y		; D7 08
	inc $1827.w,X		; FE 27 18
	rol $6D10.w		; 2E 10 6D
	plb		; AB
	wai		; CB
	eor $7ECF.w		; 4D CF 7E
	sed		; F8
	inc $4DCE.w,X		; FE CE 4D
	sta $8F0E.w		; 8D 0E 8F
	inc $AB8E.w,X		; FE 8E AB
	bpl  77.b		; 10 4D
	asl $30FF.w		; 0E FF 30
	inc $0EFC.w,X		; FE FC 0E
	bvs  -2.b		; 70 FE
	stx $6D70.w		; 8E 70 6D
	lsr $1E2F.w,X		; 5E 2F 1E
	rol $FF.b,X		; 36 FF
	sbc $88962C.l,X		; FF 2C 96 88
	stz $8890.w		; 9C 90 88
	bra -56.b		; 80 C8
	cpy #$D0.b		; C0 D0
	iny		; C8
	lsr $1E80.w,X		; 5E 80 1E
	cpy #$2C.b		; C0 2C
	sbc $88C0EF.l,X		; FF EF C0 88
	rts		; 60

	bcc  96.b		; 90 60
	bra 112.b		; 80 70
	cpy #$30.b		; C0 30
	cmp ($21.b,X)		; C1 21
	lsr $FE1E.w		; 4E 1E FE
	sta $FF1C.w,Y		; 99 1C FF
	cmp $1C0D.w		; CD 0D 1C
	ora #$1C.b		; 09 1C
	ora $08.b,X		; 15 08
	ora ($38.b,X)		; 01 38
	and $6A70.w,Y		; 39 70 6A
	pea $3F3E.w		; F4 3E 3F
	jmp ($7CFF.w,X)		; 7C FF 7C
	jmp ($FCFC.w,X)		; 7C FC FC
	adc $E0.b,S		; 63 E0
	lsr $C04F.w		; 4E 4F C0
	ora $EB1F80.l		; 0F 80 1F EB
	adc $1CFDFE.l,X		; 7F FE FD 1C
	rol $AF.b,X		; 36 AF
	inc $DBFC.w,X		; FE FC DB
	bit $407E.w,X		; 3C 7E 40
	plp		; 28
	sec		; 38
	ora ($30.b,S),Y		; 13 30
	sta [$BF.b]		; 87 BF
	and [$9A.b],Y		; 37 9A
	lda ($CF.b),Y		; B1 CF
	rts		; 60

	lda $223C60.l		; AF 60 3C 22
	lda ($C7.b),Y		; B1 C7
	brk $CF.b		; 00 CF
	txs		; 9A
	lda ($9F.b,S),Y		; B3 9F
	ror $FE50.w		; 6E 50 FE
	cpx #$30.b		; E0 30
	sty $C9.b		; 84 C9
	rts		; 60

	inc $9A8F.w,X		; FE 8F 9A
	lsr $B9.b,X		; 56 B9
	sbc $4F.b,X		; F5 4F
	bpl -45.b		; 10 D3
	and $DA34DE.l		; 2F DE 34 DA
	ora ($3F.b)		; 12 3F
	ora $1F.b,S		; 03 1F
	asl A		; 0A
	ora $A95C02.l,X		; 1F 02 5C A9
	jsr ($0609.w,X)		; FC 09 06
	jmp ($FEF1.w)		; 6C F1 FE
	sbc ($F8.b)		; F2 F8
	cop $AA.b		; 02 AA
	bmi  -4.b		; 30 FC
	sbc ($D5.b)		; F2 D5
	sed		; F8
	ora #$42.b		; 09 42
	cmp #$C0.b		; C9 C0
	jsr ($80CC.w,X)		; FC CC 80
	ora #$FE.b		; 09 FE
	bpl  48.b		; 10 30
	cpx $8493.w		; EC 93 84
	ora [$20.b]		; 07 20
	inc $2FFC.w,X		; FE FC 2F
	rts		; 60

	ora $04BB40.l		; 0F 40 BB 04
	and $FE94B6.l,X		; 3F B6 94 FE
	lsr $3D.b,X		; 56 3D
	jsr $1C9B.w		; 20 9B 1C
	bne  24.b		; D0 18
	ldy $FE97.w,X		; BC 97 FE
	cpy #$10.b		; C0 10
	ldy #$30.b		; A0 30
	sta $40F1.w		; 8D F1 40
	cmp $03.b,S		; C3 03
	sec		; 38
	ply		; 7A
	jsr ($FEE1.w,X)		; FC E1 FE
	inc $ECC4.w,X		; FE C4 EC
	brk $F9.b		; 00 F9
	php		; 08
	phd		; 0B
	clc		; 18
	inc $0803.w,X		; FE 03 08
	lda $05AA.w,X		; BD AA 05
	tsb $798D.w		; 0C 8D 79
	cop $73.b		; 02 73
	bvs   4.b		; 70 04
	bne   9.b		; D0 09
	inc $9A.b,X		; F6 9A
	and ($DC.b,X)		; 21 DC
	ora $FEDB.w,X		; 1D DB FE
	ora $26.b,X		; 15 26
	cmp $F8FF.w,X		; DD FF F8
	ora $86FD.w		; 0D FD 86
	cmp [$C0.b]		; C7 C0
	ora ($01.b,X)		; 01 01
	trb $E1B2.w		; 1C B2 E1
	inx		; E8
	sbc ($A0.b)		; F2 A0
	asl $4AFA.w		; 0E FA 4A
	sec		; 38
	pla		; 68
	plb		; AB
	inc $8FFE.w,X		; FE FE 8F
	stx $7FF0.w		; 8E F0 7F
	inc $B0FA.w,X		; FE FA B0
	beq -90.b		; F0 A6
	cpx #$A7.b		; E0 A7
	cpx #$27.b		; E0 27
	cpx #$2F.b		; E0 2F
	cpx #$8E.b		; E0 8E
	sbc $FF.b,X		; F5 FF
	jmp ($1BF1.w)		; 6C F1 1B
	sta ($5E.b)		; 92 5E
	inc $99F0.w,X		; FE F0 99
	sbc $73.b,S		; E3 73
	and $36.b		; 25 36
	plp		; 28
	bit $2000.w		; 2C 00 20
	lda #$BF.b		; A9 BF
	cpy #$60.b		; C0 60
	inc $4C83.w,X		; FE 83 4C
	lda $0FCF.w,Y		; B9 CF 0F
	cmp $0CCC1F.l,X		; DF 1F CC 0C
	ora $FC0955.l,X		; 1F 55 09 FC
	beq -16.b		; F0 F0
	jsr $20B0.w		; 20 B0 20
	pha		; 48
	and [$7F.b],Y		; 37 7F
.ACCU 16
.INDEX 16
	rep #$73		; C2 73
	bcs 113.b		; B0 71
	and [$5C.b],Y		; 37 5C
	inc $F5.b,X		; F6 F5
	and $FEFE80.l,X		; 3F 80 FE FE
	rol $81FC.w,X		; 3E FC 81
	rol $6681.w,X		; 3E 81 66
	beq   9.b		; F0 09
	dey		; 88
	sbc $FE7EFE.l,X		; FF FE 7E FE
	sta $401F40.l		; 8F 40 1F 40
	stz $1FC0.w,X		; 9E C0 1F
	sbc $5EC103.l,X		; FF 03 C1 5E
	cmp ($1C.b,X)		; C1 1C
	sta ($1E.b,X)		; 81 1E
	sta $9C.b,S		; 83 9C
	.db $82, $BF, $00		; 82 BF 00
	inc $4401.w,X		; FE 01 44
	cli		; 58
	inc $7CE4.w,X		; FE E4 7C
	inc $ED55.w,X		; FE 55 ED
	ldx #$0DC8.w		; A2 C8 0D
	.db $82, $78, $12		; 82 78 12
	adc #$F7C1.w		; 69 C1 F7
	sbc ($6B.b,S),Y		; F3 6B
	cmp [$FB.b]		; C7 FB
	beq  14.b		; F0 0E
	ldy #$997D.w		; A0 7D 99
	sbc ($FF.b,X)		; E1 FF
	rep #$40		; C2 40
	cpx $04.b		; E4 04
	sbc $7D00.w,X		; FD 00 7D
	ora $18.b,S		; 03 18
	ora $CB.b		; 05 CB
	sta $53.b,S		; 83 53
	eor ($67.b,X)		; 41 67
	sed		; F8
	ora ($47.b,X)		; 01 47
	ora $1B.b,S		; 03 1B
	cmp $82.b,X		; D5 82
	asl $3680.w		; 0E 80 36
	adc ($FF.b),Y		; 71 FF
	sbc $F134.w		; ED 34 F1
	ply		; 7A
	xce		; FB
	sed		; F8
	dec A		; 3A
	tya		; 98
	jmp ($7C80.w,X)		; 7C 80 7C
	cpy $E9.b		; C4 E9
	bvs -109.b		; 70 93
	cmp #$7F58.w		; C9 58 7F
	eor $FC.b,X		; 55 FC
	trb $FC3C.w		; 1C 3C FC
	asl $0EFE.w,X		; 1E FE 0E
	inc $8B7B.w,X		; FE 7B 8B
	sbc $8A1BF8.l,X		; FF F8 1B 8A
	pea $F8FE.w		; F4 FE F8
	ora #$CA61.w		; 09 61 CA
	sbc $3A0EF8.l,X		; FF F8 0E 3A
	adc $7EFE01.l,X		; 7F 01 FE 7E
	cmp $72.b,X		; D5 72
	inc $D47C.w,X		; FE 7C D4
	sta ($94.b,X)		; 81 94
	tsx		; BA
	inc $09F8.w,X		; FE F8 09
	and $FEF18C.l		; 2F 8C F1 FE
	rts		; 60

	eor $D5.b,X		; 55 D5
	inc $E4FC.w,X		; FE FC E4
	inx		; E8
	ora #$FCFE.w		; 09 FE FC
	pla		; 68
	cpx $EB66.w		; EC 66 EB
	sed		; F8
	sbc ($F1.b,S),Y		; F3 F1
	beq  28.b		; F0 1C
	bra  -8.b		; 80 F8
	ora ($3F.b)		; 12 3F
	inc $813E.w,X		; FE 3E 81
	bit $3E81.w,X		; 3C 81 3E
	sta $3C.b,S		; 83 3C
	inc $8338.w,X		; FE 38 83
	clv		; B8
	sta $98.b,S		; 83 98
	nop		; EA
	sbc $F28C83.l,X		; FF 83 8C F2
	tay		; A8
	sbc ($FE.b)		; F2 FE
	inc $8298.w,X		; FE 98 82
	sty $8886.w		; 8C 86 88
	sty $18.b		; 84 18
	tsb $30.b		; 04 30
	and $700444.l,X		; 3F 44 04 70
	tsb $78.b		; 04 78
	tsb $0870.w		; 0C 70 08
	inc $FE78.w		; EE 78 FE
	eor ($87.b),Y		; 51 87
	adc [$A1.b],Y		; 77 A1
	inc $E200.w,X		; FE 00 E2
	sta ($EE.b)		; 92 EE
	asl $01.b		; 06 01
	inc $9E83.w,X		; FE 83 9E
	asl A		; 0A
	ora $0E.b		; 05 0E
	ldy #$BB0A.w		; A0 0A BB
	inc $07FF.w,X		; FE FF 07
	trb $FEE0.w		; 1C E0 FE
	ora $E814FE.l		; 0F FE 14 E8
	sec		; 38
	cpy #$D028.w		; C0 28 D0
	bmi -64.b		; 30 C0
	bvc -96.b		; 50 A0
	asl $AA.b		; 06 AA
	adc $FEC52D.l		; 6F 2D C5 FE
	tsa		; 3B
	cpx $6A08.w		; EC 08 6A
	ora [$A9.b],Y		; 17 A9
	cop $06.b		; 02 06
	asl $0E.b		; 06 0E
	cop $59.b		; 02 59
	php		; 08
	ora ($3E.b),Y		; 11 3E
	eor $F8.b,X		; 55 F8
	phd		; 0B
	cmp ($7E.b,X)		; C1 7E
	ora ($7E.b,X)		; 01 7E
	ora $7C.b,S		; 03 7C
	cop $0C.b		; 02 0C
	ora $0278FE.l		; 0F FE 78 02
	ror $0C08.w,X		; 7E 08 0C
	bpl  24.b		; 10 18
	ora ($C1.b)		; 12 C1
	cmp ($F2.b,X)		; C1 F2
	ply		; 7A
	inc $BFBB.w,X		; FE BB BF
	rol $FF.b		; 26 FF
	eor ($60.b,S),Y		; 53 60
	ora [$41.b]		; 07 41
	asl $0C41.w		; 0E 41 0C
	eor ($1E.b,X)		; 41 1E
	eor $1C.b,S		; 43 1C
	.db $42, $FE		; 42 FE
	ora $E4AAA1.l,X		; 1F A1 AA E4
	xba		; EB
	inc $FE3C.w,X		; FE 3C FE
	sbc $F48A.w,X		; FD 8A F4
	brk $EB.b		; 00 EB
	cmp $3FFED1.l		; CF D1 FE 3F
	adc ($99.b,X)		; 61 99
	adc [$F0.b]		; 67 F0
	asl $8390.w		; 0E 90 83
	bmi   3.b		; 30 03
	bvs   2.b		; 70 02
	sed		; F8
	cop $FC.b		; 02 FC
	asl $F8.b		; 06 F8
	tsb $81.b		; 04 81
	stx $FE.b		; 86 FE
	jsr $FEA2.w		; 20 A2 FE
	trb $88FD.w		; 1C FD 88
	inc $D3AE.w,X		; FE AE D3
	bmi  -2.b		; 30 FE
	sbc $E88810.l,X		; FF 10 88 E8
	sty $FE.b		; 84 FE
	sed		; F8
	ora #$030C.w		; 09 0C 03
	inc $C314.w,X		; FE 14 C3
	ldy #$190B.w		; A0 0B 19
	asl $FE.b		; 06 FE
	bpl  15.b		; 10 0F
	jsr ($F7EF.w,X)		; FC EF F7
	ora $75FAD5.l		; 0F D5 FA 75
	rts		; 60

	bra -96.b		; 80 A0
	rti		; 40

	tas		; 1B
	rti		; 40

	pla		; 68
	sbc $F6.b,X		; F5 F6
	tad		; 5B
	adc ($F0.b,X)		; 61 F0
	tsb $AB87.w		; 0C 87 AB
	ora #$0318.w		; 09 18 03
	bpl  -2.b		; 10 FE
	ora ($30.b,S),Y		; 13 30
	ora [$FA.b],Y		; 17 FA
	dec $75BF.w,X		; DE BF 75
	phy		; 5A
	eor ($9E.b,X)		; 41 9E
	inc $06.b		; E6 06
.ACCU 8
.INDEX 8
	sep #$7C		; E2 7C
	cmp $DC20.w,Y		; D9 20 DC
	sta ($7C.b),Y		; 91 7C
	cmp $06B7.w,Y		; D9 B7 06
	inc $FF.b		; E6 FF
	and ($A9.b,S),Y		; 33 A9
	ldx $18.b,Y		; B6 18
	.db $42, $7C		; 42 7C
	asl $5E.b		; 06 5E
	jsr $3C4E.w		; 20 4E 3C
	lsr $FE.b		; 46 FE
	rti		; 40

	sta $0EF8.w		; 8D F8 0E
	clc		; 18
	ror $3579.w,X		; 7E 79 35
	adc #$14.b		; 69 14
	bvc  86.b		; 50 56
	cop $FA.b		; 02 FA
	bpl 108.b		; 10 6C
	cmp ($FE.b),Y		; D1 FE
	cmp ($CB.b),Y		; D1 CB
	inc $BFF2.w,X		; FE F2 BF
	lda $0EE871.l,X		; BF 71 E8 0E
	beq   4.b		; F0 04
	sbc ($04.b),Y		; F1 04
	sbc $A304.w,Y		; F9 04 A3
	sbc ($08.b,X)		; E1 08
	cpx #$08.b		; E0 08
	beq  24.b		; F0 18
	cop $FC.b		; 02 FC
	adc $F6.b,S		; 63 F6
	inc $94FC.w,X		; FE FC 94
	asl $0890.w		; 0E 90 08
	bcs   8.b		; B0 08
	bvs  -1.b		; 70 FF
	dec $84.b		; C6 84
	sed		; F8
	sty $B8.b		; 84 B8
.INDEX 16
	rep #$DC		; C2 DC
	.db $62, $AC, $51		; 62 AC 51
	asl A		; 0A
	jsr ($FEB8.w,X)		; FC B8 FE
	inc $DCFB.w,X		; FE FB DC
	jsl $005669.l		; 22 69 56 00
	and [$18.b]		; 27 18
	and $3612.w		; 2D 12 36
	php		; 08
	adc ($E2.b)		; 72 E2
	ror $08.b,X		; 76 08
	ldx $7B.b		; A6 7B
	sbc $E258.w		; ED 58 E2
	trb $D9BF.w		; 1C BF D9
	tsb $1400.w		; 0C 00 14
	ora $89.b,S		; 03 89
	sta ($F4.b,X)		; 81 F4
	sei		; 78
	sty $F1.b		; 84 F1
	ora [$FF.b]		; 07 FF
	adc [$04.b],Y		; 77 04
	tsb $1F01.w		; 0C 01 1F
	php		; 08
	clc		; 18
	bit $17.b,X		; 34 17
	dec A		; 3A
	asl $153D.w,X		; 1E 3D 15
	phy		; 5A
	ldx #$030C.w		; A2 0C 03
	sed		; F8
	cmp $28.b,S		; C3 28
	clc		; 18
	ora [$17.b]		; 07 17
	php		; 08
	asl $1501.w,X		; 1E 01 15
	ror $FFE3.w		; 6E E3 FF
	sbc $239F83.l,X		; FF 83 9F 23
	sbc $CF.b,S		; E3 CF
	sbc $8F7707.l		; EF 07 77 8F
	sta $A54242.l,X		; 9F 42 42 A5
	and $E3.b		; 25 E3
	brk $FF.b		; 00 FF
	lda $E3609F.l,X		; BF 9F 60 E3
	jmp.w [$30EF]		; DC EF 30
	adc [$F8.b],Y		; 77 F8
	sta $BD4270.l,X		; 9F 70 42 BD
	and $5A.b		; 25 5A
	rts		; 60

	sbc $616F85.l,X		; FF 85 6F 61
	sed		; F8
	sbc $DBFFFB.l,X		; FF FB FF DB
	sbc [$FD.b],Y		; F7 FD
	sbc $7D.b,S		; E3 7D
	dey		; 88
	lda #$62.b		; A9 62
	.db $82, $82, $FC		; 82 82 FC
	sbc $5D.b,S		; E3 5D
	dec $01.b,X		; D6 01
	eor [$8D.b],Y		; 57 8D
	eor $FE.b		; 45 FE
	ldx #$DEAA.w		; A2 AA DE
	bit #$74.b		; 89 74
	jmp $F34044.l		; 5C 44 40 F3
	dey		; 88
	dec $E2E6.w,X		; DE E6 E2
	wai		; CB
	sbc ($FF.b),Y		; F1 FF
	sbc $11D080.l,X		; FF 80 D0 11
	and $0D3F16.l		; 2F 16 3F 0D
	dec A		; 3A
	tsb $0B1F.w		; 0C 1F 0B
	asl $0B.b,X		; 16 0B
	ora $0A.b,X		; 15 0A
	ora [$09.b]		; 07 09
	cop $85.b		; 02 85
	lda ($05.b,X)		; A1 05
	asl $E0.b,X		; 16 E0
	adc #$51.b		; 69 51
	phd		; 0B
	brk $FE.b		; 00 FE
	asl A		; 0A
	sbc $EB73FF.l,X		; FF FF 73 EB
	adc $256F4E.l		; 6F 4E 6F 25
	dec $FD8A.w,X		; DE 8A FD
	pla		; 68
	jmp.w [$B963]		; DC 63 B9
	jmp $30C9.w		; 4C C9 30
	sed		; F8
	adc $4E17EF.l,X		; 7F EF 17 4E
	bcc  36.b		; 90 24
	bcc -119.b		; 90 89
	jsr $7C6B.w		; 20 6B 7C
	sta $0F46.w,Y		; 99 46 0F
	asl $76.b		; 06 76
	adc $FFEB.w,Y		; 79 EB FF
	sbc $4FF53F.l,X		; FF 3F F5 4F
	bit $9C35.w		; 2C 35 9C
	sbc $79.b		; E5 79
	sta $1BF7.w		; 8D F7 1B
	asl $F5F3.w		; 0E F3 F5
	dec $FF3F.w		; CE 3F FF
	sbc [$04.b],Y		; F7 04
	ora $03C502.l		; 0F 02 C5 03
	ora $03.b		; 05 03
	ora $1B62.w		; 0D 62 1B
	cpx #$FF13.w		; E0 13 FF
	sbc #$B8.b		; E9 B8
	jsr ($FFFF.w,X)		; FC FF FF
	clc		; 18
	jsr ($7C58.w,X)		; FC 58 7C
	cli		; 58
	jmp $387C78.l		; 5C 78 7C 38
	jmp ($FC98.w,X)		; 7C 98 FC
	bra  -4.b		; 80 FC
	jsr ($5F40.w,X)		; FC 40 5F
	rti		; 40

	jsr ($7CE0.w,X)		; FC E0 7C
	ldy #$A05C.w		; A0 5C A0
	lda $D9.b,X		; B5 D9
	sbc ($34.b,S),Y		; F3 34
	cmp $BF.b,X		; D5 BF
	sbc $400EF8.l,X		; FF F8 0E 40
	bvc  16.b		; 50 10
	sbc [$3C.b]		; E7 3C
	pld		; 2B
	sbc ($14.b),Y		; F1 14
	php		; 08
	tas		; 1B
	tsb $FC.b		; 04 FC
	dec $C6.b		; C6 C6
	adc $38D3DF.l		; 6F DF D3 38
	phd		; 0B
	tsb $03.b		; 04 03
	dec $39.b		; C6 39
	and [$ED.b],Y		; 37 ED
	tas		; 1B
	lda $9EA1.w,X		; BD A1 9E
	bra  -1.b		; 80 FF
	php		; 08
	ldy #$FF6E.w		; A0 6E FF
	tax		; AA
	ora ($01.b,X)		; 01 01
	php		; 08
	ora ($0C.b,X)		; 01 0C
	bra   3.b		; 80 03
	tsb $17F0.w		; 0C F0 17
	sbc $E97D.w,X		; FD 7D E9
	cmp [$93.b]		; C7 93
	ror A		; 6A
	pea $FCF0.w		; F4 F0 FC
	dec $C6F2.w		; CE F2 C6
	jmp.w [$4928]		; DC 28 49
	bra  -4.b		; 80 FC
	sta ($69.b,S),Y		; 93 69
	beq -64.b		; F0 C0
	and $05.b		; 25 05
	beq  96.b		; F0 60
	trb $49.b		; 14 49
	cmp $FE.b,X		; D5 FE
	jsr ($EA96.w,X)		; FC 96 EA
	cmp $66FD41.l		; CF 41 FD 66
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	tsx		; BA
	inc $E2C1.w		; EE C1 E2
	cpy #$E8.b		; C0 E8
	ora $A978.w		; 0D 78 A9
	ror $FF01.w		; 6E 01 FF
	sbc $3FA18F.l,X		; FF 8F A1 3F
	adc ($9F.b,X)		; 61 9F
	and ($DE.b,X)		; 21 DE
	brk $C7.b		; 00 C7
	bmi -45.b		; 30 D3
	sec		; 38
	ldx $A0.b		; A6 A0
	sta $FF6F81.l,X		; 9F 81 6F FF
	lsr $9EE1.w,X		; 5E E1 9E
	eor ($DE.b,X)		; 41 DE
	rol $D9.b,X		; 36 D9
	cmp $D2C1B6.l		; CF B6 C1 D2
	and $D3BC.w		; 2D BC D3
	cld		; D8
	adc [$FF.b]		; 67 FF
	sbc $5202F5.l,X		; FF F5 02 52
	and ($A6.b),Y		; 31 A6
	ldx $CA.b		; A6 CA
	php		; 08
	dec $0D0C.w		; CE 0C 0D
	brk $43.b		; 00 43
	cpy #$47.b		; C0 47
	rts		; 60

	sbc $202AFF.l,X		; FF FF 2A 20
	ldy $59B0.w		; AC B0 59
	rti		; 40

	sbc [$00.b],Y		; F7 00
	sbc ($00.b,S),Y		; F3 00
	cpy $B8.b		; C4 B8
	ldy $A850.w		; AC 50 A8
	bvc -31.b		; 50 E1
	sei		; 78
	sec		; 38
	cpy #$FE.b		; C0 FE
	bvs -128.b		; 70 80
	rts		; 60

	inc $00B8.w,X		; FE B8 00
	bvc  36.b		; 50 24
	sbc [$FE.b],Y		; F7 FE
	eor ($B8.b),Y		; 51 B8
	eor $06.b		; 45 06
	tsb $FD.b		; 04 FD
	adc #$02.b		; 69 02
	phd		; 0B
	adc $1E0C7B.l,X		; 7F 7B 0C 1E
	ora #$1D.b		; 09 1D
	php		; 08
	ora $1F06.w,X		; 1D 06 1F
	tay		; A8
	mvp $AD,$03		; 44 03 AD
	sbc #$09.b		; E9 09
	cop $08.b		; 02 08
	lda ($FF.b,X)		; A1 FF
	dec $99.b		; C6 99
	sbc $69AC36.l,X		; FF 36 AC 69
	ror $9400.w,X		; 7E 00 94
	rti		; 40

	plp		; 28
	sta ($45.b,X)		; 81 45
	ora $0A171C.l,X		; 1F 1C 17 0A
	rol $FF00.w		; 2E 00 FF
	bvs -48.b		; 70 D0
	cmp $BF40E9.l,X		; DF E9 40 BF
	dec $EBFF.w,X		; DE FF EB
	trb $E8.b		; 14 E8
	ora #$D0.b		; 09 D0
	adc ($92.b)		; 72 92
	tya		; 98
	clc		; 18
	asl $0E.b		; 06 0E
	ora ($20.b,S),Y		; 13 20
	and #$E0.b		; 29 E0
	sbc $6049EB.l		; EF EB 49 60
	sta ($24.b,X)		; 81 24
	ora ($23.b,X)		; 01 23
	cmp #$18.b		; C9 18
	sbc [$0E.b]		; E7 0E
	sbc ($21.b),Y		; F1 21
	cmp ($F1.b,X)		; C1 F1
	lda $E1C4.w,Y		; B9 C4 E1
	cmp $1B.b,S		; C3 1B
	brk $0E.b		; 00 0E
	beq  64.b		; F0 40
	adc $F43C20.l,X		; 7F 20 3C F4
	iny		; C8
	and $640FFC.l		; 2F FC 0F 64
	ora [$60.b]		; 07 60
	ora [$38.b]		; 07 38
	cmp #$0A.b		; C9 0A
	bra  35.b		; 80 23
	cpy $E700.w		; CC 00 E7
	ldx $45.b,Y		; B6 45
	php		; 08
	sbc [$E1.b]		; E7 E1
	asl $20.b		; 06 20
	mvp $36,$E0		; 44 E0 36
	sbc #$38.b		; E9 38
	sbc ($52.b,S),Y		; F3 52
	inc $41.b,X		; F6 41
	sbc $7408.w,X		; FD 08 74
	phx		; DA
	jmp ($79E2.w)		; 6C E2 79
	bit #$60.b		; 89 60
	txa		; 8A
	bvs  -8.b		; 70 F8
	bra  -8.b		; 80 F8
	lda $F82031.l		; AF 31 20 F8
	cpy #$F8.b		; C0 F8
	dey		; 88
	phy		; 5A
	adc $F29B.w,Y		; 79 9B F2
	jsr $90D5.w		; 20 D5 90
	dec $E1.b,X		; D6 E1
	inc $5AD0.w,X		; FE D0 5A
	adc $3906.w,Y		; 79 06 39
	ora $07.b		; 05 07
	rti		; 40

	ora $BF1D.w		; 0D 1D BF
	ora [$01.b]		; 07 01
	and $6D09.w,X		; 3D 09 6D
	ora ($67.b),Y		; 11 67
	and $E17C.w,X		; 3D 7C E1
	tsb $05.b		; 04 05
	ora $18FE.w		; 0D FE 18
	inc $133D.w,X		; FE 3D 13
	tas		; 1B
	sbc $FB3D19.l,X		; FF 19 3D FB
	sec		; 38
	adc [$B0.b]		; 67 B0
	sbc $803EBF.l,X		; FF BF 3E 80
	ora ($41.b),Y		; 11 41
	jsr $645F.w		; 20 5F 64
	tsb $3070.w		; 0C 70 30
	adc [$06.b],Y		; 77 06
	cmp [$00.b]		; C7 00
	eor $06FFBD.l		; 4F BD FF 06
	cmp #$BE.b		; C9 BE
	eor ($E9.b)		; 52 E9
	lda ($80.b,S),Y		; B3 80
	sta $D38955.l		; 8F 55 89 D3
	ora ($AF.b)		; 12 AF
	bmi  95.b		; 30 5F
	rts		; 60

	and $E017C3.l,X		; 3F C3 17 E0
	bne -53.b		; D0 CB
	tax		; AA
	jmp.w [$3E1D]		; DC 1D 3E
	ldx $06EC.w,Y		; BE EC 06
	sbc $FA.b,S		; E3 FA
	phy		; 5A
	sbc $C19C24.l,X		; FF 24 9C C1
	and $3F.b,S		; 23 3F
	eor $CE81FF.l		; 4F FF 81 CE
	pha		; 48
	sbc ($20.b)		; F2 20
	adc $B1.b,S		; 63 B1
	lda ($5F.b),Y		; B1 5F
	brk $30.b		; 00 30
	tsb $0CED.w		; 0C ED 0C
	cpx #$B1.b		; E0 B1
	tsb $0E.b		; 04 0E
	ora $0F.b		; 05 0F
	ora ($FA.b,X)		; 01 FA
	cmp ($E3.b,X)		; C1 E3
	sbc $BAFC.w,X		; FD FC BA
	tsb $04FE.w		; 0C FE 04
	ora ($05.b,X)		; 01 05
	sbc [$CF.b],Y		; F7 CF
	ora ($5A.b),Y		; 11 5A
	cpx #$1B.b		; E0 1B
	ora $ED33FE.l,X		; 1F FE 33 ED
	lsr $BF.b,X		; 56 BF
	bcs  15.b		; B0 0F
	ora $84.b,X		; 15 84
	pei ($7B.b)		; D4 7B
	clc		; 18
	ora ($A4.b),Y		; 11 A4
	sta [$FF.b]		; 87 FF
	cop $04.b		; 02 04
	and $02.b		; 25 02
	cmp ($40.b,S),Y		; D3 40
	rti		; 40

	eor [$40.b]		; 47 40
	tda		; 7B
	sed		; F8
	sbc [$78.b],Y		; F7 78
	sbc $2480FF.l,X		; FF FF 80 24
	brk $E4.b		; 00 E4
	php		; 08
	ldy $2D05.w		; AC 05 2D
	tsb $E9.b		; 04 E9
	lsr $7D.b,X		; 56 7D
	cmp #$3C.b		; C9 3C
	adc ($CC.b),Y		; 71 CC
	sbc $1BC0FB.l,X		; FF FB C0 1B
	brk $1B.b		; 00 1B
	dey		; 88
	eor ($05.b,S),Y		; 53 05
	cmp ($00.b)		; D2 00
	ora ($94.b)		; 12 94
	adc $F1.b,S		; 63 F1
	bra -62.b		; 80 C2
	.db $62, $FF, $FF		; 62 FF FF
	ora [$40.b]		; 07 40
	sta $08.b		; 85 08
	sta $A920.w		; 8D 20 A9
	txa		; 8A
	plb		; AB
	bit #$AB.b		; 89 AB
	trb $36.b		; 14 36
	clc		; 18
	rol $FF06.w,X		; 3E 06 FF
	lda $7A84F8.l,X		; BF F8 84 7A
	ora $2972.w		; 0D 72 29
	lsr $AB.b,X		; 56 AB
	mvn $54,$8B		; 54 8B 54
	trb $C9.b		; 14 C9
	trb $A0C1.w		; 1C C1 A0
	nop		; EA
	and ($75.b,S),Y		; 33 75
	lda $CC.b,S		; A3 CC
	lda #$0B.b		; A9 0B
	and $EC76.w,X		; 3D 76 EC
	ldx $4A.b,Y		; B6 4A
	tda		; 7B
	sbc #$E0.b		; E9 E0
	adc $C8FCBF.l,X		; 7F BF FC C8
	jsr ($FC70.w,X)		; FC 70 FC
	stz $FE.b		; 64 FE
	sei		; 78
	tsb $49.b		; 04 49
	bit $787E.w,X		; 3C 7E 78
	ora $1FF6C8.l,X		; 1F C8 F6 1F
	txa		; 8A
	xba		; EB
	stz $38DA.w		; 9C DA 38
	stz $9CD9.w		; 9C D9 9C
	brk $66.b		; 00 66
	ora $1867.w,Y		; 19 67 18
	phk		; 4B
	bit $FE.b,X		; 34 FE
	sbc $FC.b,S		; E3 FC
	ror A		; 6A
	and $04FF.w,X		; 3D FF 04
	sbc $007F10.l,X		; FF 10 7F 00
	and $3EFF.w,X		; 3D FF 3E
	sbc $343EFF.l,X		; FF FF 3E 34
	bit $3D11.w,X		; 3C 11 3D
	ora $4C1D.w,Y		; 19 1D 4C
	jmp $E62222.l		; 5C 22 22 E6
	rti		; 40

	cmp $A001.w,Y		; D9 01 A0
	bpl  -2.b		; 10 FE
	asl $E8.b		; 06 E8
	lda $6E07D0.l,X		; BF D0 07 6E
	ora ($F6.b),Y		; 11 F6
	and $0F39.w,X		; 3D 39 0F
	sbc ($01.b),Y		; F1 01
	adc [$07.b]		; 67 07
	eor $DF051F.l,X		; 5F 1F 05 DF
	sbc $FF9F8F.l,X		; FF 8F 9F FF
	sbc $733F03.l,X		; FF 03 3F 73
	bvs -33.b		; 70 DF
	cmp ($78.b,X)		; C1 78
	ora [$F0.b]		; 07 F0
	ora $780DFA.l		; 0F FA 0D 78
	lda $FF9D6A.l		; AF 6A 9D FF
	sbc $BC9A7C.l,X		; FF 7C 9A BC
	jsr ($E3E3.w,X)		; FC E3 E3
	txs		; 9A
	sta $EA0F09.l,X		; 9F 09 0F EA
	sbc $DAEFC9.l		; EF C9 EF DA
	cmp $DD1D87.l,X		; DF 87 1D DD
	dec $D0A0.w,X		; DE A0 D0
	stz $D0.b		; 64 D0
	inx		; E8
	ldy #$31.b		; A0 31
	sed		; F8
	bcc  30.b		; 90 1E
	phd		; 0B
	plx		; FA
	clv		; B8
	ldy #$30.b		; A0 30
	cpx #$54.b		; E0 54
	beq -57.b		; F0 C7
	cmp $750F.w,Y		; D9 0F 75
	jsr ($F890.w,X)		; FC 90 F8
	rti		; 40

	clv		; B8
	eor $C602.w		; 4D 02 C6
	dec $CB32.w		; CE 32 CB
	cop $0D.b		; 02 0D
	lda $C0B91D.l,X		; BF 1D B9 C0
	ora $0202.w		; 0D 02 02
	and $B84700.l		; 2F 00 47 B8
	eor ($10.b)		; 52 10
	sta $10E9.w		; 8D E9 10
	adc $5E20E0.l		; 6F E0 20 5E
	dey		; 88
	clc		; 18
	sbc $A6F430.l,X		; FF 30 F4 A6
	eor ($F4.b)		; 52 F4
	sbc $36FBFC.l,X		; FF FC FB 36
	sbc ($52.b),Y		; F1 52
	sbc [$F8.b]		; E7 F8
	and [$DB.b],Y		; 37 DB
	and $6181E6.l		; 2F E6 81 61
	bvs 127.b		; 70 7F
	sed		; F8
	cmp ($01.b,X)		; C1 01
	sep #$06		; E2 06
	sbc [$08.b]		; E7 08
	tax		; AA
	inx		; E8
	stz $A8A0.w		; 9C A0 A8
	inc A		; 1A
	bcc  -5.b		; 90 FB
	sbc $FE709F.l,X		; FF 9F 70 FE
	lsr $71.b,X		; 56 71
	sbc ($00.b,S),Y		; F3 00
	txy		; 9B
	rol $BC91.w,X		; 3E 91 BC
	ora $BC.b		; 05 BC
	eor #$F8.b		; 49 F8
	ora $FF.b,S		; 03 FF
	sbc $308370.l,X		; FF 70 83 30
	sta $70.b,S		; 83 70
	ora $D0.b,S		; 03 D0
	inc A		; 1A
	eor ($98.b,X)		; 41 98
	eor $14.b,S		; 43 14
	eor $48.b,S		; 43 48
	ora [$90.b]		; 07 90
	lda $D00FFA.l,X		; BF FA 0F D0
	ora $100FB0.l		; 0F B0 0F 10
	and $04D10A.l		; 2F 0A D1 04
	cmp ($04.b),Y		; D1 04
	lda ($10.b),Y		; B1 10
	bcc  24.b		; 90 18
	eor [$F7.b],Y		; 57 F7
	cpy #$08.b		; C0 08
	iny		; C8
	tsb $F1C9.w		; 0C C9 F1
	adc $E1.b,S		; 63 E1
	tad		; 5B
	sbc #$E0.b		; E9 E0
	bpl -88.b		; 10 A8
	sbc ($08.b),Y		; F1 08
	beq  -1.b		; F0 FF
	sbc $7E5FBC.l,X		; FF BC 5F 7E
	sta $BC0FFE.l		; 8F FE 0F BC
	eor $A6A754.l		; 4F 54 A7 A6
	eor [$73.b],Y		; 57 73
	tyx		; BB
	tsx		; BA
	tda		; 7B
	sbc $401CBF.l,X		; FF BF 1C 40
	tsb $0CC0.w		; 0C C0 0C
	ldy #$0E.b		; A0 0E
	rti		; 40

	asl $1EA8.w		; 0E A8 1E
	cli		; 58
	rol $7FBC.w,X		; 3E BC 7F
	stx $85.b		; 86 85
	cmp $FFFFB1.l,X		; DF B1 FF FF
	sta ($FE.b,X)		; 81 FE
	ora ($82.b,X)		; 01 82
	sbc ($B8.b)		; F2 B8
	ora $FF2A.w		; 0D 2A FF
	sbc $EC0976.l,X		; FF 76 09 EC
	eor ($FA.b,S),Y		; 53 FA
	adc $E9.b		; 65 E9
	ora [$F9.b]		; 07 F9
	eor [$79.b]		; 47 79
	lda [$65.b]		; A7 65
	sta $FF9FE5.l,X		; 9F E5 9F FF
	ora $183D3D.l,X		; 1F 3D 3D 18
	tad		; 5B
	ora $67.b,S		; 03 67
	ora ($17.b,S),Y		; 13 17
	phd		; 0B
	eor $93AF8B.l		; 4F 8B AF 93
	sta $FEFFFE.l,X		; 9F FE FF FE
	ror $7881.w,X		; 7E 81 78
	sta [$7C.b],Y		; 97 7C
	plb		; AB
	adc $8BF794.l,X		; 7F 94 F7 8B
	sbc [$8C.b],Y		; F7 8C
	sbc [$9A.b]		; E7 9A
	sbc $81FEF7.l,X		; FF F7 FE 81
	lda $9F0FBF.l,X		; BF BF 0F 9F
	sta [$AF.b]		; 87 AF
	lda $B7.b,S		; A3 B7
	clv		; B8
	tyx		; BB
	lda [$61.b],Y		; B7 61
	ldx $FF81.w,Y		; BE 81 FF
	sbc $5EF881.l,X		; FF 81 F8 5E
	cmp $D93E.w,Y		; D9 3E D9
	ldx $1AE5.w,Y		; BE E5 1A
	sbc $E106.w,Y		; F9 06 E1
	asl $16E3.w,X		; 1E E3 16
	ora $FF.b,S		; 03 FF
	sbc $DC9DF6.l,X		; FF F6 9D DC
	lda $3DBC.w,X		; BD BC 3D
	ldy $1C1D.w,X		; BC 1D 1C
	eor $C15C.w,Y		; 59 5C C1
	jmp.w [$3021]		; DC 21 30
	lda ($0B.b,X)		; A1 0B
	.db $82, $F0, $C0		; 82 F0 C0
	bpl  -2.b		; 10 FE
	jsr ($4040.w,X)		; FC 40 40
	tax		; AA
	inc $FF1E.w,X		; FE 1E FF
	.db $42, $AE		; 42 AE
	dec A		; 3A
	dec $0F04.w		; CE 04 0F
	ora [$FE.b]		; 07 FE
	ora $0D.b		; 05 0D
	trb $2C05.w		; 1C 05 2C
	ora $7F.b		; 05 7F
	clc		; 18
	dec A		; 3A
	ora [$54.b],Y		; 17 54
	ora ($06.b,S),Y		; 13 06
	cop $07.b		; 02 07
	tsb $FE.b		; 04 FE
	ora $06.b		; 05 06
	stx $FF.b		; 86 FF
	inc $1614.w,X		; FE 14 16
	sbc $382A.w,X		; FD 2A 38
	and $C05F80.l,X		; 3F 80 5F C0
.ACCU 8
	sep #$A3		; E2 A3
	sbc $E39CDB.l,X		; FF DB 9C E3
	eor #$99.b		; 49 99
	cpx #$CF.b		; E0 CF
	adc ($07.b),Y		; 71 07
	pea $7F3C.w		; F4 3C 7F
	cop $B1.b		; 02 B1
	stz $E9C7.w		; 9C C7 E9
	xce		; FB
	cmp $300669.l,X		; DF 69 06 30
	cpy #$F1.b		; C0 F1
	cpy $03.b		; C4 03
	iny		; C8
	ora [$53.b],Y		; 17 53
	adc $89DF21.l		; 6F 21 DF 89
	eor $99.b,S		; 43 99
	ora $CF4EDA.l,X		; 1F DA 4E CF
	inc A		; 1A
	ora $7F7C.w,X		; 1D 7C 7F
	tay		; A8
	sta $F3.b,S		; 83 F3
	cmp ($DD.b),Y		; D1 DD
	inc $FFB9.w,X		; FE B9 FF
	sbc $1F30CE.l,X		; FF CE 30 1F
	inc $7F.b		; E6 7F
	clv		; B8
	txy		; 9B
	cld		; D8
	bit #$C8.b		; 89 C8
	ora #$48.b		; 09 48
	and #$68.b		; 29 68
	eor $64.b		; 45 64
	sbc $B494FF.l,X		; FF FF 94 B4
	jsr $48B0.w		; 20 B0 48
	cld		; D8
	tya		; 98
	and [$88.b]		; 27 88
	and [$08.b],Y		; 37 08
	lda [$28.b],Y		; B7 28
	sta [$44.b],Y		; 97 44
	txy		; 9B
	sbc $4B94FF.l,X		; FF FF 94 4B
	jsr $484F.w		; 20 4F 48
	and [$C0.b]		; 27 C0
	tsb $F4.b		; 04 F4
	asl $E8.b,X		; 16 E8
	asl A		; 0A
	inx		; E8
	ora #$F4.b		; 09 F4
	tsb $FF.b		; 04 FF
	sbc $FB02FA.l,X		; FF FA 02 FB
	ora $7D.b,S		; 03 7D
	ora ($00.b,X)		; 01 00
	sed		; F8
	trb $E8.b		; 14 E8
	php		; 08
	pea $F608.w		; F4 08 F6
	tsb $FB.b		; 04 FB
	eor [$0B.b],Y		; 57 0B
	cop $FD.b		; 02 FD
	ora $FC.b,S		; 03 FC
	cmp ($D9.b)		; D2 D9
	lda ($E0.b),Y		; B1 E0
	ora #$40.b		; 09 40
	nop		; EA
	ldy #$95.b		; A0 95
	bpl  12.b		; 10 0C
	sbc $40ECFF.l,X		; FF FF EC 40
	tya		; 98
	sbc $7D5D.w,X		; FD 5D 7D
	rol $163E.w		; 2E 3E 16
	ora $152F0B.l,X		; 1F 0B 2F 15
	and [$02.b],Y		; 37 02
	tsa		; 3B
	sbc $3D01C3.l,X		; FF C3 01 3D
	adc $FEBFFE.l,X		; 7F FE BF FE
	eor $3F2F7F.l,X		; 5F 7F 2F 3F
	ora [$EE.b],Y		; 17 EE
	ora $15FFF7.l		; 0F F7 FF 15
	ora [$16.b]		; 07 16
	ora $1A.b,S		; 03 1A
	and $0282.w,Y		; 39 82 02
	bra   5.b		; 80 05
	sta ($02.b,X)		; 81 02
	plx		; FA
	xba		; EB
	inc $FD.b,X		; F6 FD
	xba		; EB
	xce		; FB
	inc $D846.w,X		; FE 46 D8
	lda ($EA.b)		; B2 EA
	cmp [$91.b],Y		; D7 91
	sta $85.b,S		; 83 85
	sbc $794AF8.l,X		; FF F8 4A 79
	sbc $FD.b		; E5 FD
	plb		; AB
	sbc $3B1DFF.l,X		; FF FF 1D 3B
	ora $BC8FD4.l		; 0F D4 8F BC
	and [$DF.b]		; 27 DF
	phk		; 4B
	adc $D4FE42.l		; 6F 42 FE D4
	sta ($BF.b,X)		; 81 BF
	tad		; 5B
	sbc $C95F1F.l,X		; FF 1F 5F C9
	cmp $44AF2D.l		; CF 2D AF 44
	adc [$23.b]		; 67 23
	rtl		; 6B

	txs		; 9A
	phx		; DA
	ora #$DD.b		; 09 DD
	rti		; 40

	inc $DAFF.w,X		; FE FF DA
	sbc $1DFFC3.l,X		; FF C3 FF 1D
	inc $F1EE.w,X		; FE EE F1
	adc ($80.b),Y		; 71 80
	cpx $45.b		; E4 45
	inx		; E8
	sta $FFFFE3.l		; 8F E3 FF FF
	sta $E3FFFC.l,X		; 9F FC FF E3
	sbc $F0FE1E.l,X		; FF 1E FE F0
	sbc ($8E.b),Y		; F1 8E
	stx $5F1A.w		; 8E 1A 5F
	eor ($DF.b),Y		; 51 DF
	eor [$FF.b]		; 47 FF
	sbc $F748DF.l,X		; FF DF 48 F7
	sta ($EF.b,S),Y		; 93 EF
	sbc ($0F.b),Y		; F1 0F
	bit $0F.b		; 24 0F
	pha		; 48
	ora $CADF24.l,X		; 1F 24 DF CA
	sbc $FFFFE4.l,X		; FF E4 FF FF
	sbc $C3F360.l,X		; FF 60 F3 C3
	sbc [$05.b]		; E7 05
	ora $A9DFD6.l		; 0F D6 DF A9
	lda $EADF45.l,X		; BF 45 DF EA
	sbc $5FEAE5.l,X		; FF E5 EA 5F
	sbc $82D973.l,X		; FF 73 D9 82
	lda ($42.b,X)		; A1 42
	ora $A1A0.w,Y		; 19 A0 A1
	ldy #$49.b		; A0 49
	ror $DF.b		; 66 DF
	cmp $31C1FD.l		; CF FD C1 31
	inc $D213.w,X		; FE 13 D2
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $633A7D.l,X		; FF 7D 3A 63
	sbc $B820FF.l,X		; FF FF 20 B8
	and $A3.b		; 25 A3
	and #$81.b		; 29 81
	php		; 08
	stz $08.b,X		; 74 08
	pla		; 68
	adc $DF.b		; 65 DF
	jmp $3801.w		; 4C 01 38
	ora $FFFF.w,X		; 1D FF FF
	bit $6240.w,X		; 3C 40 62
	eor ($77.b),Y		; 51 77
	bvs 119.b		; 70 77
	bra -121.b		; 80 87
	bcc -14.b		; 90 F2
	bit $8B6C.w		; 2C 6C 8B
	tsa		; 3B
	ora [$FF.b],Y		; 17 FF
	sbc $FF6077.l,X		; FF 77 60 FF
	jmp ($0783.w,X)		; 7C 83 07
	sta ($B9.b,X)		; 81 B9
	sec		; 38
	dec $260E.w		; CE 0E 26
	asl $CB.b		; 06 CB
	ora $97.b		; 05 97
	sbc $780EFF.l,X		; FF FF 0E 78
	clc		; 18
	ora [$07.b]		; 07 07
	adc $4679.w,Y		; 79 79 46
	ror $3F31.w,X		; 7E 31 3F
	cmp $F0DF.w,Y		; D9 DF F0
	adc $FFFF04.l,X		; 7F 04 FF FF
	inc $8968.w,X		; FE 68 89
	lda $CA.b,S		; A3 CA
	cpy $E4.b		; C4 E4
	wai		; CB
	sbc $C4.b,S		; E3 C4
	ror $C4.b		; 66 C4
	pla		; 68
	sei		; 78
	cpy #$87.b		; C0 87
	plx		; FA
	sbc $6CE007.l,X		; FF 07 E0 6C
	inc $7A.b,X		; F6 7A
	adc $5C547E.l,X		; 7F 7E 54 5C
	plp		; 28
	bit $A622.w		; 2C 22 A6
	trb $16.b		; 14 16
	cmp ($FF.b),Y		; D1 FF
	sbc $9352D3.l,X		; FF D3 52 93
	clc		; 18
	ora $7958.w,Y		; 19 58 79
	pei ($A3.b)		; D4 A3
	inx		; E8
	cmp ($E2.b,S),Y		; D3 E2
	cmp $E9F4.w,Y		; D9 F4 E9
	sbc ($7F.b),Y		; F1 7F
	and $ECF2EC.l		; 2F EC F2 EC
	sed		; F8
	inc $99.b		; E6 99
	asl $7C.b		; 06 7C
	jmp $001E41.l		; 5C 41 1E 00
	inc A		; 1A
	php		; 08
	adc $5AFC.w,Y		; 79 FC 5A
	inc $8084.w,X		; FE 84 80
	tsb $80.b		; 04 80
	ora ($FE.b,X)		; 01 FE
	lsr $FED2.w,X		; 5E D2 FE
	jsr ($FB80.w,X)		; FC 80 FB
	sta $B0FF.w,Y		; 99 FF B0
	cmp ($B1.b,X)		; C1 B1
	bne  32.b		; D0 20
	beq -96.b		; F0 A0
	inx		; E8
	bpl 120.b		; 10 78
	inc $7C48.w,X		; FE 48 7C
	sbc $816FFF.l,X		; FF FF 6F 81
	rti		; 40

	rti		; 40

	jsr $0060.w		; 20 60 00
	ldy #$10.b		; A0 10
	bmi -128.b		; 30 80
	bvc -128.b		; 50 80
	cli		; 58
	bra  40.b		; 80 28
	cpy #$3B.b		; C0 3B
	tsb $3E16.w		; 0C 16 3E
	inc A		; 1A
	nop		; EA
	sta ($13.b,X)		; 81 13
	and $7F38FA.l,X		; 3F FA 38 7F
	eor $1AFEF0.l,X		; 5F F0 FE 1A
	adc $130113.l,X		; 7F 13 01 13
	brk $F1.b		; 00 F1
	bcs  -2.b		; B0 FE
	jsr ($0038.w,X)		; FC 38 00
	adc $FD33DF.l,X		; 7F DF 33 FD
	ora $F9.b		; 05 F9
	ora [$83.b]		; 07 83
	ora $81.b,S		; 03 81
	lsr $78E6.w		; 4E E6 78
	sbc $7B02.w,X		; FD 02 7B
	beq -104.b		; F0 98
	phd		; 0B
	ora $FF983E.l,X		; 1F 3E 98 FF
	rol $1FFF.w		; 2E FF 1F
	sbc $7F184D.l,X		; FF 4D 18 7F
	sta ($7E.b,X)		; 81 7E
	dey		; 88
	cpx $508F.w		; EC 8F 50
	phd		; 0B
	trb $7231.w		; 1C 31 72
	sbc $9FFFA7.l,X		; FF A7 FF 9F
	sbc $FE3F27.l,X		; FF 27 3F FE
	.db $82, $30, $3B		; 82 30 3B
	ora $FFBEFF.l		; 0F FF BE FF
	trb $A3FB.w		; 1C FB A3
	jmp $07E417.l		; 5C 17 E4 07
	sbc ($F7.b)		; F2 F7
	stx $F3.b		; 86 F3
	.db $82, $D4, $23		; 82 D4 23
	ply		; 7A
	sbc ($0B.b)		; F2 0B
	sbc $69FFFF.l		; EF FF FF 69
	sbc $81EF6D.l		; EF 6D EF 81
	sbc $8BE31C.l,X		; FF 1C E3 8B
	sei		; 78
	lsr $C68C.w		; 4E 8C C6
	ldy #$B8.b		; A0 B8
	bra  15.b		; 80 0F
	sbc $F058F0.l,X		; FF F0 58 F0
	tya		; 98
	sbc ($D2.b,S),Y		; F3 D2
	sbc ($84.b,S),Y		; F3 84
	jsr ($BC30.w,X)		; FC 30 BC
	clc		; 18
	clv		; B8
	inc $40AA.w,X		; FE AA 40
	sta ($BA.b)		; 92 BA
	bra -113.b		; 80 8F
	sbc $061F60.l,X		; FF 60 1F 06
	txa		; 8A
	ldy #$0A.b		; A0 0A
	inx		; E8
	pea $5159.w		; F4 59 51
	beq  -1.b		; F0 FF
	sbc $05AEFD.l,X		; FF FD AE 05
	cld		; D8
	ora $1EDE.w		; 0D DE 1E
	ora $030F07.l,X		; 1F 07 0F 03
	and $FD6F0F.l		; 2F 0F 6F FD
	and [$07.b]		; 27 07
	and [$9E.b],Y		; 37 9E
	stz $F268.w,X		; 9E 68 F2
	sbc $96713A.l		; EF 3A 71 96
	stz $A5.b		; 64 A5
	bit $9B.b		; 24 9B
	clc		; 18
	xce		; FB
	sbc $C4084B.l,X		; FF 4B 08 C4
	inc $71.b		; E6 71
	xce		; FB
	pha		; 48
	jsr ($F8B2.w,X)		; FC B2 F8
	stx $7E5A.w		; 8E 5A 7E
	stz $7C.b		; 64 7C
	ldy $FF.b,X		; B4 FF
	sbc $3B3BBC.l,X		; FF BC 3B 3B
	eor [$57.b],Y		; 57 57
	tsb $4C.b		; 04 4C
	sta $B3.b,S		; 83 B3
	sta $E0538F.l		; 8F 8F 53 E0
	ora [$E0.b],Y		; 17 E0
	and [$FF.b],Y		; 37 FF
	adc $C0.b,S		; 63 C0
	cmp $08.b,S		; C3 08
	sta [$0C.b]		; 87 0C
	lda $2C.b,S		; A3 2C
	eor $8C.b,S		; 43 8C
	eor ($9C.b,S),Y		; 53 9C
	adc $F8.b		; 65 F8
	sed		; F8
	cmp $FE.b,S		; C3 FE
	adc [$70.b],Y		; 77 70
	eor $70.b,S		; 43 70
	sbc $D0.b,S		; E3 D0
	sbc $75.b,S		; E3 75
	cpx #$8F.b		; E0 8F
	ora $1C3919.l		; 0F 19 39 1C
	bit $FEAC.w,X		; 3C AC FE
	cpy $CE1C.w		; CC 1C CE
	asl $7C7F.w,X		; 1E 7F 7C
	inc $1E8E.w,X		; FE 8E 1E
	cmp $DC06.w,Y		; D9 06 DC
	ora $CC.b,S		; 03 CC
	inc $03EC.w,X		; FE EC 03
	inc $D201.w		; EE 01 D2
	sbc $FE.b,S		; E3 FE
	adc $A9.b,S		; 63 A9
	inx		; E8
	lda ($21.b,S),Y		; B3 21
	rts		; 60

	ora ($FE.b,X)		; 01 FE
	eor $83.b,S		; 43 83
	eor $60.b,S		; 43 60
	rti		; 40

	and $9271FE.l,X		; 3F FE 71 92
	jsr $FE9F.w		; 20 9F FE
	rti		; 40

	jsr ($FEC3.w,X)		; FC C3 FE
	jsr $003C.w		; 20 3C 00
	trb $1C20.w		; 1C 20 1C
	bmi  -4.b		; 30 FC
	tsb $F57B.w		; 0C 7B F5
	ldy #$8C.b		; A0 8C
	clv		; B8
	cpx #$29.b		; E0 29
	plp		; 28
	cpy #$08.b		; C0 08
	stx $D9.b		; 86 D9
	sty $DA.b		; 84 DA
	cld		; D8
	eor ($70.b),Y		; 51 70
	bra  67.b		; 80 43
	plx		; FA
	sei		; 78
	clc		; 18
	ror $30FE.w,X		; 7E FE 30
	inc $787C.w,X		; FE 7C 78
	jsr ($D728.w,X)		; FC 28 D7
	inc $20FC.w,X		; FE FC 20
	sed		; F8
	sec		; 38
	sty $FEF1.w		; 8C F1 FE
	jsr ($3A30.w,X)		; FC 30 3A
	cmp ($3F.b,S),Y		; D3 3F
	eor $3F.b,S		; 43 3F
	sei		; 78
	and ($1F.b,X)		; 21 1F
	sta $61.b,S		; 83 61
	brk $20.b		; 00 20
	asl $20.b		; 06 20
	ora $EB1FFE.l		; 0F FE 1F EB
	dec $DE7E.w,X		; DE 7E DE
	and ($42.b,S),Y		; 33 42
	stz $000F.w,X		; 9E 0F 00
	sbc ($FA.b,S),Y		; F3 FA
	lda ($A0.b),Y		; B1 A0
	ldx $2F79.w		; AE 79 2F
	rts		; 60

	eor $188F60.l		; 4F 60 8F 18
	cld		; D8
	sta $6C30.w		; 8D 30 6C
	adc [$E6.b]		; 67 E6
	sty $82.b		; 84 82
	ror $DF55.w,X		; 7E 55 DF
	ldx $90B9.w,Y		; BE B9 90
	clc		; 18
	bpl  24.b		; 10 18
	bvc  -4.b		; 50 FC
	lda ($FE.b,X)		; A1 FE
	inc $C27D.w,X		; FE 7D C2
	inc $0BF8.w,X		; FE F8 0B
	plb		; AB
	inc $D836.w,X		; FE 36 D8
	ora #$00.b		; 09 00
	cli		; 58
	lda $B143.w,Y		; B9 43 B1
	and $DF.b,S		; 23 DF
	eor $0205BA.l		; 4F BA 05 02
	ora [$37.b],Y		; 17 37
	ora ($FF.b)		; 12 FF
	adc $F014F7.l,X		; 7F F7 14 F0
	phb		; 8B
	xce		; FB
	sty $FF.b		; 84 FF
	jsl $DD04FF.l		; 22 FF 04 DD
	ora $DD.b,X		; 15 DD
	adc $E13F7F.l,X		; 7F 7F 3F E1
	sbc $FE7100.l,X		; FF 00 71 FE
	ldy $AA0C.w		; AC 0C AA
	php		; 08
	sta $22.b,X		; 95 22
	eor $22.b,X		; 55 22
	sbc ($F1.b,X)		; E1 F1
	sbc $0F0EEF.l,X		; FF EF 0E 0F
	beq  -1.b		; F0 FF
	cop $FF.b		; 02 FF
	adc ($FF.b,X)		; 61 FF
	eor ($DF.b),Y		; 51 DF
	pha		; 48
	cmp $5BA468.l		; CF 68 A4 5B
	sed		; F8
	sbc $87F8FB.l,X		; FF FB F8 87
	bra 119.b		; 80 77
	brk $DB.b		; 00 DB
	jsr $304B.w		; 20 4B 30
	adc $3010.w		; 6D 10 30
	eor #$F4.b		; 49 F4
	php		; 08
	sbc $203FFF.l,X		; FF FF 3F 20
	jsr ($FF10.w,X)		; FC 10 FF
	txa		; 8A
	inc $FF88.w,X		; FE 88 FF
	cmp $FF.b		; C5 FF
	sta $80.b,S		; 83 80
	eor $08.b,S		; 43 08
	pla		; 68
	sed		; F8
	sbc $515B28.l,X		; FF 28 5B 51
	tsx		; BA
	ora ($DC.b,X)		; 01 DC
	brk $ED.b		; 00 ED
	brk $AE.b		; 00 AE
	rol $FE0E.w,X		; 3E 0E FE
	lsr $FFFF.w		; 4E FF FF
	inc $FE86.w,X		; FE 86 FE
	ora [$FF.b]		; 07 FF
	eor [$7F.b]		; 47 7F
	ora [$F7.b]		; 07 F7
	eor [$77.b]		; 47 77
	dec $0E01.w		; CE 01 0E
	ora ($6E.b,X)		; 01 6E
	sbc $C60117.l,X		; FF 17 01 C6
	ora ($17.b,X)		; 01 17
	brk $67.b		; 00 67
	bra  31.b		; 80 1F
	php		; 08
	adc $201388.l		; 6F 88 13 20
	sta ($E2.b,X)		; 81 E2
	lda $FE12FE.l,X		; BF FE 12 FE
	ora ($31.b,S),Y		; 13 31
	ora ($31.b)		; 12 31
	trb $31.b		; 14 31
	bpl -49.b		; 10 CF
	cmp $EF.b,S		; C3 EF
	inc $11FE.w,X		; FE FE 11
	dec $10FE.w		; CE FE 10
	dec $84B0.w		; CE B0 84
	bmi -124.b		; 30 84
	dey		; 88
	and ($8C.b,X)		; 21 8C
	sbc ($1D.b,X)		; E1 1D
	jsr $FE88.w		; 20 88 FE
	bmi -104.b		; 30 98
	jsr $A198.w		; 20 98 A1
	sta ($08.b)		; 92 08
	bvs 116.b		; 70 74
	ora $FE.b,S		; 03 FE
	cmp $F2.b,S		; C3 F2
	adc [$21.b]		; 67 21
	rts		; 60

	bvs 113.b		; 70 71
	lda ($40.b,X)		; A1 40
	inc $8AE8.w,X		; FE E8 8A
	ora #$D4.b		; 09 D4
	cmp ($23.b,X)		; C1 23
	and #$40.b		; 29 40
	jsr $894F.w		; 20 4F 89
	and ($AB.b,S),Y		; 33 AB
	pea $FF86.w		; F4 86 FF
	sbc [$1F.b],Y		; F7 1F
	bmi  15.b		; 30 0F
	bpl  -2.b		; 10 FE
	inc $FE07.w,X		; FE 07 FE
	asl A		; 0A
	sbc $9EC218.l,X		; FF 18 C2 9E
	inc $F0FC.w,X		; FE FC F0
	sta $308730.l		; 8F 30 87 30
	sta $FF8738.l		; 8F 38 87 FF
	lda $28.b		; A5 28
	sta $28.b,S		; 83 28
	cmp [$6C.b]		; C7 6C
	cmp ($64.b,X)		; C1 64
	ora $46.b,S		; 03 46
	cmp $FEB36A.l		; CF 6A B3 FE
	tax		; AA
	tax		; AA
	sta $36.b,S		; 83 36
	pld		; 2B
	ldy $2FF2.w		; AC F2 2F
	sbc ($FE.b,S),Y		; F3 FE
	inc $F0A0.w,X		; FE A0 F0
	asl $B9F5.w		; 0E F5 B9
	dec $78.b		; C6 78
	tsb $1C3C.w		; 0C 3C 1C
	cmp $E0.b		; C5 E0
	asl A		; 0A
	sbc $FEDC54.l,X		; FF 54 DC FE
	trb $9C.b		; 14 9C
	sty $FF.b,X		; 94 FF
	adc ($FE.b,X)		; 61 FE
	trb $DC.b		; 14 DC
	lsr $FE.b,X		; 56 FE
	ror $FE.b		; 66 FE
	mvn $FE,$23		; 54 23 FE
	sty $63.b,X		; 94 63
	tsx		; BA
	cmp $FE.b,S		; C3 FE
	trb $23.b		; 14 23
	asl $EC.b,X		; 16 EC
	bit #$24.b		; 89 24
	sbc [$FE.b]		; E7 FE
	and ($0F.b)		; 32 0F
	sbc $F3B2F3.l,X		; FF F3 B2 F3
	ora $FE79.w,Y		; 19 79 FE
	pha		; 48
	adc $657840.l,X		; 7F 40 78 65
	clc		; 18
	ror $FF.b		; 66 FF
	cmp $0CB218.l,X		; DF 18 B2 0C
	lda ($0C.b,S),Y		; B3 0C
	and $5986.w,Y		; 39 86 59
	stx $58.b		; 86 58
	bra  71.b		; 80 47
	bra  96.b		; 80 60
	ora $49.b,S		; 03 49
	sbc $FE30BF.l,X		; FF BF 30 FE
	and ($FF.b,S),Y		; 33 FF
	ora $FF.b,S		; 03 FF
	lda [$FF.b],Y		; B7 FF
	and $FF.b,X		; 35 FF
	bit $3F.b,X		; 34 3F
	cpx $F500.w		; EC 00 F5
	cmp $317CF0.l,X		; DF F0 7C 31
	adc ($00.b,S),Y		; 73 00
	eor $00.b,S		; 43 00
	sta [$D6.b]		; 87 D6
	sta $FCC5.w,Y		; 99 C5 FC
	sbc [$C7.b],Y		; F7 C7
	sbc [$87.b],Y		; F7 87
	adc $63F34B.l,X		; 7F 4B F3 63
	tda		; 7B
	inc $7B23.w,X		; FE 23 7B
	lda $B9.b,X		; B5 B9
	sta ($BD.b),Y		; 91 BD
	ora $FE1B18.l,X		; 1F 18 1B FE
	jsr $FCE9.w		; 20 E9 FC
	inc $7EFD.w,X		; FE FD 7E
	inc $3114.w,X		; FE 14 31
	mvn $50,$71		; 54 71 50
	adc ($FF.b),Y		; 71 FF
	ora $107312.l,X		; 1F 12 73 10
	adc ($34.b,S),Y		; 73 34
	adc [$20.b],Y		; 77 20
	adc [$29.b]		; 67 29
	adc $50CE10.l		; 6F 10 CE 50
	stx $7FFE.w		; 8E FE 7F
	inc $8C52.w,X		; FE 52 8C
	and ($8C.b)		; 32 8C
	bit $88.b,X		; 34 88
	and $98.b		; 25 98
	and #$90.b		; 29 90
	bra -112.b		; 80 90
	ldy #$B0.b		; A0 B0
	stp		; DB
	ldx #$75.b		; A2 75
	sbc #$20.b		; E9 20
	ldx $60F1.w,Y		; BE F1 60
	inc $609B.w,X		; FE 9B 60
	ldy $F8F1.w,X		; BC F1 F8
	inc $C0FF.w,X		; FE FF C0
	asl A		; 0A
	brk $A2.b		; 00 A2
	cop $1C.b		; 02 1C
	tsb $1E.b		; 04 1E
	asl $07.b,X		; 16 07
	ora ($03.b,S),Y		; 13 03
	ora ($01.b),Y		; 11 01
	trb $04.b		; 14 04
	asl $F0.b,X		; 16 F0
	cmp ($06.b,S),Y		; D3 06
	inc $1C0B.w,X		; FE 0B 1C
	ora $0E1E.w		; 0D 1E 0E
	ora $F10BFF.l		; 0F FF 0B F1
	sta $FE090F.l		; 8F 0F 09 FE
	brk $42.b		; 00 42
	sta ($C3.b,X)		; 81 C3
	bra -61.b		; 80 C3
	brk $7F.b		; 00 7F
	sbc $FC.b,S		; E3 FC
	bra -63.b		; 80 C1
	bra -31.b		; 80 E1
	ora ($60.b,X)		; 01 60
	sta ($A3.b,X)		; 81 A3
	cpx $F281.w		; EC 81 F2
	cmp ($DD.b,X)		; C1 DD
	sbc $C2E1C0.l,X		; FF C0 E1 C2
	lda ($70.b,X)		; A1 70
	rts		; 60

	stx $99.b		; 86 99
	bvs  -4.b		; 70 FC
	pla		; 68
	inc $E660.w		; EE 60 E6
	adc ($F0.b)		; 72 F0
	cmp ($FF.b)		; D2 FF
	adc ($3B.b),Y		; 71 3B
	lda #$F0.b		; A9 F0
	sed		; F8
	jsr ($FEDC.w,X)		; FC DC FE
	stz $8CFE.w		; 9C FE 8C
	jsr ($FF8E.w,X)		; FC 8E FF
	ora $FE.b		; 05 FE
	rti		; 40

	cmp $0C4101.l		; CF 01 41 0C
	rti		; 40

	rol $1E60.w,X		; 3E 60 1E
	brk $ED.b		; 00 ED
	adc $FD.b,X		; 75 FD
	ora $96.b,X		; 15 96
	adc ($00.b)		; 72 00
	inx		; E8
	ora #$06.b		; 09 06
	cpx #$4F.b		; E0 4F
	cpy #$8F.b		; C0 8F
	cpy #$02.b		; C0 02
	nop		; EA
	rol $F1.b,X		; 36 F1
	eor $F8.b,X		; 55 F8
	inc $1490.w,X		; FE 90 14
	cop $EA.b		; 02 EA
	lsr $F2.b,X		; 56 F2
	inc $3F34.w,X		; FE 34 3F
	trb $1F.b		; 14 1F
	sbc $F8.b,S		; E3 F8
	bpl  31.b		; 10 1F
	bcc  -2.b		; 90 FE
	bra  11.b		; 80 0B
	inc $C609.w,X		; FE 09 C6
	brk $18.b		; 00 18
	sbc $FEE6.w,X		; FD E6 FE
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	lsr $5994.w,X		; 5E 94 59
	cmp $DC4A.w,X		; DD 4A DC
	sbc $EE2CDF.l,X		; FF DF 2C EE
	plp		; 28
	ror $7716.w		; 6E 16 77
	ora [$35.b],Y		; 17 35
	ora ($36.b)		; 12 36
	clc		; 18
	tsx		; BA
	sbc $41393E.l,X		; FF 3E 39 41
	eor ($FC.b,X)		; 41 FC
	ora $6CFE3F.l,X		; 1F 3F FE 6C
	adc ($FE.b,X)		; 61 FE
	ora [$A1.b]		; 07 A1
	sbc $7FFF30.l		; EF 30 FF 7F
	xce		; FB
	jsr $40FB.w		; 20 FB 40
	sbc ($00.b,S),Y		; F3 00
	jsl $C0C680.l		; 22 80 C6 C0
	cpx $E0.b		; E4 E0
	ldy #$A9.b		; A0 A9
	bpl -79.b		; 10 B1
	plb		; AB
	sec		; 38
	lda $E9.b		; A5 E9
	rts		; 60

	lsr $19.b		; 46 19
	plx		; FA
	cpy $C381.w		; CC 81 C3
	inc $060E.w,X		; FE 0E 06
	adc $FEBE.w		; 6D BE FE
	asl A		; 0A
	cop $40.b		; 02 40
	stx $FE01.w		; 8E 01 FE
	ora $07.b		; 05 07
	and ($CA.b,X)		; 21 CA
	sbc ($BF.b)		; F2 BF
	cpy $FDFE.w		; CC FE FD
	sta $B9.b,S		; 83 B9
	sbc $FFA9A4.l,X		; FF A4 A9 FF
	brk $F0.b		; 00 F0
	sbc $B90E00.l		; EF 00 0E B9
	sec		; 38
	clv		; B8
	sec		; 38
	sei		; 78
	sec		; 38
	jmp $89921C.l		; 5C 1C 92 89
	trb $1761.w		; 1C 61 17
	rol $0E0E.w		; 2E 0E 0E
	lsr $7E.b		; 46 7E
	inc $E1.b,X		; F6 E1
	and $61E823.l,X		; 3F 23 E8 61
	.db $82, $24, $FE		; 82 24 FE
	ora ($31.b),Y		; 11 31
	bne  96.b		; D0 60
	asl A		; 0A
	ldx $9080.w,Y		; BE 80 90
	tsb $5FFA.w		; 0C FA 5F
	sbc $06EC46.l,X		; FF 46 EC 06
	bpl  14.b		; 10 0E
	clc		; 18
	asl $08.b		; 06 08
	cop $08.b		; 02 08
	ora $3F.b,S		; 03 3F
	sta $FFFD.w,Y		; 99 FD FF
	lsr $ED.b		; 46 ED
	inc $30FE.w,X		; FE FE 30
	eor $684778.l		; 4F 78 47 68
	ora $48.b,S		; 03 48
	ora [$4C.b]		; 07 4C
	ora ($44.b,X)		; 01 44
	eor $50.b,S		; 43 50
	cmp ($66.b)		; D2 66
	dec A		; 3A
	cmp $FEE9E8.l		; CF E8 E9 FE
	.db $42, $EC		; 42 EC
	lda ($A9.b,X)		; A1 A9
	inc $3A.b		; E6 3A
	php		; 08
	inc $E0FC.w,X		; FE FC E0
	inc $0FE8.w,X		; FE E8 0F
	sta $F8FE.w,Y		; 99 FE F8
	ora $BC18.w		; 0D 18 BC
	jmp $10FE84.l		; 5C 84 FE 10
	bit $6F10.w,X		; 3C 10 6F
	jmp.w [$6B37]		; DC 37 6B
	phd		; 0B
	tax		; AA
	ora $1801.w,Y		; 19 01 18
	ldy $41.b		; A4 41
	inc $7700.w,X		; FE 00 77
	sbc $640CF8.l,X		; FF F8 0C 64
	ror A		; 6A
	cmp [$FF.b]		; C7 FF
	beq  -8.b		; F0 F8
	phd		; 0B
	asl A		; 0A
	cop $0C.b		; 02 0C
	pei ($16.b)		; D4 16
	asl $1C.b		; 06 1C
	tsb $0829.w		; 0C 29 08
	and $5B18.w,Y		; 39 18 5B
	sed		; F8
	eor ($10.b)		; 52 10
	ora $A4.b		; 05 A4
	eor ($0F.b),Y		; 51 0F
	inx		; E8
	sbc #$FB.b		; E9 FB
	asl $1E.b,X		; 16 1E
	asl $1E.b		; 06 1E
	adc $78.b,X		; 75 78
	bit $F43C.w		; 2C 3C F4
	cli		; 58
	phd		; 0B
	sbc $1E13F8.l,X		; FF F8 13 1E
	asl $0EC4.w		; 0E C4 0E
	asl $0B.b		; 06 0B
	ora $A8.b,S		; 03 A8
	tay		; A8
	cmp #$05.b		; C9 05
	tda		; 7B
	adc $59EE.w,Y		; 79 EE 59
	cpy $EE.b		; C4 EE
	sta ($05.b,X)		; 81 05
	lda $E1AA.w		; AD AA E1
	cop $B5.b		; 02 B5
	sbc ($FF.b,X)		; E1 FF
	ldx $F6.b		; A6 F6
	txs		; 9A
	sbc ($A0.b)		; F2 A0
	ora $35C661.l,X		; 1F 61 C6 35
	ldx $F6.b		; A6 F6
	txs		; 9A
	sbc ($40.b)		; F2 40
	jsr ($0803.w,X)		; FC 03 08
	cop $09.b		; 02 09
	inc $06FD.w,X		; FE FD 06
	asl A		; 0A
	lda $3020FE.l,X		; BF FE 20 30
	ora $81FE.w		; 0D FE 81
	and $80.b,S		; 23 80
	and ($00.b,X)		; 21 00
	and ($4A.b,X)		; 21 4A
	sbc $FCE922.l,X		; FF 22 E9 FC
	adc $78E4.w		; 6D E4 78
	phd		; 0B
	sbc $E40EEC.l,X		; FF EC 0E E4
	asl $76.b		; 06 76
	ora [$72.b]		; 07 72
	sbc $788356.l,X		; FF 56 83 78
	sta ($3D.b,X)		; 81 3D
	sta ($7C.b,X)		; 81 7C
	cpy #$3C.b		; C0 3C
	rti		; 40

	inx		; E8
	sty $7C.b		; 84 7C
	ldy $63.b		; A4 63
	stx $EA.b,Y		; 96 EA
	sbc $F17F.w		; ED 7F F1
	bra  14.b		; 80 0E
	and $10F8.w,Y		; 39 F8 10
	ora $2E596A.l		; 0F 6A 59 2E
	rts		; 60

	ora $411E41.l		; 0F 41 1E 41
	trb $DF41.w		; 1C 41 DF
	and $59.b,X		; 35 59
	eor ($09.b)		; 52 09
	pha		; 48
	cpx $769C.w		; EC 9C 76
	ply		; 7A
	sta $1C6080.l		; 8F 80 60 1C
	lsr $796C.w,X		; 5E 6C 79
	sed		; F8
	cmp $3C4AFE.l,X		; DF FE 4A 3C
	eor $3E.b,X		; 55 3E
	eor [$2E.b],Y		; 57 2E
	rol $0F.b,X		; 36 0F
	phd		; 0B
	ora [$EB.b]		; 07 EB
	adc $5403.w,Y		; 79 03 54
	tsb $103C.w		; 0C 3C 10
	plx		; FA
.ACCU 16
	rep #$2E		; C2 2E
	inc A		; 1A
	sbc ($7F.b,S),Y		; F3 7F
	sed		; F8
	ora $FFED15.l		; 0F 15 ED FF
	sed		; F8
	bpl  70.b		; 10 46
	adc $FEA27C.l,X		; 7F 7C A2 FE
	lda $60.b,X		; B5 60
	asl $EAE0.w		; 0E E0 EA
	cpy $4530.w		; CC 30 45
	sbc #$2040.w		; E9 40 20
	sbc $D1.b		; E5 D1
	inc $A8A4.w,X		; FE A4 A8
	phd		; 0B
	inc $48B6.w,X		; FE B6 48
	phk		; 4B
	adc $6B.b,X		; 75 6B
	tsb $65.b		; 04 65
	sbc ($1D.b,S),Y		; F3 1D
	sbc $41E84B.l,X		; FF 4B E8 41
	txy		; 9B
	bra  11.b		; 80 0B
	rti		; 40

	bra -81.b		; 80 AF
	eor [$1C.b],Y		; 57 1C
	adc $5820.w,Y		; 79 20 58
	bne  23.b		; D0 17
	sty $FF.b,X		; 94 FF
	jsr ($C020.w,X)		; FC 20 C0
	bne -72.b		; D0 B8
	bcc  10.b		; 90 0A
	asl $0D88.w		; 0E 88 0D
	sbc $F8FFAF.l,X		; FF AF FF F8
	ora $CC18E4.l		; 0F E4 18 CC
	bmi  68.b		; 30 44
	clv		; B8
	cld		; D8
	jsr $7088.w		; 20 88 70
	bcs 100.b		; B0 64
	adc ($F6.b),Y		; 71 F6
	sbc $E179A1.l,X		; FF A1 79 E1
	.db $62, $70, $22		; 62 70 22
	adc $2AD500.l		; 6F 00 D5 2A
	cmp $3CC73C.l,X		; DF 3C C7 3C
	sta $927E.w,Y		; 99 7E 92
	sbc $9A7CFF.l,X		; FF FF 7C 9A
	jmp ($7894.w,X)		; 7C 94 78
	stz $7E78.w		; 9C 78 7E
	jmp ($547C.w,X)		; 7C 7C 54
	jmp ($7E6C.w,X)		; 7C 6C 7E
	cop $7C.b		; 02 7C
	ora $7C2857.l		; 0F 57 28 7C
	bpl 120.b		; 10 78
	plp		; 28
	cmp $09.b,X		; D5 09
	ora [$04.b]		; 07 04
	.db $62, $F8, $0A		; 62 F8 0A
	clv		; B8
	inc A		; 1A
	eor $7D.b,X		; 55 7D
	sbc $0D78.w,X		; FD 78 0D
	sta $A9A9.w		; 8D A9 A9
	eor ($6D.b),Y		; 51 6D
	inx		; E8
	ora #$8460.w		; 09 60 84
	cpx #$F0.b		; E0 F0
	phd		; 0B
	cop $06.b		; 02 06
	ora $06.b,S		; 03 06
	adc ($55.b,X)		; 61 55
	and $B991.w		; 2D 91 B9
	tsb $0B.b		; 04 0B
	cmp $81.b,X		; D5 81
	phy		; 5A
	jsr ($607F.w,X)		; FC 7F 60
	ora #$69C8.w		; 09 C8 69
	lsr $55.b,X		; 56 55
	inc $F4E8.w,X		; FE E8 F4
	stz $6A.b,X		; 74 6A
	inc $09F8.w,X		; FE F8 09
	ror $1EE2.w		; 6E E2 1E
	sed		; F8
	ora #$841D.w		; 09 1D 84
	sbc $F80A8F.l,X		; FF 8F 0A F8
	ora $F838C4.l		; 0F C4 38 F8
	bvs -88.b		; 70 A8
	bvs 120.b		; 70 78
	beq  24.b		; F0 18
	beq -24.b		; F0 E8
	sbc $F0FEC2.l,X		; FF C2 FE F0
	cpx #$78.b		; E0 78
	bvc 112.b		; 50 70
	jsr $1070.w		; 20 70 10
	cpx #$68.b		; E0 68
	ora #$0B8C.w		; 09 8C 0B
	pld		; 2B
	.db $82, $07, $08		; 82 07 08
	tsb $DB.b		; 04 DB
	adc $2630.w,Y		; 79 30 26
	rol $5575.w,X		; 3E 75 55
	eor ($99.b),Y		; 51 99
	rts		; 60

	ora #$0DC0.w		; 09 C0 0D
	sta ($CA.b,S),Y		; 93 CA
	ldy #$0D.b		; A0 0D
	ora $5F0C78.l		; 0F 78 0C 5F
	pha		; 48
	ora #$D382.w		; 09 82 D3
	bvc  17.b		; 50 11
	sei		; 78
	sta $8E.b,X		; 95 8E
	bne -32.b		; D0 E0
	ldy #$80.b		; A0 80
	inc $E1.b		; E6 E1
	lda ($B1.b),Y		; B1 B1
	lsr $14D2.w		; 4E D2 14
	ldx $463A.w,Y		; BE 3A 46
	ply		; 7A
	.db $42, $D4		; 42 D4
	sbc $A83074.l,X		; FF 74 30 A8
	jsr $C6D0.w		; 20 D0 C6
	tax		; AA
	stx $F1.b		; 86 F1
	sbc #$3877.w		; E9 77 38
	eor $70AF60.l,X		; 5F 60 AF 70
	phd		; 0B
	eor ($92.b,X)		; 41 92
	stx $E2.b		; 86 E2
	ora ($F9.b)		; 12 F9
	adc ($42.b)		; 72 42
	and ($FC.b,X)		; 21 FC
	sta $01FF.w,Y		; 99 FF 01
	cpx $10.b		; E4 10
	brk $D0.b		; 00 D0
	lda ($C3.b),Y		; B1 C3
	cpy #$C8.b		; C0 C8
	inc $E1C4.w,X		; FE C4 E1
	cmp ($64.b),Y		; D1 64
	rts		; 60

	lda [$E0.b]		; A7 E0
	ora $20E0F0.l		; 0F F0 E0 20
	cpx #$30.b		; E0 30
	beq  -2.b		; F0 FE
	ora [$18.b]		; 07 18
	sed		; F8
	tya		; 98
	inc $F85F.w,X		; FE 5F F8
	sty $09E3.w		; 8C E3 09
	asl $09.b		; 06 09
	ora ($1F.b,X)		; 01 1F
	tsb $1D.b		; 04 1D
	brk $1E.b		; 00 1E
	tsb $10.b		; 04 10
	trb $5B.b		; 14 5B
	sty $DE.b		; 84 DE
	inc $0CC3.w,X		; FE C3 0C
	cmp ($F1.b,S),Y		; D3 F1
	ora $241C00.l		; 0F 00 1C 24
	cmp ($FE.b,S),Y		; D3 FE
	tax		; AA
	asl $D126.w		; 0E 26 D1
	ora [$10.b]		; 07 10
	ora $080718.l		; 0F 18 07 08
	bit $D6.b		; 24 D6
	bit $CEDE.w,X		; 3C DE CE
	inx		; E8
	ora ($F0.b),Y		; 11 F0
	eor $0DF8FF.l,X		; 5F FF F8 0D
	stx $70F4.w		; 8E F4 70
	ldy $30.b,X		; B4 30
	mvn $34,$10		; 54 10 34
	bpl  36.b		; 10 24
	wai		; CB
	adc ($80.b,X)		; 61 80
	adc $088ED1.l,X		; 7F D1 8E 08
	sei		; 78
	pha		; 48
	sei		; 78
	plp		; 28
	sec		; 38
	php		; 08
	clc		; 18
	ldy #$FF.b		; A0 FF
	sbc $110CE0.l,X		; FF E0 0C 11
	php		; 08
	ora ($09.b),Y		; 11 09
	and $19.b,S		; 23 19
	and $7F.b,S		; 23 7F
	ora $10.b		; 05 10
	eor [$20.b]		; 47 20
	jmp $FC08.w		; 4C 08 FC
	cpx #$E8.b		; E0 E8
	lda $0659.w		; AD 59 06
	and ($FE.b,X)		; 21 FE
	xba		; EB
	tax		; AA
	and ($DA.b),Y		; 31 DA
	php		; 08
	cop $E9.b		; 02 E9
	cpx #$D9.b		; E0 D9
	tsb $0403.w		; 0C 03 04
	sbc ($E9.b),Y		; F1 E9
	adc ($56.b),Y		; 71 56
	adc ($A4.b,S),Y		; 73 A4
	txs		; 9A
	php		; 08
	mvp $E5,$FE		; 44 FE E5
	sbc #$F230.w		; E9 30 F2
	sta $B1C7DE.l,X		; 9F DE C7 B1
	bra  84.b		; 80 54
	ora $72FE.w,X		; 1D FE 72
	bne  10.b		; D0 0A
	cpy $7B.b		; C4 7B
	dec $B2.b		; C6 B2
	sta $0CE8.w		; 8D E8 0C
	lsr $0DF8.w		; 4E F8 0D
	bcc -104.b		; 90 98
	lda $97AA.w		; AD AA 97
	sta $900AE8.l		; 8F E8 0A 90
	cmp $C9.b		; C5 C9
	lsr $0D68.w		; 4E 68 0D
	ldy #$5F.b		; A0 5F
	eor $D6F5.w		; 4D F5 D6
	cpx #$0E.b		; E0 0E
	sbc $F1454F.l,X		; FF 4F 45 F1
	ldy #$30.b		; A0 30
	rti		; 40

	bvc -48.b		; 50 D0
	clc		; 18
	cpx #$08.b		; E0 08
	pla		; 68
	tsb $8460.w		; 0C 60 84
	asl A		; 0A
	sbc $B9388A.l,X		; FF 8A 38 B9
	xba		; EB
	tda		; 7B
	inc $0078.w,X		; FE 78 00
	jsr $3484.w		; 20 84 34
	dec $18.b		; C6 18
	sbc $4CC203.l,X		; FF 03 C2 4C
	sbc $20.b,S		; E3 20
	adc [$12.b],Y		; 77 12
	eor $066726.l,X		; 5F 26 67 06
	and [$EE.b]		; 27 EE
	pea $26FF.w		; F4 FF 26
	bit $19F6.w,X		; 3C F6 19
	rol A		; 2A
	brk $12.b		; 00 12
	jsr $1826.w		; 20 26 18
	asl $18.b		; 06 18
	ora ($33.b)		; 12 33
	xba		; EB
	plb		; AB
	asl A		; 0A
	tas		; 1B
	asl $B1.b		; 06 B1
	and ($FF.b)		; 32 FF
	sbc $0C12.w,X		; FD 12 0C
	asl A		; 0A
	tsb $F3.b		; 04 F3
	sbc $00E990.l,X		; FF 90 E9 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F5.b		; 00 F5
	asl A		; 0A
	brk $FF.b		; 00 FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	and ($02.b,X)		; 21 02
	ora ($01.b,X)		; 01 01
	beq  -8.b		; F0 F8
	tsb $F8F2.w		; 0C F2 F8
	ora $C3FF.w		; 0D FF C3
	sbc $01F847.l,X		; FF 47 F8 01
	inc $0DF3.w,X		; FE F3 0D
	adc $3C4210.l		; 6F 10 42 3C
	inc $FFA2.w,X		; FE A2 FF
	cmp [$7C.b]		; C7 7C
	sbc $7C.b,S		; E3 7C
	sed		; F8
	brk $FE.b		; 00 FE
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	brk $3D.b		; 00 3D
	inc $FFFF.w,X		; FE FF FF
	adc $7C00.w,X		; 7D 00 7C
	brk $3F.b		; 00 3F
	cmp ($FF.b,S),Y		; D3 FF
	and ($FF.b,S),Y		; 33 FF
	bit $77.b,X		; 34 77
	sec		; 38
	ldx $1D.b,Y		; B6 1D
	sbc $FFFF44.l,X		; FF 44 FF FF
	eor $002D00.l,X		; 5F 00 2D 00
.INDEX 16
	rep #$17		; C2 17
	ora ($37.b,S),Y		; 13 37
	sty $37.b,X		; 94 37
	beq  56.b		; F0 38
	stz $1D.b,X		; 74 1D
	sec		; 38
	asl $FF.b		; 06 FF
	sbc $DF00BF.l,X		; FF BF 00 DF
	brk $FF.b		; 00 FF
	eor $7F5FBF.l,X		; 5F BF 5F 7F
	sta $EF4FBF.l		; 8F BF 4F EF
	eor $1F97DF.l		; 4F DF 97 1F
	ora $471FD7.l		; 0F D7 1F 47
	ora [$3F.b]		; 07 3F
	ora $3F8FFE.l,X		; 1F FE 8F 3F
	ora $FEFE1F.l		; 0F 1F FE FE
	adc $07E707.l		; 6F 07 E7 07
	sbc $FF50FE.l,X		; FF FE 50 FF
	.db $42, $FE		; 42 FE
	adc $FD.b,S		; 63 FD
	sta [$FF.b]		; 87 FF
	jsr $80E3.w		; 20 E3 80
	sbc $F7F5FF.l,X		; FF FF F5 F7
	sbc $D0.b,X		; F5 D0
	eor $53C2.w,X		; 5D C2 53
.ACCU 16
	rep #$67		; C2 67
	sed		; F8
	adc $C3.b,S		; 63 C3
	bit $F0FF.w,X		; 3C FF F0
	inc $95F1.w,X		; FE F1 95
	sbc ($99.b),Y		; F1 99
	sbc $9AFFFF.l,X		; FF FF FF 9A
	sbc ($02.b,X)		; E1 02
	dec $05.b		; C6 05
	inc $FAB9.w,X		; FE B9 FA
	lda ($FB.b,X)		; A1 FB
	ldy #$80EA.w		; A0 EA 80
	ror $80.b		; 66 80
	sta [$87.b]		; 87 87
	cpx $80.b		; E4 80
	jsr ($7800.w,X)		; FC 00 78
	cpy #$C180.w		; C0 80 C1
	bra  -4.b		; 80 FC
	sbc $90.b,S		; E3 90
	tya		; 98
	bvs -56.b		; 70 C8
	inc $F864.w,X		; FE 64 F8
	inc $8774.w,X		; FE 74 87
	sta $0050FE.l		; 8F FE 50 00
	inc $0060.w,X		; FE 60 00
	inx		; E8
	brk $F0.b		; 00 F0
	brk $C2.b		; 00 C2
	inc $FEDC.w,X		; FE DC FE
	sbc $0629F8.l,X		; FF F8 29 06
	cop $EB.b		; 02 EB
	lda $030401.l,X		; BF 01 04 03
	inc $0EF8.w		; EE F8 0E
	pea $78FF.w		; F4 FF 78
	brk $A6.b		; 00 A6
	sei		; 78
	cmp $88FE.w,X		; DD FE 88
	sbc $E207BF.l,X		; FF BF 07 E2
	sed		; F8
	ora #$0068.w		; 09 68 00
	dec $8900.w,X		; DE 00 89
	bvs -48.b		; 70 D0
	sed		; F8
	phd		; 0B
	ora $FDB600.l		; 0F 00 B6 FD
	sbc $FF17.w,X		; FD 17 FF
	sed		; F8
	tsb $F8F1.w		; 0C F1 F8
	ora #$0007.w		; 09 07 00
	tsa		; 3B
	ora [$5F.b]		; 07 5F
	and $E47FBF.l,X		; 3F BF 7F E4
	sed		; F8
	ora #$FF26.w		; 09 26 FF
	inc $003F.w		; EE 3F 00
	sbc ($88.b),Y		; F1 88
	jsr ($0385.w,X)		; FC 85 03
	adc $DF87.w,Y		; 79 87 DF
	cpx #$8C60.w		; E0 60 8C
	sbc $EEAD.w		; ED AD EE
	sbc $EE00.w,X		; FD 00 EE
	cpx #$FC30.w		; E0 30 FC
	stz $B688.w,X		; 9E 88 B6
	sei		; 78
	ora $70.b		; 05 70
	sbc $FC8FF9.l,X		; FF F9 8F FC
	eor $B537FF.l		; 4F FF 37 B5
	adc $76EF15.l,X		; 7F 15 EF 76
	stx $7570.w		; 8E 70 75
	sed		; F8
	xce		; FB
	jsr ($6FFC.w,X)		; FC FC 6F
	trb $B5FE.w		; 1C FE B5
	ldx $15.b,Y		; B6 15
	asl $B4.b,X		; 16 B4
	jsr ($FE80.w,X)		; FC 80 FE
	rti		; 40

	bra -126.b		; 80 82
	ldy $FE.b		; A4 FE
	cpy #$FFF9.w		; C0 F9 FF
	sbc $F8F1F5.l,X		; FF F5 F1 F8
	asl A		; 0A
	tsb $97.b		; 04 97
	asl $F8.b		; 06 F8
	trb $8CFE.w		; 1C FE 8C
	ora $01.b,S		; 03 01
	ora $00.b		; 05 00
	sed		; F8
	asl A		; 0A
	cpx #$EC9F.w		; E0 9F EC
	sbc ($E3.b),Y		; F1 E3
	jmp ($7CE2.w,X)		; 7C E2 7C
	adc ($FC.b)		; 72 FC
	pea $BEF8.w		; F4 F8 BE
	.db $82, $FE, $E4		; 82 FE E4
	sed		; F8
	inx		; E8
	beq 124.b		; F0 7C
	tsb $A8F1.w		; 0C F1 A8
	sbc ($FE.b)		; F2 FE
	beq -31.b		; F0 E1
	stz $5EF2.w,X		; 9E F2 5E
	ora $00.b,X		; 15 00
	sta $364B08.l,X		; 9F 08 4B 36
	tsb $5D.b		; 04 5D
	and $FE081C.l,X		; 3F 1C 08 FE
	lsr A		; 4A
	adc $183D25.l,X		; 7F 25 3D 18
	eor $370067.l,X		; 5F 67 00 37
	sbc $03C8F0.l,X		; FF F0 C8 03
	php		; 08
	eor ($08.b,X)		; 41 08
	bit $00.b		; 24 00
	clc		; 18
	asl $FB06.w,X		; 1E 06 FB
	php		; 08
	sta $FF.b		; 85 FF
	sbc $F11803.l,X		; FF 03 18 F1
	jsr ($7F01.w,X)		; FC 01 7F
	ora ($DF.b,X)		; 01 DF
	eor $FF.b,S		; 43 FF
	asl $F7.b		; 06 F7
	.db $42, $80		; 42 80
	brk $F0.b		; 00 F0
	inc $3FFE.w,X		; FE FE 3F
	plx		; FA
	sbc $7F3FF8.l,X		; FF F8 3F 7F
	jsr ($FFFE.w,X)		; FC FE FF
	jsr ($F8FD.w,X)		; FC FD F8
	inc $FCF4.w,X		; FE F4 FC
	inx		; E8
	adc $F2F870.l,X		; 7F 70 F8 F2
	beq  -2.b		; F0 FE
	and ($F8.b,X)		; 21 F8
	sbc $F3F0.w,Y		; F9 F0 F3
	sbc $BFE03F.l,X		; FF 3F E0 BF
	ora ($EE.b),Y		; 11 EE
	tad		; 5B
	sbc $8E.b,X		; F5 8E
	ldx $8201.w		; AE 01 82
	and ($82.b,X)		; 21 82
	ora ($81.b),Y		; 11 81
	bpl 124.b		; 10 7C
	bit $D1FE.w		; 2C FE D1
	brk $9B.b		; 00 9B
	brk $0E.b		; 00 0E
	.db $62, $20, $7C		; 62 20 7C
	sbc #$D30D.w		; E9 0D D3
	inc $78BC.w,X		; FE BC 78
	inc $F83C.w,X		; FE 3C F8
	inc $541A.w,X		; FE 1A 54
	sbc $FC.b,X		; F5 FC
	inc $E078.w,X		; FE 78 E0
	sbc ($60.b),Y		; F1 60
	jsr ($FCFE.w,X)		; FC FE FC
	sbc $061FF8.l,X		; FF F8 1F 06
	ora $61.b,S		; 03 61
	ply		; 7A
	ora #$FE07.w		; 09 07 FE
	asl $FE03.w		; 0E 03 FE
	phd		; 0B
	ora $05.b		; 05 05
	cop $07.b		; 02 07
	sei		; 78
	stz $F2.b,X		; 74 F2
	ora $03.b		; 05 03
	sbc $00FF.w,Y		; F9 FF 00
	cop $04.b		; 02 04
	ora ($F8.b,X)		; 01 F8
	sbc $FF72FB.l,X		; FF FB 72 FF
	sta $66FE.w,Y		; 99 FE 66
	sbc $7BE5.w,X		; FD E5 7B
	ora [$FB.b]		; 07 FB
	phd		; 0B
	sbc [$FF.b],Y		; F7 FF
	sta [$1F.b]		; 87 1F
	sbc $738FFF.l		; EF FF 8F 73
	jsr ($9C8A.w,X)		; FC 8A 9C
	adc $64.b		; 65 64
	sbc $E0.b,S		; E3 E0
	asl $443E.w,X		; 1E 3E 44
	ora [$22.b]		; 07 22
	sbc ($0F.b),Y		; F1 0F
	bra -33.b		; 80 DF
	and $FEFC51.l,X		; 3F 51 FC FE
	bmi  72.b		; 30 48
	and $3FFCFF.l,X		; 3F FF FC 3F
	jsl $0CF8FE.l		; 22 FE F8 0C
	eor $33EB.w,Y		; 59 EB 33
	and $FDFF2D.l,X		; 3F 2D FF FD
	cpx #$0EF8.w		; E0 F8 0E
	lda $09F8E6.l,X		; BF E6 F8 09
	cpx #$0DF8.w		; E0 F8 0D
	bit $FF.b		; 24 FF
	sbc $FF1BFF.l,X		; FF FF 1B FF
	ora $850DFF.l		; 0F FF 0D 85
	adc $DE8B7E.l,X		; 7F 7E 8B DE
	plb		; AB
	lda $F6D6.w		; AD D6 F6
	cmp $FF87.w,Y		; D9 87 FF
	plx		; FA
	sbc $FDFE.w,X		; FD FE FD
	sbc $0601.w,X		; FD 01 06
	.db $82, $08, $A3		; 82 08 A3
	php		; 08
	dec $00.b,X		; D6 00
	adc $00D983.l,X		; 7F 83 D9 00
	sbc $FC00.w,X		; FD 00 FC
	bra  -2.b		; 80 FE
	bcc  12.b		; 90 0C
	sbc ($00.b),Y		; F1 00
	inc $2570.w,X		; FE 70 25
	asl $F2.b		; 06 F2
	inc $C0A0.w,X		; FE A0 C0
	jsr $EDFF.w		; 20 FF ED
	beq -22.b		; F0 EA
	inc $F870.w,X		; FE 70 F8
	inc $FF.b		; E6 FF
	sed		; F8
	ora $FE0307.l,X		; 1F 07 03 FE
	phd		; 0B
	ora [$0F.b]		; 07 0F
	ora [$7F.b]		; 07 7F
	sta ($17.b),Y		; 91 17
	ora $1C0F1E.l		; 0F 1E 0F 1C
	ora $461F2D.l		; 0F 2D 1F 46
	sbc ($26.b),Y		; F1 26
	sep #$C3		; E2 C3
	bit $0E.b		; 24 0E
	inc $001D.w,X		; FE 1D 00
	iny		; C8
	beq  -2.b		; F0 FE
	dey		; 88
	cmp [$3F.b]		; C7 3F
	beq  48.b		; F0 30
	cpx #$FE70.w		; E0 70 FE
	bne -32.b		; D0 E0
	cpx #$E0C0.w		; E0 C0 E0
	brk $D0.b		; 00 D0
	asl $00.b,X		; 16 00
	inc $9CA0.w,X		; FE A0 9C
	sbc ($F6.b,X)		; E1 F6
	inc $23EA.w,X		; FE EA 23
	ldy #$B218.w		; A0 18 B2
	sed		; F8
	ora $F8A0.w		; 0D A0 F8
	bpl 119.b		; 10 77
	ora ($1E.b,S),Y		; 13 1E
	cop $B0.b		; 02 B0
	jsr ($9A57.w,X)		; FC 57 9A
	brk $0A.b		; 00 0A
	ora $7A.b		; 05 7A
	ora $FD.b		; 05 FD
	asl $0F.b		; 06 0F
	ora $9E.b,S		; 03 9E
	dec $EAA0.w,X		; DE A0 EA
	sed		; F8
	sbc $88D9B9.l,X		; FF B9 D9 88
	sbc [$90.b],Y		; F7 90
	sbc $C4CB60.l		; EF 60 CB C4
	sbc $23FC80.l,X		; FF 80 FC 23
	ora $E07FFE.l,X		; 1F FE 7F E0
	and $E7C3.w,X		; 3D C3 E7
	bra -122.b		; 80 86
	asl $3900.w,X		; 1E 00 39
	ora ($07.b,X)		; 01 07
	ora [$87.b]		; 07 87
	ora $2F.b,S		; 03 2F
	ora $A00CEC.l		; 0F EC 0C A0
	sta ($20.b,X)		; 81 20
	sta ($FC.b,X)		; 81 FC
	sbc $DDFEBD.l,X		; FF BD FE DD
	brk $FF.b		; 00 FF
	cpy #$407F.w		; C0 7F 40
	jsr $F8A3.w		; 20 A3 F8
	phd		; 0B
	tsb $1E80.w		; 0C 80 1E
	sbc $0A57.w,Y		; F9 57 0A
	pea $FE1E.w		; F4 1E FE
	ora $FDFE.w,X		; 1D FE FD
	asl $00FC.w		; 0E FC 00
	inc $58FC.w,X		; FE FC 58
	nop		; EA
	pla		; 68
	inx		; E8
	inc $000C.w,X		; FE 0C 00
	beq  33.b		; F0 21
	ora ($10.b,X)		; 01 10
	ora $F1FE.w		; 0D FE F1
	ora [$3F.b],Y		; 17 3F
	sbc #$160F.w		; E9 0F 16
	ora $170E19.l		; 0F 19 0E 17
	ora #$2462.w		; 09 62 24
	sbc $00.b,X		; F5 00
	sbc $CB09.w,Y		; F9 09 CB
	ldx $E700.w,Y		; BE 00 E7
	ora $FFF141.l,X		; 1F 41 F1 FF
	bit $7FF1.w,X		; 3C F1 7F
	inc $1FFF.w,X		; FE FF 1F
	inc $4A87.w,X		; FE 87 4A
	sbc ($62.b,X)		; E1 62
	sbc ($04.b),Y		; F1 04
	sbc $0FFF09.l,X		; FF 09 FF 0F
	adc $1AFF1E.l,X		; 7F 1E FF 1A
	xba		; EB
	sbc $F3FD1F.l,X		; FF 1F FD F3
	xba		; EB
	pea $EEF1.w		; F4 F1 EE
	sbc $EC.b,X		; F5 EC
	sbc $EAE8.w,Y		; F9 E8 EA
	inc $FD.b,X		; F6 FD
	inc $FE.b,X		; F6 FE
	sta $00F3E4.l		; 8F E4 F3 00
	pea $E800.w		; F4 00 E8
	bra -29.b		; 80 E3
	bra -25.b		; 80 E7
	brk $F1.b		; 00 F1
	sbc $77F6FF.l,X		; FF FF F6 77
	sta $17778B.l		; 8F 8B 77 17
	xce		; FB
	eor $0BEF8B.l		; 4F 8B EF 0B
	cmp $17CC17.l,X		; DF 17 CC 17
	eor [$3D.b],Y		; 57 3D
	cop $E8.b		; 02 E8
	sta $83E1E0.l		; 8F E0 E1 83
	brk $73.b		; 00 73
	phx		; DA
	cpx #$3C3C.w		; E0 3C 3C
	inc $0008.w,X		; FE 08 00
	cmp $FCFEFF.l,X		; DF FF FE FC
	cmp $FCDEB9.l,X		; DF B9 DE FC
	pla		; 68
	inc $BD72.w,X		; FE 72 BD
	sbc $7B.b		; E5 7B
	asl $A6E5.w,X		; 1E E5 A6
	dex		; CA
	cmp ($DE.b),Y		; D1 DE
	jsr ($FED0.w,X)		; FC D0 FE
	lda $7B00.w,X		; BD 00 7B
	brk $E1.b		; 00 E1
	stx $FE.b,Y		; 96 FE
	ldx $EC.b		; A6 EC
	sbc $FFEF47.l,X		; FF 47 EF FF
	cmp $EF9FFF.l		; CF FF 9F EF
	dec A		; 3A
	cmp $FF98FE.l,X		; DF FE 98 FF
	php		; 08
	inc $C3E3.w,X		; FE E3 C3
	jmp.w [$EFEB]		; DC EB EF
	dec $60.b,X		; D6 60
	cpy #$40A0.w		; C0 A0 40
	inc $4FE0.w,X		; FE E0 4F
	ora ($40.b),Y		; 11 40
	rts		; 60

	bra  80.b		; 80 50
	ldy #$40FE.w		; A0 FE 40
	rti		; 40

	cpy #$FCE8.w		; C0 E8 FC
	inc $F202.w,X		; FE 02 F2
	ldy #$FFFE.w		; A0 FE FF
	sed		; F8
	ora $0FFF39.l,X		; 1F 39 FF 0F
	ora $231F3B.l,X		; 1F 3B 1F 23
	ora $463F47.l,X		; 1F 47 3F 46
	and $4F3E4F.l,X		; 3F 4F 3E 4F
	and $7F43.w,X		; 3D 43 7F
	inc $001B.w,X		; FE 1B 00
	inc $3E17.w,X		; FE 17 3E
	sbc ($2F.b,X)		; E1 2F
	brk $2E.b		; 00 2E
	brk $2C.b		; 00 2C
	ora ($F8.b,X)		; 01 F8
	adc $C0E0FE.l,X		; 7F FE E0 C0
	sbc [$C0.b]		; E7 C0
	lda $967FC4.l,X		; BF C4 7F 96
	sbc $BBFF37.l,X		; FF 37 FF BB
	cpx $FEFF.w		; EC FF FE
	sta $EA92.w,X		; 9D 92 EA
	cpy #$8405.w		; C0 05 84
	asl $12.b,X		; 16 12
	and [$3B.b],Y		; 37 3B
	tyx		; BB
	sta $EC63.w,Y		; 99 63 EC
	tyx		; BB
	sta $789D.w		; 8D 9D 78
	pha		; 48
	inc $5028.w,X		; FE 28 50
	sbc #$DF14.w		; E9 14 DF
	sbc $FF92FF.l,X		; FF FF 92 FF
	txa		; 8A
	brk $07.b		; 00 07
	sbc ($FD.b),Y		; F1 FD
	adc $127F14.l,X		; 7F 14 7F 12
	lda $F2BF0A.l,X		; BF 0A BF F2
	cmp $43.b,S		; C3 43
	ora $ED.b,S		; 03 ED
	ora ($58.b,X)		; 01 58
	xce		; FB
	clc		; 18
	sbc $F7FA04.l		; EF 04 FA F7
	jsr ($FE8F.w,X)		; FC 8F FE
	tsb $1EE0.w		; 0C E0 1E
	cpy #$C01F.w		; C0 1F C0
	ora [$C0.b]		; 07 C0
	tas		; 1B
	cmp $E3.b,S		; C3 E3
	plx		; FA
	ora $AFFEE0.l		; 0F E0 FE AF
	rts		; 60

	lda $1E0E80.l,X		; BF 80 0E 1E
	adc ($E1.b,S),Y		; 73 E1
	sbc $2C7F60.l		; EF 60 7F 2C
	ora $FAD1EC.l,X		; 1F EC D1 FA
	cpx #$1F00.w		; E0 00 1F
	lda ($9C.b)		; B2 9C
	ora ($F8.b,X)		; 01 F8
	ora $F0.b,S		; 03 F0
	ora [$DF.b]		; 07 DF
	lda $F50DF0.l,X		; BF F0 0D F5
	pei ($D9.b)		; D4 D9
	cop $8C.b		; 02 8C
	sbc ($12.b,S),Y		; F3 12
	cmp #$C980.w		; C9 80 C9
	cmp ($F1.b),Y		; D1 F1
	sbc $FFFFFF.l,X		; FF FF FF FF
	tda		; 7B
	bpl  -1.b		; 10 FF
	stz $FF.b		; 64 FF
	tya		; 98
	sbc $43FF21.l,X		; FF 21 FF 43
	sbc $D9AA83.l,X		; FF 83 AA D9
	ora [$10.b],Y		; 17 10
	beq  -4.b		; F0 FC
	lda $20FCF1.l,X		; BF F1 FC 20
	xce		; FB
	eor ($F7.b,X)		; 41 F7
	sta $EB.b,S		; 83 EB
	ora [$D7.b]		; 07 D7
	ora [$B7.b]		; 07 B7
	and $F8007C.l,X		; 3F 7C 00 F8
	ora $0E030F.l,X		; 1F 0F 03 0E
	ora [$0D.b]		; 07 0D
	asl $FE.b		; 06 FE
	asl A		; 0A
	ora $0B.b		; 05 0B
	ora $07.b		; 05 07
	sta $FED1.w		; 8D D1 FE
	cmp ($04.b),Y		; D1 04
	sbc ($06.b)		; F2 06
	inc $FE05.w,X		; FE 05 FE
	lsr $F0EA.w,X		; 5E EA F0
	sbc $3E9E3E.l,X		; FF 3E 9E 3E
	adc $F7FBFF.l,X		; 7F FF FB F7
	sbc $FA.b,X		; F5 FA
	xce		; FB
	jsr ($FEDD.w,X)		; FC DD FE
	sta $F7E8D0.l		; 8F D0 E8 F7
	sbc $703E0A.l,X		; FF 0A 3E 70
	sec		; 38
	plx		; FA
	stz $F8E9.w		; 9C E9 F8
	beq  -2.b		; F0 FE
	sed		; F8
	and $7D83FB.l,X		; 3F FB 83 7D
	beq -10.b		; F0 F6
	stx $B6.b		; 86 B6
	adc $E859A1.l,X		; 7F A1 59 E8
	and [$D7.b],Y		; 37 D7
	inx		; E8
	lda $EAFB53.l,X		; BF 53 FB EA
	cmp ($FF.b,X)		; C1 FF
	bit #$FFF8.w		; 89 F8 FF
	ror $B7F1.w,X		; 7E F1 B7
	php		; 08
	brk $17.b		; 00 17
	sbc $1D.b,S		; E3 1D
	lsr $FA.b,X		; 56 FA
	bit $DAF4.w		; 2C F4 DA
	plp		; 28
	sbc $90B61F.l,X		; FF 1F B6 90
	sbc $CE7F80.l,X		; FF 80 7F CE
	sbc $00045F.l,X		; FF 5F 04 00
	eor ($50.b),Y		; 51 50
	adc ($20.b,S),Y		; 73 20
	cop $FC.b		; 02 FC
	sbc $4F.b		; E5 4F
	tsa		; 3B
	and [$CE.b],Y		; 37 CE
	and $0CFF9F.l,X		; 3F 9F FF 0C
	sbc $1F9F49.l,X		; FF 49 9F 1F
	eor $8363.w,X		; 5D 63 83
	jsr ($631C.w,X)		; FC 1C 63
	inc $FE4D.w,X		; FE 4D FE
	sbc $FFE1.w		; ED E1 FF
	sbc $3CD24A.l,X		; FF 4A D2 3C
	bra  99.b		; 80 63
	bra  95.b		; 80 5F
	sty $CC5F.w		; 8C 5F CC
	eor $C83BF6.l,X		; 5F F6 3B C8
	lda [$F0.b],Y		; B7 F0
	sta [$DF.b]		; 87 DF
	ora $969EA1.l		; 0F A1 9E 96
	ora ($46.b,S),Y		; 13 46
	eor #$E989.w		; 49 89 E9
	sta $F1643B.l		; 8F 3B 64 F1
	and $FC.b,S		; 23 FC
	tsb $4800.w		; 0C 00 48
	phx		; DA
	sbc $708036.l,X		; FF 36 80 70
	brk $70.b		; 00 70
	beq -16.b		; F0 F0
	ldy #$B0FE.w		; A0 FE B0
	rts		; 60

	pla		; 68
	beq  -2.b		; F0 FE
	plp		; 28
	beq -88.b		; F0 A8
	eor [$88.b],Y		; 57 88
	bvs -104.b		; 70 98
	bvs  32.b		; 70 20
	inc $D1.b		; E6 D1
	stz $E4.b		; 64 E4
	cpx $30.b		; E4 30
	cop $FC.b		; 02 FC
	inc $F8FF.w,X		; FE FF F8
	adc $F07634.l,X		; 7F 34 76 F0
	cpx #$F0FC.w		; E0 FC F0
	inc $FD3F.w,X		; FE 3F FD
	cpx $DEFF.w		; EC FF DE
	sbc $7CFFBE.l,X		; FF BE FF 7C
	cpx $E060.w		; EC 60 E0
	cpx #$C0F0.w		; E0 F0 C0
	sta $8CEC55.l,X		; 9F 55 EC 8C
	dec $BE1E.w,X		; DE 1E BE
	bit $FFF0.w,X		; 3C F0 FF
	sed		; F8
	ora $F16E.w,X		; 1D 6E F1
	jmp $EA38D9.l		; 5C D9 38 EA
	inc $070F.w,X		; FE 0F 07
	ora $F89CFA.l		; 0F FA 9C F8
	ora $9A.b,X		; 15 9A
	jsr ($75F0.w,X)		; FC F0 75
	lda #$F720.w		; A9 20 F7
	sbc ($D8.b,X)		; E1 D8
	tsb $C67C.w		; 0C 7C C6
	ora $E2320F.l,X		; 1F 0F 32 E2
	plx		; FA
	sbc ($A1.b,X)		; E1 A1
	ldx $F8C2.w		; AE C2 F8
	ora ($C0.b)		; 12 C0
	cpy $C0.b		; C4 C0
	rol A		; 2A
	nop		; EA
	bit $D9.b		; 24 D9
	cpy #$CFEF.w		; C0 EF CF
	bne  18.b		; D0 12
	ldx $AA.b		; A6 AA
	inc $E8D1.w		; EE D1 E8
	nop		; EA
	ora ($7C.b,X)		; 01 7C
	cmp [$80.b]		; C7 80
	sed		; F8
	ora ($9A.b)		; 12 9A
	cmp ($84.b),Y		; D1 84
	cmp ($7D.b),Y		; D1 7D
	jsr $D490.w		; 20 90 D4
	sta [$3E.b]		; 87 3E
	sed		; F8
	trb $1C.b		; 14 1C
	brk $3E.b		; 00 3E
	trb $FFFC.w		; 1C FC FF
	bmi -88.b		; 30 A8
	phy		; 5A
	sbc $4011F8.l,X		; FF F8 11 40
	nop		; EA
	rti		; 40

	sbc ($FE.b,X)		; E1 FE
	inc $BA5A.w,X		; FE 5A BA
	adc ($A8.b,S),Y		; 73 A8
	jsr ($C860.w,X)		; FC 60 C8
	asl $FE.b,X		; 16 FE
	inc $5403.w,X		; FE 03 54
	tay		; A8
	asl $EFFF.w		; 0E FF EF
	eor [$C7.b]		; 47 C7
	sbc $DD14FD.l		; EF FD 14 DD
	beq  32.b		; F0 20
	beq -32.b		; F0 E0
	ldy #$11F0.w		; A0 F0 11
	sbc ($E0.b),Y		; F1 E0
	sbc ($36.b,X)		; E1 36
	ldy $1F01.w,X		; BC 01 1F
	ora $1F.b,S		; 03 1F
	ply		; 7A
	cmp $0E.b,X		; D5 0E
	dec $BA.b		; C6 BA
	sbc $FF0DF8.l,X		; FF F8 0D FF
	cmp $F108EF.l		; CF EF 08 F1
	inc $3CE9.w,X		; FE E9 3C
	sbc ($FF.b,S),Y		; F3 FF
	sed		; F8
	ora ($C3.b),Y		; 11 C3
	lda ($E7.b),Y		; B1 E7
	cmp $C7.b,S		; C3 C7
	stx $02.b		; 86 02
	ora $07FE06.l		; 0F 06 FE 07
	jsr ($2303.w,X)		; FC 03 23
	bcs  14.b		; B0 0E
	sbc $A7078F.l,X		; FF 8F 07 A7
	brk $70.b		; 00 70
	jsr $81FE.w		; 20 FE 81
	rti		; 40

	.db $82, $FC, $81		; 82 FC 81
	inx		; E8
	ora ($EA.b),Y		; 11 EA
	bpl -86.b		; 10 AA
	bra -126.b		; 80 82
	ora $800F82.l		; 0F 82 0F 80
	sed		; F8
	ora ($0C.b,S),Y		; 13 0C
	sbc ($0A.b),Y		; F1 0A
	brk $82.b		; 00 82
	sed		; F8
	inc A		; 1A
	sbc $0041F8.l,X		; FF F8 41 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B5.b		; 00 B5
	sbc $F8FF00.l,X		; FF 00 FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	and ($03.b,X)		; 21 03
	cpx #$1EF8.w		; E0 F8 1E
	sbc $03.b		; E5 03
	sbc $003F00.l,X		; FF 00 3F 00
	ora $00FFDD.l		; 0F DD FF 00
	ora ($F0.b,X)		; 01 F0
	sbc $1818.w,X		; FD 18 18
	cpx #$0DF8.w		; E0 F8 0D
	adc $62752C.l,X		; 7F 2C 75 62
	xce		; FB
	cpx $BC.b		; E4 BC
	bcs  -1.b		; B0 FF
	sbc $9FD143.l,X		; FF 43 D1 9F
	eor $55.b,X		; 55 55
	ora $7F.b		; 05 7F
	and $892E89.l		; 2F 89 2E 89
	ror A		; 6A
	ora ($76.b,X)		; 01 76
	eor $20.b,S		; 43 20
	sbc $012F0F.l,X		; FF 0F 2F 01
	and $053F15.l,X		; 3F 15 3F 05
	ora $FBFF0F.l,X		; 1F 0F FF FB
	inc $FFFC.w,X		; FE FC FF
	beq  31.b		; F0 1F
	inc $BFFF.w,X		; FE FF BF
	adc $BFBF1F.l,X		; 7F 1F BF BF
	sbc $FBFE39.l,X		; FF 39 FE FB
	sbc $F2E1.w,Y		; F9 E1 F2
	beq  -1.b		; F0 FF
	ora $F03F7F.l,X		; 1F 7F 3F F0
	ora $E164.w		; 0D 64 E1
	sta $A20803.l		; 8F 03 08 A2
	sbc $686F60.l,X		; FF 60 6F 68
	sbc $0FFEF8.l,X		; FF F8 FE 0F
	bpl  -2.b		; 10 FE
	sta [$FC.b],Y		; 97 FC
	sbc [$F0.b],Y		; F7 F0
	stx $FFF0.w		; 8E F0 FF
	sbc #$F0FF.w		; E9 FF F0
	inc $4046.w,X		; FE 46 40
	and $0F28.w		; 2D 28 0F
	php		; 08
	and [$18.b],Y		; 37 18
	adc [$70.b]		; 67 70
	sbc $80E6FF.l,X		; FF FF E6 80
	asl $0D80.w		; 0E 80 0D
	bra -71.b		; 80 B9
	ora ($D3.b,X)		; 01 D3
	ora $F3.b,S		; 03 F3
	ora $C3.b,S		; 03 C3
	and $8B.b,S		; 23 8B
	phd		; 0B
	sbc $1B1B8F.l,X		; FF 8F 1B 1B
	adc ($71.b),Y		; 71 71
	adc ($72.b)		; 72 72
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	rts		; 60

	brk $E0.b		; 00 E0
	and ($18.b),Y		; 31 18
	inc $FEC0.w,X		; FE C0 FE
	bra  -4.b		; 80 FC
	sbc $FD80FF.l,X		; FF FF 80 FD
	sbc $F0DAFF.l		; EF FF DA F0
	eor [$30.b]		; 47 30
	brk $3C.b		; 00 3C
	brk $2B.b		; 00 2B
	brk $17.b		; 00 17
	brk $1B.b		; 00 1B
	inc $10FF.w		; EE FF 10
	lda $1C101F.l,X		; BF 1F 10 1C
	trb $0F0F.w		; 1C 0F 0F
	ora [$07.b]		; 07 07
	sbc ($FC.b)		; F2 FC
	asl $00.b		; 06 00
	tsa		; 3B
	brk $DF.b		; 00 DF
	bcc  34.b		; 90 22
	lsr A		; 4A
	inc $01FF.w,X		; FE FF 01
	sbc $E6A404.l,X		; FF 04 A4 E6
	and $F0FF22.l,X		; 3F 22 FF F0
	bit $1F26.w		; 2C 26 1F
	inc $FE.b		; E6 FE
	jsr ($1FF2.w,X)		; FC F2 1F
	inx		; E8
	sbc #$FFC6.w		; E9 C6 FF
	inc $F2E0.w,X		; FE E0 F2
	brk $F3.b		; 00 F3
.ACCU 8
.INDEX 8
	sep #$FD		; E2 FD
	adc $00A3F2.l,X		; 7F F2 A3 00
	beq -16.b		; F0 F0
	jsr ($E0FF.w,X)		; FC FF E0
	sed		; F8
	phd		; 0B
	sbc $26077F.l,X		; FF 7F 07 26
	bne   0.b		; D0 00
	inx		; E8
	brk $F8.b		; 00 F8
	brk $F4.b		; 00 F4
	bra  -1.b		; 80 FF
	cpx #$E0.b		; E0 E0
	cld		; D8
	php		; 08
	inc $F8FF.w,X		; FE FF F8
	sbc $F8FF.w		; ED FF F8
	ror $0F2F.w,X		; 7E 2F 0F
	and $FF2717.l,X		; 3F 17 27 FF
	eor ($17.b,X)		; 41 17
	ora $09130B.l,X		; 1F 0B 13 09
	asl $0602.w		; 0E 02 06
	brk $04.b		; 00 04
	jsl $DFF1EB.l		; 22 EB F1 DF
	cmp $03F1E9.l,X		; DF E9 F1 03
	ora [$01.b]		; 07 01
	ora ($F8.b,X)		; 01 F8
	sbc ($03.b),Y		; F1 03
	ora $F7.b,S		; 03 F7
	cmp [$DF.b],Y		; D7 DF
	sta $BEFD35.l,X		; 9F 35 FD BE
	sbc $F1107F.l,X		; FF 7F 10 F1
	eor $93BB.w		; 4D BB 93
	sbc $FFFFF0.l,X		; FF F0 FF FF
	and $FD0C3E.l,X		; 3F 3E 0C FD
	sbc $FFFE.w,Y		; F9 FE FF
	sbc $F3F9F3.l,X		; FF F3 F9 F3
	sbc [$E3.b],Y		; F7 E3
	sbc $C9.b		; E5 C9
	iny		; C8
	bcc -10.b		; 90 F6
	rti		; 40

	ror $FEA0.w		; 6E A0 FE
	sed		; F8
	jsr ($37F0.w,X)		; FC F0 37
	beq  -2.b		; F0 FE
	sed		; F8
	cpx #$F2.b		; E0 F2
	cpy #$E7.b		; C0 E7
	bra -113.b		; 80 8F
	dec $F1.b		; C6 F1
	bit #$FF.b		; 89 FF
	cmp $92FE.w		; CD FE 92
	brk $9C.b		; 00 9C
	brk $98.b		; 00 98
	brk $A0.b		; 00 A0
	sed		; F8
	sbc ($76.b),Y		; F1 76
	cmp [$41.b]		; C7 41
	sbc $606C6C.l,X		; FF 6C 6C 60
	sbc $804040.l,X		; FF 40 40 80
	ora $43F0.w,X		; 1D F0 43
	plp		; 28
	mvn $07,$56		; 54 56 07
	asl $94E9.w,X		; 1E E9 94
	asl $F13A.w,X		; 1E 3A F1
	inc $01FD.w		; EE FD 01
	inc $F140.w,X		; FE 40 F1
	and [$FF.b],Y		; 37 FF
	trb $3E1C.w		; 1C 1C 3E
	ora ($7C.b,X)		; 01 7C
	ora $FF.b,S		; 03 FF
	adc $F707F8.l,X		; 7F F8 07 F7
	php		; 08
	inc $FC01.w,X		; FE 01 FC
	ora $9C.b,S		; 03 9C
	ora $7D.b,S		; 03 7D
	cop $1F.b		; 02 1F
	ora $103F3F.l,X		; 1F 3F 3F 10
	inc $37.b,X		; F6 37
	and $3FFCFE.l		; 2F FE FC 3F
	cpy #$E0.b		; C0 E0
	sbc ($C0.b,X)		; E1 C0
	asl $FF.b		; 06 FF
.ACCU 16
.INDEX 16
	rep #$F9		; C2 F9
	brk $FF.b		; 00 FF
	php		; 08
	sbc [$F1.b],Y		; F7 F1
	asl $04FB.w		; 0E FB 04
	bit $F0.b		; 24 F0
	phd		; 0B
	sbc $3F0FFE.l,X		; FF FE 0F 3F
	inc $00CA.w,X		; FE CA 00
	beq   0.b		; F0 00
	sbc $7B.b,S		; E3 7B
	bra  31.b		; 80 1F
	cpx #$807F.w		; E0 7F 80
	tsb $D7.b		; 04 D7
	dec $F7.b,X		; D6 F7
	cmp $F8FF.w,Y		; D9 FF F8
	tsb $EEEE.w		; 0C EE EE
	tsb $06F2.w		; 0C F2 06
	sbc ($BF.b)		; F2 BF
	beq -27.b		; F0 E5
	inc A		; 1A
	beq  15.b		; F0 0F
	sbc ($0D.b)		; F2 0D
	tda		; 7B
	cpy #$0EF8.w		; C0 F8 0E
	sbc $FE00FA.l,X		; FF FA 00 FE
	and $F5005E.l,X		; 3F 5E 00 F5
	php		; 08
	tda		; 7B
	sty $31.b		; 84 31
	dec $FFF7.w		; CE F7 FF
	bcc 111.b		; 90 6F
	cpx $EA.b		; E4 EA
	jsr $AA29.w		; 20 29 AA
	sbc $0BE8E0.l,X		; FF E0 E8 0B
	sbc $5FDB80.l,X		; FF 80 DB 5F
	inc $F8FF.w,X		; FE FF F8
	adc $DFE602.l		; 6F 02 E6 DF
	ora $00.b,S		; 03 00
	asl $3402.w		; 0E 02 34
	tsb $09.b		; 04 09
	sbc ($FF.b),Y		; F1 FF
	adc ($A3.b,X)		; 61 A3
	cld		; D8
	phd		; 0B
	ora $8E1C2F.l		; 0F 2F 1C 8E
	ora ($7F.b,X)		; 01 7F
	ora ($07.b,X)		; 01 07
	jsr ($8200.w,X)		; FC 00 82
	adc $E1DAFF.l,X		; 7F FF DA E1
	ora $C004.w		; 0D 04 C0
	cpy #$7070.w		; C0 70 70
.ACCU 8
.INDEX 8
	sep #$FD		; E2 FD
	adc $F900.w,X		; 7D 00 F9
	cop $F0.b		; 02 F0
	adc $E17FFF.l		; 6F FF 7F E1
	cmp $80B7C2.l,X		; DF C2 B7 80
	and $0CF320.l,X		; 3F 20 F3 0C
	sbc [$08.b],Y		; F7 08
	sbc $EB03.w,X		; FD 03 EB
	inc A		; 1A
	asl $C7DF.w,X		; 1E DF C7
	stx $E1.b,Y		; 96 E1
	sei		; 78
	ora ($C0.b,X)		; 01 C0
	ora [$71.b]		; 07 71
	sbc ($FC.b),Y		; F1 FC
	brk $E0.b		; 00 E0
	tsb $2E.b		; 04 2E
	.db $82, $36, $B0		; 82 36 B0
	asl $E9.b		; 06 E9
	sbc $DC.b,X		; F5 DC
	sbc ($C0.b),Y		; F1 C0
	sbc ($FF.b),Y		; F1 FF
	ldx #$FC.b		; A2 FC
	bmi  96.b		; 30 60
	and $D9DD.w,X		; 3D DD D9
	and $FFF3C5.l,X		; 3F C5 F3 FF
	sbc $F800C0.l,X		; FF C0 00 F8
	trb $FD.b		; 14 FD
	dec $6310.w,X		; DE 10 63
	sed		; F8
	tsb $40ED.w		; 0C ED 40
	sed		; F8
	ora $6B0035.l,X		; 1F 35 00 6B
	brk $E3.b		; 00 E3
	sbc $370077.l,X		; FF 77 00 37
	sta ($2E.b),Y		; 91 2E
	brk $2D.b		; 00 2D
	brk $25.b		; 00 25
	brk $1B.b		; 00 1B
	tas		; 1B
	and [$7B.b],Y		; 37 7B
	pea $2F37.w		; F4 37 2F
	and $1FF204.l		; 2F 04 F2 1F
	ora $68FF1E.l,X		; 1F 1E FF 68
	cpx $BD.b		; E4 BD
	brk $46.b		; 00 46
	sbc $7B.b		; E5 7B
	jmp $FE53E1.l		; 5C E1 53 FE
	ror $F0.b		; 66 F0
	ora #$FA.b		; 09 FA
	sbc $8FE0.w		; ED E0 8F
	cmp [$FB.b]		; C7 FB
	tsb $DF.b		; 04 DF
	tsb $BB.b		; 04 BB
	sed		; F8
	stp		; DB
	tsb $FD.b		; 04 FD
	sbc $F9FFE3.l,X		; FF E3 FF F9
	sbc $FFF1.w,Y		; F9 F1 FF
	sbc $F1.b,X		; F5 F1
	lda ($B1.b),Y		; B1 B1
	ldy $B0.b,X		; B4 B0
	cpx $00.b		; E4 00
	phx		; DA
	sbc $E302FF.l,X		; FF FF 02 E3
	and $D7.b,S		; 23 D7
	lsr $DE.b		; 46 DE
	eor #$DB.b		; 49 DB
	eor [$F5.b],Y		; 57 F5
	lsr $1DEA.w		; 4E EA 1D
	stp		; DB
	stp		; DB
	lda $FF.b		; A5 FF
	adc $809CA5.l,X		; 7F A5 9C 80
	sec		; 38
	brk $31.b		; 00 31
	brk $27.b		; 00 27
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	brk $BF.b		; 00 BF
	brk $9F.b		; 00 9F
	eor $03.b,S		; 43 03
	dec $D9.b		; C6 D9
	stp		; DB
	ldx $E080.w,Y		; BE 80 E0
	nop		; EA
	adc [$FA.b],Y		; 77 FA
	dec $FF.b		; C6 FF
	sbc $BFFF3F.l,X		; FF 3F FF BF
	and $033BBB.l,X		; 3F BB 3B 03
	ora $38.b,S		; 03 38
	sec		; 38
	ora $FD.b		; 05 FD
	stp		; DB
	bit $C6.b		; 24 C6
	dec $D613.w,X		; DE 13 D6
	xba		; EB
	sbc $DF0AF8.l,X		; FF F8 0A DF
	cmp $0B5F5F.l,X		; DF 5F 5F 0B
	eor $80.b,X		; 55 80
	brk $40.b		; 00 40
	asl $DB.b		; 06 DB
	inc $FAA0.w,X		; FE A0 FA
	cmp ($F8.b,S),Y		; D3 F8
	sbc #$FF.b		; E9 FF
	sbc $7FFD.w,X		; FD FD 7F
	plx		; FA
	pei ($DE.b)		; D4 DE
	iny		; C8
	eor $07.b,S		; 43 07
	ora $0F.b,S		; 03 0F
	ora $1F.b,S		; 03 1F
	phd		; 0B
	and $1B3D1B.l,X		; 3F 1B 3D 1B
	dec A		; 3A
	ora $FFE1.w,X		; 1D E1 FF
.ACCU 8
	sep #$E3		; E2 E3
	adc [$03.b]		; 67 03
	cop $0B.b		; 02 0B
	php		; 08
	tas		; 1B
	clc		; 18
	tas		; 1B
	bpl  29.b		; 10 1D
	pea $487F.w		; F4 7F 48
	trb $FC.b		; 14 FC
	bit $F8.b		; 24 F8
	plp		; 28
	jsr ($FF28.w,X)		; FC 28 FF
	inc $0F50.w,X		; FE 50 0F
	and ($FE.b),Y		; 31 FE
	brk $3F.b		; 00 3F
	jsr $FE7F.w		; 20 7F FE
	plp		; 28
	inc $8450.w,X		; FE 50 84
	sbc $FE7EFE.l,X		; FF FE 7E FE
	ora ($00.b)		; 12 00
	and $315700.l		; 2F 00 57 31
	eor $FFFF0A.l		; 4F 0A FF FF
	dec $9D40.w,X		; DE 40 9D
	brk $9A.b		; 00 9A
	sta ($04.b,X)		; 81 04
	ora ($0F.b,X)		; 01 0F
	cpx #$1F.b		; E0 1F
	cpy #$0E.b		; C0 0E
	bra  53.b		; 80 35
	bra  -1.b		; 80 FF
	and $7E003F.l,X		; 3F 3F 00 7E
	brk $7C.b		; 00 7C
	ora ($F8.b,X)		; 01 F8
	ora $76.b,S		; 03 76
	ora ($D8.b,X)		; 01 D8
	ora ($B0.b,S),Y		; 13 B0
	cmp [$A0.b]		; C7 A0
	sed		; F8
	eor $32EB.w,X		; 5D EB 32
	sbc ($03.b,S),Y		; F3 03
	sbc $E001F8.l,X		; FF F8 01 E0
	adc ($E1.b,S),Y		; 73 E1
	cpy #$1F.b		; C0 1F
	jsl $FF84F1.l		; 22 F1 84 FF
	ora ($F0.b,S),Y		; 13 F0
	and $FF04C2.l,X		; 3F C2 04 FF
	ora #$FF.b		; 09 FF
	ora ($FF.b)		; 12 FF
	adc $FF24F0.l,X		; 7F F0 24 FF
	pha		; 48
	sbc $22FE91.l,X		; FF 91 FE 22
	sbc $F0EC.w,X		; FD EC F0
	sed		; F8
	ora #$90.b		; 09 90
	inc $FFFF.w,X		; FE FF FF
	jsr $FFFD.w		; 20 FD FF
	rts		; 60

	lda $F907C0.l,X		; BF C0 07 F9
	tsa		; 3B
	cmp [$5F.b]		; C7 5F
	lda $777FBF.l,X		; BF BF 7F 77
	sed		; F8
	sbc $DB07.w,X		; FD 07 DB
	sbc [$D9.b]		; E7 D9
	sbc #$FE.b		; E9 FE
	brk $F9.b		; 00 F9
	ora $C7.b,S		; 03 C7
	ora $B01CBF.l		; 0F BF 1C B0
	brk $BF.b		; 00 BF
	lda ($F0.b,S),Y		; B3 F0
	sbc $261EF8.l,X		; FF F8 1E 26
	brk $2A.b		; 00 2A
	brk $1A.b		; 00 1A
	ora ($E0.b),Y		; 11 E0
	asl $E1.b		; 06 E1
	asl $87FE.w		; 0E FE 87
	inc $1D1D.w,X		; FE 1D 1D
	cmp [$86.b],Y		; D7 86
	ora $15.b,X		; 15 15
	ora $05.b		; 05 05
	rol $36D2.w,X		; 3E D2 36
	cpx $EC17.w		; EC 17 EC
	sbc #$27.b		; E9 27
	jsr ($FFFF.w,X)		; FC FF FF
	cop $13.b		; 02 13
	brk $13.b		; 00 13
	ora ($89.b,X)		; 01 89
	brk $CF.b		; 00 CF
	brk $FB.b		; 00 FB
	xce		; FB
	stp		; DB
	stp		; DB
	cmp $D8D9.w,Y		; D9 D9 D8
	sbc ($FF.b),Y		; F1 FF
	cld		; D8
	cpx $76FF.w		; EC FF 76
	ror $30.b,X		; 76 30
	bmi  59.b		; 30 3B
	tsb $3D.b		; 04 3D
	cop $1D.b		; 02 1D
	jsl $BEFFFF.l		; 22 FF FF BE
	brk $AE.b		; 00 AE
	brk $DE.b		; 00 DE
	brk $BE.b		; 00 BE
	iny		; C8
	inc $D4AC.w,X		; FE AC D4
	bne -46.b		; D0 D2
	bne -22.b		; D0 EA
	iny		; C8
	sbc $C9C8FF.l,X		; FF FF C8 C9
	pei ($C5.b)		; D4 C5
	and ($20.b,X)		; 21 20
	ora ($1E.b,X)		; 01 1E
	ora #$3E.b		; 09 3E
	cmp $3B.b,X		; D5 3B
	inc $DDB3.w		; EE B3 DD
	ror $FFFF.w		; 6E FF FF
	cmp ($37.b)		; D2 37
	cmp $42.b,S		; C3 42
	and $3AFF02.l,X		; 3F 02 FF 3A
	sbc $0038FA.l,X		; FF FA 38 00
	bmi -128.b		; 30 80
	jsr $0F80.w		; 20 80 0F
	lda $3C8308.l,X		; BF 08 83 3C
	ora $FE.b,S		; 03 FE
	inc $FE3B.w,X		; FE 3B FE
	xce		; FB
	plx		; FA
	cpy #$5C.b		; C0 5C
	ora $F1080F.l		; 0F 0F 08 F1
	sta $65FF63.l,X		; 9F 63 FF 65
	inc $64FE.w,X		; FE FE 64
	lda $0FFB64.l,X		; BF 64 FB 0F
	bra  35.b		; 80 23
	and $FB.b,S		; 23 FB
	dex		; CA
	rts		; 60

	jsr ($F460.w,X)		; FC 60 F4
	adc $74.b,S		; 63 74
	ora [$64.b]		; 07 64
	sta [$FF.b]		; 87 FF
	sty $C6.b		; 84 C6
	brk $33.b		; 00 33
	and $888DB0.l		; 2F B0 8D 88
	ora $30.b		; 05 30
	ora $30.b,X		; 15 30
	sta $FF.b,X		; 95 FF
	sbc [$30.b]		; E7 30
	cmp $3F3FDF.l,X		; DF DF 3F 3F
	cmp $0707CF.l		; CF CF 07 07
	adc ($03.b,S),Y		; 73 03
	wai		; CB
	inc $C636.w,X		; FE 36 C6
	bne -96.b		; D0 A0
	cmp $F168.w,Y		; D9 68 F1
	sbc ($F8.b,X)		; E1 F8
	inc $FCB8.w,X		; FE B8 FC
	pla		; 68
	sty $FFE0.w		; 8C E0 FF
	inc $CA.b		; E6 CA
	bcs  -1.b		; B0 FF
	bne -10.b		; D0 F6
	sbc $FF.b,S		; E3 FF
	cpx #$C8.b		; E0 C8
	adc $EA6AC0.l,X		; 7F C0 6A EA
	cpy #$F0.b		; C0 F0
	cpx #$F8.b		; E0 F8
	beq  -2.b		; F0 FE
	bmi -114.b		; 30 8E
	ora $EC70F8.l,X		; 1F F8 70 EC
	cpy #$C0.b		; C0 C0
	tad		; 5B
	bvs -16.b		; 70 F0
	bpl  48.b		; 10 30
	bra  13.b		; 80 0D
	sbc $E133F0.l,X		; FF F0 33 E1
	bmi  -2.b		; 30 FE
	ror $FF30.w,X		; 7E 30 FF
	ror $32FF.w,X		; 7E FF 32
	adc $3207DA.l,X		; 7F DA 07 32
	rts		; 60

	bne  21.b		; D0 15
	plx		; FA
	inc $E27E.w,X		; FE 7E E2
	sed		; F8
	ora ($FC.b)		; 12 FC
	brk $FE.b		; 00 FE
	jsr ($7AFC.w,X)		; FC FC 7A
	ora $FA.b		; 05 FA
	inc $1E0C.w,X		; FE 0C 1E
	tsb $F8C2.w		; 0C C2 F8
	ora ($6D.b,S),Y		; 13 6D
	cld		; D8
	ora #$DA.b		; 09 DA
	phd		; 0B
	sta $FF.b,S		; 83 FF
	sed		; F8
	ora ($FE.b),Y		; 11 FE
	dec $FD.b		; C6 FD
	inc $183C.w,X		; FE 3C 18
	inc $234A.w,X		; FE 4A 23
	dec $17C8.w,X		; DE C8 17
	ldy $C0FC.w,X		; BC FC C0
	sed		; F8
	ora ($40.b,S),Y		; 13 40
	jsr ($BC30.w,X)		; FC 30 BC
	.db $82, $AF, $3A		; 82 AF 3A
	sed		; F8
	dec $31F0.w,X		; DE F0 31
	ror $00.b		; 66 00
	sbc $F8FE66.l,X		; FF 66 FE F8
	ora #$7A.b		; 09 7A
	sbc ($D4.b,X)		; E1 D4
	sed		; F8
	ora $F800.w,X		; 1D 00 F8
	ora ($FF.b,S),Y		; 13 FF
	sed		; F8
	lda $347E.w,X		; BD 7E 34
	jmp ($F1C8.w,X)		; 7C C8 F1
	inc $307A.w,X		; FE 7A 30
	sbc $327F6A.l		; EF 6A 7F 32
	and $E01E1E.l,X		; 3F 1E 1E E0
	sed		; F8
	bpl  -1.b		; 10 FF
	ror $FE0C.w,X		; 7E 0C FE
	sec		; 38
	beq  11.b		; F0 0B
	sbc $1F09F8.l,X		; FF F8 09 1F
	adc $465D.w,X		; 7D 5D 46
	sbc ($44.b,S),Y		; F3 44
	sbc ($FC.b)		; F2 FC
	sec		; 38
	sed		; F8
	cpx #$00.b		; E0 00
	phx		; DA
	jsl $FC0EF0.l		; 22 F0 0E FC
	sbc $F8C6.w,X		; FD C6 F8
	asl $FF.b,X		; 16 FF
	ora [$FF.b]		; 07 FF
	jsr ($183D.w,X)		; FC 3D 18
	clv		; B8
	bpl  -8.b		; 10 F8
	bcs  -8.b		; B0 F8
	beq -16.b		; F0 F0
	rts		; 60

	jmp ($8AA8.w,X)		; 7C A8 8A
	ldy $801C.w,X		; BC 1C 80
	sed		; F8
	ora ($A4.b),Y		; 11 A4
	sbc #$FF.b		; E9 FF
	sed		; F8
	tas		; 1B
	sty $E9.b		; 84 E9
	cop $E8.b		; 02 E8
	.db $42, $C6		; 42 C6
	nop		; EA
	inc $C1B4.w,X		; FE B4 C1
	inx		; E8
	ora ($64.b,S),Y		; 13 64
	sbc ($70.b,X)		; E1 70
	eor $10783D.l,X		; 5F 3D 78 10
	sec		; 38
	bpl  -4.b		; 10 FC
	bpl  88.b		; 10 58
	nop		; EA
	ldy #$F8.b		; A0 F8
	bpl  12.b		; 10 0C
	sbc ($6F.b),Y		; F1 6F
	asl $0F.b		; 06 0F
	rol $FEA8.w,X		; 3E A8 FE
	inc $FC0C.w,X		; FE 0C FC
	sei		; 78
	pei ($00.b)		; D4 00
	sed		; F8
	ora $F8FF.w,Y		; 19 FF F8
	and $00.b,X		; 35 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B5.b		; 00 B5
	lda $FF00.w,Y		; B9 00 FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	and ($FF.b,X)		; 21 FF
	inc $7FFD.w,X		; FE FD 7F
	inc $3F37.w,X		; FE 37 3F
	dec $E0.b		; C6 E0
	sed		; F8
	ora ($FD.b)		; 12 FD
	cop $FF.b		; 02 FF
	ora ($FE.b,X)		; 01 FE
	ora $DC.b,S		; 03 DC
	ora ($FC.b,X)		; 01 FC
	sbc $FC03CF.l,X		; FF CF 03 FC
	jsr ($F8F8.w,X)		; FC F8 F8
	cpx $6CEC.w		; EC EC 6C
	jmp ($2424.w)		; 6C 24 24
	rol $26.b		; 26 26
	sbc $07E0FF.l,X		; FF FF E0 07
	jsr ($D52C.w,X)		; FC 2C D5
	cpx $807D.w		; EC 7D 80
	tad		; 5B
	ldx $6EBC.w		; AE BC 6E
	sbc $FE67.w,X		; FD 67 FE
	lda ($1F.b),Y		; B1 1F
	inc $8080.w,X		; FE 80 80
	eor ($50.b,S),Y		; 53 50
	ora $00.b,S		; 03 00
	inc $2C25.w,X		; FE 25 2C
	eor [$6E.b]		; 47 6E
	cop $66.b		; 02 66
	sbc $311143.l,X		; FF 43 11 31
	adc $7FFE26.l,X		; 7F 26 FE 7F
	sbc $FCFEFF.l,X		; FF FF FE FC
	sbc $80FEFE.l,X		; FF FE FE 80
	ora [$FE.b]		; 07 FE
	sbc $FF26FA.l,X		; FF FA 26 FF
	adc $F864F7.l,X		; 7F F7 64 F8
	sbc ($F0.b)		; F2 F0
	inc $50A7.w,X		; FE A7 50
	sbc $FF0F38.l		; EF 38 0F FF
	cmp $80CF30.l,X		; DF 30 CF 80
	lda $DF18B6.l,X		; BF B6 18 DF
	cld		; D8
	sbc $505FF8.l,X		; FF F8 5F 50
	eor $3007E3.l		; 4F E3 07 30
	and $6C3F20.l		; 2F 20 3F 6C
	clc		; 18
	sbc $FF3EF0.l,X		; FF F0 3E FF
	sbc $656639.l,X		; FF 39 66 65
	inc $65.b		; E6 65
	cmp [$44.b]		; C7 44
	sta [$00.b]		; 87 00
	sta $302F18.l,X		; 9F 18 2F 30
	ora $31C360.l		; 0F 60 C3 31
	jsr ($9B03.w,X)		; FC 03 9B
	inc $70BB.w,X		; FE BB 70
	ora [$E7.b]		; 07 E7
	ora [$CF.b]		; 07 CF
	ora $8F7FE9.l		; 0F E9 7F 8F
	ora $906F44.l,X		; 1F 44 6F 90
	and [$C8.b],Y		; 37 C8
	tas		; 1B
	cpx $09.b		; E4 09
	inc $80.b,X		; F6 80
	adc $FEAD00.l,X		; 7F 00 AD FE
	lda $FF.b		; A5 FF
	sed		; F8
	ora $F0D2.w		; 0D D2 F0
	eor $F001.w		; 4D 01 F0
	sed		; F8
	ora $EFE150.l		; 0F 50 E1 EF
	sbc $C007F7.l,X		; FF F7 07 C0
	sbc ($91.b),Y		; F1 91
	sed		; F8
	ora #$E6.b		; 09 E6
	ora [$07.b]		; 07 07
	plp		; 28
	lda #$7F.b		; A9 7F
	adc ($F2.b)		; 72 F2
	jsr ($FEE6.w,X)		; FC E6 FE
	jsr ($FDF0.w,X)		; FC F0 FD
	ror $58BF.w,X		; 7E BF 58
	sbc $C0FCF0.l,X		; FF F0 FC C0
	brk $F8.b		; 00 F8
	brk $FE.b		; 00 FE
	cpx #$F8.b		; E0 F8
	asl A		; 0A
	cpy #$C0.b		; C0 C0
	sed		; F8
	sed		; F8
	inc $7EB6.w,X		; FE B6 7E
	cmp $40F1.w,Y		; D9 F1 40
	sed		; F8
	ora $F88080.l		; 0F 80 80 F8
	asl $EF80.w		; 0E 80 EF
	sed		; F8
	ora $30F8FF.l		; 0F FF F8 30
	and ($00.b,S),Y		; 33 00
	tas		; 1B
	brk $0D.b		; 00 0D
	cmp $D2.b		; C5 D2
	cpx #$E8.b		; E0 E8
	tas		; 1B
	asl A		; 0A
	sbc ($FE.b)		; F2 FE
	ora $12F80C.l,X		; 1F 0C F8 12
	sbc $FFFF1C.l,X		; FF 1C FF FF
	inc A		; 1A
	lda ($80.b),Y		; B1 80
	cmp $6B49.w,X		; DD 49 6B
	plb		; AB
	cmp $173F27.l,X		; DF 27 3F 17
	and [$13.b]		; 27 13
	and [$0B.b],Y		; 37 0B
	xce		; FB
	beq  -1.b		; F0 FF
	inc A		; 1A
	trb $3E.b		; 14 3E
	php		; 08
	ora $475F0B.l,X		; 1F 0B 5F 47
	ora $232F07.l		; 0F 07 2F 23
	and [$F8.b],Y		; 37 F8
	adc $3F3D33.l,X		; 7F 33 3D 3F
	adc $F5FF39.l,X		; 7F 39 FF F5
	sbc [$73.b],Y		; F7 73
	lda $EFFF3F.l,X		; BF 3F FF EF
	stx $3F.b		; 86 3F
	ora $39F8.w		; 0D F8 39
	tda		; 7B
	adc ($FF.b),Y		; 71 FF
	adc ($DF.b,S),Y		; 73 DF
	ora $F03C37.l,X		; 1F 37 3C F0
	jsr ($E9E4.w,X)		; FC E4 E9
	sbc $FCFA.w,X		; FD FA FC
	sbc $F9FB.w,Y		; F9 FB F9
	bit $DAFD.w		; 2C FD DA
	sbc $E3.b,X		; F5 E3
	inc $EA.b		; E6 EA
	inc $F8FE.w		; EE FE F8
	inc $FAFA.w,X		; FE FA FA
	sbc $FCF2F7.l,X		; FF F7 F2 FC
	cpx $2F.b		; E4 2F
	cpy #$83.b		; C0 83
	brk $C7.b		; 00 C7
	brk $93.b		; 00 93
	brk $BB.b		; 00 BB
	jmp $1F0FED.l		; 5C ED 0F 1F
	sbc $7F0387.l,X		; FF 87 03 7F
	eor [$7F.b]		; 47 7F
	sta $EF.b,S		; 83 EF
	plb		; AB
	sbc $FFCFCF.l		; EF CF CF FF
	adc $1FE1FE.l,X		; 7F FE E1 1F
	cpy #$3F.b		; C0 3F
	inc $1FE0.w,X		; FE E0 1F
	bcs  79.b		; B0 4F
	bne  47.b		; D0 2F
	iny		; C8
	and [$B6.b],Y		; 37 B6
	xce		; FB
	inc $E2.b,X		; F6 E2
	ora $F000.w,X		; 1D 00 F0
	and $F020.w,X		; 3D 20 F0
	sed		; F8
	ora $280320.l		; 0F 20 03 28
	sbc ($0E.b),Y		; F1 0E
	ora ($18.b,X)		; 01 18
	inc $070F.w,X		; FE 0F 07
	sta $E9.b		; 85 E9
	ora $843F40.l,X		; 1F 40 3F 84
	tda		; 7B
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora $7BD203.l		; 0F 03 D2 7B
	ora $FF2A3F.l,X		; 1F 3F 2A FF
	sta $ABBFBF.l,X		; 9F BF BF AB
	rti		; 40

	adc $30CF90.l		; 6F 90 CF 30
	sta $7A.b		; 85 7A
	cmp $0CF2.w,Y		; D9 F2 0C
	sbc ($80.b,S),Y		; F3 80
	sed		; F8
	ora $0EF608.l		; 0F 08 F6 0E
	ror $FFFE.w,X		; 7E FE FF
	cpx #$F8.b		; E0 F8
	inc A		; 1A
	cmp $E1FE20.l,X		; DF 20 FE E1
	sed		; F8
	ora $E000C0.l		; 0F C0 00 E0
	brk $F0.b		; 00 F0
	sbc $FF.b,S		; E3 FF
.ACCU 8
	sep #$E9		; E2 E9
	jsr ($EEFE.w,X)		; FC FE EE
	bpl -29.b		; 10 E3
	trb $C0C0.w		; 1C C0 C0
	cpx #$E0.b		; E0 E0
	beq  71.b		; F0 47
	sbc $F8F0.w,X		; FD F0 F8
	sed		; F8
	jsr ($DEFF.w,X)		; FC FF DE
	nop		; EA
	cpy #$D8.b		; C0 D8
	adc $330D37.l,X		; 7F 37 0D 33
	asl $BF.b		; 06 BF
	sbc $23181B.l,X		; FF 1B 18 23
	brk $49.b		; 00 49
	brk $5D.b		; 00 5D
	inc A		; 1A
	xba		; EB
	ora ($11.b,S),Y		; 13 11
	ora ($18.b),Y		; 11 18
	brk $3C.b		; 00 3C
	jsr $BFBF.w		; 20 BF BF
	bit $3600.w,X		; 3C 00 36
	php		; 08
	rol A		; 2A
	ora $1819.w,Y		; 19 19 18
	cpx $3F7F.w		; EC 7F 3F
	lda $05F966.l		; AF 66 F9 05
	ora $F80086.l,X		; 1F 86 00 F8
	asl A		; 0A
	and $1A061F.l,X		; 3F 1F 06 1A
	clc		; 18
	dec A		; 3A
	sbc $FF3EEF.l		; EF EF 3E FF
	sbc ($EA.b,X)		; E1 EA
	inc $D4DD.w		; EE DD D4
	lda $5C2E2C.l,X		; BF 2C 2E 5C
	cmp $E43A.w,Y		; D9 3A E4
	cmp [$00.b]		; C7 00
	sbc $02C1DF.l,X		; FF DF C1 02
	sbc ($E0.b),Y		; F1 E0
	xba		; EB
	iny		; C8
	cmp ($10.b,S),Y		; D3 10
	lda $20.b,S		; A3 20
	tsb $00.b		; 04 00
	bra -127.b		; 80 81
	xba		; EB
	cmp $FFC3.w,Y		; D9 C3 FF
	bit $003F.w,X		; 3C 3F 00
	xce		; FB
	eor $845300.l,X		; 5F 00 53 84
	cmp ($02.b),Y		; D1 02
	ldy #$50.b		; A0 50
	adc ($C3.b,X)		; 61 C3
	sbc $0387A0.l,X		; FF A0 87 03
	cpy $CF.b		; C4 CF
	ora $003393.l		; 0F 93 33 00
	plp		; 28
	ora ($6D.b,X)		; 01 6D
	brk $7D.b		; 00 7D
	bne -113.b		; D0 8F
	brk $F4.b		; 00 F4
	sbc #$F3.b		; E9 F3
	tsb $06F9.w		; 0C F9 06
	inc $D95C.w,X		; FE 5C D9
	lsr $F7E9.w,X		; 5E E9 F7
	ora [$FE.b]		; 07 FE
	sed		; F8
	cpx #$80.b		; E0 80
	iny		; C8
	inc $1F.b,X		; F6 1F
	ora $F8F010.l,X		; 1F 10 F0 F8
	sbc $0187F1.l,X		; FF F1 87 01
	rti		; 40

	sed		; F8
	ora $9E0031.l,X		; 1F 31 00 9E
	rol $C401.w,X		; 3E 01 C4
	jsr $FE1E.w		; 20 1E FE
	sed		; F8
	and $313196.l		; 2F 96 31 31
	and $FFFFC1.l,X		; 3F C1 FF FF
.INDEX 16
	rep #$1E		; C2 1E
	sbc ($2F.b)		; F2 2F
	and $9C5D5D.l		; 2F 5D 5D 9C
	adc $39.b,S		; 63 39
	dec $87.b		; C6 87
	sta $7B.b		; 85 7B
	sty $73.b		; 84 73
	sty $FB98.w		; 8C 98 FB
	tsb $40.b		; 04 40
	beq  17.b		; F0 11
	jmp.w [$4217]		; DC 17 42
	ora $3FE2.w,X		; 1D E2 3F
	cpy #$D989.w		; C0 89 D9
	sta [$08.b],Y		; 97 08
	inc $24FB.w,X		; FE FB 24
	sbc $DCEAFE.l,X		; FF FE EA DC
	cmp ($F3.b)		; D2 F3
	sbc ($F5.b,S),Y		; F3 F5
	sbc $F6.b,X		; F5 F6
	sbc ($05.b)		; F2 05
	ora ($F7.b,X)		; 01 F7
	sbc ($0A.b,S),Y		; F3 0A
	jsr ($C2C4.w,X)		; FC C4 C2
	jsr ($7E56.w,X)		; FC 56 7E
	dey		; 88
.ACCU 8
.INDEX 8
	sep #$FB		; E2 FB
	xce		; FB
	lda ($B3.b,S),Y		; B3 B3
	lda ($B1.b),Y		; B1 B1
	tya		; 98
	and $F0FF.w,Y		; 39 FF F0
	sbc $CF3838.l,X		; FF 38 38 CF
	bmi -18.b		; 30 EE
	ora ($E6.b),Y		; 11 E6
	ora $F1A2.w,Y		; 19 A2 F1
	asl $EFF8.w		; 0E F8 EF
	bit $07.b,X		; 34 07
	jsr ($FE03.w,X)		; FC 03 FE
	ora ($A6.b,X)		; 01 A6
	inc $BFBF.w,X		; FE BF BF
	jmp ($8F8F.w,X)		; 7C 8F 8F
	jsr ($E8E1.w,X)		; FC E1 E8
	beq  15.b		; F0 0F
	sei		; 78
	sta [$12.b]		; 87 12
	sbc $E303.w		; ED 03 E3
	jsr ($FB07.w,X)		; FC 07 FB
	bcs  -8.b		; B0 F8
	ora ($EC.b,S),Y		; 13 EC
	jsr $11E8.w		; 20 E8 11
	bra   0.b		; 80 00
	rti		; 40

	bra  -2.b		; 80 FE
	jsr $C6C0.w		; 20 C0 C6
	tay		; A8
	cld		; D8
	cpx $DAEC.w		; EC EC DA
	cpy #$FF.b		; C0 FF
	cpx #$FF.b		; E0 FF
	cld		; D8
	nop		; EA
	rts		; 60

	eor $D80E.w,X		; 5D 0E D8
	eor ($FE.b,X)		; 41 FE
	jsr ($0FE2.w,X)		; FC E2 0F
	dec $B1F3.w,X		; DE F3 B1
	pea $0101.w		; F4 01 01
	plx		; FA
	cpx #$09.b		; E0 09
	ora $EE44FB.l,X		; 1F FB 44 EE
	inc $E700.w,X		; FE 00 E7
	cop $FE.b		; 02 FE
	.db $42, $6A		; 42 6A
	jsr ($FEFE.w,X)		; FC FE FE
	beq  63.b		; F0 3F
	jsr ($E2F1.w,X)		; FC F1 E2
	sbc $029F82.l,X		; FF 82 9F 02
	eor $00FCE8.l,X		; 5F E8 FC 00
	sbc ($00.b)		; F2 00
	sta [$E1.b]		; 87 E1
	beq   0.b		; F0 00
	ora $BE.b		; 05 BE
	ora ($0E.b,X)		; 01 0E
	brk $FE.b		; 00 FE
	jsr ($F0FD.w,X)		; FC FD F0
	sta $80F3E3.l		; 8F E3 F3 80
	sta $CF7E00.l		; 8F 00 7E CF
	jsr ($FE01.w,X)		; FC 01 FE
	adc $001FFF.l,X		; 7F FF 1F 00
	cmp ($40.b)		; D2 40
	ldy $00.b,X		; B4 00
	clv		; B8
	sty $61.b		; 84 61
	php		; 08
	sbc ($01.b,S),Y		; F3 01
	dec $02.b,X		; D6 02
	ldy $FFFE.w		; AC FE FF
	cmp $3C80.w,Y		; D9 80 3C
	ora ($78.b,X)		; 01 78
	ora $70.b,S		; 03 70
	ora $F0.b,S		; 03 F0
	ora [$E1.b]		; 07 E1
	ora $C40FE2.l		; 0F E2 0F C4
	sbc $1F1EFF.l,X		; FF FF 1E 1F
	asl $1938.w		; 0E 38 19
	adc ($36.b),Y		; 71 36
	inc $69.b		; E6 69
	wai		; CB
	cmp [$B7.b],Y		; D7 B7
	sta $EB2F7F.l		; 8F 7F 2F EB
	sbc $0E5CFF.l,X		; FF FF 5C 0E
	sbc $30FE18.l,X		; FF 18 FE 30
	sed		; F8
	rts		; 60

	sbc ($C1.b),Y		; F1 C1
	sbc [$81.b]		; E7 81
	cmp $00AF00.l		; CF 00 AF 00
	adc $0F5C08.l		; 6F 08 5C 0F
	bmi  -9.b		; 30 F7
	ora $09D0B3.l		; 0F B3 D0 09
	ror $C0FD.w,X		; 7E FD C0
	brk $45.b		; 00 45
	sta [$6B.b],Y		; 97 6B
	sbc $F304E1.l,X		; FF E1 04 F3
	beq -119.b		; F0 89
	ldy $FF.b		; A4 FF
	sed		; F8
	asl $FE2A.w,X		; 1E 2A FE
	ldy $DA.b		; A4 DA
	sec		; 38
	sed		; F8
	jsr $FF1B.w		; 20 1B FF
	ora [$17.b],Y		; 17 17
	php		; 08
	php		; 08
	trb $FCFF.w		; 1C FF FC
	eor $02225A.l,X		; 5F 5A 22 02
	sbc $D6F803.l,X		; FF 03 F8 D6
	sta $FDFD.w,Y		; 99 FD FD
	.db $82, $E2, $82		; 82 E2 82
	adc ($1A.b,X)		; 61 1A
	sbc $FE08F9.l,X		; FF F9 08 FE
	sbc $1C3B08.l,X		; FF 08 3B 1C
	pha		; 48
	sbc ($05.b),Y		; F1 05
	ply		; 7A
	sbc #$C2.b		; E9 C2
	sbc $F6F172.l,X		; FF 72 F1 F6
	beq -62.b		; F0 C2
	sbc ($FF.b,X)		; E1 FF
	adc ($5F.b,X)		; 61 5F
	pea $9090.w		; F4 90 90
	ldx #$88.b		; A2 88
	dey		; 88
	sbc $02FDFF.l,X		; FF FF FD 02
	jsr ($7F02.w,X)		; FC 02 7F
	sta ($7B.b,X)		; 81 7B
	cpy #$BA.b		; C0 BA
	cmp $6E.b		; C5 6E
	lda ($D6.b,X)		; A1 D6
	eor $9EAD.w,X		; 5D AD 9E
	sbc $181A3F.l,X		; FF 3F 1A 18
	tsa		; 3B
	sec		; 38
	bne  80.b		; D0 50
	cpx $20.b		; E4 20
	sbc ($21.b,X)		; E1 21
	sta ($01.b),Y		; 91 01
	and ($05.b,X)		; 21 05
	.db $62, $FC, $FF		; 62 FC FF
	and ($60.b),Y		; 31 60
	sbc [$38.b],Y		; F7 38
	sbc [$0A.b],Y		; F7 0A
	ora $1DE4.w,X		; 1D E4 1D
	sbc $E8D8.w		; ED D8 E8
	sbc $FFFFE8.l,X		; FF E8 FF FF
	sbc [$C8.b],Y		; F7 C8
	ora $07070F.l		; 0F 0F 07 07
	ora $05.b		; 05 05
	sbc $E1.b,S		; E3 E1
.ACCU 8
	sep #$E0		; E2 E0
	and [$E0.b]		; 27 E0
	cmp [$E0.b]		; C7 E0
	ora $C84F40.l		; 0F 40 4F C8
	phd		; 0B
	pea $ACCF.w		; F4 CF AC
	stz $BFA1.w,X		; 9E A1 BF
	stx $80.b		; 86 80
	lsr $805F.w,X		; 5E 5F 80
	inx		; E8
	asl A		; 0A
	and $03832F.l		; 2F 2F 83 03
	lda ($13.b,S),Y		; B3 13
	ora $75.b		; 05 75
	inc $DC.b		; E6 DC
	inc $CDC2.w,X		; FE C2 CD
	inc $DEE6.w,X		; FE E6 DE
	rep #$CC		; C2 CC
	cpx #$D8.b		; E0 D8
	adc ($10.b,X)		; 61 10
	cpx #$18.b		; E0 18
	inc $08FE.w,X		; FE FE 08
	beq  -2.b		; F0 FE
	plp		; 28
	bne  60.b		; D0 3C
	cpy #$14.b		; C0 14
	inx		; E8
	ora $E0.b,X		; 15 E0
	tsb $F8.b		; 04 F8
	dey		; 88
	cpx $FCFF.w		; EC FF FC
	stz $FF.b,X		; 74 FF
	phb		; 8B
	mvp $7F,$FF		; 44 FF 7F
	eor [$A0.b]		; 47 A0
	cmp [$E0.b],Y		; D7 E0
	xba		; EB
	beq  -9.b		; F0 F7
	sed		; F8
	xce		; FB
	jsr ($FC7B.w,X)		; FC 7B FC
	cmp $063E.w,X		; DD 3E 06
	rol $FF.b,X		; 36 FF
	sbc $EBC141.l		; EF 41 C1 EB
	cmp ($F5.b,X)		; C1 F5
	sbc $FB.b,S		; E3 FB
	adc $FF.b,S		; 63 FF
	and ($FE.b)		; 32 FE
	php		; 08
	rol $F87E.w,X		; 3E 7E F8
	eor ($30.b,X)		; 41 30
	cmp $C3.b,S		; C3 C3
	brk $78.b		; 00 78
	bmi  -2.b		; 30 FE
	ror $FF30.w,X		; 7E 30 FF
	ror $7FAF.w,X		; 7E AF 7F
	eor ($ED.b)		; 52 ED
	and ($4A.b)		; 32 4A
	cpy #$19.b		; C0 19
	plx		; FA
	ror $F8E2.w,X		; 7E E2 F8
	ora ($C2.b)		; 12 C2
	sbc ($FC.b),Y		; F1 FC
	ldy $FCF3.w,X		; BC F3 FC
	eor [$65.b],Y		; 57 65
	inc $1E0C.w,X		; FE 0C 1E
	tsb $E0FE.w		; 0C FE E0
	ora $D4.b,X		; 15 D4
	sed		; F8
	ora #$FF.b		; 09 FF
	sed		; F8
	ora ($84.b),Y		; 11 84
	sbc ($C6.b),Y		; F1 C6
	clc		; 18
	mvn $3C,$FE		; 54 FE 3C
	clc		; 18
	inc $F880.w,X		; FE 80 F8
	ora ($F0.b,S),Y		; 13 F0
	lda ($CB.b),Y		; B1 CB
	cmp $FF.b		; C5 FF
	sbc $C0.b,S		; E3 C0
	sed		; F8
	ora ($14.b),Y		; 11 14
	brk $3E.b		; 00 3E
	trb $FE.b		; 14 FE
	trb $FC.b		; 14 FC
	inx		; E8
	jsr ($38C4.w,X)		; FC C4 38
	rts		; 60

	lda [$10.b]		; A7 10
	sec		; 38
	cpx #$A8.b		; E0 A8
	sta $DDA080.l		; 8F 80 A0 DD
	ldy #$40.b		; A0 40
	inc $FD05.w,X		; FE 05 FD
	bpl -32.b		; 10 E0
	stx $FCBA.w		; 8E BA FC
	stz $9ADC.w		; 9C DC 9A
	phx		; DA
	asl $8EF0.w		; 0E F0 8E
	bvs  31.b		; 70 1F
	dec $7886.w,X		; DE 86 78
	dec $38.b		; C6 38
	sbc [$18.b]		; E7 18
	inc $0877.w,X		; FE 77 08
	tas		; 1B
	tsb $82.b		; 04 82
	inx		; E8
	ora #$DF.b		; 09 DF
	phd		; 0B
	adc $9E1E7F.l,X		; 7F 7F 1E 9E
	asl $60EE.w		; 0E EE 60
	sed		; F8
	eor $7C347E.l,X		; 5F 7E 34 7C
	cop $F1.b		; 02 F1
	adc $7AFEAB.l,X		; 7F AB FE 7A
	bmi 127.b		; 30 7F
	and ($3F.b)		; 32 3F
	asl $401E.w,X		; 1E 1E 40
	clv		; B8
	ora ($7E.b),Y		; 11 7E
	tsb $38F6.w		; 0C F6 38
	beq  11.b		; F0 0B
	tsx		; BA
	ldx $E000.w		; AE 00 E0
	asl A		; 0A
	lsr $F3.b		; 46 F3
	mvp $FC,$F2		; 44 F2 FC
	sec		; 38
	eor $E9.b,S		; 43 E9
	jsl $FC11F0.l		; 22 F0 11 FC
	sbc $F8C6.w,X		; FD C6 F8
	asl $FF.b,X		; 16 FF
	ora $FF.b,S		; 03 FF
	jsr ($183D.w,X)		; FC 3D 18
	clv		; B8
	bpl  -8.b		; 10 F8
	bcs  -8.b		; B0 F8
	beq -16.b		; F0 F0
	rts		; 60

	jmp ($A354.w,X)		; 7C 54 A3
	ldy $C01C.w,X		; BC 1C C0
	sed		; F8
	ora ($0C.b)		; 12 0C
	sbc ($BA.b)		; F2 BA
	cmp ($01.b,S),Y		; D3 01
	inc $3FC3.w,X		; FE C3 3F
	cpx #$F8.b		; E0 F8
	bpl 112.b		; 10 70
	jsr $F8C6.w		; 20 C6 F8
	bvs  -8.b		; 70 F8
	bne  -4.b		; D0 FC
	cld		; D8
	jmp.w [$5488]		; DC 88 54
	brk $FE.b		; 00 FE
	sty $9874.w		; 8C 74 98
	bvc   0.b		; 50 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	ora $F8FF00.l		; 0F 00 FF F8
	lda ($01.b,X)		; A1 01
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	ora [$0F.b]		; 07 0F
	ora $787B1F.l		; 0F 1F 7B 78
	inc $1FFF.w,X		; FE FF 1F
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	bpl  62.b		; 10 3E
	rol $FFFF.w,X		; 3E FF FF
	sed		; F8
	sed		; F8
	inc $C0FE.w,X		; FE FE C0
	asl $FC.b		; 06 FC
	sbc [$FF.b],Y		; F7 FF
	xba		; EB
	jsr ($CB07.w,X)		; FC 07 CB
	pea $FCFF.w		; F4 FF FC
	sbc $C0C0FD.l,X		; FF FD C0 C0
	beq 112.b		; F0 70
	sei		; 78
	clc		; 18
	trb $0E0C.w		; 1C 0C 0E
	inc $FB.b		; E6 FB
	cmp $FBFBE7.l,X		; DF E7 FB FB
	sbc $80FC.w		; ED FC 80
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $18.b		; 00 18
	brk $04.b		; 00 04
	adc $F8.b,S		; 63 F8
	rti		; 40

	cmp $87.b,S		; C3 87
	and [$0D.b],Y		; 37 0D
	ora [$FE.b],Y		; 17 FE
	tsb $0803.w		; 0C 03 08
	ora $0B.b,S		; 03 0B
	lsr $621F.w,X		; 5E 1F 62
	ora [$0D.b]		; 07 0D
	ora $05.b,S		; 03 05
	cop $00.b		; 02 00
	inc $8403.w,X		; FE 03 84
	ora [$00.b]		; 07 00
	sed		; F8
	jmp $47FF.w		; 4C FF 47
	ora ($FF.b,X)		; 01 FF
	rol $FF7E.w,X		; 3E 7E FF
	ora $7FFF7E.l		; 0F 7E FF 7F
	eor [$7B.b]		; 47 7B
	ora [$FB.b]		; 07 FB
	sta [$FB.b]		; 87 FB
	cmp [$FF.b]		; C7 FF
	sbc $FFF1BF.l		; EF BF F1 FF
	beq  -1.b		; F0 FF
	beq -121.b		; F0 87
	ora $27.b,S		; 03 27
	and $B7.b,S		; 23 B7
	lda ($BF.b,S),Y		; B3 BF
	lda $0797D7.l,X		; BF D7 97 07
	sed		; F8
	sbc $D8DFD8.l,X		; FF D8 DF D8
	eor ($43.b,X)		; 41 43
	sbc $F8FAFA.l,X		; FF FA FA F8
	ora [$84.b]		; 07 84
	xce		; FB
	jsr ($F2F7.w,X)		; FC F7 F2
	beq  -2.b		; F0 FE
	sbc ($1F.b)		; F2 1F
	inc $FCF8.w,X		; FE F8 FC
	sed		; F8
	sbc $F9F8.w,X		; FD F8 F9
	inc $F1F0.w,X		; FE F0 F1
	plp		; 28
	lda ($11.b,X)		; A1 11
	dec $FF.b		; C6 FF
	sbc $068920.l,X		; FF 20 89 06
	eor #$06.b		; 49 06
	sbc $17F800.l		; EF 00 F8 17
	clv		; B8
	ora [$C6.b],Y		; 17 C6
	brk $CE.b		; 00 CE
	brk $99.b		; 00 99
	ora $760000.l		; 0F 00 00 76
	asl $F6.b		; 06 F6
	asl $40.b		; 06 40
	bit $FFFF.w,X		; 3C FF FF
	inc $A8B5.w,X		; FE B5 A8
	plp		; 28
	bpl 104.b		; 10 68
	bvc -48.b		; 50 D0
	ldy #$91.b		; A0 91
	rts		; 60

	jsl $8142C1.l		; 22 C1 42 81
	.db $82, $01, $FD		; 82 01 FD
	ora ($40.b,X)		; 01 40
	ora ($22.b),Y		; 11 22
	sbc $0F09F8.l,X		; FF F8 09 0F
	sbc $387F8F.l,X		; FF 8F 7F 38
	ldy $FEA7.w,X		; BC A7 FE
	eor [$BF.b],Y		; 57 BF
	inc $BF5F.w,X		; FE 5F BF
	eor $D0F0BF.l		; 4F BF F0 D0
	ora $36F8.w,Y		; 19 F8 36
	pld		; 2B
	asl $04.b		; 06 04
	asl $1E06.w		; 0E 06 1E
	ora $1CF8DA.l		; 0F DA F8 1C
	sbc $B5.b,X		; F5 B5
	sta $83.b,S		; 83 83
	bra -11.b		; 80 F5
	sbc $0710F8.l,X		; FF F8 10 07
	ora [$3F.b]		; 07 3F
	and $E0F261.l,X		; 3F 61 F2 E0
	sed		; F8
	bpl   1.b		; 10 01
	eor $66.b,S		; 43 66
	cmp ($F1.b)		; D2 F1
	ora $FC.b,S		; 03 FC
	asl $FE.b		; 06 FE
.ACCU 8
	sep #$E0		; E2 E0
	brk $FF.b		; 00 FF
	sbc $FFFE.w		; ED FE FF
	sbc $DD48BF.l,X		; FF BF 48 DD
	.db $62, $9E, $63		; 62 9E 63
	sbc ($C3.b,X)		; E1 C3
	jsr ($E703.w,X)		; FC 03 E7
	lda [$D8.b],Y		; B7 D8
	sbc $FCFE.w,Y		; F9 FE FC
	sbc $5FE0.w,Y		; F9 E0 5F
	jsr ($F740.w,X)		; FC 40 F7
	cop $EF.b		; 02 EF
	brk $6F.b		; 00 6F
	and ($F6.b,X)		; 21 F6
	cmp $FF7F.w		; CD 7F FF
	and $4AFFE1.l,X		; 3F E1 FF 4A
	and $187F80.l,X		; 3F 80 7F 18
	sbc [$84.b]		; E7 84
	tda		; 7B
	.db $42, $BD		; 42 BD
	and ($F5.b,X)		; 21 F5
	sbc $F1F7.w,X		; FD F7 F1
	lda $AC.b,S		; A3 AC
	sbc $7CFF.w,X		; FD FF 7C
	jsr ($FE3E.w,X)		; FC 3E FE
	asl $92FE.w,X		; 1E FE 92
	asl $FC33.w		; 0E 33 FC
	jmp $9799F2.l		; 5C F2 99 97
	sed		; F8
	asl A		; 0A
	sbc $0336F8.l,X		; FF F8 36 03
	asl $F1.b		; 06 F1
	.db $82, $77, $05		; 82 77 05
	inc $0408.w,X		; FE 08 04
	tsb $E9B0.w		; 0C B0 E9
	inc $FF8F.w,X		; FE 8F FF
	ldy $0FF8.w		; AC F8 0F
	sbc $DFDFB7.l,X		; FF B7 DF DF
	adc $FFBF.w,X		; 7D BF FF
	eor $252F6F.l,X		; 5F 6F 2F 25
	ora ($1F.b),Y		; 11 1F
	adc $CF000F.l,X		; 7F 0F 00 CF
	sta [$EF.b]		; 87 EF
	cmp $3F3F4D.l		; CF 4D 3F 3F
	ora $0E0F1F.l,X		; 1F 1F 0F 0E
	bit $E0FC.w,X		; 3C FC E0
	sbc $F4F8.w,X		; FD F8 F4
	inc $E4E9.w,X		; FE E9 E4
	dex		; CA
	dex		; CA
	sty $7F.b,X		; 94 7F
	sed		; F8
	inc $5B4C.w,X		; FE 4C 5B
	tsx		; BA
	sbc ($30.b),Y		; F1 30
	sbc ($F0.b,S),Y		; F3 F0
	inc $E0F2.w,X		; FE F2 E0
	sbc ($C0.b),Y		; F1 C0
	phd		; 0B
	and $8180E1.l,X		; 3F E1 80 81
	.db $62, $E9, $DE		; 62 E9 DE
	tda		; 7B
	mvn $90,$7C		; 54 7C 90
	sei		; 78
	bpl  13.b		; 10 0D
	eor $0068FE.l,X		; 5F FE 68 00
	inc $80E8.w,X		; FE E8 80
	ldy #$00.b		; A0 00
	rts		; 60

	php		; 08
	sbc ($21.b,S),Y		; F3 21
	bit $EA40.w,X		; 3C 40 EA
	inc $DC70.w,X		; FE 70 DC
	ora $84.b,S		; 03 84
	ora $44.b,S		; 03 44
	dec $FB.b		; C6 FB
	inc $FE24.w,X		; FE 24 FE
	jsl $2F0201.l		; 22 01 02 2F
	sed		; F8
	bpl  79.b		; 10 4F
	lda $DA7147.l,X		; BF 47 71 DA
	lda $21FE43.l,X		; BF 43 FE 21
	cmp $EF13FE.l,X		; DF FE 13 EF
	jsr $30F8.w		; 20 F8 30
	sbc $0607BF.l,X		; FF BF 07 06
	ora ($03.b,X)		; 01 03
	ora $2F2505.l,X		; 1F 05 25 2F
	jmp ($7A34.w)		; 6C 34 7A
	plp		; 28
	pea $E951.w		; F4 51 E9
	lda [$FD.b],Y		; B7 FD
	nop		; EA
	jsr ($001A.w,X)		; FC 1A 00
	bpl  70.b		; 10 46
	sbc ($06.b,S),Y		; F3 06
	ldy #$F1.b		; A0 F1
	adc $E7F29D.l,X		; 7F 9D F2 E7
	and [$99.b]		; 27 99
	adc [$6F.b]		; 67 6F
	and $59.b,S		; 23 59
	sbc $D1.b,S		; E3 D1
	sbc ($D1.b,S),Y		; F3 D1
	iny		; C8
	inc $7D40.w,X		; FE 40 7D
	sbc ($0C.b),Y		; F1 0C
	inc $BFFD.w,X		; FE FD BF
	sbc $BE.b,S		; E3 BE
	lda $773F3D.l,X		; BF 3D 3F 77
	adc $F5FF.w,Y		; 79 FF F5
	adc $E577F5.l		; 6F F5 77 E5
	inc $FF.b		; E6 FF
	cpx $FC.b		; E4 FC
	jmp $E008EE.l		; 5C EE 08 E0
	sta $8F8F9F.l,X		; 9F 9F 8F 8F
	stz $F69C.w		; 9C 9C F6
	inc $0090.w,X		; FE 90 00
	sbc [$F5.b],Y		; F7 F5
	sbc [$EA.b],Y		; F7 EA
	asl $FFFA.w,X		; 1E FA FF
	plp		; 28
	adc $B8.b,S		; 63 B8
	sbc $FE.b,X		; F5 FE
	sbc $FBF7F6.l,X		; FF F6 F7 FB
	xce		; FB
	adc ($71.b),Y		; 71 71
	jsr $0120.w		; 20 20 01
	ora [$3E.b],Y		; 17 3E
	ora ($F9.b,X)		; 01 F9
	sbc $E07B.w,X		; FD 7B E0
	sbc #$CC.b		; E9 CC
	tsb $00.b		; 04 00
	stx $DF00.w		; 8E 00 DF
	php		; 08
	and $F13AE6.l,X		; 3F E6 3A F1
	sbc $30DE21.l,X		; FF 21 DE 30
	cmp $0CD728.l		; CF 28 D7 0C
	sta $FE.b,S		; 83 FE
	bit $DB.b		; 24 DB
	inc $B54A.w,X		; FE 4A B5
	inc $1576.w,X		; FE 76 15
	rti		; 40

	sed		; F8
	ora $4FEA00.l		; 0F 00 EA 4F
	php		; 08
	sbc #$27.b		; E9 27
	cmp $63FCFE.l,X		; DF FE FC 63
	cld		; D8
	eor $00F20C.l		; 4F 0C F2 00
	bit $6E.b		; 24 6E
	clc		; 18
	jmp ($EAAA.w)		; 6C AA EA
	ror $F161.w		; 6E 61 F1
	and $18D8.w,Y		; 39 D8 18
	stz $01.b,X		; 74 01
	adc [$C0.b],Y		; 77 C0
	cpx #$0D.b		; E0 0D
	sbc $3171.w		; ED 71 31
	sbc $2060FF.l,X		; FF FF 60 20
	eor ($01.b,X)		; 41 01
	eor ($3E.b,X)		; 41 3E
	sbc $FE3C.w,X		; FD 3C FE
	sec		; 38
	jsr ($DDB4.w,X)		; FC B4 DD
	lda $0E.b,S		; A3 0E
	brk $FB.b		; 00 FB
	sbc $3E001F.l,X		; FF 1F 00 3E
	jmp $013EEA.l		; 5C EA 3E 01
	and $B703.w,Y		; 39 03 B7
	brk $80.b		; 00 80
	inc $9708.w		; EE 08 97
	inc A		; 1A
	sbc $6E9F1B.l,X		; FF 1B 9F 6E
	cmp $0C0FCE.l		; CF CE 0F 0C
	inc A		; 1A
	trb $D2.b		; 14 D2
	bcs 116.b		; B0 74
	inc $F1.b		; E6 F1
	rts		; 60

	inc $9B0F.w,X		; FE 0F 9B
	asl $FE30.w		; 0E 30 FE
	beq  -4.b		; F0 FC
	sbc ($F1.b,X)		; E1 F1
	ora $FB81.w		; 0D 81 FB
	ora $FF.b,S		; 03 FF
	beq -67.b		; F0 BD
	sbc ($00.b),Y		; F1 00
	tya		; 98
	bcc  46.b		; 90 2E
	php		; 08
	adc $02.b,S		; 63 02
	tsx		; BA
	sta [$06.b]		; 87 06
	ora $1D1FDE.l,X		; 1F DE 1F 1D
	cpy #$F3.b		; C0 F3
	beq -16.b		; F0 F0
	sed		; F8
	lda $FEFEE2.l		; AF E2 FE FE
	sbc $13FD.w,X		; FD FD 13
	sbc $FE7F86.l		; EF 86 7F FE
	phb		; 8B
	adc [$FE.b],Y		; 77 FE
	bit #$77.b		; 89 77
	sbc ($9F.b,X)		; E1 9F
	sbc $C763.w,X		; FD 63 C7
	cpy $1F.b		; C4 1F
	jsr ($F883.w,X)		; FC 83 F8
	ora #$80.b		; 09 80
	bra  96.b		; 80 60
	rts		; 60

	cmp $F820.w,Y		; D9 20 F8
	ora $5753E3.l,X		; 1F E3 53 57
	and [$7F.b],Y		; 37 7F
	clc		; 18
	eor ($3F.b,S),Y		; 53 3F
	eor [$3B.b]		; 47 3B
	pha		; 48
	and [$28.b],Y		; 37 28
	ora [$FE.b],Y		; 17 FE
	and #$16.b		; 29 16
	cpy #$FF.b		; C0 FF
	asl $12.b,X		; 16 12
	sbc $BB0BF8.l,X		; FF F8 0B BB
	cmp #$2E.b		; C9 2E
	cmp $AF.b,X		; D5 AF
	cld		; D8
	and $CE.b,X		; 35 CE
	sbc $47AC76.l,X		; FF 76 AC 47
	lda [$44.b]		; A7 44
	lda $897D46.l,X		; BF 46 7D 89
	tsb $E6.b		; 04 E6
	sbc #$18.b		; E9 18
	pha		; 48
	sbc #$12.b		; E9 12
	tsb $F0.b		; 04 F0
	sbc $E296FA.l,X		; FF FA 96 E2
	ror $E5.b,X		; 76 E5
	adc $7BEA.w,X		; 7D EA 7B
	inc $7F.b		; E6 7F
	inc $75BE.w		; EE BE 75
	ora $B27F44.l,X		; 1F 44 7F B2
	eor $40BBB0.l,X		; 5F B0 BB 40
.ACCU 16
.INDEX 16
	rep #$B5		; C2 B5
	cmp $FFE0.w,Y		; D9 E0 FF
	sbc $04D486.l,X		; FF 86 D4 04
	ora ($EF.b,X)		; 01 EF
	sbc [$EB.b],Y		; F7 EB
	sbc [$6B.b],Y		; F7 6B
	sbc [$ED.b],Y		; F7 ED
	adc ($AE.b,S),Y		; 73 AE
	adc $C7.b,X		; 75 C7
	dec A		; 3A
	sbc [$FF.b],Y		; F7 FF
	sbc $38BF00.l,X		; FF 00 BF 38
	.db $82, $F8, $0D		; 82 F8 0D
	rti		; 40

	jsr ($7FFB.w,X)		; FC FB 7F
	lda $3DFF7D.l,X		; BF 7D FF 3D
	lsr $7FBD.w,X		; 5E BD 7F
	sbc $AF9EFD.l,X		; FF FD 9E AF
	dec $CE77.w,X		; DE 77 CE
	tyx		; BB
	eor [$60.b],Y		; 57 60
	sed		; F8
	ora $C9B5CA.l		; 0F CA B5 C9
	rol $91.b,X		; 36 91
	ror $F787.w		; 6E 87 F7
	ora ($EE.b),Y		; 11 EE
	and ($DE.b,X)		; 21 DE
	inc $BE41.w,X		; FE 41 BE
	sta ($7E.b,X)		; 81 7E
	cpx #$0FF8.w		; E0 F8 0F
	and [$DF.b]		; 27 DF
	cld		; D8
	php		; 08
	and $044FFE.l		; 2F FE 4F 04
	cmp $FE5E.w,Y		; D9 5E FE
.ACCU 16
.INDEX 16
	rep #$F1		; C2 F1
	plx		; FA
	brk $F0.b		; 00 F0
	eor $000732.l		; 4F 32 07 00
	ora $023DFE.l		; 0F FE 3D 02
	ora $16698E.l		; 0F 8E 69 16
	adc $6F12.w		; 6D 12 6F
	ora $D0.b,S		; 03 D0
	cmp [$00.b],Y		; D7 00
	rol $87.b,X		; 36 87
	sbc $D73AFE.l,X		; FF FE 3A D7
	adc $DCAF48.l		; 6F 48 AF DC
	eor $5BB8.w,X		; 5D B8 5B
	bcs -73.b		; B0 B7
	rts		; 60

	sbc [$3F.b],Y		; F7 3F
	lda $C06F60.l,X		; BF 60 6F C0
	lsr $D9.b		; 46 D9
	dec $DC01.w,X		; DE 01 DC
	ora $B8.b,S		; 03 B8
	ora [$B0.b]		; 07 B0
	ora $0F7C60.l		; 0F 60 7C 0F
	inc $C01F.w,X		; FE 1F C0
	lda [$00.b]		; A7 00
	and $F8E934.l		; 2F 34 E9 F8
	brk $77.b		; 00 77
	and $07FAFE.l,X		; 3F FE FA 07
	lda $3FFF1F.l,X		; BF 1F FF 3F
	eor $00E8F2.l,X		; 5F F2 E8 00
	cmp [$00.b]		; C7 00
	clv		; B8
	sbc $E000FF.l,X		; FF FF 00 E0
	ora [$C0.b]		; 07 C0
	ora $EC3F00.l,X		; 1F 00 3F EC
	tsb $1E.b		; 04 1E
	asl $1FFF.w		; 0E FF 1F
	inc $FC7F.w,X		; FE 7F FC
	sbc $F9FF01.l,X		; FF 01 FF F9
	inc $FDF2.w,X		; FE F2 FD
	pea $F3FB.w		; F4 FB F3
	ora [$E1.b]		; 07 E1
	sta ($EE.b,S),Y		; 93 EE
	sbc $007FE8.l,X		; FF E8 7F 00
	sbc $FDE1FF.l,X		; FF FF E1 FD
	brk $FB.b		; 00 FB
	and $6C7C33.l,X		; 3F 33 7C 6C
	xce		; FB
	phx		; DA
	sbc $B477FF.l,X		; FF FF 77 B4
	sta $F03F68.l		; 8F 68 3F F0
	adc $98E7C0.l,X		; 7F C0 E7 98
	sbc ($F3.b,S),Y		; F3 F3
	sbc $DEDCEF.l		; EF EF DC DE
	sbc [$0F.b],Y		; F7 0F
	sec		; 38
	ldy $7910.w,X		; BC 10 79
	sbc [$E9.b]		; E7 E9
	cmp $BD00.w		; CD 00 BD
	ora $87FB10.l,X		; 1F 10 FB 87
	sbc $BEC0FF.l,X		; FF FF C0 BE
	adc $6EFC7B.l,X		; 7F 7B FC 6E
	sbc ($19.b),Y		; F1 19
	sbc [$B3.b]		; E7 B3
	eor $03F0E0.l		; 4F E0 F0 03
	sta $FDFF1F.l		; 8F 1F FF FD
	and $78FF3E.l,X		; 3F 3E FF 78
	jsr ($F360.w,X)		; FC 60 F3
	ora ($EF.b,X)		; 01 EF
	ora $F0.b,S		; 03 F0
	cpx #$1920.w		; E0 20 19
	asl $0C.b		; 06 0C
	ora $F6.b,S		; 03 F6
	sbc $C92904.l,X		; FF 04 29 C9
	ora $E0.b,S		; 03 E0
	sed		; F8
	asl $7E.b,X		; 16 7E
	lda ($BD.b,X)		; A1 BD
	rti		; 40

	bvs -86.b		; 70 AA
	adc ($AA.b)		; 72 AA
	adc $F71FA6.l		; 6F A6 1F F7
	tyx		; BB
	mvn $51,$A7		; 54 A7 51
	eor [$2A.b],Y		; 57 2A
	ora $0A.b		; 05 0A
	ora $D8.b		; 05 D8
	cmp #$061A.w		; C9 1A 06
	xce		; FB
	phk		; 4B
	php		; 08
	tsb $08.b		; 04 08
	inx		; E8
	cmp ($C8.b),Y		; D1 C8
	sta $BE.b,S		; 83 BE
	sta $FF.b,S		; 83 FF
	tda		; 7B
	stp		; DB
	cmp $FF7F.w,Y		; D9 7F FF
	inc $FF3F.w,X		; FE 3F FF
	rol $033C.w,X		; 3E 3C 03
	ror $F003.w,X		; 7E 03 F0
	sed		; F8
	phd		; 0B
	eor $BE9D5C.l		; 4F 5C 9D BE
	stz $FFBE.w		; 9C BE FF
	sbc $FFB486.l,X		; FF 86 B4 FF
	cpx $C8CB.w		; EC CB C8
	sbc [$D0.b],Y		; F7 D0
	sta $FEA000.l		; 8F 00 A0 FE
	cli		; 58
	inc $FE59.w,X		; FE 59 FE
	adc $FC4BF8.l,X		; 7F F8 4B FC
	eor $EC.b,S		; 43 EC
	lda [$F8.b],Y		; B7 F8
	cmp $DD1BC0.l		; CF C0 1B DD
	plb		; AB
	rol $F009.w,X		; 3E 09 F0
	adc $0913E7.l		; 6F E7 13 09
	plx		; FA
	tsb $EB.b		; 04 EB
	tsb $FB.b		; 04 FB
	trb $F5.b		; 14 F5
	sta $E9.b,S		; 83 E9
	cpy #$FC23.w		; C0 23 FC
	cmp ($F1.b)		; D2 F1
	beq  35.b		; F0 23
	inc $00E0.w,X		; FE E0 00
	sep #$00		; E2 00
	sta ($FF.b,X)		; 81 FF
	lda $BE417E.l,X		; BF 7E 41 BE
	cmp ($3E.b,X)		; C1 3E
	cmp ($BE.b,X)		; C1 BE
	.db $62, $5D, $B2		; 62 5D B2
	and $ADB2.w		; 2D B2 AD
	lda [$28.b],Y		; B7 28
	eor ($BD.b)		; 52 BD
	jsl $D99AEF.l		; 22 EF 9A D9
	inc $0C5F.w,X		; FE 5F 0C
	sbc ($FE.b),Y		; F1 FE
	inc $9F7F.w,X		; FE 7F 9F
	and $1004F2.l,X		; 3F F2 04 10
	sed		; F8
	ora $0BC0C5.l,X		; 1F C5 C0 0B
	sbc $FE3020.l,X		; FF 20 30 FE
	cmp ($A0.b,S),Y		; D3 A0
	sbc $4060.w,X		; FD 60 40
	inc $80C0.w,X		; FE C0 80
	.db $82, $FE, $FC		; 82 FE FC
	pea $9DDF.w		; F4 DF 9D
	dex		; CA
	cmp ($1C.b,S),Y		; D3 1C
	sed		; F8
	sed		; F8
	bra -48.b		; 80 D0
	cpx #$F0E8.w		; E0 E8 F0
	pea $C14E.w		; F4 4E C1
	cmp ($07.b,X)		; C1 07
	plx		; FA
	jsr ($C0FE.w,X)		; FC FE C0
	sed		; F8
	ora $FEEEED.l		; 0F ED EE FE
	jsr ($02FE.w,X)		; FC FE 02
	brk $E6.b		; 00 E6
	cpx #$D8DC.w		; E0 DC D8
	sbc $DFE1.w,X		; FD E1 DF
	inc $FEFF.w		; EE FF FE
	inx		; E8
	bmi 120.b		; 30 78
	bra -116.b		; 80 8C
	beq -55.b		; F0 C9
	ldx $78.b		; A6 78
	sbc $FCF200.l		; EF 00 F2 FC
	cmp $FC.b,S		; C3 FC
	tsa		; 3B
	rts		; 60

	sep #$80		; E2 80
	bra  33.b		; 80 21
	and ($08.b,X)		; 21 08
	dey		; 88
	sed		; F8
	xba		; EB
	cpy #$60E9.w		; C0 E9 60
	cpx #$8720.w		; E0 20 87
	tda		; 7B
	sbc $780030.l,X		; FF 30 00 78
	ldy $7E30.w,X		; BC 30 7E
	bmi -88.b		; 30 A8
	lda $7F32.w,Y		; B9 32 7F
	and ($15.b)		; 32 15
	ora ($86.b,X)		; 01 86
	cld		; D8
	ora $FA.b,X		; 15 FA
	inc $E0E1.w,X		; FE E1 E0
	bpl  -1.b		; 10 FF
	sta $AF08.w,X		; 9D 08 AF
	rts		; 60

	sta [$58.b],Y		; 97 58
	tsb $0C1E.w		; 0C 1E 0C
	.db $42, $D8		; 42 D8
	ora $F87E.w,Y		; 19 7E F8
	pei ($FC.b)		; D4 FC
	sbc $0A11F8.l,X		; FF F8 11 0A
	brk $1F.b		; 00 1F
	asl A		; 0A
	sbc $EFE4FE.l,X		; FF FE E4 EF
	asl $0F.b		; 06 0F
	ldy #$06C3.w		; A0 C3 06
	jsr ($E0C0.w,X)		; FC C0 E0
	and $0ED910.l		; 2F 10 D9 0E
	adc $076EC2.l,X		; 7F C2 6E 07
	bmi  -2.b		; 30 FE
	rts		; 60

	beq  96.b		; F0 60
	jsr ($9E3C.w,X)		; FC 3C 9E
	inx		; E8
	ora ($00.b)		; 12 00
	lsr $DD.b,X		; 56 DD
	rol $66.b		; 26 66
	inc $3FFD.w,X		; FE FD 3F
	sed		; F8
	ora ($D4.b,S),Y		; 13 D4
	sed		; F8
	tsb $F8FF.w		; 0C FF F8
	bmi -128.b		; 30 80
	bra  43.b		; 80 2B
	sbc ($55.b),Y		; F1 55
	bpl -64.b		; 10 C0
	cpx #$F221.w		; E0 21 F2
	asl $F2.b,X		; 16 F2
	sbc [$E8.b],Y		; F7 E8
	ora #$16FE.w		; 09 FE 16
	sbc ($84.b,S),Y		; F3 84
	sbc [$E0.b],Y		; F7 E0
	trb $F5.b		; 14 F5
	inc $E6.b,X		; F6 E6
	cpy #$E47E.w		; C0 7E E4
	cmp ($F8.b,X)		; C1 F8
	ora $FFDCDE.l		; 0F DE DC FF
	lda $6DECEE.l,X		; BF EE EC 6D
	ror $8E8D.w		; 6E 8D 8E
	sta [$86.b]		; 87 86
	cmp [$C6.b]		; C7 C6
	sbc [$E6.b]		; E7 E6
	sbc $20EE.w		; ED EE 20
	lda $00F0.w,X		; BD F0 00
	cmp $5A90.w,Y		; D9 90 5A
	cmp ($78.b),Y		; D1 78
	brk $38.b		; 00 38
	sed		; F8
	cmp ($F4.b),Y		; D1 F4
	beq -32.b		; F0 E0
	bne -127.b		; D0 81
	adc ($E0.b,X)		; 61 E0
	cpx #$FEA1.w		; E0 A1 FE
	inc $70.b,X		; F6 70
	cpx #$FC2F.w		; E0 2F FC
	bra -40.b		; 80 D8
	eor $7C347E.l		; 4F 7E 34 7C
	cop $F1.b		; 02 F1
	inc $307A.w,X		; FE 7A 30
	adc $5D3F32.l,X		; 7F 32 3F 5D
	phk		; 4B
	asl $E01E.w,X		; 1E 1E E0
	sed		; F8
	bpl  -1.b		; 10 FF
	ror $F6EC.w,X		; 7E EC F6
	ora ($B8.b)		; 12 B8
	ora $1F.b,X		; 15 1F
	tsb $1FF1.w		; 0C F1 1F
	mvn $3C,$FE		; 54 FE 3C
	clc		; 18
	jsr ($F838.w,X)		; FC 38 F8
	lsr $C0.b,X		; 56 C0
	sed		; F8
	ora ($E4.b),Y		; 11 E4
	sbc #$E8FC.w		; E9 FC E8
	ora $EB4B.w		; 0D 4B EB
	cpx #$0EF8.w		; E0 F8 0E
	inc $08.b		; E6 08
	sbc ($FE.b)		; F2 FE
	sbc $EAB80E.l,X		; FF 0E B8 EA
	sbc $3C11F8.l,X		; FF F8 11 3C
	sbc $7C00AA.l,X		; FF AA 00 7C
	sec		; 38
	bit $1C08.w,X		; 3C 08 1C
	php		; 08
	ror $7408.w,X		; 7E 08 74
	sed		; F8
	ora #$F8FF.w		; 09 FF F8
	ora #$F208.w		; 09 08 F2
	bvs -115.b		; 70 8D
	inc $F6FC.w,X		; FE FC F6
	adc $A03F3E.l,X		; 7F 3E 3F A0
	sed		; F8
	ora ($0A.b),Y		; 11 0A
	sbc ($6F.b),Y		; F1 6F
	bmi  84.b		; 30 54
	ldx #$3E5E.w		; A2 5E 3E
	trb $78B8.w		; 1C B8 78
	jsr $1AF8.w		; 20 F8 1A
	sbc $0135F8.l,X		; FF F8 35 01
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	brk $ED.b		; 00 ED
	tyx		; BB
	brk $FF.b		; 00 FF
	sed		; F8
	jmp ($E201.w)		; 6C 01 E2
	sed		; F8
	trb $00F0.w		; 1C F0 00
	sty $EE70.w		; 8C 70 EE
	sed		; F8
	ora $6060.w		; 0D 60 60
	bvc  -8.b		; 50 F8
	ldy #$4BF8.w		; A0 F8 4B
	sbc $F84EE0.l,X		; FF E0 4E F8
	lsr $53FF.w		; 4E FF 53
	eor ($49.b),Y		; 51 49
	pha		; 48
	and $0B3BFE.l,X		; 3F FE 3B 0B
	ora [$08.b]		; 07 08
	cop $0A.b		; 02 0A
	asl $FE.b		; 06 FE
	ora [$09.b]		; 07 09
	bit $367D.w		; 2C 7D 36
	cmp $F4.b,S		; C3 F4
	ror $0E04.w,X		; 7E 04 0E
	inx		; E8
	ora $06.b		; 05 06
	inc $0706.w,X		; FE 06 07
	phx		; DA
	sbc $7AA2FF.l,X		; FF FF A2 7A
	eor [$7B.b]		; 47 7B
	cop $7A.b		; 02 7A
	ora $FF.b		; 05 FF
	bra 119.b		; 80 77
	mvp $40,$79		; 44 79 40
	adc $FF1252.l,X		; 7F 52 12 FF
	sbc $47B22F.l,X		; FF 2F B2 47
	sbc ($06.b)		; F2 06
	beq  13.b		; F0 0D
	bvs -120.b		; 70 88
	clv		; B8
	eor ($BF.b,X)		; 41 BF
	rti		; 40

	lda $F3FF12.l,X		; BF 12 FF F3
	sbc $3FFF1E.l,X		; FF 1E FF 3F
	inc $7F7F.w,X		; FE 7F 7F
	ror $1F7F.w,X		; 7E 7F 1F
	sbc $1E7F9F.l,X		; FF 9F 7F 1E
	sbc ($0F.b),Y		; F1 0F
	adc $BFFE3F.l,X		; 7F 3F FE BF
	adc $7EFFFF.l,X		; 7F FF FF 7E
	sbc $FFFF1F.l,X		; FF 1F FF FF
	inc $9255.w		; EE 55 92
	mvn $5D,$BB		; 54 BB 5D
	sta ($75.b)		; 92 75
	tax		; AA
	adc $1982.w,X		; 7D 82 19
	jsr $00C7.w		; 20 C7 00
	sbc $B07FC3.l,X		; FF C3 7F B0
	bpl -70.b		; 10 BA
	inc $BA11.w,X		; FE 11 BA
	and ($AA.b,X)		; 21 AA
	ora ($86.b,X)		; 01 86
	cmp [$08.b]		; C7 08
	sbc $F0FFFC.l,X		; FF FC FF F0
	stz $8418.w,X		; 9E 18 84
	brk $8C.b		; 00 8C
	bmi -100.b		; 30 9C
	rti		; 40

	sty $40.b,X		; 94 40
	trb $FF44.w		; 1C 44 FF
	sbc $08.b,S		; E3 08
	bra  24.b		; 80 18
	dey		; 88
	adc ($19.b,X)		; 61 19
	xce		; FB
	ora $CB.b,S		; 03 CB
	ora $BB.b,S		; 03 BB
	inc $3FB3.w,X		; FE B3 3F
	jmp $7707.w		; 4C 07 77
	ora [$67.b]		; 07 67
	ora $FE0010.l		; 0F 10 00 FE
	clc		; 18
	bpl -61.b		; 10 C3
	and #$08FE.w		; 29 FE 08
	brk $FE.b		; 00 FE
	tsb $E008.w		; 0C 08 E0
	sbc $DF71F0.l,X		; FF F0 71 DF
	inc $F8FF.w,X		; FE FF F8
	jsl $604BF0.l		; 22 F0 4B 60
	rts		; 60

	cpy #$EFC0.w		; C0 C0 EF
	sed		; F8
	ora $FF4B.w		; 0D 4B FF
	brk $C0.b		; 00 C0
	ora ($BE.b,X)		; 01 BE
	sbc ($FE.b),Y		; F1 FE
	ora $02.b,S		; 03 02
	ora $370C.w		; 0D 0C 37
	bmi  95.b		; 30 5F
	ror $4018.w,X		; 7E 18 40
	cpx $FF.b		; E4 FF
	cop $03.b		; 02 03
	ora $173F0F.l		; 0F 0F 3F 17
	ora $FC.b,S		; 03 FC
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	tsa		; 3B
	asl $8003.w,X		; 1E 03 80
	ldx $00F9.w,Y		; BE F9 00
	inc $97FE.w,X		; FE FE 97
	jsr ($F8F8.w,X)		; FC F8 F8
	dec $A1CE.w		; CE CE A1
	lda $7F8080.l,X		; BF 80 80 7F
	sbc $1E00F1.l,X		; FF F1 00 1E
	sbc $23ADD7.l,X		; FF D7 AD 23
	cpy #$E3F4.w		; C0 F4 E3
	stx $F704.w		; 8E 04 F7
	eor $7F01.w		; 4D 01 7F
	cpx #$C3FF.w		; E0 FF C3
	pea $03E2.w		; F4 E2 03
	sbc $FA.b,S		; E3 FA
	ldx $E0BF.w,Y		; BE BF E0
	asl $F001.w		; 0E 01 F0
	dey		; 88
	ora $FEE90F.l,X		; 1F 0F E9 FE
	iny		; C8
	and [$70.b],Y		; 37 70
	eor $FE7ED0.l		; 4F D0 7E FE
	pea $0700.w		; F4 00 07
	ora [$83.b]		; 07 83
	sta $03.b,S		; 83 03
	sbc $E7C787.l,X		; FF 87 C7 E7
	sbc [$15.b]		; E7 15
	pea $E010.w		; F4 10 E0
	inc $0DF8.w,X		; FE F8 0D
	sbc $520BF8.l,X		; FF F8 0B 52
	bvc  -8.b		; 50 F8
	asl $F8FF.w		; 0E FF F8
	and ($07.b)		; 32 07
	ora #$A431.w		; 09 31 A4
	asl $08.b		; 06 08
	inc $FE10.w,X		; FE 10 FE
	tsb $01FE.w		; 0C FE 01
	cmp ($20.b,X)		; C1 20
	asl $81.b		; 06 81
	sbc $FCFF25.l,X		; FF 25 FF FC
	sta [$E1.b]		; 87 E1
	ora $5A7B1F.l,X		; 1F 1F 7B 5A
	jmp $FF2F3F.l		; 5C 3F 2F FF
	and $87FF07.l,X		; 3F 07 FF 87
	eor [$47.b],Y		; 57 47
	phk		; 4B
	phk		; 4B
	eor $BF41.w		; 4D 41 BF
	inc A		; 1A
	ora $EFDFFF.l,X		; 1F FF DF EF
	inc $F1FF.w,X		; FE FF F1
	cmp $E7AFC7.l		; CF C7 AF E7
	lda [$FB.b],Y		; B7 FB
	lda ($F1.b,S),Y		; B3 F1
	and $DB3B3F.l,X		; 3F 3F 3B DB
	stp		; DB
	ldy #$91EF.w		; A0 EF 91
	xba		; EB
	bpl  -4.b		; 10 FC
	inc $E9.b,X		; F6 E9
	sbc $FF99BD.l,X		; FF BD 99 FF
	beq  -1.b		; F0 FF
	ldx $FF.b,Y		; B6 FF
	sbc $F8FEB0.l,X		; FF B0 FE F8
	jsr ($FFF9.w,X)		; FC F9 FF
	plx		; FA
	plx		; FA
	sed		; F8
	inc $FCF4.w,X		; FE F4 FC
	inx		; E8
	pea $FFC8.w		; F4 C8 FF
	ora ($FE.b,X)		; 01 FE
	bcs  -1.b		; B0 FF
	inc $EE.b,X		; F6 EE
	sed		; F8
	sbc $F9F9.w,X		; FD F9 F9
	sbc ($F3.b),Y		; F1 F3
	sbc $E3E3F9.l,X		; FF F9 E3 E3
	cmp $70.b,S		; C3 70
	bcc -32.b		; 90 E0
	rts		; 60

	bra   0.b		; 80 00
	dey		; 88
	sbc $318484.l,X		; FF 84 84 31
	jmp $4444.w		; 4C 44 44
	sta $FF7F.w		; 8D 7F FF
	adc [$FF.b],Y		; 77 FF
	and $7BFEEC.l,X		; 3F EC FE 7B
	sbc $0CFFBB.l,X		; FF BB FF 0C
	php		; 08
	inc $0004.w,X		; FE 04 00
	inc $06FE.w,X		; FE FE 06
	sta $FD.b,S		; 83 FD
	tsb $F0.b		; 04 F0
	sed		; F8
	inc $F8FF.w,X		; FE FF F8
	asl A		; 0A
	jsr ($E800.w,X)		; FC 00 E8
	jsr $0501.w		; 20 01 05
	ora $0D.b		; 05 0D
	and $0B0DEC.l,X		; 3F EC 0D 0B
	phd		; 0B
	ora #$0809.w		; 09 09 08
	php		; 08
	plp		; 28
	phd		; 0B
	php		; 08
	and $F1.b,X		; 35 F1
	ora $1F.b		; 05 1F
	jsr ($0D00.w,X)		; FC 00 0D
	tsb $0F.b		; 04 0F
	asl $0F.b		; 06 0F
	tas		; 1B
	sta $F1.b,X		; 95 F1
	ora $A34040.l		; 0F 40 40 A3
	sbc $FD237F.l,X		; FF 7F 23 FD
	bit $0063.w,X		; 3C 63 00
	and $ECFF03.l,X		; 3F 03 FF EC
	adc $0FFF0E.l,X		; 7F 0E FF 0F
	bra -64.b		; 80 C0
	cpy #$A060.w		; C0 60 A0
	rtl		; 6B

	lsr $18.b		; 46 18
	sbc $BF3AB5.l,X		; FF B5 3A BF
	bra  74.b		; 80 4A
	sbc ($FE.b)		; F2 FE
	sbc $F529E0.l,X		; FF E0 29 F5
	sbc $E209F8.l,X		; FF F8 09 E2
	sed		; F8
	phd		; 0B
	brk $EF.b		; 00 EF
	sed		; F8
	cmp ($FC.b),Y		; D1 FC
	cpx #$17F8.w		; E0 F8 17
	asl $07FF.w,X		; 1E FF 07
	sbc $FFF801.l,X		; FF 01 F8 FF
	sed		; F8
	asl $07FF.w		; 0E FF 07
	inx		; E8
	ora [$C4.b]		; 07 C4
	ora $82.b,S		; 03 82
	ora ($93.b,X)		; 01 93
	ora ($1D.b)		; 12 1D
	trb $5D5D.w		; 1C 5D 5D
	and ($F8.b),Y		; 31 F8
	bpl -125.b		; 10 83
	sbc ($F3.b,S),Y		; F3 F3
	sbc $FCF9.w,Y		; F9 F9 FC
	sbc $07D9FE.l,X		; FF FE D9 07
	sbc $F20CE0.l,X		; FF E0 0C F2
	sec		; 38
	cpy #$D827.w		; C0 27 D8
	cmp [$E0.b]		; C7 E0
	bit $77.b,X		; 34 77
	inc $2A80.w,X		; FE 80 2A
	clc		; 18
	clc		; 18
	bra  -1.b		; 80 FF
	eor $26.b		; 45 26
	tsb $43E8.w		; 0C E8 43
	tsb $1820.w		; 0C 20 18
	jsr $2119.w		; 20 19 21
	ora $C7C3.w,Y		; 19 C3 C7
	eor ($32.b,X)		; 41 32
	.db $42, $FE		; 42 FE
	bit $44.b,X		; 34 44
	bit $84.b		; 24 84
	ora $FF8FFF.l,X		; 1F FF 8F FF
	asl $3E1F.w,X		; 1E 1F 3E
	and $3BFE3D.l,X		; 3F 3D FE 3B
	and $8B7F7B.l,X		; 3F 7B 7F 8B
	bit #$1F89.w		; 89 89 1F
	sbc $090988.l,X		; FF 88 09 09
	ora ($11.b),Y		; 11 11
	ora ($FF.b,S),Y		; 13 FF
	and $23.b,S		; 23 23
	and [$20.b]		; 27 20
	stz $FD.b,X		; 74 FD
	and $FE76FE.l,X		; 3F FE 76 FE
	inc $FF.b,X		; F6 FF
	inc $ECFF.w		; EE FF EC
	inc $FFDC.w,X		; FE DC FF
	cld		; D8
	sed		; F8
	sbc $7F1FFF.l,X		; FF FF 1F 7F
	ldx $DD9C.w,Y		; BE 9C DD
	ldx $FF.b,Y		; B6 FF
	sbc ($F2.b,X)		; E1 F2
	inc $EEFE.w		; EE FE EE
	plx		; FA
	asl $17.b		; 06 17
	asl $EBA6.w,X		; 1E A6 EB
	adc $089C7F.l,X		; 7F 7F 9C 08
	jmp $FE01E0.l		; 5C E0 01 FE
	sbc $0800FF.l,X		; FF FF 00 08
	php		; 08
	ldy $6C18.w		; AC 18 6C
	ldy #$80BC.w		; A0 BC 80
	jmp ($E600.w,X)		; 7C 00 E6
	php		; 08
	wai		; CB
	trb $73.b		; 14 73
	sbc $B68CFF.l,X		; FF FF 8C B6
	sei		; 78
	cmp $03.b,S		; C3 03
	tas		; 1B
	ora $7B.b,S		; 03 7B
	ora $FB.b,S		; 03 FB
	ora $F1.b,S		; 03 F1
	ora ($E4.b,X)		; 01 E4
	tsb $0C.b		; 04 0C
	cmp [$FC.b]		; C7 FC
	tsb $79.b		; 04 79
	brk $44.b		; 00 44
	sbc $A2FF22.l,X		; FF 22 FF A2
	jsl $FF377A.l		; 22 7A 37 FF
	cop $8F.b		; 02 8F
	sei		; 78
	tyx		; BB
	tsb $DDF1.w		; 0C F1 DD
	inc $7F5D.w,X		; FE 5D 7F
	sta $07.b		; 85 07
	bvs -61.b		; 70 C3
	bmi 120.b		; 30 78
	asl $04.b		; 06 04
	inc $0002.w,X		; FE 02 00
	inc $0203.w,X		; FE 03 02
	lda $FED2.w		; AD D2 FE
	sta ($00.b,X)		; 81 00
	cmp $E9.b		; C5 E9
	sbc ($F1.b,X)		; E1 F1
	dec $FEF2.w,X		; DE F2 FE
	ror $FFFE.w,X		; 7E FE FF
	ror $F820.w,X		; 7E 20 F8
	ora $2F1017.l,X		; 1F 17 10 2F
	jsr $203E.w		; 20 3E 20
	eor $7641.w,Y		; 59 41 76
	lsr $6B.b		; 46 6B
	pha		; 48
	eor $56FE1B.l,X		; 5F 1B FE 56
	ror $A066.w,X		; 7E 66 A0
	sbc #$FE3F.w		; E9 3F FE
	rol $397F.w,X		; 3E 7F 39
	adc $F77F37.l,X		; 7F 37 7F F7
	inc $7F2F.w,X		; FE 2F 7F
	ora $F2647F.l,X		; 1F 7F 64 F2
	adc $463F00.l,X		; 7F 00 3F 46
	sbc ($DE.b),Y		; F1 DE
	brk $FD.b		; 00 FD
	eor ($FE.b,X)		; 41 FE
	asl $C2FE.w,X		; 1E FE C2
	stz $F0.b		; 64 F0
	phd		; 0B
	ldx $7DFF.w,Y		; BE FF 7D
	xce		; FB
	rol $FF.b		; 26 FF
	rts		; 60

	sbc $F0FB78.l,X		; FF 78 FB F0
	cpx #$FE00.w		; E0 00 FE
	tda		; 7B
	tsb $F3.b		; 04 F3
	tsb $E2FE.w		; 0C FE E2
	sed		; F8
	ora #$11FB.w		; 09 FB 11
	stx $FB.b		; 86 FB
	sbc ($FF.b,S),Y		; F3 FF
	iny		; C8
	cmp $69FE20.l,X		; DF 20 FE 69
	bra -97.b		; 80 9F
	rti		; 40

	inc $601B.w,X		; FE 1B 60
	inc $98E8.w,X		; FE E8 98
	and $DF.b,S		; 23 DF
	sbc $9FFFBF.l,X		; FF BF FF 9F
	sbc $A093FD.l,X		; FF FD 93 A0
	tyx		; BB
	brk $1B.b		; 00 1B
	brk $5D.b		; 00 5D
	rti		; 40

	eor $E7FE42.l,X		; 5F 42 FE E7
	lda [$C2.b]		; A7 C2
	inc $FFBF.w,X		; FE BF FF
	lda $E0FE.w,X		; BD FE E0
	rts		; 60

	beq  16.b		; F0 10
	inc $73FF.w,X		; FE FF 73
	inx		; E8
	php		; 08
	sed		; F8
	php		; 08
	sbc $F608.w,Y		; F9 08 F6
	tsb $DF.b		; 04 DF
	sbc $F7FEEF.l,X		; FF EF FE F7
	jsr ($FE1F.w,X)		; FC 1F FE
	inc $FE.b,X		; F6 FE
	sbc $C1FD.w,Y		; F9 FD C1
	ldx $3E41.w,Y		; BE 41 3E
	.db $42, $3C		; 42 3C
	stx $6D.b		; 86 6D
	inc $18A4.w,X		; FE A4 18
	inc $1028.w,X		; FE 28 10
	lda ($C9.b,X)		; A1 C9
	bra  -1.b		; 80 FF
	jsr ($5C40.w,X)		; FC 40 5C
	sbc ($FF.b),Y		; F1 FF
	cpy #$F2C0.w		; C0 C0 F2
	cpx $C8FD.w		; EC FD C8
	jsr $03FE.w		; 20 FE 03
	brk $07.b		; 00 07
	sta $05.b		; 85 05
	ora $07.b,S		; 03 07
	ora $FC.b,S		; 03 FC
	sbc #$0AF8.w		; E9 F8 0A
	stz $FCD9.w,X		; 9E D9 FC
	sbc $8868FF.l,X		; FF FF 68 88
	pha		; 48
	php		; 08
	sta $0F7000.l,X		; 9F 00 70 0F
	bne  47.b		; D0 2F
	cmp ($6F.b),Y		; D1 6F
	cmp #$4977.w		; C9 77 49
	lda [$E1.b],Y		; B7 E1
	sbc $887F77.l,X		; FF 77 7F 88
	cpx #$8DE0.w		; E0 E0 8D
	sta $4F620D.l		; 8F 0D 62 4F
	adc ($47.b,X)		; 61 47
	adc ($DF.b),Y		; 71 DF
	sbc ($07.b,X)		; E1 07
	lda ($38.b),Y		; B1 38
	and [$E0.b]		; 27 E0
	ora $01EA41.l,X		; 1F 41 EA 01
	inc $03FE.w,X		; FE FE 03
	sbc $A7FF.w,X		; FD FF A7
	cop $FC.b		; 02 FC
	cmp $E3.b,S		; C3 E3
	asl $7C0E.w		; 0E 0E 7C
	mvp $80,$FC		; 44 FC 80
	jsr ($FE00.w,X)		; FC 00 FE
	sbc $00FDFD.l,X		; FF FD FD 00
	and $7DCF.w,Y		; 39 CF 7D
	lda [$6F.b]		; A7 6F
	tay		; A8
	cmp $E1D840.l,X		; DF 40 D8 E1
	rol $3C7E.w,X		; 3E 7E 3C
	adc $FD43.w,X		; 7D 43 FD
	and $8087.w,Y		; 39 87 80
	sta $B010.w,X		; 9D 10 B0
	sbc ($CA.b),Y		; F1 CA
	sbc ($3E.b,X)		; E1 3E
	sbc $FFFE3C.l,X		; FF 3C FE FF
	ora $E4DD38.l,X		; 1F 38 DD E4
	ror $95.b,X		; 76 95
	cpy $F84B.w		; CC 4B F8
	ora [$B0.b],Y		; 17 B0
	and $C05F60.l		; 2F 60 5F C0
	sbc $E2DB43.l,X		; FF 43 DB E2
	brk $89.b		; 00 89
	ora ($33.b,X)		; 01 33
	cop $E7.b		; 02 E7
	tsb $CF.b		; 04 CF
	txa		; 8A
	bpl -94.b		; 10 A2
	sbc $03A4DA.l,X		; FF DA A4 03
	sbc $08FF04.l,X		; FF 04 FF 08
	sbc $D7FF10.l,X		; FF 10 FF D7
	ora $C6FC63.l,X		; 1F 63 FC C6
	sbc $F1E7.w,Y		; F9 E7 F1
	sbc $FC11FE.l		; EF FE 11 FC
	stz $F8.b		; 64 F8
	wai		; CB
	sbc $FFFE.w,X		; FD FE FF
	bcs  -4.b		; B0 FC
	ora $EF10F0.l		; 0F F0 10 EF
	and $DFDE.w		; 2D DE DF
	bit $7DBE.w,X		; 3C BE 7D
	jsr ($02FB.w,X)		; FC FB 02
	sbc $1C82BF.l,X		; FF BF 82 1C
	jsr ($13F0.w,X)		; FC F0 13
	cpx #$CC2F.w		; E0 2F CC
	lsr $3D1C.w,X		; 5E 1C 3D
	bit $F8FD.w,X		; 3C FD F8
	xce		; FB
	sbc $F8033F.l,X		; FF 3F 03 F8
	ora $3F253D.l,X		; 1F 3D 25 3F
	and $2B.b,S		; 23 2B
	and $1B.b,S		; 23 1B
	ora ($12.b)		; 12 12
	cop $0A.b		; 02 0A
	cop $06.b		; 02 06
	brk $1C.b		; 00 1C
	lda $3F1E0F.l,X		; BF 0F 1E 3F
	ora $0DFE.w,X		; 1D FE 0D
	ora $050F0D.l,X		; 1F 0D 0F 05
	sbc $E2BEFF.l,X		; FF FF BE E2
	ora ($FA.b,X)		; 01 FA
	.db $82, $FC, $94		; 82 FC 94
	jsr ($F81C.w,X)		; FC 1C F8
	sec		; 38
	sed		; F8
	cli		; 58
	adc ($50.b)		; 72 50
	eor ($51.b,S),Y		; 53 51
	sbc $D1D3FF.l,X		; FF FF D3 D1
	sbc $FBFF.w,X		; FD FF FB
	sbc $D7FFF3.l,X		; FF F3 FF D7
	sbc $ADFFB7.l,X		; FF B7 FF AD
	sbc $FDAC.w,X		; FD AC FD
	sbc $FD2CEF.l,X		; FF EF 2C FD
.INDEX 8
	sep #$14		; E2 14
	nop		; EA
	trb $FC.b		; 14 FC
	cop $E4.b		; 02 E4
	ora ($AA.b)		; 12 AA
	ora $31.b		; 05 31
	ldy $E9.b,X		; B4 E9
	lda $90FFC3.l		; AF C3 FF 90
	xba		; EB
	sbc $FE.b,S		; E3 FE
	sbc ($E1.b,X)		; E1 E1
	sta $5081.w		; 8D 81 50
	bvc -64.b		; 50 C0
	dec $FFE0.w		; CE E0 FF
	sbc $DA40FD.l,X		; FF FD 40 DA
	phd		; 0B
	stz $3B.b		; 64 3B
	cpy $61.b		; C4 61
	pea $E277.w		; F4 77 E2
	asl A		; 0A
	inc $3B.b,X		; F6 3B
	sta ($04.b,X)		; 81 04
	sbc $BF00BF.l,X		; FF BF 00 BF
	brk $9B.b		; 00 9B
	txy		; 9B
	phd		; 0B
	phd		; 0B
	rtl		; 6B

	pld		; 2B
	adc #$310B.w		; 69 0B 31
	and ($44.b,S),Y		; 33 44
	ora ($1F.b,X)		; 01 1F
	inc $E251.w,X		; FE 51 E2
	lsr $4F42.w		; 4E 42 4F
	eor ($7F.b,X)		; 41 7F
	inc $78.b,X		; F6 78
	adc $828704.l,X		; 7F 04 87 82
	tsa		; 3B
	sbc [$0F.b],Y		; F7 0F
	brk $7D.b		; 00 7D
	brk $BD.b		; 00 BD
	tax		; AA
	sbc #$8382.w		; E9 82 83
	sty $D4.b		; 84 D4
	sta $83.b,S		; 83 83
	ora ($FF.b,X)		; 01 FF
	sbc $00EC44.l,X		; FF 44 EC 00
	dec $F4.b,X		; D6 F4
	tsb $D4.b		; 04 D4
	tsb $45.b		; 04 45
	tsb $C6.b		; 04 C6
	tsb $84.b		; 04 84
	bra -62.b		; 80 C2
	cpy #$07.b		; C0 07
	sed		; F8
.ACCU 8
	sep #$E0		; E2 E0
	ply		; 7A
	rts		; 60

	.db $82, $FE, $FA		; 82 FE FA
	inc $7D79.w,X		; FE 79 7D
	sbc $FB7BC3.l,X		; FF C3 7B FB
	and $1DFD.w,X		; 3D FD 1D
	sbc $6585.w,X		; FD 85 65
	rts		; 60

	brk $A0.b		; 00 A0
	inc $0780.w,X		; FE 80 07
	and $20.b,X		; 35 20
	brk $30.b		; 00 30
	jsr $F4FE.w		; 20 FE F4
	rep #$06		; C2 06
	sbc ($07.b,S),Y		; F3 07
	cmp ($E0.b)		; D2 E0
	bcc -43.b		; 90 D5
	inc $18FF.w,X		; FE FF 18
	cpx #$27.b		; E0 27
	bra  -2.b		; 80 FE
	sbc $F8FF.w,X		; FD FF F8
	eor ($11.b,S),Y		; 53 11
	sbc ($3F.b,X)		; E1 3F
	cli		; 58
	brk $B0.b		; 00 B0
	rti		; 40

	cli		; 58
	cpx #$E8.b		; E0 E8
	beq  -2.b		; F0 FE
	eor $B8.b,X		; 55 B8
	ora #$40.b		; 09 40
	phy		; 5A
	cmp $78.b,S		; C3 78
	cld		; D8
	sbc [$30.b],Y		; F7 30
	brk $78.b		; 00 78
	bmi  -2.b		; 30 FE
	ror $F030.w,X		; 7E 30 F0
	lda $BE4B.w,Y		; B9 4B BE
	and ($7F.b)		; 32 7F
	and ($5C.b)		; 32 5C
	clv		; B8
	ora $31FA.w,Y		; 19 FA 31
	cpx #$13.b		; E0 13
	jsr ($FE00.w,X)		; FC 00 FE
	jsr ($FEDE.w,X)		; FC DE FE
	sty $EA.b,X		; 94 EA
	ora ($E1.b),Y		; 11 E1
	tsb $0C1E.w		; 0C 1E 0C
	ora $1DE8.w,Y		; 19 E8 1D
	sbc $F8EA.w,X		; FD EA F8
	bpl   5.b		; 10 05
	brk $7F.b		; 00 7F
	ora $7F.b		; 05 7F
	bmi   6.b		; 30 06
	and $FE.b,X		; 35 FE
	sbc $C030.w,X		; FD 30 C0
	cpy $6DFE.w		; CC FE 6D
	lda $E6.b		; A5 E6
	beq  23.b		; F0 17
	sbc $A409FC.l,X		; FF FC 09 A4
	sed		; F8
	clc		; 18
	ora $91.b,S		; 03 91
	cmp ($91.b,S),Y		; D3 91
	clv		; B8
	ora ($20.b,S),Y		; 13 20
	php		; 08
	ldy $FC.b		; A4 FC
	ldx #$FC.b		; A2 FC
	clc		; 18
	cpx #$F8.b		; E0 F8
	ora ($F7.b),Y		; 11 F7
	ply		; 7A
	nop		; EA
	lda $7F7E.w,Y		; B9 7E 7F
	asl $8F.b		; 06 8F
	cmp #$06.b		; C9 06
	asl $4004.w		; 0E 04 40
	sed		; F8
	tas		; 1B
	sbc $7ED5F8.l,X		; FF F8 D5 7E
	bit $7C.b,X		; 34 7C
	sbc $F3E856.l,X		; FF 56 E8 F3
	ply		; 7A
	bmi 127.b		; 30 7F
	and ($3F.b)		; 32 3F
	asl $E01E.w,X		; 1E 1E E0
	sed		; F8
	bpl  -1.b		; 10 FF
	and $40D7.w,X		; 3D D7 40
	sbc ($4B.b)		; F2 4B
	cmp $11F8FF.l,X		; DF FF F8 11
	ora $FEF10C.l,X		; 1F 0C F1 FE
	bit $FC18.w,X		; 3C 18 FC
	sec		; 38
	sed		; F8
	ora ($E8.b),Y		; 11 E8
	ora ($D5.b)		; 12 D5
	sta ($FF.b,X)		; 81 FF
	jsr ($F00C.w,X)		; FC 0C F0
	ora #$BE.b		; 09 BE
	sed		; F8
	ora ($0C.b,S),Y		; 13 0C
	sbc ($DE.b)		; F2 DE
	tsb $EBBA.w		; 0C BA EB
	sta [$C0.b],Y		; 97 C0
	beq  97.b		; F0 61
	inx		; E8
	ora #$A0.b		; 09 A0
	sbc $183D09.l,X		; FF 09 3D 18
	sed		; F8
	bmi -85.b		; 30 AB
	lda $495D.w,Y		; B9 5D 49
	phy		; 5A
	eor ($F0.b,X)		; 41 F0
	ora ($FC.b),Y		; 11 FC
	sed		; F8
	tsb $09F0.w		; 0C F0 09
	rts		; 60

	sed		; F8
	ora ($CA.b,S),Y		; 13 CA
	inc $E8FC.w,X		; FE FC E8
	beq -66.b		; F0 BE
	beq  96.b		; F0 60
	sed		; F8
	ora ($1C.b)		; 12 1C
	php		; 08
	stx $3E.b		; 86 3E
	trb $0F7E.w		; 1C 7E 0F
	rol A		; 2A
	bit $7F.b,X		; 34 7F
	rol $F7.b,X		; 36 F7
	.db $62, $FE, $09		; 62 FE 09
	lda ($FF.b),Y		; B1 FF
	sed		; F8
	lsr $F000.w		; 4E 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0087.w		; 0D 87 00
	sbc $0224F8.l,X		; FF F8 24 02
	inc $0204.w,X		; FE 04 02
	php		; 08
	inc $B8C5.w,X		; FE C5 B8
	ora #$14.b		; 09 14
	beq  -3.b		; F0 FD
	sbc $0FFE06.l,X		; FF 06 FE 0F
	ora $D037.w		; 0D 37 D0
	cmp $0CF8.w,Y		; D9 F8 0C
	ora ($00.b,X)		; 01 00
	ora [$C8.b]		; 07 C8
	sed		; F8
	ora $EE01.w		; 0D 01 EE
	sbc $C43F03.l,X		; FF 03 3F C4
	php		; 08
	ora [$10.b]		; 07 10
	ora $C03300.l		; 0F 00 33 C0
	jsr ($F3FF.w,X)		; FC FF F3
	sbc $0F03C7.l,X		; FF C7 03 0F
	ora $7F1F1F.l		; 0F 1F 1F 7F
	adc $FFF3FF.l,X		; 7F FF F3 FF
	cmp $F1F0FF.l		; CF FF F0 F1
	ora $EA7E00.l		; 0F 00 7E EA
	sbc $07F10E.l,X		; FF 0E F1 07
	sed		; F8
	cop $FD.b		; 02 FD
	sta $FE.b,S		; 83 FE
	sed		; F8
	ror $EC7E.w,X		; 7E 7E EC
	sbc $B70BF8.l,X		; FF F8 0B B7
	sbc $1180.w,X		; FD 80 11
	stx $B846.w		; 8E 46 B8
	sbc [$C3.b]		; E7 C3
	ora $F0.b		; 05 F0
	ora [$E8.b],Y		; 17 E8
	sbc ($80.b,S),Y		; F3 80
	cmp $BDE6DF.l,X		; DF DF E6 BD
	phk		; 4B
	ora [$BD.b]		; 07 BD
	plx		; FA
	plx		; FA
	cpx #$FF.b		; E0 FF
	xba		; EB
	rti		; 40

	cpy #$20.b		; C0 20
	inc $EA21.w,X		; FE 21 EA
	sty $F8.b		; 84 F8
	ora #$EF.b		; 09 EF
	cpy #$FF.b		; C0 FF
	jsr $25F8.w		; 20 F8 25
	sbc $0339F8.l,X		; FF F8 39 03
	ldy #$FF.b		; A0 FF
	ora ($FE.b,X)		; 01 FE
	tas		; 1B
	jsr ($F8FF.w,X)		; FC FF F8
	ora $8E.b,X		; 15 8E
	rti		; 40

	eor $A18F01.l		; 4F 01 8F A1
	cmp [$FF.b]		; C7 FF
	adc $207F50.l,X		; 7F 50 7F 20
	tsa		; 3B
	brk $0B.b		; 00 0B
	tsb $0005.w		; 0C 05 00
	and $00BE00.l,X		; 3F 00 BE 00
	lsr $2F00.w,X		; 5E 00 2F
	and ($C2.b,X)		; 21 C2
	cmp [$F1.b],Y		; D7 F1
	inc $FE03.w,X		; FE 03 FE
	rol $FF7F.w,X		; 3E 7F FF
	sbc $CF7F0F.l		; EF 0F 7F CF
	ora $1ABB5C.l,X		; 1F 5C BB 1A
	sbc $0FFF2B.l		; EF 2B FF 0F
	sbc $F1E80B.l,X		; FF 0B E8 F1
	ora $3FDA7F.l		; 0F 7F DA 3F
	ora $FD1CBF.l		; 0F BF 1C FD
	clc		; 18
	cmp $FFF00B.l,X		; DF 0B F0 FF
	jsr ($FFFE.w,X)		; FC FE FF
	cld		; D8
	sbc $F2FEF8.l,X		; FF F8 FE F2
	beq  -8.b		; F0 F8
	ora $F0FD.w		; 0D FD F0
	plx		; FA
	jsr $58FC.w		; 20 FC 58
	dey		; 88
	bvs  -1.b		; 70 FF
	cmp $B0.b,S		; C3 B0
	rtl		; 6B

	txs		; 9A
	adc [$8A.b],Y		; 77 8A
	jmp ($4498.w,X)		; 7C 98 44
	bra  64.b		; 80 40
	jmp.w [$0008]		; DC 08 00
	sed		; F8
	cmp ($A0.b),Y		; D1 A0
	inc $00B2.w,X		; FE B2 00
	stz $8400.w		; 9C 00 84
	pea $F8FF.w		; F4 FF F8
	and $08C13F.l,X		; 3F 3F C1 08
	ora [$18.b],Y		; 17 18
	ora [$0C.b]		; 07 0C
	ora $06.b,S		; 03 06
	ora $0617.w,X		; 1D 17 06
	sbc $C3.b,S		; E3 C3
	cop $1D.b		; 02 1D
	ora $0707FF.l		; 0F FF 07 07
	ora $03.b,S		; 03 03
	jsr ($FF0F.w,X)		; FC 0F FF
	beq  11.b		; F0 0B
	and $3E3E37.l,X		; 3F 37 3E 3E
	brk $1F.b		; 00 1F
	ora $C0.b,S		; 03 C0
	tsa		; 3B
	bmi -49.b		; 30 CF
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	adc $3D.b,X		; 75 3D
	tsb $F3.b		; 04 F3
	dey		; 88
	adc [$40.b]		; 67 40
	lda $FF67E7.l,X		; BF E7 67 FF
	stz $F1.b		; 64 F1
	sbc $9F9FFC.l,X		; FF FC 9F 9F
	sed		; F8
	sbc $7F8032.l,X		; FF 32 80 7F
	php		; 08
	sbc $31FF10.l,X		; FF 10 FF 31
	sbc $7CFF77.l,X		; FF 77 FF 7C
	sbc $38742A.l,X		; FF 2A 74 38
	clc		; 18
	sbc ($FF.b),Y		; F1 FF
	sed		; F8
	ora $FEF204.l		; 0F 04 F2 FE
	bra  -8.b		; 80 F8
	sbc $E718.w,X		; FD 18 E7
	sbc $F8E0DF.l,X		; FF DF E0 F8
	ora ($02.b,S),Y		; 13 02
	sbc $FC03.w,X		; FD 03 FC
	ora ($FE.b,X)		; 01 FE
	eor ($BF.b,X)		; 41 BF
	sta $7B.b		; 85 7B
	bit $43.b		; 24 43
	cpx #$0FF8.w		; E0 F8 0F
	sbc ($87.b,X)		; E1 87
	rts		; 60

	bcc  -2.b		; 90 FE
	bvs -56.b		; 70 C8
	sed		; F8
	stz $FC.b		; 64 FC
	and ($FE.b)		; 32 FE
	sta $B9FE1F.l		; 8F 1F FE B9
	xce		; FB
	sed		; F8
	cpx #$F0FF.w		; E0 FF F0
	beq  -8.b		; F0 F8
	sed		; F8
	jsr ($5D57.w,X)		; FC 57 5D
	sbc $E0FEFE.l,X		; FF FE FE E0
	inx		; E8
	asl A		; 0A
	xba		; EB
	sbc $E8F0.w		; ED F0 E8
	eor $10E8E0.l,X		; 5F E0 E8 10
	brk $02.b		; 00 02
	cpx #$0CE8.w		; E0 E8 0C
	sta [$7F.b]		; 87 7F
	pei ($E8.b)		; D4 E8
	ora $FE07FF.l		; 0F FF 07 FE
	lda $237F07.l,X		; BF 07 7F 23
	and [$10.b]		; 27 10
	brk $0D.b		; 00 0D
	cmp ($97.b,S),Y		; D3 97
	beq -23.b		; F0 E9
	ora ($F0.b,X)		; 01 F0
	adc $031F07.l,X		; 7F 07 1F 03
	ora $FEE18C.l		; 0F 8C E1 FE
	sbc $F4FDFF.l,X		; FF FF FD F4
	xce		; FB
	cpx $D8F3.w		; EC F3 D8
	plb		; AB
	tya		; 98
	sbc [$B0.b],Y		; F7 B0
	sbc $CEDF62.l		; EF 62 DF CE
	sbc $DFDFE1.l,X		; FF E1 DF DF
	xce		; FB
	beq -13.b		; F0 F3
	cpx #$C0E7.w		; E0 E7 C0
	cmp [$80.b]		; C7 80
	cpx #$021F.w		; E0 1F 02
	eor $0E3FD4.l,X		; 5F D4 3F 0E
	and $40801F.l,X		; 3F 1F 80 40
	inc $0EF8.w,X		; FE F8 0E
	ora $F8FE.w,X		; 1D FE F8
	ora #$F8FF.w		; 09 FF F8
	eor ($FF.b,X)		; 41 FF
	sta [$05.b]		; 87 05
	inc A		; 1A
	clc		; 18
	and [$20.b]		; 27 20
	ora $601728.l,X		; 1F 28 17 60
	ora $FE3F40.l,X		; 1F 40 3F FE
	sbc $390618.l,X		; FF 18 06 39
	adc $7B5D.w,X		; 7D 5D 7B
	tda		; 7B
	adc [$67.b]		; 67 67
	adc $FF5FFF.l		; 6F FF 5F FF
	adc ($FF.b,X)		; 61 FF
	lsr $015E.w,X		; 5E 5E 01
	inc $FC03.w,X		; FE 03 FC
	cop $F9.b		; 02 F9
	inc $F007.w,X		; FE 07 F0
	sei		; 78
	and $3AC5FE.l		; 2F FE C5 3A
	ora [$F8.b]		; 07 F8
	stz $F0.b		; 64 F0
	phd		; 0B
	sbc $7EF9.w,Y		; F9 F9 7E
	bit $E1.b		; 24 E1
	jsr ($DE07.w,X)		; FC 07 DE
	cop $FD.b		; 02 FD
	ora $F8.b		; 05 F8
	ora $00FFF0.l		; 0F F0 FF 00
	dec $C0F5.w,X		; DE F5 C0
	sed		; F8
	jsr $FEFF.w		; 20 FF FE
	sbc $FBFDFD.l,X		; FF FD FD FB
	sta [$FF.b]		; 87 FF
	xce		; FB
	sbc [$E7.b]		; E7 E7
	ora $3C8EAA.l,X		; 1F AA 8E 3C
.ACCU 16
	rep #$EC		; C2 EC
	cop $A8.b		; 02 A8
	lsr $4B.b		; 46 4B
	and $4384FC.l,X		; 3F FC 84 43
	sty $1885.w		; 8C 85 18
	lda [$19.b]		; A7 19
.ACCU 8
	sep #$27		; E2 27
	and [$57.b]		; 27 57
	eor [$D7.b]		; 47 D7
	cmp $FF.b,S		; C3 FF
	cmp [$B6.b]		; C7 B6
	stx $FE.b		; 86 FE
	ror $6D0E.w		; 6E 0E 6D
	tsb $03DC.w		; 0C DC 03
	ldx $D101.w,Y		; BE 01 D1
	sbc $6F00C3.l,X		; FF C3 00 6F
	brk $EF.b		; 00 EF
	brk $F7.b		; 00 F7
	rts		; 60

	eor $E09BE0.l,X		; 5F E0 9B E0
	cpx #$FFDF.w		; E0 DF FF
	adc $3F3FDF.l,X		; 7F DF 3F 3F
	cmp $1F9F1F.l,X		; DF 1F 9F 1F
	adc $07E70F.l		; 6F 0F E7 07
	cmp [$07.b]		; C7 07
	sbc $7EF8.w,X		; FD F8 7E
	plp		; 28
	lda $508C.w,Y		; B9 8C 50
	cmp ($ED.b,X)		; C1 ED
	inc $F8FF.w,X		; FE FF F8
	asl $6080.w		; 0E 80 60
	rol $0BF4.w,X		; 3E F4 0B
	sbc ($E6.b),Y		; F1 E6
	sbc ($C0.b,S),Y		; F3 C0
	jsr $A040.w		; 20 40 A0
	inc $FF80.w,X		; FE 80 FF
	sbc $68C0C0.l,X		; FF C0 C0 68
	sbc $12FF40.l,X		; FF 40 FF 12
	beq  77.b		; F0 4D
	ora $16F8E8.l,X		; 1F E8 F8 16
	ora [$00.b]		; 07 00
	ora $003B00.l		; 0F 00 3B 00
	asl $E1F4.w,X		; 1E F4 E1
	xba		; EB
	sed		; F8
	ora $0004.w		; 0D 04 00
	asl $C051.w,X		; 1E 51 C0
	cmp $DAF4.w,Y		; D9 F4 DA
	bit $5F33.w,X		; 3C 33 5F
	sed		; F8
	sbc ($CF.b,S),Y		; F3 CF
	eor ($9F.b,X)		; 41 9F
	ora $D4C0DF.l		; 0F DF C0 D4
	sbc $0C00.w		; ED 00 0C
	brk $3F.b		; 00 3F
	sbc $7F01BF.l,X		; FF BF 01 7F
	ora $BB073F.l		; 0F 3F 07 BB
	dey		; 88
	sbc $C100.w,X		; FD 00 C1
	brk $CF.b		; 00 CF
	ora ($FD.b,X)		; 01 FD
	tsb $978E.w		; 0C 8E 97
	bpl -31.b		; 10 E1
	asl A		; 0A
	sbc ($7C.b,X)		; E1 7C
	php		; 08
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	brk $F0.b		; 00 F0
	dec $D9.b		; C6 D9
	sbc ($F0.b,X)		; E1 F0
	beq  63.b		; F0 3F
	jmp $F700.w		; 4C 00 F7
	ldx $E0.b		; A6 E0
	stz $0710.w		; 9C 10 07
	sbc ($CE.b,X)		; E1 CE
	tsb $04E7.w		; 0C E7 04
	inc $F309.w,X		; FE 09 F3
	jmp.w [$E01E]		; DC 1E E0
	eor [$E1.b]		; 47 E1
	ora $F0.b,S		; 03 F0
	ora ($F8.b,X)		; 01 F8
	inc $FC6A.w,X		; FE 6A FC
	ldx $001D.w,Y		; BE 1D 00
	lda ($91.b,X)		; A1 91
	and $B600.w,X		; 3D 00 B6
	xce		; FB
	sty $FE.b		; 84 FE
	rol $FABC.w,X		; 3E BC FA
	sbc $2EFCFE.l,X		; FF FE FC 2E
	sed		; F8
	ora $1A320D.l,X		; 1F 0D 32 1A
	and $1C.b		; 25 1C
	and $10.b,S		; 23 10
	and $0A1708.l		; 2F 08 17 0A
	sbc $0D151F.l,X		; FF 1F 15 0D
	ora ($05.b)		; 12 05
	asl A		; 0A
	eor $1B5D.w,X		; 5D 5D 1B
	tas		; 1B
	ora $17171F.l,X		; 1F 1F 17 17
	asl $7FFF.w		; 0E FF 7F
	sbc $050D0D.l,X		; FF 0D 0D 05
	ora $1F.b		; 05 1F
	cpx #$17.b		; E0 17
	inx		; E8
	ora $FC.b,S		; 03 FC
	sta [$78.b]		; 87 78
	ora [$F8.b]		; 07 F8
	sed		; F8
	sta $F00FFE.l		; 8F FE 0F F0
	stx $FF70.w		; 8E 70 FF
	sbc $EFF7F7.l,X		; FF F7 F7 EF
	sbc ($FF.b),Y		; F1 FF
	sbc $BEFFDE.l,X		; FF DE FF BE
	ldx $BCBD.w,Y		; BE BD BC
	sbc $F502.w,X		; FD 02 F5
	asl A		; 0A
	sbc $DF1A.w,X		; FD 1A DF
	sbc $FB1AED.l,X		; FF ED 1A FB
	tsb $EB.b		; 04 EB
	tsb $02.b		; 04 02
	sbc ($01.b),Y		; F1 01
	sbc ($F3.b,S),Y		; F3 F3
	nop		; EA
.INDEX 8
	sep #$DA		; E2 DA
.INDEX 16
	rep #$5A		; C2 5A
	ora $C642FF.l		; 0F FF 42 C6
	dec $D4.b		; C6 D4
	cmp $FE.b		; C5 FE
	mvn $A7,$45		; 54 45 A7
	ora $0952.w,Y		; 19 52 09
	lda [$FF.b]		; A7 FF
	sbc $38461A.l,X		; FF 1A 46 38
	lda $ED70.w		; AD 70 ED
	bcs -51.b		; B0 CD
	and ($62.b),Y		; 31 62
	sta ($6D.b)		; 92 6D
	tsb $0CED.w		; 0C ED 0C
	dex		; CA
	sbc $A908FF.l,X		; FF FF 08 A9
	php		; 08
	rtl		; 6B

	php		; 08
	tax		; AA
	dey		; 88
	rol A		; 2A
	txa		; 8A
	ora $698D.w		; 0D 8D 69
	ldy #$40C4.w		; A0 C4 40
	eor $FF.b,S		; 43 FF
	ora $0E9300.l,X		; 1F 00 93 0E
	bpl 112.b		; 10 70
	eor $1866F0.l		; 4F F0 66 18
	dec $9739.w,X		; DE 39 97
	ora [$3B.b]		; 07 3B
	asl $91DF.w,X		; 1E DF 91
	brk $E0.b		; 00 E0
	brk $8F.b		; 00 8F
	stz $81.b		; 64 81
	tsx		; BA
	clc		; 18
	sei		; 78
	tsb $2FF2.w		; 0C F2 2F
	stz $7B.b,X		; 74 7B
	brk $97.b		; 00 97
	brk $E5.b		; 00 E5
	ldx $D1.b		; A6 D1
	inc $002F.w,X		; FE 2F 00
	sbc $7F.b,X		; F5 7F
	adc $5C1FF8.l,X		; 7F F8 1F 5C
	cmp ($13.b,S),Y		; D3 13
	cmp $01D10F.l		; CF 0F D1 01
	bra  96.b		; 80 60
	ldy #$2040.w		; A0 40 20
	lsr $D2.b,X		; 56 D2
	inc $FEC0.w,X		; FE C0 FE
	rti		; 40

	sbc $F2.b,S		; E3 F2
	asl $F3.b		; 06 F3
	tay		; A8
	sbc $F6A0FF.l,X		; FF FF A0 F6
	xba		; EB
	rol $25E0.w,X		; 3E E0 25
	ora $03.b		; 05 03
	tsa		; 3B
	ora [$7D.b]		; 07 7D
	tsa		; 3B
	lda $7CFF07.l,X		; BF 07 FF 7C
	stz $CF7F.w,X		; 9E 7F CF
	sta $D40B.w,X		; 9D 0B D4
	ora [$39.b]		; 07 39
	tsa		; 3B
	bit $1E7C.w,X		; 3C 7C 1E
	sbc $077F03.l,X		; FF 03 7F 07
	and $EE0030.l,X		; 3F 30 00 EE
	bpl -19.b		; 10 ED
	dec $EFFE.w,X		; DE FE EF
	phd		; 0B
	trb $07FE.w		; 1C FE 07
	xce		; FB
	adc [$FF.b],Y		; 77 FF
	adc $0F.b,X		; 75 0F
	brk $11.b		; 00 11
	brk $DE.b		; 00 DE
	dec $FF.b		; C6 FF
	sbc ($EF.b),Y		; F1 EF
.ACCU 8
	sep #$EF		; E2 EF
	cpx #$70F7.w		; E0 F7 70
	adc [$78.b],Y		; 77 78
	tda		; 7B
	ora ($C0.b,X)		; 01 C0
	ora [$00.b]		; 07 00
	sbc $00DF85.l,X		; FF 85 DF 00
	lda $B04740.l,X		; BF 40 47 B0
	sbc [$B8.b],Y		; F7 B8
	sbc $59BE.w,Y		; F9 BE 59
	sbc $F0B8.w		; ED B8 F0
	sbc $00ED4F.l,X		; FF 4F ED 00
	lda $BE00.w,Y		; B9 00 BE
	sbc $13F723.l		; EF 23 F7 13
	stp		; DB
	php		; 08
	sbc $EFDF.w		; ED DF EF
	tsb $F6.b		; 04 F6
	ora ($FB.b,X)		; 01 FB
	ora ($FD.b,X)		; 01 FD
	adc $831FF1.l		; 6F F1 1F 83
	ora $4307C3.l		; 0F C3 07 43
	sbc ($00.b),Y		; F1 00
.ACCU 16
.INDEX 16
	rep #$F9		; C2 F9
	sed		; F8
	stz $F1.b		; 64 F1
	sbc ($7F.b),Y		; F1 7F
	sbc $7FFEFE.l,X		; FF FE FE 7F
	and $FFF0BF.l,X		; 3F BF F0 FF
	ora $AFAF3F.l,X		; 1F 3F AF AF
	cmp $FEF01F.l,X		; DF 1F F0 FE
	jsr $07C7.w		; 20 C7 07
	adc [$0F.b],Y		; 77 0F
	adc $1F3F27.l,X		; 7F 27 3F 1F
	sbc [$04.b],Y		; F7 04
	inc $04F3.w,X		; FE F3 04
	cmp $3C.b,S		; C3 3C
	sta ($40.b,S),Y		; 93 40
	sbc ($50.b),Y		; F1 50
	sec		; 38
	inc $E9F6.w,X		; FE F6 E9
	tsb $FEF2.w		; 0C F2 FE
	cpy #$BC01.w		; C0 01 BC
	jsr ($FEFF.w,X)		; FC FF FE
	ora $FC.b,S		; 03 FC
	ora $F8.b,S		; 03 F8
	ora $FF.b,S		; 03 FF
	cop $F7.b		; 02 F7
	cop $FF.b		; 02 FF
	asl $EF.b		; 06 EF
	asl $FF.b		; 06 FF
	and ($F7.b),Y		; 31 F7
	ora $0DFF.w		; 0D FF 0D
	sbc $3B5F1B.l		; EF 1B 5F 3B
	brk $FA.b		; 00 FA
	inc $FEF6.w,X		; FE F6 FE
	sbc $EDFE.w,X		; FD FE ED
	brk $CD.b		; 00 CD
	brk $DB.b		; 00 DB
	brk $BB.b		; 00 BB
	brk $E0.b		; 00 E0
	jsr $050A.w		; 20 0A 05
	cop $01.b		; 02 01
	lsr $1F.b		; 46 1F
	asl $49.b		; 06 49
	cld		; D8
	ora #$FF05.w		; 09 05 FF
	and $8F0BD8.l		; 2F D8 0B 8F
	bvs -114.b		; 70 8E
	bvs  -2.b		; 70 FE
	sbc ($FC.b,X)		; E1 FC
	sta [$79.b]		; 87 79
	rol $D8.b		; 26 D8
	ora $1C0360.l,X		; 1F 60 03 1C
	asl $B8.b,X		; 16 B8
	clv		; B8
	sbc #$BD0B.w		; E9 0B BD
	ldy $3DFF.w,X		; BC FF 3D
	bit $1E1E.w,X		; 3C 1E 1E
	cop $3D.b		; 02 3D
	cmp $FFFF.w,Y		; D9 FF FF
	sta $20DB.w,Y		; 99 DB 20
	sbc $5E86.w,Y		; F9 86 5E
	lda $F56E.w		; AD 6E F5
	ldx $35F9.w,Y		; BE F9 35
	pld		; 2B
	sta $128C.w		; 8D 8C 12
	sbc $4700FF.l,X		; FF FF 00 47
	rti		; 40

	ora ($08.b,X)		; 01 08
	tsb $3C.b		; 04 3C
	jsr $3074.w		; 20 74 30
	bit $00D0.w,X		; 3C D0 00
	adc ($00.b,S),Y		; 73 00
	cpy $21.b		; C4 21
	cpx $50.b		; E4 50
	sbc [$5C.b]		; E7 5C
	adc $7FFE.w,X		; 7D FE 7F
	sbc $FF809F.l,X		; FF 9F 80 FF
	sbc $FD0B2F.l,X		; FF 2F 0B FD
	ora #$1EF0.w		; 09 F0 1E
	cpx #$FE7F.w		; E0 7F FE
	sbc $FEB8DF.l,X		; FF DF B8 FE
	ldx #$C2BF.w		; A2 BF C2
	txy		; 9B
	plp		; 28
	cmp $E5FF00.l		; CF 00 FF E5
	asl A		; 0A
	cpy $F811.w		; CC 11 F8
	lda ($E4.b,X)		; A1 E4
	sta ($D8.b,X)		; 81 D8
	cmp [$20.b]		; C7 20
	tyx		; BB
	sbc ($F0.b),Y		; F1 F0
	lda $00D57F.l,X		; BF 7F D5 00
	dec $10.b,X		; D6 10
	xce		; FB
	clc		; 18
	sbc $EBE904.l		; EF 04 E9 EB
	plp		; 28
	sbc [$32.b],Y		; F7 32
	inc $20.b		; E6 20
	inc $ABEF.w		; EE EF AB
	dec $D9.b,X		; D6 D9
	sbc [$00.b]		; E7 00
	sbc ($16.b,S),Y		; F3 16
	sbc #$00D6.w		; E9 D6 00
	cpy $F200.w		; CC 00 F2
	cmp ($1B.b,X)		; C1 1B
	sbc ($EE.b),Y		; F1 EE
	beq -12.b		; F0 F4
	bne  71.b		; D0 47
	sbc $FF53F8.l,X		; FF F8 53 FF
	inc $FEFE.w		; EE FE FE
	inc $FEDC.w,X		; FE DC FE
	jsr ($E6B8.w,X)		; FC B8 E6
	pea $EE01.w		; F4 01 EE
	inc $EEE4.w,X		; FE E4 EE
	cpy $EE.b		; C4 EE
	bra  67.b		; 80 43
	plx		; FA
	beq  -2.b		; F0 FE
	clv		; B8
	ldx $21F8.w,Y		; BE F8 21
	clc		; 18
	brk $3C.b		; 00 3C
	clc		; 18
	inc $183F.w,X		; FE 3F 18
	adc $3F55AF.l,X		; 7F AF 55 3F
	adc $193F19.l,X		; 7F 19 3F 19
	cld		; D8
	sed		; F8
	ora $F2FC.w,Y		; 19 FC F2
	lda $12F8E8.l,X		; BF E8 F8 12
	eor $59D1.w,X		; 5D D1 59
	cmp ($7A.b),Y		; D1 7A
	cmp ($FA.b,X)		; C1 FA
	adc $060F06.l,X		; 7F 06 0F 06
	sty $F8.b,X		; 94 F8
	ora $FFDA.w,X		; 1D DA FF
	sed		; F8
	ora ($1C.b),Y		; 11 1C
	asl $8038.w		; 0E 38 80
	sbc $FF7EFE.l,X		; FF FE 7E FF
	ror $E6.b		; 66 E6
	adc $F8A0FE.l,X		; 7F FE A0 F8
	and ($FE.b),Y		; 31 FE
	inc $CF.b		; E6 CF
	asl $EF.b		; 06 EF
	lsr $FE.b		; 46 FE
	stz $7E.b		; 64 7E
	bit $5E01.w		; 2C 01 5E
	cpx #$17F8.w		; E0 F8 17
	dec $FE.b		; C6 FE
	asl $1E04.w		; 0E 04 1E
	tsb $F039.w		; 0C 39 F0
	stx $FB.b,Y		; 96 FB
	plx		; FA
	sbc $801CF8.l,X		; FF F8 1C 80
	sty $D9.b		; 84 D9
	jsr ($FE40.w,X)		; FC 40 FE
	jmp ($F21A.w)		; 6C 1A F2
	sbc $40FD.w		; ED FD 40
	rti		; 40

	rts		; 60

	xba		; EB
	sta $60.b		; 85 60
	jmp ($16E4.w)		; 6C E4 16
	sbc ($A4.b),Y		; F1 A4
	sed		; F8
	and $3E1A3F.l,X		; 3F 3F 1A 3E
	.db $82, $F1, $FE		; 82 F1 FE
	lda $183DAB.l,X		; BF AB 3D 18
	and $0F1F19.l,X		; 3F 19 1F 0F
	ora $10F8E0.l		; 0F E0 F8 10
	adc $DC4D3F.l,X		; 7F 3F 4D DC
	brk $F4.b		; 00 F4
	sta $BF.b		; 85 BF
	sbc $8F11F8.l,X		; FF F8 11 8F
	ldx $F3.b		; A6 F3
	inc $0C1E.w,X		; FE 1E 0C
	inc $FC1C.w,X		; FE 1C FC
	bvs 112.b		; 70 70
	ror A		; 6A
	asl $E860.w		; 0E 60 E8
	ora ($44.b),Y		; 11 44
	sbc ($40.b),Y		; F1 40
	inx		; E8
	trb $F10C.w		; 1C 0C F1
	adc $AB7EC0.l		; 6F C0 7E AB
	cmp ($C0.b,S),Y		; D3 C0
	sei		; 78
	sed		; F8
	cpx #$10F8.w		; E0 F8 10
	ldx #$A0FC.w		; A2 FC A0
	sed		; F8
	ora $3C7E.w,Y		; 19 7E 3C
	.db $42, $7C		; 42 7C
	cmp $1D.b,S		; C3 1D
	sec		; 38
	inc $B87C.w,X		; FE 7C B8
	sbc [$42.b]		; E7 42
	cmp $E0.b,S		; C3 E0
	sed		; F8
	bpl  28.b		; 10 1C
	php		; 08
	inc $E2A1.w,X		; FE A1 E2
	rol $7E1C.w,X		; 3E 1C 7E
	bit $7F.b,X		; 34 7F
	rol $F7.b,X		; 36 F7
	.db $62, $FE, $E3		; 62 FE E3
	cop $00.b		; 02 00
	ora ($F0.b,X)		; 01 F0
	bvc   0.b		; 50 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	inc $FF00.w,X		; FE 00 FF
	sed		; F8
	pha		; 48
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora $09F8F2.l		; 0F F2 F8 09
	ora ($07.b,X)		; 01 07
	ora [$0F.b]		; 07 0F
	ora $1F7F85.l		; 0F 85 7F 1F
	ora $E8FCE6.l,X		; 1F E6 FC E8
	sbc $00FE00.l,X		; FF 00 FE 00
	sbc $01.b,X		; F5 01
	plx		; FA
	cop $82.b		; 02 82
	jmp ($E8E6.w,X)		; 7C E6 E8
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $0918.w,X		; FD 18 09
	sbc #$3F00.w		; E9 00 3F
	cpx $FE.b		; E4 FE
	sep #$0A		; E2 0A
	cmp $7F.b,X		; D5 7F
	inc $3F3F.w,X		; FE 3F 3F
	cpx $FC.b		; E4 FC
	sbc $FD1FFE.l,X		; FF FE 1F FD
	cpx #$00C0.w		; E0 C0 00
	beq   0.b		; F0 00
	sed		; F8
.INDEX 16
	rep #$DA		; C2 DA
	jsr ($C0C0.w,X)		; FC C0 C0
	beq -16.b		; F0 F0
	sta $46.b,S		; 83 46
	sed		; F8
	sed		; F8
	inc $E0C5.w,X		; FE C5 E0
	sbc $09F8FF.l,X		; FF FF F8 09
	bra -44.b		; 80 D4
	cmp $FE.b,S		; C3 FE
	sbc ($F8.b)		; F2 F8
	asl A		; 0A
	bra -44.b		; 80 D4
	cpx #$2AE0.w		; E0 E0 2A
	sed		; F8
	and $1B203F.l,X		; 3F 3F 20 1B
	bpl  29.b		; 10 1D
	ora $0E1034.l		; 0F 34 10 0E
	tsb $0203.w		; 0C 03 02
	pha		; 48
	beq  31.b		; F0 1F
	and $2B23C0.l,X		; 3F C0 23 2B
	inc $0F03.w,X		; FE 03 0F
	ora ($03.b,X)		; 01 03
	and #$443E.w		; 29 3E 44
	sbc $DD23BF.l,X		; FF BF 23 DD
	ora $7E9B.w,X		; 1D 9B 7E
	dec A		; 3A
	sed		; F8
	txy		; 9B
	inc $81BF.w,X		; FE BF 81
	lda $DC85.w,Y		; B9 85 DC
	inc $44E2.w,X		; FE E2 44
	sbc $FFFE7E.l,X		; FF 7E FE FF
	inc $BE62.w,X		; FE 62 BE
	clv		; B8
	ldx $DF80.w,Y		; BE 80 DF
	cmp $BF4F1F.l		; CF 1F 4F BF
	sbc $57E74F.l		; EF 4F E7 57
	sta [$FF.b]		; 87 FF
	sbc [$E1.b],Y		; F7 E1
	rts		; 60

	eor [$1A.b]		; 47 1A
	bra  62.b		; 80 3E
	stx $8EBE.w		; 8E BE 8E
	ora $871F8F.l,X		; 1F 8F 1F 87
	beq   7.b		; F0 07
	ora $10FF07.l		; 0F 07 FF 10
	lda $FF7FD6.l,X		; BF D6 7F FF
	stz $CC3F.w,X		; 9E 3F CC
	cpy $8EFF.w		; CC FF 8E
	cmp $C7F79F.l,X		; DF 9F F7 C7
	beq 127.b		; F0 7F
	and $FFFFFF.l,X		; 3F FF FF FF
	tsb $8CFD.w		; 0C FD 8C
	sbc $C7FF8F.l		; EF 8F FF C7
	sbc $E4.b,X		; F5 E4
	pea $F7E4.w		; F4 E4 F7
	sbc [$F2.b]		; E7 F2
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	sbc ($F5.b,X)		; E1 F5
	inc $EB.b		; E6 EB
	cpy $DCF3.w		; CC F3 DC
	cmp ($DC.b,S),Y		; D3 DC
	xce		; FB
	sbc [$FE.b]		; E7 FE
	sed		; F8
	sbc $E1.b,S		; E3 E1
	sbc ($FD.b,X)		; E1 FD
	sbc $FA.b,S		; E3 FA
	sbc [$CF.b],Y		; F7 CF
	sbc $BFFEDF.l		; EF DF FE BF
	jsr $E1FF.w		; 20 FF E1
	adc $80F740.l,X		; 7F 40 F7 80
	sbc [$00.b],Y		; F7 00
	lda $804F40.l		; AF 40 4F 80
	tay		; A8
	sbc $FE0800.l,X		; FF 00 08 FE
	cmp $FFB2B1.l,X		; DF B1 B2 FF
	sed		; F8
	ora #$18.b		; 09 18
	brk $C0.b		; 00 C0
	jsr $C360.w		; 20 60 C3
	adc $4AB290.l		; 6F 90 B2 4A
	inc $02FA.w,X		; FE FA 02
	sep #$02		; E2 02
	cpy $04.b		; C4 04
	nop		; EA
	jsr ($2BFD.w,X)		; FC FD 2B
	ror $FE.b		; 66 FE
	sbc $C0FB.w,X		; FD FB C0
	beq  12.b		; F0 0C
	asl $30F0.w		; 0E F0 30
	sbc $41061F.l,X		; FF 1F 06 41
	dey		; 88
	lsr $F2.b		; 46 F2
	inc $F260.w,X		; FE 60 F2
	eor [$7F.b]		; 47 7F
.ACCU 16
	rep #$20		; C2 20
	sbc $09F880.l,X		; FF 80 F8 09
	txa		; 8A
	sbc $FE00.w,X		; FD 00 FE
	mvp $06,$F4		; 44 F4 06
	plb		; AB
	inc $8C03.w,X		; FE 03 8C
	sbc $FC0BF8.l,X		; FF F8 0B FC
	and $F8FEF1.l,X		; 3F F1 FE F8
	phd		; 0B
	dec A		; 3A
	tad		; 5B
	cld		; D8
	sbc #$F8FF.w		; E9 FF F8
	ora $FEFFE4.l		; 0F E4 FF FE
	ora ($F8.b,X)		; 01 F8
	sbc $E00EF8.l,X		; FF F8 0E E0
.ACCU 8
	sep #$E9		; E2 E9
	tsb $FE0F.w		; 0C 0F FE
	php		; 08
	inc $CC30.w,X		; FE 30 CC
	brk $FC.b		; 00 FC
	.db $42, $8C		; 42 8C
	stp		; DB
.ACCU 8
	sep #$EA		; E2 EA
	sbc $FEFFFC.l,X		; FF FC FF FE
	phy		; 5A
	ldx $E0FF.w,Y		; BE FF E0
	inx		; E8
	ora $E823.w		; 0D 23 E8
	bit $FE03.w,X		; 3C 03 FE
	sbc $030A.w,X		; FD 0A 03
	ora $07.b,S		; 03 07
	ora $FDFF03.l		; 0F 03 FF FD
	lda $7185.w,Y		; B9 85 71
	bit #$FE.b		; 89 FE
	sed		; F8
	tsb $85.b		; 04 85
	eor $FEF1.w,X		; 5D F1 FE
	ror $7E80.w,X		; 7E 80 7E
	rol A		; 2A
	sbc #$63.b		; E9 63
	sbc $7B0BFF.l		; EF FF 0B 7B
	sbc $0C05E3.l,X		; FF E3 05 0C
	ora ($07.b,X)		; 01 07
	cpx #$E1.b		; E0 E1
	clc		; 18
	clc		; 18
	tsb $04.b		; 04 04
	cop $FF.b		; 02 FF
	sta [$F1.b]		; 87 F1
	dec A		; 3A
	sta $F3.b,S		; 83 F3
	lsr $FE1E.w,X		; 5E 1E FE
	sbc [$84.b]		; E7 84
	sbc ($7E.b),Y		; F1 7E
	sbc ($FF.b)		; F2 FF
	sbc [$FC.b],Y		; F7 FC
	ora $F7.b,X		; 15 F7
	adc $C85E1E.l,X		; 7F 1E 5E C8
	asl A		; 0A
	tda		; 7B
	ora ($9B.b,X)		; 01 9B
	sbc #$00.b		; E9 00
	sbc $007F.w,Y		; F9 7F 00
	beq  -1.b		; F0 FF
	asl $083F.w,X		; 1E 3F 08
	sty $80.b		; 84 80
	rol $D6.b,X		; 36 D6
	sed		; F8
	sbc $9CD3FF.l,X		; FF FF D3 9C
	sbc ($3C.b),Y		; F1 3C
	cmp $AC7C.w,Y		; D9 7C AC
	inc $C656.w		; EE 56 C6
	dec $42.b,X		; D6 42
	sbc $42DA1F.l,X		; FF 1F DA 42
	inc $02.b		; E6 02
	sbc $1FCF9F.l		; EF 9F CF 1F
	sta [$0F.b]		; 87 0F
	ora ($07.b,S),Y		; 13 07
	and $5E03.w,Y		; 39 03 5E
	sbc $21FE.w,X		; FD FE 21
	ora [$01.b]		; 07 01
	tas		; 1B
	cpy #$F0.b		; C0 F0
	ora $E1DA.w		; 0D DA E1
	sbc $C80EF8.l,X		; FF F8 0E C8
	php		; 08
	bcc  16.b		; 90 10
	ora $20A022.l,X		; 1F 22 A0 20
	lda $20.b,S		; A3 20
	lda ($20.b,X)		; A1 20
	sed		; F8
	php		; 08
	sbc $A1019C.l,X		; FF 9C 01 A1
	sbc $FEDFFF.l		; EF FF DF FE
	sed		; F8
	rti		; 40

	sta ($F4.b,S),Y		; 93 F4
	inc $F800.w,X		; FE 00 F8
	plp		; 28
	inc $03FC.w,X		; FE FC 03
	cop $4E.b		; 02 4E
	ror $FA00.w,X		; 7E 00 FA
	sbc $0707FC.l,X		; FF FC 07 07
	txa		; 8A
	dey		; 88
	sbc #$01.b		; E9 01
	inc $3D02.w,X		; FE 02 3D
	cmp $D8.b		; C5 D8
	sed		; F8
	inc $C73F.w,X		; FE 3F C7
	rol $E0.b		; 26 E0
	ora #$FA.b		; 09 FA
	inc $FFF8.w,X		; FE F8 FF
	jsr ($3FFF.w,X)		; FC FF 3F
	tsb $F4.b		; 04 F4
	mvp $25,$E5		; 44 E5 25
	ora $15.b,X		; 15 15
	eor $BEBE4F.l		; 4F 4F BE BE
	sbc $83FC.w,X		; FD FC 83
	sta ($FC.b,X)		; 81 FC
	sbc $FFBB23.l,X		; FF 23 BB FF
	phx		; DA
	sbc $B0FFEA.l,X		; FF EA FF B0
	sbc $03FC41.l,X		; FF 41 FC 03
	sed		; F8
	adc $01F0FF.l,X		; 7F FF F0 01
	ora $B8BF08.l		; 0F 08 BF B8
	tda		; 7B
	sei		; 78
	xce		; FB
	sed		; F8
	inc $181B.w,X		; FE 1B 18
	wai		; CB
	cmp $C3.b,S		; C3 C3
	clc		; 18
	stp		; DB
	clv		; B8
	ror $FF47.w		; 6E 47 FF
	sta [$FF.b]		; 87 FF
	lda #$07.b		; A9 07
	sbc ($07.b),Y		; F1 07
	ora $D7FEE7.l		; 0F E7 FE D7
	sta $F806F9.l		; 8F F9 06 F8
	ora [$D7.b]		; 07 D7
	bne  95.b		; D0 5F
	inc $F502.w,X		; FE 02 F5
	jsr $10F8.w		; 20 F8 10
	bra 126.b		; 80 7E
	cop $FD.b		; 02 FD
	lsr $FCB1.w		; 4E B1 FC
	beq  10.b		; F0 0A
	and $73.b		; 25 73
	cmp ($E8.b,X)		; C1 E8
	ora $FEDFE4.l		; 0F E4 DF FE
	cpx #$DA.b		; E0 DA
	bra  -1.b		; 80 FF
	cpy #$16.b		; C0 16
	ora $FF.b		; 05 FF
	cpx #$D8.b		; E0 D8
	jsl $F8F11A.l		; 22 1A F1 F8
	phd		; 0B
	asl $0BFD.w		; 0E FD 0B
	jsr ($FFEA.w,X)		; FC EA FF
	sed		; F8
	ora #$3E.b		; 09 3E
	cpy #$1E.b		; C0 1E
	cpx #$E4.b		; E0 E4
	cpx #$10.b		; E0 10
	ldy $F3.b		; A4 F3
	cmp ($F5.b,S),Y		; D3 F5
	plx		; FA
	and $20.b,S		; 23 20
	sty $FF1F.w		; 8C 1F FF
	ora $01E225.l		; 0F 25 E2 01
	cmp $3C1C.w,Y		; D9 1C 3C
	sta [$1F.b]		; 87 1F
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	inc $09.b		; E6 09
	php		; 08
	phd		; 0B
	ora #$0F.b		; 09 0F
	ora $EC.b,S		; 03 EC
	sbc $E286E9.l		; EF E9 86 E2
	xce		; FB
	txa		; 8A
	sbc ($F6.b),Y		; F1 F6
	inc $FDF4.w,X		; FE F4 FD
	beq -13.b		; F0 F3
	ora ($EA.b),Y		; 11 EA
	asl $F0.b,X		; 16 F0
	sbc $D7FE09.l,X		; FF 09 FE D7
	php		; 08
	jsr ($FD93.w,X)		; FC 93 FD
	tsx		; BA
	sbc [$75.b],Y		; F7 75
	jsr ($FF60.w,X)		; FC 60 FF
	cmp $FF.b,S		; C3 FF
	rti		; 40

	inx		; E8
	sbc ($FE.b,X)		; E1 FE
	plp		; 28
	jsr $9003.w		; 20 03 90
	cop $B0.b		; 02 B0
	php		; 08
	rts		; 60

	ora $40FFFF.l,X		; 1F FF FF 40
	and $44ED00.l,X		; 3F 00 ED 44
	lda $58BF4C.l,X		; BF 4C BF 58
	sbc $ABEF29.l		; EF 29 EF AB
	sbc $FF674F.l		; EF 4F 67 FF
	sbc $01EF06.l,X		; FF 06 EF 01
	eor $17.b,S		; 43 17
	eor $07.b,S		; 43 07
	eor [$0F.b]		; 47 0F
	asl $0F.b,X		; 16 0F
	sty $0E.b,X		; 94 0E
	bmi   6.b		; 30 06
	sed		; F8
	sbc [$DF.b],Y		; F7 DF
	asl $F0.b		; 06 F0
	ora ($FC.b,X)		; 01 FC
	cop $E9.b		; 02 E9
	cpx #$60.b		; E0 60
	beq -16.b		; F0 F0
	sbc $70FF8F.l,X		; FF 8F FF 70
	tsb $10FE.w		; 0C FE 10
	phd		; 0B
	sta $A49F97.l,X		; 9F 97 9F A4
	bvs -15.b		; 70 F1
	sbc ($6F.b)		; F2 6F
	sty $84.b		; 84 84
	clc		; 18
	clc		; 18
	bmi  48.b		; 30 30
	dec $8ED1.w		; CE D1 8E
	.db $82, $87, $70		; 82 87 70
	cmp [$E0.b]		; C7 E0
	sbc $FFE7.w,X		; FD E7 FF
	cmp $01F1A0.l		; CF A0 F1 01
	sta $FC20DE.l		; 8F DE 20 FC
	sbc [$C5.b],Y		; F7 C5
	brk $F8.b		; 00 F8
	and ($0D.b,X)		; 21 0D
	ora ($06.b,X)		; 01 06
	ora $0C.b,S		; 03 0C
	ora [$0F.b]		; 07 0F
	asl A		; 0A
	php		; 08
	ora [$18.b]		; 07 18
	ora $2AFE10.l		; 0F 10 FE 2A
	cmp ($28.b)		; D2 28
	cmp ($FE.b)		; D2 FE
	tas		; 1B
	sbc $6FDC59.l,X		; FF 59 DC 6F
	bcc -49.b		; 90 CF
	bmi -97.b		; 30 9F
	rts		; 60

	lda $EA8440.l,X		; BF 40 84 EA
	xce		; FB
	ror A		; 6A
	sed		; F8
	lda $D06603.l		; AF 03 66 D0
	ora #$22.b		; 09 22
	sbc ($FC.b,X)		; E1 FC
	dey		; 88
	ora $0E9F07.l,X		; 1F 07 9F 0E
	sbc $658E87.l,X		; FF 87 8E 65
	sbc ($3F.b,X)		; E1 3F
	plx		; FA
	rol $78BE.w,X		; 3E BE 78
	cmp $32F8.w		; CD F8 32
	ora $FF85.w		; 0D 85 FF
	sta [$7F.b]		; 87 7F
	asl $849E.w		; 0E 9E 84
	lda ($80.b,X)		; A1 80
	tyx		; BB
	sta $3B.b,S		; 83 3B
	ora $0A.b,S		; 03 0A
	cop $44.b		; 02 44
	sbc $78B9FF.l,X		; FF FF B9 78
	jmp ($EFFC.w,X)		; 7C FC EF
	sbc $A3F0D0.l,X		; FF D0 F0 A3
	cpx #$8F.b		; E0 8F
	cmp $5E.b,S		; C3 5E
	dec $9B92.w		; CE 92 9B
	adc $0FB7F8.l,X		; 7F F8 B7 0F
	adc ($0F.b,S),Y		; 73 0F
	cpx #$03.b		; E0 03
	cmp $3C3F00.l		; CF 00 3F 3C
	ora ($31.b,X)		; 01 31
	asl $3A.b		; 06 3A
	clv		; B8
	stz $A2.b		; 64 A2
	nop		; EA
	bit $06F1.w		; 2C F1 06
	asl $C52C.w,X		; 1E 2C C5
	sbc ($83.b),Y		; F1 83
	sta $B0.b,S		; 83 B0
	bpl -30.b		; 10 E2
	wai		; CB
	sbc $8207E1.l		; EF E1 07 82
	cmp ($FC.b,S),Y		; D3 FC
	adc ($0E.b),Y		; 71 0E
	sbc $00BFF3.l,X		; FF F3 BF 00
	cmp $6F80FE.l,X		; DF FE 80 6F
	brk $AF.b		; 00 AF
	bra -81.b		; 80 AF
	brk $6A.b		; 00 6A
	ldy $5F.b,X		; B4 5F
	brk $F5.b		; 00 F5
	adc $DC7BDA.l,X		; 7F DA 7B DC
	cpy #$1D.b		; C0 1D
	dec $F8DA.w,X		; DE DA F8
	bcs  -6.b		; B0 FA
	rts		; 60

	sbc $5C.b,S		; E3 5C
	cpx #$E0.b		; E0 E0
	dec $C0DE.w,X		; DE DE C0
	iny		; C8
	ora ($03.b),Y		; 11 03
	cpx #$1B.b		; E0 1B
	ora [$02.b]		; 07 02
	ora $06C3F7.l		; 0F F7 C3 06
	ora #$06.b		; 09 06
	tsb $F704.w		; 0C 04 F7
	cop $02.b		; 02 02
	asl $06.b		; 06 06
	brk $FE.b		; 00 FE
	ora $FF.b,S		; 03 FF
	sbc $FF237F.l,X		; FF 7F 23 FF
	tas		; 1B
	sbc ($DD.b,S),Y		; F3 DD
	sbc ($EC.b,S),Y		; F3 EC
	sbc ($ED.b)		; F2 ED
	dex		; CA
	sbc $0A.b,X		; F5 0A
	sbc $8A.b,X		; F5 8A
	adc $FF.b,X		; 75 FF
	ora $182300.l		; 0F 00 23 18
	tas		; 1B
	bne -35.b		; D0 DD
	cpx #$EC.b		; E0 EC
	cpx #$ED.b		; E0 ED
	cpy #$F5.b		; C0 F5
	brk $A5.b		; 00 A5
	ora $F175FE.l		; 0F FE 75 F1
	stp		; DB
	inc $7F7E.w,X		; FE 7E 7F
	ldx $DE3F.w,Y		; BE 3F DE
	inx		; E8
	eor $FE.b,S		; 43 FE
	adc $FCFE.w,X		; 7D FE FC
	ror $BE00.w,X		; 7E 00 BE
	brk $F2.b		; 00 F2
	dec $FFF8.w,X		; DE F8 FF
	eor $BFB0BF.l,X		; 5F BF B0 BF
	bcc -67.b		; 90 BD
	bra -77.b		; 80 B3
	bra -113.b		; 80 8F
	sta $BF.b,S		; 83 BF
	sta $FFF87F.l		; 8F 7F F8 FF
	lda $4FC03F.l,X		; BF 3F C0 4F
	bmi 111.b		; 30 6F
	bpl -29.b		; 10 E3
	jmp ($7000.w,X)		; 7C 00 70
	ora $FF.b,S		; 03 FF
	brk $40.b		; 00 40
	ora $DF3F00.l		; 0F 00 3F DF
	ora $7F1FBF.l		; 0F BF 1F 7F
	asl A		; 0A
	beq -65.b		; F0 BF
	and ($4F.b,S),Y		; 33 4F
	sbc ($F0.b,S),Y		; F3 F0
	cmp $E03FC0.l		; CF C0 3F E0
	ora $801FC0.l		; 0F C0 1F 80
	bvs -128.b		; 70 80
	sta $F333D2.l		; 8F D2 33 F3
	brk $CF.b		; 00 CF
	cpx #$A6.b		; E0 A6
	sbc $F1FE23.l,X		; FF 23 FE F1
	sbc ($CD.b)		; F2 CD
	cmp $3B.b		; C5 3B
	ora $FB.b		; 05 FB
	phd		; 0B
	sbc [$0A.b],Y		; F7 0A
	inc $8FFE.w,X		; FE FE 8F
	ldx $F1.b		; A6 F1
	brk $CD.b		; 00 CD
	ora ($3B.b,X)		; 01 3B
	ora ($FB.b,X)		; 01 FB
	ora $F7.b,S		; 03 F7
	cop $FF.b		; 02 FF
	sbc $07F8FE.l,X		; FF FE F8 07
	ora [$EF.b],Y		; 17 EF
	sbc $DFAFDF.l		; EF DF AF DF
	eor $BF5EBF.l		; 4F BF 5E BF
	sta $827E.w		; 8D 7E 82
	rol $7D1E.w,X		; 3E 1E 7D
	and $CFEFE9.l,X		; 3F E9 EF CF
	cmp $1EA98F.l,X		; DF 8F A9 1E
	lda $35C00C.l,X		; BF 0C C0 35
	sta $FFF0.w,Y		; 99 F0 FF
	sed		; F8
	asl $201F.w,X		; 1E 1F 20
	inc $1AFC.w,X		; FE FC 1A
	cmp ($3F.b)		; D2 3F
	pei ($E1.b)		; D4 E1
	plx		; FA
	jsr $D222.w		; 20 22 D2
	sbc $3F1FFE.l,X		; FF FE 1F 3F
	inc $04EC.w,X		; FE EC 04
	sbc $04FE1F.l,X		; FF 1F FE 04
	inx		; E8
	ora $CA.b,S		; 03 CA
	asl $CC.b		; 06 CC
	ora $E4.b		; 05 E4
	and [$BE.b]		; 27 BE
	ora $FE437B.l,X		; 1F 7B 43 FE
	sbc $E0E35B.l,X		; FF 5B E3 E0
	pei ($D0.b)		; D4 D0
	sbc ($F0.b),Y		; F1 F0
	sbc ($F0.b)		; F2 F0
	cld		; D8
	jsr ($FCE0.w,X)		; FC E0 FC
	ldy $FFFE.w,X		; BC FE FF
	adc $0703FD.l,X		; 7F FD 03 07
	jsr ($F0F7.w,X)		; FC F7 F0
	adc ($88.b,S),Y		; 73 88
	cmp ($0C.b,X)		; C1 0C
	ora $5FCA.w		; 0D CA 5F
	iny		; C8
	eor $FFA854.l,X		; 5F 54 A8 FF
	eor #$03.b		; 49 03
	sta [$E9.b]		; 87 E9
	tyx		; BB
	sbc ($F8.b,X)		; E1 F8
	ora #$F8.b		; 09 F8
	eor #$E8.b		; 49 E8
	cmp $74.b,X		; D5 74
	sbc $0665FF.l,X		; FF FF 65 06
	sbc ($05.b)		; F2 05
	sbc $FD63.w,Y		; F9 63 FD
	sbc ($FD.b),Y		; F1 FD
	sbc $F9FE.w,Y		; F9 FE F9
	sbc $3FFF7C.l,X		; FF 7C FF 3F
	sbc $01F8FE.l,X		; FF FE F8 01
	sed		; F8
	ora $FD.b,S		; 03 FD
	adc $FF.b,S		; 63 FF
	sbc ($FF.b),Y		; F1 FF
	beq  -3.b		; F0 FD
	lda $33.b,X		; B5 33
	lda ($33.b,S),Y		; B3 33
	tyx		; BB
	sbc $734BFF.l,X		; FF FF 4B 73
	wai		; CB
	.db $82, $C2, $4A		; 82 C2 4A
	plx		; FA
	dec $06.b		; C6 06
	sbc $C4.b		; E5 C4
	bmi 120.b		; 30 78
	bmi 124.b		; 30 7C
	php		; 08
	sbc $404C7F.l,X		; FF 7F 4C 40
	cpy $F985.w		; CC 85 F9
	ora $81.b		; 05 81
	sbc $FB03.w,Y		; F9 03 FB
	cmp [$3F.b]		; C7 3F
	bra -65.b		; 80 BF
	bra 127.b		; 80 7F
	cpx $3959.w		; EC 59 39
	sbc $F1B3.w,X		; FD B3 F1
	inc $FF20.w,X		; FE 20 FF
	rts		; 60

	bra -18.b		; 80 EE
	sta $1AD6.w		; 8D D6 1A
	phx		; DA
	cpx $FBDA.w		; EC DA FB
.ACCU 8
	sep #$60		; E2 60
	pei ($7C.b)		; D4 7C
	cpx #$D8.b		; E0 D8
	clc		; 18
	sbc $8D3BF8.l,X		; FF F8 3B 8D
	.db $82, $88, $08		; 82 88 08
	inc $10FC.w,X		; FE FC 10
	sbc $FDEAA2.l,X		; FF A2 EA FD
	cmp $3F.b,S		; C3 3F
	inc $E0FC.w,X		; FE FC E0
	beq  -2.b		; F0 FE
	asl $06.b		; 06 06
	cop $02.b		; 02 02
	sta ($81.b,X)		; 81 81
	cmp ($41.b,X)		; C1 41
	jsr ($FE7F.w,X)		; FC 7F FE
	sbc [$37.b],Y		; F7 37
	ply		; 7A
	inc A		; 1A
	ply		; 7A
	asl A		; 0A
	sed		; F8
	inc $FEFC.w,X		; FE FC FE
	ror $BEFF.w,X		; 7E FF BE
	jsr ($FEFF.w,X)		; FC FF FE
	iny		; C8
	sbc $F0FAE0.l,X		; FF E0 FA F0
	plx		; FA
	jmp $DCA280.l		; 5C 80 A2 DC
	lda $FFDE.w		; AD DE FF
	sbc $BE5F.w,X		; FD 5F BE
	sta $997E.w,X		; 9D 7E 99
	ror $FC02.w,X		; 7E 02 FC
	tsb $F8.b		; 04 F8
	adc ($D9.b,X)		; 61 D9
	jmp.w [$DE8C]		; DC 8C DE
	asl $708F.w,X		; 1E 8F 70
	ldx $7E1C.w,Y		; BE 1C 7E
	clc		; 18
	ror $F04F.w,X		; 7E 4F F0
	brk $30.b		; 00 30
	brk $80.b		; 00 80
	lda $FE0D.w,X		; BD 0D FE
	ror $B330.w,X		; 7E 30 B3
	lda $7F32.w,Y		; B9 32 7F
	and ($82.b)		; 32 82
	asl $60.b,X		; 16 60
	inx		; E8
	ora $FA.b,X		; 15 FA
	inc $FFCD.w,X		; FE CD FF
	sed		; F8
	ora ($0A.b),Y		; 11 0A
	sbc #$FC.b		; E9 FC
	tsb $EB.b		; 04 EB
	ldx $87D2.w		; AE D2 87
	tsb $0C1E.w		; 0C 1E 0C
	trb $19E8.w		; 1C E8 19
	pei ($FC.b)		; D4 FC
	sbc $8011F8.l,X		; FF F8 11 80
	sbc $7AF4.w,X		; FD F4 7A
	bmi -62.b		; 30 C2
	trb $3808.w		; 1C 08 38
	bpl -30.b		; 10 E2
	sed		; F8
	ora $07B10C.l		; 0F 0C B1 07
	sbc $FDC705.l,X		; FF 05 C7 FD
	ldx $D9.b		; A6 D9
	clc		; 18
	bit $3DFE.w,X		; 3C FE 3D
	clc		; 18
	cpy #$F8.b		; C0 F8
	ora ($8C.b),Y		; 11 8C
	brk $9E.b		; 00 9E
	tsb $D5FF.w		; 0C FF D5
	inc $FC1C.w,X		; FE 1C FC
	sei		; 78
	jmp ($FE18.w,X)		; 7C 18 FE
	clc		; 18
	sbc $C083FE.l,X		; FF FE 83 C0
	rol $83.b,X		; 36 83
	ldy $60.b,X		; B4 60
	sed		; F8
	trb $1F.b		; 14 1F
	lda ($04.b)		; B2 04
	brk $CE.b		; 00 CE
	tsb $EE.b		; 04 EE
	cpy $FC.b		; C4 FC
	asl $7AFE.w		; 0E FE 7A
	ora $A830.w,X		; 1D 30 A8
	eor #$FF.b		; 49 FF
	sed		; F8
	and ($C0.b,X)		; 21 C0
	dex		; CA
	bpl  16.b		; 10 10
	jsr $FFFF.w		; 20 FF FF
	plx		; FA
	dex		; CA
	cpx #$F0.b		; E0 F0
	pea $EB92.w		; F4 92 EB
	inc $95FE.w,X		; FE FE 95
	phx		; DA
	sec		; 38
	php		; 08
	plp		; 28
	inc $CB.b		; E6 CB
	cld		; D8
	ora $BD.b		; 05 BD
	sta $E600C9.l		; 8F C9 00 E6
	inx		; E8
	ora #$E0.b		; 09 E0
	eor ($A8.b),Y		; 51 A8
	tsb $F8FF.w		; 0C FF F8
	asl $7E.b,X		; 16 7E
	bit $7C.b,X		; 34 7C
	beq 119.b		; F0 77
	cop $F1.b		; 02 F1
	inc $307A.w,X		; FE 7A 30
	adc $1E3F32.l,X		; 7F 32 3F 1E
	asl $F8E0.w,X		; 1E E0 F8
	bpl  -1.b		; 10 FF
	ror $7A55.w,X		; 7E 55 7A
	tsb $61F6.w		; 0C F6 61
	rep #$40		; C2 40
	cpx #$12.b		; E0 12
	tsb $FEF1.w		; 0C F1 FE
	bit $FC18.w,X		; 3C 18 FC
	sec		; 38
	bvc -23.b		; 50 E9
	bit #$11.b		; 89 11
	bne  17.b		; D0 11
	cpx $EA.b		; E4 EA
	cpy $F8.b		; C4 F8
	ora [$FF.b],Y		; 17 FF
	sec		; 38
	bpl  15.b		; 10 0F
	sei		; 78
	jmp ($FE38.w,X)		; 7C 38 FE
	stz $FC.b,X		; 74 FC
	eor $797C.w		; 4D 7C 79
	bmi  48.b		; 30 30
	ora $41.b,X		; 15 41
	cpx #$F8.b		; E0 F8
	bpl  10.b		; 10 0A
	sbc ($FE.b)		; F2 FE
	jsr ($10A0.w,X)		; FC A0 10
	ldy #$F8.b		; A0 F8
	ora ($BF.b),Y		; 11 BF
	cmp $E0.b,S		; C3 E0
	sbc $F8187C.l,X		; FF 7C 18 F8
	bvs 112.b		; 70 70
	bit $F0.b		; 24 F0
	ora ($3C.b)		; 12 3C
	brk $9E.b		; 00 9E
	bit $2EAF.w,X		; 3C AF 2E
	php		; 08
	trb $7E08.w		; 1C 08 7E
	php		; 08
	bit $F8.b,X		; 34 F8
	ora #$60.b		; 09 60
	sed		; F8
	ora $19F820.l		; 0F 20 F8 19
	asl $2204.w		; 0E 04 22
	sbc $820028.l,X		; FF 28 00 82
	ora ($A0.b),Y		; 11 A0
	and ($00.b)		; 32 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00DF.w		; ED DF 00
	sbc $014CF8.l,X		; FF F8 4C 01
	inc $F8.b		; E6 F8
	clc		; 18
	ora [$00.b]		; 07 00
	tas		; 1B
	brk $6F.b		; 00 6F
	brk $BF.b		; 00 BF
	inc $0BF8.w		; EE F8 0B
	eor $1F070F.l		; 4F 0F 07 1F
	ora $F67F7F.l,X		; 1F 7F 7F F6
	ora $00F300.l		; 0F 00 F3 00
	cmp $F70B.w,Y		; D9 0B F7
	sbc $FCFFFE.l,X		; FF FE FF FC
	ora $FFFF0F.l		; 0F 0F FF FF
	sbc $5FF0.w,X		; FD F0 5F
	ldx $DEC6.w		; AE C6 DE
	brk $3B.b		; 00 3B
	brk $E5.b		; 00 E5
	brk $FB.b		; 00 FB
	brk $FD.b		; 00 FD
	cpx #$FD.b		; E0 FD
	sed		; F8
	sta [$C6.b]		; 87 C6
	cmp [$C7.b]		; C7 C7
	xce		; FB
	xce		; FB
	sbc $FEFD.w,X		; FD FD FE
	inc $63E0.w,X		; FE E0 63
	sty $F0.b		; 84 F0
	brk $6C.b		; 00 6C
	inc $FE.b		; E6 FE
	cpx $A4.b		; E4 A4
	sbc $1F.b,S		; E3 1F
	cmp $E23300.l,X		; DF 00 33 E2
	beq -16.b		; F0 F0
	bit $5D3C.w,X		; 3C 3C 5D
	eor $DF6E.w,X		; 5D 6E DF
	sbc $2E2EFF.l,X		; FF FF 2E 2E
	dec $B0CE.w		; CE CE B0
	jsr ($0080.w,X)		; FC 80 00
	rti		; 40

	brk $B0.b		; 00 B0
	brk $68.b		; 00 68
	brk $7E.b		; 00 7E
	pea $8228.w		; F4 28 82
	sbc $C08080.l,X		; FF 80 80 C0
	cpy #$D0.b		; C0 D0
	sbc $3FF80E.l,X		; FF 0E F8 3F
	asl $6301.w		; 0E 01 63
	sty $000D.w		; 8C 0D 00
	ora [$FE.b],Y		; 17 FE
	ora $5F2EFE.l,X		; 1F FE 2E 5F
	bra  -2.b		; 80 FE
	tsb $04.b		; 04 04
	asl $06.b		; 06 06
	asl $FDFF.w		; 0E FF FD
	jsr $FFFF.w		; 20 FF FF
	sbc $223E00.l,X		; FF 00 3E 22
	asl $F2.b		; 06 F2
	.db $82, $37, $86		; 82 37 86
	and $84.b,X		; 35 84
	adc $F9C3.w,Y		; 79 C3 F9
	eor ($9C.b,X)		; 41 9C
	rti		; 40

	sbc $00C1C3.l,X		; FF C3 C1 00
	sbc $7D00.w,Y		; F9 00 7D
	brk $79.b		; 00 79
	brk $7B.b		; 00 7B
	brk $3C.b		; 00 3C
	sbc $00.b		; E5 00
	bpl -92.b		; 10 A4
	and $44012E.l,X		; 3F 2E 01 44
	asl $FC.b		; 06 FC
	inc $E1B1.w,X		; FE B1 E1
	lda $01F080.l,X		; BF 80 F0 01
	beq  -8.b		; F0 F8
	ora #$7F.b		; 09 7F
	and ($C0.b)		; 32 C0
	bvs  16.b		; 70 10
	beq   4.b		; F0 04
	txs		; 9A
	cpx #$F8.b		; E0 F8
	inc $01F1.w,X		; FE F1 01
	adc $01F001.l,X		; 7F 01 F0 01
	ora [$48.b]		; 07 48
	ora $88.b,S		; 03 88
	sta [$78.b]		; 87 78
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	dec $FE.b		; C6 FE
	sbc $1F13FE.l,X		; FF FE 13 1F
	and $0E.b,X		; 35 0E
	adc $3A4550.l,X		; 7F 50 45 3A
	cmp ($AE.b,X)		; C1 AE
	.db $42, $AC		; 42 AC
	.db $82, $1C, $21		; 82 1C 21
	rep #$86		; C2 86
	clc		; 18
	dec $C0.b,X		; D6 C0
	ora ($14.b)		; 12 14
	jsr $070F.w		; 20 0F 07
	bpl  33.b		; 10 21
	ora ($41.b),Y		; 11 41
	and ($FE.b,X)		; 21 FE
	lda ($00.b,X)		; A1 00
	and ($F4.b,X)		; 21 F4
	stx $FEDF.w		; 8E DF FE
	bpl  -2.b		; 10 FE
	clc		; 18
	brk $5F.b		; 00 5F
	eor $FDFFDF.l,X		; 5F DF FF FD
	jmp ($EF14.w)		; 6C 14 EF
	sbc $1FF820.l,X		; FF 20 F8 1F
	ora $FE.b,S		; 03 FE
	rol A		; 2A
	sbc ($E0.b)		; F2 E0
	eor ($FC.b),Y		; 51 FC
	sed		; F8
	ora [$00.b]		; 07 00
	ora $02.b		; 05 02
	inc $1B.b,X		; F6 1B
	sbc $F8.b,X		; F5 F8
	plx		; FA
	sed		; F8
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	asl $F144.w		; 0E 44 F1
	eor ($FE.b)		; 52 FE
	sta $E03F60.l,X		; 9F 60 3F E0
	lda ($C0.b)		; B2 C0
	nop		; EA
	mvp $7F,$F2		; 44 F2 7F
	adc $FAF244.l,X		; 7F 44 F2 FA
	ldy $227B.w		; AC 7B 22
	sed		; F8
	asl A		; 0A
	inc $F8FF.w,X		; FE FF F8
	ora $0CF8E2.l		; 0F E2 F8 0C
	jsr ($E103.w,X)		; FC 03 E1
	sed		; F8
	ora $F800FC.l		; 0F FC 00 F8
	tsb $80.b		; 04 80
	inc $FEFA.w,X		; FE FA FE
	trb $77.b		; 14 77
	brk $E6.b		; 00 E6
	clc		; 18
	sbc ($0E.b),Y		; F1 0E
	cpx #$F8.b		; E0 F8
	ora $6D008C.l		; 0F 8C 00 6D
	adc $FC50A2.l		; 6F A2 50 FC
	sbc $F37244.l,X		; FF 44 72 F3
	inx		; E8
	cpx $878F.w		; EC 8F 87
	sbc $00A4FE.l,X		; FF FE A4 00
	sty $FE.b,X		; 94 FE
	eor ($00.b)		; 52 00
	lda ($FC.b)		; B2 FC
	adc $B280FC.l,X		; 7F FC 80 B2
	rti		; 40

	rol A		; 2A
	rti		; 40

	cli		; 58
	cli		; 58
	pla		; 68
	sbc $CCACAC.l,X		; FF AC AC CC
	cpy $DFB8.w		; CC B8 DF
	cpx $F4FF.w		; EC FF F4
	pea $E820.w		; F4 20 E8
	and $5C003C.l,X		; 3F 3C 00 5C
	brk $5D.b		; 00 5D
	bmi -15.b		; 30 F1
	sbc ($3F.b,X)		; E1 3F
	sta $FE20.w,Y		; 99 20 FE
	cmp ($20.b)		; D2 20
	ora [$60.b],Y		; 17 60
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	rol $E1C6.w,X		; 3E C6 E1
	sbc $7DFF7E.l,X		; FF 7E FF 7D
	adc $FF74.w,X		; 7D 74 FF
	and ($FF.b,X)		; 21 FF
	lda $BF20CE.l,X		; BF CE 20 BF
	bpl  39.b		; 10 27
	bpl  27.b		; 10 1B
	brk $15.b		; 00 15
	brk $0A.b		; 00 0A
	brk $09.b		; 00 09
	brk $1E.b		; 00 1E
	sbc $E9D8FF.l,X		; FF FF D8 E9
	eor $C0CF40.l		; 4F 40 CF C0
	sbc [$E0.b]		; E7 E0
	xba		; EB
	inx		; E8
	sbc $F4.b,X		; F5 F4
	inc $F6.b,X		; F6 F6
	ora [$C0.b]		; 07 C0
	lda $A06FC2.l		; AF C2 6F A0
	tsb $EE.b		; 04 EE
	trb $80B3.w		; 1C B3 80
	ora $401F30.l		; 0F 30 1F 40
	beq -16.b		; F0 F0
	ora #$7C.b		; 09 7C
	sed		; F8
	sbc $E70230.l,X		; FF 30 02 E7
	tsb $EE.b		; 04 EE
	php		; 08
	dec $9214.w		; CE 14 92
	plp		; 28
	.db $62, $10, $A2		; 62 10 A2
	xce		; FB
	sbc $C04260.l,X		; FF 60 42 C0
	beq -14.b		; F0 F2
	sbc ($01.b),Y		; F1 01
	sbc ($01.b,X)		; E1 01
	cmp $01.b		; C5 01
	sta $1D01.w		; 8D 01 1D
	ora ($3D.b,X)		; 01 3D
	ora $8601FD.l,X		; 1F FD 01 86
	clc		; 18
	dex		; CA
	bpl  50.b		; 10 32
	pla		; 68
	inc $05FC.w,X		; FE FC 05
	brk $21.b		; 00 21
	eor ($EF.b,X)		; 41 EF
	cmp $25.b,S		; C3 25
	ora $CD.b		; 05 CD
	cmp $FFFE.w		; CD FE FF
	sbc $FFFF.w,X		; FD FF FF
	ora $FE00.w,Y		; 19 00 FE
	ora ($FF.b,S),Y		; 13 FF
	plb		; AB
	php		; 08
	rol $09.b,X		; 36 09
	ora ($2D.b)		; 12 2D
	sta ($2D.b)		; 92 2D
	bcc  47.b		; 90 2F
	cli		; 58
	lda [$0A.b]		; A7 0A
	pea $F8FF.w		; F4 FF F8
	ora #$FF.b		; 09 FF
	ora $1FF80E.l		; 0F 0E F8 1F
	asl A		; 0A
	ora $0C.b		; 05 0C
	ora $08.b,S		; 03 08
	ora [$09.b]		; 07 09
	asl $12.b		; 06 12
	ora $0817.w		; 0D 17 08
	beq  31.b		; F0 1F
	inc $0544.w,X		; FE 44 05
	ora $03.b		; 05 03
	ora $07.b,S		; 03 07
	ora [$06.b]		; 07 06
	asl $0D.b		; 06 0D
	sbc $FF.b,S		; E3 FF
	sbc $20FF0B.l,X		; FF 0B FF 20
	cmp $83FE01.l,X		; DF 01 FE 83
	jmp ($F807.w,X)		; 7C 07 F8
	ora $F00481.l		; 0F 81 04 F0
	cmp $084618.l,X		; DF 18 46 08
	sbc ($86.b,S),Y		; F3 86
	ldy #$E9.b		; A0 E9
	asl $FF.b		; 06 FF
	xce		; FB
	xce		; FB
	dec A		; 3A
	sbc $7F00.w		; ED 00 7F
	ldy #$BE.b		; A0 BE
	brk $FA.b		; 00 FA
	sec		; 38
	rtl		; 6B

	plp		; 28
	cmp #$40.b		; C9 40
	inc $FFE0.w,X		; FE E0 FF
	sbc $C7DFDF.l,X		; FF DF DF C7
	cmp [$87.b]		; C7 87
	sta [$97.b]		; 87 97
	sta [$3F.b]		; 87 3F
	ora [$3F.b]		; 07 3F
	ora $BE.b,S		; 03 BE
	eor ($C3.b,X)		; 41 C3
	bit $0BFF.w,X		; 3C FF 0B
	cpx #$1F.b		; E0 1F
	beq  15.b		; F0 0F
	cld		; D8
	ora [$6C.b]		; 07 6C
	ora $E7.b,S		; 03 E7
	brk $AD.b		; 00 AD
	cpx #$E8.b		; E0 E8
	tsb $30FF.w		; 0C FF 30
	clv		; B8
	adc [$77.b],Y		; 77 77
	sec		; 38
	cmp [$0C.b]		; C7 0C
	sbc ($04.b,S),Y		; F3 04
	xce		; FB
	sbc #$30.b		; E9 30
	cmp $F65FBC.l		; CF BC 5F F6
	asl $9FE1.w,X		; 1E E1 9F
	rts		; 60

	brk $F0.b		; 00 F0
	ora $046291.l		; 0F 91 62 04
	sbc $E702.w,Y		; F9 02 E7
	cmp $FDF8.w,Y		; D9 F8 FD
	cpx #$24.b		; E0 24
	cmp $02.b,S		; C3 02
	sbc ($01.b,X)		; E1 01
	cpx #$E0.b		; E0 E0
	sed		; F8
	ora $1C204A.l		; 0F 4A 20 1C
	cpx #$E1.b		; E0 E1
	sbc $FEC03C.l,X		; FF 3C C0 FE
	rol A		; 2A
	cpy #$2E.b		; C0 2E
	cpy #$56.b		; C0 56
	bra  13.b		; 80 0D
	bra -12.b		; 80 F4
	pea $300C.w		; F4 0C 30
	beq  -1.b		; F0 FF
	sed		; F8
	sbc $D8ECEC.l,X		; FF EC EC D8
	sbc $F00E58.l,X		; FF 58 0E F0
	and ($02.b,X)		; 21 02
	asl $E9.b		; 06 E9
	tsb $01.b		; 04 01
	asl $01.b		; 06 01
	php		; 08
	ora $0E.b,S		; 03 0E
	ora ($C6.b,X)		; 01 C6
	clc		; 18
	asl $FF.b,X		; 16 FF
	sbc #$01.b		; E9 01
	sbc $07FF03.l,X		; FF 03 FF 07
	adc $0FFFF8.l,X		; 7F F8 FF 0F
	ora $3640AB.l		; 0F AB 40 36
	cmp #$60.b		; C9 60
	ora $FA.b		; 05 FA
	tsb $9FF2.w		; 0C F2 9F
	cpy $D228.w		; CC 28 D2
	lsr A		; 4A
	bcc -120.b		; 90 88
	brk $0C.b		; 00 0C
	sbc $FFF7FC.l,X		; FF FC F7 FF
	eor $0010FF.l,X		; 5F FF 10 00
	bcc   0.b		; 90 00
	bpl -128.b		; 10 80
	rts		; 60

	bra  32.b		; 80 20
	cpy #$A3.b		; C0 A3
	rti		; 40

	adc [$10.b]		; 67 10
	sbc ($FD.b,X)		; E1 FD
	cmp $80F48A.l,X		; DF 8A F4 80
.INDEX 8
	sep #$DC		; E2 DC
	jmp.w [$DBD8]		; DC D8 DB
	cpy #$C7.b		; C0 C7
	sbc $3333.w,X		; FD 33 33
	ora $3FDAC4.l		; 0F C4 DA 3F
	asl $20DF.w		; 0E DF 20
	cmp [$28.b],Y		; D7 28
	cmp $8EF524.l,X		; DF 24 F5 8E
	cpy #$C0.b		; C0 C0
	ora $3B5E.w,X		; 1D 5E 3B
	cpx #$68.b		; E0 68
	sbc ($03.b),Y		; F1 03
	bra  -2.b		; 80 FE
	eor ($48.b,S),Y		; 53 48
	dec $1AC8.w		; CE C8 1A
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	bmi  -2.b		; 30 FE
	sbc [$34.b],Y		; F7 34
	sta [$04.b]		; 87 04
	cmp [$FE.b]		; C7 FE
	brk $31.b		; 00 31
	jsr ($8347.w,X)		; FC 47 83
	ora $FD01.w,X		; 1D 01 FD
	ora ($C1.b,X)		; 01 C1
	php		; 08
	brk $F8.b		; 00 F8
	ora ($FE.b,X)		; 01 FE
	sed		; F8
	adc ($65.b,X)		; 61 65
	ora $0A.b		; 05 0A
	ora $08.b		; 05 08
	ora [$05.b]		; 07 05
	ora $02.b		; 05 02
	sbc ($FD.b,S),Y		; F3 FD
	sbc ($A6.b,X)		; E1 A6
	cmp $E0A0.w,Y		; D9 A0 E0
	ora #$1E.b		; 09 1E
	asl $EE0E.w,X		; 1E 0E EE
	asl $F6.b		; 06 F6
	stp		; DB
	ora #$E6.b		; 09 E6
	sbc $E20C01.l,X		; FF 01 0C E2
	dey		; 88
	.db $62, $2A, $40		; 62 2A 40
	php		; 08
	rti		; 40

	pha		; 48
	brk $FE.b		; 00 FE
	mvn $CA,$38		; 54 38 CA
	ror A		; 6A
	jsr ($F8FF.w,X)		; FC FF F8
	ora #$00.b		; 09 00
	sed		; F8
	ora $000F66.l,X		; 1F 66 0F 00
	phd		; 0B
	ror $50.b,X		; 76 50
	inc $FE02.w,X		; FE 02 FE
	sbc $0B0B.w,X		; FD 0B 0B
	asl $FE.b		; 06 FE
	sbc ($FF.b)		; F2 FF
	inc $FE82.w,X		; FE 82 FE
	stz $53.b		; 64 53
	inc $D17C.w		; EE 7C D1
	lda ($00.b,S),Y		; B3 00
	plb		; AB
	brk $4A.b		; 00 4A
	bit $C4.b,X		; 34 C4
	ora ($06.b,X)		; 01 06
	plx		; FA
	plx		; FA
	jsr ($FF6D.w,X)		; FC 6D FF
	adc $7474F8.l,X		; 7F F8 74 74
	ldy $B4.b,X		; B4 B4
	sta $DD00.w,X		; 9D 00 DD
	rti		; 40

	inc $206D.w,X		; FE 6D 20
	lda [$50.b],Y		; B7 50
	sbc $68DBF8.l,X		; FF F8 DB 68
	sbc #$74.b		; E9 74
	sbc [$38.b],Y		; F7 38
	adc $FE3F03.l,X		; 7F 03 3F FE
	ora $7F4F81.l,X		; 1F 81 4F 7F
	jsr ($6701.w,X)		; FC 01 67
	ora ($73.b,X)		; 01 73
	ora ($39.b,X)		; 01 39
	ora ($BB.b,X)		; 01 BB
	cpy #$FF.b		; C0 FF
	tsb $DF.b		; 04 DF
	bra  -1.b		; 80 FF
	sta $BD84DB.l		; 8F DB 84 BD
	dec $7B.b		; C6 7B
	sty $AF.b		; 84 AF
	.db $42, $76		; 42 76
	ror $33.b,X		; 76 33
	and ($31.b,S),Y		; 33 31
	sbc $35FF03.l,X		; FF 03 FF 35
	and ($16.b),Y		; 31 16
	bpl  20.b		; 10 14
	bpl  80.b		; 10 50
	bpl -98.b		; 10 9E
	rts		; 60

	ldy $F4.b		; A4 F4
	adc $A0.b,S		; 63 A0
	lda [$D0.b],Y		; B7 D0
	cmp ($6D.b),Y		; D1 6D
	brk $6F.b		; 00 6F
	tsb $EB.b		; 04 EB
	jsr $FC7F.w		; 20 7F FC
	sta [$FF.b]		; 87 FF
	adc $A7A76F.l		; 6F 6F A7 A7
	lda ($B3.b,S),Y		; B3 B3
	lda ($B1.b),Y		; B1 B1
	phx		; DA
	ora [$88.b]		; 07 88
	brk $60.b		; 00 60
	rti		; 40

	jsr $685A.w		; 20 5A 68
	tsb $D5.b		; 04 D5
	and $007222.l,X		; 3F 22 72 00
	sbc ($02.b,X)		; E1 02
	jsr ($F27A.w,X)		; FC 7A F2
	lda [$B7.b],Y		; B7 B7
	sta $BB8D.w		; 8D 8D BB
	tyx		; BB
	sta $FC42.w		; 8D 42 FC
	rti		; 40

	bit $FE0E.w,X		; 3C 0E FE
	eor $004B00.l		; 4F 00 4B 00
	jsr $8344.w		; 20 44 83
	sta ($E8.b)		; 92 E8
	sbc $FF.b		; E5 FF
	lda $5B6DFF.l,X		; BF FF 6D 5B
	bra -52.b		; 80 CC
	brk $F8.b		; 00 F8
	ora $4A2F.w,X		; 1D 2F 4A
	sbc ($5F.b),Y		; F1 5F
	ror $D1.b,X		; 76 D1
	lda $FDF1A2.l,X		; BF A2 F1 FD
	ror $C9.b		; 66 C9
	ora $2ACE.w,X		; 1D CE 2A
	cmp ($1C.b)		; D2 1C
.ACCU 8
.INDEX 8
	sep #$7C		; E2 7C
	adc $7AFE.w,X		; 7D FE 7A
	sei		; 78
	dey		; 88
.ACCU 16
.INDEX 16
	rep #$BF		; C2 BF
	ldy #$E63E.w		; A0 3E E6
	inc $F7F7.w,X		; FE F7 F7
	beq -16.b		; F0 F0
	cpx #$80E7.w		; E0 E7 80
	sta $ED0AF6.l,X		; 9F F6 0A ED
	inc $D358.w,X		; FE 58 D3
	ora ($1A.b,X)		; 01 1A
	cmp ($FD.b)		; D2 FD
	cop $FF.b		; 02 FF
	eor [$E9.b],Y		; 57 E9
	phd		; 0B
	cmp ($06.b),Y		; D1 06
	sbc $D931F5.l,X		; FF F5 31 D9
	ora ($FE.b,X)		; 01 FE
	eor ($F2.b,X)		; 41 F2
	sed		; F8
	cmp $84.b,S		; C3 84
	eor $04.b,S		; 43 04
	lda $FF.b		; A5 FF
	sbc $00D808.l,X		; FF 08 D8 00
	beq   7.b		; F0 07
	sbc $0A.b,S		; E3 0A
	sbc ($14.b,S),Y		; F3 14
	xba		; EB
	tsb $01.b		; 04 01
	sec		; 38
	sta ($38.b,X)		; 81 38
	cmp $3D.b,S		; C3 3D
	asl $10.b,X		; 16 10
	sbc [$1A.b]		; E7 1A
	sbc ($F4.b,X)		; E1 F4
	brk $E8.b		; 00 E8
	cmp $2ACF.w,X		; DD CF 2A
	cmp #$070B.w		; C9 0B 07
	stx $80.b		; 86 80
	ldy #$D8FE.w		; A0 FE D8
	cpx #$C00F.w		; E0 0F C0
	sta $6DDD50.l		; 8F 50 DD 6D
	ldy #$0AF8.w		; A0 F8 0A
	inc $0BF8.w,X		; FE F8 0B
	lda ($F2.b),Y		; B1 F2
	inc $0AF8.w,X		; FE F8 0A
	inc $F3E8.w,X		; FE E8 F3
	sed		; F8
	asl A		; 0A
	eor $03FDE1.l,X		; 5F E1 FD 03
	cmp $1738.w,X		; DD 38 17
	ora [$B3.b],Y		; 17 B3
	cmp #$FCF1.w		; C9 F1 FC
	sta $03C0.w,X		; 9D C0 03
	lsr A		; 4A
	sbc ($38.b),Y		; F1 38
	brk $E8.b		; 00 E8
	and ($2C.b,X)		; 21 2C
	cpy #$FF19.w		; C0 19 FF
	eor $FE.b		; 45 FE
	ldx #$FF01.w		; A2 01 FF
	sbc $70.b,S		; E3 70
	ora ($09.b,X)		; 01 09
	ora ($0F.b,X)		; 01 0F
	ora ($0B.b,X)		; 01 0B
	ora ($0A.b,X)		; 01 0A
	ora ($BA.b,X)		; 01 BA
	sbc $F10F5C.l,X		; FF 5C 0F F1
	jmp $060E0E.l		; 5C 0E 0E 06
	asl $E4.b		; 06 E4
	tsb $FF.b		; 04 FF
	sbc ($1E.b,S),Y		; F3 1E
	sbc $CAB1FF.l,X		; FF FF B1 CA
	sbc $EFF4.w,Y		; F9 F4 EF
	clc		; 18
	cld		; D8
	stz $5D.b		; 64 5D
	sed		; F8
	jmp ($1C6A.w)		; 6C 6A 1C
	jsl $FA031B.l		; 22 1B 03 FA
	sbc $D9BD09.l,X		; FF 09 BD D9
	ldx $40E1.w,Y		; BE E1 40
	eor $58.b,S		; 43 58
	bit #$C178.w		; 89 78 C1
	jsr $C2EF.w		; 20 EF C2
	lda $E1FFCC.l,X		; BF CC FF E1
	xce		; FB
	tsb $9FA6.w		; 0C A6 9F
	sta $06.b		; 85 06
	sbc ($07.b),Y		; F1 07
	sbc $D0FE03.l,X		; FF 03 FE D0
	bpl -40.b		; 10 D8
	tsb $C0.b		; 04 C0
	tax		; AA
	rti		; 40

	asl A		; 0A
	cmp ($01.b)		; D2 01
	beq  -1.b		; F0 FF
	adc $0CDE06.l,X		; 7F 06 DE 0C
	lda [$14.b],Y		; B7 14
	adc $38C784.l,X		; 7F 84 C7 38
	lda ($7E.b),Y		; B1 7E
	lda ($76.b,S),Y		; B3 76
	tyx		; BB
	lsr $21.b,X		; 56 21
	tsb $FFF4.w		; 0C F4 FF
	pha		; 48
	sbc ($DC.b,X)		; E1 DC
	and ($12.b)		; 32 12
	dec A		; 3A
	sbc $1212FF.l,X		; FF FF 12 12
	lda ($40.b,X)		; A1 40
	nop		; EA
	rti		; 40

	pei ($E0.b)		; D4 E0
	inx		; E8
	bra  -2.b		; 80 FE
	rts		; 60

	eor $C068.w,Y		; 59 68 C0
	rol $7F.b,X		; 36 7F
	bra 103.b		; 80 67
	adc $151E1E.l		; 6F 1E 1E 15
	ora $0B.b,X		; 15 0B
	phd		; 0B
	inc A		; 1A
	stz $6216.w,X		; 9E 16 62
	stx $92.b		; 86 92
	cmp ($90.b),Y		; D1 90
	asl $FEF1.w		; 0E F1 FE
	eor $FE.b,S		; 43 FE
	eor ($8C.b,X)		; 41 8C
	lsr A		; 4A
	inc $FEA1.w,X		; FE A1 FE
.ACCU 16
	rep #$EA		; C2 EA
	asl $F2.b		; 06 F2
	eor ($00.b),Y		; 51 00
	sbc $00FF5F.l,X		; FF 5F FF 00
	cpy #$753F.w		; C0 3F 75
	bvc -120.b		; 50 88
	and $A0FE.w,Y		; 39 FE A0
	inc $FEE0.w,X		; FE E0 FE
	bra 119.b		; 80 77
	sec		; 38
	sbc $FFFFC0.l,X		; FF C0 FF FF
	clc		; 18
	cpx #$08FE.w		; E0 FE 08
	beq   4.b		; F0 04
	lda $0CFEFD.l,X		; BF FD FE 0C
	beq  76.b		; F0 4C
	bcs -126.b		; B0 82
	jmp.w [$FFF8]		; DC F8 FF
	sbc $3D007E.l,X		; FF 7E 00 3D
	brk $FE.b		; 00 FE
	lda $E146F5.l,X		; BF F5 46 E1
	sbc $5D00.w,X		; FD 00 5D
	cpx #$101D.w		; E0 1D 10
	cmp $FC08.w		; CD 08 FC
	jsr ($FEFE.w,X)		; FC FE FE
	sbc $F1C2FA.l,X		; FF FA C2 F1
	inc $02.b,X		; F6 02
	asl A		; 0A
	cop $02.b		; 02 02
	sep #$02		; E2 02
	sbc ($90.b)		; F2 90
	cmp ($FF.b,X)		; C1 FF
	sed		; F8
	ora $780030.l,X		; 1F 30 00 78
	beq  47.b		; F0 2F
	bmi  -2.b		; 30 FE
	ror $FF30.w,X		; 7E 30 FF
	ror $32FF.w,X		; 7E FF 32
	adc $C84A32.l,X		; 7F 32 4A C8
	ora $0281.w,Y		; 19 81 02
	plx		; FA
	sta ($FF.b)		; 92 FF
	sed		; F8
	ora ($A6.b),Y		; 11 A6
	cmp ($8B.b,X)		; C1 8B
	lda $FEFAEA.l,X		; BF EA FA FE
	tsb $0C1E.w		; 0C 1E 0C
	cpy #$15F8.w		; C0 F8 15
	eor $FDD4F1.l		; 4F F1 D4 FD
	brk $B8.b		; 00 B8
	bpl   0.b		; 10 00
	and $0E1F92.l,X		; 3F 92 1F 0E
	sbc $EEFF0A.l,X		; FF 0A FF EE
	inc $FE7C.w,X		; FE 7C FE
	lda ($AA.b,X)		; A1 AA
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	ora ($58.b),Y		; 11 58
	dex		; CA
	cli		; 58
	inc $09F8.w,X		; FE F8 09
	stz $15E8.w,X		; 9E E8 15
	inc $E0FE.w,X		; FE FE E0
	sbc ($EF.b,X)		; E1 EF
	phy		; 5A
	sbc $C010F8.l,X		; FF F8 10 C0
	brk $E0.b		; 00 E0
	cpy #$FEFE.w		; C0 FE FE
	sed		; F8
	cpx #$A850.w		; E0 50 A8
	eor $F8FF.w		; 4D FF F8
	and [$80.b]		; 27 80
	inc $3DFD.w,X		; FE FD 3D
	cpy $87.b		; C4 87
	xba		; EB
	inx		; E8
	sed		; F8
	phd		; 0B
	bra -112.b		; 80 90
	rti		; 40

	inc $FEB0.w,X		; FE B0 FE
	sta [$F5.b]		; 87 F5
	bcc  96.b		; 90 60
	php		; 08
	cpx #$18FE.w		; E0 FE 18
	cpx #$F8FF.w		; E0 FF F8
	ora #$F416.w		; 09 16 F4
	jmp ($1F90.w)		; 6C 90 1F
	lda ($EC.b)		; B2 EC
	bpl -22.b		; 10 EA
	bpl 122.b		; 10 7A
	brk $FE.b		; 00 FE
	ror $F5FE.w,X		; 7E FE F5
	inc $F20C.w,X		; FE 0C F2
	jsr ($F8FF.w,X)		; FC FF F8
	asl A		; 0A
	ror $F8.b		; 66 F8
	and $7C347E.l,X		; 3F 7E 34 7C
	dey		; 88
	sbc ($7A.b,S),Y		; F3 7A
	bmi 127.b		; 30 7F
	and ($3F.b)		; 32 3F
	eor $1E4B.w,X		; 5D 4B 1E
	asl $F8E0.w,X		; 1E E0 F8
	bpl  -1.b		; 10 FF
	ror $F60C.w,X		; 7E 0C F6
	rol $E0.b,X		; 36 E0
	ora $1F.b,X		; 15 1F
	tsb $1FF1.w		; 0C F1 1F
	mvn $3C,$FE		; 54 FE 3C
	clc		; 18
	jsr ($F838.w,X)		; FC 38 F8
	phk		; 4B
	cpx #$10F8.w		; E0 F8 10
	cpx $EA.b		; E4 EA
	plx		; FA
	inx		; E8
	ora $FF6F85.l		; 0F 85 6F FF
	sed		; F8
	phd		; 0B
	asl A		; 0A
	pea $79FE.w		; F4 FE 79
	bmi  -7.b		; 30 F9
	bvs -15.b		; 70 F1
	cpy #$12F8.w		; C0 F8 12
	sbc $BFC3.w,X		; FD C3 BF
	tsb $FEF1.w		; 0C F1 FE
	inc $FE5C.w,X		; FE 5C FE
	jmp.w [$D8FC]		; DC FC D8
	sed		; F8
	bcc -112.b		; 90 90
	xba		; EB
	plb		; AB
	rts		; 60

	sed		; F8
	ora ($FC.b),Y		; 11 FC
	sbc $F000.w,X		; FD 00 F0
	asl A		; 0A
	.db $62, $E8, $12		; 62 E8 12
	sed		; F8
	inc $ECCC.w,X		; FE CC EC
	brk $F7.b		; 00 F7
	ora ($F0.b,X)		; 01 F0
	eor ($00.b),Y		; 51 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	lda $F8FF00.l,X		; BF 00 FF F8
	sta $01.b,S		; 83 01
	ora ($02.b,X)		; 01 02
	cop $05.b		; 02 05
	tsb $0B.b		; 04 0B
	ora ($1E.b,X)		; 01 1E
	ora $3D.b,S		; 03 3D
	ora $FEEFE1.l		; 0F E1 EF FE
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	sbc $FC04.w,Y		; F9 04 FC
	asl $FF14.w,X		; 1E 14 FF
	ora $BD426A.l		; 0F 6A 42 BD
	brk $FF.b		; 00 FF
	adc ($8E.b),Y		; 71 8E
	sbc $F856.w,Y		; F9 56 F8
	cmp [$F9.b],Y		; D7 F9
	ldx $FF.b,Y		; B6 FF
	lda $1C1CE4.l,X		; BF E4 1C 1C
	ror $FE7E.w,X		; 7E 7E FE
	inc $CF8F.w,X		; FE 8F CF
	ora [$F7.b]		; 07 F7
	bvc  -8.b		; 50 F8
	sta [$FF.b],Y		; 97 FF
	adc #$BCC1.w		; 69 C1 BC
	sbc $80FE80.l,X		; FF 80 FE 80
	rti		; 40

	lda [$F8.b]		; A7 F8
	ora $85EF.w		; 0D EF 85
	sed		; F8
	ora $07FFFF.l,X		; 1F FF FF 07
	php		; 08
	phd		; 0B
	trb $00.b		; 14 00
	ora $012E11.l,X		; 1F 11 2E 01
	rol $5D22.w,X		; 3E 22 5D
	cop $7D.b		; 02 7D
	asl $79.b		; 06 79
	and $0404E6.l,X		; 3F E6 04 04
	ora $0C0D.w		; 0D 0D 0C
	tsb $FF1D.w		; 0C 1D FF
	rol $FFFF.w,X		; 3E FF FF
	sbc $FE64FF.l,X		; FF FF 64 FE
	ora #$738C.w		; 09 8C 73
	bra 127.b		; 80 7F
	rts		; 60

	sta $E91EE1.l,X		; 9F E1 1E E9
	asl $A9.b,X		; 16 A9
	lsr $FF.b,X		; 56 FF
	ora ($25.b,X)		; 01 25
	adc $8B.b,X		; 75 8B
	phb		; 8B
	inc $F6.b,X		; F6 F6
	lda $7F7FBF.l,X		; BF BF 7F 7F
	jmp ($FFFE.w,X)		; 7C FE FF
	sbc $46BEBE.l,X		; FF BE BE 46
	ldy #$C03F.w		; A0 3F C0
	ora $5FE6.w,X		; 1D E6 5F
	ldx #$7887.w		; A2 87 78
	bit $FFC0.w,X		; 3C C0 FF
	sta [$4B.b]		; 87 4B
	lda [$3F.b],Y		; B7 3F
	dec $9F.b		; C6 9F
	bra -64.b		; 80 C0
	cpy #$E0E6.w		; C0 E6 E0
	dec A		; 3A
	sec		; 38
	ldx $FF.b		; A6 FF
	sbc $C0F3F3.l,X		; FF F3 F3 C0
	cmp [$22.b]		; C7 22
	rol $76AF.w		; 2E AF 76
	wai		; CB
	bmi  -1.b		; 30 FF
	dey		; 88
	lda $21FF11.l,X		; BF 11 FF 21
	sbc $4F7FFF.l,X		; FF FF 7F 4F
	adc $3FBF1F.l,X		; 7F 1F BF 3F
	bvs   0.b		; 70 00
	and $00.b,X		; 35 00
	sta [$80.b]		; 87 80
	cmp $011FC1.l		; CF C1 1F 01
	sbc $8FBFFF.l,X		; FF FF BF 8F
	sbc $3F7F1F.l,X		; FF 1F 7F 3F
	txy		; 9B
	inc $99.b		; E6 99
	cmp $1C9F1C.l,X		; DF 1C 9F 1C
	lda $FF5D8E.l,X		; BF 8E 5D FF
	sbc $DCF18F.l,X		; FF 8F F1 DC
	lda ($E1.b,S),Y		; B3 E1
	dec $8200.w,X		; DE 00 82
	sec		; 38
	lda $7C7C.w,Y		; B9 7C 7C
	jmp $2CAC5C.l		; 5C 5C AC 2C
	ora $B1B1FF.l		; 0F FF B1 B1
	bne -112.b		; D0 90
	cpx #$E2A4.w		; E0 A4 E2
	xce		; FB
	sty $36.b		; 84 36
	cmp #$F23C.w		; C9 3C F2
	adc $C80FF8.l,X		; 7F F8 0F C8
	asl $C6.b		; 06 C6
	cmp $43.b,S		; C3 43
	cpx #$6880.w		; E0 80 68
	tas		; 1B
	txy		; 9B
	dec $C6.b		; C6 C6
	sbc $4445FF.l,X		; FF FF 45 44
	bvs  64.b		; 70 40
	sbc $3CC0.w,Y		; F9 C0 3C
	brk $7F.b		; 00 7F
	brk $83.b		; 00 83
	sei		; 78
	sta ($64.b,X)		; 81 64
	bmi -62.b		; 30 C2
	ora $01587F.l		; 0F 7F 58 01
	cmp $80.b		; C5 80
	sbc $8E.b		; E5 8E
	bra -93.b		; 80 A3
	php		; 08
	sta [$87.b]		; 87 87
	txy		; 9B
	txy		; 9B
	sec		; 38
	dec $3E.b		; C6 3E
	stx $06.b		; 86 06
	ora $FF.b,S		; 03 FF
	ora ($FF.b,X)		; 01 FF
	sta [$87.b]		; 87 87
	cmp $ED22.w		; CD 22 ED
	ora ($FE.b)		; 12 FE
	adc [$10.b]		; 67 10
	adc [$88.b],Y		; 77 88
	inc $1CE1.w,X		; FE E1 1C
	lda [$08.b],Y		; B7 08
	inc $DFDF.w,X		; FE DF DF
	sbc $A377FF.l		; EF FF 77 A3
	cmp $FFF7FF.l,X		; DF FF F7 FF
	sbc $F0.b,X		; F5 F0
	asl A		; 0A
	bvs  80.b		; 70 50
	ldy $936C.w		; AC 6C 93
	cpx $F0.b		; E4 F0
	phd		; 0B
	eor ($F4.b,X)		; 41 F4
	bvs 112.b		; 70 70
	ror $18.b,X		; 76 18
	beq  77.b		; F0 4D
	inc $F8FF.w,X		; FE FF F8
	asl $2B17.w		; 0E 17 2B
	sbc ($E1.b,X)		; E1 E1
	and $7FFE57.l		; 2F 57 FE 7F
	sta [$77.b]		; 87 77
	stx $FFFE.w		; 8E FE FF
	brk $FF.b		; 00 FF
	sbc $190FFF.l,X		; FF FF 0F 19
	ora $323F33.l,X		; 1F 33 3F 32
	and $244F46.l,X		; 3F 46 4F 24
	and $E06F64.l		; 2F 64 6F E0
	sbc $8FFE1F.l		; EF 1F FE 8F
	sta $F8B7F8.l,X		; 9F F8 B7 F8
	adc [$FE.b],Y		; 77 FE
	sbc #$F876.w		; E9 76 F8
	sbc [$F9.b]		; E7 F9
	inc $1F.b		; E6 1F
	inc $EE51.w,X		; FE 51 EE
	sbc ($0D.b)		; F2 0D
	and [$FF.b],Y		; 37 FF
	inc $F860.w,X		; FE 60 F8
	adc [$FF.b]		; 67 FF
	adc $7A7FFF.l		; 6F FF 7F 7A
	eor $F101FF.l		; 4F FF 01 F1
	asl $80DE.w,X		; 1E DE 80
	rti		; 40

	inc $C000.w,X		; FE 00 C0
	bra  79.b		; 80 4F
	sed		; F8
	cpx $E01F.w		; EC 1F E0
	ora $80BF00.l,X		; 1F 00 BF 80
	sbc $8FF206.l,X		; FF 06 F2 8F
	plx		; FA
	sbc [$8F.b],Y		; F7 8F
	phy		; 5A
	sbc ($97.b)		; F2 97
	sbc $DC20E0.l,X		; FF E0 20 DC
	tsb $01F3.w		; 0C F3 01
	inc $F886.w,X		; FE 86 F8
	ora #$E0E0.w		; 09 E0 E0
	adc $FCFC80.l,X		; 7F 80 FC FC
	sbc $7906FF.l,X		; FF FF 06 79
	lsr $B9.b		; 46 B9
	inx		; E8
	inc $07FF.w,X		; FE FF 07
	ora #$03F6.w		; 09 F6 03
	jsr ($FD02.w,X)		; FC 02 FD
	.db $42, $BD		; 42 BD
	rol $7E3E.w,X		; 3E 3E 7E
	ror $01CA.w,X		; 7E CA 01
	inc $FCFF.w,X		; FE FF FC
	inc $FF.b,X		; F6 FF
	adc $6986.w,Y		; 79 86 69
	stx $59.b,Y		; 96 59
	ldx $FF.b		; A6 FF
	sbc ($1F.b,X)		; E1 1F
	cpx #$B24D.w		; E0 4D B2
	.db $62, $9D, $DD		; 62 9D DD
	jsl $EA4EB1.l		; 22 B1 4E EA
	adc $E1FF6F.l		; 6F 6F FF E1
	eor $1F1F5F.l,X		; 5F 5F 1F 1F
	eor $624D.w		; 4D 4D 62
	.db $62, $DF, $DF		; 62 DF DF
	stz $2DD6.w,X		; 9E D6 2D
	sbc $CC3EFF.l,X		; FF FF 3E CC
	stz $DF64.w,X		; 9E 64 DF
	rol $9F.b,X		; 36 9F
	ror A		; 6A
	wai		; CB
	and $0D.b,S		; 23 0D
	sbc $FE.b,X		; F5 FE
	cop $C4.b		; 02 C4
	cpy $FFFF.w		; CC FF FF
	ora $0D.b		; 05 0D
	lda $A5.b		; A5 A5
	rep #$C6		; C2 C6
	.db $82, $82, $D4		; 82 82 D4
	cmp $02.b,S		; C3 02
	ora ($F9.b,X)		; 01 F9
	sed		; F8
	cmp $FFFF9F.l,X		; DF 9F FF FF
	sbc $4FAFCF.l,X		; FF CF AF 4F
	adc $271F07.l,X		; 7F 07 1F 27
	sta $9CF743.l,X		; 9F 43 F7 9C
	ora ($68.b),Y		; 11 68
	lda $FFFF9F.l,X		; BF 9F FF FF
	cmp $4F5FCF.l,X		; DF CF 5F 4F
	sta $C7CF87.l		; 8F 87 CF C7
	adc $800363.l		; 6F 63 03 80
	stx $00.b,Y		; 96 00
	sbc [$CB.b],Y		; F7 CB
	ora $E0F1C2.l,X		; 1F C2 F1 E0
	sbc $FDFFFE.l,X		; FF FE FF FD
	sbc $6FABFF.l,X		; FF FF AB 6F
	cmp $6F9FF8.l		; CF F8 9F 6F
	beq -64.b		; F0 C0
	sbc $1FFEF0.l,X		; FF F0 FE 1F
	sta $E7FF0F.l,X		; 9F 0F FF E7
	ora $04F40F.l,X		; 1F 0F F4 04
	sbc $E0.b,X		; F5 E0
	adc [$64.b],Y		; 77 64
	sbc [$24.b],Y		; F7 24
	inc $E4.b,X		; F6 E4
	inc $01FF.w,X		; FE FF 01
	pea $00FB.w		; F4 FB 00
	plx		; FA
	cpx #$60F8.w		; E0 F8 60
	sed		; F8
	jsr $FAF8.w		; 20 F8 FA
	sbc $E8FE0F.l,X		; FF 0F FE E8
	cpx #$08A2.w		; E0 A2 08
	and ($08.b,X)		; 21 08
	ora ($18.b,X)		; 01 18
	ora ($08.b,X)		; 01 08
	sta ($AF.b,X)		; 81 AF
	xce		; FB
	inc $8310.w,X		; FE 10 83
	brk $1F.b		; 00 1F
	dec $E1.b		; C6 E1
	lda #$0BE0.w		; A9 E0 0B
	ora $03.b,S		; 03 03
	tsb $F7F2.w		; 0C F2 F7
	php		; 08
	inc $7F.b,X		; F6 7F
	rti		; 40

	php		; 08
	sbc $08.b,S		; E3 08
	cpx $10.b		; E4 10
	cld		; D8
	brk $70.b		; 00 70
	bcc  -1.b		; 90 FF
	ora $F2041F.l		; 0F 1F 04 F2
	pea $E8F4.w		; F4 F4 E8
	cmp $E0.b,S		; C3 E0
	bra -128.b		; 80 80
	bvs -113.b		; 70 8F
	inc $FEE1.w,X		; FE E1 FE
	adc $A05F90.l		; 6F 90 5F A0
	and $977FCC.l,X		; 3F CC 7F 97
	inc $9B77.w,X		; FE 77 9B
	sta [$FF.b]		; 87 FF
	jmp ($737C.w,X)		; 7C 7C 73
	adc ($1E.b,S),Y		; 73 1E
	eor $5F.b,S		; 43 5F
	tsb $3F.b		; 04 3F
	eor ($7F.b)		; 52 7F
	eor ($7F.b,S),Y		; 53 7F
	sbc $7F51FF.l,X		; FF FF 51 7F
	brk $C0.b		; 00 C0
	rti		; 40

	bcs -64.b		; B0 C0
	sec		; 38
	bmi -52.b		; 30 CC
	cpy $3A.b		; C4 3A
	inc $19.b		; E6 19
	jsr ($2183.w,X)		; FC 83 21
	inc $DCE3.w,X		; FE E3 DC
	tax		; AA
	cpy #$30FF.w		; C0 FF 30
	bmi  -4.b		; 30 FC
	jsr ($517E.w,X)		; FC 7E 51
	bcc  -2.b		; 90 FE
	bit $91EF.w,X		; 3C EF 91
	cpx #$E30D.w		; E0 0D E3
	tsb $14F0.w		; 0C F0 14
	adc $01FEFF.l,X		; 7F FF FE 01
	asl $05.b		; 06 05
	dec A		; 3A
	phd		; 0B
	pea $F8E5.w		; F4 E5 F8
	phd		; 0B
	tsb $04.b		; 04 04
	tsa		; 3B
	tsa		; 3B
	beq  31.b		; F0 1F
	sbc $3BE3FD.l,X		; FF FD E3 3B
	sbc ($27.b,S),Y		; F3 27
	beq  34.b		; F0 22
	beq  15.b		; F0 0F
	sed		; F8
	ora [$00.b]		; 07 00
	sbc ($00.b),Y		; F1 00
	bvc  80.b		; 50 50
	sta [$BF.b]		; 87 BF
	sbc $2B0BA7.l,X		; FF A7 0B 2B
	sta $80AD.w		; 8D AD 80
	ldy #$F25E.w		; A0 5E F2
	stx $96.b,Y		; 96 96
	sbc [$C8.b],Y		; F7 C8
	adc $FC.b,S		; 63 FC
	bit $F0FF.w,X		; 3C FF F0
	sbc $3F.b,S		; E3 3F
	rts		; 60

	adc $82FDC0.l,X		; 7F C0 FD 82
	plx		; FA
	tsb $38.b		; 04 38
	cmp $FF43FF.l,X		; DF FF 43 FF
	and $3C0C63.l,X		; 3F 63 0C 3C
	stx $1EBE.w		; 8E BE 1E
	ror $DC1C.w,X		; 7E 1C DC
	and $7139.w,Y		; 39 39 71
	adc ($80.b),Y		; 71 80
	and $C8FF0C.l,X		; 3F 0C FF C8
	inc $5901.w,X		; FE 01 59
	rti		; 40

	and $FC7F80.l,X		; 3F 80 7F FC
	ora $0E.b,S		; 03 0E
	ror $44.b,X		; 76 44
	sbc ($46.b),Y		; F1 46
	pea $FFFF.w		; F4 FF FF
	sbc $0F0F.w,X		; FD 0F 0F
	lda $78FE.w		; AD FE 78
	sbc ($E4.b)		; F2 E4
	cpy #$203F.w		; C0 3F 20
	cmp $F8FFF6.l,X		; DF F6 FF F8
	ora $61B946.l		; 0F 46 B9 61
	sed		; F8
	ora $7A.b		; 05 7A
	inc $5A25.w,X		; FE 25 5A
	stz $15.b		; 64 15
	rol A		; 2A
	ora $1A.b		; 05 1A
	cmp $120DC6.l		; CF C6 0D 12
	ror $3D7E.w,X		; 7E 7E 3D
	sbc $0DDAFE.l,X		; FF FE DA 0D
	sbc $A33DE1.l,X		; FF E1 3D A3
	jmp $9C63FE.l		; 5C FE 63 9C
	adc [$98.b]		; 67 98
	inc $A7FC.w,X		; FE FC A7
	cli		; 58
	lda $FF300A.l,X		; BF 0A 30 FF
	cpx #$FFEE.w		; E0 EE FF
	pea $01FF.w		; F4 FF 01
	jsr ($ABFF.w,X)		; FC FF AB
	sbc $0A.b,X		; F5 0A
	inc $10.b		; E6 10
	cpy $20.b		; C4 20
	cpy $8E20.w		; CC 20 8E
	rti		; 40

	sta $F840.w,X		; 9D 40 F8
	sbc $FAF8FF.l,X		; FF FF F8 FA
	plx		; FA
	beq -16.b		; F0 F0
	inx		; E8
	inx		; E8
	cld		; D8
	cld		; D8
	bne -48.b		; D0 D0
	bcs -80.b		; B0 B0
	ldy #$2BA0.w		; A0 A0 2B
	sbc $EC00F7.l,X		; FF F7 00 EC
	cmp $7E.b,S		; C3 7E
	cmp ($BF.b,X)		; C1 BF
	rti		; 40

	lda $305760.l,X		; BF 60 57 30
	and $D931.w,X		; 3D 31 D9
	jsr ($2F00.w,X)		; FC 00 2F
	pea $003C.w		; F4 3C 00
	rol $3F00.w,X		; 3E 00 3F
	lsr $F1.b,X		; 56 F1
	adc $03.b		; 65 03
	jsr ($DFF1.w,X)		; FC F1 DF
	and $5FFFFF.l		; 2F FF FF 5F
	sta $1ECF1F.l		; 8F 1F CF 1E
	cpy $407D.w		; CC 7D 40
	inc $ED05.w,X		; FE 05 ED
	asl A		; 0A
	cmp $CFDF23.l,X		; DF 23 DF CF
	sed		; F8
	cmp [$FF.b]		; C7 FF
	inc $4C7F.w,X		; FE 7F 4C
	ldx $F800.w,Y		; BE 00 F8
	brk $F2.b		; 00 F2
	dec $FFFF.w,X		; DE FF FF
	dec $E4.b		; C6 E4
	dec $FEA4.w,X		; DE A4 FE
	bit $9E.b		; 24 9E
	rti		; 40

	tas		; 1B
	bra  -6.b		; 80 FA
	brk $7F.b		; 00 7F
	.db $82, $FB, $82		; 82 FB 82
	sbc $C0D8E1.l,X		; FF E1 D8 C0
	cld		; D8
	bra -104.b		; 80 98
	brk $38.b		; 00 38
	brk $64.b		; 00 64
	tsb $60.b		; 04 60
	clv		; B8
	sec		; 38
	cmp ($F8.b,X)		; C1 F8
	ldy $20.b		; A4 20
	ldx $FCFF.w		; AE FF FC
	cpy #$C7EC.w		; C0 EC C7
	brk $FB.b		; 00 FB
	asl $0220.w		; 0E 20 02
	ldx #$09F0.w		; A2 F0 09
	cpy #$74C0.w		; C0 C0 74
	jsr $D0FF.w		; 20 FF D0
	ora $FFF8.w		; 0D F8 FF
	ldy $F8FF.w		; AC FF F8
	ora $7F9B7F.l		; 0F 7F 9B 7F
	sta $5E3D.w,X		; 9D 3D 5E
	and $4F3E4E.l,X		; 3F 4E 3E 4F
	and [$FF.b],Y		; 37 FF
	cmp [$4F.b]		; C7 4F
	and $013E06.l,X		; 3F 06 3E 01
	eor $587F.w,Y		; 59 7F 58
	adc $2C3F08.l,X		; 7F 08 3F 2C
	inc $FFFF.w,X		; FE FF FF
	rol $3F.b		; 26 3F
	asl $1E.b,X		; 16 1E
	bpl  22.b		; 10 16
	stp		; DB
	cpx $FD.b		; E4 FD
.ACCU 8
	sep #$EC		; E2 EC
	sbc ($F8.b,S),Y		; F3 F8
	cmp [$FF.b]		; C7 FF
	bit $FE9F.w,X		; 3C 9F FE
	dec $43.b		; C6 43
	txs		; 9A
	tyx		; BB
	dey		; 88
	lda $FC4461.l,X		; BF 61 44 FC
	ora $C3.b,S		; 03 C3
	and $FFBD.w,X		; 3D BD FF
	xce		; FB
	ror $DE7E.w,X		; 7E 7E DE
	dec $C8C8.w,X		; DE C8 C8
	cpy #$C001.w		; C0 01 C0
	and [$C0.b]		; 27 C0
	sty $F1.b		; 84 F1
	dey		; 88
	adc [$0A.b],Y		; 77 0A
	ora $08F5BF.l		; 0F BF F5 08
	sbc [$00.b],Y		; F7 00
	sbc $01010E.l,X		; FF 0E 01 01
	cmp [$C7.b]		; C7 C7
	sta $2FFF9F.l,X		; 9F 9F FF 2F
	phx		; DA
	sbc ($FB.b)		; F2 FB
	xce		; FB
	sbc $E3.b,S		; E3 E3
	ora ($EE.b),Y		; 11 EE
	ora ($ED.b)		; 12 ED
	ora $FA.b		; 05 FA
	asl $F9.b		; 06 F9
	sei		; 78
	pea $FEBC.w		; F4 BC FE
	inc $F7F7.w,X		; FE F7 F7
	inc $14FE.w,X		; FE FE 14
	sbc #$FF.b		; E9 FF
	sed		; F8
	ora #$48.b		; 09 48
	cmp $7EDB6B.l,X		; DF 6B DB 7E
	sbc ($FF.b),Y		; F1 FF
	sbc $54E556.l,X		; FF 56 E5 54
	rol $1CC1.w,X		; 3E C1 1C
	sbc $08.b,S		; E3 08
	pha		; 48
	eor #$7F.b		; 49 7F
	eor ($C3.b)		; 52 C3
	cmp $7E.b,S		; C3 7E
	mvn $BA,$7E		; 54 7E BA
	eor $7D.b,X		; 55 7D
	xba		; EB
	xba		; EB
	ldy $FFEA.w,X		; BC EA FF
	cmp $07F815.l,X		; DF 15 F8 07
	ldx $8D40.w,Y		; BE 40 8D
	bvs -114.b		; 70 8E
	bvs  22.b		; 70 16
	inx		; E8
	ora [$E8.b],Y		; 17 E8
	cmp [$A8.b]		; C7 A8
	cmp ($FF.b),Y		; D1 FF
	sta [$60.b]		; 87 60
	rts		; 60

	adc ($71.b),Y		; 71 71
	plb		; AB
	plb		; AB
	lda $B5AD.w		; AD AD B5
	lda $B6.b,X		; B5 B6
	ldx $B2.b,Y		; B6 B2
	ora $0EF1FE.l,X		; 1F FE F1 0E
	asl $E1E1.w		; 0E E1 E1
	trb $C16F.w		; 1C 6F C1
	rol $1F60.w,X		; 3E 60 1F
	bmi  15.b		; 30 0F
	ora $039C24.l,X		; 1F 24 9C 03
	sbc ($F1.b),Y		; F1 F1
	asl $8A1E.w,X		; 1E 1E 8A
	rol $E2.b		; 26 E2
	sbc $C0FFF0.l,X		; FF F0 FF C0
	lsr $D2.b		; 46 D2
	bcc 111.b		; 90 6F
	pla		; 68
	ora [$34.b],Y		; 17 34
	wai		; CB
	phy		; 5A
	lda $2D.b		; A5 2D
	cmp ($09.b)		; D2 09
	inc $E916.w,X		; FE 16 E9
	cpx $EF62.w		; EC 62 EF
	sbc $DB3737.l		; EF 37 37 DB
	stp		; DB
	sbc $EDED7D.l,X		; FF 7D ED ED
	inc $F6.b,X		; F6 F6
	asl $09.b		; 06 09
	cop $05.b		; 02 05
	ora ($02.b,X)		; 01 02
	pla		; 68
	cld		; D8
	ora #$06.b		; 09 06
	asl $02.b		; 06 02
	cop $FF.b		; 02 FF
	eor $0BE0BC.l,X		; 5F BC E0 0B
	lda [$58.b]		; A7 58
	lda [$48.b],Y		; B7 48
	tad		; 5B
	ldy $5F.b		; A4 5F
	ldy #$601F.w		; A0 1F 60
	ora $1C.b,S		; 03 1C
	eor $FDE3F2.l		; 4F F2 E3 FD
	brk $F2.b		; 00 F2
	eor $1F1FFF.l,X		; 5F FF 1F 1F
	ora $41.b,S		; 03 41
	sbc ($00.b)		; F2 00
	sta $8F40.w,X		; 9D 40 8F
	sbc $C2407E.l,X		; FF 7E 40 C2
	jsr $20C3.w		; 20 C3 20
	cpx #$F918.w		; E0 18 F9
	asl $A1.b		; 06 A1
	sbc ($A0.b)		; F2 A0
	ldy #$B0B0.w		; A0 B0 B0
	jmp.w [$C7BC]		; DC BC C7
	sbc $F8E7E7.l,X		; FF E7 E7 F8
	sta ($F3.b,S),Y		; 93 F3
	bpl   0.b		; 10 00
	cpx #$FFA3.w		; E0 A3 FF
	sbc $0183.w,X		; FD 83 01
	sbc $9701.w		; ED 01 97
	tsb $7F.b		; 04 7F
	ora ($FF.b)		; 12 FF
	eor $E066.w,Y		; 59 66 E0
	ora #$0F.b		; 09 0F
	ora $FF1707.l		; 0F 07 17 FF
	sbc $3D5B03.l,X		; FF 03 5B 3D
	ora $CE.b,S		; 03 CE
	ora $09.b		; 05 09
	brk $0B.b		; 00 0B
	brk $3F.b		; 00 3F
	ora $FF.b,S		; 03 FF
	sta [$F7.b]		; 87 F7
	eor $E1.b,S		; 43 E1
	eor $FF.b,S		; 43 FF
	eor $AB.b,S		; 43 AB
	and ($30.b),Y		; 31 30
	inc $F0.b,X		; F6 F0
	sbc [$FE.b],Y		; F7 FE
	sbc ($88.b,S),Y		; F3 88
	adc $FFFB24.l,X		; 7F 24 FB FF
	ror $90.b,X		; 76 90
	stp		; DB
	pha		; 48
	tda		; 7B
	sec		; 38
	sbc $FFFC.w,X		; FD FC FF
	inc $E0FB.w		; EE FB E0
	sbc $81DFC0.l		; EF C0 DF 81
	sta $3D01.w		; 8D 01 3D
	ora #$FD.b		; 09 FD
	and $1FE1.w,Y		; 39 E1 1F
	xce		; FB
	sbc ($FE.b,S),Y		; F3 FE
	sbc [$E7.b],Y		; F7 E7
	sbc [$C7.b],Y		; F7 C7
	sbc $05FF8F.l		; EF 8F FF 05
	sbc $0AFEEF.l,X		; FF EF FE 0A
	sbc $28FF14.l,X		; FF 14 FF 28
	sbc $A1FF50.l,X		; FF 50 FF A1
	sbc $F6A923.l,X		; FF 23 A9 F6
	inc $FFFF.w,X		; FE FF FF
	inc $FDFC.w,X		; FE FC FD
	sed		; F8
	xce		; FB
	sbc ($F7.b),Y		; F1 F7
	cmp $0DFF00.l		; CF 00 FF 0D
	sbc $5DFF2D.l,X		; FF 2D FF 5D
	sbc $DDFFFF.l,X		; FF FF FF DD
	sbc $BBFFDB.l,X		; FF DB FF BB
	sbc $F0F0B7.l,X		; FF B7 F0 F0
	cpy $CD.b		; C4 CD
	sta $09AD.w		; 8D AD 09
	eor $FF59.w,X		; 5D 59 FF
	lda $DBD9DF.l		; AF DF D9 DB
	bra -69.b		; 80 BB
	bra -73.b		; 80 B7
	asl $0C11.w		; 0E 11 0C
	ora ($05.b,S),Y		; 13 05
	asl A		; 0A
	jsr ($30F2.w,X)		; FC F2 30
	xce		; FB
	eor $FCE1.w,X		; 5D E1 FC
	ora [$04.b]		; 07 04
	sbc $01F7FC.l,X		; FF FC F7 01
	ldy #$FF9B.w		; A0 9B FF
	sbc $D687A0.l,X		; FF A0 87 D6
	cmp $FE08FF.l		; CF FF 08 FE
	ora #$FF.b		; 09 FF
	jmp ($34FF.w)		; 6C FF 34
	sbc $C545D2.l,X		; FF D2 45 C5
	sbc $D959FF.l,X		; FF FF 59 D9
	and [$E7.b]		; 27 E7
	ora $0B.b,S		; 03 0B
	phd		; 0B
	tas		; 1B
	and #$7D.b		; 29 7D
	ora $7D.b,X		; 15 7D
.ACCU 16
.INDEX 16
	rep #$FA		; C2 FA
	ora ($EE.b),Y		; 11 EE
	sbc $E41BDF.l,X		; FF DF 1B E4
	asl A		; 0A
	sbc $06.b,X		; F5 06
	sbc $E11E.w,Y		; F9 1E E1
	jsr $41DC.w		; 20 DC 41
	clv		; B8
	eor $B0.b,S		; 43 B0
	jsr $F8F2.w		; 20 F2 F8
	sbc $E0FFFC.l,X		; FF FC FF E0
	cpx #$C0C3.w		; E0 C3 C0
	sta [$80.b]		; 87 80
	sta $0FF080.l		; 8F 80 F0 0F
	bpl -16.b		; 10 F0
	sbc $19FEEF.l,X		; FF EF FE 19
	stx $1B.b		; 86 1B
	tsb $3E.b		; 04 3E
	ora ($B8.b,X)		; 01 B8
	ora [$FF.b]		; 07 FF
	ora $1F.b,S		; 03 1F
	brk $FF.b		; 00 FF
	ora $6FFF08.l,X		; 1F 08 FF 6F
	ora $DE0FEF.l		; 0F EF 0F DE
	asl $FED8.w,X		; 1E D8 FE
	sbc $E96218.l,X		; FF 18 62 E9
	sbc $837E81.l,X		; FF 81 7E 83
	jmp ($718E.w,X)		; 7C 8E 71
	jmp ($7383.w,X)		; 7C 83 73
	sty $807F.w		; 8C 7F 80
	sta $1F.b		; 85 1F
	sbc $F2A07C.l,X		; FF 7C A0 F2
	sbc $7CBEBE.l,X		; FF BE BE 7C
	jmp ($7171.w,X)		; 7C 71 71
	adc $7D817F.l,X		; 7F 7F 81 7D
	cmp [$38.b]		; C7 38
	sta [$78.b]		; 87 78
	ora [$06.b],Y		; 17 06
	sbc ($8F.b),Y		; F1 8F
	bvs -65.b		; 70 BF
	rti		; 40

	adc [$88.b],Y		; 77 88
	brk $FD.b		; 00 FD
	lda $A0.b,X		; B5 A0
	jsr $84FC.w		; 20 FC 84
	cmp ($77.b)		; D2 77
	adc [$EF.b],Y		; 77 EF
	sbc $4F87FF.l		; EF FF 87 4F
	bra -121.b		; 80 87
	bvs -127.b		; 70 81
	jmp $4298.w		; 4C 98 42
	dec $DF21.w,X		; DE 21 DF
	jsr $FFFE.w		; 20 FE FF
	ora [$8F.b]		; 07 8F
	rts		; 60

	and $8F8F3F.l,X		; 3F 3F 8F 8F
	lda ($B3.b,S),Y		; B3 B3
	lda $DEBD.w,X		; BD BD DE
	dec $18DE.w,X		; DE DE 18
	cpx #$9FFF.w		; E0 FF 9F
	sta $C5A264.l,X		; 9F 64 A2 C5
	dec A		; 3A
	sbc $1EE1DF.l,X		; FF DF E1 1E
	adc ($0D.b)		; 72 0D
	and ($8D.b)		; 32 8D
	sta $D946.w,Y		; 99 46 D9
	rol $FA.b		; 26 FA
	plx		; FA
	xce		; FB
	xce		; FB
	sta ($D1.b,S),Y		; 93 D1
	bmi -128.b		; 30 80
	sbc $7E5A.w,X		; FD 5A 7E
	ror $DEBE.w,X		; 7E BE DE
	sbc $C84DFF.l,X		; FF FF 4D C8
	ora $404080.l,X		; 1F 80 40 40
	ldy #$D020.w		; A0 20 D0
	brk $F0.b		; 00 F0
	bpl -24.b		; 10 E8
	brk $F8.b		; 00 F8
	php		; 08
	pea $0500.w		; F4 00 05
	dey		; 88
	jsr ($2080.w,X)		; FC 80 20
	cmp ($24.b,X)		; C1 24
	sbc $87F1F0.l,X		; FF F0 F1 87
	sbc $9EFFF8.l,X		; FF F8 FF 9E
	adc ($0E.b,X)		; 61 0E
	sbc ($4E.b),Y		; F1 4E
	lda ($FE.b),Y		; B1 FE
	sbc ($89.b,X)		; E1 89
	ldx $FE51.w		; AE 51 FE
	rol $4CD1.w		; 2E D1 4C
	lda ($A8.b),Y		; B1 A8
	brk $FE.b		; 00 FE
	sbc $3EFF3E.l,X		; FF 3E FF 3E
	rol $5E5E.w,X		; 3E 5E 5E
	ldy #$2A40.w		; A0 40 2A
	sty $C0.b		; 84 C0
	adc $BB.b		; 65 BB
	ror $09B8.w		; 6E B8 09
	jmp ($0FB8.w)		; 6C B8 0F
	cpx #$AEE0.w		; E0 E0 AE
	lda $C0C2.w,X		; BD C2 C0
	beq  40.b		; F0 28
	sbc ($DE.b,X)		; E1 DE
	bra -113.b		; 80 8F
	jmp.w [$9EFC]		; DC FC 9E
	cmp ($FC.b),Y		; D1 FC
	ldy #$87C7.w		; A0 C7 87
	bra  56.b		; 80 38
	bra 126.b		; 80 7E
	sbc ($30.b)		; F2 30
	brk $78.b		; 00 78
	bmi  -2.b		; 30 FE
	adc $307EED.l,X		; 7F ED 7E 30
	sbc $32FF7E.l,X		; FF 7E FF 32
	adc $C0A932.l,X		; 7F 32 A9 C0
	ora $FA.b,X		; 15 FA
	inc $E23E.w,X		; FE 3E E2
	sed		; F8
	ora ($FC.b)		; 12 FC
	sbc ($4B.b)		; F2 4B
	brk $6F.b		; 00 6F
	sbc ($FA.b),Y		; F1 FA
	inc $1E0C.w,X		; FE 0C 1E
	tsb $C065.w		; 0C 65 C0
	ora $F1A5.w,Y		; 19 A5 F1
	sbc $F8E6FD.l,X		; FF FD E6 F8
	ora ($80.b)		; 12 80
	jsr ($BC30.w,X)		; FC 30 BC
	rts		; 60

	beq -32.b		; F0 E0
	and $E25860.l,X		; 3F 60 58 E2
	sed		; F8
	ora $0F0005.l		; 0F 05 00 0F
	ora $7F.b		; 05 7F
	ora $FD.b		; 05 FD
	bvs  60.b		; 70 3C
	sed		; F8
	rts		; 60

	ror $7F34.w,X		; 7E 34 7F
	rol $FC.b,X		; 36 FC
	cpy #$11F8.w		; C0 F8 11
	clv		; B8
	brk $BC.b		; 00 BC
	eor $3C1820.l		; 4F 20 18 3C
	clc		; 18
	sec		; 38
	bpl  58.b		; 10 3A
	inc $F882.w,X		; FE 82 F8
	tas		; 1B
	bcc  63.b		; 90 3F
	sbc $F8FF10.l,X		; FF 10 FF F8
	ora $E70002.l		; 0F 02 00 E7
	cop $F7.b		; 02 F7
.ACCU 8
	sep #$64		; E2 64
	ora $07FC.w,X		; 1D FC 07
	inc $A876.w,X		; FE 76 A8
	lsr $A8D0.w,X		; 5E D0 A8
	bpl   4.b		; 10 04
	plx		; FA
	inc $FE5F.w,X		; FE 5F FE
	brk $FE.b		; 00 FE
	rti		; 40

	ldx $DD22.w,Y		; BE 22 DD
	and ($CD.b)		; 32 CD
	ora ($ED.b)		; 12 ED
	inc A		; 1A
	sbc $24.b		; E5 24
	nop		; EA
	sta ($FE.b)		; 92 FE
	sbc $FFB202.l,X		; FF 02 B2 FF
	lsr $9EB0.w		; 4E B0 9E
	rts		; 60

	txs		; 9A
	rts		; 60

	sbc $609C8F.l,X		; FF 8F 9C 60
	sty $60.b,X		; 94 60
	dey		; 88
	rts		; 60

	bcc  64.b		; 90 40
	ldy #$5C40.w		; A0 40 5C
	jmp $F5F19C.l		; 5C 9C F1 F5
	sbc $90FF98.l,X		; FF 98 FF 90
	bcc -96.b		; 90 A0
	ldy #$A880.w		; A0 80 A8
	and ($FF.b,X)		; 21 FF
	sed		; F8
	ora $FE347E.l,X		; 1F 7E 34 FE
	lda $C87C.w		; AD 7C C8
	sbc ($7A.b,S),Y		; F3 7A
	bmi 127.b		; 30 7F
	and ($3F.b)		; 32 3F
	asl $401E.w,X		; 1E 1E 40
	bne  17.b		; D0 11
	rol $F60C.w,X		; 3E 0C F6
	cli		; 58
	plx		; FA
	lda $B0.b,S		; A3 B0
	ora ($FF.b)		; 12 FF
	ora $FEF10C.l,X		; 1F 0C F1 FE
	bit $FC18.w,X		; 3C 18 FC
	sec		; 38
	tyx		; BB
	ldx $E0F8.w,Y		; BE F8 E0
	cpx #$F8E0.w		; E0 E0 F8
	bpl  -1.b		; 10 FF
	jsr ($F00C.w,X)		; FC 0C F0
	ora #$C0.b		; 09 C0
	sed		; F8
	ora ($F8.b,S),Y		; 13 F8
	cpy #$F8FC.w		; C0 FC F8
	beq -35.b		; F0 DD
	iny		; C8
	nop		; EA
	inc $18FC.w,X		; FE FC 18
	sed		; F8
	beq -16.b		; F0 F0
	cpx #$10F8.w		; E0 F8 10
	inc $FE64.w,X		; FE 64 FE
	sbc $6C7D2B.l,X		; FF 2B 7D 6C
	jmp ($6138.w,X)		; 7C 38 61
	cmp ($FF.b),Y		; D1 FF
	sed		; F8
	asl $7746.w		; 0E 46 77
	jsl $FF62F7.l		; 22 F7 62 FF
	clv		; B8
	ldy #$7EFE.w		; A0 FE 7E
	sbc $F04102.l,X		; FF 02 41 F0
	ora ($EA.b),Y		; 11 EA
	tsb $13F0.w		; 0C F0 13
	ora [$F8.b]		; 07 F8
	rts		; 60

	ldy #$020A.w		; A0 0A 02
	ora $82FE06.l		; 0F 06 FE 82
	ror $FC1C.w,X		; 7E 1C FC
	sei		; 78
	pld		; 2B
	brk $F8.b		; 00 F8
	bvs 112.b		; 70 70
	eor ($98.b),Y		; 51 98
	bvc   0.b		; 50 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $40.b		; 02 40
	brk $00.b		; 00 00
	cop $80.b		; 02 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $F4.b		; 00 F4
	bra -111.b		; 80 91
	sta ($2E.b,X)		; 81 2E
	.db $82, $A1, $82		; 82 A1 82
	bit $9F83.w		; 2C 83 9F
	sta $5A.b,S		; 83 5A
	sty $CD.b		; 84 CD
	sty $64.b		; 84 64
	sta $DD.b		; 85 DD
	sta $6E.b		; 85 6E
	stx $1D.b		; 86 1D
	sta [$CC.b]		; 87 CC
	sta [$69.b]		; 87 69
	dey		; 88
	tsb $9D89.w		; 0C 89 9D
	bit #$28.b		; 89 28
	txa		; 8A
	lda ($8A.b,S),Y		; B3 8A
	asl $6F8B.w		; 0E 8B 6F
	phb		; 8B
	pea $5B8B.w		; F4 8B 5B
	sty $8CCE.w		; 8C CE 8C
	rtl		; 6B

	sta $8DFC.w		; 8D FC 8D
	sta $128E.w		; 8D 8E 12
	sta $E08F67.l		; 8F 67 8F E0
	sta $849035.l		; 8F 35 90 84
	bcc -27.b		; 90 E5
	bcc  58.b		; 90 3A
	sta ($9B.b),Y		; 91 9B
	sta ($DE.b),Y		; 91 DE
	sta ($39.b),Y		; 91 39
	sta ($B2.b)		; 92 B2
	sta ($49.b)		; 92 49
	sta ($DA.b,S),Y		; 93 DA
	sta ($65.b,S),Y		; 93 65
	sty $F0.b,X		; 94 F0
	sty $9F.b,X		; 94 9F
	sta $3C.b,X		; 95 3C
	stx $FD.b,Y		; 96 FD
	stx $AC.b,Y		; 96 AC
	sta [$31.b],Y		; 97 31
	tya		; 98
	pei ($98.b)		; D4 98
	adc ($99.b),Y		; 71 99
	cop $9A.b		; 02 9A
	tda		; 7B
	txs		; 9A
	cpy $9A.b		; C4 9A
	eor #$9B.b		; 49 9B
	ldy $4D9B.w,X		; BC 9B 4D
	stz $9CA8.w		; 9C A8 9C
	ora $9D.b,X		; 15 9D
	ror A		; 6A
	sta $9DB3.w,X		; 9D B3 9D
	bit $8D9E.w		; 2C 9E 8D
	stz $9EEE.w,X		; 9E EE 9E
	sta [$9F.b],Y		; 97 9F
	inc $9F.b		; E6 9F
	eor ($A0.b,S),Y		; 53 A0
	dec $A0.b		; C6 A0
	eor [$A1.b],Y		; 57 A1
.ACCU 8
	sep #$A1		; E2 A1
	eor $A2.b,X		; 55 A2
	sbc ($A2.b)		; F2 A2
	eor $A402A3.l,X		; 5F A3 02 A4
	sta ($A4.b,X)		; 81 A4
	bit $C7A5.w,X		; 3C A5 C7
	lda $64.b		; A5 64
	ldx $19.b		; A6 19
	lda [$92.b]		; A7 92
	lda [$47.b]		; A7 47
	tay		; A8
	dec $A8.b		; C6 A8
	and $A9F4A9.l,X		; 3F A9 F4 A9
	sta $AA.b		; 85 AA
	bit $AB.b,X		; 34 AB
	lda ($AB.b,X)		; A1 AB
	and ($AC.b)		; 32 AC
	sta $AD3CAC.l,X		; 9F AC 3C AD
	lda $AE3AAD.l		; AF AD 3A AE
	lda $4AAE.w		; AD AE 4A
	lda $48AFBD.l		; AF BD AF 48
	bcs -69.b		; B0 BB
	bcs  82.b		; B0 52
	lda ($EF.b),Y		; B1 EF
	lda ($62.b),Y		; B1 62
	lda ($ED.b)		; B2 ED
	lda ($60.b)		; B2 60
	lda ($F7.b,S),Y		; B3 F7
	lda ($70.b,S),Y		; B3 70
	ldy $B9.b,X		; B4 B9
	ldy $08.b,X		; B4 08
	lda $69.b,X		; B5 69
	lda $D0.b,X		; B5 D0
	lda $61.b,X		; B5 61
	ldx $EC.b,Y		; B6 EC
	ldx $89.b,Y		; B6 89
	lda [$32.b],Y		; B7 32
	clv		; B8
	cmp $B8.b,X		; D5 B8
	lsr $C1B9.w		; 4E B9 C1
	lda $BA3A.w,Y		; B9 3A BA
	cmp $7ABA.w,X		; DD BA 7A
	tyx		; BB
	sbc $BC78BB.l,X		; FF BB 78 BC
	sbc ($BC.b),Y		; F1 BC
	cli		; 58
	lda $BDC5.w,X		; BD C5 BD
	mvp $C9,$BE		; 44 BE C9
	ldx $F71A.w,Y		; BE 1A F7
	sbc $08BA.w,Y		; F9 BA 08
	brk $48.b		; 00 48
	sbc [$F9.b],Y		; F7 F9
	dex		; CA
	php		; 08
	cop $48.b		; 02 48
	sbc [$09.b]		; E7 09
	dex		; CA
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FD.b,S),Y		; F3 FD
	sep #$08		; E2 08
	asl $48.b		; 06 48
	sbc [$11.b]		; E7 11
	sep #$00		; E2 00
	php		; 08
	rti		; 40

	sbc $00FA09.l		; EF 09 FA 00
	ora #$40.b		; 09 40
	ora $F3.b		; 05 F3
	sbc ($00.b)		; F2 00
	asl A		; 0A
	rti		; 40

	ora $F3.b		; 05 F3
	plx		; FA
	brk $0B.b		; 00 0B
	rti		; 40

	ora $FAEB.w		; 0D EB FA
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $00BA09.l		; EF 09 BA 00
	ora $E740.w		; 0D 40 E7
	ora ($C2.b),Y		; 11 C2
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $00C209.l		; EF 09 C2 00
	ora $F10740.l		; 0F 40 07 F1
	lda $1800.w,X		; BD 00 18
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp $00.b		; C5 00
	ora $F240.w,Y		; 19 40 F2
	asl $B2.b		; 06 B2
	brk $1A.b		; 00 1A
	rti		; 40

	plx		; FA
	inc $00B2.w,X		; FE B2 00
	tas		; 1B
	rti		; 40

	sbc ($06.b)		; F2 06
	phx		; DA
	brk $1C.b		; 00 1C
	rti		; 40

	plx		; FA
	inc $00DA.w,X		; FE DA 00
	ora $0240.w,X		; 1D 40 02
	inc $DA.b,X		; F6 DA
	brk $1E.b		; 00 1E
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc ($00.b)		; F2 00
	ora $0DEB40.l,X		; 1F 40 EB 0D
	nop		; EA
	brk $20.b		; 00 20
	rti		; 40

	sbc [$11.b]		; E7 11
	phx		; DA
	brk $21.b		; 00 21
	rti		; 40

	ora $F5.b,S		; 03 F5
	sep #$00		; E2 00
	jsl $F50340.l		; 22 40 03 F5
	nop		; EA
	brk $23.b		; 00 23
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	plb		; AB
	brk $24.b		; 00 24
	rti		; 40

	xce		; FB
	sbc $00AB.w,X		; FD AB 00
	and $40.b		; 25 40
	inc A		; 1A
	sbc $E2F3.w,X		; FD F3 E2
	php		; 08
	brk $48.b		; 00 48
	sbc $0B.b		; E5 0B
	nop		; EA
	php		; 08
	cop $48.b		; 02 48
	sbc $CA03.w		; ED 03 CA
	php		; 08
	tsb $48.b		; 04 48
	sbc $DA03.w		; ED 03 DA
	php		; 08
	asl $48.b		; 06 48
	sbc [$09.b]		; E7 09
	tsx		; BA
	php		; 08
	php		; 08
	pha		; 48
	sbc $03.b,X		; F5 03
	lda ($00.b)		; B2 00
	asl A		; 0A
	rti		; 40

	sbc $13.b		; E5 13
	dex		; CA
	brk $0B.b		; 00 0B
	rti		; 40

	cpx $FA0C.w		; EC 0C FA
	brk $0C.b		; 00 0C
	rti		; 40

	tsb $F4.b		; 04 F4
	plx		; FA
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $FAEC.w		; 0C EC FA
	brk $0E.b		; 00 0E
	rti		; 40

	tsb $F4.b		; 04 F4
	cpy #$0F00.w		; C0 00 0F
	rti		; 40

	sbc $CAFB.w,X		; FD FB CA
	brk $1A.b		; 00 1A
	rti		; 40

	sbc $D2FB.w,X		; FD FB D2
	brk $1B.b		; 00 1B
	rti		; 40

	sbc $DAFB.w,X		; FD FB DA
	brk $1C.b		; 00 1C
	rti		; 40

	sbc $03.b,X		; F5 03
	nop		; EA
	brk $1D.b		; 00 1D
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b)		; F2 00
	asl $0640.w,X		; 1E 40 06
	sbc ($BB.b)		; F2 BB
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $00C2F9.l,X		; FF F9 C2 00
	jsr $ED40.w		; 20 40 ED
	phd		; 0B
	lda ($00.b)		; B2 00
	and ($40.b,X)		; 21 40
	sbc [$01.b],Y		; F7 01
	tsx		; BA
	brk $22.b		; 00 22
	rti		; 40

	sbc [$01.b],Y		; F7 01
	rep #$00		; C2 00
	and $40.b,S		; 23 40
	sbc ($06.b)		; F2 06
	tax		; AA
	brk $24.b		; 00 24
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	cmp ($00.b)		; D2 00
	and $40.b		; 25 40
.INDEX 8
	sep #$16		; E2 16
	phx		; DA
	brk $26.b		; 00 26
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	sep #$00		; E2 00
	and [$40.b]		; 27 40
	ora $F5.b,S		; 03 F5
	sbc ($00.b)		; F2 00
	plp		; 28
	rti		; 40

	ora ($F6.b,S),Y		; 13 F6
	plx		; FA
	dex		; CA
	php		; 08
	brk $48.b		; 00 48
	inc $0A.b		; E6 0A
	dex		; CA
	php		; 08
	cop $48.b		; 02 48
	inc $0A.b		; E6 0A
	tsx		; BA
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FE.b)		; F2 FE
	tax		; AA
	php		; 08
	asl $48.b		; 06 48
	sbc ($FE.b)		; F2 FE
	phx		; DA
	php		; 08
	php		; 08
	pha		; 48
	sbc $FAFB.w,X		; FD FB FA
	brk $0A.b		; 00 0A
	rti		; 40

	ora $F3.b		; 05 F3
	plx		; FA
	brk $0B.b		; 00 0B
	rti		; 40

	inc $12.b		; E6 12
	phx		; DA
	brk $0C.b		; 00 0C
	rti		; 40

	inc $02.b,X		; F6 02
	tsx		; BA
	brk $0D.b		; 00 0D
	rti		; 40

	inc $02.b,X		; F6 02
	rep #$00		; C2 00
	asl $F040.w		; 0E 40 F0
	php		; 08
	sbc ($00.b)		; F2 00
	ora $18E040.l		; 0F 40 E0 18
	wai		; CB
	brk $1A.b		; 00 1A
	rti		; 40

	nop		; EA
	asl $00B2.w		; 0E B2 00
	tas		; 1B
	rti		; 40

	nop		; EA
	asl $00EA.w		; 0E EA 00
	trb $FA40.w		; 1C 40 FA
	inc $00F2.w,X		; FE F2 00
	ora $E640.w,X		; 1D 40 E6
	ora ($E2.b)		; 12 E2
	brk $1E.b		; 00 1E
	rti		; 40

	inc $FA0A.w		; EE 0A FA
	brk $1F.b		; 00 1F
	rti		; 40

	sbc ($06.b)		; F2 06
	nop		; EA
	brk $20.b		; 00 20
	rti		; 40

	plx		; FA
	inc $00EA.w,X		; FE EA 00
	and ($40.b,X)		; 21 40
	ora [$EE.b],Y		; 17 EE
	cop $CA.b		; 02 CA
	php		; 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	tsx		; BA
	php		; 08
	cop $48.b		; 02 48
	sbc ($FD.b,S),Y		; F3 FD
	phx		; DA
	php		; 08
	tsb $48.b		; 04 48
	sbc $F7FB.w,X		; FD FB F7
	brk $06.b		; 00 06
	rti		; 40

	asl $F2.b		; 06 F2
	cmp ($00.b)		; D2 00
	ora [$40.b]		; 07 40
	asl $F2.b		; 06 F2
	phx		; DA
	brk $08.b		; 00 08
	rti		; 40

	cpx $FA0C.w		; EC 0C FA
	brk $09.b		; 00 09
	rti		; 40

	inc $CAFA.w,X		; FE FA CA
	brk $0A.b		; 00 0A
	rti		; 40

	inc $D2FA.w,X		; FE FA D2
	brk $0B.b		; 00 0B
	rti		; 40

	sbc $00F209.l		; EF 09 F2 00
	tsb $FF40.w		; 0C 40 FF
	sbc $00FA.w,Y		; F9 FA 00
	ora $0740.w		; 0D 40 07
	sbc ($FA.b),Y		; F1 FA
	brk $0E.b		; 00 0E
	rti		; 40

	sbc ($06.b)		; F2 06
	nop		; EA
	brk $0F.b		; 00 0F
	rti		; 40

	xce		; FB
	sbc $00B2.w,X		; FD B2 00
	asl $40.b,X		; 16 40
	xba		; EB
	ora $00C2.w		; 0D C2 00
	ora [$40.b],Y		; 17 40
	xba		; EB
	ora $00DA.w		; 0D DA 00
	clc		; 18
	rti		; 40

	sbc $E7FB.w,X		; FD FB E7
	brk $19.b		; 00 19
	rti		; 40

	sbc $EFFB.w,X		; FD FB EF
	brk $1A.b		; 00 1A
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda ($00.b,S),Y		; B3 00
	tas		; 1B
	rti		; 40

	ora $F5.b,S		; 03 F5
	tyx		; BB
	brk $1C.b		; 00 1C
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp $00.b,S		; C3 00
	ora $0B40.w,X		; 1D 40 0B
	sbc $00B9.w		; ED B9 00
	asl $0B40.w,X		; 1E 40 0B
	sbc $00C1.w		; ED C1 00
	ora $F51340.l,X		; 1F 40 13 F5
	xce		; FB
	sbc ($08.b)		; F2 08
	brk $48.b		; 00 48
	ora [$E9.b]		; 07 E9
	cmp ($08.b)		; D2 08
	cop $48.b		; 02 48
	sbc $08CA01.l		; EF 01 CA 08
	tsb $48.b		; 04 48
	sbc ($FE.b)		; F2 FE
	sep #$08		; E2 08
	asl $48.b		; 06 48
	cop $EE.b		; 02 EE
	sep #$08		; E2 08
	php		; 08
	pha		; 48
	ora $F3.b		; 05 F3
	sbc ($00.b)		; F2 00
	asl A		; 0A
	rti		; 40

	sbc $00CAF9.l,X		; FF F9 CA 00
	phd		; 0B
	rti		; 40

	sbc $00D2F9.l,X		; FF F9 D2 00
	tsb $EF40.w		; 0C 40 EF
	ora #$DA.b		; 09 DA
	brk $0D.b		; 00 0D
	rti		; 40

	sbc [$01.b],Y		; F7 01
	phx		; DA
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $00DAF9.l,X		; FF F9 DA 00
	ora $E81040.l		; 0F 40 10 E8
	cpy $1A00.w		; CC 00 1A
	rti		; 40

	clc		; 18
	cpx #$CC.b		; E0 CC
	brk $1B.b		; 00 1B
	rti		; 40

	jsr $CCD8.w		; 20 D8 CC
	brk $1C.b		; 00 1C
	rti		; 40

	ora ($E6.b)		; 12 E6
	sep #$00		; E2 00
	ora $0240.w,X		; 1D 40 02
	inc $02.b,X		; F6 02
	brk $1E.b		; 00 1E
	rti		; 40

	ora $F3.b		; 05 F3
	plx		; FA
	brk $1F.b		; 00 1F
	rti		; 40

	ora $FAEB.w		; 0D EB FA
	brk $20.b		; 00 20
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	jsr ($2100.w,X)		; FC 00 21
	rti		; 40

	ora $C4E709.l,X		; 1F 09 E7 C4
	php		; 08
	brk $48.b		; 00 48
	sbc ($0F.b,X)		; E1 0F
	dec $08.b		; C6 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	dec $08.b		; C6 08
	tsb $48.b		; 04 48
	trb $E4.b		; 14 E4
	cmp $0600.w,X		; DD 00 06
	rti		; 40

	cpx $DE0C.w		; EC 0C DE
	brk $07.b		; 00 07
	rti		; 40

	pea $DE04.w		; F4 04 DE
	brk $08.b		; 00 08
	rti		; 40

	and $D3.b		; 25 D3
	sbc ($00.b)		; F2 00
	ora #$40.b		; 09 40
	sbc $03.b,X		; F5 03
	cpx $00.b		; E4 00
	asl A		; 0A
	rti		; 40

	sbc $E4FB.w,X		; FD FB E4
	brk $0B.b		; 00 0B
	rti		; 40

	ora $F3.b		; 05 F3
	cpx $00.b		; E4 00
	tsb $0D40.w		; 0C 40 0D
	xba		; EB
	sbc $00.b		; E5 00
	ora $1540.w		; 0D 40 15
	sbc $E5.b,S		; E3 E5
	brk $0E.b		; 00 0E
	rti		; 40

	ora $E5DB.w,X		; 1D DB E5
	brk $0F.b		; 00 0F
	rti		; 40

	and ($D7.b,X)		; 21 D7
	dex		; CA
	brk $16.b		; 00 16
	rti		; 40

	sbc $ECFF.w,Y		; F9 FF EC
	brk $17.b		; 00 17
	rti		; 40

	jsr ($DCFC.w,X)		; FC FC DC
	brk $18.b		; 00 18
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cpy $00.b		; C4 00
	ora $0140.w,Y		; 19 40 01
	sbc [$CC.b],Y		; F7 CC
	brk $1A.b		; 00 1A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	pei ($00.b)		; D4 00
	tas		; 1B
	rti		; 40

	ora #$EF.b		; 09 EF
	pei ($00.b)		; D4 00
	trb $1940.w		; 1C 40 19
	cmp $1D00C5.l,X		; DF C5 00 1D
	rti		; 40

	tsb $F4.b		; 04 F4
	jmp.w [$1E00]		; DC 00 1E
	rti		; 40

	tsb $DDEC.w		; 0C EC DD
	brk $1F.b		; 00 1F
	rti		; 40

	sbc #$0F.b		; E9 0F
	dec $00.b,X		; D6 00
	jsr $F140.w		; 20 40 F1
	ora [$D6.b]		; 07 D6
	brk $21.b		; 00 21
	rti		; 40

	sbc $D6FF.w,Y		; F9 FF D6
	brk $22.b		; 00 22
	rti		; 40

	ora $D0DF.w,Y		; 19 DF D0
	brk $23.b		; 00 23
	rti		; 40

	inc A		; 1A
	dec $00F5.w,X		; DE F5 00
	bit $40.b		; 24 40
	ora ($E5.b,S),Y		; 13 E5
	sbc $2500.w		; ED 00 25
	rti		; 40

	tas		; 1B
	cmp $00ED.w,X		; DD ED 00
	rol $40.b		; 26 40
	and $D5.b,S		; 23 D5
	sbc $2700.w		; ED 00 27
	rti		; 40

	ora ($E7.b,S),Y		; 13 E7
	ora #$E2.b		; 09 E2
	php		; 08
	brk $48.b		; 00 48
	sbc [$09.b]		; E7 09
	sbc ($08.b)		; F2 08
	cop $48.b		; 02 48
	cmp [$19.b],Y		; D7 19
	sbc ($08.b)		; F2 08
	tsb $48.b		; 04 48
	sbc [$F9.b],Y		; F7 F9
	cmp $0608.w,Y		; D9 08 06
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	sbc #$08.b		; E9 08
	php		; 08
	pha		; 48
	ora ($DD.b,S),Y		; 13 DD
	inc $0A08.w		; EE 08 0A
	pha		; 48
	cpx $14.b		; E4 14
	phx		; DA
	brk $0C.b		; 00 0C
	rti		; 40

	cpx $DA0C.w		; EC 0C DA
	brk $0D.b		; 00 0D
	rti		; 40

	ora [$F1.b]		; 07 F1
	phx		; DA
	brk $0E.b		; 00 0E
	rti		; 40

	cmp $00E219.l,X		; DF 19 E2 00
	ora $21D740.l		; 0F 40 D7 21
	nop		; EA
	brk $1C.b		; 00 1C
	rti		; 40

	cmp $00EA19.l,X		; DF 19 EA 00
	ora $0F40.w,X		; 1D 40 0F
	sbc #$E7.b		; E9 E7
	brk $1E.b		; 00 1E
	rti		; 40

	ora $00EFE9.l		; 0F E9 EF 00
	ora $F10740.l,X		; 1F 40 07 F1
	sep #$00		; E2 00
	jsr $0740.w		; 20 40 07
	sbc ($EA.b),Y		; F1 EA
	brk $21.b		; 00 21
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc $2200.w,Y		; F9 00 22
	rti		; 40

	sbc $00F9F9.l,X		; FF F9 F9 00
	and $40.b,S		; 23 40
	ora [$F1.b]		; 07 F1
	sbc ($00.b)		; F2 00
	bit $40.b		; 24 40
	ora $1CD4.w,Y		; 19 D4 1C
	sbc ($08.b),Y		; F1 08
	brk $48.b		; 00 48
	cpx $0C.b		; E4 0C
	sbc ($08.b),Y		; F1 08
	cop $48.b		; 02 48
	pea $F1FC.w		; F4 FC F1
	php		; 08
	tsb $48.b		; 04 48
	cpx $14.b		; E4 14
	cmp $0600.w,Y		; D9 00 06
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc ($00.b,S),Y		; F3 00
	ora [$40.b]		; 07 40
	tsb $F3EC.w		; 0C EC F3
	brk $08.b		; 00 08
	rti		; 40

	trb $E4.b		; 14 E4
	sbc $00.b,X		; F5 00
	ora #$40.b		; 09 40
	cmp $23.b,X		; D5 23
	ora ($00.b,X)		; 01 00
	asl A		; 0A
	rti		; 40

	cmp $011B.w,X		; DD 1B 01
	brk $0B.b		; 00 0B
	rti		; 40

	sbc $13.b		; E5 13
	ora ($00.b,X)		; 01 00
	tsb $ED40.w		; 0C 40 ED
	phd		; 0B
	ora ($00.b,X)		; 01 00
	ora $1F40.w		; 0D 40 1F
	cmp $00F4.w,Y		; D9 F4 00
	asl $DF40.w		; 0E 40 DF
	ora $00E1.w,Y		; 19 E1 00
	ora $11E740.l		; 0F 40 E7 11
	sbc ($00.b,X)		; E1 00
	asl $40.b,X		; 16 40
	clc		; 18
	cpx #$FC.b		; E0 FC
	brk $17.b		; 00 17
	rti		; 40

	jsr $FCD8.w		; 20 D8 FC
	brk $18.b		; 00 18
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	xba		; EB
	brk $19.b		; 00 19
	rti		; 40

	ora #$EF.b		; 09 EF
	xba		; EB
	brk $1A.b		; 00 1A
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sbc $1B00.w		; ED 00 1B
	rti		; 40

	ora $F0DF.w,Y		; 19 DF F0
	brk $1C.b		; 00 1C
	rti		; 40

	cmp $E91F.w,Y		; D9 1F E9
	brk $1D.b		; 00 1D
	rti		; 40

	sbc ($17.b,X)		; E1 17
	sbc #$00.b		; E9 00
	asl $E940.w,X		; 1E 40 E9
	ora $1F00E9.l		; 0F E9 00 1F
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc #$00.b		; E9 00
	jsr $F940.w		; 20 40 F9
	sbc $2100E9.l,X		; FF E9 00 21
	rti		; 40

	trb $04.b		; 14 04
	cpx $08EB.w		; EC EB 08
	brk $48.b		; 00 48
	cpx $0C.b		; E4 0C
	xba		; EB
	php		; 08
	cop $48.b		; 02 48
	pea $D9FC.w		; F4 FC D9
	php		; 08
	tsb $48.b		; 04 48
	pea $E9FC.w		; F4 FC E9
	php		; 08
	asl $48.b		; 06 48
	cpx $DB0C.w		; EC 0C DB
	brk $08.b		; 00 08
	rti		; 40

	cpx $E30C.w		; EC 0C E3
	brk $09.b		; 00 09
	rti		; 40

	cpx $14.b		; E4 14
	xce		; FB
	brk $0A.b		; 00 0A
	rti		; 40

	cpx $FB0C.w		; EC 0C FB
	brk $0B.b		; 00 0B
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp $0C00.w,Y		; D9 00 0C
	rti		; 40

	trb $E4.b		; 14 E4
	sbc ($00.b,S),Y		; F3 00
	ora $DC40.w		; 0D 40 DC
	trb $00FB.w		; 1C FB 00
	asl $F440.w		; 0E 40 F4
	tsb $F9.b		; 04 F9
	brk $0F.b		; 00 0F
	rti		; 40

	jsr ($F9FC.w,X)		; FC FC F9
	brk $18.b		; 00 18
	rti		; 40

	sbc $00D309.l		; EF 09 D3 00
	ora $F740.w,Y		; 19 40 F7
	ora ($D1.b,X)		; 01 D1
	brk $1A.b		; 00 1A
	rti		; 40

	sbc $00D1F9.l,X		; FF F9 D1 00
	tas		; 1B
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp ($00.b),Y		; D1 00
	trb $0B40.w		; 1C 40 0B
	sbc $00FB.w		; ED FB 00
	ora $1340.w,X		; 1D 40 13
	sbc $FB.b		; E5 FB
	brk $1E.b		; 00 1E
	rti		; 40

	tas		; 1B
	cmp $00FB.w,X		; DD FB 00
	ora $DC1840.l,X		; 1F 40 18 DC
	trb $ED.b		; 14 ED
	php		; 08
	brk $48.b		; 00 48
	cpx $0C.b		; E4 0C
	dec $0208.w,X		; DE 08 02
	pha		; 48
	pea $DEFC.w		; F4 FC DE
	php		; 08
	tsb $48.b		; 04 48
	tsb $E0E4.w		; 0C E4 E0
	php		; 08
	asl $48.b		; 06 48
	cpx $F50C.w		; EC 0C F5
	brk $08.b		; 00 08
	rti		; 40

	jmp.w [$FD1C]		; DC 1C FD
	brk $09.b		; 00 09
	rti		; 40

	cpx $14.b		; E4 14
	sbc $0A00.w,X		; FD 00 0A
	rti		; 40

	cpx $FD0C.w		; EC 0C FD
	brk $0B.b		; 00 0B
	rti		; 40

	pei ($24.b)		; D4 24
	inc $00.b		; E6 00
	tsb $1C40.w		; 0C 40 1C
	jmp.w [$00E6]		; DC E6 00
	ora $2440.w		; 0D 40 24
	pei ($E6.b)		; D4 E6
	brk $0E.b		; 00 0E
	rti		; 40

	pei ($24.b)		; D4 24
	inc $0F00.w		; EE 00 0F
	rti		; 40

	pei ($24.b)		; D4 24
	inc $00.b,X		; F6 00
	clc		; 18
	rti		; 40

	tsb $FBEC.w		; 0C EC FB
	brk $19.b		; 00 19
	rti		; 40

	jmp.w [$E51C]		; DC 1C E5
	brk $1A.b		; 00 1A
	rti		; 40

	tsb $F4.b		; 04 F4
	dec $1B00.w,X		; DE 00 1B
	rti		; 40

	tsb $F4.b		; 04 F4
	inc $00.b		; E6 00
	trb $F440.w		; 1C 40 F4
	tsb $F8.b		; 04 F8
	brk $1D.b		; 00 1D
	rti		; 40

	jsr ($F8FC.w,X)		; FC FC F8
	brk $1E.b		; 00 1E
	rti		; 40

	tsb $F4.b		; 04 F4
	xce		; FB
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $13.b		; E5 13
	dec $00.b,X		; D6 00
	jsr $ED40.w		; 20 40 ED
	phd		; 0B
	dec $00.b,X		; D6 00
	and ($40.b,X)		; 21 40
	sbc $03.b,X		; F5 03
	dec $00.b,X		; D6 00
	jsl $FBFD40.l		; 22 40 FD FB
	dec $00.b,X		; D6 00
	and $40.b,S		; 23 40
	ora $0BE5.w,X		; 1D E5 0B
	ldx $08.b		; A6 08
	brk $48.b		; 00 48
	sbc $FB.b,X		; F5 FB
	ldx $08.b		; A6 08
	cop $48.b		; 02 48
	inc $FE02.w		; EE 02 FE
	php		; 08
	tsb $48.b		; 04 48
	sbc $08E601.l		; EF 01 E6 08
	asl $48.b		; 06 48
	sbc $08E6F1.l,X		; FF F1 E6 08
	php		; 08
	pha		; 48
	bpl -32.b		; 10 E0
	dec $08.b		; C6 08
	asl A		; 0A
	pha		; 48
	php		; 08
	inx		; E8
	dec $08.b,X		; D6 08
	tsb $0048.w		; 0C 48 00
	beq -58.b		; F0 C6
	php		; 08
	asl $F848.w		; 0E 48 F8
	sed		; F8
	dec $08.b,X		; D6 08
	jsr $F048.w		; 20 48 F0
	brk $C6.b		; 00 C6
	php		; 08
	jsl $10E048.l		; 22 48 E0 10
	dec $08.b		; C6 08
	bit $48.b		; 24 48
	inx		; E8
	php		; 08
	dec $08.b,X		; D6 08
	rol $48.b		; 26 48
	sbc ($0F.b,X)		; E1 0F
	ldx $08.b,Y		; B6 08
	plp		; 28
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	ldx $08.b,Y		; B6 08
	rol A		; 2A
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	ldx $08.b,Y		; B6 08
	bit $0F48.w		; 2C 48 0F
	sbc #$F6.b		; E9 F6
	brk $2E.b		; 00 2E
	rti		; 40

	inc $FEFA.w,X		; FE FA FE
	brk $2F.b		; 00 2F
	rti		; 40

	inc $06FA.w,X		; FE FA 06
	brk $3E.b		; 00 3E
	rti		; 40

	ora $F3.b		; 05 F3
	ldx $3F00.w		; AE 00 3F
	rti		; 40

	ora $F3.b		; 05 F3
	ldx $00.b		; A6 00
	rti		; 40

	rti		; 40

	ora $00E6E9.l		; 0F E9 E6 00
	eor ($40.b,X)		; 41 40
	ora $00EEE9.l		; 0F E9 EE 00
	.db $42, $40		; 42 40
	sbc $00F609.l		; EF 09 F6 00
	eor $40.b,S		; 43 40
	cpx #$18.b		; E0 18
	dec $00.b,X		; D6 00
	mvp $F7,$40		; 44 40 F7
	ora ($F6.b,X)		; 01 F6
	brk $45.b		; 00 45
	rti		; 40

	sbc $00F6F9.l,X		; FF F9 F6 00
	lsr $40.b		; 46 40
	ora [$F1.b]		; 07 F1
	inc $00.b,X		; F6 00
	eor [$40.b]		; 47 40
	ora ($E7.b),Y		; 11 E7
	ldx $00.b,Y		; B6 00
	pha		; 48
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	ldx $4900.w,Y		; BE 00 49
	rti		; 40

	ora $02EE.w,X		; 1D EE 02
	sbc ($08.b)		; F2 08
	brk $48.b		; 00 48
	inc $DA02.w		; EE 02 DA
	php		; 08
	cop $48.b		; 02 48
	nop		; EA
	asl $A2.b		; 06 A2
	php		; 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $A2.b,X		; F6 A2
	php		; 08
	asl $48.b		; 06 48
	nop		; EA
	asl $B2.b		; 06 B2
	php		; 08
	php		; 08
	pha		; 48
	plx		; FA
	inc $B2.b,X		; F6 B2
	php		; 08
	asl A		; 0A
	pha		; 48
	nop		; EA
	asl $C2.b		; 06 C2
	php		; 08
	tsb $FA48.w		; 0C 48 FA
	inc $C2.b,X		; F6 C2
	php		; 08
	asl $0648.w		; 0E 48 06
	sbc ($DA.b)		; F2 DA
	brk $20.b		; 00 20
	rti		; 40

	inc $DAFA.w,X		; FE FA DA
	brk $21.b		; 00 21
	rti		; 40

	inc $E2FA.w,X		; FE FA E2
	brk $22.b		; 00 22
	rti		; 40

	inc $EA0A.w		; EE 0A EA
	brk $23.b		; 00 23
	rti		; 40

	inc $02.b,X		; F6 02
	nop		; EA
	brk $24.b		; 00 24
	rti		; 40

	inc $EAFA.w,X		; FE FA EA
	brk $25.b		; 00 25
	rti		; 40

	asl A		; 0A
	inc $00A2.w		; EE A2 00
	rol $40.b		; 26 40
	asl A		; 0A
	inc $00AA.w		; EE AA 00
	and [$40.b]		; 27 40
	asl A		; 0A
	inc $00B2.w		; EE B2 00
	plp		; 28
	rti		; 40

	asl A		; 0A
	inc $00BA.w		; EE BA 00
	and #$40.b		; 29 40
	asl A		; 0A
	inc $00C2.w		; EE C2 00
	rol A		; 2A
	rti		; 40

	asl A		; 0A
	inc $00CA.w		; EE CA 00
	pld		; 2B
	rti		; 40

	nop		; EA
	asl $00D2.w		; 0E D2 00
	bit $F240.w		; 2C 40 F2
	asl $D2.b		; 06 D2
	brk $2D.b		; 00 2D
	rti		; 40

	plx		; FA
	inc $00D2.w,X		; FE D2 00
	rol $0240.w		; 2E 40 02
	inc $D2.b,X		; F6 D2
	brk $2F.b		; 00 2F
	rti		; 40

	asl A		; 0A
	inc $00D2.w		; EE D2 00
	bmi  64.b		; 30 40
	ora ($E6.b)		; 12 E6
	lda ($00.b,S),Y		; B3 00
	and ($40.b),Y		; 31 40
	ora ($E6.b)		; 12 E6
	tyx		; BB
	brk $32.b		; 00 32
	rti		; 40

	ora ($E6.b)		; 12 E6
	cmp $00.b,S		; C3 00
	and ($40.b,S),Y		; 33 40
	ora ($E6.b)		; 12 E6
	wai		; CB
	brk $33.b		; 00 33
	rti		; 40

	inc A		; 1A
	tsb $EC.b		; 04 EC
	lda ($08.b)		; B2 08
	brk $48.b		; 00 48
	pea $B2FC.w		; F4 FC B2
	php		; 08
	cop $48.b		; 02 48
	cpx $0C.b		; E4 0C
	tsx		; BA
	php		; 08
	tsb $48.b		; 04 48
	tsb $EC.b		; 04 EC
	rep #$08		; C2 08
	asl $48.b		; 06 48
	pea $C2FC.w		; F4 FC C2
	php		; 08
	php		; 08
	pha		; 48
	tsb $EC.b		; 04 EC
	cmp ($08.b)		; D2 08
	asl A		; 0A
	pha		; 48
	pea $D2FC.w		; F4 FC D2
	php		; 08
	tsb $EF48.w		; 0C 48 EF
	ora ($F2.b,X)		; 01 F2
	php		; 08
	asl $EB48.w		; 0E 48 EB
	ora $A2.b		; 05 A2
	php		; 08
	jsr $FB48.w		; 20 48 FB
	sbc $A2.b,X		; F5 A2
	php		; 08
	jsl $0CEC48.l		; 22 48 EC 0C
	cmp ($00.b)		; D2 00
	bit $40.b		; 24 40
	cpx $DA0C.w		; EC 0C DA
	brk $25.b		; 00 25
	rti		; 40

	cpx $E20C.w		; EC 0C E2
	brk $26.b		; 00 26
	rti		; 40

	pea $E204.w		; F4 04 E2
	brk $27.b		; 00 27
	rti		; 40

	jsr ($E2FC.w,X)		; FC FC E2
	brk $28.b		; 00 28
	rti		; 40

	tsb $F4.b		; 04 F4
	sep #$00		; E2 00
	and #$40.b		; 29 40
	inc $EA0A.w		; EE 0A EA
	brk $2A.b		; 00 2A
	rti		; 40

	inc $02.b,X		; F6 02
	nop		; EA
	brk $2B.b		; 00 2B
	rti		; 40

	inc $EAFA.w,X		; FE FA EA
	brk $2C.b		; 00 2C
	rti		; 40

	sbc $00F2F9.l,X		; FF F9 F2 00
	and $EC40.w		; 2D 40 EC
	tsb $00B2.w		; 0C B2 00
	rol $1340.w		; 2E 40 13
	sbc $AA.b		; E5 AA
	brk $2F.b		; 00 2F
	rti		; 40

	cpx $14.b		; E4 14
	dex		; CA
	brk $34.b		; 00 34
	rti		; 40

	cpx $CA0C.w		; EC 0C CA
	brk $35.b		; 00 35
	rti		; 40

	phd		; 0B
	sbc $00A2.w		; ED A2 00
	rol $40.b,X		; 36 40
	phd		; 0B
	sbc $00AA.w		; ED AA 00
	and [$40.b],Y		; 37 40
	tas		; 1B
	beq   0.b		; F0 00
	dec $08.b		; C6 08
	brk $48.b		; 00 48
	cop $EE.b		; 02 EE
	pei ($08.b)		; D4 08
	cop $48.b		; 02 48
	xba		; EB
	ora $D6.b		; 05 D6
	php		; 08
	tsb $48.b		; 04 48
	ora $00E5D9.l,X		; 1F D9 E5 00
	asl $40.b		; 06 40
	and [$D1.b]		; 27 D1
	sbc $00.b		; E5 00
	ora [$40.b]		; 07 40
	inx		; E8
	bpl -54.b		; 10 CA
	brk $08.b		; 00 08
	rti		; 40

	cld		; D8
	jsr $00C4.w		; 20 C4 00
	ora #$40.b		; 09 40
	cmp $00C329.l		; CF 29 C3 00
	asl A		; 0A
	rti		; 40

	cpx #$18.b		; E0 18
	cmp [$00.b]		; C7 00
	phd		; 0B
	rti		; 40

	brk $F8.b		; 00 F8
	iny		; C8
	brk $0C.b		; 00 0C
	rti		; 40

	cmp ($27.b),Y		; D1 27
	tyx		; BB
	brk $0D.b		; 00 0D
	rti		; 40

	cmp $B41F.w,Y		; D9 1F B4
	brk $0E.b		; 00 0E
	rti		; 40

	cmp $BC1F.w,Y		; D9 1F BC
	brk $0F.b		; 00 0F
	rti		; 40

	cmp ($27.b),Y		; D1 27
	cmp $401600.l		; CF 00 16 40
	cmp $CF1F.w,Y		; D9 1F CF
	brk $17.b		; 00 17
	rti		; 40

	sbc ($17.b,X)		; E1 17
	cmp $401800.l		; CF 00 18 40
	cmp $00CB29.l		; CF 29 CB 00
	ora $FA40.w,Y		; 19 40 FA
	inc $00DC.w,X		; FE DC 00
	inc A		; 1A
	rti		; 40

	plx		; FA
	inc $00E4.w,X		; FE E4 00
	tas		; 1B
	rti		; 40

	cop $F6.b		; 02 F6
	cpx $00.b		; E4 00
	trb $0A40.w		; 1C 40 0A
	inc $00E4.w		; EE E4 00
	ora $1A40.w,X		; 1D 40 1A
	dec $00D6.w,X		; DE D6 00
	asl $F240.w,X		; 1E 40 F2
	asl $E6.b		; 06 E6
	brk $1F.b		; 00 1F
	rti		; 40

	ora ($E6.b)		; 12 E6
	cld		; D8
	brk $20.b		; 00 20
	rti		; 40

	ora ($E6.b)		; 12 E6
	cpx #$00.b		; E0 00
	and ($40.b,X)		; 21 40
	xce		; FB
	sbc $00D6.w,X		; FD D6 00
	jsl $E11740.l		; 22 40 17 E1
	cpx $00.b		; E4 00
	and $40.b,S		; 23 40
	clc		; 18
	sbc [$F9.b],Y		; F7 F9
	cmp $08.b,S		; C3 08
	brk $48.b		; 00 48
	sbc #$07.b		; E9 07
	cmp ($08.b,S),Y		; D3 08
	cop $48.b		; 02 48
	sbc $D3F7.w,Y		; F9 F7 D3
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FD.b,S),Y		; F3 FD
	xba		; EB
	php		; 08
	asl $48.b		; 06 48
	ora $ED.b,S		; 03 ED
	xba		; EB
	php		; 08
	php		; 08
	pha		; 48
	ora [$F1.b]		; 07 F1
	cmp $00.b,S		; C3 00
	asl A		; 0A
	rti		; 40

	ora [$F1.b]		; 07 F1
	wai		; CB
	brk $0B.b		; 00 0B
	rti		; 40

	ora $00CFE9.l		; 0F E9 CF 00
	tsb $E940.w		; 0C 40 E9
	ora $0D00EB.l		; 0F EB 00 0D
	rti		; 40

	sbc #$0F.b		; E9 0F
	sbc ($00.b,S),Y		; F3 00
	asl $0940.w		; 0E 40 09
	sbc $0F00FB.l		; EF FB 00 0F
	rti		; 40

	asl $F2.b		; 06 F2
	tyx		; BB
	brk $1A.b		; 00 1A
	rti		; 40

	asl $BDEA.w		; 0E EA BD
	brk $1B.b		; 00 1B
	rti		; 40

	ora #$EF.b		; 09 EF
	cmp ($00.b,S),Y		; D3 00
	trb $0940.w		; 1C 40 09
	sbc $1D00DB.l		; EF DB 00 1D
	rti		; 40

	sbc #$0F.b		; E9 0F
	sbc $00.b,S		; E3 00
	asl $F140.w,X		; 1E 40 F1
	ora [$E3.b]		; 07 E3
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $E3FF.w,Y		; F9 FF E3
	brk $20.b		; 00 20
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc $00.b,S		; E3 00
	and ($40.b,X)		; 21 40
	ora #$EF.b		; 09 EF
	sbc $00.b,S		; E3 00
	jsl $E71140.l		; 22 40 11 E7
	inc $00.b		; E6 00
	and $40.b,S		; 23 40
	sbc ($05.b,S),Y		; F3 05
	xce		; FB
	brk $24.b		; 00 24
	rti		; 40

	sbc $00CB09.l		; EF 09 CB 00
	and $40.b		; 25 40
	inc $BBFA.w,X		; FE FA BB
	brk $26.b		; 00 26
	rti		; 40

	ora [$F8.b],Y		; 17 F8
	sed		; F8
	wai		; CB
	php		; 08
	brk $48.b		; 00 48
	ora $ED.b,S		; 03 ED
	xba		; EB
	php		; 08
	cop $48.b		; 02 48
	xba		; EB
	ora $E3.b		; 05 E3
	php		; 08
	tsb $48.b		; 04 48
	tsb $F4.b		; 04 F4
	stp		; DB
	brk $06.b		; 00 06
	rti		; 40

	beq   8.b		; F0 08
	cmp ($00.b,S),Y		; D3 00
	ora [$40.b]		; 07 40
	cpx $DB0C.w		; EC 0C DB
	brk $08.b		; 00 08
	rti		; 40

	php		; 08
	beq -53.b		; F0 CB
	brk $09.b		; 00 09
	rti		; 40

	php		; 08
	beq -45.b		; F0 D3
	brk $0A.b		; 00 0A
	rti		; 40

	sbc #$0F.b		; E9 0F
	xce		; FB
	brk $0B.b		; 00 0B
	rti		; 40

	sbc ($07.b),Y		; F1 07
	xce		; FB
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $FBFF.w,Y		; F9 FF FB
	brk $0D.b		; 00 0D
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	xce		; FB
	brk $0E.b		; 00 0E
	rti		; 40

	ora #$EF.b		; 09 EF
	xce		; FB
	brk $0F.b		; 00 0F
	rti		; 40

	pea $DB04.w		; F4 04 DB
	brk $16.b		; 00 16
	rti		; 40

	jsr ($DBFC.w,X)		; FC FC DB
	brk $17.b		; 00 17
	rti		; 40

	xce		; FB
	sbc $00E3.w,X		; FD E3 00
	clc		; 18
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc $00.b,S		; E3 00
	ora $FB40.w,Y		; 19 40 FB
	sbc $00EB.w,X		; FD EB 00
	inc A		; 1A
	rti		; 40

	xba		; EB
	ora $00F3.w		; 0D F3 00
	tas		; 1B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,S),Y		; F3 00
	trb $FB40.w		; 1C 40 FB
	sbc $00F3.w,X		; FD F3 00
	ora $1340.w,X		; 1D 40 13
	sbc $EC.b		; E5 EC
	brk $1E.b		; 00 1E
	rti		; 40

	phd		; 0B
	sbc $00E0.w		; ED E0 00
	ora $F61740.l,X		; 1F 40 17 F6
	plx		; FA
	ldx $0008.w,Y		; BE 08 00
	pha		; 48
	inc $0A.b		; E6 0A
	ldx $0208.w,Y		; BE 08 02
	pha		; 48
	sbc ($FE.b)		; F2 FE
	dec $0408.w,X		; DE 08 04
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	ldx $0608.w		; AE 08 06
	pha		; 48
	asl $F2.b		; 06 F2
	ldx $0800.w,Y		; BE 00 08
	rti		; 40

	inc $12.b		; E6 12
	dec $00.b,X		; D6 00
	ora #$40.b		; 09 40
	inc $12.b		; E6 12
	dec $0A00.w,X		; DE 00 0A
	rti		; 40

	inc $12.b		; E6 12
	inc $00.b		; E6 00
	phd		; 0B
	rti		; 40

	inc $F60A.w		; EE 0A F6
	brk $0C.b		; 00 0C
	rti		; 40

	cpx $FC0C.w		; EC 0C FC
	brk $0D.b		; 00 0D
	rti		; 40

	jsr ($F6FC.w,X)		; FC FC F6
	brk $0E.b		; 00 0E
	rti		; 40

	inc $12.b		; E6 12
	dec $0F00.w		; CE 00 0F
	rti		; 40

	inc $CE0A.w		; EE 0A CE
	brk $18.b		; 00 18
	rti		; 40

	inc $02.b,X		; F6 02
	dec $1900.w		; CE 00 19
	rti		; 40

	beq   8.b		; F0 08
	dec $00.b,X		; D6 00
	inc A		; 1A
	rti		; 40

	sed		; F8
	brk $D6.b		; 00 D6
	brk $1B.b		; 00 1B
	rti		; 40

	beq   8.b		; F0 08
	inc $1C00.w		; EE 00 1C
	rti		; 40

	plx		; FA
	inc $00EE.w,X		; FE EE 00
	ora $FE40.w,X		; 1D 40 FE
	plx		; FA
	jsr ($1E00.w,X)		; FC 00 1E
	rti		; 40

	xba		; EB
	ora $00B6.w		; 0D B6 00
	ora $F20640.l,X		; 1F 40 06 F2
	jsr ($2000.w,X)		; FC 00 20
	rti		; 40

	ora $F5.b,S		; 03 F5
	ldx INIDSP.w		; AE 00 21
	rti		; 40

	ora $F5.b,S		; 03 F5
	ldx $00.b,Y		; B6 00
	jsl $F10F40.l		; 22 40 0F F1
	sbc $0008CC.l,X		; FF CC 08 00
	pha		; 48
	sbc #$07.b		; E9 07
	jmp.w [$0208]		; DC 08 02
	pha		; 48
	sbc $DCF7.w,Y		; F9 F7 DC
	php		; 08
	tsb $48.b		; 04 48
	sbc #$07.b		; E9 07
	cpx $0608.w		; EC 08 06
	pha		; 48
	sbc $ECF7.w,Y		; F9 F7 EC
	php		; 08
	php		; 08
	pha		; 48
	ora ($F7.b,X)		; 01 F7
	cpy $0A00.w		; CC 00 0A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	pei ($00.b)		; D4 00
	phd		; 0B
	rti		; 40

	ora #$EF.b		; 09 EF
	cpx $00.b		; E4 00
	tsb $0940.w		; 0C 40 09
	sbc $0D00EC.l		; EF EC 00 0D
	rti		; 40

	ora #$EF.b		; 09 EF
	pea $0E00.w		; F4 00 0E
	rti		; 40

	sbc #$0F.b		; E9 0F
	jsr ($0F00.w,X)		; FC 00 0F
	rti		; 40

	sbc ($07.b),Y		; F1 07
	jsr ($1A00.w,X)		; FC 00 1A
	rti		; 40

	sbc $FCFF.w,Y		; F9 FF FC
	brk $1B.b		; 00 1B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	jsr ($1C00.w,X)		; FC 00 1C
	rti		; 40

	ora #$EF.b		; 09 EF
	jsr ($1D00.w,X)		; FC 00 1D
	rti		; 40

	bpl -12.b		; 10 F4
	jsr ($08F6.w,X)		; FC F6 08
	brk $48.b		; 00 48
	ora ($EF.b,X)		; 01 EF
	ldx $08.b,Y		; B6 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	ldx $0408.w,Y		; BE 08 04
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	dec $0608.w		; CE 08 06
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	dec $0808.w,X		; DE 08 08
	pha		; 48
	tsb $F4.b		; 04 F4
	jsr ($0A00.w,X)		; FC 00 0A
	rti		; 40

	ora #$EF.b		; 09 EF
	cmp ($00.b)		; D2 00
	phd		; 0B
	rti		; 40

	sbc $B6FF.w,Y		; F9 FF B6
	brk $0C.b		; 00 0C
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	dec $00.b		; C6 00
	ora $0140.w		; 0D 40 01
	sbc [$CE.b],Y		; F7 CE
	brk $0E.b		; 00 0E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	dec $00.b,X		; D6 00
	ora $F70140.l		; 0F 40 01 F7
	dec $1A00.w,X		; DE 00 1A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	inc $00.b		; E6 00
	tas		; 1B
	rti		; 40

	sbc ($07.b),Y		; F1 07
	inc $1C00.w		; EE 00 1C
	rti		; 40

	sbc $EEFF.w,Y		; F9 FF EE
	brk $1D.b		; 00 1D
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	inc $1E00.w		; EE 00 1E
	rti		; 40

	asl $FC.b,X		; 16 FC
	pea $08C8.w		; F4 C8 08
	brk $48.b		; 00 48
	jsr ($D8F4.w,X)		; FC F4 D8
	php		; 08
	cop $48.b		; 02 48
	jsr ($E8F4.w,X)		; FC F4 E8
	php		; 08
	tsb $48.b		; 04 48
	sed		; F8
	sed		; F8
	clv		; B8
	php		; 08
	asl $48.b		; 06 48
	pea $E204.w		; F4 04 E2
	brk $08.b		; 00 08
	rti		; 40

	pea $EA04.w		; F4 04 EA
	brk $09.b		; 00 09
	rti		; 40

	pea $F204.w		; F4 04 F2
	brk $0A.b		; 00 0A
	rti		; 40

	pea $FA04.w		; F4 04 FA
	brk $0B.b		; 00 0B
	rti		; 40

	cpx $C70C.w		; EC 0C C7
	brk $0C.b		; 00 0C
	rti		; 40

	cpx $CF0C.w		; EC 0C CF
	brk $0D.b		; 00 0D
	rti		; 40

	cpx $D70C.w		; EC 0C D7
	brk $0E.b		; 00 0E
	rti		; 40

	cpx $DF0C.w		; EC 0C DF
	brk $0F.b		; 00 0F
	rti		; 40

	cpx $E70C.w		; EC 0C E7
	brk $18.b		; 00 18
	rti		; 40

	cpx $EF0C.w		; EC 0C EF
	brk $19.b		; 00 19
	rti		; 40

	pea $C204.w		; F4 04 C2
	brk $1A.b		; 00 1A
	rti		; 40

	pea $CA04.w		; F4 04 CA
	brk $1B.b		; 00 1B
	rti		; 40

	pea $D204.w		; F4 04 D2
	brk $1C.b		; 00 1C
	rti		; 40

	jsr ($F8FC.w,X)		; FC FC F8
	brk $1D.b		; 00 1D
	rti		; 40

	tsb $F4.b		; 04 F4
	sed		; F8
	brk $1E.b		; 00 1E
	rti		; 40

	pea $DA04.w		; F4 04 DA
	brk $1F.b		; 00 1F
	rti		; 40

	php		; 08
	beq -72.b		; F0 B8
	brk $20.b		; 00 20
	rti		; 40

	php		; 08
	beq -64.b		; F0 C0
	brk $21.b		; 00 21
	rti		; 40

	ora ($F1.b),Y		; 11 F1
	sbc $0008BD.l,X		; FF BD 08 00
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	lda $0208.w,X		; BD 08 02
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	lda $0408.w		; AD 08 04
	pha		; 48
	xba		; EB
	ora $CD.b		; 05 CD
	php		; 08
	asl $48.b		; 06 48
	xce		; FB
	sbc $CD.b,X		; F5 CD
	php		; 08
	php		; 08
	pha		; 48
	xba		; EB
	ora $DD.b		; 05 DD
	php		; 08
	asl A		; 0A
	pha		; 48
	xce		; FB
	sbc $DD.b,X		; F5 DD
	php		; 08
	tsb $EE48.w		; 0C 48 EE
	asl A		; 0A
	sbc $00.b,X		; F5 00
	asl $F240.w		; 0E 40 F2
	asl $ED.b		; 06 ED
	brk $0F.b		; 00 0F
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc $1E00.w		; ED 00 1E
	rti		; 40

	asl $F2.b		; 06 F2
	sbc $00.b,X		; F5 00
	ora $F20640.l,X		; 1F 40 06 F2
	sbc $2000.w,X		; FD 00 20
	rti		; 40

	asl $FDEA.w		; 0E EA FD
	brk $21.b		; 00 21
	rti		; 40

	sbc #$0F.b		; E9 0F
	cmp $00.b		; C5 00
	jsl $0CEC40.l		; 22 40 EC 0C
	sbc $2300.w,X		; FD 00 23
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda $2400.w		; AD 00 24
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda $00.b,X		; B5 00
	and $40.b		; 25 40
	ora ($05.b,S),Y		; 13 05
	xba		; EB
	ldx $0008.w,Y		; BE 08 00
	pha		; 48
	sbc $E703.w		; ED 03 E7
	php		; 08
	cop $48.b		; 02 48
	sbc $DFF3.w,X		; FD F3 DF
	php		; 08
	tsb $48.b		; 04 48
	sbc $CFF3.w,X		; FD F3 CF
	php		; 08
	asl $48.b		; 06 48
	sbc $D703.w		; ED 03 D7
	php		; 08
	php		; 08
	pha		; 48
	sbc $FB.b,X		; F5 FB
	lda $480A08.l,X		; BF 08 0A 48
	sed		; F8
	sed		; F8
	lda $480C08.l		; AF 08 0C 48
	ora $F3.b		; 05 F3
	sbc $400E00.l		; EF 00 0E 40
	sbc $BF0B.w		; ED 0B BF
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $C70B.w		; ED 0B C7
	brk $1E.b		; 00 1E
	rti		; 40

	sbc $CF0B.w		; ED 0B CF
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $03.b,X		; F5 03
	cmp $402000.l		; CF 00 20 40
	sbc $00F709.l		; EF 09 F7 00
	and ($40.b,X)		; 21 40
	beq   8.b		; F0 08
	lda [$00.b],Y		; B7 00
	jsl $F00840.l		; 22 40 08 F0
	sbc [$00.b],Y		; F7 00
	and $40.b,S		; 23 40
	sbc $FF0B.w		; ED 0B FF
	brk $24.b		; 00 24
	rti		; 40

	php		; 08
	beq -80.b		; F0 B0
	brk $25.b		; 00 25
	rti		; 40

	ora #$EF.b		; 09 EF
	jsr ($2600.w,X)		; FC 00 26
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	inc $2700.w,X		; FE 00 27
	rti		; 40

	inc A		; 1A
	jsr ($BAF4.w,X)		; FC F4 BA
	php		; 08
	brk $48.b		; 00 48
	cpx $BA04.w		; EC 04 BA
	php		; 08
	cop $48.b		; 02 48
	jsr ($CAF4.w,X)		; FC F4 CA
	php		; 08
	tsb $48.b		; 04 48
	jsr ($DAF4.w,X)		; FC F4 DA
	php		; 08
	asl $48.b		; 06 48
	cpx $E204.w		; EC 04 E2
	php		; 08
	php		; 08
	pha		; 48
	cpx $CA04.w		; EC 04 CA
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	tax		; AA
	php		; 08
	tsb $0C48.w		; 0C 48 0C
	cpx $00FA.w		; EC FA 00
	asl $0C40.w		; 0E 40 0C
	cpx $00E2.w		; EC E2 00
	ora $04F440.l		; 0F 40 F4 04
	sbc ($00.b)		; F2 00
	asl $E440.w,X		; 1E 40 E4
	trb $C2.b		; 14 C2
	brk $1F.b		; 00 1F
	rti		; 40

	cpx $14.b		; E4 14
	dex		; CA
	brk $20.b		; 00 20
	rti		; 40

	cpx $14.b		; E4 14
	cmp ($00.b)		; D2 00
	and ($40.b,X)		; 21 40
	cpx $14.b		; E4 14
	phx		; DA
	brk $22.b		; 00 22
	rti		; 40

	cpx $DA0C.w		; EC 0C DA
	brk $23.b		; 00 23
	rti		; 40

	pea $DA04.w		; F4 04 DA
	brk $24.b		; 00 24
	rti		; 40

	jsr ($EAFC.w,X)		; FC FC EA
	brk $25.b		; 00 25
	rti		; 40

	tsb $BFEC.w		; 0C EC BF
	brk $26.b		; 00 26
	rti		; 40

	tsb $C7EC.w		; 0C EC C7
	brk $27.b		; 00 27
	rti		; 40

	ora $F3.b		; 05 F3
	nop		; EA
	brk $28.b		; 00 28
	rti		; 40

	sbc $FA0B.w		; ED 0B FA
	brk $29.b		; 00 29
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc ($00.b)		; F2 00
	rol A		; 2A
	rti		; 40

	sbc $00F509.l		; EF 09 F5 00
	pld		; 2B
	rti		; 40

	tsb $F4.b		; 04 F4
	plx		; FA
	brk $2C.b		; 00 2C
	rti		; 40

	ora $F5.b,S		; 03 F5
	tax		; AA
	brk $2D.b		; 00 2D
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda ($00.b)		; B2 00
	rol $1840.w		; 2E 40 18
	inc $FA.b,X		; F6 FA
	phx		; DA
	php		; 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	tax		; AA
	php		; 08
	cop $48.b		; 02 48
	nop		; EA
	asl $CA.b		; 06 CA
	php		; 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $CA.b,X		; F6 CA
	php		; 08
	asl $48.b		; 06 48
	sbc $C20B.w		; ED 0B C2
	brk $08.b		; 00 08
	rti		; 40

	inc $02.b,X		; F6 02
	nop		; EA
	brk $09.b		; 00 09
	rti		; 40

	inc $EAFA.w,X		; FE FA EA
	brk $0A.b		; 00 0A
	rti		; 40

	beq   8.b		; F0 08
	tax		; AA
	brk $0B.b		; 00 0B
	rti		; 40

	sed		; F8
	brk $FA.b		; 00 FA
	brk $0C.b		; 00 0C
	rti		; 40

	brk $F8.b		; 00 F8
	plx		; FA
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $03.b,X		; F5 03
	rep #$00		; C2 00
	asl $F240.w		; 0E 40 F2
	asl $BA.b		; 06 BA
	brk $0F.b		; 00 0F
	rti		; 40

	plx		; FA
	inc $00BA.w,X		; FE BA 00
	clc		; 18
	rti		; 40

	cop $F6.b		; 02 F6
	tsx		; BA
	brk $19.b		; 00 19
	rti		; 40

	nop		; EA
	asl $00DA.w		; 0E DA 00
	inc A		; 1A
	rti		; 40

	asl A		; 0A
	inc $00DA.w		; EE DA 00
	tas		; 1B
	rti		; 40

	nop		; EA
	asl $00E2.w		; 0E E2 00
	trb $0A40.w		; 1C 40 0A
	inc $00E2.w		; EE E2 00
	ora $FA40.w,X		; 1D 40 FA
	inc $00F2.w,X		; FE F2 00
	asl $0240.w,X		; 1E 40 02
	inc $F2.b,X		; F6 F2
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $C2FB.w,X		; FD FB C2
	brk $20.b		; 00 20
	rti		; 40

	ora $F3.b		; 05 F3
	rep #$00		; C2 00
	and ($40.b,X)		; 21 40
	asl A		; 0A
	inc $00CA.w		; EE CA 00
	jsl $EE0A40.l		; 22 40 0A EE
	cmp ($00.b)		; D2 00
	and $40.b,S		; 23 40
	clc		; 18
	beq   0.b		; F0 00
	ldy $0008.w		; AC 08 00
	pha		; 48
	beq   0.b		; F0 00
	ldy $0208.w,X		; BC 08 02
	pha		; 48
	beq   0.b		; F0 00
	cpy $0408.w		; CC 08 04
	pha		; 48
	brk $F0.b		; 00 F0
	cpy $0608.w		; CC 08 06
	pha		; 48
	brk $F0.b		; 00 F0
	ldy $0808.w,X		; BC 08 08
	pha		; 48
	xce		; FB
	sbc $E4.b,X		; F5 E4
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc [$11.b]		; E7 11
	jsr ($0C00.w,X)		; FC 00 0C
	rti		; 40

	sbc $00FC09.l		; EF 09 FC 00
	ora $F640.w		; 0D 40 F6
	cop $DC.b		; 02 DC
	brk $0E.b		; 00 0E
	rti		; 40

	inc $DCFA.w,X		; FE FA DC
	brk $0F.b		; 00 0F
	rti		; 40

	asl $F2.b		; 06 F2
	pea $1C00.w		; F4 00 1C
	rti		; 40

	asl $F2.b		; 06 F2
	jsr ($1D00.w,X)		; FC 00 1D
	rti		; 40

	asl $F8EA.w		; 0E EA F8
	brk $1E.b		; 00 1E
	rti		; 40

	brk $F8.b		; 00 F8
	ldy $1F00.w		; AC 00 1F
	rti		; 40

	brk $F8.b		; 00 F8
	ldy $00.b,X		; B4 00
	jsr $1040.w		; 20 40 10
	inx		; E8
	cmp ($00.b),Y		; D1 00
	and ($40.b,X)		; 21 40
	bpl -24.b		; 10 E8
	cmp $2200.w,Y		; D9 00 22
	rti		; 40

	bpl -24.b		; 10 E8
	sbc ($00.b,X)		; E1 00
	and $40.b,S		; 23 40
	sbc #$0F.b		; E9 0F
	cmp ($00.b),Y		; D1 00
	bit $40.b		; 24 40
	sbc #$0F.b		; E9 0F
	cmp $2500.w,Y		; D9 00 25
	rti		; 40

	sbc #$0F.b		; E9 0F
	sbc ($00.b,X)		; E1 00
	rol $40.b		; 26 40
	sbc ($06.b)		; F2 06
	cpx $2700.w		; EC 00 27
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cpx $00.b		; E4 00
	plp		; 28
	rti		; 40

	sbc $00F409.l		; EF 09 F4 00
	and #$40.b		; 29 40
	asl $F4.b,X		; 16 F4
	jsr ($08AC.w,X)		; FC AC 08
	brk $48.b		; 00 48
	cpx $C404.w		; EC 04 C4
	php		; 08
	cop $48.b		; 02 48
	jsr ($CCF4.w,X)		; FC F4 CC
	php		; 08
	tsb $48.b		; 04 48
	jsr ($BCF4.w,X)		; FC F4 BC
	php		; 08
	asl $48.b		; 06 48
	sed		; F8
	sed		; F8
	jmp.w [$0808]		; DC 08 08
	pha		; 48
	pea $F404.w		; F4 04 F4
	brk $0A.b		; 00 0A
	rti		; 40

	tsb $F4.b		; 04 F4
	pea $0B00.w		; F4 00 0B
	rti		; 40

	tsb $C2EC.w		; 0C EC C2
	brk $0C.b		; 00 0C
	rti		; 40

	cpx $E40C.w		; EC 0C E4
	brk $0D.b		; 00 0D
	rti		; 40

	pea $EC04.w		; F4 04 EC
	brk $0E.b		; 00 0E
	rti		; 40

	jsr ($ECFC.w,X)		; FC FC EC
	brk $0F.b		; 00 0F
	rti		; 40

	tsb $F4.b		; 04 F4
	ldy $1A00.w		; AC 00 1A
	rti		; 40

	tsb $F4.b		; 04 F4
	ldy $00.b,X		; B4 00
	tas		; 1B
	rti		; 40

	pea $BC04.w		; F4 04 BC
	brk $1C.b		; 00 1C
	rti		; 40

	pea $D404.w		; F4 04 D4
	brk $1D.b		; 00 1D
	rti		; 40

	sbc $03.b,X		; F5 03
	jsr ($1E00.w,X)		; FC 00 1E
	rti		; 40

	sbc $FCFB.w,X		; FD FB FC
	brk $1F.b		; 00 1F
	rti		; 40

	ora $F3.b		; 05 F3
	jsr ($2000.w,X)		; FC 00 20
	rti		; 40

	ora $FCEB.w		; 0D EB FC
	brk $21.b		; 00 21
	rti		; 40

	tsb $F4.b		; 04 F4
	cpx $2200.w		; EC 00 22
	rti		; 40

	sbc #$0F.b		; E9 0F
	pei ($00.b)		; D4 00
	and $40.b,S		; 23 40
	sbc #$0F.b		; E9 0F
	jmp.w [$2400]		; DC 00 24
	rti		; 40

	asl $FCF4.w		; 0E F4 FC
	cpx $0008.w		; EC 08 00
	pha		; 48
	sbc $ACF3.w,X		; FD F3 AC
	php		; 08
	cop $48.b		; 02 48
	sbc $B403.w		; ED 03 B4
	php		; 08
	tsb $48.b		; 04 48
	sbc $BCF3.w,X		; FD F3 BC
	php		; 08
	asl $48.b		; 06 48
	sbc $C403.w		; ED 03 C4
	php		; 08
	php		; 08
	pha		; 48
	sbc $CCF3.w,X		; FD F3 CC
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc $D403.w		; ED 03 D4
	php		; 08
	tsb $ED48.w		; 0C 48 ED
	phd		; 0B
	cpx $00.b		; E4 00
	asl $FD40.w		; 0E 40 FD
	xce		; FB
	cpx $00.b		; E4 00
	ora $04F440.l		; 0F 40 F4 04
	jsr ($1E00.w,X)		; FC 00 1E
	rti		; 40

	jsr ($FCFC.w,X)		; FC FC FC
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $03.b,X		; F5 03
	ldy $2000.w		; AC 00 20
	rti		; 40

	sbc $DCFB.w,X		; FD FB DC
	brk $21.b		; 00 21
	rti		; 40

	ora $BFEB.w		; 0D EB BF
	brk $22.b		; 00 22
	rti		; 40

	trb $EC.b		; 14 EC
	tsb $E2.b		; 04 E2
	php		; 08
	brk $48.b		; 00 48
	tsb $EC.b		; 04 EC
	sbc ($08.b)		; F2 08
	cop $48.b		; 02 48
	nop		; EA
	asl $BA.b		; 06 BA
	php		; 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $BA.b,X		; F6 BA
	php		; 08
	asl $48.b		; 06 48
	sbc ($FD.b,S),Y		; F3 FD
	tax		; AA
	php		; 08
	php		; 08
	pha		; 48
	sbc $0D.b,S		; E3 0D
	dex		; CA
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	dex		; CA
	php		; 08
	tsb $EE48.w		; 0C 48 EE
	asl A		; 0A
	sbc ($00.b)		; F2 00
	asl $EE40.w		; 0E 40 EE
	asl A		; 0A
	plx		; FA
	brk $0F.b		; 00 0F
	rti		; 40

	inx		; E8
	bpl -38.b		; 10 DA
	brk $1E.b		; 00 1E
	rti		; 40

	tsb $F4.b		; 04 F4
	phx		; DA
	brk $1F.b		; 00 1F
	rti		; 40

	tsb $F4.b		; 04 F4
	sep #$00		; E2 00
	jsr $0A40.w		; 20 40 0A
	inc $00C4.w		; EE C4 00
	and ($40.b,X)		; 21 40
	tsb $F4.b		; 04 F4
	nop		; EA
	brk $22.b		; 00 22
	rti		; 40

	pea $DA04.w		; F4 04 DA
	brk $23.b		; 00 23
	rti		; 40

	jsr ($DAFC.w,X)		; FC FC DA
	brk $24.b		; 00 24
	rti		; 40

	ora $F5.b,S		; 03 F5
	tax		; AA
	brk $25.b		; 00 25
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda ($00.b)		; B2 00
	rol $40.b		; 26 40
	ora $F5.b,S		; 03 F5
	dex		; CA
	brk $27.b		; 00 27
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp ($00.b)		; D2 00
	plp		; 28
	rti		; 40

	asl $03ED.w		; 0E ED 03
	lda $08.b,X		; B5 08
	brk $48.b		; 00 48
	sbc $B5F3.w,X		; FD F3 B5
	php		; 08
	cop $48.b		; 02 48
	sbc $C503.w		; ED 03 C5
	php		; 08
	tsb $48.b		; 04 48
	sbc $C5F3.w,X		; FD F3 C5
	php		; 08
	asl $48.b		; 06 48
	inc $FA.b,X		; F6 FA
	sbc $08.b		; E5 08
	php		; 08
	pha		; 48
	inc $FA.b,X		; F6 FA
	sbc $08.b,X		; F5 08
	asl A		; 0A
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	cmp $08.b,X		; D5 08
	tsb $0D48.w		; 0C 48 0D
	xba		; EB
	cpy #$00.b		; C0 00
	asl $ED40.w		; 0E 40 ED
	phd		; 0B
	cmp $0F00.w,X		; DD 00 0F
	rti		; 40

	sbc $E50B.w		; ED 0B E5
	brk $1E.b		; 00 1E
	rti		; 40

	sbc $D50B.w		; ED 0B D5
	brk $1F.b		; 00 1F
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	lda $2000.w		; AD 00 20
	rti		; 40

	xce		; FB
	sbc $00AD.w,X		; FD AD 00
	and ($40.b,X)		; 21 40
	ora $F5.b,S		; 03 F5
	lda $2200.w		; AD 00 22
	rti		; 40

	ora $FCF4.w		; 0D F4 FC
	xba		; EB
	php		; 08
	brk $48.b		; 00 48
	cpx $BB04.w		; EC 04 BB
	php		; 08
	cop $48.b		; 02 48
	jsr ($BBF4.w,X)		; FC F4 BB
	php		; 08
	tsb $48.b		; 04 48
	pea $ABFC.w		; F4 FC AB
	php		; 08
	asl $48.b		; 06 48
	sbc $DBF7.w,Y		; F9 F7 DB
	php		; 08
	php		; 08
	pha		; 48
	nop		; EA
	asl $CB.b		; 06 CB
	php		; 08
	asl A		; 0A
	pha		; 48
	plx		; FA
	inc $CB.b,X		; F6 CB
	php		; 08
	tsb $FC48.w		; 0C 48 FC
	jsr ($00FB.w,X)		; FC FB 00
	asl $E940.w		; 0E 40 E9
	ora $0F00DB.l		; 0F DB 00 0F
	rti		; 40

	sbc #$0F.b		; E9 0F
	sbc $00.b,S		; E3 00
	asl $0440.w,X		; 1E 40 04
	pea $00AB.w		; F4 AB 00
	ora $F40440.l,X		; 1F 40 04 F4
	lda ($00.b,S),Y		; B3 00
	jsr $F440.w		; 20 40 F4
	tsb $FB.b		; 04 FB
	brk $21.b		; 00 21
	rti		; 40

	bpl -28.b		; 10 E4
	tsb $08DA.w		; 0C DA 08
	brk $48.b		; 00 48
	pea $DAFC.w		; F4 FC DA
	php		; 08
	cop $48.b		; 02 48
	pea $CAFC.w		; F4 FC CA
	php		; 08
	tsb $48.b		; 04 48
	sbc $08BA01.l		; EF 01 BA 08
	asl $48.b		; 06 48
	sbc ($FE.b)		; F2 FE
	tax		; AA
	php		; 08
	php		; 08
	pha		; 48
	cpx $14.b		; E4 14
	cmp ($00.b)		; D2 00
	asl A		; 0A
	rti		; 40

	tsb $F4.b		; 04 F4
	dex		; CA
	brk $0B.b		; 00 0B
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b)		; D2 00
	tsb $0440.w		; 0C 40 04
	pea $00DA.w		; F4 DA 00
	ora $E740.w		; 0D 40 E7
	ora ($C2.b),Y		; 11 C2
	brk $0E.b		; 00 0E
	rti		; 40

	cpx $14.b		; E4 14
	dex		; CA
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $00BAF9.l,X		; FF F9 BA 00
	inc A		; 1A
	rti		; 40

	sbc $00C2F9.l,X		; FF F9 C2 00
	tas		; 1B
	rti		; 40

	cpx $CA0C.w		; EC 0C CA
	brk $1C.b		; 00 1C
	rti		; 40

	cop $F6.b		; 02 F6
	tax		; AA
	brk $1D.b		; 00 1D
	rti		; 40

	cop $F6.b		; 02 F6
	lda ($00.b)		; B2 00
	asl $0E40.w,X		; 1E 40 0E
	sbc #$07.b		; E9 07
	lda $08.b,X		; B5 08
	brk $48.b		; 00 48
	sbc $B5F7.w,Y		; F9 F7 B5
	php		; 08
	cop $48.b		; 02 48
	sbc $0D.b,S		; E3 0D
	cmp $08.b		; C5 08
	tsb $48.b		; 04 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp $08.b		; C5 08
	asl $48.b		; 06 48
	sbc ($07.b),Y		; F1 07
	cmp $0800.w,X		; DD 00 08
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc $00.b		; E5 00
	ora #$40.b		; 09 40
	ora ($E7.b),Y		; 11 E7
	lda $0A00.w,X		; BD 00 0A
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cmp $00.b,X		; D5 00
	phd		; 0B
	rti		; 40

	ora #$EF.b		; 09 EF
	lda $00.b,X		; B5 00
	tsb $0940.w		; 0C 40 09
	sbc $0D00BD.l		; EF BD 00 0D
	rti		; 40

	sbc $D5FF.w,Y		; F9 FF D5
	brk $0E.b		; 00 0E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp $00.b,X		; D5 00
	ora $F50340.l		; 0F 40 03 F5
	cmp $00.b		; C5 00
	clc		; 18
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp $1900.w		; CD 00 19
	rti		; 40

	bpl -13.b		; 10 F3
	sbc $08B8.w,X		; FD B8 08
	brk $48.b		; 00 48
	ora $ED.b,S		; 03 ED
	clv		; B8
	php		; 08
	cop $48.b		; 02 48
	xce		; FB
	sbc $C8.b,X		; F5 C8
	php		; 08
	tsb $48.b		; 04 48
	ora [$F1.b]		; 07 F1
	tay		; A8
	brk $06.b		; 00 06
	rti		; 40

	sbc ($06.b)		; F2 06
	bcs   0.b		; B0 00
	ora [$40.b]		; 07 40
	plx		; FA
	inc $00B0.w,X		; FE B0 00
	php		; 08
	rti		; 40

	cop $F6.b		; 02 F6
	bcs   0.b		; B0 00
	ora #$40.b		; 09 40
	asl A		; 0A
	inc $00B0.w		; EE B0 00
	asl A		; 0A
	rti		; 40

	sbc $00A809.l		; EF 09 A8 00
	phd		; 0B
	rti		; 40

	sbc [$01.b],Y		; F7 01
	tay		; A8
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $00A8F9.l,X		; FF F9 A8 00
	ora $0B40.w		; 0D 40 0B
	sbc $00C8.w		; ED C8 00
	asl $0B40.w		; 0E 40 0B
	sbc $00D0.w		; ED D0 00
	ora $FDFB40.l		; 0F 40 FB FD
	cld		; D8
	brk $16.b		; 00 16
	rti		; 40

	ora $F5.b,S		; 03 F5
	cld		; D8
	brk $17.b		; 00 17
	rti		; 40

	phd		; 0B
	sbc $00D8.w		; ED D8 00
	clc		; 18
	rti		; 40

	phd		; 0B
	phd		; 0B
	sbc $AD.b		; E5 AD
	php		; 08
	brk $48.b		; 00 48
	ora ($DD.b,S),Y		; 13 DD
	lda $0208.w,X		; BD 08 02
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp $0408.w		; CD 08 04
	pha		; 48
	ora $ED.b,S		; 03 ED
	cmp $0608.w		; CD 08 06
	pha		; 48
	ora $ED.b,S		; 03 ED
	lda $0808.w,X		; BD 08 08
	pha		; 48
	ora $F5.b,S		; 03 F5
	lda $00.b,X		; B5 00
	asl A		; 0A
	rti		; 40

	tas		; 1B
	cmp $00B5.w,X		; DD B5 00
	phd		; 0B
	rti		; 40

	xce		; FB
	sbc $00BD.w,X		; FD BD 00
	tsb $F340.w		; 0C 40 F3
	ora $C5.b		; 05 C5
	brk $0D.b		; 00 0D
	rti		; 40

	xce		; FB
	sbc $00C5.w,X		; FD C5 00
	asl $1340.w		; 0E 40 13
	sbc $CD.b		; E5 CD
	brk $0F.b		; 00 0F
	rti		; 40

	ora $BDEF01.l		; 0F 01 EF BD
	php		; 08
	brk $48.b		; 00 48
	sbc #$07.b		; E9 07
	lda $0208.w		; AD 08 02
	pha		; 48
	sbc #$07.b		; E9 07
	lda $0408.w,X		; BD 08 04
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp $08.b,X		; D5 08
	asl $48.b		; 06 48
	sbc $B5FF.w,Y		; F9 FF B5
	brk $08.b		; 00 08
	rti		; 40

	sbc $BDFF.w,Y		; F9 FF BD
	brk $09.b		; 00 09
	rti		; 40

	sbc $C5FF.w,Y		; F9 FF C5
	brk $0A.b		; 00 0A
	rti		; 40

	sbc #$0F.b		; E9 0F
	cmp $0B00.w		; CD 00 0B
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cmp $0C00.w		; CD 00 0C
	rti		; 40

	sbc $CDFF.w,Y		; F9 FF CD
	brk $0D.b		; 00 0D
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp $0E00.w		; CD 00 0E
	rti		; 40

	xba		; EB
	ora $00D5.w		; 0D D5 00
	ora $FFF940.l		; 0F 40 F9 FF
	lda $1800.w		; AD 00 18
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp $00.b,X		; D5 00
	ora $0340.w,Y		; 19 40 03
	sbc $DD.b,X		; F5 DD
	brk $1A.b		; 00 1A
	rti		; 40

	trb $ED.b		; 14 ED
	ora $E3.b,S		; 03 E3
	php		; 08
	brk $48.b		; 00 48
	sbc $D303.w		; ED 03 D3
	php		; 08
	cop $48.b		; 02 48
	sbc $D3F3.w,X		; FD F3 D3
	php		; 08
	tsb $48.b		; 04 48
	sbc $ACF3.w,X		; FD F3 AC
	php		; 08
	asl $48.b		; 06 48
	sbc $08C401.l		; EF 01 C4 08
	php		; 08
	pha		; 48
	tsb $F4.b		; 04 F4
	xba		; EB
	brk $0A.b		; 00 0A
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b,S),Y		; F3 00
	phd		; 0B
	rti		; 40

	sbc $FB0B.w		; ED 0B FB
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $E3FB.w,X		; FD FB E3
	brk $0D.b		; 00 0D
	rti		; 40

	ora $F3.b		; 05 F3
	sbc $00.b,S		; E3 00
	asl $0540.w		; 0E 40 05
	sbc ($FB.b,S),Y		; F3 FB
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $03.b,X		; F5 03
	ldy $00.b,X		; B4 00
	inc A		; 1A
	rti		; 40

	sbc $03.b,X		; F5 03
	ldy $1B00.w,X		; BC 00 1B
	rti		; 40

	sbc $BCFB.w,X		; FD FB BC
	brk $1C.b		; 00 1C
	rti		; 40

	ora $F3.b		; 05 F3
	ldy $1D00.w,X		; BC 00 1D
	rti		; 40

	ora $B8EB.w		; 0D EB B8
	brk $1E.b		; 00 1E
	rti		; 40

	sbc $00F309.l		; EF 09 F3 00
	ora $EB0D40.l,X		; 1F 40 0D EB
	xce		; FB
	brk $20.b		; 00 20
	rti		; 40

	sbc $00C4F9.l,X		; FF F9 C4 00
	and ($40.b,X)		; 21 40
	sbc $00CCF9.l,X		; FF F9 CC 00
	jsl $F41940.l		; 22 40 19 F4
	jsr ($08AF.w,X)		; FC AF 08
	brk $48.b		; 00 48
	pea $BFFC.w		; F4 FC BF
	php		; 08
	cop $48.b		; 02 48
	pea $CFFC.w		; F4 FC CF
	php		; 08
	tsb $48.b		; 04 48
	pea $DFFC.w		; F4 FC DF
	php		; 08
	asl $48.b		; 06 48
	cpx $DA0C.w		; EC 0C DA
	brk $08.b		; 00 08
	rti		; 40

	cpx $E20C.w		; EC 0C E2
	brk $09.b		; 00 09
	rti		; 40

	cpx $EA0C.w		; EC 0C EA
	brk $0A.b		; 00 0A
	rti		; 40

	pea $EF04.w		; F4 04 EF
	brk $0B.b		; 00 0B
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $400C00.l		; EF 00 0C 40
	cpx $BA0C.w		; EC 0C BA
	brk $0D.b		; 00 0D
	rti		; 40

	cpx $C20C.w		; EC 0C C2
	brk $0E.b		; 00 0E
	rti		; 40

	cpx $CA0C.w		; EC 0C CA
	brk $0F.b		; 00 0F
	rti		; 40

	cpx $D20C.w		; EC 0C D2
	brk $18.b		; 00 18
	rti		; 40

	tsb $F4.b		; 04 F4
	lda $401900.l		; AF 00 19 40
	tsb $F4.b		; 04 F4
	lda [$00.b],Y		; B7 00
	inc A		; 1A
	rti		; 40

	tsb $F4.b		; 04 F4
	lda $401B00.l,X		; BF 00 1B 40
	tsb $F4.b		; 04 F4
	cmp $401C00.l		; CF 00 1C 40
	tsb $F4.b		; 04 F4
	cmp [$00.b],Y		; D7 00
	ora $0440.w,X		; 1D 40 04
	pea $00DF.w		; F4 DF 00
	asl $0440.w,X		; 1E 40 04
	pea $00E7.w		; F4 E7 00
	ora $0BED40.l,X		; 1F 40 ED 0B
	plx		; FA
	brk $20.b		; 00 20
	rti		; 40

	inc $F20A.w		; EE 0A F2
	brk $21.b		; 00 21
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc [$00.b],Y		; F7 00
	jsl $F00840.l		; 22 40 08 F0
	sbc $402300.l,X		; FF 00 23 40
	bpl -24.b		; 10 E8
	sbc $402400.l,X		; FF 00 24 40
	clc		; 18
	sbc $E203.w		; ED 03 E2
	php		; 08
	brk $48.b		; 00 48
	sbc $08C201.l		; EF 01 C2 08
	cop $48.b		; 02 48
	sbc $AAF7.w,Y		; F9 F7 AA
	php		; 08
	tsb $48.b		; 04 48
	xba		; EB
	ora $D2.b		; 05 D2
	php		; 08
	asl $48.b		; 06 48
	xce		; FB
	sbc $D2.b,X		; F5 D2
	php		; 08
	php		; 08
	pha		; 48
	sbc [$11.b]		; E7 11
	dex		; CA
	brk $0A.b		; 00 0A
	rti		; 40

	ora $F3.b		; 05 F3
	sep #$00		; E2 00
	phd		; 0B
	rti		; 40

	sbc $00C2F9.l,X		; FF F9 C2 00
	tsb $FF40.w		; 0C 40 FF
	sbc $00CA.w,Y		; F9 CA 00
	ora $0740.w		; 0D 40 07
	sbc ($F8.b),Y		; F1 F8
	brk $0E.b		; 00 0E
	rti		; 40

	beq   8.b		; F0 08
	sbc ($00.b)		; F2 00
	ora $07F140.l		; 0F 40 F1 07
	tsx		; BA
	brk $1A.b		; 00 1A
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	tsx		; BA
	brk $1B.b		; 00 1B
	rti		; 40

	ora $BADF.w,Y		; 19 DF BA
	brk $1C.b		; 00 1C
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b)		; F2 00
	ora $0940.w,X		; 1D 40 09
	sbc $1E00AA.l		; EF AA 00 1E
	rti		; 40

	ora #$EF.b		; 09 EF
	lda ($00.b)		; B2 00
	ora $FFF940.l,X		; 1F 40 F9 FF
	tsx		; BA
	brk $20.b		; 00 20
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	tsx		; BA
	brk $21.b		; 00 21
	rti		; 40

	ora #$EF.b		; 09 EF
	tsx		; BA
	brk $22.b		; 00 22
	rti		; 40

	ora #$EF.b		; 09 EF
	jsr ($2300.w,X)		; FC 00 23
	rti		; 40

	ora $F5.b,S		; 03 F5
	nop		; EA
	brk $24.b		; 00 24
	rti		; 40

	sbc $FA0B.w		; ED 0B FA
	brk $25.b		; 00 25
	rti		; 40

	sbc $E2FB.w,X		; FD FB E2
	brk $26.b		; 00 26
	rti		; 40

	ora [$EE.b],Y		; 17 EE
	cop $DA.b		; 02 DA
	php		; 08
	brk $48.b		; 00 48
	inc $DAF2.w,X		; FE F2 DA
	php		; 08
	cop $48.b		; 02 48
	inc $FA.b,X		; F6 FA
	lda ($08.b)		; B2 08
	tsb $48.b		; 04 48
	sbc $08CA01.l		; EF 01 CA 08
	asl $48.b		; 06 48
	cpx $FA0C.w		; EC 0C FA
	brk $08.b		; 00 08
	rti		; 40

	asl $E2EA.w		; 0E EA E2
	brk $09.b		; 00 09
	rti		; 40

	asl $F2.b		; 06 F2
	lda ($00.b)		; B2 00
	asl A		; 0A
	rti		; 40

	asl $F2.b		; 06 F2
	tsx		; BA
	brk $0B.b		; 00 0B
	rti		; 40

	inc $02.b,X		; F6 02
	rep #$00		; C2 00
	tsb $FE40.w		; 0C 40 FE
	plx		; FA
	rep #$00		; C2 00
	ora $0640.w		; 0D 40 06
	sbc ($C2.b)		; F2 C2
	brk $0E.b		; 00 0E
	rti		; 40

	ora [$F1.b]		; 07 F1
	dex		; CA
	brk $0F.b		; 00 0F
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc ($00.b)		; F2 00
	clc		; 18
	rti		; 40

	ora [$F1.b]		; 07 F1
	plx		; FA
	brk $19.b		; 00 19
	rti		; 40

	ora $00FAE9.l		; 0F E9 FA 00
	inc A		; 1A
	rti		; 40

	pea $F204.w		; F4 04 F2
	brk $1B.b		; 00 1B
	rti		; 40

	sbc $00CAF9.l,X		; FF F9 CA 00
	trb $FF40.w		; 1C 40 FF
	sbc $00D2.w,Y		; F9 D2 00
	ora $F040.w,X		; 1D 40 F0
	php		; 08
	sbc $00.b,X		; F5 00
	asl $F140.w,X		; 1E 40 F1
	ora [$EA.b]		; 07 EA
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $EAFF.w,Y		; F9 FF EA
	brk $20.b		; 00 20
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	nop		; EA
	brk $21.b		; 00 21
	rti		; 40

	ora #$EF.b		; 09 EF
	nop		; EA
	brk $22.b		; 00 22
	rti		; 40

	ora [$06.b],Y		; 17 06
	nop		; EA
	cmp $0008.w		; CD 08 00
	pha		; 48
	sed		; F8
	sed		; F8
	tsx		; BA
	php		; 08
	cop $48.b		; 02 48
	php		; 08
	inx		; E8
	lda $0408.w		; AD 08 04
	pha		; 48
	php		; 08
	inx		; E8
	lda $0608.w,X		; BD 08 06
	pha		; 48
	inc $DAFA.w,X		; FE FA DA
	brk $08.b		; 00 08
	rti		; 40

	inc $E2FA.w,X		; FE FA E2
	brk $09.b		; 00 09
	rti		; 40

	jsr ($D2FC.w,X)		; FC FC D2
	brk $0A.b		; 00 0A
	rti		; 40

	asl $E2.b,X		; 16 E2
	cmp $0B00.w		; CD 00 0B
	rti		; 40

	asl $E2.b,X		; 16 E2
	cmp $00.b,X		; D5 00
	tsb $0040.w		; 0C 40 00
	sed		; F8
	lda ($00.b)		; B2 00
	ora $0C40.w		; 0D 40 0C
	cpx $00E5.w		; EC E5 00
	asl $F840.w		; 0E 40 F8
	brk $CA.b		; 00 CA
	brk $0F.b		; 00 0F
	rti		; 40

	brk $F8.b		; 00 F8
	dex		; CA
	brk $18.b		; 00 18
	rti		; 40

	ora $DDEB.w		; 0D EB DD
	brk $19.b		; 00 19
	rti		; 40

	ora $E3.b,X		; 15 E3
	cmp $1A00.w,X		; DD 00 1A
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cmp $00.b,S		; C3 00
	tas		; 1B
	rti		; 40

	sbc ($07.b),Y		; F1 07
	wai		; CB
	brk $1C.b		; 00 1C
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cmp ($00.b,S),Y		; D3 00
	ora $F140.w,X		; 1D 40 F1
	ora [$DB.b]		; 07 DB
	brk $1E.b		; 00 1E
	rti		; 40

	asl A		; 0A
	inc $00ED.w		; EE ED 00
	ora $E61240.l,X		; 1F 40 12 E6
	sbc $2000.w		; ED 00 20
	rti		; 40

	asl A		; 0A
	inc $00F5.w		; EE F5 00
	and ($40.b,X)		; 21 40
	asl A		; 0A
	inc $00FD.w		; EE FD 00
	jsl $FA1D40.l		; 22 40 1D FA
	inc $B4.b,X		; F6 B4
	php		; 08
	brk $48.b		; 00 48
	ora ($DE.b)		; 12 DE
	lda $0208.w		; AD 08 02
	pha		; 48
	ora ($DE.b)		; 12 DE
	lda $0408.w,X		; BD 08 04
	pha		; 48
	inc $CC0A.w		; EE 0A CC
	brk $06.b		; 00 06
	rti		; 40

	inc $02.b,X		; F6 02
	cpy $0700.w		; CC 00 07
	rti		; 40

	asl $D4EA.w		; 0E EA D4
	brk $08.b		; 00 08
	rti		; 40

	bmi -56.b		; 30 C8
	cmp [$00.b]		; C7 00
	ora #$40.b		; 09 40
	sec		; 38
	cpy #$C7.b		; C0 C7
	brk $0A.b		; 00 0A
	rti		; 40

	ora #$EF.b		; 09 EF
	cpx $0B00.w		; EC 00 0B
	rti		; 40

	ora #$EF.b		; 09 EF
	pea $0C00.w		; F4 00 0C
	rti		; 40

	ora #$EF.b		; 09 EF
	jsr ($0D00.w,X)		; FC 00 0D
	rti		; 40

	and #$CF.b		; 29 CF
	cmp #$00.b		; C9 00
	asl $0A40.w		; 0E 40 0A
	inc $00B3.w		; EE B3 00
	ora $EE0A40.l		; 0F 40 0A EE
	tyx		; BB
	brk $16.b		; 00 16
	rti		; 40

	asl A		; 0A
	inc $00C3.w		; EE C3 00
	ora [$40.b],Y		; 17 40
	asl A		; 0A
	inc $00CB.w		; EE CB 00
	clc		; 18
	rti		; 40

	asl A		; 0A
	inc $00D3.w		; EE D3 00
	ora $EA40.w,Y		; 19 40 EA
	asl $00BC.w		; 0E BC 00
	inc A		; 1A
	rti		; 40

	sbc ($06.b)		; F2 06
	ldy $1B00.w,X		; BC 00 1B
	rti		; 40

	cpx $14.b		; E4 14
	rep #$00		; C2 00
	trb $FA40.w		; 1C 40 FA
	inc $00C4.w,X		; FE C4 00
	ora $0240.w,X		; 1D 40 02
	inc $C4.b,X		; F6 C4
	brk $1E.b		; 00 1E
	rti		; 40

	and $D3.b		; 25 D3
	tyx		; BB
	brk $1F.b		; 00 1F
	rti		; 40

	ora $DCEB.w		; 0D EB DC
	brk $20.b		; 00 20
	rti		; 40

	ora ($E6.b)		; 12 E6
	cmp $2100.w		; CD 00 21
	rti		; 40

	inc A		; 1A
	dec $00CD.w,X		; DE CD 00
	jsl $D62240.l		; 22 40 22 D6
	cmp ($00.b,X)		; C1 00
	and $40.b,S		; 23 40
	jsl $00C9D6.l		; 22 D6 C9 00
	bit $40.b		; 24 40
	phd		; 0B
	sbc $00E4.w		; ED E4 00
	and $40.b		; 25 40
	inc A		; 1A
	tsb $EC.b		; 04 EC
	lda #$08.b		; A9 08
	brk $48.b		; 00 48
	tsb $EC.b		; 04 EC
	lda $0208.w,Y		; B9 08 02
	pha		; 48
	tsb $EC.b		; 04 EC
	cmp #$08.b		; C9 08
	tsb $48.b		; 04 48
	jsr ($CDFC.w,X)		; FC FC CD
	brk $06.b		; 00 06
	rti		; 40

	trb $E4.b		; 14 E4
	ldx $00.b		; A6 00
	ora [$40.b]		; 07 40
	trb $A6DC.w		; 1C DC A6
	brk $08.b		; 00 08
	rti		; 40

	bit $D4.b		; 24 D4
	ldx $00.b		; A6 00
	ora #$40.b		; 09 40
	bit $D4.b		; 24 D4
	ldx $0A00.w		; AE 00 0A
	rti		; 40

	trb $E4.b		; 14 E4
	ldx $00.b,Y		; B6 00
	phd		; 0B
	rti		; 40

	trb $E4.b		; 14 E4
	ldx $0C00.w,Y		; BE 00 0C
	rti		; 40

	trb $E4.b		; 14 E4
	dec $00.b		; C6 00
	ora $1440.w		; 0D 40 14
	cpx $CE.b		; E4 CE
	brk $0E.b		; 00 0E
	rti		; 40

	trb $B0DC.w		; 1C DC B0
	brk $0F.b		; 00 0F
	rti		; 40

	trb $B8DC.w		; 1C DC B8
	brk $16.b		; 00 16
	rti		; 40

	trb $C0DC.w		; 1C DC C0
	brk $17.b		; 00 17
	rti		; 40

	trb $C8DC.w		; 1C DC C8
	brk $18.b		; 00 18
	rti		; 40

	bit $D4.b		; 24 D4
	lda $1900.w,Y		; B9 00 19
	rti		; 40

	jsr ($ADFC.w,X)		; FC FC AD
	brk $1A.b		; 00 1A
	rti		; 40

	jsr ($BDFC.w,X)		; FC FC BD
	brk $1B.b		; 00 1B
	rti		; 40

	jsr ($C5FC.w,X)		; FC FC C5
	brk $1C.b		; 00 1C
	rti		; 40

	php		; 08
	beq -40.b		; F0 D8
	brk $1D.b		; 00 1D
	rti		; 40

	ora #$EF.b		; 09 EF
	cpx #$00.b		; E0 00
	asl $0A40.w,X		; 1E 40 0A
	inc $00E8.w		; EE E8 00
	ora $EE0A40.l,X		; 1F 40 0A EE
	beq   0.b		; F0 00
	jsr $0A40.w		; 20 40 0A
	inc $00F8.w		; EE F8 00
	and ($40.b,X)		; 21 40
	asl A		; 0A
	inc $0000.w		; EE 00 00
	jsl $052040.l		; 22 40 20 05
	xba		; EB
	tyx		; BB
	php		; 08
	brk $48.b		; 00 48
	cop $EE.b		; 02 EE
	wai		; CB
	php		; 08
	cop $48.b		; 02 48
	nop		; EA
	asl $A8.b		; 06 A8
	php		; 08
	tsb $48.b		; 04 48
	ora $F2EB.w		; 0D EB F2
	brk $06.b		; 00 06
	rti		; 40

	ora $E3.b,X		; 15 E3
	tyx		; BB
	brk $07.b		; 00 07
	rti		; 40

	ora $E3.b,X		; 15 E3
	cmp $00.b,S		; C3 00
	php		; 08
	rti		; 40

	and $C3.b,X		; 35 C3
	lda $0900.w		; AD 00 09
	rti		; 40

	sed		; F8
	brk $A3.b		; 00 A3
	brk $0A.b		; 00 0A
	rti		; 40

	clc		; 18
	cpx #$A3.b		; E0 A3
	brk $0B.b		; 00 0B
	rti		; 40

	jsr $A3D8.w		; 20 D8 A3
	brk $0C.b		; 00 0C
	rti		; 40

	plp		; 28
	bne -93.b		; D0 A3
	brk $0D.b		; 00 0D
	rti		; 40

	bmi -56.b		; 30 C8
	lda $00.b,S		; A3 00
	asl $3840.w		; 0E 40 38
	cpy #$A5.b		; C0 A5
	brk $0F.b		; 00 0F
	rti		; 40

	ora ($E6.b)		; 12 E6
	nop		; EA
	brk $16.b		; 00 16
	rti		; 40

	cop $F6.b		; 02 F6
	plb		; AB
	brk $17.b		; 00 17
	rti		; 40

	asl A		; 0A
	inc $00AB.w		; EE AB 00
	clc		; 18
	rti		; 40

	asl A		; 0A
	inc $00E3.w		; EE E3 00
	ora $0A40.w,Y		; 19 40 0A
	inc $00EB.w		; EE EB 00
	inc A		; 1A
	rti		; 40

	sbc $C3FB.w,X		; FD FB C3
	brk $1B.b		; 00 1B
	rti		; 40

	ora ($E6.b)		; 12 E6
	wai		; CB
	brk $1C.b		; 00 1C
	rti		; 40

	ora ($E6.b)		; 12 E6
	cmp ($00.b,S),Y		; D3 00
	ora $FA40.w,X		; 1D 40 FA
	inc $00AC.w,X		; FE AC 00
	asl $1240.w,X		; 1E 40 12
	inc $A8.b		; E6 A8
	brk $1F.b		; 00 1F
	rti		; 40

	plx		; FA
	inc $00D0.w,X		; FE D0 00
	jsr $FA40.w		; 20 40 FA
	inc $00D8.w,X		; FE D8 00
	and ($40.b,X)		; 21 40
	ora $C3DB.w,X		; 1D DB C3
	brk $22.b		; 00 22
	rti		; 40

	phd		; 0B
	sbc $00FA.w		; ED FA 00
	and $40.b,S		; 23 40
	ora ($E5.b,S),Y		; 13 E5
	plx		; FA
	brk $24.b		; 00 24
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda ($00.b,S),Y		; B3 00
	and $40.b		; 25 40
	phd		; 0B
	sbc $00B3.w		; ED B3 00
	rol $40.b		; 26 40
	ora ($E5.b,S),Y		; 13 E5
	lda ($00.b,S),Y		; B3 00
	and [$40.b]		; 27 40
	phd		; 0B
	sbc $00DB.w		; ED DB 00
	plp		; 28
	rti		; 40

	ora $F1FF.w,X		; 1D FF F1
	phx		; DA
	php		; 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	tsx		; BA
	php		; 08
	cop $48.b		; 02 48
	sed		; F8
	sed		; F8
	dex		; CA
	php		; 08
	tsb $48.b		; 04 48
	tsb $B4EC.w		; 0C EC B4
	brk $06.b		; 00 06
	rti		; 40

	asl $F2.b		; 06 F2
	nop		; EA
	brk $07.b		; 00 07
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc ($00.b)		; F2 00
	php		; 08
	rti		; 40

	jsr ($B2FC.w,X)		; FC FC B2
	brk $09.b		; 00 09
	rti		; 40

	brk $F8.b		; 00 F8
	tax		; AA
	brk $0A.b		; 00 0A
	rti		; 40

	php		; 08
	beq -86.b		; F0 AA
	brk $0B.b		; 00 0B
	rti		; 40

	tsb $F4.b		; 04 F4
	lda ($00.b)		; B2 00
	tsb $0C40.w		; 0C 40 0C
	cpx $00AC.w		; EC AC 00
	ora $0840.w		; 0D 40 08
	beq -70.b		; F0 BA
	brk $0E.b		; 00 0E
	rti		; 40

	php		; 08
	beq -62.b		; F0 C2
	brk $0F.b		; 00 0F
	rti		; 40

	php		; 08
	beq -54.b		; F0 CA
	brk $16.b		; 00 16
	rti		; 40

	php		; 08
	beq -46.b		; F0 D2
	brk $17.b		; 00 17
	rti		; 40

	clc		; 18
	cpx #$CB.b		; E0 CB
	brk $18.b		; 00 18
	rti		; 40

	jsr $CBD8.w		; 20 D8 CB
	brk $19.b		; 00 19
	rti		; 40

	bpl -24.b		; 10 E8
	ldy $1A00.w,X		; BC 00 1A
	rti		; 40

	bpl -24.b		; 10 E8
	cpy $00.b		; C4 00
	tas		; 1B
	rti		; 40

	bpl -24.b		; 10 E8
	cpy $1C00.w		; CC 00 1C
	rti		; 40

	cld		; D8
	jsr $00BD.w		; 20 BD 00
	ora $E840.w,X		; 1D 40 E8
	bpl -67.b		; 10 BD
	brk $1E.b		; 00 1E
	rti		; 40

	cld		; D8
	jsr $00C5.w		; 20 C5 00
	ora $18E040.l,X		; 1F 40 E0 18
	cmp $00.b		; C5 00
	jsr $E840.w		; 20 40 E8
	bpl -59.b		; 10 C5
	brk $21.b		; 00 21
	rti		; 40

	beq   8.b		; F0 08
	ldx $2200.w,Y		; BE 00 22
	rti		; 40

	beq   8.b		; F0 08
	dec $00.b		; C6 00
	and $40.b,S		; 23 40
	beq   8.b		; F0 08
	dec $2400.w		; CE 00 24
	rti		; 40

	ora #$EF.b		; 09 EF
	plx		; FA
	brk $25.b		; 00 25
	rti		; 40

	asl $DE.b,X		; 16 DE
	ora ($AC.b)		; 12 AC
	php		; 08
	brk $48.b		; 00 48
	inc $AC02.w		; EE 02 AC
	php		; 08
	cop $48.b		; 02 48
	dec $B022.w		; CE 22 B0
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FF.b),Y		; F1 FF
	jmp.w [$0608]		; DC 08 06
	pha		; 48
	nop		; EA
	asl $BC.b		; 06 BC
	php		; 08
	php		; 08
	pha		; 48
	cmp $35.b,S		; C3 35
	iny		; C8
	brk $0A.b		; 00 0A
	rti		; 40

	dec $32.b		; C6 32
	clv		; B8
	brk $0B.b		; 00 0B
	rti		; 40

	cmp $C02B.w		; CD 2B C0
	brk $0C.b		; 00 0C
	rti		; 40

	sbc #$0F.b		; E9 0F
	cpy $0D00.w		; CC 00 0D
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cpy $0E00.w		; CC 00 0E
	rti		; 40

	sbc $CCFF.w,Y		; F9 FF CC
	brk $0F.b		; 00 0F
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cpy $1A00.w		; CC 00 1A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	jmp.w [$1B00]		; DC 00 1B
	rti		; 40

	inc $B4FA.w,X		; FE FA B4
	brk $1C.b		; 00 1C
	rti		; 40

	sbc ($17.b,X)		; E1 17
	cmp $401D00.l		; CF 00 1D 40
	ora #$EF.b		; 09 EF
	cmp $1E00.w,Y		; D9 00 1E
	rti		; 40

	sbc ($06.b)		; F2 06
	pei ($00.b)		; D4 00
	ora $FEFA40.l,X		; 1F 40 FA FE
	pei ($00.b)		; D4 00
	jsr $0240.w		; 20 40 02
	inc $D4.b,X		; F6 D4
	brk $21.b		; 00 21
	rti		; 40

	cmp $35.b,S		; C3 35
	cpy #$00.b		; C0 00
	jsl $FEFA40.l		; 22 40 FA FE
	ldy $2300.w,X		; BC 00 23
	rti		; 40

	plx		; FA
	inc $00C4.w,X		; FE C4 00
	bit $40.b		; 24 40
	tas		; 1B
	inc $B402.w		; EE 02 B4
	php		; 08
	brk $48.b		; 00 48
	inc $C402.w		; EE 02 C4
	php		; 08
	cop $48.b		; 02 48
	xba		; EB
	ora $D4.b		; 05 D4
	php		; 08
	tsb $48.b		; 04 48
	asl $F2.b		; 06 F2
	ldy $00.b,X		; B4 00
	asl $40.b		; 06 40
	dec $22.b,X		; D6 22
	ldy $0700.w,X		; BC 00 07
	rti		; 40

	dec $BC1A.w,X		; DE 1A BC
	brk $08.b		; 00 08
	rti		; 40

	inc $12.b		; E6 12
	ldy $0900.w,X		; BC 00 09
	rti		; 40

	asl $F2.b		; 06 F2
	ldy $0A00.w,X		; BC 00 0A
	rti		; 40

	dec $C41A.w,X		; DE 1A C4
	brk $0B.b		; 00 0B
	rti		; 40

	asl $F2.b		; 06 F2
	cpy $00.b		; C4 00
	tsb $DE40.w		; 0C 40 DE
	inc A		; 1A
	cpy $0D00.w		; CC 00 0D
	rti		; 40

	dec $B21A.w,X		; DE 1A B2
	brk $0E.b		; 00 0E
	rti		; 40

	inc $12.b		; E6 12
	lda ($00.b)		; B2 00
	ora $FAFE40.l		; 0F 40 FE FA
	ldx $00.b,Y		; B6 00
	asl $40.b,X		; 16 40
	inc $BEFA.w,X		; FE FA BE
	brk $17.b		; 00 17
	rti		; 40

	inc $C6FA.w,X		; FE FA C6
	brk $18.b		; 00 18
	rti		; 40

	inc $CEFA.w,X		; FE FA CE
	brk $19.b		; 00 19
	rti		; 40

	asl $B7EA.w		; 0E EA B7
	brk $1A.b		; 00 1A
	rti		; 40

	php		; 08
	beq -52.b		; F0 CC
	brk $1B.b		; 00 1B
	rti		; 40

	bpl -24.b		; 10 E8
	dec $1C00.w		; CE 00 1C
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cpx $00.b		; E4 00
	ora $F940.w,X		; 1D 40 F9
	sbc $1E00E4.l,X		; FF E4 00 1E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	ldx $1F00.w		; AE 00 1F
	rti		; 40

	dec $22.b,X		; D6 22
	ldy $00.b,X		; B4 00
	jsr $FB40.w		; 20 40 FB
	sbc $00D4.w,X		; FD D4 00
	and ($40.b,X)		; 21 40
	xce		; FB
	sbc $00DC.w,X		; FD DC 00
	jsl $E51340.l		; 22 40 13 E5
	cmp $00.b,X		; D5 00
	and $40.b,S		; 23 40
	inc A		; 1A
	tsb $EC.b		; 04 EC
	lda $0008.w,X		; BD 08 00
	pha		; 48
	cpx $0C.b		; E4 0C
	cmp $08.b		; C5 08
	cop $48.b		; 02 48
	pea $CDFC.w		; F4 FC CD
	php		; 08
	tsb $48.b		; 04 48
	pea $BDFC.w		; F4 FC BD
	php		; 08
	asl $48.b		; 06 48
	sbc $AD03.w		; ED 03 AD
	php		; 08
	php		; 08
	pha		; 48
	cmp $B31B.w,X		; DD 1B B3
	brk $0A.b		; 00 0A
	rti		; 40

	ora $F3.b		; 05 F3
	lda $0B00.w		; AD 00 0B
	rti		; 40

	cpx $BD0C.w		; EC 0C BD
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $ADFB.w,X		; FD FB AD
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $B5FB.w,X		; FD FB B5
	brk $0E.b		; 00 0E
	rti		; 40

	cmp $23.b,X		; D5 23
	ldx $00.b,Y		; B6 00
	ora $23D540.l		; 0F 40 D5 23
	ldx $1A00.w,Y		; BE 00 1A
	rti		; 40

	sbc $13.b		; E5 13
	lda ($00.b),Y		; B1 00
	tas		; 1B
	rti		; 40

	inc $02.b,X		; F6 02
	sbc ($00.b)		; F2 00
	trb $F640.w		; 1C 40 F6
	cop $FA.b		; 02 FA
	brk $1D.b		; 00 1D
	rti		; 40

	inc $FAFA.w,X		; FE FA FA
	brk $1E.b		; 00 1E
	rti		; 40

	sed		; F8
	brk $EA.b		; 00 EA
	brk $1F.b		; 00 1F
	rti		; 40

	cpx #$18.b		; E0 18
	wai		; CB
	brk $20.b		; 00 20
	rti		; 40

	cpx #$18.b		; E0 18
	cmp ($00.b,S),Y		; D3 00
	and ($40.b,X)		; 21 40
	cld		; D8
	jsr $00C6.w		; 20 C6 00
	jsl $E61240.l		; 22 40 12 E6
	lda $00.b		; A5 00
	and $40.b,S		; 23 40
	ora ($E6.b)		; 12 E6
	lda $2400.w		; AD 00 24
	rti		; 40

	asl A		; 0A
	inc $00B5.w		; EE B5 00
	and $40.b		; 25 40
	ora ($E6.b)		; 12 E6
	lda $00.b,X		; B5 00
	rol $40.b		; 26 40
	xce		; FB
	sbc $00DD.w,X		; FD DD 00
	and [$40.b]		; 27 40
	xce		; FB
	sbc $00E5.w,X		; FD E5 00
	plp		; 28
	rti		; 40

	clc		; 18
	pei ($1C.b)		; D4 1C
	lda ($08.b)		; B2 08
	brk $48.b		; 00 48
	tsb $EC.b		; 04 EC
	phx		; DA
	php		; 08
	cop $48.b		; 02 48
	pea $DAFC.w		; F4 FC DA
	php		; 08
	tsb $48.b		; 04 48
	cpx $0C.b		; E4 0C
	tax		; AA
	php		; 08
	asl $48.b		; 06 48
	pea $AAFC.w		; F4 FC AA
	php		; 08
	php		; 08
	pha		; 48
	pea $BAFC.w		; F4 FC BA
	php		; 08
	asl A		; 0A
	pha		; 48
	xba		; EB
	ora $CA.b		; 05 CA
	php		; 08
	tsb $FB48.w		; 0C 48 FB
	sbc $CA.b,X		; F5 CA
	php		; 08
	asl $0C48.w		; 0E 48 0C
	cpx $00B2.w		; EC B2 00
	jsr $CC40.w		; 20 40 CC
	bit $00BA.w		; 2C BA 00
	and ($40.b,X)		; 21 40
	tsb $F4.b		; 04 F4
	tax		; AA
	brk $22.b		; 00 22
	rti		; 40

	tsb $F4.b		; 04 F4
	lda ($00.b)		; B2 00
	and $40.b,S		; 23 40
	cpx $14.b		; E4 14
	tsx		; BA
	brk $24.b		; 00 24
	rti		; 40

	tsb $F4.b		; 04 F4
	tsx		; BA
	brk $25.b		; 00 25
	rti		; 40

	tsb $F4.b		; 04 F4
	rep #$00		; C2 00
	rol $40.b		; 26 40
	pea $EA04.w		; F4 04 EA
	brk $27.b		; 00 27
	rti		; 40

	jsr ($EAFC.w,X)		; FC FC EA
	brk $28.b		; 00 28
	rti		; 40

	sbc $F50B.w		; ED 0B F5
	brk $29.b		; 00 29
	rti		; 40

	dec $32.b		; C6 32
	lda $402A00.l,X		; BF 00 2A 40
	dec $32.b		; C6 32
	cmp [$00.b]		; C7 00
	pld		; 2B
	rti		; 40

	sbc ($06.b)		; F2 06
	beq   0.b		; F0 00
	bit $D440.w		; 2C 40 D4
	bit $C2.b		; 24 C2
	brk $2D.b		; 00 2D
	rti		; 40

	pei ($24.b)		; D4 24
	dex		; CA
	brk $2E.b		; 00 2E
	rti		; 40

	sbc $15.b,S		; E3 15
	bne   0.b		; D0 00
	and $D41440.l		; 2F 40 14 D4
	trb $08B0.w		; 1C B0 08
	brk $48.b		; 00 48
	cpx $0C.b		; E4 0C
	bcs   8.b		; B0 08
	cop $48.b		; 02 48
	pea $B0FC.w		; F4 FC B0
	php		; 08
	tsb $48.b		; 04 48
	asl $EA.b		; 06 EA
	dec $0608.w		; CE 08 06
	pha		; 48
	inc $FA.b,X		; F6 FA
	bne   8.b		; D0 08
	php		; 08
	pha		; 48
	inc $FA.b,X		; F6 FA
	cpy #$08.b		; C0 08
	asl A		; 0A
	pha		; 48
	tsb $B8EC.w		; 0C EC B8
	brk $0C.b		; 00 0C
	rti		; 40

	cpy $34.b		; C4 34
	lda ($00.b)		; B2 00
	ora $CC40.w		; 0D 40 CC
	bit $00B2.w		; 2C B2 00
	asl $FC40.w		; 0E 40 FC
	jsr ($00DE.w,X)		; FC DE 00
	ora $CA2E40.l		; 0F 40 2E CA
	stp		; DB
	brk $1C.b		; 00 1C
	rti		; 40

	asl $E2.b,X		; 16 E2
	dec $00.b,X		; D6 00
	ora $0440.w,X		; 1D 40 04
	pea $00DE.w		; F4 DE 00
	asl $1E40.w,X		; 1E 40 1E
	phx		; DA
	cmp [$00.b],Y		; D7 00
	ora $EC0C40.l,X		; 1F 40 0C EC
	dec $2000.w,X		; DE 00 20
	rti		; 40

	tsb $F4.b		; 04 F4
	clv		; B8
	brk $21.b		; 00 21
	rti		; 40

	asl $F2.b		; 06 F2
	cpy #$00.b		; C0 00
	jsl $F20640.l		; 22 40 06 F2
	iny		; C8
	brk $23.b		; 00 23
	rti		; 40

	rol $D2.b		; 26 D2
	cmp $2400.w,Y		; D9 00 24
	rti		; 40

	ora $00B2E9.l		; 0F E9 B2 00
	and $40.b		; 25 40
	tsb $F4FC.w		; 0C FC F4
	wai		; CB
	php		; 08
	brk $48.b		; 00 48
	cpx $D304.w		; EC 04 D3
	php		; 08
	cop $48.b		; 02 48
	cpx $E304.w		; EC 04 E3
	php		; 08
	tsb $48.b		; 04 48
	pea $F3FC.w		; F4 FC F3
	php		; 08
	asl $48.b		; 06 48
	tsb $EC.b		; 04 EC
	sbc ($08.b,S),Y		; F3 08
	php		; 08
	pha		; 48
	jsr ($DBF4.w,X)		; FC F4 DB
	php		; 08
	asl A		; 0A
	pha		; 48
	pea $CB04.w		; F4 04 CB
	brk $0C.b		; 00 0C
	rti		; 40

	tsb $DBEC.w		; 0C EC DB
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $E3EC.w		; 0C EC E3
	brk $0E.b		; 00 0E
	rti		; 40

	jsr ($EBFC.w,X)		; FC FC EB
	brk $0F.b		; 00 0F
	rti		; 40

	tsb $F4.b		; 04 F4
	xba		; EB
	brk $1C.b		; 00 1C
	rti		; 40

	tsb $EBEC.w		; 0C EC EB
	brk $1D.b		; 00 1D
	rti		; 40

	asl $ED.b,X		; 16 ED
	ora $E4.b,S		; 03 E4
	php		; 08
	brk $48.b		; 00 48
	sbc $E4F3.w,X		; FD F3 E4
	php		; 08
	cop $48.b		; 02 48
	cop $EE.b		; 02 EE
	cpy $0408.w		; CC 08 04
	pha		; 48
	ora $ECEB.w		; 0D EB EC
	brk $06.b		; 00 06
	rti		; 40

	sbc $13.b		; E5 13
	inx		; E8
	brk $07.b		; 00 07
	rti		; 40

	dec $EF1A.w,X		; DE 1A EF
	brk $08.b		; 00 08
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sed		; F8
	brk $09.b		; 00 09
	rti		; 40

	plx		; FA
	inc $00DC.w,X		; FE DC 00
	asl A		; 0A
	rti		; 40

	inc A		; 1A
	dec $00DC.w,X		; DE DC 00
	phd		; 0B
	rti		; 40

	jsl $00DCD6.l		; 22 D6 DC 00
	tsb $2A40.w		; 0C 40 2A
	dec $00DC.w		; CE DC 00
	ora $0D40.w		; 0D 40 0D
	xba		; EB
	cpx $00.b		; E4 00
	asl $1240.w		; 0E 40 12
	inc $CC.b		; E6 CC
	brk $0F.b		; 00 0F
	rti		; 40

	ora ($E6.b)		; 12 E6
	pei ($00.b)		; D4 00
	asl $40.b,X		; 16 40
	cop $F6.b		; 02 F6
	jmp.w [$1700]		; DC 00 17
	rti		; 40

	asl A		; 0A
	inc $00DC.w		; EE DC 00
	clc		; 18
	rti		; 40

	ora ($E6.b)		; 12 E6
	jmp.w [$1900]		; DC 00 19
	rti		; 40

	xce		; FB
	sbc $00F4.w,X		; FD F4 00
	inc A		; 1A
	rti		; 40

	ora $F5.b,S		; 03 F5
	pea $1B00.w		; F4 00 1B
	rti		; 40

	phd		; 0B
	sbc $00F4.w		; ED F4 00
	trb $F340.w		; 1C 40 F3
	ora $FC.b		; 05 FC
	brk $1D.b		; 00 1D
	rti		; 40

	phd		; 0B
	sbc $00FC.w		; ED FC 00
	asl $1340.w,X		; 1E 40 13
	jsr ($CDF4.w,X)		; FC F4 CD
	php		; 08
	brk $48.b		; 00 48
	tsb $EDE4.w		; 0C E4 ED
	php		; 08
	cop $48.b		; 02 48
	pea $EDFC.w		; F4 FC ED
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp $0608.w,X		; DD 08 06
	pha		; 48
	ora $ED.b,S		; 03 ED
	cmp $0808.w,X		; DD 08 08
	pha		; 48
	trb $F2DC.w		; 1C DC F2
	brk $0A.b		; 00 0A
	rti		; 40

	tsb $CDEC.w		; 0C EC CD
	brk $0B.b		; 00 0B
	rti		; 40

	tsb $D5EC.w		; 0C EC D5
	brk $0C.b		; 00 0C
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $0D00.w		; ED 00 0D
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $00.b,X		; F5 00
	asl $F440.w		; 0E 40 F4
	tsb $FD.b		; 04 FD
	brk $0F.b		; 00 0F
	rti		; 40

	jsr ($FDFC.w,X)		; FC FC FD
	brk $1A.b		; 00 1A
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $1B00.w,X		; FD 00 1B
	rti		; 40

	tsb $FDEC.w		; 0C EC FD
	brk $1C.b		; 00 1C
	rti		; 40

	cpx $14.b		; E4 14
	sbc ($00.b),Y		; F1 00
	ora $EC40.w,X		; 1D 40 EC
	tsb $00EA.w		; 0C EA 00
	asl $EC40.w,X		; 1E 40 EC
	tsb $00F2.w		; 0C F2 00
	ora $E51340.l,X		; 1F 40 13 E5
	cmp $2000.w,X		; DD 00 20
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	sbc $00.b		; E5 00
	and ($40.b,X)		; 21 40
	clc		; 18
	php		; 08
	inx		; E8
	pei ($08.b)		; D4 08
	brk $48.b		; 00 48
	php		; 08
	inx		; E8
	cpx $08.b		; E4 08
	cop $48.b		; 02 48
	sed		; F8
	sed		; F8
	cpx $08.b		; E4 08
	tsb $48.b		; 04 48
	ora ($DE.b)		; 12 DE
	pea $0608.w		; F4 08 06
	pha		; 48
	cpx #$18.b		; E0 18
	phx		; DA
	brk $08.b		; 00 08
	rti		; 40

	cpx #$18.b		; E0 18
	sep #$00		; E2 00
	ora #$40.b		; 09 40
	cpx #$18.b		; E0 18
	nop		; EA
	brk $0A.b		; 00 0A
	rti		; 40

	beq   8.b		; F0 08
	nop		; EA
	brk $0B.b		; 00 0B
	rti		; 40

	inx		; E8
	bpl -20.b		; 10 EC
	brk $0C.b		; 00 0C
	rti		; 40

	sbc [$01.b],Y		; F7 01
	jsr ($0D00.w,X)		; FC 00 0D
	rti		; 40

	sbc $00FCF9.l,X		; FF F9 FC 00
	asl $0740.w		; 0E 40 07
	sbc ($FC.b),Y		; F1 FC
	brk $0F.b		; 00 0F
	rti		; 40

	brk $F8.b		; 00 F8
	pei ($00.b)		; D4 00
	clc		; 18
	rti		; 40

	sed		; F8
	brk $DC.b		; 00 DC
	brk $19.b		; 00 19
	rti		; 40

	brk $F8.b		; 00 F8
	jmp.w [$1A00]		; DC 00 1A
	rti		; 40

	inx		; E8
	bpl -35.b		; 10 DD
	brk $1B.b		; 00 1B
	rti		; 40

	beq   8.b		; F0 08
	cpx #$00.b		; E0 00
	trb $FA40.w		; 1C 40 FA
	inc $00F4.w,X		; FE F4 00
	ora $0240.w,X		; 1D 40 02
	inc $F4.b,X		; F6 F4
	brk $1E.b		; 00 1E
	rti		; 40

	asl A		; 0A
	inc $00F4.w		; EE F4 00
	ora $D62240.l,X		; 1F 40 22 D6
	pea $2000.w		; F4 00 20
	rti		; 40

	ora [$F1.b]		; 07 F1
	ora ($00.b,X)		; 01 00
	and ($40.b,X)		; 21 40
	rol A		; 2A
	dec $00F6.w		; CE F6 00
	jsl $C63240.l		; 22 40 32 C6
	sbc [$00.b],Y		; F7 00
	and $40.b,S		; 23 40
	ora $DE09E7.l		; 0F E7 09 DE
	php		; 08
	brk $48.b		; 00 48
	ora [$E9.b]		; 07 E9
	dec $0208.w,X		; DE 08 02
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	dec $0408.w,X		; DE 08 04
	pha		; 48
	sbc $08CEF1.l,X		; FF F1 CE 08
	asl $48.b		; 06 48
	sbc $0D.b,S		; E3 0D
	inc $0808.w		; EE 08 08
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	inc $0A08.w		; EE 08 0A
	pha		; 48
	ora [$F1.b]		; 07 F1
	inc $00.b,X		; F6 00
	tsb $F740.w		; 0C 40 F7
	ora ($CE.b,X)		; 01 CE
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $00D609.l		; EF 09 D6 00
	asl $F740.w		; 0E 40 F7
	ora ($D6.b,X)		; 01 D6
	brk $0F.b		; 00 0F
	rti		; 40

	stp		; DB
	ora $00EE.w,X		; 1D EE 00
	trb $0340.w		; 1C 40 03
	sbc $EE.b,X		; F5 EE
	brk $1D.b		; 00 1D
	rti		; 40

	phd		; 0B
	sbc $00EE.w		; ED EE 00
	asl $0740.w,X		; 1E 40 07
	sbc ($FE.b),Y		; F1 FE
	brk $1F.b		; 00 1F
	rti		; 40

	ora $00FEE9.l		; 0F E9 FE 00
	jsr $1240.w		; 20 40 12
	sbc $08F2F1.l,X		; FF F1 F2 08
	brk $48.b		; 00 48
	ora $08F2E1.l		; 0F E1 F2 08
	cop $48.b		; 02 48
	sbc $08D3F1.l,X		; FF F1 D3 08
	tsb $48.b		; 04 48
	ora $08D3E1.l		; 0F E1 D3 08
	asl $48.b		; 06 48
	ora $EB.b		; 05 EB
	sbc $08.b,S		; E3 08
	php		; 08
	pha		; 48
	ora $DB.b,X		; 15 DB
	sbc $08.b,S		; E3 08
	asl A		; 0A
	pha		; 48
	and [$D1.b]		; 27 D1
	sbc ($00.b,S),Y		; F3 00
	tsb $2F40.w		; 0C 40 2F
	cmp #$F3.b		; C9 F3
	brk $0D.b		; 00 0D
	rti		; 40

	and [$C1.b],Y		; 37 C1
	sbc ($00.b,S),Y		; F3 00
	asl $1F40.w		; 0E 40 1F
	cmp $00F2.w,Y		; D9 F2 00
	ora $11E740.l		; 0F 40 E7 11
	stp		; DB
	brk $1C.b		; 00 1C
	rti		; 40

	and $00F5B9.l,X		; 3F B9 F5 00
	ora $E540.w,X		; 1D 40 E5
	ora ($E3.b,S),Y		; 13 E3
	brk $1E.b		; 00 1E
	rti		; 40

	sbc $E30B.w		; ED 0B E3
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc $00.b,S		; E3 00
	jsr $FD40.w		; 20 40 FD
	xce		; FB
	sbc $00.b,S		; E3 00
	and ($40.b,X)		; 21 40
	sbc $00DB09.l		; EF 09 DB 00
	jsl $01F740.l		; 22 40 F7 01
	stp		; DB
	brk $23.b		; 00 23
	rti		; 40

	asl $DC14.w		; 0E 14 DC
	pei ($08.b)		; D4 08
	brk $48.b		; 00 48
	tsb $EC.b		; 04 EC
	pei ($08.b)		; D4 08
	cop $48.b		; 02 48
	tsb $EC.b		; 04 EC
	cpx $08.b		; E4 08
	tsb $48.b		; 04 48
	tsb $EC.b		; 04 EC
	pea $0608.w		; F4 08 06
	pha		; 48
	trb $DC.b		; 14 DC
	cpx $0808.w		; EC 08 08
	pha		; 48
	jsr ($FCFC.w,X)		; FC FC FC
	brk $0A.b		; 00 0A
	rti		; 40

	bit $D4.b		; 24 D4
	cpx $0B00.w		; EC 00 0B
	rti		; 40

	bit $F4CC.w		; 2C CC F4
	brk $0C.b		; 00 0C
	rti		; 40

	trb $E4.b		; 14 E4
	cpx $00.b		; E4 00
	ora $1440.w		; 0D 40 14
	cpx $FC.b		; E4 FC
	brk $0E.b		; 00 0E
	rti		; 40

	pea $DE04.w		; F4 04 DE
	brk $0F.b		; 00 0F
	rti		; 40

	jsr ($DEFC.w,X)		; FC FC DE
	brk $1A.b		; 00 1A
	rti		; 40

	sbc $00E209.l		; EF 09 E2 00
	tas		; 1B
	rti		; 40

	and [$D1.b]		; 27 D1
	beq   0.b		; F0 00
	trb $0C40.w		; 1C 40 0C
	trb $DC.b		; 14 DC
	cpy $0008.w		; CC 08 00
	pha		; 48
	tsb $EC.b		; 04 EC
	cpy $0208.w		; CC 08 02
	pha		; 48
	pea $D4FC.w		; F4 FC D4
	php		; 08
	tsb $48.b		; 04 48
	pea $E4FC.w		; F4 FC E4
	php		; 08
	asl $48.b		; 06 48
	pea $F4FC.w		; F4 FC F4
	php		; 08
	php		; 08
	pha		; 48
	tsb $EC.b		; 04 EC
	pea $0A08.w		; F4 08 0A
	pha		; 48
	tsb $EC.b		; 04 EC
	cpx $08.b		; E4 08
	tsb $2448.w		; 0C 48 24
	pei ($D4.b)		; D4 D4
	brk $0E.b		; 00 0E
	rti		; 40

	jsr ($CCFC.w,X)		; FC FC CC
	brk $0F.b		; 00 0F
	rti		; 40

	tsb $F4.b		; 04 F4
	jmp.w [$1E00]		; DC 00 1E
	rti		; 40

	cpx $F60C.w		; EC 0C F6
	brk $1F.b		; 00 1F
	rti		; 40

	rol A		; 2A
	dec $00D5.w		; CE D5 00
	jsr $1440.w		; 20 40 14
	jsr ($AAF4.w,X)		; FC F4 AA
	pha		; 48
	brk $08.b		; 00 08
	cpx $CA04.w		; EC 04 CA
	pha		; 48
	cop $08.b		; 02 08
	jsr ($CAF4.w,X)		; FC F4 CA
	pha		; 48
	tsb $08.b		; 04 08
	tsb $CAE4.w		; 0C E4 CA
	pha		; 48
	asl $08.b		; 06 08
	php		; 08
	inx		; E8
	tsx		; BA
	pha		; 48
	php		; 08
	php		; 08
	sed		; F8
	sed		; F8
	tsx		; BA
	pha		; 48
	asl A		; 0A
	php		; 08
	pea $B204.w		; F4 04 B2
	rti		; 40

	tsb $1400.w		; 0C 00 14
	cpx $DA.b		; E4 DA
	rti		; 40

	ora $0C00.w		; 0D 00 0C
	cpx $40DA.w		; EC DA 40
	asl $0400.w		; 0E 00 04
	pea $40DA.w		; F4 DA 40
	ora $14E400.l		; 0F 00 E4 14
	cmp ($40.b,S),Y		; D3 40
	trb $1000.w		; 1C 00 10
	inx		; E8
	sep #$40		; E2 40
	ora $0800.w,X		; 1D 00 08
	beq -30.b		; F0 E2
	rti		; 40

	asl $0000.w,X		; 1E 00 00
	sed		; F8
	sep #$40		; E2 40
	ora $0CEC00.l,X		; 1F 00 EC 0C
	phx		; DA
	rti		; 40

	jsr $0C00.w		; 20 00 0C
	cpx $40EA.w		; EC EA 40
	and ($00.b,X)		; 21 00
	beq   8.b		; F0 08
	tsx		; BA
	rti		; 40

	jsl $08F000.l		; 22 00 F0 08
	rep #$40		; C2 40
	and $00.b,S		; 23 00
	inx		; E8
	bpl -68.b		; 10 BC
	rti		; 40

	bit $00.b		; 24 00
	cpx #$18.b		; E0 18
	ldy $2540.w,X		; BC 40 25
	brk $10.b		; 00 10
	tsb $FAE4.w		; 0C E4 FA
	pha		; 48
	brk $08.b		; 00 08
	trb $DC.b		; 14 DC
	nop		; EA
	pha		; 48
	cop $08.b		; 02 08
	trb $DC.b		; 14 DC
	phx		; DA
	pha		; 48
	tsb $08.b		; 04 08
	tsb $C2E4.w		; 0C E4 C2
	pha		; 48
	asl $08.b		; 06 08
	jsr ($C2F4.w,X)		; FC F4 C2
	pha		; 48
	php		; 08
	php		; 08
	tsb $EC.b		; 04 EC
	cmp ($48.b)		; D2 48
	asl A		; 0A
	php		; 08
	pea $D2FC.w		; F4 FC D2
	pha		; 48
	tsb $E408.w		; 0C 08 E4
	tsb $48C5.w		; 0C C5 48
	asl $F408.w		; 0E 08 F4
	tsb $CA.b		; 04 CA
	rti		; 40

	jsr $1C00.w		; 20 00 1C
	jmp.w [$40D2]		; DC D2 40
	and ($00.b,X)		; 21 00
	trb $E4.b		; 14 E4
	cmp ($40.b)		; D2 40
	jsl $F40400.l		; 22 00 04 F4
	sep #$40		; E2 40
	and $00.b,S		; 23 00
	jsr ($E2FC.w,X)		; FC FC E2
	rti		; 40

	bit $00.b		; 24 00
	pea $E204.w		; F4 04 E2
	rti		; 40

	and $00.b		; 25 00
	tsb $F2EC.w		; 0C EC F2
	rti		; 40

	rol $00.b		; 26 00
	jsr ($BAFC.w,X)		; FC FC BA
	rti		; 40

	and [$00.b]		; 27 00
	bpl  -4.b		; 10 FC
	pea $48E2.w		; F4 E2 48
	brk $08.b		; 00 08
	cpx $E204.w		; EC 04 E2
	pha		; 48
	cop $08.b		; 02 08
	sep #$0E		; E2 0E
	sbc ($48.b),Y		; F1 48
	tsb $08.b		; 04 08
	inc $FA.b,X		; F6 FA
	rep #$48		; C2 48
	asl $08.b		; 06 08
	inc $FA.b,X		; F6 FA
	cmp ($48.b)		; D2 48
	php		; 08
	php		; 08
	asl $EA.b		; 06 EA
	dex		; CA
	pha		; 48
	asl A		; 0A
	php		; 08
	cpx $14.b		; E4 14
	sbc #$40.b		; E9 40
	tsb $EA00.w		; 0C 00 EA
	asl $4001.w		; 0E 01 40
	ora $E200.w		; 0D 00 E2
	asl $01.b,X		; 16 01
	rti		; 40

	asl $1600.w		; 0E 00 16
.INDEX 8
	sep #$DA		; E2 DA
	rti		; 40

	ora $0AEE00.l		; 0F 00 EE 0A
	phx		; DA
	rti		; 40

	trb $1200.w		; 1C 00 12
	inc $C2.b		; E6 C2
	rti		; 40

	ora $0A00.w,X		; 1D 00 0A
	inc $40C2.w		; EE C2 40
	asl $F200.w,X		; 1E 00 F2
	asl $01.b		; 06 01
	rti		; 40

	ora $EA0E00.l,X		; 1F 00 0E EA
	phx		; DA
	rti		; 40

	jsr $0600.w		; 20 00 06
	sbc ($DA.b)		; F2 DA
	rti		; 40

	and ($00.b,X)		; 21 00
	trb $0CE4.w		; 1C E4 0C
	nop		; EA
	pha		; 48
	brk $08.b		; 00 08
	cpx $0C.b		; E4 0C
	cmp ($48.b)		; D2 48
	cop $08.b		; 02 08
	trb $CED4.w		; 1C D4 CE
	pha		; 48
	tsb $08.b		; 04 08
	tsb $CEE4.w		; 0C E4 CE
	pha		; 48
	asl $08.b		; 06 08
	jsr ($CFF4.w,X)		; FC F4 CF
	pha		; 48
	php		; 08
	php		; 08
	jmp.w [$D21C]		; DC 1C D2
	rti		; 40

	asl A		; 0A
	brk $DC.b		; 00 DC
	trb $40DA.w		; 1C DA 40
	phd		; 0B
	brk $EC.b		; 00 EC
	tsb $40E2.w		; 0C E2 40
	tsb $E400.w		; 0C 00 E4
	trb $E2.b		; 14 E2
	rti		; 40

	ora $DC00.w		; 0D 00 DC
	trb $40E2.w		; 1C E2 40
	asl $DC00.w		; 0E 00 DC
	trb $40EA.w		; 1C EA 40
	ora $CC2C00.l		; 0F 00 2C CC
	phx		; DA
	rti		; 40

	inc A		; 1A
	brk $EC.b		; 00 EC
	tsb $40BA.w		; 0C BA 40
	tas		; 1B
	brk $FC.b		; 00 FC
	jsr ($40C7.w,X)		; FC C7 40
	trb $DC00.w		; 1C 00 DC
	trb $40CA.w		; 1C CA 40
	ora $2C00.w,X		; 1D 00 2C
	cpy $40D0.w		; CC D0 40
	asl $F400.w,X		; 1E 00 F4
	tsb $D0.b		; 04 D0
	rti		; 40

	ora $04F400.l,X		; 1F 00 F4 04
	cld		; D8
	rti		; 40

	jsr $F400.w		; 20 00 F4
	tsb $E0.b		; 04 E0
	rti		; 40

	and ($00.b,X)		; 21 00
	pea $E804.w		; F4 04 E8
	rti		; 40

	jsl $04F400.l		; 22 00 F4 04
	beq  64.b		; F0 40
	and $00.b,S		; 23 00
	pea $F804.w		; F4 04 F8
	rti		; 40

	bit $00.b		; 24 00
	xba		; EB
	ora $40C2.w		; 0D C2 40
	and $00.b		; 25 00
.INDEX 8
	sep #$16		; E2 16
	tsx		; BA
	rti		; 40

	rol $00.b		; 26 00
	nop		; EA
	asl $40CA.w		; 0E CA 40
	and [$00.b]		; 27 00
	inc $B20A.w		; EE 0A B2
	rti		; 40

	plp		; 28
	brk $E6.b		; 00 E6
	ora ($B2.b)		; 12 B2
	rti		; 40

	and #$00.b		; 29 00
	dec $C21A.w,X		; DE 1A C2
	rti		; 40

	rol A		; 2A
	brk $0D.b		; 00 0D
	pea $DAFC.w		; F4 FC DA
	pha		; 48
	brk $08.b		; 00 08
	pea $EAFC.w		; F4 FC EA
	pha		; 48
	cop $08.b		; 02 08
	tsb $F6E4.w		; 0C E4 F6
	pha		; 48
	tsb $08.b		; 04 08
	tsb $EC.b		; 04 EC
	inx		; E8
	pha		; 48
	asl $08.b		; 06 08
	cpx $14.b		; E4 14
	dec $0840.w,X		; DE 40 08
	brk $FC.b		; 00 FC
	jsr ($40FA.w,X)		; FC FA 40
	ora #$00.b		; 09 00
	cpx $D80C.w		; EC 0C D8
	rti		; 40

	asl A		; 0A
	brk $04.b		; 00 04
	pea $40E0.w		; F4 E0 40
	phd		; 0B
	brk $EC.b		; 00 EC
	tsb $40E0.w		; 0C E0 40
	tsb $0400.w		; 0C 00 04
	pea $40F8.w		; F4 F8 40
	ora $F400.w		; 0D 00 F4
	tsb $FA.b		; 04 FA
	rti		; 40

	asl $EC00.w		; 0E 00 EC
	tsb $40F9.w		; 0C F9 40
	ora $07F100.l		; 0F 00 F1 07
	pei ($40.b)		; D4 40
	clc		; 18
	brk $12.b		; 00 12
	jsr ($E2F4.w,X)		; FC F4 E2
	php		; 08
	brk $48.b		; 00 48
	tsb $EC.b		; 04 EC
	tax		; AA
	php		; 08
	cop $48.b		; 02 48
	pea $B2FC.w		; F4 FC B2
	php		; 08
	tsb $48.b		; 04 48
	tsb $EC.b		; 04 EC
	tsx		; BA
	php		; 08
	asl $48.b		; 06 48
	pea $C2FC.w		; F4 FC C2
	php		; 08
	php		; 08
	pha		; 48
	jsr ($D2F4.w,X)		; FC F4 D2
	php		; 08
	asl A		; 0A
	pha		; 48
	cpx $0C.b		; E4 0C
	ldy $0C08.w,X		; BC 08 0C
	pha		; 48
	cpx $0C.b		; E4 0C
	cpy $0E08.w		; CC 08 0E
	pha		; 48
	sbc $F2F7.w,Y		; F9 F7 F2
	php		; 08
	jsr $1448.w		; 20 48 14
	cpx $B2.b		; E4 B2
	brk $22.b		; 00 22
	rti		; 40

	tsb $F4.b		; 04 F4
	dex		; CA
	brk $23.b		; 00 23
	rti		; 40

	cpx $14.b		; E4 14
	jmp.w [$2400]		; DC 00 24
	rti		; 40

	cpx $DC0C.w		; EC 0C DC
	brk $25.b		; 00 25
	rti		; 40

	inc $A80A.w		; EE 0A A8
	brk $26.b		; 00 26
	rti		; 40

	sbc ($07.b),Y		; F1 07
	tax		; AA
	brk $27.b		; 00 27
	rti		; 40

	pea $D204.w		; F4 04 D2
	brk $28.b		; 00 28
	rti		; 40

	ora #$EF.b		; 09 EF
	sbc ($00.b)		; F2 00
	and #$40.b		; 29 40
	ora #$EF.b		; 09 EF
	plx		; FA
	brk $2A.b		; 00 2A
	rti		; 40

	ora ($E4.b,S),Y		; 13 E4
	tsb $08D2.w		; 0C D2 08
	brk $48.b		; 00 48
	cpx $0C.b		; E4 0C
	rep #$08		; C2 08
	cop $48.b		; 02 48
	cpx $B204.w		; EC 04 B2
	php		; 08
	tsb $48.b		; 04 48
	pea $F2FC.w		; F4 FC F2
	php		; 08
	asl $48.b		; 06 48
	jsr ($E2F4.w,X)		; FC F4 E2
	php		; 08
	php		; 08
	pha		; 48
	jsr ($D2F4.w,X)		; FC F4 D2
	php		; 08
	asl A		; 0A
	pha		; 48
	jsr ($AAF4.w,X)		; FC F4 AA
	php		; 08
	tsb $0448.w		; 0C 48 04
	cpx $08BA.w		; EC BA 08
	asl $F448.w		; 0E 48 F4
	jsr ($08C2.w,X)		; FC C2 08
	jsr $1448.w		; 20 48 14
	jmp.w [$08B4]		; DC B4 08
	jsl $0CEC48.l		; 22 48 EC 0C
	sep #$00		; E2 00
	bit $40.b		; 24 40
	tsb $AAEC.w		; 0C EC AA
	brk $25.b		; 00 25
	rti		; 40

	tsb $B2EC.w		; 0C EC B2
	brk $26.b		; 00 26
	rti		; 40

	jsr ($BAFC.w,X)		; FC FC BA
	brk $27.b		; 00 27
	rti		; 40

	tsb $F4.b		; 04 F4
	dex		; CA
	brk $28.b		; 00 28
	rti		; 40

	pea $D204.w		; F4 04 D2
	brk $29.b		; 00 29
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc ($00.b)		; F2 00
	rol A		; 2A
	rti		; 40

	tsb $F4.b		; 04 F4
	plx		; FA
	brk $2B.b		; 00 2B
	rti		; 40

	tsb $FAEC.w		; 0C EC FA
	brk $2C.b		; 00 2C
	rti		; 40

	clc		; 18
	jmp.w [$BA14]		; DC 14 BA
	php		; 08
	brk $48.b		; 00 48
	cpx $A204.w		; EC 04 A2
	php		; 08
	cop $48.b		; 02 48
	jsr ($A2F4.w,X)		; FC F4 A2
	php		; 08
	tsb $48.b		; 04 48
	jsr ($B2F4.w,X)		; FC F4 B2
	php		; 08
	asl $48.b		; 06 48
	cpx $B204.w		; EC 04 B2
	php		; 08
	php		; 08
	pha		; 48
	jsr ($C2F4.w,X)		; FC F4 C2
	php		; 08
	asl A		; 0A
	pha		; 48
	jsr ($D2F4.w,X)		; FC F4 D2
	php		; 08
	tsb $FC48.w		; 0C 48 FC
	pea $08E2.w		; F4 E2 08
	asl $DE48.w		; 0E 48 DE
	ora ($CA.b)		; 12 CA
	php		; 08
	jsr $0448.w		; 20 48 04
	pea $00F2.w		; F4 F2 00
	jsl $F40440.l		; 22 40 04 F4
	plx		; FA
	brk $23.b		; 00 23
	rti		; 40

	cpx $14.b		; E4 14
	lda ($00.b)		; B2 00
	bit $40.b		; 24 40
	cpx $C20C.w		; EC 0C C2
	brk $25.b		; 00 25
	rti		; 40

	pea $C204.w		; F4 04 C2
	brk $26.b		; 00 26
	rti		; 40

	pea $CA04.w		; F4 04 CA
	brk $27.b		; 00 27
	rti		; 40

	pea $D204.w		; F4 04 D2
	brk $28.b		; 00 28
	rti		; 40

	pea $DA04.w		; F4 04 DA
	brk $29.b		; 00 29
	rti		; 40

	pea $E204.w		; F4 04 E2
	brk $2A.b		; 00 2A
	rti		; 40

	pea $EA04.w		; F4 04 EA
	brk $2B.b		; 00 2B
	rti		; 40

	asl $F2.b		; 06 F2
	txs		; 9A
	brk $2C.b		; 00 2C
	rti		; 40

	tsb $FAEC.w		; 0C EC FA
	brk $2D.b		; 00 2D
	rti		; 40

	beq   8.b		; F0 08
	plx		; FA
	brk $2E.b		; 00 2E
	rti		; 40

	sbc #$0F.b		; E9 0F
	stz $2F00.w		; 9C 00 2F
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc ($00.b)		; F2 00
	and ($40.b)		; 32 40
	ora [$C6.b],Y		; 17 C6
	rol A		; 2A
	lda ($08.b)		; B2 08
	brk $48.b		; 00 48
	inc $DAF2.w,X		; FE F2 DA
	php		; 08
	cop $48.b		; 02 48
	inc $FA.b,X		; F6 FA
	nop		; EA
	php		; 08
	tsb $48.b		; 04 48
	inc $0A.b		; E6 0A
	lda ($08.b)		; B2 08
	asl $48.b		; 06 48
	inc $FA.b,X		; F6 FA
	lda ($08.b)		; B2 08
	php		; 08
	pha		; 48
	asl $EA.b		; 06 EA
	lda ($08.b)		; B2 08
	asl A		; 0A
	pha		; 48
	dec $1A.b,X		; D6 1A
	ldy $08.b,X		; B4 08
	tsb $F148.w		; 0C 48 F1
	sbc $0E08CA.l,X		; FF CA 08 0E
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	dex		; CA
	php		; 08
	jsr $1648.w		; 20 48 16
.ACCU 8
.INDEX 8
	sep #$B2		; E2 B2
	brk $22.b		; 00 22
	rti		; 40

	asl $E2.b,X		; 16 E2
	tsx		; BA
	brk $23.b		; 00 23
	rti		; 40

	inc $C20A.w		; EE 0A C2
	brk $24.b		; 00 24
	rti		; 40

	inc $02.b,X		; F6 02
	rep #$00		; C2 00
	and $40.b		; 25 40
	inc $C2FA.w,X		; FE FA C2
	brk $26.b		; 00 26
	rti		; 40

	asl $F2.b		; 06 F2
	rep #$00		; C2 00
	and [$40.b]		; 27 40
	asl $C2EA.w		; 0E EA C2
	brk $28.b		; 00 28
	rti		; 40

	asl $E2.b,X		; 16 E2
	rep #$00		; C2 00
	and #$40.b		; 29 40
	inc $02.b,X		; F6 02
	sep #$00		; E2 00
	rol A		; 2A
	rti		; 40

	tsb $F4.b		; 04 F4
	txs		; 9A
	brk $2B.b		; 00 2B
	rti		; 40

	tsb $F4.b		; 04 F4
	ldx #$00.b		; A2 00
	bit $C440.w		; 2C 40 C4
	bit $B2.b,X		; 34 B2
	brk $2D.b		; 00 2D
	rti		; 40

	xce		; FB
	sbc $00AA.w,X		; FD AA 00
	rol $0340.w		; 2E 40 03
	sbc $AA.b,X		; F5 AA
	brk $2F.b		; 00 2F
	rti		; 40

	ora ($FC.b,S),Y		; 13 FC
	pea $08BF.w		; F4 BF 08
	brk $48.b		; 00 48
	pea $DFFC.w		; F4 FC DF
	php		; 08
	cop $48.b		; 02 48
	sbc [$F9.b],Y		; F7 F9
	cmp $480408.l		; CF 08 04 48
	xba		; EB
	ora $AF.b		; 05 AF
	php		; 08
	asl $48.b		; 06 48
	xce		; FB
	sbc $AF.b,X		; F5 AF
	php		; 08
	php		; 08
	pha		; 48
	phd		; 0B
	sbc $AF.b		; E5 AF
	php		; 08
	asl A		; 0A
	pha		; 48
	ora $ED.b,S		; 03 ED
	sta $480C08.l,X		; 9F 08 0C 48
	jsr ($EFFC.w,X)		; FC FC EF
	brk $0E.b		; 00 0E
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $400F00.l		; EF 00 0F 40
	sbc $00C709.l		; EF 09 C7 00
	asl $EC40.w,X		; 1E 40 EC
	tsb $00BF.w		; 0C BF 00
	ora $F10740.l,X		; 1F 40 07 F1
	cmp $402000.l		; CF 00 20 40
	ora [$F1.b]		; 07 F1
	cmp [$00.b],Y		; D7 00
	and ($40.b,X)		; 21 40
	pea $BF04.w		; F4 04 BF
	brk $22.b		; 00 22
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp $402300.l,X		; DF 00 23 40
	tsb $F4.b		; 04 F4
	sbc [$00.b]		; E7 00
	bit $40.b		; 24 40
	pea $EF04.w		; F4 04 EF
	brk $25.b		; 00 25
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	sta $402600.l,X		; 9F 00 26 40
	ora ($E5.b,S),Y		; 13 E5
	lda [$00.b]		; A7 00
	and [$40.b]		; 27 40
	inc A		; 1A
	jsr ($EAF4.w,X)		; FC F4 EA
	php		; 08
	brk $48.b		; 00 48
	jsr ($C2F4.w,X)		; FC F4 C2
	php		; 08
	cop $48.b		; 02 48
	pea $D2FC.w		; F4 FC D2
	php		; 08
	tsb $48.b		; 04 48
	cpx $0C.b		; E4 0C
	lda $0608.w,X		; BD 08 06
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	ldx #$08.b		; A2 08
	php		; 08
	pha		; 48
	ora [$E9.b]		; 07 E9
	ldx #$08.b		; A2 08
	asl A		; 0A
	pha		; 48
	ora [$D9.b],Y		; 17 D9
	ldx #$08.b		; A2 08
	tsb $F848.w		; 0C 48 F8
	sed		; F8
	lda ($08.b)		; B2 08
	asl $0448.w		; 0E 48 04
	pea $00DA.w		; F4 DA 00
	jsr $F440.w		; 20 40 F4
	tsb $E2.b		; 04 E2
	brk $21.b		; 00 21
	rti		; 40

	jsr ($E2FC.w,X)		; FC FC E2
	brk $22.b		; 00 22
	rti		; 40

	tsb $F4.b		; 04 F4
	sep #$00		; E2 00
	and $40.b,S		; 23 40
	cpx $14.b		; E4 14
	lda $00.b,X		; B5 00
	bit $40.b		; 24 40
	cpx $CD0C.w		; EC 0C CD
	brk $25.b		; 00 25
	rti		; 40

	pea $C204.w		; F4 04 C2
	brk $26.b		; 00 26
	rti		; 40

	and $D3.b		; 25 D3
	lda ($00.b)		; B2 00
	and [$40.b]		; 27 40
	and $00AAC9.l		; 2F C9 AA 00
	plp		; 28
	rti		; 40

	tsb $C2EC.w		; 0C EC C2
	brk $29.b		; 00 29
	rti		; 40

	tsb $CAEC.w		; 0C EC CA
	brk $2A.b		; 00 2A
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b)		; D2 00
	pld		; 2B
	rti		; 40

	and [$D1.b]		; 27 D1
	ldx #$00.b		; A2 00
	bit $2740.w		; 2C 40 27
	cmp ($AA.b),Y		; D1 AA
	brk $2D.b		; 00 2D
	rti		; 40

	tsb $D2EC.w		; 0C EC D2
	brk $2E.b		; 00 2E
	rti		; 40

	php		; 08
	beq -78.b		; F0 B2
	brk $2F.b		; 00 2F
	rti		; 40

	php		; 08
	beq -70.b		; F0 BA
	brk $30.b		; 00 30
	rti		; 40

	and ($C5.b,S),Y		; 33 C5
	lda ($00.b)		; B2 00
	and ($40.b),Y		; 31 40
	ora ($04.b)		; 12 04
	cpx $08E9.w		; EC E9 08
	brk $48.b		; 00 48
	pea $A1FC.w		; F4 FC A1
	php		; 08
	cop $48.b		; 02 48
	tsb $EC.b		; 04 EC
	lda ($08.b,X)		; A1 08
	tsb $48.b		; 04 48
	sbc $B903.w		; ED 03 B9
	php		; 08
	asl $48.b		; 06 48
	sbc $B9F3.w,X		; FD F3 B9
	php		; 08
	php		; 08
	pha		; 48
	sbc $08C9F1.l,X		; FF F1 C9 08
	asl A		; 0A
	pha		; 48
	sbc $08D9F1.l,X		; FF F1 D9 08
	tsb $EF48.w		; 0C 48 EF
	ora ($D9.b,X)		; 01 D9
	php		; 08
	asl $F448.w		; 0E 48 F4
	tsb $B1.b		; 04 B1
	brk $20.b		; 00 20
	rti		; 40

	jsr ($B1FC.w,X)		; FC FC B1
	brk $21.b		; 00 21
	rti		; 40

	tsb $F4.b		; 04 F4
	lda ($00.b),Y		; B1 00
	jsl $EC0C40.l		; 22 40 0C EC
	lda ($00.b),Y		; B1 00
	and $40.b,S		; 23 40
	bit $A9CC.w		; 2C CC A9
	brk $24.b		; 00 24
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $25.b		; 00 25
	rti		; 40

	trb $E4.b		; 14 E4
	lda $00.b,S		; A3 00
	rol $40.b		; 26 40
	trb $A4DC.w		; 1C DC A4
	brk $27.b		; 00 27
	rti		; 40

	bit $D4.b		; 24 D4
	lda $00.b		; A5 00
	plp		; 28
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cmp ($00.b),Y		; D1 00
	and #$40.b		; 29 40
	tas		; 1B
	cpx $0C.b		; E4 0C
	stp		; DB
	php		; 08
	brk $48.b		; 00 48
	pea $D3FC.w		; F4 FC D3
	php		; 08
	cop $48.b		; 02 48
	tsb $EC.b		; 04 EC
	cmp ($08.b,S),Y		; D3 08
	tsb $48.b		; 04 48
	inc $A3F2.w,X		; FE F2 A3
	php		; 08
	asl $48.b		; 06 48
	sbc ($FE.b)		; F2 FE
	sta ($08.b,S),Y		; 93 08
	php		; 08
	pha		; 48
	wai		; CB
	and $CB.b		; 25 CB
	php		; 08
	asl A		; 0A
	pha		; 48
	xce		; FB
	sbc $B3.b,X		; F5 B3
	php		; 08
	tsb $FB48.w		; 0C 48 FB
	sbc $C3.b,X		; F5 C3
	php		; 08
	asl $EB48.w		; 0E 48 EB
	ora $B3.b		; 05 B3
	php		; 08
	jsr $D348.w		; 20 48 D3
	ora $08BB.w,X		; 1D BB 08
	jsl $24D448.l		; 22 48 D4 24
	xba		; EB
	brk $24.b		; 00 24
	rti		; 40

	cld		; D8
	jsr $00E7.w		; 20 E7 00
	and $40.b		; 25 40
	cop $F6.b		; 02 F6
	txy		; 9B
	brk $26.b		; 00 26
	rti		; 40

	jmp.w [$E31C]		; DC 1C E3
	brk $27.b		; 00 27
	rti		; 40

	pea $E304.w		; F4 04 E3
	brk $28.b		; 00 28
	rti		; 40

	jsr ($E3FC.w,X)		; FC FC E3
	brk $29.b		; 00 29
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $00.b,S		; E3 00
	rol A		; 2A
	rti		; 40

	tsb $E3EC.w		; 0C EC E3
	brk $2B.b		; 00 2B
	rti		; 40

	inc $02.b,X		; F6 02
	plb		; AB
	brk $2C.b		; 00 2C
	rti		; 40

	sbc $15.b,S		; E3 15
	lda ($00.b,S),Y		; B3 00
	and $E340.w		; 2D 40 E3
	ora $BB.b,X		; 15 BB
	brk $2E.b		; 00 2E
	rti		; 40

	wai		; CB
	and $00C3.w		; 2D C3 00
	and $15E340.l		; 2F 40 E3 15
	cmp $00.b,S		; C3 00
	bit $40.b,X		; 34 40
	xba		; EB
	ora $00C3.w		; 0D C3 00
	and $40.b,X		; 35 40
	sbc ($05.b,S),Y		; F3 05
	cmp $00.b,S		; C3 00
	rol $40.b,X		; 36 40
	stp		; DB
	ora $00CB.w,X		; 1D CB 00
	and [$40.b],Y		; 37 40
	sbc ($05.b,S),Y		; F3 05
	wai		; CB
	brk $38.b		; 00 38
	rti		; 40

	ora $EC.b,X		; 15 EC
	tsb $F2.b		; 04 F2
	php		; 08
	brk $48.b		; 00 48
	cpx $B204.w		; EC 04 B2
	php		; 08
	cop $48.b		; 02 48
	cpx $0C.b		; E4 0C
	rep #$08		; C2 08
	tsb $48.b		; 04 48
	cpx $0C.b		; E4 0C
	cmp ($08.b)		; D2 08
	asl $48.b		; 06 48
	cpx $0C.b		; E4 0C
	sep #$08		; E2 08
	php		; 08
	pha		; 48
	pea $E2FC.w		; F4 FC E2
	php		; 08
	asl A		; 0A
	pha		; 48
	pea $D2FC.w		; F4 FC D2
	php		; 08
	tsb $F448.w		; 0C 48 F4
	jsr ($08C2.w,X)		; FC C2 08
	asl $F448.w		; 0E 48 F4
	tsb $AA.b		; 04 AA
	brk $20.b		; 00 20
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc ($00.b)		; F2 00
	and ($40.b,X)		; 21 40
	tsb $F4.b		; 04 F4
	plx		; FA
	brk $22.b		; 00 22
	rti		; 40

	tsb $FAEC.w		; 0C EC FA
	brk $23.b		; 00 23
	rti		; 40

	jsr ($B2FC.w,X)		; FC FC B2
	brk $24.b		; 00 24
	rti		; 40

	jsr ($BAFC.w,X)		; FC FC BA
	brk $25.b		; 00 25
	rti		; 40

	tsb $F4.b		; 04 F4
	rep #$00		; C2 00
	rol $40.b		; 26 40
	tsb $F4.b		; 04 F4
	dex		; CA
	brk $27.b		; 00 27
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b)		; D2 00
	plp		; 28
	rti		; 40

	tsb $F4.b		; 04 F4
	phx		; DA
	brk $29.b		; 00 29
	rti		; 40

	tsb $F4.b		; 04 F4
	sep #$00		; E2 00
	rol A		; 2A
	rti		; 40

	tsb $F4.b		; 04 F4
	nop		; EA
	brk $2B.b		; 00 2B
	rti		; 40

	cpx $14.b		; E4 14
	sbc ($00.b)		; F2 00
	bit $1F40.w		; 2C 40 1F
	sbc #$07.b		; E9 07
	tsx		; BA
	php		; 08
	brk $48.b		; 00 48
	sbc $BAF7.w,Y		; F9 F7 BA
	php		; 08
	cop $48.b		; 02 48
	ora ($EF.b,X)		; 01 EF
	txs		; 9A
	php		; 08
	tsb $48.b		; 04 48
	ora ($EF.b,X)		; 01 EF
	tax		; AA
	php		; 08
	asl $48.b		; 06 48
	ora #$E7.b		; 09 E7
	tsx		; BA
	php		; 08
	php		; 08
	pha		; 48
	ora $BAD7.w,Y		; 19 D7 BA
	php		; 08
	asl A		; 0A
	pha		; 48
	ora $AAD7.w,Y		; 19 D7 AA
	php		; 08
	tsb $DC48.w		; 0C 48 DC
	trb $00C7.w		; 1C C7 00
	asl $E740.w		; 0E 40 E7
	ora ($CA.b),Y		; 11 CA
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $00CA09.l		; EF 09 CA 00
	asl $F740.w,X		; 1E 40 F7
	ora ($CA.b,X)		; 01 CA
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $00CAF9.l,X		; FF F9 CA 00
	jsr $E140.w		; 20 40 E1
	ora [$C2.b],Y		; 17 C2
	brk $21.b		; 00 21
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	dex		; CA
	brk $22.b		; 00 22
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	txs		; 9A
	brk $23.b		; 00 23
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	ldx #$00.b		; A2 00
	bit $40.b		; 24 40
	ora $A2DF.w,Y		; 19 DF A2
	brk $25.b		; 00 25
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	tax		; AA
	brk $26.b		; 00 26
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	lda ($00.b)		; B2 00
	and [$40.b]		; 27 40
	stp		; DB
	ora $00CA.w,X		; 1D CA 00
	plp		; 28
	rti		; 40

	pea $E2FC.w		; F4 FC E2
	php		; 08
	and #$48.b		; 29 48
	sbc $FB.b,X		; F5 FB
	sbc ($08.b)		; F2 08
	pld		; 2B
	pha		; 48
	dec $1A.b,X		; D6 1A
	cmp ($08.b)		; D2 08
	and $E648.w		; 2D 48 E6
	ora ($D2.b)		; 12 D2
	brk $2F.b		; 00 2F
	rti		; 40

	inc $D20A.w		; EE 0A D2
	brk $30.b		; 00 30
	rti		; 40

	inc $02.b,X		; F6 02
	cmp ($00.b)		; D2 00
	and ($40.b),Y		; 31 40
	inc $D2FA.w,X		; FE FA D2
	brk $32.b		; 00 32
	rti		; 40

	dec $22.b,X		; D6 22
	sep #$00		; E2 00
	and ($40.b,S),Y		; 33 40
	ora $F3.b		; 05 F3
	plx		; FA
	brk $34.b		; 00 34
	rti		; 40

	sbc ($07.b),Y		; F1 07
	phx		; DA
	brk $35.b		; 00 35
	rti		; 40

	sbc $DAFF.w,Y		; F9 FF DA
	brk $36.b		; 00 36
	rti		; 40

	ora [$ED.b],Y		; 17 ED
	ora $BA.b,S		; 03 BA
	php		; 08
	brk $48.b		; 00 48
	sbc $BAF3.w,X		; FD F3 BA
	php		; 08
	cop $48.b		; 02 48
	cmp $CA1B.w,X		; DD 1B CA
	brk $04.b		; 00 04
	rti		; 40

	tsb $F4.b		; 04 F4
	lda ($00.b)		; B2 00
	ora $40.b		; 05 40
	cmp $C21B.w,X		; DD 1B C2
	brk $06.b		; 00 06
	rti		; 40

	ora $BAEB.w		; 0D EB BA
	brk $07.b		; 00 07
	rti		; 40

	ora $C2EB.w		; 0D EB C2
	brk $08.b		; 00 08
	rti		; 40

	sbc $13.b		; E5 13
	cpy #$00.b		; C0 00
	ora #$40.b		; 09 40
	inc $12.b		; E6 12
	dex		; CA
	brk $0A.b		; 00 0A
	rti		; 40

	inc $CA0A.w		; EE 0A CA
	brk $0B.b		; 00 0B
	rti		; 40

	inc $02.b,X		; F6 02
	dex		; CA
	brk $0C.b		; 00 0C
	rti		; 40

	inc $CAFA.w,X		; FE FA CA
	brk $0D.b		; 00 0D
	rti		; 40

	pea $E2FC.w		; F4 FC E2
	php		; 08
	trb $48.b		; 14 48
	sbc $FB.b,X		; F5 FB
	sbc ($08.b)		; F2 08
	asl $48.b,X		; 16 48
	dec $1A.b,X		; D6 1A
	cmp ($08.b)		; D2 08
	clc		; 18
	pha		; 48
	inc $12.b		; E6 12
	cmp ($00.b)		; D2 00
	inc A		; 1A
	rti		; 40

	inc $D20A.w		; EE 0A D2
	brk $1B.b		; 00 1B
	rti		; 40

	inc $02.b,X		; F6 02
	cmp ($00.b)		; D2 00
	trb $FE40.w		; 1C 40 FE
	plx		; FA
	cmp ($00.b)		; D2 00
	ora $D640.w,X		; 1D 40 D6
	jsl $1E00E2.l		; 22 E2 00 1E
	rti		; 40

	ora $F3.b		; 05 F3
	plx		; FA
	brk $1F.b		; 00 1F
	rti		; 40

	sbc ($07.b),Y		; F1 07
	phx		; DA
	brk $20.b		; 00 20
	rti		; 40

	sbc $DAFF.w,Y		; F9 FF DA
	brk $21.b		; 00 21
	rti		; 40

	inc A		; 1A
	cpx $AA04.w		; EC 04 AA
	php		; 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	cmp ($08.b)		; D2 08
	cop $48.b		; 02 48
	inx		; E8
	php		; 08
	cmp ($08.b)		; D2 08
	tsb $48.b		; 04 48
	sep #$0E		; E2 0E
	rep #$08		; C2 08
	asl $48.b		; 06 48
	sbc ($FE.b)		; F2 FE
	rep #$08		; C2 08
	php		; 08
	pha		; 48
	asl $F2.b		; 06 F2
	inc $00.b,X		; F6 00
	asl A		; 0A
	rti		; 40

	inx		; E8
	bpl -70.b		; 10 BA
	brk $0B.b		; 00 0B
	rti		; 40

	beq   8.b		; F0 08
	tsx		; BA
	brk $0C.b		; 00 0C
	rti		; 40

	sed		; F8
	brk $BA.b		; 00 BA
	brk $0D.b		; 00 0D
	rti		; 40

	brk $F8.b		; 00 F8
	tsx		; BA
	brk $0E.b		; 00 0E
	rti		; 40

	brk $F8.b		; 00 F8
	sep #$00		; E2 00
	ora $08F040.l		; 0F 40 F0 08
	nop		; EA
	brk $1A.b		; 00 1A
	rti		; 40

	sed		; F8
	brk $EA.b		; 00 EA
	brk $1B.b		; 00 1B
	rti		; 40

	brk $F8.b		; 00 F8
	nop		; EA
	brk $1C.b		; 00 1C
	rti		; 40

	beq   8.b		; F0 08
	sbc ($00.b)		; F2 00
	ora $0040.w,X		; 1D 40 00
	sed		; F8
	sbc ($00.b)		; F2 00
	asl $F440.w,X		; 1E 40 F4
	tsb $E2.b		; 04 E2
	brk $1F.b		; 00 1F
	rti		; 40

	jsr ($B2FC.w,X)		; FC FC B2
	brk $20.b		; 00 20
	rti		; 40

	cpx #$18.b		; E0 18
	cmp ($00.b)		; D2 00
	and ($40.b,X)		; 21 40
	cpx #$18.b		; E0 18
	phx		; DA
	brk $22.b		; 00 22
	rti		; 40

	cpx #$18.b		; E0 18
	sep #$00		; E2 00
	and $40.b,S		; 23 40
	inx		; E8
	bpl -30.b		; 10 E2
	brk $24.b		; 00 24
	rti		; 40

	php		; 08
	beq -72.b		; F0 B8
	brk $25.b		; 00 25
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	plx		; FA
	brk $26.b		; 00 26
	rti		; 40

	tsb $B7EC.w		; 0C EC B7
	brk $27.b		; 00 27
	rti		; 40

	sbc $FA0B.w		; ED 0B FA
	brk $28.b		; 00 28
	rti		; 40

	asl $EA06.w,X		; 1E 06 EA
	lda ($08.b)		; B2 08
	brk $48.b		; 00 48
	asl $EA.b		; 06 EA
	rep #$08		; C2 08
	cop $48.b		; 02 48
	inc $FA.b,X		; F6 FA
	cpy $0408.w		; CC 08 04
	pha		; 48
	inc $FA.b,X		; F6 FA
	ldy $0608.w,X		; BC 08 06
	pha		; 48
	asl $F2.b		; 06 F2
	cmp ($00.b)		; D2 00
	php		; 08
	rti		; 40

	asl $F2.b		; 06 F2
	phx		; DA
	brk $09.b		; 00 09
	rti		; 40

	cpx $D40C.w		; EC 0C D4
	brk $0A.b		; 00 0A
	rti		; 40

	cpx $DC0C.w		; EC 0C DC
	brk $0B.b		; 00 0B
	rti		; 40

	inc $B4FA.w,X		; FE FA B4
	brk $0C.b		; 00 0C
	rti		; 40

	inc $12.b		; E6 12
	cpy $00.b		; C4 00
	ora $F440.w		; 0D 40 F4
	tsb $EC.b		; 04 EC
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $FA0B.w		; ED 0B FA
	brk $0F.b		; 00 0F
	rti		; 40

	inc $BC0A.w		; EE 0A BC
	brk $18.b		; 00 18
	rti		; 40

	inc $C40A.w		; EE 0A C4
	brk $19.b		; 00 19
	rti		; 40

	inc $CC0A.w		; EE 0A CC
	brk $1A.b		; 00 1A
	rti		; 40

	asl $E2.b,X		; 16 E2
	lda [$00.b],Y		; B7 00
	tas		; 1B
	rti		; 40

	asl $E2.b,X		; 16 E2
	lda $401C00.l,X		; BF 00 1C 40
	cmp $00D319.l,X		; DF 19 D3 00
	ora $0840.w,X		; 1D 40 08
	beq -30.b		; F0 E2
	brk $1E.b		; 00 1E
	rti		; 40

	sed		; F8
	brk $EA.b		; 00 EA
	brk $1F.b		; 00 1F
	rti		; 40

	php		; 08
	beq -22.b		; F0 EA
	brk $20.b		; 00 20
	rti		; 40

	php		; 08
	beq -14.b		; F0 F2
	brk $21.b		; 00 21
	rti		; 40

	php		; 08
	beq  -6.b		; F0 FA
	brk $22.b		; 00 22
	rti		; 40

	bpl -24.b		; 10 E8
	plx		; FA
	brk $23.b		; 00 23
	rti		; 40

	brk $F8.b		; 00 F8
	jmp.w [$2400]		; DC 00 24
	rti		; 40

	sbc $DBFF.w,Y		; F9 FF DB
	brk $25.b		; 00 25
	rti		; 40

	sbc $E3FF.w,Y		; F9 FF E3
	brk $26.b		; 00 26
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc ($00.b,S),Y		; F3 00
	and [$40.b]		; 27 40
	asl A		; 0A
	inc $00AB.w		; EE AB 00
	plp		; 28
	rti		; 40

	sbc $15.b,S		; E3 15
	cpy $2900.w		; CC 00 29
	rti		; 40

	trb $F4.b		; 14 F4
	jsr ($08AA.w,X)		; FC AA 08
	brk $48.b		; 00 48
	tsb $F4.b		; 04 F4
	tax		; AA
	brk $02.b		; 00 02
	rti		; 40

	tsb $F4.b		; 04 F4
	lda ($00.b)		; B2 00
	ora $40.b,S		; 03 40
	cpx $CA04.w		; EC 04 CA
	php		; 08
	ora ($48.b)		; 12 48
	jsr ($CAF4.w,X)		; FC F4 CA
	php		; 08
	trb $48.b		; 14 48
	beq   0.b		; F0 00
	tsx		; BA
	php		; 08
	asl $48.b,X		; 16 48
	brk $F0.b		; 00 F0
	tsx		; BA
	php		; 08
	clc		; 18
	pha		; 48
	cop $EE.b		; 02 EE
	phx		; DA
	php		; 08
	inc A		; 1A
	pha		; 48
	tsb $CAEC.w		; 0C EC CA
	brk $1C.b		; 00 1C
	rti		; 40

	tsb $D2EC.w		; 0C EC D2
	brk $1D.b		; 00 1D
	rti		; 40

	ora $F3.b		; 05 F3
	nop		; EA
	brk $1E.b		; 00 1E
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b)		; F2 00
	ora $F30540.l,X		; 1F 40 05 F3
	plx		; FA
	brk $20.b		; 00 20
	rti		; 40

	inc $DA0A.w		; EE 0A DA
	brk $21.b		; 00 21
	rti		; 40

	sbc $00E209.l		; EF 09 E2 00
	bit $F740.w		; 2C 40 F7
	ora ($E2.b,X)		; 01 E2
	brk $2D.b		; 00 2D
	rti		; 40

	sed		; F8
	brk $DA.b		; 00 DA
	brk $2E.b		; 00 2E
	rti		; 40

	pea $FA04.w		; F4 04 FA
	brk $2F.b		; 00 2F
	rti		; 40

	pea $EA04.w		; F4 04 EA
	brk $30.b		; 00 30
	rti		; 40

	pea $F204.w		; F4 04 F2
	brk $31.b		; 00 31
	rti		; 40

	asl $FCF4.w,X		; 1E F4 FC
	plb		; AB
	php		; 08
	brk $48.b		; 00 48
	sbc [$F9.b],Y		; F7 F9
	wai		; CB
	php		; 08
	cop $48.b		; 02 48
	ora [$E9.b]		; 07 E9
	wai		; CB
	php		; 08
	tsb $48.b		; 04 48
	sed		; F8
	sed		; F8
	stp		; DB
	php		; 08
	asl $48.b		; 06 48
	tsb $C3EC.w		; 0C EC C3
	brk $08.b		; 00 08
	rti		; 40

	pea $EB04.w		; F4 04 EB
	brk $09.b		; 00 09
	rti		; 40

	jsr ($EBFC.w,X)		; FC FC EB
	brk $0A.b		; 00 0A
	rti		; 40

	tsb $F4.b		; 04 F4
	xba		; EB
	brk $0B.b		; 00 0B
	rti		; 40

	pea $F304.w		; F4 04 F3
	brk $0C.b		; 00 0C
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc ($00.b,S),Y		; F3 00
	ora $F440.w		; 0D 40 F4
	tsb $FB.b		; 04 FB
	brk $0E.b		; 00 0E
	rti		; 40

	tsb $F4.b		; 04 F4
	xce		; FB
	brk $0F.b		; 00 0F
	rti		; 40

	cpx $C30C.w		; EC 0C C3
	brk $18.b		; 00 18
	rti		; 40

	tsb $F4.b		; 04 F4
	plb		; AB
	brk $19.b		; 00 19
	rti		; 40

	tsb $F4.b		; 04 F4
	lda ($00.b,S),Y		; B3 00
	inc A		; 1A
	rti		; 40

	sbc [$11.b]		; E7 11
	wai		; CB
	brk $1B.b		; 00 1B
	rti		; 40

	sbc $00CB09.l		; EF 09 CB 00
	trb $E740.w		; 1C 40 E7
	ora ($D3.b),Y		; 11 D3
	brk $1D.b		; 00 1D
	rti		; 40

	sbc [$11.b]		; E7 11
	stp		; DB
	brk $1E.b		; 00 1E
	rti		; 40

	ora $00DBE9.l		; 0F E9 DB 00
	ora $E90F40.l,X		; 1F 40 0F E9
	sbc $00.b,S		; E3 00
	jsr $0F40.w		; 20 40 0F
	sbc #$EB.b		; E9 EB
	brk $21.b		; 00 21
	rti		; 40

	pea $C304.w		; F4 04 C3
	brk $22.b		; 00 22
	rti		; 40

	jsr ($C3FC.w,X)		; FC FC C3
	brk $23.b		; 00 23
	rti		; 40

	beq   8.b		; F0 08
	tyx		; BB
	brk $24.b		; 00 24
	rti		; 40

	sed		; F8
	brk $BB.b		; 00 BB
	brk $25.b		; 00 25
	rti		; 40

	brk $F8.b		; 00 F8
	tyx		; BB
	brk $26.b		; 00 26
	rti		; 40

	php		; 08
	beq -69.b		; F0 BB
	brk $27.b		; 00 27
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp $00.b,S		; C3 00
	plp		; 28
	rti		; 40

	nop		; EA
	asl $00E3.w		; 0E E3 00
	and #$40.b		; 29 40
	ora $04.b,X		; 15 04
	cpx $08B2.w		; EC B2 08
	brk $48.b		; 00 48
	pea $B2FC.w		; F4 FC B2
	php		; 08
	cop $48.b		; 02 48
	cpx $C204.w		; EC 04 C2
	php		; 08
	tsb $48.b		; 04 48
	jsr ($C2F4.w,X)		; FC F4 C2
	php		; 08
	asl $48.b		; 06 48
	jsr ($D2F4.w,X)		; FC F4 D2
	php		; 08
	php		; 08
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	ldx #$08.b		; A2 08
	asl A		; 0A
	pha		; 48
	cpx $D20C.w		; EC 0C D2
	brk $0C.b		; 00 0C
	rti		; 40

	cpx $DA0C.w		; EC 0C DA
	brk $0D.b		; 00 0D
	rti		; 40

	pea $9204.w		; F4 04 92
	brk $0E.b		; 00 0E
	rti		; 40

	cpx $BA0C.w		; EC 0C BA
	brk $0F.b		; 00 0F
	rti		; 40

	tsb $C2EC.w		; 0C EC C2
	brk $1C.b		; 00 1C
	rti		; 40

	tsb $CAEC.w		; 0C EC CA
	brk $1D.b		; 00 1D
	rti		; 40

	tsb $D2EC.w		; 0C EC D2
	brk $1E.b		; 00 1E
	rti		; 40

	tsb $DAEC.w		; 0C EC DA
	brk $1F.b		; 00 1F
	rti		; 40

	pea $9A04.w		; F4 04 9A
	brk $20.b		; 00 20
	rti		; 40

	ora [$F1.b]		; 07 F1
	ldx #$00.b		; A2 00
	and ($40.b,X)		; 21 40
	ora [$F1.b]		; 07 F1
	tax		; AA
	brk $22.b		; 00 22
	rti		; 40

	cop $F6.b		; 02 F6
	sep #$00		; E2 00
	and $40.b,S		; 23 40
	cop $F6.b		; 02 F6
	nop		; EA
	brk $24.b		; 00 24
	rti		; 40

	cop $F6.b		; 02 F6
	sbc ($00.b)		; F2 00
	and $40.b		; 25 40
	cop $F6.b		; 02 F6
	plx		; FA
	brk $26.b		; 00 26
	rti		; 40

	trb $F6.b		; 14 F6
	plx		; FA
	tax		; AA
	php		; 08
	brk $48.b		; 00 48
	asl $F2.b		; 06 F2
	tax		; AA
	brk $02.b		; 00 02
	rti		; 40

	asl $F2.b		; 06 F2
	lda ($00.b)		; B2 00
	ora $40.b,S		; 03 40
	cpx $CA04.w		; EC 04 CA
	php		; 08
	ora ($48.b)		; 12 48
	jsr ($CAF4.w,X)		; FC F4 CA
	php		; 08
	trb $48.b		; 14 48
	beq   0.b		; F0 00
	tsx		; BA
	php		; 08
	asl $48.b,X		; 16 48
	brk $F0.b		; 00 F0
	tsx		; BA
	php		; 08
	clc		; 18
	pha		; 48
	cop $EE.b		; 02 EE
	phx		; DA
	php		; 08
	inc A		; 1A
	pha		; 48
	tsb $CAEC.w		; 0C EC CA
	brk $1C.b		; 00 1C
	rti		; 40

	tsb $D2EC.w		; 0C EC D2
	brk $1D.b		; 00 1D
	rti		; 40

	ora $F3.b		; 05 F3
	nop		; EA
	brk $1E.b		; 00 1E
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b)		; F2 00
	ora $F30540.l,X		; 1F 40 05 F3
	plx		; FA
	brk $20.b		; 00 20
	rti		; 40

	inc $DA0A.w		; EE 0A DA
	brk $21.b		; 00 21
	rti		; 40

	sbc $00E209.l		; EF 09 E2 00
	bit $F740.w		; 2C 40 F7
	ora ($E2.b,X)		; 01 E2
	brk $2D.b		; 00 2D
	rti		; 40

	sed		; F8
	brk $DA.b		; 00 DA
	brk $2E.b		; 00 2E
	rti		; 40

	pea $FA04.w		; F4 04 FA
	brk $2F.b		; 00 2F
	rti		; 40

	pea $EA04.w		; F4 04 EA
	brk $30.b		; 00 30
	rti		; 40

	pea $F204.w		; F4 04 F2
	brk $31.b		; 00 31
	rti		; 40

	asl $F7F9.w,X		; 1E F9 F7
	phx		; DA
	php		; 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	rep #$08		; C2 08
	cop $48.b		; 02 48
	jsr ($EAFC.w,X)		; FC FC EA
	brk $04.b		; 00 04
	rti		; 40

	tsb $F4.b		; 04 F4
	nop		; EA
	brk $05.b		; 00 05
	rti		; 40

	pea $F204.w		; F4 04 F2
	brk $06.b		; 00 06
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc ($00.b)		; F2 00
	ora [$40.b]		; 07 40
	pea $FA04.w		; F4 04 FA
	brk $08.b		; 00 08
	rti		; 40

	tsb $F4.b		; 04 F4
	plx		; FA
	brk $09.b		; 00 09
	rti		; 40

	sbc $03.b,X		; F5 03
	tsx		; BA
	brk $0A.b		; 00 0A
	rti		; 40

	sbc $BAFB.w,X		; FD FB BA
	brk $0B.b		; 00 0B
	rti		; 40

	ora $F3.b		; 05 F3
	tsx		; BA
	brk $0C.b		; 00 0C
	rti		; 40

	asl $D2EA.w		; 0E EA D2
	brk $0D.b		; 00 0D
	rti		; 40

	asl $DAEA.w		; 0E EA DA
	brk $0E.b		; 00 0E
	rti		; 40

	asl $E2EA.w		; 0E EA E2
	brk $0F.b		; 00 0F
	rti		; 40

	asl $EAEA.w		; 0E EA EA
	brk $14.b		; 00 14
	rti		; 40

	sed		; F8
	brk $B2.b		; 00 B2
	brk $15.b		; 00 15
	rti		; 40

	brk $F8.b		; 00 F8
	lda ($00.b)		; B2 00
	asl $40.b,X		; 16 40
	ora #$EF.b		; 09 EF
	rep #$00		; C2 00
	ora [$40.b],Y		; 17 40
	sbc #$0F.b		; E9 0F
	dex		; CA
	brk $18.b		; 00 18
	rti		; 40

	tsb $CAEC.w		; 0C EC CA
	brk $19.b		; 00 19
	rti		; 40

	pea $EA04.w		; F4 04 EA
	brk $1A.b		; 00 1A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	rep #$00		; C2 00
	tas		; 1B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	dex		; CA
	brk $1C.b		; 00 1C
	rti		; 40

	xba		; EB
	ora $40D2.w		; 0D D2 40
	ora $F300.w		; 0D 00 F3
	ora $D2.b		; 05 D2
	brk $1D.b		; 00 1D
	rti		; 40

	xce		; FB
	sbc $00D2.w,X		; FD D2 00
	asl $0340.w,X		; 1E 40 03
	sbc $D2.b,X		; F5 D2
	brk $1F.b		; 00 1F
	rti		; 40

	xba		; EB
	ora $40DA.w		; 0D DA 40
	asl $EB00.w		; 0E 00 EB
	ora $40E2.w		; 0D E2 40
	ora $0DEB00.l		; 0F 00 EB 0D
	nop		; EA
	rti		; 40

	trb $00.b		; 14 00
	clc		; 18
	pea $CCFC.w		; F4 FC CC
	php		; 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	ldy $0208.w,X		; BC 08 02
	pha		; 48
	asl $EA.b		; 06 EA
	ldy $0408.w,X		; BC 08 04
	pha		; 48
	jmp.w [$D21C]		; DC 1C D2
	brk $06.b		; 00 06
	rti		; 40

	tsb $F4.b		; 04 F4
	cpy $0700.w		; CC 00 07
	rti		; 40

	tsb $F4.b		; 04 F4
	pei ($00.b)		; D4 00
	php		; 08
	rti		; 40

	sbc $FA0B.w		; ED 0B FA
	brk $09.b		; 00 09
	rti		; 40

	inc $12.b		; E6 12
	rep #$00		; C2 00
	asl A		; 0A
	rti		; 40

	jmp.w [$DA1C]		; DC 1C DA
	brk $0B.b		; 00 0B
	rti		; 40

	tsb $F4.b		; 04 F4
	plx		; FA
	brk $0C.b		; 00 0C
	rti		; 40

	inc $BF0A.w		; EE 0A BF
	brk $0D.b		; 00 0D
	rti		; 40

	inc $C70A.w		; EE 0A C7
	brk $0E.b		; 00 0E
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc ($00.b)		; F2 00
	ora $FFF940.l		; 0F 40 F9 FF
	jmp.w [$1600]		; DC 00 16
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	jmp.w [$1700]		; DC 00 17
	rti		; 40

	sbc $E4FF.w,Y		; F9 FF E4
	brk $18.b		; 00 18
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	pea $1900.w		; F4 00 19
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	dex		; CA
	brk $1A.b		; 00 1A
	rti		; 40

	ora $F5.b,S		; 03 F5
	cpx $00.b		; E4 00
	tas		; 1B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cpx $1C00.w		; EC 00 1C
	rti		; 40

	xce		; FB
	sbc $00EC.w,X		; FD EC 00
	ora $0340.w,X		; 1D 40 03
	sbc $EC.b,X		; F5 EC
	brk $1E.b		; 00 1E
	rti		; 40

	xba		; EB
	ora $00CF.w		; 0D CF 00
	ora $0DEB40.l,X		; 1F 40 EB 0D
	cmp [$00.b],Y		; D7 00
	jsr $1D40.w		; 20 40 1D
	pea $DAFC.w		; F4 FC DA
	php		; 08
	brk $48.b		; 00 48
	ora ($EF.b,X)		; 01 EF
	tax		; AA
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $BA.b,X		; F6 BA
	php		; 08
	tsb $48.b		; 04 48
	pea $EA04.w		; F4 04 EA
	brk $06.b		; 00 06
	rti		; 40

	jsr ($EAFC.w,X)		; FC FC EA
	brk $07.b		; 00 07
	rti		; 40

	tsb $F4.b		; 04 F4
	nop		; EA
	brk $08.b		; 00 08
	rti		; 40

	sbc $03.b,X		; F5 03
	cmp ($00.b)		; D2 00
	ora #$40.b		; 09 40
	sbc $D2FB.w,X		; FD FB D2
	brk $0A.b		; 00 0A
	rti		; 40

	ora $F3.b		; 05 F3
	cmp ($00.b)		; D2 00
	phd		; 0B
	rti		; 40

	sbc $D30B.w		; ED 0B D3
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $00F2F9.l,X		; FF F9 F2 00
	ora $EF40.w		; 0D 40 EF
	ora #$FA.b		; 09 FA
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $00FAF9.l,X		; FF F9 FA 00
	ora $F10740.l		; 0F 40 07 F1
	plx		; FA
	brk $16.b		; 00 16
	rti		; 40

	sbc $00CB09.l		; EF 09 CB 00
	ora [$40.b],Y		; 17 40
	sed		; F8
	brk $CA.b		; 00 CA
	brk $18.b		; 00 18
	rti		; 40

	brk $F8.b		; 00 F8
	dex		; CA
	brk $19.b		; 00 19
	rti		; 40

	php		; 08
	beq -54.b		; F0 CA
	brk $1A.b		; 00 1A
	rti		; 40

	bpl -24.b		; 10 E8
	dex		; CA
	brk $1B.b		; 00 1B
	rti		; 40

	inx		; E8
	bpl -37.b		; 10 DB
	brk $1C.b		; 00 1C
	rti		; 40

	inx		; E8
	bpl -29.b		; 10 E3
	brk $1D.b		; 00 1D
	rti		; 40

	tsb $F4.b		; 04 F4
	phx		; DA
	brk $1E.b		; 00 1E
	rti		; 40

	sbc $B3FF.w,Y		; F9 FF B3
	brk $1F.b		; 00 1F
	rti		; 40

	tsb $F4.b		; 04 F4
	sep #$00		; E2 00
	jsr $0A40.w		; 20 40 0A
	inc $00BA.w		; EE BA 00
	and ($40.b,X)		; 21 40
	asl A		; 0A
	inc $00C2.w		; EE C2 00
	jsl $06F240.l		; 22 40 F2 06
	tyx		; BB
	brk $23.b		; 00 23
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp $00.b,S		; C3 00
	bit $40.b		; 24 40
	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b)		; F2 00
	and $40.b		; 25 40
	ora ($F7.b)		; 12 F7
	sbc $08AA.w,Y		; F9 AA 08
	brk $48.b		; 00 48
	sbc [$F9.b],Y		; F7 F9
	tsx		; BA
	php		; 08
	cop $48.b		; 02 48
	sbc $00C209.l		; EF 09 C2 00
	tsb $40.b		; 04 40
	ora [$F1.b]		; 07 F1
	tsx		; BA
	brk $05.b		; 00 05
	rti		; 40

	ora [$F1.b]		; 07 F1
	rep #$00		; C2 00
	asl $40.b		; 06 40
	sbc ($FF.b),Y		; F1 FF
	dex		; CA
	php		; 08
	trb $48.b		; 14 48
	ora ($EF.b,X)		; 01 EF
	dex		; CA
	php		; 08
	asl $48.b,X		; 16 48
	sbc ($FD.b,S),Y		; F3 FD
	phx		; DA
	php		; 08
	clc		; 18
	pha		; 48
	pea $F204.w		; F4 04 F2
	brk $1A.b		; 00 1A
	rti		; 40

	inc $F2FA.w,X		; FE FA F2
	brk $1B.b		; 00 1B
	rti		; 40

	sbc ($06.b)		; F2 06
	plx		; FA
	brk $1C.b		; 00 1C
	rti		; 40

	phd		; 0B
	sbc $00DA.w		; ED DA 00
	ora $FE40.w,X		; 1D 40 FE
	plx		; FA
	plx		; FA
	brk $1E.b		; 00 1E
	rti		; 40

	ora $F5.b,S		; 03 F5
	phx		; DA
	brk $1F.b		; 00 1F
	rti		; 40

	ora $F5.b,S		; 03 F5
	sep #$00		; E2 00
	jsr $F340.w		; 20 40 F3
	ora $EA.b		; 05 EA
	brk $21.b		; 00 21
	rti		; 40

	xce		; FB
	sbc $00EA.w,X		; FD EA 00
	jsl $F50340.l		; 22 40 03 F5
	nop		; EA
	brk $23.b		; 00 23
	rti		; 40

	clc		; 18
	tsb $EC.b		; 04 EC
	sep #$08		; E2 08
	brk $48.b		; 00 48
	pea $EAFC.w		; F4 FC EA
	php		; 08
	cop $48.b		; 02 48
	tsb $B2E4.w		; 0C E4 B2
	php		; 08
	tsb $48.b		; 04 48
	jsr ($B2F4.w,X)		; FC F4 B2
	php		; 08
	asl $48.b		; 06 48
	pea $C2FC.w		; F4 FC C2
	php		; 08
	php		; 08
	pha		; 48
	tsb $EC.b		; 04 EC
	rep #$08		; C2 08
	asl A		; 0A
	pha		; 48
	cop $EE.b		; 02 EE
	cmp ($08.b)		; D2 08
	tsb $F448.w		; 0C 48 F4
	tsb $BA.b		; 04 BA
	brk $0E.b		; 00 0E
	rti		; 40

	trb $E4.b		; 14 E4
	rep #$00		; C2 00
	ora $FCFC40.l		; 0F 40 FC FC
	sep #$00		; E2 00
	asl $EC40.w,X		; 1E 40 EC
	tsb $00BE.w		; 0C BE 00
	ora $DC1C40.l,X		; 1F 40 1C DC
	ldx $2000.w,Y		; BE 00 20
	rti		; 40

	bit $D4.b		; 24 D4
	ldx $2100.w,Y		; BE 00 21
	rti		; 40

	bit $BECC.w		; 2C CC BE
	brk $22.b		; 00 22
	rti		; 40

	inc $CE0A.w		; EE 0A CE
	brk $23.b		; 00 23
	rti		; 40

	inc $D60A.w		; EE 0A D6
	brk $24.b		; 00 24
	rti		; 40

	sbc [$11.b]		; E7 11
	rep #$00		; C2 00
	and $40.b		; 25 40
	sbc [$11.b]		; E7 11
	dex		; CA
	brk $26.b		; 00 26
	rti		; 40

	php		; 08
	beq -14.b		; F0 F2
	brk $27.b		; 00 27
	rti		; 40

	php		; 08
	beq  -6.b		; F0 FA
	brk $28.b		; 00 28
	rti		; 40

	bpl -24.b		; 10 E8
	plx		; FA
	brk $29.b		; 00 29
	rti		; 40

	beq   8.b		; F0 08
	inc $00.b,X		; F6 00
	rol A		; 2A
	rti		; 40

	plx		; FA
	inc $00D2.w,X		; FE D2 00
	pld		; 2B
	rti		; 40

	cpx $FA0C.w		; EC 0C FA
	brk $2C.b		; 00 2C
	rti		; 40

	ora ($F7.b)		; 12 F7
	sbc $08CC.w,Y		; F9 CC 08
	brk $48.b		; 00 48
	sbc $08EC01.l		; EF 01 EC 08
	cop $48.b		; 02 48
	sbc $08ECF1.l,X		; FF F1 EC 08
	tsb $48.b		; 04 48
	sbc [$F9.b],Y		; F7 F9
	jmp.w [$0608]		; DC 08 06
	pha		; 48
	sbc $03.b,X		; F5 03
	jsr ($0800.w,X)		; FC 00 08
	rti		; 40

	sbc $FCFB.w,X		; FD FB FC
	brk $09.b		; 00 09
	rti		; 40

	ora $F3.b		; 05 F3
	jsr ($0A00.w,X)		; FC 00 0A
	rti		; 40

	ora $FCEB.w		; 0D EB FC
	brk $0B.b		; 00 0B
	rti		; 40

	ora [$F1.b]		; 07 F1
	cpy $0C00.w		; CC 00 0C
	rti		; 40

	ora [$F1.b]		; 07 F1
	pei ($00.b)		; D4 00
	ora $0740.w		; 0D 40 07
	sbc ($DC.b),Y		; F1 DC
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $00E409.l		; EF 09 E4 00
	ora $F10740.l		; 0F 40 07 F1
	cpx $00.b		; E4 00
	clc		; 18
	rti		; 40

	ora $00DDE9.l		; 0F E9 DD 00
	ora $0F40.w,Y		; 19 40 0F
	sbc #$E5.b		; E9 E5
	brk $1A.b		; 00 1A
	rti		; 40

	ora $00EDE9.l		; 0F E9 ED 00
	tas		; 1B
	rti		; 40

	ora $00F5E9.l		; 0F E9 F5 00
	trb $0A40.w		; 1C 40 0A
	inc $0001.w		; EE 01 00
	ora $1A40.w,X		; 1D 40 1A
	sbc [$F9.b],Y		; F7 F9
	sbc ($88.b,X)		; E1 88
	brk $C8.b		; 00 C8
	sbc [$F9.b],Y		; F7 F9
	cmp ($88.b),Y		; D1 88
	cop $C8.b		; 02 C8
	sbc [$09.b]		; E7 09
	cmp ($88.b),Y		; D1 88
	tsb $C8.b		; 04 C8
	sbc ($FD.b,S),Y		; F3 FD
	lda $0688.w,Y		; B9 88 06
	iny		; C8
	sbc [$11.b]		; E7 11
	cmp ($80.b,X)		; C1 80
	php		; 08
	cpy #$EF.b		; C0 EF
	ora #$A9.b		; 09 A9
	bra   9.b		; 80 09
	cpy #$05.b		; C0 05
	sbc ($B1.b,S),Y		; F3 B1
	bra  10.b		; 80 0A
	cpy #$05.b		; C0 05
	sbc ($A9.b,S),Y		; F3 A9
	bra  11.b		; 80 0B
	cpy #$0D.b		; C0 0D
	xba		; EB
	lda #$80.b		; A9 80
	tsb $EFC0.w		; 0C C0 EF
	ora #$E9.b		; 09 E9
	bra  13.b		; 80 0D
	cpy #$E7.b		; C0 E7
	ora ($E1.b),Y		; 11 E1
	bra  14.b		; 80 0E
	cpy #$EF.b		; C0 EF
	ora #$E1.b		; 09 E1
	bra  15.b		; 80 0F
	cpy #$07.b		; C0 07
	sbc ($E6.b),Y		; F1 E6
	bra  24.b		; 80 18
	cpy #$07.b		; C0 07
	sbc ($DE.b),Y		; F1 DE
	bra  25.b		; 80 19
	cpy #$F2.b		; C0 F2
	asl $F1.b		; 06 F1
	bra  26.b		; 80 1A
	cpy #$FA.b		; C0 FA
	inc $80F1.w,X		; FE F1 80
	tas		; 1B
	cpy #$F2.b		; C0 F2
	asl $C9.b		; 06 C9
	bra  28.b		; 80 1C
	cpy #$FA.b		; C0 FA
	inc $80C9.w,X		; FE C9 80
	ora $02C0.w,X		; 1D C0 02
	inc $C9.b,X		; F6 C9
	bra  30.b		; 80 1E
	cpy #$F2.b		; C0 F2
	asl $B1.b		; 06 B1
	bra  31.b		; 80 1F
	cpy #$EB.b		; C0 EB
	ora $80B9.w		; 0D B9 80
	jsr $E7C0.w		; 20 C0 E7
	ora ($C9.b),Y		; 11 C9
	bra  33.b		; 80 21
	cpy #$03.b		; C0 03
	sbc $C1.b,X		; F5 C1
	bra  34.b		; 80 22
	cpy #$03.b		; C0 03
	sbc $B9.b,X		; F5 B9
	bra  35.b		; 80 23
	cpy #$F3.b		; C0 F3
	ora $F8.b		; 05 F8
	bra  36.b		; 80 24
	cpy #$FB.b		; C0 FB
	sbc $80F8.w,X		; FD F8 80
	and $C0.b		; 25 C0
	ora ($F6.b,S),Y		; 13 F6
	plx		; FA
	pei ($88.b)		; D4 88
	brk $C8.b		; 00 C8
	inc $0A.b		; E6 0A
	pei ($88.b)		; D4 88
	cop $C8.b		; 02 C8
	inc $0A.b		; E6 0A
	cpx $88.b		; E4 88
	tsb $C8.b		; 04 C8
	sbc ($FE.b)		; F2 FE
	pea $0688.w		; F4 88 06
	iny		; C8
	sbc ($FE.b)		; F2 FE
	cpy $88.b		; C4 88
	php		; 08
	iny		; C8
	sbc $ACFB.w,X		; FD FB AC
	bra  10.b		; 80 0A
	cpy #$05.b		; C0 05
	sbc ($AC.b,S),Y		; F3 AC
	bra  11.b		; 80 0B
	cpy #$E6.b		; C0 E6
	ora ($CC.b)		; 12 CC
	bra  12.b		; 80 0C
	cpy #$F6.b		; C0 F6
	cop $EC.b		; 02 EC
	bra  13.b		; 80 0D
	cpy #$F6.b		; C0 F6
	cop $E4.b		; 02 E4
	bra  14.b		; 80 0E
	cpy #$F0.b		; C0 F0
	php		; 08
	ldy $80.b,X		; B4 80
	ora $18E0C0.l		; 0F C0 E0 18
	stp		; DB
	bra  26.b		; 80 1A
	cpy #$EA.b		; C0 EA
	asl $80F4.w		; 0E F4 80
	tas		; 1B
	cpy #$EA.b		; C0 EA
	asl $80BC.w		; 0E BC 80
	trb $FAC0.w		; 1C C0 FA
	inc $80B4.w,X		; FE B4 80
	ora $E6C0.w,X		; 1D C0 E6
	ora ($C4.b)		; 12 C4
	bra  30.b		; 80 1E
	cpy #$EE.b		; C0 EE
	asl A		; 0A
	ldy $1F80.w		; AC 80 1F
	cpy #$F2.b		; C0 F2
	asl $BC.b		; 06 BC
	bra  32.b		; 80 20
	cpy #$FA.b		; C0 FA
	inc $80BC.w,X		; FE BC 80
	and ($C0.b,X)		; 21 C0
	ora [$EE.b],Y		; 17 EE
	cop $DF.b		; 02 DF
	dey		; 88
	brk $C8.b		; 00 C8
	sbc ($FD.b,S),Y		; F3 FD
	sbc $C80288.l		; EF 88 02 C8
	sbc ($FD.b,S),Y		; F3 FD
	cmp $C80488.l		; CF 88 04 C8
	sbc $BAFB.w,X		; FD FB BA
	bra   6.b		; 80 06
	cpy #$06.b		; C0 06
	sbc ($DF.b)		; F2 DF
	bra   7.b		; 80 07
	cpy #$06.b		; C0 06
	sbc ($D7.b)		; F2 D7
	bra   8.b		; 80 08
	cpy #$EC.b		; C0 EC
	tsb $80B7.w		; 0C B7 80
	ora #$C0.b		; 09 C0
	inc $E7FA.w,X		; FE FA E7
	bra  10.b		; 80 0A
	cpy #$FE.b		; C0 FE
	plx		; FA
	cmp $C00B80.l,X		; DF 80 0B C0
	sbc $80BF09.l		; EF 09 BF 80
	tsb $FFC0.w		; 0C C0 FF
	sbc $80B7.w,Y		; F9 B7 80
	ora $07C0.w		; 0D C0 07
	sbc ($B7.b),Y		; F1 B7
	bra  14.b		; 80 0E
	cpy #$F2.b		; C0 F2
	asl $C7.b		; 06 C7
	bra  15.b		; 80 0F
	cpy #$FB.b		; C0 FB
	sbc $80FF.w,X		; FD FF 80
	asl $C0.b,X		; 16 C0
	xba		; EB
	ora $80EF.w		; 0D EF 80
	ora [$C0.b],Y		; 17 C0
	xba		; EB
	ora $80D7.w		; 0D D7 80
	clc		; 18
	cpy #$FD.b		; C0 FD
	xce		; FB
	dex		; CA
	bra  25.b		; 80 19
	cpy #$FD.b		; C0 FD
	xce		; FB
	rep #$80		; C2 80
	inc A		; 1A
	cpy #$03.b		; C0 03
	sbc $FE.b,X		; F5 FE
	bra  27.b		; 80 1B
	cpy #$03.b		; C0 03
	sbc $F6.b,X		; F5 F6
	bra  28.b		; 80 1C
	cpy #$03.b		; C0 03
	sbc $EE.b,X		; F5 EE
	bra  29.b		; 80 1D
	cpy #$0B.b		; C0 0B
	sbc $80F8.w		; ED F8 80
	asl $0BC0.w,X		; 1E C0 0B
	sbc $80F0.w		; ED F0 80
	ora $E713C0.l,X		; 1F C0 13 E7
	ora #$E9.b		; 09 E9
	dey		; 88
	brk $C8.b		; 00 C8
	sbc [$09.b]		; E7 09
	cmp $0288.w,Y		; D9 88 02
	iny		; C8
	cmp [$19.b],Y		; D7 19
	cmp $0488.w,Y		; D9 88 04
	iny		; C8
	sbc [$F9.b],Y		; F7 F9
	sbc ($88.b)		; F2 88
	asl $C8.b		; 06 C8
	sbc [$F9.b],Y		; F7 F9
	sep #$88		; E2 88
	php		; 08
	iny		; C8
	ora ($DD.b,S),Y		; 13 DD
	cmp $0A88.w,X		; DD 88 0A
	iny		; C8
	cpx $14.b		; E4 14
	sbc $0C80.w,Y		; F9 80 0C
	cpy #$EC.b		; C0 EC
	tsb $80F9.w		; 0C F9 80
	ora $07C0.w		; 0D C0 07
	sbc ($F9.b),Y		; F1 F9
	bra  14.b		; 80 0E
	cpy #$DF.b		; C0 DF
	ora $80F1.w,Y		; 19 F1 80
	ora $21D7C0.l		; 0F C0 D7 21
	sbc #$80.b		; E9 80
	trb $DFC0.w		; 1C C0 DF
	ora $80E9.w,Y		; 19 E9 80
	ora $0FC0.w,X		; 1D C0 0F
	sbc #$EC.b		; E9 EC
	bra  30.b		; 80 1E
	cpy #$0F.b		; C0 0F
	sbc #$E4.b		; E9 E4
	bra  31.b		; 80 1F
	cpy #$07.b		; C0 07
	sbc ($F1.b),Y		; F1 F1
	bra  32.b		; 80 20
	cpy #$07.b		; C0 07
	sbc ($E9.b),Y		; F1 E9
	bra  33.b		; 80 21
	cpy #$F7.b		; C0 F7
	ora ($DA.b,X)		; 01 DA
	bra  34.b		; 80 22
	cpy #$FF.b		; C0 FF
	sbc $80DA.w,Y		; F9 DA 80
	and $C0.b,S		; 23 C0
	ora [$F1.b]		; 07 F1
	sbc ($80.b,X)		; E1 80
	bit $C0.b		; 24 C0
	inc A		; 1A
	sbc $BAF7.w,Y		; F9 F7 BA
	pha		; 48
	brk $08.b		; 00 08
	sbc $CAF7.w,Y		; F9 F7 CA
	pha		; 48
	cop $08.b		; 02 08
	ora #$E7.b		; 09 E7
	dex		; CA
	pha		; 48
	tsb $08.b		; 04 08
	sbc $E2F3.w,X		; FD F3 E2
	pha		; 48
	asl $08.b		; 06 08
	ora ($E7.b),Y		; 11 E7
	sep #$40		; E2 40
	php		; 08
	brk $09.b		; 00 09
	sbc $0940FA.l		; EF FA 40 09
	brk $F3.b		; 00 F3
	ora $F2.b		; 05 F2
	rti		; 40

	asl A		; 0A
	brk $F3.b		; 00 F3
	ora $FA.b		; 05 FA
	rti		; 40

	phd		; 0B
	brk $EB.b		; 00 EB
	ora $40FA.w		; 0D FA 40
	tsb $0900.w		; 0C 00 09
	sbc $0D40BA.l		; EF BA 40 0D
	brk $11.b		; 00 11
	sbc [$C2.b]		; E7 C2
	rti		; 40

	asl $0900.w		; 0E 00 09
	sbc $0F40C2.l		; EF C2 40 0F
	brk $F1.b		; 00 F1
	ora [$BD.b]		; 07 BD
	rti		; 40

	clc		; 18
	brk $F1.b		; 00 F1
	ora [$C5.b]		; 07 C5
	rti		; 40

	ora $0600.w,Y		; 19 00 06
	sbc ($B2.b)		; F2 B2
	rti		; 40

	inc A		; 1A
	brk $FE.b		; 00 FE
	plx		; FA
	lda ($40.b)		; B2 40
	tas		; 1B
	brk $06.b		; 00 06
	sbc ($DA.b)		; F2 DA
	rti		; 40

	trb $FE00.w		; 1C 00 FE
	plx		; FA
	phx		; DA
	rti		; 40

	ora $F600.w,X		; 1D 00 F6
	cop $DA.b		; 02 DA
	rti		; 40

	asl $0600.w,X		; 1E 00 06
	sbc ($F2.b)		; F2 F2
	rti		; 40

	ora $EB0D00.l,X		; 1F 00 0D EB
	nop		; EA
	rti		; 40

	jsr $1100.w		; 20 00 11
	sbc [$DA.b]		; E7 DA
	rti		; 40

	and ($00.b,X)		; 21 00
	sbc $03.b,X		; F5 03
	sep #$40		; E2 40
	jsl $03F500.l		; 22 00 F5 03
	nop		; EA
	rti		; 40

	and $00.b,S		; 23 00
	ora $F3.b		; 05 F3
	plb		; AB
	rti		; 40

	bit $00.b		; 24 00
	sbc $ABFB.w,X		; FD FB AB
	rti		; 40

	and $00.b		; 25 00
	ora ($FA.b,S),Y		; 13 FA
	inc $CA.b,X		; F6 CA
	pha		; 48
	brk $08.b		; 00 08
	asl A		; 0A
	inc $CA.b		; E6 CA
	pha		; 48
	cop $08.b		; 02 08
	asl A		; 0A
	inc $BA.b		; E6 BA
	pha		; 48
	tsb $08.b		; 04 08
	inc $AAF2.w,X		; FE F2 AA
	pha		; 48
	asl $08.b		; 06 08
	inc $DAF2.w,X		; FE F2 DA
	pha		; 48
	php		; 08
	php		; 08
	xce		; FB
	sbc $40FA.w,X		; FD FA 40
	asl A		; 0A
	brk $F3.b		; 00 F3
	ora $FA.b		; 05 FA
	rti		; 40

	phd		; 0B
	brk $12.b		; 00 12
	inc $DA.b		; E6 DA
	rti		; 40

	tsb $0200.w		; 0C 00 02
	inc $BA.b,X		; F6 BA
	rti		; 40

	ora $0200.w		; 0D 00 02
	inc $C2.b,X		; F6 C2
	rti		; 40

	asl $0800.w		; 0E 00 08
	beq -14.b		; F0 F2
	rti		; 40

	ora $E01800.l		; 0F 00 18 E0
	wai		; CB
	rti		; 40

	inc A		; 1A
	brk $0E.b		; 00 0E
	nop		; EA
	lda ($40.b)		; B2 40
	tas		; 1B
	brk $0E.b		; 00 0E
	nop		; EA
	nop		; EA
	rti		; 40

	trb $FE00.w		; 1C 00 FE
	plx		; FA
	sbc ($40.b)		; F2 40
	ora $1200.w,X		; 1D 00 12
	inc $E2.b		; E6 E2
	rti		; 40

	asl $0A00.w,X		; 1E 00 0A
	inc $40FA.w		; EE FA 40
	ora $F20600.l,X		; 1F 00 06 F2
	nop		; EA
	rti		; 40

	jsr $FE00.w		; 20 00 FE
	plx		; FA
	nop		; EA
	rti		; 40

	and ($00.b,X)		; 21 00
	ora [$02.b],Y		; 17 02
	inc $48CA.w		; EE CA 48
	brk $08.b		; 00 08
	sbc $BAF3.w,X		; FD F3 BA
	pha		; 48
	cop $08.b		; 02 08
	sbc $DAF3.w,X		; FD F3 DA
	pha		; 48
	tsb $08.b		; 04 08
	xce		; FB
	sbc $40F7.w,X		; FD F7 40
	asl $00.b		; 06 00
	sbc ($06.b)		; F2 06
	cmp ($40.b)		; D2 40
	ora [$00.b]		; 07 00
	sbc ($06.b)		; F2 06
	phx		; DA
	rti		; 40

	php		; 08
	brk $0C.b		; 00 0C
	cpx $40FA.w		; EC FA 40
	ora #$00.b		; 09 00
	plx		; FA
	inc $40CA.w,X		; FE CA 40
	asl A		; 0A
	brk $FA.b		; 00 FA
	inc $40D2.w,X		; FE D2 40
	phd		; 0B
	brk $09.b		; 00 09
	sbc $0C40F2.l		; EF F2 40 0C
	brk $F9.b		; 00 F9
	sbc $0D40FA.l,X		; FF FA 40 0D
	brk $F1.b		; 00 F1
	ora [$FA.b]		; 07 FA
	rti		; 40

	asl $0600.w		; 0E 00 06
	sbc ($EA.b)		; F2 EA
	rti		; 40

	ora $FBFD00.l		; 0F 00 FD FB
	lda ($40.b)		; B2 40
	asl $00.b,X		; 16 00
	ora $C2EB.w		; 0D EB C2
	rti		; 40

	ora [$00.b],Y		; 17 00
	ora $DAEB.w		; 0D EB DA
	rti		; 40

	clc		; 18
	brk $FB.b		; 00 FB
	sbc $40E7.w,X		; FD E7 40
	ora $FB00.w,Y		; 19 00 FB
	sbc $40EF.w,X		; FD EF 40
	inc A		; 1A
	brk $F5.b		; 00 F5
	ora $B3.b,S		; 03 B3
	rti		; 40

	tas		; 1B
	brk $F5.b		; 00 F5
	ora $BB.b,S		; 03 BB
	rti		; 40

	trb $F500.w		; 1C 00 F5
	ora $C3.b,S		; 03 C3
	rti		; 40

	ora $ED00.w,X		; 1D 00 ED
	phd		; 0B
	lda $1E40.w,Y		; B9 40 1E
	brk $ED.b		; 00 ED
	phd		; 0B
	cmp ($40.b,X)		; C1 40
	ora $091300.l,X		; 1F 00 13 09
	sbc [$E2.b]		; E7 E2
	pha		; 48
	brk $08.b		; 00 08
	ora #$E7.b		; 09 E7
	sbc ($48.b)		; F2 48
	cop $08.b		; 02 08
	ora $F2D7.w,Y		; 19 D7 F2
	pha		; 48
	tsb $08.b		; 04 08
	sbc $D9F7.w,Y		; F9 F7 D9
	pha		; 48
	asl $08.b		; 06 08
	sbc $E9F7.w,Y		; F9 F7 E9
	pha		; 48
	php		; 08
	php		; 08
	cmp $EE13.w,X		; DD 13 EE
	pha		; 48
	asl A		; 0A
	php		; 08
	trb $E4.b		; 14 E4
	phx		; DA
	rti		; 40

	tsb $0C00.w		; 0C 00 0C
	cpx $40DA.w		; EC DA 40
	ora $F100.w		; 0D 00 F1
	ora [$DA.b]		; 07 DA
	rti		; 40

	asl $1900.w		; 0E 00 19
	cmp $0F40E2.l,X		; DF E2 40 0F
	brk $21.b		; 00 21
	cmp [$EA.b],Y		; D7 EA
	rti		; 40

	trb $1900.w		; 1C 00 19
	cmp $1D40EA.l,X		; DF EA 40 1D
	brk $E9.b		; 00 E9
	ora $1E40E7.l		; 0F E7 40 1E
	brk $E9.b		; 00 E9
	ora $1F40EF.l		; 0F EF 40 1F
	brk $F1.b		; 00 F1
	ora [$E2.b]		; 07 E2
	rti		; 40

	jsr $F100.w		; 20 00 F1
	ora [$EA.b]		; 07 EA
	rti		; 40

	and ($00.b,X)		; 21 00
	ora ($F7.b,X)		; 01 F7
	sbc $2240.w,Y		; F9 40 22
	brk $F9.b		; 00 F9
	sbc $2340F9.l,X		; FF F9 40 23
	brk $F1.b		; 00 F1
	ora [$F2.b]		; 07 F2
	rti		; 40

	bit $00.b		; 24 00
	ora $D41C.w,Y		; 19 1C D4
	sbc ($48.b),Y		; F1 48
	brk $08.b		; 00 08
	tsb $F1E4.w		; 0C E4 F1
	pha		; 48
	cop $08.b		; 02 08
	jsr ($F1F4.w,X)		; FC F4 F1
	pha		; 48
	tsb $08.b		; 04 08
	trb $E4.b		; 14 E4
	cmp $0640.w,Y		; D9 40 06
	brk $F4.b		; 00 F4
	tsb $F3.b		; 04 F3
	rti		; 40

	ora [$00.b]		; 07 00
	cpx $F30C.w		; EC 0C F3
	rti		; 40

	php		; 08
	brk $E4.b		; 00 E4
	trb $F5.b		; 14 F5
	rti		; 40

	ora #$00.b		; 09 00
	and $D5.b,S		; 23 D5
	ora ($40.b,X)		; 01 40
	asl A		; 0A
	brk $1B.b		; 00 1B
	cmp $4001.w,X		; DD 01 40
	phd		; 0B
	brk $13.b		; 00 13
	sbc $01.b		; E5 01
	rti		; 40

	tsb $0B00.w		; 0C 00 0B
	sbc $4001.w		; ED 01 40
	ora $D900.w		; 0D 00 D9
	ora $0E40F4.l,X		; 1F F4 40 0E
	brk $19.b		; 00 19
	cmp $0F40E1.l,X		; DF E1 40 0F
	brk $11.b		; 00 11
	sbc [$E1.b]		; E7 E1
	rti		; 40

	asl $00.b,X		; 16 00
	cpx #$18.b		; E0 18
	jsr ($1740.w,X)		; FC 40 17
	brk $D8.b		; 00 D8
	jsr $40FC.w		; 20 FC 40
	clc		; 18
	brk $F7.b		; 00 F7
	ora ($EB.b,X)		; 01 EB
	rti		; 40

	ora $EF00.w,Y		; 19 00 EF
	ora #$EB.b		; 09 EB
	rti		; 40

	inc A		; 1A
	brk $E7.b		; 00 E7
	ora ($ED.b),Y		; 11 ED
	rti		; 40

	tas		; 1B
	brk $DF.b		; 00 DF
	ora $40F0.w,Y		; 19 F0 40
	trb $1F00.w		; 1C 00 1F
	cmp $40E9.w,Y		; D9 E9 40
	ora $1700.w,X		; 1D 00 17
	sbc ($E9.b,X)		; E1 E9
	rti		; 40

	asl $0F00.w,X		; 1E 00 0F
	sbc #$E9.b		; E9 E9
	rti		; 40

	ora $F10700.l,X		; 1F 00 07 F1
	sbc #$40.b		; E9 40
	jsr $FF00.w		; 20 00 FF
	sbc $40E9.w,Y		; F9 E9 40
	and ($00.b,X)		; 21 00
	inc A		; 1A
	sbc $E1F7.w,Y		; F9 F7 E1
	iny		; C8
	brk $88.b		; 00 88
	sbc $D1F7.w,Y		; F9 F7 D1
	iny		; C8
	cop $88.b		; 02 88
	ora #$E7.b		; 09 E7
	cmp ($C8.b),Y		; D1 C8
	tsb $88.b		; 04 88
	sbc $B9F3.w,X		; FD F3 B9
	iny		; C8
	asl $88.b		; 06 88
	ora ($E7.b),Y		; 11 E7
	cmp ($C0.b,X)		; C1 C0
	php		; 08
	bra   9.b		; 80 09
	sbc $09C0A9.l		; EF A9 C0 09
	bra -13.b		; 80 F3
	ora $B1.b		; 05 B1
	cpy #$0A.b		; C0 0A
	bra -13.b		; 80 F3
	ora $A9.b		; 05 A9
	cpy #$0B.b		; C0 0B
	bra -21.b		; 80 EB
	ora $C0A9.w		; 0D A9 C0
	tsb $0980.w		; 0C 80 09
	sbc $0DC0E9.l		; EF E9 C0 0D
	bra  17.b		; 80 11
	sbc [$E1.b]		; E7 E1
	cpy #$0E.b		; C0 0E
	bra   9.b		; 80 09
	sbc $0FC0E1.l		; EF E1 C0 0F
	bra -15.b		; 80 F1
	ora [$E6.b]		; 07 E6
	cpy #$18.b		; C0 18
	bra -15.b		; 80 F1
	ora [$DE.b]		; 07 DE
	cpy #$19.b		; C0 19
	bra   6.b		; 80 06
	sbc ($F1.b)		; F2 F1
	cpy #$1A.b		; C0 1A
	bra  -2.b		; 80 FE
	plx		; FA
	sbc ($C0.b),Y		; F1 C0
	tas		; 1B
	bra   6.b		; 80 06
	sbc ($C9.b)		; F2 C9
	cpy #$1C.b		; C0 1C
	bra  -2.b		; 80 FE
	plx		; FA
	cmp #$C0.b		; C9 C0
	ora $F680.w,X		; 1D 80 F6
	cop $C9.b		; 02 C9
	cpy #$1E.b		; C0 1E
	bra   6.b		; 80 06
	sbc ($B1.b)		; F2 B1
	cpy #$1F.b		; C0 1F
	bra  13.b		; 80 0D
	xba		; EB
	lda $20C0.w,Y		; B9 C0 20
	bra  17.b		; 80 11
	sbc [$C9.b]		; E7 C9
	cpy #$21.b		; C0 21
	bra -11.b		; 80 F5
	ora $C1.b,S		; 03 C1
	cpy #$22.b		; C0 22
	bra -11.b		; 80 F5
	ora $B9.b,S		; 03 B9
	cpy #$23.b		; C0 23
	bra   5.b		; 80 05
	sbc ($F8.b,S),Y		; F3 F8
	cpy #$24.b		; C0 24
	bra  -3.b		; 80 FD
	xce		; FB
	sed		; F8
	cpy #$25.b		; C0 25
	bra  19.b		; 80 13
	plx		; FA
	inc $D4.b,X		; F6 D4
	iny		; C8
	brk $88.b		; 00 88
	asl A		; 0A
	inc $D4.b		; E6 D4
	iny		; C8
	cop $88.b		; 02 88
	asl A		; 0A
	inc $E4.b		; E6 E4
	iny		; C8
	tsb $88.b		; 04 88
	inc $F4F2.w,X		; FE F2 F4
	iny		; C8
	asl $88.b		; 06 88
	inc $C4F2.w,X		; FE F2 C4
	iny		; C8
	php		; 08
	dey		; 88
	xce		; FB
	sbc $C0AC.w,X		; FD AC C0
	asl A		; 0A
	bra -13.b		; 80 F3
	ora $AC.b		; 05 AC
	cpy #$0B.b		; C0 0B
	bra  18.b		; 80 12
	inc $CC.b		; E6 CC
	cpy #$0C.b		; C0 0C
	bra   2.b		; 80 02
	inc $EC.b,X		; F6 EC
	cpy #$0D.b		; C0 0D
	bra   2.b		; 80 02
	inc $E4.b,X		; F6 E4
	cpy #$0E.b		; C0 0E
	bra   8.b		; 80 08
	beq -76.b		; F0 B4
	cpy #$0F.b		; C0 0F
	bra  24.b		; 80 18
	cpx #$DB.b		; E0 DB
	cpy #$1A.b		; C0 1A
	bra  14.b		; 80 0E
	nop		; EA
	pea $1BC0.w		; F4 C0 1B
	bra  14.b		; 80 0E
	nop		; EA
	ldy $1CC0.w,X		; BC C0 1C
	bra  -2.b		; 80 FE
	plx		; FA
	ldy $C0.b,X		; B4 C0
	ora $1280.w,X		; 1D 80 12
	inc $C4.b		; E6 C4
	cpy #$1E.b		; C0 1E
	bra  10.b		; 80 0A
	inc $C0AC.w		; EE AC C0
	ora $F20680.l,X		; 1F 80 06 F2
	ldy $20C0.w,X		; BC C0 20
	bra  -2.b		; 80 FE
	plx		; FA
	ldy $21C0.w,X		; BC C0 21
	bra  23.b		; 80 17
	cop $EE.b		; 02 EE
	cmp $8800C8.l,X		; DF C8 00 88
	sbc $EFF3.w,X		; FD F3 EF
	iny		; C8
	cop $88.b		; 02 88
	sbc $CFF3.w,X		; FD F3 CF
	iny		; C8
	tsb $88.b		; 04 88
	xce		; FB
	sbc $C0BA.w,X		; FD BA C0
	asl $80.b		; 06 80
	sbc ($06.b)		; F2 06
	cmp $8007C0.l,X		; DF C0 07 80
	sbc ($06.b)		; F2 06
	cmp [$C0.b],Y		; D7 C0
	php		; 08
	bra  12.b		; 80 0C
	cpx $C0B7.w		; EC B7 C0
	ora #$80.b		; 09 80
	plx		; FA
	inc $C0E7.w,X		; FE E7 C0
	asl A		; 0A
	bra  -6.b		; 80 FA
	inc $C0DF.w,X		; FE DF C0
	phd		; 0B
	bra   9.b		; 80 09
	sbc $0CC0BF.l		; EF BF C0 0C
	bra  -7.b		; 80 F9
	sbc $0DC0B7.l,X		; FF B7 C0 0D
	bra -15.b		; 80 F1
	ora [$B7.b]		; 07 B7
	cpy #$0E.b		; C0 0E
	bra   6.b		; 80 06
	sbc ($C7.b)		; F2 C7
	cpy #$0F.b		; C0 0F
	bra  -3.b		; 80 FD
	xce		; FB
	sbc $8016C0.l,X		; FF C0 16 80
	ora $EFEB.w		; 0D EB EF
	cpy #$17.b		; C0 17
	bra  13.b		; 80 0D
	xba		; EB
	cmp [$C0.b],Y		; D7 C0
	clc		; 18
	bra  -5.b		; 80 FB
	sbc $C0CA.w,X		; FD CA C0
	ora $FB80.w,Y		; 19 80 FB
	sbc $C0C2.w,X		; FD C2 C0
	inc A		; 1A
	bra -11.b		; 80 F5
	ora $FE.b,S		; 03 FE
	cpy #$1B.b		; C0 1B
	bra -11.b		; 80 F5
	ora $F6.b,S		; 03 F6
	cpy #$1C.b		; C0 1C
	bra -11.b		; 80 F5
	ora $EE.b,S		; 03 EE
	cpy #$1D.b		; C0 1D
	bra -19.b		; 80 ED
	phd		; 0B
	sed		; F8
	cpy #$1E.b		; C0 1E
	bra -19.b		; 80 ED
	phd		; 0B
	beq -64.b		; F0 C0
	ora $091380.l,X		; 1F 80 13 09
	sbc [$E9.b]		; E7 E9
	iny		; C8
	brk $88.b		; 00 88
	ora #$E7.b		; 09 E7
	cmp $02C8.w,Y		; D9 C8 02
	dey		; 88
	ora $D9D7.w,Y		; 19 D7 D9
	iny		; C8
	tsb $88.b		; 04 88
	sbc $F2F7.w,Y		; F9 F7 F2
	iny		; C8
	asl $88.b		; 06 88
	sbc $E2F7.w,Y		; F9 F7 E2
	iny		; C8
	php		; 08
	dey		; 88
	cmp $DD13.w,X		; DD 13 DD
	iny		; C8
	asl A		; 0A
	dey		; 88
	trb $E4.b		; 14 E4
	sbc $0CC0.w,Y		; F9 C0 0C
	bra  12.b		; 80 0C
	cpx $C0F9.w		; EC F9 C0
	ora $F180.w		; 0D 80 F1
	ora [$F9.b]		; 07 F9
	cpy #$0E.b		; C0 0E
	bra  25.b		; 80 19
	cmp $0FC0F1.l,X		; DF F1 C0 0F
	bra  33.b		; 80 21
	cmp [$E9.b],Y		; D7 E9
	cpy #$1C.b		; C0 1C
	bra  25.b		; 80 19
	cmp $1DC0E9.l,X		; DF E9 C0 1D
	bra -23.b		; 80 E9
	ora $1EC0EC.l		; 0F EC C0 1E
	bra -23.b		; 80 E9
	ora $1FC0E4.l		; 0F E4 C0 1F
	bra -15.b		; 80 F1
	ora [$F1.b]		; 07 F1
	cpy #$20.b		; C0 20
	bra -15.b		; 80 F1
	ora [$E9.b]		; 07 E9
	cpy #$21.b		; C0 21
	bra   1.b		; 80 01
	sbc [$DA.b],Y		; F7 DA
	cpy #$22.b		; C0 22
	bra  -7.b		; 80 F9
	sbc $23C0DA.l,X		; FF DA C0 23
	bra -15.b		; 80 F1
	ora [$E1.b]		; 07 E1
	cpy #$24.b		; C0 24
	bra  25.b		; 80 19
	trb $D9D4.w		; 1C D4 D9
	iny		; C8
	brk $88.b		; 00 88
	tsb $D9E4.w		; 0C E4 D9
	iny		; C8
	cop $88.b		; 02 88
	jsr ($D9F4.w,X)		; FC F4 D9
	iny		; C8
	tsb $88.b		; 04 88
	trb $E4.b		; 14 E4
	sbc $06C0.w,Y		; F9 C0 06
	bra -12.b		; 80 F4
	tsb $DF.b		; 04 DF
	cpy #$07.b		; C0 07
	bra -20.b		; 80 EC
	tsb $C0DF.w		; 0C DF C0
	php		; 08
	bra -28.b		; 80 E4
	trb $DD.b		; 14 DD
	cpy #$09.b		; C0 09
	bra  35.b		; 80 23
	cmp $D1.b,X		; D5 D1
	cpy #$0A.b		; C0 0A
	bra  27.b		; 80 1B
	cmp $C0D1.w,X		; DD D1 C0
	phd		; 0B
	bra  19.b		; 80 13
	sbc $D1.b		; E5 D1
	cpy #$0C.b		; C0 0C
	bra  11.b		; 80 0B
	sbc $C0D1.w		; ED D1 C0
	ora $D980.w		; 0D 80 D9
	ora $0EC0DE.l,X		; 1F DE C0 0E
	bra  25.b		; 80 19
	cmp $0FC0F1.l,X		; DF F1 C0 0F
	bra  17.b		; 80 11
	sbc [$F1.b]		; E7 F1
	cpy #$16.b		; C0 16
	bra -32.b		; 80 E0
	clc		; 18
	dec $C0.b,X		; D6 C0
	ora [$80.b],Y		; 17 80
	cld		; D8
	jsr $C0D6.w		; 20 D6 C0
	clc		; 18
	bra  -9.b		; 80 F7
	ora ($E7.b,X)		; 01 E7
	cpy #$19.b		; C0 19
	bra -17.b		; 80 EF
	ora #$E7.b		; 09 E7
	cpy #$1A.b		; C0 1A
	bra -25.b		; 80 E7
	ora ($E5.b),Y		; 11 E5
	cpy #$1B.b		; C0 1B
	bra -33.b		; 80 DF
	ora $C0E2.w,Y		; 19 E2 C0
	trb $1F80.w		; 1C 80 1F
	cmp $C0E9.w,Y		; D9 E9 C0
	ora $1780.w,X		; 1D 80 17
	sbc ($E9.b,X)		; E1 E9
	cpy #$1E.b		; C0 1E
	bra  15.b		; 80 0F
	sbc #$E9.b		; E9 E9
	cpy #$1F.b		; C0 1F
	bra   7.b		; 80 07
	sbc ($E9.b),Y		; F1 E9
	cpy #$20.b		; C0 20
	bra  -1.b		; 80 FF
	sbc $C0E9.w,Y		; F9 E9 C0
	and ($80.b,X)		; 21 80
	trb $EC.b		; 14 EC
	tsb $EB.b		; 04 EB
	pha		; 48
	brk $08.b		; 00 08
	tsb $EBE4.w		; 0C E4 EB
	pha		; 48
	cop $08.b		; 02 08
	jsr ($D9F4.w,X)		; FC F4 D9
	pha		; 48
	tsb $08.b		; 04 08
	jsr ($E9F4.w,X)		; FC F4 E9
	pha		; 48
	asl $08.b		; 06 08
	tsb $DBEC.w		; 0C EC DB
	rti		; 40

	php		; 08
	brk $0C.b		; 00 0C
	cpx $40E3.w		; EC E3 40
	ora #$00.b		; 09 00
	trb $E4.b		; 14 E4
	xce		; FB
	rti		; 40

	asl A		; 0A
	brk $0C.b		; 00 0C
	cpx $40FB.w		; EC FB 40
	phd		; 0B
	brk $F4.b		; 00 F4
	tsb $D9.b		; 04 D9
	rti		; 40

	tsb $E400.w		; 0C 00 E4
	trb $F3.b		; 14 F3
	rti		; 40

	ora $1C00.w		; 0D 00 1C
	jmp.w [$40FB]		; DC FB 40
	asl $0400.w		; 0E 00 04
	pea $40F9.w		; F4 F9 40
	ora $FCFC00.l		; 0F 00 FC FC
	sbc $1840.w,Y		; F9 40 18
	brk $09.b		; 00 09
	sbc $1940D3.l		; EF D3 40 19
	brk $01.b		; 00 01
	sbc [$D1.b],Y		; F7 D1
	rti		; 40

	inc A		; 1A
	brk $F9.b		; 00 F9
	sbc $1B40D1.l,X		; FF D1 40 1B
	brk $F1.b		; 00 F1
	ora [$D1.b]		; 07 D1
	rti		; 40

	trb $ED00.w		; 1C 00 ED
	phd		; 0B
	xce		; FB
	rti		; 40

	ora $E500.w,X		; 1D 00 E5
	ora ($FB.b,S),Y		; 13 FB
	rti		; 40

	asl $DD00.w,X		; 1E 00 DD
	tas		; 1B
	xce		; FB
	rti		; 40

	ora $DC0C00.l,X		; 1F 00 0C DC
	trb $CC.b		; 14 CC
	pha		; 48
	brk $08.b		; 00 08
	cpx $CC04.w		; EC 04 CC
	pha		; 48
	cop $08.b		; 02 08
	jsr ($D4F4.w,X)		; FC F4 D4
	pha		; 48
	tsb $08.b		; 04 08
	jsr ($E4F4.w,X)		; FC F4 E4
	pha		; 48
	asl $08.b		; 06 08
	jsr ($F4F4.w,X)		; FC F4 F4
	pha		; 48
	php		; 08
	php		; 08
	cpx $F404.w		; EC 04 F4
	pha		; 48
	asl A		; 0A
	php		; 08
	cpx $E404.w		; EC 04 E4
	pha		; 48
	tsb $D408.w		; 0C 08 D4
	bit $D4.b		; 24 D4
	rti		; 40

	asl $FC00.w		; 0E 00 FC
	jsr ($40CC.w,X)		; FC CC 40
	ora $04F400.l		; 0F 00 F4 04
	jmp.w [$1E40]		; DC 40 1E
	brk $0C.b		; 00 0C
	cpx $40F6.w		; EC F6 40
	ora $2ACE00.l,X		; 1F 00 CE 2A
	cmp $40.b,X		; D5 40
	jsr $0D00.w		; 20 00 0D
	jsr ($EBF4.w,X)		; FC F4 EB
	pha		; 48
	brk $08.b		; 00 08
	tsb $EC.b		; 04 EC
	tyx		; BB
	pha		; 48
	cop $08.b		; 02 08
	pea $BBFC.w		; F4 FC BB
	pha		; 48
	tsb $08.b		; 04 08
	jsr ($ABF4.w,X)		; FC F4 AB
	pha		; 48
	asl $08.b		; 06 08
	sbc [$F9.b],Y		; F7 F9
	stp		; DB
	pha		; 48
	php		; 08
	php		; 08
	asl $EA.b		; 06 EA
	wai		; CB
	pha		; 48
	asl A		; 0A
	php		; 08
	inc $FA.b,X		; F6 FA
	wai		; CB
	pha		; 48
	tsb $FC08.w		; 0C 08 FC
	jsr ($40FB.w,X)		; FC FB 40
	asl $0F00.w		; 0E 00 0F
	sbc #$DB.b		; E9 DB
	rti		; 40

	ora $E90F00.l		; 0F 00 0F E9
	sbc $40.b,S		; E3 40
	asl $F400.w,X		; 1E 00 F4
	tsb $AB.b		; 04 AB
	rti		; 40

	ora $04F400.l,X		; 1F 00 F4 04
	lda ($40.b,S),Y		; B3 40
	jsr $0400.w		; 20 00 04
	pea $40FB.w		; F4 FB 40
	and ($00.b,X)		; 21 00
	bpl  12.b		; 10 0C
	cpx $DA.b		; E4 DA
	pha		; 48
	brk $08.b		; 00 08
	jsr ($DAF4.w,X)		; FC F4 DA
	pha		; 48
	cop $08.b		; 02 08
	jsr ($CAF4.w,X)		; FC F4 CA
	pha		; 48
	tsb $08.b		; 04 08
	ora ($EF.b,X)		; 01 EF
	tsx		; BA
	pha		; 48
	asl $08.b		; 06 08
	inc $AAF2.w,X		; FE F2 AA
	pha		; 48
	php		; 08
	php		; 08
	trb $E4.b		; 14 E4
	cmp ($40.b)		; D2 40
	asl A		; 0A
	brk $F4.b		; 00 F4
	tsb $CA.b		; 04 CA
	rti		; 40

	phd		; 0B
	brk $F4.b		; 00 F4
	tsb $D2.b		; 04 D2
	rti		; 40

	tsb $F400.w		; 0C 00 F4
	tsb $DA.b		; 04 DA
	rti		; 40

	ora $1100.w		; 0D 00 11
	sbc [$C2.b]		; E7 C2
	rti		; 40

	asl $1400.w		; 0E 00 14
	cpx $CA.b		; E4 CA
	rti		; 40

	ora $FFF900.l		; 0F 00 F9 FF
	tsx		; BA
	rti		; 40

	inc A		; 1A
	brk $F9.b		; 00 F9
	sbc $1B40C2.l,X		; FF C2 40 1B
	brk $0C.b		; 00 0C
	cpx $40CA.w		; EC CA 40
	trb $F600.w		; 1C 00 F6
	cop $AA.b		; 02 AA
	rti		; 40

	ora $F600.w,X		; 1D 00 F6
	cop $B2.b		; 02 B2
	rti		; 40

	asl $1100.w,X		; 1E 00 11
	sbc $48BDF1.l,X		; FF F1 BD 48
	brk $08.b		; 00 08
	sbc $48BD01.l		; EF 01 BD 48
	cop $08.b		; 02 08
	sbc $ADF3.w,X		; FD F3 AD
	pha		; 48
	tsb $08.b		; 04 08
	ora $EB.b		; 05 EB
	cmp $0648.w		; CD 48 06
	php		; 08
	sbc $FB.b,X		; F5 FB
	cmp $0848.w		; CD 48 08
	php		; 08
	ora $EB.b		; 05 EB
	cmp $0A48.w,X		; DD 48 0A
	php		; 08
	sbc $FB.b,X		; F5 FB
	cmp $0C48.w,X		; DD 48 0C
	php		; 08
	asl A		; 0A
	inc $40F5.w		; EE F5 40
	asl $0600.w		; 0E 00 06
	sbc ($ED.b)		; F2 ED
	rti		; 40

	ora $03F500.l		; 0F 00 F5 03
	sbc $1E40.w		; ED 40 1E
	brk $F2.b		; 00 F2
	asl $F5.b		; 06 F5
	rti		; 40

	ora $06F200.l,X		; 1F 00 F2 06
	sbc $2040.w,X		; FD 40 20
	brk $EA.b		; 00 EA
	asl $40FD.w		; 0E FD 40
	and ($00.b,X)		; 21 00
	ora $40C5E9.l		; 0F E9 C5 40
	jsl $EC0C00.l		; 22 00 0C EC
	sbc $2340.w,X		; FD 40 23
	brk $F5.b		; 00 F5
	ora $AD.b,S		; 03 AD
	rti		; 40

	bit $00.b		; 24 00
	sbc $03.b,X		; F5 03
	lda $40.b,X		; B5 40
	and $00.b		; 25 00
	clc		; 18
	sbc $C3F7.w,Y		; F9 F7 C3
	pha		; 48
	brk $08.b		; 00 08
	ora [$E9.b]		; 07 E9
	cmp ($48.b,S),Y		; D3 48
	cop $08.b		; 02 08
	sbc [$F9.b],Y		; F7 F9
	cmp ($48.b,S),Y		; D3 48
	tsb $08.b		; 04 08
	sbc $EBF3.w,X		; FD F3 EB
	pha		; 48
	asl $08.b		; 06 08
	sbc $EB03.w		; ED 03 EB
	pha		; 48
	php		; 08
	php		; 08
	sbc ($07.b),Y		; F1 07
	cmp $40.b,S		; C3 40
	asl A		; 0A
	brk $F1.b		; 00 F1
	ora [$CB.b]		; 07 CB
	rti		; 40

	phd		; 0B
	brk $E9.b		; 00 E9
	ora $0C40CF.l		; 0F CF 40 0C
	brk $0F.b		; 00 0F
	sbc #$EB.b		; E9 EB
	rti		; 40

	ora $0F00.w		; 0D 00 0F
	sbc #$F3.b		; E9 F3
	rti		; 40

	asl $EF00.w		; 0E 00 EF
	ora #$FB.b		; 09 FB
	rti		; 40

	ora $06F200.l		; 0F 00 F2 06
	tyx		; BB
	rti		; 40

	inc A		; 1A
	brk $EA.b		; 00 EA
	asl $40BD.w		; 0E BD 40
	tas		; 1B
	brk $EF.b		; 00 EF
	ora #$D3.b		; 09 D3
	rti		; 40

	trb $EF00.w		; 1C 00 EF
	ora #$DB.b		; 09 DB
	rti		; 40

	ora $0F00.w,X		; 1D 00 0F
	sbc #$E3.b		; E9 E3
	rti		; 40

	asl $0700.w,X		; 1E 00 07
	sbc ($E3.b),Y		; F1 E3
	rti		; 40

	ora $F9FF00.l,X		; 1F 00 FF F9
	sbc $40.b,S		; E3 40
	jsr $F700.w		; 20 00 F7
	ora ($E3.b,X)		; 01 E3
	rti		; 40

	and ($00.b,X)		; 21 00
	sbc $40E309.l		; EF 09 E3 40
	jsl $11E700.l		; 22 00 E7 11
	inc $40.b		; E6 40
	and $00.b,S		; 23 00
	ora $F3.b		; 05 F3
	xce		; FB
	rti		; 40

	bit $00.b		; 24 00
	ora #$EF.b		; 09 EF
	wai		; CB
	rti		; 40

	and $00.b		; 25 00
	plx		; FA
	inc $40BB.w,X		; FE BB 40
	rol $00.b		; 26 00
	ora [$EE.b],Y		; 17 EE
	cop $BC.b		; 02 BC
	php		; 08
	brk $48.b		; 00 48
	inc $BCF2.w,X		; FE F2 BC
	php		; 08
	cop $48.b		; 02 48
	inx		; E8
	php		; 08
	cpy $0408.w		; CC 08 04
	pha		; 48
	inx		; E8
	php		; 08
	jmp.w [$0608]		; DC 08 06
	pha		; 48
	sed		; F8
	sed		; F8
	cpy $0808.w		; CC 08 08
	pha		; 48
	php		; 08
	inx		; E8
	cpy $0A08.w		; CC 08 0A
	pha		; 48
	sed		; F8
	sed		; F8
	jmp.w [$0C08]		; DC 08 0C
	pha		; 48
	php		; 08
	inx		; E8
	jmp.w [$0E08]		; DC 08 0E
	pha		; 48
	sbc ($FE.b)		; F2 FE
	cpx $2008.w		; EC 08 20
	pha		; 48
	cop $EE.b		; 02 EE
	cpx $2208.w		; EC 08 22
	pha		; 48
	asl $C4EA.w		; 0E EA C4
	brk $24.b		; 00 24
	rti		; 40

	asl $B0EA.w		; 0E EA B0
	brk $25.b		; 00 25
	rti		; 40

	sbc [$01.b],Y		; F7 01
	jsr ($2600.w,X)		; FC 00 26
	rti		; 40

	sbc $00FCF9.l,X		; FF F9 FC 00
	and [$40.b]		; 27 40
	ora [$F1.b]		; 07 F1
	jsr ($2800.w,X)		; FC 00 28
	rti		; 40

	ora $F3.b		; 05 F3
	ldy $00.b,X		; B4 00
	and #$40.b		; 29 40
	ora $B4EB.w		; 0D EB B4
	brk $2A.b		; 00 2A
	rti		; 40

	inc $02.b,X		; F6 02
	ldy $2B00.w		; AC 00 2B
	rti		; 40

	inc $ACFA.w,X		; FE FA AC
	brk $2C.b		; 00 2C
	rti		; 40

	asl $F2.b		; 06 F2
	ldy $2D00.w		; AC 00 2D
	rti		; 40

	sbc $03.b,X		; F5 03
	ldy $00.b,X		; B4 00
	rol $FD40.w		; 2E 40 FD
	xce		; FB
	ldy $00.b,X		; B4 00
	and $EA0E40.l		; 2F 40 0E EA
	ldy $3400.w,X		; BC 00 34
	rti		; 40

	inc A		; 1A
	sbc $BF03.w		; ED 03 BF
	php		; 08
	brk $48.b		; 00 48
	sbc $BFF3.w,X		; FD F3 BF
	php		; 08
	cop $48.b		; 02 48
	asl $D3E2.w		; 0E E2 D3
	php		; 08
	tsb $48.b		; 04 48
	asl $EA.b		; 06 EA
	lda ($08.b,S),Y		; B3 08
	asl $48.b		; 06 48
	inc $FA.b,X		; F6 FA
	lda $480808.l		; AF 08 08 48
	inc $CF02.w		; EE 02 CF
	php		; 08
	asl A		; 0A
	pha		; 48
	inc $CFF2.w,X		; FE F2 CF
	php		; 08
	tsb $0B48.w		; 0C 48 0B
	sbc $C3.b		; E5 C3
	php		; 08
	asl $E548.w		; 0E 48 E5
	ora ($C7.b,S),Y		; 13 C7
	brk $20.b		; 00 20
	rti		; 40

	asl $E2.b,X		; 16 E2
	lda ($00.b,S),Y		; B3 00
	and ($40.b,X)		; 21 40
	asl $E2.b,X		; 16 E2
	tyx		; BB
	brk $22.b		; 00 22
	rti		; 40

	sbc $00E709.l		; EF 09 E7 00
	and $40.b,S		; 23 40
	sbc [$01.b],Y		; F7 01
	sbc [$00.b]		; E7 00
	bit $40.b		; 24 40
	bpl -24.b		; 10 E8
	sbc $00.b,S		; E3 00
	and $40.b		; 25 40
	cpx #$18.b		; E0 18
	cmp $402600.l,X		; DF 00 26 40
	inx		; E8
	bpl -33.b		; 10 DF
	brk $27.b		; 00 27
	rti		; 40

	beq   8.b		; F0 08
	cmp $402800.l,X		; DF 00 28 40
	sed		; F8
	brk $DF.b		; 00 DF
	brk $29.b		; 00 29
	rti		; 40

	brk $F8.b		; 00 F8
	cmp $402A00.l,X		; DF 00 2A 40
	php		; 08
	beq -33.b		; F0 DF
	brk $2B.b		; 00 2B
	rti		; 40

	clc		; 18
	cpx #$DF.b		; E0 DF
	brk $2C.b		; 00 2C
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	cmp $402D00.l		; CF 00 2D 40
.INDEX 8
	sep #$16		; E2 16
	cmp [$00.b],Y		; D7 00
	rol $0240.w		; 2E 40 02
	inc $E7.b,X		; F6 E7
	brk $2F.b		; 00 2F
	rti		; 40

	asl A		; 0A
	inc $00E7.w		; EE E7 00
	bmi  64.b		; 30 40
	inc $B70A.w		; EE 0A B7
	brk $31.b		; 00 31
	rti		; 40

	trb $0AE6.w		; 1C E6 0A
	rep #$08		; C2 08
	brk $48.b		; 00 48
	sbc ($FE.b)		; F2 FE
	phx		; DA
	php		; 08
	cop $48.b		; 02 48
	inc $B20A.w		; EE 0A B2
	brk $04.b		; 00 04
	rti		; 40

	inc $02.b,X		; F6 02
	lda ($00.b)		; B2 00
	ora $40.b		; 05 40
	inc $B2FA.w,X		; FE FA B2
	brk $06.b		; 00 06
	rti		; 40

	inc $C2FA.w,X		; FE FA C2
	brk $07.b		; 00 07
	rti		; 40

	inc $12.b		; E6 12
	phx		; DA
	brk $08.b		; 00 08
	rti		; 40

	inc $12.b		; E6 12
	sep #$00		; E2 00
	ora #$40.b		; 09 40
	sbc $03.b,X		; F5 03
	tax		; AA
	brk $0A.b		; 00 0A
	rti		; 40

	inc $02.b,X		; F6 02
	rep #$00		; C2 00
	phd		; 0B
	rti		; 40

	inc $02.b,X		; F6 02
	dex		; CA
	brk $0C.b		; 00 0C
	rti		; 40

	inc $12.b		; E6 12
	cmp ($00.b)		; D2 00
	ora $EE40.w		; 0D 40 EE
	asl A		; 0A
	cmp ($00.b)		; D2 00
	asl $F640.w		; 0E 40 F6
	cop $D2.b		; 02 D2
	brk $0F.b		; 00 0F
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	ldy $00.b,X		; B4 00
	trb $40.b		; 14 40
	nop		; EA
	asl $00BA.w		; 0E BA 00
	ora $40.b,X		; 15 40
	sbc ($06.b)		; F2 06
	tsx		; BA
	brk $16.b		; 00 16
	rti		; 40

	plx		; FA
	inc $00BA.w,X		; FE BA 00
	ora [$40.b],Y		; 17 40
	sbc $AAFB.w,X		; FD FB AA
	brk $18.b		; 00 18
	rti		; 40

	cop $F6.b		; 02 F6
	ldy $1900.w,X		; BC 00 19
	rti		; 40

	cpx $EA0C.w		; EC 0C EA
	brk $1A.b		; 00 1A
	rti		; 40

	pea $EA04.w		; F4 04 EA
	brk $1B.b		; 00 1B
	rti		; 40

	jsr ($EAFC.w,X)		; FC FC EA
	brk $1C.b		; 00 1C
	rti		; 40

	jsr ($F2FC.w,X)		; FC FC F2
	brk $1D.b		; 00 1D
	rti		; 40

	cpx $FA0C.w		; EC 0C FA
	brk $1E.b		; 00 1E
	rti		; 40

	jsr ($FAFC.w,X)		; FC FC FA
	brk $1F.b		; 00 1F
	rti		; 40

	tsb $F4.b		; 04 F4
	plx		; FA
	brk $20.b		; 00 20
	rti		; 40

	sbc $00F209.l		; EF 09 F2 00
	and ($40.b,X)		; 21 40
	tas		; 1B
	inc $0A.b		; E6 0A
	dex		; CA
	php		; 08
	brk $48.b		; 00 48
	sbc ($FE.b)		; F2 FE
	lda ($08.b)		; B2 08
	cop $48.b		; 02 48
	inc $12.b		; E6 12
	phx		; DA
	brk $04.b		; 00 04
	rti		; 40

	inc $02.b,X		; F6 02
	tax		; AA
	brk $05.b		; 00 05
	rti		; 40

	inc $02.b,X		; F6 02
	dex		; CA
	brk $06.b		; 00 06
	rti		; 40

	inc $02.b,X		; F6 02
	cmp ($00.b)		; D2 00
	ora [$40.b]		; 07 40
	inx		; E8
	bpl -62.b		; 10 C2
	brk $08.b		; 00 08
	rti		; 40

	beq   8.b		; F0 08
	rep #$00		; C2 00
	ora #$40.b		; 09 40
	sed		; F8
	brk $C2.b		; 00 C2
	brk $0A.b		; 00 0A
	rti		; 40

	beq   8.b		; F0 08
	phx		; DA
	brk $0B.b		; 00 0B
	rti		; 40

	sed		; F8
	brk $DA.b		; 00 DA
	brk $0C.b		; 00 0C
	rti		; 40

	nop		; EA
	asl $00BA.w		; 0E BA 00
	ora $0240.w		; 0D 40 02
	inc $C2.b,X		; F6 C2
	brk $0E.b		; 00 0E
	rti		; 40

	nop		; EA
	asl $00E2.w		; 0E E2 00
	ora $06F240.l		; 0F 40 F2 06
	sep #$00		; E2 00
	trb $40.b		; 14 40
	plx		; FA
	inc $00E2.w,X		; FE E2 00
	ora $40.b,X		; 15 40
	inc $AAFA.w,X		; FE FA AA
	brk $16.b		; 00 16
	rti		; 40

	cop $F6.b		; 02 F6
	lda ($00.b)		; B2 00
	ora [$40.b],Y		; 17 40
	cop $F6.b		; 02 F6
	tsx		; BA
	brk $18.b		; 00 18
	rti		; 40

	cpx $EA0C.w		; EC 0C EA
	brk $19.b		; 00 19
	rti		; 40

	pea $EA04.w		; F4 04 EA
	brk $1A.b		; 00 1A
	rti		; 40

	jsr ($EAFC.w,X)		; FC FC EA
	brk $1B.b		; 00 1B
	rti		; 40

	jsr ($F2FC.w,X)		; FC FC F2
	brk $1C.b		; 00 1C
	rti		; 40

	cpx $FA0C.w		; EC 0C FA
	brk $1D.b		; 00 1D
	rti		; 40

	jsr ($FAFC.w,X)		; FC FC FA
	brk $1E.b		; 00 1E
	rti		; 40

	tsb $F4.b		; 04 F4
	plx		; FA
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $00F209.l		; EF 09 F2 00
	jsr $1440.w		; 20 40 14
	cpx $B204.w		; EC 04 B2
	php		; 08
	brk $48.b		; 00 48
	cpx $0C.b		; E4 0C
	cmp ($08.b)		; D2 08
	cop $48.b		; 02 48
	pea $D2FC.w		; F4 FC D2
	php		; 08
	tsb $48.b		; 04 48
	cpx $0C.b		; E4 0C
	sep #$08		; E2 08
	asl $48.b		; 06 48
	sbc $0D.b,S		; E3 0D
	rep #$08		; C2 08
	php		; 08
	pha		; 48
	tsb $F4.b		; 04 F4
	cmp ($00.b)		; D2 00
	asl A		; 0A
	rti		; 40

	tsb $F4.b		; 04 F4
	phx		; DA
	brk $0B.b		; 00 0B
	rti		; 40

	pea $E204.w		; F4 04 E2
	brk $0C.b		; 00 0C
	rti		; 40

	jsr ($E2FC.w,X)		; FC FC E2
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $F4.b		; 04 F4
	sep #$00		; E2 00
	asl $F440.w		; 0E 40 F4
	tsb $EA.b		; 04 EA
	brk $0F.b		; 00 0F
	rti		; 40

	cpx $14.b		; E4 14
	sbc ($00.b)		; F2 00
	inc A		; 1A
	rti		; 40

	cpx $F20C.w		; EC 0C F2
	brk $1B.b		; 00 1B
	rti		; 40

	pea $F204.w		; F4 04 F2
	brk $1C.b		; 00 1C
	rti		; 40

	sbc $FA0B.w		; ED 0B FA
	brk $1D.b		; 00 1D
	rti		; 40

	xce		; FB
	sbc $00CA.w,X		; FD CA 00
	asl $0340.w,X		; 1E 40 03
	sbc $CA.b,X		; F5 CA
	brk $1F.b		; 00 1F
	rti		; 40

	cpx $14.b		; E4 14
	tsx		; BA
	brk $20.b		; 00 20
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	rep #$00		; C2 00
	and ($40.b,X)		; 21 40
	sbc ($05.b,S),Y		; F3 05
	dex		; CA
	brk $22.b		; 00 22
	rti		; 40

	ora ($EF.b,S),Y		; 13 EF
	ora ($D2.b,X)		; 01 D2
	php		; 08
	brk $48.b		; 00 48
	nop		; EA
	asl $E2.b		; 06 E2
	php		; 08
	cop $48.b		; 02 48
	asl A		; 0A
	inc $BA.b		; E6 BA
	php		; 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $C2.b,X		; F6 C2
	php		; 08
	asl $48.b		; 06 48
	sep #$0E		; E2 0E
	lda ($08.b)		; B2 08
	php		; 08
	pha		; 48
	sep #$0E		; E2 0E
	rep #$08		; C2 08
	asl A		; 0A
	pha		; 48
	inc $12.b		; E6 12
	tax		; AA
	brk $0C.b		; 00 0C
	rti		; 40

	inc A		; 1A
	dec $00BA.w,X		; DE BA 00
	ora $E240.w		; 0D 40 E2
	asl $D2.b,X		; 16 D2
	brk $0E.b		; 00 0E
	rti		; 40

	inc $AA0A.w		; EE 0A AA
	brk $0F.b		; 00 0F
	rti		; 40

	inc $12.b		; E6 12
	phx		; DA
	brk $1C.b		; 00 1C
	rti		; 40

	inc $F20A.w		; EE 0A F2
	brk $1D.b		; 00 1D
	rti		; 40

	inc $FA0A.w		; EE 0A FA
	brk $1E.b		; 00 1E
	rti		; 40

	sbc $00D2F9.l,X		; FF F9 D2 00
	ora $06F240.l,X		; 1F 40 F2 06
	lda ($00.b)		; B2 00
	jsr $F240.w		; 20 40 F2
	asl $BA.b		; 06 BA
	brk $21.b		; 00 21
	rti		; 40

	plx		; FA
	inc $00BA.w,X		; FE BA 00
	jsl $06F240.l		; 22 40 F2 06
	rep #$00		; C2 00
	and $40.b,S		; 23 40
	sbc ($06.b)		; F2 06
	dex		; CA
	brk $24.b		; 00 24
	rti		; 40

	trb $ED.b		; 14 ED
	ora $E3.b,S		; 03 E3
	php		; 08
	brk $48.b		; 00 48
	sbc $D303.w		; ED 03 D3
	php		; 08
	cop $48.b		; 02 48
	sbc $D3F3.w,X		; FD F3 D3
	php		; 08
	tsb $48.b		; 04 48
	sbc $ACF3.w,X		; FD F3 AC
	php		; 08
	asl $48.b		; 06 48
	sbc $08C401.l		; EF 01 C4 08
	php		; 08
	pha		; 48
	tsb $F4.b		; 04 F4
	xba		; EB
	brk $0A.b		; 00 0A
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b,S),Y		; F3 00
	phd		; 0B
	rti		; 40

	sbc $FB0B.w		; ED 0B FB
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $E3FB.w,X		; FD FB E3
	brk $0D.b		; 00 0D
	rti		; 40

	ora $F3.b		; 05 F3
	sbc $00.b,S		; E3 00
	asl $0540.w		; 0E 40 05
	sbc ($FB.b,S),Y		; F3 FB
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $03.b,X		; F5 03
	ldy $00.b,X		; B4 00
	inc A		; 1A
	rti		; 40

	sbc $03.b,X		; F5 03
	ldy $1B00.w,X		; BC 00 1B
	rti		; 40

	sbc $BCFB.w,X		; FD FB BC
	brk $1C.b		; 00 1C
	rti		; 40

	ora $F3.b		; 05 F3
	ldy $1D00.w,X		; BC 00 1D
	rti		; 40

	ora $B8EB.w		; 0D EB B8
	brk $1E.b		; 00 1E
	rti		; 40

	sbc $00F309.l		; EF 09 F3 00
	ora $EB0D40.l,X		; 1F 40 0D EB
	xce		; FB
	brk $20.b		; 00 20
	rti		; 40

	sbc $00C4F9.l,X		; FF F9 C4 00
	and ($40.b,X)		; 21 40
	sbc $00CCF9.l,X		; FF F9 CC 00
	jsl $EE1B40.l		; 22 40 1B EE
	cop $B4.b		; 02 B4
	php		; 08
	brk $48.b		; 00 48
	inc $C402.w		; EE 02 C4
	php		; 08
	cop $48.b		; 02 48
	xba		; EB
	ora $D4.b		; 05 D4
	php		; 08
	tsb $48.b		; 04 48
	asl $F2.b		; 06 F2
	ldy $00.b,X		; B4 00
	asl $40.b		; 06 40
	dec $22.b,X		; D6 22
	ldy $0700.w,X		; BC 00 07
	rti		; 40

	dec $BC1A.w,X		; DE 1A BC
	brk $08.b		; 00 08
	rti		; 40

	inc $12.b		; E6 12
	ldy $0900.w,X		; BC 00 09
	rti		; 40

	asl $F2.b		; 06 F2
	ldy $0A00.w,X		; BC 00 0A
	rti		; 40

	dec $C41A.w,X		; DE 1A C4
	brk $0B.b		; 00 0B
	rti		; 40

	asl $F2.b		; 06 F2
	cpy $00.b		; C4 00
	tsb $DE40.w		; 0C 40 DE
	inc A		; 1A
	cpy $0D00.w		; CC 00 0D
	rti		; 40

	dec $B21A.w,X		; DE 1A B2
	brk $0E.b		; 00 0E
	rti		; 40

	inc $12.b		; E6 12
	lda ($00.b)		; B2 00
	ora $FAFE40.l		; 0F 40 FE FA
	ldx $00.b,Y		; B6 00
	asl $40.b,X		; 16 40
	inc $BEFA.w,X		; FE FA BE
	brk $17.b		; 00 17
	rti		; 40

	inc $C6FA.w,X		; FE FA C6
	brk $18.b		; 00 18
	rti		; 40

	inc $CEFA.w,X		; FE FA CE
	brk $19.b		; 00 19
	rti		; 40

	asl $B7EA.w		; 0E EA B7
	brk $1A.b		; 00 1A
	rti		; 40

	php		; 08
	beq -52.b		; F0 CC
	brk $1B.b		; 00 1B
	rti		; 40

	bpl -24.b		; 10 E8
	dec $1C00.w		; CE 00 1C
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cpx $00.b		; E4 00
	ora $F940.w,X		; 1D 40 F9
	sbc $1E00E4.l,X		; FF E4 00 1E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	ldx $1F00.w		; AE 00 1F
	rti		; 40

	dec $22.b,X		; D6 22
	ldy $00.b,X		; B4 00
	jsr $FB40.w		; 20 40 FB
	sbc $00D4.w,X		; FD D4 00
	and ($40.b,X)		; 21 40
	xce		; FB
	sbc $00DC.w,X		; FD DC 00
	jsl $E51340.l		; 22 40 13 E5
	cmp $00.b,X		; D5 00
	and $40.b,S		; 23 40
	inc A		; 1A
	tsb $EC.b		; 04 EC
	lda $0008.w,X		; BD 08 00
	pha		; 48
	cpx $0C.b		; E4 0C
	cmp $08.b		; C5 08
	cop $48.b		; 02 48
	pea $CDFC.w		; F4 FC CD
	php		; 08
	tsb $48.b		; 04 48
	pea $BDFC.w		; F4 FC BD
	php		; 08
	asl $48.b		; 06 48
	sbc $AD03.w		; ED 03 AD
	php		; 08
	php		; 08
	pha		; 48
	cmp $B31B.w,X		; DD 1B B3
	brk $0A.b		; 00 0A
	rti		; 40

	ora $F3.b		; 05 F3
	lda $0B00.w		; AD 00 0B
	rti		; 40

	cpx $BD0C.w		; EC 0C BD
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $ADFB.w,X		; FD FB AD
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $B5FB.w,X		; FD FB B5
	brk $0E.b		; 00 0E
	rti		; 40

	cmp $23.b,X		; D5 23
	ldx $00.b,Y		; B6 00
	ora $23D540.l		; 0F 40 D5 23
	ldx $1A00.w,Y		; BE 00 1A
	rti		; 40

	sbc $13.b		; E5 13
	lda ($00.b),Y		; B1 00
	tas		; 1B
	rti		; 40

	inc $02.b,X		; F6 02
	sbc ($00.b)		; F2 00
	trb $F640.w		; 1C 40 F6
	cop $FA.b		; 02 FA
	brk $1D.b		; 00 1D
	rti		; 40

	inc $FAFA.w,X		; FE FA FA
	brk $1E.b		; 00 1E
	rti		; 40

	sed		; F8
	brk $EA.b		; 00 EA
	brk $1F.b		; 00 1F
	rti		; 40

	cpx #$18.b		; E0 18
	wai		; CB
	brk $20.b		; 00 20
	rti		; 40

	cpx #$18.b		; E0 18
	cmp ($00.b,S),Y		; D3 00
	and ($40.b,X)		; 21 40
	cld		; D8
	jsr $00C6.w		; 20 C6 00
	jsl $E61240.l		; 22 40 12 E6
	lda $00.b		; A5 00
	and $40.b,S		; 23 40
	ora ($E6.b)		; 12 E6
	lda $2400.w		; AD 00 24
	rti		; 40

	asl A		; 0A
	inc $00B5.w		; EE B5 00
	and $40.b		; 25 40
	ora ($E6.b)		; 12 E6
	lda $00.b,X		; B5 00
	rol $40.b		; 26 40
	xce		; FB
	sbc $00DD.w,X		; FD DD 00
	and [$40.b]		; 27 40
	xce		; FB
	sbc $00E5.w,X		; FD E5 00
	plp		; 28
	rti		; 40

	asl $ED.b,X		; 16 ED
	ora $E4.b,S		; 03 E4
	php		; 08
	brk $48.b		; 00 48
	sbc $E4F3.w,X		; FD F3 E4
	php		; 08
	cop $48.b		; 02 48
	cop $EE.b		; 02 EE
	cpy $0408.w		; CC 08 04
	pha		; 48
	ora $ECEB.w		; 0D EB EC
	brk $06.b		; 00 06
	rti		; 40

	sbc $13.b		; E5 13
	inx		; E8
	brk $07.b		; 00 07
	rti		; 40

	dec $EF1A.w,X		; DE 1A EF
	brk $08.b		; 00 08
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sed		; F8
	brk $09.b		; 00 09
	rti		; 40

	plx		; FA
	inc $00DC.w,X		; FE DC 00
	asl A		; 0A
	rti		; 40

	inc A		; 1A
	dec $00DC.w,X		; DE DC 00
	phd		; 0B
	rti		; 40

	jsl $00DCD6.l		; 22 D6 DC 00
	tsb $2A40.w		; 0C 40 2A
	dec $00DC.w		; CE DC 00
	ora $0D40.w		; 0D 40 0D
	xba		; EB
	cpx $00.b		; E4 00
	asl $1240.w		; 0E 40 12
	inc $CC.b		; E6 CC
	brk $0F.b		; 00 0F
	rti		; 40

	ora ($E6.b)		; 12 E6
	pei ($00.b)		; D4 00
	asl $40.b,X		; 16 40
	cop $F6.b		; 02 F6
	jmp.w [$1700]		; DC 00 17
	rti		; 40

	asl A		; 0A
	inc $00DC.w		; EE DC 00
	clc		; 18
	rti		; 40

	ora ($E6.b)		; 12 E6
	jmp.w [$1900]		; DC 00 19
	rti		; 40

	xce		; FB
	sbc $00F4.w,X		; FD F4 00
	inc A		; 1A
	rti		; 40

	ora $F5.b,S		; 03 F5
	pea $1B00.w		; F4 00 1B
	rti		; 40

	phd		; 0B
	sbc $00F4.w		; ED F4 00
	trb $F340.w		; 1C 40 F3
	ora $FC.b		; 05 FC
	brk $1D.b		; 00 1D
	rti		; 40

	phd		; 0B
	sbc $00FC.w		; ED FC 00
	asl $1440.w,X		; 1E 40 14
	inc $FA.b,X		; F6 FA
	tax		; AA
	php		; 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	tsx		; BA
	php		; 08
	cop $48.b		; 02 48
	asl $F2.b		; 06 F2
	lda ($00.b)		; B2 00
	tsb $40.b		; 04 40
	asl $F2.b		; 06 F2
	tsx		; BA
	brk $05.b		; 00 05
	rti		; 40

	asl $F2.b		; 06 F2
	rep #$00		; C2 00
	asl $40.b		; 06 40
	asl $B7EA.w		; 0E EA B7
	brk $07.b		; 00 07
	rti		; 40

	asl $BFEA.w		; 0E EA BF
	brk $08.b		; 00 08
	rti		; 40

	sbc ($FF.b),Y		; F1 FF
	dex		; CA
	php		; 08
	trb $48.b		; 14 48
	ora ($EF.b,X)		; 01 EF
	dex		; CA
	php		; 08
	asl $48.b,X		; 16 48
	sbc ($FD.b,S),Y		; F3 FD
	phx		; DA
	php		; 08
	clc		; 18
	pha		; 48
	pea $F204.w		; F4 04 F2
	brk $1A.b		; 00 1A
	rti		; 40

	inc $F2FA.w,X		; FE FA F2
	brk $1B.b		; 00 1B
	rti		; 40

	sbc ($06.b)		; F2 06
	plx		; FA
	brk $1C.b		; 00 1C
	rti		; 40

	phd		; 0B
	sbc $00DA.w		; ED DA 00
	ora $FE40.w,X		; 1D 40 FE
	plx		; FA
	plx		; FA
	brk $1E.b		; 00 1E
	rti		; 40

	ora $F5.b,S		; 03 F5
	phx		; DA
	brk $1F.b		; 00 1F
	rti		; 40

	ora $F5.b,S		; 03 F5
	sep #$00		; E2 00
	jsr $F340.w		; 20 40 F3
	ora $EA.b		; 05 EA
	brk $21.b		; 00 21
	rti		; 40

	xce		; FB
	sbc $00EA.w,X		; FD EA 00
	jsl $F50340.l		; 22 40 03 F5
	nop		; EA
	brk $23.b		; 00 23
	rti		; 40

	trb $F6.b		; 14 F6
	plx		; FA
	tsx		; BA
	php		; 08
	brk $48.b		; 00 48
	sbc [$F9.b],Y		; F7 F9
	tax		; AA
	php		; 08
	cop $48.b		; 02 48
	asl $F2.b		; 06 F2
	rep #$00		; C2 00
	tsb $40.b		; 04 40
	asl $BFEA.w		; 0E EA BF
	brk $05.b		; 00 05
	rti		; 40

	asl $E2.b,X		; 16 E2
	lda $400600.l,X		; BF 00 06 40
	asl $F2.b		; 06 F2
	tsx		; BA
	brk $07.b		; 00 07
	rti		; 40

	phd		; 0B
	sbc $00B2.w		; ED B2 00
	php		; 08
	rti		; 40

	sbc ($FF.b),Y		; F1 FF
	dex		; CA
	php		; 08
	trb $48.b		; 14 48
	ora ($EF.b,X)		; 01 EF
	dex		; CA
	php		; 08
	asl $48.b,X		; 16 48
	sbc ($FD.b,S),Y		; F3 FD
	phx		; DA
	php		; 08
	clc		; 18
	pha		; 48
	pea $F204.w		; F4 04 F2
	brk $1A.b		; 00 1A
	rti		; 40

	inc $F2FA.w,X		; FE FA F2
	brk $1B.b		; 00 1B
	rti		; 40

	sbc ($06.b)		; F2 06
	plx		; FA
	brk $1C.b		; 00 1C
	rti		; 40

	phd		; 0B
	sbc $00DA.w		; ED DA 00
	ora $FE40.w,X		; 1D 40 FE
	plx		; FA
	plx		; FA
	brk $1E.b		; 00 1E
	rti		; 40

	ora $F5.b,S		; 03 F5
	phx		; DA
	brk $1F.b		; 00 1F
	rti		; 40

	ora $F5.b,S		; 03 F5
	sep #$00		; E2 00
	jsr $F340.w		; 20 40 F3
	ora $EA.b		; 05 EA
	brk $21.b		; 00 21
	rti		; 40

	xce		; FB
	sbc $00EA.w,X		; FD EA 00
	jsl $F50340.l		; 22 40 03 F5
	nop		; EA
	brk $23.b		; 00 23
	rti		; 40

	ora ($F6.b),Y		; 11 F6
	plx		; FA
	tsx		; BA
	php		; 08
	brk $48.b		; 00 48
	asl $EA.b		; 06 EA
	tsx		; BA
	php		; 08
	cop $48.b		; 02 48
	sbc [$F9.b],Y		; F7 F9
	tax		; AA
	php		; 08
	tsb $48.b		; 04 48
	ora [$F1.b]		; 07 F1
	lda ($00.b)		; B2 00
	asl $40.b		; 06 40
	sbc ($FF.b),Y		; F1 FF
	dex		; CA
	php		; 08
	asl $48.b,X		; 16 48
	ora ($EF.b,X)		; 01 EF
	dex		; CA
	php		; 08
	clc		; 18
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	phx		; DA
	php		; 08
	inc A		; 1A
	pha		; 48
	pea $F204.w		; F4 04 F2
	brk $1C.b		; 00 1C
	rti		; 40

	inc $F2FA.w,X		; FE FA F2
	brk $1D.b		; 00 1D
	rti		; 40

	sbc ($06.b)		; F2 06
	plx		; FA
	brk $1E.b		; 00 1E
	rti		; 40

	phd		; 0B
	sbc $00DA.w		; ED DA 00
	ora $FAFE40.l,X		; 1F 40 FE FA
	plx		; FA
	brk $20.b		; 00 20
	rti		; 40

	ora $F5.b,S		; 03 F5
	phx		; DA
	brk $21.b		; 00 21
	rti		; 40

	ora $F5.b,S		; 03 F5
	sep #$00		; E2 00
	jsl $05F340.l		; 22 40 F3 05
	nop		; EA
	brk $23.b		; 00 23
	rti		; 40

	xce		; FB
	sbc $00EA.w,X		; FD EA 00
	bit $40.b		; 24 40
	ora $F5.b,S		; 03 F5
	nop		; EA
	brk $25.b		; 00 25
	rti		; 40

	ora ($F6.b)		; 12 F6
	plx		; FA
	tsx		; BA
	php		; 08
	brk $48.b		; 00 48
	asl $EA.b		; 06 EA
	tsx		; BA
	php		; 08
	cop $48.b		; 02 48
	sbc [$F9.b],Y		; F7 F9
	tax		; AA
	php		; 08
	tsb $48.b		; 04 48
	ora [$F1.b]		; 07 F1
	lda ($00.b)		; B2 00
	asl $40.b		; 06 40
	asl $E2.b,X		; 16 E2
	tsx		; BA
	brk $07.b		; 00 07
	rti		; 40

	sbc ($FF.b),Y		; F1 FF
	dex		; CA
	php		; 08
	asl $48.b,X		; 16 48
	ora ($EF.b,X)		; 01 EF
	dex		; CA
	php		; 08
	clc		; 18
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	phx		; DA
	php		; 08
	inc A		; 1A
	pha		; 48
	pea $F204.w		; F4 04 F2
	brk $1C.b		; 00 1C
	rti		; 40

	inc $F2FA.w,X		; FE FA F2
	brk $1D.b		; 00 1D
	rti		; 40

	sbc ($06.b)		; F2 06
	plx		; FA
	brk $1E.b		; 00 1E
	rti		; 40

	phd		; 0B
	sbc $00DA.w		; ED DA 00
	ora $FAFE40.l,X		; 1F 40 FE FA
	plx		; FA
	brk $20.b		; 00 20
	rti		; 40

	ora $F5.b,S		; 03 F5
	phx		; DA
	brk $21.b		; 00 21
	rti		; 40

	ora $F5.b,S		; 03 F5
	sep #$00		; E2 00
	jsl $05F340.l		; 22 40 F3 05
	nop		; EA
	brk $23.b		; 00 23
	rti		; 40

	xce		; FB
	sbc $00EA.w,X		; FD EA 00
	bit $40.b		; 24 40
	ora $F5.b,S		; 03 F5
	nop		; EA
	brk $25.b		; 00 25
	rti		; 40

	ora $FA.b,X		; 15 FA
	inc $D2.b,X		; F6 D2
	php		; 08
	brk $48.b		; 00 48
	phd		; 0B
	sbc $E2.b		; E5 E2
	php		; 08
	cop $48.b		; 02 48
	xce		; FB
	sbc $E2.b,X		; F5 E2
	php		; 08
	tsb $48.b		; 04 48
	pea $E104.w		; F4 04 E1
	brk $06.b		; 00 06
	rti		; 40

	cmp $E11B.w,X		; DD 1B E1
	brk $07.b		; 00 07
	rti		; 40

	inc $E70A.w		; EE 0A E7
	brk $08.b		; 00 08
	rti		; 40

	dec $E81A.w,X		; DE 1A E8
	brk $09.b		; 00 09
	rti		; 40

	inc $12.b		; E6 12
	inx		; E8
	brk $0A.b		; 00 0A
	rti		; 40

	sbc [$01.b],Y		; F7 01
	xce		; FB
	brk $0B.b		; 00 0B
	rti		; 40

	plx		; FA
	inc $00FA.w,X		; FE FA 00
	tsb $0240.w		; 0C 40 02
	inc $FA.b,X		; F6 FA
	brk $0D.b		; 00 0D
	rti		; 40

	asl A		; 0A
	inc $00FA.w		; EE FA 00
	asl $E440.w		; 0E 40 E4
	trb $DC.b		; 14 DC
	brk $0F.b		; 00 0F
	rti		; 40

	asl A		; 0A
	inc $00D2.w		; EE D2 00
	asl $40.b,X		; 16 40
	asl A		; 0A
	inc $00DA.w		; EE DA 00
	ora [$40.b],Y		; 17 40
	cpx $DE0C.w		; EC 0C DE
	brk $18.b		; 00 18
	rti		; 40

	jmp.w [$D91C]		; DC 1C D9
	brk $19.b		; 00 19
	rti		; 40

	xce		; FB
	sbc $00F2.w,X		; FD F2 00
	inc A		; 1A
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b)		; F2 00
	tas		; 1B
	rti		; 40

	phd		; 0B
	sbc $00F2.w		; ED F2 00
	trb $F340.w		; 1C 40 F3
	ora $EE.b		; 05 EE
	brk $1D.b		; 00 1D
	rti		; 40

	asl $DC.b,X		; 16 DC
	trb $C5.b		; 14 C5
	php		; 08
	brk $48.b		; 00 48
	pea $BDFC.w		; F4 FC BD
	php		; 08
	cop $48.b		; 02 48
	jsr ($CDF4.w,X)		; FC F4 CD
	php		; 08
	tsb $48.b		; 04 48
	cpx $CD04.w		; EC 04 CD
	php		; 08
	asl $48.b		; 06 48
	sbc ($FD.b,S),Y		; F3 FD
	lda $0808.w		; AD 08 08
	pha		; 48
	cpx $14.b		; E4 14
	lda $0A00.w,X		; BD 00 0A
	rti		; 40

	cpx $BD0C.w		; EC 0C BD
	brk $0B.b		; 00 0B
	rti		; 40

	cpx $C50C.w		; EC 0C C5
	brk $0C.b		; 00 0C
	rti		; 40

	cpx $DD0C.w		; EC 0C DD
	brk $0D.b		; 00 0D
	rti		; 40

	pea $DD04.w		; F4 04 DD
	brk $0E.b		; 00 0E
	rti		; 40

	jsr ($DDFC.w,X)		; FC FC DD
	brk $0F.b		; 00 0F
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp $1A00.w,X		; DD 00 1A
	rti		; 40

	sed		; F8
	brk $EA.b		; 00 EA
	brk $1B.b		; 00 1B
	rti		; 40

	brk $F8.b		; 00 F8
	nop		; EA
	brk $1C.b		; 00 1C
	rti		; 40

	sed		; F8
	brk $F2.b		; 00 F2
	brk $1D.b		; 00 1D
	rti		; 40

	sed		; F8
	brk $FA.b		; 00 FA
	brk $1E.b		; 00 1E
	rti		; 40

	sbc ($17.b,X)		; E1 17
	cmp $1F00.w,X		; DD 00 1F
	rti		; 40

	plx		; FA
	inc $00E2.w,X		; FE E2 00
	jsr $EB40.w		; 20 40 EB
	ora $00B5.w		; 0D B5 00
	and ($40.b,X)		; 21 40
	jmp.w [$D51C]		; DC 1C D5
	brk $22.b		; 00 22
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda $2300.w		; AD 00 23
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda $00.b,X		; B5 00
	bit $40.b		; 24 40
	inc A		; 1A
	sbc $0B.b		; E5 0B
	lda ($08.b)		; B2 08
	brk $48.b		; 00 48
	sbc $FB.b,X		; F5 FB
	lda ($08.b)		; B2 08
	cop $48.b		; 02 48
	ora $EB.b		; 05 EB
	tsx		; BA
	php		; 08
	tsb $48.b		; 04 48
	sbc $0B.b		; E5 0B
	rep #$08		; C2 08
	asl $48.b		; 06 48
	sbc $0B.b		; E5 0B
	cmp ($08.b)		; D2 08
	php		; 08
	pha		; 48
	sbc $FB.b,X		; F5 FB
	rep #$08		; C2 08
	asl A		; 0A
	pha		; 48
	sbc $FB.b,X		; F5 FB
	cmp ($08.b)		; D2 08
	tsb $0548.w		; 0C 48 05
	xba		; EB
	dex		; CA
	php		; 08
	asl $0248.w		; 0E 48 02
	inc $08EA.w		; EE EA 08
	jsr $F248.w		; 20 48 F2
	inc $08EA.w,X		; FE EA 08
	jsl $FEF248.l		; 22 48 F2 FE
	plx		; FA
	php		; 08
	bit $48.b		; 24 48
	ora $DAEB.w		; 0D EB DA
	brk $26.b		; 00 26
	rti		; 40

	ora $E3.b,X		; 15 E3
	cmp $00.b		; C5 00
	and [$40.b]		; 27 40
	sbc $00E209.l		; EF 09 E2 00
	plp		; 28
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sep #$00		; E2 00
	and #$40.b		; 29 40
	sbc $00E2F9.l,X		; FF F9 E2 00
	rol A		; 2A
	rti		; 40

	ora [$F1.b]		; 07 F1
	sep #$00		; E2 00
	pld		; 2B
	rti		; 40

	nop		; EA
	asl $00AA.w		; 0E AA 00
	bit $F240.w		; 2C 40 F2
	asl $AA.b		; 06 AA
	brk $2D.b		; 00 2D
	rti		; 40

	plx		; FA
	inc $00AA.w,X		; FE AA 00
	rol $0240.w		; 2E 40 02
	inc $AA.b,X		; F6 AA
	brk $2F.b		; 00 2F
	rti		; 40

	ora ($E6.b)		; 12 E6
	nop		; EA
	brk $36.b		; 00 36
	rti		; 40

	nop		; EA
	asl $0002.w		; 0E 02 00
	and [$40.b],Y		; 37 40
	sbc $A2FB.w,X		; FD FB A2
	brk $38.b		; 00 38
	rti		; 40

	ora $F3.b		; 05 F3
	lda ($00.b)		; B2 00
	and $0540.w,Y		; 39 40 05
	sbc ($DA.b,S),Y		; F3 DA
	brk $3A.b		; 00 3A
	rti		; 40

	bvc -64.b		; 50 C0
	cmp #$C0.b		; C9 C0
	bit $C1C1.w,X		; 3C C1 C1
	cmp ($5E.b,X)		; C1 5E
.ACCU 16
	rep #$A7		; C2 A7
.ACCU 16
.INDEX 16
	rep #$F0		; C2 F0
.ACCU 16
	rep #$69		; C2 69
	cmp $CA.b,S		; C3 CA
	cmp $25.b,S		; C3 25
	cpy $80.b		; C4 80
	cpy $17.b		; C4 17
	cmp $C0.b		; C5 C0
	cmp $6F.b		; C5 6F
	dec $D0.b		; C6 D0
	dec $37.b		; C6 37
	cmp [$9E.b]		; C7 9E
	cmp [$11.b]		; C7 11
	iny		; C8
	mvn $B5,$C8		; 54 C8 B5
	iny		; C8
	bpl -55.b		; 10 C9
	sta $C9.b,S		; 83 C9
	jsr ($6FC9.w,X)		; FC C9 6F
	dex		; CA
	bne -54.b		; D0 CA
	pld		; 2B
	wai		; CB
	bcs -53.b		; B0 CB
	and $CCB4CC.l		; 2F CC B4 CC
	and $CDA6CD.l,X		; 3F CD A6 CD
	ora ($CE.b,S),Y		; 13 CE
	tax		; AA
	dec $CF1D.w		; CE 1D CF
	adc ($CF.b)		; 72 CF
	cmp $2ECF.w,Y		; D9 CF 2E
	bne -83.b		; D0 AD
	bne  32.b		; D0 20
	cmp ($93.b),Y		; D1 93
	cmp ($E8.b),Y		; D1 E8
	cmp ($3D.b),Y		; D1 3D
	cmp ($92.b)		; D2 92
	cmp ($23.b)		; D2 23
	cmp ($A2.b,S),Y		; D3 A2
	cmp ($0F.b,S),Y		; D3 0F
	pei ($7C.b)		; D4 7C
	pei ($F5.b)		; D4 F5
	pei ($74.b)		; D4 74
	cmp $F3.b,X		; D5 F3
	cmp $66.b,X		; D5 66
	dec $D9.b,X		; D6 D9
	dec $52.b,X		; D6 52
	cmp [$CB.b],Y		; D7 CB
	cmp [$0E.b],Y		; D7 0E
	cld		; D8
	sta ($D8.b,S),Y		; 93 D8
	plx		; FA
	cld		; D8
	adc $FED9.w		; 6D D9 FE
	cmp $DA6B.w,Y		; D9 6B DA
	cpy #$4BDA.w		; C0 DA 4B
	stp		; DB
	txs		; 9A
	stp		; DB
	xce		; FB
	stp		; DB
	sec		; 38
	jmp.w [$DC99]		; DC 99 DC
	tsb $61DD.w		; 0C DD 61
	cmp $DDC8.w,X		; DD C8 DD
	and $DE.b,S		; 23 DE
	txa		; 8A
	dec $DF0F.w,X		; DE 0F DF
	lsr $CBDF.w,X		; 5E DF CB
	cmp $7BE038.l,X		; DF 38 E0 7B
	cpx #$E0E8.w		; E0 E8 E0
	eor #$CEE1.w		; 49 E1 CE
	sbc ($53.b,X)		; E1 53
.INDEX 8
	sep #$DE		; E2 DE
.ACCU 8
.INDEX 8
	sep #$75		; E2 75
	sbc $D0.b,S		; E3 D0
	sbc $25.b,S		; E3 25
	cpx $98.b		; E4 98
	cpx $05.b		; E4 05
	sbc $66.b		; E5 66
	sbc $F1.b		; E5 F1
	sbc $58.b		; E5 58
	inc $B9.b		; E6 B9
	inc $08.b		; E6 08
	sbc [$9F.b]		; E7 9F
	sbc [$E8.b]		; E7 E8
	sbc [$67.b]		; E7 67
	inx		; E8
	dec A		; 3A
	sbc #$B3.b		; E9 B3
	sbc #$38.b		; E9 38
	nop		; EA
	cmp $EA.b,X		; D5 EA
	lsr $C7EB.w		; 4E EB C7
	xba		; EB
	jmp $E9EC.w		; 4C EC E9
	cpx $ED62.w		; EC 62 ED
	cmp $ED.b,S		; C3 ED
	bit $C1EE.w,X		; 3C EE C1
	inc $EF5E.w		; EE 5E EF
	lda $F032EF.l,X		; BF EF 32 F0
	sta ($F0.b,S),Y		; 93 F0
	rts		; 60

	sbc ($EB.b),Y		; F1 EB
	sbc ($52.b),Y		; F1 52
	sbc ($B3.b)		; F2 B3
	sbc ($2C.b)		; F2 2C
	sbc ($8D.b,S),Y		; F3 8D
	sbc ($E8.b,S),Y		; F3 E8
	sbc ($14.b,S),Y		; F3 14
	beq   0.b		; F0 00
	tsx		; BA
	php		; 08
	brk $48.b		; 00 48
	beq   0.b		; F0 00
	dex		; CA
	php		; 08
	cop $48.b		; 02 48
	beq   0.b		; F0 00
	phx		; DA
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FE.b)		; F2 FE
	tax		; AA
	php		; 08
	asl $48.b		; 06 48
	beq   8.b		; F0 08
	nop		; EA
	brk $08.b		; 00 08
	rti		; 40

	brk $F8.b		; 00 F8
	tsx		; BA
	brk $09.b		; 00 09
	rti		; 40

	brk $F8.b		; 00 F8
	rep #$00		; C2 00
	asl A		; 0A
	rti		; 40

	brk $F8.b		; 00 F8
	dex		; CA
	brk $0B.b		; 00 0B
	rti		; 40

	brk $F8.b		; 00 F8
	cmp ($00.b)		; D2 00
	tsb $0040.w		; 0C 40 00
	sed		; F8
	phx		; DA
	brk $0D.b		; 00 0D
	rti		; 40

	brk $F8.b		; 00 F8
	sep #$00		; E2 00
	asl $0840.w		; 0E 40 08
	beq -73.b		; F0 B7
	brk $0F.b		; 00 0F
	rti		; 40

	php		; 08
	beq -65.b		; F0 BF
	brk $18.b		; 00 18
	rti		; 40

	ora #$EF.b		; 09 EF
	sbc ($00.b,S),Y		; F3 00
	ora $EA40.w,Y		; 19 40 EA
	asl $00F2.w		; 0E F2 00
	inc A		; 1A
	rti		; 40

	inx		; E8
	bpl  -6.b		; 10 FA
	brk $1B.b		; 00 1B
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $00.b		; E5 00
	trb $0D40.w		; 1C 40 0D
	xba		; EB
	plx		; FA
	brk $1D.b		; 00 1D
	rti		; 40

	sbc $ED0B.w		; ED 0B ED
	brk $1E.b		; 00 1E
	rti		; 40

	asl $F2.b		; 06 F2
	cpx $1F00.w		; EC 00 1F
	rti		; 40

	ora ($E8.b,S),Y		; 13 E8
	php		; 08
	ldy $0008.w,X		; BC 08 00
	pha		; 48
	beq   0.b		; F0 00
	jmp.w [$0208]		; DC 08 02
	pha		; 48
	beq   0.b		; F0 00
	cpy $0408.w		; CC 08 04
	pha		; 48
	cpx $AC04.w		; EC 04 AC
	php		; 08
	asl $48.b		; 06 48
	sed		; F8
	brk $BC.b		; 00 BC
	brk $08.b		; 00 08
	rti		; 40

	sed		; F8
	brk $C4.b		; 00 C4
	brk $09.b		; 00 09
	rti		; 40

	brk $F8.b		; 00 F8
	cpy $0A00.w		; CC 00 0A
	rti		; 40

	brk $F8.b		; 00 F8
	pei ($00.b)		; D4 00
	phd		; 0B
	rti		; 40

	brk $F8.b		; 00 F8
	jmp.w [$0C00]		; DC 00 0C
	rti		; 40

	php		; 08
	beq -67.b		; F0 BD
	brk $0D.b		; 00 0D
	rti		; 40

	brk $F8.b		; 00 F8
	cpy #$00.b		; C0 00
	asl $0940.w		; 0E 40 09
	sbc $0F00EF.l		; EF EF 00 0F
	rti		; 40

	cop $F6.b		; 02 F6
	cpx $00.b		; E4 00
	clc		; 18
	rti		; 40

	xba		; EB
	ora $00F3.w		; 0D F3 00
	ora $E840.w,Y		; 19 40 E8
	bpl  -6.b		; 10 FA
	brk $1A.b		; 00 1A
	rti		; 40

	ora $F7EB.w		; 0D EB F7
	brk $1B.b		; 00 1B
	rti		; 40

	inc $EC0A.w		; EE 0A EC
	brk $1C.b		; 00 1C
	rti		; 40

	ora $00FBE9.l		; 0F E9 FB 00
	ora $0740.w,X		; 1D 40 07
	sbc ($E7.b),Y		; F1 E7
	brk $1E.b		; 00 1E
	rti		; 40

	asl $F8.b,X		; 16 F8
	sed		; F8
	ldx $0008.w		; AE 08 00
	pha		; 48
	beq   0.b		; F0 00
	dec $0208.w		; CE 08 02
	pha		; 48
	sbc $08BE01.l		; EF 01 BE 08
	tsb $48.b		; 04 48
	bpl -24.b		; 10 E8
	xce		; FB
	brk $06.b		; 00 06
	rti		; 40

	beq   8.b		; F0 08
	ldx $00.b,Y		; B6 00
	ora [$40.b]		; 07 40
	brk $F8.b		; 00 F8
	dec $0800.w		; CE 00 08
	rti		; 40

	brk $F8.b		; 00 F8
	dec $00.b,X		; D6 00
	ora #$40.b		; 09 40
	php		; 08
	beq -25.b		; F0 E7
	brk $0A.b		; 00 0A
	rti		; 40

	sbc ($07.b),Y		; F1 07
	dec $0B00.w,X		; DE 00 0B
	rti		; 40

	sbc $DEFF.w,Y		; F9 FF DE
	brk $0C.b		; 00 0C
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	dec $0D00.w,X		; DE 00 0D
	rti		; 40

	ora #$EF.b		; 09 EF
	sbc $400E00.l		; EF 00 0E 40
	nop		; EA
	asl $00FA.w		; 0E FA 00
	ora $F50340.l		; 0F 40 03 F5
	inc $00.b		; E6 00
	asl $40.b,X		; 16 40
	cpx $F30C.w		; EC 0C F3
	brk $17.b		; 00 17
	rti		; 40

	sbc $EB0B.w		; ED 0B EB
	brk $18.b		; 00 18
	rti		; 40

	ora $F4EB.w		; 0D EB F4
	brk $19.b		; 00 19
	rti		; 40

	ora [$F1.b]		; 07 F1
	dec $00.b		; C6 00
	inc A		; 1A
	rti		; 40

	ora $00C6E9.l		; 0F E9 C6 00
	tas		; 1B
	rti		; 40

	beq   8.b		; F0 08
	inc $00.b		; E6 00
	trb $FF40.w		; 1C 40 FF
	sbc $00BE.w,Y		; F9 BE 00
	ora $FF40.w,X		; 1D 40 FF
	sbc $00C6.w,Y		; F9 C6 00
	asl $1A40.w,X		; 1E 40 1A
	inx		; E8
	php		; 08
	rep #$08		; C2 08
	brk $48.b		; 00 48
	sed		; F8
	brk $EA.b		; 00 EA
	brk $02.b		; 00 02
	rti		; 40

	inx		; E8
	bpl -46.b		; 10 D2
	brk $03.b		; 00 03
	rti		; 40

	beq   8.b		; F0 08
	cmp ($00.b)		; D2 00
	tsb $40.b		; 04 40
	sed		; F8
	brk $CB.b		; 00 CB
	brk $05.b		; 00 05
	rti		; 40

	cpx #$18.b		; E0 18
	cpy #$00.b		; C0 00
	asl $40.b		; 06 40
	cpx #$18.b		; E0 18
	iny		; C8
	brk $07.b		; 00 07
	rti		; 40

	cpx #$18.b		; E0 18
	bne   0.b		; D0 00
	php		; 08
	rti		; 40

	cpx #$18.b		; E0 18
	cld		; D8
	brk $09.b		; 00 09
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc [$00.b],Y		; F7 00
	asl A		; 0A
	rti		; 40

	sbc $13.b		; E5 13
	phx		; DA
	brk $0B.b		; 00 0B
	rti		; 40

	sbc $DA0B.w		; ED 0B DA
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $03.b,X		; F5 03
	phx		; DA
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $13.b		; E5 13
	sep #$00		; E2 00
	asl $E540.w		; 0E 40 E5
	ora ($EA.b,S),Y		; 13 EA
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $13.b		; E5 13
	sbc ($00.b)		; F2 00
	ora ($40.b)		; 12 40
	sbc $EDFB.w,X		; FD FB ED
	brk $13.b		; 00 13
	rti		; 40

	inc $B20A.w		; EE 0A B2
	brk $14.b		; 00 14
	rti		; 40

	inc $02.b,X		; F6 02
	lda ($00.b)		; B2 00
	ora $40.b,X		; 15 40
	inc $12.b		; E6 12
	plx		; FA
	brk $16.b		; 00 16
	rti		; 40

	sbc [$11.b]		; E7 11
	tsx		; BA
	brk $17.b		; 00 17
	rti		; 40

	sbc $00BA09.l		; EF 09 BA 00
	clc		; 18
	rti		; 40

	sbc [$01.b],Y		; F7 01
	tsx		; BA
	brk $19.b		; 00 19
	rti		; 40

	sbc $00E209.l		; EF 09 E2 00
	inc A		; 1A
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sep #$00		; E2 00
	tas		; 1B
	rti		; 40

	sbc $00F4F9.l,X		; FF F9 F4 00
	trb $0C40.w		; 1C 40 0C
	sbc ($FD.b,S),Y		; F3 FD
	cmp [$08.b]		; C7 08
	brk $48.b		; 00 48
	asl $EA.b		; 06 EA
	sep #$08		; E2 08
	cop $48.b		; 02 48
	asl $EA.b		; 06 EA
	sbc ($08.b)		; F2 08
	tsb $48.b		; 04 48
	inc $FA.b,X		; F6 FA
	cmp $480608.l,X		; DF 08 06 48
	inc $FA.b,X		; F6 FA
	sbc $480808.l		; EF 08 08 48
	xce		; FB
	sbc $00D7.w,X		; FD D7 00
	asl A		; 0A
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp $400B00.l		; CF 00 0B 40
	phd		; 0B
	sbc $00D2.w		; ED D2 00
	tsb $0340.w		; 0C 40 03
	sbc $D7.b,X		; F5 D7
	brk $0D.b		; 00 0D
	rti		; 40

	asl $E2.b,X		; 16 E2
	xce		; FB
	brk $0E.b		; 00 0E
	rti		; 40

	sbc ($06.b)		; F2 06
	jsr ($0F00.w,X)		; FC 00 0F
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp [$00.b],Y		; D7 00
	inc A		; 1A
	rti		; 40

	tsb $EC04.w		; 0C 04 EC
	rep #$08		; C2 08
	brk $48.b		; 00 48
	trb $DC.b		; 14 DC
	pei ($08.b)		; D4 08
	cop $48.b		; 02 48
	pea $BCFC.w		; F4 FC BC
	php		; 08
	tsb $48.b		; 04 48
	pea $CCFC.w		; F4 FC CC
	php		; 08
	asl $48.b		; 06 48
	cpx $0C.b		; E4 0C
	ldx $08.b,Y		; B6 08
	php		; 08
	pha		; 48
	tsb $F4.b		; 04 F4
	cmp ($00.b)		; D2 00
	asl A		; 0A
	rti		; 40

	tsb $D2EC.w		; 0C EC D2
	brk $0B.b		; 00 0B
	rti		; 40

	bit $D4.b		; 24 D4
	stp		; DB
	brk $0C.b		; 00 0C
	rti		; 40

	cpx $C40C.w		; EC 0C C4
	brk $0D.b		; 00 0D
	rti		; 40

	cpx $CC0C.w		; EC 0C CC
	brk $0E.b		; 00 0E
	rti		; 40

	trb $E4.b		; 14 E4
	cpy $0F00.w		; CC 00 0F
	rti		; 40

	asl $E2DA.w,X		; 1E DA E2
	brk $1A.b		; 00 1A
	rti		; 40

	trb $E2.b		; 14 E2
	asl $08E5.w		; 0E E5 08
	brk $48.b		; 00 48
	plx		; FA
	inc $ED.b,X		; F6 ED
	php		; 08
	cop $48.b		; 02 48
	nop		; EA
	asl $F5.b		; 06 F5
	php		; 08
	tsb $48.b		; 04 48
	asl A		; 0A
	inc $EF.b		; E6 EF
	php		; 08
	asl $48.b		; 06 48
	jsl $00EAD6.l		; 22 D6 EA 00
	php		; 08
	rti		; 40

	inc A		; 1A
	dec $00F2.w,X		; DE F2 00
	ora #$40.b		; 09 40
	inc A		; 1A
	dec $00FA.w,X		; DE FA 00
	asl A		; 0A
	rti		; 40

	rol A		; 2A
	dec $0002.w		; CE 02 00
	phd		; 0B
	rti		; 40

	inx		; E8
	bpl -35.b		; 10 DD
	brk $0C.b		; 00 0C
	rti		; 40

	beq   8.b		; F0 08
	cmp $0D00.w,X		; DD 00 0D
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $00.b		; E5 00
	asl $F240.w		; 0E 40 F2
	asl $E5.b		; 06 E5
	brk $0F.b		; 00 0F
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc $1800.w		; ED 00 18
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	sbc $00.b,X		; F5 00
	ora $FA40.w,Y		; 19 40 FA
	inc $00FD.w,X		; FE FD 00
	inc A		; 1A
	rti		; 40

	cop $F6.b		; 02 F6
	sbc $1B00.w,X		; FD 00 1B
	rti		; 40

	jsl $00FED6.l		; 22 D6 FE 00
	trb $1240.w		; 1C 40 12
	inc $E7.b		; E6 E7
	brk $1D.b		; 00 1D
	rti		; 40

	inc A		; 1A
	dec $00EA.w,X		; DE EA 00
	asl $2A40.w,X		; 1E 40 2A
	dec $00E8.w		; CE E8 00
	ora $E01040.l,X		; 1F 40 10 E0
	bpl -19.b		; 10 ED
	php		; 08
	brk $48.b		; 00 48
	beq   0.b		; F0 00
	sbc $0208.w		; ED 08 02
	pha		; 48
	ora $F6D3.w,X		; 1D D3 F6
	php		; 08
	tsb $48.b		; 04 48
	php		; 08
	beq -14.b		; F0 F2
	brk $06.b		; 00 06
	rti		; 40

	bpl -24.b		; 10 E8
	sbc ($00.b)		; F2 00
	ora [$40.b]		; 07 40
	brk $F8.b		; 00 F8
	sbc $0800.w		; ED 00 08
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $00.b,X		; F5 00
	ora #$40.b		; 09 40
	inx		; E8
	bpl  -3.b		; 10 FD
	brk $0A.b		; 00 0A
	rti		; 40

	beq   8.b		; F0 08
	sbc $0B00.w,X		; FD 00 0B
	rti		; 40

	sed		; F8
	brk $FD.b		; 00 FD
	brk $0C.b		; 00 0C
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $0D00.w,X		; FD 00 0D
	rti		; 40

	cpx $14.b		; E4 14
	sbc $00.b		; E5 00
	asl $1540.w		; 0E 40 15
	sbc $F2.b,S		; E3 F2
	brk $0F.b		; 00 0F
	rti		; 40

	ora $E3.b,X		; 15 E3
	plx		; FA
	brk $16.b		; 00 16
	rti		; 40

	and $FCCB.w		; 2D CB FC
	brk $17.b		; 00 17
	rti		; 40

	php		; 08
	beq  -6.b		; F0 FA
	brk $18.b		; 00 18
	rti		; 40

	ora $E808E8.l		; 0F E8 08 E8
	php		; 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	inx		; E8
	php		; 08
	cop $48.b		; 02 48
	nop		; EA
	asl $D8.b		; 06 D8
	php		; 08
	tsb $48.b		; 04 48
	bpl -24.b		; 10 E8
	sbc $0600.w,X		; FD 00 06
	rti		; 40

	clc		; 18
	cpx #$FD.b		; E0 FD
	brk $07.b		; 00 07
	rti		; 40

	php		; 08
	beq -19.b		; F0 ED
	brk $08.b		; 00 08
	rti		; 40

	php		; 08
	beq -11.b		; F0 F5
	brk $09.b		; 00 09
	rti		; 40

	inx		; E8
	bpl  -8.b		; 10 F8
	brk $0A.b		; 00 0A
	rti		; 40

	beq   8.b		; F0 08
	sed		; F8
	brk $0B.b		; 00 0B
	rti		; 40

	sed		; F8
	brk $F8.b		; 00 F8
	brk $0C.b		; 00 0C
	rti		; 40

	brk $F8.b		; 00 F8
	sed		; F8
	brk $0D.b		; 00 0D
	rti		; 40

	bpl -24.b		; 10 E8
	sbc $00.b,X		; F5 00
	asl $EB40.w		; 0E 40 EB
	ora $0000.w		; 0D 00 00
	ora $05F340.l		; 0F 40 F3 05
	brk $00.b		; 00 00
	asl $40.b,X		; 16 40
	sbc $00FB.w,X		; FD FB 00
	brk $17.b		; 00 17
	rti		; 40

	ora $ECD31D.l		; 0F 1D D3 EC
	php		; 08
	brk $48.b		; 00 48
	asl $EA.b		; 06 EA
	sbc $08.b,S		; E3 08
	cop $48.b		; 02 48
	dec $EE12.w,X		; DE 12 EE
	php		; 08
	tsb $48.b		; 04 48
	inc $E002.w		; EE 02 E0
	php		; 08
	asl $48.b		; 06 48
	asl $F3EA.w		; 0E EA F3
	brk $08.b		; 00 08
	rti		; 40

	inc $12.b		; E6 12
	inc $00.b		; E6 00
	ora #$40.b		; 09 40
	and $EFCB.w		; 2D CB EF
	brk $0A.b		; 00 0A
	rti		; 40

	asl $E2.b,X		; 16 E2
	sbc [$00.b]		; E7 00
	phd		; 0B
	rti		; 40

	asl $E2.b,X		; 16 E2
	sbc $400C00.l		; EF 00 0C 40
	asl $F2.b		; 06 F2
	sbc ($00.b,S),Y		; F3 00
	ora $FE40.w		; 0D 40 FE
	plx		; FA
	cpx #$00.b		; E0 00
	asl $FE40.w		; 0E 40 FE
	plx		; FA
	inx		; E8
	brk $0F.b		; 00 0F
	rti		; 40

	inc $F00A.w		; EE 0A F0
	brk $18.b		; 00 18
	rti		; 40

	inc $02.b,X		; F6 02
	beq   0.b		; F0 00
	ora $FE40.w,Y		; 19 40 FE
	plx		; FA
	beq   0.b		; F0 00
	inc A		; 1A
	rti		; 40

	ora $08E8.w,Y		; 19 E8 08
	stz $0008.w		; 9C 08 00
	pha		; 48
	sed		; F8
	sed		; F8
	stz $0208.w		; 9C 08 02
	pha		; 48
	cpx #$10.b		; E0 10
	ldy $08.b,X		; B4 08
	tsb $48.b		; 04 48
	php		; 08
	inx		; E8
	jmp.w [$0608]		; DC 08 06
	pha		; 48
	php		; 08
	inx		; E8
	cpy $0808.w		; CC 08 08
	pha		; 48
	sed		; F8
	sed		; F8
	jmp.w [$0A08]		; DC 08 0A
	pha		; 48
	sed		; F8
	sed		; F8
	cpy $0C08.w		; CC 08 0C
	pha		; 48
	inx		; E8
	php		; 08
	pei ($08.b)		; D4 08
	asl $E848.w		; 0E 48 E8
	php		; 08
	cpy $08.b		; C4 08
	jsr $0048.w		; 20 48 00
	beq -68.b		; F0 BC
	php		; 08
	jsl $F00048.l		; 22 48 00 F0
	ldy $2408.w		; AC 08 24
	pha		; 48
	beq   0.b		; F0 00
	ldy $2608.w		; AC 08 26
	pha		; 48
	sbc $EC03.w		; ED 03 EC
	php		; 08
	plp		; 28
	pha		; 48
	sbc $ECF3.w,X		; FD F3 EC
	php		; 08
	rol A		; 2A
	pha		; 48
	ora $ECE3.w		; 0D E3 EC
	php		; 08
	bit $EE48.w		; 2C 48 EE
	cop $FC.b		; 02 FC
	php		; 08
	rol $F848.w		; 2E 48 F8
	brk $BC.b		; 00 BC
	brk $40.b		; 00 40
	rti		; 40

	sed		; F8
	brk $C4.b		; 00 C4
	brk $41.b		; 00 41
	rti		; 40

	beq   8.b		; F0 08
	cpx $00.b		; E4 00
	.db $42, $40		; 42 40
	clc		; 18
	cpx #$E4.b		; E0 E4
	brk $43.b		; 00 43
	rti		; 40

	php		; 08
	beq -92.b		; F0 A4
	brk $44.b		; 00 44
	rti		; 40

	inx		; E8
	bpl -84.b		; 10 AC
	brk $45.b		; 00 45
	rti		; 40

	beq   8.b		; F0 08
	ldy $4600.w,X		; BC 00 46
	rti		; 40

	inc $FCFA.w,X		; FE FA FC
	brk $47.b		; 00 47
	rti		; 40

	inc $04FA.w,X		; FE FA 04
	brk $48.b		; 00 48
	rti		; 40

	trb $00F0.w		; 1C F0 00
	sbc $08.b,S		; E3 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	sbc $08.b,S		; E3 08
	cop $48.b		; 02 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp ($08.b,S),Y		; D3 08
	tsb $48.b		; 04 48
	ora $ED.b,S		; 03 ED
	cmp ($08.b,S),Y		; D3 08
	asl $48.b		; 06 48
	sbc $F303.w		; ED 03 F3
	php		; 08
	php		; 08
	pha		; 48
	ora $F3E3.w		; 0D E3 F3
	php		; 08
	asl A		; 0A
	pha		; 48
	inc $AB02.w		; EE 02 AB
	php		; 08
	tsb $FE48.w		; 0C 48 FE
	sbc ($AB.b)		; F2 AB
	php		; 08
	asl $EE48.w		; 0E 48 EE
	cop $BB.b		; 02 BB
	php		; 08
	jsr $FE48.w		; 20 48 FE
	sbc ($BB.b)		; F2 BB
	php		; 08
	jsl $FCFC48.l		; 22 48 FC FC
	lda $00.b,S		; A3 00
	bit $40.b		; 24 40
	tsb $F4.b		; 04 F4
	lda $00.b,S		; A3 00
	and $40.b		; 25 40
	tsb $A3EC.w		; 0C EC A3
	brk $26.b		; 00 26
	rti		; 40

	bpl -24.b		; 10 E8
	xba		; EB
	brk $27.b		; 00 27
	rti		; 40

	clc		; 18
	cpx #$EB.b		; E0 EB
	brk $28.b		; 00 28
	rti		; 40

	bpl -24.b		; 10 E8
	sbc $00.b,S		; E3 00
	and #$40.b		; 29 40
	ora ($E5.b,S),Y		; 13 E5
	cmp ($00.b,S),Y		; D3 00
	rol A		; 2A
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	stp		; DB
	brk $2B.b		; 00 2B
	rti		; 40

	pea $A304.w		; F4 04 A3
	brk $2C.b		; 00 2C
	rti		; 40

	asl $ABEA.w		; 0E EA AB
	brk $2D.b		; 00 2D
	rti		; 40

	asl $B3EA.w		; 0E EA B3
	brk $2E.b		; 00 2E
	rti		; 40

	asl $BBEA.w		; 0E EA BB
	brk $2F.b		; 00 2F
	rti		; 40

	asl $C3EA.w		; 0E EA C3
	brk $34.b		; 00 34
	rti		; 40

	inc $CB0A.w		; EE 0A CB
	brk $35.b		; 00 35
	rti		; 40

	inc $02.b,X		; F6 02
	wai		; CB
	brk $36.b		; 00 36
	rti		; 40

	inc $CBFA.w,X		; FE FA CB
	brk $37.b		; 00 37
	rti		; 40

	asl $F2.b		; 06 F2
	wai		; CB
	brk $38.b		; 00 38
	rti		; 40

	asl $CBEA.w		; 0E EA CB
	brk $39.b		; 00 39
	rti		; 40

	ora $00F0.w,X		; 1D F0 00
	wai		; CB
	php		; 08
	brk $48.b		; 00 48
	beq   0.b		; F0 00
	stp		; DB
	php		; 08
	cop $48.b		; 02 48
	brk $F0.b		; 00 F0
	wai		; CB
	php		; 08
	tsb $48.b		; 04 48
	brk $F0.b		; 00 F0
	stp		; DB
	php		; 08
	asl $48.b		; 06 48
	sbc $A303.w		; ED 03 A3
	php		; 08
	php		; 08
	pha		; 48
	sbc $A3F3.w,X		; FD F3 A3
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc $EB03.w		; ED 03 EB
	php		; 08
	tsb $0D48.w		; 0C 48 0D
	sbc $EB.b,S		; E3 EB
	php		; 08
	asl $EF48.w		; 0E 48 EF
	ora ($B3.b,X)		; 01 B3
	php		; 08
	jsr $FF48.w		; 20 48 FF
	sbc ($B3.b),Y		; F1 B3
	php		; 08
	jsl $FBFD48.l		; 22 48 FD FB
	cmp $00.b,S		; C3 00
	bit $40.b		; 24 40
	ora $F3.b		; 05 F3
	cmp $00.b,S		; C3 00
	and $40.b		; 25 40
	ora $C3EB.w		; 0D EB C3
	brk $26.b		; 00 26
	rti		; 40

	sbc $EBFB.w,X		; FD FB EB
	brk $27.b		; 00 27
	rti		; 40

	ora $F3.b		; 05 F3
	xba		; EB
	brk $28.b		; 00 28
	rti		; 40

	clc		; 18
	cpx #$D3.b		; E0 D3
	brk $29.b		; 00 29
	rti		; 40

	bpl -24.b		; 10 E8
	wai		; CB
	brk $2A.b		; 00 2A
	rti		; 40

	bpl -24.b		; 10 E8
	cmp ($00.b,S),Y		; D3 00
	pld		; 2B
	rti		; 40

	bpl -24.b		; 10 E8
	stp		; DB
	brk $2C.b		; 00 2C
	rti		; 40

	ora $A3EB.w		; 0D EB A3
	brk $2D.b		; 00 2D
	rti		; 40

	ora $ABEB.w		; 0D EB AB
	brk $2E.b		; 00 2E
	rti		; 40

	sbc $FB0B.w		; ED 0B FB
	brk $2F.b		; 00 2F
	rti		; 40

	sbc $03.b,X		; F5 03
	xce		; FB
	brk $34.b		; 00 34
	rti		; 40

	ora $FBEB.w		; 0D EB FB
	brk $35.b		; 00 35
	rti		; 40

	ora $E3.b,X		; 15 E3
	xce		; FB
	brk $36.b		; 00 36
	rti		; 40

	bpl -24.b		; 10 E8
	sbc $00.b,S		; E3 00
	and [$40.b],Y		; 37 40
	sbc $03.b,X		; F5 03
	cmp $00.b,S		; C3 00
	sec		; 38
	rti		; 40

	ora $00B3E9.l		; 0F E9 B3 00
	and $0F40.w,Y		; 39 40 0F
	sbc #$BB.b		; E9 BB
	brk $3A.b		; 00 3A
	rti		; 40

	bpl -28.b		; 10 E4
	tsb $08E7.w		; 0C E7 08
	brk $48.b		; 00 48
	cpx $0C.b		; E4 0C
	sbc [$08.b],Y		; F7 08
	cop $48.b		; 02 48
	jsr ($E8F4.w,X)		; FC F4 E8
	php		; 08
	tsb $48.b		; 04 48
	sbc [$09.b]		; E7 09
	cmp [$08.b],Y		; D7 08
	asl $48.b		; 06 48
	tsb $F5EC.w		; 0C EC F5
	brk $08.b		; 00 08
	rti		; 40

	tsb $FDEC.w		; 0C EC FD
	brk $09.b		; 00 09
	rti		; 40

	trb $FBDC.w		; 1C DC FB
	brk $0A.b		; 00 0A
	rti		; 40

	trb $E4.b		; 14 E4
	pea $0B00.w		; F4 00 0B
	rti		; 40

	pea $E704.w		; F4 04 E7
	brk $0C.b		; 00 0C
	rti		; 40

	pea $EF04.w		; F4 04 EF
	brk $0D.b		; 00 0D
	rti		; 40

	pea $F704.w		; F4 04 F7
	brk $0E.b		; 00 0E
	rti		; 40

	pea $FF04.w		; F4 04 FF
	brk $0F.b		; 00 0F
	rti		; 40

	trb $E4.b		; 14 E4
	jsr ($1800.w,X)		; FC 00 18
	rti		; 40

	jsr ($F8FC.w,X)		; FC FC F8
	brk $19.b		; 00 19
	rti		; 40

	tsb $F4.b		; 04 F4
	sed		; F8
	brk $1A.b		; 00 1A
	rti		; 40

	tsb $EDEC.w		; 0C EC ED
	brk $1B.b		; 00 1B
	rti		; 40

	ora ($F9.b),Y		; 11 F9
	sbc [$EA.b],Y		; F7 EA
	php		; 08
	brk $48.b		; 00 48
	sbc $DAF7.w,Y		; F9 F7 DA
	php		; 08
	cop $48.b		; 02 48
	ora #$E7.b		; 09 E7
	phx		; DA
	php		; 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $CA.b,X		; F6 CA
	php		; 08
	asl $48.b		; 06 48
	ora $ED.b,S		; 03 ED
	tsx		; BA
	php		; 08
	php		; 08
	pha		; 48
	ora ($E7.b),Y		; 11 E7
	nop		; EA
	brk $0A.b		; 00 0A
	rti		; 40

	sbc ($07.b),Y		; F1 07
	xce		; FB
	brk $0B.b		; 00 0B
	rti		; 40

	ora ($E6.b)		; 12 E6
	cmp ($00.b)		; D2 00
	tsb $F940.w		; 0C 40 F9
	sbc $0D00FA.l,X		; FF FA 00 0D
	rti		; 40

	asl A		; 0A
	inc $00CA.w		; EE CA 00
	asl $0A40.w		; 0E 40 0A
	inc $00D2.w		; EE D2 00
	ora $EF0940.l		; 0F 40 09 EF
	nop		; EA
	brk $1A.b		; 00 1A
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	inc $00.b,X		; F6 00
	tas		; 1B
	rti		; 40

	asl $F2EA.w		; 0E EA F2
	brk $1C.b		; 00 1C
	rti		; 40

	asl $FAEA.w		; 0E EA FA
	brk $1D.b		; 00 1D
	rti		; 40

	asl $E2.b,X		; 16 E2
	sbc $1E00.w,X		; FD 00 1E
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	cpy $1F00.w		; CC 00 1F
	rti		; 40

	ora ($F8.b),Y		; 11 F8
	sed		; F8
	cmp ($08.b,S),Y		; D3 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	sbc $08.b,S		; E3 08
	cop $48.b		; 02 48
	asl $EA.b		; 06 EA
	sbc $08.b,S		; E3 08
	tsb $48.b		; 04 48
	cop $F6.b		; 02 F6
	wai		; CB
	brk $06.b		; 00 06
	rti		; 40

	asl A		; 0A
	inc $00CB.w		; EE CB 00
	ora [$40.b]		; 07 40
	asl $E2.b,X		; 16 E2
	sbc $00.b,S		; E3 00
	php		; 08
	rti		; 40

	php		; 08
	beq -45.b		; F0 D3
	brk $09.b		; 00 09
	rti		; 40

	php		; 08
	beq -37.b		; F0 DB
	brk $0A.b		; 00 0A
	rti		; 40

	inc $02.b,X		; F6 02
	sbc ($00.b,S),Y		; F3 00
	phd		; 0B
	rti		; 40

	inc $F3FA.w,X		; FE FA F3
	brk $0C.b		; 00 0C
	rti		; 40

	asl $F2.b		; 06 F2
	sbc ($00.b,S),Y		; F3 00
	ora $0E40.w		; 0D 40 0E
	nop		; EA
	sbc ($00.b,S),Y		; F3 00
	asl $EF40.w		; 0E 40 EF
	ora #$FB.b		; 09 FB
	brk $0F.b		; 00 0F
	rti		; 40

	sbc [$01.b],Y		; F7 01
	xce		; FB
	brk $16.b		; 00 16
	rti		; 40

	sbc $00FBF9.l,X		; FF F9 FB 00
	ora [$40.b],Y		; 17 40
	ora [$F1.b]		; 07 F1
	xce		; FB
	brk $18.b		; 00 18
	rti		; 40

	ora $00FBE9.l		; 0F E9 FB 00
	ora $1340.w,Y		; 19 40 13
	sed		; F8
	sed		; F8
	lda ($08.b)		; B2 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	rep #$08		; C2 08
	cop $48.b		; 02 48
	sed		; F8
	sed		; F8
	cmp ($08.b)		; D2 08
	tsb $48.b		; 04 48
	sbc ($FF.b),Y		; F1 FF
	sep #$08		; E2 08
	asl $48.b		; 06 48
	ora ($EF.b,X)		; 01 EF
	sep #$08		; E2 08
	php		; 08
	pha		; 48
	php		; 08
	beq -62.b		; F0 C2
	brk $0A.b		; 00 0A
	rti		; 40

	php		; 08
	beq -54.b		; F0 CA
	brk $0B.b		; 00 0B
	rti		; 40

	php		; 08
	beq -46.b		; F0 D2
	brk $0C.b		; 00 0C
	rti		; 40

	php		; 08
	beq -38.b		; F0 DA
	brk $0D.b		; 00 0D
	rti		; 40

	php		; 08
	beq -78.b		; F0 B2
	brk $0E.b		; 00 0E
	rti		; 40

	php		; 08
	beq -70.b		; F0 BA
	brk $0F.b		; 00 0F
	rti		; 40

	plx		; FA
	inc $00AA.w,X		; FE AA 00
	inc A		; 1A
	rti		; 40

	cop $F6.b		; 02 F6
	tax		; AA
	brk $1B.b		; 00 1B
	rti		; 40

	phd		; 0B
	sbc $00F2.w		; ED F2 00
	trb $0B40.w		; 1C 40 0B
	sbc $00FA.w		; ED FA 00
	ora $1340.w,X		; 1D 40 13
	sbc $FA.b		; E5 FA
	brk $1E.b		; 00 1E
	rti		; 40

	inc $F20A.w		; EE 0A F2
	brk $1F.b		; 00 1F
	rti		; 40

	inc $12.b		; E6 12
	plx		; FA
	brk $20.b		; 00 20
	rti		; 40

	inc $FA0A.w		; EE 0A FA
	brk $21.b		; 00 21
	rti		; 40

	phd		; 0B
	ora $ED.b,S		; 03 ED
	stp		; DB
	php		; 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	sbc $08.b,S		; E3 08
	cop $48.b		; 02 48
	sbc ($FD.b,S),Y		; F3 FD
	sbc ($08.b,S),Y		; F3 08
	tsb $48.b		; 04 48
	ora $ED.b,S		; 03 ED
	xba		; EB
	php		; 08
	asl $48.b		; 06 48
	sbc $CBF3.w,X		; FD F3 CB
	php		; 08
	php		; 08
	pha		; 48
	xce		; FB
	sbc $00DB.w,X		; FD DB 00
	asl A		; 0A
	rti		; 40

	ora $F5.b,S		; 03 F5
	xce		; FB
	brk $0B.b		; 00 0B
	rti		; 40

	phd		; 0B
	sbc $00FB.w		; ED FB 00
	tsb $1340.w		; 0C 40 13
	sbc $FB.b		; E5 FB
	brk $0D.b		; 00 0D
	rti		; 40

	ora $CBEB.w		; 0D EB CB
	brk $0E.b		; 00 0E
	rti		; 40

	ora $D3EB.w		; 0D EB D3
	brk $0F.b		; 00 0F
	rti		; 40

	bpl -16.b		; 10 F0
	brk $D2.b		; 00 D2
	php		; 08
	brk $48.b		; 00 48
	pea $C2FC.w		; F4 FC C2
	php		; 08
	cop $48.b		; 02 48
	brk $F8.b		; 00 F8
	phx		; DA
	brk $04.b		; 00 04
	rti		; 40

	cpx $CA0C.w		; EC 0C CA
	brk $05.b		; 00 05
	rti		; 40

	brk $F8.b		; 00 F8
	cmp ($00.b)		; D2 00
	asl $40.b		; 06 40
	tsb $F4.b		; 04 F4
	rep #$00		; C2 00
	ora [$40.b]		; 07 40
	tsb $F4.b		; 04 F4
	dex		; CA
	brk $08.b		; 00 08
	rti		; 40

	tsb $BFEC.w		; 0C EC BF
	brk $09.b		; 00 09
	rti		; 40

	sbc $BAFB.w,X		; FD FB BA
	brk $0A.b		; 00 0A
	rti		; 40

	ora $F3.b		; 05 F3
	tsx		; BA
	brk $0B.b		; 00 0B
	rti		; 40

	sbc [$F9.b],Y		; F7 F9
	sep #$08		; E2 08
	trb $48.b		; 14 48
	beq   8.b		; F0 08
	plx		; FA
	brk $16.b		; 00 16
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc ($00.b)		; F2 00
	ora [$40.b],Y		; 17 40
	cop $F6.b		; 02 F6
	plx		; FA
	brk $18.b		; 00 18
	rti		; 40

	sbc $00EA09.l		; EF 09 EA 00
	ora $0040.w,Y		; 19 40 00
	sed		; F8
	sbc ($00.b)		; F2 00
	inc A		; 1A
	rti		; 40

	ora $BAF000.l		; 0F 00 F0 BA
	php		; 08
	brk $48.b		; 00 48
	beq   0.b		; F0 00
	cmp ($08.b)		; D2 08
	cop $48.b		; 02 48
	sed		; F8
	brk $C2.b		; 00 C2
	brk $04.b		; 00 04
	rti		; 40

	beq   8.b		; F0 08
	dex		; CA
	brk $05.b		; 00 05
	rti		; 40

	sed		; F8
	brk $CA.b		; 00 CA
	brk $06.b		; 00 06
	rti		; 40

	brk $F8.b		; 00 F8
	dex		; CA
	brk $07.b		; 00 07
	rti		; 40

	php		; 08
	beq -54.b		; F0 CA
	brk $08.b		; 00 08
	rti		; 40

	brk $F8.b		; 00 F8
	cmp ($00.b)		; D2 00
	ora #$40.b		; 09 40
	brk $F8.b		; 00 F8
	phx		; DA
	brk $0A.b		; 00 0A
	rti		; 40

	sbc [$F9.b],Y		; F7 F9
	sep #$08		; E2 08
	trb $48.b		; 14 48
	beq   8.b		; F0 08
	plx		; FA
	brk $16.b		; 00 16
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc ($00.b)		; F2 00
	ora [$40.b],Y		; 17 40
	cop $F6.b		; 02 F6
	plx		; FA
	brk $18.b		; 00 18
	rti		; 40

	sbc $00EA09.l		; EF 09 EA 00
	ora $0040.w,Y		; 19 40 00
	sed		; F8
	sbc ($00.b)		; F2 00
	inc A		; 1A
	rti		; 40

	ora ($F7.b,S),Y		; 13 F7
	sbc $08AA.w,Y		; F9 AA 08
	brk $48.b		; 00 48
	sbc [$F9.b],Y		; F7 F9
	tsx		; BA
	php		; 08
	cop $48.b		; 02 48
	jsr ($A2FC.w,X)		; FC FC A2
	brk $04.b		; 00 04
	rti		; 40

	ora [$F1.b]		; 07 F1
	lda ($00.b)		; B2 00
	ora $40.b		; 05 40
	ora [$F1.b]		; 07 F1
	tsx		; BA
	brk $06.b		; 00 06
	rti		; 40

	ora [$F1.b]		; 07 F1
	rep #$00		; C2 00
	ora [$40.b]		; 07 40
	sbc [$F9.b],Y		; F7 F9
	dex		; CA
	php		; 08
	trb $48.b		; 14 48
	plx		; FA
	inc $00F2.w,X		; FE F2 00
	asl $40.b,X		; 16 40
	plx		; FA
	inc $00FA.w,X		; FE FA 00
	ora [$40.b],Y		; 17 40
	cop $F6.b		; 02 F6
	plx		; FA
	brk $18.b		; 00 18
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	nop		; EA
	brk $19.b		; 00 19
	rti		; 40

	xce		; FB
	sbc $00EA.w,X		; FD EA 00
	inc A		; 1A
	rti		; 40

	pea $E204.w		; F4 04 E2
	brk $1B.b		; 00 1B
	rti		; 40

	jsr ($E2FC.w,X)		; FC FC E2
	brk $1C.b		; 00 1C
	rti		; 40

	inc $02.b,X		; F6 02
	phx		; DA
	brk $1D.b		; 00 1D
	rti		; 40

	inc $DAFA.w,X		; FE FA DA
	brk $1E.b		; 00 1E
	rti		; 40

	inc $FA0A.w		; EE 0A FA
	brk $1F.b		; 00 1F
	rti		; 40

	ora [$F1.b]		; 07 F1
	dex		; CA
	brk $20.b		; 00 20
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc ($00.b)		; F2 00
	and ($40.b,X)		; 21 40
	trb $FA.b		; 14 FA
	inc $A2.b,X		; F6 A2
	php		; 08
	brk $48.b		; 00 48
	sbc [$F9.b],Y		; F7 F9
	lda ($08.b)		; B2 08
	cop $48.b		; 02 48
	ora [$F1.b]		; 07 F1
	lda ($00.b)		; B2 00
	tsb $40.b		; 04 40
	ora [$F1.b]		; 07 F1
	tsx		; BA
	brk $05.b		; 00 05
	rti		; 40

	sbc [$01.b],Y		; F7 01
	rep #$00		; C2 00
	asl $40.b		; 06 40
	sbc $00C2F9.l,X		; FF F9 C2 00
	ora [$40.b]		; 07 40
	ora [$F1.b]		; 07 F1
	rep #$00		; C2 00
	php		; 08
	rti		; 40

	sbc [$F9.b],Y		; F7 F9
	dex		; CA
	php		; 08
	trb $48.b		; 14 48
	plx		; FA
	inc $00F2.w,X		; FE F2 00
	asl $40.b,X		; 16 40
	plx		; FA
	inc $00FA.w,X		; FE FA 00
	ora [$40.b],Y		; 17 40
	cop $F6.b		; 02 F6
	plx		; FA
	brk $18.b		; 00 18
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	nop		; EA
	brk $19.b		; 00 19
	rti		; 40

	xce		; FB
	sbc $00EA.w,X		; FD EA 00
	inc A		; 1A
	rti		; 40

	pea $E204.w		; F4 04 E2
	brk $1B.b		; 00 1B
	rti		; 40

	jsr ($E2FC.w,X)		; FC FC E2
	brk $1C.b		; 00 1C
	rti		; 40

	inc $02.b,X		; F6 02
	phx		; DA
	brk $1D.b		; 00 1D
	rti		; 40

	inc $DAFA.w,X		; FE FA DA
	brk $1E.b		; 00 1E
	rti		; 40

	inc $FA0A.w		; EE 0A FA
	brk $1F.b		; 00 1F
	rti		; 40

	ora [$F1.b]		; 07 F1
	dex		; CA
	brk $20.b		; 00 20
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc ($00.b)		; F2 00
	and ($40.b,X)		; 21 40
	ora ($F7.b,S),Y		; 13 F7
	sbc $08AA.w,Y		; F9 AA 08
	brk $48.b		; 00 48
	sbc [$F9.b],Y		; F7 F9
	tsx		; BA
	php		; 08
	cop $48.b		; 02 48
	jsr ($A2FC.w,X)		; FC FC A2
	brk $04.b		; 00 04
	rti		; 40

	ora [$F1.b]		; 07 F1
	lda ($00.b)		; B2 00
	ora $40.b		; 05 40
	ora [$F1.b]		; 07 F1
	tsx		; BA
	brk $06.b		; 00 06
	rti		; 40

	ora [$F1.b]		; 07 F1
	rep #$00		; C2 00
	ora [$40.b]		; 07 40
	sbc [$F9.b],Y		; F7 F9
	dex		; CA
	php		; 08
	trb $48.b		; 14 48
	plx		; FA
	inc $00F2.w,X		; FE F2 00
	asl $40.b,X		; 16 40
	plx		; FA
	inc $00FA.w,X		; FE FA 00
	ora [$40.b],Y		; 17 40
	cop $F6.b		; 02 F6
	plx		; FA
	brk $18.b		; 00 18
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	nop		; EA
	brk $19.b		; 00 19
	rti		; 40

	xce		; FB
	sbc $00EA.w,X		; FD EA 00
	inc A		; 1A
	rti		; 40

	pea $E204.w		; F4 04 E2
	brk $1B.b		; 00 1B
	rti		; 40

	jsr ($E2FC.w,X)		; FC FC E2
	brk $1C.b		; 00 1C
	rti		; 40

	inc $02.b,X		; F6 02
	phx		; DA
	brk $1D.b		; 00 1D
	rti		; 40

	inc $DAFA.w,X		; FE FA DA
	brk $1E.b		; 00 1E
	rti		; 40

	inc $FA0A.w		; EE 0A FA
	brk $1F.b		; 00 1F
	rti		; 40

	ora [$F1.b]		; 07 F1
	dex		; CA
	brk $20.b		; 00 20
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc ($00.b)		; F2 00
	and ($40.b,X)		; 21 40
	bpl -21.b		; 10 EB
	ora $BA.b		; 05 BA
	php		; 08
	brk $48.b		; 00 48
	xce		; FB
	sbc $BA.b,X		; F5 BA
	php		; 08
	cop $48.b		; 02 48
	sbc $08AA01.l		; EF 01 AA 08
	tsb $48.b		; 04 48
	sbc $08AAF1.l,X		; FF F1 AA 08
	asl $48.b		; 06 48
	sbc [$01.b],Y		; F7 01
	ldx #$00.b		; A2 00
	php		; 08
	rti		; 40

	sbc $00A2F9.l,X		; FF F9 A2 00
	ora #$40.b		; 09 40
	sbc ($FD.b,S),Y		; F3 FD
	dex		; CA
	php		; 08
	clc		; 18
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	phx		; DA
	php		; 08
	inc A		; 1A
	pha		; 48
	sbc ($07.b),Y		; F1 07
	sbc ($00.b)		; F2 00
	trb $0340.w		; 1C 40 03
	sbc $CA.b,X		; F5 CA
	brk $1D.b		; 00 1D
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	nop		; EA
	brk $1E.b		; 00 1E
	rti		; 40

	xce		; FB
	sbc $00EA.w,X		; FD EA 00
	ora $FCFC40.l,X		; 1F 40 FC FC
	sbc ($00.b)		; F2 00
	jsr $FC40.w		; 20 40 FC
	jsr ($00FA.w,X)		; FC FA 00
	and ($40.b,X)		; 21 40
	tsb $F4.b		; 04 F4
	plx		; FA
	brk $22.b		; 00 22
	rti		; 40

	inc $FA0A.w		; EE 0A FA
	brk $23.b		; 00 23
	rti		; 40

	ora $BAFFF1.l		; 0F F1 FF BA
	php		; 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	tax		; AA
	php		; 08
	cop $48.b		; 02 48
	ora ($F7.b,X)		; 01 F7
	rep #$00		; C2 00
	tsb $40.b		; 04 40
	inc $B20A.w		; EE 0A B2
	brk $05.b		; 00 05
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	tsx		; BA
	brk $06.b		; 00 06
	rti		; 40

	sbc ($FD.b,S),Y		; F3 FD
	dex		; CA
	php		; 08
	trb $48.b		; 14 48
	sbc ($FD.b,S),Y		; F3 FD
	phx		; DA
	php		; 08
	asl $48.b,X		; 16 48
	sbc ($07.b),Y		; F1 07
	sbc ($00.b)		; F2 00
	clc		; 18
	rti		; 40

	ora $F5.b,S		; 03 F5
	dex		; CA
	brk $19.b		; 00 19
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	nop		; EA
	brk $1A.b		; 00 1A
	rti		; 40

	xce		; FB
	sbc $00EA.w,X		; FD EA 00
	tas		; 1B
	rti		; 40

	jsr ($F2FC.w,X)		; FC FC F2
	brk $1C.b		; 00 1C
	rti		; 40

	jsr ($FAFC.w,X)		; FC FC FA
	brk $1D.b		; 00 1D
	rti		; 40

	tsb $F4.b		; 04 F4
	plx		; FA
	brk $1E.b		; 00 1E
	rti		; 40

	inc $FA0A.w		; EE 0A FA
	brk $1F.b		; 00 1F
	rti		; 40

	asl $03.b,X		; 16 03
	sbc $08BA.w		; ED BA 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	tsx		; BA
	php		; 08
	cop $48.b		; 02 48
	sbc ($FD.b,S),Y		; F3 FD
	dex		; CA
	php		; 08
	tsb $48.b		; 04 48
	sbc $08E201.l		; EF 01 E2 08
	asl $48.b		; 06 48
	xce		; FB
	sbc $00AA.w,X		; FD AA 00
	php		; 08
	rti		; 40

	ora $F5.b,S		; 03 F5
	tax		; AA
	brk $09.b		; 00 09
	rti		; 40

	phd		; 0B
	sbc $00B2.w		; ED B2 00
	asl A		; 0A
	rti		; 40

	ora $F5.b,S		; 03 F5
	sep #$00		; E2 00
	phd		; 0B
	rti		; 40

	ora #$EF.b		; 09 EF
	inc $0C00.w		; EE 00 0C
	rti		; 40

	plx		; FA
	inc $00B2.w,X		; FE B2 00
	ora $0240.w		; 0D 40 02
	inc $B2.b,X		; F6 B2
	brk $0E.b		; 00 0E
	rti		; 40

	ora $F5.b,S		; 03 F5
	dex		; CA
	brk $0F.b		; 00 0F
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp ($00.b)		; D2 00
	clc		; 18
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	phx		; DA
	brk $19.b		; 00 19
	rti		; 40

	xce		; FB
	sbc $00DA.w,X		; FD DA 00
	inc A		; 1A
	rti		; 40

	ora $F5.b,S		; 03 F5
	phx		; DA
	brk $1B.b		; 00 1B
	rti		; 40

	phd		; 0B
	sbc $00F6.w		; ED F6 00
	trb $EB40.w		; 1C 40 EB
	ora $00C1.w		; 0D C1 00
	ora $ED40.w,X		; 1D 40 ED
	phd		; 0B
	sbc ($00.b)		; F2 00
	asl $0640.w,X		; 1E 40 06
	sbc ($E8.b)		; F2 E8
	brk $1F.b		; 00 1F
	rti		; 40

	ora $00FAE9.l		; 0F E9 FA 00
	jsr $EA40.w		; 20 40 EA
	asl $00FA.w		; 0E FA 00
	and ($40.b,X)		; 21 40
	ora $FA.b,X		; 15 FA
	inc $A9.b,X		; F6 A9
	php		; 08
	brk $48.b		; 00 48
	cop $EE.b		; 02 EE
	sbc ($08.b,X)		; E1 08
	cop $48.b		; 02 48
	sbc ($FE.b)		; F2 FE
	cmp $0408.w,Y		; D9 08 04
	pha		; 48
	sbc ($FE.b)		; F2 FE
	lda $0608.w,Y		; B9 08 06
	pha		; 48
	sbc ($FE.b)		; F2 FE
	cmp #$08.b		; C9 08
	php		; 08
	pha		; 48
	asl A		; 0A
	inc $00F1.w		; EE F1 00
	asl A		; 0A
	rti		; 40

	nop		; EA
	asl $00F9.w		; 0E F9 00
	phd		; 0B
	rti		; 40

	asl A		; 0A
	inc $00BC.w		; EE BC 00
	tsb $1240.w		; 0C 40 12
	inc $FC.b		; E6 FC
	brk $0D.b		; 00 0D
	rti		; 40

	nop		; EA
	asl $00BF.w		; 0E BF 00
	asl $EA40.w		; 0E 40 EA
	asl $00E9.w		; 0E E9 00
	ora $06F240.l		; 0F 40 F2 06
	sbc #$00.b		; E9 00
	inc A		; 1A
	rti		; 40

	cop $F6.b		; 02 F6
	lda $1B00.w,Y		; B9 00 1B
	rti		; 40

	cop $F6.b		; 02 F6
	cmp ($00.b,X)		; C1 00
	trb $0240.w		; 1C 40 02
	inc $C9.b,X		; F6 C9
	brk $1D.b		; 00 1D
	rti		; 40

	cop $F6.b		; 02 F6
	cmp ($00.b),Y		; D1 00
	asl $0240.w,X		; 1E 40 02
	inc $D9.b,X		; F6 D9
	brk $1F.b		; 00 1F
	rti		; 40

	tsb $ADEC.w		; 0C EC AD
	brk $20.b		; 00 20
	rti		; 40

	tsb $B5EC.w		; 0C EC B5
	brk $21.b		; 00 21
	rti		; 40

	inc $F10A.w		; EE 0A F1
	brk $22.b		; 00 22
	rti		; 40

	asl $F9EA.w		; 0E EA F9
	brk $23.b		; 00 23
	rti		; 40

	asl $FA.b,X		; 16 FA
	inc $AA.b,X		; F6 AA
	php		; 08
	brk $48.b		; 00 48
	sbc ($FE.b)		; F2 FE
	tsx		; BA
	php		; 08
	cop $48.b		; 02 48
	sbc ($FE.b)		; F2 FE
	dex		; CA
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FD.b,S),Y		; F3 FD
	phx		; DA
	php		; 08
	asl $48.b		; 06 48
	nop		; EA
	asl $00C2.w		; 0E C2 00
	php		; 08
	rti		; 40

	nop		; EA
	asl $00FA.w		; 0E FA 00
	ora #$40.b		; 09 40
	cop $F6.b		; 02 F6
	tsx		; BA
	brk $0A.b		; 00 0A
	rti		; 40

	cop $F6.b		; 02 F6
	rep #$00		; C2 00
	phd		; 0B
	rti		; 40

	cop $F6.b		; 02 F6
	dex		; CA
	brk $0C.b		; 00 0C
	rti		; 40

	cop $F6.b		; 02 F6
	cmp ($00.b)		; D2 00
	ora $0A40.w		; 0D 40 0A
	inc $00C0.w		; EE C0 00
	asl $0940.w		; 0E 40 09
	sbc $0F00EE.l		; EF EE 00 0F
	rti		; 40

	ora $F5.b,S		; 03 F5
	phx		; DA
	brk $18.b		; 00 18
	rti		; 40

	ora $F5.b,S		; 03 F5
	sep #$00		; E2 00
	ora $0C40.w,Y		; 19 40 0C
	cpx $00F6.w		; EC F6 00
	inc A		; 1A
	rti		; 40

	ora $B2EB.w		; 0D EB B2
	brk $1B.b		; 00 1B
	rti		; 40

	ora $BAEB.w		; 0D EB BA
	brk $1C.b		; 00 1C
	rti		; 40

	ora $F3.b		; 05 F3
	nop		; EA
	brk $1D.b		; 00 1D
	rti		; 40

	inc $EA0A.w		; EE 0A EA
	brk $1E.b		; 00 1E
	rti		; 40

	inc $02.b,X		; F6 02
	nop		; EA
	brk $1F.b		; 00 1F
	rti		; 40

	inc $F20A.w		; EE 0A F2
	brk $20.b		; 00 20
	rti		; 40

	ora $00FAE9.l		; 0F E9 FA 00
	and ($40.b,X)		; 21 40
	ora [$F1.b],Y		; 17 F1
	sbc $0008CA.l,X		; FF CA 08 00
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	lda ($08.b)		; B2 08
	cop $48.b		; 02 48
	ora $ED.b,S		; 03 ED
	lda ($08.b)		; B2 08
	tsb $48.b		; 04 48
	php		; 08
	beq -62.b		; F0 C2
	brk $06.b		; 00 06
	rti		; 40

	beq   8.b		; F0 08
	sep #$00		; E2 00
	ora [$40.b]		; 07 40
	sed		; F8
	brk $E2.b		; 00 E2
	brk $08.b		; 00 08
	rti		; 40

	brk $F8.b		; 00 F8
	sep #$00		; E2 00
	ora #$40.b		; 09 40
	ora ($F7.b,X)		; 01 F7
	nop		; EA
	brk $0A.b		; 00 0A
	rti		; 40

	beq   8.b		; F0 08
	rep #$00		; C2 00
	phd		; 0B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	dex		; CA
	brk $0C.b		; 00 0C
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b)		; D2 00
	ora $E940.w		; 0D 40 E9
	ora $0E00F8.l		; 0F F8 00 0E
	rti		; 40

	plx		; FA
	inc $00AA.w,X		; FE AA 00
	ora $F60240.l		; 0F 40 02 F6
	tax		; AA
	brk $16.b		; 00 16
	rti		; 40

	xba		; EB
	ora $00EA.w		; 0D EA 00
	ora [$40.b],Y		; 17 40
	sbc ($05.b,S),Y		; F3 05
	nop		; EA
	brk $18.b		; 00 18
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b)		; F2 00
	ora $F840.w,Y		; 19 40 F8
	brk $C2.b		; 00 C2
	brk $1A.b		; 00 1A
	rti		; 40

	brk $F8.b		; 00 F8
	rep #$00		; C2 00
	tas		; 1B
	rti		; 40

	sbc $F20B.w		; ED 0B F2
	brk $1C.b		; 00 1C
	rti		; 40

	asl $F2.b		; 06 F2
	plx		; FA
	brk $1D.b		; 00 1D
	rti		; 40

	sbc [$01.b],Y		; F7 01
	phx		; DA
	brk $1E.b		; 00 1E
	rti		; 40

	sbc $00DAF9.l,X		; FF F9 DA 00
	ora $F21140.l,X		; 1F 40 11 F2
	inc $08B2.w,X		; FE B2 08
	brk $48.b		; 00 48
	cop $EE.b		; 02 EE
	lda ($08.b)		; B2 08
	cop $48.b		; 02 48
	inc $FA.b,X		; F6 FA
	cmp ($08.b)		; D2 08
	tsb $48.b		; 04 48
	inc $FA.b,X		; F6 FA
	sep #$08		; E2 08
	asl $48.b		; 06 48
	sbc ($07.b),Y		; F1 07
	plx		; FA
	brk $08.b		; 00 08
	rti		; 40

	plx		; FA
	inc $00AA.w,X		; FE AA 00
	ora #$40.b		; 09 40
	cop $F6.b		; 02 F6
	tax		; AA
	brk $0A.b		; 00 0A
	rti		; 40

	asl A		; 0A
	inc $00AA.w		; EE AA 00
	phd		; 0B
	rti		; 40

	pea $CA04.w		; F4 04 CA
	brk $0C.b		; 00 0C
	rti		; 40

	jsr ($CAFC.w,X)		; FC FC CA
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $F4.b		; 04 F4
	dex		; CA
	brk $0E.b		; 00 0E
	rti		; 40

	pea $F204.w		; F4 04 F2
	brk $0F.b		; 00 0F
	rti		; 40

	cop $F6.b		; 02 F6
	plx		; FA
	brk $18.b		; 00 18
	rti		; 40

	brk $F8.b		; 00 F8
	sbc ($00.b)		; F2 00
	ora $EF40.w,Y		; 19 40 EF
	ora #$C2.b		; 09 C2
	brk $1A.b		; 00 1A
	rti		; 40

	sbc [$01.b],Y		; F7 01
	rep #$00		; C2 00
	tas		; 1B
	rti		; 40

	sbc $00C2F9.l,X		; FF F9 C2 00
	trb $1240.w		; 1C 40 12
	brk $F0.b		; 00 F0
	sep #$08		; E2 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	tsx		; BA
	php		; 08
	cop $48.b		; 02 48
	beq   0.b		; F0 00
	tsx		; BA
	php		; 08
	tsb $48.b		; 04 48
	beq   0.b		; F0 00
	dex		; CA
	php		; 08
	asl $48.b		; 06 48
	sbc $AAF7.w,Y		; F9 F7 AA
	php		; 08
	php		; 08
	pha		; 48
	beq   8.b		; F0 08
	plx		; FA
	brk $0A.b		; 00 0A
	rti		; 40

	brk $F8.b		; 00 F8
	dex		; CA
	brk $0B.b		; 00 0B
	rti		; 40

	brk $F8.b		; 00 F8
	cmp ($00.b)		; D2 00
	tsb $F840.w		; 0C 40 F8
	brk $DA.b		; 00 DA
	brk $0D.b		; 00 0D
	rti		; 40

	brk $F8.b		; 00 F8
	phx		; DA
	brk $0E.b		; 00 0E
	rti		; 40

	ora #$EF.b		; 09 EF
	sbc ($00.b)		; F2 00
	ora $E81040.l		; 0F 40 10 E8
	tsx		; BA
	brk $1A.b		; 00 1A
	rti		; 40

	ora #$EF.b		; 09 EF
	ldy $1B00.w		; AC 00 1B
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc ($00.b)		; F2 00
	trb $0B40.w		; 1C 40 0B
	sbc $00FA.w		; ED FA 00
	ora $0C40.w,X		; 1D 40 0C
	cpx $00B2.w		; EC B2 00
	asl $F540.w,X		; 1E 40 F5
	ora $EA.b,S		; 03 EA
	brk $1F.b		; 00 1F
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sep #$00		; E2 00
	jsr $1940.w		; 20 40 19
	plx		; FA
	inc $AD.b,X		; F6 AD
	php		; 08
	brk $48.b		; 00 48
	plx		; FA
	inc $BD.b,X		; F6 BD
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $CD.b,X		; F6 CD
	php		; 08
	tsb $48.b		; 04 48
	sbc $E5FF.w,Y		; F9 FF E5
	brk $06.b		; 00 06
	rti		; 40

	nop		; EA
	asl $00C5.w		; 0E C5 00
	ora [$40.b]		; 07 40
	beq   8.b		; F0 08
	sbc $0800.w		; ED 00 08
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp $0900.w,X		; DD 00 09
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc $00.b		; E5 00
	asl A		; 0A
	rti		; 40

	sbc ($06.b)		; F2 06
	lda $00.b,X		; B5 00
	phd		; 0B
	rti		; 40

	sbc ($06.b)		; F2 06
	lda $0C00.w,X		; BD 00 0C
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp $00.b		; C5 00
	ora $F240.w		; 0D 40 F2
	asl $CD.b		; 06 CD
	brk $0E.b		; 00 0E
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp $00.b,X		; D5 00
	ora $EE0A40.l		; 0F 40 0A EE
	cpy #$00.b		; C0 00
	asl $40.b,X		; 16 40
	asl A		; 0A
	inc $00F0.w		; EE F0 00
	ora [$40.b],Y		; 17 40
	xba		; EB
	ora $00F9.w		; 0D F9 00
	clc		; 18
	rti		; 40

	tsb $F4.b		; 04 F4
	cpx $00.b		; E4 00
	ora $FC40.w,Y		; 19 40 FC
	jsr ($00A5.w,X)		; FC A5 00
	inc A		; 1A
	rti		; 40

	tsb $B0EC.w		; 0C EC B0
	brk $1B.b		; 00 1B
	rti		; 40

	tsb $B8EC.w		; 0C EC B8
	brk $1C.b		; 00 1C
	rti		; 40

	ora $F8EB.w		; 0D EB F8
	brk $1D.b		; 00 1D
	rti		; 40

	sbc $F10B.w		; ED 0B F1
	brk $1E.b		; 00 1E
	rti		; 40

	inc $02.b,X		; F6 02
	cmp $1F00.w,X		; DD 00 1F
	rti		; 40

	ora [$F1.b]		; 07 F1
	nop		; EA
	brk $20.b		; 00 20
	rti		; 40

	ora $00FEE9.l		; 0F E9 FE 00
	and ($40.b,X)		; 21 40
	ora ($FA.b,S),Y		; 13 FA
	inc $AD.b,X		; F6 AD
	php		; 08
	brk $48.b		; 00 48
	sed		; F8
	brk $D5.b		; 00 D5
	brk $02.b		; 00 02
	rti		; 40

	brk $F8.b		; 00 F8
	cmp $00.b,X		; D5 00
	ora $40.b,S		; 03 40
	sbc ($07.b),Y		; F1 07
	cmp $0400.w		; CD 00 04
	rti		; 40

	sbc $CDFF.w,Y		; F9 FF CD
	brk $05.b		; 00 05
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp $0600.w		; CD 00 06
	rti		; 40

	beq   8.b		; F0 08
	cmp $00.b,X		; D5 00
	ora [$40.b]		; 07 40
	sbc ($06.b)		; F2 06
	lda $00.b,X		; B5 00
	php		; 08
	rti		; 40

	sbc ($06.b)		; F2 06
	lda $0900.w,X		; BD 00 09
	rti		; 40

	plx		; FA
	inc $00BD.w,X		; FE BD 00
	asl A		; 0A
	rti		; 40

	cop $F6.b		; 02 F6
	lda $0B00.w,X		; BD 00 0B
	rti		; 40

	sbc $C50B.w		; ED 0B C5
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $03.b,X		; F5 03
	cmp $00.b		; C5 00
	ora $FD40.w		; 0D 40 FD
	xce		; FB
	cmp $00.b		; C5 00
	asl $0540.w		; 0E 40 05
	sbc ($C5.b,S),Y		; F3 C5
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $00DD09.l		; EF 09 DD 00
	ora ($40.b)		; 12 40
	sbc [$01.b],Y		; F7 01
	cmp $1300.w,X		; DD 00 13
	rti		; 40

	sbc $00DDF9.l,X		; FF F9 DD 00
	trb $40.b		; 14 40
	ora [$F1.b]		; 07 F1
	dec $00.b,X		; D6 00
	ora $40.b,X		; 15 40
	asl $F8F8.w		; 0E F8 F8
	dec $08.b,X		; D6 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	ldx $0208.w		; AE 08 02
	pha		; 48
	inx		; E8
	php		; 08
	ldx $0408.w,Y		; BE 08 04
	pha		; 48
	sed		; F8
	sed		; F8
	ldx $0608.w,Y		; BE 08 06
	pha		; 48
	sbc ($FE.b)		; F2 FE
	inc $0808.w		; EE 08 08
	pha		; 48
	beq   8.b		; F0 08
	dec $0A00.w		; CE 00 0A
	rti		; 40

	sed		; F8
	brk $CE.b		; 00 CE
	brk $0B.b		; 00 0B
	rti		; 40

	brk $F8.b		; 00 F8
	dec $0C00.w		; CE 00 0C
	rti		; 40

	plx		; FA
	inc $00AC.w,X		; FE AC 00
	ora $0240.w		; 0D 40 02
	inc $AC.b,X		; F6 AC
	brk $0E.b		; 00 0E
	rti		; 40

	beq   8.b		; F0 08
	ldx $00.b,Y		; B6 00
	ora $03F540.l		; 0F 40 F5 03
	inc $00.b		; E6 00
	inc A		; 1A
	rti		; 40

	sbc $E6FB.w,X		; FD FB E6
	brk $1B.b		; 00 1B
	rti		; 40

	sbc [$01.b],Y		; F7 01
	inc $1C00.w,X		; FE 00 1C
	rti		; 40

	ora ($F4.b),Y		; 11 F4
	jsr ($08D4.w,X)		; FC D4 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	ldy $08.b,X		; B4 08
	cop $48.b		; 02 48
	inc $C402.w		; EE 02 C4
	php		; 08
	tsb $48.b		; 04 48
	asl $EA.b		; 06 EA
	lda ($08.b),Y		; B1 08
	asl $48.b		; 06 48
	bpl -24.b		; 10 E8
	cmp $400800.l		; CF 00 08 40
	sbc $E40B.w		; ED 0B E4
	brk $09.b		; 00 09
	rti		; 40

	sbc $03.b,X		; F5 03
	cpx $00.b		; E4 00
	asl A		; 0A
	rti		; 40

	sbc $F40B.w		; ED 0B F4
	brk $0B.b		; 00 0B
	rti		; 40

	sbc $FC0B.w		; ED 0B FC
	brk $0C.b		; 00 0C
	rti		; 40

	inc $B40A.w		; EE 0A B4
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $CCEC.w		; 0C EC CC
	brk $0E.b		; 00 0E
	rti		; 40

	cpx $EC0C.w		; EC 0C EC
	brk $0F.b		; 00 0F
	rti		; 40

	inc $C4FA.w,X		; FE FA C4
	brk $18.b		; 00 18
	rti		; 40

	inc $CCFA.w,X		; FE FA CC
	brk $19.b		; 00 19
	rti		; 40

	asl $F2.b		; 06 F2
	cmp ($00.b,X)		; C1 00
	inc A		; 1A
	rti		; 40

	asl $F2.b		; 06 F2
	cmp #$00.b		; C9 00
	tas		; 1B
	rti		; 40

	pea $EC04.w		; F4 04 EC
	brk $1C.b		; 00 1C
	rti		; 40

	asl $17D9.w		; 0E D9 17
	ldy $0008.w,X		; BC 08 00
	pha		; 48
	sbc #$07.b		; E9 07
	ldy $0208.w,X		; BC 08 02
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	lda [$08.b],Y		; B7 08
	tsb $48.b		; 04 48
	ora ($DF.b),Y		; 11 DF
	cpy #$08.b		; C0 08
	asl $48.b		; 06 48
	cmp #$2F.b		; C9 2F
	cpy $00.b		; C4 00
	php		; 08
	rti		; 40

	sbc $B5FF.w,Y		; F9 FF B5
	brk $09.b		; 00 09
	rti		; 40

	sbc $BDFF.w,Y		; F9 FF BD
	brk $0A.b		; 00 0A
	rti		; 40

	sbc $C5FF.w,Y		; F9 FF C5
	brk $0B.b		; 00 0B
	rti		; 40

	ora #$EF.b		; 09 EF
	lda $400C00.l		; AF 00 0C 40
	cmp ($27.b),Y		; D1 27
	cpy $00.b		; C4 00
	ora $0140.w		; 0D 40 01
	sbc [$C7.b],Y		; F7 C7
	brk $0E.b		; 00 0E
	rti		; 40

	ora #$EF.b		; 09 EF
	cmp [$00.b]		; C7 00
	ora $E71140.l		; 0F 40 11 E7
	clv		; B8
	brk $18.b		; 00 18
	rti		; 40

	sbc ($07.b),Y		; F1 07
	ldy $00.b,X		; B4 00
	ora $1540.w,Y		; 19 40 15
	cop $EE.b		; 02 EE
	ldx #$08.b		; A2 08
	brk $48.b		; 00 48
	tsb $EC.b		; 04 EC
	cmp #$08.b		; C9 08
	cop $48.b		; 02 48
	sbc $BAFF.w,Y		; F9 FF BA
	brk $04.b		; 00 04
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	tsx		; BA
	brk $05.b		; 00 05
	rti		; 40

	ora #$EF.b		; 09 EF
	tsx		; BA
	brk $06.b		; 00 06
	rti		; 40

	plx		; FA
	inc $00C2.w,X		; FE C2 00
	ora [$40.b]		; 07 40
	cop $F6.b		; 02 F6
	rep #$00		; C2 00
	php		; 08
	rti		; 40

	asl A		; 0A
	inc $00C2.w		; EE C2 00
	ora #$40.b		; 09 40
	brk $F8.b		; 00 F8
	lda ($00.b)		; B2 00
	asl A		; 0A
	rti		; 40

	cop $F6.b		; 02 F6
	sbc ($00.b,X)		; E1 00
	phd		; 0B
	rti		; 40

	asl A		; 0A
	inc $00E1.w		; EE E1 00
	tsb $0340.w		; 0C 40 03
	sbc $92.b,X		; F5 92
	brk $0D.b		; 00 0D
	rti		; 40

	ora $F5.b,S		; 03 F5
	txs		; 9A
	brk $0E.b		; 00 0E
	rti		; 40

	ora $F5.b,S		; 03 F5
	sta $0F00.w		; 8D 00 0F
	rti		; 40

	jsr ($CAFC.w,X)		; FC FC CA
	brk $14.b		; 00 14
	rti		; 40

	jsr ($D2FC.w,X)		; FC FC D2
	brk $15.b		; 00 15
	rti		; 40

	jsr ($DAFC.w,X)		; FC FC DA
	brk $16.b		; 00 16
	rti		; 40

	trb $E4.b		; 14 E4
	cmp #$00.b		; C9 00
	ora [$40.b],Y		; 17 40
	php		; 08
	beq -78.b		; F0 B2
	brk $18.b		; 00 18
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp $1900.w,Y		; D9 00 19
	rti		; 40

	tsb $D9EC.w		; 0C EC D9
	brk $1A.b		; 00 1A
	rti		; 40

	ora ($10.b,S),Y		; 13 10
	cpx #$BF.b		; E0 BF
	php		; 08
	brk $48.b		; 00 48
	jsr $B1D0.w		; 20 D0 B1
	php		; 08
	cop $48.b		; 02 48
	beq   0.b		; F0 00
	cmp ($08.b,X)		; C1 08
	tsb $48.b		; 04 48
	brk $F0.b		; 00 F0
	lda $0608.w,Y		; B9 08 06
	pha		; 48
	sed		; F8
	brk $E1.b		; 00 E1
	brk $08.b		; 00 08
	rti		; 40

	brk $F8.b		; 00 F8
	sbc ($00.b,X)		; E1 00
	ora #$40.b		; 09 40
	clc		; 18
	cpx #$B7.b		; E0 B7
	brk $0A.b		; 00 0A
	rti		; 40

	bmi -56.b		; 30 C8
	lda ($00.b),Y		; B1 00
	phd		; 0B
	rti		; 40

	jsr $C1D8.w		; 20 D8 C1
	brk $0C.b		; 00 0C
	rti		; 40

	brk $F8.b		; 00 F8
	cmp #$00.b		; C9 00
	ora $0840.w		; 0D 40 08
	beq -55.b		; F0 C9
	brk $0E.b		; 00 0E
	rti		; 40

	ora $CFEB.w		; 0D EB CF
	brk $0F.b		; 00 0F
	rti		; 40

	ora $E3.b,X		; 15 E3
	cmp $401800.l		; CF 00 18 40
	sbc $B90B.w		; ED 0B B9
	brk $19.b		; 00 19
	rti		; 40

	sbc $03.b,X		; F5 03
	cmp ($00.b),Y		; D1 00
	inc A		; 1A
	rti		; 40

	sbc $D1FB.w,X		; FD FB D1
	brk $1B.b		; 00 1B
	rti		; 40

	ora $F3.b		; 05 F3
	cmp ($00.b),Y		; D1 00
	trb $F740.w		; 1C 40 F7
	ora ($D9.b,X)		; 01 D9
	brk $1D.b		; 00 1D
	rti		; 40

	sbc $00D9F9.l,X		; FF F9 D9 00
	asl $1340.w,X		; 1E 40 13
	beq   0.b		; F0 00
	ldy $0008.w		; AC 08 00
	pha		; 48
	beq   0.b		; F0 00
	ldy $0208.w,X		; BC 08 02
	pha		; 48
	brk $F0.b		; 00 F0
	clv		; B8
	php		; 08
	tsb $48.b		; 04 48
	brk $F0.b		; 00 F0
	iny		; C8
	php		; 08
	asl $48.b		; 06 48
	sed		; F8
	brk $CC.b		; 00 CC
	brk $08.b		; 00 08
	rti		; 40

	brk $F8.b		; 00 F8
	ldx $0900.w		; AE 00 09
	rti		; 40

	bpl -24.b		; 10 E8
	clv		; B8
	brk $0A.b		; 00 0A
	rti		; 40

	clc		; 18
	cpx #$CA.b		; E0 CA
	brk $0B.b		; 00 0B
	rti		; 40

	beq   8.b		; F0 08
	cpy $0C00.w		; CC 00 0C
	rti		; 40

	bpl -24.b		; 10 E8
	iny		; C8
	brk $0D.b		; 00 0D
	rti		; 40

	bpl -24.b		; 10 E8
	bne   0.b		; D0 00
	asl $E840.w		; 0E 40 E8
	bpl -55.b		; 10 C9
	brk $0F.b		; 00 0F
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	dex		; CA
	brk $18.b		; 00 18
	rti		; 40

	tas		; 1B
	cmp $00E2.w,X		; DD E2 00
	ora $2440.w,Y		; 19 40 24
	pei ($ED.b)		; D4 ED
	brk $1A.b		; 00 1A
	rti		; 40

	tsb $D8EC.w		; 0C EC D8
	brk $1B.b		; 00 1B
	rti		; 40

	trb $E4.b		; 14 E4
	cld		; D8
	brk $1C.b		; 00 1C
	rti		; 40

	ora $E3.b,X		; 15 E3
	cpx #$00.b		; E0 00
	ora $1E40.w,X		; 1D 40 1E
	phx		; DA
	nop		; EA
	brk $1E.b		; 00 1E
	rti		; 40

	asl $F8F8.w		; 0E F8 F8
	cmp $08.b		; C5 08
	brk $48.b		; 00 48
	cop $EE.b		; 02 EE
	lda $08.b,X		; B5 08
	cop $48.b		; 02 48
	beq   8.b		; F0 08
	cpy $0400.w		; CC 00 04
	rti		; 40

	beq   8.b		; F0 08
	pei ($00.b)		; D4 00
	ora $40.b		; 05 40
	bpl -24.b		; 10 E8
	rep #$00		; C2 00
	asl $40.b		; 06 40
	php		; 08
	beq -59.b		; F0 C5
	brk $07.b		; 00 07
	rti		; 40

	php		; 08
	beq -51.b		; F0 CD
	brk $08.b		; 00 08
	rti		; 40

	sed		; F8
	brk $D5.b		; 00 D5
	brk $09.b		; 00 09
	rti		; 40

	brk $F8.b		; 00 F8
	cmp $00.b,X		; D5 00
	asl A		; 0A
	rti		; 40

	php		; 08
	beq -43.b		; F0 D5
	brk $0B.b		; 00 0B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda $400C00.l		; AF 00 0C 40
	ora #$EF.b		; 09 EF
	lda $400D00.l		; AF 00 0D 40
	plx		; FA
	inc $00BD.w,X		; FE BD 00
	asl $1040.w		; 0E 40 10
	inx		; E8
	dex		; CA
	brk $0F.b		; 00 0F
	rti		; 40

	asl $FCF4.w		; 0E F4 FC
	ldx #$08.b		; A2 08
	brk $48.b		; 00 48
	plx		; FA
	inc $00B2.w,X		; FE B2 00
	cop $40.b		; 02 40
	sbc ($06.b)		; F2 06
	lda ($00.b)		; B2 00
	ora $40.b,S		; 03 40
	sed		; F8
	sed		; F8
	sep #$08		; E2 08
	ora ($48.b)		; 12 48
	sed		; F8
	sed		; F8
	cmp ($08.b)		; D2 08
	trb $48.b		; 14 48
	beq   0.b		; F0 00
	tsx		; BA
	php		; 08
	asl $48.b,X		; 16 48
	pea $F2FC.w		; F4 FC F2
	php		; 08
	clc		; 18
	pha		; 48
	brk $F8.b		; 00 F8
	tsx		; BA
	brk $1A.b		; 00 1A
	rti		; 40

	brk $F8.b		; 00 F8
	rep #$00		; C2 00
	tas		; 1B
	rti		; 40

	beq   8.b		; F0 08
	dex		; CA
	brk $1C.b		; 00 1C
	rti		; 40

	sed		; F8
	brk $CA.b		; 00 CA
	brk $1D.b		; 00 1D
	rti		; 40

	brk $F8.b		; 00 F8
	dex		; CA
	brk $1E.b		; 00 1E
	rti		; 40

	beq   8.b		; F0 08
	cmp ($00.b)		; D2 00
	ora $00F840.l,X		; 1F 40 F8 00
	cop $00.b		; 02 00
	jsr $0E40.w		; 20 40 0E
	pea $A2FC.w		; F4 FC A2
	php		; 08
	brk $48.b		; 00 48
	plx		; FA
	inc $00B2.w,X		; FE B2 00
	cop $40.b		; 02 40
	sbc ($06.b)		; F2 06
	lda ($00.b)		; B2 00
	ora $40.b,S		; 03 40
	sed		; F8
	sed		; F8
	sep #$08		; E2 08
	ora ($48.b)		; 12 48
	sed		; F8
	sed		; F8
	cmp ($08.b)		; D2 08
	trb $48.b		; 14 48
	beq   0.b		; F0 00
	tsx		; BA
	php		; 08
	asl $48.b,X		; 16 48
	pea $F2FC.w		; F4 FC F2
	php		; 08
	clc		; 18
	pha		; 48
	brk $F8.b		; 00 F8
	tsx		; BA
	brk $1A.b		; 00 1A
	rti		; 40

	brk $F8.b		; 00 F8
	rep #$00		; C2 00
	tas		; 1B
	rti		; 40

	beq   8.b		; F0 08
	dex		; CA
	brk $1C.b		; 00 1C
	rti		; 40

	sed		; F8
	brk $CA.b		; 00 CA
	brk $1D.b		; 00 1D
	rti		; 40

	brk $F8.b		; 00 F8
	dex		; CA
	brk $1E.b		; 00 1E
	rti		; 40

	beq   8.b		; F0 08
	cmp ($00.b)		; D2 00
	ora $00F840.l,X		; 1F 40 F8 00
	cop $00.b		; 02 00
	jsr $1840.w		; 20 40 18
	beq   0.b		; F0 00
	dex		; CA
	php		; 08
	brk $48.b		; 00 48
	sbc ($FE.b)		; F2 FE
	tax		; AA
	php		; 08
	cop $48.b		; 02 48
	sbc $08BA01.l		; EF 01 BA 08
	tsb $48.b		; 04 48
	sbc $9AFF.w,Y		; F9 FF 9A
	brk $06.b		; 00 06
	rti		; 40

	sbc $A2FF.w,Y		; F9 FF A2
	brk $07.b		; 00 07
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	ldx #$00.b		; A2 00
	php		; 08
	rti		; 40

	brk $F8.b		; 00 F8
	dex		; CA
	brk $09.b		; 00 09
	rti		; 40

	cop $F6.b		; 02 F6
	tax		; AA
	brk $0A.b		; 00 0A
	rti		; 40

	cop $F6.b		; 02 F6
	lda ($00.b)		; B2 00
	phd		; 0B
	rti		; 40

	brk $F8.b		; 00 F8
	cmp ($00.b)		; D2 00
	tsb $FF40.w		; 0C 40 FF
	sbc $00BA.w,Y		; F9 BA 00
	ora $FF40.w		; 0D 40 FF
	sbc $00C2.w,Y		; F9 C2 00
	asl $0840.w		; 0E 40 08
	beq -19.b		; F0 ED
	brk $16.b		; 00 16
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	phx		; DA
	brk $17.b		; 00 17
	rti		; 40

	sbc #$0F.b		; E9 0F
	xce		; FB
	brk $18.b		; 00 18
	rti		; 40

	cop $F6.b		; 02 F6
	sep #$00		; E2 00
	ora $F240.w,Y		; 19 40 F2
	asl $E8.b		; 06 E8
	brk $1A.b		; 00 1A
	rti		; 40

	tsb $F4EC.w		; 0C EC F4
	brk $1B.b		; 00 1B
	rti		; 40

	sbc $03.b,X		; F5 03
	sep #$00		; E2 00
	trb $ED40.w		; 1C 40 ED
	phd		; 0B
	sbc $00.b,X		; F5 00
	ora $0640.w,X		; 1D 40 06
	sbc ($E6.b)		; F2 E6
	brk $1E.b		; 00 1E
	rti		; 40

	sbc [$01.b],Y		; F7 01
	phx		; DA
	brk $1F.b		; 00 1F
	rti		; 40

	ora $00FBE9.l		; 0F E9 FB 00
	jsr $EF40.w		; 20 40 EF
	ora #$ED.b		; 09 ED
	brk $21.b		; 00 21
	rti		; 40

	ora $F2.b,X		; 15 F2
	inc $08CA.w,X		; FE CA 08
	brk $48.b		; 00 48
	sbc $AAF3.w,X		; FD F3 AA
	php		; 08
	cop $48.b		; 02 48
	inc $BA02.w		; EE 02 BA
	php		; 08
	tsb $48.b		; 04 48
	inc $BAF2.w,X		; FE F2 BA
	php		; 08
	asl $48.b		; 06 48
	ora $BCDB.w,X		; 1D DB BC
	brk $08.b		; 00 08
	rti		; 40

	cop $F6.b		; 02 F6
	cmp ($00.b)		; D2 00
	ora #$40.b		; 09 40
	cop $F6.b		; 02 F6
	dex		; CA
	brk $0A.b		; 00 0A
	rti		; 40

	asl $BFEA.w		; 0E EA BF
	brk $0B.b		; 00 0B
	rti		; 40

	asl $E2.b,X		; 16 E2
	lda $400C00.l,X		; BF 00 0C 40
	php		; 08
	beq -19.b		; F0 ED
	brk $18.b		; 00 18
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	phx		; DA
	brk $19.b		; 00 19
	rti		; 40

	sbc #$0F.b		; E9 0F
	xce		; FB
	brk $1A.b		; 00 1A
	rti		; 40

	cop $F6.b		; 02 F6
	sep #$00		; E2 00
	tas		; 1B
	rti		; 40

	sbc ($06.b)		; F2 06
	inx		; E8
	brk $1C.b		; 00 1C
	rti		; 40

	tsb $F4EC.w		; 0C EC F4
	brk $1D.b		; 00 1D
	rti		; 40

	sbc $03.b,X		; F5 03
	sep #$00		; E2 00
	asl $ED40.w,X		; 1E 40 ED
	phd		; 0B
	sbc $00.b,X		; F5 00
	ora $F20640.l,X		; 1F 40 06 F2
	inc $00.b		; E6 00
	jsr $F740.w		; 20 40 F7
	ora ($DA.b,X)		; 01 DA
	brk $21.b		; 00 21
	rti		; 40

	ora $00FBE9.l		; 0F E9 FB 00
	jsl $09EF40.l		; 22 40 EF 09
	sbc $2300.w		; ED 00 23
	rti		; 40

	ora ($FA.b)		; 12 FA
	inc $D9.b,X		; F6 D9
	php		; 08
	brk $48.b		; 00 48
	sbc [$F9.b],Y		; F7 F9
	lda #$08.b		; A9 08
	cop $48.b		; 02 48
	sbc [$F9.b],Y		; F7 F9
	lda $0408.w,Y		; B9 08 04
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	cmp #$08.b		; C9 08
	asl $48.b		; 06 48
	phd		; 0B
	sbc $00F3.w		; ED F3 00
	php		; 08
	rti		; 40

	phd		; 0B
	sbc $00B1.w		; ED B1 00
	ora #$40.b		; 09 40
	sbc ($05.b,S),Y		; F3 05
	sbc $0A00.w,Y		; F9 00 0A
	rti		; 40

	tsb $F4.b		; 04 F4
	inx		; E8
	brk $0B.b		; 00 0B
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b),Y		; F1 00
	tsb $EF40.w		; 0C 40 EF
	ora #$C6.b		; 09 C6
	brk $0D.b		; 00 0D
	rti		; 40

	ora $00B9E9.l		; 0F E9 B9 00
	asl $0840.w		; 0E 40 08
	beq -21.b		; F0 EB
	brk $0F.b		; 00 0F
	rti		; 40

	sed		; F8
	brk $E9.b		; 00 E9
	brk $18.b		; 00 18
	rti		; 40

	bpl -24.b		; 10 E8
	plx		; FA
	brk $19.b		; 00 19
	rti		; 40

	ora [$F1.b]		; 07 F1
	lda $1A00.w,Y		; B9 00 1A
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp ($00.b,X)		; C1 00
	tas		; 1B
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp #$00.b		; C9 00
	trb $0740.w		; 1C 40 07
	sbc ($D1.b),Y		; F1 D1
	brk $1D.b		; 00 1D
	rti		; 40

	ora ($00.b)		; 12 00
	beq -53.b		; F0 CB
	php		; 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	tyx		; BB
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $AB.b,X		; F6 AB
	php		; 08
	tsb $48.b		; 04 48
	jsr ($DBF4.w,X)		; FC F4 DB
	php		; 08
	asl $48.b		; 06 48
	php		; 08
	beq -61.b		; F0 C3
	brk $08.b		; 00 08
	rti		; 40

	beq   8.b		; F0 08
	lda [$00.b],Y		; B7 00
	ora #$40.b		; 09 40
	bpl -24.b		; 10 E8
	cmp #$00.b		; C9 00
	asl A		; 0A
	rti		; 40

	bpl -24.b		; 10 E8
	cmp ($00.b),Y		; D1 00
	phd		; 0B
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	plx		; FA
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $F3FF.w,Y		; F9 FF F3
	brk $0D.b		; 00 0D
	rti		; 40

	sed		; F8
	brk $FB.b		; 00 FB
	brk $0E.b		; 00 0E
	rti		; 40

	sbc ($06.b)		; F2 06
	lda $0F00.w		; AD 00 0F
	rti		; 40

	xce		; FB
	sbc $00EB.w,X		; FD EB 00
	clc		; 18
	rti		; 40

	phd		; 0B
	sbc $00EE.w		; ED EE 00
	ora $F340.w,Y		; 19 40 F3
	ora $BF.b		; 05 BF
	brk $1A.b		; 00 1A
	rti		; 40

	php		; 08
	beq -69.b		; F0 BB
	brk $1B.b		; 00 1B
	rti		; 40

	asl $F2.b		; 06 F2
	nop		; EA
	brk $1C.b		; 00 1C
	rti		; 40

	asl $F6EA.w		; 0E EA F6
	brk $1D.b		; 00 1D
	rti		; 40

	trb $FB.b		; 14 FB
	sbc $AA.b,X		; F5 AA
	php		; 08
	brk $48.b		; 00 48
	inc $E2F2.w,X		; FE F2 E2
	php		; 08
	cop $48.b		; 02 48
	sbc $08D2F1.l,X		; FF F1 D2 08
	tsb $48.b		; 04 48
	sbc $08C2F1.l,X		; FF F1 C2 08
	asl $48.b		; 06 48
	phd		; 0B
	sbc $00B2.w		; ED B2 00
	php		; 08
	rti		; 40

	xce		; FB
	sbc $00BA.w,X		; FD BA 00
	ora #$40.b		; 09 40
	ora $F5.b,S		; 03 F5
	tsx		; BA
	brk $0A.b		; 00 0A
	rti		; 40

	phd		; 0B
	sbc $00BA.w		; ED BA 00
	phd		; 0B
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	ldy $00.b,X		; B4 00
	tsb $F440.w		; 0C 40 F4
	tsb $FA.b		; 04 FA
	brk $0D.b		; 00 0D
	rti		; 40

	jsr ($FAFC.w,X)		; FC FC FA
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $F2FB.w,X		; FD FB F2
	brk $0F.b		; 00 0F
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	plx		; FA
	brk $18.b		; 00 18
	rti		; 40

	asl $F6EA.w		; 0E EA F6
	brk $19.b		; 00 19
	rti		; 40

	sbc [$01.b],Y		; F7 01
	rep #$00		; C2 00
	inc A		; 1A
	rti		; 40

	asl A		; 0A
	inc $00EE.w		; EE EE 00
	tas		; 1B
	rti		; 40

	beq   8.b		; F0 08
	cmp $00.b		; C5 00
	trb $0F40.w		; 1C 40 0F
	sbc #$C2.b		; E9 C2
	brk $1D.b		; 00 1D
	rti		; 40

	ora $00CAE9.l		; 0F E9 CA 00
	asl $0F40.w,X		; 1E 40 0F
	sbc #$D2.b		; E9 D2
	brk $1F.b		; 00 1F
	rti		; 40

	ora $04.b,X		; 15 04
	cpx $08B2.w		; EC B2 08
	brk $48.b		; 00 48
	sbc $C2F3.w,X		; FD F3 C2
	php		; 08
	cop $48.b		; 02 48
	sbc $08D2F1.l,X		; FF F1 D2 08
	tsb $48.b		; 04 48
	sbc $08E2F1.l,X		; FF F1 E2 08
	asl $48.b		; 06 48
	bit $D4.b		; 24 D4
	lda [$00.b],Y		; B7 00
	php		; 08
	rti		; 40

	trb $E4.b		; 14 E4
	lda ($00.b),Y		; B1 00
	ora #$40.b		; 09 40
	trb $E4.b		; 14 E4
	lda $0A00.w,Y		; B9 00 0A
	rti		; 40

	trb $B9DC.w		; 1C DC B9
	brk $0B.b		; 00 0B
	rti		; 40

	ora $F3.b		; 05 F3
	tax		; AA
	brk $0C.b		; 00 0C
	rti		; 40

	ora $AAEB.w		; 0D EB AA
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $F2FB.w,X		; FD FB F2
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $03.b,X		; F5 03
	plx		; FA
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $FAFB.w,X		; FD FB FA
	brk $18.b		; 00 18
	rti		; 40

	rol A		; 2A
	dec $00B3.w		; CE B3 00
	ora $0D40.w,Y		; 19 40 0D
	xba		; EB
	rep #$00		; C2 00
	inc A		; 1A
	rti		; 40

	ora $CAEB.w		; 0D EB CA
	brk $1B.b		; 00 1B
	rti		; 40

	sbc $03.b,X		; F5 03
	cmp $00.b		; C5 00
	trb $0F40.w		; 1C 40 0F
	sbc #$D2.b		; E9 D2
	brk $1D.b		; 00 1D
	rti		; 40

	ora $00F2E9.l		; 0F E9 F2 00
	asl $0A40.w,X		; 1E 40 0A
	inc $00ED.w		; EE ED 00
	ora $E71140.l,X		; 1F 40 11 E7
	plx		; FA
	brk $20.b		; 00 20
	rti		; 40

	ora $01.b,X		; 15 01
	sbc $0008BA.l		; EF BA 08 00
	pha		; 48
	sbc $08E2F1.l,X		; FF F1 E2 08
	cop $48.b		; 02 48
	sbc $08D2F1.l,X		; FF F1 D2 08
	tsb $48.b		; 04 48
	brk $F8.b		; 00 F8
	sbc ($00.b)		; F2 00
	asl $40.b		; 06 40
	bpl -24.b		; 10 E8
	plx		; FA
	brk $07.b		; 00 07
	rti		; 40

	brk $F8.b		; 00 F8
	lda ($00.b)		; B2 00
	php		; 08
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	tsx		; BA
	brk $09.b		; 00 09
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	rep #$00		; C2 00
	asl A		; 0A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	dex		; CA
	brk $0B.b		; 00 0B
	rti		; 40

	ora #$EF.b		; 09 EF
	dex		; CA
	brk $0C.b		; 00 0C
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	dex		; CA
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $F2EC.w		; 0C EC F2
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $FAFB.w,X		; FD FB FA
	brk $0F.b		; 00 0F
	rti		; 40

	inc $ADFA.w,X		; FE FA AD
	brk $16.b		; 00 16
	rti		; 40

	asl $F2.b		; 06 F2
	lda $1700.w		; AD 00 17
	rti		; 40

	asl $ADEA.w		; 0E EA AD
	brk $18.b		; 00 18
	rti		; 40

	ora $00EAE9.l		; 0F E9 EA 00
	ora $0840.w,Y		; 19 40 08
	beq -78.b		; F0 B2
	brk $1A.b		; 00 1A
	rti		; 40

	bpl -24.b		; 10 E8
	lda ($00.b)		; B2 00
	tas		; 1B
	rti		; 40

	ora $00D2E9.l		; 0F E9 D2 00
	trb $0F40.w		; 1C 40 0F
	sbc #$DA.b		; E9 DA
	brk $1D.b		; 00 1D
	rti		; 40

	ora ($13.b,S),Y		; 13 13
	cmp $08B4.w,X		; DD B4 08
	brk $48.b		; 00 48
	and $CD.b,S		; 23 CD
	cpy $08.b		; C4 08
	cop $48.b		; 02 48
	ora ($DD.b,S),Y		; 13 DD
	cpy $08.b		; C4 08
	tsb $48.b		; 04 48
	phd		; 0B
	sbc $00BA.w		; ED BA 00
	asl $40.b		; 06 40
	phd		; 0B
	sbc $00C2.w		; ED C2 00
	ora [$40.b]		; 07 40
	phd		; 0B
	sbc $00CA.w		; ED CA 00
	php		; 08
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	nop		; EA
	brk $09.b		; 00 09
	rti		; 40

	ora $EADF.w,Y		; 19 DF EA
	brk $0A.b		; 00 0A
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sbc ($00.b)		; F2 00
	phd		; 0B
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	pei ($00.b)		; D4 00
	tsb $1B40.w		; 0C 40 1B
	cmp $00D4.w,X		; DD D4 00
	ora $2340.w		; 0D 40 23
	cmp $D4.b,X		; D5 D4
	brk $0E.b		; 00 0E
	rti		; 40

	ora $F5.b,S		; 03 F5
	iny		; C8
	brk $0F.b		; 00 0F
	rti		; 40

	trb $E4.b		; 14 E4
	ldy $1600.w		; AC 00 16
	rti		; 40

	trb $ACDC.w		; 1C DC AC
	brk $17.b		; 00 17
	rti		; 40

	ora $E3.b,X		; 15 E3
	cpx $00.b		; E4 00
	clc		; 18
	rti		; 40

	asl $E2.b,X		; 16 E2
	jmp.w [$1900]		; DC 00 19
	rti		; 40

	ora $00FAE9.l		; 0F E9 FA 00
	inc A		; 1A
	rti		; 40

	ora $00DCD9.l,X		; 1F D9 DC 00
	tas		; 1B
	rti		; 40

	ora ($10.b,S),Y		; 13 10
	cpx #$AA.b		; E0 AA
	php		; 08
	brk $48.b		; 00 48
	trb $DC.b		; 14 DC
	rep #$08		; C2 08
	cop $48.b		; 02 48
	tsb $EC.b		; 04 EC
	rep #$08		; C2 08
	tsb $48.b		; 04 48
	tsb $EC.b		; 04 EC
	cmp ($08.b)		; D2 08
	asl $48.b		; 06 48
	ora ($E6.b)		; 12 E6
	nop		; EA
	brk $08.b		; 00 08
	rti		; 40

	bpl -24.b		; 10 E8
	sbc ($00.b)		; F2 00
	ora #$40.b		; 09 40
	php		; 08
	beq -78.b		; F0 B2
	brk $0A.b		; 00 0A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	inc $00.b		; E6 00
	phd		; 0B
	rti		; 40

	trb $E4.b		; 14 E4
	cmp ($00.b)		; D2 00
	tsb $1440.w		; 0C 40 14
	cpx $DA.b		; E4 DA
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $F4.b		; 04 F4
	sep #$00		; E2 00
	asl $0C40.w		; 0E 40 0C
	cpx $00E2.w		; EC E2 00
	ora $E41440.l		; 0F 40 14 E4
	sep #$00		; E2 00
	clc		; 18
	rti		; 40

	bit $D4.b		; 24 D4
	lda $1900.w,X		; BD 00 19
	rti		; 40

	asl $F2.b		; 06 F2
	tsx		; BA
	brk $1A.b		; 00 1A
	rti		; 40

	asl $BAEA.w		; 0E EA BA
	brk $1B.b		; 00 1B
	rti		; 40

	asl $E2.b,X		; 16 E2
	tsx		; BA
	brk $1C.b		; 00 1C
	rti		; 40

	asl $BADA.w,X		; 1E DA BA
	brk $1D.b		; 00 1D
	rti		; 40

	ora $00FAE9.l		; 0F E9 FA 00
	asl $1440.w,X		; 1E 40 14
	ora ($DD.b,S),Y		; 13 DD
	lda ($08.b)		; B2 08
	brk $48.b		; 00 48
	ora [$E9.b]		; 07 E9
	rep #$08		; C2 08
	cop $48.b		; 02 48
	ora [$D9.b],Y		; 17 D9
	rep #$08		; C2 08
	tsb $48.b		; 04 48
	phd		; 0B
	sbc $00BA.w		; ED BA 00
	asl $40.b		; 06 40
	bpl -24.b		; 10 E8
	sbc ($00.b)		; F2 00
	ora [$40.b]		; 07 40
	trb $E4.b		; 14 E4
	plb		; AB
	brk $08.b		; 00 08
	rti		; 40

	trb $ABDC.w		; 1C DC AB
	brk $09.b		; 00 09
	rti		; 40

	ora $E3.b,X		; 15 E3
	phx		; DA
	brk $0A.b		; 00 0A
	rti		; 40

	ora $E3.b,X		; 15 E3
	sep #$00		; E2 00
	phd		; 0B
	rti		; 40

	asl $D2EA.w		; 0E EA D2
	brk $0C.b		; 00 0C
	rti		; 40

	asl $E2.b,X		; 16 E2
	cmp ($00.b)		; D2 00
	ora $1E40.w		; 0D 40 1E
	phx		; DA
	cmp ($00.b)		; D2 00
	asl $0F40.w		; 0E 40 0F
	sbc #$FA.b		; E9 FA
	brk $0F.b		; 00 0F
	rti		; 40

	ora ($E6.b)		; 12 E6
	nop		; EA
	brk $16.b		; 00 16
	rti		; 40

	inc A		; 1A
	dec $00EA.w,X		; DE EA 00
	ora [$40.b],Y		; 17 40
	and [$D1.b]		; 27 D1
	dec $00.b		; C6 00
	clc		; 18
	rti		; 40

	and $00C6C9.l		; 2F C9 C6 00
	ora $3740.w,Y		; 19 40 37
	cmp ($C6.b,X)		; C1 C6
	brk $1A.b		; 00 1A
	rti		; 40

	and $00C6B9.l,X		; 3F B9 C6 00
	tas		; 1B
	rti		; 40

	eor [$B1.b]		; 47 B1
	dec $00.b		; C6 00
	trb $1440.w		; 1C 40 14
	php		; 08
	inx		; E8
	lda $480008.l,X		; BF 08 00 48
	clc		; 18
	cld		; D8
	lda $480208.l,X		; BF 08 02 48
	asl $DA.b,X		; 16 DA
	lda $480408.l		; AF 08 04 48
	bpl -24.b		; 10 E8
	sbc ($00.b,S),Y		; F3 00
	asl $40.b		; 06 40
	plp		; 28
	bne -69.b		; D0 BB
	brk $07.b		; 00 07
	rti		; 40

	bmi -56.b		; 30 C8
	tyx		; BB
	brk $08.b		; 00 08
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	xba		; EB
	brk $09.b		; 00 09
	rti		; 40

	dec A		; 3A
	ldx $00B5.w,Y		; BE B5 00
	asl A		; 0A
	rti		; 40

	trb $E4.b		; 14 E4
	sbc [$00.b]		; E7 00
	phd		; 0B
	rti		; 40

	bit $C4.b,X		; 34 C4
	clv		; B8
	brk $0C.b		; 00 0C
	rti		; 40

	ora $CFEB.w		; 0D EB CF
	brk $0D.b		; 00 0D
	rti		; 40

	ora $E3.b,X		; 15 E3
	cmp $400E00.l		; CF 00 0E 40
	ora $CFDB.w,X		; 1D DB CF
	brk $0F.b		; 00 0F
	rti		; 40

	ora $E3.b,X		; 15 E3
	cmp [$00.b],Y		; D7 00
	asl $40.b,X		; 16 40
	ora $E3.b,X		; 15 E3
	cmp $401700.l,X		; DF 00 17 40
	asl $B7EA.w		; 0E EA B7
	brk $18.b		; 00 18
	rti		; 40

	plp		; 28
	bne -61.b		; D0 C3
	brk $19.b		; 00 19
	rti		; 40

	and $00B2B9.l,X		; 3F B9 B2 00
	inc A		; 1A
	rti		; 40

	ora $00FBE9.l		; 0F E9 FB 00
	tas		; 1B
	rti		; 40

	eor [$B1.b]		; 47 B1
	lda ($00.b),Y		; B1 00
	trb $0B40.w		; 1C 40 0B
	sbc [$F9.b],Y		; F7 F9
	dex		; CA
	php		; 08
	brk $48.b		; 00 48
	sbc $08F201.l		; EF 01 F2 08
	cop $48.b		; 02 48
	sbc $08E201.l		; EF 01 E2 08
	tsb $48.b		; 04 48
	sbc $08E2F1.l,X		; FF F1 E2 08
	asl $48.b		; 06 48
	phd		; 0B
	sbc $00FA.w		; ED FA 00
	php		; 08
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	phx		; DA
	brk $09.b		; 00 09
	rti		; 40

	xce		; FB
	sbc $00DA.w,X		; FD DA 00
	asl A		; 0A
	rti		; 40

	ora $F5.b,S		; 03 F5
	phx		; DA
	brk $0B.b		; 00 0B
	rti		; 40

	ora $F5.b,S		; 03 F5
	plx		; FA
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $00F2F9.l,X		; FF F9 F2 00
	ora $0740.w		; 0D 40 07
	sbc ($F2.b),Y		; F1 F2
	brk $0E.b		; 00 0E
	rti		; 40

	asl $F8.b,X		; 16 F8
	sed		; F8
	sep #$08		; E2 08
	brk $48.b		; 00 48
	beq   0.b		; F0 00
	cmp ($08.b)		; D2 08
	cop $48.b		; 02 48
	sed		; F8
	sed		; F8
	ldx #$08.b		; A2 08
	tsb $48.b		; 04 48
	sed		; F8
	sed		; F8
	lda ($08.b)		; B2 08
	asl $48.b		; 06 48
	sed		; F8
	brk $9A.b		; 00 9A
	brk $08.b		; 00 08
	rti		; 40

	inx		; E8
	bpl -70.b		; 10 BA
	brk $09.b		; 00 09
	rti		; 40

	sed		; F8
	brk $F2.b		; 00 F2
	brk $0A.b		; 00 0A
	rti		; 40

	sed		; F8
	brk $02.b		; 00 02
	brk $0B.b		; 00 0B
	rti		; 40

	beq   8.b		; F0 08
	tax		; AA
	brk $0C.b		; 00 0C
	rti		; 40

	beq   8.b		; F0 08
	lda ($00.b)		; B2 00
	ora $F040.w		; 0D 40 F0
	php		; 08
	tsx		; BA
	brk $0E.b		; 00 0E
	rti		; 40

	brk $F8.b		; 00 F8
	cmp ($00.b)		; D2 00
	ora $F80040.l		; 0F 40 00 F8
	phx		; DA
	brk $18.b		; 00 18
	rti		; 40

	sbc $15.b,S		; E3 15
	rep #$00		; C2 00
	ora $EB40.w,Y		; 19 40 EB
	ora $00C2.w		; 0D C2 00
	inc A		; 1A
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	rep #$00		; C2 00
	tas		; 1B
	rti		; 40

	xce		; FB
	sbc $00C2.w,X		; FD C2 00
	trb $E340.w		; 1C 40 E3
	ora $CA.b,X		; 15 CA
	brk $1D.b		; 00 1D
	rti		; 40

	cpx $CA0C.w		; EC 0C CA
	brk $1E.b		; 00 1E
	rti		; 40

	pea $CA04.w		; F4 04 CA
	brk $1F.b		; 00 1F
	rti		; 40

	jsr ($CAFC.w,X)		; FC FC CA
	brk $20.b		; 00 20
	rti		; 40

	inc $02.b,X		; F6 02
	plx		; FA
	brk $21.b		; 00 21
	rti		; 40

	ora ($F0.b),Y		; 11 F0
	brk $BB.b		; 00 BB
	php		; 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	tyx		; BB
	php		; 08
	cop $48.b		; 02 48
	nop		; EA
	asl $CB.b		; 06 CB
	php		; 08
	tsb $48.b		; 04 48
	sbc $08ABF1.l,X		; FF F1 AB 08
	asl $48.b		; 06 48
	beq   8.b		; F0 08
	sbc $00.b,S		; E3 00
	php		; 08
	rti		; 40

	sed		; F8
	brk $E3.b		; 00 E3
	brk $09.b		; 00 09
	rti		; 40

	php		; 08
	beq -53.b		; F0 CB
	brk $0A.b		; 00 0A
	rti		; 40

	bpl -24.b		; 10 E8
	wai		; CB
	brk $0B.b		; 00 0B
	rti		; 40

	bpl -24.b		; 10 E8
	cmp ($00.b,S),Y		; D3 00
	tsb $FA40.w		; 0C 40 FA
	inc $00CB.w,X		; FE CB 00
	ora $FA40.w		; 0D 40 FA
	inc $00D3.w,X		; FE D3 00
	asl $EA40.w		; 0E 40 EA
	asl $00DB.w		; 0E DB 00
	ora $06F240.l		; 0F 40 F2 06
	stp		; DB
	brk $18.b		; 00 18
	rti		; 40

	plx		; FA
	inc $00DB.w,X		; FE DB 00
	ora $F740.w,Y		; 19 40 F7
	ora ($B3.b,X)		; 01 B3
	brk $1A.b		; 00 1A
	rti		; 40

	ora $00B3E9.l		; 0F E9 B3 00
	tas		; 1B
	rti		; 40

	clc		; 18
	cpx #$D3.b		; E0 D3
	brk $1C.b		; 00 1C
	rti		; 40

	ora ($F8.b,S),Y		; 13 F8
	sed		; F8
	dec $0008.w,X		; DE 08 00
	pha		; 48
	beq   0.b		; F0 00
	ldx $08.b,Y		; B6 08
	cop $48.b		; 02 48
	beq   0.b		; F0 00
	dec $08.b		; C6 08
	tsb $48.b		; 04 48
	brk $F0.b		; 00 F0
	dec $0608.w		; CE 08 06
	pha		; 48
	sed		; F8
	brk $EE.b		; 00 EE
	brk $08.b		; 00 08
	rti		; 40

	sed		; F8
	brk $F6.b		; 00 F6
	brk $09.b		; 00 09
	rti		; 40

	sed		; F8
	brk $FE.b		; 00 FE
	brk $0A.b		; 00 0A
	rti		; 40

	inx		; E8
	bpl -59.b		; 10 C5
	brk $0B.b		; 00 0B
	rti		; 40

	sed		; F8
	brk $A6.b		; 00 A6
	brk $0C.b		; 00 0C
	rti		; 40

	brk $F8.b		; 00 F8
	ldx $00.b		; A6 00
	ora $E040.w		; 0D 40 E0
	clc		; 18
	dec $00.b		; C6 00
	asl $0040.w		; 0E 40 00
	sed		; F8
	ldx $00.b,Y		; B6 00
	ora $F80040.l		; 0F 40 00 F8
	ldx $1800.w,Y		; BE 00 18
	rti		; 40

	brk $F8.b		; 00 F8
	dec $00.b		; C6 00
	ora $F040.w,Y		; 19 40 F0
	php		; 08
	dec $00.b,X		; D6 00
	inc A		; 1A
	rti		; 40

	sed		; F8
	brk $D6.b		; 00 D6
	brk $1B.b		; 00 1B
	rti		; 40

	php		; 08
	beq -34.b		; F0 DE
	brk $1C.b		; 00 1C
	rti		; 40

	inc $02.b,X		; F6 02
	ldx $1D00.w		; AE 00 1D
	rti		; 40

	inc $AEFA.w,X		; FE FA AE
	brk $1E.b		; 00 1E
	rti		; 40

	clc		; 18
	sed		; F8
	sed		; F8
	lda #$08.b		; A9 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	cmp ($08.b),Y		; D1 08
	cop $48.b		; 02 48
	beq   0.b		; F0 00
	lda $0408.w,Y		; B9 08 04
	pha		; 48
	bpl -24.b		; 10 E8
	ldy $00.b,X		; B4 00
	asl $40.b		; 06 40
	php		; 08
	beq -68.b		; F0 BC
	brk $07.b		; 00 07
	rti		; 40

	php		; 08
	beq -60.b		; F0 C4
	brk $08.b		; 00 08
	rti		; 40

	cpx #$18.b		; E0 18
	ldx $0900.w,Y		; BE 00 09
	rti		; 40

	inx		; E8
	bpl -65.b		; 10 BF
	brk $0A.b		; 00 0A
	rti		; 40

	php		; 08
	beq -47.b		; F0 D1
	brk $0B.b		; 00 0B
	rti		; 40

	sed		; F8
	brk $E1.b		; 00 E1
	brk $0C.b		; 00 0C
	rti		; 40

	sed		; F8
	brk $E9.b		; 00 E9
	brk $0D.b		; 00 0D
	rti		; 40

	sed		; F8
	brk $F1.b		; 00 F1
	brk $0E.b		; 00 0E
	rti		; 40

	sed		; F8
	brk $F9.b		; 00 F9
	brk $0F.b		; 00 0F
	rti		; 40

	sed		; F8
	brk $01.b		; 00 01
	brk $16.b		; 00 16
	rti		; 40

	bpl -24.b		; 10 E8
	ldy $00.b		; A4 00
	ora [$40.b],Y		; 17 40
	bpl -24.b		; 10 E8
	ldy $1800.w		; AC 00 18
	rti		; 40

	php		; 08
	beq -76.b		; F0 B4
	brk $19.b		; 00 19
	rti		; 40

	brk $F8.b		; 00 F8
	lda $1A00.w,Y		; B9 00 1A
	rti		; 40

	brk $F8.b		; 00 F8
	cmp ($00.b,X)		; C1 00
	tas		; 1B
	rti		; 40

	beq   8.b		; F0 08
	cmp #$00.b		; C9 00
	trb $F840.w		; 1C 40 F8
	brk $C9.b		; 00 C9
	brk $1D.b		; 00 1D
	rti		; 40

	brk $F8.b		; 00 F8
	cmp #$00.b		; C9 00
	asl $F040.w,X		; 1E 40 F0
	php		; 08
	cmp ($00.b),Y		; D1 00
	ora $1DDB40.l,X		; 1F 40 DB 1D
	ldy $2000.w,X		; BC 00 20
	rti		; 40

	ora ($F8.b)		; 12 F8
	sed		; F8
	cld		; D8
	php		; 08
	brk $48.b		; 00 48
	beq   0.b		; F0 00
	iny		; C8
	php		; 08
	cop $48.b		; 02 48
	sbc ($FE.b)		; F2 FE
	lda ($08.b),Y		; B1 08
	tsb $48.b		; 04 48
	brk $F8.b		; 00 F8
	bne   0.b		; D0 00
	asl $40.b		; 06 40
	nop		; EA
	asl $00B2.w		; 0E B2 00
	ora [$40.b]		; 07 40
	plx		; FA
	inc $00E8.w,X		; FE E8 00
	php		; 08
	rti		; 40

	brk $F8.b		; 00 F8
	iny		; C8
	brk $09.b		; 00 09
	rti		; 40

	cop $F6.b		; 02 F6
	lda ($00.b),Y		; B1 00
	asl A		; 0A
	rti		; 40

	cop $F6.b		; 02 F6
	lda $0B00.w,Y		; B9 00 0B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp ($00.b,X)		; C1 00
	tsb $FB40.w		; 0C 40 FB
	sbc $00C1.w,X		; FD C1 00
	ora $0340.w		; 0D 40 03
	sbc $C1.b,X		; F5 C1
	brk $0E.b		; 00 0E
	rti		; 40

	cpx $14.b		; E4 14
	ldy $0F00.w,X		; BC 00 0F
	rti		; 40

	inc $02.b,X		; F6 02
	beq   0.b		; F0 00
	asl $40.b,X		; 16 40
	inc $02.b,X		; F6 02
	sed		; F8
	brk $17.b		; 00 17
	rti		; 40

	sbc [$11.b]		; E7 11
	ldy $00.b,X		; B4 00
	clc		; 18
	rti		; 40

	sbc [$01.b],Y		; F7 01
	lda #$00.b		; A9 00
	ora $FF40.w,Y		; 19 40 FF
	sbc $00A9.w,Y		; F9 A9 00
	inc A		; 1A
	rti		; 40

	asl $0CE4.w		; 0E E4 0C
	ldx $0008.w		; AE 08 00
	pha		; 48
	pea $DEFC.w		; F4 FC DE
	php		; 08
	cop $48.b		; 02 48
	jsr ($B6F4.w,X)		; FC F4 B6
	php		; 08
	tsb $48.b		; 04 48
	cpx $BE04.w		; EC 04 BE
	php		; 08
	asl $48.b		; 06 48
	cpx $CE04.w		; EC 04 CE
	php		; 08
	php		; 08
	pha		; 48
	jsr ($C6F4.w,X)		; FC F4 C6
	php		; 08
	asl A		; 0A
	pha		; 48
	jsr ($EEFC.w,X)		; FC FC EE
	brk $0C.b		; 00 0C
	rti		; 40

	pea $AE04.w		; F4 04 AE
	brk $0D.b		; 00 0D
	rti		; 40

	pea $B604.w		; F4 04 B6
	brk $0E.b		; 00 0E
	rti		; 40

	jsr ($D6FC.w,X)		; FC FC D6
	brk $0F.b		; 00 0F
	rti		; 40

	tsb $F4.b		; 04 F4
	dec $00.b,X		; D6 00
	trb $0440.w		; 1C 40 04
	pea $00DE.w		; F4 DE 00
	ora $0440.w,X		; 1D 40 04
	pea $00EF.w		; F4 EF 00
	asl $0440.w,X		; 1E 40 04
	pea $00F7.w		; F4 F7 00
	ora $F51740.l,X		; 1F 40 17 F5
	xce		; FB
	cpy $08.b		; C4 08
	brk $48.b		; 00 48
	sbc $A503.w		; ED 03 A5
	php		; 08
	cop $48.b		; 02 48
	sbc $B503.w		; ED 03 B5
	php		; 08
	tsb $48.b		; 04 48
	sbc $B4FB.w,X		; FD FB B4
	brk $06.b		; 00 06
	rti		; 40

	sbc $BCFB.w,X		; FD FB BC
	brk $07.b		; 00 07
	rti		; 40

	sbc $13.b		; E5 13
	cpy $00.b		; C4 00
	php		; 08
	rti		; 40

	beq   8.b		; F0 08
	jmp.w [$0900]		; DC 00 09
	rti		; 40

	sbc $CC0B.w		; ED 0B CC
	brk $0A.b		; 00 0A
	rti		; 40

	sbc $D40B.w		; ED 0B D4
	brk $0B.b		; 00 0B
	rti		; 40

	sbc $03.b,X		; F5 03
	pei ($00.b)		; D4 00
	tsb $FD40.w		; 0C 40 FD
	xce		; FB
	pei ($00.b)		; D4 00
	ora $DD40.w		; 0D 40 DD
	tas		; 1B
	cmp $00.b		; C5 00
	asl $E940.w		; 0E 40 E9
	ora $0F00C0.l		; 0F C0 00 0F
	rti		; 40

	and $D2CB.w		; 2D CB D2
	brk $16.b		; 00 16
	rti		; 40

	ora $F3.b		; 05 F3
	ldx $00.b,Y		; B6 00
	ora [$40.b],Y		; 17 40
	ora $F3.b		; 05 F3
	ldx $1800.w,Y		; BE 00 18
	rti		; 40

	ora $F3.b		; 05 F3
	dec $00.b		; C6 00
	ora $0540.w,Y		; 19 40 05
	sbc ($CE.b,S),Y		; F3 CE
	brk $1A.b		; 00 1A
	rti		; 40

	ora $C9EB.w		; 0D EB C9
	brk $1B.b		; 00 1B
	rti		; 40

	ora $D1EB.w		; 0D EB D1
	brk $1C.b		; 00 1C
	rti		; 40

	ora $E3.b,X		; 15 E3
	cmp ($00.b),Y		; D1 00
	ora $1D40.w,X		; 1D 40 1D
	stp		; DB
	cmp ($00.b),Y		; D1 00
	asl $2540.w,X		; 1E 40 25
	cmp ($D1.b,S),Y		; D3 D1
	brk $1F.b		; 00 1F
	rti		; 40

	ora $E50B.w		; 0D 0B E5
	wai		; CB
	php		; 08
	brk $48.b		; 00 48
	tsb $EC.b		; 04 EC
	sbc ($08.b,S),Y		; F3 08
	cop $48.b		; 02 48
	ora $08E3E1.l		; 0F E1 E3 08
	tsb $48.b		; 04 48
	sbc $08E3F1.l,X		; FF F1 E3 08
	asl $48.b		; 06 48
	ora $F5.b,S		; 03 F5
	cmp ($00.b,S),Y		; D3 00
	php		; 08
	rti		; 40

	trb $E4.b		; 14 E4
	sbc ($00.b,S),Y		; F3 00
	ora #$40.b		; 09 40
	trb $E4.b		; 14 E4
	xce		; FB
	brk $0A.b		; 00 0A
	rti		; 40

	pea $FB04.w		; F4 04 FB
	brk $0B.b		; 00 0B
	rti		; 40

	jsr ($FBFC.w,X)		; FC FC FB
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $00DBF9.l,X		; FF F9 DB 00
	ora $0740.w		; 0D 40 07
	sbc ($DB.b),Y		; F1 DB
	brk $0E.b		; 00 0E
	rti		; 40

	ora $00DBE9.l		; 0F E9 DB 00
	ora $01F740.l		; 0F 40 F7 01
	sbc [$00.b]		; E7 00
	clc		; 18
	rti		; 40

	bpl   0.b		; 10 00
	beq -29.b		; F0 E3
	php		; 08
	brk $48.b		; 00 48
	bpl -32.b		; 10 E0
	sbc $08.b,S		; E3 08
	cop $48.b		; 02 48
	tsb $EC.b		; 04 EC
	sbc ($08.b,S),Y		; F3 08
	tsb $48.b		; 04 48
	asl $CBE2.w		; 0E E2 CB
	php		; 08
	asl $48.b		; 06 48
	pea $FB04.w		; F4 04 FB
	brk $08.b		; 00 08
	rti		; 40

	trb $E4.b		; 14 E4
	sbc ($00.b,S),Y		; F3 00
	ora #$40.b		; 09 40
	trb $E4.b		; 14 E4
	xce		; FB
	brk $0A.b		; 00 0A
	rti		; 40

	inc $DBFA.w,X		; FE FA DB
	brk $0B.b		; 00 0B
	rti		; 40

	jsr ($FBFC.w,X)		; FC FC FB
	brk $0C.b		; 00 0C
	rti		; 40

	asl $F2.b		; 06 F2
	cmp ($00.b,S),Y		; D3 00
	ora $0640.w		; 0D 40 06
	sbc ($DB.b)		; F2 DB
	brk $0E.b		; 00 0E
	rti		; 40

	asl $DBEA.w		; 0E EA DB
	brk $0F.b		; 00 0F
	rti		; 40

	asl $E2.b,X		; 16 E2
	stp		; DB
	brk $18.b		; 00 18
	rti		; 40

	asl $D5DA.w,X		; 1E DA D5
	brk $19.b		; 00 19
	rti		; 40

	rol $D2.b		; 26 D2
	cmp $00.b,X		; D5 00
	inc A		; 1A
	rti		; 40

	rol $D5CA.w		; 2E CA D5
	brk $1B.b		; 00 1B
	rti		; 40

	asl A		; 0A
	sbc ($FE.b)		; F2 FE
	sbc ($08.b,S),Y		; F3 08
	brk $48.b		; 00 48
	cop $EE.b		; 02 EE
	sbc ($08.b,S),Y		; F3 08
	cop $48.b		; 02 48
	inc $FA.b,X		; F6 FA
	stp		; DB
	php		; 08
	tsb $48.b		; 04 48
	cop $F6.b		; 02 F6
	cmp ($00.b,S),Y		; D3 00
	asl $40.b		; 06 40
	plx		; FA
	inc $00D3.w,X		; FE D3 00
	ora [$40.b]		; 07 40
	asl $F2.b		; 06 F2
	stp		; DB
	brk $08.b		; 00 08
	rti		; 40

	asl $F2.b		; 06 F2
	sbc $00.b,S		; E3 00
	ora #$40.b		; 09 40
	inc $02.b,X		; F6 02
	xba		; EB
	brk $0A.b		; 00 0A
	rti		; 40

	inc $EBFA.w,X		; FE FA EB
	brk $0B.b		; 00 0B
	rti		; 40

	asl $F2.b		; 06 F2
	xba		; EB
	brk $0C.b		; 00 0C
	rti		; 40

	bpl -14.b		; 10 F2
	inc $08F4.w,X		; FE F4 08
	brk $48.b		; 00 48
	sbc $FB.b,X		; F5 FB
	cmp $0208.w,X		; DD 08 02
	pha		; 48
	sbc $D5FF.w,Y		; F9 FF D5
	brk $04.b		; 00 04
	rti		; 40

	cop $F6.b		; 02 F6
	pea $0500.w		; F4 00 05
	rti		; 40

	cop $F6.b		; 02 F6
	jsr ($0600.w,X)		; FC 00 06
	rti		; 40

	ora $EDEB.w		; 0D EB ED
	brk $07.b		; 00 07
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp $00.b,X		; D5 00
	php		; 08
	rti		; 40

	ora $F3.b		; 05 F3
	cmp $0900.w,X		; DD 00 09
	rti		; 40

	ora $F3.b		; 05 F3
	sbc $00.b		; E5 00
	asl A		; 0A
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc $0B00.w		; ED 00 0B
	rti		; 40

	sbc $EDFB.w,X		; FD FB ED
	brk $0C.b		; 00 0C
	rti		; 40

	ora $F3.b		; 05 F3
	sbc $0D00.w		; ED 00 0D
	rti		; 40

	ora $E3.b,X		; 15 E3
	inc $0E00.w		; EE 00 0E
	rti		; 40

	ora $EEDB.w,X		; 1D DB EE
	brk $0F.b		; 00 0F
	rti		; 40

	and $D3.b		; 25 D3
	inc $1400.w		; EE 00 14
	rti		; 40

	and $F0CB.w		; 2D CB F0
	brk $15.b		; 00 15
	rti		; 40

	ora ($00.b,S),Y		; 13 00
	beq -46.b		; F0 D2
	php		; 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	sbc ($08.b)		; F2 08
	cop $48.b		; 02 48
	ora ($EF.b,X)		; 01 EF
	sep #$08		; E2 08
	tsb $48.b		; 04 48
	inx		; E8
	bpl  -6.b		; 10 FA
	brk $06.b		; 00 06
	rti		; 40

	clc		; 18
	cpx #$F2.b		; E0 F2
	brk $07.b		; 00 07
	rti		; 40

	cld		; D8
	jsr $00FA.w		; 20 FA 00
	php		; 08
	rti		; 40

	bpl -24.b		; 10 E8
	cmp ($00.b)		; D2 00
	ora #$40.b		; 09 40
	bpl -24.b		; 10 E8
	phx		; DA
	brk $0A.b		; 00 0A
	rti		; 40

	bpl -24.b		; 10 E8
	sbc ($00.b)		; F2 00
	phd		; 0B
	rti		; 40

	bpl -24.b		; 10 E8
	plx		; FA
	brk $0C.b		; 00 0C
	rti		; 40

	sed		; F8
	brk $F0.b		; 00 F0
	brk $0D.b		; 00 0D
	rti		; 40

	beq   8.b		; F0 08
	sed		; F8
	brk $0E.b		; 00 0E
	rti		; 40

	sed		; F8
	brk $F8.b		; 00 F8
	brk $0F.b		; 00 0F
	rti		; 40

	ora $E2DF.w,Y		; 19 DF E2
	brk $16.b		; 00 16
	rti		; 40

	cpx #$18.b		; E0 18
	plx		; FA
	brk $17.b		; 00 17
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sep #$00		; E2 00
	clc		; 18
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	nop		; EA
	brk $19.b		; 00 19
	rti		; 40

	sbc $E8FF.w,Y		; F9 FF E8
	brk $1A.b		; 00 1A
	rti		; 40

	asl $02EA.w		; 0E EA 02
	brk $1B.b		; 00 1B
	rti		; 40

	asl $E808.w		; 0E 08 E8
	sep #$08		; E2 08
	brk $48.b		; 00 48
	ora $ED.b,S		; 03 ED
	cmp ($08.b)		; D2 08
	cop $48.b		; 02 48
	php		; 08
	beq  -6.b		; F0 FA
	brk $04.b		; 00 04
	rti		; 40

	bpl -24.b		; 10 E8
	plx		; FA
	brk $05.b		; 00 05
	rti		; 40

	brk $F8.b		; 00 F8
	nop		; EA
	brk $06.b		; 00 06
	rti		; 40

	clc		; 18
	cpx #$E2.b		; E0 E2
	brk $07.b		; 00 07
	rti		; 40

	clc		; 18
	cpx #$EA.b		; E0 EA
	brk $08.b		; 00 08
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	phx		; DA
	brk $09.b		; 00 09
	rti		; 40

	brk $F8.b		; 00 F8
	plx		; FA
	brk $0A.b		; 00 0A
	rti		; 40

	sbc $00F2F9.l,X		; FF F9 F2 00
	phd		; 0B
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc ($00.b)		; F2 00
	tsb $0F40.w		; 0C 40 0F
	sbc #$F2.b		; E9 F2
	brk $0D.b		; 00 0D
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	sbc ($00.b)		; F2 00
	asl $1F40.w		; 0E 40 1F
	cmp $00F2.w,Y		; D9 F2 00
	ora $0A1140.l		; 0F 40 11 0A
	inc $DA.b		; E6 DA
	php		; 08
	brk $48.b		; 00 48
	inc A		; 1A
	dec $DA.b,X		; D6 DA
	php		; 08
	cop $48.b		; 02 48
	ora $EAE3.w		; 0D E3 EA
	php		; 08
	tsb $48.b		; 04 48
	ora $EAD3.w,X		; 1D D3 EA
	php		; 08
	asl $48.b		; 06 48
	plp		; 28
	bne  -6.b		; D0 FA
	brk $08.b		; 00 08
	rti		; 40

	bmi -56.b		; 30 C8
	plx		; FA
	brk $09.b		; 00 09
	rti		; 40

	sec		; 38
	cpy #$FA.b		; C0 FA
	brk $0A.b		; 00 0A
	rti		; 40

	rti		; 40

	clv		; B8
	xce		; FB
	brk $0B.b		; 00 0B
	rti		; 40

	pha		; 48
	bcs  -5.b		; B0 FB
	brk $0C.b		; 00 0C
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	plx		; FA
	brk $0D.b		; 00 0D
	rti		; 40

	cop $F6.b		; 02 F6
	sep #$00		; E2 00
	asl $1840.w		; 0E 40 18
	cpx #$CA.b		; E0 CA
	brk $0F.b		; 00 0F
	rti		; 40

	bpl -24.b		; 10 E8
	cmp ($00.b)		; D2 00
	clc		; 18
	rti		; 40

	and $F2CB.w		; 2D CB F2
	brk $19.b		; 00 19
	rti		; 40

	and $C3.b,X		; 35 C3
	sbc ($00.b)		; F2 00
	inc A		; 1A
	rti		; 40

	clc		; 18
	cpx #$D2.b		; E0 D2
	brk $1B.b		; 00 1B
	rti		; 40

	jsr $D2D8.w		; 20 D8 D2
	brk $1C.b		; 00 1C
	rti		; 40

	ora $EACE22.l		; 0F 22 CE EA
	php		; 08
	brk $48.b		; 00 48
	inc A		; 1A
	dec $D2.b,X		; D6 D2
	php		; 08
	cop $48.b		; 02 48
	asl A		; 0A
	inc $DA.b		; E6 DA
	php		; 08
	tsb $48.b		; 04 48
	asl A		; 0A
	inc $EA.b		; E6 EA
	php		; 08
	asl $48.b		; 06 48
	clc		; 18
	cpx #$FA.b		; E0 FA
	brk $08.b		; 00 08
	rti		; 40

	jsr $FAD8.w		; 20 D8 FA
	brk $09.b		; 00 09
	rti		; 40

	bpl -24.b		; 10 E8
	plx		; FA
	brk $0A.b		; 00 0A
	rti		; 40

	ora ($E6.b)		; 12 E6
	cmp ($00.b)		; D2 00
	phd		; 0B
	rti		; 40

	inc A		; 1A
	dec $00E2.w,X		; DE E2 00
	tsb $2240.w		; 0C 40 22
	dec $E2.b,X		; D6 E2
	brk $0D.b		; 00 0D
	rti		; 40

	inc A		; 1A
	dec $00EA.w,X		; DE EA 00
	asl $1A40.w		; 0E 40 1A
	dec $00F2.w,X		; DE F2 00
	ora $DD1B40.l		; 0F 40 1B DD
	cop $00.b		; 02 00
	clc		; 18
	rti		; 40

	tas		; 1B
	cmp $000A.w,X		; DD 0A 00
	ora $1B40.w,Y		; 19 40 1B
	cmp $0012.w,X		; DD 12 00
	inc A		; 1A
	rti		; 40

	ora ($EB.b),Y		; 11 EB
	ora $CF.b		; 05 CF
	pha		; 48
	brk $08.b		; 00 08
	sbc $0D.b,S		; E3 0D
	lda $080248.l		; AF 48 02 08
	sbc $0D.b,S		; E3 0D
	lda $080448.l,X		; BF 48 04 08
	sbc #$07.b		; E9 07
	cmp $080648.l,X		; DF 48 06 08
	sbc ($05.b,S),Y		; F3 05
	sbc $000840.l		; EF 40 08 00
	xba		; EB
	ora $40EF.w		; 0D EF 40
	ora #$00.b		; 09 00
	xba		; EB
	ora $40F7.w		; 0D F7 40
	asl A		; 0A
	brk $EB.b		; 00 EB
	ora $40FF.w		; 0D FF 40
	phd		; 0B
	brk $E3.b		; 00 E3
	ora $FF.b,X		; 15 FF
	rti		; 40

	tsb $F700.w		; 0C 00 F7
	ora ($F7.b,X)		; 01 F7
	rti		; 40

	ora $FB00.w		; 0D 00 FB
	sbc $40C6.w,X		; FD C6 40
	asl $FB00.w		; 0E 00 FB
	sbc $40CE.w,X		; FD CE 40
	ora $05F300.l		; 0F 00 F3 05
	lda [$40.b],Y		; B7 40
	clc		; 18
	brk $F3.b		; 00 F3
	ora $BF.b		; 05 BF
	rti		; 40

	ora $F300.w,Y		; 19 00 F3
	ora $C7.b		; 05 C7
	rti		; 40

	inc A		; 1A
	brk $F9.b		; 00 F9
	sbc $1B40FC.l,X		; FF FC 40 1B
	brk $FB.b		; 00 FB
	sbc $40D6.w,X		; FD D6 40
	trb $1600.w		; 1C 00 16
	asl $EA.b		; 06 EA
	lda ($48.b),Y		; B1 48
	brk $08.b		; 00 08
	sbc $D8F7.w,Y		; F9 F7 D8
	pha		; 48
	cop $08.b		; 02 08
	beq   8.b		; F0 08
	sbc #$40.b		; E9 40
	tsb $00.b		; 04 00
	sbc $40C3F9.l,X		; FF F9 C3 40
	ora $00.b		; 05 00
	ora $40C1E9.l		; 0F E9 C1 40
	asl $00.b		; 06 00
	ora [$F1.b]		; 07 F1
	cmp ($40.b,X)		; C1 40
	ora [$00.b]		; 07 00
	sed		; F8
	brk $F8.b		; 00 F8
	rti		; 40

	php		; 08
	brk $FE.b		; 00 FE
	plx		; FA
	lda ($40.b),Y		; B1 40
	ora #$00.b		; 09 00
	inc $B9FA.w,X		; FE FA B9
	rti		; 40

	asl A		; 0A
	brk $ED.b		; 00 ED
	phd		; 0B
	beq  64.b		; F0 40
	phd		; 0B
	brk $0D.b		; 00 0D
	xba		; EB
	cmp #$40.b		; C9 40
	tsb $0500.w		; 0C 00 05
	sbc ($C9.b,S),Y		; F3 C9
	rti		; 40

	ora $0C00.w		; 0D 00 0C
	cpx $40D1.w		; EC D1 40
	asl $0400.w		; 0E 00 04
	pea $40D1.w		; F4 D1 40
	ora $FCFC00.l		; 0F 00 FC FC
	cmp ($40.b),Y		; D1 40
	trb $00.b		; 14 00
	nop		; EA
	asl $40F6.w		; 0E F6 40
	ora $00.b,X		; 15 00
	plx		; FA
	inc $40E8.w,X		; FE E8 40
	asl $00.b,X		; 16 00
	plx		; FA
	inc $40F0.w,X		; FE F0 40
	ora [$00.b],Y		; 17 00
	sed		; F8
	brk $00.b		; 00 00
	rti		; 40

	clc		; 18
	brk $09.b		; 00 09
	sbc $1940D9.l		; EF D9 40 19
	brk $F1.b		; 00 F1
	ora [$D9.b]		; 07 D9
	rti		; 40

	inc A		; 1A
	brk $F1.b		; 00 F1
	ora [$E1.b]		; 07 E1
	rti		; 40

	tas		; 1B
	brk $0D.b		; 00 0D
	ora $48F2D1.l,X		; 1F D1 F2 48
	brk $08.b		; 00 08
	ora $48ECE1.l		; 0F E1 EC 48
	cop $08.b		; 02 08
	sbc $48ECF1.l,X		; FF F1 EC 48
	tsb $08.b		; 04 08
	rol A		; 2A
	dec $DB.b		; C6 DB
	pha		; 48
	asl $08.b		; 06 08
	ora [$E1.b],Y		; 17 E1
	jsr ($0840.w,X)		; FC 40 08
	brk $FF.b		; 00 FF
	sbc $40FC.w,Y		; F9 FC 40
	ora #$00.b		; 09 00
	sbc [$01.b],Y		; F7 01
	jsr ($0A40.w,X)		; FC 40 0A
	brk $2F.b		; 00 2F
	cmp #$F3.b		; C9 F3
	rti		; 40

	phd		; 0B
	brk $F7.b		; 00 F7
	ora ($EC.b,X)		; 01 EC
	rti		; 40

	tsb $2200.w		; 0C 00 22
	dec $EA.b,X		; D6 EA
	rti		; 40

	ora $EF00.w		; 0D 00 EF
	ora #$EC.b		; 09 EC
	rti		; 40

	asl $3200.w		; 0E 00 32
	dec $EB.b		; C6 EB
	rti		; 40

	ora $CE2A00.l		; 0F 00 2A CE
	xba		; EB
	rti		; 40

	clc		; 18
	brk $12.b		; 00 12
	jsr $DAD0.w		; 20 D0 DA
	pha		; 48
	brk $08.b		; 00 08
	jsl $48EACE.l		; 22 CE EA 48
	cop $08.b		; 02 08
	plx		; FA
	inc $F2.b,X		; F6 F2
	pha		; 48
	tsb $08.b		; 04 08
	ora ($DE.b)		; 12 DE
	nop		; EA
	pha		; 48
	asl $08.b		; 06 08
	and ($C5.b,S),Y		; 33 C5
	sbc ($40.b),Y		; F1 40
	php		; 08
	brk $32.b		; 00 32
	dec $EA.b		; C6 EA
	rti		; 40

	ora #$00.b		; 09 00
	bmi -56.b		; 30 C8
	sep #$40		; E2 40
	asl A		; 0A
	brk $36.b		; 00 36
.ACCU 16
.INDEX 16
	rep #$F9		; C2 F9
	rti		; 40

	phd		; 0B
	brk $1D.b		; 00 1D
	stp		; DB
	cop $40.b		; 02 40
	tsb $0A00.w		; 0C 00 0A
	inc $40EA.w		; EE EA 40
	ora $0200.w		; 0D 00 02
	inc $EA.b,X		; F6 EA
	rti		; 40

	asl $0A00.w		; 0E 00 0A
	inc $40F2.w		; EE F2 40
	ora $D62200.l		; 0F 00 22 D6
	plx		; FA
	rti		; 40

	clc		; 18
	brk $1A.b		; 00 1A
	dec $40FA.w,X		; DE FA 40
	ora $1200.w,Y		; 19 00 12
	inc $FA.b		; E6 FA
	rti		; 40

	inc A		; 1A
	brk $0A.b		; 00 0A
	inc $40FA.w		; EE FA 40
	tas		; 1B
	brk $F2.b		; 00 F2
	asl $FC.b		; 06 FC
	rti		; 40

	trb $EA00.w		; 1C 00 EA
	asl $40FC.w		; 0E FC 40
	ora $1200.w,X		; 1D 00 12
	sed		; F8
	sed		; F8
	dec $08.b		; C6 08
	brk $48.b		; 00 48
	sbc $FB.b,X		; F5 FB
	ldx $08.b,Y		; B6 08
	cop $48.b		; 02 48
	inc $FA.b,X		; F6 FA
	dec $08.b,X		; D6 08
	tsb $48.b		; 04 48
	inc $FA.b,X		; F6 FA
	inc $08.b		; E6 08
	asl $48.b		; 06 48
	ora ($E6.b)		; 12 E6
	dec $00.b		; C6 00
	php		; 08
	rti		; 40

	xce		; FB
	sbc $00AE.w,X		; FD AE 00
	ora #$0340.w		; 09 40 03
	sbc $AE.b,X		; F5 AE
	brk $0A.b		; 00 0A
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	inc $00.b,X		; F6 00
	phd		; 0B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	inc $0C00.w,X		; FE 00 0C
	rti		; 40

	ora $E3.b,X		; 15 E3
	ldx $0D00.w,Y		; BE 00 0D
	rti		; 40

	sbc $F6FB.w,X		; FD FB F6
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $FEFB.w,X		; FD FB FE
	brk $0F.b		; 00 0F
	rti		; 40

	beq   8.b		; F0 08
	cpy $1800.w		; CC 00 18
	rti		; 40

	ora $F3.b		; 05 F3
	ldx $00.b,Y		; B6 00
	ora $0540.w,Y		; 19 40 05
	sbc ($BE.b,S),Y		; F3 BE
	brk $1A.b		; 00 1A
	rti		; 40

	ora $C0EB.w		; 0D EB C0
	brk $1B.b		; 00 1B
	rti		; 40

	beq   8.b		; F0 08
	pei ($00.b)		; D4 00
	trb $F040.w		; 1C 40 F0
	php		; 08
	cpy $00.b		; C4 00
	ora $0B40.w,X		; 1D 40 0B
	beq   0.b		; F0 00
	sbc ($08.b)		; F2 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	phx		; DA
	php		; 08
	cop $48.b		; 02 48
	sbc ($FE.b)		; F2 FE
	tax		; AA
	php		; 08
	tsb $48.b		; 04 48
	xba		; EB
	ora $BA.b		; 05 BA
	php		; 08
	asl $48.b		; 06 48
	xba		; EB
	ora $CA.b		; 05 CA
	php		; 08
	php		; 08
	pha		; 48
	sbc $EAFF.w,Y		; F9 FF EA
	brk $0A.b		; 00 0A
	rti		; 40

	sbc ($07.b),Y		; F1 07
	nop		; EA
	brk $0B.b		; 00 0B
	rti		; 40

	xce		; FB
	sbc $00BA.w,X		; FD BA 00
	tsb $FB40.w		; 0C 40 FB
	sbc $00C2.w,X		; FD C2 00
	ora $FB40.w		; 0D 40 FB
	sbc $00CA.w,X		; FD CA 00
	asl $FB40.w		; 0E 40 FB
	sbc $00D2.w,X		; FD D2 00
	ora $F81240.l		; 0F 40 12 F8
	sed		; F8
	dec $48.b		; C6 48
	brk $08.b		; 00 08
	xce		; FB
	sbc $B6.b,X		; F5 B6
	pha		; 48
	cop $08.b		; 02 08
	plx		; FA
	inc $D6.b,X		; F6 D6
	pha		; 48
	tsb $08.b		; 04 08
	plx		; FA
	inc $E6.b,X		; F6 E6
	pha		; 48
	asl $08.b		; 06 08
	inc $12.b		; E6 12
	dec $40.b		; C6 40
	php		; 08
	brk $FD.b		; 00 FD
	xce		; FB
	ldx $0940.w		; AE 40 09
	brk $F5.b		; 00 F5
	ora $AE.b,S		; 03 AE
	rti		; 40

	asl A		; 0A
	brk $05.b		; 00 05
	sbc ($F6.b,S),Y		; F3 F6
	rti		; 40

	phd		; 0B
	brk $05.b		; 00 05
	sbc ($FE.b,S),Y		; F3 FE
	rti		; 40

	tsb $E300.w		; 0C 00 E3
	ora $BE.b,X		; 15 BE
	rti		; 40

	ora $FB00.w		; 0D 00 FB
	sbc $40F6.w,X		; FD F6 40
	asl $FB00.w		; 0E 00 FB
	sbc $40FE.w,X		; FD FE 40
	ora $F00800.l		; 0F 00 08 F0
	cpy $1840.w		; CC 40 18
	brk $F3.b		; 00 F3
	ora $B6.b		; 05 B6
	rti		; 40

	ora $F300.w,Y		; 19 00 F3
	ora $BE.b		; 05 BE
	rti		; 40

	inc A		; 1A
	brk $EB.b		; 00 EB
	ora $40C0.w		; 0D C0 40
	tas		; 1B
	brk $08.b		; 00 08
	beq -44.b		; F0 D4
	rti		; 40

	trb $0800.w		; 1C 00 08
	beq -60.b		; F0 C4
	rti		; 40

	ora $1000.w,X		; 1D 00 10
	beq   0.b		; F0 00
	tax		; AA
	php		; 08
	brk $48.b		; 00 48
	inc $E202.w		; EE 02 E2
	php		; 08
	cop $48.b		; 02 48
	inc $FA.b,X		; F6 FA
	dex		; CA
	php		; 08
	tsb $48.b		; 04 48
	xba		; EB
	ora $00F2.w		; 0D F2 00
	asl $40.b		; 06 40
	inc $BA0A.w		; EE 0A BA
	brk $07.b		; 00 07
	rti		; 40

	inc $02.b,X		; F6 02
	tsx		; BA
	brk $08.b		; 00 08
	rti		; 40

	inc $BAFA.w,X		; FE FA BA
	brk $09.b		; 00 09
	rti		; 40

	inc $02.b,X		; F6 02
	sbc ($00.b)		; F2 00
	asl A		; 0A
	rti		; 40

	sbc #$FA0F.w		; E9 0F FA
	brk $0B.b		; 00 0B
	rti		; 40

	sbc $FAFF.w,Y		; F9 FF FA
	brk $0C.b		; 00 0C
	rti		; 40

	inc $CA0A.w		; EE 0A CA
	brk $0D.b		; 00 0D
	rti		; 40

	inc $D20A.w		; EE 0A D2
	brk $0E.b		; 00 0E
	rti		; 40

	inc $DA0A.w		; EE 0A DA
	brk $0F.b		; 00 0F
	rti		; 40

	inc $02.b,X		; F6 02
	phx		; DA
	brk $16.b		; 00 16
	rti		; 40

	sbc $00C209.l		; EF 09 C2 00
	ora [$40.b],Y		; 17 40
	sbc [$01.b],Y		; F7 01
	rep #$00		; C2 00
	clc		; 18
	rti		; 40

	asl $F1.b,X		; 16 F1
	sbc $0008A8.l,X		; FF A8 08 00
	pha		; 48
	cpx $C804.w		; EC 04 C8
	php		; 08
	cop $48.b		; 02 48
	sbc #$B30F.w		; E9 0F B3
	brk $04.b		; 00 04
	rti		; 40

	sbc ($17.b,X)		; E1 17
	plb		; AB
	brk $05.b		; 00 05
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	tay		; A8
	brk $06.b		; 00 06
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	bcs   0.b		; B0 00
	ora [$40.b]		; 07 40
	sbc ($07.b),Y		; F1 07
	clv		; B8
	brk $08.b		; 00 08
	rti		; 40

	sbc $B8FF.w,Y		; F9 FF B8
	brk $09.b		; 00 09
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	clv		; B8
	brk $0A.b		; 00 0A
	rti		; 40

	plx		; FA
	inc $00E0.w,X		; FE E0 00
	phd		; 0B
	rti		; 40

	plx		; FA
	inc $00E8.w,X		; FE E8 00
	tsb $F340.w		; 0C 40 F3
	ora $C0.b		; 05 C0
	brk $0D.b		; 00 0D
	rti		; 40

	xce		; FB
	sbc $00C0.w,X		; FD C0 00
	asl $E140.w		; 0E 40 E1
	ora [$B3.b],Y		; 17 B3
	brk $0F.b		; 00 0F
	rti		; 40

	jsr ($C8FC.w,X)		; FC FC C8
	brk $14.b		; 00 14
	rti		; 40

	jsr ($D0FC.w,X)		; FC FC D0
	brk $15.b		; 00 15
	rti		; 40

	pea $D804.w		; F4 04 D8
	brk $16.b		; 00 16
	rti		; 40

	jsr ($D8FC.w,X)		; FC FC D8
	brk $17.b		; 00 17
	rti		; 40

	inc $02.b,X		; F6 02
	pea $1800.w		; F4 00 18
	rti		; 40

	inc $02.b,X		; F6 02
	jsr ($1900.w,X)		; FC 00 19
	rti		; 40

	inc $FCFA.w,X		; FE FA FC
	brk $1A.b		; 00 1A
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cpx $1B00.w		; EC 00 1B
	rti		; 40

	asl $09.b,X		; 16 09
	sbc [$CF.b]		; E7 CF
	php		; 08
	brk $48.b		; 00 48
	ora [$E9.b]		; 07 E9
	lda [$08.b],Y		; B7 08
	cop $48.b		; 02 48
	php		; 08
	beq -57.b		; F0 C7
	brk $04.b		; 00 04
	rti		; 40

	bpl -24.b		; 10 E8
	cmp [$00.b]		; C7 00
	ora $40.b		; 05 40
	brk $F8.b		; 00 F8
	cmp ($00.b,X)		; C1 00
	asl $40.b		; 06 40
	sbc $BAFF.w,Y		; F9 FF BA
	brk $07.b		; 00 07
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sbc ($00.b,S),Y		; F3 00
	php		; 08
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	xce		; FB
	brk $09.b		; 00 09
	rti		; 40

	ora #$E7EF.w		; 09 EF E7
	brk $0A.b		; 00 0A
	rti		; 40

	php		; 08
	beq -81.b		; F0 AF
	brk $0B.b		; 00 0B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp #$0C00.w		; C9 00 0C
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b),Y		; D1 00
	ora $F940.w		; 0D 40 F9
	sbc $0E00F1.l,X		; FF F1 00 0E
	rti		; 40

	asl A		; 0A
	inc $00DF.w		; EE DF 00
	ora $F60240.l		; 0F 40 02 F6
	cmp $1400.w,Y		; D9 00 14
	rti		; 40

	cop $F6.b		; 02 F6
	sbc ($00.b,X)		; E1 00
	ora $40.b,X		; 15 40
	jsr ($ECFC.w,X)		; FC FC EC
	brk $16.b		; 00 16
	rti		; 40

	asl $EBEA.w		; 0E EA EB
	brk $17.b		; 00 17
	rti		; 40

	bpl -24.b		; 10 E8
	lda $401800.l		; AF 00 18 40
	sbc $00B9F9.l,X		; FF F9 B9 00
	ora $FF40.w,Y		; 19 40 FF
	sbc $00E9.w,Y		; F9 E9 00
	inc A		; 1A
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sbc $1B00.w,Y		; F9 00 1B
	rti		; 40

	ora [$0A.b],Y		; 17 0A
	inc $BF.b		; E6 BF
	php		; 08
	brk $48.b		; 00 48
	trb $DC.b		; 14 DC
	lda [$08.b]		; A7 08
	cop $48.b		; 02 48
	ora $08D7E1.l		; 0F E1 D7 08
	tsb $48.b		; 04 48
	plp		; 28
	bne -68.b		; D0 BC
	brk $06.b		; 00 06
	rti		; 40

	inc A		; 1A
	dec $00BF.w,X		; DE BF 00
	ora [$40.b]		; 07 40
	inc A		; 1A
	dec $00C7.w,X		; DE C7 00
	php		; 08
	rti		; 40

	asl A		; 0A
	inc $00CF.w		; EE CF 00
	ora #$1240.w		; 09 40 12
	inc $CF.b		; E6 CF
	brk $0A.b		; 00 0A
	rti		; 40

	inc A		; 1A
	dec $00CF.w,X		; DE CF 00
	phd		; 0B
	rti		; 40

	phd		; 0B
	sbc $00E7.w		; ED E7 00
	tsb $1340.w		; 0C 40 13
	sbc $E7.b		; E5 E7
	brk $0D.b		; 00 0D
	rti		; 40

	ora $F5.b,S		; 03 F5
	inx		; E8
	brk $0E.b		; 00 0E
	rti		; 40

	xce		; FB
	sbc $00F1.w,X		; FD F1 00
	ora $EC0C40.l		; 0F 40 0C EC
	lda [$00.b],Y		; B7 00
	asl $40.b,X		; 16 40
	brk $F8.b		; 00 F8
	sbc $1700.w		; ED 00 17
	rti		; 40

	trb $E4.b		; 14 E4
	lda [$00.b],Y		; B7 00
	clc		; 18
	rti		; 40

	trb $B7DC.w		; 1C DC B7
	brk $19.b		; 00 19
	rti		; 40

	bit $D4.b		; 24 D4
	lda $1A00.w,Y		; B9 00 1A
	rti		; 40

	and [$D1.b]		; 27 D1
	cpy $00.b		; C4 00
	tas		; 1B
	rti		; 40

	ora $00F7E9.l		; 0F E9 F7 00
	trb $0F40.w		; 1C 40 0F
	sbc #$00FF.w		; E9 FF 00
	ora $1140.w,X		; 1D 40 11
	sbc [$EF.b]		; E7 EF
	brk $1E.b		; 00 1E
	rti		; 40

	ora [$F1.b]		; 07 F1
	cpx #$1F00.w		; E0 00 1F
	rti		; 40

	ora $E50B.w,Y		; 19 0B E5
	ldy $08.b		; A4 08
	brk $48.b		; 00 48
	phd		; 0B
	sbc $B4.b		; E5 B4
	php		; 08
	cop $48.b		; 02 48
	phd		; 0B
	sbc $C4.b		; E5 C4
	php		; 08
	tsb $48.b		; 04 48
	asl $DCE2.w		; 0E E2 DC
	php		; 08
	asl $48.b		; 06 48
	pld		; 2B
	cmp $00C3.w		; CD C3 00
	php		; 08
	rti		; 40

	and $D5.b,S		; 23 D5
	xba		; EB
	brk $09.b		; 00 09
	rti		; 40

	and $D5.b,S		; 23 D5
	sbc ($00.b,S),Y		; F3 00
	asl A		; 0A
	rti		; 40

	ora ($E6.b)		; 12 E6
	nop		; EA
	brk $0B.b		; 00 0B
	rti		; 40

	ora ($E6.b)		; 12 E6
	sbc ($00.b)		; F2 00
	tsb $1240.w		; 0C 40 12
	inc $FA.b		; E6 FA
	brk $0D.b		; 00 0D
	rti		; 40

	tas		; 1B
	cmp $00A4.w,X		; DD A4 00
	asl $1B40.w		; 0E 40 1B
	cmp $00AC.w,X		; DD AC 00
	ora $DD1B40.l		; 0F 40 1B DD
	ldy $00.b,X		; B4 00
	clc		; 18
	rti		; 40

	tas		; 1B
	cmp $00BC.w,X		; DD BC 00
	ora $1B40.w,Y		; 19 40 1B
	cmp $00C4.w,X		; DD C4 00
	inc A		; 1A
	rti		; 40

	tas		; 1B
	cmp $00CC.w,X		; DD CC 00
	tas		; 1B
	rti		; 40

	phd		; 0B
	sbc $00D4.w		; ED D4 00
	trb $1340.w		; 1C 40 13
	sbc $D4.b		; E5 D4
	brk $1D.b		; 00 1D
	rti		; 40

	tas		; 1B
	cmp $00D4.w,X		; DD D4 00
	asl $2340.w,X		; 1E 40 23
	cmp $C3.b,X		; D5 C3
	brk $1F.b		; 00 1F
	rti		; 40

	asl $E0DA.w,X		; 1E DA E0
	brk $20.b		; 00 20
	rti		; 40

	asl $E8DA.w,X		; 1E DA E8
	brk $21.b		; 00 21
	rti		; 40

	ora $009CE9.l		; 0F E9 9C 00
	jsl $E11740.l		; 22 40 17 E1
	stz $2300.w		; 9C 00 23
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	sta $00.b,X		; 95 00
	bit $40.b		; 24 40
	ora $CC00F0.l		; 0F F0 00 CC
	php		; 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	cmp $0208.w		; CD 08 02
	pha		; 48
	sbc ($FE.b)		; F2 FE
	jmp.w [$0408]		; DC 08 04
	pha		; 48
	cop $EE.b		; 02 EE
	cmp $0608.w,X		; DD 08 06
	pha		; 48
	cop $EE.b		; 02 EE
	sbc $0808.w		; ED 08 08
	pha		; 48
	plx		; FA
	inc $00F4.w,X		; FE F4 00
	asl A		; 0A
	rti		; 40

	plx		; FA
	inc $00FC.w,X		; FE FC 00
	phd		; 0B
	rti		; 40

	bpl -24.b		; 10 E8
	cmp $0C00.w		; CD 00 0C
	rti		; 40

	sbc ($06.b)		; F2 06
	cpx $0D00.w		; EC 00 0D
	rti		; 40

	plx		; FA
	inc $00EC.w,X		; FE EC 00
	asl $1040.w		; 0E 40 10
	inx		; E8
	cmp $00.b,X		; D5 00
	ora $0EEA40.l		; 0F 40 EA 0E
	cpx $1A00.w		; EC 00 1A
	rti		; 40

	cpx $14.b		; E4 14
	pea $1B00.w		; F4 00 1B
	rti		; 40

	cpx $F40C.w		; EC 0C F4
	brk $1C.b		; 00 1C
	rti		; 40

	cpx $14.b		; E4 14
	jsr ($1D00.w,X)		; FC 00 1D
	rti		; 40

	asl $E808.w		; 0E 08 E8
	sta $0008.w,X		; 9D 08 00
	pha		; 48
	sbc $F3F7.w,Y		; F9 F7 F3
	php		; 08
	cop $48.b		; 02 48
	sbc $E3F7.w,Y		; F9 F7 E3
	php		; 08
	tsb $48.b		; 04 48
	cop $EE.b		; 02 EE
	plb		; AB
	php		; 08
	asl $48.b		; 06 48
	sbc $BBF3.w,X		; FD F3 BB
	php		; 08
	php		; 08
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	cmp ($08.b,S),Y		; D3 08
	asl A		; 0A
	pha		; 48
	tsb $95EC.w		; 0C EC 95
	brk $0C.b		; 00 0C
	rti		; 40

	ora #$EBEF.w		; 09 EF EB
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $CBFB.w,X		; FD FB CB
	brk $0E.b		; 00 0E
	rti		; 40

	ora $F3.b		; 05 F3
	wai		; CB
	brk $0F.b		; 00 0F
	rti		; 40

	ora $C9EB.w		; 0D EB C9
	brk $1C.b		; 00 1C
	rti		; 40

	ora #$E3EF.w		; 09 EF E3
	brk $1D.b		; 00 1D
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp ($00.b,S),Y		; D3 00
	asl $0740.w,X		; 1E 40 07
	sbc ($DB.b),Y		; F1 DB
	brk $1F.b		; 00 1F
	rti		; 40

	ora ($F3.b,S),Y		; 13 F3
	sbc $08BB.w,X		; FD BB 08
	brk $48.b		; 00 48
	inc $CB02.w		; EE 02 CB
	php		; 08
	cop $48.b		; 02 48
	inc $D3F2.w,X		; FE F2 D3
	php		; 08
	tsb $48.b		; 04 48
	ora #$EBEF.w		; 09 EF EB
	brk $06.b		; 00 06
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc ($00.b,S),Y		; F3 00
	ora [$40.b]		; 07 40
	sbc ($07.b),Y		; F1 07
	xce		; FB
	brk $08.b		; 00 08
	rti		; 40

	sbc $FBFF.w,Y		; F9 FF FB
	brk $09.b		; 00 09
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	xce		; FB
	brk $0A.b		; 00 0A
	rti		; 40

	xce		; FB
	sbc $00B3.w,X		; FD B3 00
	phd		; 0B
	rti		; 40

	sbc ($07.b),Y		; F1 07
	xba		; EB
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $EBFF.w,Y		; F9 FF EB
	brk $0D.b		; 00 0D
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	xba		; EB
	brk $0E.b		; 00 0E
	rti		; 40

	inc $DB0A.w		; EE 0A DB
	brk $0F.b		; 00 0F
	rti		; 40

	inc $02.b,X		; F6 02
	stp		; DB
	brk $16.b		; 00 16
	rti		; 40

	inc $02.b,X		; F6 02
	sbc $00.b,S		; E3 00
	ora [$40.b],Y		; 17 40
	inc $E3FA.w,X		; FE FA E3
	brk $18.b		; 00 18
	rti		; 40

	asl $F2.b		; 06 F2
	sbc $00.b,S		; E3 00
	ora $FF40.w,Y		; 19 40 FF
	sbc $00F3.w,Y		; F9 F3 00
	inc A		; 1A
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc ($00.b,S),Y		; F3 00
	tas		; 1B
	rti		; 40

	ora ($F8.b)		; 12 F8
	sed		; F8
	sbc $08.b,X		; F5 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	ldx $0208.w,Y		; BE 08 02
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	ldx $0408.w,Y		; BE 08 04
	pha		; 48
	plx		; FA
	inc $CD.b,X		; F6 CD
	php		; 08
	asl $48.b		; 06 48
	plx		; FA
	inc $DD.b,X		; F6 DD
	php		; 08
	php		; 08
	pha		; 48
	ora $BEDF.w,Y		; 19 DF BE
	brk $0A.b		; 00 0A
	rti		; 40

	and ($D7.b,X)		; 21 D7
	ldx $0B00.w,Y		; BE 00 0B
	rti		; 40

	and #$BECF.w		; 29 CF BE
	brk $0C.b		; 00 0C
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc $0D00.w		; ED 00 0D
	rti		; 40

	cmp $BE1F.w,Y		; D9 1F BE
	brk $0E.b		; 00 0E
	rti		; 40

	cmp ($27.b),Y		; D1 27
	lda $000C40.l,X		; BF 40 0C 00
	sbc #$BF0F.w		; E9 0F BF
	brk $0F.b		; 00 0F
	rti		; 40

	sbc ($17.b,X)		; E1 17
	ldx $1A00.w,Y		; BE 00 1A
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	ldx $1B00.w,Y		; BE 00 1B
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp $00.b,X		; D5 00
	trb $F240.w		; 1C 40 F2
	asl $DD.b		; 06 DD
	brk $1D.b		; 00 1D
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc $00.b		; E5 00
	asl $F640.w,X		; 1E 40 F6
	cop $ED.b		; 02 ED
	brk $1F.b		; 00 1F
	rti		; 40

	bpl  -8.b		; 10 F8
	sed		; F8
	cmp $0008.w,X		; DD 08 00
	pha		; 48
	nop		; EA
	asl $BD.b		; 06 BD
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $BD.b,X		; F6 BD
	php		; 08
	tsb $48.b		; 04 48
	php		; 08
	beq -27.b		; F0 E5
	brk $06.b		; 00 06
	rti		; 40

	plx		; FA
	inc $00ED.w,X		; FE ED 00
	ora [$40.b]		; 07 40
	beq   8.b		; F0 08
	cmp $0800.w,X		; DD 00 08
	rti		; 40

	php		; 08
	beq -35.b		; F0 DD
	brk $09.b		; 00 09
	rti		; 40

	xce		; FB
	sbc $00F5.w,X		; FD F5 00
	asl A		; 0A
	rti		; 40

	tsb $F4.b		; 04 F4
	clv		; B8
	brk $0B.b		; 00 0B
	rti		; 40

	sbc $03.b,X		; F5 03
	cmp $00.b,X		; D5 00
	tsb $FD40.w		; 0C 40 FD
	xce		; FB
	cmp $00.b,X		; D5 00
	ora $0540.w		; 0D 40 05
	sbc ($D5.b,S),Y		; F3 D5
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $FDFB.w,X		; FD FB FD
	brk $0F.b		; 00 0F
	rti		; 40

	asl $F2.b		; 06 F2
	sbc $1600.w		; ED 00 16
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cmp $1700.w		; CD 00 17
	rti		; 40

	sbc $00CDF9.l,X		; FF F9 CD 00
	clc		; 18
	rti		; 40

	ora [$F1.b],Y		; 17 F1
	sbc $0008C0.l,X		; FF C0 08 00
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cpy #$0208.w		; C0 08 02
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	cpx #$0408.w		; E0 08 04
	pha		; 48
	ora $BEDF.w,Y		; 19 DF BE
	brk $06.b		; 00 06
	rti		; 40

	and ($D7.b,X)		; 21 D7
	ldx $0700.w,Y		; BE 00 07
	rti		; 40

	and #$BECF.w		; 29 CF BE
	brk $08.b		; 00 08
	rti		; 40

	cmp ($27.b),Y		; D1 27
	lda $000840.l,X		; BF 40 08 00
	cmp $BF1F.w,Y		; D9 1F BF
	rti		; 40

	ora [$00.b]		; 07 00
	sbc ($17.b,X)		; E1 17
	lda $400900.l,X		; BF 00 09 40
	sbc #$BF0F.w		; E9 0F BF
	brk $0A.b		; 00 0A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	beq   0.b		; F0 00
	phd		; 0B
	rti		; 40

	sed		; F8
	brk $D0.b		; 00 D0
	brk $0C.b		; 00 0C
	rti		; 40

	brk $F8.b		; 00 F8
	bne   0.b		; D0 00
	ora $FA40.w		; 0D 40 FA
	inc $00D8.w,X		; FE D8 00
	asl $0240.w		; 0E 40 02
	inc $D8.b,X		; F6 D8
	brk $0F.b		; 00 0F
	rti		; 40

	plx		; FA
	inc $0000.w,X		; FE 00 00
	asl $40.b,X		; 16 40
	sbc ($05.b,S),Y		; F3 05
	cld		; D8
	brk $17.b		; 00 17
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	ldx $1800.w,Y		; BE 00 18
	rti		; 40

	ora $F5.b,S		; 03 F5
	cpx #$1900.w		; E0 00 19
	rti		; 40

	ora $F5.b,S		; 03 F5
	inx		; E8
	brk $1A.b		; 00 1A
	rti		; 40

	pea $F004.w		; F4 04 F0
	brk $1B.b		; 00 1B
	rti		; 40

	sbc [$01.b],Y		; F7 01
	sed		; F8
	brk $1C.b		; 00 1C
	rti		; 40

	sbc $00F8F9.l,X		; FF F9 F8 00
	ora $1140.w,X		; 1D 40 11
	xce		; FB
	sbc $E2.b,X		; F5 E2
	php		; 08
	brk $48.b		; 00 48
	tsb $EC.b		; 04 EC
	tax		; AA
	php		; 08
	cop $48.b		; 02 48
	tsb $BAE4.w		; 0C E4 BA
	php		; 08
	tsb $48.b		; 04 48
	jsr ($BAF4.w,X)		; FC F4 BA
	php		; 08
	asl $48.b		; 06 48
	jsr ($CAF4.w,X)		; FC F4 CA
	php		; 08
	php		; 08
	pha		; 48
	sbc $FAFF.w,Y		; F9 FF FA
	brk $0A.b		; 00 0A
	rti		; 40

	phd		; 0B
	sbc $00E2.w		; ED E2 00
	phd		; 0B
	rti		; 40

	phd		; 0B
	sbc $00EA.w		; ED EA 00
	tsb $0240.w		; 0C 40 02
	inc $DA.b,X		; F6 DA
	brk $0D.b		; 00 0D
	rti		; 40

	asl A		; 0A
	inc $00DA.w		; EE DA 00
	asl $FB40.w		; 0E 40 FB
	sbc $00F2.w,X		; FD F2 00
	ora $ED0B40.l		; 0F 40 0B ED
	sbc ($00.b)		; F2 00
	inc A		; 1A
	rti		; 40

	jsr ($B2FC.w,X)		; FC FC B2
	brk $1B.b		; 00 1B
	rti		; 40

	tsb $CAEC.w		; 0C EC CA
	brk $1C.b		; 00 1C
	rti		; 40

	tsb $D2EC.w		; 0C EC D2
	brk $1D.b		; 00 1D
	rti		; 40

	asl $E2.b,X		; 16 E2
	lda ($00.b,S),Y		; B3 00
	asl $0F40.w,X		; 1E 40 0F
	sbc #$00FA.w		; E9 FA 00
	ora $051040.l,X		; 1F 40 10 05
	xba		; EB
	lda ($08.b)		; B2 08
	brk $48.b		; 00 48
	ora ($E6.b)		; 12 E6
	tax		; AA
	brk $02.b		; 00 02
	rti		; 40

	asl A		; 0A
	inc $00AA.w		; EE AA 00
	ora $40.b,S		; 03 40
	ora $E3.b,X		; 15 E3
	lda ($00.b)		; B2 00
	tsb $40.b		; 04 40
	ora $E3.b,X		; 15 E3
	tsx		; BA
	brk $05.b		; 00 05
	rti		; 40

	ora $F3.b		; 05 F3
	rep #$00		; C2 00
	asl $40.b		; 06 40
	ora $C2EB.w		; 0D EB C2
	brk $07.b		; 00 07
	rti		; 40

	ora $E3.b,X		; 15 E3
	rep #$00		; C2 00
	php		; 08
	rti		; 40

	tsb $EC.b		; 04 EC
	nop		; EA
	php		; 08
	ora ($48.b)		; 12 48
	ora [$E9.b]		; 07 E9
	phx		; DA
	php		; 08
	trb $48.b		; 14 48
	sbc $08CAF1.l,X		; FF F1 CA 08
	asl $48.b,X		; 16 48
	ora ($F7.b,X)		; 01 F7
	plx		; FA
	brk $18.b		; 00 18
	rti		; 40

	ora #$FAEF.w		; 09 EF FA
	brk $19.b		; 00 19
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	plx		; FA
	brk $1A.b		; 00 1A
	rti		; 40

	ora $00CAE9.l		; 0F E9 CA 00
	tas		; 1B
	rti		; 40

	ora $00D2E9.l		; 0F E9 D2 00
	trb $0D40.w		; 1C 40 0D
	ora $AAE3.w		; 0D E3 AA
	php		; 08
	brk $48.b		; 00 48
	ora $BAE3.w		; 0D E3 BA
	php		; 08
	cop $48.b		; 02 48
	ora $F3.b		; 05 F3
	lda ($00.b)		; B2 00
	tsb $40.b		; 04 40
	ora $F3.b		; 05 F3
	tsx		; BA
	brk $05.b		; 00 05
	rti		; 40

	ora $F3.b		; 05 F3
	rep #$00		; C2 00
	asl $40.b		; 06 40
	tsb $EC.b		; 04 EC
	nop		; EA
	php		; 08
	trb $48.b		; 14 48
	ora [$E9.b]		; 07 E9
	phx		; DA
	php		; 08
	asl $48.b,X		; 16 48
	sbc $08CAF1.l,X		; FF F1 CA 08
	clc		; 18
	pha		; 48
	ora ($F7.b,X)		; 01 F7
	plx		; FA
	brk $1A.b		; 00 1A
	rti		; 40

	ora #$FAEF.w		; 09 EF FA
	brk $1B.b		; 00 1B
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	plx		; FA
	brk $1C.b		; 00 1C
	rti		; 40

	ora $00CAE9.l		; 0F E9 CA 00
	ora $0F40.w,X		; 1D 40 0F
	sbc #$00D2.w		; E9 D2 00
	asl $1940.w,X		; 1E 40 19
	xce		; FB
	sbc $DB.b,X		; F5 DB
	php		; 08
	brk $48.b		; 00 48
	sbc [$F9.b],Y		; F7 F9
	cmp $08.b,S		; C3 08
	cop $48.b		; 02 48
	php		; 08
	beq -85.b		; F0 AB
	brk $04.b		; 00 04
	rti		; 40

	sed		; F8
	brk $F3.b		; 00 F3
	brk $05.b		; 00 05
	rti		; 40

	php		; 08
	beq -18.b		; F0 EE
	brk $06.b		; 00 06
	rti		; 40

	sbc $B3FF.w,Y		; F9 FF B3
	brk $07.b		; 00 07
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda ($00.b,S),Y		; B3 00
	php		; 08
	rti		; 40

	sbc $EBFF.w,Y		; F9 FF EB
	brk $09.b		; 00 09
	rti		; 40

	sed		; F8
	brk $AB.b		; 00 AB
	brk $0A.b		; 00 0A
	rti		; 40

	xba		; EB
	ora $00B4.w		; 0D B4 00
	phd		; 0B
	rti		; 40

	ora $F2EB.w		; 0D EB F2
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $BB0B.w		; ED 0B BB
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $03.b,X		; F5 03
	tyx		; BB
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $BBFB.w,X		; FD FB BB
	brk $0F.b		; 00 0F
	rti		; 40

	ora $F3.b		; 05 F3
	tyx		; BB
	brk $14.b		; 00 14
	rti		; 40

	ora $F3.b		; 05 F3
	sbc [$00.b]		; E7 00
	ora $40.b,X		; 15 40
	inc $02.b,X		; F6 02
	xce		; FB
	brk $16.b		; 00 16
	rti		; 40

	ora $00FAE9.l		; 0F E9 FA 00
	ora [$40.b],Y		; 17 40
	brk $F8.b		; 00 F8
	plb		; AB
	brk $18.b		; 00 18
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp $00.b,S		; C3 00
	ora $0740.w,Y		; 19 40 07
	sbc ($CB.b),Y		; F1 CB
	brk $1A.b		; 00 1A
	rti		; 40

	sbc $00D3F9.l,X		; FF F9 D3 00
	tas		; 1B
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp ($00.b,S),Y		; D3 00
	trb $0F40.w		; 1C 40 0F
	sbc #$00C6.w		; E9 C6 00
	ora $0F40.w,X		; 1D 40 0F
	sbc #$00CE.w		; E9 CE 00
	asl $0C40.w,X		; 1E 40 0C
	ora ($EF.b,X)		; 01 EF
	tsx		; BA
	php		; 08
	brk $48.b		; 00 48
	plx		; FA
	inc $D2.b,X		; F6 D2
	php		; 08
	cop $48.b		; 02 48
	tsb $EC.b		; 04 EC
	sep #$08		; E2 08
	tsb $48.b		; 04 48
	tsb $EC.b		; 04 EC
	sbc ($08.b)		; F2 08
	asl $48.b		; 06 48
	pea $F2FC.w		; F4 FC F2
	php		; 08
	php		; 08
	pha		; 48
	asl A		; 0A
	inc $00CA.w		; EE CA 00
	asl A		; 0A
	rti		; 40

	asl A		; 0A
	inc $00D2.w		; EE D2 00
	phd		; 0B
	rti		; 40

	asl A		; 0A
	inc $00DA.w		; EE DA 00
	tsb $FC40.w		; 0C 40 FC
	jsr ($00E2.w,X)		; FC E2 00
	ora $F440.w		; 0D 40 F4
	tsb $EA.b		; 04 EA
	brk $0E.b		; 00 0E
	rti		; 40

	jsr ($EAFC.w,X)		; FC FC EA
	brk $0F.b		; 00 0F
	rti		; 40

	inc $CAFA.w,X		; FE FA CA
	brk $1A.b		; 00 1A
	rti		; 40

	ora $10.b,X		; 15 10
	cpx #$08AA.w		; E0 AA 08
	brk $48.b		; 00 48
	beq   0.b		; F0 00
	dex		; CA
	php		; 08
	cop $48.b		; 02 48
	brk $F0.b		; 00 F0
	dex		; CA
	php		; 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $BA.b,X		; F6 BA
	php		; 08
	asl $48.b		; 06 48
	asl A		; 0A
	inc $BA.b		; E6 BA
	php		; 08
	php		; 08
	pha		; 48
	sbc $0D.b,S		; E3 0D
	phx		; DA
	php		; 08
	asl A		; 0A
	pha		; 48
	and $CB.b		; 25 CB
	txs		; 9A
	php		; 08
	tsb $0848.w		; 0C 48 08
	beq -78.b		; F0 B2
	brk $0E.b		; 00 0E
	rti		; 40

	bpl -24.b		; 10 E8
	dex		; CA
	brk $0F.b		; 00 0F
	rti		; 40

	jsr $AAD8.w		; 20 D8 AA
	brk $1E.b		; 00 1E
	rti		; 40

	jsr $B2D8.w		; 20 D8 B2
	brk $1F.b		; 00 1F
	rti		; 40

	inc A		; 1A
	dec $00BA.w,X		; DE BA 00
	jsr $E840.w		; 20 40 E8
	bpl -46.b		; 10 D2
	brk $21.b		; 00 21
	rti		; 40

	inx		; E8
	bpl -22.b		; 10 EA
	brk $22.b		; 00 22
	rti		; 40

	xce		; FB
	sbc $00DA.w,X		; FD DA 00
	and $40.b,S		; 23 40
	stp		; DB
	ora $00E2.w,X		; 1D E2 00
	bit $40.b		; 24 40
	beq   8.b		; F0 08
	nop		; EA
	brk $25.b		; 00 25
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	phx		; DA
	brk $26.b		; 00 26
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sep #$00		; E2 00
	and [$40.b]		; 27 40
	ora $A2DB.w,X		; 1D DB A2
	brk $28.b		; 00 28
	rti		; 40

	plp		; 28
	bne -86.b		; D0 AA
	brk $29.b		; 00 29
	rti		; 40

	and $28.b,S		; 23 28
	iny		; C8
	txs		; 9A
	php		; 08
	brk $48.b		; 00 48
	clc		; 18
	cld		; D8
	txs		; 9A
	php		; 08
	cop $48.b		; 02 48
	plp		; 28
	iny		; C8
	tax		; AA
	php		; 08
	tsb $48.b		; 04 48
	sed		; F8
	sed		; F8
	ldx #$0608.w		; A2 08 06
	pha		; 48
	php		; 08
	inx		; E8
	ldx #$0808.w		; A2 08 08
	pha		; 48
	clc		; 18
	cld		; D8
	tax		; AA
	php		; 08
	asl A		; 0A
	pha		; 48
	beq   0.b		; F0 00
	lda ($08.b)		; B2 08
	tsb $0048.w		; 0C 48 00
	beq -78.b		; F0 B2
	php		; 08
	asl $2048.w		; 0E 48 20
	bne -70.b		; D0 BA
	php		; 08
	jsr $2048.w		; 20 48 20
	bne -54.b		; D0 CA
	php		; 08
	jsl $E01048.l		; 22 48 10 E0
	tsx		; BA
	php		; 08
	bit $48.b		; 24 48
	bpl -32.b		; 10 E0
	dex		; CA
	php		; 08
	rol $48.b		; 26 48
	beq   0.b		; F0 00
	rep #$08		; C2 08
	plp		; 28
	pha		; 48
	brk $F0.b		; 00 F0
	rep #$08		; C2 08
	rol A		; 2A
	pha		; 48
	nop		; EA
	asl $DA.b		; 06 DA
	php		; 08
	bit $1048.w		; 2C 48 10
	inx		; E8
	nop		; EA
	brk $2E.b		; 00 2E
	rti		; 40

	inx		; E8
	bpl -78.b		; 10 B2
	brk $2F.b		; 00 2F
	rti		; 40

	cpx #$BA18.w		; E0 18 BA
	brk $3E.b		; 00 3E
	rti		; 40

	inx		; E8
	bpl -62.b		; 10 C2
	brk $3F.b		; 00 3F
	rti		; 40

	inx		; E8
	bpl -46.b		; 10 D2
	brk $40.b		; 00 40
	rti		; 40

	php		; 08
	beq -38.b		; F0 DA
	brk $41.b		; 00 41
	rti		; 40

	php		; 08
	beq -30.b		; F0 E2
	brk $42.b		; 00 42
	rti		; 40

	bpl -24.b		; 10 E8
	lda ($00.b)		; B2 00
	eor $40.b,S		; 43 40
	beq   8.b		; F0 08
	cmp ($00.b)		; D2 00
	mvp $F8,$40		; 44 40 F8
	brk $D2.b		; 00 D2
	brk $45.b		; 00 45
	rti		; 40

	brk $F8.b		; 00 F8
	cmp ($00.b)		; D2 00
	lsr $40.b		; 46 40
	php		; 08
	beq -46.b		; F0 D2
	brk $47.b		; 00 47
	rti		; 40

	plx		; FA
	inc $00DA.w,X		; FE DA 00
	pha		; 48
	rti		; 40

	phx		; DA
	asl $00E2.w,X		; 1E E2 00
	eor #$1840.w		; 49 40 18
	cpx #$00E2.w		; E0 E2 00
	lsr A		; 4A
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	phx		; DA
	brk $4B.b		; 00 4B
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	sep #$00		; E2 00
	jmp $E240.w		; 4C 40 E2
	asl $EA.b,X		; 16 EA
	brk $4D.b		; 00 4D
	rti		; 40

	nop		; EA
	asl $00EA.w		; 0E EA 00
	lsr $1740.w		; 4E 40 17
	sbc ($DA.b,X)		; E1 DA
	brk $4F.b		; 00 4F
	rti		; 40

	trb $F0.b		; 14 F0
	brk $DF.b		; 00 DF
	dey		; 88
	brk $C8.b		; 00 C8
	beq   0.b		; F0 00
	cmp $C80288.l		; CF 88 02 C8
	beq   0.b		; F0 00
	lda $C80488.l,X		; BF 88 04 C8
	sbc ($FE.b)		; F2 FE
	sbc $C80688.l		; EF 88 06 C8
	beq   8.b		; F0 08
	lda [$80.b],Y		; B7 80
	php		; 08
	cpy #$00.b		; C0 00
	sed		; F8
	sbc [$80.b]		; E7 80
	ora #$00C0.w		; 09 C0 00
	sed		; F8
	cmp $C00A80.l,X		; DF 80 0A C0
	brk $F8.b		; 00 F8
	cmp [$80.b],Y		; D7 80
	phd		; 0B
	cpy #$00.b		; C0 00
	sed		; F8
	cmp $C00C80.l		; CF 80 0C C0
	brk $F8.b		; 00 F8
	cmp [$80.b]		; C7 80
	ora $00C0.w		; 0D C0 00
	sed		; F8
	lda $C00E80.l,X		; BF 80 0E C0
	php		; 08
	beq -22.b		; F0 EA
	bra  15.b		; 80 0F
	cpy #$08.b		; C0 08
	beq -30.b		; F0 E2
	bra  24.b		; 80 18
	cpy #$09.b		; C0 09
	sbc $1980AE.l		; EF AE 80 19
	cpy #$EA.b		; C0 EA
	asl $80AF.w		; 0E AF 80
	inc A		; 1A
	cpy #$E8.b		; C0 E8
	bpl -89.b		; 10 A7
	bra  27.b		; 80 1B
	cpy #$04.b		; C0 04
	pea $80BC.w		; F4 BC 80
	trb $0DC0.w		; 1C C0 0D
	xba		; EB
	lda [$80.b]		; A7 80
	ora $EDC0.w,X		; 1D C0 ED
	phd		; 0B
	ldy $80.b,X		; B4 80
	asl $06C0.w,X		; 1E C0 06
	sbc ($B5.b)		; F2 B5
	bra  31.b		; 80 1F
	cpy #$16.b		; C0 16
	sed		; F8
	sed		; F8
	sbc $C80088.l		; EF 88 00 C8
	beq   0.b		; F0 00
	cmp $C80288.l		; CF 88 02 C8
	sbc $88DF01.l		; EF 01 DF 88
	tsb $C8.b		; 04 C8
	bpl -24.b		; 10 E8
	tax		; AA
	bra   6.b		; 80 06
	cpy #$F0.b		; C0 F0
	php		; 08
	sbc $C00780.l		; EF 80 07 C0
	brk $F8.b		; 00 F8
	cmp [$80.b],Y		; D7 80
	php		; 08
	cpy #$00.b		; C0 00
	sed		; F8
	cmp $C00980.l		; CF 80 09 C0
	php		; 08
	beq -66.b		; F0 BE
	bra  10.b		; 80 0A
	cpy #$F1.b		; C0 F1
	ora [$C7.b]		; 07 C7
	bra  11.b		; 80 0B
	cpy #$F9.b		; C0 F9
	sbc $0C80C7.l,X		; FF C7 80 0C
	cpy #$01.b		; C0 01
	sbc [$C7.b],Y		; F7 C7
	bra  13.b		; 80 0D
	cpy #$09.b		; C0 09
	sbc $0E80B6.l		; EF B6 80 0E
	cpy #$EA.b		; C0 EA
	asl $80AB.w		; 0E AB 80
	ora $F503C0.l		; 0F C0 03 F5
	lda $C01680.l,X		; BF 80 16 C0
	cpx $B20C.w		; EC 0C B2
	bra  23.b		; 80 17
	cpy #$ED.b		; C0 ED
	phd		; 0B
	tsx		; BA
	bra  24.b		; 80 18
	cpy #$0D.b		; C0 0D
	xba		; EB
	lda ($80.b),Y		; B1 80
	ora $07C0.w,Y		; 19 C0 07
	sbc ($DF.b),Y		; F1 DF
	bra  26.b		; 80 1A
	cpy #$0F.b		; C0 0F
	sbc #$80DF.w		; E9 DF 80
	tas		; 1B
	cpy #$F0.b		; C0 F0
	php		; 08
	lda $C01C80.l,X		; BF 80 1C C0
	sbc $80E7F9.l,X		; FF F9 E7 80
	ora $FFC0.w,X		; 1D C0 FF
	sbc $80DF.w,Y		; F9 DF 80
	asl $1AC0.w,X		; 1E C0 1A
	inx		; E8
	php		; 08
	sbc ($88.b,X)		; E1 88
	brk $C8.b		; 00 C8
	sed		; F8
	brk $C1.b		; 00 C1
	bra   2.b		; 80 02
	cpy #$E8.b		; C0 E8
	bpl -39.b		; 10 D9
	bra   3.b		; 80 03
	cpy #$F0.b		; C0 F0
	php		; 08
	cmp $0480.w,Y		; D9 80 04
	cpy #$F8.b		; C0 F8
	brk $E0.b		; 00 E0
	bra   5.b		; 80 05
	cpy #$E0.b		; C0 E0
	clc		; 18
	xba		; EB
	bra   6.b		; 80 06
	cpy #$E0.b		; C0 E0
	clc		; 18
	sbc $80.b,S		; E3 80
	ora [$C0.b]		; 07 C0
	cpx #$18.b		; E0 18
	stp		; DB
	bra   8.b		; 80 08
	cpy #$E0.b		; C0 E0
	clc		; 18
	cmp ($80.b,S),Y		; D3 80
	ora #$04C0.w		; 09 C0 04
	pea $80B4.w		; F4 B4 80
	asl A		; 0A
	cpy #$E5.b		; C0 E5
	ora ($D1.b,S),Y		; 13 D1
	bra  11.b		; 80 0B
	cpy #$ED.b		; C0 ED
	phd		; 0B
	cmp ($80.b),Y		; D1 80
	tsb $F5C0.w		; 0C C0 F5
	ora $D1.b,S		; 03 D1
	bra  13.b		; 80 0D
	cpy #$E5.b		; C0 E5
	ora ($C9.b,S),Y		; 13 C9
	bra  14.b		; 80 0E
	cpy #$E5.b		; C0 E5
	ora ($C1.b,S),Y		; 13 C1
	bra  15.b		; 80 0F
	cpy #$E5.b		; C0 E5
	ora ($B9.b,S),Y		; 13 B9
	bra  18.b		; 80 12
	cpy #$FD.b		; C0 FD
	xce		; FB
	ldx $1380.w,Y		; BE 80 13
	cpy #$EE.b		; C0 EE
	asl A		; 0A
	sbc $1480.w,Y		; F9 80 14
	cpy #$F6.b		; C0 F6
	cop $F9.b		; 02 F9
	bra  21.b		; 80 15
	cpy #$E6.b		; C0 E6
	ora ($B1.b)		; 12 B1
	bra  22.b		; 80 16
	cpy #$E7.b		; C0 E7
	ora ($F1.b),Y		; 11 F1
	bra  23.b		; 80 17
	cpy #$EF.b		; C0 EF
	ora #$80F1.w		; 09 F1 80
	clc		; 18
	cpy #$F7.b		; C0 F7
	ora ($F1.b,X)		; 01 F1
	bra  25.b		; 80 19
	cpy #$EF.b		; C0 EF
	ora #$80C9.w		; 09 C9 80
	inc A		; 1A
	cpy #$F7.b		; C0 F7
	ora ($C9.b,X)		; 01 C9
	bra  27.b		; 80 1B
	cpy #$FF.b		; C0 FF
	sbc $80B7.w,Y		; F9 B7 80
	trb $14C0.w		; 1C C0 14
	sep #$0E		; E2 0E
	sbc $88.b		; E5 88
	brk $C8.b		; 00 C8
	plx		; FA
	inc $DD.b,X		; F6 DD
	dey		; 88
	cop $C8.b		; 02 C8
	nop		; EA
	asl $D5.b		; 06 D5
	dey		; 88
	tsb $C8.b		; 04 C8
	asl A		; 0A
	inc $DB.b		; E6 DB
	dey		; 88
	asl $C8.b		; 06 C8
	jsl $80E8D6.l		; 22 D6 E8 80
	php		; 08
	cpy #$1A.b		; C0 1A
	dec $80E0.w,X		; DE E0 80
	ora #$1AC0.w		; 09 C0 1A
	dec $80D8.w,X		; DE D8 80
	asl A		; 0A
	cpy #$2A.b		; C0 2A
	dec $80D0.w		; CE D0 80
	phd		; 0B
	cpy #$E8.b		; C0 E8
	bpl -11.b		; 10 F5
	bra  12.b		; 80 0C
	cpy #$F0.b		; C0 F0
	php		; 08
	sbc $80.b,X		; F5 80
	ora $00C0.w		; 0D C0 00
	sed		; F8
	sbc $0E80.w		; ED 80 0E
	cpy #$F2.b		; C0 F2
	asl $ED.b		; 06 ED
	bra  15.b		; 80 0F
	cpy #$F2.b		; C0 F2
	asl $E5.b		; 06 E5
	bra  24.b		; 80 18
	cpy #$E2.b		; C0 E2
	asl $DD.b,X		; 16 DD
	bra  25.b		; 80 19
	cpy #$FA.b		; C0 FA
	inc $80D5.w,X		; FE D5 80
	inc A		; 1A
	cpy #$02.b		; C0 02
	inc $D5.b,X		; F6 D5
	bra  27.b		; 80 1B
	cpy #$22.b		; C0 22
	dec $D4.b,X		; D6 D4
	bra  28.b		; 80 1C
	cpy #$12.b		; C0 12
	inc $EB.b		; E6 EB
	bra  29.b		; 80 1D
	cpy #$1A.b		; C0 1A
	dec $80E8.w,X		; DE E8 80
	asl $2AC0.w,X		; 1E C0 2A
	dec $80EA.w		; CE EA 80
	ora $0014C0.l,X		; 1F C0 14 00
	beq -70.b		; F0 BA
	pha		; 48
	brk $08.b		; 00 08
	brk $F0.b		; 00 F0
	dex		; CA
	pha		; 48
	cop $08.b		; 02 08
	brk $F0.b		; 00 F0
	phx		; DA
	pha		; 48
	tsb $08.b		; 04 08
	inc $AAF2.w,X		; FE F2 AA
	pha		; 48
	asl $08.b		; 06 08
	php		; 08
	beq -22.b		; F0 EA
	rti		; 40

	php		; 08
	brk $F8.b		; 00 F8
	brk $BA.b		; 00 BA
	rti		; 40

	ora #$F800.w		; 09 00 F8
	brk $C2.b		; 00 C2
	rti		; 40

	asl A		; 0A
	brk $F8.b		; 00 F8
	brk $CA.b		; 00 CA
	rti		; 40

	phd		; 0B
	brk $F8.b		; 00 F8
	brk $D2.b		; 00 D2
	rti		; 40

	tsb $F800.w		; 0C 00 F8
	brk $DA.b		; 00 DA
	rti		; 40

	ora $F800.w		; 0D 00 F8
	brk $E2.b		; 00 E2
	rti		; 40

	asl $F000.w		; 0E 00 F0
	php		; 08
	lda [$40.b],Y		; B7 40
	ora $08F000.l		; 0F 00 F0 08
	lda $001840.l,X		; BF 40 18 00
	sbc $40F309.l		; EF 09 F3 40
	ora $0E00.w,Y		; 19 00 0E
	nop		; EA
	sbc ($40.b)		; F2 40
	inc A		; 1A
	brk $10.b		; 00 10
	inx		; E8
	plx		; FA
	rti		; 40

	tas		; 1B
	brk $F4.b		; 00 F4
	tsb $E5.b		; 04 E5
	rti		; 40

	trb $EB00.w		; 1C 00 EB
	ora $40FA.w		; 0D FA 40
	ora $0B00.w,X		; 1D 00 0B
	sbc $40ED.w		; ED ED 40
	asl $F200.w,X		; 1E 00 F2
	asl $EC.b		; 06 EC
	rti		; 40

	ora $F81600.l,X		; 1F 00 16 F8
	sed		; F8
	ldx $0048.w		; AE 48 00
	php		; 08
	brk $F0.b		; 00 F0
	dec $0248.w		; CE 48 02
	php		; 08
	ora ($EF.b,X)		; 01 EF
	ldx $0448.w,Y		; BE 48 04
	php		; 08
	inx		; E8
	bpl  -5.b		; 10 FB
	rti		; 40

	asl $00.b		; 06 00
	php		; 08
	beq -74.b		; F0 B6
	rti		; 40

	ora [$00.b]		; 07 00
	sed		; F8
	brk $CE.b		; 00 CE
	rti		; 40

	php		; 08
	brk $F8.b		; 00 F8
	brk $D6.b		; 00 D6
	rti		; 40

	ora #$F000.w		; 09 00 F0
	php		; 08
	sbc [$40.b]		; E7 40
	asl A		; 0A
	brk $07.b		; 00 07
	sbc ($DE.b),Y		; F1 DE
	rti		; 40

	phd		; 0B
	brk $FF.b		; 00 FF
	sbc $40DE.w,Y		; F9 DE 40
	tsb $F700.w		; 0C 00 F7
	ora ($DE.b,X)		; 01 DE
	rti		; 40

	ora $EF00.w		; 0D 00 EF
	ora #$40EF.w		; 09 EF 40
	asl $0E00.w		; 0E 00 0E
	nop		; EA
	plx		; FA
	rti		; 40

	ora $03F500.l		; 0F 00 F5 03
	inc $40.b		; E6 40
	asl $00.b,X		; 16 00
	tsb $F3EC.w		; 0C EC F3
	rti		; 40

	ora [$00.b],Y		; 17 00
	phd		; 0B
	sbc $40EB.w		; ED EB 40
	clc		; 18
	brk $EB.b		; 00 EB
	ora $40F4.w		; 0D F4 40
	ora $F100.w,Y		; 19 00 F1
	ora [$C6.b]		; 07 C6
	rti		; 40

	inc A		; 1A
	brk $E9.b		; 00 E9
	ora $1B40C6.l		; 0F C6 40 1B
	brk $08.b		; 00 08
	beq -26.b		; F0 E6
	rti		; 40

	trb $F900.w		; 1C 00 F9
	sbc $1D40BE.l,X		; FF BE 40 1D
	brk $F9.b		; 00 F9
	sbc $1E40C6.l,X		; FF C6 40 1E
	brk $1A.b		; 00 1A
	php		; 08
	inx		; E8
	rep #$48		; C2 48
	brk $08.b		; 00 08
	brk $F8.b		; 00 F8
	nop		; EA
	rti		; 40

	cop $00.b		; 02 00
	bpl -24.b		; 10 E8
	cmp ($40.b)		; D2 40
	ora $00.b,S		; 03 00
	php		; 08
	beq -46.b		; F0 D2
	rti		; 40

	tsb $00.b		; 04 00
	brk $F8.b		; 00 F8
	wai		; CB
	rti		; 40

	ora $00.b		; 05 00
	clc		; 18
	cpx #$C0.b		; E0 C0
	rti		; 40

	asl $00.b		; 06 00
	clc		; 18
	cpx #$C8.b		; E0 C8
	rti		; 40

	ora [$00.b]		; 07 00
	clc		; 18
	cpx #$D0.b		; E0 D0
	rti		; 40

	php		; 08
	brk $18.b		; 00 18
	cpx #$D8.b		; E0 D8
	rti		; 40

	ora #$F400.w		; 09 00 F4
	tsb $F7.b		; 04 F7
	rti		; 40

	asl A		; 0A
	brk $13.b		; 00 13
	sbc $DA.b		; E5 DA
	rti		; 40

	phd		; 0B
	brk $0B.b		; 00 0B
	sbc $40DA.w		; ED DA 40
	tsb $0300.w		; 0C 00 03
	sbc $DA.b,X		; F5 DA
	rti		; 40

	ora $1300.w		; 0D 00 13
	sbc $E2.b		; E5 E2
	rti		; 40

	asl $1300.w		; 0E 00 13
	sbc $EA.b		; E5 EA
	rti		; 40

	ora $E51300.l		; 0F 00 13 E5
	sbc ($40.b)		; F2 40
	ora ($00.b)		; 12 00
	xce		; FB
	sbc $40ED.w,X		; FD ED 40
	ora ($00.b,S),Y		; 13 00
	asl A		; 0A
	inc $40B2.w		; EE B2 40
	trb $00.b		; 14 00
	cop $F6.b		; 02 F6
	lda ($40.b)		; B2 40
	ora $00.b,X		; 15 00
	ora ($E6.b)		; 12 E6
	plx		; FA
	rti		; 40

	asl $00.b,X		; 16 00
	ora ($E7.b),Y		; 11 E7
	tsx		; BA
	rti		; 40

	ora [$00.b],Y		; 17 00
	ora #$BAEF.w		; 09 EF BA
	rti		; 40

	clc		; 18
	brk $01.b		; 00 01
	sbc [$BA.b],Y		; F7 BA
	rti		; 40

	ora $0900.w,Y		; 19 00 09
	sbc $1A40E2.l		; EF E2 40 1A
	brk $01.b		; 00 01
	sbc [$E2.b],Y		; F7 E2
	rti		; 40

	tas		; 1B
	brk $F9.b		; 00 F9
	sbc $1C40F4.l,X		; FF F4 40 1C
	brk $14.b		; 00 14
	asl $E5E2.w		; 0E E2 E5
	pha		; 48
	brk $08.b		; 00 08
	inc $FA.b,X		; F6 FA
	sbc $0248.w		; ED 48 02
	php		; 08
	asl $EA.b		; 06 EA
	sbc $48.b,X		; F5 48
	tsb $08.b		; 04 08
	inc $0A.b		; E6 0A
	sbc $080648.l		; EF 48 06 08
	dec $22.b,X		; D6 22
	nop		; EA
	rti		; 40

	php		; 08
	brk $DE.b		; 00 DE
	inc A		; 1A
	sbc ($40.b)		; F2 40
	ora #$DE00.w		; 09 00 DE
	inc A		; 1A
	plx		; FA
	rti		; 40

	asl A		; 0A
	brk $CE.b		; 00 CE
	rol A		; 2A
	cop $40.b		; 02 40
	phd		; 0B
	brk $10.b		; 00 10
	inx		; E8
	cmp $0C40.w,X		; DD 40 0C
	brk $08.b		; 00 08
	beq -35.b		; F0 DD
	rti		; 40

	ora $F800.w		; 0D 00 F8
	brk $E5.b		; 00 E5
	rti		; 40

	asl $0600.w		; 0E 00 06
	sbc ($E5.b)		; F2 E5
	rti		; 40

	ora $F20600.l		; 0F 00 06 F2
	sbc $1840.w		; ED 40 18
	brk $16.b		; 00 16
.ACCU 8
.INDEX 8
	sep #$F5		; E2 F5
	rti		; 40

	ora $FE00.w,Y		; 19 00 FE
	plx		; FA
	sbc $1A40.w,X		; FD 40 1A
	brk $F6.b		; 00 F6
	cop $FD.b		; 02 FD
	rti		; 40

	tas		; 1B
	brk $D6.b		; 00 D6
	jsl $1C40FE.l		; 22 FE 40 1C
	brk $E6.b		; 00 E6
	ora ($E7.b)		; 12 E7
	rti		; 40

	ora $DE00.w,X		; 1D 00 DE
	inc A		; 1A
	nop		; EA
	rti		; 40

	asl $CE00.w,X		; 1E 00 CE
	rol A		; 2A
	inx		; E8
	rti		; 40

	ora $101000.l,X		; 1F 00 10 10
	cpx #$ED.b		; E0 ED
	pha		; 48
	brk $08.b		; 00 08
	brk $F0.b		; 00 F0
	sbc $0248.w		; ED 48 02
	php		; 08
	cmp ($1D.b,S),Y		; D3 1D
	inc $48.b,X		; F6 48
	tsb $08.b		; 04 08
	beq   8.b		; F0 08
	sbc ($40.b)		; F2 40
	asl $00.b		; 06 00
	inx		; E8
	bpl -14.b		; 10 F2
	rti		; 40

	ora [$00.b]		; 07 00
	sed		; F8
	brk $ED.b		; 00 ED
	rti		; 40

	php		; 08
	brk $F8.b		; 00 F8
	brk $F5.b		; 00 F5
	rti		; 40

	ora #$00.b		; 09 00
	bpl -24.b		; 10 E8
	sbc $0A40.w,X		; FD 40 0A
	brk $08.b		; 00 08
	beq  -3.b		; F0 FD
	rti		; 40

	phd		; 0B
	brk $00.b		; 00 00
	sed		; F8
	sbc $0C40.w,X		; FD 40 0C
	brk $F8.b		; 00 F8
	brk $FD.b		; 00 FD
	rti		; 40

	ora $1400.w		; 0D 00 14
	cpx $E5.b		; E4 E5
	rti		; 40

	asl $E300.w		; 0E 00 E3
	ora $F2.b,X		; 15 F2
	rti		; 40

	ora $15E300.l		; 0F 00 E3 15
	plx		; FA
	rti		; 40

	asl $00.b,X		; 16 00
	wai		; CB
	and $40FC.w		; 2D FC 40
	ora [$00.b],Y		; 17 00
	beq   8.b		; F0 08
	plx		; FA
	rti		; 40

	clc		; 18
	brk $14.b		; 00 14
	brk $F0.b		; 00 F0
	cmp $8800C8.l,X		; DF C8 00 88
	brk $F0.b		; 00 F0
	cmp $8802C8.l		; CF C8 02 88
	brk $F0.b		; 00 F0
	lda $8804C8.l,X		; BF C8 04 88
	inc $EFF2.w,X		; FE F2 EF
	iny		; C8
	asl $88.b		; 06 88
	php		; 08
	beq -73.b		; F0 B7
	cpy #$08.b		; C0 08
	bra  -8.b		; 80 F8
	brk $E7.b		; 00 E7
	cpy #$09.b		; C0 09
	bra  -8.b		; 80 F8
	brk $DF.b		; 00 DF
	cpy #$0A.b		; C0 0A
	bra  -8.b		; 80 F8
	brk $D7.b		; 00 D7
	cpy #$0B.b		; C0 0B
	bra  -8.b		; 80 F8
	brk $CF.b		; 00 CF
	cpy #$0C.b		; C0 0C
	bra  -8.b		; 80 F8
	brk $C7.b		; 00 C7
	cpy #$0D.b		; C0 0D
	bra  -8.b		; 80 F8
	brk $BF.b		; 00 BF
	cpy #$0E.b		; C0 0E
	bra -16.b		; 80 F0
	php		; 08
	nop		; EA
	cpy #$0F.b		; C0 0F
	bra -16.b		; 80 F0
	php		; 08
	sep #$C0		; E2 C0
	clc		; 18
	bra -17.b		; 80 EF
	ora #$AE.b		; 09 AE
	cpy #$19.b		; C0 19
	bra  14.b		; 80 0E
	nop		; EA
	lda $801AC0.l		; AF C0 1A 80
	bpl -24.b		; 10 E8
	lda [$C0.b]		; A7 C0
	tas		; 1B
	bra -12.b		; 80 F4
	tsb $BC.b		; 04 BC
	cpy #$1C.b		; C0 1C
	bra -21.b		; 80 EB
	ora $C0A7.w		; 0D A7 C0
	ora $0B80.w,X		; 1D 80 0B
	sbc $C0B4.w		; ED B4 C0
	asl $F280.w,X		; 1E 80 F2
	asl $B5.b		; 06 B5
	cpy #$1F.b		; C0 1F
	bra  22.b		; 80 16
	sed		; F8
	sed		; F8
	sbc $8800C8.l		; EF C8 00 88
	brk $F0.b		; 00 F0
	cmp $8802C8.l		; CF C8 02 88
	ora ($EF.b,X)		; 01 EF
	cmp $8804C8.l,X		; DF C8 04 88
	inx		; E8
	bpl -86.b		; 10 AA
	cpy #$06.b		; C0 06
	bra   8.b		; 80 08
	beq -17.b		; F0 EF
	cpy #$07.b		; C0 07
	bra  -8.b		; 80 F8
	brk $D7.b		; 00 D7
	cpy #$08.b		; C0 08
	bra  -8.b		; 80 F8
	brk $CF.b		; 00 CF
	cpy #$09.b		; C0 09
	bra -16.b		; 80 F0
	php		; 08
	ldx $0AC0.w,Y		; BE C0 0A
	bra   7.b		; 80 07
	sbc ($C7.b),Y		; F1 C7
	cpy #$0B.b		; C0 0B
	bra  -1.b		; 80 FF
	sbc $C0C7.w,Y		; F9 C7 C0
	tsb $F780.w		; 0C 80 F7
	ora ($C7.b,X)		; 01 C7
	cpy #$0D.b		; C0 0D
	bra -17.b		; 80 EF
	ora #$B6.b		; 09 B6
	cpy #$0E.b		; C0 0E
	bra  14.b		; 80 0E
	nop		; EA
	plb		; AB
	cpy #$0F.b		; C0 0F
	bra -11.b		; 80 F5
	ora $BF.b,S		; 03 BF
	cpy #$16.b		; C0 16
	bra  12.b		; 80 0C
	cpx $C0B2.w		; EC B2 C0
	ora [$80.b],Y		; 17 80
	phd		; 0B
	sbc $C0BA.w		; ED BA C0
	clc		; 18
	bra -21.b		; 80 EB
	ora $C0B1.w		; 0D B1 C0
	ora $F180.w,Y		; 19 80 F1
	ora [$DF.b]		; 07 DF
	cpy #$1A.b		; C0 1A
	bra -23.b		; 80 E9
	ora $1BC0DF.l		; 0F DF C0 1B
	bra   8.b		; 80 08
	beq -65.b		; F0 BF
	cpy #$1C.b		; C0 1C
	bra  -7.b		; 80 F9
	sbc $1DC0E7.l,X		; FF E7 C0 1D
	bra  -7.b		; 80 F9
	sbc $1EC0DF.l,X		; FF DF C0 1E
	bra  26.b		; 80 1A
	php		; 08
	inx		; E8
	sbc ($C8.b,X)		; E1 C8
	brk $88.b		; 00 88
	brk $F8.b		; 00 F8
	cmp ($C0.b,X)		; C1 C0
	cop $80.b		; 02 80
	bpl -24.b		; 10 E8
	cmp $03C0.w,Y		; D9 C0 03
	bra   8.b		; 80 08
	beq -39.b		; F0 D9
	cpy #$04.b		; C0 04
	bra   0.b		; 80 00
	sed		; F8
	cpx #$C0.b		; E0 C0
	ora $80.b		; 05 80
	clc		; 18
	cpx #$EB.b		; E0 EB
	cpy #$06.b		; C0 06
	bra  24.b		; 80 18
	cpx #$E3.b		; E0 E3
	cpy #$07.b		; C0 07
	bra  24.b		; 80 18
	cpx #$DB.b		; E0 DB
	cpy #$08.b		; C0 08
	bra  24.b		; 80 18
	cpx #$D3.b		; E0 D3
	cpy #$09.b		; C0 09
	bra -12.b		; 80 F4
	tsb $B4.b		; 04 B4
	cpy #$0A.b		; C0 0A
	bra  19.b		; 80 13
	sbc $D1.b		; E5 D1
	cpy #$0B.b		; C0 0B
	bra  11.b		; 80 0B
	sbc $C0D1.w		; ED D1 C0
	tsb $0380.w		; 0C 80 03
	sbc $D1.b,X		; F5 D1
	cpy #$0D.b		; C0 0D
	bra  19.b		; 80 13
	sbc $C9.b		; E5 C9
	cpy #$0E.b		; C0 0E
	bra  19.b		; 80 13
	sbc $C1.b		; E5 C1
	cpy #$0F.b		; C0 0F
	bra  19.b		; 80 13
	sbc $B9.b		; E5 B9
	cpy #$12.b		; C0 12
	bra  -5.b		; 80 FB
	sbc $C0BE.w,X		; FD BE C0
	ora ($80.b,S),Y		; 13 80
	asl A		; 0A
	inc $C0F9.w		; EE F9 C0
	trb $80.b		; 14 80
	cop $F6.b		; 02 F6
	sbc $15C0.w,Y		; F9 C0 15
	bra  18.b		; 80 12
	inc $B1.b		; E6 B1
	cpy #$16.b		; C0 16
	bra  17.b		; 80 11
	sbc [$F1.b]		; E7 F1
	cpy #$17.b		; C0 17
	bra   9.b		; 80 09
	sbc $18C0F1.l		; EF F1 C0 18
	bra   1.b		; 80 01
	sbc [$F1.b],Y		; F7 F1
	cpy #$19.b		; C0 19
	bra   9.b		; 80 09
	sbc $1AC0C9.l		; EF C9 C0 1A
	bra   1.b		; 80 01
	sbc [$C9.b],Y		; F7 C9
	cpy #$1B.b		; C0 1B
	bra  -7.b		; 80 F9
	sbc $1CC0B7.l,X		; FF B7 C0 1C
	bra  16.b		; 80 10
	sed		; F8
	sed		; F8
	cmp $0048.w,X		; DD 48 00
	php		; 08
	asl $EA.b		; 06 EA
	lda $0248.w,X		; BD 48 02
	php		; 08
	inc $FA.b,X		; F6 FA
	lda $0448.w,X		; BD 48 04
	php		; 08
	beq   8.b		; F0 08
	sbc $40.b		; E5 40
	asl $00.b		; 06 00
	inc $EDFA.w,X		; FE FA ED
	rti		; 40

	ora [$00.b]		; 07 00
	php		; 08
	beq -35.b		; F0 DD
	rti		; 40

	php		; 08
	brk $F0.b		; 00 F0
	php		; 08
	cmp $0940.w,X		; DD 40 09
	brk $FD.b		; 00 FD
	xce		; FB
	sbc $40.b,X		; F5 40
	asl A		; 0A
	brk $F4.b		; 00 F4
	tsb $B8.b		; 04 B8
	rti		; 40

	phd		; 0B
	brk $03.b		; 00 03
	sbc $D5.b,X		; F5 D5
	rti		; 40

	tsb $FB00.w		; 0C 00 FB
	sbc $40D5.w,X		; FD D5 40
	ora $F300.w		; 0D 00 F3
	ora $D5.b		; 05 D5
	rti		; 40

	asl $FB00.w		; 0E 00 FB
	sbc $40FD.w,X		; FD FD 40
	ora $06F200.l		; 0F 00 F2 06
	sbc $1640.w		; ED 40 16
	brk $01.b		; 00 01
	sbc [$CD.b],Y		; F7 CD
	rti		; 40

	ora [$00.b],Y		; 17 00
	sbc $CDFF.w,Y		; F9 FF CD
	rti		; 40

	clc		; 18
	brk $13.b		; 00 13
	sed		; F8
	sed		; F8
	plb		; AB
	php		; 08
	brk $48.b		; 00 48
	pea $D3FC.w		; F4 FC D3
	php		; 08
	cop $48.b		; 02 48
	sbc $C303.w		; ED 03 C3
	php		; 08
	tsb $48.b		; 04 48
	sbc $C3F3.w,X		; FD F3 C3
	php		; 08
	asl $48.b		; 06 48
	sbc ($05.b,S),Y		; F3 05
	sbc $00.b,S		; E3 00
	php		; 08
	rti		; 40

	phd		; 0B
	sbc $00F3.w		; ED F3 00
	ora #$40.b		; 09 40
	pea $BB04.w		; F4 04 BB
	brk $0A.b		; 00 0A
	rti		; 40

	jsr ($BBFC.w,X)		; FC FC BB
	brk $0B.b		; 00 0B
	rti		; 40

	tsb $F4.b		; 04 F4
	tyx		; BB
	brk $0C.b		; 00 0C
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $40.b,S		; E3 40
	php		; 08
	brk $EC.b		; 00 EC
	tsb $40F3.w		; 0C F3 40
	ora #$00.b		; 09 00
	inx		; E8
	bpl  -5.b		; 10 FB
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp ($00.b,S),Y		; D3 00
	asl $0440.w		; 0E 40 04
	pea $00DB.w		; F4 DB 00
	ora $08F040.l		; 0F 40 F0 08
	inx		; E8
	brk $18.b		; 00 18
	rti		; 40

	ora #$EF.b		; 09 EF
	sbc $401900.l		; EF 00 19 40
	inc $EB0A.w		; EE 0A EB
	brk $1A.b		; 00 1A
	rti		; 40

	asl $FBEA.w		; 0E EA FB
	brk $1B.b		; 00 1B
	rti		; 40

	ora [$F1.b]		; 07 F1
	inx		; E8
	rti		; 40

	clc		; 18
	brk $10.b		; 00 10
	ora [$E9.b]		; 07 E9
	dex		; CA
	php		; 08
	brk $48.b		; 00 48
	ora [$D9.b],Y		; 17 D9
	stp		; DB
	php		; 08
	cop $48.b		; 02 48
	cmp [$19.b],Y		; D7 19
	cmp $08.b,X		; D5 08
	tsb $48.b		; 04 48
	sbc [$09.b]		; E7 09
	cmp ($08.b),Y		; D1 08
	asl $48.b		; 06 48
	sbc [$09.b]		; E7 09
	cmp ($08.b,X)		; C1 08
	php		; 08
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	cmp ($08.b,X)		; C1 08
	asl A		; 0A
	pha		; 48
	cpx #$18.b		; E0 18
	cmp [$00.b]		; C7 00
	tsb $DF40.w		; 0C 40 DF
	ora $00CD.w,Y		; 19 CD 00
	ora $0740.w		; 0D 40 07
	sbc ($C2.b),Y		; F1 C2
	brk $0E.b		; 00 0E
	rti		; 40

	cmp $00DF29.l		; CF 29 DF 00
	ora $11E740.l		; 0F 40 E7 11
	sbc ($00.b,X)		; E1 00
	trb $0F40.w		; 1C 40 0F
	sbc #$DA.b		; E9 DA
	brk $1D.b		; 00 1D
	rti		; 40

	cpx #$18.b		; E0 18
	sbc $00.b		; E5 00
	asl $1740.w,X		; 1E 40 17
	sbc ($D3.b,X)		; E1 D3
	brk $1F.b		; 00 1F
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cmp ($00.b),Y		; D1 00
	jsr $FF40.w		; 20 40 FF
	sbc $00D1.w,Y		; F9 D1 00
	and ($40.b,X)		; 21 40
	jsl $ECFEF2.l		; 22 F2 FE EC
	php		; 08
	brk $48.b		; 00 48
	cop $EE.b		; 02 EE
	cpx $0208.w		; EC 08 02
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	ldy $08.b,X		; B4 08
	tsb $48.b		; 04 48
	ora $ED.b,S		; 03 ED
	ldy $08.b,X		; B4 08
	asl $48.b		; 06 48
	xce		; FB
	sbc $D4.b,X		; F5 D4
	php		; 08
	php		; 08
	pha		; 48
	ora ($E5.b,S),Y		; 13 E5
	ldy $00.b,X		; B4 00
	asl A		; 0A
	rti		; 40

	xba		; EB
	ora $00BC.w		; 0D BC 00
	phd		; 0B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	pei ($00.b)		; D4 00
	tsb $1340.w		; 0C 40 13
	sbc $DC.b		; E5 DC
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $01FF.w,Y		; F9 FF 01
	brk $0E.b		; 00 0E
	rti		; 40

	brk $F8.b		; 00 F8
	jsr ($0F00.w,X)		; FC 00 0F
	rti		; 40

	php		; 08
	beq  -4.b		; F0 FC
	brk $1A.b		; 00 1A
	rti		; 40

	phd		; 0B
	sbc $00D4.w		; ED D4 00
	tas		; 1B
	rti		; 40

	phd		; 0B
	sbc $00DC.w		; ED DC 00
	trb $0340.w		; 1C 40 03
	sbc $00.b,X		; F5 00
	brk $1D.b		; 00 1D
	rti		; 40

	cpx $C40C.w		; EC 0C C4
	brk $1E.b		; 00 1E
	rti		; 40

	pea $C404.w		; F4 04 C4
	brk $1F.b		; 00 1F
	rti		; 40

	jsr ($C4FC.w,X)		; FC FC C4
	brk $20.b		; 00 20
	rti		; 40

	tsb $F4.b		; 04 F4
	cpy $00.b		; C4 00
	and ($40.b,X)		; 21 40
	tsb $C4EC.w		; 0C EC C4
	brk $22.b		; 00 22
	rti		; 40

	sbc $03.b,X		; F5 03
	jsr ($2300.w,X)		; FC 00 23
	rti		; 40

	inc $CC0A.w		; EE 0A CC
	brk $24.b		; 00 24
	rti		; 40

	inc $02.b,X		; F6 02
	cpy $2500.w		; CC 00 25
	rti		; 40

	inc $CCFA.w,X		; FE FA CC
	brk $26.b		; 00 26
	rti		; 40

	asl $F2.b		; 06 F2
	cpy $2700.w		; CC 00 27
	rti		; 40

	asl $CCEA.w		; 0E EA CC
	brk $28.b		; 00 28
	rti		; 40

	inc $02.b,X		; F6 02
	cpx $00.b		; E4 00
	and #$40.b		; 29 40
	inc $E4FA.w,X		; FE FA E4
	brk $2A.b		; 00 2A
	rti		; 40

	asl $F2.b		; 06 F2
	cpx $00.b		; E4 00
	pld		; 2B
	rti		; 40

	asl $E4EA.w		; 0E EA E4
	brk $2C.b		; 00 2C
	rti		; 40

	sbc [$01.b],Y		; F7 01
	ldy $2D00.w		; AC 00 2D
	rti		; 40

	sbc $00ACF9.l,X		; FF F9 AC 00
	rol $0740.w		; 2E 40 07
	sbc ($AC.b),Y		; F1 AC
	brk $2F.b		; 00 2F
	rti		; 40

	ora $00ACE9.l		; 0F E9 AC 00
	bmi  64.b		; 30 40
	ora [$F6.b],Y		; 17 F6
	plx		; FA
	ldy $0008.w		; AC 08 00
	pha		; 48
	inc $BC02.w		; EE 02 BC
	php		; 08
	cop $48.b		; 02 48
	inc $CC02.w		; EE 02 CC
	php		; 08
	tsb $48.b		; 04 48
	asl $EA.b		; 06 EA
	ldx $0608.w		; AE 08 06
	pha		; 48
	asl $EA.b		; 06 EA
	ldx $0808.w,Y		; BE 08 08
	pha		; 48
	asl $EA.b		; 06 EA
	dec $0A08.w		; CE 08 0A
	pha		; 48
	asl $DA.b,X		; 16 DA
	bcs   8.b		; B0 08
	tsb $1648.w		; 0C 48 16
	phx		; DA
	cpy #$08.b		; C0 08
	asl $1648.w		; 0E 48 16
	phx		; DA
	bne   8.b		; D0 08
	jsr $FE48.w		; 20 48 FE
	plx		; FA
	pei ($00.b)		; D4 00
	jsl $0AEE40.l		; 22 40 EE 0A
	jmp.w [$2300]		; DC 00 23
	rti		; 40

	inc $02.b,X		; F6 02
	jmp.w [$2400]		; DC 00 24
	rti		; 40

	inc $DCFA.w,X		; FE FA DC
	brk $25.b		; 00 25
	rti		; 40

	rol $D2.b		; 26 D2
	lda ($00.b)		; B2 00
	rol $40.b		; 26 40
	rol $D2.b		; 26 D2
	phx		; DA
	brk $27.b		; 00 27
	rti		; 40

	rol $D2.b		; 26 D2
	wai		; CB
	brk $28.b		; 00 28
	rti		; 40

	asl $F2.b		; 06 F2
	dec $2900.w,X		; DE 00 29
	rti		; 40

	asl $DEEA.w		; 0E EA DE
	brk $2A.b		; 00 2A
	rti		; 40

	inc $BCFA.w,X		; FE FA BC
	brk $2B.b		; 00 2B
	rti		; 40

	inc $C4FA.w,X		; FE FA C4
	brk $2C.b		; 00 2C
	rti		; 40

	inc $CCFA.w,X		; FE FA CC
	brk $2D.b		; 00 2D
	rti		; 40

	asl $E2.b,X		; 16 E2
	cpx #$00.b		; E0 00
	rol $1E40.w		; 2E 40 1E
	phx		; DA
	cpx #$00.b		; E0 00
	and $F01140.l		; 2F 40 11 F0
	brk $BB.b		; 00 BB
	php		; 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	tyx		; BB
	php		; 08
	cop $48.b		; 02 48
	nop		; EA
	asl $CB.b		; 06 CB
	php		; 08
	tsb $48.b		; 04 48
	sbc $08ABF1.l,X		; FF F1 AB 08
	asl $48.b		; 06 48
	beq   8.b		; F0 08
	sbc $00.b,S		; E3 00
	php		; 08
	rti		; 40

	sed		; F8
	brk $E3.b		; 00 E3
	brk $09.b		; 00 09
	rti		; 40

	php		; 08
	beq -53.b		; F0 CB
	brk $0A.b		; 00 0A
	rti		; 40

	bpl -24.b		; 10 E8
	wai		; CB
	brk $0B.b		; 00 0B
	rti		; 40

	bpl -24.b		; 10 E8
	cmp ($00.b,S),Y		; D3 00
	tsb $FA40.w		; 0C 40 FA
	inc $00CB.w,X		; FE CB 00
	ora $FA40.w		; 0D 40 FA
	inc $00D3.w,X		; FE D3 00
	asl $EA40.w		; 0E 40 EA
	asl $00DB.w		; 0E DB 00
	ora $06F240.l		; 0F 40 F2 06
	stp		; DB
	brk $18.b		; 00 18
	rti		; 40

	plx		; FA
	inc $00DB.w,X		; FE DB 00
	ora $F740.w,Y		; 19 40 F7
	ora ($B3.b,X)		; 01 B3
	brk $1A.b		; 00 1A
	rti		; 40

	ora $00B3E9.l		; 0F E9 B3 00
	tas		; 1B
	rti		; 40

	clc		; 18
	cpx #$D3.b		; E0 D3
	brk $1C.b		; 00 1C
	rti		; 40

	bpl   0.b		; 10 00
	beq -29.b		; F0 E3
	php		; 08
	brk $48.b		; 00 48
	bpl -32.b		; 10 E0
	sbc $08.b,S		; E3 08
	cop $48.b		; 02 48
	tsb $EC.b		; 04 EC
	sbc ($08.b,S),Y		; F3 08
	tsb $48.b		; 04 48
	asl $CBE2.w		; 0E E2 CB
	php		; 08
	asl $48.b		; 06 48
	pea $FB04.w		; F4 04 FB
	brk $08.b		; 00 08
	rti		; 40

	trb $E4.b		; 14 E4
	sbc ($00.b,S),Y		; F3 00
	ora #$40.b		; 09 40
	trb $E4.b		; 14 E4
	xce		; FB
	brk $0A.b		; 00 0A
	rti		; 40

	inc $DBFA.w,X		; FE FA DB
	brk $0B.b		; 00 0B
	rti		; 40

	jsr ($FBFC.w,X)		; FC FC FB
	brk $0C.b		; 00 0C
	rti		; 40

	asl $F2.b		; 06 F2
	cmp ($00.b,S),Y		; D3 00
	ora $0640.w		; 0D 40 06
	sbc ($DB.b)		; F2 DB
	brk $0E.b		; 00 0E
	rti		; 40

	asl $DBEA.w		; 0E EA DB
	brk $0F.b		; 00 0F
	rti		; 40

	asl $E2.b,X		; 16 E2
	stp		; DB
	brk $18.b		; 00 18
	rti		; 40

	asl $D5DA.w,X		; 1E DA D5
	brk $19.b		; 00 19
	rti		; 40

	rol $D2.b		; 26 D2
	cmp $00.b,X		; D5 00
	inc A		; 1A
	rti		; 40

	rol $D5CA.w		; 2E CA D5
	brk $1B.b		; 00 1B
	rti		; 40

	trb $0E.b		; 14 0E
.ACCU 8
	sep #$E5		; E2 E5
	iny		; C8
	brk $88.b		; 00 88
	inc $FA.b,X		; F6 FA
	cmp $02C8.w,X		; DD C8 02
	dey		; 88
	asl $EA.b		; 06 EA
	cmp $C8.b,X		; D5 C8
	tsb $88.b		; 04 88
	inc $0A.b		; E6 0A
	stp		; DB
	iny		; C8
	asl $88.b		; 06 88
	dec $22.b,X		; D6 22
	inx		; E8
	cpy #$08.b		; C0 08
	bra -34.b		; 80 DE
	inc A		; 1A
	cpx #$C0.b		; E0 C0
	ora #$80.b		; 09 80
	dec $D81A.w,X		; DE 1A D8
	cpy #$0A.b		; C0 0A
	bra -50.b		; 80 CE
	rol A		; 2A
	bne -64.b		; D0 C0
	phd		; 0B
	bra  16.b		; 80 10
	inx		; E8
	sbc $C0.b,X		; F5 C0
	tsb $0880.w		; 0C 80 08
	beq -11.b		; F0 F5
	cpy #$0D.b		; C0 0D
	bra  -8.b		; 80 F8
	brk $ED.b		; 00 ED
	cpy #$0E.b		; C0 0E
	bra   6.b		; 80 06
	sbc ($ED.b)		; F2 ED
	cpy #$0F.b		; C0 0F
	bra   6.b		; 80 06
	sbc ($E5.b)		; F2 E5
	cpy #$18.b		; C0 18
	bra  22.b		; 80 16
.INDEX 8
	sep #$DD		; E2 DD
	cpy #$19.b		; C0 19
	bra  -2.b		; 80 FE
	plx		; FA
	cmp $C0.b,X		; D5 C0
	inc A		; 1A
	bra -10.b		; 80 F6
	cop $D5.b		; 02 D5
	cpy #$1B.b		; C0 1B
	bra -42.b		; 80 D6
	jsl $1CC0D4.l		; 22 D4 C0 1C
	bra -26.b		; 80 E6
	ora ($EB.b)		; 12 EB
	cpy #$1D.b		; C0 1D
	bra -34.b		; 80 DE
	inc A		; 1A
	inx		; E8
	cpy #$1E.b		; C0 1E
	bra -50.b		; 80 CE
	rol A		; 2A
	nop		; EA
	cpy #$1F.b		; C0 1F
	bra  16.b		; 80 10
	bpl -32.b		; 10 E0
	sta $00C8.w		; 8D C8 00
	dey		; 88
	brk $F0.b		; 00 F0
	sta $02C8.w		; 8D C8 02
	dey		; 88
	cmp ($1D.b,S),Y		; D3 1D
	sty $C8.b		; 84 C8
	tsb $88.b		; 04 88
	beq   8.b		; F0 08
	bcc -64.b		; 90 C0
	asl $80.b		; 06 80
	inx		; E8
	bpl -112.b		; 10 90
	cpy #$07.b		; C0 07
	bra  -8.b		; 80 F8
	brk $95.b		; 00 95
	cpy #$08.b		; C0 08
	bra  -8.b		; 80 F8
	brk $8D.b		; 00 8D
	cpy #$09.b		; C0 09
	bra  16.b		; 80 10
	inx		; E8
	sta $C0.b		; 85 C0
	asl A		; 0A
	bra   8.b		; 80 08
	beq -123.b		; F0 85
	cpy #$0B.b		; C0 0B
	bra   0.b		; 80 00
	sed		; F8
	sta $C0.b		; 85 C0
	tsb $F880.w		; 0C 80 F8
	brk $85.b		; 00 85
	cpy #$0D.b		; C0 0D
	bra  20.b		; 80 14
	cpx $9D.b		; E4 9D
	cpy #$0E.b		; C0 0E
	bra -29.b		; 80 E3
	ora $90.b,X		; 15 90
	cpy #$0F.b		; C0 0F
	bra -29.b		; 80 E3
	ora $88.b,X		; 15 88
	cpy #$16.b		; C0 16
	bra -53.b		; 80 CB
	and $C086.w		; 2D 86 C0
	ora [$80.b],Y		; 17 80
	beq   8.b		; F0 08
	dey		; 88
	cpy #$18.b		; C0 18
	bra  15.b		; 80 0F
	php		; 08
	inx		; E8
	inx		; E8
	pha		; 48
	brk $08.b		; 00 08
	sed		; F8
	sed		; F8
	inx		; E8
	pha		; 48
	cop $08.b		; 02 08
	asl $EA.b		; 06 EA
	cld		; D8
	pha		; 48
	tsb $08.b		; 04 08
	inx		; E8
	bpl  -3.b		; 10 FD
	rti		; 40

	asl $00.b		; 06 00
	cpx #$18.b		; E0 18
	sbc $0740.w,X		; FD 40 07
	brk $F0.b		; 00 F0
	php		; 08
	sbc $0840.w		; ED 40 08
	brk $F0.b		; 00 F0
	php		; 08
	sbc $40.b,X		; F5 40
	ora #$00.b		; 09 00
	bpl -24.b		; 10 E8
	sed		; F8
	rti		; 40

	asl A		; 0A
	brk $08.b		; 00 08
	beq  -8.b		; F0 F8
	rti		; 40

	phd		; 0B
	brk $00.b		; 00 00
	sed		; F8
	sed		; F8
	rti		; 40

	tsb $F800.w		; 0C 00 F8
	brk $F8.b		; 00 F8
	rti		; 40

	ora $E800.w		; 0D 00 E8
	bpl -11.b		; 10 F5
	rti		; 40

	asl $0D00.w		; 0E 00 0D
	xba		; EB
	brk $40.b		; 00 40
	ora $F30500.l		; 0F 00 05 F3
	brk $40.b		; 00 40
	asl $00.b,X		; 16 00
	xce		; FB
	sbc $4000.w,X		; FD 00 40
	ora [$00.b],Y		; 17 00
	trb $08.b		; 14 08
	inx		; E8
	phx		; DA
	php		; 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	dex		; CA
	php		; 08
	cop $48.b		; 02 48
	beq   0.b		; F0 00
	dex		; CA
	php		; 08
	tsb $48.b		; 04 48
	beq   0.b		; F0 00
	phx		; DA
	php		; 08
	asl $48.b		; 06 48
	ora #$E7.b		; 09 E7
	nop		; EA
	php		; 08
	php		; 08
	pha		; 48
	sbc $EAF7.w,Y		; F9 F7 EA
	php		; 08
	asl A		; 0A
	pha		; 48
	cpx $AA04.w		; EC 04 AA
	php		; 08
	tsb $FC48.w		; 0C 48 FC
	pea $08AA.w		; F4 AA 08
	asl $EC48.w		; 0E 48 EC
	tsb $BA.b		; 04 BA
	php		; 08
	jsr $FC48.w		; 20 48 FC
	pea $08BA.w		; F4 BA 08
	jsl $F80048.l		; 22 48 00 F8
	ldx #$00.b		; A2 00
	bit $40.b		; 24 40
	sbc ($07.b),Y		; F1 07
	nop		; EA
	brk $25.b		; 00 25
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc ($00.b)		; F2 00
	rol $40.b		; 26 40
	sbc ($07.b),Y		; F1 07
	plx		; FA
	brk $27.b		; 00 27
	rti		; 40

	sbc $FAFF.w,Y		; F9 FF FA
	brk $28.b		; 00 28
	rti		; 40

	pea $0204.w		; F4 04 02
	brk $29.b		; 00 29
	rti		; 40

	beq   8.b		; F0 08
	ldx #$00.b		; A2 00
	rol A		; 2A
	rti		; 40

	brk $F8.b		; 00 F8
	phx		; DA
	brk $2B.b		; 00 2B
	rti		; 40

	brk $F8.b		; 00 F8
	sep #$00		; E2 00
	bit $F840.w		; 2C 40 F8
	brk $A2.b		; 00 A2
	brk $2D.b		; 00 2D
	rti		; 40

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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	cop $00.b		; 02 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	brk $01.b		; 00 01
	brk $80.b		; 00 80
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
	php		; 08
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	jsr $0080.w		; 20 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bra   0.b		; 80 00
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
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4B.b		; 00 4B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $99.b		; 00 99
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B5.b		; 00 B5
	brk $00.b		; 00 00
	bra   1.b		; 80 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $00		; Opcode 00 overrunning bank boundry at 05FFFE. Skipping.
	.db $D0		; Opcode D0 overrunning bank boundry at 05FFFF. Skipping.
.ENDS
