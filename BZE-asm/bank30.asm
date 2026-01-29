.BANK 30 SLOT 0
.ORG $0000

.SECTION "Bank30" FORCE

	lda $006D.w		; AD 6D 00
	sbc $0221F8.l,X		; FF F8 21 02
	inc $12F8.w,X		; FE F8 12
	sbc $FE04FE.l,X		; FF FE 04 FE
	sed		; F8
	asl A		; 0A
	asl $E2.b		; 06 E2
	sed		; F8
	asl A		; 0A
	rti		; 40

	adc $FEB5.w		; 6D B5 FE
	sed		; F8
	trb $FF.b		; 14 FF
	sed		; F8
	and $FE01.w,X		; 3D 01 FE
	sed		; F8
	trb $FE09.w		; 1C 09 FE
	sed		; F8
	clc		; 18
	cpx #$FC.b		; E0 FC
	sbc $801EF8.l,X		; FF F8 1E 80
	tax		; AA
	rol A		; 2A
	inc $18F8.w,X		; FE F8 18
	sbc $122AF8.l,X		; FF F8 2A 12
	sed		; F8
	ora $F8E8.w,Y		; 19 E8 F8
	ora ($EC.b,S),Y		; 13 EC
	sed		; F8
	ora $F810.w,X		; 1D 10 F8
	ora $9A.b,X		; 15 9A
	sbc ($98.b)		; F2 98
	beq   9.b		; F0 09
	bcc -86.b		; 90 AA
	inc $FEF2.w,X		; FE F2 FE
	sed		; F8
	ora ($4E.b),Y		; 11 4E
	beq  19.b		; F0 13
	inc $27F8.w,X		; FE F8 27
	ldx $15F8.w		; AE F8 15
	brk $21.b		; 00 21
	inc $4DF8.w,X		; FE F8 4D
	dec A		; 3A
	sbc $40FE08.l,X		; FF 08 FE 40
	lsr $32.b		; 46 32
	inc $FE60.w,X		; FE 60 FE
	sed		; F8
	inc $09FD.w,X		; FE FD 09
	tay		; A8
	ldx #$FC.b		; A2 FC
	phx		; DA
	inx		; E8
	rol $E8D4.w,X		; 3E D4 E8
	ora ($E6.b),Y		; 11 E6
	inx		; E8
	ora $F8FE.w,Y		; 19 FE F8
	ora #$72.b		; 09 72
	tax		; AA
	eor ($EA.b)		; 52 EA
	beq  34.b		; F0 22
	tsb $E8.b		; 04 E8
	ora $E86A.w		; 0D 6A E8
	ora ($94.b,S),Y		; 13 94
	sed		; F8
	and $66.b,S		; 23 66
	inx		; E8
	trb $82.b		; 14 82
	inx		; E8
	trb $05DA.w		; 1C DA 05
	txy		; 9B
	lda $FE.b,X		; B5 FE
	sed		; F8
	inc A		; 1A
	eor $FE.b		; 45 FE
	sed		; F8
	tsb $FE44.w		; 0C 44 FE
	jmp ($FEE6.w)		; 6C E6 FE
	sed		; F8
	ora #$86.b		; 09 86
	tax		; AA
	eor $FE.b,X		; 55 FE
	sed		; F8
	asl $E8C8.w		; 0E C8 E8
	ora $0C.b,X		; 15 0C
	cpx #$0F.b		; E0 0F
	clc		; 18
	cpx #$0F.b		; E0 0F
	sed		; F8
	beq   9.b		; F0 09
	.db $42, $1E		; 42 1E
	cpx #$42.b		; E0 42
	and ($E0.b)		; 32 E0
	ora $55F268.l,X		; 1F 68 F2 55
	eor $FE.b,X		; 55 FE
	inc $F0C6.w,X		; FE C6 F0
	ora $26E03A.l		; 0F 3A E0 26
	stx $F8.b		; 86 F8
	inc A		; 1A
	ldy $19F0.w,X		; BC F0 19
	inc $98FC.w,X		; FE FC 98
	beq  15.b		; F0 0F
	ldx $D8.b,Y		; B6 D8
	bit $55.b		; 24 55
	eor $9A.b,X		; 55 9A
	cld		; D8
	and ($D6.b),Y		; 31 D6
	beq  56.b		; F0 38
	cpx $F8.b		; E4 F8
	ora [$FF.b],Y		; 17 FF
	sed		; F8
	sta $F028.w,X		; 9D 28 F0
	ora $0DF026.l		; 0F 26 F0 0D
	inc $4DF8.w,X		; FE F8 4D
	stz $09F8.w		; 9C F8 09
	sta $AA.b,X		; 95 AA
	bit $34EA.w		; 2C EA 34
	inc $F032.w		; EE 32 F0
	phd		; 0B
	inc $5041.w,X		; FE 41 50
	iny		; C8
	mvn $F8,$FF		; 54 FF F8
	and ($AA.b,S),Y		; 33 AA
	eor $9E.b,X		; 55 9E
	cpy #$11.b		; C0 11
	cpx $11F8.w		; EC F8 11
	sei		; 78
	cpy #$13.b		; C0 13
	sbc $2C4BF8.l,X		; FF F8 4B 2C
	cpy #$0B.b		; C0 0B
	sty $FE.b		; 84 FE
	sbc $D8C6.w,X		; FD C6 D8
	ora $0BF8DC.l		; 0F DC F8 0B
	eor $55.b,X		; 55 55
	inc $11F8.w,X		; FE F8 11
	inc A		; 1A
	inc $F8.b,X		; F6 F8
	bne  50.b		; D0 32
	pei ($E0.b)		; D4 E0
	tas		; 1B
	inc $14E0.w		; EE E0 14
	inx		; E8
	bne  27.b		; D0 1B
	inc $19F8.w,X		; FE F8 19
	dec $ADE0.w		; CE E0 AD
	eor $D5.b,X		; 55 D5
	sbc $A62BF8.l,X		; FF F8 2B A6
	cpx #$0D.b		; E0 0D
	inc $11F8.w,X		; FE F8 11
	cpy $F6.b		; C4 F6
	sty $F0.b		; 84 F0
	ora #$58.b		; 09 58
	beq  47.b		; F0 2F
	iny		; C8
	beq 113.b		; F0 71
	bvs -64.b		; 70 C0
	ora ($DA.b),Y		; 11 DA
	trb $FE0A.w		; 1C 0A FE
	sed		; F8
	stz $92.b		; 64 92
	sbc $FE80.w,X		; FD 80 FE
	jsr ($FE06.w,X)		; FC 06 FE
	tsb $55.b		; 04 55
	eor $FE.b,X		; 55 FE
	pha		; 48
	bne  39.b		; D0 27
	.db $62, $EE, $DC		; 62 EE DC
	cpx #$17.b		; E0 17
	ror $E0.b		; 66 E0
	tsa		; 3B
	inc $11F8.w,X		; FE F8 11
	jsr ($43A8.w,X)		; FC A8 43
	phx		; DA
	beq  57.b		; F0 39
	eor $55.b,X		; 55 55
	sbc ($B8.b)		; F2 B8
	ora ($B4.b,S),Y		; 13 B4
	bne  29.b		; D0 1D
	sta ($F8.b)		; 92 F8
	and [$84.b]		; 27 84
	tya		; 98
	ora ($4E.b),Y		; 11 4E
	tay		; A8
	ora $FC.b,X		; 15 FC
	sbc ($16.b)		; F2 16
	cpx #$21.b		; E0 21
	adc ($F4.b)		; 72 F4
	eor $55.b,X		; 55 55
	cld		; D8
	beq  16.b		; F0 10
	tsb $38A0.w		; 0C A0 38
	sbc $A4D1F8.l,X		; FF F8 D1 A4
	beq  10.b		; F0 0A
	asl $ED.b		; 06 ED
	inc $A6FF.w,X		; FE FF A6
	tya		; 98
	bit $88BC.w,X		; 3C BC 88
	ora [$F5.b],Y		; 17 F5
	sta $0DD030.l		; 8F 30 D0 0D
	bne -56.b		; D0 C8
	sec		; 38
	xba		; EB
	bne  28.b		; D0 1C
	php		; 08
	tsb $04.b		; 04 04
	cop $06.b		; 02 06
	brk $03.b		; 00 03
	sta $E0.b,X		; 95 E0
	sbc $43.b,X		; F5 43
	phx		; DA
	cmp $FC.b,X		; D5 FC
	nop		; EA
	beq -26.b		; F0 E6
	asl $27.b		; 06 27
	sbc $FF.b,S		; E3 FF
	and [$19.b]		; 27 19
	ora $8CDD.w,X		; 1D DD 8C
	bra -64.b		; 80 C0
	bra -96.b		; 80 A0
	bpl  24.b		; 10 18
	php		; 08
	asl $DF87.w		; 0E 87 DF
	brk $27.b		; 00 27
	jsr $F83D.w		; 20 3D F8
	brk $8C.b		; 00 8C
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	lsr $E9.b		; 46 E9
	.db $42, $90		; 42 90
	jsr $E385.w		; 20 85 E3
	bne   1.b		; D0 01
	sbc $21935E.l,X		; FF 5E 93 21
	rts		; 60

	beq -17.b		; F0 EF
	cop $C2.b		; 02 C2
	beq -128.b		; F0 80
	lda ($E1.b,X)		; A1 E1
	and $E8.b		; 25 E8
	ora $8360CC.l		; 0F CC 60 83
	sed		; F8
	asl $D882.w		; 0E 82 D8
	jsr $4140.w		; 20 40 41
	bit $2010.w,X		; 3C 10 20
	lda $09F8F0.l		; AF F0 F8 09
	jmp.w [$0030]		; DC 30 00
	trb $F065.w		; 1C 65 F0
	sbc ($E0.b,S),Y		; F3 E0
	adc ($75.b,S),Y		; 73 75
	ora $C020CA.l		; 0F CA 20 C0
	rti		; 40

	eor [$50.b]		; 47 50
	ldy $EF.b		; A4 EF
	tsb $0700.w		; 0C 00 07
	jmp.w [$9980]		; DC 80 99
	lda $F4.b		; A5 F4
	bvs  16.b		; 70 10
	cmp $6920.w		; CD 20 69
	plx		; FA
	cmp #$81.b		; C9 81
	sbc $B9.b,X		; F5 B9
	jsr ($FCEF.w,X)		; FC EF FC
	cmp ($17.b,X)		; C1 17
	brk $C7.b		; 00 C7
	sbc $01.b,X		; F5 01
	asl $B2.b		; 06 B2
	beq  10.b		; F0 0A
	sbc ($66.b)		; F2 66
	rti		; 40

	tsb $2C.b		; 04 2C
	and ($F1.b),Y		; 31 F1
	sbc $EED6.w,X		; FD D6 EE
	sei		; 78
	php		; 08
	.db $42, $0C		; 42 0C
	ora $F63830.l		; 0F 30 38 F6
	rts		; 60

	bit $8C.b,X		; 34 8C
	ldy $01C6.w		; AC C6 01
	ora $A0.b,S		; 03 A0
	ora $E52C00.l		; 0F 00 2C E5
	beq -110.b		; F0 92
	dec $FAF5.w,X		; DE F5 FA
	and ($44.b,X)		; 21 44
	adc [$3A.b],Y		; 77 3A
	beq -16.b		; F0 F0
	sed		; F8
	sed		; F8
	dec $CC.b,X		; D6 CC
	ora ($61.b,X)		; 01 61
	inc $14.b		; E6 14
	trb $10.b		; 14 10
	asl $FFC2.w		; 0E C2 FF
	tsb $9B08.w		; 0C 08 9B
	phb		; 8B
	sbc ($EF.b,S),Y		; F3 EF
	trb $4587.w		; 1C 87 45
	php		; 08
	clc		; 18
	tsb $AD1C.w		; 0C 1C AD
	asl $06.b		; 06 06
	inc $EFF3.w		; EE F3 EF
	tsb $0B.b		; 04 0B
	sty $7EFF.w		; 8C FF 7E
	sbc ($21.b,X)		; E1 21
	cpx $F4.b		; E4 F4
	bne -31.b		; D0 E1
	cpy $EF.b		; C4 EF
	ora $6E.b,S		; 03 6E
	sep #$01		; E2 01
	and ($F3.b,X)		; 21 F3
	rol $9F20.w		; 2E 20 9F
	sbc $50809C.l,X		; FF 9C 80 50
	bvs -124.b		; 70 84
	sty $E6.b		; 84 E6
	ora $0E.b,S		; 03 0E
	asl $3F1F.w		; 0E 1F 3F
	ror $F08F.w,X		; 7E 8F F0
	inc $FE8E.w,X		; FE 8E FE
	ora $87.b,S		; 03 87
	adc $74.b		; 65 74
	ora $33.b,S		; 03 33
	and ($FF.b),Y		; 31 FF
	sbc $70181C.l,X		; FF 1C 18 70
	bvs -64.b		; 70 C0
	iny		; C8
	php		; 08
	tsb $040C.w		; 0C 0C 04
	bra -102.b		; 80 9A
	asl $0A.b		; 06 0A
	asl $F03F.w		; 0E 3F F0
	sbc ($04.b),Y		; F1 04
	ldx #$78.b		; A2 78
	jsr $80E8.w		; 20 E8 80
	sty $9EEE.w		; 8C EE 9E
	trb $4601.w		; 1C 01 46
	asl $A602.w,X		; 1E 02 A6
	.db $42, $05		; 42 05
	ora $A1.b,S		; 03 A1
	and ($02.b),Y		; 31 02
	sta ($F1.b,X)		; 81 F1
	sta ($07.b)		; 92 07
	sbc $EFA042.l,X		; FF 42 A0 EF
	ldx #$A0.b		; A2 A0
	jsr ($90ED.w,X)		; FC ED 90
	bcc  10.b		; 90 0A
	asl A		; 0A
	bit #$F1.b		; 89 F1
	cpy #$61.b		; C0 61
	ldy $3030.w,X		; BC 30 30
	plx		; FA
	.db $42, $42		; 42 42
	sta $98.b,S		; 83 98
	tsb $0E.b		; 04 0E
	cmp $B0.b,S		; C3 B0
	sei		; 78
	sbc ($40.b)		; F2 40
	bvs  -5.b		; 70 FB
	sta ($C3.b,X)		; 81 C3
	cld		; D8
	ora ($0C.b)		; 12 0C
	rol $2F14.w		; 2E 14 2F
.INDEX 8
	sep #$52		; E2 52
	sbc ($04.b),Y		; F1 04
	rti		; 40

	eor $F2.b,X		; 55 F2
	sed		; F8
	asl $E31F.w,X		; 1E 1F E3
	lda $F070.w,X		; BD 70 F0
	eor $F2.b		; 45 F2
	lda ($C0.b,X)		; A1 C0
	tsb $EAFA.w		; 0C FA EA
	sbc ($86.b),Y		; F1 86
	bpl  50.b		; 10 32
	sty $C6.b		; 84 C6
	ldy #$FE.b		; A0 FE
	sbc ($E6.b,X)		; E1 E6
	sbc ($78.b),Y		; F1 78
	sbc $870FD3.l		; EF D3 0F 87
	ora ($33.b,X)		; 01 33
	stz $E012.w,X		; 9E 12 E0
	bra -103.b		; 80 99
	ora $29.b		; 05 29
	bmi -124.b		; 30 84
	asl $8102.w		; 0E 02 81
	ora #$FD.b		; 09 FD
	ora ($EE.b)		; 12 EE
	sbc $60F2BF.l,X		; FF BF F2 60
	sbc $3D10.w,Y		; F9 10 3D
	ora ($1D.b,X)		; 01 1D
	ora ($0D.b,X)		; 01 0D
	brk $89.b		; 00 89
	brk $99.b		; 00 99
	brk $13.b		; 00 13
	ora [$51.b]		; 07 51
	stz $08F2.w,X		; 9E F2 08
	dey		; 88
	brk $FE.b		; 00 FE
	cmp #$D9.b		; C9 D9
	ora $00.b,S		; 03 00
	plx		; FA
	bpl 117.b		; 10 75
	rol A		; 2A
	beq  -3.b		; F0 FD
	sbc ($F0.b)		; F2 F0
	pea $EBDD.w		; F4 DD EB
	rti		; 40

	cpy #$95.b		; C0 95
	rol $E9BC.w,X		; 3E BC E9
	inc A		; 1A
	stx $D6.b		; 86 D6
	cpx $02F0.w		; EC F0 02
	brk $21.b		; 00 21
	php		; 08
	clc		; 18
	phb		; 8B
	rol A		; 2A
	lsr $EC2E.w		; 4E 2E EC
	beq  28.b		; F0 1C
	sbc ($F0.b),Y		; F1 F0
	sed		; F8
	asl A		; 0A
	adc ($DD.b)		; 72 DD
	trb $2241.w		; 1C 41 22
	ora ($40.b,X)		; 01 40
	bra -49.b		; 80 CF
	cpx #$EF.b		; E0 EF
	jsr ($FFE4.w,X)		; FC E4 FF
	beq -66.b		; F0 BE
	adc $000730.l,X		; 7F 30 07 00
	tsa		; 3B
	bra  30.b		; 80 1E
	adc ($FF.b,S),Y		; 73 FF
	cmp $00.b,S		; C3 00
	cpx $7F01.w		; EC 01 7F
	brk $C7.b		; 00 C7
	brk $FF.b		; 00 FF
	sbc $FCCF3F.l,X		; FF 3F CF FC
	sbc $7FFF8F.l,X		; FF 8F FF 7F
	sbc $F3FF8C.l,X		; FF 8C FF F3
	sed		; F8
	sec		; 38
	trb $03E0.w		; 1C E0 03
	jsr ($C31F.w,X)		; FC 1F C3
	bpl  34.b		; 10 22
	adc $E51FCB.l		; 6F CB 1F E5
	rol $C2FD.w,X		; 3E FD C2
	ora ($EC.b),Y		; 11 EC
	sbc $9FFFE0.l,X		; FF E0 FF 9F
	dec $87FE.w,X		; DE FE 87
	sbc $00C1C1.l,X		; FF C1 C1 00
	ror $5841.w		; 6E 41 58
	eor [$C3.b]		; 47 C3
	bra -128.b		; 80 80
	cmp $F0.b		; C5 F0
	clc		; 18
	sbc $1F60FE.l,X		; FF FE 60 1F
	inc $01.b		; E6 01
	inc $BF.b		; E6 BF
	tya		; 98
	bpl -67.b		; 10 BD
	phx		; DA
	sbc $2754CA.l,X		; FF CA 54 27
	inc $FCE2.w,X		; FE E2 FC
	inc $FFFC.w,X		; FE FC FF
	sed		; F8
	bpl -27.b		; 10 E5
	sbc $FA1FE7.l,X		; FF E7 1F FA
	sbc [$89.b],Y		; F7 89
	sbc $3F0FF8.l,X		; FF F8 0F 3F
	sbc ($E2.b),Y		; F1 E2
	jsr ($7C9F.w,X)		; FC 9F 7C
	sbc $74F807.l,X		; FF 07 F8 74
	sec		; 38
	and [$90.b]		; 27 90
	sbc ($D4.b,S),Y		; F3 D4
	sbc $C7FC.w,X		; FD FC C7
	sed		; F8
	jsr ($3F03.w,X)		; FC 03 3F
	trb $5485.w		; 1C 85 54
	bit $C0F0.w,X		; 3C F0 C0
	plx		; FA
	rtl		; 6B

	xba		; EB
	sbc $0F1014.l,X		; FF 14 10 0F
	cpy $FA0F.w		; CC 0F FA
	sbc $39FB7E.l,X		; FF 7E FB 39
	ora $F3ECFC.l		; 0F FC EC F3
	beq  63.b		; F0 3F
	cmp $CC80E2.l,X		; DF E2 80 CC
	jsr ($031C.w,X)		; FC 1C 03
	sbc ($84.b,S),Y		; F3 84
	sta [$0C.b]		; 87 0C
	sta $68.b		; 85 68
	brk $78.b		; 00 78
	cpx #$0C.b		; E0 0C
	brk $43.b		; 00 43
	and ($9A.b,S),Y		; 33 9A
	ldy $E000.w,X		; BC 00 E0
	eor ($1C.b,X)		; 41 1C
	sei		; 78
	adc ($E0.b,X)		; 61 E0
	clc		; 18
	ora [$C7.b]		; 07 C7
	sec		; 38
	inc $1BF3.w,X		; FE F3 1B
	ora $088F1F.l,X		; 1F 1F 8F 08
	jsl $039CE9.l		; 22 E9 9C 03
	sbc ($BC.b),Y		; F1 BC
	pea $500F.w		; F4 0F 50
	ldy $F00F.w		; AC 0F F0
	bvs  -2.b		; 70 FE
	jsr $0F08.w		; 20 08 0F
	eor [$FC.b]		; 47 FC
	pha		; 48
	iny		; C8
	sbc ($F0.b),Y		; F1 F0
	sta $CAA8E4.l,X		; 9F E4 A8 CA
	plp		; 28
	ldx $E9A2.w,Y		; BE A2 E9
	rol $F8.b		; 26 F8
	phd		; 0B
	eor $08FC.w,X		; 5D FC 08
	inc $8A0A.w,X		; FE 0A 8A
	stx $C6.b		; 86 C6
	sbc ($05.b),Y		; F1 05
	sed		; F8
	tsb $E0C5.w		; 0C C5 E0
	sed		; F8
	asl $F0E5.w		; 0E E5 F0
	asl $5D72.w		; 0E 72 5D
	nop		; EA
	cpx #$FF.b		; E0 FF
	lda ($FC.b,S),Y		; B3 FC
	sbc ($F8.b,X)		; E1 F8
	phd		; 0B
	cpx #$F8.b		; E0 F8
	ora #$3F.b		; 09 3F
	cpy #$40.b		; C0 40
	inc $4149.w,X		; FE 49 41
	sbc ($F8.b,X)		; E1 F8
	ora #$40.b		; 09 40
	cpx #$FE.b		; E0 FE
	rti		; 40

	inc $E06C.w,X		; FE 6C E0
	sed		; F8
	ora #$92.b		; 09 92
	mvn $A0,$40		; 54 40 A0
	sed		; F8
	phd		; 0B
	rti		; 40

	dec $40F1.w,X		; DE F1 40
	sed		; F8
	tsb $F046.w		; 0C 46 F0
	ora #$AA.b		; 09 AA
	ora $82.b,S		; 03 82
	adc $60F1D0.l,X		; 7F D0 F1 60
	sed		; F8
	phd		; 0B
	adc $F9F180.l,X		; 7F 80 F1 F9
	dex		; CA
	ldy $FEFE.w,X		; BC FE FE
	jsr ($8703.w,X)		; FC 03 87
	ror $D06D.w,X		; 7E 6D D0
	ora $1FE9F5.l		; 0F F5 E9 1F
	pei ($E4.b)		; D4 E4
	sbc $0A.b,X		; F5 0A
	txa		; 8A
	adc $79425F.l,X		; 7F 5F 42 79
	sbc ($FF.b)		; F2 FF
	sbc $FFF2DF.l,X		; FF DF F2 FF
	beq  -1.b		; F0 FF
	cpy #$AA.b		; C0 AA
	adc $E201FE.l,X		; 7F FE 01 E2
	ora $C7D857.l,X		; 1F 57 D8 C7
	sbc $E10578.l,X		; FF 78 05 E1
	sbc $80.b,S		; E3 80
	cmp $F609F8.l,X		; DF F8 09 F6
	cmp $ABFCF2.l,X		; DF F2 FC AB
	sbc $5F99F0.l,X		; FF F0 99 5F
	stx $E6.b,Y		; 96 E6
	sbc $F319.w,X		; FD 19 F3
	cpx #$EE.b		; E0 EE
	adc $E458.w		; 6D 58 E4
	sta $02F1.w		; 8D F1 02
	sei		; 78
	sbc $00.b,X		; F5 00
.INDEX 16
	rep #$1F		; C2 1F
	inc $F87C.w,X		; FE 7C F8
	ora #$85.b		; 09 85
	brk $8A.b		; 00 8A
	jsr ($F8FF.w,X)		; FC FF F8
	ora #$60.b		; 09 60
	and $79028A.l,X		; 3F 8A 02 79
	asl A		; 0A
	cpx #$0AF8.w		; E0 F8 0A
	txa		; 8A
	asl $FF.b,X		; 16 FF
	inc $E0FF.w,X		; FE FF E0
	sbc $12.b,S		; E3 12
	and $2C.b,X		; 35 2C
	cpx #$A6FF.w		; E0 FF A6
	rtl		; 6B

	sbc ($FF.b),Y		; F1 FF
	sed		; F8
	ora #$83.b		; 09 83
	ora $7A.b		; 05 7A
	nop		; EA
	inc $9826.w,X		; FE 26 98
	sbc $E703.w,X		; FD 03 E7
	asl $FC65.w,X		; 1E 65 FC
	php		; 08
	nop		; EA
	cmp [$80.b]		; C7 80
	phd		; 0B
	dex		; CA
	wai		; CB
	sbc ($0F.b),Y		; F1 0F
	eor $4FCBCA.l		; 4F CA CB 4F
	lda $C0E027.l,X		; BF 27 E0 C0
	pea $0DE4.w		; F4 E4 0D
	bmi -65.b		; 30 BF
	rti		; 40

	beq  31.b		; F0 1F
	rti		; 40

	inc $E6E6.w,X		; FE E6 E6
	cmp $00B191.l,X		; DF 91 B1 00
	lda $E9DF00.l		; AF 00 DF E9
	ora $E7E122.l		; 0F 22 E1 E7
	ora $205F.w,Y		; 19 5F 20
	lda $8ABF4F.l,X		; BF 4F BF 8A
	adc $29.b		; 65 29
	cld		; D8
.ACCU 8
	sep #$E5		; E2 E5
	cpx #$9E09.w		; E0 09 9E
	cmp [$E0.b]		; C7 E0
	beq  12.b		; F0 0C
	rts		; 60

	sbc ($A0.b,X)		; E1 A0
	ldx $F5.b		; A6 F5
	jsr ($2BD5.w,X)		; FC D5 2B
	pld		; 2B
	adc [$01.b],Y		; 77 01
	inc $7FF2.w		; EE F2 7F
	sbc $E970FD.l,X		; FF FD 70 E9
	jsr ($FDFF.w,X)		; FC FF FD
	lda ($63.b,S),Y		; B3 63
	jmp ($DBC8.w)		; 6C C8 DB
	bpl  23.b		; 10 17
	ora ($FE.b,X)		; 01 FE
	ora ($D3.b),Y		; 11 D3
	ror A		; 6A
	trb $0C13.w		; 1C 13 0C
	and $27DF13.l		; 2F 13 DF 27
	sbc ($7F.b,X)		; E1 7F
	ora $7CE4EF.l,X		; 1F EF E4 7C
	sbc [$FF.b]		; E7 FF
	tda		; 7B
	dec $BB87.w		; CE 87 BB
	sta ($7B.b,X)		; 81 7B
	ora ($A0.b,X)		; 01 A0
	ldx $6608.w,Y		; BE 08 66
	clc		; 18
	brk $F9.b		; 00 F9
	jsr ($FE30.w,X)		; FC 30 FE
	jmp ($1FFF.w,X)		; 7C FF 1F
	ldy $EC.b,X		; B4 EC
	ora $76F1.w,Y		; 19 F1 76
	cpx #$C06B.w		; E0 6B C0
	sbc [$A0.b]		; E7 A0
	stp		; DB
	bvc  61.b		; 50 3D
	jsr $FF47.w		; 20 47 FF
	eor $0609E0.l,X		; 5F E0 09 06
	ora [$09.b],Y		; 17 09
	and $1F6F17.l		; 2F 17 6F 1F
	cmp $C33F24.l,X		; DF 24 3F C3
	rol $E1.b,X		; 36 E1
	cli		; 58
	bcs  -3.b		; B0 FD
	brk $9F.b		; 00 9F
	dex		; CA
	sbc ($FE.b,X)		; E1 FE
	sbc [$EF.b],Y		; F7 EF
	adc $06A83E.l,X		; 7F 3E A8 06
	sbc $FF.b,S		; E3 FF
	sbc $5555AA.l,X		; FF AA 55 55
	tax		; AA
	jsr ($E365.w,X)		; FC 65 E3
	adc $F409F0.l,X		; 7F F0 09 F4
	tax		; AA
	sbc $E00AF8.l,X		; FF F8 0A E0
	tay		; A8
	eor [$FF.b],Y		; 57 FF
	beq -32.b		; F0 E0
	sed		; F8
	ora $E366.w		; 0D 66 E3
	cpx #$49FF.w		; E0 FF 49
	eor $5E.b,X		; 55 5E
	sbc ($FF.b),Y		; F1 FF
	tsa		; 3B
	cpx #$24FE.w		; E0 FE 24
	inc $E0.b		; E6 E0
	jsr ($E1AC.w,X)		; FC AC E1
	cmp $F5E2.w,Y		; D9 E2 F5
	pld		; 2B
	cpx #$0AF8.w		; E0 F8 0A
	lsr A		; 4A
	xba		; EB
	sbc $FE0FFD.l,X		; FF FD 0F FE
	jsr ($031C.w,X)		; FC 1C 03
	rol A		; 2A
	xba		; EB
	cpx #$04FC.w		; E0 FC 04
	bcc   4.b		; 90 04
	jsr ($B0F1.w,X)		; FC F1 B0
	cpy #$ABFF.w		; C0 FF AB
	sta $E0C0E2.l		; 8F E2 C0 E0
	sed		; F8
	ora #$E2.b		; 09 E2
	jsr ($F8E0.w,X)		; FC E0 F8
	ora #$01.b		; 09 01
	ora ($FC.b,X)		; 01 FC
	cpy #$0756.w		; C0 56 07
	adc $C0.b,S		; 63 C0
	sed		; F8
	ora #$FE.b		; 09 FE
	cmp ($E9.b)		; D2 E9
	inx		; E8
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	sbc $C0E7.w,X		; FD E7 C0
	asl $8D.b		; 06 8D
	eor $B2.b,X		; 55 B2
	cmp $D840.w,Y		; D9 40 D8
	ora #$1F.b		; 09 1F
	cmp $F0.b,X		; D5 F0
	cpx #$F8.b		; E0 F8
	ora #$2B.b		; 09 2B
	cmp $EB35.w,X		; DD 35 EB
	eor $55.b,X		; 55 55
	jsr $9EDF.w		; 20 DF 9E
	inx		; E8
	asl A		; 0A
	phb		; 8B
	jsr ($F8C0.w,X)		; FC C0 F8
	asl A		; 0A
	cpx #$EF.b		; E0 EF
	jsr $0BF0.w		; 20 F0 0B
	cpx #$F8.b		; E0 F8
	tas		; 1B
	txy		; 9B
	sbc ($5F.b,X)		; E1 5F
	sed		; F8
	cpx #$FD.b		; E0 FD
	ora $FD.b,S		; 03 FD
	ora [$FA.b]		; 07 FA
	cpx #$F8.b		; E0 F8
	phd		; 0B
	phb		; 8B
	ora [$00.b]		; 07 00
	ldx $BFF4.w		; AE F4 BF
	sbc $CDC47D.l,X		; FF 7D C4 CD
	iny		; C8
	lda [$80.b]		; A7 80
	eor $EFE9A2.l,X		; 5F A2 E9 EF
	rti		; 40

	sbc [$E0.b],Y		; F7 E0
	ora $DF3F01.l		; 0F 01 3F DF
	cmp [$03.b],Y		; D7 03
	eor $5FBF33.l		; 4F 33 BF 5F
	adc $BFD17A.l,X		; 7F 7A D1 BF
	ora $630F1F.l,X		; 1F 1F 0F 63
	sbc ($5F.b),Y		; F1 5F
	sbc ($FE.b)		; F2 FE
	adc $54.b,S		; 63 54
	stz $D9.b		; 64 D9
	ora $18.b,S		; 03 18
	php		; 08
	phk		; 4B
	brk $55.b		; 00 55
	brk $AA.b		; 00 AA
	jsr ($FEAB.w,X)		; FC AB FE
	sbc $07FB93.l,X		; FF 93 FB 07
	cmp $878F37.l		; CF 37 8F 87
	ora $3718.w,X		; 1D 18 37
	jsr $40CF.w		; 20 CF 40
	lda $40DFD1.l		; AF D1 DF 40
	sta $18F780.l		; 8F 80 F7 18
	pea $E2A6.w		; F4 A6 E2
	and $F318FE.l,X		; 3F FE 18 F3
	sbc $2AAA8F.l,X		; FF 8F AA 2A
	sbc $9AF5.w,X		; FD F5 9A
	ora $F807EF.l		; 0F EF 07 F8
	brk $FD.b		; 00 FD
	ora ($FE.b,X)		; 01 FE
	and [$66.b],Y		; 37 66
	cpx #$D5.b		; E0 D5
	brk $FA.b		; 00 FA
	dec A		; 3A
	phx		; DA
	beq -27.b		; F0 E5
	inc $1AE0.w,X		; FE E0 1A
	sbc ($A0.b,X)		; E1 A0
	asl A		; 0A
	sbc $0F.b,S		; E3 0F
	cli		; 58
	cmp [$81.b]		; C7 81
	lda #$DC.b		; A9 DC
	sbc $F5A07E.l,X		; FF 7E A0 F5
	plp		; 28
	sbc $4D.b,S		; E3 4D
	bra -128.b		; 80 80
	sbc $3DC3.w,X		; FD C3 3D
	ora $28.b,X		; 15 28
	plp		; 28
	bra -38.b		; 80 DA
	iny		; C8
	cmp #$80.b		; C9 80
	sbc $00EA.w,X		; FD EA 00
	cmp [$85.b],Y		; D7 85
	and $800580.l,X		; 3F 80 05 80
	lda [$90.b],Y		; B7 90
	adc $A0F750.l,X		; 7F 50 F7 A0
	adc $800F4E.l		; 6F 4E 0F 80
	sbc $7FEC80.l		; EF 80 EC 7F
	ora $0207BF.l		; 0F BF 07 02
	mvp $9A,$FC		; 44 FC 9A
	sbc ($80.b),Y		; F1 80
	jsr ($A0EF.w,X)		; FC EF A0
	asl A		; 0A
	asl A		; 0A
	eor ($01.b)		; 52 01
	jsr ($E0D8.w,X)		; FC D8 E0
	phd		; 0B
	inc $0BF8.w,X		; FE F8 0B
	and $50E07C.l,X		; 3F 7C E0 50
	brk $8E.b		; 00 8E
	dey		; 88
	lsr $620E.w,X		; 5E 0E 62
	xce		; FB
	ply		; 7A
	sbc $1FF101.l,X		; FF 01 F1 1F
	asl $D90E.w,X		; 1E 0E D9
	beq  15.b		; F0 0F
	sta $FDFA70.l		; 8F 70 FA FD
	cop $FB.b		; 02 FB
	tsb $7F.b		; 04 7F
	sty $07E0.w		; 8C E0 07
	sbc [$60.b],Y		; F7 60
	adc [$40.b]		; 67 40
	ora $5DBF2A.l,X		; 1F 2A BF 5D
	lda ($FC.b)		; B2 FC
	cmp $0FEA36.l,X		; DF 36 EA 0F
	adc $FCCC44.l,X		; 7F 44 CC FC
	bra -31.b		; 80 E1
	cld		; D8
	sed		; F8
	eor $22E4A0.l		; 4F A0 E4 22
	sbc ($02.b,S),Y		; F3 02
	sbc [$05.b],Y		; F7 05
	sbc $FF08.w		; ED 08 FF
	sbc [$F0.b]		; E7 F0
	sbc $FD252A.l,X		; FF 2A 25 FD
	plx		; FA
	xce		; FB
	jsr ($F8FF.w,X)		; FC FF F8
	sbc $707BF3.l,X		; FF F3 7B 70
	adc $804F.w,X		; 7D 4F 80
	pha		; 48
	ora $405F00.l		; 0F 00 5F 40
	cpy #$FC.b		; C0 FC
	ora $87D4A8.l		; 0F A8 D4 87
	sbc $C3BF83.l,X		; FF 83 BF C3
	sbc $FCBC.w,X		; FD BC FC
	rts		; 60

	and $21.b,X		; 35 21
	jsr ($71FC.w,X)		; FC FC 71
	jsr ($7606.w,X)		; FC 06 76
	cld		; D8
	asl A		; 0A
	rol $E0E4.w		; 2E E4 E0
	inc $BC01.w,X		; FE 01 BC
	lda $BBCE87.l,X		; BF 87 CE BB
	ldy #$65.b		; A0 65
	cpx $F8.b		; E4 F8
	asl A		; 0A
	cmp $47BF30.l		; CF 30 BF 47
	adc $78DF9B.l,X		; 7F 9B DF 78
	cpx #$FE.b		; E0 FE
	sbc $1EBF.w,Y		; F9 BF 1E
	ora $F824E1.l		; 0F E1 24 F8
	ora $8040.w		; 0D 40 80
	sbc $F857A8.l,X		; FF A8 57 F8
	adc $9B.b,X		; 75 9B
	lda ($5F.b,X)		; A1 5F
	eor [$BE.b]		; 47 BE
	and ($A0.b)		; 32 A0
.INDEX 16
	rep #$DB		; C2 DB
	inc $BFFF.w,X		; FE FF BF
	eor $E0A1FD.l		; 4F FD A1 E0
	sbc ($5E.b),Y		; F1 5E
	sbc ($C1.b,S),Y		; F3 C1
	brk $0A.b		; 00 0A
	jsr ($F895.w,X)		; FC 95 F8
	clc		; 18
	adc $E4A80A.l		; 6F 0A A8 E4
	inc $D26E.w,X		; FE 6E D2
	bit $18EA.w,X		; 3C EA 18
	sbc $2AC12E.l,X		; FF 2E C1 2A
	sed		; F8
	bit $FEDA.w		; 2C DA FE
	sed		; F8
	ora #$40.b		; 09 40
	nop		; EA
	rol $0BE0.w,X		; 3E E0 0B
	jmp $01FCFE.l		; 5C FE FC 01
	lsr $0B81.w,X		; 5E 81 0B
	adc $EB02F4.l,X		; 7F F4 02 EB
	jsr $09D0.w		; 20 D0 09
	rol $3C.b,X		; 36 3C
	sbc $F7FFC9.l,X		; FF C9 FF F7
	eor $F87860.l,X		; 5F 60 78 F8
	dey		; 88
	lda $807F80.l,X		; BF 80 7F 80
	ldx #$004B.w		; A2 4B 00
	sta [$00.b],Y		; 97 00
	bvc -128.b		; 50 80
	ldx $8F39.w,Y		; BE 39 8F
	inc $EB.b		; E6 EB
	inc $6664.w,X		; FE 64 66
	lda $F160F7.l		; AF F7 60 F1
	cmp $D2201A.l		; CF 1A 20 D2
	brk $BA.b		; 00 BA
	ora ($F6.b,X)		; 01 F6
.INDEX 16
	rep #$5F		; C2 5F
	clv		; B8
	sbc $FFFCFD.l,X		; FF FD FC FF
	xce		; FB
	sbc $FCA047.l,X		; FF 47 A0 FC
	rol A		; 2A
	sta ($0C.b)		; 92 0C
	rti		; 40

	dec A		; 3A
	plb		; AB
	eor $FF.b		; 45 FF
	cmp [$CC.b]		; C7 CC
	cpy #$0AD8.w		; C0 D8 0A
	sbc $0FFC55.l,X		; FF 55 FC 0F
	dec $F020.w		; CE 20 F0
	bpl -85.b		; 10 AB
	.db $82, $E0, $FE		; 82 E0 FE
	inc $AEFE.w,X		; FE FE AE
	nop		; EA
	cpx #$0BF8.w		; E0 F8 0B
	cmp $E0DB.w		; CD DB E0
	sbc $02E2.w,X		; FD E2 02
	cmp ($1A.b,S),Y		; D3 1A
	jsr ($F8E0.w,X)		; FC E0 F8
	ora #$E2.b		; 09 E2
	pea $BFE0.w		; F4 E0 BF
	eor $B8.b,X		; 55 B8
	dec $F1.b		; C6 F1
	rti		; 40

	dec $FEE0.w,X		; DE E0 FE
	cpy $CD.b		; C4 CD
	inc $E1A1.w,X		; FE A1 E1
	cmp [$BE.b],Y		; D7 BE
	tax		; AA
	bit $F1.b		; 24 F1
	sta ($E0.b,X)		; 81 E0
	ora #$E1.b		; 09 E1
	asl $2FDF.w,X		; 1E DF 2F
	rts		; 60

	sbc $70F298.l,X		; FF 98 F2 70
	sed		; F8
	ora $F0C4.w		; 0D C4 F0
	asl $AAAA.w		; 0E AA AA
	inc $0DF8.w,X		; FE F8 0D
	tsx		; BA
	sbc #$60.b		; E9 60
	cpy #$EA0B.w		; C0 0B EA
	cmp $DFE9.w,Y		; D9 E9 DF
	ldy $CE.b		; A4 CE
	sbc $C00FB0.l,X		; FF B0 0F C0
	sed		; F8
	asl $F7C2.w		; 0E C2 F7
	ldy $BE.b		; A4 BE
	cpx #$0DF8.w		; E0 F8 0D
	bit $FB.b		; 24 FB
	brk $65.b		; 00 65
	brk $DB.b		; 00 DB
	lda $3C0BB0.l,X		; BF B0 0B 3C
	sbc $DB7D32.l,X		; FF 32 7D DB
	lsr $ED.b,X		; 56 ED
	cpx #$F0FE.w		; E0 FE F0
	ora ($E6.b,X)		; 01 E6
	ora ($EC.b,X)		; 01 EC
	sbc $AF.b,X		; F5 AF
	inc $D2.b,X		; F6 D2
	pla		; 68
	sbc $FF.b,S		; E3 FF
	sbc $78DF.w,X		; FD DF 78
	ora [$E0.b]		; 07 E0
	ora $3F3FC0.l,X		; 1F C0 3F 3F
	sbc ($AA.b),Y		; F1 AA
	sbc $02F6FF.l		; EF FF F6 02
	cpx $F080.w		; EC 80 F0
	ora #$7F.b		; 09 7F
	sbc $A27E.w		; ED 7E A2
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
	sbc $AA3F.w,Y		; F9 3F AA
	bmi -17.b		; 30 EF
	beq  15.b		; F0 0F
	jsr ($FEE3.w,X)		; FC E3 FE
	sbc $5481.w,Y		; F9 81 54
	bvs  97.b		; 70 61
	inc $2BF8.w,X		; FE F8 2B
	tax		; AA
	nop		; EA
	bit $0D80.w,X		; 3C 80 0D
	bcc 104.b		; 90 68
	ora ($E4.b),Y		; 11 E4
	sed		; F8
	ora ($22.b),Y		; 11 22
	rts		; 60

	ora $B8B5.w,Y		; 19 B5 B8
	ora #$AC.b		; 09 AC
	sed		; F8
	phd		; 0B
	jmp.w [$0B60]		; DC 60 0B
	stz $087E.w,X		; 9E 7E 08
	tax		; AA
	tax		; AA
	bra  -2.b		; 80 FE
	sed		; F8
	and [$6C.b]		; 27 6C
	plp		; 28
	and $1768F0.l,X		; 3F F0 68 17
	bvc 112.b		; 50 70
	ora ($2A.b),Y		; 11 2A
	rti		; 40

	ora #$58.b		; 09 58
	sed		; F8
	ora #$D4.b		; 09 D4
	bvs  35.b		; 70 23
	inc $0A.b		; E6 0A
	tax		; AA
	sed		; F8
	phd		; 0B
	asl A		; 0A
	sed		; F8
	ora #$85.b		; 09 85
	inc $FE81.w,X		; FE 81 FE
	sbc $AAFCF0.l,X		; FF F0 FC AA
	lda $C4FE.w		; AD FE C4
	beq  17.b		; F0 11
	inc $FE.b		; E6 FE
	inc $09F8.w,X		; FE F8 09
	sty $10F0.w		; 8C F0 10
	bra  -2.b		; 80 FE
	jsr ($F205.w,X)		; FC 05 F2
	adc ($A8.b,X)		; 61 A8
	asl A		; 0A
	inc $60.b		; E6 60
	phd		; 0B
	inc $7776.w,X		; FE 76 77
	rti		; 40

	beq  17.b		; F0 11
	ldy $C2FD.w,X		; BC FD C2
	adc ($AA.b,X)		; 61 AA
	and $FEFC.w,Y		; 39 FC FE
	inc $102E.w,X		; FE 2E 10
	ora $F8FE.w,X		; 1D FE F8
	and [$8C.b]		; 27 8C
	inc $FE42.w		; EE 42 FE
	lsr A		; 4A
	lsr $55.b,X		; 56 55
	inc $2E40.w,X		; FE 40 2E
	eor ($FE.b,X)		; 41 FE
	inc $F89C.w,X		; FE 9C F8
	eor $98.b		; 45 98
	jsr ($9450.w,X)		; FC 50 94
	inc $2AF8.w,X		; FE F8 2A
	eor $52.b,X		; 55 52
	cpy #$0F70.w		; C0 70 0F
	clv		; B8
	bvs  48.b		; 70 30
	stz $E9.b		; 64 E9
	ror $F8.b,X		; 76 F8
	ora ($28.b)		; 12 28
	ora ($20.b)		; 12 20
	phd		; 0B
	asl $09F0.w		; 0E F0 09
	eor $25.b,X		; 55 25
	.db $42, $28		; 42 28
	ora ($2C.b,S),Y		; 13 2C
	plp		; 28
	ora $F8FE.w,X		; 1D FE F8
	tad		; 5B
	bne -14.b		; D0 F2
	adc ($E8.b)		; 72 E8
	ora ($BE.b,S),Y		; 13 BE
	sed		; F8
	and $55BC.w		; 2D BC 55
	tsx		; BA
	ror $1210.w		; 6E 10 12
	stz $53.b,X		; 74 53
	clv		; B8
	cpx $526C.w		; EC 6C 52
	beq   2.b		; F0 02
	bra  10.b		; 80 0A
	tax		; AA
	tax		; AA
	inc $09F8.w,X		; FE F8 09
	cpy #$0C58.w		; C0 58 0C
	cld		; D8
	jsr $7A10.w		; 20 10 7A
	inx		; E8
	asl A		; 0A
	ldy $5AFF.w,X		; BC FF 5A
	inc $F8E8.w,X		; FE E8 F8
	phd		; 0B
	lsr $0CE0.w		; 4E E0 0C
	tax		; AA
	dex		; CA
	tya		; 98
	cli		; 58
	phd		; 0B
	bit $E8.b		; 24 E8
	ora ($86.b),Y		; 11 86
	cpx #$E00B.w		; E0 0B E0
	rti		; 40

	ora $089C.w,X		; 1D 9C 08
	clc		; 18
	ldx $E0.b,Y		; B6 E0
	ora #$AE.b		; 09 AE
	cpx #$AA0E.w		; E0 0E AA
	tax		; AA
	inc $F8E2.w,X		; FE E2 F8
	ora $D8BC.w,X		; 1D BC D8
	tsb $1078.w		; 0C 78 10
	tsa		; 3B
	rts		; 60

	bpl  33.b		; 10 21
	lsr $1B48.w,X		; 5E 48 1B
	tsx		; BA
	cpx #$C41E.w		; E0 1E C4
	cmp $6AAA.w,X		; DD AA 6A
	inc $14F8.w,X		; FE F8 14
	jmp ($24E0.w,X)		; 7C E0 24
	jmp.w [$2910]		; DC 10 29
	ldx $1108.w,Y		; BE 08 11
	stx $1C.b,Y		; 96 1C
	rol $0FE0.w		; 2E E0 0F
	sbc $281CFC.l,X		; FF FC 1C 28
	phd		; 0B
	.db $82, $56, $55		; 82 56 55
	inc $48F5.w,X		; FE F5 48
	phd		; 0B
	eor ($E0.b)		; 52 E0
	and $82.b		; 25 82
	rti		; 40

	ora [$FF.b],Y		; 17 FF
	sed		; F8
	phb		; 8B
	cpy $2E20.w		; CC 20 2E
	cld		; D8
	cpx #$5510.w		; E0 10 55
	rtl		; 6B

	cpx $09E0.w		; EC E0 09
	inc $2EF8.w,X		; FE F8 2E
	ldx $F8.b,Y		; B6 F8
	jsr $F020.w		; 20 20 F0
	ora $E8F2.w,Y		; 19 F2 E8
	asl $40.b,X		; 16 40
	inc $12F8.w,X		; FE F8 12
	cpx $F8.b		; E4 F8
	tsb $5405.w		; 0C 05 54
	eor $FE.b,X		; 55 FE
	inx		; E8
	sed		; F8
	tsb $F8D0.w		; 0C D0 F8
	ora ($98.b)		; 12 98
	cld		; D8
	phd		; 0B
	ply		; 7A
	beq 109.b		; F0 6D
	txa		; 8A
	iny		; C8
	and [$AA.b]		; 27 AA
	sed		; F8
	and ($55.b),Y		; 31 55
	eor $50.b,X		; 55 50
	cld		; D8
	phd		; 0B
	stx $D6.b		; 86 D6
	bra -32.b		; 80 E0
	ora ($10.b),Y		; 11 10
	sec		; 38
	lda $B0.b,S		; A3 B0
	sec		; 38
	and ($B0.b,S),Y		; 33 B0
	beq  41.b		; F0 29
	bvc  56.b		; 50 38
	and [$F2.b],Y		; 37 F2
	iny		; C8
	asl A		; 0A
	eor $55.b,X		; 55 55
	jmp ($11D0.w)		; 6C D0 11
	sei		; 78
	dex		; CA
	asl $E0.b		; 06 E0
	rti		; 40

	nop		; EA
	inx		; E8
	tsa		; 3B
	stx $30.b		; 86 30
	and $B802.w		; 2D 02 B8
	and ($8A.b),Y		; 31 8A
	iny		; C8
	ora $391892.l		; 0F 92 18 39
	eor $55.b,X		; 55 55
	dex		; CA
	bne  15.b		; D0 0F
	inc $23F8.w,X		; FE F8 23
	sec		; 38
	sed		; F8
	ora $C890.w		; 0D 90 C8
	ora ($1E.b,S),Y		; 13 1E
	clv		; B8
	rtl		; 6B

	inc $4BF8.w,X		; FE F8 4B
	inc $43D8.w,X		; FE D8 43
	rol $13F0.w		; 2E F0 13
	eor $55.b,X		; 55 55
	rti		; 40

	clv		; B8
	ora $908A.w		; 0D 8A 90
	ora $62.b,X		; 15 62
	cpy #$DC19.w		; C0 19 DC
	cld		; D8
	adc #$E8.b		; 69 E8
	inx		; E8
	ora ($96.b),Y		; 11 96
	bcs  17.b		; B0 11
	jsl $A2A4DE.l		; 22 DE A4 A2
	cmp $188B.w,X		; DD 8B 18
	ldy $46.b,X		; B4 46
	bpl  36.b		; 10 24
	sbc [$08.b],Y		; F7 08
	cmp $81.b		; C5 81
	php		; 08
	cmp $6022.w,X		; DD 22 60
	sec		; 38
	ora ($BD.b),Y		; 11 BD
	ldy #$10E8.w		; A0 E8 10
	phx		; DA
	adc $FB40.w,Y		; 79 40 FB
	ora $A1.b		; 05 A1
	.db $82, $DE, $40		; 82 DE 40
	bvc  19.b		; 50 13
	clc		; 18
	ora $F8.b,X		; 15 F8
	eor #$FA.b		; 49 FA
	sbc $F8C0D8.l		; EF D8 C0 F8
	ora ($E4.b),Y		; 11 E4
	jsr ($1C56.w,X)		; FC 56 1C
	inc $20DF.w,X		; FE DF 20
	rol $54.b,X		; 36 54
	cpy #$10F8.w		; C0 F8 10
	inx		; E8
	inc $0511.w		; EE 11 05
	eor $12BC.w,X		; 5D BC 12
	tda		; 7B
	dec $FEE8.w,X		; DE E8 FE
	dex		; CA
	asl $21DF.w,X		; 1E DF 21
	cpy #$55FC.w		; C0 FC 55
	sbc $0A6244.l,X		; FF 44 62 0A
	ror A		; 6A
	ldx $5D24.w		; AE 24 5D
	txa		; 8A
	sbc $7ED1FC.l,X		; FF FC D1 7E
	inx		; E8
	sbc $F57FD4.l,X		; FF D4 7F F5
	adc $922FFE.l,X		; 7F FE 2F 92
	adc ($F0.b,X)		; 61 F0
	adc ($B7.b,X)		; 61 B7
	pha		; 48
	adc $FBFB7F.l,X		; 7F 7F FB FB
	eor $2F2F5F.l,X		; 5F 5F 2F 2F
	sbc $FEB87F.l,X		; FF 7F B8 FE
	lda $03.b,S		; A3 03
	cmp ($01.b),Y		; D1 01
	inx		; E8
	brk $1F.b		; 00 1F
	cpx #$F847.w		; E0 47 F8
	inc $FB0F.w,X		; FE 0F FB
	ora [$D8.b]		; 07 D8
	cmp $B2.b,S		; C3 B2
	jsr ($C1FE.w,X)		; FC FE C1
	adc $DFFB.w,Y		; 79 FB DF
	cmp $830FD8.l,X		; DF D8 0F 83
	sbc $03030F.l,X		; FF 0F 03 03
	lda ($0F.b)		; B2 0F
	adc $3F7F.w,Y		; 79 7F 3F
	and $B10808.l,X		; 3F 08 08 B1
	eor $DF.b		; 45 DF
	and $BCA078.l,X		; 3F 78 A0 BC
	cpy #$D1AF.w		; C0 AF D1
	and $F761.w		; 2D 61 F7
	cpy #$F7FE.w		; C0 FE F7
	sbc [$BA.b],Y		; F7 BA
	tsx		; BA
	cpy #$DC3A.w		; C0 3A DC
	cpx $EE.b		; E4 EE
	inc $799D.w		; EE 9D 79
	tsx		; BA
	adc $7D7D.w,Y		; 79 7D 7D
	bit $DA87.w,X		; 3C 87 DA
	eor $75.b,X		; 55 75
	rol A		; 2A
	rol A		; 2A
	ora $3FFCDF.l		; 0F DF FC 3F
	inc $BD82.w,X		; FE 82 BD
	bra  -1.b		; 80 FF
	txa		; 8A
	cmp $DAE6D5.l,X		; DF D5 E6 DA
	phx		; DA
	jsr ($EAFD.w,X)		; FC FD EA
	sbc $F5FAFF.l,X		; FF FF FA F5
	sbc $EB.b,X		; F5 EB
	xba		; EB
	eor [$57.b],Y		; 57 57
	ldy #$12A0.w		; A0 A0 12
	ora ($25.b)		; 12 25
	cmp $05FE02.l,X		; DF 02 FE 05
	sbc $0A6FFF.l,X		; FF FF 6F 0A
	sbc $A86F14.l,X		; FF 14 6F A8
	sbc $FF5F.w,X		; FD 5F FF
	sbc $11F7.w		; ED F7 11
	and $E6030D.l		; 2F 0D 03 E6
	sbc $52E1EF.l,X		; FF EF E1 52
	eor ($F3.b),Y		; 51 F3
	sbc ($DB.b),Y		; F1 DB
	sed		; F8
	adc $6978.w,Y		; 79 78 69
	sei		; 78
	cmp [$D7.b],Y		; D7 D7
	sta $BF51.w,X		; 9D 51 BF
	sta [$F7.b]		; 87 F7
	lda $FE0EFF.l		; AF FF 0E FE
	adc ($87.b,S),Y		; 73 87
	sbc $E8EF87.l,X		; FF 87 EF E8
	sbc ($80.b),Y		; F1 80
	inc $FF.b,X		; F6 FF
	sta $FF89.w		; 8D 89 FF
	cpy #$C4FB.w		; C0 FB C4
	sbc $F87FE0.l,X		; FF E0 7F F8
	and $80F1DF.l,X		; 3F DF F1 80
	sbc ($0A.b),Y		; F1 0A
	sbc $E0FFC0.l,X		; FF C0 FF E0
	cpx #$E0F8.w		; E0 F8 E0
	adc ($82.b,X)		; 61 82
	sbc ($03.b)		; F2 03
	ldx $F6FE.w		; AE FE F6
	ora #$DA.b		; 09 DA
	sta [$21.b]		; 87 21
	sbc $36.b,X		; F5 36
	and ($CC.b,X)		; 21 CC
	nop		; EA
	cpy #$1240.w		; C0 40 12
	jmp.w [$E9FE]		; DC FE E9
	inc $BE.b,X		; F6 BE
	rti		; 40

	asl A		; 0A
	bit $F2.b		; 24 F2
	stp		; DB
	lsr A		; 4A
	mvn $C2,$24		; 54 24 C2
	pea $F080.w		; F4 80 F0
	ora ($EC.b),Y		; 11 EC
	cpy #$7CEF.w		; C0 EF 7C
	sbc ($1D.b),Y		; F1 1D
	tsb $BE.b		; 04 BE
	sbc ($00.b)		; F2 00
	beq  21.b		; F0 15
	cmp $36D824.l,X		; DF 24 D8 36
	sbc ($DE.b)		; F2 DE
	eor $40.b		; 45 40
	ldy #$11F8.w		; A0 F8 11
	cmp $E29EF1.l		; CF F1 9E E2
	inc $10.b,X		; F6 10
	ora $F8.b,X		; 15 F8
	sta $C010E8.l,X		; 9F E8 10 C0
	cli		; 58
	phy		; 5A
	bit $D5F4.w,X		; 3C F4 D5
	cmp $D8.b,X		; D5 D8
	brk $F0.b		; 00 F0
	ora ($26.b),Y		; 11 26
	pea $6A12.w		; F4 12 6A
	adc $F20084.l,X		; 7F 84 00 F2
	and $0DF8.w,X		; 3D F8 0D
	cpx $46E9.w		; EC E9 46
	ora $41.b		; 05 41
	tsb $F5.b		; 04 F5
	.db $42, $FC		; 42 FC
	tsb $F0.b		; 04 F0
	tsb $E2ED.w		; 0C ED E2
	dec $A0D8.w		; CE D8 A0
	stx $EF.b		; 86 EF
	bpl  98.b		; 10 62
	sbc $5405.w,X		; FD 05 54
	rts		; 60

	sed		; F8
	ora ($DC.b)		; 12 DC
	sbc $C0E9EA.l,X		; FF EA E9 C0
	ora ($60.b)		; 12 60
	inx		; E8
	ora ($DF.b,S),Y		; 13 DF
	cpx $C7.b		; E4 C7
	sei		; 78
	sbc ($7E.b,X)		; E1 7E
	beq  63.b		; F0 3F
	cmp $BD.b,X		; D5 BD
	sbc $EC560C.l,X		; FF 0C 56 EC
.ACCU 16
	rep #$EA		; C2 EA
	inc $0CEA.w		; EE EA 0C
	tsb $FCE0.w		; 0C E0 FC
	bra   1.b		; 80 01
	pea $78FF.w		; F4 FF 78
	cpy $F1.b		; C4 F1
	ora ($FE.b,X)		; 01 FE
	jsr ($FF1F.w,X)		; FC 1F FF
	ora $77.b,S		; 03 77
	dey		; 88
	adc ($FE.b)		; 72 FE
	stp		; DB
	stp		; DB
	xba		; EB
	sbc $2307.w,X		; FD 07 23
	ora $A06903.l,X		; 1F 03 69 A0
	eor $10.b,S		; 43 10
	bpl  -8.b		; 10 F8
	.db $62, $69, $0F		; 62 69 0F
	beq -61.b		; F0 C3
	jsr ($0EBF.w,X)		; FC BF 0E
	sbc [$1C.b],Y		; F7 1C
	adc ($9C.b,S),Y		; 73 9C
	inc $EFFF.w,X		; FE FF EF
	rol A		; 2A
	eor ($FF.b),Y		; 51 FF
	jsr ($1B1B.w,X)		; FC 1B 1B
	sbc $3BDA0F.l,X		; FF 0F DA 3B
	and $787B.w,Y		; 39 7B 78
	xce		; FB
	sed		; F8
	adc ($70.b),Y		; 71 70
	and ($31.b),Y		; 31 31
	rol $FF3E.w,X		; 3E 3E FF
	sbc $0F0FAA.l,X		; FF AA 0F 0F
	dec $FE.b		; C6 FE
	sta [$FF.b]		; 87 FF
	ora [$77.b]		; 07 77
	sta $BECEFF.l		; 8F FF CE BE
	cmp ($EF.b,X)		; C1 EF
	cpy #$7C3B.w		; C0 3B 7C
	inc $EFF0.w,X		; FE F0 EF
	eor $32.b		; 45 32
	sta ($7D.b)		; 92 7D
	phy		; 5A
	cop $01.b		; 02 01
	ora $FC0C.w		; 0D 0C FC
	cmp ($21.b,X)		; C1 21
	adc $EB.b,S		; 63 EB
	sbc $F3FCBE.l,X		; FF BE FC F3
	xce		; FB
	cpx $01.b		; E4 01
	ldy $7F.b,X		; B4 7F
	inc $80.b,X		; F6 80
	cpx $E9.b		; E4 E9
	cpx $E4.b		; E4 E4
	sbc #$7FF0.w		; E9 F0 7F
	inc $7FBF.w,X		; FE BF 7F
	sbc $877F.w,X		; FD 7F 87
	adc #$EAE4.w		; 69 E4 EA
	cpx #$FCE0.w		; E0 E0 FC
	beq -16.b		; F0 F0
	pei ($BD.b)		; D4 BD
	lda $A85A.w,X		; BD 5A A8
	lsr A		; 4A
	sbc $F4A490.l		; EF 90 A4 F4
	beq  -8.b		; F0 F8
	ora $5A0CF8.l,X		; 1F F8 0C 5A
	eor $DF.b,X		; 55 DF
	adc $A0.b,S		; 63 A0
	sbc ($FE.b,X)		; E1 FE
	sed		; F8
	ora #$8EFD.w		; 09 FD 8E
	cpy #$6210.w		; C0 10 62
	inc $F8.b		; E6 F8
	xba		; EB
	cpx #$12F0.w		; E0 F0 12
	nop		; EA
	jsr ($1C15.w,X)		; FC 15 1C
	inc $DA.b		; E6 DA
	cld		; D8
	jsr ($F0C0.w,X)		; FC C0 F0
	bpl -96.b		; 10 A0
	jsr $EFF5.w		; 20 F5 EF
	bpl  20.b		; 10 14
	pei ($3A.b)		; D4 3A
	dec $FF21.w		; CE 21 FF
	sed		; F8
	asl $3EEE.w		; 0E EE 3E
	and $C1.b,X		; 35 C1
	bmi  21.b		; 30 15
	nop		; EA
	jsr ($A62E.w,X)		; FC 2E A6
	mvp $F8,$E0		; 44 E0 F8
	tas		; 1B
	adc $E18F81.l,X		; 7F 81 8F E1
	stz $80FB.w		; 9C FB 80
	ldy $7A.b		; A4 7A
	and ($EC.b,X)		; 21 EC
	tda		; 7B
	jsr ($EC75.w,X)		; FC 75 EC
	txa		; 8A
	jmp.w [$FD1A]		; DC 1A FD
	sty $FD.b		; 84 FD
	ora ($3B.b)		; 12 3B
	ldx $F8C0.w		; AE C0 F8
	ora $F10AED.l		; 0F ED 0A F1
	adc $40C090.l		; 6F 90 C0 40
	sbc $24E91E.l,X		; FF 1E E9 24
	lda #$F8A0.w		; A9 A0 F8
	ora ($E0.b),Y		; 11 E0
	jsl $F63CD9.l		; 22 D9 3C F6
	sbc $90.b,S		; E3 90
	bne  12.b		; D0 0C
	sbc $09548F.l,X		; FF 8F 54 09
	sbc [$38.b]		; E7 38
	sta [$F8.b]		; 87 F8
	sta [$FC.b],Y		; 97 FC
	cmp $7C.b,S		; C3 7C
	sed		; F8
	and $BB43BF.l,X		; 3F BF 43 BB
	stx $7C.b		; 86 7C
	mvp $AC,$3F		; 44 3F AC
	eor ($EB.b,X)		; 41 EB
	xba		; EB
	dec $00EA.w,X		; DE EA 00
	sbc ($40.b,S),Y		; F3 40
	sbc $847F7F.l,X		; FF 7F 7F 84
	tsb $E0.b		; 04 E0
	brk $E0.b		; 00 E0
	ora ($3F.b,X)		; 01 3F
	bne -91.b		; D0 A5
	asl A		; 0A
	sbc $BFBF01.l,X		; FF 01 BF BF
	xce		; FB
	xce		; FB
	sta $77.b		; 85 77
	and ($52.b,S),Y		; 33 52
	bit $DCF2.w,X		; 3C F2 DC
	ora ($01.b,X)		; 01 01
	bit $D43C.w,X		; 3C 3C D4
	nop		; EA
	ora [$1F.b],Y		; 17 1F
	sei		; 78
	clc		; 18
	inc $30.b,X		; F6 30
	cmp ($1C.b,X)		; C1 1C
	cpx #$C3B4.w		; E0 B4 C3
	sbc $023E.w,X		; FD 3E 02
	and $E0FFE0.l		; 2F E0 FF E0
	sbc [$FE.b],Y		; F7 FE
	jmp.w [$FCD4]		; DC D4 FC
	ora $3F40E4.l		; 0F E4 40 3F
	bcc -113.b		; 90 8F
	cmp $C0.b,S		; C3 C0
	lda $E2.b		; A5 E2
	beq -16.b		; F0 F0
	stx $F8.b		; 86 F8
	cmp ($E0.b)		; D2 E0
	sbc #$EA4F.w		; E9 4F EA
	adc $BD1DB9.l,X		; 7F B9 1D BD
	ora $FF1FFD.l		; 0F FD 1F FF
	cpy #$E9E0.w		; C0 E0 E9
	bcs -65.b		; B0 BF
	ora $10C0F0.l		; 0F F0 C0 10
	stz $1F1E.w,X		; 9E 1E 1F
	eor $E40A00.l,X		; 5F 00 0A E4
	cmp ($AD.b,S),Y		; D3 AD
	sbc ($4C.b,S),Y		; F3 4C
	ora #$506F.w		; 09 6F 50
	ldx $E1.b		; A6 E1
	sbc $D3BEA0.l,X		; FF A0 BE D3
	eor #$03BB.w		; 49 BB 03
	ora $FE11.w,Y		; 19 11 FE
	sbc $55.b,X		; F5 55
	eor [$22.b],Y		; 57 22
	cpx $20.b		; E4 20
	sed		; F8
	ora ($46.b),Y		; 11 46
	inc $DE.b,X		; F6 DE
	sbc $F020.w		; ED 20 F0
	asl $FE.b,X		; 16 FE
	ora ($BA.b,X)		; 01 BA
	inc $F8E0.w,X		; FE E0 F8
	ora $55.b,X		; 15 55
	eor $7A.b,X		; 55 7A
	sbc ($DA.b),Y		; F1 DA
	and $E0.b,S		; 23 E0
	sed		; F8
	ora ($AA.b),Y		; 11 AA
	jsr ($F020.w,X)		; FC 20 F0
	asl $FD64.w,X		; 1E 64 FD
	cpx #$17F8.w		; E0 F8 17
	rol $F2.b		; 26 F2
	sbc $EE.b		; E5 EE
	cpx #$0BF8.w		; E0 F8 0B
	txy		; 9B
	cld		; D8
	phd		; 0B
	nop		; EA
	cop $20.b		; 02 20
	sbc ($F9.b)		; F2 F9
	asl $C0.b		; 06 C0
	sed		; F8
	ora ($BB.b,S),Y		; 13 BB
	lsr $4455.w,X		; 5E 55 44
	cld		; D8
	eor $08.b,S		; 43 08
	xce		; FB
	tsb $DA.b		; 04 DA
	sbc #$C8A0.w		; E9 A0 C8
	tsb $ECDA.w		; 0C DA EC
.ACCU 8
	sep #$EB		; E2 EB
	jsr ($15F1.w,X)		; FC F1 15
	sty $58.b,X		; 94 58
	sbc $D8E0.w,X		; FD E0 D8
	bpl  98.b		; 10 62
	xba		; EB
	tsb $5E.b		; 04 5E
	cpx $E1B4.w		; EC B4 E1
	eor ($40.b,X)		; 41 40
	sbc $CF78DA.l,X		; FF DA 78 CF
	sty $06.b		; 84 06
	jsr $E065.w		; 20 65 E0
	rti		; 40

	stz $EAEB.w		; 9C EB EA
	cpx $F6FA.w		; EC FA F6
	bra -97.b		; 80 9F
	adc ($E1.b,X)		; 61 E1
	adc $C09FF8.l,X		; 7F F8 9F C0
	bra -65.b		; 80 BF
	asl $DE9E.w,X		; 1E 9E DE
	sbc $7F7FEF.l		; EF EF 7F 7F
	tas		; 1B
	txy		; 9B
	sbc #$FE.b		; E9 FE
	phy		; 5A
	wai		; CB
	php		; 08
	dec $1080.w,X		; DE 80 10
	mvp $11,$9D		; 44 9D 11
	cpx #$FCFF.w		; E0 FF FC
	ora $3DD8FF.l		; 0F FF D8 3D
	sta ($B8.b,X)		; 81 B8
	tsb $E8.b		; 04 E8
	nop		; EA
	sbc $62FD.w,X		; FD FD 62
	ora #$0F.b		; 09 0F
	ora ($81.b,X)		; 01 81
	ldx $B8AD.w,Y		; BE AD B8
	tsb $40.b		; 04 40
	mvn $62,$C0		; 54 C0 62
	cmp #$03.b		; C9 03
	ora $D049.w,Y		; 19 49 D0
	bcs  65.b		; B0 41
	and $F22C.w,X		; 3D 2C F2
	ora #$AB.b		; 09 AB
	jmp $DFE1.w		; 4C E1 DF
	adc $FA7D.w,X		; 7D 7D FA
	cmp [$D7.b],Y		; D7 D7
	stz $F4DC.w,X		; 9E DC F4
	lda $D40FFB.l		; AF FB 0F D4
	ora #$7F.b		; 09 7F
	jsr $387F.w		; 20 7F 38
	adc $C07F3E.l,X		; 7F 3E 7F C0
	ora ($BF.b),Y		; 11 BF
	inc $FCF0.w,X		; FE F0 FC
	eor $384720.l,X		; 5F 20 47 38
	eor ($3E.b,X)		; 41 3E
	dey		; 88
	and $C12C.w,Y		; 39 2C C1
	cpy #$E080.w		; C0 80 E0
	cpy #$C3F0.w		; C0 F0 C3
	pea $F060.w		; F4 60 F0
	bvs  -2.b		; 70 FE
	bcs -80.b		; B0 B0
	beq  64.b		; F0 40
	bra  32.b		; 80 20
	ora $90C083.l		; 0F 83 C0 90
	rts		; 60

	bra 112.b		; 80 70
	inc $F040.w,X		; FE 40 F0
	dec $F07E.w		; CE 7E F0
	inc $EAFC.w,X		; FE FC EA
	eor ($7D.b,X)		; 41 7D
	sbc $F77F.w,X		; FD 7F F7
	adc $CE.b,X		; 75 CE
	inc $80FC.w,X		; FE FC 80
	adc $827838.l,X		; 7F 38 78 82
	inc $7F8A.w,X		; FE 8A 7F
	dec $FCFF.w		; CE FF FC
	clv		; B8
	clv		; B8
	sed		; F8
	tsb $10.b		; 04 10
	inc $CEFD.w,X		; FE FD CE
	inc $58FD.w,X		; FE FD 58
	sbc $CBFEF6.l,X		; FF F6 FE CB
	bcs  15.b		; B0 0F
	beq  -8.b		; F0 F8
	ora $F777FD.l		; 0F FD 77 F7
	ror $72FA.w,X		; 7E FA 72
.ACCU 16
.INDEX 16
	rep #$F5		; C2 F5
	sta ($28.b,X)		; 81 28
	eor [$AE.b]		; 47 AE
	phb		; 8B
	adc $31C08F.l,X		; 7F 8F C0 31
	and $68A8F6.l		; 2F F6 A8 68
	adc $683818.l,X		; 7F 18 38 68
	clv		; B8
	pla		; 68
	cpy #$BCD0.w		; C0 D0 BC
	jsr ($8CFE.w,X)		; FC FE 8C
	cpy $1826.w		; CC 26 18
	jsr ($F8D0.w,X)		; FC D0 F8
	inc $40FF.w,X		; FE FF 40
	jsr ($51A2.w,X)		; FC A2 51
	inc $FC70.w,X		; FE 70 FC
	lda $4940FF.l		; AF FF 40 49
	rts		; 60

	clv		; B8
	asl A		; 0A
	sty $E0.b		; 84 E0
	sbc ($28.b),Y		; F1 28
	rti		; 40

	inc $FE98.w,X		; FE 98 FE
	ora $5A.b,S		; 03 5A
	ora ($01.b)		; 12 01
	inc $F0FC.w,X		; FE FC F0
	inc $CE02.w,X		; FE 02 CE
	cmp ($FE.b),Y		; D1 FE
	lda ($F2.b)		; B2 F2
	rol $85.b		; 26 85
	sbc $FAD1F7.l,X		; FF F7 D1 FA
	cmp $F1.b		; C5 F1
	and $FEE3.w,Y		; 39 E3 FE
	jmp $2ED3.w		; 4C D3 2E
	plx		; FA
	bra  60.b		; 80 3C
	jmp ($9CFE.w,X)		; 7C FE 9C
	cmp $30.b,S		; C3 30
	jmp $FE5E9E.l		; 5C 9E 5E FE
	asl $FEDE.w,X		; 1E DE FE
	cpy #$85FC.w		; C0 FC 85
	ror A		; 6A
	inc $FEE0.w,X		; FE E0 FE
	inc $FCFE.w,X		; FE FE FC
	ldy $FE.b,X		; B4 FE
	ldy #$0BF8.w		; A0 F8 0B
	ora $54.b,S		; 03 54
	eor $FE.b		; 45 FE
	ldy #$72FE.w		; A0 FE 72
.ACCU 16
.INDEX 16
	rep #$70		; C2 70
	cpy $FF.b		; C4 FF
	jsr ($5C6D.w,X)		; FC 6D 5C
	cmp [$FE.b],Y		; D7 FE
	jsr $FEE0.w		; 20 E0 FE
	inc $FEC6.w,X		; FE C6 FE
	ora [$03.b]		; 07 03
	inc $C8FC.w,X		; FE FC C8
	inc $FFFD.w,X		; FE FD FF
	tsb $03.b		; 04 03
	inc $AFFC.w,X		; FE FC AF
	sbc $DFFBFB.l,X		; FF FB FB DF
	cmp [$CF.b],Y		; D7 CF
	cmp $96DECE.l,X		; DF CE DE 96
	stx $F7.b		; 86 F7
	sbc $F7C6D6.l,X		; FF D6 C6 F7
	inc $35.b		; E6 35
	phx		; DA
	plp		; 28
	sbc $31FF30.l,X		; FF 30 FF 31
	sbc $39FF79.l,X		; FF 79 FF 39
	sbc $197E09.l,X		; FF 09 7E 19
	sbc $06FE6C.l,X		; FF 6C FE 06
	dec $17.b		; C6 17
	cmp [$1F.b],Y		; D7 1F
	cmp [$F2.b],Y		; D7 F2
	eor $FC.b,X		; 55 FC
	ror A		; 6A
	jsr ($FEF8.w,X)		; FC F8 FE
	inx		; E8
	sbc $68FCFE.l,X		; FF FE FC 68
	inc $FEFE.w,X		; FE FE FE
	and $EF.b,X		; 35 EF
	ldy #$FEFE.w		; A0 FE FE
	inc $FE68.w,X		; FE 68 FE
	cpx #$60FF.w		; E0 FF 60
	rts		; 60

	ror A		; 6A
	jsr ($7930.w,X)		; FC 30 79
	ora [$F0.b]		; 07 F0
	bpl  -2.b		; 10 FE
	bcc -16.b		; 90 F0
	bcs -29.b		; B0 E3
	ora $05.b,S		; 03 05
	bvs -23.b		; 70 E9
	.db $82, $1D, $AD		; 82 1D AD
	sbc $060007.l,X		; FF 07 00 06
	eor ($FD.b)		; 52 FD
	inc $F83E.w,X		; FE 3E F8
	sta ($F5.b),Y		; 91 F5
	lda $0C00C9.l		; AF C9 00 0C
	sei		; 78
	jmp ($F1FE.w,X)		; 7C FE F1
	sbc $3000.w,X		; FD 00 30
	cpy #$E307.w		; C0 07 E3
	jsr ($84F0.w,X)		; FC F0 84
	sed		; F8
	inc $AACB.w,X		; FE CB AA
	rti		; 40

	inc $3060.w,X		; FE 60 30
	php		; 08
	cpy #$70FE.w		; C0 FE 70
	cpx #$5CFE.w		; E0 FE 5C
	sbc ($30.b)		; F2 30
	tsb $FEE2.w		; 0C E2 FE
	ldy #$FE40.w		; A0 40 FE
	bcc  96.b		; 90 60
	cpx #$FE11.w		; E0 11 FE
	ldx $FCB8.w		; AE B8 FC
	ora $FC0A07.l		; 0F 07 0A FC
	cpy #$FE07.w		; C0 07 FE
	inc $08.b,X		; F6 08
	jsr ($0708.w,X)		; FC 08 07
	tsb $FC07.w		; 0C 07 FC
	sed		; F8
	ora $38D5FE.l		; 0F FE D5 38
	sbc $F7E6FE.l		; EF FE E6 F7
	ldx $B7.b		; A6 B7
	ldx $4287.w		; AE 87 42
	inc $B6F7.w,X		; FE F7 B6
	lda $79FFFE.l,X		; BF FE FF 79
	cmp ($0A.b),Y		; D1 0A
	eor $9874.w,Y		; 59 74 98
	inc $FCFA.w,X		; FE FA FC
	ora $8FFEC7.l		; 0F C7 FE 8F
	eor [$86.b]		; 47 86
	pld		; 2B
	inc $57AA.w,X		; FE AA 57
	jsr ($438B.w,X)		; FC 8B 43
	sed		; F8
	bit $FEC9.w,X		; 3C C9 FE
	jsr ($BD40.w,X)		; FC 40 BD
	tsb $FC.b		; 04 FC
	jsr ($FB00.w,X)		; FC 00 FB
	sta ($E1.b,S),Y		; 93 E1
	ora ($80.b,X)		; 01 80
	sta ($FA.b,X)		; 81 FA
	sbc $54FCFE.l,X		; FF FE FC 54
	pea $A075.w		; F4 75 A0
	ora #$6070.w		; 09 70 60
	bcs  32.b		; B0 20
	bvs -96.b		; 70 A0
	pla		; 68
	ldy #$D0D8.w		; A0 D8 D0
	pla		; 68
	cmp [$78.b]		; C7 78
	brk $B8.b		; 00 B8
	bmi  -8.b		; 30 F8
	asl $FED0.w		; 0E D0 FE
	cld		; D8
	sed		; F8
	plp		; 28
	eor $E99CA5.l,X		; 5F A5 9C E9
	iny		; C8
	sed		; F8
	php		; 08
	sed		; F8
	lda [$38.b],Y		; B7 38
	ora $FEFE08.l		; 0F 08 FE FE
	inc $9D0C.w,X		; FE 0C 9D
	inc $7C.b,X		; F6 7C
	ror $FEFE.w,X		; 7E FE FE
	lsr $0C5F.w,X		; 5E 5F 0C
	.db $82, $FC, $FE		; 82 FC FE
	inc $FEA1.w,X		; FE A1 FE
	tya		; 98
	adc #$FF02.w		; 69 02 FF
	ora $FE.b,S		; 03 FE
	sbc $450606.l,X		; FF 06 06 45
	ldy $A287.w		; AC 87 A2
	cpx #$FEEA.w		; E0 EA FE
	sei		; 78
	ora $C0.b		; 05 C0
	inc $AA.b,X		; F6 AA
	cmp $F6.b,S		; C3 F6
	phx		; DA
	ldy #$0EA0.w		; A0 A0 0E
	beq  -8.b		; F0 F8
	asl $E0BF.w		; 0E BF E0
	asl $FEF1.w		; 0E F1 FE
	sei		; 78
	beq  -2.b		; F0 FE
	jmp ($FC30.w,X)		; 7C 30 FC
	sed		; F8
	inc $FCFE.w,X		; FE FE FC
	inc $EAEB.w,X		; FE EB EA
	xce		; FB
	nop		; EA
	dey		; 88
	bmi  12.b		; 30 0C
	bvs  -2.b		; 70 FE
	sty $78.b		; 84 78
	inc $FC02.w,X		; FE 02 FC
	sta $F0.b,S		; 83 F0
	inc $FE15.w,X		; FE 15 FE
	inc $F2AC.w,X		; FE AC F2
	inc $070D.w,X		; FE 0D 07
	ora $0FFB4A.l,X		; 1F 4A FB 0F
	inc $ACFC.w,X		; FE FC AC
	sbc ($FE.b)		; F2 FE
	bpl  15.b		; 10 0F
	inc $B8FC.w,X		; FE FC B8
	lda ($F4.b),Y		; B1 F4
	sbc $FCF5FF.l,X		; FF FF F5 FC
	sbc $FF54.w,X		; FD 54 FF
	inc $DEFD.w,X		; FE FD DE
	sbc $FEAD.w,X		; FD AD FE
	sbc $5FFE.w		; ED FE 5F
	sbc $7F851B.l,X		; FF 1B 85 7F
	sbc $F19C13.l,X		; FF 13 9C F1
	jsr ($DF33.w,X)		; FC 33 DF
	eor ($BF.b,S),Y		; 53 BF
	sta ($7F.b,S),Y		; 93 7F
	pld		; 2B
	eor $E8.b,S		; 43 E8
	cmp $FE.b,X		; D5 FE
	rtl		; 6B

	inc $67FF.w,X		; FE FF 67
	eor $FC.b,S		; 43 FC
	ldy $FEF1.w		; AC F1 FE
	sed		; F8
	phd		; 0B
	tay		; A8
	inc $B5.b,X		; F6 B5
	cmp ($C0.b,S),Y		; D3 C0
	cmp ($FE.b,X)		; C1 FE
	jsr ($9F27.w,X)		; FC 27 9F
	cpy #$FCFE.w		; C0 FE FC
	sed		; F8
	beq  -2.b		; F0 FE
	iny		; C8
	adc $3CC0E9.l,X		; 7F E9 C0 3C
	bmi -12.b		; 30 F4
	beq -92.b		; F0 A4
	beq  -4.b		; F0 FC
	ldx $FEF1.w		; AE F1 FE
	sec		; 38
	sed		; F8
	adc $50.b,S		; 63 50
	cpy $0CFC.w		; CC FC 0C
	inc $FE04.w,X		; FE 04 FE
	ldx #$0BF0.w		; A2 F0 0B
	txs		; 9A
	sbc #$FFFD.w		; E9 FD FF
	ldy $F0.b		; A4 F0
	phd		; 0B
	txs		; 9A
	nop		; EA
	ror $5E5F.w,X		; 7E 5F 5E
	adc $F65756.l,X		; 7F 56 57 F6
	eor [$7D.b],Y		; 57 7D
	ora ($FE.b,X)		; 01 FE
	ror $8861.w,X		; 7E 61 88
	tax		; AA
	ror $A1FC.w,X		; 7E FC A1
	inc $A9FE.w,X		; FE FE A9
	lda $FE.b		; A5 FE
	inc $F1FE.w,X		; FE FE F1
	cmp ($FE.b),Y		; D1 FE
	asl $FF.b		; 06 FF
	sed		; F8
	asl A		; 0A
	ora $0F0D.w		; 0D 0D 0F
	ora $0E05.w		; 0D 05 0E
	plx		; FA
	ora $FE.b,S		; 03 FE
	sed		; F8
	ora #$070A.w		; 09 0A 07
	inc $9822.w,X		; FE 22 98
	ora $0F9813.l		; 0F 13 98 0F
	xba		; EB
	nop		; EA
	lda $AAF0FF.l,X		; BF FF F0 AA
	xce		; FB
	ldx $94AF.w,Y		; BE AF 94
	sta $FBFA8A.l,X		; 9F 8A FA FB
	inc $EBFB.w,X		; FE FB EB
	ora $F1.b,X		; 15 F1
	sbc $FE.b,S		; E3 FE
	eor $FE.b,X		; 55 FE
	adc $FE75FE.l,X		; 7F FE 75 FE
	ora $FE.b		; 05 FE
	trb $86.b		; 14 86
	sbc ($FF.b),Y		; F1 FF
	cpy $1EF2.w		; CC F2 1E
	inc $AE0E.w,X		; FE 0E AE
	inc $8A2A.w,X		; FE 2A 8A
	sbc [$C3.b]		; E7 C3
	ldx $119E.w,Y		; BE 9E 11
	asl $0FFE.w		; 0E FE 0F
	lda ($1F.b),Y		; B1 1F
	inc $4FB5.w,X		; FE B5 4F
	sbc $1FA11F.l,X		; FF 1F A1 1F
	cmp $FEDE.w		; CD DE FE
	sbc $C8DE.w		; ED DE C8
	plx		; FA
	bvc  50.b		; 50 32
	inx		; E8
	adc $ECDA01.l		; 6F 01 DA EC
	phx		; DA
	and ($FF.b,S),Y		; 33 FF
	inc $37FC.w,X		; FE FC 37
	ldy $D9.b,X		; B4 D9
	jsr ($000A.w,X)		; FC 0A 00
	inc $0065.w,X		; FE 65 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $8D.b		; 00 8D
	and $00.b		; 25 00
	sbc $0117F8.l,X		; FF F8 17 01
	inc $FE09.w,X		; FE 09 FE
	sed		; F8
	inc A		; 1A
	cpx #$B680.w		; E0 80 B6
	inc $04FF.w,X		; FE FF 04
	inc $06FF.w,X		; FE FF 06
	inc $0DF8.w,X		; FE F8 0D
	bra -102.b		; 80 9A
	lda $FE.b		; A5 FE
	sed		; F8
	trb $DA.b		; 14 DA
	sed		; F8
	ora $46F8FE.l		; 0F FE F8 46
	cop $FE.b		; 02 FE
	beq  -8.b		; F0 F8
	ora #$4C70.w		; 09 70 4C
	eor [$05.b],Y		; 57 05
	inc $415A.w,X		; FE 5A 41
	brk $40.b		; 00 40
	inc $0AF8.w,X		; FE F8 0A
	sbc $5529F8.l,X		; FF F8 29 55
	and $1C.b,X		; 35 1C
	jsr ($F8FE.w,X)		; FC FE F8
	ora ($0E.b,S),Y		; 13 0E
	sed		; F8
	tsb $F822.w		; 0C 22 F8
	ora ($0E.b),Y		; 11 0E
	sed		; F8
	lsr $FC92.w		; 4E 92 FC
	bit $FC.b,X		; 34 FC
	eor #$A8E6.w		; 49 E6 A8
	inc $FE48.w,X		; FE 48 FE
	php		; 08
	inc $F8FF.w,X		; FE FF F8
	adc ($AA.b),Y		; 71 AA
	tax		; AA
	jsr ($09F0.w,X)		; FC F0 09
	cld		; D8
	beq  31.b		; F0 1F
	iny		; C8
	inx		; E8
	ora $FF.b,X		; 15 FF
	sed		; F8
	ora ($42.b,S),Y		; 13 42
	pea $F8FE.w		; F4 FE F8
	and $EA.b		; 25 EA
	beq  11.b		; F0 0B
	sta ($E8.b)		; 92 E8
	asl $0A.b,X		; 16 0A
	tax		; AA
	nop		; EA
	sed		; F8
	ora ($EC.b,S),Y		; 13 EC
	sed		; F8
	ora $F09C.w		; 0D 9C F0
	clc		; 18
	inc $E8F6.w,X		; FE F6 E8
	and $17F8FE.l		; 2F FE F8 17
	bpl  -2.b		; 10 FE
	tax		; AA
	phy		; 5A
	phy		; 5A
	sbc ($CC.b)		; F2 CC
	cpx #$6A0D.w		; E0 0D 6A
	nop		; EA
	dex		; CA
	cpx #$FE09.w		; E0 09 FE
	inc $EC52.w,X		; FE 52 EC
	inc $80FF.w,X		; FE FF 80
	inc $18F8.w,X		; FE F8 18
	and ($36.b),Y		; 31 36
	dec $F8.b,X		; D6 F8
	ora $FE44C4.l		; 0F C4 44 FE
	lsr $F8.b		; 46 F8
	sbc $42.b		; E5 42
	dec $12.b		; C6 12
	inc $FE4A.w,X		; FE 4A FE
	asl A		; 0A
	inc $F4FD.w,X		; FE FD F4
	sta ($82.b,X)		; 81 82
	inc $C0EA.w,X		; FE EA C0
	pea $FCE0.w		; F4 E0 FC
	inx		; E8
	ldy #$C2A0.w		; A0 A0 C2
	inx		; E8
	and ($C4.b),Y		; 31 C4
	ldy $FEFE.w		; AC FE FE
	sed		; F8
	ora $F820D6.l,X		; 1F D6 20 F8
	ora ($55.b),Y		; 11 55
	bne  -2.b		; D0 FE
	sbc $F8FE80.l,X		; FF 80 FE F8
	bpl -36.b		; 10 DC
	sed		; F8
	bpl 108.b		; 10 6C
	inc $2C.b,X		; F6 2C
	inc $DCFC.w,X		; FE FC DC
	beq   9.b		; F0 09
	rol A		; 2A
	pla		; 68
	eor $FE.b		; 45 FE
	sbc $FC06.w,X		; FD 06 FC
	pea $04FC.w		; F4 FC 04
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	ora $09F8E0.l		; 0F E0 F8 09
	eor ($D6.b,X)		; 41 D6
	sbc $FE.b,S		; E3 FE
	dey		; 88
	inc $94.b,X		; F6 94
	beq  11.b		; F0 0B
	sta $20.b		; 85 20
	sta ($FE.b,X)		; 81 FE
	ora ($71.b,X)		; 01 71
	iny		; C8
	jsr $FC00.w		; 20 00 FC
	sta ($00.b,X)		; 81 00
	inc $AA80.w,X		; FE 80 AA
	tax		; AA
	inc $E0BC.w,X		; FE BC E0
	adc $27E8BA.l		; 6F BA E8 27
	stx $D0.b		; 86 D0
	ora ($CE.b),Y		; 11 CE
	beq  21.b		; F0 15
	and ($E8.b)		; 32 E8
	asl $F094.w		; 0E 94 F0
	ora ($92.b),Y		; 11 92
	sbc ($AA.b),Y		; F1 AA
	eor $EA.b,X		; 55 EA
	dec $74.b,X		; D6 74
	inx		; E8
	ora #$96.b		; 09 96
	beq   9.b		; F0 09
	inc $C0FC.w,X		; FE FC C0
	inc $B444.w,X		; FE 44 B4
	sbc ($C0.b,S),Y		; F3 C0
	inc $B8.b,X		; F6 B8
	cmp ($10.b)		; D2 10
	bit $FE.b		; 24 FE
	bcc -14.b		; 90 F2
	inc $D088.w,X		; FE 88 D0
	ora $12FE.w		; 0D FE 12
	eor ($D4.b,S),Y		; 53 D4
	sty $F4.b,X		; 94 F4
	jmp $48FE20.l		; 5C 20 FE 48
	eor $15.b,X		; 55 15
	inc $56FC.w,X		; FE FC 56
	cmp $D854.w,X		; DD 54 D8
	eor #$90.b		; 49 90
	jsr ($D8C4.w,X)		; FC C4 D8
	ora ($B4.b),Y		; 11 B4
	cld		; D8
	ora ($88.b),Y		; 11 88
	beq  47.b		; F0 2F
	mvn $0E,$55		; 54 55 0E
	sty $D8.b,X		; 94 D8
	ora ($9A.b,S),Y		; 13 9A
	beq  14.b		; F0 0E
	bit $22C8.w		; 2C C8 22
	.db $82, $F8, $09		; 82 F8 09
	ldx $FD.b		; A6 FD
	pha		; 48
	sbc ($84.b,X)		; E1 84
	inc $59.b,X		; F6 59
	bit $EE.b		; 24 EE
	inc $56EC.w,X		; FE EC 56
	dec $EEF4.w		; CE F4 EE
	ora ($40.b),Y		; 11 40
	dec $F6D5.w,X		; DE D5 F6
	pei ($A8.b)		; D4 A8
	rti		; 40

	sed		; F8
	ora ($55.b),Y		; 11 55
	eor $8A.b,X		; 55 8A
	inx		; E8
	adc [$3A.b]		; 67 3A
	bne  33.b		; D0 21
	stz $E8.b,X		; 74 E8
	ora $C8F2.w		; 0D F2 C8
	ora $FDFF.w		; 0D FF FD
	lda $F8FEE4.l		; AF E4 FE F8
	ora #$0A.b		; 09 0A
	bne  26.b		; D0 1A
	eor $55.b,X		; 55 55
	beq  -8.b		; F0 F8
	ora $EE.b,X		; 15 EE
	sed		; F8
	ora #$F6.b		; 09 F6
	inx		; E8
	ora $C8CE.w,X		; 1D CE C8
	and $30.b,S		; 23 30
	inc $D4D6.w		; EE D6 D4
	asl $E8.b,X		; 16 E8
	phd		; 0B
	dey		; 88
	cpy #$21.b		; C0 21
	lda $CA8A.w		; AD 8A CA
	cld		; D8
	ora #$12.b		; 09 12
	sed		; F8
	ora #$41.b		; 09 41
	sei		; 78
	cmp $AE.b,S		; C3 AE
	clv		; B8
	and ($FF.b),Y		; 31 FF
	inc $E4F0.w,X		; FE F0 E4
	eor $FA56.w		; 4D 56 FA
	bra  -2.b		; 80 FE
	sed		; F8
	phd		; 0B
	asl A		; 0A
	inc $FE48.w,X		; FE 48 FE
	bra  -2.b		; 80 FE
	sed		; F8
	asl $C0DA.w		; 0E DA C0
	bit $5555.w		; 2C 55 55
	inc $13F0.w,X		; FE F0 13
	rti		; 40

	inc $D4EC.w,X		; FE EC D4
	inc $42FE.w,X		; FE FE 42
	sed		; F8
	and ($E6.b,S),Y		; 33 E6
	bne -125.b		; D0 83
	cmp ($D0.b)		; D2 D0
	pld		; 2B
	sbc $5521F8.l,X		; FF F8 21 55
	eor $E0.b,X		; 55 E0
	tay		; A8
	phd		; 0B
	rol A		; 2A
	beq  29.b		; F0 1D
	ldy #$D8.b		; A0 D8
	ora $1BF8F0.l		; 0F F0 F8 1B
	dec A		; 3A
	clv		; B8
	and $CE.b,S		; 23 CE
	ldy #$51.b		; A0 51
	lsr $E8.b,X		; 56 E8
	ora $D420.w		; 0D 20 D4
	cmp $EEAA.w		; CD AA EE
	ldx $EC.b		; A6 EC
	jsr ($FE89.w,X)		; FC 89 FE
	adc [$E0.b]		; 67 E0
	clc		; 18
	sbc $1EDAF8.l,X		; FF F8 DA 1E
	ldy $6A.b,X		; B4 6A
	plb		; AB
	bne -64.b		; D0 C0
	ora ($FE.b),Y		; 11 FE
	sed		; F8
	eor $A8B8.w		; 4D B8 A8
	eor $3A.b,S		; 43 3A
	inx		; E8
	tsb $FE80.w		; 0C 80 FE
	jsr ($AC01.w,X)		; FC 01 AC
	bne  15.b		; D0 0F
	eor $F0.b,S		; 43 F0
	bit $AAAA.w,X		; 3C AA AA
	bcc  -8.b		; 90 F8
	ora $F4E4.w		; 0D E4 F4
	rol $0BC0.w		; 2E C0 0B
	phy		; 5A
	inx		; E8
	ora $E836.w		; 0D 36 E8
	bit $9050.w		; 2C 50 90
	rol $D4.b		; 26 D4
	cpx #$29.b		; E0 29
	jsr ($0DC8.w,X)		; FC C8 0D
	tax		; AA
	cpx $32.b		; E4 32
	bcs  11.b		; B0 0B
	bcs  -8.b		; B0 F8
	ora #$06.b		; 09 06
	cpx $B822.w		; EC 22 B8
	phd		; 0B
	tya		; 98
	cpy $FE.b		; C4 FE
	pei ($F0.b)		; D4 F0
	and $AE40.w,X		; 3D 40 AE
	clv		; B8
	bmi -32.b		; 30 E0
	sed		; F8
	ora $2080.w,X		; 1D 80 20
	cmp ($D9.b)		; D2 D9
	ora $17F0.w		; 0D F0 17
	sep #$41		; E2 41
	bpl -96.b		; 10 A0
	stx $49.b		; 86 49
	jsr ($745E.w,X)		; FC 5E 74
	cld		; D8
	clc		; 18
	lsr $10F8.w,X		; 5E F8 10
	sbc $030CF8.l		; EF F8 0C 03
	pld		; 2B
	lda $0C03FF.l,X		; BF FF 03 0C
	brk $39.b		; 00 39
	asl A		; 0A
	bne  52.b		; D0 34
	sbc $0304FF.l		; EF FF 04 03
	php		; 08
	tsb $30.b		; 04 30
	phd		; 0B
	cpy #$FF.b		; C0 FF
	sbc $DEC059.l,X		; FF 59 C0 DE
	trb $AB.b		; 14 AB
	and [$C0.b],Y		; 37 C0
	sbc $AD.b		; E5 AD
	stz $BB.b		; 64 BB
	beq  79.b		; F0 4F
	sec		; 38
	eor $22.b		; 45 22
	sbc $2006F0.l,X		; FF F0 06 20
	jsr $40C1.w		; 20 C1 40
	bra  26.b		; 80 1A
	brk $12.b		; 00 12
	stx $07.b,Y		; 96 07
	bra   3.b		; 80 03
	ora [$5D.b]		; 07 5D
	tya		; 98
	ora $71.b		; 05 71
	brk $44.b		; 00 44
	.db $82, $FC, $FF		; 82 FC FF
	jsr ($5120.w,X)		; FC 20 51
	sbc $800DF8.l		; EF F8 0D 80
	lda $0EB5E0.l,X		; BF E0 B5 0E
	brk $37.b		; 00 37
	brk $18.b		; 00 18
	brk $E0.b		; 00 E0
	sbc $FCEFFD.l,X		; FF FD EF FC
	stx $FC00.w		; 8E 00 FC
	brk $F1.b		; 00 F1
	brk $CF.b		; 00 CF
	brk $F8.b		; 00 F8
	sbc $0F76FC.l		; EF FC 76 0F
	stz $0A01.w,X		; 9E 01 0A
	sta ($FF.b,S),Y		; 93 FF
	stx $FFFC.w		; 8E FC FF
	jsr ($7CEA.w,X)		; FC EA 7C
	brk $EF.b		; 00 EF
	inc $F0A5.w,X		; FE A5 F0
	inc $FE60.w,X		; FE 60 FE
	brk $0C.b		; 00 0C
	ora [$39.b]		; 07 39
	ora $D0.b		; 05 D0
	phd		; 0B
	inc $09F8.w		; EE F8 09
	tay		; A8
	beq  -1.b		; F0 FF
	and $3B007B.l,X		; 3F 7B 00 3B
	brk $E8.b		; 00 E8
	asl $93.b,X		; 16 93
	asl $03.b,X		; 16 03
	jmp ($80DF.w)		; 6C DF 80
	ora [$F8.b]		; 07 F8
	sta [$AC.b],Y		; 97 AC
	lda $EEE6CE.l,X		; BF CE E6 EE
	and $00ED00.l		; 2F 00 ED 00
	and $00F0FE.l,X		; 3F FE F0 00
	adc $00.b,X		; 75 00
	ror $5E00.w		; 6E 00 5E
	ora $80C0.w,X		; 1D C0 80
	cpx #$40.b		; E0 40
	rts		; 60

	sbc $B00002.l,X		; FF 02 00 B0
	rti		; 40

	sed		; F8
	cpx #$F8.b		; E0 F8
	bcs 124.b		; B0 7C
	bvc   5.b		; 50 05
	inc $9CEE.w,X		; FE EE 9C
	sbc $DE.b,S		; E3 DE
	bvs   0.b		; 70 00
	clv		; B8
	sbc ($48.b)		; F2 48
	sed		; F8
	pei ($0F.b)		; D4 0F
	ror $B408.w,X		; 7E 08 B4
	dey		; 88
	jmp $6B70.w		; 4C 70 6B
	cpx #$FC.b		; E0 FC
	cpy #$00.b		; C0 00
	plp		; 28
	brk $58.b		; 00 58
	inc $E2FF.w,X		; FE FF E2
	sbc $3308.w,Y		; F9 08 33
	beq -102.b		; F0 9A
	sei		; 78
	and $F1.b,X		; 35 F1
	sbc ($E1.b,X)		; E1 E1
	cpx $E4.b		; E4 E4
	sta [$08.b]		; 87 08
	cmp #$C8.b		; C9 C8
	dec A		; 3A
	sed		; F8
	ldx #$0F.b		; A2 0F
	stz $8847.w,X		; 9E 47 88
	stx $1E.b		; 86 1E
	brk $1B.b		; 00 1B
	rol A		; 2A
	inc $20.b,X		; F6 20
	.db $42, $F4		; 42 F4
	rol $CF.b		; 26 CF
	nop		; EA
	inc $08.b,X		; F6 08
	plx		; FA
	jsr ($11E8.w,X)		; FC E8 11
	adc $FE0100.l,X		; 7F 00 01 FE
	asl $01.b		; 06 01
	inx		; E8
	and $707F83.l		; 2F 83 7F 70
	ora $523DC2.l		; 0F C2 3D 52
	dec $2A3C.w		; CE 3C 2A
	sed		; F8
	tsb $0CFF.w		; 0C FF 0C
.ACCU 16
	rep #$67		; C2 67
	sbc [$E3.b],Y		; F7 E3
	pea $0027.w		; F4 27 00
	cmp ($C0.b,X)		; C1 C0
	sed		; F8
	bpl -64.b		; 10 C0
	and $CF40BF.l,X		; 3F BF 40 CF
	sty $24.b,X		; 94 24
	lda $0803FF.l		; AF FF 03 08
	ora [$20.b]		; 07 20
	ora $FFF3D6.l,X		; 1F D6 F3 FF
	sed		; F8
	tsb $DF2F.w		; 0C 2F DF
	cld		; D8
	and $077FA1.l,X		; 3F A1 7F 07
	lda $0CFFFF.l,X		; BF FF FF 0C
	sbc $78F807.l,X		; FF 07 F8 78
	bra -128.b		; 80 80
	sed		; F8
	ora ($FB.b),Y		; 11 FB
	jsr ($FF7E.w,X)		; FC 7E FF
	sbc [$F8.b],Y		; F7 F8
	clv		; B8
	cpx #$1F.b		; E0 1F
	cpy #$2E.b		; C0 2E
	sbc $B515F8.l,X		; FF F8 15 B5
	sta $F7.b,S		; 83 F7
	asl $FB.b,X		; 16 FB
	ora $06.b,S		; 03 06
	adc $4009.w		; 6D 09 40
	sbc $F17CFC.l,X		; FF FC 7C F1
	cmp $B904.w,Y		; D9 04 B9
	nop		; EA
	and #$1FFF.w		; 29 FF 1F
	sbc $6C245B.l,X		; FF 5B 24 6C
	sbc ($F6.b)		; F2 F6
	and #$B0DB.w		; 29 DB B0
	dec $3F0C.w,X		; DE 0C 3F
	ora $8E.b,S		; 03 8E
	eor $061906.l,X		; 5F 06 19 06
	dec $D3D6.w		; CE D6 D3
	brk $4C.b		; 00 4C
	brk $33.b		; 00 33
	bvs -22.b		; 70 EA
	sbc $F1B910.l,X		; FF 10 B9 F1
	trb $03E0.w		; 1C E0 03
	jsr ($C31F.w,X)		; FC 1F C3
	adc $621FF5.l		; 6F F5 1F 62
	plx		; FA
	tas		; 1B
	rol $FFFD.w,X		; 3E FD FF
	sbc $9FFFE0.l,X		; FF E0 FF 9F
	sbc $7F3E18.l,X		; FF 18 3E 7F
	sed		; F8
	cmp ($30.b,X)		; C1 30
	ror $5841.w		; 6E 41 58
	eor [$C3.b]		; 47 C3
	pea $68E3.w		; F4 E3 68
	adc $FFF1FD.l,X		; 7F FD F1 FF
	rts		; 60

	ora $E601E6.l,X		; 1F E6 01 E6
	lda $FF1099.l,X		; BF 99 10 FF
	and $CAFFDA.l,X		; 3F DA FF CA
	mvn $FE,$A3		; 54 A3 FE
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	inc $FFFC.w,X		; FE FC FF
	sed		; F8
	bpl -27.b		; 10 E5
	sbc $FB02E7.l,X		; FF E7 02 FB
	mvn $F8,$00		; 54 00 F8
	ora ($3F.b),Y		; 11 3F
	sbc ($E2.b),Y		; F1 E2
	jsr ($7C9F.w,X)		; FC 9F 7C
	sbc $0EF807.l,X		; FF 07 F8 0E
	cpx #$EF.b		; E0 EF
	sta [$7F.b]		; 87 7F
	pei ($FC.b)		; D4 FC
	jsr ($F8C7.w,X)		; FC C7 F8
	jsr ($3F03.w,X)		; FC 03 3F
	sbc ($FF.b,S),Y		; F3 FF
	bit $C0F0.w,X		; 3C F0 C0
	stz $FA01.w		; 9C 01 FA
	brk $38.b		; 00 38
	nop		; EA
	rol $03.b,X		; 36 03
	inc $0FD4.w,X		; FE D4 0F
	plx		; FA
	sbc $0FF3FF.l,X		; FF FF F3 0F
	jsr ($DBEC.w,X)		; FC EC DB
	and [$F3.b]		; 27 F3
	beq  63.b		; F0 3F
	php		; 08
	sbc ($80.b)		; F2 80
	cpy $1CFC.w		; CC FC 1C
	ora $F3.b,S		; 03 F3
	tsb $7C85.w		; 0C 85 7C
	sty $68.b		; 84 68
	brk $78.b		; 00 78
	cpx #$C7.b		; E0 C7
	trb $E2.b		; 14 E2
	eor $F8.b,S		; 43 F8
	jsr ($E000.w,X)		; FC 00 E0
	eor ($1C.b,X)		; 41 1C
	cpx #$18.b		; E0 18
	ora [$C7.b]		; 07 C7
	sec		; 38
	adc $3F8F.w,Y		; 79 8F 3F
	cmp $1F1F1B.l		; CF 1B 1F 1F
	rol $9CE9.w,X		; 3E E9 9C
	ora $F1.b,S		; 03 F1
	php		; 08
	ora $ACF4BC.l		; 0F BC F4 AC
	ora $FE70F0.l		; 0F F0 70 FE
	bvc  72.b		; 50 48
	jsr $0F08.w		; 20 08 0F
	eor [$FC.b]		; 47 FC
	sbc ($F0.b),Y		; F1 F0
	iny		; C8
	tay		; A8
	sta $BE28E4.l,X		; 9F E4 28 BE
	stz $E9.b		; 64 E9
	dex		; CA
	asl A		; 0A
	rol $F8.b		; 26 F8
	phd		; 0B
	eor $08FC.w,X		; 5D FC 08
	inc $C686.w,X		; FE 86 C6
	sbc ($05.b),Y		; F1 05
	sed		; F8
	tsb $728A.w		; 0C 8A 72
	cmp $E0.b		; C5 E0
	sed		; F8
	asl $F0E5.w		; 0E E5 F0
	asl $E0EA.w		; 0E EA E0
	sbc $5DFCB3.l,X		; FF B3 FC 5D
	eor #$E1.b		; 49 E1
	sed		; F8
	phd		; 0B
	cpx #$F8.b		; E0 F8
	ora #$3F.b		; 09 3F
	cpy #$40.b		; C0 40
	inc $F8E1.w,X		; FE E1 F8
	ora #$40.b		; 09 40
	cpx #$FE.b		; E0 FE
	eor ($92.b,X)		; 41 92
	rti		; 40

	inc $E06C.w,X		; FE 6C E0
	sed		; F8
	ora #$40.b		; 09 40
	ldy #$F8.b		; A0 F8
	phd		; 0B
	mvn $40,$AA		; 54 AA 40
	dec $40F1.w,X		; DE F1 40
	sed		; F8
	tsb $F046.w		; 0C 46 F0
	ora #$82.b		; 09 82
	adc $03F1D0.l,X		; 7F D0 F1 03
	sbc $F860.w,Y		; F9 60 F8
	phd		; 0B
	adc $BCF180.l,X		; 7F 80 F1 BC
	inc $FCFE.w,X		; FE FE FC
	ora $87.b,S		; 03 87
	dex		; CA
	ora $C8DD7E.l,X		; 1F 7E DD C8
	ora $E4E9F5.l		; 0F F5 E9 E4
	sbc $0A.b,X		; F5 0A
	txa		; 8A
	adc $FF145F.l,X		; 7F 5F 14 FF
	.db $42, $79		; 42 79
	sbc ($0A.b)		; F2 0A
	cpx #$0A.b		; E0 0A
	inc $C0.b		; E6 C0
	tax		; AA
	adc $E201FE.l,X		; 7F FE 01 E2
	sbc ($0B.b,X)		; E1 0B
	ora $C7D857.l,X		; 1F 57 D8 C7
	sbc $80E378.l,X		; FF 78 E3 80
	cmp $C209F8.l,X		; DF F8 09 C2
	sbc ($F6.b,X)		; E1 F6
	cmp $ABFCF2.l,X		; DF F2 FC AB
	sbc $E6965F.l,X		; FF 5F 96 E6
	sbc $DB33.w,X		; FD 33 DB
	ora $E0F3.w,Y		; 19 F3 E0
	inc $8DE4.w		; EE E4 8D
	sbc ($02.b),Y		; F1 02
	sei		; 78
	sbc $B0.b,X		; F5 B0
	asl A		; 0A
	brk $C2.b		; 00 C2
	ora $F87CFE.l,X		; 1F FE 7C F8
	ora #$8A.b		; 09 8A
	jsr ($F8FF.w,X)		; FC FF F8
	ora #$01.b		; 09 01
	tsb $60.b		; 04 60
	and $E00A8A.l,X		; 3F 8A 0A E0
	sed		; F8
	asl A		; 0A
	txa		; 8A
	sbc ($24.b)		; F2 24
	asl $FF.b,X		; 16 FF
	inc $E0FF.w,X		; FE FF E0
	sbc $2C.b,S		; E3 2C
	cpx #$FF.b		; E0 FF
	ror A		; 6A
	asl A		; 0A
	ldx $6B.b		; A6 6B
	sbc ($FF.b),Y		; F1 FF
	sed		; F8
	ora #$83.b		; 09 83
	nop		; EA
	inc $AAF4.w,X		; FE F4 AA
	rol $98.b		; 26 98
	sbc $E703.w,X		; FD 03 E7
	asl $EA08.w,X		; 1E 08 EA
	ldy #$F8.b		; A0 F8
	ora #$06.b		; 09 06
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	sbc ($39.b)		; F2 39
	sbc ($FF.b,S),Y		; F3 FF
	sbc ($0F.b),Y		; F1 0F
	eor $27BFCA.l		; 4F CA BF 27
	cpx #$C0.b		; E0 C0
	pea $0DE4.w		; F4 E4 0D
	ora ($FC.b,S),Y		; 13 FC
	bmi -65.b		; 30 BF
	rti		; 40

	rti		; 40

	inc $E6E6.w,X		; FE E6 E6
	cmp $47B191.l,X		; DF 91 B1 47
	plx		; FA
	brk $AF.b		; 00 AF
	brk $DF.b		; 00 DF
	jsl $19E7E1.l		; 22 E1 E7 19
	eor $628320.l,X		; 5F 20 83 62
	lda $29BF4F.l,X		; BF 4F BF 29
	cld		; D8
.ACCU 8
	sep #$E5		; E2 E5
	cpx #$09.b		; E0 09
	stz $59C7.w,X		; 9E C7 59
	sec		; 38
	cpx #$F0.b		; E0 F0
	tsb $A660.w		; 0C 60 A6
	sbc $FC.b,X		; F5 FC
	cmp $2B.b,X		; D5 2B
	pld		; 2B
	tay		; A8
	jsr ($0177.w,X)		; FC 77 01
	inc $FDFF.w		; EE FF FD
	bvs -23.b		; 70 E9
	jsr ($FDFF.w,X)		; FC FF FD
	lda ($5F.b,S),Y		; B3 5F
	bra  99.b		; 80 63
	jmp ($DBC8.w)		; 6C C8 DB
	bpl  23.b		; 10 17
	ror $D3.b		; 66 D3
	ror A		; 6A
	trb $F87F.w		; 1C 7F F8
	ora ($0C.b,S),Y		; 13 0C
	and $27DF13.l		; 2F 13 DF 27
	ora $7CE4EF.l,X		; 1F EF E4 7C
	sbc [$FF.b]		; E7 FF
	tda		; 7B
	ora $87CEA8.l,X		; 1F A8 CE 87
	tyx		; BB
	sta ($7B.b,X)		; 81 7B
	ora ($08.b,X)		; 01 08
	ror $18.b		; 66 18
	sbc $F900FF.l		; EF FF 00 F9
	jsr ($FE30.w,X)		; FC 30 FE
	jmp ($ECB4.w,X)		; 7C B4 EC
	ora $76F1.w,Y		; 19 F1 76
	cpx #$6B.b		; E0 6B
	cpy #$E7.b		; C0 E7
	ldy #$DB.b		; A0 DB
	cmp [$FF.b]		; C7 FF
	bvc  61.b		; 50 3D
	jsr $E047.w		; 20 47 E0
	ora #$06.b		; 09 06
	ora [$09.b],Y		; 17 09
	and $1F6F17.l		; 2F 17 6F 1F
	ora [$16.b],Y		; 17 16
	cmp $C33F24.l,X		; DF 24 3F C3
	rol $E1.b,X		; 36 E1
	sbc $9F00.w,X		; FD 00 9F
	dex		; CA
	sbc ($AC.b,X)		; E1 AC
	ora $EFF7FE.l		; 0F FE F7 EF
	adc $FFE306.l,X		; 7F 06 E3 FF
	sbc $5555AA.l,X		; FF AA 55 55
	tax		; AA
	rol A		; 2A
	lda $65FC.w,X		; BD FC 65
	sbc $7F.b,S		; E3 7F
	beq   9.b		; F0 09
	sbc $E00AF8.l,X		; FF F8 0A E0
	tay		; A8
	eor [$FF.b],Y		; 57 FF
	beq 106.b		; F0 6A
	eor ($E0.b)		; 52 E0
	sed		; F8
	ora $E366.w		; 0D 66 E3
	cpx #$FF.b		; E0 FF
	lsr $FFF1.w,X		; 5E F1 FF
	tsa		; 3B
	cpx #$FE.b		; E0 FE
	bit $E6.b		; 24 E6
	eor $FD.b,X		; 55 FD
	cpx #$FC.b		; E0 FC
	ldy $D9E1.w		; AC E1 D9
.ACCU 8
	sep #$E0		; E2 E0
	sed		; F8
	asl A		; 0A
	lsr A		; 4A
	xba		; EB
	sbc $FE0FFD.l,X		; FF FD 0F FE
	jsr ($0A1C.w,X)		; FC 1C 0A
	ora ($03.b,X)		; 01 03
	rol A		; 2A
	xba		; EB
	cpx #$FC.b		; E0 FC
	tsb $FC.b		; 04 FC
	sbc ($E4.b),Y		; F1 E4
	nop		; EA
	bcs -64.b		; B0 C0
	sbc $E0C0E2.l,X		; FF E2 C0 E0
	sed		; F8
	ora #$E2.b		; 09 E2
	jsr ($F8E0.w,X)		; FC E0 F8
	ora #$01.b		; 09 01
	lda $D5.b,S		; A3 D5
	ora ($FC.b,X)		; 01 FC
	cpy #$63.b		; C0 63
	cpy #$F8.b		; C0 F8
	ora #$FE.b		; 09 FE
	cmp ($E9.b)		; D2 E9
	inx		; E8
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	sbc $6341.w,X		; FD 41 63
	sbc [$C0.b]		; E7 C0
	asl $B2.b		; 06 B2
	cmp $D840.w,Y		; D9 40 D8
	ora #$1F.b		; 09 1F
	cmp $F0.b,X		; D5 F0
	eor $55.b,X		; 55 55
	cpx #$F8.b		; E0 F8
	ora #$2B.b		; 09 2B
	cmp $EB35.w,X		; DD 35 EB
	jsr $9EDF.w		; 20 DF 9E
	inx		; E8
	asl A		; 0A
	phb		; 8B
	jsr ($F8C0.w,X)		; FC C0 F8
	asl A		; 0A
	cpx #$EF.b		; E0 EF
	cmp $17.b,X		; D5 17
	jsr $0BF0.w		; 20 F0 0B
	cpx #$F8.b		; E0 F8
	tas		; 1B
	txy		; 9B
	sbc ($E0.b,X)		; E1 E0
	sbc $FD03.w,X		; FD 03 FD
	ora [$FA.b]		; 07 FA
	cpx #$F8.b		; E0 F8
	phd		; 0B
	inc $8BEF.w,X		; FE EF 8B
	ora [$00.b]		; 07 00
	ldx $7DF4.w		; AE F4 7D
	cpy $CD.b		; C4 CD
	iny		; C8
	lda [$80.b]		; A7 80
	eor $EFE9A2.l,X		; 5F A2 E9 EF
	sbc $F740F7.l,X		; FF F7 40 F7
	cpx #$0F.b		; E0 0F
	ora ($3F.b,X)		; 01 3F
	ora $4F.b,S		; 03 4F
	and ($BF.b,S),Y		; 33 BF
	eor $D17A7F.l,X		; 5F 7F 7A D1
	lda $FFB51F.l,X		; BF 1F B5 FF
	ora $F1630F.l,X		; 1F 0F 63 F1
	eor $6454F2.l,X		; 5F F2 54 64
	cmp $1803.w,Y		; D9 03 18
	php		; 08
	phk		; 4B
	brk $55.b		; 00 55
	brk $98.b		; 00 98
	sbc $ABFCAA.l,X		; FF AA FC AB
	sta ($FB.b,S),Y		; 93 FB
	ora [$CF.b]		; 07 CF
	and [$8F.b],Y		; 37 8F
	sta [$FF.b]		; 87 FF
	rtl		; 6B

	ora $3718.w,X		; 1D 18 37
	jsr $40CF.w		; 20 CF 40
	cmp $808F40.l,X		; DF 40 8F 80
	sbc [$18.b],Y		; F7 18
	pea $E2A6.w		; F4 A6 E2
	and $FEFFF4.l,X		; 3F F4 FF FE
	clc		; 18
	sbc ($AA.b,S),Y		; F3 AA
	rol A		; 2A
	sbc $9AF5.w,X		; FD F5 9A
	ora $F807EF.l		; 0F EF 07 F8
	brk $E3.b		; 00 E3
	sta $01FD.w		; 8D FD 01
	inc $D5E0.w,X		; FE E0 D5
	brk $FA.b		; 00 FA
	dec A		; 3A
	phx		; DA
	beq -103.b		; F0 99
	lsr $E5.b		; 46 E5
	inc $A0E0.w,X		; FE E0 A0
	asl A		; 0A
	sbc $0F.b,S		; E3 0F
	sei		; 78
	rol A		; 2A
	cli		; 58
	cmp [$81.b]		; C7 81
	sbc $F5A07E.l,X		; FF 7E A0 F5
	plp		; 28
	sbc $F7.b,S		; E3 F7
	bvs  77.b		; 70 4D
	bra -128.b		; 80 80
	sbc $2815.w,X		; FD 15 28
	plp		; 28
	bra -38.b		; 80 DA
	iny		; C8
	cmp #$4F.b		; C9 4F
	sbc ($80.b,X)		; E1 80
	sbc $00EA.w,X		; FD EA 00
	cmp [$80.b],Y		; D7 80
	ora $80.b		; 05 80
	lda [$90.b],Y		; B7 90
	sta $507FD3.l		; 8F D3 7F 50
	sbc [$A0.b],Y		; F7 A0
	adc $80EF80.l		; 6F 80 EF 80
	cpx $837F.w		; EC 7F 83
	brk $0F.b		; 00 0F
	lda $9AFC07.l,X		; BF 07 FC 9A
	sbc ($80.b),Y		; F1 80
	sta ($82.b),Y		; 91 82
	jsr ($A0EF.w,X)		; FC EF A0
	eor ($01.b)		; 52 01
	jsr ($0FC2.w,X)		; FC C2 0F
	cld		; D8
	cpx #$0B.b		; E0 0B
	inc $0BF8.w,X		; FE F8 0B
	cpx #$50.b		; E0 50
	brk $8E.b		; 00 8E
	dey		; 88
	lsr $DF0E.w,X		; 5E 0E DF
	sta [$62.b]		; 87 62
	xce		; FB
	ply		; 7A
	sbc $0EF101.l,X		; FF 01 F1 0E
	cmp $0FF0.w,Y		; D9 F0 0F
	sta $C7FA70.l		; 8F 70 FA C7
	ora $FB02FD.l,X		; 1F FD 02 FB
	tsb $E0.b		; 04 E0
	ora [$F7.b]		; 07 F7
	rts		; 60

	adc [$40.b]		; 67 40
	ora $2A9763.l,X		; 1F 63 97 2A
	lda $36DFFC.l,X		; BF FC DF 36
	nop		; EA
	ora $CC447F.l		; 0F 7F 44 CC
	bit $FCFE.w		; 2C FE FC
	bra -31.b		; 80 E1
	cld		; D8
	ldy #$E4.b		; A0 E4
	jsl $F702F3.l		; 22 F3 02 F7
	ora $ED.b		; 05 ED
	ora ($FC.b,S),Y		; 13 FC
	php		; 08
	sbc $252AE7.l,X		; FF E7 2A 25
	sbc $FBFA.w,X		; FD FA FB
	jsr ($FFFF.w,X)		; FC FF FF
	ora ($F8.b,S),Y		; 13 F8
	sbc $707BF3.l,X		; FF F3 7B 70
	adc $0F48.w,X		; 7D 48 0F
	brk $5F.b		; 00 5F
	rti		; 40

	cpy #$E0.b		; C0 E0
	ora $FC.b,S		; 03 FC
	pei ($87.b)		; D4 87
	sbc $C3BF83.l,X		; FF 83 BF C3
	rol A		; 2A
	cli		; 58
	sbc $FCBC.w,X		; FD BC FC
	and ($FC.b,X)		; 21 FC
	jsr ($FC71.w,X)		; FC 71 FC
	asl $76.b		; 06 76
	cld		; D8
	asl A		; 0A
	ora $2EEF.w		; 0D EF 2E
	cpx $E0.b		; E4 E0
	inc $8701.w,X		; FE 01 87
	dec $A0BB.w		; CE BB A0
	adc $E4.b		; 65 E4
	sed		; F8
	asl A		; 0A
	cmp $3037EF.l		; CF EF 37 30
	lda $9B7F47.l,X		; BF 47 7F 9B
	cpx #$FE.b		; E0 FE
	sbc $1EBF.w,Y		; F9 BF 1E
	ora $F824E1.l		; 0F E1 24 F8
	ora $1E40.w		; 0D 40 1E
	ror $FF80.w,X		; 7E 80 FF
	tay		; A8
	eor [$9B.b],Y		; 57 9B
	lda ($5F.b,X)		; A1 5F
	eor [$BE.b]		; 47 BE
	and ($A0.b)		; 32 A0
	eor $C27F.w,X		; 5D 7F C2
	stp		; DB
	inc $BFFF.w,X		; FE FF BF
	eor $5EF1E0.l		; 4F E0 F1 5E
	sbc ($C1.b,S),Y		; F3 C1
	brk $0A.b		; 00 0A
	jsr ($F895.w,X)		; FC 95 F8
	tay		; A8
	cop $18.b		; 02 18
	adc $6EFEE4.l		; 6F E4 FE 6E
	cmp ($3C.b)		; D2 3C
	nop		; EA
	clc		; 18
	lsr $05.b,X		; 56 05
	sbc $DC2CC7.l,X		; FF C7 2C DC
	inc $09F8.w,X		; FE F8 09
	rti		; 40

	nop		; EA
	rol $0BE0.w,X		; 3E E0 0B
	jmp $FEE17F.l		; 5C 7F E1 FE
	jsr ($5E01.w,X)		; FC 01 5E
	sta ($F4.b,X)		; 81 F4
	cop $EB.b		; 02 EB
	jsr $09D0.w		; 20 D0 09
	rol $3C.b,X		; 36 3C
	sbc $C90F0F.l,X		; FF 0F 0F C9
	sbc $605FF7.l,X		; FF F7 5F 60
	dey		; 88
	lda $807F80.l,X		; BF 80 7F 80
	ora $4BA20A.l,X		; 1F 0A A2 4B
	brk $97.b		; 00 97
	brk $BE.b		; 00 BE
	and $E68F.w,Y		; 39 8F E6
	xba		; EB
	bne -20.b		; D0 EC
	inc $F764.w,X		; FE 64 F7
	rts		; 60

	sbc ($CF.b),Y		; F1 CF
	inc A		; 1A
	jsr $00D2.w		; 20 D2 00
	sbc $0B.b,X		; F5 0B
	tsx		; BA
	ora ($F6.b,X)		; 01 F6
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	sbc $FFFC.w,X		; FD FC FF
	xce		; FB
	sbc $FCA047.l,X		; FF 47 A0 FC
	eor [$67.b],Y		; 57 67
	rol A		; 2A
	sta ($0C.b)		; 92 0C
	rti		; 40

	eor $FF.b		; 45 FF
	cmp [$CC.b]		; C7 CC
	cpy #$0AD8.w		; C0 D8 0A
	sbc $75FC55.l,X		; FF 55 FC 75
	eor $0F.b,X		; 55 0F
	dec $F020.w		; CE 20 F0
	bpl -32.b		; 10 E0
	inc $FEFE.w,X		; FE FE FE
	ldx $E0EA.w		; AE EA E0
	sed		; F8
	phd		; 0B
	cmp $E0DB.w		; CD DB E0
	sbc $6050.w,X		; FD 50 60
.INDEX 8
	sep #$1A		; E2 1A
	jsr ($F8E0.w,X)		; FC E0 F8
	ora #$F4E2.w		; 09 E2 F4
	tsx		; BA
	asl A		; 0A
	cpx #$BF.b		; E0 BF
	dec $F1.b		; C6 F1
	rti		; 40

	dec $FEE0.w,X		; DE E0 FE
	cpy $CD.b		; C4 CD
	cmp [$57.b],Y		; D7 57
	inc $E1A1.w,X		; FE A1 E1
	cmp [$24.b],Y		; D7 24
	sbc ($81.b),Y		; F1 81
	cpx #$09.b		; E0 09
	sbc ($1E.b,X)		; E1 1E
	cmp $FF602F.l,X		; DF 2F 60 FF
	tya		; 98
	sbc ($55.b)		; F2 55
	eor $70.b,X		; 55 70
	sed		; F8
	ora $F0C4.w		; 0D C4 F0
	asl $F8FE.w		; 0E FE F8
	ora $E9BA.w		; 0D BA E9
	rts		; 60

	cpy #$0B.b		; C0 0B
	nop		; EA
	cmp $DFE9.w,Y		; D9 E9 DF
	ldy $CE.b		; A4 CE
	eor $F8.b,X		; 55 F8
	sbc $C00FB0.l,X		; FF B0 0F C0
	sed		; F8
	asl $BEA4.w		; 0E A4 BE
	cpx #$F8.b		; E0 F8
	ora $FB24.w		; 0D 24 FB
	brk $65.b		; 00 65
	brk $5E.b		; 00 5E
	ldx $DB.b		; A6 DB
	lda $3C0BB0.l,X		; BF B0 0B 3C
	sbc $ED56DB.l,X		; FF DB 56 ED
	cpx #$FE.b		; E0 FE
	lda $01F0FE.l		; AF FE F0 01
	inc $01.b		; E6 01
	cpx $D2F6.w		; EC F6 D2
	pla		; 68
	sbc $FF.b,S		; E3 FF
	sbc $78DF.w,X		; FD DF 78
	ora [$E0.b]		; 07 E0
	ora $C0FD55.l,X		; 1F 55 FD C0
	and $FFF13F.l,X		; 3F 3F F1 FF
	inc $02.b,X		; F6 02
	cpx $F080.w		; EC 80 F0
	ora #$ED7F.w		; 09 7F ED
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	sbc [$EF.b],Y		; F7 EF
	asl $04.b		; 06 04
	ora $04.b		; 05 04
	bvc -17.b		; 50 EF
	inc $FC03.w,X		; FE 03 FC
	ora [$F9.b]		; 07 F9
	ora [$FB.b]		; 07 FB
	cpx #$FE.b		; E0 FE
	beq -33.b		; F0 DF
	ora $0C0CF0.l,X		; 1F F0 0C 0C
	inc $02.b,X		; F6 02
	sbc $EF30.w,Y		; F9 30 EF
	beq  15.b		; F0 0F
	jsr ($FEE3.w,X)		; FC E3 FE
	sbc $5555.w,Y		; F9 55 55
	sta ($8C.b,X)		; 81 8C
	bvs  47.b		; 70 2F
	bcs 126.b		; B0 7E
	rts		; 60

	mvp $50,$0A		; 44 0A 50
	ora #$68A6.w		; 09 A6 68
	ora $136894.l		; 0F 94 68 13
	cpx $19F8.w		; EC F8 19
	eor $A055.w		; 4D 55 A0
	sed		; F8
	ora $9528.w		; 0D 28 95
	rti		; 40

	inc $FE02.w,X		; FE 02 FE
	sed		; F8
	ora #$931A.w		; 09 1A 93
	ldy #$3A.b		; A0 3A
	eor $55.b,X		; 55 55
	jmp $23F8.w		; 4C F8 23
	phx		; DA
	cli		; 58
	tas		; 1B
	bvc  56.b		; 50 38
	ora $3A6888.l		; 0F 88 68 3A
	ldy #$8D.b		; A0 8D
	inc $0FF8.w,X		; FE F8 0F
	rol $3C52.w		; 2E 52 3C
	eor ($8F.b),Y		; 51 8F
	sta ($B4.b)		; 92 B4
	cli		; 58
	bpl -60.b		; 10 C4
	brk $C5.b		; 00 C5
	inc $3A90.w,X		; FE 90 3A
	inc $4955.w,X		; FE 55 49
	bra  68.b		; 80 44
	sta $FE.b		; 85 FE
	sbc $FEEC.w,X		; FD EC FE
	inc $10F0.w		; EE F0 10
	sbc ($4B.b)		; F2 4B
	inc $58F8.w,X		; FE F8 58
	ora $AAAF.w		; 0D AF AA
.ACCU 8
.INDEX 8
	sep #$F2		; E2 F2
	ora $40.b		; 05 40
	ora ($FE.b,X)		; 01 FE
	sed		; F8
	ora $F0E8.w		; 0D E8 F0
	rol A		; 2A
	ror $40.b,X		; 76 40
	eor [$FA.b]		; 47 FA
	plp		; 28
	ora [$B6.b],Y		; 17 B6
	inx		; E8
	and ($AA.b,X)		; 21 AA
	.db $82, $52, $80		; 82 52 80
	bpl  50.b		; 10 32
	sed		; F8
	ora $D6FF2C.l		; 0F 2C FF D6
	jsr ($5444.w,X)		; FC 44 54
	rol $FE2A.w,X		; 3E 2A FE
	tax		; AA
	ora ($EA.b)		; 12 EA
	rol A		; 2A
	bcs -24.b		; B0 E8
	ora $EAFEB8.l		; 0F B8 FE EA
	bit $541E.w		; 2C 1E 54
	asl A		; 0A
	plp		; 28
	ora #$CC.b		; 09 CC
	tay		; A8
	tax		; AA
	nop		; EA
	stz $3D58.w,X		; 9E 58 3D
	ldy $45F0.w,X		; BC F0 45
	jmp ($43F8.w,X)		; 7C F8 43
	lsr $B23E.w		; 4E 3E B2
	bvs  13.b		; 70 0D
	ldx $2D08.w		; AE 08 2D
	dex		; CA
	rol A		; 2A
	dec $0E28.w,X		; DE 28 0E
	clc		; 18
	sec		; 38
	ora #$92.b		; 09 92
	inx		; E8
	ora ($EE.b),Y		; 11 EE
	phx		; DA
	sed		; F8
	ora #$52.b		; 09 52
	jmp $0C4866.l		; 5C 66 48 0C
	plb		; AB
	rol A		; 2A
	pea $584E.w		; F4 4E 58
	ora #$44.b		; 09 44
	pha		; 48
	ora ($30.b)		; 12 30
	pha		; 48
	bpl  80.b		; 10 50
	cli		; 58
	ora ($CA.b,S),Y		; 13 CA
	inx		; E8
	and [$FE.b]		; 27 FE
	sed		; F8
	and $54.b		; 25 54
	and ($A4.b,X)		; 21 A4
	stx $FE.b		; 86 FE
	sed		; F8
	asl A		; 0A
	sta ($F8.b)		; 92 F8
	ora #$80.b		; 09 80
	cpx #$0B.b		; E0 0B
	inx		; E8
	sty $57.b		; 84 57
	eor $FE.b,X		; 55 FE
	sta $78.b		; 85 78
	sbc $72E660.l,X		; FF 60 E6 72
	cpx #$09.b		; E0 09
	inc $09F8.w		; EE F8 09
	lsr $13E0.w,X		; 5E E0 13
	mvn $1B,$F8		; 54 F8 1B
	eor $55.b,X		; 55 55
	sbc #$68.b		; E9 68
	ora $093870.l		; 0F 70 38 09
	cop $E8.b		; 02 E8
	ora #$38.b		; 09 38
	sed		; F8
	and ($CE.b,X)		; 21 CE
	inx		; E8
	eor #$B4.b		; 49 B4
	beq  19.b		; F0 13
	cli		; 58
	bpl  19.b		; 10 13
	dey		; 88
	sed		; F8
	and ($25.b,X)		; 21 25
	eor #$C4.b		; 49 C4
	asl $E880.w,X		; 1E 80 E8
	ora #$F4.b		; 09 F4
	cpy $0FF8.w		; CC F8 0F
	phx		; DA
	dey		; 88
	inx		; E8
	ora $5556.w		; 0D 56 55
	dec $D0D6.w,X		; DE D6 D0
	asl A		; 0A
	cld		; D8
	bne  10.b		; D0 0A
	stz $DAED.w		; 9C ED DA
	jsr $B40B.w		; 20 0B B4
	pei ($08.b)		; D4 08
	php		; 08
	ora #$55.b		; 09 55
	and $9A.b		; 25 9A
	bne  10.b		; D0 0A
	sbc ($E8.b)		; F2 E8
	rol $DA.b		; 26 DA
	bpl  23.b		; 10 17
	bcc  88.b		; 90 58
	ora [$40.b],Y		; 17 40
	dec $1C4A.w,X		; DE 4A 1C
	inc $5555.w,X		; FE 55 55
	rol $27D8.w		; 2E D8 27
	inc $10F8.w,X		; FE F8 10
	rts		; 60

	cmp ($FE.b),Y		; D1 FE
	sed		; F8
	ora ($58.b),Y		; 11 58
	bne  17.b		; D0 11
	eor ($DE.b)		; 52 DE
	lsr $DADA.w,X		; 5E DA DA
	beq   9.b		; F0 09
	eor $55.b,X		; 55 55
	jmp.w [$19C0]		; DC C0 19
	bit $F0.b,X		; 34 F0
	ora $F818.w,Y		; 19 18 F8
	ora $20FE.w		; 0D FE 20
	ora ($FE.b),Y		; 11 FE
	sed		; F8
	ora $FC.b,X		; 15 FC
	inx		; E8
	ora [$D4.b],Y		; 17 D4
	sed		; F8
	ora $08.b,X		; 15 08
	inx		; E8
	and [$55.b]		; 27 55
	eor $CC.b,X		; 55 CC
	sed		; F8
	and $C002.w		; 2D 02 C0
	phd		; 0B
	.db $82, $20, $13		; 82 20 13
	bit $11F0.w,X		; 3C F0 11
	ldx $FD.b		; A6 FD
	beq -24.b		; F0 E8
	asl A		; 0A
	dec $1BE0.w		; CE E0 1B
	pla		; 68
	bne  71.b		; D0 47
	eor $25.b,X		; 55 25
	sbc ($28.b)		; F2 28
	ora $FC.b,X		; 15 FC
	cpy #$17.b		; C0 17
	stz $31B8.w,X		; 9E B8 31
	stx $D8.b,Y		; 96 D8
	phd		; 0B
	txa		; 8A
	cld		; D8
	ora ($B4.b),Y		; 11 B4
.INDEX 8
	sep #$90		; E2 90
	eor $55.b,X		; 55 55
	cpx $4E.b		; E4 4E
	inx		; E8
	beq   9.b		; F0 09
	inc A		; 1A
	sec		; 38
	ora $1FF03A.l		; 0F 3A F0 1F
	dec $F0.b		; C6 F0
	phd		; 0B
	ldx #$E2.b		; A2 E2
	cpx $0FF8.w		; EC F8 0F
	sty $BE.b		; 84 BE
	eor $55.b,X		; 55 55
	stz $0E.b		; 64 0E
	inc $16FE.w		; EE FE 16
	clv		; B8
	asl $C0C2.w		; 0E C2 C0
	jmp ($C044.w)		; 6C 44 C0
	eor [$0A.b]		; 47 0A
	cpx #$13.b		; E0 13
	and $D0C244.l,X		; 3F 44 C2 D0
	and $CE5555.l		; 2F 55 55 CE
	bne  17.b		; D0 11
	bra -40.b		; 80 D8
	tas		; 1B
	eor ($C0.b)		; 52 C0
	ora $2D30FC.l		; 0F FC 30 2D
	asl $7EEC.w		; 0E EC 7E
	sed		; F8
	ora ($10.b,S),Y		; 13 10
	cpx #$0C.b		; E0 0C
	cpy $18.b		; C4 18
	asl A		; 0A
	eor $55.b,X		; 55 55
	jsl $1C0CC0.l		; 22 C0 0C 1C
	cpy #$0E.b		; C0 0E
	inc $27F8.w,X		; FE F8 27
	cmp ($F2.b)		; D2 F2
	pea $29A8.w		; F4 A8 29
	inc $49F8.w,X		; FE F8 49
	brk $E6.b		; 00 E6
	rol $E0.b,X		; 36 E0
	ora $5555.w		; 0D 55 55
	.db $82, $98, $0B		; 82 98 0B
	stz $14BA.w		; 9C BA 14
	sed		; F8
	asl $D014.w		; 0E 14 D0
	clc		; 18
	dey		; 88
	plp		; 28
	and ($FE.b,S),Y		; 33 FE
	sed		; F8
	eor $FC.b,S		; 43 FC
	cld		; D8
	phd		; 0B
	ldx #$C8.b		; A2 C8
	ora [$55.b],Y		; 17 55
	eor $9C.b,X		; 55 9C
	iny		; C8
	ora #$40.b		; 09 40
	bcs  17.b		; B0 11
	adc ($C0.b)		; 72 C0
	asl $EA.b,X		; 16 EA
	cpy #$09.b		; C0 09
	inc $6AFF.w,X		; FE FF 6A
	cpx #$27.b		; E0 27
.ACCU 16
.INDEX 16
	rep #$B0		; C2 B0
	and $2486.w		; 2D 86 24
	adc $BA54.w		; 6D 54 BA
	iny		; C8
	phd		; 0B
	tsx		; BA
	inc $C884.w,X		; FE 84 C8
	lda ($82.b),Y		; B1 82
	inc $F8E6.w,X		; FE E6 F8
	ora #$DEC0.w		; 09 C0 DE
	eor $15.b,X		; 55 15
	stz $F8.b,X		; 74 F8
	asl $D8DA.w		; 0E DA D8
	rol $E0.b,X		; 36 E0
	ldy #$4249.w		; A0 49 42
	sed		; F8
	phd		; 0B
	ldy $B0.b,X		; B4 B0
	and ($40.b,X)		; 21 40
	bvc  18.b		; 50 12
	sed		; F8
	eor #$5857.w		; 49 57 58
	plx		; FA
	sbc $382010.l		; EF 10 20 38
	ora ($E4.b,S),Y		; 13 E4
	jsr ($DFFE.w,X)		; FC FE DF
	jsr $5436.w		; 20 36 54
	adc ($14.b),Y		; 71 14
	cpy #$10F8.w		; C0 F8 10
	inx		; E8
	inc $BC11.w		; EE 11 BC
	ora ($7B.b)		; 12 7B
	stz $55.b,X		; 74 55
	dec $1FAD.w,X		; DE AD 1F
	sed		; F8
	sbc $21DF.w,X		; FD DF 21
	cpy #$44FC.w		; C0 FC 44
	.db $62, $0A, $6A		; 62 0A 6A
	adc ($29.b,S),Y		; 73 29
	inc $FFBF.w		; EE BF FF
	php		; 08
	cpx #$D1FD.w		; E0 FD D1
	ror $FFE8.w,X		; 7E E8 FF
	pei ($7F.b)		; D4 7F
	inc $FE2F.w,X		; FE 2F FE
	sbc $F06192.l		; EF 92 61 F0
	adc ($B7.b,X)		; 61 B7
	pha		; 48
	adc $FBFB7F.l,X		; 7F 7F FB FB
	eor $2F2F5F.l,X		; 5F 5F 2F 2F
	clv		; B8
	inc $FFA3.w,X		; FE A3 FF
	ora $01D103.l		; 0F 03 D1 01
	inx		; E8
	brk $1F.b		; 00 1F
	cpx #$F847.w		; E0 47 F8
	inc $FB0F.w,X		; FE 0F FB
	ora [$7B.b]		; 07 7B
	sei		; 78
	lda ($FC.b)		; B2 FC
	inc $79C1.w,X		; FE C1 79
	xce		; FB
	cmp $0FD8DF.l,X		; DF DF D8 0F
	ora $F00303.l		; 0F 03 03 F0
	sbc $790FB2.l,X		; FF B2 0F 79
	adc $083F3F.l,X		; 7F 3F 3F 08
	php		; 08
	lda ($45.b),Y		; B1 45
	sei		; 78
	ldy #$FBBC.w		; A0 BC FB
	ora [$C0.b]		; 07 C0
	lda $612DD1.l		; AF D1 2D 61
	sbc [$C0.b],Y		; F7 C0
	inc $F7F7.w,X		; FE F7 F7
	tsx		; BA
	tsx		; BA
	jmp.w [$8758]		; DC 58 87
	cpx $EE.b		; E4 EE
	inc $799D.w		; EE 9D 79
	tsx		; BA
	adc $7D7D.w,Y		; 79 7D 7D
	phx		; DA
	sbc [$F0.b]		; E7 F0
	eor $75.b,X		; 55 75
	rol A		; 2A
	rol A		; 2A
	ora $82FCDF.l		; 0F DF FC 82
	lda $C780.w,X		; BD 80 C7
	sbc $DF8AFF.l,X		; FF FF 8A DF
	cmp $E6.b,X		; D5 E6
	phx		; DA
	phx		; DA
	jsr ($EAFD.w,X)		; FC FD EA
	plx		; FA
	sbc $F5.b,X		; F5 F5
	sbc $EBEBFF.l,X		; FF FF EB EB
	eor [$57.b],Y		; 57 57
	ldy #$12A0.w		; A0 A0 12
	ora ($25.b)		; 12 25
	cmp $05FE02.l,X		; DF 02 FE 05
	adc $FFFF0A.l		; 6F 0A FF FF
	sbc $A86F14.l,X		; FF 14 6F A8
	sbc $FF5F.w,X		; FD 5F FF
	sbc $11F7.w		; ED F7 11
	and $E6030D.l		; 2F 0D 03 E6
	sbc ($52.b,X)		; E1 52
	eor ($FF.b),Y		; 51 FF
	sbc $F1F3.w,X		; FD F3 F1
	stp		; DB
	sed		; F8
	adc $6978.w,Y		; 79 78 69
	sei		; 78
	cmp [$D7.b],Y		; D7 D7
	sta $BF51.w,X		; 9D 51 BF
	lda $F00EFF.l		; AF FF 0E F0
	inc $73FE.w,X		; FE FE 73
	sta [$FF.b]		; 87 FF
	sta [$EF.b]		; 87 EF
	inx		; E8
	sbc ($80.b),Y		; F1 80
	inc $89.b,X		; F6 89
	sbc $31BFC0.l,X		; FF C0 BF 31
	xce		; FB
	cpy $FF.b		; C4 FF
	cpx #$F87F.w		; E0 7F F8
	and $80F1DF.l,X		; 3F DF F1 80
	sbc $0EDEC0.l,X		; FF C0 DE 0E
	sbc $F8E0E0.l,X		; FF E0 E0 F8
	cpx #$FF61.w		; E0 61 FF
	tax		; AA
	sbc ($F6.b,S),Y		; F3 F6
	ora #$32B8.w		; 09 B8 32
	phx		; DA
	sta [$21.b]		; 87 21
	sbc $D6.b,X		; F5 D6
	rep #$C0		; C2 C0
	rti		; 40

	ora ($DC.b),Y		; 11 DC
	xba		; EB
	bcs  -2.b		; B0 FE
	sbc #$BEF6.w		; E9 F6 BE
	rti		; 40

	asl A		; 0A
	sbc [$08.b],Y		; F7 08
	inx		; E8
	stp		; DB
	bit $12.b		; 24 12
	eor $C2.b,X		; 55 C2
	pea $F080.w		; F4 80 F0
	ora ($EC.b),Y		; 11 EC
	cpy #$7CEF.w		; C0 EF 7C
	sbc ($BE.b),Y		; F1 BE
	sbc ($71.b)		; F2 71
	bpl -96.b		; 10 A0
	sed		; F8
	ora ($E2.b)		; 12 E2
	cmp $36D824.l,X		; DF 24 D8 36
	sbc ($14.b)		; F2 14
	ora ($DE.b,X)		; 01 DE
	ldy #$11F8.w		; A0 F8 11
	cmp $E29EF1.l		; CF F1 9E E2
	eor ($54.b,X)		; 41 54
	inc $F8.b,X		; F6 F8
	and $C01020.l,X		; 3F 20 10 C0
	cli		; 58
	phy		; 5A
	bit $54F4.w,X		; 3C F4 54
	eor [$D8.b],Y		; 57 D8
	brk $F0.b		; 00 F0
	ora ($26.b),Y		; 11 26
	pea $6A12.w		; F4 12 6A
	adc $F20084.l,X		; 7F 84 00 F2
	and $0DF8.w,X		; 3D F8 0D
	tas		; 1B
	ora $EC.b,X		; 15 EC
	sbc #$0441.w		; E9 41 04
	sbc $42.b,X		; F5 42
	jsr ($F004.w,X)		; FC 04 F0
	tsb $E287.w		; 0C 87 E2
	rts		; 60

	sta $CE.b,S		; 83 CE
	stx $EF.b		; 86 EF
	bpl  98.b		; 10 62
	sbc $5405.w,X		; FD 05 54
	adc ($FF.b)		; 72 FF
	rts		; 60

	sed		; F8
	ora ($EA.b)		; 12 EA
	sbc #$12C0.w		; E9 C0 12
	rts		; 60

	inx		; E8
	ora ($DF.b,S),Y		; 13 DF
	cpx $C7.b		; E4 C7
	sei		; 78
	sbc ($7E.b,X)		; E1 7E
	eor [$EB.b],Y		; 57 EB
	beq  63.b		; F0 3F
	sbc $EC560C.l,X		; FF 0C 56 EC
.ACCU 16
	rep #$EA		; C2 EA
	inc $0CEA.w		; EE EA 0C
	and [$1A.b]		; 27 1A
	dec $012A.w		; CE 2A 01
	inc $F4E3.w,X		; FE E3 F4
	cpy $F1.b		; C4 F1
	ora ($FE.b,X)		; 01 FE
	jsr ($FF1F.w,X)		; FC 1F FF
	ora $77.b,S		; 03 77
	dey		; 88
	adc ($FE.b)		; 72 FE
	lda $DBF7.w		; AD F7 DB
	stp		; DB
	ora [$23.b]		; 07 23
	ora $A06903.l,X		; 1F 03 69 A0
	eor $10.b,S		; 43 10
	bpl  -8.b		; 10 F8
	.db $62, $69, $0F		; 62 69 0F
	beq  -1.b		; F0 FF
	dec A		; 3A
	cmp $FC.b,S		; C3 FC
	sbc [$1C.b],Y		; F7 1C
	adc ($9C.b,S),Y		; 73 9C
	inc $EFFF.w,X		; FE FF EF
	rol A		; 2A
	eor ($FF.b),Y		; 51 FF
	jsr ($1B1B.w,X)		; FC 1B 1B
	jsr ($DA3F.w,X)		; FC 3F DA
	tsa		; 3B
	and $787B.w,Y		; 39 7B 78
	xce		; FB
	sed		; F8
	adc ($70.b),Y		; 71 70
	and ($31.b),Y		; 31 31
	rol $FC3E.w,X		; 3E 3E FC
	sbc $0F0FAA.l,X		; FF AA 0F 0F
	dec $FE.b		; C6 FE
	sta [$FF.b]		; 87 FF
	ora [$77.b]		; 07 77
	sta $BECEFF.l		; 8F FF CE BE
	cmp ($EF.b,X)		; C1 EF
	beq -17.b		; F0 EF
	cpy #$F0FE.w		; C0 FE F0
	sbc $923245.l		; EF 45 32 92
	adc $025A.w,X		; 7D 5A 02
	ora ($0D.b,X)		; 01 0D
	ora $87.b		; 05 87
	tsb $63FC.w		; 0C FC 63
	xba		; EB
	sbc $F3FCBE.l,X		; FF BE FC F3
	xce		; FB
	cpx $D0.b		; E4 D0
	inc $F601.w,X		; FE 01 F6
	bra -28.b		; 80 E4
	sbc #$E4E4.w		; E9 E4 E4
	sbc #$7FF0.w		; E9 F0 7F
	inc $7FBF.w,X		; FE BF 7F
	ora $FDA6.w,X		; 1D A6 FD
	adc $E0EAE4.l,X		; 7F E4 EA E0
	cpx #$F0FC.w		; E0 FC F0
	beq -44.b		; F0 D4
	adc #$BDA1.w		; 69 A1 BD
	lda $EF4A.w,X		; BD 4A EF
	bcc -92.b		; 90 A4
	pea $F8F0.w		; F4 F0 F8
	ror A		; 6A
	eor $1F.b,X		; 55 1F
	sed		; F8
	tsb $63DF.w		; 0C DF 63
	ldy #$FEE1.w		; A0 E1 FE
	sed		; F8
	ora #$54FD.w		; 09 FD 54
	iny		; C8
	bpl  98.b		; 10 62
	inc $F8.b		; E6 F8
	xba		; EB
	cpx #$12F0.w		; E0 F0 12
	eor [$70.b],Y		; 57 70
	nop		; EA
	jsr ($22DD.w,X)		; FC DD 22
	cld		; D8
	inc $F0C0.w,X		; FE C0 F0
	bpl -96.b		; 10 A0
	jsr $EFF5.w		; 20 F5 EF
	bpl  80.b		; 10 50
	cmp $3A.b,X		; D5 3A
	dec $C021.w		; CE 21 C0
	php		; 08
	ora $3EE948.l		; 0F 48 E9 3E
	and ($C1.b,S),Y		; 33 C1
	bmi  21.b		; 30 15
	nop		; EA
	jsr ($A62E.w,X)		; FC 2E A6
	mvp $F8,$E0		; 44 E0 F8
	tas		; 1B
	adc $E18F81.l,X		; 7F 81 8F E1
	stz $80FB.w		; 9C FB 80
	ldy $7A.b		; A4 7A
	and ($EC.b,X)		; 21 EC
	tda		; 7B
	jsr ($EC75.w,X)		; FC 75 EC
	txa		; 8A
	jmp.w [$FD1A]		; DC 1A FD
	sty $FD.b		; 84 FD
	ora ($3B.b)		; 12 3B
	ldx $F8C0.w		; AE C0 F8
	ora $F10AED.l		; 0F ED 0A F1
	adc $40C090.l		; 6F 90 C0 40
	sbc $B4E91E.l,X		; FF 1E E9 B4
	asl A		; 0A
	ldy #$11F8.w		; A0 F8 11
	cpx #$40BF.w		; E0 BF 40
	ldy $43.b,X		; B4 43
	inc $E3.b,X		; F6 E3
	lsr $0CC0.w		; 4E C0 0C
	sbc $10FF1F.l,X		; FF 1F FF 10
	sbc [$38.b]		; E7 38
	sta [$F8.b]		; 87 F8
	sta [$FC.b],Y		; 97 FC
	cmp $7C.b,S		; C3 7C
	sed		; F8
	and $7743BF.l,X		; 3F BF 43 77
	ora $447C.w		; 0D 7C 44
	and $EB41AC.l,X		; 3F AC 41 EB
	xba		; EB
	dec $00EA.w,X		; DE EA 00
	sbc ($40.b,S),Y		; F3 40
	sbc $84FFC2.l,X		; FF C2 FF 84
	tsb $E0.b		; 04 E0
	brk $E0.b		; 00 E0
	ora ($3F.b,X)		; 01 3F
	bne -111.b		; D0 91
	sbc ($E4.b),Y		; F1 E4
	ora ($57.b,X)		; 01 57
	sei		; 78
	lda $FBFBBF.l,X		; BF BF FB FB
	and ($52.b,S),Y		; 33 52
	bit $DCF2.w,X		; 3C F2 DC
	ora ($01.b,X)		; 01 01
	bit $873C.w,X		; 3C 3C 87
	sta [$D4.b]		; 87 D4
	nop		; EA
	ora [$1F.b],Y		; 17 1F
	inc $30.b,X		; F6 30
	cmp ($1C.b,X)		; C1 1C
	cpx #$E1B4.w		; E0 B4 E1
	and $C3.b,S		; 23 C3
	sbc $E02F.w,X		; FD 2F E0
	sbc $FEF7E0.l,X		; FF E0 F7 FE
	jmp.w [$FFC0]		; DC C0 FF
	pei ($E4.b)		; D4 E4
	rti		; 40

	and $C38F90.l,X		; 3F 90 8F C3
	cpy #$E2A5.w		; C0 A5 E2
	beq  96.b		; F0 60
	dey		; 88
	beq -46.b		; F0 D2
	cpx #$4FE9.w		; E0 E9 4F
	nop		; EA
	adc $B9FFDF.l,X		; 7F DF FF B9
	ora $0FBD.w,X		; 1D BD 0F
	sbc $E9E0C0.l,X		; FF C0 E0 E9
	bcs -65.b		; B0 BF
	ora $10C0F0.l		; 0F F0 C0 10
	stz $011E.w,X		; 9E 1E 01
	rts		; 60

	ora $D3E45F.l,X		; 1F 5F E4 D3
	lda $F3F3.w		; AD F3 F3
	cmp $EAE2A0.l,X		; DF A0 E2 EA
	sbc ($FF.b,X)		; E1 FF
	ldy #$D3BE.w		; A0 BE D3
	eor #$03BB.w		; 49 BB 03
	ora $AA11.w,Y		; 19 11 AA
	ldx $F5FE.w		; AE FE F5
	jsl $F820E4.l		; 22 E4 20 F8
	ora ($46.b),Y		; 11 46
	inc $DE.b,X		; F6 DE
	sbc $F020.w		; ED 20 F0
	asl $FE.b,X		; 16 FE
	ora ($BA.b,X)		; 01 BA
	inc $AAAA.w,X		; FE AA AA
	cpx #$15F8.w		; E0 F8 15
	ply		; 7A
	sbc ($DA.b),Y		; F1 DA
	and $E0.b,S		; 23 E0
	sed		; F8
	ora ($AA.b),Y		; 11 AA
	jsr ($F020.w,X)		; FC 20 F0
	asl $FD64.w,X		; 1E 64 FD
	cpx #$17F8.w		; E0 F8 17
	dex		; CA
	cmp $F226.w,X		; DD 26 F2
	cpx #$0BF8.w		; E0 F8 0B
	txy		; 9B
	cld		; D8
	phd		; 0B
	nop		; EA
	cop $20.b		; 02 20
	sbc ($F9.b)		; F2 F9
	asl $C0.b		; 06 C0
	sed		; F8
	ora ($BD.b,S),Y		; 13 BD
	tax		; AA
	tyx		; BB
	mvp $43,$D8		; 44 D8 43
	php		; 08
	xce		; FB
	tsb $DA.b		; 04 DA
	sbc #$C8A0.w		; E9 A0 C8
	tsb $ECDA.w		; 0C DA EC
.ACCU 8
	sep #$EB		; E2 EB
	rol A		; 2A
	plp		; 28
	jsr ($58F1.w,X)		; FC F1 58
	sbc $D8E0.w,X		; FD E0 D8
	bpl  98.b		; 10 62
	xba		; EB
	tsb $5E.b		; 04 5E
	cpx $E1B4.w		; EC B4 E1
	sta $80.b,S		; 83 80
	sbc $CF78DA.l,X		; FF DA 78 CF
	sty $40.b		; 84 40
	dex		; CA
	asl $E0.b		; 06 E0
	rti		; 40

	stz $EAEB.w		; 9C EB EA
	cpx $01EC.w		; EC EC 01
	plx		; FA
	sta $7FE161.l,X		; 9F 61 E1 7F
	sed		; F8
	sta $7F01C0.l,X		; 9F C0 01 7F
	asl $DE9E.w,X		; 1E 9E DE
	sbc $7F7FEF.l		; EF EF 7F 7F
	tas		; 1B
	txy		; 9B
	cmp ($FD.b,S),Y		; D3 FD
	phy		; 5A
	wai		; CB
	php		; 08
	dec $1080.w,X		; DE 80 10
	mvp $11,$9D		; 44 9D 11
	cpx #$FCFF.w		; E0 FF FC
	ora $FF7BB1.l		; 0F B1 7B FF
	sta ($B8.b,X)		; 81 B8
	tsb $E8.b		; 04 E8
	nop		; EA
	sbc $62FD.w,X		; FD FD 62
	ora #$0F.b		; 09 0F
	ora ($81.b,X)		; 01 81
	jmp ($B85B.w,X)		; 7C 5B B8
	tsb $40.b		; 04 40
	mvn $62,$C0		; 54 C0 62
	cmp #$03.b		; C9 03
	ora $D049.w,Y		; 19 49 D0
	bcs  65.b		; B0 41
	tda		; 7B
	cli		; 58
	sbc ($09.b)		; F2 09
	plb		; AB
	jmp $DFE1.w		; 4C E1 DF
	adc $FA7D.w,X		; 7D 7D FA
	cmp [$D7.b],Y		; D7 D7
	stz $E8DC.w,X		; 9E DC E8
	eor $D40FFB.l,X		; 5F FB 0F D4
	ora #$7F.b		; 09 7F
	jsr $387F.w		; 20 7F 38
	adc $C07F3E.l,X		; 7F 3E 7F C0
	ora ($7F.b),Y		; 11 7F
	sbc $FCF0.w,X		; FD F0 FC
	eor $384720.l,X		; 5F 20 47 38
	eor ($3E.b,X)		; 41 3E
	dey		; 88
	and $9917.w,Y		; 39 17 99
	cpy #$E080.w		; C0 80 E0
	cpy #$E987.w		; C0 87 E9
	beq  96.b		; F0 60
	beq 112.b		; F0 70
	inc $B0B0.w,X		; FE B0 B0
	beq  64.b		; F0 40
	bra  31.b		; 80 1F
	asl $20.b		; 06 20
	cpy #$6090.w		; C0 90 60
	bra 112.b		; 80 70
	inc $F040.w,X		; FE 40 F0
	dec $E0FD.w		; CE FD E0
	inc $EAFC.w,X		; FE FC EA
	eor ($7D.b,X)		; 41 7D
	sbc $F77F.w,X		; FD 7F F7
	adc $CE.b,X		; 75 CE
	inc $80FC.w,X		; FE FC 80
	adc ($F0.b),Y		; 71 F0
	adc $8AFE82.l,X		; 7F 82 FE 8A
	adc $FCFFCE.l,X		; 7F CE FF FC
	clv		; B8
	clv		; B8
	php		; 08
	jsr $FEF8.w		; 20 F8 FE
	sbc $FECE.w,X		; FD CE FE
	sbc $FEB0.w,X		; FD B0 FE
	inc $FE.b,X		; F6 FE
	lda $98.b		; A5 98
	ora $0FF8F0.l		; 0F F0 F8 0F
	sbc $F777.w,X		; FD 77 F7
	ror $85FA.w,X		; 7E FA 85
	xba		; EB
	adc ($81.b)		; 72 81
	plp		; 28
	eor [$AE.b]		; 47 AE
	phb		; 8B
	adc $31C08F.l,X		; 7F 8F C0 31
	and $FFA8F6.l		; 2F F6 A8 FF
	bmi 104.b		; 30 68
	sec		; 38
	pla		; 68
	clv		; B8
	pla		; 68
	cpy #$BCD0.w		; C0 D0 BC
	jsr ($8CFE.w,X)		; FC FE 8C
	cpy $304C.w		; CC 4C 30
	jsr ($F8D0.w,X)		; FC D0 F8
	inc $40FF.w,X		; FE FF 40
	jsr ($A344.w,X)		; FC 44 A3
	inc $FC70.w,X		; FE 70 FC
	lda $4940FF.l		; AF FF 40 49
	.db $42, $70		; 42 70
	phk		; 4B
	sta $F1.b,X		; 95 F1
	sbc $4028.w,X		; FD 28 40
	inc $FE98.w,X		; FE 98 FE
	ora $01.b,S		; 03 01
	and $FE09.w		; 2D 09 FE
	jsr ($FEF0.w,X)		; FC F0 FE
	cop $CE.b		; 02 CE
	cmp ($FE.b),Y		; D1 FE
	lda ($F2.b)		; B2 F2
	sta ($42.b,S),Y		; 93 42
	sbc $FAD1F7.l,X		; FF F7 D1 FA
	cmp $F1.b		; C5 F1
	and $FEE3.w,Y		; 39 E3 FE
	rol $E9A6.w		; 2E A6 E9
	plx		; FA
	bra  60.b		; 80 3C
	jmp ($9CFE.w,X)		; 7C FE 9C
	jmp $9E9861.l		; 5C 61 98 9E
	lsr $1EFE.w,X		; 5E FE 1E
	dec $C0FE.w,X		; DE FE C0
	jsr ($3542.w,X)		; FC 42 35
	inc $FEE0.w,X		; FE E0 FE
	inc $FCFE.w,X		; FE FE FC
	ldy $FE.b,X		; B4 FE
	ldy #$0BF8.w		; A0 F8 0B
	ora $AA.b,S		; 03 AA
	jsl $FEA0FE.l		; 22 FE A0 FE
	adc ($C2.b)		; 72 C2
	bvs -60.b		; 70 C4
	sbc $AE6DFC.l,X		; FF FC 6D AE
	xba		; EB
	inc $E020.w,X		; FE 20 E0
	inc $C6FE.w,X		; FE FE C6
	inc $0307.w,X		; FE 07 03
	inc $C8FC.w,X		; FE FC C8
	inc $FE04.w,X		; FE 04 FE
	sbc $FCFE03.l,X		; FF 03 FE FC
	lda $FBFBFF.l		; AF FF FB FB
	cmp $DFCFD7.l,X		; DF D7 CF DF
	dec $96DE.w		; CE DE 96
	stx $D6.b		; 86 D6
	xce		; FB
	sbc $E6F7C6.l,X		; FF C6 F7 E6
	and $DA.b,X		; 35 DA
	plp		; 28
	sbc $31FF30.l,X		; FF 30 FF 31
	sbc $39FF79.l,X		; FF 79 FF 39
	sbc $3F0419.l,X		; FF 19 04 3F
	sbc $06FE6C.l,X		; FF 6C FE 06
	dec $17.b		; C6 17
	cmp [$1F.b],Y		; D7 1F
	cmp [$F9.b],Y		; D7 F9
	tax		; AA
	jsr ($FC6A.w,X)		; FC 6A FC
	sed		; F8
	inc $FFE8.w,X		; FE E8 FF
	inc $68FC.w,X		; FE FC 68
	inc $FEFE.w,X		; FE FE FE
	txs		; 9A
	sbc [$A0.b],Y		; F7 A0
	inc $FEFE.w,X		; FE FE FE
	pla		; 68
	inc $FFE0.w,X		; FE E0 FF
	rts		; 60

	rts		; 60

	ror A		; 6A
	jsr ($F030.w,X)		; FC 30 F0
	ldy $1083.w,X		; BC 83 10
	inc $F090.w,X		; FE 90 F0
	bcs -29.b		; B0 E3
	ora $05.b,S		; 03 05
	bvs  23.b		; 70 17
	pea $80F9.w		; F4 F9 80
	asl A		; 0A
	ora [$00.b]		; 07 00
	asl $52.b		; 06 52
	sbc $91FE.w,X		; FD FE 91
	sbc $AF.b,X		; F5 AF
	cmp #$00.b		; C9 00
	tsb $3FC1.w		; 0C C1 3F
	sei		; 78
	jmp ($F1FE.w,X)		; 7C FE F1
	sbc $3000.w,X		; FD 00 30
	cpy #$F0FC.w		; C0 FC F0
	sty $F8.b		; 84 F8
	clc		; 18
	sta [$FE.b]		; 87 FE
	ldx $82.b,Y		; B6 82
	rti		; 40

	inc $C060.w,X		; FE 60 C0
	inc $8041.w,X		; FE 41 80
	bvs -32.b		; 70 E0
	inc $F25C.w,X		; FE 5C F2
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	adc ($00.b,X)		; 61 00
	ldy #$40.b		; A0 40
	inc $6090.w,X		; FE 90 60
	inc $8FAE.w,X		; FE AE 8F
	brk $B8.b		; 00 B8
	jsr ($070F.w,X)		; FC 0F 07
	asl A		; 0A
	jsr ($3EFE.w,X)		; FC FE 3E
	cpy #$F6.b		; C0 F6
	php		; 08
	jsr ($0708.w,X)		; FC 08 07
	tsb $FC07.w		; 0C 07 FC
	inc $7FD5.w,X		; FE D5 7F
	sec		; 38
	sec		; 38
	sbc $F7E6FE.l		; EF FE E6 F7
	ldx $B7.b		; A6 B7
	ldx $F7FE.w		; AE FE F7
	ldx $BF.b,Y		; B6 BF
	trb $A2.b		; 14 A2
	inc $79FF.w,X		; FE FF 79
	cmp ($0A.b),Y		; D1 0A
	eor $C3FE.w,Y		; 59 FE C3
	bit $FA.b,X		; 34 FA
	jsr ($C70F.w,X)		; FC 0F C7
	inc $478F.w,X		; FE 8F 47
	inc $57AA.w,X		; FE AA 57
	jmp $8BFC01.l		; 5C 01 FC 8B
	eor $F8.b,S		; 43 F8
	bit $FEC9.w,X		; 3C C9 FE
	jsr ($EA04.w,X)		; FC 04 EA
	cmp $FC.b,X		; D5 FC
	jsr ($FB00.w,X)		; FC 00 FB
	sta ($E1.b,S),Y		; 93 E1
	ora ($80.b,X)		; 01 80
	sta ($FE.b,X)		; 81 FE
	jsr ($F454.w,X)		; FC 54 F4
	sta $0980.w,Y		; 99 80 09
	sbc $60703F.l,X		; FF 3F 70 60
	bcs  32.b		; B0 20
	bvs -96.b		; 70 A0
	pla		; 68
	ldy #$D8.b		; A0 D8
	bne 104.b		; D0 68
	brk $B8.b		; 00 B8
	bmi  -8.b		; 30 F8
	dec $FB.b		; C6 FB
	asl $FED0.w		; 0E D0 FE
	cld		; D8
	sed		; F8
	plp		; 28
	stz $C8E9.w		; 9C E9 C8
	sed		; F8
	php		; 08
	rol A		; 2A
	sbc $51F8.w		; ED F8 51
	bcc  15.b		; 90 0F
	php		; 08
	inc $FEFE.w,X		; FE FE FE
	tsb $7E7C.w		; 0C 7C 7E
	inc $5EFE.w,X		; FE FE 5E
	ldy $C7.b,X		; B4 C7
	eor $FC820C.l,X		; 5F 0C 82 FC
	inc $A1FE.w,X		; FE FE A1
	inc $FF02.w,X		; FE 02 FF
	jmp $032B.w		; 4C 2B 03
	inc $06FF.w,X		; FE FF 06
	asl $D5.b		; 06 D5
	ldx #$E0.b		; A2 E0
	nop		; EA
	.db $62, $55, $FE		; 62 55 FE
	sei		; 78
	ora $C0.b		; 05 C0
	inc $F6.b,X		; F6 F6
	phx		; DA
	phb		; 8B
	adc $14F8F0.l,X		; 7F F0 F8 14
	ora $BF86.w,X		; 1D 86 BF
	cpx #$0E.b		; E0 0E
	sbc ($FE.b),Y		; F1 FE
	sei		; 78
	beq  -2.b		; F0 FE
	jmp ($FEF8.w,X)		; 7C F8 FE
	sbc ($87.b,X)		; E1 87
	inc $FEFC.w,X		; FE FC FE
	xba		; EB
	nop		; EA
	xce		; FB
	nop		; EA
	dey		; 88
	bvs  -2.b		; 70 FE
	adc ($18.b,X)		; 61 18
	sty $78.b		; 84 78
	inc $FC02.w,X		; FE 02 FC
	inc $FE15.w,X		; FE 15 FE
	sty $57.b		; 84 57
	inc $F2AC.w,X		; FE AC F2
	inc $070D.w,X		; FE 0D 07
	ora $FCFE0F.l,X		; 1F 0F FE FC
	ldy $DAF2.w		; AC F2 DA
	sbc $0F10FE.l,X		; FF FE 10 0F
	inc $B8FC.w,X		; FE FC B8
	lda ($F4.b),Y		; B1 F4
	sbc $FC.b,X		; F5 FC
	sbc $FF54.w,X		; FD 54 FF
	sbc $FDFE2F.l,X		; FF 2F FE FD
	dec $ADFD.w,X		; DE FD AD
	inc $FEED.w,X		; FE ED FE
	eor $FF1BFF.l,X		; 5F FF 1B FF
	ora ($9C.b,S),Y		; 13 9C
	sbc ($FC.b),Y		; F1 FC
	eor $FC.b,S		; 43 FC
	and ($DF.b,S),Y		; 33 DF
	eor ($BF.b,S),Y		; 53 BF
	sta ($7F.b,S),Y		; 93 7F
	pld		; 2B
	eor $FE.b,S		; 43 FE
	rtl		; 6B

	lda $FFFEAE.l		; AF AE FE FF
	adc [$43.b]		; 67 43
	jsr ($F1AC.w,X)		; FC AC F1
	inc $0BF8.w,X		; FE F8 0B
	tay		; A8
	inc $C0.b,X		; F6 C0
	cmp ($FE.b,X)		; C1 FE
	jsr ($FE9D.w,X)		; FC 9D FE
	adc $C09F.w		; 6D 9F C0
	inc $F8FC.w,X		; FE FC F8
	beq  -2.b		; F0 FE
	iny		; C8
	cpy #$3C.b		; C0 3C
	bmi -12.b		; 30 F4
	beq  75.b		; F0 4B
	ora $FCF0A4.l,X		; 1F A4 F0 FC
	ldx $FEF1.w		; AE F1 FE
	sec		; 38
	sed		; F8
	cpy $0CFC.w		; CC FC 0C
	sta $EA.b,S		; 83 EA
	inc $FE04.w,X		; FE 04 FE
	ldx #$F0.b		; A2 F0
	phd		; 0B
	txs		; 9A
	sbc #$A4.b		; E9 A4
	beq  11.b		; F0 0B
	txs		; 9A
	nop		; EA
	ror $0FFF.w,X		; 7E FF 0F
	eor $567F5E.l,X		; 5F 5E 7F 56
	eor [$F6.b],Y		; 57 F6
	eor [$7D.b],Y		; 57 7D
	ora ($FE.b,X)		; 01 FE
	ror $7EAA.w,X		; 7E AA 7E
	eor $2C.b,S		; 43 2C
	jsr ($FEA1.w,X)		; FC A1 FE
	inc $FEA9.w,X		; FE A9 FE
	inc $D1F1.w,X		; FE F1 D1
	sbc $77.b,X		; F5 77
	inc $FF06.w,X		; FE 06 FF
	sed		; F8
	asl A		; 0A
	ora $0F0D.w		; 0D 0D 0F
	ora $0305.w		; 0D 05 03
	inc $09F8.w,X		; FE F8 09
	asl A		; 0A
	ora [$D0.b]		; 07 D0
	sbc $9880FE.l,X		; FF FE 80 98
	ora $0F9871.l		; 0F 71 98 0F
	xba		; EB
	nop		; EA
	lda $BEFBAA.l,X		; BF AA FB BE
	lda $8F8794.l		; AF 94 87 8F
	sta $FBFA8A.l,X		; 9F 8A FA FB
	inc $EBFB.w,X		; FE FB EB
	ora $FE.b,X		; 15 FE
	eor $1F.b,X		; 55 1F
	and [$FE.b],Y		; 37 FE
	adc $FE75FE.l,X		; 7F FE 75 FE
	ora $FE.b		; 05 FE
	trb $FF.b		; 14 FF
	cpy $1EF2.w		; CC F2 1E
	sty $FE3F.w		; 8C 3F FE
	asl $FEAE.w		; 0E AE FE
	rol A		; 2A
	txa		; 8A
	ldx $119E.w,Y		; BE 9E 11
	asl $7E1F.w		; 0E 1F 7E
	inc $B10F.w,X		; FE 0F B1
	ora $1FB5FE.l,X		; 1F FE B5 1F
	lda ($1F.b,X)		; A1 1F
	cmp $FADE.w		; CD DE FA
	adc $DEEDFE.l,X		; 7F FE ED DE
	iny		; C8
	plx		; FA
	bvc  50.b		; 50 32
	inx		; E8
	phx		; DA
	cpx $33DA.w		; EC DA 33
	sbc $FE500B.l,X		; FF 0B 50 FE
	jsr ($B437.w,X)		; FC 37 B4
	cmp $FEFC.w,Y		; D9 FC FE
	adc $00.b		; 65 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda ($D1.b,X)		; A1 D1
	brk $FF.b		; 00 FF
	ora #$FE.b		; 09 FE
	sed		; F8
	bit $CE01.w		; 2C 01 CE
	sbc $6B56FC.l,X		; FF FC 56 6B
	asl $FE.b		; 06 FE
	sed		; F8
	ora #$40.b		; 09 40
	inc $0EF8.w,X		; FE F8 0E
	cpx $F8.b		; E4 F8
	phd		; 0B
	inc $18F8.w,X		; FE F8 18
	lsr $FE.b		; 46 FE
	sed		; F8
	bpl -36.b		; 10 DC
	sed		; F8
	ora ($86.b),Y		; 11 86
	sbc $FEAA.w		; ED AA FE
	sed		; F8
	ora ($E0.b)		; 12 E0
	sed		; F8
	phd		; 0B
	cop $FE.b		; 02 FE
	sed		; F8
	tsb $8000.w		; 0C 00 80
	inc $0AF8.w,X		; FE F8 0A
	sbc $A048F8.l,X		; FF F8 48 A0
	sed		; F8
	asl A		; 0A
	ror A		; 6A
	ldx $F8F0.w		; AE F0 F8
	asl $F882.w		; 0E 82 F8
	asl $F8CA.w		; 0E CA F8
	bpl   6.b		; 10 06
	sed		; F8
	ora [$04.b],Y		; 17 04
	inc $B405.w,X		; FE 05 B4
	sbc ($12.b),Y		; F1 12
	pla		; 68
	inc $17F8.w,X		; FE F8 17
	bra -16.b		; 80 F0
	tas		; 1B
	inc $BCC4.w,X		; FE C4 BC
	jsr ($F8A4.w,X)		; FC A4 F8
	bpl -128.b		; 10 80
	ora $08.b,X		; 15 08
	inc $12F8.w,X		; FE F8 12
	adc ($F0.b)		; 72 F0
	bmi  88.b		; 30 58
	sed		; F8
	phd		; 0B
	stx $FE.b,Y		; 96 FE
	ror A		; 6A
	eor $8E.b,X		; 55 8E
	sta ($FE.b,X)		; 81 FE
	sbc $F0A7.w,X		; FD A7 F0
	phd		; 0B
	rti		; 40

	inc $FFFF.w,X		; FE FF FF
	sed		; F8
	jsr ($E8CA.w,X)		; FC CA E8
	asl $F8FE.w,X		; 1E FE F8
	txy		; 9B
	lda $2A.b,X		; B5 2A
	cpx $E8.b		; E4 E8
	and $FE.b		; 25 FE
	sed		; F8
	and $E818.w,Y		; 39 18 E8
	ora $CE41.w		; 0D 41 CE
	inx		; E8
	asl A		; 0A
	dex		; CA
	inx		; E8
	ora $F85C.w,X		; 1D 5C F8
	ora $EE78.w		; 0D 78 EE
	tay		; A8
	ror A		; 6A
	ldx $F8C2.w,Y		; BE C2 F8
	and $FF.b		; 25 FF
	sed		; F8
	ora $19E088.l,X		; 1F 88 E0 19
	inc $81F8.w,X		; FE F8 81
	asl A		; 0A
	cpx #$1B.b		; E0 1B
	inc $26F8.w,X		; FE F8 26
	bra  43.b		; 80 2B
	eor #$FE.b		; 49 FE
	inc $FE05.w,X		; FE 05 FE
	inc $E53A.w,X		; FE 3A E5
	inc $DCC8.w,X		; FE C8 DC
	eor $55.b,X		; 55 55
	inc $FE44.w,X		; FE 44 FE
	sed		; F8
	asl A		; 0A
	ror $D8DE.w		; 6E DE D8
	sed		; F8
	phd		; 0B
	sbc $E8B7F8.l,X		; FF F8 B7 E8
	bne  20.b		; D0 14
	cmp ($C8.b)		; D2 C8
	bpl 102.b		; 10 66
	bne  27.b		; D0 1B
	eor $55.b,X		; 55 55
	inc $19F8.w,X		; FE F8 19
	ldy $0CF8.w,X		; BC F8 0C
	sta ($C8.b)		; 92 C8
	phd		; 0B
	inc $0DF8.w,X		; FE F8 0D
	ply		; 7A
	inx		; E8
	and ($88.b)		; 32 88
	cpy #$21.b		; C0 21
	inc $19F8.w,X		; FE F8 19
	sbc $5255FD.l,X		; FF FD 55 52
	sei		; 78
	sed		; F8
	jsl $4FD8C2.l		; 22 C2 D8 4F
	pla		; 68
	inc $24.b		; E6 24
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	sbc ($C8.b)		; F2 C8
	adc [$F8.b]		; 67 F8
	cpx #$23.b		; E0 23
	eor $55.b,X		; 55 55
	tya		; 98
	sed		; F8
	eor ($68.b),Y		; 51 68
	beq  23.b		; F0 17
	sty $6EEC.w		; 8C EC 6E
	cpy #$16.b		; C0 16
	rts		; 60

	cpy #$21.b		; C0 21
	jmp $920AC0.l		; 5C C0 0A 92
	inx		; E8
	ora $E062.w		; 0D 62 E0
	ora $5555.w		; 0D 55 55
	inc $13F8.w,X		; FE F8 13
	lsr A		; 4A
	iny		; C8
	eor [$EA.b],Y		; 57 EA
	sed		; F8
	ora ($F0.b,S),Y		; 13 F0
	sed		; F8
	ora $F8C4.w,Y		; 19 C4 F8
	ora $7C.b,X		; 15 7C
	iny		; C8
	pld		; 2B
	beq -80.b		; F0 B0
	ora $0DC8D8.l		; 0F D8 C8 0D
	eor $55.b,X		; 55 55
	tax		; AA
	inx		; E8
	eor $B08E.w		; 4D 8E B0
	and $0FB08C.l		; 2F 8C B0 0F
	asl $F0.b,X		; 16 F0
	asl $F030.w		; 0E 30 F0
	trb $D8A2.w		; 1C A2 D8
	ora [$76.b],Y		; 17 76
	sed		; F8
	ora ($58.b,S),Y		; 13 58
	sed		; F8
	ora ($AD.b),Y		; 11 AD
	tax		; AA
	bvc -48.b		; 50 D0
	ora $D83E.w		; 0D 3E D8
	tsb $8280.w		; 0C 80 82
	cld		; D8
	tsb $D8FE.w		; 0C FE D8
	ora ($26.b,S),Y		; 13 26
	clv		; B8
	phx		; DA
	inc $0BB8.w		; EE B8 0B
	tax		; AA
	clv		; B8
	phd		; 0B
	txa		; 8A
	lsr $AC.b		; 46 AC
	cld		; D8
	adc ($FE.b,X)		; 61 FE
	sed		; F8
	ora $C8.b,X		; 15 C8
	cpy #$0B.b		; C0 0B
	inc $C38C.w,X		; FE 8C C3
	tsb $FE.b		; 04 FE
	eor $55.b,X		; 55 55
	beq -24.b		; F0 E8
	ora #$E2.b		; 09 E2
	cld		; D8
	ora $25F826.l		; 0F 26 F8 25
	ldy #$F8.b		; A0 F8
	phd		; 0B
	sty $C8.b		; 84 C8
	ora #$1C.b		; 09 1C
	beq  99.b		; F0 63
	stz $B0.b,X		; 74 B0
	ora $E834.w,Y		; 19 34 E8
	ora $205555.l		; 0F 55 55 20
	cld		; D8
	jsr $9868.w		; 20 68 98
	asl $D8B6.w,X		; 1E B6 D8
	ora ($1A.b,S),Y		; 13 1A
	cpx #$53.b		; E0 53
	ldx $E4.b,Y		; B6 E4
	sty $F0.b		; 84 F0
	ora $CE40.w		; 0D 40 CE
	bcc -11.b		; 90 F5
	eor $55.b,X		; 55 55
	dec $A6B1.w		; CE B1 A6
	beq 109.b		; F0 6D
	jmp $B069E8.l		; 5C E8 69 B0
	clv		; B8
	ora $C448.w,Y		; 19 48 C4
	inc $15F8.w,X		; FE F8 15
	bcs -64.b		; B0 C0
	eor ($3E.b),Y		; 51 3E
	jsr ($AABD.w,X)		; FC BD AA
	stz $F0.b,X		; 74 F0
	ora #$72.b		; 09 72
	sbc [$80.b],Y		; F7 80
	cop $C0.b		; 02 C0
	tsx		; BA
	bcs  53.b		; B0 35
	bit $9590.w,X		; 3C 90 95
	inc A		; 1A
	bra  11.b		; 80 0B
	clc		; 18
	bra  17.b		; 80 11
	nop		; EA
	sta [$B6.b]		; 87 B6
	iny		; C8
	ora $E86E.w		; 0D 6E E8
	phd		; 0B
	dec A		; 3A
	bcs  18.b		; B0 12
	rol A		; 2A
	sed		; F8
	eor ($FF.b,S),Y		; 53 FF
	sta $FF7FFF.l,X		; 9F FF 7F FF
	sbc $C10FFF.l,X		; FF FF 0F C1
	cmp ($00.b,X)		; C1 00
	ror $5841.w		; 6E 41 58
	eor [$C3.b]		; 47 C3
	bra -128.b		; 80 80
	adc $8FFF00.l,X		; 7F 00 FF 8F
	eor [$FE.b]		; 47 FE
	rts		; 60

	ora $E601E6.l,X		; 1F E6 01 E6
	lda $E43FFF.l,X		; BF FF 3F E4
	sta ($EA.b,S),Y		; 93 EA
	sbc $E81FFC.l,X		; FF FC 1F E8
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	inc $FFFC.w,X		; FE FC FF
	sed		; F8
	bpl -27.b		; 10 E5
	sbc $3EE4E7.l,X		; FF E7 E4 3E
	ora $F8FFFA.l,X		; 1F FA FF F8
	ora $E2F13F.l		; 0F 3F F1 E2
	jsr ($7C9F.w,X)		; FC 9F 7C
	sbc $C3B507.l,X		; FF 07 B5 C3
	sed		; F8
	asl $FDE8.w		; 0E E8 FD
	ora $D4.b,S		; 03 D4
	sbc $C7FC.w,X		; FD FC C7
	sed		; F8
	jsr ($CE3F.w,X)		; FC 3F CE
	ora $3F.b,S		; 03 3F
	sbc ($FF.b,S),Y		; F3 FF
	bit $C0F0.w,X		; 3C F0 C0
	plx		; FA
	brk $38.b		; 00 38
	and #$E0.b		; 29 E0
	nop		; EA
	ora $FA0FCC.l		; 0F CC 0F FA
	sbc $7DBFFF.l,X		; FF FF BF 7D
	sbc ($0F.b,S),Y		; F3 0F
	jsr ($F3EC.w,X)		; FC EC F3
	beq  63.b		; F0 3F
	inc $F2.b		; E6 F2
	bra -52.b		; 80 CC
	jsr ($031C.w,X)		; FC 1C 03
	sbc ($0C.b,S),Y		; F3 0C
.INDEX 16
	rep #$1F		; C2 1F
	sta $68.b		; 85 68
	brk $78.b		; 00 78
	cpx #$00C7.w		; E0 C7 00
	and ($60.b,S),Y		; 33 60
	php		; 08
	txs		; 9A
	ldy $E000.w,X		; BC 00 E0
	eor ($1C.b,X)		; 41 1C
	and $18E03D.l,X		; 3F 3D E0 18
	ora [$C7.b]		; 07 C7
	sec		; 38
	and $E0E2CF.l,X		; 3F CF E2 E0
	ora $1CE01F.l,X		; 1F 1F E0 1C
	ora ($E0.b),Y		; 11 E0
	stz $F103.w		; 9C 03 F1
	ldy $1EF4.w,X		; BC F4 1E
	ldy #$0FAC.w		; A0 AC 0F
	beq 112.b		; F0 70
	inc $0820.w,X		; FE 20 08
	ora $479090.l		; 0F 90 90 47
	jsr ($F0F1.w,X)		; FC F1 F0
	sta $4011E4.l,X		; 9F E4 11 40
	plp		; 28
	ldx $5DFF.w,Y		; BE FF 5D
	sbc $650AF8.l,X		; FF F8 0A 65
	bpl  93.b		; 10 5D
	jsr ($FE08.w,X)		; FC 08 FE
	stx $D3.b		; 86 D3
	ora $F8.b		; 05 F8
	ora $E514.w		; 0D 14 E5
	cmp $E0.b		; C5 E0
	sed		; F8
	asl $F0E5.w		; 0E E5 F0
	asl $E0EA.w		; 0E EA E0
	sbc $92BAB3.l,X		; FF B3 BA 92
	jsr ($F8E1.w,X)		; FC E1 F8
	phd		; 0B
	cpx #$09F8.w		; E0 F8 09
	and $FE40C0.l,X		; 3F C0 40 FE
	sbc ($F8.b,X)		; E1 F8
	ora #$40.b		; 09 40
	.db $82, $24, $E0		; 82 24 E0
	inc $FE40.w,X		; FE 40 FE
	jmp ($F8E0.w)		; 6C E0 F8
	ora #$40.b		; 09 40
	ldy #$0BF8.w		; A0 F8 0B
	lda #$54.b		; A9 54
	rti		; 40

	dec $40F1.w,X		; DE F1 40
	sed		; F8
	tsb $F046.w		; 0C 46 F0
	ora #$82.b		; 09 82
	adc $07F1D0.l,X		; 7F D0 F1 07
	sbc ($60.b)		; F2 60
	sed		; F8
	phd		; 0B
	adc $BCF180.l,X		; 7F 80 F1 BC
	inc $FCFE.w,X		; FE FE FC
	ora $95.b,S		; 03 95
	and $537E87.l,X		; 3F 87 7E 53
	cpx #$F50F.w		; E0 0F F5
	sbc #$E4.b		; E9 E4
	sbc $0A.b,X		; F5 0A
	txa		; 8A
	adc $FFA85F.l,X		; 7F 5F A8 FF
	.db $42, $79		; 42 79
	sbc ($FF.b)		; F2 FF
	sbc $FFF2DF.l,X		; FF DF F2 FF
	cpy #$7FAA.w		; C0 AA 7F
	inc $E201.w,X		; FE 01 E2
	sbc ($0B.b,X)		; E1 0B
	ora $C7D857.l,X		; 1F 57 D8 C7
	sbc $80E378.l,X		; FF 78 E3 80
	cmp $C209F8.l,X		; DF F8 09 C2
	sbc ($F6.b,X)		; E1 F6
	cmp $ABFCF2.l,X		; DF F2 FC AB
	sbc $E6965F.l,X		; FF 5F 96 E6
	sbc $DB33.w,X		; FD 33 DB
	ora $E0F3.w,Y		; 19 F3 E0
	inc $8DE4.w		; EE E4 8D
	sbc ($02.b),Y		; F1 02
	sei		; 78
	sbc $B0.b,X		; F5 B0
	asl A		; 0A
	brk $C2.b		; 00 C2
	ora $F87CFE.l,X		; 1F FE 7C F8
	ora #$8A.b		; 09 8A
	jsr ($F8FF.w,X)		; FC FF F8
	ora #$01.b		; 09 01
	tsb $60.b		; 04 60
	and $E00A8A.l,X		; 3F 8A 0A E0
	sed		; F8
	asl A		; 0A
	txa		; 8A
	sbc ($24.b)		; F2 24
	asl $FF.b,X		; 16 FF
	inc $E0FF.w,X		; FE FF E0
	sbc $2C.b,S		; E3 2C
	cpx #$6AFF.w		; E0 FF 6A
	asl A		; 0A
	ldx $6B.b		; A6 6B
	sbc ($FF.b),Y		; F1 FF
	sed		; F8
	ora #$83.b		; 09 83
	nop		; EA
	inc $0AF4.w,X		; FE F4 0A
	rol $98.b		; 26 98
	sbc $E703.w,X		; FD 03 E7
	asl $EA08.w,X		; 1E 08 EA
	ldy #$09F8.w		; A0 F8 09
	sty $F67F.w		; 8C 7F F6
	dex		; CA
	wai		; CB
	sbc ($0F.b),Y		; F1 0F
	eor $27BFCA.l		; 4F CA BF 27
	cpx #$09F9.w		; E0 F9 09
	cpy #$E4F4.w		; C0 F4 E4
	ora $BF30.w		; 0D 30 BF
	rti		; 40

	rti		; 40

	inc $FE23.w,X		; FE 23 FE
	inc $E6.b		; E6 E6
	cmp $00B191.l,X		; DF 91 B1 00
	lda $22DF00.l		; AF 00 DF 22
	sbc $E141.w,X		; FD 41 E1
	sbc [$19.b]		; E7 19
	eor $4FBF20.l,X		; 5F 20 BF 4F
	lda $E2D829.l,X		; BF 29 D8 E2
	lda ($2C.b),Y		; B1 2C
	sbc $E0.b		; E5 E0
	ora #$9E.b		; 09 9E
	cmp [$E0.b]		; C7 E0
	beq  12.b		; F0 0C
	rts		; 60

	ldx $F5.b		; A6 F5
	trb $FC54.w		; 1C 54 FC
	cmp $2B.b,X		; D5 2B
	pld		; 2B
	adc [$01.b],Y		; 77 01
	inc $FDFF.w		; EE FF FD
	bvs -23.b		; 70 E9
	inc $FC5F.w,X		; FE 5F FC
	sbc $63B3FD.l,X		; FF FD B3 63
	jmp ($DBC8.w)		; 6C C8 DB
	bpl  23.b		; 10 17
	bpl 106.b		; 10 6A
	jsr ($87F8.w,X)		; FC F8 87
	trb $0C13.w		; 1C 13 0C
	and $27DF13.l		; 2F 13 DF 27
	ora $FFE4EF.l,X		; 1F EF E4 FF
	sta ($7C.b,X)		; 81 7C
	sbc [$FF.b]		; E7 FF
	tda		; 7B
	dec $BB87.w		; CE 87 BB
	sta ($7B.b,X)		; 81 7B
	ora ($08.b,X)		; 01 08
	plx		; FA
	inc $1866.w,X		; FE 66 18
	brk $F9.b		; 00 F9
	jsr ($FE30.w,X)		; FC 30 FE
	jmp ($ECB4.w,X)		; 7C B4 EC
	ora $76F1.w,Y		; 19 F1 76
	cpx #$7F6B.w		; E0 6B 7F
	jsr ($E7C0.w,X)		; FC C0 E7
	ldy #$50DB.w		; A0 DB 50
	and $4720.w,X		; 3D 20 47
	cpx #$0609.w		; E0 09 06
	ora [$09.b],Y		; 17 09
	adc $172F61.l,X		; 7F 61 2F 17
	adc $24DF1F.l		; 6F 1F DF 24
	and $E136C3.l,X		; 3F C3 36 E1
	sbc $9F00.w,X		; FD 00 9F
	cmp ($FA.b,X)		; C1 FA
	dex		; CA
	sbc ($FE.b,X)		; E1 FE
	sbc [$EF.b],Y		; F7 EF
	adc $FFE306.l,X		; 7F 06 E3 FF
	sbc $5555AA.l,X		; FF AA 55 55
	ldy #$AAD2.w		; A0 D2 AA
	jsr ($E365.w,X)		; FC 65 E3
	adc $FF09F0.l,X		; 7F F0 09 FF
	sed		; F8
	asl A		; 0A
	cpx #$ABA8.w		; E0 A8 AB
	rol $57.b		; 26 57
	sbc $F8E0F0.l,X		; FF F0 E0 F8
	ora $E366.w		; 0D 66 E3
	cpx #$5EFF.w		; E0 FF 5E
	sbc ($FF.b),Y		; F1 FF
	tsa		; 3B
	eor $D5.b,X		; 55 D5
	cpx #$24FE.w		; E0 FE 24
	inc $E0.b		; E6 E0
	jsr ($E1AC.w,X)		; FC AC E1
	cmp $E0E2.w,Y		; D9 E2 E0
	sed		; F8
	asl A		; 0A
	lsr A		; 4A
	xba		; EB
	sbc $10AFFD.l,X		; FF FD AF 10
	ora $1CFCFE.l		; 0F FE FC 1C
	ora $2A.b,S		; 03 2A
	xba		; EB
	cpx #$04FC.w		; E0 FC 04
	jsr ($AE40.w,X)		; FC 40 AE
	sbc ($B0.b),Y		; F1 B0
	cpy #$E2FF.w		; C0 FF E2
	cpy #$F8E0.w		; C0 E0 F8
	ora #$3E.b		; 09 3E
	phy		; 5A
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	cpx #$F8.b		; E0 F8
	ora #$01.b		; 09 01
	ora ($FC.b,X)		; 01 FC
	cpy #$63.b		; C0 63
	cpy #$F8.b		; C0 F8
	ora #$FE.b		; 09 FE
	cmp ($E9.b)		; D2 E9
	ora $E834.w,X		; 1D 34 E8
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	sbc $C0E7.w,X		; FD E7 C0
	asl $B2.b		; 06 B2
	cmp $D840.w,Y		; D9 40 D8
	ora #$1F.b		; 09 1F
	lsr $55.b,X		; 56 55
	cmp $F0.b,X		; D5 F0
	cpx #$F8.b		; E0 F8
	ora #$2B.b		; 09 2B
	cmp $EB35.w,X		; DD 35 EB
	jsr $9EDF.w		; 20 DF 9E
	inx		; E8
	asl A		; 0A
	phb		; 8B
	jsr ($7D55.w,X)		; FC 55 7D
	cpy #$F8.b		; C0 F8
	asl A		; 0A
	cpx #$EF.b		; E0 EF
	jsr $0BF0.w		; 20 F0 0B
	cpx #$F8.b		; E0 F8
	tas		; 1B
	txy		; 9B
	sbc ($E0.b,X)		; E1 E0
	sbc $FD03.w,X		; FD 03 FD
	ora [$FA.b]		; 07 FA
	sbc ($FF.b,X)		; E1 FF
	cpx #$F8.b		; E0 F8
	phd		; 0B
	phb		; 8B
	ora [$00.b]		; 07 00
	ldx $7DF4.w		; AE F4 7D
	cpy $CD.b		; C4 CD
	iny		; C8
	lda [$80.b]		; A7 80
	inc $5F7F.w,X		; FE 7F 5F
	ldx #$E9.b		; A2 E9
	sbc $E0F740.l		; EF 40 F7 E0
	ora $033F01.l		; 0F 01 3F 03
	eor $5FBF33.l		; 4F 33 BF 5F
	adc $7AFB5F.l,X		; 7F 5F FB 7A
	cmp ($BF.b),Y		; D1 BF
	ora $630F1F.l,X		; 1F 1F 0F 63
	sbc ($5F.b),Y		; F1 5F
	sbc ($54.b)		; F2 54
	stz $D9.b		; 64 D9
	ora $18.b,S		; 03 18
	php		; 08
	sta $004BF9.l		; 8F F9 4B 00
	eor $00.b,X		; 55 00
	tax		; AA
	jsr ($93AB.w,X)		; FC AB 93
	xce		; FB
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
	ora $EFDE3F.l		; 0F 3F DE EF
	ora [$F8.b]		; 07 F8
	brk $FD.b		; 00 FD
	ora ($FE.b,X)		; 01 FE
	cpx #$D5.b		; E0 D5
	brk $FA.b		; 00 FA
	dec A		; 3A
	phx		; DA
	tya		; 98
	adc #$F0.b		; 69 F0
	sbc $FE.b		; E5 FE
	cpx #$A0.b		; E0 A0
	asl A		; 0A
	sbc $84.b,S		; E3 84
	lda [$0F.b]		; A7 0F
	cli		; 58
	cmp [$81.b]		; C7 81
	sbc $72A07E.l,X		; FF 7E A0 72
	ora $E328F5.l		; 0F F5 28 E3
	eor $8080.w		; 4D 80 80
	sbc $2815.w,X		; FD 15 28
	plp		; 28
	sbc [$14.b],Y		; F7 14
	bra -38.b		; 80 DA
	iny		; C8
	cmp #$80.b		; C9 80
	sbc $00EA.w,X		; FD EA 00
	cmp [$80.b],Y		; D7 80
	ora $FE.b		; 05 FE
	sec		; 38
	bra -73.b		; 80 B7
	bcc 127.b		; 90 7F
	bvc  -9.b		; 50 F7
	ldy #$6F.b		; A0 6F
	bra -17.b		; 80 EF
	bra  61.b		; 80 3D
	php		; 08
	cpx $0F7F.w		; EC 7F 0F
	lda $9AFC07.l,X		; BF 07 FC 9A
	sbc ($10.b),Y		; F1 10
	and #$80.b		; 29 80
	jsr ($A0EF.w,X)		; FC EF A0
	eor ($01.b)		; 52 01
	plp		; 28
	jsr ($D8FC.w,X)		; FC FC D8
	cpx #$0B.b		; E0 0B
	inc $0BF8.w,X		; FE F8 0B
	cpx #$50.b		; E0 50
	brk $8E.b		; 00 8E
	dey		; 88
	lsr $7DF0.w,X		; 5E F0 7D
	asl $FB62.w		; 0E 62 FB
	ply		; 7A
	sbc $0EF101.l,X		; FF 01 F1 0E
	cmp $0FF0.w,Y		; D9 F0 0F
	sta $FC7870.l		; 8F 70 78 FC
	plx		; FA
	sbc $FB02.w,X		; FD 02 FB
	tsb $E0.b		; 04 E0
	ora [$F7.b]		; 07 F7
	rts		; 60

	adc [$31.b]		; 67 31
	ror $40.b,X		; 76 40
	ora $FCBF2A.l,X		; 1F 2A BF FC
	cmp $0FEA36.l,X		; DF 36 EA 0F
	adc $44E2C9.l,X		; 7F C9 E2 44
	cpy $80FC.w		; CC FC 80
	sbc ($D8.b,X)		; E1 D8
	ldy #$E4.b		; A0 E4
	jsl $C13FF3.l		; 22 F3 3F C1
	cop $F7.b		; 02 F7
	ora $ED.b		; 05 ED
	php		; 08
	sbc $252AE7.l,X		; FF E7 2A 25
	sbc $3FFF.w,X		; FD FF 3F
	plx		; FA
	xce		; FB
	jsr ($F8FF.w,X)		; FC FF F8
	sbc $707BF3.l,X		; FF F3 7B 70
	adc $0F48.w,X		; 7D 48 0F
	brk $5F.b		; 00 5F
	rti		; 40

	ora ($3E.b,X)		; 01 3E
	cpy #$FC.b		; C0 FC
	pei ($87.b)		; D4 87
	sbc $A0BF83.l,X		; FF 83 BF A0
	.db $82, $C3, $FD		; 82 C3 FD
	ldy $21FC.w,X		; BC FC 21
	jsr ($D5FC.w,X)		; FC FC D5
	beq 113.b		; F0 71
	jsr ($7606.w,X)		; FC 06 76
	cld		; D8
	asl A		; 0A
	rol $E0E4.w		; 2E E4 E0
	inc $8701.w,X		; FE 01 87
	dec $A0BB.w		; CE BB A0
	inc $657E.w,X		; FE 7E 65
	cpx $F8.b		; E4 F8
	asl A		; 0A
	cmp $47BF30.l		; CF 30 BF 47
	adc $FEE09B.l,X		; 7F 9B E0 FE
	sbc $1EBF.w,Y		; F9 BF 1E
	ora $E1E3E1.l		; 0F E1 E3 E1
	bit $F8.b		; 24 F8
	ora $8040.w		; 0D 40 80
	sbc $9B57A8.l,X		; FF A8 57 9B
	lda ($5F.b,X)		; A1 5F
	cmp [$F5.b],Y		; D7 F5
	eor [$BE.b]		; 47 BE
	and ($A0.b)		; 32 A0
.INDEX 16
	rep #$DB		; C2 DB
	inc $BFFF.w,X		; FE FF BF
	eor $5EF1E0.l		; 4F E0 F1 5E
	sbc ($C1.b,S),Y		; F3 C1
	brk $87.b		; 00 87
	rol A		; 2A
	asl A		; 0A
	jsr ($F895.w,X)		; FC 95 F8
	clc		; 18
	adc $6EFEE4.l		; 6F E4 FE 6E
	cmp ($3C.b)		; D2 3C
	nop		; EA
	rts		; 60

	eor $18.b,X		; 55 18
	sbc $DC2CC7.l,X		; FF C7 2C DC
	inc $09F8.w,X		; FE F8 09
	rti		; 40

	nop		; EA
	rol $0BE0.w,X		; 3E E0 0B
	beq  23.b		; F0 17
	jmp $01FCFE.l		; 5C FE FC 01
	lsr $F481.w,X		; 5E 81 F4
	cop $EB.b		; 02 EB
	jsr $09D0.w		; 20 D0 09
	inc $36F0.w,X		; FE F0 36
	bit $C9FF.w,X		; 3C FF C9
	sbc $605FF7.l,X		; FF F7 5F 60
	dey		; 88
	lda $F07F80.l,X		; BF 80 7F F0
	lda ($80.b,X)		; A1 80
	ldx #$004B.w		; A2 4B 00
	sta [$00.b],Y		; 97 00
	ldx $8F39.w,Y		; BE 39 8F
	brk $CD.b		; 00 CD
	inc $EB.b		; E6 EB
	inc $F764.w,X		; FE 64 F7
	rts		; 60

	sbc ($CF.b),Y		; F1 CF
	lsr $1ABF.w,X		; 5E BF 1A
	jsr $00D2.w		; 20 D2 00
	tsx		; BA
	ora ($F6.b,X)		; 01 F6
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	sbc $FFFC.w,X		; FD FC FF
	xce		; FB
	sbc $757047.l,X		; FF 47 70 75
	ldy #$2AFC.w		; A0 FC 2A
	sta ($0C.b)		; 92 0C
	rti		; 40

	eor $FF.b		; 45 FF
	cmp [$CC.b]		; C7 CC
	cpy #$0AD8.w		; C0 D8 0A
	sbc $575655.l,X		; FF 55 56 57
	jsr ($CE0F.w,X)		; FC 0F CE
	jsr $10F0.w		; 20 F0 10
	cpx #$FEFE.w		; E0 FE FE
	inc $EAAE.w,X		; FE AE EA
	cpx #$0BF8.w		; E0 F8 0B
	ora $05.b		; 05 05
	cmp $E0DB.w		; CD DB E0
	sbc $1AE2.w,X		; FD E2 1A
	jsr ($F8E0.w,X)		; FC E0 F8
	ora #$A6E2.w		; 09 E2 A6
	plb		; AB
	pea $BFE0.w		; F4 E0 BF
	dec $F1.b		; C6 F1
	rti		; 40

	dec $FEE0.w,X		; DE E0 FE
	bvs 125.b		; 70 7D
	cpy $CD.b		; C4 CD
	inc $E1A1.w,X		; FE A1 E1
	cmp [$24.b],Y		; D7 24
	sbc ($81.b),Y		; F1 81
	cpx #$E109.w		; E0 09 E1
	asl $2FDF.w,X		; 1E DF 2F
	eor $55.b,X		; 55 55
	rts		; 60

	sbc $70F298.l,X		; FF 98 F2 70
	sed		; F8
	ora $F0C4.w		; 0D C4 F0
	asl $F8FE.w		; 0E FE F8
	ora $E9BA.w		; 0D BA E9
	rts		; 60

	cpy #$EA0B.w		; C0 0B EA
	cmp $8555.w,Y		; D9 55 85
	sbc #$A4DF.w		; E9 DF A4
	dec $B0FF.w		; CE FF B0
	ora $0EF8C0.l		; 0F C0 F8 0E
	ldy $BE.b		; A4 BE
	cpx #$0DF8.w		; E0 F8 0D
	bit $EF.b		; 24 EF
	adc $FB.b		; 65 FB
	brk $65.b		; 00 65
	brk $DB.b		; 00 DB
	lda $3C0BB0.l,X		; BF B0 0B 3C
	sbc $ED56DB.l,X		; FF DB 56 ED
	cpx #$EAFA.w		; E0 FA EA
	inc $01F0.w,X		; FE F0 01
	inc $01.b		; E6 01
	cpx $D2F6.w		; EC F6 D2
	pla		; 68
	sbc $FF.b,S		; E3 FF
	sbc $5FDF.w,X		; FD DF 5F
	cmp $78.b,X		; D5 78
	ora [$E0.b]		; 07 E0
	ora $3F3FC0.l,X		; 1F C0 3F 3F
	sbc ($FF.b),Y		; F1 FF
	inc $02.b,X		; F6 02
	cpx $F080.w		; EC 80 F0
	ora #$ED7F.w		; 09 7F ED
	adc $0101FF.l,X		; 7F FF 01 01
	cop $02.b		; 02 02
	asl $04.b		; 06 04
	ora $04.b		; 05 04
	bvc -17.b		; 50 EF
	inc $FC03.w,X		; FE 03 FC
	ora [$F9.b]		; 07 F9
	ora [$FE.b]		; 07 FE
	sbc $E0FB.w,X		; FD FB E0
	inc $F0F0.w,X		; FE F0 F0
	tsb $F60C.w		; 0C 0C F6
	cop $F9.b		; 02 F9
	bmi -17.b		; 30 EF
	beq  15.b		; F0 0F
	jsr ($51E3.w,X)		; FC E3 51
	eor $FE.b,X		; 55 FE
	sbc $6281.w,Y		; F9 81 62
	tya		; 98
	adc ($28.b,S),Y		; 73 28
	sei		; 78
	tsb $83D6.w		; 0C D6 83
	lsr $4F.b,X		; 56 4F
	eor ($48.b)		; 52 48
	asl $2ABD.w		; 0E BD 2A
	inc $11F8.w,X		; FE F8 11
	cpy $72.b		; C4 72
	cop $00.b		; 02 00
	asl A		; 0A
	inc $52F8.w,X		; FE F8 52
	.db $82, $A2, $AA		; 82 A2 AA
	rts		; 60

	eor $62.b,S		; 43 62
	sed		; F8
	and [$98.b]		; 27 98
	adc ($D8.b)		; 72 D8
	inc $40F5.w,X		; FE F5 40
	inc $FE05.w,X		; FE 05 FE
	ora ($55.b,X)		; 01 55
	adc $FE.b,S		; 63 FE
	sed		; F8
	phd		; 0B
	sty $2490.w		; 8C 90 24
	lsr $3978.w		; 4E 78 39
	ror $0998.w,X		; 7E 98 09
	tsb $4222.w		; 0C 22 42
	inc $F64A.w,X		; FE 4A F6
	asl A		; 0A
	inc $FC62.w,X		; FE 62 FC
	rti		; 40

	brk $45.b		; 00 45
	inc $0AF8.w,X		; FE F8 0A
	jmp.w [$A486]		; DC 86 A4
	eor $D6D8EA.l,X		; 5F EA D8 D6
	jsr ($FCD8.w,X)		; FC D8 FC
	php		; 08
	brk $48.b		; 00 48
	brk $49.b		; 00 49
	dec $0A88.w		; CE 88 0A
	cmp $56AA.w		; CD AA 56
	beq   9.b		; F0 09
	sbc $08E9F8.l,X		; FF F8 E9 08
	inc $E88C.w,X		; FE 8C E8
	and $AC.b,X		; 35 AC
	ror $F4.b,X		; 76 F4
	inc $AAAA.w		; EE AA AA
	sed		; F8
	cpx $E8F4.w		; EC F4 E8
	phd		; 0B
	sta $309510.l,X		; 9F 10 95 30
	clc		; 18
	sta $A6.b,X		; 95 A6
	beq   9.b		; F0 09
	jmp ($FEF4.w)		; 6C F4 FE
	sed		; F8
	and ($D4.b,X)		; 21 D4
	jsr ($557A.w,X)		; FC 7A 55
	inc A		; 1A
	plp		; 28
	lda $72.b,X		; B5 72
	pha		; 48
	ora $09F0F8.l		; 0F F8 F0 09
	.db $82, $00, $8A		; 82 00 8A
	inc $10F8.w,X		; FE F8 10
	sta ($EA.b)		; 92 EA
	asl $0B68.w		; 0E 68 0B
	php		; 08
	adc $FAAAD6.l		; 6F D6 AA FA
	bpl -16.b		; 10 F0
	adc $36.b		; 65 36
	cld		; D8
	and #$B408.w		; 29 08 B4
	bvs  14.b		; 70 0E
	tsx		; BA
	bvs  16.b		; 70 10
	cpx #$0DE0.w		; E0 E0 0D
	tax		; AA
	tax		; AA
	cmp $38.b,X		; D5 38
	eor $E4.b,X		; 55 E4
	cpx #$2A6E.w		; E0 6E 2A
	sbc ($2A.b)		; F2 2A
	bne  21.b		; D0 15
	tax		; AA
	inc $DCD8.w,X		; FE D8 DC
	plx		; FA
	beq  17.b		; F0 11
	inc $6DF0.w,X		; FE F0 6D
	tax		; AA
	eor $E05E.w,Y		; 59 5E E0
	eor ($62.b,X)		; 41 62
	cpx #$FF27.w		; E0 27 FF
	sed		; F8
	cmp ($5E.b,X)		; C1 5E
	cpx #$6213.w		; E0 13 62
	cpx #$880F.w		; E0 0F 88
	inc $38B8.w,X		; FE B8 38
	ora $5555.w		; 0D 55 55
	ror $B8.b,X		; 76 B8
	and $AE.b		; 25 AE
	bne  97.b		; D0 61
	sty $25B8.w		; 8C B8 25
	stz $F8.b,X		; 74 F8
	phd		; 0B
	bvc -28.b		; 50 E4
	mvn $11,$E0		; 54 E0 11
	pld		; 2B
	jsr $3A5C.w		; 20 5C 3A
	inx		; E8
	cli		; 58
	lda $4E4A.w		; AD 4A 4E
	cpy #$680F.w		; C0 0F 68
	xba		; EB
	bra  -2.b		; 80 FE
	sed		; F8
	ora [$48.b],Y		; 17 48
	bvc  71.b		; 50 47
	ror $F8.b		; 66 F8
	and $FE.b,S		; 23 FE
	iny		; C8
	ora ($AA.b),Y		; 11 AA
	tax		; AA
	nop		; EA
	php		; 08
	bne  19.b		; D0 13
	sty $B8.b		; 84 B8
	ora $F88A.w,Y		; 19 8A F8
	ora $A88E.w,Y		; 19 8E A8
	eor $36.b,S		; 43 36
	sed		; F8
	and ($AC.b,X)		; 21 AC
	sed		; F8
	tas		; 1B
	inc $2FF0.w		; EE F0 2F
	tax		; AA
	tax		; AA
	ror $F8.b		; 66 F8
	and $06.b,S		; 23 06
	iny		; C8
	ora $31F8FE.l		; 0F FE F8 31
	sed		; F8
	tay		; A8
	and ($FE.b,X)		; 21 FE
	sed		; F8
	ora #$F87E.w		; 09 7E F8
	ora $F044.w,Y		; 19 44 F0
	ora $0B08E6.l		; 0F E6 08 0B
	tax		; AA
	tax		; AA
	stz $30.b,X		; 74 30
	ora $D5.b,X		; 15 D5
	cpx #$4C15.w		; E0 15 4C
	clc		; 18
	and $F0F2.w,Y		; 39 F2 F0
	ora $2DE878.l		; 0F 78 E8 2D
	jsr $0EE0.w		; 20 E0 0E
	inx		; E8
	sbc ($E2.b,S),Y		; F3 E2
	sed		; F8
	ora $3C2AAA.l		; 0F AA 2A 3C
	sed		; F8
	ora ($5B.b,S),Y		; 13 5B
	cpy #$888A.w		; C0 8A 88
	jsr $4256.w		; 20 56 42
	dey		; 88
	ora $F8FE.w,X		; 1D FE F8
	ora $31E89C.l		; 0F 9C E8 31
	inc $23E0.w		; EE E0 23
	jsr ($0DA0.w,X)		; FC A0 0D
	lda #$F682.w		; A9 82 F6
	sei		; 78
	iny		; C8
	ora #$F888.w		; 09 88 F8
	ora ($5E.b),Y		; 11 5E
	beq  23.b		; F0 17
.ACCU 16
.INDEX 16
	rep #$F0		; C2 F0
	tad		; 5B
	sei		; 78
	tax		; AA
	ror A		; 6A
	cmp ($C8.b)		; D2 C8
	inc A		; 1A
	cmp ($E8.b)		; D2 E8
	trb $D0.b		; 14 D0
	inx		; E8
	lda $A050.w		; AD 50 A0
	ora $D882.w,X		; 1D 82 D8
	tas		; 1B
.INDEX 8
	sep #$DE		; E2 DE
	nop		; EA
	sty $FEFE.w		; 8C FE FE
	cop $7D.b		; 02 7D
	and $EF79DE.l,X		; 3F DE 79 EF
	beq  74.b		; F0 4A
	and $0C0C3F.l,X		; 3F 3F 0C 0C
	inc $FC.b,X		; F6 FC
	bra   1.b		; 80 01
	pea $FF24.w		; F4 24 FF
	jsr ($89BD.w,X)		; FC BD 89
	inc $1FFC.w,X		; FE FC 1F
	sbc $887703.l,X		; FF 03 77 88
	stz $69.b,X		; 74 69
	inc $DBDB.w,X		; FE DB DB
	sbc $FE.b,X		; F5 FE
	ora [$23.b]		; 07 23
	ora $A06903.l,X		; 1F 03 69 A0
	eor $10.b,S		; 43 10
	bpl  -8.b		; 10 F8
	.db $62, $69, $0F		; 62 69 0F
	beq -61.b		; F0 C3
	jsr ($5FF7.w,X)		; FC F7 5F
	sta [$1C.b]		; 87 1C
	adc ($9C.b,S),Y		; 73 9C
	inc $EFFF.w,X		; FE FF EF
	rol A		; 2A
	eor ($FF.b),Y		; 51 FF
	jsr ($1B1B.w,X)		; FC 1B 1B
	phx		; DA
	sbc $393B87.l,X		; FF 87 3B 39
	tda		; 7B
	sei		; 78
	xce		; FB
	sed		; F8
	adc ($70.b),Y		; 71 70
	and ($31.b),Y		; 31 31
	rol $AA3E.w,X		; 3E 3E AA
	sbc $0F0FFF.l,X		; FF FF 0F 0F
	dec $FE.b		; C6 FE
	sta [$FF.b]		; 87 FF
	ora [$77.b]		; 07 77
	sta $BECEFF.l		; 8F FF CE BE
	cmp ($EF.b,X)		; C1 EF
	cpy #$FE.b		; C0 FE
	sbc $F01F.w,X		; FD 1F F0
	sbc $923245.l		; EF 45 32 92
	adc $01FE.w,X		; 7D FE 01
	cop $01.b		; 02 01
	ora $FC0C.w		; 0D 0C FC
	jsr ($21C8.w,X)		; FC C8 21
	ldx #$C8.b		; A2 C8
	ldx $F3FC.w,Y		; BE FC F3
	xce		; FB
	cpx $01.b		; E4 01
	jsr ($F6FF.w,X)		; FC FF F6
	bra  -1.b		; 80 FF
	cpy #$FB.b		; C0 FB
	cpx $FF.b		; E4 FF
	cpx #$7F.b		; E0 7F
	beq 127.b		; F0 7F
	inc $7FBF.w,X		; FE BF 7F
	adc $7FFD98.l,X		; 7F 98 FD 7F
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	jsr ($F0F0.w,X)		; FC F0 F0
	inc $B0.b,X		; F6 B0
	pei ($BD.b)		; D4 BD
	lda $317C.w,X		; BD 7C 31
	brk $EF.b		; 00 EF
	bcc  -4.b		; 90 FC
	sbc [$08.b],Y		; F7 08
	lda $15.b,X		; B5 15
	ora $6A.b,S		; 03 6A
	sed		; F8
	rts		; 60

	sec		; 38
	tsb $63DF.w		; 0C DF 63
	jsr $607E.w		; 20 7E 60
	phd		; 0B
	sbc $C848.w,X		; FD 48 C8
	bpl -24.b		; 10 E8
	jsr ($5740.w,X)		; FC 40 57
	phx		; DA
	inc $21.b		; E6 21
	sec		; 38
	trb $E0.b		; 14 E0
	sbc $22DD.w,X		; FD DD 22
	cld		; D8
	inc $F8E0.w,X		; FE E0 F8
	ora $A00714.l		; 0F 14 07 A0
	sei		; 78
	lsr A		; 4A
	inc $10EF.w,X		; FE EF 10
	dec A		; 3A
	ora $B5.b		; 05 B5
	dec $FF21.w		; CE 21 FF
	sed		; F8
	asl $3EEE.w		; 0E EE 3E
	and $C1.b,X		; 35 C1
	bmi  21.b		; 30 15
	nop		; EA
	jsr ($0744.w,X)		; FC 44 07
	jmp $F8E0.w		; 4C E0 F8
	tas		; 1B
	adc $FADF81.l,X		; 7F 81 DF FA
	stz $49FB.w		; 9C FB 49
	eor ($80.b,X)		; 41 80
	and ($EC.b,X)		; 21 EC
	tda		; 7B
	jsr ($B403.w,X)		; FC 03 B4
	txa		; 8A
	pla		; 68
	jsr ($C3BE.w,X)		; FC BE C3
	rep #$84		; C2 84
	sbc $C012.w,X		; FD 12 C0
	sed		; F8
	ora $E812ED.l		; 0F ED 12 E8
	adc $906978.l		; 6F 78 69 90
	cpy #$40.b		; C0 40
	sbc $F8A011.l,X		; FF 11 A0 F8
	ora ($E0.b,S),Y		; 13 E0
	lda $F85540.l,X		; BF 40 55 F8
	ldy $43.b,X		; B4 43
	inc $A0F2.w,X		; FE F2 A0
	pld		; 2B
	cpy #$DF.b		; C0 DF
	sbc $38E710.l,X		; FF 10 E7 38
	sta [$FF.b]		; 87 FF
	clv		; B8
	sed		; F8
	sta [$FC.b],Y		; 97 FC
	cmp $7C.b,S		; C3 7C
	sed		; F8
	and $7C43BF.l,X		; 3F BF 43 7C
	mvp $0F,$3F		; 44 3F 0F
	stx $AC.b		; 86 AC
	eor ($EB.b,X)		; 41 EB
	xba		; EB
	adc $00F87F.l,X		; 7F 7F F8 00
	sbc ($40.b,S),Y		; F3 40
	sbc $84E17F.l,X		; FF 7F E1 84
	tsb $E0.b		; 04 E0
	brk $E0.b		; 00 E0
	ora ($3F.b,X)		; 01 3F
	bne -111.b		; D0 91
	sbc ($E4.b),Y		; F1 E4
	ora ($BF.b,X)		; 01 BF
	pld		; 2B
	ldy $FBBF.w,X		; BC BF FB
	xce		; FB
	and ($52.b,S),Y		; 33 52
	bit $DCF2.w,X		; 3C F2 DC
	ora ($01.b,X)		; 01 01
	bit $C33C.w,X		; 3C 3C C3
	cmp $D4.b,S		; C3 D4
	nop		; EA
	ora [$1F.b],Y		; 17 1F
	inc $30.b,X		; F6 30
	cmp ($1C.b,X)		; C1 1C
	cpx #$B4.b		; E0 B4
	cmp $F0.b,S		; C3 F0
	ora ($FD.b),Y		; 11 FD
	and $E0FFE0.l		; 2F E0 FF E0
	sbc [$FE.b],Y		; F7 FE
	jmp.w [$7FE0]		; DC E0 7F
	pei ($E4.b)		; D4 E4
	rti		; 40

	and $C38F90.l,X		; 3F 90 8F C3
	cpy #$A5.b		; C0 A5
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	beq  48.b		; F0 30
	cpy $D2.b		; C4 D2
	cpx #$E9.b		; E0 E9
	eor $B97FEA.l		; 4F EA 7F B9
	sbc $BD1DFF.l		; EF FF 1D BD
	ora $E0C0FF.l		; 0F FF C0 E0
	sbc #$B0.b		; E9 B0
	lda $C0F00F.l,X		; BF 0F F0 C0
	bpl -98.b		; 10 9E
	asl $001F.w,X		; 1E 1F 00
	bcs  95.b		; B0 5F
	cpx $D3.b		; E4 D3
	lda $F3F3.w		; AD F3 F3
	adc $EAE250.l		; 6F 50 E2 EA
	sbc ($FF.b,X)		; E1 FF
	ldy #$BE.b		; A0 BE
	cmp ($49.b,S),Y		; D3 49
	tyx		; BB
	ora $19.b,S		; 03 19
	ora ($FE.b),Y		; 11 FE
	sbc $55.b,X		; F5 55
	eor [$24.b],Y		; 57 24
	sbc ($20.b)		; F2 20
	sed		; F8
	ora ($46.b,S),Y		; 13 46
	inc $DE.b,X		; F6 DE
	sbc $F020.w		; ED 20 F0
	asl $FE.b,X		; 16 FE
	ora ($BA.b,X)		; 01 BA
	inc $F8E0.w,X		; FE E0 F8
	ora $55.b,X		; 15 55
	eor $7A.b,X		; 55 7A
	sbc ($DA.b),Y		; F1 DA
	and $E0.b,S		; 23 E0
	sed		; F8
	ora ($AA.b),Y		; 11 AA
	jsr ($F020.w,X)		; FC 20 F0
	asl $FD64.w,X		; 1E 64 FD
	cpx #$F8.b		; E0 F8
	ora [$26.b],Y		; 17 26
	sbc ($E5.b)		; F2 E5
	inc $F8E0.w		; EE E0 F8
	phd		; 0B
	and #$A0.b		; 29 A0
	phd		; 0B
	nop		; EA
	cop $20.b		; 02 20
	sbc ($F9.b)		; F2 F9
	asl $C0.b		; 06 C0
	sed		; F8
	ora ($BB.b,S),Y		; 13 BB
	lsr $4454.w,X		; 5E 54 44
	cld		; D8
	eor $08.b,S		; 43 08
	xce		; FB
	tsb $DA.b		; 04 DA
	sbc #$F6.b		; E9 F6
	sbc $DA09F8.l,X		; FF F8 09 DA
	cpx $0555.w		; EC 55 05
.ACCU 8
	sep #$EB		; E2 EB
	jsr ($58F1.w,X)		; FC F1 58
	sbc $F020.w,X		; FD 20 F0
	phd		; 0B
	cpx #$FD.b		; E0 FD
	.db $62, $E9, $04		; 62 E9 04
	adc $10.b		; 65 10
	lsr $B4EC.w,X		; 5E EC B4
	sbc ($FF.b,X)		; E1 FF
	phx		; DA
	stz $10CF.w		; 9C CF 10
	pha		; 48
	sty $06.b		; 84 06
	cpx #$40.b		; E0 40
	stz $99EB.w		; 9C EB 99
	and $ECEA.w,X		; 3D EA EC
	plx		; FA
	sta $7FE161.l,X		; 9F 61 E1 7F
	sed		; F8
	sta $C0E020.l,X		; 9F 20 E0 C0
	asl $DE9E.w,X		; 1E 9E DE
	sbc $EFD29F.l		; EF 9F D2 EF
	adc $9B1B7F.l,X		; 7F 7F 1B 9B
	ora ($C0.b,X)		; 01 C0
	php		; 08
	dec $FD80.w,X		; DE 80 FD
	lda ($10.b),Y		; B1 10
	mvp $11,$9D		; 44 9D 11
	cpx #$FF.b		; E0 FF
	jsr ($FF0F.w,X)		; FC 0F FF
	sta ($B8.b,X)		; 81 B8
	tsb $7B.b		; 04 7B
	jsr ($EAE8.w,X)		; FC E8 EA
	sbc $62FD.w,X		; FD FD 62
	ora #$0F.b		; 09 0F
	ora ($81.b,X)		; 01 81
	clv		; B8
	tsb $40.b		; 04 40
	mvn $B7,$C0		; 54 C0 B7
	inc $00.b,X		; F6 00
	ora $1903E0.l,X		; 1F E0 03 19
	eor #$D0.b		; 49 D0
	bcs  65.b		; B0 41
	sbc ($09.b)		; F2 09
	plb		; AB
	jmp $DFE1.w		; 4C E1 DF
	adc $D0B0.w,X		; 7D B0 D0
	adc $D7FA.w,X		; 7D FA D7
	cmp [$9E.b],Y		; D7 9E
	jmp.w [$0FFB]		; DC FB 0F
	pei ($09.b)		; D4 09
	lda $207FFE.l,X		; BF FE 7F 20
	adc $3E7F38.l,X		; 7F 38 7F 3E
	adc $F011C0.l,X		; 7F C0 11 F0
	jsr ($205F.w,X)		; FC 5F 20
	eor [$38.b]		; 47 38
	eor ($FA.b,X)		; 41 FA
	ora $39883E.l		; 0F 3E 88 39
	ldx $A1.b,Y		; B6 A1
	cpy #$80.b		; C0 80
	cpx #$C0.b		; E0 C0
	beq  96.b		; F0 60
	beq 112.b		; F0 70
	cmp ($3F.b,S),Y		; D3 3F
	inc $B0B0.w,X		; FE B0 B0
	beq  64.b		; F0 40
	bra  32.b		; 80 20
	cpy #$90.b		; C0 90
	rts		; 60

	bra 112.b		; 80 70
	tsb $FEFA.w		; 0C FA FE
	rti		; 40

	beq -50.b		; F0 CE
	inc $EAFC.w,X		; FE FC EA
	eor ($7D.b,X)		; 41 7D
	sbc $C17F.w,X		; FD 7F C1
	sbc $F7.b,S		; E3 F7
	adc $CE.b,X		; 75 CE
	inc $80FC.w,X		; FE FC 80
	adc $8AFE82.l,X		; 7F 82 FE 8A
	cpx #$11.b		; E0 11
	adc $FCFFCE.l,X		; 7F CE FF FC
	clv		; B8
	clv		; B8
	sed		; F8
	inc $6040.w,X		; FE 40 60
	sbc $FECE.w,X		; FD CE FE
	sbc $FEF6.w,X		; FD F6 FE
	sbc $5D0B.w,X		; FD 0B 5D
	iny		; C8
	ora $0FF8F0.l		; 0F F0 F8 0F
	sbc $F777.w,X		; FD 77 F7
	ror $72FA.w,X		; 7E FA 72
	sta ($28.b,X)		; 81 28
	eor [$D7.b]		; 47 D7
	sbc $7F8BAE.l,X		; FF AE 8B 7F
	sta $2F31C0.l		; 8F C0 31 2F
	inc $A8.b,X		; F6 A8
	pla		; 68
	sec		; 38
	pla		; 68
	clv		; B8
	pla		; 68
	cpy #$D0.b		; C0 D0
	adc ($98.b,X)		; 61 98
	ldy $FEFC.w,X		; BC FC FE
	sty $FCCC.w		; 8C CC FC
	bne  -8.b		; D0 F8
	rts		; 60

	dey		; 88
	inc $40FF.w,X		; FE FF 40
	jsr ($70FE.w,X)		; FC FE 70
	tax		; AA
	sta $FC.b,S		; 83 FC
	lda $D14FFF.l		; AF FF 4F D1
	nop		; EA
	tya		; 98
	phd		; 0B
	rti		; 40

	cmp ($C0.b)		; D2 C0
	rti		; 40

	inc $496B.w,X		; FE 6B 49
	tya		; 98
	inc $0103.w,X		; FE 03 01
	inc $F0FC.w,X		; FE FC F0
	inc $CE02.w,X		; FE 02 CE
	cmp ($FE.b),Y		; D1 FE
	lda ($F2.b)		; B2 F2
	tya		; 98
	trb $FF.b		; 14 FF
	sbc [$D1.b],Y		; F7 D1
	plx		; FA
	cmp $F1.b		; C5 F1
	and $32E3.w,Y		; 39 E3 32
	eor $2EFE.w		; 4D FE 2E
	plx		; FA
	bra  60.b		; 80 3C
	jmp ($C30F.w,X)		; 7C 0F C3
	inc $5C9C.w,X		; FE 9C 5C
	stz $FE5E.w,X		; 9E 5E FE
	asl $FEDE.w,X		; 1E DE FE
	cpy #$14.b		; C0 14
	tax		; AA
	jsr ($E0FE.w,X)		; FC FE E0
	inc $FEFE.w,X		; FE FE FE
	jsr ($FEB4.w,X)		; FC B4 FE
	cmp ($5C.b),Y		; D1 5C
	ldy #$F8.b		; A0 F8
	phd		; 0B
	ora $FE.b,S		; 03 FE
	ldy #$FE.b		; A0 FE
	bra  -1.b		; 80 FF
	cpy #$FF.b		; C0 FF
	sbc $6D75C4.l,X		; FF C4 75 6D
	inc $E020.w,X		; FE 20 E0
	inc $C6FE.w,X		; FE FE C6
	inc $0307.w,X		; FE 07 03
	cmp $FEFF.w,X		; DD FF FE
	jsr ($FEC8.w,X)		; FC C8 FE
	tsb $03.b		; 04 03
	inc $AFFC.w,X		; FE FC AF
	sbc $DFFBFB.l,X		; FF FB FB DF
	cmp [$CF.b],Y		; D7 CF
	cmp $CEFF7F.l,X		; DF 7F FF CE
	dec $8696.w,X		; DE 96 86
	dec $C6.b,X		; D6 C6
	sbc [$E6.b],Y		; F7 E6
	and $DA.b,X		; 35 DA
	plp		; 28
	sbc $31FF30.l,X		; FF 30 FF 31
	sbc $79E09F.l,X		; FF 9F E0 79
	sbc $19FF39.l,X		; FF 39 FF 19
	sbc $06FE6C.l,X		; FF 6C FE 06
	dec $27.b		; C6 27
	eor $1FD717.l,X		; 5F 17 D7 1F
	cmp [$FC.b],Y		; D7 FC
	ror A		; 6A
	jsr ($FEF8.w,X)		; FC F8 FE
	inx		; E8
	sbc $55FCFE.l,X		; FF FE FC 55
	sbc ($68.b,S),Y		; F3 68
	inc $FEFE.w,X		; FE FE FE
	ldy #$FE.b		; A0 FE
	inc $68FE.w,X		; FE FE 68
	inc $FFE0.w,X		; FE E0 FF
	rts		; 60

	stz $6077.w,X		; 9E 77 60
	ror A		; 6A
	jsr ($F030.w,X)		; FC 30 F0
	bpl  -2.b		; 10 FE
	bcc -16.b		; 90 F0
	bcs -29.b		; B0 E3
	ora $05.b,S		; 03 05
	beq -126.b		; F0 82
	bvs -49.b		; 70 CF
	bra  10.b		; 80 0A
	ora [$00.b]		; 07 00
	asl $52.b		; 06 52
	sbc $3EFE.w,X		; FD FE 3E
	sed		; F8
	sta ($F5.b),Y		; 91 F5
	lda $0C00C9.l		; AF C9 00 0C
	sei		; 78
	jmp ($F1FE.w,X)		; 7C FE F1
	sbc $3000.w,X		; FD 00 30
	cpy #$07.b		; C0 07
	sbc $FC.b,S		; E3 FC
	beq -124.b		; F0 84
	sed		; F8
	inc $9255.w,X		; FE 55 92
	rti		; 40

	inc $3060.w,X		; FE 60 30
	php		; 08
	cpy #$FE.b		; C0 FE
	bvs -32.b		; 70 E0
	inc $F25C.w,X		; FE 5C F2
	bmi  12.b		; 30 0C
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	ldy #$40.b		; A0 40
	inc $6090.w,X		; FE 90 60
	cpx #$11.b		; E0 11
	inc $B8AE.w,X		; FE AE B8
	jsr ($070F.w,X)		; FC 0F 07
	asl A		; 0A
	jsr ($07C0.w,X)		; FC C0 07
	inc $08F6.w,X		; FE F6 08
	jsr ($0708.w,X)		; FC 08 07
	tsb $FC07.w		; 0C 07 FC
	sed		; F8
	ora $38D5FE.l		; 0F FE D5 38
	sbc $F7E6FE.l		; EF FE E6 F7
	ldx $B7.b		; A6 B7
	ldx $4287.w		; AE 87 42
	inc $B6F7.w,X		; FE F7 B6
	lda $79FFFE.l,X		; BF FE FF 79
	cmp ($0A.b),Y		; D1 0A
	eor $9874.w,Y		; 59 74 98
	inc $FCFA.w,X		; FE FA FC
	ora $8FFEC7.l		; 0F C7 FE 8F
	eor [$86.b]		; 47 86
	pld		; 2B
	inc $57AA.w,X		; FE AA 57
	jsr ($438B.w,X)		; FC 8B 43
	sed		; F8
	bit $FEC9.w,X		; 3C C9 FE
	jsr ($BD40.w,X)		; FC 40 BD
	tsb $FC.b		; 04 FC
	jsr ($FB00.w,X)		; FC 00 FB
	sta ($E1.b,S),Y		; 93 E1
	ora ($80.b,X)		; 01 80
	sta ($DA.b,X)		; 81 DA
	sbc $54FCFE.l,X		; FF FE FC 54
	pea $F15A.w		; F4 5A F1
	bra  -2.b		; 80 FE
	jsr ($6070.w,X)		; FC 70 60
	bcs  32.b		; B0 20
	bvs -96.b		; 70 A0
	pla		; 68
	ldy #$3F.b		; A0 3F
	dec $D8.b		; C6 D8
	bne 104.b		; D0 68
	brk $B8.b		; 00 B8
	bmi  -8.b		; 30 F8
	asl $FED0.w		; 0E D0 FE
	xce		; FB
	rol A		; 2A
	cld		; D8
	sed		; F8
	plp		; 28
	stz $C8E9.w		; 9C E9 C8
	sed		; F8
	php		; 08
	sed		; F8
	cmp ($98.b,X)		; C1 98
	ora $FEFE08.l		; 0F 08 FE FE
	inc $B4ED.w,X		; FE ED B4
	tsb $7E7C.w		; 0C 7C 7E
	inc $5EFE.w,X		; FE FE 5E
	eor $FC820C.l,X		; 5F 0C 82 FC
	cmp [$4C.b]		; C7 4C
	inc $A1FE.w,X		; FE FE A1
	inc $FF02.w,X		; FE 02 FF
	ora $FE.b,S		; 03 FE
	pld		; 2B
	.db $62, $FF, $06		; 62 FF 06
	asl $6D.b		; 06 6D
	lda ($E0.b)		; B2 E0
	nop		; EA
	inc $0578.w,X		; FE 78 05
	eor $1D.b,X		; 55 1D
	cpy #$F6.b		; C0 F6
	inc $DA.b,X		; F6 DA
	rol A		; 2A
	dey		; 88
	asl $F8F0.w		; 0E F0 F8
	asl $E0BF.w		; 0E BF E0
	asl $FEF1.w		; 0E F1 FE
	sei		; 78
	beq -122.b		; F0 86
	sbc ($FE.b,X)		; E1 FE
	jmp ($FEF8.w,X)		; 7C F8 FE
	inc $FEFC.w,X		; FE FC FE
	xba		; EB
	nop		; EA
	sta [$61.b]		; 87 61
	xce		; FB
	nop		; EA
	dey		; 88
	bvs  -2.b		; 70 FE
	sty $78.b		; 84 78
	inc $FC02.w,X		; FE 02 FC
	clc		; 18
	sty $FE.b		; 84 FE
	ora $FE.b,X		; 15 FE
	inc $F2AC.w,X		; FE AC F2
	inc $DA57.w,X		; FE 57 DA
	ora $1F07.w		; 0D 07 1F
	ora $ACFCFE.l		; 0F FE FC AC
	sbc ($FE.b)		; F2 FE
	bpl  15.b		; 10 0F
	inc $FFFC.w,X		; FE FC FF
	sbc $F4B1B8.l,X		; FF B8 B1 F4
	sbc $FC.b,X		; F5 FC
	sbc $FF54.w,X		; FD 54 FF
	inc $DEFD.w,X		; FE FD DE
	sbc $FEAD.w,X		; FD AD FE
	sbc $2FFE.w		; ED FE 2F
	jsr ($FF5F.w,X)		; FC 5F FF
	tas		; 1B
	sbc $F19C13.l,X		; FF 13 9C F1
	jsr ($DF33.w,X)		; FC 33 DF
	eor ($BF.b,S),Y		; 53 BF
	sta ($43.b,S),Y		; 93 43
	lda $432B7F.l		; AF 7F 2B 43
	inc $FE6B.w,X		; FE 6B FE
	sbc $FC4367.l,X		; FF 67 43 FC
	ldy $AEF1.w		; AC F1 AE
	tsa		; 3B
	inc $0BF8.w,X		; FE F8 0B
	tay		; A8
	inc $C0.b,X		; F6 C0
	cmp ($FE.b,X)		; C1 FE
	jsr ($F6A8.w,X)		; FC A8 F6
	ora ($C0.b,X)		; 01 C0
	inc $F8FC.w,X		; FE FC F8
	beq  -3.b		; F0 FD
	sta [$FE.b],Y		; 97 FE
	iny		; C8
	cpy #$3C.b		; C0 3C
	bmi -12.b		; 30 F4
	beq -92.b		; F0 A4
	beq  -4.b		; F0 FC
	ldx $3EF1.w		; AE F1 3E
	asl $FE.b		; 06 FE
	sec		; 38
	sed		; F8
	cpy $0CFC.w		; CC FC 0C
	inc $FE04.w,X		; FE 04 FE
	cmp $FF.b,X		; D5 FF
	ldx #$F0.b		; A2 F0
	phd		; 0B
	txs		; 9A
	sbc #$A4.b		; E9 A4
	beq  11.b		; F0 0B
	txs		; 9A
	nop		; EA
	ror $5E5F.w,X		; 7E 5F 5E
	adc $F65756.l,X		; 7F 56 57 F6
	eor [$1F.b],Y		; 57 1F
	stx $7D.b		; 86 7D
	ora ($FE.b,X)		; 01 FE
	ror $7EAA.w,X		; 7E AA 7E
	jsr ($FEA1.w,X)		; FC A1 FE
	inc $EA58.w,X		; FE 58 EA
	lda #$FE.b		; A9 FE
	inc $D1F1.w,X		; FE F1 D1
	inc $FF06.w,X		; FE 06 FF
	sed		; F8
	asl A		; 0A
	ora $A0EF.w		; 0D EF A0
	ora $0D0F.w		; 0D 0F 0D
	ora $03.b		; 05 03
	inc $09F8.w,X		; FE F8 09
	asl A		; 0A
	ora [$FE.b]		; 07 FE
	brk $B0.b		; 00 B0
	ora $F10FFF.l		; 0F FF 0F F1
	tay		; A8
	ora $BFEAEB.l		; 0F EB EA BF
	tax		; AA
	xce		; FB
	ldx $94AF.w,Y		; BE AF 94
	sta $FBFA8A.l,X		; 9F 8A FA FB
	ora $FBFE3F.l,X		; 1F 3F FE FB
	xba		; EB
	ora $FE.b,X		; 15 FE
	eor $FE.b,X		; 55 FE
	adc $FE75FE.l,X		; 7F FE 75 FE
	ora $6E.b		; 05 6E
	clc		; 18
	inc $FF14.w,X		; FE 14 FF
	cpy $1EF2.w		; CC F2 1E
	inc $AE0E.w,X		; FE 0E AE
	adc $2AFE3E.l,X		; 7F 3E FE 2A
	txa		; 8A
	ldx $119E.w,Y		; BE 9E 11
	asl $0FFE.w		; 0E FE 0F
	lda ($1F.b),Y		; B1 1F
	jsr ($FEF4.w,X)		; FC F4 FE
	lda $1F.b,X		; B5 1F
	lda ($1F.b,X)		; A1 1F
	cmp $FEDE.w		; CD DE FE
	sbc $C8DE.w		; ED DE C8
	sbc $50FA16.l,X		; FF 16 FA 50
	and ($E8.b)		; 32 E8
	phx		; DA
	cpx $33DA.w		; EC DA 33
	sbc $37FCFE.l,X		; FF FE FC 37
	ldy $D9.b,X		; B4 D9
	ldy #$00.b		; A0 00
	jsr ($65FE.w,X)		; FC FE 65
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $001B.w		; 6D 1B 00
	sbc $0255F8.l,X		; FF F8 55 02
	inc $19F8.w,X		; FE F8 19
	bra  -2.b		; 80 FE
	sed		; F8
	ora ($06.b),Y		; 11 06
	inc $00FE.w,X		; FE FE 00
	bit $53.b		; 24 53
	inc $F8D6.w,X		; FE D6 F8
	ora #$F2.b		; 09 F2
	inc $13F8.w,X		; FE F8 13
	tsb $FE.b		; 04 FE
	bra 101.b		; 80 65
	ora #$FE.b		; 09 FE
	sed		; F8
	ora $FFBE.w		; 0D BE FF
	ldy $F8FE.w,X		; BC FE F8
	eor $DA90.w		; 4D 90 DA
	rol $FF.b,X		; 36 FF
	ora ($FE.b,X)		; 01 FE
	sed		; F8
	asl $FE09.w		; 0E 09 FE
	sed		; F8
	ora $FE80.w,Y		; 19 80 FE
	sed		; F8
	ora $FE08.w,X		; 1D 08 FE
	jsr ($A900.w,X)		; FC 00 A9
	ldx #$FE.b		; A2 FE
	sbc $5E9BF8.l,X		; FF F8 9B 5E
	jsr ($FEFE.w,X)		; FC FE FE
	bpl  -8.b		; 10 F8
	inc A		; 1A
	inc $6946.w,X		; FE 46 69
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	ora $05FEFE.l		; 0F FE FE 05
	inc $F350.w,X		; FE 50 F3
	inc $0640.w,X		; FE 40 06
	jmp ($FE50.w)		; 6C 50 FE
	cop $FE.b		; 02 FE
	sed		; F8
	tsb $FE00.w		; 0C 00 FE
	sbc $8440F8.l,X		; FF F8 40 84
	sed		; F8
	ora [$95.b],Y		; 17 95
	tay		; A8
	inc $39F8.w,X		; FE F8 39
	jmp $0AF8.w		; 4C F8 0A
	inc $38FD.w,X		; FE FD 38
	inc $81.b		; E6 81
	.db $42, $55		; 42 55
	inc $14F8.w,X		; FE F8 14
	tay		; A8
	sed		; F8
	and #$FE.b		; 29 FE
	sty $FE.b		; 84 FE
	sed		; F8
	ora ($A0.b)		; 12 A0
	jsr ($F8FE.w,X)		; FC FE F8
	ora [$80.b],Y		; 17 80
	cpx $D555.w		; EC 55 D5
	sbc $E28BF8.l,X		; FF F8 8B E2
	beq  43.b		; F0 2B
	bra -16.b		; 80 F0
	and $EA7A.w,X		; 3D 7A EA
	ldy #$EA.b		; A0 EA
	stz $E8.b,X		; 74 E8
	ora $E5BE.w		; 0D BE E5
	inc $1CF8.w,X		; FE F8 1C
	ldy #$9E.b		; A0 9E
	brk $FE.b		; 00 FE
	php		; 08
	inx		; E8
	sec		; 38
	trb $1FE8.w		; 1C E8 1F
	ror $F0.b		; 66 F0
	phd		; 0B
	mvp $46,$00		; 44 00 46
	plb		; AB
	phy		; 5A
	inc $FE42.w,X		; FE 42 FE
	sed		; F8
	asl $EA25.w		; 0E 25 EA
	and $E8.b,S		; 23 E8
	and ($34.b),Y		; 31 34
	inx		; E8
	eor ($FE.b),Y		; 51 FE
	sed		; F8
	lsr $80.b		; 46 80
	inc $18F8.w,X		; FE F8 18
	sta $1A.b,X		; 95 1A
	tsx		; BA
	sed		; F8
	rol A		; 2A
	sec		; 38
	pea $C8EE.w		; F4 EE C8
	ora $FE410A.l		; 0F 0A 41 FE
	sbc $205545.l,X		; FF 45 55 20
	inc $F2A6.w,X		; FE A6 F2
	tay		; A8
	inc $A6.b,X		; F6 A6
	inc $C8.b,X		; F6 C8
	ldx $4001.w,Y		; BE 01 40
	cpx #$FC.b		; E0 FC
	inc $FEE2.w,X		; FE E2 FE
	dec $80EC.w,X		; DE EC 80
	sta ($C0.b)		; 92 C0
	cpx $4A.b		; E4 4A
	inc $DAFF.w,X		; FE FF DA
	ror A		; 6A
	sty $F8B4.w		; 8C B4 F8
	ora $FEB2.w		; 0D B2 FE
	inc $09F8.w,X		; FE F8 09
	bit $0AD2.w		; 2C D2 0A
	pei ($48.b)		; D4 48
	eor $55.b,X		; 55 55
	inc $D649.w,X		; FE 49 D6
	sbc $E092.w,X		; FD 92 E0
	ora #$FF.b		; 09 FF
	sed		; F8
	jsr ($D000.w,X)		; FC 00 D0
	inc A		; 1A
	inc $0BF8.w,X		; FE F8 0B
	bit $D0.b		; 24 D0
	ora ($20.b)		; 12 20
	bne  20.b		; D0 14
	eor $55.b,X		; 55 55
	sbc $34E0.w,X		; FD E0 34
	sbc $FC6AF8.l,X		; FF F8 6A FC
	cpx #$2D.b		; E0 2D
	sed		; F8
	dec $F0EC.w,X		; DE EC F0
	trb $86.b		; 14 86
	cld		; D8
	ora $F8FE.w		; 0D FE F8
	ora $F82C.w		; 0D 2C F8
	txs		; 9A
	eor $D5.b,X		; 55 D5
	inc $0DF8.w,X		; FE F8 0D
	bit $38B0.w		; 2C B0 38
	inc $12F8.w,X		; FE F8 12
	jmp ($3FF8.w)		; 6C F8 3F
	sty $1BF8.w		; 8C F8 1B
	inc $A8.b,X		; F6 A8
	tsb $FDFE.w		; 0C FE FD
	clv		; B8
.ACCU 16
	rep #$AA		; C2 AA
	tax		; AA
	stx $FE.b		; 86 FE
	sed		; F8
	bpl -30.b		; 10 E2
	sed		; F8
	phd		; 0B
	inc $E8FC.w,X		; FE FC E8
	jsr ($FCC0.w,X)		; FC C0 FC
	cmp ($F8.b)		; D2 F8
	ora $49A8CE.l		; 0F CE A8 49
	phy		; 5A
	bcc  -1.b		; 90 FF
	sed		; F8
	sta $50.b,S		; 83 50
	beq  45.b		; F0 2D
	inc $0AFE.w,X		; FE FE 0A
	lsr A		; 4A
	clv		; B8
	trb $FE.b		; 14 FE
	ldx $0BD0.w,Y		; BE D0 0B
	pei ($42.b)		; D4 42
	inc $D2A8.w,X		; FE A8 D2
	cpx #$FC.b		; E0 FC
	sta ($D6.b)		; 92 D6
	rti		; 40

	ldy $D5.b		; A4 D5
	inc $2646.w,X		; FE 46 26
	sta $E0.b,X		; 95 E0
	inc $FEBC.w,X		; FE BC FE
	jmp $48D6.w		; 4C D6 48
	dec $24.b,X		; D6 24
	eor $C4.b,X		; 55 C4
	cli		; 58
	bne   9.b		; D0 09
	stz $FCC8.w		; 9C C8 FC
	dec $FE.b		; C6 FE
	ldy $FC.b		; A4 FC
	lsr $50D2.w,X		; 5E D2 50
	eor ($FE.b,X)		; 41 FE
	jsl $4C09D0.l		; 22 D0 09 4C
	cmp ($D2.b)		; D2 D2
	jsr ($A0FE.w,X)		; FC FE A0
	jsr ($A48A.w,X)		; FC 8A A4
	tax		; AA
	.db $42, $4C		; 42 4C
	inc $FCE0.w,X		; FE E0 FC
	tax		; AA
	tax		; AA
	rol A		; 2A
	pei ($28.b)		; D4 28
	cmp ($86.b)		; D2 86
	sed		; F8
	ora #$F882.w		; 09 82 F8
	phd		; 0B
	inc A		; 1A
	inc $FEFE.w,X		; FE FE FE
	bit $AC.b		; 24 AC
	sed		; F8
	cpx #$15.b		; E0 15
	tax		; AA
	lsr A		; 4A
	ply		; 7A
	bcs  11.b		; B0 0B
	inc $FC.b		; E6 FC
	pei ($F8.b)		; D4 F8
	ora ($F0.b),Y		; 11 F0
	tya		; 98
	jsl $4EFDCC.l		; 22 CC FD 4E
	beq  87.b		; F0 57
	bit $13F0.w,X		; 3C F0 13
	asl A		; 0A
	tax		; AA
	plp		; 28
	bvc -72.b		; 50 B8
	ora ($40.b,S),Y		; 13 40
	beq  11.b		; F0 0B
	inc $F07E.w,X		; FE 7E F0
	ora #$C6D0.w		; 09 D0 C6
	brk $C8.b		; 00 C8
	sbc $1CAA.w,Y		; F9 AA 1C
	ldx $D8.b,Y		; B6 D8
	ora #$EC3C.w		; 09 3C EC
	sty $15D8.w		; 8C D8 15
	asl $0BA8.w		; 0E A8 0B
	cpx $FEEE.w		; EC EE FE
	rti		; 40

	jsl $09FEE8.l		; 22 E8 FE 09
	inc $07FA.w,X		; FE FA 07
	lda $04.b,X		; B5 04
	iny		; C8
	eor $FF1F38.l,X		; 5F 38 1F FF
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $03.b		; 00 03
	inc $44.b,X		; F6 44
	tsb $22.b		; 04 22
	cop $11.b		; 02 11
	ora ($08.b,X)		; 01 08
	brk $0C.b		; 00 0C
	adc $F2.b,S		; 63 F2
	adc [$BF.b],Y		; 77 BF
	dec $FA.b		; C6 FA
	eor $00.b,S		; 43 00
	and ($00.b,X)		; 21 00
	bpl   0.b		; 10 00
	beq  -2.b		; F0 FE
	sta ($D4.b,X)		; 81 D4
	eor ($EA.b,X)		; 41 EA
	lda $004670.l		; AF 70 46 00
	dec $00.b		; C6 00
	cpy $F8F0.w		; CC F0 F8
	ora ($5E.b)		; 12 5E
	dec $20CC.w		; CE CC 20
	brk $64.b		; 00 64
	sbc $F0A7.w,X		; FD A7 F0
	sed		; F8
	ora ($E3.b)		; 12 E3
	clv		; B8
	ora [$18.b],Y		; 17 18
	brk $30.b		; 00 30
	brk $60.b		; 00 60
	brk $C3.b		; 00 C3
	rti		; 40

	txs		; 9A
	ora [$CA.b]		; 07 CA
	ora $04.b		; 05 04
	sta $84.b		; 85 84
	inc $8792.w,X		; FE 92 87
	cmp ($4C.b),Y		; D1 4C
	inc $8483.w,X		; FE 83 84
	inc $24FC.w,X		; FE FC 24
	sbc $CEED45.l,X		; FF 45 ED CE
	clc		; 18
	sbc $FEC8FC.l,X		; FF FC C8 FE
	jsr ($FCFF.w,X)		; FC FF FC
	ora $68.b,S		; 03 68
	xba		; EB
	tsb $FF.b		; 04 FF
	phd		; 0B
	brk $86.b		; 00 86
	.db $82, $94, $92		; 82 94 92
	bpl -112.b		; 10 90
	brk $90.b		; 00 90
	stz $FE00.w,X		; 9E 00 FE
	jsr ($5140.w,X)		; FC 40 51
	jsl $42FE3E.l		; 22 3E FE 42
	sbc $8CE11E.l,X		; FF 1E E1 8C
	tay		; A8
	sbc $FBFF81.l,X		; FF 81 FF FB
	lda [$9F.b]		; A7 9F
	inc A		; 1A
	lda $11F8FF.l,X		; BF FF F8 11
	tax		; AA
	sed		; F8
	ora #$F8F3.w		; 09 F3 F8
	ora #$FF10.w		; 09 10 FF
	bcc  16.b		; 90 10
	tya		; 98
	bpl -120.b		; 10 88
	ora [$32.b]		; 07 32
	adc #$0181.w		; 69 81 01
	dey		; 88
	ora ($F9.b),Y		; 11 F9
	inc $E170.w,X		; FE 70 E1
	bpl  64.b		; 10 40
	sei		; 78
	inc $40E4.w,X		; FE E4 40
	inc $115E.w,X		; FE 5E 11
	eor $F813.w,X		; 5D 13 F8
	ora [$FE.b]		; 07 FE
	ora ($5F.b),Y		; 11 5F
	ora $4F.b,S		; 03 4F
	cop $4E.b		; 02 4E
	pha		; 48
	jmp $3FFE.w		; 4C FE 3F
	rol $F61F.w,X		; 3E 1F F6
	trb $00.b		; 14 00
	ora $80.b,X		; 15 80
	ora [$FE.b],Y		; 17 FE
	ror $1842.w,X		; 7E 42 18
	bit $1C.b		; 24 1C
	sta [$FE.b]		; 87 FE
	sta ($3C.b,X)		; 81 3C
	lda $FE.b		; A5 FE
	bit $BD.b		; 24 BD
	inc $C353.w,X		; FE 53 C3
	clc		; 18
	sta ($5A.b,X)		; 81 5A
	inc $FE00.w,X		; FE 00 FE
	inc $3F0B.w,X		; FE 0B 3F
	ora [$01.b]		; 07 01
	stx $01.b		; 86 01
	ora [$FD.b]		; 07 FD
	ldx $0302.w		; AE 02 03
	sbc $8443.w,X		; FD 43 84
	cop $00.b		; 02 00
	ora [$2E.b]		; 07 2E
	php		; 08
	inc $C1FA.w,X		; FE FA C1
	asl $04.b		; 06 04
	ora ($FE.b,X)		; 01 FE
	inc $F1.b		; E6 F1
	sbc $0CF8FF.l,X		; FF FF F8 0C
	adc $8A50FD.l,X		; 7F FD 50 8A
	inc $F8FE.w		; EE FE F8
	tsb $E40B.w		; 0C 0B E4
	xce		; FB
	eor [$2B.b]		; 47 2B
	cmp ($FE.b,X)		; C1 FE
	rti		; 40

	ora $C6.b		; 05 C6
	cmp $62.b		; C5 62
.ACCU 8
	sep #$E4		; E2 E4
	tad		; 5B
	eor $F8.b		; 45 F8
	and $00FE17.l,X		; 3F 17 FE 00
	eor ($68.b)		; 52 68
	eor ($7F.b)		; 52 7F
	eor ($D7.b)		; 52 D7
	ply		; 7A
.ACCU 16
	rep #$6F		; C2 6F
	cpx #$10.b		; E0 10
	inc $28D5.w		; EE D5 28
	ora [$FE.b]		; 07 FE
	bra  -1.b		; 80 FF
	cmp $FE.b,S		; C3 FE
	brk $17.b		; 00 17
	brk $EB.b		; 00 EB
	adc $3F3FBF.l,X		; 7F BF 3F 3F
	lda $30FFFB.l,X		; BF FB FF 30
	jmp $3FFDBF.l		; 5C BF FD 3F
	adc $003FFF.l,X		; 7F FF 3F 00
	adc $FAFFFE.l,X		; 7F FE FF FA
	ora $E01CA0.l,X		; 1F A0 1C E0
	ora $FC.b,S		; 03 FC
	ora $006FC3.l,X		; 1F C3 6F 00
	bra  31.b		; 80 1F
	jsl $3EF39F.l		; 22 9F F3 3E
	sbc $E079.w,X		; FD 79 E0
	sbc $CFFE9F.l,X		; FF 9F FE CF
	adc $FF.b,X		; 75 FF
	cmp ($C1.b,X)		; C1 C1
	brk $6E.b		; 00 6E
	eor ($58.b,X)		; 41 58
	eor [$C3.b]		; 47 C3
	bra -128.b		; 80 80
	sta $60D328.l		; 8F 28 D3 60
	ora $E601E6.l,X		; 1F E6 01 E6
	lda [$4F.b],Y		; B7 4F
	sbc $CAEA82.l,X		; FF 82 EA CA
	inc $FCE2.w,X		; FE E2 FC
	inc $FFFC.w,X		; FE FC FF
	sed		; F8
	bpl -27.b		; 10 E5
	sbc $4FBAE7.l,X		; FF E7 BA 4F
	ora $FFFC30.l,X		; 1F 30 FC FF
	sed		; F8
	ora $F13F.w		; 0D 3F F1
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	sta $07FF7C.l,X		; 9F 7C FF 07
	adc $F8.b,X		; 75 F8
	sed		; F8
	asl $F608.w		; 0E 08 F6
	pei ($FD.b)		; D4 FD
	jsr ($F8C7.w,X)		; FC C7 F8
	jsr ($3F03.w,X)		; FC 03 3F
	sbc ($47.b,S),Y		; F3 47
	and #$FF.b		; 29 FF
	bit $C0F0.w,X		; 3C F0 C0
	plx		; FA
	plp		; 28
	sbc #$FF.b		; E9 FF
	ora $CCFC05.l		; 0F 05 FC CC
	ora $FFFFFA.l		; 0F FA FF FF
	sbc ($0F.b,S),Y		; F3 0F
	jsr ($7D83.w,X)		; FC 83 7D
	cpx $F0F3.w		; EC F3 F0
	plp		; 28
	ror $E9.b		; 66 E9
	bra -52.b		; 80 CC
	jsr ($031C.w,X)		; FC 1C 03
	sbc ($0C.b,S),Y		; F3 0C
.INDEX 16
	rep #$1F		; C2 1F
	sta $68.b		; 85 68
	brk $78.b		; 00 78
	cpx #$00C7.w		; E0 C7 00
	and ($60.b,S),Y		; 33 60
	php		; 08
	txs		; 9A
	ldy $E000.w,X		; BC 00 E0
	eor ($1C.b,X)		; 41 1C
	and $18E01F.l,X		; 3F 1F E0 18
	ora [$C7.b]		; 07 C7
	sec		; 38
	and $1F1BCF.l,X		; 3F CF 1B 1F
	ora $088EE0.l,X		; 1F E0 8E 08
	cpx #$039C.w		; E0 9C 03
	sbc ($BC.b),Y		; F1 BC
	pea $500F.w		; F4 0F 50
	ldy $F00F.w		; AC 0F F0
	bvs  -2.b		; 70 FE
	jsr $0F08.w		; 20 08 0F
	eor [$FC.b]		; 47 FC
	pha		; 48
	iny		; C8
	sbc ($F0.b),Y		; F1 F0
	sta $A008E4.l,X		; 9F E4 08 A0
	plp		; 28
	ldx $5DFF.w,Y		; BE FF 5D
	sbc $B20AF8.l,X		; FF F8 0A B2
	.db $82, $5D, $FC		; 82 5D FC
	php		; 08
	inc $C686.w,X		; FE 86 C6
	sbc ($05.b),Y		; F1 05
	sed		; F8
	tsb $A2C5.w		; 0C C5 A2
	jmp $0EF8E0.l		; 5C E0 F8 0E
	sbc $F0.b		; E5 F0
	asl $E0EA.w		; 0E EA E0
	sbc $E1FCB3.l,X		; FF B3 FC E1
	sed		; F8
	phd		; 0B
	eor [$52.b],Y		; 57 52
	cpx #$09F8.w		; E0 F8 09
	and $FE40C0.l,X		; 3F C0 40 FE
	sbc ($F8.b,X)		; E1 F8
	ora #$40.b		; 09 40
	cpx #$40FE.w		; E0 FE 40
	inc $2490.w,X		; FE 90 24
	jmp ($F8E0.w)		; 6C E0 F8
	ora #$40.b		; 09 40
	ldy #$0BF8.w		; A0 F8 0B
	rti		; 40

	sta $6A.b,X		; 95 6A
	dec $40F1.w,X		; DE F1 40
	sed		; F8
	tsb $F046.w		; 0C 46 F0
	ora #$82.b		; 09 82
	adc $72F1D0.l,X		; 7F D0 F1 72
	inx		; E8
	tsb $2080.w		; 0C 80 20
	eor $FEBCF1.l,X		; 5F F1 BC FE
	inc $03FC.w,X		; FE FC 03
	sta [$7E.b]		; 87 7E
	lda ($A8.b,S),Y		; B3 A8
	ora $F583F9.l		; 0F F9 83 F5
	sbc #$E4.b		; E9 E4
	sbc $0A.b,X		; F5 0A
	txa		; 8A
	adc $FA425F.l,X		; 7F 5F 42 FA
	ora $FFF279.l,X		; 1F 79 F2 FF
	sbc $FFF2DF.l,X		; FF DF F2 FF
	cpy #$7FAA.w		; C0 AA 7F
	inc $E201.w,X		; FE 01 E2
	ora $20BE57.l,X		; 1F 57 BE 20
	cld		; D8
	cmp [$FF.b]		; C7 FF
	sei		; 78
	sbc $80.b,S		; E3 80
	cmp $F609F8.l,X		; DF F8 09 F6
	cmp $3E1CF2.l,X		; DF F2 1C 3E
	jsr ($FFAB.w,X)		; FC AB FF
	eor $FDE696.l,X		; 5F 96 E6 FD
	ora $E0F3.w,Y		; 19 F3 E0
	lda ($0D.b,S),Y		; B3 0D
	inc $8DE4.w		; EE E4 8D
	sbc ($02.b),Y		; F1 02
	sei		; 78
	sbc $00.b,X		; F5 00
	phk		; 4B
	.db $42, $C2		; 42 C2
	ora $E0F0FE.l,X		; 1F FE F0 E0
	phd		; 0B
	txa		; 8A
	sbc $6009F8.l,X		; FF F8 09 60
	and $8A8100.l,X		; 3F 00 81 8A
	asl A		; 0A
	cpx #$0AF8.w		; E0 F8 0A
	txa		; 8A
	bit $1689.w,X		; 3C 89 16
	sbc $E0FFFE.l,X		; FF FE FF E0
	sbc $2C.b,S		; E3 2C
	cpx #$9AFF.w		; E0 FF 9A
	cop $A6.b		; 02 A6
	rtl		; 6B

	sbc ($FF.b),Y		; F1 FF
	sed		; F8
	ora #$83.b		; 09 83
	nop		; EA
	inc $BD26.w,X		; FE 26 BD
	dex		; CA
	tya		; 98
	sbc $E703.w,X		; FD 03 E7
	asl $EA08.w,X		; 1E 08 EA
	ldy #$09F8.w		; A0 F8 09
	rts		; 60

	sbc ($F0.b,X)		; E1 F0
	sta [$5A.b],Y		; 97 5A
	sbc $0FF1.w,X		; FD F1 0F
	eor $27BFCA.l		; 4F CA BF 27
	cpx #$F4C0.w		; E0 C0 F4
	sta $0DE4E0.l,X		; 9F E0 E4 0D
	bmi -65.b		; 30 BF
	rti		; 40

	rti		; 40

	inc $E6E6.w,X		; FE E6 E6
	and $91DFD2.l,X		; 3F D2 DF 91
	lda ($00.b),Y		; B1 00
	lda $22DF00.l		; AF 00 DF 22
	sbc ($E7.b,X)		; E1 E7
	ora $5F1914.l,X		; 1F 14 19 5F
	jsr $4FBF.w		; 20 BF 4F
	lda $E2D829.l,X		; BF 29 D8 E2
	bit $E0.b,X		; 34 E0
	asl A		; 0A
	dex		; CA
.INDEX 16
	rep #$9E		; C2 9E
	cmp [$E0.b]		; C7 E0
	beq  12.b		; F0 0C
	rts		; 60

	ldx $F5.b		; A6 F5
	jsr ($41D5.w,X)		; FC D5 41
	sbc $2B.b		; E5 2B
	pld		; 2B
	adc [$01.b],Y		; 77 01
	inc $FDFF.w		; EE FF FD
	bvs -23.b		; 70 E9
	jsr ($85FF.w,X)		; FC FF 85
	sbc $63B3FD.l,X		; FF FD B3 63
	jmp ($DBC8.w)		; 6C C8 DB
	bpl  23.b		; 10 17
	bpl 106.b		; 10 6A
	jsr ($7F1C.w,X)		; FC 1C 7F
	sed		; F8
	ora ($0C.b,S),Y		; 13 0C
	and $27DF13.l		; 2F 13 DF 27
	ora $7CE4EF.l,X		; 1F EF E4 7C
	sbc [$FF.b]		; E7 FF
	tda		; 7B
	ora $87CEA8.l,X		; 1F A8 CE 87
	tyx		; BB
	sta ($7B.b,X)		; 81 7B
	ora ($08.b,X)		; 01 08
	ror $18.b		; 66 18
	sbc $F900FF.l		; EF FF 00 F9
	jsr ($FE30.w,X)		; FC 30 FE
	jmp ($ECB4.w,X)		; 7C B4 EC
	ora $76F1.w,Y		; 19 F1 76
	cpx #$C06B.w		; E0 6B C0
	sbc [$A0.b]		; E7 A0
	stp		; DB
	cmp [$FF.b]		; C7 FF
	bvc  61.b		; 50 3D
	jsr $E047.w		; 20 47 E0
	ora #$06.b		; 09 06
	ora [$09.b],Y		; 17 09
	and $1F6F17.l		; 2F 17 6F 1F
	ora [$16.b],Y		; 17 16
	cmp $C33F24.l,X		; DF 24 3F C3
	rol $E1.b,X		; 36 E1
	sbc $9F00.w,X		; FD 00 9F
	dex		; CA
	sbc ($AC.b,X)		; E1 AC
	ora $EFF7FE.l		; 0F FE F7 EF
	adc $FFE306.l,X		; 7F 06 E3 FF
	sbc $5555AA.l,X		; FF AA 55 55
	tax		; AA
	rol A		; 2A
	lda $65FC.w,X		; BD FC 65
	sbc $7F.b,S		; E3 7F
	beq   9.b		; F0 09
	sbc $E00AF8.l,X		; FF F8 0A E0
	tay		; A8
	eor [$FF.b],Y		; 57 FF
	beq 106.b		; F0 6A
	eor ($E0.b)		; 52 E0
	sed		; F8
	ora $E366.w		; 0D 66 E3
	cpx #$5EFF.w		; E0 FF 5E
	sbc ($FF.b),Y		; F1 FF
	tsa		; 3B
	cpx #$24FE.w		; E0 FE 24
	inc $55.b		; E6 55
	sbc $FCE0.w,X		; FD E0 FC
	ldy $D9E1.w		; AC E1 D9
.ACCU 8
	sep #$E0		; E2 E0
	sed		; F8
	asl A		; 0A
	lsr A		; 4A
	xba		; EB
	sbc $FE0FFD.l,X		; FF FD 0F FE
	jsr ($0A1C.w,X)		; FC 1C 0A
	ora ($03.b,X)		; 01 03
	rol A		; 2A
	xba		; EB
	cpx #$04FC.w		; E0 FC 04
	jsr ($E4F1.w,X)		; FC F1 E4
	nop		; EA
	bcs -64.b		; B0 C0
	sbc $E0C0E2.l,X		; FF E2 C0 E0
	sed		; F8
	ora #$E2.b		; 09 E2
	jsr ($F8E0.w,X)		; FC E0 F8
	ora #$01.b		; 09 01
	lda $D5.b,S		; A3 D5
	ora ($FC.b,X)		; 01 FC
	cpy #$C063.w		; C0 63 C0
	sed		; F8
	ora #$FE.b		; 09 FE
	cmp ($E9.b)		; D2 E9
	inx		; E8
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	sbc $6341.w,X		; FD 41 63
	sbc [$C0.b]		; E7 C0
	asl $B2.b		; 06 B2
	cmp $D840.w,Y		; D9 40 D8
	ora #$1F.b		; 09 1F
	cmp $F0.b,X		; D5 F0
	eor $55.b,X		; 55 55
	cpx #$F8.b		; E0 F8
	ora #$2B.b		; 09 2B
	cmp $EB35.w,X		; DD 35 EB
	jsr $9EDF.w		; 20 DF 9E
	inx		; E8
	asl A		; 0A
	phb		; 8B
	jsr ($F8C0.w,X)		; FC C0 F8
	asl A		; 0A
	cpx #$EF.b		; E0 EF
	cmp $17.b,X		; D5 17
	jsr $0BF0.w		; 20 F0 0B
	cpx #$F8.b		; E0 F8
	tas		; 1B
	txy		; 9B
	sbc ($E0.b,X)		; E1 E0
	sbc $FD03.w,X		; FD 03 FD
	ora [$FA.b]		; 07 FA
	cpx #$F8.b		; E0 F8
	phd		; 0B
	inc $8BEF.w,X		; FE EF 8B
	ora [$00.b]		; 07 00
	ldx $7DF4.w		; AE F4 7D
	cpy $CD.b		; C4 CD
	iny		; C8
	lda [$80.b]		; A7 80
	eor $EFE9A2.l,X		; 5F A2 E9 EF
	sbc $F740FB.l,X		; FF FB 40 F7
	cpx #$0F.b		; E0 0F
	ora ($3F.b,X)		; 01 3F
	ora $4F.b,S		; 03 4F
	and ($BF.b,S),Y		; 33 BF
	eor $3FD12E.l,X		; 5F 2E D1 3F
	lda $FFB51F.l,X		; BF 1F B5 FF
	ora $F1630F.l,X		; 1F 0F 63 F1
	eor $6454F2.l,X		; 5F F2 54 64
	cmp $1803.w,Y		; D9 03 18
	php		; 08
	phk		; 4B
	brk $55.b		; 00 55
	brk $98.b		; 00 98
	sbc $ABFCAA.l,X		; FF AA FC AB
	sta ($FB.b,S),Y		; 93 FB
	ora [$CF.b]		; 07 CF
	and [$8F.b],Y		; 37 8F
	sta [$FF.b]		; 87 FF
	rtl		; 6B

	ora $3718.w,X		; 1D 18 37
	jsr $40CF.w		; 20 CF 40
	cmp $808F40.l,X		; DF 40 8F 80
	sbc [$18.b],Y		; F7 18
	pea $E2A6.w		; F4 A6 E2
	and $FEFFF4.l,X		; 3F F4 FF FE
	clc		; 18
	sbc ($AA.b,S),Y		; F3 AA
	rol A		; 2A
	sbc $9AF5.w,X		; FD F5 9A
	ora $F807EF.l		; 0F EF 07 F8
	brk $E3.b		; 00 E3
	sta $01FD.w		; 8D FD 01
	inc $D5E0.w,X		; FE E0 D5
	brk $FA.b		; 00 FA
	dec A		; 3A
	phx		; DA
	beq -103.b		; F0 99
	lsr $E5.b		; 46 E5
	inc $A0E0.w,X		; FE E0 A0
	asl A		; 0A
	sbc $0F.b,S		; E3 0F
	sei		; 78
	rol A		; 2A
	cli		; 58
	cmp [$81.b]		; C7 81
	sbc $F5A07E.l,X		; FF 7E A0 F5
	plp		; 28
	sbc $F7.b,S		; E3 F7
	bvs  77.b		; 70 4D
	bra -128.b		; 80 80
	sbc $2815.w,X		; FD 15 28
	plp		; 28
	bra -38.b		; 80 DA
	iny		; C8
	cmp #$4F.b		; C9 4F
	sbc ($80.b,X)		; E1 80
	sbc $00EA.w,X		; FD EA 00
	cmp [$80.b],Y		; D7 80
	ora $80.b		; 05 80
	lda [$90.b],Y		; B7 90
	sta $507FD3.l		; 8F D3 7F 50
	sbc [$A0.b],Y		; F7 A0
	adc $80EF80.l		; 6F 80 EF 80
	cpx $837F.w		; EC 7F 83
	brk $0F.b		; 00 0F
	lda $9AFC07.l,X		; BF 07 FC 9A
	sbc ($80.b),Y		; F1 80
	sta ($82.b),Y		; 91 82
	jsr ($A0EF.w,X)		; FC EF A0
	eor ($01.b)		; 52 01
	jsr ($0FC2.w,X)		; FC C2 0F
	php		; 08
	iny		; C8
	ora $E0FEFE.l		; 0F FE FE E0
	bvc   0.b		; 50 00
	stx $5E88.w		; 8E 88 5E
	asl $87DF.w		; 0E DF 87
	.db $62, $FB, $7A		; 62 FB 7A
	sbc $0EF101.l,X		; FF 01 F1 0E
	cmp $0FF0.w,Y		; D9 F0 0F
	sta $C7FA70.l		; 8F 70 FA C7
	ora $FB02FD.l,X		; 1F FD 02 FB
	tsb $E0.b		; 04 E0
	ora [$F7.b]		; 07 F7
	rts		; 60

	adc [$40.b]		; 67 40
	ora $2A9763.l,X		; 1F 63 97 2A
	lda $36DFFC.l,X		; BF FC DF 36
	nop		; EA
	ora $CC447F.l		; 0F 7F 44 CC
	bit $FCFE.w		; 2C FE FC
	bra -31.b		; 80 E1
	cld		; D8
	ldy #$E4.b		; A0 E4
	jsl $F702F3.l		; 22 F3 02 F7
	ora $ED.b		; 05 ED
	ora ($FC.b,S),Y		; 13 FC
	php		; 08
	sbc $252AE7.l,X		; FF E7 2A 25
	sbc $FBFA.w,X		; FD FA FB
	jsr ($FFFF.w,X)		; FC FF FF
	ora ($F8.b,S),Y		; 13 F8
	sbc $707BF3.l,X		; FF F3 7B 70
	adc $0F48.w,X		; 7D 48 0F
	brk $5F.b		; 00 5F
	rti		; 40

	cpy #$E0.b		; C0 E0
	ora $FC.b,S		; 03 FC
	pei ($87.b)		; D4 87
	sbc $C3BF83.l,X		; FF 83 BF C3
	rol A		; 2A
	cli		; 58
	sbc $FCBC.w,X		; FD BC FC
	and ($FC.b,X)		; 21 FC
	jsr ($FC71.w,X)		; FC 71 FC
	asl $76.b		; 06 76
	cld		; D8
	asl A		; 0A
	ora $2EEF.w		; 0D EF 2E
	cpx $E0.b		; E4 E0
	inc $8701.w,X		; FE 01 87
	dec $A0BB.w		; CE BB A0
	adc $E4.b		; 65 E4
	sed		; F8
	asl A		; 0A
	cmp $3037EF.l		; CF EF 37 30
	lda $9B7F47.l,X		; BF 47 7F 9B
	cpx #$FE.b		; E0 FE
	sbc $1EBF.w,Y		; F9 BF 1E
	ora $F824E1.l		; 0F E1 24 F8
	ora $1E40.w		; 0D 40 1E
	ror $FF80.w,X		; 7E 80 FF
	tay		; A8
	eor [$9B.b],Y		; 57 9B
	lda ($5F.b,X)		; A1 5F
	eor [$BE.b]		; 47 BE
	and ($A0.b)		; 32 A0
	eor $C27F.w,X		; 5D 7F C2
	stp		; DB
	inc $BFFF.w,X		; FE FF BF
	eor $5EF1E0.l		; 4F E0 F1 5E
	sbc ($C1.b,S),Y		; F3 C1
	brk $0A.b		; 00 0A
	jsr ($F895.w,X)		; FC 95 F8
	tay		; A8
	cop $18.b		; 02 18
	adc $6EFEE4.l		; 6F E4 FE 6E
	cmp ($3C.b)		; D2 3C
	nop		; EA
	clc		; 18
	lsr $05.b,X		; 56 05
	sbc $DC2CC7.l,X		; FF C7 2C DC
	inc $09F8.w,X		; FE F8 09
	rti		; 40

	nop		; EA
	rol $0BE0.w,X		; 3E E0 0B
	jmp $FEE17F.l		; 5C 7F E1 FE
	jsr ($5E01.w,X)		; FC 01 5E
	sta ($F4.b,X)		; 81 F4
	cop $EB.b		; 02 EB
	jsr $09D0.w		; 20 D0 09
	rol $3C.b,X		; 36 3C
	sbc $C90F0F.l,X		; FF 0F 0F C9
	sbc $605FF7.l,X		; FF F7 5F 60
	dey		; 88
	lda $807F80.l,X		; BF 80 7F 80
	ora $4BA20A.l,X		; 1F 0A A2 4B
	brk $97.b		; 00 97
	brk $BE.b		; 00 BE
	and $E68F.w,Y		; 39 8F E6
	xba		; EB
	bne -20.b		; D0 EC
	inc $F764.w,X		; FE 64 F7
	rts		; 60

	sbc ($CF.b),Y		; F1 CF
	inc A		; 1A
	jsr $00D2.w		; 20 D2 00
	sbc $0B.b,X		; F5 0B
	tsx		; BA
	ora ($F6.b,X)		; 01 F6
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	sbc $FFFC.w,X		; FD FC FF
	xce		; FB
	sbc $FCA047.l,X		; FF 47 A0 FC
	eor [$67.b],Y		; 57 67
	rol A		; 2A
	sta ($0C.b)		; 92 0C
	rti		; 40

	eor $FF.b		; 45 FF
	and $C0BE.w,Y		; 39 BE C0
	cmp $FC55FF.l,X		; DF FF 55 FC
	adc $55.b,X		; 75 55
	ora $F020CE.l		; 0F CE 20 F0
	bpl -32.b		; 10 E0
	inc $FEFE.w,X		; FE FE FE
	ldx $E0EA.w		; AE EA E0
	sed		; F8
	phd		; 0B
	cmp $E0DB.w		; CD DB E0
	sbc $6050.w,X		; FD 50 60
.INDEX 8
	sep #$1A		; E2 1A
	jsr ($F8E0.w,X)		; FC E0 F8
	ora #$F4E2.w		; 09 E2 F4
	tsx		; BA
	asl A		; 0A
	cpx #$BF.b		; E0 BF
	dec $F1.b		; C6 F1
	rti		; 40

	dec $FEE0.w,X		; DE E0 FE
	cpy $CD.b		; C4 CD
	cmp [$57.b],Y		; D7 57
	inc $E1A1.w,X		; FE A1 E1
	cmp [$24.b],Y		; D7 24
	sbc ($81.b),Y		; F1 81
	cpx #$09.b		; E0 09
	sbc ($1E.b,X)		; E1 1E
	cmp $FF602F.l,X		; DF 2F 60 FF
	tya		; 98
	sbc ($55.b)		; F2 55
	eor $70.b,X		; 55 70
	sed		; F8
	ora $F0C4.w		; 0D C4 F0
	asl $F8FE.w		; 0E FE F8
	ora $E9BA.w		; 0D BA E9
	rts		; 60

	cpy #$0B.b		; C0 0B
	nop		; EA
	cmp $DFE9.w,Y		; D9 E9 DF
	ldy $CE.b		; A4 CE
	eor $F8.b,X		; 55 F8
	sbc $C00FB0.l,X		; FF B0 0F C0
	sed		; F8
	asl $BEA4.w		; 0E A4 BE
	cpx #$F8.b		; E0 F8
	ora $FB24.w		; 0D 24 FB
	brk $65.b		; 00 65
	brk $5E.b		; 00 5E
	ldx $DB.b		; A6 DB
	lda $3C0BB0.l,X		; BF B0 0B 3C
	sbc $ED56DB.l,X		; FF DB 56 ED
	cpx #$FE.b		; E0 FE
	lda $01F0FE.l		; AF FE F0 01
	inc $01.b		; E6 01
	cpx $D2F6.w		; EC F6 D2
	pla		; 68
	sbc $FF.b,S		; E3 FF
	sbc $78DF.w,X		; FD DF 78
	ora [$E0.b]		; 07 E0
	ora $C0ED55.l,X		; 1F 55 ED C0
	and $FFF13F.l,X		; 3F 3F F1 FF
	inc $02.b,X		; F6 02
	cpx $F080.w		; EC 80 F0
	ora #$ED7F.w		; 09 7F ED
	ora ($83.b,X)		; 01 83
	lda #$FB06.w		; A9 06 FB
	sbc [$04.b],Y		; F7 04
	ora $04.b		; 05 04
	bvc -17.b		; 50 EF
	inc $FC03.w,X		; FE 03 FC
	ora [$F9.b]		; 07 F9
	ora [$FB.b]		; 07 FB
	cpx #$FE.b		; E0 FE
	beq -16.b		; F0 F0
	sbc $0C0C8F.l		; EF 8F 0C 0C
	inc $02.b,X		; F6 02
	sbc $EF30.w,Y		; F9 30 EF
	beq  15.b		; F0 0F
	jsr ($FEE3.w,X)		; FC E3 FE
	sbc $5AAA.w,Y		; F9 AA 5A
	sta ($72.b,X)		; 81 72
	dey		; 88
	and [$CE.b]		; 27 CE
	bra   9.b		; 80 09
	inc $11F8.w,X		; FE F8 11
	bit $28.b,X		; 34 28
	ora ($88.b,S),Y		; 13 88
	dey		; 88
	phd		; 0B
	inc $0CF8.w,X		; FE F8 0C
	rti		; 40

	inc $12F8.w,X		; FE F8 12
	eor $3A.b,X		; 55 3A
	brk $38.b		; 00 38
	trb $8014.w		; 1C 14 80
	ora #$F8FE.w		; 09 FE F8
	ora #$4080.w		; 09 80 40
	ora #$0AFE.w		; 09 FE 0A
	rti		; 40

	php		; 08
	bit #$FEAA.w		; 89 AA FE
	adc ($60.b)		; 72 60
	ora #$82F2.w		; 09 F2 82
	bcc  71.b		; 90 47
	stz $1780.w		; 9C 80 17
	.db $82, $68, $0D		; 82 68 0D
	tax		; AA
	tax		; AA
	dex		; CA
	txa		; 8A
	lsr $4E.b,X		; 56 4E
	ora [$90.b]		; 07 90
	eor $79400A.l		; 4F 0A 40 79
	stz $F0F6.w,X		; 9E F6 F0
	stx $24.b		; 86 24
	sec		; 38
	ora $5025.w		; 0D 25 50
	adc ($AA.b,X)		; 61 AA
	tay		; A8
	bmi -10.b		; 30 F6
	stz $7CEE.w		; 9C EE 7C
	inx		; E8
	tas		; 1B
	inc $0DF8.w,X		; FE F8 0D
	ror $0F58.w,X		; 7E 58 0F
	sbc $0D8066.l,X		; FF 66 80 0D
	adc ($55.b)		; 72 55
	eor ($F8.b,X)		; 41 F8
	trb $F0BC.w		; 1C BC F0
	eor $80FE.w		; 4D FE 80
	inc $14F8.w,X		; FE F8 14
	php		; 08
	inx		; E8
	asl $7E9C.w,X		; 1E 9C 7E
	stz $F8.b		; 64 F8
	ora ($55.b,S),Y		; 13 55
	eor $54.b,X		; 55 54
	sed		; F8
	eor [$B8.b]		; 47 B8
	cpx #$09.b		; E0 09
	.db $42, $5E		; 42 5E
	trb $09E8.w		; 1C E8 09
	asl $F0.b,X		; 16 F0
	ora #$F00E.w		; 09 0E F0
	and $D8C0.w,Y		; 39 C0 D8
	and $FE.b,S		; 23 FE
	sed		; F8
	and $55.b,S		; 23 55
	eor $A0.b,X		; 55 A0
	cld		; D8
	ora $4FE09E.l		; 0F 9E E0 4F
	stz $F0.b,X		; 74 F0
	and $FE.b,S		; 23 FE
	sed		; F8
	and $92.b		; 25 92
	rti		; 40

	and $C8.b,X		; 35 C8
	inx		; E8
	asl $98.b,X		; 16 98
	sed		; F8
	trb $F8FF.w		; 1C FF F8
	eor #$5555.w		; 49 55 55
	.db $62, $F0, $85		; 62 F0 85
	stx $E8.b,Y		; 96 E8
	and ($D2.b,S),Y		; 33 D2
	beq  22.b		; F0 16
	ldx $C8.b		; A6 C8
	rol $8A.b		; 26 8A
	cpx #$27.b		; E0 27
	lsr A		; 4A
	bne  57.b		; D0 39
	jsl $FE8930.l		; 22 30 89 FE
	sed		; F8
	cmp [$55.b],Y		; D7 55
	eor $50.b,X		; 55 50
	cpy #$17.b		; C0 17
	rti		; 40

	cpy #$1D.b		; C0 1D
	bcc  64.b		; 90 40
	and [$92.b]		; 27 92
	iny		; C8
	and [$10.b]		; 27 10
	ora $41D0CD.l,X		; 1F CD D0 41
	lsr $48.b		; 46 48
	bit $D044.w,X		; 3C 44 D0
	ora [$55.b],Y		; 17 55
	plb		; AB
	lda ($28.b)		; B2 28
	adc $BC.b,X		; 75 BC
	tay		; A8
	and $E810.w,X		; 3D 10 E8
	ora #$A8C6.w		; 09 C6 A8
	clc		; 18
	inc A		; 1A
	cpx #$26.b		; E0 26
	sta $FE.b		; 85 FE
	sed		; F8
	ora ($D8.b)		; 12 D8
	sed		; F8
	ora ($AA.b)		; 12 AA
	tax		; AA
	ror A		; 6A
	cpy #$28.b		; C0 28
	asl A		; 0A
	bne  27.b		; D0 1B
	lsr $20.b		; 46 20
	eor $E870.w,X		; 5D 70 E8
	plp		; 28
	inc $2AF8.w,X		; FE F8 2A
	plp		; 28
	ldx $FE.b,Y		; B6 FE
	sed		; F8
	ora #$F022.w		; 09 22 F0
	and ($AA.b,S),Y		; 33 AA
	rol A		; 2A
	nop		; EA
	rol $E0.b,X		; 36 E0
	cpy #$2B.b		; C0 2B
	inc A		; 1A
	cld		; D8
	eor $7E.b		; 45 7E
	cpy #$21.b		; C0 21
	jmp ($A622.w,X)		; 7C 22 A6
	sed		; F8
	ora $F894.w		; 0D 94 F8
	ora ($9C.b),Y		; 11 9C
	bne  67.b		; D0 43
	tay		; A8
	tax		; AA
	sbc $1128C6.l,X		; FF C6 28 11
	mvp $2D,$F0		; 44 F0 2D
	inc $E2FC.w,X		; FE FC E2
	cpy #$1F.b		; C0 1F
	bmi -32.b		; 30 E0
	tsa		; 3B
	dec $90.b		; C6 90
	phd		; 0B
	plx		; FA
	sbc $09F8FE.l,X		; FF FE F8 09
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	lda $03A3.w,Y		; B9 A3 03
	cmp ($01.b),Y		; D1 01
	inx		; E8
	brk $1F.b		; 00 1F
	cpx #$47.b		; E0 47
	sed		; F8
	inc $FFBF.w,X		; FE BF FF
	ora $DF07FB.l		; 0F FB 07 DF
	and ($FC.b,X)		; 21 FC
	inc $79C1.w,X		; FE C1 79
	xce		; FB
	cmp $7F7FDF.l,X		; DF DF 7F 7F
	ora $FFEB0F.l		; 0F 0F EB FF
	ora $03.b,S		; 03 03
	ora ($BA.b,X)		; 01 BA
	adc ($EC.b),Y		; 71 EC
	and #$083F.w		; 29 3F 08
	php		; 08
	lda ($45.b),Y		; B1 45
	sei		; 78
	ldy #$BC.b		; A0 BC
	cpy #$FD.b		; C0 FD
	ora $AF.b,S		; 03 AF
	cmp ($2D.b),Y		; D1 2D
	adc ($F7.b,X)		; 61 F7
	cpy #$FE.b		; C0 FE
	sbc [$F7.b],Y		; F7 F7
	tsx		; BA
	tsx		; BA
	jmp.w [$C3AC]		; DC AC C3
	cpx $EE.b		; E4 EE
	inc $799D.w		; EE 9D 79
	tsx		; BA
	adc $7D7D.w,Y		; 79 7D 7D
	phx		; DA
	eor $1B.b,X		; 55 1B
	inc $2A75.w,X		; FE 75 2A
	rol A		; 2A
	eor $FCDF5B.l		; 4F 5B DF FC
	.db $82, $BD, $80		; 82 BD 80
	sbc $F8DF8A.l,X		; FF 8A DF F8
	sbc $DAE6D5.l,X		; FF D5 E6 DA
	phx		; DA
	jsr ($EAFD.w,X)		; FC FD EA
	plx		; FA
	sbc $F5.b,X		; F5 F5
	xba		; EB
	xba		; EB
	eor [$FF.b],Y		; 57 FF
	sbc $A0A057.l,X		; FF 57 A0 A0
	ora ($12.b)		; 12 12
	and $DF.b		; 25 DF
	cop $FE.b		; 02 FE
	ora $6F.b		; 05 6F
	asl A		; 0A
	sbc $A86F14.l,X		; FF 14 6F A8
	sbc $5FFDFF.l,X		; FF FF FD 5F
	sbc $11F7ED.l,X		; FF ED F7 11
	and $E6030D.l		; 2F 0D 03 E6
	sbc ($52.b,X)		; E1 52
	eor ($F3.b),Y		; 51 F3
	sbc ($DB.b),Y		; F1 DB
	lda $79F81F.l,X		; BF 1F F8 79
	sei		; 78
	adc #$D778.w		; 69 78 D7
	cmp [$9D.b],Y		; D7 9D
	eor ($BF.b),Y		; 51 BF
	lda $FE0EFF.l		; AF FF 0E FE
	ror $73F8.w,X		; 7E F8 73
	sta [$FF.b]		; 87 FF
	sta [$EF.b]		; 87 EF
	cmp $F68F20.l,X		; DF 20 8F F6
	bit #$C0FF.w		; 89 FF C0
	lda $C4FB31.l,X		; BF 31 FB C4
	sbc $F87FE0.l,X		; FF E0 7F F8
	and $805905.l,X		; 3F 05 59 80
	sbc $1DDEC0.l,X		; FF C0 DE 1D
	sbc $F8E0E0.l,X		; FF E0 E0 F8
	cpx #$61.b		; E0 61
	sbc $7A2910.l,X		; FF 10 29 7A
	inc $09.b,X		; F6 09
	bvs 101.b		; 70 65
	phx		; DA
	sta [$21.b]		; 87 21
	sbc $06.b,X		; F5 06
	inx		; E8
	bpl  11.b		; 10 0B
	tda		; 7B
	jmp.w [$61F6]		; DC F6 61
	inc $C8DE.w,X		; FE DE C8
	bpl  -2.b		; 10 FE
	ora ($F7.b,X)		; 01 F7
	php		; 08
	inx		; E8
	stp		; DB
	bit $5A.b		; 24 5A
	ldx #$E2.b		; A2 E2
	sbc $8002.w,X		; FD 02 80
	plp		; 28
	ora ($EC.b),Y		; 11 EC
	cpy #$55.b		; C0 55
	trb $11EF.w		; 1C EF 11
	bvc  89.b		; 50 59
	ldx $A059.w		; AE 59 A0
	sed		; F8
	ora ($E2.b)		; 12 E2
	cmp $454424.l,X		; DF 24 44 45
	cld		; D8
	ora ($41.b)		; 12 41
	dec $F8A0.w,X		; DE A0 F8
	ora ($CF.b),Y		; 11 CF
	sbc ($9E.b),Y		; F1 9E
	rti		; 40

	bvc -30.b		; 50 E2
	inc $F8.b,X		; F6 F8
	sbc $14.b		; E5 14
	cpy #$F8.b		; C0 F8
	ora $AC99.w		; 0D 99 AC
	cli		; 58
	phy		; 5A
	inc $E0D8.w,X		; FE D8 E0
	sed		; F8
	bpl  32.b		; 10 20
	ror A		; 6A
	eor ($83.b)		; 52 83
	inc $6C12.w		; EE 12 6C
	adc $2BBC84.l,X		; 7F 84 BC 2B
	txa		; 8A
	cpy #$F8.b		; C0 F8
	ora $41FE.w		; 0D FE 41
	dec $FDFC.w,X		; DE FC FD
	tay		; A8
	brk $42.b		; 00 42
	jsr ($8D09.w,X)		; FC 09 8D
	sbc [$C8.b],Y		; F7 C8
	ora #$1BCE.w		; 09 CE 1B
	bit $EF86.w,X		; 3C 86 EF
	bpl  98.b		; 10 62
	sbc $5405.w,X		; FD 05 54
	rts		; 60

	sed		; F8
	ora ($00.b)		; 12 00
	lda [$48.b],Y		; B7 48
	sbc [$7F.b],Y		; F7 7F
	cpy #$12.b		; C0 12
	bra  32.b		; 80 20
	ora ($DF.b,S),Y		; 13 DF
	cpx $C7.b		; E4 C7
	sei		; 78
	sbc ($7E.b,X)		; E1 7E
	beq  63.b		; F0 3F
	sbc $BBC20C.l,X		; FF 0C C2 BB
	ldx $FBBC.w,Y		; BE BC FB
	eor $EAEE5F.l,X		; 5F 5F EE EA
	tsb $F70C.w		; 0C 0C F7
	ora $80FCE0.l,X		; 1F E0 FC 80
	ora ($F4.b,X)		; 01 F4
	cpy $F1.b		; C4 F1
	ora ($FE.b,X)		; 01 FE
	jsr ($FF1F.w,X)		; FC 1F FF
	ora $77.b,S		; 03 77
	dey		; 88
	adc $FE72BD.l		; 6F BD 72 FE
	stp		; DB
	stp		; DB
	ora [$23.b]		; 07 23
	ora $A06903.l,X		; 1F 03 69 A0
	eor $10.b,S		; 43 10
	bpl  -8.b		; 10 F8
	sbc $6962D7.l,X		; FF D7 62 69
	ora $FCC3F0.l		; 0F F0 C3 FC
	sbc [$1C.b],Y		; F7 1C
	adc ($9C.b,S),Y		; 73 9C
	inc $EFFF.w,X		; FE FF EF
	rol A		; 2A
	eor ($FF.b),Y		; 51 FF
	jsr ($FFE1.w,X)		; FC E1 FF
	tas		; 1B
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
	sta $877FFF.l		; 8F FF 7F 87
	dec $C1BE.w		; CE BE C1
	sbc $F0FEC0.l		; EF C0 FE F0
	sbc $923245.l		; EF 45 32 92
	adc $2F5A.w,X		; 7D 5A 2F
	sec		; 38
	cop $01.b		; 02 01
	ora $FC0C.w		; 0D 0C FC
	adc $EB.b,S		; 63 EB
	sbc $F3FCBE.l,X		; FF BE FC F3
	xce		; FB
	sty $F6.b		; 84 F6
	cpx $01.b		; E4 01
	inc $80.b,X		; F6 80
	cpx $E9.b		; E4 E9
	cpx $E4.b		; E4 E4
	sbc #$7FF0.w		; E9 F0 7F
	sbc $BFFE30.l		; EF 30 FE BF
	adc $E47FFD.l,X		; 7F FD 7F E4
	nop		; EA
	cpx #$E0.b		; E0 E0
	jsr ($F0F0.w,X)		; FC F0 F0
	eor $D40B.w		; 4D 0B D4
	lda $4ABD.w,X		; BD BD 4A
	sbc $F4A490.l		; EF 90 A4 F4
	lda $15.b,X		; B5 15
	beq  -8.b		; F0 F8
	ora $DF0CF8.l,X		; 1F F8 0C DF
	adc $20.b,S		; 63 20
	ror $0B60.w,X		; 7E 60 0B
	sbc $800A.w,X		; FD 0A 80
	bpl -24.b		; 10 E8
	jsr ($15D4.w,X)		; FC D4 15
	phx		; DA
	sed		; F8
	xba		; EB
	cpx #$F0.b		; E0 F0
	ora ($EA.b)		; 12 EA
	jsr ($22DD.w,X)		; FC DD 22
	cld		; D8
	inc $F0C0.w,X		; FE C0 F0
	bpl  28.b		; 10 1C
	trb $A0.b		; 14 A0
	jsr $EFF5.w		; 20 F5 EF
	bpl  58.b		; 10 3A
	dec $FF21.w		; CE 21 FF
	sed		; F8
	asl $2ED4.w		; 0E D4 2E
	inc $353E.w		; EE 3E 35
	cmp ($30.b,X)		; C1 30
	ora $EA.b,X		; 15 EA
	jsr ($E044.w,X)		; FC 44 E0
	sed		; F8
	tas		; 1B
	adc $E18F81.l,X		; 7F 81 8F E1
	ldx $A4.b		; A6 A4
	stz $80FB.w		; 9C FB 80
	and ($EC.b,X)		; 21 EC
	tda		; 7B
	jsr ($DF20.w,X)		; FC 20 DF
	adc $EC.b,X		; 75 EC
	txa		; 8A
	pla		; 68
	jsr ($84C2.w,X)		; FC C2 84
	sbc $C012.w,X		; FD 12 C0
	sed		; F8
	ora $ED2B8E.l		; 0F 8E 2B ED
	asl A		; 0A
	sbc ($6F.b),Y		; F1 6F
	bcc -64.b		; 90 C0
	rti		; 40

	sbc $A0E91E.l,X		; FF 1E E9 A0
	sed		; F8
	ora ($AD.b),Y		; 11 AD
.ACCU 16
	rep #$E0		; C2 E0
	lda $43B440.l,X		; BF 40 B4 43
	inc $E3.b,X		; F6 E3
	txs		; 9A
	clv		; B8
	tsb $10FF.w		; 0C FF 10
	sbc $38E7C7.l,X		; FF C7 E7 38
	sta [$F8.b]		; 87 F8
	sta [$FC.b],Y		; 97 FC
	cmp $7C.b,S		; C3 7C
	sed		; F8
	and $7C43BF.l,X		; 3F BF 43 7C
	eor $44C3.w,X		; 5D C3 44
	and $EB41AC.l,X		; 3F AC 41 EB
	xba		; EB
	dec $00EA.w,X		; DE EA 00
	sbc ($40.b,S),Y		; F3 40
	sbc $F0BF84.l,X		; FF 84 BF F0
	tsb $E0.b		; 04 E0
	brk $E0.b		; 00 E0
	ora ($3F.b,X)		; 01 3F
	bne -111.b		; D0 91
	sbc ($E4.b),Y		; F1 E4
	ora ($BF.b,X)		; 01 BF
	lda $FBDE15.l,X		; BF 15 DE FB
	xce		; FB
	and ($52.b,S),Y		; 33 52
	bit $DCF2.w,X		; 3C F2 DC
	ora ($01.b,X)		; 01 01
	bit $D43C.w,X		; 3C 3C D4
	nop		; EA
	sbc ($61.b,X)		; E1 61
	ora [$1F.b],Y		; 17 1F
	inc $30.b,X		; F6 30
	cmp ($1C.b,X)		; C1 1C
	cpx #$B4.b		; E0 B4
	cmp $FD.b,S		; C3 FD
	sed		; F8
	plp		; 28
	and $E0FFE0.l		; 2F E0 FF E0
	sbc [$FE.b],Y		; F7 FE
	jmp.w [$096D]		; DC 6D 09
	jsr ($6907.w,X)		; FC 07 69
	and $C38F90.l,X		; 3F 90 8F C3
	cpy #$A5.b		; C0 A5
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	beq -46.b		; F0 D2
	eor $FC.b,S		; 43 FC
	cpx #$E9.b		; E0 E9
	eor $B97FEA.l		; 4F EA 7F B9
	ora $0FBD.w,X		; 1D BD 0F
	sbc $C0AFFE.l,X		; FF FE AF C0
	cpx #$E9.b		; E0 E9
	bcs -65.b		; B0 BF
	ora $10C0F0.l		; 0F F0 C0 10
	stz $1F1E.w,X		; 9E 1E 1F
	eor $FB093B.l,X		; 5F 3B 09 FB
	asl $71.b		; 06 71
	eor #$F3.b		; 49 F3
	sbc ($E2.b,S),Y		; F3 E2
	nop		; EA
	sbc ($FF.b,X)		; E1 FF
	ldy #$BE.b		; A0 BE
	cmp ($49.b,S),Y		; D3 49
	tyx		; BB
	ora $55.b,S		; 03 55
	adc $19.b,X		; 75 19
	ora ($FE.b),Y		; 11 FE
	sbc $22.b,X		; F5 22
	cpx $20.b		; E4 20
	sed		; F8
	ora ($46.b),Y		; 11 46
	inc $DE.b,X		; F6 DE
	sbc $F020.w		; ED 20 F0
	asl $FE.b,X		; 16 FE
	ora ($55.b,X)		; 01 55
	eor $BA.b,X		; 55 BA
	inc $F8E0.w,X		; FE E0 F8
	ora $7A.b,X		; 15 7A
	sbc ($DA.b),Y		; F1 DA
	and $E0.b,S		; 23 E0
	sed		; F8
	ora ($AA.b),Y		; 11 AA
	jsr ($F020.w,X)		; FC 20 F0
	asl $FD64.w,X		; 1E 64 FD
	eor $EE.b,X		; 55 EE
	cpx #$F8.b		; E0 F8
	ora [$26.b],Y		; 17 26
	sbc ($E0.b)		; F2 E0
	sed		; F8
	phd		; 0B
	txy		; 9B
	cld		; D8
	phd		; 0B
	nop		; EA
	cop $20.b		; 02 20
	sbc ($F9.b)		; F2 F9
	inc $0645.w		; EE 45 06
	cpy #$F8.b		; C0 F8
	ora ($BB.b,S),Y		; 13 BB
	mvp $43,$D8		; 44 D8 43
	php		; 08
	xce		; FB
	tsb $DA.b		; 04 DA
	sbc #$F6.b		; E9 F6
	eor $15.b,X		; 55 15
	sbc $DA09F8.l,X		; FF F8 09 DA
	cpx $EBE2.w		; EC E2 EB
	jsr ($58F1.w,X)		; FC F1 58
	sbc $D8E0.w,X		; FD E0 D8
	bpl  98.b		; 10 62
	xba		; EB
	sty $41.b,X		; 94 41
	tsb $5E.b		; 04 5E
	cpx $E1B4.w		; EC B4 E1
	sbc $BF12DA.l,X		; FF DA 12 BF
	rti		; 40

	jsr $0684.w		; 20 84 06
	cpx #$40.b		; E0 40
	adc $F6.b		; 65 F6
	stz $EAEB.w		; 9C EB EA
	cpx $9FFA.w		; EC FA 9F
	adc ($E1.b,X)		; 61 E1
	adc $8080F8.l,X		; 7F F8 80 80
	sta $9E1EC0.l,X		; 9F C0 1E 9E
	adc $EFDE4A.l,X		; 7F 4A DE EF
	sbc $1B7F7F.l		; EF 7F 7F 1B
	txy		; 9B
	ora ($C0.b,X)		; 01 C0
	php		; 08
	sbc [$C7.b],Y		; F7 C7
	dec $1080.w,X		; DE 80 10
	mvp $11,$9D		; 44 9D 11
	cpx #$FF.b		; E0 FF
	jsr ($FF0F.w,X)		; FC 0F FF
	sta ($B8.b,X)		; 81 B8
	inc $04F1.w		; EE F1 04
	inx		; E8
	nop		; EA
	sbc $62FD.w,X		; FD FD 62
	ora #$0F.b		; 09 0F
	ora ($81.b,X)		; 01 81
	clv		; B8
	tsb $40.b		; 04 40
	adc $54ED.w		; 6D ED 54
	cpy #$62.b		; C0 62
	cmp #$03.b		; C9 03
	ora $D049.w,Y		; 19 49 D0
	bcs  65.b		; B0 41
	sbc ($09.b)		; F2 09
	plb		; AB
	jmp $DFE1.w		; 4C E1 DF
	adc ($A1.b,X)		; 61 A1
	adc $FA7D.w,X		; 7D 7D FA
	cmp [$D7.b],Y		; D7 D7
	stz $FBDC.w,X		; 9E DC FB
	ora $D4FD7F.l		; 0F 7F FD D4
	ora #$7F.b		; 09 7F
	jsr $387F.w		; 20 7F 38
	adc $C07F3E.l,X		; 7F 3E 7F C0
	ora ($F0.b),Y		; 11 F0
	jsr ($205F.w,X)		; FC 5F 20
	eor [$38.b]		; 47 38
	sbc $1F.b,X		; F5 1F
	eor ($3E.b,X)		; 41 3E
	dey		; 88
	and $2968.w,Y		; 39 68 29
	cpy #$80.b		; C0 80
	cpx #$C0.b		; E0 C0
	beq  96.b		; F0 60
	beq 112.b		; F0 70
	ldx $7F.b		; A6 7F
	inc $B0B0.w,X		; FE B0 B0
	beq  64.b		; F0 40
	bra  32.b		; 80 20
	cpy #$90.b		; C0 90
	rts		; 60

	bra 112.b		; 80 70
	clc		; 18
	pea $40FE.w		; F4 FE 40
	beq -50.b		; F0 CE
	inc $EAFC.w,X		; FE FC EA
	eor ($7D.b,X)		; 41 7D
	sbc $C783.w,X		; FD 83 C7
	adc $CE75F7.l,X		; 7F F7 75 CE
	inc $80FC.w,X		; FE FC 80
	adc $C1FE82.l,X		; 7F 82 FE C1
	and $8A.b,S		; 23 8A
	adc $FCFFCE.l,X		; 7F CE FF FC
	clv		; B8
	clv		; B8
	sed		; F8
	inc $C080.w,X		; FE 80 C0
	sbc $FECE.w,X		; FD CE FE
	sbc $FEF6.w,X		; FD F6 FE
	sta $FE.b		; 85 FE
	lda #$60.b		; A9 60
	ora $F777FD.l,X		; 1F FD 77 F7
	ror $72FA.w,X		; 7E FA 72
	sta ($28.b,X)		; 81 28
	eor [$AE.b]		; 47 AE
	xba		; EB
	sbc $8F7F8B.l,X		; FF 8B 7F 8F
	cpy #$31.b		; C0 31
	and $68A8F6.l		; 2F F6 A8 68
	sec		; 38
	pla		; 68
	clv		; B8
	pla		; 68
	cpy #$D0.b		; C0 D0
	ldy $4C30.w,X		; BC 30 4C
	jsr ($8CFE.w,X)		; FC FE 8C
	cpy $D0FC.w		; CC FC D0
	sed		; F8
	bmi  68.b		; 30 44
	inc $40FF.w,X		; FE FF 40
	jsr ($70FE.w,X)		; FC FE 70
	jsr ($0741.w,X)		; FC 41 07
	.db $42, $B0		; 42 B0
	phd		; 0B
	lsr $C1.b		; 46 C1
	cld		; D8
	ora #$3D.b		; 09 3D
	lda ($C0.b)		; B2 C0
	rti		; 40

	inc $92D7.w,X		; FE D7 92
	tya		; 98
	inc $0103.w,X		; FE 03 01
	inc $F0FC.w,X		; FE FC F0
	inc $CE02.w,X		; FE 02 CE
	cmp ($FE.b),Y		; D1 FE
	bmi  41.b		; 30 29
	lda ($F2.b)		; B2 F2
	sbc $FAD1F7.l,X		; FF F7 D1 FA
	cmp $F1.b		; C5 F1
	and $64E3.w,Y		; 39 E3 64
	txs		; 9A
	inc $FA2E.w,X		; FE 2E FA
	bra  60.b		; 80 3C
	jmp ($861E.w,X)		; 7C 1E 86
	inc $5C9C.w,X		; FE 9C 5C
	stz $FE5E.w,X		; 9E 5E FE
	asl $FEDE.w,X		; 1E DE FE
	and #$54.b		; 29 54
	cpy #$FC.b		; C0 FC
	inc $FEE0.w,X		; FE E0 FE
	inc $FCFE.w,X		; FE FE FC
	ldy $FE.b,X		; B4 FE
	lda $2A.b,S		; A3 2A
	ldy #$F8.b		; A0 F8
	phd		; 0B
	ora $FE.b,S		; 03 FE
	ldy #$FE.b		; A0 FE
	adc ($C2.b)		; 72 C2
	bvs -60.b		; 70 C4
	sbc $BAE2FC.l,X		; FF FC E2 BA
	adc $20FE.w		; 6D FE 20
	cpx #$FE.b		; E0 FE
	inc $FEC6.w,X		; FE C6 FE
	ora [$03.b]		; 07 03
	inc $FEFF.w		; EE FF FE
	jsr ($FEC8.w,X)		; FC C8 FE
	tsb $03.b		; 04 03
	inc $AFFC.w,X		; FE FC AF
	sbc $DFFBFB.l,X		; FF FB FB DF
	cmp [$CF.b],Y		; D7 CF
	cmp $FFBFCE.l,X		; DF CE BF FF
	dec $8696.w,X		; DE 96 86
	dec $C6.b,X		; D6 C6
	sbc [$E6.b],Y		; F7 E6
	and $DA.b,X		; 35 DA
	plp		; 28
	sbc $31FF30.l,X		; FF 30 FF 31
	sbc $F04F79.l,X		; FF 79 4F F0
	sbc $19FF39.l,X		; FF 39 FF 19
	sbc $06FE6C.l,X		; FF 6C FE 06
	dec $17.b		; C6 17
	sta ($AF.b,S),Y		; 93 AF
	cmp [$1F.b],Y		; D7 1F
	cmp [$FC.b],Y		; D7 FC
	ror A		; 6A
	jsr ($FEF8.w,X)		; FC F8 FE
	inx		; E8
	sbc $AAFCFE.l,X		; FF FE FC AA
	adc $FE68.w,Y		; 79 68 FE
	inc $A0FE.w,X		; FE FE A0
	inc $FEFE.w,X		; FE FE FE
	pla		; 68
	inc $FFE0.w,X		; FE E0 FF
	rts		; 60

	rts		; 60

	cmp $FC6A3B.l		; CF 3B 6A FC
	bmi -16.b		; 30 F0
	bpl  -2.b		; 10 FE
	bcc -16.b		; 90 F0
	bcs -29.b		; B0 E3
	ora $05.b,S		; 03 05
	sei		; 78
	eor ($70.b,X)		; 41 70
	and $0AA8.w,Y		; 39 A8 0A
	ora [$00.b]		; 07 00
	asl $52.b		; 06 52
	sbc $91FE.w,X		; FD FE 91
	sbc $1F.b,X		; F5 1F
	jsr ($C9AF.w,X)		; FC AF C9
	brk $0C.b		; 00 0C
	sei		; 78
	jmp ($F1FE.w,X)		; 7C FE F1
	sbc $3000.w,X		; FD 00 30
	cpy #$FC.b		; C0 FC
	sta $E3.b,S		; 83 E3
	beq -124.b		; F0 84
	sed		; F8
	inc $F16D.w,X		; FE 6D F1
	bra  64.b		; 80 40
	inc $3060.w,X		; FE 60 30
	php		; 08
	cpy #$FE.b		; C0 FE
	bvs -32.b		; 70 E0
	inc $F25C.w,X		; FE 5C F2
	bmi  12.b		; 30 0C
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	ldy #$40.b		; A0 40
	inc $6090.w,X		; FE 90 60
	cpx #$11.b		; E0 11
	inc $B8AE.w,X		; FE AE B8
	jsr ($070F.w,X)		; FC 0F 07
	asl A		; 0A
	jsr ($07C0.w,X)		; FC C0 07
	inc $08F6.w,X		; FE F6 08
	jsr ($0708.w,X)		; FC 08 07
	tsb $FC07.w		; 0C 07 FC
	sed		; F8
	ora $38D5FE.l		; 0F FE D5 38
	sbc $F7E6FE.l		; EF FE E6 F7
	ldx $B7.b		; A6 B7
	ldx $4287.w		; AE 87 42
	inc $B6F7.w,X		; FE F7 B6
	lda $79FFFE.l,X		; BF FE FF 79
	cmp ($0A.b),Y		; D1 0A
	eor $9874.w,Y		; 59 74 98
	inc $FCFA.w,X		; FE FA FC
	ora $8FFEC7.l		; 0F C7 FE 8F
	eor [$86.b]		; 47 86
	pld		; 2B
	inc $57AA.w,X		; FE AA 57
	jsr ($438B.w,X)		; FC 8B 43
	sed		; F8
	bit $FEC9.w,X		; 3C C9 FE
	jsr ($BD40.w,X)		; FC 40 BD
	tsb $FC.b		; 04 FC
	jsr ($FB00.w,X)		; FC 00 FB
	sta ($E1.b,S),Y		; 93 E1
	ora ($80.b,X)		; 01 80
	sta ($DA.b,X)		; 81 DA
	sbc $54FCFE.l,X		; FF FE FC 54
	pea $F15A.w		; F4 5A F1
	bra  -2.b		; 80 FE
	jsr ($6070.w,X)		; FC 70 60
	bcs  32.b		; B0 20
	bvs -96.b		; 70 A0
	pla		; 68
	ldy #$3F.b		; A0 3F
	dec $D8.b		; C6 D8
	bne 104.b		; D0 68
	brk $B8.b		; 00 B8
	bmi  -8.b		; 30 F8
	asl $FED0.w		; 0E D0 FE
	xce		; FB
	rol A		; 2A
	cld		; D8
	sed		; F8
	plp		; 28
	stz $C8E9.w		; 9C E9 C8
	sed		; F8
	php		; 08
	sed		; F8
	and $0FA0.w,Y		; 39 A0 0F
	php		; 08
	inc $FEFE.w,X		; FE FE FE
	sbc $0CB4.w		; ED B4 0C
	jmp ($FE7E.w,X)		; 7C 7E FE
	inc $5F5E.w,X		; FE 5E 5F
	tsb $FC82.w		; 0C 82 FC
	cmp [$4C.b]		; C7 4C
	inc $A1FE.w,X		; FE FE A1
	inc $FF02.w,X		; FE 02 FF
	ora $FE.b,S		; 03 FE
	pld		; 2B
	.db $62, $FF, $06		; 62 FF 06
	asl $59.b		; 06 59
	txs		; 9A
	cpx #$EA.b		; E0 EA
	inc $0578.w,X		; FE 78 05
	adc $75.b		; 65 75
	cpy #$F6.b		; C0 F6
	inc $DA.b,X		; F6 DA
	inc $F8F0.w,X		; FE F0 F8
	clc		; 18
	lda $F10EE0.l,X		; BF E0 0E F1
	inc $F078.w,X		; FE 78 F0
	clc		; 18
	stx $FE.b		; 86 FE
	jmp ($FEF8.w,X)		; 7C F8 FE
	inc $FEFC.w,X		; FE FC FE
	ora $EAEB86.l,X		; 1F 86 EB EA
	xce		; FB
	nop		; EA
	dey		; 88
	bvs  -2.b		; 70 FE
	sty $78.b		; 84 78
	inc $1061.w,X		; FE 61 10
	cop $FC.b		; 02 FC
	inc $FE15.w,X		; FE 15 FE
	inc $F2AC.w,X		; FE AC F2
	lsr $FE69.w,X		; 5E 69 FE
	ora $1F07.w		; 0D 07 1F
	ora $ACFCFE.l		; 0F FE FC AC
	sbc ($FE.b)		; F2 FE
	bpl  15.b		; 10 0F
	sbc $FCFEFF.l,X		; FF FF FE FC
	clv		; B8
	lda ($F4.b),Y		; B1 F4
	sbc $FC.b,X		; F5 FC
	sbc $FF54.w,X		; FD 54 FF
	inc $DEFD.w,X		; FE FD DE
	sbc $FEAD.w,X		; FD AD FE
	lda $FEEDF0.l,X		; BF F0 ED FE
	eor $FF1BFF.l,X		; 5F FF 1B FF
	ora ($9C.b,S),Y		; 13 9C
	sbc ($FC.b),Y		; F1 FC
	and ($DF.b,S),Y		; 33 DF
	eor ($0F.b,S),Y		; 53 0F
	lda $93BF.w,X		; BD BF 93
	adc $FE432B.l,X		; 7F 2B 43 FE
	rtl		; 6B

	inc $67FF.w,X		; FE FF 67
	eor $FC.b,S		; 43 FC
	tsx		; BA
	inc $F1AC.w		; EE AC F1
	inc $0BF8.w,X		; FE F8 0B
	tay		; A8
	inc $C0.b,X		; F6 C0
	cmp ($FE.b,X)		; C1 FE
	jsr ($F6A8.w,X)		; FC A8 F6
	ora ($C0.b,X)		; 01 C0
	inc $F8FC.w,X		; FE FC F8
	pea $F05F.w		; F4 5F F0
	inc $C0C8.w,X		; FE C8 C0
	bit $F430.w,X		; 3C 30 F4
	beq -92.b		; F0 A4
	beq  -4.b		; F0 FC
	ldx $FAF1.w		; AE F1 FA
	clc		; 18
	inc $F838.w,X		; FE 38 F8
	cpy $0CFC.w		; CC FC 0C
	inc $5404.w,X		; FE 04 54
	sbc $F0A2FE.l,X		; FF FE A2 F0
	phd		; 0B
	txs		; 9A
	sbc #$A4.b		; E9 A4
	beq  11.b		; F0 0B
	txs		; 9A
	nop		; EA
	ror $5E5F.w,X		; 7E 5F 5E
	adc $7F5756.l,X		; 7F 56 57 7F
	clc		; 18
	inc $57.b,X		; F6 57
	adc $FE01.w,X		; 7D 01 FE
	ror $7EAA.w,X		; 7E AA 7E
	jsr ($FEA1.w,X)		; FC A1 FE
	.db $62, $A9, $FE		; 62 A9 FE
	lda #$FE.b		; A9 FE
	inc $D1F1.w,X		; FE F1 D1
	inc $BF06.w,X		; FE 06 BF
	sta $FF.b,S		; 83 FF
	sed		; F8
	asl A		; 0A
	ora $0F0D.w		; 0D 0D 0F
	ora $0305.w		; 0D 05 03
	inc $09F8.w,X		; FE F8 09
	asl A		; 0A
	ora [$FE.b]		; 07 FE
	inc $BE3F.w,X		; FE 3F BE
	dey		; 88
	ora $0F88AF.l		; 0F AF 88 0F
	xba		; EB
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
	bra   2.b		; 80 02
	jsr ($65FE.w,X)		; FC FE 65
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $ED.b		; 00 ED
	ora $FF00.w,Y		; 19 00 FF
	sed		; F8
	eor [$01.b]		; 47 01
	inc $0CF8.w,X		; FE F8 0C
	tsb $00.b		; 04 00
	asl $FE.b		; 06 FE
	jsr $F856.w		; 20 56 F8
	inc $F005.w,X		; FE 05 F0
	eor ($FE.b,X)		; 41 FE
	sbc $55FEDE.l,X		; FF DE FE 55
	eor ($EE.b,X)		; 41 EE
	sed		; F8
	ora $09F8F0.l		; 0F F0 F8 09
	jmp.w [$19F8]		; DC F8 19
	ldx #$F8.b		; A2 F8
	ora $47F8FE.l		; 0F FE F8 47
	bcs -96.b		; B0 A0
	sed		; F8
	ora $5A41.w		; 0D 41 5A
	inc $15F8.w,X		; FE F8 15
	sec		; 38
	bne  -8.b		; D0 F8
	ora #$2C.b		; 09 2C
	ora ($40.b,X)		; 01 40
	inc $0AF8.w,X		; FE F8 0A
	adc $95.b		; 65 95
	phx		; DA
	inc $F8EC.w,X		; FE EC F8
	ora ($FE.b,S),Y		; 13 FE
	cpy #$F0.b		; C0 F0
	and $D0.b		; 25 D0
	sbc ($52.b)		; F2 52
	sed		; F8
	and ($D4.b,X)		; 21 D4
	tax		; AA
	inc $F84E.w,X		; FE 4E F8
	and $FE.b,S		; 23 FE
	sed		; F8
	and $8E.b		; 25 8E
	sed		; F8
	asl A		; 0A
	rti		; 40

	tay		; A8
	sed		; F8
	asl A		; 0A
	sec		; 38
	sed		; F8
	ora $2AF814.l		; 0F 14 F8 2A
	lda ($AD.b),Y		; B1 AD
	inc $2DF8.w,X		; FE F8 2D
	ora #$FE.b		; 09 FE
	php		; 08
	inc $0CF8.w,X		; FE F8 0C
	cop $0E.b		; 02 0E
	sed		; F8
	ora $FE40.w		; 0D 40 FE
	sed		; F8
	ora ($B1.b)		; 12 B1
	dec $E6.b		; C6 E6
	sed		; F8
	asl $FE04.w		; 0E 04 FE
	ora $7A.b		; 05 7A
	sed		; F8
	bpl -62.b		; 10 C2
	inc $FE45.w		; EE 45 FE
	sta ($2A.b)		; 92 2A
	ora $FE.b		; 05 FE
	sbc $FEF4.w,X		; FD F4 FE
	jsr ($F8EE.w,X)		; FC EE F8
	ora [$F0.b],Y		; 17 F0
	sed		; F8
	ora #$EE.b		; 09 EE
	sed		; F8
	ora $9451.w,Y		; 19 51 94
	cpx $48A6.w		; EC A6 48
	inc $F848.w,X		; FE 48 F8
	ora #$28.b		; 09 28
	ldx $F2.b,Y		; B6 F2
	inc $FE49.w,X		; FE 49 FE
	rti		; 40

	phy		; 5A
	sbc ($44.b,S),Y		; F3 44
	tsx		; BA
	lda ($FE.b)		; B2 FE
	sed		; F8
	asl $F444.w		; 0E 44 F4
	inc $1BF8.w,X		; FE F8 1B
	cop $40.b		; 02 40
	inc $0CF8.w,X		; FE F8 0C
	pea $FEF1.w		; F4 F1 FE
	tax		; AA
	tax		; AA
	cpx $11F8.w		; EC F8 11
	cld		; D8
	sed		; F8
	ora $FE.b,X		; 15 FE
	sed		; F8
	lsr A		; 4A
	sty $E8.b,X		; 94 E8
	ora #$DE.b		; 09 DE
	sbc $F87E.w		; ED 7E F8
	tas		; 1B
	inc $15F8.w		; EE F8 15
	jmp $040DF8.l		; 5C F8 0D 04
	tax		; AA
	phx		; DA
	sbc $AEFF.w,X		; FD FF AE
	sta ($D8.b)		; 92 D8
	phk		; 4B
	inc $5FF8.w,X		; FE F8 5F
	pla		; 68
	sed		; F8
	and $FF559A.l,X		; 3F 9A 55 FF
	sed		; F8
	ora $F04C.w,Y		; 19 4C F0
	tad		; 5B
	pha		; 48
	inc $42.b,X		; F6 42
	inc $F8DA.w,X		; FE DA F8
	phd		; 0B
	inc $ECFC.w		; EE FC EC
	sed		; F8
	ora #$55.b		; 09 55
	eor $F0.b,X		; 55 F0
	inc $FEEE.w,X		; FE EE FE
	beq  -8.b		; F0 F8
	ora #$EC.b		; 09 EC
	jsr ($F8F0.w,X)		; FC F0 F8
	ora $F8B4.w		; 0D B4 F8
	ora $F8FE.w		; 0D FE F8
	eor $FF.b		; 45 FF
	sed		; F8
	ora $D8AD55.l		; 0F 55 AD D8
	cpx #$21.b		; E0 21
	jsl $E8A2FC.l		; 22 FC A2 E8
	ora $D0E0.w		; 0D E0 D0
	phd		; 0B
	cmp ($F8.b)		; D2 F8
	ora ($84.b,S),Y		; 13 84
	beq  61.b		; F0 3D
	asl A		; 0A
	inc $16F8.w,X		; FE F8 16
	tax		; AA
	tax		; AA
	inc A		; 1A
	dec $F8FE.w		; CE FE F8
	phd		; 0B
	dec $FECE.w		; CE CE FE
	sed		; F8
	ora $E8AA.w,Y		; 19 AA E8
	and $A8.b		; 25 A8
	sed		; F8
	ora $0BF8FE.l		; 0F FE F8 0B
	pha		; 48
	dec $2A.b,X		; D6 2A
	cli		; 58
	lda ($F0.b)		; B2 F0
	ora [$36.b],Y		; 17 36
	iny		; C8
	tas		; 1B
	cpy $F3.b		; C4 F3
	dex		; CA
	inx		; E8
	tsb $28FE.w		; 0C FE 28
	bne   9.b		; D0 09
	ora $B2.b		; 05 B2
	cmp ($55.b),Y		; D1 55
	eor $F4.b,X		; 55 F4
	dex		; CA
	sbc ($CF.b)		; F2 CF
	asl $D0.b,X		; 16 D0
	ora ($EE.b),Y		; 11 EE
	sed		; F8
	phd		; 0B
	cop $D0.b		; 02 D0
	plp		; 28
	beq -16.b		; F0 F0
	tas		; 1B
	inc $3DF8.w,X		; FE F8 3D
	rol A		; 2A
	sed		; F8
	ora ($55.b,S),Y		; 13 55
	eor $BA.b,X		; 55 BA
	iny		; C8
	ora #$50.b		; 09 50
	cmp $00.b		; C5 00
	sed		; F8
	tsb $D098.w		; 0C 98 D0
	plp		; 28
	txs		; 9A
	cpx #$16.b		; E0 16
	inc $09F8.w,X		; FE F8 09
	sbc ($E0.b)		; F2 E0
	adc ($D8.b,X)		; 61 D8
	cld		; D8
	eor ($55.b),Y		; 51 55
	eor $C8.b,X		; 55 C8
	cld		; D8
	ora $78ECA4.l,X		; 1F A4 EC 78
	iny		; C8
	eor [$38.b],Y		; 57 38
	bne  43.b		; D0 2B
	sbc ($E8.b)		; F2 E8
	and [$6C.b],Y		; 37 6C
	inx		; E8
	pld		; 2B
	sbc ($E0.b)		; F2 E0
	ora ($BC.b),Y		; 11 BC
	sed		; F8
	ora ($F5.b),Y		; 11 F5
	sta $FCF8FF.l,X		; 9F FF F8 FC
	sbc $DDFBF8.l,X		; FF F8 FB DD
	sbc #$03.b		; E9 03
	tas		; 1B
	ora [$65.b]		; 07 65
	asl $7886.w,X		; 1E 86 78
	sed		; F8
	sbc $07F238.l,X		; FF 38 F2 07
	brk $1F.b		; 00 1F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	inc $00FE.w,X		; FE FE 00
	mvp $EE,$DC		; 44 DC EE
	php		; 08
	sbc $1000FB.l,X		; FF FB 00 10
	inc $F5FD.w,X		; FE FD F5
	ora $FE1008.l,X		; 1F 08 10 FE
	jsr ($FEEF.w,X)		; FC EF FE
	sei		; 78
	bmi  20.b		; 30 14
	sec		; 38
	bit $1218.w		; 2C 18 12
	tsb $8F86.w		; 0C 86 8F
	inc $040A.w,X		; FE 0A 04
	inc $0006.w,X		; FE 06 00
	jsr ($7E00.w,X)		; FC 00 7E
	ora ($A0.b),Y		; 11 A0
	inc $FE3F.w,X		; FE 3F FE
	tsx		; BA
	inc $A40F.w,X		; FE 0F A4
	sbc $10C86B.l,X		; FF 6B C8 10
	inc $E275.w		; EE 75 E2
	sbc $0206FE.l,X		; FF FE 06 02
	ora $01.b,S		; 03 01
	sbc ($00.b),Y		; F1 00
	and $301E3F.l		; 2F 3F 1E 30
	eor $F3C1.w,X		; 5D C1 F3
	bmi  -4.b		; 30 FC
	tsb $01E2.w		; 0C E2 01
	ora $00.b,S		; 03 00
	inc $F0F0.w,X		; FE F0 F0
	and $3EC1C0.l,X		; 3F C0 C1 3E
	beq  15.b		; F0 0F
	jsr ($FFF5.w,X)		; FC F5 FF
	stz $42.b,X		; 74 42
	sbc $316BFC.l,X		; FF FC 6B 31
	ldx $D789.w		; AE 89 D7
	lsr $ED.b		; 46 ED
	sbc ($C7.b,X)		; E1 C7
	jmp ($8176.w)		; 6C 76 81
	tsa		; 3B
	and $8FC07F.l,X		; 3F 7F C0 8F
	bvs -57.b		; 70 C7
	sec		; 38
	sbc ($1E.b,X)		; E1 1E
	sbc ($FF.b),Y		; F1 FF
	inc $06.b		; E6 06
	adc $1801.w,Y		; 79 01 18
	stx $BF90.w		; 8E 90 BF
	bra  -2.b		; 80 FE
	eor $87DF40.l,X		; 5F 40 DF 87
	cmp $EF.b,S		; C3 EF
	asl $F9.b		; 06 F9
	ora ($49.b,X)		; 01 49
	sbc $FE7F80.l,X		; FF 80 7F FE
	rti		; 40

	tsb $A0.b		; 04 A0
	lda $34F3E0.l,X		; BF E0 F3 34
	and ($FC.b)		; 32 FC
	sbc ($FF.b)		; F2 FF
	inc $F5FC.w,X		; FE FC F5
	sed		; F8
	asl A		; 0A
	inc $80C1.w,X		; FE C1 80
	ror $41.b		; 66 41
	lda $DE26.w,Y		; B9 26 DE
	bpl -20.b		; 10 EC
	sbc $F608C3.l,X		; FF C3 08 F6
	tsb $FB.b		; 04 FB
	cop $FD.b		; 02 FD
	ora ($C1.b,X)		; 01 C1
	brk $67.b		; 00 67
	bra -126.b		; 80 82
	asl $FC3F.w,X		; 1E 3F FC
	cpx #$0C.b		; E0 0C
	beq   6.b		; F0 06
	sed		; F8
	ora $FC.b,S		; 03 FC
	ldy $41.b,X		; B4 41
	sbc ($40.b,X)		; E1 40
	.db $82, $06, $FF		; 82 06 FF
	sbc $060C03.l,X		; FF 03 0C 06
	clc		; 18
	tsb $1824.w		; 0C 24 18
	cli		; 58
	jsr $00F0.w		; 20 F0 00
	sbc ($00.b,X)		; E1 00
	rep #$01		; C2 01
	ora [$FF.b]		; 07 FF
	brk $00.b		; 00 00
	asl $1C00.w		; 0E 00 1C
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	brk $F0.b		; 00 F0
	adc $40FF78.l,X		; 7F 78 FF 40
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	inc $0E08.w		; EE 08 0E
	tsb $0F.b		; 04 0F
	trb $41.b		; 14 41
	ora ($F0.b),Y		; 11 F0
	sbc $9A30DA.l,X		; FF DA 30 9A
	beq   9.b		; F0 09
	cmp $FF.b,X		; D5 FF
	txa		; 8A
	beq  15.b		; F0 0F
	ora $D8.b		; 05 D8
	ora #$E4.b		; 09 E4
	sed		; F8
	ora $F8F0.w		; 0D F0 F8
	ora $0080.w		; 0D 80 00
	cpy #$80.b		; C0 80
	rts		; 60

	rti		; 40

	bcs  32.b		; B0 20
	sta $10D9F8.l		; 8F F8 D9 10
	sbc $5EF708.l		; EF 08 F7 5E
	beq   0.b		; F0 00
	rts		; 60

	bra  63.b		; 80 3F
	plx		; FA
	bmi -64.b		; 30 C0
	ora $0FE0.w,Y		; 19 E0 0F
	beq   7.b		; F0 07
	lsr $FCDA.w,X		; 5E DA FC
	ora ($0F.b,S),Y		; 13 0F
	stz $3183.w,X		; 9E 83 31
	adc $E6F008.l,X		; 7F 08 F0 E6
	sbc $251FFE.l,X		; FF FE 1F 25
	sed		; F8
	ora ($3C.b)		; 12 3C
	dec $FF.b,X		; D6 FF
	cli		; 58
	ora #$06.b		; 09 06
	ora [$01.b]		; 07 01
	eor ($40.b,X)		; 41 40
	ldy $FE72.w		; AC 72 FE
	adc $00F0.w		; 6D F0 00
	stp		; DB
	sed		; F8
	rol $FDF0.w,X		; 3E F0 FD
	ora ($A0.b,X)		; 01 A0
	inc $FED8.w,X		; FE D8 FE
	sbc ($5B.b),Y		; F1 5B
	inc $0476.w,X		; FE 76 04
	tda		; 7B
	ldy #$FF.b		; A0 FF
	clc		; 18
	inc $7CF6.w,X		; FE F6 7C
	cpx #$40.b		; E0 40
	sei		; 78
	jsr $FC5F.w		; 20 5F FC
	mvn $27,$38		; 54 38 27
	trb $1A.b		; 14 1A
	phd		; 0B
	beq  -3.b		; F0 FD
	tsb $7C.b		; 04 7C
	brk $37.b		; 00 37
	php		; 08
	sbc $041BFF.l,X		; FF FF 1B 04
	lda #$B0.b		; A9 B0
	cpx $9648.w		; EC 48 96
	mvp $22,$6B		; 44 6B 22
	and $11.b,X		; 35 11
	rol $10.b		; 26 10
	tas		; 1B
	php		; 08
	sbc $048DFF.l,X		; FF FF 8D 04
	lda $CC40.w,Y		; B9 40 CC
	bmi -58.b		; 30 C6
	sec		; 38
	adc $1C.b,S		; 63 1C
	and ($0E.b),Y		; 31 0E
	bmi  15.b		; 30 0F
	clc		; 18
	ora [$FF.b]		; 07 FF
	sbc $BD038C.l,X		; FF 8C 03 BD
	sta ($DE.b,X)		; 81 DE
	rti		; 40

	sta $206F40.l,X		; 9F 40 6F 20
	lda [$10.b],Y		; B7 10
	stp		; DB
	dey		; 88
	adc ($48.b,S),Y		; 73 48
	ora $34BDFE.l,X		; 1F FE BD 34
	sta ($7E.b,X)		; 81 7E
	cpy #$3F.b		; C0 3F
	inc $1F60.w,X		; FE 60 1F
	bcs  15.b		; B0 0F
	cld		; D8
	ora [$F7.b]		; 07 F7
	inc $8778.w,X		; FE 78 87
	bit $D0C3.w,X		; 3C C3 D0
	sbc ($40.b),Y		; F1 40
	jsr $F720.w		; 20 20 F7
	lda $2804.w,Y		; B9 04 28
	pla		; 68
	rts		; 60

	cpx #$71.b		; E0 71
	bra -126.b		; 80 82
.ACCU 16
.INDEX 16
	rep #$F0		; C2 F0
	bmi  32.b		; 30 20
	adc $5FF1.w,X		; 7D F1 5F
	ora $08.b,X		; 15 08
	pla		; 68
	bpl -32.b		; 10 E0
	ora ($C2.b,X)		; 01 C2
	cmp #$10F0.w		; C9 F0 10
	lsr $FC.b		; 46 FC
	ldy $30F6.w,X		; BC F6 30
	sbc ($7E.b),Y		; F1 7E
	rol $C0FF.w,X		; 3E FF C0
	bmi  56.b		; 30 38
	asl $031F.w		; 0E 1F 03
	sbc [$3C.b]		; E7 3C
	jsr ($82C1.w,X)		; FC C1 82
	brk $08.b		; 00 08
	nop		; EA
	.db $82, $EA, $EF		; 82 EA EF
	sbc $FCF8FF.l,X		; FF FF F8 FC
	ora $68.b,S		; 03 68
	beq  36.b		; F0 24
	pla		; 68
	ora $36.b,X		; 15 36
	ora #$8019.w		; 09 19 80
	inx		; E8
	ldy $BC.b		; A4 BC
	jmp $87F0.w		; 4C F0 87
	cpy $FCDE.w		; CC DE FC
	brk $EF.b		; 00 EF
	bpl 119.b		; 10 77
	php		; 08
	sbc $0F25.w,Y		; F9 25 0F
	sbc $43BC07.l,X		; FF 07 BC 43
	cpy $DD33.w		; CC 33 DD
	and ($61.b,X)		; 21 61
	bpl  48.b		; 10 30
	bmi  16.b		; 30 10
	pha		; 48
	eor $C8983F.l		; 4F 3F 98 C8
	sed		; F8
	clc		; 18
	clc		; 18
	lda ($E1.b,S),Y		; B3 E1
	asl $0F70.w,X		; 1E 70 0F
	beq  15.b		; F0 0F
	cpy #$E2FE.w		; C0 FE E2
	inc $E718.w,X		; FE 18 E7
	dec $80EB.w,X		; DE EB 80
	ldy #$60C0.w		; A0 C0 60
	bvs  23.b		; 70 17
	ldx $1810.w,Y		; BE 10 18
	asl A		; 0A
	tsb $F4BB.w		; 0C BB F4
	asl $F1.b		; 06 F1
	brk $7F.b		; 00 7F
	bra  31.b		; 80 1F
	rol $821C.w,X		; 3E 1C 82
	sbc ($96.b,S),Y		; F3 96
	nop		; EA
	bmi  12.b		; 30 0C
	pha		; 48
	bmi -20.b		; 30 EC
	sta ($00.b,X)		; 81 00
	cop $7E.b		; 02 7E
	tsb $E3.b		; 04 E3
	cop $06.b		; 02 06
	bra -92.b		; 80 A4
	cpy #$803C.w		; C0 3C 80
	beq  56.b		; F0 38
	sec		; 38
	ply		; 7A
	sta $00.b,S		; 83 00
	sta [$96.b]		; 87 96
	ldx $80E1.w,Y		; BE E1 80
	bra -64.b		; 80 C0
	jsr $20CC.w		; 20 CC 20
	jsr $BB60.w		; 20 60 BB
	lda [$F1.b]		; A7 F1
	sep #$01		; E2 01
	pea $10FD.w		; F4 FD 10
	jsr $F310.w		; 20 10 F3
	php		; 08
	eor $DC.b,X		; 55 DC
	sbc ($F2.b),Y		; F1 F2
	pea $0BB0.w		; F4 B0 0B
	ora $F3.b		; 05 F3
	bra -15.b		; 80 F1
	sta $C2.b		; 85 C2
	cpy #$C2E9.w		; C0 E9 C2
	nop		; EA
	rol $D703.w,X		; 3E 03 D7
	inc $70EB.w		; EE EB 70
	ora $182000.l,X		; 1F 00 20 18
	tsb $0E.b		; 04 0E
	cop $07.b		; 02 07
	inc $A2EF.w		; EE EF A2
	sbc $9AF0F3.l,X		; FF F3 F0 9A
	txs		; 9A
	sep #$0F		; E2 0F
	brk $A0.b		; 00 A0
	bcs  84.b		; B0 54
	cld		; D8
	bit $C3.b		; 24 C3
	beq 102.b		; F0 66
	ora ($33.b)		; 12 33
	asl $0C04.w,X		; 1E 04 0C
	adc $BC0381.l,X		; 7F 81 03 BC
	sbc $DE400F.l,X		; FF 0F 40 DE
	jsr $18E7.w		; 20 E7 18
	adc ($0C.b,S),Y		; 73 0C
	and $1C06.w,Y		; 39 06 1C
	ora $8E.b,S		; 03 8E
	ora ($FE.b,X)		; 01 FE
	cmp ($3D.b,X)		; C1 3D
	tsx		; BA
	inc $C080.w		; EE 80 C0
	rti		; 40

	rts		; 60

	plp		; 28
	bmi  24.b		; 30 18
	lda #$ECAC.w		; A9 AC EC
	adc ($F0.b),Y		; 71 F0
	brk $E3.b		; 00 E3
	dec A		; 3A
	and $7A38C0.l,X		; 3F C0 38 7A
	sbc $01.b		; E5 01
	and $802B.w,Y		; 39 2B 80
	ora [$F6.b]		; 07 F6
	php		; 08
	adc $F8.b,X		; 75 F8
	ora #$F2C4.w		; 09 C4 F2
	mvp $0F,$9A		; 44 9A 0F
	beq  96.b		; F0 60
	jsr ($1010.w,X)		; FC 10 10
	pla		; 68
	inx		; E8
	cpy #$0E1F.w		; C0 1F 0E
	asl $7C10.w,X		; 1E 10 7C
	bit $F038.w,X		; 3C 38 F0
	tsb $10E8.w		; 0C E8 10
	sbc ($02.b),Y		; F1 02
	asl $7B00.w,X		; 1E 00 7B
	asl $F1.b,X		; 16 F1
	and ($E8.b),Y		; 31 E8
	tsb $0010.w		; 0C 10 00
	tsb $4748.w		; 0C 48 47
	beq  13.b		; F0 0D
	adc $E08260.l,X		; 7F 60 82 E0
	jsr $1470.w		; 20 70 14
	sec		; 38
	tsb $33CD.w		; 0C CD 33
	brk $41.b		; 00 41
	bit #$D6A4.w		; 89 A4 D6
	phx		; DA
	rol $E3D1.w,X		; 3E D1 E3
	rol A		; 2A
	trb $CB.b		; 14 CB
	asl $CB.b		; 06 CB
	jsr ($70E6.w,X)		; FC E6 70
	lsr $A4E9.w,X		; 5E E9 A4
	ora $EA5CD9.l,X		; 1F D9 5C EA
	sbc $BF7FEB.l		; EF EB 7F BF
	and $86BF3F.l,X		; 3F 3F BF 86
	ora ($FB.b,X)		; 01 FB
	sbc $3FFDBF.l,X		; FF BF FD 3F
	adc $3FD4FF.l,X		; 7F FF D4 3F
	dec $E230.w		; CE 30 E2
	inc $61FC.w,X		; FE FC 61
	sbc ($1C.b)		; F2 1C
	cpx #$FC03.w		; E0 03 FC
	ora $186FC3.l,X		; 1F C3 6F 18
	cmp ($9E.b,S),Y		; D3 9E
	ora $3EE9.w		; 0D E9 3E
	sbc $FFFF.w,X		; FD FF FF
	cpx #$FFC7.w		; E0 C7 FF
	sbc $7FFF9F.l,X		; FF 9F FF 7F
	sed		; F8
	cmp ($C1.b,X)		; C1 C1
	brk $6E.b		; 00 6E
	eor ($58.b,X)		; 41 58
	eor [$C3.b]		; 47 C3
	sbc $8011.w,Y		; F9 11 80
	bra -45.b		; 80 D3
	rts		; 60

	ora $E601E6.l,X		; 1F E6 01 E6
	sta $B754.w,Y		; 99 54 B7
	phx		; DA
	sbc $D2E2D7.l,X		; FF D7 E2 D2
	cmp $D8F0.w,Y		; D9 F0 D8
	ora #$F75D.w		; 09 5D F7
	sbc $E510F8.l,X		; FF F8 10 E5
	sbc $C01FE7.l,X		; FF E7 1F C0
	stp		; DB
	sbc $3F0EF8.l,X		; FF F8 0E 3F
	sbc ($E2.b),Y		; F1 E2
	jsr ($7C9F.w,X)		; FC 9F 7C
	eor #$FF96.w		; 49 96 FF
	ora [$F8.b]		; 07 F8
	sta $45FFE1.l,X		; 9F E1 FF 45
	cmp $47F7.w,Y		; D9 F7 47
	sed		; F8
	jsr ($7AC7.w,X)		; FC C7 7A
	nop		; EA
	and $3CFFF3.l,X		; 3F F3 FF 3C
	beq -64.b		; F0 C0
	plx		; FA
	ora ($FB.b,X)		; 01 FB
	dec $22F5.w		; CE F5 22
	pei ($0F.b)		; D4 0F
.INDEX 8
	sep #$DB		; E2 DB
	sbc $570FF3.l,X		; FF F3 0F 57
	sta $F3ECFC.l,X		; 9F FC EC F3
	beq -10.b		; F0 F6
	sbc ($D4.b),Y		; F1 D4
	sbc #$FCCC.w		; E9 CC FC
	trb $F303.w		; 1C 03 F3
	tsb $F7F0.w		; 0C F0 F7
	sta $68.b		; 85 68
	brk $78.b		; 00 78
	cpx #$C7.b		; E0 C7
	brk $33.b		; 00 33
	cld		; D8
	sbc ($FC.b),Y		; F1 FC
	brk $10.b		; 00 10
	ror $41E0.w,X		; 7E E0 41
	trb $18E0.w		; 1C E0 18
	ora [$C7.b]		; 07 C7
	sec		; 38
	and $11EECF.l,X		; 3F CF EE 11
	tas		; 1B
	ora $9CF242.l,X		; 1F 42 F2 9C
	ora $F1.b,S		; 03 F1
	ldy $01E1.w,X		; BC E1 01
	pea $0FAC.w		; F4 AC 0F
	beq 112.b		; F0 70
	inc $0A20.w,X		; FE 20 0A
	ora #$0F08.w		; 09 08 0F
	eor [$FC.b]		; 47 FC
	sbc ($F0.b),Y		; F1 F0
	sta $E45519.l,X		; 9F 19 55 E4
	plp		; 28
	ldx $F128.w,Y		; BE 28 F1
	rol $F8.b		; 26 F8
	phd		; 0B
	eor $59FC.w,X		; 5D FC 59
	eor ($08.b,X)		; 41 08
	inc $C686.w,X		; FE 86 C6
	sbc ($05.b),Y		; F1 05
	sed		; F8
	tsb $E0C5.w		; 0C C5 E0
	sed		; F8
	asl $5D75.w		; 0E 75 5D
	sbc $F0.b		; E5 F0
	asl $D0B0.w		; 0E B0 D0
	ora #$F4E4.w		; 09 E4 F4
	sbc $F8E1FC.l,X		; FF FC E1 F8
	phd		; 0B
	cpx #$F8.b		; E0 F8
	ora #$C03F.w		; 09 3F C0
	rti		; 40

	inc $4149.w,X		; FE 49 41
	sbc ($F8.b,X)		; E1 F8
	ora #$E040.w		; 09 40 E0
	inc $FE40.w,X		; FE 40 FE
	jmp ($F8E0.w)		; 6C E0 F8
	ora #$5492.w		; 09 92 54
	rti		; 40

	ldy #$F8.b		; A0 F8
	phd		; 0B
	rti		; 40

	dec $40F1.w,X		; DE F1 40
	sed		; F8
	tsb $F046.w		; 0C 46 F0
	ora #$03AA.w		; 09 AA 03
	.db $82, $7F, $D0		; 82 7F D0
	sbc ($60.b),Y		; F1 60
	sed		; F8
	phd		; 0B
	adc $F9F180.l,X		; 7F 80 F1 F9
	dex		; CA
	ldy $FEFE.w,X		; BC FE FE
	jsr ($8703.w,X)		; FC 03 87
	ror $D07A.w,X		; 7E 7A D0
	ora $1FE9F5.l		; 0F F5 E9 1F
	pei ($E4.b)		; D4 E4
	sbc $0A.b,X		; F5 0A
	txa		; 8A
	adc $79425F.l,X		; 7F 5F 42 79
	sbc ($FF.b)		; F2 FF
	sbc $FFF2DF.l,X		; FF DF F2 FF
	beq  -1.b		; F0 FF
	cpy #$AA.b		; C0 AA
	adc $E201FE.l,X		; 7F FE 01 E2
	ora $C7D857.l,X		; 1F 57 D8 C7
	sbc $E10578.l,X		; FF 78 05 E1
	sbc $80.b,S		; E3 80
	cmp $F609F8.l,X		; DF F8 09 F6
	cmp $ABFCF2.l,X		; DF F2 FC AB
	sbc $5FD9F0.l,X		; FF F0 D9 5F
	stx $E6.b,Y		; 96 E6
	sbc $F319.w,X		; FD 19 F3
	cpx #$EE.b		; E0 EE
	bra -42.b		; 80 D6
	tsx		; BA
	.db $42, $02		; 42 02
	sei		; 78
	sbc $9C.b,X		; F5 9C
	cmp ($1F.b),Y		; D1 1F
	inc $C880.w,X		; FE 80 C8
	asl A		; 0A
	pea $0EC8.w		; F4 C8 0E
	rts		; 60

	and $8A4100.l,X		; 3F 00 41 8A
	asl A		; 0A
	cpx #$F8.b		; E0 F8
	asl A		; 0A
	txa		; 8A
	pld		; 2B
	cmp $93.b,X		; D5 93
	tay		; A8
	ror $E3F5.w		; 6E F5 E3
	bit $FFE0.w		; 2C E0 FF
	ldx $6B.b		; A6 6B
	sbc ($05.b),Y		; F1 05
	ply		; 7A
	sbc $8309F8.l,X		; FF F8 09 83
	tas		; 1B
	wai		; CB
	rol $98.b		; 26 98
	sbc $E703.w,X		; FD 03 E7
	asl $5FF5.w,X		; 1E F5 5F
	php		; 08
	nop		; EA
	dec $0DD0.w,X		; DE D0 0D
	and $FFF3.w,Y		; 39 F3 FF
	sbc ($0F.b),Y		; F1 0F
	eor $27BFCA.l		; 4F CA BF 27
	cpx #$C0.b		; E0 C0
	pea $827E.w		; F4 7E 82
	cpx $0D.b		; E4 0D
	bmi -65.b		; 30 BF
	rti		; 40

	rti		; 40

	inc $48FF.w,X		; FE FF 48
	inc $E6.b		; E6 E6
	cmp $00B191.l,X		; DF 91 B1 00
	lda $22DF00.l		; AF 00 DF 22
	adc $E7E150.l,X		; 7F 50 E1 E7
	ora $205F.w,Y		; 19 5F 20
	lda $29BF4F.l,X		; BF 4F BF 29
	cld		; D8
.INDEX 8
	sep #$D3		; E2 D3
	cpy #$0A.b		; C0 0A
	plp		; 28
	phd		; 0B
	stz $E0C7.w,X		; 9E C7 E0
	beq  12.b		; F0 0C
	rts		; 60

	ldx $F5.b		; A6 F5
	ora [$95.b]		; 07 95
	jsr ($2BD5.w,X)		; FC D5 2B
	pld		; 2B
	adc [$01.b],Y		; 77 01
	inc $FDFF.w		; EE FF FD
	bvs -23.b		; 70 E9
	sbc $FFFC17.l,X		; FF 17 FC FF
	sbc $63B3.w,X		; FD B3 63
	jmp ($DBC8.w)		; 6C C8 DB
	bpl  23.b		; 10 17
	bpl 106.b		; 10 6A
	jsr ($E1FE.w,X)		; FC FE E1
	trb $0C13.w		; 1C 13 0C
	and $27DF13.l		; 2F 13 DF 27
	ora $7CE4EF.l,X		; 1F EF E4 7C
	sbc [$7F.b]		; E7 7F
	ldy #$FF.b		; A0 FF
	tda		; 7B
	dec $BB87.w		; CE 87 BB
	sta ($7B.b,X)		; 81 7B
	ora ($08.b,X)		; 01 08
	ror $BE.b		; 66 BE
	sbc $F90018.l,X		; FF 18 00 F9
	jsr ($FE30.w,X)		; FC 30 FE
	jmp ($ECB4.w,X)		; 7C B4 EC
	ora $76F1.w,Y		; 19 F1 76
	cpx #$6B.b		; E0 6B
	cpy #$E7.b		; C0 E7
	ora $DBA0FF.l,X		; 1F FF A0 DB
	bvc  61.b		; 50 3D
	jsr $E047.w		; 20 47 E0
	ora #$1706.w		; 09 06 17
	ora #$172F.w		; 09 2F 17
	eor $1F6F58.l,X		; 5F 58 6F 1F
	cmp $C33F24.l,X		; DF 24 3F C3
	rol $E1.b,X		; 36 E1
	sbc $9F00.w,X		; FD 00 9F
	dex		; CA
	sbc ($B0.b,X)		; E1 B0
	rol $F7FE.w,X		; 3E FE F7
	sbc $E3067F.l		; EF 7F 06 E3
	sbc $55AAFF.l,X		; FF FF AA 55
	eor $AA.b,X		; 55 AA
	tay		; A8
	pea $65FC.w		; F4 FC 65
	sbc $7F.b,S		; E3 7F
	beq   9.b		; F0 09
	sbc $E00AF8.l,X		; FF F8 0A E0
	tay		; A8
	eor [$FF.b],Y		; 57 FF
	lsr A		; 4A
	rol $F0.b		; 26 F0
	cpx #$F8.b		; E0 F8
	ora $C048.w		; 0D 48 C0
	ora #$5EE0.w		; 09 E0 5E
	sbc ($FF.b),Y		; F1 FF
	tsa		; 3B
	eor $D5.b,X		; 55 D5
	cpx #$FE.b		; E0 FE
	bit $E6.b		; 24 E6
	cpx #$FC.b		; E0 FC
	ldy $D9E1.w		; AC E1 D9
.ACCU 8
	sep #$E0		; E2 E0
	sed		; F8
	asl A		; 0A
	lsr A		; 4A
	xba		; EB
	bpl -66.b		; 10 BE
	eor [$08.b],Y		; 57 08
	inc $1CFC.w,X		; FE FC 1C
	ora $2A.b,S		; 03 2A
	xba		; EB
	cpx #$FC.b		; E0 FC
	tsb $FC.b		; 04 FC
	jsr $F157.w		; 20 57 F1
	bcs -64.b		; B0 C0
	sbc $E0C0E2.l,X		; FF E2 C0 E0
	sed		; F8
	ora #$E2.b		; 09 E2
	jsr ($AD1F.w,X)		; FC 1F AD
	cpx #$F8.b		; E0 F8
	ora #$01.b		; 09 01
	ora ($FC.b,X)		; 01 FC
	cpy #$63.b		; C0 63
	cpy #$F8.b		; C0 F8
	ora #$FE.b		; 09 FE
	cmp ($E9.b)		; D2 E9
	asl $E81A.w		; 0E 1A E8
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	sbc $C0E7.w,X		; FD E7 C0
	asl $B2.b		; 06 B2
	cmp $D840.w,Y		; D9 40 D8
	ora #$1F.b		; 09 1F
	plb		; AB
	tax		; AA
	cmp $F0.b,X		; D5 F0
	cpx #$F8.b		; E0 F8
	ora #$2B.b		; 09 2B
	cmp $EB35.w,X		; DD 35 EB
	jsr $9EDF.w		; 20 DF 9E
	inx		; E8
	asl A		; 0A
	phb		; 8B
	jsr ($BEAA.w,X)		; FC AA BE
	cpy #$F8.b		; C0 F8
	asl A		; 0A
	cpx #$EF.b		; E0 EF
	jsr $0BF0.w		; 20 F0 0B
	cpx #$F8.b		; E0 F8
	tas		; 1B
	txy		; 9B
	sbc ($E0.b,X)		; E1 E0
	sbc $FD03.w,X		; FD 03 FD
	ora [$FA.b]		; 07 FA
	beq 127.b		; F0 7F
	cpx #$F8.b		; E0 F8
	phd		; 0B
	phb		; 8B
	ora [$00.b]		; 07 00
	ldx $7DF4.w		; AE F4 7D
	cpy $CD.b		; C4 CD
	iny		; C8
	lda [$80.b]		; A7 80
	eor $A2DFFF.l,X		; 5F FF DF A2
	sbc #$EF.b		; E9 EF
	rti		; 40

	sbc [$E0.b],Y		; F7 E0
	ora $033F01.l		; 0F 01 3F 03
	eor $5FBF33.l		; 4F 33 BF 5F
	rol $AFD1.w		; 2E D1 AF
	sbc $BF3F.w,X		; FD 3F BF
	ora $630F1F.l,X		; 1F 1F 0F 63
	sbc ($5F.b),Y		; F1 5F
	sbc ($54.b)		; F2 54
	stz $D9.b		; 64 D9
	ora $18.b,S		; 03 18
	php		; 08
	phk		; 4B
	cmp [$FC.b]		; C7 FC
	brk $55.b		; 00 55
	brk $AA.b		; 00 AA
	jsr ($93AB.w,X)		; FC AB 93
	xce		; FB
	ora [$CF.b]		; 07 CF
	sbc $8F375F.l,X		; FF 5F 37 8F
	sta [$1D.b]		; 87 1D
	clc		; 18
	and [$20.b],Y		; 37 20
	cmp $40DF40.l		; CF 40 DF 40
	sta $18F780.l		; 8F 80 F7 18
	pea $FFA3.w		; F4 A3 FF
	ldx $E2.b		; A6 E2
	and $F318FE.l,X		; 3F FE 18 F3
	tax		; AA
	rol A		; 2A
	sbc $9AF5.w,X		; FD F5 9A
	ora $8DF7EF.l		; 0F EF F7 8D
	ora [$F8.b]		; 07 F8
	brk $FD.b		; 00 FD
	adc ($C2.b),Y		; 71 C2
	brk $D5.b		; 00 D5
	brk $FA.b		; 00 FA
	dec A		; 3A
	phx		; DA
	beq -103.b		; F0 99
	lsr $E5.b		; 46 E5
	inc $A0E0.w,X		; FE E0 A0
	asl A		; 0A
	sbc $0F.b,S		; E3 0F
	sei		; 78
	rol A		; 2A
	cli		; 58
	cmp [$81.b]		; C7 81
	sbc $F5A07E.l,X		; FF 7E A0 F5
	plp		; 28
	sbc $F7.b,S		; E3 F7
	bvs  77.b		; 70 4D
	bra -128.b		; 80 80
	sbc $2815.w,X		; FD 15 28
	plp		; 28
	bra -38.b		; 80 DA
	iny		; C8
	cmp #$4F.b		; C9 4F
	sbc ($80.b,X)		; E1 80
	sbc $00EA.w,X		; FD EA 00
	cmp [$80.b],Y		; D7 80
	ora $80.b		; 05 80
	lda [$90.b],Y		; B7 90
	sta $507FD3.l		; 8F D3 7F 50
	sbc [$A0.b],Y		; F7 A0
	adc $80EF80.l		; 6F 80 EF 80
	cpx $837F.w		; EC 7F 83
	brk $0F.b		; 00 0F
	lda $9AFC07.l,X		; BF 07 FC 9A
	sbc ($80.b),Y		; F1 80
	sta ($82.b),Y		; 91 82
	jsr ($A0EF.w,X)		; FC EF A0
	eor ($01.b)		; 52 01
	jsr ($0FC2.w,X)		; FC C2 0F
	lda #$A8.b		; A9 A8
	asl $FFFE.w		; 0E FE FF
	cpx #$50.b		; E0 50
	brk $8E.b		; 00 8E
	dey		; 88
	lsr $DF0E.w,X		; 5E 0E DF
	sta [$62.b]		; 87 62
	xce		; FB
	ply		; 7A
	sbc $0EF101.l,X		; FF 01 F1 0E
	cmp $0FF0.w,Y		; D9 F0 0F
	sta $C7FA70.l		; 8F 70 FA C7
	adc $FB02FD.l		; 6F FD 02 FB
	tsb $E0.b		; 04 E0
	ora [$F7.b]		; 07 F7
	rts		; 60

	adc [$40.b]		; 67 40
	bcc -94.b		; 90 A2
	lda $FC92EC.l,X		; BF EC 92 FC
	cmp $0FEA36.l,X		; DF 36 EA 0F
	adc $FCCC44.l,X		; 7F 44 CC FC
	cmp $7F.b		; C5 7F
	bra -31.b		; 80 E1
	cld		; D8
	ldy #$E4.b		; A0 E4
	jsl $F702F3.l		; 22 F3 02 F7
	ora $ED.b		; 05 ED
	php		; 08
	sbc $FF82E7.l,X		; FF E7 82 FF
	rol A		; 2A
	and $FD.b		; 25 FD
	plx		; FA
	xce		; FB
	jsr ($F8FF.w,X)		; FC FF F8
	sbc $84BFF3.l,X		; FF F3 BF 84
	tda		; 7B
	bvs 125.b		; 70 7D
	pha		; 48
	ora $135F00.l		; 0F 00 5F 13
	lda #$BC.b		; A9 BC
	ora $87D4A8.l		; 0F A8 D4 87
	sbc $C3BF83.l,X		; FF 83 BF C3
	sbc $FCBC.w,X		; FD BC FC
	rts		; 60

	and $21.b,X		; 35 21
	jsr ($71FC.w,X)		; FC FC 71
	jsr ($7606.w,X)		; FC 06 76
	cld		; D8
	asl A		; 0A
	rol $E0E4.w		; 2E E4 E0
	inc $BC01.w,X		; FE 01 BC
	lda $BBCE87.l,X		; BF 87 CE BB
	ldy #$65.b		; A0 65
	cpx $F8.b		; E4 F8
	asl A		; 0A
	cmp $47BF30.l		; CF 30 BF 47
	adc $78DF9B.l,X		; 7F 9B DF 78
	cpx #$FE.b		; E0 FE
	sbc $1EBF.w,Y		; F9 BF 1E
	ora $F824E1.l		; 0F E1 24 F8
	ora $8040.w		; 0D 40 80
	sbc $F857A8.l,X		; FF A8 57 F8
	adc $9B.b,X		; 75 9B
	lda ($5F.b,X)		; A1 5F
	eor [$BE.b]		; 47 BE
	and ($A0.b)		; 32 A0
.INDEX 16
	rep #$DB		; C2 DB
	inc $BFFF.w,X		; FE FF BF
	eor $E0A1FD.l		; 4F FD A1 E0
	sbc ($5E.b),Y		; F1 5E
	sbc ($C1.b,S),Y		; F3 C1
	brk $0A.b		; 00 0A
	jsr ($F895.w,X)		; FC 95 F8
	clc		; 18
	adc $E4A80A.l		; 6F 0A A8 E4
	inc $D26E.w,X		; FE 6E D2
	bit $18EA.w,X		; 3C EA 18
	sbc $AAA22A.l,X		; FF 2A A2 AA
	jsr ($CB5F.w,X)		; FC 5F CB
	inc $40FE.w,X		; FE FE 40
	nop		; EA
	rol $0BE0.w,X		; 3E E0 0B
	sei		; 78
	lda $01FE.w,Y		; B9 FE 01
	lsr $0B81.w,X		; 5E 81 0B
	adc $EB02F4.l,X		; 7F F4 02 EB
	jsr $09D0.w		; 20 D0 09
	rol $3C.b,X		; 36 3C
	sbc $F7FFC9.l,X		; FF C9 FF F7
	eor $7C2860.l,X		; 5F 60 28 7C
	dey		; 88
	lda $A2A111.l,X		; BF 11 A1 A2
	phk		; 4B
	brk $97.b		; 00 97
	brk $BE.b		; 00 BE
	plp		; 28
	rti		; 40

	and $E68F.w,Y		; 39 8F E6
	xba		; EB
	inc $F764.w,X		; FE 64 F7
	xba		; EB
	sbc $60.b,X		; F5 60
	sbc ($CF.b),Y		; F1 CF
	sec		; 38
	stz $D120.w		; 9C 20 D1
	brk $BA.b		; 00 BA
	ora ($F6.b,X)		; 01 F6
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	sbc $FFFC.w,X		; FD FC FF
	phd		; 0B
	eor [$FB.b],Y		; 57 FB
	sbc $FCA047.l,X		; FF 47 A0 FC
	rol A		; 2A
	sta ($0C.b)		; 92 0C
	rti		; 40

	eor $FF.b		; 45 FF
	cmp [$CC.b]		; C7 CC
	adc [$75.b]		; 67 75
	cpy #$0AD8.w		; C0 D8 0A
	sbc $0FFC55.l,X		; FF 55 FC 0F
	dec $F020.w		; CE 20 F0
	bpl -32.b		; 10 E0
	inc $FEFE.w,X		; FE FE FE
	eor $50.b,X		; 55 50
	ldx $E0EA.w		; AE EA E0
	sed		; F8
	phd		; 0B
	cmp $E0DB.w		; CD DB E0
	sbc $1AE2.w,X		; FD E2 1A
	jsr ($F8E0.w,X)		; FC E0 F8
	ora #$5A60.w		; 09 60 5A
.ACCU 8
.INDEX 8
	sep #$F4		; E2 F4
	cpx #$BF.b		; E0 BF
	dec $AC.b		; C6 AC
	lda #$F5.b		; A9 F5
	plx		; FA
	sta ($FE.b,X)		; 81 FE
	jmp.w [$0DF6]		; DC F6 0D
	sbc $A1.b		; E5 A1
	sbc ($D7.b,X)		; E1 D7
	and [$9C.b],Y		; 37 9C
	cpx #$FD.b		; E0 FD
	sbc ($1E.b,X)		; E1 1E
	cmp $2FAAAA.l,X		; DF AA AA 2F
	rts		; 60

	sbc $70F298.l,X		; FF 98 F2 70
	sed		; F8
	ora $F0C4.w		; 0D C4 F0
	asl $F8FE.w		; 0E FE F8
	ora $E9BA.w		; 0D BA E9
	rts		; 60

	cpy #$0B.b		; C0 0B
	tax		; AA
	asl A		; 0A
	nop		; EA
	cmp $DFE9.w,Y		; D9 E9 DF
	ldy $CE.b		; A4 CE
	sbc $C00FB0.l,X		; FF B0 0F C0
	sed		; F8
	asl $BEA4.w		; 0E A4 BE
	cpx #$F8.b		; E0 F8
	ora $CBDF.w		; 0D DF CB
	bit $FB.b		; 24 FB
	brk $65.b		; 00 65
	brk $DB.b		; 00 DB
	lda $3C0BB0.l,X		; BF B0 0B 3C
	sbc $ED56DB.l,X		; FF DB 56 ED
	pea $E0D5.w		; F4 D5 E0
	inc $01F0.w,X		; FE F0 01
	inc $01.b		; E6 01
	cpx $D2F6.w		; EC F6 D2
	pla		; 68
	sbc $FF.b,S		; E3 FF
	sbc $AABF.w,X		; FD BF AA
	cmp $E00778.l,X		; DF 78 07 E0
	ora $503FC0.l,X		; 1F C0 3F 50
	sta ($C1.b)		; 92 C1
	sbc $EC02.w,X		; FD 02 EC
	bra -16.b		; 80 F0
	ora #$7E.b		; 09 7E
	sbc $91ED7F.l,X		; FF 7F ED 91
	lda #$02.b		; A9 02
	asl $04.b		; 06 04
	ora $04.b		; 05 04
	bvc -17.b		; 50 EF
	inc $FC03.w,X		; FE 03 FC
	ora [$F9.b]		; 07 F9
	ora [$FE.b]		; 07 FE
	sbc $FB.b,X		; F5 FB
	cpx #$FE.b		; E0 FE
	beq -16.b		; F0 F0
	tsb $F60C.w		; 0C 0C F6
	cop $F9.b		; 02 F9
	bmi -17.b		; 30 EF
	rep #$89		; C2 89
	sbc $FE.b,S		; E3 FE
	php		; 08
	tax		; AA
	sbc $FF81.w,Y		; F9 81 FF
	plp		; 28
	cli		; 58
	ora [$FE.b],Y		; 17 FE
	sed		; F8
	ora $A0F6.w,Y		; 19 F6 A0
	asl A		; 0A
	eor $55.b,X		; 55 55
	jmp $800F58.l		; 5C 58 0F 80
	inc $10F8.w,X		; FE F8 10
	cli		; 58
	bvs  26.b		; 70 1A
	tay		; A8
	bmi  11.b		; 30 0B
	ldx $30.b		; A6 30
	ora #$E2.b		; 09 E2
	sed		; F8
	ora $E0.b,X		; 15 E0
	sed		; F8
	phd		; 0B
	sty $34.b		; 84 34
	eor $AE.b,X		; 55 AE
	dec $0F18.w		; CE 18 0F
	tax		; AA
	pla		; 68
	ora $406A.w		; 0D 6A 40
	ora $78.b,X		; 15 78
	sed		; F8
	trb $58.b		; 14 58
	tsb $FE.b		; 04 FE
	sed		; F8
	ora ($4A.b),Y		; 11 4A
	stz $88.b		; 64 88
	bvc  24.b		; 50 18
	adc ($82.b,X)		; 61 82
	ldx $1160.w,Y		; BE 60 11
	bne  90.b		; D0 5A
	sty $FC.b		; 84 FC
	rti		; 40

	eor $55.b,X		; 55 55
	inc $FFFD.w,X		; FE FD FF
	sed		; F8
	adc $CA.b,S		; 63 CA
	cli		; 58
	ora [$AA.b],Y		; 17 AA
	bmi  83.b		; 30 53
	dec $F8.b,X		; D6 F8
	ora [$1E.b],Y		; 17 1E
	sec		; 38
	and ($38.b,X)		; 21 38
	cli		; 58
	ora $82.b,X		; 15 82
	sed		; F8
	ora $555D.w		; 0D 5D 55
	ldy #$F6.b		; A0 F6
	trb $91.b		; 14 91
	bra   8.b		; 80 08
	inc $A6FC.w,X		; FE FC A6
	and $58.b,S		; 23 58
	bcc   9.b		; 90 09
	rol $F8.b,X		; 36 F8
	and $45FCB0.l		; 2F B0 FC 45
	eor $58.b,X		; 55 58
	mvn $EA,$46		; 54 46 EA
	inc $FDA6.w,X		; FE A6 FD
	cpx #$F0.b		; E0 F0
	and ($62.b),Y		; 31 62
	bpl  35.b		; 10 23
	mvn $13,$10		; 54 10 13
	tsx		; BA
	tax		; AA
	inc $0084.w,X		; FE 84 00
	stx $FE.b		; 86 FE
	sed		; F8
	asl A		; 0A
	dec $23F8.w		; CE F8 23
	jsr $1FF8.w		; 20 F8 1F
	brk $F8.b		; 00 F8
	and $AA.b,S		; 23 AA
	tax		; AA
	bne  -8.b		; D0 F8
	ora $F02E.w,Y		; 19 2E F0
	and ($E4.b,X)		; 21 E4
	asl $3B04.w		; 0E 04 3B
	adc ($F7.b)		; 72 F7
	ror $F0.b,X		; 76 F0
	asl A		; 0A
	inc $FFFC.w,X		; FE FC FF
	sed		; F8
	jsr ($A8D5.w,X)		; FC D5 A8
	mvp $79,$18		; 44 18 79
	ora #$FE.b		; 09 FE
	sed		; F8
	tsb $485A.w		; 0C 5A 48
	and ($7A.b),Y		; 31 7A
	cpx #$0C.b		; E0 0C
	bra  -2.b		; 80 FE
	.db $42, $38		; 42 38
	phy		; 5A
	phy		; 5A
	lda $FF.b,X		; B5 FF
	sed		; F8
	rtl		; 6B

	lsr $1330.w,X		; 5E 30 13
	inc $38F8.w,X		; FE F8 38
	bra  -2.b		; 80 FE
	sed		; F8
	asl A		; 0A
	lsr $0CE0.w,X		; 5E E0 0C
	sty $D8.b		; 84 D8
	and [$82.b]		; 27 82
	phx		; DA
	mvp $5A,$AA		; 44 AA 5A
	pea $12C8.w		; F4 C8 12
	cpx $C8.b		; E4 C8
	eor [$CC.b],Y		; 57 CC
	inx		; E8
	pld		; 2B
	cpy $E8.b		; C4 E8
	ora $09E8C0.l		; 0F C0 E8 09
	inc $0928.w,X		; FE 28 09
	inc $45F8.w,X		; FE F8 45
	lsr $FE.b		; 46 FE
	sed		; F8
	asl $5555.w		; 0E 55 55
	tsx		; BA
	beq  17.b		; F0 11
	cpy #$E8.b		; C0 E8
	ora $39E8AC.l		; 0F AC E8 39
	asl $23F8.w		; 0E F8 23
	asl A		; 0A
	sed		; F8
	ora #$8C.b		; 09 8C
	cld		; D8
	jsr ($20F2.w,X)		; FC F2 20
	clc		; 18
	dec $09C0.w		; CE C0 09
	cmp $22AA.w		; CD AA 22
	clv		; B8
	ora $B4D4.w		; 0D D4 B4
	ora ($FE.b,X)		; 01 FE
	tsb $F8.b		; 04 F8
	bcs  72.b		; B0 48
	sbc $B116.w,X		; FD 16 B1
	ror $55.b		; 66 55
	bit $EF.b		; 24 EF
	php		; 08
	phx		; DA
	asl $F0.b		; 06 F0
	dex		; CA
	tas		; 1B
	dec $EAFC.w,X		; DE FC EA
	inc $C820.w		; EE 20 C8
	ora $14175D.l		; 0F 5D 17 14
	iny		; C8
	jsr ($F8FF.w,X)		; FC FF F8
	plx		; FA
	sbc $2A02.w,X		; FD 02 2A
	adc $63BC.w,Y		; 79 BC 63
	sbc [$08.b],Y		; F7 08
	jsr $1148.w		; 20 48 11
	dec $4B.b,X		; D6 4B
	inc $10EF.w		; EE EF 10
	cmp ($78.b)		; D2 78
	ora #$E0.b		; 09 E0
	sed		; F8
	ora ($03.b)		; 12 03
	sbc $924501.l,X		; FF 01 45 92
	ldx $BA57.w,Y		; BE 57 BA
	dec $0471.w		; CE 71 04
	ora $03.b,S		; 03 03
	ora ($C4.b,X)		; 01 C4
	cpx #$0C.b		; E0 0C
	asl $40F1.w		; 0E F1 40
	jmp ($406A.w)		; 6C 6A 40
	adc $41BD.w,Y		; 79 BD 41
	sta ($59.b)		; 92 59
	inc $FF82.w		; EE 82 FF
	adc $51137F.l,X		; 7F 7F 13 51
	brk $D9.b		; 00 D9
	bit $6A.b		; 24 6A
	sed		; F8
	sbc $C47EFC.l,X		; FF FC 7E C4
	and $56D0.w		; 2D D0 56
	sed		; F8
	plb		; AB
	pea $78C6.w		; F4 C6 78
	lda ($FC.b,S),Y		; B3 FC
	ora $7CD30A.l,X		; 1F 0A D3 7C
	sbc ($BC.b,X)		; E1 BC
	tyx		; BB
	tyx		; BB
	dec $A8EF.w,X		; DE EF A8
	adc ($00.b),Y		; 71 00
	sbc $FCFADA.l,X		; FF DA FA FC
	lda $2E2EBD.l,X		; BF BD 2E 2E
	ora [$17.b],Y		; 17 17
	sbc $6FFFFF.l		; EF FF FF 6F
	ora [$1F.b],Y		; 17 1F
	sta $41410F.l		; 8F 0F 41 41
	lda $03.b,S		; A3 03
	eor ($01.b,X)		; 41 01
	cmp ($FF.b),Y		; D1 FF
	inx		; E8
	sbc $FFFF90.l,X		; FF 90 FF FF
	lda $F0F6E0.l,X		; BF E0 F6 F0
	sbc $FCBBBE.l,X		; FF BE BB FC
	sbc $9BFBFE.l,X		; FF FE FB 9B
	bra  15.b		; 80 0F
	ora ($E0.b,X)		; 01 E0
	ora [$FB.b]		; 07 FB
	cpx $D0.b		; E4 D0
	bne -24.b		; D0 E8
	sbc #$0F.b		; E9 0F
	sta ($FE.b,X)		; 81 FE
	cmp $89.b,S		; C3 89
	inc $1BFE.w,X		; FE FE 1B
	sbc $2FDBDF.l		; EF DF DB 2F
	sbc $ADDB17.l,X		; FF 17 DB AD
	sta ($F7.b,X)		; 81 F7
	brk $BE.b		; 00 BE
	inc $05.b,X		; F6 05
	ora $31BA20.l,X		; 1F 20 BA 31
	and $4B00BC.l,X		; 3F BC 00 4B
	phk		; 4B
	eor $55.b,X		; 55 55
	ldx $DCBE.w,Y		; BE BE DC
	xce		; FB
	xce		; FB
	cmp $FFFFDF.l,X		; DF DF FF FF
	dey		; 88
	txa		; 8A
	ldy $BA.b,X		; B4 BA
	tax		; AA
	sbc $00BF41.l,X		; FF 41 BF 00
	xba		; EB
	sbc $FF9FE1.l,X		; FF E1 9F FF
	adc $1F.b,S		; 63 1F
	trb $0FF0.w		; 1C F0 0F
	ora ($DC.b,S),Y		; 13 DC
	rti		; 40

	eor ($28.b,X)		; 41 28
	tay		; A8
	pei ($D4.b)		; D4 D4
	sbc ($E1.b,X)		; E1 E1
	ldx $8AFF.w,Y		; BE FF 8A
	ror $BEFC.w,X		; 7E FC BE
	inc $7F57.w,X		; FE 57 7F
	rol $8159.w		; 2E 59 81
	sbc $E0FF80.l,X		; FF 80 FF E0
	adc $FE3FF0.l,X		; 7F F0 3F FE
	lda $3CDF7C.l,X		; BF 7C DF 3C
	eor $46233E.l,X		; 5F 3E 23 46
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	beq  15.b		; F0 0F
	sei		; 78
	beq -68.b		; F0 BC
	ldy $FCFC.w,X		; BC FC FC
	stx $B6.b,Y		; 96 B6
	rti		; 40

	inc $AD01.w,X		; FE 01 AD
	dec $DE.b		; C6 DE
	sbc ($34.b),Y		; F1 34
	adc ($01.b)		; 72 01
	rol $FF72.w		; 2E 72 FF
	sed		; F8
	ora $005B02.l		; 0F 02 5B 00
	tsb $B4.b		; 04 B4
	sta ($20.b)		; 92 20
.INDEX 8
	sep #$DF		; E2 DF
	and ($A0.b,X)		; 21 A0
	beq  17.b		; F0 11
	txa		; 8A
	sbc ($FE.b)		; F2 FE
	.db $82, $93, $98		; 82 93 98
	pea $50A0.w		; F4 A0 50
	ora ($E6.b,S),Y		; 13 E6
	ldx #$F2.b		; A2 F2
	stp		; DB
	rol $F6.b		; 26 F6
	tda		; 7B
	ora ($E0.b),Y		; 11 E0
	sed		; F8
	ora ($DE.b),Y		; 11 DE
	and ($BC.b,X)		; 21 BC
	sbc $DD08.w,X		; FD 08 DD
	jsl $14F8C0.l		; 22 C0 F8 14
	tay		; A8
	rol $10.b		; 26 10
	bra  -5.b		; 80 FB
	ora $B6.b		; 05 B6
	dec $F8A0.w,X		; DE A0 F8
	ora ($15.b,S),Y		; 13 15
	phb		; 8B
	.db $62, $80, $F8		; 62 80 F8
	clc		; 18
	cpx $FC.b		; E4 FC
	lsr $20.b		; 46 20
	brk $F0.b		; 00 F0
	asl $23.b,X		; 16 23
	sta $E8.b,S		; 83 E8
	inc $BC11.w		; EE 11 BC
	clc		; 18
	dec $2A82.w,X		; DE 82 2A
	sbc $FF09B8.l,X		; FF B8 09 FF
	jsr ($C00E.w,X)		; FC 0E C0
	jsr ($6244.w,X)		; FC 44 62
	phx		; DA
	nop		; EA
	adc [$1B.b],Y		; 77 1B
	plx		; FA
	and $A697FF.l		; 2F FF 97 A6
	cmp ($7E.b),Y		; D1 7E
	inx		; E8
	sbc $FE7FD4.l,X		; FF D4 7F FE
	and $FCEAC4.l		; 2F C4 EA FC
	sbc $48B7FC.l		; EF FC B7 48
	adc $FBFB7F.l,X		; 7F 7F FB FB
	eor $2F2F5F.l,X		; 5F 5F 2F 2F
	clv		; B8
	inc $FFA3.w,X		; FE A3 FF
	ora $01D103.l		; 0F 03 D1 01
	inx		; E8
	brk $1F.b		; 00 1F
	cpx #$47.b		; E0 47
	sed		; F8
	inc $FB0F.w,X		; FE 0F FB
	ora [$0A.b]		; 07 0A
	xba		; EB
	lda ($8B.b)		; B2 8B
	sbc ($3C.b,S),Y		; F3 3C
	sbc ($D8.b),Y		; F1 D8
	ora $EA940F.l		; 0F 0F 94 EA
	dec $EA.b,X		; D6 EA
	and $3FFBFF.l,X		; 3F FF FB 3F
	php		; 08
	php		; 08
	lda ($45.b),Y		; B1 45
	sei		; 78
	ldy #$BC.b		; A0 BC
	cpy #$AF.b		; C0 AF
	cmp ($2D.b),Y		; D1 2D
	adc ($F7.b,X)		; 61 F7
	cpy #$FE.b		; C0 FE
	adc [$1D.b],Y		; 77 1D
	sbc [$F7.b],Y		; F7 F7
	tsx		; BA
	tsx		; BA
	clc		; 18
	sbc ($EE.b)		; F2 EE
	inc $F115.w		; EE 15 F1
	tad		; 5B
	sbc ($7D.b),Y		; F1 7D
	adc $FD9E.w,X		; 7D 9E FD
	phx		; DA
	eor $75.b,X		; 55 75
	rol A		; 2A
	rol A		; 2A
	ora $8209D9.l		; 0F D9 09 82
	lda $FF80.w,X		; BD 80 FF
	sbc $FF.b,S		; E3 FF
	txa		; 8A
	cmp $DAE6D5.l,X		; DF D5 E6 DA
	phx		; DA
	jsr ($EAFD.w,X)		; FC FD EA
	plx		; FA
	sbc $F5.b,X		; F5 F5
	xba		; EB
	sbc $57EBFF.l,X		; FF FF EB 57
	eor [$A0.b],Y		; 57 A0
	ldy #$12.b		; A0 12
	ora ($25.b)		; 12 25
	cmp $05FE02.l,X		; DF 02 FE 05
	adc $14FF0A.l		; 6F 0A FF 14
	sbc $A86FFF.l,X		; FF FF 6F A8
	sbc $FF5F.w,X		; FD 5F FF
	sbc $11F7.w		; ED F7 11
	and $E6030D.l		; 2F 0D 03 E6
	sbc ($52.b,X)		; E1 52
	eor ($F3.b),Y		; 51 F3
	sbc $DBF17E.l,X		; FF 7E F1 DB
	sed		; F8
	adc $6978.w,Y		; 79 78 69
	sei		; 78
	cmp [$D7.b],Y		; D7 D7
	and ($E9.b),Y		; 31 E9
	lda $0EFFAF.l,X		; BF AF FF 0E
	inc $FF78.w,X		; FE 78 FF
	adc ($87.b,S),Y		; 73 87
	sbc $E8EF87.l,X		; FF 87 EF E8
	sbc ($80.b),Y		; F1 80
	inc $89.b,X		; F6 89
	sbc $6EFBC0.l,X		; FF C0 FB 6E
	sty $DAC4.w		; 8C C4 DA
	sbc #$F8.b		; E9 F8
	and $80F1DF.l,X		; 3F DF F1 80
	sbc $5857C0.l,X		; FF C0 57 58
	sbc $F8E0E0.l,X		; FF E0 E0 F8
	cpx #$61.b		; E0 61
	.db $82, $F2, $FE		; 82 F2 FE
	inc $09.b,X		; F6 09
	tsx		; BA
	sbc #$D7.b		; E9 D7
	nop		; EA
	pea $F5F1.w		; F4 F1 F5
	asl A		; 0A
	cpy #$40.b		; C0 40
	trb $9E.b		; 14 9E
	sbc [$FF.b]		; E7 FF
	stx $78.b		; 86 78
	ora $EBC0.w		; 0D C0 EB
	bit $F2.b		; 24 F2
	stp		; DB
	rol A		; 2A
	lsr $24.b,X		; 56 24
.ACCU 16
.INDEX 16
	rep #$F4		; C2 F4
	bra -16.b		; 80 F0
	ora ($88.b),Y		; 11 88
	sbc $C0.b,S		; E3 C0
	sbc $80F17C.l		; EF 7C F1 80
	inx		; E8
	ora ($07.b,S),Y		; 13 07
	cmp ($E2.b,X)		; C1 E2
	jsr ($24DF.w,X)		; FC DF 24
	cld		; D8
	rol $F2.b,X		; 36 F2
	dec $E860.w,X		; DE 60 E8
	ora ($04.b)		; 12 04
	php		; 08
	bra -98.b		; 80 9E
.ACCU 8
.INDEX 8
	sep #$F6		; E2 F6
	ldx #$5A.b		; A2 5A
	sed		; F8
	sbc $10C8.w,X		; FD C8 10
	cpy #$24.b		; C0 24
	nop		; EA
	bit $E0F4.w,X		; 3C F4 E0
	cld		; D8
	ora ($20.b,S),Y		; 13 20
	rol $F4.b		; 26 F4
	eor [$1B.b],Y		; 57 1B
	bit $E2.b		; 24 E2
	adc $F20084.l,X		; 7F 84 00 F2
	and $0DF8.w,X		; 3D F8 0D
	cpx $41E9.w		; EC E9 41
	tsb $F5.b		; 04 F5
	.db $42, $15		; 42 15
	rti		; 40

	jsr ($F004.w,X)		; FC 04 F0
	tsb $B2F9.w		; 0C F9 B2
	dec $2086.w		; CE 86 20
	nop		; EA
	asl $62CE.w		; 0E CE 62
	ora $54.b		; 05 54
	cpy #$E0.b		; C0 E0
	ora ($B7.b,S),Y		; 13 B7
	pha		; 48
	sbc $C05F.w,X		; FD 5F C0
	ora ($60.b)		; 12 60
	inx		; E8
	ora ($DF.b,S),Y		; 13 DF
	cpx $C7.b		; E4 C7
	sei		; 78
	sbc ($7E.b,X)		; E1 7E
	beq  63.b		; F0 3F
	sbc $EC560C.l,X		; FF 0C 56 EC
	cmp $C2FD.w,X		; DD FD C2
	nop		; EA
	inc $0CEA.w		; EE EA 0C
	tsb $CD2A.w		; 0C 2A CD
	ora ($F4.b,X)		; 01 F4
	cpy $F1.b		; C4 F1
	ora ($FE.b,X)		; 01 FE
	jsr ($C71F.w,X)		; FC 1F C7
	tad		; 5B
	sbc $887703.l,X		; FF 03 77 88
	adc ($FE.b)		; 72 FE
	stp		; DB
	stp		; DB
	ora [$23.b]		; 07 23
	ora $EF6903.l,X		; 1F 03 69 EF
	adc $1043A0.l,X		; 7F A0 43 10
	bpl  -8.b		; 10 F8
	.db $62, $69, $0F		; 62 69 0F
	beq -61.b		; F0 C3
	jsr ($1CF7.w,X)		; FC F7 1C
	adc ($9C.b,S),Y		; 73 9C
	inc $FE1D.w,X		; FE 1D FE
	tsb $E3.b		; 04 E3
	sbc $1B1BFC.l,X		; FF FC 1B 1B
	phx		; DA
	tsa		; 3B
	and $787B.w,Y		; 39 7B 78
	xce		; FB
	sed		; F8
	ora $7071FE.l,X		; 1F FE 71 70
	and ($31.b),Y		; 31 31
	rol $AA3E.w,X		; 3E 3E AA
	ora $FEC60F.l		; 0F 0F C6 FE
	sta [$FF.b]		; 87 FF
	sbc $770777.l,X		; FF 77 07 77
	sta $BECEFF.l		; 8F FF CE BE
	cmp ($EF.b,X)		; C1 EF
	cpy #$FE.b		; C0 FE
	beq -17.b		; F0 EF
	eor $32.b		; 45 32
	sta ($7D.b)		; 92 7D
	sei		; 78
	eor $025A.w,X		; 5D 5A 02
	ora ($0D.b,X)		; 01 0D
	tsb $DDEE.w		; 0C EE DD
	ldx $F3FD.w,Y		; BE FD F3
	xce		; FB
	sbc $D1.b		; E5 D1
	pla		; 68
	adc $E480F6.l,X		; 7F F6 80 E4
	sbc #$E4.b		; E9 E4
	ldx $7FDA.w,Y		; BE DA 7F
	inc $7FBF.w,X		; FE BF 7F
	sbc $977F.w,X		; FD 7F 97
	ldx $E4.b		; A6 E4
	nop		; EA
	cpx #$E0.b		; E0 E0
	ldx $D4DA.w,Y		; BE DA D4
	lda $4ABD.w,X		; BD BD 4A
	eor $B5.b,X		; 55 B5
	sbc $E53E90.l		; EF 90 3E E5
	phk		; 4B
	eor $F0C4.w,Y		; 59 C4 F0
	tsb $DA57.w		; 0C 57 DA
	ldy #$E1.b		; A0 E1
	inc $09F8.w,X		; FE F8 09
	sbc $0AAA.w,X		; FD AA 0A
	dec $A8.b,X		; D6 A8
	bpl  98.b		; 10 62
	inc $80.b		; E6 80
	pei ($C0.b)		; D4 C0
	cld		; D8
	ora $08.b,X		; 15 08
.INDEX 8
	sep #$D8		; E2 D8
	inc $F0C0.w,X		; FE C0 F0
	bpl  14.b		; 10 0E
	tax		; AA
	ldy #$20.b		; A0 20
	sbc $EF.b,X		; F5 EF
	bpl  58.b		; 10 3A
	dec $FF21.w		; CE 21 FF
	sed		; F8
	asl $CAE6.w		; 0E E6 CA
	ror $31.b,X		; 76 31
	bit $A0DC.w,X		; 3C DC A0
	sed		; F8
	inc A		; 1A
	mvp $F8,$E0		; 44 E0 F8
	tas		; 1B
	adc $E18F81.l,X		; 7F 81 8F E1
	stz $A9FB.w		; 9C FB A9
	ply		; 7A
	bra   0.b		; 80 00
	stp		; DB
	tda		; 7B
	jsr ($EC75.w,X)		; FC 75 EC
	txa		; 8A
	jmp.w [$FD1A]		; DC 1A FD
	sty $FD.b		; 84 FD
	ora ($3B.b)		; 12 3B
	ldx $F8C0.w		; AE C0 F8
	ora $F10AED.l		; 0F ED 0A F1
	adc $40C090.l		; 6F 90 C0 40
	sbc $24E91E.l,X		; FF 1E E9 24
	lda #$A0.b		; A9 A0
	sed		; F8
	ora ($E0.b),Y		; 11 E0
	jsl $F63CD9.l		; 22 D9 3C F6
	sbc $8C.b,S		; E3 8C
	ldy #$0C.b		; A0 0C
	sbc $09718F.l,X		; FF 8F 71 09
	sbc [$38.b]		; E7 38
	sta [$F8.b]		; 87 F8
	sta [$FC.b],Y		; 97 FC
	cmp $7C.b,S		; C3 7C
	sed		; F8
	and $BB43BF.l,X		; 3F BF 43 BB
	stx $7C.b		; 86 7C
	mvp $AC,$3F		; 44 3F AC
	eor ($EB.b,X)		; 41 EB
	xba		; EB
	dec $00EA.w,X		; DE EA 00
	sbc ($40.b,S),Y		; F3 40
	sbc $84E17F.l,X		; FF 7F E1 84
	tsb $E0.b		; 04 E0
	brk $E0.b		; 00 E0
	ora ($3F.b,X)		; 01 3F
	bne -111.b		; D0 91
	sbc ($E4.b),Y		; F1 E4
	ora ($BF.b,X)		; 01 BF
	pld		; 2B
	ldy $FBBF.w,X		; BC BF FB
	xce		; FB
	and ($52.b,S),Y		; 33 52
	bit $DCF2.w,X		; 3C F2 DC
	ora ($01.b,X)		; 01 01
	bit $C33C.w,X		; 3C 3C C3
	cmp $D4.b,S		; C3 D4
	nop		; EA
	ora [$1F.b],Y		; 17 1F
	inc $30.b,X		; F6 30
	cmp ($1C.b,X)		; C1 1C
	cpx #$B4.b		; E0 B4
	cmp $F0.b,S		; C3 F0
	eor ($FD.b),Y		; 51 FD
	and $E0FFE0.l		; 2F E0 FF E0
	sbc [$FE.b],Y		; F7 FE
	jmp.w [$096D]		; DC 6D 09
	sed		; F8
	ora $903F69.l		; 0F 69 3F 90
	sta $A5C0C3.l		; 8F C3 C0 A5
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	beq -122.b		; F0 86
	sed		; F8
	cmp ($E0.b)		; D2 E0
	sbc #$4F.b		; E9 4F
	nop		; EA
	adc $BD1DB9.l,X		; 7F B9 1D BD
	ora $FF5FFD.l		; 0F FD 5F FF
	cpy #$E0.b		; C0 E0
	sbc #$B0.b		; E9 B0
	lda $C0F00F.l,X		; BF 0F F0 C0
	bpl -98.b		; 10 9E
	asl $5F1F.w,X		; 1E 1F 5F
	tsa		; 3B
	ora #$F7.b		; 09 F7
	ora $4971.w		; 0D 71 49
	sbc ($F3.b,S),Y		; F3 F3
.ACCU 8
	sep #$EA		; E2 EA
	sbc ($FF.b,X)		; E1 FF
	ldy #$BE.b		; A0 BE
	cmp ($49.b,S),Y		; D3 49
	tyx		; BB
	tax		; AA
	tax		; AA
	ora $19.b,S		; 03 19
	ora ($A0.b),Y		; 11 A0
	cmp [$3E.b]		; C7 3E
	pea $F8FF.w		; F4 FF F8
	ora $D8F646.l		; 0F 46 F6 D8
	dec $F020.w		; CE 20 F0
	ora $AA.b,X		; 15 AA
	tax		; AA
	jmp ($00CB.w,X)		; 7C CB 00
	beq  26.b		; F0 1A
	asl $E0C6.w,X		; 1E C6 E0
	sed		; F8
	ora ($82.b),Y		; 11 82
	dec $F020.w		; CE 20 F0
	trb $FD64.w		; 1C 64 FD
	cpx #$F8.b		; E0 F8
	ora [$CA.b],Y		; 17 CA
	cmp $F226.w,X		; DD 26 F2
	cpx #$F8.b		; E0 F8
	phd		; 0B
	txy		; 9B
	cld		; D8
	phd		; 0B
	nop		; EA
	cop $20.b		; 02 20
	sbc ($F9.b)		; F2 F9
	asl $C0.b		; 06 C0
	sed		; F8
	ora ($BD.b,S),Y		; 13 BD
	tax		; AA
	tyx		; BB
	mvp $BB,$EA		; 44 EA BB
	php		; 08
	xce		; FB
	tsb $DA.b		; 04 DA
	sbc #$A0.b		; E9 A0
	iny		; C8
	tsb $ECDA.w		; 0C DA EC
.ACCU 8
	sep #$EB		; E2 EB
	rol A		; 2A
	plp		; 28
	jsr ($58F1.w,X)		; FC F1 58
	sbc $C800.w,X		; FD 00 C8
	ora ($62.b)		; 12 62
	sbc #$04.b		; E9 04
	lsr $B4EC.w,X		; 5E EC B4
	sbc ($83.b,X)		; E1 83
	bra  -1.b		; 80 FF
	phx		; DA
	sei		; 78
	cmp $CA4084.l		; CF 84 40 CA
	asl $E0.b		; 06 E0
	rti		; 40

	stz $EAEB.w		; 9C EB EA
	cpx $01EC.w		; EC EC 01
	plx		; FA
	sta $7FE161.l,X		; 9F 61 E1 7F
	sed		; F8
	sta $DD01C0.l,X		; 9F C0 01 DD
	asl $DE9E.w,X		; 1E 9E DE
	txa		; 8A
	tsx		; BA
	tas		; 1B
	txy		; 9B
	phy		; 5A
	wai		; CB
	stz $7F.b,X		; 74 7F
	php		; 08
	dec $1080.w,X		; DE 80 10
	mvp $11,$9D		; 44 9D 11
	cpx #$FF.b		; E0 FF
	jsr ($FF0F.w,X)		; FC 0F FF
	sta ($EC.b,X)		; 81 EC
	asl $04B8.w,X		; 1E B8 04
	inx		; E8
	nop		; EA
	sbc $62FD.w,X		; FD FD 62
	ora #$0F.b		; 09 0F
	ora ($81.b,X)		; 01 81
	cmp $04B8D6.l,X		; DF D6 B8 04
	rti		; 40

	mvn $62,$C0		; 54 C0 62
	cmp #$03.b		; C9 03
	ora $D049.w,Y		; 19 49 D0
	bcs  65.b		; B0 41
	sbc ($09.b)		; F2 09
	asl $AB16.w,X		; 1E 16 AB
	jmp $DFE1.w		; 4C E1 DF
	adc $FA7D.w,X		; 7D 7D FA
	cmp [$D7.b],Y		; D7 D7
	stz $FADC.w,X		; 9E DC FA
	cmp [$FB.b],Y		; D7 FB
	ora $7F09D4.l		; 0F D4 09 7F
	jsr $387F.w		; 20 7F 38
	adc $C07F3E.l,X		; 7F 3E 7F C0
	ora ($F0.b),Y		; 11 F0
	jsr ($FF5F.w,X)		; FC 5F FF
	eor $384720.l,X		; 5F 20 47 38
	eor ($3E.b,X)		; 41 3E
	dey		; 88
	and $A18A.w,Y		; 39 8A A1
	cpy #$80.b		; C0 80
	cpx #$C0.b		; E0 C0
	beq  96.b		; F0 60
	adc ($FA.b,X)		; 61 FA
	beq 112.b		; F0 70
	inc $B0B0.w,X		; FE B0 B0
	beq  64.b		; F0 40
	bra  32.b		; 80 20
	cpy #$87.b		; C0 87
	eor ($90.b,X)		; 41 90
	rts		; 60

	bra 112.b		; 80 70
	inc $F040.w,X		; FE 40 F0
	dec $FCFE.w		; CE FE FC
	and $B92778.l,X		; 3F 78 27 B9
	adc $7FFD.w,X		; 7D FD 7F
	sbc [$75.b],Y		; F7 75
	dec $FCFE.w		; CE FE FC
	bra 127.b		; 80 7F
	.db $82, $1C, $3C		; 82 1C 3C
	inc $7F8A.w,X		; FE 8A 7F
	dec $FCFF.w		; CE FF FC
	clv		; B8
	clv		; B8
	sed		; F8
	cop $08.b		; 02 08
	inc $CEFD.w,X		; FE FD CE
	inc $2CFD.w,X		; FE FD 2C
	sbc $FEF6.w,X		; FD F6 FE
	cmp $FE1B60.l		; CF 60 1B FE
	sbc $F777.w,X		; FD 77 F7
	ror $85FA.w,X		; 7E FA 85
	xba		; EB
	adc ($81.b)		; 72 81
	plp		; 28
	eor [$AE.b]		; 47 AE
	phb		; 8B
	adc $31C08F.l,X		; 7F 8F C0 31
	and $FFA8F6.l		; 2F F6 A8 FF
	bmi 104.b		; 30 68
	sec		; 38
	pla		; 68
	clv		; B8
	pla		; 68
	cpy #$D0.b		; C0 D0
	ldy $FEFC.w,X		; BC FC FE
	sty $4CCC.w		; 8C CC 4C
	bmi  -4.b		; 30 FC
	bne  -8.b		; D0 F8
	inc $40FF.w,X		; FE FF 40
	jsr ($7544.w,X)		; FC 44 75
	inc $FC70.w,X		; FE 70 FC
	asl $0B80.w		; 0E 80 0B
	ldx $0B98.w,Y		; BE 98 0B
	ora ($82.b,X)		; 01 82
	cpy #$40.b		; C0 40
	bvs  45.b		; 70 2D
	inc $FE98.w,X		; FE 98 FE
	ora $01.b,S		; 03 01
	inc $F0FC.w,X		; FE FC F0
	inc $CE02.w,X		; FE 02 CE
	cmp ($09.b),Y		; D1 09
	sta ($FE.b,S),Y		; 93 FE
	lda ($F2.b)		; B2 F2
	sbc $FAD1F7.l,X		; FF F7 D1 FA
	.db $42, $A6		; 42 A6
	cmp $F1.b		; C5 F1
	and $FEE3.w,Y		; 39 E3 FE
	rol $80FA.w		; 2E FA 80
	sbc #$61.b		; E9 61
	bit $FE7C.w,X		; 3C 7C FE
	stz $9E5C.w		; 9C 5C 9E
	lsr $1EFE.w,X		; 5E FE 1E
	dec $4298.w,X		; DE 98 42
	inc $FCC0.w,X		; FE C0 FC
	inc $FEE0.w,X		; FE E0 FE
	inc $AA35.w,X		; FE 35 AA
	inc $B4FC.w,X		; FE FC B4
	inc $F8A0.w,X		; FE A0 F8
	phd		; 0B
	ora $FE.b,S		; 03 FE
	ldy #$FE.b		; A0 FE
	adc ($C2.b)		; 72 C2
	jsl $C470AE.l		; 22 AE 70 C4
	sbc $FE6DFC.l,X		; FF FC 6D FE
	jsr $FEE0.w		; 20 E0 FE
	inc $F6EB.w,X		; FE EB F6
	dec $FE.b		; C6 FE
	ora [$03.b]		; 07 03
	inc $C8FC.w,X		; FE FC C8
	inc $0304.w,X		; FE 04 03
	inc $AFFC.w,X		; FE FC AF
	dec $D7AA.w		; CE AA D7
	cmp $DFFEFF.l		; CF FF FE DF
	dec $96DE.w		; CE DE 96
	stx $D6.b		; 86 D6
	dec $F7.b		; C6 F7
	inc $35.b		; E6 35
	phx		; DA
	plp		; 28
	sbc $31FF30.l,X		; FF 30 FF 31
	and $79FFC1.l,X		; 3F C1 FF 79
	sbc $19FF39.l,X		; FF 39 FF 19
	sbc $06FE6C.l,X		; FF 6C FE 06
	eor $17C65E.l		; 4F 5E C6 17
	cmp [$1F.b],Y		; D7 1F
	cmp [$FC.b],Y		; D7 FC
	ror A		; 6A
	jsr ($FEF8.w,X)		; FC F8 FE
	inx		; E8
	cli		; 58
	lda #$52.b		; A9 52
	and $FE.b,X		; 35 FE
	pla		; 68
	inc $FEFE.w,X		; FE FE FE
	ldy #$FE.b		; A0 FE
	inc $68FE.w,X		; FE FE 68
	inc $EFE0.w,X		; FE E0 EF
	adc $60FF.w,Y		; 79 FF 60
	rts		; 60

	ror A		; 6A
	jsr ($F030.w,X)		; FC 30 F0
	bpl  -2.b		; 10 FE
	bcc -16.b		; 90 F0
	ora [$2F.b]		; 07 2F
	bcs -29.b		; B0 E3
	ora $05.b,S		; 03 05
	bvs -53.b		; 70 CB
	bvc  10.b		; 50 0A
	ora [$00.b]		; 07 00
	asl $52.b		; 06 52
	sbc $83E8.w,X		; FD E8 83
	inc $F591.w,X		; FE 91 F5
	lda $0C00C9.l		; AF C9 00 0C
	sei		; 78
	jmp ($7FFE.w,X)		; 7C FE 7F
	bmi -15.b		; 30 F1
	sbc $3000.w,X		; FD 00 30
	cpy #$FC.b		; C0 FC
	beq -124.b		; F0 84
	sed		; F8
	inc $9229.w,X		; FE 29 92
	rti		; 40

	asl $FE83.w		; 0E 83 FE
	rts		; 60

	cpy #$FE.b		; C0 FE
	bvs -32.b		; 70 E0
	inc $C300.w,X		; FE 00 C3
	jmp $FEE2F2.l		; 5C F2 E2 FE
	ldy #$40.b		; A0 40
	inc $0090.w,X		; FE 90 00
	asl $FE60.w,X		; 1E 60 FE
	ldx $FCB8.w		; AE B8 FC
	ora $010A07.l		; 0F 07 0A 01
	jmp ($FEFC.w,X)		; 7C FC FE
	inc $08.b,X		; F6 08
	jsr ($0708.w,X)		; FC 08 07
	tsb $8007.w		; 0C 07 80
	sbc $D5FEFC.l,X		; FF FC FE D5
	sec		; 38
	sbc $F7E6FE.l		; EF FE E6 F7
	ldx $B7.b		; A6 B7
	bvs  40.b		; 70 28
	ldx $F7FE.w		; AE FE F7
	ldx $BF.b,Y		; B6 BF
	inc $79FF.w,X		; FE FF 79
	cmp ($44.b),Y		; D1 44
	sta [$0A.b]		; 87 0A
	eor $FAFE.w,Y		; 59 FE FA
	jsr ($C70F.w,X)		; FC 0F C7
	inc $B869.w,X		; FE 69 B8
	sta $AAFE47.l		; 8F 47 FE AA
	eor [$FC.b],Y		; 57 FC
	phb		; 8B
	eor $F8.b,S		; 43 F8
	cop $D4.b		; 02 D4
	bit $FEC9.w,X		; 3C C9 FE
	jsr ($FC04.w,X)		; FC 04 FC
	jsr ($FB00.w,X)		; FC 00 FB
	sta ($E1.b,S),Y		; 93 E1
	plb		; AB
	sbc $818001.l,X		; FF 01 80 81
	inc $54FC.w,X		; FE FC 54
	pea $8851.w		; F4 51 88
	ora #$70.b		; 09 70
	rts		; 60

	bcs  32.b		; B0 20
	bvs -96.b		; 70 A0
	pla		; 68
	adc $D8A08C.l,X		; 7F 8C A0 D8
	bne 104.b		; D0 68
	brk $B8.b		; 00 B8
	bmi  -8.b		; 30 F8
	asl $F7D0.w		; 0E D0 F7
	eor $FE.b,X		; 55 FE
	cld		; D8
	sed		; F8
	plp		; 28
	stz $C8E9.w		; 9C E9 C8
	sed		; F8
	php		; 08
	sed		; F8
	cmp ($48.b),Y		; D1 48
	ora #$FE.b		; 09 FE
	jsr ($FE08.w,X)		; FC 08 FE
	adc #$A7.b		; 69 A7
	inc $0CFE.w,X		; FE FE 0C
	jmp ($FE7E.w,X)		; 7C 7E FE
	inc $5F5E.w,X		; FE 5E 5F
	tsb $663D.w		; 0C 3D 66
	.db $82, $FC, $FE		; 82 FC FE
	inc $FEA1.w,X		; FE A1 FE
	cop $FF.b		; 02 FF
	ora $FE.b,S		; 03 FE
	phy		; 5A
	ora ($FF.b),Y		; 11 FF
	asl $06.b		; 06 06
	ora ($82.b,S),Y		; 13 82
	cpx #$EA.b		; E0 EA
	inc $3AAB.w,X		; FE AB 3A
	sei		; 78
	ora $C0.b		; 05 C0
	inc $F0.b,X		; F6 F0
	sta [$F0.b]		; 87 F0
	sed		; F8
	clc		; 18
	lda $F10EE0.l,X		; BF E0 0E F1
	inc $F078.w,X		; FE 78 F0
	tsb $FEC3.w		; 0C C3 FE
	jmp ($FEF8.w,X)		; 7C F8 FE
	inc $FEFC.w,X		; FE FC FE
	xba		; EB
	ora $FBEAC3.l		; 0F C3 EA FB
	nop		; EA
	dey		; 88
	bvs  -2.b		; 70 FE
	sty $78.b		; 84 78
	inc $3002.w,X		; FE 02 30
	php		; 08
	jsr ($15FE.w,X)		; FC FE 15
	inc $ACFE.w,X		; FE FE AC
	sbc ($AF.b)		; F2 AF
	ldy $FE.b,X		; B4 FE
	ora $1F07.w		; 0D 07 1F
	ora $ACFCFE.l		; 0F FE FC AC
	sbc ($FE.b)		; F2 FE
	bpl  15.b		; 10 0F
	sbc $FCFEFF.l,X		; FF FF FE FC
	clv		; B8
	lda ($F4.b),Y		; B1 F4
	sbc $FC.b,X		; F5 FC
	sbc $FF54.w,X		; FD 54 FF
	inc $DEFD.w,X		; FE FD DE
	sbc $FEAD.w,X		; FD AD FE
	sbc $F85F.w		; ED 5F F8
	inc $FF5F.w,X		; FE 5F FF
	tas		; 1B
	sbc $F19C13.l,X		; FF 13 9C F1
	jsr ($DF33.w,X)		; FC 33 DF
	eor ($BF.b,S),Y		; 53 BF
	sta [$5E.b]		; 87 5E
	sta ($7F.b,S),Y		; 93 7F
	pld		; 2B
	eor $FE.b,S		; 43 FE
	rtl		; 6B

	inc $67FF.w,X		; FE FF 67
	eor $FC.b,S		; 43 FC
	ldy $5DF1.w		; AC F1 5D
	adc [$FE.b],Y		; 77 FE
	sed		; F8
	phd		; 0B
	tay		; A8
	inc $C0.b,X		; F6 C0
	cmp ($FE.b,X)		; C1 FE
	jsr ($F6A8.w,X)		; FC A8 F6
	ora ($C0.b,X)		; 01 C0
	inc $F8FC.w,X		; FE FC F8
	beq  -6.b		; F0 FA
	and $C0C8FE.l		; 2F FE C8 C0
	bit $F430.w,X		; 3C 30 F4
	beq -92.b		; F0 A4
	beq  -4.b		; F0 FC
	ldx $7DF1.w		; AE F1 7D
	tsb $38FE.w		; 0C FE 38
	sed		; F8
	cpy $0CFC.w		; CC FC 0C
	inc $AA04.w,X		; FE 04 AA
	sbc $F0A2FE.l,X		; FF FE A2 F0
	phd		; 0B
	txs		; 9A
	sbc #$A4.b		; E9 A4
	beq  11.b		; F0 0B
	txs		; 9A
	nop		; EA
	ror $5E5F.w,X		; 7E 5F 5E
	adc $F65756.l,X		; 7F 56 57 F6
	and $7D570C.l,X		; 3F 0C 57 7D
	ora ($FE.b,X)		; 01 FE
	ror $7EAA.w,X		; 7E AA 7E
	jsr ($FEA1.w,X)		; FC A1 FE
	lda ($D4.b),Y		; B1 D4
	inc $FEA9.w,X		; FE A9 FE
	inc $D1F1.w,X		; FE F1 D1
	inc $FF06.w,X		; FE 06 FF
	sed		; F8
	asl A		; 0A
	cmp $0D0D41.l,X		; DF 41 0D 0D
	ora $03050D.l		; 0F 0D 05 03
	inc $09F8.w,X		; FE F8 09
	asl A		; 0A
	ora [$FE.b]		; 07 FE
	ror $0F70.w,X		; 7E 70 0F
	sbc $706F1F.l,X		; FF 1F 6F 70
	ora $BFEAEB.l		; 0F EB EA BF
	tax		; AA
	xce		; FB
	ldx $94AF.w,Y		; BE AF 94
	sta $FBFA8A.l,X		; 9F 8A FA FB
	rol $FE7E.w,X		; 3E 7E FE
	xce		; FB
	xba		; EB
	ora $FE.b,X		; 15 FE
	eor $FE.b,X		; 55 FE
	adc $FE75FE.l,X		; 7F FE 75 FE
	ora $DC.b		; 05 DC
	bmi  -2.b		; 30 FE
	trb $FF.b		; 14 FF
	cpy $1EF2.w		; CC F2 1E
	inc $AE0E.w,X		; FE 0E AE
	inc $FE7C.w,X		; FE 7C FE
	rol A		; 2A
	txa		; 8A
	ldx $119E.w,Y		; BE 9E 11
	asl $0FFE.w		; 0E FE 0F
	lda ($1F.b),Y		; B1 1F
	sed		; F8
	sbc #$FE.b		; E9 FE
	lda $1F.b,X		; B5 1F
	lda ($1F.b,X)		; A1 1F
	cmp $FEDE.w		; CD DE FE
	sbc $FFDE.w		; ED DE FF
	and $FAC8.w		; 2D C8 FA
	bvc  50.b		; 50 32
	inx		; E8
	phx		; DA
	cpx $33DA.w		; EC DA 33
	sbc $37FCFE.l,X		; FF FE FC 37
	ldy $D9.b,X		; B4 D9
	rti		; 40

	ora ($FC.b,X)		; 01 FC
	inc $0065.w,X		; FE 65 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $00F6.w		; AD F6 00
	sbc $024FF8.l,X		; FF F8 4F 02
	inc $F0FF.w,X		; FE FF F0
	sed		; F8
	ora $F8FF.w		; 0D FF F8
	and $01.b,S		; 23 01
	inc $20F8.w,X		; FE F8 20
	ora $00.b		; 05 00
	asl $55.b,X		; 16 55
	tsb $FE.b		; 04 FE
	inc $FE80.w,X		; FE 80 FE
	sed		; F8
	ora ($E8.b)		; 12 E8
	sbc $AE27F8.l,X		; FF F8 27 AE
	inc $F884.w,X		; FE 84 F8
	ora ($55.b),Y		; 11 55
	sbc $72.b,S		; E3 72
	sed		; F8
	ora [$5C.b],Y		; 17 5C
	sed		; F8
	and $FF.b,S		; 23 FF
	sed		; F8
	sta ($66.b),Y		; 91 66
	inc $F2E4.w,X		; FE E4 F2
	asl $FE.b		; 06 FE
	cop $F0.b		; 02 F0
	sbc ($80.b,S),Y		; F3 80
	inc $800A.w,X		; FE 0A 80
	php		; 08
	jsr $0008.w		; 20 08 00
	inc $A380.w,X		; FE 80 A3
	ldy #$09.b		; A0 09
	bra   1.b		; 80 01
	inc $FFD1.w,X		; FE D1 FF
	inc $FE.b,X		; F6 FE
	jsr ($2212.w,X)		; FC 12 22
	jmp ($64F8.w)		; 6C F8 64
	rol $68F6.w		; 2E F6 68
	ror $64.b		; 66 64
	sta ($0B.b)		; 92 0B
	ror $FE.b		; 66 FE
	stz $FC.b		; 64 FC
	brk $0A.b		; 00 0A
	inc A		; 1A
	sbc ($02.b,S),Y		; F3 02
	ora ($E6.b,X)		; 01 E6
	dec $F2FC.w,X		; DE FC F2
	cpx $50.b		; E4 50
	rol A		; 2A
	adc ($4E.b)		; 72 4E
	inc $EE.b,X		; F6 EE
	asl A		; 0A
	sbc ($CA.b,S),Y		; F3 CA
	cmp ($09.b)		; D2 09
	cpx #$2A.b		; E0 2A
	inc $0534.w,X		; FE 34 05
	sed		; F8
	xba		; EB
	inc $E8.b,X		; F6 E8
	and #$7E.b		; 29 7E
	inx		; E8
	tas		; 1B
	dey		; 88
	tax		; AA
	txs		; 9A
	inc $AAFD.w,X		; FE FD AA
	inc $0CF8.w,X		; FE F8 0C
	inc $F8.b		; E6 F8
	ora #$FE.b		; 09 FE
	sed		; F8
	ora $1282.w,X		; 1D 82 12
	cmp ($F8.b)		; D2 F8
	ora $0CF8C0.l		; 0F C0 F8 0C
	jmp $CEF172.l		; 5C 72 F1 CE
	cpx #$0A.b		; E0 0A
	asl $D1.b,X		; 16 D1
	eor $86E8.w,Y		; 59 E8 86
	eor ($00.b,X)		; 41 00
	rti		; 40

	inc $FEFF.w,X		; FE FF FE
	eor $B5.b,X		; 55 B5
	sbc ($FC.b)		; F2 FC
	beq  -8.b		; F0 F8
	ora #$54.b		; 09 54
	cpx #$4B.b		; E0 4B
	inc $19F8.w		; EE F8 19
	.db $62, $F8, $0B		; 62 F8 0B
	ror A		; 6A
	inc $FE.b,X		; F6 FE
	sed		; F8
	phd		; 0B
	asl A		; 0A
	ldy #$AA.b		; A0 AA
	inc $0CF8.w,X		; FE F8 0C
	beq  -1.b		; F0 FF
	sed		; F8
	jsr $EEA0.w		; 20 A0 EE
	inc $0DF8.w,X		; FE F8 0D
	clv		; B8
	inx		; E8
	.db $42, $50		; 42 50
	beq  14.b		; F0 0E
	ror A		; 6A
	ora $FE.b		; 05 FE
	sed		; F8
	jsl $1BF0F4.l		; 22 F4 F0 1B
	php		; 08
	sed		; F8
	phd		; 0B
	sbc $0909F8.l,X		; FF F8 09 09
	ldx $E5.b,Y		; B6 E5
	bvc -20.b		; 50 EC
	sed		; F8
	bvs  28.b		; 70 1C
	pea $E972.w		; F4 72 E9
	ldy #$08.b		; A0 08
	inc $2009.w,X		; FE 09 20
	cli		; 58
	eor $E4.b,X		; 55 E4
	cop $2C.b		; 02 2C
	sed		; F8
	rti		; 40

	iny		; C8
	cld		; D8
	sta $23F8FE.l		; 8F FE F8 23
	clv		; B8
	beq  37.b		; F0 25
	bcs -16.b		; B0 F0
	ora ($55.b),Y		; 11 55
	cmp $AE.b,X		; D5 AE
	inx		; E8
	ora ($6A.b,S),Y		; 13 6A
	jmp.w [$F8FE]		; DC FE F8
	phd		; 0B
	bcs -16.b		; B0 F0
	eor ($CE.b,S),Y		; 53 CE
	inx		; E8
	and $C874.w		; 2D 74 C8
	ora [$72.b],Y		; 17 72
	cpy $DD44.w		; CC 44 DD
	sta $AA.b,S		; 83 AA
	brk $0A.b		; 00 0A
	ldy #$FE.b		; A0 FE
	pea $4AEA.w		; F4 EA 4A
	sed		; F8
	tsb $D0A6.w		; 0C A6 D0
	ora $FCF8FF.l		; 0F FF F8 FC
	tax		; AA
	tax		; AA
	.db $62, $F0, $2D		; 62 F0 2D
	trb $C6.b		; 14 C6
	cop $D8.b		; 02 D8
	phd		; 0B
	brk $D8.b		; 00 D8
	eor #$48.b		; 49 48
	inx		; E8
	ora $B8F2.w		; 0D F2 B8
	and ($FF.b,X)		; 21 FF
	sed		; F8
	ora $D226.w,X		; 1D 26 D2
	tax		; AA
	tax		; AA
	adc ($CC.b)		; 72 CC
	dec $1DC8.w,X		; DE C8 1D
	sty $13F8.w		; 8C F8 13
	ldx $B8.b		; A6 B8
	ora $A8.b,X		; 15 A8
	bcs  25.b		; B0 19
	dec $CE.b,X		; D6 CE
	inc $E6FC.w,X		; FE FC E6
	beq  63.b		; F0 3F
	phy		; 5A
	sta $0E.b		; 85 0E
	bne  25.b		; D0 19
	rol $23E0.w,X		; 3E E0 23
	lsr A		; 4A
	beq  19.b		; F0 13
	sta $FE.b		; 85 FE
	sed		; F8
	ora ($FA.b)		; 12 FA
	beq  13.b		; F0 0D
	cpx $F8.b		; E4 F8
	ora $F6.b,X		; 15 F6
	tay		; A8
	tax		; AA
	sta ($FE.b,X)		; 81 FE
	cmp $0DE0.w,Y		; D9 E0 0D
	beq -16.b		; F0 F0
	ora ($D8.b,S),Y		; 13 D8
	beq  25.b		; F0 19
	jmp $1DF0.w		; 4C F0 1D
	sec		; 38
	sed		; F8
	ora ($AA.b),Y		; 11 AA
	tax		; AA
	.db $42, $C8		; 42 C8
	ora $F8FE.w		; 0D FE F8
	and ($3A.b,X)		; 21 3A
	tay		; A8
	and $3E.b,S		; 23 3E
	cpy $FE.b		; C4 FE
	sed		; F8
	eor $A898.w,X		; 5D 98 A8
	and $2BD034.l		; 2F 34 D0 2B
	ldy $C0.b,X		; B4 C0
	and $55.b,X		; 35 55
	eor $FE.b,X		; 55 FE
	sed		; F8
	ora [$45.b],Y		; 17 45
	inc $0CF8.w,X		; FE F8 0C
	inx		; E8
	sed		; F8
	ora $D0.b,X		; 15 D0
	beq  97.b		; F0 61
	tsb $13C0.w		; 0C C0 13
	ldy $E0.b,X		; B4 E0
	phd		; 0B
	tay		; A8
	beq   9.b		; F0 09
	bit $09D0.w		; 2C D0 09
	eor $55.b,X		; 55 55
	clc		; 18
	xba		; EB
	jmp $3CD0.w		; 4C D0 3C
	dec $E0.b		; C6 E0
	ora ($FE.b,S),Y		; 13 FE
	sed		; F8
	ora ($88.b,S),Y		; 13 88
	inx		; E8
	and ($A8.b,X)		; 21 A8
	bcs  24.b		; B0 18
	sta ($B8.b)		; 92 B8
	mvp $F8,$70		; 44 70 F8
	ora $24D555.l		; 0F 55 D5 24
	ldy $EE38.w,X		; BC 38 EE
	jmp $E009A0.l		; 5C A0 09 E0
	sbc $A190.w,X		; FD 90 A1
	trb $C7B8.w		; 1C B8 C7
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	and $18FFC7.l,X		; 3F C7 FF 18
	sbc [$00.b]		; E7 00
	sbc $A080FE.l,X		; FF FE 80 A0
	cpy #$60.b		; C0 60
	bvs  16.b		; 70 10
	clc		; 18
	asl A		; 0A
	sbc [$FF.b],Y		; F7 FF
	tsb $0706.w		; 0C 06 07
	ora ($68.b,X)		; 01 68
	cmp $00E0.w,Y		; D9 E0 00
	sbc ($00.b),Y		; F1 00
	adc $E01F80.l,X		; 7F 80 1F E0
	ora $8787F0.l		; 0F F0 87 87
	ora [$F8.b]		; 07 F8
	ora ($FE.b,X)		; 01 FE
	cpx #$30.b		; E0 30
	tsb $3048.w		; 0C 48 30
	cpx $3FC3.w		; EC C3 3F
	sta ($00.b,X)		; 81 00
	cop $E3.b		; 02 E3
	cop $06.b		; 02 06
	bra -92.b		; 80 A4
	cpy #$3C.b		; C0 3C
	brk $F8.b		; 00 F8
	inc $DC43.w,X		; FE 43 DC
	cmp ($00.b,X)		; C1 00
	sta $00.b,S		; 83 00
	sta [$00.b]		; 87 00
	sbc $80DF00.l		; EF 00 DF 80
	eor $58.b,S		; 43 58
	tyx		; BB
	sbc #$20.b		; E9 20
	sbc $00BB60.l,X		; FF 60 BB 00
	cpy #$AF.b		; C0 AF
	nop		; EA
	bit $FD00.w,X		; 3C 00 FD
	bpl  32.b		; 10 20
	bpl -13.b		; 10 F3
	jmp.w [$00A9]		; DC A9 00
	sbc ($9E.b),Y		; F1 9E
	inx		; E8
	tsb $91D2.w		; 0C D2 91
	asl $DA.b		; 06 DA
	inx		; E8
	sbc $30E225.l,X		; FF 25 E2 30
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	bit $DA.b		; 24 DA
	sbc $EB03F8.l,X		; FF F8 03 EB
	bvs  32.b		; 70 20
	clc		; 18
	tsb $0E.b		; 04 0E
	cop $07.b		; 02 07
	inc $FC40.w		; EE 40 FC
	sbc $9AF0F3.l		; EF F3 F0 9A
	ror $3F00.w,X		; 7E 00 3F
	brk $FF.b		; 00 FF
	ora $A0000F.l,X		; 1F 0F 00 A0
	bcs  84.b		; B0 54
	cld		; D8
	bit $66.b		; 24 66
	ora ($33.b)		; 12 33
	ora #$19.b		; 09 19
	tsb $0C.b		; 04 0C
	inc $7FFF.w,X		; FE FF 7F
	sta ($03.b,X)		; 81 03
	ldy $DE40.w,X		; BC 40 DE
	jsr $18E7.w		; 20 E7 18
	adc ($0C.b,S),Y		; 73 0C
	and $1C06.w,Y		; 39 06 1C
	ora $C1.b,S		; 03 C1
	ora $3D018E.l,X		; 1F 8E 01 3D
	clv		; B8
	sbc [$C0.b]		; E7 C0
	rti		; 40

	rts		; 60

	plp		; 28
	bmi  24.b		; 30 18
	clc		; 18
.ACCU 8
	sep #$A9		; E2 A9
	sbc ($BE.b)		; F2 BE
	sbc $3A.b,S		; E3 3A
	and $C017E0.l,X		; 3F E0 17 C0
	sec		; 38
	cpx #$FC.b		; E0 FC
	asl $01.b		; 06 01
	and $F607.w,Y		; 39 07 F6
	ply		; 7A
	cpx #$0A.b		; E0 0A
	brk $C0.b		; 00 C0
	stx $07.b		; 86 07
	mvp $60,$9A		; 44 9A 60
	jsr ($7807.w,X)		; FC 07 78
	bpl  16.b		; 10 10
	pla		; 68
	inx		; E8
	cpy #$1F.b		; C0 1F
	asl $101E.w		; 0E 1E 10
	sec		; 38
	rol $F09E.w,X		; 3E 9E F0
	tsb $10E8.w		; 0C E8 10
	sbc ($02.b),Y		; F1 02
	asl $F500.w,X		; 1E 00 F5
	bit $7EF1.w		; 2C F1 7E
	pei ($FF.b)		; D4 FF
	sbc $0010.w,X		; FD 10 00
	tsb $3D48.w		; 0C 48 3D
	bne  13.b		; D0 0D
	inc $82C0.w,X		; FE C0 82
	cpx #$20.b		; E0 20
	bvs  20.b		; 70 14
	sec		; 38
	tsb $00CD.w		; 0C CD 00
	cmp $8933.w,Y		; D9 33 89
	ldy $FC.b		; A4 FC
	rol $C128.w,X		; 3E 28 C1
	jmp $CB2078.l		; 5C 78 20 CB
	asl $CB.b		; 06 CB
	jsr ($70E6.w,X)		; FC E6 70
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	sta [$D9.b]		; 87 D9
	rol $BA.b		; 26 BA
	sbc $307F.w,X		; FD 7F 30
	sbc [$FF.b],Y		; F7 FF
	sbc ($3B.b,X)		; E1 3B
	bra  30.b		; 80 1E
	adc ($00.b,S),Y		; 73 00
	cpx $7F01.w		; EC 01 7F
	brk $C7.b		; 00 C7
	pla		; 68
	sbc $E3F03F.l,X		; FF 3F F0 E3
	cmp $7FFFFC.l		; CF FC FF 7F
	sbc $F3FF8C.l,X		; FF 8C FF F3
	sed		; F8
	sec		; 38
	and $E01C84.l,X		; 3F 84 1C E0
	ora $FC.b,S		; 03 FC
	ora $9E6FC3.l,X		; 1F C3 6F 9E
	ora $7088E5.l,X		; 1F E5 88 70
	rol $ECFD.w,X		; 3E FD EC
	sbc $9FFFE0.l,X		; FF E0 FF 9F
	sty $FF.b		; 84 FF
	dec $C1FF.w,X		; DE FF C1
	cmp ($00.b,X)		; C1 00
	ror $5841.w		; 6E 41 58
	eor [$C3.b]		; 47 C3
	cmp ($C7.b,X)		; C1 C7
	bra -128.b		; 80 80
	cmp $34.b		; C5 34
	sbc ($60.b),Y		; F1 60
	ora $E601E6.l,X		; 1F E6 01 E6
	cpy #$84.b		; C0 84
	lda $FFDABD.l,X		; BF BD DA FF
	ldy #$3A.b		; A0 3A
	dex		; CA
	inc $FCE2.w,X		; FE E2 FC
	inc $FFFC.w,X		; FE FC FF
	sed		; F8
	bpl -27.b		; 10 E5
	sbc $B91FE7.l,X		; FF E7 1F B9
	eor $F8FFFA.l		; 4F FA FF F8
	ora $E2F13F.l		; 0F 3F F1 E2
	jsr ($7C9F.w,X)		; FC 9F 7C
	sbc $870507.l,X		; FF 07 05 87
	sed		; F8
	asl $FDE8.w		; 0E E8 FD
	mvp $FC,$D4		; 44 D4 FC
	jsr ($F8C7.w,X)		; FC C7 F8
	cmp $51.b,S		; C3 51
	jsr ($3F03.w,X)		; FC 03 3F
	mvn $F0,$3C		; 54 3C F0
	cpy #$FA.b		; C0 FA
	dec $C0F5.w		; CE F5 C0
	bra  34.b		; 80 22
	pei ($0F.b)		; D4 0F
	plx		; FA
	beq -43.b		; F0 D5
	sbc $FC0F39.l,X		; FF 39 0F FC
	cpx $F0F3.w		; EC F3 F0
	inc $F1.b,X		; F6 F1
	pei ($E9.b)		; D4 E9
	cpy $27FC.w		; CC FC 27
	bit $031C.w,X		; 3C 1C 03
	sbc ($0C.b,S),Y		; F3 0C
	sta $68.b		; 85 68
	brk $78.b		; 00 78
	cpx #$F4.b		; E0 F4
	bpl  12.b		; 10 0C
	and ($D8.b,S),Y		; 33 D8
	sbc ($FC.b),Y		; F1 FC
	brk $E0.b		; 00 E0
	eor ($1C.b,X)		; 41 1C
	lsr $E0E8.w,X		; 5E E8 E0
	clc		; 18
	ora [$C7.b]		; 07 C7
	sec		; 38
	inc $1BF3.w,X		; FE F3 1B
	ora $9CF242.l,X		; 1F 42 F2 9C
	ora ($E1.b),Y		; 11 E1
	ora $F1.b,S		; 03 F1
	ldy $ACF4.w,X		; BC F4 AC
	ora $0A01F0.l		; 0F F0 01 0A
	bvs  -2.b		; 70 FE
	jsr $0F08.w		; 20 08 0F
	eor [$FC.b]		; 47 FC
	ora #$19.b		; 09 19
	sbc ($F0.b),Y		; F1 F0
	sta $5528E4.l,X		; 9F E4 28 55
	eor $28BE.w,Y		; 59 BE 28
	sbc ($26.b),Y		; F1 26
	sed		; F8
	phd		; 0B
	eor $08FC.w,X		; 5D FC 08
	inc $C686.w,X		; FE 86 C6
	sbc ($41.b),Y		; F1 41
	eor ($05.b),Y		; 51 05
	sed		; F8
	tsb $E0C5.w		; 0C C5 E0
	sed		; F8
	asl $F0E5.w		; 0E E5 F0
	asl $E0EA.w		; 0E EA E0
	sbc $B32BAE.l,X		; FF AE 2B B3
	jsr ($F8E1.w,X)		; FC E1 F8
	phd		; 0B
	cpx #$F8.b		; E0 F8
	ora #$3F.b		; 09 3F
	cpy #$40.b		; C0 40
	inc $F8E1.w,X		; FE E1 F8
	ora #$29.b		; 09 29
	pha		; 48
	rti		; 40

	cpx #$FE.b		; E0 FE
	rti		; 40

	inc $E06C.w,X		; FE 6C E0
	sed		; F8
	ora #$92.b		; 09 92
	lsr A		; 4A
	rti		; 40

	ldy #$F8.b		; A0 F8
	phd		; 0B
	rti		; 40

	dec $40F1.w,X		; DE F1 40
	sed		; F8
	tsb $F046.w		; 0C 46 F0
	ora #$75.b		; 09 75
	jsr $7F82.w		; 20 82 7F
	bne -15.b		; D0 F1
	rts		; 60

	sed		; F8
	phd		; 0B
	adc $BCF180.l,X		; 7F 80 F1 BC
	eor $FEFEF9.l,X		; 5F F9 FE FE
	jsr ($8703.w,X)		; FC 03 87
	ror $B8C7.w,X		; 7E C7 B8
	ora $E4E9F5.l		; 0F F5 E9 E4
	sbc $0A.b,X		; F5 0A
	sta $FA.b,S		; 83 FA
	txa		; 8A
	adc $79425F.l,X		; 7F 5F 42 79
	sbc ($FF.b)		; F2 FF
	sbc $FFF2DF.l,X		; FF DF F2 FF
	cpy #$AA.b		; C0 AA
	ora $FE7FBE.l,X		; 1F BE 7F FE
	ora ($E2.b,X)		; 01 E2
	ora $C7D857.l,X		; 1F 57 D8 C7
	sbc $80E378.l,X		; FF 78 E3 80
	jsr $DF1C.w		; 20 1C DF
	sed		; F8
	ora #$F6.b		; 09 F6
	cmp $ABFCF2.l,X		; DF F2 FC AB
	sbc $B33E5F.l,X		; FF 5F 3E B3
	stx $E6.b,Y		; 96 E6
	sbc $F319.w,X		; FD 19 F3
	cpx #$EE.b		; E0 EE
	cpx $0D.b		; E4 0D
	pld		; 2B
	sta $02F1.w		; 8D F1 02
	sei		; 78
	sbc $00.b,X		; F5 00
.INDEX 16
	rep #$1F		; C2 1F
	inc $F87C.w,X		; FE 7C F8
	ora #$D3.b		; 09 D3
	cpx #$420C.w		; E0 0C 42
	brk $FF.b		; 00 FF
	rts		; 60

	and $810A8A.l,X		; 3F 8A 0A 81
	bit $F8E0.w,X		; 3C E0 F8
	asl A		; 0A
	txa		; 8A
	asl $FF.b,X		; 16 FF
	inc $E0FF.w,X		; FE FF E0
	sbc $89.b,S		; E3 89
	txs		; 9A
	bit $FFE0.w		; 2C E0 FF
	ldx $6B.b		; A6 6B
	sbc ($FF.b),Y		; F1 FF
	sed		; F8
	ora #$83.b		; 09 83
	cop $BD.b		; 02 BD
	nop		; EA
	inc $9826.w,X		; FE 26 98
	sbc $E703.w,X		; FD 03 E7
	asl $FE32.w,X		; 1E 32 FE
	php		; 08
	nop		; EA
	ora $0BA0.w,Y		; 19 A0 0B
	dex		; CA
	wai		; CB
	sbc ($0F.b),Y		; F1 0F
	eor $E5BFCA.l		; 4F CA BF E5
	and [$27.b]		; 27 27
	cpx #$F4C0.w		; E0 C0 F4
	cpx $0D.b		; E4 0D
	bmi -65.b		; 30 BF
	rti		; 40

	rti		; 40

	sed		; F8
	sta $E6E6FE.l		; 8F FE E6 E6
	cmp $00B191.l,X		; DF 91 B1 00
	lda $F4DF00.l		; AF 00 DF F4
	ora [$22.b]		; 07 22
	sbc ($E7.b,X)		; E1 E7
	ora $205F.w,Y		; 19 5F 20
	lda $29BF4F.l,X		; BF 4F BF 29
	cmp $B2.b		; C5 B2
	cld		; D8
.ACCU 8
	sep #$E5		; E2 E5
	cpx #$9E09.w		; E0 09 9E
	cmp [$E0.b]		; C7 E0
	beq  12.b		; F0 0C
	rts		; 60

	bvs  80.b		; 70 50
	ldx $F5.b		; A6 F5
	jsr ($2BD5.w,X)		; FC D5 2B
	pld		; 2B
	adc [$01.b],Y		; 77 01
	inc $FDFF.w		; EE FF FD
	sbc $707F.w,Y		; F9 7F 70
	sbc #$FC.b		; E9 FC
	sbc $63B3FD.l,X		; FF FD B3 63
	jmp ($DBC8.w)		; 6C C8 DB
	bpl  23.b		; 10 17
	bpl -31.b		; 10 E1
	ora $1CFC6A.l,X		; 1F 6A FC 1C
	ora ($0C.b,S),Y		; 13 0C
	and $27DF13.l		; 2F 13 DF 27
	ora $07FEEF.l,X		; 1F EF FE 07
	cpx $7C.b		; E4 7C
	sbc [$FF.b]		; E7 FF
	tda		; 7B
	dec $BB87.w		; CE 87 BB
	sta ($7B.b,X)		; 81 7B
	ora ($08.b,X)		; 01 08
	nop		; EA
	xce		; FB
	ror $18.b		; 66 18
	brk $F9.b		; 00 F9
	jsr ($FE30.w,X)		; FC 30 FE
	jmp ($ECB4.w,X)		; 7C B4 EC
	ora $76F1.w,Y		; 19 F1 76
	sbc $6BE0F1.l,X		; FF F1 E0 6B
	cpy #$A0E7.w		; C0 E7 A0
	stp		; DB
	bvc  61.b		; 50 3D
	jsr $E047.w		; 20 47 E0
	ora #$06.b		; 09 06
	sbc $091785.l,X		; FF 85 17 09
	and $1F6F17.l		; 2F 17 6F 1F
	cmp $C33F24.l,X		; DF 24 3F C3
	rol $E1.b,X		; 36 E1
	sbc $EB05.w,X		; FD 05 EB
	brk $9F.b		; 00 9F
	dex		; CA
	sbc ($FE.b,X)		; E1 FE
	sbc [$EF.b],Y		; F7 EF
	adc $FFE306.l,X		; 7F 06 E3 FF
	sbc $4A83AA.l,X		; FF AA 83 4A
	eor $55.b,X		; 55 55
	tax		; AA
	jsr ($E365.w,X)		; FC 65 E3
	adc $FF09F0.l,X		; 7F F0 09 FF
	sed		; F8
	asl A		; 0A
	lda $A8E09A.l		; AF 9A E0 A8
	eor [$FF.b],Y		; 57 FF
	beq -32.b		; F0 E0
	sed		; F8
	ora $E366.w		; 0D 66 E3
	cpx #$5EFF.w		; E0 FF 5E
	sbc ($FF.b),Y		; F1 FF
	mvn $3B,$55		; 54 55 3B
	cpx #$24FE.w		; E0 FE 24
	inc $E0.b		; E6 E0
	jsr ($E1AC.w,X)		; FC AC E1
	cmp $E0E2.w,Y		; D9 E2 E0
	sed		; F8
	asl A		; 0A
	lsr A		; 4A
	xba		; EB
	lda $FDFF42.l,X		; BF 42 FF FD
	ora $1CFCFE.l		; 0F FE FC 1C
	ora $2A.b,S		; 03 2A
	xba		; EB
	cpx #$04FC.w		; E0 FC 04
	jsr ($B900.w,X)		; FC 00 B9
	sbc ($B0.b),Y		; F1 B0
	cpy #$E2FF.w		; C0 FF E2
	cpy #$68FA.w		; C0 FA 68
	cpx #$09F8.w		; E0 F8 09
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	cpx #$F8.b		; E0 F8
	ora #$01.b		; 09 01
	ora ($FC.b,X)		; 01 FC
	cpy #$63.b		; C0 63
	cpy #$F8.b		; C0 F8
	ora #$FE.b		; 09 FE
	adc $D0.b,X		; 75 D0
	cmp ($E9.b)		; D2 E9
	inx		; E8
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	sbc $C0E7.w,X		; FD E7 C0
	asl $B2.b		; 06 B2
	cmp $D840.w,Y		; D9 40 D8
	ora #$58.b		; 09 58
	eor $1F.b,X		; 55 1F
	cmp $F0.b,X		; D5 F0
	cpx #$F8.b		; E0 F8
	ora #$2B.b		; 09 2B
	cmp $EB35.w,X		; DD 35 EB
	jsr $9EDF.w		; 20 DF 9E
	inx		; E8
	asl A		; 0A
	eor $F5.b,X		; 55 F5
	phb		; 8B
	jsr ($F8C0.w,X)		; FC C0 F8
	asl A		; 0A
	cpx #$EF.b		; E0 EF
	jsr $0BF0.w		; 20 F0 0B
	cpx #$F8.b		; E0 F8
	tas		; 1B
	txy		; 9B
	sbc ($E0.b,X)		; E1 E0
	sbc $FD03.w,X		; FD 03 FD
	sta $FF.b		; 85 FF
	ora [$FA.b]		; 07 FA
	cpx #$F8.b		; E0 F8
	phd		; 0B
	phb		; 8B
	ora [$00.b]		; 07 00
	ldx $7DF4.w		; AE F4 7D
	cpy $CD.b		; C4 CD
	iny		; C8
	xce		; FB
	sbc $5F80A7.l,X		; FF A7 80 5F
	ldx #$E9.b		; A2 E9
	sbc $E0F740.l		; EF 40 F7 E0
	ora $033F01.l		; 0F 01 3F 03
	eor $7DBF33.l		; 4F 33 BF 7D
	sbc $7F5F.w		; ED 5F 7F
	ply		; 7A
	cmp ($BF.b),Y		; D1 BF
	ora $630F1F.l,X		; 1F 1F 0F 63
	sbc ($5F.b),Y		; F1 5F
	sbc ($54.b)		; F2 54
	stz $D9.b		; 64 D9
	ora $3F.b,S		; 03 3F
	inc $18.b		; E6 18
	php		; 08
	phk		; 4B
	brk $55.b		; 00 55
	brk $AA.b		; 00 AA
	jsr ($93AB.w,X)		; FC AB 93
	sbc $07FBFF.l,X		; FF FF FB 07
	cmp $878F37.l		; CF 37 8F 87
	ora $3718.w,X		; 1D 18 37
	jsr $40CF.w		; 20 CF 40
	cmp $808F40.l,X		; DF 40 8F 80
	inc A		; 1A
	sbc $18F7.w,X		; FD F7 18
	pea $E2A6.w		; F4 A6 E2
	and $F318FE.l,X		; 3F FE 18 F3
	tax		; AA
	rol A		; 2A
	sbc $BFF5.w,X		; FD F5 BF
	adc $EF0F9A.l		; 6F 9A 0F EF
	ora [$F8.b]		; 07 F8
	brk $FD.b		; 00 FD
	adc ($C2.b),Y		; 71 C2
	brk $D5.b		; 00 D5
	brk $FA.b		; 00 FA
	dec A		; 3A
	phx		; DA
	beq -52.b		; F0 CC
	bit $E5.b,X		; 34 E5
	inc $A0E0.w,X		; FE E0 A0
	asl A		; 0A
	sbc $C2.b,S		; E3 C2
	eor ($0F.b,S),Y		; 53 0F
	cli		; 58
	cmp [$81.b]		; C7 81
	sbc $F5A07E.l,X		; FF 7E A0 F5
	lda $2887.w,Y		; B9 87 28
	sbc $4D.b,S		; E3 4D
	bra -128.b		; 80 80
	sbc $2815.w,X		; FD 15 28
	plp		; 28
	bra 123.b		; 80 7B
	asl A		; 0A
	phx		; DA
	iny		; C8
	cmp #$80.b		; C9 80
	sbc $00EA.w,X		; FD EA 00
	cmp [$80.b],Y		; D7 80
	ora $7F.b		; 05 7F
	stz $B780.w		; 9C 80 B7
	bcc 127.b		; 90 7F
	bvc  -9.b		; 50 F7
	ldy #$6F.b		; A0 6F
	bra -17.b		; 80 EF
	bra  30.b		; 80 1E
	tsb $EC.b		; 04 EC
	adc $07BF0F.l,X		; 7F 0F BF 07
	jsr ($F19A.w,X)		; FC 9A F1
	bra -120.b		; 80 88
	trb $FC.b		; 14 FC
	sbc $0152A0.l		; EF A0 52 01
	trb $7E.b		; 14 7E
	jsr ($E0D8.w,X)		; FC D8 E0
	phd		; 0B
	inc $0BF8.w,X		; FE F8 0B
	cpx #$50.b		; E0 50
	brk $8E.b		; 00 8E
	dey		; 88
	lsr $F80E.w,X		; 5E 0E F8
	rol $FB62.w,X		; 3E 62 FB
	ply		; 7A
	sbc $0EF101.l,X		; FF 01 F1 0E
	cmp $0FF0.w,Y		; D9 F0 0F
	sta $FE3C70.l		; 8F 70 3C FE
	plx		; FA
	sbc $FB02.w,X		; FD 02 FB
	tsb $E0.b		; 04 E0
	ora [$F7.b]		; 07 F7
	rts		; 60

	adc [$40.b]		; 67 40
	clc		; 18
	tyx		; BB
	ora $FCBF2A.l,X		; 1F 2A BF FC
	cmp $0FEA36.l,X		; DF 36 EA 0F
	adc $44F164.l,X		; 7F 64 F1 44
	cpy $80FC.w		; CC FC 80
	sbc ($D8.b,X)		; E1 D8
	ldy #$E4.b		; A0 E4
	jsl $9F02F3.l		; 22 F3 02 9F
	cpx #$F7.b		; E0 F7
	ora $ED.b		; 05 ED
	php		; 08
	sbc $252AE7.l,X		; FF E7 2A 25
	sbc $FFFA.w,X		; FD FA FF
	sta $FFFCFB.l,X		; 9F FB FC FF
	sed		; F8
	sbc $707BF3.l,X		; FF F3 7B 70
	adc $0F48.w,X		; 7D 48 0F
	brk $5F.b		; 00 5F
	rti		; 40

	brk $1F.b		; 00 1F
	cpy #$FC.b		; C0 FC
	pei ($87.b)		; D4 87
	sbc $50BF83.l,X		; FF 83 BF 50
	cmp ($C3.b,X)		; C1 C3
	sbc $FCBC.w,X		; FD BC FC
	and ($FC.b,X)		; 21 FC
	jsr ($FC71.w,X)		; FC 71 FC
	ror A		; 6A
	sei		; 78
	asl $76.b		; 06 76
	cld		; D8
	asl A		; 0A
	rol $E0E4.w		; 2E E4 E0
	inc $8701.w,X		; FE 01 87
	dec $A0BB.w		; CE BB A0
	adc $7F.b		; 65 7F
	lda $0AF8E4.l,X		; BF E4 F8 0A
	cmp $47BF30.l		; CF 30 BF 47
	adc $FEE09B.l,X		; 7F 9B E0 FE
	sbc $1EBF.w,Y		; F9 BF 1E
	ora $F0F1E1.l		; 0F E1 F1 F0
	bit $F8.b		; 24 F8
	ora $8040.w		; 0D 40 80
	sbc $9B57A8.l,X		; FF A8 57 9B
	lda ($5F.b,X)		; A1 5F
	eor [$EB.b]		; 47 EB
	plx		; FA
	ldx $A032.w,Y		; BE 32 A0
.INDEX 16
	rep #$DB		; C2 DB
	inc $BFFF.w,X		; FE FF BF
	eor $5EF1E0.l		; 4F E0 F1 5E
	sbc ($C1.b,S),Y		; F3 C1
	brk $0A.b		; 00 0A
	eor $15.b,S		; 43 15
	jsr ($F895.w,X)		; FC 95 F8
	clc		; 18
	adc $6EFEE4.l		; 6F E4 FE 6E
	cmp ($3C.b)		; D2 3C
	nop		; EA
	bvc  85.b		; 50 55
	clc		; 18
	sbc $2CC12E.l,X		; FF 2E C1 2C
	phx		; DA
	inc $09F8.w,X		; FE F8 09
	rti		; 40

	nop		; EA
	rol $0BE0.w,X		; 3E E0 0B
	sbc $7817.w,Y		; F9 17 78
	lda $01FE.w,Y		; B9 FE 01
	lsr $F481.w,X		; 5E 81 F4
	cop $EB.b		; 02 EB
	jsr $09D0.w		; 20 D0 09
	inc $36F0.w,X		; FE F0 36
	bit $C9FF.w,X		; 3C FF C9
	sbc $605FF7.l,X		; FF F7 5F 60
	dey		; 88
	lda $F07F80.l,X		; BF 80 7F F0
	lda ($80.b,X)		; A1 80
	ldx #$004B.w		; A2 4B 00
	sta [$00.b],Y		; 97 00
	ldx $8F39.w,Y		; BE 39 8F
	brk $CD.b		; 00 CD
	inc $EB.b		; E6 EB
	inc $F764.w,X		; FE 64 F7
	rts		; 60

	sbc ($CF.b),Y		; F1 CF
	lsr $1ABF.w,X		; 5E BF 1A
	jsr $00D2.w		; 20 D2 00
	tsx		; BA
	ora ($F6.b,X)		; 01 F6
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	sbc $FFFC.w,X		; FD FC FF
	xce		; FB
	sbc $757047.l,X		; FF 47 70 75
	ldy #$2AFC.w		; A0 FC 2A
	sta ($0C.b)		; 92 0C
	rti		; 40

	eor $FF.b		; 45 FF
	cmp [$CC.b]		; C7 CC
	cpy #$0AD8.w		; C0 D8 0A
	sbc $575655.l,X		; FF 55 56 57
	jsr ($CE0F.w,X)		; FC 0F CE
	jsr $10F0.w		; 20 F0 10
	cpx #$FEFE.w		; E0 FE FE
	inc $EAAE.w,X		; FE AE EA
	cpx #$0BF8.w		; E0 F8 0B
	ora $05.b		; 05 05
	cmp $E0DB.w		; CD DB E0
	sbc $1AE2.w,X		; FD E2 1A
	jsr ($F8E0.w,X)		; FC E0 F8
	ora #$A6E2.w		; 09 E2 A6
	eor $F4.b,X		; 55 F4
	cpx #$C6BF.w		; E0 BF C6
	ldy $81A9.w		; AC A9 81
	inc $F6DC.w,X		; FE DC F6
	lda $E50DAF.l		; AF AF 0D E5
	lda ($E1.b,X)		; A1 E1
	cmp [$24.b],Y		; D7 24
	sbc ($81.b),Y		; F1 81
	cpx #$E109.w		; E0 09 E1
	asl $2FDF.w,X		; 1E DF 2F
	rts		; 60

	sbc $98AAAA.l,X		; FF AA AA 98
	sbc ($70.b)		; F2 70
	sed		; F8
	ora $F0C4.w		; 0D C4 F0
	asl $F8FE.w		; 0E FE F8
	ora $E9BA.w		; 0D BA E9
	rts		; 60

	cpy #$EA0B.w		; C0 0B EA
	cmp $DFE9.w,Y		; D9 E9 DF
	tax		; AA
	beq -92.b		; F0 A4
	dec $B0FF.w		; CE FF B0
	ora $0EF8C0.l		; 0F C0 F8 0E
	ldy $BE.b		; A4 BE
	cpx #$0DF8.w		; E0 F8 0D
	bit $FB.b		; 24 FB
	brk $65.b		; 00 65
	lda $004C.w,X		; BD 4C 00
	stp		; DB
	lda $3C0BB0.l,X		; BF B0 0B 3C
	sbc $ED56DB.l,X		; FF DB 56 ED
	cpx #$FD5F.w		; E0 5F FD
	inc $01F0.w,X		; FE F0 01
	inc $01.b		; E6 01
	cpx $D2F6.w		; EC F6 D2
	pla		; 68
	sbc $FF.b,S		; E3 FF
	sbc $78DF.w,X		; FD DF 78
	ora [$E0.b]		; 07 E0
	plb		; AB
	nop		; EA
	ora $3F3FC0.l,X		; 1F C0 3F 3F
	sbc ($FF.b),Y		; F1 FF
	inc $02.b,X		; F6 02
	cpx $F080.w		; EC 80 F0
	ora #$ED7F.w		; 09 7F ED
	sta ($A9.b),Y		; 91 A9
	cop $F7.b		; 02 F7
	sbc $050406.l		; EF 06 04 05
	tsb $50.b		; 04 50
	sbc $FC03FE.l		; EF FE 03 FC
	ora [$F9.b]		; 07 F9
	ora [$FB.b]		; 07 FB
	cpx #$F0FE.w		; E0 FE F0
	cmp $0CF01F.l,X		; DF 1F F0 0C
	tsb $02F6.w		; 0C F6 02
	sbc $EF30.w,Y		; F9 30 EF
	beq  15.b		; F0 0F
	jsr ($FEE3.w,X)		; FC E3 FE
	sbc $5415.w,Y		; F9 15 54
	sta ($FF.b,X)		; 81 FF
	sed		; F8
	sta $705C.w,Y		; 99 5C 70
	and ($D0.b,S),Y		; 33 D0
	cpx #$D61F.w		; E0 1F D6
	clc		; 18
	asl A		; 0A
	lsr $30.b		; 46 30
	ora ($AD.b)		; 12 AD
	ldx #$FFF0.w		; A2 F0 FF
.INDEX 16
	rep #$18		; C2 18
	ora #$FE06.w		; 09 06 FE
	inc $4420.w,X		; FE 20 44
	beq  -8.b		; F0 F8
	ora #$54FE.w		; 09 FE 54
	sta $A4.b,X		; 95 A4
	trb $85B4.w		; 1C B4 85
	inc $0BF8.w,X		; FE F8 0B
	.db $42, $68		; 42 68
	asl A		; 0A
	cpy $70.b		; C4 70
	ora $2974.w		; 0D 74 29
	eor $AB.b,X		; 55 AB
	inc $4820.w,X		; FE 20 48
	ora $E2.b,X		; 15 E2
	inc $F8FE.w,X		; FE FE F8
	and ($86.b,X)		; 21 86
	pha		; 48
	tas		; 1B
	sty $FE.b		; 84 FE
	sbc $0BF812.l,X		; FF 12 F8 0B
	ldx #$22AA.w		; A2 AA 22
	sed		; F8
	phd		; 0B
	sbc ($22.b)		; F2 22
	inc $FEC8.w,X		; FE C8 FE
	beq  -2.b		; F0 FE
	cpx $F2FE.w		; EC FE F2
	sbc $E6AAAA.l,X		; FF AA AA E6
	beq  21.b		; F0 15
	rol $58.b,X		; 36 58
	ora ($78.b),Y		; 11 78
	sed		; F8
	ora $23F852.l		; 0F 52 F8 23
	inc $F0.b,X		; F6 F0
	phd		; 0B
	sbc $E02AF8.l,X		; FF F8 2A E0
	plp		; 28
	ora $EA.b,X		; 15 EA
	sed		; F8
	ora ($AA.b),Y		; 11 AA
	tax		; AA
	ldx $28.b,Y		; B6 28
	ora $A0.b,X		; 15 A0
	plp		; 28
	ora [$D2.b],Y		; 17 D2
	sed		; F8
	jsl $0AF0D0.l		; 22 D0 F0 0A
	asl $0CF8.w,X		; 1E F8 0C
	.db $42, $F0		; 42 F0
	ora $F4B6.w,Y		; 19 B6 F4
	dex		; CA
	beq  17.b		; F0 11
	lsr $55.b,X		; 56 55
	ror A		; 6A
	beq  11.b		; F0 0B
	phy		; 5A
	sbc ($C4.b)		; F2 C4
	eor ($F0.b)		; 52 F0
	asl A		; 0A
	ldx $70.b		; A6 70
	ora #$F0A8.w		; 09 A8 F0
	ora $CA.b,X		; 15 CA
	inx		; E8
	ora ($86.b,S),Y		; 13 86
	bvc  25.b		; 50 19
	ldy $2FE0.w		; AC E0 2F
	eor $27.b,X		; 55 27
	asl $FEED.w,X		; 1E ED FE
	sed		; F8
	lsr $5C.b		; 46 5C
	lsr $16.b		; 46 16
	jsr ($E4C4.w,X)		; FC C4 E4
	cop $A0.b		; 02 A0
	inc $D555.w,X		; FE 55 D5
	inc $E832.w		; EE 32 E8
	clc		; 18
	rol $1C.b		; 26 1C
	sta [$BC.b]		; 87 BC
	sbc $10F89A.l,X		; FF 9A F8 10
	cld		; D8
	sbc ($26.b)		; F2 26
	cpx #$6C0D.w		; E0 0D 6C
	pla		; 68
	phd		; 0B
	tax		; AA
	eor ($0A.b)		; 52 0A
	plx		; FA
	ora #$F8FF.w		; 09 FF F8
	and $DAFEB8.l		; 2F B8 FE DA
	sed		; F8
	ora $FE0F60.l,X		; 1F 60 0F FE
	rti		; 40

	eor ($59.b)		; 52 59
	inc $1075.w,X		; FE 75 10
	bvc  96.b		; 50 60
	sed		; F8
	clc		; 18
	sty $F8.b		; 84 F8
	ora ($82.b),Y		; 11 82
	dec $1EF8.w		; CE F8 1E
	eor $95.b,X		; 55 95
	cmp ($F8.b)		; D2 F8
	asl A		; 0A
	cld		; D8
	pha		; 48
	bvc  66.b		; 50 42
	cld		; D8
	and #$D80C.w		; 29 0C D8
	ora ($AA.b),Y		; 11 AA
	sed		; F8
	ora $22CA.w,X		; 1D CA 22
	bvs -48.b		; 70 D0
	ora #$5555.w		; 09 55 55
	inc $D73C.w,X		; FE 3C D7
	inc $56FE.w,X		; FE FE 56
	cld		; D8
	phd		; 0B
	rol $0CD8.w		; 2E D8 0C
	pha		; 48
	sbc $4A.b,S		; E3 4A
	jsr $6821.w		; 20 21 68
	sed		; F8
	asl A		; 0A
	eor $55.b,X		; 55 55
	stz $3A1F.w,X		; 9E 1F 3A
	ora ($08.b),Y		; 11 08
	cpx #$AA09.w		; E0 09 AA
	sed		; F8
	ora $72FDE8.l		; 0F E8 FD 72
	plp		; 28
	phd		; 0B
	cpy $13F0.w		; CC F0 13
	stx $F0.b		; 86 F0
	tsb $90A9.w		; 0C A9 90
	lsr $30.b,X		; 56 30
	trb $FE.b		; 14 FE
	mvp $4D,$0C		; 44 0C 4D
	sed		; F8
	.db $42, $55		; 42 55
	eor $FE.b,X		; 55 FE
	bcc  80.b		; 90 50
	ora ($20.b),Y		; 11 20
	rti		; 40

	and ($30.b,S),Y		; 33 30
	beq  53.b		; F0 35
	dec $F8.b,X		; D6 F8
	and $9A.b,X		; 35 9A
	sed		; F8
	pld		; 2B
	stz $38.b,X		; 74 38
	eor #$E8AE.w		; 49 AE E8
	ora #$5555.w		; 09 55 55
	trb $BCC2.w		; 1C C2 BC
	rti		; 40

	ora $E4EE8C.l,X		; 1F 8C EE E4
	clv		; B8
	ora $17B8AE.l		; 0F AE B8 17
	stx $D0.b,Y		; 96 D0
	ora $193010.l		; 0F 10 30 19
	stz $E8.b,X		; 74 E8
	phd		; 0B
	cmp ($AC.b,S),Y		; D3 AC
	sei		; 78
	sbc #$FEA0.w		; E9 A0 FE
	ora ($20.b,X)		; 01 20
	lsr $EBBC.w,X		; 5E BC EB
	tax		; AA
	tax		; AA
	ldx $4EBD.w		; AE BD 4E
	inx		; E8
	tsb $EE36.w		; 0C 36 EE
	tax		; AA
	clv		; B8
	ora #$E81C.w		; 09 1C E8
	asl $4C.b,X		; 16 4C
	inx		; E8
	clc		; 18
	inc $4BF8.w,X		; FE F8 4B
	clv		; B8
	cpy $1AAA.w		; CC AA 1A
	sed		; F8
	inc $66.b,X		; F6 66
	clv		; B8
	ora ($1A.b,S),Y		; 13 1A
	cpx #$3A11.w		; E0 11 3A
	clv		; B8
	ora $A4.b,X		; 15 A4
	bne  37.b		; D0 25
	pla		; 68
	clv		; B8
	phd		; 0B
	tsb $EC.b		; 04 EC
	eor ($C1.b,X)		; 41 C1
	jmp $ECFAFE.l		; 5C FE FA EC
	cpx #$C50F.w		; E0 0F C5
	inc $0085.w,X		; FE 85 00
	bne  11.b		; D0 0B
	eor $51.b,X		; 55 51
	ror $0CB0.w,X		; 7E B0 0C
	inc $16FC.w,X		; FE FC 16
	cmp ($FE.b)		; D2 FE
	sed		; F8
	ora $C6B74E.l		; 0F 4E B7 C6
	inc A		; 1A
	plp		; 28
	and $15.b,X		; 35 15
	stz $5C.b		; 64 5C
	dec $7C.b		; C6 7C
	jsr ($FE5C.w,X)		; FC 5C FE
	inc $D062.w,X		; FE 62 D0
	bit $6A.b		; 24 6A
	and $AB.b		; 25 AB
	clv		; B8
	jmp.w [$C97C]		; DC 7C C9
	ror $CF6C.w		; 6E 6C CF
	.db $82, $5A, $F8		; 82 5A F8
	ora #$C856.w		; 09 56 C8
	asl A		; 0A
	tax		; AA
	tax		; AA
	lsr $F8.b		; 46 F8
	asl A		; 0A
	cpy #$0CC0.w		; C0 C0 0C
	cld		; D8
	cpx #$0043.w		; E0 43 00
	sed		; F8
	and ($56.b,S),Y		; 33 56
	beq  15.b		; F0 0F
	ror A		; 6A
	trb $F4.b		; 14 F4
	pea $F26E.w		; F4 6E F2
	eor $55.b,X		; 55 55
	stz $0FA8.w,X		; 9E A8 0F
	mvp $FF,$FE		; 44 FE FF
	pea $0BF8.w		; F4 F8 0B
	cpx $09F8.w		; EC F8 09
	cld		; D8
	sed		; F8
	ora ($E8.b),Y		; 11 E8
	sed		; F8
	ora #$D068.w		; 09 68 D0
	ora $C024.w,Y		; 19 24 C0
	ora $5549.w		; 0D 49 55
	cld		; D8
	sed		; F8
	phd		; 0B
	pea $F8B8.w		; F4 B8 F8
	ora #$E8BC.w		; 09 BC E8
	ora #$F45E.w		; 09 5E F4
	.db $42, $C0		; 42 C0
	ora $29B0E6.l,X		; 1F E6 B0 29
	eor $45.b,X		; 55 45
	tsb $3CE3.w		; 0C E3 3C
	sbc ($FE.b,S),Y		; F3 FE
	jsr ($BBAA.w,X)		; FC AA BB
	dec $09D8.w,X		; DE D8 09
	cmp ($CF.b)		; D2 CF
	inc $5555.w,X		; FE 55 55
	asl $18A8.w		; 0E A8 18
	nop		; EA
	cpx $D0D8.w		; EC D8 D0
	ora $C0F8.w,X		; 1D F8 C0
	jsl $1C98D0.l		; 22 D0 98 1C
	jmp ($25E0.w,X)		; 7C E0 25
	inc $E4.b		; E6 E4
	mvn $55,$26		; 54 26 55
	cmp $92.b,X		; D5 92
	cld		; D8
	phd		; 0B
	rol $E8.b,X		; 36 E8
	ora ($84.b,S),Y		; 13 84
	inx		; E8
	ora $E036.w,Y		; 19 36 E0
	ora ($54.b),Y		; 11 54
	iny		; C8
	phd		; 0B
	tsx		; BA
	cpx #$C611.w		; E0 11 C6
	clc		; 18
	ora $E8A0.w		; 0D A0 E8
	asl $A4AD.w		; 0E AD A4
	rti		; 40

	ora $FE.b		; 05 FE
	sed		; F8
	ora #$FEC0.w		; 09 C0 FE
	sbc $14F89E.l,X		; FF 9E F8 14
	jmp ($C882.w)		; 6C 82 C8
	and $FE.b,S		; 23 FE
	sbc $FCF8FF.l,X		; FF FF F8 FC
	sbc $A87BF8.l,X		; FF F8 7B A8
	sbc $FF5F.w,X		; FD 5F FF
	sbc $11F7.w		; ED F7 11
	and $E6030D.l		; 2F 0D 03 E6
	sbc ($52.b,X)		; E1 52
	sbc $F351FB.l,X		; FF FB 51 F3
	sbc ($DB.b),Y		; F1 DB
	sed		; F8
	adc $6978.w,Y		; 79 78 69
	sei		; 78
	cmp [$D7.b],Y		; D7 D7
	sta $BF51.w,X		; 9D 51 BF
	lda $FFFFFF.l		; AF FF FF FF
	asl $07FE.w		; 0E FE 07
	cmp $87FF87.l,X		; DF 87 FF 87
	sbc $FF20DF.l		; EF DF 20 FF
	bra -10.b		; 80 F6
	bit #$C0FF.w		; 89 FF C0
	lda $C4FB31.l,X		; BF 31 FB C4
	sbc $F87FE0.l,X		; FF E0 7F F8
	and $805905.l,X		; 3F 05 59 80
	sbc $1DDEC0.l,X		; FF C0 DE 1D
	sbc $F8E0E0.l,X		; FF E0 E0 F8
	cpx #$FF61.w		; E0 61 FF
	bpl  41.b		; 10 29
	ply		; 7A
	inc $09.b,X		; F6 09
	cpx #$DACA.w		; E0 CA DA
	plx		; FA
	cmp $3CF521.l,X		; DF 21 F5 3C
	ldy #$0B10.w		; A0 10 0B
	tda		; 7B
	cpx $DCC3.w		; EC C3 DC
	inc $E80E.w,X		; FE 0E E8
	bpl  -2.b		; 10 FE
	ora ($F7.b,X)		; 01 F7
	php		; 08
	inx		; E8
	stp		; DB
	ldy $44.b,X		; B4 44
	bit $E2.b		; 24 E2
	sbc $8002.w,X		; FD 02 80
	plp		; 28
	ora ($EC.b),Y		; 11 EC
	plb		; AB
	sec		; 38
	cpy #$11EF.w		; C0 EF 11
	bvc  89.b		; 50 59
	ldx $A059.w		; AE 59 A0
	sed		; F8
	ora ($E2.b)		; 12 E2
	cmp $028824.l,X		; DF 24 88 02
	cld		; D8
	ora ($41.b)		; 12 41
	dec $F8A0.w,X		; DE A0 F8
	ora ($66.b),Y		; 11 66
	ora ($82.b,X)		; 01 82
	stz $F6E2.w,X		; 9E E2 F6
	sed		; F8
	plp		; 28
	sta ($0D.b,S),Y		; 93 0D
	php		; 08
	bpl -64.b		; 10 C0
	cli		; 58
	phy		; 5A
	inc $75D8.w,X		; FE D8 75
	brk $E0.b		; 00 E0
	sed		; F8
	bpl  32.b		; 10 20
	ror A		; 6A
	eor ($12.b)		; 52 12
	jmp ($847F.w)		; 6C 7F 84
	ldy $EDEE.w,X		; BC EE ED
	iny		; C8
	and $0DF8.w,X		; 3D F8 0D
	cop $71.b		; 02 71
	eor ($DE.b,X)		; 41 DE
	jsr ($42FD.w,X)		; FC FD 42
	jsr ($D846.w,X)		; FC 46 D8
	cpx $F8DE.w		; EC DE F8
	ora #$8002.w		; 09 02 80
	stx $EF.b		; 86 EF
	bpl  98.b		; 10 62
	sbc $B9E0.w,X		; FD E0 B9
	ora $54.b		; 05 54
	rts		; 60

	sed		; F8
	ora ($00.b)		; 12 00
	lda [$48.b],Y		; B7 48
	cpy #$FF12.w		; C0 12 FF
	ora ($80.b,S),Y		; 13 80
	jsr $DF13.w		; 20 13 DF
	cpx $C7.b		; E4 C7
	sei		; 78
	sbc ($7E.b,X)		; E1 7E
	beq  63.b		; F0 3F
	sbc $FEBE0C.l,X		; FF 0C BE FE
	adc [$BC.b],Y		; 77 BC
	xce		; FB
	eor $7F7F5F.l,X		; 5F 5F 7F 7F
	and $0C0C3F.l,X		; 3F 3F 0C 0C
	tsb $8D.b		; 04 8D
	ora ($F4.b,X)		; 01 F4
	sbc $F1C4F1.l,X		; FF F1 C4 F1
	ora ($FE.b,X)		; 01 FE
	jsr ($FF1F.w,X)		; FC 1F FF
	ora $77.b,S		; 03 77
	dey		; 88
	adc ($FE.b)		; 72 FE
	stp		; DB
	dec $FB.b,X		; D6 FB
	stp		; DB
	ora [$23.b]		; 07 23
	ora $A06903.l,X		; 1F 03 69 A0
	eor $10.b,S		; 43 10
	bpl  -8.b		; 10 F8
	.db $62, $69, $0F		; 62 69 0F
	beq -61.b		; F0 C3
	adc $F7FC1D.l,X		; 7F 1D FC F7
	trb $9C73.w		; 1C 73 9C
	inc $EFFF.w,X		; FE FF EF
	rol A		; 2A
	eor ($FF.b),Y		; 51 FF
	jsr ($1B1B.w,X)		; FC 1B 1B
	inc $DA1F.w,X		; FE 1F DA
	tsa		; 3B
	and $787B.w,Y		; 39 7B 78
	xce		; FB
	sed		; F8
	adc ($70.b),Y		; 71 70
	and ($31.b),Y		; 31 31
	rol $FE3E.w,X		; 3E 3E FE
	sbc $0F0FAA.l,X		; FF AA 0F 0F
	dec $FE.b		; C6 FE
	sta [$FF.b]		; 87 FF
	ora [$77.b]		; 07 77
	sta $BECEFF.l		; 8F FF CE BE
	cmp ($EF.b,X)		; C1 EF
	adc [$F8.b],Y		; 77 F8
	cpy #$F0FE.w		; C0 FE F0
	sbc $923245.l		; EF 45 32 92
	adc $025A.w,X		; 7D 5A 02
	ora ($0D.b,X)		; 01 0D
	tsb $1C81.w		; 0C 81 1C
	jsr ($A2FC.w,X)		; FC FC A2
	iny		; C8
	ldx $F3FC.w,Y		; BE FC F3
	xce		; FB
	.db $42, $FB		; 42 FB
	cpx $01.b		; E4 01
	inc $80.b,X		; F6 80
	cpx $E9.b		; E4 E9
	cpx $E4.b		; E4 E4
	sbc #$7FF0.w		; E9 F0 7F
	inc $9877.w,X		; FE 77 98
	lda $7FFD7F.l,X		; BF 7F FD 7F
	cpx $EA.b		; E4 EA
	cpx #$FCE0.w		; E0 E0 FC
	beq -16.b		; F0 F0
	ldx $85.b		; A6 85
	pei ($BD.b)		; D4 BD
	lda $EF4A.w,X		; BD 4A EF
	bcc -92.b		; 90 A4
	pea $DAF0.w		; F4 F0 DA
	asl A		; 0A
	sed		; F8
	ora $DF0CF8.l,X		; 1F F8 0C DF
	adc $20.b,S		; 63 20
	ror $0B60.w,X		; 7E 60 0B
	sbc $B04E.w,X		; FD 4E B0
	bpl -24.b		; 10 E8
	jsr ($0AEA.w,X)		; FC EA 0A
	phx		; DA
	sed		; F8
	xba		; EB
	cpx #$12F0.w		; E0 F0 12
	nop		; EA
	jsr ($22DD.w,X)		; FC DD 22
	cld		; D8
	inc $F0C0.w,X		; FE C0 F0
	bpl  14.b		; 10 0E
	asl A		; 0A
	ldy #$F520.w		; A0 20 F5
	sbc $CE3A10.l		; EF 10 3A CE
	and ($FF.b,X)		; 21 FF
	sed		; F8
	asl $6F6A.w		; 0E 6A 6F
	inc $353E.w		; EE 3E 35
	cmp ($30.b,X)		; C1 30
	ora $EA.b,X		; 15 EA
	jsr ($E044.w,X)		; FC 44 E0
	sed		; F8
	tas		; 1B
	adc $BCDF81.l,X		; 7F 81 DF BC
	xba		; EB
	xce		; FB
	lsr A		; 4A
	asl A		; 0A
	bra  33.b		; 80 21
	cpx $FC7B.w		; EC 7B FC
	adc $EC.b,X		; 75 EC
	sbc ($ED.b)		; F2 ED
	txa		; 8A
	pla		; 68
	jsr ($84C2.w,X)		; FC C2 84
	sbc $C012.w,X		; FD 12 C0
	sed		; F8
	ora $F10AED.l		; 0F ED 0A F1
	adc $90D2B8.l		; 6F B8 D2 90
	cpy #$FF40.w		; C0 40 FF
	asl $A0E9.w,X		; 1E E9 A0
	sed		; F8
	ora ($E0.b),Y		; 11 E0
	lda $40FFAA.l,X		; BF AA FF 40
	ldy $43.b,X		; B4 43
	inc $E3.b,X		; F6 E3
	asl $0CC8.w		; 0E C8 0C
	adc ($09.b),Y		; 71 09
	sbc [$38.b]		; E7 38
	sta [$F8.b]		; 87 F8
	sta [$FC.b],Y		; 97 FC
	cmp $8F.b,S		; C3 8F
	tyx		; BB
	jmp ($3FF8.w,X)		; 7C F8 3F
	lda $447C43.l,X		; BF 43 7C 44
	and $EB41AC.l,X		; 3F AC 41 EB
	xba		; EB
	stx $7F.b		; 86 7F
	dec $00EA.w,X		; DE EA 00
	sbc ($40.b,S),Y		; F3 40
	sbc $E00484.l,X		; FF 84 04 E0
	brk $E0.b		; 00 E0
	ora ($3F.b,X)		; 01 3F
	bne 127.b		; D0 7F
	sta $A5.b		; 85 A5
	asl A		; 0A
	sbc $BFBF01.l,X		; FF 01 BF BF
	xce		; FB
	xce		; FB
	and ($52.b,S),Y		; 33 52
	bit $DCF2.w,X		; 3C F2 DC
	adc [$78.b],Y		; 77 78
	ora ($01.b,X)		; 01 01
	bit $D43C.w,X		; 3C 3C D4
	nop		; EA
	ora [$1F.b],Y		; 17 1F
	inc $30.b,X		; F6 30
	cmp ($1C.b,X)		; C1 1C
	cpx #$3E18.w		; E0 18 3E
	ldy $C3.b,X		; B4 C3
	sbc $E02F.w,X		; FD 2F E0
	sbc $FEF7E0.l,X		; FF E0 F7 FE
	cop $FC.b		; 02 FC
	jmp.w [$E4D4]		; DC D4 E4
	rti		; 40

	and $C38F90.l,X		; 3F 90 8F C3
	ora $A5C086.l		; 0F 86 C0 A5
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	beq -46.b		; F0 D2
	cpx #$E9.b		; E0 E9
	eor $FDF8EA.l		; 4F EA F8 FD
	adc $BD1DB9.l,X		; 7F B9 1D BD
	ora $E0C0FF.l		; 0F FF C0 E0
	sbc #$B0.b		; E9 B0
	lda $1FF00F.l,X		; BF 0F F0 1F
	brk $C0.b		; 00 C0
	bpl -98.b		; 10 9E
	asl $5F1F.w,X		; 1E 1F 5F
	cpx $D3.b		; E4 D3
	asl A		; 0A
	adc $4CF3AD.l		; 6F AD F3 4C
	ora #$A6.b		; 09 A6
	sbc ($FF.b,X)		; E1 FF
	ldy #$BE.b		; A0 BE
	cmp ($49.b,S),Y		; D3 49
	tyx		; BB
	bvc  85.b		; 50 55
	ora $19.b,S		; 03 19
	ora ($FE.b),Y		; 11 FE
	sbc $22.b,X		; F5 22
	cpx $20.b		; E4 20
	sed		; F8
	ora ($46.b),Y		; 11 46
	inc $DE.b,X		; F6 DE
	sbc $5557.w		; ED 57 55
	jsr $16F0.w		; 20 F0 16
	inc $BA01.w,X		; FE 01 BA
	inc $F8E0.w,X		; FE E0 F8
	ora $7A.b,X		; 15 7A
	sbc ($DA.b),Y		; F1 DA
	and $E0.b,S		; 23 E0
	sed		; F8
	ora ($AA.b),Y		; 11 AA
	jsr ($E555.w,X)		; FC 55 E5
	jsr $1EF0.w		; 20 F0 1E
	stz $FD.b		; 64 FD
	cpx #$F8.b		; E0 F8
	ora [$26.b],Y		; 17 26
	sbc ($E0.b)		; F2 E0
	sed		; F8
	phd		; 0B
	txy		; 9B
	cld		; D8
	phd		; 0B
	nop		; EA
	inc $025E.w		; EE 5E 02
	jsr $F9F2.w		; 20 F2 F9
	asl $C0.b		; 06 C0
	sed		; F8
	ora ($BB.b,S),Y		; 13 BB
	mvp $43,$D8		; 44 D8 43
	php		; 08
	xce		; FB
	tsb $DA.b		; 04 DA
	sbc #$54.b		; E9 54
	eor $F6.b,X		; 55 F6
	sbc $DA09F8.l,X		; FF F8 09 DA
	cpx $EBE2.w		; EC E2 EB
	jsr ($58F1.w,X)		; FC F1 58
	sbc $D8E0.w,X		; FD E0 D8
	bpl  65.b		; 10 41
	ora $EB62.w,Y		; 19 62 EB
	tsb $5E.b		; 04 5E
	cpx $E1B4.w		; EC B4 E1
	sbc $DA0404.l,X		; FF 04 04 DA
	tax		; AA
	cmp [$84.b]		; C7 84
	asl $E0.b		; 06 E0
	eor ($66.b)		; 52 66
	rti		; 40

	stz $EAEB.w		; 9C EB EA
	cpx $9FFA.w		; EC FA 9F
	ora $E16108.l		; 0F 08 61 E1
	adc $C09FF8.l,X		; 7F F8 9F C0
	asl $A7F8.w,X		; 1E F8 A7
	stz $EFDE.w,X		; 9E DE EF
	sbc $1B7F7F.l		; EF 7F 7F 1B
	txy		; 9B
	ora ($C0.b,X)		; 01 C0
	stz $7F.b,X		; 74 7F
	php		; 08
	dec $1080.w,X		; DE 80 10
	mvp $11,$9D		; 44 9D 11
	cpx #$FF.b		; E0 FF
	jsr ($FF0F.w,X)		; FC 0F FF
	sta ($EC.b,X)		; 81 EC
	asl $04B8.w,X		; 1E B8 04
	inx		; E8
	nop		; EA
	sbc $62FD.w,X		; FD FD 62
	ora #$0F.b		; 09 0F
	ora ($81.b,X)		; 01 81
	sbc $04B8AD.l,X		; FF AD B8 04
	rti		; 40

	mvn $00,$C0		; 54 C0 00
	ora $1903E0.l,X		; 1F E0 03 19
	eor #$D0.b		; 49 D0
	bcs  65.b		; B0 41
	and $F22C.w,X		; 3D 2C F2
	ora #$AB.b		; 09 AB
	jmp $DFE1.w		; 4C E1 DF
	adc $FA7D.w,X		; 7D 7D FA
	cmp [$D7.b],Y		; D7 D7
	stz $F4DC.w,X		; 9E DC F4
	lda $D40FFB.l		; AF FB 0F D4
	ora #$7F.b		; 09 7F
	jsr $387F.w		; 20 7F 38
	adc $C07F3E.l,X		; 7F 3E 7F C0
	ora ($BF.b),Y		; 11 BF
	inc $FCF0.w,X		; FE F0 FC
	eor $384720.l,X		; 5F 20 47 38
	eor ($3E.b,X)		; 41 3E
	dey		; 88
	and $B942.w,Y		; 39 42 B9
	cpy #$80.b		; C0 80
	cpx #$C0.b		; E0 C0
	beq -61.b		; F0 C3
	pea $F060.w		; F4 60 F0
	bvs  -2.b		; 70 FE
	bcs -80.b		; B0 B0
	beq  64.b		; F0 40
	bra  32.b		; 80 20
	ora $90C083.l		; 0F 83 C0 90
	rts		; 60

	bra 112.b		; 80 70
	inc $F040.w,X		; FE 40 F0
	dec $F07E.w		; CE 7E F0
	inc $EAFC.w,X		; FE FC EA
	eor ($7D.b,X)		; 41 7D
	sbc $F77F.w,X		; FD 7F F7
	adc $CE.b,X		; 75 CE
	inc $80FC.w,X		; FE FC 80
	adc $827838.l,X		; 7F 38 78 82
	inc $7F8A.w,X		; FE 8A 7F
	dec $FCFF.w		; CE FF FC
	clv		; B8
	clv		; B8
	sed		; F8
	tsb $10.b		; 04 10
	inc $CEFD.w,X		; FE FD CE
	inc $58FD.w,X		; FE FD 58
	sbc $0DFEF6.l,X		; FF F6 FE 0D
	clv		; B8
	ora $0FF8F0.l		; 0F F0 F8 0F
	sbc $F777.w,X		; FD 77 F7
	ror $72FA.w,X		; 7E FA 72
.ACCU 16
.INDEX 16
	rep #$F5		; C2 F5
	sta ($28.b,X)		; 81 28
	eor [$AE.b]		; 47 AE
	phb		; 8B
	adc $31C08F.l,X		; 7F 8F C0 31
	and $68A8F6.l		; 2F F6 A8 68
	adc $683818.l,X		; 7F 18 38 68
	clv		; B8
	pla		; 68
	cpy #$BCD0.w		; C0 D0 BC
	jsr ($8CFE.w,X)		; FC FE 8C
	cpy $1826.w		; CC 26 18
	jsr ($F8D0.w,X)		; FC D0 F8
	inc $40FF.w,X		; FE FF 40
	jsr ($EAA2.w,X)		; FC A2 EA
	inc $FC70.w,X		; FE 70 FC
	lda $714BFF.l		; AF FF 4B 71
	ror $58.b,X		; 76 58
	phd		; 0B
	bit $C072.w,X		; 3C 72 C0
	cpx #$405A.w		; E0 5A 40
	inc $FE98.w,X		; FE 98 FE
	ora $01.b,S		; 03 01
	inc $F0FC.w,X		; FE FC F0
	inc $CE02.w,X		; FE 02 CE
	cmp ($12.b),Y		; D1 12
	rol $FE.b		; 26 FE
	lda ($F2.b)		; B2 F2
	sbc $FAD1F7.l,X		; FF F7 D1 FA
	sta $4C.b		; 85 4C
	cmp $F1.b		; C5 F1
	and $FEE3.w,Y		; 39 E3 FE
	rol $D3FA.w		; 2E FA D3
	cmp $80.b,S		; C3 80
	bit $FE7C.w,X		; 3C 7C FE
	stz $9E5C.w		; 9C 5C 9E
	lsr $1EFE.w,X		; 5E FE 1E
	bmi -123.b		; 30 85
	dec $C0FE.w,X		; DE FE C0
	jsr ($E0FE.w,X)		; FC FE E0
	inc $546A.w,X		; FE 6A 54
	inc $FCFE.w,X		; FE FE FC
	ldy $FE.b,X		; B4 FE
	ldy #$0BF8.w		; A0 F8 0B
	ora $FE.b,S		; 03 FE
	ldy #$72FE.w		; A0 FE 72
	rep #$45		; C2 45
	jmp $FFC470.l		; 5C 70 C4 FF
	jsr ($FE6D.w,X)		; FC 6D FE
	jsr $FEE0.w		; 20 E0 FE
	inc $FDD7.w,X		; FE D7 FD
	dec $FE.b		; C6 FE
	ora [$03.b]		; 07 03
	inc $C8FC.w,X		; FE FC C8
	inc $0304.w,X		; FE 04 03
	inc $AFFC.w,X		; FE FC AF
	sbc $FFFBFB.l,X		; FF FB FB FF
	sbc [$DF.b],Y		; F7 DF
	cmp [$CF.b],Y		; D7 CF
	cmp $96DECE.l,X		; DF CE DE 96
	stx $D6.b		; 86 D6
	dec $F7.b		; C6 F7
	inc $35.b		; E6 35
	phx		; DA
	plp		; 28
	sbc $3009FF.l,X		; FF FF 09 30
	sbc $79FF31.l,X		; FF 31 FF 79
	sbc $19FF39.l,X		; FF 39 FF 19
	sbc $F27E6C.l,X		; FF 6C 7E F2
	inc $C606.w,X		; FE 06 C6
	ora [$D7.b],Y		; 17 D7
	ora $6AFCD7.l,X		; 1F D7 FC 6A
	jsr ($FEF8.w,X)		; FC F8 FE
	eor $35.b,X		; 55 35
	inx		; E8
	sbc $68FCFE.l,X		; FF FE FC 68
	inc $FEFE.w,X		; FE FE FE
	ldy #$FEFE.w		; A0 FE FE
	inc $FE68.w,X		; FE 68 FE
	cpx #$79EF.w		; E0 EF 79
	sbc $6A6060.l,X		; FF 60 60 6A
	jsr ($F030.w,X)		; FC 30 F0
	bpl  -2.b		; 10 FE
	bcc -16.b		; 90 F0
	ora [$2F.b]		; 07 2F
	bcs -29.b		; B0 E3
	ora $05.b,S		; 03 05
	bvs  97.b		; 70 61
	bvs  10.b		; 70 0A
	ora [$00.b]		; 07 00
	asl $52.b		; 06 52
	sbc $83E8.w,X		; FD E8 83
	inc $F591.w,X		; FE 91 F5
	lda $0C00C9.l		; AF C9 00 0C
	sei		; 78
	jmp ($7FFE.w,X)		; 7C FE 7F
	bmi -15.b		; 30 F1
	sbc $3000.w,X		; FD 00 30
	cpy #$F0FC.w		; C0 FC F0
	sty $F8.b		; 84 F8
	inc $A2E3.w,X		; FE E3 A2
	rti		; 40

	asl $FE83.w		; 0E 83 FE
	rts		; 60

	cpy #$70FE.w		; C0 FE 70
	cpx #$00FE.w		; E0 FE 00
	cmp $5C.b,S		; C3 5C
	sbc ($E2.b)		; F2 E2
	inc $40A0.w,X		; FE A0 40
	inc $0090.w,X		; FE 90 00
	asl $FE60.w,X		; 1E 60 FE
	ldx $FCB8.w		; AE B8 FC
	ora $010A07.l		; 0F 07 0A 01
	jmp ($FEFC.w,X)		; 7C FC FE
	inc $08.b,X		; F6 08
	jsr ($0708.w,X)		; FC 08 07
	tsb $8007.w		; 0C 07 80
	sbc $D5FEFC.l,X		; FF FC FE D5
	sec		; 38
	sbc $F7E6FE.l		; EF FE E6 F7
	ldx $B7.b		; A6 B7
	bvs  40.b		; 70 28
	ldx $F7FE.w		; AE FE F7
	ldx $BF.b,Y		; B6 BF
	inc $79FF.w,X		; FE FF 79
	cmp ($44.b),Y		; D1 44
	sta [$0A.b]		; 87 0A
	eor $FAFE.w,Y		; 59 FE FA
	jsr ($C70F.w,X)		; FC 0F C7
	inc $B869.w,X		; FE 69 B8
	sta $AAFE47.l		; 8F 47 FE AA
	eor [$FC.b],Y		; 57 FC
	phb		; 8B
	eor $F8.b,S		; 43 F8
	cop $D4.b		; 02 D4
	bit $FEC9.w,X		; 3C C9 FE
	jsr ($FC04.w,X)		; FC 04 FC
	jsr ($FB00.w,X)		; FC 00 FB
	sta ($E1.b,S),Y		; 93 E1
	plb		; AB
	sbc $818001.l,X		; FF 01 80 81
	inc $54FC.w,X		; FE FC 54
	pea $6879.w		; F4 79 68
	ora #$6070.w		; 09 70 60
	bcs  32.b		; B0 20
	bvs -96.b		; 70 A0
	pla		; 68
	adc $D8A08C.l,X		; 7F 8C A0 D8
	bne 104.b		; D0 68
	brk $B8.b		; 00 B8
	bmi  -8.b		; 30 F8
	asl $F7D0.w		; 0E D0 F7
	eor $FE.b,X		; 55 FE
	cld		; D8
	sed		; F8
	plp		; 28
	stz $C8E9.w		; 9C E9 C8
	sed		; F8
	php		; 08
	sed		; F8
	wai		; CB
	ldy #$080F.w		; A0 0F 08
	inc $FEFE.w,X		; FE FE FE
	phx		; DA
	adc #$7C0C.w		; 69 0C 7C
	ror $FEFE.w,X		; 7E FE FE
	lsr $0C5F.w,X		; 5E 5F 0C
	.db $82, $FC, $8F		; 82 FC 8F
	sta $FEFE.w,Y		; 99 FE FE
	lda ($FE.b,X)		; A1 FE
	cop $FF.b		; 02 FF
	ora $FE.b,S		; 03 FE
	lsr $C4.b,X		; 56 C4
	sbc $5B0606.l,X		; FF 06 06 5B
	txa		; 8A
	cpx #$FEEA.w		; E0 EA FE
	sei		; 78
	tax		; AA
	asl $C005.w		; 0E 05 C0
	inc $DA.b,X		; F6 DA
	eor [$F0.b]		; 47 F0
	sed		; F8
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
	cmp [$4E.b],Y		; D7 4E
	tay		; A8
	inc $C0.b,X		; F6 C0
	cmp ($FE.b,X)		; C1 FE
	jsr ($672B.w,X)		; FC 2B 67
	cpy #$FCFE.w		; C0 FE FC
	sed		; F8
	beq  -1.b		; F0 FF
	lda $FE.b		; A5 FE
	iny		; C8
	cpy #$303C.w		; C0 3C 30
	pea $A4F0.w		; F4 F0 A4
	beq  -4.b		; F0 FC
	ldx $FEF1.w		; AE F1 FE
	sta $F83841.l		; 8F 41 38 F8
	cpy $0CFC.w		; CC FC 0C
	inc $FE04.w,X		; FE 04 FE
	ldx #$0BF0.w		; A2 F0 0B
	sbc $FF.b,X		; F5 FF
	txs		; 9A
	sbc #$F0A4.w		; E9 A4 F0
	phd		; 0B
	txs		; 9A
	nop		; EA
	ror $5E5F.w,X		; 7E 5F 5E
	adc $F65756.l,X		; 7F 56 57 F6
	eor [$7D.b],Y		; 57 7D
	ora ($87.b,X)		; 01 87
	and ($FE.b,X)		; 21 FE
	ror $7EAA.w,X		; 7E AA 7E
	jsr ($FEA1.w,X)		; FC A1 FE
	inc $96A9.w,X		; FE A9 96
	plx		; FA
	inc $F1FE.w,X		; FE FE F1
	cmp ($FE.b),Y		; D1 FE
	asl $FF.b		; 06 FF
	sed		; F8
	asl A		; 0A
	ora $0F0D.w		; 0D 0D 0F
	tsa		; 3B
	inx		; E8
	ora $0305.w		; 0D 05 03
	inc $09F8.w,X		; FE F8 09
	asl A		; 0A
	ora [$FE.b]		; 07 FE
	brk $90.b		; 00 90
	ora $0F88F1.l		; 0F F1 88 0F
	xba		; EB
	sbc $BFEAC3.l,X		; FF C3 EA BF
	tax		; AA
	xce		; FB
	ldx $94AF.w,Y		; BE AF 94
	sta $FBFA8A.l,X		; 9F 8A FA FB
	inc $C7FB.w,X		; FE FB C7
	sta $FE15EB.l		; 8F EB 15 FE
	eor $FE.b,X		; 55 FE
	adc $FE75FE.l,X		; 7F FE 75 FE
	ora $1B.b		; 05 1B
	dec $FE.b		; C6 FE
	trb $FF.b		; 14 FF
	cpy $1EF2.w		; CC F2 1E
	inc $AE0E.w,X		; FE 0E AE
	inc $0F9F.w,X		; FE 9F 0F
	rol A		; 2A
	txa		; 8A
	ldx $119E.w,Y		; BE 9E 11
	asl $0FFE.w		; 0E FE 0F
	lda ($1F.b),Y		; B1 1F
	and $B5FEFD.l,X		; 3F FD FE B5
	ora $CD1FA1.l,X		; 1F A1 1F CD
	dec $EDFE.w,X		; DE FE ED
	dec $FAC8.w,X		; DE C8 FA
	bvc -65.b		; 50 BF
	ora $32.b		; 05 32
	inx		; E8
	phx		; DA
	cpx $33DA.w		; EC DA 33
	sbc $37FCFE.l,X		; FF FE FC 37
	ldy $D9.b,X		; B4 D9
	jsr ($0028.w,X)		; FC 28 00
	inc $0065.w,X		; FE 65 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $21.b		; 00 21
	sbc [$00.b]		; E7 00
	sbc $06FE04.l,X		; FF 04 FE 06
	inc $B556.w,X		; FE 56 B5
	cop $FE.b		; 02 FE
	sbc $F8FE40.l,X		; FF 40 FE F8
	bpl  -1.b		; 10 FF
	sed		; F8
	ora #$F8D0.w		; 09 D0 F8
	ora #$FCCE.w		; 09 CE FC
	sbc $012BF8.l,X		; FF F8 2B 01
	sta $6B.b,X		; 95 6B
	inc $24F8.w,X		; FE F8 24
	ora #$F8FE.w		; 09 FE F8
	inc A		; 1A
	phx		; DA
	sed		; F8
	ora #$80FF.w		; 09 FF 80
	inc $14F8.w,X		; FE F8 14
	ror $36F8.w		; 6E F8 36
	ora $09.b		; 05 09
	brk $24.b		; 00 24
	sbc $F4FA.w,X		; FD FA F4
	inc $AAB2.w,X		; FE B2 AA
	inc $FE41.w		; EE 41 FE
	sbc $F0F6FC.l,X		; FF FC F6 F0
	ora ($EE.b),Y		; 11 EE
	sed		; F8
	ora ($0A.b),Y		; 11 0A
	sed		; F8
	tsa		; 3B
	tax		; AA
	eor $FE.b,X		; 55 FE
	sed		; F8
	ora ($FF.b,S),Y		; 13 FF
	sed		; F8
	phd		; 0B
	stz $F6.b		; 64 F6
	sty $F6.b		; 84 F6
	inc $80FD.w,X		; FE FD 80
	inc $10F8.w,X		; FE F8 10
	dec $0FF8.w,X		; DE F8 0F
	inc $0AF8.w,X		; FE F8 0A
	bvc  85.b		; 50 55
	plp		; 28
	lsr $1BF8.w,X		; 5E F8 1B
	dey		; 88
	beq  27.b		; F0 1B
	bvs -16.b		; 70 F0
	ora $5FF8FF.l,X		; 1F FF F8 5F
	asl $F8.b		; 06 F8
	ora ($FE.b)		; 12 FE
	sed		; F8
	rol $AA35.w,X		; 3E 35 AA
	asl $EC.b		; 06 EC
	inc $2EFE.w,X		; FE FE 2E
	inx		; E8
	phd		; 0B
	.db $42, $FE		; 42 FE
	asl $E8.b		; 06 E8
	ora ($FF.b,S),Y		; 13 FF
	sed		; F8
	eor [$AA.b]		; 47 AA
	ror A		; 6A
	sty $F0.b,X		; 94 F0
	and [$F6.b]		; 27 F6
	inx		; E8
	ora [$FF.b],Y		; 17 FF
	sed		; F8
	asl $E800.w		; 0E 00 E8
	bit $F8FF.w,X		; 3C FF F8
	tda		; 7B
	inx		; E8
	cpx #$4839.w		; E0 39 48
	beq   9.b		; F0 09
	cli		; 58
	sbc ($40.b,X)		; E1 40
	tay		; A8
	tax		; AA
	inc $5701.w,X		; FE 01 57
	beq  85.b		; F0 55
	cli		; 58
	sed		; F8
	rti		; 40

	inc $4DF8.w,X		; FE F8 4D
	inc A		; 1A
	beq  19.b		; F0 13
	bit $0BE8.w,X		; 3C E8 0B
	tsb $02.b		; 04 02
	sed		; F8
	sbc ($FE.b)		; F2 FE
	sed		; F8
	sec		; 38
	cmp $0EF8.w,X		; DD F8 0E
	lda ($F4.b,X)		; A1 F4
	ora $20.b		; 05 20
	inc $FE01.w,X		; FE 01 FE
	rts		; 60

	tax		; AA
	lda ($FE.b),Y		; B1 FE
	inc $D841.w,X		; FE 41 D8
	tsb $D835.w		; 0C 35 D8
	and $36E046.l		; 2F 46 E0 36
	inc $09F8.w,X		; FE F8 09
	lsr $FE.b		; 46 FE
	mvp $AA,$92		; 44 92 AA
	inc $88FD.w,X		; FE FD 88
	inc $EC.b		; E6 EC
	inc $58FE.w,X		; FE FE 58
	cpx #$F415.w		; E0 15 F4
	sed		; F8
	ora #$F8C4.w		; 09 C4 F8
	ora #$AAAA.w		; 09 AA AA
	lsr $DCD4.w,X		; 5E D4 DC
	cpx #$FF26.w		; E0 26 FF
	sed		; F8
	ror $C0AC.w		; 6E AC C0
	ora ($FE.b,S),Y		; 13 FE
	sed		; F8
	ora $24DE7E.l		; 0F 7E DE 24
	inc $DA8A.w,X		; FE 8A DA
	txs		; 9A
	stx $D888.w		; 8E 88 D8
	ora #$E086.w		; 09 86 E0
	sta [$FE.b],Y		; 97 FE
	sed		; F8
	jmp ($FE80.w)		; 6C 80 FE
	brk $80.b		; 00 80
	tsb $AA.b		; 04 AA
	tax		; AA
	inc $EA0E.w,X		; FE 0E EA
	asl $06E7.w		; 0E E7 06
	sbc ($26.b)		; F2 26
	nop		; EA
.ACCU 16
.INDEX 16
	rep #$F5		; C2 F5
	rol $D0.b,X		; 36 D0
	ora $DBEE.w		; 0D EE DB
	eor ($55.b,X)		; 41 55
	stz $09D0.w		; 9C D0 09
	rti		; 40

	inc $E2EC.w,X		; FE EC E2
	asl A		; 0A
	inx		; E8
	trb $1C.b		; 14 1C
	inx		; E8
	jmp $E80E.w		; 4C 0E E8
	ora ($FE.b,S),Y		; 13 FE
	cpx #$B513.w		; E0 13 B5
	tax		; AA
	inc $37F8.w,X		; FE F8 37
	.db $42, $F0		; 42 F0
	and ($B0.b,X)		; 21 B0
	iny		; C8
	ora $F84608.l,X		; 1F 08 46 F8
	ora ($84.b)		; 12 84
	cpx $E07E.w		; EC 7E E0
	phd		; 0B
	stz $E0.b,X		; 74 E0
	tas		; 1B
	tax		; AA
	tax		; AA
	tay		; A8
	cpy #$2225.w		; C0 25 22
	cpy #$0C41.w		; C0 41 0C
	inc $B064.w,X		; FE 64 B0
	ora $B066.w		; 0D 66 B0
	phd		; 0B
	inc $0AF8.w,X		; FE F8 0A
	jsr $CDF4.w		; 20 F4 CD
	cpx #$AA5F.w		; E0 5F AA
	tax		; AA
	ldy $E0.b		; A4 E0
	stz $7E.b		; 64 7E
	ldx $EE2C.w		; AE 2C EE
	asl $FC.b,X		; 16 FC
	pla		; 68
	tay		; A8
	asl $D430.w		; 0E 30 D4
	inc $04FC.w,X		; FE FC 04
	inc $A3FF.w,X		; FE FF A3
	inc $31FC.w,X		; FE FC 31
	and ($11.b,S),Y		; 33 11
	and ($08.b),Y		; 31 08
	ora $1800.w,Y		; 19 00 18
	brk $0C.b		; 00 0C
	dec $FF.b,X		; D6 FF
	sbc $ADF1C2.l,X		; FF C2 F1 AD
	lda $B567.w,Y		; B9 67 B5
	lda ($72.b)		; B2 72
	cpy $A4.b		; C4 A4
	sei		; 78
	pha		; 48
	rol $1926.w,X		; 3E 26 19
	ora ($07.b),Y		; 11 07
	sbc $C603FF.l,X		; FF FF 03 C6
	sbc $C1F7C2.l,X		; FF C2 F7 C1
	sbc ($78.b,S),Y		; F3 78
	jsr ($7830.w,X)		; FC 30 78
	clc		; 18
	rol $1F0E.w,X		; 3E 0E 1F
	tsb $FF.b		; 04 FF
	sbc $F6EC07.l,X		; FF 07 EC F6
	sbc ($1E.b,X)		; E1 1E
	rol $06.b		; 26 06
	cli		; 58
	tya		; 98
	cpx #$81A0.w		; E0 A0 81
	sta $42.b		; 85 42
	eor ($24.b,X)		; 41 24
	sbc $F824FF.l,X		; FF FF 24 F8
	inc $FFFF.w,X		; FE FF FF
	sbc $60FF.w,Y		; F9 FF 60
	sed		; F8
	rti		; 40

	cpx #$C742.w		; E0 42 C7
	asl $47.b		; 06 47
	cop $1E.b		; 02 1E
	dec $D226.w,X		; DE 26 D2
	sbc ($60.b,X)		; E1 60
	cpx $07.b		; E4 07
	plx		; FA
	bpl -32.b		; 10 E0
	bra -64.b		; 80 C0
	sty $BD.b,X		; 94 BD
	sbc $1C.b,S		; E3 1C
	cpx #$FFF8.w		; E0 F8 FF
	sbc $00F0.w,Y		; F9 F0 00
	beq   1.b		; F0 01
	asl $64FE.w,X		; 1E FE 64
	cop $02.b		; 02 02
	asl $06.b		; 06 06
	sty $4B.b,X		; 94 4B
	php		; 08
	lsr A		; 4A
	eor #$484A.w		; 49 4A 48
	phb		; 8B
	sbc ($4B.b,S),Y		; F3 4B
	cop $03.b		; 02 03
	sec		; 38
	sbc ($EE.b)		; F2 EE
	eor $C1FE07.l		; 4F 07 FE C1
	adc $60C1C0.l,X		; 7F C0 C1 60
	bvs  24.b		; 70 18
	jmp $001606.l		; 5C 06 16 00
	inx		; E8
	sbc $A029FF.l,X		; FF FF 29 A0
	jsr $C100.w		; 20 00 C1
	bra -16.b		; 80 F0
	jsr $087C.w		; 20 7C 08
	asl $80F0.w,X		; 1E F0 80
	sty $40.b		; 84 40
	lda $D6E0.w		; AD E0 D6
	tsb $F4.b		; 04 F4
	adc [$70.b]		; 67 70
	sbc $1C2203.l,X		; FF 03 22 1C
	bcs -108.b		; B0 94
	beq  -3.b		; F0 FD
	brk $3E.b		; 00 3E
	plx		; FA
	and [$F9.b],Y		; 37 F9
	sta $83.b,S		; 83 83
	asl $0E.b		; 06 0E
	clc		; 18
	dec A		; 3A
	rts		; 60

	pla		; 68
	sta ($FC.b)		; 92 FC
	ora $FC.b		; 05 FC
	ora #$8398.w		; 09 98 83
	ora ($0F.b,X)		; 01 0F
	tsb $3E.b		; 04 3E
	bpl 120.b		; 10 78
	beq 126.b		; F0 7E
	clc		; 18
	sty $03.b		; 84 03
	ora [$04.b]		; 07 04
	asl $0682.w		; 0E 82 06
	cpx $8140.w		; EC 40 81
	inc $F007.w,X		; FE 07 F0
	cpy #$2060.w		; C0 60 20
	rts		; 60

	rti		; 40

	bpl   0.b		; 10 00
	asl $8600.w		; 0E 00 86
	beq -64.b		; F0 C0
	sbc ($9A.b,X)		; E1 9A
	cpx #$00E0.w		; E0 E0 00
	inc $0070.w		; EE 70 00
	lda $1811.w,X		; BD 11 18
	asl A		; 0A
	adc ($E9.b)		; 72 E9
	rti		; 40

	bra  16.b		; 80 10
	phd		; 0B
	dec $DE18.w		; CE 18 DE
	brk $C4.b		; 00 C4
	sbc $87E6E2.l,X		; FF E2 E6 87
	inc $0FBA.w		; EE BA 0F
	sta ($05.b),Y		; 91 05
	asl $0C16.w		; 0E 16 0C
	php		; 08
	bra  20.b		; 80 14
	inc $0620.w,X		; FE 20 06
	stx $7C.b		; 86 7C
	ora $EE1C7A.l		; 0F 7A 1C EE
	cpy $23.b		; C4 23
	cpx $0106.w		; EC 06 01
	bra   3.b		; 80 03
	inc A		; 1A
	ldy #$FE00.w		; A0 00 FE
	plx		; FA
	stz $06CA.w,X		; 9E CA 06
	bra  -8.b		; 80 F8
	sta ($F5.b)		; 92 F5
	inc $01D6.w,X		; FE D6 01
	sta $0F8B.w		; 8D 8B 0F
	sbc $2385C4.l,X		; FF C4 85 23
	trb $BE0F.w		; 1C 0F BE
	tsb $27.b		; 04 27
	and $1A.b,S		; 23 1A
	ora ($05.b),Y		; 11 05
	ora $7F.b,S		; 03 7F
	sed		; F8
	eor [$CF.b]		; 47 CF
	adc $E7.b,S		; 63 E7
	adc $1F1F7F.l,X		; 7F 7F 1F 1F
	ldy $3F1F.w		; AC 1F 3F
	ora $FFFF1F.l		; 0F 1F FF FF
	ora $65EB0F.l		; 0F 0F EB 65
	rol $1A.b,X		; 36 1A
	sbc $75.b		; E5 75
	dey		; 88
	iny		; C8
	tya		; 98
	brk $E8.b		; 00 E8
	iny		; C8
	bit $30.b,X		; 34 30
	sbc $00F83F.l,X		; FF 3F F8 00
	stz $FCFF.w,X		; 9E FF FC
	inc $FDF8.w,X		; FE F8 FD
	inc $FE.b,X		; F6 FE
	jsr ($F2FC.w,X)		; FC FC F2
	plx		; FA
	cpy $1414.w		; CC 14 14
	xce		; FB
	jsr ($F4AD.w,X)		; FC AD F4
	sbc $2DFCF9.l,X		; FF F9 FC 2D
	cmp $C9.b		; C5 C9
	eor ($F8.b,X)		; 41 F8
	sbc $80C51D.l,X		; FF 1D C5 80
	sty $C9.b		; 84 C9
	ora ($B0.b,S),Y		; 13 B0
	ora $F079.w		; 0D 79 F0
	dex		; CA
	jsr ($0AFF.w,X)		; FC FF 0A
	asl A		; 0A
	stx $08.b,Y		; 96 08
	iny		; C8
	ora #$0203.w		; 09 03 02
	rts		; 60

	sta [$04.b]		; 87 04
	jsl $01FFF0.l		; 22 F0 FF 01
	cmp $0C0CF1.l,X		; DF F1 0C 0C
	jsr ($C387.w,X)		; FC 87 C3
	php		; 08
	iny		; C8
	jsr $3920.w		; 20 20 39
	rts		; 60

	jsr $FEA0.w		; 20 A0 FE
	bvs   0.b		; 70 00
	adc $4A2603.l,X		; 7F 03 26 4A
	iny		; C8
	bpl  48.b		; 10 30
	rts		; 60

	bvs -64.b		; 70 C0
	cpx #$FC38.w		; E0 38 FC
	inc $F080.w,X		; FE 80 F0
	ora $F2.b,S		; 03 F2
	bit #$8C88.w		; 89 88 8C
	dec $C6.b		; C6 C6
	sbc ($F8.b),Y		; F1 F8
	and ($33.b,X)		; 21 33
	lda [$E4.b]		; A7 E4
	cop $82.b		; 02 82
	sep #$89		; E2 89
	brk $8C.b		; 00 8C
	sbc $33.b,S		; E3 33
	brk $C6.b		; 00 C6
	brk $F0.b		; 00 F0
	brk $E4.b		; 00 E4
	ora ($83.b,X)		; 01 83
	bcc  46.b		; 90 2E
	sbc $FF.b,X		; F5 FF
	bcc -32.b		; 90 E0
	bra  -8.b		; 80 F8
	asl A		; 0A
	sbc $CD19F0.l,X		; FF F0 19 CD
	ora $FFC306.l		; 0F 06 C3 FF
	and $20.b		; 25 20
	and $88.b		; 25 88
	bvc  82.b		; 50 52
	ora ($09.b,X)		; 01 09
	plp		; 28
	bit $1414.w		; 2C 14 14
	eor $C3.b,S		; 43 C3
	sbc $67434F.l,X		; FF 4F 43 67
	inc $6361.w,X		; FE 61 63
	and ($73.b,X)		; 21 73
	bmi  57.b		; 30 39
	bpl  60.b		; 10 3C
	php		; 08
	ora $441CFE.l,X		; 1F FE 1C 44
	sty $49.b		; 84 49
	adc $88B0.w,Y		; 79 B0 88
	sec		; 38
	dec $441F.w,X		; DE 1F 44
	tsb $B3.b		; 04 B3
	sbc $2C830F.l,X		; FF 0F 83 2C
	jsr $FCF8.w		; 20 F8 FC
	stx $FF.b		; 86 FF
	cpy #$C0F0.w		; C0 F0 C0
	sed		; F8
	cpx #$AFFF.w		; E0 FF AF
	trb $F6.b		; 14 F6
	jmp ($1FFF.w,X)		; 7C FF 1F
	and $CDF280.l,X		; 3F 80 F2 CD
	cpx $F6.b		; E4 F6
	eor $F0F865.l,X		; 5F 65 F8 F0
	dec $EC.b,X		; D6 EC
	sbc $227FF6.l		; EF F6 7F 22
	and ($92.b,X)		; 21 92
	sbc $0D9E0F.l,X		; FF 0F 9E 0D
	tsb $05.b		; 04 05
	trb $F87B.w		; 1C 7B F8
	jsl $C1CD20.l		; 22 20 CD C1
	bit $04.b,X		; 34 04
	cmp $31.b,S		; C3 31
	dec $FF61.w		; CE 61 FF
	bit $1F03.w,X		; 3C 03 1F
	ora [$C4.b]		; 07 C4
	rol $50FE.w,X		; 3E FE 50
	ldy $2820.w,X		; BC 20 28
	bpl  52.b		; 10 34
	ora #$EE1A.w		; 09 1A EE
	tsb $CA.b		; 04 CA
	jsr ($2838.w,X)		; FC 38 28
	ora $0838.w,Y		; 19 38 08
	bit $40DB.w,X		; 3C DB 40
	sbc ($4C.b),Y		; F1 4C
	sbc #$77FD.w		; E9 FD 77
	sbc $061C20.l,X		; FF 20 1C 06
	ora $400301.l		; 0F 01 03 40
	bra  12.b		; 80 0C
	bvc  -3.b		; 50 FD
	brk $3C.b		; 00 3C
	sty $7A.b		; 84 7A
	cpx $D4.b		; E4 D4
	cpy #$F6BC.w		; C0 BC F6
	sbc ($E9.b,X)		; E1 E9
	ora $0703.w		; 0D 03 07
	adc $7C52.w,Y		; 79 52 7C
	jsr ($1E30.w,X)		; FC 30 1E
	cop $C4.b		; 02 C4
	lda ($FD.b)		; B2 FD
	adc $78FC.w,Y		; 79 FC 78
	xba		; EB
	asl $C020.w		; 0E 20 C0
	sty $78.b		; 84 78
	sbc $800AF8.l		; EF F8 0A 80
	ldy $E9.b		; A4 E9
	cpy #$20FD.w		; C0 FD 20
	and [$01.b]		; 27 01
	bmi -126.b		; 30 82
	sta $4F.b,S		; 83 4F
	lsr A		; 4A
	sbc $4024FD.l,X		; FF FD 24 40
	lda ($2A.b,X)		; A1 2A
	lsr A		; 4A
	sbc ($D8.b),Y		; F1 D8
	ora $98FCF9.l		; 0F F9 FC 98
	rol $FC02.w		; 2E 02 FC
	trb $EFEB.w		; 1C EB EF
	sbc $98FA.w,X		; FD FA 98
	rol $4004.w,X		; 3E 04 40
	asl $91.b		; 06 91
	sbc $1117FF.l,X		; FF FF 17 11
	and [$21.b]		; 27 21
	mvp $FE,$41		; 44 41 FE
	sbc ($28.b)		; F2 28
	ldx #$4454.w		; A2 54 44
	asl $0E4E.w		; 0E 4E 0E
	sta $0E9FC3.l,X		; 9F C3 9F 0E
	ora $7F241E.l,X		; 1F 1E 24 7F
	tsb $1CFE.w		; 0C FE 1C
	ldx $7C38.w,Y		; BE 38 7C
	eor $5E.b,X		; 55 5E
	stz $E586.w		; 9C 86 E5
	sbc $F074FF.l,X		; FF FF 74 F0
	ora #$08FF.w		; 09 FF 08
	beq 100.b		; F0 64
	sbc ($8D.b,X)		; E1 8D
	inc $ECBD.w,X		; FE BD EC
	sbc $20F8FC.l,X		; FF FC F8 20
	xce		; FB
	tya		; 98
	asl A		; 0A
	bpl -32.b		; 10 E0
	plp		; 28
	bmi  20.b		; 30 14
	adc ($07.b),Y		; 71 07
	clc		; 18
	tsb $10FE.w		; 0C FE 10
	clc		; 18
	mvp $38,$F5		; 44 F5 38
	brk $76.b		; 00 76
	plx		; FA
	ora ($FE.b),Y		; 11 FE
	clc		; 18
	tsb $49.b		; 04 49
	adc #$282C.w		; 69 2C 28
	inc $0FE0.w,X		; FE E0 0F
	sbc $58B9.w,X		; FD B9 58
	bpl  32.b		; 10 20
	bvs  48.b		; 70 30
	adc $E910.w,X		; 7D 10 E9
	beq  -2.b		; F0 FE
	bit $30FE.w,X		; 3C FE 30
	sec		; 38
	jsr $700C.w		; 20 0C 70
	bra 112.b		; 80 70
	and $1C0808.l,X		; 3F 08 08 1C
	trb $0E.b		; 14 0E
	ora [$0E.b]		; 07 0E
	asl A		; 0A
	mvn $C4,$8A		; 54 8A C4
	bne -109.b		; D0 93
	cpy $CA.b		; C4 CA
	asl $F1BC.w,X		; 1E BC F1
	ora $FE0702.l		; 0F 02 07 FE
	plx		; FA
	beq  63.b		; F0 3F
	bne  10.b		; D0 0A
	.db $82, $B0, $0F		; 82 B0 0F
	ldy $0BF3.w,X		; BC F3 0B
	asl $06.b		; 06 06
	asl $28C0.w		; 0E C0 28
	trb HTIMEH.w		; 1C 08 42
	trb $3A70.w		; 1C 70 3A
	sbc $0EC6.w,X		; FD C6 0E
	cpy #$003C.w		; C0 3C 00
	ldy $A45A.w,X		; BC 5A A4
	dec A		; 3A
	sed		; F8
	asl A		; 0A
	txs		; 9A
	jmp ($5A07.w,X)		; 7C 07 5A
	sbc ($B3.b),Y		; F1 B3
	phx		; DA
	sbc $5AFEFD.l,X		; FF FD FE 5A
	sbc ($E1.b,S),Y		; F3 E1
	sbc $33E390.l,X		; FF 90 E3 33
	mvp $1A,$38		; 44 38 1A
	tsb $8645.w		; 0C 45 86
	lda [$C2.b]		; A7 C2
	eor ($62.b),Y		; 51 62
	and $20FE.w,Y		; 39 FE 20
	lda ($22.b)		; B2 22
	jmp ($C7BE.w,X)		; 7C BE C7
	brk $E7.b		; 00 E7
	bra -13.b		; 80 F3
	sbc ($FF.b,X)		; E1 FF
	rti		; 40

	sbc ($DB.b)		; F2 DB
	sed		; F8
	cpx #$0126.w		; E0 26 01
	stx $01.b,Y		; 96 01
	.db $42, $08		; 42 08
	and ($0E.b,X)		; 21 0E
	sbc $1320FF.l,X		; FF FF 20 13
	brk $FD.b		; 00 FD
	sbc $07F9FC.l,X		; FF FC F9 07
	sbc [$DB.b]		; E7 DB
	cmp $BDDFEB.l,X		; DF EB DF BD
	and $FFF8DE.l,X		; 3F DE F8 FF
	sbc $0072FF.l,X		; FF FF 72 00
	sta ($60.b,X)		; 81 60
	php		; 08
	cpy #$C720.w		; C0 20 C7
	bcc  79.b		; 90 4F
	cpy #$FFFF.w		; C0 FF FF
	ora $01FF00.l,X		; 1F 00 FF 01
	inc $FDFE.w,X		; FE FE FD
	sbc ($FE.b),Y		; F1 FE
	sbc $DFEFF7.l		; EF F7 EF DF
	cmp $14FFEF.l,X		; DF EF FF 14
	rol $E03F.w,X		; 3E 3F E0
	ora $76.b,S		; 03 76
	rol $7980.w,X		; 3E 80 79
	brk $77.b		; 00 77
	jsr ($E407.w,X)		; FC 07 E4
	inc A		; 1A
	cpx #$985C.w		; E0 5C 98
	lda ($20.b,S),Y		; B3 20
	and $EB7FFC.l,X		; 3F FC 7F EB
	mvp $FD,$F8		; 44 F8 FD
	sbc $FFE3B4.l,X		; FF B4 E3 FF
	cmp $1FFF28.l		; CF 28 FF 1F
	ora [$60.b]		; 07 60
	ora $19815A.l,X		; 1F 5A 81 19
	cpy #$C32C.w		; C0 2C C3
	clv		; B8
	ora [$D0.b]		; 07 D0
	ora $118E80.l		; 0F 80 8E 11
	inc $DF.b		; E6 DF
	sbc $E7FEBF.l,X		; FF BF FE E7
	sed		; F8
	bpl -24.b		; 10 E8
	inc $C8BE.w,X		; FE BE C8
	inc $AA55.w,X		; FE 55 AA
	sed		; F8
	cpx $6915.w		; EC 15 69
	adc $83837F.l,X		; 7F 7F 83 83
	dec $FF.b		; C6 FF
	jsr ($0307.w,X)		; FC 07 03
	lsr $807F.w,X		; 5E 7F 80
	sta $56.b,S		; 83 56
	sep #$03		; E2 03
	jsr ($7470.w,X)		; FC 70 74
	sbc ($BC.b),Y		; F1 BC
	ora ($81.b,X)		; 01 81
	sbc $E08080.l,X		; FF 80 80 E0
	sed		; F8
	asl A		; 0A
	cpx #$E8E5.w		; E0 E5 E8
	bra -80.b		; 80 B0
	cpx #$3FC0.w		; E0 C0 3F
	sed		; F8
	ora ($6F.b,X)		; 01 6F
	clc		; 18
	ora $F8F8.w		; 0D F8 F8
	cmp [$C1.b]		; C7 C1
	cpx #$0AF8.w		; E0 F8 0A
	ora ($EA.b,X)		; 01 EA
	dec $38.b		; C6 38
	sbc $FA4CE1.l,X		; FF E1 4C FA
	brk $F0.b		; 00 F0
	ora [$C0.b],Y		; 17 C0
	rol $3F00.w,X		; 3E 00 3F
	sbc $FFC0.w,Y		; F9 C0 FF
	sed		; F8
	ora ($3E.b,X)		; 01 3E
	inx		; E8
	inc $FFF8.w,X		; FE F8 FF
	sbc [$E8.b],Y		; F7 E8
	sbc $7FFB.w,X		; FD FB 7F
	inc $0F.b,X		; F6 0F
	adc [$D1.b],Y		; 77 D1
	adc $000730.l,X		; 7F 30 07 00
	tsa		; 3B
	bra  30.b		; 80 1E
	adc ($00.b,S),Y		; 73 00
	cpx $8801.w		; EC 01 88
	and $B3.b,S		; 23 B3
	cmp [$9C.b]		; C7 9C
	and $1CE6CF.l,X		; 3F CF E6 1C
	ora $FF8C58.l		; 0F 58 8C FF
	sbc ($F8.b,S),Y		; F3 F8
	sec		; 38
	trb $07E0.w		; 1C E0 07
	tsb $82.b		; 04 82
	ora $966FC3.l,X		; 1F C3 6F 96
	sta ($BC.b,X)		; 81 BC
	ldx $FC.b		; A6 FC
	cpy #$9F86.w		; C0 86 9F
	trb $C1C1.w		; 1C C1 C1
	brk $0F.b		; 00 0F
	tsb $416E.w		; 0C 6E 41
	cli		; 58
	eor [$C3.b]		; 47 C3
	adc #$2378.w		; 69 78 23
	iny		; C8
	asl $E6.b,X		; 16 E6
	ora ($E6.b,X)		; 01 E6
	jsl $08F3E6.l		; 22 E6 F3 08
	tax		; AA
	sbc $E2FECA.l,X		; FF CA FE E2
	jsr ($FCFE.w,X)		; FC FE FC
	sbc $9310F8.l,X		; FF F8 10 93
	xce		; FB
	sbc $FF.b		; E5 FF
	sbc [$1F.b]		; E7 1F
	plx		; FA
	sbc $3F0FF8.l,X		; FF F8 0F 3F
	sbc ($E2.b),Y		; F1 E2
	jsr ($7C9F.w,X)		; FC 9F 7C
	sbc $070EA4.l,X		; FF A4 0E 07
	sed		; F8
	sta $D2.b,S		; 83 D2
	sbc $EC.b,S		; E3 EC
	pei ($FC.b)		; D4 FC
	jsr ($87C7.w,X)		; FC C7 87
	bra  -8.b		; 80 F8
	jsr ($3F03.w,X)		; FC 03 3F
	mvn $22,$3C		; 54 3C 22
	txa		; 8A
	ora ($FA.b,X)		; 01 FA
	adc [$E9.b]		; 67 E9
	stp		; DB
	cpx $0FD4.w		; EC D4 0F
	plx		; FA
	sbc ($2B.b,X)		; E1 2B
	sbc $FC0F39.l,X		; FF 39 0F FC
	cpx $F0F3.w		; EC F3 F0
	sta $C2E2.w,X		; 9D E2 C2
	sbc ($3F.b),Y		; F1 3F
	sbc ($E2.b,X)		; E1 E2
	trb $F303.w		; 1C 03 F3
	tsb $6885.w		; 0C 85 68
	brk $A1.b		; 00 A1
	sta [$78.b]		; 87 78
	cpx #$330C.w		; E0 0C 33
	cpx $F1.b		; E4 F1
	jsr ($E000.w,X)		; FC 00 E0
	eor ($F0.b,X)		; 41 F0
.INDEX 16
	rep #$1C		; C2 1C
	cpx #$0718.w		; E0 18 07
	cmp [$38.b]		; C7 38
	inc $1BF3.w,X		; FE F3 1B
	ora $1F111E.l,X		; 1F 1E 11 1F
	stz $9CE9.w,X		; 9E E9 9C
	ora $F1.b,S		; 03 F1
	ldy $1EF4.w,X		; BC F4 1E
	ldy #$0FAC.w		; A0 AC 0F
	beq 112.b		; F0 70
	inc $0820.w,X		; FE 20 08
	ora $479090.l		; 0F 90 90 47
	jsr ($F0F1.w,X)		; FC F1 F0
	sta $9505E4.l,X		; 9F E4 05 95
	plp		; 28
	and $FF5DE3.l		; 2F E3 5D FF
	sed		; F8
	asl A		; 0A
	eor $08FC.w,X		; 5D FC 08
	inc $1415.w,X		; FE 15 14
	stx $C6.b		; 86 C6
	sbc ($05.b),Y		; F1 05
	sed		; F8
	tsb $E0C5.w		; 0C C5 E0
	sed		; F8
	asl $F0E5.w		; 0E E5 F0
	asl $BAE5.w		; 0E E5 BA
	nop		; EA
	cpx #$B3FF.w		; E0 FF B3
	jsr ($F8E1.w,X)		; FC E1 F8
	phd		; 0B
	cpx #$09F8.w		; E0 F8 09
	and $82A2C0.l,X		; 3F C0 A2 82
	rti		; 40

	inc $E8E1.w,X		; FE E1 E8
	asl A		; 0A
	rti		; 40

	cpx #$40FE.w		; E0 FE 40
	inc $246C.w,X		; FE 6C 24
	bit #$F8E0.w		; 89 E0 F8
	ora #$A040.w		; 09 40 A0
	sed		; F8
	phd		; 0B
	rti		; 40

	ldy #$0CE8.w		; A0 E8 0C
	eor ($1D.b)		; 52 1D
	rti		; 40

	lsr $F0.b		; 46 F0
	ora #$7F82.w		; 09 82 7F
	bne -15.b		; D0 F1
	rts		; 60

	sed		; F8
	phd		; 0B
	adc $D7C880.l,X		; 7F 80 C8 D7
	sbc ($BC.b),Y		; F1 BC
	inc $FCFE.w,X		; FE FE FC
	ora $87.b,S		; 03 87
	ror $D846.w,X		; 7E 46 D8
	ora $0FEE1D.l		; 0F 1D EE 0F
	plx		; FA
	sbc $0A.b,X		; F5 0A
	txa		; 8A
	adc $16425F.l,X		; 7F 5F 42 16
	cld		; D8
	asl A		; 0A
	bit $FFF4.w,X		; 3C F4 FF
	cpy #$1FAA.w		; C0 AA 1F
	ldx $FE7F.w,Y		; BE 7F FE
	ora ($E2.b,X)		; 01 E2
	ora $C7D857.l,X		; 1F 57 D8 C7
	sbc $80E378.l,X		; FF 78 E3 80
	jsr $DF1C.w		; 20 1C DF
	sed		; F8
	ora #$DFF6.w		; 09 F6 DF
	sbc ($FC.b)		; F2 FC
	plb		; AB
	sbc $B33E5F.l,X		; FF 5F 3E B3
	stx $E6.b,Y		; 96 E6
	sbc $F319.w,X		; FD 19 F3
	cpx #$E4EE.w		; E0 EE E4
	ora $8DAB.w		; 0D AB 8D
	sbc ($02.b),Y		; F1 02
	sei		; 78
	sbc $00.b,X		; F5 00
.INDEX 16
	rep #$1F		; C2 1F
	inc $F87C.w,X		; FE 7C F8
	ora #$D0D0.w		; 09 D0 D0
	asl A		; 0A
	ora $08.b,S		; 03 08
	eor $DC.b,X		; 55 DC
	ora $0A8A3F.l		; 0F 3F 8A 0A
	cpx #$0AF8.w		; E0 F8 0A
	txs		; 9A
	mvp $01,$8A		; 44 8A 01
	iny		; C8
	asl A		; 0A
	sbc $F1.b		; E5 F1
	sbc $2C.b,S		; E3 2C
	cpx #$A6FF.w		; E0 FF A6
	eor $6B81.w		; 4D 81 6B
	sbc ($FF.b),Y		; F1 FF
	sed		; F8
	ora #$EA83.w		; 09 83 EA
	inc $5E26.w,X		; FE 26 5E
	sta ($98.b,X)		; 81 98
	sbc $E703.w,X		; FD 03 E7
	asl $EA08.w,X		; 1E 08 EA
	ldy #$09F8.w		; A0 F8 09
	inc $F1.b,X		; F6 F1
	and $F1CBCA.l		; 2F CA CB F1
	ora $BFCA4F.l		; 0F 4F CA BF
	and [$E0.b]		; 27 E0
	cpy #$3FF4.w		; C0 F4 3F
	cmp ($E4.b,X)		; C1 E4
	ora $BF30.w		; 0D 30 BF
	rti		; 40

	rti		; 40

	inc $7FE6.w,X		; FE E6 7F
	ldy $E6.b		; A4 E6
	cmp $00B191.l,X		; DF 91 B1 00
	lda $22DF00.l		; AF 00 DF 22
	sbc ($3F.b,X)		; E1 3F
	plp		; 28
	sbc [$19.b]		; E7 19
	eor $4FBF20.l,X		; 5F 20 BF 4F
	lda $E2D829.l,X		; BF 29 D8 E2
	sbc $E0.b		; E5 E0
	ora #$8596.w		; 09 96 85
	stz $E0C7.w,X		; 9E C7 E0
	beq  12.b		; F0 0C
	rts		; 60

	ldx $F5.b		; A6 F5
	jsr ($2683.w,X)		; FC 83 26
	cmp $2B.b,X		; D5 2B
	pld		; 2B
	adc [$01.b],Y		; 77 01
	inc $DE19.w		; EE 19 DE
	ora ($CA.b,X)		; 01 CA
	jsr ($DE2F.w,X)		; FC 2F DE
	sbc $63B3.w,X		; FD B3 63
	jmp ($DBC8.w)		; 6C C8 DB
	bpl  23.b		; 10 17
	bpl 106.b		; 10 6A
	jsr ($C3FC.w,X)		; FC FC C3
	trb $0C13.w		; 1C 13 0C
	and $27DF13.l		; 2F 13 DF 27
	ora $7CE4EF.l,X		; 1F EF E4 7C
	sbc $FFE740.l,X		; FF 40 E7 FF
	tda		; 7B
	dec $BB87.w		; CE 87 BB
	sta ($7B.b,X)		; 81 7B
	ora ($08.b,X)		; 01 08
	adc $66FF.w,X		; 7D FF 66
	clc		; 18
	brk $F9.b		; 00 F9
	jsr ($FE30.w,X)		; FC 30 FE
	jmp ($ECB4.w,X)		; 7C B4 EC
	ora $76F1.w,Y		; 19 F1 76
	cpx #$C06B.w		; E0 6B C0
	and $A0E7FE.l,X		; 3F FE E7 A0
	stp		; DB
	bvc  61.b		; 50 3D
	jsr $E047.w		; 20 47 E0
	ora #$1706.w		; 09 06 17
	ora #$BF2F.w		; 09 2F BF
	bcs  23.b		; B0 17
	adc $24DF1F.l		; 6F 1F DF 24
	and $E136C3.l,X		; 3F C3 36 E1
	sbc $9F00.w,X		; FD 00 9F
	phy		; 5A
	ora $6DE1CA.l,X		; 1F CA E1 6D
	dex		; CA
	phy		; 5A
	sbc $227F.w,X		; FD 7F 22
	cmp $FDFF.w,X		; DD FF FD
	tax		; AA
	eor $55.b,X		; 55 55
	tax		; AA
	mvn $FC,$7A		; 54 7A FC
	adc $E3.b		; 65 E3
	adc $FF09F0.l,X		; 7F F0 09 FF
	sed		; F8
	asl A		; 0A
	cpx #$57A8.w		; E0 A8 57
	sbc $A4D5F0.l,X		; FF F0 D5 A4
	cpx #$0DF8.w		; E0 F8 0D
	ror $E3.b		; 66 E3
	cpx #$5EFF.w		; E0 FF 5E
	sbc ($FF.b),Y		; F1 FF
	tsa		; 3B
	cpx #$AAFE.w		; E0 FE AA
	plx		; FA
	bit $E6.b		; 24 E6
	cpx #$ACFC.w		; E0 FC AC
	sbc ($D9.b,X)		; E1 D9
.ACCU 8
	sep #$E0		; E2 E0
	sed		; F8
	asl A		; 0A
	lsr A		; 4A
	xba		; EB
	sbc $FE0FFD.l,X		; FF FD 0F FE
	jsr ($0215.w,X)		; FC 15 02
	trb $2A03.w		; 1C 03 2A
	xba		; EB
	cpx #$04FC.w		; E0 FC 04
	jsr ($C8F1.w,X)		; FC F1 C8
	cmp $B0.b,X		; D5 B0
	cpy #$E2FF.w		; C0 FF E2
	cpy #$F8E0.w		; C0 E0 F8
	ora #$E2.b		; 09 E2
	jsr ($F8E0.w,X)		; FC E0 F8
	ora #$47.b		; 09 47
	plb		; AB
	ora ($01.b,X)		; 01 01
	jsr ($63C0.w,X)		; FC C0 63
	cpy #$09F8.w		; C0 F8 09
	inc $E9D2.w,X		; FE D2 E9
	inx		; E8
	sep #$83		; E2 83
	dec $FF.b		; C6 FF
	sbc $C0E7.w,X		; FD E7 C0
	asl $B2.b		; 06 B2
	cmp $D840.w,Y		; D9 40 D8
	ora #$1F.b		; 09 1F
	cmp $AA.b,X		; D5 AA
	tax		; AA
	beq -32.b		; F0 E0
	sed		; F8
	ora #$2B.b		; 09 2B
	cmp $EB35.w,X		; DD 35 EB
	jsr $9EDF.w		; 20 DF 9E
	inx		; E8
	asl A		; 0A
	phb		; 8B
	jsr ($F8C0.w,X)		; FC C0 F8
	asl A		; 0A
	tax		; AA
	lda $20EFE0.l		; AF E0 EF 20
	beq  11.b		; F0 0B
	cpx #$1BF8.w		; E0 F8 1B
	txy		; 9B
	sbc ($E0.b,X)		; E1 E0
	sbc $FD03.w,X		; FD 03 FD
	ora [$FA.b]		; 07 FA
	cpx #$0BF8.w		; E0 F8 0B
	sbc $AA97FD.l,X		; FF FD 97 AA
	ldx $7DF4.w		; AE F4 7D
	cpy $CD.b		; C4 CD
	iny		; C8
	lda [$80.b]		; A7 80
	eor $EFE9A2.l,X		; 5F A2 E9 EF
	rti		; 40

	sbc [$E0.b],Y		; F7 E0
	sbc $010FBE.l,X		; FF BE 0F 01
	and $334F03.l,X		; 3F 03 4F 33
	lda $7A7F5F.l,X		; BF 5F 7F 7A
	cmp ($BF.b),Y		; D1 BF
	ora $F60F1F.l,X		; 1F 1F 0F F6
	ora $5FF163.l,X		; 1F 63 F1 5F
	sbc ($54.b)		; F2 54
	stz $D9.b		; 64 D9
	ora $18.b,S		; 03 18
	php		; 08
	phk		; 4B
	brk $55.b		; 00 55
	brk $AA.b		; 00 AA
	sbc ($FF.b,S),Y		; F3 FF
	jsr ($93AB.w,X)		; FC AB 93
	xce		; FB
	ora [$CF.b]		; 07 CF
	and [$8F.b],Y		; 37 8F
	sta [$1D.b]		; 87 1D
	clc		; 18
	and [$7F.b],Y		; 37 7F
	sta $CF20.w		; 8D 20 CF
	rti		; 40

	cmp $808F40.l,X		; DF 40 8F 80
	sbc [$18.b],Y		; F7 18
	pea $E2A6.w		; F4 A6 E2
	and $FE7FFE.l,X		; 3F FE 7F FE
	clc		; 18
	sbc ($AA.b,S),Y		; F3 AA
	rol A		; 2A
	sbc $9AF5.w,X		; FD F5 9A
	ora $F807EF.l		; 0F EF 07 F8
	brk $FD.b		; 00 FD
	ora ($FE.b,X)		; 01 FE
	ldy $E065.w,X		; BC 65 E0
	cmp $00.b,X		; D5 00
	plx		; FA
	dec A		; 3A
	phx		; DA
	beq -72.b		; F0 B8
	dex		; CA
	cpx #$E11A.w		; E0 1A E1
	ldy #$E30A.w		; A0 0A E3
	ora $81C758.l		; 0F 58 C7 81
	lda #$DC.b		; A9 DC
	sbc $F5A07E.l,X		; FF 7E A0 F5
	plp		; 28
	sbc $4D.b,S		; E3 4D
	bra -128.b		; 80 80
	sbc $3DC3.w,X		; FD C3 3D
	ora $28.b,X		; 15 28
	plp		; 28
	bra -38.b		; 80 DA
	iny		; C8
	cmp #$80.b		; C9 80
	sbc $00EA.w,X		; FD EA 00
	cmp [$85.b],Y		; D7 85
	and $800580.l,X		; 3F 80 05 80
	lda [$90.b],Y		; B7 90
	adc $A0F750.l,X		; 7F 50 F7 A0
	adc $800F4E.l		; 6F 4E 0F 80
	sbc $7FEC80.l		; EF 80 EC 7F
	ora $0207BF.l		; 0F BF 07 02
	mvp $9A,$FC		; 44 FC 9A
	sbc ($80.b),Y		; F1 80
	jsr ($A0EF.w,X)		; FC EF A0
	asl A		; 0A
	asl A		; 0A
	eor ($01.b)		; 52 01
	jsr ($E0D8.w,X)		; FC D8 E0
	phd		; 0B
	inc $0BF8.w,X		; FE F8 0B
	and $50E07C.l,X		; 3F 7C E0 50
	brk $8E.b		; 00 8E
	dey		; 88
	lsr $620E.w,X		; 5E 0E 62
	xce		; FB
	ply		; 7A
	sbc $1FF101.l,X		; FF 01 F1 1F
	asl $D90E.w,X		; 1E 0E D9
	beq  15.b		; F0 0F
	sta $FDFA70.l		; 8F 70 FA FD
	cop $FB.b		; 02 FB
	tsb $7F.b		; 04 7F
	sty $07E0.w		; 8C E0 07
	sbc [$60.b],Y		; F7 60
	adc [$40.b]		; 67 40
	ora $5DBF2A.l,X		; 1F 2A BF 5D
	lda ($FC.b)		; B2 FC
	cmp $0FEA36.l,X		; DF 36 EA 0F
	adc $FCCC44.l,X		; 7F 44 CC FC
	bra -31.b		; 80 E1
	cld		; D8
	sed		; F8
	wai		; CB
	ldy #$22E4.w		; A0 E4 22
	sbc ($02.b,S),Y		; F3 02
	sbc [$05.b],Y		; F7 05
	sbc $6608.w		; ED 08 66
	cmp ($FF.b,X)		; C1 FF
	sbc $FAFD25.l,X		; FF 25 FD FA
	xce		; FB
	jsr ($F8FF.w,X)		; FC FF F8
	sbc $707BF3.l,X		; FF F3 7B 70
	adc $0F48.w,X		; 7D 48 0F
	brk $5F.b		; 00 5F
	tsb $F8.b		; 04 F8
	rti		; 40

	cpy #$D4FC.w		; C0 FC D4
	sta [$FF.b]		; 87 FF
	sta $80.b,S		; 83 80
	asl A		; 0A
	lda $BCFDC3.l,X		; BF C3 FD BC
	jsr ($FC21.w,X)		; FC 21 FC
	lsr $C3.b,X		; 56 C3
	jsr ($FC71.w,X)		; FC 71 FC
	asl $76.b		; 06 76
	cld		; D8
	asl A		; 0A
	rol $E0E4.w		; 2E E4 E0
	inc $8701.w,X		; FE 01 87
	dec $FBFB.w		; CE FB FB
	tyx		; BB
	ldy #$E465.w		; A0 65 E4
	sed		; F8
	asl A		; 0A
	cmp $47BF30.l		; CF 30 BF 47
	adc $FEE09B.l,X		; 7F 9B E0 FE
	sbc $1EBF.w,Y		; F9 BF 1E
	sta $0F87.w		; 8D 87 0F
	sbc ($24.b,X)		; E1 24
	sed		; F8
	ora $8040.w		; 0D 40 80
	sbc $9B57A8.l,X		; FF A8 57 9B
	eor $5FA1D7.l,X		; 5F D7 A1 5F
	eor [$BE.b]		; 47 BE
	and ($A0.b)		; 32 A0
.INDEX 16
	rep #$DB		; C2 DB
	inc $BFFF.w,X		; FE FF BF
	eor $5EF1E0.l		; 4F E0 F1 5E
	sbc ($1F.b,S),Y		; F3 1F
	tax		; AA
	cmp ($00.b,X)		; C1 00
	asl A		; 0A
	jsr ($F895.w,X)		; FC 95 F8
	clc		; 18
	adc $6EFEE4.l		; 6F E4 FE 6E
	cmp ($80.b)		; D2 80
	tax		; AA
	bit $18EA.w,X		; 3C EA 18
	sbc $2CC12E.l,X		; FF 2E C1 2C
	phx		; DA
	inc $09F8.w,X		; FE F8 09
	dex		; CA
	lda $3EEA40.l,X		; BF 40 EA 3E
	cpx #$C80B.w		; E0 0B C8
	lda $01FE.w,Y		; B9 FE 01
	lsr $F481.w,X		; 5E 81 F4
	cop $EB.b		; 02 EB
	beq -121.b		; F0 87
	jsr $09D0.w		; 20 D0 09
	rol $3C.b,X		; 36 3C
	sbc $F7FFC9.l,X		; FF C9 FF F7
	eor $878860.l,X		; 5F 60 88 87
	ora $7F80BF.l		; 0F BF 80 7F
	bra -94.b		; 80 A2
	phk		; 4B
	brk $97.b		; 00 97
	brk $BE.b		; 00 BE
	ora $CD.b		; 05 CD
	and $E68F.w,Y		; 39 8F E6
	xba		; EB
	inc $B9BB.w,X		; FE BB B9
	rts		; 60

	sbc ($CF.b),Y		; F1 CF
	lsr $1ABF.w,X		; 5E BF 1A
	jsr $00D2.w		; 20 D2 00
	tsx		; BA
	ora ($F6.b,X)		; 01 F6
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	sbc $FFFC.w,X		; FD FC FF
	xce		; FB
	sbc $757047.l,X		; FF 47 70 75
	ldy #$2AFC.w		; A0 FC 2A
	sta ($0C.b)		; 92 0C
	rti		; 40

	eor $FF.b		; 45 FF
	cmp [$CC.b]		; C7 CC
	cpy #$0AD8.w		; C0 D8 0A
	sbc $575655.l,X		; FF 55 56 57
	jsr ($CE0F.w,X)		; FC 0F CE
	jsr $10F0.w		; 20 F0 10
	cpx #$FEFE.w		; E0 FE FE
	inc $EAAE.w,X		; FE AE EA
	cpx #$0BF8.w		; E0 F8 0B
	ora $05.b		; 05 05
	cmp $E0DB.w		; CD DB E0
	sbc $1AE2.w,X		; FD E2 1A
	jsr ($F8E0.w,X)		; FC E0 F8
	ora #$A6E2.w		; 09 E2 A6
	plb		; AB
	pea $BFE0.w		; F4 E0 BF
	dec $F1.b		; C6 F1
	rti		; 40

	dec $FEE0.w,X		; DE E0 FE
	bvs 125.b		; 70 7D
	cpy $CD.b		; C4 CD
	inc $E1A1.w,X		; FE A1 E1
	cmp [$24.b],Y		; D7 24
	sbc ($81.b),Y		; F1 81
	cpx #$E109.w		; E0 09 E1
	asl $2FDF.w,X		; 1E DF 2F
	eor $55.b,X		; 55 55
	rts		; 60

	sbc $70F298.l,X		; FF 98 F2 70
	sed		; F8
	ora $F0C4.w		; 0D C4 F0
	asl $F8FE.w		; 0E FE F8
	ora $E9BA.w		; 0D BA E9
	rts		; 60

	cpy #$EA0B.w		; C0 0B EA
	cmp $8555.w,Y		; D9 55 85
	sbc #$A4DF.w		; E9 DF A4
	dec $B0FF.w		; CE FF B0
	ora $0EF8C0.l		; 0F C0 F8 0E
	ldy $BE.b		; A4 BE
	cpx #$0DF8.w		; E0 F8 0D
	bit $EF.b		; 24 EF
	adc $FB.b		; 65 FB
	brk $65.b		; 00 65
	brk $DB.b		; 00 DB
	lda $3C0BB0.l,X		; BF B0 0B 3C
	sbc $ED56DB.l,X		; FF DB 56 ED
	cpx #$EAFA.w		; E0 FA EA
	inc $01F0.w,X		; FE F0 01
	inc $01.b		; E6 01
	cpx $D2F6.w		; EC F6 D2
	pla		; 68
	sbc $FF.b,S		; E3 FF
	sbc $5FDF.w,X		; FD DF 5F
	cmp $78.b,X		; D5 78
	ora [$E0.b]		; 07 E0
	ora $3F3FC0.l,X		; 1F C0 3F 3F
	sbc ($FF.b),Y		; F1 FF
	inc $02.b,X		; F6 02
	cpx $F080.w		; EC 80 F0
	ora #$ED7F.w		; 09 7F ED
	lda $017F.w,X		; BD 7F 01
	ora ($79.b,X)		; 01 79
	sta ($04.b,X)		; 81 04
	ora $04.b		; 05 04
	bvc -17.b		; 50 EF
	inc $FC03.w,X		; FE 03 FC
	ora [$F9.b]		; 07 F9
	ora [$FB.b]		; 07 FB
	sbc $FEE0FE.l,X		; FF FE E0 FE
	beq -16.b		; F0 F0
	tsb $F60C.w		; 0C 0C F6
	cop $F9.b		; 02 F9
	bmi -17.b		; 30 EF
	beq  15.b		; F0 0F
	jsr ($FEE3.w,X)		; FC E3 FE
	tay		; A8
	tax		; AA
	sbc $6081.w,Y		; F9 81 60
	pla		; 68
	ora ($28.b,S),Y		; 13 28
	bvc  51.b		; 50 33
	lsr $70.b		; 46 70
	ora ($E4.b),Y		; 11 E4
	sed		; F8
	ora $7C32.w		; 0D 32 7C
	phy		; 5A
	eor $12.b,X		; 55 12
	sei		; 78
	ora ($26.b),Y		; 11 26
	jmp ($F87C.w,X)		; 7C 7C F8
	ora ($0A.b),Y		; 11 0A
	inc $16F8.w,X		; FE F8 16
	ldx #$0970.w		; A2 70 09
	bvs -100.b		; 70 9C
	inc $0AF8.w,X		; FE F8 0A
	beq  90.b		; F0 5A
	eor $AD.b,X		; 55 AD
	inc $0FF8.w,X		; FE F8 0F
	inx		; E8
	sed		; F8
	ora $D0.b,X		; 15 D0
	sed		; F8
	ora $68B0.w		; 0D B0 68
	asl $F8A8.w		; 0E A8 F8
	bpl  -2.b		; 10 FE
	sed		; F8
	sec		; 38
	sta $FE.b		; 85 FE
	sed		; F8
	tsb $1CAA.w		; 0C AA 1C
	nop		; EA
	sed		; F8
	ora ($F0.b,S),Y		; 13 F0
	sed		; F8
	ora ($70.b,S),Y		; 13 70
	sed		; F8
	ora $0D6816.l		; 0F 16 68 0D
	cmp $02FE89.l		; CF 89 FE 02
	trb $55.b		; 14 55
	inc $F7A2.w,X		; FE A2 F7
	jsr ($FE6C.w,X)		; FC 6C FE
	sbc ($60.b)		; F2 60
	asl A		; 0A
	inc $0CF8.w		; EE F8 0C
	nop		; EA
	sed		; F8
	ora $41D5.w,Y		; 19 D5 41
	php		; 08
	sed		; F8
	bpl -126.b		; 10 82
	ror $5880.w		; 6E 80 58
	ora ($72.b,S),Y		; 13 72
	beq  17.b		; F0 11
	php		; 08
	bra  -2.b		; 80 FE
	jmp $575554.l		; 5C 54 55 57
	inc $22F8.w,X		; FE F8 22
	ldy $F0.b		; A4 F0
	trb $58CC.w		; 1C CC 58
	ora ($26.b,S),Y		; 13 26
	rti		; 40

	ora ($CC.b),Y		; 11 CC
	eor [$80.b]		; 47 80
	ora $FE.b		; 05 FE
	sed		; F8
	and ($82.b,S),Y		; 33 82
	sed		; F8
	clc		; 18
	and $50.b		; 25 50
	jmp ($11E8.w)		; 6C E8 11
	bvs  64.b		; 70 40
	ora #$88FE.w		; 09 FE 88
	mvp $F2,$EC		; 44 EC F2
	tsb $5552.w		; 0C 52 55
	inc $FED2.w,X		; FE D2 FE
	inc $09F8.w		; EE F8 09
	cpx $09F8.w		; EC F8 09
	asl $3160.w		; 0E 60 31
	stx $2CF3.w		; 8E F3 2C
	sbc ($55.b)		; F2 55
	eor $2A.b,X		; 55 2A
	sbc ($2E.b,S),Y		; F3 2E
	sbc ($4E.b),Y		; F1 4E
	beq  13.b		; F0 0D
	bit $28F0.w,X		; 3C F0 28
	ldy $08.b		; A4 08
	and $485C.w,Y		; 39 5C 48
	eor [$FE.b]		; 47 FE
	sed		; F8
	and [$B0.b],Y		; 37 B0
	sbc $5554.w		; ED 54 55
	inc $1808.w,X		; FE 08 18
	ora $28E066.l		; 0F 66 E0 28
	brk $E0.b		; 00 E0
	ora ($0C.b,S),Y		; 13 0C
	cpx #$FE0F.w		; E0 0F FE
	sed		; F8
	bmi -20.b		; 30 EC
	cld		; D8
	eor $885575.l		; 4F 75 55 88
	sed		; F8
	and $F8FE.w		; 2D FE F8
	bit #$DCE6.w		; 89 E6 DC
	cop $80.b		; 02 80
	inc $64FF.w,X		; FE FF 64
	lsr $1C.b		; 46 1C
	cpx #$EC10.w		; E0 10 EC
	sed		; F8
	asl $5555.w		; 0E 55 55
	ror $F8.b,X		; 76 F8
	eor ($9A.b)		; 52 9A
	bne  25.b		; D0 19
	cpx $11F8.w		; EC F8 11
	inc $17F8.w		; EE F8 17
	txa		; 8A
	bne  21.b		; D0 15
	.db $82, $F0, $1D		; 82 F0 1D
	inx		; E8
	cld		; D8
	ora ($56.b),Y		; 11 56
	sbc $55.b		; E5 55
	eor $F8.b,X		; 55 F8
	cld		; D8
	asl A		; 0A
	cmp ($F8.b)		; D2 F8
	ora #$D8EA.w		; 09 EA D8
	ora $D810.w,X		; 1D 10 D8
	ora $E0DA.w		; 0D DA E0
	and $D07C.w		; 2D 7C D0
	asl $F0CA.w		; 0E CA F0
	plp		; 28
	stx $F0.b		; 86 F0
	eor $56AAAF.l		; 4F AF AA 56
	inx		; E8
	adc ($41.b,S),Y		; 73 41
	brk $45.b		; 00 45
	inc $7CFD.w,X		; FE FD 7C
	sed		; F8
	phd		; 0B
	cpx $EAFE.w		; EC FE EA
	sed		; F8
	phd		; 0B
	cpx $09F8.w		; EC F8 09
	tax		; AA
	tax		; AA
	nop		; EA
	inc $F8EE.w,X		; FE EE F8
	phd		; 0B
	cpy #$0DF8.w		; C0 F8 0D
	jsl $6695E0.l		; 22 E0 95 66
	bne  71.b		; D0 47
	bra -76.b		; 80 B4
	dey		; 88
	sed		; F8
	ora $8AEA34.l		; 0F 34 EA 8A
	eor ($D8.b),Y		; 51 D8
	sed		; F8
	tsb $C982.w		; 0C 82 C9
	tay		; A8
	tyx		; BB
	inc $FE0A.w,X		; FE 0A FE
	tya		; 98
	iny		; C8
	asl A		; 0A
	eor $55.b,X		; 55 55
	dey		; 88
	iny		; C8
	phd		; 0B
	stx $B8.b,Y		; 96 B8
	ora [$EA.b],Y		; 17 EA
	sbc $DBDA.w,X		; FD DA DB
	cop $D0.b		; 02 D0
	rol $FE.b,X		; 36 FE
	sed		; F8
	ora ($86.b,S),Y		; 13 86
.INDEX 16
	rep #$9C		; C2 9C
	inx		; E8
	bit $5554.w		; 2C 54 55
	sei		; 78
	inc $C8.b,X		; F6 C8
	asl $0DE4.w,X		; 1E E4 0D
	cpx #$2FC0.w		; E0 C0 2F
	plx		; FA
	ldy #$FE23.w		; A0 23 FE
	sed		; F8
	eor ($AE.b),Y		; 51 AE
	asl $FF.b,X		; 16 FF
	sbc $E8A6.w,X		; FD A6 E8
	rol $94.b		; 26 94
	lda $EFFFFA.l,X		; BF FA FF EF
	sbc $667B7A.l		; EF 7A 7B 66
	sta ($05.b)		; 92 05
	lda $F7AA.w,X		; BD AA F7
	inc $EDBF.w,X		; FE BF ED
	ora $779B.w		; 0D 9B 77
	adc $5FBFBD.l,X		; 7F BD BF 5F
	eor $B097B7.l,X		; 5F B7 97 B0
	bra   0.b		; 80 00
	sbc $FFFF.w		; ED FF FF
	tad		; 5B
	.db $82, $80, $F7		; 82 80 F7
	rti		; 40

	sbc $FBA0.w,X		; FD A0 FB
	pla		; 68
	sbc $B17F7F.l		; EF 7F 7F B1
	bcs  -4.b		; B0 FC
	beq -21.b		; F0 EB
	sbc $FCE4FF.l,X		; FF FF E4 FC
	sbc $F9.b,S		; E3 F9
	sbc [$FB.b]		; E7 FB
	inc $CB.b,X		; F6 CB
	cmp [$41.b]		; C7 41
	eor [$4F.b]		; 47 4F
	lda $1BFF0F.l,X		; BF 0F FF 1B
	sbc $1FEBFF.l,X		; FF FF EB 1F
	lda $0EFF1F.l,X		; BF 1F FF 0E
	ror $FF3F.w		; 6E 3F FF
	lda $709FBF.l,X		; BF BF 9F 70
	adc $FF8F18.l		; 6F 18 8F FF
	ora $EC1718.l,X		; 1F 18 17 EC
	cmp [$FC.b]		; C7 FC
	xce		; FB
	asl $06FF.w,X		; 1E FF 06
	sbc $F0F083.l,X		; FF 83 F0 F0
	sed		; F8
	asl $FFEF.w		; 0E EF FF
	clv		; B8
	jsr ($FBFC.w,X)		; FC FC FB
	asl $061E.w,X		; 1E 1E 06
	asl $10.b		; 06 10
	eor #$BB00.w		; 49 00 BB
	pei ($DF.b)		; D4 DF
	jsr $68FF.w		; 20 FF 68
	sta ($FD.b,X)		; 81 FD
	cop $C1.b		; 02 C1
	pla		; 68
	trb $EC.b		; 14 EC
	bcc -26.b		; 90 E6
	jsr ($E883.w,X)		; FC 83 E8
	sbc [$08.b],Y		; F7 08
	sbc $F8E0D6.l,X		; FF D6 E0 F8
	bpl -22.b		; 10 EA
	tya		; 98
	tda		; 7B
	cmp $45DC.w,X		; DD DC 45
	jsl $C020F8.l		; 22 F8 20 C0
	rts		; 60

	ora ($FB.b,S),Y		; 13 FB
	tsb $76.b		; 04 76
	adc ($F8.b,X)		; 61 F8
	eor ($44.b)		; 52 44
	stz $F8E0.w		; 9C E0 F8
	bpl -38.b		; 10 DA
	ply		; 7A
	inc $7F7A.w,X		; FE 7A 7F
	eor [$80.b],Y		; 57 80
	sed		; F8
	trb $FE.b		; 14 FE
	ora [$FE.b]		; 07 FE
	ora ($FB.b,X)		; 01 FB
	ora $5C.b		; 05 5C
	bcc   9.b		; 90 09
	cop $02.b		; 02 02
	nop		; EA
	and ($26.b,X)		; 21 26
	beq  10.b		; F0 0A
	pea $44FA.w		; F4 FA 44
	lda $92.b,S		; A3 92
	cpx #$F8AF.w		; E0 AF F8
	ldx $FC.b,Y		; B6 FC
	dey		; 88
	and $00.b,S		; 23 00
	cpx #$25E0.w		; E0 E0 25
	bne -40.b		; D0 D8
	cld		; D8
	rts		; 60

	inc $DE8A.w,X		; FE 8A DE
	rol $20FD.w,X		; 3E FD 20
	sed		; F8
	ora ($75.b)		; 12 75
	sta $EF.b		; 85 EF
	bpl -46.b		; 10 D2
	sei		; 78
	ora #$F8E0.w		; 09 E0 F8
	ora ($03.b)		; 12 03
	sbc $E04168.l,X		; FF 68 41 E0
	inc $36.b,X		; F6 36
	cmp ($83.b,X)		; C1 83
	ora $03.b,S		; 03 03
	.db $82, $56, $30		; 82 56 30
	asl A		; 0A
	brk $0E.b		; 00 0E
	sbc ($25.b),Y		; F1 25
	lda $15.b,S		; A3 15
	txs		; 9A
	phy		; 5A
	sbc $1C01.w,X		; FD 01 1C
	inc $FF82.w		; EE 82 FF
.INDEX 16
	rep #$1A		; C2 1A
	cpx $69.b		; E4 69
	sbc #$5CFF.w		; E9 FF 5C
	cli		; 58
	ror $2DC4.w,X		; 7E C4 2D
	bne  86.b		; D0 56
	sed		; F8
	plb		; AB
	pea $78C6.w		; F4 C6 78
	adc $FCB328.l,X		; 7F 28 B3 FC
	cmp ($7C.b,S),Y		; D3 7C
	sbc ($BC.b,X)		; E1 BC
	tyx		; BB
	tyx		; BB
	dec $A8EF.w,X		; DE EF A8
	adc ($00.b),Y		; 71 00
	jsr ($FADA.w,X)		; FC DA FA
	jsr ($BDBF.w,X)		; FC BF BD
	rol $172E.w		; 2E 2E 17
	sbc $EF17FF.l,X		; FF FF 17 EF
	adc $8F1F17.l		; 6F 17 1F 8F
	ora $A34141.l		; 0F 41 41 A3
	ora $41.b,S		; 03 41
	ora ($D1.b,X)		; 01 D1
	sbc $FFFFE8.l,X		; FF E8 FF FF
	sbc $E0BF90.l,X		; FF 90 BF E0
	inc $F0.b,X		; F6 F0
	sbc $FCBBBE.l,X		; FF BE BB FC
	sbc $9BFBFE.l,X		; FF FE FB 9B
	bra  15.b		; 80 0F
	ora $E001EC.l,X		; 1F EC 01 E0
	cpx $D0.b		; E4 D0
	bne -24.b		; D0 E8
	sbc #$810F.w		; E9 0F 81
	inc $E9F4.w,X		; FE F4 E9
	inc $7FBF.w,X		; FE BF 7F
	inc $DB1B.w,X		; FE 1B DB
	and $DB17FF.l		; 2F FF 17 DB
	lda $F781.w		; AD 81 F7
	brk $BE.b		; 00 BE
	inc $05.b,X		; F6 05
	ora $787F20.l,X		; 1F 20 7F 78
	eor [$32.b],Y		; 57 32
	phk		; 4B
	phk		; 4B
	eor $55.b,X		; 55 55
	ldx $DCBE.w,Y		; BE BE DC
	xce		; FB
	xce		; FB
	cmp $FFFFDF.l,X		; DF DF FF FF
	dey		; 88
	txa		; 8A
	ldy $BA.b,X		; B4 BA
	tax		; AA
	sbc $00BF41.l,X		; FF 41 BF 00
	xba		; EB
	sbc $FF9FE1.l,X		; FF E1 9F FF
	adc $1F.b,S		; 63 1F
	sbc ($1F.b,X)		; E1 1F
	trb $DC13.w		; 1C 13 DC
	rti		; 40

	eor ($28.b,X)		; 41 28
	tay		; A8
	pei ($D4.b)		; D4 D4
	sbc ($E1.b,X)		; E1 E1
	jmp ($8AFB.w,X)		; 7C FB 8A
	ror $BEFC.w,X		; 7E FC BE
	inc $7F57.w,X		; FE 57 7F
	rol $8159.w		; 2E 59 81
	ldx $E0F1.w,Y		; BE F1 E0
	adc $FA3FF0.l,X		; 7F F0 3F FA
	lda $3CDF7C.l,X		; BF 7C DF 3C
	eor $46233E.l,X		; 5F 3E 23 46
	rol A		; 2A
	ora ($C0.b),Y		; 11 C0
	beq -16.b		; F0 F0
	ora [$BC.b]		; 07 BC
	ldy $FCBC.w,X		; BC BC FC
	jsr ($B696.w,X)		; FC 96 B6
	rti		; 40

	inc $5601.w,X		; FE 01 56
	and ($DE.b),Y		; 31 DE
	sbc ($A4.b),Y		; F1 A4
	sbc ($01.b)		; F2 01
	rol $6072.w		; 2E 72 60
	beq  16.b		; F0 10
	plx		; FA
	tda		; 7B
	tsb $20.b		; 04 20
	lda $E20A.w		; AD 0A E2
	cmp $F0A021.l,X		; DF 21 A0 F0
	ora ($DE.b),Y		; 11 DE
	sbc $F598.w		; ED 98 F5
	cpx #$13E8.w		; E0 E8 13
	lsr $E66E.w		; 4E 6E E6
	ldx #$DBF2.w		; A2 F2 DB
	rol $F6.b		; 26 F6
	cpx #$11F8.w		; E0 F8 11
	dec $BC21.w,X		; DE 21 BC
	sbc $4508.w,X		; FD 08 45
	bpl -100.b		; 10 9C
	nop		; EA
	cpy #$12F8.w		; C0 F8 12
	tay		; A8
	bra -36.b		; 80 DC
	cpx $1554.w		; EC 54 15
	dec $F8A0.w,X		; DE A0 F8
	ora ($82.b,S),Y		; 13 82
	cpx $F880.w		; EC 80 F8
	ora $E4.b,X		; 15 E4
	jsr ($EC80.w,X)		; FC 80 EC
	brk $F0.b		; 00 F0
	trb $47.b		; 14 47
	asl $E8.b		; 06 E8
	inc $BC11.w		; EE 11 BC
	clc		; 18
	dec $320B.w,X		; DE 0B 32
	inx		; E8
	inc $F840.w,X		; FE 40 F8
	sbc $E20E.w,X		; FD 0E E2
	sbc $FA.b		; E5 FA
	cld		; D8
	adc $EE6438.l,X		; 7F 38 64 EE
	php		; 08
	cpx #$D1FD.w		; E0 FD D1
	ror $FFE8.w,X		; 7E E8 FF
	pei ($7F.b)		; D4 7F
	inc $E12F.w,X		; FE 2F E1
	adc $FCEAC4.l,X		; 7F C4 EA FC
	lda [$48.b],Y		; B7 48
	adc $FBFB7F.l,X		; 7F 7F FB FB
	eor $2F2F5F.l,X		; 5F 5F 2F 2F
	sbc $FEB87F.l,X		; FF 7F B8 FE
	lda $03.b,S		; A3 03
	cmp ($01.b),Y		; D1 01
	inx		; E8
	brk $1F.b		; 00 1F
	cpx #$F847.w		; E0 47 F8
	inc $FB0F.w,X		; FE 0F FB
	ora [$50.b]		; 07 50
	cli		; 58
	lda ($8B.b)		; B2 8B
	sbc ($3C.b,S),Y		; F3 3C
	sbc ($D8.b),Y		; F1 D8
	ora $EA940F.l		; 0F 0F 94 EA
	sbc $EAD6DF.l,X		; FF DF D6 EA
	and $08083F.l,X		; 3F 3F 08 08
	lda ($45.b),Y		; B1 45
	sei		; 78
	ldy #$C0BC.w		; A0 BC C0
	lda $E90FD1.l		; AF D1 0F E9
	lda $C0F7EB.l,X		; BF EB F7 C0
	inc $F7F7.w,X		; FE F7 F7
	tsx		; BA
	tsx		; BA
	clc		; 18
	sbc ($EE.b)		; F2 EE
	inc $F115.w		; EE 15 F1
	tad		; 5B
	sbc ($7D.b),Y		; F1 7D
	beq  28.b		; F0 1C
	adc $55DA.w,X		; 7D DA 55
	adc $2A.b,X		; 75 2A
	rol A		; 2A
	ora $F8FEDF.l		; 0F DF FE F8
	jsr ($BD82.w,X)		; FC 82 BD
	bra  -1.b		; 80 FF
	txa		; 8A
	cmp $DAE6D5.l,X		; DF D5 E6 DA
	phx		; DA
	jsr ($FFFF.w,X)		; FC FF FF
	sbc $FAEA.w,X		; FD EA FA
	sbc $F5.b,X		; F5 F5
	xba		; EB
	xba		; EB
	eor [$57.b],Y		; 57 57
	ldy #$12A0.w		; A0 A0 12
	ora ($25.b)		; 12 25
	cmp $FFFF02.l,X		; DF 02 FF FF
	inc $6F05.w,X		; FE 05 6F
	asl A		; 0A
	sbc $A86F14.l,X		; FF 14 6F A8
	sbc $FF5F.w,X		; FD 5F FF
	sbc $11F7.w		; ED F7 11
	and $BFFF0D.l		; 2F 0D FF BF
	ora $E6.b,S		; 03 E6
	sbc ($52.b,X)		; E1 52
	eor ($F3.b),Y		; 51 F3
	sbc ($DB.b),Y		; F1 DB
	sed		; F8
	adc $6978.w,Y		; 79 78 69
	sei		; 78
	cmp [$D7.b],Y		; D7 D7
	ora $E931DE.l,X		; 1F DE 31 E9
	lda $0EFFAF.l,X		; BF AF FF 0E
	inc $8773.w,X		; FE 73 87
	sbc $E2EF87.l,X		; FF 87 EF E2
	phx		; DA
	cmp $89F635.l,X		; DF 35 F6 89
	sbc $C4FBC0.l,X		; FF C0 FB C4
	phx		; DA
	sbc #$3FF8.w		; E9 F8 3F
	cmp $E29EF1.l,X		; DF F1 9E E2
	cpy #$615E.w		; C0 5E 61
	sbc $F8E0E0.l,X		; FF E0 E0 F8
	cpx #$8261.w		; E0 61 82
	sbc ($FE.b)		; F2 FE
	inc $09.b,X		; F6 09
	lda ($5A.b,X)		; A1 5A
	ldy $42DA.w,X		; BC DA 42
	sbc $20.b,X		; F5 20
	.db $82, $C0, $40		; 82 C0 40
	ora ($9E.b),Y		; 11 9E
	sbc [$FF.b]		; E7 FF
	sbc #$5DF6.w		; E9 F6 5D
	lda ($C0.b),Y		; B1 C0
	inx		; E8
	asl A		; 0A
	bit $F2.b		; 24 F2
	stp		; DB
	bit $E0.b		; 24 E0
	cld		; D8
	ora [$88.b],Y		; 17 88
	sbc $C0.b,S		; E3 C0
	sbc $7C083A.l		; EF 3A 08 7C
	sbc ($80.b),Y		; F1 80
	inx		; E8
	ora ($E2.b,S),Y		; 13 E2
	jsr ($24DF.w,X)		; FC DF 24
	cld		; D8
	rol $F2.b,X		; 36 F2
	rol $40.b		; 26 40
	dec $E860.w,X		; DE 60 E8
	ora ($80.b)		; 12 80
	stz $F6E2.w,X		; 9E E2 F6
	bvc -83.b		; 50 AD
	sed		; F8
	eor $E0.b		; 45 E0
	phd		; 0B
	cpy #$7EFE.w		; C0 FE 7E
	cmp $D8E0.w,X		; DD E0 D8
	asl $20.b,X		; 16 20
	rol $F4.b		; 26 F4
	plb		; AB
	sta $E224.w		; 8D 24 E2
	adc $F20084.l,X		; 7F 84 00 F2
	and $0DF8.w,X		; 3D F8 0D
	cpx $41E9.w		; EC E9 41
	tsb $F5.b		; 04 F5
	.db $42, $0A		; 42 0A
	jsr $04FC.w		; 20 FC 04
	beq  12.b		; F0 0C
	lda $CA.b		; A5 CA
	dec $2086.w		; CE 86 20
	nop		; EA
	ora [$E7.b]		; 07 E7
	.db $62, $05, $54		; 62 05 54
	cpy #$13E0.w		; C0 E0 13
	lda [$48.b],Y		; B7 48
	cpy #$AFFE.w		; C0 FE AF
	ora ($60.b)		; 12 60
	inx		; E8
	ora ($DF.b,S),Y		; 13 DF
	cpx $C7.b		; E4 C7
	sei		; 78
	sbc ($7E.b,X)		; E1 7E
	beq  63.b		; F0 3F
	sbc $EC560C.l,X		; FF 0C 56 EC
	inc $C2FD.w		; EE FD C2
	nop		; EA
	inc $0CEA.w		; EE EA 0C
	tsb $FCE0.w		; 0C E0 FC
	bra   1.b		; 80 01
	pea $F1C4.w		; F4 C4 F1
	ora ($FE.b,X)		; 01 FE
	jsr ($C71F.w,X)		; FC 1F C7
	tad		; 5B
	sbc $887703.l,X		; FF 03 77 88
	adc ($FE.b)		; 72 FE
	stp		; DB
	stp		; DB
	ora [$23.b]		; 07 23
	ora $EF6903.l,X		; 1F 03 69 EF
	lda $1043A0.l,X		; BF A0 43 10
	bpl  -8.b		; 10 F8
	adc ($12.b),Y		; 71 12
	beq -61.b		; F0 C3
	jsr ($1CF7.w,X)		; FC F7 1C
	adc ($9C.b,S),Y		; 73 9C
	inc $FF0E.w,X		; FE 0E FF
	tsb $E3.b		; 04 E3
	sbc $1B1BFC.l,X		; FF FC 1B 1B
	phx		; DA
	tsa		; 3B
	and $787B.w,Y		; 39 7B 78
	xce		; FB
	sed		; F8
	adc ($0F.b),Y		; 71 0F
	sbc $313170.l,X		; FF 70 31 31
	rol $AA3E.w,X		; 3E 3E AA
	ora $FEC60F.l		; 0F 0F C6 FE
	sta [$FF.b]		; 87 FF
	ora [$FF.b]		; 07 FF
	tsa		; 3B
	adc [$8F.b],Y		; 77 8F
	sbc $C1BECE.l,X		; FF CE BE C1
	sbc $F0FEC0.l		; EF C0 FE F0
	sbc $923245.l		; EF 45 32 92
	adc $2EBC.w,X		; 7D BC 2E
	phy		; 5A
	cop $01.b		; 02 01
	ora $EE0C.w		; 0D 0C EE
	cmp $FDBE.w,X		; DD BE FD
	sbc ($FB.b,S),Y		; F3 FB
	sbc $D1.b		; E5 D1
	ldy $BF.b,X		; B4 BF
	inc $80.b,X		; F6 80
	cpx $E9.b		; E4 E9
	cpx $BE.b		; E4 BE
	phx		; DA
	adc $7FBFFE.l,X		; 7F FE BF 7F
	sbc $4B7F.w,X		; FD 7F 4B
	eor ($E4.b,S),Y		; 53 E4
	nop		; EA
	cpx #$BEE0.w		; E0 E0 BE
	phx		; DA
	pei ($BD.b)		; D4 BD
	lda $EF4A.w,X		; BD 4A EF
	eor $B5.b,X		; 55 B5
	ldx $3EC9.w,Y		; BE C9 3E
	sbc $4B.b,S		; E3 4B
	eor $F0C4.w,Y		; 59 C4 F0
	tsb $DA57.w		; 0C 57 DA
	php		; 08
	cmp $FE.b,X		; D5 FE
	jsr ($AAFD.w,X)		; FC FD AA
	.db $82, $44, $68		; 82 44 68
	bpl  98.b		; 10 62
	inc $60.b		; E6 60
	iny		; C8
	inc A		; 1A
	php		; 08
	sbc $D8.b,S		; E3 D8
	inc $F0C0.w,X		; FE C0 F0
	bpl -96.b		; 10 A0
	sta $AA.b,S		; 83 AA
	jsr $EFF5.w		; 20 F5 EF
	bpl  58.b		; 10 3A
	dec $FF21.w		; CE 21 FF
	sed		; F8
	asl $CAE6.w		; 0E E6 CA
	bit $5DDC.w,X		; 3C DC 5D
	jmp $F8A0.w		; 4C A0 F8
	inc A		; 1A
	mvp $F8,$E0		; 44 E0 F8
	tas		; 1B
	adc $E18F81.l,X		; 7F 81 8F E1
	stz $AAFB.w		; 9C FB AA
	dec $0080.w,X		; DE 80 00
	stp		; DB
	tda		; 7B
	jsr ($EC75.w,X)		; FC 75 EC
	txa		; 8A
	jmp.w [$FD1A]		; DC 1A FD
	sty $FD.b		; 84 FD
	ora ($C0.b)		; 12 C0
	sed		; F8
	ora $ED2B8E.l		; 0F 8E 2B ED
	asl A		; 0A
	sbc ($6F.b),Y		; F1 6F
	bcc -64.b		; 90 C0
	rti		; 40

	sbc $A0E91E.l,X		; FF 1E E9 A0
	sed		; F8
	ora ($49.b),Y		; 11 49
	asl A		; 0A
	cpx #$D922.w		; E0 22 D9
	bit $E3F6.w,X		; 3C F6 E3
	pha		; 48
	clv		; B8
	tsb $1FFF.w		; 0C FF 1F
	sbc $38E710.l,X		; FF 10 E7 38
	sta [$F8.b]		; 87 F8
	sta [$FC.b],Y		; 97 FC
	cmp $7C.b,S		; C3 7C
	sed		; F8
	and $7743BF.l,X		; 3F BF 43 77
	ora $447C.w		; 0D 7C 44
	and $EB41AC.l,X		; 3F AC 41 EB
	xba		; EB
	dec $00EA.w,X		; DE EA 00
	sbc ($40.b,S),Y		; F3 40
	sbc $84FFFE.l,X		; FF FE FF 84
	tsb $E0.b		; 04 E0
	brk $E0.b		; 00 E0
	ora ($3F.b,X)		; 01 3F
	bne -91.b		; D0 A5
	asl A		; 0A
	sbc $BFBF01.l,X		; FF 01 BF BF
	xce		; FB
	asl A		; 0A
	sbc $5233FB.l		; EF FB 33 52
	bit $DCF2.w,X		; 3C F2 DC
	ora ($01.b,X)		; 01 01
	bit $D43C.w,X		; 3C 3C D4
	nop		; EA
	ora [$F0.b],Y		; 17 F0
	bmi  31.b		; 30 1F
	inc $30.b,X		; F6 30
	cmp ($1C.b,X)		; C1 1C
	cpx #$C3B4.w		; E0 B4 C3
	sbc $047C.w,X		; FD 7C 04
	and $E0FFE0.l		; 2F E0 FF E0
	sbc [$FE.b],Y		; F7 FE
	jmp.w [$FFD4]		; DC D4 FF
	sta $01.b,S		; 83 01
	cmp ($3F.b),Y		; D1 3F
	bcc -113.b		; 90 8F
	cmp $C0.b,S		; C3 C0
	lda $E2.b		; A5 E2
	beq -16.b		; F0 F0
	cmp ($21.b)		; D2 21
	ror $E9E0.w,X		; 7E E0 E9
	eor $B97FEA.l		; 4F EA 7F B9
	ora $0FBD.w,X		; 1D BD 0F
	sbc $07FFC0.l,X		; FF C0 FF 07
	cpx #$B0E9.w		; E0 E9 B0
	lda $C0F00F.l,X		; BF 0F F0 C0
	bpl -98.b		; 10 9E
	asl $5F1F.w,X		; 1E 1F 5F
	cpx $80.b		; E4 80
.INDEX 16
	rep #$D3		; C2 D3
	lda $4CF3.w		; AD F3 4C
	ora #$E1A6.w		; 09 A6 E1
	tas		; 1B
	mvn $A0,$FF		; 54 FF A0
	ldx $49D3.w,Y		; BE D3 49
	tyx		; BB
	ora $19.b,S		; 03 19
	ora ($A0.b),Y		; 11 A0
	cmp [$3E.b]		; C7 3E
	pea $5555.w		; F4 55 55
	sbc $460FF8.l,X		; FF F8 0F 46
	inc $D8.b,X		; F6 D8
	dec $F020.w		; CE 20 F0
	ora $7C.b,X		; 15 7C
	wai		; CB
	brk $F0.b		; 00 F0
	inc A		; 1A
	asl $60C6.w,X		; 1E C6 60
	clv		; B8
	clc		; 18
	eor $E5.b,X		; 55 E5
	jsr $1DF0.w		; 20 F0 1D
	cop $BF.b		; 02 BF
	cpx #$15F8.w		; E0 F8 15
	rol $F2.b		; 26 F2
	cpx #$0BF8.w		; E0 F8 0B
	txy		; 9B
	cld		; D8
	phd		; 0B
	nop		; EA
	inc $025E.w		; EE 5E 02
	jsr $F9F2.w		; 20 F2 F9
	asl $C0.b		; 06 C0
	sed		; F8
	ora ($BB.b,S),Y		; 13 BB
	mvp $BB,$EA		; 44 EA BB
	php		; 08
	xce		; FB
	tsb $DA.b		; 04 DA
	sbc #$1555.w		; E9 55 15
	ldy #$0CC8.w		; A0 C8 0C
	phx		; DA
	cpx $EBE2.w		; EC E2 EB
	jsr ($58F1.w,X)		; FC F1 58
	sbc $C800.w,X		; FD 00 C8
	ora ($62.b)		; 12 62
	sbc #$4194.w		; E9 94 41
	tsb $5E.b		; 04 5E
	cpx $E1B4.w		; EC B4 E1
	sbc $CF78DA.l,X		; FF DA 78 CF
	rti		; 40

	jsr $0684.w		; 20 84 06
	cpx #$6540.w		; E0 40 65
	inc $9C.b,X		; F6 9C
	xba		; EB
	nop		; EA
	cpx $9FFA.w		; EC FA 9F
	adc ($E1.b,X)		; 61 E1
	adc $BA80F8.l,X		; 7F F8 80 BA
	sta $401EC0.l,X		; 9F C0 1E 40
	lda ($8A.b,S),Y		; B3 8A
	tsx		; BA
	tas		; 1B
	txy		; 9B
	sbc #$5AFE.w		; E9 FE 5A
	wai		; CB
	php		; 08
	dec $1080.w,X		; DE 80 10
	mvp $11,$9D		; 44 9D 11
	cpx #$FCFF.w		; E0 FF FC
	ora $3DD8FF.l		; 0F FF D8 3D
	sta ($B8.b,X)		; 81 B8
	tsb $E8.b		; 04 E8
	nop		; EA
	sbc $62FD.w,X		; FD FD 62
	ora #$010F.w		; 09 0F 01
	sta ($BE.b,X)		; 81 BE
	lda $04B8.w		; AD B8 04
	rti		; 40

	mvn $62,$C0		; 54 C0 62
	cmp #$1903.w		; C9 03 19
	eor #$B0D0.w		; 49 D0 B0
	eor ($3D.b,X)		; 41 3D
	bit $09F2.w		; 2C F2 09
	plb		; AB
	jmp $DFE1.w		; 4C E1 DF
	adc $FA7D.w,X		; 7D 7D FA
	cmp [$D7.b],Y		; D7 D7
	stz $F4DC.w,X		; 9E DC F4
	lda $D40FFB.l		; AF FB 0F D4
	ora #$207F.w		; 09 7F 20
	adc $3E7F38.l,X		; 7F 38 7F 3E
	adc $BF11C0.l,X		; 7F C0 11 BF
	inc $FCF0.w,X		; FE F0 FC
	eor $384720.l,X		; 5F 20 47 38
	eor ($3E.b,X)		; 41 3E
	dey		; 88
	and $2968.w,Y		; 39 68 29
	cpy #$E080.w		; C0 80 E0
	cpy #$C3F0.w		; C0 F0 C3
	pea $F060.w		; F4 60 F0
	bvs  -2.b		; 70 FE
	bcs -80.b		; B0 B0
	beq  64.b		; F0 40
	bra  32.b		; 80 20
	ora $90C083.l		; 0F 83 C0 90
	rts		; 60

	bra 112.b		; 80 70
	inc $F040.w,X		; FE 40 F0
	dec $F07E.w		; CE 7E F0
	inc $27FC.w,X		; FE FC 27
	lda $FD7D.w,Y		; B9 7D FD
	adc $CE75F7.l,X		; 7F F7 75 CE
	inc $80FC.w,X		; FE FC 80
	adc $827838.l,X		; 7F 38 78 82
	inc $7F8A.w,X		; FE 8A 7F
	dec $FCFF.w		; CE FF FC
	clv		; B8
	clv		; B8
	sed		; F8
	tsb $10.b		; 04 10
	inc $CEFD.w,X		; FE FD CE
	inc $58FD.w,X		; FE FD 58
	sbc $95FEF6.l,X		; FF F6 FE 95
	cli		; 58
	ora $0FF8F0.l		; 0F F0 F8 0F
	sbc $F777.w,X		; FD 77 F7
	ror $72FA.w,X		; 7E FA 72
.ACCU 16
.INDEX 16
	rep #$F5		; C2 F5
	sta ($28.b,X)		; 81 28
	eor [$AE.b]		; 47 AE
	phb		; 8B
	adc $31C08F.l,X		; 7F 8F C0 31
	and $68A8F6.l		; 2F F6 A8 68
	adc $683818.l,X		; 7F 18 38 68
	clv		; B8
	pla		; 68
	cpy #$BCD0.w		; C0 D0 BC
	jsr ($8CFE.w,X)		; FC FE 8C
	cpy $1826.w		; CC 26 18
	jsr ($F8D0.w,X)		; FC D0 F8
	inc $40FF.w,X		; FE FF 40
	jsr ($11A2.w,X)		; FC A2 11
	inc $FC70.w,X		; FE 70 FC
	lda $4940FF.l		; AF FF 40 49
	sta $E0.b		; 85 E0
	mvp $F8,$F1		; 44 F1 F8
	asl A		; 0A
	plp		; 28
	rti		; 40

	inc $FE98.w,X		; FE 98 FE
	ora $5A.b,S		; 03 5A
	ora ($01.b)		; 12 01
	inc $F0FC.w,X		; FE FC F0
	inc $CE02.w,X		; FE 02 CE
	cmp ($FE.b),Y		; D1 FE
	lda ($F2.b)		; B2 F2
	rol $85.b		; 26 85
	sbc $FAD1F7.l,X		; FF F7 D1 FA
	cmp $F1.b		; C5 F1
	and $FEE3.w,Y		; 39 E3 FE
	jmp $2ED3.w		; 4C D3 2E
	plx		; FA
	bra  60.b		; 80 3C
	jmp ($9CFE.w,X)		; 7C FE 9C
	cmp $30.b,S		; C3 30
	jmp $FE5E9E.l		; 5C 9E 5E FE
	asl $FEDE.w,X		; 1E DE FE
	cpy #$85FC.w		; C0 FC 85
	ror A		; 6A
	inc $FEE0.w,X		; FE E0 FE
	inc $FCFE.w,X		; FE FE FC
	ldy $FE.b,X		; B4 FE
	ldy #$0BF8.w		; A0 F8 0B
	ora $54.b,S		; 03 54
	eor $FE.b		; 45 FE
	ldy #$72FE.w		; A0 FE 72
.ACCU 16
.INDEX 16
	rep #$70		; C2 70
	cpy $FF.b		; C4 FF
	jsr ($5C6D.w,X)		; FC 6D 5C
	cmp [$FE.b],Y		; D7 FE
	jsr $FEE0.w		; 20 E0 FE
	inc $FEC6.w,X		; FE C6 FE
	ora [$03.b]		; 07 03
	inc $C8FC.w,X		; FE FC C8
	inc $FFED.w,X		; FE ED FF
	tsb $03.b		; 04 03
	inc $AFFC.w,X		; FE FC AF
	dec $D7AA.w		; CE AA D7
	cmp $DECEDF.l		; CF DF CE DE
	stx $86.b,Y		; 96 86
	dec $C6.b,X		; D6 C6
	sbc $F77F.w,X		; FD 7F F7
	inc $35.b		; E6 35
	phx		; DA
	plp		; 28
	sbc $31FF30.l,X		; FF 30 FF 31
	sbc $39FF79.l,X		; FF 79 FF 39
	sbc $82FF19.l,X		; FF 19 FF 82
	sta $06FE6C.l,X		; 9F 6C FE 06
	dec $17.b		; C6 17
	cmp [$1F.b],Y		; D7 1F
	cmp [$BC.b],Y		; D7 BC
	ldy $FC.b		; A4 FC
	ror A		; 6A
	jsr ($FEF8.w,X)		; FC F8 FE
	inx		; E8
	cli		; 58
	lda #$68FE.w		; A9 FE 68
	inc $DE6A.w,X		; FE 6A DE
	inc $A0FE.w,X		; FE FE A0
	inc $FEFE.w,X		; FE FE FE
	pla		; 68
	inc $FFE0.w,X		; FE E0 FF
	rts		; 60

	rts		; 60

	ror A		; 6A
	jsr ($0EF3.w,X)		; FC F3 0E
	bmi -16.b		; 30 F0
	bpl  -2.b		; 10 FE
	bcc -16.b		; 90 F0
	bcs -29.b		; B0 E3
	ora $05.b,S		; 03 05
	cmp ($05.b)		; D2 05
	bvs -97.b		; 70 9F
	and $07FF.w,X		; 3D FF 07
	brk $06.b		; 00 06
	eor ($FD.b)		; 52 FD
	inc $F07D.w,X		; FE 7D F0
	sta ($F5.b),Y		; 91 F5
	lda $0C00C9.l		; AF C9 00 0C
	sei		; 78
	jmp ($F1FE.w,X)		; 7C FE F1
	sbc $3000.w,X		; FD 00 30
	ora $FCC08E.l		; 0F 8E C0 FC
	beq -124.b		; F0 84
	sed		; F8
	inc $F16D.w,X		; FE 6D F1
	bra  64.b		; 80 40
	cmp $20.b,S		; C3 20
	inc $C060.w,X		; FE 60 C0
	inc $E070.w,X		; FE 70 E0
	inc $F25C.w,X		; FE 5C F2
	cpy #$E230.w		; C0 30 E2
	inc $40A0.w,X		; FE A0 40
	inc $6090.w,X		; FE 90 60
	bra  71.b		; 80 47
	inc $B8AE.w,X		; FE AE B8
	jsr ($070F.w,X)		; FC 0F 07
	asl A		; 0A
	jsr ($1F00.w,X)		; FC 00 1F
	inc $08F6.w,X		; FE F6 08
	jsr ($0708.w,X)		; FC 08 07
	tsb $E007.w		; 0C 07 E0
	and $D5FEFC.l,X		; 3F FC FE D5
	sec		; 38
	sbc $F7E6FE.l		; EF FE E6 F7
	ldx $B7.b		; A6 B7
	ldx $0A1C.w		; AE 1C 0A
	inc $B6F7.w,X		; FE F7 B6
	lda $79FFFE.l,X		; BF FE FF 79
	cmp ($D1.b),Y		; D1 D1
	adc ($0A.b,X)		; 61 0A
	eor $FAFE.w,Y		; 59 FE FA
	jsr ($C70F.w,X)		; FC 0F C7
	inc $478F.w,X		; FE 8F 47
	inc A		; 1A
	ldx $AAFE.w		; AE FE AA
	eor [$FC.b],Y		; 57 FC
	phb		; 8B
	eor $F8.b,S		; 43 F8
	bit $00C9.w,X		; 3C C9 00
	sbc $FE.b,X		; F5 FE
	jsr ($FC04.w,X)		; FC 04 FC
	jsr ($FB00.w,X)		; FC 00 FB
	sta ($E1.b,S),Y		; 93 E1
	ora ($80.b,X)		; 01 80
	nop		; EA
	sbc $FCFE81.l,X		; FF 81 FE FC
	mvn $BD,$F4		; 54 F4 BD
	rts		; 60

	ora #$6070.w		; 09 70 60
	bcs  32.b		; B0 20
	bvs -96.b		; 70 A0
	pla		; 68
	ldy #$1FD8.w		; A0 D8 1F
	sbc $D0.b,S		; E3 D0
	pla		; 68
	brk $B8.b		; 00 B8
	bmi  -8.b		; 30 F8
	asl $FED0.w		; 0E D0 FE
	cld		; D8
	adc $F855.w,X		; 7D 55 F8
	plp		; 28
	stz $C8E9.w		; 9C E9 C8
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	inc $FEFE.w,X		; FE FE FE
	php		; 08
	inc $FEFE.w,X		; FE FE FE
	phx		; DA
	adc #$7C0C.w		; 69 0C 7C
	ror $FEFE.w,X		; 7E FE FE
	lsr $0C5F.w,X		; 5E 5F 0C
	.db $82, $FC, $8F		; 82 FC 8F
	sta $FEFE.w,Y		; 99 FE FE
	lda ($FE.b,X)		; A1 FE
	cop $FF.b		; 02 FF
	ora $FE.b,S		; 03 FE
	lsr $C4.b,X		; 56 C4
	sbc $8D0606.l,X		; FF 06 06 8D
	txa		; 8A
	cpx #$FEEA.w		; E0 EA FE
	sei		; 78
	dex		; CA
	nop		; EA
	ora $C0.b		; 05 C0
	inc $F6.b,X		; F6 F6
	phx		; DA
	inc $F8F0.w,X		; FE F0 F8
	clc		; 18
	lda $F10EE0.l,X		; BF E0 0E F1
	inc $3078.w,X		; FE 78 30
	tsb $FEF0.w		; 0C F0 FE
	jmp ($FEF8.w,X)		; 7C F8 FE
	inc $3FFC.w,X		; FE FC 3F
	tsb $EBFE.w		; 0C FE EB
	nop		; EA
	xce		; FB
	nop		; EA
	dey		; 88
	bvs  -2.b		; 70 FE
	sty $78.b		; 84 78
	cmp $20.b,S		; C3 20
	inc $FC02.w,X		; FE 02 FC
	inc $FE15.w,X		; FE 15 FE
	inc $F2AC.w,X		; FE AC F2
	ldy $FED2.w,X		; BC D2 FE
	ora $1F07.w		; 0D 07 1F
	ora $ACFCFE.l		; 0F FE FC AC
	sbc ($FE.b)		; F2 FE
	bpl  -2.b		; 10 FE
	sbc $FCFE0F.l,X		; FF 0F FE FC
	clv		; B8
	lda ($F4.b),Y		; B1 F4
	sbc $FC.b,X		; F5 FC
	sbc $FF54.w,X		; FD 54 FF
	inc $DEFD.w,X		; FE FD DE
	sbc $7FAD.w,X		; FD AD 7F
	sbc ($FE.b,X)		; E1 FE
	sbc $5FFE.w		; ED FE 5F
	sbc $13FF1B.l,X		; FF 1B FF 13
	stz $FCF1.w		; 9C F1 FC
	and ($DF.b,S),Y		; 33 DF
	ora $BF537A.l,X		; 1F 7A 53 BF
	sta ($7F.b,S),Y		; 93 7F
	pld		; 2B
	eor $FE.b,S		; 43 FE
	rtl		; 6B

	inc $67FF.w,X		; FE FF 67
	eor $FC.b,S		; 43 FC
	adc $ED.b,X		; 75 ED
	ldy $FEF1.w		; AC F1 FE
	sed		; F8
	phd		; 0B
	tay		; A8
	inc $C0.b,X		; F6 C0
	cmp ($FE.b,X)		; C1 FE
	jsr ($5F69.w,X)		; FC 69 5F
	cpy #$FCFE.w		; C0 FE FC
	sed		; F8
	pea $F05F.w		; F4 5F F0
	inc $C0C8.w,X		; FE C8 C0
	bit $F430.w,X		; 3C 30 F4
	beq -92.b		; F0 A4
	beq  -4.b		; F0 FC
	ldx $FAF1.w		; AE F1 FA
	clc		; 18
	inc $F838.w,X		; FE 38 F8
	cpy $0CFC.w		; CC FC 0C
	inc $5404.w,X		; FE 04 54
	sbc $F0A2FE.l,X		; FF FE A2 F0
	phd		; 0B
	txs		; 9A
	sbc #$F0A4.w		; E9 A4 F0
	phd		; 0B
	txs		; 9A
	nop		; EA
	ror $5E5F.w,X		; 7E 5F 5E
	adc $7F5756.l,X		; 7F 56 57 7F
	clc		; 18
	inc $57.b,X		; F6 57
	adc $FE01.w,X		; 7D 01 FE
	ror $7EAA.w,X		; 7E AA 7E
	jsr ($FEA1.w,X)		; FC A1 FE
	.db $62, $A9, $FE		; 62 A9 FE
	lda #$FEFE.w		; A9 FE FE
	sbc ($D1.b),Y		; F1 D1
	inc $BF06.w,X		; FE 06 BF
	sta $FF.b,S		; 83 FF
	sed		; F8
	asl A		; 0A
	ora $0F0D.w		; 0D 0D 0F
	ora $0305.w		; 0D 05 03
	inc $09F8.w,X		; FE F8 09
	asl A		; 0A
	ora [$FE.b]		; 07 FE
	inc $8C3F.w,X		; FE 3F 8C
	sei		; 78
	ora $0F787D.l		; 0F 7D 78 0F
	xba		; EB
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
	bra   2.b		; 80 02
	jsr ($65FE.w,X)		; FC FE 65
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A1.b		; 00 A1
	ora $00.b,X		; 15 00
	sbc $FFFE01.l,X		; FF 01 FE FF
	ora #$F8FE.w		; 09 FE F8
	rol $D2.b		; 26 D2
	jsr ($B6DA.w,X)		; FC DA B6
	sbc $F8FE04.l,X		; FF 04 FE F8
	bpl  68.b		; 10 44
	inc $46FD.w,X		; FE FD 46
	inc $0EF8.w,X		; FE F8 0E
	asl $FE.b		; 06 FE
	sed		; F8
	jsl $D90402.l		; 22 02 04 D9
	inc $26F8.w,X		; FE F8 26
	pei ($96.b)		; D4 96
	ora $FE.b		; 05 FE
	ror $FC.b,X		; 76 FC
	tax		; AA
	sta $80.b,X		; 95 80
	inc $12F8.w,X		; FE F8 12
	sbc $941DF8.l,X		; FF F8 1D 94
	sed		; F8
	and [$FE.b]		; 27 FE
	sed		; F8
	ora $FE42.w,X		; 1D 42 FE
	sed		; F8
	tsb $F818.w		; 0C 18 F8
	ora $05AA.w,Y		; 19 AA 05
	pei ($82.b)		; D4 82
	inc $0EF8.w,X		; FE F8 0E
	clv		; B8
	sed		; F8
	phd		; 0B
	sbc $0A0BF8.l,X		; FF F8 0B 0A
	inx		; E8
	sed		; F8
	asl $A0FA.w		; 0E FA A0
	ldy $FEEE.w		; AC EE FE
	php		; 08
	inc $FCF4.w,X		; FE F4 FC
	nop		; EA
	eor $FE.b,X		; 55 FE
	sed		; F8
	phd		; 0B
	cpx #$13F0.w		; E0 F0 13
	ror $F2.b,X		; 76 F2
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	ora #$01.b		; 09 01
	rti		; 40

	brk $FE.b		; 00 FE
	sed		; F8
	ora #$FF.b		; 09 FF
	sed		; F8
	ror $9C.b,X		; 76 9C
	inx		; E8
	ora #$AD.b		; 09 AD
	mvn $E8,$9A		; 54 9A E8
	and #$FE.b		; 29 FE
	sed		; F8
	ora ($49.b),Y		; 11 49
	inc $EEFD.w,X		; FE FD EE
	sed		; F8
	ora ($FE.b),Y		; 11 FE
	eor ($6A.b,X)		; 41 6A
	sbc $5555.w		; ED 55 55
	sbc $0023F8.l,X		; FF F8 23 00
	beq  69.b		; F0 45
	inc $45F8.w,X		; FE F8 45
	bmi -24.b		; 30 E8
	ora #$A8.b		; 09 A8
	sbc $50.b		; E5 50
	beq  11.b		; F0 0B
	lsr $64F0.w		; 4E F0 64
	.db $62, $E0, $23		; 62 E0 23
	plb		; AB
	phy		; 5A
	inc $11F8.w,X		; FE F8 11
	stx $FE.b		; 86 FE
	sed		; F8
	asl A		; 0A
	nop		; EA
	sed		; F8
	ora ($DA.b,S),Y		; 13 DA
	sed		; F8
	ora [$C8.b],Y		; 17 C8
	sed		; F8
	ora $FE.b,X		; 15 FE
	sed		; F8
	ora ($80.b)		; 12 80
	inc $55FD.w,X		; FE FD 55
	eor [$EE.b],Y		; 57 EE
	sed		; F8
	ora ($EA.b),Y		; 11 EA
	sed		; F8
	ora $D8B4.w		; 0D B4 D8
	dec A		; 3A
	bit $59F0.w		; 2C F0 59
	.db $82, $E7, $00		; 82 E7 00
	sta ($FE.b,X)		; 81 FE
	sbc $6FF8FF.l,X		; FF FF F8 6F
	eor $55.b,X		; 55 55
	lda [$E8.b],Y		; B7 E8
	ora $E8B1.w		; 0D B1 E8
	ora ($82.b,S),Y		; 13 82
	cpx #$2B.b		; E0 2B
	bra -38.b		; 80 DA
	lda $F8.b,S		; A3 F8
	asl $FF9D.w,X		; 1E 9D FF
	beq -16.b		; F0 F0
	ora $13E088.l		; 0F 88 E0 13
	eor $8D.b,X		; 55 8D
	ply		; 7A
	cpx #$21.b		; E0 21
	asl A		; 0A
	phx		; DA
	jmp ($2FC8.w)		; 6C C8 2F
	eor $6E0FF8.l,X		; 5F F8 0F 6E
	dec $FCFE.w		; CE FE FC
	eor $05.b		; 45 05
	and $FE.b		; 25 FE
	eor ($D6.b,X)		; 41 D6
	cmp $BCFE.w,X		; DD FE BC
	cpy $F8FE.w		; CC FE F8
	phd		; 0B
	cpx #$75.b		; E0 75
	eor $FE.b,X		; 55 FE
	sed		; F8
	ora $FCE8.w		; 0D E8 FC
	inc A		; 1A
	iny		; C8
	ora $4005.w		; 0D 05 40
	inc $0CF8.w,X		; FE F8 0C
	clv		; B8
	sed		; F8
	ora ($FE.b)		; 12 FE
	sed		; F8
	and $EC.b,S		; 23 EC
	bne  11.b		; D0 0B
	cmp ($AA.b,X)		; C1 AA
	inc $4DF8.w,X		; FE F8 4D
	ldy $FE.b		; A4 FE
	cpx #$0A.b		; E0 0A
	bra  -2.b		; 80 FE
	jsr ($C0E9.w,X)		; FC E9 C0
	bit $56.b		; 24 56
	bne  14.b		; D0 0E
	ror A		; 6A
	eor $FE.b,X		; 55 FE
	sed		; F8
	phk		; 4B
	asl A		; 0A
	bne  57.b		; D0 39
	rol A		; 2A
	bne  31.b		; D0 1F
	rol $E0.b		; 26 E0
	adc $FC08.w		; 6D 08 FC
	beq  58.b		; F0 3A
	sbc $2C99F8.l,X		; FF F8 99 2C
	beq  91.b		; F0 5B
	cop $F8.b		; 02 F8
	tas		; 1B
	eor $55.b,X		; 55 55
	lsr $D2E4.w,X		; 5E E4 D2
	tay		; A8
	and ($6E.b,S),Y		; 33 6E
	iny		; C8
	ora $19C89E.l,X		; 1F 9E C8 19
	dec $21F8.w,X		; DE F8 21
	inc $11F8.w,X		; FE F8 11
	rts		; 60

.ACCU 16
.INDEX 16
	rep #$3A		; C2 3A
	jsr ($5555.w,X)		; FC 55 55
.INDEX 16
	rep #$DA		; C2 DA
	inc $09F8.w,X		; FE F8 09
	eor $8A25C0.l,X		; 5F C0 25 8A
	inx		; E8
	eor ($4A.b,X)		; 41 4A
	beq  37.b		; F0 25
	ror $F0.b,X		; 76 F0
	and [$74.b]		; 27 74
	beq  17.b		; F0 11
	phx		; DA
	iny		; C8
	ora $2555.w,X		; 1D 55 25
	sbc $E821F8.l,X		; FF F8 21 E8
	pei ($B6.b)		; D4 B6
	beq  34.b		; F0 22
	rol $0BC0.w,X		; 3E C0 0B
	sec		; 38
	cpy #$FE22.w		; C0 22 FE
	sed		; F8
	and $55056A.l,X		; 3F 6A 05 55
	asl A		; 0A
	sed		; F8
	ora #$C076.w		; 09 76 C0
	ora #$72FE.w		; 09 FE 72
	cpx #$4C63.w		; E0 63 4C
	ldy $48.b		; A4 48
	ldy #$FE15.w		; A0 15 FE
	sed		; F8
	phd		; 0B
	eor $55.b,X		; 55 55
	cld		; D8
	sed		; F8
	ora #$E8BE.w		; 09 BE E8
	ora $0DF822.l,X		; 1F 22 F8 0D
	iny		; C8
	cpx #$B017.w		; E0 17 B0
	cpx #$B21B.w		; E0 1B B2
	inx		; E8
	ora ($EC.b,S),Y		; 13 EC
	sed		; F8
	ora $A814.w		; 0D 14 A8
	adc ($AD.b,X)		; 61 AD
	tax		; AA
	pei ($E8.b)		; D4 E8
	ora $2CA0E0.l		; 0F E0 A0 2C
	rti		; 40

	bmi -104.b		; 30 98
	asl A		; 0A
	sbc $00BCF8.l,X		; FF F8 BC 00
	cpy #$5459.w		; C0 59 54
	bne  43.b		; D0 2B
	sed		; F8
	cpx #$AA27.w		; E0 27 AA
	tax		; AA
	phb		; 8B
	beq  17.b		; F0 11
	rol $B0.b		; 26 B0
	tas		; 1B
	beq  -8.b		; F0 F8
	phd		; 0B
	inc $D0.b,X		; F6 D0
	ora $94.b,X		; 15 94
	inx		; E8
	and $BC.b,X		; 35 BC
	beq  41.b		; F0 29
	pha		; 48
	tay		; A8
	ora $E67C.w		; 0D 7C E6
	tax		; AA
	tax		; AA
	ldx $A8.b		; A6 A8
	ora #$80C0.w		; 09 C0 80
	ora $E83A.w,Y		; 19 3A E8
	and $FE.b		; 25 FE
	sed		; F8
	and ($8A.b,S),Y		; 33 8A
	dey		; 88
	phb		; 8B
	sty $C8.b,X		; 94 C8
	and $15F092.l		; 2F 92 F0 15
	.db $62, $A0, $39		; 62 A0 39
	tax		; AA
	tax		; AA
	ldy $C8.b,X		; B4 C8
	tas		; 1B
	cpx $5DC8.w		; EC C8 5D
	inc $77F8.w,X		; FE F8 77
	cpy #$0998.w		; C0 98 09
	inc $59D8.w		; EE D8 59
	lsr $9E.b,X		; 56 9E
	txa		; 8A
	inx		; E8
	and [$E2.b],Y		; 37 E2
	beq 125.b		; F0 7D
	tax		; AA
	ldy #$F6FE.w		; A0 FE F6
	inc $F0.b,X		; F6 F0
	and #$D8BE.w		; 29 BE D8
	ora $FEB6.w		; 0D B6 FE
	tsb $0D90.w		; 0C 90 0D
	inc $5858.w,X		; FE 58 58
	ora ($AA.b),Y		; 11 AA
	tax		; AA
	jmp.w [$09F0]		; DC F0 09
	sty $A8.b		; 84 A8
	and $DC.b,S		; 23 DC
	sed		; F8
	ora $27A85E.l		; 0F 5E A8 27
	trb $F0.b		; 14 F0
	ora $EA.b,X		; 15 EA
	bcc  53.b		; 90 35
.ACCU 8
.INDEX 8
	sep #$B8		; E2 B8
	tas		; 1B
	bit $87C8.w,X		; 3C C8 87
	tax		; AA
	nop		; EA
	lsr $E0.b		; 46 E0
	adc $2E.b		; 65 2E
	ldx $C4.b,Y		; B6 C4
	cpx #$53.b		; E0 53
	bne -32.b		; D0 E0
	ora $09B88C.l		; 0F 8C B8 09
	txa		; 8A
	lda $F8FF.w,X		; BD FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	rol $7F.b		; 26 7F
	sta $FF0FFF.l		; 8F FF 0F FF
	ora $FC3FFF.l,X		; 1F FF 3F FC
	sbc $AAFFFF.l		; EF FF FF AA
	brk $55.b		; 00 55
	brk $A1.b		; 00 A1
	beq -85.b		; F0 AB
	ora ($FC.b,X)		; 01 FC
	sbc $16F8FE.l,X		; FF FE F8 16
	cpx #$50.b		; E0 50
	brk $8E.b		; 00 8E
	sbc $5E88C3.l,X		; FF C3 88 5E
	asl $01FD.w		; 0E FD 01
	xce		; FB
	ply		; 7A
	sbc $E0F101.l,X		; FF 01 F1 E0
	inc $C3F0.w		; EE F0 C3
	sbc $0F.b,S		; E3 0F
	sta $FDFA70.l		; 8F 70 FA FD
	cop $FB.b		; 02 FB
	tsb $E0.b		; 04 E0
	ora [$0F.b]		; 07 0F
	sbc $F7.b,S		; E3 F7
	rts		; 60

	adc [$40.b]		; 67 40
	ora $BF00AE.l,X		; 1F AE 00 BF
	jsr ($F8DF.w,X)		; FC DF F8
	sta ($80.b,X)		; 81 80
	inc $7F0F.w		; EE 0F 7F
	sta $A87FFF.l,X		; 9F FF 7F A8
	adc ($0E.b,X)		; 61 0E
	jsr ($FF9C.w,X)		; FC 9C FF
	cld		; D8
	tsx		; BA
	jsr ($F1FF.w,X)		; FC FF F1
	bne   1.b		; D0 01
	sbc ($02.b,S),Y		; F3 02
	sbc [$05.b],Y		; F7 05
	sbc $FF08.w		; ED 08 FF
	sbc [$E8.b]		; E7 E8
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FBFAFD.l,X		; FF FD FA FB
	jsr ($F8FF.w,X)		; FC FF F8
	sbc $707BF3.l,X		; FF F3 7B 70
	adc $0F48.w,X		; 7D 48 0F
	brk $5F.b		; 00 5F
	tsb $F8.b		; 04 F8
	rti		; 40

	cpy #$FC.b		; C0 FC
	pei ($87.b)		; D4 87
	sbc $3E8083.l,X		; FF 83 80 3E
	lda $BCFDC3.l,X		; BF C3 FD BC
	jsr ($55AA.w,X)		; FC AA 55
	eor $AA.b,X		; 55 AA
	ora $FCDC.w,Y		; 19 DC FC
	adc ($FC.b),Y		; 71 FC
	asl $C7.b		; 06 C7
	.db $62, $F8, $0C		; 62 F8 0C
	inc $E001.w,X		; FE 01 E0
	inc $FEF0.w,X		; FE F0 FE
	ora ($87.b,X)		; 01 87
	dec $A0BB.w		; CE BB A0
	adc $E4.b		; 65 E4
	sed		; F8
	asl A		; 0A
	cmp $47BF30.l		; CF 30 BF 47
	adc $9BE37E.l,X		; 7F 7E E3 9B
	cpx #$FE.b		; E0 FE
	sbc $1EBF.w,Y		; F9 BF 1E
	ora $F824E1.l		; 0F E1 24 F8
	ora $8040.w		; 0D 40 80
	sbc $A887E1.l,X		; FF E1 87 A8
	eor [$9B.b],Y		; 57 9B
	lda ($5F.b,X)		; A1 5F
	eor [$BE.b]		; 47 BE
	and ($A0.b)		; 32 A0
	.db $42, $2E		; 42 2E
	sbc $E23F.w,X		; FD 3F E2
	sed		; F8
	asl A		; 0A
	lda $F1E04F.l,X		; BF 4F E0 F1
	jmp ($C1FF.w,X)		; 7C FF C1
	brk $0A.b		; 00 0A
	jsr ($31A1.w,X)		; FC A1 31
	sta $F8.b,X		; 95 F8
	clc		; 18
	adc $0FFEE4.l		; 6F E4 FE 0F
	jsr ($0203.w,X)		; FC 03 02
	dec $FA.b		; C6 FA
	clc		; 18
	sbc $82EEC7.l,X		; FF C7 EE 82
	.db $82, $1F, $AA		; 82 1F AA
	sed		; F8
	phd		; 0B
	dex		; CA
	tsb $FC.b		; 04 FC
	sbc $3F5CFE.l,X		; FF FE 5C 3F
	php		; 08
	inc $01FC.w,X		; FE FC 01
	lsr $F481.w,X		; 5E 81 F4
	cop $EB.b		; 02 EB
	cpx #$FF.b		; E0 FF
	inc $787F.w,X		; FE 7F 78
	rol $3C.b,X		; 36 3C
	sbc $F7FFC9.l,X		; FF C9 FF F7
	eor $BF8860.l,X		; 5F 60 88 BF
	bra 127.b		; 80 7F
	bra  -8.b		; 80 F8
	bvc -94.b		; 50 A2
	phk		; 4B
	brk $97.b		; 00 97
	brk $BE.b		; 00 BE
	and $CA8F.w,Y		; 39 8F CA
	sbc ($00.b),Y		; F1 00
	pla		; 68
	cpy #$FE.b		; C0 FE
	stz $F7.b		; 64 F7
	rts		; 60

	sbc ($CF.b),Y		; F1 CF
	dec $8F.b		; C6 8F
	inc A		; 1A
	jsr ($00F5.w,X)		; FC F5 00
	tsx		; BA
	ora ($E0.b,X)		; 01 E0
	ror $97E1.w,X		; 7E E1 97
	sbc $FFFCFD.l,X		; FF FD FC FF
	xce		; FB
	sbc $FCA047.l,X		; FF 47 A0 FC
	rol A		; 2A
	sta ($0C.b)		; 92 0C
	lda ($67.b)		; B2 67
	rti		; 40

	eor $FF.b		; 45 FF
	sbc $0AF880.l,X		; FF 80 F8 0A
	tax		; AA
	sbc $59FC55.l,X		; FF 55 FC 59
	and $FCFCD4.l		; 2F D4 FC FC
	jsr $0DF0.w		; 20 F0 0D
	cpx #$FE.b		; E0 FE
	inc $C0FE.w,X		; FE FE C0
	cpx #$F8.b		; E0 F8
	asl $0A08.w		; 0E 08 0A
	stz $E0.b,X		; 74 E0
	sed		; F8
	ora #$E2.b		; 09 E2
	inc A		; 1A
	jsr ($F8E0.w,X)		; FC E0 F8
	ora #$4C.b		; 09 4C
	eor [$E2.b],Y		; 57 E2
	pea $BFE0.w		; F4 E0 BF
	dec $F1.b		; C6 F1
	.db $42, $F1		; 42 F1
	sta ($FD.b,X)		; 81 FD
	adc $DCFD.w,X		; 7D FD DC
	inc $90.b,X		; F6 90
	jsr ($A100.w,X)		; FC 00 A1
	sbc ($D7.b,X)		; E1 D7
	bit $F1.b		; 24 F1
	dex		; CA
	sbc $1EE1FF.l,X		; FF FF E1 1E
	cmp $2F0AAA.l,X		; DF AA 0A 2F
	rts		; 60

	sbc $70F298.l,X		; FF 98 F2 70
	sed		; F8
	ora $F0C4.w		; 0D C4 F0
	asl $F8FE.w		; 0E FE F8
	ora $E9BA.w		; 0D BA E9
	ldx $08AA.w		; AE AA 08
	sbc $030BF8.l,X		; FF F8 0B 03
	ora $E0.b,S		; 03 E0
	sed		; F8
	tsb $FD5E.w		; 0C 5E FD
	sbc $C00BF8.l,X		; FF F8 0B C0
	sed		; F8
	asl $FD68.w		; 0E 68 FD
	beq -75.b		; F0 B5
	cpx #$F8.b		; E0 F8
	asl $FB24.w		; 0E 24 FB
	brk $65.b		; 00 65
	brk $DB.b		; 00 DB
	lda $640AF0.l,X		; BF F0 0A 64
	sbc ($DB.b),Y		; F1 DB
	jmp $56BF.w		; 4C BF 56
	sbc $FEE0.w		; ED E0 FE
	beq   1.b		; F0 01
	inc $01.b		; E6 01
	cpx $FE03.w		; EC 03 FE
	eor $46.b,X		; 55 46
	sbc ($FF.b,S),Y		; F3 FF
	sed		; F8
	ora #$DF.b		; 09 DF
	sei		; 78
	ora [$E0.b]		; 07 E0
	ora $3F3FC0.l,X		; 1F C0 3F 3F
	sbc ($FF.b),Y		; F1 FF
	inc $02.b,X		; F6 02
	cpx $F7FD.w		; EC FD F7
	bra -16.b		; 80 F0
	ora #$7F.b		; 09 7F
	sbc $0101.w		; ED 01 01
	cop $02.b		; 02 02
	asl $04.b		; 06 04
	ora $04.b		; 05 04
	bvc -17.b		; 50 EF
	inc $EF03.w,X		; FE 03 EF
	cmp $F907FC.l,X		; DF FC 07 F9
	ora [$FB.b]		; 07 FB
	cpx #$FE.b		; E0 FE
	beq -16.b		; F0 F0
	tsb $F60C.w		; 0C 0C F6
	cop $F9.b		; 02 F9
	bmi -17.b		; 30 EF
	ora $0FF055.l,X		; 1F 55 F0 0F
	jsr ($FEE3.w,X)		; FC E3 FE
	sbc $2081.w,Y		; F9 81 20
	dey		; 88
	eor $58.b		; 45 58
	mvn $54,$AE		; 54 AE 54
	plb		; AB
	eor $A2.b,X		; 55 A2
	cmp $80.b,S		; C3 80
	inc $2AF8.w,X		; FE F8 2A
	cpy #$50.b		; C0 50
	rol $FE.b,X		; 36 FE
	sed		; F8
	plp		; 28
	bra  -2.b		; 80 FE
	sed		; F8
	rol $A8.b		; 26 A8
	sed		; F8
	rol $48D8.w		; 2E D8 48
	ora ($AB.b,S),Y		; 13 AB
	ldx $FE.b,Y		; B6 FE
	sed		; F8
	phd		; 0B
	sta $FE.b		; 85 FE
	sed		; F8
	asl $F8EA.w		; 0E EA F8
	ora ($D8.b),Y		; 11 D8
	sed		; F8
	ora ($86.b,S),Y		; 13 86
	sed		; F8
	and $04.b,S		; 23 04
	.db $62, $CC, $40		; 62 CC 40
	eor $16.b,X		; 55 16
	inc $06FE.w,X		; FE FE 06
	ply		; 7A
	eor #$36.b		; 49 36
	iny		; C8
	asl A		; 0A
	eor ($CB.b)		; 52 CB
	inc $C81C.w,X		; FE 1C C8
	ora ($54.b)		; 12 54
	eor $FE.b,X		; 55 FE
	clv		; B8
	bvc 119.b		; 50 77
	jsr ($1D70.w,X)		; FC 70 1D
	inc $09F8.w,X		; FE F8 09
	dec $A0.b,X		; D6 A0
	phd		; 0B
	ldx $E8.b,Y		; B6 E8
	asl $2E.b,X		; 16 2E
	bcs  22.b		; B0 16
	inc $3BF8.w,X		; FE F8 3B
	eor $55.b,X		; 55 55
	cpx $65F0.w		; EC F0 65
	jsr ($27F0.w,X)		; FC F0 27
	inc $1DF8.w,X		; FE F8 1D
	eor ($90.b)		; 52 90
	ora $F020.w		; 0D 20 F0
	phd		; 0B
	asl $0B68.w,X		; 1E 68 0B
	inc $88FC.w,X		; FE FC 88
	inx		; E8
	and $55.b,S		; 23 55
	eor $4E.b,X		; 55 4E
	inx		; E8
	ora ($EE.b),Y		; 11 EE
	sed		; F8
	ora [$54.b],Y		; 17 54
	inx		; E8
	ora ($44.b),Y		; 11 44
	inx		; E8
	trb $AA.b		; 14 AA
	cpx #$3A.b		; E0 3A
	inc $13F8.w,X		; FE F8 13
	pla		; 68
	sed		; F8
	tas		; 1B
	dec $25E0.w		; CE E0 25
	eor $55.b,X		; 55 55
	inc $53F8.w,X		; FE F8 53
	bit $40.b		; 24 40
	ora $F8EA.w,Y		; 19 EA F8
	ora ($EE.b),Y		; 11 EE
	sed		; F8
	ora $0FF8C6.l		; 0F C6 F8 0F
	plp		; 28
	tya		; 98
	ora ($0A.b),Y		; 11 0A
	bvs  69.b		; 70 45
.ACCU 8
	sep #$A0		; E2 A0
	ora ($55.b,S),Y		; 13 55
	eor $CE.b,X		; 55 CE
	ldy #$21.b		; A0 21
	and ($48.b)		; 32 48
	ora $1BE864.l,X		; 1F 64 E8 1B
	tax		; AA
	jsr $9012.w		; 20 12 90
	bne  52.b		; D0 34
.INDEX 16
	rep #$D0		; C2 D0
	ora $12F012.l		; 0F 12 F0 12
	rol A		; 2A
	bne  46.b		; D0 2E
	eor $B5.b,X		; 55 B5
	tsb $0896.w		; 0C 96 08
	dey		; 88
	and ($A8.b),Y		; 31 A8
	sec		; 38
	ora ($BC.b,S),Y		; 13 BC
	sec		; 38
	and ($B2.b),Y		; 31 B2
	sec		; 38
	ora $0D38B6.l		; 0F B6 38 0D
	bit $42D4.w		; 2C D4 42
	tax		; AA
	tax		; AA
	inc $0AF8.w,X		; FE F8 0A
	cli		; 58
	bra  35.b		; 80 23
	jsr $0D48.w		; 20 48 0D
	beq  88.b		; F0 58
	and ($3C.b,S),Y		; 33 3C
	cpy #$D80B.w		; C0 0B D8
	ror $EE.b		; 66 EE
	beq  22.b		; F0 16
	pha		; 48
	rti		; 40

	tsb $AAAA.w		; 0C AA AA
	ror $D4.b,X		; 76 D4
	stz $B4F2.w,X		; 9E F2 B4
	bpl  20.b		; 10 14
	stx $C0.b,Y		; 96 C0
	jmp $10D4.w		; 4C D4 10
	and $E06A.w,Y		; 39 6A E0
	ora $404A.w		; 0D 4A 40
	and ($74.b),Y		; 31 74
	cmp $400AAA.l		; CF AA 0A 40
	clv		; B8
	trb $08E6.w		; 1C E6 08
	asl A		; 0A
	rol $10.b		; 26 10
	bvc  26.b		; 50 1A
	dey		; 88
	ora ($98.b),Y		; 11 98
	cld		; D8
	and $B4.b		; 25 B4
	php		; 08
	eor #$96.b		; 49 96
	clv		; B8
	phd		; 0B
	plb		; AB
	tax		; AA
	inc $400A.w,X		; FE 0A 40
	inc $2210.w,X		; FE 10 22
	stx $B8.b		; 86 B8
	ora ($50.b)		; 12 50
	pla		; 68
	trb $EFB4.w		; 1C B4 EF
	jmp $AC4FB0.l		; 5C B0 4F AC
	cld		; D8
	ora $AAAA.w,Y		; 19 AA AA
	ldy $C8.b		; A4 C8
	and #$60.b		; 29 60
	bcs  37.b		; B0 25
	rti		; 40

	sbc ($DC.b,X)		; E1 DC
	beq   9.b		; F0 09
	phx		; DA
	asl $B076.w		; 0E 76 B0
	ora ($EE.b),Y		; 11 EE
	sed		; F8
	ora #$60.b		; 09 60
	bcs  20.b		; B0 14
	phx		; DA
	tax		; AA
	dec $F0.b,X		; D6 F0
	tas		; 1B
	rti		; 40

	inx		; E8
	ora $A8.b,X		; 15 A8
	clv		; B8
	phk		; 4B
	txa		; 8A
	inc $20F8.w,X		; FE F8 20
	.db $82, $EE, $E5		; 82 EE E5
	bvc -96.b		; 50 A0
	phb		; 8B
	rol A		; 2A
	tay		; A8
	ora $F2AAAA.l		; 0F AA AA F2
	beq  59.b		; F0 3B
	sty $A8.b		; 84 A8
	asl $58C8.w		; 0E C8 58
	inc A		; 1A
	asl $18.b,X		; 16 18
	and ($0C.b)		; 32 0C
	clc		; 18
	bit $AE6E.w		; 2C 6E AE
	bit $15A0.w,X		; 3C A0 15
	bit $0DE8.w		; 2C E8 0D
	tax		; AA
	asl A		; 0A
	and ($1A.b)		; 32 1A
	asl $1318.w,X		; 1E 18 13
	pei ($FC.b)		; D4 FC
	ror $2D98.w,X		; 7E 98 2D
	jmp ($2D98.w)		; 6C 98 2D
	lsr A		; 4A
	wai		; CB
	inc $DF.b		; E6 DF
	ldy #$FEAA.w		; A0 AA FE
	sbc ($18.b)		; F2 18
	inx		; E8
	ora ($9E.b)		; 12 9E
	clv		; B8
	bmi -124.b		; 30 84
	ldy #$9E4D.w		; A0 4D 9E
	ldy #$F635.w		; A0 35 F6
	inx		; E8
	asl A		; 0A
	tax		; AA
	tax		; AA
	stz $D8.b		; 64 D8
	inc A		; 1A
	ror $5B98.w		; 6E 98 5B
	inc $11F8.w,X		; FE F8 11
	asl $7DA8.w,X		; 1E A8 7D
	phy		; 5A
	cld		; D8
	and $88.b		; 25 88
	sed		; F8
	eor $7A.b		; 45 7A
	cpy #$F00D.w		; C0 0D F0
	bcc  43.b		; 90 2B
	tax		; AA
	tax		; AA
	dec $23B0.w		; CE B0 23
	lda ($08.b)		; B2 08
	asl A		; 0A
	ror A		; 6A
	bne  19.b		; D0 13
	lsr A		; 4A
	inc $F8EA.w		; EE EA F8
	ora $FE.b,X		; 15 FE
	sed		; F8
	rts		; 60

	sbc $165BF8.l,X		; FF F8 5B 16
	bcs  15.b		; B0 0F
	tax		; AA
	tax		; AA
	inc $47F8.w,X		; FE F8 47
	sty $30.b		; 84 30
	ora #$A2.b		; 09 A2
	beq  16.b		; F0 10
	tsx		; BA
	beq  19.b		; F0 13
	ldx $F0.b		; A6 F0
	stz $1E.b		; 64 1E
	sei		; 78
	adc $2D78B2.l		; 6F B2 78 2D
	inx		; E8
	sed		; F8
	ora $58AAAA.l		; 0F AA AA 58
	sed		; F8
	and #$74.b		; 29 74
	beq  33.b		; F0 21
	lsr $E0.b		; 46 E0
	ora ($F2.b,S),Y		; 13 F2
	ror $90AC.w,X		; 7E AC 90
	asl $9084.w,X		; 1E 84 90
	asl $56.b,X		; 16 56
	cpy #$4628.w		; C0 28 46
	ldy #$AA48.w		; A0 48 AA
	tax		; AA
	lda ($D8.b)		; B2 D8
	pld		; 2B
	phx		; DA
	inx		; E8
	eor $F0.b		; 45 F0
	sed		; F8
	ora $4A.b,X		; 15 4A
	bra  23.b		; 80 17
	pha		; 48
	bra  21.b		; 80 15
	plp		; 28
	jsr $881F.w		; 20 1F 88
	cpx #$8809.w		; E0 09 88
	dey		; 88
	ora $C8AAAA.l		; 0F AA AA C8
	cpx #$D60A.w		; E0 0A D6
	cpx #$402C.w		; E0 2C 40
	rts		; 60

	adc #$28.b		; 69 28
	pla		; 68
	adc ($FE.b,X)		; 61 FE
	sed		; F8
	adc $6E.b,X		; 75 6E
	cpx #$1613.w		; E0 13 16
	clc		; 18
	ora $6FD048.l,X		; 1F 48 D0 6F
	sbc $F8FF3F.l,X		; FF 3F FF F8
	ldy $FF28.w		; AC 28 FF
	bmi  -1.b		; 30 FF
	and ($FF.b),Y		; 31 FF
	adc $39FF.w,Y		; 79 FF 39
	sbc $1EFF19.l,X		; FF 19 FF 1E
	dec $34FD.w,X		; DE FD 34
	inc $C606.w,X		; FE 06 C6
	ora [$D7.b],Y		; 17 D7
	ora $E0FCD7.l,X		; 1F D7 FC E0
	inc $DBBD.w,X		; FE BD DB
	inc $FEF8.w,X		; FE F8 FE
	inx		; E8
	sbc $03FCFE.l,X		; FF FE FC 03
	ora ($FE.b,X)		; 01 FE
	sed		; F8
	ora $FE02.w		; 0D 02 FE
	sed		; F8
	asl $A7E6.w		; 0E E6 A7
	cpy #$FDFF.w		; C0 FF FD
	cpx #$60FF.w		; E0 FF 60
	rts		; 60

	jsr $FEE0.w		; 20 E0 FE
	sbc ($F4.b,S),Y		; F3 F4
	bmi -16.b		; 30 F0
	bpl  -2.b		; 10 FE
	bcc -16.b		; 90 F0
	bcc   4.b		; 90 04
	ora $05.b,S		; 03 05
	ror $0105.w,X		; 7E 05 01
	sta [$D0.b]		; 87 D0
	phd		; 0B
	ora [$00.b]		; 07 00
	asl $03.b		; 06 03
	ora [$FE.b]		; 07 FE
	sbc $FD6D.w,X		; FD 6D FD
	lda $D6F838.l,X		; BF 38 F8 D6
	tsb $7C78.w		; 0C 78 7C
	inc $FDF1.w,X		; FE F1 FD
	brk $30.b		; 00 30
	cpy #$2187.w		; C0 87 21
	jsr ($84F0.w,X)		; FC F0 84
	sed		; F8
	inc $8000.w,X		; FE 00 80
	inc $0E40.w,X		; FE 40 0E
	ora $FE.b,S		; 03 FE
	rts		; 60

	cpy #$70FE.w		; C0 FE 70
	cpx #$22FE.w		; E0 FE 22
	tsb $E2F1.w		; 0C F1 E2
	inc $40A0.w,X		; FE A0 40
	ora $78.b,S		; 03 78
	inc $6090.w,X		; FE 90 60
	inc $B8AE.w,X		; FE AE B8
	jsr ($070F.w,X)		; FC 0F 07
	asl A		; 0A
	tsb $00.b		; 04 00
	jsr ($F6FE.w,X)		; FC FE F6
	sta ($7A.b)		; 92 7A
	bra  -2.b		; 80 FE
	php		; 08
	ora [$0C.b]		; 07 0C
	ora [$FC.b]		; 07 FC
	inc $70FF.w,X		; FE FF 70
	cmp $38.b,X		; D5 38
	sbc $F7E6FE.l		; EF FE E6 F7
	ldx $B7.b		; A6 B7
	ldx $F7FE.w		; AE FE F7
	ldx $BF.b,Y		; B6 BF
	sec		; 38
	lsr $FE.b		; 46 FE
	sbc $0A11FF.l,X		; FF FF 11 0A
	eor $87FE.w,Y		; 59 FE 87
	adc #$FA.b		; 69 FA
	jsr ($C70F.w,X)		; FC 0F C7
	inc $478F.w,X		; FE 8F 47
	inc $57AA.w,X		; FE AA 57
	clv		; B8
	cop $FC.b		; 02 FC
	phb		; 8B
	eor $F8.b,S		; 43 F8
	sta [$21.b]		; 87 21
	inc $04FC.w,X		; FE FC 04
	pei ($4B.b)		; D4 4B
	jsr ($00FC.w,X)		; FC FC 00
	xce		; FB
	sta $E9.b		; 85 E9
	ora ($80.b,X)		; 01 80
	sta ($FE.b,X)		; 81 FE
	jsr ($FF60.w,X)		; FC 60 FF
	tsb $B1EE.w		; 0C EE B1
	sbc #$80.b		; E9 80
	inc $70FC.w,X		; FE FC 70
	rts		; 60

	bcs  32.b		; B0 20
	bvs -96.b		; 70 A0
	sbc $A06818.l,X		; FF 18 68 A0
	cld		; D8
	bne 104.b		; D0 68
	brk $B8.b		; 00 B8
	bmi  -8.b		; 30 F8
	asl $1FD0.w		; 0E D0 1F
	lsr $D8FE.w,X		; 5E FE D8
	sed		; F8
	plp		; 28
	sed		; F8
	sbc $08F8C8.l,X		; FF C8 F8 08
	sed		; F8
	cmp $0FA8.w,X		; DD A8 0F
	lda $9D.b		; A5 9D
	php		; 08
	inc $FEFE.w,X		; FE FE FE
	tsb $7E7C.w		; 0C 7C 7E
	inc $5EFE.w,X		; FE FE 5E
	eor $0C98F6.l,X		; 5F F6 98 0C
	.db $82, $FC, $FE		; 82 FC FE
	inc $FEA1.w,X		; FE A1 FE
	cop $FF.b		; 02 FF
	ora $69.b,S		; 03 69
	phb		; 8B
	inc $06FF.w,X		; FE FF 06
	asl $F7.b		; 06 F7
	sep #$03		; E2 03
	inc $45FC.w,X		; FE FC 45
	eor ($78.b,X)		; 41 78
	ora $C0.b		; 05 C0
	inc $FF.b,X		; F6 FF
	inc $F2.b		; E6 F2
	inc $F8F0.w,X		; FE F0 F8
	clc		; 18
	ora $FA86.w,X		; 1D 86 FA
	cpx #$F10E.w		; E0 0E F1
	inc $F078.w,X		; FE 78 F0
	inc $F87C.w,X		; FE 7C F8
	inc $87E1.w,X		; FE E1 87
	inc $FEFC.w,X		; FE FC FE
	xba		; EB
	nop		; EA
	xce		; FB
	nop		; EA
	dey		; 88
	bvs  -2.b		; 70 FE
	adc ($18.b,X)		; 61 18
	sty $78.b		; 84 78
	inc $FC02.w,X		; FE 02 FC
	inc $FE15.w,X		; FE 15 FE
	sty $57.b		; 84 57
	inc $F2AC.w,X		; FE AC F2
	inc $070D.w,X		; FE 0D 07
	ora $FCFE0F.l,X		; 1F 0F FE FC
	ldy $DAF2.w		; AC F2 DA
	sbc $0F10FE.l,X		; FF FE 10 0F
	inc $B8FC.w,X		; FE FC B8
	lda ($F4.b),Y		; B1 F4
	sbc $FC.b,X		; F5 FC
	sbc $FF54.w,X		; FD 54 FF
	sbc $FDFE2F.l,X		; FF 2F FE FD
	dec $ADFD.w,X		; DE FD AD
	inc $FEED.w,X		; FE ED FE
	eor $FF1BFF.l,X		; 5F FF 1B FF
	ora ($9C.b,S),Y		; 13 9C
	sbc ($FC.b),Y		; F1 FC
	eor $FC.b,S		; 43 FC
	and ($DF.b,S),Y		; 33 DF
	eor ($BF.b,S),Y		; 53 BF
	sta ($7F.b,S),Y		; 93 7F
	pld		; 2B
	eor $FE.b,S		; 43 FE
	rtl		; 6B

	lda $FFFEAE.l		; AF AE FE FF
	adc [$43.b]		; 67 43
	jsr ($F1AC.w,X)		; FC AC F1
	inc $0BF8.w,X		; FE F8 0B
	tay		; A8
	inc $C0.b,X		; F6 C0
	cmp ($FE.b,X)		; C1 FE
	jsr ($FD3B.w,X)		; FC 3B FD
	tay		; A8
	inc $01.b,X		; F6 01
	cpy #$FCFE.w		; C0 FE FC
	sed		; F8
	beq  -2.b		; F0 FE
	iny		; C8
	cpy #$303C.w		; C0 3C 30
	pea $3E97.w		; F4 97 3E
	beq -92.b		; F0 A4
	beq  -4.b		; F0 FC
	ldx $FEF1.w		; AE F1 FE
	sec		; 38
	sed		; F8
	cpy $0CFC.w		; CC FC 0C
	asl $D5.b		; 06 D5
	inc $FE04.w,X		; FE 04 FE
	ldx #$0BF0.w		; A2 F0 0B
	txs		; 9A
	sbc #$A4.b		; E9 A4
	beq  11.b		; F0 0B
	txs		; 9A
	nop		; EA
	sbc $5F7E1F.l,X		; FF 1F 7E 5F
	lsr $567F.w,X		; 5E 7F 56
	eor [$F6.b],Y		; 57 F6
	eor [$7D.b],Y		; 57 7D
	ora ($FE.b,X)		; 01 FE
	ror $7EAA.w,X		; 7E AA 7E
	stx $78.b		; 86 78
	jsr ($FEA1.w,X)		; FC A1 FE
	inc $FEA9.w,X		; FE A9 FE
	inc $81FF.w,X		; FE FF 81
	inc $FEEF.w		; EE EF FE
	asl $FF.b		; 06 FF
	sed		; F8
	asl A		; 0A
	ora $0F0D.w		; 0D 0D 0F
	ora $0305.w		; 0D 05 03
	inc $09F8.w,X		; FE F8 09
	asl A		; 0A
	ldy #$07FF.w		; A0 FF 07
	inc $D8BA.w,X		; FE BA D8
	ora $0FD8AB.l		; 0F AB D8 0F
	xba		; EB
	nop		; EA
	lda $BEFBAA.l,X		; BF AA FB BE
	lda $941F0F.l		; AF 0F 1F 94
	sta $FBFA8A.l,X		; 9F 8A FA FB
	inc $EBFB.w,X		; FE FB EB
	ora $FE.b,X		; 15 FE
	eor $3F.b,X		; 55 3F
	ror $7FFE.w		; 6E FE 7F
	inc $FE75.w,X		; FE 75 FE
	ora $FE.b		; 05 FE
	trb $FF.b		; 14 FF
	cpy $1EF2.w		; CC F2 1E
	clc		; 18
	adc $AE0EFE.l,X		; 7F FE 0E AE
	inc $8A2A.w,X		; FE 2A 8A
	ldx $119E.w,Y		; BE 9E 11
	asl $FC3E.w		; 0E 3E FC
	inc $B10F.w,X		; FE 0F B1
	ora $1FB5FE.l,X		; 1F FE B5 1F
	lda ($1F.b,X)		; A1 1F
	cmp $FFF4.w		; CD F4 FF
	dec $EDFE.w,X		; DE FE ED
	dec $FAC8.w,X		; DE C8 FA
	bvc  50.b		; 50 32
	inx		; E8
	phx		; DA
	cpx $33DA.w		; EC DA 33
	asl $A0.b,X		; 16 A0
	sbc $37FCFE.l,X		; FF FE FC 37
	cpy $19.b		; C4 19
	jsr ($65FE.w,X)		; FC FE 65
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bpl   0.b		; 10 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	brk $08.b		; 00 08
	bra   0.b		; 80 00
	ora ($20.b,X)		; 01 20
	eor ($40.b,X)		; 41 40
	brk $26.b		; 00 26
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	jsr $0000.w		; 20 00 00
	tsb $00.b		; 04 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	brk $86.b		; 00 86
	brk $A0.b		; 00 A0
	jsr $2002.w		; 20 02 20
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc   0.b		; 50 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $10.b		; 00 10
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
	brk $28.b		; 00 28
	jsr $389C.w		; 20 9C 38
	jsr $1000.w		; 20 00 10
	bpl  70.b		; 10 46
	bpl -128.b		; 10 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	jsr $0020.w		; 20 20 00
	brk $61.b		; 00 61
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $40.b		; 02 40
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
	brk $04.b		; 00 04
	bmi -128.b		; 30 80
	trb $84.b		; 14 84
	brk $11.b		; 00 11
	rti		; 40

	rti		; 40

	brk $04.b		; 00 04
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	jsr $8000.w		; 20 00 80
	brk $00.b		; 00 00
	jsl $000000.l		; 22 00 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
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
	brk $40.b		; 00 40
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
	.db $82, $00, $48		; 82 00 48
	jsr $0408.w		; 20 08 04
	bra   0.b		; 80 00
	plp		; 28
	bra  32.b		; 80 20
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
	brk $90.b		; 00 90
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	brk $20.b		; 00 20
	brk $01.b		; 00 01
	brk $28.b		; 00 28
	brk $00.b		; 00 00
	rti		; 40

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
	tsb $00.b		; 04 00
	txa		; 8A
	ora $10.b,S		; 03 10
	jsr $5004.w		; 20 04 50
	brk $08.b		; 00 08
	brk $81.b		; 00 81
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $20.b		; 00 20
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7DF.l,X		; FF DF F7 FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFD7F.l,X		; FF 7F FD FE
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
	sbc [$FB.b],Y		; F7 FB
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BDFFFF.l,X		; FF FF FF BD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	xce		; FB
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
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
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
	sbc $FFF7FF.l,X		; FF FF F7 FF
	cmp $FFFFFF.l,X		; DF FF FF FF
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
	sbc $00500B.l,X		; FF 0B 50 00
	tsb $00.b		; 04 00
	cop $10.b		; 02 10
	and ($28.b,X)		; 21 28
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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	rti		; 40

	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
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
	cop $10.b		; 02 10
	tsb $02.b		; 04 02
	lsr $C0.b		; 46 C0
	jsr $8800.w		; 20 00 88
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	cpy #$0000.w		; C0 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
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
	cop $01.b		; 02 01
	brk $40.b		; 00 40
	cop $09.b		; 02 09
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
	php		; 08
	php		; 08
	rti		; 40

	jsr $0080.w		; 20 80 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	brk $80.b		; 00 80
	jmp $082819.l		; 5C 19 28 08
	cop $02.b		; 02 02
	cop $80.b		; 02 80
	rti		; 40

	.db $82, $00, $00		; 82 00 00
	brk $08.b		; 00 08
	brk $20.b		; 00 20
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
	brk $01.b		; 00 01
	clc		; 18
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
	bpl   1.b		; 10 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bra   0.b		; 80 00
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
	jsl $200281.l		; 22 81 02 20
	cop $00.b		; 02 00
	bpl   0.b		; 10 00
	bit $24.b		; 24 24
	jsr $0020.w		; 20 20 00
	brk $84.b		; 00 84
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
	ora ($00.b,X)		; 01 00
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
	rts		; 60

	brk $0A.b		; 00 0A
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
	ora ($80.b,X)		; 01 80
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
	brk $40.b		; 00 40
	eor ($82.b,X)		; 41 82
	sta ($00.b,X)		; 81 00
	jsr $0000.w		; 20 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	tsb $00.b		; 04 00
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
	brk $02.b		; 00 02
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
	php		; 08
	brk $32.b		; 00 32
	tsb $00.b		; 04 00
	php		; 08
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
	ldy #$4282.w		; A0 82 42
	tsb $21.b		; 04 21
	asl $19.b,X		; 16 19
	bpl   0.b		; 10 00
	trb $00.b		; 14 00
	jsr $0000.w		; 20 00 00
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
	cop $00.b		; 02 00
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
	brk $08.b		; 00 08
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	jsr $0000.w		; 20 00 00
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
	brk $20.b		; 00 20
	ora ($05.b,X)		; 01 05
	brk $10.b		; 00 10
	and $00.b		; 25 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	.db $82, $02, $00		; 82 02 00
	brk $02.b		; 00 02
	brk $10.b		; 00 10
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
	rti		; 40

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
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
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
	cmp $FFFFFE.l,X		; DF FE FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	cmp $F6FFFE.l,X		; DF FE FF F6
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $EBFFFF.l,X		; FF FF FF EB
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
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
	sbc [$FF.b],Y		; F7 FF
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
	sbc $DFBFFF.l,X		; FF FF BF DF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFB.l,X		; FF FB FF BF
	sbc $FBFFBF.l,X		; FF BF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FDFFFD.l,X		; FF FD FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFEF.l,X		; 7F EF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
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
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	cmp $FFFF7F.l,X		; DF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	and $FFFFFF.l,X		; 3F FF FF FF
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
	sbc $FFB6FF.l,X		; FF FF B6 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc [$FF.b],Y		; 77 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FB7FFF.l,X		; FF FF 7F FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF6FF.l,X		; FF FF F6 FF
	adc $EFFF.w,X		; 7D FF EF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF9F.l,X		; FF 9F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFF7F.l,X		; 7F 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDEF.l,X		; FF EF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFE.w,X		; FE FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
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
	sbc $FAFBFF.l		; EF FF FB FA
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFBF.l,X		; 7F BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $F7FF.w,X		; FE FF F7
	inc $FFFF.w,X		; FE FF FF
	xce		; FB
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
	lda $FF7FFF.l,X		; BF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFBF.l,X		; FF BF FF DF
	xce		; FB
	sbc $7FFFDF.l,X		; FF DF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFBFDF.l,X		; FF DF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc [$FE.b],Y		; F7 FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l		; EF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $020006.l,X		; FF 06 00 02
	bra   0.b		; 80 00
	cop $08.b		; 02 08
	tsb $00.b		; 04 00
	.db $42, $00		; 42 00
	bra  16.b		; 80 10
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $82.b		; 00 82
	brk $80.b		; 00 80
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
	rti		; 40

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
	jsr $0001.w		; 20 01 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	brk $81.b		; 00 81
	brk $04.b		; 00 04
	plp		; 28
	rti		; 40

	php		; 08
	rti		; 40

	jmp $80F8.w		; 4C F8 80
	bra   0.b		; 80 00
	jsr $0000.w		; 20 00 00
	brk $80.b		; 00 80
	brk $02.b		; 00 02
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
	tsb $00.b		; 04 00
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
	brk $20.b		; 00 20
	tsb $8001.w		; 0C 01 80
	brk $80.b		; 00 80
	ora $0000.w		; 0D 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	brk $01.b		; 00 01
	brk $18.b		; 00 18
	cop $03.b		; 02 03
	php		; 08
	brk $00.b		; 00 00
	plp		; 28
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	rti		; 40

	bpl   0.b		; 10 00
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
	brk $04.b		; 00 04
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
	ora ($91.b,X)		; 01 91
	trb $12.b		; 14 12
	stx $02.b		; 86 02
	sty $84.b		; 84 84
	tsb $8050.w		; 0C 50 80
	rts		; 60

	ora ($11.b,X)		; 01 11
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $80.b		; 00 80
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
	brk $02.b		; 00 02
	php		; 08
	brk $00.b		; 00 00
	pha		; 48
	ora ($20.b,X)		; 01 20
	bra   1.b		; 80 01
	bra   0.b		; 80 00
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
	tsb $2400.w		; 0C 00 24
	ora #$0E.b		; 09 0E
	cop $04.b		; 02 04
	bcc -124.b		; 90 84
	tsb $00.b		; 04 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	jsr $0084.w		; 20 84 00
	rti		; 40

	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $20.b		; 04 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	rti		; 40

	brk $04.b		; 00 04
	php		; 08
	cop $00.b		; 02 00
	bpl   0.b		; 10 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	.db $82, $00, $04		; 82 00 04
	cop $02.b		; 02 02
	php		; 08
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	ora ($04.b,X)		; 01 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $01.b		; 00 01
	brk $02.b		; 00 02
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
	sta ($80.b,X)		; 81 80
	tsb $43.b		; 04 43
	txa		; 8A
	asl $0000.w		; 0E 00 00
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
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	brk $20.b		; 00 20
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

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
	rti		; 40

	bit #$80.b		; 89 80
	tsb $8C.b		; 04 8C
	ora #$0B.b		; 09 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	bpl   0.b		; 10 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  32.b		; 80 20
	ora ($00.b,X)		; 01 00
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
	rti		; 40

	jsr $0040.w		; 20 40 00
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
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	adc $FEFFFF.l,X		; 7F FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	adc $FFFFBF.l,X		; 7F BF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
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
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7B.l,X		; FF 7B FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFEEF.l,X		; FF EF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDF7.l,X		; FF F7 FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFBFFF.l,X		; 7F FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $0C45FF.l,X		; FF FF 45 0C
	sta ($01.b,X)		; 81 01
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	bpl   0.b		; 10 00
	brk $40.b		; 00 40
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	rti		; 40

	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	rti		; 40

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
	brk $01.b		; 00 01
	and ($12.b,X)		; 21 12
	brk $88.b		; 00 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	php		; 08
	rti		; 40

	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $20.b		; 00 20
	brk $04.b		; 00 04
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
	brk $42.b		; 00 42
	jsr $0191.w		; 20 91 01
	tsb $0C.b		; 04 0C
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bpl   1.b		; 10 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
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
	brk $48.b		; 00 48
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
	brk $20.b		; 00 20
	dey		; 88
	bvc   1.b		; 50 01
	ora ($24.b,X)		; 01 24
	jsr $0001.w		; 20 01 00
	brk $10.b		; 00 10
	cop $00.b		; 02 00
	cop $00.b		; 02 00
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
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cop $00.b		; 02 00
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
	jsr $8800.w		; 20 00 88
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $20.b		; 00 20
	tsb $80.b		; 04 80
	bpl  64.b		; 10 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($00.b,X)		; 01 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $09.b		; 04 09
	tsb $00.b		; 04 00
	cop $10.b		; 02 10
	brk $80.b		; 00 80
	brk $04.b		; 00 04
	bpl   0.b		; 10 00
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
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
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
	dey		; 88
	php		; 08
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
	brk $24.b		; 00 24
	bpl  16.b		; 10 10
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	brk $01.b		; 00 01
	sta ($00.b),Y		; 91 00
	rti		; 40

	brk $00.b		; 00 00
	rti		; 40

	bpl -128.b		; 10 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $40.b		; 00 40
	jsr $0020.w		; 20 20 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	cop $00.b		; 02 00
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FF7FF.l,X		; FF FF F7 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
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
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFD.w,X		; FD FD FF
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
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFCFDF.l,X		; FF DF CF FF
	sbc $BFFFEF.l,X		; FF EF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FDFEFF.l,X		; FF FF FE FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFBFF.l,X		; FF FF FB FF
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
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	adc $FFFFFF.l,X		; 7F FF FF FF
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
	sbc $FFFFFD.l,X		; FF FD FF FF
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
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	tda		; 7B
	sbc $FF7F.w,X		; FD 7F FF
	xce		; FB
	sbc $FFFFFD.l,X		; FF FD FF FF
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
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $001004.l,X		; FF 04 10 00
	brk $00.b		; 00 00
	bcc   0.b		; 90 00
	php		; 08
	brk $10.b		; 00 10
	bvs   2.b		; 70 02
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $80.b		; 00 80
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
	sta $00.b		; 85 00
	brk $40.b		; 00 40
	brk $04.b		; 00 04
	bpl  32.b		; 10 20
	brk $40.b		; 00 40
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
	cop $00.b		; 02 00
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
	sty $04.b		; 84 04
	jsl $080100.l		; 22 00 01 08
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	jsr $0002.w		; 20 02 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $80.b		; 02 80
	cop $02.b		; 02 02
	brk $10.b		; 00 10
	brk $04.b		; 00 04
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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

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
	ora ($00.b),Y		; 11 00
	ora ($CE.b),Y		; 11 CE
	brk $20.b		; 00 20
	cop $00.b		; 02 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	cop $00.b		; 02 00
	ldx #$0060.w		; A2 60 00
	ora ($40.b,X)		; 01 40
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
	brk $A4.b		; 00 A4
	jsr $0201.w		; 20 01 02
	bpl  68.b		; 10 44
	ora ($00.b,X)		; 01 00
	php		; 08
	php		; 08
	bra  16.b		; 80 10
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bra   1.b		; 80 01
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
	brk $48.b		; 00 48
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	brk $08.b		; 00 08
	cli		; 58
	tsb $02.b		; 04 02
	cop $00.b		; 02 00
	ora $08.b		; 05 08
	bra  82.b		; 80 52
	jsl $400020.l		; 22 20 00 40
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
	jsr $0000.w		; 20 00 00
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
	bpl   0.b		; 10 00
	cop $20.b		; 02 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $82, $00, $00		; 82 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $48.b		; 00 48
	bpl   4.b		; 10 04
	tsb $08.b		; 04 08
	brk $10.b		; 00 10
	brk $01.b		; 00 01
	brk $82.b		; 00 82
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora ($00.b,X)		; 01 00
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
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	brk $60.b		; 00 60
	mvp $18,$04		; 44 04 18
	clc		; 18
	sty $30.b		; 84 30
	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $22.b		; 00 22
	tsb $00.b		; 04 00
	plp		; 28
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
	jsr $0400.w		; 20 00 04
	tsb $80.b		; 04 80
	brk $48.b		; 00 48
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
	rti		; 40

	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $30.b		; 00 30
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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	tsb $04.b		; 04 04
	brk $10.b		; 00 10
	cop $00.b		; 02 00
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
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFD.l,X		; FF FD FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
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
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFEB.l,X		; FF EB FF FF
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
	sbc $FFBF7F.l,X		; FF 7F BF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFDFF.l,X		; FF FF FD FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFCFF.l,X		; FF FF FC FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBF.w,X		; FD BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BEFFFF.l,X		; FF FF FF BE
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $EBFFFF.l,X		; FF FF FF EB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $038408.l,X		; FF 08 84 03
	bpl  64.b		; 10 40
	tsb $04.b		; 04 04
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0004.w		; 20 04 00
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
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	ora ($00.b,X)		; 01 00
	ora ($C0.b),Y		; 11 C0
	tsb $00.b		; 04 00
	tsb $02.b		; 04 02
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
	brk $11.b		; 00 11
	jsr $0800.w		; 20 00 08
	rti		; 40

	brk $10.b		; 00 10
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
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
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
	ora ($00.b),Y		; 11 00
	bra   8.b		; 80 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
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
	brk $01.b		; 00 01
	php		; 08
	ora ($00.b,X)		; 01 00
	bra   0.b		; 80 00
	ora ($00.b,X)		; 01 00
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
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
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
	cop $09.b		; 02 09
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
	brk $80.b		; 00 80
	ora $02.b		; 05 02
	rts		; 60

	brk $00.b		; 00 00
	bra  16.b		; 80 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	brk $10.b		; 00 10
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
	brk $81.b		; 00 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $00.b		; 04 00
	ldy #$0000.w		; A0 00 00
	php		; 08
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
	php		; 08
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	cop $10.b		; 02 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
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
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $20.b		; 00 20
	brk $08.b		; 00 08
	eor $20.b,S		; 43 20
	tsb $00.b		; 04 00
	bcc   0.b		; 90 00
	sty $84.b,X		; 94 84
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $04.b		; 00 04
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	php		; 08
	tsb $04.b		; 04 04
	tsb $1000.w		; 0C 00 10
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $04.b		; 00 04
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
	brk $10.b		; 00 10
	brk $01.b		; 00 01
	brk $20.b		; 00 20
	php		; 08
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
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
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
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
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFE.w,X		; 7D FE FF
	sbc $FFFBFF.l,X		; FF FF FB FF
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
	sbc $DFFFFF.l,X		; FF FF FF DF
	inc $FFDF.w,X		; FE DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $AFFFFF.l,X		; FF FF FF AF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	inc $FFCF.w,X		; FE CF FF
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
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFDF.l,X		; FF DF FF FD
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFF7.l,X		; FF F7 FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBEFF.l,X		; FF FF BE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
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
	sbc $EFFFFF.l,X		; FF FF FF EF
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
	sbc $FFFBFB.l,X		; FF FB FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFBFF.l,X		; FF FF FB BF
	sbc $FFFFBF.l,X		; FF BF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBEFF.l,X		; FF FF BE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F5FFFF.l,X		; FF FF FF F5
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FB.b],Y		; F7 FB
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	brk $10.b		; 00 10
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $80.b		; 00 80
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora #$00.b		; 09 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	bra   0.b		; 80 00
	bpl  20.b		; 10 14
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	brk $B9.b		; 00 B9
	bra   8.b		; 80 08
	php		; 08
	ldy #$0100.w		; A0 00 01
	php		; 08
	ora ($00.b,X)		; 01 00
	rti		; 40

	lda ($80.b,X)		; A1 80
	brk $00.b		; 00 00
	brk $21.b		; 00 21
	brk $28.b		; 00 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($00.b,X)		; 01 00
	rti		; 40

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
	brk $08.b		; 00 08
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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $44.b		; 00 44
	rti		; 40

	phd		; 0B
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $A8.b		; 00 A8
	jsr $0000.w		; 20 00 00
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
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

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
	brk $01.b		; 00 01
	plp		; 28
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
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
	brk $0A.b		; 00 0A
	plp		; 28
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora ($46.b,X)		; 01 46
	tsb $02.b		; 04 02
	brk $52.b		; 00 52
	sty $02.b		; 84 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $10.b		; 00 10
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	php		; 08
	ora ($80.b,X)		; 01 80
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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

	ora $1A0020.l		; 0F 20 00 1A
	bpl  16.b		; 10 10
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
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
	cop $00.b		; 02 00
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
	brk $40.b		; 00 40
	ora $00.b,S		; 03 00
	bne   4.b		; D0 04
	brk $02.b		; 00 02
	cop $40.b		; 02 40
	cop $00.b		; 02 00
	brk $18.b		; 00 18
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
	asl $00.b		; 06 00
	brk $08.b		; 00 08
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
	ora ($00.b,X)		; 01 00
	php		; 08
	brk $12.b		; 00 12
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
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
	asl $80.b		; 06 80
	adc ($10.b,X)		; 61 10
	bpl   2.b		; 10 02
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$0000.w		; A0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	ora ($40.b,X)		; 01 40
	jsr $0300.w		; 20 00 03
	jsr $1002.w		; 20 02 10
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($10.b,X)		; 01 10
	brk $40.b		; 00 40
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	cop $00.b		; 02 00
	brk $12.b		; 00 12
	brk $00.b		; 00 00
	bvc   0.b		; 50 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	tsb $00.b		; 04 00
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
	brk $A0.b		; 00 A0
	jsr $0002.w		; 20 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $3FFFFF.l,X		; 7F FF FF 3F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFF7F7.l,X		; 7F F7 F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FD.b],Y		; F7 FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFD.l,X		; FF FD FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFD.l,X		; FF FD FF BF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FEFFFF.l,X		; FF FF FF FE
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
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBE.l,X		; FF BE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7DEFF.l,X		; FF FF DE F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $001500.l,X		; FF 00 15 00
	brk $18.b		; 00 18
	brk $80.b		; 00 80
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
	brk $02.b		; 00 02
	brk $40.b		; 00 40
	rti		; 40

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
	brk $80.b		; 00 80
	tsb $2292.w		; 0C 92 22
	jsr $0200.w		; 20 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora ($00.b)		; 12 00
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
	ora $0000.w		; 0D 00 00
	brk $00.b		; 00 00
	brk $44.b		; 00 44
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stx $54.b		; 86 54
	eor ($04.b),Y		; 51 04
	jsr $0000.w		; 20 00 00
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
	brk $40.b		; 00 40
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
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bpl -128.b		; 10 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $08.b		; 00 08
	ora ($00.b,X)		; 01 00
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
	brk $02.b		; 00 02
	bpl -111.b		; 10 91
	brk $00.b		; 00 00
	brk $82.b		; 00 82
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	jsr $0002.w		; 20 02 00
	brk $40.b		; 00 40
	tsb $00.b		; 04 00
	brk $04.b		; 00 04
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
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	tsb $00.b		; 04 00
	brk $04.b		; 00 04
	cop $08.b		; 02 08
	brk $02.b		; 00 02
	php		; 08
	brk $02.b		; 00 02
	brk $08.b		; 00 08
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
	ora ($00.b,X)		; 01 00
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
	trb $83.b		; 14 83
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $80.b		; 00 80
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
	ora ($00.b,X)		; 01 00
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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
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
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	clc		; 18
	bpl -108.b		; 10 94
	brk $80.b		; 00 80
	php		; 08
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
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
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	cop $00.b		; 02 00
	jsr $0081.w		; 20 81 00
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
	jsr $8040.w		; 20 40 80
	cop $22.b		; 02 22
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	jsl $000000.l		; 22 00 00 00
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
	jsr $0000.w		; 20 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $01.b		; 00 01
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
	.db $00		; Opcode 00 overrunning bank boundry at 1EFFFF. Skipping.
.ENDS
