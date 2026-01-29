.BANK 33 SLOT 0
.ORG $0000

.SECTION "Bank33" FORCE

	sbc $00FF.w,X		; FD FF 00
	sbc $5D1EF8.l,X		; FF F8 1E 5D
	ldx #$AF.b		; A2 AF
	rti		; 40

	eor ($01.b)		; 52 01
	sta $03.b		; 85 03
	asl $9903.w		; 0E 03 99
	stx $DF.b,Y		; 96 DF
	cmp $5E.b,S		; C3 5E
	mvp $BA,$B6		; 44 B6 BA
	sbc $FEFE00.l,X		; FF 00 FE FE
	adc $E2BF00.l		; 6F 00 BF E2
	brk $FF.b		; 00 FF
	adc $5AFF2D.l,X		; 7F 2D FF 5A
	sbc $F0AB.w,X		; FD AB F0
	and ($C1.b,X)		; 21 C1
	txa		; 8A
	asl A		; 0A
	trb $B91C.w		; 1C 1C B9
	lda $7B6B.w,Y		; B9 6B 7B
	sbc $FCE4FF.l,X		; FF FF E4 FC
	inc $F500.w,X		; FE 00 F5
	brk $E3.b		; 00 E3
	brk $46.b		; 00 46
	brk $84.b		; 00 84
	brk $B6.b		; 00 B6
	iny		; C8
	txs		; 9A
	cop $FF.b		; 02 FF
	sta [$0C.b]		; 87 0C
	tsb $3A3A.w		; 0C 3A 3A
	eor $B85D.w,X		; 5D 5D B8
	jsr ($F870.w,X)		; FC 70 F8
	tax		; AA
	plx		; FA
	cpx $FF.b		; E4 FF
	sbc $F300FD.l,X		; FF FD 00 F3
	brk $C5.b		; 00 C5
	brk $A2.b		; 00 A2
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $05.b		; 00 05
	brk $15.b		; 00 15
	brk $FF.b		; 00 FF
	ora $5D202E.l,X		; 1F 2E 20 5D
	rti		; 40

	tsx		; BA
	.db $82, $55, $45		; 82 55 45
	and $17570F.l		; 2F 0F 57 17
	rol $E20F.w		; 2E 0F E2
	ora $A8DFE0.l,X		; 1F E0 DF A8
	adc $BA00.w,X		; 7D 00 BA
	brk $F0.b		; 00 F0
	brk $E8.b		; 00 E8
	sbc $D5FCFF.l,X		; FF FF FC D5
	ora $AB.b		; 05 AB
	pld		; 2B
	eor $EA5F.w,X		; 5D 5F EA
	sbc $A3FFD5.l,X		; FF D5 FF A3
	sbc $BFFF47.l,X		; FF 47 FF BF
	sbc $FAFFA6.l,X		; FF A6 FF FA
	brk $D4.b		; 00 D4
	brk $A0.b		; 00 A0
	rts		; 60

	sed		; F8
	asl A		; 0A
	mvn $AF,$57		; 54 57 AF
	lda $EBFF7D.l,X		; BF 7D FF EB
	sbc $C4FFF7.l,X		; FF F7 FF C4
	xce		; FB
	phb		; 8B
	sbc $55.b,X		; F5 55
	tax		; AA
	pld		; 2B
	dec $A8.b,X		; D6 A8
	brk $40.b		; 00 40
	rti		; 40

	sed		; F8
	tsb $FEE7.w		; 0C E7 FE
	sbc $F8BF3F.l,X		; FF 3F BF F8
	adc $FFFCE7.l,X		; 7F E7 FC FF
	sbc ($AC.b,S),Y		; F3 AC
	sbc $39DE10.l		; EF 10 DE 39
	lda $0142.w,X		; BD 42 01
	inc $FF.b,X		; F6 FF
	txa		; 8A
	clc		; 18
	cpx #$F8.b		; E0 F8
	asl A		; 0A
	sbc $AFFF01.l,X		; FF 01 FF AF
	eor [$F8.b],Y		; 57 F8
	lda $19FF44.l,X		; BF 44 FF 19
	ora $67FCFA.l,X		; 1F FA FC 67
	xce		; FB
	ora $32CD.w		; 0D CD 32
	lsr $50.b		; 46 50
	cpy #$F8.b		; C0 F8
	tsb $61FF.w		; 0C FF 61
	sbc $CEFFFF.l,X		; FF FF FF CE
	xce		; FB
	ora $B4EF.w,X		; 1D EF B4
	cmp $BB6B.w,X		; DD 6B BB
	cpy $18F7.w		; CC F7 18
	cmp $009E30.l,X		; DF 30 9E 00
	and ($B1.b),Y		; 31 B1
	sbc $9CE000.l,X		; FF 00 E0 9C
	bra -32.b		; 80 E0
	sbc $77ED.w,X		; FD ED 77
	xce		; FB
	sty $D7.b		; 84 D7
	sec		; 38
	adc $C092EA.l,X		; 7F EA 92 C0
	nop		; EA
	inc $E8.b,X		; F6 E8
	inc $FEFF.w,X		; FE FF FE
	adc $F0CE80.l,X		; 7F 80 CE F0
	ora #$FE.b		; 09 FE
	plx		; FA
	sbc $0FF8FF.l,X		; FF FF F8 0F
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	ora $F8E0.w		; 0D E0 F8
	ora ($2D.b),Y		; 11 2D
	ora $1118.w,X		; 1D 18 11
	rol $16.b,X		; 36 16
	rol A		; 2A
	and ($E1.b)		; 32 E1
	lda ($BA.b),Y		; B1 BA
	eor $DB.b,S		; 43 DB
	sta ($E3.b)		; 92 E3
	lda ($FC.b,S),Y		; B3 FC
	plx		; FA
	ldy $F1.b		; A4 F1
	sbc $F1BC.w,Y		; F9 BC F1
	ror $F1DC.w,X		; 7E DC F1
	sed		; F8
	sbc $57FC7C.l,X		; FF 7C FC 57
	adc [$62.b],Y		; 77 62
	adc ($D5.b,S),Y		; 73 D5
	sbc [$A2.b],Y		; F7 A2
	sbc $D4.b,S		; E3 D4
	sbc [$AA.b],Y		; F7 AA
	sbc $54EBC7.l,X		; FF C7 EB 54
	sbc [$AE.b],Y		; F7 AE
	sbc $8C0088.l		; EF 88 00 8C
	brk $08.b		; 00 08
	brk $1C.b		; 00 1C
	jsr ($FFF8.w,X)		; FC F8 FF
	trb $FC.b		; 14 FC
	bpl   0.b		; 10 00
	stz $F4.b,X		; 74 F4
.ACCU 8
.INDEX 8
	sep #$F2		; E2 F2
	adc $FC.b,X		; 75 FC
	bvs -16.b		; 70 F0
	eor $FF.b,X		; 55 FF
	ora $4AF4.w,X		; 1D F4 4A
	sed		; F8
	eor $F4.b		; 45 F4
	asl A		; 0A
	sed		; F8
	phd		; 0B
	brk $0D.b		; 00 0D
	stx $F1.b		; 86 F1
	ora $3FF200.l		; 0F 00 F2 3F
	sed		; F8
	ora [$FC.b]		; 07 FC
	eor $0F8E1F.l,X		; 5F 1F 8E 0F
	eor $AE1F.w,X		; 5D 1F AE
	and $FC10FC.l		; 2F FC 10 FC
	txa		; 8A
	ora $AA1FDD.l		; 0F DD 1F AA
	and $A3F024.l		; 2F 24 F0 A3
	sbc $FCD020.l,X		; FF 20 D0 FC
	sed		; F8
	jsr ($FE4D.w,X)		; FC 4D FE
	txa		; 8A
	sbc $EA55.w,X		; FD 55 EA
	plb		; AB
	ora $17DCFB.l		; 0F FB DC 17
	sed		; F8
	plb		; AB
	pei ($FC.b)		; D4 FC
	pld		; 2B
	pei ($60.b)		; D4 60
	sed		; F8
	ora $EEAC5F.l		; 0F 5F AC EE
	sbc $DD19EF.l,X		; FF EF 19 DD
	and ($AE.b)		; 32 AE
	eor ($D5.b),Y		; 51 D5
	pld		; 2B
	ldx $D353.w		; AE 53 D3
	rol $57AA.w		; 2E AA 57
	cpx #$F8.b		; E0 F8
	ora $1FFFFB.l		; 0F FB FF 1F
	mvp $48,$B7		; 44 B7 48
	tda		; 7B
	cpy $B7.b		; C4 B7
	jmp $8D7B.w		; 4C 7B 8D
	sbc [$0A.b],Y		; F7 0A
	tda		; 7B
	stx $F7.b		; 86 F7
	jsr ($6D07.w,X)		; FC 07 6D
	sbc $9B0EF8.l,X		; FF F8 0E 9B
	stz $97.b		; 64 97
	jmp ($8C7B.w)		; 6C 7B 8C
	xce		; FB
	tsb $FE.b		; 04 FE
	clc		; 18
	jmp ($F7E4.w,X)		; 7C E4 F7
	bit $E0FE.w		; 2C FE E0
	sed		; F8
	ora $D610EF.l		; 0F EF 10 D6
	and $DFF8.w,Y		; 39 F8 DF
	ldx #$BE.b		; A2 BE
	eor ($DE.b,X)		; 41 DE
	adc ($EE.b,X)		; 61 EE
	ora ($DF.b),Y		; 11 DF
	ldy #$EF.b		; A0 EF
	bmi -26.b		; 30 E6
	sed		; F8
	ora #$EC.b		; 09 EC
	ldy $40.b,X		; B4 40
	inc $F6C8.w,X		; FE C8 F6
	adc $3FFE80.l,X		; 7F 80 FE 3F
	cpy #$FF.b		; C0 FF
	sbc $0FF8C0.l,X		; FF C0 F8 0F
	sta ($9B.b,S),Y		; 93 9B
	cmp #$D9.b		; C9 D9
	pea $ECE8.w		; F4 E8 EC
	cpx $72.b		; E4 72
	stz $78.b,X		; 74 78
	ply		; 7A
	rol $BB3E.w,X		; 3E 3E BB
	ora $7C3F7F.l,X		; 1F 7F 3F 7C
	brk $3E.b		; 00 3E
	brk $1F.b		; 00 1F
	inc $008F.w,X		; FE 8F 00
	sta [$00.b]		; 87 00
	cmp ($00.b,X)		; C1 00
	sed		; F8
	sbc $F7D5D1.l,X		; FF D1 D5 F7
	tsx		; BA
	xce		; FB
	cmp [$F7.b],Y		; D7 F7
	nop		; EA
	xce		; FB
	cmp $FD.b		; C5 FD
	.db $62, $7E, $87		; 62 7E 87
.ACCU 16
.INDEX 16
	rep #$31		; C2 31
	and $5F7F68.l,X		; 3F 68 7F 5F
	tsb $C8.b		; 04 C8
	sbc ($FC.b),Y		; F1 FC
	cop $F1.b		; 02 F1
	sbc $E28100.l,X		; FF 00 81 E2
	bra   0.b		; 80 00
	and $F4.b		; 25 F4
	tax		; AA
	plx		; FA
	and $96FC.w		; 2D FC 96
	inc $1EFF.w,X		; FE FF 1E
	eor $FD.b,X		; 55 FD
	txa		; 8A
	inc $FFC3.w,X		; FE C3 FF
	sbc ($FF.b,X)		; E1 FF
	phd		; 0B
	jmp $03E9.w		; 4C E9 03
	brk $01.b		; 00 01
	cmp ($0F.b,X)		; C1 0F
	cpx #$E0FC.w		; E0 FC E0
	sbc $5F.b,S		; E3 5F
	tsx		; BA
	and $FF7F75.l,X		; 3F 75 7F FF
	ora $54FC.w,Y		; 19 FC 54
	ora $DCBFBA.l,X		; 1F BA BF DC
	cmp $A0EFEA.l,X		; DF EA EF A0
	dex		; CA
	cpx $FC4F.w		; EC 4F FC
	jmp.w [$20EA]		; DC EA 20
	bra -15.b		; 80 F1
	ora [$E8.b],Y		; 17 E8
	and $B857D0.l		; 2F D0 57 B8
	sta ($FF.b,S),Y		; 93 FF
	jsr ($D42B.w,X)		; FC 2B D4
	jsr ($F860.w,X)		; FC 60 F8
	ora $AE2EF5.l		; 0F F5 2E AE
	adc $D7.b,X		; 75 D7
	dec A		; 3A
	inc $FF.b,X		; F6 FF
	tsb $1F.b		; 04 1F
	stp		; DB
	and $1FEB.w		; 2D EB 1F
	sbc $0F.b,X		; F5 0F
	inc $EC17.w		; EE 17 EC
	brk $FE.b		; 00 FE
	.db $82, $FF, $A0		; 82 FF A0
	sbc $867BFC.l,X		; FF FC 7B 86
	lda [$CB.b],Y		; B7 CB
	adc $20FF.w,X		; 7D FF 20
	cmp $BC.b,S		; C3 BC
	eor ($7E.b,S),Y		; 53 7E
	cmp ($EB.b),Y		; D1 EB
	sbc $7AE5.w,X		; FD E5 7A
	eor ($C4.b,S),Y		; 53 C4
	sed		; F8
	phd		; 0B
	cpy #$98FF.w		; C0 FF 98
	stz $14FB.w		; 9C FB 14
	sbc $FE22.w,X		; FD 22 FE
	ora ($FF.b),Y		; 11 FF
	jmp $BF7F.w		; 4C 7F BF
	sbc $B36FA6.l,X		; FF A6 6F B3
	ldx $D9.b,Y		; B6 D9
	tyx		; BB
	jmp $F8A0.w		; 4C A0 F8
	ora $EF48F7.l		; 0F F7 48 EF
	bpl  -9.b		; 10 F7
	plp		; 28
	xba		; EB
	sbc $F51C40.l,X		; FF 40 1C F5
	asl $837F.w		; 0E 7F 83
	lda $F06FC0.l,X		; BF C0 6F F0
	jmp ($FE3E.w)		; 6C 3E FE
	ror A		; 6A
	sbc $BF09F8.l,X		; FF F8 09 BF
	rti		; 40

	cmp $08DE20.l,X		; DF 20 DE 08
	sbc $7F02.w,X		; FD 02 7F
	bra -75.b		; 80 B5
	inc $E857.w,X		; FE 57 E8
	ldy #$0BF0.w		; A0 F0 0B
	rts		; 60

	inx		; E8
	ora $EB1C3F.l		; 0F 3F 1C EB
	sbc $DD0FF8.l,X		; FF F8 0F DD
	eor $259F5E.l,X		; 5F 5E 9F 25
	sbc $E2C7C7.l,X		; FF C7 C7 E2
	cmp $DB.b,S		; C3 DB
	sbc #$F46C.w		; E9 6C F4
	sta [$FB.b],Y		; 97 FB
	xce		; FB
	adc $A0.b,X		; 75 A0
	asl $0F.b		; 06 0F
	sed		; F8
	sed		; F8
	brk $FC.b		; 00 FC
	brk $F6.b		; 00 F6
	ror $FA.b		; 66 FA
	inc $9400.w,X		; FE 00 94
	and $BA9FFC.l,X		; 3F FC 9F BA
	sbc $83FF54.l,X		; FF 54 FF 83
	sbc $FFE0C3.l,X		; FF C3 E0 FF
	stz $7F.b,X		; 74 7F
	inc A		; 1A
	sta $0B.b		; 85 0B
	sbc $F84060.l,X		; FF 60 40 F8
	tsb $35FF.w		; 0C FF 35
	sbc $E17D02.l,X		; FF 02 7D E1
	sbc [$FF.b],Y		; F7 FF
	lda [$64.b]		; A7 64
	sbc $E0FF04.l,X		; FF 04 FF E0
	trb $FC.b		; 14 FC
	sbc $5CFFFA.l,X		; FF FA FF 5C
	sbc $55FFAE.l,X		; FF AE FF 55
	sbc $2A0FFB.l,X		; FF FB 0F 2A
	sbc $F8E005.l,X		; FF 05 E0 F8
	ora ($15.b)		; 12 15
	nop		; EA
	pld		; 2B
	jmp.w [$EE15]		; DC 15 EE
	php		; 08
	sbc $FCFE0F.l,X		; FF 0F FE FC
	asl A		; 0A
	sbc [$05.b],Y		; F7 05
	inc $A0FC.w,X		; FE FC A0
	beq  16.b		; F0 10
	phd		; 0B
	plx		; FA
	ora $FD.b		; 05 FD
	ora $7F.b,S		; 03 7F
	beq -17.b		; F0 EF
	ora ($77.b),Y		; 11 77
	dey		; 88
	xce		; FB
	tsb $7D.b		; 04 7D
	sta $12.b,S		; 83 12
	cpx #$0FF8.w		; E0 F8 0F
	ply		; 7A
	cmp $BD1FDF.l,X		; DF DF 1F BD
	sbc $BFF77E.l,X		; FF 7E F7 BF
	xce		; FB
	sta $7F66D9.l,X		; 9F D9 66 7F
	sta ($AF.b,S),Y		; 93 AF
	sed		; F8
	jsr $7F6D.w		; 20 6D 7F
	cpx $F200.w		; EC 00 F2
	rol $E9DC.w		; 2E DC E9
	ora $D0E1E0.l		; 0F E0 E1 D0
	and $598F74.l,X		; 3F 74 8F 59
	sbc [$F8.b]		; E7 F8
	cmp [$62.b],Y		; D7 62
	cmp $FF.b,S		; C3 FF
	beq 127.b		; F0 7F
	jsr ($FF4F.w,X)		; FC 4F FF
	lda [$42.b],Y		; B7 42
	sed		; F8
	phd		; 0B
	lsr $FFDA.w,X		; 5E DA FF
	adc $A1FD3A.l,X		; 7F 3A FD A1
	inc $FF52.w,X		; FE 52 FF
	and ($FF.b),Y		; 31 FF
	clv		; B8
	sbc $BFEF7D.l		; EF 7D EF BF
	sbc [$DF.b],Y		; F7 DF
	adc $E2C023.l,X		; 7F 23 C0 E2
	inc $FE10.w,X		; FE 10 FE
	clv		; B8
	jmp.w [$FFF7]		; DC F7 FF
	lda $AC5308.l,X		; BF 08 53 AC
	lda $5C.b,S		; A3 5C
	mvn $BB,$FF		; 54 FF BB
	inc $E775.w,X		; FE 75 E7
	rol A		; 2A
	sbc $D5.b,S		; E3 D5
	sbc $2D.b,X		; F5 2D
	jsr ($F8C0.w,X)		; FC C0 F8
	ora #$5A18.w		; 09 18 5A
	sbc ($0A.b,X)		; E1 0A
	mvp $68,$ED		; 44 ED 68
	eor [$A8.b],Y		; 57 A8
	ror A		; 6A
	cmp $B5.b,X		; D5 B5
	ora $DE.b,X		; 15 DE
	nop		; EA
	pei ($20.b)		; D4 20
	sed		; F8
	bpl -128.b		; 10 80
	beq   9.b		; F0 09
	jmp.w [$AA55]		; DC 55 AA
	tax		; AA
	eor $C0.b,X		; 55 C0
	cld		; D8
	ora $FFE2.w,X		; 1D E2 FF
	lda $0DD843.l		; AF 43 D8 0D
	sbc $FEAAD5.l,X		; FF D5 AA FE
	adc [$FD.b]		; 67 FD
	stp		; DB
	inc $FFE7.w,X		; FE E7 FF
	and $FFF87C.l,X		; 3F 7C F8 FF
	jsr ($7F7F.w,X)		; FC 7F 7F
	lda $9F5FAF.l		; AF AF 5F 9F
	brk $27.b		; 00 27
	brk $19.b		; 00 19
	sty $26F0.w		; 8C F0 26
	ora $62.b,S		; 03 62
	cmp ($CD.b),Y		; D1 CD
	sbc $4FFFF3.l,X		; FF F3 FF 4F
	adc $B4BFE8.l,X		; 7F E8 BF B4
	eor $ABFBDE.l,X		; 5F DE FB AB
	adc $CBA68B.l,X		; 7F 8B A6 CB
	cmp #$BE16.w		; C9 16 BE
	plp		; 28
	.db $42, $EA		; 42 EA
	pea $F142.w		; F4 42 F1
	pei ($37.b)		; D4 37
	brk $40.b		; 00 40
	sbc $1BFFA8.l,X		; FF A8 FF 1B
	sbc $F1.b		; E5 F1
	dec A		; 3A
	sbc $0FFF1F.l,X		; FF 1F FF 0F
	sbc $79FFE3.l,X		; FF E3 FF 79
	lda $0DF8A2.l		; AF A2 F8 0D
	bne -65.b		; D0 BF
	cmp $FF20E0.l,X		; DF E0 20 FF
	bvc  -1.b		; 50 FF
	tax		; AA
	rts		; 60

	sbc ($AE.b),Y		; F1 AE
	sbc $BFFF77.l,X		; FF 77 FF BF
	rti		; 40

	sed		; F8
	bpl  -1.b		; 10 FF
	phd		; 0B
	ora $FB.b		; 05 FB
	cop $FD.b		; 02 FD
	ora ($FE.b,X)		; 01 FE
	.db $82, $FD, $41		; 82 FD 41
	inc $F8A0.w,X		; FE A0 F8
	sbc #$E1FE.w		; E9 FE E1
	cld		; D8
	cpy #$10D8.w		; C0 D8 10
	ldy #$D0AF.w		; A0 AF D0
	eor [$E8.b],Y		; 57 E8
	tyx		; BB
	mvp $2F,$F8		; 44 F8 2F
	bne  -9.b		; D0 F7
	sbc $A2FA05.l,X		; FF 05 FA A2
	sbc $F8E0.w,X		; FD E0 F8
	ora $FF7EDF.l		; 0F DF 7E FF
	bit $6F.b,X		; 34 6F
	txs		; 9A
	sbc $0F.b,X		; F5 0F
	inc $AA03.w,X		; FE 03 AA
	ora $EAD9FE.l,X		; 1F FE D9 EA
	txa		; 8A
	sbc ($7E.b,X)		; E1 7E
	sep #$00		; E2 00
	sed		; F8
	asl A		; 0A
	cmp $74FF.w,Y		; D9 FF 74
	sbc $D7E1B9.l,X		; FF B9 E1 D7
	sta ($A5.b,X)		; 81 A5
	eor $AF57.w,Y		; 59 57 AF
	xce		; FB
	asl $FE.b		; 06 FE
	bcs -14.b		; B0 F2
	ldx $C8C9.w,Y		; BE C9 C8
	sbc $1E57.w		; ED 57 1E
	cpx #$CB1D.w		; E0 1D CB
	cmp #$BBD1.w		; C9 D1 BB
	sbc #$BFBD.w		; E9 BD BF
	mvp $57,$FF		; 44 FF 57
	sbc $92FF29.l,X		; FF 29 FF 92
	sep #$C2		; E2 C2
	cmp ($DC.b),Y		; D1 DC
	sbc $FEFF.w,X		; FD FF FE
	cmp $FAC93C.l,X		; DF 3C C9 FA
	sei		; 78
	sbc $F3DD.w		; ED DD F3
	eor $FE5FFD.l,X		; 5F FD 5F FE
	and [$FE.b]		; 27 FE
	adc ($BF.b,S),Y		; 73 BF
	cmp ($FF.b)		; D2 FF
	sbc $5BFF.w		; ED FF 5B
	sta [$00.b]		; 87 00
	jsl $3CC9A0.l		; 22 A0 C9 3C
	cpx $BAD8.w		; EC D8 BA
	sbc $D7BFF0.l,X		; FF F0 BF D7
	ora [$5E.b],Y		; 17 5E
	.db $42, $6F		; 42 6F
	cpx $FEAB.w		; EC AB FE
	sta $FFBA.w,X		; 9D BA FF
	sbc $E1BD.w,Y		; F9 BD E1
	adc $0C40.w,Y		; 79 40 0C
	sbc ($BD.b),Y		; F1 BD
	brk $13.b		; 00 13
	cop $E5.b		; 02 E5
	stx $96.b		; 86 96
	cpx #$FF52.w		; E0 52 FF
	sbc $FEE9FD.l		; EF FD E9 FE
	dec $57.b,X		; D6 57
	xce		; FB
	plb		; AB
	and $9D.b,X		; 35 9D
	plb		; AB
	sbc $6A7ED6.l,X		; FF D6 7E 6A
	jsr ($47A8.w,X)		; FC A8 47
	jsr $5400.w		; 20 00 54
	brk $62.b		; 00 62
	sed		; F8
	phx		; DA
	tya		; 98
	sed		; F8
	adc $D56A24.l		; 6F 24 6A D5
	sbc $FA.b,X		; F5 FA
	tad		; 5B
	tad		; 5B
	rol A		; 2A
	sbc $F80090.l,X		; FF 90 00 F8
	asl A		; 0A
	ldy $61.b		; A4 61
	beq  64.b		; F0 40
	beq  12.b		; F0 0C
	jmp.w [$F5DA]		; DC DA F5
	and $F020.w,X		; 3D 20 F0
	tas		; 1B
	lda $E03D50.l		; AF 50 3D E0
	sta $EA.b,X		; 95 EA
	bra -32.b		; 80 E0
	ora ($55.b),Y		; 11 55
	eor $EA.b,X		; 55 EA
	nop		; EA
	sbc $8D7F7F.l,X		; FF 7F 7F 8D
	adc $073F3F.l,X		; 7F 3F 3F 07
	ora [$A3.b]		; 07 A3
	and $AA.b,S		; 23 AA
	ldx $62C1.w		; AE C1 62
	cpx $0FC0.w		; EC C0 0F
	cmp [$3C.b]		; C7 3C
	jmp.w [$F500]		; DC 00 F5
	pea $C7E4.w		; F4 E4 C7
	sbc $AF25F3.l,X		; FF F3 25 AF
	sbc $FDFFFA.l,X		; FF FA FF FD
	sbc $D940FE.l,X		; FF FE 40 D9
	sbc $560DF8.l,X		; FF F8 0D 56
	adc ($AA.b,S),Y		; 73 AA
	.db $82, $DF, $DD		; 82 DF DD
	inc $50FF.w,X		; FE FF 50
	inc $FF4F.w,X		; FE 4F FF
	inc A		; 1A
	sbc $60FF81.l,X		; FF 81 FF 60
	sbc $FE7D0A.l,X		; FF 0A 7D FE
	sbc ($69.b),Y		; F1 69
	sed		; F8
	jsl $57FFFC.l		; 22 FC FF 57
	sbc $3FB52A.l,X		; FF 2A B5 3F
	tyx		; BB
	lda $CF8671.l,X		; BF 71 86 CF
	cmp $27FF9C.l		; CF 9C FF 27
	adc $081DA6.l,X		; 7F A6 1D 08
	rti		; 40

	brk $D7.b		; 00 D7
	dec $FFD4.w,X		; DE D4 FF
	sta ($A8.b,X)		; 81 A8
	ror $FFFB.w,X		; 7E FB FF
	cmp $D5.b,X		; D5 D5
	tax		; AA
	ldx #$F0F5.w		; A2 F5 F0
	ldx $F8.b		; A6 F8
	ora #$E22A.w		; 09 2A E2
	lda $000F.w,Y		; B9 0F 00
	ora $FB.b		; 05 FB
	tad		; 5B
	plx		; FA
	cop $FD.b		; 02 FD
	ldy $7AEC.w,X		; BC EC 7A
	adc $A029B9.l,X		; 7F B9 29 A0
	eor ($C0.b,S),Y		; 53 C0
	cpx #$D60B.w		; E0 0B D6
	stz $F8F1.w		; 9C F1 F8
	lda $54AB08.l		; AF 08 AB 54
	eor $AA.b,X		; 55 AA
	asl A		; 0A
	sbc $01.b,X		; F5 01
	inc $B880.w,X		; FE 80 B8
	xba		; EB
	and $F8200C.l,X		; 3F 0C 20 F8
	ora $FE0BFD.l		; 0F FD 0B FE
	ora ($7F.b,X)		; 01 7F
	bra   4.b		; 80 04
	eor [$A8.b],Y		; 57 A8
	brk $FE.b		; 00 FE
	clv		; B8
	pei ($D8.b)		; D4 D8
	cpx #$0FF8.w		; E0 F8 0F
	adc $FF97EA.l,X		; 7F EA 97 FF
	tsx		; BA
	cmp $AF.b,S		; C3 AF
	eor $C720DF.l		; 4F DF 20 C7
	sbc $0A.b,X		; F5 0A
	plx		; FA
	ora $BF.b		; 05 BF
	rti		; 40

	cop $FC.b		; 02 FC
	beq -67.b		; F0 BD
	cpy #$0AF0.w		; C0 F0 0A
	lda #$B77A.w		; A9 7A B7
	sbc $BE7ECB.l,X		; FF CB 7E BE
	sbc ($8A.b)		; F2 8A
	adc $55.b,X		; 75 55
	sbc $00EF.w,X		; FD EF 00
	sbc #$A085.w		; E9 85 A0
	sed		; F8
	ora $FFE5.w		; 0D E5 FF
	pld		; 2B
	inc $D6.b,X		; F6 D6
	cmp #$577F.w		; C9 7F 57
	ldx $EAA0.w,Y		; BE A0 EA
	lda $C07FF6.l,X		; BF F6 7F C0
	ldy #$29BA.w		; A0 BA 29
	bra -40.b		; 80 D8
	phd		; 0B
	cpx $537F.w		; EC 7F 53
	sbc $FFD2B9.l		; EF B9 D2 FF
	adc $42FF.w		; 6D FF 42
	sbc ($FA.b,X)		; E1 FA
	and $E9.b,S		; 23 E9
	inc $0003.w,X		; FE 03 00
	ldy $B928.w		; AC 28 B9
	sbc $7E09F8.l,X		; FF F8 09 7E
	adc [$6D.b]		; 67 6D
	sbc $F64D00.l,X		; FF 00 4D F6
	ldx #$F8DE.w		; A2 DE F8
	and $FFFAE6.l,X		; 3F E6 FA FF
	ldx #$EAC7.w		; A2 C7 EA
	ror $0098.w,X		; 7E 98 00
	lda ($08.b)		; B2 08
	ora [$9E.b]		; 07 9E
	sbc ($00.b,X)		; E1 00
	dec $28.b		; C6 28
	sbc ($AA.b,X)		; E1 AA
	adc $3F6A7B.l,X		; 7F 7B 6A 3F
	lda $15.b,X		; B5 15
	phx		; DA
	cpy #$FE54.w		; C0 54 FE
	jsr $40F4.w		; 20 F4 40
	ldx $EAF1.w,Y		; BE F1 EA
	brk $3F.b		; 00 3F
	sta $FF.b		; 85 FF
	txs		; 9A
	sbc ($28.b,S),Y		; F3 28
	sbc ($FC.b)		; F2 FC
	lda ($FD.b)		; B2 FD
	eor [$78.b]		; 47 78
	phy		; 5A
	eor $B68595.l,X		; 5F 95 85 B6
	bra  42.b		; 80 2A
	brk $FF.b		; 00 FF
	bra 122.b		; 80 7A
	sbc #$007A.w		; E9 7A 00
	sbc [$28.b],Y		; F7 28
	lda $D0D8FF.l		; AF FF D8 D0
	eor ($7D.b)		; 52 7D
	sbc $F0E0.w		; ED E0 F0
	tsb $D2C0.w		; 0C C0 D2
	ora $05.b		; 05 05
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	sta ($85.b,X)		; 81 85
	lda ($01.b,X)		; A1 01
	bvc 104.b		; 50 68
	sbc #$AAA3.w		; E9 A3 AA
	brk $40.b		; 00 40
	sbc $7FFA.w,X		; FD FA 7F
	pha		; 48
	sbc #$EE1E.w		; E9 1E EE
	pea $7FE1.w		; F4 E1 7F
	ora [$17.b],Y		; 17 17
	ora $15.b,X		; 15 15
	nop		; EA
	nop		; EA
	and $073D.w,X		; 3D 3D 07
	ora [$00.b]		; 07 00
	brk $D8.b		; 00 D8
	dec $D8FE.w		; CE FE D8
	clv		; B8
	stz $84.b,X		; 74 84
	ora $00.b,X		; 15 00
.ACCU 16
	rep #$E2		; C2 E2
	sbc #$CCDA.w		; E9 DA CC
	sbc $83FFF0.l,X		; FF F0 FF 83
	cpy $E9.b		; C4 E9
	sbc $5757FF.l,X		; FF FF 57 57
	tax		; AA
	tax		; AA
	sbc $3FFD.w,X		; FD FD 3F
	rtl		; 6B

	and ($3A.b),Y		; 31 3A
	tay		; A8
	sbc $B2A8.w,X		; FD A8 B2
	cop $58.b		; 02 58
	phb		; 8B
.ACCU 8
	sep #$26		; E2 26
	sbc $DAA494.l,X		; FF 94 A4 DA
	sbc ($1E.b),Y		; F1 1E
	sbc ($DC.b),Y		; F1 DC
	bra  -8.b		; 80 F8
	phd		; 0B
	jmp.w [$08E1]		; DC E1 08
	inc $C3FE.w,X		; FE FE C3
	ora $DAC1FF.l,X		; 1F FF C1 DA
	eor ($7F.b),Y		; 51 7F
	clv		; B8
	dec $DC.b		; C6 DC
	dec $E8.b		; C6 E8
	ora #$FF.b		; 09 FF
	jsr ($7885.w,X)		; FC 85 78
	bpl  27.b		; 10 1B
	cpx $B8ED.w		; EC ED B8
	adc ($DA.b,X)		; 61 DA
	ror $2FFE.w,X		; 7E FE 2F
	tad		; 5B
	sbc ($0A.b,X)		; E1 0A
	cmp $FDEF00.l,X		; DF 00 EF FD
	sbc $D8E3C2.l,X		; FF C2 E3 D8
	inc $5F7F.w,X		; FE 7F 5F
	phk		; 4B
	and $05.b,S		; 23 05
	plx		; FA
	lsr A		; 4A
	mvp $E3,$E4		; 44 E4 E3
	nop		; EA
	inx		; E8
	sta [$64.b]		; 87 64
	sbc $F5.b,X		; F5 F5
	ldx $0AFE.w		; AE FE 0A
	jsr ($8210.w,X)		; FC 10 82
	cmp ($17.b),Y		; D1 17
	sbc ($FF.b,X)		; E1 FF
.INDEX 8
	sep #$D1		; E2 D1
	phx		; DA
	eor $FA.b,X		; 55 FA
	tay		; A8
	sbc $AFBFB4.l,X		; FF B4 BF AF
	phd		; 0B
	eor $D080.w		; 4D 80 D0
	ora ($EB.b)		; 12 EB
	pea $8015.w		; F4 15 80
	jsr ($6240.w,X)		; FC 40 62
	cmp $8024.w,Y		; D9 24 80
	sbc $EC8038.l,X		; FF 38 80 EC
	cmp ($FF.b,S),Y		; D3 FF
	jsr $987F.w		; 20 7F 98
	ora $B705C5.l,X		; 1F C5 05 B7
	inc $0850.w		; EE 50 08
	tay		; A8
	stx $E6.b,Y		; 96 E6
	inc $E0.b,X		; F6 E0
	inc $F1.b,X		; F6 F1
	inc $DA.b,X		; F6 DA
	inc $A001.w,X		; FE 01 A0
	nop		; EA
	rol A		; 2A
	sbc $15D5C2.l,X		; FF C2 D5 15
	nop		; EA
	cop $FD.b		; 02 FD
	ldy $BF.b		; A4 BF
.INDEX 16
	rep #$16		; C2 16
	stz $F8.b		; 64 F8
	phd		; 0B
	clv		; B8
	sbc #$4F.b		; E9 4F
	bmi   0.b		; 30 00
	xba		; EB
	jsr ($7F9E.w,X)		; FC 9E 7F
	ldy $A8FC.w,X		; BC FC A8
	eor [$08.b],Y		; 57 08
	brk $CF.b		; 00 CF
	bra -24.b		; 80 E8
	ora ($EF.b),Y		; 11 EF
	ror $4A04.w,X		; 7E 04 4A
	jsr ($BCE0.w,X)		; FC E0 BC
	cpx #$15F8.w		; E0 F8 15
	stz $E4.b		; 64 E4
	ldy #$BC3B.w		; A0 3B BC
	sec		; 38
	ora ($B1.b,S),Y		; 13 B1
	rts		; 60

	cpx #$AA0F.w		; E0 0F AA
	plx		; FA
	eor #$CB.b		; 49 CB
	eor $50ECA0.l,X		; 5F A0 EC 50
	cpx #$AF50.w		; E0 50 AF
	rti		; 40

	iny		; C8
	ora ($57.b),Y		; 11 57
	tay		; A8
	inx		; E8
	cmp $09.b,X		; D5 09
	sbc ($50.b),Y		; F1 50
	cmp ($FC.b,X)		; C1 FC
	cpx #$15F8.w		; E0 F8 15
	php		; 08
	pei ($C0.b)		; D4 C0
	jsr ($E0A0.w,X)		; FC A0 E0
	sed		; F8
	ora ($02.b),Y		; 11 02
	ora ($F5.b),Y		; 11 F5
	dec A		; 3A
	sbc ($67.b),Y		; F1 67
	sbc [$FE.b]		; E7 FE
	php		; 08
	lsr $B014.w,X		; 5E 14 B0
	tay		; A8
	ora $F25A1C.l		; 0F 1C 5A F2
	tax		; AA
	brk $D7.b		; 00 D7
	stx $A8.b,Y		; 96 A8
	bpl 123.b		; 10 7B
	phd		; 0B
	inc $15FC.w,X		; FE FC 15
	cmp $0101E1.l		; CF E1 01 01
	ldy #$D950.w		; A0 50 D9
	nop		; EA
	dec $E9.b		; C6 E9
	ldy #$D8F8.w		; A0 F8 D8
	plx		; FA
	.db $42, $A2		; 42 A2
	cpx #$09F8.w		; E0 F8 09
	ora [$AA.b]		; 07 AA
	eor $45.b		; 45 45
	sta $2A2A00.l		; 8F 00 2A 2A
	ora $05.b		; 05 05
	bra -36.b		; 80 DC
	cpx #$7FD0.w		; E0 D0 7F
	inc $BAB2.w,X		; FE B2 BA
	stx $0AF8.w		; 8E F8 0A
	eor [$57.b],Y		; 57 57
	plb		; AB
	plb		; AB
	sbc $BFBFFF.l,X		; FF FF BF BF
	ora ($94.b,X)		; 01 94
	cpx $EA.b		; E4 EA
	ldy $DC.b,X		; B4 DC
	asl $DA.b		; 06 DA
	ldx $F2.b		; A6 F2
	tay		; A8
	tsb $8A.b		; 04 8A
	ldy $F5.b,X		; B4 F5
	cpx $DB.b		; E4 DB
	sbc $D85B24.l,X		; FF 24 5B D8
	ldy $46.b,X		; B4 46
	ldy #$B40A.w		; A0 0A B4
	eor [$D2.b]		; 47 D2
	cmp $64.b,X		; D5 64
	cmp $805A.w,Y		; D9 5A 80
	sbc $A05F5F.l,X		; FF 5F 5F A0
	inx		; E8
	ora $E06A.w		; 0D 6A E0
	eor ($75.b,X)		; 41 75
	sbc $A1FD.w,X		; FD FD A1
	jmp.w [$FFFC]		; DC FC FF
	jsr ($B6E8.w,X)		; FC E8 B6
	brk $D8.b		; 00 D8
	ora #$FA.b		; 09 FA
	plx		; FA
	jsl $FCE002.l		; 22 02 E0 FC
	sbc $0B61BF.l,X		; FF BF 61 0B
	sep #$C8		; E2 C8
	phd		; 0B
	sbc $E4CDC5.l,X		; FF C5 CD E4
	jsr ($6457.w,X)		; FC 57 64
	cmp #$D0.b		; C9 D0
	mvp $FF,$F8		; 44 F8 FF
	and ($C0.b)		; 32 C0
	sed		; F8
	ora $10E077.l		; 0F 77 E0 10
	pld		; 2B
	sbc $547D7C.l,X		; FF 7C 7D 54
	dey		; 88
	cpx #$0FF8.w		; E0 F8 0F
	ldy $FF.b		; A4 FF
	sta ($2A.b,X)		; 81 2A
	sed		; F8
	stz $20.b,X		; 74 20
	beq  16.b		; F0 10
	cpx #$FCFD.w		; E0 FD FC
	inc $A01F.w,X		; FE 1F A0
	ora ($35.b),Y		; 11 35
	.db $82, $E8, $A8		; 82 E8 A8
	cpx #$1AF8.w		; E0 F8 1A
	bra -24.b		; 80 E8
	plx		; FA
	bvc  85.b		; 50 55
	cpx $C2.b		; E4 C2
	sed		; F8
	lda $1498DF.l		; AF DF 98 14
	pld		; 2B
	pea $F8C0.w		; F4 C0 F8
	ora $EC.b,X		; 15 EC
	nop		; EA
	bit $EA.b		; 24 EA
	cmp ($57.b,X)		; C1 57
	adc ($F4.b),Y		; 71 F4
	tya		; 98
	jsr $0FF0.w		; 20 F0 0F
	adc $D52A80.l,X		; 7F 80 2A D5
	cpy #$9CD4.w		; C0 D4 9C
	cmp ($50.b)		; D2 50
	sta ($F4.b,S),Y		; 93 F4
	cpx #$0FF8.w		; E0 F8 0F
	rol $F6.b,X		; 36 F6
	sei		; 78
	pei ($AA.b)		; D4 AA
	adc $D5.b,X		; 75 D5
	adc $70.b,S		; 63 70
	tya		; 98
	asl $36A2.w		; 0E A2 36
	sbc $7C.b,X		; F5 7C
	cpx $F8E0.w		; EC E0 F8
	ora $280101.l		; 0F 01 01 28
	cpx #$69A8.w		; E0 A8 69
	cmp $E978.w,X		; DD 78 E9
	sbc ($BA.b)		; F2 BA
	rti		; 40

	cpy $E8.b		; C4 E8
	phd		; 0B
	cpy #$0AEC.w		; C0 EC 0A
	asl A		; 0A
	rtl		; 6B

	tsx		; BA
	lda $AA.b,S		; A3 AA
	eor $00.b		; 45 00
	plb		; AB
	sbc ($C0.b)		; F2 C0
	nop		; EA
	dec $FC.b,X		; D6 FC
	ldy #$0BE8.w		; A0 E8 0B
	jmp ($50EA.w,X)		; 7C EA 50
	adc $CE.b,X		; 75 CE
	nop		; EA
	tsa		; 3B
	ldy #$EBEC.w		; A0 EC EB
	sta ($FC.b)		; 92 FC
	ldy #$63EE.w		; A0 EE 63
	sbc $AA.b,S		; E3 AA
	ora $15.b		; 05 15
	jmp $A6F129.l		; 5C 29 F1 A6
	nop		; EA
	and ($EC.b)		; 32 EC
	jsr ($EE80.w,X)		; FC 80 EE
	adc $ECA87F.l,X		; 7F 7F A8 EC
	clc		; 18
	trb $FC.b		; 14 FC
	rol A		; 2A
	rol A		; 2A
	stz $06.b,X		; 74 06
.ACCU 8
	sep #$A8		; E2 A8
	cpx $1580.w		; EC 80 15
	jsr ($7426.w,X)		; FC 26 74
	cpx $C3.b		; E4 C3
	ldy $14FC.w,X		; BC FC 14
	mvn $E2,$FC		; 54 FC E2
	dec $FCBC.w,X		; DE BC FC
	jsr ($FCE0.w,X)		; FC E0 FC
	bit $F1.b		; 24 F1
	cpx #$50FD.w		; E0 FD 50
	eor $BC.b,X		; 55 BC
	rol A		; 2A
	sbc $BC.b,X		; F5 BC
	sbc $0BE844.l,X		; FF 44 E8 0B
	rti		; 40

	inx		; E8
	ora #$9C.b		; 09 9C
	inc $D985.w,X		; FE 85 D9
	lda [$0A.b]		; A7 0A
	sbc $5D5DFD.l,X		; FF FD 5D 5D
	cpx #$6102.w		; E0 02 61
	sbc $E0F2CA.l		; EF CA F2 E0
	pei ($E0.b)		; D4 E0
	rol $EE48.w		; 2E 48 EE
	adc $E07D.w,X		; 7D 7D E0
	ldy #$8F45.w		; A0 45 8F
	jmp.w [$82B5]		; DC B5 82
	cpx #$C05F.w		; E0 5F C0
	sbc $EBEB.w,X		; FD EB EB
	trb $FFFE.w		; 1C FE FF
	jsr ($AA14.w,X)		; FC 14 AA
	tax		; AA
	trb $09F8.w		; 1C F8 09
	sbc $FC80FD.l,X		; FF FD 80 FC
	ldy #$09F8.w		; A0 F8 09
	bra  -4.b		; 80 FC
	cmp ($B1.b),Y		; D1 B1
	sbc $A4F3.w,Y		; F9 F3 A4
	ldy $0A.b,X		; B4 0A
	tax		; AA
	cli		; 58
	xba		; EB
	jsr $0FE0.w		; 20 E0 0F
	cpx $EF.b		; E4 EF
	jmp.w [$F8E0]		; DC E0 F8
	ora ($29.b,S),Y		; 13 29
	jsr ($EAE4.w,X)		; FC E4 EA
	tax		; AA
	plb		; AB
	cpy #$15E8.w		; C0 E8 15
	bra -38.b		; 80 DA
	jmp $FEDCDA.l		; 5C DA DC FE
	cpx #$11F8.w		; E0 F8 11
	xba		; EB
	trb $E5.b		; 14 E5
	sbc $40.b,X		; F5 40
	stp		; DB
	eor $E2EA.w,X		; 5D EA E2
	sed		; F8
	ora $B986ED.l		; 0F ED 86 B9
	ldx $6D.b,Y		; B6 6D
	jsr ($09F8.w,X)		; FC F8 09
	sbc $F8FCB6.l,X		; FF B6 FC F8
	asl A		; 0A
	sbc $63F0.w,Y		; F9 F0 63
	sty $FE.b		; 84 FE
	sty $6A.b		; 84 6A
	sbc $8480.w,X		; FD 80 84
	eor $6BFC.w,Y		; 59 FC 6B
	ldy #$FC0E.w		; A0 0E FC
	cpx #$FC84.w		; E0 84 FC
	sed		; F8
	asl A		; 0A
	sbc ($08.b,S),Y		; F3 08
	lda $08FE54.l,X		; BF 54 FE 08
	cmp ($FB.b)		; D2 FB
	brk $08.b		; 00 08
	eor $FC.b,X		; 55 FC
	jsr ($08E0.w,X)		; FC E0 08
	jsr ($0AF8.w,X)		; FC F8 0A
	adc ($D8.b,X)		; 61 D8
	eor ($F6.b)		; 52 F6
	sbc [$FB.b],Y		; F7 FB
	tsb $7C.b		; 04 7C
	txa		; 8A
	adc $B0.b,X		; 75 B0
	bra  19.b		; 80 13
	ror $1574.w		; 6E 74 15
	stx $F3.b,Y		; 96 F3
	plx		; FA
	ora $20.b		; 05 20
	inx		; E8
	ora $2A.b,X		; 15 2A
	cpy #$EA64.w		; C0 64 EA
	tyx		; BB
	mvp $3D,$D5		; 44 D5 3D
	jsr ($E0CA.w,X)		; FC CA E0
	sed		; F8
	ora ($7A.b),Y		; 11 7A
	phx		; DA
	sta ($EC.b)		; 92 EC
	eor $C0A2.w,X		; 5D A2 C0
	sed		; F8
	ora ($D5.b),Y		; 11 D5
	sbc $C402FB.l,X		; FF FB 02 C4
	ply		; 7A
	jsr ($EBFE.w,X)		; FC FE EB
	inc $18C6.w,X		; FE C6 18
	cpy #$FE00.w		; C0 00 FE
	tsb $FE.b		; 04 FE
	trb $FE.b		; 14 FE
	and $CF292E.l,X		; 3F 2E 29 CF
	nop		; EA
	sbc $F63BF5.l,X		; FF F5 3B F6
	sbc $0FF080.l,X		; FF 80 F0 0F
	jmp ($C0F1.w)		; 6C F1 C0
	ora $FADC4B.l		; 0F 4B DC FA
	sbc [$DE.b],Y		; F7 DE
	lda $7EEAD4.l,X		; BF D4 EA 7E
	sei		; 78
	jsr ($FFE6.w,X)		; FC E6 FF
	ora $957FFF.l		; 0F FF 7F 95
	adc $7F54FC.l,X		; 7F FC 54 7F
	rol A		; 2A
	adc $E0401F.l,X		; 7F 1F 40 E0
	cmp ($FD.b)		; D2 FD
	ora $638B6B.l,X		; 1F 6B 8B 63
	jsr ($D9D1.w,X)		; FC D1 D9
	adc $8B16A8.l,X		; 7F A8 16 8B
	sbc $FCF7E0.l,X		; FF E0 F7 FC
	ora $FC.b,S		; 03 FC
	jsr ($E805.w,X)		; FC 05 E8
	sta ($2A.b),Y		; 91 2A
	tyx		; BB
	ldy $DC.b		; A4 DC
	ldy $A0D4.w,X		; BC D4 A0
	sed		; F8
	ora $0BF084.l		; 0F 84 F0 0B
	jsr ($F080.w,X)		; FC 80 F0
	asl $5A84.w		; 0E 84 5A
	dec $A8.b		; C6 A8
	dey		; 88
	sbc ($80.b),Y		; F1 80
	sbc ($5B.b)		; F2 5B
	jsr ($FC72.w,X)		; FC 72 FC
	bra -16.b		; 80 F0
	asl $4631.w		; 0E 31 46
	sty $F3.b		; 84 F3
	lda ($FC.b,S),Y		; B3 FC
	lsr $FC.b,X		; 56 FC
	cmp $FC.b,X		; D5 FC
	eor $A9.b,X		; 55 A9
	bra -16.b		; 80 F0
	ora $9CDF44.l		; 0F 44 DF 9C
	cmp ($80.b)		; D2 80
	sed		; F8
	ora ($F3.b),Y		; 11 F3
	pea $BBE0.w		; F4 E0 BB
	stz $BC.b,X		; 74 BC
	rts		; 60

	sed		; F8
	trb $FB.b		; 14 FB
	ora ($FF.b,X)		; 01 FF
	txa		; 8A
	cpx #$FFEA.w		; E0 EA FF
	sbc [$AA.b],Y		; F7 AA
.ACCU 8
	sep #$E0		; E2 E0
	sed		; F8
	ora ($64.b)		; 12 64
.ACCU 8
	sep #$E8		; E2 E8
	lda ($FC.b,X)		; A1 FC
	sbc $E354.w,X		; FD 54 E3
	inc $0AF8.w,X		; FE F8 0A
	sbc $9AEBE0.l,X		; FF E0 EB 9A
	lda $FCBFA0.l,X		; BF A0 BF FC
	sbc $FF899B.l,X		; FF 9B 89 FF
	lda $16.b,X		; B5 16
	cmp ($FC.b),Y		; D1 FC
	inc $ABF5.w,X		; FE F5 AB
	eor ($BD.b,S),Y		; 53 BD
	eor ($60.b,X)		; 41 60
	sbc $F354.w,X		; FD 54 F3
	ldy #$0EF8.w		; A0 F8 0E
	cpy $FC.b		; C4 FC
	inc $9F84.w,X		; FE 84 9F
	sta $FE.b,X		; 95 FE
	sbc $FC80.w,X		; FD 80 FC
	sbc $86FE3F.l,X		; FF 3F FE 86
	sbc ($FE.b),Y		; F1 FE
	sbc $AAAB.w,X		; FD AB AA
	sbc $FFFF7F.l,X		; FF 7F FF FF
	iny		; C8
	sbc $F17A.w,X		; FD 7A F1
	inc $4CFC.w,X		; FE FC 4C
	sbc ($FC.b)		; F2 FC
	sed		; F8
	phd		; 0B
	tax		; AA
	nop		; EA
	jmp $FCF2.w		; 4C F2 FC
	sed		; F8
	phd		; 0B
	jmp $FCF2.w		; 4C F2 FC
	sed		; F8
	phd		; 0B
	jmp $FCF2.w		; 4C F2 FC
	sed		; F8
	phd		; 0B
	sbc $E8.b		; E5 E8
	phd		; 0B
	cpx #$13F0.w		; E0 F0 13
	inc $4357.w,X		; FE 57 43
	inc $AB56.w,X		; FE 56 AB
	cop $FC.b		; 02 FC
	sed		; F8
	asl A		; 0A
	brk $FA.b		; 00 FA
	jsr ($0BF8.w,X)		; FC F8 0B
	ora $555FFF.l,X		; 1F FF 5F 55
	lsr $F8FC.w,X		; 5E FC F8
	phd		; 0B
	beq -15.b		; F0 F1
	plx		; FA
	sbc ($FC.b),Y		; F1 FC
	sed		; F8
	asl A		; 0A
	sbc $FEF0F1.l,X		; FF F1 F0 FE
	jsr ($7E50.w,X)		; FC 50 7E
	sbc $FEEFA2.l,X		; FF A2 EF FE
	inc $57FF.w,X		; FE FF 57
	ora $07.b,S		; 03 07
	eor ($DA.b,S),Y		; 53 DA
	ora ($FC.b,S),Y		; 13 FC
	ora [$03.b]		; 07 03
	txa		; 8A
	cmp $FC.b,X		; D5 FC
	ora [$FC.b]		; 07 FC
	jsr ($2CA8.w,X)		; FC A8 2C
	rts		; 60

	sty $F8.b		; 84 F8
	phd		; 0B
	bra  -8.b		; 80 F8
	ora $638B.w,Y		; 19 8B 63
	jsr ($FD88.w,X)		; FC 88 FD
	nop		; EA
	xba		; EB
	cpx $FC.b		; E4 FC
	jsr ($F4E8.w,X)		; FC E8 F4
	lsr $543F.w,X		; 5E 3F 54
	ror A		; 6A
	jsr ($E8FC.w,X)		; FC FC E8
	sbc $FF.b,X		; F5 FF
	pha		; 48
	rol $E295.w,X		; 3E 95 E2
	jsr ($F0E4.w,X)		; FC E4 F0
	ora #$6A.b		; 09 6A
	dey		; 88
	lsr $FC.b,X		; 56 FC
	clc		; 18
	stz $E4FC.w		; 9C FC E4
	beq  10.b		; F0 0A
	sbc $EBEE73.l,X		; FF 73 EE EB
	sbc $FCCDC1.l,X		; FF C1 CD FC
	sbc $0AB090.l,X		; FF 90 B0 0A
	rol $FFFE.w,X		; 3E FE FF
	nop		; EA
	cmp $E0.b,X		; D5 E0
	asl $D5D7.w,X		; 1E D7 D5
	jsr ($20FC.w,X)		; FC FC 20
	ora $2A.b,X		; 15 2A
	inc $3FF5.w,X		; FE F5 3F
	inc $88FF.w,X		; FE FF 88
	sbc $C7.b,S		; E3 C7
	cmp ($A7.b,S),Y		; D3 A7
	eor ($27.b,S),Y		; 53 27
	eor $FC.b,S		; 43 FC
	rti		; 40

	lda [$50.b]		; A7 50
	jsr ($2FA7.w,X)		; FC A7 2F
	cli		; 58
	rti		; 40

	adc [$FC.b]		; 67 FC
	adc [$FC.b],Y		; 77 FC
	jsr ($09F8.w,X)		; FC F8 09
	tya		; 98
	sta ($F0.b),Y		; 91 F0
	ora $9F05.w		; 0D 05 9F
	cmp $3C3F.w,Y		; D9 3F 3C
	inc $0CF8.w,X		; FE F8 0C
	sed		; F8
	ora ($FE.b,X)		; 01 FE
	cop $FC.b		; 02 FC
	inc $F905.w,X		; FE 05 F9
	phd		; 0B
	sbc ($BC.b,S),Y		; F3 BC
	sbc ($FC.b,X)		; E1 FC
	asl $ED.b,X		; 16 ED
	lda $AF60.w,Y		; B9 60 AF
	lda #$FC.b		; A9 FC
	inc $F803.w,X		; FE 03 F8
	sbc ($FD.b,X)		; E1 FD
	ora [$F0.b]		; 07 F0
	jsr ($E000.w,X)		; FC 00 E0
	trb $0B.b		; 14 0B
	cld		; D8
	jsr ($FD07.w,X)		; FC 07 FD
	and $DFEA.w,Y		; 39 EA DF
	sbc $A3E129.l,X		; FF 29 E1 A3
	lsr $F7CC.w,X		; 5E CC F7
	ora ($5D.b,X)		; 01 5D
	beq   5.b		; F0 05
	cpy #$801E.w		; C0 1E 80
	adc $00.b,X		; 75 00
	bra -16.b		; 80 F0
	sbc $1BF280.l,X		; FF 80 F2 1B
	inc $C9.b,X		; F6 C9
	lda ($09.b)		; B2 09
	adc ($9A.b),Y		; 71 9A
	ora ($5E.b),Y		; 11 5E
	ora [$AF.b],Y		; 17 AF
	sbc $DF.b,S		; E3 DF
	ply		; 7A
	jsl $E0E2DD.l		; 22 DD E2 E0
	ora $00.b,X		; 15 00
	lda ($0E.b,X)		; A1 0E
	cmp $A820.w,X		; DD 20 A8
	phx		; DA
	sbc $00AAFF.l,X		; FF FF AA 00
	adc $45DA.w		; 6D DA 45
	cpy #$07E7.w		; C0 E7 07
	sep #$C3		; E2 C3
	lda $50E5DD.l,X		; BF DD E5 50
	ldy $FF40.w,X		; BC 40 FF
	ora [$20.b]		; 07 20
	rti		; 40

	asl $01.b		; 06 01
	lda $0A.b,X		; B5 0A
	cmp [$38.b]		; C7 38
	sbc $4200.w,X		; FD 00 42
	brk $F8.b		; 00 F8
	sed		; F8
	sbc $00BF95.l,X		; FF 95 BF 00
	ror A		; 6A
	rti		; 40

	sbc $35.b,X		; F5 35
	mvn $FE,$61		; 54 61 FE
	adc $FF806A.l,X		; 7F 6A 80 FF
	cmp [$40.b],Y		; D7 40
	brk $95.b		; 00 95
	ora $2B.b,X		; 15 2B
	pld		; 2B
	inx		; E8
	ora [$75.b],Y		; 17 75
	txa		; 8A
	rtl		; 6B

	sty $6A.b,X		; 94 6A
	cmp $C9C5.w,Y		; D9 C5 C9
	cmp $DF.b,X		; D5 DF
	lda $4A.b,X		; B5 4A
	ldx #$0F58.w		; A2 58 0F
	jmp $F8FFA9.l		; 5C A9 FF F8
	asl $D768.w		; 0E 68 D7
	tyx		; BB
	mvp $68,$BF		; 44 BF 68
	sta $E2.b,S		; 83 E2
	sbc $FD.b,S		; E3 FD
	cmp [$FF.b],Y		; D7 FF
	eor $DD.b		; 45 DD
	cpx #$FCE0.w		; E0 E0 FC
	sty $0CE8.w		; 8C E8 0C
	lda ($CA.b),Y		; B1 CA
	adc [$88.b],Y		; 77 88
	cmp $FFC1.w,X		; DD C1 FF
	and $45.b		; 25 45
	sta ($7F.b,X)		; 81 7F
	dex		; CA
	and ($E9.b),Y		; 31 E9
	php		; 08
	sbc [$64.b],Y		; F7 64
	asl A		; 0A
	lda ($FE.b,X)		; A1 FE
	adc [$C0.b],Y		; 77 C0
	jmp.w [$09F8]		; DC F8 09
	inx		; E8
	ora ($54.b)		; 12 54
	tyx		; BB
	tax		; AA
	sbc $44FDE7.l,X		; FF E7 FD 44
	inc $F1.b		; E6 F1
	ora ($ED.b)		; 12 ED
	sta $C2.b		; 85 C2
	pea $D4C9.w		; F4 C9 D4
	cmp ($48.b),Y		; D1 48
	asl A		; 0A
	txs		; 9A
	lda ($DA.b),Y		; B1 DA
	beq  -1.b		; F0 FF
	sbc $F8F8F0.l,X		; FF F0 F8 F8
	ora $20.b,X		; 15 20
	asl A		; 0A
	adc $81.b,X		; 75 81
	inc $DA65.w,X		; FE 65 DA
	cmp [$AA.b],Y		; D7 AA
	txs		; 9A
	eor $41.b		; 45 41
	sbc $1D8979.l,X		; FF 79 89 1D
	trb $15EA.w		; 1C EA 15
	sbc $0A.b,X		; F5 0A
	ror $AF01.w,X		; 7E 01 AF
	bit $35.b		; 24 35
	cop $D5.b		; 02 D5
	sbc $B8F2.w		; ED F2 B8
	phd		; 0B
	jmp.w [$FFCA]		; DC CA FF
	bvc  27.b		; 50 1B
	tsx		; BA
	phx		; DA
	xce		; FB
	inc $80.b,X		; F6 80
	beq  14.b		; F0 0E
	beq -14.b		; F0 F2
	sed		; F8
	phd		; 0B
	plb		; AB
	xce		; FB
	sbc $DA6DFF.l,X		; FF FF 6D DA
	sbc $E0.b,S		; E3 E0
	ora $0001.w		; 0D 01 00
	plp		; 28
	cmp [$7A.b],Y		; D7 7A
	sta $FF.b		; 85 FF
	bpl  -1.b		; 10 FF
	bmi -17.b		; 30 EF
	eor $3DFF.w,X		; 5D FF 3D
	cmp [$20.b]		; C7 20
	cmp $4AB7.w,Y		; D9 B7 4A
	lda $E0.b,X		; B5 E0
	tsb $D10A.w		; 0C 0A D1
	and $FDC2.w,X		; 3D C2 FD
	cop $FF.b		; 02 FF
	plp		; 28
	sbc $3DFF7D.l,X		; FF 7D FF 3D
	cmp $F6DB7F.l,X		; DF 7F DB F6
	cmp ($A1.b),Y		; D1 A1
	tax		; AA
	sbc ($E2.b,X)		; E1 E2
	sed		; F8
	ora #$E0.b		; 09 E0
	cpx #$041B.w		; E0 1B 04
	sed		; F8
	sbc $04FE54.l,X		; FF 54 FE 04
	sbc $F7FF56.l,X		; FF 56 FF F7
	lda $99FF.w,X		; BD FF 99
	sbc $0FDB6C.l,X		; FF 6C DB 0F
	and ($82.b,S),Y		; 33 82
	jsr $878F.w		; 20 8F 87
	sbc $FC05.w,X		; FD 05 FC
	inc $C0FF.w,X		; FE FF C0
	ora $D74EA4.l		; 0F A4 4E D7
	plp		; 28
	tda		; 7B
	cli		; 58
	sbc [$DA.b],Y		; F7 DA
	brk $BF.b		; 00 BF
	adc #$E0.b		; 69 E0
	ldy $8D.b		; A4 8D
	cmp $22AB.w,Y		; D9 AB 22
	adc [$54.b],Y		; 77 54
	ror $A2E1.w,X		; 7E E1 A2
	eor ($FF.b)		; 52 FF
	jsr ($26D9.w,X)		; FC D9 26
	jsl $F054DD.l		; 22 DD 54 F0
	sbc ($FF.b,X)		; E1 FF
	sbc $BFFF.w,X		; FD FF BF
	ldy $FBFC.w,X		; BC FC FB
	inx		; E8
	cmp ($D7.b)		; D2 D7
	cmp $9655.w,Y		; D9 55 96
	cmp $FC68.w,Y		; D9 68 FC
	cop $FD.b		; 02 FD
	sbc $28F100.l,X		; FF 00 F1 28
	lda $8091.w,Y		; B9 91 80
	bra  -2.b		; 80 FE
	sbc $ECB5.w,X		; FD B5 EC
	tax		; AA
	and [$00.b],Y		; 37 00
	cmp $61AA25.l,X		; DF 25 AA 61
	ldy $75DF.w		; AC DF 75
	adc $20.b,S		; 63 20
	cmp $E480E4.l,X		; DF E4 80 E4
	sbc ($FF.b)		; F2 FF
	sbc $D07657.l,X		; FF 57 76 D0
	tyx		; BB
	ora ($74.b),Y		; 11 74
	jsr $189E.w		; 20 9E 18
	eor [$FA.b]		; 47 FA
	adc [$9C.b]		; 67 9C
	xce		; FB
	lda $5770DE.l		; AF DE 70 57
	sed		; F8
	phb		; 8B
	ora $00.b		; 05 00
	lda $D9994A.l		; AF 4A 99 D9
	pea $147E.w		; F4 7E 14
	brk $A4.b		; 00 A4
	cpy #$9FFF.w		; C0 FF 9F
	bra 123.b		; 80 7B
	phy		; 5A
	bit $2B.b		; 24 2B
	sty $FF.b		; 84 FF
	stp		; DB
	bvc  -1.b		; 50 FF
	ora ($EF.b),Y		; 11 EF
	txs		; 9A
	adc $40.b		; 65 40
	ldy #$65E4.w		; A0 E4 65
	sta $D682.w,Y		; 99 82 D6
	ldy $0FFF.w,X		; BC FF 0F
	ora $08B7.w,X		; 1D B7 08
	ora $8802.w,X		; 1D 02 88
	ror $A9.b,X		; 76 A9
	phx		; DA
	ror $1B.b,X		; 76 1B
	sbc $F85722.l		; EF 22 57 F8
	sta $BF8A.w,X		; 9D 8A BF
	rti		; 40

	phy		; 5A
	dex		; CA
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	sbc $10A01E.l,X		; FF 1E A0 10
	tsb $3F.b		; 04 3F
	.db $82, $C3, $4D		; 82 C3 4D
	jsr ($5152.w,X)		; FC 52 51
	ldx $52A2.w		; AE A2 52
	bpl  80.b		; 10 50
	sbc $C2F27A.l,X		; FF 7A F2 C2
	cop $29.b		; 02 29
	sta ($15.b),Y		; 91 15
	ldy $A477.w,X		; BC 77 A4
	jmp ($DB08.w)		; 6C 08 DB
	bit $FF.b		; 24 FF
	sbc $00865F.l		; EF 5F 86 00
	xce		; FB
	sbc $668955.l		; EF 55 89 66
	tyx		; BB
	mvn $5B,$A4		; 54 A4 5B
	pha		; 48
	trb $A669.w		; 1C 69 A6
	cmp ($03.b),Y		; D1 03
	eor $5C57.w,Y		; 59 57 5C
	ldy $82.b,X		; B4 82
	cmp $AA88.w,X		; DD 88 AA
	asl A		; 0A
	trb $447E.w		; 1C 7E 44
	dey		; 88
	lda $4A.b,X		; B5 4A
	eor $20.b		; 45 20
	txa		; 8A
	sbc $20.b,X		; F5 20
	dey		; 88
	adc [$83.b],Y		; 77 83
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	sbc #$FA00.w		; E9 00 FA
	mvp $F8,$CB		; 44 CB F8
	sbc #$BF6E.w		; E9 6E BF
	.db $82, $5F, $52		; 82 5F 52
	ldx #$C2E9.w		; A2 E9 C2
	ldx #$94EB.w		; A2 EB 94
	rtl		; 6B

	cpx #$FEE0.w		; E0 E0 FE
	ora $4306A6.l		; 0F A6 06 43
	sbc $69DF6E.l,X		; FF 6E DF 69
	adc $F8.b,X		; 75 F8
	cmp $1CFD61.l,X		; DF 61 FD 1C
	cmp ($60.b),Y		; D1 60
	sei		; 78
	sta [$AC.b]		; 87 AC
	sta $7E.b,S		; 83 7E
	inx		; E8
	asl A		; 0A
	lda $2A.b,X		; B5 2A
	sbc $DE0965.l,X		; FF 65 09 DE
	sbc $C2E277.l,X		; FF 77 E2 C2
	plp		; 28
	cmp [$FD.b],Y		; D7 FD
	cop $5F.b		; 02 5F
	stz $F5.b		; 64 F5
	adc $F0.b		; 65 F0
	beq -36.b		; F0 DC
	inc $F8A2.w,X		; FE A2 F8
	phd		; 0B
	bpl -17.b		; 10 EF
	tyx		; BB
	mvp $E8,$C5		; 44 C5 E8
	phd		; 0B
	sty $EA.b,X		; 94 EA
	rts		; 60

	ldx #$A2FD.w		; A2 FD A2
	jsr ($8F70.w,X)		; FC 70 8F
	jsr $E8A1.w		; 20 A1 E8
	bpl  36.b		; 10 24
	ldy #$E0F8.w		; A0 F8 E0
	sep #$80		; E2 80
	ldx #$926D.w		; A2 6D 92
	adc $C956.w,X		; 7D 56 C9
	.db $82, $E0, $F8		; 82 E0 F8
	bpl -71.b		; 10 B9
	ldx #$0BF8.w		; A2 F8 0B
	adc ($E8.b,X)		; 61 E8
	ora ($44.b)		; 12 44
	sbc $F8E0A2.l,X		; FF A2 E0 F8
	ora ($F1.b),Y		; 11 F1
	adc $49B6.w,X		; 7D B6 49
	ror $DF74.w,X		; 7E 74 DF
	sbc $3A8B.w,X		; FD 8B 3A
	cmp #$AA55.w		; C9 55 AA
	cmp $5D22.w,X		; DD 22 5D
	sei		; 78
	and ($D0.b),Y		; 31 D0
	ora $FDEB82.l		; 0F 82 EB FD
	sbc [$7B.b],Y		; F7 7B
	adc #$4CE5.w		; 69 E5 4C
	lda ($ED.b,S),Y		; B3 ED
	ora ($FF.b)		; 12 FF
	adc $D010.w,X		; 7D 10 D0
	bpl  16.b		; 10 10
	sbc $7DEF59.l,X		; FF 59 EF 7D
	sbc [$FF.b]		; E7 FF
	lda [$82.b]		; A7 82
	adc ($08.b),Y		; 71 08
	sbc [$1C.b],Y		; F7 1C
	sbc $79.b,S		; E3 79
	bra -32.b		; 80 E0
	sed		; F8
	bpl -94.b		; 10 A2
	sta $7EFEFF.l		; 8F FF FE 7E
	cmp $41.b,X		; D5 41
	stz $8B.b,X		; 74 8B
	bpl -31.b		; 10 E1
	bne -56.b		; D0 C8
	ora ($80.b),Y		; 11 80
	sbc $92CA35.l,X		; FF 35 CA 92
	asl $63D1.w,X		; 1E D1 63
	cmp $FF.b,X		; D5 FF
	sed		; F8
	ora $8008.w		; 0D 08 80
	lda $F880.w,X		; BD 80 F8
	ora #$7142.w		; 09 42 71
	tad		; 5B
	lda $FCFF.w,Y		; B9 FF FC
	sed		; F8
	sbc $FFFFFB.l,X		; FF FB FF FF
	ora ($F5.b),Y		; 11 F5
	eor $FFCF.w,Y		; 59 CF FF
	xba		; EB
	sbc [$AD.b],Y		; F7 AD
	sbc ($C9.b,S),Y		; F3 C9
	ora $60B3FF.l		; 0F FF B3 60
	sta ($14.b,S),Y		; 93 14
	sbc [$E0.b]		; E7 E0
	asl A		; 0A
	brk $A0.b		; 00 A0
	bra -116.b		; 80 8C
	bra   8.b		; 80 08
	ora $4804F1.l		; 0F F1 04 48
	tsb $68.b		; 04 68
	tsb $F8.b		; 04 F8
	eor $A2.b,X		; 55 A2
	cmp $FFFD.w,Y		; D9 FD FF
	sbc $9DE7.w,X		; FD E7 9D
	ora ($8D.b,S),Y		; 13 8D
	tay		; A8
	and [$7E.b]		; 27 7E
	sbc ($A7.b,X)		; E1 A7
	bmi  -1.b		; 30 FF
	ldx #$0006.w		; A2 06 00
	pla		; 68
	cop $2F.b		; 02 2F
	jmp ($42B8.w,X)		; 7C B8 42
	tax		; AA
	bvc 122.b		; 50 7A
	lsr $A4.b,X		; 56 A4
	stz $FF48.w,X		; 9E 48 FF
	cmp $DFFF.w,X		; DD FF DF
	ror A		; 6A
	bra -100.b		; 80 9C
	bit $61.b		; 24 61
	sed		; F8
	bpl -17.b		; 10 EF
	jsr $C3DE.w		; 20 DE C3
	adc $84.b,X		; 75 84
	sbc $7BF7AD.l,X		; FF AD F7 7B
	sbc $51D873.l,X		; FF 73 D8 51
	sbc $BD0FF8.l,X		; FF F8 0F BD
	.db $42, $01		; 42 01
.INDEX 16
	rep #$DE		; C2 DE
	sbc ($DC.b),Y		; F1 DC
	inc $F5B5.w,X		; FE B5 F5
	xce		; FB
	cmp $FB.b		; C5 FB
	lda $F8E0EB.l,X		; BF EB E0 F8
	bpl  14.b		; 10 0E
	tsb $FF.b		; 04 FF
	asl $9D.b,X		; 16 9D
	adc $FD3F.w,Y		; 79 3F FD
	lda $ED53FB.l,X		; BF FB 53 ED
	sbc $F8A068.l,X		; FF 68 A0 F8
	inc A		; 1A
	ply		; 7A
	sbc $33FF72.l,X		; FF 72 FF 33
	sbc $FA2C.w,X		; FD 2C FA
	asl $FFFE.w,X		; 1E FE FF
	sbc $FEF8.w,Y		; F9 F8 FE
	plx		; FA
	sed		; F8
	bcs  67.b		; B0 43
	cmp [$04.b],Y		; D7 04
	sbc $16B6FF.l,X		; FF FF B6 16
	adc ($11.b),Y		; 71 11
	bit $B1.b,X		; 34 B1
	ror $B9.b,X		; 76 B9
	lda ($BB.b,S),Y		; B3 BB
	.db $62, $FB, $0C		; 62 FB 0C
	brk $2D.b		; 00 2D
	brk $1E.b		; 00 1E
	sbc ($4F.b,X)		; E1 4F
	cop $41.b		; 02 41
	wai		; CB
	tsb $89.b		; 04 89
	asl $4FFC.w,X		; 1E FC 4F
	jmp $FEFF.w		; 4C FF FE
	eor $40.b		; 45 40
	tad		; 5B
	tsb $2F37.w		; 0C 37 2F
	sbc $F9DCDF.l		; EF DF DC F9
	cmp ($9C.b),Y		; D1 9C
	rtl		; 6B

	jsr ($FA00.w,X)		; FC 00 FA
	sbc $AC0485.l,X		; FF 85 04 AC
	ora ($E8.b)		; 12 E8
	bpl -48.b		; 10 D0
	jsr $0061.w		; 20 61 00
	iny		; C8
	tya		; 98
	adc $8501.w,Y		; 79 01 85
	rtl		; 6B

	php		; 08
	sbc [$48.b],Y		; F7 48
	sbc ($9A.b,S),Y		; F3 9A
	rti		; 40

	sbc $B69B52.l,X		; FF 52 9B B6
	sbc $2109F8.l,X		; FF F8 09 21
	sed		; F8
	php		; 08
	sta $7B.b,S		; 83 7B
	sty $AF73.w		; 8C 73 AF
	bvc 120.b		; 50 78
	sbc $1F.b,X		; F5 1F
	cli		; 58
	mvp $A9,$13		; 44 13 A9
	sbc $620EF8.l,X		; FF F8 0E 62
	sbc $14FB24.l,X		; FF 24 FB 14
	xba		; EB
	trb $D4E3.w		; 1C E3 D4
	sbc $18.b,S		; E3 18
	sta $EEEA.w,X		; 9D EA EE
	lda #$F8FF.w		; A9 FF F8
	tsb $FEFE.w		; 0C FE FE
	pha		; 48
	lda #$FF0A.w		; A9 0A FF
	tyx		; BB
	sbc $9B.b,X		; F5 9B
	stz $BF.b		; 64 BF
	rti		; 40

	ldx $814E.w		; AE 4E 81
	ora ($40.b,S),Y		; 13 40
	phy		; 5A
	.db $62, $D8, $09		; 62 D8 09
	sta $1FDE80.l,X		; 9F 80 DE 1F
	trb $E2.b		; 14 E2
	bra  -8.b		; 80 F8
	phd		; 0B
	and $801F52.l,X		; 3F 52 1F 80
	sed		; F8
	asl A		; 0A
	rol $DC3E.w,X		; 3E 3E DC
	trb $0CEC.w		; 1C EC 0C
	asl $E0FE.w,X		; 1E FE E0
	stx $79.b		; 86 79
	bit #$8072.w		; 89 72 80
	bne   0.b		; D0 00
	sta $7B3F1B.l,X		; 9F 1B 3F 7B
	sbc $D439EF.l,X		; FF EF 39 D4
	sbc ($F0.b),Y		; F1 F0
	sbc ($F0.b)		; F2 F0
	sbc $F0.b,X		; F5 F0
	cpy #$3FC0.w		; C0 C0 3F
	brk $7B.b		; 00 7B
	ldy $D631.w		; AC 31 D6
	sbc $6A29FF.l,X		; FF FF 29 6A
	sbc ($EE.b)		; F2 EE
	bit $7C.b,X		; 34 7C
	stx $17.b		; 86 17
	cpx $B5.b		; E4 B5
	eor [$34.b]		; 47 34
	tsb $97.b		; 04 97
	sta $DA.b,X		; 95 DA
	adc $08D4FF.l,X		; 7F FF D4 08
	ora $CE.b		; 05 CE
	ora ($6C.b,X)		; 01 6C
	ora ($0F.b,X)		; 01 0F
	plx		; FA
	and #$00CF.w		; 29 CF 00
	sbc $E500.w		; ED 00 E5
	brk $FF.b		; 00 FF
	sbc $741FE0.l,X		; FF E0 1F 74
	phd		; 0B
	.db $62, $15, $A9		; 62 15 A9
	sta $5B.b		; 85 5B
	ora $FB.b,S		; 03 FB
	sta $17.b,S		; 83 17
	ora $33.b,X		; 15 33
	ora $C3FF.w,Y		; 19 FF C3
	tay		; A8
	rti		; 40

	bit $C0.b,X		; 34 C0
	pla		; 68
	bra -77.b		; 80 B3
	rti		; 40

	sbc [$00.b]		; E7 00
	cmp [$E0.b]		; C7 E0
	cop $DD.b		; 02 DD
	cmp $CD.b,X		; D5 CD
	cop $D6.b		; 02 D6
	sbc $69FF.w		; ED FF 69
	clv		; B8
	lda ($BE.b)		; B2 BE
	eor #$AACD.w		; 49 CD AA
	ora $E80EE8.l,X		; 1F E8 0E E8
	phy		; 5A
	asl A		; 0A
	inc $263B.w,X		; FE 3B 26
	sbc ($77.b),Y		; F1 77
	sbc ($8D.b)		; F2 8D
	sbc ($F8.b,X)		; E1 F8
	ora $FFB5FE.l		; 0F FE B5 FF
	ldy $FFFD.w,X		; BC FD FF
	xce		; FB
	inc $FDEA.w,X		; FE EA FD
	pla		; 68
	sbc $05F96E.l,X		; FF 6E F9 05
	plx		; FA
	ora ($FE.b,X)		; 01 FE
	ldy #$FDD1.w		; A0 D1 FD
	plx		; FA
	sbc $F08F.w,Y		; F9 8F F0
	sbc $FAFA.w,Y		; F9 FA FA
	sed		; F8
	inc $58.b,X		; F6 58
	eor ($9C.b)		; 52 9C
	ldx $2D3F.w,Y		; BE 3F 2D
	sbc $BF.b,X		; F5 BF
	adc [$18.b],Y		; 77 18
	cmp ($64.b,X)		; C1 64
	sed		; F8
	sbc ($16.b),Y		; F1 16
	sbc $C0.b,S		; E3 C0
	and ($0E.b,S),Y		; 33 0E
	asl $BC3F.w		; 0E 3F BC
	stz $9F1E.w,X		; 9E 1E 9F
	ora $C10989.l,X		; 1F 89 09 C1
	lsr $FF.b,X		; 56 FF
	asl $2EFF.w,X		; 1E FF 2E
	sbc $59641F.l,X		; FF 1F 64 59
	sec		; 38
	sbc $109E61.l		; EF 61 9E 10
	ldx $9621.w		; AE 21 96
	beq   0.b		; F0 00
	sbc ($00.b,X)		; E1 00
	cmp ($8F.b),Y		; D1 8F
	sbc $0051FC.l,X		; FF FC 51 00
	adc ($FC.b,X)		; 61 FC
	pla		; 68
	brk $70.b		; 00 70
	sta $8F7C.w		; 8D 7C 8F
	cpx $FFFF.w		; EC FF FF
	ora $B01FBA.l,X		; 1F BA 1F B0
	ora $D81E91.l,X		; 1F 91 1E D8
	ora [$C1.b]		; 07 C1
	cop $8F.b		; 02 8F
	bvs -125.b		; 70 83
	bvs -101.b		; 70 9B
	ora $8968FF.l		; 0F FF 68 89
	pla		; 68
	sta ($60.b,X)		; 81 60
	inc $20D8.w,X		; FE D8 20
	cmp $38.b		; C5 38
	plb		; AB
	ora $57.b,X		; 15 57
	sbc $67EDFF.l,X		; FF FF ED 67
	sta $FCAB46.l,X		; 9F 46 AB FC
	ora $C5.b,S		; 03 C5
	rol A		; 2A
	dec $01.b,X		; D6 01
	bit $5483.w		; 2C 83 54
	ldy #$3FE8.w		; A0 E8 3F
	jsr ($9810.w,X)		; FC 10 98
	rts		; 60

	lda $9650.w		; AD 50 96
	pla		; 68
	jsr ($28D6.w,X)		; FC D6 28
	bit $5750.w		; 2C 50 57
	sbc $BB39FF.l,X		; FF FF 39 BB
	ldy $F4FB.w,X		; BC FB F4
	sbc ($FC.b,S),Y		; F3 FC
	sbc $C0F4.w		; ED F4 C0
	jsr ($F401.w,X)		; FC 01 F4
	sta $A9E0.w,X		; 9D E0 A9
	sbc $4406FF.l,X		; FF FF 06 44
	ora $0C.b,S		; 03 0C
	ora $04.b,S		; 03 04
	ora $09.b,S		; 03 09
	cop $00.b		; 02 00
	ora $89.b,S		; 03 89
	cop $11.b		; 02 11
	cop $5B.b		; 02 5B
	inc $A4FA.w,X		; FE FA A4
	and $52D3.w		; 2D D3 52
	sbc $7FEF56.l,X		; FF 56 EF 7F
	cmp $D9BA.w		; CD BA D9
	sbc $950FF8.l,X		; FF F8 0F 95
	ror A		; 6A
	lda $F83E.w,X		; BD 3E F8
	.db $42, $62		; 42 62
	.db $62, $FF, $4A		; 62 FF 4A
	sbc $E0155B.l,X		; FF 5B 15 E0
	sed		; F8
	ora ($48.b),Y		; 11 48
	lda [$D8.b],Y		; B7 D8
	plx		; FA
	sbc [$27.b],Y		; F7 27
	asl $04E9.w,X		; 1E E9 04
	sbc ($32.b)		; F2 32
	sbc $FFEC37.l,X		; FF 37 EC FF
	sed		; F8
	sed		; F8
	cpx #$0DD0.w		; E0 D0 0D
	sbc #$FF12.w		; E9 12 FF
	sbc $EF4087.l,X		; FF 87 40 EF
	brk $F7.b		; 00 F7
	and $F7.b		; 25 F7
	adc $FF.b,X		; 75 FF
	adc $927FD7.l,X		; 7F D7 7F 92
	sbc $7F01C5.l,X		; FF C5 01 7F
	clc		; 18
	and $1101.w,Y		; 39 01 11
	ora ($CB.b,X)		; 01 CB
	cmp $8B.b,S		; C3 8B
	sta $FF.b,S		; 83 FF
	sbc [$E7.b]		; E7 E7
	inc $E0FF.w,X		; FE FF E0
	pld		; 2B
	sty $D7.b		; 84 D7
	brk $CB.b		; 00 CB
	brk $C7.b		; 00 C7
	eor ($EB.b)		; 52 EB
	lsr $E6.b,X		; 56 E6
	adc $FFFFC8.l,X		; 7F C8 FF FF
	sbc $70FD82.l,X		; FF 82 FD 70
	brk $A8.b		; 00 A8
	bra -76.b		; 80 B4
	bra -72.b		; 80 B8
	bra -44.b		; 80 D4
	cpy #$C0C9.w		; C0 C9 C0
	sbc $E0.b		; E5 E0
	sbc $F0F27F.l,X		; FF 7F F2 F0
	adc $145614.l,X		; 7F 14 56 14
	cmp $04.b		; C5 04
	dec $04.b		; C6 04
	sbc $43DA42.l		; EF 42 DA 43
	lda $F0F7.w,X		; BD F7 F0
	cmp $C28E80.l,X		; DF 80 8E C2
	ror $3D00.w,X		; 7E 00 3D
	brk $10.b		; 00 10
	php		; 08
	and $18.b		; 25 18
	lsr $CA.b,X		; 56 CA
	sbc $0592FF.l,X		; FF FF 92 05
	lda $12.b,X		; B5 12
	adc [$20.b]		; 67 20
	.db $82, $00, $45		; 82 00 45
	bpl -94.b		; 10 A2
	and ($55.b)		; 32 55
	and [$B8.b],Y		; 37 B8
	sbc $DAFEA5.l		; EF A5 FE DA
	jsr $12A4.w		; 20 A4 12
	jsr ($1E5D.w,X)		; FC 5D 1E
	cmp ($54.b),Y		; D1 54
	brk $26.b		; 00 26
	bne -66.b		; D0 BE
	sbc $F442B1.l,X		; FF B1 42 F4
	brk $FD.b		; 00 FD
	and $FF.b		; 25 FF
	adc $FD.b,X		; 75 FD
	adc $0B80D6.l,X		; 7F D6 80 0B
	ldy #$1E7E.w		; A0 7E 1E
	eor $99FC.w,Y		; 59 FC 99
	txa		; 8A
	asl $042C.w,X		; 1E 2C 04
	lda [$FF.b],Y		; B7 FF
	eor [$AA.b],Y		; 57 AA
	ora $FE.b,S		; 03 FE
	bvc  21.b		; 50 15
	jsr ($B004.w,X)		; FC 04 B0
	ora #$CA05.w		; 09 05 CA
	beq 115.b		; F0 73
	tsb $B4.b		; 04 B4
	adc $94.b,X		; 75 94
	eor $D5.b,X		; 55 D5
	sbc $B604.w,Y		; F9 04 B6
	sbc $B608FC.l,X		; FF FC 08 B6
	cpx #$08A7.w		; E0 A7 08
	lda $E0.b,X		; B5 E0
	ldx $0C.b		; A6 0C
	lda ($0A.b)		; B2 0A
	tax		; AA
	eor [$FC.b],Y		; 57 FC
	sed		; F8
	asl A		; 0A
	tsb $94B2.w		; 0C B2 94
	jsr ($09F8.w,X)		; FC F8 09
	stz $FCD3.w		; 9C D3 FC
	sed		; F8
	asl A		; 0A
	inc $0DFF.w,X		; FE FF 0D
	jmp.w [$F8FC]		; DC FC F8
	asl A		; 0A
	brk $05.b		; 00 05
	ora $0B.b,S		; 03 0B
	trb $133F.w		; 1C 3F 13
	adc $7F.b,X		; 75 7F
	trb $7F.b		; 14 7F
	nop		; EA
	eor $E1.b,X		; 55 E1
	sta $EEA5FA.l		; 8F FA A5 EE
	sed		; F8
	sed		; F8
	cpx #$C0E0.w		; E0 E0 C0
	cpy #$F480.w		; C0 80 F4
	sbc $BCC4FF.l,X		; FF FF C4 BC
	adc ($68.b,S),Y		; 73 68
	stz $A17D.w,X		; 9E 7D A1
	ror A		; 6A
	lda [$F0.b],Y		; B7 F0
	eor $0A17BD.l,X		; 5F BD 17 0A
	dex		; CA
	lsr $E091.w		; 4E 91 E0
	phd		; 0B
	cmp #$0A2A.w		; C9 2A 0A
	rol $C9.b		; 26 C9
	inc $F73F.w,X		; FE 3F F7
	jsr ($F3FC.w,X)		; FC FC F3
	cmp $30EE31.l		; CF 31 EE 30
	eor $AA.b		; 45 AA
	txs		; 9A
	adc $EB14D4.l,X		; 7F D4 14 EB
	mvn $F8,$FF		; 54 FF F8
	nop		; EA
	cpx #$04D1.w		; E0 D1 04
	stx $FC.b		; 86 FC
	jsr ($3BCD.w,X)		; FC CD 3B
	sbc [$8A.b],Y		; F7 8A
	phx		; DA
	jsr $A9FF.w		; 20 FF A9
	bra 117.b		; 80 75
	adc $CA.b,X		; 75 CA
	tda		; 7B
	bra -54.b		; 80 CA
	jsr $64A0.w		; 20 A0 64
	cpx #$85AF.w		; E0 AF 85
	sbc $BFB9A8.l,X		; FF A8 B9 BF
	jsr ($A0FD.w,X)		; FC FD A0
	stx $08.b,Y		; 96 08
	dey		; 88
	and ($80.b,X)		; 21 80
	and [$25.b],Y		; 37 25
	phy		; 5A
	sta $C2.b,S		; 83 C2
	eor [$88.b],Y		; 57 88
	txy		; 9B
	ldx $C1.b		; A6 C1
	and #$B83F.w		; 29 3F B8
	ora $9BA0.w		; 0D A0 9B
	sbc ($43.b,X)		; E1 43
	stz $65.b		; 64 65
	xba		; EB
	txs		; 9A
	rol A		; 2A
	pei ($BE.b)		; D4 BE
	eor ($F8.b,X)		; 41 F8
	rti		; 40

	trb $FE.b		; 14 FE
	ldy #$F8E0.w		; A0 E0 F8
	ora $5DA0.w		; 0D A0 5D
	.db $82, $8A, $20		; 82 8A 20
	jsr $8755.w		; 20 55 87
	plp		; 28
	and $CA.b,X		; 35 CA
	stp		; DB
	brk $F8.b		; 00 F8
	brk $A0.b		; 00 A0
	cpx #$0DF8.w		; E0 F8 0D
	jsr ($A0FF.w,X)		; FC FF A0
	sta [$09.b],Y		; 97 09
	.db $82, $23, $95		; 82 23 95
	jsl $42502F.l		; 22 2F 50 42
	dey		; 88
	lda ($20.b),Y		; B1 20
	ora $35A4B4.l,X		; 1F B4 A4 35
	cpx #$08F7.w		; E0 F7 08
	txs		; 9A
	lda ($FC.b)		; B2 FC
	bvs  73.b		; 70 49
	ror A		; 6A
	lda $FCF16C.l		; AF 6C F1 FC
	sed		; F8
	phd		; 0B
	pla		; 68
	inc $FC.b,X		; F6 FC
	inc $18FC.w,X		; FE FC 18
	eor ($F0.b),Y		; 51 F0
	brk $F1.b		; 00 F1
	tax		; AA
	eor ($37.b),Y		; 51 37
	.db $82, $30, $3A		; 82 30 3A
	bra -64.b		; 80 C0
	ora $64.b,S		; 03 64
	eor #$FE0F.w		; 49 0F FE
	sed		; F8
	inc $3AF5.w,X		; FE F5 3A
	inc A		; 1A
	bcs  50.b		; B0 32
	stz $0B.b,X		; 74 0B
	inx		; E8
	ora [$C5.b],Y		; 17 C5
	and $1B2802.l,X		; 3F 02 28 1B
	bvs   8.b		; 70 08
	ora ($E0.b),Y		; 11 E0
	ora $C75FFF.l,X		; 1F FF 5F C7
	adc $68FE7E.l,X		; 7F 7E FE 68
	sed		; F8
	sed		; F8
	ora [$A4.b]		; 07 A4
	tas		; 1B
	ror $09.b,X		; 76 09
	cld		; D8
	ora [$89.b]		; 07 89
	ldy $F0.b,X		; B4 F0
	sta [$F2.b]		; 87 F2
	rts		; 60

	adc [$FF.b],Y		; 77 FF
	bit $802C.w		; 2C 2C 80
	bra  91.b		; 80 5B
	cpy $DF.b		; C4 DF
	ora $FF.b		; 05 FF
	adc $7BFD.w		; 6D FD 7B
	sbc $F16F34.l,X		; FF 34 6F F1
	bit $47D3.w		; 2C D3 47
	phx		; DA
	sed		; F8
	ora $EB0AFF.l		; 0F FF 0A EB
	brk $2A.b		; 00 2A
	rol A		; 2A
	and $9C.b,S		; 23 9C
	ora $FB.b,S		; 03 FB
	tsb $EB.b		; 04 EB
	xba		; EB
	cli		; 58
	lda $F258F8.l,X		; BF F8 58 F2
	sbc ($FD.b)		; F2 FD
	sbc $D52A.w,X		; FD 2A D5
	jsr ($E7B1.w,X)		; FC B1 E7
	xba		; EB
	trb $58.b		; 14 58
	eor $FC.b,S		; 43 FC
	lda [$F2.b]		; A7 F2
	ora $09DC.w		; 0D DC 09
	sbc ($6A.b,S),Y		; F3 6A
	sta $16.b,X		; 95 16
	sbc #$C3BD.w		; E9 BD C3
	lsr $B45E.w,X		; 5E 5E B4
	and $08D4.w,Y		; 39 D4 08
	php		; 08
	sta [$FE.b]		; 87 FE
	lsr $FCA1.w,X		; 5E A1 FC
	pei ($85.b)		; D4 85
	sbc ($2B.b,X)		; E1 2B
	php		; 08
	sbc $D292E9.l,X		; FF E9 92 D2
	and $9B9BCC.l		; 2F CC 9B 9B
	xba		; EB
	inc $001B.w,X		; FE 1B 00
	rol $6E.b		; 26 6E
	tsx		; BA
	cpx #$9BFD.w		; E0 FD 9B
	stz $F8.b		; 64 F8
	jsr ($09F6.w,X)		; FC F6 09
	cpy #$EF3F.w		; C0 3F EF
	sbc [$DE.b],Y		; F7 DE
	sbc $9EFF06.l,X		; FF 06 FF 9E
	pei ($A1.b)		; D4 A1
	cmp [$00.b],Y		; D7 00
	phy		; 5A
	and $3710F8.l,X		; 3F F8 10 37
	iny		; C8
	ora $C6C122.l,X		; 1F 22 C1 C6
	plx		; FA
	lda $DB.b,X		; B5 DB
	cmp ($49.b,X)		; C1 49
	sbc ($BE.b),Y		; F1 BE
	adc $F8FE34.l		; 6F 34 FE F8
	asl A		; 0A
	iny		; C8
	and [$5B.b],Y		; 37 5B
	sbc $555BBB.l,X		; FF BB 5B 55
	adc $F8.b,X		; 75 F8
	plx		; FA
	rti		; 40

	eor #$047B.w		; 49 7B 04
	cmp [$28.b],Y		; D7 28
	ldy #$FF39.w		; A0 39 FF
	ldy $35.b		; A4 35
	jsr ($C112.w,X)		; FC 12 C1
	ora $E4.b		; 05 E4
	sta ($DE.b,X)		; 81 DE
	inc $321F.w,X		; FE 1F 32
	cmp ($30.b,X)		; C1 30
	bvs  80.b		; 70 50
	bvc  65.b		; 50 41
	plb		; AB
	jsr ($7A03.w,X)		; FC 03 7A
	rti		; 40

	ora #$E11C.w		; 09 1C E1
	rol $C172.w,X		; 3E 72 C1
	lsr $61.b,X		; 56 61
	sbc $95B783.l,X		; FF 83 B7 95
	sed		; F8
	sed		; F8
	lda ($A1.b,X)		; A1 A1
	and #$A029.w		; 29 29 A0
	ldy #$52AD.w		; A0 AD 52
	ora $3CFDE1.l		; 0F E1 FD 3C
	inc A		; 1A
	ora [$44.b]		; 07 44
	sbc $5FFFD6.l,X		; FF D6 FF 5F
	eor ($8E.b,X)		; 41 8E
	sbc $152424.l,X		; FF 24 24 15
	sbc ($85.b,X)		; E1 85
	ora $49.b,X		; 15 49
	sta $00.b,S		; 83 00
	wai		; CB
	bit $82.b,X		; 34 82
	lda [$89.b]		; A7 89
	inc $FFEA.w		; EE EA FF
	stp		; DB
	asl $89.b,X		; 16 89
	lda $E0D2.w,Y		; B9 D2 E0
	inc $ACAC.w,X		; FE AC AC
	bra -128.b		; 80 80
	ora $6D00.w		; 0D 00 6D
	brk $41.b		; 00 41
	cmp [$EA.b]		; C7 EA
	lda $47FF2C.l,X		; BF 2C FF 47
	inc $8B53.w		; EE 53 8B
	sta $FEE0.w		; 8D E0 FE
	ora ($74.b)		; 12 74
	bit $57.b		; 24 57
	sbc ($00.b)		; F2 00
	cmp $F0C2C0.l		; CF C0 C2 F0
.ACCU 8
	sep #$A6		; E2 A6
	sbc [$B4.b]		; E7 B4
	cmp [$AA.b],Y		; D7 AA
	trb DMAP0.w		; 1C 00 43
	clv		; B8
	rts		; 60

	ora $1D.b,S		; 03 1D
	sbc $DE03.w,Y		; F9 03 DE
	ora $5E00.w,Y		; 19 00 5E
.INDEX 16
	rep #$5F		; C2 5F
	jmp.w [$0023]		; DC 23 00
	sei		; 78
	ora $0759D6.l		; 0F D6 59 07
	and $00EFFF.l		; 2F FF EF 00
	bit $5A.b,X		; 34 5A
	sbc ($FF.b),Y		; F1 FF
	lda $13F8E0.l		; AF E0 F8 13
	ora [$F8.b]		; 07 F8
	asl A		; 0A
	brk $6A.b		; 00 6A
	bcc -11.b		; 90 F5
	sbc $10.b,X		; F5 10
	lda $41.b,S		; A3 41
	ora ($DC.b)		; 12 DC
	eor ($FB.b)		; 52 FB
	sta $B0E2.w,Y		; 99 E2 B0
	and ($F6.b),Y		; 31 F6
	rol $D9FB.w		; 2E FB D9
	cpy #$21D6.w		; C0 D6 21
	sbc ($0F.b,S),Y		; F3 0F
	bvc 111.b		; 50 6F
	ora $A35F50.l,X		; 1F 50 5F A3
	cmp $F8E024.l,X		; DF 24 E0 F8
	ora #$50.b		; 09 50
	sbc $B0F3.w,X		; FD F3 B0
	eor $FE38C7.l,X		; 5F C7 38 FE
	xba		; EB
	sbc ($F1.b),Y		; F1 F1
	ora ($30.b,X)		; 01 30
	ora $FF0F0E.l		; 0F 0E 0F FF
	rti		; 40

	bcs -96.b		; B0 A0
	eor $6AD6.w,X		; 5D D6 6A
	ora $F0BDC3.l		; 0F C3 BD F0
	beq  15.b		; F0 0F
	ldy $FEBE.w,X		; BC BE FE
	wai		; CB
	ldy $2B39.w		; AC 39 2B
	pld		; 2B
	cop $EF.b		; 02 EF
	inc $E974.w,X		; FE 74 E9
	sbc $0002.w,X		; FD 02 00
	wai		; CB
	dec A		; 3A
	bit $2B.b		; 24 2B
	pei ($D0.b)		; D4 D0
	stp		; DB
	sbc $E534CB.l,X		; FF CB 34 E5
	sbc $C3.b		; E5 C3
	sed		; F8
	plx		; FA
	plx		; FA
	ora $9BFC68.l,X		; 1F 68 FC 9B
	asl A		; 0A
	ldx #$2B5D.w		; A2 5D 2B
	xba		; EB
	sbc $1AE53B.l,X		; FF 3B E5 1A
	bne  68.b		; D0 44
	cpx #$3BFC.w		; E0 FC 3B
	cpy $80.b		; C4 80
	bra 106.b		; 80 6A
	ror A		; 6A
	ora [$FF.b]		; 07 FF
	beq -16.b		; F0 F0
	cmp $00.b,S		; C3 00
.INDEX 8
	sep #$D4		; E2 D4
	pei ($80.b)		; D4 80
	adc $FC6868.l,X		; 7F 68 68 FC
	ror A		; 6A
	asl $9543.w		; 0E 43 95
	cpx #$FC.b		; E0 FC
	pei ($2B.b)		; D4 2B
	jsr ($9768.w,X)		; FC 68 97
	cpy $49.b		; C4 49
	adc #$28.b		; 69 28
	jmp.w [$D181]		; DC 81 D1
	jmp $1ED803.l		; 5C 03 D8 1E
	jsr $79F3.w		; 20 F3 79
	adc ($9C.b),Y		; 71 9C
	ora $00FBFE.l,X		; 1F FE FB 00
	jmp $A4B4.w		; 4C B4 A4
	jmp.w [$A05D]		; DC 5D A0
	lda $EB.b		; A5 EB
	tax		; AA
	sbc [$B7.b],Y		; F7 B7
	stp		; DB
	inc $F3.b,X		; F6 F3
	tsb $1810.w		; 0C 10 18
	bit $F6.b,X		; 34 F6
	sbc ($24.b,X)		; E1 24
	sbc $37.b,X		; F5 37
	brk $FB.b		; 00 FB
	brk $95.b		; 00 95
	cpx #$FE.b		; E0 FE
	tsb $FF.b		; 04 FF
	ldy $FB53.w		; AC 53 FB
	tsb $DC.b		; 04 DC
	sbc ($07.b,S),Y		; F3 07
	ldy $98D3.w,X		; BC D3 98
	dex		; CA
	brk $9A.b		; 00 9A
	txs		; 9A
	cpx #$FE.b		; E0 FE
	ora [$F8.b]		; 07 F8
	cpx #$65.b		; E0 65
	cmp $D7FF7F.l,X		; DF 7F FF D7
	plp		; 28
	ply		; 7A
	sta $08.b		; 85 08
	jmp.w [$F0F1]		; DC F1 F0
	sbc $DE006E.l,X		; FF 6E 00 DE
	brk $A2.b		; 00 A2
	ldx #$8D.b		; A2 8D
	tda		; 7B
	cpx #$FE.b		; E0 FE
	xce		; FB
	jsr ($FC5D.w,X)		; FC 5D FC
	adc $99B590.l		; 6F 90 B5 99
	brk $1F.b		; 00 1F
	cpx #$F7.b		; E0 F7
	lda $203A06.l,X		; BF 06 3A 20
	jsr $F8E0.w		; 20 E0 F8
	ora $FFDF.w		; 0D DF FF
	sta $FE.b,S		; 83 FE
	pei ($2F.b)		; D4 2F
	dec $B9.b		; C6 B9
	and $9C0AB0.l,X		; 3F B0 0A 9C
	sbc ($F1.b),Y		; F1 F1
	eor $BF.b		; 45 BF
	adc $FEFBE6.l,X		; 7F E6 FB FE
	sty $A9.b		; 84 A9
	eor [$50.b],Y		; 57 50
	sbc $FF.b		; E5 FF
	stz $8B.b,X		; 74 8B
	adc #$81.b		; 69 81
	bra 106.b		; 80 6A
	tad		; 5B
	cpx #$F8.b		; E0 F8
	tsb $F132.w		; 0C 32 F1
	sed		; F8
	sbc $69035E.l,X		; FF 5E 03 69
	brk $1D.b		; 00 1D
	brk $A0.b		; 00 A0
	ora $BC.b,S		; 03 BC
	cpy #$E8.b		; C0 E8
	sbc [$31.b],Y		; F7 31
	phd		; 0B
	beq  -2.b		; F0 FE
	jmp $24FE.w		; 4C FE 24
	beq  11.b		; F0 0B
	lsr $86.b		; 46 86
	and ($C1.b)		; 32 C1
	eor ($01.b,X)		; 41 01
	inc $0D3F.w,X		; FE 3F 0D
	rol $A1.b		; 26 A1
	and $3FC02D.l,X		; 3F 2D C0 3F
	sbc $6FFE69.l,X		; FF 69 FE 6F
	lda [$02.b],Y		; B7 02
	beq  13.b		; F0 0D
	and $F5F5C0.l,X		; 3F C0 F5 F5
	tax		; AA
	cpy #$75.b		; C0 75
	sbc $28.b,X		; F5 28
	cmp $6F.b		; C5 6F
	sbc ($D9.b)		; F2 D9
	eor $18.b,X		; 55 18
	cmp $0A11.w		; CD 11 0A
	sbc ($06.b)		; F2 06
	pea $F49A.w		; F4 9A F4
	lsr $07F9.w		; 4E F9 07
	ldx $FC15.w,Y		; BE 15 FC
	cmp $C53F24.l,X		; DF 24 3F C5
	cmp ($BE.b),Y		; D1 BE
	sbc ($A3.b),Y		; F1 A3
	rol $6C99.w,X		; 3E 99 6C
	lda $FFFD.w,Y		; B9 FD FF
	jsr ($F75C.w,X)		; FC 5C F7
	ora $809F.w		; 0D 9F 80
	brk $0F.b		; 00 0F
	sbc $7DB0C0.l,X		; FF C0 B0 7D
	bne  35.b		; D0 23
	php		; 08
	beq  62.b		; F0 3E
	ora $F20D53.l		; 0F 53 0D F2
	bra 127.b		; 80 7F
	asl $F2.b		; 06 F2
	sbc $F302.w,X		; FD 02 F3
	tsb $1F68.w		; 0C 68 1F
	sed		; F8
	ldx $B7F1.w,Y		; BE F1 B7
	sbc ($6A.b,X)		; E1 6A
	pha		; 48
	inc A		; 1A
	lda ($04.b,S),Y		; B3 04
	ldy $3B42.w		; AC 42 3B
	bit $B6D0.w,X		; 3C D0 B6
	adc $EAE1.w,Y		; 79 E1 EA
	ora $FC.b,X		; 15 FC
	lda ($4C.b,S),Y		; B3 4C
	ldy $FD53.w		; AC 53 FD
	sbc $C40CBE.l,X		; FF BE 0C C4
	sbc $06990D.l,X		; FF 0D 99 06
	sbc ($01.b),Y		; F1 01
	jsr $0F6F.w		; 20 6F 0F
	cmp $0F2C.w,X		; DD 2C 0F
	ror $F5F3.w,X		; 7E F3 F5
	ora [$C4.b]		; 07 C4
	tsa		; 3B
	ldx $69EE.w,Y		; BE EE 69
	inc $9F60.w,X		; FE 60 9F
	cmp $F022.w,X		; DD 22 F0
	xce		; FB
	ldx $F19A.w,Y		; BE 9A F1
	wai		; CB
	xce		; FB
	lda ($40.b)		; B2 40
	lda $FF5146.l,X		; BF 46 51 FF
	sbc #$A8.b		; E9 A8
	adc $A8FB70.l,X		; 7F 70 FB A8
	and $CB3D.w,X		; 3D 3D CB
	bit $B2.b,X		; 34 B2
	eor $B6F4.w		; 4D F4 B6
	txa		; 8A
	tay		; A8
	eor [$F8.b],Y		; 57 F8
	and ($FE.b,X)		; 21 FE
	and $DEC2.w,X		; 3D C2 DE
	trb $FA.b		; 14 FA
	iny		; C8
	pea $FE17.w		; F4 17 FE
	sbc $0956B6.l		; EF B6 56 09
	jsr ($D6D0.w,X)		; FC D0 D6
	dec $14.b,X		; D6 14
	xba		; EB
	iny		; C8
	and [$21.b],Y		; 37 21
	inc $87D0.w,X		; FE D0 87
	phb		; 8B
	and $4229D6.l		; 2F D6 29 42
	eor ($CA.b)		; 52 CA
	cmp $7832.w		; CD 32 78
	lda $F86F.w,Y		; B9 6F F8
	eor ($20.b,S),Y		; 53 20
	sta ($00.b)		; 92 00
	bit $E000.w		; 2C 00 E0
	ora $34C614.l		; 0F 14 C6 34
	sty $49.b		; 84 49
	sbc $0ABD.w		; ED BD 0A
	sbc $04F4.w		; ED F4 04
	sbc ($4C.b)		; F2 4C
	tsb $53.b		; 04 53
	nop		; EA
	jsr ($B291.w,X)		; FC 91 B2
	bit $E2.b,X		; 34 E2
	pea $FE30.w		; F4 30 FE
	cpy #$00.b		; C0 00
	and ($DA.b)		; 32 DA
	phx		; DA
	cmp $B2.b		; C5 B2
	lda ($34.b)		; B2 34
	inc $C0.b		; E6 C0
	ora ($C0.b,X)		; 01 C0
	sbc $FC25.w,X		; FD 25 FC
	eor $FFF6.w		; 4D F6 FF
	sbc ($EB.b,X)		; E1 EB
	trb $FF.b		; 14 FF
	bit $FB.b,X		; 34 FB
	eor $9090.w		; 4D 90 90
	lda [$00.b],Y		; B7 00
	jsr ($6799.w,X)		; FC 99 67
	and $5F1C.w		; 2D 1C 5F
	ldy $FCE0.w		; AC E0 FC
	adc $FEFDFC.l		; 6F FC FD FE
	lda $DF42.w,X		; BD 42 DF
	trb $025E.w		; 1C 5E 02
	phb		; 8B
	and $136C.w,Y		; 39 6C 13
	jsr ($23DC.w,X)		; FC DC 23
	cmp $E72AB2.l,X		; DF B2 2A E7
	and [$DD.b]		; 27 DD
	bra -19.b		; 80 ED
	ldy #$5F.b		; A0 5F
	cpy #$30.b		; C0 30
	sta $94.b,S		; 83 94
	and ($FF.b,X)		; 21 FF
	jmp $F8E0.w		; 4C E0 F8
	ora $2E410F.l		; 0F 0F 41 2E
	inc $EBDE.w,X		; FE DE EB
	sed		; F8
	rol $F800.w		; 2E 00 F8
	dey		; 88
	lda ($A8.b,X)		; A1 A8
	tsb $B3F4.w		; 0C F4 B3
	ora $2198E4.l,X		; 1F E4 98 21
	jsr ($FFFF.w,X)		; FC FF FF
	inc $1A.b,X		; F6 1A
	sbc $0EB5B2.l,X		; FF B2 B5 0E
	sbc $869548.l,X		; FF 48 95 86
	inc $56.b,X		; F6 56
	cmp ($47.b),Y		; D1 47
	sbc $FFFFDC.l,X		; FF DC FF FF
	cmp $F807.w,X		; DD 07 F8
	bcs  79.b		; B0 4F
	ora $3FC0E0.l,X		; 1F E0 C0 3F
	asl $F9.b		; 06 F9
	cld		; D8
	and $DEFC03.l		; 2F 03 FC DE
	sbc $6B23FF.l,X		; FF FF 23 6B
	pea $DF1A.w		; F4 1A DF
	stx $1EB1.w		; 8E B1 1E
	sbc $83BF9A.l,X		; FF 9A BF 83
	adc $A5FFF0.l		; 6F F0 FF A5
	cmp $43.b,S		; C3 43
	inc $0FF0.w,X		; FE F0 0F
	sep #$80		; E2 80
	adc $FCC03F.l,X		; 7F 3F C0 FC
	ora $5AFFE1.l,X		; 1F E1 FF 5A
	sbc ($C0.b),Y		; F1 C0
	dex		; CA
	inc $FEAC.w,X		; FE AC FE
	ora $C26E.w		; 0D 6E C2
	lda $7F78A8.l,X		; BF A8 78 7F
	clc		; 18
	lda $63CF.w,Y		; B9 CF 63
	stp		; DB
	adc ($77.b)		; 72 77
	inc $E601.w,X		; FE 01 E6
	ror $8691.w		; 6E 91 86
	sta [$FC.b]		; 87 FC
	sec		; 38
	cmp [$BC.b]		; C7 BC
	ora [$FC.b]		; 07 FC
	stz $8B.b,X		; 74 8B
	sta $2FFF.w,X		; 9D FF 2F
	lda $FF.b		; A5 FF
	ldx $EBD2.w,Y		; BE D2 EB
	inc $1DA2.w,X		; FE A2 1D
	cli		; 58
	sbc [$A8.b]		; E7 A8
	lda $792081.l,X		; BF 81 20 79
	ldy $EEFD.w,X		; BC FD EE
	cop $FD.b		; 02 FD
	jsr ($1803.w,X)		; FC 03 18
	cmp $7CF8.w,Y		; D9 F8 7C
	ply		; 7A
	sbc $07.b,X		; F5 07
	bcc -113.b		; 90 8F
	sbc $DFCF23.l,X		; FF 23 CF DF
	plb		; AB
	and $F5.b,X		; 35 F5
	sbc [$26.b],Y		; F7 26
	sbc ($43.b),Y		; F1 43
	xce		; FB
	cld		; D8
	bra  12.b		; 80 0C
	bmi -60.b		; 30 C4
	cmp $C68620.l,X		; DF 20 86 C6
	dey		; 88
	adc $FA0FDC.l,X		; 7F DC 0F FA
	phx		; DA
	and [$6A.b]		; 27 6A
	cmp $6A99.w,X		; DD 99 6A
	sbc $5BFED1.l		; EF D1 FE 5B
	lda $C3.b,S		; A3 C3
	cli		; 58
	adc $0480C0.l		; 6F C0 80 04
	sbc ($EF.b)		; F2 EF
	bpl -122.b		; 10 86
	ora ($3B.b,X)		; 01 3B
	jsr ($2EFE.w,X)		; FC FE 2E
	cmp ($5B.b),Y		; D1 5B
	lda #$FF.b		; A9 FF
	bcc -10.b		; 90 F6
	sbc ($AF.b),Y		; F1 AF
	sta $7FB141.l,X		; 9F 41 B1 7F
	ora ($67.b,X)		; 01 67
	sbc $678F79.l,X		; FF 79 8F 67
	stp		; DB
	ror $73.b,X		; 76 73
	tsb $F2.b		; 04 F2
	ldx $D608.w,Y		; BE 08 D6
	jsr ($C064.w,X)		; FC 64 C0
	bvs -113.b		; 70 8F
	trb $F1.b		; 14 F1
	adc ($31.b,X)		; 61 31
	adc $F1F172.l,X		; 7F 72 F1 F1
	lda ($1F.b,X)		; A1 1F
	tsa		; 3B
	ldy $C8.b		; A4 C8
	sbc $F20480.l,X		; FF 80 04 F2
	sbc ($0E.b),Y		; F1 0E
	cli		; 58
	sbc $24E4.w,X		; FD E4 24
	stp		; DB
	cmp $F104A3.l,X		; DF A3 04 F1
	plx		; FA
	adc #$E1.b		; 69 E1
	eor #$7F.b		; 49 7F
	ldx $D7.b		; A6 D7
	sbc $FB4B71.l,X		; FF 71 4B FB
	bne -96.b		; D0 A0
	adc ($1A.b)		; 72 1A
	ply		; 7A
	ora $08BF40.l,X		; 1F 40 BF 08
	sbc $D2F40B.l,X		; FF 0B F4 D2
	lda ($0F.b),Y		; B1 0F
	and $8AE228.l		; 2F 28 E2 8A
	cmp ($81.b),Y		; D1 81
	cmp $7C1D.w,X		; DD 1D 7C
	sbc $E0.b,S		; E3 E0
	cpx #$F5.b		; E0 F5
	bra -96.b		; 80 A0
	inc $1D.b,X		; F6 1D
.INDEX 8
	sep #$DC		; E2 DC
	jsr $FBF4.w		; 20 F4 FB
	cmp $BF.b,S		; C3 BF
	xce		; FB
	inc $09.b,X		; F6 09
	cpx #$7C.b		; E0 7C
	jmp ($8E78.w,X)		; 7C 78 8E
	ror $7EDB.w		; 6E DB 7E
	tda		; 7B
	bmi  12.b		; 30 0C
	php		; 08
	pea $7CFF.w		; F4 FF 7C
	sta $FA.b,S		; 83 FA
	asl A		; 0A
	sbc $1F.b,X		; F5 1F
	ror $2A80.w,X		; 7E 80 2A
	ora ($28.b,X)		; 01 28
	plp		; 28
	sta [$98.b],Y		; 97 98
	brk $CE.b		; 00 CE
	rol $B8A7.w,X		; 3E A7 B8
	pha		; 48
	rol $8039.w		; 2E 39 80
	cmp [$80.b],Y		; D7 80
	sbc $02.b,X		; F5 02
	ldy #$D9.b		; A0 D9
	eor [$95.b],Y		; 57 95
	jmp.w [$1E67]		; DC 67 1E
	brk $CD.b		; 00 CD
	sbc ($EE.b)		; F2 EE
	cmp $5807.w,Y		; D9 07 58
	xce		; FB
	cpy #$80.b		; C0 80
	sbc $F44207.l,X		; FF 07 42 F4
	ora [$F8.b]		; 07 F8
	clc		; 18
	sbc [$C2.b]		; E7 C2
	and $572CFF.l,X		; 3F FF 2C 57
	tay		; A8
	cpx #$57.b		; E0 57
	bmi  76.b		; 30 4C
	phx		; DA
	clc		; 18
	clc		; 18
	bra  -2.b		; 80 FE
	cpx #$FC.b		; E0 FC
	sep #$C0		; E2 C0
	jsr ($8CBD.w,X)		; FC BD 8C
	ora $13007D.l,X		; 1F 7D 00 13
	sbc $A0A3.w		; ED A3 A0
	sei		; 78
	stp		; DB
	ror $7F85.w		; 6E 85 7F
	bra -32.b		; 80 E0
	inc $1CA0.w,X		; FE A0 1C
	sbc [$60.b]		; E7 60
	sta $142DFE.l,X		; 9F FE 2D 14
	xba		; EB
	cmp [$FC.b],Y		; D7 FC
	adc ($DC.b,S),Y		; 73 DC
	and ($F0.b,S),Y		; 33 F0
	bra  -4.b		; 80 FC
	cpx #$FE.b		; E0 FE
	ora $FFD536.l		; 0F 36 D5 FF
	adc [$FF.b],Y		; 77 FF
	cmp [$F5.b]		; C7 F5
	eor $66DB.w,Y		; 59 DB 66
	sbc $EE6848.l,X		; FF 48 68 EE
	sbc $1A0A.w		; ED 0A 1A
	stz $EE.b		; 64 EE
	sta [$D0.b]		; 87 D0
	ora $DCFA.w		; 0D FA DC
	and [$FA.b]		; 27 FA
	stx $87.b,Y		; 96 87
	cmp ($5A.b,S),Y		; D3 5A
	nop		; EA
	sbc $6BCFFF.l,X		; FF FF CF 6B
	and ($3F.b,X)		; 21 3F
	ora $B9.b		; 05 B9
	.db $62, $72, $75		; 62 72 75
	and [$38.b]		; 27 38
	sbc $DAEFC9.l,X		; FF C9 EF DA
	sbc ($6F.b)		; F2 6F
	sbc $20F40B.l,X		; FF 0B F4 20
	cmp $A9B842.l,X		; DF 42 B8 A9
	plp		; 28
	ply		; 7A
	cmp ($10.b,X)		; C1 10
	sbc $10FD02.l,X		; FF 02 FD 10
	lda $1FFF.w,X		; BD FF 1F
	ora $6AFF.w		; 0D FF 6A
	sbc $6C7716.l,X		; FF 16 77 6C
	sbc $22B829.l		; EF 29 B8 22
	sta $A4.b,S		; 83 A4
	adc $E45886.l		; 6F 86 58 E4
	ora $FC.b,S		; 03 FC
	tsb $08.b		; 04 08
	cpx $40.b		; E4 40
	inc $F1.b,X		; F6 F1
	sed		; F8
	sbc $EA28FA.l,X		; FF FA 28 EA
	and $203F.w,X		; 3D 3F 20
	eor $39FC2A.l		; 4F 2A FC 39
	ora ($E4.b,S),Y		; 13 E4
	sbc $EA7A1F.l		; EF 1F 7A EA
	sbc $0A7D79.l		; EF 79 7D 0A
	sbc $C0.b,X		; F5 C0
	bcc -92.b		; 90 A4
.ACCU 8
	sep #$EF		; E2 EF
	bne  63.b		; D0 3F
	dey		; 88
	sbc $8082E2.l,X		; FF E2 82 80
	adc ($F5.b),Y		; 71 F5
	lda $9F867B.l,X		; BF 7B 86 9F
	eor #$3F.b		; 49 3F
	jsr ($D069.w,X)		; FC 69 D0
	sbc $D0C5.w,X		; FD C5 D0
	sty $9F.b,X		; 94 9F
	inc $0B.b		; E6 0B
	inc $E51A.w,X		; FE 1A E5
	bra -48.b		; 80 D0
	sta $02807F.l		; 8F 7F 80 02
	sty $90C1.w		; 8C C1 90
	adc $317BDF.l		; 6F DF 7B 31
	and $6D800C.l,X		; 3F 0C 80 6D
	adc $C8A28A.l,X		; 7F 8A A2 C8
	cmp $F7D580.l		; CF 80 D5 F7
	cmp $47.b,S		; C3 47
	bra  48.b		; 80 30
	cmp $FF809C.l		; CF 9C 80 FF
	eor ($FD.b)		; 52 FD
	cpy #$C0.b		; C0 C0
	jsr ($98C3.w,X)		; FC C3 98
	lda $FD0E.w,X		; BD 0E FD
	ora $66ED.w,Y		; 19 ED 66
	adc [$80.b]		; 67 80
	rol $43EF.w		; 2E EF 43
	ldx $DB5A.w,Y		; BE 5A DB
	pld		; 2B
	rtl		; 6B

	cmp $0D92.w,Y		; D9 92 0D
	sbc ($68.b)		; F2 68
	sta $7F41E4.l,X		; 9F E4 41 7F
	sed		; F8
	lda ($89.b)		; B2 89
	txy		; 9B
	pea $FA38.w		; F4 38 FA
	and $802F.w		; 2D 2F 80
	and #$FD.b		; 29 FD
	tsb $16.b		; 04 16
	ora [$4A.b],Y		; 17 4A
	dec A		; 3A
	xba		; EB
	asl A		; 0A
	ora $A4FE80.l		; 0F 80 FE A4
	inx		; E8
	.db $62, $F1, $7A		; 62 F1 7A
	eor $7880.w,X		; 5D 80 78
	stx $E6.b		; 86 E6
	and ($04.b),Y		; 31 04
	bpl  16.b		; 10 10
	lda #$0F.b		; A9 0F
	.db $42, $A9		; 42 A9
	tsb $00.b		; 04 00
	sbc ($F8.b),Y		; F1 F8
	asl A		; 0A
	lda $320A55.l		; AF 55 0A 32
	bra  16.b		; 80 10
	bvc -20.b		; 50 EC
	ldy $2EFA.w		; AC FA 2E
	bvc  22.b		; 50 16
	phd		; 0B
	sbc $430AF8.l,X		; FF F8 0A 43
	php		; 08
	asl $D87D.w		; 0E 7D D8
	brk $AB.b		; 00 AB
	tay		; A8
	sbc $A180.w,X		; FD 80 A1
	bra -127.b		; 80 81
	plx		; FA
	and ($20.b,X)		; 21 20
	tay		; A8
	inc $0771.w,X		; FE 71 07
	lda ($00.b,X)		; A1 00
	sbc ($00.b),Y		; F1 00
	and ($A8.b,X)		; 21 A8
	sbc $8888.w,X		; FD 88 88
	plx		; FA
	clv		; B8
	bpl  -4.b		; 10 FC
	dey		; 88
	txa		; 8A
	sta ($7E.b,X)		; 81 7E
	pld		; 2B
	tay		; A8
	dey		; 88
	and ($8A.b,X)		; 21 8A
	plx		; FA
	jsr ($DC8A.w,X)		; FC 8A DC
	sta ($08.b,S),Y		; 93 08
	ora #$AA.b		; 09 AA
.ACCU 16
.INDEX 16
	rep #$BA		; C2 BA
	sty $08.b		; 84 08
	tsb $F8F1.w		; 0C F1 F8
	asl A		; 0A
	dey		; 88
	sed		; F8
	ora ($FC.b)		; 12 FC
	ora [$88.b],Y		; 17 88
	sbc $41EC.w,X		; FD EC 41
	jsr $4022.w		; 20 22 40
	jsr ($F888.w,X)		; FC 88 F8
	ora #$FCF0.w		; 09 F0 FC
	brk $22.b		; 00 22
	inc $8689.w,X		; FE 89 86
	dey		; 88
	stx $89.b		; 86 89
	bcc  25.b		; 90 19
	adc [$84.b],Y		; 77 84
	tsb $86.b		; 04 86
	cpx #$880B.w		; E0 0B 88
	plx		; FA
	sta $9000.w,Y		; 99 00 90
	brk $84.b		; 00 84
	dey		; 88
	sed		; F8
	tsb $255A.w		; 0C 5A 25
	eor $0DF888.l,X		; 5F 88 F8 0D
	trb $18.b		; 14 18
	ora $F510.w		; 0D 10 F5
	cmp ($23.b),Y		; D1 23
	adc $F12B7C.l		; 6F 7C 2B F1
	sbc $FE88BD.l,X		; FF BD 88 FE
	ora #$210A.w		; 09 0A 21
	jsl $0B0201.l		; 22 01 02 0B
	plp		; 28
	dey		; 88
	inc $000B.w,X		; FE 0B 00
	and $89.b,S		; 23 89
	sbc $2BA9D0.l,X		; FF D0 A9 2B
	clc		; 18
	dey		; 88
	cpy #$C040.w		; C0 40 C0
	bvc -56.b		; 50 C8
	lsr A		; 4A
	lda $C0A0.w,X		; BD A0 C0
	bpl -120.b		; 10 88
	inc $00C0.w,X		; FE C0 00
	bne -48.b		; D0 D0
	cmp ($FC.b,X)		; C1 FC
	dey		; 88
	inc $2D65.w,X		; FE 65 2D
	phx		; DA
	txs		; 9A
	rti		; 40

	and $74.b,S		; 23 74
	dey		; 88
	cmp $F3A04E.l		; CF 4E A0 F3
	ora ($A0.b),Y		; 11 A0
	beq  13.b		; F0 0D
	nop		; EA
	adc $FF18F1.l,X		; 7F F1 18 FF
	brk $FA.b		; 00 FA
	bpl  81.b		; 10 51
	lda #$81A8.w		; A9 A8 81
	bra -55.b		; 80 C9
	iny		; C8
	bit #$E3E0.w		; 89 E0 E3
	clc		; 18
	inx		; E8
	eor ($00.b),Y		; 51 00
	lda #$C9FA.w		; A9 FA C9
	cmp #$00C6.w		; C9 C6 00
	phb		; 8B
	clc		; 18
	brk $F8.b		; 00 F8
	phd		; 0B
	ora ($00.b),Y		; 11 00
	sed		; F8
	ora $7891.w		; 0D 91 78
	cmp ($21.b,X)		; C1 21
	cop $42.b		; 02 42
	plp		; 28
	rti		; 40

	inc $88.b,X		; F6 88
	bit #$42A0.w		; 89 A0 42
	phx		; DA
	lda $4028.w,X		; BD 28 40
	inc $89.b,X		; F6 89
	rti		; 40

	sbc ($90.b,S),Y		; F3 90
	sty $E8.b,X		; 94 E8
	sbc #$B088.w		; E9 88 B0
	bcs -83.b		; B0 AD
	sbc $94F640.l,X		; FF 40 F6 94
	rti		; 40

	sbc ($B0.b,S),Y		; F3 B0
	rti		; 40

	sbc $08.b,X		; F5 08
	inc $4043.w,X		; FE 43 40
	tas		; 1B
	clc		; 18
	phd		; 0B
	dey		; 88
	phd		; 0B
	asl $0C83.w,X		; 1E 83 0C
	php		; 08
	inc $0043.w,X		; FE 43 00
	tas		; 1B
	bra  15.b		; 80 0F
	clc		; 18
	beq  11.b		; F0 0B
	php		; 08
	sbc $C410.w,X		; FD 10 C4
	trb $C0.b		; 14 C0
	ora ($E0.b)		; 12 E0
	bmi   8.b		; 30 08
	inc $EB57.w,X		; FE 57 EB
	sed		; F8
	pei ($00.b)		; D4 00
	cmp ($86.b)		; D2 86
	lda ($08.b,X)		; A1 08
	sbc $60F289.l,X		; FF 89 F2 60
	sbc $FC.b,X		; F5 FC
	sbc ($F8.b),Y		; F1 F8
	asl A		; 0A
	brk $55.b		; 00 55
	sec		; 38
	bmi  48.b		; 30 30
	adc $0AF0.w,X		; 7D F0 0A
	stx $B9.b,Y		; 96 B9
	sbc ($F8.b),Y		; F1 F8
	asl $4098.w		; 0E 98 40
	phd		; 0B
	php		; 08
	sbc ($00.b,S),Y		; F3 00
	dey		; 88
	inc $9C9B.w,X		; FE 9B 9C
	dey		; 88
	stz $14.b		; 64 14
	ror $FE88.w,X		; 7E 88 FE
	jsr ($989F.w,X)		; FC 9F 98
	dey		; 88
	jsr ($42C6.w,X)		; FC C6 42
	inc $34E4.w,X		; FE E4 34
	plx		; FA
	dec A		; 3A
	dey		; 88
	inc $F4FE.w,X		; FE FE F4
	cpx $FC47.w		; EC 47 FC
	plx		; FA
	sta [$FF.b],Y		; 97 FF
	php		; 08
	php		; 08
	tsb $040C.w		; 0C 0C 04
	lda $88B0CF.l		; AF CF B0 88
	inc $0008.w,X		; FE 08 00
	tsb $0FA0.w		; 0C A0 0F
	eor ($54.b),Y		; 51 54
	lda [$FB.b],Y		; B7 FB
	bmi -15.b		; 30 F1
	php		; 08
	and $203A.w,Y		; 39 3A 20
	inc $55.b,X		; F6 55
	ora ($F2.b)		; 12 F2
	brk $3B.b		; 00 3B
	clc		; 18
	sbc $0A89.w,X		; FD 89 0A
	lda #$0FFF.w		; A9 FF 0F
	dec A		; 3A
	sta ($12.b,X)		; 81 12
	sta $40C32C.l		; 8F 2C C3 40
	wai		; CB
	cli		; 58
	wai		; CB
	pha		; 48
	wai		; CB
	trb $B6F7.w		; 1C F7 B6
	sty $BB.b		; 84 BB
	brk $93.b		; 00 93
	inc $C391.w,X		; FE 91 C3
	brk $DB.b		; 00 DB
	pla		; 68
	bit #$00DF.w		; 89 DF 00
	sed		; F8
	ora $C46138.l		; 0F 38 61 C4
	brk $F8.b		; 00 F8
	ora $B4F8.w		; 0D F8 B4
	rti		; 40

	eor ($FE.b,X)		; 41 FE
	ldx $1AF8.w		; AE F8 1A
	inc A		; 1A
	ldy #$0B62.w		; A0 62 0B
	pla		; 68
	eor ($C0.b,X)		; 41 C0
	sbc #$EABE.w		; E9 BE EA
	tas		; 1B
	ora $63A0F8.l		; 0F F8 A0 63
	brk $6B.b		; 00 6B
	and ($2A.b)		; 32 2A
	phb		; 8B
	sty $3F1B.w		; 8C 1B 3F
	bne  28.b		; D0 1C
	tas		; 1B
	jmp $181F.w		; 4C 1F 18
	eor $2AFC48.l,X		; 5F 48 FC 2A
	sta $003095.l		; 8F 95 30 00
	ora $FC91A6.l,X		; 1F A6 91 FC
	jsr ($FE26.w,X)		; FC 26 FE
	sec		; 38
	jsr ($FE04.w,X)		; FC 04 FE
	inx		; E8
	bpl -23.b		; 10 E9
	ora ($E0.b),Y		; 11 E0
	clc		; 18
	rol $40.b		; 26 40
	adc ($FE.b),Y		; 71 FE
	tay		; A8
	inc $FCF9.w,X		; FE F9 FC
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	dec $1428.w,X		; DE 28 14
	trb $AF.b		; 14 AF
	dey		; 88
	lda #$C784.w		; A9 84 C7
	adc ($09.b,S),Y		; 73 09
	ora ($45.b),Y		; 11 45
	jsl $F1280A.l		; 22 0A 28 F1
	dec $F1E9.w,X		; DE E9 F1
	stz $3B.b,X		; 74 3B
	stz $E460.w		; 9C 60 E4
	sty $608C.w		; 8C 8C 60
	cpx #$8C0D.w		; E0 0D 8C
	rts		; 60

	sbc [$1B.b]		; E7 1B
	tsb $108C.w		; 0C 8C 10
	sty $081F.w		; 8C 1F 08
	jsr ($8884.w,X)		; FC 84 88
	cop $12.b		; 02 12
	sed		; F8
	sta $FE8CFC.l,X		; 9F FC 8C FE
	mvp $84,$10		; 44 10 84
	sta $88FCFA.l,X		; 9F FA FC 88
	inc $C7D4.w,X		; FE D4 C7
	plx		; FA
	inc $88FC.w,X		; FE FC 88
	inc $FEFE.w,X		; FE FE FE
	php		; 08
	ora #$4704.w		; 09 04 47
	txy		; 9B
	stx $D5.b		; 86 D5
	jsl $60E32C.l		; 22 2C E3 60
	jsr ($0009.w,X)		; FC 09 00
	sbc ($FF.b),Y		; F1 FF
	tya		; 98
	sbc ($0A.b),Y		; F1 0A
	lda ($C3.b,X)		; A1 C3
	sbc $1CCB0C.l		; EF 0C CB 1C
	inc $3CFB.w,X		; FE FB 3C
	xce		; FB
	bit $38FF.w		; 2C FF 38
	ror $61.b,X		; 76 61
	sec		; 38
	tax		; AA
	sta $CCCF.w		; 8D CF CC
	sbc ($FF.b),Y		; F1 FF
	sta ($A0.b,S),Y		; 93 A0
	stx $20.b,Y		; 96 20
	sed		; F8
	phd		; 0B
	ora $20.b,X		; 15 20
	sed		; F8
	ora $BFFD.w		; 0D FD BF
	eor $4BFC.w,X		; 5D FC 4B
	pha		; 48
	ora $8C0F0C.l		; 0F 0C 0F 8C
	cop $F3.b		; 02 F3
	jmp $F100.w		; 4C 00 F1
	ldy $E04B.w,X		; BC 4B E0
	sbc ($63.b,S),Y		; F3 63
	brk $DA.b		; 00 DA
	sbc ($4F.b)		; F2 4F
	jsr ($5CBF.w,X)		; FC BF 5C
	mvp $10,$88		; 44 88 10
	jmp $4268.w		; 4C 68 42
	sbc ($40.b)		; F2 40
	ora ($0A.b),Y		; 11 0A
	pha		; 48
	jsr ($7F4C.w,X)		; FC 4C 7F
.ACCU 16
.INDEX 16
	rep #$F7		; C2 F7
	stx $A0.b		; 86 A0
	jsr ($FE48.w,X)		; FC 48 FE
	sei		; 78
	lsr A		; 4A
	ora $FC.b		; 05 FC
	pha		; 48
	sed		; F8
	ora #$6C3A.w		; 09 3A 6C
	ldx #$60FC.w		; A2 FC 60
	sbc ($20.b),Y		; F1 20
	sbc ($41.b,X)		; E1 41
	rts		; 60

	plx		; FA
	ora $000E.w		; 0D 0E 00
	sbc ($68.b,S),Y		; F3 68
	and $D8.b,S		; 23 D8
	jsr $61E2.w		; 20 E2 61
	nop		; EA
	ldy $00.b		; A4 00
	sbc ($6B.b)		; F2 6B
	jsr $B6E6.w		; 20 E6 B6
	ora ($0C.b),Y		; 11 0C
	clc		; 18
	sbc $18.b,X		; F5 18
	jsr $8CE4.w		; 20 E4 8C
	jsr $D8E5.w		; 20 E5 D8
	stz $3806.w		; 9C 06 38
	dey		; 88
	sta $FA8880.l,X		; 9F 80 88 FA
	ora $0B40.w,X		; 1D 40 0B
	ldy #$C580.w		; A0 80 C5
	bra -58.b		; 80 C6
	sbc ($FC.b)		; F2 FC
	ora $02FE53.l,X		; 1F 53 FE 02
	lsr $5F15.w,X		; 5E 15 5F
	tax		; AA
	dey		; 88
	ora ($88.b,X)		; 01 88
	pha		; 48
	sed		; F8
	inc $82D0.w,X		; FE D0 82
	asl A		; 0A
	cop $F0.b		; 02 F0
	ldx #$F7C2.w		; A2 C2 F7
	ora $7A.b,X		; 15 7A
	tax		; AA
	plx		; FA
	eor $15.b,X		; 55 15
	inc $AA5A.w,X		; FE 5A AA
	jmp ($93E9.w)		; 6C E9 93
	ply		; 7A
	sbc ($40.b,X)		; E1 40
	brk $04.b		; 00 04
	rti		; 40

	bpl   0.b		; 10 00
	inc $10AB.w,X		; FE AB 10
	sbc ($FD.b),Y		; F1 FD
	asl A		; 0A
	rti		; 40

	eor $04.b,X		; 55 04
	tax		; AA
	bvc  85.b		; 50 55
	bpl -111.b		; 10 91
	phy		; 5A
	sbc $AA13F8.l,X		; FF F8 13 AA
	tax		; AA
	eor $0980.w,X		; 5D 80 09
	dec $E4.b,X		; D6 E4
	jmp $E0C6A3.l		; 5C A3 C6 E0
	ora $FCFF.w		; 0D FF FC
	jsr $D8F7.w		; 20 F7 D8
	sbc ($20.b)		; F2 20
	beq  10.b		; F0 0A
	stz $56.b		; 64 56
	cld		; D8
	sbc ($FC.b)		; F2 FC
	jmp ($08F1.w)		; 6C F1 08
	inc $A162.w,X		; FE 62 A1
	bit $08.b		; 24 08
	ora ($70.b),Y		; 11 70
	eor $FE.b,X		; 55 FE
.ACCU 16
.INDEX 16
	rep #$F4		; C2 F4
	cpx $3814.w		; EC 14 38
	inc $FCFE.w,X		; FE FE FC
	tax		; AA
	.db $82, $38, $FC		; 82 38 FC
	phx		; DA
	pei ($A0.b)		; D4 A0
	eor $FFA068.l,X		; 5F 68 A0 FF
	iny		; C8
	ldx $7F.b		; A6 7F
	ldy #$82FF.w		; A0 FF 82
	pei ($DF.b)		; D4 DF
	cpy #$0CE8.w		; C0 E8 0C
	sed		; F8
	cpy #$0DE8.w		; C0 E8 0D
	sed		; F8
	ora $87F14C.l		; 0F 4C F1 87
	bvs  30.b		; 70 1E
	rti		; 40

	asl A		; 0A
	rts		; 60

	jsr ($FE1A.w,X)		; FC 1A FE
	rts		; 60

	inc A		; 1A
	cpy #$8241.w		; C0 41 82
	cpy #$FEF2.w		; C0 F2 FE
	rol $FAF2.w,X		; 3E F2 FA
	cpy #$108F.w		; C0 8F 10
	cli		; 58
	brk $7A.b		; 00 7A
	cop $5A.b		; 02 5A
	inc $52FA.w,X		; FE FA 52
	ldx $D7.b,Y		; B6 D7
	plx		; FA
	asl $73.b		; 06 73
	phb		; 8B
	and #$FEFA.w		; 29 FA FE
	sbc $FB00FE.l,X		; FF FE 00 FB
	cpx #$E6E9.w		; E0 E9 E6
	sbc #$4D78.w		; E9 78 4D
	iny		; C8
	jsr ($1B1C.w,X)		; FC 1C 1B
	trb $DAE0.w		; 1C E0 DA
	cpx #$CBEA.w		; E0 EA CB
	tsx		; BA
	rtl		; 6B

	tax		; AA
	ror $F2.b		; 66 F2
	cpx #$C1DD.w		; E0 DD C1
	ora ($9C.b,S),Y		; 13 9C
	nop		; EA
	sbc $35.b		; E5 35
	txs		; 9A
	sbc #$DBE0.w		; E9 E0 DB
	cmp ($23.b,S),Y		; D3 23
	jsr ($EB9C.w,X)		; FC 9C EB
	sbc $82.b,X		; F5 82
	ldy $014B.w,X		; BC 4B 01
	bpl  64.b		; 10 40
	eor $25FFFF.l		; 4F FF FF 25
	bcc  64.b		; 90 40
	eor $8585.w		; 4D 85 85
	eor $C5.b		; 45 C5
	ora $E7.b		; 05 E7
	ora [$5E.b]		; 07 5E
	eor $5F.b,X		; 55 5F
	tax		; AA
	ply		; 7A
	sbc $DF55FF.l,X		; FF FF 55 DF
	tax		; AA
	phx		; DA
	eor [$DA.b],Y		; 57 DA
	lda $F8FFDA.l,X		; BF DA FF F8
	sbc $F8022A.l,X		; FF 2A 02 F8
	tax		; AA
	asl A		; 0A
	and $C8027C.l,X		; 3F 7C 02 C8
	phb		; 8B
	bra -125.b		; 80 83
	tay		; A8
	plb		; AB
	inc $A3A0.w,X		; FE A0 A3
	plx		; FA
	eor $52.b,X		; 55 52
	and $F1483C.l		; 2F 3C 48 F1
	adc ($BF.b,S),Y		; 73 BF
	tda		; 7B
	cli		; 58
	bit #$5BFE.w		; 89 FE 5B
	sbc $881000.l,X		; FF 00 10 88
	sbc $CBFF.w		; ED FF CB
	cmp #$04FD.w		; C9 FD 04
	lda ($C3.b)		; B2 C3
	bpl  76.b		; 10 4C
	sbc ($08.b),Y		; F1 08
	tax		; AA
	tax		; AA
	eor $C2F1B1.l,X		; 5F B1 F1 C2
	lda $2B63.w,Y		; B9 63 2B
	sbc $4C0FF8.l,X		; FF F8 0F 4C
	sbc ($7F.b)		; F2 7F
	dey		; 88
	ora $09C888.l		; 0F 88 C8 09
	tax		; AA
	cmp ($F8.b)		; D2 F8
	sbc $F8F1.w,X		; FD F1 F8
	ora #$EE28.w		; 09 28 EE
	cld		; D8
	sbc $A0.b,X		; F5 A0
	xba		; EB
	jsr ($FEFE.w,X)		; FC FE FE
	adc $005B1F.l		; 6F 1F 5B 00
	lda $403E40.l,X		; BF 40 3E 40
	tax		; AA
	cpx $3A.b		; E4 3A
	ldx $C0F2.w,Y		; BE F2 C0
	rti		; 40

	beq  15.b		; F0 0F
	phd		; 0B
	eor ($C0.b,X)		; 41 C0
	beq  12.b		; F0 0C
	cop $C0.b		; 02 C0
	beq  13.b		; F0 0D
	inc $BEFB.w,X		; FE FB BE
	lsr $E9.b		; 46 E9
	eor $87.b,X		; 55 87
	dex		; CA
	sbc ($A0.b,X)		; E1 A0
	sbc $A0FCAA.l,X		; FF AA FC A0
	sed		; F8
	ora #$F608.w		; 09 08 F6
	eor $BE01.w,Y		; 59 01 BE
	eor ($20.b,X)		; 41 20
	tad		; 5B
	ora $FE.b,S		; 03 FE
	.db $42, $F6		; 42 F6
	plx		; FA
	rep #$00		; C2 00
	nop		; EA
	inc $FE8E.w,X		; FE 8E FE
	clc		; 18
	sta $D510F1.l,X		; 9F F1 10 D5
	adc $C0.b,S		; 63 C0
	bmi  -7.b		; 30 F9
	cmp ($22.b),Y		; D1 22
.ACCU 8
	sep #$20		; E2 20
	cpx #$7B0B.w		; E0 0B 7B
	ora $53.b,S		; 03 53
	inc $275F.w,X		; FE 5F 27
	cmp ($A5.b)		; D2 A5
	ora ($57.b),Y		; 11 57
	ora $FE.b,S		; 03 FE
	cpy $189B.w		; CC 9B 18
	phd		; 0B
	rts		; 60

	xba		; EB
	sty $884B.w		; 8C 4B 88
	jsr ($10FE.w,X)		; FC FE 10
	bra 102.b		; 80 66
	inx		; E8
	ora #$EF.b		; 09 EF
	rti		; 40

	inc $0090.w,X		; FE 90 00
	sbc ($39.b,X)		; E1 39
	iny		; C8
	nop		; EA
	sbc ($19.b,X)		; E1 19
	jsr ($F813.w,X)		; FC 13 F8
	inc $0101.w,X		; FE 01 01
	.db $82, $FC, $FE		; 82 FC FE
	inc $0001.w,X		; FE 01 00
	cmp $2F040F.l		; CF 0F 04 2F
	sbc $0FCF2F.l		; EF 2F CF 0F
	jsr ($F0FE.w,X)		; FC FE F0
	mvp $FE,$82		; 44 82 FE
	beq  -1.b		; F0 FF
	bne  -1.b		; D0 FF
	jsr ($FA54.w,X)		; FC 54 FA
	inc $ACA0.w,X		; FE A0 AC
	lsr A		; 4A
	sbc ($FE.b),Y		; F1 FE
	sed		; F8
	xce		; FB
	sbc [$E3.b],Y		; F7 E3
	sta $B4.b,S		; 83 B4
	ora [$03.b],Y		; 17 03
	ora [$7E.b]		; 07 7E
	stx $FE11.w		; 8E 11 FE
	ora [$FF.b]		; 07 FF
	rts		; 60

	bpl 110.b		; 10 6E
	txa		; 8A
	inc $F14C.w,X		; FE 4C F1
	cop $FC.b		; 02 FC
	bne -62.b		; D0 C2
	lda ($50.b),Y		; B1 50
	sbc $80FE.w,X		; FD FE 80
	ldy $B1.b		; A4 B1
	jsr ($2581.w,X)		; FC 81 25
	asl A		; 0A
	lsr $51.b,X		; 56 51
	sbc $192050.l		; EF 50 20 19
	bvc -72.b		; 50 B8
	asl A		; 0A
	eor $49FABB.l		; 4F BB FA 49
	sbc $55.b,X		; F5 55
	ply		; 7A
	rti		; 40

	ldy $FCF1.w,X		; BC F1 FC
	plp		; 28
	xba		; EB
	pla		; 68
	sbc ($FE.b),Y		; F1 FE
	tas		; 1B
	cmp ($19.b,X)		; C1 19
	sbc ($B5.b,X)		; E1 B5
	inc A		; 1A
	tax		; AA
	pea $F4DA.w		; F4 DA F4
	cld		; D8
	sbc ($3A.b)		; F2 3A
	cpy #$0EF0.w		; C0 F0 0E
	rti		; 40

	beq  15.b		; F0 0F
	cpy #$5BF4.w		; C0 F4 5B
	sty $59.b,X		; 94 59
	jsr ($F0C0.w,X)		; FC C0 F0
	tsb $F0BE.w		; 0C BE F0
	ora #$A0.b		; 09 A0
	ldy $FCB8.w,X		; BC B8 FC
	bit #$60.b		; 89 60
	ldx #$0BF8.w		; A2 F8 0B
	ldy #$C2C0.w		; A0 C0 C2
	adc ($03.b,S),Y		; 73 03
	eor $FA.b,X		; 55 FA
	clv		; B8
	inc $FEC0.w,X		; FE C0 FE
	inc $CCFE.w,X		; FE FE CC
	sbc ($FE.b)		; F2 FE
	bcc  64.b		; 90 40
	sta $43.b,S		; 83 43
	xba		; EB
	sbc ($AF.b,X)		; E1 AF
	adc $75AB7F.l		; 6F 7F AB 75
	tsa		; 3B
	and $03.b,S		; 23 03
	bne  63.b		; D0 3F
	adc ($07.b),Y		; 71 07
	ora $08.b,S		; 03 08
	ora $FAFE17.l		; 0F 17 FE FA
	brk $02.b		; 00 02
	inx		; E8
	nop		; EA
	and $FEA8.w,X		; 3D A8 FE
	jsr ($80A0.w,X)		; FC A0 80
	ora #$07.b		; 09 07
	ora [$FF.b],Y		; 17 FF
	inc $8168.w,X		; FE 68 81
	cmp $5CF4.w,Y		; D9 F4 5C
	bmi -89.b		; 30 A7
	lda #$FE.b		; A9 FE
	rti		; 40

	sed		; F8
	sbc $BEFE.w,X		; FD FE BE
	sbc ($FF.b)		; F2 FF
	cpx $22.b		; E4 22
	cpy #$FF01.w		; C0 01 FF
	cop $CD.b		; 02 CD
	lda ($FE.b)		; B2 FE
	php		; 08
	ora $F8.b		; 05 F8
	sbc [$FC.b],Y		; F7 FC
	lda $99BE01.l		; AF 01 BE 99
	inc $0000.w,X		; FE 00 00
	cpy #$CC88.w		; C0 88 CC
	jsr ($0018.w,X)		; FC 18 00
	dey		; 88
	adc $FEFC2F.l		; 6F 2F FC FE
	sty $48.b		; 84 48
	sbc $C8FCA2.l,X		; FF A2 FC C8
	bne -60.b		; D0 C4
	and $07FE0C.l,X		; 3F 0C FE 07
	cop $17.b		; 02 17
	cop $10.b		; 02 10
	cop $88.b		; 02 88
	cpx $58EE.w		; EC EE 58
	dey		; 88
	jsr ($FCFE.w,X)		; FC FE FC
	sty $FC.b		; 84 FC
	iny		; C8
	ora ($A4.b,S),Y		; 13 A4
	ldx #$FEC4.w		; A2 C4 FE
	sty $FD.b		; 84 FD
	dey		; 88
	jsr ($FE82.w,X)		; FC 82 FE
	iny		; C8
	tax		; AA
	tax		; AA
	.db $82, $FC, $7E		; 82 FC 7E
	sbc ($FF.b,X)		; E1 FF
	sed		; F8
	ora ($9F.b,S),Y		; 13 9F
	beq  10.b		; F0 0A
	mvp $5C,$F2		; 44 F2 5C
	jsr ($FDFF.w,X)		; FC FF FD
	lsr $F3.b		; 46 F3
	and $F8FEA8.l,X		; 3F A8 FE F8
	ora #$31.b		; 09 31
	sbc ($11.b,X)		; E1 11
	cmp ($31.b,X)		; C1 31
	cmp ($FC.b,X)		; C1 FC
	inc $60FE.w,X		; FE FE 60
	beq  15.b		; F0 0F
	tsb $4A.b		; 04 4A
	cpy #$09F0.w		; C0 F0 09
	sec		; 38
	jsr ($F8E0.w,X)		; FC E0 F8
	ora $50F6C0.l		; 0F C0 F6 50
	eor $38.b,X		; 55 38
	inc $EC03.w,X		; FE 03 EC
	tad		; 5B
	inc $0BF8.w,X		; FE F8 0B
	php		; 08
	inc $FE.b,X		; F6 FE
	inc $F8E0.w,X		; FE E0 F8
	ora $08A095.l		; 0F 95 A0 08
	inc $B8.b,X		; F6 B8
	inc $F8E0.w,X		; FE E0 F8
	ora $C0FE8C.l		; 0F 8C FE C0
	inc A		; 1A
	eor ($18.b),Y		; 51 18
	cmp $FCFE.w,Y		; D9 FE FC
	cpx #$0FF8.w		; E0 F8 0F
	ora ($8C.b,S),Y		; 13 8C
	inc $5B10.w,X		; FE 10 5B
	adc ($FA.b)		; 72 FA
	inc $F8E0.w,X		; FE E0 F8
	ora $FE807F.l		; 0F 7F 80 FE
	and $C03BC0.l,X		; 3F C0 3B C0
	clv		; B8
	eor [$3A.b],Y		; 57 3A
	inc $E018.w,X		; FE 18 E0
	ldx $D0F4.w,Y		; BE F4 D0
	brk $DC.b		; 00 DC
	sec		; 38
	inc $57.b		; E6 57
	pea $528E.w		; F4 8E 52
	inc $FE5F.w,X		; FE 5F FE
	inx		; E8
	inc $B4.b,X		; F6 B4
	sbc $15.b,S		; E3 15
	and $C0.b,S		; 23 C0
	sbc #$86.b		; E9 86
	sed		; F8
	ora #$80.b		; 09 80
	sed		; F8
	ora $A2.b,X		; 15 A2
	cpy #$13FE.w		; C0 FE 13
	bcc -102.b		; 90 9A
	inc $DAA4.w,X		; FE A4 DA
	stz $F5.b		; 64 F5
	plx		; FA
	jsr ($8AFE.w,X)		; FC FE 8A
	sbc $03.b,X		; F5 03
	sed		; F8
	sbc $F8FDA2.l,X		; FF A2 FD F8
	inc $4191.w,X		; FE 91 41
	sta $2A.b		; 85 2A
	sta ($41.b,X)		; 81 41
	jsr ($FEFE.w,X)		; FC FE FE
	cmp ($20.b,X)		; C1 20
	rts		; 60

	bpl -121.b		; 10 87
	lda ($83.b),Y		; B1 83
	lda ($AB.b)		; B2 AB
	and $FC.b,S		; 23 FC
	adc ($B1.b,S),Y		; 73 B1
	sta $80D3.w		; 8D D3 80
	beq  12.b		; F0 0C
	ora ($17.b,X)		; 01 17
	inc $DA54.w,X		; FE 54 DA
	lda #$13.b		; A9 13
	brk $F8.b		; 00 F8
	asl $E6.b,X		; 16 E6
	beq   9.b		; F0 09
	sty $5456.w		; 8C 56 54
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	tsb $D0FF.w		; 0C FF D0
	cop $AB.b		; 02 AB
	eor $70.b,X		; 55 70
	ldy #$50.b		; A0 50
	bra 112.b		; 80 70
	bra  -4.b		; 80 FC
	bne -20.b		; D0 EC
	sbc ($6B.b),Y		; F1 6B
	sta $852A7A.l,X		; 9F 7A 2A 85
	stz $63.b		; 64 63
	inc $D5FE.w,X		; FE FE D5
	inc $C9.b,X		; F6 C9
	eor ($04.b,S),Y		; 53 04
	eor [$00.b],Y		; 57 00
	inc $FEFD.w,X		; FE FD FE
	ora [$00.b]		; 07 00
	ora ($00.b)		; 12 00
	lda $52A8.w,X		; BD A8 52
	bvc -32.b		; 50 E0
	sed		; F8
	asl A		; 0A
	ora $57.b		; 05 57
	tax		; AA
	lda $55383E.l		; AF 3E 38 55
	inc $F0.b		; E6 F0
	ora #$95.b		; 09 95
	ora $6A.b,X		; 15 6A
	rol A		; 2A
	jsr ($F8E0.w,X)		; FC E0 F8
	ora #$EA.b		; 09 EA
	eor $80.b,X		; 55 80
	phb		; 8B
	cpy #$FC.b		; C0 FC
	sty $F8.b		; 84 F8
	phd		; 0B
	lda #$A8.b		; A9 A8
	bra  -8.b		; 80 F8
	asl A		; 0A
	brk $EA.b		; 00 EA
	sty $C0.b		; 84 C0
	jsr ($FEF0.w,X)		; FC F0 FE
	ora ($C6.b),Y		; 11 C6
	bcs  -1.b		; B0 FF
	tax		; AA
	bra  42.b		; 80 2A
	cpy #$A4.b		; C0 A4
	jsr ($F8E0.w,X)		; FC E0 F8
	ora $0FB8DE.l		; 0F DE B8 0F
	ldx #$F6.b		; A2 F6
	tay		; A8
	pld		; 2B
	sbc $FCFE.w,X		; FD FE FC
	ldx #$F6.b		; A2 F6
	dey		; 88
	inc $01C3.w,X		; FE C3 01
	inc $2EFD.w,X		; FE FD 2E
	lda #$29.b		; A9 29
	tax		; AA
	inc $F0E0.w,X		; FE E0 F0
	ora $FEEBA1.l		; 0F A1 EB FE
	jsr $17F0.w		; 20 F0 17
	cpy #$F0.b		; C0 F0
	phd		; 0B
	tsx		; BA
	beq -55.b		; F0 C9
	and #$CB.b		; 29 CB
	jmp ($F8FE.w)		; 6C FE F8
	asl A		; 0A
	dex		; CA
	asl A		; 0A
	php		; 08
	jsr ($D5FC.w,X)		; FC FC D5
	eor $2A.b,X		; 55 2A
	wai		; CB
	bpl  34.b		; 10 22
	dec $57.b,X		; D6 57
	pha		; 48
	eor ($08.b,X)		; 41 08
	jsr ($27AA.w,X)		; FC AA 27
	sta $57A8FC.l,X		; 9F FC A8 57
	tsb $FEFC.w		; 0C FC FE
	ldy $AC24.w		; AC 24 AC
	jmp ($E8FC.w,X)		; 7C FC E8
	tsb $FEFC.w		; 0C FC FE
	eor ($AF.b,S),Y		; 53 AF
	ora $FF.b,S		; 03 FF
	ply		; 7A
	cpy $FC.b		; C4 FC
	inc $A01F.w,X		; FE 1F A0
	cmp $3F.b,S		; C3 3F
	inc $FCC4.w,X		; FE C4 FC
	jsr ($E0FC.w,X)		; FC FC E0
	sbc $3FADFE.l,X		; FF FE AD 3F
	bit $42A8.w,X		; 3C A8 42
	rti		; 40

	lda $56AC.w,Y		; B9 AC 56
	bvc  -4.b		; 50 FC
	mvn $FC,$50		; 54 50 FC
	sed		; F8
	rti		; 40

	jmp $C8FE.w		; 4C FE C8
	lda $EBAFC4.l,X		; BF C4 AF EB
	ora $0757FC.l,X		; 1F FC 57 07
	inc A		; 1A
	cmp ($88.b),Y		; D1 88
	jsr ($54D5.w,X)		; FC D5 54
	rol A		; 2A
	rol A		; 2A
	adc $4A7D7E.l		; 6F 7E 7D 4A
	asl $76FE.w,X		; 1E FE 76
	dey		; 88
	jsr ($5EFC.w,X)		; FC FC 5E
	jmp.w [$A0A9]		; DC A9 A0
	asl $C3.b,X		; 16 C3
	eor $840684.l,X		; 5F 84 06 84
	bit $78BC.w		; 2C BC 78
	bit $7CFC.w		; 2C FC 7C
	ldy $F884.w,X		; BC 84 F8
	phd		; 0B
	sbc ($F5.b)		; F2 F5
	inc $F3BB.w,X		; FE BB F3
	jsr $20AA.w		; 20 AA 20
	brk $FE.b		; 00 FE
	sbc $F28C.w,X		; FD 8C F2
	cpx #$AA.b		; E0 AA
	jmp $E0AA.w		; 4C AA E0
	sty $FE.b		; 84 FE
	dey		; 88
	beq  23.b		; F0 17
	sbc $F0E0F6.l,X		; FF F6 E0 F0
	tsb $D072.w		; 0C 72 D0
	inc $12F8.w,X		; FE F8 12
	dey		; 88
	inc $FE.b,X		; F6 FE
	tsb $FE.b		; 04 FE
	cpy #$F0.b		; C0 F0
	ora $E3F688.l		; 0F 88 F6 E3
	inc $C1.b		; E6 C1
	ora ($81.b,X)		; 01 81
	inc $0980.w,X		; FE 80 09
	inx		; E8
	inc $FEFE.w,X		; FE FE FE
	inc $F6FB.w,X		; FE FB F6
	clv		; B8
	sbc $C38083.l,X		; FF 83 80 C3
	iny		; C8
	eor $C0.b,S		; 43 C0
	eor ($D0.b,S),Y		; 53 D0
	dey		; 88
	sbc [$00.b]		; E7 00
	and [$00.b],Y		; 37 00
	tsa		; 3B
	plp		; 28
	and $642F00.l,X		; 3F 00 2F 64
	cpx #$0C.b		; E0 0C
	cpx #$20.b		; E0 20
	inc $F040.w,X		; FE 40 F0
	bpl  76.b		; 10 4C
	sbc ($95.b),Y		; F1 95
	sty $FE.b		; 84 FE
	ora [$3E.b]		; 07 3E
	sbc #$FE.b		; E9 FE
	cpx #$F8.b		; E0 F8
	ora $87C38C.l		; 0F 8C C3 87
	bcc  17.b		; 90 11
	bra -122.b		; 80 86
	ora #$82.b		; 09 82
	ora $8B.b,S		; 03 8B
	pld		; 2B
	pea $1721.w		; F4 21 17
	bit #$09.b		; 89 09
	sty $88EE.w		; 8C EE 88
	jsr ($B1B8.w,X)		; FC B8 B1
	stx $87.b		; 86 87
	sed		; F8
	sbc [$01.b],Y		; F7 01
	sty $C443.w		; 8C 43 C4
	sta ($90.b,S),Y		; 93 90
	plx		; FA
	adc $C0C328.l,X		; 7F 28 C3 C0
	ora ($C8.b,X)		; 01 C8
	adc ($E0.b,X)		; 61 E0
	ora [$C6.b]		; 07 C6
	sty $6C3B.w		; 8C 3B 6C
	lda $3C00.w,Y		; B9 00 3C
	plx		; FA
	inc $1F80.w,X		; FE 80 1F
	brk $39.b		; 00 39
	cop $31.b		; 02 31
	rts		; 60

	sty $82FE.w		; 8C FE 82
	inc $5D4B.w,X		; FE 4B 5D
	xce		; FB
	ldx $57.b		; A6 57
	inc $F4FC.w,X		; FE FC F4
	tax		; AA
	dey		; 88
	inc $AACA.w,X		; FE CA AA
	plx		; FA
	cmp #$F0.b		; C9 F0
	ora #$00.b		; 09 00
	sbc [$00.b]		; E7 00
	bvs 120.b		; 70 78
	sta [$EA.b]		; 87 EA
	ora $07.b		; 05 07
	tax		; AA
	sty $8A.b		; 84 8A
	pld		; 2B
	sta $03.b,S		; 83 03
	sed		; F8
	ora [$88.b]		; 07 88
	lda $27.b,S		; A3 27
	phb		; 8B
	phd		; 0B
	cmp [$53.b],Y		; D7 53
	and ($2F.b,X)		; 21 2F
	sty $FE18.w		; 8C 18 FE
	dey		; 88
	sbc $8801.w,X		; FD 01 88
	cmp $F501.w,Y		; D9 01 F5
	ora ($A9.b,X)		; 01 A9
	eor $FF.b,X		; 55 FF
	sbc ($D1.b,X)		; E1 D1
	plb		; AB
	eor $40.b,S		; 43 40
	sta $C8.b,S		; 83 C8
	lda $E0.b,S		; A3 E0
	stx $C4.b		; 86 C4
	jsr ($E0A0.w,X)		; FC A0 E0
	cmp $84D6E0.l		; CF E0 D6 84
	dey		; 88
	inx		; E8
	lda $BE7C88.l,X		; BF 88 7C BE
	lda $5782.w,Y		; B9 82 57
	eor $D5AB.w,Y		; 59 AB D5
	sta [$AA.b],Y		; 97 AA
	sty $F8.b,X		; 94 F8
	ora #$69.b		; 09 69
	pea $FC78.w		; F4 78 FC
	inc $F23A.w,X		; FE 3A F2
	eor $94.b,X		; 55 94
	cpx #$F8.b		; E0 F8
	bpl -100.b		; 10 9C
	ldy #$0F.b		; A0 0F
	plp		; 28
	inc $FFFE.w		; EE FE FF
	beq  76.b		; F0 4C
	inc $FFCE.w,X		; FE CE FF
	inc $04C3.w,X		; FE C3 04
	sta $FE.b,S		; 83 FE
	lda [$30.b],Y		; B7 30
	lda $38AF38.l,X		; BF 38 AF 38
	sta $38E096.l		; 8F 96 E0 38
	lda ($FE.b)		; B2 FE
	cmp $FE9180.l		; CF 80 91 FE
	rti		; 40

	bcc  16.b		; 90 10
	and $038243.l,X		; 3F 43 82 03
	sta $0B.b,S		; 83 0B
	sta ($01.b,X)		; 81 01
	phb		; 8B
	sec		; 38
	rti		; 40

	sbc $C4E9E1.l		; EF E1 E9 C4
	sbc ($44.b),Y		; F1 44
	sbc $01D501.l,X		; FF 01 D5 01
	sec		; 38
	sta $80.b,S		; 83 80
	sbc $C4433F.l,X		; FF 3F 43 C4
	eor ($50.b,S),Y		; 53 50
	ora $C0.b,S		; 03 C0
	eor $C0.b,S		; 43 C0
	sta ($C8.b,X)		; 81 C8
	lda ($E0.b,X)		; A1 E0
	sta $C4.b		; 85 C4
	adc $449FF6.l,X		; 7F F6 9F 44
	lda $B7F3C0.l		; AF C0 F3 B7
	bra -97.b		; 80 9F
	bra -69.b		; 80 BB
	bra -31.b		; 80 E1
	and ($FE.b,X)		; 21 FE
	cmp [$FE.b],Y		; D7 FE
	cpx #$29.b		; E0 29
	cpx #$01.b		; E0 01
	beq  16.b		; F0 10
	sep #$03		; E2 03
	sbc $0B.b,S		; E3 0B
	php		; 08
	inc $B8.b,X		; F6 B8
	inc $C07F.w,X		; FE 7F C0
	sta [$80.b]		; 87 80
	cmp [$C8.b]		; C7 C8
	eor [$C0.b]		; 47 C0
	eor [$D0.b],Y		; 57 D0
	sed		; F8
	plx		; FA
	phd		; 0B
	rti		; 40

	bvc   7.b		; 50 07
	cpy #$08.b		; C0 08
	inc $F8.b,X		; F6 F8
	plx		; FA
	sbc $A3B87F.l		; EF 7F B8 A3
	and [$A1.b]		; 27 A1
	pld		; 2B
	iny		; C8
	sbc ($D7.b)		; F2 D7
	adc [$A1.b],Y		; 77 A1
	lda $AB5F5F.l		; AF 5F 5F AB
	lda $FFE8D9.l		; AF D9 E8 FF
	dey		; 88
	pld		; 2B
	iny		; C8
	sbc ($89.b)		; F2 89
	eor $51.b,X		; 55 51
	plb		; AB
	lda ($55.b,X)		; A1 55
	eor ($AB.b,S),Y		; 53 AB
	stz $4F.b,X		; 74 4F
	sbc $EA8BB4.l,X		; FF B4 8B EA
	pei ($84.b)		; D4 84
	jsr ($EA8A.w,X)		; FC 8A EA
	cmp $C5.b,X		; D5 C5
	dex		; CA
	plx		; FA
	phd		; 0B
	and $9555FE.l		; 2F FE 55 95
	tax		; AA
	plb		; AB
	cmp $FC.b,X		; D5 FC
	jsr ($EAEF.w,X)		; FC EF EA
	ldx $14.b,Y		; B6 14
	eor #$08.b		; 49 08
	sbc $F1.b,S		; E3 F1
	lda ($10.b)		; B2 10
	eor $45FC.w		; 4D FC 45
	brk $BA.b		; 00 BA
	jsr ($55E8.w,X)		; FC E8 55
	and ($47.b,X)		; 21 47
	pea $FCAA.w		; F4 AA FC
	beq  -4.b		; F0 FC
	cpx #$FC.b		; E0 FC
	adc ($7C.b,S),Y		; 73 7C
	ora ($EC.b),Y		; 11 EC
	eor $A2DC.w,X		; 5D DC A2
	pea $5507.w		; F4 07 55
	ora [$AA.b]		; 07 AA
	dec A		; 3A
	.db $82, $FC, $0F		; 82 FC 0F
	eor $17.b,X		; 55 17
	jsr ($29F8.w,X)		; FC F8 29
	bit $FC88.w		; 2C 88 FC
	lda #$84.b		; A9 84
	sta $AFA7FC.l		; 8F FC A7 AF
	dey		; 88
	jsr ($B00C.w,X)		; FC 0C B0
	jsr ($57A3.w,X)		; FC A3 57
	sty $FC.b		; 84 FC
	eor [$AF.b],Y		; 57 AF
	and $F24CBC.l,X		; 3F BC 4C F2
	cmp [$85.b],Y		; D7 85
	iny		; C8
	sed		; F8
	cmp [$D5.b],Y		; D7 D5
	jsr ($E5F7.w,X)		; FC F7 E5
	cmp $F00FEF.l		; CF EF 0F F0
	jmp $AAF2.w		; 4C F2 AA
	cmp $C7.b,X		; D5 C7
	nop		; EA
	sty $FC.b		; 84 FC
	dex		; CA
	cmp $D0.b,X		; D5 D0
	tax		; AA
	lda $EF.b,X		; B5 EF
	stz $18.b,X		; 74 18
	phd		; 0B
	txs		; 9A
	sep #$4C		; E2 4C
	sbc ($FC.b)		; F2 FC
	sed		; F8
	asl A		; 0A
	sbc $0FF8E0.l,X		; FF E0 F8 0F
	eor ($18.b,X)		; 41 18
	asl $FEFF.w		; 0E FF FE
	sta $0BF054.l,X		; 9F 54 F0 0B
	inc $13F8.w,X		; FE F8 13
	sta [$30.b],Y		; 97 30
	sta $280F18.l		; 8F 18 0F 28
	and [$38.b]		; 27 38
	and $1B3738.l		; 2F 38 37 1B
.ACCU 16
.INDEX 16
	rep #$FE		; C2 FE
	cmp $D7E986.l		; CF 86 E9 D7
	jsr ($FE20.w,X)		; FC 20 FE
	sbc [$E4.b],Y		; F7 E4
	sbc $88FE30.l,X		; FF 30 FE 88
	nop		; EA
	sta $07.b,S		; 83 07
	phb		; 8B
	ora $0B2383.l		; 0F 83 23 0B
	ora $11FB0B.l		; 0F 0B FB 11
	phd		; 0B
	ora $07.b,S		; 03 07
	dey		; 88
	nop		; EA
	sbc $F101.w,Y		; F9 01 F1
	ora ($DD.b,X)		; 01 DD
	jsr ($A61E.w,X)		; FC 1E A6
	inc $FB.b,X		; F6 FB
	ora $A1.b,S		; 03 A1
	cpx #$81FE.w		; E0 FE 81
	bne  -4.b		; D0 FC
	lda $E0A0FD.l,X		; BF FD A0 E0
	cpy #$E0D0.w		; C0 D0 E0
	beq -97.b		; F0 9F
	lsr A		; 4A
	sbc ($AF.b),Y		; F1 AF
	jsr ($EFFD.w,X)		; FC FD EF
	cpy #$C0CF.w		; C0 CF C0
	sbc $01E111.l,X		; FF 11 E1 01
	xba		; EB
	phd		; 0B
	sbc $03.b,S		; E3 03
	sbc #$E309.w		; E9 09 E3
	ora [$F8.b]		; 07 F8
	lsr $C1.b		; 46 C1
	jsr ($FF0F.w,X)		; FC 0F FF
	dex		; CA
	php		; 08
	sbc ($BC.b)		; F2 BC
	clv		; B8
	jsr ($C07F.w,X)		; FC 7F C0
	eor [$C0.b]		; 47 C0
	sta [$C8.b]		; 87 C8
	lda [$E0.b]		; A7 E0
	sta [$C0.b]		; 87 C0
	jsr ($60FA.w,X)		; FC FA 60
	pea $FCD0.w		; F4 D0 FC
	php		; 08
	pea $FCBF.w		; F4 BF FC
	ldy $5FFC.w,X		; BC FC 5F
	eor $AF805E.l,X		; 5F 5E 80 AF
	iny		; C8
	sbc ($B7.b),Y		; F1 B7
	lda $590EF7.l,X		; BF F7 0E 59
	jsr ($C2FE.w,X)		; FC FE C2
.ACCU 16
	rep #$A7		; C2 A7
	cpy $FCF1.w		; CC F1 FC
	eor [$BF.b]		; 47 BF
	bit $DA.b		; 24 DA
	inc $7F47.w,X		; FE 47 7F
	inc A		; 1A
	sbc $CFD5D5.l,X		; FF D5 D5 CF
	sbc $DFEFDF.l,X		; FF DF EF DF
	jsr ($FFEF.w,X)		; FC EF FF
	ora $EAFEFA.l		; 0F FA FE EA
	cmp $C0.b,X		; D5 C0
	bit #$B5C4.w		; 89 C4 B5
	rts		; 60

	phx		; DA
	lda ($10.b)		; B2 10
	asl $FF.b,X		; 16 FF
	brk $1C.b		; 00 1C
	asl $1B1F.w,X		; 1E 1F 1B
	ora $1E1F.w,X		; 1D 1F 1E
	asl $1F.b,X		; 16 1F
	jsr ($A08D.w,X)		; FC 8D A0
	inc $CCE8.w,X		; FE E8 CC
	sbc ($E2.b),Y		; F1 E2
	inx		; E8
	jsr ($FCFE.w,X)		; FC FE FC
	inx		; E8
	lda $FF5163.l		; AF 63 51 FF
	cmp ($0B.b),Y		; D1 0B
	bra -32.b		; 80 E0
	rts		; 60

	inx		; E8
	sed		; F8
	ora [$CA.b]		; 07 CA
	cmp ($11.b,S),Y		; D3 11
	lda ($A2.b)		; B2 A2
	inc $8EC7.w,X		; FE C7 8E
	sbc $AA86B7.l,X		; FF B7 86 AA
	tax		; AA
	inc $E2FC.w,X		; FE FC E2
	sed		; F8
	ora #$FCFE.w		; 09 FE FC
	dey		; 88
	inc $FEFE.w,X		; FE FE FE
	dey		; 88
	inc $FEFE.w,X		; FE FE FE
	sta $B0.b		; 85 B0
	ora $E4FFFA.l		; 0F FA FF E4
	sed		; F8
	phd		; 0B
	cpx #$13F8.w		; E0 F8 13
	adc $F30FD8.l,X		; 7F D8 0F F3
	cmp $CF20CE.l		; CF CE 20 CF
	txa		; 8A
	eor $CF.b,X		; 55 CF
	bra  84.b		; 80 54
	xba		; EB
	bne -65.b		; D0 BF
	brk $F8.b		; 00 F8
	ora $5E.b,X		; 15 5E
	and ($AA.b),Y		; 31 AA
	eor $DF.b,X		; 55 DF
	jsr $10EF.w		; 20 EF 10
	eor $F0.b,X		; 55 F0
	sbc $F8D13C.l,X		; FF 3C D1 F8
	lda $3BCD50.l		; AF 50 CD 3B
	php		; 08
	.db $82, $20, $00		; 82 20 00
	adc $00.b,X		; 75 00
	sta $4044C3.l,X		; 9F C3 44 40
	stx $F804.w		; 8E 04 F8
	eor $31.b,X		; 55 31
	cpx #$FC30.w		; E0 30 FC
	cpx $FC.b		; E4 FC
	ldx $FC51.w		; AE 51 FC
	tyx		; BB
	mvp $73,$BC		; 44 BC 73
	cmp $FF.b,S		; C3 FF
	sta [$49.b]		; 87 49
	jsl $62D503.l		; 22 03 D5 62
	sta $8802D0.l		; 8F D0 02 88
	and ($20.b),Y		; 31 20
	eor $B0FFD7.l,X		; 5F D7 FF B0
	brk $EB.b		; 00 EB
	trb $57.b		; 14 57
	tay		; A8
	nop		; EA
	ora $D5.b,X		; 15 D5
	rol A		; 2A
	jmp.w [$8A75]		; DC 75 8A
	inc $80FB.w,X		; FE FB 80
	asl A		; 0A
	cpy #$9EFC.w		; C0 FC 9E
	rti		; 40

	sty OAMDATA.w		; 8C 04 21
	ora ($57.b,X)		; 01 57
	and ($C0.b,S),Y		; 33 C0
	inc $AB54.w,X		; FE 54 AB
	ldy $FFFE.w		; AC FE FF
	eor ($C0.b,S),Y		; 53 C0
	jsr ($41C9.w,X)		; FC C9 41
	adc [$56.b],Y		; 77 56
	adc $80DA48.l,X		; 7F 48 DA 80
	tay		; A8
	jsr $6464.w		; 20 64 64
	sbc $F0.b,X		; F5 F0
	sbc $E1E0D5.l,X		; FF D5 E0 E1
	asl $A956.w,X		; 1E 56 A9
	pha		; 48
	lda [$80.b],Y		; B7 80
	adc $64DF20.l,X		; 7F 20 DF 64
	brk $FD.b		; 00 FD
	txy		; 9B
	tsx		; BA
	rts		; 60

	stz $EA.b		; 64 EA
	and ($FF.b,X)		; 21 FF
	adc $D5.b		; 65 D5
	ora ($38.b,X)		; 01 38
	lda $F841.w,X		; BD 41 F8
	lda $9A3EAD.l,X		; BF AD 3E 9A
	adc $65.b		; 65 65
	txs		; 9A
	bmi  28.b		; 30 1C
	inc $F81A.w,X		; FE 1A F8
	lda $A052.w		; AD 52 A0
	ldx #$7520.w		; A2 20 75
	rol $560C.w,X		; 3E 0C 56
	txa		; 8A
	dex		; CA
	brk $24.b		; 00 24
	bit $F8.b		; 24 F8
	sbc $E1009B.l,X		; FF 9B 00 E1
	sbc ($C8.b,X)		; E1 C8
	tay		; A8
	txa		; 8A
	sta $F024FF.l		; 8F FF 24 F0
	sbc $F8DB.w		; ED DB F8
	txy		; 9B
	stz $F0.b		; 64 F0
	beq   1.b		; F0 01
	mvn $AF,$D9		; 54 D9 AF
	trb $99.b		; 14 99
	and #$B55F.w		; 29 5F B5
	brk $98.b		; 00 98
	sbc $0FDFDF.l,X		; FF DF DF 0F
	jsr $411F.w		; 20 1F 41
	txs		; 9A
	eor ($D1.b),Y		; 51 D1
	jmp ($EA69.w,X)		; 7C 69 EA
	bne -59.b		; D0 C5
	clc		; 18
	adc $B7F7.w,Y		; 79 F7 B7
	phd		; 0B
	eor #$9292.w		; 49 92 92
	sbc ($F8.b,X)		; E1 F8
	asl A		; 0A
	cpx #$5FFE.w		; E0 FE 5F
	adc $23E8.w		; 6D E8 23
	xce		; FB
	tsb $FC.b		; 04 FC
	ora $D6.b,S		; 03 D6
	and #$0441.w		; 29 41 04
	cpx $E4.b		; E4 E4
	cop $E1.b		; 02 E1
	bpl   9.b		; 10 09
	ldy $FF30.w		; AC 30 FF
	tas		; 1B
.INDEX 16
	rep #$13		; C2 13
	lda $78F2.w,Y		; B9 F2 78
	sta ($20.b),Y		; 91 20
	ldy $2EF9.w		; AC F9 2E
	sbc [$E7.b]		; E7 E7
	ldx $43.b,Y		; B6 43
	sbc $E018FF.l,X		; FF FF 18 E0
	ror $89.b,X		; 76 89
	sbc ($6F.b,X)		; E1 6F
	sbc $3202.w,X		; FD 02 32
	rts		; 60

	sta $3F1DE2.l,X		; 9F E2 1D 3F
	and $F8E00A.l,X		; 3F 0A E0 F8
	tsb $D4C0.w		; 0C C0 D4
	sbc ($FC.b,X)		; E1 FC
	ror $B469.w,X		; 7E 69 B4
	and $F906.w,Y		; 39 06 F9
	sbc [$89.b]		; E7 89
	ror $B7.b,X		; 76 B7
.ACCU 16
.INDEX 16
	rep #$FC		; C2 FC
	jsr ($1092.w,X)		; FC 92 10
	cpx #$0BF8.w		; E0 F8 0B
	ora $0F.b,S		; 03 0F
	sbc ($96.b),Y		; F1 96
	clc		; 18
	ora #$4AFE.w		; 09 FE 4A
	txs		; 9A
	cmp $4A.b,X		; D5 4A
	ora [$0A.b]		; 07 0A
	sbc $B509F8.l,X		; FF F8 09 B5
	tad		; 5B
	dec $0B90.w		; CE 90 0B
	eor ($10.b,X)		; 41 10
	asl A		; 0A
	sbc $7FFFFD.l,X		; FF FD FF 7F
	ora $6070EF.l		; 0F EF 70 60
	sta $D99F.w		; 8D 9F D9
	sbc $7C38.w,X		; FD 38 7C
	tsb $1F0D.w		; 0C 0D 1F
	mvn $03,$D3		; 54 D3 03
	beq  -1.b		; F0 FF
	sta $7FC16A.l,X		; 9F 6A C1 7F
	cop $FF.b		; 02 FF
	sta $FF.b,S		; 83 FF
	sbc ($FF.b)		; F2 FF
	ldy $FB.b		; A4 FB
	tsb $FFFF.w		; 0C FF FF
	sbc $ED1D14.l,X		; FF 14 1D ED
	sbc $62DB53.l,X		; FF 53 DB 62
	inc $901D.w,X		; FE 1D 90
	lda #$A3AD.w		; A9 AD A3
	sbc $43ED1B.l		; EF 1B ED 43
	tsa		; 3B
	ora ($59.b)		; 12 59
	adc $7324.w,Y		; 79 24 73
	lda #$FF60.w		; A9 60 FF
	ldx #$D45F.w		; A2 5F D4
	cpy $FF.b		; C4 FF
	adc $ECE93E.l,X		; 7F 3E E9 EC
	sbc $B696.w,X		; FD 96 B6
	rti		; 40

	brk $E2.b		; 00 E2
	inc $2C.b		; E6 2C
	and $FD9C.w		; 2D 9C FD
	and #$FFBB.w		; 29 BB FF
	sbc ($C7.b),Y		; F1 C7
	lda ($FF.b),Y		; B1 FF
	lsr $F9.b		; 46 F9
	ora $FF19FF.l		; 0F FF 19 FF
	cmp ($F6.b)		; D2 F6
	mvp $FF,$FF		; 44 FF FF
	sbc $6EBC1D.l,X		; FF 1D BC 6E
	eor $C9B786.l		; 4F 86 B7 C9
	sbc #$7F77.w		; E9 77 7F
	tda		; 7B
	inc $F0DA.w,X		; FE DA F0
	sed		; F8
	lsr A		; 4A
	sbc ($C2.b,X)		; E1 C2
	jmp $32F3.w		; 4C F3 32
	pha		; 48
	sbc $836416.l,X		; FF 16 64 83
	tsx		; BA
	eor $F0.b		; 45 F0
	sbc $6F80BF.l,X		; FF BF 80 6F
	adc $DAFF6D.l		; 6F 6D FF DA
	jsr ($6424.w,X)		; FC 24 64
	cpx $100D.w		; EC 0D 10
	sta $70.b,S		; 83 70
	mvn $23,$23		; 54 23 23
	ldy $4222.w		; AC 22 42
	inc $FB87.w,X		; FE 87 FB
	ora ($FF.b)		; 12 FF
	adc $DC114E.l,X		; 7F 4E 11 DC
	sbc $EAFDE4.l,X		; FF E4 FD EA
	plx		; FA
	rtl		; 6B

	wai		; CB
	ldx #$12BE.w		; A2 BE 12
	sta ($59.b)		; 92 59
	sbc $1F82.w,X		; FD 82 1F
	bra -84.b		; 80 AC
	cop $FD.b		; 02 FD
	tsb $81F7.w		; 0C F7 81
	adc $CCFE80.l,X		; 7F 80 FE CC
	inc $80.b,X		; F6 80
	sta ($9F.b)		; 92 9F
	jmp ($997D.w)		; 6C 7D 99
	lda $B01FE1.l,X		; BF E1 1F B0
	bcs -128.b		; B0 80
	and $E1802D.l		; 2F 2D 80 E1
	cmp #$109B.w		; C9 9B 10
	sbc $E8C38E.l		; EF 8E C3 E8
	rti		; 40

	sbc $D1804F.l,X		; FF 4F 80 D1
	inc $84F6.w,X		; FE F6 84
	sbc $127FFF.l,X		; FF FF 7F 12
	ldx $DF9E.w,Y		; BE 9E DF
	sta [$B7.b]		; 87 B7
	cmp [$E1.b]		; C7 E1
	ora [$0F.b]		; 07 0F
	plx		; FA
	inc $F4D4.w,X		; FE D4 F4
	php		; 08
	sta $4AA0.w,X		; 9D A0 4A
	eor ($2C.b,X)		; 41 2C
	sbc ($49.b),Y		; F1 49
	inc $BC1A.w,X		; FE 1A BC
	phd		; 0B
	ora $F1DED5.l,X		; 1F D5 DE F1
	beq -16.b		; F0 F0
	xce		; FB
	xce		; FB
	eor $FA.b,X		; 55 FA
	tsb $EC.b		; 04 EC
	rol A		; 2A
	dec A		; 3A
	sbc $FABA.w,X		; FD BA FA
	xba		; EB
	beq  35.b		; F0 23
	dec A		; 3A
	asl $3AF3.w,X		; 1E F3 3A
	dec A		; 3A
	mvp $7F,$44		; 44 44 7F
	sbc $0B09BD.l,X		; FF BD 09 0B
	tas		; 1B
	sbc [$F7.b],Y		; F7 F7
	eor [$FF.b],Y		; 57 FF
	cmp $FF.b		; C5 FF
	tyx		; BB
	lsr $0C10.w,X		; 5E 10 0C
	sta ($92.b)		; 92 92
	lda $C9C9BF.l,X		; BF BF C9 C9
	cpx #$9C12.w		; E0 12 9C
	pea $FE80.w		; F4 80 FE
	pla		; 68
	.db $82, $36, $E0		; 82 36 E0
	sed		; F8
	asl A		; 0A
	inx		; E8
	cpy #$1717.w		; C0 17 17
	rti		; 40

	ora ($35.b,S),Y		; 13 35
	rti		; 40

	sbc $E1FD.w,X		; FD FD E1
	cpx #$C63F.w		; E0 3F C6
	and $2ABF.w,Y		; 39 BF 2A
	bra  68.b		; 80 44
	cpx #$8DFE.w		; E0 FE 8D
	ora ($FF.b)		; 12 FF
	tsx		; BA
	.db $82, $77, $84		; 82 77 84
	inc $FF.b		; E6 FF
	jsr ($E0BA.w,X)		; FC BA E0
	inc $0044.w,X		; FE 44 00
	and ($D2.b,S),Y		; 33 D2
	lda #$5C5C.w		; A9 5C 5C
	stp		; DB
	rol A		; 2A
	dec $E8.b		; C6 E8
	ora $5EA3.w		; 0D A3 5E
	ora [$D7.b],Y		; 17 D7
	ora ($C1.b)		; 12 C1
	phy		; 5A
	lsr $E5.b		; 46 E5
	sbc $3E0CF8.l,X		; FF F8 0C 3E
	asl $D6.b,X		; 16 D6
	sbc $A3EFF8.l,X		; FF F8 EF A3
	sed		; F8
	ora $F8E0.w		; 0D E0 F8
	tsb $D9D9.w		; 0C D9 D9
	sbc ($E2.b)		; F2 E2
	ror $66.b		; 66 66
	.db $82, $80, $FF		; 82 80 FF
	ora $DA1010.l,X		; 1F 10 10 DA
	bra  91.b		; 80 5B
	phb		; 8B
	lda $FF2686.l,X		; BF 86 26 FF
	ora $99FF.w,X		; 1D FF 99
	sbc $0EFFFE.l,X		; FF FE FF 0E
	inc $61FF.w		; EE FF 61
	sbc $79FF14.l,X		; FF 14 FF 79
	sbc $32DFDB.l,X		; FF DB DF 32
	and ($83.b)		; 32 83
	bra -62.b		; 80 C2
	sbc $A97834.l,X		; FF 34 78 A9
	cmp ($3A.b)		; D2 3A
	brk $E6.b		; 00 E6
	ldx $20.b		; A6 20
	sbc $7CFFCD.l,X		; FF CD FF 7C
	sta ($FE.b),Y		; 91 FE
	sbc $B138C3.l,X		; FF C3 38 B1
	eor $28FF.w,Y		; 59 FF 28
	plp		; 28
	stz $FFC4.w		; 9C C4 FF
	lda $4E7474.l		; AF 74 74 4E
	lsr A		; 4A
	txy		; 9B
	and $1E5E.w,Y		; 39 5E 1E
	adc $65.b		; 65 65
	ora [$13.b],Y		; 17 13
	bne 106.b		; D0 6A
	sbc #$FFFF.w		; E9 FF FF
	tay		; A8
	sbc ($C6.b)		; F2 C6
	sbc $9AFFE1.l,X		; FF E1 FF 9A
	sbc $6FFFEC.l,X		; FF EC FF 6F
	adc $267777.l		; 6F 77 77 26
	rol $20.b		; 26 20
	sbc $A52007.l,X		; FF 07 20 A5
	bit $AB.b		; 24 AB
	dey		; 88
	and ($22.b)		; 32 22
	lda $FF9047.l		; AF 47 90 FF
	dey		; 88
	sty $F4BF.w		; 8C BF F4
	dey		; 88
	ora #$FFDB.w		; 09 DB FF
	stz $FF.b,X		; 74 FF
	cmp ($FE.b,X)		; C1 FE
	sbc ($80.b,X)		; E1 80
	adc [$66.b]		; 67 66
	sty $FFBF.w		; 8C BF FF
	.db $82, $61, $01		; 82 61 01
	mvp $BB,$04		; 44 04 BB
	pld		; 2B
	bra  -4.b		; 80 FC
	tya		; 98
	sbc $8EFF71.l,X		; FF 71 FF 8E
	sbc $1DF17B.l,X		; FF 7B F1 1D
	sbc $DC80D4.l,X		; FF D4 80 DC
	jmp.w [$020A]		; DC 0A 02
	cmp ($49.b)		; D2 49
	php		; 08
	bra -23.b		; 80 E9
	tay		; A8
	sta ($80.b),Y		; 91 80
	bit $FB.b		; 24 FB
	cmp $84.b		; C5 84
	nop		; EA
	cmp ($BF.b)		; D2 BF
	ora $2FFC80.l		; 0F 80 FC 2F
	and $F4A4E4.l		; 2F E4 A4 F4
	pea $FC80.w		; F4 80 FC
	stz $64.b		; 64 64
	ora $ED15.w,Y		; 19 15 ED
	sbc $805B80.l,X		; FF 80 5B 80
	sed		; F8
	asl A		; 0A
	cpx #$FD80.w		; E0 80 FD
	and $20.b,S		; 23 20
	lda #$D820.w		; A9 20 D8
	tay		; A8
	ldx $4F2E.w		; AE 2E 4F
	dec $07C2.w,X		; DE C2 07
	bra  -4.b		; 80 FC
	jmp.w [$D3FF]		; DC FF D3
	cpy $D1.b		; C4 D1
	eor ($A0.b),Y		; 51 A0
	adc #$94B9.w		; 69 B9 94
	and [$4E.b],Y		; 37 4E
	adc $B4CB00.l,X		; 7F 00 CB B4
	phx		; DA
	ora #$F4F5.w		; 09 F5 F4
	stx $FE.b,Y		; 96 FE
	cmp [$1F.b],Y		; D7 1F
	tay		; A8
	bit $FF.b,X		; 34 FF
	eor #$FDA0.w		; 49 A0 FD
	inc A		; 1A
	ora $4200.w,Y		; 19 00 42
	sbc $003520.l,X		; FF 20 35 00
	lsr $A0.b		; 46 A0
	phd		; 0B
	brk $84.b		; 00 84
	pea $E802.w		; F4 02 E8
	adc $68.b,X		; 75 68
	dex		; CA
	sbc $F8112F.l,X		; FF 2F 11 F8
	rol $00.b		; 26 00
	trb $FD.b		; 14 FD
	wai		; CB
	txs		; 9A
	asl A		; 0A
	sta $6B6C.w,X		; 9D 6C 6B
	pea $C046.w		; F4 46 C0
	sed		; F8
	inc A		; 1A
	adc $1EF8C0.l,X		; 7F C0 F8 1E
	ldy $81A4.w,X		; BC A4 81
	cpy #$0BF8.w		; C0 F8 0B
	ora $7F.b,S		; 03 7F
	phb		; 8B
	stz $BD15.w,X		; 9E 15 BD
	lda $15DF.w,X		; BD DF 15
	xce		; FB
	cmp #$71F6.w		; C9 F6 71
	adc $5049C2.l,X		; 7F C2 49 50
	.db $42, $BB		; 42 BB
	bcs -22.b		; B0 EA
	stz $FFE9.w,X		; 9E E9 FF
	cmp ($BB.b,S),Y		; D3 BB
	phy		; 5A
	inc $EB0A.w,X		; FE 0A EB
	jmp $0B0B0A.l		; 5C 0A 0B 0B
	pla		; 68
	rol $EF.b		; 26 EF
	ora #$09E4.w		; 09 E4 09
	pea $FF9E.w		; F4 9E FF
	tsx		; BA
	ora ($C0.b)		; 12 C0
	sbc $E6DDCD.l,X		; FF CD DD E6
	ora $FCEE.w,Y		; 19 EE FC
	cpy #$FFF4.w		; C0 F4 FF
	bra  34.b		; 80 22
	sbc ($FD.b)		; F2 FD
	tax		; AA
	ldx #$B0BF.w		; A2 BF B0
	adc ($23.b)		; 72 23
	sep #$8B		; E2 8B
	cmp [$00.b],Y		; D7 00
	lda $9FE6C7.l,X		; BF C7 E6 9F
	lda $10.b		; A5 10
	tya		; 98
	sta $5D.b,S		; 83 5D
	cpy $E1.b		; C4 E1
	cmp $7DFF.w,X		; DD FF 7D
	inc $0F.b		; E6 0F
	sbc $E3FF78.l,X		; FF 78 FF E3
	sbc $007E1F.l,X		; FF 1F 7E 00
	inc A		; 1A
	bpl  11.b		; 10 0B
	php		; 08
	bcs -126.b		; B0 82
	lda $08B8F7.l,X		; BF F7 B8 08
	dec $44.b		; C6 44
	sta [$23.b],Y		; 97 23
	ora $EFD980.l,X		; 1F 80 D9 EF
	sbc $F160F6.l,X		; FF F6 60 F1
	sta [$FF.b]		; 87 FF
	ora ($FE.b,X)		; 01 FE
	tsa		; 3B
	sbc $F2F44F.l,X		; FF 4F F4 F2
	sbc ($41.b),Y		; F1 41
	eor #$7232.w		; 49 32 72
	sbc $008D3F.l,X		; FF 3F 8D 00
	clc		; 18
	bcc -54.b		; 90 CA
	ora $088B.w,Y		; 19 8B 08
	eor $0804.w,X		; 5D 04 08
	sbc $0DFF86.l,X		; FF 86 FF 0D
	.db $82, $FF, $C2		; 82 FF C2
	inc $52.b		; E6 52
	dex		; CA
	xce		; FB
	sbc $77A5A7.l,X		; FF A7 A5 77
	bit $44.b,X		; 34 44
	sbc $194007.l,X		; FF 07 40 19
	brk $C5.b		; 00 C5
	sta ($44.b,X)		; 81 44
	eor ($15.b,X)		; 41 15
	ora ($F9.b,X)		; 01 F9
	tas		; 1B
	phy		; 5A
	eor ($21.b,S),Y		; 53 21
	.db $42, $00		; 42 00
	sbc #$7EFF.w		; E9 FF 7E
	plx		; FA
	rti		; 40

	inc $6F.b		; E6 6F
	inc $F880.w,X		; FE 80 F8
	asl A		; 0A
.INDEX 8
	sep #$9B		; E2 9B
	lda ($80.b,X)		; A1 80
	sed		; F8
	asl $80E7.w		; 0E E7 80
	tas		; 1B
	bpl  12.b		; 10 0C
	asl A		; 0A
	sbc $B4865F.l		; EF 5F 86 B4
	php		; 08
	dey		; 88
	lsr $80.b		; 46 80
	sbc $FFEE.w,X		; FD EE FF
	sbc ($FF.b),Y		; F1 FF
	eor $FF.b,S		; 43 FF
	and [$78.b],Y		; 37 78
	sbc ($FA.b,X)		; E1 FA
	and $C580.w,X		; 3D 80 C5
	cpy $B9.b		; C4 B9
	and ($F2.b),Y		; 31 F2
	lda ($80.b)		; B2 80
	sed		; F8
	ora #$FF0B.w		; 09 0B FF
	asl $D4FA.w		; 0E FA D4
	cop $80.b		; 02 80
	sed		; F8
	ora #$B300.w		; 09 00 B3
	tsb $AC.b		; 04 AC
	ora $54.b,X		; 15 54
	cmp ($11.b)		; D2 11
	lda $34B4F8.l		; AF F8 B4 34
	cpx #$FD.b		; E0 FD
	jmp $59CA.w		; 4C CA 59
	jsl $34FC1B.l		; 22 1B FC 34
	wai		; CB
	rep #$4F		; C2 4F
	sbc ($3F.b),Y		; F1 3F
	jsr $006D.w		; 20 6D 00
	cmp ($E0.b,S),Y		; D3 E0
	eor [$EA.b],Y		; 57 EA
	cmp $62EFDF.l,X		; DF DF EF 62
	lda $FE.b		; A5 FE
	sta ($FF.b)		; 92 FF
	bit $1F1E.w		; 2C 1E 1F
	cmp $E1DB20.l,X		; DF 20 DB E1
	cpy #$FA.b		; C0 FA
	eor $E5B7A7.l,X		; 5F A7 B7 E5
	ora $7B4E00.l		; 0F 00 4E 7B
	cpy #$FE.b		; C0 FE
	jsr ($40FC.w,X)		; FC FC 40
	lda $ABA8C0.l,X		; BF C0 A8 AB
	plp		; 28
	sbc $3E.b,X		; F5 3E
	sbc ($C4.b,X)		; E1 C4
	cmp $F781.w,Y		; D9 81 F7
	cpy #$FE.b		; C0 FE
	rol $18E1.w,X		; 3E E1 18
	bit $8C.b		; 24 8C
	pei ($C0.b)		; D4 C0
	.db $42, $56		; 42 56
	lsr A		; 4A
	lda #$05C0.w		; A9 C0 05
	php		; 08
	bra  -8.b		; 80 F8
	ora #$FCFF.w		; 09 FF FC
	bra -116.b		; 80 8C
	cmp $513E41.l,X		; DF 41 3E 51
	cmp ($E3.b,S),Y		; D3 E3
	bcc   9.b		; 90 09
	lda $FF20.w		; AD 20 FF
	lda ($1A.b)		; B2 1A
	rol $5BBE.w,X		; 3E BE 5B
	cpx #$09.b		; E0 09
	tyx		; BB
	ora $FBB3.w,Y		; 19 B3 FB
	tay		; A8
	and $A42D.w		; 2D 2D A4
	ora $F6.b,S		; 03 F6
	pld		; 2B
	cpx #$C0.b		; E0 C0
	mvp $BE,$FF		; 44 FF BE
	pei ($C1.b)		; D4 C1
	mvn $DE,$D2		; 54 D2 DE
	dec $FDC0.w		; CE C0 FD
	cmp [$D7.b],Y		; D7 D7
	sbc $04.b,S		; E3 04
	cmp ($22.b,S),Y		; D3 22
	sbc $FCC001.l,X		; FF 01 C0 FC
	ror $01FF.w		; 6E FF 01
	inc $04D5.w,X		; FE D5 04
	sbc $EFDF.w		; ED DF EF
	brk $4F.b		; 00 4F
	bpl  76.b		; 10 4C
	lda ($58.b,S),Y		; B3 58
	clv		; B8
	sta ($91.b,X)		; 81 91
	cop $07.b		; 02 07
	cmp #$00FB.w		; C9 FB 00
	bne  14.b		; D0 0E
	sta ($FF.b,S),Y		; 93 FF
	lda $2CCB60.l,X		; BF 60 CB 2C
	lsr $DE11.w		; 4E 11 DE
	eor ($4C.b,X)		; 41 4C
	ora $D7.b,S		; 03 D7
	plp		; 28
	sbc $1A.b,S		; E3 1A
	sbc ($8E.b,X)		; E1 8E
	jsr $1AF4.w		; 20 F4 1A
	tsx		; BA
	sbc $FFF25E.l,X		; FF 5E F2 FF
	jsr ($F196.w,X)		; FC 96 F1
	inc $04.b		; E6 04
	sbc $0DB71F.l,X		; FF 1F B7 0D
	cpy $32.b		; C4 32
	wai		; CB
	ora [$2C.b]		; 07 2C
	txa		; 8A
	lsr $91.b,X		; 56 91
	ror A		; 6A
	sta $FE.b		; 85 FE
	cmp $C4.b,S		; C3 C4
	xba		; EB
	cpy #$F2.b		; C0 F2
	sbc ($E6.b),Y		; F1 E6
	sbc ($FF.b,S),Y		; F3 FF
	lda $9CD9DA.l		; AF DA D9 9C
	cmp #$FF02.w		; C9 02 FF
	ora $7E4A96.l,X		; 1F 96 4A 7E
	rts		; 60

	sbc #$C780.w		; E9 80 C7
	jsr $0066.w		; 20 66 00
	tas		; 1B
	ldy $74.b		; A4 74
	dey		; 88
	dec $E65E.w		; CE 5E E6
	sbc ($FF.b,X)		; E1 FF
	sta $F8A0E6.l,X		; 9F E6 A0 F8
	ora ($E2.b),Y		; 11 E2
	inc A		; 1A
	sbc $A3D9BA.l		; EF BA D9 A3
	sbc $09F8A0.l,X		; FF A0 F8 09
	sbc $A0FC.w,X		; FD FC A0
	jsr ($07C8.w,X)		; FC C8 07
	and $8A.b,S		; 23 8A
	rol A		; 2A
	lda $DA.b,X		; B5 DA
	rtl		; 6B

	inc $3E25.w,X		; FE 25 3E
	ora $A0.b,S		; 03 A0
	jsr ($FC9E.w,X)		; FC 9E FC
	cmp $4A86A0.l		; CF A0 86 4A
	rol $0570.w		; 2E 70 05
	inx		; E8
	lda #$A0C0.w		; A9 C0 A0
	sed		; F8
	ora #$E86C.w		; 09 6C E8
	and $D5FFA0.l,X		; 3F A0 FF D5
	sbc $70FFDF.l,X		; FF DF FF 70
	sbc $A1.b,X		; F5 A1
	tda		; 7B
	ror $FF.b		; 66 FF
	eor #$D169.w		; 49 69 D1
	sbc $D8C8.w,X		; FD C8 D8
	pla		; 68
	adc [$61.b]		; 67 61
	inc $0AFF.w,X		; FE FF 0A
	rol $96D3.w,X		; 3E D3 96
	sbc $24FE03.l,X		; FF 03 FE 24
	sbc $D1F708.l,X		; FF 08 F7 D1
	tda		; 7B
	cmp [$FF.b]		; C7 FF
	ora #$FFDF.w		; 09 DF FF
	lda $5F5D.w,Y		; B9 5D 5F
	cmp $87.b		; C5 87
	clv		; B8
	bra   9.b		; 80 09
	cmp $F7.b,X		; D5 F7
	ora $FE.b		; 05 FE
	asl $F9.b		; 06 F9
	lsr A		; 4A
	sbc [$EB.b],Y		; F7 EB
	cmp $18EF90.l,X		; DF 90 EF 18
	inc A		; 1A
	cmp #$1300.w		; C9 00 13
	and $FD0E.w,X		; 3D 0E FD
	asl $EB.b,X		; 16 EB
	stx $F7.b,Y		; 96 F7
	brk $14.b		; 00 14
	tax		; AA
	sbc $098024.l,X		; FF 24 80 09
	lsr A		; 4A
	sbc ($80.b)		; F2 80
	asl A		; 0A
	brk $12.b		; 00 12
	bcc  -1.b		; 90 FF
	rol $FC.b,X		; 36 FC
	dec $26FE.w,X		; DE FE 26
	sbc $214FFB.l,X		; FF FB 4F 21
	sbc ($15.b),Y		; F1 15
	ora [$04.b],Y		; 17 04
	cmp $B98F8A.l		; CF 8A 8F B9
	and $C920.w,X		; 3D 20 C9
	sbc $F996.w,X		; FD 96 F9
	xba		; EB
	adc $FF02.w,X		; 7D 02 FF
	beq  -8.b		; F0 F8
	cmp ($40.b,X)		; C1 40
	ora #$55FF.w		; 09 FF 55
	adc $D0FE80.l,X		; 7F 80 FE D0
	sbc $DACA.w,X		; FD CA DA
	ora $E1.b		; 05 E1
	brk $0A.b		; 00 0A
	bra  -2.b		; 80 FE
	cpx $00.b		; E4 00
	asl A		; 0A
	bra -64.b		; 80 C0
	inc $07FF.w,X		; FE FF 07
	ora [$B8.b]		; 07 B8
	adc $A1817F.l		; 6F 7F 81 A1
	rol $C1FF.w,X		; 3E FF C1
	sbc $DD.b,S		; E3 DD
	sbc ($80.b,S),Y		; F3 80
	and $E9CA00.l,X		; 3F 00 CA E9
	sbc $58FC83.l,X		; FF 83 FC 58
	sbc $BCC078.l,X		; FF 78 C0 BC
	sbc $F4.b,X		; F5 F4
	bcc -67.b		; 90 BD
	asl $807D.w		; 0E 7D 80
	sed		; F8
	phd		; 0B
.ACCU 16
.INDEX 16
	rep #$39		; C2 39
	sbc ($80.b),Y		; F1 80
	sed		; F8
	ora $FEDC.w		; 0D DC FE
	sbc $4F21A7.l,X		; FF A7 21 4F
	plp		; 28
	jsr ($1604.w,X)		; FC 04 16
	and $EF.b		; 25 EF
	xba		; EB
	sbc $E27C78.l		; EF 78 7C E2
	rol $91FC.w,X		; 3E FC 91
	rol $C9.b		; 26 C9
	inx		; E8
	sbc $FEFE11.l,X		; FF 11 FE FE
	.db $82, $FF, $98		; 82 FF 98
	sbc [$13.b]		; E7 13
	sbc $C3EFB7.l,X		; FF B7 EF C3
	lda $3C7394.l,X		; BF 94 73 3C
	adc $ED.b		; 65 ED
	ora ($BD.b,S),Y		; 13 BD
	sbc $F1A7FB.l,X		; FF FB A7 F1
	inc $FFF5.w,X		; FE F5 FF
	rol A		; 2A
	cmp $9ECF.w,Y		; D9 CF 9E
	sbc $1C.b,X		; F5 1C
	sbc #$EFEA.w		; E9 EA EF
	tyx		; BB
	ldy $FB.b,X		; B4 FB
	sta $5FDD70.l		; 8F 70 DD 5F
	and $FD2F.w,Y		; 39 2F FD
	inc $F1.b,X		; F6 F1
	sta $C4AD7F.l,X		; 9F 7F AD C4
	beq  11.b		; F0 0B
	sbc $ADFB84.l,X		; FF 84 FB AD
	eor $37.b		; 45 37
	sbc $BED9FB.l,X		; FF FB D9 BE
	tas		; 1B
	txs		; 9A
	ldy $F54A.w,X		; BC 4A F5
	rol $37FB.w,X		; 3E FB 37
	cmp $0FB8E0.l,X		; DF E0 B8 0F
	stz $FD49.w,X		; 9E 49 FD
	sbc $6B732F.l,X		; FF 2F 73 6B
	jmp.w [$FEC3]		; DC C3 FE
	sta [$75.b],Y		; 97 75
	sbc $7DF228.l,X		; FF 28 F2 7D
	ror $E083.w,X		; 7E 83 E0
	sed		; F8
	ora $807FFC.l		; 0F FC 7F 80
	ora ($EF.b)		; 12 EF
	cmp $BB.b		; C5 BB
	ldy $FF5B.w		; AC 5B FF
	lda $E1.b		; A5 E1
	ora $3BCF8D.l,X		; 1F 8D CF 3B
	cmp $7F.b,X		; D5 7F
	ora [$F3.b]		; 07 F3
	pla		; 68
	phx		; DA
	rti		; 40

	sbc ($18.b)		; F2 18
	sbc ($07.b)		; F2 07
	nop		; EA
	and $B7.b,S		; 23 B7
	sty $CB.b		; 84 CB
	eor $7F41F0.l		; 4F F0 41 7F
	bra  -2.b		; 80 FE
	inx		; E8
	ror $7CEA.w,X		; 7E EA 7C
	sed		; F8
	ora #$E717.w		; 09 17 E7
	ora $BFAD0F.l		; 0F 0F AD BF
	eor $55.b,X		; 55 55
	bra -68.b		; 80 BC
	brk $C2.b		; 00 C2
	inc $80F1.w		; EE F1 80
	lda $80C400.l,X		; BF 00 C4 80
	ldy $C000.w,X		; BC 00 C0
	ora #$BC80.w		; 09 80 BC
	sbc $C600FF.l,X		; FF FF 00 C6
	sbc $FF.b,S		; E3 FF
	inc $9DFE.w		; EE FE 9D
	lda $B0B8.w,X		; BD B8 B0
	plx		; FA
	inc $1C.b		; E6 1C
	ora $DDFC.w		; 0D FC DD
	sbc $BBE9F8.l,X		; FF F8 E9 BB
	ora ($FE.b,X)		; 01 FE
	cop $FD.b		; 02 FD
	mvp $43,$FB		; 44 FB 43
	dec $FFC2.w,X		; DE C2 FF
	.db $42, $DE		; 42 DE
	asl A		; 0A
	lda $3EC100.l,X		; BF 00 C1 3E
	stz $80DF.w,X		; 9E DF 80
	ldy $007A.w,X		; BC 7A 00
	cmp [$80.b]		; C7 80
	ldy $FEAA.w,X		; BC AA FE
	dec $CAD8.w,X		; DE D8 CA
	bra -68.b		; 80 BC
	bra  -8.b		; 80 F8
	ora #$BC80.w		; 09 80 BC
	bra  -8.b		; 80 F8
	ora #$FDFC.w		; 09 FC FD
	sbc $73FF.w,X		; FD FF 73
	sbc $42CB7F.l,X		; FF 7F CB 42
	dec $9272.w		; CE 72 92
	ora $239D.w,Y		; 19 9D 23
	and $1A3BDB.l		; 2F DB 3B 1A
	sbc [$18.b]		; E7 18
	sbc [$04.b]		; E7 04
	cpy $C4A0.w		; CC A0 C4
	ora $F680.w		; 0D 80 F6
	brk $BA.b		; 00 BA
	nop		; EA
	sbc $BC80.w,X		; FD 80 BC
	brk $B8.b		; 00 B8
	ora #$BC80.w		; 09 80 BC
	brk $BC.b		; 00 BC
	ora ($BE.b,S),Y		; 13 BE
	sta $C8B980.l,X		; 9F 80 B9 C8
	inx		; E8
	ror $7E.b,X		; 76 7E
	ora $FE7BDE.l,X		; 1F DE 7B FE
	cmp $F4.b,X		; D5 F4
	ora #$E44A.w		; 09 4A E4
	and ($FE.b,X)		; 21 FE
	eor #$00FE.w		; 49 FE 00
	ldy $1BC3.w,X		; BC C3 1B
	asl A		; 0A
	sbc $DF9AB4.l,X		; FF B4 9A DF
	sta ($FF.b),Y		; 91 FF
	txy		; 9B
	cpy $99E1.w		; CC E1 99
	dec $FAFF.w,X		; DE FF FA
	adc $679F.w,X		; 7D 9F 67
	and $F0A1.w,Y		; 39 A1 F0
	ora $96E9FF.l		; 0F FF E9 96
	bit $EBDF.w		; 2C DF EB
	adc $7EBDAC.l,X		; 7F AC BD 7E
	sbc [$73.b],Y		; F7 73
	cpx $7DE9.w		; EC E9 7D
	txy		; 9B
	stx $A7.b,Y		; 96 A7
	cpx #$FF09.w		; E0 09 FF
	sbc $FDDF.w,X		; FD DF FD
	ora $68E2.w,X		; 1D E2 68
	sbc $C9D015.l,X		; FF 15 D0 C9
	trb $B3F4.w		; 1C F4 B3
	eor ($93.b),Y		; 51 93
	cmp $3E15.w,X		; DD 15 3E
	cpx $F8.b		; E4 F8
	phd		; 0B
.ACCU 8
	sep #$A9		; E2 A9
	inc $407F.w,X		; FE 7F 40
	sty $EB.b,X		; 94 EB
	sbc $C48B.w,Y		; F9 8B C4
	sbc ($AF.b,S),Y		; F3 AF
	stz $5FFF.w		; 9C FF 5F
	inc $DFE7.w,X		; FE E7 DF
	pei ($41.b)		; D4 41
	sbc $FF9B3A.l,X		; FF 3A 9B FF
	lda $09F8.w,Y		; B9 F8 09
	cpy #$1FFE.w		; C0 FE 1F
	sbc [$BF.b],Y		; F7 BF
	eor $FDA3.w,X		; 5D A3 FD
	plx		; FA
	sta [$D5.b]		; 87 D5
	eor $F2.b		; 45 F2
	sbc $970DF8.l,X		; FF F8 0D 97
	sbc [$FD.b]		; E7 FD
	tyx		; BB
	pea $EF73.w		; F4 73 EF
	cpy #$002F.w		; C0 2F 00
	lsr $E5FF.w,X		; 5E FF E5
	cmp $C1D8.w,X		; DD D8 C1
	cld		; D8
	asl A		; 0A
	cmp $FE.b,X		; D5 FE
	sed		; F8
	nop		; EA
	ldy $C0.b,X		; B4 C0
	ldx $1111.w,Y		; BE 11 11
	cpy $84.b		; C4 84
	rti		; 40

	dec $C0.b		; C6 C0
	ldy $C440.w,X		; BC 40 C4
	phx		; DA
	sbc $31DEFF.l,X		; FF FF DE 31
	bmi -122.b		; 30 86
	bra   4.b		; 80 04
	brk $98.b		; 00 98
	brk $DF.b		; 00 DF
	cmp $66007A.l		; CF 7A 00 66
	rol $20.b		; 26 20
	lda ($BD.b),Y		; B1 BD
	sbc $F3EACC.l,X		; FF CC EA F3
	bit $D1.b		; 24 D1
	brk $D8.b		; 00 D8
	cmp $FF19.w,Y		; D9 19 FF
	lda $40EBD6.l		; AF D6 EB 40
	cpy #$C00A.w		; C0 0A C0
	tsx		; BA
	bvc  64.b		; 50 40
	cpy #$C00C.w		; C0 0C C0
	clv		; B8
	phd		; 0B
	tay		; A8
	dey		; 88
	rol $C740.w		; 2E 40 C7
	cpy #$77BA.w		; C0 BA 77
	sbc $FFFF.w,X		; FD FF FF
	cmp ($16.b),Y		; D1 16
	sbc #$D8.b		; E9 D8
	cld		; D8
	sbc ($E2.b,S),Y		; F3 E2
	stz $64.b		; 64 64
	bra -125.b		; 80 83
	ora [$11.b],Y		; 17 11
	cpy #$8780.w		; C0 80 87
	asl $B3.b,X		; 16 B3
	and $B3.b,S		; 23 B3
	stx $1C80.w		; 8E 80 1C
	cpy #$7CB9.w		; C0 B9 7C
	cpx #$FAE1.w		; E0 E1 FA
	phd		; 0B
	txs		; 9A
	bne  88.b		; D0 58
	cmp #$5B.b		; C9 5B
	eor $8032B2.l,X		; 5F B2 32 80
	bra -64.b		; 80 C0
	clv		; B8
	ora #$51.b		; 09 51
	sbc $4D80.w,X		; FD 80 4D
	.db $62, $C0, $B8		; 62 C0 B8
	ora $40.b,X		; 15 40
	ldy $F880.w,X		; BC 80 F8
	ora $6E6E.w		; 0D 6E 6E
	ror $76.b,X		; 76 76
	sbc $2627A7.l,X		; FF A7 27 26
	and ($20.b,X)		; 21 20
	ldy $25.b		; A4 25
	lda #$88.b		; A9 88
	and $064E2E.l		; 2F 2E 4E 06
	bra -61.b		; 80 C3
	php		; 08
	cld		; D8
	sbc $FF28DE.l,X		; FF DE 28 FF
	ror $A0.b,X		; 76 A0
	brk $FF.b		; 00 FF
	bra -34.b		; 80 DE
	sty $AA.b,X		; 94 AA
	sbc [$AD.b],Y		; F7 AD
	inc $FE5E.w,X		; FE 5E FE
	sec		; 38
	and [$FA.b],Y		; 37 FA
	xce		; FB
	sbc ($FF.b),Y		; F1 FF
	ora $FDF7A7.l,X		; 1F A7 F7 FD
	stz $E27A.w		; 9C 7A E2
	sbc $1D.b		; E5 1D
	sbc $9FC70F.l		; EF 0F C7 9F
	eor [$CB.b],Y		; 57 CB
	sbc ($7F.b)		; F2 7F
	asl $FFC7.w		; 0E C7 FF
	sta ($EC.b)		; 92 EC
	plx		; FA
	eor $E5E8FE.l,X		; 5F FE E8 E5
	sbc $7FDBFE.l,X		; FF FE DB 7F
	ldy $5F.b,X		; B4 5F
	sbc [$CF.b],Y		; F7 CF
	lda $B0EBFF.l		; AF FF EB B0
	cmp ($28.b),Y		; D1 28
	stx $B4.b		; 86 B4
	sbc [$61.b],Y		; F7 61
	bne  15.b		; D0 0F
	sbc $4750F6.l,X		; FF F6 50 47
	eor #$9F.b		; 49 9F
	tda		; 7B
	inc $CC5D.w,X		; FE 5D CC
	inc $D1.b		; E6 D1
	eor [$FF.b]		; 47 FF
	sed		; F8
	tsb $F5A1.w		; 0C A1 F5
	bra  -2.b		; 80 FE
	cpx #$B034.w		; E0 34 B0
	lda ($DF.b),Y		; B1 DF
	lda [$F8.b]		; A7 F8
	ora #$FF.b		; 09 FF
	sbc $1FE6.w,X		; FD E6 1F
	sta $9FE3EA.l		; 8F EA E3 9F
	adc [$FB.b],Y		; 77 FB
	lda ($8A.b)		; B2 8A
	bra  -4.b		; 80 FC
	sbc $800FF8.l,X		; FF F8 0F 80
	jsr ($FFAD.w,X)		; FC AD FF
	dec $FC.b,X		; D6 FC
	sbc $F7B7FF.l		; EF FF B7 F7
	jsr ($77DF.w,X)		; FC DF 77
	tsa		; 3B
	inx		; E8
	inc $B1F9.w,X		; FE F9 B1
	phb		; 8B
	ldy $83E9.w,X		; BC E9 83
	cpx $EF.b		; E4 EF
	stx $9F.b,Y		; 96 9F
	lda #$80.b		; A9 80
	sed		; F8
	ora #$BE.b		; 09 BE
	ldx $0BD8.w,Y		; BE D8 0B
	plb		; AB
	sbc $BDA27F.l,X		; FF 7F A2 BD
	lda ($76.b)		; B2 76
	and ($EE.b,X)		; 21 EE
	phb		; 8B
	cmp [$18.b]		; C7 18
	cmp $BE.b		; C5 BE
	cmp $B828.w,Y		; D9 28 B8
	sbc $5C.b,S		; E3 5C
	xce		; FB
	sbc $C960.w		; ED 60 C9
	cmp $F188.w,Y		; D9 88 F1
	sbc [$FF.b]		; E7 FF
	phk		; 4B
	sbc $C14097.l,X		; FF 97 40 C1
	sta ($C0.b,X)		; 81 C0
	lda $6F0A.w,Y		; B9 0A 6F
	xba		; EB
	php		; 08
	ldx $C88C.w,Y		; BE 8C C8
	pha		; 48
	rti		; 40

	cpy $7F.b		; C4 7F
	ror $C3.b		; 66 C3
	adc ($2C.b,S),Y		; 73 2C
	bit #$40.b		; 89 40
	cpy $F5.b		; C4 F5
	stp		; DB
	sbc $7179F4.l,X		; FF F4 79 71
	rti		; 40

	cpy #$8E0D.w		; C0 0D 8E
	rti		; 40

	cpy #$BA0C.w		; C0 0C BA
	ldx #$A0A7.w		; A2 A7 A0
	.db $42, $03		; 42 03
.ACCU 16
.INDEX 16
	rep #$BB		; C2 BB
	sbc $609746.l,X		; FF 46 97 60
	sta $FE.b		; 85 FE
	and $F8C8.w,Y		; 39 C8 F8
	adc $45.b,S		; 63 45
	nop		; EA
	sta ($CD.b,X)		; 81 CD
	dec $EAA8.w,X		; DE A8 EA
	rtl		; 6B

	tas		; 1B
	jsr ($60B9.w,X)		; FC B9 60
	ldy $F8A0.w,X		; BC A0 F8
	phd		; 0B
	dec $FC.b		; C6 FC
	ldy #$09F8.w		; A0 F8 09
	ldx $FF.b		; A6 FF
	adc $3576A4.l,X		; 7F A4 76 35
	eor $40.b		; 45 40
	clc		; 18
	ora ($C4.b,X)		; 01 C4
	bra  69.b		; 80 45
	eor ($14.b,X)		; 41 14
	brk $F8.b		; 00 F8
	inc A		; 1A
	phy		; 5A
	txy		; 9B
	xce		; FB
	.db $82, $B1, $BE		; 82 B1 BE
	ply		; 7A
	sbc ($7E.b),Y		; F1 7E
	plx		; FA
	inc $C0.b		; E6 C0
	wai		; CB
	ldx #$5A7A.w		; A2 7A 5A
	xce		; FB
	sbc $89DB.w,X		; FD DB 89
	and #$D040.w		; 29 40 D0
	ora #$FD06.w		; 09 06 FD
	clc		; 18
	sbc [$16.b]		; E7 16
	rti		; 40

	cmp $D7.b,X		; D5 D7
	tda		; 7B
	lda $3FBF.w,Y		; B9 BF 3F
	jsr ($B985.w,X)		; FC 85 B9
	adc $857F.w		; 6D 7F 85
	lda [$3B.b]		; A7 3B
	pei ($E7.b)		; D4 E7
	and $37.b,X		; 35 37
	ora $FC.b,S		; 03 FC
	adc $C738F8.l,X		; 7F F8 38 C7
.ACCU 16
.INDEX 16
	rep #$7F		; C2 7F
	bra  -1.b		; 80 FF
	cli		; 58
	sbc $FB04F6.l,X		; FF F6 04 FB
	plp		; 28
	cmp $102BFF.l,X		; DF FF 2B 10
	lda $FD0E.w,X		; BD 0E FD
	ora [$EB.b],Y		; 17 EB
	tya		; 98
	sbc ($1C.b),Y		; F1 1C
	sta $CFC0AE.l		; 8F AE C0 CF
	sty $8A.b		; 84 8A
	cpx $FEFF.w		; EC FF FE
	cmp ($7F.b,X)		; C1 7F
	rti		; 40

	cmp ($30.b)		; D2 30
	plx		; FA
	sbc $E7.b		; E5 E7
	cpx #$294F.w		; E0 4F 29
	sbc $FD05.w,X		; FD 05 FD
	ora [$17.b],Y		; 17 17
	bit $40.b		; 24 40
	cmp ($77.b),Y		; D1 77
	adc $02.b,X		; 75 02
	sbc $DF20.w,X		; FD 20 DF
	bvc -65.b		; 50 BF
	rti		; 40

	cmp ($DE.b)		; D2 DE
	adc $FE1155.l,X		; 7F 55 11 FE
	sty $FB.b		; 84 FB
	rti		; 40

	cpy $FD65.w		; CC 65 FD
	eor $61.b		; 45 61
	ldy #$4AAD.w		; A0 AD 4A
	phy		; 5A
	sbc ($E9.b,X)		; E1 E9
	cpy #$BECE.w		; C0 CE BE
	sta ($FF.b)		; 92 FF
	jsl $D380DF.l		; 22 DF 80 D3
	tda		; 7B
	sta $FFDD7D.l		; 8F 7D DD FF
	adc $B9.b		; 65 B9
	sbc $3880.w		; ED 80 38
	rti		; 40

	wai		; CB
	ora [$FC.b]		; 07 FC
	trb $00E3.w		; 1C E3 00
	bvc -26.b		; 50 E6
	inx		; E8
	bra -128.b		; 80 80
	dex		; CA
	cld		; D8
	cmp #$EFF4.w		; C9 F4 EF
	bra -64.b		; 80 C0
	dex		; CA
	adc $B222EF.l		; 6F EF 22 B2
	ror A		; 6A
	wai		; CB
	cpx $40.b		; E4 40
	cmp $FE1113.l		; CF 13 11 FE
	jsr ($B841.w,X)		; FC 41 B8
	stx $34.b,Y		; 96 34
	inc $F3D1.w,X		; FE D1 F3
	bpl 111.b		; 10 6F
	jsr ($E900.w,X)		; FC 00 E9
	bra -22.b		; 80 EA
	sbc $807D79.l		; EF 79 7D 80
	eor $A0E2F0.l		; 4F F0 E2 A0
	cmp $803FC2.l,X		; DF C2 3F 80
	inc $FF82.w,X		; FE 82 FF
	eor $D6.b,X		; 55 D6
	eor $B8E084.l,X		; 5F 84 E0 B8
	ora $C07B.w		; 0D 7B C0
	inx		; E8
	ora $20C560.l		; 0F 60 C5 20
	txa		; 8A
	rol $B1.b		; 26 B1
	nop		; EA
	ora $00.b		; 05 00
	dec $FF.b		; C6 FF
	sbc $09F8FF.l,X		; FF FF F8 09
	lda [$00.b],Y		; B7 00
	phb		; 8B
	.db $42, $1C		; 42 1C
	adc $6B.b,S		; 63 6B
	bra -63.b		; 80 C1
	rol $60.b		; 26 60
	asl $13.b		; 06 13
	ldy $314B.w		; AC 4B 31
	sei		; 78
	sty $8AFE.w		; 8C FE 8A
	sbc ($FE.b),Y		; F1 FE
	sbc $F3FE.w,Y		; F9 FE F3
	ldx $FED2.w,Y		; BE D2 FE
	cmp $04.b,X		; D5 04
	adc $A080.w		; 6D 80 A0
	sed		; F8
	ora $D83D.w		; 0D 3D D8
	ora $1FC0.w		; 0D C0 1F
	sbc $686093.l,X		; FF 93 60 68
	sta ($C6.b,X)		; 81 C6
	and ($67.b,X)		; 21 67
	brk $1A.b		; 00 1A
	lda $75.b		; A5 75
	dey		; 88
	cpy #$FABE.w		; C0 BE FA
	ldx $DA.b		; A6 DA
	inc $08FE.w,X		; FE FE 08
	inx		; E8
	eor [$47.b],Y		; 57 47
	cpx #$0BC8.w		; E0 C8 0B
	rts		; 60

	dey		; 88
	phd		; 0B
	cpx #$0DC8.w		; E0 C8 0D
	lsr $BBFC.w,X		; 5E FC BB
	sbc $EFFF.w,X		; FD FF EF
	xce		; FB
	cpx #$0AC8.w		; E0 C8 0A
	tsb $FB.b		; 04 FB
	php		; 08
	sbc [$24.b],Y		; F7 24
	cmp $EDFFE2.l,X		; DF E2 FF ED
	sbc $BF9F.w,X		; FD 9F BF
	sbc [$FB.b],Y		; F7 FB
	dey		; 88
	bra  34.b		; 80 22
	rol $60.b		; 26 60
	dec $03.b,X		; D6 03
	inc $F946.w,X		; FE 46 F9
	eor [$60.b]		; 47 60
	cmp [$22.b],Y		; D7 22
	ldx $5E5E.w		; AE 5E 5E
	sbc $C8E05F.l,X		; FF 5F E0 C8
	phd		; 0B
	adc ($DF.b,X)		; 61 DF
	rts		; 60

	rts		; 60

	sta $C8E0.w		; 8D E0 C8
	ora $7C3B.w		; 0D 3B 7C
	brk $01.b		; 00 01
	jsr $0244.w		; 20 44 02
	pea $E0E3.w		; F4 E3 E0
	cmp $8B80E0.l		; CF E0 80 8B
	sty $D9.b,X		; 94 D9
	sbc [$FD.b]		; E7 FD
	rtl		; 6B

	ora $E1.b,X		; 15 E1
	sbc ($63.b,S),Y		; F3 63
	rts		; 60

	dey		; 88
	asl A		; 0A
	tsb $F2.b		; 04 F2
	tsb $A4.b		; 04 A4
	bit #$CE60.w		; 89 60 CE
	bra -118.b		; 80 8A
	inc $A09B.w,X		; FE 9B A0
	dex		; CA
	inx		; E8
	adc ($79.b),Y		; 71 79
	.db $62, $E6, $E4		; 62 E6 E4
	cpx $C8.b		; E4 C8
	bra -51.b		; 80 CD
	trb $DF.b		; 14 DF
	cmp $A0.b,X		; D5 A0
	pld		; 2B
	cmp $C0BF75.l,X		; DF 75 BF C0
	dec $FC.b		; C6 FC
	lda $40.b		; A5 40
	dec $C0.b		; C6 C0
	cpy $FF.b		; C4 FF
	inc $FFEB.w,X		; FE EB FF
	tsb $EA.b		; 04 EA
	and $0CC040.l		; 2F 40 C0 0C
	rti		; 40

	cpx #$860F.w		; E0 0F 86
	eor $63E5.w,Y		; 59 E5 63
	phk		; 4B
	jsr ($FEF3.w,X)		; FC F3 FE
	sbc [$7F.b],Y		; F7 7F
	sty $9F75.w		; 8C 75 9F
	pla		; 68
	and ($FD.b)		; 32 FD
	inc $E7C3.w,X		; FE C3 E7
	cpx $31CF.w		; EC CF 31
	inc $9FFE.w,X		; FE FE 9F
	inc $FE3F.w,X		; FE 3F FE
	sta $72FC49.l,X		; 9F 49 FC 72
	ror A		; 6A
	sbc $C2DD93.l,X		; FF 93 DD C2
	sbc $FE7496.l,X		; FF 96 74 FE
	and #$7DF3.w		; 29 F3 7D
	adc $C2A483.l,X		; 7F 83 A4 C2
	lda $FAF2A8.l,X		; BF A8 F2 FA
	jsr ($DAFE.w,X)		; FC FE DA
	cld		; D8
	inc $06F2.w		; EE F2 06
	asl $02.b		; 06 02
	brk $AA.b		; 00 AA
	sbc $D640.w,X		; FD 40 D6
	cpy $F2.b		; C4 F2
	rti		; 40

	bne  11.b		; D0 0B
	brk $92.b		; 00 92
	cpy #$0DD0.w		; C0 D0 0D
	cmp $D0C0.w		; CD C0 D0
	trb $98.b		; 14 98
	dec A		; 3A
	eor ($12.b)		; 52 12
	phd		; 0B
	sbc [$55.b],Y		; F7 55
	eor $D7.b		; 45 D7
	cpy #$06D7.w		; C0 D7 06
	sbc ($FF.b,X)		; E1 FF
	txa		; 8A
	ror $A9.b,X		; 76 A9
	jmp ($2F6C.w)		; 6C 6C 2F
	mvn $73,$7B		; 54 7B 73
	asl $06.b,X		; 16 06
	cpx #$D040.w		; E0 40 D0
	asl A		; 0A
	asl $C9.b		; 06 C9
	pha		; 48
	sbc ($40.b,X)		; E1 40
	dec $7F.b,X		; D6 7F
	phd		; 0B
	ldy #$09F8.w		; A0 F8 09
	inc $38FE.w,X		; FE FE 38
	ora $EA.b,S		; 03 EA
	ldx #$F8A0.w		; A2 A0 F8
	phd		; 0B
	jsr ($915E.w,X)		; FC 5E 91
	sbc $E2CC85.l,X		; FF 85 CC E2
	ldy #$F0F8.w		; A0 F8 F0
	ror $DB4A.w,X		; 7E 4A DB
	ora $60DE.w,Y		; 19 DE 60
	cmp $8C.b,X		; D5 8C
	stp		; DB
	ldx $03.b,Y		; B6 03
	sbc $999A85.l,X		; FF 85 9A 99
	adc ($E0.b,X)		; 61 E0
	iny		; C8
	trb $10.b		; 14 10
	cpx #$0EC8.w		; E0 C8 0E
	dec $E1D0.w,X		; DE D0 E1
	rtl		; 6B

	adc $D974B4.l,X		; 7F B4 74 D9
	tas		; 1B
	sbc ($BD.b,S),Y		; F3 BD
	eor $FDAF.w,X		; 5D AF FD
	cmp $5E07.w,X		; DD 07 5E
	cpx $5EFD.w		; EC FD 5E
	cmp ($A4.b,X)		; C1 A4
	cmp $EA60.w,Y		; D9 60 EA
	adc $206797.l,X		; 7F 97 67 20
	cmp $C4E0.w		; CD E0 C4
	sty $60.b		; 84 60
	inx		; E8
	ora $5EFF.w		; 0D FF 5E
	inc $E696.w,X		; FE 96 E6
	jsr ($F5BA.w,X)		; FC BA F5
	adc ($EE.b)		; 72 EE
	sta $C900.w,X		; 9D 00 C9
	inc $DE.b		; E6 DE
	cmp $88.b,X		; D5 88
	sta [$FD.b],Y		; 97 FD
	ora [$BC.b],Y		; 17 BC
	inc $40.b,X		; F6 40
	stz $03D4.w,X		; 9E D4 03
	sbc #$899A.w		; E9 9A 89
	sec		; 38
	clv		; B8
	lda $40.b,S		; A3 40
	stz $FF0A.w,X		; 9E 0A FF
	stz $8E73.w,X		; 9E 73 8E
	cmp ($18.b),Y		; D1 18
	cop $01.b		; 02 01
	asl $18.b,X		; 16 18
	dec A		; 3A
	php		; 08
	ror $AC42.w,X		; 7E 42 AC
	tsb $DE60.w		; 0C 60 DE
	inx		; E8
	sbc $E8.b,S		; E3 E8
	and ($60.b,S),Y		; 33 60
	cmp $C0CDBF.l,X		; DF BF CD C0
	jsr ($89E0.w,X)		; FC E0 89
	cmp ($06.b),Y		; D1 06
	sbc $C09E.w,X		; FD 9E C0
	sed		; F8
	ora #$C27C.w		; 09 7C C2
	sbc ($63.b,X)		; E1 63
	lda $11C0D7.l,X		; BF D7 C0 11
	php		; 08
	ply		; 7A
	bpl -118.b		; 10 8A
	pha		; 48
	jsr $09D8.w		; 20 D8 09
	sbc [$FF.b]		; E7 FF
	sta $20D908.l		; 8F 08 D9 20
	cld		; D8
	ora #$FFFF.w		; 09 FF FF
	cmp $6F.b,S		; C3 6F
	ldy $57.b		; A4 57
	sbc [$EF.b],Y		; F7 EF
	lda $BFABEF.l		; AF EF AB BF
	cmp $7FECDF.l		; CF DF EC 7F
	lda [$BB.b],Y		; B7 BB
	plp		; 28
	lsr $F7.b		; 46 F7
	cpx $5972.w		; EC 72 59
	inc $FEBF.w,X		; FE BF FE
	clc		; 18
	inc $FE34.w,X		; FE 34 FE
	inc $7FEE.w,X		; FE EE 7F
	stz $FF7A.w,X		; 9E 7A FF
	jmp $BEADFE.l		; 5C FE AD BE
	lda $C9A3FE.l,X		; BF FE A3 C9
	inc $42.b,X		; F6 42
	inc $FE38.w,X		; FE 38 FE
	jsr $0BE0.w		; 20 E0 0B
	inx		; E8
	ora [$F2.b]		; 07 F2
	cmp $20BFF6.l		; CF F6 BF 20
	cpx #$D809.w		; E0 09 D8
	sbc ($F3.b)		; F2 F3
	rts		; 60

	sbc ($8C.b,X)		; E1 8C
	rti		; 40

	ora ($6C.b)		; 12 6C
	eor $87A0.w,Y		; 59 A0 87
	rts		; 60

	inc $A0.b		; E6 A0
	rep #$80		; C2 80
	lda $EA.b,S		; A3 EA
	plp		; 28
.ACCU 8
	sep #$A0		; E2 A0
	nop		; EA
	cld		; D8
	pea $88E0.w		; F4 E0 88
	sbc $18414F.l,X		; FF 4F 41 18
	ror $61.b		; 66 61
	sty $28D7.w		; 8C D7 28
	lsr $30.b		; 46 30
	tad		; 5B
	ldy $34.b		; A4 34
	iny		; C8
	tsb $D4.b		; 04 D4
	dex		; CA
	dec $DC58.w,X		; DE 58 DC
	and $FFED40.l,X		; 3F 40 ED FF
	eor $8C.b,X		; 55 8C
	adc ($DB.b,S),Y		; 73 DB
	tad		; 5B
	and ($EE.b,X)		; 21 EE
	cmp ($BF.b),Y		; D1 BF
	lda $FCA4ED.l,X		; BF ED A4 FC
	bra -14.b		; 80 F2
	cpx #$F8C2.w		; E0 C2 F8
	cop $E0.b		; 02 E0
	sty $FB.b,X		; 94 FB
	cmp $B765.w		; CD 65 B7
	bra -88.b		; 80 A8
	asl A		; 0A
	iny		; C8
	sbc $CAFF.w,Y		; F9 FF CA
	sbc $8509F8.l,X		; FF F8 09 85
	xce		; FB
	lda $DF3345.l		; AF 45 33 DF
	ldx $17.b,Y		; B6 17
	txa		; 8A
	ldy $2F7A.w		; AC 7A 2F
	bpl -11.b		; 10 F5
	ror $F7FB.w,X		; 7E FB F7
	cmp $5AFCA0.l,X		; DF A0 FC 5A
.ACCU 16
	rep #$AD		; C2 AD
	sbc $C91ED6.l,X		; FF D6 1E C9
	rts		; 60

	tay		; A8
	ora $B0DF.w		; 0D DF B0
	ora $97DFF3.l		; 0F F3 DF 97
	sbc $D1F797.l,X		; FF 97 F7 D1
	bcs   4.b		; B0 04
	cmp $FD1BCC.l,X		; DF CC 1B FD
	ldy #$40B2.w		; A0 B2 40
	eor $F5.b,X		; 55 F5
.ACCU 16
	rep #$EF		; C2 EF
	rti		; 40

	sbc $0FB0A0.l,X		; FF A0 B0 0F
	sta $0010B0.l,X		; 9F B0 10 00
	lda $FFB6C0.l,X		; BF C0 B6 FF
	sed		; F8
	ora $97E8.w		; 0D E8 97
	sbc $DF2F5F.l,X		; FF 5F 2F DF
	sbc $FFA47F.l		; EF 7F A4 FF
	adc $E7.b,S		; 63 E7
	plp		; 28
	sbc $16DB1D.l		; EF 1D DB 16
	lda $D5FE00.l,X		; BF 00 FE D5
	sbc $80B1A6.l,X		; FF A6 B1 80
	sbc ($A0.b,S),Y		; F3 A0
	bcs  15.b		; B0 0F
	ldy #$0FF8.w		; A0 F8 0F
	sbc $7EFF.w		; ED FF 7E
	inc $F5AC.w,X		; FE AC F5
	lda #$7FF2.w		; A9 F2 7F
	bne  69.b		; D0 45
	sbc [$24.b]		; E7 24
	cmp $1F9F81.l		; CF 81 9F 1F
	and $EA66C0.l,X		; 3F C0 66 EA
	sbc $5709F8.l,X		; FF F8 09 57
	eor $66.b,X		; 55 66
	ora $401F63.l,X		; 1F 63 1F 40
	cpy #$FF1B.w		; C0 1B FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
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
	sbc $01.b,S		; E3 01
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $020C01.l,X		; FF 01 0C 02
	tsb $0C03.w		; 0C 03 0C
	tsb $0C.b		; 04 0C
	ora $0C.b		; 05 0C
	asl $0C.b		; 06 0C
	ora [$0C.b]		; 07 0C
	php		; 08
	lda $090CFD.l,X		; BF FD 0C 09
	tsb $0C0A.w		; 0C 0A 0C
	phd		; 0B
	tsb $F8FF.w		; 0C FF F8
	inc A		; 1A
	jmp $F8FE.w		; 4C FE F8
	ora $0C0D.w		; 0D 0D 0C
	asl $FF0C.w		; 0E 0C FF
	lda $100C0F.l,X		; BF 0F 0C 10
	tsb $0C11.w		; 0C 11 0C
	ora ($0C.b)		; 12 0C
	ora ($0C.b,S),Y		; 13 0C
	trb $0C.b		; 14 0C
	ora $0C.b,X		; 15 0C
	asl $FE.b,X		; 16 FE
	sbc $1BF8C2.l,X		; FF C2 F8 1B
	cpy #$10F8.w		; C0 F8 10
	ora [$0C.b],Y		; 17 0C
	clc		; 18
	tsb $0C19.w		; 0C 19 0C
	inc A		; 1A
	tsb $0C1B.w		; 0C 1B 0C
	trb $1D0C.w		; 1C 0C 1D
	adc $1E0CFF.l,X		; 7F FF 0C 1E
	tsb $0C1F.w		; 0C 1F 0C
	jsr $210C.w		; 20 0C 21
	cpy #$2AF8.w		; C0 F8 2A
	jsl $0C230C.l		; 22 0C 23 0C
	bit $0C.b		; 24 0C
	sbc $0C25FF.l,X		; FF FF 25 0C
	rol $0C.b		; 26 0C
	and [$0C.b]		; 27 0C
	plp		; 28
	tsb $0C29.w		; 0C 29 0C
	rol A		; 2A
	tsb $0C2B.w		; 0C 2B 0C
	bit $7B0C.w		; 2C 0C 7B
	clv		; B8
	and $2E0C.w		; 2D 0C 2E
	cmp $F8.b		; C5 F8
	ora ($A8.b)		; 12 A8
	php		; 08
	lda #$48FE.w		; A9 FE 48
	tay		; A8
	pha		; 48
	sbc $F8C0FF.l,X		; FF FF C0 F8
	phd		; 0B
	and $0C300C.l		; 2F 0C 30 0C
	and ($0C.b),Y		; 31 0C
	and ($0C.b)		; 32 0C
	and ($0C.b,S),Y		; 33 0C
	bit $0C.b,X		; 34 0C
	and $0C.b,X		; 35 0C
	rol $FF.b,X		; 36 FF
	cmp $0C370C.l,X		; DF 0C 37 0C
	sec		; 38
	tsb $0C39.w		; 0C 39 0C
	dec A		; 3A
	tsb $0C3B.w		; 0C 3B 0C
	bit $3D0C.w,X		; 3C 0C 3D
	cpy $F8.b		; C4 F8
	asl A		; 0A
	and $08AAFC.l,X		; 3F FC AA 08
	plb		; AB
	php		; 08
	ldy $AD08.w		; AC 08 AD
	inc $AC48.w,X		; FE 48 AC
	pha		; 48
	plb		; AB
	pha		; 48
	inc $AAFF.w,X		; FE FF AA
	ldy $3EFF.w,X		; BC FF 3E
	tsb $0C3F.w		; 0C 3F 0C
	rti		; 40

	tsb $0C41.w		; 0C 41 0C
	.db $42, $0C		; 42 0C
	eor $0C.b,S		; 43 0C
	mvp $7C,$3F		; 44 3F 7C
	tsb $0C45.w		; 0C 45 0C
	lsr $0C.b		; 46 0C
	eor [$0C.b]		; 47 0C
	sbc $49.b,S		; E3 49
	tsb $0C4A.w		; 0C 4A 0C
	phk		; 4B
	ldy $E17F.w,X		; BC 7F E1
	eor $AE0C.w		; 4D 0C AE
	cpy #$AFFD.w		; C0 FD AF
	php		; 08
	bcs   8.b		; B0 08
	lda ($08.b),Y		; B1 08
	lda ($F8.b)		; B2 F8
	sbc $48FE.w,X		; FD FE 48
	lda ($48.b),Y		; B1 48
	bcs  72.b		; B0 48
	lda $AEFDC0.l		; AF C0 FD AE
	jmp $0C4E.w		; 4C 4E 0C
	sbc $0C4FFF.l,X		; FF FF 4F 0C
	bvc  12.b		; 50 0C
	eor ($0C.b),Y		; 51 0C
	eor ($0C.b)		; 52 0C
	eor ($0C.b,S),Y		; 53 0C
	mvn $55,$0C		; 54 0C 55
	tsb $0C56.w		; 0C 56 0C
	sbc $0C573F.l,X		; FF 3F 57 0C
	cli		; 58
	tsb $0C59.w		; 0C 59 0C
	phy		; 5A
	tsb $0C5B.w		; 0C 5B 0C
	jmp $0C5D0C.l		; 5C 0C 5D 0C
	lda ($FE.b,S),Y		; B3 FE
	ora $08B4FE.l,X		; 1F FE B4 08
	lda $08.b,X		; B5 08
	ldx $08.b,Y		; B6 08
	lda [$08.b],Y		; B7 08
	clv		; B8
	php		; 08
	lda $3FFE.w,Y		; B9 FE 3F
	inc $B848.w,X		; FE 48 B8
	pha		; 48
	lda [$48.b],Y		; B7 48
	ldx $48.b,Y		; B6 48
	lda $48.b,X		; B5 48
	ldy $48.b,X		; B4 48
	lda ($4C.b,S),Y		; B3 4C
	jsr ($FEFF.w,X)		; FC FF FE
	lsr $5F0C.w,X		; 5E 0C 5F
	tsb $0C60.w		; 0C 60 0C
	adc ($0C.b,X)		; 61 0C
	.db $62, $0C, $63		; 62 0C 63
	tsb $FF64.w		; 0C 64 FF
	sbc $0C650C.l,X		; FF 0C 65 0C
	ror $0C.b		; 66 0C
	adc [$0C.b]		; 67 0C
	pla		; 68
	tsb $0C69.w		; 0C 69 0C
	ror A		; 6A
	tsb $0C6B.w		; 0C 6B 0C
	jmp ($FFFF.w)		; 6C FF FF
	tsb $0C6D.w		; 0C 6D 0C
	tsx		; BA
	php		; 08
	tyx		; BB
	php		; 08
	ldy $BD08.w,X		; BC 08 BD
	php		; 08
	ldx $BF08.w,Y		; BE 08 BF
	php		; 08
	cpy #$FFE1.w		; C0 E1 FF
	php		; 08
	cmp ($FE.b,X)		; C1 FE
	pha		; 48
	cpy #$BF48.w		; C0 48 BF
	pha		; 48
	ldx $BD48.w,Y		; BE 48 BD
	pha		; 48
	ldy $FFFF.w,X		; BC FF FF
	pha		; 48
	tyx		; BB
	pha		; 48
	tsx		; BA
	pha		; 48
	ror $6F0C.w		; 6E 0C 6F
	tsb $0C70.w		; 0C 70 0C
	adc ($0C.b),Y		; 71 0C
	adc ($0C.b)		; 72 0C
	adc ($FF.b,S),Y		; 73 FF
	sbc $0C740C.l,X		; FF 0C 74 0C
	adc $0C.b,X		; 75 0C
	ror $0C.b,X		; 76 0C
	adc [$0C.b],Y		; 77 0C
	sei		; 78
	tsb $0C79.w		; 0C 79 0C
	ply		; 7A
	tsb $FF7B.w		; 0C 7B FF
	sbc $0C7C0C.l,X		; FF 0C 7C 0C
	adc $C20C.w,X		; 7D 0C C2
	php		; 08
	cmp $08.b,S		; C3 08
	cpy $08.b		; C4 08
	cmp $08.b		; C5 08
	dec $08.b		; C6 08
	cmp [$87.b]		; C7 87
	sbc $08C808.l,X		; FF 08 C8 08
	cmp #$48FE.w		; C9 FE 48
	iny		; C8
	pha		; 48
	cmp [$48.b]		; C7 48
	dec $48.b		; C6 48
	cmp $FF.b		; C5 FF
	sbc $48C448.l,X		; FF 48 C4 48
	cmp $48.b,S		; C3 48
	rep #$48		; C2 48
	ror $7F0C.w,X		; 7E 0C 7F
	tsb $0C80.w		; 0C 80 0C
	sta ($0C.b,X)		; 81 0C
	.db $82, $FF, $FD		; 82 FF FD
	tsb $0C83.w		; 0C 83 0C
	sty $0C.b		; 84 0C
	sta $0C.b		; 85 0C
	stx $0C.b		; 86 0C
	sta [$FC.b]		; 87 FC
	sbc $890C88.l,X		; FF 88 0C 89
	tsb $3FFF.w		; 0C FF 3F
	dex		; CA
	php		; 08
	wai		; CB
	php		; 08
	cpy $CD08.w		; CC 08 CD
	php		; 08
	dec $CF08.w		; CE 08 CF
	php		; 08
	bne   8.b		; D0 08
	cmp ($FC.b),Y		; D1 FC
	sbc $D048FE.l,X		; FF FE 48 D0
	pha		; 48
	cmp $48CE48.l		; CF 48 CE 48
	cmp $CC48.w		; CD 48 CC
	pha		; 48
	wai		; CB
	pha		; 48
	sbc $48CAFF.l,X		; FF FF CA 48
	txa		; 8A
	tsb $0C8B.w		; 0C 8B 0C
	sty $8D0C.w		; 8C 0C 8D
	tsb $0C8E.w		; 0C 8E 0C
	sta $0C900C.l		; 8F 0C 90 0C
	sbc $0C9118.l,X		; FF 18 91 0C
	sta ($0C.b)		; 92 0C
	sta ($0C.b,S),Y		; 93 0C
	sty $0C.b,X		; 94 0C
	sta $FE.b,X		; 95 FE
	stx $FF.b,Y		; 96 FF
	sta [$F8.b]		; 87 F8
	sta [$0C.b],Y		; 97 0C
	cmp ($08.b)		; D2 08
	cmp ($08.b,S),Y		; D3 08
	pei ($08.b)		; D4 08
	cmp $08.b,X		; D5 08
	sed		; F8
	ora $08D6FF.l		; 0F FF D6 08
	cmp [$08.b],Y		; D7 08
	cld		; D8
	inc $D748.w,X		; FE 48 D7
	pha		; 48
	dec $48.b,X		; D6 48
	cmp ($48.b)		; D2 48
	sta $48D5FF.l		; 8F FF D5 48
	pei ($48.b)		; D4 48
	cmp ($F8.b,S),Y		; D3 F8
	tya		; 98
	tsb $0C99.w		; 0C 99 0C
	txs		; 9A
	tsb $059B.w		; 0C 9B 05
	sta ($0C.b)		; 92 0C
	stz $FDC0.w		; 9C C0 FD
	sed		; F8
	inc $FCC0.w,X		; FE C0 FC
	inc $F6FF.w,X		; FE FF F6
	cmp $DA08.w,Y		; D9 08 DA
	php		; 08
	stp		; DB
	php		; 08
	jmp.w [$DD08]		; DC 08 DD
	php		; 08
	dec $DF08.w,X		; DE 08 DF
	php		; 08
	beq  -1.b		; F0 FF
	cpx #$48FE.w		; E0 FE 48
	cmp $48DE48.l,X		; DF 48 DE 48
	cmp $DC48.w,X		; DD 48 DC
	pha		; 48
	stp		; DB
	pha		; 48
	lda $48DA67.l,X		; BF 67 DA 48
	cmp $9D48.w,Y		; D9 48 9D
	tsb $C09E.w		; 0C 9E C0
	sed		; F8
	asl $0C9F.w		; 0E 9F 0C
	ldy #$82C0.w		; A0 C0 82
	sbc $E1F230.l,X		; FF 30 F2 E1
	php		; 08
	sep #$08		; E2 08
	sbc $08.b,S		; E3 08
	cpx $08.b		; E4 08
	and $08E5FC.l,X		; 3F FC E5 08
	inc $08.b		; E6 08
	sbc [$08.b]		; E7 08
	inx		; E8
	inc $E748.w,X		; FE 48 E7
	pha		; 48
	inc $48.b		; E6 48
	sbc $48E5FF.l,X		; FF FF E5 48
	cpx $48.b		; E4 48
	sbc $48.b,S		; E3 48
	sep #$48		; E2 48
	sbc ($48.b,X)		; E1 48
	lda ($0C.b,X)		; A1 0C
	ldx #$A30C.w		; A2 0C A3
	tsb $670B.w		; 0C 0B 67
	ldy $0C.b		; A4 0C
	lda $C0.b		; A5 C0
	sbc $A6F8.w,X		; FD F8 A6
	tsb $C0A7.w		; 0C A7 C0
	.db $82, $FF, $F0		; 82 FF F0
	sbc ($E9.b)		; F2 E9
	php		; 08
	nop		; EA
	php		; 08
	xba		; EB
	php		; 08
	cpx $3F08.w		; EC 08 3F
	jsr ($08ED.w,X)		; FC ED 08
	inc $EF08.w		; EE 08 EF
	php		; 08
	beq  -2.b		; F0 FE
	pha		; 48
	sbc $48EE48.l		; EF 48 EE 48
	sbc $48EDFF.l,X		; FF FF ED 48
	cpx $EB48.w		; EC 48 EB
	pha		; 48
	nop		; EA
	pha		; 48
	sbc #$F148.w		; E9 48 F1
	tsb $0CF2.w		; 0C F2 0C
	sbc ($0C.b,S),Y		; F3 0C
	xce		; FB
	sbc $F50CF4.l,X		; FF F4 0C F5
	cpy #$F6FD.w		; C0 FD F6
	php		; 08
	sbc [$08.b],Y		; F7 08
	sed		; F8
	php		; 08
	sbc $FA08.w,Y		; F9 08 FA
	php		; 08
	xce		; FB
	sta [$0F.b]		; 87 0F
	php		; 08
	jsr ($FD08.w,X)		; FC 08 FD
	iny		; C8
	ora #$09EE.w		; 09 EE 09
	sbc $F87F09.l		; EF 09 7F F8
	plx		; FA
	beq   9.b		; F0 09
	sbc ($09.b),Y		; F1 09
	sbc ($09.b)		; F2 09
	sbc ($FE.b,S),Y		; F3 FE
	eor #$49F2.w		; 49 F2 49
	sbc ($7F.b),Y		; F1 7F
	jsr ($F049.w,X)		; FC 49 F0
	eor #$49ED.w		; 49 ED 49
	sbc $FAEE49.l		; EF 49 EE FA
	inc $FF0C.w,X		; FE 0C FF
	bpl  -1.b		; 10 FF
	sbc $011100.l,X		; FF 00 11 01
	ora ($02.b),Y		; 11 02
	ora ($03.b),Y		; 11 03
	ora ($04.b),Y		; 11 04
	ora ($05.b),Y		; 11 05
	ora ($06.b),Y		; 11 06
	ora ($07.b),Y		; 11 07
	ora ($FF.b),Y		; 11 FF
	sbc $091108.l,X		; FF 08 11 09
	ora ($0A.b),Y		; 11 0A
	ora ($0B.b),Y		; 11 0B
	ora ($0C.b),Y		; 11 0C
	ora ($0D.b),Y		; 11 0D
	ora ($F4.b),Y		; 11 F4
	ora ($F5.b),Y		; 11 F5
	ora ($FF.b),Y		; 11 FF
	cmp $F6.b,S		; C3 F6
	ora ($F7.b),Y		; 11 F7
	ora ($F8.b),Y		; 11 F8
	ora ($F9.b),Y		; 11 F9
	ora ($FA.b),Y		; 11 FA
	ora ($FB.b),Y		; 11 FB
	inc $FF51.w,X		; FE 51 FF
	sbc $F951FA.l,X		; FF FA 51 F9
	eor ($F8.b),Y		; 51 F8
	eor ($F7.b),Y		; 51 F7
	eor ($F6.b),Y		; 51 F6
	eor ($F5.b),Y		; 51 F5
	eor ($F4.b),Y		; 51 F4
	eor ($0E.b),Y		; 51 0E
	ora ($87.b),Y		; 11 87
	sbc $10110F.l,X		; FF 0F 11 10
	ora ($FF.b),Y		; 11 FF
	ora ($11.b)		; 12 11
	ora ($11.b,S),Y		; 13 11
	trb $11.b		; 14 11
	ora $11.b,X		; 15 11
	sbc $11163F.l,X		; FF 3F 16 11
	ora [$11.b],Y		; 17 11
	clc		; 18
	ora ($19.b),Y		; 11 19
	ora ($1A.b),Y		; 11 1A
	ora ($1B.b),Y		; 11 1B
	ora ($1C.b),Y		; 11 1C
	ora ($1D.b),Y		; 11 1D
	jsr ($ACFF.w,X)		; FC FF AC
	ora ($05.b)		; 12 05
	ora ($06.b)		; 12 06
	ora ($07.b)		; 12 07
	ora ($08.b)		; 12 08
	ora ($09.b)		; 12 09
	ora ($0A.b)		; 12 0A
	ora ($F0.b)		; 12 F0
	sbc $52FE0B.l,X		; FF 0B FE 52
	asl A		; 0A
	eor ($09.b)		; 52 09
	eor ($08.b)		; 52 08
	eor ($07.b)		; 52 07
	eor ($06.b)		; 52 06
	eor ($FF.b)		; 52 FF
	sbc $045205.l,X		; FF 05 52 04
	eor ($1E.b)		; 52 1E
	ora ($1F.b),Y		; 11 1F
	ora ($20.b),Y		; 11 20
	ora ($21.b),Y		; 11 21
	ora ($22.b),Y		; 11 22
	ora ($23.b),Y		; 11 23
	ora ($FF.b),Y		; 11 FF
	sbc $251124.l,X		; FF 24 11 25
	ora ($26.b),Y		; 11 26
	ora ($27.b),Y		; 11 27
	ora ($28.b),Y		; 11 28
	ora ($29.b),Y		; 11 29
	ora ($2A.b),Y		; 11 2A
	ora ($2B.b),Y		; 11 2B
	ora ($C3.b),Y		; 11 C3
	sbc $2D112C.l,X		; FF 2C 11 2D
	ldy $1512.w		; AC 12 15
	ora ($16.b)		; 12 16
	ora ($17.b)		; 12 17
	ora ($18.b)		; 12 18
	ora ($0F.b)		; 12 0F
	sbc $1A1219.l,X		; FF 19 12 1A
	ora ($1B.b)		; 12 1B
	inc $1A52.w,X		; FE 52 1A
	eor ($19.b)		; 52 19
	eor ($18.b)		; 52 18
	eor ($FF.b)		; 52 FF
	sbc $165217.l,X		; FF 17 52 16
	eor ($15.b)		; 52 15
	eor ($14.b)		; 52 14
	eor ($2E.b)		; 52 2E
	ora ($2F.b),Y		; 11 2F
	ora ($30.b),Y		; 11 30
	ora ($31.b),Y		; 11 31
	ora ($FF.b),Y		; 11 FF
	sbc $331132.l,X		; FF 32 11 33
	ora ($34.b),Y		; 11 34
	ora ($35.b),Y		; 11 35
	ora ($36.b),Y		; 11 36
	ora ($37.b),Y		; 11 37
	ora ($38.b),Y		; 11 38
	ora ($39.b),Y		; 11 39
	ora ($3F.b),Y		; 11 3F
	jsr ($113A.w,X)		; FC 3A 11
	tsa		; 3B
	ora ($3C.b),Y		; 11 3C
	ora ($3D.b),Y		; 11 3D
	tax		; AA
	ora ($24.b)		; 12 24
	ora ($25.b)		; 12 25
	ora ($FF.b)		; 12 FF
	beq  38.b		; F0 26
	ora ($27.b)		; 12 27
	ora ($28.b)		; 12 28
	ora ($29.b)		; 12 29
	ora ($2A.b)		; 12 2A
	inc $2952.w,X		; FE 52 29
	eor ($FF.b)		; 52 FF
	sbc $275228.l,X		; FF 28 52 27
	eor ($26.b)		; 52 26
	eor ($25.b)		; 52 25
	eor ($24.b)		; 52 24
	eor ($23.b)		; 52 23
	eor ($3E.b)		; 52 3E
	ora ($3F.b),Y		; 11 3F
	ora ($FF.b),Y		; 11 FF
	sbc $411140.l,X		; FF 40 11 41
	ora ($42.b),Y		; 11 42
	ora ($43.b),Y		; 11 43
	ora ($44.b),Y		; 11 44
	ora ($45.b),Y		; 11 45
	ora ($64.b),Y		; 11 64
	ora ($65.b)		; 12 65
	ora ($FF.b)		; 12 FF
	sbc $671266.l,X		; FF 66 12 67
	ora ($68.b)		; 12 68
	ora ($69.b)		; 12 69
	ora ($6A.b)		; 12 6A
	ora ($6B.b)		; 12 6B
	ora ($32.b)		; 12 32
	ora ($33.b)		; 12 33
	ora ($FF.b)		; 12 FF
	cmp $34.b,S		; C3 34
	ora ($35.b)		; 12 35
	ora ($36.b)		; 12 36
	ora ($37.b)		; 12 37
	ora ($38.b)		; 12 38
	ora ($39.b)		; 12 39
	inc $FF52.w,X		; FE 52 FF
	sbc $375238.l,X		; FF 38 52 37
	eor ($36.b)		; 52 36
	eor ($35.b)		; 52 35
	eor ($34.b)		; 52 34
	eor ($33.b)		; 52 33
	eor ($32.b)		; 52 32
	eor ($FC.b)		; 52 FC
	ora ($FF.b),Y		; 11 FF
	sbc $FE11FD.l,X		; FF FD 11 FE
	ora ($FF.b),Y		; 11 FF
	ora ($00.b),Y		; 11 00
	ora ($01.b)		; 12 01
	ora ($02.b)		; 12 02
	ora ($03.b)		; 12 03
	ora ($71.b)		; 12 71
	ora ($FF.b)		; 12 FF
	sbc $731272.l,X		; FF 72 12 73
	ora ($74.b)		; 12 74
	ora ($75.b)		; 12 75
	ora ($76.b)		; 12 76
	ora ($46.b)		; 12 46
	ora ($77.b)		; 12 77
	ora ($40.b)		; 12 40
	ora ($FF.b)		; 12 FF
	clc		; 18
	eor ($12.b,X)		; 41 12
	.db $42, $12		; 42 12
	eor $12.b,S		; 43 12
	mvp $45,$12		; 44 12 45
	beq  71.b		; F0 47
	inc $FEFF.w,X		; FE FF FE
	eor ($46.b)		; 52 46
	eor ($45.b)		; 52 45
	eor ($44.b)		; 52 44
	eor ($43.b)		; 52 43
	eor ($42.b)		; 52 42
	eor ($41.b)		; 52 41
	eor ($40.b)		; 52 40
	sbc $0C520F.l,X		; FF 0F 52 0C
	ora ($0D.b)		; 12 0D
	ora ($0E.b)		; 12 0E
	ora ($0F.b)		; 12 0F
	ora ($10.b)		; 12 10
	ora ($11.b)		; 12 11
	ora ($FF.b)		; 12 FF
	sbc $1213FF.l,X		; FF FF 13 12
	jmp ($7D12.w,X)		; 7C 12 7D
	ora ($7E.b)		; 12 7E
	ora ($7F.b)		; 12 7F
	ora ($4E.b)		; 12 4E
	ora ($80.b)		; 12 80
	ora ($81.b)		; 12 81
	sbc ($FF.b),Y		; F1 FF
	ora ($82.b)		; 12 82
	sed		; F8
	eor $125012.l		; 4F 12 50 12
	eor ($12.b),Y		; 51 12
	eor ($12.b)		; 52 12
	eor ($12.b,S),Y		; 53 12
	cmp $87.b,S		; C3 87
	mvn $55,$12		; 54 12 55
	inc $5452.w,X		; FE 52 54
	eor ($53.b)		; 52 53
	eor ($FF.b)		; 52 FF
	sbc $5251FF.l,X		; FF FF 51 52
	bvc  82.b		; 50 52
	eor $524E52.l		; 4F 52 4E 52
	trb $1D12.w		; 1C 12 1D
	ora ($1E.b)		; 12 1E
	ora ($1F.b)		; 12 1F
	ora ($8F.b)		; 12 8F
	ora $211220.l,X		; 1F 20 12 21
	ora ($22.b)		; 12 22
	sed		; F8
	stx $12.b		; 86 12
	sta [$12.b]		; 87 12
	rts		; 60

	cmp $88F8E7.l		; CF E7 F8 88
	ora ($89.b)		; 12 89
	sed		; F8
	lsr $5F12.w,X		; 5E 12 5F
	sed		; F8
	adc $F8.b,S		; 63 F8
	adc ($12.b,X)		; 61 12
	.db $62, $F8, $63		; 62 F8 63
	inc $6052.w,X		; FE 52 60
	eor ($62.b)		; 52 62
	cmp [$FF.b]		; C7 FF
	eor ($61.b)		; 52 61
	eor ($1F.b)		; 52 1F
	sed		; F8
	eor $525E52.l,X		; 5F 52 5E 52
	pld		; 2B
	ora ($2C.b)		; 12 2C
	ora ($87.b)		; 12 87
	cmp $2E122D.l		; CF 2D 12 2E
	ora ($F8.b)		; 12 F8
	and $123012.l		; 2F 12 30 12
	and ($1F.b),Y		; 31 1F
	sbc $128CF8.l		; EF F8 8C 12
	sta $6C12.w		; 8D 12 6C
	sed		; F8
	adc $8E12.w		; 6D 12 8E
	sed		; F8
	sbc $396E.w,X		; FD 6E 39
	jsr ($6F12.w,X)		; FC 12 6F
	sed		; F8
	bvs  -2.b		; 70 FE
	eor ($6D.b)		; 52 6D
	eor ($2F.b)		; 52 2F
	eor ($F3.b)		; 52 F3
	sbc $6E526F.l,X		; FF 6F 52 6E
	sed		; F8
	jmp ($3A52.w)		; 6C 52 3A
	ora ($3B.b)		; 12 3B
	ora ($3C.b)		; 12 3C
	ora ($3D.b)		; 12 3D
	sbc [$CF.b]		; E7 CF
	ora ($3E.b)		; 12 3E
	ora ($3F.b)		; 12 3F
	sed		; F8
	sei		; 78
	ora ($8F.b)		; 12 8F
	ora ($90.b)		; 12 90
	sta $79F8A1.l,X		; 9F A1 F8 79
	ora ($91.b)		; 12 91
	ora ($92.b)		; 12 92
	sed		; F8
	inx		; E8
	ply		; 7A
	sbc ($DF.b,X)		; E1 DF
	sed		; F8
	sbc $FE7B.w,X		; FD 7B FE
	eor ($3C.b)		; 52 3C
	eor ($79.b)		; 52 79
	eor ($78.b)		; 52 78
	eor ($7A.b)		; 52 7A
	sed		; F8
	sbc $FA7F.w,X		; FD 7F FA
	pha		; 48
	ora ($49.b)		; 12 49
	ora ($4A.b)		; 12 4A
	ora ($4B.b)		; 12 4B
	ora ($F8.b)		; 12 F8
	jmp $4D12.w		; 4C 12 4D
	ora ($63.b)		; 12 63
	bit $1293.w,X		; 3C 93 12
	sty $F8.b,X		; 94 F8
	sta $F0.b,X		; 95 F0
	stx $12.b,Y		; 96 12
	sta [$C3.b],Y		; 97 C3
	ora $E8F8.w		; 0D F8 E8
	sta $12.b,S		; 83 12
	sty $E0.b		; 84 E0
	sbc $0F85.w,X		; FD 85 0F
	cmp $4C52FE.l		; CF FE 52 4C
	eor ($49.b)		; 52 49
	dex		; CA
	eor ($84.b)		; 52 84
	eor ($83.b)		; 52 83
	sbc $56F87F.l,X		; FF 7F F8 56
	ora ($57.b)		; 12 57
	ora ($58.b)		; 12 58
	ora ($59.b)		; 12 59
	ora ($5A.b)		; 12 5A
	ora ($5B.b)		; 12 5B
	ora ($5C.b)		; 12 5C
	ora ($5D.b)		; 12 5D
	ldx $5B.b		; A6 5B
	sed		; F8
	beq -104.b		; F0 98
	ora ($99.b)		; 12 99
	inx		; E8
	sbc $FDF88A.l,X		; FF 8A F8 FD
	php		; 08
	sbc $FE8BF0.l,X		; FF F0 8B FE
	eor ($58.b)		; 52 58
	eor ($5B.b)		; 52 5B
	eor ($5A.b)		; 52 5A
	eor ($73.b)		; 52 73
	sbc $59.b,X		; F5 59
	eor ($8A.b)		; 52 8A
	sed		; F8
	brk $FF.b		; 00 FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	eor ($F6.b,X)		; 41 F6
	cpy #$0B09.w		; C0 09 0B
	jmp $FFFF.w		; 4C FF FF
	asl A		; 0A
	jmp $4C09.w		; 4C 09 4C
	php		; 08
	jmp $4C07.w		; 4C 07 4C
	asl $4C.b		; 06 4C
	ora $4C.b		; 05 4C
	tsb $4C.b		; 04 4C
	ora $4C.b,S		; 03 4C
	ora [$FE.b],Y		; 17 FE
	cop $4C.b		; 02 4C
	ora ($4C.b,X)		; 01 4C
	cpy #$29F8.w		; C0 F8 29
	inc $4C16.w,X		; FE 16 4C
	ora $4C.b,X		; 15 4C
	trb $4C.b		; 14 4C
	sbc $4C13EF.l,X		; FF EF 13 4C
	ora ($4C.b)		; 12 4C
	ora ($4C.b),Y		; 11 4C
	bpl  76.b		; 10 4C
	ora $4C0E4C.l		; 0F 4C 0E 4C
	ora $F8C0.w		; 0D C0 F8
	rol A		; 2A
	and ($FF.b,X)		; 21 FF
	sbc $4C204C.l,X		; FF 4C 20 4C
	ora $4C1E4C.l,X		; 1F 4C 1E 4C
	ora $1C4C.w,X		; 1D 4C 1C
	jmp $4C1B.w		; 4C 1B 4C
	inc A		; 1A
	jmp $F719.w		; 4C 19 F7
	sbc $4C184C.l,X		; FF 4C 18 4C
	ora [$C0.b],Y		; 17 C0
	sed		; F8
	rol $2E.b		; 26 2E
	jmp $4C2D.w		; 4C 2D 4C
	bit $2B4C.w		; 2C 4C 2B
	jmp $4C2A.w		; 4C 2A 4C
	sbc $4C29BF.l,X		; FF BF 29 4C
	plp		; 28
	jmp $4C27.w		; 4C 27 4C
	rol $4C.b		; 26 4C
	and $4C.b		; 25 4C
	bit $4C.b		; 24 4C
	and $4C.b,S		; 23 4C
	jsl $C0FFFF.l		; 22 FF FF C0
	sed		; F8
	jsl $3C4C3D.l		; 22 3D 4C 3C
	jmp $4C3B.w		; 4C 3B 4C
	dec A		; 3A
	jmp $4C39.w		; 4C 39 4C
	sec		; 38
	jmp $4C37.w		; 4C 37 4C
	rol $FF.b,X		; 36 FF
	cmp $4C354C.l,X		; DF 4C 35 4C
	bit $4C.b,X		; 34 4C
	and ($4C.b,S),Y		; 33 4C
	and ($4C.b)		; 32 4C
	and ($4C.b),Y		; 31 4C
	bmi  76.b		; 30 4C
	and $20F8C0.l		; 2F C0 F8 20
	sbc ($FF.b,X)		; E1 FF
	eor $FF4C.w		; 4D 4C FF
	phk		; 4B
	jmp $4C4A.w		; 4C 4A 4C
	eor #$484C.w		; 49 4C 48
	jmp $4C47.w		; 4C 47 4C
	sbc $4C46FF.l,X		; FF FF 46 4C
	eor $4C.b		; 45 4C
	mvp $43,$4C		; 44 4C 43
	jmp $4C42.w		; 4C 42 4C
	eor ($4C.b,X)		; 41 4C
	rti		; 40

	jmp $4C3F.w		; 4C 3F 4C
	inc $3EFF.w,X		; FE FF 3E
	cpy #$20F8.w		; C0 F8 20
	eor $5C4C.w,X		; 5D 4C 5C
	jmp $4C5B.w		; 4C 5B 4C
	phy		; 5A
	jmp $4C59.w		; 4C 59 4C
	cli		; 58
	jmp $FF57.w		; 4C 57 FF
	sbc $4C564C.l,X		; FF 4C 56 4C
	eor $4C.b,X		; 55 4C
	mvn $53,$4C		; 54 4C 53
	jmp $4C52.w		; 4C 52 4C
	eor ($4C.b),Y		; 51 4C
	bvc  76.b		; 50 4C
	eor $4CFFFD.l		; 4F FD FF 4C
	lsr $F8C0.w		; 4E C0 F8
	jsr $4C6D.w		; 20 6D 4C
	jmp ($6B4C.w)		; 6C 4C 6B
	jmp $4C6A.w		; 4C 6A 4C
	adc #$684C.w		; 69 4C 68
	jmp $FFFF.w		; 4C FF FF
	adc [$4C.b]		; 67 4C
	ror $4C.b		; 66 4C
	adc $4C.b		; 65 4C
	stz $4C.b		; 64 4C
	adc $4C.b,S		; 63 4C
	.db $62, $4C, $61		; 62 4C 61
	jmp $4C60.w		; 4C 60 4C
	xce		; FB
	sbc $5E4C5F.l,X		; FF 5F 4C 5E
	cpy #$20F8.w		; C0 F8 20
	adc $7C4C.w,X		; 7D 4C 7C
	jmp $4C7B.w		; 4C 7B 4C
	ply		; 7A
	jmp $4C79.w		; 4C 79 4C
	sei		; 78
	sbc $774CFF.l,X		; FF FF 4C 77
	jmp $4C76.w		; 4C 76 4C
	adc $4C.b,X		; 75 4C
	stz $4C.b,X		; 74 4C
	adc ($4C.b,S),Y		; 73 4C
	adc ($4C.b)		; 72 4C
	adc ($4C.b),Y		; 71 4C
	bvs  -9.b		; 70 F7
	sbc $4C6F4C.l		; EF 4C 6F 4C
	ror $F8C0.w		; 6E C0 F8
	jsr $4C89.w		; 20 89 4C
	dey		; 88
	jmp $4C87.w		; 4C 87 4C
	stx $FC.b		; 86 FC
	sbc $DFFF85.l,X		; FF 85 FF DF
	jmp $4C84.w		; 4C 84 4C
	sta $4C.b,S		; 83 4C
	.db $82, $4C, $81		; 82 4C 81
	jmp $4C80.w		; 4C 80 4C
	adc $C07E4C.l,X		; 7F 4C 7E C0
	sed		; F8
	jsr $C23F.w		; 20 3F C2
	sta [$4C.b],Y		; 97 4C
	sty $4C.b,X		; 94 4C
	stx $4C.b,Y		; 96 4C
	sta $FE.b,X		; 95 FE
	sed		; F8
	sta ($FF.b,S),Y		; 93 FF
	sbc $4C924C.l,X		; FF 4C 92 4C
	sta ($4C.b),Y		; 91 4C
	bcc  76.b		; 90 4C
	sta $4C8E4C.l		; 8F 4C 8E 4C
	sta $8C4C.w		; 8D 4C 8C
	jmp $1D8B.w		; 4C 8B 1D
	bit $4C.b		; 24 4C
	txa		; 8A
	cpy #$20F8.w		; C0 F8 20
	stz $FE4C.w		; 9C 4C FE
	cpy #$F6FC.w		; C0 FC F6
	bpl  -2.b		; 10 FE
	inc $FCC0.w,X		; FE C0 FC
	sed		; F8
	txy		; 9B
	jmp $4C9A.w		; 4C 9A 4C
	sta $124C.w,Y		; 99 4C 12
	cmp $C098.w,X		; DD 98 C0
	sed		; F8
	jsl $A0C050.l		; 22 50 C0 A0
	jmp $C09F.w		; 4C 9F C0
	sed		; F8
	asl $E99B.w		; 0E 9B E9
	stz $9D4C.w,X		; 9E 4C 9D
	cpy #$20F8.w		; C0 F8 20
	lda $D0.b		; A5 D0
	cpy #$4CA7.w		; C0 A7 4C
	eor ($F8.b,X)		; 41 F8
	ldx $4C.b		; A6 4C
	sbc ($C0.b)		; F2 C0
	jsr ($A4F8.w,X)		; FC F8 A4
	jmp $4CA3.w		; 4C A3 4C
	xce		; FB
	sbc $A14CA2.l,X		; FF A2 4C A1
	cpy #$20F8.w		; C0 F8 20
	sbc $FC48.w,X		; FD 48 FC
	pha		; 48
	xce		; FB
	pha		; 48
	plx		; FA
	pha		; 48
	sbc $F848.w,Y		; F9 48 F8
	sbc $F7487F.l		; EF 7F 48 F7
	pha		; 48
	inc $48.b,X		; F6 48
	cpy #$F5FC.w		; C0 FC F5
	jmp $4CF4.w		; 4C F4 4C
	sbc ($4C.b,S),Y		; F3 4C
	sbc ($4C.b)		; F2 4C
	sbc ($FF.b),Y		; F1 FF
	sbc $20F8C0.l,X		; FF C0 F8 20
	ora $0C51.w		; 0D 51 0C
	eor ($0B.b),Y		; 51 0B
	eor ($0A.b),Y		; 51 0A
	eor ($09.b),Y		; 51 09
	eor ($08.b),Y		; 51 08
	eor ($07.b),Y		; 51 07
	eor ($FF.b),Y		; 51 FF
	sbc $055106.l,X		; FF 06 51 05
	eor ($04.b),Y		; 51 04
	eor ($03.b),Y		; 51 03
	eor ($02.b),Y		; 51 02
	eor ($01.b),Y		; 51 01
	eor ($00.b),Y		; 51 00
	eor ($FF.b),Y		; 51 FF
	bvc  -2.b		; 50 FE
	sbc $F8C0FE.l,X		; FF FE C0 F8
	jsr $511D.w		; 20 1D 51
	trb $1B51.w		; 1C 51 1B
	eor ($1A.b),Y		; 51 1A
	eor ($19.b),Y		; 51 19
	eor ($18.b),Y		; 51 18
	eor ($17.b),Y		; 51 17
	sbc $1651FF.l,X		; FF FF 51 16
	eor ($15.b),Y		; 51 15
	eor ($14.b),Y		; 51 14
	eor ($13.b),Y		; 51 13
	eor ($12.b),Y		; 51 12
	eor ($11.b),Y		; 51 11
	eor ($10.b),Y		; 51 10
	eor ($0F.b),Y		; 51 0F
	cmp ($FF.b,X)		; C1 FF
	eor ($0E.b),Y		; 51 0E
	tsx		; BA
	sbc $2D1EF8.l,X		; FF F8 1E 2D
	eor ($2C.b),Y		; 51 2C
	eor ($2B.b),Y		; 51 2B
	eor ($2A.b),Y		; 51 2A
	eor ($FF.b),Y		; 51 FF
	sbc $285129.l,X		; FF 29 51 28
	eor ($27.b),Y		; 51 27
	eor ($26.b),Y		; 51 26
	eor ($25.b),Y		; 51 25
	eor ($24.b),Y		; 51 24
	eor ($23.b),Y		; 51 23
	eor ($22.b),Y		; 51 22
	eor ($BF.b),Y		; 51 BF
	sbc $205121.l,X		; FF 21 51 20
	eor ($1F.b),Y		; 51 1F
	eor ($1E.b),Y		; 51 1E
	cpy #$20F8.w		; C0 F8 20
	and $3C51.w,X		; 3D 51 3C
	eor ($3B.b),Y		; 51 3B
	eor ($3A.b),Y		; 51 3A
	sbc $3951FF.l,X		; FF FF 51 39
	eor ($38.b),Y		; 51 38
	eor ($37.b),Y		; 51 37
	eor ($36.b),Y		; 51 36
	eor ($35.b),Y		; 51 35
	eor ($34.b),Y		; 51 34
	eor ($33.b),Y		; 51 33
	eor ($32.b),Y		; 51 32
	adc $3151FF.l,X		; 7F FF 51 31
	eor ($30.b),Y		; 51 30
	eor ($2F.b),Y		; 51 2F
	eor ($2E.b),Y		; 51 2E
	cpy #$20F8.w		; C0 F8 20
	rtl		; 6B

	eor ($6A.b)		; 52 6A
	eor ($69.b)		; 52 69
	eor ($FF.b)		; 52 FF
	sbc $675268.l,X		; FF 68 52 67
	eor ($66.b)		; 52 66
	eor ($65.b)		; 52 65
	eor ($64.b)		; 52 64
	eor ($45.b)		; 52 45
	eor ($44.b),Y		; 51 44
	eor ($43.b),Y		; 51 43
	eor ($FF.b),Y		; 51 FF
	inc $42.b,X		; F6 42
	eor ($41.b),Y		; 51 41
	eor ($40.b),Y		; 51 40
	eor ($3F.b),Y		; 51 3F
	eor ($3E.b),Y		; 51 3E
	cpy #$20F8.w		; C0 F8 20
	adc [$30.b],Y		; 77 30
	cmp ($76.b,X)		; C1 76
	eor ($FF.b)		; 52 FF
	sbc $745275.l,X		; FF 75 52 74
	eor ($73.b)		; 52 73
	eor ($72.b)		; 52 72
	eor ($71.b)		; 52 71
	eor ($03.b)		; 52 03
	eor ($02.b)		; 52 02
	eor ($01.b)		; 52 01
	eor ($FF.b)		; 52 FF
	ror $5200.w,X		; 7E 00 52
	sbc $51FE51.l,X		; FF 51 FE 51
	sbc $FC51.w,X		; FD 51 FC
	cpy #$20F8.w		; C0 F8 20
	.db $82, $52, $81		; 82 52 81
	eor ($80.b)		; 52 80
	sbc $C138FF.l,X		; FF FF 38 C1
	adc $527E52.l,X		; 7F 52 7E 52
	adc $7C52.w,X		; 7D 52 7C
	eor ($13.b)		; 52 13
	eor ($12.b)		; 52 12
	eor ($11.b)		; 52 11
	eor ($FF.b)		; 52 FF
	ply		; 7A
	bpl  82.b		; 10 52
	ora $520E52.l		; 0F 52 0E 52
	ora $0C52.w		; 0D 52 0C
	rts		; 60

	iny		; C8
	jsr $C238.w		; 20 38 C2
	bit #$8852.w		; 89 52 88
	sta $C3301F.l		; 8F 1F 30 C3
	sta [$52.b]		; 87 52
	stx $F8.b		; 86 F8
	jsl $522152.l		; 22 52 21 52
	jsr $3DBF.w		; 20 BF 3D
	sed		; F8
	asl $1D52.w,X		; 1E 52 1D
	eor ($1C.b)		; 52 1C
	cpy #$20F8.w		; C0 F8 20
	stx $C538.w		; 8E 38 C5
	sta $8C52.w		; 8D 52 8C
	ror $F8FE.w,X		; 7E FE F8
	pld		; 2B
	eor ($31.b)		; 52 31
	eor ($30.b)		; 52 30
	sed		; F8
	rol $2D52.w		; 2E 52 2D
	eor ($E8.b)		; 52 E8
	sbc $F82C.w,X		; FD 2C F8
	cpy #$1FF8.w		; C0 F8 1F
	sta ($52.b)		; 92 52
	sta ($38.b),Y		; 91 38
	cmp $3D.b,S		; C3 3D
	eor ($90.b)		; 52 90
	eor ($FC.b)		; 52 FC
	sbc $F88F.w,Y		; F9 8F F8
	bit $3F52.w,X		; 3C 52 3F
	eor ($3E.b)		; 52 3E
	sed		; F8
	tsa		; 3B
	eor ($7E.b)		; 52 7E
	sbc ($3A.b,X)		; E1 3A
	cpy #$20F8.w		; C0 F8 20
	sta $52.b,X		; 95 52
	sta [$52.b],Y		; 97 52
	stx $38.b,Y		; 96 38
	cmp ($F8.b,X)		; C1 F8
	jmp $EF52.w		; 4C 52 EF
	cmp $5294.w,Y		; D9 94 52
	sta ($52.b,S),Y		; 93 52
	eor $C520.w		; 4D 20 C5
	phk		; 4B
	eor ($4A.b)		; 52 4A
	sed		; F8
	cpy #$1FF8.w		; C0 F8 1F
	lsr $592F.w,X		; 5E 2F 59
	bmi -63.b		; 30 C1
	sta $9852.w,Y		; 99 52 98
	bmi -63.b		; 30 C1
	plp		; 28
	cpy $5D.b		; C4 5D
	eor ($5C.b)		; 52 5C
	jsr $5CC5.w		; 20 C5 5C
	ora $F0.b		; 05 F0
	eor [$52.b],Y		; 57 52
	lsr $20.b,X		; 56 20
	cpy #$FFFC.w		; C0 FC FF
	sed		; F8
	adc $00.b,S		; 63 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $ED.b		; 00 ED
	cmp $00.b,S		; C3 00
	sbc $1C0FF8.l,X		; FF F8 0F 1C
	inc $0DF8.w,X		; FE F8 0D
	eor [$3D.b]		; 47 3D
	pha		; 48
	and $49FA.w,X		; 3D FA 49
	ora $4A3DFF.l,X		; 1F FF 3D 4A
	and $3D4B.w,X		; 3D 4B 3D
	jmp $00F6.w		; 4C F6 00
	jmp $4B7D4C.l		; 5C 4C 7D 4B
	adc $8387.w,X		; 7D 87 83
	lsr A		; 4A
	adc $7D49.w,X		; 7D 49 7D
	inc $48.b,X		; F6 48
	adc $FA47.w,X		; 7D 47 FA
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	cpy #$16F8.w		; C0 F8 16
	iny		; C8
	jsr ($4DFE.w,X)		; FC FE 4D
	and $3D4E.w,X		; 3D 4E 3D
	eor $3D503D.l		; 4F 3D 50 3D
	eor ($E7.b),Y		; 51 E7
	sbc $3D523D.l,X		; FF 3D 52 3D
	eor ($C0.b,S),Y		; 53 C0
	eor ($7D.b,S),Y		; 53 7D
	eor ($7D.b)		; 52 7D
	eor ($7D.b),Y		; 51 7D
	bvc 125.b		; 50 7D
	and $7D4FFC.l		; 2F FC 4F 7D
	lsr $4D7D.w		; 4E 7D 4D
	cpy #$14F8.w		; C0 F8 14
	sta ($54.b)		; 92 54
	and $3D55.w,X		; 3D 55 3D
	lsr $FF.b,X		; 56 FF
	sbc $3D573D.l,X		; FF 3D 57 3D
	cli		; 58
	and $3D59.w,X		; 3D 59 3D
	phy		; 5A
	and $3D5B.w,X		; 3D 5B 3D
	jmp $3D5D3D.l		; 5C 3D 5D 3D
	lsr $FFE1.w,X		; 5E E1 FF
	and $C05F.w,X		; 3D 5F C0
	bit $7C00.w,X		; 3C 00 7C
	eor $7D5E7D.l,X		; 5F 7D 5E 7D
	eor $5C7D.w,X		; 5D 7D 5C
	eor $5B7DF8.l,X		; 5F F8 7D 5B
	adc $7D5A.w,X		; 7D 5A 7D
	eor $F8C0.w,Y		; 59 C0 F8
	trb $92.b		; 14 92
	rts		; 60

	and $3D61.w,X		; 3D 61 3D
	sbc $FF.b,S		; E3 FF
	.db $62, $3D, $63		; 62 3D 63
	sty $3D64.w		; 8C 64 3D
	adc $3D.b		; 65 3D
	ror $3D.b		; 66 3D
	adc [$3D.b]		; 67 3D
	pla		; 68
	sbc [$FF.b]		; E7 FF
	and $3D69.w,X		; 3D 69 3D
	ror A		; 6A
	cpy #$7D6A.w		; C0 6A 7D
	adc #$687D.w		; 69 7D 68
	adc $7D67.w,X		; 7D 67 7D
	and $7D667D.l		; 2F 7D 66 7D
	adc $7D.b		; 65 7D
	stz $C0.b		; 64 C0
	sed		; F8
	trb $92.b		; 14 92
	rtl		; 6B

	and $3D6C.w,X		; 3D 6C 3D
	adc $FFFC.w		; 6D FC FF
	sty $3D6E.w		; 8C 6E 3D
	adc $3D703D.l		; 6F 3D 70 3D
	adc ($3D.b),Y		; 71 3D
	adc ($3D.b)		; 72 3D
	adc ($3D.b,S),Y		; 73 3D
	cmp $FF.b,S		; C3 FF
	stz $3D.b,X		; 74 3D
	adc $FE.b,X		; 75 FE
	adc $7D74.w,X		; 7D 74 7D
	adc ($7D.b,S),Y		; 73 7D
	adc ($7D.b)		; 72 7D
	adc ($7D.b),Y		; 71 7D
	sbc $7D70FF.l		; EF FF 70 7D
	adc $C06E7D.l		; 6F 7D 6E C0
	sed		; F8
	trb $76.b		; 14 76
	and $3D77.w,X		; 3D 77 3D
	sei		; 78
	and $3D79.w,X		; 3D 79 3D
	ply		; 7A
	sbc $7B3DFF.l,X		; FF FF 3D 7B
	and $3D7C.w,X		; 3D 7C 3D
	adc $7E3D.w,X		; 7D 3D 7E
	and $3D7F.w,X		; 3D 7F 3D
	bra  61.b		; 80 3D
	sta ($3D.b,X)		; 81 3D
	.db $82, $E1, $FF		; 82 E1 FF
	and $FE83.w,X		; 3D 83 FE
	adc $7D82.w,X		; 7D 82 7D
	sta ($7D.b,X)		; 81 7D
	bra 125.b		; 80 7D
	adc $D07E7D.l,X		; 7F 7D 7E D0
	sbc $7CFF7D.l,X		; FF 7D FF 7C
	cpy #$14F8.w		; C0 F8 14
	sty $3D.b		; 84 3D
	sta $3D.b		; 85 3D
	stx $3D.b		; 86 3D
	sta [$3D.b]		; 87 3D
	sbc $3D88FF.l,X		; FF FF 88 3D
	bit #$8A3D.w		; 89 3D 8A
	and $3D8B.w,X		; 3D 8B 3D
	sty $8D3D.w		; 8C 3D 8D
	and $3D8E.w,X		; 3D 8E 3D
	sta $FFC33D.l		; 8F 3D C3 FF
	bcc  61.b		; 90 3D
	sta ($FE.b),Y		; 91 FE
	adc $7D90.w,X		; 7D 90 7D
	sta $7D8E7D.l		; 8F 7D 8E 7D
	sta $EF7D.w		; 8D 7D EF
	sbc $8B7D8C.l,X		; FF 8C 7D 8B
	adc $C08A.w,X		; 7D 8A C0
	sed		; F8
	trb $92.b		; 14 92
	and $3D93.w,X		; 3D 93 3D
	sty $3D.b,X		; 94 3D
	sta $3D.b,X		; 95 3D
	stx $FF.b,Y		; 96 FF
	sbc $3D973D.l,X		; FF 3D 97 3D
	tya		; 98
	and $3D99.w,X		; 3D 99 3D
	txs		; 9A
	and $3D9B.w,X		; 3D 9B 3D
	stz $9D3D.w		; 9C 3D 9D
	and $E19E.w,X		; 3D 9E E1
	sbc $FE9F3D.l,X		; FF 3D 9F FE
	adc $7D9E.w,X		; 7D 9E 7D
	sta $9C7D.w,X		; 9D 7D 9C
	adc $7D9B.w,X		; 7D 9B 7D
	txs		; 9A
	sbc [$FF.b],Y		; F7 FF
	adc $7D99.w,X		; 7D 99 7D
	tya		; 98
	cpy #$14F8.w		; C0 F8 14
	ldy #$A13D.w		; A0 3D A1
	and $3DA2.w,X		; 3D A2 3D
	lda $3D.b,S		; A3 3D
	ldy $3D.b		; A4 3D
	sbc $3DA5C3.l,X		; FF C3 A5 3D
	ldx $39.b		; A6 39
	lda [$39.b]		; A7 39
	tay		; A8
	and $39A9.w,Y		; 39 A9 39
	tax		; AA
	inc $8779.w,X		; FE 79 87
	sbc #$39AB.w		; E9 AB 39
	tsb $FE18.w		; 0C 18 FE
	plb		; AB
	adc $A9F4.w,Y		; 79 F4 A9
	adc $C3DF.w,Y		; 79 DF C3
	tay		; A8
	adc $79A7.w,Y		; 79 A7 79
	ldx $79.b		; A6 79
	cpy #$13F8.w		; C0 F8 13
	ldy $AD3D.w		; AC 3D AD
	iny		; C8
	and $FE1F.w,X		; 3D 1F FE
	lda [$3D.b]		; A7 3D
	ldx $AF3D.w		; AE 3D AF
	and $B0D4.w,X		; 3D D4 B0
	and $39B1.w,Y		; 39 B1 39
	lda ($39.b)		; B2 39
	and $39B3FC.l,X		; 3F FC B3 39
	ldy $39.b,X		; B4 39
	lda $39.b,X		; B5 39
	ldx $FE.b,Y		; B6 FE
	adc $79B5.w,Y		; 79 B5 79
	ldy $79.b,X		; B4 79
	and $79B378.l,X		; 3F 78 B3 79
	lda ($79.b)		; B2 79
	lda ($79.b),Y		; B1 79
	bcs -74.b		; B0 B6
	cpy #$14F8.w		; C0 F8 14
	lda [$3D.b],Y		; B7 3D
	clv		; B8
	bra  -1.b		; 80 FF
	iny		; C8
	inc $B97D.w,X		; FE 7D B9
	and $3DBA.w,X		; 3D BA 3D
	tyx		; BB
	and $FFBC.w,Y		; 39 BC FF
	sta [$39.b]		; 87 39
	lda $BE39.w,X		; BD 39 BE
	and $39BF.w,Y		; 39 BF 39
	cpy #$C139.w		; C0 39 C1
	and $FEC2.w,Y		; 39 C2 FE
	sbc $C179DF.l,X		; FF DF 79 C1
	adc $79C0.w,Y		; 79 C0 79
	lda $79BE79.l,X		; BF 79 BE 79
	lda $BC79.w,X		; BD 79 BC
	adc $C0BB.w,Y		; 79 BB C0
	sed		; F8
	trb $FF.b		; 14 FF
	sbc $C43DC3.l,X		; FF C3 3D C4
	and $3DC5.w,X		; 3D C5 3D
	dec $3D.b		; C6 3D
	cmp [$3D.b]		; C7 3D
	iny		; C8
	and $35C9.w,X		; 3D C9 35
	dex		; CA
	and $FF.b,X		; 35 FF
	cmp $CB.b,S		; C3 CB
	and $CC.b,X		; 35 CC
	and $CD.b,X		; 35 CD
	and $CE.b,X		; 35 CE
	and $CF.b,X		; 35 CF
	and $D0.b,X		; 35 D0
	inc $FF75.w,X		; FE 75 FF
	cmp $CE75CF.l,X		; DF CF 75 CE
	adc $CD.b,X		; 75 CD
	adc $CC.b,X		; 75 CC
	adc $CB.b,X		; 75 CB
	adc $CA.b,X		; 75 CA
	adc $C9.b,X		; 75 C9
	adc $C0.b,X		; 75 C0
	sed		; F8
	ora ($FF.b,S),Y		; 13 FF
	sbc $D23DD1.l,X		; FF D1 3D D2
	and $3DD3.w,X		; 3D D3 3D
	pei ($3D.b)		; D4 3D
	cmp $3D.b,X		; D5 3D
	dec $3D.b,X		; D6 3D
	cmp [$35.b],Y		; D7 35
	cld		; D8
	and $FF.b,X		; 35 FF
	cmp $D9.b,S		; C3 D9
	and $DA.b,X		; 35 DA
	and $DB.b,X		; 35 DB
	and $DC.b,X		; 35 DC
	and $DD.b,X		; 35 DD
	and $DE.b,X		; 35 DE
	inc $FF75.w,X		; FE 75 FF
	sbc $DC75DD.l		; EF DD 75 DC
	adc $DB.b,X		; 75 DB
	adc $DA.b,X		; 75 DA
	adc $D9.b,X		; 75 D9
	adc $D8.b,X		; 75 D8
	adc $D7.b,X		; 75 D7
	cpy #$14F8.w		; C0 F8 14
	cmp $3DFFFF.l,X		; DF FF FF 3D
	cpx #$E13D.w		; E0 3D E1
	and $3DE2.w,X		; 3D E2 3D
	sbc $3D.b,S		; E3 3D
	cpx $3D.b		; E4 3D
	sbc $35.b		; E5 35
	inc $35.b		; E6 35
	sbc [$FF.b]		; E7 FF
	sbc ($35.b,X)		; E1 35
	inx		; E8
	and $E9.b,X		; 35 E9
	and $EA.b,X		; 35 EA
	and $EB.b,X		; 35 EB
	and $EC.b,X		; 35 EC
	inc $EB75.w,X		; FE 75 EB
	sbc $EA7557.l,X		; FF 57 75 EA
	adc $E9.b,X		; 75 E9
	adc $E8.b,X		; 75 E8
	adc $E7.b,X		; 75 E7
	adc $E6.b,X		; 75 E6
	adc $E5.b,X		; 75 E5
	cpy #$11F8.w		; C0 F8 11
	sbc $D5FCF8.l,X		; FF F8 FC D5
	tax		; AA
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	tda		; 7B
	jmp $0EF8FE.l		; 5C FE F8 0E
	cpy #$32F8.w		; C0 F8 32
	sed		; F8
	tyx		; BB
	sbc $F8C0F5.l,X		; FF F5 C0 F8
	rol $58.b,X		; 36 58
	adc $7D57.w,X		; 7D 57 7D
	lsr $7D.b,X		; 56 7D
	eor $7D.b,X		; 55 7D
	mvn $BB,$AE		; 54 AE BB
	cpy #$31F8.w		; C0 F8 31
	eor ($7D.b)		; 52 7D
	lda $7D63FE.l,X		; BF FE 63 7D
	.db $62, $7D, $61		; 62 7D 61
	adc $AE60.w,X		; 7D 60 AE
	lda $F8C0.w,Y		; B9 C0 F8
	and ($5E.b,S),Y		; 33 5E
	adc $7D6D.w,X		; 7D 6D 7D
	jmp ($FFF5.w)		; 6C F5 FF
	adc $AE6B.w,X		; 7D 6B AE
	tyx		; BB
	cpy #$33F8.w		; C0 F8 33
	tda		; 7B
	adc $7D7A.w,X		; 7D 7A 7D
	adc $787D.w,Y		; 79 7D 78
	adc $7D77.w,X		; 7D 77 7D
	inc $76DF.w,X		; FE DF 76
	cpy #$34F8.w		; C0 F8 34
	bit #$887D.w		; 89 7D 88
	adc $7D87.w,X		; 7D 87 7D
	stx $7D.b		; 86 7D
	sta $7D.b		; 85 7D
	sty $C0.b		; 84 C0
	sed		; F8
	bit $FF.b,X		; 34 FF
	xce		; FB
	sta [$7D.b],Y		; 97 7D
	stx $7D.b,Y		; 96 7D
	sta $7D.b,X		; 95 7D
	sty $7D.b,X		; 94 7D
	sta ($7D.b,S),Y		; 93 7D
	sta ($C0.b)		; 92 C0
	sed		; F8
	bit $A5.b,X		; 34 A5
	adc $7FA4.w,X		; 7D A4 7F
	sbc $7DA37D.l,X		; FF 7D A3 7D
	ldx #$A17D.w		; A2 7D A1
	adc $C0A0.w,X		; 7D A0 C0
	sed		; F8
	bit $AF.b,X		; 34 AF
	adc $7DAE.w,X		; 7D AE 7D
	lda [$7D.b]		; A7 7D
	sbc $7DA67B.l		; EF 7B A6 7D
	lda $AC7D.w		; AD 7D AC
	cpy #$34F8.w		; C0 F8 34
	tsx		; BA
	adc $7DB9.w,X		; 7D B9 7D
	trb $C2.b		; 14 C2
	clv		; B8
	adc $FFB7.w,X		; 7D B7 FF
	sbc $34F8C0.l		; EF C0 F8 34
	iny		; C8
	adc $7DC7.w,X		; 7D C7 7D
	dec $7D.b		; C6 7D
	cmp $7D.b		; C5 7D
	cpy $7D.b		; C4 7D
	cmp $C0.b,S		; C3 C0
	sed		; F8
	bit $D6.b,X		; 34 D6
	sbc $D57DFD.l,X		; FF FD 7D D5
	adc $7DD4.w,X		; 7D D4 7D
	cmp ($7D.b,S),Y		; D3 7D
	cmp ($7D.b)		; D2 7D
	cmp ($C0.b),Y		; D1 C0
	sed		; F8
	bit $E4.b,X		; 34 E4
	adc $7DE3.w,X		; 7D E3 7D
	lda $7DE2AA.l,X		; BF AA E2 7D
	sbc ($7D.b,X)		; E1 7D
	cpx #$DF7D.w		; E0 7D DF
	cpy #$34F8.w		; C0 F8 34
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($000A.w,X)		; FC 0A 00
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	phb		; 8B
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $004D.w,X		; DD 4D 00
	sbc $F01EF8.l,X		; FF F8 1E F0
	ora $0DF8FE.l		; 0F FE F8 0D
	brk $60.b		; 00 60
	inc $0EF8.w,X		; FE F8 0E
	sbc $FEFBFF.l,X		; FF FF FB FE
	bra 127.b		; 80 7F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	php		; 08
	sta [$00.b]		; 87 00
	cmp $CA.b,S		; C3 CA
	jsr ($0080.w,X)		; FC 80 00
	cpy #$06FF.w		; C0 FF 06
	cpy #$E0E0.w		; C0 E0 E0
	sei		; 78
	bvs  60.b		; 70 3C
	bit $EF1F.w,X		; 3C 1F EF
	inc $0DF8.w,X		; FE F8 0D
	brk $BE.b		; 00 BE
	ora ($1F.b,X)		; 01 1F
	inc $0CF8.w,X		; FE F8 0C
	dec $FE.b		; C6 FE
	and $801F80.l,X		; 3F 80 1F 80
	rol $F6FD.w,X		; 3E FD F6
	eor [$80.b]		; 47 80
	adc $80.b,S		; 63 80
	adc ($C2.b),Y		; 71 C2
	rti		; 40

	rti		; 40

	rts		; 60

	rts		; 60

	bvs  -1.b		; 70 FF
	clc		; 18
	bvs  56.b		; 70 38
	sec		; 38
	trb $0E1C.w		; 1C 1C 0E
	asl $DF3F.w		; 0E 3F DF
	inc $16C0.w,X		; FE C0 16
	bne  -2.b		; D0 FE
	ora ($FE.b,X)		; 01 FE
	inc $9AFC.w,X		; FE FC 9A
	inc $F8FF.w,X		; FE FF F8
	phd		; 0B
	ora $01F3D3.l		; 0F D3 F3 01
	sbc ($01.b)		; F2 01
	sed		; F8
	inc $FD03.w,X		; FE 03 FD
	inc $3107.w,X		; FE 07 31
	dec $0CFB.w		; CE FB 0C
	sbc $00FF06.l,X		; FF 06 FF 00
	ora ($F0.b,X)		; 01 F0
	lda ($FE.b,X)		; A1 FE
	sbc $FC7A.w		; ED 7A FC
	sbc ($F8.b,S),Y		; F3 F8
	sbc [$FE.b],Y		; F7 FE
	sbc $FF3303.l,X		; FF 03 33 FF
	sbc $7801.w,X		; FD 01 78
	and $48FE.w		; 2D FE 48
	jmp ($FE74.w,X)		; 7C 74 FE
	and $CF3FDE.l,X		; 3F DE 3F CF
	ora $FEE0FE.l,X		; 1F FE E0 FE
	brk $1E.b		; 00 1E
	clc		; 18
	jmp ($206C.w,X)		; 7C 6C 20
	and $FEE0FE.l		; 2F FE E0 FE
	brk $FE.b		; 00 FE
	bra 126.b		; 80 7E
	txs		; 9A
	ror $C0FE.w		; 6E FE C0
	ldx $E0FE.w,Y		; BE FE E0
	dec $FF01.w,X		; DE 01 FF
	inc $BE81.w,X		; FE 81 BE
	tsa		; 3B
	inc $1FC1.w,X		; FE C1 1F
	adc $0DF8FE.l		; 6F FE F8 0D
	bra -113.b		; 80 8F
	inc $0DF8.w,X		; FE F8 0D
	lda $70FE5F.l,X		; BF 5F FE 70
	inc $9F4F.w,X		; FE 4F 9F
	adc $8F679F.l		; 6F 9F 67 8F
	inc $8763.w,X		; FE 63 87
	adc $A6.b,S		; 63 A6
	sbc $070640.l,X		; FF 40 06 07
	bpl  23.b		; 10 17
	bpl  19.b		; 10 13
	clc		; 18
	tas		; 1B
	sbc $FFF8.w,X		; FD F8 FF
	plx		; FA
	inc $F9F2.w,X		; FE F2 F9
	inc $F9.b,X		; F6 F9
	inc $F1.b		; E6 F1
	inc $CEF1.w		; EE F1 CE
	sbc ($DE.b,X)		; E1 DE
	sta ($62.b),Y		; 91 62
	brk $F8.b		; 00 F8
	inc $E060.w,X		; FE 60 E0
	inc $10C0.w,X		; FE C0 10
	mvp $6B,$FE		; 44 FE 6B
	jsr ($D8FE.w,X)		; FC FE D8
	sbc ($FE.b,S),Y		; F3 FE
	ror $AC.b,X		; 76 AC
	jmp ($F8FF.w)		; 6C FF F8
	asl A		; 0A
	bpl -31.b		; 10 E1
	bne  -4.b		; D0 FC
	inx		; E8
	sbc ($3F.b),Y		; F1 3F
	sec		; 38
	bvc  -3.b		; 50 FD
	asl $070E.w,X		; 1E 0E 07
	ora [$03.b]		; 07 03
	ora $07.b,S		; 03 07
	sbc $EF1FFE.l,X		; FF FE 1F EF
	jsr ($841F.w,X)		; FC 1F 84
	ora $0F1F2F.l,X		; 1F 2F 1F 0F
	ora $C31F87.l,X		; 1F 87 1F C3
	ora $FE07E1.l,X		; 1F E1 07 FE
	ora $800FD4.l,X		; 1F D4 0F 80
	ora $E0CFC0.l		; 0F C0 CF E0
	sbc $206760.l		; EF 60 67 20
	and $10.b,S		; 23 10
	ora $80D98A.l,X		; 1F 8A D9 80
	sei		; 78
	bra 124.b		; 80 7C
	plp		; 28
	sbc $1CFC98.l,X		; FF 98 FC 1C
	sbc $FF.b,X		; F5 FF
	rep #$81		; C2 81
	stx $B0.b		; 86 B0
	sbc $F18C.w,X		; FD 8C F1
	ror $0B03.w,X		; 7E 03 0B
	eor $03FF3D.l,X		; 5F 3D FF 03
	cpx #$CEF7.w		; E0 F7 CE
	bra -64.b		; 80 C0
	cmp ($00.b,X)		; C1 00
	ora $E0.b,S		; 03 E0
	inc $1FFF.w,X		; FE FF 1F
	ldy $F1.b		; A4 F1
	sbc ($FA.b,S),Y		; F3 FA
	sbc ($F8.b),Y		; F1 F8
	sbc ($FC.b),Y		; F1 FC
	cpx #$C4F8.w		; E0 F8 C4
	beq -114.b		; F0 8E
	cpx #$3E1E.w		; E0 1E 3E
	bit $F0.b		; 24 F0
	tsb $F4.b		; 04 F4
	asl $FE.b		; 06 FE
	inc $07.b,X		; F6 07
	sbc $03.b,S		; E3 03
	cmp $42.b,S		; C3 42
	tya		; 98
	clv		; B8
	ora $FEFB.w,Y		; 19 FB FE
	ora $110EF7.l		; 0F F7 0E 11
	inc $6F1F.w,X		; FE 1F 6F
	eor $C62F78.l,X		; 5F 78 2F C6
	cmp ($21.b)		; D2 21
	inc $FE07.w,X		; FE 07 FE
	bra -113.b		; 80 8F
	cpy #$CFFE.w		; C0 FE CF
	rol $8600.w,X		; 3E 00 86
	cpy #$9FE0.w		; C0 E0 9F
	cpy #$F4FE.w		; C0 FE F4
	tsb $82.b		; 04 82
	ror $67.b		; 66 67
	inc $9D0C.w,X		; FE 0C 9D
	and $A020E2.l,X		; 3F E2 20 A0
	bmi -80.b		; 30 B0
	bmi  48.b		; 30 30
	clc		; 18
	sbc $C30386.l,X		; FF 86 03 C3
	cop $07.b		; 02 07
	sbc ($03.b),Y		; F1 03
	inc $03F9.w,X		; FE F9 03
	inc A		; 1A
	sbc ($FE.b),Y		; F1 FE
	sbc $C03B.w,X		; FD 3B C0
	php		; 08
	ora #$0D0C.w		; 09 0C 0D
	tsb $05.b		; 04 05
	tsb $04.b		; 04 04
	clc		; 18
	sbc ($E0.b)		; F2 E0
	dec $D34C.w,X		; DE 4C D3
	inc $EEF0.w,X		; FE F0 EE
	inc $F6F8.w,X		; FE F8 F6
	inc $9801.w,X		; FE 01 98
	cmp ($C1.b,S),Y		; D3 C1
	inc $FEE1.w,X		; FE E1 FE
	sbc ($FE.b),Y		; F1 FE
	sta [$0F.b]		; 87 0F
	sbc ($49.b)		; F2 49
	sta $4D.b,S		; 83 4D
	sta $4C.b,S		; 83 4C
	inc $E99E.w,X		; FE 9E E9
	inc $8830.w,X		; FE 30 88
	sbc $FE31.w,X		; FD 31 FE
	sbc $FDFF60.l,X		; FF 60 FF FD
	sbc ($9C.b,X)		; E1 9C
	cmp ($BC.b,X)		; C1 BC
	eor ($08.b,X)		; 41 08
	cmp ($38.b,X)		; C1 38
	inc $E9BA.w,X		; FE BA E9
	inc $03E6.w,X		; FE E6 03
	eor #$02FE.w		; 49 FE 02
	.db $82, $FE, $A8		; 82 FE A8
	clv		; B8
	nop		; EA
	plx		; FA
	eor $80.b		; 45 80
	cpy $EA.b		; C4 EA
	inc $F6FD.w,X		; FE FD F6
	plx		; FA
	pea $F4F8.w		; F4 F8 F4
.ACCU 16
	rep #$ED		; C2 ED
	inc $FEC0.w,X		; FE C0 FE
	ldy $6A.b		; A4 6A
	sbc ($2C.b,S),Y		; F3 2C
	sbc #$5FCF.w		; E9 CF 5F
	sta $ED8F1F.l		; 8F 1F 8F ED
	sbc ($3F.b,X)		; E1 3F
	ora $6FF19A.l		; 0F 9A F1 6F
	jsr $20EA.w		; 20 EA 20
	and $6FFE60.l		; 2F 60 FE 6F
	cpx #$5E00.w		; E0 00 5E
	cmp $201E24.l		; CF 24 1E 20
	xba		; EB
	ror $7C80.w,X		; 7E 80 7C
	cmp [$F1.b],Y		; D7 F1
	ora $F7C0A0.l		; 0F A0 C0 F7
	ora ($01.b,X)		; 01 01
	ora $3C.b,S		; 03 3C
	sbc $95EEA0.l,X		; FF A0 EE 95
	inc $F8FE.w,X		; FE FE F8
	ora #$EA3F.w		; 09 3F EA
	sbc #$E5C0.w		; E9 C0 E5
	sbc $F0C0C0.l,X		; FF C0 C0 F0
	beq  60.b		; F0 3C
	bit $A44A.w,X		; 3C 4A A4
	ora $24.b,S		; 03 24
	beq  10.b		; F0 0A
	tsb $F0.b		; 04 F0
	ora $88EDFF.l		; 0F FF ED 88
.ACCU 8
	sep #$A8		; E2 A8
	cpy $EFF8.w		; CC F8 EF
	sbc $F8E288.l,X		; FF 88 E2 F8
	inc $12CD.w		; EE CD 12
	clv		; B8
	ldx $E45C.w,Y		; BE 5C E4
	cpx #$5C7E.w		; E0 7E 5C
	cpx #$C009.w		; E0 09 C0
	and $E805F0.l,X		; 3F F0 05 E8
	sbc $C754.w,X		; FD 54 C7
	brk $E3.b		; 00 E3
	brk $F1.b		; 00 F1
	stx $FC.b		; 86 FC
	inx		; E8
	cmp $30.b,S		; C3 30
	bra -26.b		; 80 E6
	sta $0880E5.l,X		; 9F E5 80 08
	inc $E7.b		; E6 E7
	bpl -70.b		; 10 BA
	ora $82E4.w,X		; 1D E4 82
	sbc ($FC.b),Y		; F1 FC
	cpx #$F1CC.w		; E0 CC F1
	sec		; 38
	ror $F1.b		; 66 F1
	trb $860C.w		; 1C 0C 86
	adc ($E4.b,X)		; 61 E4
	ora [$06.b]		; 07 06
	stz $7380.w,X		; 9E 80 73
	inc $F900.w,X		; FE 00 F9
	sty $FE50.w		; 8C 50 FE
	jsr ($98FE.w,X)		; FC FE 98
	inc $E680.w,X		; FE 80 E6
	rti		; 40

	cop $E6.b		; 02 E6
	.db $82, $FF, $6C		; 82 FF 6C
.ACCU 8
	sep #$21		; E2 21
	inc $E4.b		; E6 E4
	brk $7E.b		; 00 7E
	inc $1A02.w,X		; FE 02 1A
	ora [$FF.b]		; 07 FF
	cpx $FE.b		; E4 FE
	sta ($FF.b,X)		; 81 FF
	sed		; F8
	asl $FE.b		; 06 FE
	eor #$07.b		; 49 07
	cpx $FE.b		; E4 FE
	inc $E7A1.w,X		; FE A1 E7
	sbc $E01FFD.l,X		; FF FD 1F E0
	inc $0004.w,X		; FE 04 00
	rep #$86		; C2 86
	ror $7E.b		; 66 7E
	brk $04.b		; 00 04
	sei		; 78
	phy		; 5A
	sbc $0000C2.l,X		; FF C2 00 00
	bit $82.b		; 24 82
	.db $62, $5E, $10		; 62 5E 10
	jmp $F1765A.l		; 5C 5A 76 F1
.ACCU 8
	sep #$E0		; E2 E0
	beq  10.b		; F0 0A
	ora $F3A20F.l		; 0F 0F A2 F3
	eor $A5.b,X		; 55 A5
	cmp $A80BF0.l,X		; DF F0 0B A8
	pea $FED8.w		; F4 D8 FE
	tay		; A8
	sbc $D8.b,X		; F5 D8
	inc $E2F1.w,X		; FE F1 E2
	stz $1E1F.w		; 9C 1F 1E
	bit $3DC0.w,X		; 3C C0 3D
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	cmp $FE.b,S		; C3 FE
	sei		; 78
	bvs  48.b		; 70 30
	and [$7F.b],Y		; 37 7F
	jmp ($0CD0.w,X)		; 7C D0 0C
	ora $1B.b,S		; 03 1B
	ora ($18.b,X)		; 01 18
	brk $FE.b		; 00 FE
	cpx #$F018.w		; E0 18 F0
	tsb $DE3C.w		; 0C 3C DE
	jmp $033C07.l		; 5C 07 3C 03
	inc $2483.w,X		; FE 83 24
	cmp $AA.b,S		; C3 AA
	sbc ($E1.b),Y		; F1 E1
	beq -29.b		; F0 E3
	ora ($74.b,X)		; 01 74
	bmi -64.b		; 30 C0
	cld		; D8
	inc $4040.w,X		; FE 40 40
	bit $0006.w,X		; 3C 06 00
	clc		; 18
	stz $D9.b		; 64 D9
	rti		; 40

	sta $D0E4FE.l,X		; 9F FE E4 D0
	adc $C4.b,S		; 63 C4
	cli		; 58
	phx		; DA
	tay		; A8
	sbc ($9F.b),Y		; F1 9F
	cpy #$E4DF.w		; C0 DF E4
	cli		; 58
	ply		; 7A
	phk		; 4B
	rep #$00		; C2 00
	ora $FE03FC.l,X		; 1F FC 03 FE
	jsr ($A040.w,X)		; FC 40 A0
	sbc ($68.b),Y		; F1 68
	brk $F8.b		; 00 F8
	sta $E21E.w		; 8D 1E E2
	brk $99.b		; 00 99
	.db $42, $82		; 42 82
	sta $3EAAF4.l,X		; 9F F4 AA 3E
	ora ($3E.b,X)		; 01 3E
	sta ($3F.b,X)		; 81 3F
	bra   8.b		; 80 08
	lda $FFFEC4.l,X		; BF C4 FE FF
	jmp.w [$5C40]		; DC 40 5C
	rti		; 40

	lsr $1EF1.w,X		; 5E F1 1E
	sei		; 78
	cmp $FE1B.w,Y		; D9 1B FE
	ora $023C.w,Y		; 19 3C 02
	inc $82FD.w,X		; FE FD 82
	ldy $0E02.w,X		; BC 02 0E
	adc #$FCFE.w		; 69 FE FC
	cop $C1.b		; 02 C1
	sbc $41FED9.l,X		; FF D9 FE 41
	eor $791A.w,Y		; 59 1A 79
	inc $9901.w,X		; FE 01 99
	.db $82, $FE, $03		; 82 FE 03
	sei		; 78
	eor $BC.b,S		; 43 BC
	inc $80FC.w,X		; FE FC 80
	sbc $81FE9F.l,X		; FF 9F FE 81
	sty $85.b		; 84 85
	dec A		; 3A
	asl $FE.b		; 06 FE
	jsr ($F383.w,X)		; FC 83 F3
	tda		; 7B
	sbc ($C0.b),Y		; F1 C0
	and ($FE.b,S),Y		; 33 FE
	and [$FE.b]		; 27 FE
	sbc $F18530.l,X		; FF 30 85 F1
	xce		; FB
	cop $FA.b		; 02 FA
	cop $82.b		; 02 82
	tsb $FE8C.w		; 0C 8C FE
	clc		; 18
	tya		; 98
	clv		; B8
	dec $88FE.w		; CE FE 88
	inc $C13E.w,X		; FE 3E C1
	rti		; 40

	inc $DB5E.w,X		; FE 5E DB
	clc		; 18
	cop $0C.b		; 02 0C
	tay		; A8
	cop $40.b		; 02 40
	txa		; 8A
	ldy $F280.w,X		; BC 80 F2
	ora $48.b,S		; 03 48
	rti		; 40

	jsr ($F901.w,X)		; FC 01 F9
	ldx $80BB.w,Y		; BE BB 80
	sbc ($84.b)		; F2 84
	lda $40.b,S		; A3 40
	tsb $80.b		; 04 80
	cpy #$FE3C.w		; C0 3C FE
	ora ($06.b,X)		; 01 06
	rti		; 40

	sbc $80DF.w,X		; FD DF 80
	dec $03.b		; C6 03
	tas		; 1B
	inc $01FA.w,X		; FE FA 01
	cpy #$01F0.w		; C0 F0 01
	beq   3.b		; F0 03
	sed		; F8
	ora [$C8.b]		; 07 C8
	asl $78.b		; 06 78
	clc		; 18
	ldy $FA43.w,X		; BC 43 FA
	inc $1E.b,X		; F6 1E
	asl $EC0C.w		; 0E 0C EC
	ora $F174AA.l,X		; 1F AA 74 F1
	sec		; 38
	cpy #$80D8.w		; C0 D8 80
.ACCU 8
.INDEX 8
	sep #$38		; E2 38
	sei		; 78
	bne   9.b		; D0 09
	jsr $17E8.w		; 20 E8 17
	ror $8B.b,X		; 76 8B
	jmp ($86F1.w)		; 6C F1 86
	sbc ($C3.b)		; F2 C3
	jmp $F00FF2.l		; 5C F2 0F F0
	rti		; 40

	cmp $8618.w,Y		; D9 18 86
	sbc ($95.b)		; F2 95
	ldx $A6.b		; A6 A6
	tsb $D2BC.w		; 0C BC D2
	brk $DA.b		; 00 DA
	stx $3D.b		; 86 3D
.ACCU 16
	rep #$A4		; C2 A4
	ora [$B4.b]		; 07 B4
	beq  15.b		; F0 0F
	cpx #$03.b		; E0 03
	ldy #$1E.b		; A0 1E
	mvp $30,$F2		; 44 F2 30
	brk $5B.b		; 00 5B
	ldy $5CD2.w,X		; BC D2 5C
	ror $40BF.w		; 6E BF 40
.ACCU 16
.INDEX 16
	rep #$F1		; C2 F1
	ora $9E.b,S		; 03 9E
	inc $AF.b,X		; F6 AF
.ACCU 16
.INDEX 16
	rep #$31		; C2 31
	sbc #$C118.w		; E9 18 C1
	cmp $F360.w,Y		; D9 60 F3
	ldx $CB.b,Y		; B6 CB
	adc ($EA.b,X)		; 61 EA
	txy		; 9B
	brk $C1.b		; 00 C1
	cmp $1E.b,S		; C3 1E
	sbc $581A.w,X		; FD 1A 58
	sbc ($01.b)		; F2 01
	cop $FA.b		; 02 FA
	cmp ($C3.b,X)		; C1 C3
	xba		; EB
	brk $C3.b		; 00 C3
	sbc ($E1.b,X)		; E1 E1
	cmp $58E1.w,X		; DD E1 58
	sbc ($02.b),Y		; F1 02
	cop $CE.b		; 02 CE
	and ($E0.b,X)		; 21 E0
	ldy $BD.b		; A4 BD
	ldx $DD41.w,Y		; BE 41 DD
	inc $8782.w,X		; FE 82 87
	ora $00C23C.l,X		; 1F 3C C2 00
	ora $8284.w,Y		; 19 84 82
	inc A		; 1A
	.db $82, $9A, $C3		; 82 9A C3
	stp		; DB
	tsb $3D.b		; 04 3D
	inc $F180.w,X		; FE 80 F1
.ACCU 16
	rep #$6C		; C2 6C
	sbc ($FE.b),Y		; F1 FE
	jsr ($827C.w,X)		; FC 7C 82
	jmp ($8C7C.w,X)		; 7C 7C 8C
	tya		; 98
	.db $42, $01		; 42 01
	sta $D901.w,Y		; 99 01 D9
	inc $7F79.w,X		; FE 79 7F
	ldx $39FE.w,Y		; BE FE 39
	sta ($B9.b,X)		; 81 B9
	sta ($81.b,X)		; 81 81
	ora $70.b,S		; 03 70
	inc $0374.w,X		; FE 74 03
	stz $D3.b		; 64 D3
	sbc ($FE.b,S),Y		; F3 FE
	jsr ($8D8C.w,X)		; FC 8C 8D
	inc $8988.w,X		; FE 88 89
	tya		; 98
	sta $98FE.w,Y		; 99 FE 98
	sbc ($00.b,X)		; E1 00
	cpy #$FE0F.w		; C0 0F FE
	cmp ($1E.b,X)		; C1 1E
	cpy #$DFFE.w		; C0 FE DF
	sbc $C8383B.l,X		; FF 3B 38 C8
	and ($C0.b),Y		; 31 C0
	and ($08.b,S),Y		; 33 08
	cmp $21B0.w,Y		; D9 B0 21
	ldy #$A121.w		; A0 21 A1
	ora $83.b,S		; 03 83
	ora [$8F.b]		; 07 8F
	trb $87.b		; 14 87
	asl $0C86.w		; 0E 86 0C
	tsb $8648.w		; 0C 48 86
	rti		; 40

	sed		; F8
	brk $3A.b		; 00 3A
	rti		; 40

	bra  64.b		; 80 40
	eor $038B44.l,X		; 5F 44 8B 03
	stx $83.b		; 86 83
	txy		; 9B
.ACCU 16
.INDEX 16
	rep #$F1		; C2 F1
	rti		; 40

	rti		; 40

	rti		; 40

	jmp $280C.w		; 4C 0C 28
	lsr $00.b		; 46 00
	jmp ($3856.w,X)		; 7C 56 38
	tya		; 98
	xba		; EB
	rti		; 40

	php		; 08
	inc $46.b,X		; F6 46
	sta $C4.b,S		; 83 C4
	ora [$B2.b]		; 07 B2
	txs		; 9A
	lsr $98.b		; 46 98
	cpx $84C0.w		; EC C0 84
	sbc ($B8.b),Y		; F1 B8
	sbc ($5C.b),Y		; F1 5C
	sbc ($C3.b)		; F2 C3
	pei ($BF.b)		; D4 BF
	cpy #$F384.w		; C0 84 F3
	lsr $20F4.w,X		; 5E F4 20
	cmp ($E0.b,X)		; C1 E0
	trb $00F0.w		; 1C F0 00
	sei		; 78
	sta $78.b,S		; 83 78
	asl $1EBF.w		; 0E BF 1E
	nop		; EA
	brk $E9.b		; 00 E9
	brk $E0.b		; 00 E0
	ora ($0F.b,X)		; 01 0F
	adc $803404.l		; 6F 04 34 80
	bcs 106.b		; B0 6A
	mvn $F3,$9A		; 54 9A F3
	brk $C7.b		; 00 C7
	adc ($F7.b,X)		; 61 F7
	asl $C0.b		; 06 C0
	ora #$FE7F.w		; 09 7F FE
	sec		; 38
	cmp $12F041.l,X		; DF 41 F0 12
	inc $F15F.w,X		; FE 5F F1
	rti		; 40

	cpy #$3FA3.w		; C0 A3 3F
	cpy $07.b		; C4 07
	cmp ($01.b),Y		; D1 01
	sbc #$FC01.w		; E9 01 FC
	jsr ($A080.w,X)		; FC 80 A0
	and $073A.w,X		; 3D 3A 07
	jmp $04C532.l		; 5C 32 C5 04
	asl $DA50.w		; 0E 50 DA
	cmp $FF.b		; C5 FF
	pha		; 48
	sbc #$6A80.w		; E9 80 6A
	ora $13.b		; 05 13
	plx		; FA
	sta $B6.b,X		; 95 B6
	jsr ($A3FF.w,X)		; FC FF A3
	jsr ($B96A.w,X)		; FC 6A B9
	eor ($A8.b,S),Y		; 53 A8
	cpx #$AAAF.w		; E0 AF AA
	plx		; FA
	eor $E0.b,X		; 55 E0
	inc $D555.w,X		; FE 55 D5
	plx		; FA
	jsr ($E0AA.w,X)		; FC AA E0
	sed		; F8
	tsb $FC8A.w		; 0C 8A FC
	cpx #$09F8.w		; E0 F8 09
	inc $FD.b,X		; F6 FD
	cpx #$56FD.w		; E0 FD 56
	xba		; EB
	cpx #$0BF8.w		; E0 F8 0B
	ldy $26.b		; A4 26
	and $F8E0FE.l,X		; 3F FE E0 F8
	ora #$D429.w		; 09 29 D4
	cpx #$0AF8.w		; E0 F8 0A
	beq  -2.b		; F0 FE
	eor $A3.b,X		; 55 A3
	cpx #$09F8.w		; E0 F8 09
	eor [$CA.b]		; 47 CA
	cpy #$0CF8.w		; C0 F8 0C
	ror $C9.b		; 66 C9
	cpy #$0BF8.w		; C0 F8 0B
	bra  -2.b		; 80 FE
	lsr $A9.b		; 46 A9
	sta $F8E0F1.l		; 8F F1 E0 F8
	ora #$FE80.w		; 09 80 FE
	sbc $06E0FD.l		; EF FD E0 06
	asl $0954.w,X		; 1E 54 09
	wai		; CB
	cpx #$0AF8.w		; E0 F8 0A
	asl $FF.b		; 06 FF
	ora [$FE.b]		; 07 FE
	rti		; 40

	sed		; F8
	phd		; 0B
	ror $40D1.w		; 6E D1 40
	sed		; F8
	ora $BAA8.w		; 0D A8 BA
	cpy #$C8C0.w		; C0 C0 C8
	inc $FC.b,X		; F6 FC
	inc $F0C6.w,X		; FE C6 F0
	ora #$FCFE.w		; 09 FE FC
	bra -107.b		; 80 95
	eor $AB.b,X		; 55 AB
	inc $0DF8.w,X		; FE F8 0D
	ror A		; 6A
	cpy $FEF1.w		; CC F1 FE
	sed		; F8
	phd		; 0B
	dec $FEF1.w		; CE F1 FE
	sed		; F8
	tsb $CCAA.w		; 0C AA CC
	sbc ($FE.b),Y		; F1 FE
	sed		; F8
	phd		; 0B
	lsr $75.b		; 46 75
	bcs -56.b		; B0 C8
	ora ($FE.b,S),Y		; 13 FE
	sed		; F8
	phd		; 0B
	bvs  -2.b		; 70 FE
	tsb $B5E1.w		; 0C E1 B5
	lda ($CF.b)		; B2 CF
	sbc $FF.b,S		; E3 FF
	bvs  20.b		; 70 14
	and ($FE.b,X)		; 21 FE
	sbc #$FEB9.w		; E9 B9 FE
	cop $1F.b		; 02 1F
	bra  34.b		; 80 22
	inc $57E2.w,X		; FE E2 57
	lda $FB00.w,X		; BD 00 FB
	cpy #$9544.w		; C0 44 95
.ACCU 8
	sep #$E0		; E2 E0
	inc $C12A.w,X		; FE 2A C1
	brk $FB.b		; 00 FB
	stz $45D2.w,X		; 9E D2 45
	eor $94FE.w,Y		; 59 FE 94
	cmp ($FE.b,S),Y		; D3 FE
	eor $FED2.w,X		; 5D D2 FE
	inc $FD.b,X		; F6 FD
	and $7E8A.w,Y		; 39 8A 7E
	sbc ($FE.b,X)		; E1 FE
	trb $19FE.w		; 1C FE 19
	cmp ($39.b)		; D2 39
	.db $82, $EA, $FC		; 82 EA FC
	inc $FE1C.w,X		; FE 1C FE
	plx		; FA
	eor ($A3.b),Y		; 51 A3
	ldy #$38DB.w		; A0 DB 38
	inc $FFC0.w,X		; FE C0 FF
	lsr A		; 4A
	sbc ($38.b)		; F2 38
	inc $0812.w,X		; FE 12 08
	cpy #$1BFD.w		; C0 FD 1B
	nop		; EA
	cpx #$27FE.w		; E0 FE 27
	lda ($80.b)		; B2 80
	tsb $76.b		; 04 76
	dec $E0FE.w		; CE FE E0
	lda $FE20.w		; AD 20 FE
	sei		; 78
	rti		; 40

	sbc ($E0.b),Y		; F1 E0
	inc $B0.b,X		; F6 B0
	ora #$C0.b		; 09 C0
	sbc $D348.w,X		; FD 48 D3
	iny		; C8
	asl A		; 0A
	jmp ($FEBC.w,X)		; 7C BC FE
	dec $8E00.w		; CE 00 8E
	brk $0E.b		; 00 0E
	inc $001E.w,X		; FE 1E 00
	rol $4F1F.w,X		; 3E 1F 4F
	bra  -4.b		; 80 FC
	dec $8EFF.w		; CE FF 8E
	sbc $1EFE0E.l,X		; FF 0E FE 1E
	sbc $97FA3E.l,X		; FF 3E FA 97
	bra -65.b		; 80 BF
	xba		; EB
	adc ($F2.b,X)		; 61 F2
	sbc $9545BA.l,X		; FF BA 45 95
	ror A		; 6A
	pei ($2B.b)		; D4 2B
	sbc ($FC.b,S),Y		; F3 FC
	ldx $C3FC.w,Y		; BE FC C3
	tsx		; BA
	sbc $D4FF95.l,X		; FF 95 FF D4
	sta $BFE0EC.l,X		; 9F EC E0 BF
	rti		; 40

	lda ($7A.b)		; B2 7A
	sbc $C4184D.l,X		; FF 4D 18 C4
	cpx #$BFFC.w		; E0 FC BF
	sbc $FCF4B2.l,X		; FF B2 F4 FC
	beq -64.b		; F0 C0
	cld		; D8
	cpx #$2028.w		; E0 28 20
	bmi -48.b		; 30 D0
	iny		; C8
	inc $48A0.w,X		; FE A0 48
	jsr ($3FE0.w,X)		; FC E0 3F
	inc A		; 1A
	eor ($1F.b,X)		; 41 1F
	stx $F4A9.w		; 8E A9 F4
	lda ($9F.b,X)		; A1 9F
	jsr ($FECA.w,X)		; FC CA FE
	sed		; F8
	ora $355D.w		; 0D 5D 35
	cld		; D8
	ldx $B8D0.w,Y		; BE D0 B8
	ora #$FD.b		; 09 FD
	cop $FE.b		; 02 FE
	sed		; F8
	phd		; 0B
	ldx $B8.b,Y		; B6 B8
	ora #$E0.b		; 09 E0
	inc $F040.w,X		; FE 40 F0
	ora ($E0.b)		; 12 E0
	asl A		; 0A
	txa		; 8A
	lsr $FF.b		; 46 FF
	sbc $EB28.w,X		; FD 28 EB
	inc $D4.b		; E6 D4
	jsr ($AA92.w,X)		; FC 92 AA
	plp		; 28
	phy		; 5A
	sbc $4C.b		; E5 4C
	eor $F8E0E6.l		; 4F E6 E0 F8
	asl A		; 0A
	xba		; EB
	sbc $EAFCE0.l,X		; FF E0 FC EA
	bcs  70.b		; B0 46
	pea $F8E0.w		; F4 E0 F8
	asl A		; 0A
	lsr $F3.b		; 46 F3
	cpy #$13F8.w		; C0 F8 13
	ora ($80.b,X)		; 01 80
	plx		; FA
	tsb $4A.b		; 04 4A
	clv		; B8
	inc $FA.b,X		; F6 FA
	cld		; D8
	asl A		; 0A
	dec $B54E.w		; CE 4E B5
	lda $F8C0CA.l		; AF CA C0 F8
	tsb $C0C0.w		; 0C C0 C0
	sed		; F8
	ora $AA55.w		; 0D 55 AA
	sbc $FA.b,X		; F5 FA
	eor ($AD.b)		; 52 AD
	sbc ($FC.b,X)		; E1 FC
	sbc #$FC.b		; E9 FC
	eor $FF.b,X		; 55 FF
	eor ($BD.b)		; 52 BD
	sbc $FC40.w,X		; FD 40 FC
	lda ($4D.b)		; B2 4D
	ldx $5DDE.w,Y		; BE DE 5D
	eor ($E0.b,X)		; 41 E0
	sed		; F8
	phd		; 0B
	lda ($FF.b)		; B2 FF
	ldx $F8E0.w,Y		; BE E0 F8
	tsb $48A0.w		; 0C A0 48
	tax		; AA
	sbc ($E0.b)		; F2 E0
	plp		; 28
	eor ($D9.b)		; 52 D9
	lda ($AF.b,X)		; A1 AF
	mvn $FF,$E1		; 54 E1 FF
	sta $1FF3AA.l,X		; 9F AA F3 1F
	cmp $E01F3F.l		; CF 3F 1F E0
	beq  22.b		; F0 16
	clv		; B8
	ldx $9F.b,Y		; B6 9F
	beq  17.b		; F0 11
	jsr ($1CE8.w,X)		; FC E8 1C
	and ($E9.b)		; 32 E9
	bit $FEE9.w		; 2C E9 FE
	cmp ($ED.b),Y		; D1 ED
	ora [$E0.b]		; 07 E0
	and $BFBC.w		; 2D BC BF
	cpx $05.b		; E4 05
	lda #$00.b		; A9 00
	ora [$38.b],Y		; 17 38
	bmi -20.b		; 30 EC
	adc $96EA1D.l,X		; 7F 1D EA 96
	sbc $FF.b,S		; E3 FF
	cpx #$FC29.w		; E0 29 FC
	cpx #$FC3E.w		; E0 3E FC
	cpx $70FF.w		; EC FF 70
	brk $EB.b		; 00 EB
	ora $FB.b,S		; 03 FB
	ora ($FF.b),Y		; 11 FF
	ora $EE.b,X		; 15 EE
	ora $EE.b,X		; 15 EE
	sbc [$00.b],Y		; F7 00
	trb $08.b		; 14 08
	eor $03D0.w,X		; 5D D0 03
	jsr ($E004.w,X)		; FC 04 E0
	sbc $7F60.w,X		; FD 60 7F
	cpy #$0DF8.w		; C0 F8 0D
	sbc ($57.b)		; F2 57
	lda $F8C0.w,X		; BD C0 F8
	ora #$8F.b		; 09 8F
	bvs -120.b		; 70 88
	adc [$8B.b],Y		; 77 8B
	stz $FE.b,X		; 74 FE
	sed		; F8
	ora #$8F.b		; 09 8F
	sbc $FD.b,S		; E3 FD
	ora [$FE.b]		; 07 FE
	sed		; F8
	asl A		; 0A
	ora ($FC.b,S),Y		; 13 FC
	tyx		; BB
	sta $FF.b,S		; 83 FF
	plp		; 28
	cmp [$28.b],Y		; D7 28
	sbc $AFFE00.l		; EF 00 FE AF
	lda $7CFCFF.l		; AF FF FC 7C
	brk $10.b		; 00 10
	inc $E0FD.w,X		; FE FD E0
	jsr ($F0F0.w,X)		; FC F0 F0
	sbc ($0F.b)		; F2 0F
	cpx #$08EC.w		; E0 EC 08
	inx		; E8
	asl $EE.b,X		; 16 EE
	sbc $A5FEF4.l,X		; FF F4 FE A5
	ldx $0B1E.w		; AE 1E 0B
	asl A		; 0A
	inc $41BE.w,X		; FE BE 41
	rts		; 60

	bne   9.b		; D0 09
	sed		; F8
	inx		; E8
	inc $A2.b		; E6 A2
	stz $C2FF.w		; 9C FF C2
	sbc $920031.l,X		; FF 31 00 92
	bra  82.b		; 80 52
	cpy #$4092.w		; C0 92 40
	stz $F5.b		; 64 F5
	sbc $D0230E.l,X		; FF 0E 23 D0
	adc $FE3F0C.l,X		; 7F 0C 3F FE
	lda $6BE0.w,X		; BD E0 6B
	adc $990CFD.l,X		; 7F FD 0C 99
	ora ($6C.b,X)		; 01 6C
	adc $F76867.l		; 6F 67 68 F7
	eor $EA2DE2.l,X		; 5F E2 2D EA
	bra  -2.b		; 80 FE
	rts		; 60

	bcc  32.b		; 90 20
	sbc $FE00.w,X		; FD 00 FE
	lda $A9.b		; A5 A9
	sbc $00F93E.l,X		; FF 3E F9 00
	adc [$80.b],Y		; 77 80
	cmp $E6F970.l,X		; DF 70 F9 E6
	lda ($6E.b),Y		; B1 6E
	sbc ($2E.b),Y		; F1 2E
	rtl		; 6B

	phx		; DA
	rol $06A3.w,X		; 3E A3 06
	brk $08.b		; 00 08
	trb $8E.b		; 14 8E
	jsr ($E1A7.w,X)		; FC A7 E1
	cmp ($2E.b),Y		; D1 2E
	adc ($BF.b),Y		; 71 BF
	brk $B7.b		; 00 B7
	tsb $06.b		; 04 06
	inc $A5.b,X		; F6 A5
	ror $AEFF.w,X		; 7E FF AE
	cmp #$C0.b		; C9 C0
	bra  -8.b		; 80 F8
	ldy $FFF5.w,X		; BC F5 FF
	sbc ($B1.b,S),Y		; F3 B1
	sta $CE.b		; 85 CE
	lda [$EF.b],Y		; B7 EF
	inc $FF78.w,X		; FE 78 FF
	bmi -49.b		; 30 CF
	bmi -32.b		; 30 E0
	inc $3078.w,X		; FE 78 30
	cpx #$0BF8.w		; E0 F8 0B
	xba		; EB
	trb $2A.b		; 14 2A
	adc $AB.b,X		; 75 AB
	sbc $EBD420.l,X		; FF 20 D4 EB
	sty $6B.b,X		; 94 6B
	sty $FF.b,X		; 94 FF
	trb $B9.b		; 14 B9
	.db $62, $FC, $C0		; 62 FC C0
	sed		; F8
	phd		; 0B
	ror $F3E9.w,X		; 7E E9 F3
	brk $8B.b		; 00 8B
	stz $8D.b,X		; 74 8D
	adc ($C4.b)		; 72 C4
	inc $F6.b,X		; F6 F6
	brk $70.b		; 00 70
	cmp ($50.b)		; D2 50
	tsb $C4.b		; 04 C4
	sbc [$F6.b],Y		; F7 F6
	sbc $EFFE10.l,X		; FF 10 FE EF
	inc $F2FD.w,X		; FE FD F2
	adc $E0D0F4.l,X		; 7F F4 D0 E0
	ora ($FB.b),Y		; 11 FB
	tsb $FA.b		; 04 FA
	ora $FF.b		; 05 FF
	ora $F5.b		; 05 F5
	asl A		; 0A
	sbc [$08.b],Y		; F7 08
	inx		; E8
	cmp $CDDFE2.l,X		; DF E2 DF CD
	sbc ($05.b),Y		; F1 05
	ora [$02.b]		; 07 02
	ora $05.b		; 05 05
	cop $0F.b		; 02 0F
	lda $08F3.w,X		; BD F3 08
	adc ($20.b,X)		; 61 20
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	sbc $7B00FC.l,X		; FF FC 00 7B
	asl $1F.b		; 06 1F
	rol $FFF8.w,X		; 3E F8 FF
	jsr ($0004.w,X)		; FC 04 00
	sty $80.b		; 84 80
	ror $FCE8.w,X		; 7E E8 FC
	mvp $24,$00		; 44 00 24
	brk $F2.b		; 00 F2
	jsr $C2FE.w		; 20 FE C2
	inc $0AF8.w,X		; FE F8 0A
	ora $0CABAE.l,X		; 1F AE AB 0C
	inc $0DF8.w,X		; FE F8 0D
	sta [$F8.b],Y		; 97 F8
	inc $0DF8.w,X		; FE F8 0D
	bra  -8.b		; 80 F8
	ora $FE2ED1.l		; 0F D1 2E FE
	sed		; F8
	ora $DB73.w		; 0D 73 DB
	sbc $F8FEBF.l,X		; FF BF FE F8
	asl A		; 0A
	cpx $1B.b		; E4 1B
	xba		; EB
	trb $5B.b		; 14 5B
	pea $24FB.w		; F4 FB 24
	stp		; DB
	bit $6A.b		; 24 6A
	sbc $5C.b,X		; F5 5C
	stp		; DB
	brk $40.b		; 00 40
	ora $8A88C2.l,X		; 1F C2 88 8A
	jsr ($7FF1.w,X)		; FC F1 7F
	inc $C023.w,X		; FE 23 C0
	rtl		; 6B

	sty $AB.b,X		; 94 AB
	mvn $2B,$D4		; 54 D4 2B
	and $CA.b,X		; 35 CA
	lda ($4E.b),Y		; B1 4E
	sed		; F8
	sed		; F8
	cmp $AE.b,S		; C3 AE
	eor ($F3.b),Y		; 51 F3
	tsb $6A84.w		; 0C 84 6A
	asl A		; 0A
	brk $CA.b		; 00 CA
	adc ($C3.b,X)		; 61 C3
	brk $4E.b		; 00 4E
	ldx $00.b		; A6 00
	eor ($DE.b),Y		; 51 DE
.INDEX 16
	rep #$55		; C2 55
	inc $4092.w,X		; FE 92 40
	and $F8FE6D.l,X		; 3F 6D FE F8
	tsx		; BA
	eor $EF.b		; 45 EF
	bpl  69.b		; 10 45
	brk $44.b		; 00 44
	cmp ($FE.b,X)		; C1 FE
	adc $F3FE.w		; 6D FE F3
	dex		; CA
	inc $16.b,X		; F6 16
	sbc #$F0.b		; E9 F0
	beq  -8.b		; F0 F8
	php		; 08
	sty $7F.b,X		; 94 7F
	ora $E6FAE8.l,X		; 1F E8 FA E6
	adc $F5620F.l,X		; 7F 0F 62 F5
	beq  22.b		; F0 16
	cmp ($EC.b,X)		; C1 EC
	php		; 08
	clv		; B8
	cmp ($1A.b),Y		; D1 1A
	sbc ($80.b,S),Y		; F3 80
	sbc ($FF.b,S),Y		; F3 FF
	trb $FF.b		; 14 FF
	lda [$5E.b]		; A7 5E
	sbc [$FF.b]		; E7 FF
	and $DE.b,X		; 35 DE
	and $7E.b,X		; 35 7E
	sbc ($5E.b,S),Y		; F3 5E
	cmp $1C.b,S		; C3 1C
	sbc [$E8.b],Y		; F7 E8
	dec $7F.b		; C6 7F
	and ($FC.b),Y		; 31 FC
	sbc $34.b,X		; F5 34
	plx		; FA
	cpy $3B.b		; C4 3B
	lda $4A.b,X		; B5 4A
	stz $BC63.w		; 9C 63 BC
	phk		; 4B
	sed		; F8
	beq  -6.b		; F0 FA
	ldy $7B.b		; A4 7B
	cpy $3333.w		; CC 33 33
	sbc $4A00.w,X		; FD 00 4A
	brk $23.b		; 00 23
	brk $42.b		; 00 42
	brk $43.b		; 00 43
	jsr ($F4F8.w,X)		; FC F8 F4
	jsr ($FFFF.w,X)		; FC FF FF
	and $E5D2.w		; 2D D2 E5
	inc A		; 1A
	ldy $5A.b		; A4 5A
	pla		; 68
	dec $29.b,X		; D6 29
	dec $65.b,X		; D6 65
	txs		; 9A
	and $DF.b		; 25 DF
	sbc $08FEDA.l,X		; FF DA FE 08
	cmp ($00.b)		; D2 00
	inc A		; 1A
	and #$A9.b		; 29 A9
	sta [$00.b],Y		; 97 00
	ora [$00.b],Y		; 17 00
	tad		; 5B
	eor #$DB.b		; 49 DB
	ora #$F0.b		; 09 F0
	sbc $FBBA01.l,X		; FF 01 BA FB
	cmp $CD22.w,X		; DD 22 CD
	jsl $C52B54.l		; 22 54 2B C5
	dec A		; 3A
	cmp $2A.b,X		; D5 2A
	tda		; 7B
	sed		; F8
	pei ($23.b)		; D4 23
	sbc $22F19E.l		; EF 9E F1 22
	brk $BB.b		; 00 BB
	inc $BA08.w,X		; FE 08 BA
	tya		; 98
	tyx		; BB
	sbc $BB890F.l,X		; FF 0F 89 BB
	bra -104.b		; 80 98
	brk $20.b		; 00 20
	cmp $E413EC.l,X		; DF EC 13 E4
	ora ($62.b,S),Y		; 13 62
	sta $FF00.w,X		; 9D 00 FF
	plx		; FA
	clv		; B8
	cpy #$01F6.w		; C0 F6 01
	jmp.w [$1200]		; DC 00 12
	brk $DA.b		; 00 DA
	beq   0.b		; F0 00
	brk $FA.b		; 00 FA
	eor ($40.b)		; 52 40
	stp		; DB
	bit #$C0.b		; 89 C0
	inc $5663.w,X		; FE 63 56
	php		; 08
	sbc ($89.b)		; F2 89
	adc ($8E.b)		; 72 8E
	adc ($88.b,S),Y		; 73 88
	adc ($8A.b,S),Y		; 73 8A
	adc $FE.b,X		; 75 FE
	adc ($E9.b,S),Y		; 73 E9
	eor ($08.b,X)		; 41 08
	pea $06FE.w		; F4 FE 06
	ror $07.b,X		; 76 07
	adc [$FA.b],Y		; 77 FA
	cpy $59E2.w		; CC E2 59
	cmp #$3E.b		; C9 3E
	nop		; EA
	sed		; F8
	brk $F1.b		; 00 F1
	iny		; C8
	inc $FE.b		; E6 FE
	bpl -34.b		; 10 DE
	dec $FE.b		; C6 FE
	sbc ($10.b)		; F2 10
	iny		; C8
	asl A		; 0A
	jsr $0DE8.w		; 20 E8 0D
	rts		; 60

	beq  10.b		; F0 0A
	xce		; FB
	jsr $44FF.w		; 20 FF 44
	sbc $84A832.l,X		; FF 32 A8 84
	inc $FEE9.w,X		; FE E9 FE
	sed		; F8
	rol A		; 2A
	cpx $FF.b		; E4 FF
	sed		; F8
	ora #$FE.b		; 09 FE
	sbc $0BF004.l,X		; FF 04 F0 0B
	brk $F0.b		; 00 F0
	ora ($18.b,S),Y		; 13 18
	sbc $BD7E99.l,X		; FF 99 7E BD
	ror $24E7.w,X		; 7E E7 24
	sbc $C8BF18.l		; EF 18 BF C8
	sbc [$55.b],Y		; F7 55
	ldy $7EF8.w		; AC F8 7E
	pld		; 2B
	tsx		; BA
	rol $EA.b		; 26 EA
	and $EA.b		; 25 EA
	sbc $E9ACB0.l,X		; FF B0 AC E9
	and $01D2.w		; 2D D2 01
	tay		; A8
	ora ($0F.b)		; 12 0F
	sta [$C1.b],Y		; 97 C1
	sec		; 38
	rol $FEA9.w,X		; 3E A9 FE
	cpy #$FAFF.w		; C0 FF FA
	cmp [$30.b]		; C7 30
	bit $E0FC.w,X		; 3C FC E0
	sbc $D71087.l,X		; FF 87 10 D7
	brk $E6.b		; 00 E6
	brk $66.b		; 00 66
	inc $F0B6.w,X		; FE B6 F0
	asl $C0.b		; 06 C0
	sed		; F8
	trb $F0.b		; 14 F0
	and [$C9.b],Y		; 37 C9
	trb $A1DE.w		; 1C DE A1
	inc $0C1C.w,X		; FE 1C 0C
	sbc [$FF.b]		; E7 FF
	ora [$8D.b]		; 07 8D
	ror $BF.b		; 66 BF
	pha		; 48
	sbc $14FF08.l,X		; FF 08 FF 14
	sbc $EF16.w,X		; FD 16 EF
	trb $FE.b		; 14 FE
	ply		; 7A
	sta ($08.b,S),Y		; 93 08
	php		; 08
	rol $08.b,X		; 36 08
	adc [$B2.b],Y		; 77 B2
	sta ($C1.b),Y		; 91 C1
	inc $8411.w,X		; FE 11 84
	dec $FF.b		; C6 FF
	cop $FE.b		; 02 FE
	plx		; FA
	lda $FFE2.w		; AD E2 FF
	bmi  -4.b		; 30 FC
	ora $02FE.w,Y		; 19 FE 02
	sta $00FE.w,Y		; 99 FE 00
	txy		; 9B
	trb $8B.b		; 14 8B
	eor ($1F.b)		; 52 1F
	stx $D2.b		; 86 D2
	tda		; 7B
	sbc $F748FF.l,X		; FF FF 48 F7
	inc $88.b		; E6 88
	sbc [$FE.b],Y		; F7 FE
	lda [$C7.b]		; A7 C7
	php		; 08
	sbc [$58.b],Y		; F7 58
	and $33E0.w		; 2D E0 33
	php		; 08
	and ($80.b,S),Y		; 33 80
	inc $7FFF.w,X		; FE FF 7F
	brk $B3.b		; 00 B3
	bvc -93.b		; 50 A3
	pea $3EFF.w		; F4 FF 3E
	brk $DF.b		; 00 DF
	ora $38B7.w,Y		; 19 B7 38
	inc $39.b		; E6 39
	cmp $C47F20.l,X		; DF 20 7F C4
	lsr $BE.b		; 46 BE
	rts		; 60

	stx $40.b		; 86 40
	stx $00.b		; 86 00
	dec $FE.b		; C6 FE
	jmp $2F01FF.l		; 5C FF 01 2F
	sbc $3F7F40.l,X		; FF 40 7F 3F
	cpy #$03FC.w		; C0 FC 03
	ora $F4.b,S		; 03 F4
	ldy $F9A2.w,X		; BC A2 F9
	inc $A0EB.w,X		; FE EB A0
	eor ($E4.b,X)		; 41 E4
	php		; 08
	inc $3E3E.w,X		; FE 3E 3E
	adc $738EF5.l,X		; 7F F5 8E 73
	txa		; 8A
	adc ($8F.b,S),Y		; 73 8F
	ror $8A.b,X		; 76 8A
	adc $3C.b,X		; 75 3C
	inc $46.b		; E6 46
	sbc ($00.b)		; F2 00
	cld		; D8
	tsb $FC10.w		; 0C 10 FC
	xce		; FB
	stp		; DB
	ora ($38.b)		; 12 38
	sbc [$AF.b],Y		; F7 AF
	tsx		; BA
	dey		; 88
	adc $806EAC.l		; 6F AC 6E 80
	ror $73.b,X		; 76 73
	tsx		; BA
	jsr $B356.w		; 20 56 B3
	sta $1068FF.l		; 8F FF 68 10
	adc $5D10.w		; 6D 10 5D
	sta ($1F.b)		; 92 1F
	cpy #$B00F.w		; C0 0F B0
	ora ($0A.b,X)		; 01 0A
	tsb $25.b		; 04 25
	sed		; F8
	cmp $2107.w		; CD 07 21
	sbc ($7F.b),Y		; F1 7F
	sep #$00		; E2 00
	rti		; 40

	bit $C0.b,X		; 34 C0
	sei		; 78
	sed		; F8
	and ($D7.b)		; 32 D7
	bmi   0.b		; 30 00
	cli		; 58
	sbc $07FC04.l		; EF 04 FC 07
	sbc ($FF.b,S),Y		; F3 FF
	xba		; EB
	php		; 08
	xba		; EB
	bpl -37.b		; 10 DB
	jsr $A15E.w		; 20 5E A1
	adc #$B2.b		; 69 B2
	lsr $46B9.w,X		; 5E B9 46
	cpx $FCFE.w		; EC FE FC
	ora $7D.b		; 05 7D
	sec		; 38
	tsb $06.b		; 04 06
	rti		; 40

	sbc ($42.b),Y		; F1 42
	ldy #$6082.w		; A0 82 60
	inc $60C2.w,X		; FE C2 60
	cop $DC.b		; 02 DC
	rol $E0FA.w,X		; 3E FA E0
.ACCU 16
	rep #$A0		; C2 A0
	lsr $F0.b		; 46 F0
	ora #$409F.w		; 09 9F 40
	sbc $95.b		; E5 95
	plx		; FA
	sta [$FB.b],Y		; 97 FB
	stz $FE5D.w		; 9C 5D FE
	sta $FB.b,X		; 95 FB
	stx $FC.b,Y		; 96 FC
	rti		; 40

	cpx #$5113.w		; E0 13 51
	ldx $E185.w		; AE 85 E1
	sbc $FCF7.w,X		; FD F7 FC
	sbc $E040.w,X		; FD 40 E0
	ora $727B7B.l		; 0F 7B 7B 72
	adc ($F2.b)		; 72 F2
	cop $FD.b		; 02 FD
	sbc ($C8.b)		; F2 C8
	cmp ($02.b,X)		; C1 02
	sbc $72FF7F.l,X		; FF 7F FF 72
	sbc $848479.l,X		; FF 79 84 84
	sta $0D8D.w		; 8D 8D 0D
	sta $7070ED.l,X		; 9F ED 70 70
	sei		; 78
	sei		; 78
	sbc $B40780.l,X		; FF 80 07 B4
	xce		; FB
	sty $7F.b		; 84 7F
	ora [$FE.b]		; 07 FE
	eor $E6.b		; 45 E6
.ACCU 16
	rep #$60		; C2 60
	sta $AE.b,S		; 83 AE
	tsb $80F2.w		; 0C F2 80
	bcs  -2.b		; B0 FE
	brk $F1.b		; 00 F1
	cld		; D8
	adc #$6060.w		; 69 60 60
	.db $62, $F4, $58		; 62 F4 58
	tad		; 5B
	mvp $FA,$DC		; 44 DC FA
	bvs -69.b		; 70 BB
	plb		; AB
	asl $F2.b		; 06 F2
	inc $A0.b		; E6 A0
	sbc ($86.b),Y		; F1 86
	bvc -80.b		; 50 B0
	phd		; 0B
	lda $D19A5C.l		; AF 5C 9A D1
	cpx #$E07F.w		; E0 7F E0
.ACCU 16
	rep #$6B		; C2 6B
.INDEX 8
	sep #$92		; E2 92
	inc $8E20.w,X		; FE 20 8E
	sbc ($AD.b),Y		; F1 AD
	sed		; F8
	inc $FCFE.w,X		; FE FE FC
	sbc #$8008.w		; E9 08 80
	sbc ($0A.b),Y		; F1 0A
	sbc ($FE.b,S),Y		; F3 FE
	sbc $08.b,S		; E3 08
	adc [$F1.b],Y		; 77 F1
	beq   8.b		; F0 08
	rol $C0.b,X		; 36 C0
	ora $FF.b,X		; 15 FF
	ora ($C4.b),Y		; 11 C4
	lda $FCAF60.l		; AF 60 AF FC
	sbc $60FE62.l,X		; FF 62 FE 60
	ora $8A.b,X		; 15 8A
	ora ($8E.b),Y		; 11 8E
	brk $8E.b		; 00 8E
	bpl -114.b		; 10 8E
	ora ($8C.b)		; 12 8C
	ora ($36.b,X)		; 01 36
	ora ($0C.b)		; 12 0C
	inc $FFB7.w,X		; FE B7 FF
	bvc -64.b		; 50 C0
	cmp $90.b,X		; D5 90
	eor $10FE14.l,X		; 5F 14 FE 10
	bvc -93.b		; 50 A3
	inc $79.b,X		; F6 79
	inc $6154.w,X		; FE 54 61
	adc $3A.b,X		; 75 3A
	inc $FE80.w,X		; FE 80 FE
	lsr $BA.b		; 46 BA
	cmp $00FE60.l,X		; DF 60 FE 00
	ror $00.b,X		; 76 00
	trb $FC.b		; 14 FC
	tax		; AA
	rol $B1B1.w,X		; 3E B1 B1
	inc $FA00.w,X		; FE 00 FA
	brk $F7.b		; 00 F7
	trb $DD.b		; 14 DD
	ora [$E0.b]		; 07 E0
	jsl $FF41FF.l		; 22 FF 41 FF
	jsr ($D680.w,X)		; FC 80 D6
	adc $50.b,X		; 75 50
	trb $08.b		; 14 08
	cpy #$F0.b		; C0 F0
	ora $C804.w		; 0D 04 C8
	phd		; 0B
	phb		; 8B
	adc $FE.b,X		; 75 FE
	brk $C8.b		; 00 C8
	bpl   0.b		; 10 00
	adc $A0D5.w		; 6D D5 A0
	brk $87.b		; 00 87
	tas		; 1B
	sbc $8600.w		; ED 00 86
	ror $73.b		; 66 73
	ora [$FE.b]		; 07 FE
	sbc $FEF7.w,Y		; F9 F7 FE
	sbc $FFA33B.l,X		; FF 3B A3 FF
	sed		; F8
	ora #$2EAA.w		; 09 AA 2E
	sta $15.b,X		; 95 15
	tax		; AA
	pld		; 2B
	sta $17.b,X		; 95 17
	tax		; AA
	and $837FD5.l,X		; 3F D5 7F 83
	beq  23.b		; F0 17
	adc $00D1FC.l,X		; 7F FC D1 00
	nop		; EA
	brk $D4.b		; 00 D4
	brk $E8.b		; 00 E8
	bvc -83.b		; 50 AD
	inc $FEFF.w,X		; FE FF FE
	txa		; 8A
	phb		; 8B
	cmp $DF.b,X		; D5 DF
	plb		; AB
	lda $AADF57.l,X		; BF 57 DF AA
	lda $AE7F54.l,X		; BF 54 7F AE
	lda $D5E19B.l		; AF 9B E1 D5
	cmp $74.b,X		; D5 74
	cpy #$E9.b		; C0 E9
	rti		; 40

	jsr ($50E4.w,X)		; FC E4 50
	brk $FF.b		; 00 FF
	sbc $88002A.l,X		; FF 2A 00 88
	sta $AA1F11.l		; 8F 11 1F AA
	ldx $FF55.w,Y		; BE 55 FF
	tax		; AA
	plx		; FA
	eor ($F1.b),Y		; 51 F1
	tax		; AA
	nop		; EA
	sta $55B1.w		; 8D B1 55
	sbc [$10.b],Y		; F7 10
	tax		; AA
	eor ($A8.b,X)		; 41 A8
	ora $23.b		; 05 23
	ora $FF.b,X		; 15 FF
	sbc $B9E93E.l,X		; FF 3E E9 B9
	clv		; B8
	phd		; 0B
	asl A		; 0A
	adc $64.b		; 65 64
	sta ($90.b),Y		; 91 90
	plb		; AB
	tax		; AA
	eor ($5E.b),Y		; 51 5E
	lda ($FE.b,X)		; A1 FE
	eor ($7F.b,X)		; 41 7F
	plb		; AB
	inc $0047.w,X		; FE 47 00
	sbc $00.b,X		; F5 00
	txy		; 9B
	brk $6F.b		; 00 6F
	ldx #$D1.b		; A2 D1
	lda ($CA.b,X)		; A1 CA
	lda $FA.b,S		; A3 FA
	cmp ($AF.b,X)		; C1 AF
	ldx $F8FE.w,Y		; BE FE F8
	asl A		; 0A
	eor ($06.b),Y		; 51 06
	asl $F9.b		; 06 F9
	inc $0DF8.w,X		; FE F8 0D
	bit $F3.b,X		; 34 F3
	inc $11FF.w,X		; FE FF 11
	ror $66.b		; 66 66
	sta $3FC3.w,Y		; 99 C3 3F
	inc $0DF8.w,X		; FE F8 0D
	clc		; 18
	ror $FE.b		; 66 FE
	trb $0E62.w		; 1C 62 0E
	rts		; 60

	ora [$60.b]		; 07 60
	ora $64.b,S		; 03 64
	sta $E00F.w		; 8D 0F E0
	ror $FE99.w,X		; 7E 99 FE
	sta $9F6E.w,X		; 9D 6E 9F
	adc [$49.b]		; 67 49
	bra  -2.b		; 80 FE
	txy		; 9B
	cpx #$C8.b		; E0 C8
	jsr ($07E2.w,X)		; FC E2 07
	sta $F7.b		; 85 F7
	jsr ($C002.w,X)		; FC 02 C0
	sed		; F8
	ora #$FFE2.w		; 09 E2 FF
	sbc $C0FDFE.l,X		; FF FE FD C0
	jsr ($4638.w,X)		; FC 38 46
	and $06F016.l		; 2F 16 F0 06
	cpx #$06.b		; E0 06
	bra -96.b		; 80 A0
	sbc $B9C2.w,X		; FD C2 B9
	sta ($59.b,S),Y		; 93 59
	stz $75.b,X		; 74 75
	inc $FDA0.w,X		; FE A0 FD
	txs		; 9A
	sbc #$003F.w		; E9 3F 00
	lsr $F1B9.w,X		; 5E B9 F1
	ldx $EE.b,Y		; B6 EE
	adc #$80C0.w		; 69 C0 80
	ora $57.b		; 05 57
	and [$A3.b],Y		; 37 A3
	inc $0958.w,X		; FE 58 09
	lda $9A.b		; A5 9A
	lda ($F1.b,X)		; A1 F1
	sed		; F8
	clv		; B8
	eor ($F4.b,S),Y		; 53 F4
	txs		; 9A
	sbc $7280FF.l		; EF FF 80 72
	asl $F6.b		; 06 F6
	tsb $F4.b		; 04 F4
	adc $AB.b,S		; 63 AB
	adc $8F7FDF.l,X		; 7F DF 7F 8F
	adc $AE7F97.l,X		; 7F 97 7F AE
	eor [$85.b]		; 47 85
	adc $EA7FF5.l,X		; 7F F5 7F EA
	clv		; B8
	tax		; AA
	pea $FEFE.w		; F4 FE FE
	beq  -1.b		; F0 FF
	ora $158888.l,X		; 1F 88 88 15
	ora $BA.b,X		; 15 BA
	tsx		; BA
	eor $75.b,X		; 55 75
	tax		; AA
	plx		; FA
	mvn $A8,$FC		; 54 FC A8
	sed		; F8
	ply		; 7A
	sta $F0.b		; 85 F0
	adc [$80.b],Y		; 77 80
	sbc ($45.b),Y		; F1 45
	brk $8A.b		; 00 8A
	cpy #$F1.b		; C0 F1
	sbc $F05A.w,Y		; F9 5A F0
	sbc $EFAA61.l,X		; FF 61 AA EF
	eor $5F.b,X		; 55 5F
	tay		; A8
	lda $A25F50.l,X		; BF 50 5F A2
	ldx $A2DC.w,Y		; BE DC A2
.ACCU 8
.INDEX 8
	sep #$B8		; E2 B8
	bpl -16.b		; 10 F0
	bpl   0.b		; 10 00
	ldy #$84.b		; A0 84
	sbc ($FC.b),Y		; F1 FC
	eor ($E3.b,X)		; 41 E3
	sbc $E01DDC.l,X		; FF DC 1D E0
	sta [$FE.b]		; 87 FE
	eor $2BFC.w,X		; 5D FC 2B
	plx		; FA
	cmp $89FC.w,X		; DD FC 89
	eor [$CD.b]		; 47 CD
	sed		; F8
	eor ($70.b),Y		; 51 70
	lda $E0.b,S		; A3 E0
	sei		; 78
	txs		; 9A
	cpy $FC.b		; C4 FC
	sta $E0A355.l		; 8F 55 A3 E0
	tay		; A8
	ldy $FCF1.w		; AC F1 FC
	jsr ($F4AF.w,X)		; FC AF F4
	ldy #$F0.b		; A0 F0
	ora $AA0C88.l		; 0F 88 0C AA
	ldx $FCFC.w,Y		; BE FC FC
	ora $F0A0FC.l		; 0F FC A0 F0
	ora $0CE8C4.l		; 0F C4 E8 0C
	bra 120.b		; 80 78
	ora ($B9.b)		; 12 B9
	jsr ($57A8.w,X)		; FC A8 57
	eor ($AE.b),Y		; 51 AE
	plx		; FA
	inc A		; 1A
	jsr ($A0FC.w,X)		; FC FC A0
	sed		; F8
	ora $88FCB9.l		; 0F B9 FC 88
	adc [$11.b],Y		; 77 11
	inc $FCFC.w		; EE FC FC
	ldy #$F8.b		; A0 F8
	ora $061C7F.l		; 0F 7F 1C 06
	and ($5F.b)		; 32 5F
	adc ($C0.b,S),Y		; 73 C0
	ldy #$FE.b		; A0 FE
	cmp $47FEBF.l,X		; DF BF FE 47
	ora [$3F.b]		; 07 3F
	sta $20C0.w,Y		; 99 C0 20
	inc $4AE8.w,X		; FE E8 4A
	ldy #$40.b		; A0 40
	inc $0E55.w,X		; FE 55 0E
	tsx		; BA
	lda $E4.b		; A5 E4
	ldy $15.b		; A4 15
	xba		; EB
	ror $F7B7.w,X		; 7E B7 F7
	cmp $CA880C.l,X		; DF 0C 88 CA
	iny		; C8
	cmp $AAAAFE.l		; CF FE AA AA
	ldy $FEC8.w,X		; BC C8 FE
	tay		; A8
	phk		; 4B
	bne -102.b		; D0 9A
	sta $83.b,S		; 83 83
	sta ($85.b,X)		; 81 85
	iny		; C8
	sed		; F8
	asl A		; 0A
	iny		; C8
	inc $70.b		; E6 70
	lda $C8.b		; A5 C8
	inc $80FE.w,X		; FE FE 80
	sbc $91E19F.l,X		; FF 9F E1 91
	iny		; C8
	inc $AAFE.w,X		; FE FE AA
	plx		; FA
	bra  80.b		; 80 50
	sbc ($0C.b),Y		; F1 0C
	sed		; F8
	asl A		; 0A
	pea $B3A4.w		; F4 A4 B3
	sbc $35A4E6.l,X		; FF E6 A4 35
	inc $2A.b,X		; F6 2A
	sta $30.b,X		; 95 30
	sbc $0D8FBF.l		; EF BF 8F 0D
	lda ($29.b)		; B2 29
	stx $78.b,Y		; 96 78
	lsr $5580.w		; 4E 80 55
	bra  79.b		; 80 4F
	bra 114.b		; 80 72
	bra  86.b		; 80 56
	ora $F6D83E.l		; 0F 3E D8 F6
	and ($DE.b,X)		; 21 DE
	eor ($BE.b,X)		; 41 BE
	lda $F0B8.w		; AD B8 F0
	asl A		; 0A
	dec $BE00.w,X		; DE 00 BE
	brk $F9.b		; 00 F9
	adc $FDFFF0.l		; 6F F0 FF FD
	bvc -81.b		; 50 AF
	jsr $28DF.w		; 20 DF 28
	dec $0D.b,X		; D6 0D
	sbc ($E0.b),Y		; F1 E0
	sbc $FF78AF.l,X		; FF AF 78 FF
	and $00.b		; 25 00
	cmp [$01.b],Y		; D7 01
	sbc ($E0.b)		; F2 E0
	inc $7282.w,X		; FE 82 72
	sta ($10.b,S),Y		; 93 10
	stz $FD81.w,X		; 9E 81 FD
	cpx #$71.b		; E0 71
	asl $FEE0.w		; 0E E0 FE
	ora $7D.b,S		; 03 7D
	ora $60FF6F.l,X		; 1F 6F FF 60
	cpy #$FF.b		; C0 FF
	ror $D757.w,X		; 7E 57 D7
	ora ($C1.b,X)		; 01 C1
	rol $DE3F.w,X		; 3E 3F DE
	cmp ($90.b),Y		; D1 90
	adc $0E9800.l,X		; 7F 00 98 0E
	ora $4CE1.w,Y		; 19 E1 4C
	inc $FDE0.w,X		; FE E0 FD
	ldx $FEBE.w,Y		; BE BE FE
	cpx #$F8.b		; E0 F8
	ora $AF90.w		; 0D 90 AF
	tsb $430D.w		; 0C 0D 43
	plb		; AB
	cpx #$FD.b		; E0 FD
	bra 111.b		; 80 6F
	jsr ($C3F3.w,X)		; FC F3 C3
	xba		; EB
	cpx #$F8.b		; E0 F8
	phd		; 0B
	sta ($7E.b,X)		; 81 7E
	inc $8DB2.w,X		; FE B2 8D
	jsl $FF602D.l		; 22 2D 60 FF
	stz $59.b,X		; 74 59
	bra -121.b		; 80 87
	beq  77.b		; F0 4D
	cpx #$DD.b		; E0 DD
	bpl  72.b		; 10 48
	sta $B10E0A.l,X		; 9F 0A 0E B1
	and ($03.b,X)		; 21 03
	cpy #$9E.b		; C0 9E
	ora ($AD.b)		; 12 AD
	pea $C82E.w		; F4 2E C8
	bra -16.b		; 80 F0
	adc $5F.b,S		; 63 5F
	asl A		; 0A
	bra 113.b		; 80 71
	bra  94.b		; 80 5E
	bra 109.b		; 80 6D
	pea $FA7F.w		; F4 7F FA
	sta [$C8.b]		; 87 C8
	adc ($8D.b)		; 72 8D
	.db $42, $BD		; 42 BD
	jmp $AEB3.w		; 4C B3 AE
	eor ($CA.b),Y		; 51 CA
	sbc $33C2.w,X		; FD C2 33
	cpy $5B3A.w		; CC 3A 5B
	sta $BD00.w		; 8D 00 BD
	brk $B3.b		; 00 B3
	sta ($B1.b,X)		; 81 B1
	tsx		; BA
	cpy $FFFF.w		; CC FF FF
	lda $5A.b,S		; A3 5A
	ora [$E4.b],Y		; 17 E4
	asl $1FE9.w		; 0E E9 1F
	bne 110.b		; D0 6E
	lda ($1D.b,X)		; A1 1D
	.db $82, $5D, $C2		; 82 5D C2
	tsa		; 3B
	tsb $F7.b		; 04 F7
	and ($03.b,X)		; 21 03
	eor $EB07.w,X		; 5D 07 EB
	pea $EF41.w		; F4 41 EF
	and $213F9F.l,X		; 3F 9F 3F 21
	lda $1FBC3C.l,X		; BF 3C BC 1F
	cmp [$38.b]		; C7 38
	asl $28E1.w,X		; 1E E1 28
	adc $01FE80.l,X		; 7F 80 FE 01
	sbc $FE.b,X		; F5 FE
	ror $FEC2.w,X		; 7E C2 FE
	tya		; 98
	eor [$FF.b]		; 47 FF
	inc $AB76.w,X		; FE 76 AB
	cmp $7F7909.l,X		; DF 09 79 7F
	sbc ($DF.b,X)		; E1 DF
	lda ($FD.b)		; B2 FD
	rol $F4.b,X		; 36 F4
	sta ($FC.b,S),Y		; 93 FC
	cmp #$28.b		; C9 28
	cpx #$F8.b		; E0 F8
	ora $D06BEF.l		; 0F EF 6B D0
	tad		; 5B
	and $BDC1.w,Y		; 39 C1 BD
	eor $DB63FF.l,X		; 5F FF 63 DB
	lda [$77.b]		; A7 77
	cmp $21BF.w		; CD BF 21
	tya		; 98
	bpl  96.b		; 10 60
	cmp $C8.b,X		; D5 C8
	tda		; 7B
	sta $F724FF.l		; 8F FF 24 F7
	xce		; FB
	sta [$0C.b]		; 87 0C
	xba		; EB
	trb $F8E1.w		; 1C E1 F8
	ora $FA13D4.l		; 0F D4 13 FA
	ora #$FC.b		; 09 FC
	ora $FE.b		; 05 FE
	sty $FF.b		; 84 FF
	lda $C07F81.l,X		; BF 81 7F C0
	sbc $80FF40.l,X		; FF 40 FF 80
	beq -21.b		; F0 EB
	sed		; F8
	sbc $FC.b,X		; F5 FC
	xce		; FB
	inc $A8FD.w,X		; FE FD A8
	sbc $83F6C0.l,X		; FF C0 F6 83
	stz $0E70.w		; 9C 70 0E
	rti		; 40

	bcc  13.b		; 90 0D
	and [$98.b]		; 27 98
	trb $11A3.w		; 1C A3 11
	ldx $B630.w		; AE 30 B6
	inc $E08F.w,X		; FE 8F E0
	sbc $C9E858.l		; EF 58 E8 C9
	ror $E9E4.w		; 6E E4 E9
	cpx #$ED.b		; E0 ED
	bit $DB.b		; 24 DB
	and #$D6.b		; 29 D6
	adc ($FB.b,X)		; 61 FB
	sbc [$9E.b],Y		; F7 9E
	cop $FD.b		; 02 FD
	cpx #$EF.b		; E0 EF
	stp		; DB
	brk $D6.b		; 00 D6
	brk $9E.b		; 00 9E
	brk $FD.b		; 00 FD
	cpx #$EE.b		; E0 EE
	tas		; 1B
	xce		; FB
	sta [$87.b]		; 87 87
	adc [$F7.b],Y		; 77 F7
	ora [$F7.b],Y		; 17 F7
	jsr ($8202.w,X)		; FC 02 82
	and $DFFECF.l,X		; 3F CF FE DF
	xba		; EB
	and [$CF.b],Y		; 37 CF
	tda		; 7B
	tsb $77.b		; 04 77
	php		; 08
	tya		; 98
	lda $8208.w,Y		; B9 08 82
	adc $7CC8.w,X		; 7D C8 7C
	cli		; 58
	inc $BA42.w,X		; FE 42 BA
	cmp ($42.b),Y		; D1 42
	and $FC2E36.l,X		; 3F 36 2E FC
	.db $42, $BD		; 42 BD
	sbc [$E8.b],Y		; F7 E8
	ora #$FE.b		; 09 FE
	mvn $FC,$E0		; 54 E0 FC
	bvc -24.b		; 50 E8
	sbc [$FD.b]		; E7 FD
	cmp [$F2.b]		; C7 F2
	sbc ($DC.b),Y		; F1 DC
	ora [$E0.b]		; 07 E0
	inc $DDDB.w,X		; FE DB DD
	lda $EBBFDB.l		; AF DB BF EB
	sbc ($7F.b),Y		; F1 7F
	adc $DBFEC0.l,X		; 7F C0 FE DB
	and $60BF.w,X		; 3D BF 60
	sbc $0BF190.l,X		; FF 90 F1 0B
	eor $77FEE0.l,X		; 5F E0 FE 77
	adc [$A0.b],Y		; 77 A0
	sed		; F8
	phd		; 0B
	cpy #$77.b		; C0 77
	txy		; 9B
	sbc $36FF90.l,X		; FF 90 FF 36
	lda $F855.w,Y		; B9 55 F8
	ldy #$F8.b		; A0 F8
	phd		; 0B
	bra  -8.b		; 80 F8
	tsb $EDE1.w		; 0C E1 ED
	cpx #$FE.b		; E0 FE
	lsr $C73B.w		; 4E 3B C7
	rol $D1.b,X		; 36 D1
	lda $7B.b		; A5 7B
	and $B8DE.w,X		; 3D DE B8
	lsr $4C.b,X		; 56 4C
	ora [$18.b],Y		; 17 18
	ora ($89.b,X)		; 01 89
	sty $10.b		; 84 10
	brk $18.b		; 00 18
	sbc [$3E.b],Y		; F7 3E
	dex		; CA
	inc $0CF3.w,X		; FE F3 0C
	inc $08B9.w,X		; FE B9 08
	sbc $D8990A.l,X		; FF 0A 99 D8
	phd		; 0B
	ora [$07.b]		; 07 07
	tsb $04.b		; 04 04
	ldy $8EAE.w,X		; BC AE 8E
	stp		; DB
	sbc [$7E.b]		; E7 7E
	sta ($96.b,X)		; 81 96
	sbc $FDE4.w,X		; FD E4 FD
	sbc [$00.b]		; E7 00
	cmp [$31.b]		; C7 31
	nop		; EA
	ora [$6F.b]		; 07 6F
	cpx #$0C.b		; E0 0C
	cpx #$F8.b		; E0 F8
	ora $F77E.w		; 0D 7E F7
	cpx #$F8.b		; E0 F8
	asl A		; 0A
	sbc $FD06.w,Y		; F9 06 FD
	inc $FCFD.w,X		; FE FD FC
	and $F0BC.w,X		; 3D BC F0
	lda $029101.l		; AF 01 91 02
	plx		; FA
	plx		; FA
	jsr ($5CFD.w,X)		; FC FD 5C
	jsr ($785F.w,X)		; FC 5F 78
	jmp $FEF128.l		; 5C 28 F1 FE
	xce		; FB
	eor $F6F8.w,Y		; 59 F8 F6
	sta $4BE09D.l,X		; 9F 9D E0 4B
	stz $FE1E.w		; 9C 1E FE
	stz $FA9B.w,X		; 9E 9B FA
	sbc $CA3F8A.l,X		; FF 8A 3F CA
	adc $6A58.w,Y		; 79 58 6A
	inc $8A7F.w,X		; FE 7F 8A
	jsr ($E404.w,X)		; FC 04 E4
	inc $0DF8.w,X		; FE F8 0D
	cmp [$7D.b],Y		; D7 7D
	stx $09F8.w		; 8E F8 09
	sed		; F8
	tsb $88.b		; 04 88
	sbc $8DC5.w,X		; FD C5 8D
	ora $06.b,S		; 03 06
	sta $1F8A.w,Y		; 99 8A 1F
	sta $AD1FE0.l,X		; 9F E0 1F AD
	jsr ($58FD.w,X)		; FC FD 58
	ora #$56.b		; 09 56
	sbc #$DF.b		; E9 DF
	cpx $0B78.w		; EC 78 0B
	dec $ED.b		; C6 ED
	cpx #$F1.b		; E0 F1
	sbc ($0F.b)		; F2 0F
	txs		; 9A
	rol $F0.b		; 26 F0
	sec		; 38
	bra   9.b		; 80 09
	php		; 08
	adc ($F6.b),Y		; 71 F6
	inc $1D.b,X		; F6 1D
	rol $4A.b		; 26 4A
	eor $F8FE87.l,X		; 5F 87 FE F8
	ora #$C2.b		; 09 C2
	.db $62, $02, $F2		; 62 02 F2
	jmp.w [$FF3A]		; DC 3A FF
	inc $18E7.w,X		; FE E7 18
	inc $B7F0.w,X		; FE F0 B7
	eor ($CB.b)		; 52 CB
	and ($DE.b,X)		; 21 DE
	and ($66.b,X)		; 21 66
	sbc $C4DB5A.l,X		; FF 5A DB C4
	jsr ($9121.w,X)		; FC 21 91
	.db $82, $4C, $E5		; 82 4C E5
	bit $FC.b		; 24 FC
	cpx #$94.b		; E0 94
	cpx #$47.b		; E0 47
	adc $E9CE.w,X		; 7D CE E9
	stz $FC.b		; 64 FC
	sbc ($B1.b,X)		; E1 B1
	ldy $AC.b		; A4 AC
	phx		; DA
	bit $1E1E.w,X		; 3C 1E 1E
.ACCU 8
	sep #$E2		; E2 E2
	plx		; FA
	cmp $FC50E0.l,X		; DF E0 50 FC
	sbc $21.b,S		; E3 21
	asl $6601.w		; 0E 01 66
	sbc $BFCB4A.l		; EF 4A CB BF
	sty $FF.b		; 84 FF
	cpx #$23.b		; E0 23
	ora $1C.b,S		; 03 1C
	trb $F0F0.w		; 1C F0 F0
	bpl  16.b		; 10 10
	bit $FD.b,X		; 34 FD
	and ($B9.b,S),Y		; 33 B9
	ora $FF.b,S		; 03 FF
	and ($18.b,X)		; 21 18
	bpl 123.b		; 10 7B
	tda		; 7B
	php		; 08
	adc ($08.b,S),Y		; 73 08
	.db $62, $7B, $73		; 62 7B 73
	sbc $0B.b		; E5 0B
	ldy $E6FF.w,X		; BC FF E6
	cpx $E4.b		; E4 E4
	sty $FF84.w		; 8C 84 FF
	jsr ($8C8C.w,X)		; FC 8C 8C
	pea $FFF4.w		; F4 F4 FF
	rti		; 40

	sbc [$7D.b],Y		; F7 7D
	sed		; F8
	eor ($F0.b)		; 52 F0
	iny		; C8
	sbc ($EF.b),Y		; F1 EF
	mvp $5E,$E1		; 44 E1 5E
	plx		; FA
	cpx #$5F.b		; E0 5F
	bra -97.b		; 80 9F
	eor $9CDD.w,X		; 5D DD 9C
	sta [$C8.b],Y		; 97 C8
	sbc ($98.b)		; F2 98
	sta $C4F4BA.l		; 8F BA F4 C4
	inc $FE.b,X		; F6 FE
	jsr ($EA1F.w,X)		; FC 1F EA
	cpy #$F0.b		; C0 F0
	ora ($87.b),Y		; 11 87
	lda $E3.b,X		; B5 E3
	ora ($FC.b,S),Y		; 13 FC
	ora $FA.b,S		; 03 FA
	sta $54BC4F.l		; 8F 4F BC 54
	and $A1.b,S		; 23 A1
	tas		; 1B
	tad		; 5B
	ldy $5AB9.w,X		; BC B9 5A
	and $5E636F.l,X		; 3F 6F 63 5E
	inc $81CD.w,X		; FE CD 81
	phx		; DA
	cpx $1F.b		; E4 1F
	cpx #$5E.b		; E0 5E
	inc $A5C0.w		; EE C0 A5
	eor ($32.b)		; 52 32
	brk $F8.b		; 00 F8
	cpx $31EC.w		; EC EC 31
	cpx #$3F.b		; E0 3F
	trb $FCD3.w		; 1C D3 FC
	sta ($95.b,S),Y		; 93 95
	brk $FA.b		; 00 FA
	ora $FE.b,S		; 03 FE
	adc $61C0D1.l		; 6F D1 C0 61
	sta ($C4.b)		; 92 C4
	sbc #$FA.b		; E9 FA
	stz $FE.b		; 64 FE
	sbc $CDF6C8.l,X		; FF C8 F6 CD
	inc $7D.b,X		; F6 7D
	stx $F8.b		; 86 F8
	cmp [$F7.b]		; C7 F7
	sbc ($FF.b)		; F2 FF
	sbc $18FCFE.l,X		; FF FE FC 18
	jsr ($6281.w,X)		; FC 81 62
	ora $431A.w,Y		; 19 1A 43
	brk $40.b		; 00 40
	bpl  11.b		; 10 0B
	php		; 08
	tad		; 5B
	php		; 08
	and $3C.b,S		; 23 3C
	cli		; 58
	php		; 08
	ora $04.b,S		; 03 04
	asl $BCBC.w,X		; 1E BC BC
	lda $4B7CAF.l		; AF AF 7C 4B
	bit $A4.b		; 24 A4
	ldy $A7.b		; A4 A7
	lda [$BD.b]		; A7 BD
	eor $D9.b,X		; 55 D9
	bcs  14.b		; B0 0E
	sta $4F8D.w,Y		; 99 8D 4F
	sed		; F8
	ldy $F125.w,X		; BC 25 F1
	.db $42, $FF		; 42 FF
	eor $F2F24F.l		; 4F 4F F2 F2
	ora $BC.b,S		; 03 BC
	sed		; F8
	eor $43.b,S		; 43 43
	stz $94.b		; 64 94
	ora #$0E.b		; 09 0E
	lda $016E.w		; AD 6E 01
	rts		; 60

	rti		; 40

	sta $FE08.w,Y		; 99 08 FE
	txa		; 8A
	jsr ($1F1F.w,X)		; FC 1F 1F
	and [$C0.b],Y		; 37 C0
	dec $F2.b		; C6 F2
	clc		; 18
	clc		; 18
	cmp $F1.b		; C5 F1
	bpl  99.b		; 10 63
	jsr ($027B.w,X)		; FC 7B 02
	bit #$00.b		; 89 00
	inc $65FE.w,X		; FE FE 65
	plx		; FA
	cmp $F5.b		; C5 F5
	sta ($AA.b,S),Y		; 93 AA
	sbc $FAFCFC.l,X		; FF FC FC FA
	sty $EC.b		; 84 EC
	inc $09F8.w,X		; FE F8 09
	.db $82, $EE, $FE		; 82 EE FE
	inc $49FA.w,X		; FE FA 49
	cpy #$F0.b		; C0 F0
	ora $E880.w		; 0D 80 E8
	tas		; 1B
	adc ($C0.b,X)		; 61 C0
	trb $00.b		; 14 00
	plx		; FA
	ora [$FB.b]		; 07 FB
	asl $FE.b		; 06 FE
	sed		; F8
	inc $FD5D.w,X		; FE 5D FD
	ldy $1C.b		; A4 1C
	inc $09F8.w,X		; FE F8 09
	asl A		; 0A
	sbc ($C8.b,S),Y		; F3 C8
	pea $FEF8.w		; F4 F8 FE
	and $CF91.w,X		; 3D 91 CF
	tsb $9F.b		; 04 9F
	tsb $FA.b		; 04 FA
	lda $FEF83F.l		; AF 3F F8 FE
	cpy #$F6.b		; C0 F6
	sbc $DD16.w		; ED 16 DD
	rol $BD.b		; 26 BD
	lsr $ED.b		; 46 ED
	stx $C8.b,Y		; 96 C8
	inc $10.b,X		; F6 10
	sta ($FE.b,X)		; 81 FE
	inc $5B2A.w,X		; FE 2A 5B
	inc $1EFF.w,X		; FE FF 1E
	jsl $0203FA.l		; 22 FA 03 02
	brk $58.b		; 00 58
	rol A		; 2A
	ldy $FF.b		; A4 FF
	bpl  -8.b		; 10 F8
	asl $FA.b		; 06 FA
	pea $F1C0.w		; F4 C0 F1
	lda $8CBC.w,X		; BD BC 8C
	sbc ($FF.b,X)		; E1 FF
	lda ($91.b),Y		; B1 91
	cpx #$8D.b		; E0 8D
	sty $9D88.w		; 8C 88 9D
	bit #$9C.b		; 89 9C
	ora ($01.b,X)		; 01 01
	.db $42, $42		; 42 42
	sta [$87.b]		; 87 87
	ror $7373.w,X		; 7E 73 73
	ror $4FE0.w		; 6E E0 4F
	adc ($5F.b,S),Y		; 73 5F
	adc [$FE.b],Y		; 77 FE
	adc $FEFFF8.l,X		; 7F F8 FF FE
	sbc $232FEF.l		; EF EF 2F 23
	sta $E3E089.l		; 8F 89 E0 E3
	adc $43.b,S		; 63 43
	plb		; AB
	sbc $01EFE1.l,X		; FF E1 EF 01
	sbc $101081.l		; EF 81 10 10
	rol $9EDC.w,X		; 3E DC 9E
	ror $E0.b,X		; 76 E0
	sbc ($9C.b)		; F2 9C
	sbc $FCFAFF.l,X		; FF FF FA FC
	bcc -112.b		; 90 90
	stz $7B1C.w		; 9C 1C 7B
	ply		; 7A
	tda		; 7B
	.db $62, $79, $48		; 62 79 48
	ora ($02.b,X)		; 01 02
	adc $62.b,S		; 63 62
	sbc $6A61FF.l,X		; FF FF 61 6A
	eor ($4A.b,X)		; 41 4A
	tad		; 5B
	cli		; 58
	sty $84.b		; 84 84
	ldx $BC9C.w,Y		; BE 9C BC
	ldx $FE.b,Y		; B6 FE
	inc $9CA6.w,X		; FE A6 9C
	cmp $9EAE20.l,X		; DF 20 AE 9E
	stx $9EBE.w		; 8E BE 9E
	ldx $C2.b		; A6 C2
	beq  12.b		; F0 0C
	adc $F0C4FE.l,X		; 7F FE C4 F0
	asl A		; 0A
	tas		; 1B
	stz $FF.b		; 64 FF
.ACCU 16
.INDEX 16
	rep #$F0		; C2 F0
	tsb $FEFA.w		; 0C FA FE
	cpy $F0.b		; C4 F0
	asl A		; 0A
	sbc $F20787.l,X		; FF 87 07 F2
	cmp ($FD.b)		; D2 FD
	cop $FC.b		; 02 FC
	sbc $F804.w,Y		; F9 04 F8
	ora $FE.b,S		; 03 FE
	bpl -64.b		; 10 C0
	clc		; 18
	ora ($23.b,X)		; 01 23
	and [$FE.b],Y		; 37 FE
	cpy #$FFEB.w		; C0 EB FF
	sbc $FA0700.l,X		; FF 00 07 FA
	ora [$BB.b]		; 07 BB
	lsr $5B.b		; 46 5B
	ldx $9B.b		; A6 9B
	lsr $2A.b		; 46 2A
	sbc [$5B.b],Y		; F7 5B
	ldx $FB.b,Y		; B6 FB
	asl $FD.b,X		; 16 FD
	sbc ($DB.b)		; F2 DB
	rol $68.b,X		; 36 68
	ora ($C7.b),Y		; 11 C7
	rti		; 40

	sbc [$20.b]		; E7 20
	sbc [$53.b]		; E7 53
	sta ($FE.b),Y		; 91 FE
	asl A		; 0A
	tyx		; BB
	and $01F8F2.l		; 2F F2 F8 01
	cpy #$F2F3.w		; C0 F3 F2
	plx		; FA
	lda $050122.l,X		; BF 22 01 05
	sbc $F3C806.l,X		; FF 06 C8 F3
	jsr ($F8FF.w,X)		; FC FF F8
	ora [$CF.b]		; 07 CF
	ora [$9F.b]		; 07 9F
	asl $3F.b		; 06 3F
	cmp $BD36.w,X		; DD 36 BD
	ror $7D.b,X		; 76 7D
	inc $ED.b,X		; F6 ED
	lda $DDF6FF.l		; AF FF F6 DD
	inc $BD.b		; E6 BD
	dec $7E.b		; C6 7E
	nop		; EA
	cpy #$0FF0.w		; C0 F0 0F
	beq 119.b		; F0 77
	beq  -2.b		; F0 FE
	cpy #$80EF.w		; C0 EF 80
	lda $F22FFD.l		; AF FD 2F F2
	rts		; 60

	adc ($AC.b,S),Y		; 73 AC
	dec A		; 3A
	adc #$E164.w		; 69 64 E1
	ora ($29.b,X)		; 01 29
	lda ($30.b,X)		; A1 30
	rti		; 40

	trb $09.b		; 14 09
	plx		; FA
	adc $693A90.l,X		; 7F 90 3A 69
	cmp $EFD1.w,X		; DD D1 EF
	ply		; 7A
	adc [$F0.b]		; 67 F0
	sbc $E03FB0.l,X		; FF B0 3F E0
	and $FF6F00.l		; 2F 00 6F FF
	cld		; D8
	sec		; 38
	phx		; DA
	tsb $4610.w		; 0C 10 46
	tya		; 98
	.db $42, $00		; 42 00
	stz $E7.b,X		; 74 E7
	bpl -41.b		; 10 D7
	phb		; 8B
	ora $AA51BE.l,X		; 1F BE 51 AA
	tad		; 5B
	tax		; AA
	tas		; 1B
	nop		; EA
	jsr ($B140.w,X)		; FC 40 B1
	eor ($B1.b,X)		; 41 B1
	bmi -12.b		; 30 F4
	cmp ($00.b),Y		; D1 00
	sbc ($2C.b),Y		; F1 2C
	mvp $84,$04		; 44 04 84
	tsb $0E.b		; 04 0E
	inc $5A63.w,X		; FE 63 5A
	sbc #$C2AB.w		; E9 AB C2
	ldy #$B2FE.w		; A0 FE B2
	cpx #$C0D2.w		; E0 D2 C0
	lda ($E7.b,X)		; A1 E7
	sbc ($F2.b,X)		; E1 F2
	bit #$C3EF.w		; 89 EF C3
	.db $42, $95		; 42 95
	and $1E7F0C.l,X		; 3F 0C 7F 1E
	.db $62, $42, $95		; 62 42 95
	xce		; FB
	sty $EB.b		; 84 EB
	inc $0314.w,X		; FE 14 03
	plp		; 28
	rtl		; 6B

	trb $112B.w		; 1C 2B 11
	ora $C0.b,S		; 03 C0
	nop		; EA
	inc $BC82.w,X		; FE 82 BC
	cmp ($84.b)		; D2 84
	bne   0.b		; D0 00
	sed		; F8
	bpl  34.b		; 10 22
	eor ($48.b)		; 52 48
	sty $FE.b,X		; 94 FE
	lda ($07.b),Y		; B1 07
	xce		; FB
	ror $405F.w		; 6E 5F 40
	beq -82.b		; F0 AE
	mvp $0A,$90		; 44 90 0A
	ldy #$E153.w		; A0 53 E1
	adc $FFFFB9.l,X		; 7F B9 FF FF
	sbc $3D7FBD.l,X		; FF BD 7F 3D
	adc $5E3F3E.l,X		; 7F 3E 3F 5E
	adc $1E3F5E.l,X		; 7F 5E 3F 1E
	and $38381F.l,X		; 3F 1F 38 38
	bit $BC3F.w,X		; 3C 3F BC
	bit $3CBC.w,X		; 3C BC 3C
	ldx $9E3E.w,Y		; BE 3E 9E
	asl $DEFE.w,X		; 1E FE DE
	asl $1FDF.w,X		; 1E DF 1F
	bmi  32.b		; 30 20
	bit $FE91.w		; 2C 91 FE
	ply		; 7A
	sbc $8ED8DA.l,X		; FF DA D8 8E
	ora $FE.b,S		; 03 FE
	jmp $78FF70.l		; 5C 70 FF 78
	sei		; 78
	phx		; DA
	cmp ($F6.b,X)		; C1 F6
	cld		; D8
	sbc $DC1C1C.l,X		; FF 1C 1C DC
	eor ($90.b,X)		; 41 90
	cmp $4A49.w,Y		; D9 49 4A
	sbc $6AFF63.l,X		; FF 63 FF 6A
	sbc $A5FE6B.l,X		; FF 6B FE A5
	rti		; 40

	sbc ($80.b,X)		; E1 80
	cpy $C4.b		; C4 C4
	.db $42, $42		; 42 42
	.db $62, $71, $3F		; 62 71 3F
	.db $62, $63, $FF		; 62 63 FF
	and ($21.b,X)		; 21 21
	bit $F7E9.w		; 2C E9 F7
	sbc $ABFF88.l,X		; FF 88 FF AB
	rol $63.b		; 26 63
	inc $FE55.w,X		; FE 55 FE
	rol A		; 2A
	cpx $FF23.w		; EC 23 FF
	ora ($FE.b),Y		; 11 FE
	bvc  -1.b		; 50 FF
	sbc $809C14.l,X		; FF 14 9C 80
	xba		; EB
	jmp.w [$FEE3]		; DC E3 FE
	inc $AAE8.w,X		; FE E8 AA
	cpx $77.b		; E4 77
	php		; 08
	adc #$E3F7.w		; 69 F7 E3
	inc $E8FE.w,X		; FE FE E8
	cmp $B0F0.w		; CD F0 B0
	asl $FFFF.w		; 0E FF FF
	beq  -8.b		; F0 F8
	ora #$11EE.w		; 09 EE 11
	rol $EED1.w		; 2E D1 EE
	ora ($EC.b,S),Y		; 13 EC
	sta [$E8.b],Y		; 97 E8
	sta $FA.b,X		; 95 FA
	sta $F5.b,X		; 95 F5
	txy		; 9B
	nop		; EA
	stx $FE.b		; 86 FE
	stx $5CE7.w		; 8E E7 5C
	sty $7B.b		; 84 7B
	.db $82, $C2, $EA		; 82 C2 EA
	sta ($80.b),Y		; 91 80
	cmp $FF5DE4.l,X		; DF E4 5D FF
	lda $7FD567.l		; AF 67 D5 7F
	cmp $77.b		; C5 77
	cpy $6F.b		; C4 6F
	cmp ($6B.b),Y		; D1 6B
	lda ($3A.b,X)		; A1 3A
	cmp $11.b,X		; D5 11
	inc $B1.b,X		; F6 B1
	sbc $F1E2FF.l,X		; FF FF E2 F1
	bra   8.b		; 80 08
	bra  16.b		; 80 10
	sta $00.b		; 85 00
	cpy $00.b		; C4 00
	inc $9F00.w		; EE 00 9F
	sbc $ED.b,S		; E3 ED
	inc $DE.b,X		; F6 DE
	sbc $A1CC77.l,X		; FF 77 CC A1
	jsr ($F64B.w,X)		; FC 4B F6
	phk		; 4B
	inc $36F2.w		; EE F2 36
	dec A		; 3A
	dec $6280.w,X		; DE 80 62
	lda ($09.b,X)		; A1 09
	jsr $AAC3.w		; 20 C3 AA
	sta $105B.w,Y		; 99 5B 10
	sbc [$0A.b],Y		; F7 0A
	ora ($4C.b,X)		; 01 4C
	sta ($FE.b)		; 92 FE
	sed		; F8
	phd		; 0B
	rti		; 40

	bcc  15.b		; 90 0F
	phy		; 5A
	eor $9F.b,S		; 43 9F
	sec		; 38
	ora $0DF8F1.l,X		; 1F F1 F8 0D
	eor $91.b		; 45 91
	lda $0DF8FE.l,X		; BF FE F8 0D
	cpx #$0DF8.w		; E0 F8 0D
	sbc ($FD.b)		; F2 FD
	sbc $FBBD.w,X		; FD BD FB
	inc $0BF8.w,X		; FE F8 0B
	beq -40.b		; F0 D8
	ora $3F33.w		; 0D 33 3F
	jsr ($08F4.w,X)		; FC F4 08
	tsb $C33C.w		; 0C 3C C3
	eor $2F39.w,X		; 5D 39 2F
	and $3BE12F.l,X		; 3F 2F E1 3B
	ora $0FFE0F.l,X		; 1F 0F FE 0F
	bpl  28.b		; 10 1C
	ora ($0E.b,S),Y		; 13 0E
	bne -23.b		; D0 E9
	cmp $53440F.l		; CF 0F 44 53
	inc $FEEF.w,X		; FE EF FE
	lsr A		; 4A
	dec A		; 3A
	pea $5EDB.w		; F4 DB 5E
	asl $FE9A.w		; 0E 9A FE
	jsr $C4FE.w		; 20 FE C4
	lda $9922.w,Y		; B9 22 99
	asl $F94D.w,X		; 1E 4D F9
	sbc $20F4DA.l,X		; FF DA F4 20
	cpx #$FEB5.w		; E0 B5 FE
	.db $42, $F3		; 42 F3
	adc $7E4FB6.l,X		; 7F B6 4F 7E
	plx		; FA
	brk $01.b		; 00 01
	ldx $313F.w,Y		; BE 3F 31
	sbc $11C2FB.l,X		; FF FB C2 11
	ora $FE.b,X		; 15 FE
	eor $3F40D1.l,X		; 5F D1 40 3F
	eor #$B1DD.w		; 49 DD B1
	inc $5222.w,X		; FE 22 52
	sbc $F40B0B.l,X		; FF 0B 0B F4
	bvs  36.b		; 70 24
	sbc $1111FE.l,X		; FF FE 11 11
	dey		; 88
	sbc $FD60C2.l,X		; FF C2 60 FD
	ldx #$4A11.w		; A2 11 4A
	sbc ($EF.b)		; F2 EF
	sta ($EB.b,X)		; 81 EB
	cmp ($BE.b,X)		; C1 BE
	eor $F7.b,X		; 55 F7
	adc ($EB.b)		; 72 EB
	trb $AA.b		; 14 AA
	eor $4C.b,X		; 55 4C
	sbc ($14.b)		; F2 14
	brk $D5.b		; 00 D5
	mvp $E0,$5B		; 44 5B E0
	inc $5044.w,X		; FE 44 50
	inc $FAB2.w,X		; FE B2 FA
	plx		; FA
	dex		; CA
	sbc ($CA.b)		; F2 CA
	sbc $DD.b,X		; F5 DD
	sty $05D1.w		; 8C D1 05
	cmp ($D1.b,S),Y		; D3 D1
	inc $FD.b,X		; F6 FD
	lda $7AFA.w,X		; BD FA 7A
	jsr ($0AFD.w,X)		; FC FD 0A
	sbc $77694B.l		; EF 4B 69 77
	tsx		; BA
	lda $7A02.w,X		; BD 02 7A
	ora $FC.b		; 05 FC
	jsr ($050A.w,X)		; FC 0A 05
	cpx #$0017.w		; E0 17 00
	pld		; 2B
	plx		; FA
	xba		; EB
	jsr ($3DFF.w,X)		; FC FF 3D
	rti		; 40

	asl A		; 0A
	cmp ($D5.b),Y		; D1 D5
	phb		; 8B
	stz $8F.b,X		; 74 8F
	adc $8B.b,X		; 75 8B
	ror $FC.b,X		; 76 FC
	sbc $819E.w,X		; FD 9E 81
	brk $57.b		; 00 57
	ora $700570.l,X		; 1F 70 05 70
	cop $FC.b		; 02 FC
	sbc $84A0.w,X		; FD A0 84
	cmp $3E2140.l,X		; DF 40 21 3E
	and ($7F.b,X)		; 21 7F
	rts		; 60

	ldx $FEB0.w,Y		; BE B0 FE
	adc $594670.l		; 6F 70 46 59
	eor $8F.b,S		; 43 8F
	adc ($FF.b),Y		; 71 FF
	cmp $FD03E0.l,X		; DF E0 03 FD
	adc ($9C.b),Y		; 71 9C
	sta $E0FEE0.l,X		; 9F E0 FE E0
	bmi -16.b		; 30 F0
	cld		; D8
	sec		; 38
	sed		; F8
	bit $BD.b,X		; 34 BD
	clc		; 18
	inc $C828.w,X		; FE 28 C8
	cpx #$1FEF.w		; E0 EF 1F
	sbc [$0F.b],Y		; F7 0F
	adc $FCFE57.l		; 6F 57 FE FC
	sbc [$1F.b]		; E7 1F
	pea $20F4.w		; F4 F4 20
	sec		; 38
	ora $A20B.w		; 0D 0B A2
	sed		; F8
	asl $828D.w		; 0E 8D 82
	jsr $0D38.w		; 20 38 0D
	ora $57A1.w		; 0D A1 57
	and ($20.b,X)		; 21 20
	sec		; 38
	asl $1F.b,X		; 16 1F
	jsr $223F.w		; 20 3F 22
	and $F8.b		; 25 F8
	ora #$2A8C.w		; 09 8C 2A
	inc $FF7F.w,X		; FE 7F FF
	lda $7F78FF.l		; AF FF 78 7F
	eor $07F870.l		; 4F 70 F8 07
	jsr $2FDF.w		; 20 DF 2F
	bne -124.b		; D0 84
	dey		; 88
	ora #$FFFF.w		; 09 FF FF
	sbc $3FBEFC.l,X		; FF FC BE 3F
	lda $39A63E.l,X		; BF 3E A6 39
	plx		; FA
	ora $43.b		; 05 43
	ldy $A35F.w,X		; BC 5F A3
	inc $FB1E.w,X		; FE 1E FB
	ora $7F.b		; 05 7F
	xce		; FB
	rti		; 40

	jmp $FEF1.w		; 4C F1 FE
	cpx #$00BB.w		; E0 BB 00
	asl $FB01.w,X		; 1E 01 FB
	tsb $CF.b		; 04 CF
	cmp $B96C37.l,X		; DF 37 6C B9
	ora $C73FE0.l,X		; 1F E0 3F C7
	tax		; AA
	and #$FDFE.w		; 29 FE FD
	plx		; FA
	sbc $25EF.w,X		; FD EF 25
	ora [$16.b]		; 07 16
	sty $95.b		; 84 95
	inc $E972.w,X		; FE 72 E9
	tsx		; BA
	iny		; C8
	eor ($FE.b)		; 52 FE
	jmp $ABCA.w		; 4C CA AB
	plx		; FA
	inc $FCE0.w,X		; FE E0 FC
	tax		; AA
	plp		; 28
	asl A		; 0A
	cmp [$FE.b],Y		; D7 FE
	adc ($E7.b,S),Y		; 73 E7
	sbc $FDFE24.l,X		; FF 24 FE FD
	xba		; EB
	jsr ($E1E7.w,X)		; FC E7 E1
	sbc $CE2FD5.l,X		; FF D5 2F CE
	rol $91D5.w,X		; 3E D5 91
	bra  61.b		; 80 3D
	lsr $F8FC.w		; 4E FC F8
	jsr ($A442.w,X)		; FC 42 A4
	cpy $02.b		; C4 02
	jsr ($FC80.w,X)		; FC 80 FC
	sed		; F8
	eor $5500A3.l,X		; 5F A3 00 55
	cmp $E8.b,X		; D5 E8
	inx		; E8
	and $FCF144.l		; 2F 44 F1 FC
	inc $FC2A.w,X		; FE 2A FC
	eor $F03F0B.l,X		; 5F 0B 3F F0
	phd		; 0B
	tax		; AA
	plb		; AB
	ora [$17.b],Y		; 17 17
	sbc ($06.b),Y		; F1 06
	and ($FC.b,X)		; 21 FC
	inc $4454.w,X		; FE 54 44
	adc $C3AE.w,Y		; 79 AE C3
	ror $FE.b		; 66 FE
	sed		; F8
	ora #$758F.w		; 09 8F 75
	inc $0DF8.w,X		; FE F8 0D
	bra -32.b		; 80 E0
	ora $FE5D43.l		; 0F 43 5D FE
	.db $62, $7F, $1D		; 62 7F 1D
	jmp $7B5C73.l		; 5C 73 5C 7B
	cli		; 58
	mvn $2D,$70		; 54 70 2D
	pha		; 48
	sbc #$F24C.w		; E9 4C F2
	stz $7EE1.w,X		; 9E E1 7E
	adc $E49BFE.l,X		; 7F FE 9B E4
	sty $EB.b,X		; 94 EB
	cmp #$C7F6.w		; C9 F6 C7
	lda ($E8.b),Y		; B1 E8
	clc		; 18
	inx		; E8
	tya		; 98
	inx		; E8
	php		; 08
	sbc $F144F4.l		; EF F4 44 F1
	cli		; 58
	sei		; 78
	bmi -127.b		; 30 81
	sbc ($E7.b,X)		; E1 E7
	ora $FF07FE.l,X		; 1F FE 07 FF
	sbc [$F7.b],Y		; F7 F7
	sta [$0F.b]		; 87 0F
	adc [$8F.b],Y		; 77 8F
	sbc $0031BC.l		; EF BC 31 00
	and $033E01.l,X		; 3F 01 3E 03
	and $35FC.w,X		; 3D FC 35
	xce		; FB
	cop $3C.b		; 02 3C
	inc $8CFC.w,X		; FE FC 8C
	sbc ($C1.b)		; F2 C1
	jsr ($FCFE.w,X)		; FC FE FC
	adc $DBFF8F.l,X		; 7F 8F FF DB
	asl $F37F.w		; 0E 7F F3
	sbc ($7D.b,S),Y		; F3 7D
	lda ($44.b,X)		; A1 44
	inc $0FFC.w,X		; FE FC 0F
	pha		; 48
	ora ($F3.b),Y		; 11 F3
	tsb $3FD2.w		; 0C D2 3F
	pla		; 68
	tsb $7A.b		; 04 7A
	inc $DEDF.w,X		; FE DF DE
	tda		; 7B
	bvs -69.b		; 70 BB
	bcc -69.b		; 90 BB
	bpl  -4.b		; 10 FC
	eor $13B8FE.l,X		; 5F FE B8 13
	lda ($18.b,S),Y		; B3 18
	txy		; 9B
	bmi -34.b		; 30 DE
	jsr $8074.w		; 20 74 80
	cpy $5C.b		; C4 5C
	eor #$FF87.w		; 49 87 FF
	inc $FDFE.w,X		; FE FE FD
	tax		; AA
	inc $AEF9.w,X		; FE F9 AE
	sbc $BDBA.w		; ED BA BD
	nop		; EA
	inc $57A9.w,X		; FE A9 57
	sbc $F5A7FA.l,X		; FF FA A7 F5
	sta $0FD8D1.l,X		; 9F D1 D8 0F
	sty $42F2.w		; 8C F2 42
	ror A		; 6A
	ldx $3E55.w,Y		; BE 55 3E
	cmp $BE.b,X		; D5 BE
	cmp $E0.b,X		; D5 E0
	tax		; AA
	rtl		; 6B

	sta $0CF8FF.l		; 8F FF F8 0C
	trb $00.b		; 14 00
	sty $89F2.w		; 8C F2 89
	sbc ($66.b)		; F2 66
	sbc ($D5.b),Y		; F1 D5
	and $55E179.l		; 2F 79 E1 55
	cmp $8810B8.l,X		; DF B8 10 88
	inc $7C.b,X		; F6 7C
	sbc ($BE.b),Y		; F1 BE
	lda ($CF.b,S),Y		; B3 CF
	rol $88D1.w		; 2E D1 88
	inc $91.b,X		; F6 91
	bvc  -4.b		; 50 FC
	sbc $0BF084.l,X		; FF 84 F0 0B
	jsr ($62C7.w,X)		; FC C7 62
	pld		; 2B
	ora [$D6.b],Y		; 17 D6
	inc $09F8.w,X		; FE F8 09
	and $F08400.l,X		; 3F 00 84 F0
	phd		; 0B
	jsr ($03EA.w,X)		; FC EA 03
	sty $F0.b		; 84 F0
	phd		; 0B
	sbc [$71.b]		; E7 71
	lda $00AA.w		; AD AA 00
	stx $F28A.w		; 8E 8A F2
	stz $FE.b,X		; 74 FE
	jsr ($3040.w,X)		; FC 40 30
	ora ($C8.b,S),Y		; 13 C8
	inc $86.b,X		; F6 86
	stx $F6C8.w		; 8E C8 F6
	sbc $EEC6EA.l,X		; FF EA C6 EE
	inc $FC44.w,X		; FE 44 FC
	lsr $F6.b		; 46 F6
	jmp $74CE.w		; 4C CE 74
	cpx #$C8FE.w		; E0 FE C8
	inc $E0.b,X		; F6 E0
	inc $5F3A.w,X		; FE 3A 5F
	stp		; DB
	sta ($B9.b),Y		; 91 B9
	ora [$A7.b],Y		; 17 A7
	ora $31E290.l,X		; 1F 90 E2 31
	beq  -4.b		; F0 FC
	mvp $EB,$40		; 44 40 EB
	eor $EAFFE0.l		; 4F E0 FF EA
	lda $2E3B2A.l,X		; BF 2A 3B 2E
	eor $20.b		; 45 20
	phd		; 0B
	sed		; F8
	cld		; D8
	asl A		; 0A
	tax		; AA
	cmp ($C9.b,X)		; C1 C9
	sbc $DD.b,S		; E3 DD
	sbc $3E.b,S		; E3 3E
	brk $55.b		; 00 55
	lda $1A.b,X		; B5 1A
	ror $CC14.w,X		; 7E 14 CC
	sbc ($C0.b),Y		; F1 C0
	cmp #$F8E0.w		; C9 E0 F8
	ora #$E69A.w		; 09 9A E6
	sta $C00CB0.l,X		; 9F B0 0C C0
	sed		; F8
	ora #$AEA9.w		; 09 A9 AE
	tsx		; BA
	sed		; F8
	phb		; 8B
	cpx #$19F8.w		; E0 F8 19
	inc $1E.b		; E6 1E
	jsr ($D2DC.w,X)		; FC DC D2
	adc $0EF8E0.l		; 6F E0 F8 0E
	bit $66.b		; 24 66
	sta $A90270.l		; 8F 70 02 A9
	iny		; C8
	jmp ($F0E4.w,X)		; 7C E4 F0
	asl A		; 0A
	pea $E5FE.w		; F4 FE E5
	iny		; C8
	tsb $D882.w		; 0C 82 D8
	ora $2556.w		; 0D 56 25
	tsx		; BA
	ora ($C6.b,S),Y		; 13 C6
	cmp $69C218.l,X		; DF 18 C2 69
	cpx #$0BF8.w		; E0 F8 0B
	rol $C8FC.w		; 2E FC C8
	dec $A5E2.w,X		; DE E2 A5
	lda $E2EAFC.l,X		; BF FC EA E2
	sed		; F8
	ora $03AD.w		; 0D AD 03
	ora $1A.b,S		; 03 1A
	inc A		; 1A
	cpy #$AAC0.w		; C0 C0 AA
	ror $B457.w,X		; 7E 57 B4
.ACCU 8
	sep #$E0		; E2 E0
	jsr ($FAFC.w,X)		; FC FC FA
	sbc $C0.b		; E5 C0
	and $0AC87E.l,X		; 3F 7E C8 0A
	sbc $E10AAA.l,X		; FF AA 0A E1
	cpx #$BDFF.w		; E0 FF BD
	and $E2FDF8.l,X		; 3F F8 FD E2
	sed		; F8
	ora #$70.b		; 09 70
	rts		; 60

	sta $E96A.w		; 8D 6A E9
	sec		; 38
	jmp ($0D0C.w,X)		; 7C 0C 0D
	ora $3F0954.l,X		; 1F 54 09 3F
	jmp $F92239.l		; 5C 39 22 F9
	sta $FF.b,S		; 83 FF
	sbc ($FF.b)		; F2 FF
	ldy $FB.b		; A4 FB
	lda $E02F.w,X		; BD 2F E0
	sbc $53FF.w		; ED FF 53
	stp		; DB
	sta [$99.b]		; 87 99
	bcc -87.b		; 90 A9
	lda $A2A3.w		; AD A3 A2
	sta $85F9.w,Y		; 99 F9 85
	jmp $FFE971.l		; 5C 71 E9 FF
	rts		; 60

	sbc $705FA2.l,X		; FF A2 5F 70
	lsr A		; 4A
	sbc $EC9F87.l,X		; FF 87 9F EC
	sbc $B696.w,X		; FD 96 B6
	xba		; EB
.ACCU 8
	sep #$E6		; E2 E6
	bit $9C2D.w		; 2C 2D 9C
	sbc $2E1E.w,X		; FD 1E 2E
	cpx #$FF02.w		; E0 02 FF
	lsr $F9.b		; 46 F9
	sbc $FF19.w,Y		; F9 19 FF
	cmp ($8F.b)		; D2 8F
	eor $BC.b,S		; 43 BC
	and $4F6EFF.l		; 2F FF 6E 4F
	stx $B7.b		; 86 B7
	rol A		; 2A
	cmp ($7F.b,X)		; C1 7F
	tda		; 7B
	inc $80DA.w,X		; FE DA 80
	sbc ($40.b,X)		; E1 40
	sbc $ED.b		; E5 ED
	ora $48.b,X		; 15 48
	rts		; 60

	ply		; 7A
	ldy $F2.b,X		; B4 F2
	cpx #$E7E3.w		; E0 E3 E7
	adc $AB6D6F.l		; 6F 6F 6D AB
	bit $64.b		; 24 64
	cpx $100D.w		; EC 0D 10
	bra 124.b		; 80 7C
	sbc #$90.b		; E9 90
	pla		; 68
	sta [$FB.b]		; 87 FB
	ora ($CD.b)		; 12 CD
	lda $EAE0.w,Y		; B9 E0 EA
	plx		; FA
	sbc ($BD.b,X)		; E1 BD
	rtl		; 6B

	wai		; CB
	inx		; E8
	ora ($92.b)		; 12 92
	eor $80FD.w,Y		; 59 FD 80
	jsr ($FD02.w,X)		; FC 02 FD
	tsb $3E00.w		; 0C 00 3E
	eor ($41.b),Y		; 51 41
	cpy $80A2.w		; CC A2 80
	jsr ($7D6C.w,X)		; FC 6C 7D
	sta $5DBF.w,Y		; 99 BF 5D
	ora ($80.b)		; 12 80
	and $DF802D.l		; 2F 2D 80 DF
	sta ($80.b),Y		; 91 80
	lda $C74A9A.l		; AF 9A 4A C7
	bra -47.b		; 80 D1
	phd		; 0B
	sta ($E0.b,X)		; 81 E0
	stz $87DF.w,X		; 9E DF 87
	bra -81.b		; 80 AF
	phd		; 0B
	ora [$0F.b]		; 07 0F
	plx		; FA
	inc $4DD4.w,X		; FE D4 4D
	cmp #$FE.b		; C9 FE
	and ($FF.b),Y		; 31 FF
	eor #$7E.b		; 49 7E
	sta $A3E7.w,Y		; 99 E7 A3
	bra -127.b		; 80 81
	adc $57E00B.l,X		; 7F 0B E0 57
	eor [$AD.b]		; 47 AD
	cpy #$70AA.w		; C0 AA 70
	brk $FA.b		; 00 FA
	bra  -4.b		; 80 FC
	brk $F8.b		; 00 F8
	ora #$80.b		; 09 80
	jsr ($FC00.w,X)		; FC 00 FC
	bra  94.b		; 80 5E
	jsr ($E1BB.w,X)		; FC BB E1
	dey		; 88
	brk $F8.b		; 00 F8
	asl A		; 0A
	bra   4.b		; 80 04
	xce		; FB
	php		; 08
	sei		; 78
	sbc $EE.b,S		; E3 EE
	cpx #$9FFD.w		; E0 FD 9F
	cpy #$2622.w		; C0 22 26
	brk $FE.b		; 00 FE
	ora $FE.b,S		; 03 FE
	brk $F8.b		; 00 F8
	ora $B65E.w		; 0D 5E B6
	ldy #$005F.w		; A0 5F 00
	jsr ($807A.w,X)		; FC 7A 80
	sbc $0060.w,X		; FD 60 00
	sbc $8002.w,X		; FD 02 80
	jsr ($805B.w,X)		; FC 5B 80
	brk $FC.b		; 00 FC
	tsa		; 3B
	jmp ($4108.w,X)		; 7C 08 41
	mvp $F8,$00		; 44 00 F8
	ora #$E0.b		; 09 E0
	bra 124.b		; 80 7C
	adc $8B.b		; 65 8B
	cpx #$F3E1.w		; E0 E1 F3
	adc $00.b,S		; 63 00
	sed		; F8
	tsb $410D.w		; 0C 0D 41
	bra  87.b		; 80 57
	sta $FE00.w,X		; 9D 00 FE
	cpx $00FD.w		; EC FD 00
	jsr ($F080.w,X)		; FC 80 F0
	ora #$00.b		; 09 00
	jsr ($FE80.w,X)		; FC 80 FE
	stz $7EDF.w,X		; 9E DF 7E
	sbc $7180.w		; ED 80 71
	adc $E662.w,Y		; 79 62 E6
	cpx $E4.b		; E4 E4
	brk $FC.b		; 00 FC
	bra  -2.b		; 80 FE
	pld		; 2B
	bit $89.b,X		; 34 89
	cmp $FFDF.w,Y		; D9 DF FF
	cmp $E2F2.w,Y		; D9 F2 E2
	ror $66.b		; 66 66
	.db $82, $71, $F1		; 82 71 F1
	phx		; DA
	bra  91.b		; 80 5B
	phb		; 8B
	lda $FF2686.l,X		; BF 86 26 FF
	phd		; 0B
	sbc $FF1D.w,X		; FD 1D FF
	sta $A177.w,Y		; 99 77 A1
	inc $61.b		; E6 61
	and $7949.w		; 2D 49 79
	sbc $EFDFDB.l,X		; FF DB DF EF
	cmp $32.b,S		; C3 32
	and ($83.b)		; 32 83
	bra  52.b		; 80 34
	cmp $EB.b,X		; D5 EB
	dec A		; 3A
	brk $E6.b		; 00 E6
	ldx $C2.b		; A6 C2
	cmp $7FF7.w		; CD F7 7F
	sbc $C3FF7C.l,X		; FF 7C FF C3
	cpy $ED.b		; C4 ED
	eor $28FF.w,Y		; 59 FF 28
	plp		; 28
	stz $74C4.w		; 9C C4 74
	stz $4E.b,X		; 74 4E
	lsr A		; 4A
	sed		; F8
	phd		; 0B
	sbc ($5E.b),Y		; F1 5E
	asl $6565.w,X		; 1E 65 65
	ora [$13.b],Y		; 17 13
	bne -105.b		; D0 97
	ora #$F1.b		; 09 F1
	bra  40.b		; 80 28
	lda $E2.b,X		; B5 E2
	sbc ($FF.b,X)		; E1 FF
	txs		; 9A
	stz $DF.b		; 64 DF
	ora $777722.l,X		; 1F 22 77 77
	rol $26.b		; 26 26
	jsr $798E.w		; 20 8E 79
	plb		; AB
	dey		; 88
	and ($22.b)		; 32 22
	lda $F8C247.l		; AF 47 C2 F8
	jsl $FF8C88.l		; 22 88 8C FF
	cmp $FF74E0.l,X		; DF E0 74 FF
	cmp ($F9.b,X)		; C1 F9
	sbc ($FF.b,X)		; E1 FF
	clc		; 18
	bra 103.b		; 80 67
	ror $8C.b		; 66 8C
	.db $82, $EF, $44		; 82 EF 44
	tsb $3D.b		; 04 3D
	asl $BB.b,X		; 16 BB
	pld		; 2B
	bra  -4.b		; 80 FC
	tya		; 98
	sbc $7BE071.l,X		; FF 71 E0 7B
	lda #$A9.b		; A9 A9
	inc $80BD.w,X		; FE BD 80
	jmp.w [$0ADC]		; DC DC 0A
	cop $40.b		; 02 40
	brk $08.b		; 00 08
	php		; 08
	bra  -2.b		; 80 FE
	bit $FB.b		; 24 FB
	cmp $FD.b		; C5 FD
	adc $C935.w,X		; 7D 35 C9
	sbc [$80.b],Y		; F7 80
	sbc $E42F2F.l,X		; FF 2F 2F E4
	ldy $F4.b		; A4 F4
	pea $FC80.w		; F4 80 FC
	stz $64.b		; 64 64
	ora $6815.w,Y		; 19 15 68
	sbc $80.b,S		; E3 80
	tad		; 5B
	bra  -8.b		; 80 F8
	asl A		; 0A
	cpx #$FD80.w		; E0 80 FD
	and $80.b,S		; 23 80
	cld		; D8
	adc $AEA8FC.l		; 6F FC A8 AE
	rol $074F.w		; 2E 4F 07
	bra  -4.b		; 80 FC
	jmp.w [$07E0]		; DC E0 07
	sbc $7FFF51.l,X		; FF 51 FF 7F
	lda [$F8.b]		; A7 F8
	sbc $EED8DA.l,X		; FF DA D8 EE
	sbc ($06.b)		; F2 06
	asl $FA.b		; 06 FA
	asl A		; 0A
	cpy $84.b		; C4 84
	bra -86.b		; 80 AA
	pld		; 2B
	bit $E8.b		; 24 E8
	sbc ($00.b),Y		; F1 00
	jsr ($FC80.w,X)		; FC 80 FC
	brk $FA.b		; 00 FA
	bra -128.b		; 80 80
	bra  -8.b		; 80 F8
	ora #$00.b		; 09 00
	plx		; FA
	sed		; F8
	sbc $E2.b,X		; F5 E2
	bra  -8.b		; 80 F8
	ora ($52.b,S),Y		; 13 52
	ora ($55.b)		; 12 55
	eor $D7.b		; 45 D7
	brk $F9.b		; 00 F9
	bra  -8.b		; 80 F8
	ora #$8A.b		; 09 8A
	sbc $2C78FF.l,X		; FF FF 78 2C
	sbc $7B6C6C.l,X		; FF 6C 6C 7B
	adc ($16.b,S),Y		; 73 16
	asl $E0.b		; 06 E0
	bra -88.b		; 80 A8
	dey		; 88
	rol $70BE.w		; 2E BE 70
	bra -128.b		; 80 80
	sbc $A1CBC9.l,X		; FF C9 CB A1
	cpx #$FF77.w		; E0 77 FF
	cmp ($54.b),Y		; D1 54
	sbc $8080.w,X		; FD 80 80
	beq   9.b		; F0 09
	bra  -4.b		; 80 FC
	bra -16.b		; 80 F0
	ora #$80.b		; 09 80
	sed		; F8
	ora $38FEFE.l		; 0F FE FE 38
	ora $8D.b,S		; 03 8D
	beq -22.b		; F0 EA
	ldx #$F880.w		; A2 80 F8
	phd		; 0B
	jsr ($AC3E.w,X)		; FC 3E AC
.ACCU 8
	sep #$A0		; E2 A0
	sed		; F8
	lda ($70.b),Y		; B1 70
	beq 126.b		; F0 7E
	bra -34.b		; 80 DE
	bra -11.b		; 80 F5
	jmp ($FF03.w)		; 6C 03 FF
	sta $B5.b		; 85 B5
	inc $F340.w,X		; FE 40 F3
	bra -16.b		; 80 F0
	ora $FC80.w		; 0D 80 FC
	bpl -128.b		; 10 80
	sbc [$80.b],Y		; F7 80
	jsr ($A2AA.w,X)		; FC AA A2
	lda $FB72B0.l,X		; BF B0 72 FB
	sbc $8BE223.l,X		; FF 23 E2 8B
	asl $D9.b,X		; 16 D9
	sta $9810A5.l,X		; 9F A5 10 98
	sta $5D.b,S		; 83 5D
	sbc $DDFF4F.l,X		; FF 4F FF DD
	sbc $7DB858.l,X		; FF 58 B8 7D
	cpx #$2778.w		; E0 78 27
	lda ($58.b),Y		; B1 58
	ora ($00.b,X)		; 01 00
	inc A		; 1A
	cmp $F7.b,S		; C3 F7
	ldx $81.b		; A6 81
	bcs -126.b		; B0 82
	beq -58.b		; F0 C6
	mvp $23,$97		; 44 97 23
	ora $EF81EC.l,X		; 1F EC 81 EF
	sbc $F6F846.l,X		; FF 46 F8 F6
	rts		; 60

	sbc ($3B.b,S),Y		; F3 3B
	bra -12.b		; 80 F4
	sbc ($F1.b)		; F2 F1
	eor ($49.b,X)		; 41 49
	xce		; FB
	cmp $32.b,S		; C3 32
	adc ($8D.b)		; 72 8D
	lda [$E9.b]		; A7 E9
	dex		; CA
	ora $088B.w,Y		; 19 8B 08
	eor $5704.w,X		; 5D 04 57
	stx $05.b		; 86 05
	sed		; F8
	sbc $DB240D.l,X		; FF 0D 24 DB
	jmp $FFFBFE.l		; 5C FE FB FF
	lda [$A5.b]		; A7 A5
	sta $3477FF.l		; 8F FF 77 34
	mvp $19,$40		; 44 40 19
	cpx #$4144.w		; E0 44 41
	ora $01.b,X		; 15 01
	sbc $5A1B.w,Y		; F9 1B 5A
	plb		; AB
	lda $CBFF.w,X		; BD FF CB
	sbc $06623A.l,X		; FF 3A 62 06
	cmp $A9E7.w,Y		; D9 E7 A9
	inc $80.b		; E6 80
	sed		; F8
	asl A		; 0A
.INDEX 8
	sep #$9B		; E2 9B
	lda ($F9.b,X)		; A1 F9
	sta [$80.b]		; 87 80
	sed		; F8
	asl $80E7.w		; 0E E7 80
	tas		; 1B
	bpl  12.b		; 10 0C
	asl A		; 0A
	stx $B4.b		; 86 B4
	beq 126.b		; F0 7E
	cpy $8046.w		; CC 46 80
	sbc $FFEE.w,X		; FD EE FF
	sbc ($FF.b),Y		; F1 FF
	eor $E0.b,S		; 43 E0
	tyx		; BB
	lda $C5805F.l,X		; BF 5F 80 C5
	cpy $B9.b		; C4 B9
	and ($F2.b),Y		; 31 F2
	lda ($80.b)		; B2 80
	sed		; F8
	ora #$0B.b		; 09 0B
	sbc $4DFF0E.l,X		; FF 0E FF 4D
	bra  -8.b		; 80 F8
	asl A		; 0A
	adc $F8A00B.l,X		; 7F 0B A0 F8
	ora #$E9.b		; 09 E9
	txs		; 9A
	bit #$38.b		; 89 38
	clv		; B8
	lda $A0.b,S		; A3 A0
	sed		; F8
	ora #$73.b		; 09 73
	lda $61.b,X		; B5 61
	sbc $02A002.l,X		; FF 02 A0 02
	ora ($16.b,X)		; 01 16
	clc		; 18
	dec A		; 3A
	php		; 08
	ror $A00C.w,X		; 7E 0C A0
	inc $40AC.w,X		; FE AC 40
	cmp $33E80A.l,X		; DF 0A E8 33
	ldy #$FF.b		; A0 FF
	sbc $F4.b,X		; F5 F4
	adc $A071.w,Y		; 79 71 A0
	sed		; F8
	ora $636E.w		; 0D 6E 63
	stx $F8A0.w		; 8E A0 F8
	ora ($E0.b)		; 12 E0
	bit #$56.b		; 89 56
	cmp ($9E.b),Y		; D1 9E
	ldy #$F8.b		; A0 F8
	ora #$7C.b		; 09 7C
	cpx #$63.b		; E0 63
	inc $A017.w,X		; FE 17 A0
	ora ($08.b),Y		; 11 08
	ply		; 7A
	bpl -118.b		; 10 8A
	pha		; 48
	ldx $A08C.w,Y		; BE 8C A0
	inc $FE8E.w,X		; FE 8E FE
	bit $FF8F.w		; 2C 8F FF
	and [$84.b],Y		; 37 84
	ldy #$FE.b		; A0 FE
	cmp $04.b,X		; D5 04
	sbc $4F00.w		; ED 00 4F
	adc $4C10C1.l,X		; 7F C1 10 4C
	lda ($58.b,S),Y		; B3 58
	ldy #$50.b		; A0 50
	bra -111.b		; 80 91
	adc $AEE9.w,Y		; 79 E9 AE
	dec $0DC8.w,X		; DE C8 0D
	sbc $60935F.l,X		; FF 5F 93 60
	wai		; CB
	bit $114E.w		; 2C 4E 11
	dec $4C41.w,X		; DE 41 4C
	ora $D7.b,S		; 03 D7
	plp		; 28
	sbc $1A.b,S		; E3 1A
	sty $00EA.w		; 8C EA 00
	cmp ($8A.b,X)		; C1 8A
	sbc $C054F8.l,X		; FF F8 54 C0
	lsr A		; 4A
	sbc ($FF.b),Y		; F1 FF
	eor $0DB704.l		; 4F 04 B7 0D
	cpy $32.b		; C4 32
	wai		; CB
	ora [$2C.b]		; 07 2C
	txa		; 8A
	lsr $91.b,X		; 56 91
	ror A		; 6A
	sta $F9.b		; 85 F9
	inc $FAC0.w,X		; FE C0 FA
	inc $F3.b		; E6 F3
	sbc $EBBAAF.l,X		; FF AF BA EB
	lda $02.b,X		; B5 02
	stx $4A.b,Y		; 96 4A
	ror $5EFF.w,X		; 7E FF 5E
	rts		; 60

	sbc #$80.b		; E9 80
	cmp [$20.b]		; C7 20
	ror $00.b		; 66 00
	tas		; 1B
	ldy $CC.b		; A4 CC
	nop		; EA
	sbc ($FF.b,X)		; E1 FF
	sta $AB4A87.l,X		; 9F 87 4A AB
	sbc $12F8A0.l,X		; FF A0 F8 12
.ACCU 8
	sep #$A0		; E2 A0
	sed		; F8
	asl $9981.w		; 0E 81 99
	ldy #$FD.b		; A0 FD
	iny		; C8
	ora [$23.b]		; 07 23
	txa		; 8A
	rol A		; 2A
	lda $DA.b,X		; B5 DA
	txs		; 9A
	adc $FEA025.l,X		; 7F 25 A0 FE
	stz $CFFC.w,X		; 9E FC CF
	ldy #$86.b		; A0 86
	lsr A		; 4A
	rol $A970.w		; 2E 70 A9
	cpy #$63.b		; C0 63
	sbc $F8A0.w,X		; FD A0 F8
	ora #$F1.b		; 09 F1
	inx		; E8
	and $C0FFA0.l,X		; 3F A0 FF C0
	inc $8A20.w,X		; FE 20 8A
	rol $B1.b		; 26 B1
	rol A		; 2A
	sbc $4CE8.w,X		; FD E8 4C
	cmp #$C0.b		; C9 C0
	inc $4A3F.w,X		; FE 3F 4A
	rti		; 40

	lda [$00.b],Y		; B7 00
	sty $1240.w		; 8C 40 12
	sta $596C21.l,X		; 9F 21 6C 59
	ldy #$87.b		; A0 87
	rts		; 60

	inc $C0.b		; E6 C0
	nop		; EA
	sbc $D56B.w,Y		; F9 6B D5
	ldx $5C.b		; A6 5C
	jsr ($9981.w,X)		; FC 81 99
	sty $E0.b		; 84 E0
	beq  13.b		; F0 0D
	eor ($11.b)		; 52 11
	cpx #$F0.b		; E0 F0
	tsb $F8A0.w		; 0C A0 F8
	phd		; 0B
	ora $7E.b,X		; 15 7E
	nop		; EA
	ora $A0.b		; 05 A0
	sed		; F8
	phd		; 0B
	cpx #$FC.b		; E0 FC
	ldy #$88.b		; A0 88
	eor ($18.b,X)		; 41 18
	ror $61.b		; 66 61
	sty $0338.w		; 8C 38 03
	jsl $5B3046.l		; 22 46 30 5B
	ldy #$8A.b		; A0 8A
	adc $F8.b		; 65 F8
	stz $9CE7.w,X		; 9E E7 9C
	beq -104.b		; F0 98
	sbc [$13.b]		; E7 13
	sbc $C380FF.l		; EF FF 80 C3
	lda $3C7394.l,X		; BF 94 73 3C
	adc $ED.b		; 65 ED
	ora ($BD.b,S),Y		; 13 BD
.INDEX 16
	rep #$10		; C2 10
	sbc $DE07.w,X		; FD 07 DE
	sed		; F8
	cpx $96.b		; E4 96
	lsr $EA34.w		; 4E 34 EA
	sbc $D7FFBB.l		; EF BB FF D7
	ldy $FB.b,X		; B4 FB
	sta $5FDD70.l		; 8F 70 DD 5F
	and $F1F6.w,Y		; 39 F6 F1
	sta $24AD7F.l,X		; 9F 7F AD 24
	sed		; F8
	ora #$FF.b		; 09 FF
	jsr ($7FFF.w,X)		; FC FF 7F
	sty $FB.b		; 84 FB
	lda $3745.w		; AD 45 37
	cmp $1BBE.w,Y		; D9 BE 1B
	txs		; 9A
	ldy $F54A.w,X		; BC 4A F5
	rol $37FB.w,X		; 3E FB 37
	cmp $A2FFFF.l,X		; DF FF FF A2
	tya		; 98
	ora $FD499E.l		; 0F 9E 49 FD
	adc ($6B.b,S),Y		; 73 6B
	jmp.w [$FEC3]		; DC C3 FE
	sta [$75.b],Y		; 97 75
	sbc $7DF228.l,X		; FF 28 F2 7D
	sta $FF.b		; 85 FF
	ror $E083.w,X		; 7E 83 E0
	sed		; F8
	ora $EF1280.l		; 0F 80 12 EF
	cmp $BB.b		; C5 BB
	ldy $FF5B.w		; AC 5B FF
	lda $AF.b		; A5 AF
	plx		; FA
	sbc ($1F.b,X)		; E1 1F
	sta $3BCF.w		; 8D CF 3B
	adc [$F3.b]		; 67 F3
	adc $A0BA.w		; 6D BA A0
	sbc ($78.b)		; F2 78
	sbc ($07.b)		; F2 07
	nop		; EA
	and $2F.b,S		; 23 2F
	tay		; A8
	lda [$84.b],Y		; B7 84
	wai		; CB
	eor $FE80F0.l		; 4F F0 80 FE
	inx		; E8
	dec $7CEA.w,X		; DE EA 7C
	sed		; F8
	ora #$2B.b		; 09 2B
	ora $FCFEC0.l,X		; 1F C0 FE FC
	lda $40.b		; A5 40
	inc $3FE5.w,X		; FE E5 3F
	sbc $2FEA04.l,X		; FF 04 EA 2F
	sbc $8C4017.l,X		; FF 17 40 8C
	adc ($DB.b,S),Y		; 73 DB
	tad		; 5B
	and ($EE.b,X)		; 21 EE
	cmp ($BF.b),Y		; D1 BF
	lda $FCEAED.l,X		; BF ED EA FC
	lsr A		; 4A
	cmp $18FDBA.l,X		; DF BA FD 18
	sbc ($34.b),Y		; F1 34
	sty $FB.b,X		; 94 FB
	cmp $B765.w		; CD 65 B7
	rti		; 40

	sed		; F8
	asl A		; 0A
	tax		; AA
	inc $EAE7.w,X		; FE E7 EA
	sbc ($1E.b),Y		; F1 1E
	sed		; F8
	phd		; 0B
	cpy #$00FC.w		; C0 FC 00
	sed		; F8
	ora #$40.b		; 09 40
	sed		; F8
	ora $AFFB85.l		; 0F 85 FB AF
	eor $33.b		; 45 33
	sbc $B6DF0B.l,X		; FF 0B DF B6
	ora [$8A.b],Y		; 17 8A
	ldy $F57A.w		; AC 7A F5
	ror $F7FB.w,X		; 7E FB F7
	cmp $44F4A0.l,X		; DF A0 F4 44
	xba		; EB
	jmp $1EB6A2.l		; 5C A2 B6 1E
	cmp #$00.b		; C9 00
	sed		; F8
	ora $9800.w		; 0D 00 98
	ora $5C37F2.l		; 0F F2 37 5C
	cmp $9BFF91.l,X		; DF 91 FF 9B
	jmp ($99E9.w)		; 6C E9 99
	plx		; FA
	adc $679F.w,X		; 7D 9F 67
	.db $62, $90, $0F		; 62 90 0F
	sbc $E14ADD.l,X		; FF DD 4A E1
	stx $2C.b,Y		; 96 2C
	cmp $AC7FEB.l,X		; DF EB 7F AC
	sbc [$73.b],Y		; F7 73
	lda $49.b,S		; A3 49
	adc $E09B.w,X		; 7D 9B E0
	sed		; F8
	ora ($FF.b),Y		; 11 FF
	cmp $1DFDDF.l,X		; DF DF FD 1D
.ACCU 8
	sep #$68		; E2 68
	sbc $1CFF49.l,X		; FF 49 FF 1C
	pea $51B3.w		; F4 B3 51
	sta ($DD.b,S),Y		; 93 DD
	cpx #$0DF8.w		; E0 F8 0D
	inc $EFBF.w,X		; FE BF EF
	jmp.w [$94D2]		; DC D2 94
	xba		; EB
	sbc $C48B.w,Y		; F9 8B C4
	sbc ($AF.b,S),Y		; F3 AF
	stz $5FFF.w		; 9C FF 5F
	inc $EAE7.w,X		; FE E7 EA
	sbc $20C910.l		; EF 10 C9 20
	cpx $E800.w		; EC 00 E8
	ora #$C0.b		; 09 C0
	inc $F71F.w,X		; FE 1F F7
	lda $FDA35D.l,X		; BF 5D A3 FD
	ldy #$11F8.w		; A0 F8 11
	sbc $975C3F.l,X		; FF 3F 5C 97
	sbc [$FD.b]		; E7 FD
	tyx		; BB
	pea $EF73.w		; F4 73 EF
	cpy #$FF5E.w		; C0 5E FF
	sbc $A0.b		; E5 A0
	sed		; F8
	tsb $0E1F.w		; 0C 1F 0E
	and [$8B.b]		; 27 8B
	sbc $97DFF3.l,X		; FF F3 DF 97
	cmp $D1F7.w,X		; DD F7 D1
	cmp $0C0093.l,X		; DF 93 00 0C
	tas		; 1B
	sbc $4040.w,X		; FD 40 40
	nop		; EA
	cop $AA.b		; 02 AA
	plx		; FA
	stx $40.b		; 86 40
	inc $F840.w		; EE 40 F8
	ora $0DF800.l		; 0F 00 F8 0D
	ldy #$0BF8.w		; A0 F8 0B
	rts		; 60

	inc $F8E0.w,X		; FE E0 F8
	ora $97E8.w		; 0D E8 97
	and $DF55FF.l		; 2F FF 55 DF
	sbc $FFA47F.l		; EF 7F A4 FF
	adc $E7.b,S		; 63 E7
	plp		; 28
	sbc $49E01D.l		; EF 1D E0 49
	rti		; 40

	inc $895A.w		; EE 5A 89
	lda $FF.b,X		; B5 FF
.ACCU 8
	sep #$E9		; E2 E9
	rti		; 40

	sed		; F8
	ora ($A0.b),Y		; 11 A0
	sed		; F8
	ora $D974EC.l		; 0F EC 74 D9
	tax		; AA
	sbc [$AD.b],Y		; F7 AD
	inc $FE5E.w,X		; FE 5E FE
	sec		; 38
	eor ($E1.b,X)		; 41 E1
	xce		; FB
	sbc ($DA.b),Y		; F1 DA
	sbc ($FF.b,X)		; E1 FF
	brk $F4.b		; 00 F4
	ldx $1DE5.w,Y		; BE E5 1D
	ora $9FEF8E.l,X		; 1F 8E EF 9F
	eor [$CB.b],Y		; 57 CB
	sbc ($7F.b)		; F2 7F
	ldx $FFC7.w		; AE C7 FF
	sta ($A0.b)		; 92 A0
	sbc $88A0EC.l,X		; FF EC A0 88
	cpx $FEFF.w		; EC FF FE
	stp		; DB
	adc $F75FB4.l,X		; 7F B4 5F F7
	cmp $7285AF.l		; CF AF 85 72
	sbc $D9B0EB.l,X		; FF EB B0 D9
	ldy $F7.b,X		; B4 F7
	adc ($D8.b,X)		; 61 D8
	ora $F6FF.w		; 0D FF F6
	sei		; 78
	mvn $9F,$8C		; 54 8C 9F
	tda		; 7B
	inc $CC5D.w,X		; FE 5D CC
	stx $E1.b		; 86 E1
	lda $F2.b,S		; A3 F2
	sta $F6.b		; 85 F6
	sbc $800CF8.l,X		; FF F8 0C 80
	inc $34E0.w,X		; FE E0 34
	bpl -63.b		; 10 C1
	cmp $10303F.l,X		; DF 3F 30 10
	inc $1F.b		; E6 1F
	sta $9FE3EA.l		; 8F EA E3 9F
	adc [$FB.b],Y		; 77 FB
	lda ($8A.b)		; B2 8A
	bra  -4.b		; 80 FC
	sbc $800FF8.l,X		; FF F8 0F 80
	jsr ($FFAD.w,X)		; FC AD FF
	asl $FC.b,X		; 16 FC
	sbc $F7B7FF.l		; EF FF B7 F7
	jsr ($77DF.w,X)		; FC DF 77
	tsa		; 3B
	inx		; E8
	inc $9CF9.w,X		; FE F9 9C
	sbc ($3C.b),Y		; F1 3C
	pha		; 48
	inc $F11C.w,X		; FE 1C F1
	sbc $A99F96.l		; EF 96 9F A9
	bra  -8.b		; 80 F8
	ora #$FE.b		; 09 FE
	sbc $E840BE.l,X		; FF BE 40 E8
	phd		; 0B
	sbc $7EFF.w		; ED FF 7E
	inc $F5AC.w,X		; FE AC F5
	lda #$F2.b		; A9 F2
	eor $E7.b		; 45 E7
	bit $CF.b		; 24 CF
	sta ($03.b,X)		; 81 03
	sed		; F8
	sta $203F1F.l,X		; 9F 1F 3F 20
	asl $3B.b		; 06 3B
	sed		; F8
	phd		; 0B
	ror $1F.b		; 66 1F
	adc $FE.b,S		; 63 FE
	sbc $F8801F.l,X		; FF 1F 80 F8
	tas		; 1B
	ora ($12.b,S),Y		; 13 12
	phd		; 0B
	asl A		; 0A
	brk $50.b		; 00 50
	tad		; 5B
	phy		; 5A
	tas		; 1B
	ora ($63.b)		; 12 63
	.db $82, $78, $FF		; 82 78 FF
	sbc $E67BFC.l,X		; FF FC 7B E6
	ldy $EC.b,X		; B4 EC
	jsr ($AFF4.w,X)		; FC F4 AF
	lda $ECA4A4.l		; AF A4 A4 EC
	cpx $7C.b		; E4 7C
	trb $FF03.w		; 1C 03 FF
	sbc $001803.l,X		; FF 03 18 00
	ldy $B8.b,X		; B4 B8
	bit #$9C.b		; 89 9C
	bit #$9D.b		; 89 9D
	ora $A00C.w		; 0D 0C A0
	ldy #$91B1.w		; A0 B1 91
	ldy $F86F.w,X		; BC 6F F8
	sty $1D1D.w		; 8C 1D 1D
	adc $51E84F.l,X		; 7F 4F E8 51
	ror $B1.b,X		; 76 B1
	adc $6E735F.l		; 6F 5F 73 6E
	sbc $737EFF.l,X		; FF FF 7E 73
.ACCU 8
	sep #$E2		; E2 E2
	brk $00.b		; 00 00
	eor ($A9.b,X)		; 41 A9
	sbc $EB.b,S		; E3 EB
	eor $A3.b,S		; 43 A3
	sbc [$E5.b]		; E7 E5
	ora $FFC109.l		; 0F 09 C1 FF
	jsr $5220.w		; 20 20 52
	lsr $A1.b		; 46 A1
	inc $1CFA.w,X		; FE FA 1C
	sbc ($FC.b)		; F2 FC
	inc $1A.b,X		; F6 1A
	inc $FFFF.w,X		; FE FF FF
	inc $3F.b,X		; F6 3F
	cmp $5B1010.l,X		; DF 10 10 5B
	cli		; 58
	ora ($02.b,X)		; 01 02
	adc ($6A.b,X)		; 61 6A
	adc $62.b,S		; 63 62
	adc ($52.b),Y		; 71 52
	adc $87C3.w,Y		; 79 C3 87
	pha		; 48
	tda		; 7B
	.db $62, $94, $9E		; 62 94 9E
	ldx $FE.b		; A6 FE
	inc $FBAE.w,X		; FE AE FB
	lda $B69C82.l,X		; BF 82 9C B6
	ldx $B6BC.w		; AE BC B6
	ldx $609C.w,Y		; BE 9C 60
	.db $42, $A0		; 42 A0
	pha		; 48
	asl $D7FF.w		; 0E FF D7
	sbc $1948A0.l,X		; FF A0 48 19
	ror A		; 6A
	cmp $59C16A.l,X		; DF 6A C1 59
	ldy #$0C48.w		; A0 48 0C
	xce		; FB
	asl $8E.b		; 06 8E
	sbc ($BD.b,S),Y		; F3 BD
	cmp $FA.b,S		; C3 FA
	sta $F7.b		; 85 F7
	sbc ($8D.b,X)		; E1 8D
	sbc ($BE.b)		; F2 BE
	cmp ($2C.b,X)		; C1 2C
	ply		; 7A
	brk $07.b		; 00 07
	beq -13.b		; F0 F3
	inc $F790.w,X		; FE 90 F7
	ora $F2F0FF.l		; 0F FF F0 F2
	beq -15.b		; F0 F1
	sbc [$FA.b],Y		; F7 FA
	sbc [$AA.b],Y		; F7 AA
	adc [$3B.b],Y		; 77 3B
	inc $5B.b		; E6 5B
	inc $1D.b		; E6 1D
	sty $C6BB.w		; 8C BB C6
	ldy #$5F4A.w		; A0 4A 5F
	cpx #$C5A0.w		; E0 A0 C5
	sta ($E7.b),Y		; 91 E7
	ora $78.b		; 05 78
	inc $A4C7.w,X		; FE C7 A4
	lsr A		; 4A
	mvn $0E,$8F		; 54 8F 0E
	sbc ($FE.b,S),Y		; F3 FE
	ora $5A.b,S		; 03 5A
	eor $FE.b,X		; 55 FE
	asl A		; 0A
	sbc ($84.b,S),Y		; F3 84
	bit $A0.b,X		; 34 A0
	pha		; 48
	ora #$67.b		; 09 67
	stz $22.b		; 64 22
	sec		; 38
	ora $50E0.w		; 0D E0 50
	ora $5F80.w		; 0D 80 5F
	sbc $45FAFC.l,X		; FF FC FA 45
	xce		; FB
	adc $7CFA.w,X		; 7D FA 7C
	ora $AF42.w		; 0D 42 AF
	sbc $39DA.w,X		; FD DA 39
	ply		; 7A
	sta [$7A.b]		; 87 7A
	ldx #$1A7C.w		; A2 7C 1A
	asl A		; 0A
	sei		; 78
	cpx $6093.w		; EC 93 60
	ora ($74.b,X)		; 01 74
	tsb $B877.w		; 0C 77 B8
	sbc $599B.w		; ED 9B 59
	clv		; B8
	sbc ($92.b,X)		; E1 92
	adc $9EFE3E.l,X		; 7F 3E FE 9E
	asl $A283.w,X		; 1E 83 A2
	sbc $2339FC.l,X		; FF FC 39 23
	txs		; 9A
	sbc $447919.l,X		; FF 19 79 44
	dex		; CA
	inc $0DA2.w		; EE A2 0D
	ora ($22.b,X)		; 01 22
	beq  63.b		; F0 3F
	and $F3.b,S		; 23 F3
	ora $B4F1.w		; 0D F1 B4
	cmp [$DF.b]		; C7 DF
	ora $511031.l,X		; 1F 31 10 51
	bpl  -4.b		; 10 FC
	sbc $DC45.w,X		; FD 45 DC
	trb $03FF.w		; 1C FF 03
	asl $3800.w		; 0E 00 38
	trb $7369.w		; 1C 69 73
	brk $79.b		; 00 79
	brk $FF.b		; 00 FF
	sbc $530071.l,X		; FF 71 00 53
	inc A		; 1A
	adc ($52.b,X)		; 61 52
	ora ($10.b,S),Y		; 13 10
	and ($E2.b,X)		; 21 E2
	lda $8C8E8E.l		; AF 8E 8E 8C
	stx $FF84.w		; 8E 84 FF
	lda $E484BE.l		; AF BE 84 E4
	sty $8C.b		; 84 8C
	sty $EC.b		; 84 EC
	cpx $1C.b		; E4 1C
	trb $0070.w		; 1C 70 00
	cmp $3AF1EC.l,X		; DF EC F1 3A
	lda $F8FE.w		; AD FE F8
	phd		; 0B
	bra  64.b		; 80 40
	ora $B8F2EC.l		; 0F EC F2 B8
	cmp [$FA.b]		; C7 FA
	sty $5EF4.w		; 8C F4 5E
	adc $AE.b,S		; 63 AE
	adc $EC.b		; 65 EC
	sbc ($FE.b),Y		; F1 FE
	jsr ($F7F3.w,X)		; FC F3 F7
	jsr ($66F2.w,X)		; FC F2 66
	sta ($A0.b)		; 92 A0
	ldx $FA0C.w		; AE 0C FA
	lda $71EA.w,X		; BD EA 71
	beq  14.b		; F0 0E
	xce		; FB
	and $847B.w		; 2D 7B 84
	lda $313B.w		; AD 3B 31
	rts		; 60

	bpl  11.b		; 10 0B
	inc $ECFE.w,X		; FE FE EC
	sbc ($0D.b)		; F2 0D
	lda $BDF6F4.l,X		; BF F4 F6 BD
	lsr $DD.b		; 46 DD
	rol $FD.b		; 26 FD
	inc $E0.b,X		; F6 E0
	beq  15.b		; F0 0F
	inc $FB7F.w,X		; FE 7F FB
	adc $F8BF56.l,X		; 7F 56 BF F8
	inc $7BFC.w,X		; FE FC 7B
	sta $E4F1.w,Y		; 99 F1 E4
	and ($51.b),Y		; 31 51
	pla		; 68
	ora $807FFE.l		; 0F FE 7F 80
	cmp $5682A0.l,X		; DF A0 82 56
	inc $09F8.w,X		; FE F8 09
	sta ($58.b),Y		; 91 58
	ora ($DF.b)		; 12 DF
	beq 107.b		; F0 6B
	adc $60E1.w,Y		; 79 E1 60
	tsb $21.b		; 04 21
	sta $558A.w		; 8D 8A 55
	eor $86.b,X		; 55 86
	phb		; 8B
	sta $8C.b		; 85 8C
	adc $8E82.w,X		; 7D 82 8E
	sty $51.b		; 84 51
	stp		; DB
	rol A		; 2A
	sta $23.b,S		; 83 23
	sty $95.b		; 84 95
	jsr ($5FFF.w,X)		; FC FF 5F
	brk $12.b		; 00 12
	bra 127.b		; 80 7F
	.db $82, $7F, $D4		; 82 7F D4
	and $F31E69.l		; 2F 69 1E F3
	stz $A930.w		; 9C 30 A9
	brk $12.b		; 00 12
	cld		; D8
	eor ($AF.b,X)		; 41 AF
	cop $FD.b		; 02 FD
	jsl $6F909A.l		; 22 9A 90 6F
	asl $00.b		; 06 00
	ora ($F8.b)		; 12 F8
	eor $CB28C9.l,X		; 5F C9 28 CB
	mvn $A2,$A5		; 54 A5 A2
	phy		; 5A
	eor ($AD.b),Y		; 51 AD
	tay		; A8
	lsr $00.b,X		; 56 00
	ora ($03.b)		; 12 03
	pei ($1A.b)		; D4 1A
	eor #$F7.b		; 49 F7
	cpx #$01DC.w		; E0 DC 01
	and #$F1.b		; 29 F1
	sbc $F0.b,X		; F5 F0
	ora #$49.b		; 09 49
	sta $FE5FE0.l,X		; 9F E0 5F FE
	brk $38.b		; 00 38
	ora $BFF688.l		; 0F 88 F6 BF
	ror A		; 6A
	ora $FFFCEA.l,X		; 1F EA FC FF
	inc $F080.w,X		; FE 80 F0
	ora $FB38C7.l		; 0F C7 38 FB
	ora [$DF.b]		; 07 DF
	jsr $1AE5.w		; 20 E5 1A
	lda $DF42.w,X		; BD 42 DF
	sec		; 38
	eor ($FD.b),Y		; 51 FD
	jsr ($3504.w,X)		; FC 04 35
	cpy $F0.b		; C4 F0
	asl A		; 0A
	lda #$29.b		; A9 29
	cpx #$B881.w		; E0 81 B8
	eor $1F50BF.l,X		; 5F BF 50 1F
	ldx $AB.b,Y		; B6 AB
	mvn $63,$9D		; 54 9D 63
	stz $F461.w,X		; 9E 61 F4
	cpx #$8200.w		; E0 00 82
	beq  13.b		; F0 0D
	eor $E5AD7F.l,X		; 5F 7F AD E5
	tda		; 7B
	adc [$88.b],Y		; 77 88
	tyx		; BB
	mvp $22,$DD		; 44 DD 22
	inc $BC.b,X		; F6 BC
	lda ($E2.b,X)		; A1 E2
	cli		; 58
	phd		; 0B
	ora #$5E.b		; 09 5E
	xba		; EB
	asl A		; 0A
	.db $82, $82, $F2		; 82 82 F2
	pha		; 48
	.db $42, $7E		; 42 7E
	sbc ($F4.b,S),Y		; F3 F4
	bra -16.b		; 80 F0
	asl $AAFF.w		; 0E FF AA
	sbc $596A.w,X		; FD 6A 59
	inx		; E8
	sbc ($A0.b,S),Y		; F3 A0
	bvs  23.b		; 70 17
	sty $4DF2.w		; 8C F2 4D
	lda ($80.b,X)		; A1 80
	cpx #$17F8.w		; E0 F8 17
	ldx $69.b,Y		; B6 69
	ldy $6B.b,X		; B4 6B
	sbc $6EB3F7.l,X		; FF F7 B3 6E
	lda $BB6E.w,X		; BD 6E BB
	adc $6FB8.w		; 6D B8 6F
	ldy $66.b,X		; B4 66
	tyx		; BB
	rts		; 60

	inc $F8.b		; E6 F8
	ora #$01.b		; 09 01
	brk $FE.b		; 00 FE
	sbc $19BF0B.l,X		; FF 0B BF 19
	adc $F586.w,Y		; 79 86 F5
	asl $34C3.w		; 0E C3 34
	lda [$A8.b]		; A7 A8
	eor [$DC.b],Y		; 57 DC
	lda $FB57B2.l		; AF B2 57 FB
	sbc $667F76.l,X		; FF 76 7F 66
	rti		; 40

	bit $10.b		; 24 10
	rti		; 40

	jsr $4200.w		; 20 00 42
	brk $94.b		; 00 94
	php		; 08
	.db $82, $00, $EB		; 82 00 EB
	sbc $3FE00F.l,X		; FF 0F E0 3F
	bmi  95.b		; 30 5F
	bpl  91.b		; 10 5B
	clc		; 18
	inc $E6.b		; E6 E6
	and $99.b		; 25 99
	ora ($6E.b),Y		; 11 6E
	sbc $E09A0B.l,X		; FF 0B 9A E0
	ora $10CF30.l,X		; 1F 30 CF 10
	sbc $E6E718.l		; EF 18 E7 E6
	ora $F288.w,Y		; 19 88 F2
	adc $7DFE7F.l,X		; 7F 7F FE 7D
	.db $82, $FE, $01		; 82 FE 01
	lda [$00.b]		; A7 00
	ora $E22107.l,X		; 1F 07 21 E2
	bra 119.b		; 80 77
	adc $5D.b,S		; 63 5D
	stz $A17F.w		; 9C 7F A1
	jsr $09F8.w		; 20 F8 09
	bra 127.b		; 80 7F
	adc $9C.b,S		; 63 9C
	trb $8AE3.w		; 1C E3 8A
	pea $FFFE.w		; F4 FE FF
	asl A		; 0A
	adc $FA.b,X		; 75 FA
	sbc $F080.w,X		; FD 80 F0
	ora $FEF48A.l		; 0F 8A F4 FE
	sbc $80FDFA.l,X		; FF FA FD 80
	beq  15.b		; F0 0F
	sta $8BF860.l,X		; 9F 60 F8 8B
	sta ($FF.b,S),Y		; 93 FF
	asl $FF.b		; 06 FF
	ora ($07.b,X)		; 01 07
	sed		; F8
	xce		; FB
	and $F1E1.w		; 2D E1 F1
	xba		; EB
	sbc $937F.w,X		; FD 7F 93
	sta [$00.b]		; 87 00
	sbc ($00.b,X)		; E1 00
	sed		; F8
	sbc ($32.b),Y		; F1 32
	rti		; 40

	eor $70DA80.l		; 4F 80 DA 70
.ACCU 16
.INDEX 16
	rep #$B3		; C2 B3
	bit #$8999.w		; 89 99 89
	lda $7DF686.l,X		; BF 86 F6 7D
	cld		; D8
	rti		; 40

	rti		; 40

	cpy #$AB69.w		; C0 69 AB
	brk $EC.b		; 00 EC
	inc $ADAD.w,X		; FE AD AD
	cop $E8.b		; 02 E8
	ora $3D52.w		; 0D 52 3D
	ora $E6.b,X		; 15 E6
	cmp $0256AB.l,X		; DF AB 56 02
	xba		; EB
	ora $82F6.w		; 0D F6 82
	beq  10.b		; F0 0A
	dec A		; 3A
	and $FA.b,S		; 23 FA
	eor [$80.b],Y		; 57 80
	bvs  22.b		; 70 16
	lda $E9EA2C.l,X		; BF 2C EA E9
	xba		; EB
	cmp $35.b,X		; D5 35
	beq  -4.b		; F0 FC
	ora $1E49.w,X		; 1D 49 1E
	cpx $FDF0.w		; EC F0 FD
	lda $1E3E.w,Y		; B9 3E 1E
	cpx $FEE0.w		; EC E0 FE
	cpy #$EFCA.w		; C0 CA EF
	sbc [$9F.b]		; E7 9F
	eor $75F0.w		; 4D F0 75
	asl A		; 0A
	ror $F101.w,X		; 7E 01 F1
.ACCU 8
.INDEX 8
	sep #$75		; E2 75
	lda $3800FF.l,X		; BF FF 00 38
	bra  -9.b		; 80 F7
	beq -83.b		; F0 AD
	jmp $F0C0.w		; 4C C0 F0
	phd		; 0B
	beq  15.b		; F0 0F
	tsb $1BF3.w		; 0C F3 1B
	inx		; E8
	ldy $2FFF.w		; AC FF 2F
	tad		; 5B
	jmp.w [$AB2B]		; DC 2B AB
	clc		; 18
	ror $FD0E.w,X		; 7E 0E FD
	ora ($F1.b),Y		; 11 F1
	rol $55CA.w		; 2E CA 55
	sta [$11.b],Y		; 97 11
	sbc $0EFEAB.l,X		; FF AB FE 0E
	sbc ($11.b),Y		; F1 11
	inc $DF20.w		; EE 20 DF
	rti		; 40

	lda $A4F2AC.l,X		; BF AC F2 A4
	sbc ($80.b),Y		; F1 80
	cop $95.b		; 02 95
	sbc #$FC.b		; E9 FC
	plx		; FA
	jsr $FF25.w		; 20 25 FF
	sta ($26.b),Y		; 91 26
	jsr ($ACFF.w,X)		; FC FF AC
	sbc ($A4.b)		; F2 A4
	sbc ($0A.b),Y		; F1 0A
	jsr ($8814.w,X)		; FC 14 88
	plx		; FA
	jsr $FF25.w		; 20 25 FF
	jsr ($5554.w,X)		; FC 54 55
	sbc $3DD3CE.l,X		; FF CE D3 3D
	and $0F38E0.l,X		; 3F E0 38 0F
	stx $C1.b,Y		; 96 C1
	ldx $E0DB.w		; AE DB E0
	sed		; F8
	ora $FC28.w,Y		; 19 28 FC
	sta $8C.b		; 85 8C
	cpx #$F8.b		; E0 F8
	ora $F2AC.w,Y		; 19 AC F2
	inc $FCFD.w,X		; FE FD FC
	inc $FAF7.w,X		; FE F7 FA
	jsr $10E8.w		; 20 E8 10
	wai		; CB
	and ($22.b,S),Y		; 33 22
	jmp $7AAAD5.l		; 5C D5 AA 7A
	sta $FF.b		; 85 FF
	inc $80DB.w		; EE DB 80
	bra  42.b		; 80 2A
	jsr ($2A03.w,X)		; FC 03 2A
	sbc ($58.b),Y		; F1 58
	ror A		; 6A
	stx $E4.b,Y		; 96 E4
	sed		; F8
	lda $8A.b,X		; B5 8A
	plb		; AB
	sty $7F.b,X		; 94 7F
	and $52.b		; 25 52
	rti		; 40

	phx		; DA
	and [$F3.b],Y		; 37 F3
	lda ($E4.b,X)		; A1 E4
	ora ($DA.b,S),Y		; 13 DA
	bcs -10.b		; B0 F6
	ora $50.b		; 05 50
	asl A		; 0A
	jsr ($2462.w,X)		; FC 62 24
	inc $EF.b		; E6 EF
	ora #$FD.b		; 09 FD
	.db $62, $23, $12		; 62 23 12
	and $FC0A6E.l,X		; 3F 6E 0A FC
	inc $FF02.w,X		; FE 02 FF
	plx		; FA
	ora [$FA.b]		; 07 FA
	sed		; F8
	lda $FA.b,S		; A3 FA
	ora #$FD.b		; 09 FD
	cpx $0C.b		; E4 0C
	tsb $0505.w		; 0C 05 05
	sbc $2AFF.w,X		; FD FF 2A
	and ($1C.b),Y		; 31 1C
	lsr $ECB5.w		; 4E B5 EC
	and ($FE.b)		; 32 FE
	cpx $40FD.w		; EC FD 40
	lsr A		; 4A
	dey		; 88
	jmp $DEFE.w		; 4C FE DE
	nop		; EA
	bit $1F40.w,X		; 3C 40 1F
	adc ($FF.b,X)		; 61 FF
	cop $02.b		; 02 02
	asl A		; 0A
	asl A		; 0A
	plx		; FA
	sbc $0F0FDE.l,X		; FF DE 0F 0F
	eor $7D.b,X		; 55 7D
	rts		; 60

	bvs  13.b		; 70 0D
	ldx $6081.w,Y		; BE 81 60
	bvs  20.b		; 70 14
	cpx #$70.b		; E0 70
	ora #$60.b		; 09 60
	stz $E0.b,X		; 74 E0
	ror $EE.b,X		; 76 EE
	inc $BD9D.w,X		; FE 9D BD
	lda $11B8FD.l,X		; BF FD B8 11
	inc $1C.b		; E6 1C
	ora $DDFC.w		; 0D FC DD
	cpy #$6C.b		; C0 6C
	mvp $69,$28		; 44 28 69
	ora ($FF.b,X)		; 01 FF
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	ldy #$422A.w		; A0 2A 42
	tay		; A8
	cpx #$6077.w		; E0 77 60
	bvs   9.b		; 70 09
	cpx #$0970.w		; E0 70 09
	rts		; 60

	bvs  11.b		; 70 0B
	bra  -8.b		; 80 F8
	phd		; 0B
	ora #$3CFD.w		; 09 FD 3C
	bra  -8.b		; 80 F8
	ora #$731D.w		; 09 1D 73
	rts		; 60

	adc ($72.b),Y		; 71 72
	sta ($19.b)		; 92 19
	sta $DB69.w,X		; 9D 69 DB
	and $2F.b,S		; 23 2F
	cpx #$E718.w		; E0 18 E7
	cpx $C2.b		; E4 C2
	ora $FF80.w		; 0D 80 FF
	sta $CF6B80.l,X		; 9F 80 6B CF
	phd		; 0B
	ror $7E.b,X		; 76 7E
	tda		; 7B
	inc $A0D5.w,X		; FE D5 A0
	and ($FE.b,X)		; 21 FE
	bra 108.b		; 80 6C
	sbc ($8F.b),Y		; F1 8F
	jsr ($FC0A.w,X)		; FC 0A FC
	phx		; DA
	dec $3031.w,X		; DE 31 30
	stx $80.b		; 86 80
	tsb $3F.b		; 04 3F
	bit $E8.b,X		; 34 E8
	cmp $007ACF.l,X		; DF CF 7A 00
	ror $26.b		; 66 26
	.db $82, $CC, $0A		; 82 CC 0A
	sta ($F3.b,X)		; 81 F3
	lda [$56.b],Y		; B7 56
	stz $3A9F.w		; 9C 9F 3A
	adc ($AF.b),Y		; 71 AF
	jsr $0A78.w		; 20 78 0A
	jsr $5082.w		; 20 82 50
	jsr $0C78.w		; 20 78 0C
	jsr $1180.w		; 20 80 11
	sbc $A0FB.w,X		; FD FB A0
	bvs   9.b		; 70 09
	jsr $D884.w		; 20 84 D8
	cld		; D8
	sbc ($E2.b,S),Y		; F3 E2
	stz $64.b		; 64 64
	bra 102.b		; 80 66
	ora $80C0.w,Y		; 19 C0 80
	lda ($5F.b,S),Y		; B3 5F
	lda ($23.b,X)		; A1 23
	lda ($8E.b,S),Y		; B3 8E
	rol $FF.b		; 26 FF
	trb $71A0.w		; 1C A0 71
	rts		; 60

	txa		; 8A
	txs		; 9A
	bne -73.b		; D0 B7
	plx		; FA
	sec		; 38
	sta ($5B.b,X)		; 81 5B
	eor $7820B2.l,X		; 5F B2 20 78
	asl $204D.w		; 0E 4D 20
	sei		; 78
	asl $20.b,X		; 16 20
	ror $80.b,X		; 76 80
	sed		; F8
	ora $6E6E.w		; 0D 6E 6E
	ror $C7.b,X		; 76 C7
	sta $262776.l,X		; 9F 76 27 26
	and ($80.b,X)		; 21 80
	lda #$2F88.w		; A9 88 2F
	rol $064E.w		; 2E 4E 06
	stx $8011.w		; 8E 11 80
	cld		; D8
	sbc $76E0DE.l,X		; FF DE E0 76
	ldy #$FEFE.w		; A0 FE FE
	bra -85.b		; 80 AB
	ldx #$B2BD.w		; A2 BD B2
	ror $21.b,X		; 76 21
	inc $8180.w		; EE 80 81
	cmp $BE.b		; C5 BE
	cmp $B828.w,Y		; D9 28 B8
	eor [$6F.b]		; 47 6F
	sbc $5C.b,S		; E3 5C
	sbc $C0604C.l,X		; FF 4C 60 C0
	ply		; 7A
	phk		; 4B
	sbc $81E097.l,X		; FF 97 E0 81
	sta ($17.b,X)		; 81 17
	ldx #$79A0.w		; A2 A0 79
	asl A		; 0A
	php		; 08
	cpx #$0980.w		; E0 80 09
	sty $EF.b		; 84 EF
	.db $82, $FF, $F0		; 82 FF F0
	cpx #$0980.w		; E0 80 09
	tsx		; BA
	ldx #$A0A7.w		; A2 A7 A0
	.db $42, $03		; 42 03
.ACCU 16
.INDEX 16
	rep #$BB		; C2 BB
	beq -123.b		; F0 85
	inc $5F39.w,X		; FE 39 5F
	bra -56.b		; 80 C8
	sed		; F8
	adc $45.b,S		; 63 45
	sbc $71FE47.l,X		; FF 47 FE 71
	jmp $FEAAF0.l		; 5C F0 AA FE
	tas		; 1B
	clv		; B8
	sta ($60.b,X)		; 81 60
	jmp ($F8C0.w,X)		; 7C C0 F8
	phd		; 0B
	asl A		; 0A
	ldx #$F8C0.w		; A2 C0 F8
	phd		; 0B
	ldx $A4.b		; A6 A4
	ror $35.b,X		; 76 35
	eor $FD.b		; 45 FD
	lda $DF1840.l,X		; BF 40 18 DF
	cmp $4145.w,Y		; D9 45 41
	trb $00.b		; 14 00
	sed		; F8
	inc A		; 1A
	phy		; 5A
	sbc $BEFFCA.l,X		; FF CA FF BE
	pei ($FF.b)		; D4 FF
	ora $FAD3.w		; 0D D3 FA
	inc $E0.b		; E6 E0
	bit #$428B.w		; 89 8B 42
	trb $6B63.w		; 1C 63 6B
	bra -63.b		; 80 C1
	rol $97.b		; 26 97
	asl A		; 0A
	rts		; 60

	asl $13.b		; 06 13
	ldy $A4A0.w		; AC A0 A4
	inc $9AF9.w,X		; FE F9 9A
	lda $AF.b,S		; A3 AF
.ACCU 16
.INDEX 16
	rep #$F0		; C2 F0
	cmp $04.b,X		; D5 04
	adc $8080.w		; 6D 80 80
	dey		; 88
	ora $A09E.w		; 0D 9E A0
	phd		; 0B
	ldy #$C08A.w		; A0 8A C0
	ora $60AA1F.l,X		; 1F 1F AA 60
	pla		; 68
	sta ($C6.b,X)		; 81 C6
	and ($67.b,X)		; 21 67
	ror $A5.b,X		; 76 A5
	cpy #$ADFC.w		; C0 FC AD
	dex		; CA
	beq  -1.b		; F0 FF
	inc $F0FC.w,X		; FE FC F0
	stx $59.b		; 86 59
	sbc $63.b		; E5 63
	phk		; 4B
	jsr ($FEF3.w,X)		; FC F3 FE
	sbc [$75.b],Y		; F7 75
	sta $680AAF.l,X		; 9F AF 0A 68
	and ($FD.b)		; 32 FD
	inc $7AC3.w,X		; FE C3 7A
	and ($88.b,X)		; 21 88
	lda ($E4.b,X)		; A1 E4
	sta ($E2.b)		; 92 E2
	sta ($FF.b)		; 92 FF
	sbc $499FFE.l,X		; FF FE 9F 49
	jsr ($6A72.w,X)		; FC 72 6A
	cmp $FFC2.w,X		; DD C2 FF
	stx $74.b,Y		; 96 74
	inc $F329.w,X		; FE 29 F3
	adc $927F.w,X		; 7D 7F 92
	beq -125.b		; F0 83
	mvp $C6,$92		; 44 92 C6
	plx		; FA
	jsr ($DEFE.w,X)		; FC FE DE
	jsr ($FD1C.w,X)		; FC 1C FD
	rol A		; 2A
	sbc $6B.b,S		; E3 6B
	pei ($F1.b)		; D4 F1
	tas		; 1B
	sbc ($BD.b,S),Y		; F3 BD
	eor $60AF.w,X		; 5D AF 60
	txy		; 9B
	lsr $3AFC.w,X		; 5E FC 3A
	tax		; AA
	eor $60F0.w,X		; 5D F0 60
	adc $C06797.l,X		; 7F 97 67 C0
	tya		; 98
	tsb $6062.w		; 0C 62 60
	sed		; F8
	ora $96FE.w		; 0D FE 96
	lda $FCE62B.l,X		; BF 2B E6 FC
	tsx		; BA
	sbc $72.b,X		; F5 72
	inc $409D.w		; EE 9D 40
	sta $DEE6.w,Y		; 99 E6 DE
	sty $E4.b		; 84 E4
	stz $09F8.w		; 9C F8 09
	jsr ($F0FF.w,X)		; FC FF F0
	cmp $6F.b,S		; C3 6F
	ldy $57.b		; A4 57
	sbc [$EF.b],Y		; F7 EF
	lda $BFABEF.l		; AF EF AB BF
	cmp $37ECDF.l		; CF DF EC 37
	eor [$7F.b]		; 47 7F
	lda [$BB.b],Y		; B7 BB
	sbc [$CC.b],Y		; F7 CC
	sbc ($DF.b),Y		; F1 DF
	inc $FEBF.w,X		; FE BF FE
	php		; 08
	beq -76.b		; F0 B4
	inc $FA46.w,X		; FE 46 FA
	stz $FF7A.w,X		; 9E 7A FF
	eor [$FD.b],Y		; 57 FD
	jmp $FEBFFE.l		; 5C FE BF FE
	iny		; C8
	lda ($AE.b,X)		; A1 AE
	and ($C2.b),Y		; 31 C2
	jsr ($FEB8.w,X)		; FC B8 FE
	brk $66.b		; 00 66
	ora $64.b,S		; 03 64
	adc ($F8.b,X)		; 61 F8
	asl $60.b		; 06 60
	inc $6007.w,X		; FE 07 60
	sed		; F8
	ora ($66.b,X)		; 01 66
	ora ($66.b),Y		; 11 66
	ora $9966C2.l,X		; 1F C2 66 99
	adc [$9B.b]		; 67 9B
	ror $9F.b		; 66 9F
	inc $FE67.w,X		; FE 67 FE
	txy		; 9B
	ora ($04.b,X)		; 01 04
	adc [$99.b]		; 67 99
	sbc ($E0.b)		; F2 E0
	inc $E2FC.w,X		; FE FC E2
	sta ($80.b,S),Y		; 93 80
	inc $02A9.w,X		; FE A9 02
	cpx #$FCFE.w		; E0 FE FC
.ACCU 8
	sep #$E1		; E2 E1
	sbc $F8FDC0.l,X		; FF C0 FD F8
	tsb $1862.w		; 0C 62 18
	ror $38.b		; 66 38
	lsr $70.b		; 46 70
	asl $E0.b		; 06 E0
	asl $01.b		; 06 01
	inc $26C0.w,X		; FE C0 26
	phx		; DA
	cpx #$9D6E.w		; E0 6E 9D
	ror $7E99.w,X		; 7E 99 7E
	lda $9243.w,Y		; B9 43 92
	ror $F9.b,X		; 76 F9
	inc $FE.b		; E6 FE
	cmp $C0D8.w,Y		; D9 D8 C0
	inc $1960.w,X		; FE 60 19
	inc $13A0.w,X		; FE A0 13
	stz $C0.b		; 64 C0
	inc $E1BC.w,X		; FE BC E1
	ora $88BA.w,X		; 1D BA 88
	asl $1C60.w		; 0E 60 1C
	.db $62, $BE, $FE		; 62 BE FE
	sta ($66.b),Y		; 91 66
	asl $880E.w		; 0E 0E 88
	ror $7E9F.w		; 6E 9F 7E
	ldy $FDBE.w,X		; BC BE FD
	inc $99.b		; E6 99
	bcs -29.b		; B0 E3
	ldx #$30FE.w		; A2 FE 30
	lsr $FE.b		; 46 FE
	inc $4631.w,X		; FE 31 46
	ldx #$2099.w		; A2 99 20
	lda #$76.b		; A9 76
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	sbc $FCFEE0.l,X		; FF E0 FE FC
	cpx #$F8.b		; E0 F8
	ora #$EE.b		; 09 EE
	tas		; 1B
	inc $E0FC.w,X		; FE FC E0
	jsr ($6000.w,X)		; FC 00 60
	inc $0BF8.w,X		; FE F8 0B
	ora $60.b,X		; 15 60
	rts		; 60

	sta $0DF8FE.l,X		; 9F FE F8 0D
	dey		; 88
	ora $F2.b		; 05 F2
	jmp $FCFC.w		; 4C FC FC
	adc $F862EF.l		; 6F EF 62 F8
	tsb $7F9F.w		; 0C 9F 7F
	sbc $8F9F3F.l,X		; FF 3F 9F 8F
	rts		; 60

	ora $629C60.l,X		; 1F 60 9C 62
	and $F846.w,Y		; 39 46 F8
	asl $F9.b		; 06 F9
	asl $D9.b		; 06 D9
	rol $F8.b		; 26 F8
	ora ($E9.b),Y		; 11 E9
	rts		; 60

	sed		; F8
	ora $1D6698.l		; 0F 98 66 1D
	.db $62, $8E, $DC		; 62 8E DC
	cpy $00.b		; C4 00
	jsr ($FCC9.w,X)		; FC C9 FC
	stx $9D.b		; 86 9D
	dec $03F2.w,X		; DE F2 03
	inc $F1BC.w,X		; FE BC F1
	sbc $7146B8.l		; EF B8 46 71
	asl $C4.b		; 06 C4
	bpl  97.b		; 10 61
	jsr ($FEA0.w,X)		; FC A0 FE
	jmp ($08F9.w)		; 6C F9 08
	lsr $FE.b		; 46 FE
	ror $FE.b		; 66 FE
	txs		; 9A
	sbc $6C8A.w,X		; FD 8A 6C
	sta $FE.b,X		; 95 FE
	jsr ($6FFC.w,X)		; FC FC 6F
	jsr ($F860.w,X)		; FC 60 F8
	ora $649BDB.l		; 0F DB 9B 64
	phb		; 8B
	stz $11.b,X		; 74 11
	inc $2561.w		; EE 61 25
	dey		; 88
	ror $FC.b,X		; 76 FC
	bit #$76.b		; 89 76
	dex		; CA
	pea $F464.w		; F4 64 F4
	inc $9490.w,X		; FE 90 94
	cpx $B1.b		; E4 B1
	iny		; C8
	ora #$EF.b		; 09 EF
	pla		; 68
	sbc ($20.b)		; F2 20
	stx $A00C.w		; 8E 0C A0
	cpx #$60.b		; E0 60
	ora ($02.b),Y		; 11 02
	lsr $FE.b		; 46 FE
	and #$FE.b		; 29 FE
	sta ($BE.b,S),Y		; 93 BE
	iny		; C8
	sbc #$FD.b		; E9 FD
	inc $EF44.w,X		; FE 44 EF
	sbc $FC99.w,X		; FD 99 FC
	txa		; 8A
	adc $15.b,X		; 75 15
	nop		; EA
	plx		; FA
	sbc $80FCFC.l		; EF FC FC 80
	sed		; F8
	ora $4AB6F2.l		; 0F F2 B6 4A
	lda $30.b,X		; B5 30
	cmp $09D22D.l		; CF 2D D2 09
	inc $93.b,X		; F6 93
	sbc $0E0FB5.l,X		; FF B5 0F 0E
	brk $CF.b		; 00 CF
	brk $D2.b		; 00 D2
	brk $F0.b		; 00 F0
	sbc $956AFD.l,X		; FF FD 6A 95
	adc $0DE0BC.l		; 6F BC E0 0D
	sbc ($29.b)		; F2 29
	dec $E0.b,X		; D6 E0
	sbc $F2E095.l,X		; FF 95 E0 F2
	brk $D6.b		; 00 D6
	sbc $49341F.l,X		; FF 1F 34 49
	lda $25DF4A.l,X		; BF 4A DF 25
	sbc $B37797.l		; EF 97 77 B3
	eor ($F9.b,S),Y		; 53 F9
	and #$FC.b		; 29 FC
	trb $FF.b		; 14 FF
	eor $DF40F1.l,X		; 5F F1 40 DF
	jsr $106F.w		; 20 6F 10
	and [$88.b],Y		; 37 88
	ora ($AC.b,S),Y		; 13 AC
	ora #$56.b		; 09 56
	tsb $ED.b		; 04 ED
	asl A		; 0A
	sbc #$20.b		; E9 20
	pla		; 68
	lda ($FF.b,S),Y		; B3 FF
	eor $55.b,X		; 55 55
	tax		; AA
	sbc $E1.b,X		; F5 E1
	cpy #$0A.b		; C0 0A
	dec $F1FF.w,X		; DE FF F1
	eor $B0.b,X		; 55 B0
	eor $F6A9F6.l		; 4F F6 A9 F6
	asl $61F1.w		; 0E F1 61
	asl $ED92.w,X		; 1E 92 ED
	bpl  11.b		; 10 0B
	beq  47.b		; F0 2F
	cpx #$5F.b		; E0 5F
	lda $29.b		; A5 29
	sbc [$8A.b]		; E7 8A
	sbc ($00.b),Y		; F1 00
	stz $01FF.w,X		; 9E FF 01
	bra 109.b		; 80 6D
	bra -17.b		; 80 EF
	cpy #$9F.b		; C0 9F
	bvc -81.b		; 50 AF
	jsr $8ADF.w		; 20 DF 8A
	asl $E0F1.w		; 0E F1 E0
	lda ($5E.b,X)		; A1 5E
	ora ($E0.b)		; 12 E0
	sbc $00AFE4.l		; EF E4 AF 00
	bra -113.b		; 80 8F
	cmp $5EE08A.l,X		; DF 8A E0 5E
	brk $ED.b		; 00 ED
	brk $C3.b		; 00 C3
	cmp [$F0.b],Y		; D7 F0
	inc $C31A.w		; EE 1A C3
	sta $F8677F.l,X		; 9F 7F 67 F8
	adc $C2D24F.l,X		; 7F 4F D2 C2
	dex		; CA
	lda $020586.l,X		; BF 86 05 02
	ora ($01.b,X)		; 01 01
	cpy #$00.b		; C0 00
	tsb $19DD.w		; 0C DD 19
	sbc $7E0AF8.l,X		; FF F8 0A 7E
	sta $97.b,S		; 83 97
	jsr ($BD7E.w,X)		; FC 7E BD
	ror $FADB.w,X		; 7E DB FA
	and [$FB.b]		; 27 FB
	cmp [$A1.b],Y		; D7 A1
	brk $3C.b		; 00 3C
	brk $87.b		; 00 87
	sbc $FC18FF.l,X		; FF FF 18 FC
	and $D1.b,S		; 23 D1
	asl $0FD0.w		; 0E D0 0F
	lsr A		; 4A
	lda $F0.b,X		; B5 F0
	ora $E912ED.l		; 0F ED 12 E9
	asl $C0.b,X		; 16 C0
	sbc $E0F8F8.l,X		; FF F8 F8 E0
	cmp $E0.b,S		; C3 E0
	inc $EFE0.w		; EE E0 EF
	cpx #$F5.b		; E0 F5
	jsr ($E0F2.w,X)		; FC F2 E0
	inc $7F.b,X		; F6 7F
	sbc $1C9867.l,X		; FF 67 98 1C
	sbc $11.b,S		; E3 11
	inc $8F70.w		; EE 70 8F
	brk $FF.b		; 00 FF
	tya		; 98
	brk $E3.b		; 00 E3
	brk $EE.b		; 00 EE
	brk $6A.b		; 00 6A
	cmp $008F.w,Y		; D9 8F 00
	inc $98B1.w,X		; FE B1 98
	asl $AAA9.w		; 0E A9 AA
	eor $A6.b,S		; 43 A6
	and $E2FE.w		; 2D FE E2
	sed		; F8
	ora $5D5F.w		; 0D 5F 5D
	cmp $810060.l,X		; DF 60 00 81
	brk $C3.b		; 00 C3
	dec $0CB8.w,X		; DE B8 0C
	cpy #$F8.b		; C0 F8
	ora $14F8E0.l		; 0F E0 F8 14
	cpy $FE3C.w		; CC 3C FE
	inc $FF0B.w,X		; FE 0B FF
	cpx #$FC.b		; E0 FC
	ora $FE.b,S		; 03 FE
	sbc $3FE046.l,X		; FF 46 E0 3F
	eor #$56.b		; 49 56
	stx $21B1.w		; 8E B1 21
	phd		; 0B
	sbc [$9E.b],Y		; F7 9E
	and ($8D.b)		; 32 8D
	pei ($9A.b)		; D4 9A
	lsr A		; 4A
	cpy #$FF.b		; C0 FF
	bra -64.b		; 80 C0
	sbc ($80.b),Y		; F1 80
	lsr $0955.w,X		; 5E 55 09
	bra  77.b		; 80 4D
	pei ($9A.b)		; D4 9A
	asl A		; 0A
	bit $F8FE.w		; 2C FE F8
	ora #$64.b		; 09 64
	sed		; F8
	phd		; 0B
	inc $561C.w,X		; FE 1C 56
	ror $FEFE.w		; 6E FE FE
	stp		; DB
	stz $FC.b		; 64 FC
	cmp ($6C.b,S),Y		; D3 6C
	cpx #$90.b		; E0 90
	ora $1FF8FE.l		; 0F FE F8 1F
	cmp $87.b,X		; D5 87
	ror $F8.b		; 66 F8
	ora #$FE.b		; 09 FE
	jsr ($F866.w,X)		; FC 66 F8
	ora #$FE.b		; 09 FE
	jsr ($6AD5.w,X)		; FC D5 6A
	cmp $A662.w,X		; DD 62 A6
	cmp [$F5.b]		; C7 F5
	dec $69.b,X		; D6 69
	cmp $9C66.w,Y		; D9 66 9C
	adc $B9E6C0.l,X		; 7F C0 E6 B9
	inc $0DF8.w,X		; FE F8 0D
	plb		; AB
	lsr $FF.b,X		; 56 FF
	adc $DD46B9.l		; 6F B9 46 DD
	and [$6F.b]		; 27 6F
	sta [$9B.b],Y		; 97 9B
	adc $EB0FFE.l		; 6F FE 0F EB
	inc $861B.w,X		; FE 1B 86
	cmp ($02.b,X)		; C1 02
	stp		; DB
	lda $05A911.l,X		; BF 11 A9 05
	rts		; 60

	cmp ($19.b,X)		; C1 19
	.db $82, $39, $10		; 82 39 10
	sbc $64FF58.l,X		; FF 58 FF 64
	sbc $6E2182.l,X		; FF 82 21 6E
	jmp $0149.w		; 4C 49 01
	ldy $FD.b,X		; B4 FD
	bcs  -3.b		; B0 FD
	bit $E908.w,X		; 3C 08 E9
	dec $11.b		; C6 11
	phd		; 0B
	ldy $FD.b		; A4 FD
	cpx $0EFE.w		; EC FE 0E
	lsr $71.b		; 46 71
	bvs  60.b		; 70 3C
	dec $FE.b,X		; D6 FE
	trb $0FFF.w		; 1C FF 0F
	inc $FF07.w		; EE 07 FF
	tsb $8003.w		; 0C 03 80
	iny		; C8
	inc $F4EA.w,X		; FE EA F4
	and ($40.b,S),Y		; 33 40
	bcc -87.b		; 90 A9
	sbc $FEF470.l,X		; FF 70 F4 FE
	plx		; FA
	bra  60.b		; 80 3C
	ora ($F2.b,S),Y		; 13 F2
	cpx #$FF.b		; E0 FF
	bmi -46.b		; 30 D2
	jmp.w [$0009]		; DC 09 00
.INDEX 8
	sep #$96		; E2 96
	tsx		; BA
	inc $598C.w,X		; FE 8C 59
	sbc $8C04D4.l,X		; FF D4 04 8C
	plp		; 28
	stz $FEF2.w		; 9C F2 FE
	ora ($FF.b),Y		; 11 FF
	lda $EA.b,X		; B5 EA
	sbc $BFE2.w,X		; FD E2 BF
	ora $9B.b		; 05 9B
	cpx $D6.b		; E4 D6
	sbc #$D9.b		; E9 D9
	inc $DF.b		; E6 DF
	sta $A9.b,X		; 95 A9
	rti		; 40

	tay		; A8
	and ($CC.b,X)		; 21 CC
	sbc $9EFF.w,X		; FD FF 9E
	sbc ($FE.b),Y		; F1 FE
	sbc $A9769B.l,X		; FF 9B 76 A9
	eor $7F3FDA.l,X		; 5F DA 3F 7F
	stz $7E8F.w,X		; 9E 8F 7E
	sbc ($1E.b,S),Y		; F3 1E
	sta [$48.b]		; 87 48
	xce		; FB
	inc $FE13.w,X		; FE 13 FE
	ldx #$1B.b		; A2 1B
	sei		; 78
	bit $1E.b		; 24 1E
	jmp ($C99E.w,X)		; 7C 9E C9
	ora ($8E.b),Y		; 11 8E
	ldy #$FF.b		; A0 FF
	sec		; 38
	sta ($04.b,X)		; 81 04
	bra  96.b		; 80 60
	cli		; 58
	ror $F6FE.w		; 6E FE F6
	brk $D0.b		; 00 D0
	sbc ($DA.b)		; F2 DA
	inc $886E.w,X		; FE 6E 88
	ora ($BE.b),Y		; 11 BE
	tay		; A8
	asl $8102.w		; 0E 02 81
	bpl  52.b		; 10 34
	jsr ($22FE.w,X)		; FC FE 22
	beq   0.b		; F0 00
	and $44.b		; 25 44
	jsr ($C6FE.w,X)		; FC FE C6
	asl $80.b		; 06 80
	sta ($44.b,S),Y		; 93 44
	brk $00.b		; 00 00
	inc $52.b,X		; F6 52
	inc $9294.w		; EE 94 92
	jsr $EE32.w		; 20 32 EE
	sbc ($EE.b)		; F2 EE
	cpx #$78.b		; E0 78
	asl A		; 0A
	ldy $86.b,X		; B4 86
	ldy $4AFC.w,X		; BC FC 4A
	lsr $65.b,X		; 56 65
	sbc $750152.l,X		; FF 52 01 75
	ldx #$F0.b		; A2 F0
	jsr ($C33E.w,X)		; FC 3E C3
	bra  75.b		; 80 4B
	jmp.w [$066E]		; DC 6E 06
	rol $FF20.w		; 2E 20 FF
	and ($90.b,X)		; 21 90
	eor ($C1.b),Y		; 51 C1
	dec $E4.b		; C6 E4
	brk $B8.b		; 00 B8
	sbc ($FE.b)		; F2 FE
	cpx $FF43.w		; EC 43 FF
	sty $47.b		; 84 47
	sec		; 38
	ldy #$F3.b		; A0 F3
	ora ($FF.b),Y		; 11 FF
	and ($E2.b),Y		; 31 E2
	sbc $81FF41.l,X		; FF 41 FF 81
	cop $15.b		; 02 15
	inc $F2D0.w,X		; FE D0 F2
	adc $0A.b,S		; 63 0A
	rol A		; 2A
	ora $F240.w,X		; 1D 40 F2
	dec $F2.b		; C6 F2
	sbc $FE289C.l,X		; FF 9C 28 FE
	inc $5224.w		; EE 24 52
	ldy $18FC.w,X		; BC FC 18
	jsr ($A53E.w,X)		; FC 3E A5
	jmp.w [$3CFB]		; DC FB 3C
	bit $B1.b		; 24 B1
	rti		; 40

	txs		; 9A
	and ($48.b),Y		; 31 48
	inc $6C45.w,X		; FE 45 6C
	lda ($EE.b),Y		; B1 EE
	sbc ($02.b),Y		; F1 02
	sbc ($68.b)		; F2 68
	inc $FF4C.w,X		; FE 4C FF
	dec $712E.w		; CE 2E 71
	beq  17.b		; F0 11
	bpl -46.b		; 10 D2
	asl $5A8C.w,X		; 1E 8C 5A
	php		; 08
	brk $CC.b		; 00 CC
	bit $F4.b,X		; 34 F4
	bit $FE.b,X		; 34 FE
	cpx $FF.b		; E4 FF
	ror $30.b		; 66 30
	lsr A		; 4A
	xba		; EB
	ror $7E83.w,X		; 7E 83 7E
	sta [$7E.b]		; 87 7E
	lda ($60.b,X)		; A1 60
	inc $E660.w		; EE 60 E6
	sbc $134AF6.l		; EF F6 4A 13
	ora ($FE.b,X)		; 01 FE
	ora $7E1F7D.l,X		; 1F 7D 1F 7E
	ora $40937C.l		; 0F 7C 93 40
	cmp $57.b,S		; C3 57
	adc $FE3F20.l,X		; 7F 20 3F FE
	dey		; 88
	ora $D007B0.l		; 0F B0 07 D0
	txa		; 8A
	ora ($18.b,S),Y		; 13 18
	sbc ($F8.b)		; F2 F8
	inc A		; 1A
	inc $DFF0.w,X		; FE F0 DF
	sed		; F8
	sbc $C18EF8.l,X		; FF F8 8E C1
	inc $09F8.w,X		; FE F8 09
	ror $FD7A.w,X		; 7E 7A FD
	eor ($BD.b),Y		; 51 BD
	beq  -8.b		; F0 F8
	phd		; 0B
	inc $42FF.w,X		; FE FF 42
	inc $FC.b,X		; F6 FC
	rol $81.b		; 26 81
	ora [$FE.b]		; 07 FE
	and ($E0.b,X)		; 21 E0
	sta [$BF.b],Y		; 97 BF
	ror $76E0.w		; 6E E0 76
	beq -68.b		; F0 BC
	phd		; 0B
	inc $FD1F.w,X		; FE 1F FD
	ora $F80FFE.l,X		; 1F FE 0F F8
	cmp $E7.b,X		; D5 E7
	adc ($A0.b)		; 72 A0
	jsl $3F2F3F.l		; 22 3F 2F 3F
	stx $F8A0.w		; 8E A0 F8
	asl A		; 0A
	dec $61.b,X		; D6 61
	ldy #$FD.b		; A0 FD
	sed		; F8
	sta $3E0C.w		; 8D 0C 3E
	bvs  -2.b		; 70 FE
	cmp $FE.b,S		; C3 FE
	eor [$C0.b]		; 47 C0
	sbc $5506.w,X		; FD 06 55
	sta $3E.b		; 85 3E
	and ($E2.b),Y		; 31 E2
	sbc ($C0.b,S),Y		; F3 C0
	jsr ($F2DA.w,X)		; FC DA F2
	clc		; 18
	jsl $C6FE80.l		; 22 80 FE C6
	tax		; AA
	sbc $F348C3.l,X		; FF C3 48 F3
	bra  -8.b		; 80 F8
	ora [$88.b],Y		; 17 88
	trb $80.b		; 14 80
	sed		; F8
	ora #$E7.b		; 09 E7
	bvs -85.b		; 70 AB
	sei		; 78
	cpx $7C.b		; E4 7C
	lda ($FF.b)		; B2 FF
	ora $7FDD7E.l,X		; 1F 7E DD 7F
	tax		; AA
	tda		; 7B
	xce		; FB
	sei		; 78
	sty $70.b,X		; 94 70
	ora $7F077F.l		; 0F 7F 07 7F
	ora $8F.b,S		; 03 8F
	beq   2.b		; F0 02
	brk $7F.b		; 00 7F
	tsb $F6.b		; 04 F6
	sbc ($28.b)		; F2 28
	ora $3FDFE0.l		; 0F E0 DF 3F
	ora $900FC0.l		; 0F C0 0F 90
	ora $09AE20.l,X		; 1F 20 AE 09
	lsr $A061.w,X		; 5E 61 A0
	and ($F0.b,X)		; 21 F0
	and $FFD8F0.l,X		; 3F F0 D8 FF
	ror $C4.b		; 66 C4
	sbc $9E.b,X		; F5 9E
	clc		; 18
	lda ($7E.b),Y		; B1 7E
	bra  35.b		; 80 23
	bra 127.b		; 80 7F
	cpy #$27.b		; C0 27
	cpy #$7F.b		; C0 7F
	sta $1F.b		; 85 1F
	cpy #$31.b		; C0 31
	cpx #$1F.b		; E0 1F
	cpx #$00.b		; E0 00
	cpx #$80.b		; E0 80
	tsx		; BA
	plp		; 28
	tsx		; BA
	inc $FFFC.w,X		; FE FC FF
	ora $F067FE.l,X		; 1F FE 67 F0
	pld		; 2B
	sed		; F8
	ldy $FC.b		; A4 FC
	ora ($7E.b)		; 12 7E
	sta $C27F.w		; 8D 7F C2
	eor $8B7B00.l,X		; 5F 00 7B 8B
	sec		; 38
	trb $30.b		; 14 30
	ora $60E904.l		; 0F 04 E9 60
	lsr A		; 4A
	pla		; 68
	asl $8478.w		; 0E 78 84
	rts		; 60

	sbc ($CF.b),Y		; F1 CF
	cpx #$24.b		; E0 24
	sbc $E01A.w,X		; FD 1A E0
	inc $A1D0.w,X		; FE D0 A1
	xce		; FB
	phd		; 0B
	sed		; F8
	trb $F0.b		; 14 F0
	cpx #$FC.b		; E0 FC
	ror $EA.b,X		; 76 EA
	tsb $81.b		; 04 81
	phx		; DA
	inc $F2.b,X		; F6 F2
	bra -56.b		; 80 C8
	bra  -3.b		; 80 FD
	ror $F880.w,X		; 7E 80 F8
	ora ($FF.b)		; 12 FF
	cmp $26FF82.l,X		; DF 82 FF 26
	lda $32DD5C.l,X		; BF 5C DD 32
	sbc ($2E.b,X)		; E1 2E
	sbc ($68.b,X)		; E1 68
	sbc [$DB.b]		; E7 DB
	cpy $22.b		; C4 22
	txs		; 9A
	cmp $FF405A.l		; CF 5A 40 FF
	jsl $FE1EFF.l		; 22 FF 1E FE
	bvs -22.b		; 70 EA
.INDEX 16
	rep #$D8		; C2 D8
	ora $7B0C.w		; 0D 0C 7B
	adc #$FF.b		; 69 FF
	lda $0DF8FE.l,X		; BF FE F8 0D
	lda $40E03F.l,X		; BF 3F E0 40
	sta $7F905F.l,X		; 9F 5F 90 7F
	tya		; 98
	adc $8704FB.l		; 6F FB 04 87
	eor $B12385.l,X		; 5F 85 23 B1
	rti		; 40

	adc $207F3F.l,X		; 7F 3F 7F 20
	ldy #$0BD0.w		; A0 D0 0B
	lda $D5D6E2.l,X		; BF E2 D6 D5
	jmp $10B5.w		; 4C B5 10
	ora $94749F.l,X		; 1F 9F 74 94
	inc $60FE.w,X		; FE FE 60
	eor $FAFC94.l,X		; 5F 94 FC FA
	lsr $E618.w,X		; 5E 18 E6
	bra  96.b		; 80 60
	bra 119.b		; 80 77
	cli		; 58
	sty $FC.b,X		; 94 FC
	ora $FA.b		; 05 FA
	rti		; 40

	ora $AB04E6.l,X		; 1F E6 04 AB
	lda $E0.b,S		; A3 E0
	jsr ($E0BF.w,X)		; FC BF E0
	sbc [$01.b]		; E7 01
	pea $F7FA.w		; F4 FA F7
	sbc ($91.b)		; F2 91
	cpx #$40FC.w		; E0 FC 40
	lda $F16218.l,X		; BF 18 62 F1
	pha		; 48
	sbc ($F9.b)		; F2 F9
	xce		; FB
	ora $E0.b,S		; 03 E0
	ora $5CFC01.l		; 0F 01 FC 5C
	nop		; EA
	cmp $F71820.l,X		; DF 20 18 F7
	sbc ($F3.b),Y		; F1 F3
	ldy #$0A1F.w		; A0 1F 0A
	inx		; E8
	cpy #$FE9A.w		; C0 9A FE
	jsr ($FF0C.w,X)		; FC 0C FF
	and $1A60BF.l,X		; 3F BF 60 1A
	asl A		; 0A
	rts		; 60

	cmp $EFE130.l,X		; DF 30 E1 EF
	rts		; 60

	ora [$7F.b]		; 07 7F
	lda ($55.b),Y		; B1 55
	ora $BF22.w,X		; 1D 22 BF
	bit $E9.b,X		; 34 E9
	inc $0B88.w,X		; FE 88 0B
	rts		; 60

	sed		; F8
	ora #$D8.b		; 09 D8
	stx $D0C0.w		; 8E C0 D0
	tsb $0CFC.w		; 0C FC 0C
	brk $09.b		; 00 09
	php		; 08
	jsr ($02FE.w,X)		; FC FE 02
	rti		; 40

	eor $FF.b,X		; 55 FF
	asl $EAE0.w		; 0E E0 EA
	inc $09F8.w,X		; FE F8 09
	iny		; C8
	ror A		; 6A
	jsr ($B8E2.w,X)		; FC E2 B8
	jmp ($87A5.w)		; 6C A5 87
	ora ($81.b,X)		; 01 81
	tsb $F8.b		; 04 F8
	asl A		; 0A
	sbc $D76070.l,X		; FF 70 60 D7
	sbc [$70.b],Y		; F7 70
	rtl		; 6B

	eor $06.b,X		; 55 06
	xce		; FB
	inc $E175.w,X		; FE 75 E1
	lda $DA.b,X		; B5 DA
	sta $38E782.l,X		; 9F 82 E7 38
	stx $82.b,Y		; 96 82
	inc $9623.w,X		; FE 23 96
	sbc ($96.b,X)		; E1 96
	.db $42, $88		; 42 88
	tsb $02C6.w		; 0C C6 02
	sbc ($F7.b,S),Y		; F3 F7
	cli		; 58
	cmp $C7EF.w,Y		; D9 EF C7
	adc $051B.w,Y		; 79 1B 05
	cpx #$C0FD.w		; E0 FD C0
	sed		; F8
	asl $6B0C.w		; 0E 0C 6B
	.db $62, $FC, $F8		; 62 FC F8
	rol A		; 2A
	sbc #$E0.b		; E9 E0
	sbc ($64.b,S),Y		; F3 64
	sed		; F8
	asl A		; 0A
	sbc $4CC260.l,X		; FF 60 C2 4C
	cmp ($54.b)		; D2 54
	lda $E9AFFA.l,X		; BF FA AF E9
	asl $1C73.w,X		; 1E 73 1C
	bcs -87.b		; B0 A9
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	sta ($60.b)		; 92 60
	ror A		; 6A
	bpl -17.b		; 10 EF
	ldy #$7FF4.w		; A0 F4 7F
	eor $DF7FB7.l,X		; 5F B7 7F DF
	lsr $41D1.w		; 4E D1 41
	dec $4DD2.w,X		; DE D2 4D
	bvc  79.b		; 50 4F
	cpy #$FF84.w		; C0 84 FF
	cpx $34.b		; E4 34
	cmp $B1403F.l,X		; DF 3F 40 B1
	rti		; 40

	ldx $AD40.w,Y		; BE 40 AD
	sbc [$87.b],Y		; F7 87
	rti		; 40

	lda $973FC0.l		; AF C0 3F 97
	jsr ($BD42.w,X)		; FC 42 BD
	jmp $AEB3.w		; 4C B3 AE
	eor ($F7.b),Y		; 51 F7
	adc $338C.w,X		; 7D 8C 33
	cpy $F5DA.w		; CC DA F5
	lda $B300.w,X		; BD 00 B3
	brk $F0.b		; 00 F0
	brk $A4.b		; 00 A4
	inc $E0F0.w,X		; FE F0 E0
	brk $C0.b		; 00 C0
	ora #$FDE0.w		; 09 E0 FD
	brk $C7.b		; 00 C7
	rtl		; 6B

	rts		; 60

	lda $FFDF30.l,X		; BF 30 DF FF
	sbc $18DB10.l		; EF 10 DB 18
	ror $66.b		; 66 66
	lda $99.b		; A5 99
	sta ($6E.b),Y		; 91 6E
	rol A		; 2A
	cmp $60.b,X		; D5 60
	sta $667460.l,X		; 9F 60 74 66
	inc $99FF.w,X		; FE FF 99
	rts		; 60

	stz $47.b,X		; 74 47
	cli		; 58
	jmp.w [$D143]		; DC 43 D1
	lsr $4FD0.w		; 4E D0 4F
	lsr A		; 4A
	eor $D0.b,X		; 55 D0
	cmp $F0FFCD.l		; CF CD FF F0
	eor ($49.b)		; 52 49
	dec $40.b,X		; D6 40
	clv		; B8
	rti		; 40

	lda $40.b,S		; A3 40
	ldx $4086.w		; AE 86 40
	lda $C0.b,X		; B5 C0
	lda $402FF8.l,X		; BF F8 2F 40
	lda ($40.b)		; B2 40
	ldx $F5.b,Y		; B6 F5
	asl A		; 0A
	dec $F1.b		; C6 F1
	cmp [$F5.b],Y		; D7 F5
	brk $B8.b		; 00 B8
	sbc $7780C3.l		; EF C3 80 77
	bvs  45.b		; 70 2D
	cpy $7880.w		; CC 80 78
	phd		; 0B
	bvs -113.b		; 70 8F
	tsb $C6F3.w		; 0C F3 C6
	cpy #$387F.w		; C0 7F 38
	eor $DF56C9.l,X		; 5F C9 56 DF
	rti		; 40

	cmp $F7DF5F.l,X		; DF 5F DF F7
	rti		; 40

	eor $4106C0.l,X		; 5F C0 06 41
	dec $BF.b		; C6 BF
	dex		; CA
	sta ($5A.b,S),Y		; 93 5A
	mvp $82,$78		; 44 78 82
	cmp [$AA.b],Y		; D7 AA
	bra  98.b		; 80 62
	adc ($8D.b)		; 72 8D
	and #$09F0.w		; 29 F0 09
	lda #$8DBB.w		; A9 BB 8D
	inc A		; 1A
	beq   9.b		; F0 09
	rti		; 40

	ldy $F8E0.w,X		; BC E0 F8
	asl A		; 0A
	inc $40AB.w,X		; FE AB 40
	ldy $FFE0.w,X		; BC E0 FF
	phk		; 4B
	lda ($A2.b,S),Y		; B3 A2
	jmp $FA2A55.l		; 5C 55 2A FA
	ora $20.b		; 05 20
	stx $DE.b		; 86 DE
	sep #$04		; E2 04
	brk $D2.b		; 00 D2
	inc $8EFE.w		; EE FE 8E
	sty $D0.b		; 84 D0
	sta ($88.b,X)		; 81 88
	jsr ($4880.w,X)		; FC 80 48
	sbc ($E0.b,X)		; E1 E0
	rts		; 60

	sbc $8C555C.l,X		; FF 5C 55 8C
	brk $84.b		; 00 84
	adc $B24080.l,X		; 7F 80 40 B2
	iny		; C8
	lda $C8854C.l,X		; BF 4C 85 C8
	clv		; B8
	phd		; 0B
	bvc 112.b		; 50 70
	ora #$FD2F.w		; 09 2F FD
	sbc $0E0EFD.l,X		; FF FD 0E 0E
	and $0F60E0.l,X		; 3F E0 60 0F
	sbc $150304.l,X		; FF 04 03 15
	ora $FE3F03.l		; 0F 03 3F FE
	asl $1A24.w,X		; 1E 24 1A
	rol $09.b,X		; 36 09
	ora $07F108.l,X		; 1F 08 F1 07
	brk $1F.b		; 00 1F
	ora $3F.b		; 05 3F
	cmp $FD.b,S		; C3 FD
	cop $3F.b		; 02 3F
	ora ($38.b,X)		; 01 38
	adc $193001.l,X		; 7F 01 30 19
	mvn $C0,$20		; 54 20 C0
	bcc  96.b		; 90 60
	sta $2050FF.l,X		; 9F FF 50 20
	bcs  32.b		; B0 20
	cpx #$F120.w		; E0 20 F1
	cpx #$F000.w		; E0 00 F0
	brk $F8.b		; 00 F8
	bra -17.b		; 80 EF
	sbc $78.b,X		; F5 78
	cpy #$0018.w		; C0 18 00
	bpl -75.b		; 10 B5
	adc $01.b		; 65 01
	ora ($03.b,X)		; 01 03
	inc $A4FC.w,X		; FE FC A4
	sed		; F8
	ora $BFFF3F.l		; 0F 3F FF BF
	eor $F0FB71.l		; 4F 71 FB F0
	sbc $FEEA.w,Y		; F9 EA FE
	dec $118A.w,X		; DE 8A 11
	lda ($FF.b)		; B2 FF
	tay		; A8
	sbc $A723.w,X		; FD 23 A7
	sta ($00.b),Y		; 91 00
	asl $CE.b		; 06 CE
	sbc $F0B202.l,X		; FF 02 B2 F0
	sta [$A0.b]		; 87 A0
	lda ($80.b,X)		; A1 80
	cpx #$F040.w		; E0 40 F0
	rts		; 60

	beq -96.b		; F0 A0
	tax		; AA
	cli		; 58
	sed		; F8
	bvs -21.b		; 70 EB
	rti		; 40

	mvp $09,$B0		; 44 B0 09
	sbc $19.b,S		; E3 19
	bit $13.b,X		; 34 13
	rol $FFE1.w,X		; 3E E1 FF
	phd		; 0B
	clc		; 18
	inc $0B02.w,X		; FE 02 0B
	tsb $0D.b		; 04 0D
	asl A		; 0A
	asl $3D.b		; 06 3D
	and $450607.l,X		; 3F 07 06 45
	cpy #$0E0D.w		; C0 0D 0E
	ora #$BB51.w		; 09 51 BB
	cpy $BB.b		; C4 BB
	adc $203838.l,X		; 7F 38 38 20
	pha		; 48
	cpy #$80E8.w		; C0 E8 80
	bpl -64.b		; 10 C0
	inc $C0A0.w,X		; FE A0 C0
	rts		; 60

	jsr ($FD22.w,X)		; FC 22 FD
	sec		; 38
	clv		; B8
	bne -64.b		; D0 C0
	bvs -32.b		; 70 E0
	ora $BBD9.w,Y		; 19 D9 BB
	rts		; 60

	sei		; 78
	cpy $B5.b		; C4 B5
	sec		; 38
	cmp [$04.b],Y		; D7 04
	asl $0F02.w		; 0E 02 0F
	bra  31.b		; 80 1F
	rol $3906.w		; 2E 06 39
	adc $74FF7F.l,X		; 7F 7F FF 74
	inc $7D2A.w,X		; FE 2A 7D
	iny		; C8
	asl $610A.w		; 0E 0A 61
	sta ($FD.b,X)		; 81 FD
	sed		; F8
	clc		; 18
	bpl 120.b		; 10 78
	bvs  -8.b		; 70 F8
	sed		; F8
	sta [$32.b]		; 87 32
	cld		; D8
	jsr ($BCA8.w,X)		; FC A8 BC
	beq  -8.b		; F0 F8
	bvs 120.b		; 70 78
	and $59C2.w		; 2D C2 59
	sei		; 78
	lda $61.b		; A5 61
	cmp #$001C.w		; C9 1C 00
	jmp $6580.w		; 4C 80 65
	eor ($FF.b,S),Y		; 53 FF
	sbc $1AF8FF.l,X		; FF FF F8 1A
	lda $F68FF0.l		; AF F0 8F F6
	ora ($BE.b,X)		; 01 BE
	and $702772.l		; 2F 72 27 70
	and [$78.b]		; 27 78
	and $74.b,S		; 23 74
	cmp $01.b,S		; C3 01
	bpl  58.b		; 10 3A
	ora #$0464.w		; 09 64 04
	ora $209E0C.l		; 0F 0C 9E 20
.ACCU 16
.INDEX 16
	rep #$FE		; C2 FE
	jmp $6DC503.l		; 5C 03 C5 6D
	cpx #$DFF0.w		; E0 F0 DF
	cld		; D8
	lda $C89CE8.l		; AF E8 9C C8
	trb $3CC8.w		; 1C C8 3C
	dey		; 88
	cli		; 58
	bpl -72.b		; 10 B8
	eor ($27.b,X)		; 41 27
	ldy #$40C0.w		; A0 C0 40
	cpx #$5E60.w		; E0 60 5E
	tas		; 1B
	lsr $E1E1.w,X		; 5E E1 E1
	ora ($01.b,X)		; 01 01
	rol $1F04.w		; 2E 04 1F
	brk $25.b		; 00 25
	asl $1813.w,X		; 1E 13 18
	lda [$1B.b]		; A7 1B
	ora $14.b,X		; 15 14
	pld		; 2B
	and $0501EF.l		; 2F EF 01 05
	inc A		; 1A
	and $4A.b		; 25 4A
	bpl  -2.b		; 10 FE
	sbc $3810EC.l,X		; FF EC 10 38
	sbc $74A6DA.l		; EF DA A6 74
	and ($E6.b),Y		; 31 E6
	and $BF58D0.l,X		; 3F D0 58 BF
	lda $87FF7F.l,X		; BF 7F FF 87
	tyx		; BB
	adc $3DBF73.l,X		; 7F 73 BF 3D
	jsr ($DEDF.w,X)		; FC DF DE
	cmp $EFEFDF.l,X		; DF DF EF EF
	and ($87.b,S),Y		; 33 87
	sbc $B73FBF.l,X		; FF BF 3F B7
	and [$FA.b],Y		; 37 FA
	sbc $5CCBB7.l		; EF B7 CB 5C
	clc		; 18
	dec $17F9.w		; CE F9 17
	sbc $F933E3.l,X		; FF E3 33 F9
	plx		; FA
	sed		; F8
	cmp $CCF8.w,X		; DD F8 CC
	sbc $7F78.w,Y		; F9 78 7F
	sbc [$FF.b],Y		; F7 FF
	inc $FD8A.w		; EE 8A FD
	sbc $329204.l		; EF 04 92 32
	dec A		; 3A
	bit $C880.w,X		; 3C 80 C8
	sbc #$30A0.w		; E9 A0 30
	beq  48.b		; F0 30
	eor $50D010.l		; 4F 10 D0 50
	bcs -120.b		; B0 88
	pla		; 68
	pld		; 2B
	sbc $6046C0.l		; EF C0 46 60
	inc $E0F0.w,X		; FE F0 E0
	inc $200E.w,X		; FE 0E 20
	sbc $F81EFF.l,X		; FF FF 1E F8
	inc A		; 1A
	sbc ($FB.b)		; F2 FB
	lda $9FF9.w		; AD F9 9F
	cpx #$CB1E.w		; E0 1E CB
	asl $DB.b,X		; 16 DB
	eor [$E0.b]		; 47 E0
	eor $85F4.w,X		; 5D F4 85
	sta [$2E.b]		; 87 2E
	sed		; F8
	eor $F2.b,S		; 43 F2
	jsr ($022F.w,X)		; FC 2F 02
	and $084B12.l,X		; 3F 12 4B 08
	sbc $BE5A0B.l,X		; FF 0B 5A BE
	sec		; 38
	jsr ($3CD8.w,X)		; FC D8 3C
	iny		; C8
	stz $0F4C.w		; 9C 4C 0F
	stx $DE.b		; 86 DE
	cld		; D8
	ply		; 7A
	tsb $66.b		; 04 66
	pea $FCCA.w		; F4 CA FC
	ldy #$1520.w		; A0 20 15
	ldy $40.b,X		; B4 40
	sty $D5.b		; 84 D5
	lda ($FF.b,X)		; A1 FF
	jsr ($7FDA.w,X)		; FC DA 7F
	sbc ($88.b),Y		; F1 88
	sbc ($18.b),Y		; F1 18
	plp		; 28
	stx $4D.b		; 86 4D
	sbc ($C3.b,X)		; E1 C3
	ldy #$FEE9.w		; A0 E9 FE
	and $FD83FC.l,X		; 3F FC 83 FD
	cop $3D.b		; 02 3D
	cop $17.b		; 02 17
	plx		; FA
	sbc ($D0.b),Y		; F1 D0
	stx $58F1.w		; 8E F1 58
	brk $9C.b		; 00 9C
	cpy #$F00B.w		; C0 0B F0
	ldy $D820.w		; AC 20 D8
	sbc ($FE.b),Y		; F1 FE
	clv		; B8
	inc $C03E.w,X		; FE 3E C0
	asl $F545.w,X		; 1E 45 F5
	ldy #$522E.w		; A0 2E 52
	eor [$FF.b],Y		; 57 FF
	adc $50415A.l		; 6F 5A 41 50
	asl A		; 0A
	sty $0EEB.w		; 8C EB 0E
	asl $43FF.w,X		; 1E FF 43
	ora $7D38.w,X		; 1D 38 7D
	jmp ($A3B7.w)		; 6C B7 A3
	and $30.b,S		; 23 30
	cpx #$9830.w		; E0 30 98
	ora $0AF858.l,X		; 1F 58 F8 0A
	sbc #$1007.w		; E9 07 10
	ora $7C.b,S		; 03 7C
	jmp $C944.w		; 4C 44 C9
	trb $B2.b		; 14 B2
	sbc $4FFE23.l,X		; FF 23 FE 4F
	adc $B110D2.l,X		; 7F D2 10 B1
	jsl $40C3E4.l		; 22 E4 C3 40
	sta $1B.b		; 85 1B
	jsr ($D1AB.w,X)		; FC AB D1
	cop $80.b		; 02 80
	ora $DB1FEB.l		; 0F EB 1F DB
	and $B91037.l,X		; 3F 37 10 B9
	sec		; 38
	cmp $83E0.w		; CD E0 83
	sbc ($F1.b),Y		; F1 F1
	sbc $2052D5.l,X		; FF D5 52 20
	ldy #$A060.w		; A0 60 A0
	sbc $F883.w,X		; FD 83 F8
	rol A		; 2A
	bit $C080.w,X		; 3C 80 C0
	inc $F1DC.w,X		; FE DC F1
	inc $2E28.w,X		; FE 28 2E
	eor $FFFF.w,Y		; 59 FF FF
	eor ($65.b)		; 52 65
	adc #$455B.w		; 69 5B 45
	adc ($4D.b,S),Y		; 73 4D
	adc $B745.w,Y		; 79 45 B7
	phb		; 8B
	lda [$9B.b]		; A7 9B
	ora $3D.b,X		; 15 3D
	and $7FB6C5.l		; 2F C5 B6 7F
	asl $32F7.w,X		; 1E F7 32
	inc $587C.w,X		; FE 7C 58
	adc ($3F.b),Y		; 71 3F
	bpl -47.b		; 10 D1
	ora $6CFAB7.l,X		; 1F B7 FA 6C
	cmp #$FF99.w		; C9 99 FF
	tsb $C170.w		; 0C 70 C1
	sta ($6D.b,X)		; 81 6D
	cmp ($E8.b)		; D2 E8
	cmp ($1A.b,S),Y		; D3 1A
	stx $BF.b		; 86 BF
	plx		; FA
	xce		; FB
	lda $FE05.w,X		; BD 05 FE
	plx		; FA
	adc ($83.b),Y		; 71 83
	tyx		; BB
	sbc $B9D872.l,X		; FF 72 D8 B9
	sbc $79E6.w,X		; FD E6 79
	inc $87E9.w,X		; FE E9 87
	bit $F67C.w,X		; 3C 7C F6
	clc		; 18
	inx		; E8
	pha		; 48
	clv		; B8
	cpy $FE34.w		; CC 34 FE
	sbc $BCC461.l,X		; FF 61 C4 BC
	ror $1A.b		; 66 1A
	sta ($6E.b)		; 92 6E
	asl $FA.b		; 06 FA
	beq  -8.b		; F0 F8
	inc $FCF8.w,X		; FE F8 FC
	sei		; 78
	eor ($FE.b)		; 52 FE
	sei		; 78
	jsr ($FEFC.w,X)		; FC FC FE
	inc $F073.w,X		; FE 73 F0
	tsb $3269.w		; 0C 69 32
	sbc $F8FFFF.l,X		; FF FF FF F8
	asl $7F36.w		; 0E 36 7F
	lsr $794C.w		; 4E 4C 79
	eor #$C6DE.w		; 49 DE C6
	tsb $70C4.w		; 0C C4 70
	cmp $932C.w		; CD 2C 93
	sbc $0CD3FF.l,X		; FF FF D3 0C
	brk $30.b		; 00 30
	and ($7C.b,S),Y		; 33 7C
	rol $41.b,X		; 36 41
	and $3B83.w,Y		; 39 83 3B
	ora $33.b,S		; 03 33
	ora $60.b,S		; 03 60
	tsb $FF00.w		; 0C 00 FF
	cpx #$B0D0.w		; E0 D0 B0
	beq  12.b		; F0 0C
	bit $5A16.w		; 2C 16 5A
	and $1FAD.w,Y		; 39 AD 1F
	adc ($6F.b,X)		; 61 6F
	eor $9F7D.w,X		; 5D 7D 9F
	lda $CD57.w,X		; BD 57 CD
	sbc $0FECFC.l		; EF FC EC 0F
	sbc ($70.b,X)		; E1 70
	sbc ($BE.b,X)		; E1 BE
	sbc $3F3C7E.l,X		; FF 7E 3C 3F
	cmp $270307.l,X		; DF 07 03 27
	brk $0F.b		; 00 0F
	ora [$1F.b]		; 07 1F
	ora $FEF8FE.l		; 0F FE F8 FE
	sbc $FF.b,X		; F5 FF
	adc $4FDA.w,X		; 7D DA 4F
	sbc ($3D.b,S),Y		; F3 3D
	cpx $FD07.w		; EC 07 FD
.ACCU 16
	rep #$E0		; C2 E0
	cmp [$ED.b],Y		; D7 ED
	cmp ($ED.b)		; D2 ED
	cld		; D8
	cmp [$FF.b]		; C7 FF
	sbc $84C28B.l,X		; FF 8B C2 84
	cpx #$FBC3.w		; E0 C3 FB
	sbc ($07.b,X)		; E1 07
	cmp [$0F.b],Y		; D7 0F
	cmp $02C707.l		; CF 07 C7 02
	rep #$04		; C2 04
	xce		; FB
	sbc $800380.l,X		; FF 80 03 80
	and $E1E9.w,X		; 3D E9 E1
	cld		; D8
	jsr $7000.w		; 20 00 70
	cld		; D8
	bit $D8.b		; 24 D8
	tsb $E8F0.w		; 0C F0 E8
	adc $90A0F8.l,X		; 7F F8 A0 90
	brk $E0.b		; 00 E0
	rts		; 60

	rti		; 40

	bvs 116.b		; 70 74
	mvp $70,$70		; 44 70 70
	ldy #$7A20.w		; A0 20 7A
	cmp #$7110.w		; C9 10 71
	sta ($B5.b,X)		; 81 B5
	sbc ($C0.b),Y		; F1 C0
	ora $02.b,S		; 03 02
	inc $FFFC.w,X		; FE FC FF
	asl $E9.b,X		; 16 E9
	and ($FC.b)		; 32 FC
	ora $D8.b		; 05 D8
	dec $85FE.w,X		; DE FE 85
	ora [$30.b]		; 07 30
	cld		; D8
	sec		; 38
	bcc  -1.b		; 90 FF
	cmp [$2C.b],Y		; D7 2C
	beq  55.b		; F0 37
	cld		; D8
	eor ($9E.b),Y		; 51 9E
	lda $6C.b,S		; A3 6C
	.db $62, $24, $E2		; 62 24 E2
	bit $4C.b		; 24 4C
	sbc ($46.b)		; F2 46
	pea $F807.w		; F4 07 F8
	cpy #$C0E7.w		; C0 E7 C0
	sbc $FE.b,S		; E3 FE
	dex		; CA
	tsb $02.b		; 04 02
	php		; 08
	asl $5F.b		; 06 5F
	cmp $01.b,S		; C3 01
	ora $0C80.w		; 0D 80 0C
	php		; 08
	tsb $C6.b		; 04 C6
	phx		; DA
	inc $B1.b		; E6 B1
	sbc $00FE.w,X		; FD FE 00
	cmp ($FF.b)		; D2 FF
	sbc $E9DC.w,Y		; F9 DC E9
	inc $10FC.w,X		; FE FC 10
	bne -80.b		; D0 B0
	bvc  72.b		; 50 48
	plp		; 28
	clc		; 18
	pla		; 68
	adc $B4C4A1.l,X		; 7F A1 C4 B4
	ldy $4C94.w		; AC 94 4C
	stz $98.b,X		; 74 98
	tay		; A8
	rol A		; 2A
	cpx $78FE.w		; EC FE 78
	sbc $F1BEBF.l,X		; FF BF BE F1
	sec		; 38
	jmp ($F870.w,X)		; 7C 70 F8
	lda $9B.b,S		; A3 9B
	lda $9595.w		; AD 95 95
	sta $49.b		; 85 49
	eor #$3131.w		; 49 31 31
	beq -16.b		; F0 F0
	ldx $FFEA.w,Y		; BE EA FF
	jmp ($78FF.w,X)		; 7C FF 78
	sbc $30FE.w,X		; FD FE 30
	adc $AA00.w,Y		; 79 00 AA
	cmp ($31.b,S),Y		; D3 31
	asl $EC.b		; 06 EC
	nop		; EA
	bcc  13.b		; 90 0D
	tya		; 98
	cmp ($FF.b,X)		; C1 FF
	sed		; F8
	asl $FB06.w		; 0E 06 FB
	inc $4F02.w,X		; FE 02 4F
	nop		; EA
	plx		; FA
	ora $FB.b,S		; 03 FB
	asl A		; 0A
	sbc ($FE.b)		; F2 FE
	rti		; 40

	pea $F33E.w		; F4 3E F3
	rts		; 60

	sbc ($32.b,S),Y		; F3 32
	adc $6ACAE9.l,X		; 7F E9 CA 6A
	sta ($EC.b)		; 92 EC
	tsb $3030.w		; 0C 30 30
	cpy #$DD4C.w		; C0 4C DD
	cpx $FCF0.w		; EC F0 FC
	sbc $C0DF.w,X		; FD DF C0
	beq  60.b		; F0 3C
	dec $0601.w,X		; DE 01 06
	ora $0C.b,S		; 03 0C
	ora $08.b,S		; 03 08
	asl $0C18.w		; 0E 18 0C
	ora $F1B0.w,Y		; 19 B0 F1
	eor ($E8.b,X)		; 41 E8
	asl $02.b		; 06 02
	rti		; 40

	lda ($F3.b,X)		; A1 F3
	inc $9806.w,X		; FE 06 98
	and $D3.b		; 25 D3
	and $D32C0C.l,X		; 3F 0C 2C D3
	jmp ($5827.w)		; 6C 27 58
	and [$D8.b]		; 27 D8
	inc $E363.w,X		; FE 63 E3
	ora $D77F68.l,X		; 1F 68 7F D7
	bpl -64.b		; 10 C0
	cop $80.b		; 02 80
	inc $0416.w,X		; FE 16 04
	trb $FFFF.w		; 1C FF FF
	eor $D1.b,S		; 43 D1
	sbc $5DA700.l		; EF 00 A7 5D
	tsx		; BA
	ror $7C.b,X		; 76 7C
	ldy $C450.w,X		; BC 50 C4
	clv		; B8
	sty $0860.w		; 8C 60 08
	sbc $1ED60B.l,X		; FF 0B D6 1E
	tax		; AA
	dec A		; 3A
	rol $0C3F.w,X		; 3E 3F 0C
	rol $4C40.w,X		; 3E 40 4C
	sec		; 38
	cmp [$D1.b],Y		; D7 D1
	lda $E09DAA.l,X		; BF AA 9D E0
	asl $C4.b		; 06 C4
	asl $0307.w		; 0E 07 03
	lda [$F2.b],Y		; B7 F2
	and $8B0AE0.l,X		; 3F E0 0A 8B
	phx		; DA
	sbc ($F8.b),Y		; F1 F8
	asl A		; 0A
	ora $61D97F.l		; 0F 7F D9 61
	inc $EFFF.w,X		; FE FF EF
	inc $6FFE.w,X		; FE FE 6F
	sbc $1F7F5F.l,X		; FF 5F 7F 1F
	rol $231F.w,X		; 3E 1F 23
	jmp.w [$F1C6]		; DC C6 F1
	inc $FEA9.w,X		; FE A9 FE
	adc $785F00.l		; 6F 00 5F 78
	sep #$87		; E2 87
	ora ($70.b,X)		; 01 70
	rti		; 40

	jsr ($3530.w,X)		; FC 30 35
	adc $1FFEFE.l,X		; 7F FE FE 1F
	nop		; EA
	cld		; D8
	sbc $FD7F.w,X		; FD 7F FD
	bra  72.b		; 80 48
	bmi -124.b		; 30 84
	sbc ($7E.b,X)		; E1 7E
	pld		; 2B
	brk $68.b		; 00 68
	ora $FD.b,X		; 15 FD
	inc $D578.w,X		; FE 78 D5
	cpy #$DCCB.w		; C0 CB DC
	cpy #$0930.w		; C0 30 09
	cop $F2.b		; 02 F2
	inc $FEFF.w,X		; FE FF FE
	rts		; 60

	asl $05.b		; 06 05
	tsb $07.b		; 04 07
	php		; 08
	phd		; 0B
	ora $0A0A.w		; 0D 0A 0A
	tsb $1513.w		; 0C 13 15
	ora $1C57.w,X		; 1D 57 1C
	ora ($0E.b),Y		; 11 0E
	ora ($03.b)		; 12 03
	bit $B9F1.w		; 2C F1 B9
	sbc #$0EFE.w		; E9 FE 0E
	ora $FEFFFE.l,X		; 1F FE FF FE
	tsb $2206.w		; 0C 06 22
	ldy $4CC3.w		; AC C3 4C
	lsr $58.b		; 46 58
	stx $98.b		; 86 98
	sta $9C.b,S		; 83 9C
	ora $3C.b,S		; 03 3C
	sbc $380705.l,X		; FF 05 07 38
	ora $E7C070.l		; 0F 70 C0 E7
	bra -57.b		; 80 C7
	bra -49.b		; 80 CF
	cpy #$FE81.w		; C0 81 FE
	sta $17.b,S		; 83 17
	plx		; FA
	stp		; DB
	tsb $43.b		; 04 43
	tyx		; BB
	cmp #$00D8.w		; C9 D8 00
	dec $81B1.w,X		; DE B1 81
	.db $82, $FE, $FE		; 82 FE FE
	xba		; EB
	php		; 08
	stx $FEA3.w		; 8E A3 FE
	sed		; F8
	ora #$A848.w		; 09 48 A8
	bmi -48.b		; 30 D0
	cpy #$3FFF.w		; C0 FF 3F
	jsr $1060.w		; 20 60 10
	jsr $3018.w		; 20 18 30
	php		; 08
	bcc  12.b		; 90 0C
	rti		; 40

	bit $7870.w,X		; 3C 70 78
	jsr $EAB0.w		; 20 B0 EA
	txa		; 8A
	dey		; 88
	ror $7CCA.w,X		; 7E CA 7C
	cmp #$C800.w		; C9 00 C8
	nop		; EA
	jmp.w [$ED9C]		; DC 9C ED
	ply		; 7A
	cmp $FB.b,X		; D5 FB
	ror $C8.b,X		; 76 C8
	ora #$FCFE.w		; 09 FE FC
	sta $7F.b,S		; 83 7F
	ora [$16.b]		; 07 16
	sbc ($56.b,X)		; E1 56
	tax		; AA
	inc $FFFC.w,X		; FE FC FF
	sed		; F8
	ora $8AF18F.l		; 0F 8F F1 8A
	sbc ($C2.b)		; F2 C2
	plx		; FA
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	sbc ($FE.b)		; F2 FE
	inc $FA.b,X		; F6 FA
	sbc $45.b,X		; F5 45
	inc $2AFA.w,X		; FE FA 2A
	pea $F8FE.w		; F4 FE F8
	ora #$04.b		; 09 04
	tsb $0603.w		; 0C 03 06
	rol A		; 2A
	iny		; C8
	ora #$A3.b		; 09 A3
	sbc $A31F.w,X		; FD 1F A3
	sbc ($A0.b)		; F2 A0
	beq   9.b		; F0 09
	ora ($86.b,X)		; 01 86
	rol $7F40.w,X		; 3E 40 7F
	adc ($7F.b),Y		; 71 7F
	lda $FFAAAF.l		; AF AF AA FF
	and $AAABFF.l		; 2F FF AB AA
	eor $00C14A.l		; 4F 4A C1 00
	bra  64.b		; 80 40
	bra -15.b		; 80 F1
	bvc  14.b		; 50 0E
	adc $F87D.w,Y		; 79 7D F8
	inc $FFB5.w,X		; FE B5 FF
	lsr $2272.w,X		; 5E 72 22
	lda $FA.b,S		; A3 FA
	rol $B42E.w		; 2E 2E B4
	sbc $EAA4FF.l,X		; FF FF A4 EA
	ldx #$D5.b		; A2 D5
	sta ($D2.b),Y		; 91 D2
	sta ($8C.b)		; 92 8C
	asl $3E1C.w,X		; 1E 1C 3E
	tsb $FE.b		; 04 FE
	bne  -2.b		; D0 FE
	cli		; 58
	sbc $5CFC11.l,X		; FF 11 FC 5C
	inc $FF6E.w,X		; FE 6E FF
	jmp ($3EFE.w)		; 6C FE 3E
	ora $D4FE3F.l,X		; 1F 3F FE D4
	asl $F8FA.w,X		; 1E FA F8
	inc $F3EA.w,X		; FE EA F3
	inc $0AF8.w,X		; FE F8 0A
	adc $FDD9D9.l,X		; 7F D9 D9 FD
	sed		; F8
	jmp ($DB7F.w,X)		; 7C 7F DB
	inc $F0F9.w,X		; FE F9 F0
	xce		; FB
	sbc ($7F.b),Y		; F1 7F
	sbc ($64.b,S),Y		; F3 64
	sbc ($FD.b),Y		; F1 FD
	tsb $ED.b		; 04 ED
	beq  -6.b		; F0 FA
	lda ($DB.b),Y		; B1 DB
	tsb $F3.b		; 04 F3
	beq -32.b		; F0 E0
	ora ($E9.b,S),Y		; 13 E9
	beq  19.b		; F0 13
	sbc #$78.b		; E9 78
	sed		; F8
	lsr $FA.b		; 46 FA
	sbc ($E6.b)		; F2 E6
	sbc $78.b,X		; F5 78
	inc $E0F8.w,X		; FE F8 E0
	asl $26.b		; 06 26
	bmi  -1.b		; 30 FF
	adc $4C1864.l,X		; 7F 64 18 4C
	bit $3056.w,X		; 3C 56 30
	jmp $115828.l		; 5C 28 58 11
	and #$00.b		; 29 00
	bpl  24.b		; 10 18
	asl $18.b		; 06 18
	sta $F11FF1.l		; 8F F1 1F F1
	plp		; 28
	brk $20.b		; 00 20
	inc $3810.w,X		; FE 10 38
	asl $78.b		; 06 78
	sbc $700E5F.l,X		; FF 5F 0E 70
	tsb $04F0.w		; 0C F0 04
	sed		; F8
	rti		; 40

	eor $078082.l,X		; 5F 82 80 07
	brk $C5.b		; 00 C5
.ACCU 16
	rep #$68		; C2 68
	cmp ($70.b),Y		; D1 70
	sbc $299CFE.l,X		; FF FE 9C 29
	jsr $F560.w		; 20 60 F5
.ACCU 8
.INDEX 8
	sep #$3F		; E2 3F
	sbc $B502E5.l,X		; FF E5 02 B5
	.db $42, $FD		; 42 FD
	xce		; FB
	sty $63.b,X		; 94 63
	lsr $B899.w,X		; 5E 99 B8
	and $6A02.w,Y		; 39 02 6A
	ora ($49.b),Y		; 11 49
	and ($50.b),Y		; 31 50
	stz $B901.w		; 9C 01 B9
	eor [$FE.b]		; 47 FE
	sbc $6C7C47.l,X		; FF 47 7C 6C
	ldy #$68.b		; A0 68
	jsr $30E0.w		; 20 E0 30
	bcc  88.b		; 90 58
	plp		; 28
	pha		; 48
	sec		; 38
	plp		; 28
	clc		; 18
	bvs  29.b		; 70 1D
	pla		; 68
	beq -128.b		; F0 80
	and ($C2.b)		; 32 C2
	ldy #$60.b		; A0 60
	sbc [$73.b],Y		; F7 73
	sed		; F8
	bra  56.b		; 80 38
	sbc $80.b		; E5 80
	bra   4.b		; 80 04
	ora $FE.b		; 05 FE
	asl $FE.b		; 06 FE
	eor ($85.b,X)		; 41 85
	tsb $07.b		; 04 07
	inc $EAE0.w,X		; FE E0 EA
	inc $0BF8.w,X		; FE F8 0B
	pla		; 68
	inc $FE.b,X		; F6 FE
	ldy $4FC8.w		; AC C8 4F
	inc $F8FF.w,X		; FE FF F8
	ora $FED1C3.l		; 0F C3 D1 FE
	ldy $FBAA.w		; AC AA FB
	inc $F060.w,X		; FE 60 F0
	ora $FAE42A.l		; 0F 2A E4 FA
	cpx $CBE0.w		; EC E0 CB
	bmi -52.b		; 30 CC
	cmp ($C3.b,S),Y		; D3 C3
	plx		; FA
	sbc $FE4A5F.l		; EF 5F 4A FE
	lsr $AD4A.w,X		; 5E 4A AD
	bit #$FE.b		; 89 FE
	lda [$50.b],Y		; B7 50
	txa		; 8A
	sta ($FE.b),Y		; 91 FE
	lda $6C.b,X		; B5 6C
	sbc ($FE.b),Y		; F1 FE
	ror $F1.b,X		; 76 F1
	sbc $FE6EFE.l,X		; FF FE 6E FE
	ldy $94.b,X		; B4 94
	pla		; 68
	pha		; 48
	inx		; E8
	pha		; 48
	pea $D444.w		; F4 44 D4
	mvp $61,$FF		; 44 FF 61
	ldy $BA24.w,X		; BC 24 BA
	jsl $6822FA.l		; 22 FA 22 68
	jsr ($F8B0.w,X)		; FC B0 F8
	inc $FCB8.w,X		; FE B8 FC
	sei		; 78
	bvc  -2.b		; 50 FE
	cld		; D8
	jsr ($FEDC.w,X)		; FC DC FE
	inc $F268.w,X		; FE 68 F2
	and ($D1.b,X)		; 21 D1
	ply		; 7A
	sbc #$FE.b		; E9 FE
	rol $397F.w,X		; 3E 7F 39
	adc $FECE44.l,X		; 7F 44 CE FE
	rol $2F00.w,X		; 3E 00 2F
	tsb $0039.w		; 0C 39 00
	ora [$7F.b]		; 07 7F
	xce		; FB
	ora [$51.b],Y		; 17 51
	inc $FE7C.w,X		; FE 7C FE
	adc $BCFE8E.l,X		; 7F 8E FE BC
	inc $FE4C.w,X		; FE 4C FE
	bvs   0.b		; 70 00
	xce		; FB
	inc $7D7C.w,X		; FE 7C 7D
	cmp $FE.b,X		; D5 FE
	ldy $B9BD.w,X		; BC BD B9
	bvs -32.b		; 70 E0
	cpy #$C0.b		; C0 C0
	xba		; EB
	sbc ($FF.b),Y		; F1 FF
	sed		; F8
	asl A		; 0A
	ora #$C4.b		; 09 C4
	sbc $FE9FFF.l,X		; FF FF 9F FE
	tsa		; 3B
	and $0E.b,X		; 35 0E
	and $FE210C.l		; 2F 0C 21 FE
	asl $1C23.w,X		; 1E 23 1C
	jsl $9F2218.l		; 22 18 22 9F
	sbc ($0E.b)		; F2 0E
	and $1E0E10.l,X		; 3F 10 0E 1E
	brk $FE.b		; 00 FE
	trb $EEFE.w		; 1C FE EE
	ora $788E0F.l		; 0F 0F 8E 78
	stz $18.b,X		; 74 18
	mvp $10,$FE		; 44 FE 10
	mvp $C4,$70		; 44 70 C4
	adc $38FE05.l,X		; 7F 05 FE 38
	sty $FE70.w		; 8C 70 FE
	php		; 08
	bvs  56.b		; 70 38
	rts		; 60

	lda $FCFE.w,Y		; B9 FE FC
	sta ($85.b),Y		; 91 85
	ldy $F2AC.w		; AC AC F2
	ror $FEE2.w,X		; 7E E2 FE
	tsb $AAFE.w		; 0C FE AA
	pea $5574.w		; F4 74 55
	ror $FEE4.w,X		; 7E E4 FE
	eor $FE6FFF.l		; 4F FF 6F FE
	sed		; F8
	asl A		; 0A
	sbc $F0A0B9.l		; EF B9 A0 F0
	ora $0EF8FF.l		; 0F FF F8 0E
	eor $8F.b,X		; 55 8F
	ldy #$F0.b		; A0 F0
	ora $8AE3A2.l		; 0F A2 E3 8A
	iny		; C8
	asl A		; 0A
	trb $F0B3.w		; 1C B3 F0
	sed		; F8
	asl A		; 0A
	lda [$91.b],Y		; B7 91
	sta [$FF.b],Y		; 97 FF
	jsr $7FFE.w		; 20 FE 7F
	adc $062404.l,X		; 7F 04 24 06
	rol $00.b		; 26 00
	jsl $F2ACFE.l		; 22 FE AC F2
	jmp ($FEE1.w,X)		; 7C E1 FE
	brk $7F.b		; 00 7F
	tas		; 1B
	brk $19.b		; 00 19
	cpx $FE11.w		; EC 11 FE
	jsr ($DD2C.w,X)		; FC 2C DD
	ora $F0.b,X		; 15 F0
	bmi -72.b		; 30 B8
	rep #$40		; C2 40
	rts		; 60

	sta $20EB.w		; 8D EB 20
	bne -28.b		; D0 E4
	cmp $C1.b,X		; D5 C1
	jmp.w [$655C]		; DC 5C 65
	inc $EA0A.w,X		; FE 0A EA
	and $F8FE1E.l,X		; 3F 1E FE F8
	ora #$A0.b		; 09 A0
	sbc ($FF.b,S),Y		; F3 FF
	pea $D5FE.w		; F4 FE D5
	sbc $FEEA26.l,X		; FF 26 EA FE
	sed		; F8
	phd		; 0B
	rol $EB.b		; 26 EB
	inc $0AF8.w,X		; FE F8 0A
	clc		; 18
	jsl $3C261C.l		; 22 1C 26 3C
	ror $38.b		; 66 38
	stz $1F.b		; 64 1F
	ror A		; 6A
	bmi 100.b		; 30 64
	bpl  68.b		; 10 44
	clc		; 18
	jmp $1CFE.w		; 4C FE 1C
	txs		; 9A
	lda $FCFE.w,Y		; B9 FE FC
	sec		; 38
	and $180D.w,X		; 3D 0D 18
	sbc #$16.b		; E9 16
	sbc #$8C.b		; E9 8C
	jsr $FE88.w		; 20 88 FE
	bmi -104.b		; 30 98
	eor $C9.b,S		; 43 C9
	inc $9040.w,X		; FE 40 90
	inc $CC70.w,X		; FE 70 CC
	sbc ($FE.b),Y		; F1 FE
	cmp $6B4E.w		; CD 4E 6B
	lda $0A.b		; A5 0A
	ora #$07.b		; 09 07
	tsb $FFCA.w		; 0C CA FF
	sbc $CA0A07.l,X		; FF 07 0A CA
	ldy $FEED.w,X		; BC ED FE
	ora $EFDF1E.l,X		; 1F 1E DF EF
	sbc $FFE7.w,Y		; F9 E7 FF
	ora $60904D.l,X		; 1F 4D 90 60
	bra 112.b		; 80 70
	rti		; 40

	cmp $FE.b		; C5 FE
	plx		; FA
	ldx $FE21.w		; AE 21 FE
.ACCU 8
.INDEX 8
	sep #$7E		; E2 7E
	cpx $FE.b		; E4 FE
	ora $FEFA60.l,X		; 1F 60 FA FE
	dec $FEF6.w		; CE F6 FE
	inc $7594.w,X		; FE 94 75
	rti		; 40

	sec		; 38
	tsx		; BA
	sbc ($FE.b)		; F2 FE
	jsr ($F8FE.w,X)		; FC FE F8
	dec $D2.b		; C6 D2
	rti		; 40

	tsx		; BA
	inc $9F1C.w,X		; FE 1C 9F
	sta [$32.b]		; 87 32
	ora $110C33.l,X		; 1F 33 0C 11
	asl $FE.b		; 06 FE
	asl $FE19.w		; 0E 19 FE
	rol $D6.b,X		; 36 D6
	ora $5965.w		; 0D 65 59
	asl $FDFE.w		; 0E FE FD
	asl $FE.b		; 06 FE
	cpy #$C1.b		; C0 C1
	sbc ($42.b,X)		; E1 42
	lda #$19.b		; A9 19
	sbc $10.b,X		; F5 10
	cpx #$FE.b		; E0 FE
	inc $23.b,X		; F6 23
	stp		; DB
	inc $09F8.w,X		; FE F8 09
	adc $1C7F3E.l,X		; 7F 3E 7F 1C
	ror $7E3C.w,X		; 7E 3C 7E
	trb $7E.b		; 14 7E
	tsb $2C7E.w		; 0C 7E 2C
	sed		; F8
	bit $1A7C.w,X		; 3C 7C 1A
	and $97.b,S		; 23 97
	rol $594B.w,X		; 3E 4B 59
	trb $BB.b		; 14 BB
	bit $C0F8.w		; 2C F8 C0
	ora $7890FE.l		; 0F FE 90 78
	jsr ($FC70.w,X)		; FC 70 FC
	rts		; 60

	sed		; F8
	eor $D5.b		; 45 D5
	inc $FE70.w,X		; FE 70 FE
	jsr ($2377.w,X)		; FC 77 23
	jsr ($FE17.w,X)		; FC 17 FE
	sbc $160DF8.l,X		; FF F8 0D 16
	bcs  16.b		; B0 10
	sbc $4C18BB.l,X		; FF BB 18 4C
	jsr $6048.w		; 20 48 60
	iny		; C8
	bvs -40.b		; 70 D8
	bmi -104.b		; 30 98
	jsr $F1E2.w		; 20 E2 F1
	cpx #$B0.b		; E0 B0
	bne  80.b		; D0 50
	cpy $FEF2.w		; CC F2 FE
	jsr $F5E2.w		; 20 E2 F5
	rti		; 40

	jsr ($FEB0.w,X)		; FC B0 FE
	sed		; F8
	ora #$41.b		; 09 41
	eor ($C0.b)		; 52 C0
	sbc ($EE.b)		; F2 EE
	inc $09F8.w,X		; FE F8 09
	dec $CC3A.w,X		; DE 3A CC
	inc $09F8.w,X		; FE F8 09
	eor $5C83.w,X		; 5D 83 5C
	tyx		; BB
	inc $0AF8.w,X		; FE F8 0A
	bcc  96.b		; 90 60
	dec $F1.b		; C6 F1
	inc $A0FF.w,X		; FE FF A0
	wai		; CB
	inc $4613.w,X		; FE 13 46
	jmp.w [$FFFE]		; DC FE FF
	pha		; 48
	bmi 104.b		; 30 68
	bpl  64.b		; 10 40
	sec		; 38
	rts		; 60

	clc		; 18
	jsr ($F0E9.w,X)		; FC E9 F0
	inc $F0C6.w,X		; FE C6 F0
	ora #$FE.b		; 09 FE
	jsr ($190C.w,X)		; FC 0C 19
	inc $0904.w,X		; FE 04 09
	asl $2A.b		; 06 2A
	xba		; EB
	phd		; 0B
	inc $CAFF.w,X		; FE FF CA
	sbc ($DF.b,S),Y		; F3 DF
	cmp $FE.b,S		; C3 FE
	cpy $F2.b		; C4 F2
.ACCU 16
.INDEX 16
	rep #$F1		; C2 F1
	bmi -113.b		; 30 8F
	lsr A		; 4A
	cpx #$C020.w		; E0 20 C0
	jsr $FE80.w		; 20 80 FE
	dex		; CA
	pea $ECA4.w		; F4 A4 EC
	eor $55.b,X		; 55 55
	inc $DE7C.w,X		; FE 7C DE
	sbc ($C0.b)		; F2 C0
	inx		; E8
	phd		; 0B
	eor $F2.b,X		; 55 F2
	inc $0AF8.w,X		; FE F8 0A
	iny		; C8
	inc $C0.b,X		; F6 C0
	sbc [$FE.b],Y		; F7 FE
	sed		; F8
	ora $291BFF.l		; 0F FF 1B 29
	jsr ($0502.w,X)		; FC 02 05
	tsb $0C.b		; 04 0C
	phd		; 0B
	asl $3317.w,X		; 1E 17 33
	bit $B777.w		; 2C 77 B7
	tsb $5E.b		; 04 5E
	bra -17.b		; 80 EF
	ora $3F1F1F.l		; 0F 1F 1F 3F
	dey		; 88
	sta $842B.w,Y		; 99 2B 84
	bpl   6.b		; 10 06
	rts		; 60

	sta [$E0.b]		; 87 E0
	inc $40.b,X		; F6 40
	cpy #$C3FD.w		; C0 FD C3
	sta $41.b		; 85 41
	txy		; 9B
	bra  -6.b		; 80 FA
	rts		; 60

	cpy #$B4E0.w		; C0 E0 B4
	cmp ($F0.b,X)		; C1 F0
	sbc $3090BF.l,X		; FF BF 90 30
	tya		; 98
	bvs -56.b		; 70 C8
	rts		; 60

	cpx $D4.b		; E4 D4
	ldy $DEE6.w,X		; BC E6 DE
	sbc ($AF.b,S),Y		; F3 AF
	jsr ($FDBB.w,X)		; FC BB FD
	rol A		; 2A
	cpy $30F2.w		; CC F2 30
	.db $62, $E9, $68		; 62 E9 68
	cpx $FE3C.w		; EC 3C FE
	lsr $21D4.w,X		; 5E D4 21
	adc ($F0.b)		; 72 F0
	ora $D8D5.w		; 0D D5 D8
	ora $0FE9.w		; 0D E9 0F
	sbc $C2F24F.l		; EF 4F F2 C2
	lda ($07.b)		; B2 07
	tsb $0A.b		; 04 0A
	ora $EA0F0E.l		; 0F 0E 0F EA
	.db $82, $FF, $AC		; 82 FF AC
	sbc ($7C.b)		; F2 7C
.INDEX 8
	sep #$1C		; E2 1C
	cpx $00.b		; E4 00
	ora $AEF1AE.l		; 0F AE F1 AE
	beq -88.b		; F0 A8
	lsr $A9.b		; 46 A9
	adc $6020A0.l,X		; 7F A0 20 60
	rts		; 60

	cpy #$AC.b		; C0 AC
	sbc ($18.b),Y		; F1 18
	cpx #$46.b		; E0 46
	ldy $E080.w		; AC 80 E0
	cpy #$96.b		; C0 96
	rti		; 40

	rti		; 40

	adc $4A46F4.l,X		; 7F F4 46 4A
	adc ($49.b,S),Y		; 73 49
	adc $43.b,X		; 75 43
	tda		; 7B
	adc [$C2.b],Y		; 77 C2
	eor $7C20B9.l,X		; 5F B9 20 7C
	tyx		; BB
	ldx #$3C.b		; A2 3C
	ror $313E.w,X		; 7E 3E 31
	cmp $7F0F.w,Y		; D9 0F 7F
	ror $86B9.w		; 6E B9 86
	sed		; F8
	asl A		; 0A
	eor $EA.b,S		; 43 EA
	sbc $0B40CC.l,X		; FF CC 40 0B
	jsr ($BCA1.w,X)		; FC A1 BC
	rti		; 40

	ora $E8C1.w		; 0D C1 E8
	trb $00.b		; 14 00
	asl $041B.w		; 0E 1B 04
	ora ($0C.b),Y		; 11 0C
	ora ($1C.b),Y		; 11 1C
	and ($87.b),Y		; 31 87
	inc A		; 1A
	inc A		; 1A
	and $2F.b,S		; 23 2F
	eor #$FB33.w		; 49 33 FB
	ror $24F1.w		; 6E F1 24
	cpx $CD14.w		; EC 14 CD
	ora $DB111A.l		; 0F 1A 11 DB
	rts		; 60

	inc $7020.w,X		; FE 20 70
	rti		; 40

	beq -86.b		; F0 AA
	asl $66FE.w		; 0E FE 66
	sbc ($A3.b),Y		; F1 A3
	lda ($FF.b,X)		; A1 FF
	cmp ($17.b,S),Y		; D3 17
	sed		; F8
	ora $01F19D.l		; 0F 9D F1 01
	tsb $22.b		; 04 22
	tsx		; BA
	pld		; 2B
	inc $0BF8.w		; EE F8 0B
	tas		; 1B
	eor ($4A.b),Y		; 51 4A
	sbc ($60.b)		; F2 60
	pla		; 68
	ora $99B43C.l,X		; 1F 3C B4 99
	dey		; 88
	brk $58.b		; 00 58
	bcc  -8.b		; 90 F8
	sbc $60F24A.l		; EF 4A F2 60
	bpl  16.b		; 10 10
	php		; 08
	sbc $1314.w,X		; FD 14 13
	cmp #$00AF.w		; C9 AF 00
	lsr A		; 4A
	pea $0048.w		; F4 48 00
	sty $00.b		; 84 00
	cmp [$0F.b],Y		; D7 0F
	ldx $18.b		; A6 18
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	cmp ($A1.b),Y		; D1 A1
	lsr A		; 4A
	sbc ($30.b,S),Y		; F3 30
	bmi 120.b		; 30 78
	sei		; 78
	jmp ($5555.w,X)		; 7C 55 55
	clc		; 18
	bit $0C3C.w,X		; 3C 3C 0C
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	tax		; AA
	ora ($00.b,X)		; 01 00
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	sbc $1001E1.l,X		; FF E1 01 10
	cop $10.b		; 02 10
	ora $10.b,S		; 03 10
	tsb $10.b		; 04 10
	ora $FA.b		; 05 FA
	bvc   6.b		; 50 06
	sbc $071047.l,X		; FF 47 10 07
	bpl   8.b		; 10 08
	bpl   9.b		; 10 09
	bpl  10.b		; 10 0A
	bpl  11.b		; 10 0B
	bpl  12.b		; 10 0C
	beq  -8.b		; F0 F8
	beq -24.b		; F0 E8
	ora $A510.w		; 0D 10 A5
	bpl -90.b		; 10 A6
	dec $0150.w,X		; DE 50 01
	bvc  -1.b		; 50 FF
	sbc ($A7.b,S),Y		; F3 A7
	trb $1CA8.w		; 1C A8 1C
	lda #$AA1C.w		; A9 1C AA
	trb $08AB.w		; 1C AB 08
	ldy $ADFE.w		; AC FE AD
	eor [$78.b]		; 47 78
	php		; 08
	ldx $AF08.w		; AE 08 AF
	sed		; F8
	cpy #$100E.w		; C0 0E 10
	ora $3FF810.l		; 0F 10 F8 3F
	sbc $121011.l,X		; FF 11 10 12
	bpl  19.b		; 10 13
	bpl  20.b		; 10 14
	bpl  21.b		; 10 15
	bpl  22.b		; 10 16
	inc $C07F.w,X		; FE 7F C0
	ora [$10.b],Y		; 17 10
	clc		; 18
	bpl  25.b		; 10 19
	bpl  26.b		; 10 1A
	bpl  27.b		; 10 1B
	bpl -80.b		; 10 B0
	bpl -79.b		; 10 B1
	cpy #$DEFF.w		; C0 FF DE
	cpy #$1CB2.w		; C0 B2 1C
	lda ($1C.b,S),Y		; B3 1C
	ldy $1C.b,X		; B4 1C
	lda $1C.b,X		; B5 1C
	phd		; 0B
	sbc $B708B6.l,X		; FF B6 08 B7
	inc $0CF8.w,X		; FE F8 0C
	cpy #$101C.w		; C0 1C 10
	ora $1E10.w,X		; 1D 10 1E
	bpl  31.b		; 10 1F
	sbc $2010E1.l,X		; FF E1 10 20
	bpl  33.b		; 10 21
	bpl  34.b		; 10 22
	bpl  35.b		; 10 23
	bpl  36.b		; 10 24
	inc $2350.w,X		; FE 50 23
	ora $22501E.l,X		; 1F 1E 50 22
	bvc  33.b		; 50 21
	bvc  37.b		; 50 25
	nop		; EA
	bvc  30.b		; 50 1E
	bvc -72.b		; 50 B8
	ldy $DE70.w,X		; BC 70 DE
	bra  -8.b		; 80 F8
	asl A		; 0A
	lda $BA08.w,Y		; B9 08 BA
	inc $0CF8.w,X		; FE F8 0C
	cpy #$1026.w		; C0 26 10
	and [$FC.b]		; 27 FC
	sbc $1028BC.l,X		; FF BC 28 10
	and #$2A10.w		; 29 10 2A
	bpl  43.b		; 10 2B
	bpl  44.b		; 10 2C
	bpl  45.b		; 10 2D
	bpl  -1.b		; 10 FF
	sbc $2E.b,S		; E3 2E
	bpl  47.b		; 10 2F
	bpl  48.b		; 10 30
	bpl  49.b		; 10 31
	bpl  50.b		; 10 32
	bpl  51.b		; 10 33
	cpy $27.b		; C4 27
	lda $5010.w,X		; BD 10 50
	rol $80.b		; 26 80
	sed		; F8
	asl A		; 0A
	tyx		; BB
	php		; 08
	ldy $F8FE.w,X		; BC FE F8
	tsb $34C0.w		; 0C C0 34
	sbc ($FF.b,X)		; E1 FF
	inc $35BC.w,X		; FE BC 35
	bpl  54.b		; 10 36
	bpl  55.b		; 10 37
	bpl  56.b		; 10 38
	bpl  57.b		; 10 39
	bpl  -1.b		; 10 FF
	ora $3B103A.l		; 0F 3A 10 3B
	bpl  60.b		; 10 3C
	bpl  61.b		; 10 3D
	bpl  62.b		; 10 3E
	bpl  63.b		; 10 3F
	bpl  64.b		; 10 40
	cmp #$E67B.w		; C9 7B E6
	bvc -32.b		; 50 E0
	bra  -8.b		; 80 F8
	ora #$08BD.w		; 09 BD 08
	ldx $F8FE.w,Y		; BE FE F8
	tsb $1041.w		; 0C 41 10
	.db $42, $7B		; 42 7B
	and $22F8FE.l,X		; 3F FE F8 22
	eor ($80.b,X)		; 41 80
	sbc $C008BF.l,X		; FF BF 08 C0
	inc $0CF8.w,X		; FE F8 0C
	eor $08.b,S		; 43 08
	mvp $45,$08		; 44 08 45
	dec $C3.b		; C6 C3
	inc $FE46.w,X		; FE 46 FE
	eor [$08.b]		; 47 08
	pha		; 48
	inc $E148.w,X		; FE 48 E1
	cmp $F64847.l		; CF 47 48 F6
	eor #$4A08.w		; 49 08 4A
	php		; 08
	phk		; 4B
	php		; 08
	jmp $FE04.w		; 4C 04 FE
	nop		; EA
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	bra  -2.b		; 80 FE
	cmp ($08.b,X)		; C1 08
	rep #$08		; C2 08
	cmp $FF.b,S		; C3 FF
	adc $08C408.l,X		; 7F 08 C4 08
	cmp $08.b		; C5 08
	dec $08.b		; C6 08
	cmp [$08.b]		; C7 08
	iny		; C8
	php		; 08
	eor $4E08.w		; 4D 08 4E
	php		; 08
	eor $FE7F8C.l		; 4F 8C 7F FE
	bvc  -2.b		; 50 FE
	eor ($08.b),Y		; 51 08
	eor ($08.b)		; 52 08
	eor ($08.b,S),Y		; 53 08
	mvn $33,$FC		; 54 FC 33
	inc $55.b,X		; F6 55
	php		; 08
	lsr $08.b,X		; 56 08
	eor [$08.b],Y		; 57 08
	cli		; 58
	nop		; EA
	sta ($FF.b,X)		; 81 FF
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	bra  -2.b		; 80 FE
	cmp #$08.b		; C9 08
	dex		; CA
	php		; 08
	wai		; CB
	php		; 08
	cpy $FFFF.w		; CC FF FF
	php		; 08
	cmp $CE08.w		; CD 08 CE
	php		; 08
	cmp $08D008.l		; CF 08 D0 08
	eor $5A08.w,Y		; 59 08 5A
	php		; 08
	tad		; 5B
	php		; 08
	jmp $0861FF.l		; 5C FF 61 08
	eor $5E08.w,X		; 5D 08 5E
	php		; 08
	eor $086008.l,X		; 5F 08 60 08
	adc ($FE.b,X)		; 61 FE
	pha		; 48
	.db $62, $CC, $00		; 62 CC 00
	plx		; FA
	adc $F6.b,S		; 63 F6
	beq -39.b		; F0 D9
	sbc $FED1FE.l,X		; FF FE D1 FE
	bra  -2.b		; 80 FE
	cmp ($08.b)		; D2 08
	cmp ($08.b,S),Y		; D3 08
	pei ($0C.b)		; D4 0C
	cmp $0C.b,X		; D5 0C
	sbc $0CD68F.l,X		; FF 8F D6 0C
	cmp [$0C.b],Y		; D7 0C
	cld		; D8
	tsb $0CD9.w		; 0C D9 0C
	stz $08.b		; 64 08
	adc $08.b		; 65 08
	ror $FF.b		; 66 FF
	beq -64.b		; F0 C0
	jmp $086748.l		; 5C 48 67 08
	pla		; 68
	bpl 104.b		; 10 68
	bvc  -4.b		; 50 FC
	adc #$10.b		; 69 10
	ror A		; 6A
	sta ($0B.b,X)		; 81 0B
	bpl 107.b		; 10 6B
	inc $F4.b,X		; F6 F4
	jmp ($FDF8.w)		; 6C F8 FD
	inc $FCF1.w,X		; FE F1 FC
	bra  -8.b		; 80 F8
	phd		; 0B
	phx		; DA
	tsb $0CDB.w		; 0C DB 0C
	jmp.w [$DD0C]		; DC 0C DD
	jsr ($0CDE.w,X)		; FC DE 0C
	sbc $106D3F.l,X		; FF 3F 6D 10
	ror $6F10.w		; 6E 10 6F
	bpl 112.b		; 10 70
	bpl 113.b		; 10 71
	bpl 114.b		; 10 72
	bpl 115.b		; 10 73
	bpl 116.b		; 10 74
	ldy $FE50.w,X		; BC 50 FE
	bvc 115.b		; 50 73
	bvc 117.b		; 50 75
	sed		; F8
	sbc $76F0.w,X		; FD F0 76
	sed		; F8
	sbc $FFF0.w,X		; FD F0 FF
	beq -128.b		; F0 80
	sed		; F8
	phd		; 0B
	cmp $0CE00C.l,X		; DF 0C E0 0C
	sbc ($0C.b,X)		; E1 0C
	sep #$0C		; E2 0C
	sbc $0C.b,S		; E3 0C
	sbc $0CE4FF.l,X		; FF FF E4 0C
	adc [$10.b],Y		; 77 10
	sei		; 78
	bpl 121.b		; 10 79
	bpl 122.b		; 10 7A
	bpl 123.b		; 10 7B
	bpl 124.b		; 10 7C
	bpl 125.b		; 10 7D
	bpl  -1.b		; 10 FF
	sbc $7F107E.l,X		; FF 7E 10 7F
	bpl -128.b		; 10 80
	bpl -127.b		; 10 81
	bpl -126.b		; 10 82
	bpl -125.b		; 10 83
	bpl -124.b		; 10 84
	bpl -123.b		; 10 85
	bpl  -1.b		; 10 FF
	sbc $1086.w,X		; FD 86 10
	sbc $10.b		; E5 10
	inc $10.b		; E6 10
	sbc [$10.b]		; E7 10
	inx		; E8
	bpl -128.b		; 10 80
	sed		; F8
	phd		; 0B
	sbc #$0C.b		; E9 0C
	nop		; EA
	tsb $3FFF.w		; 0C FF 3F
	xba		; EB
	tsb $0CEC.w		; 0C EC 0C
	sbc $EE0C.w		; ED 0C EE
	tsb $1087.w		; 0C 87 10
	dey		; 88
	bpl -119.b		; 10 89
	bpl -118.b		; 10 8A
	sbc $8BC0FF.l,X		; FF FF C0 8B
	bpl -116.b		; 10 8C
	bpl -115.b		; 10 8D
	bpl -114.b		; 10 8E
	bpl -113.b		; 10 8F
	bpl -112.b		; 10 90
	bpl -111.b		; 10 91
	sbc $9210DF.l,X		; FF DF 10 92
	bpl -109.b		; 10 93
	bpl -108.b		; 10 94
	bpl -17.b		; 10 EF
	bpl -16.b		; 10 F0
	bpl -15.b		; 10 F1
	bpl -14.b		; 10 F2
	bra  -8.b		; 80 F8
	tsb $FFFF.w		; 0C FF FF
	sbc ($0C.b,S),Y		; F3 0C
	pea $F50C.w		; F4 0C F5
	tsb $0CF6.w		; 0C F6 0C
	sbc [$0C.b],Y		; F7 0C
	sed		; F8
	tsb $1095.w		; 0C 95 10
	stx $10.b,Y		; 96 10
	sbc $1097FF.l,X		; FF FF 97 10
	tya		; 98
	bpl -103.b		; 10 99
	bpl -102.b		; 10 9A
	bpl -101.b		; 10 9B
	bpl -100.b		; 10 9C
	bpl -99.b		; 10 9D
	bpl -98.b		; 10 9E
	bpl  -1.b		; 10 FF
	sbc $A0109F.l,X		; FF 9F 10 A0
	bpl -95.b		; 10 A1
	bpl -94.b		; 10 A2
	bpl -93.b		; 10 A3
	bpl -92.b		; 10 A4
	bpl  -7.b		; 10 F9
	bpl  -6.b		; 10 FA
	bpl  -5.b		; 10 FB
	sbc $FC10FB.l,X		; FF FB 10 FC
	bra  -8.b		; 80 F8
	tsb $0CFD.w		; 0C FD 0C
	inc $FF0C.w,X		; FE 0C FF
	tsb $0D00.w		; 0C 00 0D
	ora ($0D.b,X)		; 01 0D
	cop $FF.b		; 02 FF
	sbc $11030D.l,X		; FF 0D 03 11
	tsb $11.b		; 04 11
	ora $11.b		; 05 11
	asl $11.b		; 06 11
	ora [$11.b]		; 07 11
	php		; 08
	ora ($09.b),Y		; 11 09
	ora ($0A.b),Y		; 11 0A
	sbc $0B110F.l,X		; FF 0F 11 0B
	ora ($0C.b),Y		; 11 0C
	ora ($0D.b),Y		; 11 0D
	ora ($0E.b),Y		; 11 0E
	ora ($0F.b),Y		; 11 0F
	ora ($10.b),Y		; 11 10
	ora ($FF.b),Y		; 11 FF
	xce		; FB
	sbc $A21112.l,X		; FF 12 11 A2
	ora ($A3.b),Y		; 11 A3
	ora ($A4.b),Y		; 11 A4
	ora ($A5.b),Y		; 11 A5
	ora ($80.b),Y		; 11 80
	sed		; F8
	phd		; 0B
	ldx $0D.b		; A6 0D
	lda [$FF.b]		; A7 FF
	cmp ($0D.b,S),Y		; D3 0D
	tay		; A8
	ora $0DA9.w		; 0D A9 0D
	tax		; AA
	ora $0DAB.w		; 0D AB 0D
	ora ($09.b,S),Y		; 13 09
	inc $FF14.w,X		; FE 14 FF
	sbc $091509.l,X		; FF 09 15 09
	asl $09.b,X		; 16 09
	ora [$11.b],Y		; 17 11
	clc		; 18
	ora ($19.b),Y		; 11 19
	ora ($1A.b),Y		; 11 1A
	ora ($1B.b),Y		; 11 1B
	ora ($1C.b),Y		; 11 1C
	sta [$FF.b]		; 87 FF
	ora ($1D.b),Y		; 11 1D
	ora ($1E.b),Y		; 11 1E
	inc $1F51.w,X		; FE 51 1F
	ora ($AC.b),Y		; 11 AC
	ora ($AD.b),Y		; 11 AD
	ora ($AE.b),Y		; 11 AE
	xba		; EB
	sbc $11AF11.l,X		; FF 11 AF 11
	bra  -2.b		; 80 FE
	rti		; 40

	jsr ($0DB0.w,X)		; FC B0 0D
	lda ($0D.b),Y		; B1 0D
	lda ($0D.b)		; B2 0D
	lda ($0D.b,S),Y		; B3 0D
	ldy $FF.b,X		; B4 FF
	sbc $09200D.l,X		; FF 0D 20 09
	and ($09.b,X)		; 21 09
	jsl $092309.l		; 22 09 23 09
	bit $09.b		; 24 09
	adc [$08.b]		; 67 08
	and $11.b		; 25 11
	rol $FF.b		; 26 FF
	sbc $112711.l,X		; FF 11 27 11
	plp		; 28
	ora ($29.b),Y		; 11 29
	ora ($2A.b),Y		; 11 2A
	ora ($2B.b),Y		; 11 2B
	ora ($2C.b),Y		; 11 2C
	ora ($2D.b),Y		; 11 2D
	ora ($2E.b),Y		; 11 2E
	adc $B511FF.l,X		; 7F FF 11 B5
	ora ($B6.b),Y		; 11 B6
	ora ($B7.b),Y		; 11 B7
	ora ($B8.b),Y		; 11 B8
	bra  -1.b		; 80 FF
	lda $BA09.w,Y		; B9 09 BA
	ora #$BB.b		; 09 BB
	ora $E1FF.w		; 0D FF E1
	ldy $BD0D.w,X		; BC 0D BD
	ora $0DBE.w		; 0D BE 0D
	lda $0DC00D.l,X		; BF 0D C0 0D
	dex		; CA
	and $FFFD09.l		; 2F 09 FD FF
	bmi   9.b		; 30 09
	brk $F4.b		; 00 F4
	and ($11.b),Y		; 31 11
	and ($11.b)		; 32 11
	and ($11.b,S),Y		; 33 11
	bit $11.b,X		; 34 11
	and $11.b,X		; 35 11
	rol $11.b,X		; 36 11
	sbc $1137BF.l,X		; FF BF 37 11
	sec		; 38
	ora ($39.b),Y		; 11 39
	ora ($3A.b),Y		; 11 3A
	ora ($C1.b),Y		; 11 C1
	ora ($C2.b),Y		; 11 C2
	ora ($C3.b),Y		; 11 C3
	ora ($C4.b),Y		; 11 C4
	sbc $FF807F.l,X		; FF 7F 80 FF
	cmp $09.b		; C5 09
	dec $09.b		; C6 09
	cmp [$0D.b]		; C7 0D
	iny		; C8
	ora $0DC9.w		; 0D C9 0D
	dex		; CA
	ora $0DCB.w		; 0D CB 0D
	cpy $FF24.w		; CC 24 FF
	cpy #$FE.b		; C0 FE
	cpy #$FC.b		; C0 FC
	tsa		; 3B
	ora ($3C.b),Y		; 11 3C
	ora ($3D.b),Y		; 11 3D
	ora ($FF.b),Y		; 11 FF
	beq  62.b		; F0 3E
	ora ($3F.b),Y		; 11 3F
	ora ($40.b),Y		; 11 40
	ora ($41.b),Y		; 11 41
	ora ($42.b),Y		; 11 42
	inc $4351.w,X		; FE 51 43
	ora ($78.b),Y		; 11 78
	sbc $CEFECD.l,X		; FF CD FE CE
	ora ($CF.b),Y		; 11 CF
	bra  -1.b		; 80 FF
	bne   9.b		; D0 09
	cmp ($09.b),Y		; D1 09
	cmp ($0D.b)		; D2 0D
	sbc $0DD3A7.l,X		; FF A7 D3 0D
	pei ($0D.b)		; D4 0D
	cmp $0D.b,X		; D5 0D
	dec $0D.b,X		; D6 0D
	cmp [$0D.b],Y		; D7 0D
	mvp $FE,$09		; 44 09 FE
	lda $0945FE.l,X		; BF FE 45 09
	lsr $09.b		; 46 09
	eor [$09.b]		; 47 09
	pha		; 48
	inc $1AF8.w,X		; FE F8 1A
	bra  -2.b		; 80 FE
	cld		; D8
	ora #$D9.b		; 09 D9
	ora #$DA.b		; 09 DA
	sbc [$FF.b]		; E7 FF
	ora $0DDB.w		; 0D DB 0D
	jmp.w [$DDFE]		; DC FE DD
	ora $1D49.w		; 0D 49 1D
	lsr A		; 4A
	ora $1D4B.w,X		; 1D 4B 1D
	sbc $1D4CFF.l,X		; FF FF 4C 1D
	eor $4E1D.w		; 4D 1D 4E
	ora $1D4F.w,X		; 1D 4F 1D
	bvc  29.b		; 50 1D
	eor ($1D.b),Y		; 51 1D
	eor ($1D.b)		; 52 1D
	eor ($1D.b,S),Y		; 53 1D
	sbc $1D54FF.l,X		; FF FF 54 1D
	eor $1D.b,X		; 55 1D
	lsr $1D.b,X		; 56 1D
	eor [$1D.b],Y		; 57 1D
	cli		; 58
	ora $1DDE.w,X		; 1D DE 1D
	cmp $1DE01D.l,X		; DF 1D E0 1D
	sta $1DE1E1.l		; 8F E1 E1 1D
.INDEX 8
	sep #$1D		; E2 1D
	sbc $F0.b,S		; E3 F0
	cpx $FE.b		; E4 FE
	eor $FF57.w,X		; 5D 57 FF
	sbc $5DE35D.l,X		; FF 5D E3 5D
.INDEX 8
	sep #$5D		; E2 5D
	sbc ($5D.b,X)		; E1 5D
	cpx #$5D.b		; E0 5D
	cmp $5DDE5D.l,X		; DF 5D DE 5D
	eor $5A1D.w,Y		; 59 1D 5A
	sbc $5B1DFF.l,X		; FF FF 1D 5B
	ora $1D5C.w,X		; 1D 5C 1D
	eor $5E1D.w,X		; 5D 1D 5E
	ora $1D5F.w,X		; 1D 5F 1D
	rts		; 60

	ora $1D61.w,X		; 1D 61 1D
	.db $62, $FF, $C7		; 62 FF C7
	ora $1D63.w,X		; 1D 63 1D
	stz $1D.b		; 64 1D
	adc $1D.b		; 65 1D
	ror $1D.b		; 66 1D
	adc [$1D.b]		; 67 1D
	pla		; 68
	sed		; F8
	sbc $1DE50F.l,X		; FF 0F E5 1D
	inc $1D.b		; E6 1D
	sbc [$1D.b]		; E7 1D
	inx		; E8
	ora $1DE9.w,X		; 1D E9 1D
	nop		; EA
	ora $FFEB.w,X		; 1D EB FF
	sbc $EA5DFE.l,X		; FF FE 5D EA
	eor $5DE9.w,X		; 5D E9 5D
	inx		; E8
	eor $5DE7.w,X		; 5D E7 5D
	inc $5D.b		; E6 5D
	sbc $5D.b		; E5 5D
	adc $5D.b		; 65 5D
	sbc $1D698F.l,X		; FF 8F 69 1D
	ror A		; 6A
	ora $1D6B.w,X		; 1D 6B 1D
	jmp ($6D1D.w)		; 6C 1D 6D
	ora $1D6E.w,X		; 1D 6E 1D
	adc $F8CF1F.l		; 6F 1F CF F8
	bvs  29.b		; 70 1D
	adc ($1D.b),Y		; 71 1D
	adc ($F8.b)		; 72 F8
	adc ($1D.b,S),Y		; 73 1D
	stz $E7.b,X		; 74 E7
	adc $F8.b,S		; 63 F8
	cpx $ED1D.w		; EC 1D ED
	sed		; F8
	inc $EF1D.w		; EE 1D EF
	sed		; F8
	beq  -8.b		; F0 F8
	cmp [$FE.b]		; C7 FE
	eor $5D72.w,X		; 5D 72 5D
	sbc $5DEE5D.l		; EF 5D EE 5D
	jmp ($FFF8.w)		; 6C F8 FF
	sta [$ED.b]		; 87 ED
	eor $5DEC.w,X		; 5D EC 5D
	adc $1D.b,X		; 75 1D
	ror $1D.b,X		; 76 1D
	adc [$1D.b],Y		; 77 1D
	sei		; 78
	ora $CFF8.w,X		; 1D F8 CF
	ora $7A1D79.l,X		; 1F 79 1D 7A
	ora $F87B.w,X		; 1D 7B F8
	jmp ($7D1D.w,X)		; 7C 1D 7D
	ora $EF7E.w,X		; 1D 7E EF
	and $7FF8.w,Y		; 39 F8 7F
	ora $F880.w,X		; 1D 80 F8
	sbc $1DF1.w,X		; FD F1 1D
	sbc ($F8.b)		; F2 F8
	sbc ($FC.b,S),Y		; F3 FC
	sbc ($FE.b,S),Y		; F3 FE
	eor $5D7F.w,X		; 5D 7F 5D
	adc $F25D.w,Y		; 79 5D F2
	eor $F8F1.w,X		; 5D F1 F8
	ror $E7FF.w,X		; 7E FF E7
	eor $1D81.w,X		; 5D 81 1D
	.db $82, $1D, $83		; 82 1D 83
	ora $1D84.w,X		; 1D 84 1D
	sta $1D.b		; 85 1D
	stx $F8.b		; 86 F8
	cmp $1D879F.l		; CF 9F 87 1D
	dey		; 88
	ora $F889.w,X		; 1D 89 F8
	txa		; 8A
	ora $1D8B.w,X		; 1D 8B 1D
	sty $E1A1.w		; 8C A1 E1
	sed		; F8
	inx		; E8
	pea $FDF8.w		; F4 F8 FD
	sbc $FE.b,X		; F5 FE
	eor $DF83.w,X		; 5D 83 DF
	adc $5D8A5D.l,X		; 7F 5D 8A 5D
	sta [$5D.b]		; 87 5D
	pea $FDF8.w		; F4 F8 FD
	sta $8E1D.w		; 8D 1D 8E
	ora $1D8F.w,X		; 1D 8F 1D
	bcc  29.b		; 90 1D
	plx		; FA
	adc $F8.b,S		; 63 F8
	sta ($1D.b),Y		; 91 1D
	sta ($1D.b)		; 92 1D
	sta ($1D.b,S),Y		; 93 1D
	sty $F8.b,X		; 94 F8
	sta $3C.b,X		; 95 3C
	cmp $F0.b,S		; C3 F0
	stx $1D.b,Y		; 96 1D
	sta [$F8.b],Y		; 97 F8
	inx		; E8
	inc $0D.b,X		; F6 0D
	ora $E0F71D.l		; 0F 1D F7 E0
	sbc $FEF8.w,X		; FD F8 FE
	eor $5D91.w,X		; 5D 91 5D
	stx $FFCF.w		; 8E CF FF
	dex		; CA
	eor $5DF7.w,X		; 5D F7 5D
	inc $F8.b,X		; F6 F8
	tya		; 98
	ora $1D99.w,X		; 1D 99 1D
	txs		; 9A
	ora $7F9B.w,X		; 1D 9B 7F
	ldx $1D.b		; A6 1D
	stz $9D1D.w		; 9C 1D 9D
	ora $1D9E.w,X		; 1D 9E 1D
	sta $5BF0F8.l,X		; 9F F8 F0 5B
	php		; 08
	ldy #$1D.b		; A0 1D
	lda ($E8.b,X)		; A1 E8
	sbc $FDF8F9.l,X		; FF F9 F8 FD
	beq  -6.b		; F0 FA
	sbc $5DFE73.l,X		; FF 73 FE 5D
	txs		; 9A
	eor $5D9D.w,X		; 5D 9D 5D
	stz $9B5D.w		; 9C 5D 9B
	eor $F8F9.w,X		; 5D F9 F8
	brk $FD.b		; 00 FD
	and $FCF8FF.l,X		; 3F FF F8 FC
	sbc $FB41F8.l,X		; FF F8 41 FB
	ora #$FC.b		; 09 FC
	ora #$FD.b		; 09 FD
	ora #$AC.b		; 09 AC
	php		; 08
	inc $FF09.w,X		; FE 09 FF
	ror $FAA6.w		; 6E A6 FA
	brk $0A.b		; 00 0A
	bit $C2.b		; 24 C2
	ora ($FA.b,X)		; 01 FA
	inc $29F5.w,X		; FE F5 29
	cop $0A.b		; 02 0A
	cpy #$F8.b		; C0 F8
	ora $03C43A.l,X		; 1F 3A C4 03
	asl A		; 0A
	tsb $0A.b		; 04 0A
	sed		; F8
	ora $67.b		; 05 67
	nop		; EA
	plx		; FA
	asl $FA.b		; 06 FA
	inc $C007.w,X		; FE 07 C0
	sed		; F8
	jsr $0FBA.w		; 20 BA 0F
	phy		; 5A
	php		; 08
	php		; 08
	asl A		; 0A
	ora #$0A.b		; 09 0A
	sbc $0DC02A.l,X		; FF 2A C0 0D
	inc $0BFE.w,X		; FE FE 0B
	cpy #$F8.b		; C0 F8
	jsr $5555.w		; 20 55 55
	and ($C0.b)		; 32 C0
	ora $F8FE.w		; 0D FE F8
	ora ($C0.b),Y		; 11 C0
	sed		; F8
	ora $0DC032.l,X		; 1F 32 C0 0D
	inc $11F8.w,X		; FE F8 11
	cpy #$F8.b		; C0 F8
	ora $0DC032.l,X		; 1F 32 C0 0D
	inc $11F8.w,X		; FE F8 11
	and $F8C05E.l,X		; 3F 5E C0 F8
	ora $C20A0C.l,X		; 1F 0C 0A C2
	php		; 08
	ora $0EFC.w		; 0D FC 0E
	asl $FE0F.w		; 0E 0F FE
	sed		; F8
	trb $3F.b		; 14 3F
	lsr $F8C0.w,X		; 5E C0 F8
	ora $CA0A10.l,X		; 1F 10 0A CA
	php		; 08
	ora ($FC.b),Y		; 11 FC
	ora ($0E.b)		; 12 0E
	ora ($FE.b,S),Y		; 13 FE
	sed		; F8
	trb $3F.b		; 14 3F
	asl $F8C0.w,X		; 1E C0 F8
	ora $D30A14.l,X		; 1F 14 0A D3
	php		; 08
	ora $FC.b,X		; 15 FC
	asl $0E.b,X		; 16 0E
	ora [$AE.b],Y		; 17 AE
	sbc $4EFE.w		; ED FE 4E
	clc		; 18
	asl $FCFE.w		; 0E FE FC
	pea $19FE.w		; F4 FE 19
	cpy #$F8.b		; C0 F8
	jsr $801A.w		; 20 1A 80
	sbc $E11B.w,X		; FD 1B E1
	phy		; 5A
	asl $FE1C.w		; 0E 1C FE
	lsr $0E1D.w		; 4E 1D 0E
	inc $F4FC.w,X		; FE FC F4
	inc $C01E.w,X		; FE 1E C0
	sed		; F8
	jsr $FE09.w		; 20 09 FE
	bvs -54.b		; 70 CA
	bra -64.b		; 80 C0
	ora $0E200E.l,X		; 1F 0E 20 0E
	and ($0E.b,X)		; 21 0E
	sbc $0E22AB.l,X		; FF AB 22 0E
	and $0E.b,S		; 23 0E
	bit $0E.b		; 24 0E
	and $0E.b		; 25 0E
	rol $0E.b		; 26 0E
	and [$C0.b]		; 27 C0
	sed		; F8
	bit $B0.b		; 24 B0
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	sbc $28FC80.l,X		; FF 80 FC 28
	asl $0E29.w		; 0E 29 0E
	rol A		; 2A
	asl $0E2B.w		; 0E 2B 0E
	bit $2D0E.w		; 2C 0E 2D
	asl $0E2E.w		; 0E 2E 0E
	and $0E3FFD.l		; 2F FD 3F 0E
	bmi -128.b		; 30 80
	sed		; F8
	bit $0E31.w		; 2C 31 0E
	and ($0E.b)		; 32 0E
	and ($0E.b,S),Y		; 33 0E
	bit $0E.b,X		; 34 0E
	and $0E.b,X		; 35 0E
	rol $1E.b,X		; 36 1E
	sbc $37F6.w,X		; FD F6 37
	asl $FA38.w		; 0E 38 FA
	bra  -8.b		; 80 F8
	pld		; 2B
	and $3A0E.w,Y		; 39 0E 3A
	asl $BF63.w		; 0E 63 BF
	tsa		; 3B
	asl $FA3C.w		; 0E 3C FA
	and $FDF6.w,X		; 3D F6 FD
	rol $3F0E.w,X		; 3E 0E 3F
	asl $FF40.w		; 0E 40 FF
	sbc [$80.b],Y		; F7 80
	sed		; F8
	plp		; 28
	eor ($0E.b,X)		; 41 0E
	.db $42, $0E		; 42 0E
	eor $0E.b,S		; 43 0E
	mvp $45,$0E		; 44 0E 45
	asl $F646.w		; 0E 46 F6
	sbc $7E0E47.l,X		; FF 47 0E 7E
	sty $C048.w		; 8C 48 C0
	sed		; F8
	plp		; 28
	eor #$4A0E.w		; 49 0E 4A
	asl $FE4B.w		; 0E 4B FE
	jmp $E1D6.w		; 4C D6 E1
	jsr ($F8F6.w,X)		; FC F6 F8
	ora #$C04D.w		; 09 4D C0
	sed		; F8
	jsr $C230.w		; 20 30 C2
	lsr $FC0A.w		; 4E 0A FC
	eor $0EAB0A.l		; 4F 0A AB 0E
	bvc  10.b		; 50 0A
	eor ($FC.b),Y		; 51 FC
	sed		; F8
	tsb $FCFE.w		; 0C FE FC
	cpy #$1FF8.w		; C0 F8 1F
	bmi -62.b		; 30 C2
	eor ($0A.b)		; 52 0A
	eor $1D.b,X		; 55 1D
	jsr ($B853.w,X)		; FC 53 B8
	sbc $F8FC.w		; ED FC F8
	ora #$FCFE.w		; 09 FE FC
	cpy #$1FF8.w		; C0 F8 1F
	bmi -62.b		; 30 C2
	mvn $BE,$0A		; 54 0A BE
	nop		; EA
	jsr ($0A55.w,X)		; FC 55 0A
	lsr $0A.b,X		; 56 0A
	eor [$FC.b],Y		; 57 FC
	sed		; F8
	tsb $FCFE.w		; 0C FE FC
	cpy #$1FF8.w		; C0 F8 1F
	bmi -62.b		; 30 C2
	cli		; 58
	bvs -19.b		; 70 ED
	asl A		; 0A
	jsr ($0A59.w,X)		; FC 59 0A
	phy		; 5A
	inc $14F8.w,X		; FE F8 14
	cpy #$1FF8.w		; C0 F8 1F
	cli		; 58
	bmi -63.b		; 30 C1
	lsr $FF.b,X		; 56 FF
	sbc $5D555D.l,X		; FF 5D 55 5D
	mvn $53,$5D		; 54 5D 53
	eor $5D52.w,X		; 5D 52 5D
	eor ($5D.b),Y		; 51 5D
	bvc  93.b		; 50 5D
	eor $FF4E5D.l		; 4F 5D 4E FF
	sbc $4D5D.w,X		; FD 5D 4D
	eor $5D4C.w,X		; 5D 4C 5D
	phk		; 4B
	eor $5D4A.w,X		; 5D 4A 5D
	eor #$C8A0.w		; 49 A0 C8
	jsr $5D68.w		; 20 68 5D
	adc [$5D.b]		; 67 5D
	inc $66FF.w,X		; FE FF 66
	sec		; 38
	cmp ($64.b,X)		; C1 64
	eor $5D63.w,X		; 5D 63 5D
	.db $62, $5D, $61		; 62 5D 61
	eor $5D60.w,X		; 5D 60 5D
	eor $F05E5D.l,X		; 5F 5D 5E F0
	cmp [$5D.b],Y		; D7 5D
	sbc $5B5D5C.l,X		; FF 5C 5D 5B
	eor $5D5A.w,X		; 5D 5A 5D
	eor $F8C0.w,Y		; 59 C0 F8
	jsr $C238.w		; 20 38 C2
	tda		; 7B
	jsr ($5D74.w,X)		; FC 74 5D
	adc ($30.b,S),Y		; 73 30
	cmp $71.b,S		; C3 71
	eor $F870.w,X		; 5D 70 F8
	adc $5D6E5D.l		; 6F 5D 6E 5D
	sed		; F8
	sbc $F86D.w		; ED 6D F8
	rtl		; 6B

	eor $5D6A.w,X		; 5D 6A 5D
	adc #$F8C0.w		; 69 C0 F8
	jsr $3880.w		; 20 80 38
	cmp $7D.b		; C5 7D
	sbc ($F3.b),Y		; F1 F3
	eor $F87C.w,X		; 5D 7C F8
	adc $5D.b,X		; 75 5D
	tda		; 7B
	eor $F87A.w,X		; 5D 7A F8
	sei		; 78
	eor [$EF.b]		; 47 EF
	eor $5D77.w,X		; 5D 77 5D
	ror $F8.b,X		; 76 F8
	cpy #$1FF8.w		; C0 F8 1F
	sty $8B5D.w		; 8C 5D 8B
	sec		; 38
	cmp $84.b,S		; C3 84
	sbc [$CF.b]		; E7 CF
	eor $5D89.w,X		; 5D 89 5D
	dey		; 88
	sed		; F8
	sta $5D.b,S		; 83 5D
	stx $5D.b		; 86 5D
	sta $F7.b		; 85 F7
	phd		; 0B
	sed		; F8
	.db $82, $5D, $81		; 82 5D 81
	cpy #$20F8.w		; C0 F8 20
	sta $5D.b,X		; 95 5D
	sta [$5D.b],Y		; 97 5D
	stx $38.b,Y		; 96 38
	cmp ($7F.b,X)		; C1 7F
	cmp $5D91F8.l		; CF F8 91 5D
	sty $5D.b,X		; 94 5D
	sta ($5D.b,S),Y		; 93 5D
	sta ($20.b)		; 92 20
	cmp $90.b		; C5 90
	eor $F68F.w,X		; 5D 8F F6
	ply		; 7A
	sed		; F8
	cpy #$1FF8.w		; C0 F8 1F
	txy		; 9B
	bmi -63.b		; 30 C1
	lda ($5D.b,X)		; A1 5D
	ldy #$C130.w		; A0 30 C1
	plp		; 28
	cpy $9F.b		; C4 9F
	eor $E19E.w,X		; 5D 9E E1
	rol A		; 2A
	jsr $F0C5.w		; 20 C5 F0
	sta $985D.w,Y		; 99 5D 98
	jsr $FCC0.w		; 20 C0 FC
	sbc $0063F8.l,X		; FF F8 63 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D5.b		; 00 D5
	adc $FF00.w,X		; 7D 00 FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	ldx $5B.b		; A6 5B
	rol $F8.b,X		; 36 F8
	jsr ($3A5C.w,X)		; FC 5C 3A
	eor $3F3A.w,X		; 5D 3A 3F
	jsr ($F8C2.w,X)		; FC C2 F8
	and ($5E.b),Y		; 31 5E
	rol $5F.b,X		; 36 5F
	rol $60.b,X		; 36 60
	ldx $0034.w,Y		; BE 34 00
	sec		; 38
	adc ($3A.b,X)		; 61 3A
	bvc  -3.b		; 50 FD
	.db $62, $C0, $38		; 62 C0 38
	sbc ($F8.b,X)		; E1 F8
	asl $F8F0.w		; 0E F0 F8
	ora $10F8FF.l		; 0F FF F8 10
	adc $36.b		; 65 36
	ror $36.b		; 66 36
	sed		; F8
	lda [$67.b],Y		; B7 67
	cpy #$3A68.w		; C0 68 3A
	adc #$6A3A.w		; 69 3A 6A
	dec A		; 3A
	rtl		; 6B

	ror $0EF8.w,X		; 7E F8 0E
	jmp ($7FFF.w)		; 6C FF 7F
	ror $20F8.w		; 6E F8 20
	adc ($36.b),Y		; 71 36
	adc ($36.b)		; 72 36
	adc ($36.b,S),Y		; 73 36
	stz $36.b,X		; 74 36
	adc $3A.b,X		; 75 3A
	ror $3A.b,X		; 76 3A
	adc [$3A.b],Y		; 77 3A
	sei		; 78
	xce		; FB
	sbc $0EF8D0.l,X		; FF D0 F8 0E
	adc $F8C0.w,Y		; 79 C0 F8
	jsr $367F.w		; 20 7F 36
	bra  54.b		; 80 36
	sta ($36.b,X)		; 81 36
	.db $82, $36, $83		; 82 36 83
	dec A		; 3A
	sty $B7.b		; 84 B7
	sbc $3A853A.l,X		; FF 3A 85 3A
	stx $D0.b		; 86 D0
	sed		; F8
	asl $C087.w		; 0E 87 C0
	sed		; F8
	jsr $368E.w		; 20 8E 36
	sta $369036.l		; 8F 36 90 36
	sta ($DF.b),Y		; 91 DF
	inc $9236.w,X		; FE 36 92
	dec A		; 3A
	sta ($3A.b,S),Y		; 93 3A
	sty $00.b,X		; 94 00
	sed		; F8
	bpl -107.b		; 10 95
	cpy #$20F8.w		; C0 F8 20
	txy		; 9B
	rol $9C.b,X		; 36 9C
	rol $9D.b,X		; 36 9D
	adc $9E36FB.l,X		; 7F FB 36 9E
	rol $9F.b,X		; 36 9F
	dec A		; 3A
	ldy #$A13A.w		; A0 3A A1
	cpy #$10F8.w		; C0 F8 10
	ldx #$F06E.w		; A2 6E F0
	and ($34.b,X)		; 21 34
	tay		; A8
	rol $7E.b,X		; 36 7E
	tda		; 7B
	lda #$F1C0.w		; A9 C0 F1
	tax		; AA
	dec A		; 3A
	plb		; AB
	dec A		; 3A
	ldy $F8C0.w		; AC C0 F8
	bpl -83.b		; 10 AD
	cpy #$22F8.w		; C0 F8 22
	lda ($36.b)		; B2 36
	lda ($FC.b,S),Y		; B3 FC
	ror $B4C0.w,X		; 7E C0 B4
	dec A		; 3A
	lda $3A.b,X		; B5 3A
	ldx $40.b,Y		; B6 40
	beq  50.b		; F0 32
	tyx		; BB
	rol $BC.b,X		; 36 BC
	rol $BD.b,X		; 36 BD
	jsr ($C0FE.w,X)		; FC FE C0
	ldx $BF3A.w,Y		; BE 3A BF
	dec A		; 3A
	cpy #$F8C0.w		; C0 C0 F8
	and ($C5.b)		; 32 C5
	rol $C6.b,X		; 36 C6
	rol $C7.b,X		; 36 C7
	sbc $C836AD.l,X		; FF AD 36 C8
	rol $C9.b,X		; 36 C9
	dec A		; 3A
	dex		; CA
	dec A		; 3A
	wai		; CB
	dec A		; 3A
	cpy $F850.w		; CC 50 F8
	asl $6ECD.w		; 0E CD 6E
	inx		; E8
	and ($AA.b)		; 32 AA
	lsr $F8FF.w,X		; 5E FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jmp $643A63.l		; 5C 63 3A 64
	rol A		; 2A
	cmp ($3D.b)		; D2 3D
	lsr $FCFE.w,X		; 5E FE FC
	sbc $6D32F8.l,X		; FF F8 32 6D
	dec A		; 3A
	ror $6FC0.w		; 6E C0 6F
	dec A		; 3A
	bvs -28.b		; 70 E4
	iny		; C8
	ora ($FF.b),Y		; 11 FF
	xce		; FB
	sbc $7A24F8.l,X		; FF F8 24 7A
	dec A		; 3A
	tda		; 7B
	dec A		; 3A
	jmp ($7D3A.w,X)		; 7C 3A 7D
	dec A		; 3A
	ror $F8C0.w,X		; 7E C0 F8
	rol $88.b,X		; 36 88
	dec A		; 3A
	bit #$8F7F.w		; 89 7F 8F
	dec A		; 3A
	txa		; 8A
	dec A		; 3A
	phb		; 8B
	dec A		; 3A
	sty $8D3A.w		; 8C 3A 8D
	ldy $C8.b,X		; B4 C8
	bit $96.b,X		; 34 96
	dec A		; 3A
	sta [$DF.b],Y		; 97 DF
	sbc $86.b,S		; E3 86
	tya		; 98
	dec A		; 3A
	sta $9A3A.w,Y		; 99 3A 9A
	cpy #$34F8.w		; C0 F8 34
	lda $3A.b,S		; A3 3A
	ldy $C0.b		; A4 C0
	lda $F7.b		; A5 F7
	sei		; 78
	dec A		; 3A
	ldx $3A.b		; A6 3A
	lda [$C0.b]		; A7 C0
	sed		; F8
	bit $AE.b,X		; 34 AE
	dec A		; 3A
	lda $3AB0C0.l		; AF C0 B0 3A
	lda ($8F.b),Y		; B1 8F
	sbc [$00.b],Y		; F7 00
	sed		; F8
	rol $B7.b,X		; 36 B7
	dec A		; 3A
	clv		; B8
	dec $B9.b		; C6 B9
	dec A		; 3A
	tsx		; BA
	cpy #$36F8.w		; C0 F8 36
	cmp ($3A.b,X)		; C1 3A
	sei		; 78
	sbc $C3C6C2.l,X		; FF C2 C6 C3
	dec A		; 3A
	cpy $C0.b		; C4 C0
	sed		; F8
	rol $CE.b,X		; 36 CE
	dec A		; 3A
	cmp $3AD03A.l		; CF 3A D0 3A
	plb		; AB
	asl A		; 0A
	cmp ($3A.b),Y		; D1 3A
	cmp ($C0.b)		; D2 C0
	sed		; F8
	rol $FF.b,X		; 36 FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	cmp $00.b		; C5 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $AD.b		; 00 AD
	ldx $FF00.w,Y		; BE 00 FF
	sed		; F8
	asl $FEFF.w,X		; 1E FF FE
	sed		; F8
	asl $F8EF.w		; 0E EF F8
	ora $0BF8FF.l		; 0F FF F8 0B
	sbc $DEFE.w,X		; FD FE DE
	sbc $EFF5FB.l		; EF FB F5 EF
	sed		; F8
	tsb $F0FF.w		; 0C FF F0
	cpx $F8.b		; E4 F8
	asl A		; 0A
	cld		; D8
	sbc $AAFFD5.l		; EF D5 FF AA
	cpx $F8.b		; E4 F8
	tsb $FEC0.w		; 0C C0 FE
	xce		; FB
	sbc $4B63.w,X		; FD 63 4B
	phx		; DA
	sbc $F480.w		; ED 80 F4
	eor $E0.b,X		; 55 E0
	sbc $E4FE.w,X		; FD FE E4
	sbc $44FF.w,X		; FD FF 44
	inc $F6ED.w,X		; FE ED F6
	adc $AA55B0.l		; 6F B0 55 AA
	tax		; AA
	eor $F4.b,X		; 55 F4
	ora [$D5.b],Y		; 17 D5
	cpx #$FFF8.w		; E0 F8 FF
	cpy #$F880.w		; C0 80 F8
	ora $E0FB.w		; 0D FB E0
	sed		; F8
	phd		; 0B
	rts		; 60

	sed		; F8
	bpl -32.b		; 10 E0
	sbc $FF7F.w,X		; FD 7F FF
	trb $EF.b		; 14 EF
	ora $5EEE.w,Y		; 19 EE 5E
	sbc $AF.b,S		; E3 AF
	beq -24.b		; F0 E8
	inc $FF08.w,X		; FE 08 FF
	ora [$EF.b],Y		; 17 EF
	ora #$85F7.w		; 09 F7 85
	ora [$06.b],Y		; 17 06
	sbc $F8C0.w,Y		; F9 C0 F8
	ora #$1D7E.w		; 09 7E 1D
	sbc [$60.b]		; E7 60
	cmp $0BF8C4.l,X		; DF C4 F8 0B
	tsx		; BA
	ora $A03F94.l,X		; 1F 94 3F A0
	sed		; F8
	asl $9F7A.w		; 0E 7A 9F
	ldx #$0DF8.w		; A2 F8 0D
	cpx #$7FFF.w		; E0 FF 7F
	sbc $07FEDF.l,X		; FF DF FE 07
	stp		; DB
	bcc  -1.b		; 90 FF
	eor ($B3.b,X)		; 41 B3
	jmp ($1BAC.w)		; 6C AC 1B
	sta $03.b		; 85 03
	cpy #$FCBB.w		; C0 BB FC
	and $FF6FFF.l,X		; 3F FF 6F FF
	rol $1FFF.w,X		; 3E FF 1F
	sbc $78FF47.l,X		; FF 47 FF 78
	sbc $E11CBF.l,X		; FF BF 1C E1
	bit $FC.b		; 24 FC
	and $C569DF.l,X		; 3F DF 69 C5
	brk $7F.b		; 00 7F
	ora $818020.l		; 0F 20 80 81
	ror $1B2C.w,X		; 7E 2C 1B
	sep #$CC		; E2 CC
	clc		; 18
	inc $6994.w,X		; FE 94 69
	sbc $FCF9C7.l,X		; FF C7 F9 FC
	cpx #$0A98.w		; E0 98 0A
	sbc $55.b,X		; F5 55
	ora $FFFE38.l		; 0F 38 FE FF
	sed		; F8
	tsb $FFE0.w		; 0C E0 FF
	clc		; 18
	sed		; F8
	ora #$FEFF.w		; 09 FF FE
	jsr ($FEF0.w,X)		; FC F0 FE
	sbc [$77.b],Y		; F7 77
	eor $FFA8.w,Y		; 59 A8 FF
	mvn $FE,$E0		; 54 E0 FE
	ora [$FB.b]		; 07 FB
	ora $FD.b,S		; 03 FD
	eor $FE.b,X		; 55 FE
	cpx #$09F8.w		; E0 F8 09
	tsa		; 3B
	ora [$FF.b]		; 07 FF
	ora $80F23A.l		; 0F 3A F2 80
	brk $60.b		; 00 60
	bra -40.b		; 80 D8
	jsr $AC53.w		; 20 53 AC
	plb		; AB
	eor $E0.b,X		; 55 E0
	trb $3E.b		; 14 3E
	adc ($FF.b)		; 72 FF
	adc $F7CF6A.l,X		; 7F 6A CF F7
	sbc $FEFE.w,Y		; F9 FE FE
	bit $0A20.w		; 2C 20 0A
	adc $F0121F.l,X		; 7F 1F 12 F0
	asl A		; 0A
	phx		; DA
	cpx $08.b		; E4 08
	beq  95.b		; F0 5F
	sbc $2EDAFF.l,X		; FF FF DA 2E
	cpx #$F0C0.w		; E0 C0 F0
	phd		; 0B
	rol A		; 2A
	beq  -4.b		; F0 FC
	jsr ($FEEE.w,X)		; FC EE FE
	rol $FCBF.w		; 2E BF FC
	sbc $FEC6FE.l,X		; FF FE C6 FE
	jsr ($DCFE.w,X)		; FC FE DC
	cmp $D2CCE3.l		; CF E3 CC D2
	cpy #$E7DD.w		; C0 DD E7
	sbc $C0F3CF.l,X		; FF CF F3 C0
	cmp ($E0.b,S),Y		; D3 E0
	sbc [$FB.b],Y		; F7 FB
	cmp ($E2.b),Y		; D1 E2
	bcs 111.b		; B0 6F
	ldx #$09F8.w		; A2 F8 09
	cmp $02CC03.l		; CF 03 CC 02
	ora $0AF8C4.l,X		; 1F C4 F8 0A
	and ($00.b,S),Y		; 33 00
	ora ($60.b,S),Y		; 13 60
	bcs  32.b		; B0 20
	eor #$F8DE.w		; 49 DE F8
	tsb $EA23.w		; 0C 23 EA
	dec $0BF8.w,X		; DE F8 0B
	bmi -118.b		; 30 8A
	sbc $72EC90.l,X		; FF 90 EC 72
	inx		; E8
	phd		; 0B
	.db $82, $F8, $0E		; 82 F8 0E
	sbc $00BB.w,X		; FD BB 00
	adc [$11.b],Y		; 77 11
	ror $88.b		; 66 88
	adc [$A7.b],Y		; 77 A7
	ora [$E2.b]		; 07 E2
	ora $E31C.w,X		; 1D 1C E3
	cmp $CC.b,X		; D5 CC
	brk $44.b		; 00 44
	dey		; 88
	inc $EC3C.w,X		; FE 3C EC
	sbc [$C0.b],Y		; F7 C0
	brk $F8.b		; 00 F8
	xce		; FB
	jsr ($CEFD.w,X)		; FC FD CE
	sed		; F8
	ora $F2C1.w		; 0D C1 F2
	xce		; FB
.ACCU 16
.INDEX 16
	rep #$34		; C2 34
	sed		; F8
	ora #$DDBE.w		; 09 BE DD
	cpy #$FFCD.w		; C0 CD FF
	inc $0AF8.w		; EE F8 0A
	ora ($22.b),Y		; 11 22
	and ($3B.b),Y		; 31 3B
	ldy $C002.w,X		; BC 02 C0
	cpy #$F8DC.w		; C0 DC F8
	ora #$DC00.w		; 09 00 DC
	dec $9A54.w,X		; DE 54 9A
	sbc ($CC.b,S),Y		; F3 CC
	brk $C9.b		; 00 C9
	sbc $FEE0FE.l		; EF FE E0 FE
	and $A3.b,S		; 23 A3
	jmp.w [$E1FD]		; DC FD E1
	and $E0EE00.l,X		; 3F 00 EE E0
	mvp $22,$99		; 44 99 22
	cmp $77C8.w,X		; DD C8 77
	xce		; FB
	cpy $93FE.w		; CC FE 93
	cpx $2C.b		; E4 2C
	dec $FC52.w,X		; DE 52 FC
	jmp.w [$F8E0]		; DC E0 F8
	ora #$2F3B.w		; 09 3B 2F
	tyx		; BB
	cpy $33CE.w		; CC CE 33
	xce		; FB
	cpy $E0.b		; C4 E0
	sed		; F8
	phd		; 0B
	sbc $0CF8E0.l,X		; FF E0 F8 0C
	tyx		; BB
	mvp $7E,$C6		; 44 C6 7E
	cpx #$0FF8.w		; E0 F8 0F
	sta ($E8.b,S),Y		; 93 E8
	asl A		; 0A
	jsr $50FE.w		; 20 FE 50
	sbc ($F8.b),Y		; F1 F8
	asl $FBDF.w		; 0E DF FB
	xce		; FB
	sbc $88FD.w,Y		; F9 FD 88
	sbc $FD88.w,Y		; F9 88 FD
	inc A		; 1A
	inc $FCFF.w,X		; FE FF FC
	sed		; F8
	ora ($64.b,X)		; 01 64
	inc $8AF8.w,X		; FE F8 8A
	sbc $F125.w,Y		; F9 25 F1
	inc $7F51.w,X		; FE 51 7F
	cmp $46B9F3.l		; CF F3 B9 46
	sbc [$FF.b]		; E7 FF
	sed		; F8
	asl $C8BF.w		; 0E BF C8
	sbc $22DF84.l,X		; FF 84 DF 22
	sbc ($FF.b),Y		; F1 FF
	.db $62, $E9, $FA		; 62 E9 FA
	sta $817F60.l,X		; 9F 60 7F 81
	inx		; E8
	sbc $66AFAC.l		; EF AC AF 66
	adc [$FF.b]		; 67 FF
	lda $A3A0.w		; AD A0 A3
	sty $2A8F.w		; 8C 8F 2A
	pld		; 2B
	sbc ($E5.b,X)		; E1 E5
	cmp ($C3.b,X)		; C1 C3
	lda ($E0.b),Y		; B1 E0
	asl $F180.w		; 0E 80 F1
	sed		; F8
	asl $1AEE.w		; 0E EE 1A
	cpx #$71E3.w		; E0 E3 71
	sed		; F8
	ora #$08FF.w		; 09 FF 08
	.db $62, $F8, $0D		; 62 F8 0D
	tay		; A8
	lda $58FC6A.l		; AF 6A FC 58
	sbc #$40FE.w		; E9 FE 40
	lsr $5D.b		; 46 5D
	inc $F1CD.w,X		; FE CD F1
	ror A		; 6A
	inc $5682.w		; EE 82 56
	jmp $D2FCF1.l		; 5C F1 FC D2
	jsr ($B77F.w,X)		; FC 7F B7
	inc $D882.w,X		; FE 82 D8
	bpl -123.b		; 10 85
	ora [$3A.b]		; 07 3A
	sbc [$E0.b]		; E7 E0
	sed		; F8
	asl $FE.b,X		; 16 FE
	cmp $40BF20.l,X		; DF 20 BF 40
	plx		; FA
	sty $FCFF.w		; 8C FF FC
	sta ($F6.b,X)		; 81 F6
	eor ($80.b,X)		; 41 80
	sta ($A2.b,X)		; 81 A2
	ldx #$4343.w		; A2 43 43
	sbc $606051.l,X		; FF 51 60 60
	cpy #$A1C1.w		; C0 C1 A1
	lda ($20.b,X)		; A1 20
	jsr $E1E1.w		; 20 E1 E1
	eor $DACF.w,X		; 5D CF DA
	bra -125.b		; 80 83
.ACCU 8
.INDEX 8
	sep #$71		; E2 71
	bpl  -1.b		; 10 FF
	tya		; 98
	inc $F0.b,X		; F6 F0
	php		; 08
	sbc ($FC.b),Y		; F1 FC
	jsr ($BFA0.w,X)		; FC A0 BF
	bmi -65.b		; 30 BF
	sbc ($F1.b),Y		; F1 F1
	sbc $FB01A9.l,X		; FF A9 01 FB
	ora ($FC.b,X)		; 01 FC
	ora [$FB.b]		; 07 FB
	tsb $1BF7.w		; 0C F7 1B
	sbc $FCFE24.l,X		; FF 24 FE FC
	asl $03.b		; 06 03
	sbc ($FF.b),Y		; F1 FF
	ora [$FF.b]		; 07 FF
	ora $26E978.l		; 0F 78 E9 26
	sbc ($38.b),Y		; F1 38
.ACCU 16
	rep #$66		; C2 66
	sty $82FF.w		; 8C FF 82
	sbc $0AF7.w		; ED F7 0A
	sta [$FF.b]		; 87 FF
	sbc $02FF84.l,X		; FF 84 FF 02
	inc $AC.b,X		; F6 AC
	lda $D4C3C2.l		; AF C2 C3 D4
	cmp [$9B.b],Y		; D7 9B
	txy		; 9B
	lda $0F0E16.l,X		; BF 16 0E 0F
	cpy $AECF.w		; CC CF AE
	lda $DA4980.l		; AF 80 49 DA
	inc $09F8.w,X		; FE F8 09
	php		; 08
	cpx #$D0.b		; E0 D0
	ora $FFE0.w		; 0D E0 FF
	sbc ($FE.b),Y		; F1 FE
	lda #$BB7E.w		; A9 7E BB
	ror $7E93.w,X		; 7E 93 7E
	cmp [$7E.b],Y		; D7 7E
	cmp [$7E.b]		; C7 7E
	lda $7EE5FE.l,X		; BF FE E5 7E
	sbc $7E.b,X		; F5 7E
	lda $807E.w,X		; BD 7E 80
	stz $E1.b,X		; 74 E1
	inc $0BF8.w,X		; FE F8 0B
	and ($7F.b),Y		; 31 7F
	clc		; 18
	adc $107F0E.l,X		; 7F 0E 7F 10
	adc $387F23.l,X		; 7F 23 7F 38
	adc $007F0F.l,X		; 7F 0F 7F 00
	inc $F8E2.w,X		; FE E2 F8
	asl $803A.w		; 0E 3A 80
	tyx		; BB
	cpx #$7C.b		; E0 7C
	cmp $FF1C.w,Y		; D9 1C FF
	and $3FFA.w,Y		; 39 FA 3F
	jmp ($F800.w,X)		; 7C 00 F8
	ora $F0.b,X		; 15 F0
	inc $FEC4.w,X		; FE C4 FE
	trb $FAFE.w		; 1C FE FA
	tsb $FE.b		; 04 FE
	bit $00FE.w,X		; 3C FE 00
	cli		; 58
	eor $FE.b		; 45 FE
	brk $01.b		; 00 01
	inc $0CF8.w,X		; FE F8 0C
	txa		; 8A
	phx		; DA
.ACCU 8
.INDEX 8
	sep #$F2		; E2 F2
	lsr $04.b		; 46 04
	sei		; 78
	and [$F6.b]		; 27 F6
	sbc ($C2.b)		; F2 C2
	rep #$40		; C2 40
	rti		; 40

	sed		; F8
	ora ($DA.b,X)		; 01 DA
	cop $02.b		; 02 02
	and ($31.b),Y		; 31 31
	ldy #$A0.b		; A0 A0
	inc $FF.b,X		; F6 FF
	rep #$40		; C2 40
	tay		; A8
	sbc $48FF04.l,X		; FF 04 FF 48
	sbc $F1DEA0.l,X		; FF A0 DE F1
	pea $FF50.w		; F4 50 FF
	cpx $FF.b		; E4 FF
	plp		; 28
	tay		; A8
	lda $685F54.l,X		; BF 54 5F 68
	adc $7AD5A0.l		; 6F A0 D5 7A
	cmp ($78.b),Y		; D1 78
	cmp $FF.b,S		; C3 FF
	adc $3B06FD.l,X		; 7F FD 06 3B
	sbc $FF07.w,Y		; F9 07 FF
	trb $F7.b		; 14 F7
	asl A		; 0A
	inc $FD03.w,X		; FE 03 FD
	cmp $FF.b,S		; C3 FF
	asl A		; 0A
	xce		; FB
	tsb $F5.b		; 04 F5
	asl $07FE.w		; 0E FE 07
	sbc [$14.b],Y		; F7 14
	pea $FF0B.w		; F4 0B FF
	ora $03.b,S		; 03 03
	jsr $0AFB.w		; 20 FB 0A
	plx		; FA
	inc $A8.b,X		; F6 A8
	cmp [$FB.b],Y		; D7 FB
	sta [$98.b]		; 87 98
	sbc $4343EC.l		; EF EC 43 43
	ldx #$A3.b		; A2 A3
	ora ($01.b,X)		; 01 01
	.db $82, $FF, $04		; 82 FF 04
	cop $83.b		; 02 83
	txs		; 9A
	stz $F384.w		; 9C 84 F3
	cpx $88.b		; E4 88
	inc $7EFC.w,X		; FE FC 7E
	pea $F14D.w		; F4 4D F1
	jsr ($FFC0.w,X)		; FC C0 FF
	rts		; 60

	adc $F18090.l,X		; 7F 90 80 F1
	cmp $08EC63.l,X		; DF 63 EC 08
	ror $FB1A.w,X		; 7E 1A FB
	sbc $FD2621.l,X		; FF 21 26 FD
	ora ($FF.b,S),Y		; 13 FF
	jsl $104AFF.l		; 22 FF 4A 10
	sbc [$0C.b],Y		; F7 0C
	sbc ($F7.b),Y		; F1 F7
	inc $F1BF.w,X		; FE BF F1
	sbc [$13.b]		; E7 13
	sbc ($22.b,S),Y		; F3 22
	sbc $4A.b,S		; E3 4A
	wai		; CB
	sta $DB7E.w,Y		; 99 7E DB
	ror $BDD3.w,X		; 7E D3 BD
	cpy $F1C0.w		; CC C0 F1
	cmp $C0.b		; C5 C0
	sbc ($A5.b),Y		; F1 A5
	ror $C0AD.w,X		; 7E AD C0
	beq  16.b		; F0 10
	stx $40.b		; 86 40
	beq -124.b		; F0 84
	eor $8E4B.w		; 4D 4B 8E
	cpy #$C0.b		; C0 C0
	sta ($FE.b,X)		; 81 FE
	sbc $81.b,S		; E3 81
	.db $82, $E4, $50		; 82 E4 50
	bvc -40.b		; 50 D8
	cld		; D8
	sbc $24FF88.l,X		; FF 88 FF 24
	cop $54.b		; 02 54
	ora ($FE.b),Y		; 11 FE
	sbc $348B2B.l,X		; FF 2B 8B 34
	cop $88.b		; 02 88
	sta $82A724.l		; 8F 24 A7 82
	sbc $54E7C3.l,X		; FF C3 E7 54
	adc $2B.b,X		; 75 2B
	tsa		; 3B
	rti		; 40

	eor $1E.b,S		; 43 1E
	ora $0C0F0E.l,X		; 1F 0E 0F 0C
	sbc $F0.b,X		; F5 F0
	sbc $FD8F2A.l,X		; FF 2A 8F FD
	inc A		; 1A
	xba		; EB
	asl $E7.b,X		; 16 E7
	clv		; B8
	dec $69.b,X		; D6 69
	cmp [$A8.b],Y		; D7 A8
	lsr $FF.b,X		; 56 FF
	lda $AF2FF6.l,X		; BF F6 2F AF
	asl $96.b,X		; 16 96
	phx		; DA
	plx		; FA
	stz $B89E.w,X		; 9E 9E B8
	sed		; F8
	adc $A9FD.w,X		; 7D FD A9
	lda #$22.b		; A9 22
	jsr ($FE26.w,X)		; FC 26 FE
	sbc $AAF8F3.l		; EF F3 F8 AA
	bra -128.b		; 80 80
	jsr $6020.w		; 20 20 60
	bmi  33.b		; 30 21
	rts		; 60

	ldy $E0.b		; A4 E0
	cpx #$9E.b		; E0 9E
	rti		; 40

	brk $44.b		; 00 44
	stz $3CA6.w,X		; 9E A6 3C
	ora ($3A.b,X)		; 01 3A
	sec		; 38
	jsr ($06FC.w,X)		; FC FC 06
	bvc  95.b		; 50 5F
	sta $6F68.w		; 8D 68 6F
	php		; 08
	ora $FF09.w,X		; 1D 09 FF
	and $17140B.l		; 2F 0B 14 17
	ora ($0B.b,X)		; 01 0B
	asl $07.b		; 06 07
	sbc $FC83.w,X		; FD 83 FC
	and $FE.b,S		; 23 FE
	ora ($F1.b),Y		; 11 F1
	sbc $FC.b,S		; E3 FC
	sbc $DF10DA.l,X		; FF DA 10 DF
	beq -109.b		; F0 93
	cmp ($27.b,S),Y		; D3 27
	sbc [$11.b]		; E7 11
	cmp ($20.b),Y		; D1 20
	ldy #$35.b		; A0 35
	adc $5F.b,X		; 75 5F
	cld		; D8
	pla		; 68
	inx		; E8
	inc A		; 1A
	txs		; 9A
	sbc [$F7.b],Y		; F7 F7
	adc ($EA.b,S),Y		; 73 EA
	ldx $3F.b		; A6 3F
	cpx #$D8.b		; E0 D8
	sbc ($41.b)		; F2 41
	cpy #$BF.b		; C0 BF
	rts		; 60

	dec $EA64.w,X		; DE 64 EA
	sta [$F1.b],Y		; 97 F1
	inc $7FFF.w,X		; FE FF 7F
	dec $30F2.w,X		; DE F2 30
	and $3B8129.l,X		; 3F 29 81 3B
	sta ($13.b,X)		; 81 13
	sta ($57.b,X)		; 81 57
	sta ($47.b,X)		; 81 47
	sta ($65.b,X)		; 81 65
	lda $7581FF.l		; AF FF 81 75
	sta ($3D.b,X)		; 81 3D
	sta ($1B.b,X)		; 81 1B
	sbc ($FE.b)		; F2 FE
	sed		; F8
	phd		; 0B
	adc $8018FF.l,X		; 7F FF 18 80
	asl $2380.w		; 0E 80 23
	eor [$7F.b],Y		; 57 7F
	bra  56.b		; 80 38
	bra  15.b		; 80 0F
	sbc ($F3.b),Y		; F1 F3
	eor $1F0EE0.l,X		; 5F E0 0E 1F
	sbc #$3F.b		; E9 3F
	brk $1C.b		; 00 1C
	brk $E1.b		; 00 E1
	brk $D0.b		; 00 D0
	sbc $E0AFFA.l,X		; FF FA AF E0
	tsb $FFFE.w		; 0C FE FF
	inc $C4FF.w,X		; FE FF C4
	ora ($1C.b,X)		; 01 1C
	ora ($F0.b,X)		; 01 F0
	ora ($AB.b,X)		; 01 AB
	sbc $0104.w,X		; FD 04 01
	bit $EBCF.w,X		; 3C CF EB
	cpy $FEEA.w		; CC EA FE
	sed		; F8
	phd		; 0B
	and $0DC091.l,X		; 3F 91 C0 0D
	brk $D8.b		; 00 D8
	cld		; D8
	bra  15.b		; 80 0F
	ora ($80.b),Y		; 11 80
	bmi  48.b		; 30 30
	bpl  16.b		; 10 10
	jsr ($FF40.w,X)		; FC 40 FF
	eor ($FF.b,X)		; 41 FF
	lda ($0C.b)		; B2 0C
	asl A		; 0A
	sbc #$FE.b		; E9 FE
	sed		; F8
	ora #$11.b		; 09 11
	ora ($0E.b),Y		; 11 0E
	asl $0303.w		; 0E 03 03
	sbc ($E1.b,X)		; E1 E1
	mvp $DE,$44		; 44 44 DE
	ora ($12.b)		; 12 12
	asl $06.b		; 06 06
	cpx #$EB.b		; E0 EB
	trb $1F.b		; 14 1F
	inc $40BF.w,X		; FE BF 40
	adc [$98.b]		; 67 98
	ror $B899.w		; 6E 99 B8
	sbc [$29.b],Y		; F7 29
	inc $FD01.w,X		; FE 01 FD
	asl A		; 0A
	sbc $545487.l,X		; FF 87 54 54
	eor [$77.b],Y		; 57 77
	lda $BDB9.w,Y		; B9 B9 BD
	sbc $EEEE.w,X		; FD EE EE
	adc $D87D.w,X		; 7D 7D D8
	sta $0AFC.w,X		; 9D FC 0A
	asl A		; 0A
	ldy #$F2.b		; A0 F2
	cmp $A00220.l,X		; DF 20 02 A0
	pea $A0A0.w		; F4 A0 A0
	dey		; 88
	dey		; 88
	sta [$BD.b]		; 87 BD
	cpx #$E0.b		; E0 E0
	bcc -112.b		; 90 90
	jsr ($8282.w,X)		; FC 82 82
	rts		; 60

	xba		; EB
	ora $FF.b,S		; 03 FF
	ora $8E.b		; 05 8E
	brk $56.b		; 00 56
	sbc $E265.w,X		; FD 65 E2
	brk $07.b		; 00 07
	sbc $F0C39C.l,X		; FF 9C C3 F0
	tay		; A8
	sty $C28C.w		; 8C 8C C2
	rol $36.b,X		; 36 36
	sed		; F8
	xce		; FB
	ldy $E7.b		; A4 E7
	xba		; EB
	cmp $58.b,S		; C3 58
	sbc $C93990.l		; EF 90 39 C9
	ror $E5.b,X		; 76 E5
	ldx $5CAE.w		; AE AE 5C
	jmp.w [$D6A0]		; DC A0 D6
	beq -16.b		; F0 F0
	dec $BA.b,X		; D6 BA
	stx $96.b,Y		; 96 96
	pla		; 68
	pla		; 68
	ldx $28FF.w,Y		; BE FF 28
	sbc $32F1FA.l,X		; FF FA F1 32
	.db $62, $F3, $60		; 62 F3 60
	sbc $2F28.w,X		; FD 28 2F
	and ($3A.b)		; 32 3A
	ora $0101FF.l		; 0F FF 01 01
	sbc $1A1ADB.l,X		; FF DB 1A 1A
	bit $34.b,X		; 34 34
	php		; 08
	php		; 08
	ora $5B81.w,Y		; 19 81 5B
	sta ($53.b,X)		; 81 53
	ldy #$F1.b		; A0 F1
	eor $A0.b		; 45 A0
	sbc ($EB.b),Y		; F1 EB
	jsr $8125.w		; 20 25 81
	and $F0A0.w		; 2D A0 F0
	bpl -81.b		; 10 AF
	clv		; B8
	ora $6C2020.l		; 0F 20 20 6C
	cpx #$B0.b		; E0 B0
	tas		; 1B
	sed		; F8
	inc $5EA8.w,X		; FE A8 5E
	cpx #$0D.b		; E0 0D
	cmp $DB2E.w,Y		; D9 2E DB
	bit $E2.b		; 24 E2
	sed		; F8
	ora #$FD.b		; 09 FD
	cop $2F.b		; 02 2F
	and $78476C.l		; 2F 6C 47 78
	jmp ($0C0C.w)		; 6C 0C 0C
	bpl  -1.b		; 10 FF
	cpx $05.b		; E4 05
	ora $2A.b		; 05 2A
	rol A		; 2A
	eor ($C5.b,X)		; 41 C5
	cpy #$F8.b		; C0 F8
	ora $F2AAA2.l		; 0F A2 AA F2
	sbc $D8A0FE.l,X		; FF FE A0 D8
	asl $61FE.w		; 0E FE 61
	adc $4C4848.l,X		; 7F 48 48 4C
	cop $02.b		; 02 02
	bra  -8.b		; 80 F8
	ora ($FE.b,S),Y		; 13 FE
	ora ($FA.b,X)		; 01 FA
	ora $F1.b		; 05 F1
	ora $C8E00D.l		; 0F 0D E0 C8
	inc $D9F6.w,X		; FE F6 D9
	ora ($A0.b,X)		; 01 A0
	clc		; 18
	cpx $FC.b		; E4 FC
	xce		; FB
	and $9504F8.l,X		; 3F F8 04 95
	ror A		; 6A
	phy		; 5A
	lda $FD32.w		; AD 32 FD
	adc $A2.b,X		; 75 A2
	jsr ($0404.w,X)		; FC 04 04
	ror $2AAB.w		; 6E AB 2A
	ror $BDBD.w		; 6E BD BD
	ora $B028CC.l,X		; 1F CC 28 B0
	ora #$C0.b		; 09 C0
	lda ($A7.b,S),Y		; B3 A7
	sed		; F8
	asl $FEA4.w		; 0E A4 FE
	cpx #$F8.b		; E0 F8
	phd		; 0B
	cpx $C2BF.w		; EC BF C2
	ora $03.b,S		; 03 03
	cpx #$FE.b		; E0 FE
	xce		; FB
	asl $AA.b		; 06 AA
	eor $D5.b,X		; 55 D5
	rol $F827.w,X		; 3E 27 F8
	plb		; AB
	inc $FEE0.w,X		; FE E0 FE
	adc $C5C87F.l,X		; 7F 7F C8 C5
	cpy #$F8.b		; C0 F8
	asl A		; 0A
	ror $E0DA.w,X		; 7E DA E0
	inc $2020.w,X		; FE 20 20
	bne -48.b		; D0 D0
	inx		; E8
	xba		; EB
	phd		; 0B
	inx		; E8
	cpx #$E0.b		; E0 E0
	ldy #$F8.b		; A0 F8
	ora $FFE1C5.l		; 0F C5 E1 FF
	eor [$FE.b],Y		; 57 FE
	plb		; AB
	bra  -3.b		; 80 FD
	ora $F8.b		; 05 F8
	sbc ($03.b),Y		; F1 03
	jmp ($FCD1.w,X)		; 7C D1 FC
	nop		; EA
	sta $3A6F.w,Y		; 99 6F 3A
	cmp [$FF.b]		; C7 FF
	sbc $C33FE0.l,X		; FF E0 3F C3
	adc $E4FF02.l,X		; 7F 02 FF E4
	sbc $B8BF48.l,X		; FF 48 BF B8
	eor $C76F6F.l,X		; 5F 6F 6F C7
	cmp [$85.b]		; C7 85
	sbc $9A3F3F.l,X		; FF 3F 3F 9A
	inc $59FF.w,X		; FE FF 59
	inc $FF10.w,X		; FE 10 FF
	and ($CE.b,S),Y		; 33 CE
	rol $F9.b		; 26 F9
	adc $FB4DD5.l,X		; 7F D5 4D FB
	eor ($BE.b),Y		; 51 BE
	sta $FB6770.l		; 8F 70 67 FB
	sty $CA.b,X		; 94 CA
	sbc $F309F8.l,X		; FF F8 09 F3
	jsr ($B1E9.w,X)		; FC E9 B1
	ldy $86.b		; A4 86
	eor $2E.b,X		; 55 2E
	ora $EE.b,S		; 03 EE
	cpy #$B3.b		; C0 B3
	ora $81FD.w,Y		; 19 FD 81
	inc $3FFF.w,X		; FE FF 3F
	rol $0F0F.w,X		; 3E 0F 0F
	brk $10.b		; 00 10
	tsb $090F.w		; 0C 0F 09
	sbc $060FEC.l		; EF EC 0F 06
	sbc $FC7E81.l		; EF 81 7E FC
	sta $F052.w,Y		; 99 52 F0
	cpx #$FF.b		; E0 FF
	cpx #$EF.b		; E0 EF
	bpl  15.b		; 10 0F
	inc $9FE8.w,X		; FE E8 9F
	cpx #$D3.b		; E0 D3
	cmp [$FF.b]		; C7 FF
	stz $C3FF.w,X		; 9E FF C3
	sbc $F4FF31.l,X		; FF 31 FF F4
	lsr $E0.b,X		; 56 E0
	txa		; 8A
	beq  11.b		; F0 0B
	cpx #$FE.b		; E0 FE
	stz $39FF.w		; 9C FF 39
	cli		; 58
	cmp ($C6.b),Y		; D1 C6
	cpx #$F8.b		; E0 F8
	bpl -64.b		; 10 C0
	ldy #$10.b		; A0 10
	eor $F8FF87.l,X		; 5F 87 FF F8
	asl $0DF2.w		; 0E F2 0D
	inx		; E8
	ora [$A4.b],Y		; 17 A4
	cmp ($60.b),Y		; D1 60
	sbc $225F5F.l		; EF 5F 5F 22
	cmp $1F1FFF.l,X		; DF FF 1F 1F
	phd		; 0B
	phd		; 0B
	ora $05.b		; 05 05
	cpx #$FC.b		; E0 FC
	ora $EA.b,X		; 15 EA
	tyx		; BB
	mvp $56,$E9		; 44 E9 56
	adc $1FA6.w,Y		; 79 A6 1F
	jsr ($0CFB.w,X)		; FC FB 0C
	xce		; FB
	tsb $F7.b		; 04 F7
	php		; 08
	inc $C218.w,X		; FE 18 C2
	and $CB39.w,Y		; 39 39 CB
	wai		; CB
	ora $7373C3.l,X		; 1F C3 73 73
	cmp ($D3.b,S),Y		; D3 D3
	jsr $DF20.w		; 20 20 DF
	ora $FE.b,S		; 03 FE
	ora ($75.b,X)		; 01 75
	sbc #$03.b		; E9 03
	ora $D4.b,S		; 03 D4
	sbc ($FE.b),Y		; F1 FE
	jsr ($00FC.w,X)		; FC FC 00
	inc $0DF8.w,X		; FE F8 0D
	tsb $1FFA.w		; 0C FA 1F
	ora [$00.b],Y		; 17 00
	sbc $DF17.w		; ED 17 DF
	plp		; 28
	bra  -8.b		; 80 F8
	ora #$A0.b		; 09 A0
	sbc $9A1EBE.l,X		; FF BE 1E 9A
	trb $011C.w		; 1C 1C 01
	ora ($02.b,X)		; 01 02
	rol $BCC9.w		; 2E C9 BC
	cmp #$0F.b		; C9 0F
	inc $0B.b,X		; F6 0B
	rol $7A.b		; 26 7A
	inc $09F7.w,X		; FE F7 09
	inc $E0E0.w,X		; FE E0 E0
	brk $E4.b		; 00 E4
	tsb $02.b		; 04 02
	sbc $59F8FE.l,X		; FF FE F8 59
	sbc $01.b,X		; F5 01
	ora #$F6.b		; 09 F6
	nop		; EA
	ora $EF.b,X		; 15 EF
	sbc $AF5081.l		; EF 81 50 AF
	bvc 111.b		; 50 6F
	bcc  96.b		; 90 60
	sbc $00.b,X		; F5 00
	sbc $C5.b		; E5 C5
	sta $C8.b,S		; 83 C8
	plb		; AB
	inc $72A0.w,X		; FE A0 72
	sbc ($00.b),Y		; F1 00
	rti		; 40

	adc $92FCFE.l,X		; 7F FE FC 92
	ldy $4BEA.w		; AC EA 4B
	sec		; 38
	iny		; C8
	ora #$84.b		; 09 84
	tyx		; BB
	.db $82, $B8, $09		; 82 B8 09
	sbc $9F10F0.l,X		; FF F0 10 9F
	rts		; 60

	lda $C23E40.l,X		; BF 40 3E C2
	sbc ($17.b),Y		; F1 17
	cmp $FF55.w,Y		; D9 55 FF
	bvs 112.b		; 70 70
	jmp ($FA7C.w,X)		; 7C 7C FA
	plx		; FA
	bmi -71.b		; 30 B9
	lda $AA.b,S		; A3 AA
	cpx $AA.b		; E4 AA
	inc $F8C9.w,X		; FE C9 F8
	ora #$E0.b		; 09 E0
	jsr ($EE22.w,X)		; FC 22 EE
	cpx #$FE.b		; E0 FE
	sta $B2.b,S		; 83 B2
	cpx $FBF2.w		; EC F2 FB
	tsb $FE.b		; 04 FE
	cpx #$F8.b		; E0 F8
	phd		; 0B
	ora [$DD.b],Y		; 17 DD
	cpx #$EA.b		; E0 EA
	bmi -26.b		; 30 E6
	beq   9.b		; F0 09
	cpx #$F0.b		; E0 F0
	ora [$A0.b],Y		; 17 A0
	sed		; F8
	ora ($C0.b),Y		; 11 C0
	sed		; F8
	phd		; 0B
	sbc ($0D.b)		; F2 0D
	inc $0BF4.w,X		; FE F4 0B
	sty $B0.b		; 84 B0
	inc $FCF0.w,X		; FE F0 FC
	ora $0FF0FE.l		; 0F FE F0 0F
	pei ($1F.b)		; D4 1F
	cpx $FEF2.w		; EC F2 FE
	cpx $F8.b		; E4 F8
	sbc $906F.w,X		; FD 6F 90
	inc $EF11.w		; EE 11 EF
	bpl -62.b		; 10 C2
	and $FC29FE.l,X		; 3F FE 29 FC
	dec $6D.b,X		; D6 6D
	mvn $55,$6D		; 54 6D 55
	jsr $2100.w		; 20 00 21
	cmp [$AB.b]		; C7 AB
	inc $FCE7.w,X		; FE E7 FC
	lda $00.b,S		; A3 00
	ldx #$2D.b		; A2 2D
	cmp ($0D.b,X)		; C1 0D
	sed		; F8
	phd		; 0B
	tax		; AA
	stz $E120.w,X		; 9E 20 E1
	sbc ($E8.b)		; F2 E8
	asl $F0ED.w		; 0E ED F0
	ora $FEEE.w		; 0D EE FE
	cpx #$F8.b		; E0 F8
	phd		; 0B
	ora $0AA8.w		; 0D A8 0A
	sbc [$F0.b],Y		; F7 F0
	sbc $DA955D.l		; EF 5D 95 DA
	sbc ($FE.b),Y		; F1 FE
	sed		; F8
	sbc $ED91D7.l		; EF D7 91 ED
	ldy #$0B.b		; A0 0B
	lda ($FC.b,S),Y		; B3 FC
	sbc ($F8.b),Y		; F1 F8
	tsb $A57B.w		; 0C 7B A5
	sbc [$3D.b],Y		; F7 3D
	adc $C2.b		; 65 C2
	adc $F618E7.l,X		; 7F E7 18 F6
	ldy $9030.w		; AC 30 90
	ora $BFFF.w		; 0D FF BF
.ACCU 16
.INDEX 16
	rep #$7C		; C2 7C
	sbc $01FF38.l,X		; FF 38 FF 01
	inc $EF67.w,X		; FE 67 EF
	lda ($E0.b),Y		; B1 E0
	sed		; F8
	ora $FFFCEA.l		; 0F EA FC FF
	cmp [$FF.b],Y		; D7 FF
	sbc $77FE.w,Y		; F9 FE 77
	jsr ($E93D.w,X)		; FC 3D E9
	and $58D1.w,Y		; 39 D1 58
	dey		; 88
	bra  15.b		; 80 0F
	sbc ($52.b),Y		; F1 52
.ACCU 8
.INDEX 8
	sep #$7F		; E2 7F
	sed		; F8
	jsr ($F903.w,X)		; FC 03 F9
	asl $F1.b		; 06 F1
	asl $37C8.w		; 0E C8 37
	ldy $9FA0.w		; AC A0 9F
	rti		; 40

	lda $D0C2BB.l,X		; BF BB C2 D0
	adc $FD8FEE.l,X		; 7F EE 8F FD
	and [$27.b]		; 27 27
	bmi -14.b		; 30 F2
	stz $D6.b,X		; 74 D6
	inc $F027.w,X		; FE 27 F0
	sbc $03D3D8.l,X		; FF D8 D3 03
	inc $FC06.w,X		; FE 06 FC
	ora $EBF9.w		; 0D F9 EB
	sbc $D3.b,S		; E3 D3
	cmp $A7.b,S		; C3 A7
	xce		; FB
	lda $1F5F87.l		; AF 87 5F 1F
	asl $EC.b,X		; 16 EC
	inc $EC00.w,X		; FE 00 EC
	bpl -36.b		; 10 DC
	jsr $40B8.w		; 20 B8 40
	bcc -103.b		; 90 99
	stp		; DB
	phb		; 8B
	plp		; 28
	tya		; 98
	tsb $F3BC.w		; 0C BC F3
	cmp ($E0.b),Y		; D1 E0
	ora $800F.w		; 0D 0F 80
	bcc  12.b		; 90 0C
	jmp $4F03FB.l		; 5C FB 03 4F
	beq   9.b		; F0 09
	and $F8.b		; 25 F8
	inc $1C07.w,X		; FE 07 1C
	sbc $A9E0.w,X		; FD E0 A9
	bmi -17.b		; 30 EF
	asl $42F3.w		; 0E F3 42
	sta ($CF.b,X)		; 81 CF
	jsr $FE97.w		; 20 97 FE
	ora $D0A992.l,X		; 1F 92 A9 D0
	inc $F541.w,X		; FE 41 F5
	mvn $A8,$AB		; 54 AB A8
	eor $66FB86.l,X		; 5F 86 FB 66
	clv		; B8
	sta ($A1.b)		; 92 A1
	inc $80.b,X		; F6 80
	sbc $0EC6.w,X		; FD C6 0E
	cmp $FD.b,S		; C3 FD
	ror $91.b		; 66 91
	sbc $D107FA.l,X		; FF FA 07 D1
	eor $8B3FF8.l,X		; 5F F8 3F 8B
	jsr ($E058.w,X)		; FC 58 E0
	cpy #$7E.b		; C0 7E
	sbc $B8.b,X		; F5 B8
	asl $71FF.w		; 0E FF 71
	inc $E677.w,X		; FE 77 E6
	sta $BF7FF7.l		; 8F F7 7F BF
	rol $28FC.w		; 2E FC 28
	bne -54.b		; D0 CA
	sbc $07DC9F.l,X		; FF 9F DC 07
	asl $7F.b		; 06 7F
	adc ($EF.b,X)		; 61 EF
	sbc [$CA.b],Y		; F7 CA
	ldx #$DD.b		; A2 DD
	sed		; F8
	cpx #$31.b		; E0 31
	sbc [$E1.b],Y		; F7 E1
	rep #$0F		; C2 0F
	beq -109.b		; F0 93
	beq  48.b		; F0 30
	stz $F021.w		; 9C 21 F0
	ora #$56.b		; 09 56
	cpy #$7A.b		; C0 7A
	eor [$0F.b],Y		; 57 0F
	and $FDE4B2.l		; 2F B2 E4 FD
	sbc ($30.b),Y		; F1 30
	ora $66.b,S		; 03 66
	sta $0770.w,Y		; 99 70 07
	cpx $F8.b		; E4 F8
	ora #$D9.b		; 09 D9
	jsr ($4550.w,X)		; FC 50 45
	lsr $B14B.w,X		; 5E 4B B1
	inc $0BE8.w,X		; FE E8 0B
	ror $FFAA.w		; 6E AA FF
	sed		; F8
	asl A		; 0A
	rol $D501.w		; 2E 01 D5
	sbc $7E0AF8.l,X		; FF F8 0A 7E
	rol $D820.w		; 2E 20 D8
	phd		; 0B
	asl $FF99.w,X		; 1E 99 FF
	inc $F257.w,X		; FE 57 F2
	ora $03.b,S		; 03 03
	sec		; 38
	and [$ED.b],Y		; 37 ED
	pea $8FE5.w		; F4 E5 8F
	pld		; 2B
	bpl  -4.b		; 10 FC
	sed		; F8
	adc $8143BF.l,X		; 7F BF 43 81
	sed		; F8
	clc		; 18
	eor $3CC0.w,Y		; 59 C0 3C
	sta $00CED3.l		; 8F D3 CE 00
	cpx #$75.b		; E0 75
	and $60FF84.l,X		; 3F 84 FF 60
	bcs  31.b		; B0 1F
	cpx #$FE.b		; E0 FE
	asl $F3.b		; 06 F3
	bmi -111.b		; 30 91
	sta [$1F.b]		; 87 1F
	adc [$2C.b]		; 67 2C
	ora $31FFC6.l,X		; 1F C6 FF 31
	sbc $F8E4.w,X		; FD E4 F8
	ora ($46.b,X)		; 01 46
	sbc ($FB.b,X)		; E1 FB
	cmp $CAFC.w,Y		; D9 FC CA
	cmp $3BC0.w		; CD C0 3B
	ora [$98.b]		; 07 98
	rol $D9.b		; 26 D9
	bvs  -5.b		; 70 FB
	bmi -109.b		; 30 93
	sed		; F8
	lda $CAFC83.l,X		; BF 83 FC CA
	ora $63A1FF.l,X		; 1F FF A1 63
	brk $86.b		; 00 86
	ora [$DE.b],Y		; 17 DE
	adc $C9FF9C.l,X		; 7F 9C FF C9
	clv		; B8
	sta ($ED.b),Y		; 91 ED
	asl $FCE1.w,X		; 1E E1 FC
	ora $01.b,S		; 03 01
	inc $FFFE.w,X		; FE FE FF
	sbc $6A.b,S		; E3 6A
	sbc $FE71.w,X		; FD 71 FE
.ACCU 16
.INDEX 16
	rep #$FC		; C2 FC
	sty $F8.b		; 84 F8
	adc $19F1.w,Y		; 79 F1 19
	sbc ($0C.b),Y		; F1 0C
	sei		; 78
	cop $3B.b		; 02 3B
	rti		; 40

	jsr ($B609.w,X)		; FC 09 B6
	ora ($D4.b)		; 12 D4
	sbc $FE03.w,X		; FD 03 FE
	plx		; FA
	adc [$F4.b]		; 67 F4
	cmp [$C2.b],Y		; D7 C2
	rti		; 40

	bcc   9.b		; 90 09
	jsl $33CCDD.l		; 22 DD CC 33
	and ($CC.b,S),Y		; 33 CC
	rti		; 40

	bcc  10.b		; 90 0A
	inc $FFE6.w		; EE E6 FF
	ora $7005AF.l		; 0F AF 05 70
	tsb $70.b		; 04 70
	stx $6F.b		; 86 6F
	jsl $2FCACF.l		; 22 CF CA 2F
	pld		; 2B
	cmp $F1020F.l		; CF 0F 02 F1
	bne   0.b		; D0 00
	eor $62FE80.l,X		; 5F 80 FE 62
	pei ($FE.b)		; D4 FE
	jsr ($2D3F.w,X)		; FC 3F 2D
	bpl -53.b		; 10 CB
	bcc  11.b		; 90 0B
	bcc  59.b		; 90 3B
	bcc  -5.b		; 90 FB
	lda [$FB.b],Y		; B7 FB
	and [$F8.b]		; 27 F8
	cpy #$FE79.w		; C0 79 FE
	rts		; 60

	and ($04.b,S),Y		; 33 04
	sbc ($FE.b,S),Y		; F3 FE
	beq   0.b		; F0 00
	plx		; FA
	sbc $FE.b,S		; E3 FE
	and ($5F.b),Y		; 31 5F
	bit $26DF.w		; 2C DF 26
	dec $891F.w,X		; DE 1F 89
	sbc $3F.b,S		; E3 3F
	and #$F8FC.w		; 29 FC F8
	sbc $BF3FFE.l,X		; FF FE 3F BF
	brk $FE.b		; 00 FE
	ror $DA.b		; 66 DA
	sbc $FFBCFC.l,X		; FF FC BC FF
	plp		; 28
	clc		; 18
	cmp $5EFCC3.l,X		; DF C3 FC 5E
	sbc ($00.b),Y		; F1 00
	ora $F40BE0.l,X		; 1F E0 0B F4
	ora $FA.b		; 05 FA
	asl A		; 0A
	tsx		; BA
	sed		; F8
	bit $FFE1.w		; 2C E1 FF
	sed		; F8
	phd		; 0B
	inc $32.b		; E6 32
	nop		; EA
	jmp $10EFDA.l		; 5C DA EF 10
	asl $96C3.w		; 0E C3 96
	phx		; DA
	rti		; 40

	cld		; D8
	ora $FE827D.l		; 0F 7D 82 FE
	ldx $FE41.w,Y		; BE 41 FE
	dec $FE04.w,X		; DE 04 FE
	and ($DE.b,X)		; 21 DE
	inc $F8E0.w,X		; FE E0 F8
	ora $80639C.l		; 0F 9C 63 80
	adc $C03FE0.l		; 6F E0 3F C0
	ora [$E0.b],Y		; 17 E0
	ora $0FF0.w,X		; 1D F0 0F
	jmp ($B683.w,X)		; 7C 83 B6
	inc $4101.w,X		; FE 01 41
	lda $AC1D00.l,X		; BF 00 1D AC
	phk		; 4B
	cmp ($FF.b),Y		; D1 FF
	inc $C43B.w,X		; FE 3B C4
	lsr $0091.w		; 4E 91 00
	cmp $021F.w,X		; DD 1F 02
	sta [$EE.b],Y		; 97 EE
	rol $B9.b		; 26 B9
	bpl  32.b		; 10 20
	brk $90.b		; 00 90
	phd		; 0B
	and #$25CF.w		; 29 CF 25
	cmp $868F65.l		; CF 65 8F 86
	cmp [$FC.b],Y		; D7 FC
	sbc #$F64F.w		; E9 4F F6
	sbc ($0F.b,X)		; E1 0F
	lda ($4F.b,X)		; A1 4F
	php		; 08
	inc $FEFE.w,X		; FE FE FE
	asl A		; 0A
	ora $1F28.w,X		; 1D 28 1F
	lda $AAA3.w,Y		; B9 A3 AA
	inc $3960.w,X		; FE 60 39
	lda ($C8.b,X)		; A1 C8
	sbc $402EBC.l,X		; FF BC 2E 40
	inc $0DF8.w,X		; FE F8 0D
	sbc $96FC0F.l,X		; FF 0F FC 96
	sbc ($0B.b),Y		; F1 0B
	sbc $02.b,X		; F5 02
	sed		; F8
	rts		; 60

	sed		; F8
	tsb $FFC0.w		; 0C C0 FF
	stz $76.b,X		; 74 76
	phb		; 8B
	pea $E33C.w		; F4 3C E3
	sbc $F0B01C.l		; EF 1C B0 F0
	jsr ($D45F.w,X)		; FC 5F D4
	cpy #$809F.w		; C0 9F 80
	cmp $00.b,S		; C3 00
	bvs -74.b		; 70 B6
	cpx $E4E8.w		; EC E8 E4
	nop		; EA
	dex		; CA
	jsr ($3FE1.w,X)		; FC E1 3F
	jmp.w [$E8C0]		; DC C0 E8
	rts		; 60

	brk $38.b		; 00 38
	brk $13.b		; 00 13
	brk $98.b		; 00 98
	brk $CE.b		; 00 CE
	ror A		; 6A
	sty $00E2.w		; 8C E2 00
	inc $FE.b,X		; F6 FE
	inc $EA63.w,X		; FE 63 EA
	and $8FDF.w,Y		; 39 DF 8F
	dec $008C.w,X		; DE 8C 00
	dec $00.b		; C6 00
	adc ($EE.b,S),Y		; 73 EE
	bcs  18.b		; B0 12
	sta $003000.l		; 8F 00 30 00
	cmp [$90.b]		; C7 90
	sbc $D8DC.w,X		; FD DC D8
	clc		; 18
	cpy #$F8E2.w		; C0 E2 F8
	ora $00BF.w		; 0D BF 00
	inc $00.b		; E6 00
	sbc $40E317.l,X		; FF 17 E3 40
	sta $C060.w,Y		; 99 60 C0
	ora $23A746.l		; 0F 46 A7 23
	cmp ($10.b,S),Y		; D3 10
	xba		; EB
	xce		; FB
	sta ($E0.b)		; 92 E0
	sbc $2FFE9E.l,X		; FF 9E FE 2F
	bpl  23.b		; 10 17
	php		; 08
	phd		; 0B
	tsb $03.b		; 04 03
	tsb $C8.b		; 04 C8
	ora $08FE18.l		; 0F 18 FE 08
	inc $FEC4.w,X		; FE C4 FE
	sbc $82EF26.l		; EF 26 EF 82
	sbc $FFFA4A.l		; EF 4A FA FF
	sbc $FEF29C.l		; EF 9C F2 FE
	sed		; F8
	phd		; 0B
	wai		; CB
	jsr ($FCD8.w,X)		; FC D8 FC
	cmp ($FC.b)		; D2 FC
	sta ($FC.b,S),Y		; 93 FC
	sta ($FF.b),Y		; 91 FF
	bcs -65.b		; B0 BF
	cmp $FF.b,S		; C3 FF
	lda $FF.b,S		; A3 FF
	and #$FBFF.w		; 29 FF FB
	brk $FE.b		; 00 FE
	sed		; F8
	ora $009E.w		; 0D 9E 00
	.db $42, $34		; 42 34
	sbc $AE03DB.l,X		; FF DB 03 AE
	ora $70FFC3.l,X		; 1F C3 FF 70
	inc $FB18.w,X		; FE 18 FB
	sta ($DF.b,X)		; 81 DF
	sty $F8.b		; 84 F8
	phd		; 0B
	jsr ($F114.w,X)		; FC 14 F1
	sbc $001E7F.l,X		; FF 7F 1E 00
	ldy $1E.b		; A4 1E
	inx		; E8
	sbc $1BBF07.l		; EF 07 BF 1B
	jmp ($E13E.w,X)		; 7C 3E E1
	stz $CB.b,X		; 74 CB
	pea $B59B.w		; F4 9B B5
	eor [$F0.b],Y		; 57 F0
	cmp $26.b,S		; C3 26
	sbc #$EEE0.w		; E9 E0 EE
	ora [$CE.b]		; 07 CE
	bit #$FF7F.w		; 89 7F FF
	lda $50A1FA.l,X		; BF FA A1 50
	ldx $F741.w,Y		; BE 41 F7
	sbc $2C0DF8.l,X		; FF F8 0D 2C
	jsr $E0CC.w		; 20 CC E0
	jsr ($FE01.w,X)		; FC 01 FE
	cpx #$0DF8.w		; E0 F8 0D
	ora ($00.b,X)		; 01 00
	sbc ($FF.b,X)		; E1 FF
	adc ($03.b),Y		; 71 03
	sta $F9F3.w,Y		; 99 F3 F9
	xce		; FB
	phd		; 0B
	inc $1A.b		; E6 1A
	inc A		; 1A
	nop		; EA
	sei		; 78
	bit $01.b,X		; 34 01
	ldx $D341.w,Y		; BE 41 D3
	sty $07EF.w		; 8C EF 07
	ora ($06.b,X)		; 01 06
	brk $05.b		; 00 05
	sbc ($FF.b),Y		; F1 FF
	sed		; F8
	sbc #$7EDB.w		; E9 DB 7E
	ldx $80C0.w,Y		; BE C0 80
	lda $5FDFCF.l,X		; BF CF DF 5F
	bvc -57.b		; 50 C7
	iny		; C8
	ora $578820.l,X		; 1F 20 88 57
	lsr $122C.w		; 4E 2C 12
	adc ($06.b,S),Y		; 73 06
	sty $20.b		; 84 20
.INDEX 16
	rep #$5D		; C2 5D
	pla		; 68
	jmp ($0028.w,X)		; 7C 28 00
	txy		; 9B
	cpy $F1.b		; C4 F1
	tsb $2EF7.w		; 0C F7 2E
	adc ($FD.b),Y		; 71 FD
	ora $E0DA3A.l,X		; 1F 3A DA E0
	bra  23.b		; 80 17
	inx		; E8
	sbc $EB.b,S		; E3 EB
	sbc ($0B.b,X)		; E1 0B
	cpx #$E20B.w		; E0 0B E2
	xba		; EB
	ora ($7F.b,X)		; 01 7F
	sbc $0B02FE.l,X		; FF FE 02 0B
	php		; 08
	ora [$0B.b],Y		; 17 0B
	trb $FE.b		; 14 FE
	sed		; F8
	ora #$14EB.w		; 09 EB 14
	php		; 08
	ora $E1DF08.l,X		; 1F 08 DF E1
	sbc $82.b,S		; E3 82
	cmp $DF4008.l,X		; DF 08 40 DF
	eor ($DF.b,X)		; 41 DF
	eor #$38FE.w		; 49 FE 38
	lda [$FF.b],Y		; B7 FF
	cpy #$00FA.w		; C0 FA 00
	sbc $E8E0.w,Y		; F9 E0 E8
	asl A		; 0A
	ora $7F6193.l		; 0F 93 61 7F
	rti		; 40

	and [$78.b],Y		; 37 78
	stx $8F.b,Y		; 96 8F
	adc $FE17.w,Y		; 79 17 FE
	sbc $1E.b,S		; E3 1E
	sbc $4E0E.w,Y		; F9 0E 4E
	lda ($FF.b,X)		; A1 FF
	ldy #$EC00.w		; A0 00 EC
	brk $7D.b		; 00 7D
	brk $F8.b		; 00 F8
	sbc $F1041F.l,X		; FF 1F 04 F1
	brk $E4.b		; 00 E4
	tsa		; 3B
	cpx $CCFB.w		; EC FB CC
	xce		; FB
	sta $BFD8F8.l,X		; 9F F8 D8 BF
	nop		; EA
	adc $39B48D.l,X		; 7F 8D B4 39
	tyx		; BB
	cmp $B3.b,S		; C3 B3
	ror $AF.b		; 66 AF
	ldy $F1.b		; A4 F1
	mvp $EA,$A1		; 44 A1 EA
	sbc $F3.b,X		; F5 F3
	adc $2A0E01.l,X		; 7F 01 0E 2A
	sbc ($C1.b,X)		; E1 C1
	tad		; 5B
	ora $AABB.w,X		; 1D BB AA
	cpx #$08FD.w		; E0 FD 08
	sbc ($FF.b)		; F2 FF
.ACCU 16
.INDEX 16
	rep #$BF		; C2 BF
	sbc $02.b		; E5 02
	sbc $25E509.l,X		; FF 09 E5 25
	sbc $DB18.w,X		; FD 18 DB
	pei ($3F.b)		; D4 3F
	sta ($D4.b,X)		; 81 D4
	tay		; A8
	txy		; 9B
	php		; 08
	lda $E69790.l		; AF 90 97 E6
	inc $1FE3.w,X		; FE E3 1F
	ror $00A9.w		; 6E A9 00
	pea $681C.w		; F4 1C 68
	brk $A8.b		; 00 A8
	sbc $DE41.w		; ED 41 DE
	eor ($D6.b,X)		; 41 D6
	ora $7F7EF1.l,X		; 1F F1 7E 7F
	cpy $F1.b		; C4 F1
	eor $FEE9.w,Y		; 59 E9 FE
	cmp ($00.b)		; D2 00
	lda ($01.b,X)		; A1 01
	sta ($E5.b,X)		; 81 E5
	stx $FE.b		; 86 FE
	sbc $FFA9.w,X		; FD A9 FF
	ora $9163.w		; 0D 63 91
	.db $82, $99, $A0		; 82 99 A0
	ora $19DFFE.l,X		; 1F FE DF 19
	sta ($6D.b),Y		; 91 6D
	sbc #$0003.w		; E9 03 00
	sta $80.b,S		; 83 80
	sta ($45.b,X)		; 81 45
	sed		; F8
	inc $B9FC.w,X		; FE FC B9
	jsr ($2CFF.w,X)		; FC FF 2C
	pla		; 68
	phd		; 0B
	jmp ($BFE3.w)		; 6C E3 BF
	php		; 08
	adc $06FE24.l		; 6F 24 FE 06
	adc $0A6F02.l		; 6F 02 6F 0A
	ora $FF108F.l		; 0F 8F 10 FF
	sbc ($FE.b),Y		; F1 FE
	sed		; F8
	phd		; 0B
	sbc $1F0910.l		; EF 10 09 1F
	sbc $D11F.w,Y		; F9 1F D1
	sbc $B1FE91.l,X		; FF 91 FE B1
	sbc $A12DEA.l,X		; FF EA 2D A1
	cpx #$E0E9.w		; E0 E9 E0
	cpx #$C00F.w		; E0 0F C0
	.db $82, $1D, $FE		; 82 1D FE
	sbc ($9B.b,S),Y		; F3 9B
	sta $123D.w,Y		; 99 3D 12
	sta ($2A.b,X)		; 81 2A
	sbc $C88F.w,Y		; F9 8F C8
	.db $82, $AF, $B1		; 82 AF B1
	sty $A9.b		; 84 A9
	lda ($01.b),Y		; B1 01
	inx		; E8
	sta $D7FFFF.l		; 8F FF FF D7
	bvc -105.b		; 50 97
	lda $93FED8.l,X		; BF D8 FE 93
	rol $BF94.w,X		; 3E 94 BF
	pea $B5FD.w		; F4 FD B5
	and $0077.w,X		; 3D 77 00
	and $80AFFC.l,X		; 3F FC AF 80
	cpy #$C180.w		; C0 80 C1
	cpy #$FCC1.w		; C0 C1 FC
	bra -61.b		; 80 C3
	cpy #$80C3.w		; C0 C3 80
	sbc $76047F.l,X		; FF 7F 04 76
	and #$E308.w		; 29 08 E3
	sbc $7FFF.w,X		; FD FF 7F
	sta $7E.b,S		; 83 7E
	sbc ($7D.b,S),Y		; F3 7D
	ora $027F7F.l,X		; 1F 7F 7F 02
	dey		; 88
	ora $28.b,S		; 03 28
	sbc [$C8.b],Y		; F7 C8
	ora [$07.b]		; 07 07
	jsr ($F0FC.w,X)		; FC FC F0
	sbc $830787.l,X		; FF 87 07 83
	ora $88.b,S		; 03 88
	cpx #$032A.w		; E0 2A 03
	xba		; EB
	iny		; C8
	ora $AB.b,X		; 15 AB
	xba		; EB
	ror $B984.w,X		; 7E 84 B9
	sbc ($51.b)		; F2 51
	tsb $08.b		; 04 08
	bvs -111.b		; 70 91
	cld		; D8
	cmp #$AF1F.w		; C9 1F AF
	phy		; 5A
	lda [$FF.b]		; A7 FF
	inc $FFC1.w,X		; FE C1 FF
	ror $F104.w,X		; 7E 04 F1
	inc $511F.w,X		; FE 1F 51
	adc ($AC.b),Y		; 71 AC
	cmp $F6.b,S		; C3 F6
	lda ($FF.b,X)		; A1 FF
	brk $FE.b		; 00 FE
	lda ($EA.b,X)		; A1 EA
	sta $7F.b,S		; 83 7F
	rep #$00		; C2 00
	ora ($D4.b,X)		; 01 D4
	adc $A0448F.l,X		; 7F 8F 44 A0
	xce		; FB
	sbc ($08.b),Y		; F1 08
	jsr ($FE00.w,X)		; FC 00 FE
	sbc $70.b,S		; E3 70
	and #$056F.w		; 29 6F 05
	inc $6F25.w,X		; FE 25 6F
	sed		; F8
	ora #$016F.w		; 09 6F 01
	bpl  32.b		; 10 20
	inc $F800.w,X		; FE 00 F8
	bpl  14.b		; 10 0E
	inc $5F21.w,X		; FE 21 5F
	sbc ($FE.b,X)		; E1 FE
	adc ($FF.b,X)		; 61 FF
	eor #$D158.w		; 49 58 D1
	brk $F8.b		; 00 F8
	ora $FFC78A.l		; 0F 8A C7 FF
	cld		; D8
	eor #$841D.w		; 49 1D 84
	ora [$DC.b]		; 07 DC
	lda $FE01.w,Y		; B9 01 FE
	php		; 08
	tsb $FE.b		; 04 FE
	.db $82, $FF, $FA		; 82 FF FA
	phk		; 4B
	ldy #$EEBF.w		; A0 BF EE
	sbc $9A3F8A.l,X		; FF 8A 3F 9A
	lda $D9A87F.l,X		; BF 7F A8 D9
	sbc $B13FB1.l,X		; FF B1 3F B1
	lda $04FFE1.l,X		; BF E1 FF 04
	cpy #$81FD.w		; C0 FD 81
	sbc $F8FAC3.l,X		; FF C3 FA F8
	ora #$0183.w		; 09 83 01
	sta [$3F.b]		; 87 3F
	sta $3E.b,S		; 83 3E
	sta $378F31.l		; 8F 31 8F 37
	plx		; FA
	sta $F0.b,S		; 83 F0
	sta $3D.b,S		; 83 3D
	plx		; FA
	adc $074703.l,X		; 7F 03 47 07
	eor $03.b,S		; 43 03
	inc $05E8.w,X		; FE E8 05
	plx		; FA
	inc $F91A.w,X		; FE 1A F9
	sbc #$11CC.w		; E9 CC 11
	cpy $D91A.w		; CC 1A D9
	inc $1E10.w,X		; FE 10 1E
	plx		; FA
	asl $EC9A.w,X		; 1E 9A EC
	jsl $80A200.l		; 22 00 A2 80
	php		; 08
	sbc ($FC.b),Y		; F1 FC
	plx		; FA
	txy		; 9B
	tsb $CC.b		; 04 CC
	bpl  15.b		; 10 0F
	and $11CD.w,X		; 3D CD 11
	ora ($DC.b,X)		; 01 DC
	ora ($E0.b,X)		; 01 E0
	bpl   0.b		; 10 00
	jsr ($0123.w,X)		; FC 23 01
	jsl $FCFD12.l		; 22 12 FD FC
	inc $80C0.w,X		; FE C0 80
	adc $338833.l,X		; 7F 33 88 33
	ora $8008C6.l		; 0F C6 08 80
	tyx		; BB
	bra  59.b		; 80 3B
	sed		; F8
	brk $FC.b		; 00 FC
	cpy $FE.b		; C4 FE
	jsr ($4410.w,X)		; FC 10 44
	plx		; FA
	pla		; 68
	sbc $FE8F08.l		; EF 08 8F FE
	bit $7F.b		; 24 7F
	ora ($FE.b)		; 12 FE
	asl $8F.b		; 06 8F
	cop $8F.b		; 02 8F
	asl A		; 0A
	sbc $F8FE0C.l		; EF 0C FE F8
	phd		; 0B
	cpy #$0EFF.w		; C0 FF 0E
	lsr $00.b		; 46 00
	beq  27.b		; F0 1B
	sbc $00C5FF.l,X		; FF FF C5 00
	ora $01F103.l,X		; 1F 03 F1 01
	ora $44.b		; 05 44
	ora $00.b		; 05 00
	brk $8D.b		; 00 8D
	adc ($0A.b,S),Y		; 73 0A
	jsr ($FFFF.w,X)		; FC FF FF
	cpy $A0D5.w		; CC D5 A0
	rti		; 40

	tay		; A8
	cpy #$C0CC.w		; C0 CC C0
	stz $9440.w		; 9C 40 94
	cpy #$C096.w		; C0 96 C0
	sta ($C0.b)		; 92 C0
	tax		; AA
	and $8263B3.l,X		; 3F B3 63 82
	lda $756A.w,X		; BD 6A 75
	sbc #$FCFE.w		; E9 FE FC
	ora $C903C2.l		; 0F C2 03 C9
	ora [$CF.b]		; 07 CF
	bit $FA7C.w,X		; 3C 7C FA
	asl $00C0.w		; 0E C0 00
	dex		; CA
	inc $C20C.w,X		; FE 0C C2
	adc ($03.b,S),Y		; 73 03
	adc [$08.b],Y		; 77 08
	ora $FA07FE.l		; 0F FE 07 FA
	adc ($02.b,S),Y		; 73 02
	adc [$00.b],Y		; 77 00
	sta [$03.b]		; 87 03
	inc $0073.w,X		; FE 73 00
	cpy $AA1B.w		; CC 1B AA
	bra -86.b		; 80 AA
	plx		; FA
	ora ($C4.b,X)		; 01 C4
	sed		; F8
	inc $33FA.w,X		; FE FA 33
	nop		; EA
	sta ($00.b,X)		; 81 00
	sbc [$80.b],Y		; F7 80
	plx		; FA
	sed		; F8
	inc $C1C2.w,X		; FE C2 C1
	plx		; FA
	cmp $AA1D.w		; CD 1D AA
	ora ($AB.b,X)		; 01 AB
	inx		; E8
	sed		; F8
	inc $FEE3.w,X		; FE E3 FE
	and ($01.b)		; 32 01
	adc [$FE.b],Y		; 77 FE
	and ($01.b,S),Y		; 33 01
	sed		; F8
	inc $0433.w,X		; FE 33 04
	bra -107.b		; 80 95
	bra  -5.b		; 80 FB
	sta $15.b,S		; 83 15
	and ($84.b,S),Y		; 33 84
	sed		; F8
	inc $80CC.w,X		; FE CC 80
	ror $EE80.w		; 6E 80 EE
	bra  -6.b		; 80 FA
	ora $FEF87F.l		; 0F 7F F8 FE
	adc #$05EF.w		; 69 EF 05
	sta $8F25FE.l		; 8F FE 25 8F
	and #$098F.w		; 29 8F 09
	sta $03F001.l		; 8F 01 F0 03
	inc $F800.w,X		; FE 00 F8
	bpl -95.b		; 10 A1
	cpy #$C0A9.w		; C0 A9 C0
	dey		; 88
	rti		; 40

.ACCU 16
	rep #$2B		; C2 2B
	inc $9340.w,X		; FE 40 93
	cpy #$C0B1.w		; C0 B1 C0
	pha		; 48
	inc $FEFE.w,X		; FE FE FE
	plp		; 28
	tay		; A8
	lsr $FC48.w		; 4E 48 FC
	sed		; F8
	inc $484E.w,X		; FE 4E 48
	jsr ($FEF8.w,X)		; FC F8 FE
	sta ($83.b)		; 92 83
	pha		; 48
	inc $F840.w,X		; FE 40 F8
	phd		; 0B
	pha		; 48
	rti		; 40

	sed		; F8
	ora ($00.b),Y		; 11 00
	plb		; AB
	inc $2927.w,X		; FE 27 29
	rti		; 40

	sed		; F8
	asl $3303.w		; 0E 03 33
	ora $E0.b,S		; 03 E0
	cpy #$0BF8.w		; C0 F8 0B
	inx		; E8
	ror $02.b,X		; 76 02
	cmp ($E2.b)		; D2 E2
	dec $B8E0.w,X		; DE E0 B8
	mvp $C3,$E1		; 44 E1 C3
	rti		; 40

	eor $28.b,X		; 55 28
	lda ($84.b,S),Y		; B3 84
	adc ($04.b,S),Y		; 73 04
	cpy #$D520.w		; C0 20 D5
	eor $C4B3F8.l,X		; 5F F8 B3 C4
	cpy $AEC0.w		; CC C0 AE
	cpy #$FE20.w		; C0 20 FE
	inc $804C.w,X		; FE 4C 80
	jmp.w [$1FFF]		; DC FF 1F
.ACCU 8
	sep #$E6		; E2 E6
	and $2A.b,S		; 23 2A
	adc [$F7.b],Y		; 77 F7
	adc [$FF.b],Y		; 77 FF
	adc $0B77FC.l,X		; 7F FC 77 0B
	inc $23FF.w,X		; FE FF 23
	jsl $F969DA.l		; 22 DA 69 F9
	inc $C1FF.w,X		; FE FF C1
	ldx #$AAEA.w		; A2 EA AA
	ldx #$F83D.w		; A2 3D F8
	sbc $FFFEF7.l,X		; FF F7 FE FF
	adc $FE7722.l,X		; 7F 22 77 FE
	sbc $0C0AF8.l,X		; FF F8 0A 0C
.ACCU 8
	sep #$22		; E2 22
	bmi  16.b		; 30 10
	nop		; EA
	cmp $FEF77F.l		; CF 7F F7 FE
	cmp ($D4.b),Y		; D1 D4
	sbc $E073FA.l		; EF FA 73 E0
	sed		; F8
	asl $FC68.w		; 0E 68 FC
	cpy #$8040.w		; C0 40 80
	and $597A7F.l,X		; 3F 7F 7A 59
	cmp $1F585E.l		; CF 5E 58 1F
	plp		; 28
	jsr ($7F40.w,X)		; FC 40 7F
	and $FE9935.l,X		; 3F 35 99 FE
	eor $FCE020.l,X		; 5F 20 E0 FC
	sta [$84.b],Y		; 97 84
	plb		; AB
	lda $00.b		; A5 00
	ora $E05120.l,X		; 1F 20 51 E0
	phx		; DA
	ldy #$4009.w		; A0 09 40
	cmp ($0B.b),Y		; D1 0B
	brk $55.b		; 00 55
	inc $FDE0.w,X		; FE E0 FD
	bra 127.b		; 80 7F
	cpy $512F.w		; CC 2F 51
	inc $FEFF.w,X		; FE FF FE
	cpx #$09F8.w		; E0 F8 09
	lda #$2F.b		; A9 2F
	lda $4F.b		; A5 4F
	sbc $EF.b		; E5 EF
	ora $0F.b		; 05 0F
	bit #$EF.b		; 89 EF
	and #$EF.b		; 29 EF
	ora ($AF.b,X)		; 01 AF
	jsl $EFC1EF.l		; 22 EF C1 EF
	lda $8AA650.l		; AF 50 A6 8A
	rts		; 60

	beq   9.b		; F0 09
	lda $C9.b,S		; A3 C9
	rol A		; 2A
	bpl  35.b		; 10 23
	sbc $F7FF62.l,X		; FF 62 FF F7
	lda ($FE.b,S),Y		; B3 FE
	sbc $FCE5F4.l		; EF F4 E5 FC
	cpx #$1BF8.w		; E0 F8 1B
	cmp ($DF.b),Y		; D1 DF
	jmp.w [$031F]		; DC 1F 03
	and $D8DF3C.l,X		; 3F 3C DF D8
	cmp $0F9F00.l,X		; DF 00 9F 0F
	sta $DFC7FA.l,X		; 9F FA C7 DF
	cmp $C27C20.l,X		; DF 20 7C C2
	inc $201F.w,X		; FE 1F 20
	sta $FEDFA0.l,X		; 9F A0 DF FE
	inc $FF.b,X		; F6 FF
	adc $31FEF8.l,X		; 7F F8 FE 31
	inc $F8DB.w,X		; FE DB F8
	adc $07FC.w,X		; 7D FC 07
	beq  30.b		; F0 1E
	sbc $F1FC.w,X		; FD FC F1
	sty $EF.b		; 84 EF
	phb		; 8B
	sbc $B22C.w,X		; FD 2C B2
	jsr ($B228.w,X)		; FC 28 B2
	plx		; FA
	plx		; FA
	jmp ($8FD1.w,X)		; 7C D1 8F
	sbc $FFDF3C.l,X		; FF 3C DF FF
	ora [$E3.b],Y		; 17 E3
	lda $B8EF16.l,X		; BF 16 EF B8
	sbc $FFBFC8.l,X		; FF C8 BF FF
	sbc [$F9.b],Y		; F7 F9
	adc $E2C282.l,X		; 7F 82 C2 E2
	sbc ($FC.b),Y		; F1 FC
	ora $005FFA.l,X		; 1F FA 5F 00
	and $0FE840.l		; 2F 40 E8 0F
	sbc $EF085F.l,X		; FF 5F 08 EF
	inx		; E8
	sbc $040FE4.l		; EF E4 0F 04
	sbc $02EF06.l		; EF 06 EF 02
	sbc $80EF0A.l		; EF 0A EF 80
	clv		; B8
	ora $B883D5.l		; 0F D5 83 B8
	inc $63.b,X		; F6 63
	inc $F066.w,X		; FE 66 F0
	ora #$EC.b		; 09 EC
	jsr ($1F11.w,X)		; FC 11 1F
	trb $F160.w		; 1C 60 F1
	eor #$0D.b		; 49 0D
	cmp ($CF.b),Y		; D1 CF
	jmp $119F87.l		; 5C 87 9F 11
	sta $FCFE60.l,X		; 9F 60 FE FC
	ldy #$6486.w		; A0 86 64
	jmp $815C30.l		; 5C 30 5C 81
.ACCU 16
.INDEX 16
	rep #$71		; C2 71
	sbc $1FF95E.l,X		; FF 5E F9 1F
	sbc ($FD.b,S),Y		; F3 FD
	cpx $93.b		; E4 93
	inc $FF.b,X		; F6 FF
	cpx #$768C.w		; E0 8C 76
	xce		; FB
	brk $F2.b		; 00 F2
	.db $62, $D2, $B0		; 62 D2 B0
	beq  94.b		; F0 5E
	jmp.w [$0B31]		; DC 31 0B
	cmp $6061.w,X		; DD 61 60
	and $0BA9FF.l		; 2F FF A9 0B
	eor [$FF.b]		; 47 FF
	lda $BECA5F.l		; AF 5F CA BE
	inc $000F.w,X		; FE 0F 00
	lda $FFAFFE.l		; AF FE AF FF
	brk $98.b		; 00 98
	phd		; 0B
	lda $3FFFCF.l,X		; BF CF FF 3F
	tyx		; BB
	beq  -2.b		; F0 FE
	lda ($43.b,S),Y		; B3 43
	jmp ($E980.w,X)		; 7C 80 E9
	ora $7C43C5.l		; 0F C5 43 7C
	ora $FE2F25.l		; 0F 25 2F FE
	and #$21FE.w		; 29 FE 21
	and $8B0FE1.l		; 2F E1 0F 8B
	sta ($84.b)		; 92 84
	sbc ($CF.b)		; F2 CF
	inc $40FF.w,X		; FE FF 40
	lda ($F4.b,X)		; A1 F4
	eor ($3A.b),Y		; 51 3A
	cpy #$FE38.w		; C0 38 FE
	mvp $FE,$FC		; 44 FC FE
	sbc $9F1C.w,X		; FD 1C 9F
	.db $42, $46		; 42 46
	cpy #$32FF.w		; C0 FF 32
	cmp $181F0F.l,X		; DF 0F 1F 18
	ora $3F1F07.l,X		; 1F 07 1F 3F
	brk $AA.b		; 00 AA
	sbc ($44.b)		; F2 44
	cmp $FF.b,S		; C3 FF
	inc $3D82.w,X		; FE 82 3D
	sed		; F8
	cmp [$FA.b]		; C7 FA
	adc $FA.b,X		; 75 FA
	ora $E0.b,X		; 15 E0
	inc A		; 1A
	and [$02.b],Y		; 37 02
	sbc $9EFAFA.l,X		; FF FA FA 9E
	asl A		; 0A
	sbc ($FA.b),Y		; F1 FA
	pha		; 48
	lsr A		; 4A
	bra  -1.b		; 80 FF
	plx		; FA
	inc $FC56.w,X		; FE 56 FC
	ldy $4BFF.w		; AC FF 4B
	sbc $105FEE.l,X		; FF EE 5F 10
	ora $F8FFE1.l,X		; 1F E1 FF F8
	cmp $79EFFF.l,X		; DF FF EF 79
	cpx #$4F4A.w		; E0 4A 4F
	brk $2C.b		; 00 2C
	cpy #$FEEF.w		; C0 EF FE
	cpx #$26FC.w		; E0 FC 26
	and $F9.b,S		; 23 F9
	tda		; 7B
	cli		; 58
	cpy #$C0F0.w		; C0 F0 C0
	lda ($59.b,S),Y		; B3 59
	cpy #$CCCC.w		; C0 CC CC
	cmp $023F80.l,X		; DF 80 3F 02
	tsx		; BA
	phb		; 8B
	eor $FCFE.w,X		; 5D FE FC
	and ($33.b,S),Y		; 33 33
	jsr ($71DA.w,X)		; FC DA 71
	tax		; AA
	cmp $B3.b,S		; C3 B3
	lda ($F7.b,S),Y		; B3 F7
	rti		; 40

	ora #$8C6A.w		; 09 6A 8C
	inc $E04C.w,X		; FE 4C E0
	sbc $8EF9.w,X		; FD F9 8E
	rts		; 60

	pld		; 2B
	sbc $8C8CF5.l,X		; FF F5 8C 8C
	cpx #$0DF8.w		; E0 F8 0D
	adc ($B3.b)		; 72 B3
	sbc $35DFDF.l,X		; FF DF DF 35
	and $84.b,X		; 35 84
	lda [$FD.b],Y		; B7 FD
	sty $10.b		; 84 10
	brk $2A.b		; 00 2A
	.db $42, $C5		; 42 C5
	jsr $E113.w		; 20 13 E1
	tda		; 7B
	and $B20A20.l,X		; 3F 20 0A B2
	lda ($ED.b)		; B2 ED
	sbc $DFA1.w		; ED A1 DF
	pha		; 48
	pha		; 48
	inx		; E8
	tad		; 5B
	cpx #$4DFD.w		; E0 FD 4D
	brk $12.b		; 00 12
	brk $B7.b		; 00 B7
	cpx #$12F8.w		; E0 F8 12
	inc $585F.w,X		; FE 5F 58
	cpx #$12F8.w		; E0 F8 12
	inc $F9FE.w,X		; FE FE F9
	plx		; FA
	stp		; DB
	pei ($37.b)		; D4 37
	sec		; 38
	lda ($BC.b,S),Y		; B3 BC
	jsr $E2CB.w		; 20 CB E2
	sbc $C92DAD.l,X		; FF AD 2D C9
	tsb $03.b		; 04 03
	plp		; 28
	ora [$D0.b]		; 07 D0
	ora $501F60.l		; 0F 60 1F 50
	rep #$00		; C2 00
	tsa		; 3B
	adc ($61.b,X)		; 61 61
	sbc $942B.w		; ED 2B 94
	sta $07E0EF.l,X		; 9F EF E0 07
	cld		; D8
	rtl		; 6B

	inc $0BF8.w,X		; FE F8 0B
	ora ($F0.b,X)		; 01 F0
	lda ($06.b),Y		; B1 06
	sbc $8D00FB.l,X		; FF FB 00 8D
	ora ($E9.b,X)		; 01 E9
	ora ($D3.b),Y		; 11 D3
	and $A3.b,S		; 23 A3
	eor $47.b,S		; 43 47
	sta [$BC.b]		; 87 BC
	lda ($03.b)		; B2 03
	jsr ($FF06.w,X)		; FC 06 FF
	sbc $F00EF8.l		; EF F8 0E F0
	trb $3CE0.w		; 1C E0 3C
	cpy #$8078.w		; C0 78 80
	sta $78990F.l		; 8F 0F 99 78
	wai		; CB
	ldy $5B90.w		; AC 90 5B
	sbc $06F96F.l,X		; FF 6F F9 06
	stz $B2.b		; 64 B2
	sed		; F8
	trb $BF9A.w		; 1C 9A BF
	sbc $2600D9.l,X		; FF D9 00 26
	ora ($EB.b,X)		; 01 EB
	tsb $FF.b		; 04 FF
.ACCU 16
.INDEX 16
	rep #$B5		; C2 B5
	lsr A		; 4A
	jmp $25B3.w		; 4C B3 25
	phx		; DA
	pha		; 48
	lda $884222.l,X		; BF 22 42 88
	asl $B4FE.w		; 0E FE B4
	sbc $6F005F.l,X		; FF 5F 00 6F
	brk $BA.b		; 00 BA
	eor $15.b		; 45 15
	ror A		; 6A
	tax		; AA
	eor $51.b,X		; 55 51
	ldx $DD2A.w		; AE 2A DD
	eor $E0.b,X		; 55 E0
	sed		; F8
	bpl -11.b		; 10 F5
	sbc $0DF8C0.l,X		; FF C0 F8 0D
	sta ($29.b,X)		; 81 29
.INDEX 8
	sep #$50		; E2 50
	ora $B301.w		; 0D 01 B3
	cop $67.b		; 02 67
	ora $BB.b		; 05 BB
	eor $B36F17.l		; 4F 17 6F B3
	pld		; 2B
	jmp ($2053.w,X)		; 7C 53 20
	cpx #$EB.b		; E0 EB
	tax		; AA
	tsb $8A.b		; 04 8A
	ror $1FE0.w,X		; 7E E0 1F
	cpy $9F3F.w		; CC 3F 9F
	and $6B7BBC.l		; 2F BC 7B 6B
	cpy #$FF.b		; C0 FF
	cpy $C1.b		; C4 C1
	and $BFF1.w		; 2D F1 BF
	lda $F78B8B.l,X		; BF 8B 8B F7
	sbc $0B30E4.l,X		; FF E4 30 0B
	rti		; 40

	sbc $C9B974.l,X		; FF 74 B9 C9
	cop $FF.b		; 02 FF
	ora $FE.b		; 05 FE
	phd		; 0B
	jsr ($E8E7.w,X)		; FC E7 E8
	cpy $F7D0.w		; CC D0 F7
	sbc $3FAF98.l,X		; FF 98 AF 3F
	eor $07FC20.l,X		; 5F 20 FC 07
	sed		; F8
	ora $E33CF0.l,X		; 1F F0 3C E3
	adc [$CF.b],Y		; 77 CF
	sbc $107F80.l		; EF 80 7F 10
	adc [$87.b]		; 67 87
	cmp $03.b,S		; C3 03
	sta $050D.w		; 8D 0D 05
	ora $F7.b		; 05 F7
	ora [$B1.b]		; 07 B1
	and $BAE8.w		; 2D E8 BA
	pla		; 68
.ACCU 8
.INDEX 8
	sep #$F2		; E2 F2
.ACCU 16
	rep #$E9		; C2 E9
	stz $1984.w,X		; 9E 84 19
	sty $82.b,X		; 94 82
	brk $EA.b		; 00 EA
	sbc $78E594.l,X		; FF 94 E5 78
	asl A		; 0A
	bvc  96.b		; 50 60
	phd		; 0B
	asl $AA84.w,X		; 1E 84 AA
	sbc $73FF9C.l,X		; FF 9C FF 73
	tda		; 7B
	ldx $A6.b		; A6 A6
	and ($83.b)		; 32 83
	sbc $4A4A32.l,X		; FF 32 4A 4A
	tsx		; BA
	cpx $FC.b		; E4 FC
	tda		; 7B
	sty $A6.b		; 84 A6
	eor $CD32.w,Y		; 59 32 CD
	lsr A		; 4A
	plb		; AB
	sbc $FA05B5.l,X		; FF B5 05 FA
	cpx #$F8.b		; E0 F8
	ora $E09CF6.l		; 0F F6 9C E0
	sed		; F8
	asl A		; 0A
	ora ($D4.b,X)		; 01 D4
	sbc $FAA9.w,X		; FD A9 FA
	tda		; 7B
	stz $BF.b,X		; 74 BF
	ror $A0BF.w,X		; 7E BF A0
	and $E09F10.l		; 2F 10 9F E0
	and $044976.l,X		; 3F 76 49 04
	cmp #$7F07.w		; C9 07 7F
	sta $545FBF.l		; 8F BF 5F 54
	clv		; B8
	.db $82, $9C, $63		; 82 9C 63
	sta $FC.b,S		; 83 FC
	ror A		; 6A
	inc $00.b,X		; F6 00
	sta $FFFE.w,X		; 9D FE FF
	rol $FFB4.w		; 2E B4 FF
	sed		; F8
	asl $0001.w		; 0E 01 00
	ora ($11.b)		; 12 11
	tsb $03.b		; 04 03
	php		; 08
	ora [$A1.b]		; 07 A1
	asl $3FC0.w,X		; 1E C0 3F
	tax		; AA
	adc ($AD.b,X)		; 61 AD
	adc $65.b,X		; 75 65
	ldx $EFFF.w		; AE FF EF
	bit $31.b		; 24 31
	cmp $11.b		; C5 11
	beq  59.b		; F0 3B
	eor #$387F.w		; 49 7F 38
	cld		; D8
.INDEX 16
	rep #$9F		; C2 9F
	sbc $901F.w,X		; FD 1F 90
	eor $FE9F50.l,X		; 5F 50 9F FE
	stx $19.b,Y		; 96 19
	sta $9C2854.l,X		; 9F 54 28 9C
	bpl   4.b		; 10 04
	cpx $F8FE.w		; EC FE F8
	ora #$8CD0.w		; 09 D0 8C
	cmp [$41.b]		; C7 41
	ldy $F950.w,X		; BC 50 F9
	bmi -49.b		; 30 CF
	adc $D086.w,Y		; 79 86 D0
	rts		; 60

	ora ($7B.b,S),Y		; 13 7B
	adc $9924.w		; 6D 24 99
	clv		; B8
	.db $62, $F7, $50		; 62 F7 50
	lda $417456.l		; AF 56 74 41
	ldx $1460.w		; AE 60 14
	ply		; 7A
	ora [$AB.b]		; 07 AB
	bvs 102.b		; 70 66
	sbc #$23A4.w		; E9 A4 23
	pha		; 48
	asl A		; 0A
	sbc $E00970.l,X		; FF 70 09 E0
	jsr ($5AFB.w,X)		; FC FB 5A
	brk $A1.b		; 00 A1
	lda $AA.b,X		; B5 AA
	cpx #$14F8.w		; E0 F8 14
	rol $5A.b		; 26 5A
	bit #$01B1.w		; 89 B1 01
	cpx #$07FE.w		; E0 FE 07
.ACCU 16
	rep #$6D		; C2 6D
	lda ($C0.b),Y		; B1 C0
	sed		; F8
	phd		; 0B
	tax		; AA
	inc $E3AD.w,X		; FE AD E3
	ldy #$7DFE.w		; A0 FE 7D
	inc $E0.b,X		; F6 E0
	sed		; F8
	ora $E0FEC0.l		; 0F C0 FE E0
	sed		; F8
	ora $F5FCFD.l		; 0F FD FC F5
	sbc ($57.b,S),Y		; F3 57
	tda		; 7B
	sta $30.b		; 85 30
	bcs -128.b		; B0 80
	cpy #$FCFE.w		; C0 FE FC
	ora $F0.b,S		; 03 F0
	rtl		; 6B

	eor ($41.b),Y		; 51 41
	lsr $FFF0.w,X		; 5E F0 FF
	adc $70F70A.l,X		; 7F 0A F7 70
	sta $7885.w,X		; 9D 85 78
	cmp $D383.w,Y		; D9 83 D3
	bit $CE.b		; 24 CE
	eor ($00.b),Y		; 51 00
	asl $4D.b		; 06 4D
	ldx $5D.b,Y		; B6 5D
	sed		; F8
	cmp ($E9.b),Y		; D1 E9
	phx		; DA
	and ($FF.b),Y		; 31 FF
	sta ($C8.b,X)		; 81 C8
	and ($FC.b,S),Y		; 33 FC
	tsb $04.b		; 04 04
	sbc $6FFFB0.l,X		; FF B0 FF 6F
	cmp $D7B581.l,X		; DF 81 B5 D7
	bit $2277.w,X		; 3C 77 22
	jmp $C58E.w		; 4C 8E C5
	cmp $39.b,X		; D5 39
	cli		; 58
	cmp ($F1.b,S),Y		; D3 F1
	bcc  -4.b		; 90 FC
	sbc $FD14E2.l		; EF E2 14 FD
	jsr $0CFF.w		; 20 FF 0C
	plx		; FA
	cpy #$00E7.w		; C0 E7 00
	cpy #$DDFC.w		; C0 FC DD
	cmp ($96.b,S),Y		; D3 96
	sta $C0E4D3.l		; 8F D3 E4 C0
	eor #$C0B2.w		; 49 B2 C0
	sbc $848D.w,X		; FD 8D 84
	sbc ($FE.b),Y		; F1 FE
	stz $C0.b,X		; 74 C0
	brk $07.b		; 00 07
	sbc $C1DFBC.l,X		; FF BC DF C1
	sbc $C0.b,X		; F5 C0
	rti		; 40

	txa		; 8A
	sta $82.b		; 85 82
	sbc ($C0.b,S),Y		; F3 C0
	sbc $C1FF9C.l		; EF 9C FF C1
	cpy #$1600.w		; C0 00 16
	tad		; 5B
	ply		; 7A
	phy		; 5A
	adc #$80CA.w		; 69 CA 80
	sed		; F8
	tsb $C2C0.w		; 0C C0 C2
	bra  -8.b		; 80 F8
	tsb $8000.w		; 0C 00 80
	sed		; F8
	ora #$B765.w		; 09 65 B7
	cpy #$80FD.w		; C0 FD 80
	sed		; F8
	ora #$40C0.w		; 09 C0 40
	sed		; F8
	ora $B748.w		; 0D 48 B7
	rti		; 40

	sed		; F8
	asl $FF07.w		; 0E 07 FF
	ror $FEC0.w		; 6E C0 FE
	stz $23.b,X		; 74 23
	rti		; 40

	stz $F000.w,X		; 9E 00 F0
	clc		; 18
	sta $FFFEC0.l,X		; 9F C0 FE FF
	and $17.b,S		; 23 17
	ora ($E0.b)		; 12 E0
	adc $01.b,X		; 75 01
	brk $FB.b		; 00 FB
	sbc #$7581.w		; E9 81 75
	sta ($83.b),Y		; 91 83
	sta $FE.b,S		; 83 FE
	and ($ED.b,X)		; 21 ED
	tax		; AA
	sbc $0911C0.l,X		; FF C0 11 09
	adc ($6C.b)		; 72 6C
	ror A		; 6A
	lda $F06D.w,Y		; B9 6D F0
	ora $80.b,S		; 03 80
	ora $03.b,S		; 03 03
	tsb $5F0F.w		; 0C 0F 5F
	and $CF03.w,X		; 3D 03 CF
	sbc ($F3.b,S),Y		; F3 F3
	bmi  63.b		; 30 3F
	sbc [$21.b],Y		; F7 21
	and $7A.b		; 25 7A
	lda ($E9.b,X)		; A1 E9
	bmi  -1.b		; 30 FF
	tsb $C03E.w		; 0C 3E C0
	tas		; 1B
	cmp $C3.b,S		; C3 C3
	bit $E63F.w,X		; 3C 3F E6
	beq  51.b		; F0 33
	and ($44.b,X)		; 21 44
	sbc $CCE1CC.l,X		; FF CC E1 CC
	plx		; FA
	bit $F0EC.w,X		; 3C EC F0
	sta ($E6.b,X)		; 81 E6
	sbc ($E8.b,X)		; E1 E8
	ora #$3F3F.w		; 09 3F 3F
	cmp $F3.b,S		; C3 F3
	cpx $007E.w		; EC 7E 00
	jsr ($33CF.w,X)		; FC CF 33
	jsr ($CCC3.w,X)		; FC C3 CC
	bmi -30.b		; 30 E2
	dex		; CA
	jsr $EA1F.w		; 20 1F EA
	jsr ($FCFE.w,X)		; FC FE FC
	and ($33.b,S),Y		; 33 33
	cmp $CF.b,S		; C3 CF
	rts		; 60

	sed		; F8
	ldy $F0.b,X		; B4 F0
	beq  63.b		; F0 3F
	jsr ($3FC3.w,X)		; FC C3 3F
	jsr ($C203.w,X)		; FC 03 C2
	brk $CC.b		; 00 CC
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	tsb $CFFE.w		; 0C FE CF
	cmp $1C2173.l		; CF 73 21 1C
	jsr ($9E3C.w,X)		; FC 3C 9E
	cmp $A4.b,S		; C3 A4
	cmp $543330.l		; CF 30 33 54
	brk $FD.b		; 00 FD
	mvn $E0,$EA		; 54 EA E0
	sed		; F8
	asl A		; 0A
	trb $BC11.w		; 1C 11 BC
	ror $0084.w,X		; 7E 84 00
	jmp ($3080.w)		; 6C 80 30
	phx		; DA
	asl A		; 0A
	bmi -11.b		; 30 F5
	ldx #$C01B.w		; A2 1B C0
	sed		; F8
	phd		; 0B
	inc $67.b		; E6 67
	sbc ($CF.b,S),Y		; F3 CF
	cpy #$A241.w		; C0 41 A2
	sta $3FCF.w,Y		; 99 CF 3F
	and ($7F.b,S),Y		; 33 7F
	.db $82, $F8, $0C		; 82 F8 0C
	sed		; F8
	sbc $D6C5FE.l,X		; FF FE C5 D6
	brk $84.b		; 00 84
	pla		; 68
	php		; 08
	bpl -103.b		; 10 99
	ora $35.b,X		; 15 35
	cmp ($F2.b)		; D2 F2
	sta $179FFD.l		; 8F FD 9F 17
	sbc ($D0.b,S),Y		; F3 D0
	sbc $F7C3.w,Y		; F9 C3 F7
	inx		; E8
	sbc ($EA.b,X)		; E1 EA
	brk $2D.b		; 00 2D
	brk $FE.b		; 00 FE
	sbc $C17EE8.l,X		; FF E8 7E C1
	beq   0.b		; F0 00
	ora #$E2B8.w		; 09 B8 E2
	ldy $7901.w		; AC 01 79
	rti		; 40

	adc [$AB.b]		; 67 AB
	lda #$624F.w		; A9 4F 62
	sbc $619787.l,X		; FF 87 97 61
.INDEX 8
	sep #$53		; E2 53
	rol A		; 2A
	bit #$00BD.w		; 89 BD 00
	mvn $78,$00		; 54 00 78
	brk $17.b		; 00 17
	sbc $0011.w		; ED 11 00
	ora $56.b		; 05 56
	cpy #$F8.b		; C0 F8
	asl $C0AB.w		; 0E AB C0
	sed		; F8
	inc A		; 1A
	inx		; E8
	cpy #$F8.b		; C0 F8
	ora $FE17.w		; 0D 17 FE
	xce		; FB
	ora [$C0.b]		; 07 C0
	inc $3417.w,X		; FE 17 34
	cmp $07FFE0.l,X		; DF E0 FF 07
	cld		; D8
	rol $FEC0.w,X		; 3E C0 FE
	xba		; EB
	ora $3F.b,S		; 03 3F
	sta ($FE.b),Y		; 91 FE
	ora $C036F8.l,X		; 1F F8 36 C0
	sbc $037FA0.l		; EF A0 7F 03
	sbc $831E.w,Y		; F9 1E 83
	lda $999966.l,X		; BF 66 99 99
	cpy #$BE.b		; C0 BE
	eor $01F7.w,Y		; 59 F7 01
	eor $7FFC0F.l,X		; 5F 0F FC 7F
	inc $4FF0.w,X		; FE F0 4F
	rol A		; 2A
	eor $0FF9E4.l,X		; 5F E4 F9 0F
	inc $7F.b		; E6 7F
	stz $FCF9.w,X		; 9E F9 FC
	ora $E7E6.w,Y		; 19 E6 E7
	eor $9998FF.l,X		; 5F FF 98 99
	ror $3FFF.w,X		; 7E FF 3F
	beq  72.b		; F0 48
	inc $D0.b,X		; F6 D0
	sta $01.b		; 85 01
	stz $7887.w,X		; 9E 87 78
	bra 103.b		; 80 67
	tas		; 1B
	jsr ($009F.w,X)		; FC 9F 00
	adc [$87.b]		; 67 87
	eor #$C060.w		; 49 60 C0
	adc ($28.b,X)		; 61 28
	ora $0FFC00.l		; 0F 00 FC 0F
	brk $70.b		; 00 70
	sbc [$F3.b],Y		; F7 F3
	plx		; FA
	sty $F373.w		; 8C 73 F3
	ldx $7379.w,Y		; BE 79 73
	tsb $F8E0.w		; 0C E0 F8
	ora ($CC.b),Y		; 11 CC
	and ($1F.b,S),Y		; 33 1F
	.db $82, $FC, $33		; 82 FC 33
	ora $FC.b,S		; 03 FC
	bmi   3.b		; 30 03
	cpx #$0F.b		; E0 0F
	sed		; F8
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	adc ($58.b,X)		; 61 58
	tsb $5AF2.w		; 0C F2 5A
	sbc $0CF3.w,Y		; F9 F3 0C
	bit $F333.w,X		; 3C 33 F3
	cpy $003C.w		; CC 3C 00
	cmp $AF.b,S		; C3 AF
	sbc $010D30.l,X		; FF 30 0D 01
	and [$C4.b],Y		; 37 C4
	cpy #$0DF8.w		; C0 F8 0D
	pla		; 68
	sbc ($00.b),Y		; F1 00
	cmp $C33DC0.l		; CF C0 3D C3
	sbc [$0C.b],Y		; F7 0C
	adc $10DFA1.l,X		; 7F A1 DF 10
	adc $08FCC2.l,X		; 7F C2 FC 08
	sbc $FCE02C.l		; EF 2C E0 FC
	inx		; E8
	ora $D6FF10.l		; 0F 10 FF D6
	sbc #$CC56.w		; E9 56 CC
	stx $FF.b		; 86 FF
	.db $42, $FF		; 42 FF
	php		; 08
	sbc $33.b,S		; E3 33
	sbc ($48.b,X)		; E1 48
	bcs -116.b		; B0 8C
	inc $30.b,X		; F6 30
	cmp $33.b,S		; C3 33
	bra 122.b		; 80 7A
	bra -24.b		; 80 E8
	rol $09F0.w,X		; 3E F0 09
	asl $CFB1.w,X		; 1E B1 CF
	cmp $9A7CCC.l		; CF CC 7C 9A
	bcs   6.b		; B0 06
	cpy $F0F6.w		; CC F6 F0
	cpy #$C15E.w		; C0 5E C1
	ldx #$09F8.w		; A2 F8 09
	bmi -91.b		; 30 A5
	sta [$C3.b]		; 87 C3
	ora ($F1.b),Y		; 11 F1
	and ($3C.b,S),Y		; 33 3C
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	cpy $DE0C.w		; CC 0C DE
	brk $49.b		; 00 49
	clc		; 18
	tsb $C0C0.w		; 0C C0 C0
	rti		; 40

	sed		; F8
	ora $3CC37F.l		; 0F 7F C3 3C
	tsx		; BA
	sbc $32CFE7.l,X		; FF E7 CF 32
	rep #$0F		; C2 0F
	bmi -32.b		; 30 E0
	sed		; F8
	bpl -50.b		; 10 CE
	cmp $DDAABE.l		; CF BE AA DD
	eor $FF5F.w,Y		; 59 5F FF
	lda $6A57.w,X		; BD 57 6A
	ldx $6DB4.w		; AE B4 6D
	bcs  13.b		; B0 0D
	eor [$F8.b]		; 47 F8
	bmi -77.b		; 30 B3
	lda #$A2.b		; A9 A2
	brk $A8.b		; 00 A8
	sbc [$FF.b],Y		; F7 FF
	rol $F1.b		; 26 F1
	cop $00.b		; 02 00
.INDEX 16
	rep #$12		; C2 12
	and #$DC.b		; 29 DC
	jmp.w [$61FF]		; DC FF 61
	tda		; 7B
	sta ($FE.b,S),Y		; 93 FE
	stz $C7.b,X		; 74 C7
	ldy $FFFF.w,X		; BC FF FF
	adc $07FCE0.l,X		; 7F E0 FC 07
	sbc ($20.b),Y		; F1 20
	and $00.b,S		; 23 00
	txs		; 9A
	brk $64.b		; 00 64
	brk $0B.b		; 00 0B
	brk $43.b		; 00 43
	ora $C2.b,S		; 03 C2
	sbc $F3601F.l,X		; FF 1F 60 F3
	cpy #$AABF.w		; C0 BF AA
	cmp $027F50.l,X		; DF 50 7F 02
	sbc $8711.w,Y		; F9 11 87
	sta $50C0BF.l		; 8F BF C0 50
	jsr $66E1.w		; 20 E1 66
	cpy #$AF01.w		; C0 01 AF
	ora $E17FFD.l		; 0F FD 7F E1
	sbc $FD.b,S		; E3 FD
	lda $60B3.w,Y		; B9 B3 60
	sta $8106DD.l,X		; 9F DD 06 81
	sei		; 78
	cli		; 58
	and $8686.w,Y		; 39 86 86
	adc ($66.b,X)		; 61 66
	eor [$FF.b],Y		; 57 FF
	clc		; 18
	sta $3E01.w,Y		; 99 01 3E
	rts		; 60

	sbc ($98.b,S),Y		; F3 98
	lda $7321.w,Y		; B9 21 73
	ora ($FE.b,X)		; 01 FE
	ror $00.b		; 66 00
	ora $FE00.w,Y		; 19 00 FE
	ora $61.b		; 05 61
	adc $F1.b		; 65 F1
	adc $E678.w,Y		; 79 78 E6
	rts		; 60

	sta [$9E.b]		; 87 9E
	adc $8FF201.l,X		; 7F 01 F2 8F
	sta [$FF.b]		; 87 FF
	and [$B9.b],Y		; 37 B9
	sei		; 78
	sta [$C4.b]		; 87 C4
	stz $F961.w,X		; 9E 61 F9
	asl $1E.b		; 06 1E
	rts		; 60

	inc $66.b		; E6 66
	asl $8602.w,X		; 1E 02 86
	bcs  17.b		; B0 11
	sta $E76119.l,X		; 9F 19 61 E7
	adc $0CBB.w,Y		; 79 BB 0C
	bmi  -5.b		; 30 FB
	ror $99.b		; 66 99
	cpy $E0.b		; C4 E0
	ora $FFE6.w,Y		; 19 E6 FF
	ora ($F1.b,X)		; 01 F1
	adc $6067.w,Y		; 79 67 60
	adc $0100.w,Y		; 79 00 01
	sta $7EE0.w,Y		; 99 E0 7E
	bmi -11.b		; 30 F5
	sbc ($60.b,X)		; E1 60
	stz $6198.w,X		; 9E 98 61
	sei		; 78
	dex		; CA
	plx		; FA
	adc ($FF.b,S),Y		; 73 FF
	cpy #$E600.w		; C0 00 E6
	inc $98.b,X		; F6 98
	adc [$BA.b]		; 67 BA
	bne  63.b		; D0 3F
	adc $E7C3.w,X		; 7D C3 E7
	iny		; C8
	cmp ($1F.b,X)		; C1 1F
	ora $0787.w,Y		; 19 87 07
	ror $06.b		; 66 06
	sbc $E34A.w,Y		; F9 4A E3
	nop		; EA
	ror $4A.b,X		; 76 4A
	cpy #$F807.w		; C0 07 F8
	sbc ($86.b),Y		; F1 86
	ora [$7F.b]		; 07 7F
	sty $8F00.w		; 8C 00 8F
	tsb $44FC.w		; 0C FC 44
	lda $F380.w,Y		; B9 80 F3
	beq   3.b		; F0 03
	brk $80.b		; 00 80
	cli		; 58
	nop		; EA
	sbc $FF.b,X		; F5 FF
	tsb $B9D1.w		; 0C D1 B9
	rts		; 60

	beq -35.b		; F0 DD
	eor ($8C.b),Y		; 51 8C
	and $FC73FC.l,X		; 3F FC 73 FC
	ora $3F.b,S		; 03 3F
	tsb $31CD.w		; 0C CD 31
	cpx #$CCFC.w		; E0 FC CC
	cpy #$3FC3.w		; C0 C3 3F
	ply		; 7A
	sta [$CC.b]		; 87 CC
	sbc $B1.b,S		; E3 B1
	cpx #$CCFD.w		; E0 FD CC
	and ($C3.b,S),Y		; 33 C3
	dey		; 88
	sbc ($3F.b),Y		; F1 3F
	cpy #$0131.w		; C0 31 01
	jsr ($427E.w,X)		; FC 7E 42
	sbc $F8E0.w		; ED E0 F8
	cmp $FF0C.w,Y		; D9 0C FF
	ora $F80B0F.l		; 0F 0F 0B F8
	bit $DF2F.w,X		; 3C 2F DF
	rti		; 40

	sbc ($FF.b)		; F2 FF
	sbc ($F3.b),Y		; F1 F3
	ora $0E0FF0.l		; 0F F0 0F 0E
	bit $BFC3.w,X		; 3C C3 BF
	cpy #$BEC0.w		; C0 C0 BE
	sta ($61.b),Y		; 91 61
	and $06B0FC.l,X		; 3F FC B0 06
	sbc $3333BD.l		; EF BD 33 33
	iny		; C8
	cpx $D9BE.w		; EC BE D9
	ora $E0.b,S		; 03 E0
	php		; 08
	lda ($C3.b,X)		; A1 C3
	and ($BD.b,S),Y		; 33 BD
	brk $C3.b		; 00 C3
	bmi  63.b		; 30 3F
	pla		; 68
	adc $F1.b		; 65 F1
	bit $F33C.w,X		; 3C 3C F3
	bmi -61.b		; 30 C3
	cmp $F428DA.l		; CF DA 28 F4
	plx		; FA
	sbc #$C3.b		; E9 C3
	clc		; 18
	asl $CFFA.w		; 0E FA CF
	bmi -38.b		; 30 DA
	ora $1EF330.l		; 0F 30 F3 1E
	ldy #$1796.w		; A0 96 17
	eor $0CCF.w,Y		; 59 CF 0C
	bmi -25.b		; 30 E7
	xba		; EB
	cmp $20.b,S		; C3 20
	sbc ($CE.b,X)		; E1 CE
	cmp $7CB9.w,Y		; D9 B9 7C
	cmp $F17A.w,Y		; D9 7A F1
	bit $218B.w,X		; 3C 8B 21
	and ($30.b,S),Y		; 33 30
	bit $5A4D.w,X		; 3C 4D 5A
	bra -16.b		; 80 F0
	cmp $8080CC.l		; CF CC 80 80
	sbc ($FB.b,S),Y		; F3 FB
	cop $D4.b		; 02 D4
	inc $01.b		; E6 01
	brk $F1.b		; 00 F1
	and ($DE.b,S),Y		; 33 DE
	lda ($C3.b,S),Y		; B3 C3
	jmp $059720.l		; 5C 20 97 05
	sbc ($0C.b),Y		; F1 0C
	cmp $F2.b,S		; C3 F2
	sta ($7B.b),Y		; 91 7B
	cpx #$E101.w		; E0 01 E1
	cpy #$F3FC.w		; C0 FC F3
	sbc ($B0.b),Y		; F1 B0
	cmp ($00.b,X)		; C1 00
	sbc $1E08F5.l,X		; FF F5 08 1E
	lsr $8780.w,X		; 5E 80 87
	inc $FF.b		; E6 FF
	sbc ($92.b,X)		; E1 92
	cpx #$E1BC.w		; E0 BC E1
	rts		; 60

	sbc ($9E.b)		; F2 9E
	sbc ($F6.b,X)		; E1 F6
	and $F14E87.l,X		; 3F 87 4E F1
	sbc ($D9.b,S),Y		; F3 D9
	stp		; DB
	adc $71.b,X		; 75 71
	asl $1E.b		; 06 1E
	sei		; 78
	adc $E700.w,Y		; 79 00 E7
	ora [$FC.b]		; 07 FC
	eor $6179EA.l,X		; 5F EA 79 61
	sta $7166F8.l,X		; 9F F8 66 71
	stx $E11E.w		; 8E 1E E1
	adc $3686.w,Y		; 79 86 36
	.db $42, $FF		; 42 FF
	sbc $F8BC60.l,X		; FF 60 BC F8
	sed		; F8
	ror $6619.w,X		; 7E 19 66
	inc $F979.w,X		; FE 79 F9
	sta $7EFF.w,Y		; 99 FF 7E
	sbc [$E7.b]		; E7 E7
	sta $D007.w,Y		; 99 07 D0
	clc		; 18
	adc $BC07F8.l,X		; 7F F8 07 BC
	nop		; EA
	dec $B2.b,X		; D6 B2
	adc $E3.b,S		; 63 E3
	sbc $7980FF.l,X		; FF FF 80 79
	ora $8606.w,Y		; 19 06 86
	adc $E079.w,Y		; 79 79 E0
	inc $9F.b		; E6 9F
	sbc $FF66.w,Y		; F9 66 FF
	tya		; 98
	sbc $F78061.l,X		; FF 61 80 F7
	inc $F1E2.w,X		; FE E2 F1
	stx $E6.b		; 86 E6
	ora $EE7F.w,Y		; 19 7F EE
	sta [$87.b]		; 87 87
	sbc $796161.l,X		; FF 61 61 79
	sed		; F8
	stz $6678.w,X		; 9E 78 66
	sbc ($99.b,X)		; E1 99
	ora $DE9F.w,Y		; 19 9F DE
	sta $0067.w,Y		; 99 67 00
	clc		; 18
	stx $E2.b		; 86 E2
	cpy #$817E.w		; C0 7E 81
	ror $F8.b,X		; 76 F8
	ldx $609F.w,Y		; BE 9F 60
	jsr $E12B.w		; 20 2B E1
	stz $61E2.w,X		; 9E E2 61
	ror $06.b		; 66 06
	sta ($FF.b,X)		; 81 FF
	lda ($98.b,X)		; A1 98
	sbc [$81.b]		; E7 81
	ror $E7FF.w,X		; 7E FF E7
	sta $9E1EE1.l,X		; 9F E1 1E 9E
	cmp $7C3D86.l		; CF 86 3D 7C
	pea $66D9.w		; F4 D9 66
	jmp ($99FC.w,X)		; 7C FC 99
	sta ($60.b,X)		; 81 60
	sbc $9F.b,S		; E3 9F
	ora ($67.b,X)		; 01 67
	stx $7F.b		; 86 7F
	ora $00.b,S		; 03 00
.INDEX 8
	sep #$D9		; E2 D9
	sta $DBD3.w,Y		; 99 D3 DB
	cpx $28.b		; E4 28
	tsb $C6.b		; 04 C6
	ldx $3A.b,Y		; B6 3A
	cpy #$FC.b		; C0 FC
	sbc ($00.b,S),Y		; F3 00
	sbc ($08.b)		; F2 08
	ora $F9A8.w,X		; 1D A8 F9
	jsr ($129F.w,X)		; FC 9F 12
	cmp ($FF.b),Y		; D1 FF
	adc [$2C.b]		; 67 2C
	inc $6CEA.w,X		; FE EA 6C
	sbc #$00.b		; E9 00
	rts		; 60

	inc $8FFE.w,X		; FE FE 8F
	tsb $8F7F.w		; 0C 7F 8F
	sta $8007FF.l		; 8F FF 07 80
	sta $F3.b,S		; 83 F3
	sbc $F080F0.l,X		; FF F0 80 F0
	adc $8FF38C.l,X		; 7F 8C F3 8F
	bvs  76.b		; 70 4C
	cli		; 58
	inc $FC.b,X		; F6 FC
	sta $7C.b,S		; 83 7C
	ror A		; 6A
	rol A		; 2A
	cpx #$7D.b		; E0 7D
	sbc ($3C.b),Y		; F1 3C
	bit $A8EF.w,X		; 3C EF A8
	brk $F3.b		; 00 F3
	ora $FF.b,S		; 03 FF
	cmp $FCF1C4.l		; CF C4 F1 FC
	and ($F1.b,S),Y		; 33 F1
	rol A		; 2A
	sbc ($DE.b),Y		; F1 DE
	lda [$E4.b],Y		; B7 E4
	pea $633C.w		; F4 3C 63
	jsr ($0C3F.w,X)		; FC 3F 0C
	asl A		; 0A
	cmp ($FC.b),Y		; D1 FC
	cpy $3FFF.w		; CC FF 3F
	brk $D1.b		; 00 D1
	tsb $87F5.w		; 0C F5 87
	rol $0CD1.w,X		; 3E D1 0C
	bit $78E1.w		; 2C E1 78
	lsr $C03F.w		; 4E 3F C0
	bit $030C.w,X		; 3C 0C 03
	cmp $C0.b,S		; C3 C0
	lda ($80.b),Y		; B1 80
	beq -13.b		; F0 F3
	cmp $FF.b		; C5 FF
	bit $D2.b		; 24 D2
.INDEX 8
	sep #$1E		; E2 1E
	rts		; 60

	sbc ($C0.b),Y		; F1 C0
	sed		; F8
	asl A		; 0A
	cmp $C3.b,S		; C3 C3
	bmi -61.b		; 30 C3
	lda $33.b		; A5 33
	beq -120.b		; F0 88
	txa		; 8A
	cpy $CF.b		; C4 CF
	dec $E9AA.w,X		; DE AA E9
	jmp $E0F1.w		; 4C F1 E0
	sbc $BEC8.w,X		; FD C8 BE
	ora $D3.b,X		; 15 D3
	brk $C0.b		; 00 C0
	beq   2.b		; F0 02
	cmp ($30.b),Y		; D1 30
	and ($03.b,S),Y		; 33 03
	cpy #$36.b		; C0 36
	rti		; 40

	cpy $E9D1.w		; CC D1 E9
	sbc $0F399F.l,X		; FF 9F 39 0F
	inx		; E8
	dec $6933.w,X		; DE 33 69
	mvn $DB,$EE		; 54 EE DB
	cpx #$CC.b		; E0 CC
	cpy #$E3.b		; C0 E3
	and $E1.b,S		; 23 E1
	adc $E9.b,S		; 63 E9
	tsb $85.b		; 04 85
	sbc $ACD3.w,X		; FD D3 AC
	nop		; EA
	cld		; D8
	cmp #$95.b		; C9 95
	.db $82, $FF, $00		; 82 FF 00
	cpy #$FC.b		; C0 FC
	sbc ($A1.b,S),Y		; F3 A1
	sbc #$F9.b		; E9 F9
	cpy $38F8.w		; CC F8 38
	beq -48.b		; F0 D0
	sbc ($10.b,X)		; E1 10
	cpx #$E1.b		; E0 E1
	sta ($07.b,S),Y		; 93 07
	nop		; EA
	dec A		; 3A
	sed		; F8
	ora [$FF.b]		; 07 FF
	beq  -5.b		; F0 FB
	ora [$F7.b]		; 07 F7
	ora $DD1FEE.l		; 0F EE 1F DD
	rol $18BB.w,X		; 3E BB 18
	sbc $FBFE66.l,X		; FF 66 FE FB
	cmp $FE.b,X		; D5 FE
	sta ($07.b,X)		; 81 07
	bcc -31.b		; 90 E1
	adc ($9F.b,X)		; 61 9F
	sbc [$1E.b]		; E7 1E
	sbc ($E5.b,X)		; E1 E5
	adc ($F4.b,X)		; 61 F4
	clc		; 18
	ora #$BF.b		; 09 BF
	jmp.w [$0FDF]		; DC DF 0F
	clc		; 18
	ror $F966.w,X		; 7E 66 F9
	stz $AAE7.w,X		; 9E E7 AA
	sbc ($E6.b),Y		; F1 E6
	sta [$7F.b]		; 87 7F
	stz $F5E1.w,X		; 9E E1 F5
	sbc $A47EEF.l,X		; FF EF 7E A4
.ACCU 16
	rep #$E0		; C2 E0
	sed		; F8
	asl A		; 0A
	adc ($78.b,X)		; 61 78
	sei		; 78
	sta $79FF06.l,X		; 9F 06 FF 79
	stz $79E6.w,X		; 9E E6 79
	eor [$F8.b],Y		; 57 F8
	cpx #$9F.b		; E0 9F
	adc [$98.b]		; 67 98
	ror A		; 6A
.ACCU 8
	sep #$E0		; E2 E0
	sed		; F8
	ora $61E8.w		; 0D E8 61
	stz $F907.w,X		; 9E 07 F9
	tyx		; BB
.ACCU 8
	sep #$E6		; E2 E6
	ora $E1921E.l,X		; 1F 1E 92 E1
	stx $79.b		; 86 79
	jsr $0F30.w		; 20 30 0F
	rol $C6B1.w,X		; 3E B1 C6
	sta $A0FF.w,Y		; 99 FF A0
	inc $18.b		; E6 18
	sbc $E7867F.l,X		; FF 7F 86 E7
	adc $811F.w,Y		; 79 1F 81
	sbc $FEF448.l		; EF 48 F4 FE
	lda $09F8E0.l		; AF E0 F8 09
	bne -23.b		; D0 E9
	sbc [$87.b]		; E7 87
	adc $E57F.w,Y		; 79 7F E5
	sbc $DEFF17.l,X		; FF 17 FF DE
	inc $99CB.w,X		; FE CB 99
	.db $82, $D3, $88		; 82 D3 88
	sbc $38.b,X		; F5 38
	lda $B614.w,Y		; B9 14 B6
.ACCU 8
.INDEX 8
	sep #$7F		; E2 7F
	sbc [$E8.b],Y		; F7 E8
	sbc $BD1F.w,Y		; F9 1F BD
	inc $A1F8.w		; EE F8 A1
	stx $F9.b		; 86 F9
	ror $C0.b		; 66 C0
	inx		; E8
	jsr ($F00F.w,X)		; FC 0F F0
	and $BB41FF.l,X		; 3F FF 41 BB
	pei ($FF.b)		; D4 FF
	sed		; F8
	lda $60E7FF.l,X		; BF FF E7 60
	sta $487E81.l,X		; 9F 81 7E 48
	tsb $B5E1.w		; 0C E1 B5
	adc $31E0.w,X		; 7D E0 31
	inx		; E8
	sbc $FFA0.w,X		; FD A0 FF
	adc ($13.b,S),Y		; 73 13
	sbc ($33.b,X)		; E1 33
	pei ($E1.b)		; D4 E1
	bvs -113.b		; 70 8F
	wai		; CB
	and [$FD.b],Y		; 37 FD
	lda $E20C.w,X		; BD 0C E2
	rts		; 60

	sed		; F8
	ora $333F0C.l		; 0F 0C 3F 33
	jsr ($F3CF.w,X)		; FC CF F3
	tax		; AA
	sbc ($F3.b),Y		; F1 F3
	cmp $3F.b,S		; C3 3F
	inc $20F0.w,X		; FE F0 20
	and ($C0.b)		; 32 C0
	sed		; F8
	ora $3C3C30.l		; 0F 30 3C 3C
	cmp $FCFF03.l		; CF 03 FF FC
	sbc ($3C.b,S),Y		; F3 3C
	beq  42.b		; F0 2A
	sty $CF.b		; 84 CF
	cpy #$39.b		; C0 39
	ror A		; 6A
	sbc ($E0.b,X)		; E1 E0
	sed		; F8
	ora $30E8.w		; 0D E8 30
	cpx #$77.b		; E0 77
	adc $FC.b,S		; 63 FC
	sbc ($0F.b,S),Y		; F3 0F
	ora $C3E192.l		; 0F 92 E1 C3
	bit $F8A0.w,X		; 3C A0 F8
	ora ($00.b),Y		; 11 00
	dec $CC.b		; C6 CC
	ora $B5.b		; 05 B5
	and ($F1.b,S),Y		; 33 F1
	cmp [$BA.b],Y		; D7 BA
	eor $4E.b		; 45 4E
	cmp ($FF.b,X)		; C1 FF
	clv		; B8
	ora $E136.w		; 0D 36 E1
	bit $049E.w,X		; 3C 9E 04
	cpy $A2E9.w		; CC E9 A2
	sbc #$0C.b		; E9 0C
	cpy $A0F0.w		; CC F0 A0
	cpy #$F8.b		; C0 F8
	ora $F57AE6.l		; 0F E6 7A F5
	dey		; 88
	cpy $3C03.w		; CC 03 3C
	cpy #$F2.b		; C0 F2
	cmp $A23C.w,Y		; D9 3C A2
	cpx #$F8.b		; E0 F8
	asl $0FFC.w		; 0E FC 0F
	ora $FD.b		; 05 FD
	sbc $CAD633.l,X		; FF 33 D6 CA
	pha		; 48
	tsb $E0E1.w		; 0C E1 E0
	sed		; F8
	ora ($18.b),Y		; 11 18
	adc $67E6.w,Y		; 79 E6 67
	eor $F898FF.l,X		; 5F FF 98 F8
	ora [$9E.b]		; 07 9E
	rts		; 60

	sta $622A97.l,X		; 9F 97 2A 62
	jsr $FE10.w		; 20 10 FE
	ora $1880.w,Y		; 19 80 18
	bra   7.b		; 80 07
	eor $8618FF.l,X		; 5F FF 18 86
	sei		; 78
	ora ($81.b,X)		; 01 81
	asl $F7.b		; 06 F7
	sta ($E0.b),Y		; 91 E0
	sed		; F8
	bpl   6.b		; 10 06
	sbc $607F.w,Y		; F9 7F 60
	asl $F8.b		; 06 F8
	adc $7818FF.l,X		; 7F FF 18 78
	adc [$80.b]		; 67 80
	stz $7900.w,X		; 9E 00 79
	asl $E0.b		; 06 E0
	sed		; F8
	ora ($7F.b),Y		; 11 7F
	tya		; 98
	tya		; 98
	ora ($00.b,X)		; 01 00
	ror $7F.b		; 66 7F
	sbc $01.b,X		; F5 01
	adc ($9F.b,X)		; 61 9F
	ora $7F.b		; 05 7F
	ora [$FF.b],Y		; 17 FF
	lsr $F8E0.w,X		; 5E E0 F8
	ora #$40.b		; 09 40
	pea $F112.w		; F4 12 F1
	adc $7F.b		; 65 7F
	sbc $7F9755.l,X		; FF 55 97 7F
	lsr $7AFF.w,X		; 5E FF 7A
	sbc $F9EE.w,Y		; F9 EE F9
	ldy #$98.b		; A0 98
	.db $62, $F1, $28		; 62 F1 28
	inc $40.b,X		; F6 40
	pea $7FFC.w		; F4 FC 7F
	bra -23.b		; 80 E9
	cpx #$B8.b		; E0 B8
	sbc ($80.b,X)		; E1 80
	sta $9E00.w,Y		; 99 00 9E
	ora ($87.b,X)		; 01 87
	brk $7E.b		; 00 7E
	mvn $F0,$F7		; 54 F7 F0
	plp		; 28
	sbc [$A0.b],Y		; F7 A0
	sbc $C9D8.w,X		; FD D8 C9
	clc		; 18
	sbc [$7E.b]		; E7 7E
	bit #$07.b		; 89 07
	cpx #$0B.b		; E0 0B
	sta [$80.b]		; 87 80
	ora $6079.w,Y		; 19 79 60
	sed		; F8
	ora ($24.b)		; 12 24
	ora $9E06.w,Y		; 19 06 9E
	.db $82, $A1, $7E		; 82 A1 7E
	brk $E7.b		; 00 E7
	clc		; 18
	stx $D9.b		; 86 D9
	cmp #$82.b		; C9 82
	clc		; 18
	ora ($0C.b),Y		; 11 0C
	jsr ($7373.w,X)		; FC 73 73
	sty $8418.w		; 8C 18 84
	txa		; 8A
	sta $00FE70.l		; 8F 70 FE 00
	sed		; F8
	ora ($E0.b,S),Y		; 13 E0
	bcs -96.b		; B0 A0
	cpy #$FE.b		; C0 FE
	ora $0C.b,S		; 03 0C
	eor [$F1.b]		; 47 F1
	plx		; FA
	stx $D1.b,Y		; 96 D1
	bmi  -8.b		; 30 F8
	cpx #$F8.b		; E0 F8
	bpl  86.b		; 10 56
	and $FDFC30.l,X		; 3F 30 FC FD
	lda $CFC0.w,Y		; B9 C0 CF
	brk $F2.b		; 00 F2
	asl $E13C.w,X		; 1E 3C E1
	clv		; B8
	ora $3FE0.w		; 0D E0 3F
	cpy $D163.w		; CC 63 D1
	and ($00.b,S),Y		; 33 00
	bmi -94.b		; 30 A2
	eor [$FA.b]		; 47 FA
	bmi -72.b		; 30 B8
	cpx #$F8.b		; E0 F8
	ora ($CC.b),Y		; 11 CC
	bmi  48.b		; 30 30
	ldy $88.b		; A4 88
	dec A		; 3A
	sbc $00.b		; E5 00
	ldx #$B9.b		; A2 B9
	cmp #$E0.b		; C9 E0
	sed		; F8
	bpl -61.b		; 10 C3
	bmi   0.b		; 30 00
	rti		; 40

	bra  -3.b		; 80 FD
.ACCU 16
	rep #$A2		; C2 A2
	cmp $55.b,S		; C3 55
	sta $6E.b,S		; 83 6E
	sta ($E0.b,X)		; 81 E0
	sed		; F8
	ora ($D8.b),Y		; 11 D8
	cmp #$C9F5.w		; C9 F5 C9
	rol A		; 2A
	eor ($F0.b,X)		; 41 F0
	cld		; D8
	ora [$8C.b],Y		; 17 8C
	rts		; 60

	sed		; F8
	ora ($33.b,S),Y		; 13 33
	cpy $F60F.w		; CC 0F F6
	cmp $5AC2.w,Y		; D9 C2 5A
	lda $B6C3.w,Y		; B9 C3 B6
	cmp $76.b,X		; D5 76
	cpx #$F8.b		; E0 F8
	bpl  -7.b		; 10 F9
	tax		; AA
	sbc ($E0.b),Y		; F1 E0
	stx $6171.w		; 8E 71 61
	php		; 08
	tda		; 7B
	and ($E1.b,X)		; 21 E1
	inc $0EF8.w,X		; FE F8 0E
	tad		; 5B
	cmp ($98.b),Y		; D1 98
	brk $79.b		; 00 79
	adc ($71.b)		; 72 71
	sta $31DA.w,Y		; 99 DA 31
	xce		; FB
	cmp #$E0F8.w		; C9 F8 E0
	sed		; F8
	ora $070008.l		; 0F 08 00 07
	iny		; C8
	nop		; EA
	phx		; DA
	brk $20.b		; 00 20
	cpy #$DE.b		; C0 DE
	inc $E0DE.w,X		; FE DE E0
	sed		; F8
	ora $EE0140.l		; 0F 40 01 EE
.INDEX 16
	rep #$9E		; C2 9E
	phy		; 5A
	and $40E4.w,Y		; 39 E4 40
	adc $FC.b,S		; 63 FC
	txs		; 9A
	phk		; 4B
	cmp ($FE.b,X)		; C1 FE
	sed		; F8
	asl $C487.w		; 0E 87 C4
	asl $A001.w,X		; 1E 01 A0
	inc $A9.b,X		; F6 A9
	cpy #$F4FA.w		; C0 FA F4
	ror $00.b		; 66 00
	brk $E0.b		; 00 E0
	sed		; F8
	bpl -94.b		; 10 A2
	stz $3186.w,X		; 9E 86 31
	inc A		; 1A
	sep #$80		; E2 80
	cpx #$BC9F.w		; E0 9F BC
	cpx #$0FF8.w		; E0 F8 0F
	rts		; 60

	ora #$A200.w		; 09 00 A2
	phy		; 5A
	sep #$C4		; E2 C4
	trb $00.b		; 14 00
	pei ($A1.b)		; D4 A1
	cmp $F860.w,Y		; D9 60 F8
	bpl -26.b		; 10 E6
	plx		; FA
	brk $C0.b		; 00 C0
	cpx $D8.b		; E4 D8
	inc $80.b,X		; F6 80
	rti		; 40

	sed		; F8
	ora ($18.b),Y		; 11 18
	wai		; CB
	jsr ($F0EA.w,X)		; FC EA F0
	jmp $7ADE70.l		; 5C 70 DE 7A
	lsr $FA88.w,X		; 5E 88 FA
	inc $0DF8.w,X		; FE F8 0D
	cpy $3C00.w		; CC 00 3C
	cpy $FA71.w		; CC 71 FA
	sbc ($A0.b,S),Y		; F3 A0
	ldx #$FCF8.w		; A2 F8 FC
	sta ($E1.b,X)		; 81 E1
	inc $0EF8.w,X		; FE F8 0E
	and $EAF1.w		; 2D F1 EA
	pha		; 48
	ror A		; 6A
	jsl $FEE2F1.l		; 22 F1 E2 FE
	cpx #$0FF8.w		; E0 F8 0F
	dex		; CA
	lda #$F144.w		; A9 44 F1
	tsb $FE84.w		; 0C 84 FE
	sed		; F8
	jsr ($E03F.w,X)		; FC 3F E0
	sed		; F8
	ora ($C3.b)		; 12 C3
	brk $CD.b		; 00 CD
	ora ($0E.b,X)		; 01 0E
	sbc $3C03EB.l,X		; FF EB 03 3C
	ora [$38.b]		; 07 38
	ora $C32F21.l		; 0F 21 2F C3
	lsr $BC87.w,X		; 5E 87 BC
	tax		; AA
	cpy $1C.b		; C4 1C
	.db $82, $E1, $FF		; 82 E1 FF
	eor [$1E.b],Y		; 57 1E
	cmp $3C.b,S		; C3 3C
	sta [$78.b]		; 87 78
	sta [$F4.b]		; 87 F4
	phd		; 0B
	inx		; E8
	trb $30D0.w		; 1C D0 30
	trb $49.b		; 14 49
	clv		; B8
	jsr ($82B8.w,X)		; FC B8 82
	inc $F00F.w		; EE 0F F0
	ora $C081D6.l,X		; 1F D6 81 C0
	inc $0088.w,X		; FE 88 00
	tax		; AA
	ora $E280C2.l		; 0F C2 80 E2
	lda $BA.b		; A5 BA
	lda ($D9.b,X)		; A1 D9
	rts		; 60

	sed		; F8
	bpl  34.b		; 10 22
	plp		; 28
	asl $12.b,X		; 16 12
	adc $80F6E9.l,X		; 7F E9 F6 80
	rti		; 40

	sed		; F8
	ora ($9D.b),Y		; 11 9D
	sta $82.b		; 85 82
	tax		; AA
	sbc [$92.b],Y		; F7 92
	ldx $1AC2.w		; AE C2 1A
	bra  13.b		; 80 0D
	cpx #$0BF8.w		; E0 F8 0B
	brk $7C.b		; 00 7C
	rtl		; 6B

	sei		; 78
	cpx #$10F8.w		; E0 F8 10
	brk $7C.b		; 00 7C
	jmp ($E02A.w,X)		; 7C 2A E0
	sei		; 78
	clc		; 18
	ora $E7E053.l,X		; 1F 53 E0 E7
	sbc $EB0FE1.l,X		; FF E1 0F EB
	ror $1EB1.w		; 6E B1 1E
	sbc $00F7F8.l,X		; FF F8 F7 00
	cpx #$9189.w		; E0 89 91
	sta ($F8.b,X)		; 81 F8
	phd		; 0B
	inc $FF.b		; E6 FF
	cmp $E6.b,S		; C3 E6
	adc $FE9E7F.l,X		; 7F 7F 9E FE
	inc $F97F.w,X		; FE 7F F9
	inc $997E.w,X		; FE 7E 99
	lda ($E7.b,X)		; A1 E7
	sbc $FE.b,X		; F5 FE
	sei		; 78
	ora $A9E2.w,Y		; 19 E2 A9
	adc $610BC8.l,X		; 7F C8 0B 61
	adc ($9E.b,X)		; 61 9E
	jsl $FE7FC1.l		; 22 C1 7F FE
	sta $DF6F7C.l,X		; 9F 7C 6F DF
	ror $7FF8.w,X		; 7E F8 7F
	sbc ($BF.b),Y		; F1 BF
	adc $9E.b,S		; 63 9E
	tya		; 98
	ora $DD98.w,Y		; 19 98 DD
	eor $07.b,S		; 43 07
	sbc $1CFF0E.l,X		; FF 0E FF 1C
	sed		; F8
	sbc $F9C7A9.l,X		; FF A9 C7 F9
	bit #$1FFE.w		; 89 FE 1F
	sbc ($39.b,X)		; E1 39
	dec $E77F.w,X		; DE 7F E7
	sta $DFFE.w,Y		; 99 FE DF
	asl $E661.w,X		; 1E 61 E6
	tya		; 98
	sec		; 38
	sbc $C11876.l,X		; FF 76 18 C1
	dec $FC.b		; C6 FC
	sta $E19999.l,X		; 9F 99 99 E1
	rol $ABFC.w,X		; 3E FC AB
	sbc $78FF86.l,X		; FF 86 FF 78
	sta $9F61FC.l,X		; 9F FC 61 9F
	ror $6601.w,X		; 7E 01 66
	asl A		; 0A
	cmp $FF.b,S		; C3 FF
	eor $BD.b		; 45 BD
	and ($FF.b,X)		; 21 FF
	inx		; E8
	eor #$86CF.w		; 49 CF 86
	ror $8570.w,X		; 7E 70 85
	sbc ($86.b,X)		; E1 86
	sbc [$98.b]		; E7 98
	ora $EB3F.w,Y		; 19 3F EB
	adc $420BD0.l,X		; 7F D0 0B 42
	xce		; FB
	eor $09FF7E.l		; 4F 7E FF 09
	lda $1BF1.w,X		; BD F1 1B
	xce		; FB
	inc $F9.b		; E6 F9
	tya		; 98
	adc [$FE.b]		; 67 FE
	sta $E14A.w,Y		; 99 4A E1
	.db $42, $53		; 42 53
	ora ($CC.b),Y		; 11 CC
	tda		; 7B
	inc $6467.w,X		; FE 67 64
	sbc $07C3F9.l,X		; FF F9 C3 07
	sbc $E759.w,Y		; F9 59 E7
	ldx $F867.w,Y		; BE 67 F8
	adc [$9F.b]		; 67 9F
	ora $D47F.w,Y		; 19 7F D4
	sta [$EC.b]		; 87 EC
	lda $B8.b,S		; A3 B8
	ora #$E290.w		; 09 90 E2
	inc $0007.w,X		; FE 07 00
	sbc $1BFA.w,Y		; F9 FA 1B
	trb $19E6.w		; 1C E6 19
	sbc $E902.w,Y		; F9 02 E9
	ora $01E5.w,Y		; 19 E5 01
	bne  16.b		; D0 10
	ror $99.b		; 66 99
	dec $062A.w,X		; DE 2A 06
	sta ($7E.b,X)		; 81 7E
	clc		; 18
	sta ($3C.b,X)		; 81 3C
	cmp $4119.w,Y		; D9 19 41
	cmp #$6864.w		; C9 64 68
	phd		; 0B
	adc $FCE1.w		; 6D E1 FC
	sbc $8679F9.l,X		; FF F9 79 86
	asl $F999.w,X		; 1E 99 F9
	ror $1E.b		; 66 1E
	bra -31.b		; 80 E1
	clc		; 18
	stx $80.b		; 86 80
	tya		; 98
	nop		; EA
	sbc $F8E061.l,X		; FF 61 E0 F8
	phd		; 0B
	ldy $9EA2.w,X		; BC A2 9E
	sbc ($60.b,X)		; E1 60
	asl $F9E1.w,X		; 1E E1 F9
	asl $66.b		; 06 66
	ora ($99.b,X)		; 01 99
	rts		; 60

	brk $C6.b		; 00 C6
	ror $BE.b		; 66 BE
	and ($A2.b,S),Y		; 33 A2
	sed		; F8
	tsb $8606.w		; 0C 06 86
	ora [$80.b]		; 07 80
	sbc $7F1E.w,Y		; F9 1E 7F
	cpx #$C323.w		; E0 23 C3
	inc $F5.b,X		; F6 F5
	ora $9D6118.l,X		; 1F 18 61 9D
	sbc ($80.b),Y		; F1 80
	sed		; F8
	bpl -103.b		; 10 99
	adc [$E7.b]		; 67 E7
	ror $E6.b		; 66 E6
	sta $0679.w,Y		; 99 79 06
	adc $F86231.l		; 6F 31 62 F8
	cpx #$E066.w		; E0 66 E0
	sed		; F8
	phd		; 0B
	clc		; 18
	iny		; C8
	cmp ($E0.b,X)		; C1 E0
	stz $FDDC.w,X		; 9E DC FD
	mvp $E6,$18		; 44 18 E6
	stx $A2.b		; 86 A2
	cmp ($86.b),Y		; D1 86
	rts		; 60

	rti		; 40

	sed		; F8
	ora ($81.b,S),Y		; 13 81
	ror $61.b		; 66 61
	stz $A93B.w,X		; 9E 3B A9
	adc ($18.b,X)		; 61 18
	adc [$5C.b]		; 67 5C
	cmp ($01.b),Y		; D1 01
	asl $A0.b		; 06 A0
	rol $FE7C.w,X		; 3E 7C FE
	inc $FF08.w,X		; FE 08 FF
	cpx $A6D9.w		; EC D9 A6
	sbc $F1E4E0.l,X		; FF E0 E4 F1
	sbc $1203.w,Y		; F9 03 12
	cmp [$E4.b]		; C7 E4
	sbc $8A6CE4.l,X		; FF E4 6C 8A
	sbc ($E3.b)		; F2 E3
	ora $0C0FF6.l,X		; 1F F6 0F 0C
	sbc $7E3FD8.l,X		; FF D8 3F 7E
	cmp ($BF.b,X)		; C1 BF
	ora ($9F.b,X)		; 01 9F
	mvp $E9,$BF		; 44 BF E9
	ldx $E0E6.w,Y		; BE E6 E0
	adc ($9F.b,X)		; 61 9F
	ror $1F.b		; 66 1F
	asl $807F.w		; 0E 7F 80
	lda $FCE0.w,Y		; B9 E0 FC
	rol $D9.b		; 26 D9
	tax		; AA
	ror $99.b		; 66 99
	ora $FE18E0.l,X		; 1F E0 18 FE
	stz $70E1.w,X		; 9E E1 70
	cop $E1.b		; 02 E1
	sbc $1E6161.l,X		; FF 61 61 1E
	rol $8707.w,X		; 3E 07 87
	stz $8785.w,X		; 9E 85 87
	ora ($D1.b,S),Y		; 13 D1
	lsr A		; 4A
	sbc ($E2.b,S),Y		; F3 E2
	stx $79.b		; 86 79
	ora [$F8.b]		; 07 F8
	sta [$83.b]		; 87 83
	sta [$1F.b]		; 87 1F
	rts		; 60

	rts		; 60

	ldx $315A.w,Y		; BE 5A 31
	sta $981EFE.l,X		; 9F FE 1E 98
	pld		; 2B
	trb $99E0.w		; 1C E0 99
	ora $15FA.w,Y		; 19 FA 15
	dec A		; 3A
	lda $E0B8.w,Y		; B9 B8 E0
	ora $43DE19.l,X		; 1F 19 DE 43
	and [$00.b]		; 27 00
	asl $80.b		; 06 80
	tya		; 98
	ora [$D1.b]		; 07 D1
	stz $791E.w,X		; 9E 1E 79
	ora ($67.b,X)		; 01 67
	ldy #$DA0D.w		; A0 0D DA
	cpx #$6798.w		; E0 98 67
	adc ($E9.b)		; 72 E9
	sbc ($C3.b,X)		; E1 C3
	ora $9867B6.l		; 0F B6 67 98
	phx		; DA
	sta [$18.b]		; 87 18
	adc $6119.w,Y		; 79 19 61
	cpx #$80BB.w		; E0 BB 80
	cpx #$0667.w		; E0 67 06
	eor $B9.b		; 45 B9
	stz $9BE1.w,X		; 9E E1 9B
	sta $0CCC.w,Y		; 99 CC 0C
	beq  10.b		; F0 0A
	ply		; 7A
	ldx #$999A.w		; A2 9A 99
	clc		; 18
	stz $8403.w,X		; 9E 03 84
	bra -128.b		; 80 80
	ror $E0.b		; 66 E0
	inc $78.b		; E6 78
	cmp $66C451.l		; CF 51 C4 66
	tya		; 98
	bra -118.b		; 80 8A
	sbc ($80.b,S),Y		; F3 80
	sbc ($10.b),Y		; F1 10
	inc $99.b,X		; F6 99
	dec $AAFF.w,X		; DE FF AA
	brk $79.b		; 00 79
	ora $59.b,S		; 03 59
	sta [$86.b]		; 87 86
	adc $016100.l,X		; 7F 00 61 01
	sta $7E01.w,Y		; 99 01 7E
	asl $E719.w,X		; 1E 19 E7
	tsb $8537.w		; 0C 37 85
	sbc $A8BA4A.l,X		; FF 4A BA A8
	and #$E16C.w		; 29 6C E1
	ora $971E4B.l		; 0F 4B 1E 97
	and [$27.b],Y		; 37 27
	rts		; 60

	sbc $7941FF.l,X		; FF FF 41 79
	lda $F860F8.l,X		; BF F8 60 F8
	ora $33F9E6.l,X		; 1F E6 F9 33
	jsr ($F867.w,X)		; FC 67 F8
	cmp [$F8.b]		; C7 F8
	sta ($4B.b,X)		; 81 4B
	clc		; 18
	inc $C03F.w,X		; FE 3F C0
	stz $99.b		; 64 99
	adc ($7D.b,S),Y		; 73 7D
	stz $8C3E.w,X		; 9E 3E 8C
	ora $81F9.w,X		; 1D F9 81
	sbc $AE1E67.l,X		; FF 67 1E AE
	ror $D599.w,X		; 7E 99 D5
	sbc $0878F1.l,X		; FF F1 78 08
	txs		; 9A
	cpy $A2.b		; C4 A2
	pea $7EDB.w		; F4 DB 7E
	sta $7F1986.l,X		; 9F 86 19 7F
	asl $E6FE.w,X		; 1E FE E6
	sbc $9FFF00.l,X		; FF 00 FF 9F
	adc $E679.w,Y		; 79 79 E6
	asl $9F.b		; 06 9F
	ror $A681.w,X		; 7E 81 A6
	asl $E6E1.w		; 0E E1 E6
	jmp $609FB6.l		; 5C B6 9F 60
	asl A		; 0A
	sta ($75.b,X)		; 81 75
	stz $2E78.w,X		; 9E 78 2E
	ldy #$6579.w		; A0 79 65
	sbc #$E6FF.w		; E9 FF E6
	sbc ($81.b,X)		; E1 81
	pha		; 48
	sbc ($02.b),Y		; F1 02
	sty $DE.b		; 84 DE
	lda ($5F.b,X)		; A1 5F
	inc $3D.b,X		; F6 3D
	jmp $A57E.w		; 4C 7E A5
	eor $F89902.l,X		; 5F 02 99 F8
	ror $86.b		; 66 86
	sbc [$19.b]		; E7 19
	cpy $91.b		; C4 91
	sep #$C0		; E2 C0
	brk $0F.b		; 00 0F
	iny		; C8
	ldx $A4C0.w,Y		; BE C0 A4
	cpx #$67F8.w		; E0 F8 67
	xba		; EB
	ora $1998E2.l		; 0F E2 98 19
	tsx		; BA
	lda ($41.b,X)		; A1 41
	lda ($FF.b),Y		; B1 FF
	adc $F8E7.w,Y		; 79 E7 F8
	ora [$67.b]		; 07 67
	ora [$0F.b]		; 07 0F
	cmp $669961.l		; CF 61 99 66
	dec $DC.b,X		; D6 DC
	ldy $66.b		; A4 66
	rts		; 60

	tya		; 98
	asl $58.b		; 06 58
	and #$F123.w		; 29 23 F1
	adc ($44.b,X)		; 61 44
	and #$F8E6.w		; 29 E6 F8
	inc $00E9.w		; EE E9 00
	brk $E4.b		; 00 E4
	dec $BCFC.w,X		; DE FC BC
	and ($08.b,X)		; 21 08
	cpy #$F3FC.w		; C0 FC F3
	brk $F2.b		; 00 F2
	ldy $0DA9.w,X		; BC A9 0D
	rol A		; 2A
	jsr ($E067.w,X)		; FC 67 E0
	inc A		; 1A
	sta $A2E4.w,Y		; 99 E4 A2
	sbc ($3E.b),Y		; F1 3E
	cmp $E8DF.w,Y		; D9 DF E8
	ora #$C1D4.w		; 09 D4 C1
	txa		; 8A
	sbc $90197C.l,X		; FF 7C 19 90
	sbc ($F9.b)		; F2 F9
	ora [$A2.b]		; 07 A2
	rts		; 60

	clv		; B8
	ora ($10.b),Y		; 11 10
	inc $AE86.w,X		; FE 86 AE
	ror $19E5.w,X		; 7E E5 19
	inc $67.b		; E6 67
	sbc $9FE1.w,Y		; F9 E1 9F
	inc A		; 1A
	asl $6067.w		; 0E 67 60
	eor ($00.b),Y		; 51 00
	bcs  15.b		; B0 0F
	clc		; 18
	lsr $8167.w		; 4E 67 81
	sbc $FC6803.l,X		; FF 03 68 FC
	sbc $829E.w,Y		; F9 9E 82
	dey		; 88
	ror A		; 6A
	sbc ($E0.b)		; F2 E0
	sed		; F8
	ora $7F79.w		; 0D 79 7F
	tay		; A8
	iny		; C8
	sbc ($81.b),Y		; F1 81
	inc $8779.w,X		; FE 79 87
	sta [$7E.b]		; 87 7E
	stz $13E1.w		; 9C E1 13
	cmp ($6E.b),Y		; D1 6E
	php		; 08
	iny		; C8
	pea $F8E0.w		; F4 E0 F8
	ora #$6780.w		; 09 80 67
	stz $AA.b		; 64 AA
	stx $A8.b		; 86 A8
	adc ($83.b,X)		; 61 83
	.db $82, $F8, $87		; 82 F8 87
	rts		; 60

	sbc $409E44.l		; EF 44 9E 40
	lda $793FA0.l		; AF A0 3F 79
	lsr $1FA9.w,X		; 5E A9 1F
	sbc $86F9.w,Y		; F9 F9 86
	inc $78.b		; E6 78
	ldy #$F860.w		; A0 60 F8
	ora $78799F.l		; 0F 9F 79 78
	jsr ($88A3.w,X)		; FC A3 88
	inc $81.b		; E6 81
	stz $6160.w,X		; 9E 60 61
	asl $C099.w,X		; 1E 99 C0
.INDEX 16
	rep #$5F		; C2 5F
	cpy #$10D0.w		; C0 D0 10
	dey		; 88
	sta $6109.w,Y		; 99 09 61
	sta $87611F.l,X		; 9F 1F 61 87
	adc $C081.w,Y		; 79 81 C0
	sbc #$0A3D.w		; E9 3D 0A
	ora #$FEF1.w		; 09 F1 FE
	sed		; F8
	asl A		; 0A
	sbc $241E06.l,X		; FF 06 1E 24
	sta ($F2.b)		; 92 F2
	plx		; FA
	ora $E999FE.l,X		; 1F FE 99 E9
	ldy #$11B8.w		; A0 B8 11
	asl $60.b		; 06 60
	stx $E0.b		; 86 E0
	ora ($06.b,X)		; 01 06
	sbc ($9E.b,X)		; E1 9E
	brk $C0.b		; 00 C0
	sta [$FA.b]		; 87 FA
	eor $E0.b,S		; 43 E0
	sed		; F8
	ora ($81.b),Y		; 11 81
	ror $181F.w,X		; 7E 1F 18
	lda $86BF.w,Y		; B9 BF 86
	asl $9E.b		; 06 9E
	ora $6760.w,Y		; 19 60 67
	bra  30.b		; 80 1E
	pei ($5A.b)		; D4 5A
	cpx #$0EF8.w		; E0 F8 0E
	sta $410F66.l,X		; 9F 66 0F 41
	brk $80.b		; 00 80
	ora $1800.w,Y		; 19 00 18
	plx		; FA
	tya		; 98
	ldx $C1.b,Y		; B6 C1
	cld		; D8
	ora $843E.w		; 0D 3E 84
	cpx #$18E6.w		; E0 E6 18
	clc		; 18
	eor #$E580.w		; 49 80 E5
	cli		; 58
	ora [$00.b]		; 07 00
	ldx #$A006.w		; A2 06 A0
	lda ($E0.b),Y		; B1 E0
	sed		; F8
	ora $801861.l		; 0F 61 18 80
	brk $80.b		; 00 80
	sbc $A209.w,X		; FD 09 A2
	eor $BA.b		; 45 BA
	ora [$1F.b]		; 07 1F
	bra  -8.b		; 80 F8
	ora ($25.b)		; 12 25
	sbc ($06.b,X)		; E1 06
	adc $B9DC.w,Y		; 79 DC B9
	sta ($78.b,X)		; 81 78
	cpx #$0F7B.w		; E0 7B 0F
	adc $12F8E0.l,X		; 7F E0 F8 12
	ora $07E7.w,Y		; 19 E7 07
	bit $19.b		; 24 19
	adc [$01.b]		; 67 01
	sbc $1F07.w,Y		; F9 07 1F
	adc ($10.b,X)		; 61 10
	and ($FA.b),Y		; 31 FA
	cop $F8.b		; 02 F8
	ora $F8AAF0.l		; 0F F0 AA F8
	tax		; AA
	bvc  -4.b		; 50 FC
	lsr $C4.b		; 46 C4
	sta ($40.b,X)		; 81 40
	bpl 102.b		; 10 66
	cmp ($AA.b,X)		; C1 AA
	ora [$A2.b]		; 07 A2
	tyx		; BB
	ora $41.b		; 05 41
	xce		; FB
	sbc ($00.b,X)		; E1 00
	cpy #$BD12.w		; C0 12 BD
	dex		; CA
	tsx		; BA
	inx		; E8
	sei		; 78
	tsx		; BA
	bpl  26.b		; 10 1A
	cpx #$C020.w		; E0 20 C0
	ora ($EC.b),Y		; 11 EC
	sta [$26.b]		; 87 26
	adc ($06.b),Y		; 71 06
	plb		; AB
	ora ($E6.b),Y		; 11 E6
	stx $40.b		; 86 40
	cmp ($C1.b,X)		; C1 C1
	tda		; 7B
	inc $0CF8.w,X		; FE F8 0C
	sbc ($C2.b,X)		; E1 C2
	brk $00.b		; 00 00
	dec $C004.w,X		; DE 04 C0
	txs		; 9A
	bit $63.b		; 24 63
	pea $C000.w		; F4 00 C0
	ora ($9E.b),Y		; 11 9E
	rts		; 60

	tsx		; BA
	rts		; 60

	phx		; DA
	sbc [$14.b]		; E7 14
	rti		; 40

	ldy $B800.w,X		; BC 00 B8
	ora ($EA.b),Y		; 11 EA
	ror $D1A6.w,X		; 7E A6 D1
	lsr $85.b,X		; 56 85
	cpy $B4.b		; C4 B4
	tsx		; BA
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	ora $3C39CD.l		; 0F CD 39 3C
	adc $A8D8.w,Y		; 79 D8 A8
	adc $408081.l,X		; 7F 81 80 40
	sed		; F8
	ora ($FF.b),Y		; 11 FF
	inc $0101.w,X		; FE 01 01
	ora $360E.w		; 0D 0E 36
	sec		; 38
	lsr $F2FD.w,X		; 5E FD F2
	cmp $EF32.w,Y		; D9 32 EF
	sbc $0E00.w,X		; FD 00 0E
	ora ($39.b,X)		; 01 39
	ora ($25.b,X)		; 01 25
	phx		; DA
	sbc $575F93.l,X		; FF 93 5F 57
	cmp ($4B.b,S),Y		; D3 4B
	jmp ($E09F.w,X)		; 7C 9F E0
	adc $FFA97D.l,X		; 7F 7D A9 FF
	jsr ($FF2C.w,X)		; FC 2C FF
	jmp ($0E5A.w)		; 6C 5A 0E
	.db $42, $FA		; 42 FA
	adc $0F0FFF.l		; 6F FF 0F 0F
	beq  -2.b		; F0 FE
	bit $CC.b,X		; 34 CC
.ACCU 16
.INDEX 16
	rep #$3A		; C2 3A
	dey		; 88
	sbc $EF0F36.l,X		; FF 36 0F EF
	lda $CCB913.l,X		; BF 13 B9 CC
	brk $3A.b		; 00 3A
	sbc $120037.l		; EF 37 00 12
	asl $4F50.w,X		; 1E 50 4F
	and $6F06.w,Y		; 39 06 6F
	tsb $80FD.w		; 0C FD 80
	pld		; 2B
	sbc $E94F55.l,X		; FF 55 4F E9
	sbc ($00.b),Y		; F1 00
	lda $94B1.w		; AD B1 94
	sbc $6F99FF.l,X		; FF FF 99 6F
	adc ($5F.b)		; 72 5F
	.db $62, $3D, $26		; 62 3D 26
	and $9C0B34.l		; 2F 34 0B 9C
	sta [$58.b],Y		; 97 58
	.db $42, $F3		; 42 F3
	.db $62, $FF, $83		; 62 FF 83
	xce		; FB
	brk $72.b		; 00 72
	brk $62.b		; 00 62
	brk $26.b		; 00 26
	brk $34.b		; 00 34
	brk $9C.b		; 00 9C
	cpy #$1FFF.w		; C0 FF 1F
	mvn $07,$81		; 54 81 07
	jsr ($F503.w,X)		; FC 03 F5
	asl $06FA.w		; 0E FA 06
	sbc $1CE619.l		; EF 19 E6 1C
	inc $2102.w,X		; FE 02 21
	jsr $1568.w		; 20 68 15
	ora $64.b,S		; 03 64
	cpy $FC.b		; C4 FC
	and $001C2B.l		; 2F 2B 1C 00
	cop $24.b		; 02 24
	cpx $10.b		; E4 10
	bmi -128.b		; 30 80
	bra  64.b		; 80 40
	ldx $0079.w,Y		; BE 79 00
	asl $FF.b,X		; 16 FF
	sed		; F8
	xce		; FB
	cpx $B5.b		; E4 B5
	lda $FFD8.w,Y		; B9 D8 FF
	sed		; F8
	beq  98.b		; F0 62
	inc $3838.w,X		; FE 38 38
	mvp $44,$5C		; 44 5C 44
	ply		; 7A
	txa		; 8A
	sbc [$0B.b],Y		; F7 0B
	adc $BB867D.l		; 6F 7D 86 BB
	sbc $EF2B.w		; ED 2B EF
	jsr $017C.w		; 20 7C 01
	tda		; 7B
	and $8661.w,Y		; 39 61 86
	sbc #$DDDF.w		; E9 DF DD
	bit $C0FF.w		; 2C FF C0
	rti		; 40

	tya		; 98
	tya		; 98
	ldx #$EA6E.w		; A2 6E EA
	ora $FEF0.w,X		; 1D F0 FE
	lda $C080AA.l,X		; BF AA 80 C0
	rts		; 60

	sed		; F8
	bpl 126.b		; 10 7E
	brk $F0.b		; 00 F0
	sbc $00FDEA.l,X		; FF EA FD 00
	sbc $FAFEEF.l,X		; FF EF FE FA
	sbc $0EF8F2.l		; EF F2 F8 0E
	dey		; 88
	jsr ($F8F0.w,X)		; FC F0 F8
	ora ($09.b)		; 12 09
	ora $0E131C.l		; 0F 1C 13 0E
	ora ($1E.b),Y		; 11 1E
	ora $E4.b		; 05 E4
	sbc $A8550F.l,X		; FF 0F 55 A8
	brk $13.b		; 00 13
	tsa		; 3B
	adc #$C9E6.w		; 69 E6 C9
	ldy $F8.b		; A4 F8
	ora #$803A.w		; 09 3A 80
	bra -16.b		; 80 F0
	ora #$8FFF.w		; 09 FF 8F
.ACCU 16
.INDEX 16
	rep #$FC		; C2 FC
	rts		; 60

	sta $080790.l,X		; 9F 90 07 08
	ora $040308.l		; 0F 08 03 04
	ora [$04.b]		; 07 04
	ora ($80.b,X)		; 01 80
	and ($04.b),Y		; 31 04
	sbc $FE08DF.l,X		; FF DF 08 FE
	tsb $7A.b		; 04 7A
	bvc  -2.b		; 50 FE
	pea $01F2.w		; F4 F2 01
	sbc $98FE30.l		; EF 30 FE 98
	jsl $84862C.l		; 22 2C 86 84
	bit $FE02.w		; 2C 02 FE
	jsr $2AC0.w		; 20 C0 2A
	adc ($FC.b),Y		; 71 FC
	ora $19E9FF.l		; 0F FF E9 19
	pea $F40C.w		; F4 0C F4
	tsb $E8.b		; 04 E8
	bpl  48.b		; 10 30
	bne 111.b		; D0 6F
	bit $A0B3.w,X		; 3C B3 A0
	rts		; 60

	inx		; E8
	clc		; 18
	dex		; CA
	sbc ($0C.b),Y		; F1 0C
	cpy $10.b		; C4 10
	brk $D0.b		; 00 D0
.INDEX 16
	rep #$D7		; C2 D7
	sbc $B3.b,S		; E3 B3
	clc		; 18
	cmp $38D738.l,X		; DF 38 D7 38
	rol $C094.w		; 2E 94 C0
	sbc $FE08.w,X		; FD 08 FE
	sec		; 38
	inc $C0BE.w,X		; FE BE C0
	sbc $EE06FD.l,X		; FF FD 06 EE
	ora ($A9.b,S),Y		; 13 A9
	and $C17BC7.l,X		; 3F C7 7B C1
	and ($11.b,X)		; 21 11
	cmp ($C0.b),Y		; D1 C0
	rti		; 40

	cpy #$4806.w		; C0 06 48
	and $007BC1.l,X		; 3F C1 7B 00
	and ($00.b,X)		; 21 00
	cmp ($00.b),Y		; D1 00
	rti		; 40

	cpy #$204C.w		; C0 4C 20
	cmp $2F.b,S		; C3 2F
	cpx #$F010.w		; E0 10 F0
	inc $F808.w,X		; FE 08 F8
	tay		; A8
	inx		; E8
	ldy #$E0A0.w		; A0 A0 E0
	sbc ($54.b),Y		; F1 54
	cmp $99.b,S		; C3 99
	cpx #$A94F.w		; E0 4F A9
	adc $A129.w,Y		; 79 29 A1
	eor ($A0.b),Y		; 51 A0
	bit $FF90.w,X		; 3C 90 FF
	bmi 112.b		; 30 70
	bit $8ABC.w		; 2C BC 8A
	ldx $75.b,Y		; B6 75
	wai		; CB
	ldx $5A41.w,Y		; BE 41 5A
	sbc [$08.b],Y		; F7 08
	jsr ($9C8F.w,X)		; FC 8F 9C
	brk $70.b		; 00 70
	rti		; 40

	jsr ($F640.w,X)		; FC 40 F6
	brk $CB.b		; 00 CB
	brk $41.b		; 00 41
	cpy #$5A04.w		; C0 04 5A
	sec		; 38
	stz $43FF.w		; 9C FF 43
	and ($B8.b),Y		; 31 B8
	bvc -80.b		; 50 B0
	lsr $FD.b,X		; 56 FD
	beq  -1.b		; F0 FF
	clv		; B8
	bcs  -2.b		; B0 FE
	dec $56.b		; C6 56
	ora $01.b,S		; 03 01
	inc A		; 1A
	ora $00070A.l		; 0F 0A 07 00
	sbc $0E03.w,X		; FD 03 0E
	eor ($FC.b),Y		; 51 FC
	tsb $10.b		; 04 10
	ora $00.b		; 05 00
	inc $D0F0.w,X		; FE F0 D0
	bmi -20.b		; 30 EC
	bit $85FF.w,X		; 3C FF 85
	cmp $37.b,X		; D5 37
	cpx $E41F.w		; EC 1F E4
	tas		; 1B
	inc $09.b,X		; F6 09
	xce		; FB
	tsb $2E.b		; 04 2E
	sbc ($44.b,X)		; E1 44
	tda		; 7B
	mvn $08,$3C		; 54 3C 08
	and $1BE12F.l,X		; 3F 2F E1 1B
	brk $09.b		; 00 09
	jmp.w [$F5A0]		; DC A0 F5
	ldy $F2.b		; A4 F2
	brk $10.b		; 00 10
	.db $42, $D4		; 42 D4
	stz $F0A4.w,X		; 9E A4 F0
	phd		; 0B
	sbc $0CD4FF.l,X		; FF FF D4 0C
	sbc [$88.b],Y		; F7 88
	dec A		; 3A
	eor $2D.b		; 45 2D
	and ($06.b)		; 32 06
	phd		; 0B
	ora $0D.b		; 05 0D
	ora #$061D.w		; 09 1D 06
	sbc ($23.b,X)		; E1 23
	adc [$09.b],Y		; 77 09
	cpy $0088.w		; CC 88 00
	eor $00.b		; 45 00
	and ($68.b)		; 32 68
	rep #$C3		; C2 C3
	dec $99.b		; C6 99
	asl $00.b,X		; 16 00
	plx		; FA
	asl $6C.b		; 06 6C
	sta $E0846F.l,X		; 9F 6F 84 E0
	phd		; 0B
	sty $8382.w		; 8C 82 83
	brk $F5.b		; 00 F5
	asl $E4.b		; 06 E4
	asl $083A.w,X		; 1E 3A 08
	sty $F846.w		; 8C 46 F8
	ora #$FCA2.w		; 09 A2 FC
	jsr $FFE0.w		; 20 E0 FF
	lsr $F0.b		; 46 F0
	tsb $0AAC.w		; 0C AC 0A
	sbc ($F0.b)		; F2 F0
	tay		; A8
	sbc ($C0.b)		; F2 C0
	sed		; F8
	tsb $F2A8.w		; 0C A8 F2
	cpy #$0AF8.w		; C0 F8 0A
	phd		; 0B
	cpx #$C06A.w		; E0 6A C0
	cpy #$F8C0.w		; C0 C0 F8
	tsb $C46A.w		; 0C 6A C4
	cpy #$0AF8.w		; C0 F8 0A
	adc [$EF.b],Y		; 77 EF
	ora $88.b		; 05 88
	lda $2DCE.w,Y		; B9 CE 2D
	rol $60.b,X		; 36 60
	sed		; F8
	tsb $00CE.w		; 0C CE 00
	rol $60.b,X		; 36 60
	sed		; F8
	ora #$F862.w		; 09 62 F8
	ora $C3BD9E.l,X		; 1F 9E BD C3
	ldx $8B31.w		; AE 31 8B
	sty $0302.w		; 8C 02 03
	ora ($01.b,X)		; 01 01
	sbc #$A02A.w		; E9 2A A0
	tay		; A8
	cmp $00.b,S		; C3 00
	and ($C4.b),Y		; 31 C4
	sbc ($02.b)		; F2 02
	jsr ($E9AA.w,X)		; FC AA E9
	ora ($48.b)		; 12 48
	txa		; 8A
	stz $A6FF.w		; 9C FF A6
	sbc $44.b,X		; F5 44
	sbc $F09C7A.l,X		; FF 7A 9C F0
	ora $03.b,S		; 03 03
	ora $0B1C04.l		; 0F 04 1C 0B
	tas		; 1B
	adc $3C1D7B.l,X		; 7F 7B 1D 3C
	inc A		; 1A
	jsl $1B220E.l		; 22 0E 22 1B
	and #$F407.w		; 29 07 F4
	tsb $70.b		; 04 70
	adc ($1F.b,X)		; 61 1F
	cop $11.b		; 02 11
	sta $03.b,S		; 83 03
	txy		; 9B
	sbc ($06.b)		; F2 06
	inc $F292.w,X		; FE 92 F2
	tsb $0C.b		; 04 0C
	inc $9084.w,X		; FE 84 90
	sta $07FE01.l		; 8F 01 FE 07
	inc $4203.w,X		; FE 03 42
	jsr ($0FFE.w,X)		; FC FE 0F
	inc $FE07.w,X		; FE 07 FE
	mvn $6B,$19		; 54 19 6B
	and $6DFFFF.l		; 2F FF FF 6D
	and $F2.b		; 25 F2
	plp		; 28
	ldx #$2278.w		; A2 78 22
	sed		; F8
	brk $DA.b		; 00 DA
	adc $9B.b		; 65 9B
	inc $FF.b		; E6 FF
	bne  -1.b		; D0 FF
	lda ($42.b,S),Y		; B3 42
	phx		; DA
	sbc $1AFEDF.l,X		; FF DF FE 1A
	lda $DB9F.w,Y		; B9 9F DB
	pla		; 68
	cop $F8.b		; 02 F8
	phd		; 0B
	tyx		; BB
	ora $09.b		; 05 09
	phd		; 0B
	asl $110B.w		; 0E 0B 11
	ora [$93.b],Y		; 17 93
	cmp $FFE9.w,X		; DD E9 FF
	txa		; 8A
	ora [$C2.b]		; 07 C2
	ora $301C1F.l		; 0F 1F 1C 30
	eor $A2CA62.l		; 4F 62 CA A2
	sty $74.b,X		; 94 74
	sbc $9B48FF.l,X		; FF FF 48 9B
	cpy $AC.b		; C4 AC
	beq -41.b		; F0 D7
	jmp ($0FED.w,X)		; 7C ED 0F
	brk $1D.b		; 00 1D
	rti		; 40

	eor $CBC0.w,X		; 5D C0 CB
	cpy #$FFFF.w		; C0 FF FF
	cpx $E0.b		; E4 E0
	sbc ($F0.b,S),Y		; F3 F0
	sed		; F8
	sed		; F8
	inc $B8FE.w,X		; FE FE B8
	tsb $46F2.w		; 0C F2 46
	eor ($45.b,S),Y		; 53 45
	and #$FF2E.w		; 29 2E FF
	sbc $25D912.l,X		; FF 12 D9 25
	and ($0F.b,S),Y		; 33 0F
	xba		; EB
	dec A		; 3A
	lda [$F0.b],Y		; B7 F0
	brk $B8.b		; 00 B8
	cop $BA.b		; 02 BA
	ora $D3.b,S		; 03 D3
	ora $C3.b,S		; 03 C3
	adc ($27.b,X)		; 61 27
	ora [$CF.b]		; 07 CF
	cmp $1F.b,S		; C3 1F
	adc $096E7F.l,X		; 7F 7F 6E 09
	clc		; 18
	clc		; 18
	and ($FE.b)		; 32 FE
	ora ($10.b,X)		; 01 10
	inc $FE03.w,X		; FE 03 FE
	asl A		; 0A
	rol $78AA.w,X		; 3E AA 78
	ora #$FEE5.w		; 09 E5 FE
	inc $936D.w,X		; FE 6D 93
	ora $0CB3.w		; 0D B3 0C
	eor [$FE.b]		; 47 FE
	cmp ($77.b,X)		; C1 77
	inc $2D1B.w,X		; FE 1B 2D
	inc A		; 1A
	inc $98A0.w,X		; FE A0 98
	ror $BEFE.w		; 6E FE BE
	inc $FFF6.w,X		; FE F6 FF
	sbc $1F17FE.l,X		; FF FE 17 1F
	ora ($1F.b,S),Y		; 13 1F
	rol $2B.b		; 26 2B
	and $3A.b		; 25 3A
	jsl $4A743C.l		; 22 3C 74 4A
	rts		; 60

	jmp $4D1A69.l		; 5C 69 1A 4D
	adc ($CC.b),Y		; 71 CC
	ora $3FFE3F.l,X		; 1F 3F FE 3F
	adc $FEE14E.l,X		; 7F 4E E1 FE
	rol $FE7F.w,X		; 3E 7F FE
	stp		; DB
	plx		; FA
	inc $FDFB.w,X		; FE FB FD
	cmp $FD7B30.l,X		; DF 30 7B FD
	tyx		; BB
	adc $7BBF.w,X		; 7D BF 7B
	jsr $0F20.w		; 20 20 0F
	adc [$7D.b],Y		; 77 7D
	sbc $83FCFF.l		; EF FF FC 83
	inc $BFDF.w,X		; FE DF BF
	cmp $FDBFDE.l,X		; DF DE BF FD
	ldx $A97D.w,Y		; BE 7D A9
	cmp $F9.b,S		; C3 F9
	sbc $130EF8.l,X		; FF F8 0E 13
	bmi  -2.b		; 30 FE
	ora $20.b,S		; 03 20
	ora [$FE.b]		; 07 FE
	asl $20.b		; 06 20
	ora [$09.b]		; 07 09
	asl $30.b,X		; 16 30
	ora $A0FE3F.l		; 0F 3F FE A0
	jsr ($86FE.w,X)		; FC FE 86
	sta [$F4.b]		; 87 F4
	cpy #$FEA5.w		; C0 A5 FE
	pei ($B1.b)		; D4 B1
	sty $F1.b,X		; 94 F1
	inc $687F.w,X		; FE 7F 68
	stz $9EF1.w		; 9C F1 9E
	sbc ($BE.b,S),Y		; F3 BE
	cmp ($7E.b,S),Y		; D3 7E
	sbc $FE6EFE.l,X		; FF FE 6E FE
	sbc $1C6C.w,X		; FD 6C 1C
	inc $71FE.w,X		; FE FE 71
	eor #$2E65.w		; 49 65 2E
	jsl $091216.l		; 22 16 12 09
	ora #$C30D.w		; 09 0D C3
	asl $06.b		; 06 06
	ora ($E1.b,X)		; 01 E1
	ora $6E.b,S		; 03 6E
	ora $FE3F.w,X		; 1D 3F FE
	ora $FFEF.w		; 0D EF FF
	ora $010F06.l,X		; 1F 06 0F 01
	ora [$20.b]		; 07 20
	sbc ($03.b),Y		; F1 03
	eor [$3B.b],Y		; 57 3B
	mvn $B4,$3B		; 54 3B B4
	tda		; 7B
	sty $7B.b,X		; 94 7B
	lda $334CFE.l,X		; BF FE 4C 33
	dex		; CA
	cpy #$3838.w		; C0 38 38
	tad		; 5B
	and ($B9.b,S),Y		; 33 B9
	sbc $FF3FFE.l,X		; FF FE 3F FF
	cmp [$FF.b]		; C7 FF
	inc $FF.b		; E6 FF
	sbc $7CBAFF.l,X		; FF FF BA 7C
	lda ($7E.b,X)		; A1 7E
	ldy $387F.w,X		; BC 7F 38
	adc $733C42.l,X		; 7F 42 3C 73
	ora $1C.b,S		; 03 1C
	trb $DEDA.w		; 1C DA DE
	eor [$98.b]		; 47 98
	cpx #$09F8.w		; E0 F8 09
	jsr ($E3FF.w,X)		; FC FF E3
	cpx $06B1.w		; EC B1 06
	trb $0700.w		; 1C 00 07
	tay		; A8
	cmp $F15EEA.l,X		; DF EA 5E F1
	tsb $05.b		; 04 05
	asl A		; 0A
	asl A		; 0A
	rol A		; 2A
	sbc ($1F.b),Y		; F1 1F
	ldy #$A8D1.w		; A0 D1 A8
	cmp $F45E.w,Y		; D9 5E F4
	brk $FF.b		; 00 FF
	sbc $D33A00.l,X		; FF 00 3A D3
	ply		; 7A
	cmp ($2C.b,S),Y		; D3 2C
	rol $08E8.w,X		; 3E E8 08
	plp		; 28
	iny		; C8
	cld		; D8
	cld		; D8
	cpx #$80B0.w		; E0 B0 80
	beq -61.b		; F0 C3
	cpx #$2C6E.w		; E0 6E 2C
	sbc $F0FEC0.l,X		; FF C0 FE F0
	sed		; F8
	inc $0EE0.w,X		; FE E0 0E
	cmp $E8.b,S		; C3 E8
	bcs -22.b		; B0 EA
	asl $00.b		; 06 00
	adc [$10.b]		; 67 10
	ora $3F20FE.l		; 0F FE 20 3F
	ora ($1F.b,X)		; 01 1F
	and ($1F.b,X)		; 21 1F
	eor $3F.b		; 45 3F
	eor [$39.b]		; 47 39
	inc $DCC9.w		; EE C9 DC
	rol $1EFE.w,X		; 3E FE 1E
	brk $1A.b		; 00 1A
	ora ($D1.b,X)		; 01 D1
	bmi -99.b		; 30 9D
	sbc #$C020.w		; E9 20 C0
	bpl -32.b		; 10 E0
	tsb $FED7.w		; 0C D7 FE
	php		; 08
	beq  -2.b		; F0 FE
	mvp $C8,$F8		; 44 F8 C8
	ldx $D9.b		; A6 D9
	and $EC.b		; 25 EC
	lsr $41.b,X		; 56 41
	beq  33.b		; F0 21
	sbc ($38.b,X)		; E1 38
	adc $91D9.w,Y		; 79 D9 91
	iny		; C8
	ora #$EA53.w		; 09 53 EA
	bit #$F8EF.w		; 89 EF F8
	asl A		; 0A
	sbc ($FF.b,X)		; E1 FF
	rti		; 40

	sbc #$4FFB.w		; E9 FB 4F
	bit $87.b,X		; 34 87
	ply		; 7A
	eor $3B.b,S		; 43 3B
	jsr $5418.w		; 20 18 54
	bit $FEFF.w		; 2C FF FE
	tay		; A8
	sty $E7.b,X		; 94 E7
	tad		; 5B
	sta ($27.b),Y		; 91 27
	and $04.b,X		; 35 04
	adc $E7.b,X		; 75 E7
	cmp #$0017.w		; C9 17 00
	and $00.b,S		; 23 00
	sta ($FF.b,S),Y		; 93 FF
	sbc $805800.l,X		; FF 00 58 80
	plp		; 28
	inx		; E8
	inx		; E8
	bvc  72.b		; 50 48
	bmi -60.b		; 30 C4
	sec		; 38
	dey		; 88
	bmi 100.b		; 30 64
	cli		; 58
	bit $FF.b		; 24 FF
	sta $F458.w		; 8D 58 F4
	clv		; B8
	tas		; 1B
	xba		; EB
	bvc  64.b		; 50 40
	bne   0.b		; D0 00
	cld		; D8
	and $D9.b,S		; 23 D9
	tya		; 98
	sbc $08FEBF.l		; EF BF FE 08
	bmi  52.b		; 30 34
	and $34FEC0.l,X		; 3F C0 FE 34
	trb $0428.w		; 1C 28 04
	ora $EFF90B.l,X		; 1F 0B F9 EF
	ora $FDC076.l,X		; 1F 76 C0 FD
	rts		; 60

	ora ($60.b,S),Y		; 13 60
	ora $30.b,S		; 03 30
	cpx #$D028.w		; E0 28 D0
	cpy #$0DF8.w		; C0 F8 0D
	inc A		; 1A
	nop		; EA
	sbc $F8C0FF.l,X		; FF FF C0 F8
	asl $033E.w		; 0E 3E 03
	ora $04.b,S		; 03 04
	tsb $06.b		; 04 06
	ora $0A.b		; 05 0A
	ora #$0A09.w		; 09 09 0A
	php		; 08
	ora $FEAB0D.l		; 0F 0D AB FE
	asl A		; 0A
	ora ($14.b,S),Y		; 13 14
	bne -31.b		; D0 E1
	cop $E9.b		; 02 E9
	mvp $40,$EA		; 44 EA 40
	cpx $3B61.w		; EC 61 3B
	cpy #$B495.w		; C0 95 B4
	sbc $C696FF.l,X		; FF FF 96 C6
	dex		; CA
	adc ($7C.b,X)		; 61 7C
	bvc 103.b		; 50 67
	sta $18C2.w,Y		; 99 C2 18
	cmp ($3C.b,X)		; C1 3C
	cpy $7E9E.w		; CC 9E 7E
	ora $EFFFFF.l,X		; 1F FF FF EF
	eor $C3A3BF.l		; 4F BF A3 C3
	sta $3DC1.w,Y		; 99 C1 3D
	sta ($3E.b,X)		; 81 3E
	bra 124.b		; 80 7C
	ldx $2E.b,Y		; B6 2E
	adc [$F4.b],Y		; 77 F4
	sbc $5E6F57.l,X		; FF 57 6F 5E
	sbc $EEDFEF.l		; EF EF DF EE
	cmp $BCDEBD.l,X		; DF BD DE BC
	dec $257F.w,X		; DE 7F 25
	asl $FDFF.w,X		; 1E FF FD
	sbc $E168C3.l,X		; FF C3 68 E1
	rti		; 40

	jsr $60A0.w		; 20 A0 60
	ldy #$9050.w		; A0 50 90
	bcs  80.b		; B0 50
	inc $1E48.w,X		; FE 48 1E
	ldx $E8.b		; A6 E8
	eor [$E1.b],Y		; 57 E1
	cpy #$E0C0.w		; C0 C0 E0
	inc $F0E0.w,X		; FE E0 F0
	inc $F861.w,X		; FE 61 F8
	beq  -8.b		; F0 F8
	sta ($05.b),Y		; 91 05
	tsb $82.b		; 04 82
	tsb $100B.w		; 0C 0B 10
	ora [$9F.b],Y		; 17 9F
	ldy $1A.b		; A4 1A
	ora $1D.b,X		; 15 1D
	ora ($3B.b,S),Y		; 13 3B
	and $FC8680.l		; 2F 80 86 FC
	inc $FFFF.w,X		; FE FF FF
	asl $3F.b,X		; 16 3F
	sbc ($23.b),Y		; F1 23
	stz $25.b,X		; 74 25
	tay		; A8
	jsl $59FEE2.l		; 22 E2 FE 59
	plx		; FA
	sec		; 38
	adc ($AC.b),Y		; 71 AC
	sbc ($FF.b,X)		; E1 FF
	and $C4E16E.l,X		; 3F 6E E1 C4
	jsr ($FAC6.w,X)		; FC C6 FA
	cmp $FF.b,S		; C3 FF
	sta $E3.b,S		; 83 E3
	sta $C1.b		; 85 C1
	stx $1E80.w		; 8E 80 1E
	asl $FEB1.w		; 0E B1 FE
	adc $80B7.w,X		; 7D B7 80
	sbc [$80.b],Y		; F7 80
	cpx $FC35.w		; EC 35 FC
	bra  -3.b		; 80 FD
	ror $F880.w,X		; 7E 80 F8
	asl $DD42.w		; 0E 42 DD
	ldy #$907D.w		; A0 7D 90
	bvc  48.b		; 50 30
	bne  80.b		; D0 50
	plx		; FA
	bpl -16.b		; 10 F0
	tad		; 5B
	stp		; DB
	ror $0AF8.w,X		; 7E F8 0A
	ora ($16.b,S),Y		; 13 16
	ora $1F.b,X		; 15 1F
	sbc $403E1B.l,X		; FF 1B 3E 40
	inc $0817.w,X		; FE 17 08
	asl $0A0D.w		; 0E 0D 0A
	ror $8C.b,X		; 76 8C
	asl $FFFD.w		; 0E FD FF
	inc $FEFD.w,X		; FE FD FE
	pea $C34E.w		; F4 4E C3
	stz $E7.b		; 64 E7
	sbc ($FD.b,S),Y		; F3 FD
	dec $85FC.w		; CE FC 85
	cpx $17.b		; E4 17
	inc $FB.b		; E6 FB
	sbc $AFE232.l,X		; FF 32 E2 AF
	pei ($69.b)		; D4 69
	clc		; 18
	brk $01.b		; 00 01
	cop $04.b		; 02 04
	phd		; 0B
	clc		; 18
	and $1CFD1A.l,X		; 3F 1A FD 1C
	sbc $3DFFFF.l,X		; FF FF FF 3D
	inc $BCDA.w,X		; FE DA BC
	adc [$BC.b],Y		; 77 BC
	adc $B6BE.w,Y		; 79 BE B6
	jmp ($FCA0.w,X)		; 7C A0 FC
	phk		; 4B
	and ($C5.b,S),Y		; 33 C5
	ora $73FE.w,X		; 1D FE 73
	tsb $F882.w		; 0C 82 F8
	ora #$7C7F.w		; 09 7F 7C
	sbc $09BF.w,X		; FD BF 09
	sta [$D8.b]		; 87 D8
	pla		; 68
	pla		; 68
	sbc $2878AF.l,X		; FF AF 78 28
	sei		; 78
	stz $F4.b,X		; 74 F4
	ldy $6C74.w,X		; BC 74 6C
	bit $C4.b,X		; 34 C4
	jmp ($F4AC.w,X)		; 7C AC F4
	ldx $EA.b		; A6 EA
	sbc $07FF.w,X		; FD FF 07
	sbc ($FC.b,X)		; E1 FC
	inc $2CFE.w,X		; FE FE 2C
	and $343F3C.l,X		; 3F 3C 3F 34
	and $2A2F37.l,X		; 3F 37 2F 2A
	rol $1D.b		; 26 1D
	ora ($5F.b)		; 12 5F
	sta $16.b		; 85 16
	ora ($0F.b),Y		; 11 0F
	php		; 08
	asl $FE3F.w,X		; 1E 3F FE
	jsr ($E1C4.w,X)		; FC C4 E1
	brk $F9.b		; 00 F9
	bra 127.b		; 80 7F
	sed		; F8
	adc ($F1.b)		; 72 F1
	sed		; F8
	sbc $0BF9E3.l,X		; FF E3 F9 0B
	sbc #$2EFE.w		; E9 FE 2E
	cpy $CF68.w		; CC 68 CF
	xce		; FB
	adc $0E88D2.l,X		; 7F D2 88 0E
	stp		; DB
	rep #$07		; C2 07
	ora ($1F.b),Y		; 11 1F
	ora ($FE.b),Y		; 11 FE
	bit $FB.b,X		; 34 FB
	bmi  -8.b		; 30 F8
	adc [$F0.b],Y		; 77 F0
	sed		; F8
	sbc $BE7080.l,X		; FF 80 70 BE
	ply		; 7A
	ldy $78B5.w,X		; BC B5 78
	lda $78.b		; A5 78
	wai		; CB
	and ($16.b,S),Y		; 33 16
	cmp $FFFD.w		; CD FD FF
	sta [$FA.b]		; 87 FA
	brk $E8.b		; 00 E8
	phd		; 0B
	and $07073F.l,X		; 3F 3F 07 07
	bne 112.b		; D0 70
	iny		; C8
	pla		; 68
	plp		; 28
	inx		; E8
	sei		; 78
	inx		; E8
	adc $78A81D.l,X		; 7F 1D A8 78
	pha		; 48
	sec		; 38
	tay		; A8
	cld		; D8
	cli		; 58
	inx		; E8
	sty $FEF2.w		; 8C F2 FE
	sed		; F8
	phd		; 0B
	ora $04.b		; 05 04
	dec $82.b,X		; D6 82
	sbc $680202.l,X		; FF 02 02 68
	xba		; EB
	eor $01EA.w,X		; 5D EA 01
	cop $F2.b		; 02 F2
	xce		; FB
	pea $53FF.w		; F4 FF 53
	cpx $E1FE.w		; EC FE E1
	eor $15CA.w		; 4D CA 15
	ldy $01.b,X		; B4 01
	ldx $FF.b,Y		; B6 FF
	cli		; 58
	stp		; DB
	ldx #$FD3F.w		; A2 3F FD
	lda $4F4B.w,X		; BD 4B 4F
	adc $BF4D.w		; 6D 4D BF
	inc $00FF.w,X		; FE FF 00
	inc $FE26.w,X		; FE 26 FE
	lsr $FF.b		; 46 FF
	sbc $FFB0FF.l,X		; FF FF B0 FF
	lda ($FF.b)		; B2 FF
	asl $9F.b,X		; 16 9F
	pha		; 48
	ora #$0362.w		; 09 62 03
	pea $2087.w		; F4 87 20
	sta $0DFF05.l		; 8F 05 FF 0D
	sbc [$CE.b],Y		; F7 CE
	inc $1A.b		; E6 1A
	adc ($60.b,S),Y		; 73 60
	ora ($F6.b,X)		; 01 F6
	ora ($FC.b,X)		; 01 FC
	bcs 105.b		; B0 69
	bvs  -1.b		; 70 FF
	sbc ($C4.b,X)		; E1 C4
	ora $90FB05.l		; 0F 05 FB 90
	sbc $14E434.l		; EF 34 E4 14
	cpx $07.b		; E4 07
	plp		; 28
	iny		; C8
	ora [$E2.b],Y		; 17 E2
	iny		; C8
	dey		; 88
	bcs  48.b		; B0 30
	bcs -30.b		; B0 E2
	asl $FE78.w		; 0E 78 FE
	bvs -80.b		; 70 B0
	eor $F8.b,S		; 43 F8
	inc $F0C0.w,X		; FE C0 F0
	rts		; 60

	cmp ($09.b)		; D2 09
	php		; 08
	bra   3.b		; 80 03
	ora $D440.w,Y		; 19 40 D4
	cpy $0E90.w		; CC 90 0E
	bra -60.b		; 80 C4
	cmp $FFFE.w		; CD FE FF
	beq -77.b		; F0 B3
	plp		; 28
	adc $58.b,S		; 63 58
	sbc $CC.b,X		; F5 CC
	bmi 127.b		; 30 7F
	cli		; 58
	phx		; DA
	lda ($BF.b,X)		; A1 BF
	sbc $4F4AF0.l,X		; FF F0 4A 4F
	jmp ($D74D.w)		; 6C 4D D7
	beq -73.b		; F0 B7
	beq  51.b		; F0 33
	dec $78.b		; C6 78
	bit $FF.b		; 24 FF
	sbc #$45FF.w		; E9 FF 45
	inc $2280.w,X		; FE 80 22
	and $400F80.l,X		; 3F 80 0F 40
	eor $D1EF28.l		; 4F 28 EF D1
	ror $FFFF.w,X		; 7E FF FF
	sty $3E.b,X		; 94 3E
	jmp ($6038.w)		; 6C 38 60
	and $F307C3.l,X		; 3F C3 07 F3
	ora $B3.b,S		; 03 B3
	ora $13.b,S		; 03 13
	ora [$43.b]		; 07 43
	lda $0310FF.l,X		; BF FF 10 03
	sbc $20DF27.l,X		; FF 27 DF 20
	cmp $18E8B8.l,X		; DF B8 E8 18
	tsb $48.b		; 04 48
	stz $FE7C.w,X		; 9E 7C FE
	bne  16.b		; D0 10
	jsr $8020.w		; 20 20 80
	php		; 08
	inc $F0E0.w,X		; FE E0 F0
	cpy #$42E0.w		; C0 E0 42
	eor $80.b,X		; 55 80
	trb $98.b		; 14 98
.ACCU 16
.INDEX 16
	rep #$3F		; C2 3F
	cmp ($F8.b),Y		; D1 F8
	cpy $C16E.w		; CC 6E C1
	sbc $FEE1.w,X		; FD E1 FE
	jsr ($CDF8.w,X)		; FC F8 CD
	and $770D.w		; 2D 0D 77
	ora $5B.b,X		; 15 5B
	and ($FE.b),Y		; 31 FE
	cmp ($39.b,S),Y		; D3 39
	sta [$AF.b]		; 87 AF
	sta ($79.b,S),Y		; 93 79
	lda ($4B.b,X)		; A1 4B
	inc $FFF2.w,X		; FE F2 FF
	nop		; EA
	sbc $FDFEEE.l,X		; FF EE FE FD
	sbc $D296FF.l,X		; FF FF 96 D2
	adc [$73.b]		; 67 73
	cpy $C358.w		; CC 58 C3
	eor $5CE6.w,Y		; 59 E6 5C
	sbc #$E25C.w		; E9 5C E2
	lsr $D4.b,X		; 56 D4
	ror $D9.b,X		; 76 D9
	sbc $827BFF.l,X		; FF FF 7B 82
	sbc $F7A9.w,X		; FD A9 F7
	lda ($FE.b,X)		; A1 FE
	ldy $FB.b		; A4 FB
	ldy #$AAFF.w		; A0 FF AA
	sbc $FFA8.w,X		; FD A8 FF
	lda $72.b		; A5 72
	clv		; B8
	inc $C978.w,X		; FE 78 C9
	inc $9480.w,X		; FE 80 94
	rti		; 40

	cpy #$D640.w		; C0 40 D6
	sbc ($57.b,X)		; E1 57
	dex		; CA
	beq  -3.b		; F0 FD
	rti		; 40

	adc $5CB1.w		; 6D B1 5C
	cmp #$9FC9.w		; C9 C9 9F
	inc $9FBD.w,X		; FE BD 9F
	adc $9BB918.l,X		; 7F 18 B9 9B
	xba		; EB
	wai		; CB
	eor $43.b,S		; 43 43
	tad		; 5B
	phk		; 4B
	inc $7F80.w,X		; FE 80 7F
	inc $FE07.w,X		; FE 07 FE
	bpl -17.b		; 10 EF
	trb $EF.b		; 14 EF
	mvp $CC,$BF		; 44 BF CC
	lda $FEF78C.l,X		; BF 8C F7 FE
	eor $FA.b,X		; 55 FA
	cpy #$09F8.w		; C0 F8 09
	inc $F0FC.w,X		; FE FC F0
	inc $CB22.w,X		; FE 22 CB
	inc $0104.w,X		; FE 04 01
	tsb $05.b		; 04 05
	jsr $0C4B.w		; 20 4B 0C
	inc $C946.w,X		; FE 46 C9
	inc $C844.w,X		; FE 44 C8
	phd		; 0B
	bpl -13.b		; 10 F3
	inc $814E.w,X		; FE 4E 81
	inc $FE95.w,X		; FE 95 FE
	sta $EB.b		; 85 EB
	sbc $DB055B.l,X		; FF 5B 05 DB
	cpx #$FECC.w		; E0 CC FE
	sed		; F8
	ora #$6BCA.w		; 09 CA 6B
	phx		; DA
	rtl		; 6B

	cmp ($6B.b,S),Y		; D3 6B
	cmp $7B.b,S		; C3 7B
	adc ($F0.b,X)		; 61 F0
	tas		; 1B
	cmp $01FE.w,Y		; D9 FE 01
	sta $9D0D.w,Y		; 99 0D 9D
	ldy $FF.b,X		; B4 FF
	inc $B6FC.w,X		; FE FC B6
	sta [$E1.b]		; 87 E1
	inc $FFF6.w,X		; FE F6 FF
	ora ($60.b)		; 12 60
	jsr $308B.w		; 20 8B 30
	bcc  -1.b		; 90 FF
	sbc ($60.b),Y		; F1 60
	cpy #$C818.w		; C0 18 C8
	bcs -32.b		; B0 E0
	sty $98E4.w		; 8C E4 98
	beq -15.b		; F0 F1
	rts		; 60

	bpl -121.b		; 10 87
	and $B040E0.l,X		; 3F E0 40 B0
	php		; 08
	inc $D8.b,X		; F6 D8
	tsb $F8.b		; 04 F8
	bpl -20.b		; 10 EC
	sbc ($63.b,S),Y		; F3 63
	jsr ($FEF0.w,X)		; FC F0 FE
	sbc $E76F67.l		; EF 67 6F E7
	eor $FED1.w,Y		; 59 D1 FE
	ora [$93.b],Y		; 17 93
	ora $C3.b,X		; 15 C3
	bmi -111.b		; 30 91
	ldy $DF.b		; A4 DF
	inc $FB84.w,X		; FE 84 FB
	inc $EFB2.w,X		; FE B2 EF
	bit $FE6A.w,X		; 3C 6A FE
.ACCU 8
.INDEX 8
	sep #$FD		; E2 FD
	cpx #$FF.b		; E0 FF
	jmp $E194.w		; 4C 94 E1
	inc $F0FD.w,X		; FE FD F0
	eor $55.b,X		; 55 55
	tsb $E1F3.w		; 0C F3 E1
	cmp ($FE.b)		; D2 FE
	jsr ($B1B8.w,X)		; FC B8 B1
	jsl $CE1ECA.l		; 22 CA 1E CE
	trb $22CA.w		; 1C CA 22
	dex		; CA
	sta [$1F.b]		; 87 1F
	asl $0BC8.w,X		; 1E C8 0B
	and $FB.b		; 25 FB
	inc $FB21.w,X		; FE 21 FB
	and ($EB.b),Y		; 31 EB
	and ($E9.b,S),Y		; 33 E9
	ror $FE85.w,X		; 7E 85 FE
	adc ($A8.b)		; 72 A8
	eor ($88.b)		; 52 88
	dec $FEFF.w,X		; DE FF FE
	sed		; F8
	ora #$7E.b		; 09 7E
	rep #$4E		; C2 4E
	adc #$18.b		; 69 18
	eor $FE8D.w,X		; 5D 8D FE
	bne   4.b		; D0 04
	inc $2478.w,X		; FE 78 24
	cpy #$18.b		; C0 18
	inc $FE4E.w,X		; FE 4E FE
	jsr ($FEFB.w,X)		; FC FB FE
	stp		; DB
	sbc $C4FE1F.l,X		; FF 1F FE C4
	pea $F9CF.w		; F4 CF F9
	dec $F0.b		; C6 F0
	cmp $F0.b,S		; C3 F0
	sbc [$F4.b]		; E7 F4
	sbc ($F1.b,X)		; E1 F1
	lda $F0FE87.l,X		; BF 87 FE F0
	tsb $FA.b		; 04 FA
	ora #$F6.b		; 09 F6
	ora $040A.w,X		; 1D 0A 04
	sbc ($01.b,S),Y		; F3 01
	inc $FF7A.w,X		; FE 7A FF
	sbc ($EF.b)		; F2 EF
	eor $B82B.w,Y		; 59 2B B8
	phd		; 0B
	rti		; 40

	cpx #$A0.b		; E0 A0
	sbc ($F8.b),Y		; F1 F8
	asl A		; 0A
	bra  64.b		; 80 40
	ldy #$A0.b		; A0 A0
	bvc  29.b		; 50 1D
	sbc $4B9D3F.l,X		; FF 3F 9D 4B
	bit #$4E.b		; 89 4E
	dey		; 88
	phk		; 4B
	dey		; 88
	cmp $0DDB0C.l,X		; DF 0C DB 0D
	adc $712D.w,Y		; 79 2D 71
	bit $FC.b		; 24 FC
	sbc $F6F90F.l,X		; FF 0F F9 F6
	sed		; F8
	sbc [$F0.b],Y		; F7 F0
	sbc $F1FBF4.l,X		; FF F4 FB F1
	sbc $D8FED1.l,X		; FF D1 FE D8
	mvp $FF,$3F		; 44 3F FF
	bit $60FE.w		; 2C FE 60
	bvs -32.b		; 70 E0
	bvs -64.b		; 70 C0
	bvc -22.b		; 50 EA
	brk $C0.b		; 00 C0
	cpx $AA.b		; E4 AA
	inc $40FD.w,X		; FE FD 40
	bcs -64.b		; B0 C0
	sta ($A8.b)		; 92 A8
	rol $C2DE.w		; 2E DE C2
	inc $C4DC.w,X		; FE DC C4
	bit $C1EA.w		; 2C EA C1
	xce		; FB
	stz $DA.b		; 64 DA
	cpy #$09.b		; C0 09
	ora ($88.b)		; 12 88
	inc $70FC.w,X		; FE FC 70
	dex		; CA
	beq  74.b		; F0 4A
	inc $E642.w,X		; FE 42 E6
	lda $FE8689.l,X		; BF 89 86 FE
	sbc $FE2C.w,X		; FD 2C FE
	inc $FEA6.w,X		; FE A6 FE
	and [$EA.b]		; 27 EA
	inc $ECA6.w		; EE A6 EC
	ldx $2C.b		; A6 2C
	inc $FE59.w,X		; FE 59 FE
	sbc $D3E1.w,X		; FD E1 D3
	rol $E0F9.w		; 2E F9 E0
	sed		; F8
	inc $7870.w,X		; FE 70 78
	inc $01FC.w,X		; FE FC 01
	plx		; FA
	tda		; 7B
	sta ($EC.b),Y		; 91 EC
	sbc $80F8FE.l,X		; FF FE F8 80
	inc $F0FD.w,X		; FE FD F0
	bvc -40.b		; 50 D8
	dey		; 88
	cpx $76A4.w		; EC A4 76
	eor ($7B.b)		; 52 7B
	sbc $5D51FF.l,X		; FF FF 51 5D
	pha		; 48
	bit $2E28.w,X		; 3C 28 2E
	bit $50.b		; 24 50
	tay		; A8
	dey		; 88
	stz $A4.b,X		; 74 A4
	phy		; 5A
	eor ($AD.b)		; 52 AD
	eor ($BF.b),Y		; 51 BF
	inc $AE.b,X		; F6 AE
	pha		; 48
	lda [$28.b],Y		; B7 28
	eor [$24.b],Y		; 57 24
	tad		; 5B
	inc A		; 1A
	bcs  11.b		; B0 0B
	txy		; 9B
	sbc #$40.b		; E9 40
	phd		; 0B
	bcs  11.b		; B0 0B
	bra  32.b		; 80 20
	sta $90400F.l		; 8F 0F 40 90
	adc ($25.b),Y		; 71 25
	adc $7CFE.w,X		; 7D FE 7C
	rol $FC.b		; 26 FC
	ldx $00.b		; A6 00
	ora ($FE.b,S),Y		; 13 FE
	.db $82, $FE, $D9		; 82 FE D9
	inc $14FE.w,X		; FE FE 14
	ror $5808.w,X		; 7E 08 58
	inc $A0FD.w,X		; FE FD A0
	bcs  16.b		; B0 10
	cld		; D8
	pha		; 48
	sed		; F8
	tay		; A8
	sed		; F8
	sbc ($9C.b,X)		; E1 9C
	ldy $F294.w,X		; BC 94 F2
	ldx #$BB.b		; A2 BB
	sta ($A0.b),Y		; 91 A0
	bpl -24.b		; 10 E8
	sta [$5F.b]		; 87 5F
	pha		; 48
	ldy $A8.b,X		; B4 A8
	mvn $94,$9C		; 54 9C 94
	ror A		; 6A
	ldx #$5D.b		; A2 5D
	sta ($6E.b),Y		; 91 6E
	bcs -104.b		; B0 98
	asl $557B.w		; 0E 7B 55
	sbc $800FF8.l,X		; FF F8 0F 80
	nop		; EA
	pea $3017.w		; F4 17 30
	ora $58.b		; 05 58
	cmp ($E0.b,X)		; C1 E0
	rep #$C8		; C2 C8
	ldx $C358.w,Y		; BE 58 C3
	bit $EFFE.w,X		; 3C FE EF
	cpx #$4A.b		; E0 4A
	cpx $FE.b		; E4 FE
	bvs  94.b		; 70 5E
	adc ($5F.b),Y		; 71 5F
	pha		; 48
	sbc $B8FBFD.l		; EF FD FB B8
	ldx $84F4.w,Y		; BE F4 84
	nop		; EA
	pea $FFAF.w		; F4 AF FF
	ldx $59FE.w		; AE FE 59
	rti		; 40

	inc $FC78.w,X		; FE 78 FC
	sbc ($FF.b,X)		; E1 FF
	inx		; E8
	ldx #$FE.b		; A2 FE
	sbc #$A3.b		; E9 A3
	ora ($B3.b),Y		; 11 B3
	mvp $3A,$FF		; 44 FF 3A
	plx		; FA
	lsr $8742.w,X		; 5E 42 87
	xce		; FB
	eor ($5D.b,X)		; 41 5D
	eor $FEFF.w,X		; 5D FF FE
	jmp $DE4CFF.l		; 5C FF 4C DE
	phy		; 5A
	inc $7E3C.w,X		; FE 3C 7E
	eor [$2E.b],Y		; 57 2E
	rol $707F.w,X		; 3E 7F 70
	sei		; 78
	ora ($E2.b)		; 12 E2
	sty $DC.b,X		; 94 DC
	sta $A146F8.l		; 8F F8 46 A1
	sec		; 38
	jsr ($F0FE.w,X)		; FC FE F0
	sbc $FE5257.l,X		; FF 57 52 FE
	rtl		; 6B

	adc #$2B.b		; 69 2B
	rol A		; 2A
	and $FF.b		; 25 FF
	beq  36.b		; F0 24
	and $25.b		; 25 25
	jsl $131122.l		; 22 22 11 13
	eor ($2D.b)		; 52 2D
	inc $1669.w,X		; FE 69 16
	rol A		; 2A
	sbc $2415FF.l,X		; FF FF 15 24
	phd		; 0B
	and $0A.b		; 25 0A
	jsl $041305.l		; 22 05 13 04
	rts		; 60

	jsr $1030.w		; 20 30 10
	ldy #$00.b		; A0 00
	bne  -1.b		; D0 FF
	rep #$80		; C2 80
	inx		; E8
	ldy #$F4.b		; A0 F4
	bvc  -2.b		; 50 FE
	tax		; AA
	eor $C21215.l,X		; 5F 15 12 C2
	rep #$80		; C2 80
	sbc $A07840.l,X		; FF 40 78 A0
	jmp $AAAE50.l		; 5C 50 AE AA
	eor $15.b,X		; 55 15
	nop		; EA
	sty $D0.b		; 84 D0
	mvn $80,$FE		; 54 FE 80
	eor $80.b		; 45 80
	inc $FEFE.w,X		; FE FE FE
	eor $8183.w		; 4D 83 81
	sbc $FC80FF.l,X		; FF FF 80 FC
	adc #$40.b		; 69 40
	jmp $A4B648.l		; 5C 48 B6 A4
	rol A		; 2A
	ldy #$1B.b		; A0 1B
	cmp ($95.b)		; D2 95
	sta ($8C.b),Y		; 91 8C
	dey		; 88
	sbc $8C86FF.l,X		; FF FF 86 8C
	rti		; 40

	lda $A4B748.l,X		; BF 48 B7 A4
	tad		; 5B
	jsr $12DF.w		; 20 DF 12
	sbc $2E91.w		; ED 91 2E
	dey		; 88
	ora [$ED.b],Y		; 17 ED
	and $8C138C.l,X		; 3F 8C 13 8C
	sbc ($80.b)		; F2 80
	sta $99.b,X		; 95 99
	ldy #$80.b		; A0 80
	cpx #$40.b		; E0 40
	clv		; B8
	plp		; 28
	jmp $DE3A14.l		; 5C 14 3A DE
	pea $A3E2.w		; F4 E2 A3
	bra 112.b		; 80 70
	sbc ($D4.b),Y		; F1 D4
	trb $EA.b		; 14 EA
	lsr $BA.b		; 46 BA
	tax		; AA
	inc $5B03.w,X		; FE 03 5B
	cmp ($68.b,X)		; C1 68
	phx		; DA
	ldy $AE.b		; A4 AE
	jmp.w [$BFC1]		; DC C1 BF
	sbc [$04.b],Y		; F7 04
	stz $EC.b,X		; 74 EC
	jsr ($3F58.w,X)		; FC 58 3F
	sbc $F85C.w,X		; FD 5C F8
	trb $28.b		; 14 28
	pea $90E0.w		; F4 E0 90
	beq  -8.b		; F0 F8
	jsr ($FCB0.w,X)		; FC B0 FC
	ldy #$F5.b		; A0 F5
	lda $C4E8F0.l,X		; BF F0 E8 C4
	lda ($95.b,X)		; A1 95
	sty $6E.b,X		; 94 6E
	ror $7535.w,X		; 7E 35 75
	and $5F2850.l,X		; 3F 50 28 5F
	ora $66AABF.l		; 0F BF AA 66
	ldy $1B00.w		; AC 00 1B
	adc $2F1F0A.l,X		; 7F 0A 1F 2F
	adc $9B.b		; 65 9B
	asl A		; 0A
	beq   9.b		; F0 09
	stz $D9.b,X		; 74 D9
	ldx $1EDA.w		; AE DA 1E
	xce		; FB
	php		; 08
	sbc $0B900B.l		; EF 0B 90 0B
	trb $15.b		; 14 15
	trb $FF.b		; 14 FF
	bpl  55.b		; 10 37
	lda $140215.l,X		; BF 15 02 14
	sbc $01EF.w,X		; FD EF 01
	trb $28.b		; 14 28
	clv		; B8
	asl A		; 0A
	lda $CD578A.l		; AF 8A 57 CD
	and $1A6C.w,Y		; 39 6C 1A
	rol $09.b,X		; 36 09
	adc $8AFD.w		; 6D FD 8A
	adc $CD7529.l,X		; 7F 29 75 CD
	and ($6C.b)		; 32 6C
	sta ($36.b,S),Y		; 93 36
	bit #$03.b		; 89 03
	ror $9D.b,X		; 76 9D
	jsr $7CE0.w		; 20 E0 7C
	asl $506F.w		; 0E 6F 50
	clv		; B8
	jsr $98EE.w		; 20 EE 98
	beq  64.b		; F0 40
	adc $A020E1.l,X		; 7F E1 20 A0
	rti		; 40

	bvc -96.b		; 50 A0
	jsr $98D8.w		; 20 D8 98
	rol A		; 2A
	adc ($FF.b,X)		; 61 FF
	sta ($94.b)		; 92 94
	adc $D2D1FF.l,X		; 7F FF D1 D2
	cmp #$48.b		; C9 48
	plp		; 28
	tay		; A8
	trb $94.b		; 14 94
	bne  -4.b		; D0 FC
	sty $0B.b,X		; 94 0B
	eor ($85.b)		; 52 85
	iny		; C8
	ora $E0.b,S		; 03 E0
	sbc $A09A28.l,X		; FF 28 9A A0
	sbc $022A.w,X		; FD 2A 02
	and $01.b		; 25 01
	cmp ($E0.b)		; D2 E0
	cmp #$70.b		; C9 70
	stx $D3.b,Y		; 96 D3
	sbc $024318.l,X		; FF 18 43 02
	beq   2.b		; F0 02
	sbc $FE01.w,X		; FD 01 FE
	cpx #$1F.b		; E0 1F
	bvs -113.b		; 70 8F
	clc		; 18
	tas		; 1B
	rol $02A7.w		; 2E A7 02
	eor ($B5.b),Y		; 51 B5
	sta [$C0.b],Y		; 97 C0
	lda ($F0.b),Y		; B1 F0
	bra -82.b		; 80 AE
	ldy $8E.b		; A4 8E
	stz $55.b,X		; 74 55
	sbc ($30.b),Y		; F1 30
	phy		; 5A
	cmp $6078.w,Y		; D9 78 60
	cmp ($71.b),Y		; D1 71
	sbc $FF46.w,Y		; F9 46 FF
	sed		; F8
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
	jsr ($5555.w,X)		; FC 55 55
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
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
	jsr ($0015.w,X)		; FC 15 00
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	ror A		; 6A
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	eor $3F.b,X		; 55 3F
	brk $FF.b		; 00 FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	sec		; 38
	trb $1DD9.w		; 1C D9 1D
	phx		; DA
	ora $F7E8.w,X		; 1D E8 F7
	plx		; FA
	inc $FFFD.w,X		; FE FD FF
	sed		; F8
	bmi -37.b		; 30 DB
	ora $1DDC.w,X		; 1D DC 1D
	cmp $F8C0.w,X		; DD C0 F8
	dec A		; 3A
	cpx #$1D.b		; E0 1D
	lda $1DE1EF.l		; AF EF E1 1D
.INDEX 8
	sep #$1D		; E2 1D
	sbc $BE.b,S		; E3 BE
	inc $F84C.w,X		; FE 4C F8
	rol $C7.b		; 26 C7
	ora $5DC7.w,X		; 1D C7 5D
	cmp ($FC.b)		; D2 FC
	inx		; E8
	cmp $E91D3F.l,X		; DF 3F 1D E9
	ora $1DEA.w,X		; 1D EA 1D
	xba		; EB
	cpy #$F8.b		; C0 F8
	bit $1DCA.w		; 2C CA 1D
	wai		; CB
	ora $1DCC.w,X		; 1D CC 1D
	dex		; CA
	cpx #$DF.b		; E0 DF
	ldx $F0FF.w,Y		; BE FF F0
	ora $1DF1.w,X		; 1D F1 1D
	sbc ($1D.b)		; F2 1D
	sbc ($C0.b,S),Y		; F3 C0
	sed		; F8
	bit $FF3F.w		; 2C 3F FF
	cmp $1DD01D.l		; CF 1D D0 1D
	cmp ($1D.b),Y		; D1 1D
	cmp $1DF8C0.l		; CF C0 F8 1D
	sbc $FA1D.w,Y		; F9 1D FA
	sbc $1DF3.w,X		; FD F3 1D
	xce		; FB
	cpy #$F8.b		; C0 F8
	bit $1DD4.w		; 2C D4 1D
	cmp $1D.b,X		; D5 1D
	dec $1D.b,X		; D6 1D
	pei ($C0.b)		; D4 C0
	inc $1EE1.w,X		; FE E1 1E
	ora $C4FF.w,X		; 1D FF C4
	asl $1E01.w,X		; 1E 01 1E
	cpy #$F8.b		; C0 F8
	pld		; 2B
	iny		; C8
	ora $E6C9.w,X		; 1D C9 E6
	sbc $C85DFE.l,X		; FF FE 5D C8
	cpy #$04.b		; C0 04
	asl $1E05.w,X		; 1E 05 1E
	asl $1E.b		; 06 1E
	ora [$1E.b]		; 07 1E
	ply		; 7A
	tya		; 98
	php		; 08
	ldx $FFFC.w,Y		; BE FC FF
	sed		; F8
	bit $CD.b		; 24 CD
	ora $FECE.w,X		; 1D CE FE
	eor $FFCD.w,X		; 5D CD FF
	eor $1E0BC0.l		; 4F C0 0B 1E
	tsb $0D1E.w		; 0C 1E 0D
	asl $1E0E.w,X		; 1E 0E 1E
	ora $1E101E.l		; 0F 1E 10 1E
	inc $BE.b		; E6 BE
	sbc $D224F8.l,X		; FF F8 24 D2
	ora $FED3.w,X		; 1D D3 FE
	eor $C0D2.w,X		; 5D D2 C0
	sbc $1E140F.l,X		; FF 0F 14 1E
	ora $1E.b,X		; 15 1E
	asl $1E.b,X		; 16 1E
	ora [$1E.b],Y		; 17 1E
	clc		; 18
	asl $1E19.w,X		; 1E 19 1E
	ora ($1E.b,S),Y		; 13 1E
	inc $BE.b		; E6 BE
	sbc $D724F8.l,X		; FF F8 24 D7
	ora $FED8.w,X		; 1D D8 FE
	eor $C0D7.w,X		; 5D D7 C0
	sbc ($BF.b,X)		; E1 BF
	ora $FF1E.w,X		; 1D 1E FF
	ora $1E201E.l,X		; 1F 1E 20 1E
	and ($1E.b,X)		; 21 1E
	jsl $AA231E.l		; 22 1E 23 AA
	ror A		; 6A
	cpy #$F8.b		; C0 F8
	rol $FF.b		; 26 FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	beq  92.b		; F0 5C
	sbc $EF.b,X		; F5 EF
	inc $16FD.w,X		; FE FD 16
	tyx		; BB
	tay		; A8
	bcs  49.b		; B0 31
	bcs  93.b		; B0 5D
	lda $5DAE5D.l		; AF 5D AE 5D
	tax		; AA
	ldx #$C3.b		; A2 C3
	tax		; AA
	sbc $CF.b,X		; F5 CF
	ora $66B1.w,X		; 1D B1 66
	ldy $F8FF.w,X		; BC FF F8
	rol A		; 2A
	lda $B85D.w,Y		; B9 5D B8
	eor $5DB7.w,X		; 5D B7 5D
	ldy $9F.b,X		; B4 9F
	jsr ($B4C0.w,X)		; FC C0 B4
	ora $1DBA.w,X		; 1D BA 1D
	tyx		; BB
	ldx $F8FF.w,Y		; BE FF F8
	rol A		; 2A
	cmp ($5D.b,X)		; C1 5D
	cpy #$5D.b		; C0 5D
	cpx #$07.b		; E0 07
	lda $FD40C2.l,X		; BF C2 40 FD
	lda $1DC21D.l,X		; BF 1D C2 1D
	cmp $BE.b,S		; C3 BE
	eor $00.b,X		; 55 00
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	ror $F000.w		; 6E 00 F0
	brk $00.b		; 00 00
	cmp ($7F.b,S),Y		; D3 7F
	ora ($18.b,X)		; 01 18
	inc $0802.w,X		; FE 02 08
	ora $08.b,S		; 03 08
	tsb $08.b		; 04 08
	ora $08.b		; 05 08
	asl $87.b		; 06 87
	sbc $0AF8FE.l,X		; FF FE F8 0A
	ora [$08.b]		; 07 08
	sbc $740809.l,X		; FF 09 08 74
	php		; 08
	adc $08.b,X		; 75 08
	ror $08.b,X		; 76 08
	sbc $0877F0.l,X		; FF F0 77 08
	sei		; 78
	php		; 08
	adc $7A08.w,Y		; 79 08 7A
	bpl 123.b		; 10 7B
	inc $7A50.w,X		; FE 50 7A
	bvc  -1.b		; 50 FF
	sta [$79.b]		; 87 79
	pha		; 48
	sei		; 78
	pha		; 48
	adc [$48.b],Y		; 77 48
	ror $48.b,X		; 76 48
	adc $48.b,X		; 75 48
	stz $48.b,X		; 74 48
	cpy $BF.b		; C4 BF
	sbc $0B080A.l,X		; FF 0A 08 0B
	php		; 08
	tsb $0D08.w		; 0C 08 0D
	inc $10F8.w,X		; FE F8 10
	asl $0F08.w		; 0E 08 0F
	php		; 08
	bpl   8.b		; 10 08
	jmp ($1FFF.w,X)		; 7C FF 1F
	php		; 08
	adc $7E08.w,X		; 7D 08 7E
	php		; 08
	adc $108010.l,X		; 7F 10 80 10
	sta ($10.b,X)		; 81 10
	.db $82, $10, $83		; 82 10 83
	inc $FE7F.w,X		; FE 7F FE
	bvc -126.b		; 50 82
	bvc -127.b		; 50 81
	bvc -128.b		; 50 80
	bvc 127.b		; 50 7F
	bvc 126.b		; 50 7E
	pha		; 48
	adc $7C48.w,X		; 7D 48 7C
	jsr ($C0EF.w,X)		; FC EF C0
	ora ($08.b),Y		; 11 08
	ora ($08.b)		; 12 08
	ora ($08.b,S),Y		; 13 08
	trb $08.b		; 14 08
	ora $FE.b,X		; 15 FE
	sed		; F8
	ora ($16.b)		; 12 16
	sbc $84107F.l,X		; FF 7F 10 84
	bpl -123.b		; 10 85
	bpl -122.b		; 10 86
	bpl -121.b		; 10 87
	bpl -120.b		; 10 88
	bpl -119.b		; 10 89
	bpl -118.b		; 10 8A
	bpl -117.b		; 10 8B
	sed		; F8
	sbc $8A50FE.l,X		; FF FE 50 8A
	bvc -119.b		; 50 89
	bvc -120.b		; 50 88
	bvc -121.b		; 50 87
	bvc -122.b		; 50 86
	bvc -123.b		; 50 85
	cmp ($FF.b,S),Y		; D3 FF
	bvc -124.b		; 50 84
	bvc  66.b		; 50 42
	ora [$08.b],Y		; 17 08
	clc		; 18
	php		; 08
	ora $1A08.w,Y		; 19 08 1A
	php		; 08
	tas		; 1B
	sbc $10FF.w,X		; FD FF 10
	trb $F8FE.w		; 1C FE F8
	bpl -116.b		; 10 8C
	bpl -115.b		; 10 8D
	bpl -114.b		; 10 8E
	bpl -113.b		; 10 8F
	bpl -112.b		; 10 90
	bpl -111.b		; 10 91
	bpl -61.b		; 10 C3
	sbc $931092.l,X		; FF 92 10 93
	inc $9250.w,X		; FE 50 92
	bvc -111.b		; 50 91
	bvc -112.b		; 50 90
	bvc -113.b		; 50 8F
	bvc -65.b		; 50 BF
	ldx $508E.w,Y		; BE 8E 50
	sta $8C50.w		; 8D 50 8C
	bvc  29.b		; 50 1D
	brk $FB.b		; 00 FB
	inc $1EFC.w,X		; FE FC 1E
	php		; 08
	ora $FFFF10.l,X		; 1F 10 FF FF
	inc $0FF8.w,X		; FE F8 0F
	sty $10.b,X		; 94 10
	sta $10.b,X		; 95 10
	stx $10.b,Y		; 96 10
	sta [$10.b],Y		; 97 10
	tya		; 98
	bpl -103.b		; 10 99
	bpl -102.b		; 10 9A
	bpl -101.b		; 10 9B
	sbc ($FF.b,X)		; E1 FF
	bpl -100.b		; 10 9C
	plx		; FA
	bvc -103.b		; 50 99
	bvc -104.b		; 50 98
	bvc -105.b		; 50 97
	bvc -106.b		; 50 96
	bvc -107.b		; 50 95
	ora $9450F3.l,X		; 1F F3 50 94
	bvc  32.b		; 50 20
	clc		; 18
	and ($C6.b,X)		; 21 C6
	jsl $F723C0.l		; 22 C0 23 F7
	sbc $102408.l,X		; FF 08 24 10
	and $FE.b		; 25 FE
	sed		; F8
	asl $109D.w		; 0E 9D 10
	stz $9F10.w,X		; 9E 10 9F
	bpl -96.b		; 10 A0
	bpl -95.b		; 10 A1
	bpl  63.b		; 10 3F
	jsr ($10A2.w,X)		; FC A2 10
	lda $10.b,S		; A3 10
	ldy $10.b		; A4 10
	lda $FA.b		; A5 FA
	bvc -94.b		; 50 A2
	bvc -95.b		; 50 A1
	bvc  -1.b		; 50 FF
	and $9F50A0.l,X		; 3F A0 50 9F
	bvc -98.b		; 50 9E
	bvc -99.b		; 50 9D
	bvc  38.b		; 50 26
	clc		; 18
	and [$18.b]		; 27 18
	plp		; 28
	clc		; 18
	and #$C6.b		; 29 C6
	lda $BE2ABA.l,X		; BF BA 2A BE
	pld		; 2B
	bpl  44.b		; 10 2C
	bpl  45.b		; 10 2D
	bpl  46.b		; 10 2E
	sbc $F8FA7F.l,X		; FF 7F FA F8
	tsb $10A6.w		; 0C A6 10
	lda [$10.b]		; A7 10
	tay		; A8
	bpl -87.b		; 10 A9
	bpl -86.b		; 10 AA
	bpl -85.b		; 10 AB
	bpl -84.b		; 10 AC
	bpl -83.b		; 10 AD
	sed		; F8
	sbc $AA50FA.l,X		; FF FA 50 AA
	bvc -87.b		; 50 A9
	bvc -88.b		; 50 A8
	bvc -89.b		; 50 A7
	bvc -90.b		; 50 A6
	bvc  46.b		; 50 2E
	sbc $2F50C7.l,X		; FF C7 50 2F
	clc		; 18
	bmi  24.b		; 30 18
	and ($18.b),Y		; 31 18
	and ($18.b)		; 32 18
	and ($18.b,S),Y		; 33 18
	bit $C0.b,X		; 34 C0
	inc $35FF.w,X		; FE FF 35
	cpy #$F8.b		; C0 F8
	ora ($AE.b)		; 12 AE
	bpl -81.b		; 10 AF
	bpl -80.b		; 10 B0
	bpl -79.b		; 10 B1
	bpl -78.b		; 10 B2
	bpl -77.b		; 10 B3
	bpl -76.b		; 10 B4
	sbc ($7F.b,X)		; E1 7F
	bpl -75.b		; 10 B5
	plx		; FA
	bvc -78.b		; 50 B2
	bvc -79.b		; 50 B1
	bvc -80.b		; 50 B0
	bvc -81.b		; 50 AF
	bvc -82.b		; 50 AE
	jsr ($C0FF.w,X)		; FC FF C0
	rol $18.b,X		; 36 18
	and [$18.b],Y		; 37 18
	sec		; 38
	clc		; 18
	and $3A18.w,Y		; 39 18 3A
	clc		; 18
	tsa		; 3B
	clc		; 18
	sbc $183CFE.l,X		; FF FE 3C 18
	and $3E10.w,X		; 3D 10 3E
	bpl  63.b		; 10 3F
	bpl  64.b		; 10 40
	plx		; FA
	sed		; F8
	tsb $10B6.w		; 0C B6 10
	lda [$10.b],Y		; B7 10
	clv		; B8
	sbc $B910E1.l,X		; FF E1 10 B9
	bpl -70.b		; 10 BA
	bpl -69.b		; 10 BB
	bpl -68.b		; 10 BC
	bpl -67.b		; 10 BD
	plx		; FA
	bvc -70.b		; 50 BA
	sbc $B950FF.l,X		; FF FF 50 B9
	bvc -72.b		; 50 B8
	bvc -73.b		; 50 B7
	bvc -74.b		; 50 B6
	bvc  64.b		; 50 40
	bvc  65.b		; 50 41
	clc		; 18
	.db $42, $18		; 42 18
	eor $FF.b,S		; 43 FF
	sta $4418.w		; 8D 18 44
	clc		; 18
	eor $18.b		; 45 18
	lsr $18.b		; 46 18
	eor [$18.b]		; 47 18
	pha		; 48
	cpy #$F8.b		; C0 F8
	ora ($BE.b)		; 12 BE
	beq -57.b		; F0 C7
	bra  -6.b		; 80 FA
	lda $10C010.l,X		; BF 10 C0 10
	cmp ($10.b,X)		; C1 10
	rep #$C0		; C2 C0
	sta $50C110.l		; 8F 10 C1 50
	cpy #$50.b		; C0 50
	lda $BE80C6.l,X		; BF C6 80 BE
	sbc $49FABF.l,X		; FF BF FA 49
	clc		; 18
	lsr A		; 4A
	clc		; 18
	phk		; 4B
	clc		; 18
	jmp $4D18.w		; 4C 18 4D
	clc		; 18
	lsr $4F18.w		; 4E 18 4F
	lsr $80FF.w,X		; 5E FF 80
	sed		; F8
	clc		; 18
	cpy #$FE.b		; C0 FE
	cmp $10.b,S		; C3 10
	cpy $C0.b		; C4 C0
	sbc $50FC80.l,X		; FF 80 FC 50
	clc		; 18
	eor ($18.b),Y		; 51 18
	eor ($18.b)		; 52 18
	lda $1853F4.l,X		; BF F4 53 18
	mvn $55,$18		; 54 18 55
	clc		; 18
	lsr $80.b,X		; 56 80
	sed		; F8
	trb $C0.b		; 14 C0
	cmp $10.b		; C5 10
	dec $7F.b		; C6 7F
	sed		; F8
	bpl -57.b		; 10 C7
	bpl -56.b		; 10 C8
	bpl -55.b		; 10 C9
	bpl -54.b		; 10 CA
	plx		; FA
	bvc -57.b		; 50 C7
	bvc -58.b		; 50 C6
	ora $507E.w,X		; 1D 7E 50
	cmp $C0.b		; C5 C0
	sbc $1857.w,X		; FD 57 18
	inc $1858.w,X		; FE 58 18
	eor $5A10.w,Y		; 59 10 5A
	bpl  37.b		; 10 25
	txa		; 8A
	jsr ($F6FE.w,X)		; FC FE F6
	inc $F8FE.w,X		; FE FE F8
	wai		; CB
	cmp [$0F.b]		; C7 0F
	rti		; 40

	cpy $CD10.w		; CC 10 CD
	inc $10CE.w,X		; FE CE 10
	cmp $63D010.l		; CF 10 D0 63
	jsr ($50FA.w,X)		; FC FA 50
	cmp $CCFE.w		; CD FE CC
	rti		; 40

	wai		; CB
	bvc  89.b		; 50 59
	bvc  -1.b		; 50 FF
	adc $5C185B.l,X		; 7F 5B 18 5C
	clc		; 18
	eor $5E18.w,X		; 5D 18 5E
	bpl  95.b		; 10 5F
	clc		; 18
	rts		; 60

	clc		; 18
	adc ($18.b,X)		; 61 18
	.db $62, $10, $A8		; 62 10 A8
	and ($F6.b),Y		; 31 F6
	adc $FE.b,S		; 63 FE
	sbc $FEF6.w,X		; FD F6 FE
	cmp ($80.b),Y		; D1 80
	cmp ($7F.b)		; D2 7F
	tya		; 98
	inc $10D3.w,X		; FE D3 10
	pei ($10.b)		; D4 10
	cmp $FA.b,X		; D5 FA
	bvc -46.b		; 50 D2
	sbc ($FF.b,X)		; E1 FF
	inc $D180.w,X		; FE 80 D1
	bvc  99.b		; 50 63
	bvc 100.b		; 50 64
	clc		; 18
	adc $18.b		; 65 18
	ror $18.b		; 66 18
	sbc $1067A1.l,X		; FF A1 67 10
	pla		; 68
	clc		; 18
	adc #$18.b		; 69 18
	ror A		; 6A
	clc		; 18
	rtl		; 6B

	bpl -10.b		; 10 F6
	jmp ($C7F0.w)		; 6C F0 C7
	inc $F6FD.w,X		; FE FD F6
	adc $6E0C.w		; 6D 0C 6E
	tsb $0CD6.w		; 0C D6 0C
	cmp [$80.b],Y		; D7 80
	jsr ($D861.w,X)		; FC 61 D8
	inc $10D9.w,X		; FE D9 10
	phx		; DA
	bpl -37.b		; 10 DB
	plx		; FA
	bvc -40.b		; 50 D8
	stx $7F.b		; 86 7F
	inc $D780.w,X		; FE 80 D7
	bvc -42.b		; 50 D6
	jmp $0C6F.w		; 4C 6F 0C
	bvs  12.b		; 70 0C
	sbc $F8FCEF.l,X		; FF EF FC F8
	ora $71.b,X		; 15 71
	tsb $0C72.w		; 0C 72 0C
	adc ($0C.b,S),Y		; 73 0C
	jmp.w [$DD0C]		; DC 0C DD
	tsb $FCDE.w		; 0C DE FC
	sed		; F8
	asl A		; 0A
	cmp $FBFB.w,X		; DD FB FB
	jmp $4CDE.w		; 4C DE 4C
	jsr ($09F8.w,X)		; FC F8 09
	jmp.w [$DF4C]		; DC 4C DF
	tsb $0CE0.w		; 0C E0 0C
	jsr ($11F8.w,X)		; FC F8 11
	sbc ($0C.b,X)		; E1 0C
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	xce		; FB
	tsb $0CE3.w		; 0C E3 0C
	cpx $0C.b		; E4 0C
	sbc $0C.b		; E5 0C
	jmp ($6D0D.w)		; 6C 0D 6D
	ora $F8FC.w		; 0D FC F8
	phd		; 0B
	adc $6C4D.w		; 6D 4D 6C
	ldx $4DFF.w,Y		; BE FF 4D
	jsr ($0BF8.w,X)		; FC F8 0B
	inc $0C.b		; E6 0C
	sbc [$0C.b]		; E7 0C
	jsr ($0FF8.w,X)		; FC F8 0F
	inx		; E8
	tsb $0CE9.w		; 0C E9 0C
	nop		; EA
	tsb $87EB.w		; 0C EB 87
	ldx $EC0C.w,Y		; BE 0C EC
	tsb $3EED.w		; 0C ED 3E
	ora $F8FC.w		; 0D FC F8
	ora $4CED.w		; 0D ED 4C
	ror $FB4D.w		; 6E 4D FB
	sbc $0BF8FC.l,X		; FF FC F8 0B
	inc $FE0C.w		; EE 0C FE
	sed		; F8
	ora $F00CEF.l		; 0F EF 0C F0
	tsb $0CF1.w		; 0C F1 0C
	sbc ($0C.b)		; F2 0C
	sbc ($0C.b,S),Y		; F3 0C
	pea $DF7D.w		; F4 7D DF
	tsb $FCF5.w		; 0C F5 FC
	sed		; F8
	bpl -11.b		; 10 F5
	jmp $4CF4.w		; 4C F4 4C
	jsr ($0BF8.w,X)		; FC F8 0B
	inc $0C.b,X		; F6 0C
	sbc [$0C.b],Y		; F7 0C
	jsr ($0DF8.w,X)		; FC F8 0D
	lda $0CF886.l,X		; BF 86 F8 0C
	sbc $FA0C.w,Y		; F9 0C FA
	tsb $E8FB.w		; 0C FB E8
	sed		; F8
	bpl  -4.b		; 10 FC
	jsr ($CEF7.w,X)		; FC F7 CE
	inc $4CFF.w,X		; FE FF 4C
	jsr ($0BF8.w,X)		; FC F8 0B
	jsr ($FD14.w,X)		; FC 14 FD
	trb $FE.b		; 14 FE
	trb $FF.b		; 14 FF
	trb $00.b		; 14 00
	ora $01.b,X		; 15 01
	ora $02.b,X		; 15 02
	sbc $0315FD.l,X		; FF FD 15 03
	ora $04.b,X		; 15 04
	ora $05.b,X		; 15 05
	ora $06.b,X		; 15 06
	ora $3F07.w		; 0D 07 3F
	cmp $0D09.w,Y		; D9 09 0D
	asl A		; 0A
	ora $FFFF.w		; 0D FF FF
	phd		; 0B
	ora $0D6F.w		; 0D 6F 0D
	bvs  13.b		; 70 0D
	adc ($0D.b),Y		; 71 0D
	adc ($0D.b)		; 72 0D
	adc ($0D.b,S),Y		; 73 0D
	stz $0D.b,X		; 74 0D
	adc $0D.b,X		; 75 0D
	beq  -1.b		; F0 FF
	ror $FE.b,X		; 76 FE
	eor $4D75.w		; 4D 75 4D
	stz $4D.b,X		; 74 4D
	adc ($4D.b,S),Y		; 73 4D
	adc ($4D.b)		; 72 4D
	adc ($4D.b),Y		; 71 4D
	sbc $4D70FF.l,X		; FF FF 70 4D
	adc $150C4D.l		; 6F 4D 0C 15
	ora $0E15.w		; 0D 15 0E
	ora $0F.b,X		; 15 0F
	ora $10.b,X		; 15 10
	ora $11.b,X		; 15 11
	ora $0F.b,X		; 15 0F
	sbc $131512.l,X		; FF 12 15 13
	ora $F114.w		; 0D 14 F1
	ora $0D16.w		; 0D 16 0D
	ora [$0D.b],Y		; 17 0D
	clc		; 18
	ora $FFFF.w		; 0D FF FF
	ora $1A0D.w,Y		; 19 0D 1A
	ora $0D1B.w		; 0D 1B 0D
	adc [$0D.b],Y		; 77 0D
	sei		; 78
	ora $0D79.w		; 0D 79 0D
	ply		; 7A
	ora $0D7B.w		; 0D 7B 0D
	ora $0D7CFF.l		; 0F FF 7C 0D
	adc $7E0D.w,X		; 7D 0D 7E
	inc $7D4D.w,X		; FE 4D 7D
	eor $4D7C.w		; 4D 7C 4D
	tda		; 7B
	eor $FFFF.w		; 4D FF FF
	ply		; 7A
	eor $4D79.w		; 4D 79 4D
	sei		; 78
	eor $4D77.w		; 4D 77 4D
	trb $1D15.w		; 1C 15 1D
	ora $1E.b,X		; 15 1E
	ora $1F.b,X		; 15 1F
	ora $FF.b,X		; 15 FF
	sbc $210D20.l,X		; FF 20 0D 21
	ora $0D22.w		; 0D 22 0D
	and $0D.b,S		; 23 0D
	bit $0D.b		; 24 0D
	and $0D.b		; 25 0D
	rol $0D.b		; 26 0D
	and [$0D.b]		; 27 0D
	sbc $0D28FF.l,X		; FF FF 28 0D
	and #$0D.b		; 29 0D
	rol A		; 2A
	ora $0D2B.w		; 0D 2B 0D
	adc $0D800D.l,X		; 7F 0D 80 0D
	sta ($0D.b,X)		; 81 0D
	.db $82, $0D, $3F		; 82 0D 3F
	jsr ($0D83.w,X)		; FC 83 0D
	sty $0D.b		; 84 0D
	sta $0D.b		; 85 0D
	stx $FE.b		; 86 FE
	eor $4D85.w		; 4D 85 4D
	sty $4D.b		; 84 4D
	sbc $4D83FF.l,X		; FF FF 83 4D
	.db $82, $4D, $81		; 82 4D 81
	eor $4D80.w		; 4D 80 4D
	adc $0D2C4D.l,X		; 7F 4D 2C 0D
	and $2E0D.w		; 2D 0D 2E
	ora $FFFF.w		; 0D FF FF
	and $0D300D.l		; 2F 0D 30 0D
	and ($0D.b),Y		; 31 0D
	and ($0D.b)		; 32 0D
	and ($0D.b,S),Y		; 33 0D
	bit $0D.b,X		; 34 0D
	and $0D.b,X		; 35 0D
	rol $0D.b,X		; 36 0D
	sbc $0D37FF.l,X		; FF FF 37 0D
	sec		; 38
	ora $0D39.w		; 0D 39 0D
	dec A		; 3A
	ora $0D3B.w		; 0D 3B 0D
	sta [$0D.b]		; 87 0D
	dey		; 88
	ora $0D89.w		; 0D 89 0D
	sbc $0D8AF0.l,X		; FF F0 8A 0D
	phb		; 8B
	ora $0D8C.w		; 0D 8C 0D
	sta $8E0D.w		; 8D 0D 8E
	inc $8D4D.w,X		; FE 4D 8D
	eor $FFFF.w		; 4D FF FF
	sty $8B4D.w		; 8C 4D 8B
	eor $4D8A.w		; 4D 8A 4D
	bit #$4D.b		; 89 4D
	dey		; 88
	eor $4D87.w		; 4D 87 4D
	bit $3D0D.w,X		; 3C 0D 3D
	ora $FFFF.w		; 0D FF FF
	rol $3F0D.w,X		; 3E 0D 3F
	ora $0D40.w		; 0D 40 0D
	eor ($0D.b,X)		; 41 0D
	.db $42, $0D		; 42 0D
	eor $0D.b,S		; 43 0D
	mvp $45,$0D		; 44 0D 45
	ora $FFFF.w		; 0D FF FF
	lsr $0D.b		; 46 0D
	eor [$0D.b]		; 47 0D
	pha		; 48
	ora $0D49.w		; 0D 49 0D
	lsr A		; 4A
	ora $0D4B.w		; 0D 4B 0D
	sta $0D900D.l		; 8F 0D 90 0D
	sbc $0D91C3.l,X		; FF C3 91 0D
	sta ($0D.b)		; 92 0D
	sta ($0D.b,S),Y		; 93 0D
	sty $0D.b,X		; 94 0D
	sta $0D.b,X		; 95 0D
	stx $FE.b,Y		; 96 FE
	eor $FFFF.w		; 4D FF FF
	sta $4D.b,X		; 95 4D
	sty $4D.b,X		; 94 4D
	sta ($4D.b,S),Y		; 93 4D
	sta ($4D.b)		; 92 4D
	sta ($4D.b),Y		; 91 4D
	bcc  77.b		; 90 4D
	sta $0D4C4D.l		; 8F 4D 4C 0D
	sbc $0D4DFF.l,X		; FF FF 4D 0D
	lsr $4F0D.w		; 4E 0D 4F
	ora $0D50.w		; 0D 50 0D
	eor ($0D.b),Y		; 51 0D
	eor ($0D.b)		; 52 0D
	eor ($0D.b,S),Y		; 53 0D
	mvn $FF,$0D		; 54 0D FF
	sbc $560D55.l,X		; FF 55 0D 56
	ora $0D57.w		; 0D 57 0D
	cli		; 58
	ora $0D59.w		; 0D 59 0D
	phy		; 5A
	ora $0D5B.w		; 0D 5B 0D
	sta [$0D.b],Y		; 97 0D
	sbc $0D980F.l,X		; FF 0F 98 0D
	sta $9A0D.w,Y		; 99 0D 9A
	ora $0D9B.w		; 0D 9B 0D
	stz $9D0D.w		; 9C 0D 9D
	ora $FF9E.w		; 0D 9E FF
	sbc $9D4DFE.l,X		; FF FE 4D 9D
	eor $4D9C.w		; 4D 9C 4D
	txy		; 9B
	eor $4D9A.w		; 4D 9A 4D
	sta $984D.w,Y		; 99 4D 98
	eor $4D97.w		; 4D 97 4D
	sbc $0D5CFF.l,X		; FF FF 5C 0D
	eor $5E0D.w,X		; 5D 0D 5E
	ora $0D5F.w		; 0D 5F 0D
	rts		; 60

	ora $0D61.w		; 0D 61 0D
	.db $62, $0D, $63		; 62 0D 63
	ora $FFFF.w		; 0D FF FF
	stz $0D.b		; 64 0D
	adc $0D.b		; 65 0D
	ror $0D.b		; 66 0D
	adc [$0D.b]		; 67 0D
	pla		; 68
	ora $0D69.w		; 0D 69 0D
	ror A		; 6A
	ora $0D6B.w		; 0D 6B 0D
	sbc $0D9F3F.l,X		; FF 3F 9F 0D
	ldy #$0D.b		; A0 0D
	lda ($0D.b,X)		; A1 0D
	ldx #$0D.b		; A2 0D
	lda $0D.b,S		; A3 0D
	ldy $0D.b		; A4 0D
	lda $0D.b		; A5 0D
	ldx $FC.b		; A6 FC
	sbc $A54DFE.l,X		; FF FE 4D A5
	eor $4DA4.w		; 4D A4 4D
	lda $4D.b,S		; A3 4D
	ldx #$4D.b		; A2 4D
	lda ($4D.b,X)		; A1 4D
	ldy #$4D.b		; A0 4D
	xba		; EB
	cmp $004D9F.l,X		; DF 9F 4D 00
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	eor ($09.b,X)		; 41 09
	pha		; 48
	php		; 08
	pha		; 48
	ora [$48.b]		; 07 48
	asl $FE.b		; 06 FE
	sed		; F8
	asl A		; 0A
	sbc $4805B1.l,X		; FF B1 05 48
	tsb $48.b		; 04 48
	ora $48.b,S		; 03 48
	cop $48.b		; 02 48
	ora ($58.b,X)		; 01 58
	inc $BF18.w,X		; FE 18 BF
	ror $F8C0.w,X		; 7E C0 F8
	ora $0F4810.l,X		; 1F 10 48 0F
	pha		; 48
	asl $D148.w		; 0E 48 D1
	sbc #$FE.b		; E9 FE
	sed		; F8
	asl $480C.w		; 0E 0C 48
	phd		; 0B
	pha		; 48
	asl A		; 0A
	pea $BCFD.w		; F4 FD BC
	cpy #$F8.b		; C0 F8
	ora $155016.l,X		; 1F 16 50 15
	pha		; 48
	inc $11F8.w,X		; FE F8 11
	trb $48.b		; 14 48
	ora ($48.b,S),Y		; 13 48
	tyx		; BB
	sbc $114812.l,X		; FF 12 48 11
	cpy #$F8.b		; C0 F8
	jsl $FE501C.l		; 22 1C 50 FE
	sed		; F8
	ora $1A501B.l		; 0F 1B 50 1A
	pha		; 48
	ora $1848.w,Y		; 19 48 18
	cmp $482D.w,Y		; D9 2D 48
	ora [$3E.b],Y		; 17 3E
	cpy #$F8.b		; C0 F8
	ora $FE501F.l,X		; 1F 1F 50 FE
	sed		; F8
	ora $FC061E.l		; 0F 1E 06 FC
	adc [$CF.b],Y		; 77 CF
	inc $C01D.w,X		; FE 1D C0
	sed		; F8
	jsr $5025.w		; 20 25 50
	inc $0DF8.w,X		; FE F8 0D
	bit $50.b		; 24 50
	and $F1.b,S		; 23 F1
	lsr $22C0.w,X		; 5E C0 22
	jsr ($5821.w,X)		; FC 21 58
	jsr $F8C0.w		; 20 C0 F8
	jsr $502D.w		; 20 2D 50
	bit $C17A.w		; 2C 7A C1
	sta [$F8.b]		; 87 F8
	plx		; FA
	sed		; F8
	ora #$2B.b		; 09 2B
	bvc -56.b		; 50 C8
	rol A		; 2A
	dec $29.b		; C6 29
	cli		; 58
	plp		; 28
	and [$FE.b],Y		; 37 FE
	cli		; 58
	and [$58.b]		; 27 58
	rol $C0.b		; 26 C0
	sed		; F8
	bmi  53.b		; 30 35
	cpy #$34.b		; C0 34
	cli		; 58
	and ($58.b,S),Y		; 33 58
	and ($DF.b)		; 32 DF
	xba		; EB
	cli		; 58
	and ($58.b),Y		; 31 58
	bmi  88.b		; 30 58
	and $20F8C0.l		; 2F C0 F8 20
	and $FA3E50.l,X		; 3F 50 3E FA
	cmp ($FA.b,X)		; C1 FA
	sed		; F8
	ora #$3D.b		; 09 3D
	sbc $3C50DF.l,X		; FF DF 50 3C
	cli		; 58
	tsa		; 3B
	cli		; 58
	dec A		; 3A
	cli		; 58
	and $3858.w,Y		; 39 58 38
	cli		; 58
	and [$58.b],Y		; 37 58
	rol $C0.b,X		; 36 C0
	sed		; F8
	bmi  -1.b		; 30 FF
	lda $475048.l,X		; BF 48 50 47
	cli		; 58
	lsr $58.b		; 46 58
	eor $58.b		; 45 58
	mvp $43,$58		; 44 58 43
	cli		; 58
	.db $42, $58		; 42 58
	eor ($FF.b,X)		; 41 FF
	cmp $32F880.l,X		; DF 80 F8 32
	eor $584E58.l		; 4F 58 4E 58
	eor $4C58.w		; 4D 58 4C
	cli		; 58
	phk		; 4B
	cli		; 58
	lsr A		; 4A
	cli		; 58
	eor #$80.b		; 49 80
	sed		; F8
	and ($FF.b)		; 32 FF
	adc $555856.l		; 6F 56 58 55
	cli		; 58
	mvn $53,$58		; 54 58 53
	cli		; 58
	eor ($58.b)		; 52 58
	eor ($58.b),Y		; 51 58
	bvc -64.b		; 50 C0
	sed		; F8
	jsr $895A.w		; 20 5A 89
	rti		; 40

	bit $FEC1.w,X		; 3C C1 FE
	sed		; F8
	jsr ($FCFA.w,X)		; FC FA FC
	sta $FCFC36.l		; 8F 36 FC FC
	cli		; 58
	cli		; 58
	eor [$FE.b],Y		; 57 FE
	cpy #$F8.b		; C0 F8
	ora $C13C63.l,X		; 1F 63 3C C1
	lsr $FF0A.w,X		; 5E 0A FF
	jsr ($FCFE.w,X)		; FC FE FC
	inc $62.b,X		; F6 62
	bvc  97.b		; 50 61
	cli		; 58
	rts		; 60

	cli		; 58
	eor $58FDF0.l,X		; 5F F0 FD 58
	inc $5D.b,X		; F6 5D
	cli		; 58
	jmp $C05B58.l		; 5C 58 5B C0
	sed		; F8
	jsr $4C6E.w		; 20 6E 4C
	adc $0B4C.w		; 6D 4C 0B
	sbc $6C5067.l,X		; FF 67 50 6C
	inc $F6FD.w,X		; FE FD F6
	rtl		; 6B

	bvc 106.b		; 50 6A
	cli		; 58
	adc #$58.b		; 69 58
	pla		; 68
	beq  -3.b		; F0 FD
	cli		; 58
	inc $66.b,X		; F6 66
	cli		; 58
	adc $58.b		; 65 58
	stz $C0.b		; 64 C0
	sed		; F8
	jsr $4C73.w		; 20 73 4C
	adc ($4C.b)		; 72 4C
	lda $4C71FF.l		; AF FF 71 4C
	adc $FC704C.l		; 6F 4C 70 FC
	sed		; F8
	asl $C0.b,X		; 16 C0
	sed		; F8
	ora $E44CE5.l,X		; 1F E5 4C E4
	jmp $4CE3.w		; 4C E3 4C
.INDEX 8
	sep #$5F		; E2 5F
	sbc $4CE14C.l,X		; FF 4C E1 4C
	cmp $FCE04C.l,X		; DF 4C E0 FC
	sed		; F8
	ora ($C0.b)		; 12 C0
	sed		; F8
	ora $EC4CED.l,X		; 1F ED 4C EC
	jmp $4CEB.w		; 4C EB 4C
	sbc $4CEAEA.l,X		; FF EA EA 4C
	sbc #$4C.b		; E9 4C
	inx		; E8
	jmp $4CE7.w		; 4C E7 4C
	inc $FC.b		; E6 FC
	sed		; F8
	bpl -64.b		; 10 C0
	sed		; F8
	ora $F3C23C.l,X		; 1F 3C C2 F3
	sbc $F24CD5.l,X		; FF D5 4C F2
	jmp $4CF1.w		; 4C F1 4C
	beq  76.b		; F0 4C
	sbc $FEEE4C.l		; EF 4C EE FE
	sed		; F8
	bpl -64.b		; 10 C0
	sed		; F8
	ora $BFC438.l,X		; 1F 38 C4 BF
	cpx $FB.b		; E4 FB
	jmp $4CFA.w		; 4C FA 4C
	sbc $F84C.w,Y		; F9 4C F8
	bit $C0.b		; 24 C0
	asl $C0FC.w		; 0E FC C0
	sed		; F8
	ora $FFFF0B.l,X		; 1F 0B FF FF
	eor $4D0A.w		; 4D 0A 4D
	ora #$4D.b		; 09 4D
	php		; 08
	eor $4D07.w		; 4D 07 4D
	asl $4D.b		; 06 4D
	ora $55.b		; 05 55
	tsb $55.b		; 04 55
	ora $FF.b,S		; 03 FF
	lda $550255.l,X		; BF 55 02 55
	ora ($55.b,X)		; 01 55
	brk $55.b		; 00 55
	sbc $54FE54.l,X		; FF 54 FE 54
	sbc $FC54.w,X		; FD 54 FC
	mvn $FF,$FF		; 54 FF FF
	cpy #$F8.b		; C0 F8
	ora $1A4D1B.l,X		; 1F 1B 4D 1A
	eor $4D19.w		; 4D 19 4D
	clc		; 18
	eor $4D17.w		; 4D 17 4D
	asl $4D.b,X		; 16 4D
	ora $4D.b,X		; 15 4D
	trb $FF.b		; 14 FF
	adc $4D134D.l,X		; 7F 4D 13 4D
	ora ($55.b)		; 12 55
	ora ($55.b),Y		; 11 55
	bpl  85.b		; 10 55
	ora $550E55.l		; 0F 55 0E 55
	ora $0C55.w		; 0D 55 0C
	beq  -1.b		; F0 FF
	ldx $FF.b,Y		; B6 FF
	sed		; F8
	asl $4D2B.w,X		; 1E 2B 4D
	rol A		; 2A
	eor $4D29.w		; 4D 29 4D
	plp		; 28
	eor $4D27.w		; 4D 27 4D
	sbc $4D26FF.l,X		; FF FF 26 4D
	and $4D.b		; 25 4D
	bit $4D.b		; 24 4D
	and $4D.b,S		; 23 4D
	jsl $4D214D.l		; 22 4D 21 4D
	jsr $1F4D.w		; 20 4D 1F
	eor $EF.b,X		; 55 EF
	sbc $1D551E.l,X		; FF 1E 55 1D
	eor $1C.b,X		; 55 1C
	cpy #$F8.b		; C0 F8
	jsr $4D3B.w		; 20 3B 4D
	dec A		; 3A
	eor $4D39.w		; 4D 39 4D
	sec		; 38
	eor $FF37.w		; 4D 37 FF
	sbc $4D364D.l,X		; FF 4D 36 4D
	and $4D.b,X		; 35 4D
	bit $4D.b,X		; 34 4D
	and ($4D.b,S),Y		; 33 4D
	and ($4D.b)		; 32 4D
	and ($4D.b),Y		; 31 4D
	bmi  77.b		; 30 4D
	and $4DFFDF.l		; 2F DF FF 4D
	rol $2D4D.w		; 2E 4D 2D
	eor $E02C.w		; 4D 2C E0
	cpy #$20.b		; C0 20
	phk		; 4B
	eor $4D4A.w		; 4D 4A 4D
	eor #$4D.b		; 49 4D
	pha		; 48
	eor $FFFF.w		; 4D FF FF
	eor [$4D.b]		; 47 4D
	lsr $4D.b		; 46 4D
	eor $4D.b		; 45 4D
	mvp $43,$4D		; 44 4D 43
	eor $4D42.w		; 4D 42 4D
	eor ($4D.b,X)		; 41 4D
	rti		; 40

	eor $FFBF.w		; 4D BF FF
	and $4D3E4D.l,X		; 3F 4D 3E 4D
	and $3C4D.w,X		; 3D 4D 3C
	cpy #$F8.b		; C0 F8
	jsr $4D5B.w		; 20 5B 4D
	phy		; 5A
	eor $4D59.w		; 4D 59 4D
	cli		; 58
	sbc $574DFF.l,X		; FF FF 4D 57
	eor $4D56.w		; 4D 56 4D
	eor $4D.b,X		; 55 4D
	mvn $53,$4D		; 54 4D 53
	eor $4D52.w		; 4D 52 4D
	eor ($4D.b),Y		; 51 4D
	bvc  15.b		; 50 0F
	sbc $4F4D.w,X		; FD 4D 4F
	eor $4D4E.w		; 4D 4E 4D
	sbc $F8C04C.l,X		; FF 4C C0 F8
	jsr $4D6B.w		; 20 6B 4D
	ror A		; 6A
	eor $FFFF.w		; 4D FF FF
	adc #$4D.b		; 69 4D
	pla		; 68
	eor $4D67.w		; 4D 67 4D
	ror $4D.b		; 66 4D
	adc $4D.b		; 65 4D
	stz $4D.b		; 64 4D
	adc $4D.b,S		; 63 4D
	.db $62, $4D, $FF		; 62 4D FF
	plb		; AB
	adc ($4D.b,X)		; 61 4D
	rts		; 60

	eor $4D5F.w		; 4D 5F 4D
	lsr $5D4D.w,X		; 5E 4D 5D
	eor $205C.w		; 4D 5C 20
	cpy #$FC.b		; C0 FC
	sbc $0063F8.l,X		; FF F8 63 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F5.b		; 00 F5
	lda $FF00.w,X		; BD 00 FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	lda [$94.b]		; A7 94
	ora $1D95.w,X		; 1D 95 1D
	cpy #$F8.b		; C0 F8
	tsa		; 3B
	stx $1D.b,Y		; 96 1D
	sta [$C7.b],Y		; 97 C7
	inc $F8C0.w,X		; FE C0 F8
	bit $1D99.w,X		; 3C 99 1D
	txs		; 9A
	cpy #$9B.b		; C0 9B
	ldy $36F8.w,X		; BC F8 36
	stz $9D1D.w		; 9C 1D 9D
	ora $F79E.w,X		; 1D 9E F7
	and $1D9F1D.l,X		; 3F 1D 9F 1D
	ldy #$C0.b		; A0 C0
	sed		; F8
	rol $A1.b,X		; 36 A1
	ora $1DA2.w,X		; 1D A2 1D
	lda $1D.b,S		; A3 1D
	ldy $1D.b		; A4 1D
	lda $1F.b		; A5 1F
	sbc [$C0.b],Y		; F7 C0
	ldx $1D.b		; A6 1D
	lda [$F8.b]		; A7 F8
	adc [$1E.b]		; 67 1E
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	and [$A8.b]		; 27 A8
	ora $7CFF.w,X		; 1D FF 7C
	lda #$AA1D.w		; A9 1D AA
	ora $1DAB.w,X		; 1D AB 1D
	ldy $AD1D.w		; AC 1D AD
	cpy #$1DAE.w		; C0 AE 1D
	lda $F8F9EC.l		; AF EC F9 F8
	bvs -64.b		; 70 C0
	sed		; F8
	asl $1DB0.w,X		; 1E B0 1D
	lda ($D2.b),Y		; B1 D2
	lda ($1D.b)		; B2 1D
	sbc $1DB3F3.l,X		; FF F3 B3 1D
	ldy $1D.b,X		; B4 1D
	lda $1D.b,X		; B5 1D
	ldx $1D.b,Y		; B6 1D
	lda [$1D.b],Y		; B7 1D
	clv		; B8
	inc $DFB9.w		; EE B9 DF
	bcc  29.b		; 90 1D
	tsx		; BA
	ora $5DB2.w,X		; 1D B2 5D
	ply		; 7A
	cpy #$1EF8.w		; C0 F8 1E
	tyx		; BB
	bvc  93.b		; 50 5D
	inc $F83F.w,X		; FE 3F F8
	ldy $BD1D.w,X		; BC 1D BD
	ora $1DBE.w,X		; 1D BE 1D
	lda $1DC01D.l,X		; BF 1D C0 1D
	cmp ($1D.b,X)		; C1 1D
.ACCU 16
.INDEX 16
	rep #$FE		; C2 FE
	sbc [$C0.b],Y		; F7 C0
	cmp $1D.b,S		; C3 1D
	cpy $1D.b		; C4 1D
	cmp $1D.b		; C5 1D
	dec $1D.b		; C6 1D
	stx $C0.b		; 86 C0
	sed		; F8
	asl $1DC7.w,X		; 1E C7 1D
	jsr ($C8FF.w,X)		; FC FF C8
	sta ($C9.b)		; 92 C9
	ora $1DCA.w,X		; 1D CA 1D
	wai		; CB
	ora $1DCC.w,X		; 1D CC 1D
	cmp $CE1D.w		; CD 1D CE
	sbc $CF1DDF.l,X		; FF DF 1D CF
	ora $1DD0.w,X		; 1D D0 1D
	cmp ($1D.b),Y		; D1 1D
	cmp ($1D.b)		; D2 1D
	cmp ($1D.b,S),Y		; D3 1D
	pei ($1D.b)		; D4 1D
	txa		; 8A
	cpy #$1EF8.w		; C0 F8 1E
	bcc  -2.b		; 90 FE
	cmp $C0.b,X		; D5 C0
	sta $D6F8.w,X		; 9D F8 D6
	ora $1DD7.w,X		; 1D D7 1D
	cld		; D8
	ora $FFFF.w,X		; 1D FF FF
	cmp $DA1D.w,Y		; D9 1D DA
	ora $1DDB.w,X		; 1D DB 1D
	jmp.w [$DD1D]		; DC 1D DD
	ora $1DDE.w,X		; 1D DE 1D
	cmp $1DE01D.l,X		; DF 1D E0 1D
	sbc $1DE11F.l		; EF 1F E1 1D
	sty $8D1E.w		; 8C 1E 8D
	ldx $18F8.w,Y		; BE F8 18
	eor ($1E.b,S),Y		; 53 1E
	mvn $E2,$1E		; 54 1E E2
	ora $FFE3.w,X		; 1D E3 FF
	sbc $1DE480.l,X		; FF 80 E4 1D
	sbc $1D.b		; E5 1D
	inc $1D.b		; E6 1D
	sbc [$1D.b]		; E7 1D
	inx		; E8
	ora $1DE9.w,X		; 1D E9 1D
	nop		; EA
	ora $3FFF.w,X		; 1D FF 3F
	xba		; EB
	ora $1DEC.w,X		; 1D EC 1D
	sbc $EE1D.w		; ED 1D EE
	ora $1DEF.w,X		; 1D EF 1D
	beq  29.b		; F0 1D
	stx $8F1E.w		; 8E 1E 8F
	sbc [$78.b]		; E7 78
	cpy #$FA55.w		; C0 55 FA
	lsr $FA.b,X		; 56 FA
	eor [$1E.b],Y		; 57 1E
	cli		; 58
	jsr ($FAFF.w,X)		; FC FF FA
	eor $5A1E.w,Y		; 59 1E 5A
	asl $1E5B.w,X		; 1E 5B 1E
	jmp $1DF11E.l		; 5C 1E F1 1D
	sbc ($1D.b)		; F2 1D
	sbc $1DF3FF.l,X		; FF FF F3 1D
	pea $F51D.w		; F4 1D F5
	ora $1DF6.w,X		; 1D F6 1D
	sbc [$1D.b],Y		; F7 1D
	sed		; F8
	ora $1DF9.w,X		; 1D F9 1D
	plx		; FA
	ora $F0FF.w,X		; 1D FF F0
	xce		; FB
	ora $1DFC.w,X		; 1D FC 1D
	sbc $FE1D.w,X		; FD 1D FE
	ora $A6FF.w,X		; 1D FF A6
	asl $1E90.w,X		; 1E 90 1E
	sed		; F8
	sbc $58D291.l,X		; FF 91 D2 58
	lsr $1E33.w,X		; 5E 33 1E
	eor $5E1E.w,X		; 5D 1E 5E
	asl $1E5F.w,X		; 1E 5F 1E
	rts		; 60

	cmp [$FF.b]		; C7 FF
	asl $1E61.w,X		; 1E 61 1E
	.db $62, $EE, $63		; 62 EE 63
	asl $1E64.w,X		; 1E 64 1E
	adc $1E.b		; 65 1E
	ror $1E.b		; 66 1E
	sbc $1E01FF.l,X		; FF FF 01 1E
	cop $1E.b		; 02 1E
	ora $1E.b,S		; 03 1E
	tsb $1E.b		; 04 1E
	ora $1E.b		; 05 1E
	asl $1E.b		; 06 1E
	ora [$1E.b]		; 07 1E
	php		; 08
	asl $FFFF.w,X		; 1E FF FF
	ora #$0A1E.w		; 09 1E 0A
	asl $1E0B.w,X		; 1E 0B 1E
	tsb $0D1E.w		; 0C 1E 0D
	asl $1E0E.w,X		; 1E 0E 1E
	ora $1E101E.l		; 0F 1E 10 1E
	sbc $FF.b,S		; E3 FF
	sty $1E.b,X		; 94 1E
	sta $D2.b,X		; 95 D2
	.db $62, $5E, $42		; 62 5E 42
	asl $1E43.w,X		; 1E 43 1E
	mvp $68,$1E		; 44 1E 68
	sbc $691EFF.l,X		; FF FF 1E 69
	asl $1E47.w,X		; 1E 47 1E
	ror A		; 6A
	asl $1E6B.w,X		; 1E 6B 1E
	jmp ($6D1E.w)		; 6C 1E 6D
	asl $1E6E.w,X		; 1E 6E 1E
	adc $1EFFFF.l		; 6F FF FF 1E
	ora ($1E.b),Y		; 11 1E
	ora ($1E.b)		; 12 1E
	ora ($1E.b,S),Y		; 13 1E
	trb $1E.b		; 14 1E
	ora $1E.b,X		; 15 1E
	asl $1E.b,X		; 16 1E
	ora [$1E.b],Y		; 17 1E
	clc		; 18
	sbc $191EC3.l,X		; FF C3 1E 19
	asl $1E1A.w,X		; 1E 1A 1E
	tas		; 1B
	asl $1E1C.w,X		; 1E 1C 1E
	ora $FF1E.w,X		; 1D 1E FF
	ora $1EFE1F.l,X		; 1F 1F FE 1E
	jsr $9A1E.w		; 20 1E 9A
	asl $D29B.w,X		; 1E 9B D2
	lsr $5E6A.w,X		; 5E 6A 5E
	jmp $711E.w		; 4C 1E 71
	sbc $721EFF.l,X		; FF FF 1E 72
	asl $1E4F.w,X		; 1E 4F 1E
	adc ($1E.b,S),Y		; 73 1E
	eor ($1E.b),Y		; 51 1E
	stz $1E.b,X		; 74 1E
	adc $1E.b,X		; 75 1E
	ror $1E.b,X		; 76 1E
	adc [$FF.b],Y		; 77 FF
	sbc $1E781E.l,X		; FF 1E 78 1E
	adc $211E.w,Y		; 79 1E 21
	asl $1E22.w,X		; 1E 22 1E
	and $1E.b,S		; 23 1E
	bit $1E.b		; 24 1E
	and $1E.b		; 25 1E
	rol $FF.b		; 26 FF
	sbc $1E271E.l,X		; FF 1E 27 1E
	plp		; 28
	asl $1E29.w,X		; 1E 29 1E
	rol A		; 2A
	asl $1E2B.w,X		; 1E 2B 1E
	bit $2D1E.w		; 2C 1E 2D
	asl $7F2E.w,X		; 1E 2E 7F
	sed		; F8
	asl $1E2F.w,X		; 1E 2F 1E
	bmi  30.b		; 30 1E
	lda ($1E.b,X)		; A1 1E
	ldx #$5ED2.w		; A2 D2 5E
	stz $5E.b,X		; 74 5E
	tda		; 7B
	sbc $7C1E3F.l,X		; FF 3F 1E 7C
	asl $1E7D.w,X		; 1E 7D 1E
	ror $7F1E.w,X		; 7E 1E 7F
	asl $1E80.w,X		; 1E 80 1E
	sta ($1E.b,X)		; 81 1E
	.db $82, $1E, $FC		; 82 1E FC
	cmp [$30.b]		; C7 30
	sta $1E.b,S		; 83 1E
	sty $1E.b		; 84 1E
	sta $1E.b		; 85 1E
	and ($1E.b),Y		; 31 1E
	and ($F4.b)		; 32 F4
	sbc $1E34FF.l,X		; FF FF 34 1E
	and $1E.b,X		; 35 1E
	rol $1E.b,X		; 36 1E
	and [$1E.b],Y		; 37 1E
	sec		; 38
	asl $1E39.w,X		; 1E 39 1E
	dec A		; 3A
	asl $1E3B.w,X		; 1E 3B 1E
	beq -113.b		; F0 8F
	bit $5EEC.w,X		; 3C EC 5E
	and $3E1E.w,X		; 3D 1E 3E
	asl $1E3F.w,X		; 1E 3F 1E
	ldy $EF.b		; A4 EF
	sbc $5E82F6.l,X		; FF F6 82 5E
	sta ($5E.b,X)		; 81 5E
	pha		; 48
	jsr ($1E87.w,X)		; FC 87 1E
	dey		; 88
	asl $5E49.w,X		; 1E 49 5E
	rti		; 40

	asl $EE41.w,X		; 1E 41 EE
	sbc ($1E.b),Y		; F1 1E
	bmi  -4.b		; 30 FC
	bit #$F41E.w		; 89 1E F4
	sed		; F8
	ora #$1E45.w		; 09 45 1E
	lsr $DC.b		; 46 DC
	lsr $5E.b		; 46 5E
	bmi  12.b		; 30 0C
	pha		; 48
	pea $435E.w		; F4 5E 43
	bpl  94.b		; 10 5E
	eor ($83.b,X)		; 41 83
	inc $5ED8.w,X		; FE D8 5E
	eor #$F6E6.w		; 49 E6 F6
	sbc $FE48.w,X		; FD 48 FE
	phb		; 8B
	asl $5E52.w,X		; 1E 52 5E
	lsr A		; 4A
	cmp $D1.b,S		; C3 D1
	asl $1E4B.w,X		; 1E 4B 1E
	bmi  77.b		; 30 4D
	asl $304E.w,X		; 1E 4E 30
	pea $0BF8.w		; F4 F8 0B
	sed		; F8
	sta [$50.b]		; 87 50
	jmp.w [$5E50]		; DC 50 5E
	eor $5E4E5E.l		; 4F 5E 4E 5E
	eor $6110.w		; 4D 10 61
	beq  94.b		; F0 5E
	phk		; 4B
	cld		; D8
	lsr $E652.w,X		; 5E 52 E6
	inc $FD.b,X		; F6 FD
	adc ($9E.b,S),Y		; 73 9E
	sbc $9E51FF.l,X		; FF FF 51 9E
	stz $9E.b,X		; 74 9E
	adc $9E.b,X		; 75 9E
	phb		; 8B
	stz $DE52.w,X		; 9E 52 DE
	lsr A		; 4A
	stz $9E4B.w,X		; 9E 4B 9E
	jmp $DF9E.w		; 4C 9E DF
	sed		; F8
	eor $4E9E.w		; 4D 9E 4E
	stz $9E4F.w,X		; 9E 4F 9E
	pea $0BF8.w		; F4 F8 0B
	bvc -36.b		; 50 DC
	bvc -34.b		; 50 DE
	eor $DE187F.l		; 4F 7F 18 DE
	lsr $4DDE.w		; 4E DE 4D
	dec $DE4C.w,X		; DE 4C DE
	phk		; 4B
	cld		; D8
	dec $5452.w,X		; DE 52 54
	eor $E6.b,X		; 55 E6
	inc $FD.b,X		; F6 FD
	bra  -8.b		; 80 F8
	adc $FCC8E9.l,X		; 7F E9 C8 FC
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($6517.w,X)		; FC 17 65
	sbc $578EF8.l,X		; FF F8 8E 57
	lsr $C102.w,X		; 5E 02 C1
	jsr ($B9F6.w,X)		; FC F6 B9
	plx		; FA
	adc $F8FFF8.l,X		; 7F F8 FF F8
	and $605E61.l		; 2F 61 5E 60
	lsr $5E5F.w,X		; 5E 5F 5E
	sbc $335E5D.l,X		; FF 5D 5E 33
	lsr $FFEB.w,X		; 5E EB FF
	sta ($1E.b)		; 92 1E
	sta ($2A.b,S),Y		; 93 2A
	bcs  40.b		; B0 28
	sbc $5E47FE.l,X		; FF FE 47 5E
	adc #$965E.w		; 69 5E 96
	asl $1E97.w,X		; 1E 97 1E
	tya		; 98
	cmp $421EFF.l,X		; DF FF 1E 42
	lsr $1E99.w,X		; 5E 99 1E
	rti		; 40

	jmp ($30F8.w,X)		; 7C F8 30
	eor ($5E.b),Y		; 51 5E
	adc ($5E.b,S),Y		; 73 5E
	stz $5B1E.w		; 9C 1E 5B
	lsr $FFBF.w,X		; 5E BF FF
	sta $9E1E.w,X		; 9D 1E 9E
	asl $1E9F.w,X		; 1E 9F 1E
	ldy #$F880.w		; A0 80 F8
	bmi -128.b		; 30 80
	lsr $5E7F.w,X		; 5E 7F 5E
	ror $5E.b		; 66 5E
	adc $14.b		; 65 14
	sbc $785E.w,X		; FD 5E 78
	lda $78.b,S		; A3 78
	cpy #$2FF8.w		; C0 F8 2F
	eor #$881E.w		; 49 1E 88
	lsr $7FD7.w,X		; 5E D7 7F
	adc $5E6E5E.l		; 6F 5E 6E 5E
	sei		; 78
	inc $F8C0.w,X		; FE C0 F8
	and $8B1E52.l		; 2F 52 1E 8B
	lsr $1EA5.w,X		; 5E A5 1E
	sei		; 78
	lsr $FFFD.w,X		; 5E FD FF
	sei		; 78
	inc $F8C0.w,X		; FE C0 F8
	bmi -98.b		; 30 9E
	phb		; 8B
	dec $9EA5.w,X		; DE A5 9E
	sei		; 78
	dec $DE80.w,X		; DE 80 DE
	adc $5566DE.l,X		; 7F DE 66 55
	ora $DE.b		; 05 DE
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
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	adc $571156.l,X		; 7F 56 11 57
	ora ($34.b),Y		; 11 34
	inc $1187.w,X		; FE 87 11
	sty $2551.w		; 8C 51 25
	sta ($80.b),Y		; 91 80
	sed		; F8
	jsr ($69F8.w,X)		; FC F8 69
	sbc ($7C.b)		; F2 7C
	ora ($7B.b),Y		; 11 7B
	ora $2B11FF.l,X		; 1F FF 11 2B
	ora ($36.b),Y		; 11 36
	ora ($37.b),Y		; 11 37
	pea $1117.w		; F4 17 11
	clc		; 18
	ora ($19.b),Y		; 11 19
	ora ($FF.b),Y		; 11 FF
	sbc $1B111A.l,X		; FF 1A 11 1B
	ora ($1C.b),Y		; 11 1C
	ora ($1D.b),Y		; 11 1D
	ora ($1E.b),Y		; 11 1E
	ora ($1F.b),Y		; 11 1F
	ora ($20.b),Y		; 11 20
	ora ($21.b),Y		; 11 21
	ora ($FF.b),Y		; 11 FF
	bmi  34.b		; 30 22
	ora ($23.b),Y		; 11 23
	ora ($24.b),Y		; 11 24
	ora ($25.b),Y		; 11 25
	ora ($66.b),Y		; 11 66
	jsr ($6891.w,X)		; FC 91 68
	ora $0ECC10.l		; 0F 10 CC 0E
	tsb $FCFA.w		; 0C FA FC
	txa		; 8A
	ora ($00.b,X)		; 01 00
	inc $EE.b,X		; F6 EE
	jsr ($FEF8.w,X)		; FC F8 FE
	and $1146B4.l,X		; 3F B4 46 11
	eor [$11.b]		; 47 11
	pha		; 48
	ora ($27.b),Y		; 11 27
	ora ($28.b),Y		; 11 28
	ora ($29.b),Y		; 11 29
	ora ($2A.b),Y		; 11 2A
	inc $B0FF.w,X		; FE FF B0
	bit $2D11.w		; 2C 11 2D
	ora ($2E.b),Y		; 11 2E
	ora ($2F.b),Y		; 11 2F
	ora ($30.b),Y		; 11 30
	ora ($31.b),Y		; 11 31
	ora ($32.b),Y		; 11 32
	sbc ($10.b),Y		; F1 10
	ora ($33.b),Y		; 11 33
	dec $35.b,X		; D6 35
	ora ($76.b),Y		; 11 76
	cpx #$A251.w		; E0 51 A2
	bmi -42.b		; 30 D6
	adc $FEC6.w,Y		; 79 C6 FE
	sed		; F8
	ora #$54E8.w		; 09 E8 54
	sta ($FC.b),Y		; 91 FC
	sbc ($FA.b),Y		; F1 FA
	mvn $54,$51		; 54 51 54
	ora ($7F.b),Y		; 11 7F
	ora ($58.b),Y		; 11 58
	phx		; DA
	sec		; 38
	ora ($FF.b),Y		; 11 FF
	sbc $3A1139.l,X		; FF 39 11 3A
	ora ($3B.b),Y		; 11 3B
	ora ($3C.b),Y		; 11 3C
	ora ($3D.b),Y		; 11 3D
	ora ($3E.b),Y		; 11 3E
	ora ($3F.b),Y		; 11 3F
	ora ($40.b),Y		; 11 40
	ora ($FF.b),Y		; 11 FF
	sta $421141.l		; 8F 41 11 42
	ora ($43.b),Y		; 11 43
	ora ($44.b),Y		; 11 44
	ora ($45.b),Y		; 11 45
	ora ($85.b),Y		; 11 85
	ora ($86.b),Y		; 11 86
	sbc $55904F.l,X		; FF 4F 90 55
	ora ($16.b),Y		; 11 16
	trb $17.b		; 14 17
	trb $18.b		; 14 18
	trb $19.b		; 14 19
	trb $1A.b		; 14 1A
	trb $84.b		; 14 84
	php		; 08
	ror $BC.b,X		; 76 BC
	ldx $F07C.w,Y		; BE 7C F0
	sbc $3CD836.l,X		; FF 36 D8 3C
	tsb $1149.w		; 0C 49 11
	lsr A		; 4A
	ora ($4B.b),Y		; 11 4B
	ora ($4C.b),Y		; 11 4C
	ora ($4D.b),Y		; 11 4D
	sbc $4E1187.l,X		; FF 87 11 4E
	ora ($4F.b),Y		; 11 4F
	ora ($50.b),Y		; 11 50
	ora ($51.b),Y		; 11 51
	ora ($52.b),Y		; 11 52
	ora ($53.b),Y		; 11 53
	txs		; 9A
	brk $04.b		; 00 04
	ora ($C8.b),Y		; 11 C8
	.db $82, $54, $FF		; 82 54 FF
	ora ($D4.b,S),Y		; 13 D4
	jsr $2114.w		; 20 14 21
	trb $22.b		; 14 22
	trb $23.b		; 14 23
	trb $24.b		; 14 24
	trb $C2.b		; 14 C2
	brk $20.b		; 00 20
	tax		; AA
	jsr ($24AA.w,X)		; FC AA 24
	eor $8C.b,S		; 43 8C
	inc $59C0.w,X		; FE C0 59
	tsx		; BA
	tad		; 5B
	sbc $5DFCFF.l,X		; FF FF FC 5D
	ora ($5E.b),Y		; 11 5E
	ora ($5F.b),Y		; 11 5F
	ora ($60.b),Y		; 11 60
	ora ($61.b),Y		; 11 61
	ora ($62.b),Y		; 11 62
	ora ($63.b),Y		; 11 63
	ora ($64.b),Y		; 11 64
	adc $11FC.w,Y		; 79 FC 11
	adc $84.b		; 65 84
	bit $51.b,X		; 34 51
	cmp ($14.b)		; D2 14
	rol $14.b		; 26 14
	and [$67.b]		; 27 67
	jsl $142814.l		; 22 14 28 14
	and #$ACC0.w		; 29 C0 AC
	nop		; EA
	inx		; E8
	sbc $E667F8.l,X		; FF F8 67 E6
	sbc $7B.b,X		; F5 7B
	ora ($6B.b),Y		; 11 6B
	ora ($6C.b),Y		; 11 6C
	ora ($6D.b),Y		; 11 6D
	ora ($6E.b),Y		; 11 6E
	sbc $6F11FF.l,X		; FF FF 11 6F
	ora ($70.b),Y		; 11 70
	ora ($71.b),Y		; 11 71
	ora ($72.b),Y		; 11 72
	ora ($73.b),Y		; 11 73
	ora ($74.b),Y		; 11 74
	ora ($75.b),Y		; 11 75
	ora ($87.b),Y		; 11 87
	tsb $FF.b		; 04 FF
	cmp ($82.b),Y		; D1 82
	inc $142A.w,X		; FE 2A 14
	pld		; 2B
	trb $2C.b		; 14 2C
	trb $2D.b		; 14 2D
	cmp ($1B.b),Y		; D1 1B
	trb $2E.b		; 14 2E
	cpy #$FCEE.w		; C0 EE FC
	eor $D1.b,X		; 55 D1
	sei		; 78
	ldx #$6AF1.w		; A2 F1 6A
	sbc ($08.b,X)		; E1 08
	trb $7980.w		; 1C 80 79
	ora ($7A.b),Y		; 11 7A
	cpx $FF70.w		; EC 70 FF
	ldy $7D32.w,X		; BC 32 7D
	ora ($7E.b),Y		; 11 7E
	nop		; EA
	sbc ($80.b),Y		; F1 80
	ora ($81.b),Y		; 11 81
	ora ($82.b),Y		; 11 82
	ora ($43.b),Y		; 11 43
	ldy #$1183.w		; A0 83 11
	sty $EE.b		; 84 EE
	cmp ($80.b),Y		; D1 80
	cmp ($FF.b)		; D2 FF
	and $2F.b,S		; 23 2F
	trb $30.b		; 14 30
	trb $31.b		; 14 31
	trb $32.b		; 14 32
	trb $33.b		; 14 33
	trb $88.b		; 14 88
	sty $10.b		; 84 10
	brk $EC.b		; 00 EC
	rol $84FC.w,X		; 3E FC 84
	bra  -1.b		; 80 FF
	rep #$84		; C2 84
	pea $89FC.w		; F4 FC 89
	ora ($78.b),Y		; 11 78
	eor ($8B.b),Y		; 51 8B
	ora ($8C.b),Y		; 11 8C
	sbc $8D11FF.l,X		; FF FF 11 8D
	ora ($8E.b),Y		; 11 8E
	ora ($8F.b),Y		; 11 8F
	ora ($90.b),Y		; 11 90
	ora ($91.b),Y		; 11 91
	ora ($92.b),Y		; 11 92
	ora ($93.b),Y		; 11 93
	ora ($68.b),Y		; 11 68
	phd		; 0B
	stx $D1.b		; 86 D1
	adc $00D1.w,Y		; 79 D1 00
	sbc ($56.b),Y		; F1 56
	inc $0AF8.w,X		; FE F8 0A
	ply		; 7A
	ldy $5000.w		; AC 00 50
	sta ($BC.b),Y		; 91 BC
	bne -10.b		; D0 F6
	ora [$86.b],Y		; 17 86
	sbc ($88.b),Y		; F1 88
	brk $BE.b		; 00 BE
	eor ($F6.b,S),Y		; 53 F6
	cpy $80.b		; C4 80
	lda ($7A.b,X)		; A1 7A
	cld		; D8
	ldx $A00C.w		; AE 0C A0
	and [$40.b]		; 27 40
	adc ($DE.b),Y		; 71 DE
	xba		; EB
	jsr ($78F8.w,X)		; FC F8 78
	bra -122.b		; 80 86
	cmp ($98.b),Y		; D1 98
	brk $E8.b		; 00 E8
	and [$0C.b],Y		; 37 0C
	inc $80CC.w,X		; FE CC 80
	plp		; 28
	inc $C6.b,X		; F6 C6
	inc $7A.b,X		; F6 7A
	sta [$16.b]		; 87 16
	brk $F6.b		; 00 F6
	stx $DA.b		; 86 DA
	sbc ($FE.b),Y		; F1 FE
	inx		; E8
	php		; 08
	bra -70.b		; 80 BA
.ACCU 8
.INDEX 8
	sep #$BC		; E2 BC
	plx		; FA
	jsr $FC12.w		; 20 12 FC
.ACCU 8
	sep #$26		; E2 26
.ACCU 16
.INDEX 16
	rep #$BC		; C2 BC
	eor ($00.b,X)		; 41 00
	ldy $8716.w		; AC 16 87
	tsx		; BA
	ply		; 7A
	sty $C0.b		; 84 C0
	nop		; EA
	jsr ($B485.w,X)		; FC 85 B4
	rti		; 40

	ora ($F6.b),Y		; 11 F6
	jmp ($7876.w,X)		; 7C 76 78
	inc $0000.w		; EE 00 00
	ldy #$7E7C.w		; A0 7C 7E
	jmp $9100.w		; 4C 00 91
	tsx		; BA
	pea $AE7C.w		; F4 7C AE
	pha		; 48
	ldx #$D49A.w		; A2 9A D4
	inx		; E8
	nop		; EA
	ror $8956.w		; 6E 56 89
	jsr $5168.w		; 20 68 51
	cpy $CC.b		; C4 CC
	sbc ($89.b)		; F2 89
	rol A		; 2A
	brk $F8.b		; 00 F8
	pea $FEFC.w		; F4 FC FE
	jsr ($D8C2.w,X)		; FC C2 D8
	brk $D4.b		; 00 D4
	cpy #$7CF8.w		; C0 F8 7C
	ror $D2.b		; 66 D2
	sbc $FEFE.w,X		; FD FE FE
	php		; 08
	mvp $6A,$49		; 44 49 6A
	ror $1A66.w,X		; 7E 66 1A
	ora ($6C.b,X)		; 01 6C
	bit $FEFC.w,X		; 3C FC FE
	sed		; F8
	ora [$6A.b],Y		; 17 6A
	cpx #$48C0.w		; E0 C0 48
	cop $56.b		; 02 56
	ldx $FC1E.w,Y		; BE 1E FC
	plx		; FA
	ror $6C12.w		; 6E 12 6C
	rol A		; 2A
	inc $2FF8.w,X		; FE F8 2F
	cpy $F6.b		; C4 F6
	inc $FE44.w,X		; FE 44 FE
	sed		; F8
	rol $DB51.w,X		; 3E 51 DB
	inc $FE.b,X		; F6 FE
	sed		; F8
	rol $FE59.w,X		; 3E 59 FE
	sed		; F8
	rol $FE63.w,X		; 3E 63 FE
	sed		; F8
	rol $FE6C.w,X		; 3E 6C FE
	sed		; F8
	ldx $FF00.w,Y		; BE 00 FF
	sed		; F8
	ror $28FA.w,X		; 7E FA 28
	cmp $28FB7F.l,X		; DF 7F FB 28
	jsr ($FD28.w,X)		; FC 28 FD
	plp		; 28
	sed		; F8
	sed		; F8
	and [$FE.b],Y		; 37 FE
	plp		; 28
	sbc $290028.l,X		; FF 28 00 29
	ora ($29.b,X)		; 01 29
	sbc $F8F8FE.l,X		; FF FE F8 F8
	and [$02.b],Y		; 37 02
	and #$2903.w		; 29 03 29
	tsb $29.b		; 04 29
	ora $F8.b		; 05 F8
	sed		; F8
	sec		; 38
	asl $29.b		; 06 29
	ora [$29.b]		; 07 29
	php		; 08
	sbc $29FB.w,X		; FD FB 29
	ora #$F8F8.w		; 09 F8 F8
	sec		; 38
	asl A		; 0A
	and #$290B.w		; 29 0B 29
	tsb $0D29.w		; 0C 29 0D
	sed		; F8
	sed		; F8
	sec		; 38
	asl $0F29.w		; 0E 29 0F
	sbc [$AF.b],Y		; F7 AF
	and #$2910.w		; 29 10 29
	ora ($F8.b),Y		; 11 F8
	sed		; F8
	sec		; 38
	ora ($29.b)		; 12 29
	ora ($29.b,S),Y		; 13 29
	trb $29.b		; 14 29
	ora $F8.b,X		; 15 F8
	sed		; F8
	clv		; B8
	tax		; AA
	tax		; AA
	rti		; 40

	inx		; E8
	adc $FCF8FF.l,X		; 7F FF F8 FC
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($C000.w,X)		; FC 00 C0
	ror $F8C0.w		; 6E C0 F8
	ora $20AAAA.l,X		; 1F AA AA 20
	cpy #$C01F.w		; C0 1F C0
	sed		; F8
	ora $1FC020.l,X		; 1F 20 C0 1F
	cpy #$1FF8.w		; C0 F8 1F
	jsr $1FC0.w		; 20 C0 1F
	cpy #$1FF8.w		; C0 F8 1F
	jsr $1FC0.w		; 20 C0 1F
	cpy #$1FF8.w		; C0 F8 1F
	tax		; AA
	brk $20.b		; 00 20
	cpy #$C01F.w		; C0 1F C0
	sed		; F8
	ora $3FC0A0.l,X		; 1F A0 C0 3F
	cpy #$7FF8.w		; C0 F8 7F
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	sbc $F8FF00.l,X		; FF 00 FF F8
	asl $FE03.w,X		; 1E 03 FE
	brk $FF.b		; 00 FF
	cpy #$F07F.w		; C0 7F F0
	cmp $FFF7FC.l,X		; DF FC F7 FF
	sbc $FF0F.w,X		; FD 0F FF
	sbc $FFAAFF.l,X		; FF FF AA FF
	jsr ($00F1.w,X)		; FC F1 00
	and $C0CF00.l,X		; 3F 00 CF C0
	sbc ($F0.b,S),Y		; F3 F0
	sta ($BF.b,X)		; 81 BF
	jsr ($F0FC.w,X)		; FC FC F0
	sbc $EF3FBF.l,X		; FF BF 3F EF
	ora $AFC3FB.l		; 0F FB C3 AF
	cld		; D8
	jsr ($DFB0.w,X)		; FC B0 DF
	sbc ($3F.b),Y		; F1 3F
	and $F30FCF.l,X		; 3F CF 0F F3
	ora $D8.b,S		; 03 D8
	inc $22AE.w,X		; FE AE 22
	jmp.w [$D8FD]		; DC FD D8
	sbc $FB0E.w,X		; FD 0E FB
	sbc ($F8.b),Y		; F1 F8
	ora #$FCD8.w		; 09 D8 FC
	cpx #$0AF8.w		; E0 F8 0A
	sbc $A00438.l,X		; FF 38 04 A0
	sbc $F80FF8.l,X		; FF F8 0F F8
	sbc $CAFE86.l		; EF 86 FE CA
	inx		; E8
	bmi -124.b		; 30 84
	inc $FCE0.w,X		; FE E0 FC
	sbc [$E0.b]		; E7 E0
	stx $F9.b		; 86 F9
	sed		; F8
	stz $18.b		; 64 18
	sty $FE.b		; 84 FE
	beq  -1.b		; F0 FF
	ora [$FD.b]		; 07 FD
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	stx $01.b		; 86 01
	sta $FF.b,X		; 95 FF
	bra -126.b		; 80 82
	cpx #$0CBF.w		; E0 BF 0C
	sec		; 38
	bra  -7.b		; 80 F9
	ora ($86.b,X)		; 01 86
	adc $00.b,X		; 75 00
	adc $82186E.l,X		; 7F 6E 18 82
	sta $FD8080.l,X		; 9F 80 80 FD
	adc $DF7F84.l,X		; 7F 84 7F DF
	ror $18.b,X		; 76 18
	.db $82, $1F, $F7		; 82 1F F7
	bra  -4.b		; 80 FC
	adc $9F847F.l,X		; 7F 7F 84 9F
	ora $82A886.l,X		; 1F 86 A8 82
	sbc [$07.b]		; E7 07
	bra  85.b		; 80 55
	ldy $F8FC.w		; AC FC F8
	phd		; 0B
	lda $F8FF4C.l		; AF 4C FF F8
	ora $ABF75C.l		; 0F 5C F7 AB
	sbc $F8E0.w,X		; FD E0 F8
	phd		; 0B
	php		; 08
	sed		; F8
	asl A		; 0A
	sbc $082F92.l,X		; FF 92 2F 08
	cpx #$0BF8.w		; E0 F8 0B
	php		; 08
	cpx #$0BF8.w		; E0 F8 0B
	cmp $FF.b,X		; D5 FF
	nop		; EA
	lda $0DF8A0.l,X		; BF A0 F8 0D
	sed		; F8
	plb		; AB
	sty $E0.b		; 84 E0
	sed		; F8
	phd		; 0B
	cli		; 58
	sbc $56F7AC.l		; EF AC F7 56
	xce		; FB
	cpx #$09F8.w		; E0 F8 09
	jsr $AAFC.w		; 20 FC AA
	ldy $E0.b,X		; B4 E0
	sed		; F8
	ora #$FC20.w		; 09 20 FC
	cpx #$09F8.w		; E0 F8 09
	jsr $FFFD.w		; 20 FD FF
	sbc $7FD5EC.l,X		; FF EC D5 7F
	ldy #$40A4.w		; A0 A4 40
	sed		; F8
	ora $E020.w		; 0D 20 E0
	sed		; F8
	ora $FCFC.w		; 0D FC FC
	adc [$65.b]		; 67 65
	sed		; F8
	tsb $FAA0.w		; 0C A0 FA
	cpx #$0EF8.w		; E0 F8 0E
	stx $B8.b,Y		; 96 B8
	sbc ($FF.b)		; F2 FF
	sed		; F8
	ora #$FC18.w		; 09 18 FC
	cpx #$09F8.w		; E0 F8 09
	sbc $ABFF02.l,X		; FF 02 FF AB
	lda $D07F40.l,X		; BF 40 7F D0
	cpx #$0AF8.w		; E0 F8 0A
	jsr $E0F3.w		; 20 F3 E0
	sed		; F8
	ora #$FF80.w		; 09 80 FF
	cpx #$F8BF.w		; E0 BF F8
	and $A4561A.l		; 2F 1A 56 A4
	sed		; F8
	phd		; 0B
	asl $C0F2.w,X		; 1E F2 C0
	sed		; F8
	asl A		; 0A
	ldy #$3FC2.w		; A0 C2 3F
	inx		; E8
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	ora #$62.b		; 09 62
	sbc ($10.b)		; F2 10
	lsr $12.b,X		; 56 12
	cpx #$F8.b		; E0 F8
	ora #$C2.b		; 09 C2
	beq  95.b		; F0 5F
	cpy #$F8.b		; C0 F8
	phd		; 0B
	jmp $D05DF4.l		; 5C F4 5D D0
	lsr A		; 4A
	jsr ($FCFE.w,X)		; FC FE FC
	cpy #$7F.b		; C0 7F
	ldy #$F8.b		; A0 F8
	ora $E018.w		; 0D 18 E0
	sed		; F8
	ora $F820.w		; 0D 20 F8
	ora ($D5.b,S),Y		; 13 D5
	eor $1F.b,X		; 55 1F
	pea $FC28.w		; F4 28 FC
	inc $40FE.w,X		; FE FE 40
	beq  15.b		; F0 0F
	inc $280B.w,X		; FE 0B 28
	jsr ($FED8.w,X)		; FC D8 FE
	lsr $EA.b		; 46 EA
	adc ($D5.b,X)		; 61 D5
	jsr $0BE8.w		; 20 E8 0B
	inx		; E8
	ora $EE9CFA.l		; 0F FA 9C EE
	cpy #$FC.b		; C0 FC
	.db $82, $E8, $0B		; 82 E8 0B
	plx		; FA
	sbc ($F8.b),Y		; F1 F8
	sbc $17.b,X		; F5 17
	ldx $FF05.w,Y		; BE 05 FF
	.db $82, $FF, $41		; 82 FF 41
	jsr $ACFC.w		; 20 FC AC
	nop		; EA
	sbc $0B01.w,Y		; F9 01 0B
	sed		; F8
	jmp ($3E00.w,X)		; 7C 00 3E
	.db $82, $EB, $20		; 82 EB 20
	cpx $40.b		; E4 40
	lda $001768.l,X		; BF 68 17 00
	eor $AA.b,X		; 55 AA
	tax		; AA
	eor $FC.b,X		; 55 FC
	jsr ($A2E4.w,X)		; FC E4 A2
	sta $97.b		; 85 97
	nop		; EA
	sbc $F5AEFF.l,X		; FF FF AE F5
	tax		; AA
	inc $E015.w,X		; FE 15 E0
	sed		; F8
	ora #$40.b		; 09 40
	sbc $08.b,X		; F5 08
	ldy $F8E0.w,X		; BC E0 F8
	phd		; 0B
	cpx $F8.b		; E4 F8
	ora #$E0.b		; 09 E0
	jsr ($F820.w,X)		; FC 20 F8
	ora $2AAD57.l		; 0F 57 AD 2A
	xce		; FB
	plb		; AB
	cpx #$F8.b		; E0 F8
	asl A		; 0A
	jsr $15F8.w		; 20 F8 15
	cpx #$F8.b		; E0 F8
	asl A		; 0A
	jsr $F8A0.w		; 20 A0 F8
	phd		; 0B
	cmp $AA.b,X		; D5 AA
	nop		; EA
	asl A		; 0A
	lda $F8A0B5.l		; AF B5 A0 F8
	ora $E85E.w		; 0D 5E E8
	phd		; 0B
	ldy #$4F.b		; A0 4F
	tsx		; BA
	lda [$5D.b]		; A7 5D
	ldy #$F8.b		; A0 F8
	phd		; 0B
	lda ($0B.b)		; B2 0B
	brk $FA.b		; 00 FA
	lsr $0AE0.w		; 4E E0 0A
	inx		; E8
	lda ($F6.b,X)		; A1 F6
	sbc $F862B0.l		; EF B0 62 F8
	ora $FEEA.w		; 0D EA FE
	ldx $E0.b,Y		; B6 E0
	sed		; F8
	ora $F05F.w		; 0D 5F F0
	ora ($E0.b),Y		; 11 E0
	jsr ($03FD.w,X)		; FC FD 03
	cpx #$F8.b		; E0 F8
	ora $0587.w,X		; 1D 87 05
	bcs  96.b		; B0 60
	inc $F2.b,X		; F6 F2
	adc [$0C.b]		; 67 0C
	tda		; 7B
	sbc ($FF.b,S),Y		; F3 FF
	adc $EF01.w,Y		; 79 01 EF
	cpx #$FD.b		; E0 FD
	ply		; 7A
	sta [$DF.b]		; 87 DF
	cpx #$FC.b		; E0 FC
	adc $1D8680.l,X		; 7F 80 86 1D
	asl $C3.b,X		; 16 C3
	.db $82, $D8, $30		; 82 D8 30
	stx $F8.b		; 86 F8
	ora #$DF.b		; 09 DF
	adc [$E7.b],Y		; 77 E7
	ora [$BC.b]		; 07 BC
	bra  -9.b		; 80 F7
	beq -128.b		; F0 80
	sed		; F8
	phd		; 0B
	lda $5877C0.l,X		; BF C0 77 58
	ldx #$F8.b		; A2 F8
	ora $1F9F.w		; 0D 9F 1F
	ora ($64.b,X)		; 01 64
	cpx #$FC.b		; E0 FC
	iny		; C8
	ldx #$7C.b		; A2 7C
	sbc $50FF.w,X		; FD FF 50
	brk $C8.b		; 00 C8
	ldx #$FC.b		; A2 FC
	ldy #$FE.b		; A0 FE
	iny		; C8
	ldx #$58.b		; A2 58
	brk $7C.b		; 00 7C
	adc ($C1.b,X)		; 61 C1
	ldy #$FE.b		; A0 FE
	iny		; C8
	ldx #$58.b		; A2 58
	cld		; D8
	jmp ($C0DE.w,X)		; 7C DE C0
	ldy #$F8.b		; A0 F8
	phd		; 0B
	jmp ($60DF.w,X)		; 7C DF 60
	ldy #$F8.b		; A0 F8
	ora $F861.w		; 0D 61 F8
	adc $0ED87F.l,X		; 7F 7F D8 0E
	phd		; 0B
	lsr $FB.b		; 46 FB
	asl $AA.b		; 06 AA
	brk $1D.b		; 00 1D
	trb $55.b		; 14 55
	brk $FC.b		; 00 FC
	jsr ($03F3.w,X)		; FC F3 03
	lsr $C2.b		; 46 C2
	inx		; E8
	ora #$7F.b		; 09 7F
	sbc ($48.b)		; F2 48
	jsl $E0DC46.l		; 22 46 DC E0
	inc $DC46.w,X		; FE 46 DC
	adc ($65.b),Y		; 71 65
	eor $FE0AF0.l,X		; 5F F0 0A FE
	nop		; EA
	bcs -32.b		; B0 E0
	sed		; F8
	ora #$5E.b		; 09 5E
	beq  14.b		; F0 0E
	cpx #$05.b		; E0 05
	eor $A0.b		; 45 A0
	sed		; F8
	ora #$C0.b		; 09 C0
	beq  15.b		; F0 0F
	sty $E0.b		; 84 E0
	sed		; F8
	ora $F884.w		; 0D 84 F8
	tsb $80FF.w		; 0C FF 80
	ora [$84.b],Y		; 17 84
	rol A		; 2A
	cpx $AD18.w		; EC 18 AD
	ora $60.b,S		; 03 60
	sed		; F8
	ora #$0A.b		; 09 0A
	bmi  42.b		; 30 2A
	xce		; FB
	bra -40.b		; 80 D8
	asl A		; 0A
	cpy $2A.b		; C4 2A
	tsa		; 3B
	bit $B828.w		; 2C 28 B8
	tsb $A0.b		; 04 A0
	sed		; F8
	ora #$8A.b		; 09 8A
	sep #$04		; E2 04
	bra  -8.b		; 80 F8
	ora $802A.w		; 0D 2A 80
	tax		; AA
	tax		; AA
	bra  -8.b		; 80 F8
	ora [$A8.b],Y		; 17 A8
	pea $F880.w		; F4 80 F8
	ora #$A8.b		; 09 A8
	inc $FF.b,X		; F6 FF
	inc $F6A8.w,X		; FE A8 F6
	cpx #$FE.b		; E0 FE
	tay		; A8
	inc $AE.b,X		; F6 AE
	inc $F8A0.w,X		; FE A0 F8
	ora #$A8.b		; 09 A8
	sbc ($72.b)		; F2 72
	cli		; 58
	ldy #$F8.b		; A0 F8
	phd		; 0B
	tay		; A8
	sbc ($40.b)		; F2 40
	cmp $008000.l,X		; DF 00 80 00
	bit $9728.w,X		; 3C 28 97
	brk $55.b		; 00 55
	eor $2A.b,X		; 55 2A
	rol A		; 2A
	jsr ($ECFC.w,X)		; FC FC EC
	rts		; 60

	jsl $D5D801.l		; 22 01 D8 D5
	pei ($FC.b)		; D4 FC
	cpx #$FD.b		; E0 FD
	sta $FF.b,S		; 83 FF
	cpx #$40.b		; E0 40
	ldx $5FB4.w,Y		; BE B4 5F
	eor $FCBFBF.l,X		; 5F BF BF FC
	and $F66648.l,X		; 3F 48 66 F6
	eor [$07.b]		; 47 07
	ldy #$00.b		; A0 00
	rti		; 40

	brk $FC.b		; 00 FC
	cpx #$FC.b		; E0 FC
	cmp $F5FF07.l,X		; DF 07 FF F5
	lda $F7.b		; A5 F7
	sbc $66EA.w,X		; FD EA 66
	sed		; F8
	asl A		; 0A
	dec A		; 3A
	and $EA0101.l,X		; 3F 01 01 EA
	lda $E00F.w,X		; BD 0F E0
	sed		; F8
	ora #$17.b		; 09 17
	sbc ($2A.b),Y		; F1 2A
	sta $54E9.w,X		; 9D E9 54
	iny		; C8
	phd		; 0B
	cmp $FF.b,X		; D5 FF
	asl $AF0F.w		; 0E 0F AF
	ora $E0.b,X		; 15 E0
	lda $060B6F.l,X		; BF 6F 0B 06
	cpx #$FD.b		; E0 FD
.ACCU 16
	rep #$E3		; C2 E3
	cpx #$20.b		; E0 20
	sbc $8C.b,X		; F5 8C
	pei ($9E.b)		; D4 9E
	sty $E0.b		; 84 E0
	bne  96.b		; D0 60
	sbc $DCF6.w,X		; FD F6 DC
	cpx #$FE.b		; E0 FE
	sty $49.b		; 84 49
	jsl $DC0707.l		; 22 07 07 DC
	cpx #$FE.b		; E0 FE
	sbc $4555DC.l,X		; FF DC 55 45
	cpx #$FE.b		; E0 FE
	jmp.w [$E0FE]		; DC FE E0
	sed		; F8
	phd		; 0B
	ldy #$F8.b		; A0 F8
	phd		; 0B
	bra  -8.b		; 80 F8
	ora #$FCE0.w		; 09 E0 FC
	tad		; 5B
	adc $F8E0AF.l,X		; 7F AF E0 F8
	trb $DD7F.w		; 1C 7F DD
	and $03051B.l		; 2F 1B 05 03
	cpx #$F8.b		; E0 F8
	ora #$C1C1.w		; 09 C1 C1
	sed		; F8
	jsr $FFF3.w		; 20 F3 FF
	lsr $FEE0.w		; 4E E0 FE
	rti		; 40

	bra -24.b		; 80 E8
	bcs  -3.b		; B0 FD
	ror $BF.b,X		; 76 BF
	ror $F8C0.w		; 6E C0 F8
	ora #$3F3F.w		; 09 3F 3F
	ror $5E7D.w		; 6E 7D 5E
	bra  -8.b		; 80 F8
	ora $C0A0.w		; 0D A0 C0
	ldy #$F8.b		; A0 F8
	ora [$02.b],Y		; 17 02
	adc $F8E0FD.l,X		; 7F FD E0 F8
	ora [$FD.b],Y		; 17 FD
	ldx $BF.b,Y		; B6 BF
	adc $41F0.w		; 6D F0 41
	ror $F800.w,X		; 7E 00 F8
	ora #$8787.w		; 09 87 87
	sbc ($E1.b,X)		; E1 E1
	ror $F800.w,X		; 7E 00 F8
	phd		; 0B
	sei		; 78
	eor [$7E.b],Y		; 57 7E
	bne  96.b		; D0 60
	pea $00D8.w		; F4 D8 00
	sed		; F8
	ora $1F1F.w		; 0D 1F 1F
	cpx #$FC.b		; E0 FC
	plp		; 28
	inc $55.b,X		; F6 55
	sbc $FC.b,X		; F5 FC
	inc $F628.w,X		; FE 28 F6
	jsr ($2CFE.w,X)		; FC FE 2C
	sbc ($FC.b)		; F2 FC
	sed		; F8
	phd		; 0B
	bit $FCF2.w		; 2C F2 FC
	sed		; F8
	phd		; 0B
	sbc $FF.b,X		; F5 FF
	sbc $75.b,X		; F5 75
	nop		; EA
	sbc $0BF8FC.l,X		; FF FC F8 0B
	jsr $0FB8.w		; 20 B8 0F
	ora $FA.b		; 05 FA
	sta $FC.b,S		; 83 FC
	jsr ($0BF8.w,X)		; FC F8 0B
	cpx #$F8.b		; E0 F8
	ora $41FE02.l		; 0F 02 FE 41
	sei		; 78
	inc $0DF8.w,X		; FE F8 0D
	ora ($FE.b,S),Y		; 13 FE
	sed		; F8
	ora $DF54.w		; 0D 54 DF
	and $A11FE0.l,X		; 3F E0 1F A1
	cmp $FE.b,X		; D5 FE
	jsr ($80A3.w,X)		; FC A3 80
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	asl $507F.w		; 0E 7F 50
	xba		; EB
	and $DF.b		; 25 DF
	cpx #$20F8.w		; E0 F8 20
	inc A		; 1A
	pei ($81.b)		; D4 81
	and ($F6.b,S),Y		; 33 F6
	sbc $CE7EFD.l,X		; FF FD 7E CE
	tay		; A8
	cmp ($FE.b,X)		; C1 FE
	sed		; F8
	phd		; 0B
	rts		; 60

	sed		; F8
	ora $13F5DF.l		; 0F DF F5 13
	sbc [$16.b],Y		; F7 16
	sbc ($17.b),Y		; F1 17
	beq  -2.b		; F0 FE
	sed		; F8
	ora #$0008.w		; 09 08 00
	inc $0DF8.w,X		; FE F8 0D
	ldy $C0E4.w,X		; BC E4 C0
	adc $BF1645.l,X		; 7F 45 16 BF
	rti		; 40

	brk $D9.b		; 00 D9
	inc $EFFF.w,X		; FE FF EF
	lda ($94.b),Y		; B1 94
	mvn $FE,$F1		; 54 F1 FE
	jsr ($FCE0.w,X)		; FC E0 FC
	sty $FE.b		; 84 FE
	jsr ($FCE0.w,X)		; FC E0 FC
	jmp ($0AF8.w)		; 6C F8 0A
	ora ($74.b,X)		; 01 74
	cpx #$0AF8.w		; E0 F8 0A
	eor ($FE.b)		; 52 FE
	cpx #$70FE.w		; E0 FE 70
	inc $3EBE.w,X		; FE BE 3E
	stx $FE08.w		; 8E 08 FE
	bit $F8FE.w,X		; 3C FE F8
	ora $A3.b		; 05 A3
	jmp.w [$FE41]		; DC 41 FE
	sed		; F8
	tsb $E0FF.w		; 0C FF E0
	sbc $FE1E.w,X		; FD 1E FE
	adc ($44.b,S),Y		; 73 44
	cpx #$14F8.w		; E0 F8 14
	lda $3DFE3F.l,X		; BF 3F FE 3D
	inc $28F8.w,X		; FE F8 28
	inc $E0.b		; E6 E0
	rti		; 40

	inc $0CF8.w,X		; FE F8 0C
	cpy #$FE3F.w		; C0 3F FE
	dey		; 88
	rol A		; 2A
	ora $E0F8FE.l,X		; 1F FE F8 E0
	sed		; F8
	ora ($04.b),Y		; 11 04
	sed		; F8
	phd		; 0B
	brk $F8.b		; 00 F8
	trb $42.b		; 14 42
	rti		; 40

	tas		; 1B
	tsb $80.b		; 04 80
	ora $C4954A.l		; 0F 4A 95 C4
	mvp $26,$FC		; 44 FC 26
	sed		; F8
	asl A		; 0A
	sbc ($FF.b,S),Y		; F3 FF
	jsr $F8E0.w		; 20 E0 F8
	asl $1B.b,X		; 16 1B
	ora $2D.b		; 05 2D
	adc $F8E080.l,X		; 7F 80 E0 F8
	ora $1EE5.w,Y		; 19 E5 1E
	sbc $FDFE.w,X		; FD FE FD
	adc $0EF81E.l,X		; 7F 1E F8 0E
	plp		; 28
	clv		; B8
	cpx #$FD1E.w		; E0 1E FD
	inc $E0FD.w,X		; FE FD E0
	rol $0DF8.w,X		; 3E F8 0D
	sta ($01.b,X)		; 81 01
	asl $0E.b,X		; 16 0E
	asl $FEFD.w,X		; 1E FD FE
	sbc $1E7E.w,X		; FD 7E 1E
	sed		; F8
	bpl  -1.b		; 10 FF
	ora ($02.b,X)		; 01 02
	cop $9C.b		; 02 9C
	and $07FEFD.l,X		; 3F FD FE 07
	sta $FC.b		; 85 FC
	ora ($FC.b,X)		; 01 FC
	cop $FD.b		; 02 FD
	pld		; 2B
	sbc #$6DFE.w		; E9 FE 6D
	inc $FE6C.w,X		; FE 6C FE
	clc		; 18
	and ($F0.b)		; 32 F0
	phd		; 0B
	cpx #$FEFC.w		; E0 FC FE
	sbc ($30.b,X)		; E1 30
	ora ($01.b,X)		; 01 01
	sbc $21FE.w,X		; FD FE 21
	dec $FC.b,X		; D6 FC
	ora ($AE.b),Y		; 11 AE
	ora [$18.b]		; 07 18
	cpx $BEFE.w		; EC FE BE
	sbc $5609F6.l		; EF F6 09 56
	cmp ($FC.b,X)		; C1 FC
	ldx $4041.w,Y		; BE 41 40
	beq  10.b		; F0 0A
	bit $42F3.w,X		; 3C F3 42
	sed		; F8
	ora $48FE.w		; 0D FE 48
	sbc $5416.w,X		; FD 16 54
	ora $3FFDFE.l,X		; 1F FE FD 3F
	.db $62, $F8, $0D		; 62 F8 0D
	inc $F060.w,X		; FE 60 F0
	asl A		; 0A
	jmp $F8E0F3.l		; 5C F3 E0 F8
	ora $4E61F0.l		; 0F F0 61 4E
	inc $7EFC.w,X		; FE FC 7E
	adc $457E.w,X		; 7D 7E 45
	jsr ($7655.w,X)		; FC 55 76
	sbc $FE687F.l,X		; FF 7F 68 FE
	sbc $FD7E.w,X		; FD 7E FD
	lsr $FC.b		; 46 FC
	ror $4DF4.w,X		; 7E F4 4D
	bne -49.b		; D0 CF
	ldx $FEAF.w,Y		; BE AF FE
	sbc $FC9FDC.l		; EF DC 9F FC
	ora $E3FE0E.l		; 0F 0E FE E3
	cmp $FEBFF0.l,X		; DF F0 BF FE
	sbc $D022FE.l,X		; FF FE 22 D0
	jsr ($EFFF.w,X)		; FC FF EF
	inc $5146.w		; EE 46 51
	ora ($20.b,S),Y		; 13 20
	dec $FE71.w,X		; DE 71 FE
	inc $FDF6.w,X		; FE F6 FD
	inc A		; 1A
	rti		; 40

	inc $FDF1.w,X		; FE F1 FD
	adc ($3A.b),Y		; 71 3A
	rol $82.b,X		; 36 82
	beq  13.b		; F0 0D
	adc $B1.b,X		; 75 B1
	ldy #$18E8.w		; A0 E8 18
	inc $C0FD.w,X		; FE FD C0
	inx		; E8
	ora ($BF.b),Y		; 11 BF
	rol $F8FE.w,X		; 3E FE F8
	phd		; 0B
	cpx #$FD01.w		; E0 01 FD
	ora $0BF8FE.l,X		; 1F FE F8 0B
	brk $8E.b		; 00 8E
	lda $7C83.w,Y		; B9 83 7C
	ora $F6.b,X		; 15 F6
	eor $BE.b		; 45 BE
	adc ($9E.b,X)		; 61 9E
	adc ($8E.b),Y		; 71 8E
	cpx $F6EF.w		; EC EF F6
	stx $F4.b,Y		; 96 F4
	php		; 08
	and ($B8.b),Y		; 31 B8
	asl A		; 0A
	sbc [$10.b],Y		; F7 10
	lda [$D0.b],Y		; B7 D0
	adc [$90.b],Y		; 77 90
	inc $B7FE.w,X		; FE FE B7
	xce		; FB
	sbc $E00850.l,X		; FF 50 08 E0
	inc $0DF8.w,X		; FE F8 0D
	jmp ($7C6C.w)		; 6C 6C 7C
	mvn $5C,$4C		; 54 4C 5C
	jmp $7E64.w		; 4C 64 7E
	lsr $1F65.w,X		; 5E 65 1F
	inc $6675.w,X		; FE 75 66
	lsr $7D7D.w		; 4E 7D 7D
	sbc $DF54BC.l		; EF BC 54 DF
	jmp ($54EF.w)		; 6C EF 54
	sbc $AABF.w,X		; FD BF AA
	jmp $ED6CF6.l		; 5C F6 6C ED
	mvn $7C,$FE		; 54 FE 7C
	sec		; 38
	inc $9F.b		; E6 9F
	ldx $A7.b,Y		; B6 A7
	inc $CE10.w,X		; FE 10 CE
	tyx		; BB
	adc $E8C0.w,Y		; 79 C0 E8
	ora $33BC.w		; 0D BC 33
	cpy #$0DE8.w		; C0 E8 0D
	eor $FEE00F.l		; 4F 0F E0 FE
	bcs  -2.b		; B0 FE
	sbc $EE81F0.l,X		; FF F0 81 EE
	cpx #$E6FE.w		; E0 FE E6
	inc $EFEF.w,X		; FE EF EF
	sta ($1E.b,X)		; 81 1E
	jsr ($E13C.w,X)		; FC 3C E1
	adc ($18.b,S),Y		; 73 18
	pea $1AFE.w		; F4 FE 1A
	inc $E8.b,X		; F6 E8
	ora [$7E.b],Y		; 17 7E
	plp		; 28
	eor $EB.b,S		; 43 EB
	and $FD9388.l,X		; 3F 88 93 FD
	rol $8C91.w		; 2E 91 8C
	sbc ($8C.b)		; F2 8C
	eor $85.b,S		; 43 85
	eor ($08.b)		; 52 08
	tad		; 5B
	ora #$4C5A.w		; 09 5A 4C
	cmp $28FE.w		; CD FE 28
	plx		; FA
	sta $3E.b,S		; 83 3E
	sta $F1.b,S		; 83 F1
	inc $3F.b,X		; F6 3F
	jsr ($F7FE.w,X)		; FC FE F7
	inc $90F7.w,X		; FE F7 90
	adc [$80.b]		; 67 80
	jsr ($10E7.w,X)		; FC E7 10
	cmp [$B8.b]		; C7 B8
	adc $0F.b,S		; 63 0F
	sbc $9C.b,S		; E3 9C
	cmp ($3E.b),Y		; D1 3E
	and ($36.b,X)		; 21 36
	rol $F018.w		; 2E 18 F0
	jsr ($BFF1.w,X)		; FC F1 BF
	bne  56.b		; D0 38
	sbc $FD1C.w,Y		; F9 1C FD
	asl $CE8F.w		; 0E 8F CE
	lsr $AC.b,X		; 56 AC
	lda ($01.b)		; B2 01
	eor ($D2.b)		; 52 D2
	stp		; DB
	lda $77FFFB.l,X		; BF FB FF 77
	sta $5D08EB.l		; 8F EB 08 5D
	txs		; 9A
	brk $01.b		; 00 01
	ora ($73.b,X)		; 01 73
	ora $76.b,S		; 03 76
	asl $35.b		; 06 35
	lsr $D2.b		; 46 D2
	cpy #$BF0B.w		; C0 0B BF
	stp		; DB
	lda ($10.b,X)		; A1 10
	inc $FF80.w,X		; FE 80 FF
	ora $4FFFFF.l,X		; 1F FF FF 4F
	jmp $F8F7BB.l		; 5C BB F7 F8
	sbc [$A8.b],Y		; F7 A8
	sbc [$4F.b]		; E7 4F
	sbc $F3FFA2.l		; EF A2 FF F3
	eor ($11.b,S),Y		; 53 11
.ACCU 8
	sep #$E4		; E2 E4
	ora $10E6FF.l		; 0F FF E6 10
.ACCU 8
.INDEX 8
	sep #$B6		; E2 B6
	xce		; FB
	lsr $8F.b		; 46 8F
	beq -33.b		; F0 DF
	inc $0BF8.w,X		; FE F8 0B
	bcs -33.b		; B0 DF
	cmp $F8FEC0.l		; CF C0 FE F8
	ora $EC70.w		; 0D 70 EC
	bvc  39.b		; 50 27
	jsr ($9800.w,X)		; FC 00 98
	ora #$EA.b		; 09 EA
	jsr ($9820.w,X)		; FC 20 98
	ora ($3F.b,S),Y		; 13 3F
	inx		; E8
	inc $5527.w,X		; FE 27 55
	inc $F8.b		; E6 F8
	ora #$E7.b		; 09 E7
	cpx #$FE.b		; E0 FE
	nop		; EA
	jsr ($F8FE.w,X)		; FC FE F8
	ora #$EA.b		; 09 EA
	jsr ($F8FE.w,X)		; FC FE F8
	ora #$D5.b		; 09 D5
	sta $20.b		; 85 20
	ldy $00.b		; A4 00
	tay		; A8
	ora #$20.b		; 09 20
	ldy $60.b		; A4 60
	ldy #$0D.b		; A0 0D
	rol A		; 2A
	cmp $60.b,X		; D5 60
	ldy #$19.b		; A0 19
	ldx $FD55.w		; AE 55 FD
	adc $A000A8.l,X		; 7F A8 00 A0
	phd		; 0B
	tax		; AA
	jsr ($A820.w,X)		; FC 20 A8
	ora $009FA1.l		; 0F A1 9F 00
	tay		; A8
	asl $C3.b,X		; 16 C3
	.db $82, $61, $C1		; 82 61 C1
	cmp $60B0FF.l,X		; DF FF B0 60
	cld		; D8
	bmi -52.b		; 30 CC
	sec		; 38
	nop		; EA
	jsr ($80BC.w,X)		; FC BC 80
	dec $EFC0.w,X		; DE C0 EF
	cpx #$F7.b		; E0 F7
	beq  -3.b		; F0 FD
	eor $E0F8FB.l,X		; 5F FB F8 E0
	jsr ($C0BF.w,X)		; FC BF C0
	cmp $B0EF60.l,X		; DF 60 EF B0
	adc [$58.b],Y		; 77 58
	tsa		; 3B
	bit $C0BE.w		; 2C BE C0
	ora #$5D.b		; 09 5D
	xce		; FB
	cpy #$94.b		; C0 94
	cpx #$FC.b		; E0 FC
	cpx $FE18.w		; EC 18 FE
	inc $ADEA.w,X		; FE EA AD
	sed		; F8
	inc $F6FE.w,X		; FE FE F6
	tsb $AFFB.w		; 0C FB AF
	and $03FD06.l,X		; 3F 06 FD 03
	tax		; AA
	ora ($60.b,X)		; 01 60
	bcs   9.b		; B0 09
	dec $0DA8.w,X		; DE A8 0D
	ora $0E16.w,X		; 1D 16 0E
	phd		; 0B
	sta [$05.b]		; 87 05
	sed		; F8
	cpx #$80.b		; E0 80
	rts		; 60

	bcs   9.b		; B0 09
	sbc ($03.b,S),Y		; F3 03
	adc $8001.w,Y		; 79 01 80
	brk $B0.b		; 00 B0
	phd		; 0B
	adc $80EAEB.l,X		; 7F EB EA 80
	tax		; AA
	cpy #$00.b		; C0 00
	bcs  23.b		; B0 17
	txa		; 8A
	jsr ($18AC.w,X)		; FC AC 18
	cpx #$FE.b		; E0 FE
	dey		; 88
	inc $B040.w,X		; FE 40 B0
	ora #$05.b		; 09 05
	sbc $DF.b,X		; F5 DF
	ora $02.b,S		; 03 02
	sta [$B2.b],Y		; 97 B2
	cpy #$B8.b		; C0 B8
	clc		; 18
	plx		; FA
	jmp ($B6FD.w)		; 6C FD B6
	ror $BFDB.w,X		; 7E DB BF
	adc $FEE0.w		; 6D E0 FE
	adc $0F0FEB.l,X		; 7F EB 0F 0F
	sta [$87.b]		; 87 87
	cmp $C3.b,S		; C3 C3
	sbc ($E1.b,X)		; E1 E1
	rts		; 60

	clv		; B8
	phd		; 0B
	bra -68.b		; 80 BC
	lda $F8C0.w,Y		; B9 C0 F8
	ora [$17.b],Y		; 17 17
	phy		; 5A
	adc $FCFE0D.l,X		; 7F 0D FE FC
	cpx #$FE.b		; E0 FE
	jsr ($FDFF.w,X)		; FC FF FD
	cpx #$FC.b		; E0 FC
	ora #$FB.b		; 09 FB
	asl A		; 0A
	sbc $F80B.w,Y		; F9 0B F8
	eor [$55.b],Y		; 57 55
	inc $09F8.w,X		; FE F8 09
	tsb $00.b		; 04 00
	inc $0DF8.w,X		; FE F8 0D
	cpx $F8.b		; E4 F8
	phd		; 0B
	cpx #$F8.b		; E0 F8
	ora ($FF.b,S),Y		; 13 FF
	sed		; F8
	ora $0E8871.l		; 0F 71 88 0E
	inc $F8.b		; E6 F8
	asl A		; 0A
	clv		; B8
	lda $001ED4.l		; AF D4 1E 00
	and $F8E6.w,X		; 3D E6 F8
	asl A		; 0A
	xce		; FB
	tsb $E9.b		; 04 E9
	asl $CC.b,X		; 16 CC
	lda $4F86.w,Y		; B9 86 4F
	lda $C1.b,X		; B5 C1
	clv		; B8
	rep #$C4		; C2 C4
	sed		; F8
	cpy $80.b		; C4 80
	tyx		; BB
	clv		; B8
	sta $11.b,S		; 83 11
	sta $F783F1.l		; 8F F1 83 F7
	inc $FFBB.w,X		; FE BB FF
	clv		; B8
	asl $FE3E.w,X		; 1E 3E FE
	stx $CB.b		; 86 CB
	ora ($FF.b,X)		; 01 FF
	and $F8.b,S		; 23 F8
	and $01.b,S		; 23 01
	cmp $C11D.w,X		; DD 1D C1
	trb $F9F1.w		; 1C F1 F9
	ora ($01.b,X)		; 01 01
	cmp ($F7.b,X)		; C1 F7
	inc $FFDD.w,X		; FE DD FF
	dey		; 88
	ora $1D.b,S		; 03 1D
	inc $AAE0.w,X		; FE E0 AA
	eor $03.b,X		; 55 03
	pha		; 48
	bvc  -4.b		; 50 FC
	inc $D1FC.w,X		; FE FC D1
	asl $7F.b,X		; 16 7F
	sbc $C2FAFF.l,X		; FF FF FA C2
	cpx #$AF.b		; E0 AF
	bvc  31.b		; 50 1F
	bvc -65.b		; 50 BF
	inc $F1FD.w,X		; FE FD F1
	bpl  23.b		; 10 17
	eor ($10.b,X)		; 41 10
	bvc  80.b		; 50 50
	beq  -1.b		; F0 FF
	sbc $FEA3E0.l,X		; FF E0 A3 FE
	sed		; F8
	phd		; 0B
	sty $C6.b,X		; 94 C6
	ldy #$FF.b		; A0 FF
	sed		; F8
	phd		; 0B
	ldy $6A75.w,X		; BC 75 6A
	jsr ($5C30.w,X)		; FC 30 5C
	rtl		; 6B

	jsr ($637D.w,X)		; FC 7D 63
	jsr ($7F80.w,X)		; FC 80 7F
	lda $0AF8FE.l,X		; BF FE F8 0A
	and $90BC.w,X		; 3D BC 90
	cmp #$D2.b		; C9 D2
	sta ($EB.b)		; 92 EB
	inc $FCFD.w,X		; FE FD FC
	sbc $FBFF.w,X		; FD FF FB
	sbc [$85.b]		; E7 85
	sbc ($F1.b,X)		; E1 F1
	nop		; EA
	lda $0AF8FE.l,X		; BF FE F8 0A
	sbc ($EF.b)		; F2 EF
	bcc  47.b		; 90 2F
	xba		; EB
	bra  14.b		; 80 0E
	sbc $735FF7.l,X		; FF F7 5F 73
	cmp $54FAC0.l,X		; DF C0 FA 54
	plb		; AB
	dey		; 88
	sbc [$A0.b],Y		; F7 A0
	cmp $6BC342.l,X		; DF 42 C3 6B
	lda $FB84.w,X		; BD 84 FB
	sed		; F8
	ldx #$DD.b		; A2 DD
	tsb $FB.b		; 04 FB
	lda [$E9.b],Y		; B7 E9
	brk $FB.b		; 00 FB
	cmp $38.b,S		; C3 38
	bpl  -8.b		; 10 F8
	rep #$80		; C2 80
	lda $F1FE.w,X		; BD FE F1
	trb $FF23.w		; 1C 23 FF
	ldy $BDBC.w,X		; BC BC BD
	sbc $0BFEFF.l,X		; FF FF FE 0B
	.db $82, $6F, $00		; 82 6F 00
	sbc $FE60FE.l,X		; FF FE 60 FE
	cop $A8.b		; 02 A8
	cmp $00.b,S		; C3 00
	sbc $0EFE.w,Y		; F9 FE 0E
	dex		; CA
	brk $F8.b		; 00 F8
	tas		; 1B
	sec		; 38
	cmp [$0F.b],Y		; D7 0F
	tsx		; BA
	sta $2A.b,S		; 83 2A
	eor $10.b,X		; 55 10
	eor $FC.b,X		; 55 FC
	inc $00FC.w,X		; FE FC 00
	plx		; FA
	phx		; DA
	stz $7540.w		; 9C 40 75
	jsr ($4953.w,X)		; FC 53 49
	ora ($23.b,X)		; 01 23
	adc $03.b,X		; 75 03
	eor $8B.b,X		; 55 8B
	eor $AB.b,X		; 55 AB
	inc $7A51.w,X		; FE 51 7A
	ror $DDA0.w,X		; 7E A0 DD
	sbc $BDFD.w,X		; FD FD BD
	inc $F9FD.w,X		; FE FD F9
	lda $FF7F.w		; AD 7F FF
	ora #$C2.b		; 09 C2
	cmp ($C2.b,X)		; C1 C2
	and $2DC3.w		; 2D C3 2D
	sbc [$09.b],Y		; F7 09
.ACCU 16
	rep #$2C		; C2 2C
	inc $C220.w,X		; FE 20 C2
	bcc  53.b		; 90 35
	clc		; 18
	inc $19FA.w,X		; FE FA 19
	cpx $E1.b		; E4 E1
	inc $6CFE.w,X		; FE FE 6C
	cmp #$0100.w		; C9 00 01
	sbc $23FE.w,X		; FD FE 23
	xce		; FB
	and $2BFBC0.l,X		; 3F C0 FB 2B
	and $7EF1.w,X		; 3D F1 7E
	cpy #$FE.b		; C0 FE
	inc $BF.b		; E6 BF
	cop $FF.b		; 02 FF
	sbc $DB1E1D.l,X		; FF 1D 1E DB
	jmp.w [$D4DB]		; DC DB D4
	sbc ($0E.b),Y		; F1 0E
	cpy #$3F.b		; C0 3F
	brk $3F.b		; 00 3F
	cmp $E5EAD8.l,X		; DF D8 EA E5
	sta [$FF.b]		; 87 FF
	inx		; E8
	sbc $D9.b		; E5 D9
	iny		; C8
	bit $1E1E.w		; 2C 1E 1E
	stz $3F1E.w,X		; 9E 1E 3F
	sbc $FF20D8.l,X		; FF D8 20 FF
	adc ($E5.b,X)		; 61 E5
	ora $1FE7.w,X		; 1D E7 1F
	wai		; CB
	and [$BD.b],Y		; 37 BD
	eor $5E.b,S		; 43 5E
	sbc ($FE.b,X)		; E1 FE
	sbc $0BC5F0.l,X		; FF F0 C5 0B
	adc $07D3.w,X		; 7D D3 07
	sbc $FC.b,S		; E3 FC
	sec		; 38
	ora $E0A70F.l		; 0F 0F A7 E0
	ora #$A5EB.w		; 09 EB A5
	sbc $34FFC7.l,X		; FF C7 FF 34
	ror A		; 6A
	cpx #$FE.b		; E0 FE
	bmi  -1.b		; 30 FF
	sbc $EC8F20.l		; EF 20 8F EC
	sed		; F8
	lsr $FEDF.w,X		; 5E DF FE
	dec $28.b		; C6 28
	eor $6C.b,X		; 55 6C
	cpy #$F8.b		; C0 F8
	asl A		; 0A
	bvs  25.b		; 70 19
	sbc $0BE9BD.l,X		; FF BD E9 0B
	stz $FFC0.w,X		; 9E C0 FF
	sta $5E624B.l		; 8F 4B 62 5E
	rol $AAE1.w		; 2E E1 AA
	sbc $1F7356.l,X		; FF 56 73 1F
	jsr ($FF03.w,X)		; FC 03 FF
	cop $FE.b		; 02 FE
	sbc $7AFFC0.l,X		; FF C0 FF 7A
	jmp ($DB0A.w,X)		; 7C 0A DB
	txs		; 9A
	rti		; 40

	ldy $71.b		; A4 71
	inc $41BD.w,X		; FE BD 41
	pla		; 68
	cpx $7F.b		; E4 7F
	inc $F1FD.w,X		; FE FD F1
	sbc $F1FE7D.l,X		; FF 7D FE F1
	stx $F7.b		; 86 F7
	ldy $8F.b,X		; B4 8F
	nop		; EA
	sta $DE9EED.l		; 8F ED 9E DE
	cmp $FFFF.w,X		; DD FF FF
	jmp.w [$08EB]		; DC EB 08
	sbc [$21.b],Y		; F7 21
	stx $79.b		; 86 79
	ldy $4B.b,X		; B4 4B
	txa		; 8A
	ora $8D.b,X		; 15 8D
	sta ($DE.b)		; 92 DE
	sbc ($DC.b,X)		; E1 DC
	sed		; F8
	sbc $DEF123.l,X		; FF 23 F1 DE
	sbc [$67.b]		; E7 67
	sbc ($83.b,S),Y		; F3 83
	sei		; 78
	brk $7D.b		; 00 7D
	adc ($BF.b,X)		; 61 BF
	lda $FFFF.w,X		; BD FF FF
	sbc $53.b,X		; F5 53
	sbc $FE5C.w,X		; FD 5C FE
	ldx #$67.b		; A2 67
	tya		; 98
	phb		; 8B
	jmp ($FF04.w,X)		; 7C 04 FF
	adc ($9E.b,X)		; 61 9E
	sbc $DF42.w,X		; FD 42 DF
	lda $5FBE4F.l,X		; BF 4F BE 5F
	lda $A2.b,S		; A3 A2
	eor $A688.w,X		; 5D 88 A6
	pea $E8FF.w		; F4 FF E8
	sbc $E9FEF1.l,X		; FF F1 FE E9
	bpl -95.b		; 10 A1
	ldy $DE.b		; A4 DE
	sed		; F8
	jsr ($A1FE.w,X)		; FC FE A1
	sed		; F8
	sbc $A4887B.l,X		; FF 7B 88 A4
	ora $FC.b,S		; 03 FC
	adc $8A.b,X		; 75 8A
	phb		; 8B
	tsb $01.b		; 04 01
	asl $05.b		; 06 05
	cop $E0.b		; 02 E0
	sbc $FF0F.w,X		; FD 0F FF
	ora [$25.b]		; 07 25
	adc $A8C9AA.l,X		; 7F AA C9 A8
	cmp #$FEFB.w		; C9 FB FE
	jsr ($FF01.w,X)		; FC 01 FF
	asl $F9.b		; 06 F9
	ora $FFFDF0.l		; 0F F0 FD FF
	tay		; A8
	dex		; CA
	sbc $0107FC.l,X		; FF FC 07 01
	ora #$1006.w		; 09 06 10
	ora $FD3FBF.l		; 0F BF 3F FD
	inc $DEFD.w,X		; FE FD DE
	sbc $EE9DFB.l,X		; FF FB 9D EE
	ora $10CE.w		; 0D CE 10
	stx $80.b,Y		; 96 80
	cmp $40F960.l		; CF 60 F9 40
	ror $DFDB.w,X		; 7E DB DF
	sbc $F0EDB7.l,X		; FF B7 ED F0
	sbc $F1A5E9.l,X		; FF E9 A5 F1
	inc $9F.b		; E6 9F
	lda $AF.b,S		; A3 AF
	iny		; C8
	inc $CFA7.w,X		; FE A7 CF
	lda ($4F.b,X)		; A1 4F
	rti		; 40

	cmp $C0DF90.l		; CF 90 DF C0
	lda $EBE8E2.l,X		; BF E2 E8 EB
	cmp [$FE.b],Y		; D7 FE
	sbc ($FF.b),Y		; F1 FF
	adc $38D2.w,Y		; 79 D2 38
	ldx $F6.b,Y		; B6 F6
	sbc ($EA.b,S),Y		; F3 EA
	xce		; FB
	asl A		; 0A
	cop $C9.b		; 02 C9
	ora #$2BB6.w		; 09 B6 2B
	rol $FF0C.w		; 2E 0C FF
	cpx $45.b		; E4 45
	adc ($E0.b),Y		; 71 E0
	sed		; F8
	ora #$E37F.w		; 09 7F E3
	ora $09AB06.l,X		; 1F 06 AB 09
	eor #$13F1.w		; 49 F1 13
	lda ($F2.b,X)		; A1 F2
	sbc $BF.b,S		; E3 BF
	cpx #$FF.b		; E0 FF
	ora $7E.b,X		; 15 7E
	lsr $E0BA.w		; 4E BA E0
	sbc $F7FEF0.l,X		; FF F0 FE F7
	asl $FF.b		; 06 FF
	sbc $F5FC.w,Y		; F9 FC F5
	clc		; 18
	inc $FE4A.w,X		; FE 4A FE
	sec		; 38
	cmp $18.b,X		; D5 18
	and $D8.b,X		; 35 D8
	ldy $CC73.w		; AC 73 CC
	sta $DFFD.w,Y		; 99 FD DF
	inc $3AFF.w,X		; FE FF 3A
	sta ($EA.b,X)		; 81 EA
	and $37E8.w,Y		; 39 E8 37
	sbc $FBA0.w,Y		; F9 A0 FB
	ldx $FF.b		; A6 FF
	lda $FE.b,S		; A3 FE
	jsr ($FD90.w,X)		; FC 90 FD
	inc $CA.b,X		; F6 CA
	sbc [$FE.b],Y		; F7 FE
	adc $65F6C4.l,X		; 7F C4 F6 65
	sbc ($26.b)		; F2 26
	cmp $FAF1FF.l,X		; DF FF F1 FA
	and ($F8.b),Y		; 31 F8
	and ($78.b,S),Y		; 33 78
	inc $0AFD.w,X		; FE FD 0A
	ora $E9.b,S		; 03 E9
	cpx #$F9.b		; E0 F9
	cpx $FB.b		; E4 FB
	cpx $86.b		; E4 86
	sbc $FDFE7B.l,X		; FF 7B FE FD
	ror $9E.b,X		; 76 9E
	sbc $0ADA02.l		; EF 02 DA 0A
	cmp $B304.w,Y		; D9 04 B3
	ora ($FF.b)		; 12 FF
	and $670CB7.l,X		; 3F B7 0C 67
	bit $4F.b		; 24 4F
	inc $80.b,X		; F6 80
	inc $FA10.w,X		; FE 10 FA
	and $FF.b		; 25 FF
	and [$FF.b]		; 27 FF
	eor $FEE1FE.l		; 4F FE E1 FE
	sta $EDBFFF.l,X		; 9F FF BF ED
	sbc [$EF.b]		; E7 EF
	cmp [$FE.b]		; C7 FE
	adc $0FFF47.l		; 6F 47 FF 0F
	tax		; AA
	brk $27.b		; 00 27
	bra  79.b		; 80 4F
	bcs 112.b		; B0 70
	sta $E917EB.l		; 8F EB 17 E9
	ora [$ED.b],Y		; 17 ED
	ora $97FE61.l		; 0F 61 FE 97
	sbc $74EFD7.l		; EF D7 EF 74
	cmp $13B380.l		; CF 80 B3 13
	sed		; F8
	sbc $02A0FE.l,X		; FF FE A0 02
	bra  16.b		; 80 10
	bcc  56.b		; 90 38
	sbc $38.b,S		; E3 38
	and [$FB.b]		; 27 FB
	tsb $7B.b		; 04 7B
	lda ($DA.b,X)		; A1 DA
	inc $CF.b,X		; F6 CF
	inc $3AF7.w,X		; FE F7 3A
	eor ($F9.b),Y		; 51 F9
	nop		; EA
	eor $F0F2.w,X		; 5D F2 F0
	pha		; 48
	sbc ($57.b),Y		; F1 57
	ora ($F7.b),Y		; 11 F7
	sed		; F8
	cpx #$9F.b		; E0 9F
	ldy $AA.b		; A4 AA
	ora ($E3.b)		; 12 E3
	jmp $E9F1.w		; 4C F1 E9
	stz $55.b,X		; 74 55
	asl $96.b		; 06 96
	ldy $A964.w		; AC 64 A9
	stz $EC03.w		; 9C 03 EC
	sep #$43		; E2 43
	cmp $EACE36.l		; CF 36 CE EA
	sbc ($B8.b,S),Y		; F3 B8
	ldx $CBFF.w,Y		; BE FF CB
	cmp ($87.b,S),Y		; D3 87
	sty $5CF3.w		; 8C F3 5C
	inc $6CB3.w		; EE B3 6C
	lda $7C9F70.l,X		; BF 70 9F 7C
	lda [$98.b]		; A7 98
	asl A		; 0A
	sbc $E6DFC6.l,X		; FF C6 DF E6
	sbc $FEE0FE.l,X		; FF FE E0 FE
	dec $3F.b		; C6 3F
	inc $1F.b		; E6 1F
	eor ($1A.b)		; 52 1A
	inc $FEE0.w,X		; FE E0 FE
	mvp $FE,$F2		; 44 F2 FE
	ldy #$CF.b		; A0 CF
	lsr $FEB1.w,X		; 5E B1 FE
	bcc -48.b		; 90 D0
	cpy #$BF.b		; C0 BF
	mvp $49,$F4		; 44 F4 49
	cmp $EFFB.w,Y		; D9 FB EF
	cmp $D1.b,X		; D5 D1
	bit $0AA0.w,X		; 3C A0 0A
	ora $7C.b,S		; 03 7C
	sbc ($B9.b,X)		; E1 B9
	cmp #$D7A1.w		; C9 A1 D7
	inc $FE03.w,X		; FE 03 FE
	cpx #$F8.b		; E0 F8
	asl A		; 0A
	lsr $D7.b,X		; 56 D7
	adc $B243.w,X		; 7D 43 B2
	ora $63.b,S		; 03 63
	bne  13.b		; D0 0D
	adc $7B.b,X		; 75 7B
	bvs -82.b		; 70 AE
	jsr ($227A.w,X)		; FC 7A 22
	sta ($E4.b),Y		; 91 E4
	sed		; F8
	ora #$FFDB.w		; 09 DB FF
	ora $FF.b,S		; 03 FF
	adc $D2F3.w,Y		; 79 F3 D2
	sbc $18F544.l,X		; FF 44 F5 18
	adc $58.b,X		; 75 58
	sbc $F8.b,X		; F5 F8
	sta $98.b,X		; 95 98
	and $60.b,X		; 35 60
	pea $67D8.w		; F4 D8 67
	inc $9FFC.w,X		; FE FC 9F
	jsr ($DB03.w,X)		; FC 03 DB
	lda $FD.b,S		; A3 FD
	ora $7D.b		; 05 7D
	ldx #$84.b		; A2 84
	txs		; 9A
	xba		; EB
	cmp ($3A.b)		; D2 3A
	cmp ($C7.b,X)		; C1 C7
	lda ($F7.b)		; B2 F7
	sbc $E1FF84.l,X		; FF 84 FF E1
	sbc $EFBD7E.l		; EF 7E BD EF
	rol A		; 2A
	adc $5D.b,X		; 75 5D
	ldx #$0A.b		; A2 0A
	sbc $0F.b,X		; F5 0F
	tsb $E9.b		; 04 E9
	trb $D18F.w		; 1C 8F D1
	cpx #$C2.b		; E0 C2
	ora ($3E.b,X)		; 01 3E
	ora ($CC.b,X)		; 01 CC
	cmp [$C5.b]		; C7 C5
	sbc $7FFFFF.l,X		; FF FF FF 7F
	cpx #$0F.b		; E0 0F
	bvc -81.b		; 50 AF
	bne -49.b		; D0 CF
	brk $DF.b		; 00 DF
	cpy #$1F.b		; C0 1F
	.db $82, $5C, $44		; 82 5C 44
	sta $5D81.w,Y		; 99 81 5D
	sbc $E4FF.w,X		; FD FF E4
	sed		; F8
	ora #$EAE1.w		; 09 E1 EA
	tsa		; 3B
	sbc $0FF00C.l,X		; FF 0C F0 0F
	cpy $F033.w		; CC 33 F0
	ora $C0.b,S		; 03 C0
	ora [$C6.b]		; 07 C6
	sta $C7.b,S		; 83 C7
	lda $3F7B78.l,X		; BF 78 7B 3F
	cmp ($D1.b),Y		; D1 D1
	sbc ($FF.b)		; F2 FF
	dec $FB99.w		; CE 99 FB
	sbc $C6FFF8.l,X		; FF F8 FF C6
	sta $03EB.w,X		; 9D EB 03
	adc $947788.l,X		; 7F 88 77 94
	rts		; 60

	and $CB.b,S		; 23 CB
	tas		; 1B
	xba		; EB
	ora ($AF.b,S),Y		; 13 AF
	xba		; EB
	xba		; EB
	sta $6B.b,S		; 83 6B
	phk		; 4B
	and $4C.b,S		; 23 4C
	sbc ($1C.b)		; F2 1C
	cmp #$DCFF.w		; C9 FF DC
	inc $C8FD.w,X		; FE FD C8
	stx $2B.b		; 86 2B
	lda $7F2A4F.l,X		; BF 4F 2A 7F
	eor $C4.b,X		; 55 C4
	ldx $011A.w,Y		; BE 1A 01
	iny		; C8
	stx $D4.b		; 86 D4
	brk $98.b		; 00 98
	ora $1877FE.l,X		; 1F FE 77 18
	iny		; C8
	sta $55.b		; 85 55
	beq -81.b		; F0 AF
	bpl -16.b		; 10 F0
	rti		; 40

	brk $B6.b		; 00 B6
	sbc $A684C8.l,X		; FF C8 84 A6
	ora [$50.b]		; 07 50
	sbc $6C3F.w,X		; FD 3F 6C
	stx $C830.w		; 8E 30 C8
	asl $F8EF.w		; 0E EF F8
	asl $F660.w		; 0E 60 F6
	lda $CEAFC5.l		; AF C5 AF CE
	sta $5D.b		; 85 5D
	stx $DC.b,Y		; 96 DC
	rts		; 60

	beq   9.b		; F0 09
	ror $FB.b		; 66 FB
	sbc $0BF060.l,X		; FF 60 F0 0B
	adc $C9F280.l,X		; 7F 80 F2 C9
	eor $71.b,X		; 55 71
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	asl $68C0.w		; 0E C0 68
	ora #$FD95.w		; 09 95 FD
	cpx #$12F8.w		; E0 F8 12
	bra -10.b		; 80 F6
	inc $15F8.w,X		; FE F8 15
	and $45.b		; 25 45
	cpy #$80E1.w		; C0 E1 80
	inc $FE.b,X		; F6 FE
	lda [$DB.b],Y		; B7 DB
	inc $FE9B.w		; EE 9B FE
	eor #$58E1.w		; 49 E1 58
	cmp ($FE.b),Y		; D1 FE
	and ($C8.b,S),Y		; 33 C8
	ora $F26C.w		; 0D 6C F2
	inc $00F8.w,X		; FE F8 00
	sta $07C0FC.l,X		; 9F FC C0 07
	asl $39.b		; 06 39
	rol $F4C1.w,X		; 3E C1 F4
	rts		; 60

	clv		; B8
	ora $918D50.l		; 0F 50 8D 91
	jmp ($3FFF.w)		; 6C FF 3F
	eor #$80A4.w		; 49 A4 80
	adc ($40.b,S),Y		; 73 40
	lda $7D84.w,X		; BD 84 7D
	brk $EB.b		; 00 EB
	sta ($57.b,X)		; 81 57
	tsa		; 3B
	sbc $3A161B.l,X		; FF 1B 16 3A
	inc $CB0C.w,X		; FE 0C CB
	eor ($FE.b),Y		; 51 FE
	trb $04.b		; 14 04
	sbc #$8003.w		; E9 03 80
	sbc $FE2F.w,X		; FD 2F FE
	cop $01.b		; 02 01
	sta ($00.b,X)		; 81 00
	stx $04.b		; 86 04
	stz $7B19.w,X		; 9E 19 7B
	rts		; 60

	sty $69F2.w		; 8C F2 69
	sed		; F8
	inc $B1BC.w,X		; FE BC B1
	lsr A		; 4A
	sbc #$DA9E.w		; E9 9E DA
	txy		; 9B
	bra 110.b		; 80 6E
	cmp ($3F.b,X)		; C1 3F
	jsr ($0329.w,X)		; FC 29 03
	txy		; 9B
	ora $7B.b,S		; 03 7B
	ora $FB.b,S		; 03 FB
	inc $5BA3.w,X		; FE A3 5B
	stz $FF.b		; 64 FF
	ora ($C3.b),Y		; 11 C3
	sbc $16FF.w,Y		; F9 FF 16
	sbc $FF84FA.l,X		; FF FA 84 FF
	tsb $FE.b		; 04 FE
	sta ($3F.b),Y		; 91 3F
	beq 127.b		; F0 7F
	ply		; 7A
	cld		; D8
	inc $F8FF.w		; EE FF F8
	phx		; DA
	ldy #$3BBB.w		; A0 BB 3B
	adc [$7F.b]		; 67 7F
	lda $02AD.w		; AD AD 02
	nop		; EA
	plp		; 28
	dec $44FA.w,X		; DE FA 44
	asl A		; 0A
	cmp #$7F52.w		; C9 52 7F
	adc $FF69FF.l,X		; 7F FF 69 FF
	dec $FC.b		; C6 FC
	ldy $D2C0.w,X		; BC C0 D2
	mvn $6D,$99		; 54 99 6D
	adc $BABB.w		; 6D BB BA
	ldy $63A2.w		; AC A2 63
	sta $02.b,X		; 95 02
	sed		; F8
	ora #$DE92.w		; 09 92 DE
	bvc  32.b		; 50 20
	sed		; F8
	ora #$FD1A.w		; 09 1A FD
	jsr $13F8.w		; 20 F8 13
	inc $FEFD.w,X		; FE FD FE
	jsr ($F000.w,X)		; FC 00 F0
	ora $C2.b,S		; 03 C2
	ora $310E.w		; 0D 0E 31
	jsr $0FF8.w		; 20 F8 0F
	ora $BF.b,S		; 03 BF
	ora [$FF.b]		; 07 FF
	eor [$EF.b],Y		; 57 EF
	phk		; 4B
	lda $FC7F87.l,X		; BF 87 7F FC
	inc $F628.w,X		; FE 28 F6
	inc $E3FE.w,X		; FE FE E3
	brk $83.b		; 00 83
	inc $82FD.w,X		; FE FD 82
	eor ($A5.b,X)		; 41 A5
	ora ($83.b,X)		; 01 83
	inc $A147.w,X		; FE 47 A1
	inc $38FD.w,X		; FE FD 38
	sbc ($FA.b,X)		; E1 FA
	and ($FC.b,X)		; 21 FC
	cmp $3B.b,S		; C3 3B
	bit $FCC0.w		; 2C C0 FC
	jmp $AFFB6D.l		; 5C 6D FB AF
	brk $D7.b		; 00 D7
	sbc $45443A.l,X		; FF 3A 44 45
	cli		; 58
	asl A		; 0A
	lda $E1B6.w,X		; BD B6 E1
	bra 127.b		; 80 7F
	cpx #$301F.w		; E0 1F 30
	sta $FF5656.l		; 8F 56 56 FF
	sta [$15.b]		; 87 15
	inc A		; 1A
	adc ($90.b,X)		; 61 90
	ror $DB01.w,X		; 7E 01 DB
	bit $09.b		; 24 09
	ora #$8080.w		; 09 80 80
	jsr $F85A.w		; 20 5A F8
	lda #$D9E5.w		; A9 E5 D9
	ldx $FC.b		; A6 FC
	inc $E0.b,X		; F6 E0
	sbc ($20.b,X)		; E1 20
	cmp $B620.w,X		; DD 20 B6
	brk $FF.b		; 00 FF
	sbc [$D9.b],Y		; F7 D9
	brk $AE.b		; 00 AE
	brk $ED.b		; 00 ED
	bpl  74.b		; 10 4A
	lsr A		; 4A
	sta ($93.b),Y		; 91 93
	and [$3C.b]		; 27 3C
	stx $F8.b		; 86 F8
	ora #$FFB5.w		; 09 B5 FF
	inc $6C88.w,X		; FE 88 6C
	cmp $AFE1.w,Y		; D9 E1 AF
	iny		; C8
	lda $C2BFC0.l,X		; BF C0 BF C2
	jsr ($918B.w,X)		; FC 8B 91
	inc $C09E.w,X		; FE 9E C0
	cpy #$BFEA.w		; C0 EA BF
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	tax		; AA
	pea $E1FE.w		; F4 FE E1
	cpx #$ED.b		; E0 ED
	sta $C99894.l		; 8F 94 98 C9
	sbc $837C.w,Y		; F9 7C 83
	jmp ($FB88.w,X)		; 7C 88 FB
	phb		; 8B
	jsr ($FFFE.w,X)		; FC FE FF
	sta [$C0.b]		; 87 C0
	inx		; E8
	ora #$AF.b		; 09 AF
	rts		; 60

	sbc [$EA.b],Y		; F7 EA
	ora $F8.b,X		; 15 F8
	cpy #$E8.b		; C0 E8
	phd		; 0B
	lda $EFE7.w,Y		; B9 E7 EF
	sbc $18D7.w,X		; FD D7 18
	adc $E07A43.l,X		; 7F 43 7A E0
	sbc $A3D554.l,X		; FF 54 D5 A3
	and $A0AC.w,X		; 3D AC A0
	beq  14.b		; F0 0E
	cpy #$E8.b		; C0 E8
	bpl -54.b		; 10 CA
	cpx $F8FE.w		; EC FE F8
	ora #$A0.b		; 09 A0
	beq  15.b		; F0 0F
	ldy $F0.b		; A4 F0
	ora #$DF.b		; 09 DF
	sbc $A5D702.l,X		; FF 02 D7 A5
	lda [$30.b]		; A7 30
	bne  16.b		; D0 10
	bcs   9.b		; B0 09
	plp		; 28
	sbc $EFFF58.l,X		; FF 58 FF EF
	ora $FF0786.l,X		; 1F 86 07 FF
	sbc $B40E89.l,X		; FF 89 0E B4
	and $52EC.w,Y		; 39 EC 52
	sty $D4.b,X		; 94 D4
	php		; 08
	dey		; 88
	eor $A24D.w		; 4D 4D A2
	ldx #$F8.b		; A2 F8
	ora ($FF.b,X)		; 01 FF
	sbc $C007F0.l,X		; FF F0 07 C0
	ora $2B3F80.l		; 0F 80 3F 2B
	adc $B2FF77.l,X		; 7F 77 FF B2
	sbc $42FF5D.l,X		; FF 5D FF 42
	and #$FF.b		; 29 FF
	cmp $75842B.l,X		; DF 2B 84 75
	dey		; 88
	cmp $39.b,S		; C3 39
	jsr $A622.w		; 20 22 A6
	lda $1A05.w		; AD 05 1A
	cpy $FB.b		; C4 FB
	rts		; 60

	inc $FFFA.w,X		; FE FA FF
	cmp $F104.w,X		; DD 04 F1
	ldx $F2.b,Y		; B6 F2
	ldx $A7.b		; A6 A7
	sta ($9E.b),Y		; 91 9E
	cpx $FB.b		; E4 FB
	asl $E9.b,X		; 16 E9
	eor #$F6.b		; 49 F6
	and ($0F.b)		; 32 0F
	sbc $65CD.w,X		; FD CD 65
	xce		; FB
	lda $B5.b,X		; B5 B5
	ldy $4260.w		; AC 60 42
	beq  10.b		; F0 0A
	lsr A		; 4A
	sbc $FFD56A.l,X		; FF 6A D5 FF
	bvs  21.b		; 70 15
	nop		; EA
	jmp ($B193.w)		; 6C 93 B1
	eor $44FD22.l		; 4F 22 FD 44
	sbc ($BD.b)		; F2 BD
	eor $FB5D.w,X		; 5D 5D FB
	and $22.b		; 25 22
	beq  13.b		; F0 0D
	ldx #$60.b		; A2 60
	cpx #$09.b		; E0 09
	iny		; C8
	sta [$DF.b],Y		; 97 DF
	cpx #$A0.b		; E0 A0
	tsb $CE.b		; 04 CE
	inc $5550.w,X		; FE 50 55
	ldx #$19.b		; A2 19
	cmp ($C0.b,S),Y		; D3 C0
	beq  12.b		; F0 0C
	adc ($E0.b),Y		; 71 E0
	ora #$C0.b		; 09 C0
	beq  21.b		; F0 15
	cpx #$F8.b		; E0 F8
	ora #$C0.b		; 09 C0
	inc $57.b,X		; F6 57
	adc $09F8C0.l,X		; 7F C0 F8 09
	sbc $F9.b,X		; F5 F9
	cpy #$F8.b		; C0 F8
	ora $C415.w		; 0D 15 C4
	.db $42, $E6		; 42 E6
	eor $78.b,X		; 55 78
	sbc $F8.b,X		; F5 F8
	ora [$1A.b],Y		; 17 1A
	bvc -43.b		; 50 D5
	xba		; EB
	cpy #$D0.b		; C0 D0
	phd		; 0B
	ldx #$CA.b		; A2 CA
	ldx #$F0.b		; A2 F0
	asl $E820.w		; 0E 20 E8
	asl $D138.w		; 0E 38 D1
	bit $EA.b		; 24 EA
	sbc $F901FB.l,X		; FF FB 01 F9
	ora $E6.b,S		; 03 E6
	asl $CD.b		; 06 CD
	ora $1B05.w,X		; 1D 05 1B
	txa		; 8A
	lda $A1.b,X		; B5 A1
	jsr ($03FC.w,X)		; FC FC 03
	sbc $FFFF.w,Y		; F9 FF FF
	ora [$E2.b]		; 07 E2
	ora $403FE0.l,X		; 1F E0 3F 40
	sbc $62B189.l,X		; FF 89 B1 62
	ror $9393.w		; 6E 93 93
	lsr $DD4E.w		; 4E 4E DD
	sbc $BBDD7F.l,X		; FF 7F DD BB
	tyx		; BB
	lsr A		; 4A
	lda $7FA2.w,X		; BD A2 7F
	ror $9D07.w,X		; 7E 07 9D
	cmp $6C.b,S		; C3 6C
	sbc $22FFB1.l,X		; FF B1 FF 22
	sbc #$FF.b		; E9 FF
.ACCU 16
	rep #$E1		; C2 E1
	cmp $55.b,X		; D5 55
	eor $E9.b,X		; 55 E9
	sbc #$B7B6.w		; E9 B6 B7
	sbc $56EF.w		; ED EF 56
	eor $DFBF.w,X		; 5D BF DF
	pla		; 68
	adc [$6A.b],Y		; 77 6A
	sbc $AABCBC.l,X		; FF BC BC AA
	.db $62, $E1, $48		; 62 E1 48
	sbc $A0FF10.l,X		; FF 10 FF A0
	ldy $62.b,X		; B4 62
	sbc $43FFFF.l,X		; FF FF FF 43
	sbc $A5E59A.l,X		; FF 9A E5 A5
	phx		; DA
	dey		; 88
	adc [$32.b],Y		; 77 32
	cmp $FB0D.w,X		; DD 0D FB
	lda #$52D7.w		; A9 D7 52
	xce		; FB
	sbc $DBDBAF.l,X		; FF AF DB DB
	cpy #$F0.b		; C0 F0
	ora $FF24.w		; 0D 24 FF
	adc $65.b		; 65 65
	sta ($91.b),Y		; 91 91
	stx $858E.w		; 8E 8E 85
	sta $69.b		; 85 69
	ora $1A6FFE.l,X		; 1F FE 6F 1A
	tsa		; 3B
	sbc [$F7.b],Y		; F7 F7
	dec $FFD0.w,X		; DE D0 FF
	ror $71FF.w		; 6E FF 71
	sbc $FFF57A.l,X		; FF 7A F5 FF
	sbc $A14E90.l,X		; FF 90 4E A1
	adc #$AEEA.w		; 69 EA AE
	ldx $5752.w		; AE 52 57
	adc $7F.b,X		; 75 7F
	rol A		; 2A
	sbc $7EDFDE.l,X		; FF DE DF 7E
	inc $B0FD.w		; EE FD B0
	sta $FFD3.w,Y		; 99 D3 FF
	eor ($FF.b),Y		; 51 FF
	tay		; A8
	ldx $20.b		; A6 20
	ldx $26FD.w,Y		; BE FD 26
	sbc $4DFFAD.l,X		; FF AD FF 4D
	xce		; FB
	bit $D9FF.w		; 2C FF D9
	sbc $7BFFA6.l,X		; FF A6 FF 7B
	bcc -15.b		; 90 F1
	adc [$D6.b]		; 67 D6
	cmp [$EF.b]		; C7 EF
	sbc $FF7550.l,X		; FF 50 75 FF
	sta $FF.b,X		; 95 FF
	phk		; 4B
	ror A		; 6A
	lda ($6B.b),Y		; B1 6B
	sbc $5BBFB9.l,X		; FF B9 BF 5B
	tda		; 7B
	sbc $42F4FF.l		; EF FF F4 42
	cpx $E6F4.w		; EC F4 E6
	inc $8426.w,X		; FE 26 84
	plx		; FA
	phd		; 0B
	bcc  -2.b		; 90 FE
	inc $2D7F.w,X		; FE 7F 2D
	stx $FE.b,Y		; 96 FE
	cmp $E1.b		; C5 E1
	dey		; 88
	bra  33.b		; 80 21
	and ($E2.b,X)		; 21 E2
	jsr ($F2E4.w,X)		; FC E4 F2
	asl $E1A0.w,X		; 1E A0 E1
	jsr ($70F7.w,X)		; FC F7 70
	eor ($FE.b)		; 52 FE
	lda $F5.b		; A5 F5
	txa		; 8A
	dex		; CA
	cmp $D5.b,X		; D5 D5
	and ($DB.b,X)		; 21 DB
	adc #$AAAA.w		; 69 AA AA
	sbc ($A1.b,X)		; E1 A1
	bit $E82C.w		; 2C 2C E8
	asl A		; 0A
	sbc $70FF35.l,X		; FF 35 FF 70
	inc $F0F4.w,X		; FE F4 F0
	asl $B1.b		; 06 B1
	bvs -33.b		; 70 DF
	cmp $FC9F9F.l,X		; DF 9F 9F FC
	rol $26.b		; 26 26
	eor $55FF.w,Y		; 59 FF 55
	eor $8484.w,Y		; 59 84 84
	jsr $9820.w		; 20 20 98
	clc		; 18
	ora $555FE0.l,X		; 1F E0 5F 55
	eor $FE70.w,Y		; 59 70 FE
	eor $97FEA1.l		; 4F A1 FE 97
	sbc $469494.l,X		; FF 94 94 46
	asl $A4.b		; 06 A4
	jsr $1010.w		; 20 10 10
	bne  97.b		; D0 61
	and ($CA.b,X)		; 21 CA
	inc $F970.w,X		; FE 70 F9
	sep #$40		; E2 40
	cmp ($F0.b,S),Y		; D3 F0
	and $6EC4FF.l		; 2F FF C4 6E
	ror W34SEL.w		; 6E 24 21
	ora $2F2E07.l		; 0F 07 2E 2F
	cpx #$FC.b		; E0 FC
	cpy $7D.b		; C4 7D
	cpy $91.b		; C4 91
	sty $F8.b		; 84 F8
	sbc $EA1EF1.l,X		; FF F1 1E EA
	sbc $ED5F5E.l,X		; FF 5E 5F ED
	ora [$90.b]		; 07 90
	jsr ($CEDA.w,X)		; FC DA CE
	ldy #$38.b		; A0 38
	sbc $DFDE.w,X		; FD DE DF
	cmp $CCDF.w,Y		; D9 DF CC
	jsr ($6B5F.w,X)		; FC 5F 6B
	brk $FF.b		; 00 FF
	dec $D821.w,X		; DE 21 D8
	and [$EA.b]		; 27 EA
	lda ($00.b,X)		; A1 00
	sed		; F8
	asl $F7.b,X		; 16 F7
	cmp [$99.b],Y		; D7 99
	brk $F8.b		; 00 F8
	phd		; 0B
	php		; 08
	sbc #$00F7.w		; E9 F7 00
	sbc $DA90.w,X		; FD 90 DA
	xce		; FB
	inc $F6.b,X		; F6 F6
	cmp $C4FD.w,X		; DD FD C4
	beq   9.b		; F0 09
	tsb $FF.b		; 04 FF
	inc $092F.w,X		; FE 2F 09
	jmp $FE50D1.l		; 5C D1 50 FE
	lda $BAFD.w		; AD FD BA
	plx		; FA
	and $F5.b,X		; 35 F5
	sbc ($C1.b,X)		; E1 C1
	brk $FE.b		; 00 FE
	ldy $BF.b,X		; B4 BF
	cpx $FC05.w		; EC 05 FC
	sbc ($3E.b),Y		; F1 3E
	brk $FD.b		; 00 FD
	cmp $B2D9.w,Y		; D9 D9 B2
	lda ($D3.b)		; B2 D3
	cmp ($F6.b,S),Y		; D3 F6
	eor $09F800.l,X		; 5F 00 F8 09
	bvs -15.b		; 70 F1
	sbc $09F070.l,X		; FF 70 F0 09
	sbc [$FF.b]		; E7 FF
	ror A		; 6A
	ror A		; 6A
	ldy $B4.b,X		; B4 B4
	lda #$00A9.w		; A9 A9 00
	sed		; F8
	ora #$FFFD.w		; 09 FD FF
	bvs  -2.b		; 70 FE
	brk $FE.b		; 00 FE
	sbc $56FD.w,X		; FD FD 56
	eor $91BDBD.l,X		; 5F BD BD 91
	brk $28.b		; 00 28
	brk $9E.b		; 00 9E
	brk $07.b		; 00 07
	inx		; E8
	tsa		; 3B
	brk $FB.b		; 00 FB
	brk $A2.b		; 00 A2
	rol $42.b		; 26 42
	brk $E0.b		; 00 E0
	asl A		; 0A
	lda [$FF.b],Y		; B7 FF
	and $DDDDBF.l,X		; 3F BF DD DD
	sbc $004DEF.l		; EF EF 4D 00
	txa		; 8A
	brk $36.b		; 00 36
	brk $76.b		; 00 76
	brk $4A.b		; 00 4A
	brk $D4.b		; 00 D4
	sta [$48.b]		; 87 48
	jsl $FFE9A2.l		; 22 A2 E9 FF
	sed		; F8
	ora #$DEDA.w		; 09 DA DE
	plb		; AB
	xba		; EB
	rol A		; 2A
	sbc $00420B.l,X		; FF 0B 42 00
	pld		; 2B
	ora $48.b,S		; 03 48
	php		; 08
	cmp $55.b,X		; D5 55
	dex		; CA
	dex		; CA
	and ($AA.b,X)		; 21 AA
	cmp #$FFF6.w		; C9 F6 FF
	rol A		; 2A
	lsr $F7C2.w,X		; 5E C2 F7
	bvs -95.b		; 70 A1
	and $FF.b,X		; 35 FF
	lda #$E7A8.w		; A9 A8 E7
	dec $90.b		; C6 90
	brk $B6.b		; 00 B6
	ldx $FF.b,Y		; B6 FF
	sbc $CD.b,S		; E3 CD
	cmp $A0A0.w		; CD A0 A0
	and ($31.b),Y		; 31 31
	ora ($12.b)		; 12 12
	eor [$FF.b],Y		; 57 FF
	and $49E2.w,Y		; 39 E2 49
	and [$1C.b],Y		; 37 1C
	sbc $5FFF32.l,X		; FF 32 FF 5F
	clc		; 18
	cmp ($ED.b,X)		; C1 ED
	and ($00.b)		; 32 00
	lda #$FE09.w		; A9 09 FE
	sta $C2.b,S		; 83 C2
	ror $D76E.w		; 6E 6E D7
	cmp [$61.b],Y		; D7 61
	adc ($C4.b,X)		; 61 C4
	cpy $04.b		; C4 04
	phd		; 0B
	bvs  11.b		; 70 0B
	tay		; A8
	cmp ($FF.b),Y		; D1 FF
	sta ($FF.b),Y		; 91 FF
	plp		; 28
	sty $C9.b		; 84 C9
	tsa		; 3B
	jmp ($0FC9.w,X)		; 7C C9 0F
	and $0022AA.l,X		; 3F AA 22 00
	bpl   0.b		; 10 00
	trb $7575.w		; 1C 75 75
	cmp #$89C9.w		; C9 C9 89
	bit #$C100.w		; 89 00 C1
	bit $AA.b,X		; 34 AA
	sbc $C78A1C.l,X		; FF 1C 8A C7
	ora [$FF.b]		; 07 FF
	rol $FF.b,X		; 36 FF
	ror $34.b,X		; 76 34
	and $04.b		; 25 04
	mvn $2A,$40		; 54 40 2A
	clc		; 18
	asl $D33E.w,X		; 1E 3E D3
	cmp ($96.b,S),Y		; D3 96
	lsr $54.b,X		; 56 54
	cmp $C0.b		; C5 C0
	sty $A1.b		; 84 A1
	dec $B271.w		; CE 71 B2
	rol $FF2C.w,X		; 3E 2C FF
	stx $AB.b,Y		; 96 AB
	ora $B99EFF.l		; 0F FF 9E B9
	eor $2708.w,Y		; 59 08 27
	asl $80.b		; 06 80
	lda #$B2A0.w		; A9 A0 B2
	bra  95.b		; 80 5F
	brk $CE.b		; 00 CE
	ora $00.b,S		; 03 00
	brk $ED.b		; 00 ED
	brk $C0.b		; 00 C0
	asl $FF.b		; 06 FF
	sed		; F8
	rts		; 60

	sty $BD.b		; 84 BD
	asl $3D3D.w		; 0E 3D 3D
	lsr $5F.b,X		; 56 5F
	bra   0.b		; 80 00
	sed		; F8
	ora #$15C2.w		; 09 C2 15
	ldy $F900.w		; AC 00 F9
	sbc $000BF8.l,X		; FF F8 0B 00
	plx		; FA
	bra   0.b		; 80 00
	inc $004B.w,X		; FE 4B 00
	xce		; FB
	cop $DC.b		; 02 DC
	sbc $000BF8.l,X		; FF F8 0B 00
	plx		; FA
	bra -66.b		; 80 BE
	bit $5700.w		; 2C 00 57
	txa		; 8A
	lda $E1F5.w,Y		; B9 F5 E1
	and $00.b,X		; 35 00
	brk $FA.b		; 00 FA
	sbc $A60BF8.l,X		; FF F8 0B A6
	ldx $DED8.w		; AE D8 DE
	bra  73.b		; 80 49
	brk $E1.b		; 00 E1
	ora [$32.b]		; 07 32
	brk $80.b		; 00 80
	cmp $EA01.w		; CD 01 EA
	cop $51.b		; 02 51
	sbc $787DDE.l,X		; FF DE 7D 78
	mvp $3C,$1F		; 44 1F 3C
	sbc ($FA.b),Y		; F1 FA
	sed		; F8
	eor #$C249.w		; 49 49 C2
	ldx $572E.w		; AE 2E 57
	eor [$8F.b],Y		; 57 8F
	cmp $00.b,X		; D5 00
	jsr ($FF07.w,X)		; FC 07 FF
	ldx $E6.b,Y		; B6 E6
	cmp ($9A.b),Y		; D1 9A
	sbc ($00.b,X)		; E1 00
	jsr ($F820.w,X)		; FC 20 F8
	ora #$AAAB.w		; 09 AB AA
	tay		; A8
	tay		; A8
	eor $A0.b,X		; 55 A0
	sbc ($20.b),Y		; F1 20
	sed		; F8
	phd		; 0B
	ldy #$F2.b		; A0 F2
	jsr $A0FC.w		; 20 FC A0
	beq   9.b		; F0 09
	jsr $FFFC.w		; 20 FC FF
	adc $09F0A0.l,X		; 7F A0 F0 09
	trb $80.b		; 14 80
	adc $AE80.w,X		; 7D 80 AE
	brk $DC.b		; 00 DC
	jsr $8064.w		; 20 64 80
	phy		; 5A
	txa		; 8A
	ora $F201.w,X		; 1D 01 F2
	xce		; FB
	sbc $0A7840.l,X		; FF 40 78 0A
	sbc $3E.b,X		; F5 3E
	stp		; DB
	tsx		; BA
	asl A		; 0A
	ror $36.b,X		; 76 36
	and #$C129.w		; 29 29 C1
	cmp ($C8.b,X)		; C1 C8
	bra   1.b		; 80 01
	sbc [$FA.b],Y		; F7 FA
	brk $48.b		; 00 48
	brk $C4.b		; 00 C4
	bcs  57.b		; B0 39
	cmp #$D6FF.w		; C9 FF D6
	ldx #$E9.b		; A2 E9
	cpx #$F6.b		; E0 F6
	ora ($11.b),Y		; 11 11
	lsr A		; 4A
	sbc ($87.b,X)		; E1 87
	lsr A		; 4A
	trb $BB.b		; 14 BB
	bra   9.b		; 80 09
	ora ($24.b,X)		; 01 24
	bit $80.b		; 24 80
	jsl $00908D.l		; 22 8D 90 00
	inc $C928.w		; EE 28 C9
	xba		; EB
	sep #$C4		; E2 C4
	stp		; DB
	adc $68E0F8.l,X		; 7F F8 E0 68
	pla		; 68
	ldx #$A2.b		; A2 A2
	mvp $88,$44		; 44 44 88
	brk $00.b		; 00 00
	sta $04.b		; 85 04
	adc $406014.l		; 6F 14 60 40
	inc A		; 1A
	ora ($97.b)		; 12 97
	tsb $BBD1.w		; 0C D1 BB
	dey		; 88
	cpy #$BA.b		; C0 BA
	cpx #$F0.b		; E0 F0
	lsr $F8.b,X		; 56 F8
	xba		; EB
	rtl		; 6B

	.db $82, $0C, $51		; 82 0C 51
	jsr $8700.w		; 20 00 87
	adc $84.b,S		; 63 84
	brk $DA.b		; 00 DA
	asl A		; 0A
	bra -15.b		; 80 F1
	cop $94.b		; 02 94
	tsb $01AE.w		; 0C AE 01
	inc $F880.w,X		; FE 80 F8
	asl A		; 0A
	ldx #$44.b		; A2 44
	plp		; 28
	plp		; 28
	dec $C0.b		; C6 C0
	cmp [$88.b],Y		; D7 88
	ora $013EA0.l,X		; 1F A0 3E 01
	lda [$48.b],Y		; B7 48
	tsa		; 3B
	cpy $A2.b		; C4 A2
	mvp $B6,$D7		; 44 D7 B6
	lda [$48.b],Y		; B7 48
	sbc ($80.b),Y		; F1 80
	inc $AC2E.w,X		; FE 2E AC
	sbc ($EB.b),Y		; F1 EB
	pla		; 68
	eor ($F6.b,X)		; 41 F6
	php		; 08
	stp		; DB
	stz $DEB1.w		; 9C B1 DE
	ror $C3FF.w,X		; 7E FF C3
	beq   9.b		; F0 09
	sbc $0097FD.l,X		; FF FD 97 00
	eor $BB00.w,X		; 5D 00 BB
	plp		; 28
	sbc ($FF.b),Y		; F1 FF
	brk $7A.b		; 00 7A
	sta ($9F.b,X)		; 81 9F
	jsr $FFEA.w		; 20 EA FF
	sbc $85.b		; E5 85
	nop		; EA
	sbc $000CF8.l,X		; FF F8 0C 00
	jsr ($20DF.w,X)		; FC DF 20
	tda		; 7B
	sty $25.b		; 84 25
	bne -30.b		; D0 E2
	trb $B60D.w		; 1C 0D B6
	adc [$F2.b]		; 67 F2
	cpx #$F8.b		; E0 F8
	ora $F164B5.l		; 0F B5 64 F1
	dec $32.b,X		; D6 32
	ora #$4837.w		; 09 37 48
	inc $0780.w,X		; FE 80 07
	plx		; FA
	cpx #$F8.b		; E0 F8
	ora $DE00EE.l		; 0F EE 00 DE
	bra  -9.b		; 80 F7
	ora #$00D8.w		; 09 D8 00
	cmp [$6F.b],Y		; D7 6F
	bvs -128.b		; 70 80
	cmp ($20.b,X)		; C1 20
	mvp $09,$F0		; 44 F0 09
	sbc $0898FC.l,X		; FF FC 98 08
	.db $42, $02		; 42 02
	cpy $00.b		; C4 00
	sed		; F8
	asl A		; 0A
	sbc [$74.b],Y		; F7 74
	eor $20.b,X		; 55 20
	brk $F8.b		; 00 F8
	ora $00F2.w,Y		; 19 F2 00
	brk $F8.b		; 00 F8
	ora ($80.b,S),Y		; 13 80
	beq  11.b		; F0 0B
	brk $FA.b		; 00 FA
	bra -16.b		; 80 F0
	phd		; 0B
	adc $F0A0FF.l,X		; 7F FF A0 F0
	ora #$0584.w		; 09 84 05
	adc ($40.b,X)		; 61 40
	ora $A010.w,Y		; 19 10 A0
	beq  13.b		; F0 0D
	sbc $183DFF.l		; EF FF 3D 18
	asl $79.b		; 06 79
	sbc $BF00D7.l,X		; FF D7 00 BF
	adc $0692.w		; 6D 92 06
	sbc $6E91.w,Y		; F9 91 6E
	lda $6452.w		; AD 52 64
	txy		; 9B
	asl $DADE.w		; 0E DE DA
	adc $205EFF.l		; 6F FF 5E 20
	eor ($AD.b)		; 52 AD
	and #$12D6.w		; 29 D6 12
	sbc $BA45.w		; ED 45 BA
	plx		; FA
	cmp #$59CD.w		; C9 CD 59
	ldx $05.b		; A6 05
	stz $FE1F.w		; 9C 1F FE
	sbc $8A09F8.l,X		; FF F8 09 8A
	brk $AA.b		; 00 AA
	mvn $8A,$E4		; 54 E4 8A
	adc $55.b,X		; 75 55
	tax		; AA
	stx $F771.w		; 8E 71 F7
	sbc $2D2DD2.l,X		; FF D2 2D 2D
	cmp ($00.b)		; D2 00
	sed		; F8
	ora $9920A2.l		; 0F A2 20 99
	stz $2A.b		; 64 2A
	sta ($9D.b),Y		; 91 9D
	.db $62, $41, $B6		; 62 41 B6
	cmp $D42BFF.l,X		; DF FF 2B D4
	txs		; 9A
	rts		; 60

	sta $F8C040.l,X		; 9F 40 C0 F8
	ora $091532.l		; 0F 32 15 09
	bvs  31.b		; 70 1F
	ldy #$12.b		; A0 12
	bra 127.b		; 80 7F
	cmp $00F9.w,X		; DD F9 00
	ror $5200.w		; 6E 00 52
	brk $9B.b		; 00 9B
	brk $AC.b		; 00 AC
	bne   9.b		; D0 09
	brk $6D.b		; 00 6D
	txa		; 8A
	lda $F1A0.w		; AD A0 F1
	sbc $00ED3E.l,X		; FF 3E ED 00
	tsx		; BA
	brk $77.b		; 00 77
	brk $CD.b		; 00 CD
	brk $A6.b		; 00 A6
	cpy #$60.b		; C0 60
	bpl 117.b		; 10 75
	txa		; 8A
	eor $01.b,X		; 55 01
	pea $E4A3.w		; F4 A3 E4
	adc $C4.b,X		; 75 C4
	sbc ($71.b,X)		; E1 71
	brk $2D.b		; 00 2D
	brk $D2.b		; 00 D2
	cpx #$7F.b		; E0 7F
	sei		; 78
	and $5D0D10.l,X		; 3F 10 0D 5D
	.db $82, $66, $02		; 82 66 02
	cmp $44.b,X		; D5 44
	.db $62, $1D, $08		; 62 1D 08
	cmp [$00.b],Y		; D7 00
	ror A		; 6A
	eor $FF.b,X		; 55 FF
	ldy $4EE1.w,X		; BC E1 4E
	cmp $F900.w,Y		; D9 00 F9
	jmp ($E071.w)		; 6C 71 E0
	sbc $25C2.w,X		; FD C2 25
	sbc $FF80.w,Y		; F9 80 FF
	rti		; 40

	eor $FF.b,X		; 55 FF
	sta ($00.b)		; 92 00
	bra  -2.b		; 80 FE
	jsl $956F82.l		; 22 82 6F 95
	bra  -3.b		; 80 FD
	ldy $D501.w		; AC 01 D5
	cop $EA.b		; 02 EA
	ora $7F.b		; 05 7F
	sbc [$B5.b],Y		; F7 B5
	asl A		; 0A
	pha		; 48
	and [$B2.b],Y		; 37 B2
	eor $A659.w		; 4D 59 A6
	bra  -8.b		; 80 F8
	ora $00804A.l		; 0F 4A 80 00
	sed		; F8
	and $40.b		; 25 40
	lda [$DF.b],Y		; B7 DF
	sbc $95D728.l,X		; FF 28 D7 95
	ror A		; 6A
	ldy #$5F.b		; A0 5F
	brk $F8.b		; 00 F8
	ora $9E22A5.l		; 0F A5 22 9E
	.db $62, $2D, $94		; 62 2D 94
	sta ($60.b)		; 92 60
	adc $A85FD0.l,X		; 7F D0 5F A8
	ora [$C0.b],Y		; 17 C0
	tax		; AA
	rti		; 40

	cmp $D8E000.l,X		; DF 00 E0 D8
	adc #$F860.w		; 69 60 F8
	asl A		; 0A
	sbc $6798EE.l,X		; FF EE 98 67
	ora $FC.b,S		; 03 FC
	bvc  -1.b		; 50 FF
	inx		; E8
	eor $D9C824.l,X		; 5F 24 C8 D9
	eor $3A.b,X		; 55 3A
	ora ($F8.b,X)		; 01 F8
	bpl  -1.b		; 10 FF
	sbc $D9267F.l,X		; FF 7F 26 D9
	tas		; 1B
	cpx $24.b		; E4 24
	stp		; DB
	php		; 08
	sbc [$C2.b],Y		; F7 C2
	adc $FF40.w,X		; 7D 40 FF
	adc $DC.b,S		; 63 DC
	xba		; EB
	ldy $FF.b,X		; B4 FF
	sbc $0FF8E0.l,X		; FF E0 F8 0F
	lsr $A9.b,X		; 56 A9
	jsr $03DE.w		; 20 DE 03
	sed		; F8
	eor $57A0.w		; 4D A0 57
	bra 111.b		; 80 6F
	bra -71.b		; 80 B9
	mvp $FF,$FA		; 44 FA FF
	dec $EF80.w,X		; DE 80 EF
	sbc $0137FE.l,X		; FF FE 37 01
	bit #$6900.w		; 89 00 69
	brk $F7.b		; 00 F7
	brk $4D.b		; 00 4D
	bmi -18.b		; 30 EE
	sbc $7710FB.l		; EF FB 10 77
	php		; 08
	tyx		; BB
	mvp $08,$01		; 44 01 08
	asl $67FF.w		; 0E FF 67
	brk $FC.b		; 00 FC
	cpx #$61.b		; E0 61
	ora [$48.b],Y		; 17 48
	stp		; DB
	lda $DD241F.l		; AF 1F 24 DD
	jsl $8090AA.l		; 22 AA 90 80
	bvc  13.b		; 50 0D
	stz $D9EA.w		; 9C EA D9
	brk $E4.b		; 00 E4
	brk $DB.b		; 00 DB
	xce		; FB
	dec $3DC0.w,X		; DE C0 3D
	tsx		; BA
	and #$409F.w		; 29 9F 40
	tas		; 1B
	ldy $A0.b		; A4 A0
	sed		; F8
	ora $DE00A9.l		; 0F A9 00 DE
	nop		; EA
	cmp ($F7.b),Y		; D1 F7
	sbc $00AD.w,X		; FD AD 00
	cmp [$00.b],Y		; D7 00
	bra  -8.b		; 80 F8
	and ($76.b,X)		; 21 76
	ora #$47B8.w		; 09 B8 47
	bra  -8.b		; 80 F8
	ora $FB0166.l		; 0F 66 01 FB
	tsb $5F.b		; 04 5F
	lda $5FA0.w,X		; BD A0 5F
	php		; 08
	eor $003FE4.l,X		; 5F E4 3F 00
	plx		; FA
	bcs 100.b		; B0 64
	brk $F8.b		; 00 F8
	ora [$60.b],Y		; 17 60
	cmp $7FFEE4.l,X		; DF E4 FE 7F
	eor $F0.b		; 45 F0
	phd		; 0B
	brk $FD.b		; 00 FD
	and ($DE.b,X)		; 21 DE
	tsb $FB.b		; 04 FB
	eor ($AD.b)		; 52 AD
	plp		; 28
	cmp [$90.b],Y		; D7 90
	sbc $21FD46.l		; EF 46 FD 21
	sbc $F8A1F0.l,X		; FF F0 A1 F8
	ora $36C8FF.l		; 0F FF C8 36
	ror $89.b,X		; 76 89
	stx $69.b,Y		; 96 69
	cpy #$B2.b		; C0 B2
	adc $D711.w,X		; 7D 11 D7
	sbc $7F88FE.l,X		; FF FE 88 7F
	mvp $F0,$A0		; 44 A0 F0
	bpl -64.b		; 10 C0
	sbc ($05.b)		; F2 05
	plx		; FA
	eor ($AC.b),Y		; 51 AC
	and $E09FD0.l		; 2F D0 9F E0
	xba		; EB
	cmp $49.b,S		; C3 49
	pea $663E.w		; F4 3E 66
	pha		; 48
	asl A		; 0A
	sbc $DFFCFC.l,X		; FF FC FC DF
	adc ($97.b,X)		; 61 97
	lsr A		; 4A
	stp		; DB
	lda [$DF.b],Y		; B7 DF
	and $B9FF08.l		; 2F 08 FF B9
	txa		; 8A
	cmp #$C04E.w		; C9 4E C0
	sed		; F8
	bpl -51.b		; 10 CD
	adc ($7B.b)		; 72 7B
	inc $B013.w		; EE 13 B0
	cmp ($D6.b,X)		; C1 D6
	cmp $D1688D.l,X		; DF 8D 68 D1
	stx $8C.b,Y		; 96 8C
	cmp #$D8E0.w		; C9 E0 D8
	bpl  17.b		; 10 11
	dec A		; 3A
	sbc $67.b,X		; F5 67
	cmp $B9D4B5.l,X		; DF B5 D4 B9
	inc $FE.b,X		; F6 FE
	ply		; 7A
	dey		; 88
	sbc #$E07E.w		; E9 7E E0
	sed		; F8
	bpl -70.b		; 10 BA
	eor $24.b		; 45 24
	bit $D1.b,X		; 34 D1
	asl $FF.b,X		; 16 FF
	tax		; AA
	adc $87A06C.l,X		; 7F 6C A0 87
	sbc [$62.b],Y		; F7 62
	inc $EA.b		; E6 EA
	rti		; 40

	tya		; 98
	asl $9FDC.w		; 0E DC 9F
	sbc [$06.b],Y		; F7 06
	cpx #$DE.b		; E0 DE
	pld		; 2B
	sec		; 38
	bra  -8.b		; 80 F8
	asl $2D.b,X		; 16 2D
	eor ($80.b)		; 52 80
	sed		; F8
	and #$FFBC.w		; 29 BC FF
	adc $F0E0.w,Y		; 79 E0 F0
	bpl  -1.b		; 10 FF
	lda $2346BD.l,X		; BF BD 46 23
	jsr ($E8B7.w,X)		; FC B7 E8
	and #$D5D6.w		; 29 D6 D5
	rol A		; 2A
	sta ($64.b,S),Y		; 93 64
	tyx		; BB
	mvp $FF,$04		; 44 04 FF
	adc $10F87F.l,X		; 7F 7F F8 10
	jsr ($60DF.w,X)		; FC DF 60
	sta [$BF.b],Y		; 97 BF
	rti		; 40

	pei ($2B.b)		; D4 2B
	and [$C8.b],Y		; 37 C8
	lsr $B9.b		; 46 B9
	ror $B191.w		; 6E 91 B1
	sbc $F87FFF.l,X		; FF FF 7F F8
	bpl -46.b		; 10 D2
	adc $EC6A84.l,X		; 7F 84 6A EC
	ora ($26.b,S),Y		; 13 26
	cmp $8D72.w,Y		; D9 72 8D
	eor #$69B6.w		; 49 B6 69
	stx $FE.b,Y		; 96 FE
	sbc $F87FC9.l,X		; FF C9 7F F8
	bpl  17.b		; 10 11
	sbc $9830C5.l,X		; FF C5 30 98
	eor [$4A.b]		; 47 4A
	lda $07.b,X		; B5 07
	sed		; F8
	sta $7A.b		; 85 7A
	rti		; 40

	sbc $BFAF.w,X		; FD AF BF
	sta ($FF.b,X)		; 81 FF
	beq  16.b		; F0 10
	eor $FF.b		; 45 FF
	stp		; DB
	bit $57.b		; 24 57
	tay		; A8
	sbc #$5516.w		; E9 16 55
	bra  -8.b		; 80 F8
	asl $FF.b,X		; 16 FF
	adc $A0.b,X		; 75 A0
	jsr ($D927.w,X)		; FC 27 D9
	adc ($8F.b),Y		; 71 8F
	lsr $6EB7.w		; 4E B7 6E
	sta [$C6.b],Y		; 97 C6
	dec $FF69.w		; CE 69 FF
	sed		; F8
	ora $D12E.w		; 0D 2E D1
	lda $F0A02D.l,X		; BF 2D A0 F0
	ora $FFA4.w,X		; 1D A4 FF
	and #$75FF.w		; 29 FF 75
	sec		; 38
	lda #$F156.w		; A9 56 F1
	adc #$E29A.w		; 69 9A E2
	sed		; F8
	bpl -36.b		; 10 DC
	lsr $FF.b		; 46 FF
	ora $B3FF.w,Y		; 19 FF B3
	sty $B1.b,X		; 94 B1
	phx		; DA
	lda $91.b,X		; B5 91
	sbc $BE.b,X		; F5 BE
	stp		; DB
	lsr $FF.b,X		; 56 FF
	sed		; F8
	ora ($5B.b),Y		; 11 5B
	clv		; B8
	cmp ($89.b,X)		; C1 89
	sty $C7B9.w		; 8C B9 C7
	plp		; 28
	cmp #$EEEE.w		; C9 EE EE
	tay		; A8
	asl A		; 0A
	rti		; 40

	sbc [$AF.b],Y		; F7 AF
	stx $36.b		; 86 36
	sbc ($CB.b,X)		; E1 CB
	sbc $F1A45A.l,X		; FF 5A A4 F1
	eor [$6A.b]		; 47 6A
	ldy #$F8.b		; A0 F8
	ora $BC86.w,Y		; 19 86 BC
	xce		; FB
	sbc $FA75FD.l,X		; FF FD 75 FA
	lda ($E8.b,X)		; A1 E8
	bpl  -1.b		; 10 FF
	mvn $48,$FB		; 54 FB 48
	sbc [$F6.b],Y		; F7 F6
	bit #$F609.w		; 89 09 F6
	sec		; 38
	cmp [$EF.b]		; C7 EF
	sbc $11B54A.l,X		; FF 4A B5 11
	inc $9F10.w		; EE 10 9F
	sed		; F8
	bpl  69.b		; 10 45
	tsx		; BA
	php		; 08
	sbc [$34.b],Y		; F7 34
	wai		; CB
	lda $5A.b		; A5 5A
	eor $83.b,S		; 43 83
	sbc $FE01BC.l,X		; FF BC 01 FE
	inc $E0.b,X		; F6 E0
	cld		; D8
	ora ($5B.b),Y		; 11 5B
	ldy $D6.b		; A4 D6
	and #$758A.w		; 29 8A 75
	stp		; DB
	lda $A924FF.l,X		; BF FF 24 A9
	lsr $B0.b,X		; 56 B0
	eor $E09A65.l		; 4F 65 9A E0
	sed		; F8
	ora ($E6.b),Y		; 11 E6
	ora $B34C.w,Y		; 19 4C B3
	lda $BF2540.l,X		; BF 40 25 BF
	eor $8778DA.l,X		; 5F DA 78 87
	asl A		; 0A
	sbc $85.b,X		; F5 85
	ply		; 7A
	cpx #$F8.b		; E0 F8
	ora ($A4.b),Y		; 11 A4
	tad		; 5B
	tay		; A8
	eor [$76.b],Y		; 57 76
	bra  -8.b		; 80 F8
	inc A		; 1A
	eor $F8A0FF.l,X		; 5F FF A0 F8
	ora #$4FB1.w		; 09 B1 4F
	stz $9B.b		; 64 9B
	cmp #$FF23.w		; C9 23 FF
	sed		; F8
	tsb $1FF9.w		; 0C F9 1F
	adc ($BF.b,S),Y		; 73 BF
	bra 127.b		; 80 7F
	plx		; FA
	sbc $F0C05A.l,X		; FF 5A C0 F0
	clc		; 18
	clc		; 18
	eor ($FB.b,X)		; 41 FB
	brk $04.b		; 00 04
	tsb $F804.w		; 0C 04 F8
	asl $38.b		; 06 38
	rol $04.b,X		; 36 04
	dex		; CA
	eor ($EE.b,X)		; 41 EE
	rep #$CA		; C2 CA
	sbc $FFB13D.l		; EF 3D B1 FF
	cmp $EF731E.l		; CF 1E 73 EF
	and $6F3090.l		; 2F 90 30 6F
	bmi -17.b		; 30 EF
	bcs  36.b		; B0 24
	eor ($F8.b)		; 52 F8
	inc $6D25.w,X		; FE 25 6D
	bit $5F52.w		; 2C 52 5F
	bit $55.b		; 24 55
	inc $AC13.w,X		; FE 13 AC
	ora [$19.b]		; 07 19
	jsr ($1910.w,X)		; FC 10 19
	ora $50.b,S		; 03 50
	ora ($FE.b)		; 12 FE
	tay		; A8
	ror $5224.w		; 6E 24 52
	sbc $FE42C4.l,X		; FF C4 42 FE
	sbc [$FE.b],Y		; F7 FE
	sta ($7E.b,X)		; 81 7E
	rti		; 40

	ldx $1EA1.w,Y		; BE A1 1E
	cop $1D.b		; 02 1D
	ora ($0C.b),Y		; 11 0C
	bne  11.b		; D0 0B
	ora ($C3.b,X)		; 01 C3
	eor [$18.b]		; 47 18
	cmp $E3.b,S		; C3 E3
	sbc $F3.b,S		; E3 F3
	sbc $F40B84.l,X		; FF 84 0B F4
	inc $CB1B.w,X		; FE 1B CB
	tsb $FA.b		; 04 FA
	bra 120.b		; 80 78
	eor $31.b		; 45 31
	pld		; 2B
	ora ($7F.b,X)		; 01 7F
	cmp #$0C99.w		; C9 99 0C
	lda $8FFF2A.l,X		; BF 2A FF 8F
	sta $EFCFCF.l		; 8F CF CF EF
	asl $FD.b,X		; 16 FD
	cmp $7F62.w,Y		; D9 62 7F
	and ($88.b),Y		; 31 88
	eor ($AD.b),Y		; 51 AD
	sbc $FE99B8.l,X		; FF B8 99 FE
	cpx $DB4A.w		; EC 4A DB
	cpx #$0B.b		; E0 0B
	sta [$F0.b]		; 87 F0
	sta ($F1.b,X)		; 81 F1
	bra  -9.b		; 80 F7
	adc $805BF0.l,X		; 7F F0 5B 80
	ror $E01D.w,X		; 7E 1D E0
	adc $98.b,S		; 63 98
	tya		; 98
	sei		; 78
	iny		; C8
	eor ($FE.b),Y		; 51 FE
	clc		; 18
	sbc ($05.b)		; F2 05
	sed		; F8
	and $5AF552.l,X		; 3F 52 F5 5A
	eor #$179A.w		; 49 9A 17
	pea $40CF.w		; F4 CF 40
	sbc $81DFBF.l,X		; FF BF DF 81
	cmp [$07.b],Y		; D7 07
	ora $D0CF00.l		; 0F 00 CF D0
	adc $1CEF90.l		; 6F 90 EF 1C
	cpx $FB.b		; E4 FB
	cpy #$1F.b		; C0 1F
	inc $E916.w,X		; FE 16 E9
	ora [$F8.b]		; 07 F8
	asl $DEFF.w		; 0E FF DE
	ora $98FF20.l,X		; 1F 20 FF 98
	inc $FD4E.w,X		; FE 4E FD
	sbc $B77CFF.l,X		; FF FF 7C B7
	lda [$7B.b],Y		; B7 7B
	sei		; 78
	tyx		; BB
	clv		; B8
	cmp $20DC.w,X		; DD DC 20
	cmp $4E6798.l,X		; DF 98 67 4E
	lda ($73.b),Y		; B1 73
	sbc $B78F1F.l,X		; FF 1F 8F B7
	pha		; 48
	sei		; 78
	sta [$B8.b]		; 87 B8
	eor [$DC.b]		; 47 DC
	and $07.b,S		; 23 07
	adc $043F84.l,X		; 7F 84 3F 04
	inc $FED7.w,X		; FE D7 FE
	ldy $1C06.w,X		; BC 06 1C
	cmp $CC.b		; C5 CC
	sbc [$2C.b]		; E7 2C
	sbc [$1C.b],Y		; F7 1C
	adc $19F3EA.l,X		; 7F EA F3 19
	stp		; DB
	sta [$7F.b]		; 87 7F
	and $1FDF3F.l,X		; 3F 3F DF 1F
	phy		; 5A
	sbc $FD07.w,X		; FD 07 FD
	tsb $FC.b		; 04 FC
	sed		; F8
	sed		; F8
	cop $BB.b		; 02 BB
	inc $8CA3.w,X		; FE A3 8C
	rol $1C4A.w,X		; 3E 4A 1C
	sbc $198707.l,X		; FF 07 87 19
	and ($F3.b,S),Y		; 33 F3
	bne  47.b		; D0 2F
	cpy #$3F.b		; C0 3F
	jsr $885F.w		; 20 5F 88
	eor $A21E01.l,X		; 5F 01 1E A2
	tsb $5054.w		; 0C 54 50
	adc $30EC.w,Y		; 79 EC 30
	eor $FF.b,S		; 43 FF
	sbc $6CF1F1.l,X		; FF F1 F1 6C
	sbc [$73.b],Y		; F7 73
	sbc $EA00.w		; ED 00 EA
	php		; 08
	asl $C2.b,X		; 16 C2
	pei ($FF.b)		; D4 FF
	stp		; DB
	bne -50.b		; D0 CE
	phx		; DA
	cpy #$C2.b		; C0 C2
	cld		; D8
	cmp ($C4.b)		; D2 C4
	stx $E8.b		; 86 E8
	ora $2BB162.l,X		; 1F 62 B1 2B
	stz $D8A9.w		; 9C A9 D8
	lsr A		; 4A
	and $FE.b		; 25 FE
	and $E162.w,Y		; 39 62 E1
	adc $8441AE.l		; 6F AE 41 84
	inc $A5.b,X		; F6 A5
	eor $84DFF4.l,X		; 5F F4 DF 84
	beq  10.b		; F0 0A
	pea $03FC.w		; F4 FC 03
	inc $02FD.w,X		; FE FD 02
	sbc $0B83.w,X		; FD 83 0B
	cmp $7F.b,X		; D5 7F
	adc ($8B.b),Y		; 71 8B
	ora ($1A.b,S),Y		; 13 1A
	sty $F6.b		; 84 F6
	sei		; 78
	sbc ($82.b)		; F2 82
	ora $0B85.w		; 0D 85 0B
	ora [$9F.b]		; 07 9F
	ora $FC.b,S		; 03 FC
	bne  86.b		; D0 56
	jmp $C9DF.w		; 4C DF C9
	sbc $FB31.w		; ED 31 FB
	rol $0CE0.w,X		; 3E E0 0C
	cpy #$40.b		; C0 40
	and ($ED.b,X)		; 21 ED
	pha		; 48
	ora #$5AFD.w		; 09 FD 5A
	.db $82, $E8, $11		; 82 E8 11
	cpx #$89.b		; E0 89
	cmp $46E7D9.l,X		; DF D9 E7 46
	lda $D208.w,Y		; B9 08 D2
	cpx #$F8.b		; E0 F8
	ora $60.b,X		; 15 60
	dec $E131.w,X		; DE 31 E1
	sbc $8B8196.l		; EF 96 81 8B
	jsr ($E00F.w,X)		; FC 0F E0
	ora $E7E7C1.l,X		; 1F C1 E7 E7
	lda ($FD.b,X)		; A1 FD
	jsr ($FFFF.w,X)		; FC FF FF
	jsr ($E0F3.w,X)		; FC F3 E0
	sbc $27FEC1.l,X		; FF C1 FE 27
	cld		; D8
	ora $FB1BF7.l		; 0F F7 1B FB
	and [$E7.b],Y		; 37 E7
	sbc [$C7.b],Y		; F7 C7
	sbc $4FEFFF.l,X		; FF FF EF 4F
	inc $F56E.w		; EE 6E F5
	cpy $FB.b		; C4 FB
	cop $FF.b		; 02 FF
	sed		; F8
	xce		; FB
	cpx $E7.b		; E4 E7
	cld		; D8
	cmp [$38.b]		; C7 38
	ora $B04FFE.l,X		; 1F FE 4F B0
	ror $C491.w		; 6E 91 C4
	tsa		; 3B
	cpy #$CD.b		; C0 CD
	ora $88EB.w		; 0D EB 88
	lda [$83.b],Y		; B7 83
	and $BBBFFC.l,X		; 3F FC BF BB
	adc $41FF47.l,X		; 7F 47 FF 41
	lda $2D7E20.l,X		; BF 20 7E 2D
	sbc ($98.b)		; F2 98
	adc [$FF.b],Y		; 77 FF
	sbc $BB7C8B.l,X		; FF 8B 7C BB
	mvp $B9,$47		; 44 47 B9
	eor ($BE.b,X)		; 41 BE
	bvs -49.b		; 70 CF
	asl $E5E1.w,X		; 1E E1 E5
	dec $0DE6.w		; CE E6 0D
	cmp [$5D.b],Y		; D7 5D
	ldy $07.b,X		; B4 07
	iny		; C8
	cmp $2E9286.l		; CF 86 92 2E
	.db $82, $CF, $3F		; 82 CF 3F
	sta $42.b		; 85 42
	cmp $F3C137.l		; CF 37 C1 F3
	ora [$F5.b]		; 07 F5
	asl $5551.w		; 0E 51 55
	tax		; AA
	pld		; 2B
	eor $49.b,X		; 55 49
	bmi  89.b		; 30 59
	rts		; 60

	sed		; F8
	ora $1E.b,X		; 15 1E
	bra -89.b		; 80 A7
	sbc $DE405E.l,X		; FF 5E 40 DE
	cpy #$FE.b		; C0 FE
	cmp $C7DCC0.l,X		; DF C0 DC C7
	dec $C3.b		; C6 C3
	adc ($00.b,X)		; 61 00
	cmp ($1F.b)		; D2 1F
	lda ($FA.b,X)		; A1 FA
	lda ($FE.b,X)		; A1 FE
	jsr $3801.w		; 20 01 38
	ora [$3C.b]		; 07 3C
	ora $53.b,S		; 03 53
	sbc $D5C9FB.l		; EF FB C9 D5
	rol A		; 2A
	rti		; 40

	jmp ($45AB.w,X)		; 7C AB 45
	inc $FCB6.w,X		; FE B6 FC
	cpy #$58.b		; C0 58
	ora $B40056.l		; 0F 56 00 B4
	and $4048D4.l,X		; 3F D4 48 40
	bcs  14.b		; B0 0E
	ora ($4A.b,X)		; 01 4A
	ora $52.b,X		; 15 52
	ora ($B2.b)		; 12 B2
	cmp ($E0.b,X)		; C1 E0
	sed		; F8
	ora $407FFF.l		; 0F FF 7F 40
	bra  32.b		; 80 20
	cpy #$80.b		; C0 80
	rts		; 60

	cmp ($22.b),Y		; D1 22
	beq   7.b		; F0 07
	and ($DC.b,X)		; 21 DC
	ora ($FC.b,X)		; 01 FC
	tay		; A8
	cop $FF.b		; 02 FF
	xce		; FB
	beq 123.b		; F0 7B
	ora $7C.b,S		; 03 7C
	sta $39.b,S		; 83 39
	cpy #$03.b		; C0 03
	cpx #$03.b		; E0 03
	beq   9.b		; F0 09
	adc #$002F.w		; 69 2F 00
	ora $FD.b,S		; 03 FD
	and $E30A05.l,X		; 3F 05 0A E3
	lda #$803F.w		; A9 3F 80
	eor $7A8440.l,X		; 5F 40 84 7A
	sta $10.b		; 85 10
	cpy #$0C.b		; C0 0C
	beq  92.b		; F0 5C
	lda $CA.b,X		; B5 CA
	ror $F880.w,X		; 7E 80 F8
	pha		; 48
	cmp ($9B.b,X)		; C1 9B
	sta $0BF8FE.l		; 8F FE F8 0B
	sbc $DF0EF8.l,X		; FF F8 0E DF
	bne -41.b		; D0 D7
	ora [$62.b],Y		; 17 62
	ora $635306.l		; 0F 06 53 63
	brk $FD.b		; 00 FD
	brk $DE.b		; 00 DE
	lda ($39.b),Y		; B1 39
	and #$D6E9.w		; 29 E9 D6
	inc $F9.b,X		; F6 F9
	adc $C9.b,X		; 75 C9
	xce		; FB
	trb $15EA.w		; 1C EA 15
	and ($F0.b),Y		; 31 F0
	ora $1499.w		; 0D 99 14
	and [$D9.b],Y		; 37 D9
	sbc ($F3.b),Y		; F1 F3
	sbc $EDD2FF.l,X		; FF FF D2 ED
	tsb $E718.w		; 0C 18 E7
	beq  15.b		; F0 0F
	cpx #$5F.b		; E0 5F
	pea $F9EB.w		; F4 EB F9
	inc $F1.b		; E6 F1
	asl $FFD2.w		; 0E D2 FF
	sbc $F30C2D.l,X		; FF 2D 0C F3
	cmp $32B700.l		; CF 00 B7 32
	tda		; 7B
	adc $7A7B.w,Y		; 79 7B 7A
	lda $DDBC.w,X		; BD BC DD
	sta $FFEB.w,X		; 9D EB FF
	beq 107.b		; F0 6B
	sbc [$10.b],Y		; F7 10
	ora ($FF.b,X)		; 01 FF
	and ($CD.b)		; 32 CD
	tda		; 7B
	stx $78.b		; 86 78
	ldy $9D43.w,X		; BC 43 9D
	xba		; EB
	lda $946B62.l,X		; BF 62 6B 94
	bcs -39.b		; B0 D9
	sbc ($7A.b,S),Y		; F3 7A
	cpy #$EF.b		; C0 EF
	jsr $00F7.w		; 20 F7 00
	xba		; EB
	jsr $1EF3.w		; 20 F3 1E
	inc $F1FA.w		; EE FA F1
	plb		; AB
	tyx		; BB
	and $8DDF2F.l,X		; 3F 2F DF 8D
	and $DF.b,S		; 23 DF
	adc ($3E.b,S),Y		; 73 3E
	sta $EF91.w,Y		; 99 91 EF
	sbc $9F7AEF.l,X		; FF EF 7A 9F
	inc $6E.b		; E6 6E
	rts		; 60

	and ($D7.b)		; 32 D7
	jsr $53AF.w		; 20 AF 53
	eor $0025.w,X		; 5D 25 00
	ora $FC1200.l,X		; 1F 00 12 FC
	adc $FE5CE0.l,X		; 7F E0 5C FE
	adc $6D.b		; 65 6D
	sed		; F8
	phx		; DA
	cpx #$AC.b		; E0 AC
	lda [$16.b],Y		; B7 16
	cpy #$D2.b		; C0 D2
	bra -17.b		; 80 EF
	cpx #$5A.b		; E0 5A
	tyx		; BB
	cpy #$5C.b		; C0 5C
	cpx #$58.b		; E0 58
	ora #$C052.w		; 09 52 C0
	sbc ($FA.b),Y		; F1 FA
	adc $80DAED.l		; 6F ED DA 80
	sta ($FE.b),Y		; 91 FE
	brk $37.b		; 00 37
	adc [$DD.b],Y		; 77 DD
	cmp $6B6B.w,X		; DD 6B 6B
	cpx #$F8.b		; E0 F8
	ora #$FF88.w		; 09 88 FF
	sbc $94B1AE.l,X		; FF AE B1 94
	sbc $371F20.l,X		; FF 20 1F 37
	php		; 08
	ora ($ED.b,S),Y		; 13 ED
	cop $FE.b		; 02 FE
	.db $82, $7F, $F2		; 82 7F F2
	ora $822F0D.l		; 0F 0D 2F 82
	adc $E998.w,X		; 7D 98 E9
	cpy #$FE.b		; C0 FE
	sbc ($03.b,S),Y		; F3 03
	sta $03.b,S		; 83 03
	ora $27FC5B.l,X		; 1F 5B FC 27
	inc $7100.w,X		; FE 00 71
	inc $89AE.w,X		; FE AE 89
	ora $09F6.w,Y		; 19 F6 09
	inc $FFFE.w,X		; FE FE FF
	and $D4.b		; 25 D4
	phx		; DA
	sbc $D8FF70.l,X		; FF 70 FF D8
	ora $0918.w,Y		; 19 18 09
	php		; 08
	tad		; 5B
	bit #$BDFE.w		; 89 FE BD
	ldy #$C2.b		; A0 C2
	beq  15.b		; F0 0F
	cpy #$F0.b		; C0 F0
	bpl  -5.b		; 10 FB
	brk $FA.b		; 00 FA
	ldy $A9.b		; A4 A9
	rol $C1.b		; 26 C1
	sbc #$EA85.w		; E9 85 EA
	rtl		; 6B

	ply		; 7A
	cop $EC.b		; 02 EC
	phx		; DA
	inc $F4F3.w,X		; FE F3 F4
	dex		; CA
	cmp $6551.w,Y		; D9 51 65
	and ($1E.b),Y		; 31 1E
	sbc $DE5EFF.l,X		; FF FF 5E DE
	lda $BB3C.w,X		; BD 3C BB
	dec A		; 3A
	cmp [$D1.b],Y		; D7 D1
	sbc $24DF80.l		; EF 80 DF 24
	sbc $E11E77.l,X		; FF 77 1E E1
	adc $A1DE38.l,X		; 7F 38 DE A1
	bit $BAC3.w,X		; 3C C3 BA
	cmp $D1.b		; C5 D1
	rol $2474.w		; 2E 74 24
	xce		; FB
	tda		; 7B
	jmp $045BF0.l		; 5C F0 5B 04
	inc $7FC3.w,X		; FE C3 7F
	sbc ($96.b,X)		; E1 96
	lda $CF24D2.l,X		; BF D2 24 CF
	sbc $04CEFF.l,X		; FF FF CE 04
	xce		; FB
	cmp $3D.b,S		; C3 3D
	and ($CF.b)		; 32 CF
	phd		; 0B
	sbc [$87.b],Y		; F7 87
	sei		; 78
	sbc $0A.b,X		; F5 0A
	bit $DB.b		; 24 DB
	dec $0FFE.w		; CE FE 0F
	and ($CE.b),Y		; 31 CE
	lda #$AF80.w		; A9 80 AF
	jsr $00CF.w		; 20 CF 00
	adc $003F00.l		; 6F 00 3F 00
	lda $BEFDFD.l,X		; BF FD FD BE
	rti		; 40

	dec $69.b		; C6 69
	adc $CFDF2F.l,X		; 7F 2F DF CF
	sbc $DADA6F.l,X		; FF 6F DA DA
	adc $B6BF5F.l,X		; 7F 5F BF B6
	sbc $95467F.l,X		; FF 7F 46 95
	adc $6E.b,X		; 75 6E
	inc $8181.w		; EE 81 81
	bit $24.b		; 24 24
	dec $29.b,X		; D6 29
	and $52D2.w		; 2D D2 52
	lda $DB09.w		; AD 09 DB
	sbc $118104.l,X		; FF 04 81 11
	sed		; F8
	cmp ($DB.b,X)		; C1 DB
	plx		; FA
	sbc $D2.b,X		; F5 D2
	cmp ($49.b)		; D2 49
	eor #$2626.w		; 49 26 26
	eor ($51.b),Y		; 51 51
	sbc $1212B6.l,X		; FF B6 12 12
	bcc 111.b		; 90 6F
	bit $99D3.w		; 2C D3 99
	ror $2D.b		; 66 2D
	cld		; D8
	lda $9ED9.w,Y		; B9 D9 9E
	sta $FFED.w,Y		; 99 ED FF
	sbc $DCFDE0.l,X		; FF E0 FD DC
	jmp.w [$6969]		; DC 69 69
	sta ($92.b)		; 92 92
	and ($21.b,X)		; 21 21
	sty $94.b,X		; 94 94
	mvp $A3,$BB		; 44 BB A3
	eor $6D56.w,X		; 5D 56 6D
	sbc $BA23AA.l,X		; FF AA 23 BA
	lda $246D.w,Y		; B9 6D 24
	adc $986B.w,Y		; 79 6B 98
	adc $C0.b,X		; 75 C0
	and $C53DC2.l,X		; 3F C2 3D C5
	dec A		; 3A
	sta [$D5.b]		; 87 D5
	dex		; CA
	and $ED.b,X		; 35 ED
	ora ($C0.b,S),Y		; 13 C0
	ldy #$5F.b		; A0 5F
	tyx		; BB
	dec A		; 3A
	inc $18FD.w,X		; FE FD 18
	and $7FFF.w,X		; 3D FF 7F
	lsr A		; 4A
	lda $B2.b,X		; B5 B2
	adc $FD62.w,X		; 7D 62 FD
	cpy $FB.b		; C4 FB
	asl $3AF1.w		; 0E F1 3A
	cmp $E2.b		; C5 E2
	ora $39C6.w,X		; 1D C6 39
	lda $51CC16.l,X		; BF 16 CC 51
	bmi  -2.b		; 30 FE
	rts		; 60

	jsr ($B8C0.w,X)		; FC C0 B8
	lsr $A4.b,X		; 56 A4
	sbc #$E804.w		; E9 04 E8
	sbc ($85.b)		; F2 85
	ror A		; 6A
	inc $F28C.w,X		; FE 8C F2
	beq  -8.b		; F0 F8
	ldx $E9.b		; A6 E9
	inx		; E8
	sbc ($9A.b),Y		; F1 9A
	sbc #$6DFC.w		; E9 FC 6D
	sbc $C72263.l,X		; FF 63 22 C7
	cmp ($C9.b,X)		; C1 C9
	ora $6E71.w,Y		; 19 71 6E
	eor ($F1.b),Y		; 51 F1
	asl $70FF.w		; 0E FF 70
	adc $FFFC80.l,X		; 7F 80 FC FF
	sbc $36C943.l,X		; FF 43 C9 36
	phd		; 0B
	pea $916E.w		; F4 6E 91
	inc $F077.w,X		; FE 77 F0
	sbc $00FD80.l,X		; FF 80 FD 00
	tda		; 7B
	lda [$E1.b],Y		; B7 E1
	sbc $FF7B35.l,X		; FF 35 7B FF
	sei		; 78
	lda $DD3C.w,X		; BD 3C DD
	ora $68EB.w,X		; 1D EB 68
	sbc [$06.b],Y		; F7 06
	inc $FFFF.w,X		; FE FF FF
	ora ($37.b,X)		; 01 37
	dex		; CA
	tda		; 7B
	sty $78.b		; 84 78
	sta [$3C.b]		; 87 3C
	cmp $5D.b,S		; C3 5D
	sep #$0B		; E2 0B
	sbc [$01.b],Y		; F7 01
	lda $58B700.l,X		; BF 00 B7 58
	ror $C0DF.w		; 6E DF C0
	cmp $40F25C.l,X		; DF 5C F2 40
	and $FC22.w,X		; 3D 22 FC
	brk $A8.b		; 00 A8
	and #$FFF5.w		; 29 F5 FF
	pha		; 48
	sbc ($63.b,X)		; E1 63
	ora ($B9.b)		; 12 B9
	pei ($50.b)		; D4 50
	lda $55BF4A.l		; AF 4A BF 55
	xce		; FB
	asl $CDFB.w,X		; 1E FB CD
	inc $B5.b,X		; F6 B5
	lda $C0CF32.l,X		; BF 32 CF C0
	phy		; 5A
	ldx #$E0.b		; A2 E0
	ora $604A.w		; 0D 4A 60
	cmp $EA15.w,Y		; D9 15 EA
	rts		; 60

	sta $FF6FB1.l,X		; 9F B1 6F FF
	sbc $1758C0.l,X		; FF C0 58 17
	lda $1955.w		; AD 55 19
	sbc #$BF47.w		; E9 47 BF
	asl $91FE.w		; 0E FE 91
	sbc ($E7.b),Y		; F1 E7
	sbc [$55.b]		; E7 55
	cmp $C3.b,X		; D5 C3
	bcc -95.b		; 90 A1
	lda $063D.w,X		; BD 3D 06
	ora $53.b,S		; 03 53
	clc		; 18
	beq  -1.b		; F0 FF
	txs		; 9A
	adc #$8FF6.w		; 69 F6 8F
	bvs -99.b		; 70 9D
	.db $62, $91, $6E		; 62 91 6E
	lda [$48.b],Y		; B7 48
	sbc ($1F.b,X)		; E1 1F
	inc $8377.w,X		; FE 77 83
	adc $1C7847.l,X		; 7F 47 78 1C
	ldx $32.b,Y		; B6 32
	brk $F1.b		; 00 F1
	sbc ($E9.b)		; F2 E9
	sbc ($DD.b,X)		; E1 DD
	sbc $E91616.l,X		; FF 16 16 E9
	sbc $FF.b,S		; E3 FF
	tsb $ECF3.w		; 0C F3 EC
	ora ($F8.b,S),Y		; 13 F8
	ora [$18.b]		; 07 18
	asl A		; 0A
	ora $E25931.l,X		; 1F 31 59 E2
	eor $FF.b,X		; 55 FF
	jsr ($F8FE.w,X)		; FC FE F8
	brk $E0.b		; 00 E0
	clv		; B8
	bvc   9.b		; 50 09
	tax		; AA
	xba		; EB
	tsx		; BA
	rol $D5.b		; 26 D5
	adc $9625BF.l,X		; 7F BF 25 96
	cld		; D8
	phd		; 0B
	bcs 109.b		; B0 6D
	cpx #$F8.b		; E0 F8
	ora [$6F.b],Y		; 17 6F
	bne  56.b		; D0 38
	sbc [$5A.b]		; E7 5A
	xce		; FB
	bit $FFFD.w		; 2C FD FF
	tad		; 5B
	jsr ($FCFD.w,X)		; FC FD FC
	jsr $1F2F.w		; 20 2F 1F
	ora $030105.l,X		; 1F 05 01 03
	ora ($FC.b,X)		; 01 FC
	sbc $4000.w,X		; FD 00 40
	stz $7F.b		; 64 7F
	and $40.b,S		; 23 40
	ror A		; 6A
	and $21.b		; 25 21
	php		; 08
	brk $21.b		; 00 21
	and ($B0.b,X)		; 21 B0
	pla		; 68
	ora #$C2DE.w		; 09 DE C2
	jsr ($FCFF.w,X)		; FC FF FC
	ldx $54AE.w		; AE AE 54
	eor $4B.b,X		; 55 4B
	phk		; 4B
	dec $D7.b,X		; D6 D7
	rol $07.b		; 26 07
	ora $A50F.w		; 0D 0F A5
	lda [$AD.b],Y		; B7 AD
	lda $513F33.l		; AF 33 3F 51
	ror $E1.b,X		; 76 E1
	ldy $A2.b,X		; B4 A2
	adc ($F8.b),Y		; 71 F8
	ora #$50E1.w		; 09 E1 50
	lda $EAF1.w		; AD F1 EA
	sbc ($80.b,X)		; E1 80
	pla		; 68
	phd		; 0B
	brk $62.b		; 00 62
	bra 104.b		; 80 68
	phd		; 0B
	sbc ($E2.b,X)		; E1 E2
	bvc  -2.b		; 50 FE
	plb		; AB
	bne  -2.b		; D0 FE
	pld		; 2B
	sbc $DDFF52.l,X		; FF 52 FF DD
	cmp $FEFE.w,X		; DD FE FE
	lsr $FE.b,X		; 56 FE
	bne  -4.b		; D0 FC
	sbc #$FCEA.w		; E9 EA FC
	jsl $F1DFFF.l		; 22 FF DF F1
	sbc $03.b,S		; E3 03
	sbc $5F25BF.l,X		; FF BF 25 5F
	cmp ($BF.b,S),Y		; D3 BF
	sbc $B3.b		; E5 B3
	ldy $0444.w,X		; BC 44 04
	ldy #$6C.b		; A0 6C
	sta [$EA.b]		; 87 EA
	jsr $50DF.w		; 20 DF 50
	lda $FB40FC.l		; AF FC 40 FB
	sbc #$6CA0.w		; E9 A0 6C
	jsr $6F74.w		; 20 74 6F
	adc $D46E14.l,X		; 7F 14 6E D4
	pei ($66.b)		; D4 66
	rts		; 60

	cmp $C0.b,S		; C3 C0
	phd		; 0B
	and [$20.b]		; 27 20
	stz $FA.b,X		; 74 FA
	ora [$AE.b],Y		; 17 AE
	sta $FF1AE1.l,X		; 9F E1 1A FF
	adc [$3F.b],Y		; 77 3F
	eor $6F5D.w,X		; 5D 5D 6F
	adc $0970A0.l		; 6F A0 70 09
	tax		; AA
	asl A		; 0A
	ror $84A2.w		; 6E A2 84
	eor $68A0.w,Y		; 59 A0 68
	ora ($A0.b),Y		; 11 A0
	bvs  11.b		; 70 0B
	tas		; 1B
	bra  11.b		; 80 0B
	ldy #$72.b		; A0 72
	tax		; AA
	sbc $74A0C0.l,X		; FF C0 A0 74
	jsr $A072.w		; 20 72 A0
	adc ($C0.b)		; 72 C0
	sed		; F8
	phd		; 0B
	bcs -72.b		; B0 B8
	phx		; DA
	cld		; D8
	inx		; E8
	inx		; E8
	lsr $ADFF.w		; 4E FF AD
	cop $8D.b		; 02 8D
	ora $31.b		; 05 31
	ora ($71.b,X)		; 01 71
	ora ($4C.b,X)		; 01 4C
	tsb $47.b		; 04 47
	cmp $19.b		; C5 19
	ora [$88.b],Y		; 17 88
	adc ($F0.b)		; 72 F0
	ora [$1A.b],Y		; 17 1A
	tsa		; 3B
	phy		; 5A
	pea $BD60.w		; F4 60 BD
	brk $6E.b		; 00 6E
	rti		; 40

	eor $407FE0.l,X		; 5F E0 7F 40
	sbc $FF6A.w,X		; FD 6A FF
	tda		; 7B
	tya		; 98
	phd		; 0B
	brk $86.b		; 00 86
	bra 120.b		; 80 78
	ora [$BA.b],Y		; 17 BA
	asl A		; 0A
	lsr $06.b		; 46 06
	sbc ($BF.b,X)		; E1 BF
	cmp $A409.w,Y		; D9 09 A4
	plp		; 28
	rti		; 40

	sbc ($00.b,X)		; E1 00
	tay		; A8
	rti		; 40

	bit $C0.b		; 24 C0
	sbc $E0.b,X		; F5 E0
	lda $1ED1A5.l,X		; BF A5 D1 1E
	stz $09B8.w,X		; 9E B8 09
	ror A		; 6A
	ldy #$D2.b		; A0 D2
	and $56A9.w		; 2D A9 56
	sta ($6D.b)		; 92 6D
	sbc $8080BF.l,X		; FF BF 80 80
	ora [$66.b],Y		; 17 66
	ora ($FD.b,X)		; 01 FD
	brk $AE.b		; 00 AE
	eor ($16.b),Y		; 51 16
	eor #$27D8.w		; 49 D8 27
	dec $A923.w,X		; DE 23 A9
	sta ($FE.b)		; 92 FE
	sbc $60BE00.l,X		; FF 00 BE 60
	bcc   9.b		; 90 09
	tsb $DF.b		; 04 DF
	stz $43F7.w		; 9C F7 43
	jsr ($FF28.w,X)		; FC 28 FF
	cmp $F9BEF8.l		; CF F8 BE F9
	stx $FD.b,Y		; 96 FD
	sbc $2049F9.l,X		; FF F9 49 20
	ldy #$10.b		; A0 10
	plb		; AB
	pea $F926.w		; F4 26 F9
	ply		; 7A
	sbc $2B.b,X		; F5 2B
	pea $F649.w		; F4 49 F6
	bvc -17.b		; 50 EF
	tax		; AA
	sed		; F8
	sta $80.b		; 85 80
	tay		; A8
	ora ($50.b)		; 12 50
	rti		; 40

	ora #$B3C6.w		; 09 C6 B3
	sbc ($F8.b),Y		; F1 F8
	ora $44FF.w		; 0D FF 44
	ora $2F.b,S		; 03 2F
	sbc $101F7F.l,X		; FF 7F 1F 10
	ora $CA206D.l		; 0F 6D 20 CA
	pha		; 48
	ldy $04.b		; A4 04
	cmp ($02.b)		; D2 02
	ora $0F04.w		; 0D 04 0F
	and $F7FC7F.l,X		; 3F 7F FC F7
	sbc $353012.l,X		; FF 12 30 35
	jmp ($7F7B.w,X)		; 7C 7B 7F
	and $E03F.w,X		; 3D 3F E0
	sbc ($F8.b),Y		; F1 F8
	cpy $17FF.w		; CC FF 17
	beq -84.b		; F0 AC
	brk $EE.b		; 00 EE
	tsb $52.b		; 04 52
	rti		; 40

	txy		; 9B
	txa		; 8A
	lda [$06.b],Y		; B7 06
	eor $B156.w,Y		; 59 56 B1
	inc $FF23.w,X		; FE 23 FF
	bne -48.b		; D0 D0
	bpl  20.b		; 10 14
	ldy $746C.w		; AC 6C 74
	inc $F4F8.w,X		; FE F8 F4
	bit $C239.w		; 2C 39 C2
	and ($0F.b,S),Y		; 33 0F
	cpy #$F8.b		; C0 F8
	phd		; 0B
	rep #$C0		; C2 C0
	sed		; F8
	phd		; 0B
	jsl $D6B8C0.l		; 22 C0 B8 D6
	ldx $F8C0.w,Y		; BE C0 F8
	phd		; 0B
	beq  -4.b		; F0 FC
	cpy #$F8.b		; C0 F8
	ora $B133.w		; 0D 33 B1
	ora $69.b,S		; 03 69
	sed		; F8
	ora ($FF.b)		; 12 FF
	sed		; F8
	ora #$3FFF.w		; 09 FF 3F
	bra   0.b		; 80 00
	bmi  80.b		; 30 50
	cld		; D8
	jsr $7064.w		; 20 64 70
	sbc ($04.b)		; F2 04
	adc ($0E.b)		; 72 0E
	tas		; 1B
	tsb $09.b		; 04 09
	jsr ($EFF1.w,X)		; FC F1 EF
	cpy #$00.b		; C0 00
	jsr $1800.w		; 20 00 18
	brk $0C.b		; 00 0C
	inc $0004.w,X		; FE 04 00
	nop		; EA
	sbc [$06.b],Y		; F7 06
	and ($F8.b,X)		; 21 F8
	ora $10B1B9.l		; 0F B9 B1 10
	sed		; F8
	clc		; 18
	beq  32.b		; F0 20
	plp		; 28
	rti		; 40

	mvp $F8,$EF		; 44 EF F8
	phd		; 0B
	bne   0.b		; D0 00
	bmi 126.b		; 30 7E
	clv		; B8
	ldy $0309.w,X		; BC 09 03
	inc $0C06.w,X		; FE 06 0C
	cop $04.b		; 02 04
	ora ($1C.b,X)		; 01 1C
	php		; 08
	inc $0603.w,X		; FE 03 06
	ldx $64FE.w		; AE FE 64
	cpx #$6D.b		; E0 6D
	inc $C0FC.w,X		; FE FC C0
	ror $41FE.w,X		; 7E FE 41
	cmp $80.b		; C5 80
	cpy #$FE.b		; C0 FE
	cmp $19.b		; C5 19
	adc $F8.b,S		; 63 F8
	asl $F844.w		; 0E 44 F8
	trb $1FFF.w		; 1C FF 1F
	brk $10.b		; 00 10
	sty $00.b,X		; 94 00
	.db $62, $0C, $19		; 62 0C 19
	ldy #$A4.b		; A0 A4
	sbc ($8A.b),Y		; F1 8A
	stz $D4.b		; 64 D4
	pla		; 68
	brk $1C.b		; 00 1C
	ldy #$FD.b		; A0 FD
	cmp [$F8.b]		; C7 F8
	asl A		; 0A
	sbc $40A486.l,X		; FF 86 A4 40
	rts		; 60

	cpy #$10.b		; C0 10
	rts		; 60

	tsb $8634.w		; 0C 34 86
	ldx $F8.b		; A6 F8
	ora #$4FE0.w		; 09 E0 4F
	asl A		; 0A
	cpx $00.b		; E4 00
	inc $3729.w		; EE 29 37
	sbc $FED2.w,X		; FD D2 FE
	sta ($F8.b)		; 92 F8
	ora ($37.b),Y		; 11 37
	sbc $48DF.w,X		; FD DF 48
	adc $CDC17E.l,X		; 7F 7E C1 CD
	rol $73BE.w,X		; 3E BE 73
	cmp $3035.w,X		; DD 35 30
	cpx #$5F.b		; E0 5F
	cmp ($E6.b),Y		; D1 E6
	sed		; F8
	ora #$FF0F.w		; 09 0F FF
	asl $04.b		; 06 04
	ora $982E00.l,X		; 1F 00 2E 98
	asl $80.b		; 06 80
	cop $81.b		; 02 81
	ora $C1.b,S		; 03 C1
	ora $7F.b,S		; 03 7F
	stx $C0.b,Y		; 96 C0
	cop $C1.b		; 02 C1
	cop $47.b		; 02 47
	.db $82, $06, $42		; 82 06 42
	tsx		; BA
	inc $F3.b		; E6 F3
	rep #$C0		; C2 C0
	inc $F781.w,X		; FE 81 F7
	rti		; 40

	cpy #$86.b		; C0 86
	sec		; 38
	iny		; C8
	inc $4024.w,X		; FE 24 40
	ldy #$1C.b		; A0 1C
	ora ($FE.b),Y		; 11 FE
	beq  -1.b		; F0 FF
	inc $5AFF.w,X		; FE FF 5A
	cmp $28.b,S		; C3 28
	adc ($01.b,X)		; 61 01
	and ($02.b,X)		; 21 02
	bpl   5.b		; 10 05
	tsb $1E02.w		; 0C 02 1E
	phb		; 8B
	asl $56.b		; 06 56
	sbc ($3C.b)		; F2 3C
	brk $1E.b		; 00 1E
	inc $400F.w,X		; FE 0F 40
	sed		; F8
	ora #$EFFF.w		; 09 FF EF
	sbc $8060.w,Y		; F9 60 80
	bcs -64.b		; B0 C0
	jmp ($8B40.w,X)		; 7C 40 8B
	beq  69.b		; F0 45
	clv		; B8
	bcc 109.b		; 90 6D
	rti		; 40

	sbc $FFF010.l,X		; FF 10 F0 FF
	brk $D5.b		; 00 D5
	and $627F00.l,X		; 3F 00 7F 62
	sed		; F8
	rti		; 40

	sed		; F8
	eor $FD.b		; 45 FD
	rol A		; 2A
	adc $F0.b,S		; 63 F0
	adc $7B5E99.l		; 6F 99 5E 7B
	tsa		; 3B
	lda ($BF.b)		; B2 BF
	trb $181F.w		; 1C 1F 18
	ora [$F7.b]		; 07 F7
	sbc ($1C.b),Y		; F1 1C
	sed		; F8
	sbc $0441C9.l,X		; FF C9 41 04
	bra  12.b		; 80 0C
	cpy #$22.b		; C0 22
	cpy #$05.b		; C0 05
	eor $4E.b,S		; 43 4E
	bra -115.b		; 80 8D
	sbc $140201.l,X		; FF 01 02 14
	ora $65.b,S		; 03 65
	cop $98.b		; 02 98
	ora $55.b,S		; 03 55
	asl A		; 0A
	plb		; AB
	xba		; EB
	brk $A0.b		; 00 A0
	cmp $DF.b		; C5 DF
	inc $9F9F.w,X		; FE 9F 9F
	inc $8B15.w		; EE 15 8B
	sbc ($E0.b,X)		; E1 E0
	tax		; AA
	bra -96.b		; 80 A0
	lsr $2011.w		; 4E 11 20
	bra  64.b		; 80 40
	sta $F1.b,S		; 83 F1
	sta ($F5.b,X)		; 81 F5
	iny		; C8
	sbc $5DF5FB.l,X		; FF FB F5 5D
	sbc $946B.w,X		; FD 6B 94
	cmp $6B02.w,X		; DD 02 6B
	tsb $4C.b		; 04 4C
	ora $AF.b,S		; 03 AF
	php		; 08
	pld		; 2B
	brk $25.b		; 00 25
	brk $15.b		; 00 15
	cpx $75E9.w		; EC E9 75
	ora ($88.b)		; 12 88
	ora $17FEFE.l,X		; 1F FE FE 17
	brk $1B.b		; 00 1B
	brk $0B.b		; 00 0B
	eor $369F.w,Y		; 59 9F 36
	and $BF9E.w,X		; 3D 9E BF
	jmp $AEFFFF.l		; 5C FF FF AE
	jmp $7ECC3B.l		; 5C 3B CC 7E
	bit #$499C.w		; 89 9C 49
	ldx $3E49.w,Y		; BE 49 3E
	inc $3E.b,X		; F6 3E
	inc $DE1E.w,X		; FE 1E DE
	adc #$1CF8.w		; 69 F8 1C
	cmp $08FE.w,X		; DD FE 08
	xba		; EB
	inc $224D.w,X		; FE 4D 22
	ldx $40.b,Y		; B6 40
	sbc $E016AB.l,X		; FF AB 16 E0
	dec A		; 3A
	cpy #$08.b		; C0 08
	beq  84.b		; F0 54
	ldy #$95.b		; A0 95
	rts		; 60

	adc $D156.w		; 6D 56 D1
	inc $0AF8.w,X		; FE F8 0A
	ldy #$0A.b		; A0 0A
	ora $F293C9.l,X		; 1F C9 93 F2
	beq  11.b		; F0 0B
	ora $FFF4.w		; 0D F4 FF
	sed		; F8
	phd		; 0B
	dec $EE.b,X		; D6 EE
	rol A		; 2A
	jsr ($212C.w,X)		; FC 2C 21
	sbc ($A7.b,S),Y		; F3 A7
	inc $51.b,X		; F6 51
	sbc $FF.b,X		; F5 FF
	dec $29.b,X		; D6 29
	pei ($2B.b)		; D4 2B
	jsr ($09FD.w,X)		; FC FD 09
	cop $BE.b		; 02 BE
	tsx		; BA
	adc ($E2.b),Y		; 71 E2
	brk $12.b		; 00 12
	tsb $10E8.w		; 0C E8 10
	sty $FFEC.w		; 8C EC FF
	inc $B9AF.w,X		; FE AF B9
	xce		; FB
	lda [$C9.b],Y		; B7 C9
	sbc $B97F01.l,X		; FF 01 7F B9
	brk $6B.b		; 00 6B
	bpl -33.b		; 10 DF
	jsr $22BF.w		; 20 BF 22
	jsr ($D800.w,X)		; FC 00 D8
	brk $2C.b		; 00 2C
	cpy #$CB.b		; C0 CB
	brk $69.b		; 00 69
	lda #$3EC6.w		; A9 C6 3E
	jmp $3CDCAD.l		; 5C AD DC 3C
	cpx #$EC.b		; E0 EC
	phb		; 8B
	inc $FF80.w,X		; FE 80 FF
	sbc $3E18F8.l,X		; FF F8 18 3E
	cmp $C155F3.l		; CF F3 55 C1
	sbc $301CF8.l,X		; FF F8 1C 30
	sta $EF59.w,X		; 9D 59 EF
	sed		; F8
	asl $FC4F.w		; 0E 4F FC
	dec A		; 3A
	inc $FFFE.w,X		; FE FE FF
	sed		; F8
	ora $F5FFFF.l		; 0F FF FF F5
	asl $CF.b,X		; 16 CF
	jsl $DC2FFE.l		; 22 FE 2F DC
	and [$EA.b],Y		; 37 EA
	and $D937C1.l,X		; 3F C1 37 D9
	ora ($BF.b),Y		; 11 BF
	tda		; 7B
	asl $0800.w		; 0E 00 08
	mvp $1C,$F1		; 44 F1 1C
	tsb $FFFA.w		; 0C FA FF
	and $55.b		; 25 55
	jsr ($7E2E.w,X)		; FC 2E 7E
	sbc ($68.b,X)		; E1 68
	adc ($F2.b),Y		; 71 F2
	stz $F1.b		; 64 F1
	jmp $F8FFF3.l		; 5C F3 FF F8
	ora [$DD.b],Y		; 17 DD
	sta $9A.b		; 85 9A
	inc $F8FF.w,X		; FE FF F8
	ora $EE.b,X		; 15 EE
	bpl -113.b		; 10 8F
	sbc ($28.b,S),Y		; F3 28
	sta ($60.b,S),Y		; 93 60
	cpx #$0C.b		; E0 0C
	sbc $381BFF.l,X		; FF FF 1B 38
	brk $68.b		; 00 68
	pea $F654.w		; F4 54 F6
	sec		; 38
	sbc $390A.w,Y		; F9 0A 39
	ora [$BE.b]		; 07 BE
	sbc ($81.b,X)		; E1 81
	cop $28.b		; 02 28
	inc $8A02.w,X		; FE 02 8A
	inc $E05E.w,X		; FE 5E E0
	ora #$E0BC.w		; 09 BC E0
	phd		; 0B
	sta [$D4.b],Y		; 97 D4
	adc $F8EF20.l,X		; 7F 20 EF F8
	phd		; 0B
	ror $52.b		; 66 52
	beq  15.b		; F0 0F
	pla		; 68
	sed		; F8
	ora ($8D.b,S),Y		; 13 8D
	nop		; EA
	eor $0619BF.l,X		; 5F BF 19 06
	tda		; 7B
	asl $BC.b,X		; 16 BC
	adc $FF2181.l,X		; 7F 81 21 FF
	sbc $0204.w,X		; FD 04 02
	ora ($04.b)		; 12 04
	ror $FFFF.w,X		; 7E FF FF
	inc $BE49.w		; EE 49 BE
	adc $DD.b,S		; 63 DD
	rol $C1.b,X		; 36 C1
	rol $7B8A.w,X		; 3E 8A 7B
	cmp $C251.w,Y		; D9 51 C2
	eor $A4.b,S		; 43 A4
	adc [$19.b]		; 67 19
	rti		; 40

	brk $FF.b		; 00 FF
	cop $04.b		; 02 04
	php		; 08
	lda $3C047F.l,X		; BF 7F 04 3C
	brk $18.b		; 00 18
	ora ($01.b,X)		; 01 01
	.db $82, $66, $F4		; 82 66 F4
	beq -128.b		; F0 80
	ldy $CFF0.w		; AC F0 CF
	ldy $FD89.w,X		; BC 89 FD
	lda [$50.b],Y		; B7 50
	lda #$FE84.w		; A9 84 FE
	bcs  64.b		; B0 40
	stz $ED20.w		; 9C 20 ED
	ora ($DA.b)		; 12 DA
	and $D2.b		; 25 D2
	cld		; D8
	ora $A0E0.w		; 0D E0 A0
	nop		; EA
	tsa		; 3B
	beq  14.b		; F0 0E
	sbc ($C6.b),Y		; F1 C6
	sbc #$DA4A.w		; E9 4A DA
	cmp $ED.b,S		; C3 ED
	jmp ($0BF8.w)		; 6C F8 0B
	ora #$BBE4.w		; 09 E4 BB
	beq  -1.b		; F0 FF
	.db $82, $FB, $24		; 82 FB 24
	bit $FE.b		; 24 FE
	brk $BA.b		; 00 BA
	sta ($BA.b,S),Y		; 93 BA
	.db $82, $54, $C6		; 82 54 C6
	sta ($FF.b)		; 92 FF
	cmp $7C.b,S		; C3 7C
	jmp ($1000.w,X)		; 7C 00 10
	inc $B66D.w		; EE 6D B6
	ora ($EE.b),Y		; 11 EE
	jmp ($F610.w,X)		; 7C 10 F6
	sec		; 38
	adc $8300FF.l		; 6F FF 00 83
	sta $80.b,S		; 83 80
	cop $E4.b		; 02 E4
	sta $2781.w,Y		; 99 81 27
	ora #$0A02.w		; 09 02 0A
	asl $11.b		; 06 11
	tsb $FE39.w		; 0C 39 FE
	sbc $FEC61C.l,X		; FF 1C C6 FE
	ora #$1908.w		; 09 08 19
	clc		; 18
	tsa		; 3B
	sec		; 38
	xce		; FB
	sed		; F8
	cpy #$20.b		; C0 20
	cpy #$10.b		; C0 10
	cpx #$0F.b		; E0 0F
	xba		; EB
	bvc 112.b		; 50 70
	clc		; 18
	bmi  24.b		; 30 18
	sed		; F8
	bra  32.b		; 80 20
	txs		; 9A
	cmp $D9A8.w,Y		; D9 A8 D9
	cpx #$88.b		; E0 88
	plx		; FA
	rti		; 40

	jsr ($BBFE.w,X)		; FC FE BB
	sep #$8C		; E2 8C
	sbc $060B02.l,X		; FF 02 0B 06
	sbc [$C7.b],Y		; F7 C7
	tas		; 1B
	ora $D81F09.l		; 0F 09 1F D8
	sbc $03.b,X		; F5 03
	ora $1F1F0F.l		; 0F 0F 1F 1F
	and $FF87FF.l,X		; 3F FF 87 FF
	ora $03.b		; 05 03
	phd		; 0B
	ora [$E8.b]		; 07 E8
	and $1F.b		; 25 1F
	rol A		; 2A
	ora $4E3F58.l,X		; 1F 58 3F 4E
	and $21DFE1.l,X		; 3F E1 DF 21
	ora [$50.b]		; 07 50
	ora [$00.b]		; 07 00
	phd		; 0B
	tsb $15.b		; 04 15
	asl A		; 0A
	asl $9B01.w,X		; 1E 01 9B
.ACCU 8
.INDEX 8
	sep #$BF		; E2 BF
	sbc $4A1807.l,X		; FF 07 18 4A
	sbc $12FFAF.l,X		; FF AF FF 12
	bmi -63.b		; 30 C1
	sta [$FF.b]		; 87 FF
	eor ($EF.b),Y		; 51 EF
	jmp ($AE83.w,X)		; 7C 83 AE
	sbc $5AC1F0.l,X		; FF F0 C1 5A
	lda $BF.b		; A5 BF
	rti		; 40

	plx		; FA
	ora $FD.b		; 05 FD
	cop $FA.b		; 02 FA
	adc $8282.w		; 6D 82 82
	lda [$C3.b],Y		; B7 C3
	ora $C1.b		; 05 C1
	cop $92.b		; 02 92
	jmp ($A529.w,X)		; 7C 29 A5
	sei		; 78
	lda ($CF.b),Y		; B1 CF
	sbc [$FC.b],Y		; F7 FC
	lda $FF.b		; A5 FF
	sbc $FF4FDF.l,X		; FF DF 4F FF
	sta $44.b,S		; 83 44
	sbc [$08.b]		; E7 08
	lda $4A.b,X		; B5 4A
	ply		; 7A
	sta $E7.b		; 85 E7
	bpl 106.b		; 10 6A
	sta $85.b,X		; 95 85
	sbc $EF7AFF.l,X		; FF FF 7A EF
	bpl  -7.b		; 10 F9
	sbc $76EFBB.l,X		; FF BB EF 76
	cmp $FAF5.w,X		; DD F5 FA
	sbc ($DF.b),Y		; F1 DF
	tsx		; BA
	sbc [$6D.b]		; E7 6D
	cmp $C3.b,S		; C3 C3
	sbc ($CA.b)		; F2 CA
	sbc ($C6.b),Y		; F1 C6
	lda $A25D50.l		; AF 50 5D A2
	ldx $FFDF.w,Y		; BE DF FF
	sbc $50A720.l,X		; FF 20 A7 50
	adc ($80.b)		; 72 80
	sbc ($00.b),Y		; F1 00
	beq -32.b		; F0 E0
	tay		; A8
	beq -36.b		; F0 DC
	sei		; 78
	ldx $6AFC.w,Y		; BE FC 6A
	and $B7BCFC.l,X		; 3F FC BC B7
	lsr $FE65.w,X		; 5E 65 FE
	stx $4AFC.w		; 8E FC 4A
	ldy #$50.b		; A0 50
	cli		; 58
	ldy #$FC.b		; A0 FC
	adc $A80045.l,X		; 7F 45 00 A8
	mvn $A8,$56		; 54 56 A8
	inc $BC00.w,X		; FE 00 BC
	bvs -48.b		; 70 D0
	asl $F024.w		; 0E 24 F0
	asl $80FF.w		; 0E FF 80
	sbc $163EFB.l,X		; FF FB 3E 16
	phd		; 0B
	and #$1E.b		; 29 1E
	mvp $09,$3F		; 44 3F 09
	adc $ADFD4B.l,X		; 7F 4B FD AD
	adc $81A71B.l,X		; 7F 1B A7 81
	plp		; 28
	adc $5C5F78.l,X		; 7F 78 5F 5C
	sbc [$F7.b],Y		; F7 F7
	sbc [$D7.b]		; E7 D7
	eor $7D6DEE.l,X		; 5F EE 6D 7D
	inc $BAF2.w,X		; FE F2 BA
	eor $0109AA.l		; 4F AA 09 01
	txy		; 9B
	sta $D7.b,S		; 83 D7
	cmp [$C2.b]		; C7 C2
	ror $FFF8.w,X		; 7E F8 FF
	sbc $757E9A.l,X		; FF 9A 7E 75
	lda $45FFA2.l,X		; BF A2 FF 45
	plx		; FA
	stx $F8.b		; 86 F8
	jmp $F0F0.w		; 4C F0 F0
	inc A		; 1A
	iny		; C8
	adc ($F0.b,S),Y		; 73 F0
	sbc $FCF8.w,Y		; F9 F8 FC
	rol $FEC9.w,X		; 3E C9 FE
	tsa		; 3B
	inc $ECD6.w,X		; FE D6 EC
	inc $F8.b,X		; F6 F8
	sed		; F8
	ora $67E9.w		; 0D E9 67
	cpx #$10.b		; E0 10
	bra  -1.b		; 80 FF
	pea $12FC.w		; F4 FC 12
	sbc $0B1FBF.l,X		; FF BF 1F 0B
	ora $291F21.l,X		; 1F 21 1F 29
	ora [$24.b],Y		; 17 24
	tas		; 1B
	php		; 08
	and [$19.b],Y		; 37 19
	and [$2C.b],Y		; 37 2C
	and ($AA.b,S),Y		; 33 AA
	ldx $F2AC.w		; AE AC F2
	jmp.w [$FFC4]		; DC C4 FF
	jsr ($E874.w,X)		; FC 74 E8
	asl $C840.w		; 0E 40 C8
	asl $F8FF.w		; 0E FF F8
	ora #$6C.b		; 09 6C
	bpl -21.b		; 10 EB
	phx		; DA
	cmp $D1.b,S		; C3 D1
	jsr $11E0.w		; 20 E0 11
	plp		; 28
	ora $050A22.l,X		; 1F 22 0A 05
	ora [$17.b]		; 07 17
	sbc $FEA1FC.l,X		; FF FC A1 FE
	ora $05F200.l,X		; 1F 00 F2 05
	lda $FFE9.w		; AD E9 FF
	inc $43B5.w,X		; FE B5 43
	ror A		; 6A
	sta [$99.b],Y		; 97 99
	sbc $62F7FF.l,X		; FF FF F7 62
	lda $685FA5.l,X		; BF A5 5F 68
	tas		; 1B
	ora $0609.w,X		; 1D 09 06
	ora $A043.w		; 0D 43 A0
	sta [$40.b],Y		; 97 40
	sbc $BF.b,X		; F5 BF
	sbc $51AE02.l,X		; FF 02 AE 51
	tad		; 5B
	jsr $0116.w		; 20 16 01
	ror $D1.b,X		; 76 D1
	ora ($0E.b,X)		; 01 0E
	sbc $4AFFD5.l,X		; FF D5 FF 4A
	lda $EFF0FF.l,X		; BF FF F0 EF
	lda $D5F78E.l,X		; BF 8E F7 D5
	lda $EEDF6B.l,X		; BF 6B DF EE
	inc $F511.w,X		; FE 11 F5
	asl A		; 0A
	sbc $D52AC3.l,X		; FF C3 2A D5
	lda $11E650.l		; AF 50 E6 11
	lda $4A.b,X		; B5 4A
	phk		; 4B
	ldy $DF.b,X		; B4 DF
	cpy #$E3.b		; C0 E3
	sbc $F54BFF.l,X		; FF FF 4B F5
	stx $FDF5.w		; 8E F5 FD
	inc $80.b,X		; F6 80
	sbc $ABC730.l		; EF 30 C7 AB
	cpy $509C.w		; CC 9C 50
	lda $40.b,S		; A3 40
	sbc $A055FF.l,X		; FF FF 55 A0
	lda $42.b,X		; B5 42
	inc $01.b,X		; F6 01
	lda $A05F40.l,X		; BF 40 5F A0
	pea $6000.w		; F4 00 60
	brk $DA.b		; 00 DA
	cpx $FFBF.w		; EC BF FF
	jmp ($28F0.w)		; 6C F0 28
	beq  80.b		; F0 50
	ldy #$60.b		; A0 60
	ora $30CCFD.l		; 0F FD CC 30
	cpx #$18.b		; E0 18
	bvs -128.b		; 70 80
	ldy #$AA.b		; A0 AA
	lda $40.b		; A5 40
	xba		; EB
	beq  10.b		; F0 0A
	sbc ($D5.b)		; F2 D5
	rep #$C9		; C2 C9
	sei		; 78
	adc ($03.b),Y		; 71 03
	adc $0AE0.w,X		; 7D E0 0A
	sbc #$FF.b		; E9 FF
	lda $74FB3D.l,X		; BF 3D FB 74
	tda		; 7B
	rol $C0B1.w,X		; 3E B1 C0
	cmp $62.b,S		; C3 62
	and ($E3.b),Y		; 31 E3
	bmi -64.b		; 30 C0
	and ($01.b,X)		; 21 01
	and $4BA00C.l,X		; 3F 0C A0 4B
	adc $3F3F7F.l,X		; 7F 7F 3F 3F
	cmp [$07.b]		; C7 07
	inc $03C3.w,X		; FE C3 03
	and $FE44.w		; 2D 44 FE
	xce		; FB
	plx		; FA
	lda ($0F.b),Y		; B1 0F
	ldy $69.b,X		; B4 69
	plx		; FA
	ora $F870FE.l,X		; 1F FE 70 F8
	eor ($FF.b)		; 52 FF
	sed		; F8
	ora $FEE0D0.l		; 0F D0 E0 FE
	ldy #$D0.b		; A0 D0
	bra -16.b		; 80 F0
	eor $E8.b,S		; 43 E8
	jsr $60F0.w		; 20 F0 60
	ply		; 7A
	cpx #$FE.b		; E0 FE
	sed		; F8
	sbc $040EF8.l,X		; FF F8 0E 04
	sbc $683BBF.l,X		; FF BF 3B 68
	ora ($42.b,S),Y		; 13 42
	and $7902.w,Y		; 39 02 79
	pld		; 2B
	bvs  88.b		; 70 58
	rts		; 60

	phd		; 0B
	adc ($4B.b),Y		; 71 4B
	adc ($EA.b,S),Y		; 73 EA
	sbc $09F006.l		; EF 06 F0 09
	trb $BA74.w		; 1C 74 BA
	stp		; DB
	bne -14.b		; D0 F2
	ora ($0B.b,X)		; 01 0B
	brk $35.b		; 00 35
	ora ($C4.b,X)		; 01 C4
	ldy $F0.b		; A4 F0
	tsb $FF0A.w		; 0C 0A FF
	sbc $3B3B0B.l,X		; FF 0B 3B 3B
	lda $44EB50.l		; AF 50 EB 44
	lda ($08.b,S),Y		; B3 08
	ldx $B695.w,Y		; BE 95 B6
	lda $7C.b,S		; A3 7C
	sta $62.b,X		; 95 62
	tyx		; BB
	ora [$C3.b],Y		; 17 C3
	stp		; DB
	.db $42, $2E		; 42 2E
	cmp ($00.b,X)		; C1 00
	stz $B9.b,X		; 74 B9
	cmp ($6A.b),Y		; D1 6A
	jsl $D9FE6A.l		; 22 6A FE D9
	jsr ($FEFD.w,X)		; FC FD FE
	cpx $C8.b		; E4 C8
	ora #$C0.b		; 09 C0
	brk $B0.b		; 00 B0
	bra  88.b		; 80 58
	bvc -64.b		; 50 C0
	sed		; F8
	phd		; 0B
	rti		; 40

	cpy #$A0.b		; C0 A0
	beq -17.b		; F0 EF
	sta [$0F.b]		; 87 0F
	tsb $0E.b		; 04 0E
	brk $0F.b		; 00 0F
	inx		; E8
	lda ($0A.b),Y		; B1 0A
	brk $0D.b		; 00 0D
	ora ($0A.b,X)		; 01 0A
	sed		; F8
	asl $05FE.w		; 0E FE 05
	phy		; 5A
	lda $0006.w,X		; BD 06 00
	inc $B5.b,X		; F6 B5
	sep #$07		; E2 07
	xce		; FB
	tsb $416D.w		; 0C 6D 41
	sbc $95B577.l,X		; FF 77 B5 95
	ror A		; 6A
	lsr A		; 4A
	sbc $D5.b,X		; F5 D5
	nop		; EA
	dex		; CA
	sbc $A5.b,X		; F5 A5
	ror $3E5A.w,X		; 7E 5A 3E
	cmp #$D3.b		; C9 D3
	brk $B9.b		; 00 B9
	sbc $FE89EB.l,X		; FF EB 89 FE
	lda $024165.l		; AF 65 41 02
	ora $06.b,S		; 03 06
	ora ($04.b,X)		; 01 04
	asl $0C.b		; 06 0C
	adc $190D01.l,X		; 7F 01 0D 19
	asl $33.b,X		; 16 33
	clc		; 18
	.db $42, $30		; 42 30
	lda ($B8.b)		; B2 B8
	dec $BF.b,X		; D6 BF
	cpx #$7A.b		; E0 7A
	dec $82.b,X		; D6 82
	jmp $C100.w		; 4C 00 C1
	pha		; 48
	cmp ($7C.b,X)		; C1 7C
	nop		; EA
	ora ($80.b,X)		; 01 80
	ora $A1.b,S		; 03 A1
	plx		; FA
	cmp $E9.b,S		; C3 E9
	inx		; E8
	sta $04.b,S		; 83 04
	bit #$F3.b		; 89 F3
	sbc $EA02.w		; ED 02 EA
	brk $8E.b		; 00 8E
	adc $BDEFFF.l,X		; 7F FF EF BD
	ror $1162.w		; 6E 62 11
	ora $F900.w		; 0D 00 F9
	stx $3F.b		; 86 3F
	and ($BA.b,S),Y		; 33 BA
	ora ($51.b)		; 12 51
	lda [$9D.b]		; A7 9D
	sbc ($F0.b)		; F2 F0
	sta [$F0.b]		; 87 F0
	dec $F3C0.w		; CE C0 F3
	cmp $D7.b		; C5 D7
	sbc $5CB0EF.l		; EF EF B0 5C
	cmp $FF.b,S		; C3 FF
	cpy #$60.b		; C0 60
	bra -15.b		; 80 F1
	inx		; E8
	brk $28.b		; 00 28
	jsr $286C.w		; 20 6C 28
	stz $20.b		; 64 20
	sed		; F8
	ora ($FF.b),Y		; 11 FF
	sed		; F8
	beq  -1.b		; F0 FF
	inc A		; 1A
	bpl -48.b		; 10 D0
	beq -48.b		; F0 D0
	sed		; F8
	cld		; D8
	sbc $67F8C3.l,X		; FF C3 F8 67
	eor ($17.b)		; 52 17
	adc ($57.b,X)		; 61 57
	.db $62, $27, $72		; 62 27 72
	adc [$33.b]		; 67 33
	inc $3F57.w,X		; FE 57 3F
	.db $42, $23		; 42 23
	ora [$73.b]		; 07 73
	sed		; F8
	plx		; FA
	sed		; F8
	sbc $FEFC.w,Y		; F9 FC FE
	xce		; FB
	txs		; 9A
	sta [$FE.b]		; 87 FE
	bra -125.b		; 80 83
	and ($02.b,S),Y		; 33 02
	tsb $72.b		; 04 72
	eor $12048C.l,X		; 5F 8C 04 12
	cop $23.b		; 02 23
	ora ($63.b,X)		; 01 63
	bra -47.b		; 80 D1
	bit #$03.b		; 89 03
	inc $FFFF.w,X		; FE FF FF
	bcc -103.b		; 90 99
	trb $1C1D.w		; 1C 1D 1C
	bit $6064.w,X		; 3C 64 60
	ldy $A0.b		; A4 A0
	ora [$14.b],Y		; 17 14
	eor ($51.b),Y		; 51 51
	ror A		; 6A
	sbc $372AFF.l,X		; FF FF 2A 37
	ora [$3F.b],Y		; 17 3F
	trb $03FC.w		; 1C FC 03
	txy		; 9B
	xce		; FB
	tad		; 5B
	xce		; FB
	inx		; E8
	jsr ($FFAE.w,X)		; FC AE FF
	sta $85.b,X		; 95 85
	sbc $AFC8BF.l,X		; FF BF C8 AF
	adc ($D2.b),Y		; 71 D2
	lda $65.b,S		; A3 65
	sbc $FE.b		; E5 FE
	lda $55F3.w,Y		; B9 F3 55
	and [$FF.b],Y		; 37 FF
	beq  98.b		; F0 62
	jmp $1C02FE.l		; 5C FE 02 1C
	cpx #$BC.b		; E0 BC
	sta ($18.b,X)		; 81 18
	lda $810C80.l		; AF 80 0C 81
	lda [$3E.b]		; A7 3E
	dey		; 88
	sta ($81.b,X)		; 81 81
	cmp ($BA.b,X)		; C1 BA
	ror $F196.w,X		; 7E 96 F1
	sec		; 38
	bpl  52.b		; 10 34
	bpl  -4.b		; 10 FC
	sta [$66.b]		; 87 66
	ror $54.b,X		; 76 54
	eor ($50.b)		; 52 50
	tyx		; BB
	tax		; AA
	txy		; 9B
	txa		; 8A
	bcs  79.b		; B0 4F
	sbc $C8D0FF.l,X		; FF FF D0 C8
	cld		; D8
	bcc -72.b		; 90 B8
	dey		; 88
	jmp.w [$FCAC]		; DC AC FC
	mvp $64,$EE		; 44 EE 64
	inc $0A1A.w		; EE 1A 0A
	ora $BD30.w,X		; 1D 30 BD
	ora $15FC.w		; 0D FC 15
	ora $FC.b		; 05 FC
	dec A		; 3A
	inc A		; 1A
	and $15.b,X		; 35 15
	stx $FF.b		; 86 FF
	dec $B9.b		; C6 B9
	inc $09F8.w,X		; FE F8 09
	ora $A7BFFE.l,X		; 1F FE BF A7
	phy		; 5A
	phy		; 5A
	lda $B5.b,X		; B5 B5
	ply		; 7A
	.db $62, $FF, $05		; 62 FF 05
	lda $7EA5.w,X		; BD A5 7E
	ror $A7.b		; 66 A7
	sta $66.b,S		; 83 66
	.db $42, $00		; 42 00
	sbc [$B9.b]		; E7 B9
	sbc $FA.b,S		; E3 FA
	txa		; 8A
	plx		; FA
	inc $FEC3.w,X		; FE C3 FE
	sta ($D0.b,S),Y		; 93 D0
	ora #$FF.b		; 09 FF
	sed		; F8
	trb $60.b		; 14 60
	stz $40.b		; 64 40
	adc $90E805.l		; 6F 05 E8 90
	sed		; F8
	brk $90.b		; 00 90
	beq  -2.b		; F0 FE
	tya		; 98
	brk $F1.b		; 00 F1
	sbc $060BF8.l,X		; FF F8 0B 06
	nop		; EA
	eor $FE0DFE.l		; 4F FE 0D FE
	eor ($09.b),Y		; 51 09
	brk $0A.b		; 00 0A
	brk $19.b		; 00 19
	php		; 08
	tsb $FC.b		; 04 FC
	ora $02.b		; 05 02
	inc $0FFF.w,X		; FE FF 0F
	dec A		; 3A
	php		; 08
	sbc $A0ADFF.l,X		; FF FF AD A0
	inc $3D68.w,X		; FE 68 3D
	and ($DB.b),Y		; 31 DB
	eor ($3F.b)		; 52 3F
	and $17.b,X		; 35 17
	ora $36.b,S		; 03 36
	jsl $FFEFE7.l		; 22 E7 EF FF
	sbc $87F757.l,X		; FF 57 F7 87
	sbc $A4F7C6.l		; EF C6 F7 A4
	inc $C0.b,X		; F6 C0
	sbc $E0.b,X		; F5 E0
	sbc $C1.b,S		; E3 C1
	sbc $54.b,S		; E3 54
	bpl  -1.b		; 10 FF
	sta [$2C.b]		; 87 2C
	php		; 08
	pei ($80.b)		; D4 80
	ldy $D428.w		; AC 28 D4
	bne -52.b		; D0 CC
	dey		; 88
	bit $00.b		; 24 00
	jsr ($0BFF.w,X)		; FC FF 0B
	inx		; E8
	sed		; F8
	beq  -8.b		; F0 F8
	sei		; 78
	sed		; F8
	bne  -8.b		; D0 F8
	plp		; 28
	sed		; F8
	bvs  66.b		; 70 42
	sbc #$FF.b		; E9 FF
	sta $9307FC.l		; 8F FC 07 93
	and [$8B.b],Y		; 37 8B
	and [$AB.b],Y		; 37 AB
	ora [$9B.b],Y		; 17 9B
	ora [$4B.b]		; 07 4B
	ora [$33.b]		; 07 33
	adc $01ABE8.l,X		; 7F E8 AB 01
	rts		; 60

	ora $70.b,S		; 03 70
	ora $50.b,S		; 03 50
	ora $FA.b,S		; 03 FA
	bmi  -1.b		; 30 FF
	cmp $47.b		; C5 47
	sbc $DA01F7.l,X		; FF F7 01 DA
	eor ($80.b)		; 52 80
	brk $D4.b		; 00 D4
	mvn $55,$D5		; 54 D5 55
	sbc $3A6D21.l,X		; FF 21 6D 3A
	cmp #$38.b		; C9 38
	and $FF7F.w,Y		; 39 7F FF
	and $77.b		; 25 77
	adc $7F2B7F.l,X		; 7F 7F 2B 7F
	rol A		; 2A
	adc $1E695D.l,X		; 7F 5D 69 1E
	brk $3F.b		; 00 3F
	jsl $FF4D26.l		; 22 26 4D FF
	sbc $09034C.l,X		; FF 4C 03 09
	txs		; 9A
	txy		; 9B
	ora [$18.b],Y		; 17 18
	and $EFFF27.l,X		; 3F 27 FF EF
	sbc $D91D.w,X		; FD 1D D9
	sed		; F8
	lda ($F7.b,S),Y		; B3 F7
	sbc $F0F6F8.l,X		; FF F8 F6 F0
	stz $36.b		; 64 36
	cmp $E7C0.w,Y		; D9 C0 E7
	brk $EF.b		; 00 EF
	cop $1F.b		; 02 1F
	sbc [$1B.b],Y		; F7 1B
	sbc ($05.b,S),Y		; F3 05
	bvs  -1.b		; 70 FF
	lsr A		; 4A
	jsr ($CF7C.w,X)		; FC 7C CF
	and ($42.b,S),Y		; 33 42
	sta ($01.b,X)		; 81 01
	inc $E000.w,X		; FE 00 E0
	ora $F8.b,S		; 03 F8
	ora $FE.b,X		; 15 FE
	ora ($E4.b,X)		; 01 E4
	cmp $C4.b,X		; D5 C4
	jmp ($FFC9.w)		; 6C C9 FF
	and $7829.w,X		; 3D 29 78
	bvc  -3.b		; 50 FD
	cmp $FFFF.w		; CD FF FF
	sbc ($B2.b)		; F2 B2
	cmp #$49.b		; C9 49
	sta ($81.b,X)		; 81 81
	and ($33.b,S),Y		; 33 33
	ora [$16.b],Y		; 17 16
.ACCU 16
	rep #$EB		; C2 EB
	sta [$D7.b]		; 87 D7
	cop $CF.b		; 02 CF
	sbc $BF0D2D.l,X		; FF 2D 0D BF
	rol $7F.b,X		; 36 7F
	ror $CCFF.w,X		; 7E FF CC
	sbc $9CFEE8.l,X		; FF E8 FE 9C
	cmp ($80.b,X)		; C1 80
	adc $A4A9B1.l		; 6F B1 A9 A4
	jsr ($E10C.w,X)		; FC 0C E1
	asl A		; 0A
	sbc $04.b,S		; E3 04
	phx		; DA
	jsr ($D364.w,X)		; FC 64 D3
	sbc $F26C8B.l		; EF 8B 6C F2
	rol A		; 2A
	asl A		; 0A
	adc $35.b,X		; 75 35
	brk $F2.b		; 00 F2
	adc $77773F.l,X		; 7F 3F 77 77
	jmp ($D2F2.w)		; 6C F2 D2
	cmp $CAC3FE.l,X		; DF FE C3 CA
	plx		; FA
	adc $66C3E7.l,X		; 7F E7 C3 66
	.db $42, $C3		; 42 C3
	sta ($FE.b,X)		; 81 FE
	jsr ($0C4A.w,X)		; FC 4A 0C
	sta ($70.b,X)		; 81 70
	tax		; AA
	jmp ($F7F2.w)		; 6C F2 F7
	sbc ($FF.b,S),Y		; F3 FF
	sbc $081AFF.l,X		; FF FF 1A 08
	ora $00.b,X		; 15 00
	ora ($00.b)		; 12 00
	bit $10.b,X		; 34 10
	and ($10.b)		; 32 10
	and $01.b		; 25 01
	rol A		; 2A
	brk $31.b		; 00 31
	adc ($98.b,S),Y		; 73 98
	brk $07.b		; 00 07
	ora $FE1FFF.l		; 0F FF 1F FE
	asl $7E1F.w,X		; 1E 1F 7E
	inx		; E8
	sbc $3323B7.l,X		; FF B7 23 33
	ora ($63.b,X)		; 01 63
	eor ($FE.b,X)		; 41 FE
	adc ($80.b,X)		; 61 80
	sta ($C1.b),Y		; 91 C1
	adc ($20.b,X)		; 61 20
	bra  65.b		; 80 41
	ply		; 7A
	sbc $C0.b,S		; E3 C0
	sbc $F1FE.w,Y		; F9 FE F1
	sed		; F8
	ora $C2.b		; 05 C2
	ply		; 7A
	bit $00.b		; 24 00
	pei ($FC.b)		; D4 FC
	stx $84.b,Y		; 96 84
	inc $C5F0.w		; EE F0 C5
	cpy $FC.b		; C4 FC
	nop		; EA
	cpy #$92.b		; C0 92
	bra  -8.b		; 80 F8
	ldx #$F1.b		; A2 F1
	jsr ($3FC3.w,X)		; FC C3 3F
	jsr ($FC38.w,X)		; FC 38 FC
	jsr ($FC3C.w,X)		; FC 3C FC
	jmp ($07FC.w,X)		; 7C FC 07
	ora ($07.b,X)		; 01 07
	ora $14.b		; 05 14
	sbc $03FE.w		; ED FE 03
	lda ($81.b)		; B2 81
	inc $BAE0.w,X		; FE E0 BA
	ora ($66.b,X)		; 01 66
	sbc ($05.b,X)		; E1 05
	jmp $04FF.w		; 4C FF 04
	inc $2C80.w,X		; FE 80 2C
	ora [$0D.b],Y		; 17 0D
	rol $2A.b,X		; 36 2A
	ora $201F14.l,X		; 1F 14 1F 20
	and $040F3A.l		; 2F 3A 0F 04
	ora $FAF808.l,X		; 1F 08 F8 FA
	adc $FEFF74.l,X		; 7F 74 FF FE
	asl A		; 0A
	jsr ($3FFC.w,X)		; FC FC 3F
	php		; 08
	rol $51.b		; 26 51
	lda $530D.w		; AD 0D 53
	sta $AF.b,S		; 83 AF
	asl $FF.b		; 06 FF
	beq -33.b		; F0 DF
	asl $66.b		; 06 66
	bra  41.b		; 80 29
	cpy #$4A.b		; C0 4A
	bra -123.b		; 80 85
	mvn $0C,$DF		; 54 DF 0C
	sbc $00FFB1.l		; EF B1 FF 00
	inc $FE.b,X		; F6 FE
	sbc $ACBC.w,Y		; F9 BC AC
	sbc ($00.b),Y		; F1 00
	txa		; 8A
	ora [$23.b]		; 07 23
	ora $FF4F.w,Y		; 19 4F FF
	sbc $50A3B8.l,X		; FF B8 A3 50
	cmp $30.b,X		; D5 30
	txa		; 8A
	plp		; 28
	mvn $00,$35		; 54 35 00
	asl $7800.w		; 0E 00 78
	asl $F0.b		; 06 F0
	ora [$E1.b]		; 07 E1
	sbc $FE0FE0.l,X		; FF E0 0F FE
	cpy #$17.b		; C0 17
	cpy #$0A.b		; C0 0A
	cpy #$9E.b		; C0 9E
	tya		; 98
	cmp $5540.w		; CD 40 55
	sbc $AB83FF.l,X		; FF FF 83 AB
	sta [$05.b]		; 87 05
	sta $268738.l		; 8F 38 87 26
	sta ($D4.b,X)		; 81 D4
	phd		; 0B
	rts		; 60

	sbc $7730.w,Y		; F9 30 77
	and ($AF.b,X)		; 21 AF
	sta [$2F.b]		; 87 2F
	ora $5F.b,S		; 03 5F
	ora $7F.b		; 05 7F
	and ($B1.b),Y		; 31 B1
	and $80C0B4.l		; 2F B4 C0 80
	cpx #$FE.b		; E0 FE
	cop $08.b		; 02 08
	rti		; 40

	asl $FCD9.w,X		; 1E D9 FC
	sed		; F8
	sta $00D9.w,Y		; 99 D9 00
	phd		; 0B
	sbc ($F8.b)		; F2 F8
	pea $20F8.w		; F4 F8 20
	ldx $A1.b		; A6 A1
	sbc $6BF8F0.l,X		; FF F0 F8 6B
	pld		; 2B
	adc $35.b,X		; 75 35
	rtl		; 6B

	rol A		; 2A
	eor $14.b,X		; 55 14
	jsr ($56D7.w,X)		; FC D7 56
	xba		; EB
	txy		; 9B
	adc $6A.b,S		; 63 6A
	dec $54.b,X		; D6 54
	ldx $F3.b		; A6 F3
	rol $7EFE.w,X		; 3E FE 7E
	inc $3D7C.w,X		; FE 7C 3D
	sbc $FFF5B9.l,X		; FF B9 F5 FF
	sed		; F8
	clc		; 18
	rol A		; 2A
	brk $34.b		; 00 34
	jsr ($2068.w,X)		; FC 68 20
	adc $21.b,X		; 75 21
	eor #$3E2F.w		; 49 2F 3E
	ora ($51.b,X)		; 01 51
	brk $17.b		; 00 17
	ora [$06.b],Y		; 17 06
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	and $3E3F1E.l,X		; 3F 1E 3F 3E
	sty $F4.b,X		; 94 F4
	inc $B53E.w,X		; FE 3E B5
	sbc ($BC.b)		; F2 BC
	ror $77AF.w,X		; 7E AF 77
	tay		; A8
	asl $808A.w		; 0E 8A 80
	sbc $C0D287.l,X		; FF 87 D2 C0
	dec $F6C4.w		; CE C4 F6
	cpx $CE.b		; E4 CE
	mvp $60,$F2		; 44 F2 60
	dex		; CA
	rti		; 40

	jsr ($1E1E.w,X)		; FC 1E 1E
	jmp ($F1AA.w,X)		; 7C AA F1
	sec		; 38
	jsr ($FC18.w,X)		; FC 18 FC
	jmp ($7C1C.w,X)		; 7C 1C 7C
	bit $4D55.w,X		; 3C 55 4D
	jsr ($ADA8.w,X)		; FC A8 AD
	bit #$9A42.w		; 89 42 9A
	cmp ($95.b),Y		; D1 95
	sbc [$0E.b]		; E7 0E
	tsx		; BA
	cop $FF.b		; 02 FF
	ora $0D12FF.l		; 0F FF 12 0D
	asl $0D.b		; 06 0D
	ora ($0E.b,X)		; 01 0E
	ora #$0806.w		; 09 06 08
	ora [$01.b]		; 07 01
	asl $56.b		; 06 56
	plb		; AB
	inc $D1EE.w,X		; FE EE D1
	and $FE9949.l,X		; 3F 49 99 FE
	jsr ($E33C.w,X)		; FC 3C E3
	rti		; 40

	lda [$E9.b],Y		; B7 E9
	ldy $AA.b		; A4 AA
	lda ($F2.b,X)		; A1 F2
	txs		; 9A
	ldy $C6A0.w		; AC A0 C6
	sbc $E3BB45.l		; EF 45 BB E3
	sta ($FE.b)		; 92 FE
	dey		; 88
	phk		; 4B
	brk $1D.b		; 00 1D
	brk $0A.b		; 00 0A
	inc $A6D2.w		; EE D2 A6
	jsr ($FEA1.w,X)		; FC A1 FE
	lda $E1E602.l,X		; BF 02 E6 E1
	ldx $D4.b		; A6 D4
	cpx #$A8E4.w		; E0 E4 A8
	ora [$53.b]		; 07 53
	tsb $FFAC.w		; 0C AC FF
	xce		; FB
	ora ($50.b,S),Y		; 13 50
	ora $EE2E55.l		; 0F 55 2E EE
	trb $B84C.w		; 1C 4C B8
	tya		; 98
	bvs  34.b		; 70 22
	sei		; 78
	ora #$FF0C.w		; 09 0C FF
	php		; 08
	phd		; 0B
	.db $82, $FE, $10		; 82 FE 10
	jsr ($B2F9.w,X)		; FC F9 B2
	ldx #$A04D.w		; A2 4D A0
	asl A		; 0A
	ldy $BFFF.w		; AC FF BF
	sbc $B0.b		; E5 B0
	tsb $28AA.w		; 0C AA 28
	dec $54.b,X		; D6 54
	ldx $D42C.w		; AE 2C D4
	bne -84.b		; D0 AC
	tay		; A8
	jmp $B0B858.l		; 5C 58 B8 B0
	and $2093.w,Y		; 39 93 20
	cmp ($7C.b),Y		; D1 7C
	inc $FEF8.w,X		; FE F8 FE
	ror $FFFE.w,X		; 7E FE FF
	rts		; 60

	ldy #$5C0A.w		; A0 0A 5C
	ldy #$6913.w		; A0 13 69
	brk $55.b		; 00 55
	brk $4B.b		; 00 4B
	cop $53.b		; 02 53
	cop $EA.b		; 02 EA
	rti		; 40

	cmp ($40.b)		; D2 40
	ldx #$24C7.w		; A2 C7 24
	brk $96.b		; 00 96
	tsb $3E.b		; 04 3E
	sbc $E2FE3C.l,X		; FF 3C FE E2
	sbc ($FC.b),Y		; F1 FC
	sbc $7C78FF.l,X		; FF FF 78 7C
	dex		; CA
	rti		; 40

	sbc ($62.b,S),Y		; F3 62
	xba		; EB
	.db $62, $73, $32		; 62 73 32
	adc $7530.w,Y		; 79 30 75
	adc $7B3038.l		; 6F 38 30 7B
	bmi 101.b		; 30 65
	brk $CC.b		; 00 CC
	sbc ($7E.b),Y		; F1 7E
	inc $3E0C.w,X		; FE 0C 3E
	asl $752F.w		; 0E 2F 75
	inc $1E1E.w,X		; FE 1E 1E
	lda ($98.b),Y		; B1 98
	phd		; 0B
	inc $DE02.w,X		; FE 02 DE
	clv		; B8
	asl $0205.w		; 0E 05 02
	bcc  42.b		; 90 2A
	inc $E253.w,X		; FE 53 E2
	ora $F1CF0A.l		; 0F 0A CF F1
	asl $DD.b		; 06 DD
	ora [$8D.b]		; 07 8D
	sbc $D2ED07.l,X		; FF 07 ED D2
	sta $CF.b,S		; 83 CF
	pea $0860.w		; F4 60 08
	rol A		; 2A
	jsr ($4E60.w,X)		; FC 60 4E
	xba		; EB
	lda $4F.b		; A5 4F
	cpy $95.b		; C4 95
	sta ($A8.b)		; 92 A8
	inc $5CFE.w		; EE FE 5C
	dex		; CA
	sbc $0BD0.w,Y		; F9 D0 0B
	dec $C9.b		; C6 C9
	tya		; 98
	sbc $3050.w,X		; FD 50 30
	dec $F0AA.w		; CE AA F0
	sta $90.b,S		; 83 90
	bra 120.b		; 80 78
	jsr $3011.w		; 20 11 30
	phb		; 8B
	sbc $8238.w,Y		; F9 38 82
	eor ($C3.b)		; 52 C3
	cpy #$23EB.w		; C0 EB 23
	cpy #$250B.w		; C0 0B 25
	cmp ($B6.b,X)		; C1 B6
	php		; 08
	and $A09F14.l,X		; 3F 14 9F A0
	ora $A0A807.l		; 0F 07 A8 A0
	cli		; 58
	rti		; 40

	sta $9E70.w		; 8D 70 9E
	cmp #$4149.w		; C9 49 41
	plx		; FA
	sta $A0.b		; 85 A0
	sbc ($FF.b)		; F2 FF
	jsr ($C467.w,X)		; FC 67 C4
	bcs  10.b		; B0 0A
	cmp ($DF.b)		; D2 DF
	ldx $A0FD.w,Y		; BE FD A0
	tsb $FC2D.w		; 0C 2D FC
	brk $A6.b		; 00 A6
	tsb $8C.b		; 04 8C
	php		; 08
	jsr ($81F8.w,X)		; FC F8 81
	and ($5E.b,X)		; 21 5E
	bvc -88.b		; 50 A8
	adc [$60.b],Y		; 77 60
	cmp ($78.b)		; D2 78
	jmp ($EB70.w,X)		; 7C 70 EB
	.db $82, $C1, $8F		; 82 C1 8F
	sta $FE62.w,Y		; 99 62 FE
	.db $82, $F1, $29		; 82 F1 29
	brk $3B.b		; 00 3B
	inc A		; 1A
	and $4057DF.l,X		; 3F DF 57 40
	ora $0A.b		; 05 0A
	php		; 08
	ora [$0C.b]		; 07 0C
	lda $B9.b,S		; A3 B9
	asl $041E.w,X		; 1E 1E 04
	asl $B3F9.w,X		; 1E F9 B3
	ldy $55EE.w,X		; BC EE 55
	adc #$98DF.w		; 69 DF 98
	tsb $98F0.w		; 0C F0 98
	asl A		; 0A
	lda $F1E9EA.l		; AF EA E9 F1
	.db $42, $FC		; 42 FC
	sta ($0F.b,S),Y		; 93 0F
	cop $49.b		; 02 49
	sbc $D3.b,X		; F5 D3
	sed		; F8
	asl A		; 0A
	adc $9853.w,X		; 7D 53 98
	ora ($CF.b,S),Y		; 13 CF
	sta ($55.b)		; 92 55
	sei		; 78
	inc A		; 1A
	brk $F0.b		; 00 F0
	ora ($30.b),Y		; 11 30
	pha		; 48
	adc $E4481A.l,X		; 7F 1A 48 E4
	sei		; 78
	pea $6428.w		; F4 28 64
	clc		; 18
	bit $FE.b,X		; 34 FE
	php		; 08
	bit $4A.b		; 24 4A
	tsb $BF.b		; 04 BF
	clc		; 18
	ldx $FC99.w,Y		; BE 99 FC
	inc $68EC.w,X		; FE EC 68
	sed		; F8
	cpy $FEC7.w		; CC C7 FE
	ora $19.b,S		; 03 19
	asl $E7DD.w		; 0E DD E7
	cop $18.b		; 02 18
	inc $FC34.w,X		; FE 34 FC
	jsr ($18CE.w,X)		; FC CE 18
	bit $38.b		; 24 38
	stz $30.b		; 64 30
	stz $7F.b		; 64 7F
	bmi  16.b		; 30 10
	mvp $4C,$18		; 44 18 4C
	sei		; 78
	cpy $0830.w		; CC 30 08
	dec $FCFE.w		; CE FE FC
	sec		; 38
.INDEX 16
	rep #$DF		; C2 DF
	adc $FE.b,X		; 75 FE
	beq   0.b		; F0 00
	ldy $5E.b		; A4 5E
	eor $BE.b		; 45 BE
	sta $EF1902.l		; 8F 02 19 EF
	ldy #$FF82.w		; A0 82 FF
	eor [$F9.b]		; 47 F9
	cmp #$D12A.w		; C9 2A D1
	sbc $FEFC.w,X		; FD FC FE
	jmp $AAFF72.l		; 5C 72 FF AA
	jmp $F9F9AC.l		; 5C AC F9 F9
	ldy #$7008.w		; A0 08 70
	clc		; 18
	jsr $C830.w		; 20 30 C8
	cmp $FD65.w,Y		; D9 65 FD
	sta ($F2.b,X)		; 81 F2
	ply		; 7A
	sbc $5CF4FA.l,X		; FF FA F4 5C
	tay		; A8
	ora #$FEFF.w		; 09 FF FE
	tas		; 1B
	tsb $3F.b		; 04 3F
	pld		; 2B
	sed		; F8
	ora ($3C.b),Y		; 11 3C
	trb $2452.w		; 1C 52 24
	eor ($38.b)		; 52 38
	eor $084A22.l		; 4F 22 4A 08
	jsl $3E3614.l		; 22 14 36 3E
	inc $FED1.w		; EE D1 FE
	pha		; 48
	inc $F8F9.w,X		; FE F9 F8
	sta ($FE.b)		; 92 FE
	ldy $1FEC.w,X		; BC EC 1F
	brk $3D.b		; 00 3D
	ora $3A.b,S		; 03 3A
	lda $27066A.l		; AF 6A 06 27
	bpl  63.b		; 10 3F
	ora ($3D.b)		; 12 3D
	beq  11.b		; F0 0B
	ldx $E9.b		; A6 E9
	tsx		; BA
	sbc $F395.w		; ED 95 F3
	sta ($99.b,X)		; 81 99
	cpx #$FFE9.w		; E0 E9 FF
	bvc -96.b		; 50 A0
	tsb $7F09.w		; 0C 09 7F
	brk $6F.b		; 00 6F
	inc A		; 1A
	mvp $7F,$20		; 44 20 7F
	bit $3F.b		; 24 3F
	rts		; 60

	cmp $9B243F.l,X		; DF 3F 24 9B
	and $602AB1.l,X		; 3F B1 2A 60
	bit $1FAC.w,X		; 3C AC 1F
	tsb $04.b		; 04 04
	brk $55.b		; 00 55
	ora ($4E.b),Y		; 11 4E
	tax		; AA
	eor [$F6.b],Y		; 57 F6
	tsb $E2.b		; 04 E2
	sta [$71.b]		; 87 71
	.db $82, $72, $20		; 82 72 20
	bra -96.b		; 80 A0
	and $510BF0.l,X		; 3F F0 0B 51
	adc $FE1F.w,Y		; 79 1F FE
	bvs -22.b		; 70 EA
	bit $04.b,X		; 34 04
	clc		; 18
	trb $1E.b		; 14 1E
	trb $182C.w		; 1C 2C 18
	cli		; 58
	bit $8318.w,X		; 3C 18 83
	eor ($7C.b),Y		; 51 7C
	bmi 124.b		; 30 7C
	ror $E29E.w		; 6E 9E E2
	ror $FAFF.w,X		; 7E FF FA
	pea $56BF.w		; F4 BF 56
	ror $E8.b,X		; 76 E8
	ora #$0D05.w		; 09 05 0D
	ora $0A.b,S		; 03 0A
	ora $4F.b,S		; 03 4F
	jsr ($DD7D.w,X)		; FC 7D DD
	ora $9F.b		; 05 9F
	nop		; EA
	sbc ($E6.b,S),Y		; F3 E6
	lda $89C2E2.l		; AF E2 C2 89
	sta $1F42.w		; 8D 42 1F
	inc $32F7.w		; EE F7 32
	cpx #$B013.w		; E0 13 B0
	dey		; 88
	ora ($54.b),Y		; 11 54
	and $FF.b,X		; 35 FF
	ora $174817.l,X		; 1F 17 48 17
	eor [$06.b],Y		; 57 06
	rol $0E.b,X		; 36 0E
	asl $0802.w		; 0E 02 08
	adc $1D.b,X		; 75 1D
	plx		; FA
	and $AAEEBE.l		; 2F BE EE AA
	rol A		; 2A
	php		; 08
	rol A		; 2A
	cop $0B.b		; 02 0B
	lda ($E1.b)		; B2 E1
	ldx #$10A1.w		; A2 A1 10
	bpl  75.b		; 10 4B
	sbc #$8B40.w		; E9 40 8B
	jsl $504090.l		; 22 90 40 50
	cmp $B171.w,X		; DD 71 B1
	sta $71.b,X		; 95 71
	dec $FE14.w		; CE 14 FE
	tsa		; 3B
	ldy #$FEA6.w		; A0 A6 FE
	sbc $111F40.l		; EF 40 1F 11
	tsb $11.b		; 04 11
	bit $0F.b		; 24 0F
	sbc $791D1F.l,X		; FF 1F 1D 79
	and $5BFFF9.l,X		; 3F F9 FF 5B
	tyx		; BB
	lda $000EFF.l,X		; BF FF 0E 00
	rol $2C3F.w		; 2E 3F 2C
	jsr $6060.w		; 20 60 60
	dec $C0.b		; C6 C0
	inc $E0.b		; E6 E0
	inc $F1F5.w,X		; FE F5 F1
	ldy $11.b		; A4 11
	inc $FFDF.w,X		; FE DF FF
	stx $01.b		; 86 01
	plp		; 28
	cmp [$90.b],Y		; D7 90
	sbc $55FFE2.l		; EF E2 FF 55
	lda $C9F0A0.l,X		; BF A0 F0 C9
	sbc $FF.b,X		; F5 FF
	sta [$87.b]		; 87 87
	dec $3CA2.w,X		; DE A2 3C
	ldx $7C58.w		; AE 58 7C
	jmp ($BCF8.w)		; 6C F8 BC
	sei		; 78
	cld		; D8
	sec		; 38
	bmi  -8.b		; 30 F8
	rtl		; 6B

	pea $E090.w		; F4 90 E0
	ldy #$D936.w		; A0 36 D9
	asl A		; 0A
	jsr ($FFFC.w,X)		; FC FC FF
	rol $B2.b,X		; 36 B2
	cpx #$87E0.w		; E0 E0 87
	sbc $0C0D04.l,X		; FF 04 0D 0C
	inc A		; 1A
	inc $061A.w,X		; FE 1A 06
	rol $541C.w		; 2E 1C 54
	rol $3874.w,X		; 3E 74 38
	and ($FC.b,X)		; 21 FC
	adc ($3C.b)		; 72 3C
	rts		; 60

	tsb $BD.b		; 04 BD
	and [$02.b]		; 27 02
	and $427F0C.l,X		; 3F 0C 7F 42
	sed		; F8
	trb $69.b		; 14 69
	and $3FFE.w,Y		; 39 FE 3F
	bcc  20.b		; 90 14
	adc ($1A.b),Y		; 71 1A
	adc $122D7F.l,X		; 7F 7F 2D 12
	adc $085F10.l,X		; 7F 10 5F 08
	lsr A		; 4A
	ora ($6F.b)		; 12 6F
	rti		; 40

	sbc ($FF.b),Y		; F1 FF
	rep #$0F		; C2 0F
	sta $00D9.w,Y		; 99 D9 00
	inx		; E8
	sec		; 38
	and ($F8.b,S),Y		; 33 F8
	pha		; 48
	pea $C985.w		; F4 85 C9
	rti		; 40

	lda ($FA.b,X)		; A1 FA
	bne -128.b		; D0 80
	and [$B0.b],Y		; 37 B0
	rti		; 40

	sbc ($E6.b,S),Y		; F3 E6
	pea $FC38.w		; F4 38 FC
	ora [$01.b]		; 07 01
	ora $073E20.l		; 0F 20 3E 07
	inc $C171.w,X		; FE 71 C1
	inc $071E.w,X		; FE 1E 07
	ora $4A17.w,X		; 1D 17 4A
	sbc $7440C1.l,X		; FF C1 40 74
	inc $0006.w,X		; FE 06 00
	trb $CE.b		; 14 CE
	jmp.w [$DDCD]		; DC CD DD
	sbc $F8E07F.l,X		; FF 7F E0 F8
	sbc $FD68.w,X		; FD 68 FD
	and $2DE8.w		; 2D E8 2D
	ror A		; 6A
	lda $2B7AB7.l		; AF B7 7A 2B
	inx		; E8
	and $FF0FFD.l,X		; 3F FD 0F FF
	rol $A1.b,X		; 36 A1
	adc $FE3F1F.l,X		; 7F 1F 3F FE
	ora $8D3F.w,X		; 1D 3F 8D
	and $BEE0B8.l,X		; 3F B8 E0 BE
	adc $3FF886.l,X		; 7F 86 F8 3F
	inc $BF.b,X		; F6 BF
	inc $BEFF.w,X		; FE FF BE
	lda $5FABFE.l,X		; BF FE AB 5F
	cmp $C0.b,X		; D5 C0
	sed		; F8
	cpy #$C0F6.w		; C0 F6 C0
	inc $FEFE.w,X		; FE FE FE
	adc ($F0.b)		; 72 F0
	phd		; 0B
	sed		; F8
	nop		; EA
	sta $710FE0.l		; 8F E0 0F 71
	clc		; 18
	phd		; 0B
	plx		; FA
	and $50467F.l,X		; 3F 7F 46 50
	tsb $FCFF.w		; 0C FF FC
	cmp ($FE.b),Y		; D1 FE
	sbc ($FC.b)		; F2 FC
	cld		; D8
	jsr ($F8B4.w,X)		; FC B4 F8
	pla		; 68
	pea $B55C.w		; F4 5C B5
	inc $E8D0.w,X		; FE D0 E8
	bne  47.b		; D0 2F
	ora ($46.b),Y		; 11 46
	sta ($DA.b)		; 92 DA
	beq   9.b		; F0 09
	bmi -16.b		; 30 F0
	ora $6EFFC0.l		; 0F C0 FF 6E
	ora $0EF0.w,X		; 1D F0 0E
	ora ($3E.b),Y		; 11 3E
	rol A		; 2A
	ora $140F16.l,X		; 1F 16 0F 14
	ora $07C960.l		; 0F 60 C9 07
	tsb $AE.b		; 04 AE
	cmp #$3B10.w		; C9 10 3B
	cpx #$C106.w		; E0 06 C1
	asl $08.b		; 06 08
	cmp ($00.b,X)		; C1 00
	ora $071E07.l,X		; 1F 07 1E 07
	sbc $0877FF.l,X		; FF FF 77 08
	and $0FD205.l,X		; 3F 05 D2 0F
	asl A		; 0A
	jmp.w [$F4E2]		; DC E2 F4
	eor $1DF8.w,Y		; 59 F8 1D
	sbc $FFAF.w,X		; FD AF FF
	xce		; FB
	ora $028007.l		; 0F 07 80 02
	ora ($E9.b,S),Y		; 13 E9
	ora $E0.b,S		; 03 E0
	xba		; EB
	cpx #$F057.w		; E0 57 F0
	inc A		; 1A
	sed		; F8
	inc $F0BF.w,X		; FE BF F0
	asl $DA.b		; 06 DA
	sei		; 78
	bra -72.b		; 80 B8
	cpy #$2098.w		; C0 98 20
	pla		; 68
	bvs -16.b		; 70 F0
	sed		; F8
	jsr ($FFF8.w,X)		; FC F8 FF
	sbc $C0E6CB.l,X		; FF CB E6 C0
	jsr $30A0.w		; 20 A0 30
	bvs 124.b		; 70 7C
	sed		; F8
	inc $1419.w,X		; FE 19 14
	inc A		; 1A
	asl $0E1C.w		; 0E 1C 0E
	and $BC3D.w,X		; 3D 3D BC
	ora $F2EF3E.l,X		; 1F 3E EF F2
	ora $9F0E1E.l,X		; 1F 1E 0E 9F
	ora ($08.b,X)		; 01 08
	ora ($0C.b,X)		; 01 0C
	sbc $A1FF.w,X		; FD FF A1
	sbc ($1E.b,X)		; E1 1E
	sbc $01E2.w,Y		; F9 E2 01
	asl $3AD2.w		; 0E D2 3A
	txs		; 9A
	and ($7A.b)		; 32 7A
	adc ($BA.b)		; 72 BA
	sbc ($7A.b)		; F2 7A
	cmp ($F0.b)		; D2 F0
	sbc ($FA.b,X)		; E1 FA
	inc $FAB2.w,X		; FE B2 FA
	adc ($CD.b)		; 72 CD
	ora $3F8DFE.l,X		; 1F FE 8D 3F
	beq  31.b		; F0 1F
	ora $5FFE.w		; 0D FE 5F
	ora $0DDF.w		; 0D DF 0D
	lda $BF7F0D.l,X		; BF 0D 7F BF
	ldy $70FD.w,X		; BC FD 70
	inc $F1C8.w,X		; FE C8 F1
	sbc $FD7FFC.l,X		; FF FC 7F FD
	adc $C0F9FC.l,X		; 7F FC F9 C0
	jsr ($11F4.w,X)		; FC F4 11
	inc $F1C8.w,X		; FE C8 F1
	bra  -4.b		; 80 FC
	bra  -3.b		; 80 FD
	jsr ($555C.w,X)		; FC 5C 55
	beq -52.b		; F0 CC
	sbc ($E0.b),Y		; F1 E0
	cpy #$FCFE.w		; C0 FE FC
	sbc ($D9.b,X)		; E1 D9
	sed		; F8
	phx		; DA
	eor $E36B76.l		; 4F 76 6B E3
	sbc ($BF.b,X)		; E1 BF
	ldx $92.b		; A6 92
	inc $7FEE.w,X		; FE EE 7F
	stz $456F.w,X		; 9E 6F 45
	jsl $F780F3.l		; 22 F3 80 F7
	xce		; FB
	sbc $0B40A5.l		; EF A5 40 0B
	sbc $F1920C.l,X		; FF 0C 92 F1
	bne  -8.b		; D0 F8
	pla		; 68
	beq  88.b		; F0 58
	beq -104.b		; F0 98
	cpx #$99D8.w		; E0 D8 99
	jsr $5FD7.w		; 20 D7 5F
	beq  16.b		; F0 10
	beq  32.b		; F0 20
	cpy $A2F2.w		; CC F2 A2
	cpx $F0D0.w		; EC D0 F0
	php		; 08
	clc		; 18
	php		; 08
	plp		; 28
	and $C1.b		; 25 C1
	cmp $66.b,X		; D5 66
	stz $5B.b		; 64 5B
	tya		; 98
	cpx #$8609.w		; E0 09 86
	dec $FE.b		; C6 FE
	jsr ($3A77.w,X)		; FC 77 3A
	and #$9C3F.w		; 29 3F 9C
	sei		; 78
	bcc  -3.b		; 90 FD
	ldx $797F.w,Y		; BE 7F 79
	lda $0A00F0.l,X		; BF F0 00 0A
	ldy #$F0C7.w		; A0 C7 F0
	inc $5E3E.w,X		; FE 3E 5E
	ora #$FCF8.w		; 09 F8 FC
	nop		; EA
	inc $1FFF.w,X		; FE FF 1F
	dec $9CFC.w		; CE FC 9C
	inc $CE3C.w		; EE 3C CE
	ply		; 7A
	cpy $9ACC.w		; CC CC 9A
	sed		; F8
	inc $FFE8.w,X		; FE E8 FF
	ror $FE55.w		; 6E 55 FE
	cpy $8CFF.w		; CC FF 8C
	rts		; 60

	cmp ($48.b,X)		; C1 48
	wai		; CB
	and #$F19D.w		; 29 9D F1
	.db $62, $B6, $56		; 62 B6 56
	lda ($15.b,S),Y		; B3 15
	lda [$0D.b]		; A7 0D
	dex		; CA
	.db $62, $B4, $60		; 62 B4 60
	lda ($FE.b),Y		; B1 FE
	plx		; FA
	sbc ($FE.b)		; F2 FE
	sbc $FB13.w,X		; FD 13 FB
	sbc ($6D.b,S),Y		; F3 6D
	and ($F0.b,X)		; 21 F0
	sbc $F7FFF1.l,X		; FF F1 FF F7
	ora $FEFF.w		; 0D FF FE
	cld		; D8
	sbc $61C2C4.l,X		; FF C4 C2 61
	beq  87.b		; F0 57
	and ($7F.b)		; 32 7F
	sbc #$E07F.w		; E9 7F E0
	adc $E476.w,X		; 7D 76 E4
	and ($F7.b,X)		; 21 F7
	cmp $F113E2.l,X		; DF E2 13 F1
	ror OAMDATA.w		; 6E 04 21
	jmp ($E980.w,X)		; 7C 80 E9
	bra -32.b		; 80 E0
	dey		; 88
	cpx #$D61E.w		; E0 1E D6
	phy		; 5A
	dec $08.b,X		; D6 08
	rts		; 60

	adc $EC7CC9.l		; 6F C9 7C EC
	sbc ($C5.b)		; F2 C5
	bit #$FAA0.w		; 89 A0 FA
	and $82.b,X		; 35 82
	jsr ($6060.w,X)		; FC 60 60
	cmp $C4D5.w,Y		; D9 D5 C4
	ldy #$FCFA.w		; A0 FA FC
	adc $91A4E3.l		; 6F E3 A4 91
	sbc $ABFF41.l,X		; FF 41 FF AB
	and [$39.b],Y		; 37 39
	adc [$CB.b]		; 67 CB
	and $FEC7.w,Y		; 39 C7 FE
	cpy #$F1B7.w		; C0 B7 F1
	brk $41.b		; 00 41
	brk $AB.b		; 00 AB
	jmp ($67B9.w,X)		; 7C B9 67
	ldy #$C759.w		; A0 59 C7
	inc $F8C0.w,X		; FE C0 F8
	tas		; 1B
	dec $F8A8.w,X		; DE A8 F8
	bcs  81.b		; B0 51
	lda ($F0.b,X)		; A1 F0
	inc $F4FC.w,X		; FE FC F4
	jsr ($2014.w,X)		; FC 14 20
	sbc ($3F.b),Y		; F1 3F
	sty $A8.b		; 84 A8
	brk $B0.b		; 00 B0
	tsb $D4.b		; 04 D4
	tsb $F4.b		; 04 F4
	inc $FE00.w,X		; FE 00 FE
	tax		; AA
	phy		; 5A
	trb $DC.b		; 14 DC
	lda $56DB.w,Y		; B9 DB 56
	txy		; 9B
	txa		; 8A
	inc A		; 1A
	adc ($8F.b)		; 72 8F
	dec $BD5C.w		; CE 5C BD
	ora $082134.l,X		; 1F 34 21 08
	adc $673EFE.l,X		; 7F FE 3E 67
	sbc $D63FDE.l,X		; FF DE 3F D6
	sbc $EFF887.l		; EF 87 F8 EF
	adc $09F8F0.l,X		; 7F F0 F8 09
	asl $C6FF.w,X		; 1E FF C6
	ora [$2A.b]		; 07 2A
	stz $8E54.w,X		; 9E 54 8E
	cld		; D8
	asl $0ED4.w		; 0E D4 0E
	lsr $389C.w		; 4E 9C 38
	plp		; 28
	inc $DC0E.w,X		; FE 0E DC
	txs		; 9A
	eor #$3368.w		; 49 68 33
	.db $42, $BA		; 42 BA
	sta ($92.b,X)		; 81 92
	inc $ECF6.w,X		; FE F6 EC
	sbc ($93.b),Y		; F1 93
	txs		; 9A
	inc $B52A.w,X		; FE 2A B5
	rti		; 40

	ldy $8AA8.w,X		; BC A8 8A
	and $60.b,X		; 35 60
	asl A		; 0A
	adc ($39.b,S),Y		; 73 39
	inc $EBEE.w,X		; FE EE EB
	and ($79.b),Y		; 31 79
	sta $16.b		; 85 16
	ora ($89.b),Y		; 11 89
	jsr ($AB64.w,X)		; FC 64 AB
	inc $2EEE.w,X		; FE EE 2E
	sta $BC79.w,Y		; 99 79 BC
	rep #$0E		; C2 0E
	sbc $FCFE97.l,X		; FF 97 FE FC
	inc $3CFC.w,X		; FE FC 3C
	inc $FEDC.w,X		; FE DC FE
	ldy $34FE.w		; AC FE 34
	ora $F8.b		; 05 F8
	inc $2438.w,X		; FE 38 24
	lda $FCEA.w,Y		; B9 EA FC
	bit $DC00.w,X		; 3C 00 DC
	brk $7E.b		; 00 7E
	sty $19AC.w		; 8C AC 19
	cmp ($38.b),Y		; D1 38
	sbc $C3FFC1.l,X		; FF C1 FF C3
	inc $8783.w,X		; FE 83 87
	sta $E3FE.w		; 8D FE E3
	sbc $00FEE1.l,X		; FF E1 FE 00
	cmp ($5E.b,X)		; C1 5E
	lda $83.b,S		; A3 83
	ora $FEEE.w		; 0D EE FE
	sbc $96.b,S		; E3 96
	lda ($E1.b),Y		; B1 E1
	asl $F8FE.w		; 0E FE F8
	phd		; 0B
	inc $E6FA.w,X		; FE FA E6
	lda $F8.b,X		; B5 F8
	eor #$0215.w		; 49 15 02
	plx		; FA
	inc $11C3.w,X		; FE C3 11
	tsb $84.b		; 04 84
	adc $73.b,X		; 75 73
	plp		; 28
	cmp $C5.b		; C5 C5
	lda $A593FE.l		; AF FE 93 A5
	jmp $3DFF30.l		; 5C 30 FF 3D
	inc $7878.w,X		; FE 78 78
	asl A		; 0A
	ora $1908DB.l		; 0F DB 08 19
	and ($0F.b),Y		; 31 0F
	adc [$1F.b],Y		; 77 1F
	beq  60.b		; F0 3C
	sbc $1FFCF0.l,X		; FF F0 FC 1F
	ldy #$FF29.w		; A0 29 FF
	sbc $DA00E0.l,X		; FF E0 00 DA
	tsb $8C46.w		; 0C 46 8C
	stx $4C.b		; 86 4C
	tsb $02C6.w		; 0C C6 02
	cpy $84.b		; C4 84
	cmp ($84.b,X)		; C1 84
	sbc ($C9.b,X)		; E1 C9
	and $04EDC2.l		; 2F C2 ED 04
	and $0B.b,X		; 35 0B
	sbc $82EC82.l		; EF 82 EC 82
	cpy $F0AF.w		; CC AF F0
	ora #$492A.w		; 09 2A 49
	lda [$9C.b]		; A7 9C
	plb		; AB
	dec $C4.b		; C6 C4
	sbc $2CAC9C.l,X		; FF 9C AC 2C
	plp		; 28
	tsb $47FE.w		; 0C FE 47
	trb $66.b		; 14 66
	dec $BC.b		; C6 BC
	tad		; 5B
	jsl $FE10AB.l		; 22 AB 10 FE
	eor ($AB.b,S),Y		; 53 AB
	eor ($A9.b),Y		; 51 A9
	sbc ($99.b),Y		; F1 99
	inc $3474.w,X		; FE 74 34
.ACCU 16
.INDEX 16
	rep #$FE		; C2 FE
	lda [$C1.b]		; A7 C1
	lda ($C4.b,X)		; A1 C4
	sei		; 78
	inc $74F2.w,X		; FE F2 74
	sta $027F87.l		; 8F 87 7F 02
	lda $5700.w,Y		; B9 00 57
	jsr ($029F.w,X)		; FC 9F 02
	and #$4BFC.w		; 29 FC 4B
	and $6982.w,X		; 3D 82 69
	eor ($A3.b,X)		; 41 A3
.ACCU 16
.INDEX 16
	rep #$FC		; C2 FC
	jmp ($C9A0.w,X)		; 7C A0 C9
	jmp ($BEFE.w,X)		; 7C FE BE
	bvs  91.b		; 70 5B
	jmp $890499.l		; 5C 99 04 89
	sbc ($08.b),Y		; F1 08
	sty $1A61.w		; 8C 61 1A
	bit $E1.b		; 24 E1
	eor ($F8.b)		; 52 F8
	ora $FD.b,X		; 15 FD
	phb		; 8B
	cop $91.b		; 02 91
	inc $2A2B.w,X		; FE 2B 2A
	bit $14.b,X		; 34 14
	sbc ($FF.b,X)		; E1 FF
	phk		; 4B
	asl A		; 0A
	jsr ($0C4E.w,X)		; FC 4E 0C
	sta $2D18.w,X		; 9D 18 2D
	plp		; 28
	sta $D510.w,Y		; 99 10 D5
	sbc $EB5DC2.l,X		; FF C2 5D EB
	sbc [$09.b],Y		; F7 09
	jsr ($FDF1.w,X)		; FC F1 FD
	cpx #$E9C9.w		; E0 C9 E9
	cpx #$ACF0.w		; E0 F0 AC
	sbc ($E9.b)		; F2 E9
	pld		; 2B
	pha		; 48
	sbc #$F2FE.w		; E9 FE F2
	sbc $70FD3A.l,X		; FF 3A FD 70
	ldy $48F2.w		; AC F2 48
	sbc #$11FD.w		; E9 FD 11
	inc $00F2.w,X		; FE F2 00
	dec A		; 3A
	cop $72.b		; 02 72
	inc $FEFA.w,X		; FE FA FE
	bit $8F08.w		; 2C 08 8F
	inc $94FE.w,X		; FE FE 94
	ldx $FEF1.w		; AE F1 FE
	bit $A0FE.w,X		; 3C FE A0
	and $94F0FE.l,X		; 3F FE F0 94
	pha		; 48
	asl A		; 0A
	sbc $7113F8.l,X		; FF F8 13 71
	clc		; 18
	adc $08.b,S		; 63 08
	sbc $88.b,S		; E3 88
	cpy $6F.b		; C4 6F
	inc $FE63.w,X		; FE 63 FE
	adc [$8C.b]		; 67 8C
	and $8C.b,S		; 23 8C
	sbc [$44.b]		; E7 44
	ora $E377.w,Y		; 19 77 E3
	ora $73FDFE.l,X		; 1F FE FD 73
	inc $69CC.w,X		; FE CC 69
	dex		; CA
	adc ($44.b,S),Y		; 73 44
	adc ($48.b)		; 72 48
	ply		; 7A
	ldy $5816.w		; AC 16 58
	sta [$C4.b],Y		; 97 C4
	stx $00.b		; 86 00
	sty $88FE.w		; 8C FE 88
	adc $09B8.w		; 6D B8 09
	tsx		; BA
	trb $84.b		; 14 84
	sbc $FE.b		; E5 FE
	inc $A871.w,X		; FE 71 A8
	ora $0504.w		; 0D 04 05
	ora ($29.b),Y		; 11 29
	inc $7EF4.w,X		; FE F4 7E
	sbc #$FB2B.w		; E9 2B FB
	bvc  -5.b		; 50 FB
	bmi  -5.b		; 30 FB
	bcs   8.b		; B0 08
	sta $F4FE.w,Y		; 99 FE F4
	brk $FF.b		; 00 FF
.ACCU 16
.INDEX 16
	rep #$F5		; C2 F5
	tsb $54.b		; 04 54
	tsb $34.b		; 04 34
	brk $B0.b		; 00 B0
	jsr ($E4F4.w,X)		; FC F4 E4
	sbc ($15.b,X)		; E1 15
	cpy #$8211.w		; C0 11 82
	sed		; F8
	bra  -4.b		; 80 FC
	sed		; F8
	cpx #$F7E6.w		; E0 E6 F7
	sbc $E4E1E4.l,X		; FF E4 E1 E4
	tsb $C4.b		; 04 C4
	bra -74.b		; 80 B6
	stz $CF00.w		; 9C 00 CF
	eor ($B4.b,X)		; 41 B4
	jsr $014F.w		; 20 4F 01
	ror $20.b		; 66 20
	sbc $105E83.l,X		; FF 83 5E 10
	adc [$20.b]		; 67 20
	eor ($10.b)		; 52 10
	adc $7F3E7F.l,X		; 7F 7F 3E 7F
	eor $FF59FC.l,X		; 5F FC 59 FF
	sbc ($D1.b,S),Y		; F3 D1
	and $3870FC.l		; 2F FC 70 38
	ora $B0A0.w		; 0D A0 B0
	ora ($17.b),Y		; 11 17
	brk $1A.b		; 00 1A
	brk $27.b		; 00 27
	brk $87.b		; 00 87
	txa		; 8A
	rol A		; 2A
	tsb $37.b		; 04 37
	ora #$25FC.w		; 09 FC 25
	plx		; FA
	ora $8BE3.w,Y		; 19 E3 8B
	inc $FF17.w,X		; FE 17 FF
	sep #$8C		; E2 8C
	ora $380D.w		; 0D 0D 38
	bmi -48.b		; 30 D0
	rti		; 40

	bmi  32.b		; 30 20
	rts		; 60

	asl $BC59.w		; 0E 59 BC
.ACCU 16
	rep #$23		; C2 23
	ora $C03A.w,X		; 1D 3A C0
	beq -96.b		; F0 A0
	sbc $D1.b,X		; F5 D1
	sep #$8E		; E2 8E
	sbc $761CFD.l,X		; FF FD 1C 76
	beq  -2.b		; F0 FE
	sbc ($FE.b),Y		; F1 FE
	jsr ($3EF0.w,X)		; FC F0 3E
	nop		; EA
	cop $F2.b		; 02 F2
	ora $2AF0.w		; 0D F0 2A
	lda $80.b,S		; A3 80
	sbc ($01.b),Y		; F1 01
	inc $F838.w,X		; FE 38 F8
	inc $DDE4.w,X		; FE E4 DD
	sbc $DEECFE.l,X		; FF FE EC DE
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	adc $FCFE.w,X		; 7D FE FC
	ora ($E5.b,X)		; 01 E5
	ora ($ED.b,X)		; 01 ED
	ora ($FD.b,X)		; 01 FD
	ora ($7D.b,X)		; 01 7D
	inc $003F.w,X		; FE 3F 00
	inc $33FD.w,X		; FE FD 33
	sty $AD35.w		; 8C 35 AD
	adc $CC.b,X		; 75 CC
	bvc -56.b		; 50 C8
	ora ($48.b)		; 12 48
	ora ($48.b,S),Y		; 13 48
	cpx $FC0B.w		; EC 0B FC
	and ($68.b)		; 32 68
	ldy $21F1.w		; AC F1 21
	and ($00.b,S),Y		; 33 00
	and [$FE.b],Y		; 37 FE
	sbc $972A.w,X		; FD 2A 97
	.db $62, $CA, $2B		; 62 CA 2B
	and $261AF8.l,X		; 3F F8 1A 26
	cld		; D8
	ora #$FE.b		; 09 FE
	ora $26.b,S		; 03 26
	cld		; D8
	ora #$3F.b		; 09 3F
	ldy $03FE.w,X		; BC FE 03
	xce		; FB
	beq  -5.b		; F0 FB
	inx		; E8
	inc $E0F3.w,X		; FE F3 E0
	sbc ($E1.b,S),Y		; F3 E1
	clc		; 18
	.db $42, $FE		; 42 FE
	jsr ($E864.w,X)		; FC 64 E8
	inc $FE08.w,X		; FE 08 FE
	sbc #$9B.b		; E9 9B
	trb $D6.b		; 14 D6
	xba		; EB
	sbc ($AC.b,X)		; E1 AC
	sbc ($E8.b),Y		; F1 E8
	inc $DB38.w,X		; FE 38 DB
	jsr $90D2.w		; 20 D2 90
	ora ($FE.b),Y		; 11 FE
	cpx #$DE.b		; E0 DE
	inc $F6BA.w,X		; FE BA F6
	sbc ($2E.b)		; F2 2E
	sty $E9.b		; 84 E9
	dec A		; 3A
	inc A		; 1A
	jmp.w [$FC72]		; DC 72 FC
	jsr ($7015.w,X)		; FC 15 70
	eor $1F05.w,Y		; 59 05 1F
	phk		; 4B
	tax		; AA
	cop $0F.b		; 02 0F
	ora $11.b		; 05 11
	lda #$FC.b		; A9 FC
	tax		; AA
	cpy $3E.b		; C4 3E
	sty $AE.b		; 84 AE
	ldy $4C.b,X		; B4 4C
	sbc $2B14.w,X		; FD 14 2B
	jsr ($3CFF.w,X)		; FC FF 3C
	sep #$89		; E2 89
	bmi  16.b		; 30 10
	inc A		; 1A
	php		; 08
	cld		; D8
	and $FC10.w		; 2D 10 FC
	ora ($72.b),Y		; 11 72
	sta ($03.b,X)		; 81 03
	ora $DE.b,S		; 03 DE
	bit #$1F.b		; 89 1F
	ply		; 7A
	sta ($F9.b,X)		; 81 F9
	tax		; AA
	jsr ($E920.w,X)		; FC 20 E9
	ldy #$80.b		; A0 80
	rts		; 60

	rti		; 40

	jsr ($0AF8.w,X)		; FC F8 0A
	and $34B9.w		; 2D B9 34
	and #$55.b		; 29 55
	sta $FC.b,S		; 83 FC
	sed		; F8
	ora #$80.b		; 09 80
	cpx #$D8.b		; E0 D8
	ora $D1E0.w		; 0D E0 D1
	inc $0EF8.w,X		; FE F8 0E
	ora ($DB.b),Y		; 11 DB
	ldx $6CFE.w,Y		; BE FE 6C
	dey		; 88
	ora #$F1.b		; 09 F1
	inc $8B4A.w,X		; FE 4A 8B
	ldx $80FE.w,Y		; BE FE 80
	inc $FEFE.w,X		; FE FE FE
	dec A		; 3A
	txa		; 8A
	rol $6C.b,X		; 36 6C
	rol $6C.b		; 26 6C
	ora [$6D.b]		; 07 6D
	inc $25FC.w,X		; FE FC 25
	adc $6D21.w		; 6D 21 6D
	ora ($50.b,S),Y		; 13 50
	eor $00.b,X		; 55 00
	inc $FE12.w,X		; FE 12 FE
	sed		; F8
	asl A		; 0A
	sbc ($E8.b,X)		; E1 E8
	asl $F0A0.w		; 0E A0 F0
	bpl -30.b		; 10 E2
	cmp [$FE.b],Y		; D7 FE
	sbc $D079.w,X		; FD 79 D0
	ora $38.b,X		; 15 38
	asl A		; 0A
	inc $D1F3.w,X		; FE F3 D1
	inc $7179.w,X		; FE 79 71
	inc $21FF.w,X		; FE FF 21
	dex		; CA
	brk $D1.b		; 00 D1
	inc $FE10.w,X		; FE 10 FE
	clc		; 18
	cmp $FFAA.w,Y		; D9 AA FF
	inc $F6A8.w,X		; FE A8 F6
	inc $40FC.w,X		; FE FC 40
	sbc #$FE.b		; E9 FE
	sed		; F8
	asl $0E1E.w		; 0E 1E 0E
	ora $0E0D.w,X		; 1D 0D 0E
	asl $0F.b		; 06 0F
	jsr ($072A.w,X)		; FC 2A 07
	jsr ($0502.w,X)		; FC 02 05
	ora ($01.b,X)		; 01 01
	ldy $F5F1.w		; AC F1 F5
	sta ($D2.b),Y		; 91 D2
	lda $553A.w,Y		; B9 3A 55
	jsr ($D96F.w,X)		; FC 6F D9
	rts		; 60

	rti		; 40

	inc $D220.w,X		; FE 20 D2
	lda ($DC.b),Y		; B1 DC
	pea $8B83.w		; F4 83 8B
	and ($AB.b,S),Y		; 33 AB
	cpy #$FF.b		; C0 FF
	jmp.w [$14F6]		; DC F6 14
	tsb $1E.b		; 04 1E
	adc $A58B.w,Y		; 79 8B A5
	jsr ($0C1C.w,X)		; FC 1C 0C
.INDEX 8
	sep #$59		; E2 59
	jsr ($AC0B.w,X)		; FC 0B AC
	sbc ($FC.b),Y		; F1 FC
	cmp $46.b		; C5 46
	ora $0F.b,S		; 03 0F
	sbc ($E9.b,S),Y		; F3 E9
	jsr ($64E0.w,X)		; FC E0 64
	sbc [$E0.b],Y		; F7 E0
	tsx		; BA
	bpl  65.b		; 10 41
	cpy #$64.b		; C0 64
	beq  10.b		; F0 0A
	tsx		; BA
	jsr ($C177.w,X)		; FC 77 C1
	bcs -126.b		; B0 82
	ror A		; 6A
	lda [$F1.b],Y		; B7 F1
	clv		; B8
	lsr $4591.w,X		; 5E 91 45
	tyx		; BB
	sbc $28.b,X		; F5 28
	cli		; 58
	ldy #$93.b		; A0 93
	ldy $D3.b		; A4 D3
	sta ($FF.b,X)		; 81 FF
	ldy $0EF1.w		; AC F1 0E
	sbc $D0B87A.l		; EF 7A B8 D0
	jsr ($0037.w,X)		; FC 37 00
	dec A		; 3A
	sbc ($92.b),Y		; F1 92
	sbc $0E.b,X		; F5 0E
	inc $F4.b		; E6 F4
	eor $FF.b,X		; 55 FF
	php		; 08
	php		; 08
	cpx #$8A.b		; E0 8A
	sta ($48.b,X)		; 81 48
	ora $5062.w		; 0D 62 50
	phd		; 0B
	sbc $073B.w,Y		; F9 3B 07
	ora #$4D.b		; 09 4D
	phd		; 0B
	eor $FF1B.w		; 4D 1B FF
	ora [$CD.b],Y		; 17 CD
	eor ($C4.b)		; 52 C4
	ror $80.b,X		; 76 80
	sbc ($06.b,S),Y		; F3 06
	and [$C3.b],Y		; 37 C3
	.db $82, $01, $32		; 82 01 32
	stz $FEE1.w		; 9C E1 FE
	txa		; 8A
	inc $003B.w,X		; FE 3B 00
	tda		; 7B
	tsb $E3.b		; 04 E3
	asl $B803.w,X		; 1E 03 B8
	.db $62, $86, $F0		; 62 86 F0
	ora #$0A.b		; 09 0A
	cmp $64.b,X		; D5 64
.ACCU 16
.INDEX 16
	rep #$B0		; C2 B0
	phd		; 0B
	adc $F1.b,X		; 75 F1
	sbc ($E0.b),Y		; F1 E0
	sty $3CF2.w		; 8C F2 3C
	cmp ($9C.b,X)		; C1 9C
	phb		; 8B
	ply		; 7A
	jmp $B92D15.l		; 5C 15 2D B9
	ror $C8.b		; 66 C8
	ora #$0101.w		; 09 01 01
	asl $E376.w		; 0E 76 E3
	cmp ($AD.b,X)		; C1 AD
	dex		; CA
	ora $FEB4.w,Y		; 19 B4 FE
	jsr ($F9C3.w,X)		; FC C3 F9
	sbc $DD0CF8.l,X		; FF F8 0C DD
	cmp ($60.b),Y		; D1 60
	lda $D24B5E.l		; AF 5E 4B D2
	dec $EF10.w,X		; DE 10 EF
	mvp $9B,$62		; 44 62 9B
	.db $62, $C2, $C3		; 62 C2 C3
	txa		; 8A
	bmi  24.b		; 30 18
	jmp $25F520.l		; 5C 20 F5 25
	sbc $BC.b,X		; F5 BC
	and ($F2.b,S),Y		; 33 F2
	and $D0ECA2.l		; 2F A2 EC D0
	asl A		; 0A
	ora ($E1.b,S),Y		; 13 E1
	sta [$89.b],Y		; 97 89
	bcs   0.b		; B0 00
	sta [$54.b],Y		; 97 54
	clc		; 18
	cpx #$7084.w		; E0 84 70
	plp		; 28
	rtl		; 6B

	txy		; 9B
	and $D68B.w		; 2D 8B D6
	sbc ($B6.b),Y		; F1 B6
	bit #$7F87.w		; 89 87 7F
	ror $52.b		; 66 52
	tsb $6204.w		; 0C 04 62
	ora #$3A00.w		; 09 00 3A
	ora ($51.b,X)		; 01 51
	asl $044B.w		; 0E 4B 04
	eor ($55.b),Y		; 51 55
	eor #$ADD2.w		; 49 D2 AD
	sbc [$84.b]		; E7 84
	cmp [$F1.b]		; C7 F1
	sty $89F2.w		; 8C F2 89
	txs		; 9A
	inc $FDFF.w,X		; FE FF FD
	eor $F348.w,Y		; 59 48 F3
	cmp $301298.l,X		; DF 98 12 30
	bpl  88.b		; 10 58
	bvc -36.b		; 50 DC
	sei		; 78
	sta $8E21.w,X		; 9D 21 8E
	ora $0A581E.l,X		; 1F 1E 58 0A
	bvc -56.b		; 50 C8
	jsr $FE90.w		; 20 90 FE
	rti		; 40

	bne  32.b		; D0 20
	bvc  62.b		; 50 3E
	cop $FE.b		; 02 FE
	bpl  64.b		; 10 40
	bmi 104.b		; 30 68
	bmi  65.b		; 30 41
	inc $BA1D.w,X		; FE 1D BA
	cpx $20.b		; E4 20
	php		; 08
	jsr $1CE1.w		; 20 E1 1C
	trb $F8.b		; 14 F8
	phd		; 0B
	ora $FE02.w		; 0D 02 FE
	lda [$81.b],Y		; B7 81
	and $88.b,X		; 35 88
	tya		; 98
	bpl  32.b		; 10 20
	bne -110.b		; D0 92
	cpx $FEE3.w		; EC E3 FE
	eor $BE.b,X		; 55 BE
	lda ($F0.b,X)		; A1 F0
	lda ($80.b,X)		; A1 80
	pld		; 2B
	sbc $7E693C.l,X		; FF 3C 69 7E
	ror $B65C.w,X		; 7E 5C B6
	adc ($88.b)		; 72 88
	inc A		; 1A
	sbc $1C5828.l,X		; FF 28 58 1C
	sec		; 38
	php		; 08
	sbc $3C3CC3.l,X		; FF C3 3C 3C
	trb $1C0A.w		; 1C 0A 1C
	clc		; 18
	asl $0E0B.w		; 0E 0B 0E
	cop $0F.b		; 02 0F
	pea $ED18.w		; F4 18 ED
	cpx #$087E.w		; E0 7E 08
	stz $0879.w,X		; 9E 79 08
	.db $42, $69		; 42 69
	asl A		; 0A
	ora $A0008F.l,X		; 1F 8F 00 A0
	trb $5582.w		; 1C 82 55
	sbc $820F.w,X		; FD 0F 82
	ldy #$E0A6.w		; A0 A6 E0
	and ($A0.b)		; 32 A0
	ldy #$9E0B.w		; A0 0B 9E
	stx $A1A0.w		; 8E A0 A1
	sbc $FD80.w,X		; FD 80 FD
	tsb $FF.b		; 04 FF
	pea $2499.w		; F4 99 24
	ora #$2965.w		; 09 65 29
	adc $94F9.w,Y		; 79 F9 94
	inc $EC.b,X		; F6 EC
	sta $776F9F.l,X		; 9F 9F 6F 77
	eor $0F.b,X		; 55 0F
	sbc [$07.b],Y		; F7 07
	cmp [$B6.b],Y		; D7 B6
	sbc ($8F.b),Y		; F1 8F
	sta $0B8C20.l		; 8F 20 8C 0B
	xba		; EB
	lsr $C1E9.w		; 4E E9 C1
	sbc ($6E.b),Y		; F1 6E
	plb		; AB
	sbc $FFFFE0.l,X		; FF E0 FF FF
	phd		; 0B
	sta ($F1.b)		; 92 F1
	ora $D2.b		; 05 D2
	cmp ($D4.b,X)		; C1 D4
	sbc ($BE.b,X)		; E1 BE
	inc $BAD8.w,X		; FE D8 BA
	sbc $0F03B1.l		; EF B1 03 0F
	ora ($0F.b,X)		; 01 0F
	ora [$59.b],Y		; 17 59
	clv		; B8
	lda $08F7.w		; AD F7 08
	adc $FF9285.l,X		; 7F 85 92 FF
	sbc $CACF.w,X		; FD CF CA
	jmp.w [$F4C2]		; DC C2 F4
	sta $2DF8.w,Y		; 99 F8 2D
	sbc $A037.w,X		; FD 37 A0
	lda $80.b,S		; A3 80
	cpx #$E0C3.w		; E0 C3 E0
	ora $E0CBFE.l,X		; 1F FE CB E0
	sta [$F0.b],Y		; 97 F0
	rol A		; 2A
	sed		; F8
	beq -123.b		; F0 85
	stx $9E2B.w		; 8E 2B 9E
	phy		; 5A
	cmp [$AF.b]		; C7 AF
	lda $B5E38D.l,X		; BF 8D E3 B5
.ACCU 16
	rep #$A3		; C2 A3
	rts		; 60

	plb		; AB
	.db $42, $A8		; 42 A8
	ora #$F7D7.w		; 09 D7 F7
	phd		; 0B
	tas		; 1B
	php		; 08
	plp		; 28
	ora [$25.b]		; 07 25
	dec $A0E1.w		; CE E1 A0
	cpy #$FDA0.w		; C0 A0 FD
	sty $7E.b,X		; 94 7E
	jsl $10FF4A.l		; 22 4A FF 10
	eor $86.b,X		; 55 86
	rol $F1.b,X		; 36 F1
	inc $C0C7.w		; EE C7 C0
	bpl  70.b		; 10 46
	lda $A1FCFE.l		; AF FE FC A1
	lda $AA52.w		; AD 52 AA
	inc $621F.w,X		; FE 1F 62
	lda $40BF.w,Y		; B9 BF 40
	lda #$34F9.w		; A9 F9 34
	lda #$5500.w		; A9 00 55
	beq  -4.b		; F0 FC
	inc $3EFA.w,X		; FE FA 3E
	lda $FFB1.w		; AD B1 FF
	sed		; F8
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
	jsr ($0015.w,X)		; FC 15 00
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	cpy #$F000.w		; C0 00 F0
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
	inc $F7FF.w,X		; FE FF F7
	xce		; FB
	sbc $EFFBDF.l,X		; FF DF FB EF
	sbc $BBEFFF.l,X		; FF FF EF BB
	sbc $5FF3FA.l,X		; FF FA F3 5F
	inc $6A.b,X		; F6 6A
	eor $FFFF.w,Y		; 59 FF FF
	sbc $FDFF7F.l,X		; FF 7F FF FD
	lda [$EF.b],Y		; B7 EF
	adc $7DBFFD.l		; 6F FD BF 7D
	adc $33536B.l		; 6F 6B 53 33
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7BEFFF.l,X		; FF FF EF 7B
	xce		; FB
	sbc $7FAF5C.l,X		; FF 5C AF 7F
	cmp $FFBFFB.l		; CF FB BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFD.l,X		; FF FD FF FF
	inc $9FEC.w,X		; FE EC 9F
	xce		; FB
	sbc $FAF6.w		; ED F6 FA
	stx $33BF.w		; 8E BF 33
	sbc $FDFF.w		; ED FF FD
	tyx		; BB
	cmp $FFBFFB.l,X		; DF FB BF FF
	sbc $E3B7.w,X		; FD B7 E3
	lda $F971F3.l,X		; BF F3 71 F9
	lda $FFFF31.l,X		; BF 31 FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	adc [$CD.b],Y		; 77 CD
	sbc $CDF6.w,Y		; F9 F6 CD
	adc $EF.b,X		; 75 EF
	adc $FFC36D.l		; 6F 6D C3 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EBE5FF.l,X		; FF FF E5 EB
	sbc [$FB.b],Y		; F7 FB
	sbc $DB4DF3.l		; EF F3 4D DB
	ora $FFFFFB.l,X		; 1F FB FF FF
	sbc $7DFFF7.l,X		; FF F7 FF 7D
	sbc $CFDEAB.l		; EF AB DE CF
	adc $BD67D3.l		; 6F D3 67 BD
	sta $FF.b,S		; 83 FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $0DD9F3.l,X		; FF F3 D9 0D
	adc [$52.b],Y		; 77 52
	lda $717FF4.l,X		; BF F4 7F 71
	ora $FFFFFF.l,X		; 1F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFDFFF.l,X		; BF FF DF FF
	sbc $EDFFFF.l,X		; FF FF FF ED
	xce		; FB
	sbc $FFEE7F.l,X		; FF 7F EE FF
	ror $7E13.w,X		; 7E 13 7E
	adc $FFFF.w		; 6D FF FF
	cmp $EBFFFF.l,X		; DF FF FF EB
	xce		; FB
	adc $FBFF.w		; 6D FF FB
	adc $7F1FFA.l,X		; 7F FA 1F 7F
	tsa		; 3B
	clc		; 18
	sbc $FFDFFF.l,X		; FF FF DF FF
	lda $EBBFFF.l,X		; BF FF BF EB
	lda $FF.b,X		; B5 FF
	ora ($7E.b,X)		; 01 7E
	xce		; FB
	lda [$AD.b]		; A7 AD
	sbc #$FFFF.w		; E9 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FF7FFE.l,X		; FF FE 7F FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $CED5.w,X		; BD D5 CE
	sta $F6B84D.l,X		; 9F 4D B8 F6
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $DFFBDF.l,X		; FF DF FB DF
	sbc [$DE.b],Y		; F7 DE
	lda $776DED.l		; AF ED 6D 77
	dec $FFFF.w		; CE FF FF
	sbc $B76FDD.l,X		; FF DD 6F B7
	and $FFFFEF.l,X		; 3F EF FF FF
	cld		; D8
	sbc $2F9F.w		; ED 9F 2F
	inx		; E8
	inx		; E8
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	adc $F6F73D.l,X		; 7F 3D F7 F6
	xce		; FB
	eor ($A9.b,S),Y		; 53 A9
	and ($FF.b,S),Y		; 33 FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	inc $E6FF.w,X		; FE FF E6
	cmp $EDEFFF.l,X		; DF FF EF ED
	sbc $7796DB.l,X		; FF DB 96 77
	sbc $FBFFFF.l,X		; FF FF FF FB
	and $77FF.w,X		; 3D FF 77
	sbc [$9F.b]		; E7 9F
	sbc [$EE.b],Y		; F7 EE
	and $ECFB.w,X		; 3D FB EC
	dec $FF36.w,X		; DE 36 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FF7FFD.l,X		; 7F FD 7F FF
	xce		; FB
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc [$FF.b],Y		; F7 FF
	sbc $5D7D77.l		; EF 77 7D 5D
	sbc $BFEE.w,X		; FD EE BF
	sbc [$EA.b],Y		; F7 EA
	eor $FFAF7A.l,X		; 5F 7A AF FF
	sbc [$FD.b],Y		; F7 FD
	adc $FF6FBF.l,X		; 7F BF 6F FF
	adc $DB7A5F.l,X		; 7F 5F 7A DB
	ror $5F9C.w,X		; 7E 9C 5F
	sbc ($A7.b),Y		; F1 A7
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFF.w,X		; FD FF FF
	sta $FAF6FF.l,X		; 9F FF F6 FA
	plx		; FA
	eor $B3D36F.l,X		; 5F 6F D3 B3
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
	sbc $FEFDFF.l,X		; FF FF FD FE
	sbc $FBFFAF.l,X		; FF AF FF FB
	xce		; FB
	adc ($FF.b,S),Y		; 73 FF
	sbc $F4FBFF.l,X		; FF FF FB F4
	lda [$76.b]		; A7 76
	cpx $FFFF.w		; EC FF FF
	sbc $7AF57F.l,X		; FF 7F F5 7A
	sbc $CFEF6B.l,X		; FF 6B EF CF
	sbc $AE.b		; E5 AE
	adc $D3DE73.l,X		; 7F 73 DE D3
	sbc $FFFEDF.l,X		; FF DF FE FF
	sbc $FE7FFF.l,X		; FF FF 7F FE
	sbc $7EDBBB.l,X		; FF BB DB 7E
	inc $A2.b		; E6 A2
	pea $FF7E.w		; F4 7E FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FEFF.w,X		; FD FF FE
	sbc $7FFFFF.l,X		; FF FF FF 7F
	cmp $F5FFF7.l,X		; DF F7 FF F5
	sbc $87E5FD.l,X		; FF FD E5 87
	sta $FC9D.w,X		; 9D 9D FC
	phk		; 4B
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$F7.b],Y		; F7 F7
	sbc $BDEF.w,X		; FD EF BD
	tda		; 7B
	lda $90BA2E.l,X		; BF 2E BA 90
	eor ($4F.b)		; 52 4F
	sbc [$FF.b],Y		; F7 FF
	lda $DF7FFF.l,X		; BF FF 7F DF
	sbc ($FF.b,S),Y		; F3 FF
	inc $FF.b,X		; F6 FF
	cmp $BEBEFE.l,X		; DF FE BE BE
	plx		; FA
	wai		; CB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	ldx $DFF9.w		; AE F9 DF
	sbc $657A6E.l,X		; FF 6E 7A 65
	cmp $FEFDDF.l,X		; DF DF FD FE
	sbc [$BF.b]		; E7 BF
	sbc $E7FF7F.l,X		; FF 7F FF E7
	sbc $6B7BDF.l,X		; FF DF 7B 6B
	ldx $DC7E.w,Y		; BE 7E DC
	sbc $BDFBFE.l,X		; FF FE FB BD
	lda $FFFFFF.l,X		; BF FF FF FF
	cmp $BFD5BF.l,X		; DF BF D5 BF
	lda $39E4D6.l,X		; BF D6 E4 39
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	jsr ($F9FF.w,X)		; FC FF F9
	sbc [$BB.b]		; E7 BB
	adc $6F5B77.l,X		; 7F 77 5B 6F
	and $10DE.w,X		; 3D DE 10
	xce		; FB
	sbc $EFFEFF.l,X		; FF FF FE EF
	sbc $FBFF.w,X		; FD FF FB
	adc $9A8F.w		; 6D 8F 9A
	lda $EF5FDF.l,X		; BF DF 5F EF
	trb $DF.b		; 14 DF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FF7BD7.l,X		; FF D7 7B FF
	sbc ($5D.b,S),Y		; F3 5D
	sbc $FB.b,X		; F5 FB
	inc $D67B.w,X		; FE 7B D6
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EF5FDF.l,X		; FF DF 5F EF
	adc $7FFBFF.l,X		; 7F FF FB 7F
	cmp $FF47FF.l,X		; DF FF 47 FF
	sta $FFA96B.l,X		; 9F 6B A9 FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc [$6B.b],Y		; F7 6B
	sbc $367F5B.l,X		; FF 5B 7F 36
	sbc $7FC5FB.l,X		; FF FB C5 7F
	adc ($FF.b),Y		; 71 FF
	sbc $BEDFBF.l,X		; FF BF DF BE
	xce		; FB
	sbc $F8FEDE.l,X		; FF DE FE F8
	adc $BF3BC9.l,X		; 7F C9 3B BF
	phk		; 4B
	bit $FFFF.w		; 2C FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	jsr $0282.w		; 20 82 02
	cop $41.b		; 02 41
	brk $42.b		; 00 42
	brk $4F.b		; 00 4F
	and #$2E0A.w		; 29 0A 2E
	ora ($00.b,X)		; 01 00
	brk $04.b		; 00 04
	bra   0.b		; 80 00
	ora ($24.b),Y		; 11 24
	php		; 08
	asl $22.b,X		; 16 22
	ldy $4005.w		; AC 05 40
	brk $05.b		; 00 05
	bra  68.b		; 80 44
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $36.b		; 00 36
	jsl $025501.l		; 22 01 55 02
	pha		; 48
	.db $42, $43		; 42 43
	and #$0032.w		; 29 32 00
	cop $02.b		; 02 02
	bit $0E.b		; 24 0E
	rti		; 40

	clc		; 18
	sbc ($0C.b)		; F2 0C
	sta $36.b,S		; 83 36
	ldx $44AF.w,Y		; BE AF 44
	lda $000000.l,X		; BF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda ($00.b,X)		; A1 00
	.db $42, $20		; 42 20
	tsb $04.b		; 04 04
	trb $02.b		; 14 02
	jsr $1804.w		; 20 04 18
	brk $05.b		; 00 05
	brk $10.b		; 00 10
	brk $40.b		; 00 40
	rti		; 40

	bpl   0.b		; 10 00
	bmi   1.b		; 30 01
	rti		; 40

	bpl   0.b		; 10 00
	dey		; 88
	eor ($00.b,X)		; 41 00
	stx $00.b,Y		; 96 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	bra   8.b		; 80 08
	brk $88.b		; 00 88
	brk $02.b		; 00 02
	jsr $0CA0.w		; 20 A0 0C
	ldx $87.b,Y		; B6 87
	brk $00.b		; 00 00
	bra  33.b		; 80 21
	php		; 08
	sbc $10.b		; E5 10
	ldx $0432.w		; AE 32 04
	clc		; 18
	tsa		; 3B
	cop $97.b		; 02 97
	adc $000C.w,Y		; 79 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $01.b		; 04 01
	brk $00.b		; 00 00
	jsr $0080.w		; 20 80 00
	bmi -64.b		; 30 C0
	rti		; 40

	brk $24.b		; 00 24
	cpy #$CB40.w		; C0 40 CB
	brk $00.b		; 00 00
	brk $42.b		; 00 42
	rti		; 40

	bpl   0.b		; 10 00
	bra   2.b		; 80 02
	jsr $8801.w		; 20 01 88
	.db $62, $C0, $A2		; 62 C0 A2
	phd		; 0B
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $42.b		; 00 42
	bpl -126.b		; 10 82
	jmp $0444.w		; 4C 44 04
	stz $58.b		; 64 58
	ora ($45.b,X)		; 01 45
	brk $A2.b		; 00 A2
	asl $0446.w		; 0E 46 04
	plx		; FA
	bcs -108.b		; B0 94
	stx $18.b		; 86 18
	ora [$C1.b],Y		; 17 C1
	cmp [$6E.b],Y		; D7 6E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $00.b		; 04 00
	jsr $0000.w		; 20 00 00
	sty $28.b		; 84 28
	brk $09.b		; 00 09
	.db $62, $44, $C8		; 62 44 C8
	ora $8B.b,S		; 03 8B
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plp		; 28
	bra  40.b		; 80 28
	asl A		; 0A
	bra   0.b		; 80 00
	brk $12.b		; 00 12
	bmi  16.b		; 30 10
	asl $40.b		; 06 40
	brk $08.b		; 00 08
	tax		; AA
	brk $81.b		; 00 81
	rti		; 40

	php		; 08
	brk $90.b		; 00 90
	plp		; 28
	bit $01.b		; 24 01
	brk $00.b		; 00 00
	bit $96.b		; 24 96
	brk $00.b		; 00 00
	bpl  12.b		; 10 0C
	eor ($09.b,X)		; 41 09
	bcc  25.b		; 90 19
	cpy $820F.w		; CC 0F 82
	lda $74AE.w		; AD AE 74
	stz $00.b		; 64 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $20.b		; 02 20
	bra   0.b		; 80 00
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $11.b		; 00 11
	bpl  66.b		; 10 42
	ora #$86C0.w		; 09 C0 86
	bra   0.b		; 80 00
	rti		; 40

	php		; 08
	brk $0C.b		; 00 0C
	.db $82, $00, $91		; 82 00 91
	jsr $0012.w		; 20 12 00
	asl A		; 0A
	brk $66.b		; 00 66
	and #$0004.w		; 29 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $20.b		; 04 20
	brk $44.b		; 00 44
	tsb $12.b		; 04 12
	dey		; 88
	jsr $0DB0.w		; 20 B0 0D
	bit $30.b		; 24 30
	jsr $4D48.w		; 20 48 4D
	phd		; 0B
	ora [$0E.b]		; 07 0E
	clc		; 18
	tsb $08B2.w		; 0C B2 08
	sbc [$B4.b],Y		; F7 B4
	cmp $00005B.l		; CF 5B 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $0A.b		; 14 0A
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	ldy #$0080.w		; A0 80 00
	brk $00.b		; 00 00
	jsr $0071.w		; 20 71 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $02.b		; 00 02
	tsb $08.b		; 04 08
	bvc  72.b		; 50 48
	bra  20.b		; 80 14
	pha		; 48
	ora $3F20.w		; 0D 20 3F
	ora ($04.b,X)		; 01 04
	cop $48.b		; 02 48
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	rts		; 60

	dey		; 88
	brk $40.b		; 00 40
	asl $1112.w		; 0E 12 11
	ora ($88.b,X)		; 01 88
	rti		; 40

	bra -116.b		; 80 8C
	jsr $B202.w		; 20 02 B2
	ora $D1.b,X		; 15 D1
	cmp ($CE.b,S),Y		; D3 CE
	trb $14E3.w		; 1C E3 14
	dec $003E.w,X		; DE 3E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvp $80,$01		; 44 01 80
	brk $20.b		; 00 20
	brk $08.b		; 00 08
	brk $E4.b		; 00 E4
	ora ($84.b,X)		; 01 84
	rti		; 40

	jsr $08A8.w		; 20 A8 08
	brk $00.b		; 00 00
	rti		; 40

	cpy $00.b		; C4 00
	brk $00.b		; 00 00
	brk $21.b		; 00 21
	rts		; 60

	rol $90.b,X		; 36 90
	tya		; 98
	.db $42, $92		; 42 92
	.db $62, $00, $00		; 62 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	mvp $00,$81		; 44 81 00
	jsr $9050.w		; 20 50 90
	ora ($39.b,X)		; 01 39
	.db $42, $00		; 42 00
	brk $00.b		; 00 00
	pha		; 48
	sta $82.b,X		; 95 82
	eor $D880.w,Y		; 59 80 D8
	ora ($95.b,X)		; 01 95
	bvs -20.b		; 70 EC
	bit $8F.b,X		; 34 8F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $08.b		; 00 08
	jsr $0305.w		; 20 05 03
	rti		; 40

	brk $10.b		; 00 10
	tsb $40.b		; 04 40
	mvp $21,$80		; 44 80 21
	ldy $0000.w		; AC 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $78.b		; 02 78
	bmi  80.b		; 30 50
	trb $1300.w		; 1C 00 13
	and [$00.b]		; 27 00
	rti		; 40

	bra   0.b		; 80 00
	php		; 08
	php		; 08
	jsr $0900.w		; 20 00 09
	plp		; 28
	ora ($90.b)		; 12 90
	brk $45.b		; 00 45
	and $110196.l		; 2F 96 01 11
	rti		; 40

	ora ($40.b,X)		; 01 40
	clc		; 18
	tsb $7194.w		; 0C 94 71
	cmp [$4A.b]		; C7 4A
	.db $82, $B7, $9B		; 82 B7 9B
	inc $00A3.w		; EE A3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $40.b		; 00 40
	bra   6.b		; 80 06
	ora ($81.b,X)		; 01 81
	ora $74.b		; 05 74
	bpl   0.b		; 10 00
	brk $04.b		; 00 04
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	ora $40.b		; 05 40
	lsr A		; 4A
	bit $50.b,X		; 34 50
	ora ($14.b)		; 12 14
	tsb $24.b		; 04 24
	brk $03.b		; 00 03
	brk $10.b		; 00 10
	mvp $00,$00		; 44 00 00
	cop $00.b		; 02 00
	ora $60.b,S		; 03 60
	cpy $28.b		; C4 28
	ora ($00.b)		; 12 00
	php		; 08
	eor ($53.b,X)		; 41 53
	php		; 08
	eor ($98.b,S),Y		; 53 98
	sta $2E8BE1.l		; 8F E1 8B 2E
	sta ($71.b,S),Y		; 93 71
	bit $EB.b,X		; 34 EB
	tyx		; BB
	sbc $0000AE.l		; EF AE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $10.b		; 00 10
	bpl   0.b		; 10 00
	bra  48.b		; 80 30
	rti		; 40

	ldy #$8250.w		; A0 50 82
	and $94.b		; 25 94
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	brk $01.b		; 00 01
	brk $08.b		; 00 08
	sty $80.b		; 84 80
	brk $60.b		; 00 60
	ldy #$8882.w		; A0 82 88
	mvn $00,$00		; 54 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	ora ($60.b,X)		; 01 60
	dey		; 88
	ror $80.b		; 66 80
	jsr $A564.w		; 20 64 A5
	bne  12.b		; D0 0C
	jsl $40000C.l		; 22 0C 00 40
	bvs   0.b		; 70 00
	ora $08.b,S		; 03 08
	adc ($22.b)		; 72 22
	inc $91.b,X		; F6 91
	tyx		; BB
	plb		; AB
	sta $0000.w,Y		; 99 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $00.b		; 04 00
	jsr $0A08.w		; 20 08 0A
	php		; 08
	dex		; CA
	ora ($40.b,X)		; 01 40
	brk $C2.b		; 00 C2
	adc ($A2.b),Y		; 71 A2
	sta ($91.b,X)		; 81 91
	jsr $0040.w		; 20 40 00
	tsb $04.b		; 04 04
	tsb $03.b		; 04 03
	lsr $00.b		; 46 00
	bra -59.b		; 80 C5
	bpl   8.b		; 10 08
	bra  64.b		; 80 40
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  16.b		; 80 10
	clc		; 18
	brk $20.b		; 00 20
	sty $00.b		; 84 00
	php		; 08
	bit $80.b,X		; 34 80
	jsr $01ED.w		; 20 ED 01
	brk $00.b		; 00 00
	bcc   4.b		; 90 04
	eor $7837.w		; 4D 37 78
	sta $EACA95.l		; 8F 95 CA EA
	phy		; 5A
	inc $BD.b,X		; F6 BD
	xba		; EB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	eor #$8640.w		; 49 40 86
	jsr $8800.w		; 20 00 88
	bpl  64.b		; 10 40
	and ($11.b,X)		; 21 11
	ldx #$1009.w		; A2 09 10
	cop $20.b		; 02 20
	brk $90.b		; 00 90
	brk $02.b		; 00 02
	.db $82, $10, $1A		; 82 10 1A
	jsr $9012.w		; 20 12 90
	and $82.b,S		; 23 82
	and #$0000.w		; 29 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	asl A		; 0A
	rts		; 60

	brk $02.b		; 00 02
	brk $00.b		; 00 00
	ora [$8D.b]		; 07 8D
	brk $93.b		; 00 93
	clc		; 18
	bra   0.b		; 80 00
	jsr $0883.w		; 20 83 08
	brk $01.b		; 00 01
	and $124E.w		; 2D 4E 12
	mvn $84,$F5		; 54 F5 84
	trb $00DB.w		; 1C DB 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bit $45.b		; 24 45
	brk $00.b		; 00 00
	rti		; 40

	cop $A1.b		; 02 A1
	php		; 08
	tsb $08.b		; 04 08
	eor ($00.b)		; 52 00
	brk $00.b		; 00 00
	.db $82, $00, $00		; 82 00 00
	ora ($00.b,X)		; 01 00
	ora ($08.b,X)		; 01 08
	lsr $50.b		; 46 50
	rts		; 60

	jsl $00C1C0.l		; 22 C0 C1 00
	brk $18.b		; 00 18
	rti		; 40

	rol A		; 2A
	brk $20.b		; 00 20
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	sta ($80.b,X)		; 81 80
	cmp $02.b,S		; C3 02
	adc #$7021.w		; 69 21 70
	rts		; 60

	dec $28.b,X		; D6 28
	jsr $B4A2.w		; 20 A2 B4
	bcc -67.b		; 90 BD
	sta ($2F.b)		; 92 2F
	sbc $16.b		; E5 16
	inc $00F2.w,X		; FE F2 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	bpl -94.b		; 10 A2
	bit $78.b		; 24 78
	ora $04.b,S		; 03 04
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
	bpl   4.b		; 10 04
	brk $81.b		; 00 81
	ora #$1303.w		; 09 03 13
	jsr $C201.w		; 20 01 C2
	and [$00.b],Y		; 37 00
	brk $10.b		; 00 10
	jsr $8000.w		; 20 00 80
	tsb $00.b		; 04 00
	rti		; 40

	rti		; 40

	brk $42.b		; 00 42
	cop $5A.b		; 02 5A
	ora $00082D.l,X		; 1F 2D 08 00
	asl A		; 0A
	brk $88.b		; 00 88
	cmp $10.b		; C5 10
	sta ($42.b)		; 92 42
	ora $48E78C.l		; 0F 8C E7 48
	sbc $B786.w		; ED 86 B7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $00.b		; 04 00
	eor ($02.b,X)		; 41 02
	bit $44.b		; 24 44
	tsb $42.b		; 04 42
	sty $60.b,X		; 94 60
	sta ($00.b,S),Y		; 93 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	cop $10.b		; 02 10
	stz $9442.w		; 9C 42 94
	brk $01.b		; 00 01
	ldy #$5060.w		; A0 60 50
	lda ($04.b)		; B2 04
	brk $00.b		; 00 00
	ora ($40.b,X)		; 01 40
	brk $00.b		; 00 00
	bit $48.b		; 24 48
	rti		; 40

	tsb $28.b		; 04 28
	ora ($83.b),Y		; 11 83
	jmp $0228.w		; 4C 28 02
	tsb $0D02.w		; 0C 02 0D
	ora $8E.b,X		; 15 8E
	ldy #$2813.w		; A0 13 28
	stz $85AF.w,X		; 9E AF 85
	clv		; B8
	ldx $FB.b,Y		; B6 FB
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $00.b		; A4 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	php		; 08
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	cop $01.b		; 02 01
	lsr $9C.b,X		; 56 9C
	inc $4000.w,X		; FE 00 40
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $82.b		; 00 82
	eor $82.b,X		; 55 82
	php		; 08
	lda $00.b,X		; B5 00
	brk $01.b		; 00 01
	rti		; 40

	brk $01.b		; 00 01
	brk $14.b		; 00 14
	bmi -128.b		; 30 80
	bpl   0.b		; 10 00
	and ($BA.b,X)		; 21 BA
	ora [$06.b]		; 07 06
	ora ($CA.b),Y		; 11 CA
	bcc   1.b		; 90 01
	phd		; 0B
	bpl -122.b		; 10 86
	rti		; 40

	asl $7D.b		; 06 7D
	cpx $31.b		; E4 31
	cmp $AF.b		; C5 AF
	.db $9D		; Opcode 9D overrunning bank boundry at 21FFFE. Skipping.
	.db $FE		; Opcode FE overrunning bank boundry at 21FFFF. Skipping.
.ENDS
